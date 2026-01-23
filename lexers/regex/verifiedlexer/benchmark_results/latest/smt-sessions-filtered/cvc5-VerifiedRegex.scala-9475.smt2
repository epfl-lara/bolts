; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!500958 () Bool)

(assert start!500958)

(declare-fun b!4826920 () Bool)

(declare-fun res!2055191 () Bool)

(declare-fun e!3016137 () Bool)

(assert (=> b!4826920 (=> (not res!2055191) (not e!3016137))))

(declare-datatypes ((V!16908 0))(
  ( (V!16909 (val!21635 Int)) )
))
(declare-datatypes ((K!16662 0))(
  ( (K!16663 (val!21636 Int)) )
))
(declare-datatypes ((tuple2!58206 0))(
  ( (tuple2!58207 (_1!32397 K!16662) (_2!32397 V!16908)) )
))
(declare-datatypes ((List!55106 0))(
  ( (Nil!54982) (Cons!54982 (h!61416 tuple2!58206) (t!362602 List!55106)) )
))
(declare-datatypes ((tuple2!58208 0))(
  ( (tuple2!58209 (_1!32398 (_ BitVec 64)) (_2!32398 List!55106)) )
))
(declare-datatypes ((List!55107 0))(
  ( (Nil!54983) (Cons!54983 (h!61417 tuple2!58208) (t!362603 List!55107)) )
))
(declare-datatypes ((ListLongMap!6001 0))(
  ( (ListLongMap!6002 (toList!7485 List!55107)) )
))
(declare-fun lm!2325 () ListLongMap!6001)

(assert (=> b!4826920 (= res!2055191 (is-Cons!54983 (toList!7485 lm!2325)))))

(declare-fun res!2055189 () Bool)

(assert (=> start!500958 (=> (not res!2055189) (not e!3016137))))

(declare-fun lambda!236995 () Int)

(declare-fun forall!12619 (List!55107 Int) Bool)

(assert (=> start!500958 (= res!2055189 (forall!12619 (toList!7485 lm!2325) lambda!236995))))

(assert (=> start!500958 e!3016137))

(declare-fun e!3016136 () Bool)

(declare-fun inv!70563 (ListLongMap!6001) Bool)

(assert (=> start!500958 (and (inv!70563 lm!2325) e!3016136)))

(assert (=> start!500958 true))

(declare-fun tp_is_empty!34473 () Bool)

(assert (=> start!500958 tp_is_empty!34473))

(declare-fun b!4826921 () Bool)

(declare-fun res!2055190 () Bool)

(assert (=> b!4826921 (=> (not res!2055190) (not e!3016137))))

(declare-datatypes ((Hashable!7269 0))(
  ( (HashableExt!7268 (__x!33544 Int)) )
))
(declare-fun hashF!1543 () Hashable!7269)

(declare-fun allKeysSameHashInMap!2585 (ListLongMap!6001 Hashable!7269) Bool)

(assert (=> b!4826921 (= res!2055190 (allKeysSameHashInMap!2585 lm!2325 hashF!1543))))

(declare-fun b!4826922 () Bool)

(declare-fun res!2055188 () Bool)

(assert (=> b!4826922 (=> (not res!2055188) (not e!3016137))))

(declare-fun key!5594 () K!16662)

(declare-fun contains!18792 (ListLongMap!6001 (_ BitVec 64)) Bool)

(declare-fun hash!5411 (Hashable!7269 K!16662) (_ BitVec 64))

(assert (=> b!4826922 (= res!2055188 (not (contains!18792 lm!2325 (hash!5411 hashF!1543 key!5594))))))

(declare-fun b!4826923 () Bool)

(declare-fun tp!1362639 () Bool)

(assert (=> b!4826923 (= e!3016136 tp!1362639)))

(declare-fun b!4826924 () Bool)

(assert (=> b!4826924 (= e!3016137 (not (forall!12619 (t!362603 (toList!7485 lm!2325)) lambda!236995)))))

(assert (= (and start!500958 res!2055189) b!4826921))

