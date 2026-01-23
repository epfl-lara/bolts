; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45556 () Bool)

(assert start!45556)

(declare-fun b!475118 () Bool)

(declare-fun res!210700 () Bool)

(declare-fun e!290165 () Bool)

(assert (=> b!475118 (=> (not res!210700) (not e!290165))))

(declare-datatypes ((C!3216 0))(
  ( (C!3217 (val!1594 Int)) )
))
(declare-datatypes ((Regex!1147 0))(
  ( (ElementMatch!1147 (c!95156 C!3216)) (Concat!2047 (regOne!2806 Regex!1147) (regTwo!2806 Regex!1147)) (EmptyExpr!1147) (Star!1147 (reg!1476 Regex!1147)) (EmptyLang!1147) (Union!1147 (regOne!2807 Regex!1147) (regTwo!2807 Regex!1147)) )
))
(declare-fun r!20230 () Regex!1147)

(declare-fun lostCause!141 (Regex!1147) Bool)

(assert (=> b!475118 (= res!210700 (lostCause!141 r!20230))))

(declare-fun b!475119 () Bool)

(declare-fun e!290164 () Bool)

(declare-fun tp!132318 () Bool)

(declare-fun tp!132321 () Bool)

(assert (=> b!475119 (= e!290164 (and tp!132318 tp!132321))))

(declare-fun b!475120 () Bool)

(declare-fun tp!132320 () Bool)

(assert (=> b!475120 (= e!290164 tp!132320)))

(declare-fun b!475121 () Bool)

(declare-fun res!210701 () Bool)

(assert (=> b!475121 (=> (not res!210701) (not e!290165))))

(get-info :version)

(assert (=> b!475121 (= res!210701 (and (not ((_ is EmptyLang!1147) r!20230)) (not ((_ is EmptyExpr!1147) r!20230)) ((_ is ElementMatch!1147) r!20230)))))

(declare-fun res!210699 () Bool)

(assert (=> start!45556 (=> (not res!210699) (not e!290165))))

(declare-fun validRegex!375 (Regex!1147) Bool)

(assert (=> start!45556 (= res!210699 (validRegex!375 r!20230))))

(assert (=> start!45556 e!290165))

(assert (=> start!45556 e!290164))

(declare-fun tp_is_empty!2291 () Bool)

(assert (=> start!45556 tp_is_empty!2291))

(declare-fun b!475122 () Bool)

(declare-fun tp!132317 () Bool)

(declare-fun tp!132319 () Bool)

(assert (=> b!475122 (= e!290164 (and tp!132317 tp!132319))))

(declare-fun b!475123 () Bool)

(assert (=> b!475123 (= e!290164 tp_is_empty!2291)))

(declare-fun b!475124 () Bool)

(declare-fun c!12526 () C!3216)

(declare-fun derivativeStep!239 (Regex!1147 C!3216) Regex!1147)

(assert (=> b!475124 (= e!290165 (not (lostCause!141 (derivativeStep!239 r!20230 c!12526))))))

(assert (= (and start!45556 res!210699) b!475118))

(assert (= (and b!475118 res!210700) b!475121))

(assert (= (and b!475121 res!210701) b!475124))

(assert (= (and start!45556 ((_ is ElementMatch!1147) r!20230)) b!475123))

(assert (= (and start!45556 ((_ is Concat!2047) r!20230)) b!475119))

(assert (= (and start!45556 ((_ is Star!1147) r!20230)) b!475120))

(assert (= (and start!45556 ((_ is Union!1147) r!20230)) b!475122))

(declare-fun m!747099 () Bool)

(assert (=> b!475118 m!747099))

(declare-fun m!747101 () Bool)

(assert (=> start!45556 m!747101))

(declare-fun m!747103 () Bool)

(assert (=> b!475124 m!747103))

(assert (=> b!475124 m!747103))

(declare-fun m!747105 () Bool)

(assert (=> b!475124 m!747105))

(check-sat (not start!45556) (not b!475120) (not b!475124) (not b!475119) (not b!475118) tp_is_empty!2291 (not b!475122))
(check-sat)
(get-model)

(declare-fun call!33068 () Bool)

(declare-fun c!95161 () Bool)

(declare-fun c!95162 () Bool)

(declare-fun bm!33063 () Bool)

(assert (=> bm!33063 (= call!33068 (validRegex!375 (ite c!95162 (reg!1476 r!20230) (ite c!95161 (regTwo!2807 r!20230) (regOne!2806 r!20230)))))))

(declare-fun b!475147 () Bool)

(declare-fun e!290181 () Bool)

(declare-fun call!33070 () Bool)

(assert (=> b!475147 (= e!290181 call!33070)))

(declare-fun b!475148 () Bool)

(declare-fun e!290185 () Bool)

(declare-fun call!33069 () Bool)

(assert (=> b!475148 (= e!290185 call!33069)))

(declare-fun bm!33064 () Bool)

(assert (=> bm!33064 (= call!33070 call!33068)))

(declare-fun bm!33065 () Bool)

(assert (=> bm!33065 (= call!33069 (validRegex!375 (ite c!95161 (regOne!2807 r!20230) (regTwo!2806 r!20230))))))

(declare-fun b!475150 () Bool)

(declare-fun e!290186 () Bool)

(assert (=> b!475150 (= e!290186 e!290185)))

(declare-fun res!210714 () Bool)

(assert (=> b!475150 (=> (not res!210714) (not e!290185))))

(assert (=> b!475150 (= res!210714 call!33070)))

(declare-fun b!475151 () Bool)

(declare-fun res!210715 () Bool)

(assert (=> b!475151 (=> (not res!210715) (not e!290181))))

(assert (=> b!475151 (= res!210715 call!33069)))

(declare-fun e!290180 () Bool)

(assert (=> b!475151 (= e!290180 e!290181)))

(declare-fun b!475152 () Bool)

(declare-fun e!290182 () Bool)

(assert (=> b!475152 (= e!290182 call!33068)))

(declare-fun b!475153 () Bool)

(declare-fun e!290183 () Bool)

(assert (=> b!475153 (= e!290183 e!290180)))

(assert (=> b!475153 (= c!95161 ((_ is Union!1147) r!20230))))

(declare-fun b!475154 () Bool)

(assert (=> b!475154 (= e!290183 e!290182)))

(declare-fun res!210716 () Bool)

(declare-fun nullable!282 (Regex!1147) Bool)

(assert (=> b!475154 (= res!210716 (not (nullable!282 (reg!1476 r!20230))))))

(assert (=> b!475154 (=> (not res!210716) (not e!290182))))

(declare-fun b!475155 () Bool)

(declare-fun res!210712 () Bool)

(assert (=> b!475155 (=> res!210712 e!290186)))

(assert (=> b!475155 (= res!210712 (not ((_ is Concat!2047) r!20230)))))

(assert (=> b!475155 (= e!290180 e!290186)))

(declare-fun d!179864 () Bool)

(declare-fun res!210713 () Bool)

(declare-fun e!290184 () Bool)

(assert (=> d!179864 (=> res!210713 e!290184)))

(assert (=> d!179864 (= res!210713 ((_ is ElementMatch!1147) r!20230))))

(assert (=> d!179864 (= (validRegex!375 r!20230) e!290184)))

(declare-fun b!475149 () Bool)

(assert (=> b!475149 (= e!290184 e!290183)))

(assert (=> b!475149 (= c!95162 ((_ is Star!1147) r!20230))))

(assert (= (and d!179864 (not res!210713)) b!475149))

(assert (= (and b!475149 c!95162) b!475154))

(assert (= (and b!475149 (not c!95162)) b!475153))

(assert (= (and b!475154 res!210716) b!475152))

(assert (= (and b!475153 c!95161) b!475151))

(assert (= (and b!475153 (not c!95161)) b!475155))

(assert (= (and b!475151 res!210715) b!475147))

(assert (= (and b!475155 (not res!210712)) b!475150))

(assert (= (and b!475150 res!210714) b!475148))

(assert (= (or b!475147 b!475150) bm!33064))

(assert (= (or b!475151 b!475148) bm!33065))

(assert (= (or b!475152 bm!33064) bm!33063))

(declare-fun m!747109 () Bool)

(assert (=> bm!33063 m!747109))

(declare-fun m!747111 () Bool)

(assert (=> bm!33065 m!747111))

(declare-fun m!747113 () Bool)

(assert (=> b!475154 m!747113))

(assert (=> start!45556 d!179864))

(declare-fun d!179868 () Bool)

(declare-fun lostCauseFct!51 (Regex!1147) Bool)

(assert (=> d!179868 (= (lostCause!141 r!20230) (lostCauseFct!51 r!20230))))

(declare-fun bs!58691 () Bool)

(assert (= bs!58691 d!179868))

(declare-fun m!747115 () Bool)

(assert (=> bs!58691 m!747115))

(assert (=> b!475118 d!179868))

(declare-fun d!179870 () Bool)

(assert (=> d!179870 (= (lostCause!141 (derivativeStep!239 r!20230 c!12526)) (lostCauseFct!51 (derivativeStep!239 r!20230 c!12526)))))

(declare-fun bs!58692 () Bool)

(assert (= bs!58692 d!179870))

(assert (=> bs!58692 m!747103))

(declare-fun m!747117 () Bool)

(assert (=> bs!58692 m!747117))

(assert (=> b!475124 d!179870))

(declare-fun b!475220 () Bool)

(declare-fun c!95192 () Bool)

(assert (=> b!475220 (= c!95192 ((_ is Union!1147) r!20230))))

(declare-fun e!290229 () Regex!1147)

(declare-fun e!290226 () Regex!1147)

(assert (=> b!475220 (= e!290229 e!290226)))

(declare-fun call!33100 () Regex!1147)

(declare-fun b!475221 () Bool)

(declare-fun e!290227 () Regex!1147)

(declare-fun call!33099 () Regex!1147)

(assert (=> b!475221 (= e!290227 (Union!1147 (Concat!2047 call!33100 (regTwo!2806 r!20230)) call!33099))))

(declare-fun b!475222 () Bool)

(declare-fun e!290228 () Regex!1147)

(assert (=> b!475222 (= e!290228 e!290229)))

(declare-fun c!95196 () Bool)

(assert (=> b!475222 (= c!95196 ((_ is ElementMatch!1147) r!20230))))

(declare-fun bm!33092 () Bool)

(assert (=> bm!33092 (= call!33099 (derivativeStep!239 (ite c!95192 (regOne!2807 r!20230) (regTwo!2806 r!20230)) c!12526))))

(declare-fun b!475223 () Bool)

(declare-fun call!33097 () Regex!1147)

(assert (=> b!475223 (= e!290226 (Union!1147 call!33099 call!33097))))

(declare-fun b!475224 () Bool)

(declare-fun c!95195 () Bool)

(assert (=> b!475224 (= c!95195 (nullable!282 (regOne!2806 r!20230)))))

(declare-fun e!290230 () Regex!1147)

(assert (=> b!475224 (= e!290230 e!290227)))

(declare-fun b!475225 () Bool)

(assert (=> b!475225 (= e!290227 (Union!1147 (Concat!2047 call!33100 (regTwo!2806 r!20230)) EmptyLang!1147))))

(declare-fun b!475226 () Bool)

(assert (=> b!475226 (= e!290226 e!290230)))

(declare-fun c!95193 () Bool)

(assert (=> b!475226 (= c!95193 ((_ is Star!1147) r!20230))))

(declare-fun bm!33093 () Bool)

(declare-fun call!33098 () Regex!1147)

(assert (=> bm!33093 (= call!33100 call!33098)))

(declare-fun d!179872 () Bool)

(declare-fun lt!210716 () Regex!1147)

(assert (=> d!179872 (validRegex!375 lt!210716)))

(assert (=> d!179872 (= lt!210716 e!290228)))

