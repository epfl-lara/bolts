; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733586 () Bool)

(assert start!733586)

(declare-fun b!7614104 () Bool)

(declare-fun e!4528201 () Bool)

(declare-fun tp!2222803 () Bool)

(assert (=> b!7614104 (= e!4528201 tp!2222803)))

(declare-fun res!3048128 () Bool)

(declare-fun e!4528200 () Bool)

(assert (=> start!733586 (=> (not res!3048128) (not e!4528200))))

(declare-datatypes ((C!40798 0))(
  ( (C!40799 (val!30839 Int)) )
))
(declare-datatypes ((Regex!20236 0))(
  ( (ElementMatch!20236 (c!1403679 C!40798)) (Concat!29081 (regOne!40984 Regex!20236) (regTwo!40984 Regex!20236)) (EmptyExpr!20236) (Star!20236 (reg!20565 Regex!20236)) (EmptyLang!20236) (Union!20236 (regOne!40985 Regex!20236) (regTwo!40985 Regex!20236)) )
))
(declare-fun r!19218 () Regex!20236)

(declare-fun validRegex!10658 (Regex!20236) Bool)

(assert (=> start!733586 (= res!3048128 (validRegex!10658 r!19218))))

(assert (=> start!733586 e!4528200))

(assert (=> start!733586 e!4528201))

(declare-fun b!7614105 () Bool)

(declare-fun tp_is_empty!50827 () Bool)

(assert (=> b!7614105 (= e!4528201 tp_is_empty!50827)))

(declare-fun b!7614106 () Bool)

(declare-fun tp!2222800 () Bool)

(declare-fun tp!2222802 () Bool)

(assert (=> b!7614106 (= e!4528201 (and tp!2222800 tp!2222802))))

(declare-fun b!7614107 () Bool)

(declare-fun tp!2222804 () Bool)

(declare-fun tp!2222801 () Bool)

(assert (=> b!7614107 (= e!4528201 (and tp!2222804 tp!2222801))))

(declare-fun b!7614108 () Bool)

(declare-fun res!3048129 () Bool)

(assert (=> b!7614108 (=> (not res!3048129) (not e!4528200))))

(declare-fun nullable!8857 (Regex!20236) Bool)

(assert (=> b!7614108 (= res!3048129 (nullable!8857 r!19218))))

(declare-fun b!7614109 () Bool)

(declare-fun res!3048127 () Bool)

(assert (=> b!7614109 (=> (not res!3048127) (not e!4528200))))

(assert (=> b!7614109 (= res!3048127 (and (not (is-ElementMatch!20236 r!19218)) (not (is-Star!20236 r!19218)) (not (is-Union!20236 r!19218)) (not (is-Concat!29081 r!19218)) (not (is-EmptyExpr!20236 r!19218))))))

(declare-fun b!7614110 () Bool)

(declare-fun lostCause!1908 (Regex!20236) Bool)

(assert (=> b!7614110 (= e!4528200 (lostCause!1908 r!19218))))

(assert (= (and start!733586 res!3048128) b!7614108))

(assert (= (and b!7614108 res!3048129) b!7614109))

(assert (= (and b!7614109 res!3048127) b!7614110))

(assert (= (and start!733586 (is-ElementMatch!20236 r!19218)) b!7614105))

(assert (= (and start!733586 (is-Concat!29081 r!19218)) b!7614106))

(assert (= (and start!733586 (is-Star!20236 r!19218)) b!7614104))

(assert (= (and start!733586 (is-Union!20236 r!19218)) b!7614107))

(declare-fun m!8149050 () Bool)

(assert (=> start!733586 m!8149050))

(declare-fun m!8149052 () Bool)

(assert (=> b!7614108 m!8149052))

(declare-fun m!8149054 () Bool)

(assert (=> b!7614110 m!8149054))

(push 1)

(assert (not start!733586))

(assert tp_is_empty!50827)

(assert (not b!7614110))

(assert (not b!7614107))

(assert (not b!7614104))

(assert (not b!7614108))

(assert (not b!7614106))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2322634 () Bool)

(declare-fun lostCauseFct!555 (Regex!20236) Bool)

(assert (=> d!2322634 (= (lostCause!1908 r!19218) (lostCauseFct!555 r!19218))))

(declare-fun bs!1942949 () Bool)

(assert (= bs!1942949 d!2322634))

(declare-fun m!8149062 () Bool)

(assert (=> bs!1942949 m!8149062))

(assert (=> b!7614110 d!2322634))

(declare-fun bm!699518 () Bool)

(declare-fun call!699523 () Bool)

(declare-fun c!1403689 () Bool)

(assert (=> bm!699518 (= call!699523 (validRegex!10658 (ite c!1403689 (regTwo!40985 r!19218) (regTwo!40984 r!19218))))))

(declare-fun b!7614168 () Bool)

(declare-fun e!4528237 () Bool)

(declare-fun e!4528239 () Bool)

(assert (=> b!7614168 (= e!4528237 e!4528239)))

(declare-fun res!3048160 () Bool)

(assert (=> b!7614168 (=> (not res!3048160) (not e!4528239))))

(declare-fun call!699524 () Bool)

(assert (=> b!7614168 (= res!3048160 call!699524)))

(declare-fun b!7614169 () Bool)

(declare-fun e!4528236 () Bool)

(assert (=> b!7614169 (= e!4528236 call!699523)))

(declare-fun d!2322638 () Bool)

(declare-fun res!3048159 () Bool)

(declare-fun e!4528240 () Bool)

(assert (=> d!2322638 (=> res!3048159 e!4528240)))

(assert (=> d!2322638 (= res!3048159 (is-ElementMatch!20236 r!19218))))

(assert (=> d!2322638 (= (validRegex!10658 r!19218) e!4528240)))

(declare-fun b!7614170 () Bool)

(declare-fun e!4528241 () Bool)

(assert (=> b!7614170 (= e!4528240 e!4528241)))

(declare-fun c!1403690 () Bool)

(assert (=> b!7614170 (= c!1403690 (is-Star!20236 r!19218))))

(declare-fun bm!699519 () Bool)

(declare-fun call!699525 () Bool)

(assert (=> bm!699519 (= call!699524 call!699525)))

(declare-fun b!7614171 () Bool)

(declare-fun res!3048161 () Bool)

(assert (=> b!7614171 (=> res!3048161 e!4528237)))

(assert (=> b!7614171 (= res!3048161 (not (is-Concat!29081 r!19218)))))

(declare-fun e!4528242 () Bool)

(assert (=> b!7614171 (= e!4528242 e!4528237)))

(declare-fun b!7614172 () Bool)

(declare-fun res!3048162 () Bool)

(assert (=> b!7614172 (=> (not res!3048162) (not e!4528236))))

(assert (=> b!7614172 (= res!3048162 call!699524)))

(assert (=> b!7614172 (= e!4528242 e!4528236)))

(declare-fun b!7614173 () Bool)

(declare-fun e!4528238 () Bool)

(assert (=> b!7614173 (= e!4528241 e!4528238)))

(declare-fun res!3048163 () Bool)

(assert (=> b!7614173 (= res!3048163 (not (nullable!8857 (reg!20565 r!19218))))))

(assert (=> b!7614173 (=> (not res!3048163) (not e!4528238))))

(declare-fun b!7614174 () Bool)

(assert (=> b!7614174 (= e!4528241 e!4528242)))

(assert (=> b!7614174 (= c!1403689 (is-Union!20236 r!19218))))

(declare-fun b!7614175 () Bool)

(assert (=> b!7614175 (= e!4528239 call!699523)))

(declare-fun bm!699520 () Bool)

(assert (=> bm!699520 (= call!699525 (validRegex!10658 (ite c!1403690 (reg!20565 r!19218) (ite c!1403689 (regOne!40985 r!19218) (regOne!40984 r!19218)))))))

(declare-fun b!7614176 () Bool)

(assert (=> b!7614176 (= e!4528238 call!699525)))

(assert (= (and d!2322638 (not res!3048159)) b!7614170))

(assert (= (and b!7614170 c!1403690) b!7614173))

(assert (= (and b!7614170 (not c!1403690)) b!7614174))

(assert (= (and b!7614173 res!3048163) b!7614176))

(assert (= (and b!7614174 c!1403689) b!7614172))

(assert (= (and b!7614174 (not c!1403689)) b!7614171))

(assert (= (and b!7614172 res!3048162) b!7614169))

(assert (= (and b!7614171 (not res!3048161)) b!7614168))

(assert (= (and b!7614168 res!3048160) b!7614175))

(assert (= (or b!7614172 b!7614168) bm!699519))

(assert (= (or b!7614169 b!7614175) bm!699518))

(assert (= (or b!7614176 bm!699519) bm!699520))

(declare-fun m!8149066 () Bool)

(assert (=> bm!699518 m!8149066))

(declare-fun m!8149068 () Bool)

(assert (=> b!7614173 m!8149068))

(declare-fun m!8149070 () Bool)

(assert (=> bm!699520 m!8149070))

(assert (=> start!733586 d!2322638))

(declare-fun d!2322642 () Bool)

(declare-fun nullableFct!3540 (Regex!20236) Bool)

(assert (=> d!2322642 (= (nullable!8857 r!19218) (nullableFct!3540 r!19218))))

(declare-fun bs!1942951 () Bool)

(assert (= bs!1942951 d!2322642))

