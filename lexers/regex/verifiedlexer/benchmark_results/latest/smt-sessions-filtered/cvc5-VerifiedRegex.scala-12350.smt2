; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!692286 () Bool)

(assert start!692286)

(declare-fun b!7112091 () Bool)

(declare-fun e!4274063 () Bool)

(declare-fun tp!1956604 () Bool)

(assert (=> b!7112091 (= e!4274063 tp!1956604)))

(declare-fun b!7112092 () Bool)

(declare-fun e!4274068 () Bool)

(declare-fun e!4274067 () Bool)

(assert (=> b!7112092 (= e!4274068 e!4274067)))

(declare-fun res!2902243 () Bool)

(assert (=> b!7112092 (=> (not res!2902243) (not e!4274067))))

(declare-datatypes ((C!36154 0))(
  ( (C!36155 (val!27783 Int)) )
))
(declare-datatypes ((Regex!17942 0))(
  ( (ElementMatch!17942 (c!1327335 C!36154)) (Concat!26787 (regOne!36396 Regex!17942) (regTwo!36396 Regex!17942)) (EmptyExpr!17942) (Star!17942 (reg!18271 Regex!17942)) (EmptyLang!17942) (Union!17942 (regOne!36397 Regex!17942) (regTwo!36397 Regex!17942)) )
))
(declare-fun r!11554 () Regex!17942)

(declare-fun validRegex!9215 (Regex!17942) Bool)

(assert (=> b!7112092 (= res!2902243 (validRegex!9215 (regTwo!36396 r!11554)))))

(declare-datatypes ((List!68903 0))(
  ( (Nil!68779) (Cons!68779 (h!75227 Regex!17942) (t!382738 List!68903)) )
))
(declare-fun lt!2560187 () List!68903)

(declare-datatypes ((Context!13872 0))(
  ( (Context!13873 (exprs!7436 List!68903)) )
))
(declare-fun c!9994 () Context!13872)

(declare-fun auxCtx!45 () Context!13872)

(declare-fun ++!16094 (List!68903 List!68903) List!68903)

(assert (=> b!7112092 (= lt!2560187 (++!16094 (exprs!7436 c!9994) (exprs!7436 auxCtx!45)))))

(declare-fun lambda!432124 () Int)

(declare-datatypes ((Unit!162555 0))(
  ( (Unit!162556) )
))
(declare-fun lt!2560188 () Unit!162555)

(declare-fun lemmaConcatPreservesForall!1227 (List!68903 List!68903 Int) Unit!162555)

(assert (=> b!7112092 (= lt!2560188 (lemmaConcatPreservesForall!1227 (exprs!7436 c!9994) (exprs!7436 auxCtx!45) lambda!432124))))

(declare-fun lt!2560189 () Unit!162555)

(assert (=> b!7112092 (= lt!2560189 (lemmaConcatPreservesForall!1227 (exprs!7436 c!9994) (exprs!7436 auxCtx!45) lambda!432124))))

(declare-fun b!7112093 () Bool)

(declare-fun e!4274064 () Bool)

(declare-fun nullable!7579 (Regex!17942) Bool)

(assert (=> b!7112093 (= e!4274064 (not (nullable!7579 (regOne!36396 r!11554))))))

(declare-fun b!7112094 () Bool)

(declare-fun e!4274065 () Bool)

(declare-fun tp!1956599 () Bool)

(declare-fun tp!1956601 () Bool)

(assert (=> b!7112094 (= e!4274065 (and tp!1956599 tp!1956601))))

(declare-fun b!7112095 () Bool)

(declare-fun tp_is_empty!45117 () Bool)

(assert (=> b!7112095 (= e!4274065 tp_is_empty!45117)))

(declare-fun res!2902239 () Bool)

(assert (=> start!692286 (=> (not res!2902239) (not e!4274068))))

(assert (=> start!692286 (= res!2902239 (validRegex!9215 r!11554))))

(assert (=> start!692286 e!4274068))

(assert (=> start!692286 e!4274065))

(assert (=> start!692286 tp_is_empty!45117))

(declare-fun e!4274066 () Bool)

(declare-fun inv!87719 (Context!13872) Bool)

(assert (=> start!692286 (and (inv!87719 c!9994) e!4274066)))