(declare-fun c!95194 () Bool)

(assert (=> d!179872 (= c!95194 (or ((_ is EmptyExpr!1147) r!20230) ((_ is EmptyLang!1147) r!20230)))))

(assert (=> d!179872 (validRegex!375 r!20230)))

(assert (=> d!179872 (= (derivativeStep!239 r!20230 c!12526) lt!210716)))

(declare-fun b!475227 () Bool)

(assert (=> b!475227 (= e!290228 EmptyLang!1147)))

(declare-fun b!475228 () Bool)

(assert (=> b!475228 (= e!290229 (ite (= c!12526 (c!95156 r!20230)) EmptyExpr!1147 EmptyLang!1147))))

(declare-fun bm!33094 () Bool)

(assert (=> bm!33094 (= call!33098 call!33097)))

(declare-fun b!475229 () Bool)

(assert (=> b!475229 (= e!290230 (Concat!2047 call!33098 r!20230))))

(declare-fun bm!33095 () Bool)

(assert (=> bm!33095 (= call!33097 (derivativeStep!239 (ite c!95192 (regTwo!2807 r!20230) (ite c!95193 (reg!1476 r!20230) (regOne!2806 r!20230))) c!12526))))

(assert (= (and d!179872 c!95194) b!475227))

(assert (= (and d!179872 (not c!95194)) b!475222))

(assert (= (and b!475222 c!95196) b!475228))

(assert (= (and b!475222 (not c!95196)) b!475220))

(assert (= (and b!475220 c!95192) b!475223))

(assert (= (and b!475220 (not c!95192)) b!475226))

(assert (= (and b!475226 c!95193) b!475229))

(assert (= (and b!475226 (not c!95193)) b!475224))

(assert (= (and b!475224 c!95195) b!475221))

(assert (= (and b!475224 (not c!95195)) b!475225))

(assert (= (or b!475221 b!475225) bm!33093))

(assert (= (or b!475229 bm!33093) bm!33094))

(assert (= (or b!475223 bm!33094) bm!33095))

(assert (= (or b!475223 b!475221) bm!33092))

(declare-fun m!747135 () Bool)

(assert (=> bm!33092 m!747135))

(declare-fun m!747137 () Bool)

(assert (=> b!475224 m!747137))

(declare-fun m!747139 () Bool)

(assert (=> d!179872 m!747139))

(assert (=> d!179872 m!747101))

(declare-fun m!747141 () Bool)

(assert (=> bm!33095 m!747141))

(assert (=> b!475124 d!179872))

(declare-fun b!475265 () Bool)

(declare-fun e!290243 () Bool)

(declare-fun tp!132349 () Bool)

(assert (=> b!475265 (= e!290243 tp!132349)))

(declare-fun b!475266 () Bool)

(declare-fun tp!132348 () Bool)

(declare-fun tp!132350 () Bool)

(assert (=> b!475266 (= e!290243 (and tp!132348 tp!132350))))

(declare-fun b!475263 () Bool)

(assert (=> b!475263 (= e!290243 tp_is_empty!2291)))

(assert (=> b!475119 (= tp!132318 e!290243)))

(declare-fun b!475264 () Bool)

(declare-fun tp!132347 () Bool)

(declare-fun tp!132351 () Bool)

(assert (=> b!475264 (= e!290243 (and tp!132347 tp!132351))))

(assert (= (and b!475119 ((_ is ElementMatch!1147) (regOne!2806 r!20230))) b!475263))

(assert (= (and b!475119 ((_ is Concat!2047) (regOne!2806 r!20230))) b!475264))

(assert (= (and b!475119 ((_ is Star!1147) (regOne!2806 r!20230))) b!475265))

(assert (= (and b!475119 ((_ is Union!1147) (regOne!2806 r!20230))) b!475266))

(declare-fun b!475277 () Bool)

(declare-fun e!290246 () Bool)

(declare-fun tp!132364 () Bool)

(assert (=> b!475277 (= e!290246 tp!132364)))

(declare-fun b!475278 () Bool)

(declare-fun tp!132363 () Bool)

(declare-fun tp!132365 () Bool)

(assert (=> b!475278 (= e!290246 (and tp!132363 tp!132365))))

(declare-fun b!475275 () Bool)

(assert (=> b!475275 (= e!290246 tp_is_empty!2291)))

(assert (=> b!475119 (= tp!132321 e!290246)))

(declare-fun b!475276 () Bool)

(declare-fun tp!132362 () Bool)

(declare-fun tp!132366 () Bool)

(assert (=> b!475276 (= e!290246 (and tp!132362 tp!132366))))

(assert (= (and b!475119 ((_ is ElementMatch!1147) (regTwo!2806 r!20230))) b!475275))

(assert (= (and b!475119 ((_ is Concat!2047) (regTwo!2806 r!20230))) b!475276))

(assert (= (and b!475119 ((_ is Star!1147) (regTwo!2806 r!20230))) b!475277))

(assert (= (and b!475119 ((_ is Union!1147) (regTwo!2806 r!20230))) b!475278))

(declare-fun b!475285 () Bool)

(declare-fun e!290248 () Bool)

(declare-fun tp!132374 () Bool)

(assert (=> b!475285 (= e!290248 tp!132374)))

(declare-fun b!475286 () Bool)

(declare-fun tp!132373 () Bool)

(declare-fun tp!132375 () Bool)

(assert (=> b!475286 (= e!290248 (and tp!132373 tp!132375))))

(declare-fun b!475283 () Bool)

(assert (=> b!475283 (= e!290248 tp_is_empty!2291)))

(assert (=> b!475120 (= tp!132320 e!290248)))

(declare-fun b!475284 () Bool)

(declare-fun tp!132372 () Bool)

(declare-fun tp!132376 () Bool)

(assert (=> b!475284 (= e!290248 (and tp!132372 tp!132376))))

(assert (= (and b!475120 ((_ is ElementMatch!1147) (reg!1476 r!20230))) b!475283))

(assert (= (and b!475120 ((_ is Concat!2047) (reg!1476 r!20230))) b!475284))

(assert (= (and b!475120 ((_ is Star!1147) (reg!1476 r!20230))) b!475285))

(assert (= (and b!475120 ((_ is Union!1147) (reg!1476 r!20230))) b!475286))

(declare-fun b!475293 () Bool)

(declare-fun e!290250 () Bool)

(declare-fun tp!132384 () Bool)

(assert (=> b!475293 (= e!290250 tp!132384)))

(declare-fun b!475294 () Bool)

(declare-fun tp!132383 () Bool)

(declare-fun tp!132385 () Bool)

(assert (=> b!475294 (= e!290250 (and tp!132383 tp!132385))))

(declare-fun b!475291 () Bool)

(assert (=> b!475291 (= e!290250 tp_is_empty!2291)))

(assert (=> b!475122 (= tp!132317 e!290250)))

(declare-fun b!475292 () Bool)

(declare-fun tp!132382 () Bool)

(declare-fun tp!132386 () Bool)

(assert (=> b!475292 (= e!290250 (and tp!132382 tp!132386))))

(assert (= (and b!475122 ((_ is ElementMatch!1147) (regOne!2807 r!20230))) b!475291))

(assert (= (and b!475122 ((_ is Concat!2047) (regOne!2807 r!20230))) b!475292))

(assert (= (and b!475122 ((_ is Star!1147) (regOne!2807 r!20230))) b!475293))

(assert (= (and b!475122 ((_ is Union!1147) (regOne!2807 r!20230))) b!475294))

(declare-fun b!475297 () Bool)

(declare-fun e!290251 () Bool)

(declare-fun tp!132389 () Bool)

(assert (=> b!475297 (= e!290251 tp!132389)))

(declare-fun b!475298 () Bool)

(declare-fun tp!132388 () Bool)

(declare-fun tp!132390 () Bool)

(assert (=> b!475298 (= e!290251 (and tp!132388 tp!132390))))

(declare-fun b!475295 () Bool)

(assert (=> b!475295 (= e!290251 tp_is_empty!2291)))

(assert (=> b!475122 (= tp!132319 e!290251)))

(declare-fun b!475296 () Bool)

(declare-fun tp!132387 () Bool)

(declare-fun tp!132391 () Bool)

(assert (=> b!475296 (= e!290251 (and tp!132387 tp!132391))))

(assert (= (and b!475122 ((_ is ElementMatch!1147) (regTwo!2807 r!20230))) b!475295))

(assert (= (and b!475122 ((_ is Concat!2047) (regTwo!2807 r!20230))) b!475296))

(assert (= (and b!475122 ((_ is Star!1147) (regTwo!2807 r!20230))) b!475297))

(assert (= (and b!475122 ((_ is Union!1147) (regTwo!2807 r!20230))) b!475298))

(check-sat (not b!475154) (not b!475265) (not b!475297) (not b!475298) (not b!475264) (not b!475277) (not b!475278) (not b!475292) (not b!475285) (not b!475224) (not d!179868) (not bm!33065) (not bm!33092) (not b!475276) (not bm!33063) (not b!475293) (not b!475266) (not d!179872) (not d!179870) (not b!475294) (not b!475284) (not bm!33095) (not b!475296) tp_is_empty!2291 (not b!475286))
(check-sat)
(get-model)

(declare-fun b!475313 () Bool)

(declare-fun e!290267 () Bool)

(declare-fun e!290264 () Bool)

(assert (=> b!475313 (= e!290267 e!290264)))

(declare-fun res!210745 () Bool)

(assert (=> b!475313 (=> (not res!210745) (not e!290264))))

(assert (=> b!475313 (= res!210745 (and (not ((_ is ElementMatch!1147) r!20230)) (not ((_ is Star!1147) r!20230))))))

(declare-fun b!475314 () Bool)

(declare-fun e!290266 () Bool)

(declare-fun e!290269 () Bool)

(assert (=> b!475314 (= e!290266 e!290269)))

(declare-fun res!210746 () Bool)

(declare-fun call!33108 () Bool)

(assert (=> b!475314 (= res!210746 call!33108)))

(assert (=> b!475314 (=> res!210746 e!290269)))

(declare-fun b!475315 () Bool)

(declare-fun call!33109 () Bool)

(assert (=> b!475315 (= e!290269 call!33109)))

(declare-fun bm!33103 () Bool)

(declare-fun c!95201 () Bool)

(assert (=> bm!33103 (= call!33109 (lostCause!141 (ite c!95201 (regTwo!2807 r!20230) (regTwo!2806 r!20230))))))

(declare-fun b!475316 () Bool)

(declare-fun e!290268 () Bool)

(assert (=> b!475316 (= e!290268 e!290267)))

(declare-fun res!210743 () Bool)

(assert (=> b!475316 (=> res!210743 e!290267)))

(assert (=> b!475316 (= res!210743 ((_ is EmptyLang!1147) r!20230))))

(declare-fun bm!33104 () Bool)

(assert (=> bm!33104 (= call!33108 (lostCause!141 (ite c!95201 (regOne!2807 r!20230) (regOne!2806 r!20230))))))

(declare-fun b!475317 () Bool)

(declare-fun e!290265 () Bool)

(assert (=> b!475317 (= e!290266 e!290265)))

(declare-fun res!210744 () Bool)

(assert (=> b!475317 (= res!210744 call!33108)))

(assert (=> b!475317 (=> (not res!210744) (not e!290265))))

(declare-fun d!179878 () Bool)

(declare-fun lt!210719 () Bool)

(declare-datatypes ((List!4592 0))(
  ( (Nil!4582) (Cons!4582 (h!9979 C!3216) (t!73110 List!4592)) )
))
(declare-datatypes ((Option!1210 0))(
  ( (None!1209) (Some!1209 (v!15621 List!4592)) )
))
(declare-fun isEmpty!3536 (Option!1210) Bool)

(declare-fun getLanguageWitness!45 (Regex!1147) Option!1210)

