; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75230 () Bool)

(assert start!75230)

(declare-datatypes ((B!1298 0))(
  ( (B!1299 (val!8955 Int)) )
))
(declare-fun v2!16 () B!1298)

(declare-fun e!493102 () Bool)

(declare-fun key1!49 () (_ BitVec 64))

(declare-fun b!885858 () Bool)

(declare-fun v1!38 () B!1298)

(declare-datatypes ((tuple2!11930 0))(
  ( (tuple2!11931 (_1!5975 (_ BitVec 64)) (_2!5975 B!1298)) )
))
(declare-datatypes ((List!17755 0))(
  ( (Nil!17752) (Cons!17751 (h!18882 tuple2!11930) (t!25040 List!17755)) )
))
(declare-fun l!906 () List!17755)

(declare-fun insertStrictlySorted!297 (List!17755 (_ BitVec 64) B!1298) List!17755)

(assert (=> b!885858 (= e!493102 (not (= (insertStrictlySorted!297 (insertStrictlySorted!297 l!906 key1!49 v1!38) key1!49 v2!16) (insertStrictlySorted!297 l!906 key1!49 v2!16))))))

(assert (=> b!885858 (= (insertStrictlySorted!297 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38) key1!49 v2!16) (insertStrictlySorted!297 (t!25040 l!906) key1!49 v2!16))))

(declare-datatypes ((Unit!30205 0))(
  ( (Unit!30206) )
))
(declare-fun lt!401013 () Unit!30205)

(declare-fun lemmaInsertStrictlySortedErasesIfSameKey!13 (List!17755 (_ BitVec 64) B!1298 B!1298) Unit!30205)

(assert (=> b!885858 (= lt!401013 (lemmaInsertStrictlySortedErasesIfSameKey!13 (t!25040 l!906) key1!49 v1!38 v2!16))))

(declare-fun b!885857 () Bool)

(declare-fun res!601610 () Bool)

(assert (=> b!885857 (=> (not res!601610) (not e!493102))))

(declare-fun isStrictlySorted!485 (List!17755) Bool)

(assert (=> b!885857 (= res!601610 (isStrictlySorted!485 (t!25040 l!906)))))

(declare-fun res!601608 () Bool)

(assert (=> start!75230 (=> (not res!601608) (not e!493102))))

(assert (=> start!75230 (= res!601608 (isStrictlySorted!485 l!906))))

(assert (=> start!75230 e!493102))

(declare-fun e!493103 () Bool)

(assert (=> start!75230 e!493103))

(assert (=> start!75230 true))

(declare-fun tp_is_empty!17809 () Bool)

(assert (=> start!75230 tp_is_empty!17809))

(declare-fun b!885856 () Bool)

(declare-fun res!601609 () Bool)

(assert (=> b!885856 (=> (not res!601609) (not e!493102))))

(assert (=> b!885856 (= res!601609 (and (is-Cons!17751 l!906) (bvslt (_1!5975 (h!18882 l!906)) key1!49)))))

(declare-fun b!885859 () Bool)

(declare-fun tp!54366 () Bool)

(assert (=> b!885859 (= e!493103 (and tp_is_empty!17809 tp!54366))))

(assert (= (and start!75230 res!601608) b!885856))

(assert (= (and b!885856 res!601609) b!885857))

(assert (= (and b!885857 res!601610) b!885858))

(assert (= (and start!75230 (is-Cons!17751 l!906)) b!885859))

(declare-fun m!825875 () Bool)

(assert (=> b!885858 m!825875))

(declare-fun m!825877 () Bool)

(assert (=> b!885858 m!825877))

(declare-fun m!825879 () Bool)

(assert (=> b!885858 m!825879))

(declare-fun m!825881 () Bool)

(assert (=> b!885858 m!825881))

(declare-fun m!825883 () Bool)

(assert (=> b!885858 m!825883))

(assert (=> b!885858 m!825881))

(declare-fun m!825885 () Bool)

(assert (=> b!885858 m!825885))

(assert (=> b!885858 m!825875))

(declare-fun m!825887 () Bool)

(assert (=> b!885858 m!825887))

(declare-fun m!825889 () Bool)

(assert (=> b!885857 m!825889))

(declare-fun m!825891 () Bool)

(assert (=> start!75230 m!825891))

(push 1)

(assert (not b!885857))

(assert (not b!885858))

(assert (not start!75230))

(assert (not b!885859))

(assert tp_is_empty!17809)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!109421 () Bool)

(declare-fun res!601641 () Bool)

(declare-fun e!493128 () Bool)

(assert (=> d!109421 (=> res!601641 e!493128)))

(assert (=> d!109421 (= res!601641 (or (is-Nil!17752 (t!25040 l!906)) (is-Nil!17752 (t!25040 (t!25040 l!906)))))))

(assert (=> d!109421 (= (isStrictlySorted!485 (t!25040 l!906)) e!493128)))

(declare-fun b!885896 () Bool)

(declare-fun e!493129 () Bool)

(assert (=> b!885896 (= e!493128 e!493129)))

(declare-fun res!601642 () Bool)

(assert (=> b!885896 (=> (not res!601642) (not e!493129))))

(assert (=> b!885896 (= res!601642 (bvslt (_1!5975 (h!18882 (t!25040 l!906))) (_1!5975 (h!18882 (t!25040 (t!25040 l!906))))))))

(declare-fun b!885897 () Bool)

(assert (=> b!885897 (= e!493129 (isStrictlySorted!485 (t!25040 (t!25040 l!906))))))

(assert (= (and d!109421 (not res!601641)) b!885896))

(assert (= (and b!885896 res!601642) b!885897))

(declare-fun m!825931 () Bool)

(assert (=> b!885897 m!825931))

(assert (=> b!885857 d!109421))

(declare-fun d!109427 () Bool)

(assert (=> d!109427 (= (insertStrictlySorted!297 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38) key1!49 v2!16) (insertStrictlySorted!297 (t!25040 l!906) key1!49 v2!16))))

(declare-fun lt!401025 () Unit!30205)

(declare-fun choose!1458 (List!17755 (_ BitVec 64) B!1298 B!1298) Unit!30205)

(assert (=> d!109427 (= lt!401025 (choose!1458 (t!25040 l!906) key1!49 v1!38 v2!16))))

(assert (=> d!109427 (isStrictlySorted!485 (t!25040 l!906))))

(assert (=> d!109427 (= (lemmaInsertStrictlySortedErasesIfSameKey!13 (t!25040 l!906) key1!49 v1!38 v2!16) lt!401025)))

(declare-fun bs!24841 () Bool)

(assert (= bs!24841 d!109427))

(assert (=> bs!24841 m!825875))

(assert (=> bs!24841 m!825889))

(assert (=> bs!24841 m!825885))

(declare-fun m!825935 () Bool)

(assert (=> bs!24841 m!825935))

(assert (=> bs!24841 m!825875))

(assert (=> bs!24841 m!825877))

(assert (=> b!885858 d!109427))

(declare-fun d!109429 () Bool)

(declare-fun e!493154 () Bool)

(assert (=> d!109429 e!493154))

(declare-fun res!601654 () Bool)

(assert (=> d!109429 (=> (not res!601654) (not e!493154))))

(declare-fun lt!401033 () List!17755)

(assert (=> d!109429 (= res!601654 (isStrictlySorted!485 lt!401033))))

(declare-fun e!493152 () List!17755)

(assert (=> d!109429 (= lt!401033 e!493152)))

(declare-fun c!93307 () Bool)

(assert (=> d!109429 (= c!93307 (and (is-Cons!17751 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38)) (bvslt (_1!5975 (h!18882 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38))) key1!49)))))

(assert (=> d!109429 (isStrictlySorted!485 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38))))

(assert (=> d!109429 (= (insertStrictlySorted!297 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38) key1!49 v2!16) lt!401033)))

(declare-fun bm!39154 () Bool)

(declare-fun call!39158 () List!17755)

(declare-fun call!39157 () List!17755)

(assert (=> bm!39154 (= call!39158 call!39157)))

(declare-fun e!493153 () List!17755)

(declare-fun b!885936 () Bool)

(assert (=> b!885936 (= e!493153 (insertStrictlySorted!297 (t!25040 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38)) key1!49 v2!16))))

(declare-fun b!885937 () Bool)

(declare-fun contains!4291 (List!17755 tuple2!11930) Bool)

(assert (=> b!885937 (= e!493154 (contains!4291 lt!401033 (tuple2!11931 key1!49 v2!16)))))

(declare-fun b!885938 () Bool)

(declare-fun e!493155 () List!17755)

(assert (=> b!885938 (= e!493152 e!493155)))

(declare-fun c!93310 () Bool)

(assert (=> b!885938 (= c!93310 (and (is-Cons!17751 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38)) (= (_1!5975 (h!18882 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38))) key1!49)))))

(declare-fun b!885939 () Bool)

(declare-fun call!39159 () List!17755)

(assert (=> b!885939 (= e!493152 call!39159)))

(declare-fun b!885940 () Bool)

(declare-fun e!493156 () List!17755)

(assert (=> b!885940 (= e!493156 call!39158)))

(declare-fun b!885941 () Bool)

(declare-fun res!601653 () Bool)

(assert (=> b!885941 (=> (not res!601653) (not e!493154))))

(declare-fun containsKey!412 (List!17755 (_ BitVec 64)) Bool)

(assert (=> b!885941 (= res!601653 (containsKey!412 lt!401033 key1!49))))

(declare-fun b!885942 () Bool)

(assert (=> b!885942 (= e!493155 call!39157)))

(declare-fun c!93308 () Bool)

(declare-fun b!885943 () Bool)

(assert (=> b!885943 (= e!493153 (ite c!93310 (t!25040 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38)) (ite c!93308 (Cons!17751 (h!18882 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38)) (t!25040 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38))) Nil!17752)))))

(declare-fun b!885944 () Bool)

(assert (=> b!885944 (= e!493156 call!39158)))

(declare-fun b!885945 () Bool)

(assert (=> b!885945 (= c!93308 (and (is-Cons!17751 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38)) (bvsgt (_1!5975 (h!18882 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38))) key1!49)))))

(assert (=> b!885945 (= e!493155 e!493156)))

(declare-fun bm!39155 () Bool)

(declare-fun $colon$colon!547 (List!17755 tuple2!11930) List!17755)

(assert (=> bm!39155 (= call!39159 ($colon$colon!547 e!493153 (ite c!93307 (h!18882 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38)) (tuple2!11931 key1!49 v2!16))))))

(declare-fun c!93309 () Bool)

(assert (=> bm!39155 (= c!93309 c!93307)))

(declare-fun bm!39156 () Bool)

(assert (=> bm!39156 (= call!39157 call!39159)))

(assert (= (and d!109429 c!93307) b!885939))

(assert (= (and d!109429 (not c!93307)) b!885938))

(assert (= (and b!885938 c!93310) b!885942))

(assert (= (and b!885938 (not c!93310)) b!885945))

(assert (= (and b!885945 c!93308) b!885944))

(assert (= (and b!885945 (not c!93308)) b!885940))

(assert (= (or b!885944 b!885940) bm!39154))

(assert (= (or b!885942 bm!39154) bm!39156))

(assert (= (or b!885939 bm!39156) bm!39155))

(assert (= (and bm!39155 c!93309) b!885936))

(assert (= (and bm!39155 (not c!93309)) b!885943))

(assert (= (and d!109429 res!601654) b!885941))

(assert (= (and b!885941 res!601653) b!885937))

(declare-fun m!825941 () Bool)

(assert (=> bm!39155 m!825941))

(declare-fun m!825943 () Bool)

(assert (=> d!109429 m!825943))

(assert (=> d!109429 m!825875))

(declare-fun m!825945 () Bool)

(assert (=> d!109429 m!825945))

(declare-fun m!825947 () Bool)

(assert (=> b!885941 m!825947))

(declare-fun m!825949 () Bool)

(assert (=> b!885937 m!825949))

(declare-fun m!825951 () Bool)

(assert (=> b!885936 m!825951))

(assert (=> b!885858 d!109429))

(declare-fun d!109439 () Bool)

(declare-fun e!493159 () Bool)

