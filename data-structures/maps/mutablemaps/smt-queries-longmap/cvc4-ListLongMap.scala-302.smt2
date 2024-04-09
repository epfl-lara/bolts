; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5264 () Bool)

(assert start!5264)

(assert (=> start!5264 true))

(assert (=> start!5264 true))

(declare-datatypes ((B!804 0))(
  ( (B!805 (val!902 Int)) )
))
(declare-datatypes ((tuple2!1468 0))(
  ( (tuple2!1469 (_1!744 (_ BitVec 64)) (_2!744 B!804)) )
))
(declare-datatypes ((List!1030 0))(
  ( (Nil!1027) (Cons!1026 (h!1594 tuple2!1468) (t!3871 List!1030)) )
))
(declare-datatypes ((ListLongMap!1049 0))(
  ( (ListLongMap!1050 (toList!540 List!1030)) )
))
(declare-fun lm!266 () ListLongMap!1049)

(declare-fun value!232 () B!804)

(declare-fun lambda!200 () Int)

(declare-datatypes ((List!1031 0))(
  ( (Nil!1028) (Cons!1027 (h!1595 (_ BitVec 64)) (t!3872 List!1031)) )
))
(declare-fun forall!181 (List!1031 Int) Bool)

(declare-fun getKeysOf!3 (List!1030 B!804) List!1031)

(assert (=> start!5264 (not (forall!181 (getKeysOf!3 (toList!540 lm!266) value!232) lambda!200))))

(declare-fun e!24240 () Bool)

(declare-fun inv!1717 (ListLongMap!1049) Bool)

(assert (=> start!5264 (and (inv!1717 lm!266) e!24240)))

(declare-fun tp_is_empty!1727 () Bool)

(assert (=> start!5264 tp_is_empty!1727))

(declare-fun b!38120 () Bool)

(declare-fun tp!5675 () Bool)

(assert (=> b!38120 (= e!24240 tp!5675)))

(assert (= start!5264 b!38120))

(declare-fun m!30797 () Bool)

(assert (=> start!5264 m!30797))

(assert (=> start!5264 m!30797))

(declare-fun m!30799 () Bool)

(assert (=> start!5264 m!30799))

(declare-fun m!30801 () Bool)

(assert (=> start!5264 m!30801))

(push 1)

(assert (not start!5264))

(assert (not b!38120))

(assert tp_is_empty!1727)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6199 () Bool)

(declare-fun res!23005 () Bool)

(declare-fun e!24255 () Bool)

(assert (=> d!6199 (=> res!23005 e!24255)))

(assert (=> d!6199 (= res!23005 (is-Nil!1028 (getKeysOf!3 (toList!540 lm!266) value!232)))))

(assert (=> d!6199 (= (forall!181 (getKeysOf!3 (toList!540 lm!266) value!232) lambda!200) e!24255)))

(declare-fun b!38139 () Bool)

(declare-fun e!24256 () Bool)

(assert (=> b!38139 (= e!24255 e!24256)))

(declare-fun res!23006 () Bool)

(assert (=> b!38139 (=> (not res!23006) (not e!24256))))

(declare-fun dynLambda!183 (Int (_ BitVec 64)) Bool)

(assert (=> b!38139 (= res!23006 (dynLambda!183 lambda!200 (h!1595 (getKeysOf!3 (toList!540 lm!266) value!232))))))

(declare-fun b!38140 () Bool)

(assert (=> b!38140 (= e!24256 (forall!181 (t!3872 (getKeysOf!3 (toList!540 lm!266) value!232)) lambda!200))))

(assert (= (and d!6199 (not res!23005)) b!38139))

(assert (= (and b!38139 res!23006) b!38140))

(declare-fun b_lambda!2019 () Bool)

(assert (=> (not b_lambda!2019) (not b!38139)))

(declare-fun m!30807 () Bool)

(assert (=> b!38139 m!30807))

(declare-fun m!30809 () Bool)

(assert (=> b!38140 m!30809))

(assert (=> start!5264 d!6199))

(declare-fun bs!1526 () Bool)

(declare-fun b!38198 () Bool)

(assert (= bs!1526 (and b!38198 start!5264)))

(declare-fun lt!14078 () List!1030)

(declare-fun lt!14082 () tuple2!1468)

(declare-fun lambda!220 () Int)

(assert (=> bs!1526 (= (= (Cons!1026 lt!14082 lt!14078) (toList!540 lm!266)) (= lambda!220 lambda!200))))

(assert (=> b!38198 true))

(assert (=> b!38198 true))

(assert (=> b!38198 true))

(declare-fun bs!1529 () Bool)

(declare-fun b!38197 () Bool)

(assert (= bs!1529 (and b!38197 start!5264)))

(declare-fun lambda!223 () Int)

(declare-fun lt!14076 () tuple2!1468)

(declare-fun lt!14074 () List!1030)

(assert (=> bs!1529 (= (= (Cons!1026 lt!14076 lt!14074) (toList!540 lm!266)) (= lambda!223 lambda!200))))

(declare-fun bs!1532 () Bool)

(assert (= bs!1532 (and b!38197 b!38198)))

(assert (=> bs!1532 (= (= (Cons!1026 lt!14076 lt!14074) (Cons!1026 lt!14082 lt!14078)) (= lambda!223 lambda!220))))

(assert (=> b!38197 true))

(assert (=> b!38197 true))

(assert (=> b!38197 true))

(declare-fun bs!1536 () Bool)

(declare-fun d!6205 () Bool)

(assert (= bs!1536 (and d!6205 start!5264)))

(declare-fun lambda!226 () Int)

(assert (=> bs!1536 (= lambda!226 lambda!200)))