(assert (=> d!179878 (= lt!210719 (isEmpty!3536 (getLanguageWitness!45 r!20230)))))

(assert (=> d!179878 (= lt!210719 e!290268)))

(declare-fun res!210742 () Bool)

(assert (=> d!179878 (=> (not res!210742) (not e!290268))))

(assert (=> d!179878 (= res!210742 (not ((_ is EmptyExpr!1147) r!20230)))))

(assert (=> d!179878 (= (lostCauseFct!51 r!20230) lt!210719)))

(declare-fun b!475318 () Bool)

(assert (=> b!475318 (= e!290265 call!33109)))

(declare-fun b!475319 () Bool)

(assert (=> b!475319 (= e!290264 e!290266)))

(assert (=> b!475319 (= c!95201 ((_ is Union!1147) r!20230))))

(assert (= (and d!179878 res!210742) b!475316))

(assert (= (and b!475316 (not res!210743)) b!475313))

(assert (= (and b!475313 res!210745) b!475319))

(assert (= (and b!475319 c!95201) b!475317))

(assert (= (and b!475319 (not c!95201)) b!475314))

(assert (= (and b!475317 res!210744) b!475318))

(assert (= (and b!475314 (not res!210746)) b!475315))

(assert (= (or b!475317 b!475314) bm!33104))

(assert (= (or b!475318 b!475315) bm!33103))

(declare-fun m!747143 () Bool)

(assert (=> bm!33103 m!747143))

(declare-fun m!747145 () Bool)

(assert (=> bm!33104 m!747145))

(declare-fun m!747147 () Bool)

(assert (=> d!179878 m!747147))

(assert (=> d!179878 m!747147))

(declare-fun m!747149 () Bool)

(assert (=> d!179878 m!747149))

(assert (=> d!179868 d!179878))

(declare-fun d!179880 () Bool)

(declare-fun nullableFct!96 (Regex!1147) Bool)

(assert (=> d!179880 (= (nullable!282 (regOne!2806 r!20230)) (nullableFct!96 (regOne!2806 r!20230)))))

(declare-fun bs!58694 () Bool)

(assert (= bs!58694 d!179880))

(declare-fun m!747151 () Bool)

(assert (=> bs!58694 m!747151))

(assert (=> b!475224 d!179880))

(declare-fun b!475320 () Bool)

(declare-fun c!95202 () Bool)

(assert (=> b!475320 (= c!95202 ((_ is Union!1147) (ite c!95192 (regTwo!2807 r!20230) (ite c!95193 (reg!1476 r!20230) (regOne!2806 r!20230)))))))

(declare-fun e!290273 () Regex!1147)

(declare-fun e!290270 () Regex!1147)

(assert (=> b!475320 (= e!290273 e!290270)))

(declare-fun b!475321 () Bool)

(declare-fun e!290271 () Regex!1147)

(declare-fun call!33113 () Regex!1147)

(declare-fun call!33112 () Regex!1147)

(assert (=> b!475321 (= e!290271 (Union!1147 (Concat!2047 call!33113 (regTwo!2806 (ite c!95192 (regTwo!2807 r!20230) (ite c!95193 (reg!1476 r!20230) (regOne!2806 r!20230))))) call!33112))))

(declare-fun b!475322 () Bool)

(declare-fun e!290272 () Regex!1147)

(assert (=> b!475322 (= e!290272 e!290273)))

(declare-fun c!95206 () Bool)

(assert (=> b!475322 (= c!95206 ((_ is ElementMatch!1147) (ite c!95192 (regTwo!2807 r!20230) (ite c!95193 (reg!1476 r!20230) (regOne!2806 r!20230)))))))

(declare-fun bm!33105 () Bool)

(assert (=> bm!33105 (= call!33112 (derivativeStep!239 (ite c!95202 (regOne!2807 (ite c!95192 (regTwo!2807 r!20230) (ite c!95193 (reg!1476 r!20230) (regOne!2806 r!20230)))) (regTwo!2806 (ite c!95192 (regTwo!2807 r!20230) (ite c!95193 (reg!1476 r!20230) (regOne!2806 r!20230))))) c!12526))))

(declare-fun b!475323 () Bool)

(declare-fun call!33110 () Regex!1147)

(assert (=> b!475323 (= e!290270 (Union!1147 call!33112 call!33110))))

(declare-fun b!475324 () Bool)

(declare-fun c!95205 () Bool)

(assert (=> b!475324 (= c!95205 (nullable!282 (regOne!2806 (ite c!95192 (regTwo!2807 r!20230) (ite c!95193 (reg!1476 r!20230) (regOne!2806 r!20230))))))))

(declare-fun e!290274 () Regex!1147)

(assert (=> b!475324 (= e!290274 e!290271)))

(declare-fun b!475325 () Bool)

(assert (=> b!475325 (= e!290271 (Union!1147 (Concat!2047 call!33113 (regTwo!2806 (ite c!95192 (regTwo!2807 r!20230) (ite c!95193 (reg!1476 r!20230) (regOne!2806 r!20230))))) EmptyLang!1147))))

(declare-fun b!475326 () Bool)

(assert (=> b!475326 (= e!290270 e!290274)))

(declare-fun c!95203 () Bool)

(assert (=> b!475326 (= c!95203 ((_ is Star!1147) (ite c!95192 (regTwo!2807 r!20230) (ite c!95193 (reg!1476 r!20230) (regOne!2806 r!20230)))))))

(declare-fun bm!33106 () Bool)

(declare-fun call!33111 () Regex!1147)

(assert (=> bm!33106 (= call!33113 call!33111)))

(declare-fun d!179882 () Bool)

(declare-fun lt!210720 () Regex!1147)

(assert (=> d!179882 (validRegex!375 lt!210720)))

(assert (=> d!179882 (= lt!210720 e!290272)))

(declare-fun c!95204 () Bool)

(assert (=> d!179882 (= c!95204 (or ((_ is EmptyExpr!1147) (ite c!95192 (regTwo!2807 r!20230) (ite c!95193 (reg!1476 r!20230) (regOne!2806 r!20230)))) ((_ is EmptyLang!1147) (ite c!95192 (regTwo!2807 r!20230) (ite c!95193 (reg!1476 r!20230) (regOne!2806 r!20230))))))))

(assert (=> d!179882 (validRegex!375 (ite c!95192 (regTwo!2807 r!20230) (ite c!95193 (reg!1476 r!20230) (regOne!2806 r!20230))))))

(assert (=> d!179882 (= (derivativeStep!239 (ite c!95192 (regTwo!2807 r!20230) (ite c!95193 (reg!1476 r!20230) (regOne!2806 r!20230))) c!12526) lt!210720)))

(declare-fun b!475327 () Bool)

(assert (=> b!475327 (= e!290272 EmptyLang!1147)))

(declare-fun b!475328 () Bool)

(assert (=> b!475328 (= e!290273 (ite (= c!12526 (c!95156 (ite c!95192 (regTwo!2807 r!20230) (ite c!95193 (reg!1476 r!20230) (regOne!2806 r!20230))))) EmptyExpr!1147 EmptyLang!1147))))

(declare-fun bm!33107 () Bool)

(assert (=> bm!33107 (= call!33111 call!33110)))

(declare-fun b!475329 () Bool)

(assert (=> b!475329 (= e!290274 (Concat!2047 call!33111 (ite c!95192 (regTwo!2807 r!20230) (ite c!95193 (reg!1476 r!20230) (regOne!2806 r!20230)))))))

(declare-fun bm!33108 () Bool)

(assert (=> bm!33108 (= call!33110 (derivativeStep!239 (ite c!95202 (regTwo!2807 (ite c!95192 (regTwo!2807 r!20230) (ite c!95193 (reg!1476 r!20230) (regOne!2806 r!20230)))) (ite c!95203 (reg!1476 (ite c!95192 (regTwo!2807 r!20230) (ite c!95193 (reg!1476 r!20230) (regOne!2806 r!20230)))) (regOne!2806 (ite c!95192 (regTwo!2807 r!20230) (ite c!95193 (reg!1476 r!20230) (regOne!2806 r!20230)))))) c!12526))))

(assert (= (and d!179882 c!95204) b!475327))

(assert (= (and d!179882 (not c!95204)) b!475322))

(assert (= (and b!475322 c!95206) b!475328))

(assert (= (and b!475322 (not c!95206)) b!475320))

(assert (= (and b!475320 c!95202) b!475323))

(assert (= (and b!475320 (not c!95202)) b!475326))

(assert (= (and b!475326 c!95203) b!475329))

(assert (= (and b!475326 (not c!95203)) b!475324))

(assert (= (and b!475324 c!95205) b!475321))

(assert (= (and b!475324 (not c!95205)) b!475325))

(assert (= (or b!475321 b!475325) bm!33106))

(assert (= (or b!475329 bm!33106) bm!33107))

(assert (= (or b!475323 bm!33107) bm!33108))

(assert (= (or b!475323 b!475321) bm!33105))

(declare-fun m!747153 () Bool)

(assert (=> bm!33105 m!747153))

(declare-fun m!747155 () Bool)

(assert (=> b!475324 m!747155))

(declare-fun m!747157 () Bool)

(assert (=> d!179882 m!747157))

(declare-fun m!747159 () Bool)

(assert (=> d!179882 m!747159))

(declare-fun m!747161 () Bool)

(assert (=> bm!33108 m!747161))

(assert (=> bm!33095 d!179882))

(declare-fun bm!33109 () Bool)

(declare-fun c!95207 () Bool)

(declare-fun c!95208 () Bool)

(declare-fun call!33114 () Bool)

(assert (=> bm!33109 (= call!33114 (validRegex!375 (ite c!95208 (reg!1476 (ite c!95162 (reg!1476 r!20230) (ite c!95161 (regTwo!2807 r!20230) (regOne!2806 r!20230)))) (ite c!95207 (regTwo!2807 (ite c!95162 (reg!1476 r!20230) (ite c!95161 (regTwo!2807 r!20230) (regOne!2806 r!20230)))) (regOne!2806 (ite c!95162 (reg!1476 r!20230) (ite c!95161 (regTwo!2807 r!20230) (regOne!2806 r!20230))))))))))

(declare-fun b!475330 () Bool)

(declare-fun e!290276 () Bool)

(declare-fun call!33116 () Bool)

(assert (=> b!475330 (= e!290276 call!33116)))

(declare-fun b!475331 () Bool)

(declare-fun e!290280 () Bool)

(declare-fun call!33115 () Bool)

(assert (=> b!475331 (= e!290280 call!33115)))

(declare-fun bm!33110 () Bool)

(assert (=> bm!33110 (= call!33116 call!33114)))

(declare-fun bm!33111 () Bool)

(assert (=> bm!33111 (= call!33115 (validRegex!375 (ite c!95207 (regOne!2807 (ite c!95162 (reg!1476 r!20230) (ite c!95161 (regTwo!2807 r!20230) (regOne!2806 r!20230)))) (regTwo!2806 (ite c!95162 (reg!1476 r!20230) (ite c!95161 (regTwo!2807 r!20230) (regOne!2806 r!20230)))))))))

(declare-fun b!475333 () Bool)

(declare-fun e!290281 () Bool)

(assert (=> b!475333 (= e!290281 e!290280)))

(declare-fun res!210749 () Bool)

(assert (=> b!475333 (=> (not res!210749) (not e!290280))))

(assert (=> b!475333 (= res!210749 call!33116)))

(declare-fun b!475334 () Bool)

(declare-fun res!210750 () Bool)

(assert (=> b!475334 (=> (not res!210750) (not e!290276))))

(assert (=> b!475334 (= res!210750 call!33115)))

(declare-fun e!290275 () Bool)

(assert (=> b!475334 (= e!290275 e!290276)))

(declare-fun b!475335 () Bool)

(declare-fun e!290277 () Bool)

