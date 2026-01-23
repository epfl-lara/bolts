; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!505550 () Bool)

(assert start!505550)

(declare-fun b!4848872 () Bool)

(declare-fun e!3030919 () Bool)

(declare-fun e!3030915 () Bool)

(assert (=> b!4848872 (= e!3030919 e!3030915)))

(declare-fun res!2069132 () Bool)

(assert (=> b!4848872 (=> res!2069132 e!3030915)))

(declare-datatypes ((K!17367 0))(
  ( (K!17368 (val!22199 Int)) )
))
(declare-datatypes ((V!17613 0))(
  ( (V!17614 (val!22200 Int)) )
))
(declare-datatypes ((tuple2!59270 0))(
  ( (tuple2!59271 (_1!32929 K!17367) (_2!32929 V!17613)) )
))
(declare-datatypes ((List!55692 0))(
  ( (Nil!55568) (Cons!55568 (h!62005 tuple2!59270) (t!363188 List!55692)) )
))
(declare-datatypes ((tuple2!59272 0))(
  ( (tuple2!59273 (_1!32930 (_ BitVec 64)) (_2!32930 List!55692)) )
))
(declare-datatypes ((List!55693 0))(
  ( (Nil!55569) (Cons!55569 (h!62006 tuple2!59272) (t!363189 List!55693)) )
))
(declare-datatypes ((ListLongMap!6473 0))(
  ( (ListLongMap!6474 (toList!7865 List!55693)) )
))
(declare-fun lt!1989147 () ListLongMap!6473)

(declare-fun lambda!242605 () Int)

(declare-fun forall!12958 (List!55693 Int) Bool)

(assert (=> b!4848872 (= res!2069132 (not (forall!12958 (toList!7865 lt!1989147) lambda!242605)))))

(declare-fun lm!2646 () ListLongMap!6473)

(declare-fun tail!9533 (ListLongMap!6473) ListLongMap!6473)

(assert (=> b!4848872 (= lt!1989147 (tail!9533 lm!2646))))

(declare-fun b!4848873 () Bool)

(declare-fun res!2069127 () Bool)

(declare-fun e!3030920 () Bool)

(assert (=> b!4848873 (=> res!2069127 e!3030920)))

(declare-fun lt!1989141 () (_ BitVec 64))

(assert (=> b!4848873 (= res!2069127 (or (and (is-Cons!55569 (toList!7865 lm!2646)) (= (_1!32930 (h!62006 (toList!7865 lm!2646))) lt!1989141)) (not (is-Cons!55569 (toList!7865 lm!2646))) (= lt!1989141 (_1!32930 (h!62006 (toList!7865 lm!2646))))))))

(declare-fun b!4848874 () Bool)

(declare-fun res!2069129 () Bool)

(declare-fun e!3030918 () Bool)

(assert (=> b!4848874 (=> (not res!2069129) (not e!3030918))))

(declare-datatypes ((Hashable!7505 0))(
  ( (HashableExt!7504 (__x!33780 Int)) )
))
(declare-fun hashF!1641 () Hashable!7505)

(declare-fun allKeysSameHashInMap!2821 (ListLongMap!6473 Hashable!7505) Bool)

(assert (=> b!4848874 (= res!2069129 (allKeysSameHashInMap!2821 lm!2646 hashF!1641))))

(declare-fun b!4848875 () Bool)

(declare-fun e!3030917 () Bool)

(assert (=> b!4848875 (= e!3030917 (not e!3030920))))

(declare-fun res!2069126 () Bool)

(assert (=> b!4848875 (=> res!2069126 e!3030920)))

(declare-fun lt!1989146 () List!55692)

(declare-fun key!6445 () K!17367)

(declare-datatypes ((Option!13680 0))(
  ( (None!13679) (Some!13679 (v!49451 tuple2!59270)) )
))
(declare-fun isDefined!10772 (Option!13680) Bool)

(declare-fun getPair!1095 (List!55692 K!17367) Option!13680)

(assert (=> b!4848875 (= res!2069126 (not (isDefined!10772 (getPair!1095 lt!1989146 key!6445))))))

(declare-datatypes ((Unit!145708 0))(
  ( (Unit!145709) )
))
(declare-fun lt!1989144 () Unit!145708)

(declare-fun lt!1989145 () tuple2!59272)

(declare-fun forallContained!4546 (List!55693 Int tuple2!59272) Unit!145708)

(assert (=> b!4848875 (= lt!1989144 (forallContained!4546 (toList!7865 lm!2646) lambda!242605 lt!1989145))))

(declare-fun contains!19227 (List!55693 tuple2!59272) Bool)

(assert (=> b!4848875 (contains!19227 (toList!7865 lm!2646) lt!1989145)))

(assert (=> b!4848875 (= lt!1989145 (tuple2!59273 lt!1989141 lt!1989146))))

(declare-fun lt!1989143 () Unit!145708)

(declare-fun lemmaGetValueImpliesTupleContained!772 (ListLongMap!6473 (_ BitVec 64) List!55692) Unit!145708)

(assert (=> b!4848875 (= lt!1989143 (lemmaGetValueImpliesTupleContained!772 lm!2646 lt!1989141 lt!1989146))))

(declare-fun apply!13448 (ListLongMap!6473 (_ BitVec 64)) List!55692)

(assert (=> b!4848875 (= lt!1989146 (apply!13448 lm!2646 lt!1989141))))

(declare-fun b!4848876 () Bool)

(declare-fun e!3030916 () Bool)

(declare-fun tp!1364705 () Bool)

(assert (=> b!4848876 (= e!3030916 tp!1364705)))

(declare-fun b!4848877 () Bool)

(assert (=> b!4848877 (= e!3030915 (allKeysSameHashInMap!2821 lt!1989147 hashF!1641))))

(declare-fun b!4848878 () Bool)

(assert (=> b!4848878 (= e!3030920 e!3030919)))

(declare-fun res!2069128 () Bool)

(assert (=> b!4848878 (=> res!2069128 e!3030919)))

(declare-fun containsKey!4691 (List!55692 K!17367) Bool)

(assert (=> b!4848878 (= res!2069128 (containsKey!4691 (_2!32930 (h!62006 (toList!7865 lm!2646))) key!6445))))

(assert (=> b!4848878 (not (containsKey!4691 (apply!13448 lm!2646 (_1!32930 (h!62006 (toList!7865 lm!2646)))) key!6445))))

(declare-fun lt!1989142 () Unit!145708)

(declare-fun lemmaNotSameHashThenCannotContainKey!255 (ListLongMap!6473 K!17367 (_ BitVec 64) Hashable!7505) Unit!145708)

(assert (=> b!4848878 (= lt!1989142 (lemmaNotSameHashThenCannotContainKey!255 lm!2646 key!6445 (_1!32930 (h!62006 (toList!7865 lm!2646))) hashF!1641))))

(declare-fun res!2069130 () Bool)

(assert (=> start!505550 (=> (not res!2069130) (not e!3030918))))

(assert (=> start!505550 (= res!2069130 (forall!12958 (toList!7865 lm!2646) lambda!242605))))

(assert (=> start!505550 e!3030918))

(declare-fun inv!71254 (ListLongMap!6473) Bool)

(assert (=> start!505550 (and (inv!71254 lm!2646) e!3030916)))

(assert (=> start!505550 true))

(declare-fun tp_is_empty!35205 () Bool)

(assert (=> start!505550 tp_is_empty!35205))

(declare-fun b!4848879 () Bool)

(assert (=> b!4848879 (= e!3030918 e!3030917)))

(declare-fun res!2069131 () Bool)

(assert (=> b!4848879 (=> (not res!2069131) (not e!3030917))))

(declare-fun contains!19228 (ListLongMap!6473 (_ BitVec 64)) Bool)

(assert (=> b!4848879 (= res!2069131 (contains!19228 lm!2646 lt!1989141))))

(declare-fun hash!5601 (Hashable!7505 K!17367) (_ BitVec 64))

(assert (=> b!4848879 (= lt!1989141 (hash!5601 hashF!1641 key!6445))))

(assert (= (and start!505550 res!2069130) b!4848874))

(assert (= (and b!4848874 res!2069129) b!4848879))

(assert (= (and b!4848879 res!2069131) b!4848875))

(assert (= (and b!4848875 (not res!2069126)) b!4848873))

(assert (= (and b!4848873 (not res!2069127)) b!4848878))

(assert (= (and b!4848878 (not res!2069128)) b!4848872))

(assert (= (and b!4848872 (not res!2069132)) b!4848877))

(assert (= start!505550 b!4848876))

(declare-fun m!5846972 () Bool)

(assert (=> b!4848877 m!5846972))

(declare-fun m!5846974 () Bool)

(assert (=> b!4848874 m!5846974))

(declare-fun m!5846976 () Bool)

(assert (=> b!4848872 m!5846976))

(declare-fun m!5846978 () Bool)

(assert (=> b!4848872 m!5846978))

(declare-fun m!5846980 () Bool)

(assert (=> b!4848878 m!5846980))

(declare-fun m!5846982 () Bool)

(assert (=> b!4848878 m!5846982))

(assert (=> b!4848878 m!5846982))

(declare-fun m!5846984 () Bool)

(assert (=> b!4848878 m!5846984))

(declare-fun m!5846986 () Bool)

(assert (=> b!4848878 m!5846986))

(declare-fun m!5846988 () Bool)

(assert (=> b!4848879 m!5846988))

(declare-fun m!5846990 () Bool)

(assert (=> b!4848879 m!5846990))

(declare-fun m!5846992 () Bool)

(assert (=> b!4848875 m!5846992))

(declare-fun m!5846994 () Bool)

(assert (=> b!4848875 m!5846994))

(declare-fun m!5846996 () Bool)

(assert (=> b!4848875 m!5846996))

(declare-fun m!5846998 () Bool)

(assert (=> b!4848875 m!5846998))

(declare-fun m!5847000 () Bool)

(assert (=> b!4848875 m!5847000))

(assert (=> b!4848875 m!5846992))

(declare-fun m!5847002 () Bool)

(assert (=> b!4848875 m!5847002))

(declare-fun m!5847004 () Bool)

(assert (=> start!505550 m!5847004))

(declare-fun m!5847006 () Bool)

(assert (=> start!505550 m!5847006))

(push 1)

(assert (not b!4848878))

(assert tp_is_empty!35205)

(assert (not b!4848877))

(assert (not b!4848874))

(assert (not b!4848879))

(assert (not b!4848872))

(assert (not start!505550))

(assert (not b!4848876))

(assert (not b!4848875))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1555849 () Bool)

(declare-fun res!2069158 () Bool)

(declare-fun e!3030943 () Bool)

(assert (=> d!1555849 (=> res!2069158 e!3030943)))

(assert (=> d!1555849 (= res!2069158 (is-Nil!55569 (toList!7865 lm!2646)))))

(assert (=> d!1555849 (= (forall!12958 (toList!7865 lm!2646) lambda!242605) e!3030943)))

(declare-fun b!4848908 () Bool)

(declare-fun e!3030944 () Bool)

(assert (=> b!4848908 (= e!3030943 e!3030944)))

(declare-fun res!2069159 () Bool)

(assert (=> b!4848908 (=> (not res!2069159) (not e!3030944))))

