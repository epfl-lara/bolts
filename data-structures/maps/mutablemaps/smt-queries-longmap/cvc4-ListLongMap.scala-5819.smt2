; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75078 () Bool)

(assert start!75078)

(declare-fun res!601196 () Bool)

(declare-fun e!492506 () Bool)

(assert (=> start!75078 (=> (not res!601196) (not e!492506))))

(declare-datatypes ((B!1236 0))(
  ( (B!1237 (val!8924 Int)) )
))
(declare-datatypes ((tuple2!11868 0))(
  ( (tuple2!11869 (_1!5944 (_ BitVec 64)) (_2!5944 B!1236)) )
))
(declare-datatypes ((List!17724 0))(
  ( (Nil!17721) (Cons!17720 (h!18851 tuple2!11868) (t!25009 List!17724)) )
))
(declare-datatypes ((ListLongMap!10651 0))(
  ( (ListLongMap!10652 (toList!5341 List!17724)) )
))
(declare-fun lm!210 () ListLongMap!10651)

(declare-fun isStrictlySorted!463 (List!17724) Bool)

(assert (=> start!75078 (= res!601196 (isStrictlySorted!463 (toList!5341 lm!210)))))

(assert (=> start!75078 e!492506))

(declare-fun e!492505 () Bool)

(declare-fun inv!29371 (ListLongMap!10651) Bool)

(assert (=> start!75078 (and (inv!29371 lm!210) e!492505)))

(assert (=> start!75078 true))

(declare-fun tp_is_empty!17747 () Bool)

(assert (=> start!75078 tp_is_empty!17747))

(declare-fun b!884883 () Bool)

(declare-fun b1!76 () B!1236)

(declare-fun lt!400841 () tuple2!11868)

(declare-fun a!500 () (_ BitVec 64))

(declare-fun +!2538 (ListLongMap!10651 tuple2!11868) ListLongMap!10651)

(assert (=> b!884883 (= e!492506 (not (= (+!2538 lm!210 lt!400841) (+!2538 (+!2538 lm!210 (tuple2!11869 a!500 b1!76)) lt!400841))))))

(declare-fun b2!54 () B!1236)

(assert (=> b!884883 (= lt!400841 (tuple2!11869 a!500 b2!54))))

(declare-fun insertStrictlySorted!284 (List!17724 (_ BitVec 64) B!1236) List!17724)

(assert (=> b!884883 (= (insertStrictlySorted!284 (insertStrictlySorted!284 (toList!5341 lm!210) a!500 b1!76) a!500 b2!54) (insertStrictlySorted!284 (toList!5341 lm!210) a!500 b2!54))))

(declare-datatypes ((Unit!30185 0))(
  ( (Unit!30186) )
))
(declare-fun lt!400842 () Unit!30185)

(declare-fun lemmaInsertStrictlySortedErasesIfSameKey!3 (List!17724 (_ BitVec 64) B!1236 B!1236) Unit!30185)

(assert (=> b!884883 (= lt!400842 (lemmaInsertStrictlySortedErasesIfSameKey!3 (toList!5341 lm!210) a!500 b1!76 b2!54))))

(declare-fun b!884884 () Bool)

(declare-fun tp!54219 () Bool)

(assert (=> b!884884 (= e!492505 tp!54219)))

(assert (= (and start!75078 res!601196) b!884883))

(assert (= start!75078 b!884884))

(declare-fun m!825245 () Bool)

(assert (=> start!75078 m!825245))

(declare-fun m!825247 () Bool)

(assert (=> start!75078 m!825247))

(declare-fun m!825249 () Bool)

(assert (=> b!884883 m!825249))

(declare-fun m!825251 () Bool)

(assert (=> b!884883 m!825251))

(declare-fun m!825253 () Bool)

(assert (=> b!884883 m!825253))

(declare-fun m!825255 () Bool)

(assert (=> b!884883 m!825255))

(assert (=> b!884883 m!825253))

(assert (=> b!884883 m!825249))

(declare-fun m!825257 () Bool)

(assert (=> b!884883 m!825257))

(declare-fun m!825259 () Bool)

(assert (=> b!884883 m!825259))

(declare-fun m!825261 () Bool)

(assert (=> b!884883 m!825261))

(push 1)

(assert (not start!75078))

(assert (not b!884883))

(assert (not b!884884))

(assert tp_is_empty!17747)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!109229 () Bool)

(declare-fun res!601201 () Bool)