(assert (=> d!109439 e!493159))

(declare-fun res!601656 () Bool)

(assert (=> d!109439 (=> (not res!601656) (not e!493159))))

(declare-fun lt!401034 () List!17755)

(assert (=> d!109439 (= res!601656 (isStrictlySorted!485 lt!401034))))

(declare-fun e!493157 () List!17755)

(assert (=> d!109439 (= lt!401034 e!493157)))

(declare-fun c!93311 () Bool)

(assert (=> d!109439 (= c!93311 (and (is-Cons!17751 (insertStrictlySorted!297 l!906 key1!49 v1!38)) (bvslt (_1!5975 (h!18882 (insertStrictlySorted!297 l!906 key1!49 v1!38))) key1!49)))))

(assert (=> d!109439 (isStrictlySorted!485 (insertStrictlySorted!297 l!906 key1!49 v1!38))))

(assert (=> d!109439 (= (insertStrictlySorted!297 (insertStrictlySorted!297 l!906 key1!49 v1!38) key1!49 v2!16) lt!401034)))

(declare-fun bm!39159 () Bool)

(declare-fun call!39163 () List!17755)

(declare-fun call!39162 () List!17755)

(assert (=> bm!39159 (= call!39163 call!39162)))

(declare-fun b!885946 () Bool)

(declare-fun e!493158 () List!17755)

(assert (=> b!885946 (= e!493158 (insertStrictlySorted!297 (t!25040 (insertStrictlySorted!297 l!906 key1!49 v1!38)) key1!49 v2!16))))

(declare-fun b!885947 () Bool)

(assert (=> b!885947 (= e!493159 (contains!4291 lt!401034 (tuple2!11931 key1!49 v2!16)))))

(declare-fun b!885948 () Bool)

(declare-fun e!493160 () List!17755)

(assert (=> b!885948 (= e!493157 e!493160)))

(declare-fun c!93314 () Bool)

(assert (=> b!885948 (= c!93314 (and (is-Cons!17751 (insertStrictlySorted!297 l!906 key1!49 v1!38)) (= (_1!5975 (h!18882 (insertStrictlySorted!297 l!906 key1!49 v1!38))) key1!49)))))

(declare-fun b!885949 () Bool)

(declare-fun call!39164 () List!17755)

(assert (=> b!885949 (= e!493157 call!39164)))

(declare-fun b!885950 () Bool)

(declare-fun e!493161 () List!17755)

(assert (=> b!885950 (= e!493161 call!39163)))

(declare-fun b!885951 () Bool)

(declare-fun res!601655 () Bool)

(assert (=> b!885951 (=> (not res!601655) (not e!493159))))

(assert (=> b!885951 (= res!601655 (containsKey!412 lt!401034 key1!49))))

(declare-fun b!885952 () Bool)

(assert (=> b!885952 (= e!493160 call!39162)))

(declare-fun c!93312 () Bool)

(declare-fun b!885953 () Bool)

(assert (=> b!885953 (= e!493158 (ite c!93314 (t!25040 (insertStrictlySorted!297 l!906 key1!49 v1!38)) (ite c!93312 (Cons!17751 (h!18882 (insertStrictlySorted!297 l!906 key1!49 v1!38)) (t!25040 (insertStrictlySorted!297 l!906 key1!49 v1!38))) Nil!17752)))))

(declare-fun b!885954 () Bool)

(assert (=> b!885954 (= e!493161 call!39163)))

(declare-fun b!885955 () Bool)

(assert (=> b!885955 (= c!93312 (and (is-Cons!17751 (insertStrictlySorted!297 l!906 key1!49 v1!38)) (bvsgt (_1!5975 (h!18882 (insertStrictlySorted!297 l!906 key1!49 v1!38))) key1!49)))))

(assert (=> b!885955 (= e!493160 e!493161)))

(declare-fun bm!39160 () Bool)

(assert (=> bm!39160 (= call!39164 ($colon$colon!547 e!493158 (ite c!93311 (h!18882 (insertStrictlySorted!297 l!906 key1!49 v1!38)) (tuple2!11931 key1!49 v2!16))))))

(declare-fun c!93313 () Bool)

(assert (=> bm!39160 (= c!93313 c!93311)))

(declare-fun bm!39161 () Bool)

(assert (=> bm!39161 (= call!39162 call!39164)))

(assert (= (and d!109439 c!93311) b!885949))

(assert (= (and d!109439 (not c!93311)) b!885948))

(assert (= (and b!885948 c!93314) b!885952))

(assert (= (and b!885948 (not c!93314)) b!885955))

(assert (= (and b!885955 c!93312) b!885954))

(assert (= (and b!885955 (not c!93312)) b!885950))

(assert (= (or b!885954 b!885950) bm!39159))

(assert (= (or b!885952 bm!39159) bm!39161))

(assert (= (or b!885949 bm!39161) bm!39160))

(assert (= (and bm!39160 c!93313) b!885946))

(assert (= (and bm!39160 (not c!93313)) b!885953))

(assert (= (and d!109439 res!601656) b!885951))

(assert (= (and b!885951 res!601655) b!885947))

(declare-fun m!825953 () Bool)

(assert (=> bm!39160 m!825953))

(declare-fun m!825955 () Bool)

(assert (=> d!109439 m!825955))

(assert (=> d!109439 m!825881))

(declare-fun m!825957 () Bool)

(assert (=> d!109439 m!825957))

(declare-fun m!825959 () Bool)

(assert (=> b!885951 m!825959))

(declare-fun m!825961 () Bool)

(assert (=> b!885947 m!825961))

(declare-fun m!825963 () Bool)

(assert (=> b!885946 m!825963))

(assert (=> b!885858 d!109439))

(declare-fun d!109441 () Bool)

(declare-fun e!493166 () Bool)

(assert (=> d!109441 e!493166))

(declare-fun res!601658 () Bool)

(assert (=> d!109441 (=> (not res!601658) (not e!493166))))

(declare-fun lt!401035 () List!17755)

(assert (=> d!109441 (= res!601658 (isStrictlySorted!485 lt!401035))))

(declare-fun e!493164 () List!17755)

(assert (=> d!109441 (= lt!401035 e!493164)))

(declare-fun c!93317 () Bool)

(assert (=> d!109441 (= c!93317 (and (is-Cons!17751 (t!25040 l!906)) (bvslt (_1!5975 (h!18882 (t!25040 l!906))) key1!49)))))

(assert (=> d!109441 (isStrictlySorted!485 (t!25040 l!906))))

(assert (=> d!109441 (= (insertStrictlySorted!297 (t!25040 l!906) key1!49 v2!16) lt!401035)))

(declare-fun bm!39164 () Bool)

(declare-fun call!39168 () List!17755)

(declare-fun call!39167 () List!17755)

(assert (=> bm!39164 (= call!39168 call!39167)))

(declare-fun e!493165 () List!17755)

(declare-fun b!885960 () Bool)

(assert (=> b!885960 (= e!493165 (insertStrictlySorted!297 (t!25040 (t!25040 l!906)) key1!49 v2!16))))

(declare-fun b!885961 () Bool)

(assert (=> b!885961 (= e!493166 (contains!4291 lt!401035 (tuple2!11931 key1!49 v2!16)))))

(declare-fun b!885962 () Bool)

(declare-fun e!493167 () List!17755)

(assert (=> b!885962 (= e!493164 e!493167)))

(declare-fun c!93320 () Bool)

(assert (=> b!885962 (= c!93320 (and (is-Cons!17751 (t!25040 l!906)) (= (_1!5975 (h!18882 (t!25040 l!906))) key1!49)))))

(declare-fun b!885963 () Bool)

(declare-fun call!39169 () List!17755)

(assert (=> b!885963 (= e!493164 call!39169)))

(declare-fun b!885964 () Bool)

(declare-fun e!493168 () List!17755)

(assert (=> b!885964 (= e!493168 call!39168)))

(declare-fun b!885965 () Bool)

(declare-fun res!601657 () Bool)

(assert (=> b!885965 (=> (not res!601657) (not e!493166))))

(assert (=> b!885965 (= res!601657 (containsKey!412 lt!401035 key1!49))))

(declare-fun b!885966 () Bool)

(assert (=> b!885966 (= e!493167 call!39167)))

(declare-fun c!93318 () Bool)

(declare-fun b!885967 () Bool)

(assert (=> b!885967 (= e!493165 (ite c!93320 (t!25040 (t!25040 l!906)) (ite c!93318 (Cons!17751 (h!18882 (t!25040 l!906)) (t!25040 (t!25040 l!906))) Nil!17752)))))

(declare-fun b!885968 () Bool)

(assert (=> b!885968 (= e!493168 call!39168)))

(declare-fun b!885969 () Bool)

(assert (=> b!885969 (= c!93318 (and (is-Cons!17751 (t!25040 l!906)) (bvsgt (_1!5975 (h!18882 (t!25040 l!906))) key1!49)))))

(assert (=> b!885969 (= e!493167 e!493168)))

(declare-fun bm!39165 () Bool)

(assert (=> bm!39165 (= call!39169 ($colon$colon!547 e!493165 (ite c!93317 (h!18882 (t!25040 l!906)) (tuple2!11931 key1!49 v2!16))))))

(declare-fun c!93319 () Bool)

(assert (=> bm!39165 (= c!93319 c!93317)))

(declare-fun bm!39166 () Bool)

(assert (=> bm!39166 (= call!39167 call!39169)))

(assert (= (and d!109441 c!93317) b!885963))

(assert (= (and d!109441 (not c!93317)) b!885962))

(assert (= (and b!885962 c!93320) b!885966))

(assert (= (and b!885962 (not c!93320)) b!885969))

(assert (= (and b!885969 c!93318) b!885968))

(assert (= (and b!885969 (not c!93318)) b!885964))

(assert (= (or b!885968 b!885964) bm!39164))

(assert (= (or b!885966 bm!39164) bm!39166))

(assert (= (or b!885963 bm!39166) bm!39165))

(assert (= (and bm!39165 c!93319) b!885960))

(assert (= (and bm!39165 (not c!93319)) b!885967))

(assert (= (and d!109441 res!601658) b!885965))

(assert (= (and b!885965 res!601657) b!885961))

(declare-fun m!825965 () Bool)

(assert (=> bm!39165 m!825965))

(declare-fun m!825967 () Bool)

(assert (=> d!109441 m!825967))

(assert (=> d!109441 m!825889))

(declare-fun m!825969 () Bool)

(assert (=> b!885965 m!825969))

(declare-fun m!825971 () Bool)

(assert (=> b!885961 m!825971))

(declare-fun m!825973 () Bool)

(assert (=> b!885960 m!825973))

(assert (=> b!885858 d!109441))

(declare-fun d!109443 () Bool)

(declare-fun e!493173 () Bool)

(assert (=> d!109443 e!493173))

(declare-fun res!601664 () Bool)

(assert (=> d!109443 (=> (not res!601664) (not e!493173))))

(declare-fun lt!401036 () List!17755)

(assert (=> d!109443 (= res!601664 (isStrictlySorted!485 lt!401036))))

(declare-fun e!493171 () List!17755)

(assert (=> d!109443 (= lt!401036 e!493171)))

(declare-fun c!93321 () Bool)

(assert (=> d!109443 (= c!93321 (and (is-Cons!17751 (t!25040 l!906)) (bvslt (_1!5975 (h!18882 (t!25040 l!906))) key1!49)))))

(assert (=> d!109443 (isStrictlySorted!485 (t!25040 l!906))))

(assert (=> d!109443 (= (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38) lt!401036)))

(declare-fun bm!39167 () Bool)

(declare-fun call!39171 () List!17755)

(declare-fun call!39170 () List!17755)

(assert (=> bm!39167 (= call!39171 call!39170)))

(declare-fun e!493172 () List!17755)

(declare-fun b!885974 () Bool)

(assert (=> b!885974 (= e!493172 (insertStrictlySorted!297 (t!25040 (t!25040 l!906)) key1!49 v1!38))))

(declare-fun b!885975 () Bool)

(assert (=> b!885975 (= e!493173 (contains!4291 lt!401036 (tuple2!11931 key1!49 v1!38)))))

