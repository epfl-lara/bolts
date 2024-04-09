; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43008 () Bool)

(assert start!43008)

(declare-fun b_free!12113 () Bool)

(declare-fun b_next!12113 () Bool)

(assert (=> start!43008 (= b_free!12113 (not b_next!12113))))

(declare-fun tp!42442 () Bool)

(declare-fun b_and!20845 () Bool)

(assert (=> start!43008 (= tp!42442 b_and!20845)))

(declare-fun res!285081 () Bool)

(declare-fun e!280644 () Bool)

(assert (=> start!43008 (=> (not res!285081) (not e!280644))))

(declare-datatypes ((B!1062 0))(
  ( (B!1063 (val!6815 Int)) )
))
(declare-datatypes ((tuple2!9000 0))(
  ( (tuple2!9001 (_1!4510 (_ BitVec 64)) (_2!4510 B!1062)) )
))
(declare-datatypes ((List!9089 0))(
  ( (Nil!9086) (Cons!9085 (h!9941 tuple2!9000) (t!15264 List!9089)) )
))
(declare-datatypes ((ListLongMap!7927 0))(
  ( (ListLongMap!7928 (toList!3979 List!9089)) )
))
(declare-fun lm!215 () ListLongMap!7927)

(declare-fun p!166 () Int)

(declare-fun forall!202 (List!9089 Int) Bool)

(assert (=> start!43008 (= res!285081 (forall!202 (toList!3979 lm!215) p!166))))

(assert (=> start!43008 e!280644))

(declare-fun e!280646 () Bool)

(declare-fun inv!15505 (ListLongMap!7927) Bool)

(assert (=> start!43008 (and (inv!15505 lm!215) e!280646)))

(assert (=> start!43008 tp!42442))

(declare-fun tp_is_empty!13535 () Bool)

(assert (=> start!43008 tp_is_empty!13535))

(assert (=> start!43008 true))

(declare-fun b!477546 () Bool)

(declare-fun e!280645 () Bool)

(assert (=> b!477546 (= e!280644 e!280645)))

(declare-fun res!285080 () Bool)

(assert (=> b!477546 (=> (not res!285080) (not e!280645))))

(declare-fun lt!217543 () tuple2!9000)

(declare-fun dynLambda!948 (Int tuple2!9000) Bool)

(assert (=> b!477546 (= res!285080 (dynLambda!948 p!166 lt!217543))))

(declare-fun a!501 () (_ BitVec 64))

(declare-fun b!85 () B!1062)

(assert (=> b!477546 (= lt!217543 (tuple2!9001 a!501 b!85))))

(declare-fun b!477547 () Bool)

(declare-fun res!285082 () Bool)

(assert (=> b!477547 (=> (not res!285082) (not e!280645))))

(declare-fun isEmpty!616 (ListLongMap!7927) Bool)

(assert (=> b!477547 (= res!285082 (isEmpty!616 lm!215))))

(declare-fun b!477548 () Bool)

(declare-fun +!1741 (ListLongMap!7927 tuple2!9000) ListLongMap!7927)

(assert (=> b!477548 (= e!280645 (not (forall!202 (toList!3979 (+!1741 lm!215 lt!217543)) p!166)))))

(declare-fun b!477549 () Bool)

(declare-fun tp!42441 () Bool)

(assert (=> b!477549 (= e!280646 tp!42441)))

(assert (= (and start!43008 res!285081) b!477546))

(assert (= (and b!477546 res!285080) b!477547))

(assert (= (and b!477547 res!285082) b!477548))

(assert (= start!43008 b!477549))

(declare-fun b_lambda!10741 () Bool)

(assert (=> (not b_lambda!10741) (not b!477546)))

(declare-fun t!15263 () Bool)

(declare-fun tb!4129 () Bool)

(assert (=> (and start!43008 (= p!166 p!166) t!15263) tb!4129))

(declare-fun result!7697 () Bool)

(assert (=> tb!4129 (= result!7697 true)))

(assert (=> b!477546 t!15263))

(declare-fun b_and!20847 () Bool)

(assert (= b_and!20845 (and (=> t!15263 result!7697) b_and!20847)))

(declare-fun m!460017 () Bool)

(assert (=> start!43008 m!460017))

(declare-fun m!460019 () Bool)

(assert (=> start!43008 m!460019))

(declare-fun m!460021 () Bool)

(assert (=> b!477546 m!460021))

(declare-fun m!460023 () Bool)

(assert (=> b!477547 m!460023))

(declare-fun m!460025 () Bool)

(assert (=> b!477548 m!460025))

(declare-fun m!460027 () Bool)

(assert (=> b!477548 m!460027))

(push 1)

(assert (not b_lambda!10741))

(assert (not b!477547))

(assert b_and!20847)

(assert (not b!477549))

(assert tp_is_empty!13535)

(assert (not b!477548))

(assert (not b_next!12113))

(assert (not start!43008))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20847)

(assert (not b_next!12113))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!10745 () Bool)

(assert (= b_lambda!10741 (or (and start!43008 b_free!12113) b_lambda!10745)))