(declare-fun bs!1539 () Bool)

(assert (= bs!1539 (and d!6205 b!38198)))

(assert (=> bs!1539 (= (= (toList!540 lm!266) (Cons!1026 lt!14082 lt!14078)) (= lambda!226 lambda!220))))

(declare-fun bs!1542 () Bool)

(assert (= bs!1542 (and d!6205 b!38197)))

(assert (=> bs!1542 (= (= (toList!540 lm!266) (Cons!1026 lt!14076 lt!14074)) (= lambda!226 lambda!223))))

(assert (=> d!6205 true))

(assert (=> d!6205 true))

(declare-fun b!38191 () Bool)

(declare-fun e!24286 () List!1031)

(declare-fun e!24284 () List!1031)

(assert (=> b!38191 (= e!24286 e!24284)))

(declare-fun c!4419 () Bool)

(assert (=> b!38191 (= c!4419 (and (is-Cons!1026 (toList!540 lm!266)) (not (= (_2!744 (h!1594 (toList!540 lm!266))) value!232))))))

(declare-fun b!38192 () Bool)

(declare-datatypes ((Unit!887 0))(
  ( (Unit!888) )
))
(declare-fun e!24287 () Unit!887)

(declare-fun Unit!889 () Unit!887)

(assert (=> b!38192 (= e!24287 Unit!889)))

(declare-fun bm!2886 () Bool)

(declare-fun c!4417 () Bool)

(declare-fun call!2895 () Bool)

(declare-fun lt!14075 () List!1031)

(declare-fun lt!14079 () List!1031)

(assert (=> bm!2886 (= call!2895 (forall!181 (ite c!4417 lt!14075 lt!14079) (ite c!4417 lambda!220 lambda!223)))))

(declare-fun b!38193 () Bool)

(assert (=> b!38193 (= e!24284 Nil!1028)))

(declare-fun bm!2887 () Bool)

(declare-fun call!2892 () List!1031)

(assert (=> bm!2887 (= call!2892 (getKeysOf!3 (t!3871 (toList!540 lm!266)) value!232))))

(declare-fun b!38195 () Bool)

(declare-fun lt!14069 () Unit!887)

(declare-fun e!24283 () Unit!887)

(assert (=> b!38195 (= lt!14069 e!24283)))

(declare-fun c!4416 () Bool)

(declare-fun call!2891 () Bool)

(assert (=> b!38195 (= c!4416 (not call!2891))))

(declare-fun lt!14080 () List!1031)

(assert (=> b!38195 (= lt!14080 call!2892)))

(assert (=> b!38195 (= e!24284 call!2892)))

(declare-fun b!38196 () Bool)

(declare-fun Unit!893 () Unit!887)

(assert (=> b!38196 (= e!24283 Unit!893)))

(declare-fun lt!14085 () Unit!887)

(assert (=> b!38197 (= e!24283 lt!14085)))

(assert (=> b!38197 (= lt!14074 (t!3871 (toList!540 lm!266)))))

(assert (=> b!38197 (= lt!14079 call!2892)))

(assert (=> b!38197 (= lt!14076 (h!1594 (toList!540 lm!266)))))

(declare-fun call!2893 () Unit!887)

(assert (=> b!38197 (= lt!14085 call!2893)))

(assert (=> b!38197 call!2895))

(declare-fun bm!2891 () Bool)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!3 (List!1030 List!1031 B!804 tuple2!1468) Unit!887)

(assert (=> bm!2891 (= call!2893 (lemmaForallGetValueByKeySameWithASmallerHead!3 (ite c!4417 lt!14078 lt!14074) (ite c!4417 lt!14075 lt!14079) value!232 (ite c!4417 lt!14082 lt!14076)))))

(declare-fun lt!14072 () List!1031)

(assert (=> d!6205 (forall!181 lt!14072 lambda!226)))

(assert (=> d!6205 (= lt!14072 e!24286)))

(assert (=> d!6205 (= c!4417 (and (is-Cons!1026 (toList!540 lm!266)) (= (_2!744 (h!1594 (toList!540 lm!266))) value!232)))))

(declare-fun isStrictlySorted!204 (List!1030) Bool)

(assert (=> d!6205 (isStrictlySorted!204 (toList!540 lm!266))))

(assert (=> d!6205 (= (getKeysOf!3 (toList!540 lm!266) value!232) lt!14072)))

(declare-fun bm!2890 () Bool)

(declare-fun isEmpty!228 (List!1031) Bool)

(assert (=> bm!2890 (= call!2891 (isEmpty!228 call!2892))))

(assert (=> b!38198 call!2895))

(declare-fun lt!14077 () Unit!887)

(assert (=> b!38198 (= lt!14077 call!2893)))

(assert (=> b!38198 (= lt!14082 (h!1594 (toList!540 lm!266)))))

(assert (=> b!38198 (= lt!14075 call!2892)))

(assert (=> b!38198 (= lt!14078 (t!3871 (toList!540 lm!266)))))

(assert (=> b!38198 (= e!24287 lt!14077)))

(declare-fun b!38199 () Bool)

(assert (=> b!38199 (= e!24286 (Cons!1027 (_1!744 (h!1594 (toList!540 lm!266))) call!2892))))

(declare-fun c!4418 () Bool)

(assert (=> b!38199 (= c!4418 (not call!2891))))

(declare-fun lt!14083 () Unit!887)

(assert (=> b!38199 (= lt!14083 e!24287)))

(assert (= (and d!6205 c!4417) b!38199))

(assert (= (and d!6205 (not c!4417)) b!38191))

(assert (= (and b!38199 c!4418) b!38198))

(assert (= (and b!38199 (not c!4418)) b!38192))

