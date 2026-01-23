; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!493598 () Bool)

(assert start!493598)

(declare-fun bs!1154817 () Bool)

(declare-fun b!4792821 () Bool)

(assert (= bs!1154817 (and b!4792821 start!493598)))

(declare-fun lambda!230646 () Int)

(declare-fun lambda!230645 () Int)

(assert (=> bs!1154817 (not (= lambda!230646 lambda!230645))))

(assert (=> b!4792821 true))

(assert (=> b!4792821 true))

(assert (=> b!4792821 true))

(declare-fun b!4792818 () Bool)

(declare-fun res!2037211 () Bool)

(declare-fun e!2992560 () Bool)

(assert (=> b!4792818 (=> res!2037211 e!2992560)))

(declare-datatypes ((K!15804 0))(
  ( (K!15805 (val!20949 Int)) )
))
(declare-datatypes ((V!16050 0))(
  ( (V!16051 (val!20950 Int)) )
))
(declare-datatypes ((tuple2!56872 0))(
  ( (tuple2!56873 (_1!31730 K!15804) (_2!31730 V!16050)) )
))
(declare-datatypes ((List!54350 0))(
  ( (Nil!54226) (Cons!54226 (h!60652 tuple2!56872) (t!361800 List!54350)) )
))
(declare-datatypes ((tuple2!56874 0))(
  ( (tuple2!56875 (_1!31731 (_ BitVec 64)) (_2!31731 List!54350)) )
))
(declare-datatypes ((List!54351 0))(
  ( (Nil!54227) (Cons!54227 (h!60653 tuple2!56874) (t!361801 List!54351)) )
))
(declare-datatypes ((ListLongMap!5353 0))(
  ( (ListLongMap!5354 (toList!6931 List!54351)) )
))
(declare-fun lm!2473 () ListLongMap!5353)

(get-info :version)

(assert (=> b!4792818 (= res!2037211 (not ((_ is Cons!54227) (toList!6931 lm!2473))))))

(declare-fun b!4792819 () Bool)

(declare-fun res!2037209 () Bool)

(declare-fun e!2992562 () Bool)

(assert (=> b!4792819 (=> (not res!2037209) (not e!2992562))))

(declare-fun key!5896 () K!15804)

(declare-datatypes ((ListMap!6403 0))(
  ( (ListMap!6404 (toList!6932 List!54350)) )
))
(declare-fun contains!17841 (ListMap!6403 K!15804) Bool)

(declare-fun extractMap!2453 (List!54351) ListMap!6403)

(assert (=> b!4792819 (= res!2037209 (contains!17841 (extractMap!2453 (toList!6931 lm!2473)) key!5896))))

(declare-fun b!4792820 () Bool)

(declare-fun lt!1951425 () (_ BitVec 64))

(declare-fun e!2992563 () Bool)

(declare-datatypes ((Option!13099 0))(
  ( (None!13098) (Some!13098 (v!48383 tuple2!56872)) )
))
(declare-fun isDefined!10241 (Option!13099) Bool)

(declare-fun getPair!898 (List!54350 K!15804) Option!13099)

(declare-fun apply!12995 (ListLongMap!5353 (_ BitVec 64)) List!54350)

(assert (=> b!4792820 (= e!2992563 (isDefined!10241 (getPair!898 (apply!12995 lm!2473 lt!1951425) key!5896)))))

(declare-fun e!2992564 () Bool)

(assert (=> b!4792821 (= e!2992560 e!2992564)))

(declare-fun res!2037208 () Bool)

(assert (=> b!4792821 (=> res!2037208 e!2992564)))

(declare-fun lt!1951421 () ListLongMap!5353)

(declare-fun forall!12255 (List!54351 Int) Bool)

(assert (=> b!4792821 (= res!2037208 (not (forall!12255 (toList!6931 lt!1951421) lambda!230645)))))

(declare-fun tail!9269 (ListLongMap!5353) ListLongMap!5353)

(assert (=> b!4792821 (= lt!1951421 (tail!9269 lm!2473))))

(declare-datatypes ((Unit!139971 0))(
  ( (Unit!139972) )
))
(declare-fun lt!1951420 () Unit!139971)

(declare-fun lambda!230647 () Int)

(declare-fun value!3111 () V!16050)

(declare-fun forallContained!4162 (List!54350 Int tuple2!56872) Unit!139971)

(assert (=> b!4792821 (= lt!1951420 (forallContained!4162 (_2!31731 (h!60653 (toList!6931 lm!2473))) lambda!230647 (tuple2!56873 key!5896 value!3111)))))

(declare-fun lt!1951424 () Unit!139971)

(declare-fun forallContained!4163 (List!54351 Int tuple2!56874) Unit!139971)

(assert (=> b!4792821 (= lt!1951424 (forallContained!4163 (toList!6931 lm!2473) lambda!230646 (h!60653 (toList!6931 lm!2473))))))

(declare-fun b!4792823 () Bool)

(declare-fun res!2037213 () Bool)

(assert (=> b!4792823 (=> (not res!2037213) (not e!2992562))))

(declare-datatypes ((Hashable!6926 0))(
  ( (HashableExt!6925 (__x!32949 Int)) )
))
(declare-fun hashF!1559 () Hashable!6926)

(declare-fun allKeysSameHashInMap!2331 (ListLongMap!5353 Hashable!6926) Bool)

(assert (=> b!4792823 (= res!2037213 (allKeysSameHashInMap!2331 lm!2473 hashF!1559))))

(declare-fun b!4792824 () Bool)

(declare-fun res!2037212 () Bool)

(assert (=> b!4792824 (=> res!2037212 e!2992560)))

(declare-fun containsKey!3950 (List!54350 K!15804) Bool)

(assert (=> b!4792824 (= res!2037212 (not (containsKey!3950 (_2!31731 (h!60653 (toList!6931 lm!2473))) key!5896)))))

(declare-fun b!4792825 () Bool)

(assert (=> b!4792825 (= e!2992562 (not e!2992560))))

(declare-fun res!2037214 () Bool)

(assert (=> b!4792825 (=> res!2037214 e!2992560)))

(declare-fun getValue!114 (List!54351 K!15804) V!16050)

(assert (=> b!4792825 (= res!2037214 (not (= (getValue!114 (toList!6931 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!568 (List!54351 K!15804) Bool)

(assert (=> b!4792825 (containsKeyBiggerList!568 (toList!6931 lm!2473) key!5896)))

(declare-fun lt!1951422 () Unit!139971)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!308 (ListLongMap!5353 K!15804 Hashable!6926) Unit!139971)

(assert (=> b!4792825 (= lt!1951422 (lemmaInLongMapThenContainsKeyBiggerList!308 lm!2473 key!5896 hashF!1559))))

(assert (=> b!4792825 e!2992563))

(declare-fun res!2037210 () Bool)

(assert (=> b!4792825 (=> (not res!2037210) (not e!2992563))))

(declare-fun contains!17842 (ListLongMap!5353 (_ BitVec 64)) Bool)

(assert (=> b!4792825 (= res!2037210 (contains!17842 lm!2473 lt!1951425))))

(declare-fun hash!4961 (Hashable!6926 K!15804) (_ BitVec 64))

(assert (=> b!4792825 (= lt!1951425 (hash!4961 hashF!1559 key!5896))))

(declare-fun lt!1951423 () Unit!139971)

(declare-fun lemmaInGenericMapThenInLongMap!330 (ListLongMap!5353 K!15804 Hashable!6926) Unit!139971)

(assert (=> b!4792825 (= lt!1951423 (lemmaInGenericMapThenInLongMap!330 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4792826 () Bool)

(declare-fun e!2992561 () Bool)

(declare-fun tp!1358042 () Bool)

(assert (=> b!4792826 (= e!2992561 tp!1358042)))

(declare-fun res!2037207 () Bool)

(assert (=> start!493598 (=> (not res!2037207) (not e!2992562))))

(assert (=> start!493598 (= res!2037207 (forall!12255 (toList!6931 lm!2473) lambda!230645))))

(assert (=> start!493598 e!2992562))

(declare-fun inv!69830 (ListLongMap!5353) Bool)

(assert (=> start!493598 (and (inv!69830 lm!2473) e!2992561)))

(assert (=> start!493598 true))

(declare-fun tp_is_empty!33565 () Bool)

(assert (=> start!493598 tp_is_empty!33565))

(declare-fun tp_is_empty!33567 () Bool)

(assert (=> start!493598 tp_is_empty!33567))

(declare-fun b!4792822 () Bool)

(assert (=> b!4792822 (= e!2992564 (allKeysSameHashInMap!2331 lt!1951421 hashF!1559))))

(assert (= (and start!493598 res!2037207) b!4792823))

(assert (= (and b!4792823 res!2037213) b!4792819))

(assert (= (and b!4792819 res!2037209) b!4792825))

(assert (= (and b!4792825 res!2037210) b!4792820))

(assert (= (and b!4792825 (not res!2037214)) b!4792818))

(assert (= (and b!4792818 (not res!2037211)) b!4792824))

(assert (= (and b!4792824 (not res!2037212)) b!4792821))

(assert (= (and b!4792821 (not res!2037208)) b!4792822))

(assert (= start!493598 b!4792826))

(declare-fun m!5773622 () Bool)

(assert (=> b!4792821 m!5773622))

(declare-fun m!5773624 () Bool)

(assert (=> b!4792821 m!5773624))

(declare-fun m!5773626 () Bool)

(assert (=> b!4792821 m!5773626))

(declare-fun m!5773628 () Bool)

(assert (=> b!4792821 m!5773628))

(declare-fun m!5773630 () Bool)

(assert (=> b!4792820 m!5773630))

(assert (=> b!4792820 m!5773630))

(declare-fun m!5773632 () Bool)

(assert (=> b!4792820 m!5773632))

(assert (=> b!4792820 m!5773632))

(declare-fun m!5773634 () Bool)

(assert (=> b!4792820 m!5773634))

(declare-fun m!5773636 () Bool)

(assert (=> b!4792822 m!5773636))

(declare-fun m!5773638 () Bool)

(assert (=> b!4792824 m!5773638))

(declare-fun m!5773640 () Bool)

(assert (=> b!4792823 m!5773640))

(declare-fun m!5773642 () Bool)

(assert (=> b!4792825 m!5773642))

(declare-fun m!5773644 () Bool)

(assert (=> b!4792825 m!5773644))

(declare-fun m!5773646 () Bool)

(assert (=> b!4792825 m!5773646))

(declare-fun m!5773648 () Bool)

(assert (=> b!4792825 m!5773648))

(declare-fun m!5773650 () Bool)

(assert (=> b!4792825 m!5773650))

(declare-fun m!5773652 () Bool)

(assert (=> b!4792825 m!5773652))

(declare-fun m!5773654 () Bool)

(assert (=> b!4792819 m!5773654))

(assert (=> b!4792819 m!5773654))

(declare-fun m!5773656 () Bool)

(assert (=> b!4792819 m!5773656))

(declare-fun m!5773658 () Bool)

(assert (=> start!493598 m!5773658))

(declare-fun m!5773660 () Bool)

(assert (=> start!493598 m!5773660))

(check-sat (not b!4792825) (not b!4792826) tp_is_empty!33565 (not start!493598) (not b!4792824) (not b!4792822) tp_is_empty!33567 (not b!4792819) (not b!4792823) (not b!4792821) (not b!4792820))
(check-sat)
(get-model)

(declare-fun d!1533366 () Bool)

(declare-fun res!2037228 () Bool)

(declare-fun e!2992590 () Bool)

(assert (=> d!1533366 (=> res!2037228 e!2992590)))

(assert (=> d!1533366 (= res!2037228 ((_ is Nil!54227) (toList!6931 lt!1951421)))))

(assert (=> d!1533366 (= (forall!12255 (toList!6931 lt!1951421) lambda!230645) e!2992590)))

(declare-fun b!4792870 () Bool)

(declare-fun e!2992591 () Bool)

(assert (=> b!4792870 (= e!2992590 e!2992591)))

(declare-fun res!2037229 () Bool)

(assert (=> b!4792870 (=> (not res!2037229) (not e!2992591))))

(declare-fun dynLambda!22059 (Int tuple2!56874) Bool)

(assert (=> b!4792870 (= res!2037229 (dynLambda!22059 lambda!230645 (h!60653 (toList!6931 lt!1951421))))))

(declare-fun b!4792871 () Bool)

(assert (=> b!4792871 (= e!2992591 (forall!12255 (t!361801 (toList!6931 lt!1951421)) lambda!230645))))

(assert (= (and d!1533366 (not res!2037228)) b!4792870))

(assert (= (and b!4792870 res!2037229) b!4792871))

(declare-fun b_lambda!186691 () Bool)

(assert (=> (not b_lambda!186691) (not b!4792870)))

(declare-fun m!5773690 () Bool)

(assert (=> b!4792870 m!5773690))

(declare-fun m!5773692 () Bool)

(assert (=> b!4792871 m!5773692))

(assert (=> b!4792821 d!1533366))

(declare-fun d!1533370 () Bool)

(declare-fun tail!9271 (List!54351) List!54351)

(assert (=> d!1533370 (= (tail!9269 lm!2473) (ListLongMap!5354 (tail!9271 (toList!6931 lm!2473))))))

(declare-fun bs!1154824 () Bool)

(assert (= bs!1154824 d!1533370))

(declare-fun m!5773696 () Bool)

(assert (=> bs!1154824 m!5773696))

(assert (=> b!4792821 d!1533370))

(declare-fun d!1533376 () Bool)

(declare-fun dynLambda!22060 (Int tuple2!56872) Bool)

(assert (=> d!1533376 (dynLambda!22060 lambda!230647 (tuple2!56873 key!5896 value!3111))))

(declare-fun lt!1951461 () Unit!139971)

(declare-fun choose!34520 (List!54350 Int tuple2!56872) Unit!139971)

(assert (=> d!1533376 (= lt!1951461 (choose!34520 (_2!31731 (h!60653 (toList!6931 lm!2473))) lambda!230647 (tuple2!56873 key!5896 value!3111)))))

(declare-fun e!2992606 () Bool)

(assert (=> d!1533376 e!2992606))

(declare-fun res!2037244 () Bool)

(assert (=> d!1533376 (=> (not res!2037244) (not e!2992606))))

(declare-fun forall!12257 (List!54350 Int) Bool)

(assert (=> d!1533376 (= res!2037244 (forall!12257 (_2!31731 (h!60653 (toList!6931 lm!2473))) lambda!230647))))

(assert (=> d!1533376 (= (forallContained!4162 (_2!31731 (h!60653 (toList!6931 lm!2473))) lambda!230647 (tuple2!56873 key!5896 value!3111)) lt!1951461)))

(declare-fun b!4792886 () Bool)

(declare-fun contains!17846 (List!54350 tuple2!56872) Bool)

(assert (=> b!4792886 (= e!2992606 (contains!17846 (_2!31731 (h!60653 (toList!6931 lm!2473))) (tuple2!56873 key!5896 value!3111)))))

(assert (= (and d!1533376 res!2037244) b!4792886))

(declare-fun b_lambda!186699 () Bool)

(assert (=> (not b_lambda!186699) (not d!1533376)))

(declare-fun m!5773720 () Bool)

(assert (=> d!1533376 m!5773720))

(declare-fun m!5773722 () Bool)

(assert (=> d!1533376 m!5773722))

(declare-fun m!5773724 () Bool)

(assert (=> d!1533376 m!5773724))

(declare-fun m!5773726 () Bool)

(assert (=> b!4792886 m!5773726))

(assert (=> b!4792821 d!1533376))

(declare-fun d!1533384 () Bool)

(assert (=> d!1533384 (dynLambda!22059 lambda!230646 (h!60653 (toList!6931 lm!2473)))))

(declare-fun lt!1951467 () Unit!139971)

(declare-fun choose!34521 (List!54351 Int tuple2!56874) Unit!139971)

(assert (=> d!1533384 (= lt!1951467 (choose!34521 (toList!6931 lm!2473) lambda!230646 (h!60653 (toList!6931 lm!2473))))))

(declare-fun e!2992618 () Bool)

(assert (=> d!1533384 e!2992618))

(declare-fun res!2037256 () Bool)

(assert (=> d!1533384 (=> (not res!2037256) (not e!2992618))))

(assert (=> d!1533384 (= res!2037256 (forall!12255 (toList!6931 lm!2473) lambda!230646))))

(assert (=> d!1533384 (= (forallContained!4163 (toList!6931 lm!2473) lambda!230646 (h!60653 (toList!6931 lm!2473))) lt!1951467)))

(declare-fun b!4792898 () Bool)

(declare-fun contains!17847 (List!54351 tuple2!56874) Bool)

(assert (=> b!4792898 (= e!2992618 (contains!17847 (toList!6931 lm!2473) (h!60653 (toList!6931 lm!2473))))))

(assert (= (and d!1533384 res!2037256) b!4792898))

(declare-fun b_lambda!186701 () Bool)

(assert (=> (not b_lambda!186701) (not d!1533384)))

(declare-fun m!5773734 () Bool)

(assert (=> d!1533384 m!5773734))

(declare-fun m!5773736 () Bool)

(assert (=> d!1533384 m!5773736))

(declare-fun m!5773738 () Bool)

(assert (=> d!1533384 m!5773738))

(declare-fun m!5773740 () Bool)

(assert (=> b!4792898 m!5773740))

(assert (=> b!4792821 d!1533384))

(declare-fun bs!1154836 () Bool)

(declare-fun d!1533390 () Bool)

(assert (= bs!1154836 (and d!1533390 start!493598)))

(declare-fun lambda!230662 () Int)

(assert (=> bs!1154836 (not (= lambda!230662 lambda!230645))))

(declare-fun bs!1154837 () Bool)

(assert (= bs!1154837 (and d!1533390 b!4792821)))

(assert (=> bs!1154837 (= lambda!230662 lambda!230646)))

(assert (=> d!1533390 true))

(assert (=> d!1533390 (= (allKeysSameHashInMap!2331 lt!1951421 hashF!1559) (forall!12255 (toList!6931 lt!1951421) lambda!230662))))

(declare-fun bs!1154838 () Bool)

(assert (= bs!1154838 d!1533390))

(declare-fun m!5773754 () Bool)

(assert (=> bs!1154838 m!5773754))

(assert (=> b!4792822 d!1533390))

(declare-fun bs!1154839 () Bool)

(declare-fun d!1533394 () Bool)

(assert (= bs!1154839 (and d!1533394 start!493598)))

(declare-fun lambda!230663 () Int)

(assert (=> bs!1154839 (not (= lambda!230663 lambda!230645))))

(declare-fun bs!1154840 () Bool)

(assert (= bs!1154840 (and d!1533394 b!4792821)))

(assert (=> bs!1154840 (= lambda!230663 lambda!230646)))

(declare-fun bs!1154842 () Bool)

(assert (= bs!1154842 (and d!1533394 d!1533390)))

(assert (=> bs!1154842 (= lambda!230663 lambda!230662)))

(assert (=> d!1533394 true))

(assert (=> d!1533394 (= (allKeysSameHashInMap!2331 lm!2473 hashF!1559) (forall!12255 (toList!6931 lm!2473) lambda!230663))))

(declare-fun bs!1154843 () Bool)

(assert (= bs!1154843 d!1533394))

(declare-fun m!5773764 () Bool)

(assert (=> bs!1154843 m!5773764))

(assert (=> b!4792823 d!1533394))

(declare-fun d!1533400 () Bool)

(declare-fun res!2037267 () Bool)

(declare-fun e!2992634 () Bool)

(assert (=> d!1533400 (=> res!2037267 e!2992634)))

(assert (=> d!1533400 (= res!2037267 (and ((_ is Cons!54226) (_2!31731 (h!60653 (toList!6931 lm!2473)))) (= (_1!31730 (h!60652 (_2!31731 (h!60653 (toList!6931 lm!2473))))) key!5896)))))

(assert (=> d!1533400 (= (containsKey!3950 (_2!31731 (h!60653 (toList!6931 lm!2473))) key!5896) e!2992634)))

(declare-fun b!4792919 () Bool)

(declare-fun e!2992635 () Bool)

(assert (=> b!4792919 (= e!2992634 e!2992635)))

(declare-fun res!2037268 () Bool)

(assert (=> b!4792919 (=> (not res!2037268) (not e!2992635))))

(assert (=> b!4792919 (= res!2037268 ((_ is Cons!54226) (_2!31731 (h!60653 (toList!6931 lm!2473)))))))

(declare-fun b!4792920 () Bool)

(assert (=> b!4792920 (= e!2992635 (containsKey!3950 (t!361800 (_2!31731 (h!60653 (toList!6931 lm!2473)))) key!5896))))

(assert (= (and d!1533400 (not res!2037267)) b!4792919))

(assert (= (and b!4792919 res!2037268) b!4792920))

(declare-fun m!5773766 () Bool)

(assert (=> b!4792920 m!5773766))

(assert (=> b!4792824 d!1533400))

(declare-fun b!4792981 () Bool)

(declare-fun e!2992681 () Unit!139971)

(declare-fun Unit!139976 () Unit!139971)

(assert (=> b!4792981 (= e!2992681 Unit!139976)))

(declare-fun b!4792982 () Bool)

(assert (=> b!4792982 false))

(declare-fun lt!1951507 () Unit!139971)

(declare-fun lt!1951506 () Unit!139971)

(assert (=> b!4792982 (= lt!1951507 lt!1951506)))

(declare-fun containsKey!3953 (List!54350 K!15804) Bool)

(assert (=> b!4792982 (containsKey!3953 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1076 (List!54350 K!15804) Unit!139971)

(assert (=> b!4792982 (= lt!1951506 (lemmaInGetKeysListThenContainsKey!1076 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))) key!5896))))

(declare-fun Unit!139977 () Unit!139971)

(assert (=> b!4792982 (= e!2992681 Unit!139977)))

(declare-fun b!4792983 () Bool)

(declare-fun e!2992682 () Bool)

(declare-fun e!2992680 () Bool)

(assert (=> b!4792983 (= e!2992682 e!2992680)))

(declare-fun res!2037300 () Bool)

(assert (=> b!4792983 (=> (not res!2037300) (not e!2992680))))

(declare-datatypes ((Option!13102 0))(
  ( (None!13101) (Some!13101 (v!48386 V!16050)) )
))
(declare-fun isDefined!10244 (Option!13102) Bool)

(declare-fun getValueByKey!2351 (List!54350 K!15804) Option!13102)

(assert (=> b!4792983 (= res!2037300 (isDefined!10244 (getValueByKey!2351 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))) key!5896)))))

(declare-fun b!4792984 () Bool)

(declare-fun e!2992678 () Unit!139971)

(declare-fun lt!1951508 () Unit!139971)

(assert (=> b!4792984 (= e!2992678 lt!1951508)))

(declare-fun lt!1951504 () Unit!139971)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2143 (List!54350 K!15804) Unit!139971)

(assert (=> b!4792984 (= lt!1951504 (lemmaContainsKeyImpliesGetValueByKeyDefined!2143 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))) key!5896))))

