; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4850 () Bool)

(assert start!4850)

(declare-fun b_free!1337 () Bool)

(declare-fun b_next!1337 () Bool)

(assert (=> start!4850 (= b_free!1337 (not b_next!1337))))

(declare-fun tp!5495 () Bool)

(declare-fun b_and!2221 () Bool)

(assert (=> start!4850 (= tp!5495 b_and!2221)))

(declare-fun res!22428 () Bool)

(declare-fun e!23432 () Bool)

(assert (=> start!4850 (=> (not res!22428) (not e!23432))))

(declare-datatypes ((B!744 0))(
  ( (B!745 (val!872 Int)) )
))
(declare-datatypes ((tuple2!1408 0))(
  ( (tuple2!1409 (_1!714 (_ BitVec 64)) (_2!714 B!744)) )
))
(declare-datatypes ((List!992 0))(
  ( (Nil!989) (Cons!988 (h!1556 tuple2!1408) (t!3755 List!992)) )
))
(declare-datatypes ((ListLongMap!989 0))(
  ( (ListLongMap!990 (toList!510 List!992)) )
))
(declare-fun lm!252 () ListLongMap!989)

(declare-fun p!304 () Int)

(declare-fun forall!172 (List!992 Int) Bool)

(assert (=> start!4850 (= res!22428 (forall!172 (toList!510 lm!252) p!304))))

(assert (=> start!4850 e!23432))

(declare-fun e!23431 () Bool)

(declare-fun inv!1632 (ListLongMap!989) Bool)

(assert (=> start!4850 (and (inv!1632 lm!252) e!23431)))

(assert (=> start!4850 tp!5495))

(assert (=> start!4850 true))

(declare-fun b!37065 () Bool)

(declare-fun e!23433 () Bool)

(declare-fun lt!13678 () ListLongMap!989)

(declare-fun size!1301 (List!992) Int)

(assert (=> b!37065 (= e!23433 (>= (size!1301 (toList!510 lt!13678)) (size!1301 (toList!510 lm!252))))))

(declare-fun b!37066 () Bool)

(declare-fun res!22424 () Bool)

(assert (=> b!37066 (=> (not res!22424) (not e!23432))))

(declare-fun isEmpty!202 (ListLongMap!989) Bool)

(assert (=> b!37066 (= res!22424 (not (isEmpty!202 lm!252)))))

(declare-fun b!37067 () Bool)

(declare-fun res!22429 () Bool)

(assert (=> b!37067 (=> (not res!22429) (not e!23433))))

(declare-fun k!388 () (_ BitVec 64))

(declare-fun contains!458 (ListLongMap!989 (_ BitVec 64)) Bool)

(assert (=> b!37067 (= res!22429 (contains!458 lt!13678 k!388))))

(declare-fun b!37068 () Bool)

(declare-fun tp!5494 () Bool)

(assert (=> b!37068 (= e!23431 tp!5494)))

(declare-fun b!37069 () Bool)

(declare-fun res!22425 () Bool)

(assert (=> b!37069 (=> (not res!22425) (not e!23432))))

(assert (=> b!37069 (= res!22425 (contains!458 lm!252 k!388))))

(declare-fun b!37070 () Bool)

(declare-fun res!22427 () Bool)

(assert (=> b!37070 (=> (not res!22427) (not e!23432))))

(declare-fun head!844 (List!992) tuple2!1408)

(assert (=> b!37070 (= res!22427 (not (= (_1!714 (head!844 (toList!510 lm!252))) k!388)))))

(declare-fun b!37071 () Bool)

(assert (=> b!37071 (= e!23432 e!23433)))

(declare-fun res!22426 () Bool)

(assert (=> b!37071 (=> (not res!22426) (not e!23433))))

(assert (=> b!37071 (= res!22426 (forall!172 (toList!510 lt!13678) p!304))))

(declare-fun tail!100 (ListLongMap!989) ListLongMap!989)

(assert (=> b!37071 (= lt!13678 (tail!100 lm!252))))

(assert (= (and start!4850 res!22428) b!37069))

(assert (= (and b!37069 res!22425) b!37066))

(assert (= (and b!37066 res!22424) b!37070))

(assert (= (and b!37070 res!22427) b!37071))

(assert (= (and b!37071 res!22426) b!37067))

