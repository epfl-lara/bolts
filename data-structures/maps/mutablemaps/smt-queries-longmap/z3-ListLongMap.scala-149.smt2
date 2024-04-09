; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2886 () Bool)

(assert start!2886)

(declare-fun b_free!573 () Bool)

(declare-fun b_next!573 () Bool)

(assert (=> start!2886 (= b_free!573 (not b_next!573))))

(declare-fun tp!2894 () Bool)

(declare-fun b_and!1193 () Bool)

(assert (=> start!2886 (= tp!2894 b_and!1193)))

(declare-fun res!12310 () Bool)

(declare-fun e!10260 () Bool)

(assert (=> start!2886 (=> (not res!12310) (not e!10260))))

(declare-datatypes ((B!694 0))(
  ( (B!695 (val!445 Int)) )
))
(declare-datatypes ((tuple2!672 0))(
  ( (tuple2!673 (_1!336 (_ BitVec 64)) (_2!336 B!694)) )
))
(declare-datatypes ((List!525 0))(
  ( (Nil!522) (Cons!521 (h!1087 tuple2!672) (t!3140 List!525)) )
))
(declare-datatypes ((ListLongMap!503 0))(
  ( (ListLongMap!504 (toList!267 List!525)) )
))
(declare-fun lm!221 () ListLongMap!503)

(declare-fun p!191 () Int)

(declare-fun forall!147 (List!525 Int) Bool)

(assert (=> start!2886 (= res!12310 (forall!147 (toList!267 lm!221) p!191))))

(assert (=> start!2886 e!10260))

(declare-fun e!10261 () Bool)

(declare-fun inv!897 (ListLongMap!503) Bool)

(assert (=> start!2886 (and (inv!897 lm!221) e!10261)))

(assert (=> start!2886 tp!2894))

(assert (=> start!2886 true))

(declare-fun b!16584 () Bool)

(declare-fun res!12309 () Bool)

(assert (=> b!16584 (=> (not res!12309) (not e!10260))))

(declare-fun isEmpty!166 (ListLongMap!503) Bool)

(assert (=> b!16584 (= res!12309 (isEmpty!166 lm!221))))

(declare-fun a!507 () (_ BitVec 64))

(declare-fun b!16585 () Bool)

(declare-fun -!34 (ListLongMap!503 (_ BitVec 64)) ListLongMap!503)

(assert (=> b!16585 (= e!10260 (not (forall!147 (toList!267 (-!34 lm!221 a!507)) p!191)))))

(declare-fun b!16586 () Bool)

(declare-fun tp!2893 () Bool)

(assert (=> b!16586 (= e!10261 tp!2893)))

(assert (= (and start!2886 res!12310) b!16584))

(assert (= (and b!16584 res!12309) b!16585))

(assert (= start!2886 b!16586))

(declare-fun m!11681 () Bool)

(assert (=> start!2886 m!11681))

(declare-fun m!11683 () Bool)

(assert (=> start!2886 m!11683))

(declare-fun m!11685 () Bool)

(assert (=> b!16584 m!11685))

(declare-fun m!11687 () Bool)

(assert (=> b!16585 m!11687))

(declare-fun m!11689 () Bool)

(assert (=> b!16585 m!11689))

(check-sat (not b!16585) (not b_next!573) (not b!16586) (not b!16584) (not start!2886) b_and!1193)
(check-sat b_and!1193 (not b_next!573))
(get-model)

(declare-fun d!3299 () Bool)

(declare-fun res!12333 () Bool)

(declare-fun e!10284 () Bool)

(assert (=> d!3299 (=> res!12333 e!10284)))

(get-info :version)

(assert (=> d!3299 (= res!12333 ((_ is Nil!522) (toList!267 (-!34 lm!221 a!507))))))

(assert (=> d!3299 (= (forall!147 (toList!267 (-!34 lm!221 a!507)) p!191) e!10284)))

(declare-fun b!16612 () Bool)

(declare-fun e!10285 () Bool)

(assert (=> b!16612 (= e!10284 e!10285)))

(declare-fun res!12334 () Bool)

(assert (=> b!16612 (=> (not res!12334) (not e!10285))))

(declare-fun dynLambda!130 (Int tuple2!672) Bool)

(assert (=> b!16612 (= res!12334 (dynLambda!130 p!191 (h!1087 (toList!267 (-!34 lm!221 a!507)))))))

(declare-fun b!16613 () Bool)

(assert (=> b!16613 (= e!10285 (forall!147 (t!3140 (toList!267 (-!34 lm!221 a!507))) p!191))))

