; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!471176 () Bool)

(assert start!471176)

(declare-fun b!4671061 () Bool)

(declare-fun e!2914947 () Bool)

(declare-fun e!2914946 () Bool)

(assert (=> b!4671061 (= e!2914947 (not e!2914946))))

(declare-fun res!1966407 () Bool)

(assert (=> b!4671061 (=> res!1966407 e!2914946)))

(declare-datatypes ((K!13420 0))(
  ( (K!13421 (val!19007 Int)) )
))
(declare-datatypes ((V!13666 0))(
  ( (V!13667 (val!19008 Int)) )
))
(declare-datatypes ((tuple2!53240 0))(
  ( (tuple2!53241 (_1!29914 K!13420) (_2!29914 V!13666)) )
))
(declare-datatypes ((List!52175 0))(
  ( (Nil!52051) (Cons!52051 (h!58231 tuple2!53240) (t!359313 List!52175)) )
))
(declare-fun l!12991 () List!52175)

(declare-fun key!4532 () K!13420)

(declare-fun containsKey!2852 (List!52175 K!13420) Bool)

(assert (=> b!4671061 (= res!1966407 (containsKey!2852 (t!359313 l!12991) key!4532))))

(declare-datatypes ((ListMap!4677 0))(
  ( (ListMap!4678 (toList!5316 List!52175)) )
))
(declare-fun lt!1832965 () ListMap!4677)

(declare-fun lhm!57 () ListMap!4677)

(declare-fun -!636 (ListMap!4677 K!13420) ListMap!4677)

(declare-fun +!2036 (ListMap!4677 tuple2!53240) ListMap!4677)

(assert (=> b!4671061 (= (-!636 lt!1832965 key!4532) (+!2036 (-!636 lhm!57 key!4532) (h!58231 l!12991)))))

(declare-datatypes ((Unit!121142 0))(
  ( (Unit!121143) )
))
(declare-fun lt!1832964 () Unit!121142)

(declare-fun addRemoveCommutativeForDiffKeys!73 (ListMap!4677 K!13420 V!13666 K!13420) Unit!121142)

(assert (=> b!4671061 (= lt!1832964 (addRemoveCommutativeForDiffKeys!73 lhm!57 (_1!29914 (h!58231 l!12991)) (_2!29914 (h!58231 l!12991)) key!4532))))

(assert (=> b!4671061 (= lt!1832965 (+!2036 lhm!57 (h!58231 l!12991)))))

(declare-fun b!4671062 () Bool)

(declare-fun e!2914945 () Bool)

(declare-fun tp!1343909 () Bool)

(assert (=> b!4671062 (= e!2914945 tp!1343909)))

(declare-fun b!4671063 () Bool)

(declare-fun res!1966405 () Bool)

(assert (=> b!4671063 (=> (not res!1966405) (not e!2914947))))

(declare-fun noDuplicateKeys!1708 (List!52175) Bool)

(assert (=> b!4671063 (= res!1966405 (noDuplicateKeys!1708 l!12991))))

(declare-fun tp_is_empty!30127 () Bool)

(declare-fun tp!1343908 () Bool)

(declare-fun e!2914948 () Bool)

(declare-fun tp_is_empty!30125 () Bool)

(declare-fun b!4671064 () Bool)

(assert (=> b!4671064 (= e!2914948 (and tp_is_empty!30125 tp_is_empty!30127 tp!1343908))))

(declare-fun b!4671065 () Bool)

(assert (=> b!4671065 (= e!2914946 (noDuplicateKeys!1708 (t!359313 l!12991)))))

(declare-fun b!4671066 () Bool)

(declare-fun res!1966408 () Bool)

(assert (=> b!4671066 (=> (not res!1966408) (not e!2914947))))

(get-info :version)

(assert (=> b!4671066 (= res!1966408 ((_ is Cons!52051) l!12991))))

(declare-fun res!1966406 () Bool)

(assert (=> start!471176 (=> (not res!1966406) (not e!2914947))))

(assert (=> start!471176 (= res!1966406 (not (containsKey!2852 l!12991 key!4532)))))

(assert (=> start!471176 e!2914947))

(assert (=> start!471176 e!2914948))

(assert (=> start!471176 tp_is_empty!30125))

(declare-fun inv!67294 (ListMap!4677) Bool)