(assert (= (and b!37067 res!22429) b!37065))

(assert (= start!4850 b!37068))

(declare-fun m!29895 () Bool)

(assert (=> start!4850 m!29895))

(declare-fun m!29897 () Bool)

(assert (=> start!4850 m!29897))

(declare-fun m!29899 () Bool)

(assert (=> b!37065 m!29899))

(declare-fun m!29901 () Bool)

(assert (=> b!37065 m!29901))

(declare-fun m!29903 () Bool)

(assert (=> b!37066 m!29903))

(declare-fun m!29905 () Bool)

(assert (=> b!37067 m!29905))

(declare-fun m!29907 () Bool)

(assert (=> b!37069 m!29907))

(declare-fun m!29909 () Bool)

(assert (=> b!37071 m!29909))

(declare-fun m!29911 () Bool)

(assert (=> b!37071 m!29911))

(declare-fun m!29913 () Bool)

(assert (=> b!37070 m!29913))

(push 1)

(assert (not b!37070))

(assert (not b!37066))

(assert b_and!2221)

(assert (not b!37069))

(assert (not b!37068))

(assert (not b!37065))

(assert (not b!37067))

(assert (not b!37071))

(assert (not b_next!1337))

(assert (not start!4850))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2221)

(assert (not b_next!1337))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5689 () Bool)

(declare-fun e!23440 () Bool)

(assert (=> d!5689 e!23440))

(declare-fun res!22432 () Bool)

(assert (=> d!5689 (=> res!22432 e!23440)))

(declare-fun lt!13696 () Bool)

(assert (=> d!5689 (= res!22432 (not lt!13696))))

(declare-fun lt!13697 () Bool)

(assert (=> d!5689 (= lt!13696 lt!13697)))

(declare-datatypes ((Unit!831 0))(
  ( (Unit!832) )
))
(declare-fun lt!13698 () Unit!831)

(declare-fun e!23441 () Unit!831)

(assert (=> d!5689 (= lt!13698 e!23441)))

(declare-fun c!4257 () Bool)

(assert (=> d!5689 (= c!4257 lt!13697)))

(declare-fun containsKey!47 (List!992 (_ BitVec 64)) Bool)

(assert (=> d!5689 (= lt!13697 (containsKey!47 (toList!510 lm!252) k!388))))

(assert (=> d!5689 (= (contains!458 lm!252 k!388) lt!13696)))

(declare-fun b!37082 () Bool)

(declare-fun lt!13695 () Unit!831)

