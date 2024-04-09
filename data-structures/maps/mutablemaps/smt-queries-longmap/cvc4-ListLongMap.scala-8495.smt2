; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103546 () Bool)

(assert start!103546)

(declare-fun res!827782 () Bool)

(declare-fun e!703117 () Bool)

(assert (=> start!103546 (=> (not res!827782) (not e!703117))))

(declare-fun a1!66 () (_ BitVec 64))

(declare-fun a2!55 () (_ BitVec 64))

(assert (=> start!103546 (= res!827782 (not (= a1!66 a2!55)))))

(assert (=> start!103546 e!703117))

(assert (=> start!103546 true))

(declare-datatypes ((B!1800 0))(
  ( (B!1801 (val!15662 Int)) )
))
(declare-datatypes ((tuple2!20352 0))(
  ( (tuple2!20353 (_1!10186 (_ BitVec 64)) (_2!10186 B!1800)) )
))
(declare-datatypes ((List!27491 0))(
  ( (Nil!27488) (Cons!27487 (h!28696 tuple2!20352) (t!40961 List!27491)) )
))
(declare-datatypes ((ListLongMap!18333 0))(
  ( (ListLongMap!18334 (toList!9182 List!27491)) )
))
(declare-fun lm!211 () ListLongMap!18333)

(declare-fun e!703118 () Bool)

(declare-fun inv!42775 (ListLongMap!18333) Bool)

(assert (=> start!103546 (and (inv!42775 lm!211) e!703118)))

(declare-fun tp_is_empty!31199 () Bool)

(assert (=> start!103546 tp_is_empty!31199))

(declare-fun b!1240420 () Bool)

(declare-fun res!827781 () Bool)

(assert (=> b!1240420 (=> (not res!827781) (not e!703117))))

(declare-fun isStrictlySorted!731 (List!27491) Bool)

(assert (=> b!1240420 (= res!827781 (isStrictlySorted!731 (toList!9182 lm!211)))))

(declare-fun lt!561876 () tuple2!20352)

(declare-fun b!1240421 () Bool)

(declare-fun -!2008 (ListLongMap!18333 (_ BitVec 64)) ListLongMap!18333)

(declare-fun +!4122 (ListLongMap!18333 tuple2!20352) ListLongMap!18333)

(assert (=> b!1240421 (= e!703117 (not (= (-!2008 (+!4122 lm!211 lt!561876) a2!55) (+!4122 (-!2008 lm!211 a2!55) lt!561876))))))

(declare-fun b1!77 () B!1800)

(assert (=> b!1240421 (= lt!561876 (tuple2!20353 a1!66 b1!77))))

(declare-fun insertStrictlySorted!421 (List!27491 (_ BitVec 64) B!1800) List!27491)

(declare-fun removeStrictlySorted!115 (List!27491 (_ BitVec 64)) List!27491)

(assert (=> b!1240421 (= (insertStrictlySorted!421 (removeStrictlySorted!115 (toList!9182 lm!211) a2!55) a1!66 b1!77) (removeStrictlySorted!115 (insertStrictlySorted!421 (toList!9182 lm!211) a1!66 b1!77) a2!55))))

(declare-datatypes ((Unit!41177 0))(
  ( (Unit!41178) )
))
(declare-fun lt!561877 () Unit!41177)

(declare-fun lemmaInsertAndRemoveStrictlySortedCommutative!3 (List!27491 (_ BitVec 64) B!1800 (_ BitVec 64)) Unit!41177)

(assert (=> b!1240421 (= lt!561877 (lemmaInsertAndRemoveStrictlySortedCommutative!3 (toList!9182 lm!211) a1!66 b1!77 a2!55))))

(declare-fun b!1240422 () Bool)

(declare-fun tp!92544 () Bool)

(assert (=> b!1240422 (= e!703118 tp!92544)))

(assert (= (and start!103546 res!827782) b!1240420))

(assert (= (and b!1240420 res!827781) b!1240421))

(assert (= start!103546 b!1240422))