(assert (=> start!692286 (and (inv!87719 auxCtx!45) e!4274063)))

(declare-fun b!7112096 () Bool)

(declare-fun res!2902242 () Bool)

(assert (=> b!7112096 (=> (not res!2902242) (not e!4274068))))

(assert (=> b!7112096 (= res!2902242 (is-Concat!26787 r!11554))))

(declare-fun b!7112097 () Bool)

(declare-fun tp!1956602 () Bool)

(assert (=> b!7112097 (= e!4274066 tp!1956602)))

(declare-fun b!7112098 () Bool)

(declare-fun tp!1956600 () Bool)

(declare-fun tp!1956603 () Bool)

(assert (=> b!7112098 (= e!4274065 (and tp!1956600 tp!1956603))))

(declare-fun b!7112099 () Bool)

(assert (=> b!7112099 (= e!4274067 (not (inv!87719 (Context!13873 lt!2560187))))))

(declare-fun b!7112100 () Bool)

(declare-fun res!2902244 () Bool)

(assert (=> b!7112100 (=> (not res!2902244) (not e!4274068))))

(assert (=> b!7112100 (= res!2902244 e!4274064)))

(declare-fun res!2902240 () Bool)

(assert (=> b!7112100 (=> res!2902240 e!4274064)))

(assert (=> b!7112100 (= res!2902240 (not (is-Concat!26787 r!11554)))))

(declare-fun b!7112101 () Bool)

(declare-fun res!2902241 () Bool)

(assert (=> b!7112101 (=> (not res!2902241) (not e!4274068))))

(declare-fun a!1901 () C!36154)

(assert (=> b!7112101 (= res!2902241 (and (or (not (is-ElementMatch!17942 r!11554)) (not (= (c!1327335 r!11554) a!1901))) (not (is-Union!17942 r!11554))))))

(declare-fun b!7112102 () Bool)

(declare-fun tp!1956605 () Bool)

(assert (=> b!7112102 (= e!4274065 tp!1956605)))

(assert (= (and start!692286 res!2902239) b!7112101))

(assert (= (and b!7112101 res!2902241) b!7112100))

(assert (= (and b!7112100 (not res!2902240)) b!7112093))

(assert (= (and b!7112100 res!2902244) b!7112096))

(assert (= (and b!7112096 res!2902242) b!7112092))

(assert (= (and b!7112092 res!2902243) b!7112099))

(assert (= (and start!692286 (is-ElementMatch!17942 r!11554)) b!7112095))

(assert (= (and start!692286 (is-Concat!26787 r!11554)) b!7112098))

(assert (= (and start!692286 (is-Star!17942 r!11554)) b!7112102))

(assert (= (and start!692286 (is-Union!17942 r!11554)) b!7112094))

(assert (= start!692286 b!7112097))

(assert (= start!692286 b!7112091))

(declare-fun m!7832988 () Bool)

(assert (=> b!7112092 m!7832988))

(declare-fun m!7832990 () Bool)

(assert (=> b!7112092 m!7832990))

(declare-fun m!7832992 () Bool)

(assert (=> b!7112092 m!7832992))

(assert (=> b!7112092 m!7832992))

(declare-fun m!7832994 () Bool)

(assert (=> b!7112093 m!7832994))

(declare-fun m!7832996 () Bool)

(assert (=> start!692286 m!7832996))

(declare-fun m!7832998 () Bool)

(assert (=> start!692286 m!7832998))

(declare-fun m!7833000 () Bool)

(assert (=> start!692286 m!7833000))

(declare-fun m!7833002 () Bool)

(assert (=> b!7112099 m!7833002))

(push 1)

(assert tp_is_empty!45117)

(assert (not b!7112098))

(assert (not b!7112094))

(assert (not b!7112091))

(assert (not b!7112092))

(assert (not b!7112097))

(assert (not b!7112099))

(assert (not b!7112093))

(assert (not b!7112102))

(assert (not start!692286))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2220457 () Bool)

(declare-fun res!2902274 () Bool)

(declare-fun e!4274104 () Bool)

(assert (=> d!2220457 (=> res!2902274 e!4274104)))

(assert (=> d!2220457 (= res!2902274 (is-ElementMatch!17942 (regTwo!36396 r!11554)))))

