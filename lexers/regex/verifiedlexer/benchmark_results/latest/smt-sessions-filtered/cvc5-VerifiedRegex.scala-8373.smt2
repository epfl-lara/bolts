; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!436148 () Bool)

(assert start!436148)

(declare-fun res!1845582 () Bool)

(declare-fun e!2773075 () Bool)

(assert (=> start!436148 (=> (not res!1845582) (not e!2773075))))

(declare-datatypes ((V!11514 0))(
  ( (V!11515 (val!17285 Int)) )
))
(declare-datatypes ((K!11268 0))(
  ( (K!11269 (val!17286 Int)) )
))
(declare-datatypes ((tuple2!49890 0))(
  ( (tuple2!49891 (_1!28239 K!11268) (_2!28239 V!11514)) )
))
(declare-datatypes ((List!50020 0))(
  ( (Nil!49896) (Cons!49896 (h!55641 tuple2!49890) (t!356970 List!50020)) )
))
(declare-datatypes ((tuple2!49892 0))(
  ( (tuple2!49893 (_1!28240 (_ BitVec 64)) (_2!28240 List!50020)) )
))
(declare-datatypes ((List!50021 0))(
  ( (Nil!49897) (Cons!49897 (h!55642 tuple2!49892) (t!356971 List!50021)) )
))
(declare-datatypes ((ListLongMap!2393 0))(
  ( (ListLongMap!2394 (toList!3739 List!50021)) )
))
(declare-fun lm!1837 () ListLongMap!2393)

(declare-fun lambda!159394 () Int)

(declare-fun forall!9773 (List!50021 Int) Bool)

(assert (=> start!436148 (= res!1845582 (forall!9773 (toList!3739 lm!1837) lambda!159394))))

(assert (=> start!436148 e!2773075))

(declare-fun e!2773077 () Bool)

(declare-fun inv!65455 (ListLongMap!2393) Bool)

(assert (=> start!436148 (and (inv!65455 lm!1837) e!2773077)))

(assert (=> start!436148 true))

(declare-fun tp_is_empty!26737 () Bool)

(assert (=> start!436148 tp_is_empty!26737))

(declare-fun b!4453194 () Bool)

(declare-fun e!2773076 () Bool)

(declare-fun lt!1645146 () ListLongMap!2393)

(assert (=> b!4453194 (= e!2773076 (not (forall!9773 (toList!3739 lt!1645146) lambda!159394)))))

(declare-fun b!4453195 () Bool)

(declare-fun res!1845579 () Bool)

(assert (=> b!4453195 (=> (not res!1845579) (not e!2773075))))

(declare-datatypes ((Hashable!5272 0))(
  ( (HashableExt!5271 (__x!30975 Int)) )
))
(declare-fun hashF!1304 () Hashable!5272)

(declare-fun allKeysSameHashInMap!984 (ListLongMap!2393 Hashable!5272) Bool)

(assert (=> b!4453195 (= res!1845579 (allKeysSameHashInMap!984 lm!1837 hashF!1304))))

(declare-fun b!4453196 () Bool)

(declare-fun res!1845581 () Bool)

(assert (=> b!4453196 (=> (not res!1845581) (not e!2773075))))

(declare-fun isEmpty!28420 (List!50021) Bool)

(assert (=> b!4453196 (= res!1845581 (not (isEmpty!28420 (toList!3739 lm!1837))))))

(declare-fun b!4453197 () Bool)

(assert (=> b!4453197 (= e!2773075 e!2773076)))

(declare-fun res!1845580 () Bool)

(assert (=> b!4453197 (=> (not res!1845580) (not e!2773076))))

(declare-fun key!4369 () K!11268)

(declare-datatypes ((ListMap!2979 0))(
  ( (ListMap!2980 (toList!3740 List!50020)) )
))
(declare-fun contains!12482 (ListMap!2979 K!11268) Bool)

(declare-fun extractMap!935 (List!50021) ListMap!2979)

(assert (=> b!4453197 (= res!1845580 (contains!12482 (extractMap!935 (toList!3739 lt!1645146)) key!4369))))