(push 1)

(assert (not b!477547))

(assert b_and!20847)

(assert (not b!477549))

(assert tp_is_empty!13535)

(assert (not b_lambda!10745))

(assert (not b!477548))

(assert (not b_next!12113))

(assert (not start!43008))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20847)

(assert (not b_next!12113))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!76247 () Bool)

(declare-fun res!285093 () Bool)

(declare-fun e!280657 () Bool)

(assert (=> d!76247 (=> res!285093 e!280657)))

(assert (=> d!76247 (= res!285093 (is-Nil!9086 (toList!3979 lm!215)))))

(assert (=> d!76247 (= (forall!202 (toList!3979 lm!215) p!166) e!280657)))

(declare-fun b!477560 () Bool)

(declare-fun e!280658 () Bool)

(assert (=> b!477560 (= e!280657 e!280658)))

(declare-fun res!285094 () Bool)

(assert (=> b!477560 (=> (not res!285094) (not e!280658))))

(assert (=> b!477560 (= res!285094 (dynLambda!948 p!166 (h!9941 (toList!3979 lm!215))))))

(declare-fun b!477561 () Bool)

(assert (=> b!477561 (= e!280658 (forall!202 (t!15264 (toList!3979 lm!215)) p!166))))

(assert (= (and d!76247 (not res!285093)) b!477560))

(assert (= (and b!477560 res!285094) b!477561))

(declare-fun b_lambda!10751 () Bool)

(assert (=> (not b_lambda!10751) (not b!477560)))

(declare-fun t!15268 () Bool)

(declare-fun tb!4133 () Bool)

(assert (=> (and start!43008 (= p!166 p!166) t!15268) tb!4133))

(declare-fun result!7701 () Bool)

(assert (=> tb!4133 (= result!7701 true)))

(assert (=> b!477560 t!15268))

(declare-fun b_and!20851 () Bool)

(assert (= b_and!20847 (and (=> t!15268 result!7701) b_and!20851)))

(declare-fun m!460033 () Bool)

(assert (=> b!477560 m!460033))

(declare-fun m!460035 () Bool)

(assert (=> b!477561 m!460035))

(assert (=> start!43008 d!76247))

(declare-fun d!76253 () Bool)

(declare-fun isStrictlySorted!388 (List!9089) Bool)

(assert (=> d!76253 (= (inv!15505 lm!215) (isStrictlySorted!388 (toList!3979 lm!215)))))

(declare-fun bs!15184 () Bool)

(assert (= bs!15184 d!76253))

(declare-fun m!460045 () Bool)

(assert (=> bs!15184 m!460045))

(assert (=> start!43008 d!76253))

(declare-fun d!76261 () Bool)

(declare-fun isEmpty!619 (List!9089) Bool)

(assert (=> d!76261 (= (isEmpty!616 lm!215) (isEmpty!619 (toList!3979 lm!215)))))

(declare-fun bs!15185 () Bool)

(assert (= bs!15185 d!76261))

(declare-fun m!460051 () Bool)

(assert (=> bs!15185 m!460051))

(assert (=> b!477547 d!76261))

(declare-fun d!76265 () Bool)

(declare-fun res!285103 () Bool)

(declare-fun e!280667 () Bool)

(assert (=> d!76265 (=> res!285103 e!280667)))

(assert (=> d!76265 (= res!285103 (is-Nil!9086 (toList!3979 (+!1741 lm!215 lt!217543))))))

(assert (=> d!76265 (= (forall!202 (toList!3979 (+!1741 lm!215 lt!217543)) p!166) e!280667)))

(declare-fun b!477570 () Bool)

(declare-fun e!280668 () Bool)

(assert (=> b!477570 (= e!280667 e!280668)))

(declare-fun res!285104 () Bool)

(assert (=> b!477570 (=> (not res!285104) (not e!280668))))

(assert (=> b!477570 (= res!285104 (dynLambda!948 p!166 (h!9941 (toList!3979 (+!1741 lm!215 lt!217543)))))))

(declare-fun b!477571 () Bool)

(assert (=> b!477571 (= e!280668 (forall!202 (t!15264 (toList!3979 (+!1741 lm!215 lt!217543))) p!166))))

(assert (= (and d!76265 (not res!285103)) b!477570))

(assert (= (and b!477570 res!285104) b!477571))

(declare-fun b_lambda!10757 () Bool)

(assert (=> (not b_lambda!10757) (not b!477570)))

(declare-fun t!15274 () Bool)

(declare-fun tb!4139 () Bool)

(assert (=> (and start!43008 (= p!166 p!166) t!15274) tb!4139))

(declare-fun result!7707 () Bool)

(assert (=> tb!4139 (= result!7707 true)))

(assert (=> b!477570 t!15274))

(declare-fun b_and!20857 () Bool)

(assert (= b_and!20851 (and (=> t!15274 result!7707) b_and!20857)))

(declare-fun m!460055 () Bool)

(assert (=> b!477570 m!460055))

(declare-fun m!460057 () Bool)

