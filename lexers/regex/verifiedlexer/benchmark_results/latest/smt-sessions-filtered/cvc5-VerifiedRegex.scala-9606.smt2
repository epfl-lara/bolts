; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!504922 () Bool)

(assert start!504922)

(declare-fun b!4846867 () Bool)

(declare-fun e!3029450 () Bool)

(declare-fun tp!1364521 () Bool)

(assert (=> b!4846867 (= e!3029450 tp!1364521)))

(declare-fun b!4846868 () Bool)

(declare-fun e!3029449 () Bool)

(declare-fun e!3029447 () Bool)

(assert (=> b!4846868 (= e!3029449 e!3029447)))

(declare-fun res!2067839 () Bool)

(assert (=> b!4846868 (=> (not res!2067839) (not e!3029447))))

(declare-datatypes ((K!17317 0))(
  ( (K!17318 (val!22159 Int)) )
))
(declare-datatypes ((V!17563 0))(
  ( (V!17564 (val!22160 Int)) )
))
(declare-datatypes ((tuple2!59190 0))(
  ( (tuple2!59191 (_1!32889 K!17317) (_2!32889 V!17563)) )
))
(declare-datatypes ((List!55652 0))(
  ( (Nil!55528) (Cons!55528 (h!61965 tuple2!59190) (t!363148 List!55652)) )
))
(declare-datatypes ((tuple2!59192 0))(
  ( (tuple2!59193 (_1!32890 (_ BitVec 64)) (_2!32890 List!55652)) )
))
(declare-datatypes ((List!55653 0))(
  ( (Nil!55529) (Cons!55529 (h!61966 tuple2!59192) (t!363149 List!55653)) )
))
(declare-datatypes ((ListLongMap!6433 0))(
  ( (ListLongMap!6434 (toList!7845 List!55653)) )
))
(declare-fun lm!2646 () ListLongMap!6433)

(declare-fun lt!1988386 () (_ BitVec 64))

(declare-fun contains!19174 (ListLongMap!6433 (_ BitVec 64)) Bool)

(assert (=> b!4846868 (= res!2067839 (contains!19174 lm!2646 lt!1988386))))

(declare-datatypes ((Hashable!7485 0))(
  ( (HashableExt!7484 (__x!33760 Int)) )
))
(declare-fun hashF!1641 () Hashable!7485)

(declare-fun key!6445 () K!17317)

(declare-fun hash!5560 (Hashable!7485 K!17317) (_ BitVec 64))

(assert (=> b!4846868 (= lt!1988386 (hash!5560 hashF!1641 key!6445))))

(declare-fun b!4846869 () Bool)

(declare-fun res!2067838 () Bool)

(declare-fun e!3029448 () Bool)

(assert (=> b!4846869 (=> res!2067838 e!3029448)))

(assert (=> b!4846869 (= res!2067838 (or (and (is-Cons!55529 (toList!7845 lm!2646)) (= (_1!32890 (h!61966 (toList!7845 lm!2646))) lt!1988386)) (not (is-Cons!55529 (toList!7845 lm!2646))) (= lt!1988386 (_1!32890 (h!61966 (toList!7845 lm!2646))))))))

(declare-fun b!4846870 () Bool)

(declare-fun res!2067835 () Bool)

(assert (=> b!4846870 (=> (not res!2067835) (not e!3029449))))

(declare-fun allKeysSameHashInMap!2801 (ListLongMap!6433 Hashable!7485) Bool)

(assert (=> b!4846870 (= res!2067835 (allKeysSameHashInMap!2801 lm!2646 hashF!1641))))

(declare-fun b!4846871 () Bool)

(declare-fun containsKey!4665 (List!55652 K!17317) Bool)

(assert (=> b!4846871 (= e!3029448 (not (containsKey!4665 (_2!32890 (h!61966 (toList!7845 lm!2646))) key!6445)))))

(declare-fun apply!13428 (ListLongMap!6433 (_ BitVec 64)) List!55652)

(assert (=> b!4846871 (not (containsKey!4665 (apply!13428 lm!2646 (_1!32890 (h!61966 (toList!7845 lm!2646)))) key!6445))))

(declare-datatypes ((Unit!145653 0))(
  ( (Unit!145654) )
))
(declare-fun lt!1988384 () Unit!145653)

(declare-fun lemmaNotSameHashThenCannotContainKey!251 (ListLongMap!6433 K!17317 (_ BitVec 64) Hashable!7485) Unit!145653)

(assert (=> b!4846871 (= lt!1988384 (lemmaNotSameHashThenCannotContainKey!251 lm!2646 key!6445 (_1!32890 (h!61966 (toList!7845 lm!2646))) hashF!1641))))

(declare-fun b!4846872 () Bool)

(assert (=> b!4846872 (= e!3029447 (not e!3029448))))

(declare-fun res!2067836 () Bool)

(assert (=> b!4846872 (=> res!2067836 e!3029448)))

(declare-fun lt!1988388 () List!55652)

(declare-datatypes ((Option!13647 0))(
  ( (None!13646) (Some!13646 (v!49396 tuple2!59190)) )
))
(declare-fun isDefined!10739 (Option!13647) Bool)

(declare-fun getPair!1075 (List!55652 K!17317) Option!13647)

(assert (=> b!4846872 (= res!2067836 (not (isDefined!10739 (getPair!1075 lt!1988388 key!6445))))))

(declare-fun lt!1988383 () tuple2!59192)

(declare-fun lt!1988387 () Unit!145653)

(declare-fun lambda!242433 () Int)

(declare-fun forallContained!4526 (List!55653 Int tuple2!59192) Unit!145653)

(assert (=> b!4846872 (= lt!1988387 (forallContained!4526 (toList!7845 lm!2646) lambda!242433 lt!1988383))))

(declare-fun contains!19175 (List!55653 tuple2!59192) Bool)

(assert (=> b!4846872 (contains!19175 (toList!7845 lm!2646) lt!1988383)))

(assert (=> b!4846872 (= lt!1988383 (tuple2!59193 lt!1988386 lt!1988388))))

(declare-fun lt!1988385 () Unit!145653)

(declare-fun lemmaGetValueImpliesTupleContained!752 (ListLongMap!6433 (_ BitVec 64) List!55652) Unit!145653)

(assert (=> b!4846872 (= lt!1988385 (lemmaGetValueImpliesTupleContained!752 lm!2646 lt!1988386 lt!1988388))))

(assert (=> b!4846872 (= lt!1988388 (apply!13428 lm!2646 lt!1988386))))

(declare-fun res!2067837 () Bool)

(assert (=> start!504922 (=> (not res!2067837) (not e!3029449))))

(declare-fun forall!12938 (List!55653 Int) Bool)

(assert (=> start!504922 (= res!2067837 (forall!12938 (toList!7845 lm!2646) lambda!242433))))

(assert (=> start!504922 e!3029449))

(declare-fun inv!71204 (ListLongMap!6433) Bool)

(assert (=> start!504922 (and (inv!71204 lm!2646) e!3029450)))

(assert (=> start!504922 true))

(declare-fun tp_is_empty!35149 () Bool)

(assert (=> start!504922 tp_is_empty!35149))

(assert (= (and start!504922 res!2067837) b!4846870))

(assert (= (and b!4846870 res!2067835) b!4846868))

(assert (= (and b!4846868 res!2067839) b!4846872))

(assert (= (and b!4846872 (not res!2067836)) b!4846869))

(assert (= (and b!4846869 (not res!2067838)) b!4846871))

(assert (= start!504922 b!4846867))

(declare-fun m!5844902 () Bool)

(assert (=> b!4846870 m!5844902))

(declare-fun m!5844904 () Bool)

(assert (=> start!504922 m!5844904))

(declare-fun m!5844906 () Bool)

(assert (=> start!504922 m!5844906))

(declare-fun m!5844908 () Bool)

(assert (=> b!4846872 m!5844908))

(declare-fun m!5844910 () Bool)

(assert (=> b!4846872 m!5844910))

(declare-fun m!5844912 () Bool)

(assert (=> b!4846872 m!5844912))

(declare-fun m!5844914 () Bool)

(assert (=> b!4846872 m!5844914))

(assert (=> b!4846872 m!5844910))

(declare-fun m!5844916 () Bool)

(assert (=> b!4846872 m!5844916))

(declare-fun m!5844918 () Bool)

(assert (=> b!4846872 m!5844918))

(declare-fun m!5844920 () Bool)

(assert (=> b!4846868 m!5844920))

(declare-fun m!5844922 () Bool)

(assert (=> b!4846868 m!5844922))

(declare-fun m!5844924 () Bool)

(assert (=> b!4846871 m!5844924))

(declare-fun m!5844926 () Bool)

(assert (=> b!4846871 m!5844926))

(assert (=> b!4846871 m!5844926))

(declare-fun m!5844928 () Bool)

(assert (=> b!4846871 m!5844928))

(declare-fun m!5844930 () Bool)

(assert (=> b!4846871 m!5844930))

(push 1)

(assert (not b!4846870))

(assert (not b!4846867))

(assert (not start!504922))

(assert (not b!4846872))

(assert (not b!4846871))

(assert (not b!4846868))

(assert tp_is_empty!35149)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1554867 () Bool)

(declare-fun res!2067874 () Bool)

(declare-fun e!3029485 () Bool)

(assert (=> d!1554867 (=> res!2067874 e!3029485)))

(assert (=> d!1554867 (= res!2067874 (and (is-Cons!55528 (_2!32890 (h!61966 (toList!7845 lm!2646)))) (= (_1!32889 (h!61965 (_2!32890 (h!61966 (toList!7845 lm!2646))))) key!6445)))))

(assert (=> d!1554867 (= (containsKey!4665 (_2!32890 (h!61966 (toList!7845 lm!2646))) key!6445) e!3029485)))

