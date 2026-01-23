; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252850 () Bool)

(assert start!252850)

(declare-fun b!2601029 () Bool)

(assert (=> b!2601029 true))

(declare-fun b!2601028 () Bool)

(declare-fun m!2936141 () Bool)

(assert (=> b!2601028 m!2936141))

(declare-fun bs!473201 () Bool)

(assert (= bs!473201 (and b!2601028 b!2601029)))

(declare-datatypes ((B!2423 0))(
  ( (B!2424 (val!9679 Int)) )
))
(declare-datatypes ((List!30112 0))(
  ( (Nil!30012) (Cons!30012 (h!35432 B!2423) (t!213161 List!30112)) )
))
(declare-fun refL!9 () List!30112)

(declare-fun lambda!97324 () Int)

(declare-fun lambda!97323 () Int)

(declare-fun tail!4173 (List!30112) List!30112)

(assert (=> bs!473201 (= (= (tail!4173 refL!9) refL!9) (= lambda!97324 lambda!97323))))

(assert (=> b!2601028 true))

(declare-fun e!1641872 () Bool)

(declare-fun l!3766 () List!30112)

(declare-fun forall!6191 (List!30112 Int) Bool)

(assert (=> b!2601028 (= e!1641872 (not (forall!6191 l!3766 lambda!97324)))))

(declare-datatypes ((Unit!44029 0))(
  ( (Unit!44030) )
))
(declare-fun lt!915348 () Unit!44029)

(declare-fun refHd!9 () B!2423)

(declare-fun lemmaForallContainsThenForTailIfContainsNotHead!33 (List!30112 List!30112 B!2423) Unit!44029)

(assert (=> b!2601028 (= lt!915348 (lemmaForallContainsThenForTailIfContainsNotHead!33 (t!213161 l!3766) refL!9 refHd!9))))

(declare-fun res!1095732 () Bool)

(assert (=> b!2601029 (=> (not res!1095732) (not e!1641872))))

(assert (=> b!2601029 (= res!1095732 (forall!6191 l!3766 lambda!97323))))

(declare-fun b!2601030 () Bool)

(declare-fun res!1095730 () Bool)

(assert (=> b!2601030 (=> (not res!1095730) (not e!1641872))))

(assert (=> b!2601030 (= res!1095730 (not (is-Nil!30012 l!3766)))))

(declare-fun b!2601031 () Bool)

(declare-fun e!1641870 () Bool)

(declare-fun tp_is_empty!13703 () Bool)

(declare-fun tp!824018 () Bool)

(assert (=> b!2601031 (= e!1641870 (and tp_is_empty!13703 tp!824018))))

(declare-fun res!1095729 () Bool)

(assert (=> start!252850 (=> (not res!1095729) (not e!1641872))))

(declare-fun isEmpty!17165 (List!30112) Bool)

(assert (=> start!252850 (= res!1095729 (not (isEmpty!17165 refL!9)))))

(assert (=> start!252850 e!1641872))

(assert (=> start!252850 e!1641870))

(declare-fun e!1641871 () Bool)

(assert (=> start!252850 e!1641871))

(assert (=> start!252850 tp_is_empty!13703))

(declare-fun b!2601032 () Bool)

(declare-fun res!1095731 () Bool)

(assert (=> b!2601032 (=> (not res!1095731) (not e!1641872))))

(declare-fun contains!5556 (List!30112 B!2423) Bool)

(assert (=> b!2601032 (= res!1095731 (not (contains!5556 l!3766 refHd!9)))))

(declare-fun b!2601033 () Bool)

(declare-fun tp!824017 () Bool)

(assert (=> b!2601033 (= e!1641871 (and tp_is_empty!13703 tp!824017))))

(declare-fun b!2601034 () Bool)

(declare-fun res!1095728 () Bool)

(assert (=> b!2601034 (=> (not res!1095728) (not e!1641872))))

(declare-fun head!5933 (List!30112) B!2423)

(assert (=> b!2601034 (= res!1095728 (= refHd!9 (head!5933 refL!9)))))

(assert (= (and start!252850 res!1095729) b!2601029))

(assert (= (and b!2601029 res!1095732) b!2601034))

(assert (= (and b!2601034 res!1095728) b!2601032))

(assert (= (and b!2601032 res!1095731) b!2601030))

