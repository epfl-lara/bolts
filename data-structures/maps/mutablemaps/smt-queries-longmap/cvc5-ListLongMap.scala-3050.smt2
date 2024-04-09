; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43004 () Bool)

(assert start!43004)

(declare-fun b_free!12109 () Bool)

(declare-fun b_next!12109 () Bool)

(assert (=> start!43004 (= b_free!12109 (not b_next!12109))))

(declare-fun tp!42429 () Bool)

(declare-fun b_and!20837 () Bool)

(assert (=> start!43004 (= tp!42429 b_and!20837)))

(declare-fun b!477523 () Bool)

(declare-fun res!285063 () Bool)

(declare-fun e!280627 () Bool)

(assert (=> b!477523 (=> (not res!285063) (not e!280627))))

(declare-datatypes ((B!1058 0))(
  ( (B!1059 (val!6813 Int)) )
))
(declare-datatypes ((tuple2!8996 0))(
  ( (tuple2!8997 (_1!4508 (_ BitVec 64)) (_2!4508 B!1058)) )
))
(declare-datatypes ((List!9087 0))(
  ( (Nil!9084) (Cons!9083 (h!9939 tuple2!8996) (t!15258 List!9087)) )
))
(declare-datatypes ((ListLongMap!7923 0))(
  ( (ListLongMap!7924 (toList!3977 List!9087)) )
))
(declare-fun lm!215 () ListLongMap!7923)

(declare-fun isEmpty!614 (ListLongMap!7923) Bool)

(assert (=> b!477523 (= res!285063 (isEmpty!614 lm!215))))

(declare-fun lt!217537 () tuple2!8996)

(declare-fun b!477524 () Bool)

(declare-fun p!166 () Int)

(declare-fun forall!200 (List!9087 Int) Bool)

(declare-fun +!1739 (ListLongMap!7923 tuple2!8996) ListLongMap!7923)

(assert (=> b!477524 (= e!280627 (not (forall!200 (toList!3977 (+!1739 lm!215 lt!217537)) p!166)))))

(declare-fun b!477525 () Bool)

(declare-fun e!280628 () Bool)

(declare-fun tp!42430 () Bool)

(assert (=> b!477525 (= e!280628 tp!42430)))

(declare-fun b!477522 () Bool)

(declare-fun e!280626 () Bool)

(assert (=> b!477522 (= e!280626 e!280627)))

(declare-fun res!285062 () Bool)

(assert (=> b!477522 (=> (not res!285062) (not e!280627))))

(declare-fun dynLambda!946 (Int tuple2!8996) Bool)

(assert (=> b!477522 (= res!285062 (dynLambda!946 p!166 lt!217537))))

(declare-fun a!501 () (_ BitVec 64))

(declare-fun b!85 () B!1058)

(assert (=> b!477522 (= lt!217537 (tuple2!8997 a!501 b!85))))

(declare-fun res!285064 () Bool)

(assert (=> start!43004 (=> (not res!285064) (not e!280626))))

(assert (=> start!43004 (= res!285064 (forall!200 (toList!3977 lm!215) p!166))))

(assert (=> start!43004 e!280626))

(declare-fun inv!15503 (ListLongMap!7923) Bool)

(assert (=> start!43004 (and (inv!15503 lm!215) e!280628)))

(assert (=> start!43004 tp!42429))

(declare-fun tp_is_empty!13531 () Bool)

(assert (=> start!43004 tp_is_empty!13531))

(assert (=> start!43004 true))

(assert (= (and start!43004 res!285064) b!477522))

(assert (= (and b!477522 res!285062) b!477523))

(assert (= (and b!477523 res!285063) b!477524))

(assert (= start!43004 b!477525))

(declare-fun b_lambda!10737 () Bool)

(assert (=> (not b_lambda!10737) (not b!477522)))

(declare-fun t!15257 () Bool)

(declare-fun tb!4125 () Bool)

(assert (=> (and start!43004 (= p!166 p!166) t!15257) tb!4125))

(declare-fun result!7693 () Bool)

(assert (=> tb!4125 (= result!7693 true)))

(assert (=> b!477522 t!15257))

(declare-fun b_and!20839 () Bool)

(assert (= b_and!20837 (and (=> t!15257 result!7693) b_and!20839)))

(declare-fun m!459993 () Bool)

(assert (=> b!477523 m!459993))

(declare-fun m!459995 () Bool)

(assert (=> b!477524 m!459995))

(declare-fun m!459997 () Bool)

(assert (=> b!477524 m!459997))

(declare-fun m!459999 () Bool)

(assert (=> b!477522 m!459999))

(declare-fun m!460001 () Bool)

(assert (=> start!43004 m!460001))

(declare-fun m!460003 () Bool)

(assert (=> start!43004 m!460003))

(push 1)

(assert (not b_lambda!10737))

(assert (not b!477525))

(assert (not b_next!12109))

(assert (not b!477523))

(assert (not b!477524))

(assert tp_is_empty!13531)

(assert (not start!43004))

(assert b_and!20839)

(check-sat)

(pop 1)

(push 1)

(assert b_and!20839)

(assert (not b_next!12109))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!10743 () Bool)

(assert (= b_lambda!10737 (or (and start!43004 b_free!12109) b_lambda!10743)))

(push 1)

(assert (not b_lambda!10743))

(assert (not b!477525))

(assert (not b_next!12109))

(assert (not b!477523))

(assert (not b!477524))

(assert tp_is_empty!13531)

(assert (not start!43004))

(assert b_and!20839)

(check-sat)

(pop 1)

(push 1)

(assert b_and!20839)

(assert (not b_next!12109))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!76245 () Bool)

(declare-fun res!285087 () Bool)

(declare-fun e!280651 () Bool)

(assert (=> d!76245 (=> res!285087 e!280651)))

(assert (=> d!76245 (= res!285087 (is-Nil!9084 (toList!3977 lm!215)))))

(assert (=> d!76245 (= (forall!200 (toList!3977 lm!215) p!166) e!280651)))

(declare-fun b!477554 () Bool)

(declare-fun e!280652 () Bool)

(assert (=> b!477554 (= e!280651 e!280652)))

(declare-fun res!285088 () Bool)

(assert (=> b!477554 (=> (not res!285088) (not e!280652))))

(assert (=> b!477554 (= res!285088 (dynLambda!946 p!166 (h!9939 (toList!3977 lm!215))))))

(declare-fun b!477555 () Bool)

(assert (=> b!477555 (= e!280652 (forall!200 (t!15258 (toList!3977 lm!215)) p!166))))

(assert (= (and d!76245 (not res!285087)) b!477554))

(assert (= (and b!477554 res!285088) b!477555))

(declare-fun b_lambda!10749 () Bool)

(assert (=> (not b_lambda!10749) (not b!477554)))

(declare-fun t!15266 () Bool)

(declare-fun tb!4131 () Bool)

(assert (=> (and start!43004 (= p!166 p!166) t!15266) tb!4131))

(declare-fun result!7699 () Bool)