(declare-fun e!492511 () Bool)

(assert (=> d!109229 (=> res!601201 e!492511)))

(assert (=> d!109229 (= res!601201 (or (is-Nil!17721 (toList!5341 lm!210)) (is-Nil!17721 (t!25009 (toList!5341 lm!210)))))))

(assert (=> d!109229 (= (isStrictlySorted!463 (toList!5341 lm!210)) e!492511)))

(declare-fun b!884889 () Bool)

(declare-fun e!492512 () Bool)

(assert (=> b!884889 (= e!492511 e!492512)))

(declare-fun res!601202 () Bool)

(assert (=> b!884889 (=> (not res!601202) (not e!492512))))

(assert (=> b!884889 (= res!601202 (bvslt (_1!5944 (h!18851 (toList!5341 lm!210))) (_1!5944 (h!18851 (t!25009 (toList!5341 lm!210))))))))

(declare-fun b!884890 () Bool)

(assert (=> b!884890 (= e!492512 (isStrictlySorted!463 (t!25009 (toList!5341 lm!210))))))

(assert (= (and d!109229 (not res!601201)) b!884889))

(assert (= (and b!884889 res!601202) b!884890))

(declare-fun m!825263 () Bool)

(assert (=> b!884890 m!825263))

(assert (=> start!75078 d!109229))

(declare-fun d!109235 () Bool)

(assert (=> d!109235 (= (inv!29371 lm!210) (isStrictlySorted!463 (toList!5341 lm!210)))))

(declare-fun bs!24799 () Bool)

(assert (= bs!24799 d!109235))

(assert (=> bs!24799 m!825245))

(assert (=> start!75078 d!109235))

(declare-fun b!884967 () Bool)

(declare-fun e!492554 () List!17724)

(assert (=> b!884967 (= e!492554 (insertStrictlySorted!284 (t!25009 (toList!5341 lm!210)) a!500 b2!54))))

(declare-fun bm!39041 () Bool)

(declare-fun call!39044 () List!17724)

(declare-fun call!39045 () List!17724)

(assert (=> bm!39041 (= call!39044 call!39045)))

(declare-fun bm!39042 () Bool)

(declare-fun call!39046 () List!17724)

(assert (=> bm!39042 (= call!39045 call!39046)))

(declare-fun e!492556 () Bool)

(declare-fun b!884968 () Bool)

(declare-fun lt!400850 () List!17724)

(declare-fun contains!4280 (List!17724 tuple2!11868) Bool)

(assert (=> b!884968 (= e!492556 (contains!4280 lt!400850 (tuple2!11869 a!500 b2!54)))))

(declare-fun b!884969 () Bool)

(declare-fun e!492558 () List!17724)

(assert (=> b!884969 (= e!492558 call!39044)))

(declare-fun b!884971 () Bool)

(declare-fun e!492555 () List!17724)

(declare-fun e!492557 () List!17724)

(assert (=> b!884971 (= e!492555 e!492557)))

(declare-fun c!93135 () Bool)

(assert (=> b!884971 (= c!93135 (and (is-Cons!17720 (toList!5341 lm!210)) (= (_1!5944 (h!18851 (toList!5341 lm!210))) a!500)))))

(declare-fun b!884972 () Bool)

(declare-fun c!93134 () Bool)

(assert (=> b!884972 (= c!93134 (and (is-Cons!17720 (toList!5341 lm!210)) (bvsgt (_1!5944 (h!18851 (toList!5341 lm!210))) a!500)))))

(assert (=> b!884972 (= e!492557 e!492558)))

(declare-fun b!884973 () Bool)

(assert (=> b!884973 (= e!492554 (ite c!93135 (t!25009 (toList!5341 lm!210)) (ite c!93134 (Cons!17720 (h!18851 (toList!5341 lm!210)) (t!25009 (toList!5341 lm!210))) Nil!17721)))))

(declare-fun b!884974 () Bool)

(assert (=> b!884974 (= e!492558 call!39044)))

(declare-fun b!884975 () Bool)

(assert (=> b!884975 (= e!492557 call!39045)))

(declare-fun b!884976 () Bool)

(assert (=> b!884976 (= e!492555 call!39046)))

(declare-fun c!93133 () Bool)

(declare-fun bm!39043 () Bool)

(declare-fun $colon$colon!540 (List!17724 tuple2!11868) List!17724)

(assert (=> bm!39043 (= call!39046 ($colon$colon!540 e!492554 (ite c!93133 (h!18851 (toList!5341 lm!210)) (tuple2!11869 a!500 b2!54))))))