(declare-fun b!885976 () Bool)

(declare-fun e!493174 () List!17755)

(assert (=> b!885976 (= e!493171 e!493174)))

(declare-fun c!93324 () Bool)

(assert (=> b!885976 (= c!93324 (and (is-Cons!17751 (t!25040 l!906)) (= (_1!5975 (h!18882 (t!25040 l!906))) key1!49)))))

(declare-fun b!885977 () Bool)

(declare-fun call!39172 () List!17755)

(assert (=> b!885977 (= e!493171 call!39172)))

(declare-fun b!885978 () Bool)

(declare-fun e!493175 () List!17755)

(assert (=> b!885978 (= e!493175 call!39171)))

(declare-fun b!885979 () Bool)

(declare-fun res!601663 () Bool)

(assert (=> b!885979 (=> (not res!601663) (not e!493173))))

(assert (=> b!885979 (= res!601663 (containsKey!412 lt!401036 key1!49))))

(declare-fun b!885980 () Bool)

(assert (=> b!885980 (= e!493174 call!39170)))

(declare-fun c!93322 () Bool)

(declare-fun b!885981 () Bool)

(assert (=> b!885981 (= e!493172 (ite c!93324 (t!25040 (t!25040 l!906)) (ite c!93322 (Cons!17751 (h!18882 (t!25040 l!906)) (t!25040 (t!25040 l!906))) Nil!17752)))))

(declare-fun b!885982 () Bool)

(assert (=> b!885982 (= e!493175 call!39171)))

(declare-fun b!885983 () Bool)

(assert (=> b!885983 (= c!93322 (and (is-Cons!17751 (t!25040 l!906)) (bvsgt (_1!5975 (h!18882 (t!25040 l!906))) key1!49)))))

(assert (=> b!885983 (= e!493174 e!493175)))

(declare-fun bm!39168 () Bool)

(assert (=> bm!39168 (= call!39172 ($colon$colon!547 e!493172 (ite c!93321 (h!18882 (t!25040 l!906)) (tuple2!11931 key1!49 v1!38))))))

(declare-fun c!93323 () Bool)

(assert (=> bm!39168 (= c!93323 c!93321)))

(declare-fun bm!39169 () Bool)

(assert (=> bm!39169 (= call!39170 call!39172)))

(assert (= (and d!109443 c!93321) b!885977))

(assert (= (and d!109443 (not c!93321)) b!885976))

(assert (= (and b!885976 c!93324) b!885980))

(assert (= (and b!885976 (not c!93324)) b!885983))

(assert (= (and b!885983 c!93322) b!885982))

(assert (= (and b!885983 (not c!93322)) b!885978))

(assert (= (or b!885982 b!885978) bm!39167))

(assert (= (or b!885980 bm!39167) bm!39169))

(assert (= (or b!885977 bm!39169) bm!39168))

(assert (= (and bm!39168 c!93323) b!885974))

(assert (= (and bm!39168 (not c!93323)) b!885981))

(assert (= (and d!109443 res!601664) b!885979))

(assert (= (and b!885979 res!601663) b!885975))

(declare-fun m!825975 () Bool)

(assert (=> bm!39168 m!825975))

(declare-fun m!825977 () Bool)

(assert (=> d!109443 m!825977))

(assert (=> d!109443 m!825889))

(declare-fun m!825979 () Bool)

(assert (=> b!885979 m!825979))

(declare-fun m!825981 () Bool)

(assert (=> b!885975 m!825981))

(declare-fun m!825983 () Bool)

(assert (=> b!885974 m!825983))

(assert (=> b!885858 d!109443))

(declare-fun d!109445 () Bool)

(declare-fun e!493178 () Bool)

(assert (=> d!109445 e!493178))

(declare-fun res!601666 () Bool)

(assert (=> d!109445 (=> (not res!601666) (not e!493178))))

(declare-fun lt!401037 () List!17755)

(assert (=> d!109445 (= res!601666 (isStrictlySorted!485 lt!401037))))

(declare-fun e!493176 () List!17755)

(assert (=> d!109445 (= lt!401037 e!493176)))

(declare-fun c!93325 () Bool)

(assert (=> d!109445 (= c!93325 (and (is-Cons!17751 l!906) (bvslt (_1!5975 (h!18882 l!906)) key1!49)))))

(assert (=> d!109445 (isStrictlySorted!485 l!906)))

(assert (=> d!109445 (= (insertStrictlySorted!297 l!906 key1!49 v2!16) lt!401037)))

(declare-fun bm!39170 () Bool)

(declare-fun call!39174 () List!17755)

(declare-fun call!39173 () List!17755)

(assert (=> bm!39170 (= call!39174 call!39173)))

(declare-fun b!885984 () Bool)

(declare-fun e!493177 () List!17755)

(assert (=> b!885984 (= e!493177 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v2!16))))

(declare-fun b!885985 () Bool)

(assert (=> b!885985 (= e!493178 (contains!4291 lt!401037 (tuple2!11931 key1!49 v2!16)))))

(declare-fun b!885986 () Bool)

(declare-fun e!493179 () List!17755)

(assert (=> b!885986 (= e!493176 e!493179)))

(declare-fun c!93328 () Bool)

(assert (=> b!885986 (= c!93328 (and (is-Cons!17751 l!906) (= (_1!5975 (h!18882 l!906)) key1!49)))))

(declare-fun b!885987 () Bool)

(declare-fun call!39175 () List!17755)

(assert (=> b!885987 (= e!493176 call!39175)))

(declare-fun b!885988 () Bool)

(declare-fun e!493180 () List!17755)

(assert (=> b!885988 (= e!493180 call!39174)))

(declare-fun b!885989 () Bool)

(declare-fun res!601665 () Bool)

(assert (=> b!885989 (=> (not res!601665) (not e!493178))))

(assert (=> b!885989 (= res!601665 (containsKey!412 lt!401037 key1!49))))

(declare-fun b!885990 () Bool)

(assert (=> b!885990 (= e!493179 call!39173)))

(declare-fun c!93326 () Bool)

(declare-fun b!885991 () Bool)

(assert (=> b!885991 (= e!493177 (ite c!93328 (t!25040 l!906) (ite c!93326 (Cons!17751 (h!18882 l!906) (t!25040 l!906)) Nil!17752)))))

(declare-fun b!885992 () Bool)

(assert (=> b!885992 (= e!493180 call!39174)))

(declare-fun b!885993 () Bool)

(assert (=> b!885993 (= c!93326 (and (is-Cons!17751 l!906) (bvsgt (_1!5975 (h!18882 l!906)) key1!49)))))

(assert (=> b!885993 (= e!493179 e!493180)))

(declare-fun bm!39171 () Bool)

(assert (=> bm!39171 (= call!39175 ($colon$colon!547 e!493177 (ite c!93325 (h!18882 l!906) (tuple2!11931 key1!49 v2!16))))))

(declare-fun c!93327 () Bool)

(assert (=> bm!39171 (= c!93327 c!93325)))

(declare-fun bm!39172 () Bool)

(assert (=> bm!39172 (= call!39173 call!39175)))

(assert (= (and d!109445 c!93325) b!885987))

(assert (= (and d!109445 (not c!93325)) b!885986))

(assert (= (and b!885986 c!93328) b!885990))

(assert (= (and b!885986 (not c!93328)) b!885993))

(assert (= (and b!885993 c!93326) b!885992))

(assert (= (and b!885993 (not c!93326)) b!885988))

(assert (= (or b!885992 b!885988) bm!39170))

(assert (= (or b!885990 bm!39170) bm!39172))

(assert (= (or b!885987 bm!39172) bm!39171))

(assert (= (and bm!39171 c!93327) b!885984))

(assert (= (and bm!39171 (not c!93327)) b!885991))

(assert (= (and d!109445 res!601666) b!885989))

(assert (= (and b!885989 res!601665) b!885985))

(declare-fun m!825985 () Bool)

(assert (=> bm!39171 m!825985))

(declare-fun m!825987 () Bool)

(assert (=> d!109445 m!825987))

(assert (=> d!109445 m!825891))

(declare-fun m!825989 () Bool)

(assert (=> b!885989 m!825989))

(declare-fun m!825991 () Bool)

(assert (=> b!885985 m!825991))

(assert (=> b!885984 m!825885))

(assert (=> b!885858 d!109445))

(declare-fun d!109447 () Bool)

(declare-fun e!493183 () Bool)

(assert (=> d!109447 e!493183))

(declare-fun res!601668 () Bool)

(assert (=> d!109447 (=> (not res!601668) (not e!493183))))

(declare-fun lt!401038 () List!17755)

(assert (=> d!109447 (= res!601668 (isStrictlySorted!485 lt!401038))))

(declare-fun e!493181 () List!17755)

(assert (=> d!109447 (= lt!401038 e!493181)))

(declare-fun c!93329 () Bool)

(assert (=> d!109447 (= c!93329 (and (is-Cons!17751 l!906) (bvslt (_1!5975 (h!18882 l!906)) key1!49)))))

(assert (=> d!109447 (isStrictlySorted!485 l!906)))

(assert (=> d!109447 (= (insertStrictlySorted!297 l!906 key1!49 v1!38) lt!401038)))

(declare-fun bm!39173 () Bool)

(declare-fun call!39177 () List!17755)

(declare-fun call!39176 () List!17755)

(assert (=> bm!39173 (= call!39177 call!39176)))

(declare-fun b!885994 () Bool)

(declare-fun e!493182 () List!17755)

(assert (=> b!885994 (= e!493182 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38))))

(declare-fun b!885995 () Bool)

(assert (=> b!885995 (= e!493183 (contains!4291 lt!401038 (tuple2!11931 key1!49 v1!38)))))

(declare-fun b!885996 () Bool)

(declare-fun e!493184 () List!17755)

(assert (=> b!885996 (= e!493181 e!493184)))

(declare-fun c!93332 () Bool)

(assert (=> b!885996 (= c!93332 (and (is-Cons!17751 l!906) (= (_1!5975 (h!18882 l!906)) key1!49)))))

(declare-fun b!885997 () Bool)

(declare-fun call!39178 () List!17755)

(assert (=> b!885997 (= e!493181 call!39178)))

(declare-fun b!885998 () Bool)

(declare-fun e!493185 () List!17755)

(assert (=> b!885998 (= e!493185 call!39177)))

(declare-fun b!885999 () Bool)

(declare-fun res!601667 () Bool)

(assert (=> b!885999 (=> (not res!601667) (not e!493183))))

(assert (=> b!885999 (= res!601667 (containsKey!412 lt!401038 key1!49))))

(declare-fun b!886000 () Bool)

(assert (=> b!886000 (= e!493184 call!39176)))

(declare-fun b!886001 () Bool)

(declare-fun c!93330 () Bool)

(assert (=> b!886001 (= e!493182 (ite c!93332 (t!25040 l!906) (ite c!93330 (Cons!17751 (h!18882 l!906) (t!25040 l!906)) Nil!17752)))))

(declare-fun b!886002 () Bool)

(assert (=> b!886002 (= e!493185 call!39177)))

(declare-fun b!886003 () Bool)

(assert (=> b!886003 (= c!93330 (and (is-Cons!17751 l!906) (bvsgt (_1!5975 (h!18882 l!906)) key1!49)))))

(assert (=> b!886003 (= e!493184 e!493185)))

(declare-fun bm!39174 () Bool)

(assert (=> bm!39174 (= call!39178 ($colon$colon!547 e!493182 (ite c!93329 (h!18882 l!906) (tuple2!11931 key1!49 v1!38))))))

(declare-fun c!93331 () Bool)

(assert (=> bm!39174 (= c!93331 c!93329)))

(declare-fun bm!39175 () Bool)

(assert (=> bm!39175 (= call!39176 call!39178)))

(assert (= (and d!109447 c!93329) b!885997))

(assert (= (and d!109447 (not c!93329)) b!885996))

(assert (= (and b!885996 c!93332) b!886000))

(assert (= (and b!885996 (not c!93332)) b!886003))

(assert (= (and b!886003 c!93330) b!886002))

(assert (= (and b!886003 (not c!93330)) b!885998))

(assert (= (or b!886002 b!885998) bm!39173))