(assert (=> d!2220457 (= (validRegex!9215 (regTwo!36396 r!11554)) e!4274104)))

(declare-fun b!7112157 () Bool)

(declare-fun res!2902276 () Bool)

(declare-fun e!4274107 () Bool)

(assert (=> b!7112157 (=> (not res!2902276) (not e!4274107))))

(declare-fun call!649114 () Bool)

(assert (=> b!7112157 (= res!2902276 call!649114)))

(declare-fun e!4274105 () Bool)

(assert (=> b!7112157 (= e!4274105 e!4274107)))

(declare-fun b!7112158 () Bool)

(declare-fun e!4274102 () Bool)

(assert (=> b!7112158 (= e!4274104 e!4274102)))

(declare-fun c!1327342 () Bool)

(assert (=> b!7112158 (= c!1327342 (is-Star!17942 (regTwo!36396 r!11554)))))

(declare-fun bm!649107 () Bool)

(declare-fun call!649112 () Bool)

(declare-fun call!649113 () Bool)

(assert (=> bm!649107 (= call!649112 call!649113)))

(declare-fun b!7112159 () Bool)

(assert (=> b!7112159 (= e!4274102 e!4274105)))

(declare-fun c!1327341 () Bool)

(assert (=> b!7112159 (= c!1327341 (is-Union!17942 (regTwo!36396 r!11554)))))

(declare-fun b!7112160 () Bool)

(declare-fun e!4274106 () Bool)

(assert (=> b!7112160 (= e!4274106 call!649114)))

(declare-fun b!7112161 () Bool)

(declare-fun e!4274103 () Bool)

(assert (=> b!7112161 (= e!4274103 e!4274106)))

(declare-fun res!2902275 () Bool)

(assert (=> b!7112161 (=> (not res!2902275) (not e!4274106))))

(assert (=> b!7112161 (= res!2902275 call!649112)))

(declare-fun bm!649108 () Bool)

(assert (=> bm!649108 (= call!649114 (validRegex!9215 (ite c!1327341 (regOne!36397 (regTwo!36396 r!11554)) (regTwo!36396 (regTwo!36396 r!11554)))))))

(declare-fun b!7112162 () Bool)

(assert (=> b!7112162 (= e!4274107 call!649112)))

(declare-fun bm!649109 () Bool)

(assert (=> bm!649109 (= call!649113 (validRegex!9215 (ite c!1327342 (reg!18271 (regTwo!36396 r!11554)) (ite c!1327341 (regTwo!36397 (regTwo!36396 r!11554)) (regOne!36396 (regTwo!36396 r!11554))))))))

(declare-fun b!7112163 () Bool)

(declare-fun res!2902273 () Bool)

(assert (=> b!7112163 (=> res!2902273 e!4274103)))

(assert (=> b!7112163 (= res!2902273 (not (is-Concat!26787 (regTwo!36396 r!11554))))))

(assert (=> b!7112163 (= e!4274105 e!4274103)))

(declare-fun b!7112164 () Bool)

(declare-fun e!4274101 () Bool)

(assert (=> b!7112164 (= e!4274101 call!649113)))

(declare-fun b!7112165 () Bool)

(assert (=> b!7112165 (= e!4274102 e!4274101)))

(declare-fun res!2902277 () Bool)

(assert (=> b!7112165 (= res!2902277 (not (nullable!7579 (reg!18271 (regTwo!36396 r!11554)))))))

(assert (=> b!7112165 (=> (not res!2902277) (not e!4274101))))

(assert (= (and d!2220457 (not res!2902274)) b!7112158))

(assert (= (and b!7112158 c!1327342) b!7112165))

(assert (= (and b!7112158 (not c!1327342)) b!7112159))

(assert (= (and b!7112165 res!2902277) b!7112164))

(assert (= (and b!7112159 c!1327341) b!7112157))

(assert (= (and b!7112159 (not c!1327341)) b!7112163))

(assert (= (and b!7112157 res!2902276) b!7112162))

(assert (= (and b!7112163 (not res!2902273)) b!7112161))

(assert (= (and b!7112161 res!2902275) b!7112160))

(assert (= (or b!7112157 b!7112160) bm!649108))

(assert (= (or b!7112162 b!7112161) bm!649107))

(assert (= (or b!7112164 bm!649107) bm!649109))