(assert (=> b!475335 (= e!290277 call!33114)))

(declare-fun b!475336 () Bool)

(declare-fun e!290278 () Bool)

(assert (=> b!475336 (= e!290278 e!290275)))

(assert (=> b!475336 (= c!95207 ((_ is Union!1147) (ite c!95162 (reg!1476 r!20230) (ite c!95161 (regTwo!2807 r!20230) (regOne!2806 r!20230)))))))

(declare-fun b!475337 () Bool)

(assert (=> b!475337 (= e!290278 e!290277)))

(declare-fun res!210751 () Bool)

(assert (=> b!475337 (= res!210751 (not (nullable!282 (reg!1476 (ite c!95162 (reg!1476 r!20230) (ite c!95161 (regTwo!2807 r!20230) (regOne!2806 r!20230)))))))))

(assert (=> b!475337 (=> (not res!210751) (not e!290277))))

(declare-fun b!475338 () Bool)

(declare-fun res!210747 () Bool)

(assert (=> b!475338 (=> res!210747 e!290281)))

(assert (=> b!475338 (= res!210747 (not ((_ is Concat!2047) (ite c!95162 (reg!1476 r!20230) (ite c!95161 (regTwo!2807 r!20230) (regOne!2806 r!20230))))))))

(assert (=> b!475338 (= e!290275 e!290281)))

(declare-fun d!179884 () Bool)

(declare-fun res!210748 () Bool)

(declare-fun e!290279 () Bool)

(assert (=> d!179884 (=> res!210748 e!290279)))

(assert (=> d!179884 (= res!210748 ((_ is ElementMatch!1147) (ite c!95162 (reg!1476 r!20230) (ite c!95161 (regTwo!2807 r!20230) (regOne!2806 r!20230)))))))

(assert (=> d!179884 (= (validRegex!375 (ite c!95162 (reg!1476 r!20230) (ite c!95161 (regTwo!2807 r!20230) (regOne!2806 r!20230)))) e!290279)))

(declare-fun b!475332 () Bool)

(assert (=> b!475332 (= e!290279 e!290278)))

(assert (=> b!475332 (= c!95208 ((_ is Star!1147) (ite c!95162 (reg!1476 r!20230) (ite c!95161 (regTwo!2807 r!20230) (regOne!2806 r!20230)))))))

(assert (= (and d!179884 (not res!210748)) b!475332))

(assert (= (and b!475332 c!95208) b!475337))

(assert (= (and b!475332 (not c!95208)) b!475336))

(assert (= (and b!475337 res!210751) b!475335))

(assert (= (and b!475336 c!95207) b!475334))

(assert (= (and b!475336 (not c!95207)) b!475338))

(assert (= (and b!475334 res!210750) b!475330))

(assert (= (and b!475338 (not res!210747)) b!475333))

(assert (= (and b!475333 res!210749) b!475331))

(assert (= (or b!475330 b!475333) bm!33110))

(assert (= (or b!475334 b!475331) bm!33111))

(assert (= (or b!475335 bm!33110) bm!33109))

(declare-fun m!747163 () Bool)

(assert (=> bm!33109 m!747163))

(declare-fun m!747165 () Bool)

(assert (=> bm!33111 m!747165))

(declare-fun m!747167 () Bool)

(assert (=> b!475337 m!747167))

(assert (=> bm!33063 d!179884))

(declare-fun call!33117 () Bool)

(declare-fun c!95210 () Bool)

(declare-fun c!95209 () Bool)

(declare-fun bm!33112 () Bool)

(assert (=> bm!33112 (= call!33117 (validRegex!375 (ite c!95210 (reg!1476 (ite c!95161 (regOne!2807 r!20230) (regTwo!2806 r!20230))) (ite c!95209 (regTwo!2807 (ite c!95161 (regOne!2807 r!20230) (regTwo!2806 r!20230))) (regOne!2806 (ite c!95161 (regOne!2807 r!20230) (regTwo!2806 r!20230)))))))))

(declare-fun b!475339 () Bool)

(declare-fun e!290283 () Bool)

(declare-fun call!33119 () Bool)

(assert (=> b!475339 (= e!290283 call!33119)))

(declare-fun b!475340 () Bool)

(declare-fun e!290287 () Bool)

(declare-fun call!33118 () Bool)

(assert (=> b!475340 (= e!290287 call!33118)))

(declare-fun bm!33113 () Bool)

(assert (=> bm!33113 (= call!33119 call!33117)))

(declare-fun bm!33114 () Bool)

(assert (=> bm!33114 (= call!33118 (validRegex!375 (ite c!95209 (regOne!2807 (ite c!95161 (regOne!2807 r!20230) (regTwo!2806 r!20230))) (regTwo!2806 (ite c!95161 (regOne!2807 r!20230) (regTwo!2806 r!20230))))))))

(declare-fun b!475342 () Bool)

(declare-fun e!290288 () Bool)

(assert (=> b!475342 (= e!290288 e!290287)))

(declare-fun res!210754 () Bool)

(assert (=> b!475342 (=> (not res!210754) (not e!290287))))

(assert (=> b!475342 (= res!210754 call!33119)))

(declare-fun b!475343 () Bool)

(declare-fun res!210755 () Bool)

(assert (=> b!475343 (=> (not res!210755) (not e!290283))))

(assert (=> b!475343 (= res!210755 call!33118)))

(declare-fun e!290282 () Bool)

(assert (=> b!475343 (= e!290282 e!290283)))

(declare-fun b!475344 () Bool)

(declare-fun e!290284 () Bool)

(assert (=> b!475344 (= e!290284 call!33117)))

(declare-fun b!475345 () Bool)

(declare-fun e!290285 () Bool)

(assert (=> b!475345 (= e!290285 e!290282)))

(assert (=> b!475345 (= c!95209 ((_ is Union!1147) (ite c!95161 (regOne!2807 r!20230) (regTwo!2806 r!20230))))))

(declare-fun b!475346 () Bool)

(assert (=> b!475346 (= e!290285 e!290284)))

(declare-fun res!210756 () Bool)

(assert (=> b!475346 (= res!210756 (not (nullable!282 (reg!1476 (ite c!95161 (regOne!2807 r!20230) (regTwo!2806 r!20230))))))))

(assert (=> b!475346 (=> (not res!210756) (not e!290284))))

(declare-fun b!475347 () Bool)

(declare-fun res!210752 () Bool)

(assert (=> b!475347 (=> res!210752 e!290288)))

(assert (=> b!475347 (= res!210752 (not ((_ is Concat!2047) (ite c!95161 (regOne!2807 r!20230) (regTwo!2806 r!20230)))))))

(assert (=> b!475347 (= e!290282 e!290288)))

(declare-fun d!179886 () Bool)

(declare-fun res!210753 () Bool)

(declare-fun e!290286 () Bool)

(assert (=> d!179886 (=> res!210753 e!290286)))

(assert (=> d!179886 (= res!210753 ((_ is ElementMatch!1147) (ite c!95161 (regOne!2807 r!20230) (regTwo!2806 r!20230))))))

(assert (=> d!179886 (= (validRegex!375 (ite c!95161 (regOne!2807 r!20230) (regTwo!2806 r!20230))) e!290286)))

(declare-fun b!475341 () Bool)

(assert (=> b!475341 (= e!290286 e!290285)))

(assert (=> b!475341 (= c!95210 ((_ is Star!1147) (ite c!95161 (regOne!2807 r!20230) (regTwo!2806 r!20230))))))

(assert (= (and d!179886 (not res!210753)) b!475341))

(assert (= (and b!475341 c!95210) b!475346))

(assert (= (and b!475341 (not c!95210)) b!475345))

(assert (= (and b!475346 res!210756) b!475344))

(assert (= (and b!475345 c!95209) b!475343))

(assert (= (and b!475345 (not c!95209)) b!475347))

(assert (= (and b!475343 res!210755) b!475339))

(assert (= (and b!475347 (not res!210752)) b!475342))

(assert (= (and b!475342 res!210754) b!475340))

(assert (= (or b!475339 b!475342) bm!33113))

(assert (= (or b!475343 b!475340) bm!33114))

(assert (= (or b!475344 bm!33113) bm!33112))

(declare-fun m!747169 () Bool)

(assert (=> bm!33112 m!747169))

(declare-fun m!747171 () Bool)

(assert (=> bm!33114 m!747171))

(declare-fun m!747173 () Bool)

(assert (=> b!475346 m!747173))

(assert (=> bm!33065 d!179886))

(declare-fun b!475348 () Bool)

(declare-fun c!95211 () Bool)

(assert (=> b!475348 (= c!95211 ((_ is Union!1147) (ite c!95192 (regOne!2807 r!20230) (regTwo!2806 r!20230))))))

(declare-fun e!290292 () Regex!1147)

(declare-fun e!290289 () Regex!1147)

(assert (=> b!475348 (= e!290292 e!290289)))

(declare-fun call!33122 () Regex!1147)

(declare-fun call!33123 () Regex!1147)

(declare-fun b!475349 () Bool)

(declare-fun e!290290 () Regex!1147)

(assert (=> b!475349 (= e!290290 (Union!1147 (Concat!2047 call!33123 (regTwo!2806 (ite c!95192 (regOne!2807 r!20230) (regTwo!2806 r!20230)))) call!33122))))

(declare-fun b!475350 () Bool)

(declare-fun e!290291 () Regex!1147)

(assert (=> b!475350 (= e!290291 e!290292)))

(declare-fun c!95215 () Bool)

(assert (=> b!475350 (= c!95215 ((_ is ElementMatch!1147) (ite c!95192 (regOne!2807 r!20230) (regTwo!2806 r!20230))))))

(declare-fun bm!33115 () Bool)

(assert (=> bm!33115 (= call!33122 (derivativeStep!239 (ite c!95211 (regOne!2807 (ite c!95192 (regOne!2807 r!20230) (regTwo!2806 r!20230))) (regTwo!2806 (ite c!95192 (regOne!2807 r!20230) (regTwo!2806 r!20230)))) c!12526))))

(declare-fun b!475351 () Bool)

(declare-fun call!33120 () Regex!1147)

(assert (=> b!475351 (= e!290289 (Union!1147 call!33122 call!33120))))

(declare-fun b!475352 () Bool)

(declare-fun c!95214 () Bool)

(assert (=> b!475352 (= c!95214 (nullable!282 (regOne!2806 (ite c!95192 (regOne!2807 r!20230) (regTwo!2806 r!20230)))))))

(declare-fun e!290293 () Regex!1147)

(assert (=> b!475352 (= e!290293 e!290290)))

(declare-fun b!475353 () Bool)

(assert (=> b!475353 (= e!290290 (Union!1147 (Concat!2047 call!33123 (regTwo!2806 (ite c!95192 (regOne!2807 r!20230) (regTwo!2806 r!20230)))) EmptyLang!1147))))

(declare-fun b!475354 () Bool)

(assert (=> b!475354 (= e!290289 e!290293)))

(declare-fun c!95212 () Bool)

(assert (=> b!475354 (= c!95212 ((_ is Star!1147) (ite c!95192 (regOne!2807 r!20230) (regTwo!2806 r!20230))))))

(declare-fun bm!33116 () Bool)

(declare-fun call!33121 () Regex!1147)

(assert (=> bm!33116 (= call!33123 call!33121)))

(declare-fun d!179888 () Bool)

(declare-fun lt!210721 () Regex!1147)

(assert (=> d!179888 (validRegex!375 lt!210721)))

(assert (=> d!179888 (= lt!210721 e!290291)))

(declare-fun c!95213 () Bool)

(assert (=> d!179888 (= c!95213 (or ((_ is EmptyExpr!1147) (ite c!95192 (regOne!2807 r!20230) (regTwo!2806 r!20230))) ((_ is EmptyLang!1147) (ite c!95192 (regOne!2807 r!20230) (regTwo!2806 r!20230)))))))