(declare-fun m!8149072 () Bool)

(assert (=> bs!1942951 m!8149072))

(assert (=> b!7614108 d!2322642))

(declare-fun e!4528252 () Bool)

(assert (=> b!7614106 (= tp!2222800 e!4528252)))

(declare-fun b!7614197 () Bool)

(declare-fun tp!2222833 () Bool)

(declare-fun tp!2222830 () Bool)

(assert (=> b!7614197 (= e!4528252 (and tp!2222833 tp!2222830))))

(declare-fun b!7614196 () Bool)

(assert (=> b!7614196 (= e!4528252 tp_is_empty!50827)))

(declare-fun b!7614199 () Bool)

(declare-fun tp!2222831 () Bool)

(declare-fun tp!2222834 () Bool)

(assert (=> b!7614199 (= e!4528252 (and tp!2222831 tp!2222834))))

(declare-fun b!7614198 () Bool)

(declare-fun tp!2222832 () Bool)

(assert (=> b!7614198 (= e!4528252 tp!2222832)))

(assert (= (and b!7614106 (is-ElementMatch!20236 (regOne!40984 r!19218))) b!7614196))

(assert (= (and b!7614106 (is-Concat!29081 (regOne!40984 r!19218))) b!7614197))

(assert (= (and b!7614106 (is-Star!20236 (regOne!40984 r!19218))) b!7614198))

(assert (= (and b!7614106 (is-Union!20236 (regOne!40984 r!19218))) b!7614199))

(declare-fun e!4528253 () Bool)

(assert (=> b!7614106 (= tp!2222802 e!4528253)))

(declare-fun b!7614201 () Bool)

(declare-fun tp!2222838 () Bool)

(declare-fun tp!2222835 () Bool)

(assert (=> b!7614201 (= e!4528253 (and tp!2222838 tp!2222835))))

(declare-fun b!7614200 () Bool)

(assert (=> b!7614200 (= e!4528253 tp_is_empty!50827)))

(declare-fun b!7614203 () Bool)

(declare-fun tp!2222836 () Bool)

(declare-fun tp!2222839 () Bool)

(assert (=> b!7614203 (= e!4528253 (and tp!2222836 tp!2222839))))

(declare-fun b!7614202 () Bool)

(declare-fun tp!2222837 () Bool)

(assert (=> b!7614202 (= e!4528253 tp!2222837)))

(assert (= (and b!7614106 (is-ElementMatch!20236 (regTwo!40984 r!19218))) b!7614200))

(assert (= (and b!7614106 (is-Concat!29081 (regTwo!40984 r!19218))) b!7614201))

(assert (= (and b!7614106 (is-Star!20236 (regTwo!40984 r!19218))) b!7614202))

(assert (= (and b!7614106 (is-Union!20236 (regTwo!40984 r!19218))) b!7614203))

(declare-fun e!4528254 () Bool)

(assert (=> b!7614104 (= tp!2222803 e!4528254)))

(declare-fun b!7614205 () Bool)

(declare-fun tp!2222843 () Bool)

(declare-fun tp!2222840 () Bool)

(assert (=> b!7614205 (= e!4528254 (and tp!2222843 tp!2222840))))

(declare-fun b!7614204 () Bool)

(assert (=> b!7614204 (= e!4528254 tp_is_empty!50827)))

(declare-fun b!7614207 () Bool)

(declare-fun tp!2222841 () Bool)

(declare-fun tp!2222844 () Bool)

(assert (=> b!7614207 (= e!4528254 (and tp!2222841 tp!2222844))))

(declare-fun b!7614206 () Bool)

(declare-fun tp!2222842 () Bool)

(assert (=> b!7614206 (= e!4528254 tp!2222842)))

(assert (= (and b!7614104 (is-ElementMatch!20236 (reg!20565 r!19218))) b!7614204))

(assert (= (and b!7614104 (is-Concat!29081 (reg!20565 r!19218))) b!7614205))

(assert (= (and b!7614104 (is-Star!20236 (reg!20565 r!19218))) b!7614206))

(assert (= (and b!7614104 (is-Union!20236 (reg!20565 r!19218))) b!7614207))

(declare-fun e!4528257 () Bool)

(assert (=> b!7614107 (= tp!2222804 e!4528257)))

(declare-fun b!7614215 () Bool)

(declare-fun tp!2222850 () Bool)

(declare-fun tp!2222847 () Bool)

(assert (=> b!7614215 (= e!4528257 (and tp!2222850 tp!2222847))))

(declare-fun b!7614214 () Bool)

(assert (=> b!7614214 (= e!4528257 tp_is_empty!50827)))

(declare-fun b!7614217 () Bool)

(declare-fun tp!2222848 () Bool)

(declare-fun tp!2222851 () Bool)

(assert (=> b!7614217 (= e!4528257 (and tp!2222848 tp!2222851))))

(declare-fun b!7614216 () Bool)

(declare-fun tp!2222849 () Bool)

(assert (=> b!7614216 (= e!4528257 tp!2222849)))

(assert (= (and b!7614107 (is-ElementMatch!20236 (regOne!40985 r!19218))) b!7614214))

(assert (= (and b!7614107 (is-Concat!29081 (regOne!40985 r!19218))) b!7614215))

(assert (= (and b!7614107 (is-Star!20236 (regOne!40985 r!19218))) b!7614216))

(assert (= (and b!7614107 (is-Union!20236 (regOne!40985 r!19218))) b!7614217))

(declare-fun e!4528258 () Bool)

(assert (=> b!7614107 (= tp!2222801 e!4528258)))

(declare-fun b!7614223 () Bool)

(declare-fun tp!2222861 () Bool)

(declare-fun tp!2222858 () Bool)

(assert (=> b!7614223 (= e!4528258 (and tp!2222861 tp!2222858))))

(declare-fun b!7614222 () Bool)

(assert (=> b!7614222 (= e!4528258 tp_is_empty!50827)))

(declare-fun b!7614225 () Bool)

(declare-fun tp!2222859 () Bool)

(declare-fun tp!2222862 () Bool)

(assert (=> b!7614225 (= e!4528258 (and tp!2222859 tp!2222862))))

(declare-fun b!7614224 () Bool)

(declare-fun tp!2222860 () Bool)

(assert (=> b!7614224 (= e!4528258 tp!2222860)))

(assert (= (and b!7614107 (is-ElementMatch!20236 (regTwo!40985 r!19218))) b!7614222))

(assert (= (and b!7614107 (is-Concat!29081 (regTwo!40985 r!19218))) b!7614223))

(assert (= (and b!7614107 (is-Star!20236 (regTwo!40985 r!19218))) b!7614224))

(assert (= (and b!7614107 (is-Union!20236 (regTwo!40985 r!19218))) b!7614225))

(push 1)

(assert (not b!7614207))

(assert (not b!7614203))

(assert tp_is_empty!50827)

(assert (not b!7614206))

(assert (not d!2322634))

(assert (not b!7614199))

(assert (not b!7614202))

(assert (not b!7614217))

(assert (not b!7614201))

(assert (not b!7614173))

(assert (not b!7614197))

(assert (not b!7614205))

(assert (not bm!699520))

(assert (not b!7614223))

(assert (not b!7614198))

(assert (not b!7614215))

(assert (not bm!699518))

(assert (not b!7614225))

(assert (not b!7614216))

(assert (not b!7614224))

(assert (not d!2322642))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!699534 () Bool)

(declare-fun call!699539 () Bool)

(declare-fun c!1403698 () Bool)

(assert (=> bm!699534 (= call!699539 (nullable!8857 (ite c!1403698 (regTwo!40985 r!19218) (regOne!40984 r!19218))))))

(declare-fun b!7614281 () Bool)

(declare-fun e!4528299 () Bool)

(declare-fun call!699540 () Bool)

(assert (=> b!7614281 (= e!4528299 call!699540)))

(declare-fun b!7614282 () Bool)

(declare-fun e!4528294 () Bool)

(declare-fun e!4528298 () Bool)

(assert (=> b!7614282 (= e!4528294 e!4528298)))

(declare-fun res!3048194 () Bool)

(assert (=> b!7614282 (=> (not res!3048194) (not e!4528298))))

(assert (=> b!7614282 (= res!3048194 (and (not (is-EmptyLang!20236 r!19218)) (not (is-ElementMatch!20236 r!19218))))))

(declare-fun d!2322648 () Bool)

(declare-fun res!3048195 () Bool)

(assert (=> d!2322648 (=> res!3048195 e!4528294)))

(assert (=> d!2322648 (= res!3048195 (is-EmptyExpr!20236 r!19218))))

(assert (=> d!2322648 (= (nullableFct!3540 r!19218) e!4528294)))

(declare-fun b!7614283 () Bool)

(declare-fun e!4528295 () Bool)

(declare-fun e!4528296 () Bool)

(assert (=> b!7614283 (= e!4528295 e!4528296)))

(declare-fun res!3048197 () Bool)

(assert (=> b!7614283 (= res!3048197 call!699540)))

(assert (=> b!7614283 (=> res!3048197 e!4528296)))

(declare-fun b!7614284 () Bool)

(declare-fun e!4528297 () Bool)

(assert (=> b!7614284 (= e!4528298 e!4528297)))

(declare-fun res!3048196 () Bool)

(assert (=> b!7614284 (=> res!3048196 e!4528297)))