(assert (= (or b!886000 bm!39173) bm!39175))

(assert (= (or b!885997 bm!39175) bm!39174))

(assert (= (and bm!39174 c!93331) b!885994))

(assert (= (and bm!39174 (not c!93331)) b!886001))

(assert (= (and d!109447 res!601668) b!885999))

(assert (= (and b!885999 res!601667) b!885995))

(declare-fun m!825993 () Bool)

(assert (=> bm!39174 m!825993))

(declare-fun m!825995 () Bool)

(assert (=> d!109447 m!825995))

(assert (=> d!109447 m!825891))

(declare-fun m!825997 () Bool)

(assert (=> b!885999 m!825997))

(declare-fun m!825999 () Bool)

(assert (=> b!885995 m!825999))

(assert (=> b!885994 m!825875))

(assert (=> b!885858 d!109447))

(declare-fun d!109449 () Bool)

(declare-fun res!601669 () Bool)

(declare-fun e!493186 () Bool)

(assert (=> d!109449 (=> res!601669 e!493186)))

(assert (=> d!109449 (= res!601669 (or (is-Nil!17752 l!906) (is-Nil!17752 (t!25040 l!906))))))

(assert (=> d!109449 (= (isStrictlySorted!485 l!906) e!493186)))

(declare-fun b!886004 () Bool)

(declare-fun e!493187 () Bool)

(assert (=> b!886004 (= e!493186 e!493187)))

(declare-fun res!601670 () Bool)

(assert (=> b!886004 (=> (not res!601670) (not e!493187))))

(assert (=> b!886004 (= res!601670 (bvslt (_1!5975 (h!18882 l!906)) (_1!5975 (h!18882 (t!25040 l!906)))))))

(declare-fun b!886005 () Bool)

(assert (=> b!886005 (= e!493187 (isStrictlySorted!485 (t!25040 l!906)))))

(assert (= (and d!109449 (not res!601669)) b!886004))

(assert (= (and b!886004 res!601670) b!886005))

(assert (=> b!886005 m!825889))

(assert (=> start!75230 d!109449))

(declare-fun b!886010 () Bool)

(declare-fun e!493190 () Bool)

(declare-fun tp!54375 () Bool)

(assert (=> b!886010 (= e!493190 (and tp_is_empty!17809 tp!54375))))

(assert (=> b!885859 (= tp!54366 e!493190)))

(assert (= (and b!885859 (is-Cons!17751 (t!25040 l!906))) b!886010))

(push 1)

(assert (not b!885995))

(assert (not d!109445))

(assert (not d!109441))

(assert (not b!885951))

(assert (not b!885941))

(assert (not b!885897))

(assert (not d!109429))

(assert (not bm!39160))

(assert (not b!885960))

(assert (not d!109439))

(assert (not b!886005))

(assert (not b!885984))

(assert (not b!885974))

(assert (not b!885947))

(assert (not bm!39155))

(assert (not bm!39165))

(assert (not bm!39174))

(assert (not bm!39168))

(assert (not b!885994))

(assert (not b!885989))

(assert (not b!885936))

(assert (not b!886010))

(assert (not b!885965))

(assert (not b!885999))

(assert (not b!885985))

(assert (not d!109447))

(assert (not b!885961))

(assert tp_is_empty!17809)

(assert (not b!885937))

(assert (not b!885979))

(assert (not b!885946))

(assert (not d!109443))

(assert (not d!109427))

(assert (not bm!39171))

(assert (not b!885975))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!109485 () Bool)

(declare-fun lt!401058 () Bool)

(declare-fun content!396 (List!17755) (Set tuple2!11930))

(assert (=> d!109485 (= lt!401058 (set.member (tuple2!11931 key1!49 v2!16) (content!396 lt!401033)))))

(declare-fun e!493293 () Bool)

(assert (=> d!109485 (= lt!401058 e!493293)))

(declare-fun res!601722 () Bool)

(assert (=> d!109485 (=> (not res!601722) (not e!493293))))

(assert (=> d!109485 (= res!601722 (is-Cons!17751 lt!401033))))

(assert (=> d!109485 (= (contains!4291 lt!401033 (tuple2!11931 key1!49 v2!16)) lt!401058)))

(declare-fun b!886191 () Bool)

(declare-fun e!493292 () Bool)

(assert (=> b!886191 (= e!493293 e!493292)))

(declare-fun res!601721 () Bool)

(assert (=> b!886191 (=> res!601721 e!493292)))

(assert (=> b!886191 (= res!601721 (= (h!18882 lt!401033) (tuple2!11931 key1!49 v2!16)))))

(declare-fun b!886192 () Bool)

(assert (=> b!886192 (= e!493292 (contains!4291 (t!25040 lt!401033) (tuple2!11931 key1!49 v2!16)))))

(assert (= (and d!109485 res!601722) b!886191))

(assert (= (and b!886191 (not res!601721)) b!886192))

(declare-fun m!826137 () Bool)

(assert (=> d!109485 m!826137))

(declare-fun m!826139 () Bool)

(assert (=> d!109485 m!826139))

(declare-fun m!826141 () Bool)

(assert (=> b!886192 m!826141))

(assert (=> b!885937 d!109485))

(declare-fun lt!401060 () Bool)

(declare-fun d!109489 () Bool)

(assert (=> d!109489 (= lt!401060 (set.member (tuple2!11931 key1!49 v1!38) (content!396 lt!401036)))))

(declare-fun e!493297 () Bool)

(assert (=> d!109489 (= lt!401060 e!493297)))

(declare-fun res!601726 () Bool)

(assert (=> d!109489 (=> (not res!601726) (not e!493297))))

(assert (=> d!109489 (= res!601726 (is-Cons!17751 lt!401036))))

(assert (=> d!109489 (= (contains!4291 lt!401036 (tuple2!11931 key1!49 v1!38)) lt!401060)))

(declare-fun b!886195 () Bool)

(declare-fun e!493296 () Bool)

(assert (=> b!886195 (= e!493297 e!493296)))

(declare-fun res!601725 () Bool)

(assert (=> b!886195 (=> res!601725 e!493296)))

(assert (=> b!886195 (= res!601725 (= (h!18882 lt!401036) (tuple2!11931 key1!49 v1!38)))))

(declare-fun b!886196 () Bool)

(assert (=> b!886196 (= e!493296 (contains!4291 (t!25040 lt!401036) (tuple2!11931 key1!49 v1!38)))))

(assert (= (and d!109489 res!601726) b!886195))

(assert (= (and b!886195 (not res!601725)) b!886196))

(declare-fun m!826149 () Bool)

(assert (=> d!109489 m!826149))

(declare-fun m!826151 () Bool)

(assert (=> d!109489 m!826151))

(declare-fun m!826153 () Bool)

(assert (=> b!886196 m!826153))

(assert (=> b!885975 d!109489))

(declare-fun d!109495 () Bool)

(declare-fun res!601729 () Bool)

(declare-fun e!493300 () Bool)

(assert (=> d!109495 (=> res!601729 e!493300)))

(assert (=> d!109495 (= res!601729 (or (is-Nil!17752 lt!401037) (is-Nil!17752 (t!25040 lt!401037))))))

(assert (=> d!109495 (= (isStrictlySorted!485 lt!401037) e!493300)))

(declare-fun b!886199 () Bool)

(declare-fun e!493301 () Bool)

(assert (=> b!886199 (= e!493300 e!493301)))

(declare-fun res!601730 () Bool)

(assert (=> b!886199 (=> (not res!601730) (not e!493301))))

(assert (=> b!886199 (= res!601730 (bvslt (_1!5975 (h!18882 lt!401037)) (_1!5975 (h!18882 (t!25040 lt!401037)))))))

(declare-fun b!886200 () Bool)

(assert (=> b!886200 (= e!493301 (isStrictlySorted!485 (t!25040 lt!401037)))))

(assert (= (and d!109495 (not res!601729)) b!886199))

(assert (= (and b!886199 res!601730) b!886200))

(declare-fun m!826157 () Bool)

(assert (=> b!886200 m!826157))

(assert (=> d!109445 d!109495))

(assert (=> d!109445 d!109449))

(declare-fun d!109499 () Bool)

(assert (=> d!109499 (= ($colon$colon!547 e!493182 (ite c!93329 (h!18882 l!906) (tuple2!11931 key1!49 v1!38))) (Cons!17751 (ite c!93329 (h!18882 l!906) (tuple2!11931 key1!49 v1!38)) e!493182))))

(assert (=> bm!39174 d!109499))

(declare-fun d!109505 () Bool)

(assert (=> d!109505 (= ($colon$colon!547 e!493165 (ite c!93317 (h!18882 (t!25040 l!906)) (tuple2!11931 key1!49 v2!16))) (Cons!17751 (ite c!93317 (h!18882 (t!25040 l!906)) (tuple2!11931 key1!49 v2!16)) e!493165))))

(assert (=> bm!39165 d!109505))

(declare-fun d!109507 () Bool)

(declare-fun e!493310 () Bool)

(assert (=> d!109507 e!493310))

(declare-fun res!601738 () Bool)

(assert (=> d!109507 (=> (not res!601738) (not e!493310))))

(declare-fun lt!401062 () List!17755)

(assert (=> d!109507 (= res!601738 (isStrictlySorted!485 lt!401062))))

(declare-fun e!493308 () List!17755)

(assert (=> d!109507 (= lt!401062 e!493308)))

(declare-fun c!93393 () Bool)

(assert (=> d!109507 (= c!93393 (and (is-Cons!17751 (t!25040 (insertStrictlySorted!297 l!906 key1!49 v1!38))) (bvslt (_1!5975 (h!18882 (t!25040 (insertStrictlySorted!297 l!906 key1!49 v1!38)))) key1!49)))))

(assert (=> d!109507 (isStrictlySorted!485 (t!25040 (insertStrictlySorted!297 l!906 key1!49 v1!38)))))

(assert (=> d!109507 (= (insertStrictlySorted!297 (t!25040 (insertStrictlySorted!297 l!906 key1!49 v1!38)) key1!49 v2!16) lt!401062)))

(declare-fun bm!39221 () Bool)

(declare-fun call!39225 () List!17755)

(declare-fun call!39224 () List!17755)

(assert (=> bm!39221 (= call!39225 call!39224)))

(declare-fun e!493309 () List!17755)

(declare-fun b!886207 () Bool)

(assert (=> b!886207 (= e!493309 (insertStrictlySorted!297 (t!25040 (t!25040 (insertStrictlySorted!297 l!906 key1!49 v1!38))) key1!49 v2!16))))

(declare-fun b!886208 () Bool)

(assert (=> b!886208 (= e!493310 (contains!4291 lt!401062 (tuple2!11931 key1!49 v2!16)))))

(declare-fun b!886209 () Bool)

(declare-fun e!493311 () List!17755)

(assert (=> b!886209 (= e!493308 e!493311)))

(declare-fun c!93396 () Bool)

(assert (=> b!886209 (= c!93396 (and (is-Cons!17751 (t!25040 (insertStrictlySorted!297 l!906 key1!49 v1!38))) (= (_1!5975 (h!18882 (t!25040 (insertStrictlySorted!297 l!906 key1!49 v1!38)))) key1!49)))))

(declare-fun b!886210 () Bool)

(declare-fun call!39226 () List!17755)

(assert (=> b!886210 (= e!493308 call!39226)))

(declare-fun b!886211 () Bool)

(declare-fun e!493312 () List!17755)

(assert (=> b!886211 (= e!493312 call!39225)))

(declare-fun b!886212 () Bool)

(declare-fun res!601737 () Bool)

(assert (=> b!886212 (=> (not res!601737) (not e!493310))))

(assert (=> b!886212 (= res!601737 (containsKey!412 lt!401062 key1!49))))

(declare-fun b!886213 () Bool)

(assert (=> b!886213 (= e!493311 call!39224)))

(declare-fun b!886214 () Bool)

(declare-fun c!93394 () Bool)

