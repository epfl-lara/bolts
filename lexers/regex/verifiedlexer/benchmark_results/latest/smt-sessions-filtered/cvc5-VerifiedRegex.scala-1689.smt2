; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!85012 () Bool)

(assert start!85012)

(declare-fun b!954096 () Bool)

(assert (=> b!954096 true))

(assert (=> b!954096 true))

(assert (=> b!954096 true))

(declare-fun lambda!32930 () Int)

(declare-fun lambda!32929 () Int)

(assert (=> b!954096 (not (= lambda!32930 lambda!32929))))

(assert (=> b!954096 true))

(assert (=> b!954096 true))

(assert (=> b!954096 true))

(declare-fun res!433577 () Bool)

(declare-fun e!617208 () Bool)

(assert (=> start!85012 (=> (not res!433577) (not e!617208))))

(declare-datatypes ((C!5842 0))(
  ( (C!5843 (val!3169 Int)) )
))
(declare-datatypes ((Regex!2636 0))(
  ( (ElementMatch!2636 (c!155319 C!5842)) (Concat!4469 (regOne!5784 Regex!2636) (regTwo!5784 Regex!2636)) (EmptyExpr!2636) (Star!2636 (reg!2965 Regex!2636)) (EmptyLang!2636) (Union!2636 (regOne!5785 Regex!2636) (regTwo!5785 Regex!2636)) )
))
(declare-fun r!15766 () Regex!2636)

(declare-fun validRegex!1105 (Regex!2636) Bool)

(assert (=> start!85012 (= res!433577 (validRegex!1105 r!15766))))

(assert (=> start!85012 e!617208))

(declare-fun e!617204 () Bool)

(assert (=> start!85012 e!617204))

(declare-fun e!617207 () Bool)

(assert (=> start!85012 e!617207))

(declare-fun b!954090 () Bool)

(declare-fun tp_is_empty!4915 () Bool)

(assert (=> b!954090 (= e!617204 tp_is_empty!4915)))

(declare-fun b!954091 () Bool)

(declare-fun tp!293988 () Bool)

(declare-fun tp!293990 () Bool)

(assert (=> b!954091 (= e!617204 (and tp!293988 tp!293990))))

(declare-fun b!954092 () Bool)

(declare-fun res!433579 () Bool)

(declare-fun e!617205 () Bool)

(assert (=> b!954092 (=> res!433579 e!617205)))

(declare-fun lt!345136 () Bool)

(assert (=> b!954092 (= res!433579 (not lt!345136))))

(declare-fun b!954093 () Bool)

(declare-fun tp!293985 () Bool)

(assert (=> b!954093 (= e!617204 tp!293985)))

(declare-fun b!954094 () Bool)

(declare-fun tp!293987 () Bool)

(assert (=> b!954094 (= e!617207 (and tp_is_empty!4915 tp!293987))))

(declare-fun b!954095 () Bool)

(declare-fun tp!293986 () Bool)

(declare-fun tp!293989 () Bool)

(assert (=> b!954095 (= e!617204 (and tp!293986 tp!293989))))

(declare-fun e!617206 () Bool)

(assert (=> b!954096 (= e!617206 e!617205)))

(declare-fun res!433580 () Bool)

(assert (=> b!954096 (=> res!433580 e!617205)))

(declare-datatypes ((List!9866 0))(
  ( (Nil!9850) (Cons!9850 (h!15251 C!5842) (t!100912 List!9866)) )
))
(declare-fun s!10566 () List!9866)

(declare-fun isEmpty!6125 (List!9866) Bool)

(assert (=> b!954096 (= res!433580 (isEmpty!6125 s!10566))))

(declare-fun Exists!383 (Int) Bool)

(assert (=> b!954096 (= (Exists!383 lambda!32929) (Exists!383 lambda!32930))))

(declare-datatypes ((Unit!14915 0))(
  ( (Unit!14916) )
))
(declare-fun lt!345137 () Unit!14915)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!111 (Regex!2636 List!9866) Unit!14915)

(assert (=> b!954096 (= lt!345137 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!111 (reg!2965 r!15766) s!10566))))

(assert (=> b!954096 (= lt!345136 (Exists!383 lambda!32929))))

(declare-datatypes ((tuple2!11158 0))(
  ( (tuple2!11159 (_1!6405 List!9866) (_2!6405 List!9866)) )
))
(declare-datatypes ((Option!2221 0))(
  ( (None!2220) (Some!2220 (v!19637 tuple2!11158)) )
))
(declare-fun lt!345138 () Option!2221)

(declare-fun isDefined!1863 (Option!2221) Bool)

(assert (=> b!954096 (= lt!345136 (isDefined!1863 lt!345138))))

(declare-fun lt!345142 () Regex!2636)

(declare-fun findConcatSeparation!327 (Regex!2636 Regex!2636 List!9866 List!9866 List!9866) Option!2221)

(assert (=> b!954096 (= lt!345138 (findConcatSeparation!327 (reg!2965 r!15766) lt!345142 Nil!9850 s!10566 s!10566))))

(declare-fun lt!345141 () Unit!14915)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!327 (Regex!2636 Regex!2636 List!9866) Unit!14915)

(assert (=> b!954096 (= lt!345141 (lemmaFindConcatSeparationEquivalentToExists!327 (reg!2965 r!15766) lt!345142 s!10566))))

(assert (=> b!954096 (= lt!345142 (Star!2636 (reg!2965 r!15766)))))

(declare-fun b!954097 () Bool)

(declare-fun matchR!1174 (Regex!2636 List!9866) Bool)

(declare-fun get!3328 (Option!2221) tuple2!11158)

(assert (=> b!954097 (= e!617205 (matchR!1174 (reg!2965 r!15766) (_1!6405 (get!3328 lt!345138))))))

(declare-fun b!954098 () Bool)

(assert (=> b!954098 (= e!617208 (not e!617206))))

(declare-fun res!433578 () Bool)

(assert (=> b!954098 (=> res!433578 e!617206)))

(declare-fun lt!345140 () Bool)

(assert (=> b!954098 (= res!433578 (or (not lt!345140) (and (is-Concat!4469 r!15766) (is-EmptyExpr!2636 (regOne!5784 r!15766))) (and (is-Concat!4469 r!15766) (is-EmptyExpr!2636 (regTwo!5784 r!15766))) (is-Concat!4469 r!15766) (is-Union!2636 r!15766) (not (is-Star!2636 r!15766))))))

(declare-fun matchRSpec!437 (Regex!2636 List!9866) Bool)

(assert (=> b!954098 (= lt!345140 (matchRSpec!437 r!15766 s!10566))))

(assert (=> b!954098 (= lt!345140 (matchR!1174 r!15766 s!10566))))

