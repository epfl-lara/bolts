; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5262 () Bool)

(assert start!5262)

(assert (=> start!5262 true))

(assert (=> start!5262 true))

(declare-datatypes ((B!802 0))(
  ( (B!803 (val!901 Int)) )
))
(declare-datatypes ((tuple2!1466 0))(
  ( (tuple2!1467 (_1!743 (_ BitVec 64)) (_2!743 B!802)) )
))
(declare-datatypes ((List!1028 0))(
  ( (Nil!1025) (Cons!1024 (h!1592 tuple2!1466) (t!3869 List!1028)) )
))
(declare-datatypes ((ListLongMap!1047 0))(
  ( (ListLongMap!1048 (toList!539 List!1028)) )
))
(declare-fun lm!266 () ListLongMap!1047)

(declare-fun value!232 () B!802)

(declare-fun lambda!197 () Int)

(declare-datatypes ((List!1029 0))(
  ( (Nil!1026) (Cons!1025 (h!1593 (_ BitVec 64)) (t!3870 List!1029)) )
))
(declare-fun forall!180 (List!1029 Int) Bool)

(declare-fun getKeysOf!2 (List!1028 B!802) List!1029)

(assert (=> start!5262 (not (forall!180 (getKeysOf!2 (toList!539 lm!266) value!232) lambda!197))))

(declare-fun e!24237 () Bool)

(declare-fun inv!1716 (ListLongMap!1047) Bool)

(assert (=> start!5262 (and (inv!1716 lm!266) e!24237)))

(declare-fun tp_is_empty!1725 () Bool)

(assert (=> start!5262 tp_is_empty!1725))

(declare-fun b!38113 () Bool)

(declare-fun tp!5672 () Bool)

(assert (=> b!38113 (= e!24237 tp!5672)))

(assert (= start!5262 b!38113))

(declare-fun m!30791 () Bool)

(assert (=> start!5262 m!30791))

(assert (=> start!5262 m!30791))

(declare-fun m!30793 () Bool)

(assert (=> start!5262 m!30793))

(declare-fun m!30795 () Bool)

(assert (=> start!5262 m!30795))

(check-sat (not start!5262) (not b!38113) tp_is_empty!1725)
(check-sat)
(get-model)

(declare-fun d!6201 () Bool)

(declare-fun res!23007 () Bool)

(declare-fun e!24257 () Bool)

(assert (=> d!6201 (=> res!23007 e!24257)))

(get-info :version)

(assert (=> d!6201 (= res!23007 ((_ is Nil!1026) (getKeysOf!2 (toList!539 lm!266) value!232)))))

(assert (=> d!6201 (= (forall!180 (getKeysOf!2 (toList!539 lm!266) value!232) lambda!197) e!24257)))

(declare-fun b!38141 () Bool)

(declare-fun e!24258 () Bool)

(assert (=> b!38141 (= e!24257 e!24258)))

(declare-fun res!23008 () Bool)

(assert (=> b!38141 (=> (not res!23008) (not e!24258))))

(declare-fun dynLambda!182 (Int (_ BitVec 64)) Bool)

(assert (=> b!38141 (= res!23008 (dynLambda!182 lambda!197 (h!1593 (getKeysOf!2 (toList!539 lm!266) value!232))))))

(declare-fun b!38142 () Bool)

(assert (=> b!38142 (= e!24258 (forall!180 (t!3870 (getKeysOf!2 (toList!539 lm!266) value!232)) lambda!197))))

(assert (= (and d!6201 (not res!23007)) b!38141))

(assert (= (and b!38141 res!23008) b!38142))

(declare-fun b_lambda!2021 () Bool)

(assert (=> (not b_lambda!2021) (not b!38141)))

(declare-fun m!30811 () Bool)

(assert (=> b!38141 m!30811))

(declare-fun m!30813 () Bool)

(assert (=> b!38142 m!30813))

(assert (=> start!5262 d!6201))

(declare-fun bs!1525 () Bool)

(declare-fun b!38201 () Bool)

(assert (= bs!1525 (and b!38201 start!5262)))

(declare-fun lt!14068 () List!1028)

(declare-fun lt!14086 () tuple2!1466)

(declare-fun lambda!219 () Int)

(assert (=> bs!1525 (= (= (Cons!1024 lt!14086 lt!14068) (toList!539 lm!266)) (= lambda!219 lambda!197))))

(assert (=> b!38201 true))

(assert (=> b!38201 true))

(assert (=> b!38201 true))

(declare-fun bs!1528 () Bool)

(declare-fun b!38202 () Bool)

(assert (= bs!1528 (and b!38202 start!5262)))

(declare-fun lt!14071 () tuple2!1466)

(declare-fun lt!14084 () List!1028)

(declare-fun lambda!222 () Int)