(assert (=> b!886214 (= e!493309 (ite c!93396 (t!25040 (t!25040 (insertStrictlySorted!297 l!906 key1!49 v1!38))) (ite c!93394 (Cons!17751 (h!18882 (t!25040 (insertStrictlySorted!297 l!906 key1!49 v1!38))) (t!25040 (t!25040 (insertStrictlySorted!297 l!906 key1!49 v1!38)))) Nil!17752)))))

(declare-fun b!886215 () Bool)

(assert (=> b!886215 (= e!493312 call!39225)))

(declare-fun b!886216 () Bool)

(assert (=> b!886216 (= c!93394 (and (is-Cons!17751 (t!25040 (insertStrictlySorted!297 l!906 key1!49 v1!38))) (bvsgt (_1!5975 (h!18882 (t!25040 (insertStrictlySorted!297 l!906 key1!49 v1!38)))) key1!49)))))

(assert (=> b!886216 (= e!493311 e!493312)))

(declare-fun bm!39222 () Bool)

(assert (=> bm!39222 (= call!39226 ($colon$colon!547 e!493309 (ite c!93393 (h!18882 (t!25040 (insertStrictlySorted!297 l!906 key1!49 v1!38))) (tuple2!11931 key1!49 v2!16))))))

(declare-fun c!93395 () Bool)

(assert (=> bm!39222 (= c!93395 c!93393)))

(declare-fun bm!39223 () Bool)

(assert (=> bm!39223 (= call!39224 call!39226)))

(assert (= (and d!109507 c!93393) b!886210))

(assert (= (and d!109507 (not c!93393)) b!886209))

(assert (= (and b!886209 c!93396) b!886213))

(assert (= (and b!886209 (not c!93396)) b!886216))

(assert (= (and b!886216 c!93394) b!886215))

(assert (= (and b!886216 (not c!93394)) b!886211))

(assert (= (or b!886215 b!886211) bm!39221))

(assert (= (or b!886213 bm!39221) bm!39223))

(assert (= (or b!886210 bm!39223) bm!39222))

(assert (= (and bm!39222 c!93395) b!886207))

(assert (= (and bm!39222 (not c!93395)) b!886214))

(assert (= (and d!109507 res!601738) b!886212))

(assert (= (and b!886212 res!601737) b!886208))

(declare-fun m!826171 () Bool)

(assert (=> bm!39222 m!826171))

(declare-fun m!826173 () Bool)

(assert (=> d!109507 m!826173))

(declare-fun m!826176 () Bool)

(assert (=> d!109507 m!826176))

(declare-fun m!826179 () Bool)

(assert (=> b!886212 m!826179))

(declare-fun m!826181 () Bool)

(assert (=> b!886208 m!826181))

(declare-fun m!826183 () Bool)

(assert (=> b!886207 m!826183))

(assert (=> b!885946 d!109507))

(declare-fun d!109519 () Bool)

(declare-fun res!601751 () Bool)

(declare-fun e!493328 () Bool)

(assert (=> d!109519 (=> res!601751 e!493328)))

(assert (=> d!109519 (= res!601751 (and (is-Cons!17751 lt!401037) (= (_1!5975 (h!18882 lt!401037)) key1!49)))))

(assert (=> d!109519 (= (containsKey!412 lt!401037 key1!49) e!493328)))

(declare-fun b!886237 () Bool)

(declare-fun e!493329 () Bool)

(assert (=> b!886237 (= e!493328 e!493329)))

(declare-fun res!601752 () Bool)

(assert (=> b!886237 (=> (not res!601752) (not e!493329))))

(assert (=> b!886237 (= res!601752 (and (or (not (is-Cons!17751 lt!401037)) (bvsle (_1!5975 (h!18882 lt!401037)) key1!49)) (is-Cons!17751 lt!401037) (bvslt (_1!5975 (h!18882 lt!401037)) key1!49)))))

(declare-fun b!886238 () Bool)

(assert (=> b!886238 (= e!493329 (containsKey!412 (t!25040 lt!401037) key1!49))))

(assert (= (and d!109519 (not res!601751)) b!886237))

(assert (= (and b!886237 res!601752) b!886238))

(declare-fun m!826191 () Bool)

(assert (=> b!886238 m!826191))

(assert (=> b!885989 d!109519))

(declare-fun d!109527 () Bool)

(declare-fun lt!401065 () Bool)

(assert (=> d!109527 (= lt!401065 (set.member (tuple2!11931 key1!49 v2!16) (content!396 lt!401034)))))

(declare-fun e!493331 () Bool)

(assert (=> d!109527 (= lt!401065 e!493331)))

(declare-fun res!601754 () Bool)

(assert (=> d!109527 (=> (not res!601754) (not e!493331))))

(assert (=> d!109527 (= res!601754 (is-Cons!17751 lt!401034))))

(assert (=> d!109527 (= (contains!4291 lt!401034 (tuple2!11931 key1!49 v2!16)) lt!401065)))

(declare-fun b!886239 () Bool)

(declare-fun e!493330 () Bool)

(assert (=> b!886239 (= e!493331 e!493330)))

(declare-fun res!601753 () Bool)

(assert (=> b!886239 (=> res!601753 e!493330)))

(assert (=> b!886239 (= res!601753 (= (h!18882 lt!401034) (tuple2!11931 key1!49 v2!16)))))

(declare-fun b!886240 () Bool)

(assert (=> b!886240 (= e!493330 (contains!4291 (t!25040 lt!401034) (tuple2!11931 key1!49 v2!16)))))

(assert (= (and d!109527 res!601754) b!886239))

(assert (= (and b!886239 (not res!601753)) b!886240))

(declare-fun m!826193 () Bool)

(assert (=> d!109527 m!826193))

(declare-fun m!826195 () Bool)

(assert (=> d!109527 m!826195))

(declare-fun m!826197 () Bool)

(assert (=> b!886240 m!826197))

(assert (=> b!885947 d!109527))

(declare-fun d!109529 () Bool)

(declare-fun res!601755 () Bool)

(declare-fun e!493332 () Bool)

(assert (=> d!109529 (=> res!601755 e!493332)))

(assert (=> d!109529 (= res!601755 (or (is-Nil!17752 lt!401036) (is-Nil!17752 (t!25040 lt!401036))))))

(assert (=> d!109529 (= (isStrictlySorted!485 lt!401036) e!493332)))

(declare-fun b!886241 () Bool)

(declare-fun e!493333 () Bool)

(assert (=> b!886241 (= e!493332 e!493333)))

(declare-fun res!601756 () Bool)

(assert (=> b!886241 (=> (not res!601756) (not e!493333))))

(assert (=> b!886241 (= res!601756 (bvslt (_1!5975 (h!18882 lt!401036)) (_1!5975 (h!18882 (t!25040 lt!401036)))))))

(declare-fun b!886242 () Bool)

(assert (=> b!886242 (= e!493333 (isStrictlySorted!485 (t!25040 lt!401036)))))

(assert (= (and d!109529 (not res!601755)) b!886241))

(assert (= (and b!886241 res!601756) b!886242))

(declare-fun m!826209 () Bool)

(assert (=> b!886242 m!826209))

(assert (=> d!109443 d!109529))

(assert (=> d!109443 d!109421))

(declare-fun d!109531 () Bool)

(declare-fun res!601757 () Bool)

(declare-fun e!493334 () Bool)

(assert (=> d!109531 (=> res!601757 e!493334)))

(assert (=> d!109531 (= res!601757 (and (is-Cons!17751 lt!401033) (= (_1!5975 (h!18882 lt!401033)) key1!49)))))

(assert (=> d!109531 (= (containsKey!412 lt!401033 key1!49) e!493334)))

(declare-fun b!886243 () Bool)

(declare-fun e!493335 () Bool)

(assert (=> b!886243 (= e!493334 e!493335)))

(declare-fun res!601758 () Bool)

(assert (=> b!886243 (=> (not res!601758) (not e!493335))))

(assert (=> b!886243 (= res!601758 (and (or (not (is-Cons!17751 lt!401033)) (bvsle (_1!5975 (h!18882 lt!401033)) key1!49)) (is-Cons!17751 lt!401033) (bvslt (_1!5975 (h!18882 lt!401033)) key1!49)))))

(declare-fun b!886244 () Bool)

(assert (=> b!886244 (= e!493335 (containsKey!412 (t!25040 lt!401033) key1!49))))

(assert (= (and d!109531 (not res!601757)) b!886243))

(assert (= (and b!886243 res!601758) b!886244))

(declare-fun m!826214 () Bool)

(assert (=> b!886244 m!826214))

(assert (=> b!885941 d!109531))

(declare-fun d!109535 () Bool)

(declare-fun res!601761 () Bool)

(declare-fun e!493338 () Bool)

(assert (=> d!109535 (=> res!601761 e!493338)))

(assert (=> d!109535 (= res!601761 (or (is-Nil!17752 (t!25040 (t!25040 l!906))) (is-Nil!17752 (t!25040 (t!25040 (t!25040 l!906))))))))

(assert (=> d!109535 (= (isStrictlySorted!485 (t!25040 (t!25040 l!906))) e!493338)))

(declare-fun b!886247 () Bool)

(declare-fun e!493339 () Bool)

(assert (=> b!886247 (= e!493338 e!493339)))

(declare-fun res!601762 () Bool)

(assert (=> b!886247 (=> (not res!601762) (not e!493339))))

(assert (=> b!886247 (= res!601762 (bvslt (_1!5975 (h!18882 (t!25040 (t!25040 l!906)))) (_1!5975 (h!18882 (t!25040 (t!25040 (t!25040 l!906)))))))))

(declare-fun b!886248 () Bool)

(assert (=> b!886248 (= e!493339 (isStrictlySorted!485 (t!25040 (t!25040 (t!25040 l!906)))))))

(assert (= (and d!109535 (not res!601761)) b!886247))

(assert (= (and b!886247 res!601762) b!886248))

(declare-fun m!826217 () Bool)

(assert (=> b!886248 m!826217))

(assert (=> b!885897 d!109535))

(declare-fun d!109539 () Bool)

(declare-fun res!601765 () Bool)

(declare-fun e!493342 () Bool)

(assert (=> d!109539 (=> res!601765 e!493342)))

(assert (=> d!109539 (= res!601765 (and (is-Cons!17751 lt!401036) (= (_1!5975 (h!18882 lt!401036)) key1!49)))))

(assert (=> d!109539 (= (containsKey!412 lt!401036 key1!49) e!493342)))

(declare-fun b!886251 () Bool)

(declare-fun e!493343 () Bool)

(assert (=> b!886251 (= e!493342 e!493343)))

(declare-fun res!601766 () Bool)

(assert (=> b!886251 (=> (not res!601766) (not e!493343))))

(assert (=> b!886251 (= res!601766 (and (or (not (is-Cons!17751 lt!401036)) (bvsle (_1!5975 (h!18882 lt!401036)) key1!49)) (is-Cons!17751 lt!401036) (bvslt (_1!5975 (h!18882 lt!401036)) key1!49)))))

(declare-fun b!886252 () Bool)

(assert (=> b!886252 (= e!493343 (containsKey!412 (t!25040 lt!401036) key1!49))))

(assert (= (and d!109539 (not res!601765)) b!886251))

(assert (= (and b!886251 res!601766) b!886252))

(declare-fun m!826219 () Bool)

(assert (=> b!886252 m!826219))

(assert (=> b!885979 d!109539))

(assert (=> b!885984 d!109441))

(declare-fun d!109543 () Bool)

(declare-fun res!601769 () Bool)

(declare-fun e!493346 () Bool)

(assert (=> d!109543 (=> res!601769 e!493346)))

(assert (=> d!109543 (= res!601769 (or (is-Nil!17752 lt!401038) (is-Nil!17752 (t!25040 lt!401038))))))

(assert (=> d!109543 (= (isStrictlySorted!485 lt!401038) e!493346)))

(declare-fun b!886255 () Bool)

(declare-fun e!493347 () Bool)

(assert (=> b!886255 (= e!493346 e!493347)))

(declare-fun res!601770 () Bool)

(assert (=> b!886255 (=> (not res!601770) (not e!493347))))

(assert (=> b!886255 (= res!601770 (bvslt (_1!5975 (h!18882 lt!401038)) (_1!5975 (h!18882 (t!25040 lt!401038)))))))