(declare-fun m!7833020 () Bool)

(assert (=> bm!649108 m!7833020))

(declare-fun m!7833022 () Bool)

(assert (=> bm!649109 m!7833022))

(declare-fun m!7833024 () Bool)

(assert (=> b!7112165 m!7833024))

(assert (=> b!7112092 d!2220457))

(declare-fun b!7112175 () Bool)

(declare-fun e!4274112 () List!68903)

(assert (=> b!7112175 (= e!4274112 (Cons!68779 (h!75227 (exprs!7436 c!9994)) (++!16094 (t!382738 (exprs!7436 c!9994)) (exprs!7436 auxCtx!45))))))

(declare-fun b!7112174 () Bool)

(assert (=> b!7112174 (= e!4274112 (exprs!7436 auxCtx!45))))

(declare-fun e!4274113 () Bool)

(declare-fun b!7112177 () Bool)

(declare-fun lt!2560201 () List!68903)

(assert (=> b!7112177 (= e!4274113 (or (not (= (exprs!7436 auxCtx!45) Nil!68779)) (= lt!2560201 (exprs!7436 c!9994))))))

(declare-fun d!2220459 () Bool)

(assert (=> d!2220459 e!4274113))

(declare-fun res!2902283 () Bool)

(assert (=> d!2220459 (=> (not res!2902283) (not e!4274113))))

(declare-fun content!14025 (List!68903) (Set Regex!17942))

(assert (=> d!2220459 (= res!2902283 (= (content!14025 lt!2560201) (set.union (content!14025 (exprs!7436 c!9994)) (content!14025 (exprs!7436 auxCtx!45)))))))

(assert (=> d!2220459 (= lt!2560201 e!4274112)))

(declare-fun c!1327345 () Bool)

(assert (=> d!2220459 (= c!1327345 (is-Nil!68779 (exprs!7436 c!9994)))))

(assert (=> d!2220459 (= (++!16094 (exprs!7436 c!9994) (exprs!7436 auxCtx!45)) lt!2560201)))

(declare-fun b!7112176 () Bool)

(declare-fun res!2902282 () Bool)

(assert (=> b!7112176 (=> (not res!2902282) (not e!4274113))))

(declare-fun size!41400 (List!68903) Int)

(assert (=> b!7112176 (= res!2902282 (= (size!41400 lt!2560201) (+ (size!41400 (exprs!7436 c!9994)) (size!41400 (exprs!7436 auxCtx!45)))))))

(assert (= (and d!2220459 c!1327345) b!7112174))

(assert (= (and d!2220459 (not c!1327345)) b!7112175))

(assert (= (and d!2220459 res!2902283) b!7112176))

(assert (= (and b!7112176 res!2902282) b!7112177))

(declare-fun m!7833026 () Bool)

(assert (=> b!7112175 m!7833026))

(declare-fun m!7833028 () Bool)

(assert (=> d!2220459 m!7833028))

(declare-fun m!7833030 () Bool)

(assert (=> d!2220459 m!7833030))

(declare-fun m!7833032 () Bool)

(assert (=> d!2220459 m!7833032))

(declare-fun m!7833034 () Bool)

(assert (=> b!7112176 m!7833034))

(declare-fun m!7833036 () Bool)

(assert (=> b!7112176 m!7833036))

(declare-fun m!7833038 () Bool)

(assert (=> b!7112176 m!7833038))

(assert (=> b!7112092 d!2220459))

(declare-fun d!2220463 () Bool)

(declare-fun forall!16840 (List!68903 Int) Bool)

(assert (=> d!2220463 (forall!16840 (++!16094 (exprs!7436 c!9994) (exprs!7436 auxCtx!45)) lambda!432124)))

(declare-fun lt!2560204 () Unit!162555)

(declare-fun choose!54869 (List!68903 List!68903 Int) Unit!162555)

(assert (=> d!2220463 (= lt!2560204 (choose!54869 (exprs!7436 c!9994) (exprs!7436 auxCtx!45) lambda!432124))))

(assert (=> d!2220463 (forall!16840 (exprs!7436 c!9994) lambda!432124)))

(assert (=> d!2220463 (= (lemmaConcatPreservesForall!1227 (exprs!7436 c!9994) (exprs!7436 auxCtx!45) lambda!432124) lt!2560204)))