(assert (=> d!179888 (validRegex!375 (ite c!95192 (regOne!2807 r!20230) (regTwo!2806 r!20230)))))

(assert (=> d!179888 (= (derivativeStep!239 (ite c!95192 (regOne!2807 r!20230) (regTwo!2806 r!20230)) c!12526) lt!210721)))

(declare-fun b!475355 () Bool)

(assert (=> b!475355 (= e!290291 EmptyLang!1147)))

(declare-fun b!475356 () Bool)

(assert (=> b!475356 (= e!290292 (ite (= c!12526 (c!95156 (ite c!95192 (regOne!2807 r!20230) (regTwo!2806 r!20230)))) EmptyExpr!1147 EmptyLang!1147))))

(declare-fun bm!33117 () Bool)

(assert (=> bm!33117 (= call!33121 call!33120)))

(declare-fun b!475357 () Bool)

(assert (=> b!475357 (= e!290293 (Concat!2047 call!33121 (ite c!95192 (regOne!2807 r!20230) (regTwo!2806 r!20230))))))

(declare-fun bm!33118 () Bool)

(assert (=> bm!33118 (= call!33120 (derivativeStep!239 (ite c!95211 (regTwo!2807 (ite c!95192 (regOne!2807 r!20230) (regTwo!2806 r!20230))) (ite c!95212 (reg!1476 (ite c!95192 (regOne!2807 r!20230) (regTwo!2806 r!20230))) (regOne!2806 (ite c!95192 (regOne!2807 r!20230) (regTwo!2806 r!20230))))) c!12526))))

(assert (= (and d!179888 c!95213) b!475355))

(assert (= (and d!179888 (not c!95213)) b!475350))

(assert (= (and b!475350 c!95215) b!475356))

(assert (= (and b!475350 (not c!95215)) b!475348))

(assert (= (and b!475348 c!95211) b!475351))

(assert (= (and b!475348 (not c!95211)) b!475354))

(assert (= (and b!475354 c!95212) b!475357))

(assert (= (and b!475354 (not c!95212)) b!475352))

(assert (= (and b!475352 c!95214) b!475349))

(assert (= (and b!475352 (not c!95214)) b!475353))

(assert (= (or b!475349 b!475353) bm!33116))

(assert (= (or b!475357 bm!33116) bm!33117))

(assert (= (or b!475351 bm!33117) bm!33118))

(assert (= (or b!475351 b!475349) bm!33115))

(declare-fun m!747175 () Bool)

(assert (=> bm!33115 m!747175))

(declare-fun m!747177 () Bool)

(assert (=> b!475352 m!747177))

(declare-fun m!747179 () Bool)

(assert (=> d!179888 m!747179))

(declare-fun m!747181 () Bool)

(assert (=> d!179888 m!747181))

(declare-fun m!747183 () Bool)

(assert (=> bm!33118 m!747183))

(assert (=> bm!33092 d!179888))

(declare-fun d!179890 () Bool)

(assert (=> d!179890 (= (nullable!282 (reg!1476 r!20230)) (nullableFct!96 (reg!1476 r!20230)))))

(declare-fun bs!58695 () Bool)

(assert (= bs!58695 d!179890))

(declare-fun m!747185 () Bool)

(assert (=> bs!58695 m!747185))

(assert (=> b!475154 d!179890))

(declare-fun b!475358 () Bool)

(declare-fun e!290297 () Bool)

(declare-fun e!290294 () Bool)

(assert (=> b!475358 (= e!290297 e!290294)))

(declare-fun res!210760 () Bool)

(assert (=> b!475358 (=> (not res!210760) (not e!290294))))

(assert (=> b!475358 (= res!210760 (and (not ((_ is ElementMatch!1147) (derivativeStep!239 r!20230 c!12526))) (not ((_ is Star!1147) (derivativeStep!239 r!20230 c!12526)))))))

(declare-fun b!475359 () Bool)

(declare-fun e!290296 () Bool)

(declare-fun e!290299 () Bool)

(assert (=> b!475359 (= e!290296 e!290299)))

(declare-fun res!210761 () Bool)

(declare-fun call!33124 () Bool)

(assert (=> b!475359 (= res!210761 call!33124)))

(assert (=> b!475359 (=> res!210761 e!290299)))

(declare-fun b!475360 () Bool)

(declare-fun call!33125 () Bool)

(assert (=> b!475360 (= e!290299 call!33125)))

(declare-fun c!95216 () Bool)

(declare-fun bm!33119 () Bool)

(assert (=> bm!33119 (= call!33125 (lostCause!141 (ite c!95216 (regTwo!2807 (derivativeStep!239 r!20230 c!12526)) (regTwo!2806 (derivativeStep!239 r!20230 c!12526)))))))

(declare-fun b!475361 () Bool)

(declare-fun e!290298 () Bool)

(assert (=> b!475361 (= e!290298 e!290297)))

(declare-fun res!210758 () Bool)

(assert (=> b!475361 (=> res!210758 e!290297)))

(assert (=> b!475361 (= res!210758 ((_ is EmptyLang!1147) (derivativeStep!239 r!20230 c!12526)))))

(declare-fun bm!33120 () Bool)

(assert (=> bm!33120 (= call!33124 (lostCause!141 (ite c!95216 (regOne!2807 (derivativeStep!239 r!20230 c!12526)) (regOne!2806 (derivativeStep!239 r!20230 c!12526)))))))

(declare-fun b!475362 () Bool)

(declare-fun e!290295 () Bool)

(assert (=> b!475362 (= e!290296 e!290295)))

(declare-fun res!210759 () Bool)

(assert (=> b!475362 (= res!210759 call!33124)))

(assert (=> b!475362 (=> (not res!210759) (not e!290295))))

(declare-fun d!179892 () Bool)

(declare-fun lt!210722 () Bool)

(assert (=> d!179892 (= lt!210722 (isEmpty!3536 (getLanguageWitness!45 (derivativeStep!239 r!20230 c!12526))))))

(assert (=> d!179892 (= lt!210722 e!290298)))

(declare-fun res!210757 () Bool)

(assert (=> d!179892 (=> (not res!210757) (not e!290298))))

(assert (=> d!179892 (= res!210757 (not ((_ is EmptyExpr!1147) (derivativeStep!239 r!20230 c!12526))))))

(assert (=> d!179892 (= (lostCauseFct!51 (derivativeStep!239 r!20230 c!12526)) lt!210722)))

(declare-fun b!475363 () Bool)

(assert (=> b!475363 (= e!290295 call!33125)))

(declare-fun b!475364 () Bool)

(assert (=> b!475364 (= e!290294 e!290296)))

(assert (=> b!475364 (= c!95216 ((_ is Union!1147) (derivativeStep!239 r!20230 c!12526)))))

(assert (= (and d!179892 res!210757) b!475361))

(assert (= (and b!475361 (not res!210758)) b!475358))

(assert (= (and b!475358 res!210760) b!475364))

(assert (= (and b!475364 c!95216) b!475362))

(assert (= (and b!475364 (not c!95216)) b!475359))

(assert (= (and b!475362 res!210759) b!475363))

(assert (= (and b!475359 (not res!210761)) b!475360))

(assert (= (or b!475362 b!475359) bm!33120))

(assert (= (or b!475363 b!475360) bm!33119))

(declare-fun m!747187 () Bool)

(assert (=> bm!33119 m!747187))

(declare-fun m!747189 () Bool)

(assert (=> bm!33120 m!747189))

(assert (=> d!179892 m!747103))

(declare-fun m!747191 () Bool)

(assert (=> d!179892 m!747191))

(assert (=> d!179892 m!747191))

(declare-fun m!747193 () Bool)

(assert (=> d!179892 m!747193))

(assert (=> d!179870 d!179892))

(declare-fun bm!33121 () Bool)

(declare-fun c!95218 () Bool)

(declare-fun call!33126 () Bool)

(declare-fun c!95217 () Bool)

(assert (=> bm!33121 (= call!33126 (validRegex!375 (ite c!95218 (reg!1476 lt!210716) (ite c!95217 (regTwo!2807 lt!210716) (regOne!2806 lt!210716)))))))

(declare-fun b!475365 () Bool)

(declare-fun e!290301 () Bool)

(declare-fun call!33128 () Bool)

(assert (=> b!475365 (= e!290301 call!33128)))

(declare-fun b!475366 () Bool)

(declare-fun e!290305 () Bool)

(declare-fun call!33127 () Bool)

(assert (=> b!475366 (= e!290305 call!33127)))

(declare-fun bm!33122 () Bool)

(assert (=> bm!33122 (= call!33128 call!33126)))

(declare-fun bm!33123 () Bool)

(assert (=> bm!33123 (= call!33127 (validRegex!375 (ite c!95217 (regOne!2807 lt!210716) (regTwo!2806 lt!210716))))))

(declare-fun b!475368 () Bool)

(declare-fun e!290306 () Bool)

(assert (=> b!475368 (= e!290306 e!290305)))

(declare-fun res!210764 () Bool)

(assert (=> b!475368 (=> (not res!210764) (not e!290305))))

(assert (=> b!475368 (= res!210764 call!33128)))

(declare-fun b!475369 () Bool)

(declare-fun res!210765 () Bool)

(assert (=> b!475369 (=> (not res!210765) (not e!290301))))

(assert (=> b!475369 (= res!210765 call!33127)))

(declare-fun e!290300 () Bool)

(assert (=> b!475369 (= e!290300 e!290301)))

(declare-fun b!475370 () Bool)

(declare-fun e!290302 () Bool)

(assert (=> b!475370 (= e!290302 call!33126)))

(declare-fun b!475371 () Bool)

(declare-fun e!290303 () Bool)

(assert (=> b!475371 (= e!290303 e!290300)))

(assert (=> b!475371 (= c!95217 ((_ is Union!1147) lt!210716))))

(declare-fun b!475372 () Bool)

(assert (=> b!475372 (= e!290303 e!290302)))

(declare-fun res!210766 () Bool)

(assert (=> b!475372 (= res!210766 (not (nullable!282 (reg!1476 lt!210716))))))

(assert (=> b!475372 (=> (not res!210766) (not e!290302))))

(declare-fun b!475373 () Bool)

(declare-fun res!210762 () Bool)

(assert (=> b!475373 (=> res!210762 e!290306)))

(assert (=> b!475373 (= res!210762 (not ((_ is Concat!2047) lt!210716)))))

(assert (=> b!475373 (= e!290300 e!290306)))

(declare-fun d!179894 () Bool)

(declare-fun res!210763 () Bool)

(declare-fun e!290304 () Bool)

(assert (=> d!179894 (=> res!210763 e!290304)))

(assert (=> d!179894 (= res!210763 ((_ is ElementMatch!1147) lt!210716))))

(assert (=> d!179894 (= (validRegex!375 lt!210716) e!290304)))

(declare-fun b!475367 () Bool)

(assert (=> b!475367 (= e!290304 e!290303)))

(assert (=> b!475367 (= c!95218 ((_ is Star!1147) lt!210716))))

(assert (= (and d!179894 (not res!210763)) b!475367))

(assert (= (and b!475367 c!95218) b!475372))

(assert (= (and b!475367 (not c!95218)) b!475371))

(assert (= (and b!475372 res!210766) b!475370))

(assert (= (and b!475371 c!95217) b!475369))

(assert (= (and b!475371 (not c!95217)) b!475373))

(assert (= (and b!475369 res!210765) b!475365))

(assert (= (and b!475373 (not res!210762)) b!475368))

(assert (= (and b!475368 res!210764) b!475366))

(assert (= (or b!475365 b!475368) bm!33122))

(assert (= (or b!475369 b!475366) bm!33123))

(assert (= (or b!475370 bm!33122) bm!33121))

(declare-fun m!747195 () Bool)