(declare-fun b!4846922 () Bool)

(declare-fun e!3029486 () Bool)

(assert (=> b!4846922 (= e!3029485 e!3029486)))

(declare-fun res!2067875 () Bool)

(assert (=> b!4846922 (=> (not res!2067875) (not e!3029486))))

(assert (=> b!4846922 (= res!2067875 (is-Cons!55528 (_2!32890 (h!61966 (toList!7845 lm!2646)))))))

(declare-fun b!4846923 () Bool)

(assert (=> b!4846923 (= e!3029486 (containsKey!4665 (t!363148 (_2!32890 (h!61966 (toList!7845 lm!2646)))) key!6445))))

(assert (= (and d!1554867 (not res!2067874)) b!4846922))

(assert (= (and b!4846922 res!2067875) b!4846923))

(declare-fun m!5844986 () Bool)

(assert (=> b!4846923 m!5844986))

(assert (=> b!4846871 d!1554867))

(declare-fun d!1554871 () Bool)

(declare-fun res!2067876 () Bool)

(declare-fun e!3029487 () Bool)

(assert (=> d!1554871 (=> res!2067876 e!3029487)))

(assert (=> d!1554871 (= res!2067876 (and (is-Cons!55528 (apply!13428 lm!2646 (_1!32890 (h!61966 (toList!7845 lm!2646))))) (= (_1!32889 (h!61965 (apply!13428 lm!2646 (_1!32890 (h!61966 (toList!7845 lm!2646)))))) key!6445)))))

(assert (=> d!1554871 (= (containsKey!4665 (apply!13428 lm!2646 (_1!32890 (h!61966 (toList!7845 lm!2646)))) key!6445) e!3029487)))

(declare-fun b!4846924 () Bool)

(declare-fun e!3029488 () Bool)

(assert (=> b!4846924 (= e!3029487 e!3029488)))

(declare-fun res!2067877 () Bool)

(assert (=> b!4846924 (=> (not res!2067877) (not e!3029488))))

(assert (=> b!4846924 (= res!2067877 (is-Cons!55528 (apply!13428 lm!2646 (_1!32890 (h!61966 (toList!7845 lm!2646))))))))

(declare-fun b!4846925 () Bool)

(assert (=> b!4846925 (= e!3029488 (containsKey!4665 (t!363148 (apply!13428 lm!2646 (_1!32890 (h!61966 (toList!7845 lm!2646))))) key!6445))))

(assert (= (and d!1554871 (not res!2067876)) b!4846924))

(assert (= (and b!4846924 res!2067877) b!4846925))

(declare-fun m!5844988 () Bool)

(assert (=> b!4846925 m!5844988))

(assert (=> b!4846871 d!1554871))

(declare-fun d!1554873 () Bool)

(declare-datatypes ((Option!13650 0))(
  ( (None!13649) (Some!13649 (v!49401 List!55652)) )
))
(declare-fun get!19010 (Option!13650) List!55652)

(declare-fun getValueByKey!2721 (List!55653 (_ BitVec 64)) Option!13650)

(assert (=> d!1554873 (= (apply!13428 lm!2646 (_1!32890 (h!61966 (toList!7845 lm!2646)))) (get!19010 (getValueByKey!2721 (toList!7845 lm!2646) (_1!32890 (h!61966 (toList!7845 lm!2646))))))))

(declare-fun bs!1172374 () Bool)

(assert (= bs!1172374 d!1554873))

(declare-fun m!5844990 () Bool)

(assert (=> bs!1172374 m!5844990))

(assert (=> bs!1172374 m!5844990))

(declare-fun m!5844992 () Bool)

(assert (=> bs!1172374 m!5844992))

(assert (=> b!4846871 d!1554873))

(declare-fun bs!1172376 () Bool)

(declare-fun d!1554875 () Bool)

(assert (= bs!1172376 (and d!1554875 start!504922)))

(declare-fun lambda!242441 () Int)

(assert (=> bs!1172376 (= lambda!242441 lambda!242433)))

(assert (=> d!1554875 (not (containsKey!4665 (apply!13428 lm!2646 (_1!32890 (h!61966 (toList!7845 lm!2646)))) key!6445))))

(declare-fun lt!1988421 () Unit!145653)

(declare-fun choose!35425 (ListLongMap!6433 K!17317 (_ BitVec 64) Hashable!7485) Unit!145653)

(assert (=> d!1554875 (= lt!1988421 (choose!35425 lm!2646 key!6445 (_1!32890 (h!61966 (toList!7845 lm!2646))) hashF!1641))))

(assert (=> d!1554875 (forall!12938 (toList!7845 lm!2646) lambda!242441)))

(assert (=> d!1554875 (= (lemmaNotSameHashThenCannotContainKey!251 lm!2646 key!6445 (_1!32890 (h!61966 (toList!7845 lm!2646))) hashF!1641) lt!1988421)))

(declare-fun bs!1172377 () Bool)

(assert (= bs!1172377 d!1554875))

(assert (=> bs!1172377 m!5844926))

(assert (=> bs!1172377 m!5844926))

(assert (=> bs!1172377 m!5844928))

(declare-fun m!5845004 () Bool)

(assert (=> bs!1172377 m!5845004))

(declare-fun m!5845006 () Bool)

(assert (=> bs!1172377 m!5845006))

(assert (=> b!4846871 d!1554875))

(declare-fun d!1554881 () Bool)

(declare-fun res!2067894 () Bool)

(declare-fun e!3029505 () Bool)

(assert (=> d!1554881 (=> res!2067894 e!3029505)))

(assert (=> d!1554881 (= res!2067894 (is-Nil!55529 (toList!7845 lm!2646)))))

(assert (=> d!1554881 (= (forall!12938 (toList!7845 lm!2646) lambda!242433) e!3029505)))

(declare-fun b!4846943 () Bool)

(declare-fun e!3029506 () Bool)

(assert (=> b!4846943 (= e!3029505 e!3029506)))

(declare-fun res!2067895 () Bool)

(assert (=> b!4846943 (=> (not res!2067895) (not e!3029506))))

(declare-fun dynLambda!22347 (Int tuple2!59192) Bool)

(assert (=> b!4846943 (= res!2067895 (dynLambda!22347 lambda!242433 (h!61966 (toList!7845 lm!2646))))))

(declare-fun b!4846944 () Bool)

(assert (=> b!4846944 (= e!3029506 (forall!12938 (t!363149 (toList!7845 lm!2646)) lambda!242433))))

(assert (= (and d!1554881 (not res!2067894)) b!4846943))

(assert (= (and b!4846943 res!2067895) b!4846944))

(declare-fun b_lambda!192403 () Bool)

(assert (=> (not b_lambda!192403) (not b!4846943)))

(declare-fun m!5845012 () Bool)

(assert (=> b!4846943 m!5845012))

(declare-fun m!5845014 () Bool)

(assert (=> b!4846944 m!5845014))

(assert (=> start!504922 d!1554881))

(declare-fun d!1554885 () Bool)

(declare-fun isStrictlySorted!1069 (List!55653) Bool)

(assert (=> d!1554885 (= (inv!71204 lm!2646) (isStrictlySorted!1069 (toList!7845 lm!2646)))))

(declare-fun bs!1172379 () Bool)

(assert (= bs!1172379 d!1554885))

(declare-fun m!5845018 () Bool)

(assert (=> bs!1172379 m!5845018))

(assert (=> start!504922 d!1554885))

(declare-fun b!4846970 () Bool)

(declare-fun res!2067909 () Bool)

(declare-fun e!3029523 () Bool)

(assert (=> b!4846970 (=> (not res!2067909) (not e!3029523))))

(declare-fun lt!1988436 () Option!13647)

(declare-fun get!19011 (Option!13647) tuple2!59190)

(assert (=> b!4846970 (= res!2067909 (= (_1!32889 (get!19011 lt!1988436)) key!6445))))

(declare-fun b!4846971 () Bool)

(declare-fun e!3029525 () Option!13647)

(assert (=> b!4846971 (= e!3029525 (getPair!1075 (t!363148 lt!1988388) key!6445))))

(declare-fun b!4846972 () Bool)

(declare-fun e!3029524 () Bool)

(assert (=> b!4846972 (= e!3029524 (not (containsKey!4665 lt!1988388 key!6445)))))

(declare-fun b!4846973 () Bool)

(declare-fun e!3029526 () Option!13647)

(assert (=> b!4846973 (= e!3029526 (Some!13646 (h!61965 lt!1988388)))))

(declare-fun b!4846974 () Bool)

(declare-fun e!3029527 () Bool)

(assert (=> b!4846974 (= e!3029527 e!3029523)))

(declare-fun res!2067907 () Bool)

(assert (=> b!4846974 (=> (not res!2067907) (not e!3029523))))

(assert (=> b!4846974 (= res!2067907 (isDefined!10739 lt!1988436))))

(declare-fun b!4846975 () Bool)

(assert (=> b!4846975 (= e!3029525 None!13646)))

(declare-fun d!1554889 () Bool)

(assert (=> d!1554889 e!3029527))

(declare-fun res!2067910 () Bool)

(assert (=> d!1554889 (=> res!2067910 e!3029527)))

(assert (=> d!1554889 (= res!2067910 e!3029524)))

(declare-fun res!2067908 () Bool)

(assert (=> d!1554889 (=> (not res!2067908) (not e!3029524))))

(declare-fun isEmpty!29719 (Option!13647) Bool)

(assert (=> d!1554889 (= res!2067908 (isEmpty!29719 lt!1988436))))

(assert (=> d!1554889 (= lt!1988436 e!3029526)))

(declare-fun c!825031 () Bool)