(assert (=> b!4792984 (isDefined!10244 (getValueByKey!2351 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))) key!5896))))

(declare-fun lt!1951505 () Unit!139971)

(assert (=> b!4792984 (= lt!1951505 lt!1951504)))

(declare-fun lemmaInListThenGetKeysListContains!1071 (List!54350 K!15804) Unit!139971)

(assert (=> b!4792984 (= lt!1951508 (lemmaInListThenGetKeysListContains!1071 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))) key!5896))))

(declare-fun call!335046 () Bool)

(assert (=> b!4792984 call!335046))

(declare-fun b!4792985 () Bool)

(assert (=> b!4792985 (= e!2992678 e!2992681)))

(declare-fun c!816890 () Bool)

(assert (=> b!4792985 (= c!816890 call!335046)))

(declare-fun b!4792986 () Bool)

(declare-datatypes ((List!54353 0))(
  ( (Nil!54229) (Cons!54229 (h!60655 K!15804) (t!361803 List!54353)) )
))
(declare-fun contains!17848 (List!54353 K!15804) Bool)

(declare-fun keys!19801 (ListMap!6403) List!54353)

(assert (=> b!4792986 (= e!2992680 (contains!17848 (keys!19801 (extractMap!2453 (toList!6931 lm!2473))) key!5896))))

(declare-fun b!4792987 () Bool)

(declare-fun e!2992679 () List!54353)

(declare-fun getKeysList!1076 (List!54350) List!54353)

(assert (=> b!4792987 (= e!2992679 (getKeysList!1076 (toList!6932 (extractMap!2453 (toList!6931 lm!2473)))))))

(declare-fun bm!335041 () Bool)

(assert (=> bm!335041 (= call!335046 (contains!17848 e!2992679 key!5896))))

(declare-fun c!816891 () Bool)

(declare-fun c!816892 () Bool)

(assert (=> bm!335041 (= c!816891 c!816892)))

(declare-fun d!1533402 () Bool)

(assert (=> d!1533402 e!2992682))

(declare-fun res!2037299 () Bool)

(assert (=> d!1533402 (=> res!2037299 e!2992682)))

(declare-fun e!2992683 () Bool)

(assert (=> d!1533402 (= res!2037299 e!2992683)))

(declare-fun res!2037298 () Bool)

(assert (=> d!1533402 (=> (not res!2037298) (not e!2992683))))

(declare-fun lt!1951509 () Bool)

(assert (=> d!1533402 (= res!2037298 (not lt!1951509))))

(declare-fun lt!1951502 () Bool)

(assert (=> d!1533402 (= lt!1951509 lt!1951502)))

(declare-fun lt!1951503 () Unit!139971)

(assert (=> d!1533402 (= lt!1951503 e!2992678)))

(assert (=> d!1533402 (= c!816892 lt!1951502)))

(assert (=> d!1533402 (= lt!1951502 (containsKey!3953 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))) key!5896))))

(assert (=> d!1533402 (= (contains!17841 (extractMap!2453 (toList!6931 lm!2473)) key!5896) lt!1951509)))

(declare-fun b!4792988 () Bool)

(assert (=> b!4792988 (= e!2992679 (keys!19801 (extractMap!2453 (toList!6931 lm!2473))))))

(declare-fun b!4792989 () Bool)

(assert (=> b!4792989 (= e!2992683 (not (contains!17848 (keys!19801 (extractMap!2453 (toList!6931 lm!2473))) key!5896)))))

(assert (= (and d!1533402 c!816892) b!4792984))

(assert (= (and d!1533402 (not c!816892)) b!4792985))

(assert (= (and b!4792985 c!816890) b!4792982))

(assert (= (and b!4792985 (not c!816890)) b!4792981))

(assert (= (or b!4792984 b!4792985) bm!335041))

(assert (= (and bm!335041 c!816891) b!4792987))

(assert (= (and bm!335041 (not c!816891)) b!4792988))

(assert (= (and d!1533402 res!2037298) b!4792989))

(assert (= (and d!1533402 (not res!2037299)) b!4792983))

(assert (= (and b!4792983 res!2037300) b!4792986))

(declare-fun m!5773812 () Bool)

(assert (=> b!4792984 m!5773812))

(declare-fun m!5773814 () Bool)

(assert (=> b!4792984 m!5773814))

(assert (=> b!4792984 m!5773814))

(declare-fun m!5773816 () Bool)

(assert (=> b!4792984 m!5773816))

(declare-fun m!5773818 () Bool)

(assert (=> b!4792984 m!5773818))

(assert (=> b!4792988 m!5773654))

(declare-fun m!5773820 () Bool)

(assert (=> b!4792988 m!5773820))

(declare-fun m!5773822 () Bool)

(assert (=> b!4792982 m!5773822))

(declare-fun m!5773824 () Bool)

(assert (=> b!4792982 m!5773824))

(declare-fun m!5773826 () Bool)

(assert (=> b!4792987 m!5773826))

(assert (=> b!4792983 m!5773814))

(assert (=> b!4792983 m!5773814))

(assert (=> b!4792983 m!5773816))

(declare-fun m!5773828 () Bool)

(assert (=> bm!335041 m!5773828))

(assert (=> d!1533402 m!5773822))

(assert (=> b!4792989 m!5773654))

(assert (=> b!4792989 m!5773820))

(assert (=> b!4792989 m!5773820))

(declare-fun m!5773830 () Bool)

(assert (=> b!4792989 m!5773830))

(assert (=> b!4792986 m!5773654))

(assert (=> b!4792986 m!5773820))

(assert (=> b!4792986 m!5773820))

(assert (=> b!4792986 m!5773830))

(assert (=> b!4792819 d!1533402))

(declare-fun bs!1154858 () Bool)

(declare-fun d!1533426 () Bool)

(assert (= bs!1154858 (and d!1533426 start!493598)))

(declare-fun lambda!230667 () Int)

(assert (=> bs!1154858 (= lambda!230667 lambda!230645)))

(declare-fun bs!1154859 () Bool)

(assert (= bs!1154859 (and d!1533426 b!4792821)))

(assert (=> bs!1154859 (not (= lambda!230667 lambda!230646))))

(declare-fun bs!1154860 () Bool)

(assert (= bs!1154860 (and d!1533426 d!1533390)))

(assert (=> bs!1154860 (not (= lambda!230667 lambda!230662))))

(declare-fun bs!1154861 () Bool)

(assert (= bs!1154861 (and d!1533426 d!1533394)))

(assert (=> bs!1154861 (not (= lambda!230667 lambda!230663))))

(declare-fun lt!1951512 () ListMap!6403)

(declare-fun invariantList!1730 (List!54350) Bool)

(assert (=> d!1533426 (invariantList!1730 (toList!6932 lt!1951512))))

(declare-fun e!2992686 () ListMap!6403)

(assert (=> d!1533426 (= lt!1951512 e!2992686)))

(declare-fun c!816895 () Bool)

(assert (=> d!1533426 (= c!816895 ((_ is Cons!54227) (toList!6931 lm!2473)))))

(assert (=> d!1533426 (forall!12255 (toList!6931 lm!2473) lambda!230667)))

(assert (=> d!1533426 (= (extractMap!2453 (toList!6931 lm!2473)) lt!1951512)))

(declare-fun b!4792994 () Bool)

(declare-fun addToMapMapFromBucket!1707 (List!54350 ListMap!6403) ListMap!6403)

(assert (=> b!4792994 (= e!2992686 (addToMapMapFromBucket!1707 (_2!31731 (h!60653 (toList!6931 lm!2473))) (extractMap!2453 (t!361801 (toList!6931 lm!2473)))))))

(declare-fun b!4792995 () Bool)

(assert (=> b!4792995 (= e!2992686 (ListMap!6404 Nil!54226))))

(assert (= (and d!1533426 c!816895) b!4792994))

(assert (= (and d!1533426 (not c!816895)) b!4792995))

(declare-fun m!5773832 () Bool)

(assert (=> d!1533426 m!5773832))

(declare-fun m!5773834 () Bool)

(assert (=> d!1533426 m!5773834))

(declare-fun m!5773836 () Bool)

(assert (=> b!4792994 m!5773836))

(assert (=> b!4792994 m!5773836))

(declare-fun m!5773838 () Bool)

(assert (=> b!4792994 m!5773838))

(assert (=> b!4792819 d!1533426))

(declare-fun d!1533428 () Bool)

(declare-fun e!2992691 () Bool)

(assert (=> d!1533428 e!2992691))

(declare-fun res!2037303 () Bool)

(assert (=> d!1533428 (=> res!2037303 e!2992691)))

(declare-fun lt!1951523 () Bool)

(assert (=> d!1533428 (= res!2037303 (not lt!1951523))))

(declare-fun lt!1951524 () Bool)

(assert (=> d!1533428 (= lt!1951523 lt!1951524)))

(declare-fun lt!1951521 () Unit!139971)

(declare-fun e!2992692 () Unit!139971)

(assert (=> d!1533428 (= lt!1951521 e!2992692)))

(declare-fun c!816898 () Bool)

(assert (=> d!1533428 (= c!816898 lt!1951524)))

(declare-fun containsKey!3954 (List!54351 (_ BitVec 64)) Bool)

(assert (=> d!1533428 (= lt!1951524 (containsKey!3954 (toList!6931 lm!2473) lt!1951425))))

(assert (=> d!1533428 (= (contains!17842 lm!2473 lt!1951425) lt!1951523)))

(declare-fun b!4793002 () Bool)

(declare-fun lt!1951522 () Unit!139971)