(assert (= (and b!2601030 res!1095730) b!2601028))

(assert (= (and start!252850 (is-Cons!30012 refL!9)) b!2601031))

(assert (= (and start!252850 (is-Cons!30012 l!3766)) b!2601033))

(declare-fun m!2936143 () Bool)

(assert (=> start!252850 m!2936143))

(declare-fun m!2936145 () Bool)

(assert (=> b!2601032 m!2936145))

(declare-fun m!2936147 () Bool)

(assert (=> b!2601028 m!2936147))

(declare-fun m!2936149 () Bool)

(assert (=> b!2601028 m!2936149))

(declare-fun m!2936151 () Bool)

(assert (=> b!2601034 m!2936151))

(declare-fun m!2936153 () Bool)

(assert (=> b!2601029 m!2936153))

(push 1)

(assert (not b!2601031))

(assert (not b!2601029))

(assert tp_is_empty!13703)

(assert (not b!2601032))

(assert (not start!252850))

(assert (not b!2601028))

(assert (not b!2601034))

(assert (not b!2601033))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!736884 () Bool)

(declare-fun lt!915354 () Bool)

(declare-fun content!4264 (List!30112) (Set B!2423))

(assert (=> d!736884 (= lt!915354 (set.member refHd!9 (content!4264 l!3766)))))

(declare-fun e!1641891 () Bool)

(assert (=> d!736884 (= lt!915354 e!1641891)))

(declare-fun res!1095753 () Bool)

(assert (=> d!736884 (=> (not res!1095753) (not e!1641891))))

(assert (=> d!736884 (= res!1095753 (is-Cons!30012 l!3766))))

(assert (=> d!736884 (= (contains!5556 l!3766 refHd!9) lt!915354)))

(declare-fun b!2601064 () Bool)

(declare-fun e!1641890 () Bool)

(assert (=> b!2601064 (= e!1641891 e!1641890)))

(declare-fun res!1095752 () Bool)

(assert (=> b!2601064 (=> res!1095752 e!1641890)))

(assert (=> b!2601064 (= res!1095752 (= (h!35432 l!3766) refHd!9))))

(declare-fun b!2601065 () Bool)

(assert (=> b!2601065 (= e!1641890 (contains!5556 (t!213161 l!3766) refHd!9))))

(assert (= (and d!736884 res!1095753) b!2601064))

(assert (= (and b!2601064 (not res!1095752)) b!2601065))

(declare-fun m!2936169 () Bool)

(assert (=> d!736884 m!2936169))

(declare-fun m!2936171 () Bool)

(assert (=> d!736884 m!2936171))

(declare-fun m!2936173 () Bool)

(assert (=> b!2601065 m!2936173))

(assert (=> b!2601032 d!736884))

(declare-fun d!736886 () Bool)

(assert (=> d!736886 (= (isEmpty!17165 refL!9) (is-Nil!30012 refL!9))))

(assert (=> start!252850 d!736886))

(declare-fun d!736888 () Bool)

(assert (=> d!736888 (= (tail!4173 refL!9) (t!213161 refL!9))))

(assert (=> b!2601028 d!736888))

(declare-fun d!736890 () Bool)

(declare-fun res!1095758 () Bool)

(declare-fun e!1641896 () Bool)

(assert (=> d!736890 (=> res!1095758 e!1641896)))

(assert (=> d!736890 (= res!1095758 (is-Nil!30012 l!3766))))

(assert (=> d!736890 (= (forall!6191 l!3766 lambda!97324) e!1641896)))

(declare-fun b!2601070 () Bool)

(declare-fun e!1641897 () Bool)

(assert (=> b!2601070 (= e!1641896 e!1641897)))

(declare-fun res!1095759 () Bool)

(assert (=> b!2601070 (=> (not res!1095759) (not e!1641897))))

(declare-fun dynLambda!12693 (Int B!2423) Bool)

(assert (=> b!2601070 (= res!1095759 (dynLambda!12693 lambda!97324 (h!35432 l!3766)))))

(declare-fun b!2601071 () Bool)

(assert (=> b!2601071 (= e!1641897 (forall!6191 (t!213161 l!3766) lambda!97324))))

(assert (= (and d!736890 (not res!1095758)) b!2601070))

(assert (= (and b!2601070 res!1095759) b!2601071))

(declare-fun b_lambda!77891 () Bool)