(assert (=> d!1554889 (= c!825031 (and (is-Cons!55528 lt!1988388) (= (_1!32889 (h!61965 lt!1988388)) key!6445)))))

(declare-fun noDuplicateKeys!2581 (List!55652) Bool)

(assert (=> d!1554889 (noDuplicateKeys!2581 lt!1988388)))

(assert (=> d!1554889 (= (getPair!1075 lt!1988388 key!6445) lt!1988436)))

(declare-fun b!4846976 () Bool)

(declare-fun contains!19179 (List!55652 tuple2!59190) Bool)

(assert (=> b!4846976 (= e!3029523 (contains!19179 lt!1988388 (get!19011 lt!1988436)))))

(declare-fun b!4846977 () Bool)

(assert (=> b!4846977 (= e!3029526 e!3029525)))

(declare-fun c!825032 () Bool)

(assert (=> b!4846977 (= c!825032 (is-Cons!55528 lt!1988388))))

(assert (= (and d!1554889 c!825031) b!4846973))

(assert (= (and d!1554889 (not c!825031)) b!4846977))

(assert (= (and b!4846977 c!825032) b!4846971))

(assert (= (and b!4846977 (not c!825032)) b!4846975))

(assert (= (and d!1554889 res!2067908) b!4846972))

(assert (= (and d!1554889 (not res!2067910)) b!4846974))

(assert (= (and b!4846974 res!2067907) b!4846970))

(assert (= (and b!4846970 res!2067909) b!4846976))

(declare-fun m!5845028 () Bool)

(assert (=> b!4846972 m!5845028))

(declare-fun m!5845030 () Bool)

(assert (=> b!4846974 m!5845030))

(declare-fun m!5845032 () Bool)

(assert (=> b!4846970 m!5845032))

(declare-fun m!5845034 () Bool)

(assert (=> d!1554889 m!5845034))

(declare-fun m!5845036 () Bool)

(assert (=> d!1554889 m!5845036))

(assert (=> b!4846976 m!5845032))

(assert (=> b!4846976 m!5845032))

(declare-fun m!5845038 () Bool)

(assert (=> b!4846976 m!5845038))

(declare-fun m!5845040 () Bool)

(assert (=> b!4846971 m!5845040))

(assert (=> b!4846872 d!1554889))

(declare-fun d!1554895 () Bool)

(assert (=> d!1554895 (contains!19175 (toList!7845 lm!2646) (tuple2!59193 lt!1988386 lt!1988388))))

(declare-fun lt!1988439 () Unit!145653)

(declare-fun choose!35427 (ListLongMap!6433 (_ BitVec 64) List!55652) Unit!145653)

(assert (=> d!1554895 (= lt!1988439 (choose!35427 lm!2646 lt!1988386 lt!1988388))))

(assert (=> d!1554895 (contains!19174 lm!2646 lt!1988386)))

(assert (=> d!1554895 (= (lemmaGetValueImpliesTupleContained!752 lm!2646 lt!1988386 lt!1988388) lt!1988439)))

(declare-fun bs!1172383 () Bool)

(assert (= bs!1172383 d!1554895))

(declare-fun m!5845044 () Bool)

(assert (=> bs!1172383 m!5845044))

(declare-fun m!5845046 () Bool)

(assert (=> bs!1172383 m!5845046))

(assert (=> bs!1172383 m!5844920))

(assert (=> b!4846872 d!1554895))

(declare-fun d!1554899 () Bool)

(assert (=> d!1554899 (= (isDefined!10739 (getPair!1075 lt!1988388 key!6445)) (not (isEmpty!29719 (getPair!1075 lt!1988388 key!6445))))))

(declare-fun bs!1172384 () Bool)

(assert (= bs!1172384 d!1554899))

(assert (=> bs!1172384 m!5844910))

(declare-fun m!5845048 () Bool)

(assert (=> bs!1172384 m!5845048))

(assert (=> b!4846872 d!1554899))

(declare-fun d!1554901 () Bool)

(assert (=> d!1554901 (= (apply!13428 lm!2646 lt!1988386) (get!19010 (getValueByKey!2721 (toList!7845 lm!2646) lt!1988386)))))

(declare-fun bs!1172385 () Bool)

(assert (= bs!1172385 d!1554901))

(declare-fun m!5845050 () Bool)

(assert (=> bs!1172385 m!5845050))

(assert (=> bs!1172385 m!5845050))

(declare-fun m!5845052 () Bool)

(assert (=> bs!1172385 m!5845052))

(assert (=> b!4846872 d!1554901))

(declare-fun d!1554903 () Bool)

(assert (=> d!1554903 (dynLambda!22347 lambda!242433 lt!1988383)))

(declare-fun lt!1988442 () Unit!145653)

(declare-fun choose!35428 (List!55653 Int tuple2!59192) Unit!145653)

(assert (=> d!1554903 (= lt!1988442 (choose!35428 (toList!7845 lm!2646) lambda!242433 lt!1988383))))

(declare-fun e!3029538 () Bool)

(assert (=> d!1554903 e!3029538))

(declare-fun res!2067921 () Bool)

(assert (=> d!1554903 (=> (not res!2067921) (not e!3029538))))

(assert (=> d!1554903 (= res!2067921 (forall!12938 (toList!7845 lm!2646) lambda!242433))))

(assert (=> d!1554903 (= (forallContained!4526 (toList!7845 lm!2646) lambda!242433 lt!1988383) lt!1988442)))

(declare-fun b!4846991 () Bool)

(assert (=> b!4846991 (= e!3029538 (contains!19175 (toList!7845 lm!2646) lt!1988383))))

(assert (= (and d!1554903 res!2067921) b!4846991))

(declare-fun b_lambda!192405 () Bool)

(assert (=> (not b_lambda!192405) (not d!1554903)))

(declare-fun m!5845062 () Bool)

(assert (=> d!1554903 m!5845062))

(declare-fun m!5845064 () Bool)

(assert (=> d!1554903 m!5845064))

(assert (=> d!1554903 m!5844904))

(assert (=> b!4846991 m!5844908))

(assert (=> b!4846872 d!1554903))

(declare-fun d!1554911 () Bool)

(declare-fun lt!1988448 () Bool)

(declare-fun content!9868 (List!55653) (Set tuple2!59192))

(assert (=> d!1554911 (= lt!1988448 (set.member lt!1988383 (content!9868 (toList!7845 lm!2646))))))

(declare-fun e!3029546 () Bool)

(assert (=> d!1554911 (= lt!1988448 e!3029546)))

(declare-fun res!2067927 () Bool)

(assert (=> d!1554911 (=> (not res!2067927) (not e!3029546))))

(assert (=> d!1554911 (= res!2067927 (is-Cons!55529 (toList!7845 lm!2646)))))

(assert (=> d!1554911 (= (contains!19175 (toList!7845 lm!2646) lt!1988383) lt!1988448)))

(declare-fun b!4847001 () Bool)

(declare-fun e!3029547 () Bool)

(assert (=> b!4847001 (= e!3029546 e!3029547)))

(declare-fun res!2067926 () Bool)

(assert (=> b!4847001 (=> res!2067926 e!3029547)))

(assert (=> b!4847001 (= res!2067926 (= (h!61966 (toList!7845 lm!2646)) lt!1988383))))

(declare-fun b!4847002 () Bool)

(assert (=> b!4847002 (= e!3029547 (contains!19175 (t!363149 (toList!7845 lm!2646)) lt!1988383))))

(assert (= (and d!1554911 res!2067927) b!4847001))

(assert (= (and b!4847001 (not res!2067926)) b!4847002))

(declare-fun m!5845072 () Bool)

(assert (=> d!1554911 m!5845072))

(declare-fun m!5845074 () Bool)

(assert (=> d!1554911 m!5845074))

(declare-fun m!5845076 () Bool)

(assert (=> b!4847002 m!5845076))

(assert (=> b!4846872 d!1554911))

(declare-fun d!1554917 () Bool)

(declare-fun e!3029552 () Bool)

(assert (=> d!1554917 e!3029552))

(declare-fun res!2067930 () Bool)

(assert (=> d!1554917 (=> res!2067930 e!3029552)))

(declare-fun lt!1988460 () Bool)

(assert (=> d!1554917 (= res!2067930 (not lt!1988460))))

(declare-fun lt!1988458 () Bool)

(assert (=> d!1554917 (= lt!1988460 lt!1988458)))

(declare-fun lt!1988457 () Unit!145653)

(declare-fun e!3029553 () Unit!145653)

(assert (=> d!1554917 (= lt!1988457 e!3029553)))

(declare-fun c!825035 () Bool)

(assert (=> d!1554917 (= c!825035 lt!1988458)))

(declare-fun containsKey!4668 (List!55653 (_ BitVec 64)) Bool)

(assert (=> d!1554917 (= lt!1988458 (containsKey!4668 (toList!7845 lm!2646) lt!1988386))))

(assert (=> d!1554917 (= (contains!19174 lm!2646 lt!1988386) lt!1988460)))

(declare-fun b!4847009 () Bool)

(declare-fun lt!1988459 () Unit!145653)