(assert (=> b!4793002 (= e!2992692 lt!1951522)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2144 (List!54351 (_ BitVec 64)) Unit!139971)

(assert (=> b!4793002 (= lt!1951522 (lemmaContainsKeyImpliesGetValueByKeyDefined!2144 (toList!6931 lm!2473) lt!1951425))))

(declare-datatypes ((Option!13103 0))(
  ( (None!13102) (Some!13102 (v!48387 List!54350)) )
))
(declare-fun isDefined!10245 (Option!13103) Bool)

(declare-fun getValueByKey!2352 (List!54351 (_ BitVec 64)) Option!13103)

(assert (=> b!4793002 (isDefined!10245 (getValueByKey!2352 (toList!6931 lm!2473) lt!1951425))))

(declare-fun b!4793003 () Bool)

(declare-fun Unit!139978 () Unit!139971)

(assert (=> b!4793003 (= e!2992692 Unit!139978)))

(declare-fun b!4793004 () Bool)

(assert (=> b!4793004 (= e!2992691 (isDefined!10245 (getValueByKey!2352 (toList!6931 lm!2473) lt!1951425)))))

(assert (= (and d!1533428 c!816898) b!4793002))

(assert (= (and d!1533428 (not c!816898)) b!4793003))

(assert (= (and d!1533428 (not res!2037303)) b!4793004))

(declare-fun m!5773840 () Bool)

(assert (=> d!1533428 m!5773840))

(declare-fun m!5773842 () Bool)

(assert (=> b!4793002 m!5773842))

(declare-fun m!5773844 () Bool)

(assert (=> b!4793002 m!5773844))

(assert (=> b!4793002 m!5773844))

(declare-fun m!5773846 () Bool)

(assert (=> b!4793002 m!5773846))

(assert (=> b!4793004 m!5773844))

(assert (=> b!4793004 m!5773844))

(assert (=> b!4793004 m!5773846))

(assert (=> b!4792825 d!1533428))

(declare-fun d!1533430 () Bool)

(declare-fun res!2037312 () Bool)

(declare-fun e!2992701 () Bool)

(assert (=> d!1533430 (=> res!2037312 e!2992701)))

(declare-fun e!2992699 () Bool)

(assert (=> d!1533430 (= res!2037312 e!2992699)))

(declare-fun res!2037311 () Bool)

(assert (=> d!1533430 (=> (not res!2037311) (not e!2992699))))

(assert (=> d!1533430 (= res!2037311 ((_ is Cons!54227) (toList!6931 lm!2473)))))

(assert (=> d!1533430 (= (containsKeyBiggerList!568 (toList!6931 lm!2473) key!5896) e!2992701)))

(declare-fun b!4793011 () Bool)

(assert (=> b!4793011 (= e!2992699 (containsKey!3950 (_2!31731 (h!60653 (toList!6931 lm!2473))) key!5896))))

(declare-fun b!4793012 () Bool)

(declare-fun e!2992700 () Bool)

(assert (=> b!4793012 (= e!2992701 e!2992700)))

(declare-fun res!2037310 () Bool)

(assert (=> b!4793012 (=> (not res!2037310) (not e!2992700))))

(assert (=> b!4793012 (= res!2037310 ((_ is Cons!54227) (toList!6931 lm!2473)))))

(declare-fun b!4793013 () Bool)

(assert (=> b!4793013 (= e!2992700 (containsKeyBiggerList!568 (t!361801 (toList!6931 lm!2473)) key!5896))))

(assert (= (and d!1533430 res!2037311) b!4793011))

(assert (= (and d!1533430 (not res!2037312)) b!4793012))

(assert (= (and b!4793012 res!2037310) b!4793013))

(assert (=> b!4793011 m!5773638))

(declare-fun m!5773848 () Bool)

(assert (=> b!4793013 m!5773848))

(assert (=> b!4792825 d!1533430))

(declare-fun bs!1154862 () Bool)

(declare-fun d!1533432 () Bool)

(assert (= bs!1154862 (and d!1533432 start!493598)))

(declare-fun lambda!230670 () Int)

(assert (=> bs!1154862 (= lambda!230670 lambda!230645)))

(declare-fun bs!1154863 () Bool)

(assert (= bs!1154863 (and d!1533432 d!1533390)))

(assert (=> bs!1154863 (not (= lambda!230670 lambda!230662))))

(declare-fun bs!1154864 () Bool)

(assert (= bs!1154864 (and d!1533432 d!1533394)))

(assert (=> bs!1154864 (not (= lambda!230670 lambda!230663))))

(declare-fun bs!1154865 () Bool)

(assert (= bs!1154865 (and d!1533432 d!1533426)))

(assert (=> bs!1154865 (= lambda!230670 lambda!230667)))

(declare-fun bs!1154866 () Bool)

(assert (= bs!1154866 (and d!1533432 b!4792821)))

(assert (=> bs!1154866 (not (= lambda!230670 lambda!230646))))

(assert (=> d!1533432 (containsKeyBiggerList!568 (toList!6931 lm!2473) key!5896)))

(declare-fun lt!1951527 () Unit!139971)

(declare-fun choose!34522 (ListLongMap!5353 K!15804 Hashable!6926) Unit!139971)

(assert (=> d!1533432 (= lt!1951527 (choose!34522 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1533432 (forall!12255 (toList!6931 lm!2473) lambda!230670)))

(assert (=> d!1533432 (= (lemmaInLongMapThenContainsKeyBiggerList!308 lm!2473 key!5896 hashF!1559) lt!1951527)))

(declare-fun bs!1154867 () Bool)

(assert (= bs!1154867 d!1533432))

(assert (=> bs!1154867 m!5773642))

(declare-fun m!5773850 () Bool)

(assert (=> bs!1154867 m!5773850))

(declare-fun m!5773852 () Bool)

(assert (=> bs!1154867 m!5773852))

(assert (=> b!4792825 d!1533432))

(declare-fun bs!1154868 () Bool)

(declare-fun d!1533434 () Bool)

(assert (= bs!1154868 (and d!1533434 start!493598)))

(declare-fun lambda!230673 () Int)

(assert (=> bs!1154868 (= lambda!230673 lambda!230645)))

(declare-fun bs!1154869 () Bool)

(assert (= bs!1154869 (and d!1533434 d!1533390)))

(assert (=> bs!1154869 (not (= lambda!230673 lambda!230662))))

(declare-fun bs!1154870 () Bool)

(assert (= bs!1154870 (and d!1533434 d!1533394)))

(assert (=> bs!1154870 (not (= lambda!230673 lambda!230663))))

(declare-fun bs!1154871 () Bool)

(assert (= bs!1154871 (and d!1533434 d!1533432)))

(assert (=> bs!1154871 (= lambda!230673 lambda!230670)))

(declare-fun bs!1154872 () Bool)

(assert (= bs!1154872 (and d!1533434 d!1533426)))

(assert (=> bs!1154872 (= lambda!230673 lambda!230667)))

(declare-fun bs!1154873 () Bool)

(assert (= bs!1154873 (and d!1533434 b!4792821)))

(assert (=> bs!1154873 (not (= lambda!230673 lambda!230646))))

(declare-fun e!2992704 () Bool)

(assert (=> d!1533434 e!2992704))

(declare-fun res!2037315 () Bool)

(assert (=> d!1533434 (=> (not res!2037315) (not e!2992704))))

(assert (=> d!1533434 (= res!2037315 (contains!17842 lm!2473 (hash!4961 hashF!1559 key!5896)))))

(declare-fun lt!1951530 () Unit!139971)

(declare-fun choose!34523 (ListLongMap!5353 K!15804 Hashable!6926) Unit!139971)

(assert (=> d!1533434 (= lt!1951530 (choose!34523 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1533434 (forall!12255 (toList!6931 lm!2473) lambda!230673)))

(assert (=> d!1533434 (= (lemmaInGenericMapThenInLongMap!330 lm!2473 key!5896 hashF!1559) lt!1951530)))

(declare-fun b!4793016 () Bool)

(assert (=> b!4793016 (= e!2992704 (isDefined!10241 (getPair!898 (apply!12995 lm!2473 (hash!4961 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1533434 res!2037315) b!4793016))

(assert (=> d!1533434 m!5773644))

(assert (=> d!1533434 m!5773644))

(declare-fun m!5773854 () Bool)

(assert (=> d!1533434 m!5773854))

(declare-fun m!5773856 () Bool)

(assert (=> d!1533434 m!5773856))

(declare-fun m!5773858 () Bool)

(assert (=> d!1533434 m!5773858))

(assert (=> b!4793016 m!5773644))

(assert (=> b!4793016 m!5773644))

(declare-fun m!5773860 () Bool)

(assert (=> b!4793016 m!5773860))

(assert (=> b!4793016 m!5773860))

(declare-fun m!5773862 () Bool)

(assert (=> b!4793016 m!5773862))

(assert (=> b!4793016 m!5773862))

(declare-fun m!5773864 () Bool)

(assert (=> b!4793016 m!5773864))

(assert (=> b!4792825 d!1533434))

(declare-fun d!1533436 () Bool)

(declare-fun c!816901 () Bool)

(declare-fun e!2992710 () Bool)

(assert (=> d!1533436 (= c!816901 e!2992710)))

(declare-fun res!2037318 () Bool)

(assert (=> d!1533436 (=> (not res!2037318) (not e!2992710))))

(assert (=> d!1533436 (= res!2037318 ((_ is Cons!54227) (toList!6931 lm!2473)))))

(declare-fun e!2992709 () V!16050)

(assert (=> d!1533436 (= (getValue!114 (toList!6931 lm!2473) key!5896) e!2992709)))

(declare-fun b!4793025 () Bool)

(assert (=> b!4793025 (= e!2992710 (containsKey!3950 (_2!31731 (h!60653 (toList!6931 lm!2473))) key!5896))))

(declare-fun b!4793023 () Bool)

(declare-fun get!18483 (Option!13099) tuple2!56872)

(assert (=> b!4793023 (= e!2992709 (_2!31730 (get!18483 (getPair!898 (_2!31731 (h!60653 (toList!6931 lm!2473))) key!5896))))))

(declare-fun b!4793024 () Bool)

(assert (=> b!4793024 (= e!2992709 (getValue!114 (t!361801 (toList!6931 lm!2473)) key!5896))))

(assert (= (and d!1533436 res!2037318) b!4793025))

(assert (= (and d!1533436 c!816901) b!4793023))

(assert (= (and d!1533436 (not c!816901)) b!4793024))

(assert (=> b!4793025 m!5773638))

(declare-fun m!5773866 () Bool)

(assert (=> b!4793023 m!5773866))

(assert (=> b!4793023 m!5773866))

(declare-fun m!5773868 () Bool)

(assert (=> b!4793023 m!5773868))

(declare-fun m!5773870 () Bool)

(assert (=> b!4793024 m!5773870))

(assert (=> b!4792825 d!1533436))

(declare-fun d!1533438 () Bool)

(declare-fun hash!4963 (Hashable!6926 K!15804) (_ BitVec 64))

(assert (=> d!1533438 (= (hash!4961 hashF!1559 key!5896) (hash!4963 hashF!1559 key!5896))))

(declare-fun bs!1154874 () Bool)

(assert (= bs!1154874 d!1533438))

(declare-fun m!5773872 () Bool)

(assert (=> bs!1154874 m!5773872))

(assert (=> b!4792825 d!1533438))

(declare-fun d!1533440 () Bool)

(declare-fun isEmpty!29449 (Option!13099) Bool)

(assert (=> d!1533440 (= (isDefined!10241 (getPair!898 (apply!12995 lm!2473 lt!1951425) key!5896)) (not (isEmpty!29449 (getPair!898 (apply!12995 lm!2473 lt!1951425) key!5896))))))

(declare-fun bs!1154875 () Bool)

(assert (= bs!1154875 d!1533440))

(assert (=> bs!1154875 m!5773632))

(declare-fun m!5773874 () Bool)

(assert (=> bs!1154875 m!5773874))

(assert (=> b!4792820 d!1533440))

(declare-fun e!2992724 () Bool)

(declare-fun b!4793042 () Bool)

(assert (=> b!4793042 (= e!2992724 (not (containsKey!3950 (apply!12995 lm!2473 lt!1951425) key!5896)))))

(declare-fun b!4793043 () Bool)

(declare-fun res!2037327 () Bool)

(declare-fun e!2992721 () Bool)

(assert (=> b!4793043 (=> (not res!2037327) (not e!2992721))))

(declare-fun lt!1951533 () Option!13099)

(assert (=> b!4793043 (= res!2037327 (= (_1!31730 (get!18483 lt!1951533)) key!5896))))

(declare-fun b!4793044 () Bool)

(assert (=> b!4793044 (= e!2992721 (contains!17846 (apply!12995 lm!2473 lt!1951425) (get!18483 lt!1951533)))))

(declare-fun b!4793045 () Bool)

(declare-fun e!2992722 () Bool)

(assert (=> b!4793045 (= e!2992722 e!2992721)))

(declare-fun res!2037328 () Bool)

(assert (=> b!4793045 (=> (not res!2037328) (not e!2992721))))

(assert (=> b!4793045 (= res!2037328 (isDefined!10241 lt!1951533))))

(declare-fun d!1533442 () Bool)

(assert (=> d!1533442 e!2992722))

(declare-fun res!2037329 () Bool)

(assert (=> d!1533442 (=> res!2037329 e!2992722)))

(assert (=> d!1533442 (= res!2037329 e!2992724)))

(declare-fun res!2037330 () Bool)

(assert (=> d!1533442 (=> (not res!2037330) (not e!2992724))))

(assert (=> d!1533442 (= res!2037330 (isEmpty!29449 lt!1951533))))

(declare-fun e!2992725 () Option!13099)

(assert (=> d!1533442 (= lt!1951533 e!2992725)))

(declare-fun c!816906 () Bool)

(assert (=> d!1533442 (= c!816906 (and ((_ is Cons!54226) (apply!12995 lm!2473 lt!1951425)) (= (_1!31730 (h!60652 (apply!12995 lm!2473 lt!1951425))) key!5896)))))

(declare-fun noDuplicateKeys!2339 (List!54350) Bool)

(assert (=> d!1533442 (noDuplicateKeys!2339 (apply!12995 lm!2473 lt!1951425))))

(assert (=> d!1533442 (= (getPair!898 (apply!12995 lm!2473 lt!1951425) key!5896) lt!1951533)))

(declare-fun b!4793046 () Bool)

(declare-fun e!2992723 () Option!13099)

(assert (=> b!4793046 (= e!2992723 None!13098)))

(declare-fun b!4793047 () Bool)

(assert (=> b!4793047 (= e!2992725 e!2992723)))

(declare-fun c!816907 () Bool)

(assert (=> b!4793047 (= c!816907 ((_ is Cons!54226) (apply!12995 lm!2473 lt!1951425)))))

(declare-fun b!4793048 () Bool)

(assert (=> b!4793048 (= e!2992725 (Some!13098 (h!60652 (apply!12995 lm!2473 lt!1951425))))))

(declare-fun b!4793049 () Bool)

(assert (=> b!4793049 (= e!2992723 (getPair!898 (t!361800 (apply!12995 lm!2473 lt!1951425)) key!5896))))

(assert (= (and d!1533442 c!816906) b!4793048))

(assert (= (and d!1533442 (not c!816906)) b!4793047))

(assert (= (and b!4793047 c!816907) b!4793049))

(assert (= (and b!4793047 (not c!816907)) b!4793046))

(assert (= (and d!1533442 res!2037330) b!4793042))

(assert (= (and d!1533442 (not res!2037329)) b!4793045))

(assert (= (and b!4793045 res!2037328) b!4793043))

(assert (= (and b!4793043 res!2037327) b!4793044))

(declare-fun m!5773876 () Bool)

(assert (=> d!1533442 m!5773876))

(assert (=> d!1533442 m!5773630))

(declare-fun m!5773878 () Bool)

(assert (=> d!1533442 m!5773878))

(declare-fun m!5773880 () Bool)

(assert (=> b!4793049 m!5773880))

(declare-fun m!5773882 () Bool)

(assert (=> b!4793043 m!5773882))

(declare-fun m!5773884 () Bool)

(assert (=> b!4793045 m!5773884))

(assert (=> b!4793042 m!5773630))

(declare-fun m!5773886 () Bool)

(assert (=> b!4793042 m!5773886))

(assert (=> b!4793044 m!5773882))

(assert (=> b!4793044 m!5773630))

(assert (=> b!4793044 m!5773882))

(declare-fun m!5773888 () Bool)

(assert (=> b!4793044 m!5773888))

(assert (=> b!4792820 d!1533442))

(declare-fun d!1533444 () Bool)

(declare-fun get!18484 (Option!13103) List!54350)

(assert (=> d!1533444 (= (apply!12995 lm!2473 lt!1951425) (get!18484 (getValueByKey!2352 (toList!6931 lm!2473) lt!1951425)))))

(declare-fun bs!1154876 () Bool)

(assert (= bs!1154876 d!1533444))

(assert (=> bs!1154876 m!5773844))

(assert (=> bs!1154876 m!5773844))

(declare-fun m!5773890 () Bool)

(assert (=> bs!1154876 m!5773890))

(assert (=> b!4792820 d!1533444))

(declare-fun d!1533446 () Bool)

(declare-fun res!2037331 () Bool)

(declare-fun e!2992726 () Bool)

(assert (=> d!1533446 (=> res!2037331 e!2992726)))

(assert (=> d!1533446 (= res!2037331 ((_ is Nil!54227) (toList!6931 lm!2473)))))

(assert (=> d!1533446 (= (forall!12255 (toList!6931 lm!2473) lambda!230645) e!2992726)))

(declare-fun b!4793050 () Bool)

(declare-fun e!2992727 () Bool)

(assert (=> b!4793050 (= e!2992726 e!2992727)))

(declare-fun res!2037332 () Bool)

(assert (=> b!4793050 (=> (not res!2037332) (not e!2992727))))

(assert (=> b!4793050 (= res!2037332 (dynLambda!22059 lambda!230645 (h!60653 (toList!6931 lm!2473))))))

(declare-fun b!4793051 () Bool)

(assert (=> b!4793051 (= e!2992727 (forall!12255 (t!361801 (toList!6931 lm!2473)) lambda!230645))))

(assert (= (and d!1533446 (not res!2037331)) b!4793050))

(assert (= (and b!4793050 res!2037332) b!4793051))

(declare-fun b_lambda!186713 () Bool)

(assert (=> (not b_lambda!186713) (not b!4793050)))

(declare-fun m!5773892 () Bool)

(assert (=> b!4793050 m!5773892))

(declare-fun m!5773894 () Bool)

(assert (=> b!4793051 m!5773894))

(assert (=> start!493598 d!1533446))

(declare-fun d!1533448 () Bool)

(declare-fun isStrictlySorted!878 (List!54351) Bool)

(assert (=> d!1533448 (= (inv!69830 lm!2473) (isStrictlySorted!878 (toList!6931 lm!2473)))))

(declare-fun bs!1154877 () Bool)

(assert (= bs!1154877 d!1533448))

(declare-fun m!5773896 () Bool)

(assert (=> bs!1154877 m!5773896))

(assert (=> start!493598 d!1533448))

(declare-fun b!4793056 () Bool)

(declare-fun e!2992730 () Bool)

(declare-fun tp!1358053 () Bool)

(declare-fun tp!1358054 () Bool)

(assert (=> b!4793056 (= e!2992730 (and tp!1358053 tp!1358054))))

(assert (=> b!4792826 (= tp!1358042 e!2992730)))

(assert (= (and b!4792826 ((_ is Cons!54227) (toList!6931 lm!2473))) b!4793056))

(declare-fun b_lambda!186715 () Bool)

(assert (= b_lambda!186691 (or start!493598 b_lambda!186715)))

(declare-fun bs!1154878 () Bool)

(declare-fun d!1533450 () Bool)

(assert (= bs!1154878 (and d!1533450 start!493598)))

(assert (=> bs!1154878 (= (dynLambda!22059 lambda!230645 (h!60653 (toList!6931 lt!1951421))) (noDuplicateKeys!2339 (_2!31731 (h!60653 (toList!6931 lt!1951421)))))))

(declare-fun m!5773898 () Bool)

(assert (=> bs!1154878 m!5773898))

(assert (=> b!4792870 d!1533450))

(declare-fun b_lambda!186717 () Bool)

(assert (= b_lambda!186713 (or start!493598 b_lambda!186717)))

(declare-fun bs!1154879 () Bool)

(declare-fun d!1533452 () Bool)

(assert (= bs!1154879 (and d!1533452 start!493598)))

(assert (=> bs!1154879 (= (dynLambda!22059 lambda!230645 (h!60653 (toList!6931 lm!2473))) (noDuplicateKeys!2339 (_2!31731 (h!60653 (toList!6931 lm!2473)))))))

(declare-fun m!5773900 () Bool)

(assert (=> bs!1154879 m!5773900))

(assert (=> b!4793050 d!1533452))

(declare-fun b_lambda!186719 () Bool)

(assert (= b_lambda!186701 (or b!4792821 b_lambda!186719)))

(declare-fun bs!1154880 () Bool)

(declare-fun d!1533454 () Bool)

(assert (= bs!1154880 (and d!1533454 b!4792821)))

(declare-fun allKeysSameHash!1958 (List!54350 (_ BitVec 64) Hashable!6926) Bool)

(assert (=> bs!1154880 (= (dynLambda!22059 lambda!230646 (h!60653 (toList!6931 lm!2473))) (allKeysSameHash!1958 (_2!31731 (h!60653 (toList!6931 lm!2473))) (_1!31731 (h!60653 (toList!6931 lm!2473))) hashF!1559))))

(declare-fun m!5773902 () Bool)

(assert (=> bs!1154880 m!5773902))

(assert (=> d!1533384 d!1533454))

(declare-fun b_lambda!186721 () Bool)

(assert (= b_lambda!186699 (or b!4792821 b_lambda!186721)))

(declare-fun bs!1154881 () Bool)

(declare-fun d!1533456 () Bool)

(assert (= bs!1154881 (and d!1533456 b!4792821)))

(assert (=> bs!1154881 (= (dynLambda!22060 lambda!230647 (tuple2!56873 key!5896 value!3111)) (= (hash!4961 hashF!1559 (_1!31730 (tuple2!56873 key!5896 value!3111))) (_1!31731 (h!60653 (toList!6931 lm!2473)))))))

(declare-fun m!5773904 () Bool)

(assert (=> bs!1154881 m!5773904))

(assert (=> d!1533376 d!1533456))

(check-sat (not b!4792920) (not b!4793043) (not b!4793002) (not d!1533384) (not bm!335041) (not d!1533442) (not b!4793016) (not b!4792986) (not b_lambda!186721) (not d!1533370) (not d!1533438) (not bs!1154879) (not b!4793011) (not b!4793013) (not d!1533432) (not b!4793042) (not b!4793025) (not d!1533428) tp_is_empty!33565 (not d!1533376) (not b_lambda!186717) (not b!4793024) (not b_lambda!186719) (not b!4792984) (not bs!1154878) (not d!1533434) (not bs!1154880) (not d!1533448) tp_is_empty!33567 (not b!4792987) (not b!4793045) (not b!4792898) (not b!4792886) (not d!1533440) (not b!4792989) (not b!4792988) (not b!4793056) (not b!4793004) (not b!4792871) (not b!4793044) (not d!1533402) (not b!4793049) (not b_lambda!186715) (not b!4793023) (not d!1533444) (not d!1533390) (not b!4793051) (not d!1533394) (not bs!1154881) (not b!4792994) (not b!4792982) (not b!4792983) (not d!1533426))
(check-sat)
(get-model)

(declare-fun d!1533522 () Bool)

(declare-fun isEmpty!29450 (Option!13103) Bool)

(assert (=> d!1533522 (= (isDefined!10245 (getValueByKey!2352 (toList!6931 lm!2473) lt!1951425)) (not (isEmpty!29450 (getValueByKey!2352 (toList!6931 lm!2473) lt!1951425))))))

(declare-fun bs!1154889 () Bool)

(assert (= bs!1154889 d!1533522))

(assert (=> bs!1154889 m!5773844))

(declare-fun m!5774002 () Bool)

(assert (=> bs!1154889 m!5774002))

(assert (=> b!4793004 d!1533522))

(declare-fun b!4793156 () Bool)

(declare-fun e!2992808 () Option!13103)

(assert (=> b!4793156 (= e!2992808 (getValueByKey!2352 (t!361801 (toList!6931 lm!2473)) lt!1951425))))

(declare-fun b!4793155 () Bool)

(declare-fun e!2992807 () Option!13103)

(assert (=> b!4793155 (= e!2992807 e!2992808)))

(declare-fun c!816926 () Bool)

(assert (=> b!4793155 (= c!816926 (and ((_ is Cons!54227) (toList!6931 lm!2473)) (not (= (_1!31731 (h!60653 (toList!6931 lm!2473))) lt!1951425))))))

(declare-fun d!1533524 () Bool)

(declare-fun c!816925 () Bool)

(assert (=> d!1533524 (= c!816925 (and ((_ is Cons!54227) (toList!6931 lm!2473)) (= (_1!31731 (h!60653 (toList!6931 lm!2473))) lt!1951425)))))

(assert (=> d!1533524 (= (getValueByKey!2352 (toList!6931 lm!2473) lt!1951425) e!2992807)))

(declare-fun b!4793154 () Bool)

(assert (=> b!4793154 (= e!2992807 (Some!13102 (_2!31731 (h!60653 (toList!6931 lm!2473)))))))

(declare-fun b!4793157 () Bool)

(assert (=> b!4793157 (= e!2992808 None!13102)))

(assert (= (and d!1533524 c!816925) b!4793154))

(assert (= (and d!1533524 (not c!816925)) b!4793155))

(assert (= (and b!4793155 c!816926) b!4793156))

(assert (= (and b!4793155 (not c!816926)) b!4793157))

(declare-fun m!5774004 () Bool)

(assert (=> b!4793156 m!5774004))

(assert (=> b!4793004 d!1533524))

(declare-fun d!1533526 () Bool)

(declare-fun res!2037398 () Bool)

(declare-fun e!2992811 () Bool)

(assert (=> d!1533526 (=> res!2037398 e!2992811)))

(declare-fun e!2992809 () Bool)

(assert (=> d!1533526 (= res!2037398 e!2992809)))

(declare-fun res!2037397 () Bool)

(assert (=> d!1533526 (=> (not res!2037397) (not e!2992809))))

(assert (=> d!1533526 (= res!2037397 ((_ is Cons!54227) (t!361801 (toList!6931 lm!2473))))))

(assert (=> d!1533526 (= (containsKeyBiggerList!568 (t!361801 (toList!6931 lm!2473)) key!5896) e!2992811)))

(declare-fun b!4793158 () Bool)

(assert (=> b!4793158 (= e!2992809 (containsKey!3950 (_2!31731 (h!60653 (t!361801 (toList!6931 lm!2473)))) key!5896))))

(declare-fun b!4793159 () Bool)

(declare-fun e!2992810 () Bool)

(assert (=> b!4793159 (= e!2992811 e!2992810)))

(declare-fun res!2037396 () Bool)

(assert (=> b!4793159 (=> (not res!2037396) (not e!2992810))))

(assert (=> b!4793159 (= res!2037396 ((_ is Cons!54227) (t!361801 (toList!6931 lm!2473))))))

(declare-fun b!4793160 () Bool)

(assert (=> b!4793160 (= e!2992810 (containsKeyBiggerList!568 (t!361801 (t!361801 (toList!6931 lm!2473))) key!5896))))

(assert (= (and d!1533526 res!2037397) b!4793158))

(assert (= (and d!1533526 (not res!2037398)) b!4793159))

(assert (= (and b!4793159 res!2037396) b!4793160))

(declare-fun m!5774006 () Bool)

(assert (=> b!4793158 m!5774006))

(declare-fun m!5774008 () Bool)

(assert (=> b!4793160 m!5774008))

(assert (=> b!4793013 d!1533526))

(declare-fun d!1533528 () Bool)

(assert (=> d!1533528 (isDefined!10245 (getValueByKey!2352 (toList!6931 lm!2473) lt!1951425))))

(declare-fun lt!1951611 () Unit!139971)

(declare-fun choose!34525 (List!54351 (_ BitVec 64)) Unit!139971)

(assert (=> d!1533528 (= lt!1951611 (choose!34525 (toList!6931 lm!2473) lt!1951425))))

(declare-fun e!2992817 () Bool)

(assert (=> d!1533528 e!2992817))

(declare-fun res!2037404 () Bool)

(assert (=> d!1533528 (=> (not res!2037404) (not e!2992817))))

(assert (=> d!1533528 (= res!2037404 (isStrictlySorted!878 (toList!6931 lm!2473)))))

(assert (=> d!1533528 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2144 (toList!6931 lm!2473) lt!1951425) lt!1951611)))

(declare-fun b!4793170 () Bool)

(assert (=> b!4793170 (= e!2992817 (containsKey!3954 (toList!6931 lm!2473) lt!1951425))))

(assert (= (and d!1533528 res!2037404) b!4793170))

(assert (=> d!1533528 m!5773844))

(assert (=> d!1533528 m!5773844))

(assert (=> d!1533528 m!5773846))

(declare-fun m!5774010 () Bool)

(assert (=> d!1533528 m!5774010))

(assert (=> d!1533528 m!5773896))

(assert (=> b!4793170 m!5773840))

(assert (=> b!4793002 d!1533528))

(assert (=> b!4793002 d!1533522))

(assert (=> b!4793002 d!1533524))

(declare-fun d!1533530 () Bool)

(declare-fun choose!34526 (Hashable!6926 K!15804) (_ BitVec 64))

(assert (=> d!1533530 (= (hash!4963 hashF!1559 key!5896) (choose!34526 hashF!1559 key!5896))))

(declare-fun bs!1154896 () Bool)

(assert (= bs!1154896 d!1533530))

(declare-fun m!5774012 () Bool)

(assert (=> bs!1154896 m!5774012))

(assert (=> d!1533438 d!1533530))

(declare-fun d!1533532 () Bool)

(declare-fun res!2037415 () Bool)

(declare-fun e!2992830 () Bool)

(assert (=> d!1533532 (=> res!2037415 e!2992830)))

(assert (=> d!1533532 (= res!2037415 (and ((_ is Cons!54227) (toList!6931 lm!2473)) (= (_1!31731 (h!60653 (toList!6931 lm!2473))) lt!1951425)))))

(assert (=> d!1533532 (= (containsKey!3954 (toList!6931 lm!2473) lt!1951425) e!2992830)))

(declare-fun b!4793187 () Bool)

(declare-fun e!2992831 () Bool)

(assert (=> b!4793187 (= e!2992830 e!2992831)))

(declare-fun res!2037416 () Bool)

(assert (=> b!4793187 (=> (not res!2037416) (not e!2992831))))

(assert (=> b!4793187 (= res!2037416 (and (or (not ((_ is Cons!54227) (toList!6931 lm!2473))) (bvsle (_1!31731 (h!60653 (toList!6931 lm!2473))) lt!1951425)) ((_ is Cons!54227) (toList!6931 lm!2473)) (bvslt (_1!31731 (h!60653 (toList!6931 lm!2473))) lt!1951425)))))

(declare-fun b!4793188 () Bool)

(assert (=> b!4793188 (= e!2992831 (containsKey!3954 (t!361801 (toList!6931 lm!2473)) lt!1951425))))

(assert (= (and d!1533532 (not res!2037415)) b!4793187))

(assert (= (and b!4793187 res!2037416) b!4793188))

(declare-fun m!5774066 () Bool)

(assert (=> b!4793188 m!5774066))

(assert (=> d!1533428 d!1533532))

(declare-fun d!1533544 () Bool)

(declare-fun lt!1951619 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9708 (List!54350) (InoxSet tuple2!56872))

(assert (=> d!1533544 (= lt!1951619 (select (content!9708 (_2!31731 (h!60653 (toList!6931 lm!2473)))) (tuple2!56873 key!5896 value!3111)))))

(declare-fun e!2992843 () Bool)

(assert (=> d!1533544 (= lt!1951619 e!2992843)))

(declare-fun res!2037428 () Bool)

(assert (=> d!1533544 (=> (not res!2037428) (not e!2992843))))

(assert (=> d!1533544 (= res!2037428 ((_ is Cons!54226) (_2!31731 (h!60653 (toList!6931 lm!2473)))))))

(assert (=> d!1533544 (= (contains!17846 (_2!31731 (h!60653 (toList!6931 lm!2473))) (tuple2!56873 key!5896 value!3111)) lt!1951619)))

(declare-fun b!4793199 () Bool)

(declare-fun e!2992842 () Bool)

(assert (=> b!4793199 (= e!2992843 e!2992842)))

(declare-fun res!2037427 () Bool)

(assert (=> b!4793199 (=> res!2037427 e!2992842)))

(assert (=> b!4793199 (= res!2037427 (= (h!60652 (_2!31731 (h!60653 (toList!6931 lm!2473)))) (tuple2!56873 key!5896 value!3111)))))

(declare-fun b!4793200 () Bool)

(assert (=> b!4793200 (= e!2992842 (contains!17846 (t!361800 (_2!31731 (h!60653 (toList!6931 lm!2473)))) (tuple2!56873 key!5896 value!3111)))))

(assert (= (and d!1533544 res!2037428) b!4793199))

(assert (= (and b!4793199 (not res!2037427)) b!4793200))

(declare-fun m!5774074 () Bool)

(assert (=> d!1533544 m!5774074))

(declare-fun m!5774076 () Bool)

(assert (=> d!1533544 m!5774076))

(declare-fun m!5774078 () Bool)

(assert (=> b!4793200 m!5774078))

(assert (=> b!4792886 d!1533544))

(declare-fun d!1533548 () Bool)

(assert (=> d!1533548 (= (tail!9271 (toList!6931 lm!2473)) (t!361801 (toList!6931 lm!2473)))))

(assert (=> d!1533370 d!1533548))

(declare-fun d!1533550 () Bool)

(declare-fun lt!1951625 () Bool)

(declare-fun content!9709 (List!54351) (InoxSet tuple2!56874))

(assert (=> d!1533550 (= lt!1951625 (select (content!9709 (toList!6931 lm!2473)) (h!60653 (toList!6931 lm!2473))))))

(declare-fun e!2992852 () Bool)

(assert (=> d!1533550 (= lt!1951625 e!2992852)))

(declare-fun res!2037443 () Bool)

(assert (=> d!1533550 (=> (not res!2037443) (not e!2992852))))

(assert (=> d!1533550 (= res!2037443 ((_ is Cons!54227) (toList!6931 lm!2473)))))

(assert (=> d!1533550 (= (contains!17847 (toList!6931 lm!2473) (h!60653 (toList!6931 lm!2473))) lt!1951625)))

(declare-fun b!4793216 () Bool)

(declare-fun e!2992851 () Bool)

(assert (=> b!4793216 (= e!2992852 e!2992851)))

(declare-fun res!2037442 () Bool)

(assert (=> b!4793216 (=> res!2037442 e!2992851)))

(assert (=> b!4793216 (= res!2037442 (= (h!60653 (toList!6931 lm!2473)) (h!60653 (toList!6931 lm!2473))))))

(declare-fun b!4793217 () Bool)

(assert (=> b!4793217 (= e!2992851 (contains!17847 (t!361801 (toList!6931 lm!2473)) (h!60653 (toList!6931 lm!2473))))))

(assert (= (and d!1533550 res!2037443) b!4793216))

(assert (= (and b!4793216 (not res!2037442)) b!4793217))

(declare-fun m!5774094 () Bool)

(assert (=> d!1533550 m!5774094))

(declare-fun m!5774096 () Bool)

(assert (=> d!1533550 m!5774096))

(declare-fun m!5774098 () Bool)

(assert (=> b!4793217 m!5774098))

(assert (=> b!4792898 d!1533550))

(declare-fun d!1533554 () Bool)

(assert (=> d!1533554 (isDefined!10244 (getValueByKey!2351 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))) key!5896))))

(declare-fun lt!1951628 () Unit!139971)

(declare-fun choose!34527 (List!54350 K!15804) Unit!139971)

(assert (=> d!1533554 (= lt!1951628 (choose!34527 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))) key!5896))))

(assert (=> d!1533554 (invariantList!1730 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))))))