(assert (=> (not b_lambda!77891) (not b!2601070)))

(declare-fun m!2936175 () Bool)

(assert (=> b!2601070 m!2936175))

(declare-fun m!2936177 () Bool)

(assert (=> b!2601071 m!2936177))

(assert (=> b!2601028 d!736890))

(declare-fun bs!473203 () Bool)

(declare-fun d!736892 () Bool)

(assert (= bs!473203 d!736892))

(assert (=> bs!473203 m!2936141))

(declare-fun bs!473204 () Bool)

(assert (= bs!473204 (and d!736892 b!2601029)))

(declare-fun lambda!97333 () Int)

(assert (=> bs!473204 (= (= (tail!4173 refL!9) refL!9) (= lambda!97333 lambda!97323))))

(declare-fun bs!473205 () Bool)

(assert (= bs!473205 (and d!736892 b!2601028)))

(assert (=> bs!473205 (= lambda!97333 lambda!97324)))

(assert (=> d!736892 true))

(assert (=> d!736892 (forall!6191 (t!213161 l!3766) lambda!97333)))

(declare-fun lt!915357 () Unit!44029)

(declare-fun choose!15460 (List!30112 List!30112 B!2423) Unit!44029)

(assert (=> d!736892 (= lt!915357 (choose!15460 (t!213161 l!3766) refL!9 refHd!9))))

(assert (=> d!736892 (not (isEmpty!17165 refL!9))))

(assert (=> d!736892 (= (lemmaForallContainsThenForTailIfContainsNotHead!33 (t!213161 l!3766) refL!9 refHd!9) lt!915357)))

(declare-fun m!2936179 () Bool)

(assert (=> bs!473203 m!2936179))

(declare-fun m!2936181 () Bool)

(assert (=> bs!473203 m!2936181))

(assert (=> bs!473203 m!2936143))

(assert (=> b!2601028 d!736892))

(declare-fun d!736894 () Bool)

(declare-fun res!1095760 () Bool)

(declare-fun e!1641900 () Bool)

(assert (=> d!736894 (=> res!1095760 e!1641900)))

(assert (=> d!736894 (= res!1095760 (is-Nil!30012 l!3766))))

(assert (=> d!736894 (= (forall!6191 l!3766 lambda!97323) e!1641900)))

(declare-fun b!2601072 () Bool)

(declare-fun e!1641901 () Bool)

(assert (=> b!2601072 (= e!1641900 e!1641901)))

(declare-fun res!1095761 () Bool)

(assert (=> b!2601072 (=> (not res!1095761) (not e!1641901))))

(assert (=> b!2601072 (= res!1095761 (dynLambda!12693 lambda!97323 (h!35432 l!3766)))))

(declare-fun b!2601073 () Bool)

(assert (=> b!2601073 (= e!1641901 (forall!6191 (t!213161 l!3766) lambda!97323))))

(assert (= (and d!736894 (not res!1095760)) b!2601072))

(assert (= (and b!2601072 res!1095761) b!2601073))

(declare-fun b_lambda!77893 () Bool)

(assert (=> (not b_lambda!77893) (not b!2601072)))

(declare-fun m!2936183 () Bool)

(assert (=> b!2601072 m!2936183))

(declare-fun m!2936185 () Bool)

(assert (=> b!2601073 m!2936185))

(assert (=> b!2601029 d!736894))

(declare-fun d!736896 () Bool)

(assert (=> d!736896 (= (head!5933 refL!9) (h!35432 refL!9))))

(assert (=> b!2601034 d!736896))

(declare-fun b!2601078 () Bool)

(declare-fun e!1641904 () Bool)

(declare-fun tp!824027 () Bool)

(assert (=> b!2601078 (= e!1641904 (and tp_is_empty!13703 tp!824027))))

(assert (=> b!2601033 (= tp!824017 e!1641904)))

(assert (= (and b!2601033 (is-Cons!30012 (t!213161 l!3766))) b!2601078))

(declare-fun b!2601079 () Bool)

(declare-fun e!1641905 () Bool)

(declare-fun tp!824028 () Bool)

(assert (=> b!2601079 (= e!1641905 (and tp_is_empty!13703 tp!824028))))

(assert (=> b!2601031 (= tp!824018 e!1641905)))