(declare-fun m!1143733 () Bool)

(assert (=> start!103546 m!1143733))

(declare-fun m!1143735 () Bool)

(assert (=> b!1240420 m!1143735))

(declare-fun m!1143737 () Bool)

(assert (=> b!1240421 m!1143737))

(declare-fun m!1143739 () Bool)

(assert (=> b!1240421 m!1143739))

(declare-fun m!1143741 () Bool)

(assert (=> b!1240421 m!1143741))

(declare-fun m!1143743 () Bool)

(assert (=> b!1240421 m!1143743))

(assert (=> b!1240421 m!1143737))

(declare-fun m!1143745 () Bool)

(assert (=> b!1240421 m!1143745))

(declare-fun m!1143747 () Bool)

(assert (=> b!1240421 m!1143747))

(assert (=> b!1240421 m!1143745))

(declare-fun m!1143749 () Bool)

(assert (=> b!1240421 m!1143749))

(declare-fun m!1143751 () Bool)

(assert (=> b!1240421 m!1143751))

(assert (=> b!1240421 m!1143743))

(declare-fun m!1143753 () Bool)

(assert (=> b!1240421 m!1143753))

(assert (=> b!1240421 m!1143749))

(push 1)

(assert (not b!1240420))

(assert (not start!103546))

(assert tp_is_empty!31199)

(assert (not b!1240421))

(assert (not b!1240422))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!136207 () Bool)

(assert (=> d!136207 (= (inv!42775 lm!211) (isStrictlySorted!731 (toList!9182 lm!211)))))

(declare-fun bs!34906 () Bool)

(assert (= bs!34906 d!136207))

(assert (=> bs!34906 m!1143735))

(assert (=> start!103546 d!136207))

(declare-fun b!1240459 () Bool)

(declare-fun e!703145 () List!27491)

(declare-fun call!61133 () List!27491)

(assert (=> b!1240459 (= e!703145 call!61133)))

(declare-fun bm!61129 () Bool)

(declare-fun call!61134 () List!27491)

(declare-fun call!61132 () List!27491)

(assert (=> bm!61129 (= call!61134 call!61132)))

(declare-fun d!136209 () Bool)

(declare-fun e!703143 () Bool)

(assert (=> d!136209 e!703143))

(declare-fun res!827804 () Bool)

(assert (=> d!136209 (=> (not res!827804) (not e!703143))))

(declare-fun lt!561888 () List!27491)

(assert (=> d!136209 (= res!827804 (isStrictlySorted!731 lt!561888))))

(declare-fun e!703144 () List!27491)

(assert (=> d!136209 (= lt!561888 e!703144)))

(declare-fun c!121168 () Bool)

(assert (=> d!136209 (= c!121168 (and (is-Cons!27487 (removeStrictlySorted!115 (toList!9182 lm!211) a2!55)) (bvslt (_1!10186 (h!28696 (removeStrictlySorted!115 (toList!9182 lm!211) a2!55))) a1!66)))))

(assert (=> d!136209 (isStrictlySorted!731 (removeStrictlySorted!115 (toList!9182 lm!211) a2!55))))

(assert (=> d!136209 (= (insertStrictlySorted!421 (removeStrictlySorted!115 (toList!9182 lm!211) a2!55) a1!66 b1!77) lt!561888)))

(declare-fun e!703147 () List!27491)

(declare-fun c!121166 () Bool)

(declare-fun c!121167 () Bool)

(declare-fun b!1240460 () Bool)

(assert (=> b!1240460 (= e!703147 (ite c!121167 (t!40961 (removeStrictlySorted!115 (toList!9182 lm!211) a2!55)) (ite c!121166 (Cons!27487 (h!28696 (removeStrictlySorted!115 (toList!9182 lm!211) a2!55)) (t!40961 (removeStrictlySorted!115 (toList!9182 lm!211) a2!55))) Nil!27488)))))

(declare-fun b!1240461 () Bool)