(assert (=> d!1533554 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2143 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))) key!5896) lt!1951628)))

(declare-fun bs!1154904 () Bool)

(assert (= bs!1154904 d!1533554))

(assert (=> bs!1154904 m!5773814))

(assert (=> bs!1154904 m!5773814))

(assert (=> bs!1154904 m!5773816))

(declare-fun m!5774100 () Bool)

(assert (=> bs!1154904 m!5774100))

(declare-fun m!5774102 () Bool)

(assert (=> bs!1154904 m!5774102))

(assert (=> b!4792984 d!1533554))

(declare-fun d!1533556 () Bool)

(declare-fun isEmpty!29451 (Option!13102) Bool)

(assert (=> d!1533556 (= (isDefined!10244 (getValueByKey!2351 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))) key!5896)) (not (isEmpty!29451 (getValueByKey!2351 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))) key!5896))))))

(declare-fun bs!1154905 () Bool)

(assert (= bs!1154905 d!1533556))

(assert (=> bs!1154905 m!5773814))

(declare-fun m!5774104 () Bool)

(assert (=> bs!1154905 m!5774104))

(assert (=> b!4792984 d!1533556))

(declare-fun d!1533558 () Bool)

(declare-fun c!816935 () Bool)

(assert (=> d!1533558 (= c!816935 (and ((_ is Cons!54226) (toList!6932 (extractMap!2453 (toList!6931 lm!2473)))) (= (_1!31730 (h!60652 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))))) key!5896)))))

(declare-fun e!2992857 () Option!13102)

(assert (=> d!1533558 (= (getValueByKey!2351 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))) key!5896) e!2992857)))

(declare-fun b!4793226 () Bool)

(assert (=> b!4793226 (= e!2992857 (Some!13101 (_2!31730 (h!60652 (toList!6932 (extractMap!2453 (toList!6931 lm!2473)))))))))

(declare-fun b!4793229 () Bool)

(declare-fun e!2992858 () Option!13102)

(assert (=> b!4793229 (= e!2992858 None!13101)))

(declare-fun b!4793227 () Bool)

(assert (=> b!4793227 (= e!2992857 e!2992858)))

(declare-fun c!816936 () Bool)

(assert (=> b!4793227 (= c!816936 (and ((_ is Cons!54226) (toList!6932 (extractMap!2453 (toList!6931 lm!2473)))) (not (= (_1!31730 (h!60652 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))))) key!5896))))))

(declare-fun b!4793228 () Bool)

(assert (=> b!4793228 (= e!2992858 (getValueByKey!2351 (t!361800 (toList!6932 (extractMap!2453 (toList!6931 lm!2473)))) key!5896))))

(assert (= (and d!1533558 c!816935) b!4793226))

(assert (= (and d!1533558 (not c!816935)) b!4793227))

(assert (= (and b!4793227 c!816936) b!4793228))

(assert (= (and b!4793227 (not c!816936)) b!4793229))

(declare-fun m!5774106 () Bool)

(assert (=> b!4793228 m!5774106))

(assert (=> b!4792984 d!1533558))

(declare-fun d!1533560 () Bool)

(assert (=> d!1533560 (contains!17848 (getKeysList!1076 (toList!6932 (extractMap!2453 (toList!6931 lm!2473)))) key!5896)))

(declare-fun lt!1951631 () Unit!139971)

(declare-fun choose!34528 (List!54350 K!15804) Unit!139971)

(assert (=> d!1533560 (= lt!1951631 (choose!34528 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))) key!5896))))

(assert (=> d!1533560 (invariantList!1730 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))))))

(assert (=> d!1533560 (= (lemmaInListThenGetKeysListContains!1071 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))) key!5896) lt!1951631)))

(declare-fun bs!1154906 () Bool)

(assert (= bs!1154906 d!1533560))

(assert (=> bs!1154906 m!5773826))

(assert (=> bs!1154906 m!5773826))

(declare-fun m!5774108 () Bool)

(assert (=> bs!1154906 m!5774108))

(declare-fun m!5774110 () Bool)

(assert (=> bs!1154906 m!5774110))

(assert (=> bs!1154906 m!5774102))

(assert (=> b!4792984 d!1533560))

(declare-fun d!1533562 () Bool)

(assert (=> d!1533562 (dynLambda!22060 lambda!230647 (tuple2!56873 key!5896 value!3111))))

(assert (=> d!1533562 true))

(declare-fun _$7!2398 () Unit!139971)

(assert (=> d!1533562 (= (choose!34520 (_2!31731 (h!60653 (toList!6931 lm!2473))) lambda!230647 (tuple2!56873 key!5896 value!3111)) _$7!2398)))

(declare-fun b_lambda!186737 () Bool)

(assert (=> (not b_lambda!186737) (not d!1533562)))

(declare-fun bs!1154907 () Bool)

(assert (= bs!1154907 d!1533562))

(assert (=> bs!1154907 m!5773720))

(assert (=> d!1533376 d!1533562))

(declare-fun d!1533564 () Bool)

(declare-fun res!2037448 () Bool)

(declare-fun e!2992869 () Bool)

(assert (=> d!1533564 (=> res!2037448 e!2992869)))

(assert (=> d!1533564 (= res!2037448 ((_ is Nil!54226) (_2!31731 (h!60653 (toList!6931 lm!2473)))))))

(assert (=> d!1533564 (= (forall!12257 (_2!31731 (h!60653 (toList!6931 lm!2473))) lambda!230647) e!2992869)))

(declare-fun b!4793246 () Bool)

(declare-fun e!2992870 () Bool)

(assert (=> b!4793246 (= e!2992869 e!2992870)))

(declare-fun res!2037449 () Bool)

(assert (=> b!4793246 (=> (not res!2037449) (not e!2992870))))

(assert (=> b!4793246 (= res!2037449 (dynLambda!22060 lambda!230647 (h!60652 (_2!31731 (h!60653 (toList!6931 lm!2473))))))))

(declare-fun b!4793247 () Bool)

(assert (=> b!4793247 (= e!2992870 (forall!12257 (t!361800 (_2!31731 (h!60653 (toList!6931 lm!2473)))) lambda!230647))))

(assert (= (and d!1533564 (not res!2037448)) b!4793246))

(assert (= (and b!4793246 res!2037449) b!4793247))

(declare-fun b_lambda!186739 () Bool)

(assert (=> (not b_lambda!186739) (not b!4793246)))

(declare-fun m!5774112 () Bool)

(assert (=> b!4793246 m!5774112))

(declare-fun m!5774114 () Bool)

(assert (=> b!4793247 m!5774114))

(assert (=> d!1533376 d!1533564))

(assert (=> b!4792983 d!1533556))

(assert (=> b!4792983 d!1533558))

(declare-fun d!1533566 () Bool)

(declare-fun res!2037450 () Bool)

(declare-fun e!2992871 () Bool)

(assert (=> d!1533566 (=> res!2037450 e!2992871)))

(assert (=> d!1533566 (= res!2037450 ((_ is Nil!54227) (t!361801 (toList!6931 lm!2473))))))

(assert (=> d!1533566 (= (forall!12255 (t!361801 (toList!6931 lm!2473)) lambda!230645) e!2992871)))

(declare-fun b!4793248 () Bool)

(declare-fun e!2992872 () Bool)

(assert (=> b!4793248 (= e!2992871 e!2992872)))

(declare-fun res!2037451 () Bool)

(assert (=> b!4793248 (=> (not res!2037451) (not e!2992872))))

(assert (=> b!4793248 (= res!2037451 (dynLambda!22059 lambda!230645 (h!60653 (t!361801 (toList!6931 lm!2473)))))))

(declare-fun b!4793249 () Bool)

(assert (=> b!4793249 (= e!2992872 (forall!12255 (t!361801 (t!361801 (toList!6931 lm!2473))) lambda!230645))))

(assert (= (and d!1533566 (not res!2037450)) b!4793248))

(assert (= (and b!4793248 res!2037451) b!4793249))

(declare-fun b_lambda!186741 () Bool)

(assert (=> (not b_lambda!186741) (not b!4793248)))

(declare-fun m!5774116 () Bool)

(assert (=> b!4793248 m!5774116))

(declare-fun m!5774118 () Bool)

(assert (=> b!4793249 m!5774118))

(assert (=> b!4793051 d!1533566))

(declare-fun d!1533568 () Bool)

(declare-fun res!2037462 () Bool)

(declare-fun e!2992879 () Bool)

(assert (=> d!1533568 (=> res!2037462 e!2992879)))

(assert (=> d!1533568 (= res!2037462 (and ((_ is Cons!54226) (toList!6932 (extractMap!2453 (toList!6931 lm!2473)))) (= (_1!31730 (h!60652 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))))) key!5896)))))

(assert (=> d!1533568 (= (containsKey!3953 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))) key!5896) e!2992879)))

(declare-fun b!4793260 () Bool)

(declare-fun e!2992880 () Bool)

(assert (=> b!4793260 (= e!2992879 e!2992880)))

(declare-fun res!2037463 () Bool)

(assert (=> b!4793260 (=> (not res!2037463) (not e!2992880))))

(assert (=> b!4793260 (= res!2037463 ((_ is Cons!54226) (toList!6932 (extractMap!2453 (toList!6931 lm!2473)))))))

(declare-fun b!4793261 () Bool)

(assert (=> b!4793261 (= e!2992880 (containsKey!3953 (t!361800 (toList!6932 (extractMap!2453 (toList!6931 lm!2473)))) key!5896))))

(assert (= (and d!1533568 (not res!2037462)) b!4793260))

(assert (= (and b!4793260 res!2037463) b!4793261))

(declare-fun m!5774120 () Bool)

(assert (=> b!4793261 m!5774120))

(assert (=> b!4792982 d!1533568))

(declare-fun d!1533570 () Bool)

(assert (=> d!1533570 (containsKey!3953 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))) key!5896)))

(declare-fun lt!1951648 () Unit!139971)

(declare-fun choose!34529 (List!54350 K!15804) Unit!139971)

(assert (=> d!1533570 (= lt!1951648 (choose!34529 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))) key!5896))))

(assert (=> d!1533570 (invariantList!1730 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))))))

(assert (=> d!1533570 (= (lemmaInGetKeysListThenContainsKey!1076 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))) key!5896) lt!1951648)))

(declare-fun bs!1154908 () Bool)

(assert (= bs!1154908 d!1533570))

(assert (=> bs!1154908 m!5773822))

(declare-fun m!5774122 () Bool)

(assert (=> bs!1154908 m!5774122))

(assert (=> bs!1154908 m!5774102))

(assert (=> b!4792982 d!1533570))

(declare-fun d!1533572 () Bool)

(declare-fun res!2037468 () Bool)

(declare-fun e!2992885 () Bool)

(assert (=> d!1533572 (=> res!2037468 e!2992885)))

(assert (=> d!1533572 (= res!2037468 (not ((_ is Cons!54226) (_2!31731 (h!60653 (toList!6931 lt!1951421))))))))

(assert (=> d!1533572 (= (noDuplicateKeys!2339 (_2!31731 (h!60653 (toList!6931 lt!1951421)))) e!2992885)))

(declare-fun b!4793266 () Bool)

(declare-fun e!2992886 () Bool)

(assert (=> b!4793266 (= e!2992885 e!2992886)))

(declare-fun res!2037469 () Bool)

(assert (=> b!4793266 (=> (not res!2037469) (not e!2992886))))

(assert (=> b!4793266 (= res!2037469 (not (containsKey!3950 (t!361800 (_2!31731 (h!60653 (toList!6931 lt!1951421)))) (_1!31730 (h!60652 (_2!31731 (h!60653 (toList!6931 lt!1951421))))))))))

(declare-fun b!4793267 () Bool)

(assert (=> b!4793267 (= e!2992886 (noDuplicateKeys!2339 (t!361800 (_2!31731 (h!60653 (toList!6931 lt!1951421))))))))

(assert (= (and d!1533572 (not res!2037468)) b!4793266))

(assert (= (and b!4793266 res!2037469) b!4793267))

(declare-fun m!5774124 () Bool)

(assert (=> b!4793266 m!5774124))

(declare-fun m!5774126 () Bool)

(assert (=> b!4793267 m!5774126))

(assert (=> bs!1154878 d!1533572))

(assert (=> d!1533432 d!1533430))

(declare-fun d!1533574 () Bool)

(assert (=> d!1533574 (containsKeyBiggerList!568 (toList!6931 lm!2473) key!5896)))

(assert (=> d!1533574 true))

(declare-fun _$33!832 () Unit!139971)

(assert (=> d!1533574 (= (choose!34522 lm!2473 key!5896 hashF!1559) _$33!832)))

(declare-fun bs!1154910 () Bool)

(assert (= bs!1154910 d!1533574))

(assert (=> bs!1154910 m!5773642))

(assert (=> d!1533432 d!1533574))

(declare-fun d!1533576 () Bool)

(declare-fun res!2037473 () Bool)

(declare-fun e!2992891 () Bool)

(assert (=> d!1533576 (=> res!2037473 e!2992891)))

(assert (=> d!1533576 (= res!2037473 ((_ is Nil!54227) (toList!6931 lm!2473)))))

(assert (=> d!1533576 (= (forall!12255 (toList!6931 lm!2473) lambda!230670) e!2992891)))

(declare-fun b!4793279 () Bool)

(declare-fun e!2992892 () Bool)

(assert (=> b!4793279 (= e!2992891 e!2992892)))

(declare-fun res!2037474 () Bool)

(assert (=> b!4793279 (=> (not res!2037474) (not e!2992892))))

(assert (=> b!4793279 (= res!2037474 (dynLambda!22059 lambda!230670 (h!60653 (toList!6931 lm!2473))))))

(declare-fun b!4793280 () Bool)

(assert (=> b!4793280 (= e!2992892 (forall!12255 (t!361801 (toList!6931 lm!2473)) lambda!230670))))

(assert (= (and d!1533576 (not res!2037473)) b!4793279))

(assert (= (and b!4793279 res!2037474) b!4793280))

(declare-fun b_lambda!186743 () Bool)

(assert (=> (not b_lambda!186743) (not b!4793279)))

(declare-fun m!5774128 () Bool)

(assert (=> b!4793279 m!5774128))

(declare-fun m!5774130 () Bool)

(assert (=> b!4793280 m!5774130))

(assert (=> d!1533432 d!1533576))

(declare-fun bs!1154937 () Bool)

(declare-fun b!4793345 () Bool)

(assert (= bs!1154937 (and b!4793345 b!4792821)))

(declare-fun lambda!230756 () Int)

(assert (=> bs!1154937 (not (= lambda!230756 lambda!230647))))

(assert (=> b!4793345 true))

(declare-fun bs!1154938 () Bool)

(declare-fun b!4793344 () Bool)

(assert (= bs!1154938 (and b!4793344 b!4792821)))

(declare-fun lambda!230757 () Int)

(assert (=> bs!1154938 (not (= lambda!230757 lambda!230647))))

(declare-fun bs!1154939 () Bool)

(assert (= bs!1154939 (and b!4793344 b!4793345)))

(assert (=> bs!1154939 (= lambda!230757 lambda!230756)))

(assert (=> b!4793344 true))

(declare-fun lambda!230758 () Int)

(assert (=> bs!1154938 (not (= lambda!230758 lambda!230647))))

(declare-fun lt!1951730 () ListMap!6403)

(assert (=> bs!1154939 (= (= lt!1951730 (extractMap!2453 (t!361801 (toList!6931 lm!2473)))) (= lambda!230758 lambda!230756))))

(assert (=> b!4793344 (= (= lt!1951730 (extractMap!2453 (t!361801 (toList!6931 lm!2473)))) (= lambda!230758 lambda!230757))))

(assert (=> b!4793344 true))

(declare-fun bs!1154940 () Bool)

(declare-fun d!1533578 () Bool)

(assert (= bs!1154940 (and d!1533578 b!4792821)))

(declare-fun lambda!230759 () Int)

(assert (=> bs!1154940 (not (= lambda!230759 lambda!230647))))

(declare-fun bs!1154941 () Bool)

(assert (= bs!1154941 (and d!1533578 b!4793345)))

(declare-fun lt!1951715 () ListMap!6403)

(assert (=> bs!1154941 (= (= lt!1951715 (extractMap!2453 (t!361801 (toList!6931 lm!2473)))) (= lambda!230759 lambda!230756))))

(declare-fun bs!1154942 () Bool)

(assert (= bs!1154942 (and d!1533578 b!4793344)))

(assert (=> bs!1154942 (= (= lt!1951715 (extractMap!2453 (t!361801 (toList!6931 lm!2473)))) (= lambda!230759 lambda!230757))))

(assert (=> bs!1154942 (= (= lt!1951715 lt!1951730) (= lambda!230759 lambda!230758))))

(assert (=> d!1533578 true))

(declare-fun e!2992942 () Bool)

(assert (=> d!1533578 e!2992942))