(assert (=> b!7614284 (= res!3048196 (is-Star!20236 r!19218))))

(declare-fun b!7614285 () Bool)

(assert (=> b!7614285 (= e!4528296 call!699539)))

(declare-fun b!7614286 () Bool)

(assert (=> b!7614286 (= e!4528295 e!4528299)))

(declare-fun res!3048198 () Bool)

(assert (=> b!7614286 (= res!3048198 call!699539)))

(assert (=> b!7614286 (=> (not res!3048198) (not e!4528299))))

(declare-fun b!7614287 () Bool)

(assert (=> b!7614287 (= e!4528297 e!4528295)))

(assert (=> b!7614287 (= c!1403698 (is-Union!20236 r!19218))))

(declare-fun bm!699535 () Bool)

(assert (=> bm!699535 (= call!699540 (nullable!8857 (ite c!1403698 (regOne!40985 r!19218) (regTwo!40984 r!19218))))))

(assert (= (and d!2322648 (not res!3048195)) b!7614282))

(assert (= (and b!7614282 res!3048194) b!7614284))

(assert (= (and b!7614284 (not res!3048196)) b!7614287))

(assert (= (and b!7614287 c!1403698) b!7614283))

(assert (= (and b!7614287 (not c!1403698)) b!7614286))

(assert (= (and b!7614283 (not res!3048197)) b!7614285))

(assert (= (and b!7614286 res!3048198) b!7614281))

(assert (= (or b!7614285 b!7614286) bm!699534))

(assert (= (or b!7614283 b!7614281) bm!699535))

(declare-fun m!8149086 () Bool)

(assert (=> bm!699534 m!8149086))

(declare-fun m!8149088 () Bool)

(assert (=> bm!699535 m!8149088))

(assert (=> d!2322642 d!2322648))

(declare-fun d!2322652 () Bool)

(assert (=> d!2322652 (= (nullable!8857 (reg!20565 r!19218)) (nullableFct!3540 (reg!20565 r!19218)))))

(declare-fun bs!1942953 () Bool)

(assert (= bs!1942953 d!2322652))

(declare-fun m!8149090 () Bool)

(assert (=> bs!1942953 m!8149090))

(assert (=> b!7614173 d!2322652))

(declare-fun d!2322654 () Bool)

(declare-fun lt!2655102 () Bool)

(declare-datatypes ((List!73090 0))(
  ( (Nil!72966) (Cons!72966 (h!79414 C!40798) (t!387825 List!73090)) )
))
(declare-datatypes ((Option!17338 0))(
  ( (None!17337) (Some!17337 (v!54472 List!73090)) )
))
(declare-fun isEmpty!41595 (Option!17338) Bool)

(declare-fun getLanguageWitness!1143 (Regex!20236) Option!17338)

(assert (=> d!2322654 (= lt!2655102 (isEmpty!41595 (getLanguageWitness!1143 r!19218)))))

(declare-fun e!4528344 () Bool)

(assert (=> d!2322654 (= lt!2655102 e!4528344)))

(declare-fun res!3048234 () Bool)

(assert (=> d!2322654 (=> (not res!3048234) (not e!4528344))))

(assert (=> d!2322654 (= res!3048234 (not (is-EmptyExpr!20236 r!19218)))))

(assert (=> d!2322654 (= (lostCauseFct!555 r!19218) lt!2655102)))

(declare-fun b!7614341 () Bool)

(declare-fun e!4528347 () Bool)

(declare-fun e!4528345 () Bool)

(assert (=> b!7614341 (= e!4528347 e!4528345)))

(declare-fun res!3048235 () Bool)

(assert (=> b!7614341 (=> (not res!3048235) (not e!4528345))))

(assert (=> b!7614341 (= res!3048235 (and (not (is-ElementMatch!20236 r!19218)) (not (is-Star!20236 r!19218))))))

(declare-fun b!7614342 () Bool)

(declare-fun e!4528346 () Bool)

(assert (=> b!7614342 (= e!4528345 e!4528346)))

(declare-fun c!1403708 () Bool)

(assert (=> b!7614342 (= c!1403708 (is-Union!20236 r!19218))))

(declare-fun b!7614343 () Bool)

(declare-fun e!4528349 () Bool)

(assert (=> b!7614343 (= e!4528346 e!4528349)))

(declare-fun res!3048238 () Bool)

(declare-fun call!699558 () Bool)

(assert (=> b!7614343 (= res!3048238 call!699558)))

(assert (=> b!7614343 (=> res!3048238 e!4528349)))

(declare-fun bm!699552 () Bool)

(assert (=> bm!699552 (= call!699558 (lostCause!1908 (ite c!1403708 (regOne!40985 r!19218) (regOne!40984 r!19218))))))

(declare-fun b!7614344 () Bool)

(declare-fun e!4528348 () Bool)

(assert (=> b!7614344 (= e!4528346 e!4528348)))

(declare-fun res!3048237 () Bool)

(assert (=> b!7614344 (= res!3048237 call!699558)))

(assert (=> b!7614344 (=> (not res!3048237) (not e!4528348))))

(declare-fun b!7614345 () Bool)

(declare-fun call!699557 () Bool)

(assert (=> b!7614345 (= e!4528349 call!699557)))

(declare-fun b!7614346 () Bool)

(assert (=> b!7614346 (= e!4528344 e!4528347)))

(declare-fun res!3048236 () Bool)

(assert (=> b!7614346 (=> res!3048236 e!4528347)))

(assert (=> b!7614346 (= res!3048236 (is-EmptyLang!20236 r!19218))))

(declare-fun b!7614347 () Bool)

(assert (=> b!7614347 (= e!4528348 call!699557)))

(declare-fun bm!699553 () Bool)

(assert (=> bm!699553 (= call!699557 (lostCause!1908 (ite c!1403708 (regTwo!40985 r!19218) (regTwo!40984 r!19218))))))

(assert (= (and d!2322654 res!3048234) b!7614346))

(assert (= (and b!7614346 (not res!3048236)) b!7614341))

(assert (= (and b!7614341 res!3048235) b!7614342))

(assert (= (and b!7614342 c!1403708) b!7614344))

(assert (= (and b!7614342 (not c!1403708)) b!7614343))

(assert (= (and b!7614344 res!3048237) b!7614347))

(assert (= (and b!7614343 (not res!3048238)) b!7614345))

(assert (= (or b!7614344 b!7614343) bm!699552))

(assert (= (or b!7614347 b!7614345) bm!699553))

(declare-fun m!8149108 () Bool)

(assert (=> d!2322654 m!8149108))

(assert (=> d!2322654 m!8149108))

(declare-fun m!8149112 () Bool)

(assert (=> d!2322654 m!8149112))

(declare-fun m!8149116 () Bool)

(assert (=> bm!699552 m!8149116))

(declare-fun m!8149118 () Bool)

(assert (=> bm!699553 m!8149118))

(assert (=> d!2322634 d!2322654))

(declare-fun c!1403709 () Bool)

(declare-fun bm!699554 () Bool)

(declare-fun call!699559 () Bool)

(assert (=> bm!699554 (= call!699559 (validRegex!10658 (ite c!1403709 (regTwo!40985 (ite c!1403689 (regTwo!40985 r!19218) (regTwo!40984 r!19218))) (regTwo!40984 (ite c!1403689 (regTwo!40985 r!19218) (regTwo!40984 r!19218))))))))

(declare-fun b!7614352 () Bool)

(declare-fun e!4528352 () Bool)

(declare-fun e!4528354 () Bool)

(assert (=> b!7614352 (= e!4528352 e!4528354)))

(declare-fun res!3048240 () Bool)

(assert (=> b!7614352 (=> (not res!3048240) (not e!4528354))))

(declare-fun call!699560 () Bool)

(assert (=> b!7614352 (= res!3048240 call!699560)))

(declare-fun b!7614353 () Bool)

(declare-fun e!4528351 () Bool)

(assert (=> b!7614353 (= e!4528351 call!699559)))

(declare-fun d!2322662 () Bool)

(declare-fun res!3048239 () Bool)

(declare-fun e!4528355 () Bool)

(assert (=> d!2322662 (=> res!3048239 e!4528355)))

(assert (=> d!2322662 (= res!3048239 (is-ElementMatch!20236 (ite c!1403689 (regTwo!40985 r!19218) (regTwo!40984 r!19218))))))

(assert (=> d!2322662 (= (validRegex!10658 (ite c!1403689 (regTwo!40985 r!19218) (regTwo!40984 r!19218))) e!4528355)))

(declare-fun b!7614354 () Bool)

(declare-fun e!4528356 () Bool)

(assert (=> b!7614354 (= e!4528355 e!4528356)))

(declare-fun c!1403710 () Bool)

(assert (=> b!7614354 (= c!1403710 (is-Star!20236 (ite c!1403689 (regTwo!40985 r!19218) (regTwo!40984 r!19218))))))

(declare-fun bm!699555 () Bool)

(declare-fun call!699561 () Bool)

(assert (=> bm!699555 (= call!699560 call!699561)))

(declare-fun b!7614355 () Bool)

(declare-fun res!3048241 () Bool)

(assert (=> b!7614355 (=> res!3048241 e!4528352)))

(assert (=> b!7614355 (= res!3048241 (not (is-Concat!29081 (ite c!1403689 (regTwo!40985 r!19218) (regTwo!40984 r!19218)))))))

(declare-fun e!4528357 () Bool)