(assert (=> b!477571 m!460057))

(assert (=> b!477548 d!76265))

(declare-fun d!76269 () Bool)

(declare-fun e!280681 () Bool)

(assert (=> d!76269 e!280681))

(declare-fun res!285122 () Bool)

(assert (=> d!76269 (=> (not res!285122) (not e!280681))))

(declare-fun lt!217574 () ListLongMap!7927)

(declare-fun contains!2581 (ListLongMap!7927 (_ BitVec 64)) Bool)

(assert (=> d!76269 (= res!285122 (contains!2581 lt!217574 (_1!4510 lt!217543)))))

(declare-fun lt!217575 () List!9089)

(assert (=> d!76269 (= lt!217574 (ListLongMap!7928 lt!217575))))

(declare-datatypes ((Unit!14021 0))(
  ( (Unit!14022) )
))
(declare-fun lt!217572 () Unit!14021)

(declare-fun lt!217573 () Unit!14021)

(assert (=> d!76269 (= lt!217572 lt!217573)))

(declare-datatypes ((Option!396 0))(
  ( (Some!395 (v!9096 B!1062)) (None!394) )
))
(declare-fun getValueByKey!390 (List!9089 (_ BitVec 64)) Option!396)

(assert (=> d!76269 (= (getValueByKey!390 lt!217575 (_1!4510 lt!217543)) (Some!395 (_2!4510 lt!217543)))))

(declare-fun lemmaContainsTupThenGetReturnValue!214 (List!9089 (_ BitVec 64) B!1062) Unit!14021)

(assert (=> d!76269 (= lt!217573 (lemmaContainsTupThenGetReturnValue!214 lt!217575 (_1!4510 lt!217543) (_2!4510 lt!217543)))))

(declare-fun insertStrictlySorted!216 (List!9089 (_ BitVec 64) B!1062) List!9089)

(assert (=> d!76269 (= lt!217575 (insertStrictlySorted!216 (toList!3979 lm!215) (_1!4510 lt!217543) (_2!4510 lt!217543)))))

(assert (=> d!76269 (= (+!1741 lm!215 lt!217543) lt!217574)))

(declare-fun b!477593 () Bool)

(declare-fun res!285121 () Bool)

(assert (=> b!477593 (=> (not res!285121) (not e!280681))))

(assert (=> b!477593 (= res!285121 (= (getValueByKey!390 (toList!3979 lt!217574) (_1!4510 lt!217543)) (Some!395 (_2!4510 lt!217543))))))

(declare-fun b!477594 () Bool)

(declare-fun contains!2582 (List!9089 tuple2!9000) Bool)

(assert (=> b!477594 (= e!280681 (contains!2582 (toList!3979 lt!217574) lt!217543))))

(assert (= (and d!76269 res!285122) b!477593))

(assert (= (and b!477593 res!285121) b!477594))

(declare-fun m!460077 () Bool)

(assert (=> d!76269 m!460077))

(declare-fun m!460079 () Bool)

(assert (=> d!76269 m!460079))

(declare-fun m!460081 () Bool)

(assert (=> d!76269 m!460081))

(declare-fun m!460083 () Bool)

(assert (=> d!76269 m!460083))

(declare-fun m!460085 () Bool)

(assert (=> b!477593 m!460085))

(declare-fun m!460087 () Bool)

(assert (=> b!477594 m!460087))

(assert (=> b!477548 d!76269))

(declare-fun b!477599 () Bool)

(declare-fun e!280684 () Bool)

(declare-fun tp!42448 () Bool)

(assert (=> b!477599 (= e!280684 (and tp_is_empty!13535 tp!42448))))

(assert (=> b!477549 (= tp!42441 e!280684)))

(assert (= (and b!477549 (is-Cons!9085 (toList!3979 lm!215))) b!477599))

(declare-fun b_lambda!10765 () Bool)

(assert (= b_lambda!10751 (or (and start!43008 b_free!12113) b_lambda!10765)))

(declare-fun b_lambda!10767 () Bool)

(assert (= b_lambda!10757 (or (and start!43008 b_free!12113) b_lambda!10767)))

(push 1)

(assert (not b_lambda!10767))

(assert (not b!477599))

(assert (not d!76253))

(assert (not b_lambda!10765))

(assert tp_is_empty!13535)

(assert (not b!477593))

(assert (not d!76269))

(assert (not b!477561))

(assert (not b_lambda!10745))

(assert (not d!76261))

(assert (not b!477571))

(assert b_and!20857)

(assert (not b_next!12113))

(assert (not b!477594))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20857)

(assert (not b_next!12113))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!76293 () Bool)

(declare-fun lt!217605 () Bool)

(declare-fun content!209 (List!9089) (Set tuple2!9000))

(assert (=> d!76293 (= lt!217605 (member lt!217543 (content!209 (toList!3979 lt!217574))))))

(declare-fun e!280729 () Bool)

(assert (=> d!76293 (= lt!217605 e!280729)))

(declare-fun res!285149 () Bool)

(assert (=> d!76293 (=> (not res!285149) (not e!280729))))