(assert (=> bm!33121 m!747195))

(declare-fun m!747197 () Bool)

(assert (=> bm!33123 m!747197))

(declare-fun m!747199 () Bool)

(assert (=> b!475372 m!747199))

(assert (=> d!179872 d!179894))

(assert (=> d!179872 d!179864))

(declare-fun b!475376 () Bool)

(declare-fun e!290307 () Bool)

(declare-fun tp!132394 () Bool)

(assert (=> b!475376 (= e!290307 tp!132394)))

(declare-fun b!475377 () Bool)

(declare-fun tp!132393 () Bool)

(declare-fun tp!132395 () Bool)

(assert (=> b!475377 (= e!290307 (and tp!132393 tp!132395))))

(declare-fun b!475374 () Bool)

(assert (=> b!475374 (= e!290307 tp_is_empty!2291)))

(assert (=> b!475297 (= tp!132389 e!290307)))

(declare-fun b!475375 () Bool)

(declare-fun tp!132392 () Bool)

(declare-fun tp!132396 () Bool)

(assert (=> b!475375 (= e!290307 (and tp!132392 tp!132396))))

(assert (= (and b!475297 ((_ is ElementMatch!1147) (reg!1476 (regTwo!2807 r!20230)))) b!475374))

(assert (= (and b!475297 ((_ is Concat!2047) (reg!1476 (regTwo!2807 r!20230)))) b!475375))

(assert (= (and b!475297 ((_ is Star!1147) (reg!1476 (regTwo!2807 r!20230)))) b!475376))

(assert (= (and b!475297 ((_ is Union!1147) (reg!1476 (regTwo!2807 r!20230)))) b!475377))

(declare-fun b!475380 () Bool)

(declare-fun e!290308 () Bool)

(declare-fun tp!132399 () Bool)

(assert (=> b!475380 (= e!290308 tp!132399)))

(declare-fun b!475381 () Bool)

(declare-fun tp!132398 () Bool)

(declare-fun tp!132400 () Bool)

(assert (=> b!475381 (= e!290308 (and tp!132398 tp!132400))))

(declare-fun b!475378 () Bool)

(assert (=> b!475378 (= e!290308 tp_is_empty!2291)))

(assert (=> b!475298 (= tp!132388 e!290308)))

(declare-fun b!475379 () Bool)

(declare-fun tp!132397 () Bool)

(declare-fun tp!132401 () Bool)

(assert (=> b!475379 (= e!290308 (and tp!132397 tp!132401))))

(assert (= (and b!475298 ((_ is ElementMatch!1147) (regOne!2807 (regTwo!2807 r!20230)))) b!475378))

(assert (= (and b!475298 ((_ is Concat!2047) (regOne!2807 (regTwo!2807 r!20230)))) b!475379))

(assert (= (and b!475298 ((_ is Star!1147) (regOne!2807 (regTwo!2807 r!20230)))) b!475380))

(assert (= (and b!475298 ((_ is Union!1147) (regOne!2807 (regTwo!2807 r!20230)))) b!475381))

(declare-fun b!475384 () Bool)

(declare-fun e!290309 () Bool)

(declare-fun tp!132404 () Bool)

(assert (=> b!475384 (= e!290309 tp!132404)))

(declare-fun b!475385 () Bool)

(declare-fun tp!132403 () Bool)

(declare-fun tp!132405 () Bool)

(assert (=> b!475385 (= e!290309 (and tp!132403 tp!132405))))

(declare-fun b!475382 () Bool)

(assert (=> b!475382 (= e!290309 tp_is_empty!2291)))

(assert (=> b!475298 (= tp!132390 e!290309)))

(declare-fun b!475383 () Bool)

(declare-fun tp!132402 () Bool)

(declare-fun tp!132406 () Bool)

(assert (=> b!475383 (= e!290309 (and tp!132402 tp!132406))))

(assert (= (and b!475298 ((_ is ElementMatch!1147) (regTwo!2807 (regTwo!2807 r!20230)))) b!475382))

(assert (= (and b!475298 ((_ is Concat!2047) (regTwo!2807 (regTwo!2807 r!20230)))) b!475383))

(assert (= (and b!475298 ((_ is Star!1147) (regTwo!2807 (regTwo!2807 r!20230)))) b!475384))

(assert (= (and b!475298 ((_ is Union!1147) (regTwo!2807 (regTwo!2807 r!20230)))) b!475385))

(declare-fun b!475388 () Bool)

(declare-fun e!290310 () Bool)

(declare-fun tp!132409 () Bool)

(assert (=> b!475388 (= e!290310 tp!132409)))

(declare-fun b!475389 () Bool)

(declare-fun tp!132408 () Bool)

(declare-fun tp!132410 () Bool)

(assert (=> b!475389 (= e!290310 (and tp!132408 tp!132410))))

(declare-fun b!475386 () Bool)

(assert (=> b!475386 (= e!290310 tp_is_empty!2291)))

(assert (=> b!475284 (= tp!132372 e!290310)))

(declare-fun b!475387 () Bool)

(declare-fun tp!132407 () Bool)

(declare-fun tp!132411 () Bool)

(assert (=> b!475387 (= e!290310 (and tp!132407 tp!132411))))

(assert (= (and b!475284 ((_ is ElementMatch!1147) (regOne!2806 (reg!1476 r!20230)))) b!475386))

(assert (= (and b!475284 ((_ is Concat!2047) (regOne!2806 (reg!1476 r!20230)))) b!475387))

(assert (= (and b!475284 ((_ is Star!1147) (regOne!2806 (reg!1476 r!20230)))) b!475388))

(assert (= (and b!475284 ((_ is Union!1147) (regOne!2806 (reg!1476 r!20230)))) b!475389))

(declare-fun b!475392 () Bool)

(declare-fun e!290311 () Bool)

(declare-fun tp!132414 () Bool)

(assert (=> b!475392 (= e!290311 tp!132414)))

(declare-fun b!475393 () Bool)

(declare-fun tp!132413 () Bool)

(declare-fun tp!132415 () Bool)

(assert (=> b!475393 (= e!290311 (and tp!132413 tp!132415))))

(declare-fun b!475390 () Bool)

(assert (=> b!475390 (= e!290311 tp_is_empty!2291)))

(assert (=> b!475284 (= tp!132376 e!290311)))

(declare-fun b!475391 () Bool)

(declare-fun tp!132412 () Bool)

(declare-fun tp!132416 () Bool)

(assert (=> b!475391 (= e!290311 (and tp!132412 tp!132416))))

(assert (= (and b!475284 ((_ is ElementMatch!1147) (regTwo!2806 (reg!1476 r!20230)))) b!475390))

(assert (= (and b!475284 ((_ is Concat!2047) (regTwo!2806 (reg!1476 r!20230)))) b!475391))

(assert (= (and b!475284 ((_ is Star!1147) (regTwo!2806 (reg!1476 r!20230)))) b!475392))

(assert (= (and b!475284 ((_ is Union!1147) (regTwo!2806 (reg!1476 r!20230)))) b!475393))

(declare-fun b!475396 () Bool)

(declare-fun e!290312 () Bool)

(declare-fun tp!132419 () Bool)

(assert (=> b!475396 (= e!290312 tp!132419)))

(declare-fun b!475397 () Bool)

(declare-fun tp!132418 () Bool)

(declare-fun tp!132420 () Bool)

(assert (=> b!475397 (= e!290312 (and tp!132418 tp!132420))))

(declare-fun b!475394 () Bool)

(assert (=> b!475394 (= e!290312 tp_is_empty!2291)))

(assert (=> b!475293 (= tp!132384 e!290312)))

(declare-fun b!475395 () Bool)

(declare-fun tp!132417 () Bool)

(declare-fun tp!132421 () Bool)

(assert (=> b!475395 (= e!290312 (and tp!132417 tp!132421))))

(assert (= (and b!475293 ((_ is ElementMatch!1147) (reg!1476 (regOne!2807 r!20230)))) b!475394))

(assert (= (and b!475293 ((_ is Concat!2047) (reg!1476 (regOne!2807 r!20230)))) b!475395))

(assert (= (and b!475293 ((_ is Star!1147) (reg!1476 (regOne!2807 r!20230)))) b!475396))

(assert (= (and b!475293 ((_ is Union!1147) (reg!1476 (regOne!2807 r!20230)))) b!475397))

(declare-fun b!475400 () Bool)

(declare-fun e!290313 () Bool)

(declare-fun tp!132424 () Bool)

(assert (=> b!475400 (= e!290313 tp!132424)))

(declare-fun b!475401 () Bool)

(declare-fun tp!132423 () Bool)

(declare-fun tp!132425 () Bool)

(assert (=> b!475401 (= e!290313 (and tp!132423 tp!132425))))

(declare-fun b!475398 () Bool)

(assert (=> b!475398 (= e!290313 tp_is_empty!2291)))

(assert (=> b!475294 (= tp!132383 e!290313)))

(declare-fun b!475399 () Bool)

(declare-fun tp!132422 () Bool)

(declare-fun tp!132426 () Bool)

(assert (=> b!475399 (= e!290313 (and tp!132422 tp!132426))))

(assert (= (and b!475294 ((_ is ElementMatch!1147) (regOne!2807 (regOne!2807 r!20230)))) b!475398))

(assert (= (and b!475294 ((_ is Concat!2047) (regOne!2807 (regOne!2807 r!20230)))) b!475399))

(assert (= (and b!475294 ((_ is Star!1147) (regOne!2807 (regOne!2807 r!20230)))) b!475400))

(assert (= (and b!475294 ((_ is Union!1147) (regOne!2807 (regOne!2807 r!20230)))) b!475401))

(declare-fun b!475404 () Bool)

(declare-fun e!290314 () Bool)

(declare-fun tp!132429 () Bool)

(assert (=> b!475404 (= e!290314 tp!132429)))

(declare-fun b!475405 () Bool)

(declare-fun tp!132428 () Bool)

(declare-fun tp!132430 () Bool)

(assert (=> b!475405 (= e!290314 (and tp!132428 tp!132430))))

(declare-fun b!475402 () Bool)

(assert (=> b!475402 (= e!290314 tp_is_empty!2291)))

(assert (=> b!475294 (= tp!132385 e!290314)))

(declare-fun b!475403 () Bool)

(declare-fun tp!132427 () Bool)

(declare-fun tp!132431 () Bool)

(assert (=> b!475403 (= e!290314 (and tp!132427 tp!132431))))

(assert (= (and b!475294 ((_ is ElementMatch!1147) (regTwo!2807 (regOne!2807 r!20230)))) b!475402))

(assert (= (and b!475294 ((_ is Concat!2047) (regTwo!2807 (regOne!2807 r!20230)))) b!475403))

(assert (= (and b!475294 ((_ is Star!1147) (regTwo!2807 (regOne!2807 r!20230)))) b!475404))

(assert (= (and b!475294 ((_ is Union!1147) (regTwo!2807 (regOne!2807 r!20230)))) b!475405))

(declare-fun b!475408 () Bool)

(declare-fun e!290315 () Bool)

(declare-fun tp!132434 () Bool)

(assert (=> b!475408 (= e!290315 tp!132434)))

(declare-fun b!475409 () Bool)

(declare-fun tp!132433 () Bool)

(declare-fun tp!132435 () Bool)

(assert (=> b!475409 (= e!290315 (and tp!132433 tp!132435))))

(declare-fun b!475406 () Bool)

(assert (=> b!475406 (= e!290315 tp_is_empty!2291)))

(assert (=> b!475276 (= tp!132362 e!290315)))

(declare-fun b!475407 () Bool)

(declare-fun tp!132432 () Bool)

(declare-fun tp!132436 () Bool)

(assert (=> b!475407 (= e!290315 (and tp!132432 tp!132436))))