(assert (=> b!1240461 (= e!703147 (insertStrictlySorted!421 (t!40961 (removeStrictlySorted!115 (toList!9182 lm!211) a2!55)) a1!66 b1!77))))

(declare-fun b!1240462 () Bool)

(declare-fun e!703146 () List!27491)

(assert (=> b!1240462 (= e!703146 call!61134)))

(declare-fun bm!61130 () Bool)

(declare-fun $colon$colon!614 (List!27491 tuple2!20352) List!27491)

(assert (=> bm!61130 (= call!61132 ($colon$colon!614 e!703147 (ite c!121168 (h!28696 (removeStrictlySorted!115 (toList!9182 lm!211) a2!55)) (tuple2!20353 a1!66 b1!77))))))

(declare-fun c!121165 () Bool)

(assert (=> bm!61130 (= c!121165 c!121168)))

(declare-fun b!1240463 () Bool)

(assert (=> b!1240463 (= e!703145 call!61133)))

(declare-fun bm!61131 () Bool)

(assert (=> bm!61131 (= call!61133 call!61134)))

(declare-fun b!1240464 () Bool)

(assert (=> b!1240464 (= c!121166 (and (is-Cons!27487 (removeStrictlySorted!115 (toList!9182 lm!211) a2!55)) (bvsgt (_1!10186 (h!28696 (removeStrictlySorted!115 (toList!9182 lm!211) a2!55))) a1!66)))))

(assert (=> b!1240464 (= e!703146 e!703145)))

(declare-fun b!1240465 () Bool)

(assert (=> b!1240465 (= e!703144 e!703146)))

(assert (=> b!1240465 (= c!121167 (and (is-Cons!27487 (removeStrictlySorted!115 (toList!9182 lm!211) a2!55)) (= (_1!10186 (h!28696 (removeStrictlySorted!115 (toList!9182 lm!211) a2!55))) a1!66)))))

(declare-fun b!1240466 () Bool)

(declare-fun contains!7398 (List!27491 tuple2!20352) Bool)

(assert (=> b!1240466 (= e!703143 (contains!7398 lt!561888 (tuple2!20353 a1!66 b1!77)))))

(declare-fun b!1240467 () Bool)

(declare-fun res!827803 () Bool)

(assert (=> b!1240467 (=> (not res!827803) (not e!703143))))

(declare-fun containsKey!599 (List!27491 (_ BitVec 64)) Bool)

(assert (=> b!1240467 (= res!827803 (containsKey!599 lt!561888 a1!66))))

(declare-fun b!1240468 () Bool)

(assert (=> b!1240468 (= e!703144 call!61132)))

(assert (= (and d!136209 c!121168) b!1240468))

(assert (= (and d!136209 (not c!121168)) b!1240465))

(assert (= (and b!1240465 c!121167) b!1240462))

(assert (= (and b!1240465 (not c!121167)) b!1240464))

(assert (= (and b!1240464 c!121166) b!1240459))

(assert (= (and b!1240464 (not c!121166)) b!1240463))

(assert (= (or b!1240459 b!1240463) bm!61131))

(assert (= (or b!1240462 bm!61131) bm!61129))

(assert (= (or b!1240468 bm!61129) bm!61130))

(assert (= (and bm!61130 c!121165) b!1240461))

(assert (= (and bm!61130 (not c!121165)) b!1240460))

(assert (= (and d!136209 res!827804) b!1240467))

(assert (= (and b!1240467 res!827803) b!1240466))

(declare-fun m!1143759 () Bool)

(assert (=> d!136209 m!1143759))

(assert (=> d!136209 m!1143737))

(declare-fun m!1143761 () Bool)

(assert (=> d!136209 m!1143761))

(declare-fun m!1143763 () Bool)

(assert (=> b!1240467 m!1143763))

(declare-fun m!1143765 () Bool)

(assert (=> bm!61130 m!1143765))

(declare-fun m!1143767 () Bool)

(assert (=> b!1240461 m!1143767))

(declare-fun m!1143769 () Bool)

(assert (=> b!1240466 m!1143769))

(assert (=> b!1240421 d!136209))