(declare-fun res!2037512 () Bool)

(assert (=> d!1533578 (=> (not res!2037512) (not e!2992942))))

(assert (=> d!1533578 (= res!2037512 (forall!12257 (_2!31731 (h!60653 (toList!6931 lm!2473))) lambda!230759))))

(declare-fun e!2992941 () ListMap!6403)

(assert (=> d!1533578 (= lt!1951715 e!2992941)))

(declare-fun c!816955 () Bool)

(assert (=> d!1533578 (= c!816955 ((_ is Nil!54226) (_2!31731 (h!60653 (toList!6931 lm!2473)))))))

(assert (=> d!1533578 (noDuplicateKeys!2339 (_2!31731 (h!60653 (toList!6931 lm!2473))))))

(assert (=> d!1533578 (= (addToMapMapFromBucket!1707 (_2!31731 (h!60653 (toList!6931 lm!2473))) (extractMap!2453 (t!361801 (toList!6931 lm!2473)))) lt!1951715)))

(declare-fun b!4793343 () Bool)

(assert (=> b!4793343 (= e!2992942 (invariantList!1730 (toList!6932 lt!1951715)))))

(declare-fun call!335063 () Bool)

(declare-fun bm!335057 () Bool)

(assert (=> bm!335057 (= call!335063 (forall!12257 (toList!6932 (extractMap!2453 (t!361801 (toList!6931 lm!2473)))) (ite c!816955 lambda!230756 lambda!230758)))))

(declare-fun bm!335058 () Bool)

(declare-fun call!335064 () Unit!139971)

(declare-fun lemmaContainsAllItsOwnKeys!942 (ListMap!6403) Unit!139971)

(assert (=> bm!335058 (= call!335064 (lemmaContainsAllItsOwnKeys!942 (extractMap!2453 (t!361801 (toList!6931 lm!2473)))))))

(assert (=> b!4793344 (= e!2992941 lt!1951730)))

(declare-fun lt!1951729 () ListMap!6403)

(declare-fun +!2486 (ListMap!6403 tuple2!56872) ListMap!6403)

(assert (=> b!4793344 (= lt!1951729 (+!2486 (extractMap!2453 (t!361801 (toList!6931 lm!2473))) (h!60652 (_2!31731 (h!60653 (toList!6931 lm!2473))))))))

(assert (=> b!4793344 (= lt!1951730 (addToMapMapFromBucket!1707 (t!361800 (_2!31731 (h!60653 (toList!6931 lm!2473)))) (+!2486 (extractMap!2453 (t!361801 (toList!6931 lm!2473))) (h!60652 (_2!31731 (h!60653 (toList!6931 lm!2473)))))))))

(declare-fun lt!1951719 () Unit!139971)

(assert (=> b!4793344 (= lt!1951719 call!335064)))

(assert (=> b!4793344 (forall!12257 (toList!6932 (extractMap!2453 (t!361801 (toList!6931 lm!2473)))) lambda!230757)))

(declare-fun lt!1951716 () Unit!139971)

(assert (=> b!4793344 (= lt!1951716 lt!1951719)))

(assert (=> b!4793344 (forall!12257 (toList!6932 lt!1951729) lambda!230758)))

(declare-fun lt!1951724 () Unit!139971)

(declare-fun Unit!139995 () Unit!139971)

(assert (=> b!4793344 (= lt!1951724 Unit!139995)))

(assert (=> b!4793344 (forall!12257 (t!361800 (_2!31731 (h!60653 (toList!6931 lm!2473)))) lambda!230758)))

(declare-fun lt!1951718 () Unit!139971)

(declare-fun Unit!139996 () Unit!139971)

(assert (=> b!4793344 (= lt!1951718 Unit!139996)))

(declare-fun lt!1951727 () Unit!139971)

(declare-fun Unit!139997 () Unit!139971)

(assert (=> b!4793344 (= lt!1951727 Unit!139997)))

(declare-fun lt!1951732 () Unit!139971)

(assert (=> b!4793344 (= lt!1951732 (forallContained!4162 (toList!6932 lt!1951729) lambda!230758 (h!60652 (_2!31731 (h!60653 (toList!6931 lm!2473))))))))

(assert (=> b!4793344 (contains!17841 lt!1951729 (_1!31730 (h!60652 (_2!31731 (h!60653 (toList!6931 lm!2473))))))))

(declare-fun lt!1951714 () Unit!139971)

(declare-fun Unit!139998 () Unit!139971)

(assert (=> b!4793344 (= lt!1951714 Unit!139998)))

(assert (=> b!4793344 (contains!17841 lt!1951730 (_1!31730 (h!60652 (_2!31731 (h!60653 (toList!6931 lm!2473))))))))

(declare-fun lt!1951722 () Unit!139971)

(declare-fun Unit!139999 () Unit!139971)

(assert (=> b!4793344 (= lt!1951722 Unit!139999)))

(declare-fun call!335062 () Bool)

(assert (=> b!4793344 call!335062))

(declare-fun lt!1951723 () Unit!139971)

(declare-fun Unit!140000 () Unit!139971)

(assert (=> b!4793344 (= lt!1951723 Unit!140000)))

(assert (=> b!4793344 (forall!12257 (toList!6932 lt!1951729) lambda!230758)))

(declare-fun lt!1951720 () Unit!139971)

(declare-fun Unit!140001 () Unit!139971)

(assert (=> b!4793344 (= lt!1951720 Unit!140001)))

(declare-fun lt!1951712 () Unit!139971)

(declare-fun Unit!140002 () Unit!139971)

(assert (=> b!4793344 (= lt!1951712 Unit!140002)))

(declare-fun lt!1951731 () Unit!139971)

(declare-fun addForallContainsKeyThenBeforeAdding!941 (ListMap!6403 ListMap!6403 K!15804 V!16050) Unit!139971)

(assert (=> b!4793344 (= lt!1951731 (addForallContainsKeyThenBeforeAdding!941 (extractMap!2453 (t!361801 (toList!6931 lm!2473))) lt!1951730 (_1!31730 (h!60652 (_2!31731 (h!60653 (toList!6931 lm!2473))))) (_2!31730 (h!60652 (_2!31731 (h!60653 (toList!6931 lm!2473)))))))))

(assert (=> b!4793344 (forall!12257 (toList!6932 (extractMap!2453 (t!361801 (toList!6931 lm!2473)))) lambda!230758)))

(declare-fun lt!1951713 () Unit!139971)

(assert (=> b!4793344 (= lt!1951713 lt!1951731)))

(assert (=> b!4793344 (forall!12257 (toList!6932 (extractMap!2453 (t!361801 (toList!6931 lm!2473)))) lambda!230758)))

(declare-fun lt!1951717 () Unit!139971)

(declare-fun Unit!140003 () Unit!139971)

(assert (=> b!4793344 (= lt!1951717 Unit!140003)))

(declare-fun res!2037511 () Bool)

(assert (=> b!4793344 (= res!2037511 (forall!12257 (_2!31731 (h!60653 (toList!6931 lm!2473))) lambda!230758))))

(declare-fun e!2992940 () Bool)

(assert (=> b!4793344 (=> (not res!2037511) (not e!2992940))))

(assert (=> b!4793344 e!2992940))

(declare-fun lt!1951726 () Unit!139971)

(declare-fun Unit!140004 () Unit!139971)

(assert (=> b!4793344 (= lt!1951726 Unit!140004)))

(declare-fun bm!335059 () Bool)

(assert (=> bm!335059 (= call!335062 (forall!12257 (ite c!816955 (toList!6932 (extractMap!2453 (t!361801 (toList!6931 lm!2473)))) (_2!31731 (h!60653 (toList!6931 lm!2473)))) (ite c!816955 lambda!230756 lambda!230758)))))

(assert (=> b!4793345 (= e!2992941 (extractMap!2453 (t!361801 (toList!6931 lm!2473))))))

(declare-fun lt!1951728 () Unit!139971)

(assert (=> b!4793345 (= lt!1951728 call!335064)))

(assert (=> b!4793345 call!335062))

(declare-fun lt!1951721 () Unit!139971)

(assert (=> b!4793345 (= lt!1951721 lt!1951728)))

(assert (=> b!4793345 call!335063))

(declare-fun lt!1951725 () Unit!139971)

(declare-fun Unit!140005 () Unit!139971)

(assert (=> b!4793345 (= lt!1951725 Unit!140005)))

(declare-fun b!4793346 () Bool)

(declare-fun res!2037513 () Bool)

(assert (=> b!4793346 (=> (not res!2037513) (not e!2992942))))

(assert (=> b!4793346 (= res!2037513 (forall!12257 (toList!6932 (extractMap!2453 (t!361801 (toList!6931 lm!2473)))) lambda!230759))))

(declare-fun b!4793347 () Bool)

(assert (=> b!4793347 (= e!2992940 call!335063)))

(assert (= (and d!1533578 c!816955) b!4793345))

(assert (= (and d!1533578 (not c!816955)) b!4793344))

(assert (= (and b!4793344 res!2037511) b!4793347))

(assert (= (or b!4793345 b!4793347) bm!335057))

(assert (= (or b!4793345 b!4793344) bm!335059))

(assert (= (or b!4793345 b!4793344) bm!335058))

(assert (= (and d!1533578 res!2037512) b!4793346))

(assert (= (and b!4793346 res!2037513) b!4793343))

(declare-fun m!5774220 () Bool)

(assert (=> b!4793344 m!5774220))

(declare-fun m!5774222 () Bool)

(assert (=> b!4793344 m!5774222))

(declare-fun m!5774224 () Bool)

(assert (=> b!4793344 m!5774224))

(declare-fun m!5774226 () Bool)

(assert (=> b!4793344 m!5774226))

(assert (=> b!4793344 m!5773836))

(declare-fun m!5774228 () Bool)

(assert (=> b!4793344 m!5774228))

(assert (=> b!4793344 m!5774220))

(declare-fun m!5774230 () Bool)

(assert (=> b!4793344 m!5774230))

(declare-fun m!5774232 () Bool)

(assert (=> b!4793344 m!5774232))

(declare-fun m!5774234 () Bool)

(assert (=> b!4793344 m!5774234))

(assert (=> b!4793344 m!5773836))

(assert (=> b!4793344 m!5774232))

(declare-fun m!5774236 () Bool)

(assert (=> b!4793344 m!5774236))

(declare-fun m!5774238 () Bool)

(assert (=> b!4793344 m!5774238))

(assert (=> b!4793344 m!5774226))

(declare-fun m!5774240 () Bool)

(assert (=> b!4793344 m!5774240))

(declare-fun m!5774242 () Bool)

(assert (=> bm!335057 m!5774242))

(declare-fun m!5774244 () Bool)

(assert (=> d!1533578 m!5774244))

(assert (=> d!1533578 m!5773900))

(declare-fun m!5774246 () Bool)

(assert (=> b!4793346 m!5774246))

(declare-fun m!5774248 () Bool)

(assert (=> b!4793343 m!5774248))

(assert (=> bm!335058 m!5773836))

(declare-fun m!5774250 () Bool)

(assert (=> bm!335058 m!5774250))

(declare-fun m!5774252 () Bool)

(assert (=> bm!335059 m!5774252))

(assert (=> b!4792994 d!1533578))

(declare-fun bs!1154943 () Bool)

(declare-fun d!1533632 () Bool)

(assert (= bs!1154943 (and d!1533632 start!493598)))

(declare-fun lambda!230760 () Int)

(assert (=> bs!1154943 (= lambda!230760 lambda!230645)))

(declare-fun bs!1154944 () Bool)

(assert (= bs!1154944 (and d!1533632 d!1533390)))

(assert (=> bs!1154944 (not (= lambda!230760 lambda!230662))))

(declare-fun bs!1154945 () Bool)

(assert (= bs!1154945 (and d!1533632 d!1533394)))

(assert (=> bs!1154945 (not (= lambda!230760 lambda!230663))))

(declare-fun bs!1154946 () Bool)

(assert (= bs!1154946 (and d!1533632 d!1533432)))

(assert (=> bs!1154946 (= lambda!230760 lambda!230670)))

(declare-fun bs!1154947 () Bool)

(assert (= bs!1154947 (and d!1533632 d!1533426)))

(assert (=> bs!1154947 (= lambda!230760 lambda!230667)))

(declare-fun bs!1154948 () Bool)

(assert (= bs!1154948 (and d!1533632 b!4792821)))

(assert (=> bs!1154948 (not (= lambda!230760 lambda!230646))))

(declare-fun bs!1154949 () Bool)

(assert (= bs!1154949 (and d!1533632 d!1533434)))

(assert (=> bs!1154949 (= lambda!230760 lambda!230673)))

(declare-fun lt!1951733 () ListMap!6403)

(assert (=> d!1533632 (invariantList!1730 (toList!6932 lt!1951733))))

(declare-fun e!2992943 () ListMap!6403)

(assert (=> d!1533632 (= lt!1951733 e!2992943)))

(declare-fun c!816956 () Bool)

(assert (=> d!1533632 (= c!816956 ((_ is Cons!54227) (t!361801 (toList!6931 lm!2473))))))

(assert (=> d!1533632 (forall!12255 (t!361801 (toList!6931 lm!2473)) lambda!230760)))

(assert (=> d!1533632 (= (extractMap!2453 (t!361801 (toList!6931 lm!2473))) lt!1951733)))

(declare-fun b!4793350 () Bool)

(assert (=> b!4793350 (= e!2992943 (addToMapMapFromBucket!1707 (_2!31731 (h!60653 (t!361801 (toList!6931 lm!2473)))) (extractMap!2453 (t!361801 (t!361801 (toList!6931 lm!2473))))))))

(declare-fun b!4793351 () Bool)

(assert (=> b!4793351 (= e!2992943 (ListMap!6404 Nil!54226))))

(assert (= (and d!1533632 c!816956) b!4793350))

(assert (= (and d!1533632 (not c!816956)) b!4793351))

(declare-fun m!5774254 () Bool)

(assert (=> d!1533632 m!5774254))

(declare-fun m!5774256 () Bool)

(assert (=> d!1533632 m!5774256))

(declare-fun m!5774258 () Bool)

(assert (=> b!4793350 m!5774258))

(assert (=> b!4793350 m!5774258))

(declare-fun m!5774260 () Bool)

(assert (=> b!4793350 m!5774260))

(assert (=> b!4792994 d!1533632))

(declare-fun b!4793376 () Bool)

(assert (=> b!4793376 true))

(declare-fun bs!1154950 () Bool)

(declare-fun b!4793378 () Bool)

(assert (= bs!1154950 (and b!4793378 b!4793376)))

(declare-fun lambda!230770 () Int)

(declare-fun lambda!230769 () Int)

(assert (=> bs!1154950 (= (= (Cons!54226 (h!60652 (toList!6932 (extractMap!2453 (toList!6931 lm!2473)))) (t!361800 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))))) (t!361800 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))))) (= lambda!230770 lambda!230769))))

(assert (=> b!4793378 true))

(declare-fun bs!1154951 () Bool)

(declare-fun b!4793371 () Bool)

(assert (= bs!1154951 (and b!4793371 b!4793376)))

(declare-fun lambda!230771 () Int)

(assert (=> bs!1154951 (= (= (toList!6932 (extractMap!2453 (toList!6931 lm!2473))) (t!361800 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))))) (= lambda!230771 lambda!230769))))

(declare-fun bs!1154952 () Bool)

(assert (= bs!1154952 (and b!4793371 b!4793378)))

(assert (=> bs!1154952 (= (= (toList!6932 (extractMap!2453 (toList!6931 lm!2473))) (Cons!54226 (h!60652 (toList!6932 (extractMap!2453 (toList!6931 lm!2473)))) (t!361800 (toList!6932 (extractMap!2453 (toList!6931 lm!2473)))))) (= lambda!230771 lambda!230770))))

(assert (=> b!4793371 true))

(declare-fun b!4793370 () Bool)

(declare-fun e!2992954 () Unit!139971)

(declare-fun Unit!140006 () Unit!139971)

(assert (=> b!4793370 (= e!2992954 Unit!140006)))

(declare-fun res!2037521 () Bool)

(declare-fun e!2992955 () Bool)

(assert (=> b!4793371 (=> (not res!2037521) (not e!2992955))))

(declare-fun lt!1951750 () List!54353)

(declare-fun forall!12259 (List!54353 Int) Bool)

(assert (=> b!4793371 (= res!2037521 (forall!12259 lt!1951750 lambda!230771))))

(declare-fun lambda!230772 () Int)

(declare-fun b!4793372 () Bool)

(declare-fun content!9710 (List!54353) (InoxSet K!15804))

(declare-fun map!12243 (List!54350 Int) List!54353)

(assert (=> b!4793372 (= e!2992955 (= (content!9710 lt!1951750) (content!9710 (map!12243 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))) lambda!230772))))))

(declare-fun b!4793373 () Bool)

(declare-fun e!2992953 () List!54353)

(assert (=> b!4793373 (= e!2992953 Nil!54229)))

(declare-fun b!4793374 () Bool)

(assert (=> b!4793374 false))

(declare-fun e!2992952 () Unit!139971)

(declare-fun Unit!140007 () Unit!139971)

(assert (=> b!4793374 (= e!2992952 Unit!140007)))

(declare-fun b!4793375 () Bool)

(declare-fun res!2037520 () Bool)

(assert (=> b!4793375 (=> (not res!2037520) (not e!2992955))))

(declare-fun length!694 (List!54353) Int)

(declare-fun length!695 (List!54350) Int)

(assert (=> b!4793375 (= res!2037520 (= (length!694 lt!1951750) (length!695 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))))))))

(assert (=> b!4793376 false))

(declare-fun lt!1951753 () Unit!139971)

(declare-fun forallContained!4165 (List!54353 Int K!15804) Unit!139971)

(assert (=> b!4793376 (= lt!1951753 (forallContained!4165 (getKeysList!1076 (t!361800 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))))) lambda!230769 (_1!31730 (h!60652 (toList!6932 (extractMap!2453 (toList!6931 lm!2473)))))))))

(declare-fun Unit!140008 () Unit!139971)

(assert (=> b!4793376 (= e!2992954 Unit!140008)))

(declare-fun b!4793377 () Bool)

(declare-fun Unit!140009 () Unit!139971)

(assert (=> b!4793377 (= e!2992952 Unit!140009)))

(declare-fun d!1533634 () Bool)

(assert (=> d!1533634 e!2992955))

(declare-fun res!2037522 () Bool)

(assert (=> d!1533634 (=> (not res!2037522) (not e!2992955))))

(declare-fun noDuplicate!919 (List!54353) Bool)

(assert (=> d!1533634 (= res!2037522 (noDuplicate!919 lt!1951750))))

(assert (=> d!1533634 (= lt!1951750 e!2992953)))

(declare-fun c!816965 () Bool)

(assert (=> d!1533634 (= c!816965 ((_ is Cons!54226) (toList!6932 (extractMap!2453 (toList!6931 lm!2473)))))))

(assert (=> d!1533634 (invariantList!1730 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))))))

(assert (=> d!1533634 (= (getKeysList!1076 (toList!6932 (extractMap!2453 (toList!6931 lm!2473)))) lt!1951750)))

(assert (=> b!4793378 (= e!2992953 (Cons!54229 (_1!31730 (h!60652 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))))) (getKeysList!1076 (t!361800 (toList!6932 (extractMap!2453 (toList!6931 lm!2473)))))))))

(declare-fun c!816964 () Bool)

(assert (=> b!4793378 (= c!816964 (containsKey!3953 (t!361800 (toList!6932 (extractMap!2453 (toList!6931 lm!2473)))) (_1!31730 (h!60652 (toList!6932 (extractMap!2453 (toList!6931 lm!2473)))))))))

(declare-fun lt!1951751 () Unit!139971)

(assert (=> b!4793378 (= lt!1951751 e!2992952)))

(declare-fun c!816963 () Bool)

(assert (=> b!4793378 (= c!816963 (contains!17848 (getKeysList!1076 (t!361800 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))))) (_1!31730 (h!60652 (toList!6932 (extractMap!2453 (toList!6931 lm!2473)))))))))

(declare-fun lt!1951752 () Unit!139971)

(assert (=> b!4793378 (= lt!1951752 e!2992954)))

(declare-fun lt!1951754 () List!54353)

(assert (=> b!4793378 (= lt!1951754 (getKeysList!1076 (t!361800 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))))))))

(declare-fun lt!1951749 () Unit!139971)

(declare-fun lemmaForallContainsAddHeadPreserves!334 (List!54350 List!54353 tuple2!56872) Unit!139971)

(assert (=> b!4793378 (= lt!1951749 (lemmaForallContainsAddHeadPreserves!334 (t!361800 (toList!6932 (extractMap!2453 (toList!6931 lm!2473)))) lt!1951754 (h!60652 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))))))))

(assert (=> b!4793378 (forall!12259 lt!1951754 lambda!230770)))

(declare-fun lt!1951748 () Unit!139971)

(assert (=> b!4793378 (= lt!1951748 lt!1951749)))

(assert (= (and d!1533634 c!816965) b!4793378))

(assert (= (and d!1533634 (not c!816965)) b!4793373))

(assert (= (and b!4793378 c!816964) b!4793374))

(assert (= (and b!4793378 (not c!816964)) b!4793377))

(assert (= (and b!4793378 c!816963) b!4793376))

(assert (= (and b!4793378 (not c!816963)) b!4793370))

(assert (= (and d!1533634 res!2037522) b!4793375))