(assert (=> start!471176 (and (inv!67294 lhm!57) e!2914945)))

(assert (= (and start!471176 res!1966406) b!4671063))

(assert (= (and b!4671063 res!1966405) b!4671066))

(assert (= (and b!4671066 res!1966408) b!4671061))

(assert (= (and b!4671061 (not res!1966407)) b!4671065))

(assert (= (and start!471176 ((_ is Cons!52051) l!12991)) b!4671064))

(assert (= start!471176 b!4671062))

(declare-fun m!5564387 () Bool)

(assert (=> b!4671061 m!5564387))

(declare-fun m!5564389 () Bool)

(assert (=> b!4671061 m!5564389))

(declare-fun m!5564391 () Bool)

(assert (=> b!4671061 m!5564391))

(declare-fun m!5564393 () Bool)

(assert (=> b!4671061 m!5564393))

(assert (=> b!4671061 m!5564389))

(declare-fun m!5564395 () Bool)

(assert (=> b!4671061 m!5564395))

(declare-fun m!5564397 () Bool)

(assert (=> b!4671061 m!5564397))

(declare-fun m!5564399 () Bool)

(assert (=> b!4671063 m!5564399))

(declare-fun m!5564401 () Bool)

(assert (=> b!4671065 m!5564401))

(declare-fun m!5564403 () Bool)

(assert (=> start!471176 m!5564403))

(declare-fun m!5564405 () Bool)

(assert (=> start!471176 m!5564405))

(check-sat (not b!4671061) (not b!4671063) (not b!4671065) tp_is_empty!30125 (not start!471176) tp_is_empty!30127 (not b!4671062) (not b!4671064))
(check-sat)
(get-model)

(declare-fun d!1485354 () Bool)

(declare-fun res!1966413 () Bool)

(declare-fun e!2914953 () Bool)

(assert (=> d!1485354 (=> res!1966413 e!2914953)))

(assert (=> d!1485354 (= res!1966413 (not ((_ is Cons!52051) (t!359313 l!12991))))))

(assert (=> d!1485354 (= (noDuplicateKeys!1708 (t!359313 l!12991)) e!2914953)))

(declare-fun b!4671071 () Bool)

(declare-fun e!2914954 () Bool)

(assert (=> b!4671071 (= e!2914953 e!2914954)))

(declare-fun res!1966414 () Bool)

(assert (=> b!4671071 (=> (not res!1966414) (not e!2914954))))

(assert (=> b!4671071 (= res!1966414 (not (containsKey!2852 (t!359313 (t!359313 l!12991)) (_1!29914 (h!58231 (t!359313 l!12991))))))))

(declare-fun b!4671072 () Bool)

(assert (=> b!4671072 (= e!2914954 (noDuplicateKeys!1708 (t!359313 (t!359313 l!12991))))))

(assert (= (and d!1485354 (not res!1966413)) b!4671071))

(assert (= (and b!4671071 res!1966414) b!4671072))

(declare-fun m!5564407 () Bool)

(assert (=> b!4671071 m!5564407))

(declare-fun m!5564409 () Bool)

(assert (=> b!4671072 m!5564409))

(assert (=> b!4671065 d!1485354))

(declare-fun d!1485358 () Bool)

(declare-fun res!1966415 () Bool)

(declare-fun e!2914955 () Bool)

(assert (=> d!1485358 (=> res!1966415 e!2914955)))

(assert (=> d!1485358 (= res!1966415 (not ((_ is Cons!52051) l!12991)))))

(assert (=> d!1485358 (= (noDuplicateKeys!1708 l!12991) e!2914955)))

(declare-fun b!4671073 () Bool)

(declare-fun e!2914956 () Bool)

(assert (=> b!4671073 (= e!2914955 e!2914956)))

(declare-fun res!1966416 () Bool)

(assert (=> b!4671073 (=> (not res!1966416) (not e!2914956))))

(assert (=> b!4671073 (= res!1966416 (not (containsKey!2852 (t!359313 l!12991) (_1!29914 (h!58231 l!12991)))))))

(declare-fun b!4671074 () Bool)

(assert (=> b!4671074 (= e!2914956 (noDuplicateKeys!1708 (t!359313 l!12991)))))

(assert (= (and d!1485358 (not res!1966415)) b!4671073))