(assert (=> tb!4131 (= result!7699 true)))

(assert (=> b!477554 t!15266))

(declare-fun b_and!20849 () Bool)

(assert (= b_and!20839 (and (=> t!15266 result!7699) b_and!20849)))

(declare-fun m!460029 () Bool)

(assert (=> b!477554 m!460029))

(declare-fun m!460031 () Bool)

(assert (=> b!477555 m!460031))

(assert (=> start!43004 d!76245))

(declare-fun d!76249 () Bool)

(declare-fun isStrictlySorted!386 (List!9087) Bool)

(assert (=> d!76249 (= (inv!15503 lm!215) (isStrictlySorted!386 (toList!3977 lm!215)))))

(declare-fun bs!15182 () Bool)

(assert (= bs!15182 d!76249))

(declare-fun m!460037 () Bool)

(assert (=> bs!15182 m!460037))

(assert (=> start!43004 d!76249))

(declare-fun d!76255 () Bool)

(declare-fun isEmpty!617 (List!9087) Bool)

(assert (=> d!76255 (= (isEmpty!614 lm!215) (isEmpty!617 (toList!3977 lm!215)))))

(declare-fun bs!15183 () Bool)

(assert (= bs!15183 d!76255))

(declare-fun m!460039 () Bool)

(assert (=> bs!15183 m!460039))

(assert (=> b!477523 d!76255))

(declare-fun d!76257 () Bool)

(declare-fun res!285101 () Bool)

(declare-fun e!280665 () Bool)

(assert (=> d!76257 (=> res!285101 e!280665)))

(assert (=> d!76257 (= res!285101 (is-Nil!9084 (toList!3977 (+!1739 lm!215 lt!217537))))))

(assert (=> d!76257 (= (forall!200 (toList!3977 (+!1739 lm!215 lt!217537)) p!166) e!280665)))

(declare-fun b!477568 () Bool)

(declare-fun e!280666 () Bool)

(assert (=> b!477568 (= e!280665 e!280666)))

(declare-fun res!285102 () Bool)

(assert (=> b!477568 (=> (not res!285102) (not e!280666))))

(assert (=> b!477568 (= res!285102 (dynLambda!946 p!166 (h!9939 (toList!3977 (+!1739 lm!215 lt!217537)))))))

(declare-fun b!477569 () Bool)

(assert (=> b!477569 (= e!280666 (forall!200 (t!15258 (toList!3977 (+!1739 lm!215 lt!217537))) p!166))))

(assert (= (and d!76257 (not res!285101)) b!477568))

(assert (= (and b!477568 res!285102) b!477569))

(declare-fun b_lambda!10755 () Bool)

(assert (=> (not b_lambda!10755) (not b!477568)))

(declare-fun t!15272 () Bool)

(declare-fun tb!4137 () Bool)

(assert (=> (and start!43004 (= p!166 p!166) t!15272) tb!4137))

(declare-fun result!7705 () Bool)

(assert (=> tb!4137 (= result!7705 true)))

(assert (=> b!477568 t!15272))

(declare-fun b_and!20855 () Bool)

(assert (= b_and!20849 (and (=> t!15272 result!7705) b_and!20855)))

(declare-fun m!460047 () Bool)

(assert (=> b!477568 m!460047))

(declare-fun m!460049 () Bool)

(assert (=> b!477569 m!460049))

(assert (=> b!477524 d!76257))

(declare-fun d!76263 () Bool)

(declare-fun e!280675 () Bool)

(assert (=> d!76263 e!280675))

(declare-fun res!285116 () Bool)

(assert (=> d!76263 (=> (not res!285116) (not e!280675))))

(declare-fun lt!217562 () ListLongMap!7923)

(declare-fun contains!2577 (ListLongMap!7923 (_ BitVec 64)) Bool)

(assert (=> d!76263 (= res!285116 (contains!2577 lt!217562 (_1!4508 lt!217537)))))

(declare-fun lt!217561 () List!9087)

(assert (=> d!76263 (= lt!217562 (ListLongMap!7924 lt!217561))))

(declare-datatypes ((Unit!14017 0))(
  ( (Unit!14018) )
))
(declare-fun lt!217560 () Unit!14017)

(declare-fun lt!217563 () Unit!14017)

(assert (=> d!76263 (= lt!217560 lt!217563)))

(declare-datatypes ((Option!394 0))(
  ( (Some!393 (v!9094 B!1058)) (None!392) )
))
(declare-fun getValueByKey!388 (List!9087 (_ BitVec 64)) Option!394)

(assert (=> d!76263 (= (getValueByKey!388 lt!217561 (_1!4508 lt!217537)) (Some!393 (_2!4508 lt!217537)))))

(declare-fun lemmaContainsTupThenGetReturnValue!213 (List!9087 (_ BitVec 64) B!1058) Unit!14017)

(assert (=> d!76263 (= lt!217563 (lemmaContainsTupThenGetReturnValue!213 lt!217561 (_1!4508 lt!217537) (_2!4508 lt!217537)))))

(declare-fun insertStrictlySorted!215 (List!9087 (_ BitVec 64) B!1058) List!9087)

(assert (=> d!76263 (= lt!217561 (insertStrictlySorted!215 (toList!3977 lm!215) (_1!4508 lt!217537) (_2!4508 lt!217537)))))

(assert (=> d!76263 (= (+!1739 lm!215 lt!217537) lt!217562)))

(declare-fun b!477582 () Bool)

(declare-fun res!285115 () Bool)

(assert (=> b!477582 (=> (not res!285115) (not e!280675))))

(assert (=> b!477582 (= res!285115 (= (getValueByKey!388 (toList!3977 lt!217562) (_1!4508 lt!217537)) (Some!393 (_2!4508 lt!217537))))))

(declare-fun b!477583 () Bool)

(declare-fun contains!2580 (List!9087 tuple2!8996) Bool)

(assert (=> b!477583 (= e!280675 (contains!2580 (toList!3977 lt!217562) lt!217537))))

(assert (= (and d!76263 res!285116) b!477582))

(assert (= (and b!477582 res!285115) b!477583))

(declare-fun m!460065 () Bool)

(assert (=> d!76263 m!460065))

(declare-fun m!460067 () Bool)

(assert (=> d!76263 m!460067))

(declare-fun m!460069 () Bool)

(assert (=> d!76263 m!460069))

(declare-fun m!460071 () Bool)

(assert (=> d!76263 m!460071))

(declare-fun m!460073 () Bool)

(assert (=> b!477582 m!460073))

(declare-fun m!460075 () Bool)

(assert (=> b!477583 m!460075))

(assert (=> b!477524 d!76263))

(declare-fun b!477592 () Bool)

(declare-fun e!280680 () Bool)

(declare-fun tp!42445 () Bool)

(assert (=> b!477592 (= e!280680 (and tp_is_empty!13531 tp!42445))))

(assert (=> b!477525 (= tp!42430 e!280680)))

(assert (= (and b!477525 (is-Cons!9083 (toList!3977 lm!215))) b!477592))

