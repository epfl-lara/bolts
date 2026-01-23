; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!722460 () Bool)

(assert start!722460)

(declare-fun b!7433902 () Bool)

(assert (=> b!7433902 true))

(declare-fun e!4440050 () Bool)

(declare-fun lambda!460220 () Int)

(declare-datatypes ((C!39142 0))(
  ( (C!39143 (val!29945 Int)) )
))
(declare-datatypes ((Regex!19434 0))(
  ( (ElementMatch!19434 (c!1376326 C!39142)) (Concat!28279 (regOne!39380 Regex!19434) (regTwo!39380 Regex!19434)) (EmptyExpr!19434) (Star!19434 (reg!19763 Regex!19434)) (EmptyLang!19434) (Union!19434 (regOne!39381 Regex!19434) (regTwo!39381 Regex!19434)) )
))
(declare-datatypes ((List!72080 0))(
  ( (Nil!71956) (Cons!71956 (h!78404 Regex!19434) (t!386641 List!72080)) )
))
(declare-datatypes ((Context!16748 0))(
  ( (Context!16749 (exprs!8874 List!72080)) )
))
(declare-fun z!3488 () (Set Context!16748))

(declare-fun lt!2619174 () (Set Context!16748))

(declare-datatypes ((List!72081 0))(
  ( (Nil!71957) (Cons!71957 (h!78405 Context!16748) (t!386642 List!72081)) )
))
(declare-fun head!15248 (List!72081) Context!16748)

(declare-fun toList!11777 ((Set Context!16748)) List!72081)

(declare-fun flatMap!3224 ((Set Context!16748) Int) (Set Context!16748))

(assert (=> b!7433902 (= e!4440050 (not (set.member (head!15248 (toList!11777 lt!2619174)) (flatMap!3224 z!3488 lambda!460220))))))

(declare-fun setIsEmpty!56452 () Bool)

(declare-fun setRes!56452 () Bool)

(assert (=> setIsEmpty!56452 setRes!56452))

(declare-fun b!7433903 () Bool)

(declare-fun e!4440053 () Bool)

(declare-fun tp!2145317 () Bool)

(assert (=> b!7433903 (= e!4440053 tp!2145317)))

(declare-fun b!7433904 () Bool)

(declare-fun res!2985201 () Bool)

(assert (=> b!7433904 (=> (not res!2985201) (not e!4440050))))

(assert (=> b!7433904 (= res!2985201 (not (= lt!2619174 (as set.empty (Set Context!16748)))))))

(declare-fun b!7433905 () Bool)

(declare-fun e!4440052 () Bool)

(declare-fun tp_is_empty!49131 () Bool)

(declare-fun tp!2145318 () Bool)

(assert (=> b!7433905 (= e!4440052 (and tp_is_empty!49131 tp!2145318))))

(declare-fun b!7433906 () Bool)

(declare-fun e!4440051 () Bool)

(assert (=> b!7433906 (= e!4440051 e!4440050)))

(declare-fun res!2985199 () Bool)

(assert (=> b!7433906 (=> (not res!2985199) (not e!4440050))))

(declare-fun lt!2619175 () Context!16748)

(declare-datatypes ((List!72082 0))(
  ( (Nil!71958) (Cons!71958 (h!78406 C!39142) (t!386643 List!72082)) )
))
(declare-fun s!7945 () List!72082)

(declare-fun derivationStepZipperUp!2830 (Context!16748 C!39142) (Set Context!16748))

(assert (=> b!7433906 (= res!2985199 (= (derivationStepZipperUp!2830 lt!2619175 (h!78406 s!7945)) (as set.empty (Set Context!16748))))))

(declare-fun derivationStepZipper!3700 ((Set Context!16748) C!39142) (Set Context!16748))

(assert (=> b!7433906 (= lt!2619174 (derivationStepZipper!3700 z!3488 (h!78406 s!7945)))))

(declare-fun res!2985200 () Bool)

(assert (=> start!722460 (=> (not res!2985200) (not e!4440051))))

(assert (=> start!722460 (= res!2985200 (and (= z!3488 (set.insert lt!2619175 (as set.empty (Set Context!16748)))) (is-Cons!71958 s!7945)))))

(assert (=> start!722460 (= lt!2619175 (Context!16749 Nil!71956))))

(assert (=> start!722460 e!4440051))

(declare-fun condSetEmpty!56452 () Bool)

(assert (=> start!722460 (= condSetEmpty!56452 (= z!3488 (as set.empty (Set Context!16748))))))

(assert (=> start!722460 setRes!56452))

(assert (=> start!722460 e!4440052))

(declare-fun setElem!56452 () Context!16748)

(declare-fun setNonEmpty!56452 () Bool)

(declare-fun tp!2145319 () Bool)

(declare-fun inv!91947 (Context!16748) Bool)

(assert (=> setNonEmpty!56452 (= setRes!56452 (and tp!2145319 (inv!91947 setElem!56452) e!4440053))))

(declare-fun setRest!56452 () (Set Context!16748))

(assert (=> setNonEmpty!56452 (= z!3488 (set.union (set.insert setElem!56452 (as set.empty (Set Context!16748))) setRest!56452))))

(assert (= (and start!722460 res!2985200) b!7433906))

