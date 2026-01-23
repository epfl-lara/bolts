; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!499096 () Bool)

(assert start!499096)

(declare-fun b!4819022 () Bool)

(declare-fun res!2050477 () Bool)

(declare-fun e!3010841 () Bool)

(assert (=> b!4819022 (=> (not res!2050477) (not e!3010841))))

(declare-datatypes ((K!16527 0))(
  ( (K!16528 (val!21527 Int)) )
))
(declare-fun key!5428 () K!16527)

(declare-fun lt!1968515 () (_ BitVec 64))

(declare-datatypes ((V!16773 0))(
  ( (V!16774 (val!21528 Int)) )
))
(declare-datatypes ((tuple2!57990 0))(
  ( (tuple2!57991 (_1!32289 K!16527) (_2!32289 V!16773)) )
))
(declare-datatypes ((List!54978 0))(
  ( (Nil!54854) (Cons!54854 (h!61288 tuple2!57990) (t!362474 List!54978)) )
))
(declare-datatypes ((tuple2!57992 0))(
  ( (tuple2!57993 (_1!32290 (_ BitVec 64)) (_2!32290 List!54978)) )
))
(declare-datatypes ((List!54979 0))(
  ( (Nil!54855) (Cons!54855 (h!61289 tuple2!57992) (t!362475 List!54979)) )
))
(declare-datatypes ((ListLongMap!5893 0))(
  ( (ListLongMap!5894 (toList!7401 List!54979)) )
))
(declare-fun lm!2280 () ListLongMap!5893)

(declare-fun containsKey!4277 (List!54978 K!16527) Bool)

(declare-fun apply!13302 (ListLongMap!5893 (_ BitVec 64)) List!54978)

(assert (=> b!4819022 (= res!2050477 (not (containsKey!4277 (apply!13302 lm!2280 lt!1968515) key!5428)))))

(declare-fun b!4819023 () Bool)

(declare-fun lambda!235139 () Int)

(declare-fun forall!12529 (List!54979 Int) Bool)

(assert (=> b!4819023 (= e!3010841 (not (forall!12529 (t!362475 (toList!7401 lm!2280)) lambda!235139)))))

(assert (=> b!4819023 (not (containsKey!4277 (apply!13302 lm!2280 (_1!32290 (h!61289 (toList!7401 lm!2280)))) key!5428))))

(declare-datatypes ((Hashable!7215 0))(
  ( (HashableExt!7214 (__x!33490 Int)) )
))
(declare-fun hashF!1509 () Hashable!7215)

(declare-datatypes ((Unit!142167 0))(
  ( (Unit!142168) )
))
(declare-fun lt!1968516 () Unit!142167)

(declare-fun lemmaNotSameHashThenCannotContainKey!199 (ListLongMap!5893 K!16527 (_ BitVec 64) Hashable!7215) Unit!142167)

(assert (=> b!4819023 (= lt!1968516 (lemmaNotSameHashThenCannotContainKey!199 lm!2280 key!5428 (_1!32290 (h!61289 (toList!7401 lm!2280))) hashF!1509))))

(declare-fun b!4819024 () Bool)

(declare-fun res!2050478 () Bool)

(declare-fun e!3010842 () Bool)

(assert (=> b!4819024 (=> (not res!2050478) (not e!3010842))))

(declare-fun allKeysSameHashInMap!2531 (ListLongMap!5893 Hashable!7215) Bool)

(assert (=> b!4819024 (= res!2050478 (allKeysSameHashInMap!2531 lm!2280 hashF!1509))))

(declare-fun b!4819025 () Bool)

(declare-fun res!2050476 () Bool)

(assert (=> b!4819025 (=> (not res!2050476) (not e!3010841))))

(assert (=> b!4819025 (= res!2050476 (and (or (not (is-Cons!54855 (toList!7401 lm!2280))) (not (= (_1!32290 (h!61289 (toList!7401 lm!2280))) lt!1968515))) (is-Cons!54855 (toList!7401 lm!2280)) (not (= (_1!32290 (h!61289 (toList!7401 lm!2280))) lt!1968515))))))