(declare-fun b!886256 () Bool)

(assert (=> b!886256 (= e!493347 (isStrictlySorted!485 (t!25040 lt!401038)))))

(assert (= (and d!109543 (not res!601769)) b!886255))

(assert (= (and b!886255 res!601770) b!886256))

(declare-fun m!826223 () Bool)

(assert (=> b!886256 m!826223))

(assert (=> d!109447 d!109543))

(assert (=> d!109447 d!109449))

(declare-fun d!109547 () Bool)

(declare-fun res!601773 () Bool)

(declare-fun e!493350 () Bool)

(assert (=> d!109547 (=> res!601773 e!493350)))

(assert (=> d!109547 (= res!601773 (or (is-Nil!17752 lt!401035) (is-Nil!17752 (t!25040 lt!401035))))))

(assert (=> d!109547 (= (isStrictlySorted!485 lt!401035) e!493350)))

(declare-fun b!886259 () Bool)

(declare-fun e!493351 () Bool)

(assert (=> b!886259 (= e!493350 e!493351)))

(declare-fun res!601774 () Bool)

(assert (=> b!886259 (=> (not res!601774) (not e!493351))))

(assert (=> b!886259 (= res!601774 (bvslt (_1!5975 (h!18882 lt!401035)) (_1!5975 (h!18882 (t!25040 lt!401035)))))))

(declare-fun b!886260 () Bool)

(assert (=> b!886260 (= e!493351 (isStrictlySorted!485 (t!25040 lt!401035)))))

(assert (= (and d!109547 (not res!601773)) b!886259))

(assert (= (and b!886259 res!601774) b!886260))

(declare-fun m!826227 () Bool)

(assert (=> b!886260 m!826227))

(assert (=> d!109441 d!109547))

(assert (=> d!109441 d!109421))

(declare-fun d!109551 () Bool)

(declare-fun res!601777 () Bool)

(declare-fun e!493354 () Bool)

(assert (=> d!109551 (=> res!601777 e!493354)))

(assert (=> d!109551 (= res!601777 (and (is-Cons!17751 lt!401038) (= (_1!5975 (h!18882 lt!401038)) key1!49)))))

(assert (=> d!109551 (= (containsKey!412 lt!401038 key1!49) e!493354)))

(declare-fun b!886263 () Bool)

(declare-fun e!493355 () Bool)

(assert (=> b!886263 (= e!493354 e!493355)))

(declare-fun res!601778 () Bool)

(assert (=> b!886263 (=> (not res!601778) (not e!493355))))

(assert (=> b!886263 (= res!601778 (and (or (not (is-Cons!17751 lt!401038)) (bvsle (_1!5975 (h!18882 lt!401038)) key1!49)) (is-Cons!17751 lt!401038) (bvslt (_1!5975 (h!18882 lt!401038)) key1!49)))))

(declare-fun b!886264 () Bool)

(assert (=> b!886264 (= e!493355 (containsKey!412 (t!25040 lt!401038) key1!49))))

(assert (= (and d!109551 (not res!601777)) b!886263))

(assert (= (and b!886263 res!601778) b!886264))

(declare-fun m!826235 () Bool)

(assert (=> b!886264 m!826235))

(assert (=> b!885999 d!109551))

(declare-fun d!109555 () Bool)

(declare-fun res!601781 () Bool)

(declare-fun e!493361 () Bool)

(assert (=> d!109555 (=> res!601781 e!493361)))

(assert (=> d!109555 (= res!601781 (and (is-Cons!17751 lt!401035) (= (_1!5975 (h!18882 lt!401035)) key1!49)))))

(assert (=> d!109555 (= (containsKey!412 lt!401035 key1!49) e!493361)))

(declare-fun b!886275 () Bool)

(declare-fun e!493362 () Bool)

(assert (=> b!886275 (= e!493361 e!493362)))

(declare-fun res!601782 () Bool)

(assert (=> b!886275 (=> (not res!601782) (not e!493362))))

(assert (=> b!886275 (= res!601782 (and (or (not (is-Cons!17751 lt!401035)) (bvsle (_1!5975 (h!18882 lt!401035)) key1!49)) (is-Cons!17751 lt!401035) (bvslt (_1!5975 (h!18882 lt!401035)) key1!49)))))

(declare-fun b!886276 () Bool)

(assert (=> b!886276 (= e!493362 (containsKey!412 (t!25040 lt!401035) key1!49))))

(assert (= (and d!109555 (not res!601781)) b!886275))

(assert (= (and b!886275 res!601782) b!886276))

(declare-fun m!826237 () Bool)

(assert (=> b!886276 m!826237))

(assert (=> b!885965 d!109555))

(assert (=> b!886005 d!109421))

(declare-fun d!109557 () Bool)

(declare-fun lt!401068 () Bool)

(assert (=> d!109557 (= lt!401068 (set.member (tuple2!11931 key1!49 v2!16) (content!396 lt!401037)))))

(declare-fun e!493364 () Bool)

(assert (=> d!109557 (= lt!401068 e!493364)))

(declare-fun res!601784 () Bool)

(assert (=> d!109557 (=> (not res!601784) (not e!493364))))

(assert (=> d!109557 (= res!601784 (is-Cons!17751 lt!401037))))

(assert (=> d!109557 (= (contains!4291 lt!401037 (tuple2!11931 key1!49 v2!16)) lt!401068)))

(declare-fun b!886277 () Bool)

(declare-fun e!493363 () Bool)

(assert (=> b!886277 (= e!493364 e!493363)))

(declare-fun res!601783 () Bool)

(assert (=> b!886277 (=> res!601783 e!493363)))

(assert (=> b!886277 (= res!601783 (= (h!18882 lt!401037) (tuple2!11931 key1!49 v2!16)))))

(declare-fun b!886278 () Bool)

(assert (=> b!886278 (= e!493363 (contains!4291 (t!25040 lt!401037) (tuple2!11931 key1!49 v2!16)))))

(assert (= (and d!109557 res!601784) b!886277))

(assert (= (and b!886277 (not res!601783)) b!886278))

(declare-fun m!826239 () Bool)

(assert (=> d!109557 m!826239))

(declare-fun m!826241 () Bool)

(assert (=> d!109557 m!826241))

(declare-fun m!826243 () Bool)

(assert (=> b!886278 m!826243))

(assert (=> b!885985 d!109557))

(declare-fun d!109559 () Bool)

(declare-fun e!493367 () Bool)

(assert (=> d!109559 e!493367))

(declare-fun res!601786 () Bool)

(assert (=> d!109559 (=> (not res!601786) (not e!493367))))

(declare-fun lt!401069 () List!17755)

(assert (=> d!109559 (= res!601786 (isStrictlySorted!485 lt!401069))))

(declare-fun e!493365 () List!17755)

(assert (=> d!109559 (= lt!401069 e!493365)))

(declare-fun c!93405 () Bool)

(assert (=> d!109559 (= c!93405 (and (is-Cons!17751 (t!25040 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38))) (bvslt (_1!5975 (h!18882 (t!25040 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38)))) key1!49)))))

(assert (=> d!109559 (isStrictlySorted!485 (t!25040 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38)))))

(assert (=> d!109559 (= (insertStrictlySorted!297 (t!25040 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38)) key1!49 v2!16) lt!401069)))

(declare-fun bm!39230 () Bool)

(declare-fun call!39234 () List!17755)

(declare-fun call!39233 () List!17755)

(assert (=> bm!39230 (= call!39234 call!39233)))

(declare-fun b!886279 () Bool)

(declare-fun e!493366 () List!17755)

(assert (=> b!886279 (= e!493366 (insertStrictlySorted!297 (t!25040 (t!25040 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38))) key1!49 v2!16))))

(declare-fun b!886280 () Bool)

(assert (=> b!886280 (= e!493367 (contains!4291 lt!401069 (tuple2!11931 key1!49 v2!16)))))

(declare-fun b!886281 () Bool)

(declare-fun e!493368 () List!17755)

(assert (=> b!886281 (= e!493365 e!493368)))

(declare-fun c!93408 () Bool)

(assert (=> b!886281 (= c!93408 (and (is-Cons!17751 (t!25040 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38))) (= (_1!5975 (h!18882 (t!25040 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38)))) key1!49)))))

(declare-fun b!886282 () Bool)

(declare-fun call!39235 () List!17755)

(assert (=> b!886282 (= e!493365 call!39235)))

(declare-fun b!886283 () Bool)

(declare-fun e!493369 () List!17755)

(assert (=> b!886283 (= e!493369 call!39234)))

(declare-fun b!886284 () Bool)

(declare-fun res!601785 () Bool)

(assert (=> b!886284 (=> (not res!601785) (not e!493367))))

(assert (=> b!886284 (= res!601785 (containsKey!412 lt!401069 key1!49))))

(declare-fun b!886285 () Bool)

(assert (=> b!886285 (= e!493368 call!39233)))

(declare-fun c!93406 () Bool)

(declare-fun b!886286 () Bool)

(assert (=> b!886286 (= e!493366 (ite c!93408 (t!25040 (t!25040 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38))) (ite c!93406 (Cons!17751 (h!18882 (t!25040 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38))) (t!25040 (t!25040 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38)))) Nil!17752)))))

(declare-fun b!886287 () Bool)

(assert (=> b!886287 (= e!493369 call!39234)))

(declare-fun b!886288 () Bool)

(assert (=> b!886288 (= c!93406 (and (is-Cons!17751 (t!25040 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38))) (bvsgt (_1!5975 (h!18882 (t!25040 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38)))) key1!49)))))

(assert (=> b!886288 (= e!493368 e!493369)))

(declare-fun bm!39231 () Bool)

(assert (=> bm!39231 (= call!39235 ($colon$colon!547 e!493366 (ite c!93405 (h!18882 (t!25040 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38))) (tuple2!11931 key1!49 v2!16))))))

(declare-fun c!93407 () Bool)

(assert (=> bm!39231 (= c!93407 c!93405)))

(declare-fun bm!39232 () Bool)

(assert (=> bm!39232 (= call!39233 call!39235)))

(assert (= (and d!109559 c!93405) b!886282))

(assert (= (and d!109559 (not c!93405)) b!886281))

(assert (= (and b!886281 c!93408) b!886285))

(assert (= (and b!886281 (not c!93408)) b!886288))

(assert (= (and b!886288 c!93406) b!886287))

(assert (= (and b!886288 (not c!93406)) b!886283))

(assert (= (or b!886287 b!886283) bm!39230))

(assert (= (or b!886285 bm!39230) bm!39232))

(assert (= (or b!886282 bm!39232) bm!39231))

(assert (= (and bm!39231 c!93407) b!886279))

(assert (= (and bm!39231 (not c!93407)) b!886286))

(assert (= (and d!109559 res!601786) b!886284))

(assert (= (and b!886284 res!601785) b!886280))

(declare-fun m!826259 () Bool)

(assert (=> bm!39231 m!826259))

(declare-fun m!826261 () Bool)

(assert (=> d!109559 m!826261))

(declare-fun m!826263 () Bool)

(assert (=> d!109559 m!826263))

(declare-fun m!826265 () Bool)

(assert (=> b!886284 m!826265))

(declare-fun m!826267 () Bool)

(assert (=> b!886280 m!826267))

(declare-fun m!826269 () Bool)

(assert (=> b!886279 m!826269))

(assert (=> b!885936 d!109559))

(declare-fun d!109567 () Bool)

(declare-fun e!493378 () Bool)

(assert (=> d!109567 e!493378))

(declare-fun res!601794 () Bool)

(assert (=> d!109567 (=> (not res!601794) (not e!493378))))

(declare-fun lt!401070 () List!17755)

(assert (=> d!109567 (= res!601794 (isStrictlySorted!485 lt!401070))))

(declare-fun e!493376 () List!17755)

(assert (=> d!109567 (= lt!401070 e!493376)))

(declare-fun c!93409 () Bool)

(assert (=> d!109567 (= c!93409 (and (is-Cons!17751 (t!25040 (t!25040 l!906))) (bvslt (_1!5975 (h!18882 (t!25040 (t!25040 l!906)))) key1!49)))))