(declare-fun d!136219 () Bool)

(declare-fun lt!561901 () ListLongMap!18333)

(declare-fun contains!7400 (ListLongMap!18333 (_ BitVec 64)) Bool)

(assert (=> d!136219 (not (contains!7400 lt!561901 a2!55))))

(assert (=> d!136219 (= lt!561901 (ListLongMap!18334 (removeStrictlySorted!115 (toList!9182 lm!211) a2!55)))))

(assert (=> d!136219 (= (-!2008 lm!211 a2!55) lt!561901)))

(declare-fun bs!34907 () Bool)

(assert (= bs!34907 d!136219))

(declare-fun m!1143795 () Bool)

(assert (=> bs!34907 m!1143795))

(assert (=> bs!34907 m!1143737))

(assert (=> b!1240421 d!136219))

(declare-fun d!136225 () Bool)

(declare-fun e!703173 () Bool)

(assert (=> d!136225 e!703173))

(declare-fun res!827819 () Bool)

(assert (=> d!136225 (=> (not res!827819) (not e!703173))))

(declare-fun lt!561917 () ListLongMap!18333)

(assert (=> d!136225 (= res!827819 (contains!7400 lt!561917 (_1!10186 lt!561876)))))

(declare-fun lt!561920 () List!27491)

(assert (=> d!136225 (= lt!561917 (ListLongMap!18334 lt!561920))))

(declare-fun lt!561918 () Unit!41177)

(declare-fun lt!561919 () Unit!41177)

(assert (=> d!136225 (= lt!561918 lt!561919)))

(declare-datatypes ((Option!704 0))(
  ( (Some!703 (v!18372 B!1800)) (None!702) )
))
(declare-fun getValueByKey!653 (List!27491 (_ BitVec 64)) Option!704)

(assert (=> d!136225 (= (getValueByKey!653 lt!561920 (_1!10186 lt!561876)) (Some!703 (_2!10186 lt!561876)))))

(declare-fun lemmaContainsTupThenGetReturnValue!328 (List!27491 (_ BitVec 64) B!1800) Unit!41177)

(assert (=> d!136225 (= lt!561919 (lemmaContainsTupThenGetReturnValue!328 lt!561920 (_1!10186 lt!561876) (_2!10186 lt!561876)))))

(assert (=> d!136225 (= lt!561920 (insertStrictlySorted!421 (toList!9182 lm!211) (_1!10186 lt!561876) (_2!10186 lt!561876)))))

(assert (=> d!136225 (= (+!4122 lm!211 lt!561876) lt!561917)))

(declare-fun b!1240519 () Bool)

(declare-fun res!827820 () Bool)

(assert (=> b!1240519 (=> (not res!827820) (not e!703173))))

(assert (=> b!1240519 (= res!827820 (= (getValueByKey!653 (toList!9182 lt!561917) (_1!10186 lt!561876)) (Some!703 (_2!10186 lt!561876))))))

(declare-fun b!1240520 () Bool)

(assert (=> b!1240520 (= e!703173 (contains!7398 (toList!9182 lt!561917) lt!561876))))

(assert (= (and d!136225 res!827819) b!1240519))

(assert (= (and b!1240519 res!827820) b!1240520))

(declare-fun m!1143815 () Bool)

(assert (=> d!136225 m!1143815))

(declare-fun m!1143817 () Bool)

(assert (=> d!136225 m!1143817))

(declare-fun m!1143819 () Bool)

(assert (=> d!136225 m!1143819))

(declare-fun m!1143821 () Bool)

(assert (=> d!136225 m!1143821))

(declare-fun m!1143823 () Bool)

(assert (=> b!1240519 m!1143823))

(declare-fun m!1143825 () Bool)

(assert (=> b!1240520 m!1143825))

(assert (=> b!1240421 d!136225))

(declare-fun b!1240579 () Bool)

(declare-fun e!703207 () List!27491)

(assert (=> b!1240579 (= e!703207 (t!40961 (insertStrictlySorted!421 (toList!9182 lm!211) a1!66 b1!77)))))