(declare-fun b!4819027 () Bool)

(assert (=> b!4819027 (= e!3010842 e!3010841)))

(declare-fun res!2050479 () Bool)

(assert (=> b!4819027 (=> (not res!2050479) (not e!3010841))))

(declare-fun contains!18676 (ListLongMap!5893 (_ BitVec 64)) Bool)

(assert (=> b!4819027 (= res!2050479 (contains!18676 lm!2280 lt!1968515))))

(declare-fun hash!5294 (Hashable!7215 K!16527) (_ BitVec 64))

(assert (=> b!4819027 (= lt!1968515 (hash!5294 hashF!1509 key!5428))))

(declare-fun res!2050480 () Bool)

(assert (=> start!499096 (=> (not res!2050480) (not e!3010842))))

(assert (=> start!499096 (= res!2050480 (forall!12529 (toList!7401 lm!2280) lambda!235139))))

(assert (=> start!499096 e!3010842))

(declare-fun e!3010840 () Bool)

(declare-fun inv!70428 (ListLongMap!5893) Bool)

(assert (=> start!499096 (and (inv!70428 lm!2280) e!3010840)))

(assert (=> start!499096 true))

(declare-fun tp_is_empty!34315 () Bool)

(assert (=> start!499096 tp_is_empty!34315))

(declare-fun b!4819026 () Bool)

(declare-fun tp!1362148 () Bool)

(assert (=> b!4819026 (= e!3010840 tp!1362148)))

(assert (= (and start!499096 res!2050480) b!4819024))

(assert (= (and b!4819024 res!2050478) b!4819027))

(assert (= (and b!4819027 res!2050479) b!4819022))

(assert (= (and b!4819022 res!2050477) b!4819025))

(assert (= (and b!4819025 res!2050476) b!4819023))

(assert (= start!499096 b!4819026))

(declare-fun m!5805940 () Bool)

(assert (=> b!4819024 m!5805940))

(declare-fun m!5805942 () Bool)

(assert (=> start!499096 m!5805942))

(declare-fun m!5805944 () Bool)

(assert (=> start!499096 m!5805944))

(declare-fun m!5805946 () Bool)

(assert (=> b!4819027 m!5805946))

(declare-fun m!5805948 () Bool)

(assert (=> b!4819027 m!5805948))

(declare-fun m!5805950 () Bool)

(assert (=> b!4819022 m!5805950))

(assert (=> b!4819022 m!5805950))

(declare-fun m!5805952 () Bool)

(assert (=> b!4819022 m!5805952))

(declare-fun m!5805954 () Bool)

(assert (=> b!4819023 m!5805954))

(declare-fun m!5805956 () Bool)

(assert (=> b!4819023 m!5805956))

(assert (=> b!4819023 m!5805956))

(declare-fun m!5805958 () Bool)

(assert (=> b!4819023 m!5805958))

(declare-fun m!5805960 () Bool)

(assert (=> b!4819023 m!5805960))

(push 1)

(assert (not b!4819024))

(assert (not b!4819027))

(assert (not b!4819023))

(assert (not b!4819022))

(assert (not start!499096))

(assert (not b!4819026))

(assert tp_is_empty!34315)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1542625 () Bool)

(declare-fun res!2050500 () Bool)

(declare-fun e!3010856 () Bool)

(assert (=> d!1542625 (=> res!2050500 e!3010856)))

(assert (=> d!1542625 (= res!2050500 (is-Nil!54855 (toList!7401 lm!2280)))))

(assert (=> d!1542625 (= (forall!12529 (toList!7401 lm!2280) lambda!235139) e!3010856)))

(declare-fun b!4819050 () Bool)

(declare-fun e!3010857 () Bool)

(assert (=> b!4819050 (= e!3010856 e!3010857)))

(declare-fun res!2050501 () Bool)

(assert (=> b!4819050 (=> (not res!2050501) (not e!3010857))))

(declare-fun dynLambda!22177 (Int tuple2!57992) Bool)

(assert (=> b!4819050 (= res!2050501 (dynLambda!22177 lambda!235139 (h!61289 (toList!7401 lm!2280))))))