(declare-fun b_lambda!10761 () Bool)

(assert (= b_lambda!10749 (or (and start!43004 b_free!12109) b_lambda!10761)))

(declare-fun b_lambda!10763 () Bool)

(assert (= b_lambda!10755 (or (and start!43004 b_free!12109) b_lambda!10763)))

(push 1)

(assert (not b!477555))

(assert (not b_lambda!10763))

(assert b_and!20855)

(assert (not b!477583))

(assert (not b!477569))

(assert (not b_next!12109))

(assert (not b!477592))

(assert (not b_lambda!10761))

(assert tp_is_empty!13531)

(assert (not b_lambda!10743))

(assert (not b!477582))

(assert (not d!76255))

(assert (not d!76263))

(assert (not d!76249))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20855)

(assert (not b_next!12109))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!76279 () Bool)

(assert (=> d!76279 (= (isEmpty!617 (toList!3977 lm!215)) (is-Nil!9084 (toList!3977 lm!215)))))

(assert (=> d!76255 d!76279))

(declare-fun d!76283 () Bool)

(declare-fun res!285131 () Bool)

(declare-fun e!280701 () Bool)

(assert (=> d!76283 (=> res!285131 e!280701)))

(assert (=> d!76283 (= res!285131 (or (is-Nil!9084 (toList!3977 lm!215)) (is-Nil!9084 (t!15258 (toList!3977 lm!215)))))))

(assert (=> d!76283 (= (isStrictlySorted!386 (toList!3977 lm!215)) e!280701)))

(declare-fun b!477625 () Bool)

(declare-fun e!280702 () Bool)

(assert (=> b!477625 (= e!280701 e!280702)))

(declare-fun res!285132 () Bool)

(assert (=> b!477625 (=> (not res!285132) (not e!280702))))

(assert (=> b!477625 (= res!285132 (bvslt (_1!4508 (h!9939 (toList!3977 lm!215))) (_1!4508 (h!9939 (t!15258 (toList!3977 lm!215))))))))

(declare-fun b!477626 () Bool)

(assert (=> b!477626 (= e!280702 (isStrictlySorted!386 (t!15258 (toList!3977 lm!215))))))

(assert (= (and d!76283 (not res!285131)) b!477625))

(assert (= (and b!477625 res!285132) b!477626))

(declare-fun m!460107 () Bool)

(assert (=> b!477626 m!460107))

(assert (=> d!76249 d!76283))

(declare-fun b!477642 () Bool)

(declare-fun e!280711 () Option!394)

(declare-fun e!280712 () Option!394)

(assert (=> b!477642 (= e!280711 e!280712)))

(declare-fun c!57495 () Bool)

(assert (=> b!477642 (= c!57495 (and (is-Cons!9083 (toList!3977 lt!217562)) (not (= (_1!4508 (h!9939 (toList!3977 lt!217562))) (_1!4508 lt!217537)))))))

(declare-fun d!76285 () Bool)

(declare-fun c!57494 () Bool)

(assert (=> d!76285 (= c!57494 (and (is-Cons!9083 (toList!3977 lt!217562)) (= (_1!4508 (h!9939 (toList!3977 lt!217562))) (_1!4508 lt!217537))))))

(assert (=> d!76285 (= (getValueByKey!388 (toList!3977 lt!217562) (_1!4508 lt!217537)) e!280711)))

(declare-fun b!477643 () Bool)

(assert (=> b!477643 (= e!280712 (getValueByKey!388 (t!15258 (toList!3977 lt!217562)) (_1!4508 lt!217537)))))

(declare-fun b!477641 () Bool)

(assert (=> b!477641 (= e!280711 (Some!393 (_2!4508 (h!9939 (toList!3977 lt!217562)))))))

(declare-fun b!477644 () Bool)

(assert (=> b!477644 (= e!280712 None!392)))

(assert (= (and d!76285 c!57494) b!477641))

(assert (= (and d!76285 (not c!57494)) b!477642))

(assert (= (and b!477642 c!57495) b!477643))

(assert (= (and b!477642 (not c!57495)) b!477644))

(declare-fun m!460109 () Bool)

(assert (=> b!477643 m!460109))

(assert (=> b!477582 d!76285))

(declare-fun d!76287 () Bool)

(declare-fun e!280730 () Bool)

(assert (=> d!76287 e!280730))

(declare-fun res!285150 () Bool)

(assert (=> d!76287 (=> res!285150 e!280730)))

(declare-fun lt!217606 () Bool)

(assert (=> d!76287 (= res!285150 (not lt!217606))))

(declare-fun lt!217608 () Bool)

(assert (=> d!76287 (= lt!217606 lt!217608)))

(declare-fun lt!217609 () Unit!14017)

(declare-fun e!280731 () Unit!14017)

(assert (=> d!76287 (= lt!217609 e!280731)))

(declare-fun c!57501 () Bool)

(assert (=> d!76287 (= c!57501 lt!217608)))

(declare-fun containsKey!351 (List!9087 (_ BitVec 64)) Bool)

(assert (=> d!76287 (= lt!217608 (containsKey!351 (toList!3977 lt!217562) (_1!4508 lt!217537)))))

(assert (=> d!76287 (= (contains!2577 lt!217562 (_1!4508 lt!217537)) lt!217606)))

(declare-fun b!477670 () Bool)

(declare-fun lt!217607 () Unit!14017)