(declare-fun bs!1885283 () Bool)

(assert (= bs!1885283 d!2220463))

(assert (=> bs!1885283 m!7832990))

(assert (=> bs!1885283 m!7832990))

(declare-fun m!7833040 () Bool)

(assert (=> bs!1885283 m!7833040))

(declare-fun m!7833042 () Bool)

(assert (=> bs!1885283 m!7833042))

(declare-fun m!7833044 () Bool)

(assert (=> bs!1885283 m!7833044))

(assert (=> b!7112092 d!2220463))

(declare-fun d!2220465 () Bool)

(declare-fun nullableFct!2932 (Regex!17942) Bool)

(assert (=> d!2220465 (= (nullable!7579 (regOne!36396 r!11554)) (nullableFct!2932 (regOne!36396 r!11554)))))

(declare-fun bs!1885284 () Bool)

(assert (= bs!1885284 d!2220465))

(declare-fun m!7833046 () Bool)

(assert (=> bs!1885284 m!7833046))

(assert (=> b!7112093 d!2220465))

(declare-fun d!2220467 () Bool)

(declare-fun res!2902285 () Bool)

(declare-fun e!4274117 () Bool)

(assert (=> d!2220467 (=> res!2902285 e!4274117)))

(assert (=> d!2220467 (= res!2902285 (is-ElementMatch!17942 r!11554))))

(assert (=> d!2220467 (= (validRegex!9215 r!11554) e!4274117)))

(declare-fun b!7112178 () Bool)

(declare-fun res!2902287 () Bool)

(declare-fun e!4274120 () Bool)

(assert (=> b!7112178 (=> (not res!2902287) (not e!4274120))))

(declare-fun call!649117 () Bool)

(assert (=> b!7112178 (= res!2902287 call!649117)))

(declare-fun e!4274118 () Bool)

(assert (=> b!7112178 (= e!4274118 e!4274120)))

(declare-fun b!7112179 () Bool)

(declare-fun e!4274115 () Bool)

(assert (=> b!7112179 (= e!4274117 e!4274115)))

(declare-fun c!1327347 () Bool)

(assert (=> b!7112179 (= c!1327347 (is-Star!17942 r!11554))))

(declare-fun bm!649110 () Bool)

(declare-fun call!649115 () Bool)

(declare-fun call!649116 () Bool)

(assert (=> bm!649110 (= call!649115 call!649116)))

(declare-fun b!7112180 () Bool)

(assert (=> b!7112180 (= e!4274115 e!4274118)))

(declare-fun c!1327346 () Bool)

(assert (=> b!7112180 (= c!1327346 (is-Union!17942 r!11554))))

(declare-fun b!7112181 () Bool)

(declare-fun e!4274119 () Bool)

(assert (=> b!7112181 (= e!4274119 call!649117)))

(declare-fun b!7112182 () Bool)

(declare-fun e!4274116 () Bool)

(assert (=> b!7112182 (= e!4274116 e!4274119)))

(declare-fun res!2902286 () Bool)

(assert (=> b!7112182 (=> (not res!2902286) (not e!4274119))))

(assert (=> b!7112182 (= res!2902286 call!649115)))

(declare-fun bm!649111 () Bool)

(assert (=> bm!649111 (= call!649117 (validRegex!9215 (ite c!1327346 (regOne!36397 r!11554) (regTwo!36396 r!11554))))))

(declare-fun b!7112183 () Bool)

(assert (=> b!7112183 (= e!4274120 call!649115)))

(declare-fun bm!649112 () Bool)

(assert (=> bm!649112 (= call!649116 (validRegex!9215 (ite c!1327347 (reg!18271 r!11554) (ite c!1327346 (regTwo!36397 r!11554) (regOne!36396 r!11554)))))))

(declare-fun b!7112184 () Bool)

(declare-fun res!2902284 () Bool)

(assert (=> b!7112184 (=> res!2902284 e!4274116)))

(assert (=> b!7112184 (= res!2902284 (not (is-Concat!26787 r!11554)))))

(assert (=> b!7112184 (= e!4274118 e!4274116)))

(declare-fun b!7112185 () Bool)

(declare-fun e!4274114 () Bool)