(assert (=> d!76293 (= res!285149 (is-Cons!9085 (toList!3979 lt!217574)))))

(assert (=> d!76293 (= (contains!2582 (toList!3979 lt!217574) lt!217543) lt!217605)))

(declare-fun b!477668 () Bool)

(declare-fun e!280728 () Bool)

(assert (=> b!477668 (= e!280729 e!280728)))

(declare-fun res!285148 () Bool)

(assert (=> b!477668 (=> res!285148 e!280728)))

(assert (=> b!477668 (= res!285148 (= (h!9941 (toList!3979 lt!217574)) lt!217543))))

(declare-fun b!477669 () Bool)

(assert (=> b!477669 (= e!280728 (contains!2582 (t!15264 (toList!3979 lt!217574)) lt!217543))))

(assert (= (and d!76293 res!285149) b!477668))

(assert (= (and b!477668 (not res!285148)) b!477669))

(declare-fun m!460127 () Bool)

(assert (=> d!76293 m!460127))

(declare-fun m!460129 () Bool)

(assert (=> d!76293 m!460129))

(declare-fun m!460131 () Bool)

(assert (=> b!477669 m!460131))

(assert (=> b!477594 d!76293))

(declare-fun d!76297 () Bool)

(declare-fun res!285155 () Bool)

(declare-fun e!280738 () Bool)

(assert (=> d!76297 (=> res!285155 e!280738)))

(assert (=> d!76297 (= res!285155 (or (is-Nil!9086 (toList!3979 lm!215)) (is-Nil!9086 (t!15264 (toList!3979 lm!215)))))))

(assert (=> d!76297 (= (isStrictlySorted!388 (toList!3979 lm!215)) e!280738)))

(declare-fun b!477681 () Bool)

(declare-fun e!280739 () Bool)

(assert (=> b!477681 (= e!280738 e!280739)))

(declare-fun res!285156 () Bool)

(assert (=> b!477681 (=> (not res!285156) (not e!280739))))

(assert (=> b!477681 (= res!285156 (bvslt (_1!4510 (h!9941 (toList!3979 lm!215))) (_1!4510 (h!9941 (t!15264 (toList!3979 lm!215))))))))

(declare-fun b!477682 () Bool)

(assert (=> b!477682 (= e!280739 (isStrictlySorted!388 (t!15264 (toList!3979 lm!215))))))

(assert (= (and d!76297 (not res!285155)) b!477681))

(assert (= (and b!477681 res!285156) b!477682))

(declare-fun m!460141 () Bool)

(assert (=> b!477682 m!460141))

(assert (=> d!76253 d!76297))

(declare-fun d!76303 () Bool)

(assert (=> d!76303 (= (isEmpty!619 (toList!3979 lm!215)) (is-Nil!9086 (toList!3979 lm!215)))))

(assert (=> d!76261 d!76303))

(declare-fun b!477712 () Bool)

(declare-fun e!280754 () Option!396)

(assert (=> b!477712 (= e!280754 None!394)))

(declare-fun b!477709 () Bool)

(declare-fun e!280753 () Option!396)

(assert (=> b!477709 (= e!280753 (Some!395 (_2!4510 (h!9941 (toList!3979 lt!217574)))))))

(declare-fun b!477710 () Bool)

(assert (=> b!477710 (= e!280753 e!280754)))

(declare-fun c!57515 () Bool)

(assert (=> b!477710 (= c!57515 (and (is-Cons!9085 (toList!3979 lt!217574)) (not (= (_1!4510 (h!9941 (toList!3979 lt!217574))) (_1!4510 lt!217543)))))))

(declare-fun b!477711 () Bool)

(assert (=> b!477711 (= e!280754 (getValueByKey!390 (t!15264 (toList!3979 lt!217574)) (_1!4510 lt!217543)))))

(declare-fun d!76305 () Bool)

(declare-fun c!57514 () Bool)

(assert (=> d!76305 (= c!57514 (and (is-Cons!9085 (toList!3979 lt!217574)) (= (_1!4510 (h!9941 (toList!3979 lt!217574))) (_1!4510 lt!217543))))))

(assert (=> d!76305 (= (getValueByKey!390 (toList!3979 lt!217574) (_1!4510 lt!217543)) e!280753)))

(assert (= (and d!76305 c!57514) b!477709))

(assert (= (and d!76305 (not c!57514)) b!477710))

(assert (= (and b!477710 c!57515) b!477711))

(assert (= (and b!477710 (not c!57515)) b!477712))

(declare-fun m!460151 () Bool)

(assert (=> b!477711 m!460151))

(assert (=> b!477593 d!76305))

(declare-fun d!76309 () Bool)

(declare-fun e!280776 () Bool)

(assert (=> d!76309 e!280776))

(declare-fun res!285173 () Bool)

(assert (=> d!76309 (=> res!285173 e!280776)))

(declare-fun lt!217626 () Bool)

(assert (=> d!76309 (= res!285173 (not lt!217626))))

(declare-fun lt!217629 () Bool)

