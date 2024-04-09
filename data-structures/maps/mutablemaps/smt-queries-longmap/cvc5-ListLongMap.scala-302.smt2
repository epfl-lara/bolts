; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5260 () Bool)

(assert start!5260)

(assert (=> start!5260 true))

(assert (=> start!5260 true))

(declare-datatypes ((B!800 0))(
  ( (B!801 (val!900 Int)) )
))
(declare-datatypes ((tuple2!1464 0))(
  ( (tuple2!1465 (_1!742 (_ BitVec 64)) (_2!742 B!800)) )
))
(declare-datatypes ((List!1026 0))(
  ( (Nil!1023) (Cons!1022 (h!1590 tuple2!1464) (t!3867 List!1026)) )
))
(declare-datatypes ((ListLongMap!1045 0))(
  ( (ListLongMap!1046 (toList!538 List!1026)) )
))
(declare-fun lm!266 () ListLongMap!1045)

(declare-fun value!232 () B!800)

(declare-fun lambda!194 () Int)

(declare-datatypes ((List!1027 0))(
  ( (Nil!1024) (Cons!1023 (h!1591 (_ BitVec 64)) (t!3868 List!1027)) )
))
(declare-fun forall!179 (List!1027 Int) Bool)

(declare-fun getKeysOf!1 (List!1026 B!800) List!1027)

(assert (=> start!5260 (not (forall!179 (getKeysOf!1 (toList!538 lm!266) value!232) lambda!194))))

(declare-fun e!24234 () Bool)

(declare-fun inv!1715 (ListLongMap!1045) Bool)

(assert (=> start!5260 (and (inv!1715 lm!266) e!24234)))

(declare-fun tp_is_empty!1723 () Bool)

(assert (=> start!5260 tp_is_empty!1723))

(declare-fun b!38106 () Bool)

(declare-fun tp!5669 () Bool)

(assert (=> b!38106 (= e!24234 tp!5669)))

(assert (= start!5260 b!38106))

(declare-fun m!30785 () Bool)

(assert (=> start!5260 m!30785))

(assert (=> start!5260 m!30785))

(declare-fun m!30787 () Bool)

(assert (=> start!5260 m!30787))

(declare-fun m!30789 () Bool)

(assert (=> start!5260 m!30789))

(push 1)

(assert (not start!5260))

(assert (not b!38106))

(assert tp_is_empty!1723)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6197 () Bool)

(declare-fun res!23003 () Bool)

(declare-fun e!24253 () Bool)

(assert (=> d!6197 (=> res!23003 e!24253)))

(assert (=> d!6197 (= res!23003 (is-Nil!1024 (getKeysOf!1 (toList!538 lm!266) value!232)))))

(assert (=> d!6197 (= (forall!179 (getKeysOf!1 (toList!538 lm!266) value!232) lambda!194) e!24253)))

(declare-fun b!38137 () Bool)

(declare-fun e!24254 () Bool)

(assert (=> b!38137 (= e!24253 e!24254)))

(declare-fun res!23004 () Bool)

(assert (=> b!38137 (=> (not res!23004) (not e!24254))))

(declare-fun dynLambda!181 (Int (_ BitVec 64)) Bool)

(assert (=> b!38137 (= res!23004 (dynLambda!181 lambda!194 (h!1591 (getKeysOf!1 (toList!538 lm!266) value!232))))))

(declare-fun b!38138 () Bool)

(assert (=> b!38138 (= e!24254 (forall!179 (t!3868 (getKeysOf!1 (toList!538 lm!266) value!232)) lambda!194))))

(assert (= (and d!6197 (not res!23003)) b!38137))

(assert (= (and b!38137 res!23004) b!38138))

(declare-fun b_lambda!2017 () Bool)

(assert (=> (not b_lambda!2017) (not b!38137)))

(declare-fun m!30803 () Bool)

(assert (=> b!38137 m!30803))

(declare-fun m!30805 () Bool)

(assert (=> b!38138 m!30805))

(assert (=> start!5260 d!6197))

(declare-fun bs!1527 () Bool)

(declare-fun b!38208 () Bool)

(assert (= bs!1527 (and b!38208 start!5260)))

(declare-fun lambda!221 () Int)

(declare-fun lt!14098 () List!1026)

(declare-fun lt!14065 () tuple2!1464)

(assert (=> bs!1527 (= (= (Cons!1022 lt!14065 lt!14098) (toList!538 lm!266)) (= lambda!221 lambda!194))))

(assert (=> b!38208 true))

(assert (=> b!38208 true))

(assert (=> b!38208 true))

(declare-fun bs!1530 () Bool)

(declare-fun b!38207 () Bool)

(assert (= bs!1530 (and b!38207 start!5260)))