(declare-fun lt!345139 () Unit!14915)

(declare-fun mainMatchTheorem!437 (Regex!2636 List!9866) Unit!14915)

(assert (=> b!954098 (= lt!345139 (mainMatchTheorem!437 r!15766 s!10566))))

(assert (= (and start!85012 res!433577) b!954098))

(assert (= (and b!954098 (not res!433578)) b!954096))

(assert (= (and b!954096 (not res!433580)) b!954092))

(assert (= (and b!954092 (not res!433579)) b!954097))

(assert (= (and start!85012 (is-ElementMatch!2636 r!15766)) b!954090))

(assert (= (and start!85012 (is-Concat!4469 r!15766)) b!954091))

(assert (= (and start!85012 (is-Star!2636 r!15766)) b!954093))

(assert (= (and start!85012 (is-Union!2636 r!15766)) b!954095))

(assert (= (and start!85012 (is-Cons!9850 s!10566)) b!954094))

(declare-fun m!1165393 () Bool)

(assert (=> start!85012 m!1165393))

(declare-fun m!1165395 () Bool)

(assert (=> b!954096 m!1165395))

(declare-fun m!1165397 () Bool)

(assert (=> b!954096 m!1165397))

(declare-fun m!1165399 () Bool)

(assert (=> b!954096 m!1165399))

(declare-fun m!1165401 () Bool)

(assert (=> b!954096 m!1165401))

(declare-fun m!1165403 () Bool)

(assert (=> b!954096 m!1165403))

(declare-fun m!1165405 () Bool)

(assert (=> b!954096 m!1165405))

(declare-fun m!1165407 () Bool)

(assert (=> b!954096 m!1165407))

(assert (=> b!954096 m!1165405))

(declare-fun m!1165409 () Bool)

(assert (=> b!954097 m!1165409))

(declare-fun m!1165411 () Bool)

(assert (=> b!954097 m!1165411))

(declare-fun m!1165413 () Bool)

(assert (=> b!954098 m!1165413))

(declare-fun m!1165415 () Bool)

(assert (=> b!954098 m!1165415))

(declare-fun m!1165417 () Bool)

(assert (=> b!954098 m!1165417))

(push 1)

(assert (not b!954098))

(assert (not start!85012))

(assert tp_is_empty!4915)

(assert (not b!954096))

(assert (not b!954094))

(assert (not b!954095))

(assert (not b!954093))

(assert (not b!954091))

(assert (not b!954097))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!284218 () Bool)

(declare-fun choose!5969 (Int) Bool)

(assert (=> d!284218 (= (Exists!383 lambda!32930) (choose!5969 lambda!32930))))

(declare-fun bs!240320 () Bool)

(assert (= bs!240320 d!284218))

(declare-fun m!1165445 () Bool)

(assert (=> bs!240320 m!1165445))

(assert (=> b!954096 d!284218))

(declare-fun d!284220 () Bool)

(assert (=> d!284220 (= (isEmpty!6125 s!10566) (is-Nil!9850 s!10566))))

(assert (=> b!954096 d!284220))

(declare-fun d!284222 () Bool)

(assert (=> d!284222 (= (Exists!383 lambda!32929) (choose!5969 lambda!32929))))

(declare-fun bs!240321 () Bool)

(assert (= bs!240321 d!284222))

(declare-fun m!1165447 () Bool)

(assert (=> bs!240321 m!1165447))

(assert (=> b!954096 d!284222))

(declare-fun b!954184 () Bool)

(declare-fun e!617256 () Option!2221)

(assert (=> b!954184 (= e!617256 None!2220)))

(declare-fun b!954185 () Bool)

(declare-fun e!617255 () Bool)

(declare-fun lt!345172 () Option!2221)

(declare-fun ++!2640 (List!9866 List!9866) List!9866)

(assert (=> b!954185 (= e!617255 (= (++!2640 (_1!6405 (get!3328 lt!345172)) (_2!6405 (get!3328 lt!345172))) s!10566))))

(declare-fun b!954186 () Bool)

(declare-fun lt!345171 () Unit!14915)

(declare-fun lt!345170 () Unit!14915)

(assert (=> b!954186 (= lt!345171 lt!345170)))