(assert (=> b!477670 (= e!280731 lt!217607)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!300 (List!9087 (_ BitVec 64)) Unit!14017)

(assert (=> b!477670 (= lt!217607 (lemmaContainsKeyImpliesGetValueByKeyDefined!300 (toList!3977 lt!217562) (_1!4508 lt!217537)))))

(declare-fun isDefined!301 (Option!394) Bool)

(assert (=> b!477670 (isDefined!301 (getValueByKey!388 (toList!3977 lt!217562) (_1!4508 lt!217537)))))

(declare-fun b!477671 () Bool)

(declare-fun Unit!14024 () Unit!14017)

(assert (=> b!477671 (= e!280731 Unit!14024)))

(declare-fun b!477672 () Bool)

(assert (=> b!477672 (= e!280730 (isDefined!301 (getValueByKey!388 (toList!3977 lt!217562) (_1!4508 lt!217537))))))

(assert (= (and d!76287 c!57501) b!477670))

(assert (= (and d!76287 (not c!57501)) b!477671))

(assert (= (and d!76287 (not res!285150)) b!477672))

(declare-fun m!460133 () Bool)

(assert (=> d!76287 m!460133))

(declare-fun m!460135 () Bool)

(assert (=> b!477670 m!460135))

(assert (=> b!477670 m!460073))

(assert (=> b!477670 m!460073))

(declare-fun m!460137 () Bool)

(assert (=> b!477670 m!460137))

(assert (=> b!477672 m!460073))

(assert (=> b!477672 m!460073))

(assert (=> b!477672 m!460137))

(assert (=> d!76263 d!76287))

(declare-fun b!477674 () Bool)

(declare-fun e!280732 () Option!394)

(declare-fun e!280733 () Option!394)

(assert (=> b!477674 (= e!280732 e!280733)))

(declare-fun c!57503 () Bool)

(assert (=> b!477674 (= c!57503 (and (is-Cons!9083 lt!217561) (not (= (_1!4508 (h!9939 lt!217561)) (_1!4508 lt!217537)))))))

(declare-fun d!76299 () Bool)

(declare-fun c!57502 () Bool)

(assert (=> d!76299 (= c!57502 (and (is-Cons!9083 lt!217561) (= (_1!4508 (h!9939 lt!217561)) (_1!4508 lt!217537))))))

(assert (=> d!76299 (= (getValueByKey!388 lt!217561 (_1!4508 lt!217537)) e!280732)))

(declare-fun b!477675 () Bool)

(assert (=> b!477675 (= e!280733 (getValueByKey!388 (t!15258 lt!217561) (_1!4508 lt!217537)))))

(declare-fun b!477673 () Bool)

(assert (=> b!477673 (= e!280732 (Some!393 (_2!4508 (h!9939 lt!217561))))))

(declare-fun b!477676 () Bool)

(assert (=> b!477676 (= e!280733 None!392)))

(assert (= (and d!76299 c!57502) b!477673))

(assert (= (and d!76299 (not c!57502)) b!477674))

(assert (= (and b!477674 c!57503) b!477675))

(assert (= (and b!477674 (not c!57503)) b!477676))

(declare-fun m!460139 () Bool)

(assert (=> b!477675 m!460139))

(assert (=> d!76263 d!76299))

(declare-fun d!76301 () Bool)

(assert (=> d!76301 (= (getValueByKey!388 lt!217561 (_1!4508 lt!217537)) (Some!393 (_2!4508 lt!217537)))))

(declare-fun lt!217612 () Unit!14017)

(declare-fun choose!1378 (List!9087 (_ BitVec 64) B!1058) Unit!14017)

(assert (=> d!76301 (= lt!217612 (choose!1378 lt!217561 (_1!4508 lt!217537) (_2!4508 lt!217537)))))

(declare-fun e!280742 () Bool)

(assert (=> d!76301 e!280742))

(declare-fun res!285161 () Bool)

(assert (=> d!76301 (=> (not res!285161) (not e!280742))))

(assert (=> d!76301 (= res!285161 (isStrictlySorted!386 lt!217561))))

(assert (=> d!76301 (= (lemmaContainsTupThenGetReturnValue!213 lt!217561 (_1!4508 lt!217537) (_2!4508 lt!217537)) lt!217612)))

(declare-fun b!477687 () Bool)

(declare-fun res!285162 () Bool)

(assert (=> b!477687 (=> (not res!285162) (not e!280742))))

(assert (=> b!477687 (= res!285162 (containsKey!351 lt!217561 (_1!4508 lt!217537)))))

(declare-fun b!477688 () Bool)

(assert (=> b!477688 (= e!280742 (contains!2580 lt!217561 (tuple2!8997 (_1!4508 lt!217537) (_2!4508 lt!217537))))))

(assert (= (and d!76301 res!285161) b!477687))

(assert (= (and b!477687 res!285162) b!477688))

(assert (=> d!76301 m!460067))

(declare-fun m!460143 () Bool)

(assert (=> d!76301 m!460143))

(declare-fun m!460145 () Bool)

(assert (=> d!76301 m!460145))

(declare-fun m!460147 () Bool)

(assert (=> b!477687 m!460147))

(declare-fun m!460149 () Bool)

(assert (=> b!477688 m!460149))

(assert (=> d!76263 d!76301))

(declare-fun b!477776 () Bool)

(declare-fun e!280793 () List!9087)

(declare-fun call!30806 () List!9087)

(assert (=> b!477776 (= e!280793 call!30806)))

(declare-fun b!477777 () Bool)

(declare-fun e!280795 () Bool)

(declare-fun lt!217632 () List!9087)

(assert (=> b!477777 (= e!280795 (contains!2580 lt!217632 (tuple2!8997 (_1!4508 lt!217537) (_2!4508 lt!217537))))))

(declare-fun b!477778 () Bool)

(declare-fun e!280794 () List!9087)

(declare-fun call!30808 () List!9087)

(assert (=> b!477778 (= e!280794 call!30808)))

(declare-fun b!477779 () Bool)

(declare-fun c!57537 () Bool)

(declare-fun c!57538 () Bool)

(declare-fun e!280796 () List!9087)

(assert (=> b!477779 (= e!280796 (ite c!57537 (t!15258 (toList!3977 lm!215)) (ite c!57538 (Cons!9083 (h!9939 (toList!3977 lm!215)) (t!15258 (toList!3977 lm!215))) Nil!9084)))))

(declare-fun b!477780 () Bool)

(assert (=> b!477780 (= e!280796 (insertStrictlySorted!215 (t!15258 (toList!3977 lm!215)) (_1!4508 lt!217537) (_2!4508 lt!217537)))))

(declare-fun b!477781 () Bool)

(declare-fun res!285188 () Bool)

(assert (=> b!477781 (=> (not res!285188) (not e!280795))))

(assert (=> b!477781 (= res!285188 (containsKey!351 lt!217632 (_1!4508 lt!217537)))))

(declare-fun d!76307 () Bool)

(assert (=> d!76307 e!280795))

(declare-fun res!285189 () Bool)

(assert (=> d!76307 (=> (not res!285189) (not e!280795))))

(assert (=> d!76307 (= res!285189 (isStrictlySorted!386 lt!217632))))

(assert (=> d!76307 (= lt!217632 e!280794)))

(declare-fun c!57536 () Bool)

(assert (=> d!76307 (= c!57536 (and (is-Cons!9083 (toList!3977 lm!215)) (bvslt (_1!4508 (h!9939 (toList!3977 lm!215))) (_1!4508 lt!217537))))))

(assert (=> d!76307 (isStrictlySorted!386 (toList!3977 lm!215))))

(assert (=> d!76307 (= (insertStrictlySorted!215 (toList!3977 lm!215) (_1!4508 lt!217537) (_2!4508 lt!217537)) lt!217632)))

(declare-fun b!477782 () Bool)

(declare-fun e!280792 () List!9087)

(assert (=> b!477782 (= e!280794 e!280792)))

(assert (=> b!477782 (= c!57537 (and (is-Cons!9083 (toList!3977 lm!215)) (= (_1!4508 (h!9939 (toList!3977 lm!215))) (_1!4508 lt!217537))))))

(declare-fun bm!30803 () Bool)

(declare-fun $colon$colon!113 (List!9087 tuple2!8996) List!9087)

(assert (=> bm!30803 (= call!30808 ($colon$colon!113 e!280796 (ite c!57536 (h!9939 (toList!3977 lm!215)) (tuple2!8997 (_1!4508 lt!217537) (_2!4508 lt!217537)))))))

(declare-fun c!57535 () Bool)

(assert (=> bm!30803 (= c!57535 c!57536)))

(declare-fun b!477783 () Bool)

(assert (=> b!477783 (= e!280793 call!30806)))

(declare-fun bm!30804 () Bool)

(declare-fun call!30807 () List!9087)

(assert (=> bm!30804 (= call!30806 call!30807)))

(declare-fun b!477784 () Bool)

(assert (=> b!477784 (= e!280792 call!30807)))

(declare-fun b!477785 () Bool)

(assert (=> b!477785 (= c!57538 (and (is-Cons!9083 (toList!3977 lm!215)) (bvsgt (_1!4508 (h!9939 (toList!3977 lm!215))) (_1!4508 lt!217537))))))

(assert (=> b!477785 (= e!280792 e!280793)))

(declare-fun bm!30805 () Bool)

(assert (=> bm!30805 (= call!30807 call!30808)))

(assert (= (and d!76307 c!57536) b!477778))

(assert (= (and d!76307 (not c!57536)) b!477782))

(assert (= (and b!477782 c!57537) b!477784))

(assert (= (and b!477782 (not c!57537)) b!477785))

(assert (= (and b!477785 c!57538) b!477783))

(assert (= (and b!477785 (not c!57538)) b!477776))

(assert (= (or b!477783 b!477776) bm!30804))

(assert (= (or b!477784 bm!30804) bm!30805))

(assert (= (or b!477778 bm!30805) bm!30803))

(assert (= (and bm!30803 c!57535) b!477780))

(assert (= (and bm!30803 (not c!57535)) b!477779))

(assert (= (and d!76307 res!285189) b!477781))

(assert (= (and b!477781 res!285188) b!477777))

(declare-fun m!460177 () Bool)

(assert (=> b!477781 m!460177))

(declare-fun m!460179 () Bool)

(assert (=> b!477777 m!460179))

(declare-fun m!460181 () Bool)

(assert (=> d!76307 m!460181))

(assert (=> d!76307 m!460037))

(declare-fun m!460183 () Bool)

(assert (=> b!477780 m!460183))

(declare-fun m!460185 () Bool)

(assert (=> bm!30803 m!460185))

(assert (=> d!76263 d!76307))

(declare-fun d!76323 () Bool)

(declare-fun res!285196 () Bool)

(declare-fun e!280802 () Bool)

(assert (=> d!76323 (=> res!285196 e!280802)))

(assert (=> d!76323 (= res!285196 (is-Nil!9084 (t!15258 (toList!3977 lm!215))))))

(assert (=> d!76323 (= (forall!200 (t!15258 (toList!3977 lm!215)) p!166) e!280802)))

(declare-fun b!477792 () Bool)

(declare-fun e!280803 () Bool)

(assert (=> b!477792 (= e!280802 e!280803)))

(declare-fun res!285197 () Bool)

(assert (=> b!477792 (=> (not res!285197) (not e!280803))))

(assert (=> b!477792 (= res!285197 (dynLambda!946 p!166 (h!9939 (t!15258 (toList!3977 lm!215)))))))

(declare-fun b!477793 () Bool)

(assert (=> b!477793 (= e!280803 (forall!200 (t!15258 (t!15258 (toList!3977 lm!215))) p!166))))

(assert (= (and d!76323 (not res!285196)) b!477792))

(assert (= (and b!477792 res!285197) b!477793))

(declare-fun b_lambda!10777 () Bool)

(assert (=> (not b_lambda!10777) (not b!477792)))

(declare-fun t!15282 () Bool)

(declare-fun tb!4147 () Bool)

(assert (=> (and start!43004 (= p!166 p!166) t!15282) tb!4147))

(declare-fun result!7721 () Bool)

(assert (=> tb!4147 (= result!7721 true)))

(assert (=> b!477792 t!15282))

(declare-fun b_and!20865 () Bool)

(assert (= b_and!20855 (and (=> t!15282 result!7721) b_and!20865)))

(declare-fun m!460195 () Bool)

(assert (=> b!477792 m!460195))

(declare-fun m!460197 () Bool)

(assert (=> b!477793 m!460197))

(assert (=> b!477555 d!76323))

(declare-fun d!76327 () Bool)

(declare-fun res!285198 () Bool)

(declare-fun e!280804 () Bool)

(assert (=> d!76327 (=> res!285198 e!280804)))

(assert (=> d!76327 (= res!285198 (is-Nil!9084 (t!15258 (toList!3977 (+!1739 lm!215 lt!217537)))))))

(assert (=> d!76327 (= (forall!200 (t!15258 (toList!3977 (+!1739 lm!215 lt!217537))) p!166) e!280804)))

(declare-fun b!477794 () Bool)

(declare-fun e!280805 () Bool)

(assert (=> b!477794 (= e!280804 e!280805)))

(declare-fun res!285199 () Bool)

(assert (=> b!477794 (=> (not res!285199) (not e!280805))))

(assert (=> b!477794 (= res!285199 (dynLambda!946 p!166 (h!9939 (t!15258 (toList!3977 (+!1739 lm!215 lt!217537))))))))

(declare-fun b!477795 () Bool)

(assert (=> b!477795 (= e!280805 (forall!200 (t!15258 (t!15258 (toList!3977 (+!1739 lm!215 lt!217537)))) p!166))))

(assert (= (and d!76327 (not res!285198)) b!477794))

(assert (= (and b!477794 res!285199) b!477795))

(declare-fun b_lambda!10779 () Bool)

(assert (=> (not b_lambda!10779) (not b!477794)))

(declare-fun t!15284 () Bool)

(declare-fun tb!4149 () Bool)

(assert (=> (and start!43004 (= p!166 p!166) t!15284) tb!4149))

(declare-fun result!7723 () Bool)

(assert (=> tb!4149 (= result!7723 true)))

(assert (=> b!477794 t!15284))

(declare-fun b_and!20867 () Bool)

(assert (= b_and!20865 (and (=> t!15284 result!7723) b_and!20867)))

(declare-fun m!460205 () Bool)

(assert (=> b!477794 m!460205))

(declare-fun m!460207 () Bool)

(assert (=> b!477795 m!460207))

(assert (=> b!477569 d!76327))

(declare-fun d!76329 () Bool)

(declare-fun lt!217639 () Bool)

(declare-fun content!211 (List!9087) (Set tuple2!8996))

(assert (=> d!76329 (= lt!217639 (set.member lt!217537 (content!211 (toList!3977 lt!217562))))))

(declare-fun e!280814 () Bool)

(assert (=> d!76329 (= lt!217639 e!280814)))

(declare-fun res!285206 () Bool)

(assert (=> d!76329 (=> (not res!285206) (not e!280814))))

(assert (=> d!76329 (= res!285206 (is-Cons!9083 (toList!3977 lt!217562)))))

(assert (=> d!76329 (= (contains!2580 (toList!3977 lt!217562) lt!217537) lt!217639)))

(declare-fun b!477803 () Bool)

(declare-fun e!280813 () Bool)

(assert (=> b!477803 (= e!280814 e!280813)))

(declare-fun res!285207 () Bool)

(assert (=> b!477803 (=> res!285207 e!280813)))

(assert (=> b!477803 (= res!285207 (= (h!9939 (toList!3977 lt!217562)) lt!217537))))

(declare-fun b!477804 () Bool)

(assert (=> b!477804 (= e!280813 (contains!2580 (t!15258 (toList!3977 lt!217562)) lt!217537))))

(assert (= (and d!76329 res!285206) b!477803))

(assert (= (and b!477803 (not res!285207)) b!477804))

(declare-fun m!460209 () Bool)

(assert (=> d!76329 m!460209))

(declare-fun m!460211 () Bool)

(assert (=> d!76329 m!460211))

(declare-fun m!460213 () Bool)

(assert (=> b!477804 m!460213))

(assert (=> b!477583 d!76329))

(declare-fun b!477805 () Bool)

(declare-fun e!280815 () Bool)

(declare-fun tp!42453 () Bool)

(assert (=> b!477805 (= e!280815 (and tp_is_empty!13531 tp!42453))))

(assert (=> b!477592 (= tp!42445 e!280815)))

(assert (= (and b!477592 (is-Cons!9083 (t!15258 (toList!3977 lm!215)))) b!477805))

(declare-fun b_lambda!10785 () Bool)

(assert (= b_lambda!10779 (or (and start!43004 b_free!12109) b_lambda!10785)))

(declare-fun b_lambda!10787 () Bool)

(assert (= b_lambda!10777 (or (and start!43004 b_free!12109) b_lambda!10787)))

(push 1)

(assert (not b!477793))

(assert (not b_lambda!10743))

(assert (not b!477626))

(assert (not b_lambda!10785))

(assert (not b!477672))

(assert (not b!477805))

(assert (not d!76307))

(assert (not b!477804))

(assert (not b!477670))

(assert tp_is_empty!13531)

(assert (not b!477777))

(assert b_and!20867)

(assert (not b!477780))

(assert (not b!477643))

(assert (not bm!30803))

(assert (not b_lambda!10763))

(assert (not b!477781))

(assert (not b!477688))

(assert (not b_next!12109))

(assert (not d!76301))

(assert (not b_lambda!10787))

(assert (not b!477687))

(assert (not b!477675))

(assert (not d!76287))

(assert (not d!76329))

(assert (not b_lambda!10761))

(assert (not b!477795))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20867)