(declare-fun lambda!224 () Int)

(declare-fun lt!14097 () List!1026)

(declare-fun lt!14096 () tuple2!1464)

(assert (=> bs!1530 (= (= (Cons!1022 lt!14096 lt!14097) (toList!538 lm!266)) (= lambda!224 lambda!194))))

(declare-fun bs!1533 () Bool)

(assert (= bs!1533 (and b!38207 b!38208)))

(assert (=> bs!1533 (= (= (Cons!1022 lt!14096 lt!14097) (Cons!1022 lt!14065 lt!14098)) (= lambda!224 lambda!221))))

(assert (=> b!38207 true))

(assert (=> b!38207 true))

(assert (=> b!38207 true))

(declare-fun bs!1535 () Bool)

(declare-fun d!6203 () Bool)

(assert (= bs!1535 (and d!6203 start!5260)))

(declare-fun lambda!227 () Int)

(assert (=> bs!1535 (= lambda!227 lambda!194)))

(declare-fun bs!1538 () Bool)

(assert (= bs!1538 (and d!6203 b!38208)))

(assert (=> bs!1538 (= (= (toList!538 lm!266) (Cons!1022 lt!14065 lt!14098)) (= lambda!227 lambda!221))))

(declare-fun bs!1541 () Bool)

(assert (= bs!1541 (and d!6203 b!38207)))

(assert (=> bs!1541 (= (= (toList!538 lm!266) (Cons!1022 lt!14096 lt!14097)) (= lambda!227 lambda!224))))

(assert (=> d!6203 true))

(assert (=> d!6203 true))

(declare-datatypes ((Unit!884 0))(
  ( (Unit!885) )
))
(declare-fun e!24291 () Unit!884)

(declare-fun lt!14092 () Unit!884)

(assert (=> b!38207 (= e!24291 lt!14092)))

(assert (=> b!38207 (= lt!14097 (t!3867 (toList!538 lm!266)))))

(declare-fun lt!14067 () List!1027)

(declare-fun call!2898 () List!1027)

(assert (=> b!38207 (= lt!14067 call!2898)))

(assert (=> b!38207 (= lt!14096 (h!1590 (toList!538 lm!266)))))

(declare-fun call!2899 () Unit!884)

(assert (=> b!38207 (= lt!14092 call!2899)))

(declare-fun call!2890 () Bool)

(assert (=> b!38207 call!2890))

(assert (=> b!38208 call!2890))

(declare-fun lt!14094 () Unit!884)

(assert (=> b!38208 (= lt!14094 call!2899)))

(assert (=> b!38208 (= lt!14065 (h!1590 (toList!538 lm!266)))))

(declare-fun lt!14093 () List!1027)

(assert (=> b!38208 (= lt!14093 call!2898)))

(assert (=> b!38208 (= lt!14098 (t!3867 (toList!538 lm!266)))))

(declare-fun e!24292 () Unit!884)

(assert (=> b!38208 (= e!24292 lt!14094)))

(declare-fun b!38209 () Bool)

(declare-fun lt!14087 () Unit!884)

(assert (=> b!38209 (= lt!14087 e!24291)))

(declare-fun c!4423 () Bool)

(declare-fun call!2900 () Bool)

(assert (=> b!38209 (= c!4423 (not call!2900))))

(declare-fun lt!14091 () List!1027)

(assert (=> b!38209 (= lt!14091 call!2898)))

(declare-fun e!24294 () List!1027)

(assert (=> b!38209 (= e!24294 call!2898)))

(declare-fun b!38211 () Bool)

(declare-fun e!24293 () List!1027)

(assert (=> b!38211 (= e!24293 (Cons!1023 (_1!742 (h!1590 (toList!538 lm!266))) call!2898))))

(declare-fun c!4426 () Bool)

(assert (=> b!38211 (= c!4426 (not call!2900))))

(declare-fun lt!14063 () Unit!884)

(assert (=> b!38211 (= lt!14063 e!24292)))

(declare-fun bm!2894 () Bool)

(declare-fun isEmpty!226 (List!1027) Bool)

(assert (=> bm!2894 (= call!2900 (isEmpty!226 call!2898))))

(declare-fun b!38212 () Bool)

(assert (=> b!38212 (= e!24293 e!24294)))

(declare-fun c!4424 () Bool)

(assert (=> b!38212 (= c!4424 (and (is-Cons!1022 (toList!538 lm!266)) (not (= (_2!742 (h!1590 (toList!538 lm!266))) value!232))))))

(declare-fun c!4425 () Bool)

(declare-fun bm!2895 () Bool)

(assert (=> bm!2895 (= call!2890 (forall!179 (ite c!4425 lt!14093 lt!14067) (ite c!4425 lambda!221 lambda!224)))))