(declare-fun tail!7437 (ListLongMap!2393) ListLongMap!2393)

(assert (=> b!4453197 (= lt!1645146 (tail!7437 lm!1837))))

(declare-fun b!4453198 () Bool)

(declare-fun res!1845578 () Bool)

(assert (=> b!4453198 (=> (not res!1845578) (not e!2773076))))

(assert (=> b!4453198 (= res!1845578 (is-Cons!49897 (toList!3739 lm!1837)))))

(declare-fun b!4453199 () Bool)

(declare-fun tp!1334666 () Bool)

(assert (=> b!4453199 (= e!2773077 tp!1334666)))

(assert (= (and start!436148 res!1845582) b!4453195))

(assert (= (and b!4453195 res!1845579) b!4453196))

(assert (= (and b!4453196 res!1845581) b!4453197))

(assert (= (and b!4453197 res!1845580) b!4453198))

(assert (= (and b!4453198 res!1845578) b!4453194))

(assert (= start!436148 b!4453199))

(declare-fun m!5153977 () Bool)

(assert (=> b!4453196 m!5153977))

(declare-fun m!5153979 () Bool)

(assert (=> b!4453197 m!5153979))

(assert (=> b!4453197 m!5153979))

(declare-fun m!5153981 () Bool)

(assert (=> b!4453197 m!5153981))

(declare-fun m!5153983 () Bool)

(assert (=> b!4453197 m!5153983))

(declare-fun m!5153985 () Bool)

(assert (=> start!436148 m!5153985))

(declare-fun m!5153987 () Bool)

(assert (=> start!436148 m!5153987))

(declare-fun m!5153989 () Bool)

(assert (=> b!4453195 m!5153989))

(declare-fun m!5153991 () Bool)

(assert (=> b!4453194 m!5153991))

(push 1)

(assert (not b!4453195))

(assert (not b!4453199))

(assert (not b!4453196))

(assert (not b!4453197))

(assert (not start!436148))

(assert tp_is_empty!26737)

(assert (not b!4453194))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1358454 () Bool)

(declare-fun res!1845602 () Bool)

(declare-fun e!2773091 () Bool)

(assert (=> d!1358454 (=> res!1845602 e!2773091)))

(assert (=> d!1358454 (= res!1845602 (is-Nil!49897 (toList!3739 lt!1645146)))))

(assert (=> d!1358454 (= (forall!9773 (toList!3739 lt!1645146) lambda!159394) e!2773091)))

(declare-fun b!4453222 () Bool)

(declare-fun e!2773092 () Bool)

(assert (=> b!4453222 (= e!2773091 e!2773092)))

(declare-fun res!1845603 () Bool)

(assert (=> b!4453222 (=> (not res!1845603) (not e!2773092))))

(declare-fun dynLambda!20949 (Int tuple2!49892) Bool)

(assert (=> b!4453222 (= res!1845603 (dynLambda!20949 lambda!159394 (h!55642 (toList!3739 lt!1645146))))))

(declare-fun b!4453223 () Bool)

(assert (=> b!4453223 (= e!2773092 (forall!9773 (t!356971 (toList!3739 lt!1645146)) lambda!159394))))

(assert (= (and d!1358454 (not res!1845602)) b!4453222))

(assert (= (and b!4453222 res!1845603) b!4453223))

(declare-fun b_lambda!147349 () Bool)

(assert (=> (not b_lambda!147349) (not b!4453222)))

(declare-fun m!5154009 () Bool)

(assert (=> b!4453222 m!5154009))

(declare-fun m!5154011 () Bool)

(assert (=> b!4453223 m!5154011))

(assert (=> b!4453194 d!1358454))

(declare-fun b!4453248 () Bool)

(assert (=> b!4453248 false))

(declare-datatypes ((Unit!85687 0))(
  ( (Unit!85688) )
))
(declare-fun lt!1645166 () Unit!85687)

(declare-fun lt!1645169 () Unit!85687)

(assert (=> b!4453248 (= lt!1645166 lt!1645169)))

(declare-fun containsKey!1299 (List!50020 K!11268) Bool)