(assert (= (and b!4793375 res!2037520) b!4793371))

(assert (= (and b!4793371 res!2037521) b!4793372))

(declare-fun m!5774262 () Bool)

(assert (=> b!4793372 m!5774262))

(declare-fun m!5774264 () Bool)

(assert (=> b!4793372 m!5774264))

(assert (=> b!4793372 m!5774264))

(declare-fun m!5774266 () Bool)

(assert (=> b!4793372 m!5774266))

(declare-fun m!5774268 () Bool)

(assert (=> b!4793375 m!5774268))

(declare-fun m!5774270 () Bool)

(assert (=> b!4793375 m!5774270))

(declare-fun m!5774272 () Bool)

(assert (=> b!4793378 m!5774272))

(declare-fun m!5774274 () Bool)

(assert (=> b!4793378 m!5774274))

(declare-fun m!5774276 () Bool)

(assert (=> b!4793378 m!5774276))

(declare-fun m!5774278 () Bool)

(assert (=> b!4793378 m!5774278))

(declare-fun m!5774280 () Bool)

(assert (=> b!4793378 m!5774280))

(assert (=> b!4793378 m!5774276))

(declare-fun m!5774282 () Bool)

(assert (=> b!4793371 m!5774282))

(assert (=> b!4793376 m!5774276))

(assert (=> b!4793376 m!5774276))

(declare-fun m!5774284 () Bool)

(assert (=> b!4793376 m!5774284))

(declare-fun m!5774286 () Bool)

(assert (=> d!1533634 m!5774286))

(assert (=> d!1533634 m!5774102))

(assert (=> b!4792987 d!1533634))

(declare-fun d!1533636 () Bool)

(assert (=> d!1533636 (= (isDefined!10241 (getPair!898 (apply!12995 lm!2473 (hash!4961 hashF!1559 key!5896)) key!5896)) (not (isEmpty!29449 (getPair!898 (apply!12995 lm!2473 (hash!4961 hashF!1559 key!5896)) key!5896))))))

(declare-fun bs!1154953 () Bool)

(assert (= bs!1154953 d!1533636))

(assert (=> bs!1154953 m!5773862))

(declare-fun m!5774288 () Bool)

(assert (=> bs!1154953 m!5774288))

(assert (=> b!4793016 d!1533636))

(declare-fun b!4793381 () Bool)

(declare-fun e!2992959 () Bool)

(assert (=> b!4793381 (= e!2992959 (not (containsKey!3950 (apply!12995 lm!2473 (hash!4961 hashF!1559 key!5896)) key!5896)))))

(declare-fun b!4793382 () Bool)

(declare-fun res!2037523 () Bool)

(declare-fun e!2992956 () Bool)

(assert (=> b!4793382 (=> (not res!2037523) (not e!2992956))))

(declare-fun lt!1951755 () Option!13099)

(assert (=> b!4793382 (= res!2037523 (= (_1!31730 (get!18483 lt!1951755)) key!5896))))

(declare-fun b!4793383 () Bool)

(assert (=> b!4793383 (= e!2992956 (contains!17846 (apply!12995 lm!2473 (hash!4961 hashF!1559 key!5896)) (get!18483 lt!1951755)))))

(declare-fun b!4793384 () Bool)

(declare-fun e!2992957 () Bool)

(assert (=> b!4793384 (= e!2992957 e!2992956)))

(declare-fun res!2037524 () Bool)

(assert (=> b!4793384 (=> (not res!2037524) (not e!2992956))))

(assert (=> b!4793384 (= res!2037524 (isDefined!10241 lt!1951755))))

(declare-fun d!1533638 () Bool)

(assert (=> d!1533638 e!2992957))

(declare-fun res!2037525 () Bool)

(assert (=> d!1533638 (=> res!2037525 e!2992957)))

(assert (=> d!1533638 (= res!2037525 e!2992959)))

(declare-fun res!2037526 () Bool)

(assert (=> d!1533638 (=> (not res!2037526) (not e!2992959))))

(assert (=> d!1533638 (= res!2037526 (isEmpty!29449 lt!1951755))))

(declare-fun e!2992960 () Option!13099)

(assert (=> d!1533638 (= lt!1951755 e!2992960)))

(declare-fun c!816966 () Bool)

(assert (=> d!1533638 (= c!816966 (and ((_ is Cons!54226) (apply!12995 lm!2473 (hash!4961 hashF!1559 key!5896))) (= (_1!31730 (h!60652 (apply!12995 lm!2473 (hash!4961 hashF!1559 key!5896)))) key!5896)))))

(assert (=> d!1533638 (noDuplicateKeys!2339 (apply!12995 lm!2473 (hash!4961 hashF!1559 key!5896)))))

(assert (=> d!1533638 (= (getPair!898 (apply!12995 lm!2473 (hash!4961 hashF!1559 key!5896)) key!5896) lt!1951755)))

(declare-fun b!4793385 () Bool)

(declare-fun e!2992958 () Option!13099)

(assert (=> b!4793385 (= e!2992958 None!13098)))

(declare-fun b!4793386 () Bool)

(assert (=> b!4793386 (= e!2992960 e!2992958)))

(declare-fun c!816967 () Bool)

(assert (=> b!4793386 (= c!816967 ((_ is Cons!54226) (apply!12995 lm!2473 (hash!4961 hashF!1559 key!5896))))))

(declare-fun b!4793387 () Bool)

(assert (=> b!4793387 (= e!2992960 (Some!13098 (h!60652 (apply!12995 lm!2473 (hash!4961 hashF!1559 key!5896)))))))

(declare-fun b!4793388 () Bool)

(assert (=> b!4793388 (= e!2992958 (getPair!898 (t!361800 (apply!12995 lm!2473 (hash!4961 hashF!1559 key!5896))) key!5896))))

(assert (= (and d!1533638 c!816966) b!4793387))

(assert (= (and d!1533638 (not c!816966)) b!4793386))

(assert (= (and b!4793386 c!816967) b!4793388))

(assert (= (and b!4793386 (not c!816967)) b!4793385))

(assert (= (and d!1533638 res!2037526) b!4793381))

(assert (= (and d!1533638 (not res!2037525)) b!4793384))

(assert (= (and b!4793384 res!2037524) b!4793382))

(assert (= (and b!4793382 res!2037523) b!4793383))

(declare-fun m!5774290 () Bool)

(assert (=> d!1533638 m!5774290))

(assert (=> d!1533638 m!5773860))

(declare-fun m!5774292 () Bool)

(assert (=> d!1533638 m!5774292))

(declare-fun m!5774294 () Bool)

(assert (=> b!4793388 m!5774294))

(declare-fun m!5774296 () Bool)

(assert (=> b!4793382 m!5774296))

(declare-fun m!5774298 () Bool)

(assert (=> b!4793384 m!5774298))

(assert (=> b!4793381 m!5773860))

(declare-fun m!5774300 () Bool)

(assert (=> b!4793381 m!5774300))

(assert (=> b!4793383 m!5774296))

(assert (=> b!4793383 m!5773860))

(assert (=> b!4793383 m!5774296))

(declare-fun m!5774302 () Bool)

(assert (=> b!4793383 m!5774302))

(assert (=> b!4793016 d!1533638))

(declare-fun d!1533640 () Bool)

(assert (=> d!1533640 (= (apply!12995 lm!2473 (hash!4961 hashF!1559 key!5896)) (get!18484 (getValueByKey!2352 (toList!6931 lm!2473) (hash!4961 hashF!1559 key!5896))))))

(declare-fun bs!1154954 () Bool)

(assert (= bs!1154954 d!1533640))

(assert (=> bs!1154954 m!5773644))

(declare-fun m!5774304 () Bool)

(assert (=> bs!1154954 m!5774304))

(assert (=> bs!1154954 m!5774304))

(declare-fun m!5774306 () Bool)

(assert (=> bs!1154954 m!5774306))

(assert (=> b!4793016 d!1533640))

(assert (=> b!4793016 d!1533438))

(declare-fun d!1533642 () Bool)

(declare-fun res!2037527 () Bool)

(declare-fun e!2992961 () Bool)

(assert (=> d!1533642 (=> res!2037527 e!2992961)))

(assert (=> d!1533642 (= res!2037527 (and ((_ is Cons!54226) (apply!12995 lm!2473 lt!1951425)) (= (_1!31730 (h!60652 (apply!12995 lm!2473 lt!1951425))) key!5896)))))

(assert (=> d!1533642 (= (containsKey!3950 (apply!12995 lm!2473 lt!1951425) key!5896) e!2992961)))

(declare-fun b!4793389 () Bool)

(declare-fun e!2992962 () Bool)

(assert (=> b!4793389 (= e!2992961 e!2992962)))

(declare-fun res!2037528 () Bool)

(assert (=> b!4793389 (=> (not res!2037528) (not e!2992962))))

(assert (=> b!4793389 (= res!2037528 ((_ is Cons!54226) (apply!12995 lm!2473 lt!1951425)))))

(declare-fun b!4793390 () Bool)

(assert (=> b!4793390 (= e!2992962 (containsKey!3950 (t!361800 (apply!12995 lm!2473 lt!1951425)) key!5896))))

(assert (= (and d!1533642 (not res!2037527)) b!4793389))

(assert (= (and b!4793389 res!2037528) b!4793390))

(declare-fun m!5774308 () Bool)

(assert (=> b!4793390 m!5774308))

(assert (=> b!4793042 d!1533642))

(assert (=> d!1533402 d!1533568))

(declare-fun d!1533644 () Bool)

(declare-fun e!2992963 () Bool)

(assert (=> d!1533644 e!2992963))

(declare-fun res!2037529 () Bool)

(assert (=> d!1533644 (=> res!2037529 e!2992963)))

(declare-fun lt!1951758 () Bool)

(assert (=> d!1533644 (= res!2037529 (not lt!1951758))))

(declare-fun lt!1951759 () Bool)

(assert (=> d!1533644 (= lt!1951758 lt!1951759)))

(declare-fun lt!1951756 () Unit!139971)

(declare-fun e!2992964 () Unit!139971)

(assert (=> d!1533644 (= lt!1951756 e!2992964)))

(declare-fun c!816968 () Bool)

(assert (=> d!1533644 (= c!816968 lt!1951759)))

(assert (=> d!1533644 (= lt!1951759 (containsKey!3954 (toList!6931 lm!2473) (hash!4961 hashF!1559 key!5896)))))

(assert (=> d!1533644 (= (contains!17842 lm!2473 (hash!4961 hashF!1559 key!5896)) lt!1951758)))

(declare-fun b!4793391 () Bool)

(declare-fun lt!1951757 () Unit!139971)

(assert (=> b!4793391 (= e!2992964 lt!1951757)))

(assert (=> b!4793391 (= lt!1951757 (lemmaContainsKeyImpliesGetValueByKeyDefined!2144 (toList!6931 lm!2473) (hash!4961 hashF!1559 key!5896)))))

(assert (=> b!4793391 (isDefined!10245 (getValueByKey!2352 (toList!6931 lm!2473) (hash!4961 hashF!1559 key!5896)))))

(declare-fun b!4793392 () Bool)

(declare-fun Unit!140010 () Unit!139971)

(assert (=> b!4793392 (= e!2992964 Unit!140010)))

(declare-fun b!4793393 () Bool)

(assert (=> b!4793393 (= e!2992963 (isDefined!10245 (getValueByKey!2352 (toList!6931 lm!2473) (hash!4961 hashF!1559 key!5896))))))

(assert (= (and d!1533644 c!816968) b!4793391))

(assert (= (and d!1533644 (not c!816968)) b!4793392))

(assert (= (and d!1533644 (not res!2037529)) b!4793393))

(assert (=> d!1533644 m!5773644))

(declare-fun m!5774310 () Bool)

(assert (=> d!1533644 m!5774310))

(assert (=> b!4793391 m!5773644))

(declare-fun m!5774312 () Bool)

(assert (=> b!4793391 m!5774312))

(assert (=> b!4793391 m!5773644))

(assert (=> b!4793391 m!5774304))

(assert (=> b!4793391 m!5774304))

(declare-fun m!5774314 () Bool)

(assert (=> b!4793391 m!5774314))

(assert (=> b!4793393 m!5773644))

(assert (=> b!4793393 m!5774304))

(assert (=> b!4793393 m!5774304))

(assert (=> b!4793393 m!5774314))

(assert (=> d!1533434 d!1533644))

(assert (=> d!1533434 d!1533438))

(declare-fun d!1533646 () Bool)

(declare-fun e!2992967 () Bool)

(assert (=> d!1533646 e!2992967))

(declare-fun res!2037532 () Bool)

(assert (=> d!1533646 (=> (not res!2037532) (not e!2992967))))

(assert (=> d!1533646 (= res!2037532 (contains!17842 lm!2473 (hash!4961 hashF!1559 key!5896)))))

(assert (=> d!1533646 true))

(declare-fun _$5!214 () Unit!139971)

(assert (=> d!1533646 (= (choose!34523 lm!2473 key!5896 hashF!1559) _$5!214)))

(declare-fun b!4793396 () Bool)

(assert (=> b!4793396 (= e!2992967 (isDefined!10241 (getPair!898 (apply!12995 lm!2473 (hash!4961 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1533646 res!2037532) b!4793396))

(assert (=> d!1533646 m!5773644))

(assert (=> d!1533646 m!5773644))

(assert (=> d!1533646 m!5773854))

(assert (=> b!4793396 m!5773644))

(assert (=> b!4793396 m!5773644))

(assert (=> b!4793396 m!5773860))

(assert (=> b!4793396 m!5773860))

(assert (=> b!4793396 m!5773862))

(assert (=> b!4793396 m!5773862))

(assert (=> b!4793396 m!5773864))

(assert (=> d!1533434 d!1533646))

(declare-fun d!1533648 () Bool)

(declare-fun res!2037533 () Bool)

(declare-fun e!2992968 () Bool)

(assert (=> d!1533648 (=> res!2037533 e!2992968)))

(assert (=> d!1533648 (= res!2037533 ((_ is Nil!54227) (toList!6931 lm!2473)))))

(assert (=> d!1533648 (= (forall!12255 (toList!6931 lm!2473) lambda!230673) e!2992968)))

(declare-fun b!4793397 () Bool)

(declare-fun e!2992969 () Bool)

(assert (=> b!4793397 (= e!2992968 e!2992969)))

(declare-fun res!2037534 () Bool)

(assert (=> b!4793397 (=> (not res!2037534) (not e!2992969))))

(assert (=> b!4793397 (= res!2037534 (dynLambda!22059 lambda!230673 (h!60653 (toList!6931 lm!2473))))))

(declare-fun b!4793398 () Bool)

(assert (=> b!4793398 (= e!2992969 (forall!12255 (t!361801 (toList!6931 lm!2473)) lambda!230673))))

(assert (= (and d!1533648 (not res!2037533)) b!4793397))

(assert (= (and b!4793397 res!2037534) b!4793398))

(declare-fun b_lambda!186775 () Bool)

(assert (=> (not b_lambda!186775) (not b!4793397)))

(declare-fun m!5774316 () Bool)

(assert (=> b!4793397 m!5774316))

(declare-fun m!5774318 () Bool)

(assert (=> b!4793398 m!5774318))

(assert (=> d!1533434 d!1533648))

(declare-fun d!1533650 () Bool)

(declare-fun lt!1951762 () Bool)

(assert (=> d!1533650 (= lt!1951762 (select (content!9710 (keys!19801 (extractMap!2453 (toList!6931 lm!2473)))) key!5896))))

(declare-fun e!2992974 () Bool)

(assert (=> d!1533650 (= lt!1951762 e!2992974)))

(declare-fun res!2037540 () Bool)

(assert (=> d!1533650 (=> (not res!2037540) (not e!2992974))))

(assert (=> d!1533650 (= res!2037540 ((_ is Cons!54229) (keys!19801 (extractMap!2453 (toList!6931 lm!2473)))))))

(assert (=> d!1533650 (= (contains!17848 (keys!19801 (extractMap!2453 (toList!6931 lm!2473))) key!5896) lt!1951762)))

(declare-fun b!4793403 () Bool)

(declare-fun e!2992975 () Bool)

(assert (=> b!4793403 (= e!2992974 e!2992975)))

(declare-fun res!2037539 () Bool)

(assert (=> b!4793403 (=> res!2037539 e!2992975)))

(assert (=> b!4793403 (= res!2037539 (= (h!60655 (keys!19801 (extractMap!2453 (toList!6931 lm!2473)))) key!5896))))

(declare-fun b!4793404 () Bool)

(assert (=> b!4793404 (= e!2992975 (contains!17848 (t!361803 (keys!19801 (extractMap!2453 (toList!6931 lm!2473)))) key!5896))))

(assert (= (and d!1533650 res!2037540) b!4793403))

(assert (= (and b!4793403 (not res!2037539)) b!4793404))

(assert (=> d!1533650 m!5773820))

(declare-fun m!5774320 () Bool)

(assert (=> d!1533650 m!5774320))

(declare-fun m!5774322 () Bool)

(assert (=> d!1533650 m!5774322))

(declare-fun m!5774324 () Bool)

(assert (=> b!4793404 m!5774324))

(assert (=> b!4792986 d!1533650))

(declare-fun bs!1154955 () Bool)

(declare-fun b!4793412 () Bool)

(assert (= bs!1154955 (and b!4793412 b!4793376)))

(declare-fun lambda!230777 () Int)

(assert (=> bs!1154955 (= (= (toList!6932 (extractMap!2453 (toList!6931 lm!2473))) (t!361800 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))))) (= lambda!230777 lambda!230769))))

(declare-fun bs!1154956 () Bool)

(assert (= bs!1154956 (and b!4793412 b!4793378)))

(assert (=> bs!1154956 (= (= (toList!6932 (extractMap!2453 (toList!6931 lm!2473))) (Cons!54226 (h!60652 (toList!6932 (extractMap!2453 (toList!6931 lm!2473)))) (t!361800 (toList!6932 (extractMap!2453 (toList!6931 lm!2473)))))) (= lambda!230777 lambda!230770))))

(declare-fun bs!1154957 () Bool)

(assert (= bs!1154957 (and b!4793412 b!4793371)))

(assert (=> bs!1154957 (= lambda!230777 lambda!230771)))

(assert (=> b!4793412 true))

(declare-fun bs!1154958 () Bool)

(declare-fun b!4793413 () Bool)

(assert (= bs!1154958 (and b!4793413 b!4793372)))

(declare-fun lambda!230778 () Int)

(assert (=> bs!1154958 (= lambda!230778 lambda!230772)))

(declare-fun d!1533652 () Bool)

(declare-fun e!2992978 () Bool)

(assert (=> d!1533652 e!2992978))

(declare-fun res!2037549 () Bool)

(assert (=> d!1533652 (=> (not res!2037549) (not e!2992978))))

(declare-fun lt!1951765 () List!54353)

(assert (=> d!1533652 (= res!2037549 (noDuplicate!919 lt!1951765))))

(assert (=> d!1533652 (= lt!1951765 (getKeysList!1076 (toList!6932 (extractMap!2453 (toList!6931 lm!2473)))))))

(assert (=> d!1533652 (= (keys!19801 (extractMap!2453 (toList!6931 lm!2473))) lt!1951765)))

(declare-fun b!4793411 () Bool)

(declare-fun res!2037548 () Bool)

(assert (=> b!4793411 (=> (not res!2037548) (not e!2992978))))

(assert (=> b!4793411 (= res!2037548 (= (length!694 lt!1951765) (length!695 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))))))))

(declare-fun res!2037547 () Bool)

(assert (=> b!4793412 (=> (not res!2037547) (not e!2992978))))

(assert (=> b!4793412 (= res!2037547 (forall!12259 lt!1951765 lambda!230777))))

(assert (=> b!4793413 (= e!2992978 (= (content!9710 lt!1951765) (content!9710 (map!12243 (toList!6932 (extractMap!2453 (toList!6931 lm!2473))) lambda!230778))))))

(assert (= (and d!1533652 res!2037549) b!4793411))

(assert (= (and b!4793411 res!2037548) b!4793412))

(assert (= (and b!4793412 res!2037547) b!4793413))

(declare-fun m!5774326 () Bool)

(assert (=> d!1533652 m!5774326))

(assert (=> d!1533652 m!5773826))

(declare-fun m!5774328 () Bool)

(assert (=> b!4793411 m!5774328))

(assert (=> b!4793411 m!5774270))

(declare-fun m!5774330 () Bool)

(assert (=> b!4793412 m!5774330))

(declare-fun m!5774332 () Bool)

(assert (=> b!4793413 m!5774332))

(declare-fun m!5774334 () Bool)

(assert (=> b!4793413 m!5774334))

(assert (=> b!4793413 m!5774334))

(declare-fun m!5774336 () Bool)

(assert (=> b!4793413 m!5774336))

(assert (=> b!4792986 d!1533652))

(declare-fun d!1533654 () Bool)

(assert (=> d!1533654 (= (isEmpty!29449 (getPair!898 (apply!12995 lm!2473 lt!1951425) key!5896)) (not ((_ is Some!13098) (getPair!898 (apply!12995 lm!2473 lt!1951425) key!5896))))))

(assert (=> d!1533440 d!1533654))

(declare-fun d!1533656 () Bool)

(declare-fun res!2037550 () Bool)

(declare-fun e!2992979 () Bool)

(assert (=> d!1533656 (=> res!2037550 e!2992979)))