(declare-fun dynLambda!22359 (Int tuple2!59272) Bool)

(assert (=> b!4848908 (= res!2069159 (dynLambda!22359 lambda!242605 (h!62006 (toList!7865 lm!2646))))))

(declare-fun b!4848909 () Bool)

(assert (=> b!4848909 (= e!3030944 (forall!12958 (t!363189 (toList!7865 lm!2646)) lambda!242605))))

(assert (= (and d!1555849 (not res!2069158)) b!4848908))

(assert (= (and b!4848908 res!2069159) b!4848909))

(declare-fun b_lambda!192635 () Bool)

(assert (=> (not b_lambda!192635) (not b!4848908)))

(declare-fun m!5847044 () Bool)

(assert (=> b!4848908 m!5847044))

(declare-fun m!5847046 () Bool)

(assert (=> b!4848909 m!5847046))

(assert (=> start!505550 d!1555849))

(declare-fun d!1555851 () Bool)

(declare-fun isStrictlySorted!1082 (List!55693) Bool)

(assert (=> d!1555851 (= (inv!71254 lm!2646) (isStrictlySorted!1082 (toList!7865 lm!2646)))))

(declare-fun bs!1172609 () Bool)

(assert (= bs!1172609 d!1555851))

(declare-fun m!5847048 () Bool)

(assert (=> bs!1172609 m!5847048))

(assert (=> start!505550 d!1555851))

(declare-fun d!1555853 () Bool)

(declare-datatypes ((Option!13682 0))(
  ( (None!13681) (Some!13681 (v!49454 List!55692)) )
))
(declare-fun get!19044 (Option!13682) List!55692)

(declare-fun getValueByKey!2733 (List!55693 (_ BitVec 64)) Option!13682)

(assert (=> d!1555853 (= (apply!13448 lm!2646 lt!1989141) (get!19044 (getValueByKey!2733 (toList!7865 lm!2646) lt!1989141)))))

(declare-fun bs!1172610 () Bool)

(assert (= bs!1172610 d!1555853))

(declare-fun m!5847050 () Bool)

(assert (=> bs!1172610 m!5847050))

(assert (=> bs!1172610 m!5847050))

(declare-fun m!5847052 () Bool)

(assert (=> bs!1172610 m!5847052))

(assert (=> b!4848875 d!1555853))

(declare-fun d!1555855 () Bool)

(declare-fun isEmpty!29738 (Option!13680) Bool)

(assert (=> d!1555855 (= (isDefined!10772 (getPair!1095 lt!1989146 key!6445)) (not (isEmpty!29738 (getPair!1095 lt!1989146 key!6445))))))

(declare-fun bs!1172611 () Bool)

(assert (= bs!1172611 d!1555855))

(assert (=> bs!1172611 m!5846992))

(declare-fun m!5847054 () Bool)

(assert (=> bs!1172611 m!5847054))

(assert (=> b!4848875 d!1555855))

(declare-fun d!1555857 () Bool)

(assert (=> d!1555857 (contains!19227 (toList!7865 lm!2646) (tuple2!59273 lt!1989141 lt!1989146))))

(declare-fun lt!1989171 () Unit!145708)

(declare-fun choose!35470 (ListLongMap!6473 (_ BitVec 64) List!55692) Unit!145708)

(assert (=> d!1555857 (= lt!1989171 (choose!35470 lm!2646 lt!1989141 lt!1989146))))

(assert (=> d!1555857 (contains!19228 lm!2646 lt!1989141)))

(assert (=> d!1555857 (= (lemmaGetValueImpliesTupleContained!772 lm!2646 lt!1989141 lt!1989146) lt!1989171)))

(declare-fun bs!1172612 () Bool)

(assert (= bs!1172612 d!1555857))

(declare-fun m!5847056 () Bool)

(assert (=> bs!1172612 m!5847056))

(declare-fun m!5847058 () Bool)

(assert (=> bs!1172612 m!5847058))

(assert (=> bs!1172612 m!5846988))

(assert (=> b!4848875 d!1555857))

(declare-fun d!1555859 () Bool)

(assert (=> d!1555859 (dynLambda!22359 lambda!242605 lt!1989145)))

(declare-fun lt!1989174 () Unit!145708)

(declare-fun choose!35471 (List!55693 Int tuple2!59272) Unit!145708)

(assert (=> d!1555859 (= lt!1989174 (choose!35471 (toList!7865 lm!2646) lambda!242605 lt!1989145))))

(declare-fun e!3030947 () Bool)

(assert (=> d!1555859 e!3030947))

(declare-fun res!2069162 () Bool)

(assert (=> d!1555859 (=> (not res!2069162) (not e!3030947))))

(assert (=> d!1555859 (= res!2069162 (forall!12958 (toList!7865 lm!2646) lambda!242605))))

(assert (=> d!1555859 (= (forallContained!4546 (toList!7865 lm!2646) lambda!242605 lt!1989145) lt!1989174)))

(declare-fun b!4848913 () Bool)

(assert (=> b!4848913 (= e!3030947 (contains!19227 (toList!7865 lm!2646) lt!1989145))))

(assert (= (and d!1555859 res!2069162) b!4848913))

(declare-fun b_lambda!192637 () Bool)

(assert (=> (not b_lambda!192637) (not d!1555859)))

(declare-fun m!5847060 () Bool)

(assert (=> d!1555859 m!5847060))

(declare-fun m!5847062 () Bool)

(assert (=> d!1555859 m!5847062))

(assert (=> d!1555859 m!5847004))

(assert (=> b!4848913 m!5846998))

(assert (=> b!4848875 d!1555859))

(declare-fun b!4848932 () Bool)

(declare-fun res!2069173 () Bool)

(declare-fun e!3030959 () Bool)

(assert (=> b!4848932 (=> (not res!2069173) (not e!3030959))))

(declare-fun lt!1989177 () Option!13680)

(declare-fun get!19045 (Option!13680) tuple2!59270)

(assert (=> b!4848932 (= res!2069173 (= (_1!32929 (get!19045 lt!1989177)) key!6445))))

(declare-fun b!4848933 () Bool)

(declare-fun e!3030962 () Option!13680)

(assert (=> b!4848933 (= e!3030962 (Some!13679 (h!62005 lt!1989146)))))

(declare-fun d!1555863 () Bool)

(declare-fun e!3030958 () Bool)

(assert (=> d!1555863 e!3030958))

(declare-fun res!2069174 () Bool)

(assert (=> d!1555863 (=> res!2069174 e!3030958)))

(declare-fun e!3030961 () Bool)

(assert (=> d!1555863 (= res!2069174 e!3030961)))

(declare-fun res!2069172 () Bool)

(assert (=> d!1555863 (=> (not res!2069172) (not e!3030961))))

(assert (=> d!1555863 (= res!2069172 (isEmpty!29738 lt!1989177))))

(assert (=> d!1555863 (= lt!1989177 e!3030962)))

(declare-fun c!825265 () Bool)

(assert (=> d!1555863 (= c!825265 (and (is-Cons!55568 lt!1989146) (= (_1!32929 (h!62005 lt!1989146)) key!6445)))))

(declare-fun noDuplicateKeys!2593 (List!55692) Bool)

(assert (=> d!1555863 (noDuplicateKeys!2593 lt!1989146)))

(assert (=> d!1555863 (= (getPair!1095 lt!1989146 key!6445) lt!1989177)))

(declare-fun b!4848934 () Bool)

(declare-fun contains!19231 (List!55692 tuple2!59270) Bool)

(assert (=> b!4848934 (= e!3030959 (contains!19231 lt!1989146 (get!19045 lt!1989177)))))

(declare-fun b!4848935 () Bool)

(assert (=> b!4848935 (= e!3030958 e!3030959)))

(declare-fun res!2069171 () Bool)

(assert (=> b!4848935 (=> (not res!2069171) (not e!3030959))))

(assert (=> b!4848935 (= res!2069171 (isDefined!10772 lt!1989177))))

(declare-fun b!4848936 () Bool)

(declare-fun e!3030960 () Option!13680)

(assert (=> b!4848936 (= e!3030962 e!3030960)))

(declare-fun c!825266 () Bool)

(assert (=> b!4848936 (= c!825266 (is-Cons!55568 lt!1989146))))

(declare-fun b!4848937 () Bool)

(assert (=> b!4848937 (= e!3030960 None!13679)))

(declare-fun b!4848938 () Bool)

(assert (=> b!4848938 (= e!3030960 (getPair!1095 (t!363188 lt!1989146) key!6445))))

(declare-fun b!4848939 () Bool)

(assert (=> b!4848939 (= e!3030961 (not (containsKey!4691 lt!1989146 key!6445)))))

(assert (= (and d!1555863 c!825265) b!4848933))

(assert (= (and d!1555863 (not c!825265)) b!4848936))

(assert (= (and b!4848936 c!825266) b!4848938))

(assert (= (and b!4848936 (not c!825266)) b!4848937))

(assert (= (and d!1555863 res!2069172) b!4848939))

(assert (= (and d!1555863 (not res!2069174)) b!4848935))

(assert (= (and b!4848935 res!2069171) b!4848932))

(assert (= (and b!4848932 res!2069173) b!4848934))

(declare-fun m!5847066 () Bool)

(assert (=> b!4848934 m!5847066))

(assert (=> b!4848934 m!5847066))

(declare-fun m!5847068 () Bool)

(assert (=> b!4848934 m!5847068))

(assert (=> b!4848932 m!5847066))

(declare-fun m!5847070 () Bool)

(assert (=> b!4848938 m!5847070))

(declare-fun m!5847072 () Bool)

(assert (=> d!1555863 m!5847072))

(declare-fun m!5847074 () Bool)

(assert (=> d!1555863 m!5847074))

(declare-fun m!5847076 () Bool)

(assert (=> b!4848935 m!5847076))

(declare-fun m!5847078 () Bool)

(assert (=> b!4848939 m!5847078))

(assert (=> b!4848875 d!1555863))

(declare-fun d!1555867 () Bool)

(declare-fun lt!1989180 () Bool)

(declare-fun content!9887 (List!55693) (Set tuple2!59272))

(assert (=> d!1555867 (= lt!1989180 (set.member lt!1989145 (content!9887 (toList!7865 lm!2646))))))

(declare-fun e!3030972 () Bool)

(assert (=> d!1555867 (= lt!1989180 e!3030972)))

(declare-fun res!2069183 () Bool)

(assert (=> d!1555867 (=> (not res!2069183) (not e!3030972))))

(assert (=> d!1555867 (= res!2069183 (is-Cons!55569 (toList!7865 lm!2646)))))

(assert (=> d!1555867 (= (contains!19227 (toList!7865 lm!2646) lt!1989145) lt!1989180)))

(declare-fun b!4848948 () Bool)

(declare-fun e!3030971 () Bool)

(assert (=> b!4848948 (= e!3030972 e!3030971)))

(declare-fun res!2069184 () Bool)

(assert (=> b!4848948 (=> res!2069184 e!3030971)))

(assert (=> b!4848948 (= res!2069184 (= (h!62006 (toList!7865 lm!2646)) lt!1989145))))

(declare-fun b!4848949 () Bool)

(assert (=> b!4848949 (= e!3030971 (contains!19227 (t!363189 (toList!7865 lm!2646)) lt!1989145))))