(assert (=> b!4847009 (= e!3029553 lt!1988459)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2493 (List!55653 (_ BitVec 64)) Unit!145653)

(assert (=> b!4847009 (= lt!1988459 (lemmaContainsKeyImpliesGetValueByKeyDefined!2493 (toList!7845 lm!2646) lt!1988386))))

(declare-fun isDefined!10742 (Option!13650) Bool)

(assert (=> b!4847009 (isDefined!10742 (getValueByKey!2721 (toList!7845 lm!2646) lt!1988386))))

(declare-fun b!4847010 () Bool)

(declare-fun Unit!145658 () Unit!145653)

(assert (=> b!4847010 (= e!3029553 Unit!145658)))

(declare-fun b!4847011 () Bool)

(assert (=> b!4847011 (= e!3029552 (isDefined!10742 (getValueByKey!2721 (toList!7845 lm!2646) lt!1988386)))))

(assert (= (and d!1554917 c!825035) b!4847009))

(assert (= (and d!1554917 (not c!825035)) b!4847010))

(assert (= (and d!1554917 (not res!2067930)) b!4847011))

(declare-fun m!5845080 () Bool)

(assert (=> d!1554917 m!5845080))

(declare-fun m!5845082 () Bool)

(assert (=> b!4847009 m!5845082))

(assert (=> b!4847009 m!5845050))

(assert (=> b!4847009 m!5845050))

(declare-fun m!5845084 () Bool)

(assert (=> b!4847009 m!5845084))

(assert (=> b!4847011 m!5845050))

(assert (=> b!4847011 m!5845050))

(assert (=> b!4847011 m!5845084))

(assert (=> b!4846868 d!1554917))

(declare-fun d!1554919 () Bool)

(declare-fun hash!5565 (Hashable!7485 K!17317) (_ BitVec 64))

(assert (=> d!1554919 (= (hash!5560 hashF!1641 key!6445) (hash!5565 hashF!1641 key!6445))))

(declare-fun bs!1172392 () Bool)

(assert (= bs!1172392 d!1554919))

(declare-fun m!5845086 () Bool)

(assert (=> bs!1172392 m!5845086))

(assert (=> b!4846868 d!1554919))

(declare-fun bs!1172393 () Bool)

(declare-fun d!1554921 () Bool)

(assert (= bs!1172393 (and d!1554921 start!504922)))

(declare-fun lambda!242450 () Int)

(assert (=> bs!1172393 (not (= lambda!242450 lambda!242433))))

(declare-fun bs!1172394 () Bool)

(assert (= bs!1172394 (and d!1554921 d!1554875)))

(assert (=> bs!1172394 (not (= lambda!242450 lambda!242441))))

(assert (=> d!1554921 true))

(assert (=> d!1554921 (= (allKeysSameHashInMap!2801 lm!2646 hashF!1641) (forall!12938 (toList!7845 lm!2646) lambda!242450))))

(declare-fun bs!1172395 () Bool)

(assert (= bs!1172395 d!1554921))

(declare-fun m!5845088 () Bool)

(assert (=> bs!1172395 m!5845088))

(assert (=> b!4846870 d!1554921))

(declare-fun b!4847018 () Bool)

(declare-fun e!3029556 () Bool)

(declare-fun tp!1364535 () Bool)

(declare-fun tp!1364536 () Bool)

(assert (=> b!4847018 (= e!3029556 (and tp!1364535 tp!1364536))))

(assert (=> b!4846867 (= tp!1364521 e!3029556)))

(assert (= (and b!4846867 (is-Cons!55529 (toList!7845 lm!2646))) b!4847018))

(declare-fun b_lambda!192411 () Bool)

(assert (= b_lambda!192403 (or start!504922 b_lambda!192411)))

(declare-fun bs!1172396 () Bool)

(declare-fun d!1554923 () Bool)

(assert (= bs!1172396 (and d!1554923 start!504922)))

(assert (=> bs!1172396 (= (dynLambda!22347 lambda!242433 (h!61966 (toList!7845 lm!2646))) (noDuplicateKeys!2581 (_2!32890 (h!61966 (toList!7845 lm!2646)))))))

(declare-fun m!5845090 () Bool)

(assert (=> bs!1172396 m!5845090))

(assert (=> b!4846943 d!1554923))

(declare-fun b_lambda!192413 () Bool)

(assert (= b_lambda!192405 (or start!504922 b_lambda!192413)))

(declare-fun bs!1172397 () Bool)

(declare-fun d!1554925 () Bool)

(assert (= bs!1172397 (and d!1554925 start!504922)))

(assert (=> bs!1172397 (= (dynLambda!22347 lambda!242433 lt!1988383) (noDuplicateKeys!2581 (_2!32890 lt!1988383)))))

(declare-fun m!5845092 () Bool)

(assert (=> bs!1172397 m!5845092))

(assert (=> d!1554903 d!1554925))

(push 1)

(assert (not b!4847011))

(assert (not b!4846976))

(assert (not b_lambda!192413))

(assert (not b!4847002))

(assert (not b_lambda!192411))

(assert (not bs!1172397))

(assert (not b!4846923))

(assert (not d!1554873))

(assert (not d!1554903))

(assert (not d!1554885))

(assert (not b!4846944))

(assert (not b!4846974))

(assert (not b!4846925))

(assert (not d!1554899))

(assert (not d!1554889))

(assert (not d!1554921))

(assert (not b!4847018))

(assert (not b!4847009))

(assert (not d!1554917))

(assert (not d!1554875))

(assert (not d!1554895))

(assert (not b!4846970))

(assert (not b!4846971))

(assert tp_is_empty!35149)

(assert (not b!4846991))

(assert (not d!1554911))

(assert (not d!1554901))

(assert (not d!1554919))

(assert (not bs!1172396))

(assert (not b!4846972))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!1554875 d!1554871))

(assert (=> d!1554875 d!1554873))

(declare-fun d!1554927 () Bool)

(assert (=> d!1554927 (not (containsKey!4665 (apply!13428 lm!2646 (_1!32890 (h!61966 (toList!7845 lm!2646)))) key!6445))))

(assert (=> d!1554927 true))

(declare-fun _$39!484 () Unit!145653)

(assert (=> d!1554927 (= (choose!35425 lm!2646 key!6445 (_1!32890 (h!61966 (toList!7845 lm!2646))) hashF!1641) _$39!484)))

(declare-fun bs!1172398 () Bool)

(assert (= bs!1172398 d!1554927))

(assert (=> bs!1172398 m!5844926))

(assert (=> bs!1172398 m!5844926))

(assert (=> bs!1172398 m!5844928))

(assert (=> d!1554875 d!1554927))

(declare-fun d!1554929 () Bool)

(declare-fun res!2067931 () Bool)

(declare-fun e!3029557 () Bool)

(assert (=> d!1554929 (=> res!2067931 e!3029557)))

(assert (=> d!1554929 (= res!2067931 (is-Nil!55529 (toList!7845 lm!2646)))))

(assert (=> d!1554929 (= (forall!12938 (toList!7845 lm!2646) lambda!242441) e!3029557)))

(declare-fun b!4847019 () Bool)

(declare-fun e!3029558 () Bool)

(assert (=> b!4847019 (= e!3029557 e!3029558)))

(declare-fun res!2067932 () Bool)

(assert (=> b!4847019 (=> (not res!2067932) (not e!3029558))))

(assert (=> b!4847019 (= res!2067932 (dynLambda!22347 lambda!242441 (h!61966 (toList!7845 lm!2646))))))

(declare-fun b!4847020 () Bool)

(assert (=> b!4847020 (= e!3029558 (forall!12938 (t!363149 (toList!7845 lm!2646)) lambda!242441))))

(assert (= (and d!1554929 (not res!2067931)) b!4847019))

(assert (= (and b!4847019 res!2067932) b!4847020))

(declare-fun b_lambda!192415 () Bool)

(assert (=> (not b_lambda!192415) (not b!4847019)))

(declare-fun m!5845094 () Bool)

(assert (=> b!4847019 m!5845094))

(declare-fun m!5845096 () Bool)

(assert (=> b!4847020 m!5845096))

(assert (=> d!1554875 d!1554929))

(declare-fun d!1554931 () Bool)

(declare-fun lt!1988463 () Bool)

(declare-fun content!9869 (List!55652) (Set tuple2!59190))

(assert (=> d!1554931 (= lt!1988463 (set.member (get!19011 lt!1988436) (content!9869 lt!1988388)))))

(declare-fun e!3029564 () Bool)

(assert (=> d!1554931 (= lt!1988463 e!3029564)))

(declare-fun res!2067937 () Bool)

(assert (=> d!1554931 (=> (not res!2067937) (not e!3029564))))

(assert (=> d!1554931 (= res!2067937 (is-Cons!55528 lt!1988388))))

(assert (=> d!1554931 (= (contains!19179 lt!1988388 (get!19011 lt!1988436)) lt!1988463)))

(declare-fun b!4847025 () Bool)

(declare-fun e!3029563 () Bool)

(assert (=> b!4847025 (= e!3029564 e!3029563)))

(declare-fun res!2067938 () Bool)

(assert (=> b!4847025 (=> res!2067938 e!3029563)))

(assert (=> b!4847025 (= res!2067938 (= (h!61965 lt!1988388) (get!19011 lt!1988436)))))

(declare-fun b!4847026 () Bool)

(assert (=> b!4847026 (= e!3029563 (contains!19179 (t!363148 lt!1988388) (get!19011 lt!1988436)))))

(assert (= (and d!1554931 res!2067937) b!4847025))

(assert (= (and b!4847025 (not res!2067938)) b!4847026))

(declare-fun m!5845098 () Bool)

(assert (=> d!1554931 m!5845098))

(assert (=> d!1554931 m!5845032))

(declare-fun m!5845100 () Bool)

(assert (=> d!1554931 m!5845100))

(assert (=> b!4847026 m!5845032))

(declare-fun m!5845102 () Bool)

(assert (=> b!4847026 m!5845102))

(assert (=> b!4846976 d!1554931))

(declare-fun d!1554933 () Bool)

(assert (=> d!1554933 (= (get!19011 lt!1988436) (v!49396 lt!1988436))))

(assert (=> b!4846976 d!1554933))

(declare-fun d!1554935 () Bool)

(assert (=> d!1554935 (= (isDefined!10739 lt!1988436) (not (isEmpty!29719 lt!1988436)))))

(declare-fun bs!1172399 () Bool)