(assert (= (and b!475276 ((_ is ElementMatch!1147) (regOne!2806 (regTwo!2806 r!20230)))) b!475406))

(assert (= (and b!475276 ((_ is Concat!2047) (regOne!2806 (regTwo!2806 r!20230)))) b!475407))

(assert (= (and b!475276 ((_ is Star!1147) (regOne!2806 (regTwo!2806 r!20230)))) b!475408))

(assert (= (and b!475276 ((_ is Union!1147) (regOne!2806 (regTwo!2806 r!20230)))) b!475409))

(declare-fun b!475412 () Bool)

(declare-fun e!290316 () Bool)

(declare-fun tp!132439 () Bool)

(assert (=> b!475412 (= e!290316 tp!132439)))

(declare-fun b!475413 () Bool)

(declare-fun tp!132438 () Bool)

(declare-fun tp!132440 () Bool)

(assert (=> b!475413 (= e!290316 (and tp!132438 tp!132440))))

(declare-fun b!475410 () Bool)

(assert (=> b!475410 (= e!290316 tp_is_empty!2291)))

(assert (=> b!475276 (= tp!132366 e!290316)))

(declare-fun b!475411 () Bool)

(declare-fun tp!132437 () Bool)

(declare-fun tp!132441 () Bool)

(assert (=> b!475411 (= e!290316 (and tp!132437 tp!132441))))

(assert (= (and b!475276 ((_ is ElementMatch!1147) (regTwo!2806 (regTwo!2806 r!20230)))) b!475410))

(assert (= (and b!475276 ((_ is Concat!2047) (regTwo!2806 (regTwo!2806 r!20230)))) b!475411))

(assert (= (and b!475276 ((_ is Star!1147) (regTwo!2806 (regTwo!2806 r!20230)))) b!475412))

(assert (= (and b!475276 ((_ is Union!1147) (regTwo!2806 (regTwo!2806 r!20230)))) b!475413))

(declare-fun b!475416 () Bool)

(declare-fun e!290317 () Bool)

(declare-fun tp!132444 () Bool)

(assert (=> b!475416 (= e!290317 tp!132444)))

(declare-fun b!475417 () Bool)

(declare-fun tp!132443 () Bool)

(declare-fun tp!132445 () Bool)

(assert (=> b!475417 (= e!290317 (and tp!132443 tp!132445))))

(declare-fun b!475414 () Bool)

(assert (=> b!475414 (= e!290317 tp_is_empty!2291)))

(assert (=> b!475285 (= tp!132374 e!290317)))

(declare-fun b!475415 () Bool)

(declare-fun tp!132442 () Bool)

(declare-fun tp!132446 () Bool)

(assert (=> b!475415 (= e!290317 (and tp!132442 tp!132446))))

(assert (= (and b!475285 ((_ is ElementMatch!1147) (reg!1476 (reg!1476 r!20230)))) b!475414))

(assert (= (and b!475285 ((_ is Concat!2047) (reg!1476 (reg!1476 r!20230)))) b!475415))

(assert (= (and b!475285 ((_ is Star!1147) (reg!1476 (reg!1476 r!20230)))) b!475416))

(assert (= (and b!475285 ((_ is Union!1147) (reg!1476 (reg!1476 r!20230)))) b!475417))

(declare-fun b!475420 () Bool)

(declare-fun e!290318 () Bool)

(declare-fun tp!132449 () Bool)

(assert (=> b!475420 (= e!290318 tp!132449)))

(declare-fun b!475421 () Bool)

(declare-fun tp!132448 () Bool)

(declare-fun tp!132450 () Bool)

(assert (=> b!475421 (= e!290318 (and tp!132448 tp!132450))))

(declare-fun b!475418 () Bool)

(assert (=> b!475418 (= e!290318 tp_is_empty!2291)))

(assert (=> b!475296 (= tp!132387 e!290318)))

(declare-fun b!475419 () Bool)

(declare-fun tp!132447 () Bool)

(declare-fun tp!132451 () Bool)

(assert (=> b!475419 (= e!290318 (and tp!132447 tp!132451))))

(assert (= (and b!475296 ((_ is ElementMatch!1147) (regOne!2806 (regTwo!2807 r!20230)))) b!475418))

(assert (= (and b!475296 ((_ is Concat!2047) (regOne!2806 (regTwo!2807 r!20230)))) b!475419))

(assert (= (and b!475296 ((_ is Star!1147) (regOne!2806 (regTwo!2807 r!20230)))) b!475420))

(assert (= (and b!475296 ((_ is Union!1147) (regOne!2806 (regTwo!2807 r!20230)))) b!475421))

(declare-fun b!475424 () Bool)

(declare-fun e!290319 () Bool)

(declare-fun tp!132454 () Bool)

(assert (=> b!475424 (= e!290319 tp!132454)))

(declare-fun b!475425 () Bool)

(declare-fun tp!132453 () Bool)

(declare-fun tp!132455 () Bool)

(assert (=> b!475425 (= e!290319 (and tp!132453 tp!132455))))

(declare-fun b!475422 () Bool)

(assert (=> b!475422 (= e!290319 tp_is_empty!2291)))

(assert (=> b!475296 (= tp!132391 e!290319)))

(declare-fun b!475423 () Bool)

(declare-fun tp!132452 () Bool)

(declare-fun tp!132456 () Bool)

(assert (=> b!475423 (= e!290319 (and tp!132452 tp!132456))))

(assert (= (and b!475296 ((_ is ElementMatch!1147) (regTwo!2806 (regTwo!2807 r!20230)))) b!475422))

(assert (= (and b!475296 ((_ is Concat!2047) (regTwo!2806 (regTwo!2807 r!20230)))) b!475423))

(assert (= (and b!475296 ((_ is Star!1147) (regTwo!2806 (regTwo!2807 r!20230)))) b!475424))

(assert (= (and b!475296 ((_ is Union!1147) (regTwo!2806 (regTwo!2807 r!20230)))) b!475425))

(declare-fun b!475428 () Bool)

(declare-fun e!290320 () Bool)

(declare-fun tp!132459 () Bool)

(assert (=> b!475428 (= e!290320 tp!132459)))

(declare-fun b!475429 () Bool)

(declare-fun tp!132458 () Bool)

(declare-fun tp!132460 () Bool)

(assert (=> b!475429 (= e!290320 (and tp!132458 tp!132460))))

(declare-fun b!475426 () Bool)

(assert (=> b!475426 (= e!290320 tp_is_empty!2291)))

(assert (=> b!475292 (= tp!132382 e!290320)))

(declare-fun b!475427 () Bool)

(declare-fun tp!132457 () Bool)

(declare-fun tp!132461 () Bool)

(assert (=> b!475427 (= e!290320 (and tp!132457 tp!132461))))

(assert (= (and b!475292 ((_ is ElementMatch!1147) (regOne!2806 (regOne!2807 r!20230)))) b!475426))

(assert (= (and b!475292 ((_ is Concat!2047) (regOne!2806 (regOne!2807 r!20230)))) b!475427))

(assert (= (and b!475292 ((_ is Star!1147) (regOne!2806 (regOne!2807 r!20230)))) b!475428))

(assert (= (and b!475292 ((_ is Union!1147) (regOne!2806 (regOne!2807 r!20230)))) b!475429))

(declare-fun b!475432 () Bool)

(declare-fun e!290321 () Bool)

(declare-fun tp!132464 () Bool)

(assert (=> b!475432 (= e!290321 tp!132464)))

(declare-fun b!475433 () Bool)

(declare-fun tp!132463 () Bool)

(declare-fun tp!132465 () Bool)

(assert (=> b!475433 (= e!290321 (and tp!132463 tp!132465))))

(declare-fun b!475430 () Bool)

(assert (=> b!475430 (= e!290321 tp_is_empty!2291)))

(assert (=> b!475292 (= tp!132386 e!290321)))

(declare-fun b!475431 () Bool)

(declare-fun tp!132462 () Bool)

(declare-fun tp!132466 () Bool)

(assert (=> b!475431 (= e!290321 (and tp!132462 tp!132466))))

(assert (= (and b!475292 ((_ is ElementMatch!1147) (regTwo!2806 (regOne!2807 r!20230)))) b!475430))

(assert (= (and b!475292 ((_ is Concat!2047) (regTwo!2806 (regOne!2807 r!20230)))) b!475431))

(assert (= (and b!475292 ((_ is Star!1147) (regTwo!2806 (regOne!2807 r!20230)))) b!475432))

(assert (= (and b!475292 ((_ is Union!1147) (regTwo!2806 (regOne!2807 r!20230)))) b!475433))

(declare-fun b!475436 () Bool)

(declare-fun e!290322 () Bool)

(declare-fun tp!132469 () Bool)

(assert (=> b!475436 (= e!290322 tp!132469)))

(declare-fun b!475437 () Bool)

(declare-fun tp!132468 () Bool)

(declare-fun tp!132470 () Bool)

(assert (=> b!475437 (= e!290322 (and tp!132468 tp!132470))))

(declare-fun b!475434 () Bool)

(assert (=> b!475434 (= e!290322 tp_is_empty!2291)))

(assert (=> b!475265 (= tp!132349 e!290322)))

(declare-fun b!475435 () Bool)

(declare-fun tp!132467 () Bool)

(declare-fun tp!132471 () Bool)

(assert (=> b!475435 (= e!290322 (and tp!132467 tp!132471))))

(assert (= (and b!475265 ((_ is ElementMatch!1147) (reg!1476 (regOne!2806 r!20230)))) b!475434))

(assert (= (and b!475265 ((_ is Concat!2047) (reg!1476 (regOne!2806 r!20230)))) b!475435))

(assert (= (and b!475265 ((_ is Star!1147) (reg!1476 (regOne!2806 r!20230)))) b!475436))

(assert (= (and b!475265 ((_ is Union!1147) (reg!1476 (regOne!2806 r!20230)))) b!475437))

(declare-fun b!475440 () Bool)

(declare-fun e!290323 () Bool)

(declare-fun tp!132474 () Bool)

(assert (=> b!475440 (= e!290323 tp!132474)))

(declare-fun b!475441 () Bool)

(declare-fun tp!132473 () Bool)

(declare-fun tp!132475 () Bool)

(assert (=> b!475441 (= e!290323 (and tp!132473 tp!132475))))

(declare-fun b!475438 () Bool)

(assert (=> b!475438 (= e!290323 tp_is_empty!2291)))

(assert (=> b!475266 (= tp!132348 e!290323)))

(declare-fun b!475439 () Bool)

(declare-fun tp!132472 () Bool)

(declare-fun tp!132476 () Bool)

(assert (=> b!475439 (= e!290323 (and tp!132472 tp!132476))))

(assert (= (and b!475266 ((_ is ElementMatch!1147) (regOne!2807 (regOne!2806 r!20230)))) b!475438))

(assert (= (and b!475266 ((_ is Concat!2047) (regOne!2807 (regOne!2806 r!20230)))) b!475439))

(assert (= (and b!475266 ((_ is Star!1147) (regOne!2807 (regOne!2806 r!20230)))) b!475440))

(assert (= (and b!475266 ((_ is Union!1147) (regOne!2807 (regOne!2806 r!20230)))) b!475441))

(declare-fun b!475444 () Bool)

(declare-fun e!290324 () Bool)

(declare-fun tp!132479 () Bool)

(assert (=> b!475444 (= e!290324 tp!132479)))

(declare-fun b!475445 () Bool)

(declare-fun tp!132478 () Bool)

(declare-fun tp!132480 () Bool)

(assert (=> b!475445 (= e!290324 (and tp!132478 tp!132480))))

(declare-fun b!475442 () Bool)

(assert (=> b!475442 (= e!290324 tp_is_empty!2291)))

(assert (=> b!475266 (= tp!132350 e!290324)))

(declare-fun b!475443 () Bool)

(declare-fun tp!132477 () Bool)