(assert (not b_next!12109))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!76373 () Bool)

(declare-fun lt!217650 () Bool)

(assert (=> d!76373 (= lt!217650 (set.member lt!217537 (content!211 (t!15258 (toList!3977 lt!217562)))))))

(declare-fun e!280879 () Bool)

(assert (=> d!76373 (= lt!217650 e!280879)))

(declare-fun res!285249 () Bool)

(assert (=> d!76373 (=> (not res!285249) (not e!280879))))

(assert (=> d!76373 (= res!285249 (is-Cons!9083 (t!15258 (toList!3977 lt!217562))))))

(assert (=> d!76373 (= (contains!2580 (t!15258 (toList!3977 lt!217562)) lt!217537) lt!217650)))

(declare-fun b!477895 () Bool)

(declare-fun e!280878 () Bool)

(assert (=> b!477895 (= e!280879 e!280878)))

(declare-fun res!285250 () Bool)

(assert (=> b!477895 (=> res!285250 e!280878)))

(assert (=> b!477895 (= res!285250 (= (h!9939 (t!15258 (toList!3977 lt!217562))) lt!217537))))

(declare-fun b!477896 () Bool)

(assert (=> b!477896 (= e!280878 (contains!2580 (t!15258 (t!15258 (toList!3977 lt!217562))) lt!217537))))