(assert (= (and b!2601031 (is-Cons!30012 (t!213161 refL!9))) b!2601079))

(declare-fun b_lambda!77895 () Bool)

(assert (= b_lambda!77891 (or b!2601028 b_lambda!77895)))

(declare-fun bs!473206 () Bool)

(declare-fun d!736898 () Bool)

(assert (= bs!473206 (and d!736898 b!2601028)))

(assert (=> bs!473206 (= (dynLambda!12693 lambda!97324 (h!35432 l!3766)) (contains!5556 (tail!4173 refL!9) (h!35432 l!3766)))))

(declare-fun m!2936187 () Bool)

(assert (=> bs!473206 m!2936187))

(assert (=> b!2601070 d!736898))

(declare-fun b_lambda!77897 () Bool)

(assert (= b_lambda!77893 (or b!2601029 b_lambda!77897)))

(declare-fun bs!473207 () Bool)

(declare-fun d!736902 () Bool)

(assert (= bs!473207 (and d!736902 b!2601029)))

(assert (=> bs!473207 (= (dynLambda!12693 lambda!97323 (h!35432 l!3766)) (contains!5556 refL!9 (h!35432 l!3766)))))

(declare-fun m!2936189 () Bool)

(assert (=> bs!473207 m!2936189))

(assert (=> b!2601072 d!736902))

(push 1)

(assert (not b_lambda!77895))

(assert (not b_lambda!77897))

(assert (not bs!473207))

(assert (not d!736884))

(assert (not b!2601079))

(assert (not bs!473206))

(assert (not d!736892))

(assert (not b!2601065))

(assert (not b!2601078))

(assert (not b!2601071))

(assert tp_is_empty!13703)

(assert (not b!2601073))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!736920 () Bool)

(declare-fun lt!915364 () Bool)

(assert (=> d!736920 (= lt!915364 (set.member (h!35432 l!3766) (content!4264 refL!9)))))

(declare-fun e!1641927 () Bool)

(assert (=> d!736920 (= lt!915364 e!1641927)))

(declare-fun res!1095777 () Bool)

(assert (=> d!736920 (=> (not res!1095777) (not e!1641927))))

(assert (=> d!736920 (= res!1095777 (is-Cons!30012 refL!9))))

(assert (=> d!736920 (= (contains!5556 refL!9 (h!35432 l!3766)) lt!915364)))

(declare-fun b!2601100 () Bool)

(declare-fun e!1641926 () Bool)

(assert (=> b!2601100 (= e!1641927 e!1641926)))

(declare-fun res!1095776 () Bool)

(assert (=> b!2601100 (=> res!1095776 e!1641926)))

(assert (=> b!2601100 (= res!1095776 (= (h!35432 refL!9) (h!35432 l!3766)))))

(declare-fun b!2601101 () Bool)

(assert (=> b!2601101 (= e!1641926 (contains!5556 (t!213161 refL!9) (h!35432 l!3766)))))

(assert (= (and d!736920 res!1095777) b!2601100))

(assert (= (and b!2601100 (not res!1095776)) b!2601101))

(declare-fun m!2936213 () Bool)

(assert (=> d!736920 m!2936213))

(declare-fun m!2936215 () Bool)

(assert (=> d!736920 m!2936215))

(declare-fun m!2936217 () Bool)

(assert (=> b!2601101 m!2936217))

(assert (=> bs!473207 d!736920))

(assert (=> d!736892 d!736888))

(declare-fun d!736922 () Bool)

(declare-fun res!1095778 () Bool)

(declare-fun e!1641928 () Bool)

(assert (=> d!736922 (=> res!1095778 e!1641928)))

(assert (=> d!736922 (= res!1095778 (is-Nil!30012 (t!213161 l!3766)))))

(assert (=> d!736922 (= (forall!6191 (t!213161 l!3766) lambda!97333) e!1641928)))

(declare-fun b!2601102 () Bool)

(declare-fun e!1641929 () Bool)

(assert (=> b!2601102 (= e!1641928 e!1641929)))

(declare-fun res!1095779 () Bool)

(assert (=> b!2601102 (=> (not res!1095779) (not e!1641929))))

(assert (=> b!2601102 (= res!1095779 (dynLambda!12693 lambda!97333 (h!35432 (t!213161 l!3766))))))

(declare-fun b!2601103 () Bool)