(assert (=> b!954186 (= (++!2640 (++!2640 Nil!9850 (Cons!9850 (h!15251 s!10566) Nil!9850)) (t!100912 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!249 (List!9866 C!5842 List!9866 List!9866) Unit!14915)

(assert (=> b!954186 (= lt!345170 (lemmaMoveElementToOtherListKeepsConcatEq!249 Nil!9850 (h!15251 s!10566) (t!100912 s!10566) s!10566))))

(assert (=> b!954186 (= e!617256 (findConcatSeparation!327 (reg!2965 r!15766) lt!345142 (++!2640 Nil!9850 (Cons!9850 (h!15251 s!10566) Nil!9850)) (t!100912 s!10566) s!10566))))

(declare-fun d!284224 () Bool)

(declare-fun e!617257 () Bool)

(assert (=> d!284224 e!617257))

(declare-fun res!433630 () Bool)

(assert (=> d!284224 (=> res!433630 e!617257)))

(assert (=> d!284224 (= res!433630 e!617255)))

(declare-fun res!433629 () Bool)

(assert (=> d!284224 (=> (not res!433629) (not e!617255))))

(assert (=> d!284224 (= res!433629 (isDefined!1863 lt!345172))))

(declare-fun e!617254 () Option!2221)

(assert (=> d!284224 (= lt!345172 e!617254)))

(declare-fun c!155329 () Bool)

(declare-fun e!617258 () Bool)

(assert (=> d!284224 (= c!155329 e!617258)))

(declare-fun res!433628 () Bool)

(assert (=> d!284224 (=> (not res!433628) (not e!617258))))

(assert (=> d!284224 (= res!433628 (matchR!1174 (reg!2965 r!15766) Nil!9850))))

(assert (=> d!284224 (validRegex!1105 (reg!2965 r!15766))))

(assert (=> d!284224 (= (findConcatSeparation!327 (reg!2965 r!15766) lt!345142 Nil!9850 s!10566 s!10566) lt!345172)))

(declare-fun b!954187 () Bool)

(declare-fun res!433627 () Bool)

(assert (=> b!954187 (=> (not res!433627) (not e!617255))))

(assert (=> b!954187 (= res!433627 (matchR!1174 (reg!2965 r!15766) (_1!6405 (get!3328 lt!345172))))))

(declare-fun b!954188 () Bool)

(declare-fun res!433631 () Bool)

(assert (=> b!954188 (=> (not res!433631) (not e!617255))))

(assert (=> b!954188 (= res!433631 (matchR!1174 lt!345142 (_2!6405 (get!3328 lt!345172))))))

(declare-fun b!954189 () Bool)

(assert (=> b!954189 (= e!617257 (not (isDefined!1863 lt!345172)))))

(declare-fun b!954190 () Bool)

(assert (=> b!954190 (= e!617258 (matchR!1174 lt!345142 s!10566))))

(declare-fun b!954191 () Bool)

(assert (=> b!954191 (= e!617254 e!617256)))

(declare-fun c!155330 () Bool)

(assert (=> b!954191 (= c!155330 (is-Nil!9850 s!10566))))

(declare-fun b!954192 () Bool)

(assert (=> b!954192 (= e!617254 (Some!2220 (tuple2!11159 Nil!9850 s!10566)))))

(assert (= (and d!284224 res!433628) b!954190))

(assert (= (and d!284224 c!155329) b!954192))

(assert (= (and d!284224 (not c!155329)) b!954191))

(assert (= (and b!954191 c!155330) b!954184))

(assert (= (and b!954191 (not c!155330)) b!954186))

(assert (= (and d!284224 res!433629) b!954187))

(assert (= (and b!954187 res!433627) b!954188))

(assert (= (and b!954188 res!433631) b!954185))

(assert (= (and d!284224 (not res!433630)) b!954189))

(declare-fun m!1165449 () Bool)

(assert (=> b!954189 m!1165449))

(declare-fun m!1165451 () Bool)

(assert (=> b!954190 m!1165451))

(assert (=> d!284224 m!1165449))

(declare-fun m!1165453 () Bool)

(assert (=> d!284224 m!1165453))

(declare-fun m!1165455 () Bool)

(assert (=> d!284224 m!1165455))

(declare-fun m!1165457 () Bool)

(assert (=> b!954185 m!1165457))

(declare-fun m!1165459 () Bool)

(assert (=> b!954185 m!1165459))

(assert (=> b!954188 m!1165457))

(declare-fun m!1165461 () Bool)

(assert (=> b!954188 m!1165461))

(assert (=> b!954187 m!1165457))

(declare-fun m!1165463 () Bool)

(assert (=> b!954187 m!1165463))

(declare-fun m!1165465 () Bool)

(assert (=> b!954186 m!1165465))

(assert (=> b!954186 m!1165465))

(declare-fun m!1165467 () Bool)

(assert (=> b!954186 m!1165467))

(declare-fun m!1165469 () Bool)

(assert (=> b!954186 m!1165469))

(assert (=> b!954186 m!1165465))

(declare-fun m!1165471 () Bool)

(assert (=> b!954186 m!1165471))

(assert (=> b!954096 d!284224))

(declare-fun bs!240322 () Bool)

(declare-fun d!284228 () Bool)

(assert (= bs!240322 (and d!284228 b!954096)))

(declare-fun lambda!32943 () Int)

(assert (=> bs!240322 (= (= (Star!2636 (reg!2965 r!15766)) lt!345142) (= lambda!32943 lambda!32929))))

(assert (=> bs!240322 (not (= lambda!32943 lambda!32930))))

(assert (=> d!284228 true))

(assert (=> d!284228 true))

(declare-fun lambda!32944 () Int)

(assert (=> bs!240322 (not (= lambda!32944 lambda!32929))))

(assert (=> bs!240322 (= (= (Star!2636 (reg!2965 r!15766)) lt!345142) (= lambda!32944 lambda!32930))))

(declare-fun bs!240323 () Bool)

(assert (= bs!240323 d!284228))

(assert (=> bs!240323 (not (= lambda!32944 lambda!32943))))

(assert (=> d!284228 true))

(assert (=> d!284228 true))

(assert (=> d!284228 (= (Exists!383 lambda!32943) (Exists!383 lambda!32944))))

(declare-fun lt!345175 () Unit!14915)

(declare-fun choose!5970 (Regex!2636 List!9866) Unit!14915)

(assert (=> d!284228 (= lt!345175 (choose!5970 (reg!2965 r!15766) s!10566))))

(assert (=> d!284228 (validRegex!1105 (reg!2965 r!15766))))

(assert (=> d!284228 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!111 (reg!2965 r!15766) s!10566) lt!345175)))

(declare-fun m!1165479 () Bool)

(assert (=> bs!240323 m!1165479))

(declare-fun m!1165481 () Bool)

(assert (=> bs!240323 m!1165481))

(declare-fun m!1165483 () Bool)

(assert (=> bs!240323 m!1165483))

(assert (=> bs!240323 m!1165455))

(assert (=> b!954096 d!284228))

(declare-fun bs!240324 () Bool)

(declare-fun d!284232 () Bool)

(assert (= bs!240324 (and d!284232 b!954096)))

(declare-fun lambda!32947 () Int)

(assert (=> bs!240324 (= lambda!32947 lambda!32929)))

(assert (=> bs!240324 (not (= lambda!32947 lambda!32930))))

(declare-fun bs!240325 () Bool)

(assert (= bs!240325 (and d!284232 d!284228)))

(assert (=> bs!240325 (= (= lt!345142 (Star!2636 (reg!2965 r!15766))) (= lambda!32947 lambda!32943))))

(assert (=> bs!240325 (not (= lambda!32947 lambda!32944))))

(assert (=> d!284232 true))

(assert (=> d!284232 true))

(assert (=> d!284232 true))

(assert (=> d!284232 (= (isDefined!1863 (findConcatSeparation!327 (reg!2965 r!15766) lt!345142 Nil!9850 s!10566 s!10566)) (Exists!383 lambda!32947))))

(declare-fun lt!345178 () Unit!14915)

(declare-fun choose!5971 (Regex!2636 Regex!2636 List!9866) Unit!14915)

(assert (=> d!284232 (= lt!345178 (choose!5971 (reg!2965 r!15766) lt!345142 s!10566))))

(assert (=> d!284232 (validRegex!1105 (reg!2965 r!15766))))

(assert (=> d!284232 (= (lemmaFindConcatSeparationEquivalentToExists!327 (reg!2965 r!15766) lt!345142 s!10566) lt!345178)))

(declare-fun bs!240326 () Bool)

(assert (= bs!240326 d!284232))

(assert (=> bs!240326 m!1165455))

(declare-fun m!1165485 () Bool)

(assert (=> bs!240326 m!1165485))

(declare-fun m!1165487 () Bool)

(assert (=> bs!240326 m!1165487))

(assert (=> bs!240326 m!1165395))

(declare-fun m!1165489 () Bool)

(assert (=> bs!240326 m!1165489))

(assert (=> bs!240326 m!1165395))

(assert (=> b!954096 d!284232))

(declare-fun d!284234 () Bool)

(declare-fun isEmpty!6127 (Option!2221) Bool)

(assert (=> d!284234 (= (isDefined!1863 lt!345138) (not (isEmpty!6127 lt!345138)))))

(declare-fun bs!240327 () Bool)

(assert (= bs!240327 d!284234))

(declare-fun m!1165491 () Bool)

(assert (=> bs!240327 m!1165491))

(assert (=> b!954096 d!284234))

(declare-fun b!954262 () Bool)

(declare-fun e!617300 () Bool)

(declare-fun call!59914 () Bool)

(assert (=> b!954262 (= e!617300 call!59914)))

(declare-fun b!954263 () Bool)

(declare-fun e!617306 () Bool)

(declare-fun call!59915 () Bool)

(assert (=> b!954263 (= e!617306 call!59915)))

(declare-fun d!284236 () Bool)

(declare-fun res!433681 () Bool)

(declare-fun e!617301 () Bool)

(assert (=> d!284236 (=> res!433681 e!617301)))

(assert (=> d!284236 (= res!433681 (is-ElementMatch!2636 r!15766))))

(assert (=> d!284236 (= (validRegex!1105 r!15766) e!617301)))

(declare-fun b!954264 () Bool)

(declare-fun e!617303 () Bool)

(declare-fun e!617302 () Bool)

(assert (=> b!954264 (= e!617303 e!617302)))

(declare-fun c!155344 () Bool)

(assert (=> b!954264 (= c!155344 (is-Union!2636 r!15766))))

(declare-fun b!954265 () Bool)

(assert (=> b!954265 (= e!617303 e!617300)))

(declare-fun res!433678 () Bool)

(declare-fun nullable!785 (Regex!2636) Bool)

(assert (=> b!954265 (= res!433678 (not (nullable!785 (reg!2965 r!15766))))))

(assert (=> b!954265 (=> (not res!433678) (not e!617300))))

(declare-fun b!954266 () Bool)

(declare-fun res!433679 () Bool)

(assert (=> b!954266 (=> (not res!433679) (not e!617306))))

(declare-fun call!59913 () Bool)

(assert (=> b!954266 (= res!433679 call!59913)))

(assert (=> b!954266 (= e!617302 e!617306)))

(declare-fun bm!59908 () Bool)

(assert (=> bm!59908 (= call!59913 call!59914)))

(declare-fun bm!59909 () Bool)

(assert (=> bm!59909 (= call!59915 (validRegex!1105 (ite c!155344 (regTwo!5785 r!15766) (regTwo!5784 r!15766))))))

(declare-fun b!954267 () Bool)

(declare-fun res!433677 () Bool)

(declare-fun e!617304 () Bool)

(assert (=> b!954267 (=> res!433677 e!617304)))

(assert (=> b!954267 (= res!433677 (not (is-Concat!4469 r!15766)))))

(assert (=> b!954267 (= e!617302 e!617304)))

(declare-fun b!954268 () Bool)

(declare-fun e!617305 () Bool)

(assert (=> b!954268 (= e!617305 call!59915)))

(declare-fun b!954269 () Bool)

(assert (=> b!954269 (= e!617301 e!617303)))

(declare-fun c!155343 () Bool)

(assert (=> b!954269 (= c!155343 (is-Star!2636 r!15766))))

(declare-fun b!954270 () Bool)

(assert (=> b!954270 (= e!617304 e!617305)))

(declare-fun res!433680 () Bool)

(assert (=> b!954270 (=> (not res!433680) (not e!617305))))

(assert (=> b!954270 (= res!433680 call!59913)))

(declare-fun bm!59910 () Bool)

(assert (=> bm!59910 (= call!59914 (validRegex!1105 (ite c!155343 (reg!2965 r!15766) (ite c!155344 (regOne!5785 r!15766) (regOne!5784 r!15766)))))))

(assert (= (and d!284236 (not res!433681)) b!954269))

(assert (= (and b!954269 c!155343) b!954265))

(assert (= (and b!954269 (not c!155343)) b!954264))

(assert (= (and b!954265 res!433678) b!954262))

(assert (= (and b!954264 c!155344) b!954266))

(assert (= (and b!954264 (not c!155344)) b!954267))

(assert (= (and b!954266 res!433679) b!954263))

(assert (= (and b!954267 (not res!433677)) b!954270))

(assert (= (and b!954270 res!433680) b!954268))

(assert (= (or b!954263 b!954268) bm!59909))

(assert (= (or b!954266 b!954270) bm!59908))

(assert (= (or b!954262 bm!59908) bm!59910))

(declare-fun m!1165493 () Bool)

(assert (=> b!954265 m!1165493))

(declare-fun m!1165495 () Bool)

(assert (=> bm!59909 m!1165495))

(declare-fun m!1165497 () Bool)

(assert (=> bm!59910 m!1165497))

(assert (=> start!85012 d!284236))

(declare-fun bs!240328 () Bool)

(declare-fun b!954324 () Bool)

(assert (= bs!240328 (and b!954324 d!284228)))

(declare-fun lambda!32952 () Int)

(assert (=> bs!240328 (= (= r!15766 (Star!2636 (reg!2965 r!15766))) (= lambda!32952 lambda!32944))))

(declare-fun bs!240329 () Bool)

(assert (= bs!240329 (and b!954324 d!284232)))

(assert (=> bs!240329 (not (= lambda!32952 lambda!32947))))

(declare-fun bs!240330 () Bool)

(assert (= bs!240330 (and b!954324 b!954096)))

(assert (=> bs!240330 (= (= r!15766 lt!345142) (= lambda!32952 lambda!32930))))

(assert (=> bs!240328 (not (= lambda!32952 lambda!32943))))

(assert (=> bs!240330 (not (= lambda!32952 lambda!32929))))

(assert (=> b!954324 true))

(assert (=> b!954324 true))

(declare-fun bs!240331 () Bool)

(declare-fun b!954319 () Bool)

(assert (= bs!240331 (and b!954319 d!284228)))

(declare-fun lambda!32953 () Int)

(assert (=> bs!240331 (not (= lambda!32953 lambda!32944))))

(declare-fun bs!240332 () Bool)

(assert (= bs!240332 (and b!954319 d!284232)))

(assert (=> bs!240332 (not (= lambda!32953 lambda!32947))))

(declare-fun bs!240333 () Bool)

(assert (= bs!240333 (and b!954319 b!954096)))

(assert (=> bs!240333 (not (= lambda!32953 lambda!32930))))

(assert (=> bs!240331 (not (= lambda!32953 lambda!32943))))

(declare-fun bs!240334 () Bool)

(assert (= bs!240334 (and b!954319 b!954324)))

(assert (=> bs!240334 (not (= lambda!32953 lambda!32952))))

(assert (=> bs!240333 (not (= lambda!32953 lambda!32929))))

(assert (=> b!954319 true))

(assert (=> b!954319 true))

(declare-fun b!954317 () Bool)

(declare-fun e!617333 () Bool)

(assert (=> b!954317 (= e!617333 (= s!10566 (Cons!9850 (c!155319 r!15766) Nil!9850)))))

(declare-fun b!954318 () Bool)

(declare-fun c!155358 () Bool)

(assert (=> b!954318 (= c!155358 (is-Union!2636 r!15766))))

(declare-fun e!617338 () Bool)

(assert (=> b!954318 (= e!617333 e!617338)))

(declare-fun e!617337 () Bool)

(declare-fun call!59922 () Bool)

(assert (=> b!954319 (= e!617337 call!59922)))

(declare-fun b!954320 () Bool)

(declare-fun c!155359 () Bool)

(assert (=> b!954320 (= c!155359 (is-ElementMatch!2636 r!15766))))

(declare-fun e!617336 () Bool)

(assert (=> b!954320 (= e!617336 e!617333)))

(declare-fun d!284238 () Bool)

(declare-fun c!155356 () Bool)

(assert (=> d!284238 (= c!155356 (is-EmptyExpr!2636 r!15766))))

(declare-fun e!617335 () Bool)

(assert (=> d!284238 (= (matchRSpec!437 r!15766 s!10566) e!617335)))

(declare-fun b!954321 () Bool)

(assert (=> b!954321 (= e!617335 e!617336)))

(declare-fun res!433708 () Bool)

(assert (=> b!954321 (= res!433708 (not (is-EmptyLang!2636 r!15766)))))

(assert (=> b!954321 (=> (not res!433708) (not e!617336))))

(declare-fun b!954322 () Bool)

(declare-fun call!59921 () Bool)

(assert (=> b!954322 (= e!617335 call!59921)))

(declare-fun bm!59916 () Bool)

(assert (=> bm!59916 (= call!59921 (isEmpty!6125 s!10566))))

(declare-fun b!954323 () Bool)

(declare-fun e!617334 () Bool)

(assert (=> b!954323 (= e!617334 (matchRSpec!437 (regTwo!5785 r!15766) s!10566))))

(declare-fun e!617332 () Bool)

(assert (=> b!954324 (= e!617332 call!59922)))

(declare-fun b!954325 () Bool)

(declare-fun res!433706 () Bool)

(assert (=> b!954325 (=> res!433706 e!617332)))

(assert (=> b!954325 (= res!433706 call!59921)))

(assert (=> b!954325 (= e!617337 e!617332)))

(declare-fun bm!59917 () Bool)

(declare-fun c!155357 () Bool)

(assert (=> bm!59917 (= call!59922 (Exists!383 (ite c!155357 lambda!32952 lambda!32953)))))

(declare-fun b!954326 () Bool)

(assert (=> b!954326 (= e!617338 e!617337)))

(assert (=> b!954326 (= c!155357 (is-Star!2636 r!15766))))

(declare-fun b!954327 () Bool)

(assert (=> b!954327 (= e!617338 e!617334)))

(declare-fun res!433707 () Bool)

(assert (=> b!954327 (= res!433707 (matchRSpec!437 (regOne!5785 r!15766) s!10566))))

(assert (=> b!954327 (=> res!433707 e!617334)))

(assert (= (and d!284238 c!155356) b!954322))

(assert (= (and d!284238 (not c!155356)) b!954321))

(assert (= (and b!954321 res!433708) b!954320))

(assert (= (and b!954320 c!155359) b!954317))

(assert (= (and b!954320 (not c!155359)) b!954318))

(assert (= (and b!954318 c!155358) b!954327))

(assert (= (and b!954318 (not c!155358)) b!954326))

(assert (= (and b!954327 (not res!433707)) b!954323))

(assert (= (and b!954326 c!155357) b!954325))

(assert (= (and b!954326 (not c!155357)) b!954319))

(assert (= (and b!954325 (not res!433706)) b!954324))

(assert (= (or b!954324 b!954319) bm!59917))

(assert (= (or b!954322 b!954325) bm!59916))

(assert (=> bm!59916 m!1165401))

(declare-fun m!1165513 () Bool)

(assert (=> b!954323 m!1165513))

(declare-fun m!1165515 () Bool)

(assert (=> bm!59917 m!1165515))

(declare-fun m!1165517 () Bool)

(assert (=> b!954327 m!1165517))

(assert (=> b!954098 d!284238))

(declare-fun b!954384 () Bool)

(declare-fun e!617373 () Bool)

(declare-fun head!1747 (List!9866) C!5842)

(assert (=> b!954384 (= e!617373 (= (head!1747 s!10566) (c!155319 r!15766)))))

(declare-fun b!954385 () Bool)

(declare-fun res!433743 () Bool)

(assert (=> b!954385 (=> (not res!433743) (not e!617373))))

(declare-fun tail!1309 (List!9866) List!9866)

(assert (=> b!954385 (= res!433743 (isEmpty!6125 (tail!1309 s!10566)))))

(declare-fun b!954386 () Bool)

(declare-fun e!617369 () Bool)

(declare-fun derivativeStep!594 (Regex!2636 C!5842) Regex!2636)

(assert (=> b!954386 (= e!617369 (matchR!1174 (derivativeStep!594 r!15766 (head!1747 s!10566)) (tail!1309 s!10566)))))

(declare-fun d!284244 () Bool)

(declare-fun e!617370 () Bool)

(assert (=> d!284244 e!617370))

(declare-fun c!155374 () Bool)

(assert (=> d!284244 (= c!155374 (is-EmptyExpr!2636 r!15766))))

(declare-fun lt!345184 () Bool)

(assert (=> d!284244 (= lt!345184 e!617369)))

(declare-fun c!155375 () Bool)

(assert (=> d!284244 (= c!155375 (isEmpty!6125 s!10566))))

(assert (=> d!284244 (validRegex!1105 r!15766)))

(assert (=> d!284244 (= (matchR!1174 r!15766 s!10566) lt!345184)))

(declare-fun b!954387 () Bool)

(declare-fun e!617374 () Bool)

(assert (=> b!954387 (= e!617374 (not lt!345184))))

(declare-fun b!954388 () Bool)

(assert (=> b!954388 (= e!617369 (nullable!785 r!15766))))

(declare-fun b!954389 () Bool)

(declare-fun e!617375 () Bool)

(declare-fun e!617372 () Bool)

(assert (=> b!954389 (= e!617375 e!617372)))

(declare-fun res!433741 () Bool)

(assert (=> b!954389 (=> res!433741 e!617372)))

(declare-fun call!59925 () Bool)

(assert (=> b!954389 (= res!433741 call!59925)))

(declare-fun bm!59920 () Bool)

(assert (=> bm!59920 (= call!59925 (isEmpty!6125 s!10566))))

(declare-fun b!954390 () Bool)

(declare-fun res!433740 () Bool)

(declare-fun e!617371 () Bool)

(assert (=> b!954390 (=> res!433740 e!617371)))

(assert (=> b!954390 (= res!433740 (not (is-ElementMatch!2636 r!15766)))))

(assert (=> b!954390 (= e!617374 e!617371)))

(declare-fun b!954391 () Bool)

(declare-fun res!433738 () Bool)

(assert (=> b!954391 (=> (not res!433738) (not e!617373))))

(assert (=> b!954391 (= res!433738 (not call!59925))))

(declare-fun b!954392 () Bool)

(assert (=> b!954392 (= e!617370 (= lt!345184 call!59925))))

(declare-fun b!954393 () Bool)

(assert (=> b!954393 (= e!617370 e!617374)))

(declare-fun c!155376 () Bool)

(assert (=> b!954393 (= c!155376 (is-EmptyLang!2636 r!15766))))

(declare-fun b!954394 () Bool)

(assert (=> b!954394 (= e!617372 (not (= (head!1747 s!10566) (c!155319 r!15766))))))

(declare-fun b!954395 () Bool)

(declare-fun res!433744 () Bool)

(assert (=> b!954395 (=> res!433744 e!617371)))

(assert (=> b!954395 (= res!433744 e!617373)))

(declare-fun res!433737 () Bool)

(assert (=> b!954395 (=> (not res!433737) (not e!617373))))

(assert (=> b!954395 (= res!433737 lt!345184)))

(declare-fun b!954396 () Bool)

(declare-fun res!433739 () Bool)

(assert (=> b!954396 (=> res!433739 e!617372)))

(assert (=> b!954396 (= res!433739 (not (isEmpty!6125 (tail!1309 s!10566))))))

(declare-fun b!954397 () Bool)

(assert (=> b!954397 (= e!617371 e!617375)))

(declare-fun res!433742 () Bool)

(assert (=> b!954397 (=> (not res!433742) (not e!617375))))

(assert (=> b!954397 (= res!433742 (not lt!345184))))

(assert (= (and d!284244 c!155375) b!954388))

(assert (= (and d!284244 (not c!155375)) b!954386))

(assert (= (and d!284244 c!155374) b!954392))

(assert (= (and d!284244 (not c!155374)) b!954393))

(assert (= (and b!954393 c!155376) b!954387))

(assert (= (and b!954393 (not c!155376)) b!954390))

(assert (= (and b!954390 (not res!433740)) b!954395))

(assert (= (and b!954395 res!433737) b!954391))

(assert (= (and b!954391 res!433738) b!954385))

(assert (= (and b!954385 res!433743) b!954384))

(assert (= (and b!954395 (not res!433744)) b!954397))

(assert (= (and b!954397 res!433742) b!954389))

(assert (= (and b!954389 (not res!433741)) b!954396))

(assert (= (and b!954396 (not res!433739)) b!954394))

(assert (= (or b!954392 b!954391 b!954389) bm!59920))

(declare-fun m!1165519 () Bool)

(assert (=> b!954388 m!1165519))

(declare-fun m!1165521 () Bool)

(assert (=> b!954384 m!1165521))

(assert (=> bm!59920 m!1165401))

(assert (=> b!954394 m!1165521))

(assert (=> b!954386 m!1165521))

(assert (=> b!954386 m!1165521))

(declare-fun m!1165523 () Bool)

(assert (=> b!954386 m!1165523))

(declare-fun m!1165525 () Bool)

(assert (=> b!954386 m!1165525))

(assert (=> b!954386 m!1165523))

(assert (=> b!954386 m!1165525))

(declare-fun m!1165527 () Bool)

(assert (=> b!954386 m!1165527))

(assert (=> b!954396 m!1165525))

(assert (=> b!954396 m!1165525))

(declare-fun m!1165529 () Bool)

(assert (=> b!954396 m!1165529))

(assert (=> d!284244 m!1165401))

(assert (=> d!284244 m!1165393))

(assert (=> b!954385 m!1165525))

(assert (=> b!954385 m!1165525))

(assert (=> b!954385 m!1165529))

(assert (=> b!954098 d!284244))

(declare-fun d!284246 () Bool)

(assert (=> d!284246 (= (matchR!1174 r!15766 s!10566) (matchRSpec!437 r!15766 s!10566))))

(declare-fun lt!345187 () Unit!14915)

(declare-fun choose!5972 (Regex!2636 List!9866) Unit!14915)

(assert (=> d!284246 (= lt!345187 (choose!5972 r!15766 s!10566))))

(assert (=> d!284246 (validRegex!1105 r!15766)))

(assert (=> d!284246 (= (mainMatchTheorem!437 r!15766 s!10566) lt!345187)))

(declare-fun bs!240335 () Bool)

(assert (= bs!240335 d!284246))

(assert (=> bs!240335 m!1165415))

(assert (=> bs!240335 m!1165413))

(declare-fun m!1165531 () Bool)

(assert (=> bs!240335 m!1165531))

(assert (=> bs!240335 m!1165393))

(assert (=> b!954098 d!284246))

(declare-fun b!954402 () Bool)

(declare-fun e!617382 () Bool)

(assert (=> b!954402 (= e!617382 (= (head!1747 (_1!6405 (get!3328 lt!345138))) (c!155319 (reg!2965 r!15766))))))

(declare-fun b!954403 () Bool)

(declare-fun res!433755 () Bool)

(assert (=> b!954403 (=> (not res!433755) (not e!617382))))

(assert (=> b!954403 (= res!433755 (isEmpty!6125 (tail!1309 (_1!6405 (get!3328 lt!345138)))))))

(declare-fun b!954404 () Bool)

(declare-fun e!617378 () Bool)

(assert (=> b!954404 (= e!617378 (matchR!1174 (derivativeStep!594 (reg!2965 r!15766) (head!1747 (_1!6405 (get!3328 lt!345138)))) (tail!1309 (_1!6405 (get!3328 lt!345138)))))))

(declare-fun d!284248 () Bool)

(declare-fun e!617379 () Bool)

(assert (=> d!284248 e!617379))

(declare-fun c!155377 () Bool)

(assert (=> d!284248 (= c!155377 (is-EmptyExpr!2636 (reg!2965 r!15766)))))

(declare-fun lt!345188 () Bool)

(assert (=> d!284248 (= lt!345188 e!617378)))

(declare-fun c!155378 () Bool)

(assert (=> d!284248 (= c!155378 (isEmpty!6125 (_1!6405 (get!3328 lt!345138))))))

(assert (=> d!284248 (validRegex!1105 (reg!2965 r!15766))))

(assert (=> d!284248 (= (matchR!1174 (reg!2965 r!15766) (_1!6405 (get!3328 lt!345138))) lt!345188)))

(declare-fun b!954405 () Bool)

(declare-fun e!617383 () Bool)

(assert (=> b!954405 (= e!617383 (not lt!345188))))

(declare-fun b!954406 () Bool)

(assert (=> b!954406 (= e!617378 (nullable!785 (reg!2965 r!15766)))))

(declare-fun b!954407 () Bool)

(declare-fun e!617384 () Bool)

(declare-fun e!617381 () Bool)

(assert (=> b!954407 (= e!617384 e!617381)))

(declare-fun res!433753 () Bool)

(assert (=> b!954407 (=> res!433753 e!617381)))

(declare-fun call!59928 () Bool)

(assert (=> b!954407 (= res!433753 call!59928)))

(declare-fun bm!59923 () Bool)

(assert (=> bm!59923 (= call!59928 (isEmpty!6125 (_1!6405 (get!3328 lt!345138))))))

(declare-fun b!954408 () Bool)

(declare-fun res!433752 () Bool)

(declare-fun e!617380 () Bool)

(assert (=> b!954408 (=> res!433752 e!617380)))

(assert (=> b!954408 (= res!433752 (not (is-ElementMatch!2636 (reg!2965 r!15766))))))

(assert (=> b!954408 (= e!617383 e!617380)))

(declare-fun b!954409 () Bool)

(declare-fun res!433750 () Bool)

(assert (=> b!954409 (=> (not res!433750) (not e!617382))))

(assert (=> b!954409 (= res!433750 (not call!59928))))

(declare-fun b!954410 () Bool)

(assert (=> b!954410 (= e!617379 (= lt!345188 call!59928))))

(declare-fun b!954411 () Bool)

(assert (=> b!954411 (= e!617379 e!617383)))

(declare-fun c!155379 () Bool)

(assert (=> b!954411 (= c!155379 (is-EmptyLang!2636 (reg!2965 r!15766)))))

(declare-fun b!954412 () Bool)

(assert (=> b!954412 (= e!617381 (not (= (head!1747 (_1!6405 (get!3328 lt!345138))) (c!155319 (reg!2965 r!15766)))))))

(declare-fun b!954413 () Bool)

(declare-fun res!433756 () Bool)

(assert (=> b!954413 (=> res!433756 e!617380)))

(assert (=> b!954413 (= res!433756 e!617382)))

(declare-fun res!433749 () Bool)

(assert (=> b!954413 (=> (not res!433749) (not e!617382))))

(assert (=> b!954413 (= res!433749 lt!345188)))

(declare-fun b!954414 () Bool)

(declare-fun res!433751 () Bool)

(assert (=> b!954414 (=> res!433751 e!617381)))

(assert (=> b!954414 (= res!433751 (not (isEmpty!6125 (tail!1309 (_1!6405 (get!3328 lt!345138))))))))

(declare-fun b!954415 () Bool)

(assert (=> b!954415 (= e!617380 e!617384)))

(declare-fun res!433754 () Bool)

(assert (=> b!954415 (=> (not res!433754) (not e!617384))))

(assert (=> b!954415 (= res!433754 (not lt!345188))))

(assert (= (and d!284248 c!155378) b!954406))

(assert (= (and d!284248 (not c!155378)) b!954404))

(assert (= (and d!284248 c!155377) b!954410))

(assert (= (and d!284248 (not c!155377)) b!954411))

(assert (= (and b!954411 c!155379) b!954405))

(assert (= (and b!954411 (not c!155379)) b!954408))

(assert (= (and b!954408 (not res!433752)) b!954413))

(assert (= (and b!954413 res!433749) b!954409))

(assert (= (and b!954409 res!433750) b!954403))

(assert (= (and b!954403 res!433755) b!954402))

(assert (= (and b!954413 (not res!433756)) b!954415))

(assert (= (and b!954415 res!433754) b!954407))

(assert (= (and b!954407 (not res!433753)) b!954414))

(assert (= (and b!954414 (not res!433751)) b!954412))

(assert (= (or b!954410 b!954409 b!954407) bm!59923))

(assert (=> b!954406 m!1165493))

(declare-fun m!1165533 () Bool)

(assert (=> b!954402 m!1165533))

(declare-fun m!1165535 () Bool)

(assert (=> bm!59923 m!1165535))

(assert (=> b!954412 m!1165533))

(assert (=> b!954404 m!1165533))

(assert (=> b!954404 m!1165533))

(declare-fun m!1165537 () Bool)

(assert (=> b!954404 m!1165537))

(declare-fun m!1165539 () Bool)

(assert (=> b!954404 m!1165539))

(assert (=> b!954404 m!1165537))

(assert (=> b!954404 m!1165539))

(declare-fun m!1165541 () Bool)

(assert (=> b!954404 m!1165541))

(assert (=> b!954414 m!1165539))

(assert (=> b!954414 m!1165539))

(declare-fun m!1165543 () Bool)

(assert (=> b!954414 m!1165543))

(assert (=> d!284248 m!1165535))

(assert (=> d!284248 m!1165455))

(assert (=> b!954403 m!1165539))

(assert (=> b!954403 m!1165539))

(assert (=> b!954403 m!1165543))

(assert (=> b!954097 d!284248))

(declare-fun d!284250 () Bool)

(assert (=> d!284250 (= (get!3328 lt!345138) (v!19637 lt!345138))))

(assert (=> b!954097 d!284250))

(declare-fun e!617387 () Bool)

(assert (=> b!954091 (= tp!293988 e!617387)))

(declare-fun b!954428 () Bool)

(declare-fun tp!294022 () Bool)

(assert (=> b!954428 (= e!617387 tp!294022)))

(declare-fun b!954427 () Bool)

(declare-fun tp!294021 () Bool)

(declare-fun tp!294020 () Bool)

(assert (=> b!954427 (= e!617387 (and tp!294021 tp!294020))))

(declare-fun b!954429 () Bool)

(declare-fun tp!294023 () Bool)

(declare-fun tp!294019 () Bool)

(assert (=> b!954429 (= e!617387 (and tp!294023 tp!294019))))

(declare-fun b!954426 () Bool)

(assert (=> b!954426 (= e!617387 tp_is_empty!4915)))

(assert (= (and b!954091 (is-ElementMatch!2636 (regOne!5784 r!15766))) b!954426))

(assert (= (and b!954091 (is-Concat!4469 (regOne!5784 r!15766))) b!954427))

(assert (= (and b!954091 (is-Star!2636 (regOne!5784 r!15766))) b!954428))

(assert (= (and b!954091 (is-Union!2636 (regOne!5784 r!15766))) b!954429))

(declare-fun e!617388 () Bool)

(assert (=> b!954091 (= tp!293990 e!617388)))

(declare-fun b!954432 () Bool)

(declare-fun tp!294027 () Bool)

(assert (=> b!954432 (= e!617388 tp!294027)))

(declare-fun b!954431 () Bool)

(declare-fun tp!294026 () Bool)

(declare-fun tp!294025 () Bool)

(assert (=> b!954431 (= e!617388 (and tp!294026 tp!294025))))

(declare-fun b!954433 () Bool)

(declare-fun tp!294028 () Bool)

(declare-fun tp!294024 () Bool)

(assert (=> b!954433 (= e!617388 (and tp!294028 tp!294024))))

(declare-fun b!954430 () Bool)

(assert (=> b!954430 (= e!617388 tp_is_empty!4915)))

(assert (= (and b!954091 (is-ElementMatch!2636 (regTwo!5784 r!15766))) b!954430))

(assert (= (and b!954091 (is-Concat!4469 (regTwo!5784 r!15766))) b!954431))

(assert (= (and b!954091 (is-Star!2636 (regTwo!5784 r!15766))) b!954432))

(assert (= (and b!954091 (is-Union!2636 (regTwo!5784 r!15766))) b!954433))

(declare-fun b!954438 () Bool)

(declare-fun e!617391 () Bool)

(declare-fun tp!294031 () Bool)

(assert (=> b!954438 (= e!617391 (and tp_is_empty!4915 tp!294031))))

(assert (=> b!954094 (= tp!293987 e!617391)))

(assert (= (and b!954094 (is-Cons!9850 (t!100912 s!10566))) b!954438))

(declare-fun e!617392 () Bool)

(assert (=> b!954095 (= tp!293986 e!617392)))

(declare-fun b!954441 () Bool)

(declare-fun tp!294035 () Bool)

(assert (=> b!954441 (= e!617392 tp!294035)))

(declare-fun b!954440 () Bool)

(declare-fun tp!294034 () Bool)

(declare-fun tp!294033 () Bool)

(assert (=> b!954440 (= e!617392 (and tp!294034 tp!294033))))

(declare-fun b!954442 () Bool)

(declare-fun tp!294036 () Bool)

(declare-fun tp!294032 () Bool)

(assert (=> b!954442 (= e!617392 (and tp!294036 tp!294032))))

(declare-fun b!954439 () Bool)

(assert (=> b!954439 (= e!617392 tp_is_empty!4915)))

(assert (= (and b!954095 (is-ElementMatch!2636 (regOne!5785 r!15766))) b!954439))

(assert (= (and b!954095 (is-Concat!4469 (regOne!5785 r!15766))) b!954440))

(assert (= (and b!954095 (is-Star!2636 (regOne!5785 r!15766))) b!954441))

(assert (= (and b!954095 (is-Union!2636 (regOne!5785 r!15766))) b!954442))

(declare-fun e!617393 () Bool)

(assert (=> b!954095 (= tp!293989 e!617393)))

(declare-fun b!954445 () Bool)

(declare-fun tp!294040 () Bool)

(assert (=> b!954445 (= e!617393 tp!294040)))

(declare-fun b!954444 () Bool)

(declare-fun tp!294039 () Bool)

(declare-fun tp!294038 () Bool)

(assert (=> b!954444 (= e!617393 (and tp!294039 tp!294038))))

(declare-fun b!954446 () Bool)

(declare-fun tp!294041 () Bool)

(declare-fun tp!294037 () Bool)

(assert (=> b!954446 (= e!617393 (and tp!294041 tp!294037))))

(declare-fun b!954443 () Bool)

(assert (=> b!954443 (= e!617393 tp_is_empty!4915)))

(assert (= (and b!954095 (is-ElementMatch!2636 (regTwo!5785 r!15766))) b!954443))

(assert (= (and b!954095 (is-Concat!4469 (regTwo!5785 r!15766))) b!954444))

(assert (= (and b!954095 (is-Star!2636 (regTwo!5785 r!15766))) b!954445))

(assert (= (and b!954095 (is-Union!2636 (regTwo!5785 r!15766))) b!954446))

(declare-fun e!617394 () Bool)

(assert (=> b!954093 (= tp!293985 e!617394)))

(declare-fun b!954449 () Bool)

(declare-fun tp!294045 () Bool)

(assert (=> b!954449 (= e!617394 tp!294045)))

(declare-fun b!954448 () Bool)

(declare-fun tp!294044 () Bool)

(declare-fun tp!294043 () Bool)

(assert (=> b!954448 (= e!617394 (and tp!294044 tp!294043))))

(declare-fun b!954450 () Bool)

(declare-fun tp!294046 () Bool)

(declare-fun tp!294042 () Bool)

(assert (=> b!954450 (= e!617394 (and tp!294046 tp!294042))))

(declare-fun b!954447 () Bool)

(assert (=> b!954447 (= e!617394 tp_is_empty!4915)))

(assert (= (and b!954093 (is-ElementMatch!2636 (reg!2965 r!15766))) b!954447))

(assert (= (and b!954093 (is-Concat!4469 (reg!2965 r!15766))) b!954448))

(assert (= (and b!954093 (is-Star!2636 (reg!2965 r!15766))) b!954449))

(assert (= (and b!954093 (is-Union!2636 (reg!2965 r!15766))) b!954450))

(push 1)

(assert (not b!954388))

(assert (not b!954394))

(assert (not b!954448))

(assert (not b!954190))

(assert (not b!954431))

(assert (not b!954188))

(assert (not b!954396))

(assert (not b!954438))

(assert (not bm!59910))

(assert (not d!284232))

(assert (not d!284222))

(assert (not b!954404))

(assert (not b!954433))

(assert (not b!954412))

(assert (not b!954440))

(assert (not b!954450))

(assert (not b!954385))

(assert (not d!284228))

(assert (not d!284248))

(assert tp_is_empty!4915)

(assert (not b!954403))

(assert (not bm!59917))

(assert (not b!954429))

(assert (not b!954442))

(assert (not b!954189))

(assert (not b!954414))

(assert (not d!284234))

(assert (not b!954323))

(assert (not d!284224))

(assert (not b!954432))

(assert (not b!954187))

(assert (not d!284218))

(assert (not d!284246))

(assert (not b!954186))

(assert (not bm!59916))

(assert (not b!954185))

(assert (not b!954386))

(assert (not b!954406))

(assert (not b!954441))

(assert (not b!954444))

(assert (not d!284244))

(assert (not b!954402))

(assert (not bm!59920))

(assert (not b!954449))

(assert (not b!954384))

(assert (not b!954445))

(assert (not b!954265))

(assert (not b!954427))

(assert (not b!954446))

(assert (not bm!59923))

(assert (not b!954327))

(assert (not b!954428))

(assert (not bm!59909))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