(assert (= (and d!3299 (not res!12333)) b!16612))

(assert (= (and b!16612 res!12334) b!16613))

(declare-fun b_lambda!1395 () Bool)

(assert (=> (not b_lambda!1395) (not b!16612)))

(declare-fun t!3147 () Bool)

(declare-fun tb!607 () Bool)

(assert (=> (and start!2886 (= p!191 p!191) t!3147) tb!607))

(declare-fun result!979 () Bool)

(assert (=> tb!607 (= result!979 true)))

(assert (=> b!16612 t!3147))

(declare-fun b_and!1201 () Bool)

(assert (= b_and!1193 (and (=> t!3147 result!979) b_and!1201)))

(declare-fun m!11707 () Bool)

(assert (=> b!16612 m!11707))

(declare-fun m!11711 () Bool)

(assert (=> b!16613 m!11711))

(assert (=> b!16585 d!3299))

(declare-fun d!3305 () Bool)

(declare-fun lt!4085 () ListLongMap!503)

(declare-fun contains!196 (ListLongMap!503 (_ BitVec 64)) Bool)

(assert (=> d!3305 (not (contains!196 lt!4085 a!507))))

(declare-fun removeStrictlySorted!19 (List!525 (_ BitVec 64)) List!525)

(assert (=> d!3305 (= lt!4085 (ListLongMap!504 (removeStrictlySorted!19 (toList!267 lm!221) a!507)))))

(assert (=> d!3305 (= (-!34 lm!221 a!507) lt!4085)))

(declare-fun bs!789 () Bool)

(assert (= bs!789 d!3305))

(declare-fun m!11717 () Bool)

(assert (=> bs!789 m!11717))

(declare-fun m!11719 () Bool)

(assert (=> bs!789 m!11719))

(assert (=> b!16585 d!3305))

(declare-fun d!3309 () Bool)

(declare-fun isEmpty!168 (List!525) Bool)

(assert (=> d!3309 (= (isEmpty!166 lm!221) (isEmpty!168 (toList!267 lm!221)))))

(declare-fun bs!792 () Bool)

(assert (= bs!792 d!3309))

(declare-fun m!11727 () Bool)

(assert (=> bs!792 m!11727))

(assert (=> b!16584 d!3309))

(declare-fun d!3315 () Bool)

(declare-fun res!12337 () Bool)

(declare-fun e!10288 () Bool)

(assert (=> d!3315 (=> res!12337 e!10288)))

(assert (=> d!3315 (= res!12337 ((_ is Nil!522) (toList!267 lm!221)))))

(assert (=> d!3315 (= (forall!147 (toList!267 lm!221) p!191) e!10288)))

(declare-fun b!16616 () Bool)

(declare-fun e!10289 () Bool)

(assert (=> b!16616 (= e!10288 e!10289)))

(declare-fun res!12338 () Bool)

(assert (=> b!16616 (=> (not res!12338) (not e!10289))))

(assert (=> b!16616 (= res!12338 (dynLambda!130 p!191 (h!1087 (toList!267 lm!221))))))

(declare-fun b!16617 () Bool)

(assert (=> b!16617 (= e!10289 (forall!147 (t!3140 (toList!267 lm!221)) p!191))))

(assert (= (and d!3315 (not res!12337)) b!16616))

(assert (= (and b!16616 res!12338) b!16617))

(declare-fun b_lambda!1399 () Bool)

(assert (=> (not b_lambda!1399) (not b!16616)))

(declare-fun t!3151 () Bool)

(declare-fun tb!611 () Bool)

(assert (=> (and start!2886 (= p!191 p!191) t!3151) tb!611))

(declare-fun result!983 () Bool)

(assert (=> tb!611 (= result!983 true)))

(assert (=> b!16616 t!3151))

(declare-fun b_and!1205 () Bool)

(assert (= b_and!1201 (and (=> t!3151 result!983) b_and!1205)))

(declare-fun m!11733 () Bool)

(assert (=> b!16616 m!11733))

(declare-fun m!11735 () Bool)

(assert (=> b!16617 m!11735))

(assert (=> start!2886 d!3315))

(declare-fun d!3319 () Bool)

(declare-fun isStrictlySorted!164 (List!525) Bool)

(assert (=> d!3319 (= (inv!897 lm!221) (isStrictlySorted!164 (toList!267 lm!221)))))

(declare-fun bs!795 () Bool)

(assert (= bs!795 d!3319))

(declare-fun m!11741 () Bool)

(assert (=> bs!795 m!11741))