(assert (=> b!2601103 (= e!1641929 (forall!6191 (t!213161 (t!213161 l!3766)) lambda!97333))))

(assert (= (and d!736922 (not res!1095778)) b!2601102))

(assert (= (and b!2601102 res!1095779) b!2601103))

(declare-fun b_lambda!77907 () Bool)

(assert (=> (not b_lambda!77907) (not b!2601102)))

(declare-fun m!2936219 () Bool)

(assert (=> b!2601102 m!2936219))

(declare-fun m!2936221 () Bool)

(assert (=> b!2601103 m!2936221))

(assert (=> d!736892 d!736922))

(declare-fun bs!473213 () Bool)

(declare-fun d!736924 () Bool)

(assert (= bs!473213 d!736924))

(assert (=> bs!473213 m!2936141))

(declare-fun bs!473214 () Bool)

(assert (= bs!473214 (and d!736924 b!2601029)))

(declare-fun lambda!97339 () Int)

(assert (=> bs!473214 (= (= (tail!4173 refL!9) refL!9) (= lambda!97339 lambda!97323))))

(declare-fun bs!473215 () Bool)

(assert (= bs!473215 (and d!736924 b!2601028)))

(assert (=> bs!473215 (= lambda!97339 lambda!97324)))

(declare-fun bs!473216 () Bool)

(assert (= bs!473216 (and d!736924 d!736892)))

(assert (=> bs!473216 (= lambda!97339 lambda!97333)))

(assert (=> d!736924 true))

(assert (=> d!736924 (forall!6191 (t!213161 l!3766) lambda!97339)))

(assert (=> d!736924 true))

(declare-fun _$91!449 () Unit!44029)

(assert (=> d!736924 (= (choose!15460 (t!213161 l!3766) refL!9 refHd!9) _$91!449)))

(declare-fun m!2936223 () Bool)

(assert (=> bs!473213 m!2936223))

(assert (=> d!736892 d!736924))

(assert (=> d!736892 d!736886))

(declare-fun d!736926 () Bool)

(declare-fun lt!915365 () Bool)

(assert (=> d!736926 (= lt!915365 (set.member refHd!9 (content!4264 (t!213161 l!3766))))))

(declare-fun e!1641933 () Bool)

(assert (=> d!736926 (= lt!915365 e!1641933)))

(declare-fun res!1095781 () Bool)

(assert (=> d!736926 (=> (not res!1095781) (not e!1641933))))

(assert (=> d!736926 (= res!1095781 (is-Cons!30012 (t!213161 l!3766)))))

(assert (=> d!736926 (= (contains!5556 (t!213161 l!3766) refHd!9) lt!915365)))

(declare-fun b!2601104 () Bool)

(declare-fun e!1641932 () Bool)

(assert (=> b!2601104 (= e!1641933 e!1641932)))

(declare-fun res!1095780 () Bool)

(assert (=> b!2601104 (=> res!1095780 e!1641932)))

(assert (=> b!2601104 (= res!1095780 (= (h!35432 (t!213161 l!3766)) refHd!9))))

(declare-fun b!2601105 () Bool)

(assert (=> b!2601105 (= e!1641932 (contains!5556 (t!213161 (t!213161 l!3766)) refHd!9))))

(assert (= (and d!736926 res!1095781) b!2601104))

(assert (= (and b!2601104 (not res!1095780)) b!2601105))

(declare-fun m!2936225 () Bool)

(assert (=> d!736926 m!2936225))

(declare-fun m!2936227 () Bool)

(assert (=> d!736926 m!2936227))

(declare-fun m!2936229 () Bool)

(assert (=> b!2601105 m!2936229))

(assert (=> b!2601065 d!736926))

(declare-fun d!736928 () Bool)

(declare-fun res!1095782 () Bool)

(declare-fun e!1641934 () Bool)

(assert (=> d!736928 (=> res!1095782 e!1641934)))

(assert (=> d!736928 (= res!1095782 (is-Nil!30012 (t!213161 l!3766)))))

(assert (=> d!736928 (= (forall!6191 (t!213161 l!3766) lambda!97324) e!1641934)))

(declare-fun b!2601106 () Bool)

(declare-fun e!1641935 () Bool)

(assert (=> b!2601106 (= e!1641934 e!1641935)))

(declare-fun res!1095783 () Bool)