(assert (= (and b!4826921 res!2055190) b!4826922))

(assert (= (and b!4826922 res!2055188) b!4826920))

(assert (= (and b!4826920 res!2055191) b!4826924))

(assert (= start!500958 b!4826923))

(declare-fun m!5818084 () Bool)

(assert (=> start!500958 m!5818084))

(declare-fun m!5818086 () Bool)

(assert (=> start!500958 m!5818086))

(declare-fun m!5818088 () Bool)

(assert (=> b!4826921 m!5818088))

(declare-fun m!5818090 () Bool)

(assert (=> b!4826922 m!5818090))

(assert (=> b!4826922 m!5818090))

(declare-fun m!5818092 () Bool)

(assert (=> b!4826922 m!5818092))

(declare-fun m!5818094 () Bool)

(assert (=> b!4826924 m!5818094))

(push 1)

(assert (not b!4826923))

(assert (not start!500958))

(assert (not b!4826922))

(assert (not b!4826921))

(assert (not b!4826924))

(assert tp_is_empty!34473)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1164651 () Bool)

(declare-fun d!1546812 () Bool)

(assert (= bs!1164651 (and d!1546812 start!500958)))

(declare-fun lambda!237003 () Int)

(assert (=> bs!1164651 (not (= lambda!237003 lambda!236995))))

(assert (=> d!1546812 true))

(assert (=> d!1546812 (= (allKeysSameHashInMap!2585 lm!2325 hashF!1543) (forall!12619 (toList!7485 lm!2325) lambda!237003))))

(declare-fun bs!1164652 () Bool)

(assert (= bs!1164652 d!1546812))

(declare-fun m!5818108 () Bool)

(assert (=> bs!1164652 m!5818108))

(assert (=> b!4826921 d!1546812))

(declare-fun d!1546814 () Bool)

(declare-fun res!2055208 () Bool)

(declare-fun e!3016148 () Bool)

(assert (=> d!1546814 (=> res!2055208 e!3016148)))

(assert (=> d!1546814 (= res!2055208 (is-Nil!54983 (toList!7485 lm!2325)))))

(assert (=> d!1546814 (= (forall!12619 (toList!7485 lm!2325) lambda!236995) e!3016148)))

(declare-fun b!4826946 () Bool)

(declare-fun e!3016149 () Bool)

(assert (=> b!4826946 (= e!3016148 e!3016149)))

(declare-fun res!2055209 () Bool)

(assert (=> b!4826946 (=> (not res!2055209) (not e!3016149))))

(declare-fun dynLambda!22223 (Int tuple2!58208) Bool)

(assert (=> b!4826946 (= res!2055209 (dynLambda!22223 lambda!236995 (h!61417 (toList!7485 lm!2325))))))

(declare-fun b!4826947 () Bool)

(assert (=> b!4826947 (= e!3016149 (forall!12619 (t!362603 (toList!7485 lm!2325)) lambda!236995))))

(assert (= (and d!1546814 (not res!2055208)) b!4826946))

(assert (= (and b!4826946 res!2055209) b!4826947))

(declare-fun b_lambda!190037 () Bool)

(assert (=> (not b_lambda!190037) (not b!4826946)))

(declare-fun m!5818110 () Bool)

(assert (=> b!4826946 m!5818110))

(assert (=> b!4826947 m!5818094))

(assert (=> start!500958 d!1546814))

(declare-fun d!1546816 () Bool)

(declare-fun isStrictlySorted!989 (List!55107) Bool)

(assert (=> d!1546816 (= (inv!70563 lm!2325) (isStrictlySorted!989 (toList!7485 lm!2325)))))

(declare-fun bs!1164653 () Bool)

(assert (= bs!1164653 d!1546816))

(declare-fun m!5818112 () Bool)

(assert (=> bs!1164653 m!5818112))

(assert (=> start!500958 d!1546816))

(declare-fun d!1546818 () Bool)

(declare-fun e!3016154 () Bool)

(assert (=> d!1546818 e!3016154))