(declare-fun b!38213 () Bool)

(assert (=> b!38213 (= e!24294 Nil!1024)))

(declare-fun b!38214 () Bool)

(declare-fun Unit!890 () Unit!884)

(assert (=> b!38214 (= e!24292 Unit!890)))

(declare-fun lt!14095 () List!1027)

(assert (=> d!6203 (forall!179 lt!14095 lambda!227)))

(assert (=> d!6203 (= lt!14095 e!24293)))

(assert (=> d!6203 (= c!4425 (and (is-Cons!1022 (toList!538 lm!266)) (= (_2!742 (h!1590 (toList!538 lm!266))) value!232)))))

(declare-fun isStrictlySorted!203 (List!1026) Bool)

(assert (=> d!6203 (isStrictlySorted!203 (toList!538 lm!266))))

(assert (=> d!6203 (= (getKeysOf!1 (toList!538 lm!266) value!232) lt!14095)))

(declare-fun b!38210 () Bool)

(declare-fun Unit!892 () Unit!884)

(assert (=> b!38210 (= e!24291 Unit!892)))

(declare-fun bm!2896 () Bool)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!2 (List!1026 List!1027 B!800 tuple2!1464) Unit!884)

(assert (=> bm!2896 (= call!2899 (lemmaForallGetValueByKeySameWithASmallerHead!2 (ite c!4425 lt!14098 lt!14097) (ite c!4425 lt!14093 lt!14067) value!232 (ite c!4425 lt!14065 lt!14096)))))

(declare-fun bm!2897 () Bool)

(assert (=> bm!2897 (= call!2898 (getKeysOf!1 (t!3867 (toList!538 lm!266)) value!232))))

(assert (= (and d!6203 c!4425) b!38211))

(assert (= (and d!6203 (not c!4425)) b!38212))

(assert (= (and b!38211 c!4426) b!38208))

(assert (= (and b!38211 (not c!4426)) b!38214))

(assert (= (and b!38212 c!4424) b!38209))

(assert (= (and b!38212 (not c!4424)) b!38213))

(assert (= (and b!38209 c!4423) b!38207))

(assert (= (and b!38209 (not c!4423)) b!38210))

(assert (= (or b!38208 b!38207) bm!2895))

(assert (= (or b!38208 b!38207) bm!2896))

(assert (= (or b!38211 b!38208 b!38207 b!38209) bm!2897))

(assert (= (or b!38211 b!38209) bm!2894))

(declare-fun m!30819 () Bool)

(assert (=> bm!2896 m!30819))

(declare-fun m!30825 () Bool)

(assert (=> bm!2894 m!30825))

(declare-fun m!30829 () Bool)

(assert (=> bm!2897 m!30829))

(declare-fun m!30835 () Bool)

(assert (=> d!6203 m!30835))

(declare-fun m!30839 () Bool)

(assert (=> d!6203 m!30839))

(declare-fun m!30845 () Bool)

(assert (=> bm!2895 m!30845))

(assert (=> start!5260 d!6203))

(declare-fun d!6211 () Bool)

(assert (=> d!6211 (= (inv!1715 lm!266) (isStrictlySorted!203 (toList!538 lm!266)))))

(declare-fun bs!1545 () Bool)

(assert (= bs!1545 d!6211))

(assert (=> bs!1545 m!30839))

(assert (=> start!5260 d!6211))

(declare-fun b!38239 () Bool)

(declare-fun e!24301 () Bool)

(declare-fun tp!5682 () Bool)

(assert (=> b!38239 (= e!24301 (and tp_is_empty!1723 tp!5682))))

(assert (=> b!38106 (= tp!5669 e!24301)))

(assert (= (and b!38106 (is-Cons!1022 (toList!538 lm!266))) b!38239))

(declare-fun b_lambda!2024 () Bool)

(assert (= b_lambda!2017 (or start!5260 b_lambda!2024)))

(declare-fun bs!1546 () Bool)

(declare-fun d!6217 () Bool)

(assert (= bs!1546 (and d!6217 start!5260)))

(declare-datatypes ((Option!102 0))(
  ( (Some!101 (v!1976 B!800)) (None!100) )
))
(declare-fun getValueByKey!96 (List!1026 (_ BitVec 64)) Option!102)

(assert (=> bs!1546 (= (dynLambda!181 lambda!194 (h!1591 (getKeysOf!1 (toList!538 lm!266) value!232))) (= (getValueByKey!96 (toList!538 lm!266) (h!1591 (getKeysOf!1 (toList!538 lm!266) value!232))) (Some!101 value!232)))))

(declare-fun m!30851 () Bool)

(assert (=> bs!1546 m!30851))

(assert (=> b!38137 d!6217))

(push 1)