(assert (=> b!4453248 (containsKey!1299 (toList!3740 (extractMap!935 (toList!3739 lt!1645146))) key!4369)))

(declare-fun lemmaInGetKeysListThenContainsKey!306 (List!50020 K!11268) Unit!85687)

(assert (=> b!4453248 (= lt!1645169 (lemmaInGetKeysListThenContainsKey!306 (toList!3740 (extractMap!935 (toList!3739 lt!1645146))) key!4369))))

(declare-fun e!2773116 () Unit!85687)

(declare-fun Unit!85689 () Unit!85687)

(assert (=> b!4453248 (= e!2773116 Unit!85689)))

(declare-fun b!4453249 () Bool)

(declare-datatypes ((List!50024 0))(
  ( (Nil!49900) (Cons!49900 (h!55645 K!11268) (t!356974 List!50024)) )
))
(declare-fun e!2773115 () List!50024)

(declare-fun getKeysList!308 (List!50020) List!50024)

(assert (=> b!4453249 (= e!2773115 (getKeysList!308 (toList!3740 (extractMap!935 (toList!3739 lt!1645146)))))))

(declare-fun b!4453250 () Bool)

(declare-fun Unit!85690 () Unit!85687)

(assert (=> b!4453250 (= e!2773116 Unit!85690)))

(declare-fun d!1358456 () Bool)

(declare-fun e!2773114 () Bool)

(assert (=> d!1358456 e!2773114))

(declare-fun res!1845616 () Bool)

(assert (=> d!1358456 (=> res!1845616 e!2773114)))

(declare-fun e!2773112 () Bool)

(assert (=> d!1358456 (= res!1845616 e!2773112)))

(declare-fun res!1845618 () Bool)

(assert (=> d!1358456 (=> (not res!1845618) (not e!2773112))))

(declare-fun lt!1645171 () Bool)

(assert (=> d!1358456 (= res!1845618 (not lt!1645171))))

(declare-fun lt!1645168 () Bool)

(assert (=> d!1358456 (= lt!1645171 lt!1645168)))

(declare-fun lt!1645172 () Unit!85687)

(declare-fun e!2773113 () Unit!85687)

(assert (=> d!1358456 (= lt!1645172 e!2773113)))

(declare-fun c!758139 () Bool)

(assert (=> d!1358456 (= c!758139 lt!1645168)))

(assert (=> d!1358456 (= lt!1645168 (containsKey!1299 (toList!3740 (extractMap!935 (toList!3739 lt!1645146))) key!4369))))

(assert (=> d!1358456 (= (contains!12482 (extractMap!935 (toList!3739 lt!1645146)) key!4369) lt!1645171)))

(declare-fun b!4453251 () Bool)

(declare-fun e!2773111 () Bool)

(assert (=> b!4453251 (= e!2773114 e!2773111)))

(declare-fun res!1845617 () Bool)

(assert (=> b!4453251 (=> (not res!1845617) (not e!2773111))))

(declare-datatypes ((Option!10840 0))(
  ( (None!10839) (Some!10839 (v!44093 V!11514)) )
))
(declare-fun isDefined!8128 (Option!10840) Bool)

(declare-fun getValueByKey!826 (List!50020 K!11268) Option!10840)

(assert (=> b!4453251 (= res!1845617 (isDefined!8128 (getValueByKey!826 (toList!3740 (extractMap!935 (toList!3739 lt!1645146))) key!4369)))))

(declare-fun bm!309886 () Bool)

(declare-fun call!309891 () Bool)

(declare-fun contains!12484 (List!50024 K!11268) Bool)

(assert (=> bm!309886 (= call!309891 (contains!12484 e!2773115 key!4369))))

(declare-fun c!758140 () Bool)

(assert (=> bm!309886 (= c!758140 c!758139)))

(declare-fun b!4453252 () Bool)

(declare-fun lt!1645173 () Unit!85687)

(assert (=> b!4453252 (= e!2773113 lt!1645173)))

(declare-fun lt!1645167 () Unit!85687)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!731 (List!50020 K!11268) Unit!85687)

(assert (=> b!4453252 (= lt!1645167 (lemmaContainsKeyImpliesGetValueByKeyDefined!731 (toList!3740 (extractMap!935 (toList!3739 lt!1645146))) key!4369))))