(declare-fun d!136233 () Bool)

(declare-fun e!703206 () Bool)

(assert (=> d!136233 e!703206))

(declare-fun res!827835 () Bool)

(assert (=> d!136233 (=> (not res!827835) (not e!703206))))

(declare-fun lt!561929 () List!27491)

(assert (=> d!136233 (= res!827835 (isStrictlySorted!731 lt!561929))))

(assert (=> d!136233 (= lt!561929 e!703207)))

(declare-fun c!121210 () Bool)

(assert (=> d!136233 (= c!121210 (and (is-Cons!27487 (insertStrictlySorted!421 (toList!9182 lm!211) a1!66 b1!77)) (= (_1!10186 (h!28696 (insertStrictlySorted!421 (toList!9182 lm!211) a1!66 b1!77))) a2!55)))))

(assert (=> d!136233 (isStrictlySorted!731 (insertStrictlySorted!421 (toList!9182 lm!211) a1!66 b1!77))))

(assert (=> d!136233 (= (removeStrictlySorted!115 (insertStrictlySorted!421 (toList!9182 lm!211) a1!66 b1!77) a2!55) lt!561929)))

(declare-fun b!1240580 () Bool)

(declare-fun e!703208 () List!27491)

(assert (=> b!1240580 (= e!703208 ($colon$colon!614 (removeStrictlySorted!115 (t!40961 (insertStrictlySorted!421 (toList!9182 lm!211) a1!66 b1!77)) a2!55) (h!28696 (insertStrictlySorted!421 (toList!9182 lm!211) a1!66 b1!77))))))

(declare-fun b!1240581 () Bool)

(assert (=> b!1240581 (= e!703206 (not (containsKey!599 lt!561929 a2!55)))))

(declare-fun b!1240582 () Bool)

(assert (=> b!1240582 (= e!703207 e!703208)))

(declare-fun c!121209 () Bool)

(assert (=> b!1240582 (= c!121209 (and (is-Cons!27487 (insertStrictlySorted!421 (toList!9182 lm!211) a1!66 b1!77)) (not (= (_1!10186 (h!28696 (insertStrictlySorted!421 (toList!9182 lm!211) a1!66 b1!77))) a2!55))))))

(declare-fun b!1240583 () Bool)

(assert (=> b!1240583 (= e!703208 Nil!27488)))

(assert (= (and d!136233 c!121210) b!1240579))

(assert (= (and d!136233 (not c!121210)) b!1240582))

(assert (= (and b!1240582 c!121209) b!1240580))

(assert (= (and b!1240582 (not c!121209)) b!1240583))

(assert (= (and d!136233 res!827835) b!1240581))

(declare-fun m!1143857 () Bool)

(assert (=> d!136233 m!1143857))

(assert (=> d!136233 m!1143743))

(declare-fun m!1143859 () Bool)

(assert (=> d!136233 m!1143859))

(declare-fun m!1143861 () Bool)

(assert (=> b!1240580 m!1143861))

(assert (=> b!1240580 m!1143861))

(declare-fun m!1143865 () Bool)

(assert (=> b!1240580 m!1143865))

(declare-fun m!1143867 () Bool)

(assert (=> b!1240581 m!1143867))

(assert (=> b!1240421 d!136233))

(declare-fun b!1240584 () Bool)

(declare-fun e!703210 () List!27491)

(assert (=> b!1240584 (= e!703210 (t!40961 (toList!9182 lm!211)))))

(declare-fun d!136241 () Bool)

(declare-fun e!703209 () Bool)

(assert (=> d!136241 e!703209))

(declare-fun res!827836 () Bool)

(assert (=> d!136241 (=> (not res!827836) (not e!703209))))

(declare-fun lt!561933 () List!27491)

(assert (=> d!136241 (= res!827836 (isStrictlySorted!731 lt!561933))))

(assert (=> d!136241 (= lt!561933 e!703210)))

(declare-fun c!121212 () Bool)