(assert (=> bs!1528 (= (= (Cons!1024 lt!14071 lt!14084) (toList!539 lm!266)) (= lambda!222 lambda!197))))

(declare-fun bs!1531 () Bool)

(assert (= bs!1531 (and b!38202 b!38201)))

(assert (=> bs!1531 (= (= (Cons!1024 lt!14071 lt!14084) (Cons!1024 lt!14086 lt!14068)) (= lambda!222 lambda!219))))

(assert (=> b!38202 true))

(assert (=> b!38202 true))

(assert (=> b!38202 true))

(declare-fun bs!1534 () Bool)

(declare-fun d!6207 () Bool)

(assert (= bs!1534 (and d!6207 start!5262)))

(declare-fun lambda!225 () Int)

(assert (=> bs!1534 (= lambda!225 lambda!197)))

(declare-fun bs!1537 () Bool)

(assert (= bs!1537 (and d!6207 b!38201)))

(assert (=> bs!1537 (= (= (toList!539 lm!266) (Cons!1024 lt!14086 lt!14068)) (= lambda!225 lambda!219))))

(declare-fun bs!1540 () Bool)

(assert (= bs!1540 (and d!6207 b!38202)))

(assert (=> bs!1540 (= (= (toList!539 lm!266) (Cons!1024 lt!14071 lt!14084)) (= lambda!225 lambda!222))))

(assert (=> d!6207 true))

(assert (=> d!6207 true))

(declare-fun b!38194 () Bool)

(declare-datatypes ((Unit!882 0))(
  ( (Unit!883) )
))
(declare-fun lt!14070 () Unit!882)

(declare-fun e!24289 () Unit!882)

(assert (=> b!38194 (= lt!14070 e!24289)))

(declare-fun c!4415 () Bool)

(declare-fun call!2889 () Bool)

(assert (=> b!38194 (= c!4415 (not call!2889))))

(declare-fun lt!14064 () List!1029)

(declare-fun call!2896 () List!1029)

(assert (=> b!38194 (= lt!14064 call!2896)))

(declare-fun e!24290 () List!1029)

(assert (=> b!38194 (= e!24290 call!2896)))

(declare-fun lt!14089 () List!1029)

(assert (=> d!6207 (forall!180 lt!14089 lambda!225)))

(declare-fun e!24285 () List!1029)

(assert (=> d!6207 (= lt!14089 e!24285)))

(declare-fun c!4420 () Bool)

(assert (=> d!6207 (= c!4420 (and ((_ is Cons!1024) (toList!539 lm!266)) (= (_2!743 (h!1592 (toList!539 lm!266))) value!232)))))

(declare-fun isStrictlySorted!202 (List!1028) Bool)

(assert (=> d!6207 (isStrictlySorted!202 (toList!539 lm!266))))

(assert (=> d!6207 (= (getKeysOf!2 (toList!539 lm!266) value!232) lt!14089)))

(declare-fun lt!14081 () List!1029)

(declare-fun bm!2888 () Bool)

(declare-fun call!2894 () Bool)

(declare-fun lt!14073 () List!1029)

(assert (=> bm!2888 (= call!2894 (forall!180 (ite c!4420 lt!14073 lt!14081) (ite c!4420 lambda!219 lambda!222)))))

(declare-fun bm!2889 () Bool)

(assert (=> bm!2889 (= call!2896 (getKeysOf!2 (t!3869 (toList!539 lm!266)) value!232))))

(declare-fun b!38200 () Bool)

(declare-fun e!24288 () Unit!882)

(declare-fun Unit!886 () Unit!882)

(assert (=> b!38200 (= e!24288 Unit!886)))

(assert (=> b!38201 call!2894))

(declare-fun lt!14090 () Unit!882)

(declare-fun call!2897 () Unit!882)

(assert (=> b!38201 (= lt!14090 call!2897)))

(assert (=> b!38201 (= lt!14086 (h!1592 (toList!539 lm!266)))))

(assert (=> b!38201 (= lt!14073 call!2896)))

(assert (=> b!38201 (= lt!14068 (t!3869 (toList!539 lm!266)))))

(assert (=> b!38201 (= e!24288 lt!14090)))

(declare-fun lt!14088 () Unit!882)

(assert (=> b!38202 (= e!24289 lt!14088)))

(assert (=> b!38202 (= lt!14084 (t!3869 (toList!539 lm!266)))))

(assert (=> b!38202 (= lt!14081 call!2896)))

(assert (=> b!38202 (= lt!14071 (h!1592 (toList!539 lm!266)))))

(assert (=> b!38202 (= lt!14088 call!2897)))

(assert (=> b!38202 call!2894))

(declare-fun b!38203 () Bool)

(assert (=> b!38203 (= e!24285 e!24290)))

(declare-fun c!4421 () Bool)