(assert (=> d!109567 (isStrictlySorted!485 (t!25040 (t!25040 l!906)))))

(assert (=> d!109567 (= (insertStrictlySorted!297 (t!25040 (t!25040 l!906)) key1!49 v1!38) lt!401070)))

(declare-fun bm!39233 () Bool)

(declare-fun call!39237 () List!17755)

(declare-fun call!39236 () List!17755)

(assert (=> bm!39233 (= call!39237 call!39236)))

(declare-fun b!886295 () Bool)

(declare-fun e!493377 () List!17755)

(assert (=> b!886295 (= e!493377 (insertStrictlySorted!297 (t!25040 (t!25040 (t!25040 l!906))) key1!49 v1!38))))

(declare-fun b!886296 () Bool)

(assert (=> b!886296 (= e!493378 (contains!4291 lt!401070 (tuple2!11931 key1!49 v1!38)))))

(declare-fun b!886297 () Bool)

(declare-fun e!493379 () List!17755)

(assert (=> b!886297 (= e!493376 e!493379)))

(declare-fun c!93412 () Bool)

(assert (=> b!886297 (= c!93412 (and (is-Cons!17751 (t!25040 (t!25040 l!906))) (= (_1!5975 (h!18882 (t!25040 (t!25040 l!906)))) key1!49)))))

(declare-fun b!886298 () Bool)

(declare-fun call!39238 () List!17755)

(assert (=> b!886298 (= e!493376 call!39238)))

(declare-fun b!886299 () Bool)

(declare-fun e!493380 () List!17755)

(assert (=> b!886299 (= e!493380 call!39237)))

(declare-fun b!886300 () Bool)

(declare-fun res!601793 () Bool)

(assert (=> b!886300 (=> (not res!601793) (not e!493378))))

(assert (=> b!886300 (= res!601793 (containsKey!412 lt!401070 key1!49))))

(declare-fun b!886301 () Bool)

(assert (=> b!886301 (= e!493379 call!39236)))

(declare-fun b!886302 () Bool)

(declare-fun c!93410 () Bool)

(assert (=> b!886302 (= e!493377 (ite c!93412 (t!25040 (t!25040 (t!25040 l!906))) (ite c!93410 (Cons!17751 (h!18882 (t!25040 (t!25040 l!906))) (t!25040 (t!25040 (t!25040 l!906)))) Nil!17752)))))

(declare-fun b!886303 () Bool)

(assert (=> b!886303 (= e!493380 call!39237)))

(declare-fun b!886304 () Bool)

(assert (=> b!886304 (= c!93410 (and (is-Cons!17751 (t!25040 (t!25040 l!906))) (bvsgt (_1!5975 (h!18882 (t!25040 (t!25040 l!906)))) key1!49)))))

(assert (=> b!886304 (= e!493379 e!493380)))

(declare-fun bm!39234 () Bool)

(assert (=> bm!39234 (= call!39238 ($colon$colon!547 e!493377 (ite c!93409 (h!18882 (t!25040 (t!25040 l!906))) (tuple2!11931 key1!49 v1!38))))))

(declare-fun c!93411 () Bool)

(assert (=> bm!39234 (= c!93411 c!93409)))

(declare-fun bm!39235 () Bool)

(assert (=> bm!39235 (= call!39236 call!39238)))

(assert (= (and d!109567 c!93409) b!886298))

(assert (= (and d!109567 (not c!93409)) b!886297))

(assert (= (and b!886297 c!93412) b!886301))

(assert (= (and b!886297 (not c!93412)) b!886304))

(assert (= (and b!886304 c!93410) b!886303))

(assert (= (and b!886304 (not c!93410)) b!886299))

(assert (= (or b!886303 b!886299) bm!39233))

(assert (= (or b!886301 bm!39233) bm!39235))

(assert (= (or b!886298 bm!39235) bm!39234))

(assert (= (and bm!39234 c!93411) b!886295))

(assert (= (and bm!39234 (not c!93411)) b!886302))

(assert (= (and d!109567 res!601794) b!886300))

(assert (= (and b!886300 res!601793) b!886296))

(declare-fun m!826273 () Bool)

(assert (=> bm!39234 m!826273))

(declare-fun m!826275 () Bool)

(assert (=> d!109567 m!826275))

(assert (=> d!109567 m!825931))

(declare-fun m!826277 () Bool)

(assert (=> b!886300 m!826277))

(declare-fun m!826281 () Bool)

(assert (=> b!886296 m!826281))

(declare-fun m!826283 () Bool)

(assert (=> b!886295 m!826283))

(assert (=> b!885974 d!109567))

(declare-fun d!109571 () Bool)

(assert (=> d!109571 (= ($colon$colon!547 e!493158 (ite c!93311 (h!18882 (insertStrictlySorted!297 l!906 key1!49 v1!38)) (tuple2!11931 key1!49 v2!16))) (Cons!17751 (ite c!93311 (h!18882 (insertStrictlySorted!297 l!906 key1!49 v1!38)) (tuple2!11931 key1!49 v2!16)) e!493158))))

(assert (=> bm!39160 d!109571))

(assert (=> b!885994 d!109443))

(declare-fun d!109575 () Bool)

(declare-fun e!493390 () Bool)

(assert (=> d!109575 e!493390))

(declare-fun res!601800 () Bool)

(assert (=> d!109575 (=> (not res!601800) (not e!493390))))

(declare-fun lt!401073 () List!17755)

(assert (=> d!109575 (= res!601800 (isStrictlySorted!485 lt!401073))))

(declare-fun e!493388 () List!17755)

(assert (=> d!109575 (= lt!401073 e!493388)))

(declare-fun c!93417 () Bool)

(assert (=> d!109575 (= c!93417 (and (is-Cons!17751 (t!25040 (t!25040 l!906))) (bvslt (_1!5975 (h!18882 (t!25040 (t!25040 l!906)))) key1!49)))))

(assert (=> d!109575 (isStrictlySorted!485 (t!25040 (t!25040 l!906)))))

(assert (=> d!109575 (= (insertStrictlySorted!297 (t!25040 (t!25040 l!906)) key1!49 v2!16) lt!401073)))

(declare-fun bm!39239 () Bool)

(declare-fun call!39243 () List!17755)

(declare-fun call!39242 () List!17755)

(assert (=> bm!39239 (= call!39243 call!39242)))

(declare-fun e!493389 () List!17755)

(declare-fun b!886317 () Bool)

(assert (=> b!886317 (= e!493389 (insertStrictlySorted!297 (t!25040 (t!25040 (t!25040 l!906))) key1!49 v2!16))))

(declare-fun b!886318 () Bool)

(assert (=> b!886318 (= e!493390 (contains!4291 lt!401073 (tuple2!11931 key1!49 v2!16)))))

(declare-fun b!886319 () Bool)

(declare-fun e!493391 () List!17755)

(assert (=> b!886319 (= e!493388 e!493391)))

(declare-fun c!93420 () Bool)

(assert (=> b!886319 (= c!93420 (and (is-Cons!17751 (t!25040 (t!25040 l!906))) (= (_1!5975 (h!18882 (t!25040 (t!25040 l!906)))) key1!49)))))

(declare-fun b!886320 () Bool)

(declare-fun call!39244 () List!17755)

(assert (=> b!886320 (= e!493388 call!39244)))

(declare-fun b!886321 () Bool)

(declare-fun e!493392 () List!17755)

(assert (=> b!886321 (= e!493392 call!39243)))

(declare-fun b!886322 () Bool)

(declare-fun res!601799 () Bool)

(assert (=> b!886322 (=> (not res!601799) (not e!493390))))

(assert (=> b!886322 (= res!601799 (containsKey!412 lt!401073 key1!49))))

(declare-fun b!886323 () Bool)

(assert (=> b!886323 (= e!493391 call!39242)))

(declare-fun b!886324 () Bool)

(declare-fun c!93418 () Bool)

(assert (=> b!886324 (= e!493389 (ite c!93420 (t!25040 (t!25040 (t!25040 l!906))) (ite c!93418 (Cons!17751 (h!18882 (t!25040 (t!25040 l!906))) (t!25040 (t!25040 (t!25040 l!906)))) Nil!17752)))))

(declare-fun b!886325 () Bool)

(assert (=> b!886325 (= e!493392 call!39243)))

(declare-fun b!886326 () Bool)

(assert (=> b!886326 (= c!93418 (and (is-Cons!17751 (t!25040 (t!25040 l!906))) (bvsgt (_1!5975 (h!18882 (t!25040 (t!25040 l!906)))) key1!49)))))

(assert (=> b!886326 (= e!493391 e!493392)))

(declare-fun bm!39240 () Bool)

(assert (=> bm!39240 (= call!39244 ($colon$colon!547 e!493389 (ite c!93417 (h!18882 (t!25040 (t!25040 l!906))) (tuple2!11931 key1!49 v2!16))))))

(declare-fun c!93419 () Bool)

(assert (=> bm!39240 (= c!93419 c!93417)))

(declare-fun bm!39241 () Bool)

(assert (=> bm!39241 (= call!39242 call!39244)))

(assert (= (and d!109575 c!93417) b!886320))

(assert (= (and d!109575 (not c!93417)) b!886319))

(assert (= (and b!886319 c!93420) b!886323))

(assert (= (and b!886319 (not c!93420)) b!886326))

(assert (= (and b!886326 c!93418) b!886325))

(assert (= (and b!886326 (not c!93418)) b!886321))

(assert (= (or b!886325 b!886321) bm!39239))

(assert (= (or b!886323 bm!39239) bm!39241))

(assert (= (or b!886320 bm!39241) bm!39240))

(assert (= (and bm!39240 c!93419) b!886317))

(assert (= (and bm!39240 (not c!93419)) b!886324))

(assert (= (and d!109575 res!601800) b!886322))

(assert (= (and b!886322 res!601799) b!886318))

(declare-fun m!826305 () Bool)

(assert (=> bm!39240 m!826305))

(declare-fun m!826307 () Bool)

(assert (=> d!109575 m!826307))

(assert (=> d!109575 m!825931))

(declare-fun m!826309 () Bool)

(assert (=> b!886322 m!826309))

(declare-fun m!826311 () Bool)

(assert (=> b!886318 m!826311))

(declare-fun m!826313 () Bool)

(assert (=> b!886317 m!826313))

(assert (=> b!885960 d!109575))

(declare-fun d!109579 () Bool)

(declare-fun res!601803 () Bool)

(declare-fun e!493396 () Bool)

(assert (=> d!109579 (=> res!601803 e!493396)))

(assert (=> d!109579 (= res!601803 (or (is-Nil!17752 lt!401033) (is-Nil!17752 (t!25040 lt!401033))))))

(assert (=> d!109579 (= (isStrictlySorted!485 lt!401033) e!493396)))

(declare-fun b!886330 () Bool)

(declare-fun e!493397 () Bool)

(assert (=> b!886330 (= e!493396 e!493397)))

(declare-fun res!601804 () Bool)

(assert (=> b!886330 (=> (not res!601804) (not e!493397))))

(assert (=> b!886330 (= res!601804 (bvslt (_1!5975 (h!18882 lt!401033)) (_1!5975 (h!18882 (t!25040 lt!401033)))))))

(declare-fun b!886331 () Bool)

(assert (=> b!886331 (= e!493397 (isStrictlySorted!485 (t!25040 lt!401033)))))

(assert (= (and d!109579 (not res!601803)) b!886330))

(assert (= (and b!886330 res!601804) b!886331))

(declare-fun m!826315 () Bool)

(assert (=> b!886331 m!826315))

(assert (=> d!109429 d!109579))

(declare-fun d!109581 () Bool)

(declare-fun res!601805 () Bool)

(declare-fun e!493398 () Bool)

(assert (=> d!109581 (=> res!601805 e!493398)))

(assert (=> d!109581 (= res!601805 (or (is-Nil!17752 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38)) (is-Nil!17752 (t!25040 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38)))))))

(assert (=> d!109581 (= (isStrictlySorted!485 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38)) e!493398)))

(declare-fun b!886332 () Bool)

(declare-fun e!493399 () Bool)

(assert (=> b!886332 (= e!493398 e!493399)))

(declare-fun res!601806 () Bool)