(assert (= (and b!7433906 res!2985199) b!7433904))

(assert (= (and b!7433904 res!2985201) b!7433902))

(assert (= (and start!722460 condSetEmpty!56452) setIsEmpty!56452))

(assert (= (and start!722460 (not condSetEmpty!56452)) setNonEmpty!56452))

(assert (= setNonEmpty!56452 b!7433903))

(assert (= (and start!722460 (is-Cons!71958 s!7945)) b!7433905))

(declare-fun m!8049936 () Bool)

(assert (=> b!7433902 m!8049936))

(assert (=> b!7433902 m!8049936))

(declare-fun m!8049938 () Bool)

(assert (=> b!7433902 m!8049938))

(declare-fun m!8049940 () Bool)

(assert (=> b!7433902 m!8049940))

(assert (=> b!7433902 m!8049938))

(declare-fun m!8049942 () Bool)

(assert (=> b!7433902 m!8049942))

(declare-fun m!8049944 () Bool)

(assert (=> b!7433906 m!8049944))

(declare-fun m!8049946 () Bool)

(assert (=> b!7433906 m!8049946))

(declare-fun m!8049948 () Bool)

(assert (=> start!722460 m!8049948))

(declare-fun m!8049950 () Bool)

(assert (=> setNonEmpty!56452 m!8049950))

(push 1)

(assert (not b!7433902))

(assert (not b!7433903))

(assert (not b!7433905))

(assert (not setNonEmpty!56452))

(assert (not b!7433906))

(assert tp_is_empty!49131)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7433936 () Bool)

(declare-fun e!4440072 () (Set Context!16748))

(declare-fun e!4440074 () (Set Context!16748))

(assert (=> b!7433936 (= e!4440072 e!4440074)))

(declare-fun c!1376333 () Bool)

(assert (=> b!7433936 (= c!1376333 (is-Cons!71956 (exprs!8874 lt!2619175)))))

(declare-fun d!2293961 () Bool)

(declare-fun c!1376332 () Bool)

(declare-fun e!4440073 () Bool)

(assert (=> d!2293961 (= c!1376332 e!4440073)))

(declare-fun res!2985213 () Bool)

(assert (=> d!2293961 (=> (not res!2985213) (not e!4440073))))

(assert (=> d!2293961 (= res!2985213 (is-Cons!71956 (exprs!8874 lt!2619175)))))

(assert (=> d!2293961 (= (derivationStepZipperUp!2830 lt!2619175 (h!78406 s!7945)) e!4440072)))

(declare-fun bm!683182 () Bool)

(declare-fun call!683187 () (Set Context!16748))

(declare-fun derivationStepZipperDown!3220 (Regex!19434 Context!16748 C!39142) (Set Context!16748))

(assert (=> bm!683182 (= call!683187 (derivationStepZipperDown!3220 (h!78404 (exprs!8874 lt!2619175)) (Context!16749 (t!386641 (exprs!8874 lt!2619175))) (h!78406 s!7945)))))

(declare-fun b!7433937 () Bool)

(declare-fun nullable!8472 (Regex!19434) Bool)

(assert (=> b!7433937 (= e!4440073 (nullable!8472 (h!78404 (exprs!8874 lt!2619175))))))

(declare-fun b!7433938 () Bool)

(assert (=> b!7433938 (= e!4440072 (set.union call!683187 (derivationStepZipperUp!2830 (Context!16749 (t!386641 (exprs!8874 lt!2619175))) (h!78406 s!7945))))))

(declare-fun b!7433939 () Bool)

(assert (=> b!7433939 (= e!4440074 (as set.empty (Set Context!16748)))))

(declare-fun b!7433940 () Bool)

(assert (=> b!7433940 (= e!4440074 call!683187)))

(assert (= (and d!2293961 res!2985213) b!7433937))

(assert (= (and d!2293961 c!1376332) b!7433938))

(assert (= (and d!2293961 (not c!1376332)) b!7433936))

(assert (= (and b!7433936 c!1376333) b!7433940))

(assert (= (and b!7433936 (not c!1376333)) b!7433939))

(assert (= (or b!7433938 b!7433940) bm!683182))

(declare-fun m!8049968 () Bool)

(assert (=> bm!683182 m!8049968))

(declare-fun m!8049970 () Bool)

(assert (=> b!7433937 m!8049970))

(declare-fun m!8049972 () Bool)

(assert (=> b!7433938 m!8049972))

(assert (=> b!7433906 d!2293961))

(declare-fun bs!1925527 () Bool)

(declare-fun d!2293963 () Bool)

(assert (= bs!1925527 (and d!2293963 b!7433902)))

(declare-fun lambda!460226 () Int)

(assert (=> bs!1925527 (= lambda!460226 lambda!460220)))

(assert (=> d!2293963 true))

(assert (=> d!2293963 (= (derivationStepZipper!3700 z!3488 (h!78406 s!7945)) (flatMap!3224 z!3488 lambda!460226))))

(declare-fun bs!1925528 () Bool)

(assert (= bs!1925528 d!2293963))

(declare-fun m!8049974 () Bool)

(assert (=> bs!1925528 m!8049974))

(assert (=> b!7433906 d!2293963))

(declare-fun d!2293965 () Bool)