(declare-fun res!2055212 () Bool)

(assert (=> d!1546818 (=> res!2055212 e!3016154)))

(declare-fun lt!1974025 () Bool)

(assert (=> d!1546818 (= res!2055212 (not lt!1974025))))

(declare-fun lt!1974024 () Bool)

(assert (=> d!1546818 (= lt!1974025 lt!1974024)))

(declare-datatypes ((Unit!143237 0))(
  ( (Unit!143238) )
))
(declare-fun lt!1974023 () Unit!143237)

(declare-fun e!3016155 () Unit!143237)

(assert (=> d!1546818 (= lt!1974023 e!3016155)))

(declare-fun c!822521 () Bool)

(assert (=> d!1546818 (= c!822521 lt!1974024)))

(declare-fun containsKey!4382 (List!55107 (_ BitVec 64)) Bool)

(assert (=> d!1546818 (= lt!1974024 (containsKey!4382 (toList!7485 lm!2325) (hash!5411 hashF!1543 key!5594)))))

(assert (=> d!1546818 (= (contains!18792 lm!2325 (hash!5411 hashF!1543 key!5594)) lt!1974025)))

(declare-fun b!4826954 () Bool)

(declare-fun lt!1974026 () Unit!143237)

(assert (=> b!4826954 (= e!3016155 lt!1974026)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2414 (List!55107 (_ BitVec 64)) Unit!143237)

(assert (=> b!4826954 (= lt!1974026 (lemmaContainsKeyImpliesGetValueByKeyDefined!2414 (toList!7485 lm!2325) (hash!5411 hashF!1543 key!5594)))))

(declare-datatypes ((Option!13502 0))(
  ( (None!13501) (Some!13501 (v!49186 List!55106)) )
))
(declare-fun isDefined!10617 (Option!13502) Bool)

(declare-fun getValueByKey!2629 (List!55107 (_ BitVec 64)) Option!13502)

(assert (=> b!4826954 (isDefined!10617 (getValueByKey!2629 (toList!7485 lm!2325) (hash!5411 hashF!1543 key!5594)))))

(declare-fun b!4826955 () Bool)

(declare-fun Unit!143239 () Unit!143237)

(assert (=> b!4826955 (= e!3016155 Unit!143239)))

(declare-fun b!4826956 () Bool)

(assert (=> b!4826956 (= e!3016154 (isDefined!10617 (getValueByKey!2629 (toList!7485 lm!2325) (hash!5411 hashF!1543 key!5594))))))

(assert (= (and d!1546818 c!822521) b!4826954))

(assert (= (and d!1546818 (not c!822521)) b!4826955))

(assert (= (and d!1546818 (not res!2055212)) b!4826956))

(assert (=> d!1546818 m!5818090))

(declare-fun m!5818114 () Bool)

(assert (=> d!1546818 m!5818114))

(assert (=> b!4826954 m!5818090))

(declare-fun m!5818116 () Bool)

(assert (=> b!4826954 m!5818116))

(assert (=> b!4826954 m!5818090))

(declare-fun m!5818118 () Bool)

(assert (=> b!4826954 m!5818118))

(assert (=> b!4826954 m!5818118))

(declare-fun m!5818120 () Bool)

(assert (=> b!4826954 m!5818120))

(assert (=> b!4826956 m!5818090))

(assert (=> b!4826956 m!5818118))

(assert (=> b!4826956 m!5818118))

(assert (=> b!4826956 m!5818120))

(assert (=> b!4826922 d!1546818))

(declare-fun d!1546822 () Bool)

(declare-fun hash!5413 (Hashable!7269 K!16662) (_ BitVec 64))

(assert (=> d!1546822 (= (hash!5411 hashF!1543 key!5594) (hash!5413 hashF!1543 key!5594))))

(declare-fun bs!1164654 () Bool)

(assert (= bs!1164654 d!1546822))

(declare-fun m!5818122 () Bool)

(assert (=> bs!1164654 m!5818122))

(assert (=> b!4826922 d!1546822))

(declare-fun d!1546824 () Bool)

(declare-fun res!2055213 () Bool)

(declare-fun e!3016156 () Bool)

(assert (=> d!1546824 (=> res!2055213 e!3016156)))

(assert (=> d!1546824 (= res!2055213 (is-Nil!54983 (t!362603 (toList!7485 lm!2325))))))

(assert (=> d!1546824 (= (forall!12619 (t!362603 (toList!7485 lm!2325)) lambda!236995) e!3016156)))

(declare-fun b!4826957 () Bool)

(declare-fun e!3016157 () Bool)

(assert (=> b!4826957 (= e!3016156 e!3016157)))

(declare-fun res!2055214 () Bool)

(assert (=> b!4826957 (=> (not res!2055214) (not e!3016157))))

(assert (=> b!4826957 (= res!2055214 (dynLambda!22223 lambda!236995 (h!61417 (t!362603 (toList!7485 lm!2325)))))))

(declare-fun b!4826958 () Bool)

(assert (=> b!4826958 (= e!3016157 (forall!12619 (t!362603 (t!362603 (toList!7485 lm!2325))) lambda!236995))))

(assert (= (and d!1546824 (not res!2055213)) b!4826957))

(assert (= (and b!4826957 res!2055214) b!4826958))

(declare-fun b_lambda!190039 () Bool)

(assert (=> (not b_lambda!190039) (not b!4826957)))

(declare-fun m!5818124 () Bool)

(assert (=> b!4826957 m!5818124))

(declare-fun m!5818126 () Bool)

(assert (=> b!4826958 m!5818126))

(assert (=> b!4826924 d!1546824))

(declare-fun b!4826963 () Bool)

(declare-fun e!3016160 () Bool)

(declare-fun tp!1362647 () Bool)

(declare-fun tp!1362648 () Bool)

(assert (=> b!4826963 (= e!3016160 (and tp!1362647 tp!1362648))))

(assert (=> b!4826923 (= tp!1362639 e!3016160)))

(assert (= (and b!4826923 (is-Cons!54983 (toList!7485 lm!2325))) b!4826963))

(declare-fun b_lambda!190041 () Bool)

(assert (= b_lambda!190037 (or start!500958 b_lambda!190041)))

(declare-fun bs!1164655 () Bool)

(declare-fun d!1546826 () Bool)

(assert (= bs!1164655 (and d!1546826 start!500958)))

(declare-fun noDuplicateKeys!2455 (List!55106) Bool)

(assert (=> bs!1164655 (= (dynLambda!22223 lambda!236995 (h!61417 (toList!7485 lm!2325))) (noDuplicateKeys!2455 (_2!32398 (h!61417 (toList!7485 lm!2325)))))))

(declare-fun m!5818128 () Bool)

(assert (=> bs!1164655 m!5818128))

(assert (=> b!4826946 d!1546826))

(declare-fun b_lambda!190043 () Bool)

(assert (= b_lambda!190039 (or start!500958 b_lambda!190043)))

(declare-fun bs!1164656 () Bool)

(declare-fun d!1546828 () Bool)

(assert (= bs!1164656 (and d!1546828 start!500958)))

(assert (=> bs!1164656 (= (dynLambda!22223 lambda!236995 (h!61417 (t!362603 (toList!7485 lm!2325)))) (noDuplicateKeys!2455 (_2!32398 (h!61417 (t!362603 (toList!7485 lm!2325))))))))

(declare-fun m!5818130 () Bool)

(assert (=> bs!1164656 m!5818130))

(assert (=> b!4826957 d!1546828))

(push 1)

(assert (not bs!1164655))

(assert (not b_lambda!190041))

(assert (not b!4826954))

(assert (not b!4826963))

(assert (not b!4826956))

(assert (not d!1546822))

(assert (not d!1546818))

(assert (not b_lambda!190043))

(assert (not d!1546812))

(assert (not b!4826947))

(assert (not b!4826958))

(assert (not d!1546816))

(assert tp_is_empty!34473)

(assert (not bs!1164656))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