(assert (=> d!1533656 (= res!2037550 ((_ is Nil!54227) (t!361801 (toList!6931 lt!1951421))))))

(assert (=> d!1533656 (= (forall!12255 (t!361801 (toList!6931 lt!1951421)) lambda!230645) e!2992979)))

(declare-fun b!4793416 () Bool)

(declare-fun e!2992980 () Bool)

(assert (=> b!4793416 (= e!2992979 e!2992980)))

(declare-fun res!2037551 () Bool)

(assert (=> b!4793416 (=> (not res!2037551) (not e!2992980))))

(assert (=> b!4793416 (= res!2037551 (dynLambda!22059 lambda!230645 (h!60653 (t!361801 (toList!6931 lt!1951421)))))))

(declare-fun b!4793417 () Bool)

(assert (=> b!4793417 (= e!2992980 (forall!12255 (t!361801 (t!361801 (toList!6931 lt!1951421))) lambda!230645))))

(assert (= (and d!1533656 (not res!2037550)) b!4793416))

(assert (= (and b!4793416 res!2037551) b!4793417))

(declare-fun b_lambda!186777 () Bool)

(assert (=> (not b_lambda!186777) (not b!4793416)))

(declare-fun m!5774338 () Bool)

(assert (=> b!4793416 m!5774338))

(declare-fun m!5774340 () Bool)

(assert (=> b!4793417 m!5774340))

(assert (=> b!4792871 d!1533656))

(declare-fun d!1533658 () Bool)

(assert (=> d!1533658 (= (isDefined!10241 lt!1951533) (not (isEmpty!29449 lt!1951533)))))

(declare-fun bs!1154959 () Bool)

(assert (= bs!1154959 d!1533658))

(assert (=> bs!1154959 m!5773876))

(assert (=> b!4793045 d!1533658))

(assert (=> b!4792988 d!1533652))

(declare-fun d!1533660 () Bool)

(declare-fun lt!1951766 () Bool)

(assert (=> d!1533660 (= lt!1951766 (select (content!9708 (apply!12995 lm!2473 lt!1951425)) (get!18483 lt!1951533)))))

(declare-fun e!2992982 () Bool)

(assert (=> d!1533660 (= lt!1951766 e!2992982)))

(declare-fun res!2037553 () Bool)

(assert (=> d!1533660 (=> (not res!2037553) (not e!2992982))))

(assert (=> d!1533660 (= res!2037553 ((_ is Cons!54226) (apply!12995 lm!2473 lt!1951425)))))

(assert (=> d!1533660 (= (contains!17846 (apply!12995 lm!2473 lt!1951425) (get!18483 lt!1951533)) lt!1951766)))

(declare-fun b!4793418 () Bool)

(declare-fun e!2992981 () Bool)

(assert (=> b!4793418 (= e!2992982 e!2992981)))

(declare-fun res!2037552 () Bool)

(assert (=> b!4793418 (=> res!2037552 e!2992981)))

(assert (=> b!4793418 (= res!2037552 (= (h!60652 (apply!12995 lm!2473 lt!1951425)) (get!18483 lt!1951533)))))

(declare-fun b!4793419 () Bool)

(assert (=> b!4793419 (= e!2992981 (contains!17846 (t!361800 (apply!12995 lm!2473 lt!1951425)) (get!18483 lt!1951533)))))

(assert (= (and d!1533660 res!2037553) b!4793418))

(assert (= (and b!4793418 (not res!2037552)) b!4793419))

(assert (=> d!1533660 m!5773630))

(declare-fun m!5774342 () Bool)

(assert (=> d!1533660 m!5774342))

(assert (=> d!1533660 m!5773882))

(declare-fun m!5774344 () Bool)

(assert (=> d!1533660 m!5774344))

(assert (=> b!4793419 m!5773882))

(declare-fun m!5774346 () Bool)

(assert (=> b!4793419 m!5774346))

(assert (=> b!4793044 d!1533660))

(declare-fun d!1533662 () Bool)

(assert (=> d!1533662 (= (get!18483 lt!1951533) (v!48383 lt!1951533))))

(assert (=> b!4793044 d!1533662))

(declare-fun d!1533664 () Bool)

(declare-fun c!816969 () Bool)

(declare-fun e!2992984 () Bool)

(assert (=> d!1533664 (= c!816969 e!2992984)))

(declare-fun res!2037554 () Bool)

(assert (=> d!1533664 (=> (not res!2037554) (not e!2992984))))

(assert (=> d!1533664 (= res!2037554 ((_ is Cons!54227) (t!361801 (toList!6931 lm!2473))))))

(declare-fun e!2992983 () V!16050)

(assert (=> d!1533664 (= (getValue!114 (t!361801 (toList!6931 lm!2473)) key!5896) e!2992983)))

(declare-fun b!4793422 () Bool)

(assert (=> b!4793422 (= e!2992984 (containsKey!3950 (_2!31731 (h!60653 (t!361801 (toList!6931 lm!2473)))) key!5896))))

(declare-fun b!4793420 () Bool)

(assert (=> b!4793420 (= e!2992983 (_2!31730 (get!18483 (getPair!898 (_2!31731 (h!60653 (t!361801 (toList!6931 lm!2473)))) key!5896))))))

(declare-fun b!4793421 () Bool)

(assert (=> b!4793421 (= e!2992983 (getValue!114 (t!361801 (t!361801 (toList!6931 lm!2473))) key!5896))))

(assert (= (and d!1533664 res!2037554) b!4793422))

(assert (= (and d!1533664 c!816969) b!4793420))

(assert (= (and d!1533664 (not c!816969)) b!4793421))

(assert (=> b!4793422 m!5774006))

(declare-fun m!5774348 () Bool)

(assert (=> b!4793420 m!5774348))

(assert (=> b!4793420 m!5774348))

(declare-fun m!5774350 () Bool)

(assert (=> b!4793420 m!5774350))

(declare-fun m!5774352 () Bool)

(assert (=> b!4793421 m!5774352))

(assert (=> b!4793024 d!1533664))

(declare-fun d!1533666 () Bool)

(assert (=> d!1533666 (= (get!18483 (getPair!898 (_2!31731 (h!60653 (toList!6931 lm!2473))) key!5896)) (v!48383 (getPair!898 (_2!31731 (h!60653 (toList!6931 lm!2473))) key!5896)))))

(assert (=> b!4793023 d!1533666))

(declare-fun b!4793423 () Bool)

(declare-fun e!2992988 () Bool)

(assert (=> b!4793423 (= e!2992988 (not (containsKey!3950 (_2!31731 (h!60653 (toList!6931 lm!2473))) key!5896)))))

(declare-fun b!4793424 () Bool)

(declare-fun res!2037555 () Bool)

(declare-fun e!2992985 () Bool)

(assert (=> b!4793424 (=> (not res!2037555) (not e!2992985))))

(declare-fun lt!1951767 () Option!13099)

(assert (=> b!4793424 (= res!2037555 (= (_1!31730 (get!18483 lt!1951767)) key!5896))))

(declare-fun b!4793425 () Bool)

(assert (=> b!4793425 (= e!2992985 (contains!17846 (_2!31731 (h!60653 (toList!6931 lm!2473))) (get!18483 lt!1951767)))))

(declare-fun b!4793426 () Bool)

(declare-fun e!2992986 () Bool)

(assert (=> b!4793426 (= e!2992986 e!2992985)))

(declare-fun res!2037556 () Bool)

(assert (=> b!4793426 (=> (not res!2037556) (not e!2992985))))

(assert (=> b!4793426 (= res!2037556 (isDefined!10241 lt!1951767))))

(declare-fun d!1533668 () Bool)

(assert (=> d!1533668 e!2992986))

(declare-fun res!2037557 () Bool)

(assert (=> d!1533668 (=> res!2037557 e!2992986)))

(assert (=> d!1533668 (= res!2037557 e!2992988)))

(declare-fun res!2037558 () Bool)

(assert (=> d!1533668 (=> (not res!2037558) (not e!2992988))))

(assert (=> d!1533668 (= res!2037558 (isEmpty!29449 lt!1951767))))

(declare-fun e!2992989 () Option!13099)

(assert (=> d!1533668 (= lt!1951767 e!2992989)))

(declare-fun c!816970 () Bool)

(assert (=> d!1533668 (= c!816970 (and ((_ is Cons!54226) (_2!31731 (h!60653 (toList!6931 lm!2473)))) (= (_1!31730 (h!60652 (_2!31731 (h!60653 (toList!6931 lm!2473))))) key!5896)))))

(assert (=> d!1533668 (noDuplicateKeys!2339 (_2!31731 (h!60653 (toList!6931 lm!2473))))))

(assert (=> d!1533668 (= (getPair!898 (_2!31731 (h!60653 (toList!6931 lm!2473))) key!5896) lt!1951767)))

(declare-fun b!4793427 () Bool)

(declare-fun e!2992987 () Option!13099)

(assert (=> b!4793427 (= e!2992987 None!13098)))

(declare-fun b!4793428 () Bool)

(assert (=> b!4793428 (= e!2992989 e!2992987)))

(declare-fun c!816971 () Bool)

(assert (=> b!4793428 (= c!816971 ((_ is Cons!54226) (_2!31731 (h!60653 (toList!6931 lm!2473)))))))

(declare-fun b!4793429 () Bool)

(assert (=> b!4793429 (= e!2992989 (Some!13098 (h!60652 (_2!31731 (h!60653 (toList!6931 lm!2473))))))))

(declare-fun b!4793430 () Bool)

(assert (=> b!4793430 (= e!2992987 (getPair!898 (t!361800 (_2!31731 (h!60653 (toList!6931 lm!2473)))) key!5896))))

(assert (= (and d!1533668 c!816970) b!4793429))

(assert (= (and d!1533668 (not c!816970)) b!4793428))

(assert (= (and b!4793428 c!816971) b!4793430))

(assert (= (and b!4793428 (not c!816971)) b!4793427))

(assert (= (and d!1533668 res!2037558) b!4793423))

(assert (= (and d!1533668 (not res!2037557)) b!4793426))

(assert (= (and b!4793426 res!2037556) b!4793424))

(assert (= (and b!4793424 res!2037555) b!4793425))

(declare-fun m!5774354 () Bool)

(assert (=> d!1533668 m!5774354))

(assert (=> d!1533668 m!5773900))

(declare-fun m!5774356 () Bool)

(assert (=> b!4793430 m!5774356))

(declare-fun m!5774358 () Bool)

(assert (=> b!4793424 m!5774358))

(declare-fun m!5774360 () Bool)

(assert (=> b!4793426 m!5774360))

(assert (=> b!4793423 m!5773638))

(assert (=> b!4793425 m!5774358))

(assert (=> b!4793425 m!5774358))

(declare-fun m!5774362 () Bool)

(assert (=> b!4793425 m!5774362))

(assert (=> b!4793023 d!1533668))

(declare-fun d!1533670 () Bool)

(declare-fun lt!1951768 () Bool)

(assert (=> d!1533670 (= lt!1951768 (select (content!9710 e!2992679) key!5896))))

(declare-fun e!2992990 () Bool)

(assert (=> d!1533670 (= lt!1951768 e!2992990)))

(declare-fun res!2037560 () Bool)

(assert (=> d!1533670 (=> (not res!2037560) (not e!2992990))))

(assert (=> d!1533670 (= res!2037560 ((_ is Cons!54229) e!2992679))))

(assert (=> d!1533670 (= (contains!17848 e!2992679 key!5896) lt!1951768)))

(declare-fun b!4793431 () Bool)

(declare-fun e!2992991 () Bool)

(assert (=> b!4793431 (= e!2992990 e!2992991)))

(declare-fun res!2037559 () Bool)

(assert (=> b!4793431 (=> res!2037559 e!2992991)))

(assert (=> b!4793431 (= res!2037559 (= (h!60655 e!2992679) key!5896))))

(declare-fun b!4793432 () Bool)

(assert (=> b!4793432 (= e!2992991 (contains!17848 (t!361803 e!2992679) key!5896))))

(assert (= (and d!1533670 res!2037560) b!4793431))

(assert (= (and b!4793431 (not res!2037559)) b!4793432))

(declare-fun m!5774364 () Bool)

(assert (=> d!1533670 m!5774364))

(declare-fun m!5774366 () Bool)

(assert (=> d!1533670 m!5774366))

(declare-fun m!5774368 () Bool)

(assert (=> b!4793432 m!5774368))

(assert (=> bm!335041 d!1533670))

(declare-fun d!1533672 () Bool)

(assert (=> d!1533672 (= (get!18484 (getValueByKey!2352 (toList!6931 lm!2473) lt!1951425)) (v!48387 (getValueByKey!2352 (toList!6931 lm!2473) lt!1951425)))))

(assert (=> d!1533444 d!1533672))

(assert (=> d!1533444 d!1533524))

(declare-fun d!1533674 () Bool)

(declare-fun res!2037561 () Bool)

(declare-fun e!2992992 () Bool)

(assert (=> d!1533674 (=> res!2037561 e!2992992)))

(assert (=> d!1533674 (= res!2037561 (not ((_ is Cons!54226) (_2!31731 (h!60653 (toList!6931 lm!2473))))))))

(assert (=> d!1533674 (= (noDuplicateKeys!2339 (_2!31731 (h!60653 (toList!6931 lm!2473)))) e!2992992)))

(declare-fun b!4793433 () Bool)

(declare-fun e!2992993 () Bool)

(assert (=> b!4793433 (= e!2992992 e!2992993)))

(declare-fun res!2037562 () Bool)

(assert (=> b!4793433 (=> (not res!2037562) (not e!2992993))))

(assert (=> b!4793433 (= res!2037562 (not (containsKey!3950 (t!361800 (_2!31731 (h!60653 (toList!6931 lm!2473)))) (_1!31730 (h!60652 (_2!31731 (h!60653 (toList!6931 lm!2473))))))))))

(declare-fun b!4793434 () Bool)

(assert (=> b!4793434 (= e!2992993 (noDuplicateKeys!2339 (t!361800 (_2!31731 (h!60653 (toList!6931 lm!2473))))))))

(assert (= (and d!1533674 (not res!2037561)) b!4793433))

(assert (= (and b!4793433 res!2037562) b!4793434))

(declare-fun m!5774370 () Bool)

(assert (=> b!4793433 m!5774370))

(declare-fun m!5774372 () Bool)

(assert (=> b!4793434 m!5774372))

(assert (=> bs!1154879 d!1533674))

(assert (=> b!4793043 d!1533662))

(declare-fun bs!1154960 () Bool)

(declare-fun d!1533676 () Bool)

(assert (= bs!1154960 (and d!1533676 b!4792821)))

(declare-fun lambda!230781 () Int)

(assert (=> bs!1154960 (= lambda!230781 lambda!230647)))

(declare-fun bs!1154961 () Bool)

(assert (= bs!1154961 (and d!1533676 b!4793344)))

(assert (=> bs!1154961 (not (= lambda!230781 lambda!230758))))

(declare-fun bs!1154962 () Bool)

(assert (= bs!1154962 (and d!1533676 d!1533578)))

(assert (=> bs!1154962 (not (= lambda!230781 lambda!230759))))

(assert (=> bs!1154961 (not (= lambda!230781 lambda!230757))))

(declare-fun bs!1154963 () Bool)

(assert (= bs!1154963 (and d!1533676 b!4793345)))

(assert (=> bs!1154963 (not (= lambda!230781 lambda!230756))))

(assert (=> d!1533676 true))

(assert (=> d!1533676 true))

(assert (=> d!1533676 (= (allKeysSameHash!1958 (_2!31731 (h!60653 (toList!6931 lm!2473))) (_1!31731 (h!60653 (toList!6931 lm!2473))) hashF!1559) (forall!12257 (_2!31731 (h!60653 (toList!6931 lm!2473))) lambda!230781))))

(declare-fun bs!1154964 () Bool)

(assert (= bs!1154964 d!1533676))

(declare-fun m!5774374 () Bool)

(assert (=> bs!1154964 m!5774374))

(assert (=> bs!1154880 d!1533676))

(declare-fun d!1533678 () Bool)

(declare-fun res!2037567 () Bool)

(declare-fun e!2992998 () Bool)

(assert (=> d!1533678 (=> res!2037567 e!2992998)))

(assert (=> d!1533678 (= res!2037567 (or ((_ is Nil!54227) (toList!6931 lm!2473)) ((_ is Nil!54227) (t!361801 (toList!6931 lm!2473)))))))

(assert (=> d!1533678 (= (isStrictlySorted!878 (toList!6931 lm!2473)) e!2992998)))

(declare-fun b!4793441 () Bool)

(declare-fun e!2992999 () Bool)

(assert (=> b!4793441 (= e!2992998 e!2992999)))

(declare-fun res!2037568 () Bool)

(assert (=> b!4793441 (=> (not res!2037568) (not e!2992999))))

(assert (=> b!4793441 (= res!2037568 (bvslt (_1!31731 (h!60653 (toList!6931 lm!2473))) (_1!31731 (h!60653 (t!361801 (toList!6931 lm!2473))))))))

(declare-fun b!4793442 () Bool)

(assert (=> b!4793442 (= e!2992999 (isStrictlySorted!878 (t!361801 (toList!6931 lm!2473))))))

(assert (= (and d!1533678 (not res!2037567)) b!4793441))

(assert (= (and b!4793441 res!2037568) b!4793442))

(declare-fun m!5774376 () Bool)

(assert (=> b!4793442 m!5774376))

(assert (=> d!1533448 d!1533678))

(assert (=> b!4793025 d!1533400))

(assert (=> b!4792989 d!1533650))

(assert (=> b!4792989 d!1533652))

(declare-fun d!1533680 () Bool)

(assert (=> d!1533680 (dynLambda!22059 lambda!230646 (h!60653 (toList!6931 lm!2473)))))

(assert (=> d!1533680 true))

(declare-fun _$7!2404 () Unit!139971)

(assert (=> d!1533680 (= (choose!34521 (toList!6931 lm!2473) lambda!230646 (h!60653 (toList!6931 lm!2473))) _$7!2404)))

(declare-fun b_lambda!186779 () Bool)

(assert (=> (not b_lambda!186779) (not d!1533680)))

(declare-fun bs!1154965 () Bool)

(assert (= bs!1154965 d!1533680))

(assert (=> bs!1154965 m!5773734))

(assert (=> d!1533384 d!1533680))

(declare-fun d!1533682 () Bool)

(declare-fun res!2037569 () Bool)

(declare-fun e!2993000 () Bool)

(assert (=> d!1533682 (=> res!2037569 e!2993000)))

(assert (=> d!1533682 (= res!2037569 ((_ is Nil!54227) (toList!6931 lm!2473)))))

(assert (=> d!1533682 (= (forall!12255 (toList!6931 lm!2473) lambda!230646) e!2993000)))

(declare-fun b!4793443 () Bool)

(declare-fun e!2993001 () Bool)

(assert (=> b!4793443 (= e!2993000 e!2993001)))

(declare-fun res!2037570 () Bool)

(assert (=> b!4793443 (=> (not res!2037570) (not e!2993001))))

(assert (=> b!4793443 (= res!2037570 (dynLambda!22059 lambda!230646 (h!60653 (toList!6931 lm!2473))))))

(declare-fun b!4793444 () Bool)

(assert (=> b!4793444 (= e!2993001 (forall!12255 (t!361801 (toList!6931 lm!2473)) lambda!230646))))

(assert (= (and d!1533682 (not res!2037569)) b!4793443))

(assert (= (and b!4793443 res!2037570) b!4793444))

(declare-fun b_lambda!186781 () Bool)

(assert (=> (not b_lambda!186781) (not b!4793443)))

(assert (=> b!4793443 m!5773734))

(declare-fun m!5774378 () Bool)

(assert (=> b!4793444 m!5774378))

(assert (=> d!1533384 d!1533682))

(declare-fun d!1533684 () Bool)

(declare-fun res!2037571 () Bool)

(declare-fun e!2993002 () Bool)

(assert (=> d!1533684 (=> res!2037571 e!2993002)))

(assert (=> d!1533684 (= res!2037571 ((_ is Nil!54227) (toList!6931 lm!2473)))))

(assert (=> d!1533684 (= (forall!12255 (toList!6931 lm!2473) lambda!230663) e!2993002)))

(declare-fun b!4793445 () Bool)

(declare-fun e!2993003 () Bool)

(assert (=> b!4793445 (= e!2993002 e!2993003)))

(declare-fun res!2037572 () Bool)

(assert (=> b!4793445 (=> (not res!2037572) (not e!2993003))))

(assert (=> b!4793445 (= res!2037572 (dynLambda!22059 lambda!230663 (h!60653 (toList!6931 lm!2473))))))

(declare-fun b!4793446 () Bool)

(assert (=> b!4793446 (= e!2993003 (forall!12255 (t!361801 (toList!6931 lm!2473)) lambda!230663))))

(assert (= (and d!1533684 (not res!2037571)) b!4793445))

(assert (= (and b!4793445 res!2037572) b!4793446))

(declare-fun b_lambda!186783 () Bool)

(assert (=> (not b_lambda!186783) (not b!4793445)))

(declare-fun m!5774380 () Bool)

(assert (=> b!4793445 m!5774380))

(declare-fun m!5774382 () Bool)

(assert (=> b!4793446 m!5774382))

(assert (=> d!1533394 d!1533684))

(declare-fun b!4793447 () Bool)

(declare-fun e!2993007 () Bool)