(assert (= bs!1172399 d!1554935))

(assert (=> bs!1172399 m!5845034))

(assert (=> b!4846974 d!1554935))

(declare-fun d!1554937 () Bool)

(declare-fun res!2067939 () Bool)

(declare-fun e!3029565 () Bool)

(assert (=> d!1554937 (=> res!2067939 e!3029565)))

(assert (=> d!1554937 (= res!2067939 (and (is-Cons!55528 (t!363148 (apply!13428 lm!2646 (_1!32890 (h!61966 (toList!7845 lm!2646)))))) (= (_1!32889 (h!61965 (t!363148 (apply!13428 lm!2646 (_1!32890 (h!61966 (toList!7845 lm!2646))))))) key!6445)))))

(assert (=> d!1554937 (= (containsKey!4665 (t!363148 (apply!13428 lm!2646 (_1!32890 (h!61966 (toList!7845 lm!2646))))) key!6445) e!3029565)))

(declare-fun b!4847027 () Bool)

(declare-fun e!3029566 () Bool)

(assert (=> b!4847027 (= e!3029565 e!3029566)))

(declare-fun res!2067940 () Bool)

(assert (=> b!4847027 (=> (not res!2067940) (not e!3029566))))

(assert (=> b!4847027 (= res!2067940 (is-Cons!55528 (t!363148 (apply!13428 lm!2646 (_1!32890 (h!61966 (toList!7845 lm!2646)))))))))

(declare-fun b!4847028 () Bool)

(assert (=> b!4847028 (= e!3029566 (containsKey!4665 (t!363148 (t!363148 (apply!13428 lm!2646 (_1!32890 (h!61966 (toList!7845 lm!2646)))))) key!6445))))

(assert (= (and d!1554937 (not res!2067939)) b!4847027))

(assert (= (and b!4847027 res!2067940) b!4847028))

(declare-fun m!5845104 () Bool)

(assert (=> b!4847028 m!5845104))

(assert (=> b!4846925 d!1554937))

(declare-fun d!1554941 () Bool)

(declare-fun res!2067945 () Bool)

(declare-fun e!3029571 () Bool)

(assert (=> d!1554941 (=> res!2067945 e!3029571)))

(assert (=> d!1554941 (= res!2067945 (not (is-Cons!55528 (_2!32890 (h!61966 (toList!7845 lm!2646))))))))

(assert (=> d!1554941 (= (noDuplicateKeys!2581 (_2!32890 (h!61966 (toList!7845 lm!2646)))) e!3029571)))

(declare-fun b!4847033 () Bool)

(declare-fun e!3029572 () Bool)

(assert (=> b!4847033 (= e!3029571 e!3029572)))

(declare-fun res!2067946 () Bool)

(assert (=> b!4847033 (=> (not res!2067946) (not e!3029572))))

(assert (=> b!4847033 (= res!2067946 (not (containsKey!4665 (t!363148 (_2!32890 (h!61966 (toList!7845 lm!2646)))) (_1!32889 (h!61965 (_2!32890 (h!61966 (toList!7845 lm!2646))))))))))

(declare-fun b!4847034 () Bool)

(assert (=> b!4847034 (= e!3029572 (noDuplicateKeys!2581 (t!363148 (_2!32890 (h!61966 (toList!7845 lm!2646))))))))

(assert (= (and d!1554941 (not res!2067945)) b!4847033))

(assert (= (and b!4847033 res!2067946) b!4847034))

(declare-fun m!5845106 () Bool)

(assert (=> b!4847033 m!5845106))

(declare-fun m!5845108 () Bool)

(assert (=> b!4847034 m!5845108))

(assert (=> bs!1172396 d!1554941))

(declare-fun b!4847035 () Bool)

(declare-fun res!2067949 () Bool)

(declare-fun e!3029573 () Bool)

(assert (=> b!4847035 (=> (not res!2067949) (not e!3029573))))

(declare-fun lt!1988464 () Option!13647)

(assert (=> b!4847035 (= res!2067949 (= (_1!32889 (get!19011 lt!1988464)) key!6445))))

(declare-fun b!4847036 () Bool)

(declare-fun e!3029575 () Option!13647)

(assert (=> b!4847036 (= e!3029575 (getPair!1075 (t!363148 (t!363148 lt!1988388)) key!6445))))

(declare-fun b!4847037 () Bool)

(declare-fun e!3029574 () Bool)

(assert (=> b!4847037 (= e!3029574 (not (containsKey!4665 (t!363148 lt!1988388) key!6445)))))

(declare-fun b!4847038 () Bool)

(declare-fun e!3029576 () Option!13647)

(assert (=> b!4847038 (= e!3029576 (Some!13646 (h!61965 (t!363148 lt!1988388))))))

(declare-fun b!4847039 () Bool)

(declare-fun e!3029577 () Bool)

(assert (=> b!4847039 (= e!3029577 e!3029573)))

(declare-fun res!2067947 () Bool)

(assert (=> b!4847039 (=> (not res!2067947) (not e!3029573))))

(assert (=> b!4847039 (= res!2067947 (isDefined!10739 lt!1988464))))

(declare-fun b!4847040 () Bool)

(assert (=> b!4847040 (= e!3029575 None!13646)))

(declare-fun d!1554945 () Bool)

(assert (=> d!1554945 e!3029577))

(declare-fun res!2067950 () Bool)

(assert (=> d!1554945 (=> res!2067950 e!3029577)))

(assert (=> d!1554945 (= res!2067950 e!3029574)))

(declare-fun res!2067948 () Bool)

(assert (=> d!1554945 (=> (not res!2067948) (not e!3029574))))

(assert (=> d!1554945 (= res!2067948 (isEmpty!29719 lt!1988464))))

(assert (=> d!1554945 (= lt!1988464 e!3029576)))

(declare-fun c!825036 () Bool)

(assert (=> d!1554945 (= c!825036 (and (is-Cons!55528 (t!363148 lt!1988388)) (= (_1!32889 (h!61965 (t!363148 lt!1988388))) key!6445)))))

(assert (=> d!1554945 (noDuplicateKeys!2581 (t!363148 lt!1988388))))

(assert (=> d!1554945 (= (getPair!1075 (t!363148 lt!1988388) key!6445) lt!1988464)))

(declare-fun b!4847041 () Bool)

(assert (=> b!4847041 (= e!3029573 (contains!19179 (t!363148 lt!1988388) (get!19011 lt!1988464)))))

(declare-fun b!4847042 () Bool)

(assert (=> b!4847042 (= e!3029576 e!3029575)))

(declare-fun c!825037 () Bool)

(assert (=> b!4847042 (= c!825037 (is-Cons!55528 (t!363148 lt!1988388)))))

(assert (= (and d!1554945 c!825036) b!4847038))

(assert (= (and d!1554945 (not c!825036)) b!4847042))

(assert (= (and b!4847042 c!825037) b!4847036))

(assert (= (and b!4847042 (not c!825037)) b!4847040))

(assert (= (and d!1554945 res!2067948) b!4847037))

(assert (= (and d!1554945 (not res!2067950)) b!4847039))

(assert (= (and b!4847039 res!2067947) b!4847035))

(assert (= (and b!4847035 res!2067949) b!4847041))

(declare-fun m!5845110 () Bool)

(assert (=> b!4847037 m!5845110))

(declare-fun m!5845112 () Bool)

(assert (=> b!4847039 m!5845112))

(declare-fun m!5845114 () Bool)

(assert (=> b!4847035 m!5845114))

(declare-fun m!5845116 () Bool)

(assert (=> d!1554945 m!5845116))

(declare-fun m!5845118 () Bool)

(assert (=> d!1554945 m!5845118))

(assert (=> b!4847041 m!5845114))

(assert (=> b!4847041 m!5845114))

(declare-fun m!5845120 () Bool)

(assert (=> b!4847041 m!5845120))

(declare-fun m!5845122 () Bool)

(assert (=> b!4847036 m!5845122))

(assert (=> b!4846971 d!1554945))

(declare-fun d!1554947 () Bool)

(declare-fun res!2067959 () Bool)

(declare-fun e!3029586 () Bool)

(assert (=> d!1554947 (=> res!2067959 e!3029586)))

(assert (=> d!1554947 (= res!2067959 (or (is-Nil!55529 (toList!7845 lm!2646)) (is-Nil!55529 (t!363149 (toList!7845 lm!2646)))))))

(assert (=> d!1554947 (= (isStrictlySorted!1069 (toList!7845 lm!2646)) e!3029586)))

(declare-fun b!4847051 () Bool)

(declare-fun e!3029587 () Bool)

(assert (=> b!4847051 (= e!3029586 e!3029587)))

(declare-fun res!2067960 () Bool)

(assert (=> b!4847051 (=> (not res!2067960) (not e!3029587))))

(assert (=> b!4847051 (= res!2067960 (bvslt (_1!32890 (h!61966 (toList!7845 lm!2646))) (_1!32890 (h!61966 (t!363149 (toList!7845 lm!2646))))))))

(declare-fun b!4847052 () Bool)

(assert (=> b!4847052 (= e!3029587 (isStrictlySorted!1069 (t!363149 (toList!7845 lm!2646))))))

(assert (= (and d!1554947 (not res!2067959)) b!4847051))

(assert (= (and b!4847051 res!2067960) b!4847052))

(declare-fun m!5845124 () Bool)

(assert (=> b!4847052 m!5845124))

(assert (=> d!1554885 d!1554947))

(declare-fun d!1554949 () Bool)

(declare-fun isEmpty!29720 (Option!13650) Bool)

(assert (=> d!1554949 (= (isDefined!10742 (getValueByKey!2721 (toList!7845 lm!2646) lt!1988386)) (not (isEmpty!29720 (getValueByKey!2721 (toList!7845 lm!2646) lt!1988386))))))