(assert (=> b!38203 (= c!4421 (and ((_ is Cons!1024) (toList!539 lm!266)) (not (= (_2!743 (h!1592 (toList!539 lm!266))) value!232))))))

(declare-fun b!38204 () Bool)

(assert (=> b!38204 (= e!24290 Nil!1026)))

(declare-fun bm!2892 () Bool)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!1 (List!1028 List!1029 B!802 tuple2!1466) Unit!882)

(assert (=> bm!2892 (= call!2897 (lemmaForallGetValueByKeySameWithASmallerHead!1 (ite c!4420 lt!14068 lt!14084) (ite c!4420 lt!14073 lt!14081) value!232 (ite c!4420 lt!14086 lt!14071)))))

(declare-fun b!38205 () Bool)

(assert (=> b!38205 (= e!24285 (Cons!1025 (_1!743 (h!1592 (toList!539 lm!266))) call!2896))))

(declare-fun c!4422 () Bool)

(assert (=> b!38205 (= c!4422 (not call!2889))))

(declare-fun lt!14066 () Unit!882)

(assert (=> b!38205 (= lt!14066 e!24288)))

(declare-fun bm!2893 () Bool)

(declare-fun isEmpty!227 (List!1029) Bool)

(assert (=> bm!2893 (= call!2889 (isEmpty!227 call!2896))))

(declare-fun b!38206 () Bool)

(declare-fun Unit!891 () Unit!882)

(assert (=> b!38206 (= e!24289 Unit!891)))

(assert (= (and d!6207 c!4420) b!38205))

(assert (= (and d!6207 (not c!4420)) b!38203))

(assert (= (and b!38205 c!4422) b!38201))

(assert (= (and b!38205 (not c!4422)) b!38200))

(assert (= (and b!38203 c!4421) b!38194))

(assert (= (and b!38203 (not c!4421)) b!38204))

(assert (= (and b!38194 c!4415) b!38202))

(assert (= (and b!38194 (not c!4415)) b!38206))

(assert (= (or b!38201 b!38202) bm!2888))

(assert (= (or b!38201 b!38202) bm!2892))

(assert (= (or b!38205 b!38201 b!38194 b!38202) bm!2889))

(assert (= (or b!38205 b!38194) bm!2893))

(declare-fun m!30815 () Bool)

(assert (=> bm!2893 m!30815))

(declare-fun m!30821 () Bool)

(assert (=> d!6207 m!30821))

(declare-fun m!30823 () Bool)

(assert (=> d!6207 m!30823))

(declare-fun m!30833 () Bool)

(assert (=> bm!2892 m!30833))

(declare-fun m!30843 () Bool)

(assert (=> bm!2889 m!30843))

(declare-fun m!30849 () Bool)

(assert (=> bm!2888 m!30849))

(assert (=> start!5262 d!6207))

(declare-fun d!6213 () Bool)

(assert (=> d!6213 (= (inv!1716 lm!266) (isStrictlySorted!202 (toList!539 lm!266)))))

(declare-fun bs!1544 () Bool)

(assert (= bs!1544 d!6213))

(assert (=> bs!1544 m!30823))

(assert (=> start!5262 d!6213))

(declare-fun b!38241 () Bool)

(declare-fun e!24303 () Bool)

(declare-fun tp!5684 () Bool)

(assert (=> b!38241 (= e!24303 (and tp_is_empty!1725 tp!5684))))

(assert (=> b!38113 (= tp!5672 e!24303)))

(assert (= (and b!38113 ((_ is Cons!1024) (toList!539 lm!266))) b!38241))

(declare-fun b_lambda!2027 () Bool)

(assert (= b_lambda!2021 (or start!5262 b_lambda!2027)))

(declare-fun bs!1547 () Bool)

(declare-fun d!6218 () Bool)

(assert (= bs!1547 (and d!6218 start!5262)))

(declare-datatypes ((Option!101 0))(
  ( (Some!100 (v!1975 B!802)) (None!99) )
))
(declare-fun getValueByKey!95 (List!1028 (_ BitVec 64)) Option!101)

(assert (=> bs!1547 (= (dynLambda!182 lambda!197 (h!1593 (getKeysOf!2 (toList!539 lm!266) value!232))) (= (getValueByKey!95 (toList!539 lm!266) (h!1593 (getKeysOf!2 (toList!539 lm!266) value!232))) (Some!100 value!232)))))

(declare-fun m!30854 () Bool)

(assert (=> bs!1547 m!30854))

(assert (=> b!38141 d!6218))

(check-sat tp_is_empty!1725 (not b!38142) (not bm!2893) (not bm!2888) (not bs!1547) (not b!38241) (not b_lambda!2027) (not d!6213) (not bm!2892) (not d!6207) (not bm!2889))
(check-sat)