(assert (=> b!4793447 (= e!2993007 (not (containsKey!3950 (t!361800 (apply!12995 lm!2473 lt!1951425)) key!5896)))))

(declare-fun b!4793448 () Bool)

(declare-fun res!2037573 () Bool)

(declare-fun e!2993004 () Bool)

(assert (=> b!4793448 (=> (not res!2037573) (not e!2993004))))

(declare-fun lt!1951769 () Option!13099)

(assert (=> b!4793448 (= res!2037573 (= (_1!31730 (get!18483 lt!1951769)) key!5896))))

(declare-fun b!4793449 () Bool)

(assert (=> b!4793449 (= e!2993004 (contains!17846 (t!361800 (apply!12995 lm!2473 lt!1951425)) (get!18483 lt!1951769)))))

(declare-fun b!4793450 () Bool)

(declare-fun e!2993005 () Bool)

(assert (=> b!4793450 (= e!2993005 e!2993004)))

(declare-fun res!2037574 () Bool)

(assert (=> b!4793450 (=> (not res!2037574) (not e!2993004))))

(assert (=> b!4793450 (= res!2037574 (isDefined!10241 lt!1951769))))

(declare-fun d!1533686 () Bool)

(assert (=> d!1533686 e!2993005))

(declare-fun res!2037575 () Bool)

(assert (=> d!1533686 (=> res!2037575 e!2993005)))

(assert (=> d!1533686 (= res!2037575 e!2993007)))

(declare-fun res!2037576 () Bool)

(assert (=> d!1533686 (=> (not res!2037576) (not e!2993007))))

(assert (=> d!1533686 (= res!2037576 (isEmpty!29449 lt!1951769))))

(declare-fun e!2993008 () Option!13099)

(assert (=> d!1533686 (= lt!1951769 e!2993008)))

(declare-fun c!816972 () Bool)

(assert (=> d!1533686 (= c!816972 (and ((_ is Cons!54226) (t!361800 (apply!12995 lm!2473 lt!1951425))) (= (_1!31730 (h!60652 (t!361800 (apply!12995 lm!2473 lt!1951425)))) key!5896)))))

(assert (=> d!1533686 (noDuplicateKeys!2339 (t!361800 (apply!12995 lm!2473 lt!1951425)))))

(assert (=> d!1533686 (= (getPair!898 (t!361800 (apply!12995 lm!2473 lt!1951425)) key!5896) lt!1951769)))

(declare-fun b!4793451 () Bool)

(declare-fun e!2993006 () Option!13099)

(assert (=> b!4793451 (= e!2993006 None!13098)))

(declare-fun b!4793452 () Bool)

(assert (=> b!4793452 (= e!2993008 e!2993006)))

(declare-fun c!816973 () Bool)

(assert (=> b!4793452 (= c!816973 ((_ is Cons!54226) (t!361800 (apply!12995 lm!2473 lt!1951425))))))

(declare-fun b!4793453 () Bool)

(assert (=> b!4793453 (= e!2993008 (Some!13098 (h!60652 (t!361800 (apply!12995 lm!2473 lt!1951425)))))))

(declare-fun b!4793454 () Bool)

(assert (=> b!4793454 (= e!2993006 (getPair!898 (t!361800 (t!361800 (apply!12995 lm!2473 lt!1951425))) key!5896))))

(assert (= (and d!1533686 c!816972) b!4793453))

(assert (= (and d!1533686 (not c!816972)) b!4793452))

(assert (= (and b!4793452 c!816973) b!4793454))

(assert (= (and b!4793452 (not c!816973)) b!4793451))

(assert (= (and d!1533686 res!2037576) b!4793447))

(assert (= (and d!1533686 (not res!2037575)) b!4793450))

(assert (= (and b!4793450 res!2037574) b!4793448))

(assert (= (and b!4793448 res!2037573) b!4793449))

(declare-fun m!5774384 () Bool)

(assert (=> d!1533686 m!5774384))

(declare-fun m!5774386 () Bool)

(assert (=> d!1533686 m!5774386))

(declare-fun m!5774388 () Bool)

(assert (=> b!4793454 m!5774388))

(declare-fun m!5774390 () Bool)

(assert (=> b!4793448 m!5774390))

(declare-fun m!5774392 () Bool)

(assert (=> b!4793450 m!5774392))

(assert (=> b!4793447 m!5774308))

(assert (=> b!4793449 m!5774390))

(assert (=> b!4793449 m!5774390))

(declare-fun m!5774394 () Bool)

(assert (=> b!4793449 m!5774394))

(assert (=> b!4793049 d!1533686))

(declare-fun d!1533688 () Bool)

(assert (=> d!1533688 (= (isEmpty!29449 lt!1951533) (not ((_ is Some!13098) lt!1951533)))))

(assert (=> d!1533442 d!1533688))

(declare-fun d!1533690 () Bool)

(declare-fun res!2037577 () Bool)

(declare-fun e!2993009 () Bool)

(assert (=> d!1533690 (=> res!2037577 e!2993009)))

(assert (=> d!1533690 (= res!2037577 (not ((_ is Cons!54226) (apply!12995 lm!2473 lt!1951425))))))

(assert (=> d!1533690 (= (noDuplicateKeys!2339 (apply!12995 lm!2473 lt!1951425)) e!2993009)))

(declare-fun b!4793455 () Bool)

(declare-fun e!2993010 () Bool)

(assert (=> b!4793455 (= e!2993009 e!2993010)))

(declare-fun res!2037578 () Bool)

(assert (=> b!4793455 (=> (not res!2037578) (not e!2993010))))

(assert (=> b!4793455 (= res!2037578 (not (containsKey!3950 (t!361800 (apply!12995 lm!2473 lt!1951425)) (_1!31730 (h!60652 (apply!12995 lm!2473 lt!1951425))))))))

(declare-fun b!4793456 () Bool)

(assert (=> b!4793456 (= e!2993010 (noDuplicateKeys!2339 (t!361800 (apply!12995 lm!2473 lt!1951425))))))

(assert (= (and d!1533690 (not res!2037577)) b!4793455))

(assert (= (and b!4793455 res!2037578) b!4793456))

(declare-fun m!5774396 () Bool)

(assert (=> b!4793455 m!5774396))

(assert (=> b!4793456 m!5774386))

(assert (=> d!1533442 d!1533690))

(declare-fun d!1533692 () Bool)

(declare-fun noDuplicatedKeys!438 (List!54350) Bool)

(assert (=> d!1533692 (= (invariantList!1730 (toList!6932 lt!1951512)) (noDuplicatedKeys!438 (toList!6932 lt!1951512)))))

(declare-fun bs!1154966 () Bool)

(assert (= bs!1154966 d!1533692))

(declare-fun m!5774398 () Bool)

(assert (=> bs!1154966 m!5774398))

(assert (=> d!1533426 d!1533692))

(declare-fun d!1533694 () Bool)

(declare-fun res!2037579 () Bool)

(declare-fun e!2993011 () Bool)

(assert (=> d!1533694 (=> res!2037579 e!2993011)))

(assert (=> d!1533694 (= res!2037579 ((_ is Nil!54227) (toList!6931 lm!2473)))))

(assert (=> d!1533694 (= (forall!12255 (toList!6931 lm!2473) lambda!230667) e!2993011)))

(declare-fun b!4793457 () Bool)

(declare-fun e!2993012 () Bool)

(assert (=> b!4793457 (= e!2993011 e!2993012)))

(declare-fun res!2037580 () Bool)

(assert (=> b!4793457 (=> (not res!2037580) (not e!2993012))))

(assert (=> b!4793457 (= res!2037580 (dynLambda!22059 lambda!230667 (h!60653 (toList!6931 lm!2473))))))

(declare-fun b!4793458 () Bool)

(assert (=> b!4793458 (= e!2993012 (forall!12255 (t!361801 (toList!6931 lm!2473)) lambda!230667))))

(assert (= (and d!1533694 (not res!2037579)) b!4793457))

(assert (= (and b!4793457 res!2037580) b!4793458))

(declare-fun b_lambda!186785 () Bool)

(assert (=> (not b_lambda!186785) (not b!4793457)))

(declare-fun m!5774400 () Bool)

(assert (=> b!4793457 m!5774400))

(declare-fun m!5774402 () Bool)

(assert (=> b!4793458 m!5774402))

(assert (=> d!1533426 d!1533694))

(declare-fun d!1533696 () Bool)

(declare-fun res!2037581 () Bool)

(declare-fun e!2993013 () Bool)

(assert (=> d!1533696 (=> res!2037581 e!2993013)))

(assert (=> d!1533696 (= res!2037581 (and ((_ is Cons!54226) (t!361800 (_2!31731 (h!60653 (toList!6931 lm!2473))))) (= (_1!31730 (h!60652 (t!361800 (_2!31731 (h!60653 (toList!6931 lm!2473)))))) key!5896)))))

(assert (=> d!1533696 (= (containsKey!3950 (t!361800 (_2!31731 (h!60653 (toList!6931 lm!2473)))) key!5896) e!2993013)))

(declare-fun b!4793459 () Bool)

(declare-fun e!2993014 () Bool)

(assert (=> b!4793459 (= e!2993013 e!2993014)))

(declare-fun res!2037582 () Bool)

(assert (=> b!4793459 (=> (not res!2037582) (not e!2993014))))

(assert (=> b!4793459 (= res!2037582 ((_ is Cons!54226) (t!361800 (_2!31731 (h!60653 (toList!6931 lm!2473))))))))

(declare-fun b!4793460 () Bool)

(assert (=> b!4793460 (= e!2993014 (containsKey!3950 (t!361800 (t!361800 (_2!31731 (h!60653 (toList!6931 lm!2473))))) key!5896))))

(assert (= (and d!1533696 (not res!2037581)) b!4793459))

(assert (= (and b!4793459 res!2037582) b!4793460))

(declare-fun m!5774404 () Bool)

(assert (=> b!4793460 m!5774404))

(assert (=> b!4792920 d!1533696))

(declare-fun d!1533698 () Bool)

(assert (=> d!1533698 (= (hash!4961 hashF!1559 (_1!31730 (tuple2!56873 key!5896 value!3111))) (hash!4963 hashF!1559 (_1!31730 (tuple2!56873 key!5896 value!3111))))))

(declare-fun bs!1154967 () Bool)

(assert (= bs!1154967 d!1533698))

(declare-fun m!5774406 () Bool)

(assert (=> bs!1154967 m!5774406))

(assert (=> bs!1154881 d!1533698))

(assert (=> b!4793011 d!1533400))

(declare-fun d!1533700 () Bool)

(declare-fun res!2037583 () Bool)

(declare-fun e!2993015 () Bool)

(assert (=> d!1533700 (=> res!2037583 e!2993015)))

(assert (=> d!1533700 (= res!2037583 ((_ is Nil!54227) (toList!6931 lt!1951421)))))

(assert (=> d!1533700 (= (forall!12255 (toList!6931 lt!1951421) lambda!230662) e!2993015)))

(declare-fun b!4793461 () Bool)

(declare-fun e!2993016 () Bool)

(assert (=> b!4793461 (= e!2993015 e!2993016)))

(declare-fun res!2037584 () Bool)

(assert (=> b!4793461 (=> (not res!2037584) (not e!2993016))))

(assert (=> b!4793461 (= res!2037584 (dynLambda!22059 lambda!230662 (h!60653 (toList!6931 lt!1951421))))))

(declare-fun b!4793462 () Bool)

(assert (=> b!4793462 (= e!2993016 (forall!12255 (t!361801 (toList!6931 lt!1951421)) lambda!230662))))

(assert (= (and d!1533700 (not res!2037583)) b!4793461))

(assert (= (and b!4793461 res!2037584) b!4793462))

(declare-fun b_lambda!186787 () Bool)

(assert (=> (not b_lambda!186787) (not b!4793461)))

(declare-fun m!5774408 () Bool)

(assert (=> b!4793461 m!5774408))

(declare-fun m!5774410 () Bool)

(assert (=> b!4793462 m!5774410))

(assert (=> d!1533390 d!1533700))

(declare-fun b!4793467 () Bool)

(declare-fun e!2993019 () Bool)

(declare-fun tp!1358062 () Bool)

(assert (=> b!4793467 (= e!2993019 (and tp_is_empty!33565 tp_is_empty!33567 tp!1358062))))

(assert (=> b!4793056 (= tp!1358053 e!2993019)))

(assert (= (and b!4793056 ((_ is Cons!54226) (_2!31731 (h!60653 (toList!6931 lm!2473))))) b!4793467))

(declare-fun b!4793468 () Bool)

(declare-fun e!2993020 () Bool)

(declare-fun tp!1358063 () Bool)

(declare-fun tp!1358064 () Bool)

(assert (=> b!4793468 (= e!2993020 (and tp!1358063 tp!1358064))))

(assert (=> b!4793056 (= tp!1358054 e!2993020)))

(assert (= (and b!4793056 ((_ is Cons!54227) (t!361801 (toList!6931 lm!2473)))) b!4793468))

(declare-fun b_lambda!186789 () Bool)

(assert (= b_lambda!186779 (or b!4792821 b_lambda!186789)))

(assert (=> d!1533680 d!1533454))

(declare-fun b_lambda!186791 () Bool)

(assert (= b_lambda!186743 (or d!1533432 b_lambda!186791)))

(declare-fun bs!1154968 () Bool)

(declare-fun d!1533702 () Bool)

(assert (= bs!1154968 (and d!1533702 d!1533432)))

(assert (=> bs!1154968 (= (dynLambda!22059 lambda!230670 (h!60653 (toList!6931 lm!2473))) (noDuplicateKeys!2339 (_2!31731 (h!60653 (toList!6931 lm!2473)))))))

(assert (=> bs!1154968 m!5773900))

(assert (=> b!4793279 d!1533702))

(declare-fun b_lambda!186793 () Bool)

(assert (= b_lambda!186737 (or b!4792821 b_lambda!186793)))

(assert (=> d!1533562 d!1533456))

(declare-fun b_lambda!186795 () Bool)

(assert (= b_lambda!186783 (or d!1533394 b_lambda!186795)))

(declare-fun bs!1154969 () Bool)

(declare-fun d!1533704 () Bool)

(assert (= bs!1154969 (and d!1533704 d!1533394)))

(assert (=> bs!1154969 (= (dynLambda!22059 lambda!230663 (h!60653 (toList!6931 lm!2473))) (allKeysSameHash!1958 (_2!31731 (h!60653 (toList!6931 lm!2473))) (_1!31731 (h!60653 (toList!6931 lm!2473))) hashF!1559))))

(assert (=> bs!1154969 m!5773902))

(assert (=> b!4793445 d!1533704))

(declare-fun b_lambda!186797 () Bool)

(assert (= b_lambda!186741 (or start!493598 b_lambda!186797)))

(declare-fun bs!1154970 () Bool)

(declare-fun d!1533706 () Bool)

(assert (= bs!1154970 (and d!1533706 start!493598)))

(assert (=> bs!1154970 (= (dynLambda!22059 lambda!230645 (h!60653 (t!361801 (toList!6931 lm!2473)))) (noDuplicateKeys!2339 (_2!31731 (h!60653 (t!361801 (toList!6931 lm!2473))))))))

(declare-fun m!5774412 () Bool)

(assert (=> bs!1154970 m!5774412))

(assert (=> b!4793248 d!1533706))

(declare-fun b_lambda!186799 () Bool)

(assert (= b_lambda!186787 (or d!1533390 b_lambda!186799)))

(declare-fun bs!1154971 () Bool)

(declare-fun d!1533708 () Bool)

(assert (= bs!1154971 (and d!1533708 d!1533390)))

(assert (=> bs!1154971 (= (dynLambda!22059 lambda!230662 (h!60653 (toList!6931 lt!1951421))) (allKeysSameHash!1958 (_2!31731 (h!60653 (toList!6931 lt!1951421))) (_1!31731 (h!60653 (toList!6931 lt!1951421))) hashF!1559))))

(declare-fun m!5774414 () Bool)

(assert (=> bs!1154971 m!5774414))

(assert (=> b!4793461 d!1533708))

(declare-fun b_lambda!186801 () Bool)

(assert (= b_lambda!186781 (or b!4792821 b_lambda!186801)))

(assert (=> b!4793443 d!1533454))

(declare-fun b_lambda!186803 () Bool)

(assert (= b_lambda!186739 (or b!4792821 b_lambda!186803)))

(declare-fun bs!1154972 () Bool)

(declare-fun d!1533710 () Bool)

(assert (= bs!1154972 (and d!1533710 b!4792821)))

(assert (=> bs!1154972 (= (dynLambda!22060 lambda!230647 (h!60652 (_2!31731 (h!60653 (toList!6931 lm!2473))))) (= (hash!4961 hashF!1559 (_1!31730 (h!60652 (_2!31731 (h!60653 (toList!6931 lm!2473)))))) (_1!31731 (h!60653 (toList!6931 lm!2473)))))))

(declare-fun m!5774416 () Bool)

(assert (=> bs!1154972 m!5774416))

(assert (=> b!4793246 d!1533710))

(declare-fun b_lambda!186805 () Bool)

(assert (= b_lambda!186775 (or d!1533434 b_lambda!186805)))

(declare-fun bs!1154973 () Bool)

(declare-fun d!1533712 () Bool)

(assert (= bs!1154973 (and d!1533712 d!1533434)))

(assert (=> bs!1154973 (= (dynLambda!22059 lambda!230673 (h!60653 (toList!6931 lm!2473))) (noDuplicateKeys!2339 (_2!31731 (h!60653 (toList!6931 lm!2473)))))))

(assert (=> bs!1154973 m!5773900))

(assert (=> b!4793397 d!1533712))

(declare-fun b_lambda!186807 () Bool)

(assert (= b_lambda!186785 (or d!1533426 b_lambda!186807)))

(declare-fun bs!1154974 () Bool)

(declare-fun d!1533714 () Bool)

(assert (= bs!1154974 (and d!1533714 d!1533426)))

(assert (=> bs!1154974 (= (dynLambda!22059 lambda!230667 (h!60653 (toList!6931 lm!2473))) (noDuplicateKeys!2339 (_2!31731 (h!60653 (toList!6931 lm!2473)))))))

(assert (=> bs!1154974 m!5773900))

(assert (=> b!4793457 d!1533714))

(declare-fun b_lambda!186809 () Bool)

(assert (= b_lambda!186777 (or start!493598 b_lambda!186809)))

(declare-fun bs!1154975 () Bool)

(declare-fun d!1533716 () Bool)

(assert (= bs!1154975 (and d!1533716 start!493598)))

(assert (=> bs!1154975 (= (dynLambda!22059 lambda!230645 (h!60653 (t!361801 (toList!6931 lt!1951421)))) (noDuplicateKeys!2339 (_2!31731 (h!60653 (t!361801 (toList!6931 lt!1951421))))))))

(declare-fun m!5774418 () Bool)

(assert (=> bs!1154975 m!5774418))

(assert (=> b!4793416 d!1533716))

(check-sat (not b!4793433) (not b!4793375) (not b!4793434) (not bs!1154968) (not b!4793420) (not b!4793448) (not b!4793468) (not b!4793158) (not b!4793423) (not b!4793421) (not bm!335057) (not b!4793462) (not b!4793383) (not b!4793398) (not d!1533578) (not d!1533686) (not d!1533522) (not b!4793467) (not d!1533544) (not b!4793419) tp_is_empty!33565 (not b!4793422) (not b_lambda!186797) (not d!1533530) (not b_lambda!186717) (not bs!1154970) (not b!4793350) (not b!4793417) (not b_lambda!186805) (not d!1533658) (not d!1533644) (not b_lambda!186719) (not b!4793170) (not b!4793228) (not d!1533652) (not b!4793371) (not b!4793426) (not d!1533550) (not b!4793450) (not b!4793160) (not d!1533632) (not b!4793372) (not d!1533560) (not b!4793425) (not b_lambda!186799) (not b_lambda!186793) (not b!4793442) (not d!1533698) (not b!4793449) (not d!1533676) (not b!4793343) (not bs!1154969) (not d!1533574) (not b!4793390) (not b_lambda!186803) tp_is_empty!33567 (not b!4793382) (not b!4793455) (not b!4793280) (not b!4793249) (not d!1533556) (not b!4793454) (not b_lambda!186795) (not b!4793266) (not b_lambda!186807) (not bm!335059) (not d!1533634) (not d!1533668) (not b!4793217) (not b!4793411) (not b!4793156) (not d!1533670) (not b!4793188) (not b!4793247) (not b!4793388) (not b!4793200) (not d!1533640) (not b!4793344) (not b!4793460) (not b!4793456) (not d!1533570) (not b_lambda!186789) (not b!4793393) (not b!4793267) (not d!1533650) (not b!4793396) (not b!4793458) (not b_lambda!186721) (not b!4793346) (not b!4793446) (not d!1533692) (not b_lambda!186791) (not b!4793430) (not bs!1154972) (not b!4793447) (not b!4793384) (not bm!335058) (not bs!1154971) (not b!4793381) (not b!4793378) (not d!1533646) (not b!4793391) (not b!4793412) (not bs!1154975) (not b_lambda!186715) (not b!4793404) (not b!4793432) (not b!4793444) (not b!4793376) (not d!1533636) (not bs!1154973) (not b!4793424) (not d!1533660) (not b_lambda!186801) (not b_lambda!186809) (not b!4793413) (not bs!1154974) (not d!1533554) (not d!1533638) (not d!1533528) (not b!4793261))
(check-sat)