(declare-fun c!93132 () Bool)

(assert (=> bm!39043 (= c!93132 c!93133)))

(declare-fun d!109237 () Bool)

(assert (=> d!109237 e!492556))

(declare-fun res!601224 () Bool)

(assert (=> d!109237 (=> (not res!601224) (not e!492556))))

(assert (=> d!109237 (= res!601224 (isStrictlySorted!463 lt!400850))))

(assert (=> d!109237 (= lt!400850 e!492555)))

(assert (=> d!109237 (= c!93133 (and (is-Cons!17720 (toList!5341 lm!210)) (bvslt (_1!5944 (h!18851 (toList!5341 lm!210))) a!500)))))

(assert (=> d!109237 (isStrictlySorted!463 (toList!5341 lm!210))))

(assert (=> d!109237 (= (insertStrictlySorted!284 (toList!5341 lm!210) a!500 b2!54) lt!400850)))

(declare-fun b!884970 () Bool)

(declare-fun res!601223 () Bool)

(assert (=> b!884970 (=> (not res!601223) (not e!492556))))

(declare-fun containsKey!405 (List!17724 (_ BitVec 64)) Bool)

(assert (=> b!884970 (= res!601223 (containsKey!405 lt!400850 a!500))))

(assert (= (and d!109237 c!93133) b!884976))

(assert (= (and d!109237 (not c!93133)) b!884971))

(assert (= (and b!884971 c!93135) b!884975))

(assert (= (and b!884971 (not c!93135)) b!884972))

(assert (= (and b!884972 c!93134) b!884969))

(assert (= (and b!884972 (not c!93134)) b!884974))

(assert (= (or b!884969 b!884974) bm!39041))

(assert (= (or b!884975 bm!39041) bm!39042))

(assert (= (or b!884976 bm!39042) bm!39043))

(assert (= (and bm!39043 c!93132) b!884967))

(assert (= (and bm!39043 (not c!93132)) b!884973))

(assert (= (and d!109237 res!601224) b!884970))

(assert (= (and b!884970 res!601223) b!884968))

(declare-fun m!825277 () Bool)

(assert (=> b!884970 m!825277))

(declare-fun m!825279 () Bool)

(assert (=> d!109237 m!825279))

(assert (=> d!109237 m!825245))

(declare-fun m!825281 () Bool)

(assert (=> b!884968 m!825281))

(declare-fun m!825283 () Bool)

(assert (=> b!884967 m!825283))

(declare-fun m!825285 () Bool)

(assert (=> bm!39043 m!825285))

(assert (=> b!884883 d!109237))

(declare-fun d!109245 () Bool)

(declare-fun e!492572 () Bool)

(assert (=> d!109245 e!492572))

(declare-fun res!601243 () Bool)

(assert (=> d!109245 (=> (not res!601243) (not e!492572))))

(declare-fun lt!400887 () ListLongMap!10651)

(declare-fun contains!4284 (ListLongMap!10651 (_ BitVec 64)) Bool)

(assert (=> d!109245 (= res!601243 (contains!4284 lt!400887 (_1!5944 lt!400841)))))

(declare-fun lt!400885 () List!17724)

(assert (=> d!109245 (= lt!400887 (ListLongMap!10652 lt!400885))))

(declare-fun lt!400884 () Unit!30185)

(declare-fun lt!400886 () Unit!30185)

(assert (=> d!109245 (= lt!400884 lt!400886)))

(declare-datatypes ((Option!436 0))(
  ( (Some!435 (v!11391 B!1236)) (None!434) )
))
(declare-fun getValueByKey!430 (List!17724 (_ BitVec 64)) Option!436)

(assert (=> d!109245 (= (getValueByKey!430 lt!400885 (_1!5944 lt!400841)) (Some!435 (_2!5944 lt!400841)))))

(declare-fun lemmaContainsTupThenGetReturnValue!246 (List!17724 (_ BitVec 64) B!1236) Unit!30185)

(assert (=> d!109245 (= lt!400886 (lemmaContainsTupThenGetReturnValue!246 lt!400885 (_1!5944 lt!400841) (_2!5944 lt!400841)))))

(assert (=> d!109245 (= lt!400885 (insertStrictlySorted!284 (toList!5341 (+!2538 lm!210 (tuple2!11869 a!500 b1!76))) (_1!5944 lt!400841) (_2!5944 lt!400841)))))