(assert (=> d!76309 (= lt!217626 lt!217629)))

(declare-fun lt!217628 () Unit!14021)

(declare-fun e!280777 () Unit!14021)

(assert (=> d!76309 (= lt!217628 e!280777)))

(declare-fun c!57530 () Bool)

(assert (=> d!76309 (= c!57530 lt!217629)))

(declare-fun containsKey!352 (List!9089 (_ BitVec 64)) Bool)

(assert (=> d!76309 (= lt!217629 (containsKey!352 (toList!3979 lt!217574) (_1!4510 lt!217543)))))

(assert (=> d!76309 (= (contains!2581 lt!217574 (_1!4510 lt!217543)) lt!217626)))

(declare-fun b!477751 () Bool)

(declare-fun lt!217627 () Unit!14021)

(assert (=> b!477751 (= e!280777 lt!217627)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!301 (List!9089 (_ BitVec 64)) Unit!14021)

(assert (=> b!477751 (= lt!217627 (lemmaContainsKeyImpliesGetValueByKeyDefined!301 (toList!3979 lt!217574) (_1!4510 lt!217543)))))

(declare-fun isDefined!302 (Option!396) Bool)

(assert (=> b!477751 (isDefined!302 (getValueByKey!390 (toList!3979 lt!217574) (_1!4510 lt!217543)))))

(declare-fun b!477752 () Bool)

(declare-fun Unit!14025 () Unit!14021)

(assert (=> b!477752 (= e!280777 Unit!14025)))

(declare-fun b!477753 () Bool)

(assert (=> b!477753 (= e!280776 (isDefined!302 (getValueByKey!390 (toList!3979 lt!217574) (_1!4510 lt!217543))))))

(assert (= (and d!76309 c!57530) b!477751))

(assert (= (and d!76309 (not c!57530)) b!477752))

(assert (= (and d!76309 (not res!285173)) b!477753))

(declare-fun m!460163 () Bool)

(assert (=> d!76309 m!460163))

(declare-fun m!460165 () Bool)

(assert (=> b!477751 m!460165))

(assert (=> b!477751 m!460085))

(assert (=> b!477751 m!460085))

(declare-fun m!460167 () Bool)

(assert (=> b!477751 m!460167))

(assert (=> b!477753 m!460085))

(assert (=> b!477753 m!460085))

(assert (=> b!477753 m!460167))

(assert (=> d!76269 d!76309))

(declare-fun b!477763 () Bool)

(declare-fun e!280783 () Option!396)

(assert (=> b!477763 (= e!280783 None!394)))

(declare-fun b!477760 () Bool)

(declare-fun e!280782 () Option!396)

(assert (=> b!477760 (= e!280782 (Some!395 (_2!4510 (h!9941 lt!217575))))))

(declare-fun b!477761 () Bool)

(assert (=> b!477761 (= e!280782 e!280783)))

(declare-fun c!57534 () Bool)

(assert (=> b!477761 (= c!57534 (and (is-Cons!9085 lt!217575) (not (= (_1!4510 (h!9941 lt!217575)) (_1!4510 lt!217543)))))))

(declare-fun b!477762 () Bool)

(assert (=> b!477762 (= e!280783 (getValueByKey!390 (t!15264 lt!217575) (_1!4510 lt!217543)))))

(declare-fun d!76313 () Bool)

(declare-fun c!57533 () Bool)

(assert (=> d!76313 (= c!57533 (and (is-Cons!9085 lt!217575) (= (_1!4510 (h!9941 lt!217575)) (_1!4510 lt!217543))))))

(assert (=> d!76313 (= (getValueByKey!390 lt!217575 (_1!4510 lt!217543)) e!280782)))

(assert (= (and d!76313 c!57533) b!477760))

(assert (= (and d!76313 (not c!57533)) b!477761))

(assert (= (and b!477761 c!57534) b!477762))

(assert (= (and b!477761 (not c!57534)) b!477763))

(declare-fun m!460169 () Bool)

(assert (=> b!477762 m!460169))

(assert (=> d!76269 d!76313))

(declare-fun d!76315 () Bool)

(assert (=> d!76315 (= (getValueByKey!390 lt!217575 (_1!4510 lt!217543)) (Some!395 (_2!4510 lt!217543)))))

(declare-fun lt!217635 () Unit!14021)

(declare-fun choose!1379 (List!9089 (_ BitVec 64) B!1062) Unit!14021)

(assert (=> d!76315 (= lt!217635 (choose!1379 lt!217575 (_1!4510 lt!217543) (_2!4510 lt!217543)))))

(declare-fun e!280801 () Bool)

(assert (=> d!76315 e!280801))

(declare-fun res!285194 () Bool)

(assert (=> d!76315 (=> (not res!285194) (not e!280801))))

(assert (=> d!76315 (= res!285194 (isStrictlySorted!388 lt!217575))))

(assert (=> d!76315 (= (lemmaContainsTupThenGetReturnValue!214 lt!217575 (_1!4510 lt!217543) (_2!4510 lt!217543)) lt!217635)))

(declare-fun b!477790 () Bool)

(declare-fun res!285195 () Bool)

(assert (=> b!477790 (=> (not res!285195) (not e!280801))))

(assert (=> b!477790 (= res!285195 (containsKey!352 lt!217575 (_1!4510 lt!217543)))))

(declare-fun b!477791 () Bool)

(assert (=> b!477791 (= e!280801 (contains!2582 lt!217575 (tuple2!9001 (_1!4510 lt!217543) (_2!4510 lt!217543))))))

(assert (= (and d!76315 res!285194) b!477790))

(assert (= (and b!477790 res!285195) b!477791))

(assert (=> d!76315 m!460079))

(declare-fun m!460187 () Bool)

(assert (=> d!76315 m!460187))

(declare-fun m!460189 () Bool)

(assert (=> d!76315 m!460189))

(declare-fun m!460191 () Bool)

(assert (=> b!477790 m!460191))

(declare-fun m!460193 () Bool)

(assert (=> b!477791 m!460193))

(assert (=> d!76269 d!76315))

(declare-fun b!477826 () Bool)

(declare-fun e!280828 () List!9089)

(assert (=> b!477826 (= e!280828 (insertStrictlySorted!216 (t!15264 (toList!3979 lm!215)) (_1!4510 lt!217543) (_2!4510 lt!217543)))))

(declare-fun b!477827 () Bool)

(declare-fun e!280827 () List!9089)

(declare-fun call!30816 () List!9089)

(assert (=> b!477827 (= e!280827 call!30816)))

(declare-fun b!477828 () Bool)

(declare-fun e!280826 () List!9089)

(declare-fun call!30817 () List!9089)

(assert (=> b!477828 (= e!280826 call!30817)))

(declare-fun b!477829 () Bool)

(declare-fun e!280829 () Bool)

(declare-fun lt!217642 () List!9089)

(assert (=> b!477829 (= e!280829 (contains!2582 lt!217642 (tuple2!9001 (_1!4510 lt!217543) (_2!4510 lt!217543))))))

(declare-fun bm!30812 () Bool)

(declare-fun call!30815 () List!9089)

(assert (=> bm!30812 (= call!30817 call!30815)))

(declare-fun b!477830 () Bool)

(declare-fun c!57550 () Bool)

(assert (=> b!477830 (= c!57550 (and (is-Cons!9085 (toList!3979 lm!215)) (bvsgt (_1!4510 (h!9941 (toList!3979 lm!215))) (_1!4510 lt!217543))))))

(declare-fun e!280830 () List!9089)

(assert (=> b!477830 (= e!280830 e!280826)))

(declare-fun b!477831 () Bool)

(declare-fun res!285212 () Bool)

(assert (=> b!477831 (=> (not res!285212) (not e!280829))))

(assert (=> b!477831 (= res!285212 (containsKey!352 lt!217642 (_1!4510 lt!217543)))))

(declare-fun b!477832 () Bool)

(assert (=> b!477832 (= e!280826 call!30817)))

(declare-fun b!477833 () Bool)

(declare-fun c!57547 () Bool)

(assert (=> b!477833 (= e!280828 (ite c!57547 (t!15264 (toList!3979 lm!215)) (ite c!57550 (Cons!9085 (h!9941 (toList!3979 lm!215)) (t!15264 (toList!3979 lm!215))) Nil!9086)))))

(declare-fun d!76325 () Bool)

(assert (=> d!76325 e!280829))

(declare-fun res!285213 () Bool)

(assert (=> d!76325 (=> (not res!285213) (not e!280829))))

(assert (=> d!76325 (= res!285213 (isStrictlySorted!388 lt!217642))))

(assert (=> d!76325 (= lt!217642 e!280827)))

(declare-fun c!57549 () Bool)

(assert (=> d!76325 (= c!57549 (and (is-Cons!9085 (toList!3979 lm!215)) (bvslt (_1!4510 (h!9941 (toList!3979 lm!215))) (_1!4510 lt!217543))))))

(assert (=> d!76325 (isStrictlySorted!388 (toList!3979 lm!215))))

(assert (=> d!76325 (= (insertStrictlySorted!216 (toList!3979 lm!215) (_1!4510 lt!217543) (_2!4510 lt!217543)) lt!217642)))

(declare-fun bm!30813 () Bool)

(declare-fun $colon$colon!114 (List!9089 tuple2!9000) List!9089)

(assert (=> bm!30813 (= call!30816 ($colon$colon!114 e!280828 (ite c!57549 (h!9941 (toList!3979 lm!215)) (tuple2!9001 (_1!4510 lt!217543) (_2!4510 lt!217543)))))))

(declare-fun c!57548 () Bool)

(assert (=> bm!30813 (= c!57548 c!57549)))

(declare-fun b!477834 () Bool)

(assert (=> b!477834 (= e!280830 call!30815)))

(declare-fun bm!30814 () Bool)

(assert (=> bm!30814 (= call!30815 call!30816)))

(declare-fun b!477835 () Bool)

(assert (=> b!477835 (= e!280827 e!280830)))

(assert (=> b!477835 (= c!57547 (and (is-Cons!9085 (toList!3979 lm!215)) (= (_1!4510 (h!9941 (toList!3979 lm!215))) (_1!4510 lt!217543))))))

(assert (= (and d!76325 c!57549) b!477827))

(assert (= (and d!76325 (not c!57549)) b!477835))

(assert (= (and b!477835 c!57547) b!477834))

(assert (= (and b!477835 (not c!57547)) b!477830))

(assert (= (and b!477830 c!57550) b!477828))

(assert (= (and b!477830 (not c!57550)) b!477832))

(assert (= (or b!477828 b!477832) bm!30812))

(assert (= (or b!477834 bm!30812) bm!30814))

(assert (= (or b!477827 bm!30814) bm!30813))

(assert (= (and bm!30813 c!57548) b!477826))

(assert (= (and bm!30813 (not c!57548)) b!477833))

(assert (= (and d!76325 res!285213) b!477831))

(assert (= (and b!477831 res!285212) b!477829))

(declare-fun m!460215 () Bool)

(assert (=> d!76325 m!460215))

(assert (=> d!76325 m!460045))

(declare-fun m!460217 () Bool)

(assert (=> bm!30813 m!460217))

(declare-fun m!460219 () Bool)

(assert (=> b!477831 m!460219))

(declare-fun m!460221 () Bool)

(assert (=> b!477826 m!460221))

(declare-fun m!460223 () Bool)

(assert (=> b!477829 m!460223))

(assert (=> d!76269 d!76325))

(declare-fun d!76331 () Bool)

(declare-fun res!285214 () Bool)

(declare-fun e!280831 () Bool)

(assert (=> d!76331 (=> res!285214 e!280831)))

(assert (=> d!76331 (= res!285214 (is-Nil!9086 (t!15264 (toList!3979 (+!1741 lm!215 lt!217543)))))))

(assert (=> d!76331 (= (forall!202 (t!15264 (toList!3979 (+!1741 lm!215 lt!217543))) p!166) e!280831)))

(declare-fun b!477836 () Bool)

(declare-fun e!280832 () Bool)

(assert (=> b!477836 (= e!280831 e!280832)))

(declare-fun res!285215 () Bool)

(assert (=> b!477836 (=> (not res!285215) (not e!280832))))

(assert (=> b!477836 (= res!285215 (dynLambda!948 p!166 (h!9941 (t!15264 (toList!3979 (+!1741 lm!215 lt!217543))))))))

(declare-fun b!477837 () Bool)

(assert (=> b!477837 (= e!280832 (forall!202 (t!15264 (t!15264 (toList!3979 (+!1741 lm!215 lt!217543)))) p!166))))

(assert (= (and d!76331 (not res!285214)) b!477836))

(assert (= (and b!477836 res!285215) b!477837))

(declare-fun b_lambda!10789 () Bool)

(assert (=> (not b_lambda!10789) (not b!477836)))

(declare-fun t!15286 () Bool)

(declare-fun tb!4151 () Bool)

(assert (=> (and start!43008 (= p!166 p!166) t!15286) tb!4151))

(declare-fun result!7725 () Bool)

(assert (=> tb!4151 (= result!7725 true)))

(assert (=> b!477836 t!15286))

(declare-fun b_and!20869 () Bool)

(assert (= b_and!20857 (and (=> t!15286 result!7725) b_and!20869)))

(declare-fun m!460225 () Bool)

(assert (=> b!477836 m!460225))

(declare-fun m!460227 () Bool)

(assert (=> b!477837 m!460227))

(assert (=> b!477571 d!76331))

(declare-fun d!76333 () Bool)

(declare-fun res!285216 () Bool)

(declare-fun e!280833 () Bool)

(assert (=> d!76333 (=> res!285216 e!280833)))

(assert (=> d!76333 (= res!285216 (is-Nil!9086 (t!15264 (toList!3979 lm!215))))))

(assert (=> d!76333 (= (forall!202 (t!15264 (toList!3979 lm!215)) p!166) e!280833)))

(declare-fun b!477838 () Bool)

(declare-fun e!280834 () Bool)

(assert (=> b!477838 (= e!280833 e!280834)))

(declare-fun res!285217 () Bool)

(assert (=> b!477838 (=> (not res!285217) (not e!280834))))

(assert (=> b!477838 (= res!285217 (dynLambda!948 p!166 (h!9941 (t!15264 (toList!3979 lm!215)))))))

(declare-fun b!477839 () Bool)

(assert (=> b!477839 (= e!280834 (forall!202 (t!15264 (t!15264 (toList!3979 lm!215))) p!166))))

(assert (= (and d!76333 (not res!285216)) b!477838))

(assert (= (and b!477838 res!285217) b!477839))

(declare-fun b_lambda!10791 () Bool)

(assert (=> (not b_lambda!10791) (not b!477838)))

(declare-fun t!15288 () Bool)

(declare-fun tb!4153 () Bool)

(assert (=> (and start!43008 (= p!166 p!166) t!15288) tb!4153))

(declare-fun result!7727 () Bool)

(assert (=> tb!4153 (= result!7727 true)))

(assert (=> b!477838 t!15288))

(declare-fun b_and!20871 () Bool)

(assert (= b_and!20869 (and (=> t!15288 result!7727) b_and!20871)))

(declare-fun m!460229 () Bool)

(assert (=> b!477838 m!460229))

(declare-fun m!460231 () Bool)

(assert (=> b!477839 m!460231))

(assert (=> b!477561 d!76333))

(declare-fun b!477840 () Bool)

(declare-fun e!280835 () Bool)

(declare-fun tp!42454 () Bool)

(assert (=> b!477840 (= e!280835 (and tp_is_empty!13535 tp!42454))))

(assert (=> b!477599 (= tp!42448 e!280835)))

(assert (= (and b!477599 (is-Cons!9085 (t!15264 (toList!3979 lm!215)))) b!477840))

(declare-fun b_lambda!10793 () Bool)

(assert (= b_lambda!10789 (or (and start!43008 b_free!12113) b_lambda!10793)))

(declare-fun b_lambda!10795 () Bool)

(assert (= b_lambda!10791 (or (and start!43008 b_free!12113) b_lambda!10795)))

(push 1)

(assert (not b!477791))

(assert (not b!477840))

(assert (not b!477682))

(assert (not b!477753))

(assert (not b_lambda!10765))

(assert (not b!477831))

(assert tp_is_empty!13535)

(assert (not d!76325))

(assert (not b_lambda!10745))

(assert (not b_lambda!10793))

(assert (not b_lambda!10795))

(assert (not b_next!12113))

(assert (not b!477751))

(assert (not b!477790))

(assert (not b!477839))

(assert (not b_lambda!10767))

(assert (not b!477762))

(assert (not d!76309))

(assert (not d!76315))

(assert (not b!477826))

(assert (not b!477837))

(assert b_and!20871)

(assert (not b!477669))

(assert (not bm!30813))

(assert (not d!76293))

(assert (not b!477711))

(assert (not b!477829))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20871)