(assert (=> b!37082 (= e!23441 lt!13695)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!45 (List!992 (_ BitVec 64)) Unit!831)

(assert (=> b!37082 (= lt!13695 (lemmaContainsKeyImpliesGetValueByKeyDefined!45 (toList!510 lm!252) k!388))))

(declare-datatypes ((Option!90 0))(
  ( (Some!89 (v!1958 B!744)) (None!88) )
))
(declare-fun isDefined!46 (Option!90) Bool)

(declare-fun getValueByKey!84 (List!992 (_ BitVec 64)) Option!90)

(assert (=> b!37082 (isDefined!46 (getValueByKey!84 (toList!510 lm!252) k!388))))

(declare-fun b!37083 () Bool)

(declare-fun Unit!836 () Unit!831)

(assert (=> b!37083 (= e!23441 Unit!836)))

(declare-fun b!37084 () Bool)

(assert (=> b!37084 (= e!23440 (isDefined!46 (getValueByKey!84 (toList!510 lm!252) k!388)))))

(assert (= (and d!5689 c!4257) b!37082))

(assert (= (and d!5689 (not c!4257)) b!37083))

(assert (= (and d!5689 (not res!22432)) b!37084))

(declare-fun m!29917 () Bool)

(assert (=> d!5689 m!29917))

(declare-fun m!29919 () Bool)

(assert (=> b!37082 m!29919))

(declare-fun m!29921 () Bool)

(assert (=> b!37082 m!29921))

(assert (=> b!37082 m!29921))

(declare-fun m!29923 () Bool)

(assert (=> b!37082 m!29923))

(assert (=> b!37084 m!29921))

(assert (=> b!37084 m!29921))

(assert (=> b!37084 m!29923))

(assert (=> b!37069 d!5689))

(declare-fun d!5699 () Bool)

(assert (=> d!5699 (= (head!844 (toList!510 lm!252)) (h!1556 (toList!510 lm!252)))))

(assert (=> b!37070 d!5699))

(declare-fun d!5701 () Bool)

(declare-fun lt!13719 () Int)

(assert (=> d!5701 (>= lt!13719 0)))

(declare-fun e!23456 () Int)

(assert (=> d!5701 (= lt!13719 e!23456)))

(declare-fun c!4266 () Bool)

(assert (=> d!5701 (= c!4266 (is-Nil!989 (toList!510 lt!13678)))))

(assert (=> d!5701 (= (size!1301 (toList!510 lt!13678)) lt!13719)))

(declare-fun b!37107 () Bool)

(assert (=> b!37107 (= e!23456 0)))

(declare-fun b!37108 () Bool)

(assert (=> b!37108 (= e!23456 (+ 1 (size!1301 (t!3755 (toList!510 lt!13678)))))))

(assert (= (and d!5701 c!4266) b!37107))

(assert (= (and d!5701 (not c!4266)) b!37108))

(declare-fun m!29933 () Bool)

(assert (=> b!37108 m!29933))

(assert (=> b!37065 d!5701))

(declare-fun d!5705 () Bool)

(declare-fun lt!13720 () Int)

(assert (=> d!5705 (>= lt!13720 0)))

(declare-fun e!23457 () Int)

(assert (=> d!5705 (= lt!13720 e!23457)))

(declare-fun c!4267 () Bool)

(assert (=> d!5705 (= c!4267 (is-Nil!989 (toList!510 lm!252)))))

(assert (=> d!5705 (= (size!1301 (toList!510 lm!252)) lt!13720)))

(declare-fun b!37109 () Bool)

(assert (=> b!37109 (= e!23457 0)))

(declare-fun b!37110 () Bool)

(assert (=> b!37110 (= e!23457 (+ 1 (size!1301 (t!3755 (toList!510 lm!252)))))))

(assert (= (and d!5705 c!4267) b!37109))

(assert (= (and d!5705 (not c!4267)) b!37110))

(declare-fun m!29943 () Bool)

(assert (=> b!37110 m!29943))

(assert (=> b!37065 d!5705))

(declare-fun d!5707 () Bool)

(declare-fun res!22443 () Bool)

(declare-fun e!23466 () Bool)

(assert (=> d!5707 (=> res!22443 e!23466)))

(assert (=> d!5707 (= res!22443 (is-Nil!989 (toList!510 lt!13678)))))

(assert (=> d!5707 (= (forall!172 (toList!510 lt!13678) p!304) e!23466)))

(declare-fun b!37123 () Bool)

(declare-fun e!23467 () Bool)

(assert (=> b!37123 (= e!23466 e!23467)))

(declare-fun res!22444 () Bool)

(assert (=> b!37123 (=> (not res!22444) (not e!23467))))

(declare-fun dynLambda!173 (Int tuple2!1408) Bool)

(assert (=> b!37123 (= res!22444 (dynLambda!173 p!304 (h!1556 (toList!510 lt!13678))))))

(declare-fun b!37124 () Bool)

(assert (=> b!37124 (= e!23467 (forall!172 (t!3755 (toList!510 lt!13678)) p!304))))

(assert (= (and d!5707 (not res!22443)) b!37123))

(assert (= (and b!37123 res!22444) b!37124))

(declare-fun b_lambda!1837 () Bool)

(assert (=> (not b_lambda!1837) (not b!37123)))

(declare-fun t!3757 () Bool)

(declare-fun tb!751 () Bool)

(assert (=> (and start!4850 (= p!304 p!304) t!3757) tb!751))

(declare-fun result!1281 () Bool)

(assert (=> tb!751 (= result!1281 true)))

(assert (=> b!37123 t!3757))

(declare-fun b_and!2223 () Bool)

(assert (= b_and!2221 (and (=> t!3757 result!1281) b_and!2223)))

(declare-fun m!29949 () Bool)

(assert (=> b!37123 m!29949))

(declare-fun m!29953 () Bool)

(assert (=> b!37124 m!29953))

(assert (=> b!37071 d!5707))

(declare-fun d!5719 () Bool)

(declare-fun tail!102 (List!992) List!992)

(assert (=> d!5719 (= (tail!100 lm!252) (ListLongMap!990 (tail!102 (toList!510 lm!252))))))

(declare-fun bs!1427 () Bool)

(assert (= bs!1427 d!5719))

(declare-fun m!29965 () Bool)

(assert (=> bs!1427 m!29965))

(assert (=> b!37071 d!5719))

(declare-fun d!5725 () Bool)

(declare-fun isEmpty!204 (List!992) Bool)

(assert (=> d!5725 (= (isEmpty!202 lm!252) (isEmpty!204 (toList!510 lm!252)))))

(declare-fun bs!1428 () Bool)

(assert (= bs!1428 d!5725))

(declare-fun m!29971 () Bool)

(assert (=> bs!1428 m!29971))

(assert (=> b!37066 d!5725))

(declare-fun d!5729 () Bool)

(declare-fun e!23480 () Bool)

(assert (=> d!5729 e!23480))

(declare-fun res!22454 () Bool)

(assert (=> d!5729 (=> res!22454 e!23480)))

(declare-fun lt!13732 () Bool)

(assert (=> d!5729 (= res!22454 (not lt!13732))))

(declare-fun lt!13733 () Bool)

(assert (=> d!5729 (= lt!13732 lt!13733)))

(declare-fun lt!13734 () Unit!831)

(declare-fun e!23481 () Unit!831)

(assert (=> d!5729 (= lt!13734 e!23481)))

(declare-fun c!4275 () Bool)

(assert (=> d!5729 (= c!4275 lt!13733)))

(assert (=> d!5729 (= lt!13733 (containsKey!47 (toList!510 lt!13678) k!388))))

(assert (=> d!5729 (= (contains!458 lt!13678 k!388) lt!13732)))

(declare-fun b!37140 () Bool)

(declare-fun lt!13731 () Unit!831)

(assert (=> b!37140 (= e!23481 lt!13731)))

(assert (=> b!37140 (= lt!13731 (lemmaContainsKeyImpliesGetValueByKeyDefined!45 (toList!510 lt!13678) k!388))))

(assert (=> b!37140 (isDefined!46 (getValueByKey!84 (toList!510 lt!13678) k!388))))

(declare-fun b!37141 () Bool)

(declare-fun Unit!842 () Unit!831)

(assert (=> b!37141 (= e!23481 Unit!842)))

(declare-fun b!37142 () Bool)

(assert (=> b!37142 (= e!23480 (isDefined!46 (getValueByKey!84 (toList!510 lt!13678) k!388)))))

(assert (= (and d!5729 c!4275) b!37140))

(assert (= (and d!5729 (not c!4275)) b!37141))

(assert (= (and d!5729 (not res!22454)) b!37142))

(declare-fun m!29975 () Bool)

(assert (=> d!5729 m!29975))

(declare-fun m!29977 () Bool)

(assert (=> b!37140 m!29977))

(declare-fun m!29979 () Bool)

(assert (=> b!37140 m!29979))

(assert (=> b!37140 m!29979))

(declare-fun m!29981 () Bool)

(assert (=> b!37140 m!29981))

(assert (=> b!37142 m!29979))

(assert (=> b!37142 m!29979))

(assert (=> b!37142 m!29981))

(assert (=> b!37067 d!5729))

(declare-fun d!5733 () Bool)

(declare-fun res!22459 () Bool)

(declare-fun e!23486 () Bool)

(assert (=> d!5733 (=> res!22459 e!23486)))

(assert (=> d!5733 (= res!22459 (is-Nil!989 (toList!510 lm!252)))))

(assert (=> d!5733 (= (forall!172 (toList!510 lm!252) p!304) e!23486)))

(declare-fun b!37147 () Bool)

(declare-fun e!23487 () Bool)

(assert (=> b!37147 (= e!23486 e!23487)))

(declare-fun res!22460 () Bool)

(assert (=> b!37147 (=> (not res!22460) (not e!23487))))

(assert (=> b!37147 (= res!22460 (dynLambda!173 p!304 (h!1556 (toList!510 lm!252))))))

(declare-fun b!37148 () Bool)

(assert (=> b!37148 (= e!23487 (forall!172 (t!3755 (toList!510 lm!252)) p!304))))

(assert (= (and d!5733 (not res!22459)) b!37147))

(assert (= (and b!37147 res!22460) b!37148))

(declare-fun b_lambda!1843 () Bool)

(assert (=> (not b_lambda!1843) (not b!37147)))

(declare-fun t!3763 () Bool)

(declare-fun tb!757 () Bool)

(assert (=> (and start!4850 (= p!304 p!304) t!3763) tb!757))

(declare-fun result!1287 () Bool)

(assert (=> tb!757 (= result!1287 true)))

(assert (=> b!37147 t!3763))

(declare-fun b_and!2229 () Bool)

(assert (= b_and!2223 (and (=> t!3763 result!1287) b_and!2229)))

(declare-fun m!29987 () Bool)

(assert (=> b!37147 m!29987))

(declare-fun m!29989 () Bool)

(assert (=> b!37148 m!29989))

(assert (=> start!4850 d!5733))

(declare-fun d!5737 () Bool)

(declare-fun isStrictlySorted!180 (List!992) Bool)

(assert (=> d!5737 (= (inv!1632 lm!252) (isStrictlySorted!180 (toList!510 lm!252)))))

(declare-fun bs!1431 () Bool)

(assert (= bs!1431 d!5737))

(declare-fun m!29997 () Bool)

(assert (=> bs!1431 m!29997))

(assert (=> start!4850 d!5737))

(declare-fun b!37162 () Bool)

(declare-fun e!23496 () Bool)

(declare-fun tp_is_empty!1663 () Bool)

(declare-fun tp!5500 () Bool)

(assert (=> b!37162 (= e!23496 (and tp_is_empty!1663 tp!5500))))

(assert (=> b!37068 (= tp!5494 e!23496)))

(assert (= (and b!37068 (is-Cons!988 (toList!510 lm!252))) b!37162))

(declare-fun b_lambda!1847 () Bool)

(assert (= b_lambda!1843 (or (and start!4850 b_free!1337) b_lambda!1847)))

(declare-fun b_lambda!1849 () Bool)

(assert (= b_lambda!1837 (or (and start!4850 b_free!1337) b_lambda!1849)))

(push 1)

(assert (not d!5729))

(assert (not b!37082))

(assert (not b!37084))

(assert (not b_lambda!1849))

(assert b_and!2229)

(assert (not b_lambda!1847))

(assert (not b!37142))

(assert (not b!37124))

(assert (not d!5725))

(assert (not b!37162))

(assert tp_is_empty!1663)

(assert (not b!37148))

(assert (not d!5737))

(assert (not b!37110))

(assert (not b!37140))

(assert (not d!5689))

(assert (not b!37108))

(assert (not b_next!1337))

(assert (not d!5719))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2229)