(declare-fun tp!132481 () Bool)

(assert (=> b!475443 (= e!290324 (and tp!132477 tp!132481))))

(assert (= (and b!475266 ((_ is ElementMatch!1147) (regTwo!2807 (regOne!2806 r!20230)))) b!475442))

(assert (= (and b!475266 ((_ is Concat!2047) (regTwo!2807 (regOne!2806 r!20230)))) b!475443))

(assert (= (and b!475266 ((_ is Star!1147) (regTwo!2807 (regOne!2806 r!20230)))) b!475444))

(assert (= (and b!475266 ((_ is Union!1147) (regTwo!2807 (regOne!2806 r!20230)))) b!475445))

(declare-fun b!475448 () Bool)

(declare-fun e!290325 () Bool)

(declare-fun tp!132484 () Bool)

(assert (=> b!475448 (= e!290325 tp!132484)))

(declare-fun b!475449 () Bool)

(declare-fun tp!132483 () Bool)

(declare-fun tp!132485 () Bool)

(assert (=> b!475449 (= e!290325 (and tp!132483 tp!132485))))

(declare-fun b!475446 () Bool)

(assert (=> b!475446 (= e!290325 tp_is_empty!2291)))

(assert (=> b!475286 (= tp!132373 e!290325)))

(declare-fun b!475447 () Bool)

(declare-fun tp!132482 () Bool)

(declare-fun tp!132486 () Bool)

(assert (=> b!475447 (= e!290325 (and tp!132482 tp!132486))))

(assert (= (and b!475286 ((_ is ElementMatch!1147) (regOne!2807 (reg!1476 r!20230)))) b!475446))

(assert (= (and b!475286 ((_ is Concat!2047) (regOne!2807 (reg!1476 r!20230)))) b!475447))

(assert (= (and b!475286 ((_ is Star!1147) (regOne!2807 (reg!1476 r!20230)))) b!475448))

(assert (= (and b!475286 ((_ is Union!1147) (regOne!2807 (reg!1476 r!20230)))) b!475449))

(declare-fun b!475452 () Bool)

(declare-fun e!290326 () Bool)

(declare-fun tp!132489 () Bool)

(assert (=> b!475452 (= e!290326 tp!132489)))

(declare-fun b!475453 () Bool)

(declare-fun tp!132488 () Bool)

(declare-fun tp!132490 () Bool)

(assert (=> b!475453 (= e!290326 (and tp!132488 tp!132490))))

(declare-fun b!475450 () Bool)

(assert (=> b!475450 (= e!290326 tp_is_empty!2291)))

(assert (=> b!475286 (= tp!132375 e!290326)))

(declare-fun b!475451 () Bool)

(declare-fun tp!132487 () Bool)

(declare-fun tp!132491 () Bool)

(assert (=> b!475451 (= e!290326 (and tp!132487 tp!132491))))

(assert (= (and b!475286 ((_ is ElementMatch!1147) (regTwo!2807 (reg!1476 r!20230)))) b!475450))

(assert (= (and b!475286 ((_ is Concat!2047) (regTwo!2807 (reg!1476 r!20230)))) b!475451))

(assert (= (and b!475286 ((_ is Star!1147) (regTwo!2807 (reg!1476 r!20230)))) b!475452))

(assert (= (and b!475286 ((_ is Union!1147) (regTwo!2807 (reg!1476 r!20230)))) b!475453))

(declare-fun b!475456 () Bool)

(declare-fun e!290327 () Bool)

(declare-fun tp!132494 () Bool)

(assert (=> b!475456 (= e!290327 tp!132494)))

(declare-fun b!475457 () Bool)

(declare-fun tp!132493 () Bool)

(declare-fun tp!132495 () Bool)

(assert (=> b!475457 (= e!290327 (and tp!132493 tp!132495))))

(declare-fun b!475454 () Bool)

(assert (=> b!475454 (= e!290327 tp_is_empty!2291)))

(assert (=> b!475277 (= tp!132364 e!290327)))

(declare-fun b!475455 () Bool)

(declare-fun tp!132492 () Bool)

(declare-fun tp!132496 () Bool)

(assert (=> b!475455 (= e!290327 (and tp!132492 tp!132496))))

(assert (= (and b!475277 ((_ is ElementMatch!1147) (reg!1476 (regTwo!2806 r!20230)))) b!475454))

(assert (= (and b!475277 ((_ is Concat!2047) (reg!1476 (regTwo!2806 r!20230)))) b!475455))

(assert (= (and b!475277 ((_ is Star!1147) (reg!1476 (regTwo!2806 r!20230)))) b!475456))

(assert (= (and b!475277 ((_ is Union!1147) (reg!1476 (regTwo!2806 r!20230)))) b!475457))

(declare-fun b!475460 () Bool)

(declare-fun e!290328 () Bool)

(declare-fun tp!132499 () Bool)

(assert (=> b!475460 (= e!290328 tp!132499)))

(declare-fun b!475461 () Bool)

(declare-fun tp!132498 () Bool)

(declare-fun tp!132500 () Bool)

(assert (=> b!475461 (= e!290328 (and tp!132498 tp!132500))))

(declare-fun b!475458 () Bool)

(assert (=> b!475458 (= e!290328 tp_is_empty!2291)))

(assert (=> b!475264 (= tp!132347 e!290328)))

(declare-fun b!475459 () Bool)

(declare-fun tp!132497 () Bool)

(declare-fun tp!132501 () Bool)

(assert (=> b!475459 (= e!290328 (and tp!132497 tp!132501))))

(assert (= (and b!475264 ((_ is ElementMatch!1147) (regOne!2806 (regOne!2806 r!20230)))) b!475458))

(assert (= (and b!475264 ((_ is Concat!2047) (regOne!2806 (regOne!2806 r!20230)))) b!475459))

(assert (= (and b!475264 ((_ is Star!1147) (regOne!2806 (regOne!2806 r!20230)))) b!475460))

(assert (= (and b!475264 ((_ is Union!1147) (regOne!2806 (regOne!2806 r!20230)))) b!475461))

(declare-fun b!475464 () Bool)

(declare-fun e!290329 () Bool)

(declare-fun tp!132504 () Bool)

(assert (=> b!475464 (= e!290329 tp!132504)))

(declare-fun b!475465 () Bool)

(declare-fun tp!132503 () Bool)

(declare-fun tp!132505 () Bool)

(assert (=> b!475465 (= e!290329 (and tp!132503 tp!132505))))

(declare-fun b!475462 () Bool)

(assert (=> b!475462 (= e!290329 tp_is_empty!2291)))

(assert (=> b!475264 (= tp!132351 e!290329)))

(declare-fun b!475463 () Bool)

(declare-fun tp!132502 () Bool)

(declare-fun tp!132506 () Bool)

(assert (=> b!475463 (= e!290329 (and tp!132502 tp!132506))))

(assert (= (and b!475264 ((_ is ElementMatch!1147) (regTwo!2806 (regOne!2806 r!20230)))) b!475462))

(assert (= (and b!475264 ((_ is Concat!2047) (regTwo!2806 (regOne!2806 r!20230)))) b!475463))

(assert (= (and b!475264 ((_ is Star!1147) (regTwo!2806 (regOne!2806 r!20230)))) b!475464))

(assert (= (and b!475264 ((_ is Union!1147) (regTwo!2806 (regOne!2806 r!20230)))) b!475465))

(declare-fun b!475468 () Bool)

(declare-fun e!290330 () Bool)

(declare-fun tp!132509 () Bool)

(assert (=> b!475468 (= e!290330 tp!132509)))

(declare-fun b!475469 () Bool)

(declare-fun tp!132508 () Bool)

(declare-fun tp!132510 () Bool)

(assert (=> b!475469 (= e!290330 (and tp!132508 tp!132510))))

(declare-fun b!475466 () Bool)

(assert (=> b!475466 (= e!290330 tp_is_empty!2291)))

(assert (=> b!475278 (= tp!132363 e!290330)))

(declare-fun b!475467 () Bool)

(declare-fun tp!132507 () Bool)

(declare-fun tp!132511 () Bool)

(assert (=> b!475467 (= e!290330 (and tp!132507 tp!132511))))

(assert (= (and b!475278 ((_ is ElementMatch!1147) (regOne!2807 (regTwo!2806 r!20230)))) b!475466))

(assert (= (and b!475278 ((_ is Concat!2047) (regOne!2807 (regTwo!2806 r!20230)))) b!475467))

(assert (= (and b!475278 ((_ is Star!1147) (regOne!2807 (regTwo!2806 r!20230)))) b!475468))

(assert (= (and b!475278 ((_ is Union!1147) (regOne!2807 (regTwo!2806 r!20230)))) b!475469))

(declare-fun b!475472 () Bool)

(declare-fun e!290331 () Bool)

(declare-fun tp!132514 () Bool)

(assert (=> b!475472 (= e!290331 tp!132514)))

(declare-fun b!475473 () Bool)

(declare-fun tp!132513 () Bool)

(declare-fun tp!132515 () Bool)

(assert (=> b!475473 (= e!290331 (and tp!132513 tp!132515))))

(declare-fun b!475470 () Bool)

(assert (=> b!475470 (= e!290331 tp_is_empty!2291)))

(assert (=> b!475278 (= tp!132365 e!290331)))

(declare-fun b!475471 () Bool)

(declare-fun tp!132512 () Bool)

(declare-fun tp!132516 () Bool)

(assert (=> b!475471 (= e!290331 (and tp!132512 tp!132516))))

(assert (= (and b!475278 ((_ is ElementMatch!1147) (regTwo!2807 (regTwo!2806 r!20230)))) b!475470))

(assert (= (and b!475278 ((_ is Concat!2047) (regTwo!2807 (regTwo!2806 r!20230)))) b!475471))

(assert (= (and b!475278 ((_ is Star!1147) (regTwo!2807 (regTwo!2806 r!20230)))) b!475472))

(assert (= (and b!475278 ((_ is Union!1147) (regTwo!2807 (regTwo!2806 r!20230)))) b!475473))

(check-sat (not b!475457) (not b!475468) (not b!475429) (not b!475447) (not bm!33104) (not b!475448) (not b!475435) (not b!475375) (not bm!33103) (not b!475455) (not b!475420) (not b!475427) (not b!475465) (not b!475417) (not b!475432) (not bm!33109) (not b!475461) (not b!475397) (not bm!33105) (not b!475401) (not b!475439) (not b!475444) (not b!475392) (not bm!33123) (not b!475385) (not b!475453) (not b!475409) (not b!475445) (not d!179890) (not b!475421) (not b!475437) (not b!475393) (not b!475391) (not b!475346) (not bm!33114) (not b!475472) (not b!475412) (not d!179888) (not b!475469) (not b!475407) (not b!475387) (not b!475464) (not bm!33120) (not d!179880) (not b!475403) (not d!179882) (not b!475431) (not bm!33115) (not b!475377) (not b!475411) (not b!475440) (not b!475379) (not b!475424) (not b!475415) (not b!475337) (not b!475396) (not b!475428) (not b!475419) (not b!475389) (not b!475399) (not b!475436) (not b!475376) (not b!475471) (not b!475384) (not bm!33121) (not d!179892) (not b!475452) (not b!475467) (not b!475463) (not bm!33119) (not b!475408) (not b!475383) (not b!475449) (not b!475441) (not b!475395) tp_is_empty!2291 (not bm!33108) (not b!475380) (not b!475388) (not b!475381) (not bm!33118) (not d!179878) (not b!475372) (not b!475352) (not b!475459) (not b!475324) (not b!475460) (not b!475473) (not b!475404) (not bm!33112) (not b!475456) (not b!475451) (not b!475425) (not b!475400) (not b!475443) (not bm!33111) (not b!475416) (not b!475423) (not b!475433) (not b!475413) (not b!475405))
(check-sat)