(assert (=> d!136241 (= c!121212 (and (is-Cons!27487 (toList!9182 lm!211)) (= (_1!10186 (h!28696 (toList!9182 lm!211))) a2!55)))))

(assert (=> d!136241 (isStrictlySorted!731 (toList!9182 lm!211))))

(assert (=> d!136241 (= (removeStrictlySorted!115 (toList!9182 lm!211) a2!55) lt!561933)))

(declare-fun b!1240585 () Bool)

(declare-fun e!703211 () List!27491)

(assert (=> b!1240585 (= e!703211 ($colon$colon!614 (removeStrictlySorted!115 (t!40961 (toList!9182 lm!211)) a2!55) (h!28696 (toList!9182 lm!211))))))

(declare-fun b!1240586 () Bool)

(assert (=> b!1240586 (= e!703209 (not (containsKey!599 lt!561933 a2!55)))))

(declare-fun b!1240587 () Bool)

(assert (=> b!1240587 (= e!703210 e!703211)))

(declare-fun c!121211 () Bool)

(assert (=> b!1240587 (= c!121211 (and (is-Cons!27487 (toList!9182 lm!211)) (not (= (_1!10186 (h!28696 (toList!9182 lm!211))) a2!55))))))

(declare-fun b!1240588 () Bool)

(assert (=> b!1240588 (= e!703211 Nil!27488)))

(assert (= (and d!136241 c!121212) b!1240584))

(assert (= (and d!136241 (not c!121212)) b!1240587))

(assert (= (and b!1240587 c!121211) b!1240585))

(assert (= (and b!1240587 (not c!121211)) b!1240588))

(assert (= (and d!136241 res!827836) b!1240586))

(declare-fun m!1143879 () Bool)

(assert (=> d!136241 m!1143879))

(assert (=> d!136241 m!1143735))

(declare-fun m!1143881 () Bool)

(assert (=> b!1240585 m!1143881))

(assert (=> b!1240585 m!1143881))

(declare-fun m!1143883 () Bool)

(assert (=> b!1240585 m!1143883))

(declare-fun m!1143885 () Bool)

(assert (=> b!1240586 m!1143885))

(assert (=> b!1240421 d!136241))

(declare-fun d!136247 () Bool)

(declare-fun lt!561934 () ListLongMap!18333)

(assert (=> d!136247 (not (contains!7400 lt!561934 a2!55))))

(assert (=> d!136247 (= lt!561934 (ListLongMap!18334 (removeStrictlySorted!115 (toList!9182 (+!4122 lm!211 lt!561876)) a2!55)))))

(assert (=> d!136247 (= (-!2008 (+!4122 lm!211 lt!561876) a2!55) lt!561934)))

(declare-fun bs!34911 () Bool)

(assert (= bs!34911 d!136247))

(declare-fun m!1143887 () Bool)

(assert (=> bs!34911 m!1143887))

(declare-fun m!1143889 () Bool)

(assert (=> bs!34911 m!1143889))

(assert (=> b!1240421 d!136247))

(declare-fun d!136249 () Bool)

(declare-fun e!703212 () Bool)

(assert (=> d!136249 e!703212))

(declare-fun res!827837 () Bool)

(assert (=> d!136249 (=> (not res!827837) (not e!703212))))

(declare-fun lt!561935 () ListLongMap!18333)

(assert (=> d!136249 (= res!827837 (contains!7400 lt!561935 (_1!10186 lt!561876)))))

(declare-fun lt!561938 () List!27491)

(assert (=> d!136249 (= lt!561935 (ListLongMap!18334 lt!561938))))

(declare-fun lt!561936 () Unit!41177)

(declare-fun lt!561937 () Unit!41177)

(assert (=> d!136249 (= lt!561936 lt!561937)))

(assert (=> d!136249 (= (getValueByKey!653 lt!561938 (_1!10186 lt!561876)) (Some!703 (_2!10186 lt!561876)))))