(declare-fun bs!1172400 () Bool)

(assert (= bs!1172400 d!1554949))

(assert (=> bs!1172400 m!5845050))

(declare-fun m!5845126 () Bool)

(assert (=> bs!1172400 m!5845126))

(assert (=> b!4847011 d!1554949))

(declare-fun b!4847066 () Bool)

(declare-fun e!3029596 () Option!13650)

(declare-fun e!3029597 () Option!13650)

(assert (=> b!4847066 (= e!3029596 e!3029597)))

(declare-fun c!825043 () Bool)

(assert (=> b!4847066 (= c!825043 (and (is-Cons!55529 (toList!7845 lm!2646)) (not (= (_1!32890 (h!61966 (toList!7845 lm!2646))) lt!1988386))))))

(declare-fun d!1554951 () Bool)

(declare-fun c!825042 () Bool)

(assert (=> d!1554951 (= c!825042 (and (is-Cons!55529 (toList!7845 lm!2646)) (= (_1!32890 (h!61966 (toList!7845 lm!2646))) lt!1988386)))))

(assert (=> d!1554951 (= (getValueByKey!2721 (toList!7845 lm!2646) lt!1988386) e!3029596)))

(declare-fun b!4847068 () Bool)

(assert (=> b!4847068 (= e!3029597 None!13649)))

(declare-fun b!4847067 () Bool)

(assert (=> b!4847067 (= e!3029597 (getValueByKey!2721 (t!363149 (toList!7845 lm!2646)) lt!1988386))))

(declare-fun b!4847065 () Bool)

(assert (=> b!4847065 (= e!3029596 (Some!13649 (_2!32890 (h!61966 (toList!7845 lm!2646)))))))

(assert (= (and d!1554951 c!825042) b!4847065))

(assert (= (and d!1554951 (not c!825042)) b!4847066))

(assert (= (and b!4847066 c!825043) b!4847067))

(assert (= (and b!4847066 (not c!825043)) b!4847068))

(declare-fun m!5845136 () Bool)

(assert (=> b!4847067 m!5845136))

(assert (=> b!4847011 d!1554951))

(declare-fun d!1554959 () Bool)

(assert (=> d!1554959 (= (get!19010 (getValueByKey!2721 (toList!7845 lm!2646) lt!1988386)) (v!49401 (getValueByKey!2721 (toList!7845 lm!2646) lt!1988386)))))

(assert (=> d!1554901 d!1554959))

(assert (=> d!1554901 d!1554951))

(declare-fun lt!1988468 () Bool)

(declare-fun d!1554961 () Bool)

(assert (=> d!1554961 (= lt!1988468 (set.member (tuple2!59193 lt!1988386 lt!1988388) (content!9868 (toList!7845 lm!2646))))))

(declare-fun e!3029598 () Bool)

(assert (=> d!1554961 (= lt!1988468 e!3029598)))

(declare-fun res!2067966 () Bool)

(assert (=> d!1554961 (=> (not res!2067966) (not e!3029598))))

(assert (=> d!1554961 (= res!2067966 (is-Cons!55529 (toList!7845 lm!2646)))))

(assert (=> d!1554961 (= (contains!19175 (toList!7845 lm!2646) (tuple2!59193 lt!1988386 lt!1988388)) lt!1988468)))

(declare-fun b!4847069 () Bool)

(declare-fun e!3029599 () Bool)

(assert (=> b!4847069 (= e!3029598 e!3029599)))

(declare-fun res!2067965 () Bool)

(assert (=> b!4847069 (=> res!2067965 e!3029599)))

(assert (=> b!4847069 (= res!2067965 (= (h!61966 (toList!7845 lm!2646)) (tuple2!59193 lt!1988386 lt!1988388)))))

(declare-fun b!4847070 () Bool)

(assert (=> b!4847070 (= e!3029599 (contains!19175 (t!363149 (toList!7845 lm!2646)) (tuple2!59193 lt!1988386 lt!1988388)))))

(assert (= (and d!1554961 res!2067966) b!4847069))

(assert (= (and b!4847069 (not res!2067965)) b!4847070))

(assert (=> d!1554961 m!5845072))

(declare-fun m!5845138 () Bool)

(assert (=> d!1554961 m!5845138))

(declare-fun m!5845140 () Bool)

(assert (=> b!4847070 m!5845140))

(assert (=> d!1554895 d!1554961))

(declare-fun d!1554963 () Bool)

(assert (=> d!1554963 (contains!19175 (toList!7845 lm!2646) (tuple2!59193 lt!1988386 lt!1988388))))

(assert (=> d!1554963 true))

(declare-fun _$41!531 () Unit!145653)

(assert (=> d!1554963 (= (choose!35427 lm!2646 lt!1988386 lt!1988388) _$41!531)))

(declare-fun bs!1172402 () Bool)

(assert (= bs!1172402 d!1554963))

(assert (=> bs!1172402 m!5845044))

(assert (=> d!1554895 d!1554963))

(assert (=> d!1554895 d!1554917))

(declare-fun d!1554965 () Bool)

(declare-fun res!2067971 () Bool)

(declare-fun e!3029604 () Bool)

(assert (=> d!1554965 (=> res!2067971 e!3029604)))

(assert (=> d!1554965 (= res!2067971 (and (is-Cons!55528 lt!1988388) (= (_1!32889 (h!61965 lt!1988388)) key!6445)))))

(assert (=> d!1554965 (= (containsKey!4665 lt!1988388 key!6445) e!3029604)))

(declare-fun b!4847076 () Bool)

(declare-fun e!3029605 () Bool)

(assert (=> b!4847076 (= e!3029604 e!3029605)))

(declare-fun res!2067972 () Bool)

(assert (=> b!4847076 (=> (not res!2067972) (not e!3029605))))

(assert (=> b!4847076 (= res!2067972 (is-Cons!55528 lt!1988388))))

(declare-fun b!4847077 () Bool)

(assert (=> b!4847077 (= e!3029605 (containsKey!4665 (t!363148 lt!1988388) key!6445))))

(assert (= (and d!1554965 (not res!2067971)) b!4847076))

(assert (= (and b!4847076 res!2067972) b!4847077))

(assert (=> b!4847077 m!5845110))

(assert (=> b!4846972 d!1554965))

(declare-fun d!1554967 () Bool)

(declare-fun res!2067979 () Bool)

(declare-fun e!3029612 () Bool)

(assert (=> d!1554967 (=> res!2067979 e!3029612)))

(assert (=> d!1554967 (= res!2067979 (and (is-Cons!55529 (toList!7845 lm!2646)) (= (_1!32890 (h!61966 (toList!7845 lm!2646))) lt!1988386)))))

(assert (=> d!1554967 (= (containsKey!4668 (toList!7845 lm!2646) lt!1988386) e!3029612)))

(declare-fun b!4847084 () Bool)

(declare-fun e!3029613 () Bool)

(assert (=> b!4847084 (= e!3029612 e!3029613)))

(declare-fun res!2067980 () Bool)

(assert (=> b!4847084 (=> (not res!2067980) (not e!3029613))))

(assert (=> b!4847084 (= res!2067980 (and (or (not (is-Cons!55529 (toList!7845 lm!2646))) (bvsle (_1!32890 (h!61966 (toList!7845 lm!2646))) lt!1988386)) (is-Cons!55529 (toList!7845 lm!2646)) (bvslt (_1!32890 (h!61966 (toList!7845 lm!2646))) lt!1988386)))))

(declare-fun b!4847085 () Bool)

(assert (=> b!4847085 (= e!3029613 (containsKey!4668 (t!363149 (toList!7845 lm!2646)) lt!1988386))))

(assert (= (and d!1554967 (not res!2067979)) b!4847084))

(assert (= (and b!4847084 res!2067980) b!4847085))

(declare-fun m!5845146 () Bool)

(assert (=> b!4847085 m!5845146))

(assert (=> d!1554917 d!1554967))

(declare-fun d!1554971 () Bool)

(assert (=> d!1554971 (isDefined!10742 (getValueByKey!2721 (toList!7845 lm!2646) lt!1988386))))

(declare-fun lt!1988471 () Unit!145653)

(declare-fun choose!35430 (List!55653 (_ BitVec 64)) Unit!145653)

(assert (=> d!1554971 (= lt!1988471 (choose!35430 (toList!7845 lm!2646) lt!1988386))))

(declare-fun e!3029616 () Bool)

(assert (=> d!1554971 e!3029616))

(declare-fun res!2067983 () Bool)

(assert (=> d!1554971 (=> (not res!2067983) (not e!3029616))))

(assert (=> d!1554971 (= res!2067983 (isStrictlySorted!1069 (toList!7845 lm!2646)))))

(assert (=> d!1554971 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2493 (toList!7845 lm!2646) lt!1988386) lt!1988471)))

(declare-fun b!4847088 () Bool)

(assert (=> b!4847088 (= e!3029616 (containsKey!4668 (toList!7845 lm!2646) lt!1988386))))

(assert (= (and d!1554971 res!2067983) b!4847088))

(assert (=> d!1554971 m!5845050))

(assert (=> d!1554971 m!5845050))

(assert (=> d!1554971 m!5845084))

(declare-fun m!5845148 () Bool)

(assert (=> d!1554971 m!5845148))

(assert (=> d!1554971 m!5845018))

(assert (=> b!4847088 m!5845080))

(assert (=> b!4847009 d!1554971))

(assert (=> b!4847009 d!1554949))

(assert (=> b!4847009 d!1554951))

(declare-fun d!1554975 () Bool)

(declare-fun lt!1988472 () Bool)

(assert (=> d!1554975 (= lt!1988472 (set.member lt!1988383 (content!9868 (t!363149 (toList!7845 lm!2646)))))))