(assert (=> d!2293965 (= (head!15248 (toList!11777 lt!2619174)) (h!78405 (toList!11777 lt!2619174)))))

(assert (=> b!7433902 d!2293965))

(declare-fun d!2293967 () Bool)

(declare-fun e!4440077 () Bool)

(assert (=> d!2293967 e!4440077))

(declare-fun res!2985216 () Bool)

(assert (=> d!2293967 (=> (not res!2985216) (not e!4440077))))

(declare-fun lt!2619184 () List!72081)

(declare-fun noDuplicate!3117 (List!72081) Bool)

(assert (=> d!2293967 (= res!2985216 (noDuplicate!3117 lt!2619184))))

(declare-fun choose!57503 ((Set Context!16748)) List!72081)

(assert (=> d!2293967 (= lt!2619184 (choose!57503 lt!2619174))))

(assert (=> d!2293967 (= (toList!11777 lt!2619174) lt!2619184)))

(declare-fun b!7433945 () Bool)

(declare-fun content!15229 (List!72081) (Set Context!16748))

(assert (=> b!7433945 (= e!4440077 (= (content!15229 lt!2619184) lt!2619174))))

(assert (= (and d!2293967 res!2985216) b!7433945))

(declare-fun m!8049976 () Bool)

(assert (=> d!2293967 m!8049976))

(declare-fun m!8049978 () Bool)

(assert (=> d!2293967 m!8049978))

(declare-fun m!8049980 () Bool)

(assert (=> b!7433945 m!8049980))

(assert (=> b!7433902 d!2293967))

(declare-fun d!2293969 () Bool)

(declare-fun choose!57504 ((Set Context!16748) Int) (Set Context!16748))

(assert (=> d!2293969 (= (flatMap!3224 z!3488 lambda!460220) (choose!57504 z!3488 lambda!460220))))

(declare-fun bs!1925529 () Bool)

(assert (= bs!1925529 d!2293969))

(declare-fun m!8049982 () Bool)

(assert (=> bs!1925529 m!8049982))

(assert (=> b!7433902 d!2293969))

(declare-fun d!2293971 () Bool)

(declare-fun lambda!460229 () Int)

(declare-fun forall!18216 (List!72080 Int) Bool)

(assert (=> d!2293971 (= (inv!91947 setElem!56452) (forall!18216 (exprs!8874 setElem!56452) lambda!460229))))

(declare-fun bs!1925530 () Bool)

(assert (= bs!1925530 d!2293971))

(declare-fun m!8049984 () Bool)

(assert (=> bs!1925530 m!8049984))

(assert (=> setNonEmpty!56452 d!2293971))

(declare-fun condSetEmpty!56458 () Bool)

(assert (=> setNonEmpty!56452 (= condSetEmpty!56458 (= setRest!56452 (as set.empty (Set Context!16748))))))

(declare-fun setRes!56458 () Bool)

(assert (=> setNonEmpty!56452 (= tp!2145319 setRes!56458)))

(declare-fun setIsEmpty!56458 () Bool)

(assert (=> setIsEmpty!56458 setRes!56458))

(declare-fun e!4440080 () Bool)

(declare-fun setNonEmpty!56458 () Bool)

(declare-fun tp!2145334 () Bool)

(declare-fun setElem!56458 () Context!16748)

(assert (=> setNonEmpty!56458 (= setRes!56458 (and tp!2145334 (inv!91947 setElem!56458) e!4440080))))

(declare-fun setRest!56458 () (Set Context!16748))

(assert (=> setNonEmpty!56458 (= setRest!56452 (set.union (set.insert setElem!56458 (as set.empty (Set Context!16748))) setRest!56458))))

(declare-fun b!7433950 () Bool)

(declare-fun tp!2145333 () Bool)

(assert (=> b!7433950 (= e!4440080 tp!2145333)))

(assert (= (and setNonEmpty!56452 condSetEmpty!56458) setIsEmpty!56458))

(assert (= (and setNonEmpty!56452 (not condSetEmpty!56458)) setNonEmpty!56458))

(assert (= setNonEmpty!56458 b!7433950))

(declare-fun m!8049986 () Bool)

(assert (=> setNonEmpty!56458 m!8049986))

(declare-fun b!7433955 () Bool)

(declare-fun e!4440083 () Bool)

(declare-fun tp!2145339 () Bool)

(declare-fun tp!2145340 () Bool)

(assert (=> b!7433955 (= e!4440083 (and tp!2145339 tp!2145340))))

(assert (=> b!7433903 (= tp!2145317 e!4440083)))

(assert (= (and b!7433903 (is-Cons!71956 (exprs!8874 setElem!56452))) b!7433955))

(declare-fun b!7433960 () Bool)

(declare-fun e!4440086 () Bool)

(declare-fun tp!2145343 () Bool)

(assert (=> b!7433960 (= e!4440086 (and tp_is_empty!49131 tp!2145343))))

(assert (=> b!7433905 (= tp!2145318 e!4440086)))

(assert (= (and b!7433905 (is-Cons!71958 (t!386643 s!7945))) b!7433960))

(push 1)

(assert (not b!7433945))

(assert (not d!2293969))

(assert (not b!7433950))

(assert (not bm!683182))

(assert (not b!7433937))