(assert (=> start!2886 d!3319))

(declare-fun b!16629 () Bool)

(declare-fun e!10297 () Bool)

(declare-fun tp_is_empty!837 () Bool)

(declare-fun tp!2906 () Bool)

(assert (=> b!16629 (= e!10297 (and tp_is_empty!837 tp!2906))))

(assert (=> b!16586 (= tp!2893 e!10297)))

(assert (= (and b!16586 ((_ is Cons!521) (toList!267 lm!221))) b!16629))

(declare-fun b_lambda!1407 () Bool)

(assert (= b_lambda!1395 (or (and start!2886 b_free!573) b_lambda!1407)))

(declare-fun b_lambda!1409 () Bool)

(assert (= b_lambda!1399 (or (and start!2886 b_free!573) b_lambda!1409)))

(check-sat (not b_next!573) (not d!3305) (not b!16617) (not b_lambda!1409) (not b!16613) (not b!16629) tp_is_empty!837 b_and!1205 (not d!3309) (not d!3319) (not b_lambda!1407))
(check-sat b_and!1205 (not b_next!573))
(get-model)

(declare-fun d!3325 () Bool)

(declare-fun res!12341 () Bool)

(declare-fun e!10301 () Bool)

(assert (=> d!3325 (=> res!12341 e!10301)))

(assert (=> d!3325 (= res!12341 ((_ is Nil!522) (t!3140 (toList!267 lm!221))))))

(assert (=> d!3325 (= (forall!147 (t!3140 (toList!267 lm!221)) p!191) e!10301)))

(declare-fun b!16635 () Bool)

(declare-fun e!10302 () Bool)

(assert (=> b!16635 (= e!10301 e!10302)))

(declare-fun res!12342 () Bool)

(assert (=> b!16635 (=> (not res!12342) (not e!10302))))

(assert (=> b!16635 (= res!12342 (dynLambda!130 p!191 (h!1087 (t!3140 (toList!267 lm!221)))))))

(declare-fun b!16636 () Bool)

(assert (=> b!16636 (= e!10302 (forall!147 (t!3140 (t!3140 (toList!267 lm!221))) p!191))))

(assert (= (and d!3325 (not res!12341)) b!16635))

(assert (= (and b!16635 res!12342) b!16636))

(declare-fun b_lambda!1415 () Bool)

(assert (=> (not b_lambda!1415) (not b!16635)))

(declare-fun t!3155 () Bool)

(declare-fun tb!615 () Bool)

(assert (=> (and start!2886 (= p!191 p!191) t!3155) tb!615))

(declare-fun result!993 () Bool)

(assert (=> tb!615 (= result!993 true)))

(assert (=> b!16635 t!3155))

(declare-fun b_and!1209 () Bool)

(assert (= b_and!1205 (and (=> t!3155 result!993) b_and!1209)))

(declare-fun m!11749 () Bool)

(assert (=> b!16635 m!11749))

(declare-fun m!11751 () Bool)

(assert (=> b!16636 m!11751))

(assert (=> b!16617 d!3325))

(declare-fun d!3327 () Bool)

(declare-fun res!12347 () Bool)

(declare-fun e!10307 () Bool)

(assert (=> d!3327 (=> res!12347 e!10307)))

(assert (=> d!3327 (= res!12347 (or ((_ is Nil!522) (toList!267 lm!221)) ((_ is Nil!522) (t!3140 (toList!267 lm!221)))))))

(assert (=> d!3327 (= (isStrictlySorted!164 (toList!267 lm!221)) e!10307)))

(declare-fun b!16641 () Bool)

(declare-fun e!10308 () Bool)

(assert (=> b!16641 (= e!10307 e!10308)))

(declare-fun res!12348 () Bool)

(assert (=> b!16641 (=> (not res!12348) (not e!10308))))

(assert (=> b!16641 (= res!12348 (bvslt (_1!336 (h!1087 (toList!267 lm!221))) (_1!336 (h!1087 (t!3140 (toList!267 lm!221))))))))

(declare-fun b!16642 () Bool)

(assert (=> b!16642 (= e!10308 (isStrictlySorted!164 (t!3140 (toList!267 lm!221))))))

(assert (= (and d!3327 (not res!12347)) b!16641))

(assert (= (and b!16641 res!12348) b!16642))

(declare-fun m!11753 () Bool)

(assert (=> b!16642 m!11753))

(assert (=> d!3319 d!3327))

(declare-fun d!3329 () Bool)

(declare-fun e!10325 () Bool)

(assert (=> d!3329 e!10325))