(assert (not b_next!1337))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5799 () Bool)

(assert (=> d!5799 (= (isEmpty!204 (toList!510 lm!252)) (is-Nil!989 (toList!510 lm!252)))))

(assert (=> d!5725 d!5799))

(declare-fun d!5805 () Bool)

(declare-fun lt!13750 () Int)

(assert (=> d!5805 (>= lt!13750 0)))

(declare-fun e!23559 () Int)

(assert (=> d!5805 (= lt!13750 e!23559)))

(declare-fun c!4296 () Bool)

(assert (=> d!5805 (= c!4296 (is-Nil!989 (t!3755 (toList!510 lm!252))))))

(assert (=> d!5805 (= (size!1301 (t!3755 (toList!510 lm!252))) lt!13750)))

(declare-fun b!37246 () Bool)

(assert (=> b!37246 (= e!23559 0)))

(declare-fun b!37247 () Bool)

(assert (=> b!37247 (= e!23559 (+ 1 (size!1301 (t!3755 (t!3755 (toList!510 lm!252))))))))

(assert (= (and d!5805 c!4296) b!37246))

(assert (= (and d!5805 (not c!4296)) b!37247))

(declare-fun m!30073 () Bool)

(assert (=> b!37247 m!30073))

(assert (=> b!37110 d!5805))