(assert (=> b!2601106 (=> (not res!1095783) (not e!1641935))))

(assert (=> b!2601106 (= res!1095783 (dynLambda!12693 lambda!97324 (h!35432 (t!213161 l!3766))))))

(declare-fun b!2601107 () Bool)

(assert (=> b!2601107 (= e!1641935 (forall!6191 (t!213161 (t!213161 l!3766)) lambda!97324))))

(assert (= (and d!736928 (not res!1095782)) b!2601106))

(assert (= (and b!2601106 res!1095783) b!2601107))

(declare-fun b_lambda!77909 () Bool)

(assert (=> (not b_lambda!77909) (not b!2601106)))

(declare-fun m!2936231 () Bool)

(assert (=> b!2601106 m!2936231))

(declare-fun m!2936233 () Bool)

(assert (=> b!2601107 m!2936233))

(assert (=> b!2601071 d!736928))

(declare-fun d!736930 () Bool)

(declare-fun res!1095784 () Bool)

(declare-fun e!1641936 () Bool)

(assert (=> d!736930 (=> res!1095784 e!1641936)))

(assert (=> d!736930 (= res!1095784 (is-Nil!30012 (t!213161 l!3766)))))

(assert (=> d!736930 (= (forall!6191 (t!213161 l!3766) lambda!97323) e!1641936)))

(declare-fun b!2601108 () Bool)

(declare-fun e!1641937 () Bool)

(assert (=> b!2601108 (= e!1641936 e!1641937)))

(declare-fun res!1095785 () Bool)

(assert (=> b!2601108 (=> (not res!1095785) (not e!1641937))))

(assert (=> b!2601108 (= res!1095785 (dynLambda!12693 lambda!97323 (h!35432 (t!213161 l!3766))))))

(declare-fun b!2601109 () Bool)

(assert (=> b!2601109 (= e!1641937 (forall!6191 (t!213161 (t!213161 l!3766)) lambda!97323))))

(assert (= (and d!736930 (not res!1095784)) b!2601108))

(assert (= (and b!2601108 res!1095785) b!2601109))

(declare-fun b_lambda!77911 () Bool)

(assert (=> (not b_lambda!77911) (not b!2601108)))

(declare-fun m!2936235 () Bool)

(assert (=> b!2601108 m!2936235))

(declare-fun m!2936237 () Bool)

(assert (=> b!2601109 m!2936237))

(assert (=> b!2601073 d!736930))

(declare-fun d!736932 () Bool)

(declare-fun lt!915366 () Bool)

(assert (=> d!736932 (= lt!915366 (set.member (h!35432 l!3766) (content!4264 (tail!4173 refL!9))))))

(declare-fun e!1641939 () Bool)

(assert (=> d!736932 (= lt!915366 e!1641939)))

(declare-fun res!1095787 () Bool)

(assert (=> d!736932 (=> (not res!1095787) (not e!1641939))))

(assert (=> d!736932 (= res!1095787 (is-Cons!30012 (tail!4173 refL!9)))))

(assert (=> d!736932 (= (contains!5556 (tail!4173 refL!9) (h!35432 l!3766)) lt!915366)))

(declare-fun b!2601110 () Bool)

(declare-fun e!1641938 () Bool)

(assert (=> b!2601110 (= e!1641939 e!1641938)))

(declare-fun res!1095786 () Bool)

(assert (=> b!2601110 (=> res!1095786 e!1641938)))

(assert (=> b!2601110 (= res!1095786 (= (h!35432 (tail!4173 refL!9)) (h!35432 l!3766)))))

(declare-fun b!2601111 () Bool)

(assert (=> b!2601111 (= e!1641938 (contains!5556 (t!213161 (tail!4173 refL!9)) (h!35432 l!3766)))))

(assert (= (and d!736932 res!1095787) b!2601110))

(assert (= (and b!2601110 (not res!1095786)) b!2601111))

(declare-fun m!2936239 () Bool)

(assert (=> d!736932 m!2936239))

(declare-fun m!2936241 () Bool)

(assert (=> d!736932 m!2936241))

(declare-fun m!2936243 () Bool)

(assert (=> b!2601111 m!2936243))

(assert (=> bs!473206 d!736932))

(declare-fun d!736934 () Bool)

(declare-fun c!418671 () Bool)

(assert (=> d!736934 (= c!418671 (is-Nil!30012 l!3766))))