(assert (= (and d!76373 res!285249) b!477895))

(assert (= (and b!477895 (not res!285250)) b!477896))

(declare-fun m!460293 () Bool)

(assert (=> d!76373 m!460293))

(declare-fun m!460295 () Bool)

(assert (=> d!76373 m!460295))

(declare-fun m!460297 () Bool)

(assert (=> b!477896 m!460297))

(assert (=> b!477804 d!76373))

(declare-fun d!76375 () Bool)

(assert (=> d!76375 (isDefined!301 (getValueByKey!388 (toList!3977 lt!217562) (_1!4508 lt!217537)))))

(declare-fun lt!217653 () Unit!14017)

(declare-fun choose!1381 (List!9087 (_ BitVec 64)) Unit!14017)

(assert (=> d!76375 (= lt!217653 (choose!1381 (toList!3977 lt!217562) (_1!4508 lt!217537)))))

(declare-fun e!280882 () Bool)

(assert (=> d!76375 e!280882))

(declare-fun res!285253 () Bool)

(assert (=> d!76375 (=> (not res!285253) (not e!280882))))

(assert (=> d!76375 (= res!285253 (isStrictlySorted!386 (toList!3977 lt!217562)))))

(assert (=> d!76375 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!300 (toList!3977 lt!217562) (_1!4508 lt!217537)) lt!217653)))

(declare-fun b!477899 () Bool)

(assert (=> b!477899 (= e!280882 (containsKey!351 (toList!3977 lt!217562) (_1!4508 lt!217537)))))

(assert (= (and d!76375 res!285253) b!477899))

(assert (=> d!76375 m!460073))

(assert (=> d!76375 m!460073))

(assert (=> d!76375 m!460137))

(declare-fun m!460299 () Bool)

(assert (=> d!76375 m!460299))

(declare-fun m!460301 () Bool)

(assert (=> d!76375 m!460301))

(assert (=> b!477899 m!460133))

(assert (=> b!477670 d!76375))

(declare-fun d!76377 () Bool)

(declare-fun isEmpty!621 (Option!394) Bool)

(assert (=> d!76377 (= (isDefined!301 (getValueByKey!388 (toList!3977 lt!217562) (_1!4508 lt!217537))) (not (isEmpty!621 (getValueByKey!388 (toList!3977 lt!217562) (_1!4508 lt!217537)))))))

(declare-fun bs!15190 () Bool)

(assert (= bs!15190 d!76377))

(assert (=> bs!15190 m!460073))

(declare-fun m!460303 () Bool)

(assert (=> bs!15190 m!460303))

(assert (=> b!477670 d!76377))

(assert (=> b!477670 d!76285))

(declare-fun d!76379 () Bool)

(declare-fun res!285254 () Bool)

(declare-fun e!280883 () Bool)

(assert (=> d!76379 (=> res!285254 e!280883)))

(assert (=> d!76379 (= res!285254 (or (is-Nil!9084 (t!15258 (toList!3977 lm!215))) (is-Nil!9084 (t!15258 (t!15258 (toList!3977 lm!215))))))))

(assert (=> d!76379 (= (isStrictlySorted!386 (t!15258 (toList!3977 lm!215))) e!280883)))

(declare-fun b!477900 () Bool)

(declare-fun e!280884 () Bool)

(assert (=> b!477900 (= e!280883 e!280884)))

(declare-fun res!285255 () Bool)

(assert (=> b!477900 (=> (not res!285255) (not e!280884))))