(assert (=> b!7112185 (= e!4274114 call!649116)))

(declare-fun b!7112186 () Bool)

(assert (=> b!7112186 (= e!4274115 e!4274114)))

(declare-fun res!2902288 () Bool)

(assert (=> b!7112186 (= res!2902288 (not (nullable!7579 (reg!18271 r!11554))))))

(assert (=> b!7112186 (=> (not res!2902288) (not e!4274114))))

(assert (= (and d!2220467 (not res!2902285)) b!7112179))

(assert (= (and b!7112179 c!1327347) b!7112186))

(assert (= (and b!7112179 (not c!1327347)) b!7112180))

(assert (= (and b!7112186 res!2902288) b!7112185))

(assert (= (and b!7112180 c!1327346) b!7112178))

(assert (= (and b!7112180 (not c!1327346)) b!7112184))

(assert (= (and b!7112178 res!2902287) b!7112183))

(assert (= (and b!7112184 (not res!2902284)) b!7112182))

(assert (= (and b!7112182 res!2902286) b!7112181))

(assert (= (or b!7112178 b!7112181) bm!649111))

(assert (= (or b!7112183 b!7112182) bm!649110))

(assert (= (or b!7112185 bm!649110) bm!649112))

(declare-fun m!7833048 () Bool)

(assert (=> bm!649111 m!7833048))

(declare-fun m!7833050 () Bool)

(assert (=> bm!649112 m!7833050))

(declare-fun m!7833052 () Bool)

(assert (=> b!7112186 m!7833052))

(assert (=> start!692286 d!2220467))

(declare-fun bs!1885285 () Bool)

(declare-fun d!2220469 () Bool)

(assert (= bs!1885285 (and d!2220469 b!7112092)))

(declare-fun lambda!432132 () Int)

(assert (=> bs!1885285 (= lambda!432132 lambda!432124)))

(assert (=> d!2220469 (= (inv!87719 c!9994) (forall!16840 (exprs!7436 c!9994) lambda!432132))))

(declare-fun bs!1885286 () Bool)

(assert (= bs!1885286 d!2220469))

(declare-fun m!7833054 () Bool)

(assert (=> bs!1885286 m!7833054))

(assert (=> start!692286 d!2220469))

(declare-fun bs!1885287 () Bool)

(declare-fun d!2220471 () Bool)

(assert (= bs!1885287 (and d!2220471 b!7112092)))

(declare-fun lambda!432133 () Int)

(assert (=> bs!1885287 (= lambda!432133 lambda!432124)))

(declare-fun bs!1885288 () Bool)

(assert (= bs!1885288 (and d!2220471 d!2220469)))

(assert (=> bs!1885288 (= lambda!432133 lambda!432132)))

(assert (=> d!2220471 (= (inv!87719 auxCtx!45) (forall!16840 (exprs!7436 auxCtx!45) lambda!432133))))

(declare-fun bs!1885289 () Bool)

(assert (= bs!1885289 d!2220471))

(declare-fun m!7833056 () Bool)

(assert (=> bs!1885289 m!7833056))

(assert (=> start!692286 d!2220471))

(declare-fun bs!1885290 () Bool)

(declare-fun d!2220473 () Bool)

(assert (= bs!1885290 (and d!2220473 b!7112092)))

(declare-fun lambda!432134 () Int)

(assert (=> bs!1885290 (= lambda!432134 lambda!432124)))

(declare-fun bs!1885291 () Bool)

(assert (= bs!1885291 (and d!2220473 d!2220469)))

(assert (=> bs!1885291 (= lambda!432134 lambda!432132)))

(declare-fun bs!1885292 () Bool)

(assert (= bs!1885292 (and d!2220473 d!2220471)))

(assert (=> bs!1885292 (= lambda!432134 lambda!432133)))

(assert (=> d!2220473 (= (inv!87719 (Context!13873 lt!2560187)) (forall!16840 (exprs!7436 (Context!13873 lt!2560187)) lambda!432134))))

(declare-fun bs!1885293 () Bool)

(assert (= bs!1885293 d!2220473))

(declare-fun m!7833058 () Bool)

(assert (=> bs!1885293 m!7833058))

(assert (=> b!7112099 d!2220473))

(declare-fun b!7112209 () Bool)

(declare-fun e!4274137 () Bool)