(assert (=> d!136249 (= lt!561937 (lemmaContainsTupThenGetReturnValue!328 lt!561938 (_1!10186 lt!561876) (_2!10186 lt!561876)))))

(assert (=> d!136249 (= lt!561938 (insertStrictlySorted!421 (toList!9182 (-!2008 lm!211 a2!55)) (_1!10186 lt!561876) (_2!10186 lt!561876)))))

(assert (=> d!136249 (= (+!4122 (-!2008 lm!211 a2!55) lt!561876) lt!561935)))

(declare-fun b!1240589 () Bool)

(declare-fun res!827838 () Bool)

(assert (=> b!1240589 (=> (not res!827838) (not e!703212))))

(assert (=> b!1240589 (= res!827838 (= (getValueByKey!653 (toList!9182 lt!561935) (_1!10186 lt!561876)) (Some!703 (_2!10186 lt!561876))))))

(declare-fun b!1240590 () Bool)

(assert (=> b!1240590 (= e!703212 (contains!7398 (toList!9182 lt!561935) lt!561876))))

(assert (= (and d!136249 res!827837) b!1240589))

(assert (= (and b!1240589 res!827838) b!1240590))

(declare-fun m!1143891 () Bool)

(assert (=> d!136249 m!1143891))

(declare-fun m!1143893 () Bool)

(assert (=> d!136249 m!1143893))

(declare-fun m!1143895 () Bool)

(assert (=> d!136249 m!1143895))

(declare-fun m!1143897 () Bool)

(assert (=> d!136249 m!1143897))

(declare-fun m!1143899 () Bool)

(assert (=> b!1240589 m!1143899))

(declare-fun m!1143901 () Bool)

(assert (=> b!1240590 m!1143901))

(assert (=> b!1240421 d!136249))

(declare-fun b!1240591 () Bool)

(declare-fun e!703215 () List!27491)

(declare-fun call!61157 () List!27491)

(assert (=> b!1240591 (= e!703215 call!61157)))

(declare-fun bm!61153 () Bool)

(declare-fun call!61158 () List!27491)

(declare-fun call!61156 () List!27491)

(assert (=> bm!61153 (= call!61158 call!61156)))

(declare-fun d!136251 () Bool)

(declare-fun e!703213 () Bool)

(assert (=> d!136251 e!703213))

(declare-fun res!827840 () Bool)

(assert (=> d!136251 (=> (not res!827840) (not e!703213))))

(declare-fun lt!561939 () List!27491)

(assert (=> d!136251 (= res!827840 (isStrictlySorted!731 lt!561939))))

(declare-fun e!703214 () List!27491)

(assert (=> d!136251 (= lt!561939 e!703214)))

(declare-fun c!121216 () Bool)

(assert (=> d!136251 (= c!121216 (and (is-Cons!27487 (toList!9182 lm!211)) (bvslt (_1!10186 (h!28696 (toList!9182 lm!211))) a1!66)))))

(assert (=> d!136251 (isStrictlySorted!731 (toList!9182 lm!211))))

(assert (=> d!136251 (= (insertStrictlySorted!421 (toList!9182 lm!211) a1!66 b1!77) lt!561939)))

(declare-fun b!1240592 () Bool)

(declare-fun c!121214 () Bool)

(declare-fun c!121215 () Bool)

(declare-fun e!703217 () List!27491)

(assert (=> b!1240592 (= e!703217 (ite c!121215 (t!40961 (toList!9182 lm!211)) (ite c!121214 (Cons!27487 (h!28696 (toList!9182 lm!211)) (t!40961 (toList!9182 lm!211))) Nil!27488)))))

(declare-fun b!1240593 () Bool)

(assert (=> b!1240593 (= e!703217 (insertStrictlySorted!421 (t!40961 (toList!9182 lm!211)) a1!66 b1!77))))

(declare-fun b!1240594 () Bool)

(declare-fun e!703216 () List!27491)

(assert (=> b!1240594 (= e!703216 call!61158)))

(declare-fun bm!61154 () Bool)