(assert (=> b!477900 (= res!285255 (bvslt (_1!4508 (h!9939 (t!15258 (toList!3977 lm!215)))) (_1!4508 (h!9939 (t!15258 (t!15258 (toList!3977 lm!215)))))))))

(declare-fun b!477901 () Bool)

(assert (=> b!477901 (= e!280884 (isStrictlySorted!386 (t!15258 (t!15258 (toList!3977 lm!215)))))))

(assert (= (and d!76379 (not res!285254)) b!477900))

(assert (= (and b!477900 res!285255) b!477901))

(declare-fun m!460305 () Bool)

(assert (=> b!477901 m!460305))

(assert (=> b!477626 d!76379))

(declare-fun d!76381 () Bool)

(assert (=> d!76381 (= ($colon$colon!113 e!280796 (ite c!57536 (h!9939 (toList!3977 lm!215)) (tuple2!8997 (_1!4508 lt!217537) (_2!4508 lt!217537)))) (Cons!9083 (ite c!57536 (h!9939 (toList!3977 lm!215)) (tuple2!8997 (_1!4508 lt!217537) (_2!4508 lt!217537))) e!280796))))

(assert (=> bm!30803 d!76381))

(assert (=> d!76301 d!76299))

(declare-fun d!76383 () Bool)

(assert (=> d!76383 (= (getValueByKey!388 lt!217561 (_1!4508 lt!217537)) (Some!393 (_2!4508 lt!217537)))))

(assert (=> d!76383 true))

(declare-fun _$22!562 () Unit!14017)

(assert (=> d!76383 (= (choose!1378 lt!217561 (_1!4508 lt!217537) (_2!4508 lt!217537)) _$22!562)))

(declare-fun bs!15191 () Bool)

(assert (= bs!15191 d!76383))

(assert (=> bs!15191 m!460067))

(assert (=> d!76301 d!76383))

(declare-fun d!76385 () Bool)

(declare-fun res!285256 () Bool)

(declare-fun e!280885 () Bool)

(assert (=> d!76385 (=> res!285256 e!280885)))

(assert (=> d!76385 (= res!285256 (or (is-Nil!9084 lt!217561) (is-Nil!9084 (t!15258 lt!217561))))))

(assert (=> d!76385 (= (isStrictlySorted!386 lt!217561) e!280885)))

(declare-fun b!477902 () Bool)

(declare-fun e!280886 () Bool)

(assert (=> b!477902 (= e!280885 e!280886)))

(declare-fun res!285257 () Bool)

(assert (=> b!477902 (=> (not res!285257) (not e!280886))))

(assert (=> b!477902 (= res!285257 (bvslt (_1!4508 (h!9939 lt!217561)) (_1!4508 (h!9939 (t!15258 lt!217561)))))))

(declare-fun b!477903 () Bool)

(assert (=> b!477903 (= e!280886 (isStrictlySorted!386 (t!15258 lt!217561)))))

(assert (= (and d!76385 (not res!285256)) b!477902))

(assert (= (and b!477902 res!285257) b!477903))

(declare-fun m!460307 () Bool)

(assert (=> b!477903 m!460307))

(assert (=> d!76301 d!76385))

(declare-fun d!76387 () Bool)

(declare-fun lt!217654 () Bool)

(assert (=> d!76387 (= lt!217654 (set.member (tuple2!8997 (_1!4508 lt!217537) (_2!4508 lt!217537)) (content!211 lt!217561)))))

(declare-fun e!280888 () Bool)

(assert (=> d!76387 (= lt!217654 e!280888)))

(declare-fun res!285258 () Bool)

(assert (=> d!76387 (=> (not res!285258) (not e!280888))))

(assert (=> d!76387 (= res!285258 (is-Cons!9083 lt!217561))))

(assert (=> d!76387 (= (contains!2580 lt!217561 (tuple2!8997 (_1!4508 lt!217537) (_2!4508 lt!217537))) lt!217654)))

(declare-fun b!477904 () Bool)

(declare-fun e!280887 () Bool)

(assert (=> b!477904 (= e!280888 e!280887)))

(declare-fun res!285259 () Bool)

(assert (=> b!477904 (=> res!285259 e!280887)))

(assert (=> b!477904 (= res!285259 (= (h!9939 lt!217561) (tuple2!8997 (_1!4508 lt!217537) (_2!4508 lt!217537))))))

(declare-fun b!477905 () Bool)

(assert (=> b!477905 (= e!280887 (contains!2580 (t!15258 lt!217561) (tuple2!8997 (_1!4508 lt!217537) (_2!4508 lt!217537))))))

(assert (= (and d!76387 res!285258) b!477904))

(assert (= (and b!477904 (not res!285259)) b!477905))

(declare-fun m!460309 () Bool)

(assert (=> d!76387 m!460309))

(declare-fun m!460311 () Bool)

(assert (=> d!76387 m!460311))

(declare-fun m!460313 () Bool)

(assert (=> b!477905 m!460313))

(assert (=> b!477688 d!76387))

(declare-fun d!76389 () Bool)

(declare-fun res!285264 () Bool)

(declare-fun e!280893 () Bool)

(assert (=> d!76389 (=> res!285264 e!280893)))

(assert (=> d!76389 (= res!285264 (and (is-Cons!9083 (toList!3977 lt!217562)) (= (_1!4508 (h!9939 (toList!3977 lt!217562))) (_1!4508 lt!217537))))))

(assert (=> d!76389 (= (containsKey!351 (toList!3977 lt!217562) (_1!4508 lt!217537)) e!280893)))

(declare-fun b!477910 () Bool)

(declare-fun e!280894 () Bool)

(assert (=> b!477910 (= e!280893 e!280894)))

(declare-fun res!285265 () Bool)

(assert (=> b!477910 (=> (not res!285265) (not e!280894))))

(assert (=> b!477910 (= res!285265 (and (or (not (is-Cons!9083 (toList!3977 lt!217562))) (bvsle (_1!4508 (h!9939 (toList!3977 lt!217562))) (_1!4508 lt!217537))) (is-Cons!9083 (toList!3977 lt!217562)) (bvslt (_1!4508 (h!9939 (toList!3977 lt!217562))) (_1!4508 lt!217537))))))

(declare-fun b!477911 () Bool)

(assert (=> b!477911 (= e!280894 (containsKey!351 (t!15258 (toList!3977 lt!217562)) (_1!4508 lt!217537)))))

(assert (= (and d!76389 (not res!285264)) b!477910))

(assert (= (and b!477910 res!285265) b!477911))

(declare-fun m!460315 () Bool)

(assert (=> b!477911 m!460315))

(assert (=> d!76287 d!76389))

(declare-fun d!76391 () Bool)

(declare-fun res!285266 () Bool)

(declare-fun e!280895 () Bool)

(assert (=> d!76391 (=> res!285266 e!280895)))

(assert (=> d!76391 (= res!285266 (and (is-Cons!9083 lt!217632) (= (_1!4508 (h!9939 lt!217632)) (_1!4508 lt!217537))))))