(assert (=> b!4453252 (isDefined!8128 (getValueByKey!826 (toList!3740 (extractMap!935 (toList!3739 lt!1645146))) key!4369))))

(declare-fun lt!1645170 () Unit!85687)

(assert (=> b!4453252 (= lt!1645170 lt!1645167)))

(declare-fun lemmaInListThenGetKeysListContains!305 (List!50020 K!11268) Unit!85687)

(assert (=> b!4453252 (= lt!1645173 (lemmaInListThenGetKeysListContains!305 (toList!3740 (extractMap!935 (toList!3739 lt!1645146))) key!4369))))

(assert (=> b!4453252 call!309891))

(declare-fun b!4453253 () Bool)

(declare-fun keys!17122 (ListMap!2979) List!50024)

(assert (=> b!4453253 (= e!2773112 (not (contains!12484 (keys!17122 (extractMap!935 (toList!3739 lt!1645146))) key!4369)))))

(declare-fun b!4453254 () Bool)

(assert (=> b!4453254 (= e!2773113 e!2773116)))

(declare-fun c!758138 () Bool)

(assert (=> b!4453254 (= c!758138 call!309891)))

(declare-fun b!4453255 () Bool)

(assert (=> b!4453255 (= e!2773115 (keys!17122 (extractMap!935 (toList!3739 lt!1645146))))))

(declare-fun b!4453256 () Bool)

(assert (=> b!4453256 (= e!2773111 (contains!12484 (keys!17122 (extractMap!935 (toList!3739 lt!1645146))) key!4369))))

(assert (= (and d!1358456 c!758139) b!4453252))

(assert (= (and d!1358456 (not c!758139)) b!4453254))

(assert (= (and b!4453254 c!758138) b!4453248))

(assert (= (and b!4453254 (not c!758138)) b!4453250))

(assert (= (or b!4453252 b!4453254) bm!309886))

(assert (= (and bm!309886 c!758140) b!4453249))

(assert (= (and bm!309886 (not c!758140)) b!4453255))

(assert (= (and d!1358456 res!1845618) b!4453253))

(assert (= (and d!1358456 (not res!1845616)) b!4453251))

(assert (= (and b!4453251 res!1845617) b!4453256))

(assert (=> b!4453253 m!5153979))

(declare-fun m!5154017 () Bool)

(assert (=> b!4453253 m!5154017))

(assert (=> b!4453253 m!5154017))

(declare-fun m!5154019 () Bool)

(assert (=> b!4453253 m!5154019))

(declare-fun m!5154021 () Bool)

(assert (=> b!4453251 m!5154021))

(assert (=> b!4453251 m!5154021))

(declare-fun m!5154023 () Bool)

(assert (=> b!4453251 m!5154023))

(declare-fun m!5154025 () Bool)

(assert (=> d!1358456 m!5154025))

(assert (=> b!4453255 m!5153979))

(assert (=> b!4453255 m!5154017))

(assert (=> b!4453256 m!5153979))

(assert (=> b!4453256 m!5154017))

(assert (=> b!4453256 m!5154017))

(assert (=> b!4453256 m!5154019))

(declare-fun m!5154027 () Bool)

(assert (=> bm!309886 m!5154027))

(declare-fun m!5154029 () Bool)

(assert (=> b!4453252 m!5154029))

(assert (=> b!4453252 m!5154021))

(assert (=> b!4453252 m!5154021))

(assert (=> b!4453252 m!5154023))

(declare-fun m!5154031 () Bool)

(assert (=> b!4453252 m!5154031))

(assert (=> b!4453248 m!5154025))

(declare-fun m!5154033 () Bool)

(assert (=> b!4453248 m!5154033))

(declare-fun m!5154035 () Bool)

(assert (=> b!4453249 m!5154035))

(assert (=> b!4453197 d!1358456))

(declare-fun bs!790044 () Bool)

(declare-fun d!1358462 () Bool)

(assert (= bs!790044 (and d!1358462 start!436148)))

(declare-fun lambda!159402 () Int)