(assert (= (and d!1555867 res!2069183) b!4848948))

(assert (= (and b!4848948 (not res!2069184)) b!4848949))

(declare-fun m!5847080 () Bool)

(assert (=> d!1555867 m!5847080))

(declare-fun m!5847082 () Bool)

(assert (=> d!1555867 m!5847082))

(declare-fun m!5847084 () Bool)

(assert (=> b!4848949 m!5847084))

(assert (=> b!4848875 d!1555867))

(declare-fun bs!1172615 () Bool)

(declare-fun d!1555869 () Bool)

(assert (= bs!1172615 (and d!1555869 start!505550)))

(declare-fun lambda!242618 () Int)

(assert (=> bs!1172615 (not (= lambda!242618 lambda!242605))))

(assert (=> d!1555869 true))

(assert (=> d!1555869 (= (allKeysSameHashInMap!2821 lm!2646 hashF!1641) (forall!12958 (toList!7865 lm!2646) lambda!242618))))

(declare-fun bs!1172616 () Bool)

(assert (= bs!1172616 d!1555869))

(declare-fun m!5847090 () Bool)

(assert (=> bs!1172616 m!5847090))

(assert (=> b!4848874 d!1555869))

(declare-fun d!1555873 () Bool)

(declare-fun e!3030983 () Bool)

(assert (=> d!1555873 e!3030983))

(declare-fun res!2069193 () Bool)

(assert (=> d!1555873 (=> res!2069193 e!3030983)))

(declare-fun lt!1989191 () Bool)

(assert (=> d!1555873 (= res!2069193 (not lt!1989191))))

(declare-fun lt!1989192 () Bool)

(assert (=> d!1555873 (= lt!1989191 lt!1989192)))

(declare-fun lt!1989190 () Unit!145708)

(declare-fun e!3030984 () Unit!145708)

(assert (=> d!1555873 (= lt!1989190 e!3030984)))

(declare-fun c!825269 () Bool)

(assert (=> d!1555873 (= c!825269 lt!1989192)))

(declare-fun containsKey!4693 (List!55693 (_ BitVec 64)) Bool)

(assert (=> d!1555873 (= lt!1989192 (containsKey!4693 (toList!7865 lm!2646) lt!1989141))))

(assert (=> d!1555873 (= (contains!19228 lm!2646 lt!1989141) lt!1989191)))

(declare-fun b!4848964 () Bool)

(declare-fun lt!1989189 () Unit!145708)

(assert (=> b!4848964 (= e!3030984 lt!1989189)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2505 (List!55693 (_ BitVec 64)) Unit!145708)

(assert (=> b!4848964 (= lt!1989189 (lemmaContainsKeyImpliesGetValueByKeyDefined!2505 (toList!7865 lm!2646) lt!1989141))))

(declare-fun isDefined!10774 (Option!13682) Bool)

(assert (=> b!4848964 (isDefined!10774 (getValueByKey!2733 (toList!7865 lm!2646) lt!1989141))))

(declare-fun b!4848965 () Bool)

(declare-fun Unit!145712 () Unit!145708)

(assert (=> b!4848965 (= e!3030984 Unit!145712)))

(declare-fun b!4848966 () Bool)

(assert (=> b!4848966 (= e!3030983 (isDefined!10774 (getValueByKey!2733 (toList!7865 lm!2646) lt!1989141)))))

(assert (= (and d!1555873 c!825269) b!4848964))

(assert (= (and d!1555873 (not c!825269)) b!4848965))

(assert (= (and d!1555873 (not res!2069193)) b!4848966))

(declare-fun m!5847096 () Bool)

(assert (=> d!1555873 m!5847096))

(declare-fun m!5847098 () Bool)

(assert (=> b!4848964 m!5847098))

(assert (=> b!4848964 m!5847050))

(assert (=> b!4848964 m!5847050))

(declare-fun m!5847100 () Bool)

(assert (=> b!4848964 m!5847100))

(assert (=> b!4848966 m!5847050))

(assert (=> b!4848966 m!5847050))

(assert (=> b!4848966 m!5847100))

(assert (=> b!4848879 d!1555873))

(declare-fun d!1555879 () Bool)

(declare-fun hash!5605 (Hashable!7505 K!17367) (_ BitVec 64))

(assert (=> d!1555879 (= (hash!5601 hashF!1641 key!6445) (hash!5605 hashF!1641 key!6445))))

(declare-fun bs!1172621 () Bool)

(assert (= bs!1172621 d!1555879))

(declare-fun m!5847102 () Bool)

(assert (=> bs!1172621 m!5847102))

(assert (=> b!4848879 d!1555879))

(declare-fun d!1555881 () Bool)

(declare-fun res!2069202 () Bool)

(declare-fun e!3030993 () Bool)

(assert (=> d!1555881 (=> res!2069202 e!3030993)))

(assert (=> d!1555881 (= res!2069202 (and (is-Cons!55568 (_2!32930 (h!62006 (toList!7865 lm!2646)))) (= (_1!32929 (h!62005 (_2!32930 (h!62006 (toList!7865 lm!2646))))) key!6445)))))

(assert (=> d!1555881 (= (containsKey!4691 (_2!32930 (h!62006 (toList!7865 lm!2646))) key!6445) e!3030993)))

(declare-fun b!4848975 () Bool)

(declare-fun e!3030994 () Bool)

(assert (=> b!4848975 (= e!3030993 e!3030994)))

(declare-fun res!2069203 () Bool)

(assert (=> b!4848975 (=> (not res!2069203) (not e!3030994))))

(assert (=> b!4848975 (= res!2069203 (is-Cons!55568 (_2!32930 (h!62006 (toList!7865 lm!2646)))))))

(declare-fun b!4848976 () Bool)

(assert (=> b!4848976 (= e!3030994 (containsKey!4691 (t!363188 (_2!32930 (h!62006 (toList!7865 lm!2646)))) key!6445))))

(assert (= (and d!1555881 (not res!2069202)) b!4848975))

(assert (= (and b!4848975 res!2069203) b!4848976))

(declare-fun m!5847108 () Bool)

(assert (=> b!4848976 m!5847108))

(assert (=> b!4848878 d!1555881))

(declare-fun d!1555887 () Bool)

(declare-fun res!2069204 () Bool)

(declare-fun e!3030995 () Bool)

(assert (=> d!1555887 (=> res!2069204 e!3030995)))

(assert (=> d!1555887 (= res!2069204 (and (is-Cons!55568 (apply!13448 lm!2646 (_1!32930 (h!62006 (toList!7865 lm!2646))))) (= (_1!32929 (h!62005 (apply!13448 lm!2646 (_1!32930 (h!62006 (toList!7865 lm!2646)))))) key!6445)))))

(assert (=> d!1555887 (= (containsKey!4691 (apply!13448 lm!2646 (_1!32930 (h!62006 (toList!7865 lm!2646)))) key!6445) e!3030995)))

(declare-fun b!4848977 () Bool)

(declare-fun e!3030996 () Bool)

(assert (=> b!4848977 (= e!3030995 e!3030996)))

(declare-fun res!2069205 () Bool)

(assert (=> b!4848977 (=> (not res!2069205) (not e!3030996))))

(assert (=> b!4848977 (= res!2069205 (is-Cons!55568 (apply!13448 lm!2646 (_1!32930 (h!62006 (toList!7865 lm!2646))))))))

(declare-fun b!4848978 () Bool)

(assert (=> b!4848978 (= e!3030996 (containsKey!4691 (t!363188 (apply!13448 lm!2646 (_1!32930 (h!62006 (toList!7865 lm!2646))))) key!6445))))

(assert (= (and d!1555887 (not res!2069204)) b!4848977))

(assert (= (and b!4848977 res!2069205) b!4848978))

(declare-fun m!5847110 () Bool)

(assert (=> b!4848978 m!5847110))

(assert (=> b!4848878 d!1555887))

(declare-fun d!1555889 () Bool)

(assert (=> d!1555889 (= (apply!13448 lm!2646 (_1!32930 (h!62006 (toList!7865 lm!2646)))) (get!19044 (getValueByKey!2733 (toList!7865 lm!2646) (_1!32930 (h!62006 (toList!7865 lm!2646))))))))

(declare-fun bs!1172622 () Bool)

(assert (= bs!1172622 d!1555889))

(declare-fun m!5847112 () Bool)

(assert (=> bs!1172622 m!5847112))

(assert (=> bs!1172622 m!5847112))

(declare-fun m!5847114 () Bool)

(assert (=> bs!1172622 m!5847114))

(assert (=> b!4848878 d!1555889))

(declare-fun bs!1172624 () Bool)

(declare-fun d!1555891 () Bool)

(assert (= bs!1172624 (and d!1555891 start!505550)))

(declare-fun lambda!242622 () Int)

(assert (=> bs!1172624 (= lambda!242622 lambda!242605)))

(declare-fun bs!1172625 () Bool)

(assert (= bs!1172625 (and d!1555891 d!1555869)))

(assert (=> bs!1172625 (not (= lambda!242622 lambda!242618))))

(assert (=> d!1555891 (not (containsKey!4691 (apply!13448 lm!2646 (_1!32930 (h!62006 (toList!7865 lm!2646)))) key!6445))))

(declare-fun lt!1989195 () Unit!145708)

(declare-fun choose!35472 (ListLongMap!6473 K!17367 (_ BitVec 64) Hashable!7505) Unit!145708)

(assert (=> d!1555891 (= lt!1989195 (choose!35472 lm!2646 key!6445 (_1!32930 (h!62006 (toList!7865 lm!2646))) hashF!1641))))

(assert (=> d!1555891 (forall!12958 (toList!7865 lm!2646) lambda!242622)))

(assert (=> d!1555891 (= (lemmaNotSameHashThenCannotContainKey!255 lm!2646 key!6445 (_1!32930 (h!62006 (toList!7865 lm!2646))) hashF!1641) lt!1989195)))

(declare-fun bs!1172626 () Bool)

(assert (= bs!1172626 d!1555891))

(assert (=> bs!1172626 m!5846982))

(assert (=> bs!1172626 m!5846982))

(assert (=> bs!1172626 m!5846984))

(declare-fun m!5847120 () Bool)

(assert (=> bs!1172626 m!5847120))

(declare-fun m!5847122 () Bool)

(assert (=> bs!1172626 m!5847122))

(assert (=> b!4848878 d!1555891))

(declare-fun d!1555895 () Bool)

(declare-fun res!2069206 () Bool)

(declare-fun e!3030997 () Bool)

(assert (=> d!1555895 (=> res!2069206 e!3030997)))

(assert (=> d!1555895 (= res!2069206 (is-Nil!55569 (toList!7865 lt!1989147)))))

(assert (=> d!1555895 (= (forall!12958 (toList!7865 lt!1989147) lambda!242605) e!3030997)))

(declare-fun b!4848979 () Bool)

(declare-fun e!3030998 () Bool)

(assert (=> b!4848979 (= e!3030997 e!3030998)))

(declare-fun res!2069207 () Bool)

(assert (=> b!4848979 (=> (not res!2069207) (not e!3030998))))

(assert (=> b!4848979 (= res!2069207 (dynLambda!22359 lambda!242605 (h!62006 (toList!7865 lt!1989147))))))

(declare-fun b!4848980 () Bool)

(assert (=> b!4848980 (= e!3030998 (forall!12958 (t!363189 (toList!7865 lt!1989147)) lambda!242605))))

(assert (= (and d!1555895 (not res!2069206)) b!4848979))

(assert (= (and b!4848979 res!2069207) b!4848980))

(declare-fun b_lambda!192641 () Bool)

(assert (=> (not b_lambda!192641) (not b!4848979)))

(declare-fun m!5847124 () Bool)

(assert (=> b!4848979 m!5847124))

(declare-fun m!5847126 () Bool)

(assert (=> b!4848980 m!5847126))

(assert (=> b!4848872 d!1555895))

(declare-fun d!1555897 () Bool)

(declare-fun tail!9535 (List!55693) List!55693)

(assert (=> d!1555897 (= (tail!9533 lm!2646) (ListLongMap!6474 (tail!9535 (toList!7865 lm!2646))))))

(declare-fun bs!1172627 () Bool)

(assert (= bs!1172627 d!1555897))

(declare-fun m!5847128 () Bool)

(assert (=> bs!1172627 m!5847128))

(assert (=> b!4848872 d!1555897))

(declare-fun bs!1172628 () Bool)

(declare-fun d!1555899 () Bool)

(assert (= bs!1172628 (and d!1555899 start!505550)))

(declare-fun lambda!242623 () Int)

(assert (=> bs!1172628 (not (= lambda!242623 lambda!242605))))

(declare-fun bs!1172629 () Bool)

(assert (= bs!1172629 (and d!1555899 d!1555869)))

(assert (=> bs!1172629 (= lambda!242623 lambda!242618)))

(declare-fun bs!1172630 () Bool)

(assert (= bs!1172630 (and d!1555899 d!1555891)))

(assert (=> bs!1172630 (not (= lambda!242623 lambda!242622))))

(assert (=> d!1555899 true))

(assert (=> d!1555899 (= (allKeysSameHashInMap!2821 lt!1989147 hashF!1641) (forall!12958 (toList!7865 lt!1989147) lambda!242623))))

(declare-fun bs!1172631 () Bool)

(assert (= bs!1172631 d!1555899))

(declare-fun m!5847130 () Bool)

(assert (=> bs!1172631 m!5847130))

(assert (=> b!4848877 d!1555899))

(declare-fun b!4848985 () Bool)

(declare-fun e!3031001 () Bool)

(declare-fun tp!1364713 () Bool)

(declare-fun tp!1364714 () Bool)

(assert (=> b!4848985 (= e!3031001 (and tp!1364713 tp!1364714))))

(assert (=> b!4848876 (= tp!1364705 e!3031001)))

(assert (= (and b!4848876 (is-Cons!55569 (toList!7865 lm!2646))) b!4848985))

(declare-fun b_lambda!192643 () Bool)

(assert (= b_lambda!192635 (or start!505550 b_lambda!192643)))

(declare-fun bs!1172632 () Bool)

(declare-fun d!1555901 () Bool)

(assert (= bs!1172632 (and d!1555901 start!505550)))

(assert (=> bs!1172632 (= (dynLambda!22359 lambda!242605 (h!62006 (toList!7865 lm!2646))) (noDuplicateKeys!2593 (_2!32930 (h!62006 (toList!7865 lm!2646)))))))

(declare-fun m!5847132 () Bool)

(assert (=> bs!1172632 m!5847132))

(assert (=> b!4848908 d!1555901))

(declare-fun b_lambda!192645 () Bool)

(assert (= b_lambda!192641 (or start!505550 b_lambda!192645)))

(declare-fun bs!1172633 () Bool)

(declare-fun d!1555903 () Bool)

(assert (= bs!1172633 (and d!1555903 start!505550)))

(assert (=> bs!1172633 (= (dynLambda!22359 lambda!242605 (h!62006 (toList!7865 lt!1989147))) (noDuplicateKeys!2593 (_2!32930 (h!62006 (toList!7865 lt!1989147)))))))

(declare-fun m!5847134 () Bool)

(assert (=> bs!1172633 m!5847134))

(assert (=> b!4848979 d!1555903))

(declare-fun b_lambda!192647 () Bool)

(assert (= b_lambda!192637 (or start!505550 b_lambda!192647)))

(declare-fun bs!1172634 () Bool)

(declare-fun d!1555905 () Bool)

(assert (= bs!1172634 (and d!1555905 start!505550)))

(assert (=> bs!1172634 (= (dynLambda!22359 lambda!242605 lt!1989145) (noDuplicateKeys!2593 (_2!32930 lt!1989145)))))

(declare-fun m!5847136 () Bool)

(assert (=> bs!1172634 m!5847136))

(assert (=> d!1555859 d!1555905))

(push 1)

(assert (not bs!1172632))

(assert (not b!4848966))

(assert (not d!1555853))

(assert (not b_lambda!192645))

(assert (not d!1555889))

(assert (not b!4848980))

(assert (not b!4848976))

(assert (not b!4848935))

(assert (not d!1555851))

(assert (not b!4848978))

(assert (not d!1555857))

(assert (not d!1555897))

(assert (not b!4848939))

(assert (not d!1555879))

(assert (not d!1555863))

(assert (not b!4848909))

(assert (not b!4848938))

(assert tp_is_empty!35205)

(assert (not d!1555891))

(assert (not b!4848949))

(assert (not d!1555899))

(assert (not d!1555869))

(assert (not d!1555859))

(assert (not b!4848913))

(assert (not bs!1172634))

(assert (not b_lambda!192647))

(assert (not b!4848985))

(assert (not b!4848932))

(assert (not d!1555873))

(assert (not b_lambda!192643))

(assert (not d!1555867))

(assert (not bs!1172633))

(assert (not b!4848964))

(assert (not b!4848934))

(assert (not d!1555855))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!1989223 () Bool)