(assert (=> d!109245 (= (+!2538 (+!2538 lm!210 (tuple2!11869 a!500 b1!76)) lt!400841) lt!400887)))

(declare-fun b!885003 () Bool)

(declare-fun res!601244 () Bool)

(assert (=> b!885003 (=> (not res!601244) (not e!492572))))

(assert (=> b!885003 (= res!601244 (= (getValueByKey!430 (toList!5341 lt!400887) (_1!5944 lt!400841)) (Some!435 (_2!5944 lt!400841))))))

(declare-fun b!885004 () Bool)

(assert (=> b!885004 (= e!492572 (contains!4280 (toList!5341 lt!400887) lt!400841))))

(assert (= (and d!109245 res!601243) b!885003))

(assert (= (and b!885003 res!601244) b!885004))

(declare-fun m!825321 () Bool)

(assert (=> d!109245 m!825321))

(declare-fun m!825323 () Bool)

(assert (=> d!109245 m!825323))

(declare-fun m!825325 () Bool)

(assert (=> d!109245 m!825325))

(declare-fun m!825327 () Bool)

(assert (=> d!109245 m!825327))

(declare-fun m!825329 () Bool)

(assert (=> b!885003 m!825329))

(declare-fun m!825331 () Bool)

(assert (=> b!885004 m!825331))

(assert (=> b!884883 d!109245))

(declare-fun d!109253 () Bool)

(assert (=> d!109253 (= (insertStrictlySorted!284 (insertStrictlySorted!284 (toList!5341 lm!210) a!500 b1!76) a!500 b2!54) (insertStrictlySorted!284 (toList!5341 lm!210) a!500 b2!54))))

(declare-fun lt!400903 () Unit!30185)

(declare-fun choose!1454 (List!17724 (_ BitVec 64) B!1236 B!1236) Unit!30185)

(assert (=> d!109253 (= lt!400903 (choose!1454 (toList!5341 lm!210) a!500 b1!76 b2!54))))

(assert (=> d!109253 (isStrictlySorted!463 (toList!5341 lm!210))))

(assert (=> d!109253 (= (lemmaInsertStrictlySortedErasesIfSameKey!3 (toList!5341 lm!210) a!500 b1!76 b2!54) lt!400903)))

(declare-fun bs!24802 () Bool)

(assert (= bs!24802 d!109253))

(declare-fun m!825369 () Bool)

(assert (=> bs!24802 m!825369))

(assert (=> bs!24802 m!825253))

(assert (=> bs!24802 m!825253))

(assert (=> bs!24802 m!825255))

(assert (=> bs!24802 m!825261))

(assert (=> bs!24802 m!825245))

(assert (=> b!884883 d!109253))

(declare-fun b!885029 () Bool)

(declare-fun e!492585 () List!17724)

(assert (=> b!885029 (= e!492585 (insertStrictlySorted!284 (t!25009 (toList!5341 lm!210)) a!500 b1!76))))

(declare-fun bm!39053 () Bool)

(declare-fun call!39056 () List!17724)

(declare-fun call!39057 () List!17724)

(assert (=> bm!39053 (= call!39056 call!39057)))

(declare-fun bm!39054 () Bool)

(declare-fun call!39058 () List!17724)

(assert (=> bm!39054 (= call!39057 call!39058)))

(declare-fun e!492587 () Bool)

(declare-fun b!885030 () Bool)

(declare-fun lt!400904 () List!17724)

(assert (=> b!885030 (= e!492587 (contains!4280 lt!400904 (tuple2!11869 a!500 b1!76)))))

(declare-fun b!885031 () Bool)

(declare-fun e!492589 () List!17724)

(assert (=> b!885031 (= e!492589 call!39056)))

(declare-fun b!885033 () Bool)

(declare-fun e!492586 () List!17724)

(declare-fun e!492588 () List!17724)

(assert (=> b!885033 (= e!492586 e!492588)))

(declare-fun c!93151 () Bool)

(assert (=> b!885033 (= c!93151 (and (is-Cons!17720 (toList!5341 lm!210)) (= (_1!5944 (h!18851 (toList!5341 lm!210))) a!500)))))

(declare-fun b!885034 () Bool)

(declare-fun c!93150 () Bool)

(assert (=> b!885034 (= c!93150 (and (is-Cons!17720 (toList!5341 lm!210)) (bvsgt (_1!5944 (h!18851 (toList!5341 lm!210))) a!500)))))