(assert (=> bs!790044 (= lambda!159402 lambda!159394)))

(declare-fun lt!1645176 () ListMap!2979)

(declare-fun invariantList!862 (List!50020) Bool)

(assert (=> d!1358462 (invariantList!862 (toList!3740 lt!1645176))))

(declare-fun e!2773119 () ListMap!2979)

(assert (=> d!1358462 (= lt!1645176 e!2773119)))

(declare-fun c!758143 () Bool)

(assert (=> d!1358462 (= c!758143 (is-Cons!49897 (toList!3739 lt!1645146)))))

(assert (=> d!1358462 (forall!9773 (toList!3739 lt!1645146) lambda!159402)))

(assert (=> d!1358462 (= (extractMap!935 (toList!3739 lt!1645146)) lt!1645176)))

(declare-fun b!4453261 () Bool)

(declare-fun addToMapMapFromBucket!473 (List!50020 ListMap!2979) ListMap!2979)

(assert (=> b!4453261 (= e!2773119 (addToMapMapFromBucket!473 (_2!28240 (h!55642 (toList!3739 lt!1645146))) (extractMap!935 (t!356971 (toList!3739 lt!1645146)))))))

(declare-fun b!4453262 () Bool)

(assert (=> b!4453262 (= e!2773119 (ListMap!2980 Nil!49896))))

(assert (= (and d!1358462 c!758143) b!4453261))

(assert (= (and d!1358462 (not c!758143)) b!4453262))

(declare-fun m!5154039 () Bool)

(assert (=> d!1358462 m!5154039))

(declare-fun m!5154041 () Bool)

(assert (=> d!1358462 m!5154041))

(declare-fun m!5154043 () Bool)

(assert (=> b!4453261 m!5154043))

(assert (=> b!4453261 m!5154043))

(declare-fun m!5154045 () Bool)

(assert (=> b!4453261 m!5154045))

(assert (=> b!4453197 d!1358462))

(declare-fun d!1358466 () Bool)

(declare-fun tail!7439 (List!50021) List!50021)

(assert (=> d!1358466 (= (tail!7437 lm!1837) (ListLongMap!2394 (tail!7439 (toList!3739 lm!1837))))))

(declare-fun bs!790045 () Bool)

(assert (= bs!790045 d!1358466))

(declare-fun m!5154047 () Bool)

(assert (=> bs!790045 m!5154047))

(assert (=> b!4453197 d!1358466))

(declare-fun d!1358468 () Bool)

(assert (=> d!1358468 (= (isEmpty!28420 (toList!3739 lm!1837)) (is-Nil!49897 (toList!3739 lm!1837)))))

(assert (=> b!4453196 d!1358468))

(declare-fun d!1358470 () Bool)

(declare-fun res!1845619 () Bool)

(declare-fun e!2773120 () Bool)

(assert (=> d!1358470 (=> res!1845619 e!2773120)))

(assert (=> d!1358470 (= res!1845619 (is-Nil!49897 (toList!3739 lm!1837)))))

(assert (=> d!1358470 (= (forall!9773 (toList!3739 lm!1837) lambda!159394) e!2773120)))

(declare-fun b!4453263 () Bool)

(declare-fun e!2773121 () Bool)

(assert (=> b!4453263 (= e!2773120 e!2773121)))

(declare-fun res!1845620 () Bool)

(assert (=> b!4453263 (=> (not res!1845620) (not e!2773121))))

(assert (=> b!4453263 (= res!1845620 (dynLambda!20949 lambda!159394 (h!55642 (toList!3739 lm!1837))))))

(declare-fun b!4453264 () Bool)

(assert (=> b!4453264 (= e!2773121 (forall!9773 (t!356971 (toList!3739 lm!1837)) lambda!159394))))

(assert (= (and d!1358470 (not res!1845619)) b!4453263))

(assert (= (and b!4453263 res!1845620) b!4453264))

(declare-fun b_lambda!147353 () Bool)

(assert (=> (not b_lambda!147353) (not b!4453263)))

(declare-fun m!5154049 () Bool)

(assert (=> b!4453263 m!5154049))