(declare-fun d!1555933 () Bool)

(assert (=> d!1555933 (= lt!1989223 (set.member (tuple2!59273 lt!1989141 lt!1989146) (content!9887 (toList!7865 lm!2646))))))

(declare-fun e!3031038 () Bool)

(assert (=> d!1555933 (= lt!1989223 e!3031038)))

(declare-fun res!2069234 () Bool)

(assert (=> d!1555933 (=> (not res!2069234) (not e!3031038))))

(assert (=> d!1555933 (= res!2069234 (is-Cons!55569 (toList!7865 lm!2646)))))

(assert (=> d!1555933 (= (contains!19227 (toList!7865 lm!2646) (tuple2!59273 lt!1989141 lt!1989146)) lt!1989223)))

(declare-fun b!4849036 () Bool)

(declare-fun e!3031037 () Bool)

(assert (=> b!4849036 (= e!3031038 e!3031037)))

(declare-fun res!2069235 () Bool)

(assert (=> b!4849036 (=> res!2069235 e!3031037)))

(assert (=> b!4849036 (= res!2069235 (= (h!62006 (toList!7865 lm!2646)) (tuple2!59273 lt!1989141 lt!1989146)))))

(declare-fun b!4849037 () Bool)

(assert (=> b!4849037 (= e!3031037 (contains!19227 (t!363189 (toList!7865 lm!2646)) (tuple2!59273 lt!1989141 lt!1989146)))))

(assert (= (and d!1555933 res!2069234) b!4849036))

(assert (= (and b!4849036 (not res!2069235)) b!4849037))

(assert (=> d!1555933 m!5847080))

(declare-fun m!5847196 () Bool)

(assert (=> d!1555933 m!5847196))

(declare-fun m!5847198 () Bool)

(assert (=> b!4849037 m!5847198))

(assert (=> d!1555857 d!1555933))

(declare-fun d!1555935 () Bool)

(assert (=> d!1555935 (contains!19227 (toList!7865 lm!2646) (tuple2!59273 lt!1989141 lt!1989146))))

(assert (=> d!1555935 true))

(declare-fun _$41!555 () Unit!145708)

(assert (=> d!1555935 (= (choose!35470 lm!2646 lt!1989141 lt!1989146) _$41!555)))

(declare-fun bs!1172647 () Bool)

(assert (= bs!1172647 d!1555935))

(assert (=> bs!1172647 m!5847056))

(assert (=> d!1555857 d!1555935))

(assert (=> d!1555857 d!1555873))

(declare-fun d!1555937 () Bool)

(assert (=> d!1555937 (= (get!19044 (getValueByKey!2733 (toList!7865 lm!2646) (_1!32930 (h!62006 (toList!7865 lm!2646))))) (v!49454 (getValueByKey!2733 (toList!7865 lm!2646) (_1!32930 (h!62006 (toList!7865 lm!2646))))))))

(assert (=> d!1555889 d!1555937))

(declare-fun b!4849049 () Bool)

(declare-fun e!3031044 () Option!13682)

(assert (=> b!4849049 (= e!3031044 (getValueByKey!2733 (t!363189 (toList!7865 lm!2646)) (_1!32930 (h!62006 (toList!7865 lm!2646)))))))

(declare-fun b!4849050 () Bool)

(assert (=> b!4849050 (= e!3031044 None!13681)))

(declare-fun b!4849047 () Bool)

(declare-fun e!3031043 () Option!13682)

(assert (=> b!4849047 (= e!3031043 (Some!13681 (_2!32930 (h!62006 (toList!7865 lm!2646)))))))

(declare-fun d!1555939 () Bool)

(declare-fun c!825283 () Bool)

(assert (=> d!1555939 (= c!825283 (and (is-Cons!55569 (toList!7865 lm!2646)) (= (_1!32930 (h!62006 (toList!7865 lm!2646))) (_1!32930 (h!62006 (toList!7865 lm!2646))))))))

(assert (=> d!1555939 (= (getValueByKey!2733 (toList!7865 lm!2646) (_1!32930 (h!62006 (toList!7865 lm!2646)))) e!3031043)))

(declare-fun b!4849048 () Bool)

(assert (=> b!4849048 (= e!3031043 e!3031044)))

(declare-fun c!825284 () Bool)

(assert (=> b!4849048 (= c!825284 (and (is-Cons!55569 (toList!7865 lm!2646)) (not (= (_1!32930 (h!62006 (toList!7865 lm!2646))) (_1!32930 (h!62006 (toList!7865 lm!2646)))))))))

(assert (= (and d!1555939 c!825283) b!4849047))

(assert (= (and d!1555939 (not c!825283)) b!4849048))

(assert (= (and b!4849048 c!825284) b!4849049))

(assert (= (and b!4849048 (not c!825284)) b!4849050))

(declare-fun m!5847200 () Bool)

(assert (=> b!4849049 m!5847200))

(assert (=> d!1555889 d!1555939))

(declare-fun d!1555941 () Bool)

(declare-fun res!2069240 () Bool)

(declare-fun e!3031049 () Bool)

(assert (=> d!1555941 (=> res!2069240 e!3031049)))

(assert (=> d!1555941 (= res!2069240 (not (is-Cons!55568 (_2!32930 lt!1989145))))))

(assert (=> d!1555941 (= (noDuplicateKeys!2593 (_2!32930 lt!1989145)) e!3031049)))

(declare-fun b!4849055 () Bool)

(declare-fun e!3031050 () Bool)