(assert (not b!7433960))

(assert (not d!2293971))

(assert (not d!2293967))

(assert (not b!7433955))

(assert (not d!2293963))

(assert (not setNonEmpty!56458))

(assert (not b!7433938))

(assert tp_is_empty!49131)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2293985 () Bool)

(declare-fun c!1376346 () Bool)

(assert (=> d!2293985 (= c!1376346 (is-Nil!71957 lt!2619184))))

(declare-fun e!4440110 () (Set Context!16748))

(assert (=> d!2293985 (= (content!15229 lt!2619184) e!4440110)))

(declare-fun b!7434000 () Bool)

(assert (=> b!7434000 (= e!4440110 (as set.empty (Set Context!16748)))))

(declare-fun b!7434001 () Bool)

(assert (=> b!7434001 (= e!4440110 (set.union (set.insert (h!78405 lt!2619184) (as set.empty (Set Context!16748))) (content!15229 (t!386642 lt!2619184))))))

(assert (= (and d!2293985 c!1376346) b!7434000))

(assert (= (and d!2293985 (not c!1376346)) b!7434001))

(declare-fun m!8050008 () Bool)

(assert (=> b!7434001 m!8050008))

(declare-fun m!8050010 () Bool)

(assert (=> b!7434001 m!8050010))

(assert (=> b!7433945 d!2293985))

(declare-fun b!7434024 () Bool)

(declare-fun e!4440126 () (Set Context!16748))

(declare-fun call!683207 () (Set Context!16748))

(assert (=> b!7434024 (= e!4440126 call!683207)))

(declare-fun bm!683198 () Bool)

(declare-fun call!683206 () (Set Context!16748))

(assert (=> bm!683198 (= call!683207 call!683206)))

(declare-fun bm!683199 () Bool)

(declare-fun c!1376360 () Bool)

(declare-fun c!1376361 () Bool)

(declare-fun call!683204 () List!72080)

(declare-fun $colon$colon!3351 (List!72080 Regex!19434) List!72080)

(assert (=> bm!683199 (= call!683204 ($colon$colon!3351 (exprs!8874 (Context!16749 (t!386641 (exprs!8874 lt!2619175)))) (ite (or c!1376361 c!1376360) (regTwo!39380 (h!78404 (exprs!8874 lt!2619175))) (h!78404 (exprs!8874 lt!2619175)))))))

(declare-fun d!2293987 () Bool)

(declare-fun c!1376359 () Bool)

(assert (=> d!2293987 (= c!1376359 (and (is-ElementMatch!19434 (h!78404 (exprs!8874 lt!2619175))) (= (c!1376326 (h!78404 (exprs!8874 lt!2619175))) (h!78406 s!7945))))))

(declare-fun e!4440123 () (Set Context!16748))

(assert (=> d!2293987 (= (derivationStepZipperDown!3220 (h!78404 (exprs!8874 lt!2619175)) (Context!16749 (t!386641 (exprs!8874 lt!2619175))) (h!78406 s!7945)) e!4440123)))

(declare-fun b!7434025 () Bool)

(declare-fun e!4440128 () (Set Context!16748))

(assert (=> b!7434025 (= e!4440128 (as set.empty (Set Context!16748)))))

(declare-fun b!7434026 () Bool)

(declare-fun e!4440125 () (Set Context!16748))

(declare-fun call!683208 () (Set Context!16748))

(assert (=> b!7434026 (= e!4440125 (set.union call!683208 call!683206))))

(declare-fun bm!683200 () Bool)

(declare-fun call!683205 () (Set Context!16748))

(assert (=> bm!683200 (= call!683206 call!683205)))

(declare-fun bm!683201 () Bool)

(declare-fun call!683203 () List!72080)

(assert (=> bm!683201 (= call!683203 call!683204)))

(declare-fun c!1376357 () Bool)

(declare-fun bm!683202 () Bool)

(assert (=> bm!683202 (= call!683205 (derivationStepZipperDown!3220 (ite c!1376357 (regOne!39381 (h!78404 (exprs!8874 lt!2619175))) (ite c!1376361 (regTwo!39380 (h!78404 (exprs!8874 lt!2619175))) (ite c!1376360 (regOne!39380 (h!78404 (exprs!8874 lt!2619175))) (reg!19763 (h!78404 (exprs!8874 lt!2619175)))))) (ite (or c!1376357 c!1376361) (Context!16749 (t!386641 (exprs!8874 lt!2619175))) (Context!16749 call!683203)) (h!78406 s!7945)))))

(declare-fun b!7434027 () Bool)

(declare-fun e!4440127 () (Set Context!16748))

(assert (=> b!7434027 (= e!4440127 (set.union call!683205 call!683208))))

(declare-fun b!7434028 () Bool)

(declare-fun c!1376358 () Bool)

(assert (=> b!7434028 (= c!1376358 (is-Star!19434 (h!78404 (exprs!8874 lt!2619175))))))

(assert (=> b!7434028 (= e!4440126 e!4440128)))

(declare-fun b!7434029 () Bool)

(assert (=> b!7434029 (= e!4440125 e!4440126)))

(assert (=> b!7434029 (= c!1376360 (is-Concat!28279 (h!78404 (exprs!8874 lt!2619175))))))