(assert (not b_next!12113))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!76411 () Bool)

(declare-fun res!285284 () Bool)

(declare-fun e!280924 () Bool)

(assert (=> d!76411 (=> res!285284 e!280924)))

(assert (=> d!76411 (= res!285284 (and (is-Cons!9085 lt!217575) (= (_1!4510 (h!9941 lt!217575)) (_1!4510 lt!217543))))))

(assert (=> d!76411 (= (containsKey!352 lt!217575 (_1!4510 lt!217543)) e!280924)))

(declare-fun b!477953 () Bool)

(declare-fun e!280925 () Bool)

(assert (=> b!477953 (= e!280924 e!280925)))

(declare-fun res!285285 () Bool)

(assert (=> b!477953 (=> (not res!285285) (not e!280925))))

(assert (=> b!477953 (= res!285285 (and (or (not (is-Cons!9085 lt!217575)) (bvsle (_1!4510 (h!9941 lt!217575)) (_1!4510 lt!217543))) (is-Cons!9085 lt!217575) (bvslt (_1!4510 (h!9941 lt!217575)) (_1!4510 lt!217543))))))

(declare-fun b!477954 () Bool)

(assert (=> b!477954 (= e!280925 (containsKey!352 (t!15264 lt!217575) (_1!4510 lt!217543)))))