(declare-fun e!3029617 () Bool)

(assert (=> d!1554975 (= lt!1988472 e!3029617)))

(declare-fun res!2067985 () Bool)

(assert (=> d!1554975 (=> (not res!2067985) (not e!3029617))))

(assert (=> d!1554975 (= res!2067985 (is-Cons!55529 (t!363149 (toList!7845 lm!2646))))))

(assert (=> d!1554975 (= (contains!19175 (t!363149 (toList!7845 lm!2646)) lt!1988383) lt!1988472)))

(declare-fun b!4847089 () Bool)

(declare-fun e!3029618 () Bool)

(assert (=> b!4847089 (= e!3029617 e!3029618)))

(declare-fun res!2067984 () Bool)

(assert (=> b!4847089 (=> res!2067984 e!3029618)))

(assert (=> b!4847089 (= res!2067984 (= (h!61966 (t!363149 (toList!7845 lm!2646))) lt!1988383))))

(declare-fun b!4847090 () Bool)

(assert (=> b!4847090 (= e!3029618 (contains!19175 (t!363149 (t!363149 (toList!7845 lm!2646))) lt!1988383))))

(assert (= (and d!1554975 res!2067985) b!4847089))

(assert (= (and b!4847089 (not res!2067984)) b!4847090))

(declare-fun m!5845150 () Bool)

(assert (=> d!1554975 m!5845150))

(declare-fun m!5845152 () Bool)

(assert (=> d!1554975 m!5845152))

(declare-fun m!5845154 () Bool)

(assert (=> b!4847090 m!5845154))

(assert (=> b!4847002 d!1554975))

(declare-fun d!1554977 () Bool)

(declare-fun c!825050 () Bool)

(assert (=> d!1554977 (= c!825050 (is-Nil!55529 (toList!7845 lm!2646)))))

(declare-fun e!3029625 () (Set tuple2!59192))

(assert (=> d!1554977 (= (content!9868 (toList!7845 lm!2646)) e!3029625)))

(declare-fun b!4847103 () Bool)

(assert (=> b!4847103 (= e!3029625 (as set.empty (Set tuple2!59192)))))

(declare-fun b!4847104 () Bool)

(assert (=> b!4847104 (= e!3029625 (set.union (set.insert (h!61966 (toList!7845 lm!2646)) (as set.empty (Set tuple2!59192))) (content!9868 (t!363149 (toList!7845 lm!2646)))))))

(assert (= (and d!1554977 c!825050) b!4847103))

(assert (= (and d!1554977 (not c!825050)) b!4847104))

(declare-fun m!5845156 () Bool)

(assert (=> b!4847104 m!5845156))

(assert (=> b!4847104 m!5845150))

(assert (=> d!1554911 d!1554977))

(assert (=> b!4846970 d!1554933))

(declare-fun d!1554979 () Bool)

(assert (=> d!1554979 (= (isEmpty!29719 lt!1988436) (not (is-Some!13646 lt!1988436)))))

(assert (=> d!1554889 d!1554979))

(declare-fun d!1554981 () Bool)

(declare-fun res!2067986 () Bool)

(declare-fun e!3029626 () Bool)

(assert (=> d!1554981 (=> res!2067986 e!3029626)))

(assert (=> d!1554981 (= res!2067986 (not (is-Cons!55528 lt!1988388)))))

(assert (=> d!1554981 (= (noDuplicateKeys!2581 lt!1988388) e!3029626)))

(declare-fun b!4847105 () Bool)

(declare-fun e!3029627 () Bool)

(assert (=> b!4847105 (= e!3029626 e!3029627)))

(declare-fun res!2067987 () Bool)

(assert (=> b!4847105 (=> (not res!2067987) (not e!3029627))))

(assert (=> b!4847105 (= res!2067987 (not (containsKey!4665 (t!363148 lt!1988388) (_1!32889 (h!61965 lt!1988388)))))))

(declare-fun b!4847106 () Bool)

(assert (=> b!4847106 (= e!3029627 (noDuplicateKeys!2581 (t!363148 lt!1988388)))))

(assert (= (and d!1554981 (not res!2067986)) b!4847105))

(assert (= (and b!4847105 res!2067987) b!4847106))

(declare-fun m!5845158 () Bool)

(assert (=> b!4847105 m!5845158))

(assert (=> b!4847106 m!5845118))

(assert (=> d!1554889 d!1554981))

(declare-fun d!1554983 () Bool)

(declare-fun res!2067988 () Bool)

(declare-fun e!3029628 () Bool)

(assert (=> d!1554983 (=> res!2067988 e!3029628)))

(assert (=> d!1554983 (= res!2067988 (and (is-Cons!55528 (t!363148 (_2!32890 (h!61966 (toList!7845 lm!2646))))) (= (_1!32889 (h!61965 (t!363148 (_2!32890 (h!61966 (toList!7845 lm!2646)))))) key!6445)))))

(assert (=> d!1554983 (= (containsKey!4665 (t!363148 (_2!32890 (h!61966 (toList!7845 lm!2646)))) key!6445) e!3029628)))

(declare-fun b!4847107 () Bool)

(declare-fun e!3029629 () Bool)

(assert (=> b!4847107 (= e!3029628 e!3029629)))

(declare-fun res!2067989 () Bool)

(assert (=> b!4847107 (=> (not res!2067989) (not e!3029629))))

(assert (=> b!4847107 (= res!2067989 (is-Cons!55528 (t!363148 (_2!32890 (h!61966 (toList!7845 lm!2646))))))))

(declare-fun b!4847108 () Bool)

(assert (=> b!4847108 (= e!3029629 (containsKey!4665 (t!363148 (t!363148 (_2!32890 (h!61966 (toList!7845 lm!2646))))) key!6445))))

(assert (= (and d!1554983 (not res!2067988)) b!4847107))

(assert (= (and b!4847107 res!2067989) b!4847108))

(declare-fun m!5845160 () Bool)

(assert (=> b!4847108 m!5845160))

(assert (=> b!4846923 d!1554983))

(declare-fun d!1554985 () Bool)

(declare-fun res!2067990 () Bool)

(declare-fun e!3029630 () Bool)

(assert (=> d!1554985 (=> res!2067990 e!3029630)))

(assert (=> d!1554985 (= res!2067990 (is-Nil!55529 (toList!7845 lm!2646)))))

(assert (=> d!1554985 (= (forall!12938 (toList!7845 lm!2646) lambda!242450) e!3029630)))

(declare-fun b!4847109 () Bool)

(declare-fun e!3029631 () Bool)

(assert (=> b!4847109 (= e!3029630 e!3029631)))

(declare-fun res!2067991 () Bool)

(assert (=> b!4847109 (=> (not res!2067991) (not e!3029631))))

(assert (=> b!4847109 (= res!2067991 (dynLambda!22347 lambda!242450 (h!61966 (toList!7845 lm!2646))))))

(declare-fun b!4847110 () Bool)

(assert (=> b!4847110 (= e!3029631 (forall!12938 (t!363149 (toList!7845 lm!2646)) lambda!242450))))

(assert (= (and d!1554985 (not res!2067990)) b!4847109))

(assert (= (and b!4847109 res!2067991) b!4847110))

(declare-fun b_lambda!192417 () Bool)

(assert (=> (not b_lambda!192417) (not b!4847109)))

(declare-fun m!5845162 () Bool)

(assert (=> b!4847109 m!5845162))

(declare-fun m!5845164 () Bool)

(assert (=> b!4847110 m!5845164))

(assert (=> d!1554921 d!1554985))

(declare-fun d!1554987 () Bool)

(declare-fun res!2067992 () Bool)

(declare-fun e!3029632 () Bool)

(assert (=> d!1554987 (=> res!2067992 e!3029632)))

(assert (=> d!1554987 (= res!2067992 (is-Nil!55529 (t!363149 (toList!7845 lm!2646))))))

(assert (=> d!1554987 (= (forall!12938 (t!363149 (toList!7845 lm!2646)) lambda!242433) e!3029632)))

(declare-fun b!4847111 () Bool)

(declare-fun e!3029633 () Bool)

(assert (=> b!4847111 (= e!3029632 e!3029633)))

(declare-fun res!2067993 () Bool)

(assert (=> b!4847111 (=> (not res!2067993) (not e!3029633))))

(assert (=> b!4847111 (= res!2067993 (dynLambda!22347 lambda!242433 (h!61966 (t!363149 (toList!7845 lm!2646)))))))

(declare-fun b!4847112 () Bool)

(assert (=> b!4847112 (= e!3029633 (forall!12938 (t!363149 (t!363149 (toList!7845 lm!2646))) lambda!242433))))

(assert (= (and d!1554987 (not res!2067992)) b!4847111))

(assert (= (and b!4847111 res!2067993) b!4847112))

(declare-fun b_lambda!192419 () Bool)

(assert (=> (not b_lambda!192419) (not b!4847111)))

(declare-fun m!5845166 () Bool)

(assert (=> b!4847111 m!5845166))

(declare-fun m!5845168 () Bool)

(assert (=> b!4847112 m!5845168))

(assert (=> b!4846944 d!1554987))

(declare-fun d!1554989 () Bool)

(assert (=> d!1554989 (= (isEmpty!29719 (getPair!1075 lt!1988388 key!6445)) (not (is-Some!13646 (getPair!1075 lt!1988388 key!6445))))))

(assert (=> d!1554899 d!1554989))

(assert (=> b!4846991 d!1554911))

(declare-fun d!1554991 () Bool)

(assert (=> d!1554991 (dynLambda!22347 lambda!242433 lt!1988383)))

(assert (=> d!1554991 true))

(declare-fun _$7!2452 () Unit!145653)

(assert (=> d!1554991 (= (choose!35428 (toList!7845 lm!2646) lambda!242433 lt!1988383) _$7!2452)))