(assert (=> bm!61154 (= call!61156 ($colon$colon!614 e!703217 (ite c!121216 (h!28696 (toList!9182 lm!211)) (tuple2!20353 a1!66 b1!77))))))

(declare-fun c!121213 () Bool)

(assert (=> bm!61154 (= c!121213 c!121216)))

(declare-fun b!1240595 () Bool)

(assert (=> b!1240595 (= e!703215 call!61157)))

(declare-fun bm!61155 () Bool)

(assert (=> bm!61155 (= call!61157 call!61158)))

(declare-fun b!1240596 () Bool)

(assert (=> b!1240596 (= c!121214 (and (is-Cons!27487 (toList!9182 lm!211)) (bvsgt (_1!10186 (h!28696 (toList!9182 lm!211))) a1!66)))))

(assert (=> b!1240596 (= e!703216 e!703215)))

(declare-fun b!1240597 () Bool)

(assert (=> b!1240597 (= e!703214 e!703216)))

(assert (=> b!1240597 (= c!121215 (and (is-Cons!27487 (toList!9182 lm!211)) (= (_1!10186 (h!28696 (toList!9182 lm!211))) a1!66)))))

(declare-fun b!1240598 () Bool)

(assert (=> b!1240598 (= e!703213 (contains!7398 lt!561939 (tuple2!20353 a1!66 b1!77)))))

(declare-fun b!1240599 () Bool)

(declare-fun res!827839 () Bool)

(assert (=> b!1240599 (=> (not res!827839) (not e!703213))))

(assert (=> b!1240599 (= res!827839 (containsKey!599 lt!561939 a1!66))))

(declare-fun b!1240600 () Bool)

(assert (=> b!1240600 (= e!703214 call!61156)))

(assert (= (and d!136251 c!121216) b!1240600))

(assert (= (and d!136251 (not c!121216)) b!1240597))

(assert (= (and b!1240597 c!121215) b!1240594))

(assert (= (and b!1240597 (not c!121215)) b!1240596))

(assert (= (and b!1240596 c!121214) b!1240591))

(assert (= (and b!1240596 (not c!121214)) b!1240595))

(assert (= (or b!1240591 b!1240595) bm!61155))

(assert (= (or b!1240594 bm!61155) bm!61153))

(assert (= (or b!1240600 bm!61153) bm!61154))

(assert (= (and bm!61154 c!121213) b!1240593))

(assert (= (and bm!61154 (not c!121213)) b!1240592))

(assert (= (and d!136251 res!827840) b!1240599))

(assert (= (and b!1240599 res!827839) b!1240598))

(declare-fun m!1143903 () Bool)

(assert (=> d!136251 m!1143903))

(assert (=> d!136251 m!1143735))

(declare-fun m!1143905 () Bool)

(assert (=> b!1240599 m!1143905))

(declare-fun m!1143907 () Bool)

(assert (=> bm!61154 m!1143907))

(declare-fun m!1143909 () Bool)

(assert (=> b!1240593 m!1143909))

(declare-fun m!1143911 () Bool)

(assert (=> b!1240598 m!1143911))

(assert (=> b!1240421 d!136251))

(declare-fun d!136253 () Bool)

(assert (=> d!136253 (= (insertStrictlySorted!421 (removeStrictlySorted!115 (toList!9182 lm!211) a2!55) a1!66 b1!77) (removeStrictlySorted!115 (insertStrictlySorted!421 (toList!9182 lm!211) a1!66 b1!77) a2!55))))

(declare-fun lt!561947 () Unit!41177)

(declare-fun choose!1842 (List!27491 (_ BitVec 64) B!1800 (_ BitVec 64)) Unit!41177)

(assert (=> d!136253 (= lt!561947 (choose!1842 (toList!9182 lm!211) a1!66 b1!77 a2!55))))

(assert (=> d!136253 (not (= a1!66 a2!55))))

(assert (=> d!136253 (= (lemmaInsertAndRemoveStrictlySortedCommutative!3 (toList!9182 lm!211) a1!66 b1!77 a2!55) lt!561947)))