(assert (=> b!4849055 (= e!3031049 e!3031050)))

(declare-fun res!2069241 () Bool)

(assert (=> b!4849055 (=> (not res!2069241) (not e!3031050))))

(assert (=> b!4849055 (= res!2069241 (not (containsKey!4691 (t!363188 (_2!32930 lt!1989145)) (_1!32929 (h!62005 (_2!32930 lt!1989145))))))))

(declare-fun b!4849056 () Bool)

(assert (=> b!4849056 (= e!3031050 (noDuplicateKeys!2593 (t!363188 (_2!32930 lt!1989145))))))

(assert (= (and d!1555941 (not res!2069240)) b!4849055))

(assert (= (and b!4849055 res!2069241) b!4849056))

(declare-fun m!5847202 () Bool)

(assert (=> b!4849055 m!5847202))

(declare-fun m!5847204 () Bool)

(assert (=> b!4849056 m!5847204))

(assert (=> bs!1172634 d!1555941))

(declare-fun d!1555943 () Bool)

(declare-fun res!2069242 () Bool)

(declare-fun e!3031051 () Bool)

(assert (=> d!1555943 (=> res!2069242 e!3031051)))

(assert (=> d!1555943 (= res!2069242 (is-Nil!55569 (toList!7865 lt!1989147)))))

(assert (=> d!1555943 (= (forall!12958 (toList!7865 lt!1989147) lambda!242623) e!3031051)))

(declare-fun b!4849057 () Bool)

(declare-fun e!3031052 () Bool)

(assert (=> b!4849057 (= e!3031051 e!3031052)))

(declare-fun res!2069243 () Bool)

(assert (=> b!4849057 (=> (not res!2069243) (not e!3031052))))

(assert (=> b!4849057 (= res!2069243 (dynLambda!22359 lambda!242623 (h!62006 (toList!7865 lt!1989147))))))

(declare-fun b!4849058 () Bool)

(assert (=> b!4849058 (= e!3031052 (forall!12958 (t!363189 (toList!7865 lt!1989147)) lambda!242623))))

(assert (= (and d!1555943 (not res!2069242)) b!4849057))

(assert (= (and b!4849057 res!2069243) b!4849058))

(declare-fun b_lambda!192659 () Bool)

(assert (=> (not b_lambda!192659) (not b!4849057)))

(declare-fun m!5847206 () Bool)

(assert (=> b!4849057 m!5847206))

(declare-fun m!5847208 () Bool)

(assert (=> b!4849058 m!5847208))

(assert (=> d!1555899 d!1555943))

(declare-fun d!1555945 () Bool)

(assert (=> d!1555945 (= (isDefined!10772 lt!1989177) (not (isEmpty!29738 lt!1989177)))))

(declare-fun bs!1172648 () Bool)

(assert (= bs!1172648 d!1555945))

(assert (=> bs!1172648 m!5847072))

(assert (=> b!4848935 d!1555945))

(declare-fun d!1555947 () Bool)

(declare-fun choose!35476 (Hashable!7505 K!17367) (_ BitVec 64))

(assert (=> d!1555947 (= (hash!5605 hashF!1641 key!6445) (choose!35476 hashF!1641 key!6445))))

(declare-fun bs!1172649 () Bool)

(assert (= bs!1172649 d!1555947))

(declare-fun m!5847210 () Bool)

(assert (=> bs!1172649 m!5847210))

(assert (=> d!1555879 d!1555947))

(declare-fun d!1555949 () Bool)

(declare-fun lt!1989226 () Bool)

(declare-fun content!9889 (List!55692) (Set tuple2!59270))

(assert (=> d!1555949 (= lt!1989226 (set.member (get!19045 lt!1989177) (content!9889 lt!1989146)))))

(declare-fun e!3031057 () Bool)

(assert (=> d!1555949 (= lt!1989226 e!3031057)))

(declare-fun res!2069248 () Bool)

(assert (=> d!1555949 (=> (not res!2069248) (not e!3031057))))

(assert (=> d!1555949 (= res!2069248 (is-Cons!55568 lt!1989146))))

(assert (=> d!1555949 (= (contains!19231 lt!1989146 (get!19045 lt!1989177)) lt!1989226)))

(declare-fun b!4849063 () Bool)

(declare-fun e!3031058 () Bool)

(assert (=> b!4849063 (= e!3031057 e!3031058)))

(declare-fun res!2069249 () Bool)

(assert (=> b!4849063 (=> res!2069249 e!3031058)))

(assert (=> b!4849063 (= res!2069249 (= (h!62005 lt!1989146) (get!19045 lt!1989177)))))

(declare-fun b!4849064 () Bool)

(assert (=> b!4849064 (= e!3031058 (contains!19231 (t!363188 lt!1989146) (get!19045 lt!1989177)))))

(assert (= (and d!1555949 res!2069248) b!4849063))

(assert (= (and b!4849063 (not res!2069249)) b!4849064))

(declare-fun m!5847212 () Bool)

(assert (=> d!1555949 m!5847212))

(assert (=> d!1555949 m!5847066))

(declare-fun m!5847214 () Bool)

(assert (=> d!1555949 m!5847214))

(assert (=> b!4849064 m!5847066))

(declare-fun m!5847216 () Bool)

(assert (=> b!4849064 m!5847216))

(assert (=> b!4848934 d!1555949))

(declare-fun d!1555951 () Bool)

(assert (=> d!1555951 (= (get!19045 lt!1989177) (v!49451 lt!1989177))))

(assert (=> b!4848934 d!1555951))

(declare-fun d!1555953 () Bool)

(assert (=> d!1555953 (dynLambda!22359 lambda!242605 lt!1989145)))

(assert (=> d!1555953 true))

(declare-fun _$7!2476 () Unit!145708)

(assert (=> d!1555953 (= (choose!35471 (toList!7865 lm!2646) lambda!242605 lt!1989145) _$7!2476)))

(declare-fun b_lambda!192661 () Bool)

(assert (=> (not b_lambda!192661) (not d!1555953)))

(declare-fun bs!1172650 () Bool)

(assert (= bs!1172650 d!1555953))

(assert (=> bs!1172650 m!5847060))

(assert (=> d!1555859 d!1555953))

(assert (=> d!1555859 d!1555849))

(assert (=> d!1555891 d!1555887))

(assert (=> d!1555891 d!1555889))

(declare-fun d!1555955 () Bool)

(assert (=> d!1555955 (not (containsKey!4691 (apply!13448 lm!2646 (_1!32930 (h!62006 (toList!7865 lm!2646)))) key!6445))))

(assert (=> d!1555955 true))

(declare-fun _$39!496 () Unit!145708)

(assert (=> d!1555955 (= (choose!35472 lm!2646 key!6445 (_1!32930 (h!62006 (toList!7865 lm!2646))) hashF!1641) _$39!496)))

(declare-fun bs!1172651 () Bool)

(assert (= bs!1172651 d!1555955))

(assert (=> bs!1172651 m!5846982))

(assert (=> bs!1172651 m!5846982))

(assert (=> bs!1172651 m!5846984))

(assert (=> d!1555891 d!1555955))

(declare-fun d!1555957 () Bool)

(declare-fun res!2069250 () Bool)

(declare-fun e!3031059 () Bool)

(assert (=> d!1555957 (=> res!2069250 e!3031059)))

(assert (=> d!1555957 (= res!2069250 (is-Nil!55569 (toList!7865 lm!2646)))))

(assert (=> d!1555957 (= (forall!12958 (toList!7865 lm!2646) lambda!242622) e!3031059)))

(declare-fun b!4849065 () Bool)

(declare-fun e!3031060 () Bool)

(assert (=> b!4849065 (= e!3031059 e!3031060)))

(declare-fun res!2069251 () Bool)

(assert (=> b!4849065 (=> (not res!2069251) (not e!3031060))))

(assert (=> b!4849065 (= res!2069251 (dynLambda!22359 lambda!242622 (h!62006 (toList!7865 lm!2646))))))

(declare-fun b!4849066 () Bool)

(assert (=> b!4849066 (= e!3031060 (forall!12958 (t!363189 (toList!7865 lm!2646)) lambda!242622))))

(assert (= (and d!1555957 (not res!2069250)) b!4849065))

(assert (= (and b!4849065 res!2069251) b!4849066))

(declare-fun b_lambda!192663 () Bool)

(assert (=> (not b_lambda!192663) (not b!4849065)))

(declare-fun m!5847218 () Bool)

(assert (=> b!4849065 m!5847218))

(declare-fun m!5847220 () Bool)

(assert (=> b!4849066 m!5847220))

(assert (=> d!1555891 d!1555957))

(declare-fun d!1555959 () Bool)

(declare-fun res!2069252 () Bool)

(declare-fun e!3031061 () Bool)

(assert (=> d!1555959 (=> res!2069252 e!3031061)))

(assert (=> d!1555959 (= res!2069252 (is-Nil!55569 (t!363189 (toList!7865 lm!2646))))))

(assert (=> d!1555959 (= (forall!12958 (t!363189 (toList!7865 lm!2646)) lambda!242605) e!3031061)))

(declare-fun b!4849067 () Bool)

(declare-fun e!3031062 () Bool)

(assert (=> b!4849067 (= e!3031061 e!3031062)))

(declare-fun res!2069253 () Bool)

(assert (=> b!4849067 (=> (not res!2069253) (not e!3031062))))

(assert (=> b!4849067 (= res!2069253 (dynLambda!22359 lambda!242605 (h!62006 (t!363189 (toList!7865 lm!2646)))))))

(declare-fun b!4849068 () Bool)

(assert (=> b!4849068 (= e!3031062 (forall!12958 (t!363189 (t!363189 (toList!7865 lm!2646))) lambda!242605))))

(assert (= (and d!1555959 (not res!2069252)) b!4849067))

(assert (= (and b!4849067 res!2069253) b!4849068))

(declare-fun b_lambda!192665 () Bool)

(assert (=> (not b_lambda!192665) (not b!4849067)))

(declare-fun m!5847222 () Bool)

(assert (=> b!4849067 m!5847222))

(declare-fun m!5847224 () Bool)

(assert (=> b!4849068 m!5847224))

(assert (=> b!4848909 d!1555959))

(declare-fun d!1555961 () Bool)

(assert (=> d!1555961 (= (isEmpty!29738 lt!1989177) (not (is-Some!13679 lt!1989177)))))

(assert (=> d!1555863 d!1555961))

(declare-fun d!1555963 () Bool)

(declare-fun res!2069254 () Bool)

(declare-fun e!3031063 () Bool)

(assert (=> d!1555963 (=> res!2069254 e!3031063)))

(assert (=> d!1555963 (= res!2069254 (not (is-Cons!55568 lt!1989146)))))

(assert (=> d!1555963 (= (noDuplicateKeys!2593 lt!1989146) e!3031063)))

(declare-fun b!4849069 () Bool)

(declare-fun e!3031064 () Bool)

(assert (=> b!4849069 (= e!3031063 e!3031064)))

(declare-fun res!2069255 () Bool)

(assert (=> b!4849069 (=> (not res!2069255) (not e!3031064))))

(assert (=> b!4849069 (= res!2069255 (not (containsKey!4691 (t!363188 lt!1989146) (_1!32929 (h!62005 lt!1989146)))))))