(declare-fun b!7434030 () Bool)

(declare-fun e!4440124 () Bool)

(assert (=> b!7434030 (= c!1376361 e!4440124)))

(declare-fun res!2985225 () Bool)

(assert (=> b!7434030 (=> (not res!2985225) (not e!4440124))))

(assert (=> b!7434030 (= res!2985225 (is-Concat!28279 (h!78404 (exprs!8874 lt!2619175))))))

(assert (=> b!7434030 (= e!4440127 e!4440125)))

(declare-fun b!7434031 () Bool)

(assert (=> b!7434031 (= e!4440123 (set.insert (Context!16749 (t!386641 (exprs!8874 lt!2619175))) (as set.empty (Set Context!16748))))))

(declare-fun b!7434032 () Bool)

(assert (=> b!7434032 (= e!4440124 (nullable!8472 (regOne!39380 (h!78404 (exprs!8874 lt!2619175)))))))

(declare-fun b!7434033 () Bool)

(assert (=> b!7434033 (= e!4440123 e!4440127)))

(assert (=> b!7434033 (= c!1376357 (is-Union!19434 (h!78404 (exprs!8874 lt!2619175))))))

(declare-fun b!7434034 () Bool)

(assert (=> b!7434034 (= e!4440128 call!683207)))

(declare-fun bm!683203 () Bool)

(assert (=> bm!683203 (= call!683208 (derivationStepZipperDown!3220 (ite c!1376357 (regTwo!39381 (h!78404 (exprs!8874 lt!2619175))) (regOne!39380 (h!78404 (exprs!8874 lt!2619175)))) (ite c!1376357 (Context!16749 (t!386641 (exprs!8874 lt!2619175))) (Context!16749 call!683204)) (h!78406 s!7945)))))

(assert (= (and d!2293987 c!1376359) b!7434031))

(assert (= (and d!2293987 (not c!1376359)) b!7434033))

(assert (= (and b!7434033 c!1376357) b!7434027))

(assert (= (and b!7434033 (not c!1376357)) b!7434030))

(assert (= (and b!7434030 res!2985225) b!7434032))

(assert (= (and b!7434030 c!1376361) b!7434026))

(assert (= (and b!7434030 (not c!1376361)) b!7434029))

(assert (= (and b!7434029 c!1376360) b!7434024))

(assert (= (and b!7434029 (not c!1376360)) b!7434028))

(assert (= (and b!7434028 c!1376358) b!7434034))

(assert (= (and b!7434028 (not c!1376358)) b!7434025))

(assert (= (or b!7434024 b!7434034) bm!683201))

(assert (= (or b!7434024 b!7434034) bm!683198))

(assert (= (or b!7434026 bm!683198) bm!683200))

(assert (= (or b!7434026 bm!683201) bm!683199))

(assert (= (or b!7434027 b!7434026) bm!683203))

(assert (= (or b!7434027 bm!683200) bm!683202))

(declare-fun m!8050012 () Bool)

(assert (=> bm!683203 m!8050012))

(declare-fun m!8050014 () Bool)

(assert (=> b!7434031 m!8050014))

(declare-fun m!8050016 () Bool)

(assert (=> bm!683199 m!8050016))

(declare-fun m!8050018 () Bool)

(assert (=> bm!683202 m!8050018))

(declare-fun m!8050020 () Bool)

(assert (=> b!7434032 m!8050020))

(assert (=> bm!683182 d!2293987))

(declare-fun d!2293989 () Bool)

(declare-fun res!2985230 () Bool)

(declare-fun e!4440133 () Bool)

(assert (=> d!2293989 (=> res!2985230 e!4440133)))

(assert (=> d!2293989 (= res!2985230 (is-Nil!71957 lt!2619184))))

(assert (=> d!2293989 (= (noDuplicate!3117 lt!2619184) e!4440133)))

(declare-fun b!7434039 () Bool)

(declare-fun e!4440134 () Bool)

(assert (=> b!7434039 (= e!4440133 e!4440134)))

(declare-fun res!2985231 () Bool)

(assert (=> b!7434039 (=> (not res!2985231) (not e!4440134))))

(declare-fun contains!20858 (List!72081 Context!16748) Bool)

(assert (=> b!7434039 (= res!2985231 (not (contains!20858 (t!386642 lt!2619184) (h!78405 lt!2619184))))))

(declare-fun b!7434040 () Bool)

(assert (=> b!7434040 (= e!4440134 (noDuplicate!3117 (t!386642 lt!2619184)))))

(assert (= (and d!2293989 (not res!2985230)) b!7434039))

(assert (= (and b!7434039 res!2985231) b!7434040))

(declare-fun m!8050022 () Bool)

(assert (=> b!7434039 m!8050022))

(declare-fun m!8050024 () Bool)

(assert (=> b!7434040 m!8050024))

(assert (=> d!2293967 d!2293989))

(declare-fun d!2293991 () Bool)

(declare-fun e!4440143 () Bool)

(assert (=> d!2293991 e!4440143))

(declare-fun res!2985237 () Bool)

(assert (=> d!2293991 (=> (not res!2985237) (not e!4440143))))

(declare-fun res!2985236 () List!72081)

(assert (=> d!2293991 (= res!2985237 (noDuplicate!3117 res!2985236))))