(declare-fun e!1641942 () (Set B!2423))

(assert (=> d!736934 (= (content!4264 l!3766) e!1641942)))

(declare-fun b!2601116 () Bool)

(assert (=> b!2601116 (= e!1641942 (as set.empty (Set B!2423)))))

(declare-fun b!2601117 () Bool)

(assert (=> b!2601117 (= e!1641942 (set.union (set.insert (h!35432 l!3766) (as set.empty (Set B!2423))) (content!4264 (t!213161 l!3766))))))

(assert (= (and d!736934 c!418671) b!2601116))

(assert (= (and d!736934 (not c!418671)) b!2601117))

(declare-fun m!2936245 () Bool)

(assert (=> b!2601117 m!2936245))

(assert (=> b!2601117 m!2936225))

(assert (=> d!736884 d!736934))

(declare-fun b!2601118 () Bool)

(declare-fun e!1641943 () Bool)

(declare-fun tp!824033 () Bool)

(assert (=> b!2601118 (= e!1641943 (and tp_is_empty!13703 tp!824033))))

(assert (=> b!2601079 (= tp!824028 e!1641943)))

(assert (= (and b!2601079 (is-Cons!30012 (t!213161 (t!213161 refL!9)))) b!2601118))

(declare-fun b!2601119 () Bool)

(declare-fun e!1641944 () Bool)

(declare-fun tp!824034 () Bool)

(assert (=> b!2601119 (= e!1641944 (and tp_is_empty!13703 tp!824034))))

(assert (=> b!2601078 (= tp!824027 e!1641944)))

(assert (= (and b!2601078 (is-Cons!30012 (t!213161 (t!213161 l!3766)))) b!2601119))

(declare-fun b_lambda!77913 () Bool)

(assert (= b_lambda!77909 (or b!2601028 b_lambda!77913)))

(declare-fun bs!473217 () Bool)

(declare-fun d!736936 () Bool)

(assert (= bs!473217 (and d!736936 b!2601028)))

(assert (=> bs!473217 (= (dynLambda!12693 lambda!97324 (h!35432 (t!213161 l!3766))) (contains!5556 (tail!4173 refL!9) (h!35432 (t!213161 l!3766))))))

(declare-fun m!2936247 () Bool)

(assert (=> bs!473217 m!2936247))

(assert (=> b!2601106 d!736936))

(declare-fun b_lambda!77915 () Bool)

(assert (= b_lambda!77907 (or d!736892 b_lambda!77915)))

(declare-fun bs!473218 () Bool)

(declare-fun d!736938 () Bool)

(assert (= bs!473218 (and d!736938 d!736892)))

(assert (=> bs!473218 (= (dynLambda!12693 lambda!97333 (h!35432 (t!213161 l!3766))) (contains!5556 (tail!4173 refL!9) (h!35432 (t!213161 l!3766))))))

(assert (=> bs!473218 m!2936247))

(assert (=> b!2601102 d!736938))

(declare-fun b_lambda!77917 () Bool)

(assert (= b_lambda!77911 (or b!2601029 b_lambda!77917)))

(declare-fun bs!473219 () Bool)

(declare-fun d!736940 () Bool)

(assert (= bs!473219 (and d!736940 b!2601029)))

(assert (=> bs!473219 (= (dynLambda!12693 lambda!97323 (h!35432 (t!213161 l!3766))) (contains!5556 refL!9 (h!35432 (t!213161 l!3766))))))

(declare-fun m!2936249 () Bool)

(assert (=> bs!473219 m!2936249))

(assert (=> b!2601108 d!736940))

(push 1)

(assert (not b_lambda!77895))

(assert (not b!2601101))

(assert (not b_lambda!77897))

(assert tp_is_empty!13703)

(assert (not b!2601118))

(assert (not d!736926))

(assert (not b!2601105))

(assert (not b!2601107))

(assert (not bs!473219))

(assert (not b!2601103))

(assert (not b!2601109))

(assert (not b_lambda!77913))

(assert (not b!2601111))

(assert (not d!736924))

(assert (not d!736932))

(assert (not bs!473217))

(assert (not d!736920))

(assert (not b!2601119))

(assert (not b_lambda!77917))

(assert (not b_lambda!77915))

(assert (not b!2601117))

(assert (not bs!473218))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