(declare-fun b!4849070 () Bool)

(assert (=> b!4849070 (= e!3031064 (noDuplicateKeys!2593 (t!363188 lt!1989146)))))

(assert (= (and d!1555963 (not res!2069254)) b!4849069))

(assert (= (and b!4849069 res!2069255) b!4849070))

(declare-fun m!5847226 () Bool)

(assert (=> b!4849069 m!5847226))

(declare-fun m!5847228 () Bool)

(assert (=> b!4849070 m!5847228))

(assert (=> d!1555863 d!1555963))

(declare-fun d!1555965 () Bool)

(declare-fun res!2069256 () Bool)

(declare-fun e!3031065 () Bool)

(assert (=> d!1555965 (=> res!2069256 e!3031065)))

(assert (=> d!1555965 (= res!2069256 (is-Nil!55569 (t!363189 (toList!7865 lt!1989147))))))

(assert (=> d!1555965 (= (forall!12958 (t!363189 (toList!7865 lt!1989147)) lambda!242605) e!3031065)))

(declare-fun b!4849071 () Bool)

(declare-fun e!3031066 () Bool)

(assert (=> b!4849071 (= e!3031065 e!3031066)))

(declare-fun res!2069257 () Bool)

(assert (=> b!4849071 (=> (not res!2069257) (not e!3031066))))

(assert (=> b!4849071 (= res!2069257 (dynLambda!22359 lambda!242605 (h!62006 (t!363189 (toList!7865 lt!1989147)))))))

(declare-fun b!4849072 () Bool)

(assert (=> b!4849072 (= e!3031066 (forall!12958 (t!363189 (t!363189 (toList!7865 lt!1989147))) lambda!242605))))

(assert (= (and d!1555965 (not res!2069256)) b!4849071))

(assert (= (and b!4849071 res!2069257) b!4849072))

(declare-fun b_lambda!192667 () Bool)

(assert (=> (not b_lambda!192667) (not b!4849071)))

(declare-fun m!5847230 () Bool)

(assert (=> b!4849071 m!5847230))

(declare-fun m!5847232 () Bool)

(assert (=> b!4849072 m!5847232))

(assert (=> b!4848980 d!1555965))

(declare-fun d!1555967 () Bool)

(assert (=> d!1555967 (= (get!19044 (getValueByKey!2733 (toList!7865 lm!2646) lt!1989141)) (v!49454 (getValueByKey!2733 (toList!7865 lm!2646) lt!1989141)))))

(assert (=> d!1555853 d!1555967))

(declare-fun b!4849075 () Bool)

(declare-fun e!3031068 () Option!13682)

(assert (=> b!4849075 (= e!3031068 (getValueByKey!2733 (t!363189 (toList!7865 lm!2646)) lt!1989141))))

(declare-fun b!4849076 () Bool)

(assert (=> b!4849076 (= e!3031068 None!13681)))

(declare-fun b!4849073 () Bool)

(declare-fun e!3031067 () Option!13682)

(assert (=> b!4849073 (= e!3031067 (Some!13681 (_2!32930 (h!62006 (toList!7865 lm!2646)))))))

(declare-fun d!1555969 () Bool)

(declare-fun c!825285 () Bool)

(assert (=> d!1555969 (= c!825285 (and (is-Cons!55569 (toList!7865 lm!2646)) (= (_1!32930 (h!62006 (toList!7865 lm!2646))) lt!1989141)))))

(assert (=> d!1555969 (= (getValueByKey!2733 (toList!7865 lm!2646) lt!1989141) e!3031067)))

(declare-fun b!4849074 () Bool)

(assert (=> b!4849074 (= e!3031067 e!3031068)))

(declare-fun c!825286 () Bool)

(assert (=> b!4849074 (= c!825286 (and (is-Cons!55569 (toList!7865 lm!2646)) (not (= (_1!32930 (h!62006 (toList!7865 lm!2646))) lt!1989141))))))

(assert (= (and d!1555969 c!825285) b!4849073))

(assert (= (and d!1555969 (not c!825285)) b!4849074))

(assert (= (and b!4849074 c!825286) b!4849075))

(assert (= (and b!4849074 (not c!825286)) b!4849076))

(declare-fun m!5847234 () Bool)

(assert (=> b!4849075 m!5847234))

(assert (=> d!1555853 d!1555969))

(declare-fun d!1555971 () Bool)

(declare-fun c!825289 () Bool)

(assert (=> d!1555971 (= c!825289 (is-Nil!55569 (toList!7865 lm!2646)))))

(declare-fun e!3031071 () (Set tuple2!59272))

(assert (=> d!1555971 (= (content!9887 (toList!7865 lm!2646)) e!3031071)))

(declare-fun b!4849081 () Bool)

(assert (=> b!4849081 (= e!3031071 (as set.empty (Set tuple2!59272)))))

(declare-fun b!4849082 () Bool)

(assert (=> b!4849082 (= e!3031071 (set.union (set.insert (h!62006 (toList!7865 lm!2646)) (as set.empty (Set tuple2!59272))) (content!9887 (t!363189 (toList!7865 lm!2646)))))))

(assert (= (and d!1555971 c!825289) b!4849081))

(assert (= (and d!1555971 (not c!825289)) b!4849082))

(declare-fun m!5847236 () Bool)

(assert (=> b!4849082 m!5847236))

(declare-fun m!5847238 () Bool)

(assert (=> b!4849082 m!5847238))

(assert (=> d!1555867 d!1555971))

(declare-fun d!1555973 () Bool)

(declare-fun res!2069258 () Bool)

(declare-fun e!3031072 () Bool)

(assert (=> d!1555973 (=> res!2069258 e!3031072)))

(assert (=> d!1555973 (= res!2069258 (and (is-Cons!55568 lt!1989146) (= (_1!32929 (h!62005 lt!1989146)) key!6445)))))

(assert (=> d!1555973 (= (containsKey!4691 lt!1989146 key!6445) e!3031072)))

(declare-fun b!4849083 () Bool)

(declare-fun e!3031073 () Bool)

(assert (=> b!4849083 (= e!3031072 e!3031073)))

(declare-fun res!2069259 () Bool)

(assert (=> b!4849083 (=> (not res!2069259) (not e!3031073))))

(assert (=> b!4849083 (= res!2069259 (is-Cons!55568 lt!1989146))))

(declare-fun b!4849084 () Bool)

(assert (=> b!4849084 (= e!3031073 (containsKey!4691 (t!363188 lt!1989146) key!6445))))

(assert (= (and d!1555973 (not res!2069258)) b!4849083))

(assert (= (and b!4849083 res!2069259) b!4849084))

(declare-fun m!5847240 () Bool)

(assert (=> b!4849084 m!5847240))

(assert (=> b!4848939 d!1555973))

(declare-fun d!1555975 () Bool)

(declare-fun lt!1989227 () Bool)

(assert (=> d!1555975 (= lt!1989227 (set.member lt!1989145 (content!9887 (t!363189 (toList!7865 lm!2646)))))))

(declare-fun e!3031075 () Bool)

(assert (=> d!1555975 (= lt!1989227 e!3031075)))

(declare-fun res!2069260 () Bool)

(assert (=> d!1555975 (=> (not res!2069260) (not e!3031075))))

(assert (=> d!1555975 (= res!2069260 (is-Cons!55569 (t!363189 (toList!7865 lm!2646))))))

(assert (=> d!1555975 (= (contains!19227 (t!363189 (toList!7865 lm!2646)) lt!1989145) lt!1989227)))

(declare-fun b!4849085 () Bool)

(declare-fun e!3031074 () Bool)

(assert (=> b!4849085 (= e!3031075 e!3031074)))

(declare-fun res!2069261 () Bool)

(assert (=> b!4849085 (=> res!2069261 e!3031074)))

(assert (=> b!4849085 (= res!2069261 (= (h!62006 (t!363189 (toList!7865 lm!2646))) lt!1989145))))

(declare-fun b!4849086 () Bool)

(assert (=> b!4849086 (= e!3031074 (contains!19227 (t!363189 (t!363189 (toList!7865 lm!2646))) lt!1989145))))

(assert (= (and d!1555975 res!2069260) b!4849085))

(assert (= (and b!4849085 (not res!2069261)) b!4849086))

(assert (=> d!1555975 m!5847238))

(declare-fun m!5847242 () Bool)

(assert (=> d!1555975 m!5847242))

(declare-fun m!5847244 () Bool)

(assert (=> b!4849086 m!5847244))

(assert (=> b!4848949 d!1555975))

(declare-fun b!4849087 () Bool)

(declare-fun res!2069264 () Bool)

(declare-fun e!3031077 () Bool)

(assert (=> b!4849087 (=> (not res!2069264) (not e!3031077))))

(declare-fun lt!1989228 () Option!13680)

(assert (=> b!4849087 (= res!2069264 (= (_1!32929 (get!19045 lt!1989228)) key!6445))))

(declare-fun b!4849088 () Bool)

(declare-fun e!3031080 () Option!13680)

(assert (=> b!4849088 (= e!3031080 (Some!13679 (h!62005 (t!363188 lt!1989146))))))

(declare-fun d!1555977 () Bool)

(declare-fun e!3031076 () Bool)

(assert (=> d!1555977 e!3031076))

(declare-fun res!2069265 () Bool)

(assert (=> d!1555977 (=> res!2069265 e!3031076)))

(declare-fun e!3031079 () Bool)

(assert (=> d!1555977 (= res!2069265 e!3031079)))

(declare-fun res!2069263 () Bool)

(assert (=> d!1555977 (=> (not res!2069263) (not e!3031079))))

(assert (=> d!1555977 (= res!2069263 (isEmpty!29738 lt!1989228))))

(assert (=> d!1555977 (= lt!1989228 e!3031080)))

(declare-fun c!825290 () Bool)

(assert (=> d!1555977 (= c!825290 (and (is-Cons!55568 (t!363188 lt!1989146)) (= (_1!32929 (h!62005 (t!363188 lt!1989146))) key!6445)))))

(assert (=> d!1555977 (noDuplicateKeys!2593 (t!363188 lt!1989146))))

(assert (=> d!1555977 (= (getPair!1095 (t!363188 lt!1989146) key!6445) lt!1989228)))

(declare-fun b!4849089 () Bool)

(assert (=> b!4849089 (= e!3031077 (contains!19231 (t!363188 lt!1989146) (get!19045 lt!1989228)))))

(declare-fun b!4849090 () Bool)

(assert (=> b!4849090 (= e!3031076 e!3031077)))

(declare-fun res!2069262 () Bool)

(assert (=> b!4849090 (=> (not res!2069262) (not e!3031077))))

(assert (=> b!4849090 (= res!2069262 (isDefined!10772 lt!1989228))))

(declare-fun b!4849091 () Bool)

(declare-fun e!3031078 () Option!13680)

(assert (=> b!4849091 (= e!3031080 e!3031078)))

(declare-fun c!825291 () Bool)

(assert (=> b!4849091 (= c!825291 (is-Cons!55568 (t!363188 lt!1989146)))))

(declare-fun b!4849092 () Bool)

(assert (=> b!4849092 (= e!3031078 None!13679)))

(declare-fun b!4849093 () Bool)