(declare-fun m!5154051 () Bool)

(assert (=> b!4453264 m!5154051))

(assert (=> start!436148 d!1358470))

(declare-fun d!1358472 () Bool)

(declare-fun isStrictlySorted!290 (List!50021) Bool)

(assert (=> d!1358472 (= (inv!65455 lm!1837) (isStrictlySorted!290 (toList!3739 lm!1837)))))

(declare-fun bs!790046 () Bool)

(assert (= bs!790046 d!1358472))

(declare-fun m!5154053 () Bool)

(assert (=> bs!790046 m!5154053))

(assert (=> start!436148 d!1358472))

(declare-fun bs!790047 () Bool)

(declare-fun d!1358474 () Bool)

(assert (= bs!790047 (and d!1358474 start!436148)))

(declare-fun lambda!159405 () Int)

(assert (=> bs!790047 (not (= lambda!159405 lambda!159394))))

(declare-fun bs!790048 () Bool)

(assert (= bs!790048 (and d!1358474 d!1358462)))

(assert (=> bs!790048 (not (= lambda!159405 lambda!159402))))

(assert (=> d!1358474 true))

(assert (=> d!1358474 (= (allKeysSameHashInMap!984 lm!1837 hashF!1304) (forall!9773 (toList!3739 lm!1837) lambda!159405))))

(declare-fun bs!790049 () Bool)

(assert (= bs!790049 d!1358474))

(declare-fun m!5154055 () Bool)

(assert (=> bs!790049 m!5154055))

(assert (=> b!4453195 d!1358474))

(declare-fun b!4453271 () Bool)

(declare-fun e!2773124 () Bool)

(declare-fun tp!1334674 () Bool)

(declare-fun tp!1334675 () Bool)

(assert (=> b!4453271 (= e!2773124 (and tp!1334674 tp!1334675))))

(assert (=> b!4453199 (= tp!1334666 e!2773124)))

(assert (= (and b!4453199 (is-Cons!49897 (toList!3739 lm!1837))) b!4453271))

(declare-fun b_lambda!147355 () Bool)

(assert (= b_lambda!147349 (or start!436148 b_lambda!147355)))

(declare-fun bs!790050 () Bool)

(declare-fun d!1358476 () Bool)

(assert (= bs!790050 (and d!1358476 start!436148)))

(declare-fun noDuplicateKeys!874 (List!50020) Bool)

(assert (=> bs!790050 (= (dynLambda!20949 lambda!159394 (h!55642 (toList!3739 lt!1645146))) (noDuplicateKeys!874 (_2!28240 (h!55642 (toList!3739 lt!1645146)))))))

(declare-fun m!5154057 () Bool)

(assert (=> bs!790050 m!5154057))

(assert (=> b!4453222 d!1358476))

(declare-fun b_lambda!147357 () Bool)

(assert (= b_lambda!147353 (or start!436148 b_lambda!147357)))

(declare-fun bs!790051 () Bool)

(declare-fun d!1358478 () Bool)

(assert (= bs!790051 (and d!1358478 start!436148)))

(assert (=> bs!790051 (= (dynLambda!20949 lambda!159394 (h!55642 (toList!3739 lm!1837))) (noDuplicateKeys!874 (_2!28240 (h!55642 (toList!3739 lm!1837)))))))

(declare-fun m!5154059 () Bool)

(assert (=> bs!790051 m!5154059))

(assert (=> b!4453263 d!1358478))

(push 1)

(assert (not d!1358466))

(assert (not b!4453271))

(assert (not b!4453252))

(assert (not bm!309886))

(assert (not b!4453223))

(assert (not b!4453255))

(assert (not b_lambda!147355))

(assert (not b!4453253))

(assert tp_is_empty!26737)

(assert (not b!4453264))

(assert (not b_lambda!147357))

(assert (not d!1358472))

(assert (not b!4453248))

(assert (not b!4453251))

(assert (not bs!790051))

(assert (not b!4453249))

(assert (not b!4453261))

(assert (not d!1358474))

(assert (not d!1358456))

(assert (not d!1358462))

(assert (not bs!790050))

(assert (not b!4453256))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