(declare-fun e!4440141 () Bool)

(assert (=> d!2293991 e!4440141))

(assert (=> d!2293991 (= (choose!57503 lt!2619174) res!2985236)))

(declare-fun b!7434048 () Bool)

(declare-fun e!4440142 () Bool)

(declare-fun tp!2145364 () Bool)

(assert (=> b!7434048 (= e!4440142 tp!2145364)))

(declare-fun b!7434047 () Bool)

(declare-fun tp!2145363 () Bool)

(assert (=> b!7434047 (= e!4440141 (and (inv!91947 (h!78405 res!2985236)) e!4440142 tp!2145363))))

(declare-fun b!7434049 () Bool)

(assert (=> b!7434049 (= e!4440143 (= (content!15229 res!2985236) lt!2619174))))

(assert (= b!7434047 b!7434048))

(assert (= (and d!2293991 (is-Cons!71957 res!2985236)) b!7434047))

(assert (= (and d!2293991 res!2985237) b!7434049))

(declare-fun m!8050026 () Bool)

(assert (=> d!2293991 m!8050026))

(declare-fun m!8050028 () Bool)

(assert (=> b!7434047 m!8050028))

(declare-fun m!8050030 () Bool)

(assert (=> b!7434049 m!8050030))

(assert (=> d!2293967 d!2293991))

(declare-fun d!2293993 () Bool)

(declare-fun nullableFct!3417 (Regex!19434) Bool)

(assert (=> d!2293993 (= (nullable!8472 (h!78404 (exprs!8874 lt!2619175))) (nullableFct!3417 (h!78404 (exprs!8874 lt!2619175))))))

(declare-fun bs!1925535 () Bool)

(assert (= bs!1925535 d!2293993))

(declare-fun m!8050032 () Bool)

(assert (=> bs!1925535 m!8050032))

(assert (=> b!7433937 d!2293993))

(declare-fun d!2293995 () Bool)

(assert (=> d!2293995 (= (flatMap!3224 z!3488 lambda!460226) (choose!57504 z!3488 lambda!460226))))

(declare-fun bs!1925536 () Bool)

(assert (= bs!1925536 d!2293995))

(declare-fun m!8050034 () Bool)

(assert (=> bs!1925536 m!8050034))

(assert (=> d!2293963 d!2293995))

(declare-fun b!7434050 () Bool)

(declare-fun e!4440144 () (Set Context!16748))

(declare-fun e!4440146 () (Set Context!16748))

(assert (=> b!7434050 (= e!4440144 e!4440146)))

(declare-fun c!1376363 () Bool)

(assert (=> b!7434050 (= c!1376363 (is-Cons!71956 (exprs!8874 (Context!16749 (t!386641 (exprs!8874 lt!2619175))))))))

(declare-fun d!2293997 () Bool)

(declare-fun c!1376362 () Bool)

(declare-fun e!4440145 () Bool)

(assert (=> d!2293997 (= c!1376362 e!4440145)))

(declare-fun res!2985238 () Bool)

(assert (=> d!2293997 (=> (not res!2985238) (not e!4440145))))

(assert (=> d!2293997 (= res!2985238 (is-Cons!71956 (exprs!8874 (Context!16749 (t!386641 (exprs!8874 lt!2619175))))))))

(assert (=> d!2293997 (= (derivationStepZipperUp!2830 (Context!16749 (t!386641 (exprs!8874 lt!2619175))) (h!78406 s!7945)) e!4440144)))

(declare-fun bm!683204 () Bool)

(declare-fun call!683209 () (Set Context!16748))

(assert (=> bm!683204 (= call!683209 (derivationStepZipperDown!3220 (h!78404 (exprs!8874 (Context!16749 (t!386641 (exprs!8874 lt!2619175))))) (Context!16749 (t!386641 (exprs!8874 (Context!16749 (t!386641 (exprs!8874 lt!2619175)))))) (h!78406 s!7945)))))

(declare-fun b!7434051 () Bool)

(assert (=> b!7434051 (= e!4440145 (nullable!8472 (h!78404 (exprs!8874 (Context!16749 (t!386641 (exprs!8874 lt!2619175)))))))))

(declare-fun b!7434052 () Bool)

(assert (=> b!7434052 (= e!4440144 (set.union call!683209 (derivationStepZipperUp!2830 (Context!16749 (t!386641 (exprs!8874 (Context!16749 (t!386641 (exprs!8874 lt!2619175)))))) (h!78406 s!7945))))))

(declare-fun b!7434053 () Bool)

(assert (=> b!7434053 (= e!4440146 (as set.empty (Set Context!16748)))))

(declare-fun b!7434054 () Bool)

(assert (=> b!7434054 (= e!4440146 call!683209)))

(assert (= (and d!2293997 res!2985238) b!7434051))

(assert (= (and d!2293997 c!1376362) b!7434052))

(assert (= (and d!2293997 (not c!1376362)) b!7434050))

(assert (= (and b!7434050 c!1376363) b!7434054))

(assert (= (and b!7434050 (not c!1376363)) b!7434053))

(assert (= (or b!7434052 b!7434054) bm!683204))

(declare-fun m!8050036 () Bool)

(assert (=> bm!683204 m!8050036))