(assert (=> b!4849093 (= e!3031078 (getPair!1095 (t!363188 (t!363188 lt!1989146)) key!6445))))

(declare-fun b!4849094 () Bool)

(assert (=> b!4849094 (= e!3031079 (not (containsKey!4691 (t!363188 lt!1989146) key!6445)))))

(assert (= (and d!1555977 c!825290) b!4849088))

(assert (= (and d!1555977 (not c!825290)) b!4849091))

(assert (= (and b!4849091 c!825291) b!4849093))

(assert (= (and b!4849091 (not c!825291)) b!4849092))

(assert (= (and d!1555977 res!2069263) b!4849094))

(assert (= (and d!1555977 (not res!2069265)) b!4849090))

(assert (= (and b!4849090 res!2069262) b!4849087))

(assert (= (and b!4849087 res!2069264) b!4849089))

(declare-fun m!5847246 () Bool)

(assert (=> b!4849089 m!5847246))

(assert (=> b!4849089 m!5847246))

(declare-fun m!5847248 () Bool)

(assert (=> b!4849089 m!5847248))

(assert (=> b!4849087 m!5847246))

(declare-fun m!5847250 () Bool)

(assert (=> b!4849093 m!5847250))

(declare-fun m!5847252 () Bool)

(assert (=> d!1555977 m!5847252))

(assert (=> d!1555977 m!5847228))

(declare-fun m!5847254 () Bool)

(assert (=> b!4849090 m!5847254))

(assert (=> b!4849094 m!5847240))

(assert (=> b!4848938 d!1555977))

(declare-fun d!1555979 () Bool)

(assert (=> d!1555979 (= (tail!9535 (toList!7865 lm!2646)) (t!363189 (toList!7865 lm!2646)))))

(assert (=> d!1555897 d!1555979))

(declare-fun d!1555981 () Bool)

(declare-fun isEmpty!29740 (Option!13682) Bool)

(assert (=> d!1555981 (= (isDefined!10774 (getValueByKey!2733 (toList!7865 lm!2646) lt!1989141)) (not (isEmpty!29740 (getValueByKey!2733 (toList!7865 lm!2646) lt!1989141))))))

(declare-fun bs!1172652 () Bool)

(assert (= bs!1172652 d!1555981))

(assert (=> bs!1172652 m!5847050))

(declare-fun m!5847256 () Bool)

(assert (=> bs!1172652 m!5847256))

(assert (=> b!4848966 d!1555981))

(assert (=> b!4848966 d!1555969))

(declare-fun d!1555983 () Bool)

(declare-fun res!2069266 () Bool)

(declare-fun e!3031081 () Bool)

(assert (=> d!1555983 (=> res!2069266 e!3031081)))

(assert (=> d!1555983 (= res!2069266 (not (is-Cons!55568 (_2!32930 (h!62006 (toList!7865 lm!2646))))))))

(assert (=> d!1555983 (= (noDuplicateKeys!2593 (_2!32930 (h!62006 (toList!7865 lm!2646)))) e!3031081)))

(declare-fun b!4849095 () Bool)

(declare-fun e!3031082 () Bool)

(assert (=> b!4849095 (= e!3031081 e!3031082)))

(declare-fun res!2069267 () Bool)

(assert (=> b!4849095 (=> (not res!2069267) (not e!3031082))))

(assert (=> b!4849095 (= res!2069267 (not (containsKey!4691 (t!363188 (_2!32930 (h!62006 (toList!7865 lm!2646)))) (_1!32929 (h!62005 (_2!32930 (h!62006 (toList!7865 lm!2646))))))))))

(declare-fun b!4849096 () Bool)

(assert (=> b!4849096 (= e!3031082 (noDuplicateKeys!2593 (t!363188 (_2!32930 (h!62006 (toList!7865 lm!2646))))))))

(assert (= (and d!1555983 (not res!2069266)) b!4849095))

(assert (= (and b!4849095 res!2069267) b!4849096))

(declare-fun m!5847258 () Bool)

(assert (=> b!4849095 m!5847258))

(declare-fun m!5847260 () Bool)

(assert (=> b!4849096 m!5847260))

(assert (=> bs!1172632 d!1555983))

(declare-fun d!1555985 () Bool)

(declare-fun res!2069268 () Bool)

(declare-fun e!3031083 () Bool)

(assert (=> d!1555985 (=> res!2069268 e!3031083)))

(assert (=> d!1555985 (= res!2069268 (is-Nil!55569 (toList!7865 lm!2646)))))

(assert (=> d!1555985 (= (forall!12958 (toList!7865 lm!2646) lambda!242618) e!3031083)))

(declare-fun b!4849097 () Bool)

(declare-fun e!3031084 () Bool)

(assert (=> b!4849097 (= e!3031083 e!3031084)))

(declare-fun res!2069269 () Bool)

(assert (=> b!4849097 (=> (not res!2069269) (not e!3031084))))

(assert (=> b!4849097 (= res!2069269 (dynLambda!22359 lambda!242618 (h!62006 (toList!7865 lm!2646))))))

(declare-fun b!4849098 () Bool)

(assert (=> b!4849098 (= e!3031084 (forall!12958 (t!363189 (toList!7865 lm!2646)) lambda!242618))))

(assert (= (and d!1555985 (not res!2069268)) b!4849097))

(assert (= (and b!4849097 res!2069269) b!4849098))

(declare-fun b_lambda!192669 () Bool)

(assert (=> (not b_lambda!192669) (not b!4849097)))

(declare-fun m!5847262 () Bool)

(assert (=> b!4849097 m!5847262))

(declare-fun m!5847264 () Bool)

(assert (=> b!4849098 m!5847264))

(assert (=> d!1555869 d!1555985))

(declare-fun d!1555987 () Bool)

(assert (=> d!1555987 (isDefined!10774 (getValueByKey!2733 (toList!7865 lm!2646) lt!1989141))))

(declare-fun lt!1989231 () Unit!145708)

(declare-fun choose!35477 (List!55693 (_ BitVec 64)) Unit!145708)

(assert (=> d!1555987 (= lt!1989231 (choose!35477 (toList!7865 lm!2646) lt!1989141))))

(declare-fun e!3031087 () Bool)

(assert (=> d!1555987 e!3031087))

(declare-fun res!2069272 () Bool)

(assert (=> d!1555987 (=> (not res!2069272) (not e!3031087))))

(assert (=> d!1555987 (= res!2069272 (isStrictlySorted!1082 (toList!7865 lm!2646)))))

(assert (=> d!1555987 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2505 (toList!7865 lm!2646) lt!1989141) lt!1989231)))

(declare-fun b!4849101 () Bool)

(assert (=> b!4849101 (= e!3031087 (containsKey!4693 (toList!7865 lm!2646) lt!1989141))))

(assert (= (and d!1555987 res!2069272) b!4849101))

(assert (=> d!1555987 m!5847050))

(assert (=> d!1555987 m!5847050))

(assert (=> d!1555987 m!5847100))

(declare-fun m!5847266 () Bool)

(assert (=> d!1555987 m!5847266))

(assert (=> d!1555987 m!5847048))

(assert (=> b!4849101 m!5847096))

(assert (=> b!4848964 d!1555987))

(assert (=> b!4848964 d!1555981))

(assert (=> b!4848964 d!1555969))

(declare-fun d!1555989 () Bool)

(declare-fun res!2069277 () Bool)

(declare-fun e!3031092 () Bool)

(assert (=> d!1555989 (=> res!2069277 e!3031092)))

(assert (=> d!1555989 (= res!2069277 (and (is-Cons!55569 (toList!7865 lm!2646)) (= (_1!32930 (h!62006 (toList!7865 lm!2646))) lt!1989141)))))

(assert (=> d!1555989 (= (containsKey!4693 (toList!7865 lm!2646) lt!1989141) e!3031092)))

(declare-fun b!4849106 () Bool)

(declare-fun e!3031093 () Bool)

(assert (=> b!4849106 (= e!3031092 e!3031093)))

(declare-fun res!2069278 () Bool)

(assert (=> b!4849106 (=> (not res!2069278) (not e!3031093))))

(assert (=> b!4849106 (= res!2069278 (and (or (not (is-Cons!55569 (toList!7865 lm!2646))) (bvsle (_1!32930 (h!62006 (toList!7865 lm!2646))) lt!1989141)) (is-Cons!55569 (toList!7865 lm!2646)) (bvslt (_1!32930 (h!62006 (toList!7865 lm!2646))) lt!1989141)))))

(declare-fun b!4849107 () Bool)

(assert (=> b!4849107 (= e!3031093 (containsKey!4693 (t!363189 (toList!7865 lm!2646)) lt!1989141))))

(assert (= (and d!1555989 (not res!2069277)) b!4849106))

(assert (= (and b!4849106 res!2069278) b!4849107))

(declare-fun m!5847268 () Bool)

(assert (=> b!4849107 m!5847268))

(assert (=> d!1555873 d!1555989))

(declare-fun d!1555991 () Bool)

(declare-fun res!2069279 () Bool)

(declare-fun e!3031094 () Bool)

(assert (=> d!1555991 (=> res!2069279 e!3031094)))

(assert (=> d!1555991 (= res!2069279 (and (is-Cons!55568 (t!363188 (_2!32930 (h!62006 (toList!7865 lm!2646))))) (= (_1!32929 (h!62005 (t!363188 (_2!32930 (h!62006 (toList!7865 lm!2646)))))) key!6445)))))

(assert (=> d!1555991 (= (containsKey!4691 (t!363188 (_2!32930 (h!62006 (toList!7865 lm!2646)))) key!6445) e!3031094)))

(declare-fun b!4849108 () Bool)

(declare-fun e!3031095 () Bool)

(assert (=> b!4849108 (= e!3031094 e!3031095)))

(declare-fun res!2069280 () Bool)

(assert (=> b!4849108 (=> (not res!2069280) (not e!3031095))))

(assert (=> b!4849108 (= res!2069280 (is-Cons!55568 (t!363188 (_2!32930 (h!62006 (toList!7865 lm!2646))))))))

(declare-fun b!4849109 () Bool)

(assert (=> b!4849109 (= e!3031095 (containsKey!4691 (t!363188 (t!363188 (_2!32930 (h!62006 (toList!7865 lm!2646))))) key!6445))))

(assert (= (and d!1555991 (not res!2069279)) b!4849108))

(assert (= (and b!4849108 res!2069280) b!4849109))

(declare-fun m!5847270 () Bool)

(assert (=> b!4849109 m!5847270))

(assert (=> b!4848976 d!1555991))

(assert (=> b!4848932 d!1555951))

(declare-fun d!1555993 () Bool)

(declare-fun res!2069281 () Bool)

(declare-fun e!3031096 () Bool)

(assert (=> d!1555993 (=> res!2069281 e!3031096)))

(assert (=> d!1555993 (= res!2069281 (and (is-Cons!55568 (t!363188 (apply!13448 lm!2646 (_1!32930 (h!62006 (toList!7865 lm!2646)))))) (= (_1!32929 (h!62005 (t!363188 (apply!13448 lm!2646 (_1!32930 (h!62006 (toList!7865 lm!2646))))))) key!6445)))))

(assert (=> d!1555993 (= (containsKey!4691 (t!363188 (apply!13448 lm!2646 (_1!32930 (h!62006 (toList!7865 lm!2646))))) key!6445) e!3031096)))