(declare-fun b!4819051 () Bool)

(assert (=> b!4819051 (= e!3010857 (forall!12529 (t!362475 (toList!7401 lm!2280)) lambda!235139))))

(assert (= (and d!1542625 (not res!2050500)) b!4819050))

(assert (= (and b!4819050 res!2050501) b!4819051))

(declare-fun b_lambda!188793 () Bool)

(assert (=> (not b_lambda!188793) (not b!4819050)))

(declare-fun m!5805984 () Bool)

(assert (=> b!4819050 m!5805984))

(assert (=> b!4819051 m!5805954))

(assert (=> start!499096 d!1542625))

(declare-fun d!1542627 () Bool)

(declare-fun isStrictlySorted!959 (List!54979) Bool)

(assert (=> d!1542627 (= (inv!70428 lm!2280) (isStrictlySorted!959 (toList!7401 lm!2280)))))

(declare-fun bs!1161180 () Bool)

(assert (= bs!1161180 d!1542627))

(declare-fun m!5805986 () Bool)

(assert (=> bs!1161180 m!5805986))

(assert (=> start!499096 d!1542627))

(declare-fun d!1542629 () Bool)

(declare-fun res!2050502 () Bool)

(declare-fun e!3010858 () Bool)

(assert (=> d!1542629 (=> res!2050502 e!3010858)))

(assert (=> d!1542629 (= res!2050502 (is-Nil!54855 (t!362475 (toList!7401 lm!2280))))))

(assert (=> d!1542629 (= (forall!12529 (t!362475 (toList!7401 lm!2280)) lambda!235139) e!3010858)))

(declare-fun b!4819052 () Bool)

(declare-fun e!3010859 () Bool)

(assert (=> b!4819052 (= e!3010858 e!3010859)))

(declare-fun res!2050503 () Bool)

(assert (=> b!4819052 (=> (not res!2050503) (not e!3010859))))

(assert (=> b!4819052 (= res!2050503 (dynLambda!22177 lambda!235139 (h!61289 (t!362475 (toList!7401 lm!2280)))))))

(declare-fun b!4819053 () Bool)

(assert (=> b!4819053 (= e!3010859 (forall!12529 (t!362475 (t!362475 (toList!7401 lm!2280))) lambda!235139))))

(assert (= (and d!1542629 (not res!2050502)) b!4819052))

(assert (= (and b!4819052 res!2050503) b!4819053))

(declare-fun b_lambda!188795 () Bool)

(assert (=> (not b_lambda!188795) (not b!4819052)))

(declare-fun m!5805988 () Bool)

(assert (=> b!4819052 m!5805988))

(declare-fun m!5805990 () Bool)

(assert (=> b!4819053 m!5805990))

(assert (=> b!4819023 d!1542629))

(declare-fun d!1542631 () Bool)

(declare-fun res!2050508 () Bool)

(declare-fun e!3010864 () Bool)

(assert (=> d!1542631 (=> res!2050508 e!3010864)))

(assert (=> d!1542631 (= res!2050508 (and (is-Cons!54854 (apply!13302 lm!2280 (_1!32290 (h!61289 (toList!7401 lm!2280))))) (= (_1!32289 (h!61288 (apply!13302 lm!2280 (_1!32290 (h!61289 (toList!7401 lm!2280)))))) key!5428)))))

(assert (=> d!1542631 (= (containsKey!4277 (apply!13302 lm!2280 (_1!32290 (h!61289 (toList!7401 lm!2280)))) key!5428) e!3010864)))

(declare-fun b!4819058 () Bool)

(declare-fun e!3010865 () Bool)

(assert (=> b!4819058 (= e!3010864 e!3010865)))

(declare-fun res!2050509 () Bool)

(assert (=> b!4819058 (=> (not res!2050509) (not e!3010865))))

(assert (=> b!4819058 (= res!2050509 (is-Cons!54854 (apply!13302 lm!2280 (_1!32290 (h!61289 (toList!7401 lm!2280))))))))

(declare-fun b!4819059 () Bool)