(assert (=> b!885034 (= e!492588 e!492589)))

(declare-fun b!885035 () Bool)

(assert (=> b!885035 (= e!492585 (ite c!93151 (t!25009 (toList!5341 lm!210)) (ite c!93150 (Cons!17720 (h!18851 (toList!5341 lm!210)) (t!25009 (toList!5341 lm!210))) Nil!17721)))))

(declare-fun b!885036 () Bool)

(assert (=> b!885036 (= e!492589 call!39056)))

(declare-fun b!885037 () Bool)

(assert (=> b!885037 (= e!492588 call!39057)))

(declare-fun b!885038 () Bool)

(assert (=> b!885038 (= e!492586 call!39058)))

(declare-fun bm!39055 () Bool)

(declare-fun c!93149 () Bool)

(assert (=> bm!39055 (= call!39058 ($colon$colon!540 e!492585 (ite c!93149 (h!18851 (toList!5341 lm!210)) (tuple2!11869 a!500 b1!76))))))

(declare-fun c!93148 () Bool)

(assert (=> bm!39055 (= c!93148 c!93149)))

(declare-fun d!109263 () Bool)

(assert (=> d!109263 e!492587))

(declare-fun res!601254 () Bool)

(assert (=> d!109263 (=> (not res!601254) (not e!492587))))

(assert (=> d!109263 (= res!601254 (isStrictlySorted!463 lt!400904))))

(assert (=> d!109263 (= lt!400904 e!492586)))

(assert (=> d!109263 (= c!93149 (and (is-Cons!17720 (toList!5341 lm!210)) (bvslt (_1!5944 (h!18851 (toList!5341 lm!210))) a!500)))))

(assert (=> d!109263 (isStrictlySorted!463 (toList!5341 lm!210))))

(assert (=> d!109263 (= (insertStrictlySorted!284 (toList!5341 lm!210) a!500 b1!76) lt!400904)))

(declare-fun b!885032 () Bool)

(declare-fun res!601253 () Bool)

(assert (=> b!885032 (=> (not res!601253) (not e!492587))))

(assert (=> b!885032 (= res!601253 (containsKey!405 lt!400904 a!500))))

(assert (= (and d!109263 c!93149) b!885038))

(assert (= (and d!109263 (not c!93149)) b!885033))

(assert (= (and b!885033 c!93151) b!885037))

(assert (= (and b!885033 (not c!93151)) b!885034))

(assert (= (and b!885034 c!93150) b!885031))

(assert (= (and b!885034 (not c!93150)) b!885036))

(assert (= (or b!885031 b!885036) bm!39053))

(assert (= (or b!885037 bm!39053) bm!39054))

(assert (= (or b!885038 bm!39054) bm!39055))

(assert (= (and bm!39055 c!93148) b!885029))

(assert (= (and bm!39055 (not c!93148)) b!885035))

(assert (= (and d!109263 res!601254) b!885032))

(assert (= (and b!885032 res!601253) b!885030))

(declare-fun m!825383 () Bool)

(assert (=> b!885032 m!825383))

(declare-fun m!825385 () Bool)

(assert (=> d!109263 m!825385))

(assert (=> d!109263 m!825245))

(declare-fun m!825387 () Bool)

(assert (=> b!885030 m!825387))

(declare-fun m!825389 () Bool)

(assert (=> b!885029 m!825389))

(declare-fun m!825391 () Bool)

(assert (=> bm!39055 m!825391))

(assert (=> b!884883 d!109263))

(declare-fun b!885039 () Bool)

(declare-fun e!492590 () List!17724)

(assert (=> b!885039 (= e!492590 (insertStrictlySorted!284 (t!25009 (insertStrictlySorted!284 (toList!5341 lm!210) a!500 b1!76)) a!500 b2!54))))

(declare-fun bm!39056 () Bool)

(declare-fun call!39059 () List!17724)

(declare-fun call!39060 () List!17724)

(assert (=> bm!39056 (= call!39059 call!39060)))

(declare-fun bm!39057 () Bool)

(declare-fun call!39061 () List!17724)

(assert (=> bm!39057 (= call!39060 call!39061)))

(declare-fun b!885040 () Bool)

(declare-fun e!492592 () Bool)

(declare-fun lt!400908 () List!17724)

(assert (=> b!885040 (= e!492592 (contains!4280 lt!400908 (tuple2!11869 a!500 b2!54)))))

(declare-fun b!885041 () Bool)