(declare-fun d!5807 () Bool)

(declare-fun res!22502 () Bool)

(declare-fun e!23560 () Bool)

(assert (=> d!5807 (=> res!22502 e!23560)))

(assert (=> d!5807 (= res!22502 (is-Nil!989 (t!3755 (toList!510 lt!13678))))))

(assert (=> d!5807 (= (forall!172 (t!3755 (toList!510 lt!13678)) p!304) e!23560)))

(declare-fun b!37248 () Bool)

(declare-fun e!23561 () Bool)

(assert (=> b!37248 (= e!23560 e!23561)))

(declare-fun res!22503 () Bool)

(assert (=> b!37248 (=> (not res!22503) (not e!23561))))

(assert (=> b!37248 (= res!22503 (dynLambda!173 p!304 (h!1556 (t!3755 (toList!510 lt!13678)))))))

(declare-fun b!37249 () Bool)

(assert (=> b!37249 (= e!23561 (forall!172 (t!3755 (t!3755 (toList!510 lt!13678))) p!304))))

(assert (= (and d!5807 (not res!22502)) b!37248))

(assert (= (and b!37248 res!22503) b!37249))

(declare-fun b_lambda!1871 () Bool)

(assert (=> (not b_lambda!1871) (not b!37248)))

(declare-fun t!3775 () Bool)