(assert (=> b!4819059 (= e!3010865 (containsKey!4277 (t!362474 (apply!13302 lm!2280 (_1!32290 (h!61289 (toList!7401 lm!2280))))) key!5428))))

(assert (= (and d!1542631 (not res!2050508)) b!4819058))

(assert (= (and b!4819058 res!2050509) b!4819059))

(declare-fun m!5805992 () Bool)

(assert (=> b!4819059 m!5805992))

(assert (=> b!4819023 d!1542631))

(declare-fun d!1542633 () Bool)

(declare-datatypes ((Option!13450 0))(
  ( (None!13449) (Some!13449 (v!49116 List!54978)) )
))
(declare-fun get!18770 (Option!13450) List!54978)

(declare-fun getValueByKey!2577 (List!54979 (_ BitVec 64)) Option!13450)

(assert (=> d!1542633 (= (apply!13302 lm!2280 (_1!32290 (h!61289 (toList!7401 lm!2280)))) (get!18770 (getValueByKey!2577 (toList!7401 lm!2280) (_1!32290 (h!61289 (toList!7401 lm!2280))))))))

(declare-fun bs!1161181 () Bool)

(assert (= bs!1161181 d!1542633))

(declare-fun m!5805994 () Bool)

(assert (=> bs!1161181 m!5805994))

(assert (=> bs!1161181 m!5805994))

(declare-fun m!5805996 () Bool)

(assert (=> bs!1161181 m!5805996))

(assert (=> b!4819023 d!1542633))

(declare-fun bs!1161182 () Bool)

(declare-fun d!1542637 () Bool)

(assert (= bs!1161182 (and d!1542637 start!499096)))

(declare-fun lambda!235147 () Int)

(assert (=> bs!1161182 (= lambda!235147 lambda!235139)))

(assert (=> d!1542637 (not (containsKey!4277 (apply!13302 lm!2280 (_1!32290 (h!61289 (toList!7401 lm!2280)))) key!5428))))

(declare-fun lt!1968525 () Unit!142167)

(declare-fun choose!34977 (ListLongMap!5893 K!16527 (_ BitVec 64) Hashable!7215) Unit!142167)

(assert (=> d!1542637 (= lt!1968525 (choose!34977 lm!2280 key!5428 (_1!32290 (h!61289 (toList!7401 lm!2280))) hashF!1509))))

(assert (=> d!1542637 (forall!12529 (toList!7401 lm!2280) lambda!235147)))

(assert (=> d!1542637 (= (lemmaNotSameHashThenCannotContainKey!199 lm!2280 key!5428 (_1!32290 (h!61289 (toList!7401 lm!2280))) hashF!1509) lt!1968525)))

(declare-fun bs!1161183 () Bool)

(assert (= bs!1161183 d!1542637))

(assert (=> bs!1161183 m!5805956))

(assert (=> bs!1161183 m!5805956))

(assert (=> bs!1161183 m!5805958))

(declare-fun m!5806000 () Bool)

(assert (=> bs!1161183 m!5806000))

(declare-fun m!5806002 () Bool)

(assert (=> bs!1161183 m!5806002))

(assert (=> b!4819023 d!1542637))

(declare-fun bs!1161184 () Bool)

(declare-fun d!1542641 () Bool)

(assert (= bs!1161184 (and d!1542641 start!499096)))

(declare-fun lambda!235150 () Int)

(assert (=> bs!1161184 (not (= lambda!235150 lambda!235139))))

(declare-fun bs!1161185 () Bool)

(assert (= bs!1161185 (and d!1542641 d!1542637)))

(assert (=> bs!1161185 (not (= lambda!235150 lambda!235147))))

(assert (=> d!1542641 true))

(assert (=> d!1542641 (= (allKeysSameHashInMap!2531 lm!2280 hashF!1509) (forall!12529 (toList!7401 lm!2280) lambda!235150))))

(declare-fun bs!1161186 () Bool)

(assert (= bs!1161186 d!1542641))

(declare-fun m!5806004 () Bool)

(assert (=> bs!1161186 m!5806004))