(declare-fun tp!1956631 () Bool)

(declare-fun tp!1956632 () Bool)

(assert (=> b!7112209 (= e!4274137 (and tp!1956631 tp!1956632))))

(assert (=> b!7112097 (= tp!1956602 e!4274137)))

(assert (= (and b!7112097 (is-Cons!68779 (exprs!7436 c!9994))) b!7112209))

(declare-fun b!7112210 () Bool)

(declare-fun e!4274138 () Bool)

(declare-fun tp!1956633 () Bool)

(declare-fun tp!1956634 () Bool)

(assert (=> b!7112210 (= e!4274138 (and tp!1956633 tp!1956634))))

(assert (=> b!7112091 (= tp!1956604 e!4274138)))

(assert (= (and b!7112091 (is-Cons!68779 (exprs!7436 auxCtx!45))) b!7112210))

(declare-fun e!4274141 () Bool)

(assert (=> b!7112102 (= tp!1956605 e!4274141)))

(declare-fun b!7112223 () Bool)

(declare-fun tp!1956646 () Bool)

(assert (=> b!7112223 (= e!4274141 tp!1956646)))

(declare-fun b!7112221 () Bool)

(assert (=> b!7112221 (= e!4274141 tp_is_empty!45117)))

(declare-fun b!7112224 () Bool)

(declare-fun tp!1956647 () Bool)

(declare-fun tp!1956649 () Bool)

(assert (=> b!7112224 (= e!4274141 (and tp!1956647 tp!1956649))))

(declare-fun b!7112222 () Bool)

(declare-fun tp!1956648 () Bool)

(declare-fun tp!1956645 () Bool)

(assert (=> b!7112222 (= e!4274141 (and tp!1956648 tp!1956645))))

(assert (= (and b!7112102 (is-ElementMatch!17942 (reg!18271 r!11554))) b!7112221))

(assert (= (and b!7112102 (is-Concat!26787 (reg!18271 r!11554))) b!7112222))

(assert (= (and b!7112102 (is-Star!17942 (reg!18271 r!11554))) b!7112223))

(assert (= (and b!7112102 (is-Union!17942 (reg!18271 r!11554))) b!7112224))

(declare-fun e!4274142 () Bool)

(assert (=> b!7112098 (= tp!1956600 e!4274142)))

(declare-fun b!7112227 () Bool)

(declare-fun tp!1956651 () Bool)

(assert (=> b!7112227 (= e!4274142 tp!1956651)))

(declare-fun b!7112225 () Bool)

(assert (=> b!7112225 (= e!4274142 tp_is_empty!45117)))

(declare-fun b!7112228 () Bool)

(declare-fun tp!1956652 () Bool)

(declare-fun tp!1956654 () Bool)

(assert (=> b!7112228 (= e!4274142 (and tp!1956652 tp!1956654))))

(declare-fun b!7112226 () Bool)

(declare-fun tp!1956653 () Bool)

(declare-fun tp!1956650 () Bool)

(assert (=> b!7112226 (= e!4274142 (and tp!1956653 tp!1956650))))

(assert (= (and b!7112098 (is-ElementMatch!17942 (regOne!36396 r!11554))) b!7112225))

(assert (= (and b!7112098 (is-Concat!26787 (regOne!36396 r!11554))) b!7112226))

(assert (= (and b!7112098 (is-Star!17942 (regOne!36396 r!11554))) b!7112227))

(assert (= (and b!7112098 (is-Union!17942 (regOne!36396 r!11554))) b!7112228))

(declare-fun e!4274143 () Bool)

(assert (=> b!7112098 (= tp!1956603 e!4274143)))

(declare-fun b!7112231 () Bool)

(declare-fun tp!1956656 () Bool)

(assert (=> b!7112231 (= e!4274143 tp!1956656)))

(declare-fun b!7112229 () Bool)

(assert (=> b!7112229 (= e!4274143 tp_is_empty!45117)))

(declare-fun b!7112232 () Bool)

(declare-fun tp!1956657 () Bool)

(declare-fun tp!1956659 () Bool)

(assert (=> b!7112232 (= e!4274143 (and tp!1956657 tp!1956659))))

(declare-fun b!7112230 () Bool)

(declare-fun tp!1956658 () Bool)