(declare-fun tb!769 () Bool)

(assert (=> (and start!4850 (= p!304 p!304) t!3775) tb!769))

(declare-fun result!1305 () Bool)

(assert (=> tb!769 (= result!1305 true)))

(assert (=> b!37248 t!3775))

(declare-fun b_and!2241 () Bool)

(assert (= b_and!2229 (and (=> t!3775 result!1305) b_and!2241)))

(declare-fun m!30075 () Bool)

(assert (=> b!37248 m!30075))

(declare-fun m!30077 () Bool)

(assert (=> b!37249 m!30077))

(assert (=> b!37124 d!5807))

(declare-fun d!5811 () Bool)

(declare-fun lt!13751 () Int)

(assert (=> d!5811 (>= lt!13751 0)))

(declare-fun e!23564 () Int)

(assert (=> d!5811 (= lt!13751 e!23564)))

(declare-fun c!4297 () Bool)

(assert (=> d!5811 (= c!4297 (is-Nil!989 (t!3755 (toList!510 lt!13678))))))

(assert (=> d!5811 (= (size!1301 (t!3755 (toList!510 lt!13678))) lt!13751)))

(declare-fun b!37252 () Bool)

(assert (=> b!37252 (= e!23564 0)))

(declare-fun b!37253 () Bool)

(assert (=> b!37253 (= e!23564 (+ 1 (size!1301 (t!3755 (t!3755 (toList!510 lt!13678))))))))

(assert (= (and d!5811 c!4297) b!37252))

(assert (= (and d!5811 (not c!4297)) b!37253))

(declare-fun m!30083 () Bool)

(assert (=> b!37253 m!30083))

(assert (=> b!37108 d!5811))

(declare-fun d!5815 () Bool)

(declare-fun res!22516 () Bool)

(declare-fun e!23575 () Bool)

(assert (=> d!5815 (=> res!22516 e!23575)))

(assert (=> d!5815 (= res!22516 (or (is-Nil!989 (toList!510 lm!252)) (is-Nil!989 (t!3755 (toList!510 lm!252)))))))

(assert (=> d!5815 (= (isStrictlySorted!180 (toList!510 lm!252)) e!23575)))

(declare-fun b!37264 () Bool)

(declare-fun e!23576 () Bool)

(assert (=> b!37264 (= e!23575 e!23576)))

(declare-fun res!22517 () Bool)

(assert (=> b!37264 (=> (not res!22517) (not e!23576))))

(assert (=> b!37264 (= res!22517 (bvslt (_1!714 (h!1556 (toList!510 lm!252))) (_1!714 (h!1556 (t!3755 (toList!510 lm!252))))))))

(declare-fun b!37265 () Bool)

(assert (=> b!37265 (= e!23576 (isStrictlySorted!180 (t!3755 (toList!510 lm!252))))))

(assert (= (and d!5815 (not res!22516)) b!37264))

(assert (= (and b!37264 res!22517) b!37265))

(declare-fun m!30087 () Bool)

(assert (=> b!37265 m!30087))

(assert (=> d!5737 d!5815))

(declare-fun d!5819 () Bool)

(assert (=> d!5819 (= (tail!102 (toList!510 lm!252)) (t!3755 (toList!510 lm!252)))))

(assert (=> d!5719 d!5819))

(declare-fun d!5821 () Bool)

(declare-fun res!22518 () Bool)

(declare-fun e!23579 () Bool)