(assert (=> b!7614355 (= e!4528357 e!4528352)))

(declare-fun b!7614356 () Bool)

(declare-fun res!3048242 () Bool)

(assert (=> b!7614356 (=> (not res!3048242) (not e!4528351))))

(assert (=> b!7614356 (= res!3048242 call!699560)))

(assert (=> b!7614356 (= e!4528357 e!4528351)))

(declare-fun b!7614357 () Bool)

(declare-fun e!4528353 () Bool)

(assert (=> b!7614357 (= e!4528356 e!4528353)))

(declare-fun res!3048243 () Bool)

(assert (=> b!7614357 (= res!3048243 (not (nullable!8857 (reg!20565 (ite c!1403689 (regTwo!40985 r!19218) (regTwo!40984 r!19218))))))))

(assert (=> b!7614357 (=> (not res!3048243) (not e!4528353))))

(declare-fun b!7614358 () Bool)

(assert (=> b!7614358 (= e!4528356 e!4528357)))

(assert (=> b!7614358 (= c!1403709 (is-Union!20236 (ite c!1403689 (regTwo!40985 r!19218) (regTwo!40984 r!19218))))))

(declare-fun b!7614359 () Bool)

(assert (=> b!7614359 (= e!4528354 call!699559)))

(declare-fun bm!699556 () Bool)

(assert (=> bm!699556 (= call!699561 (validRegex!10658 (ite c!1403710 (reg!20565 (ite c!1403689 (regTwo!40985 r!19218) (regTwo!40984 r!19218))) (ite c!1403709 (regOne!40985 (ite c!1403689 (regTwo!40985 r!19218) (regTwo!40984 r!19218))) (regOne!40984 (ite c!1403689 (regTwo!40985 r!19218) (regTwo!40984 r!19218)))))))))

(declare-fun b!7614360 () Bool)

(assert (=> b!7614360 (= e!4528353 call!699561)))

(assert (= (and d!2322662 (not res!3048239)) b!7614354))

(assert (= (and b!7614354 c!1403710) b!7614357))

(assert (= (and b!7614354 (not c!1403710)) b!7614358))

(assert (= (and b!7614357 res!3048243) b!7614360))

(assert (= (and b!7614358 c!1403709) b!7614356))

(assert (= (and b!7614358 (not c!1403709)) b!7614355))

(assert (= (and b!7614356 res!3048242) b!7614353))

(assert (= (and b!7614355 (not res!3048241)) b!7614352))

(assert (= (and b!7614352 res!3048240) b!7614359))

(assert (= (or b!7614356 b!7614352) bm!699555))

(assert (= (or b!7614353 b!7614359) bm!699554))

(assert (= (or b!7614360 bm!699555) bm!699556))

(declare-fun m!8149122 () Bool)

(assert (=> bm!699554 m!8149122))

(declare-fun m!8149124 () Bool)

(assert (=> b!7614357 m!8149124))

(declare-fun m!8149126 () Bool)

(assert (=> bm!699556 m!8149126))

(assert (=> bm!699518 d!2322662))

(declare-fun c!1403711 () Bool)

(declare-fun call!699562 () Bool)

(declare-fun bm!699557 () Bool)

(assert (=> bm!699557 (= call!699562 (validRegex!10658 (ite c!1403711 (regTwo!40985 (ite c!1403690 (reg!20565 r!19218) (ite c!1403689 (regOne!40985 r!19218) (regOne!40984 r!19218)))) (regTwo!40984 (ite c!1403690 (reg!20565 r!19218) (ite c!1403689 (regOne!40985 r!19218) (regOne!40984 r!19218)))))))))

(declare-fun b!7614377 () Bool)

(declare-fun e!4528363 () Bool)

(declare-fun e!4528365 () Bool)

(assert (=> b!7614377 (= e!4528363 e!4528365)))

(declare-fun res!3048245 () Bool)

(assert (=> b!7614377 (=> (not res!3048245) (not e!4528365))))

(declare-fun call!699563 () Bool)

(assert (=> b!7614377 (= res!3048245 call!699563)))

(declare-fun b!7614378 () Bool)

(declare-fun e!4528362 () Bool)

(assert (=> b!7614378 (= e!4528362 call!699562)))

(declare-fun d!2322664 () Bool)

(declare-fun res!3048244 () Bool)

(declare-fun e!4528366 () Bool)

(assert (=> d!2322664 (=> res!3048244 e!4528366)))

(assert (=> d!2322664 (= res!3048244 (is-ElementMatch!20236 (ite c!1403690 (reg!20565 r!19218) (ite c!1403689 (regOne!40985 r!19218) (regOne!40984 r!19218)))))))

(assert (=> d!2322664 (= (validRegex!10658 (ite c!1403690 (reg!20565 r!19218) (ite c!1403689 (regOne!40985 r!19218) (regOne!40984 r!19218)))) e!4528366)))

(declare-fun b!7614379 () Bool)

(declare-fun e!4528367 () Bool)

(assert (=> b!7614379 (= e!4528366 e!4528367)))

(declare-fun c!1403712 () Bool)

(assert (=> b!7614379 (= c!1403712 (is-Star!20236 (ite c!1403690 (reg!20565 r!19218) (ite c!1403689 (regOne!40985 r!19218) (regOne!40984 r!19218)))))))

(declare-fun bm!699558 () Bool)

(declare-fun call!699564 () Bool)

(assert (=> bm!699558 (= call!699563 call!699564)))

(declare-fun b!7614380 () Bool)

(declare-fun res!3048246 () Bool)

(assert (=> b!7614380 (=> res!3048246 e!4528363)))

(assert (=> b!7614380 (= res!3048246 (not (is-Concat!29081 (ite c!1403690 (reg!20565 r!19218) (ite c!1403689 (regOne!40985 r!19218) (regOne!40984 r!19218))))))))

(declare-fun e!4528368 () Bool)

(assert (=> b!7614380 (= e!4528368 e!4528363)))

(declare-fun b!7614381 () Bool)

(declare-fun res!3048247 () Bool)

(assert (=> b!7614381 (=> (not res!3048247) (not e!4528362))))

(assert (=> b!7614381 (= res!3048247 call!699563)))

(assert (=> b!7614381 (= e!4528368 e!4528362)))

(declare-fun b!7614382 () Bool)

(declare-fun e!4528364 () Bool)

(assert (=> b!7614382 (= e!4528367 e!4528364)))

(declare-fun res!3048248 () Bool)

(assert (=> b!7614382 (= res!3048248 (not (nullable!8857 (reg!20565 (ite c!1403690 (reg!20565 r!19218) (ite c!1403689 (regOne!40985 r!19218) (regOne!40984 r!19218)))))))))

(assert (=> b!7614382 (=> (not res!3048248) (not e!4528364))))

(declare-fun b!7614383 () Bool)

(assert (=> b!7614383 (= e!4528367 e!4528368)))

(assert (=> b!7614383 (= c!1403711 (is-Union!20236 (ite c!1403690 (reg!20565 r!19218) (ite c!1403689 (regOne!40985 r!19218) (regOne!40984 r!19218)))))))

(declare-fun b!7614384 () Bool)

(assert (=> b!7614384 (= e!4528365 call!699562)))

(declare-fun bm!699559 () Bool)

(assert (=> bm!699559 (= call!699564 (validRegex!10658 (ite c!1403712 (reg!20565 (ite c!1403690 (reg!20565 r!19218) (ite c!1403689 (regOne!40985 r!19218) (regOne!40984 r!19218)))) (ite c!1403711 (regOne!40985 (ite c!1403690 (reg!20565 r!19218) (ite c!1403689 (regOne!40985 r!19218) (regOne!40984 r!19218)))) (regOne!40984 (ite c!1403690 (reg!20565 r!19218) (ite c!1403689 (regOne!40985 r!19218) (regOne!40984 r!19218))))))))))

(declare-fun b!7614385 () Bool)

(assert (=> b!7614385 (= e!4528364 call!699564)))

(assert (= (and d!2322664 (not res!3048244)) b!7614379))

(assert (= (and b!7614379 c!1403712) b!7614382))

(assert (= (and b!7614379 (not c!1403712)) b!7614383))

(assert (= (and b!7614382 res!3048248) b!7614385))

(assert (= (and b!7614383 c!1403711) b!7614381))

(assert (= (and b!7614383 (not c!1403711)) b!7614380))

(assert (= (and b!7614381 res!3048247) b!7614378))

(assert (= (and b!7614380 (not res!3048246)) b!7614377))

(assert (= (and b!7614377 res!3048245) b!7614384))

(assert (= (or b!7614381 b!7614377) bm!699558))

(assert (= (or b!7614378 b!7614384) bm!699557))

(assert (= (or b!7614385 bm!699558) bm!699559))

(declare-fun m!8149128 () Bool)

(assert (=> bm!699557 m!8149128))

(declare-fun m!8149130 () Bool)

(assert (=> b!7614382 m!8149130))

(declare-fun m!8149132 () Bool)

(assert (=> bm!699559 m!8149132))

(assert (=> bm!699520 d!2322664))

(declare-fun e!4528373 () Bool)

(assert (=> b!7614201 (= tp!2222838 e!4528373)))

(declare-fun b!7614403 () Bool)

(declare-fun tp!2222938 () Bool)

(declare-fun tp!2222935 () Bool)