(declare-fun e!492594 () List!17724)

(assert (=> b!885041 (= e!492594 call!39059)))

(declare-fun b!885043 () Bool)

(declare-fun e!492591 () List!17724)

(declare-fun e!492593 () List!17724)

(assert (=> b!885043 (= e!492591 e!492593)))

(declare-fun c!93155 () Bool)

(assert (=> b!885043 (= c!93155 (and (is-Cons!17720 (insertStrictlySorted!284 (toList!5341 lm!210) a!500 b1!76)) (= (_1!5944 (h!18851 (insertStrictlySorted!284 (toList!5341 lm!210) a!500 b1!76))) a!500)))))

(declare-fun c!93154 () Bool)

(declare-fun b!885044 () Bool)

(assert (=> b!885044 (= c!93154 (and (is-Cons!17720 (insertStrictlySorted!284 (toList!5341 lm!210) a!500 b1!76)) (bvsgt (_1!5944 (h!18851 (insertStrictlySorted!284 (toList!5341 lm!210) a!500 b1!76))) a!500)))))

(assert (=> b!885044 (= e!492593 e!492594)))

(declare-fun b!885045 () Bool)

(assert (=> b!885045 (= e!492590 (ite c!93155 (t!25009 (insertStrictlySorted!284 (toList!5341 lm!210) a!500 b1!76)) (ite c!93154 (Cons!17720 (h!18851 (insertStrictlySorted!284 (toList!5341 lm!210) a!500 b1!76)) (t!25009 (insertStrictlySorted!284 (toList!5341 lm!210) a!500 b1!76))) Nil!17721)))))

(declare-fun b!885046 () Bool)

(assert (=> b!885046 (= e!492594 call!39059)))

(declare-fun b!885047 () Bool)

(assert (=> b!885047 (= e!492593 call!39060)))

(declare-fun b!885048 () Bool)

(assert (=> b!885048 (= e!492591 call!39061)))

(declare-fun bm!39058 () Bool)

(declare-fun c!93153 () Bool)

(assert (=> bm!39058 (= call!39061 ($colon$colon!540 e!492590 (ite c!93153 (h!18851 (insertStrictlySorted!284 (toList!5341 lm!210) a!500 b1!76)) (tuple2!11869 a!500 b2!54))))))

(declare-fun c!93152 () Bool)

(assert (=> bm!39058 (= c!93152 c!93153)))

(declare-fun d!109267 () Bool)

(assert (=> d!109267 e!492592))

(declare-fun res!601256 () Bool)

(assert (=> d!109267 (=> (not res!601256) (not e!492592))))

(assert (=> d!109267 (= res!601256 (isStrictlySorted!463 lt!400908))))

(assert (=> d!109267 (= lt!400908 e!492591)))

(assert (=> d!109267 (= c!93153 (and (is-Cons!17720 (insertStrictlySorted!284 (toList!5341 lm!210) a!500 b1!76)) (bvslt (_1!5944 (h!18851 (insertStrictlySorted!284 (toList!5341 lm!210) a!500 b1!76))) a!500)))))

(assert (=> d!109267 (isStrictlySorted!463 (insertStrictlySorted!284 (toList!5341 lm!210) a!500 b1!76))))

(assert (=> d!109267 (= (insertStrictlySorted!284 (insertStrictlySorted!284 (toList!5341 lm!210) a!500 b1!76) a!500 b2!54) lt!400908)))

(declare-fun b!885042 () Bool)

(declare-fun res!601255 () Bool)

(assert (=> b!885042 (=> (not res!601255) (not e!492592))))

(assert (=> b!885042 (= res!601255 (containsKey!405 lt!400908 a!500))))

(assert (= (and d!109267 c!93153) b!885048))

(assert (= (and d!109267 (not c!93153)) b!885043))

(assert (= (and b!885043 c!93155) b!885047))

(assert (= (and b!885043 (not c!93155)) b!885044))

(assert (= (and b!885044 c!93154) b!885041))

(assert (= (and b!885044 (not c!93154)) b!885046))

(assert (= (or b!885041 b!885046) bm!39056))

(assert (= (or b!885047 bm!39056) bm!39057))

(assert (= (or b!885048 bm!39057) bm!39058))

(assert (= (and bm!39058 c!93152) b!885039))

(assert (= (and bm!39058 (not c!93152)) b!885045))

(assert (= (and d!109267 res!601256) b!885042))

(assert (= (and b!885042 res!601255) b!885040))