(declare-fun res!12363 () Bool)

(assert (=> d!3329 (=> res!12363 e!10325)))

(declare-fun lt!4096 () Bool)

(assert (=> d!3329 (= res!12363 (not lt!4096))))

(declare-fun lt!4098 () Bool)

(assert (=> d!3329 (= lt!4096 lt!4098)))

(declare-datatypes ((Unit!332 0))(
  ( (Unit!333) )
))
(declare-fun lt!4097 () Unit!332)

(declare-fun e!10326 () Unit!332)

(assert (=> d!3329 (= lt!4097 e!10326)))

(declare-fun c!1595 () Bool)

(assert (=> d!3329 (= c!1595 lt!4098)))

(declare-fun containsKey!20 (List!525 (_ BitVec 64)) Bool)

(assert (=> d!3329 (= lt!4098 (containsKey!20 (toList!267 lt!4085) a!507))))

(assert (=> d!3329 (= (contains!196 lt!4085 a!507) lt!4096)))

(declare-fun b!16661 () Bool)

(declare-fun lt!4095 () Unit!332)

(assert (=> b!16661 (= e!10326 lt!4095)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!17 (List!525 (_ BitVec 64)) Unit!332)

(assert (=> b!16661 (= lt!4095 (lemmaContainsKeyImpliesGetValueByKeyDefined!17 (toList!267 lt!4085) a!507))))

(declare-datatypes ((Option!62 0))(
  ( (Some!61 (v!1391 B!694)) (None!60) )
))
(declare-fun isDefined!18 (Option!62) Bool)

(declare-fun getValueByKey!56 (List!525 (_ BitVec 64)) Option!62)

(assert (=> b!16661 (isDefined!18 (getValueByKey!56 (toList!267 lt!4085) a!507))))

(declare-fun b!16662 () Bool)

(declare-fun Unit!334 () Unit!332)

(assert (=> b!16662 (= e!10326 Unit!334)))

(declare-fun b!16663 () Bool)

(assert (=> b!16663 (= e!10325 (isDefined!18 (getValueByKey!56 (toList!267 lt!4085) a!507)))))

(assert (= (and d!3329 c!1595) b!16661))

(assert (= (and d!3329 (not c!1595)) b!16662))

(assert (= (and d!3329 (not res!12363)) b!16663))

(declare-fun m!11769 () Bool)

(assert (=> d!3329 m!11769))

(declare-fun m!11771 () Bool)

(assert (=> b!16661 m!11771))

(declare-fun m!11773 () Bool)

(assert (=> b!16661 m!11773))

(assert (=> b!16661 m!11773))

(declare-fun m!11775 () Bool)

(assert (=> b!16661 m!11775))

(assert (=> b!16663 m!11773))

(assert (=> b!16663 m!11773))

(assert (=> b!16663 m!11775))

(assert (=> d!3305 d!3329))

(declare-fun b!16689 () Bool)

(declare-fun e!10345 () List!525)

(declare-fun e!10344 () List!525)

(assert (=> b!16689 (= e!10345 e!10344)))

(declare-fun c!1606 () Bool)

(assert (=> b!16689 (= c!1606 (and ((_ is Cons!521) (toList!267 lm!221)) (not (= (_1!336 (h!1087 (toList!267 lm!221))) a!507))))))

(declare-fun b!16690 () Bool)

(assert (=> b!16690 (= e!10345 (t!3140 (toList!267 lm!221)))))

(declare-fun b!16691 () Bool)

(declare-fun $colon$colon!27 (List!525 tuple2!672) List!525)

(assert (=> b!16691 (= e!10344 ($colon$colon!27 (removeStrictlySorted!19 (t!3140 (toList!267 lm!221)) a!507) (h!1087 (toList!267 lm!221))))))

(declare-fun d!3347 () Bool)

(declare-fun e!10343 () Bool)

(assert (=> d!3347 e!10343))

(declare-fun res!12371 () Bool)

(assert (=> d!3347 (=> (not res!12371) (not e!10343))))

(declare-fun lt!4121 () List!525)

(assert (=> d!3347 (= res!12371 (isStrictlySorted!164 lt!4121))))

(assert (=> d!3347 (= lt!4121 e!10345)))

(declare-fun c!1605 () Bool)

(assert (=> d!3347 (= c!1605 (and ((_ is Cons!521) (toList!267 lm!221)) (= (_1!336 (h!1087 (toList!267 lm!221))) a!507)))))

(assert (=> d!3347 (isStrictlySorted!164 (toList!267 lm!221))))

(assert (=> d!3347 (= (removeStrictlySorted!19 (toList!267 lm!221) a!507) lt!4121)))

(declare-fun b!16692 () Bool)

(assert (=> b!16692 (= e!10344 Nil!522)))

(declare-fun b!16693 () Bool)

(assert (=> b!16693 (= e!10343 (not (containsKey!20 lt!4121 a!507)))))

(assert (= (and d!3347 c!1605) b!16690))

(assert (= (and d!3347 (not c!1605)) b!16689))

(assert (= (and b!16689 c!1606) b!16691))

(assert (= (and b!16689 (not c!1606)) b!16692))

(assert (= (and d!3347 res!12371) b!16693))

(declare-fun m!11785 () Bool)

(assert (=> b!16691 m!11785))

(assert (=> b!16691 m!11785))

(declare-fun m!11791 () Bool)

(assert (=> b!16691 m!11791))

(declare-fun m!11795 () Bool)

(assert (=> d!3347 m!11795))

(assert (=> d!3347 m!11741))

(declare-fun m!11799 () Bool)

(assert (=> b!16693 m!11799))

(assert (=> d!3305 d!3347))

(declare-fun d!3351 () Bool)

(declare-fun res!12373 () Bool)

(declare-fun e!10348 () Bool)

(assert (=> d!3351 (=> res!12373 e!10348)))

(assert (=> d!3351 (= res!12373 ((_ is Nil!522) (t!3140 (toList!267 (-!34 lm!221 a!507)))))))

(assert (=> d!3351 (= (forall!147 (t!3140 (toList!267 (-!34 lm!221 a!507))) p!191) e!10348)))

(declare-fun b!16697 () Bool)

(declare-fun e!10349 () Bool)

(assert (=> b!16697 (= e!10348 e!10349)))

(declare-fun res!12374 () Bool)

(assert (=> b!16697 (=> (not res!12374) (not e!10349))))

(assert (=> b!16697 (= res!12374 (dynLambda!130 p!191 (h!1087 (t!3140 (toList!267 (-!34 lm!221 a!507))))))))

(declare-fun b!16698 () Bool)

(assert (=> b!16698 (= e!10349 (forall!147 (t!3140 (t!3140 (toList!267 (-!34 lm!221 a!507)))) p!191))))

(assert (= (and d!3351 (not res!12373)) b!16697))

(assert (= (and b!16697 res!12374) b!16698))

(declare-fun b_lambda!1423 () Bool)

(assert (=> (not b_lambda!1423) (not b!16697)))

(declare-fun t!3163 () Bool)

(declare-fun tb!623 () Bool)

(assert (=> (and start!2886 (= p!191 p!191) t!3163) tb!623))

(declare-fun result!1001 () Bool)

(assert (=> tb!623 (= result!1001 true)))

(assert (=> b!16697 t!3163))

(declare-fun b_and!1217 () Bool)

(assert (= b_and!1209 (and (=> t!3163 result!1001) b_and!1217)))

(declare-fun m!11801 () Bool)

(assert (=> b!16697 m!11801))

(declare-fun m!11803 () Bool)

(assert (=> b!16698 m!11803))

(assert (=> b!16613 d!3351))

(declare-fun d!3355 () Bool)

(assert (=> d!3355 (= (isEmpty!168 (toList!267 lm!221)) ((_ is Nil!522) (toList!267 lm!221)))))

(assert (=> d!3309 d!3355))

(declare-fun b!16699 () Bool)

(declare-fun e!10350 () Bool)

(declare-fun tp!2910 () Bool)

(assert (=> b!16699 (= e!10350 (and tp_is_empty!837 tp!2910))))

(assert (=> b!16629 (= tp!2906 e!10350)))

(assert (= (and b!16629 ((_ is Cons!521) (t!3140 (toList!267 lm!221)))) b!16699))

(declare-fun b_lambda!1425 () Bool)

(assert (= b_lambda!1423 (or (and start!2886 b_free!573) b_lambda!1425)))

(declare-fun b_lambda!1427 () Bool)

(assert (= b_lambda!1415 (or (and start!2886 b_free!573) b_lambda!1427)))

(check-sat (not b_lambda!1425) b_and!1217 (not b!16663) (not b!16698) (not b_lambda!1427) (not b!16699) (not b!16661) (not b_lambda!1409) (not d!3329) (not b_lambda!1407) (not b!16693) (not b_next!573) (not b!16691) tp_is_empty!837 (not d!3347) (not b!16642) (not b!16636))
(check-sat b_and!1217 (not b_next!573))