(assert (=> d!76391 (= (containsKey!351 lt!217632 (_1!4508 lt!217537)) e!280895)))

(declare-fun b!477912 () Bool)

(declare-fun e!280896 () Bool)

(assert (=> b!477912 (= e!280895 e!280896)))

(declare-fun res!285267 () Bool)

(assert (=> b!477912 (=> (not res!285267) (not e!280896))))

(assert (=> b!477912 (= res!285267 (and (or (not (is-Cons!9083 lt!217632)) (bvsle (_1!4508 (h!9939 lt!217632)) (_1!4508 lt!217537))) (is-Cons!9083 lt!217632) (bvslt (_1!4508 (h!9939 lt!217632)) (_1!4508 lt!217537))))))

(declare-fun b!477913 () Bool)

(assert (=> b!477913 (= e!280896 (containsKey!351 (t!15258 lt!217632) (_1!4508 lt!217537)))))

(assert (= (and d!76391 (not res!285266)) b!477912))

(assert (= (and b!477912 res!285267) b!477913))

(declare-fun m!460317 () Bool)

(assert (=> b!477913 m!460317))

(assert (=> b!477781 d!76391))

(declare-fun d!76393 () Bool)

(declare-fun res!285268 () Bool)

(declare-fun e!280897 () Bool)

(assert (=> d!76393 (=> res!285268 e!280897)))

(assert (=> d!76393 (= res!285268 (and (is-Cons!9083 lt!217561) (= (_1!4508 (h!9939 lt!217561)) (_1!4508 lt!217537))))))

(assert (=> d!76393 (= (containsKey!351 lt!217561 (_1!4508 lt!217537)) e!280897)))

(declare-fun b!477914 () Bool)

(declare-fun e!280898 () Bool)

(assert (=> b!477914 (= e!280897 e!280898)))

(declare-fun res!285269 () Bool)

(assert (=> b!477914 (=> (not res!285269) (not e!280898))))

(assert (=> b!477914 (= res!285269 (and (or (not (is-Cons!9083 lt!217561)) (bvsle (_1!4508 (h!9939 lt!217561)) (_1!4508 lt!217537))) (is-Cons!9083 lt!217561) (bvslt (_1!4508 (h!9939 lt!217561)) (_1!4508 lt!217537))))))

(declare-fun b!477915 () Bool)

(assert (=> b!477915 (= e!280898 (containsKey!351 (t!15258 lt!217561) (_1!4508 lt!217537)))))

(assert (= (and d!76393 (not res!285268)) b!477914))

(assert (= (and b!477914 res!285269) b!477915))

(declare-fun m!460319 () Bool)

(assert (=> b!477915 m!460319))

(assert (=> b!477687 d!76393))

(declare-fun b!477916 () Bool)

(declare-fun e!280900 () List!9087)

(declare-fun call!30821 () List!9087)

(assert (=> b!477916 (= e!280900 call!30821)))

(declare-fun b!477917 () Bool)

(declare-fun e!280902 () Bool)

(declare-fun lt!217655 () List!9087)

(assert (=> b!477917 (= e!280902 (contains!2580 lt!217655 (tuple2!8997 (_1!4508 lt!217537) (_2!4508 lt!217537))))))

(declare-fun b!477918 () Bool)

(declare-fun e!280901 () List!9087)

(declare-fun call!30823 () List!9087)

(assert (=> b!477918 (= e!280901 call!30823)))

(declare-fun c!57565 () Bool)

(declare-fun b!477919 () Bool)

(declare-fun c!57564 () Bool)

(declare-fun e!280903 () List!9087)

(assert (=> b!477919 (= e!280903 (ite c!57564 (t!15258 (t!15258 (toList!3977 lm!215))) (ite c!57565 (Cons!9083 (h!9939 (t!15258 (toList!3977 lm!215))) (t!15258 (t!15258 (toList!3977 lm!215)))) Nil!9084)))))

(declare-fun b!477920 () Bool)

(assert (=> b!477920 (= e!280903 (insertStrictlySorted!215 (t!15258 (t!15258 (toList!3977 lm!215))) (_1!4508 lt!217537) (_2!4508 lt!217537)))))

(declare-fun b!477921 () Bool)

(declare-fun res!285270 () Bool)

(assert (=> b!477921 (=> (not res!285270) (not e!280902))))

(assert (=> b!477921 (= res!285270 (containsKey!351 lt!217655 (_1!4508 lt!217537)))))

(declare-fun d!76395 () Bool)

(assert (=> d!76395 e!280902))

(declare-fun res!285271 () Bool)

(assert (=> d!76395 (=> (not res!285271) (not e!280902))))

(assert (=> d!76395 (= res!285271 (isStrictlySorted!386 lt!217655))))

(assert (=> d!76395 (= lt!217655 e!280901)))

(declare-fun c!57563 () Bool)

(assert (=> d!76395 (= c!57563 (and (is-Cons!9083 (t!15258 (toList!3977 lm!215))) (bvslt (_1!4508 (h!9939 (t!15258 (toList!3977 lm!215)))) (_1!4508 lt!217537))))))

(assert (=> d!76395 (isStrictlySorted!386 (t!15258 (toList!3977 lm!215)))))

(assert (=> d!76395 (= (insertStrictlySorted!215 (t!15258 (toList!3977 lm!215)) (_1!4508 lt!217537) (_2!4508 lt!217537)) lt!217655)))

(declare-fun b!477922 () Bool)

(declare-fun e!280899 () List!9087)

(assert (=> b!477922 (= e!280901 e!280899)))

(assert (=> b!477922 (= c!57564 (and (is-Cons!9083 (t!15258 (toList!3977 lm!215))) (= (_1!4508 (h!9939 (t!15258 (toList!3977 lm!215)))) (_1!4508 lt!217537))))))

(declare-fun bm!30818 () Bool)

(assert (=> bm!30818 (= call!30823 ($colon$colon!113 e!280903 (ite c!57563 (h!9939 (t!15258 (toList!3977 lm!215))) (tuple2!8997 (_1!4508 lt!217537) (_2!4508 lt!217537)))))))

(declare-fun c!57562 () Bool)

(assert (=> bm!30818 (= c!57562 c!57563)))

(declare-fun b!477923 () Bool)

(assert (=> b!477923 (= e!280900 call!30821)))

(declare-fun bm!30819 () Bool)

(declare-fun call!30822 () List!9087)

(assert (=> bm!30819 (= call!30821 call!30822)))

(declare-fun b!477924 () Bool)

(assert (=> b!477924 (= e!280899 call!30822)))

(declare-fun b!477925 () Bool)

(assert (=> b!477925 (= c!57565 (and (is-Cons!9083 (t!15258 (toList!3977 lm!215))) (bvsgt (_1!4508 (h!9939 (t!15258 (toList!3977 lm!215)))) (_1!4508 lt!217537))))))

(assert (=> b!477925 (= e!280899 e!280900)))

(declare-fun bm!30820 () Bool)

(assert (=> bm!30820 (= call!30822 call!30823)))