(assert (=> b!7614403 (= e!4528373 (and tp!2222938 tp!2222935))))

(declare-fun b!7614402 () Bool)

(assert (=> b!7614402 (= e!4528373 tp_is_empty!50827)))

(declare-fun b!7614405 () Bool)

(declare-fun tp!2222936 () Bool)

(declare-fun tp!2222939 () Bool)

(assert (=> b!7614405 (= e!4528373 (and tp!2222936 tp!2222939))))

(declare-fun b!7614404 () Bool)

(declare-fun tp!2222937 () Bool)

(assert (=> b!7614404 (= e!4528373 tp!2222937)))

(assert (= (and b!7614201 (is-ElementMatch!20236 (regOne!40984 (regTwo!40984 r!19218)))) b!7614402))

(assert (= (and b!7614201 (is-Concat!29081 (regOne!40984 (regTwo!40984 r!19218)))) b!7614403))

(assert (= (and b!7614201 (is-Star!20236 (regOne!40984 (regTwo!40984 r!19218)))) b!7614404))

(assert (= (and b!7614201 (is-Union!20236 (regOne!40984 (regTwo!40984 r!19218)))) b!7614405))

(declare-fun e!4528376 () Bool)

(assert (=> b!7614201 (= tp!2222835 e!4528376)))

(declare-fun b!7614414 () Bool)

(declare-fun tp!2222953 () Bool)

(declare-fun tp!2222946 () Bool)

(assert (=> b!7614414 (= e!4528376 (and tp!2222953 tp!2222946))))

(declare-fun b!7614412 () Bool)

(assert (=> b!7614412 (= e!4528376 tp_is_empty!50827)))

(declare-fun b!7614417 () Bool)

(declare-fun tp!2222948 () Bool)

(declare-fun tp!2222954 () Bool)

(assert (=> b!7614417 (= e!4528376 (and tp!2222948 tp!2222954))))

(declare-fun b!7614416 () Bool)

(declare-fun tp!2222951 () Bool)

(assert (=> b!7614416 (= e!4528376 tp!2222951)))

(assert (= (and b!7614201 (is-ElementMatch!20236 (regTwo!40984 (regTwo!40984 r!19218)))) b!7614412))

(assert (= (and b!7614201 (is-Concat!29081 (regTwo!40984 (regTwo!40984 r!19218)))) b!7614414))

(assert (= (and b!7614201 (is-Star!20236 (regTwo!40984 (regTwo!40984 r!19218)))) b!7614416))

(assert (= (and b!7614201 (is-Union!20236 (regTwo!40984 (regTwo!40984 r!19218)))) b!7614417))

(declare-fun e!4528378 () Bool)

(assert (=> b!7614202 (= tp!2222837 e!4528378)))

(declare-fun b!7614423 () Bool)

(declare-fun tp!2222963 () Bool)

(declare-fun tp!2222960 () Bool)

(assert (=> b!7614423 (= e!4528378 (and tp!2222963 tp!2222960))))

(declare-fun b!7614422 () Bool)

(assert (=> b!7614422 (= e!4528378 tp_is_empty!50827)))

(declare-fun b!7614425 () Bool)

(declare-fun tp!2222961 () Bool)

(declare-fun tp!2222964 () Bool)

(assert (=> b!7614425 (= e!4528378 (and tp!2222961 tp!2222964))))

(declare-fun b!7614424 () Bool)

(declare-fun tp!2222962 () Bool)

(assert (=> b!7614424 (= e!4528378 tp!2222962)))

(assert (= (and b!7614202 (is-ElementMatch!20236 (reg!20565 (regTwo!40984 r!19218)))) b!7614422))

(assert (= (and b!7614202 (is-Concat!29081 (reg!20565 (regTwo!40984 r!19218)))) b!7614423))

(assert (= (and b!7614202 (is-Star!20236 (reg!20565 (regTwo!40984 r!19218)))) b!7614424))

(assert (= (and b!7614202 (is-Union!20236 (reg!20565 (regTwo!40984 r!19218)))) b!7614425))

(declare-fun e!4528380 () Bool)

(assert (=> b!7614198 (= tp!2222832 e!4528380)))

(declare-fun b!7614431 () Bool)

(declare-fun tp!2222973 () Bool)

(declare-fun tp!2222970 () Bool)

(assert (=> b!7614431 (= e!4528380 (and tp!2222973 tp!2222970))))

(declare-fun b!7614430 () Bool)

(assert (=> b!7614430 (= e!4528380 tp_is_empty!50827)))

(declare-fun b!7614433 () Bool)

(declare-fun tp!2222971 () Bool)

(declare-fun tp!2222974 () Bool)

(assert (=> b!7614433 (= e!4528380 (and tp!2222971 tp!2222974))))

(declare-fun b!7614432 () Bool)

(declare-fun tp!2222972 () Bool)

(assert (=> b!7614432 (= e!4528380 tp!2222972)))

(assert (= (and b!7614198 (is-ElementMatch!20236 (reg!20565 (regOne!40984 r!19218)))) b!7614430))

(assert (= (and b!7614198 (is-Concat!29081 (reg!20565 (regOne!40984 r!19218)))) b!7614431))

(assert (= (and b!7614198 (is-Star!20236 (reg!20565 (regOne!40984 r!19218)))) b!7614432))

(assert (= (and b!7614198 (is-Union!20236 (reg!20565 (regOne!40984 r!19218)))) b!7614433))

(declare-fun e!4528382 () Bool)

(assert (=> b!7614199 (= tp!2222831 e!4528382)))

(declare-fun b!7614439 () Bool)

(declare-fun tp!2222983 () Bool)

(declare-fun tp!2222980 () Bool)

(assert (=> b!7614439 (= e!4528382 (and tp!2222983 tp!2222980))))

(declare-fun b!7614438 () Bool)

(assert (=> b!7614438 (= e!4528382 tp_is_empty!50827)))

(declare-fun b!7614441 () Bool)

(declare-fun tp!2222981 () Bool)

(declare-fun tp!2222984 () Bool)

(assert (=> b!7614441 (= e!4528382 (and tp!2222981 tp!2222984))))

(declare-fun b!7614440 () Bool)

(declare-fun tp!2222982 () Bool)

(assert (=> b!7614440 (= e!4528382 tp!2222982)))

(assert (= (and b!7614199 (is-ElementMatch!20236 (regOne!40985 (regOne!40984 r!19218)))) b!7614438))

(assert (= (and b!7614199 (is-Concat!29081 (regOne!40985 (regOne!40984 r!19218)))) b!7614439))

(assert (= (and b!7614199 (is-Star!20236 (regOne!40985 (regOne!40984 r!19218)))) b!7614440))

(assert (= (and b!7614199 (is-Union!20236 (regOne!40985 (regOne!40984 r!19218)))) b!7614441))

(declare-fun e!4528384 () Bool)

(assert (=> b!7614199 (= tp!2222834 e!4528384)))

(declare-fun b!7614447 () Bool)

(declare-fun tp!2222993 () Bool)

(declare-fun tp!2222990 () Bool)

(assert (=> b!7614447 (= e!4528384 (and tp!2222993 tp!2222990))))

(declare-fun b!7614446 () Bool)

(assert (=> b!7614446 (= e!4528384 tp_is_empty!50827)))

(declare-fun b!7614449 () Bool)

(declare-fun tp!2222991 () Bool)

(declare-fun tp!2222994 () Bool)

(assert (=> b!7614449 (= e!4528384 (and tp!2222991 tp!2222994))))

(declare-fun b!7614448 () Bool)

(declare-fun tp!2222992 () Bool)

(assert (=> b!7614448 (= e!4528384 tp!2222992)))

(assert (= (and b!7614199 (is-ElementMatch!20236 (regTwo!40985 (regOne!40984 r!19218)))) b!7614446))

(assert (= (and b!7614199 (is-Concat!29081 (regTwo!40985 (regOne!40984 r!19218)))) b!7614447))

(assert (= (and b!7614199 (is-Star!20236 (regTwo!40985 (regOne!40984 r!19218)))) b!7614448))

(assert (= (and b!7614199 (is-Union!20236 (regTwo!40985 (regOne!40984 r!19218)))) b!7614449))

(declare-fun e!4528386 () Bool)

(assert (=> b!7614197 (= tp!2222833 e!4528386)))

(declare-fun b!7614455 () Bool)

(declare-fun tp!2223003 () Bool)

(declare-fun tp!2223000 () Bool)

(assert (=> b!7614455 (= e!4528386 (and tp!2223003 tp!2223000))))

(declare-fun b!7614454 () Bool)

(assert (=> b!7614454 (= e!4528386 tp_is_empty!50827)))

(declare-fun b!7614457 () Bool)

(declare-fun tp!2223001 () Bool)

(declare-fun tp!2223004 () Bool)

(assert (=> b!7614457 (= e!4528386 (and tp!2223001 tp!2223004))))

(declare-fun b!7614456 () Bool)

(declare-fun tp!2223002 () Bool)

(assert (=> b!7614456 (= e!4528386 tp!2223002)))

(assert (= (and b!7614197 (is-ElementMatch!20236 (regOne!40984 (regOne!40984 r!19218)))) b!7614454))

(assert (= (and b!7614197 (is-Concat!29081 (regOne!40984 (regOne!40984 r!19218)))) b!7614455))

(assert (= (and b!7614197 (is-Star!20236 (regOne!40984 (regOne!40984 r!19218)))) b!7614456))