(assert (=> b!886332 (=> (not res!601806) (not e!493399))))

(assert (=> b!886332 (= res!601806 (bvslt (_1!5975 (h!18882 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38))) (_1!5975 (h!18882 (t!25040 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38))))))))

(declare-fun b!886333 () Bool)

(assert (=> b!886333 (= e!493399 (isStrictlySorted!485 (t!25040 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38))))))

(assert (= (and d!109581 (not res!601805)) b!886332))

(assert (= (and b!886332 res!601806) b!886333))

(assert (=> b!886333 m!826263))

(assert (=> d!109429 d!109581))

(declare-fun lt!401075 () Bool)

(declare-fun d!109583 () Bool)

(assert (=> d!109583 (= lt!401075 (set.member (tuple2!11931 key1!49 v1!38) (content!396 lt!401038)))))

(declare-fun e!493401 () Bool)

(assert (=> d!109583 (= lt!401075 e!493401)))

(declare-fun res!601808 () Bool)

(assert (=> d!109583 (=> (not res!601808) (not e!493401))))

(assert (=> d!109583 (= res!601808 (is-Cons!17751 lt!401038))))

(assert (=> d!109583 (= (contains!4291 lt!401038 (tuple2!11931 key1!49 v1!38)) lt!401075)))

(declare-fun b!886334 () Bool)

(declare-fun e!493400 () Bool)

(assert (=> b!886334 (= e!493401 e!493400)))

(declare-fun res!601807 () Bool)

(assert (=> b!886334 (=> res!601807 e!493400)))

(assert (=> b!886334 (= res!601807 (= (h!18882 lt!401038) (tuple2!11931 key1!49 v1!38)))))

(declare-fun b!886335 () Bool)

(assert (=> b!886335 (= e!493400 (contains!4291 (t!25040 lt!401038) (tuple2!11931 key1!49 v1!38)))))

(assert (= (and d!109583 res!601808) b!886334))

(assert (= (and b!886334 (not res!601807)) b!886335))

(declare-fun m!826317 () Bool)

(assert (=> d!109583 m!826317))

(declare-fun m!826319 () Bool)

(assert (=> d!109583 m!826319))

(declare-fun m!826321 () Bool)

(assert (=> b!886335 m!826321))

(assert (=> b!885995 d!109583))

(declare-fun lt!401076 () Bool)

(declare-fun d!109585 () Bool)

(assert (=> d!109585 (= lt!401076 (set.member (tuple2!11931 key1!49 v2!16) (content!396 lt!401035)))))

(declare-fun e!493403 () Bool)

(assert (=> d!109585 (= lt!401076 e!493403)))

(declare-fun res!601810 () Bool)

(assert (=> d!109585 (=> (not res!601810) (not e!493403))))

(assert (=> d!109585 (= res!601810 (is-Cons!17751 lt!401035))))

(assert (=> d!109585 (= (contains!4291 lt!401035 (tuple2!11931 key1!49 v2!16)) lt!401076)))

(declare-fun b!886336 () Bool)

(declare-fun e!493402 () Bool)

(assert (=> b!886336 (= e!493403 e!493402)))

(declare-fun res!601809 () Bool)

(assert (=> b!886336 (=> res!601809 e!493402)))

(assert (=> b!886336 (= res!601809 (= (h!18882 lt!401035) (tuple2!11931 key1!49 v2!16)))))

(declare-fun b!886337 () Bool)

(assert (=> b!886337 (= e!493402 (contains!4291 (t!25040 lt!401035) (tuple2!11931 key1!49 v2!16)))))

(assert (= (and d!109585 res!601810) b!886336))

(assert (= (and b!886336 (not res!601809)) b!886337))

(declare-fun m!826323 () Bool)

(assert (=> d!109585 m!826323))

(declare-fun m!826325 () Bool)

(assert (=> d!109585 m!826325))

(declare-fun m!826327 () Bool)

(assert (=> b!886337 m!826327))

(assert (=> b!885961 d!109585))

(declare-fun d!109587 () Bool)

(assert (=> d!109587 (= ($colon$colon!547 e!493177 (ite c!93325 (h!18882 l!906) (tuple2!11931 key1!49 v2!16))) (Cons!17751 (ite c!93325 (h!18882 l!906) (tuple2!11931 key1!49 v2!16)) e!493177))))

(assert (=> bm!39171 d!109587))

(declare-fun d!109589 () Bool)

(declare-fun res!601811 () Bool)

(declare-fun e!493404 () Bool)

(assert (=> d!109589 (=> res!601811 e!493404)))

(assert (=> d!109589 (= res!601811 (or (is-Nil!17752 lt!401034) (is-Nil!17752 (t!25040 lt!401034))))))

(assert (=> d!109589 (= (isStrictlySorted!485 lt!401034) e!493404)))

(declare-fun b!886338 () Bool)

(declare-fun e!493405 () Bool)

(assert (=> b!886338 (= e!493404 e!493405)))

(declare-fun res!601812 () Bool)

(assert (=> b!886338 (=> (not res!601812) (not e!493405))))

(assert (=> b!886338 (= res!601812 (bvslt (_1!5975 (h!18882 lt!401034)) (_1!5975 (h!18882 (t!25040 lt!401034)))))))

(declare-fun b!886339 () Bool)

(assert (=> b!886339 (= e!493405 (isStrictlySorted!485 (t!25040 lt!401034)))))

(assert (= (and d!109589 (not res!601811)) b!886338))

(assert (= (and b!886338 res!601812) b!886339))

(declare-fun m!826329 () Bool)

(assert (=> b!886339 m!826329))

(assert (=> d!109439 d!109589))

(declare-fun d!109591 () Bool)

(declare-fun res!601813 () Bool)

(declare-fun e!493406 () Bool)

(assert (=> d!109591 (=> res!601813 e!493406)))

(assert (=> d!109591 (= res!601813 (or (is-Nil!17752 (insertStrictlySorted!297 l!906 key1!49 v1!38)) (is-Nil!17752 (t!25040 (insertStrictlySorted!297 l!906 key1!49 v1!38)))))))

(assert (=> d!109591 (= (isStrictlySorted!485 (insertStrictlySorted!297 l!906 key1!49 v1!38)) e!493406)))

(declare-fun b!886340 () Bool)

(declare-fun e!493407 () Bool)

(assert (=> b!886340 (= e!493406 e!493407)))

(declare-fun res!601814 () Bool)

(assert (=> b!886340 (=> (not res!601814) (not e!493407))))

(assert (=> b!886340 (= res!601814 (bvslt (_1!5975 (h!18882 (insertStrictlySorted!297 l!906 key1!49 v1!38))) (_1!5975 (h!18882 (t!25040 (insertStrictlySorted!297 l!906 key1!49 v1!38))))))))

(declare-fun b!886341 () Bool)

(assert (=> b!886341 (= e!493407 (isStrictlySorted!485 (t!25040 (insertStrictlySorted!297 l!906 key1!49 v1!38))))))

(assert (= (and d!109591 (not res!601813)) b!886340))

(assert (= (and b!886340 res!601814) b!886341))

(assert (=> b!886341 m!826176))

(assert (=> d!109439 d!109591))

(declare-fun d!109593 () Bool)

(declare-fun res!601815 () Bool)

(declare-fun e!493408 () Bool)

(assert (=> d!109593 (=> res!601815 e!493408)))

(assert (=> d!109593 (= res!601815 (and (is-Cons!17751 lt!401034) (= (_1!5975 (h!18882 lt!401034)) key1!49)))))

(assert (=> d!109593 (= (containsKey!412 lt!401034 key1!49) e!493408)))

(declare-fun b!886342 () Bool)

(declare-fun e!493409 () Bool)

(assert (=> b!886342 (= e!493408 e!493409)))

(declare-fun res!601816 () Bool)

(assert (=> b!886342 (=> (not res!601816) (not e!493409))))

(assert (=> b!886342 (= res!601816 (and (or (not (is-Cons!17751 lt!401034)) (bvsle (_1!5975 (h!18882 lt!401034)) key1!49)) (is-Cons!17751 lt!401034) (bvslt (_1!5975 (h!18882 lt!401034)) key1!49)))))

(declare-fun b!886343 () Bool)

(assert (=> b!886343 (= e!493409 (containsKey!412 (t!25040 lt!401034) key1!49))))

(assert (= (and d!109593 (not res!601815)) b!886342))

(assert (= (and b!886342 res!601816) b!886343))

(declare-fun m!826331 () Bool)

(assert (=> b!886343 m!826331))

(assert (=> b!885951 d!109593))

(declare-fun d!109595 () Bool)

(assert (=> d!109595 (= ($colon$colon!547 e!493153 (ite c!93307 (h!18882 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38)) (tuple2!11931 key1!49 v2!16))) (Cons!17751 (ite c!93307 (h!18882 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38)) (tuple2!11931 key1!49 v2!16)) e!493153))))

(assert (=> bm!39155 d!109595))

(assert (=> d!109427 d!109429))

(assert (=> d!109427 d!109421))

(assert (=> d!109427 d!109441))

(assert (=> d!109427 d!109443))

(declare-fun d!109597 () Bool)

(assert (=> d!109597 (= (insertStrictlySorted!297 (insertStrictlySorted!297 (t!25040 l!906) key1!49 v1!38) key1!49 v2!16) (insertStrictlySorted!297 (t!25040 l!906) key1!49 v2!16))))

(assert (=> d!109597 true))

(declare-fun _$8!136 () Unit!30205)

(assert (=> d!109597 (= (choose!1458 (t!25040 l!906) key1!49 v1!38 v2!16) _$8!136)))

(declare-fun bs!24845 () Bool)

(assert (= bs!24845 d!109597))

(assert (=> bs!24845 m!825875))

(assert (=> bs!24845 m!825875))

(assert (=> bs!24845 m!825877))

(assert (=> bs!24845 m!825885))

(assert (=> d!109427 d!109597))

(declare-fun d!109599 () Bool)

(assert (=> d!109599 (= ($colon$colon!547 e!493172 (ite c!93321 (h!18882 (t!25040 l!906)) (tuple2!11931 key1!49 v1!38))) (Cons!17751 (ite c!93321 (h!18882 (t!25040 l!906)) (tuple2!11931 key1!49 v1!38)) e!493172))))

(assert (=> bm!39168 d!109599))

(declare-fun b!886344 () Bool)

(declare-fun e!493410 () Bool)

(declare-fun tp!54383 () Bool)

(assert (=> b!886344 (= e!493410 (and tp_is_empty!17809 tp!54383))))

(assert (=> b!886010 (= tp!54375 e!493410)))

(assert (= (and b!886010 (is-Cons!17751 (t!25040 (t!25040 l!906)))) b!886344))

(push 1)

(assert (not b!886339))

(assert (not b!886331))

(assert (not b!886256))

(assert (not b!886238))

(assert (not d!109583))

(assert (not b!886196))

(assert (not b!886244))

(assert (not bm!39240))

(assert (not b!886279))

(assert (not bm!39231))

(assert (not bm!39234))

(assert (not d!109597))

(assert (not b!886208))

(assert (not b!886240))

(assert (not b!886242))

(assert (not b!886264))

(assert (not b!886248))

(assert (not d!109567))

(assert (not d!109575))

(assert (not b!886341))

(assert (not bm!39222))

(assert (not b!886276))

(assert (not b!886295))

(assert (not d!109559))

(assert (not b!886322))

(assert (not b!886300))

(assert (not d!109585))

(assert (not b!886278))

(assert (not d!109485))

(assert (not b!886335))

(assert (not d!109527))

(assert (not b!886207))

(assert (not b!886260))

(assert (not d!109507))

(assert tp_is_empty!17809)

(assert (not b!886343))

(assert (not d!109557))

(assert (not b!886344))

(assert (not b!886252))

(assert (not b!886212))

(assert (not b!886317))

(assert (not b!886333))

(assert (not b!886337))

(assert (not d!109489))

(assert (not b!886318))

(assert (not b!886200))

(assert (not b!886192))

(assert (not b!886284))

(assert (not b!886296))

(assert (not b!886280))

(check-sat)

(pop 1)

(push 1)

(check-sat)