(declare-fun b!4849110 () Bool)

(declare-fun e!3031097 () Bool)

(assert (=> b!4849110 (= e!3031096 e!3031097)))

(declare-fun res!2069282 () Bool)

(assert (=> b!4849110 (=> (not res!2069282) (not e!3031097))))

(assert (=> b!4849110 (= res!2069282 (is-Cons!55568 (t!363188 (apply!13448 lm!2646 (_1!32930 (h!62006 (toList!7865 lm!2646)))))))))

(declare-fun b!4849111 () Bool)

(assert (=> b!4849111 (= e!3031097 (containsKey!4691 (t!363188 (t!363188 (apply!13448 lm!2646 (_1!32930 (h!62006 (toList!7865 lm!2646)))))) key!6445))))

(assert (= (and d!1555993 (not res!2069281)) b!4849110))

(assert (= (and b!4849110 res!2069282) b!4849111))

(declare-fun m!5847272 () Bool)

(assert (=> b!4849111 m!5847272))

(assert (=> b!4848978 d!1555993))

(declare-fun d!1555995 () Bool)

(declare-fun res!2069283 () Bool)

(declare-fun e!3031098 () Bool)

(assert (=> d!1555995 (=> res!2069283 e!3031098)))

(assert (=> d!1555995 (= res!2069283 (not (is-Cons!55568 (_2!32930 (h!62006 (toList!7865 lt!1989147))))))))

(assert (=> d!1555995 (= (noDuplicateKeys!2593 (_2!32930 (h!62006 (toList!7865 lt!1989147)))) e!3031098)))

(declare-fun b!4849112 () Bool)

(declare-fun e!3031099 () Bool)

(assert (=> b!4849112 (= e!3031098 e!3031099)))

(declare-fun res!2069284 () Bool)

(assert (=> b!4849112 (=> (not res!2069284) (not e!3031099))))

(assert (=> b!4849112 (= res!2069284 (not (containsKey!4691 (t!363188 (_2!32930 (h!62006 (toList!7865 lt!1989147)))) (_1!32929 (h!62005 (_2!32930 (h!62006 (toList!7865 lt!1989147))))))))))

(declare-fun b!4849113 () Bool)

(assert (=> b!4849113 (= e!3031099 (noDuplicateKeys!2593 (t!363188 (_2!32930 (h!62006 (toList!7865 lt!1989147))))))))

(assert (= (and d!1555995 (not res!2069283)) b!4849112))

(assert (= (and b!4849112 res!2069284) b!4849113))

(declare-fun m!5847274 () Bool)

(assert (=> b!4849112 m!5847274))

(declare-fun m!5847276 () Bool)

(assert (=> b!4849113 m!5847276))

(assert (=> bs!1172633 d!1555995))

(assert (=> b!4848913 d!1555867))

(declare-fun d!1555997 () Bool)

(assert (=> d!1555997 (= (isEmpty!29738 (getPair!1095 lt!1989146 key!6445)) (not (is-Some!13679 (getPair!1095 lt!1989146 key!6445))))))

(assert (=> d!1555855 d!1555997))

(declare-fun d!1555999 () Bool)

(declare-fun res!2069289 () Bool)

(declare-fun e!3031104 () Bool)

(assert (=> d!1555999 (=> res!2069289 e!3031104)))

(assert (=> d!1555999 (= res!2069289 (or (is-Nil!55569 (toList!7865 lm!2646)) (is-Nil!55569 (t!363189 (toList!7865 lm!2646)))))))

(assert (=> d!1555999 (= (isStrictlySorted!1082 (toList!7865 lm!2646)) e!3031104)))

(declare-fun b!4849118 () Bool)

(declare-fun e!3031105 () Bool)

(assert (=> b!4849118 (= e!3031104 e!3031105)))

(declare-fun res!2069290 () Bool)

(assert (=> b!4849118 (=> (not res!2069290) (not e!3031105))))

(assert (=> b!4849118 (= res!2069290 (bvslt (_1!32930 (h!62006 (toList!7865 lm!2646))) (_1!32930 (h!62006 (t!363189 (toList!7865 lm!2646))))))))

(declare-fun b!4849119 () Bool)

(assert (=> b!4849119 (= e!3031105 (isStrictlySorted!1082 (t!363189 (toList!7865 lm!2646))))))

(assert (= (and d!1555999 (not res!2069289)) b!4849118))

(assert (= (and b!4849118 res!2069290) b!4849119))

(declare-fun m!5847278 () Bool)

(assert (=> b!4849119 m!5847278))

(assert (=> d!1555851 d!1555999))

(declare-fun tp_is_empty!35209 () Bool)

(declare-fun e!3031108 () Bool)

(declare-fun tp!1364723 () Bool)

(declare-fun b!4849124 () Bool)

(assert (=> b!4849124 (= e!3031108 (and tp_is_empty!35205 tp_is_empty!35209 tp!1364723))))

(assert (=> b!4848985 (= tp!1364713 e!3031108)))

(assert (= (and b!4848985 (is-Cons!55568 (_2!32930 (h!62006 (toList!7865 lm!2646))))) b!4849124))

(declare-fun b!4849125 () Bool)

(declare-fun e!3031109 () Bool)

(declare-fun tp!1364724 () Bool)

(declare-fun tp!1364725 () Bool)

(assert (=> b!4849125 (= e!3031109 (and tp!1364724 tp!1364725))))

(assert (=> b!4848985 (= tp!1364714 e!3031109)))

(assert (= (and b!4848985 (is-Cons!55569 (t!363189 (toList!7865 lm!2646)))) b!4849125))

(declare-fun b_lambda!192671 () Bool)

(assert (= b_lambda!192663 (or d!1555891 b_lambda!192671)))

(declare-fun bs!1172653 () Bool)

(declare-fun d!1556001 () Bool)

(assert (= bs!1172653 (and d!1556001 d!1555891)))

(assert (=> bs!1172653 (= (dynLambda!22359 lambda!242622 (h!62006 (toList!7865 lm!2646))) (noDuplicateKeys!2593 (_2!32930 (h!62006 (toList!7865 lm!2646)))))))

(assert (=> bs!1172653 m!5847132))

(assert (=> b!4849065 d!1556001))

(declare-fun b_lambda!192673 () Bool)

(assert (= b_lambda!192667 (or start!505550 b_lambda!192673)))

(declare-fun bs!1172654 () Bool)

(declare-fun d!1556003 () Bool)

(assert (= bs!1172654 (and d!1556003 start!505550)))

(assert (=> bs!1172654 (= (dynLambda!22359 lambda!242605 (h!62006 (t!363189 (toList!7865 lt!1989147)))) (noDuplicateKeys!2593 (_2!32930 (h!62006 (t!363189 (toList!7865 lt!1989147))))))))

(declare-fun m!5847280 () Bool)

(assert (=> bs!1172654 m!5847280))

(assert (=> b!4849071 d!1556003))

(declare-fun b_lambda!192675 () Bool)

(assert (= b_lambda!192659 (or d!1555899 b_lambda!192675)))

(declare-fun bs!1172655 () Bool)

(declare-fun d!1556005 () Bool)

(assert (= bs!1172655 (and d!1556005 d!1555899)))

(declare-fun allKeysSameHash!2035 (List!55692 (_ BitVec 64) Hashable!7505) Bool)

(assert (=> bs!1172655 (= (dynLambda!22359 lambda!242623 (h!62006 (toList!7865 lt!1989147))) (allKeysSameHash!2035 (_2!32930 (h!62006 (toList!7865 lt!1989147))) (_1!32930 (h!62006 (toList!7865 lt!1989147))) hashF!1641))))

(declare-fun m!5847282 () Bool)

(assert (=> bs!1172655 m!5847282))

(assert (=> b!4849057 d!1556005))

(declare-fun b_lambda!192677 () Bool)

(assert (= b_lambda!192665 (or start!505550 b_lambda!192677)))

(declare-fun bs!1172656 () Bool)

(declare-fun d!1556007 () Bool)

(assert (= bs!1172656 (and d!1556007 start!505550)))

(assert (=> bs!1172656 (= (dynLambda!22359 lambda!242605 (h!62006 (t!363189 (toList!7865 lm!2646)))) (noDuplicateKeys!2593 (_2!32930 (h!62006 (t!363189 (toList!7865 lm!2646))))))))

(declare-fun m!5847284 () Bool)

(assert (=> bs!1172656 m!5847284))

(assert (=> b!4849067 d!1556007))

(declare-fun b_lambda!192679 () Bool)

(assert (= b_lambda!192661 (or start!505550 b_lambda!192679)))

(assert (=> d!1555953 d!1555905))

(declare-fun b_lambda!192681 () Bool)

(assert (= b_lambda!192669 (or d!1555869 b_lambda!192681)))

(declare-fun bs!1172657 () Bool)

(declare-fun d!1556009 () Bool)

(assert (= bs!1172657 (and d!1556009 d!1555869)))

(assert (=> bs!1172657 (= (dynLambda!22359 lambda!242618 (h!62006 (toList!7865 lm!2646))) (allKeysSameHash!2035 (_2!32930 (h!62006 (toList!7865 lm!2646))) (_1!32930 (h!62006 (toList!7865 lm!2646))) hashF!1641))))

(declare-fun m!5847286 () Bool)

(assert (=> bs!1172657 m!5847286))

(assert (=> b!4849097 d!1556009))

(push 1)

(assert (not b!4849072))

(assert (not d!1555981))

(assert (not b!4849037))

(assert (not b!4849111))

(assert tp_is_empty!35209)

(assert (not b!4849125))

(assert (not b!4849075))

(assert (not b!4849101))

(assert (not b!4849049))

(assert (not b!4849084))

(assert (not d!1555935))

(assert (not b!4849082))

(assert (not d!1555947))

(assert (not b!4849109))

(assert (not bs!1172656))

(assert (not b!4849064))

(assert (not d!1555945))

(assert (not d!1555977))

(assert (not b!4849089))

(assert (not d!1555933))

(assert (not d!1555975))

(assert (not b!4849058))

(assert (not b!4849066))

(assert (not b!4849055))

(assert (not b!4849107))

(assert (not bs!1172657))

(assert (not b!4849087))

(assert (not bs!1172654))

(assert (not bs!1172655))

(assert (not bs!1172653))

(assert (not d!1555949))

(assert (not d!1555955))

(assert (not b_lambda!192645))

(assert tp_is_empty!35205)

(assert (not d!1555987))

(assert (not b_lambda!192681))

(assert (not b_lambda!192677))

(assert (not b_lambda!192679))

(assert (not b!4849070))

(assert (not b!4849086))

(assert (not b!4849069))

(assert (not b_lambda!192671))

(assert (not b!4849112))

(assert (not b!4849093))

(assert (not b!4849095))

(assert (not b_lambda!192673))

(assert (not b!4849096))

(assert (not b_lambda!192675))

(assert (not b!4849094))

(assert (not b!4849119))

(assert (not b!4849124))

(assert (not b_lambda!192647))

(assert (not b!4849098))

(assert (not b!4849056))

(assert (not b!4849090))

(assert (not b!4849068))

(assert (not b!4849113))

(assert (not b_lambda!192643))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