(declare-fun tp!1956655 () Bool)

(assert (=> b!7112230 (= e!4274143 (and tp!1956658 tp!1956655))))

(assert (= (and b!7112098 (is-ElementMatch!17942 (regTwo!36396 r!11554))) b!7112229))

(assert (= (and b!7112098 (is-Concat!26787 (regTwo!36396 r!11554))) b!7112230))

(assert (= (and b!7112098 (is-Star!17942 (regTwo!36396 r!11554))) b!7112231))

(assert (= (and b!7112098 (is-Union!17942 (regTwo!36396 r!11554))) b!7112232))

(declare-fun e!4274144 () Bool)

(assert (=> b!7112094 (= tp!1956599 e!4274144)))

(declare-fun b!7112235 () Bool)

(declare-fun tp!1956661 () Bool)

(assert (=> b!7112235 (= e!4274144 tp!1956661)))

(declare-fun b!7112233 () Bool)

(assert (=> b!7112233 (= e!4274144 tp_is_empty!45117)))

(declare-fun b!7112236 () Bool)

(declare-fun tp!1956662 () Bool)

(declare-fun tp!1956664 () Bool)

(assert (=> b!7112236 (= e!4274144 (and tp!1956662 tp!1956664))))

(declare-fun b!7112234 () Bool)

(declare-fun tp!1956663 () Bool)

(declare-fun tp!1956660 () Bool)

(assert (=> b!7112234 (= e!4274144 (and tp!1956663 tp!1956660))))

(assert (= (and b!7112094 (is-ElementMatch!17942 (regOne!36397 r!11554))) b!7112233))

(assert (= (and b!7112094 (is-Concat!26787 (regOne!36397 r!11554))) b!7112234))

(assert (= (and b!7112094 (is-Star!17942 (regOne!36397 r!11554))) b!7112235))

(assert (= (and b!7112094 (is-Union!17942 (regOne!36397 r!11554))) b!7112236))

(declare-fun e!4274145 () Bool)

(assert (=> b!7112094 (= tp!1956601 e!4274145)))

(declare-fun b!7112239 () Bool)

(declare-fun tp!1956666 () Bool)

(assert (=> b!7112239 (= e!4274145 tp!1956666)))

(declare-fun b!7112237 () Bool)

(assert (=> b!7112237 (= e!4274145 tp_is_empty!45117)))

(declare-fun b!7112240 () Bool)

(declare-fun tp!1956667 () Bool)

(declare-fun tp!1956669 () Bool)

(assert (=> b!7112240 (= e!4274145 (and tp!1956667 tp!1956669))))

(declare-fun b!7112238 () Bool)

(declare-fun tp!1956668 () Bool)

(declare-fun tp!1956665 () Bool)

(assert (=> b!7112238 (= e!4274145 (and tp!1956668 tp!1956665))))

(assert (= (and b!7112094 (is-ElementMatch!17942 (regTwo!36397 r!11554))) b!7112237))

(assert (= (and b!7112094 (is-Concat!26787 (regTwo!36397 r!11554))) b!7112238))

(assert (= (and b!7112094 (is-Star!17942 (regTwo!36397 r!11554))) b!7112239))

(assert (= (and b!7112094 (is-Union!17942 (regTwo!36397 r!11554))) b!7112240))

(push 1)

(assert (not bm!649112))

(assert (not b!7112234))

(assert (not b!7112223))

(assert (not b!7112186))

(assert (not b!7112226))

(assert (not b!7112239))

(assert (not b!7112210))

(assert (not b!7112222))

(assert (not b!7112165))

(assert (not bm!649109))

(assert (not d!2220463))

(assert tp_is_empty!45117)

(assert (not d!2220473))

(assert (not bm!649108))

(assert (not b!7112238))

(assert (not b!7112228))

(assert (not b!7112209))

(assert (not d!2220459))

(assert (not d!2220469))

(assert (not b!7112236))

(assert (not b!7112224))

(assert (not b!7112227))

(assert (not b!7112235))

(assert (not b!7112240))

(assert (not d!2220465))

(assert (not b!7112231))

(assert (not bm!649111))

(assert (not b!7112232))

(assert (not b!7112176))

(assert (not b!7112175))

(assert (not d!2220471))

(assert (not b!7112230))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