(assert (= (and b!7614197 (is-Union!20236 (regOne!40984 (regOne!40984 r!19218)))) b!7614457))

(declare-fun e!4528388 () Bool)

(assert (=> b!7614197 (= tp!2222830 e!4528388)))

(declare-fun b!7614463 () Bool)

(declare-fun tp!2223013 () Bool)

(declare-fun tp!2223010 () Bool)

(assert (=> b!7614463 (= e!4528388 (and tp!2223013 tp!2223010))))

(declare-fun b!7614462 () Bool)

(assert (=> b!7614462 (= e!4528388 tp_is_empty!50827)))

(declare-fun b!7614465 () Bool)

(declare-fun tp!2223011 () Bool)

(declare-fun tp!2223014 () Bool)

(assert (=> b!7614465 (= e!4528388 (and tp!2223011 tp!2223014))))

(declare-fun b!7614464 () Bool)

(declare-fun tp!2223012 () Bool)

(assert (=> b!7614464 (= e!4528388 tp!2223012)))

(assert (= (and b!7614197 (is-ElementMatch!20236 (regTwo!40984 (regOne!40984 r!19218)))) b!7614462))

(assert (= (and b!7614197 (is-Concat!29081 (regTwo!40984 (regOne!40984 r!19218)))) b!7614463))

(assert (= (and b!7614197 (is-Star!20236 (regTwo!40984 (regOne!40984 r!19218)))) b!7614464))

(assert (= (and b!7614197 (is-Union!20236 (regTwo!40984 (regOne!40984 r!19218)))) b!7614465))

(declare-fun e!4528390 () Bool)

(assert (=> b!7614217 (= tp!2222848 e!4528390)))

(declare-fun b!7614471 () Bool)

(declare-fun tp!2223023 () Bool)

(declare-fun tp!2223020 () Bool)

(assert (=> b!7614471 (= e!4528390 (and tp!2223023 tp!2223020))))

(declare-fun b!7614470 () Bool)

(assert (=> b!7614470 (= e!4528390 tp_is_empty!50827)))

(declare-fun b!7614473 () Bool)

(declare-fun tp!2223021 () Bool)

(declare-fun tp!2223024 () Bool)

(assert (=> b!7614473 (= e!4528390 (and tp!2223021 tp!2223024))))

(declare-fun b!7614472 () Bool)

(declare-fun tp!2223022 () Bool)

(assert (=> b!7614472 (= e!4528390 tp!2223022)))

(assert (= (and b!7614217 (is-ElementMatch!20236 (regOne!40985 (regOne!40985 r!19218)))) b!7614470))

(assert (= (and b!7614217 (is-Concat!29081 (regOne!40985 (regOne!40985 r!19218)))) b!7614471))

(assert (= (and b!7614217 (is-Star!20236 (regOne!40985 (regOne!40985 r!19218)))) b!7614472))

(assert (= (and b!7614217 (is-Union!20236 (regOne!40985 (regOne!40985 r!19218)))) b!7614473))

(declare-fun e!4528392 () Bool)

(assert (=> b!7614217 (= tp!2222851 e!4528392)))

(declare-fun b!7614479 () Bool)

(declare-fun tp!2223033 () Bool)

(declare-fun tp!2223030 () Bool)

(assert (=> b!7614479 (= e!4528392 (and tp!2223033 tp!2223030))))

(declare-fun b!7614478 () Bool)

(assert (=> b!7614478 (= e!4528392 tp_is_empty!50827)))

(declare-fun b!7614481 () Bool)

(declare-fun tp!2223031 () Bool)

(declare-fun tp!2223034 () Bool)

(assert (=> b!7614481 (= e!4528392 (and tp!2223031 tp!2223034))))

(declare-fun b!7614480 () Bool)

(declare-fun tp!2223032 () Bool)

(assert (=> b!7614480 (= e!4528392 tp!2223032)))

(assert (= (and b!7614217 (is-ElementMatch!20236 (regTwo!40985 (regOne!40985 r!19218)))) b!7614478))

(assert (= (and b!7614217 (is-Concat!29081 (regTwo!40985 (regOne!40985 r!19218)))) b!7614479))

(assert (= (and b!7614217 (is-Star!20236 (regTwo!40985 (regOne!40985 r!19218)))) b!7614480))

(assert (= (and b!7614217 (is-Union!20236 (regTwo!40985 (regOne!40985 r!19218)))) b!7614481))

(declare-fun e!4528394 () Bool)

(assert (=> b!7614225 (= tp!2222859 e!4528394)))

(declare-fun b!7614487 () Bool)

(declare-fun tp!2223043 () Bool)

(declare-fun tp!2223040 () Bool)

(assert (=> b!7614487 (= e!4528394 (and tp!2223043 tp!2223040))))

(declare-fun b!7614486 () Bool)

(assert (=> b!7614486 (= e!4528394 tp_is_empty!50827)))

(declare-fun b!7614489 () Bool)

(declare-fun tp!2223041 () Bool)

(declare-fun tp!2223044 () Bool)

(assert (=> b!7614489 (= e!4528394 (and tp!2223041 tp!2223044))))

(declare-fun b!7614488 () Bool)

(declare-fun tp!2223042 () Bool)

(assert (=> b!7614488 (= e!4528394 tp!2223042)))

(assert (= (and b!7614225 (is-ElementMatch!20236 (regOne!40985 (regTwo!40985 r!19218)))) b!7614486))

(assert (= (and b!7614225 (is-Concat!29081 (regOne!40985 (regTwo!40985 r!19218)))) b!7614487))

(assert (= (and b!7614225 (is-Star!20236 (regOne!40985 (regTwo!40985 r!19218)))) b!7614488))

(assert (= (and b!7614225 (is-Union!20236 (regOne!40985 (regTwo!40985 r!19218)))) b!7614489))

(declare-fun e!4528396 () Bool)

(assert (=> b!7614225 (= tp!2222862 e!4528396)))

(declare-fun b!7614495 () Bool)

(declare-fun tp!2223053 () Bool)

(declare-fun tp!2223050 () Bool)

(assert (=> b!7614495 (= e!4528396 (and tp!2223053 tp!2223050))))

(declare-fun b!7614494 () Bool)

(assert (=> b!7614494 (= e!4528396 tp_is_empty!50827)))

(declare-fun b!7614497 () Bool)

(declare-fun tp!2223051 () Bool)

(declare-fun tp!2223054 () Bool)

(assert (=> b!7614497 (= e!4528396 (and tp!2223051 tp!2223054))))

(declare-fun b!7614496 () Bool)

(declare-fun tp!2223052 () Bool)

(assert (=> b!7614496 (= e!4528396 tp!2223052)))

(assert (= (and b!7614225 (is-ElementMatch!20236 (regTwo!40985 (regTwo!40985 r!19218)))) b!7614494))

(assert (= (and b!7614225 (is-Concat!29081 (regTwo!40985 (regTwo!40985 r!19218)))) b!7614495))

(assert (= (and b!7614225 (is-Star!20236 (regTwo!40985 (regTwo!40985 r!19218)))) b!7614496))

(assert (= (and b!7614225 (is-Union!20236 (regTwo!40985 (regTwo!40985 r!19218)))) b!7614497))

(declare-fun e!4528398 () Bool)

(assert (=> b!7614216 (= tp!2222849 e!4528398)))

(declare-fun b!7614503 () Bool)

(declare-fun tp!2223063 () Bool)

(declare-fun tp!2223060 () Bool)

(assert (=> b!7614503 (= e!4528398 (and tp!2223063 tp!2223060))))

(declare-fun b!7614502 () Bool)

(assert (=> b!7614502 (= e!4528398 tp_is_empty!50827)))

(declare-fun b!7614505 () Bool)

(declare-fun tp!2223061 () Bool)

(declare-fun tp!2223064 () Bool)

(assert (=> b!7614505 (= e!4528398 (and tp!2223061 tp!2223064))))

(declare-fun b!7614504 () Bool)

(declare-fun tp!2223062 () Bool)

(assert (=> b!7614504 (= e!4528398 tp!2223062)))

(assert (= (and b!7614216 (is-ElementMatch!20236 (reg!20565 (regOne!40985 r!19218)))) b!7614502))

(assert (= (and b!7614216 (is-Concat!29081 (reg!20565 (regOne!40985 r!19218)))) b!7614503))

(assert (= (and b!7614216 (is-Star!20236 (reg!20565 (regOne!40985 r!19218)))) b!7614504))

(assert (= (and b!7614216 (is-Union!20236 (reg!20565 (regOne!40985 r!19218)))) b!7614505))

(declare-fun e!4528400 () Bool)

(assert (=> b!7614207 (= tp!2222841 e!4528400)))

(declare-fun b!7614511 () Bool)

(declare-fun tp!2223073 () Bool)

(declare-fun tp!2223070 () Bool)

(assert (=> b!7614511 (= e!4528400 (and tp!2223073 tp!2223070))))

(declare-fun b!7614510 () Bool)

(assert (=> b!7614510 (= e!4528400 tp_is_empty!50827)))

(declare-fun b!7614513 () Bool)

(declare-fun tp!2223071 () Bool)

(declare-fun tp!2223074 () Bool)

(assert (=> b!7614513 (= e!4528400 (and tp!2223071 tp!2223074))))

(declare-fun b!7614512 () Bool)