(declare-fun b_lambda!192421 () Bool)

(assert (=> (not b_lambda!192421) (not d!1554991)))

(declare-fun bs!1172403 () Bool)

(assert (= bs!1172403 d!1554991))

(assert (=> bs!1172403 m!5845062))

(assert (=> d!1554903 d!1554991))

(assert (=> d!1554903 d!1554881))

(declare-fun d!1554995 () Bool)

(assert (=> d!1554995 (= (get!19010 (getValueByKey!2721 (toList!7845 lm!2646) (_1!32890 (h!61966 (toList!7845 lm!2646))))) (v!49401 (getValueByKey!2721 (toList!7845 lm!2646) (_1!32890 (h!61966 (toList!7845 lm!2646))))))))

(assert (=> d!1554873 d!1554995))

(declare-fun b!4847120 () Bool)

(declare-fun e!3029638 () Option!13650)

(declare-fun e!3029639 () Option!13650)

(assert (=> b!4847120 (= e!3029638 e!3029639)))

(declare-fun c!825054 () Bool)

(assert (=> b!4847120 (= c!825054 (and (is-Cons!55529 (toList!7845 lm!2646)) (not (= (_1!32890 (h!61966 (toList!7845 lm!2646))) (_1!32890 (h!61966 (toList!7845 lm!2646)))))))))

(declare-fun d!1554997 () Bool)

(declare-fun c!825053 () Bool)

(assert (=> d!1554997 (= c!825053 (and (is-Cons!55529 (toList!7845 lm!2646)) (= (_1!32890 (h!61966 (toList!7845 lm!2646))) (_1!32890 (h!61966 (toList!7845 lm!2646))))))))

(assert (=> d!1554997 (= (getValueByKey!2721 (toList!7845 lm!2646) (_1!32890 (h!61966 (toList!7845 lm!2646)))) e!3029638)))

(declare-fun b!4847122 () Bool)

(assert (=> b!4847122 (= e!3029639 None!13649)))

(declare-fun b!4847121 () Bool)

(assert (=> b!4847121 (= e!3029639 (getValueByKey!2721 (t!363149 (toList!7845 lm!2646)) (_1!32890 (h!61966 (toList!7845 lm!2646)))))))

(declare-fun b!4847119 () Bool)

(assert (=> b!4847119 (= e!3029638 (Some!13649 (_2!32890 (h!61966 (toList!7845 lm!2646)))))))

(assert (= (and d!1554997 c!825053) b!4847119))

(assert (= (and d!1554997 (not c!825053)) b!4847120))

(assert (= (and b!4847120 c!825054) b!4847121))

(assert (= (and b!4847120 (not c!825054)) b!4847122))

(declare-fun m!5845174 () Bool)

(assert (=> b!4847121 m!5845174))

(assert (=> d!1554873 d!1554997))

(declare-fun d!1554999 () Bool)

(declare-fun choose!35432 (Hashable!7485 K!17317) (_ BitVec 64))

(assert (=> d!1554999 (= (hash!5565 hashF!1641 key!6445) (choose!35432 hashF!1641 key!6445))))

(declare-fun bs!1172404 () Bool)

(assert (= bs!1172404 d!1554999))

(declare-fun m!5845178 () Bool)

(assert (=> bs!1172404 m!5845178))

(assert (=> d!1554919 d!1554999))

(declare-fun d!1555003 () Bool)

(declare-fun res!2067996 () Bool)

(declare-fun e!3029640 () Bool)

(assert (=> d!1555003 (=> res!2067996 e!3029640)))

(assert (=> d!1555003 (= res!2067996 (not (is-Cons!55528 (_2!32890 lt!1988383))))))

(assert (=> d!1555003 (= (noDuplicateKeys!2581 (_2!32890 lt!1988383)) e!3029640)))

(declare-fun b!4847123 () Bool)

(declare-fun e!3029641 () Bool)

(assert (=> b!4847123 (= e!3029640 e!3029641)))

(declare-fun res!2067997 () Bool)

(assert (=> b!4847123 (=> (not res!2067997) (not e!3029641))))

(assert (=> b!4847123 (= res!2067997 (not (containsKey!4665 (t!363148 (_2!32890 lt!1988383)) (_1!32889 (h!61965 (_2!32890 lt!1988383))))))))

(declare-fun b!4847124 () Bool)

(assert (=> b!4847124 (= e!3029641 (noDuplicateKeys!2581 (t!363148 (_2!32890 lt!1988383))))))

(assert (= (and d!1555003 (not res!2067996)) b!4847123))

(assert (= (and b!4847123 res!2067997) b!4847124))

(declare-fun m!5845180 () Bool)

(assert (=> b!4847123 m!5845180))

(declare-fun m!5845182 () Bool)

(assert (=> b!4847124 m!5845182))

(assert (=> bs!1172397 d!1555003))

(declare-fun tp_is_empty!35153 () Bool)

(declare-fun tp!1364539 () Bool)

(declare-fun b!4847129 () Bool)

(declare-fun e!3029644 () Bool)

(assert (=> b!4847129 (= e!3029644 (and tp_is_empty!35149 tp_is_empty!35153 tp!1364539))))

(assert (=> b!4847018 (= tp!1364535 e!3029644)))

(assert (= (and b!4847018 (is-Cons!55528 (_2!32890 (h!61966 (toList!7845 lm!2646))))) b!4847129))

(declare-fun b!4847130 () Bool)

(declare-fun e!3029645 () Bool)

(declare-fun tp!1364540 () Bool)

(declare-fun tp!1364541 () Bool)

(assert (=> b!4847130 (= e!3029645 (and tp!1364540 tp!1364541))))

(assert (=> b!4847018 (= tp!1364536 e!3029645)))

(assert (= (and b!4847018 (is-Cons!55529 (t!363149 (toList!7845 lm!2646)))) b!4847130))

(declare-fun b_lambda!192425 () Bool)

(assert (= b_lambda!192421 (or start!504922 b_lambda!192425)))

(assert (=> d!1554991 d!1554925))

(declare-fun b_lambda!192427 () Bool)

(assert (= b_lambda!192417 (or d!1554921 b_lambda!192427)))

(declare-fun bs!1172406 () Bool)

(declare-fun d!1555007 () Bool)

(assert (= bs!1172406 (and d!1555007 d!1554921)))

(declare-fun allKeysSameHash!2030 (List!55652 (_ BitVec 64) Hashable!7485) Bool)

(assert (=> bs!1172406 (= (dynLambda!22347 lambda!242450 (h!61966 (toList!7845 lm!2646))) (allKeysSameHash!2030 (_2!32890 (h!61966 (toList!7845 lm!2646))) (_1!32890 (h!61966 (toList!7845 lm!2646))) hashF!1641))))

(declare-fun m!5845186 () Bool)

(assert (=> bs!1172406 m!5845186))

(assert (=> b!4847109 d!1555007))

(declare-fun b_lambda!192429 () Bool)

(assert (= b_lambda!192419 (or start!504922 b_lambda!192429)))

(declare-fun bs!1172407 () Bool)

(declare-fun d!1555009 () Bool)

(assert (= bs!1172407 (and d!1555009 start!504922)))

(assert (=> bs!1172407 (= (dynLambda!22347 lambda!242433 (h!61966 (t!363149 (toList!7845 lm!2646)))) (noDuplicateKeys!2581 (_2!32890 (h!61966 (t!363149 (toList!7845 lm!2646))))))))

(declare-fun m!5845188 () Bool)

(assert (=> bs!1172407 m!5845188))

(assert (=> b!4847111 d!1555009))

(declare-fun b_lambda!192431 () Bool)

(assert (= b_lambda!192415 (or d!1554875 b_lambda!192431)))

(declare-fun bs!1172408 () Bool)

(declare-fun d!1555011 () Bool)

(assert (= bs!1172408 (and d!1555011 d!1554875)))

(assert (=> bs!1172408 (= (dynLambda!22347 lambda!242441 (h!61966 (toList!7845 lm!2646))) (noDuplicateKeys!2581 (_2!32890 (h!61966 (toList!7845 lm!2646)))))))

(assert (=> bs!1172408 m!5845090))

(assert (=> b!4847019 d!1555011))

(push 1)

(assert (not d!1554975))

(assert (not b!4847088))

(assert tp_is_empty!35153)

(assert (not d!1554949))

(assert (not b!4847036))

(assert (not b_lambda!192425))

(assert (not b!4847123))

(assert (not d!1554999))

(assert (not bs!1172407))

(assert (not d!1554963))

(assert (not d!1554935))

(assert (not b!4847124))

(assert (not b!4847106))

(assert (not b_lambda!192429))

(assert (not b_lambda!192413))

(assert (not b!4847037))

(assert (not b!4847020))

(assert (not b!4847033))

(assert (not d!1554945))

(assert (not b_lambda!192431))

(assert (not d!1554971))

(assert (not b!4847034))

(assert (not b_lambda!192411))

(assert (not d!1554961))

(assert (not b!4847090))

(assert (not b!4847028))

(assert (not b!4847085))

(assert (not b!4847108))

(assert (not b!4847039))

(assert (not b!4847067))

(assert (not b!4847104))

(assert (not bs!1172406))

(assert (not b!4847110))

(assert (not b_lambda!192427))

(assert (not b!4847070))

(assert (not b!4847121))

(assert (not b!4847112))

(assert (not b!4847035))

(assert (not b!4847105))

(assert (not b!4847052))

(assert (not b!4847041))

(assert (not b!4847077))

(assert (not b!4847026))

(assert (not b!4847130))

(assert (not bs!1172408))

(assert (not d!1554931))

(assert (not d!1554927))

(assert (not b!4847129))

(assert tp_is_empty!35149)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