(assert (= (and b!4671073 res!1966416) b!4671074))

(declare-fun m!5564411 () Bool)

(assert (=> b!4671073 m!5564411))

(assert (=> b!4671074 m!5564401))

(assert (=> b!4671063 d!1485358))

(declare-fun d!1485360 () Bool)

(declare-fun res!1966421 () Bool)

(declare-fun e!2914961 () Bool)

(assert (=> d!1485360 (=> res!1966421 e!2914961)))

(assert (=> d!1485360 (= res!1966421 (and ((_ is Cons!52051) l!12991) (= (_1!29914 (h!58231 l!12991)) key!4532)))))

(assert (=> d!1485360 (= (containsKey!2852 l!12991 key!4532) e!2914961)))

(declare-fun b!4671079 () Bool)

(declare-fun e!2914962 () Bool)

(assert (=> b!4671079 (= e!2914961 e!2914962)))

(declare-fun res!1966422 () Bool)

(assert (=> b!4671079 (=> (not res!1966422) (not e!2914962))))

(assert (=> b!4671079 (= res!1966422 ((_ is Cons!52051) l!12991))))

(declare-fun b!4671080 () Bool)

(assert (=> b!4671080 (= e!2914962 (containsKey!2852 (t!359313 l!12991) key!4532))))

(assert (= (and d!1485360 (not res!1966421)) b!4671079))

(assert (= (and b!4671079 res!1966422) b!4671080))

(assert (=> b!4671080 m!5564393))

(assert (=> start!471176 d!1485360))

(declare-fun d!1485362 () Bool)

(declare-fun invariantList!1337 (List!52175) Bool)

(assert (=> d!1485362 (= (inv!67294 lhm!57) (invariantList!1337 (toList!5316 lhm!57)))))

(declare-fun bs!1078841 () Bool)

(assert (= bs!1078841 d!1485362))

(declare-fun m!5564413 () Bool)

(assert (=> bs!1078841 m!5564413))

(assert (=> start!471176 d!1485362))

(declare-fun d!1485364 () Bool)

(declare-fun e!2914968 () Bool)

(assert (=> d!1485364 e!2914968))

(declare-fun res!1966428 () Bool)

(assert (=> d!1485364 (=> (not res!1966428) (not e!2914968))))

(declare-fun lt!1832971 () ListMap!4677)

(declare-fun contains!15247 (ListMap!4677 K!13420) Bool)

(assert (=> d!1485364 (= res!1966428 (not (contains!15247 lt!1832971 key!4532)))))

(declare-fun removePresrvNoDuplicatedKeys!313 (List!52175 K!13420) List!52175)

(assert (=> d!1485364 (= lt!1832971 (ListMap!4678 (removePresrvNoDuplicatedKeys!313 (toList!5316 lt!1832965) key!4532)))))

(assert (=> d!1485364 (= (-!636 lt!1832965 key!4532) lt!1832971)))

(declare-fun b!4671086 () Bool)