(declare-fun m!8050038 () Bool)

(assert (=> b!7434051 m!8050038))

(declare-fun m!8050040 () Bool)

(assert (=> b!7434052 m!8050040))

(assert (=> b!7433938 d!2293997))

(declare-fun d!2293999 () Bool)

(declare-fun res!2985243 () Bool)

(declare-fun e!4440151 () Bool)

(assert (=> d!2293999 (=> res!2985243 e!4440151)))

(assert (=> d!2293999 (= res!2985243 (is-Nil!71956 (exprs!8874 setElem!56452)))))

(assert (=> d!2293999 (= (forall!18216 (exprs!8874 setElem!56452) lambda!460229) e!4440151)))

(declare-fun b!7434059 () Bool)

(declare-fun e!4440152 () Bool)

(assert (=> b!7434059 (= e!4440151 e!4440152)))

(declare-fun res!2985244 () Bool)

(assert (=> b!7434059 (=> (not res!2985244) (not e!4440152))))

(declare-fun dynLambda!29708 (Int Regex!19434) Bool)

(assert (=> b!7434059 (= res!2985244 (dynLambda!29708 lambda!460229 (h!78404 (exprs!8874 setElem!56452))))))

(declare-fun b!7434060 () Bool)

(assert (=> b!7434060 (= e!4440152 (forall!18216 (t!386641 (exprs!8874 setElem!56452)) lambda!460229))))

(assert (= (and d!2293999 (not res!2985243)) b!7434059))

(assert (= (and b!7434059 res!2985244) b!7434060))

(declare-fun b_lambda!287135 () Bool)

(assert (=> (not b_lambda!287135) (not b!7434059)))

(declare-fun m!8050042 () Bool)

(assert (=> b!7434059 m!8050042))

(declare-fun m!8050044 () Bool)

(assert (=> b!7434060 m!8050044))

(assert (=> d!2293971 d!2293999))

(declare-fun d!2294001 () Bool)

(assert (=> d!2294001 true))

(declare-fun setRes!56464 () Bool)

(assert (=> d!2294001 setRes!56464))

(declare-fun condSetEmpty!56464 () Bool)

(declare-fun res!2985247 () (Set Context!16748))

(assert (=> d!2294001 (= condSetEmpty!56464 (= res!2985247 (as set.empty (Set Context!16748))))))

(assert (=> d!2294001 (= (choose!57504 z!3488 lambda!460220) res!2985247)))

(declare-fun setIsEmpty!56464 () Bool)

(assert (=> setIsEmpty!56464 setRes!56464))

(declare-fun setElem!56464 () Context!16748)

(declare-fun tp!2145370 () Bool)

(declare-fun e!4440155 () Bool)

(declare-fun setNonEmpty!56464 () Bool)

(assert (=> setNonEmpty!56464 (= setRes!56464 (and tp!2145370 (inv!91947 setElem!56464) e!4440155))))

(declare-fun setRest!56464 () (Set Context!16748))

(assert (=> setNonEmpty!56464 (= res!2985247 (set.union (set.insert setElem!56464 (as set.empty (Set Context!16748))) setRest!56464))))

(declare-fun b!7434063 () Bool)

(declare-fun tp!2145369 () Bool)

(assert (=> b!7434063 (= e!4440155 tp!2145369)))

(assert (= (and d!2294001 condSetEmpty!56464) setIsEmpty!56464))

(assert (= (and d!2294001 (not condSetEmpty!56464)) setNonEmpty!56464))

(assert (= setNonEmpty!56464 b!7434063))

(declare-fun m!8050046 () Bool)

(assert (=> setNonEmpty!56464 m!8050046))

(assert (=> d!2293969 d!2294001))

(declare-fun bs!1925537 () Bool)

(declare-fun d!2294003 () Bool)

(assert (= bs!1925537 (and d!2294003 d!2293971)))

(declare-fun lambda!460236 () Int)

(assert (=> bs!1925537 (= lambda!460236 lambda!460229)))

(assert (=> d!2294003 (= (inv!91947 setElem!56458) (forall!18216 (exprs!8874 setElem!56458) lambda!460236))))

(declare-fun bs!1925538 () Bool)

(assert (= bs!1925538 d!2294003))

(declare-fun m!8050048 () Bool)

(assert (=> bs!1925538 m!8050048))

(assert (=> setNonEmpty!56458 d!2294003))

(declare-fun b!7434064 () Bool)

(declare-fun e!4440156 () Bool)

(declare-fun tp!2145371 () Bool)

(declare-fun tp!2145372 () Bool)

(assert (=> b!7434064 (= e!4440156 (and tp!2145371 tp!2145372))))

(assert (=> b!7433950 (= tp!2145333 e!4440156)))

(assert (= (and b!7433950 (is-Cons!71956 (exprs!8874 setElem!56458))) b!7434064))

(declare-fun b!7434065 () Bool)

(declare-fun e!4440157 () Bool)

(declare-fun tp!2145373 () Bool)

(assert (=> b!7434065 (= e!4440157 (and tp_is_empty!49131 tp!2145373))))

(assert (=> b!7433960 (= tp!2145343 e!4440157)))

(assert (= (and b!7433960 (is-Cons!71958 (t!386643 (t!386643 s!7945)))) b!7434065))