(declare-fun tp!2223072 () Bool)

(assert (=> b!7614512 (= e!4528400 tp!2223072)))

(assert (= (and b!7614207 (is-ElementMatch!20236 (regOne!40985 (reg!20565 r!19218)))) b!7614510))

(assert (= (and b!7614207 (is-Concat!29081 (regOne!40985 (reg!20565 r!19218)))) b!7614511))

(assert (= (and b!7614207 (is-Star!20236 (regOne!40985 (reg!20565 r!19218)))) b!7614512))

(assert (= (and b!7614207 (is-Union!20236 (regOne!40985 (reg!20565 r!19218)))) b!7614513))

(declare-fun e!4528402 () Bool)

(assert (=> b!7614207 (= tp!2222844 e!4528402)))

(declare-fun b!7614519 () Bool)

(declare-fun tp!2223083 () Bool)

(declare-fun tp!2223080 () Bool)

(assert (=> b!7614519 (= e!4528402 (and tp!2223083 tp!2223080))))

(declare-fun b!7614518 () Bool)

(assert (=> b!7614518 (= e!4528402 tp_is_empty!50827)))

(declare-fun b!7614521 () Bool)

(declare-fun tp!2223081 () Bool)

(declare-fun tp!2223084 () Bool)

(assert (=> b!7614521 (= e!4528402 (and tp!2223081 tp!2223084))))

(declare-fun b!7614520 () Bool)

(declare-fun tp!2223082 () Bool)

(assert (=> b!7614520 (= e!4528402 tp!2223082)))

(assert (= (and b!7614207 (is-ElementMatch!20236 (regTwo!40985 (reg!20565 r!19218)))) b!7614518))

(assert (= (and b!7614207 (is-Concat!29081 (regTwo!40985 (reg!20565 r!19218)))) b!7614519))

(assert (= (and b!7614207 (is-Star!20236 (regTwo!40985 (reg!20565 r!19218)))) b!7614520))

(assert (= (and b!7614207 (is-Union!20236 (regTwo!40985 (reg!20565 r!19218)))) b!7614521))

(declare-fun e!4528404 () Bool)

(assert (=> b!7614224 (= tp!2222860 e!4528404)))

(declare-fun b!7614527 () Bool)

(declare-fun tp!2223093 () Bool)

(declare-fun tp!2223090 () Bool)

(assert (=> b!7614527 (= e!4528404 (and tp!2223093 tp!2223090))))

(declare-fun b!7614526 () Bool)

(assert (=> b!7614526 (= e!4528404 tp_is_empty!50827)))

(declare-fun b!7614529 () Bool)

(declare-fun tp!2223091 () Bool)

(declare-fun tp!2223094 () Bool)

(assert (=> b!7614529 (= e!4528404 (and tp!2223091 tp!2223094))))

(declare-fun b!7614528 () Bool)

(declare-fun tp!2223092 () Bool)

(assert (=> b!7614528 (= e!4528404 tp!2223092)))

(assert (= (and b!7614224 (is-ElementMatch!20236 (reg!20565 (regTwo!40985 r!19218)))) b!7614526))

(assert (= (and b!7614224 (is-Concat!29081 (reg!20565 (regTwo!40985 r!19218)))) b!7614527))

(assert (= (and b!7614224 (is-Star!20236 (reg!20565 (regTwo!40985 r!19218)))) b!7614528))

(assert (= (and b!7614224 (is-Union!20236 (reg!20565 (regTwo!40985 r!19218)))) b!7614529))

(declare-fun e!4528405 () Bool)

(assert (=> b!7614215 (= tp!2222850 e!4528405)))

(declare-fun b!7614531 () Bool)

(declare-fun tp!2223098 () Bool)

(declare-fun tp!2223095 () Bool)

(assert (=> b!7614531 (= e!4528405 (and tp!2223098 tp!2223095))))

(declare-fun b!7614530 () Bool)

(assert (=> b!7614530 (= e!4528405 tp_is_empty!50827)))

(declare-fun b!7614533 () Bool)

(declare-fun tp!2223096 () Bool)

(declare-fun tp!2223099 () Bool)

(assert (=> b!7614533 (= e!4528405 (and tp!2223096 tp!2223099))))

(declare-fun b!7614532 () Bool)

(declare-fun tp!2223097 () Bool)

(assert (=> b!7614532 (= e!4528405 tp!2223097)))

(assert (= (and b!7614215 (is-ElementMatch!20236 (regOne!40984 (regOne!40985 r!19218)))) b!7614530))

(assert (= (and b!7614215 (is-Concat!29081 (regOne!40984 (regOne!40985 r!19218)))) b!7614531))

(assert (= (and b!7614215 (is-Star!20236 (regOne!40984 (regOne!40985 r!19218)))) b!7614532))

(assert (= (and b!7614215 (is-Union!20236 (regOne!40984 (regOne!40985 r!19218)))) b!7614533))

(declare-fun e!4528406 () Bool)

(assert (=> b!7614215 (= tp!2222847 e!4528406)))

(declare-fun b!7614535 () Bool)

(declare-fun tp!2223103 () Bool)

(declare-fun tp!2223100 () Bool)

(assert (=> b!7614535 (= e!4528406 (and tp!2223103 tp!2223100))))

(declare-fun b!7614534 () Bool)

(assert (=> b!7614534 (= e!4528406 tp_is_empty!50827)))

(declare-fun b!7614537 () Bool)

(declare-fun tp!2223101 () Bool)

(declare-fun tp!2223104 () Bool)

(assert (=> b!7614537 (= e!4528406 (and tp!2223101 tp!2223104))))

(declare-fun b!7614536 () Bool)

(declare-fun tp!2223102 () Bool)

(assert (=> b!7614536 (= e!4528406 tp!2223102)))

(assert (= (and b!7614215 (is-ElementMatch!20236 (regTwo!40984 (regOne!40985 r!19218)))) b!7614534))

(assert (= (and b!7614215 (is-Concat!29081 (regTwo!40984 (regOne!40985 r!19218)))) b!7614535))

(assert (= (and b!7614215 (is-Star!20236 (regTwo!40984 (regOne!40985 r!19218)))) b!7614536))

(assert (= (and b!7614215 (is-Union!20236 (regTwo!40984 (regOne!40985 r!19218)))) b!7614537))

(declare-fun e!4528407 () Bool)

(assert (=> b!7614206 (= tp!2222842 e!4528407)))

(declare-fun b!7614539 () Bool)

(declare-fun tp!2223108 () Bool)

(declare-fun tp!2223105 () Bool)

(assert (=> b!7614539 (= e!4528407 (and tp!2223108 tp!2223105))))

(declare-fun b!7614538 () Bool)

(assert (=> b!7614538 (= e!4528407 tp_is_empty!50827)))

(declare-fun b!7614541 () Bool)

(declare-fun tp!2223106 () Bool)

(declare-fun tp!2223109 () Bool)

(assert (=> b!7614541 (= e!4528407 (and tp!2223106 tp!2223109))))

(declare-fun b!7614540 () Bool)

(declare-fun tp!2223107 () Bool)

(assert (=> b!7614540 (= e!4528407 tp!2223107)))

(assert (= (and b!7614206 (is-ElementMatch!20236 (reg!20565 (reg!20565 r!19218)))) b!7614538))

(assert (= (and b!7614206 (is-Concat!29081 (reg!20565 (reg!20565 r!19218)))) b!7614539))

(assert (= (and b!7614206 (is-Star!20236 (reg!20565 (reg!20565 r!19218)))) b!7614540))

(assert (= (and b!7614206 (is-Union!20236 (reg!20565 (reg!20565 r!19218)))) b!7614541))

(declare-fun e!4528408 () Bool)

(assert (=> b!7614223 (= tp!2222861 e!4528408)))

(declare-fun b!7614543 () Bool)

(declare-fun tp!2223113 () Bool)

(declare-fun tp!2223110 () Bool)

(assert (=> b!7614543 (= e!4528408 (and tp!2223113 tp!2223110))))

(declare-fun b!7614542 () Bool)

(assert (=> b!7614542 (= e!4528408 tp_is_empty!50827)))

(declare-fun b!7614545 () Bool)

(declare-fun tp!2223111 () Bool)

(declare-fun tp!2223114 () Bool)

(assert (=> b!7614545 (= e!4528408 (and tp!2223111 tp!2223114))))

(declare-fun b!7614544 () Bool)

(declare-fun tp!2223112 () Bool)

(assert (=> b!7614544 (= e!4528408 tp!2223112)))

(assert (= (and b!7614223 (is-ElementMatch!20236 (regOne!40984 (regTwo!40985 r!19218)))) b!7614542))

(assert (= (and b!7614223 (is-Concat!29081 (regOne!40984 (regTwo!40985 r!19218)))) b!7614543))

(assert (= (and b!7614223 (is-Star!20236 (regOne!40984 (regTwo!40985 r!19218)))) b!7614544))

(assert (= (and b!7614223 (is-Union!20236 (regOne!40984 (regTwo!40985 r!19218)))) b!7614545))

(declare-fun e!4528409 () Bool)

(assert (=> b!7614223 (= tp!2222858 e!4528409)))

(declare-fun b!7614547 () Bool)

(declare-fun tp!2223118 () Bool)

(declare-fun tp!2223115 () Bool)

(assert (=> b!7614547 (= e!4528409 (and tp!2223118 tp!2223115))))