(declare-datatypes ((List!52177 0))(
  ( (Nil!52053) (Cons!52053 (h!58233 K!13420) (t!359315 List!52177)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9073 (List!52177) (InoxSet K!13420))

(declare-fun keys!18494 (ListMap!4677) List!52177)

(assert (=> b!4671086 (= e!2914968 (= ((_ map and) (content!9073 (keys!18494 lt!1832965)) ((_ map not) (store ((as const (Array K!13420 Bool)) false) key!4532 true))) (content!9073 (keys!18494 lt!1832971))))))

(assert (= (and d!1485364 res!1966428) b!4671086))

(declare-fun m!5564429 () Bool)

(assert (=> d!1485364 m!5564429))

(declare-fun m!5564431 () Bool)

(assert (=> d!1485364 m!5564431))

(declare-fun m!5564433 () Bool)

(assert (=> b!4671086 m!5564433))

(declare-fun m!5564435 () Bool)

(assert (=> b!4671086 m!5564435))

(declare-fun m!5564437 () Bool)

(assert (=> b!4671086 m!5564437))

(declare-fun m!5564439 () Bool)

(assert (=> b!4671086 m!5564439))

(declare-fun m!5564441 () Bool)

(assert (=> b!4671086 m!5564441))

(assert (=> b!4671086 m!5564435))

(assert (=> b!4671086 m!5564439))

(assert (=> b!4671061 d!1485364))

(declare-fun d!1485368 () Bool)

(declare-fun e!2914969 () Bool)

(assert (=> d!1485368 e!2914969))

(declare-fun res!1966429 () Bool)

(assert (=> d!1485368 (=> (not res!1966429) (not e!2914969))))

(declare-fun lt!1832972 () ListMap!4677)

(assert (=> d!1485368 (= res!1966429 (not (contains!15247 lt!1832972 key!4532)))))

(assert (=> d!1485368 (= lt!1832972 (ListMap!4678 (removePresrvNoDuplicatedKeys!313 (toList!5316 lhm!57) key!4532)))))

(assert (=> d!1485368 (= (-!636 lhm!57 key!4532) lt!1832972)))

(declare-fun b!4671087 () Bool)

(assert (=> b!4671087 (= e!2914969 (= ((_ map and) (content!9073 (keys!18494 lhm!57)) ((_ map not) (store ((as const (Array K!13420 Bool)) false) key!4532 true))) (content!9073 (keys!18494 lt!1832972))))))

(assert (= (and d!1485368 res!1966429) b!4671087))

(declare-fun m!5564443 () Bool)

(assert (=> d!1485368 m!5564443))

(declare-fun m!5564445 () Bool)

(assert (=> d!1485368 m!5564445))

(assert (=> b!4671087 m!5564433))

(declare-fun m!5564447 () Bool)

(assert (=> b!4671087 m!5564447))

(declare-fun m!5564449 () Bool)

(assert (=> b!4671087 m!5564449))

(declare-fun m!5564451 () Bool)

(assert (=> b!4671087 m!5564451))

(declare-fun m!5564453 () Bool)

(assert (=> b!4671087 m!5564453))

(assert (=> b!4671087 m!5564447))

(assert (=> b!4671087 m!5564451))

(assert (=> b!4671061 d!1485368))

(declare-fun d!1485370 () Bool)

(declare-fun e!2914981 () Bool)

(assert (=> d!1485370 e!2914981))

(declare-fun res!1966446 () Bool)

(assert (=> d!1485370 (=> (not res!1966446) (not e!2914981))))

(declare-fun lt!1832993 () ListMap!4677)

(assert (=> d!1485370 (= res!1966446 (contains!15247 lt!1832993 (_1!29914 (h!58231 l!12991))))))

(declare-fun lt!1832994 () List!52175)

(assert (=> d!1485370 (= lt!1832993 (ListMap!4678 lt!1832994))))

(declare-fun lt!1832995 () Unit!121142)

(declare-fun lt!1832996 () Unit!121142)

(assert (=> d!1485370 (= lt!1832995 lt!1832996)))

(declare-datatypes ((Option!11934 0))(
  ( (None!11933) (Some!11933 (v!46293 V!13666)) )
))
(declare-fun getValueByKey!1682 (List!52175 K!13420) Option!11934)

(assert (=> d!1485370 (= (getValueByKey!1682 lt!1832994 (_1!29914 (h!58231 l!12991))) (Some!11933 (_2!29914 (h!58231 l!12991))))))

(declare-fun lemmaContainsTupThenGetReturnValue!956 (List!52175 K!13420 V!13666) Unit!121142)

(assert (=> d!1485370 (= lt!1832996 (lemmaContainsTupThenGetReturnValue!956 lt!1832994 (_1!29914 (h!58231 l!12991)) (_2!29914 (h!58231 l!12991))))))

(declare-fun insertNoDuplicatedKeys!464 (List!52175 K!13420 V!13666) List!52175)

(assert (=> d!1485370 (= lt!1832994 (insertNoDuplicatedKeys!464 (toList!5316 lhm!57) (_1!29914 (h!58231 l!12991)) (_2!29914 (h!58231 l!12991))))))

(assert (=> d!1485370 (= (+!2036 lhm!57 (h!58231 l!12991)) lt!1832993)))

(declare-fun b!4671104 () Bool)

(declare-fun res!1966447 () Bool)

(assert (=> b!4671104 (=> (not res!1966447) (not e!2914981))))

(assert (=> b!4671104 (= res!1966447 (= (getValueByKey!1682 (toList!5316 lt!1832993) (_1!29914 (h!58231 l!12991))) (Some!11933 (_2!29914 (h!58231 l!12991)))))))

(declare-fun b!4671105 () Bool)

(declare-fun contains!15249 (List!52175 tuple2!53240) Bool)

(assert (=> b!4671105 (= e!2914981 (contains!15249 (toList!5316 lt!1832993) (h!58231 l!12991)))))

(assert (= (and d!1485370 res!1966446) b!4671104))

(assert (= (and b!4671104 res!1966447) b!4671105))

(declare-fun m!5564469 () Bool)

(assert (=> d!1485370 m!5564469))

(declare-fun m!5564471 () Bool)

(assert (=> d!1485370 m!5564471))

(declare-fun m!5564473 () Bool)

(assert (=> d!1485370 m!5564473))

(declare-fun m!5564475 () Bool)

(assert (=> d!1485370 m!5564475))

(declare-fun m!5564477 () Bool)

(assert (=> b!4671104 m!5564477))

(declare-fun m!5564479 () Bool)

(assert (=> b!4671105 m!5564479))

(assert (=> b!4671061 d!1485370))

(declare-fun d!1485376 () Bool)

(declare-fun res!1966448 () Bool)

(declare-fun e!2914982 () Bool)

(assert (=> d!1485376 (=> res!1966448 e!2914982)))

(assert (=> d!1485376 (= res!1966448 (and ((_ is Cons!52051) (t!359313 l!12991)) (= (_1!29914 (h!58231 (t!359313 l!12991))) key!4532)))))

(assert (=> d!1485376 (= (containsKey!2852 (t!359313 l!12991) key!4532) e!2914982)))

(declare-fun b!4671106 () Bool)

(declare-fun e!2914983 () Bool)

(assert (=> b!4671106 (= e!2914982 e!2914983)))

(declare-fun res!1966449 () Bool)

(assert (=> b!4671106 (=> (not res!1966449) (not e!2914983))))

(assert (=> b!4671106 (= res!1966449 ((_ is Cons!52051) (t!359313 l!12991)))))

(declare-fun b!4671107 () Bool)

(assert (=> b!4671107 (= e!2914983 (containsKey!2852 (t!359313 (t!359313 l!12991)) key!4532))))

(assert (= (and d!1485376 (not res!1966448)) b!4671106))

(assert (= (and b!4671106 res!1966449) b!4671107))

(declare-fun m!5564481 () Bool)

(assert (=> b!4671107 m!5564481))

(assert (=> b!4671061 d!1485376))

(declare-fun d!1485378 () Bool)

(assert (=> d!1485378 (= (-!636 (+!2036 lhm!57 (tuple2!53241 (_1!29914 (h!58231 l!12991)) (_2!29914 (h!58231 l!12991)))) key!4532) (+!2036 (-!636 lhm!57 key!4532) (tuple2!53241 (_1!29914 (h!58231 l!12991)) (_2!29914 (h!58231 l!12991)))))))

(declare-fun lt!1833007 () Unit!121142)

(declare-fun choose!32330 (ListMap!4677 K!13420 V!13666 K!13420) Unit!121142)

(assert (=> d!1485378 (= lt!1833007 (choose!32330 lhm!57 (_1!29914 (h!58231 l!12991)) (_2!29914 (h!58231 l!12991)) key!4532))))

(assert (=> d!1485378 (not (= (_1!29914 (h!58231 l!12991)) key!4532))))

(assert (=> d!1485378 (= (addRemoveCommutativeForDiffKeys!73 lhm!57 (_1!29914 (h!58231 l!12991)) (_2!29914 (h!58231 l!12991)) key!4532) lt!1833007)))

(declare-fun bs!1078843 () Bool)

(assert (= bs!1078843 d!1485378))

(declare-fun m!5564521 () Bool)

(assert (=> bs!1078843 m!5564521))

(declare-fun m!5564523 () Bool)

(assert (=> bs!1078843 m!5564523))

(declare-fun m!5564525 () Bool)

(assert (=> bs!1078843 m!5564525))

(assert (=> bs!1078843 m!5564389))

(assert (=> bs!1078843 m!5564523))

(assert (=> bs!1078843 m!5564389))

(declare-fun m!5564527 () Bool)

(assert (=> bs!1078843 m!5564527))

(assert (=> b!4671061 d!1485378))

(declare-fun d!1485392 () Bool)

(declare-fun e!2914996 () Bool)

(assert (=> d!1485392 e!2914996))

(declare-fun res!1966463 () Bool)

(assert (=> d!1485392 (=> (not res!1966463) (not e!2914996))))

(declare-fun lt!1833008 () ListMap!4677)

(assert (=> d!1485392 (= res!1966463 (contains!15247 lt!1833008 (_1!29914 (h!58231 l!12991))))))

(declare-fun lt!1833009 () List!52175)

(assert (=> d!1485392 (= lt!1833008 (ListMap!4678 lt!1833009))))

(declare-fun lt!1833010 () Unit!121142)

(declare-fun lt!1833011 () Unit!121142)

(assert (=> d!1485392 (= lt!1833010 lt!1833011)))

(assert (=> d!1485392 (= (getValueByKey!1682 lt!1833009 (_1!29914 (h!58231 l!12991))) (Some!11933 (_2!29914 (h!58231 l!12991))))))

(assert (=> d!1485392 (= lt!1833011 (lemmaContainsTupThenGetReturnValue!956 lt!1833009 (_1!29914 (h!58231 l!12991)) (_2!29914 (h!58231 l!12991))))))

(assert (=> d!1485392 (= lt!1833009 (insertNoDuplicatedKeys!464 (toList!5316 (-!636 lhm!57 key!4532)) (_1!29914 (h!58231 l!12991)) (_2!29914 (h!58231 l!12991))))))

(assert (=> d!1485392 (= (+!2036 (-!636 lhm!57 key!4532) (h!58231 l!12991)) lt!1833008)))

(declare-fun b!4671121 () Bool)

(declare-fun res!1966464 () Bool)

(assert (=> b!4671121 (=> (not res!1966464) (not e!2914996))))

(assert (=> b!4671121 (= res!1966464 (= (getValueByKey!1682 (toList!5316 lt!1833008) (_1!29914 (h!58231 l!12991))) (Some!11933 (_2!29914 (h!58231 l!12991)))))))

(declare-fun b!4671122 () Bool)

(assert (=> b!4671122 (= e!2914996 (contains!15249 (toList!5316 lt!1833008) (h!58231 l!12991)))))

(assert (= (and d!1485392 res!1966463) b!4671121))

(assert (= (and b!4671121 res!1966464) b!4671122))

(declare-fun m!5564529 () Bool)

(assert (=> d!1485392 m!5564529))

(declare-fun m!5564531 () Bool)

(assert (=> d!1485392 m!5564531))

(declare-fun m!5564533 () Bool)

(assert (=> d!1485392 m!5564533))

(declare-fun m!5564535 () Bool)

(assert (=> d!1485392 m!5564535))

(declare-fun m!5564537 () Bool)

(assert (=> b!4671121 m!5564537))

(declare-fun m!5564539 () Bool)

(assert (=> b!4671122 m!5564539))

(assert (=> b!4671061 d!1485392))

(declare-fun tp!1343914 () Bool)

(declare-fun b!4671131 () Bool)

(declare-fun e!2915001 () Bool)

(assert (=> b!4671131 (= e!2915001 (and tp_is_empty!30125 tp_is_empty!30127 tp!1343914))))

(assert (=> b!4671064 (= tp!1343908 e!2915001)))

(assert (= (and b!4671064 ((_ is Cons!52051) (t!359313 l!12991))) b!4671131))

(declare-fun e!2915002 () Bool)

(declare-fun tp!1343915 () Bool)

(declare-fun b!4671132 () Bool)

(assert (=> b!4671132 (= e!2915002 (and tp_is_empty!30125 tp_is_empty!30127 tp!1343915))))

(assert (=> b!4671062 (= tp!1343909 e!2915002)))

(assert (= (and b!4671062 ((_ is Cons!52051) (toList!5316 lhm!57))) b!4671132))

(check-sat (not d!1485378) (not d!1485368) tp_is_empty!30127 (not b!4671071) (not b!4671131) (not b!4671080) (not b!4671087) (not b!4671105) (not d!1485392) (not b!4671104) tp_is_empty!30125 (not b!4671122) (not b!4671107) (not b!4671121) (not b!4671086) (not d!1485364) (not b!4671073) (not b!4671072) (not b!4671074) (not d!1485362) (not d!1485370) (not b!4671132))
(check-sat)