(declare-fun b!7434078 () Bool)

(declare-fun e!4440160 () Bool)

(declare-fun tp!2145387 () Bool)

(assert (=> b!7434078 (= e!4440160 tp!2145387)))

(declare-fun b!7434076 () Bool)

(assert (=> b!7434076 (= e!4440160 tp_is_empty!49131)))

(assert (=> b!7433955 (= tp!2145339 e!4440160)))

(declare-fun b!7434077 () Bool)

(declare-fun tp!2145386 () Bool)

(declare-fun tp!2145384 () Bool)

(assert (=> b!7434077 (= e!4440160 (and tp!2145386 tp!2145384))))

(declare-fun b!7434079 () Bool)

(declare-fun tp!2145388 () Bool)

(declare-fun tp!2145385 () Bool)

(assert (=> b!7434079 (= e!4440160 (and tp!2145388 tp!2145385))))

(assert (= (and b!7433955 (is-ElementMatch!19434 (h!78404 (exprs!8874 setElem!56452)))) b!7434076))

(assert (= (and b!7433955 (is-Concat!28279 (h!78404 (exprs!8874 setElem!56452)))) b!7434077))

(assert (= (and b!7433955 (is-Star!19434 (h!78404 (exprs!8874 setElem!56452)))) b!7434078))

(assert (= (and b!7433955 (is-Union!19434 (h!78404 (exprs!8874 setElem!56452)))) b!7434079))

(declare-fun b!7434080 () Bool)

(declare-fun e!4440161 () Bool)

(declare-fun tp!2145389 () Bool)

(declare-fun tp!2145390 () Bool)

(assert (=> b!7434080 (= e!4440161 (and tp!2145389 tp!2145390))))

(assert (=> b!7433955 (= tp!2145340 e!4440161)))

(assert (= (and b!7433955 (is-Cons!71956 (t!386641 (exprs!8874 setElem!56452)))) b!7434080))

(declare-fun condSetEmpty!56465 () Bool)

(assert (=> setNonEmpty!56458 (= condSetEmpty!56465 (= setRest!56458 (as set.empty (Set Context!16748))))))

(declare-fun setRes!56465 () Bool)

(assert (=> setNonEmpty!56458 (= tp!2145334 setRes!56465)))

(declare-fun setIsEmpty!56465 () Bool)

(assert (=> setIsEmpty!56465 setRes!56465))

(declare-fun setElem!56465 () Context!16748)

(declare-fun setNonEmpty!56465 () Bool)

(declare-fun e!4440162 () Bool)

(declare-fun tp!2145392 () Bool)

(assert (=> setNonEmpty!56465 (= setRes!56465 (and tp!2145392 (inv!91947 setElem!56465) e!4440162))))

(declare-fun setRest!56465 () (Set Context!16748))

(assert (=> setNonEmpty!56465 (= setRest!56458 (set.union (set.insert setElem!56465 (as set.empty (Set Context!16748))) setRest!56465))))

(declare-fun b!7434081 () Bool)

(declare-fun tp!2145391 () Bool)

(assert (=> b!7434081 (= e!4440162 tp!2145391)))

(assert (= (and setNonEmpty!56458 condSetEmpty!56465) setIsEmpty!56465))

(assert (= (and setNonEmpty!56458 (not condSetEmpty!56465)) setNonEmpty!56465))

(assert (= setNonEmpty!56465 b!7434081))

(declare-fun m!8050050 () Bool)

(assert (=> setNonEmpty!56465 m!8050050))

(declare-fun b_lambda!287137 () Bool)

(assert (= b_lambda!287135 (or d!2293971 b_lambda!287137)))

(declare-fun bs!1925539 () Bool)

(declare-fun d!2294005 () Bool)

(assert (= bs!1925539 (and d!2294005 d!2293971)))

(declare-fun validRegex!9974 (Regex!19434) Bool)

(assert (=> bs!1925539 (= (dynLambda!29708 lambda!460229 (h!78404 (exprs!8874 setElem!56452))) (validRegex!9974 (h!78404 (exprs!8874 setElem!56452))))))

(declare-fun m!8050052 () Bool)

(assert (=> bs!1925539 m!8050052))

(assert (=> b!7434059 d!2294005))

(push 1)

(assert (not bm!683202))

(assert (not b!7434081))

(assert (not b_lambda!287137))

(assert (not d!2293991))

(assert (not b!7434064))

(assert (not b!7434049))

(assert (not b!7434047))

(assert (not b!7434080))

(assert (not b!7434078))

(assert (not b!7434077))

(assert (not d!2294003))

(assert (not b!7434065))

(assert (not setNonEmpty!56465))

(assert (not bm!683199))

(assert (not setNonEmpty!56464))

(assert (not b!7434051))

(assert (not b!7434060))

(assert (not d!2293995))

(assert (not b!7434079))

(assert (not bm!683204))

(assert (not b!7434001))

(assert (not b!7434032))

(assert (not b!7434052))

(assert (not d!2293993))

(assert (not b!7434063))

(assert (not b!7434039))

(assert (not b!7434048))

(assert tp_is_empty!49131)

(assert (not bm!683203))

(assert (not b!7434040))

(assert (not bs!1925539))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