(assert (=> b!4819024 d!1542641))

(declare-fun d!1542643 () Bool)

(declare-fun e!3010876 () Bool)

(assert (=> d!1542643 e!3010876))

(declare-fun res!2050518 () Bool)

(assert (=> d!1542643 (=> res!2050518 e!3010876)))

(declare-fun lt!1968537 () Bool)

(assert (=> d!1542643 (= res!2050518 (not lt!1968537))))

(declare-fun lt!1968536 () Bool)

(assert (=> d!1542643 (= lt!1968537 lt!1968536)))

(declare-fun lt!1968534 () Unit!142167)

(declare-fun e!3010877 () Unit!142167)

(assert (=> d!1542643 (= lt!1968534 e!3010877)))

(declare-fun c!821265 () Bool)

(assert (=> d!1542643 (= c!821265 lt!1968536)))

(declare-fun containsKey!4279 (List!54979 (_ BitVec 64)) Bool)

(assert (=> d!1542643 (= lt!1968536 (containsKey!4279 (toList!7401 lm!2280) lt!1968515))))

(assert (=> d!1542643 (= (contains!18676 lm!2280 lt!1968515) lt!1968537)))

(declare-fun b!4819074 () Bool)

(declare-fun lt!1968535 () Unit!142167)

(assert (=> b!4819074 (= e!3010877 lt!1968535)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2363 (List!54979 (_ BitVec 64)) Unit!142167)

(assert (=> b!4819074 (= lt!1968535 (lemmaContainsKeyImpliesGetValueByKeyDefined!2363 (toList!7401 lm!2280) lt!1968515))))

(declare-fun isDefined!10566 (Option!13450) Bool)

(assert (=> b!4819074 (isDefined!10566 (getValueByKey!2577 (toList!7401 lm!2280) lt!1968515))))

(declare-fun b!4819075 () Bool)

(declare-fun Unit!142171 () Unit!142167)

(assert (=> b!4819075 (= e!3010877 Unit!142171)))

(declare-fun b!4819076 () Bool)

(assert (=> b!4819076 (= e!3010876 (isDefined!10566 (getValueByKey!2577 (toList!7401 lm!2280) lt!1968515)))))

(assert (= (and d!1542643 c!821265) b!4819074))

(assert (= (and d!1542643 (not c!821265)) b!4819075))

(assert (= (and d!1542643 (not res!2050518)) b!4819076))

(declare-fun m!5806010 () Bool)

(assert (=> d!1542643 m!5806010))

(declare-fun m!5806012 () Bool)

(assert (=> b!4819074 m!5806012))

(declare-fun m!5806014 () Bool)

(assert (=> b!4819074 m!5806014))

(assert (=> b!4819074 m!5806014))

(declare-fun m!5806016 () Bool)

(assert (=> b!4819074 m!5806016))

(assert (=> b!4819076 m!5806014))

(assert (=> b!4819076 m!5806014))

(assert (=> b!4819076 m!5806016))

(assert (=> b!4819027 d!1542643))

(declare-fun d!1542647 () Bool)

(declare-fun hash!5297 (Hashable!7215 K!16527) (_ BitVec 64))

(assert (=> d!1542647 (= (hash!5294 hashF!1509 key!5428) (hash!5297 hashF!1509 key!5428))))

(declare-fun bs!1161188 () Bool)

(assert (= bs!1161188 d!1542647))

(declare-fun m!5806018 () Bool)

(assert (=> bs!1161188 m!5806018))

(assert (=> b!4819027 d!1542647))

(declare-fun d!1542649 () Bool)

(declare-fun res!2050519 () Bool)

(declare-fun e!3010878 () Bool)

(assert (=> d!1542649 (=> res!2050519 e!3010878)))

(assert (=> d!1542649 (= res!2050519 (and (is-Cons!54854 (apply!13302 lm!2280 lt!1968515)) (= (_1!32289 (h!61288 (apply!13302 lm!2280 lt!1968515))) key!5428)))))

(assert (=> d!1542649 (= (containsKey!4277 (apply!13302 lm!2280 lt!1968515) key!5428) e!3010878)))

(declare-fun b!4819077 () Bool)

(declare-fun e!3010879 () Bool)

(assert (=> b!4819077 (= e!3010878 e!3010879)))

(declare-fun res!2050520 () Bool)

(assert (=> b!4819077 (=> (not res!2050520) (not e!3010879))))

(assert (=> b!4819077 (= res!2050520 (is-Cons!54854 (apply!13302 lm!2280 lt!1968515)))))

(declare-fun b!4819078 () Bool)

(assert (=> b!4819078 (= e!3010879 (containsKey!4277 (t!362474 (apply!13302 lm!2280 lt!1968515)) key!5428))))

(assert (= (and d!1542649 (not res!2050519)) b!4819077))

(assert (= (and b!4819077 res!2050520) b!4819078))

(declare-fun m!5806020 () Bool)

(assert (=> b!4819078 m!5806020))

(assert (=> b!4819022 d!1542649))

(declare-fun d!1542651 () Bool)

(assert (=> d!1542651 (= (apply!13302 lm!2280 lt!1968515) (get!18770 (getValueByKey!2577 (toList!7401 lm!2280) lt!1968515)))))

(declare-fun bs!1161189 () Bool)

(assert (= bs!1161189 d!1542651))

(assert (=> bs!1161189 m!5806014))

(assert (=> bs!1161189 m!5806014))

(declare-fun m!5806022 () Bool)

(assert (=> bs!1161189 m!5806022))

(assert (=> b!4819022 d!1542651))

(declare-fun b!4819083 () Bool)

(declare-fun e!3010882 () Bool)

(declare-fun tp!1362156 () Bool)

(declare-fun tp!1362157 () Bool)

(assert (=> b!4819083 (= e!3010882 (and tp!1362156 tp!1362157))))

(assert (=> b!4819026 (= tp!1362148 e!3010882)))

(assert (= (and b!4819026 (is-Cons!54855 (toList!7401 lm!2280))) b!4819083))

(declare-fun b_lambda!188797 () Bool)

(assert (= b_lambda!188795 (or start!499096 b_lambda!188797)))

(declare-fun bs!1161190 () Bool)

(declare-fun d!1542653 () Bool)

(assert (= bs!1161190 (and d!1542653 start!499096)))

(declare-fun noDuplicateKeys!2421 (List!54978) Bool)

(assert (=> bs!1161190 (= (dynLambda!22177 lambda!235139 (h!61289 (t!362475 (toList!7401 lm!2280)))) (noDuplicateKeys!2421 (_2!32290 (h!61289 (t!362475 (toList!7401 lm!2280))))))))

(declare-fun m!5806024 () Bool)

(assert (=> bs!1161190 m!5806024))

(assert (=> b!4819052 d!1542653))

(declare-fun b_lambda!188799 () Bool)

(assert (= b_lambda!188793 (or start!499096 b_lambda!188799)))

(declare-fun bs!1161191 () Bool)

(declare-fun d!1542655 () Bool)

(assert (= bs!1161191 (and d!1542655 start!499096)))

(assert (=> bs!1161191 (= (dynLambda!22177 lambda!235139 (h!61289 (toList!7401 lm!2280))) (noDuplicateKeys!2421 (_2!32290 (h!61289 (toList!7401 lm!2280)))))))

(declare-fun m!5806026 () Bool)

(assert (=> bs!1161191 m!5806026))

(assert (=> b!4819050 d!1542655))

(push 1)

(assert (not b!4819083))

(assert (not b_lambda!188799))

(assert (not d!1542637))

(assert (not d!1542651))

(assert (not d!1542627))

(assert (not d!1542647))

(assert (not bs!1161191))

(assert (not bs!1161190))

(assert (not b!4819053))

(assert (not b!4819059))

(assert (not b!4819076))

(assert (not d!1542633))

(assert (not d!1542643))

(assert tp_is_empty!34315)

(assert (not b!4819078))

(assert (not b_lambda!188797))

(assert (not b!4819074))

(assert (not d!1542641))

(assert (not b!4819051))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