(assert (= (and d!76411 (not res!285284)) b!477953))

(assert (= (and b!477953 res!285285) b!477954))

(declare-fun m!460353 () Bool)

(assert (=> b!477954 m!460353))

(assert (=> b!477790 d!76411))

(declare-fun b!477958 () Bool)

(declare-fun e!280927 () Option!396)

(assert (=> b!477958 (= e!280927 None!394)))

(declare-fun b!477955 () Bool)

(declare-fun e!280926 () Option!396)

(assert (=> b!477955 (= e!280926 (Some!395 (_2!4510 (h!9941 (t!15264 (toList!3979 lt!217574))))))))

(declare-fun b!477956 () Bool)

(assert (=> b!477956 (= e!280926 e!280927)))

(declare-fun c!57574 () Bool)

(assert (=> b!477956 (= c!57574 (and (is-Cons!9085 (t!15264 (toList!3979 lt!217574))) (not (= (_1!4510 (h!9941 (t!15264 (toList!3979 lt!217574)))) (_1!4510 lt!217543)))))))

(declare-fun b!477957 () Bool)

(assert (=> b!477957 (= e!280927 (getValueByKey!390 (t!15264 (t!15264 (toList!3979 lt!217574))) (_1!4510 lt!217543)))))

(declare-fun d!76413 () Bool)

(declare-fun c!57573 () Bool)

(assert (=> d!76413 (= c!57573 (and (is-Cons!9085 (t!15264 (toList!3979 lt!217574))) (= (_1!4510 (h!9941 (t!15264 (toList!3979 lt!217574)))) (_1!4510 lt!217543))))))