(declare-fun b!7614546 () Bool)

(assert (=> b!7614546 (= e!4528409 tp_is_empty!50827)))

(declare-fun b!7614549 () Bool)

(declare-fun tp!2223116 () Bool)

(declare-fun tp!2223119 () Bool)

(assert (=> b!7614549 (= e!4528409 (and tp!2223116 tp!2223119))))

(declare-fun b!7614548 () Bool)

(declare-fun tp!2223117 () Bool)

(assert (=> b!7614548 (= e!4528409 tp!2223117)))

(assert (= (and b!7614223 (is-ElementMatch!20236 (regTwo!40984 (regTwo!40985 r!19218)))) b!7614546))

(assert (= (and b!7614223 (is-Concat!29081 (regTwo!40984 (regTwo!40985 r!19218)))) b!7614547))

(assert (= (and b!7614223 (is-Star!20236 (regTwo!40984 (regTwo!40985 r!19218)))) b!7614548))

(assert (= (and b!7614223 (is-Union!20236 (regTwo!40984 (regTwo!40985 r!19218)))) b!7614549))

(declare-fun e!4528410 () Bool)

(assert (=> b!7614203 (= tp!2222836 e!4528410)))

(declare-fun b!7614551 () Bool)

(declare-fun tp!2223123 () Bool)

(declare-fun tp!2223120 () Bool)

(assert (=> b!7614551 (= e!4528410 (and tp!2223123 tp!2223120))))

(declare-fun b!7614550 () Bool)

(assert (=> b!7614550 (= e!4528410 tp_is_empty!50827)))

(declare-fun b!7614553 () Bool)

(declare-fun tp!2223121 () Bool)

(declare-fun tp!2223124 () Bool)

(assert (=> b!7614553 (= e!4528410 (and tp!2223121 tp!2223124))))

(declare-fun b!7614552 () Bool)

(declare-fun tp!2223122 () Bool)

(assert (=> b!7614552 (= e!4528410 tp!2223122)))

(assert (= (and b!7614203 (is-ElementMatch!20236 (regOne!40985 (regTwo!40984 r!19218)))) b!7614550))

(assert (= (and b!7614203 (is-Concat!29081 (regOne!40985 (regTwo!40984 r!19218)))) b!7614551))

(assert (= (and b!7614203 (is-Star!20236 (regOne!40985 (regTwo!40984 r!19218)))) b!7614552))

(assert (= (and b!7614203 (is-Union!20236 (regOne!40985 (regTwo!40984 r!19218)))) b!7614553))

(declare-fun e!4528411 () Bool)

(assert (=> b!7614203 (= tp!2222839 e!4528411)))

(declare-fun b!7614555 () Bool)

(declare-fun tp!2223128 () Bool)

(declare-fun tp!2223125 () Bool)

(assert (=> b!7614555 (= e!4528411 (and tp!2223128 tp!2223125))))

(declare-fun b!7614554 () Bool)

(assert (=> b!7614554 (= e!4528411 tp_is_empty!50827)))

(declare-fun b!7614557 () Bool)

(declare-fun tp!2223126 () Bool)

(declare-fun tp!2223129 () Bool)

(assert (=> b!7614557 (= e!4528411 (and tp!2223126 tp!2223129))))

(declare-fun b!7614556 () Bool)

(declare-fun tp!2223127 () Bool)

(assert (=> b!7614556 (= e!4528411 tp!2223127)))

(assert (= (and b!7614203 (is-ElementMatch!20236 (regTwo!40985 (regTwo!40984 r!19218)))) b!7614554))

(assert (= (and b!7614203 (is-Concat!29081 (regTwo!40985 (regTwo!40984 r!19218)))) b!7614555))

(assert (= (and b!7614203 (is-Star!20236 (regTwo!40985 (regTwo!40984 r!19218)))) b!7614556))

(assert (= (and b!7614203 (is-Union!20236 (regTwo!40985 (regTwo!40984 r!19218)))) b!7614557))

(declare-fun e!4528412 () Bool)

(assert (=> b!7614205 (= tp!2222843 e!4528412)))

(declare-fun b!7614559 () Bool)

(declare-fun tp!2223133 () Bool)

(declare-fun tp!2223130 () Bool)

(assert (=> b!7614559 (= e!4528412 (and tp!2223133 tp!2223130))))

(declare-fun b!7614558 () Bool)

(assert (=> b!7614558 (= e!4528412 tp_is_empty!50827)))

(declare-fun b!7614561 () Bool)

(declare-fun tp!2223131 () Bool)

(declare-fun tp!2223134 () Bool)

(assert (=> b!7614561 (= e!4528412 (and tp!2223131 tp!2223134))))

(declare-fun b!7614560 () Bool)

(declare-fun tp!2223132 () Bool)

(assert (=> b!7614560 (= e!4528412 tp!2223132)))

(assert (= (and b!7614205 (is-ElementMatch!20236 (regOne!40984 (reg!20565 r!19218)))) b!7614558))

(assert (= (and b!7614205 (is-Concat!29081 (regOne!40984 (reg!20565 r!19218)))) b!7614559))

(assert (= (and b!7614205 (is-Star!20236 (regOne!40984 (reg!20565 r!19218)))) b!7614560))

(assert (= (and b!7614205 (is-Union!20236 (regOne!40984 (reg!20565 r!19218)))) b!7614561))

(declare-fun e!4528413 () Bool)

(assert (=> b!7614205 (= tp!2222840 e!4528413)))

(declare-fun b!7614563 () Bool)

(declare-fun tp!2223138 () Bool)

(declare-fun tp!2223135 () Bool)

(assert (=> b!7614563 (= e!4528413 (and tp!2223138 tp!2223135))))

(declare-fun b!7614562 () Bool)

(assert (=> b!7614562 (= e!4528413 tp_is_empty!50827)))

(declare-fun b!7614565 () Bool)

(declare-fun tp!2223136 () Bool)

(declare-fun tp!2223139 () Bool)

(assert (=> b!7614565 (= e!4528413 (and tp!2223136 tp!2223139))))

(declare-fun b!7614564 () Bool)

(declare-fun tp!2223137 () Bool)

(assert (=> b!7614564 (= e!4528413 tp!2223137)))

(assert (= (and b!7614205 (is-ElementMatch!20236 (regTwo!40984 (reg!20565 r!19218)))) b!7614562))

(assert (= (and b!7614205 (is-Concat!29081 (regTwo!40984 (reg!20565 r!19218)))) b!7614563))

(assert (= (and b!7614205 (is-Star!20236 (regTwo!40984 (reg!20565 r!19218)))) b!7614564))

(assert (= (and b!7614205 (is-Union!20236 (regTwo!40984 (reg!20565 r!19218)))) b!7614565))

(push 1)

(assert (not b!7614535))

(assert (not b!7614529))

(assert (not b!7614528))

(assert (not bm!699535))

(assert (not b!7614496))

(assert (not b!7614424))

(assert (not b!7614521))

(assert (not b!7614480))

(assert (not b!7614531))

(assert (not b!7614441))

(assert (not b!7614403))

(assert (not b!7614487))

(assert (not d!2322654))

(assert (not b!7614537))

(assert (not b!7614548))

(assert (not b!7614556))

(assert (not b!7614533))

(assert (not d!2322652))

(assert tp_is_empty!50827)

(assert (not b!7614547))

(assert (not b!7614433))

(assert (not b!7614520))

(assert (not b!7614405))

(assert (not b!7614563))

(assert (not b!7614489))

(assert (not b!7614473))

(assert (not b!7614464))

(assert (not b!7614564))

(assert (not b!7614513))

(assert (not b!7614495))

(assert (not b!7614545))

(assert (not b!7614414))

(assert (not bm!699552))

(assert (not bm!699556))

(assert (not b!7614472))

(assert (not b!7614382))

(assert (not bm!699559))

(assert (not b!7614456))

(assert (not b!7614536))

(assert (not b!7614519))

(assert (not b!7614479))

(assert (not b!7614481))

(assert (not b!7614561))

(assert (not b!7614553))

(assert (not b!7614549))

(assert (not b!7614505))

(assert (not b!7614357))

(assert (not bm!699554))

(assert (not b!7614555))

(assert (not bm!699557))

(assert (not b!7614503))

(assert (not bm!699553))

(assert (not b!7614511))

(assert (not b!7614532))

(assert (not b!7614504))

(assert (not bm!699534))

(assert (not b!7614425))

(assert (not b!7614440))

(assert (not b!7614552))

(assert (not b!7614432))

(assert (not b!7614497))

(assert (not b!7614457))

(assert (not b!7614423))

(assert (not b!7614431))

(assert (not b!7614488))

(assert (not b!7614557))

(assert (not b!7614417))

(assert (not b!7614463))

(assert (not b!7614541))

(assert (not b!7614543))

(assert (not b!7614565))

(assert (not b!7614465))

(assert (not b!7614551))

(assert (not b!7614559))

(assert (not b!7614540))

(assert (not b!7614544))

(assert (not b!7614448))

(assert (not b!7614416))

(assert (not b!7614439))

(assert (not b!7614449))

(assert (not b!7614404))

(assert (not b!7614512))

(assert (not b!7614455))

(assert (not b!7614447))

(assert (not b!7614560))

(assert (not b!7614539))

(assert (not b!7614527))

(assert (not b!7614471))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

