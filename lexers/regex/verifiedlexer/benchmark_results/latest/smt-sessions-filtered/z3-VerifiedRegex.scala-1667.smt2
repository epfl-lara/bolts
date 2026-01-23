; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84242 () Bool)

(assert start!84242)

(declare-fun b!944274 () Bool)

(assert (=> b!944274 true))

(assert (=> b!944274 true))

(assert (=> b!944274 true))

(declare-fun lambda!32040 () Int)

(declare-fun lambda!32039 () Int)

(assert (=> b!944274 (not (= lambda!32040 lambda!32039))))

(assert (=> b!944274 true))

(assert (=> b!944274 true))

(assert (=> b!944274 true))

(declare-fun bs!239305 () Bool)

(declare-fun b!944278 () Bool)

(assert (= bs!239305 (and b!944278 b!944274)))

(declare-datatypes ((C!5756 0))(
  ( (C!5757 (val!3126 Int)) )
))
(declare-datatypes ((Regex!2593 0))(
  ( (ElementMatch!2593 (c!153698 C!5756)) (Concat!4426 (regOne!5698 Regex!2593) (regTwo!5698 Regex!2593)) (EmptyExpr!2593) (Star!2593 (reg!2922 Regex!2593)) (EmptyLang!2593) (Union!2593 (regOne!5699 Regex!2593) (regTwo!5699 Regex!2593)) )
))
(declare-fun lt!343029 () Regex!2593)

(declare-fun r!15766 () Regex!2593)

(declare-fun lt!343024 () Regex!2593)

(declare-fun lt!343028 () Regex!2593)

(declare-fun lambda!32041 () Int)

(assert (=> bs!239305 (= (and (= lt!343029 (reg!2922 r!15766)) (= lt!343024 lt!343028)) (= lambda!32041 lambda!32039))))

(assert (=> bs!239305 (not (= lambda!32041 lambda!32040))))

(assert (=> b!944278 true))

(assert (=> b!944278 true))

(assert (=> b!944278 true))

(declare-fun lambda!32042 () Int)

(assert (=> bs!239305 (not (= lambda!32042 lambda!32039))))

(assert (=> bs!239305 (= (and (= lt!343029 (reg!2922 r!15766)) (= lt!343024 lt!343028)) (= lambda!32042 lambda!32040))))

(assert (=> b!944278 (not (= lambda!32042 lambda!32041))))

(assert (=> b!944278 true))

(assert (=> b!944278 true))

(assert (=> b!944278 true))

(declare-fun e!612163 () Bool)

(declare-fun e!612162 () Bool)

(assert (=> b!944274 (= e!612163 e!612162)))

(declare-fun res!429019 () Bool)

(assert (=> b!944274 (=> res!429019 e!612162)))

(declare-datatypes ((List!9823 0))(
  ( (Nil!9807) (Cons!9807 (h!15208 C!5756) (t!100869 List!9823)) )
))
(declare-fun s!10566 () List!9823)

(declare-fun matchR!1131 (Regex!2593 List!9823) Bool)

(assert (=> b!944274 (= res!429019 (not (matchR!1131 lt!343024 s!10566)))))

(assert (=> b!944274 (= lt!343024 (Star!2593 lt!343029))))

(declare-fun removeUselessConcat!262 (Regex!2593) Regex!2593)

(assert (=> b!944274 (= lt!343029 (removeUselessConcat!262 (reg!2922 r!15766)))))

(declare-fun Exists!344 (Int) Bool)

(assert (=> b!944274 (= (Exists!344 lambda!32039) (Exists!344 lambda!32040))))

(declare-datatypes ((Unit!14805 0))(
  ( (Unit!14806) )
))
(declare-fun lt!343035 () Unit!14805)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!88 (Regex!2593 List!9823) Unit!14805)

(assert (=> b!944274 (= lt!343035 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!88 (reg!2922 r!15766) s!10566))))

(declare-datatypes ((tuple2!11084 0))(
  ( (tuple2!11085 (_1!6368 List!9823) (_2!6368 List!9823)) )
))
(declare-datatypes ((Option!2184 0))(
  ( (None!2183) (Some!2183 (v!19600 tuple2!11084)) )
))
(declare-fun isDefined!1826 (Option!2184) Bool)

(declare-fun findConcatSeparation!290 (Regex!2593 Regex!2593 List!9823 List!9823 List!9823) Option!2184)

(assert (=> b!944274 (= (isDefined!1826 (findConcatSeparation!290 (reg!2922 r!15766) lt!343028 Nil!9807 s!10566 s!10566)) (Exists!344 lambda!32039))))

(declare-fun lt!343032 () Unit!14805)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!290 (Regex!2593 Regex!2593 List!9823) Unit!14805)

(assert (=> b!944274 (= lt!343032 (lemmaFindConcatSeparationEquivalentToExists!290 (reg!2922 r!15766) lt!343028 s!10566))))

(assert (=> b!944274 (= lt!343028 (Star!2593 (reg!2922 r!15766)))))

(declare-fun b!944275 () Bool)

(declare-fun e!612161 () Bool)

(declare-fun tp_is_empty!4829 () Bool)

(declare-fun tp!291724 () Bool)

(assert (=> b!944275 (= e!612161 (and tp_is_empty!4829 tp!291724))))

(declare-fun b!944276 () Bool)

(declare-fun e!612165 () Bool)

(assert (=> b!944276 (= e!612165 (not e!612163))))

(declare-fun res!429021 () Bool)

(assert (=> b!944276 (=> res!429021 e!612163)))

(declare-fun lt!343023 () Bool)

(get-info :version)

(assert (=> b!944276 (= res!429021 (or lt!343023 (and ((_ is Concat!4426) r!15766) ((_ is EmptyExpr!2593) (regOne!5698 r!15766))) (and ((_ is Concat!4426) r!15766) ((_ is EmptyExpr!2593) (regTwo!5698 r!15766))) ((_ is Concat!4426) r!15766) ((_ is Union!2593) r!15766) (not ((_ is Star!2593) r!15766))))))

(declare-fun matchRSpec!394 (Regex!2593 List!9823) Bool)

(assert (=> b!944276 (= lt!343023 (matchRSpec!394 r!15766 s!10566))))

(assert (=> b!944276 (= lt!343023 (matchR!1131 r!15766 s!10566))))

(declare-fun lt!343027 () Unit!14805)

(declare-fun mainMatchTheorem!394 (Regex!2593 List!9823) Unit!14805)

(assert (=> b!944276 (= lt!343027 (mainMatchTheorem!394 r!15766 s!10566))))

(declare-fun res!429018 () Bool)

(assert (=> start!84242 (=> (not res!429018) (not e!612165))))

(declare-fun validRegex!1062 (Regex!2593) Bool)

(assert (=> start!84242 (= res!429018 (validRegex!1062 r!15766))))

(assert (=> start!84242 e!612165))

(declare-fun e!612160 () Bool)

(assert (=> start!84242 e!612160))

(assert (=> start!84242 e!612161))

(declare-fun b!944277 () Bool)

(declare-fun res!429017 () Bool)

(declare-fun e!612164 () Bool)

(assert (=> b!944277 (=> res!429017 e!612164)))

(declare-fun lt!343034 () tuple2!11084)

(assert (=> b!944277 (= res!429017 (not (matchR!1131 lt!343024 (_2!6368 lt!343034))))))

(declare-fun e!612159 () Bool)

(assert (=> b!944278 (= e!612162 e!612159)))

(declare-fun res!429022 () Bool)

(assert (=> b!944278 (=> res!429022 e!612159)))

(declare-fun isEmpty!6064 (List!9823) Bool)

(assert (=> b!944278 (= res!429022 (isEmpty!6064 s!10566))))

(assert (=> b!944278 (= (Exists!344 lambda!32041) (Exists!344 lambda!32042))))

(declare-fun lt!343026 () Unit!14805)

(assert (=> b!944278 (= lt!343026 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!88 lt!343029 s!10566))))

(declare-fun lt!343022 () Bool)

(assert (=> b!944278 (= lt!343022 (Exists!344 lambda!32041))))

(declare-fun lt!343031 () Option!2184)

(assert (=> b!944278 (= lt!343022 (isDefined!1826 lt!343031))))

(assert (=> b!944278 (= lt!343031 (findConcatSeparation!290 lt!343029 lt!343024 Nil!9807 s!10566 s!10566))))

(declare-fun lt!343033 () Unit!14805)

(assert (=> b!944278 (= lt!343033 (lemmaFindConcatSeparationEquivalentToExists!290 lt!343029 lt!343024 s!10566))))

(assert (=> b!944278 (matchRSpec!394 lt!343024 s!10566)))

(declare-fun lt!343025 () Unit!14805)

(assert (=> b!944278 (= lt!343025 (mainMatchTheorem!394 lt!343024 s!10566))))

(declare-fun b!944279 () Bool)

(assert (=> b!944279 (= e!612164 (validRegex!1062 (reg!2922 r!15766)))))

(assert (=> b!944279 (matchR!1131 (reg!2922 r!15766) (_1!6368 lt!343034))))

(declare-fun lt!343030 () Unit!14805)

(declare-fun lemmaRemoveUselessConcatSound!128 (Regex!2593 List!9823) Unit!14805)

(assert (=> b!944279 (= lt!343030 (lemmaRemoveUselessConcatSound!128 (reg!2922 r!15766) (_1!6368 lt!343034)))))

(declare-fun b!944280 () Bool)

(declare-fun tp!291722 () Bool)

(declare-fun tp!291723 () Bool)

(assert (=> b!944280 (= e!612160 (and tp!291722 tp!291723))))

(declare-fun b!944281 () Bool)

(assert (=> b!944281 (= e!612159 e!612164)))

(declare-fun res!429016 () Bool)

(assert (=> b!944281 (=> res!429016 e!612164)))

(assert (=> b!944281 (= res!429016 (not (matchR!1131 lt!343029 (_1!6368 lt!343034))))))

(declare-fun get!3271 (Option!2184) tuple2!11084)

(assert (=> b!944281 (= lt!343034 (get!3271 lt!343031))))

(declare-fun b!944282 () Bool)

(assert (=> b!944282 (= e!612160 tp_is_empty!4829)))

(declare-fun b!944283 () Bool)

(declare-fun tp!291719 () Bool)

(declare-fun tp!291720 () Bool)

(assert (=> b!944283 (= e!612160 (and tp!291719 tp!291720))))

(declare-fun b!944284 () Bool)

(declare-fun tp!291721 () Bool)

(assert (=> b!944284 (= e!612160 tp!291721)))

(declare-fun b!944285 () Bool)

(declare-fun res!429020 () Bool)

(assert (=> b!944285 (=> res!429020 e!612159)))

(assert (=> b!944285 (= res!429020 (not lt!343022))))

(assert (= (and start!84242 res!429018) b!944276))

(assert (= (and b!944276 (not res!429021)) b!944274))

(assert (= (and b!944274 (not res!429019)) b!944278))

(assert (= (and b!944278 (not res!429022)) b!944285))

(assert (= (and b!944285 (not res!429020)) b!944281))

(assert (= (and b!944281 (not res!429016)) b!944277))

(assert (= (and b!944277 (not res!429017)) b!944279))

(assert (= (and start!84242 ((_ is ElementMatch!2593) r!15766)) b!944282))

(assert (= (and start!84242 ((_ is Concat!4426) r!15766)) b!944283))

(assert (= (and start!84242 ((_ is Star!2593) r!15766)) b!944284))

(assert (= (and start!84242 ((_ is Union!2593) r!15766)) b!944280))

(assert (= (and start!84242 ((_ is Cons!9807) s!10566)) b!944275))

(declare-fun m!1159947 () Bool)

(assert (=> b!944274 m!1159947))

(declare-fun m!1159949 () Bool)

(assert (=> b!944274 m!1159949))

(declare-fun m!1159951 () Bool)

(assert (=> b!944274 m!1159951))

(declare-fun m!1159953 () Bool)

(assert (=> b!944274 m!1159953))

(declare-fun m!1159955 () Bool)

(assert (=> b!944274 m!1159955))

(declare-fun m!1159957 () Bool)

(assert (=> b!944274 m!1159957))

(assert (=> b!944274 m!1159955))

(declare-fun m!1159959 () Bool)

(assert (=> b!944274 m!1159959))

(declare-fun m!1159961 () Bool)

(assert (=> b!944274 m!1159961))

(assert (=> b!944274 m!1159951))

(declare-fun m!1159963 () Bool)

(assert (=> b!944277 m!1159963))

(declare-fun m!1159965 () Bool)

(assert (=> b!944276 m!1159965))

(declare-fun m!1159967 () Bool)

(assert (=> b!944276 m!1159967))

(declare-fun m!1159969 () Bool)

(assert (=> b!944276 m!1159969))

(declare-fun m!1159971 () Bool)

(assert (=> b!944279 m!1159971))

(declare-fun m!1159973 () Bool)

(assert (=> b!944279 m!1159973))

(declare-fun m!1159975 () Bool)

(assert (=> b!944279 m!1159975))

(declare-fun m!1159977 () Bool)

(assert (=> start!84242 m!1159977))

(declare-fun m!1159979 () Bool)

(assert (=> b!944281 m!1159979))

(declare-fun m!1159981 () Bool)

(assert (=> b!944281 m!1159981))

(declare-fun m!1159983 () Bool)

(assert (=> b!944278 m!1159983))

(declare-fun m!1159985 () Bool)

(assert (=> b!944278 m!1159985))

(declare-fun m!1159987 () Bool)

(assert (=> b!944278 m!1159987))

(declare-fun m!1159989 () Bool)

(assert (=> b!944278 m!1159989))

(declare-fun m!1159991 () Bool)

(assert (=> b!944278 m!1159991))

(assert (=> b!944278 m!1159987))

(declare-fun m!1159993 () Bool)

(assert (=> b!944278 m!1159993))

(declare-fun m!1159995 () Bool)

(assert (=> b!944278 m!1159995))

(declare-fun m!1159997 () Bool)

(assert (=> b!944278 m!1159997))

(declare-fun m!1159999 () Bool)

(assert (=> b!944278 m!1159999))

(check-sat (not b!944275) (not b!944283) (not b!944276) (not b!944277) tp_is_empty!4829 (not b!944274) (not b!944279) (not start!84242) (not b!944281) (not b!944280) (not b!944278) (not b!944284))
(check-sat)
(get-model)

(declare-fun bm!58983 () Bool)

(declare-fun call!58988 () Bool)

(declare-fun c!153703 () Bool)

(assert (=> bm!58983 (= call!58988 (validRegex!1062 (ite c!153703 (regOne!5699 (reg!2922 r!15766)) (regOne!5698 (reg!2922 r!15766)))))))

(declare-fun b!944308 () Bool)

(declare-fun e!612182 () Bool)

(declare-fun e!612185 () Bool)

(assert (=> b!944308 (= e!612182 e!612185)))

(declare-fun res!429036 () Bool)

(declare-fun nullable!760 (Regex!2593) Bool)

(assert (=> b!944308 (= res!429036 (not (nullable!760 (reg!2922 (reg!2922 r!15766)))))))

(assert (=> b!944308 (=> (not res!429036) (not e!612185))))

(declare-fun b!944309 () Bool)

(declare-fun call!58989 () Bool)

(assert (=> b!944309 (= e!612185 call!58989)))

(declare-fun b!944310 () Bool)

(declare-fun e!612180 () Bool)

(declare-fun call!58990 () Bool)

(assert (=> b!944310 (= e!612180 call!58990)))

(declare-fun b!944311 () Bool)

(declare-fun e!612186 () Bool)

(assert (=> b!944311 (= e!612186 call!58990)))

(declare-fun b!944312 () Bool)

(declare-fun e!612183 () Bool)

(assert (=> b!944312 (= e!612182 e!612183)))

(assert (=> b!944312 (= c!153703 ((_ is Union!2593) (reg!2922 r!15766)))))

(declare-fun b!944313 () Bool)

(declare-fun e!612181 () Bool)

(assert (=> b!944313 (= e!612181 e!612180)))

(declare-fun res!429035 () Bool)

(assert (=> b!944313 (=> (not res!429035) (not e!612180))))

(assert (=> b!944313 (= res!429035 call!58988)))

(declare-fun d!282948 () Bool)

(declare-fun res!429033 () Bool)

(declare-fun e!612184 () Bool)

(assert (=> d!282948 (=> res!429033 e!612184)))

(assert (=> d!282948 (= res!429033 ((_ is ElementMatch!2593) (reg!2922 r!15766)))))

(assert (=> d!282948 (= (validRegex!1062 (reg!2922 r!15766)) e!612184)))

(declare-fun c!153704 () Bool)

(declare-fun bm!58984 () Bool)

(assert (=> bm!58984 (= call!58989 (validRegex!1062 (ite c!153704 (reg!2922 (reg!2922 r!15766)) (ite c!153703 (regTwo!5699 (reg!2922 r!15766)) (regTwo!5698 (reg!2922 r!15766))))))))

(declare-fun b!944314 () Bool)

(assert (=> b!944314 (= e!612184 e!612182)))

(assert (=> b!944314 (= c!153704 ((_ is Star!2593) (reg!2922 r!15766)))))

(declare-fun b!944315 () Bool)

(declare-fun res!429034 () Bool)

(assert (=> b!944315 (=> res!429034 e!612181)))

(assert (=> b!944315 (= res!429034 (not ((_ is Concat!4426) (reg!2922 r!15766))))))

(assert (=> b!944315 (= e!612183 e!612181)))

(declare-fun bm!58985 () Bool)

(assert (=> bm!58985 (= call!58990 call!58989)))

(declare-fun b!944316 () Bool)

(declare-fun res!429037 () Bool)

(assert (=> b!944316 (=> (not res!429037) (not e!612186))))

(assert (=> b!944316 (= res!429037 call!58988)))

(assert (=> b!944316 (= e!612183 e!612186)))

(assert (= (and d!282948 (not res!429033)) b!944314))

(assert (= (and b!944314 c!153704) b!944308))

(assert (= (and b!944314 (not c!153704)) b!944312))

(assert (= (and b!944308 res!429036) b!944309))

(assert (= (and b!944312 c!153703) b!944316))

(assert (= (and b!944312 (not c!153703)) b!944315))

(assert (= (and b!944316 res!429037) b!944311))

(assert (= (and b!944315 (not res!429034)) b!944313))

(assert (= (and b!944313 res!429035) b!944310))

(assert (= (or b!944311 b!944310) bm!58985))

(assert (= (or b!944316 b!944313) bm!58983))

(assert (= (or b!944309 bm!58985) bm!58984))

(declare-fun m!1160001 () Bool)

(assert (=> bm!58983 m!1160001))

(declare-fun m!1160003 () Bool)

(assert (=> b!944308 m!1160003))

(declare-fun m!1160005 () Bool)

(assert (=> bm!58984 m!1160005))

(assert (=> b!944279 d!282948))

(declare-fun b!944355 () Bool)

(declare-fun e!612209 () Bool)

(declare-fun lt!343041 () Bool)

(declare-fun call!58993 () Bool)

(assert (=> b!944355 (= e!612209 (= lt!343041 call!58993))))

(declare-fun bm!58988 () Bool)

(assert (=> bm!58988 (= call!58993 (isEmpty!6064 (_1!6368 lt!343034)))))

(declare-fun b!944356 () Bool)

(declare-fun e!612207 () Bool)

(declare-fun head!1722 (List!9823) C!5756)

(assert (=> b!944356 (= e!612207 (= (head!1722 (_1!6368 lt!343034)) (c!153698 (reg!2922 r!15766))))))

(declare-fun b!944357 () Bool)

(declare-fun res!429071 () Bool)

(assert (=> b!944357 (=> (not res!429071) (not e!612207))))

(declare-fun tail!1284 (List!9823) List!9823)

(assert (=> b!944357 (= res!429071 (isEmpty!6064 (tail!1284 (_1!6368 lt!343034))))))

(declare-fun b!944358 () Bool)

(declare-fun e!612205 () Bool)

(declare-fun e!612210 () Bool)

(assert (=> b!944358 (= e!612205 e!612210)))

(declare-fun res!429065 () Bool)

(assert (=> b!944358 (=> (not res!429065) (not e!612210))))

(assert (=> b!944358 (= res!429065 (not lt!343041))))

(declare-fun b!944359 () Bool)

(declare-fun e!612211 () Bool)

(assert (=> b!944359 (= e!612210 e!612211)))

(declare-fun res!429069 () Bool)

(assert (=> b!944359 (=> res!429069 e!612211)))

(assert (=> b!944359 (= res!429069 call!58993)))

(declare-fun b!944360 () Bool)

(declare-fun res!429067 () Bool)

(assert (=> b!944360 (=> res!429067 e!612205)))

(assert (=> b!944360 (= res!429067 e!612207)))

(declare-fun res!429064 () Bool)

(assert (=> b!944360 (=> (not res!429064) (not e!612207))))

(assert (=> b!944360 (= res!429064 lt!343041)))

(declare-fun b!944361 () Bool)

(declare-fun res!429070 () Bool)

(assert (=> b!944361 (=> res!429070 e!612211)))

(assert (=> b!944361 (= res!429070 (not (isEmpty!6064 (tail!1284 (_1!6368 lt!343034)))))))

(declare-fun d!282950 () Bool)

(assert (=> d!282950 e!612209))

(declare-fun c!153711 () Bool)

(assert (=> d!282950 (= c!153711 ((_ is EmptyExpr!2593) (reg!2922 r!15766)))))

(declare-fun e!612206 () Bool)

(assert (=> d!282950 (= lt!343041 e!612206)))

(declare-fun c!153712 () Bool)

(assert (=> d!282950 (= c!153712 (isEmpty!6064 (_1!6368 lt!343034)))))

(assert (=> d!282950 (validRegex!1062 (reg!2922 r!15766))))

(assert (=> d!282950 (= (matchR!1131 (reg!2922 r!15766) (_1!6368 lt!343034)) lt!343041)))

(declare-fun b!944362 () Bool)

(declare-fun derivativeStep!569 (Regex!2593 C!5756) Regex!2593)

(assert (=> b!944362 (= e!612206 (matchR!1131 (derivativeStep!569 (reg!2922 r!15766) (head!1722 (_1!6368 lt!343034))) (tail!1284 (_1!6368 lt!343034))))))

(declare-fun b!944363 () Bool)

(declare-fun res!429066 () Bool)

(assert (=> b!944363 (=> (not res!429066) (not e!612207))))

(assert (=> b!944363 (= res!429066 (not call!58993))))

(declare-fun b!944364 () Bool)

(declare-fun e!612208 () Bool)

(assert (=> b!944364 (= e!612208 (not lt!343041))))

(declare-fun b!944365 () Bool)

(assert (=> b!944365 (= e!612211 (not (= (head!1722 (_1!6368 lt!343034)) (c!153698 (reg!2922 r!15766)))))))

(declare-fun b!944366 () Bool)

(assert (=> b!944366 (= e!612209 e!612208)))

(declare-fun c!153713 () Bool)

(assert (=> b!944366 (= c!153713 ((_ is EmptyLang!2593) (reg!2922 r!15766)))))

(declare-fun b!944367 () Bool)

(declare-fun res!429068 () Bool)

(assert (=> b!944367 (=> res!429068 e!612205)))

(assert (=> b!944367 (= res!429068 (not ((_ is ElementMatch!2593) (reg!2922 r!15766))))))

(assert (=> b!944367 (= e!612208 e!612205)))

(declare-fun b!944368 () Bool)

(assert (=> b!944368 (= e!612206 (nullable!760 (reg!2922 r!15766)))))

(assert (= (and d!282950 c!153712) b!944368))

(assert (= (and d!282950 (not c!153712)) b!944362))

(assert (= (and d!282950 c!153711) b!944355))

(assert (= (and d!282950 (not c!153711)) b!944366))

(assert (= (and b!944366 c!153713) b!944364))

(assert (= (and b!944366 (not c!153713)) b!944367))

(assert (= (and b!944367 (not res!429068)) b!944360))

(assert (= (and b!944360 res!429064) b!944363))

(assert (= (and b!944363 res!429066) b!944357))

(assert (= (and b!944357 res!429071) b!944356))

(assert (= (and b!944360 (not res!429067)) b!944358))

(assert (= (and b!944358 res!429065) b!944359))

(assert (= (and b!944359 (not res!429069)) b!944361))

(assert (= (and b!944361 (not res!429070)) b!944365))

(assert (= (or b!944355 b!944359 b!944363) bm!58988))

(declare-fun m!1160015 () Bool)

(assert (=> b!944368 m!1160015))

(declare-fun m!1160019 () Bool)

(assert (=> b!944356 m!1160019))

(declare-fun m!1160021 () Bool)

(assert (=> d!282950 m!1160021))

(assert (=> d!282950 m!1159971))

(assert (=> bm!58988 m!1160021))

(assert (=> b!944362 m!1160019))

(assert (=> b!944362 m!1160019))

(declare-fun m!1160023 () Bool)

(assert (=> b!944362 m!1160023))

(declare-fun m!1160025 () Bool)

(assert (=> b!944362 m!1160025))

(assert (=> b!944362 m!1160023))

(assert (=> b!944362 m!1160025))

(declare-fun m!1160027 () Bool)

(assert (=> b!944362 m!1160027))

(assert (=> b!944357 m!1160025))

(assert (=> b!944357 m!1160025))

(declare-fun m!1160029 () Bool)

(assert (=> b!944357 m!1160029))

(assert (=> b!944361 m!1160025))

(assert (=> b!944361 m!1160025))

(assert (=> b!944361 m!1160029))

(assert (=> b!944365 m!1160019))

(assert (=> b!944279 d!282950))

(declare-fun d!282960 () Bool)

(assert (=> d!282960 (= (matchR!1131 (reg!2922 r!15766) (_1!6368 lt!343034)) (matchR!1131 (removeUselessConcat!262 (reg!2922 r!15766)) (_1!6368 lt!343034)))))

(declare-fun lt!343044 () Unit!14805)

(declare-fun choose!5865 (Regex!2593 List!9823) Unit!14805)

(assert (=> d!282960 (= lt!343044 (choose!5865 (reg!2922 r!15766) (_1!6368 lt!343034)))))

(assert (=> d!282960 (validRegex!1062 (reg!2922 r!15766))))

(assert (=> d!282960 (= (lemmaRemoveUselessConcatSound!128 (reg!2922 r!15766) (_1!6368 lt!343034)) lt!343044)))

(declare-fun bs!239310 () Bool)

(assert (= bs!239310 d!282960))

(assert (=> bs!239310 m!1159947))

(assert (=> bs!239310 m!1159973))

(assert (=> bs!239310 m!1159947))

(declare-fun m!1160031 () Bool)

(assert (=> bs!239310 m!1160031))

(declare-fun m!1160033 () Bool)

(assert (=> bs!239310 m!1160033))

(assert (=> bs!239310 m!1159971))

(assert (=> b!944279 d!282960))

(declare-fun bs!239314 () Bool)

(declare-fun d!282962 () Bool)

(assert (= bs!239314 (and d!282962 b!944274)))

(declare-fun lambda!32056 () Int)

(assert (=> bs!239314 (= lambda!32056 lambda!32039)))

(assert (=> bs!239314 (not (= lambda!32056 lambda!32040))))

(declare-fun bs!239315 () Bool)

(assert (= bs!239315 (and d!282962 b!944278)))

(assert (=> bs!239315 (= (and (= (reg!2922 r!15766) lt!343029) (= lt!343028 lt!343024)) (= lambda!32056 lambda!32041))))

(assert (=> bs!239315 (not (= lambda!32056 lambda!32042))))

(assert (=> d!282962 true))

(assert (=> d!282962 true))

(assert (=> d!282962 true))

(assert (=> d!282962 (= (isDefined!1826 (findConcatSeparation!290 (reg!2922 r!15766) lt!343028 Nil!9807 s!10566 s!10566)) (Exists!344 lambda!32056))))

(declare-fun lt!343047 () Unit!14805)

(declare-fun choose!5866 (Regex!2593 Regex!2593 List!9823) Unit!14805)

(assert (=> d!282962 (= lt!343047 (choose!5866 (reg!2922 r!15766) lt!343028 s!10566))))

(assert (=> d!282962 (validRegex!1062 (reg!2922 r!15766))))

(assert (=> d!282962 (= (lemmaFindConcatSeparationEquivalentToExists!290 (reg!2922 r!15766) lt!343028 s!10566) lt!343047)))

(declare-fun bs!239320 () Bool)

(assert (= bs!239320 d!282962))

(assert (=> bs!239320 m!1159955))

(declare-fun m!1160035 () Bool)

(assert (=> bs!239320 m!1160035))

(assert (=> bs!239320 m!1159971))

(declare-fun m!1160037 () Bool)

(assert (=> bs!239320 m!1160037))

(assert (=> bs!239320 m!1159955))

(assert (=> bs!239320 m!1159957))

(assert (=> b!944274 d!282962))

(declare-fun b!944438 () Bool)

(declare-fun lt!343062 () Unit!14805)

(declare-fun lt!343061 () Unit!14805)

(assert (=> b!944438 (= lt!343062 lt!343061)))

(declare-fun ++!2613 (List!9823 List!9823) List!9823)

(assert (=> b!944438 (= (++!2613 (++!2613 Nil!9807 (Cons!9807 (h!15208 s!10566) Nil!9807)) (t!100869 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!226 (List!9823 C!5756 List!9823 List!9823) Unit!14805)

(assert (=> b!944438 (= lt!343061 (lemmaMoveElementToOtherListKeepsConcatEq!226 Nil!9807 (h!15208 s!10566) (t!100869 s!10566) s!10566))))

(declare-fun e!612251 () Option!2184)

(assert (=> b!944438 (= e!612251 (findConcatSeparation!290 (reg!2922 r!15766) lt!343028 (++!2613 Nil!9807 (Cons!9807 (h!15208 s!10566) Nil!9807)) (t!100869 s!10566) s!10566))))

(declare-fun b!944439 () Bool)

(assert (=> b!944439 (= e!612251 None!2183)))

(declare-fun b!944440 () Bool)

(declare-fun e!612255 () Option!2184)

(assert (=> b!944440 (= e!612255 e!612251)))

(declare-fun c!153730 () Bool)

(assert (=> b!944440 (= c!153730 ((_ is Nil!9807) s!10566))))

(declare-fun b!944441 () Bool)

(declare-fun e!612253 () Bool)

(declare-fun lt!343060 () Option!2184)

(assert (=> b!944441 (= e!612253 (not (isDefined!1826 lt!343060)))))

(declare-fun b!944442 () Bool)

(assert (=> b!944442 (= e!612255 (Some!2183 (tuple2!11085 Nil!9807 s!10566)))))

(declare-fun d!282964 () Bool)

(assert (=> d!282964 e!612253))

(declare-fun res!429109 () Bool)

(assert (=> d!282964 (=> res!429109 e!612253)))

(declare-fun e!612252 () Bool)

(assert (=> d!282964 (= res!429109 e!612252)))

(declare-fun res!429111 () Bool)

(assert (=> d!282964 (=> (not res!429111) (not e!612252))))

(assert (=> d!282964 (= res!429111 (isDefined!1826 lt!343060))))

(assert (=> d!282964 (= lt!343060 e!612255)))

(declare-fun c!153731 () Bool)

(declare-fun e!612254 () Bool)

(assert (=> d!282964 (= c!153731 e!612254)))

(declare-fun res!429112 () Bool)

(assert (=> d!282964 (=> (not res!429112) (not e!612254))))

(assert (=> d!282964 (= res!429112 (matchR!1131 (reg!2922 r!15766) Nil!9807))))

(assert (=> d!282964 (validRegex!1062 (reg!2922 r!15766))))

(assert (=> d!282964 (= (findConcatSeparation!290 (reg!2922 r!15766) lt!343028 Nil!9807 s!10566 s!10566) lt!343060)))

(declare-fun b!944443 () Bool)

(assert (=> b!944443 (= e!612254 (matchR!1131 lt!343028 s!10566))))

(declare-fun b!944444 () Bool)

(assert (=> b!944444 (= e!612252 (= (++!2613 (_1!6368 (get!3271 lt!343060)) (_2!6368 (get!3271 lt!343060))) s!10566))))

(declare-fun b!944445 () Bool)

(declare-fun res!429110 () Bool)

(assert (=> b!944445 (=> (not res!429110) (not e!612252))))

(assert (=> b!944445 (= res!429110 (matchR!1131 lt!343028 (_2!6368 (get!3271 lt!343060))))))

(declare-fun b!944446 () Bool)

(declare-fun res!429113 () Bool)

(assert (=> b!944446 (=> (not res!429113) (not e!612252))))

(assert (=> b!944446 (= res!429113 (matchR!1131 (reg!2922 r!15766) (_1!6368 (get!3271 lt!343060))))))

(assert (= (and d!282964 res!429112) b!944443))

(assert (= (and d!282964 c!153731) b!944442))

(assert (= (and d!282964 (not c!153731)) b!944440))

(assert (= (and b!944440 c!153730) b!944439))

(assert (= (and b!944440 (not c!153730)) b!944438))

(assert (= (and d!282964 res!429111) b!944446))

(assert (= (and b!944446 res!429113) b!944445))

(assert (= (and b!944445 res!429110) b!944444))

(assert (= (and d!282964 (not res!429109)) b!944441))

(declare-fun m!1160057 () Bool)

(assert (=> b!944446 m!1160057))

(declare-fun m!1160059 () Bool)

(assert (=> b!944446 m!1160059))

(declare-fun m!1160061 () Bool)

(assert (=> b!944443 m!1160061))

(assert (=> b!944445 m!1160057))

(declare-fun m!1160063 () Bool)

(assert (=> b!944445 m!1160063))

(declare-fun m!1160065 () Bool)

(assert (=> d!282964 m!1160065))

(declare-fun m!1160067 () Bool)

(assert (=> d!282964 m!1160067))

(assert (=> d!282964 m!1159971))

(assert (=> b!944444 m!1160057))

(declare-fun m!1160069 () Bool)

(assert (=> b!944444 m!1160069))

(declare-fun m!1160071 () Bool)

(assert (=> b!944438 m!1160071))

(assert (=> b!944438 m!1160071))

(declare-fun m!1160073 () Bool)

(assert (=> b!944438 m!1160073))

(declare-fun m!1160075 () Bool)

(assert (=> b!944438 m!1160075))

(assert (=> b!944438 m!1160071))

(declare-fun m!1160077 () Bool)

(assert (=> b!944438 m!1160077))

(assert (=> b!944441 m!1160065))

(assert (=> b!944274 d!282964))

(declare-fun d!282974 () Bool)

(declare-fun choose!5867 (Int) Bool)

(assert (=> d!282974 (= (Exists!344 lambda!32040) (choose!5867 lambda!32040))))

(declare-fun bs!239329 () Bool)

(assert (= bs!239329 d!282974))

(declare-fun m!1160079 () Bool)

(assert (=> bs!239329 m!1160079))

(assert (=> b!944274 d!282974))

(declare-fun bs!239331 () Bool)

(declare-fun d!282976 () Bool)

(assert (= bs!239331 (and d!282976 d!282962)))

(declare-fun lambda!32065 () Int)

(assert (=> bs!239331 (= (= (Star!2593 (reg!2922 r!15766)) lt!343028) (= lambda!32065 lambda!32056))))

(declare-fun bs!239332 () Bool)

(assert (= bs!239332 (and d!282976 b!944278)))

(assert (=> bs!239332 (not (= lambda!32065 lambda!32042))))

(assert (=> bs!239332 (= (and (= (reg!2922 r!15766) lt!343029) (= (Star!2593 (reg!2922 r!15766)) lt!343024)) (= lambda!32065 lambda!32041))))

(declare-fun bs!239333 () Bool)

(assert (= bs!239333 (and d!282976 b!944274)))

(assert (=> bs!239333 (not (= lambda!32065 lambda!32040))))

(assert (=> bs!239333 (= (= (Star!2593 (reg!2922 r!15766)) lt!343028) (= lambda!32065 lambda!32039))))

(assert (=> d!282976 true))

(assert (=> d!282976 true))

(declare-fun lambda!32066 () Int)

(assert (=> bs!239331 (not (= lambda!32066 lambda!32056))))

(assert (=> bs!239332 (= (and (= (reg!2922 r!15766) lt!343029) (= (Star!2593 (reg!2922 r!15766)) lt!343024)) (= lambda!32066 lambda!32042))))

(assert (=> bs!239332 (not (= lambda!32066 lambda!32041))))

(assert (=> bs!239333 (= (= (Star!2593 (reg!2922 r!15766)) lt!343028) (= lambda!32066 lambda!32040))))

(assert (=> bs!239333 (not (= lambda!32066 lambda!32039))))

(declare-fun bs!239334 () Bool)

(assert (= bs!239334 d!282976))

(assert (=> bs!239334 (not (= lambda!32066 lambda!32065))))

(assert (=> d!282976 true))

(assert (=> d!282976 true))

(assert (=> d!282976 (= (Exists!344 lambda!32065) (Exists!344 lambda!32066))))

(declare-fun lt!343074 () Unit!14805)

(declare-fun choose!5868 (Regex!2593 List!9823) Unit!14805)

(assert (=> d!282976 (= lt!343074 (choose!5868 (reg!2922 r!15766) s!10566))))

(assert (=> d!282976 (validRegex!1062 (reg!2922 r!15766))))

(assert (=> d!282976 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!88 (reg!2922 r!15766) s!10566) lt!343074)))

(declare-fun m!1160109 () Bool)

(assert (=> bs!239334 m!1160109))

(declare-fun m!1160111 () Bool)

(assert (=> bs!239334 m!1160111))

(declare-fun m!1160113 () Bool)

(assert (=> bs!239334 m!1160113))

(assert (=> bs!239334 m!1159971))

(assert (=> b!944274 d!282976))

(declare-fun d!282984 () Bool)

(assert (=> d!282984 (= (Exists!344 lambda!32039) (choose!5867 lambda!32039))))

(declare-fun bs!239335 () Bool)

(assert (= bs!239335 d!282984))

(declare-fun m!1160115 () Bool)

(assert (=> bs!239335 m!1160115))

(assert (=> b!944274 d!282984))

(declare-fun bm!59017 () Bool)

(declare-fun call!59024 () Regex!2593)

(declare-fun c!153766 () Bool)

(assert (=> bm!59017 (= call!59024 (removeUselessConcat!262 (ite c!153766 (regOne!5698 (reg!2922 r!15766)) (regOne!5699 (reg!2922 r!15766)))))))

(declare-fun b!944575 () Bool)

(declare-fun e!612334 () Regex!2593)

(declare-fun call!59025 () Regex!2593)

(assert (=> b!944575 (= e!612334 call!59025)))

(declare-fun b!944576 () Bool)

(declare-fun e!612330 () Regex!2593)

(declare-fun call!59022 () Regex!2593)

(assert (=> b!944576 (= e!612330 (Concat!4426 call!59024 call!59022))))

(declare-fun d!282986 () Bool)

(declare-fun e!612333 () Bool)

(assert (=> d!282986 e!612333))

(declare-fun res!429180 () Bool)

(assert (=> d!282986 (=> (not res!429180) (not e!612333))))

(declare-fun lt!343082 () Regex!2593)

(assert (=> d!282986 (= res!429180 (validRegex!1062 lt!343082))))

(declare-fun e!612332 () Regex!2593)

(assert (=> d!282986 (= lt!343082 e!612332)))

(declare-fun c!153763 () Bool)

(assert (=> d!282986 (= c!153763 (and ((_ is Concat!4426) (reg!2922 r!15766)) ((_ is EmptyExpr!2593) (regOne!5698 (reg!2922 r!15766)))))))

(assert (=> d!282986 (validRegex!1062 (reg!2922 r!15766))))

(assert (=> d!282986 (= (removeUselessConcat!262 (reg!2922 r!15766)) lt!343082)))

(declare-fun b!944577 () Bool)

(declare-fun e!612329 () Regex!2593)

(assert (=> b!944577 (= e!612329 (reg!2922 r!15766))))

(declare-fun b!944578 () Bool)

(assert (=> b!944578 (= e!612333 (= (nullable!760 lt!343082) (nullable!760 (reg!2922 r!15766))))))

(declare-fun bm!59018 () Bool)

(assert (=> bm!59018 (= call!59022 call!59025)))

(declare-fun bm!59019 () Bool)

(declare-fun call!59026 () Regex!2593)

(assert (=> bm!59019 (= call!59026 call!59022)))

(declare-fun call!59023 () Regex!2593)

(declare-fun c!153767 () Bool)

(declare-fun c!153765 () Bool)

(declare-fun bm!59020 () Bool)

(assert (=> bm!59020 (= call!59023 (removeUselessConcat!262 (ite c!153763 (regTwo!5698 (reg!2922 r!15766)) (ite c!153765 (regOne!5698 (reg!2922 r!15766)) (ite c!153766 (regTwo!5698 (reg!2922 r!15766)) (ite c!153767 (regTwo!5699 (reg!2922 r!15766)) (reg!2922 (reg!2922 r!15766))))))))))

(declare-fun b!944579 () Bool)

(assert (=> b!944579 (= e!612332 call!59023)))

(declare-fun b!944580 () Bool)

(assert (=> b!944580 (= e!612332 e!612334)))

(assert (=> b!944580 (= c!153765 (and ((_ is Concat!4426) (reg!2922 r!15766)) ((_ is EmptyExpr!2593) (regTwo!5698 (reg!2922 r!15766)))))))

(declare-fun b!944581 () Bool)

(declare-fun e!612331 () Regex!2593)

(assert (=> b!944581 (= e!612330 e!612331)))

(assert (=> b!944581 (= c!153767 ((_ is Union!2593) (reg!2922 r!15766)))))

(declare-fun b!944582 () Bool)

(assert (=> b!944582 (= e!612331 (Union!2593 call!59024 call!59026))))

(declare-fun b!944583 () Bool)

(assert (=> b!944583 (= c!153766 ((_ is Concat!4426) (reg!2922 r!15766)))))

(assert (=> b!944583 (= e!612334 e!612330)))

(declare-fun b!944584 () Bool)

(assert (=> b!944584 (= e!612329 (Star!2593 call!59026))))

(declare-fun bm!59021 () Bool)

(assert (=> bm!59021 (= call!59025 call!59023)))

(declare-fun b!944585 () Bool)

(declare-fun c!153764 () Bool)

(assert (=> b!944585 (= c!153764 ((_ is Star!2593) (reg!2922 r!15766)))))

(assert (=> b!944585 (= e!612331 e!612329)))

(assert (= (and d!282986 c!153763) b!944579))

(assert (= (and d!282986 (not c!153763)) b!944580))

(assert (= (and b!944580 c!153765) b!944575))

(assert (= (and b!944580 (not c!153765)) b!944583))

(assert (= (and b!944583 c!153766) b!944576))

(assert (= (and b!944583 (not c!153766)) b!944581))

(assert (= (and b!944581 c!153767) b!944582))

(assert (= (and b!944581 (not c!153767)) b!944585))

(assert (= (and b!944585 c!153764) b!944584))

(assert (= (and b!944585 (not c!153764)) b!944577))

(assert (= (or b!944582 b!944584) bm!59019))

(assert (= (or b!944576 bm!59019) bm!59018))

(assert (= (or b!944576 b!944582) bm!59017))

(assert (= (or b!944575 bm!59018) bm!59021))

(assert (= (or b!944579 bm!59021) bm!59020))

(assert (= (and d!282986 res!429180) b!944578))

(declare-fun m!1160135 () Bool)

(assert (=> bm!59017 m!1160135))

(declare-fun m!1160137 () Bool)

(assert (=> d!282986 m!1160137))

(assert (=> d!282986 m!1159971))

(declare-fun m!1160139 () Bool)

(assert (=> b!944578 m!1160139))

(assert (=> b!944578 m!1160015))

(declare-fun m!1160141 () Bool)

(assert (=> bm!59020 m!1160141))

(assert (=> b!944274 d!282986))

(declare-fun b!944600 () Bool)

(declare-fun e!612346 () Bool)

(declare-fun lt!343085 () Bool)

(declare-fun call!59028 () Bool)

(assert (=> b!944600 (= e!612346 (= lt!343085 call!59028))))

(declare-fun bm!59023 () Bool)

(assert (=> bm!59023 (= call!59028 (isEmpty!6064 s!10566))))

(declare-fun b!944601 () Bool)

(declare-fun e!612344 () Bool)

(assert (=> b!944601 (= e!612344 (= (head!1722 s!10566) (c!153698 lt!343024)))))

(declare-fun b!944602 () Bool)

(declare-fun res!429196 () Bool)

(assert (=> b!944602 (=> (not res!429196) (not e!612344))))

(assert (=> b!944602 (= res!429196 (isEmpty!6064 (tail!1284 s!10566)))))

(declare-fun b!944603 () Bool)

(declare-fun e!612342 () Bool)

(declare-fun e!612347 () Bool)

(assert (=> b!944603 (= e!612342 e!612347)))

(declare-fun res!429190 () Bool)

(assert (=> b!944603 (=> (not res!429190) (not e!612347))))

(assert (=> b!944603 (= res!429190 (not lt!343085))))

(declare-fun b!944604 () Bool)

(declare-fun e!612348 () Bool)

(assert (=> b!944604 (= e!612347 e!612348)))

(declare-fun res!429194 () Bool)

(assert (=> b!944604 (=> res!429194 e!612348)))

(assert (=> b!944604 (= res!429194 call!59028)))

(declare-fun b!944605 () Bool)

(declare-fun res!429192 () Bool)

(assert (=> b!944605 (=> res!429192 e!612342)))

(assert (=> b!944605 (= res!429192 e!612344)))

(declare-fun res!429189 () Bool)

(assert (=> b!944605 (=> (not res!429189) (not e!612344))))

(assert (=> b!944605 (= res!429189 lt!343085)))

(declare-fun b!944606 () Bool)

(declare-fun res!429195 () Bool)

(assert (=> b!944606 (=> res!429195 e!612348)))

(assert (=> b!944606 (= res!429195 (not (isEmpty!6064 (tail!1284 s!10566))))))

(declare-fun d!282992 () Bool)

(assert (=> d!282992 e!612346))

(declare-fun c!153771 () Bool)

(assert (=> d!282992 (= c!153771 ((_ is EmptyExpr!2593) lt!343024))))

(declare-fun e!612343 () Bool)

(assert (=> d!282992 (= lt!343085 e!612343)))

(declare-fun c!153772 () Bool)

(assert (=> d!282992 (= c!153772 (isEmpty!6064 s!10566))))

(assert (=> d!282992 (validRegex!1062 lt!343024)))

(assert (=> d!282992 (= (matchR!1131 lt!343024 s!10566) lt!343085)))

(declare-fun b!944607 () Bool)

(assert (=> b!944607 (= e!612343 (matchR!1131 (derivativeStep!569 lt!343024 (head!1722 s!10566)) (tail!1284 s!10566)))))

(declare-fun b!944608 () Bool)

(declare-fun res!429191 () Bool)

(assert (=> b!944608 (=> (not res!429191) (not e!612344))))

(assert (=> b!944608 (= res!429191 (not call!59028))))

(declare-fun b!944609 () Bool)

(declare-fun e!612345 () Bool)

(assert (=> b!944609 (= e!612345 (not lt!343085))))

(declare-fun b!944610 () Bool)

(assert (=> b!944610 (= e!612348 (not (= (head!1722 s!10566) (c!153698 lt!343024))))))

(declare-fun b!944611 () Bool)

(assert (=> b!944611 (= e!612346 e!612345)))

(declare-fun c!153773 () Bool)

(assert (=> b!944611 (= c!153773 ((_ is EmptyLang!2593) lt!343024))))

(declare-fun b!944612 () Bool)

(declare-fun res!429193 () Bool)

(assert (=> b!944612 (=> res!429193 e!612342)))

(assert (=> b!944612 (= res!429193 (not ((_ is ElementMatch!2593) lt!343024)))))

(assert (=> b!944612 (= e!612345 e!612342)))

(declare-fun b!944613 () Bool)

(assert (=> b!944613 (= e!612343 (nullable!760 lt!343024))))

(assert (= (and d!282992 c!153772) b!944613))

(assert (= (and d!282992 (not c!153772)) b!944607))

(assert (= (and d!282992 c!153771) b!944600))

(assert (= (and d!282992 (not c!153771)) b!944611))

(assert (= (and b!944611 c!153773) b!944609))

(assert (= (and b!944611 (not c!153773)) b!944612))

(assert (= (and b!944612 (not res!429193)) b!944605))

(assert (= (and b!944605 res!429189) b!944608))

(assert (= (and b!944608 res!429191) b!944602))

(assert (= (and b!944602 res!429196) b!944601))

(assert (= (and b!944605 (not res!429192)) b!944603))

(assert (= (and b!944603 res!429190) b!944604))

(assert (= (and b!944604 (not res!429194)) b!944606))

(assert (= (and b!944606 (not res!429195)) b!944610))

(assert (= (or b!944600 b!944604 b!944608) bm!59023))

(declare-fun m!1160149 () Bool)

(assert (=> b!944613 m!1160149))

(declare-fun m!1160151 () Bool)

(assert (=> b!944601 m!1160151))

(assert (=> d!282992 m!1159997))

(declare-fun m!1160153 () Bool)

(assert (=> d!282992 m!1160153))

(assert (=> bm!59023 m!1159997))

(assert (=> b!944607 m!1160151))

(assert (=> b!944607 m!1160151))

(declare-fun m!1160155 () Bool)

(assert (=> b!944607 m!1160155))

(declare-fun m!1160157 () Bool)

(assert (=> b!944607 m!1160157))

(assert (=> b!944607 m!1160155))

(assert (=> b!944607 m!1160157))

(declare-fun m!1160159 () Bool)

(assert (=> b!944607 m!1160159))

(assert (=> b!944602 m!1160157))

(assert (=> b!944602 m!1160157))

(declare-fun m!1160161 () Bool)

(assert (=> b!944602 m!1160161))

(assert (=> b!944606 m!1160157))

(assert (=> b!944606 m!1160157))

(assert (=> b!944606 m!1160161))

(assert (=> b!944610 m!1160151))

(assert (=> b!944274 d!282992))

(declare-fun d!282998 () Bool)

(declare-fun isEmpty!6066 (Option!2184) Bool)

(assert (=> d!282998 (= (isDefined!1826 (findConcatSeparation!290 (reg!2922 r!15766) lt!343028 Nil!9807 s!10566 s!10566)) (not (isEmpty!6066 (findConcatSeparation!290 (reg!2922 r!15766) lt!343028 Nil!9807 s!10566 s!10566))))))

(declare-fun bs!239342 () Bool)

(assert (= bs!239342 d!282998))

(assert (=> bs!239342 m!1159955))

(declare-fun m!1160163 () Bool)

(assert (=> bs!239342 m!1160163))

(assert (=> b!944274 d!282998))

(declare-fun bs!239362 () Bool)

(declare-fun b!944701 () Bool)

(assert (= bs!239362 (and b!944701 d!282962)))

(declare-fun lambda!32075 () Int)

(assert (=> bs!239362 (not (= lambda!32075 lambda!32056))))

(declare-fun bs!239363 () Bool)

(assert (= bs!239363 (and b!944701 d!282976)))

(assert (=> bs!239363 (= (and (= (reg!2922 lt!343024) (reg!2922 r!15766)) (= lt!343024 (Star!2593 (reg!2922 r!15766)))) (= lambda!32075 lambda!32066))))

(declare-fun bs!239364 () Bool)

(assert (= bs!239364 (and b!944701 b!944278)))

(assert (=> bs!239364 (= (= (reg!2922 lt!343024) lt!343029) (= lambda!32075 lambda!32042))))

(assert (=> bs!239364 (not (= lambda!32075 lambda!32041))))

(declare-fun bs!239365 () Bool)

(assert (= bs!239365 (and b!944701 b!944274)))

(assert (=> bs!239365 (= (and (= (reg!2922 lt!343024) (reg!2922 r!15766)) (= lt!343024 lt!343028)) (= lambda!32075 lambda!32040))))

(assert (=> bs!239365 (not (= lambda!32075 lambda!32039))))

(assert (=> bs!239363 (not (= lambda!32075 lambda!32065))))

(assert (=> b!944701 true))

(assert (=> b!944701 true))

(declare-fun bs!239366 () Bool)

(declare-fun b!944704 () Bool)

(assert (= bs!239366 (and b!944704 d!282962)))

(declare-fun lambda!32076 () Int)

(assert (=> bs!239366 (not (= lambda!32076 lambda!32056))))

(declare-fun bs!239367 () Bool)

(assert (= bs!239367 (and b!944704 d!282976)))

(assert (=> bs!239367 (not (= lambda!32076 lambda!32066))))

(declare-fun bs!239368 () Bool)

(assert (= bs!239368 (and b!944704 b!944278)))

(assert (=> bs!239368 (not (= lambda!32076 lambda!32042))))

(declare-fun bs!239369 () Bool)

(assert (= bs!239369 (and b!944704 b!944701)))

(assert (=> bs!239369 (not (= lambda!32076 lambda!32075))))

(assert (=> bs!239368 (not (= lambda!32076 lambda!32041))))

(declare-fun bs!239370 () Bool)

(assert (= bs!239370 (and b!944704 b!944274)))

(assert (=> bs!239370 (not (= lambda!32076 lambda!32040))))

(assert (=> bs!239370 (not (= lambda!32076 lambda!32039))))

(assert (=> bs!239367 (not (= lambda!32076 lambda!32065))))

(assert (=> b!944704 true))

(assert (=> b!944704 true))

(declare-fun b!944700 () Bool)

(declare-fun e!612401 () Bool)

(assert (=> b!944700 (= e!612401 (matchRSpec!394 (regTwo!5699 lt!343024) s!10566))))

(declare-fun e!612399 () Bool)

(declare-fun call!59036 () Bool)

(assert (=> b!944701 (= e!612399 call!59036)))

(declare-fun bm!59031 () Bool)

(declare-fun call!59037 () Bool)

(assert (=> bm!59031 (= call!59037 (isEmpty!6064 s!10566))))

(declare-fun b!944702 () Bool)

(declare-fun res!429230 () Bool)

(assert (=> b!944702 (=> res!429230 e!612399)))

(assert (=> b!944702 (= res!429230 call!59037)))

(declare-fun e!612400 () Bool)

(assert (=> b!944702 (= e!612400 e!612399)))

(declare-fun b!944703 () Bool)

(declare-fun e!612398 () Bool)

(assert (=> b!944703 (= e!612398 call!59037)))

(declare-fun d!283000 () Bool)

(declare-fun c!153800 () Bool)

(assert (=> d!283000 (= c!153800 ((_ is EmptyExpr!2593) lt!343024))))

(assert (=> d!283000 (= (matchRSpec!394 lt!343024 s!10566) e!612398)))

(assert (=> b!944704 (= e!612400 call!59036)))

(declare-fun b!944705 () Bool)

(declare-fun e!612397 () Bool)

(assert (=> b!944705 (= e!612398 e!612397)))

(declare-fun res!429231 () Bool)

(assert (=> b!944705 (= res!429231 (not ((_ is EmptyLang!2593) lt!343024)))))

(assert (=> b!944705 (=> (not res!429231) (not e!612397))))

(declare-fun b!944706 () Bool)

(declare-fun c!153803 () Bool)

(assert (=> b!944706 (= c!153803 ((_ is Union!2593) lt!343024))))

(declare-fun e!612402 () Bool)

(declare-fun e!612395 () Bool)

(assert (=> b!944706 (= e!612402 e!612395)))

(declare-fun b!944707 () Bool)

(declare-fun c!153802 () Bool)

(assert (=> b!944707 (= c!153802 ((_ is ElementMatch!2593) lt!343024))))

(assert (=> b!944707 (= e!612397 e!612402)))

(declare-fun c!153804 () Bool)

(declare-fun bm!59032 () Bool)

(assert (=> bm!59032 (= call!59036 (Exists!344 (ite c!153804 lambda!32075 lambda!32076)))))

(declare-fun b!944708 () Bool)

(assert (=> b!944708 (= e!612395 e!612400)))

(assert (=> b!944708 (= c!153804 ((_ is Star!2593) lt!343024))))

(declare-fun b!944709 () Bool)

(assert (=> b!944709 (= e!612395 e!612401)))

(declare-fun res!429229 () Bool)

(assert (=> b!944709 (= res!429229 (matchRSpec!394 (regOne!5699 lt!343024) s!10566))))

(assert (=> b!944709 (=> res!429229 e!612401)))

(declare-fun b!944710 () Bool)

(assert (=> b!944710 (= e!612402 (= s!10566 (Cons!9807 (c!153698 lt!343024) Nil!9807)))))

(assert (= (and d!283000 c!153800) b!944703))

(assert (= (and d!283000 (not c!153800)) b!944705))

(assert (= (and b!944705 res!429231) b!944707))

(assert (= (and b!944707 c!153802) b!944710))

(assert (= (and b!944707 (not c!153802)) b!944706))

(assert (= (and b!944706 c!153803) b!944709))

(assert (= (and b!944706 (not c!153803)) b!944708))

(assert (= (and b!944709 (not res!429229)) b!944700))

(assert (= (and b!944708 c!153804) b!944702))

(assert (= (and b!944708 (not c!153804)) b!944704))

(assert (= (and b!944702 (not res!429230)) b!944701))

(assert (= (or b!944701 b!944704) bm!59032))

(assert (= (or b!944703 b!944702) bm!59031))

(declare-fun m!1160209 () Bool)

(assert (=> b!944700 m!1160209))

(assert (=> bm!59031 m!1159997))

(declare-fun m!1160211 () Bool)

(assert (=> bm!59032 m!1160211))

(declare-fun m!1160213 () Bool)

(assert (=> b!944709 m!1160213))

(assert (=> b!944278 d!283000))

(declare-fun d!283014 () Bool)

(assert (=> d!283014 (= (isDefined!1826 lt!343031) (not (isEmpty!6066 lt!343031)))))

(declare-fun bs!239371 () Bool)

(assert (= bs!239371 d!283014))

(declare-fun m!1160215 () Bool)

(assert (=> bs!239371 m!1160215))

(assert (=> b!944278 d!283014))

(declare-fun d!283016 () Bool)

(assert (=> d!283016 (= (isEmpty!6064 s!10566) ((_ is Nil!9807) s!10566))))

(assert (=> b!944278 d!283016))

(declare-fun b!944724 () Bool)

(declare-fun lt!343097 () Unit!14805)

(declare-fun lt!343096 () Unit!14805)

(assert (=> b!944724 (= lt!343097 lt!343096)))

(assert (=> b!944724 (= (++!2613 (++!2613 Nil!9807 (Cons!9807 (h!15208 s!10566) Nil!9807)) (t!100869 s!10566)) s!10566)))

(assert (=> b!944724 (= lt!343096 (lemmaMoveElementToOtherListKeepsConcatEq!226 Nil!9807 (h!15208 s!10566) (t!100869 s!10566) s!10566))))

(declare-fun e!612411 () Option!2184)

(assert (=> b!944724 (= e!612411 (findConcatSeparation!290 lt!343029 lt!343024 (++!2613 Nil!9807 (Cons!9807 (h!15208 s!10566) Nil!9807)) (t!100869 s!10566) s!10566))))

(declare-fun b!944725 () Bool)

(assert (=> b!944725 (= e!612411 None!2183)))

(declare-fun b!944726 () Bool)

(declare-fun e!612415 () Option!2184)

(assert (=> b!944726 (= e!612415 e!612411)))

(declare-fun c!153810 () Bool)

(assert (=> b!944726 (= c!153810 ((_ is Nil!9807) s!10566))))

(declare-fun b!944727 () Bool)

(declare-fun e!612413 () Bool)

(declare-fun lt!343095 () Option!2184)

(assert (=> b!944727 (= e!612413 (not (isDefined!1826 lt!343095)))))

(declare-fun b!944728 () Bool)

(assert (=> b!944728 (= e!612415 (Some!2183 (tuple2!11085 Nil!9807 s!10566)))))

(declare-fun d!283018 () Bool)

(assert (=> d!283018 e!612413))

(declare-fun res!429235 () Bool)

(assert (=> d!283018 (=> res!429235 e!612413)))

(declare-fun e!612412 () Bool)

(assert (=> d!283018 (= res!429235 e!612412)))

(declare-fun res!429237 () Bool)

(assert (=> d!283018 (=> (not res!429237) (not e!612412))))

(assert (=> d!283018 (= res!429237 (isDefined!1826 lt!343095))))

(assert (=> d!283018 (= lt!343095 e!612415)))

(declare-fun c!153811 () Bool)

(declare-fun e!612414 () Bool)

(assert (=> d!283018 (= c!153811 e!612414)))

(declare-fun res!429238 () Bool)

(assert (=> d!283018 (=> (not res!429238) (not e!612414))))

(assert (=> d!283018 (= res!429238 (matchR!1131 lt!343029 Nil!9807))))

(assert (=> d!283018 (validRegex!1062 lt!343029)))

(assert (=> d!283018 (= (findConcatSeparation!290 lt!343029 lt!343024 Nil!9807 s!10566 s!10566) lt!343095)))

(declare-fun b!944729 () Bool)

(assert (=> b!944729 (= e!612414 (matchR!1131 lt!343024 s!10566))))

(declare-fun b!944730 () Bool)

(assert (=> b!944730 (= e!612412 (= (++!2613 (_1!6368 (get!3271 lt!343095)) (_2!6368 (get!3271 lt!343095))) s!10566))))

(declare-fun b!944731 () Bool)

(declare-fun res!429236 () Bool)

(assert (=> b!944731 (=> (not res!429236) (not e!612412))))

(assert (=> b!944731 (= res!429236 (matchR!1131 lt!343024 (_2!6368 (get!3271 lt!343095))))))

(declare-fun b!944732 () Bool)

(declare-fun res!429239 () Bool)

(assert (=> b!944732 (=> (not res!429239) (not e!612412))))

(assert (=> b!944732 (= res!429239 (matchR!1131 lt!343029 (_1!6368 (get!3271 lt!343095))))))

(assert (= (and d!283018 res!429238) b!944729))

(assert (= (and d!283018 c!153811) b!944728))

(assert (= (and d!283018 (not c!153811)) b!944726))

(assert (= (and b!944726 c!153810) b!944725))

(assert (= (and b!944726 (not c!153810)) b!944724))

(assert (= (and d!283018 res!429237) b!944732))

(assert (= (and b!944732 res!429239) b!944731))

(assert (= (and b!944731 res!429236) b!944730))

(assert (= (and d!283018 (not res!429235)) b!944727))

(declare-fun m!1160225 () Bool)

(assert (=> b!944732 m!1160225))

(declare-fun m!1160227 () Bool)

(assert (=> b!944732 m!1160227))

(assert (=> b!944729 m!1159949))

(assert (=> b!944731 m!1160225))

(declare-fun m!1160229 () Bool)

(assert (=> b!944731 m!1160229))

(declare-fun m!1160231 () Bool)

(assert (=> d!283018 m!1160231))

(declare-fun m!1160233 () Bool)

(assert (=> d!283018 m!1160233))

(declare-fun m!1160235 () Bool)

(assert (=> d!283018 m!1160235))

(assert (=> b!944730 m!1160225))

(declare-fun m!1160237 () Bool)

(assert (=> b!944730 m!1160237))

(assert (=> b!944724 m!1160071))

(assert (=> b!944724 m!1160071))

(assert (=> b!944724 m!1160073))

(assert (=> b!944724 m!1160075))

(assert (=> b!944724 m!1160071))

(declare-fun m!1160239 () Bool)

(assert (=> b!944724 m!1160239))

(assert (=> b!944727 m!1160231))

(assert (=> b!944278 d!283018))

(declare-fun d!283022 () Bool)

(assert (=> d!283022 (= (Exists!344 lambda!32042) (choose!5867 lambda!32042))))

(declare-fun bs!239381 () Bool)

(assert (= bs!239381 d!283022))

(declare-fun m!1160241 () Bool)

(assert (=> bs!239381 m!1160241))

(assert (=> b!944278 d!283022))

(declare-fun d!283024 () Bool)

(assert (=> d!283024 (= (Exists!344 lambda!32041) (choose!5867 lambda!32041))))

(declare-fun bs!239382 () Bool)

(assert (= bs!239382 d!283024))

(declare-fun m!1160243 () Bool)

(assert (=> bs!239382 m!1160243))

(assert (=> b!944278 d!283024))

(declare-fun bs!239385 () Bool)

(declare-fun d!283026 () Bool)

(assert (= bs!239385 (and d!283026 d!282962)))

(declare-fun lambda!32078 () Int)

(assert (=> bs!239385 (= (and (= lt!343029 (reg!2922 r!15766)) (= lt!343024 lt!343028)) (= lambda!32078 lambda!32056))))

(declare-fun bs!239386 () Bool)

(assert (= bs!239386 (and d!283026 d!282976)))

(assert (=> bs!239386 (not (= lambda!32078 lambda!32066))))

(declare-fun bs!239387 () Bool)

(assert (= bs!239387 (and d!283026 b!944704)))

(assert (=> bs!239387 (not (= lambda!32078 lambda!32076))))

(declare-fun bs!239388 () Bool)

(assert (= bs!239388 (and d!283026 b!944278)))

(assert (=> bs!239388 (not (= lambda!32078 lambda!32042))))

(declare-fun bs!239389 () Bool)

(assert (= bs!239389 (and d!283026 b!944701)))

(assert (=> bs!239389 (not (= lambda!32078 lambda!32075))))

(assert (=> bs!239388 (= lambda!32078 lambda!32041)))

(declare-fun bs!239391 () Bool)

(assert (= bs!239391 (and d!283026 b!944274)))

(assert (=> bs!239391 (not (= lambda!32078 lambda!32040))))

(assert (=> bs!239391 (= (and (= lt!343029 (reg!2922 r!15766)) (= lt!343024 lt!343028)) (= lambda!32078 lambda!32039))))

(assert (=> bs!239386 (= (and (= lt!343029 (reg!2922 r!15766)) (= lt!343024 (Star!2593 (reg!2922 r!15766)))) (= lambda!32078 lambda!32065))))

(assert (=> d!283026 true))

(assert (=> d!283026 true))

(assert (=> d!283026 true))

(assert (=> d!283026 (= (isDefined!1826 (findConcatSeparation!290 lt!343029 lt!343024 Nil!9807 s!10566 s!10566)) (Exists!344 lambda!32078))))

(declare-fun lt!343099 () Unit!14805)

(assert (=> d!283026 (= lt!343099 (choose!5866 lt!343029 lt!343024 s!10566))))

(assert (=> d!283026 (validRegex!1062 lt!343029)))

(assert (=> d!283026 (= (lemmaFindConcatSeparationEquivalentToExists!290 lt!343029 lt!343024 s!10566) lt!343099)))

(declare-fun bs!239392 () Bool)

(assert (= bs!239392 d!283026))

(assert (=> bs!239392 m!1159991))

(declare-fun m!1160263 () Bool)

(assert (=> bs!239392 m!1160263))

(assert (=> bs!239392 m!1160235))

(declare-fun m!1160265 () Bool)

(assert (=> bs!239392 m!1160265))

(assert (=> bs!239392 m!1159991))

(declare-fun m!1160267 () Bool)

(assert (=> bs!239392 m!1160267))

(assert (=> b!944278 d!283026))

(declare-fun bs!239393 () Bool)

(declare-fun d!283038 () Bool)

(assert (= bs!239393 (and d!283038 d!282962)))

(declare-fun lambda!32079 () Int)

(assert (=> bs!239393 (= (and (= lt!343029 (reg!2922 r!15766)) (= (Star!2593 lt!343029) lt!343028)) (= lambda!32079 lambda!32056))))

(declare-fun bs!239394 () Bool)

(assert (= bs!239394 (and d!283038 d!282976)))

(assert (=> bs!239394 (not (= lambda!32079 lambda!32066))))

(declare-fun bs!239395 () Bool)

(assert (= bs!239395 (and d!283038 b!944704)))

(assert (=> bs!239395 (not (= lambda!32079 lambda!32076))))

(declare-fun bs!239396 () Bool)

(assert (= bs!239396 (and d!283038 b!944278)))

(assert (=> bs!239396 (not (= lambda!32079 lambda!32042))))

(declare-fun bs!239397 () Bool)

(assert (= bs!239397 (and d!283038 b!944701)))

(assert (=> bs!239397 (not (= lambda!32079 lambda!32075))))

(assert (=> bs!239396 (= (= (Star!2593 lt!343029) lt!343024) (= lambda!32079 lambda!32041))))

(declare-fun bs!239398 () Bool)

(assert (= bs!239398 (and d!283038 b!944274)))

(assert (=> bs!239398 (not (= lambda!32079 lambda!32040))))

(declare-fun bs!239399 () Bool)

(assert (= bs!239399 (and d!283038 d!283026)))

(assert (=> bs!239399 (= (= (Star!2593 lt!343029) lt!343024) (= lambda!32079 lambda!32078))))

(assert (=> bs!239398 (= (and (= lt!343029 (reg!2922 r!15766)) (= (Star!2593 lt!343029) lt!343028)) (= lambda!32079 lambda!32039))))

(assert (=> bs!239394 (= (and (= lt!343029 (reg!2922 r!15766)) (= (Star!2593 lt!343029) (Star!2593 (reg!2922 r!15766)))) (= lambda!32079 lambda!32065))))

(assert (=> d!283038 true))

(assert (=> d!283038 true))

(declare-fun lambda!32080 () Int)

(assert (=> bs!239393 (not (= lambda!32080 lambda!32056))))

(declare-fun bs!239400 () Bool)

(assert (= bs!239400 d!283038))

(assert (=> bs!239400 (not (= lambda!32080 lambda!32079))))

(assert (=> bs!239394 (= (and (= lt!343029 (reg!2922 r!15766)) (= (Star!2593 lt!343029) (Star!2593 (reg!2922 r!15766)))) (= lambda!32080 lambda!32066))))

(assert (=> bs!239395 (not (= lambda!32080 lambda!32076))))

(assert (=> bs!239396 (= (= (Star!2593 lt!343029) lt!343024) (= lambda!32080 lambda!32042))))

(assert (=> bs!239397 (= (and (= lt!343029 (reg!2922 lt!343024)) (= (Star!2593 lt!343029) lt!343024)) (= lambda!32080 lambda!32075))))

(assert (=> bs!239396 (not (= lambda!32080 lambda!32041))))

(assert (=> bs!239398 (= (and (= lt!343029 (reg!2922 r!15766)) (= (Star!2593 lt!343029) lt!343028)) (= lambda!32080 lambda!32040))))

(assert (=> bs!239399 (not (= lambda!32080 lambda!32078))))

(assert (=> bs!239398 (not (= lambda!32080 lambda!32039))))

(assert (=> bs!239394 (not (= lambda!32080 lambda!32065))))

(assert (=> d!283038 true))

(assert (=> d!283038 true))

(assert (=> d!283038 (= (Exists!344 lambda!32079) (Exists!344 lambda!32080))))

(declare-fun lt!343102 () Unit!14805)

(assert (=> d!283038 (= lt!343102 (choose!5868 lt!343029 s!10566))))

(assert (=> d!283038 (validRegex!1062 lt!343029)))

(assert (=> d!283038 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!88 lt!343029 s!10566) lt!343102)))

(declare-fun m!1160281 () Bool)

(assert (=> bs!239400 m!1160281))

(declare-fun m!1160283 () Bool)

(assert (=> bs!239400 m!1160283))

(declare-fun m!1160285 () Bool)

(assert (=> bs!239400 m!1160285))

(assert (=> bs!239400 m!1160235))

(assert (=> b!944278 d!283038))

(declare-fun d!283040 () Bool)

(assert (=> d!283040 (= (matchR!1131 lt!343024 s!10566) (matchRSpec!394 lt!343024 s!10566))))

(declare-fun lt!343105 () Unit!14805)

(declare-fun choose!5870 (Regex!2593 List!9823) Unit!14805)

(assert (=> d!283040 (= lt!343105 (choose!5870 lt!343024 s!10566))))

(assert (=> d!283040 (validRegex!1062 lt!343024)))

(assert (=> d!283040 (= (mainMatchTheorem!394 lt!343024 s!10566) lt!343105)))

(declare-fun bs!239401 () Bool)

(assert (= bs!239401 d!283040))

(assert (=> bs!239401 m!1159949))

(assert (=> bs!239401 m!1159999))

(declare-fun m!1160287 () Bool)

(assert (=> bs!239401 m!1160287))

(assert (=> bs!239401 m!1160153))

(assert (=> b!944278 d!283040))

(declare-fun b!944805 () Bool)

(declare-fun e!612451 () Bool)

(declare-fun lt!343106 () Bool)

(declare-fun call!59058 () Bool)

(assert (=> b!944805 (= e!612451 (= lt!343106 call!59058))))

(declare-fun bm!59053 () Bool)

(assert (=> bm!59053 (= call!59058 (isEmpty!6064 (_2!6368 lt!343034)))))

(declare-fun b!944806 () Bool)

(declare-fun e!612449 () Bool)

(assert (=> b!944806 (= e!612449 (= (head!1722 (_2!6368 lt!343034)) (c!153698 lt!343024)))))

(declare-fun b!944807 () Bool)

(declare-fun res!429268 () Bool)

(assert (=> b!944807 (=> (not res!429268) (not e!612449))))

(assert (=> b!944807 (= res!429268 (isEmpty!6064 (tail!1284 (_2!6368 lt!343034))))))

(declare-fun b!944808 () Bool)

(declare-fun e!612447 () Bool)

(declare-fun e!612452 () Bool)

(assert (=> b!944808 (= e!612447 e!612452)))

(declare-fun res!429262 () Bool)

(assert (=> b!944808 (=> (not res!429262) (not e!612452))))

(assert (=> b!944808 (= res!429262 (not lt!343106))))

(declare-fun b!944809 () Bool)

(declare-fun e!612453 () Bool)

(assert (=> b!944809 (= e!612452 e!612453)))

(declare-fun res!429266 () Bool)

(assert (=> b!944809 (=> res!429266 e!612453)))

(assert (=> b!944809 (= res!429266 call!59058)))

(declare-fun b!944810 () Bool)

(declare-fun res!429264 () Bool)

(assert (=> b!944810 (=> res!429264 e!612447)))

(assert (=> b!944810 (= res!429264 e!612449)))

(declare-fun res!429261 () Bool)

(assert (=> b!944810 (=> (not res!429261) (not e!612449))))

(assert (=> b!944810 (= res!429261 lt!343106)))

(declare-fun b!944811 () Bool)

(declare-fun res!429267 () Bool)

(assert (=> b!944811 (=> res!429267 e!612453)))

(assert (=> b!944811 (= res!429267 (not (isEmpty!6064 (tail!1284 (_2!6368 lt!343034)))))))

(declare-fun d!283042 () Bool)

(assert (=> d!283042 e!612451))

(declare-fun c!153820 () Bool)

(assert (=> d!283042 (= c!153820 ((_ is EmptyExpr!2593) lt!343024))))

(declare-fun e!612448 () Bool)

(assert (=> d!283042 (= lt!343106 e!612448)))

(declare-fun c!153821 () Bool)

(assert (=> d!283042 (= c!153821 (isEmpty!6064 (_2!6368 lt!343034)))))

(assert (=> d!283042 (validRegex!1062 lt!343024)))

(assert (=> d!283042 (= (matchR!1131 lt!343024 (_2!6368 lt!343034)) lt!343106)))

(declare-fun b!944812 () Bool)

(assert (=> b!944812 (= e!612448 (matchR!1131 (derivativeStep!569 lt!343024 (head!1722 (_2!6368 lt!343034))) (tail!1284 (_2!6368 lt!343034))))))

(declare-fun b!944813 () Bool)

(declare-fun res!429263 () Bool)

(assert (=> b!944813 (=> (not res!429263) (not e!612449))))

(assert (=> b!944813 (= res!429263 (not call!59058))))

(declare-fun b!944814 () Bool)

(declare-fun e!612450 () Bool)

(assert (=> b!944814 (= e!612450 (not lt!343106))))

(declare-fun b!944815 () Bool)

(assert (=> b!944815 (= e!612453 (not (= (head!1722 (_2!6368 lt!343034)) (c!153698 lt!343024))))))

(declare-fun b!944816 () Bool)

(assert (=> b!944816 (= e!612451 e!612450)))

(declare-fun c!153822 () Bool)

(assert (=> b!944816 (= c!153822 ((_ is EmptyLang!2593) lt!343024))))

(declare-fun b!944817 () Bool)

(declare-fun res!429265 () Bool)

(assert (=> b!944817 (=> res!429265 e!612447)))

(assert (=> b!944817 (= res!429265 (not ((_ is ElementMatch!2593) lt!343024)))))

(assert (=> b!944817 (= e!612450 e!612447)))

(declare-fun b!944818 () Bool)

(assert (=> b!944818 (= e!612448 (nullable!760 lt!343024))))

(assert (= (and d!283042 c!153821) b!944818))

(assert (= (and d!283042 (not c!153821)) b!944812))

(assert (= (and d!283042 c!153820) b!944805))

(assert (= (and d!283042 (not c!153820)) b!944816))

(assert (= (and b!944816 c!153822) b!944814))

(assert (= (and b!944816 (not c!153822)) b!944817))

(assert (= (and b!944817 (not res!429265)) b!944810))

(assert (= (and b!944810 res!429261) b!944813))

(assert (= (and b!944813 res!429263) b!944807))

(assert (= (and b!944807 res!429268) b!944806))

(assert (= (and b!944810 (not res!429264)) b!944808))

(assert (= (and b!944808 res!429262) b!944809))

(assert (= (and b!944809 (not res!429266)) b!944811))

(assert (= (and b!944811 (not res!429267)) b!944815))

(assert (= (or b!944805 b!944809 b!944813) bm!59053))

(assert (=> b!944818 m!1160149))

(declare-fun m!1160289 () Bool)

(assert (=> b!944806 m!1160289))

(declare-fun m!1160291 () Bool)

(assert (=> d!283042 m!1160291))

(assert (=> d!283042 m!1160153))

(assert (=> bm!59053 m!1160291))

(assert (=> b!944812 m!1160289))

(assert (=> b!944812 m!1160289))

(declare-fun m!1160293 () Bool)

(assert (=> b!944812 m!1160293))

(declare-fun m!1160295 () Bool)

(assert (=> b!944812 m!1160295))

(assert (=> b!944812 m!1160293))

(assert (=> b!944812 m!1160295))

(declare-fun m!1160297 () Bool)

(assert (=> b!944812 m!1160297))

(assert (=> b!944807 m!1160295))

(assert (=> b!944807 m!1160295))

(declare-fun m!1160299 () Bool)

(assert (=> b!944807 m!1160299))

(assert (=> b!944811 m!1160295))

(assert (=> b!944811 m!1160295))

(assert (=> b!944811 m!1160299))

(assert (=> b!944815 m!1160289))

(assert (=> b!944277 d!283042))

(declare-fun bm!59054 () Bool)

(declare-fun call!59059 () Bool)

(declare-fun c!153823 () Bool)

(assert (=> bm!59054 (= call!59059 (validRegex!1062 (ite c!153823 (regOne!5699 r!15766) (regOne!5698 r!15766))))))

(declare-fun b!944819 () Bool)

(declare-fun e!612456 () Bool)

(declare-fun e!612459 () Bool)

(assert (=> b!944819 (= e!612456 e!612459)))

(declare-fun res!429272 () Bool)

(assert (=> b!944819 (= res!429272 (not (nullable!760 (reg!2922 r!15766))))))

(assert (=> b!944819 (=> (not res!429272) (not e!612459))))

(declare-fun b!944820 () Bool)

(declare-fun call!59060 () Bool)

(assert (=> b!944820 (= e!612459 call!59060)))

(declare-fun b!944821 () Bool)

(declare-fun e!612454 () Bool)

(declare-fun call!59061 () Bool)

(assert (=> b!944821 (= e!612454 call!59061)))

(declare-fun b!944822 () Bool)

(declare-fun e!612460 () Bool)

(assert (=> b!944822 (= e!612460 call!59061)))

(declare-fun b!944823 () Bool)

(declare-fun e!612457 () Bool)

(assert (=> b!944823 (= e!612456 e!612457)))

(assert (=> b!944823 (= c!153823 ((_ is Union!2593) r!15766))))

(declare-fun b!944824 () Bool)

(declare-fun e!612455 () Bool)

(assert (=> b!944824 (= e!612455 e!612454)))

(declare-fun res!429271 () Bool)

(assert (=> b!944824 (=> (not res!429271) (not e!612454))))

(assert (=> b!944824 (= res!429271 call!59059)))

(declare-fun d!283044 () Bool)

(declare-fun res!429269 () Bool)

(declare-fun e!612458 () Bool)

(assert (=> d!283044 (=> res!429269 e!612458)))

(assert (=> d!283044 (= res!429269 ((_ is ElementMatch!2593) r!15766))))

(assert (=> d!283044 (= (validRegex!1062 r!15766) e!612458)))

(declare-fun c!153824 () Bool)

(declare-fun bm!59055 () Bool)

(assert (=> bm!59055 (= call!59060 (validRegex!1062 (ite c!153824 (reg!2922 r!15766) (ite c!153823 (regTwo!5699 r!15766) (regTwo!5698 r!15766)))))))

(declare-fun b!944825 () Bool)

(assert (=> b!944825 (= e!612458 e!612456)))

(assert (=> b!944825 (= c!153824 ((_ is Star!2593) r!15766))))

(declare-fun b!944826 () Bool)

(declare-fun res!429270 () Bool)

(assert (=> b!944826 (=> res!429270 e!612455)))

(assert (=> b!944826 (= res!429270 (not ((_ is Concat!4426) r!15766)))))

(assert (=> b!944826 (= e!612457 e!612455)))

(declare-fun bm!59056 () Bool)

(assert (=> bm!59056 (= call!59061 call!59060)))

(declare-fun b!944827 () Bool)

(declare-fun res!429273 () Bool)

(assert (=> b!944827 (=> (not res!429273) (not e!612460))))

(assert (=> b!944827 (= res!429273 call!59059)))

(assert (=> b!944827 (= e!612457 e!612460)))

(assert (= (and d!283044 (not res!429269)) b!944825))

(assert (= (and b!944825 c!153824) b!944819))

(assert (= (and b!944825 (not c!153824)) b!944823))

(assert (= (and b!944819 res!429272) b!944820))

(assert (= (and b!944823 c!153823) b!944827))

(assert (= (and b!944823 (not c!153823)) b!944826))

(assert (= (and b!944827 res!429273) b!944822))

(assert (= (and b!944826 (not res!429270)) b!944824))

(assert (= (and b!944824 res!429271) b!944821))

(assert (= (or b!944822 b!944821) bm!59056))

(assert (= (or b!944827 b!944824) bm!59054))

(assert (= (or b!944820 bm!59056) bm!59055))

(declare-fun m!1160301 () Bool)

(assert (=> bm!59054 m!1160301))

(assert (=> b!944819 m!1160015))

(declare-fun m!1160303 () Bool)

(assert (=> bm!59055 m!1160303))

(assert (=> start!84242 d!283044))

(declare-fun b!944828 () Bool)

(declare-fun e!612465 () Bool)

(declare-fun lt!343107 () Bool)

(declare-fun call!59062 () Bool)

(assert (=> b!944828 (= e!612465 (= lt!343107 call!59062))))

(declare-fun bm!59057 () Bool)

(assert (=> bm!59057 (= call!59062 (isEmpty!6064 (_1!6368 lt!343034)))))

(declare-fun b!944829 () Bool)

(declare-fun e!612463 () Bool)

(assert (=> b!944829 (= e!612463 (= (head!1722 (_1!6368 lt!343034)) (c!153698 lt!343029)))))

(declare-fun b!944830 () Bool)

(declare-fun res!429281 () Bool)

(assert (=> b!944830 (=> (not res!429281) (not e!612463))))

(assert (=> b!944830 (= res!429281 (isEmpty!6064 (tail!1284 (_1!6368 lt!343034))))))

(declare-fun b!944831 () Bool)

(declare-fun e!612461 () Bool)

(declare-fun e!612466 () Bool)

(assert (=> b!944831 (= e!612461 e!612466)))

(declare-fun res!429275 () Bool)

(assert (=> b!944831 (=> (not res!429275) (not e!612466))))

(assert (=> b!944831 (= res!429275 (not lt!343107))))

(declare-fun b!944832 () Bool)

(declare-fun e!612467 () Bool)

(assert (=> b!944832 (= e!612466 e!612467)))

(declare-fun res!429279 () Bool)

(assert (=> b!944832 (=> res!429279 e!612467)))

(assert (=> b!944832 (= res!429279 call!59062)))

(declare-fun b!944833 () Bool)

(declare-fun res!429277 () Bool)

(assert (=> b!944833 (=> res!429277 e!612461)))

(assert (=> b!944833 (= res!429277 e!612463)))

(declare-fun res!429274 () Bool)

(assert (=> b!944833 (=> (not res!429274) (not e!612463))))

(assert (=> b!944833 (= res!429274 lt!343107)))

(declare-fun b!944834 () Bool)

(declare-fun res!429280 () Bool)

(assert (=> b!944834 (=> res!429280 e!612467)))

(assert (=> b!944834 (= res!429280 (not (isEmpty!6064 (tail!1284 (_1!6368 lt!343034)))))))

(declare-fun d!283046 () Bool)

(assert (=> d!283046 e!612465))

(declare-fun c!153825 () Bool)

(assert (=> d!283046 (= c!153825 ((_ is EmptyExpr!2593) lt!343029))))

(declare-fun e!612462 () Bool)

(assert (=> d!283046 (= lt!343107 e!612462)))

(declare-fun c!153826 () Bool)

(assert (=> d!283046 (= c!153826 (isEmpty!6064 (_1!6368 lt!343034)))))

(assert (=> d!283046 (validRegex!1062 lt!343029)))

(assert (=> d!283046 (= (matchR!1131 lt!343029 (_1!6368 lt!343034)) lt!343107)))

(declare-fun b!944835 () Bool)

(assert (=> b!944835 (= e!612462 (matchR!1131 (derivativeStep!569 lt!343029 (head!1722 (_1!6368 lt!343034))) (tail!1284 (_1!6368 lt!343034))))))

(declare-fun b!944836 () Bool)

(declare-fun res!429276 () Bool)

(assert (=> b!944836 (=> (not res!429276) (not e!612463))))

(assert (=> b!944836 (= res!429276 (not call!59062))))

(declare-fun b!944837 () Bool)

(declare-fun e!612464 () Bool)

(assert (=> b!944837 (= e!612464 (not lt!343107))))

(declare-fun b!944838 () Bool)

(assert (=> b!944838 (= e!612467 (not (= (head!1722 (_1!6368 lt!343034)) (c!153698 lt!343029))))))

(declare-fun b!944839 () Bool)

(assert (=> b!944839 (= e!612465 e!612464)))

(declare-fun c!153827 () Bool)

(assert (=> b!944839 (= c!153827 ((_ is EmptyLang!2593) lt!343029))))

(declare-fun b!944840 () Bool)

(declare-fun res!429278 () Bool)

(assert (=> b!944840 (=> res!429278 e!612461)))

(assert (=> b!944840 (= res!429278 (not ((_ is ElementMatch!2593) lt!343029)))))

(assert (=> b!944840 (= e!612464 e!612461)))

(declare-fun b!944841 () Bool)

(assert (=> b!944841 (= e!612462 (nullable!760 lt!343029))))

(assert (= (and d!283046 c!153826) b!944841))

(assert (= (and d!283046 (not c!153826)) b!944835))

(assert (= (and d!283046 c!153825) b!944828))

(assert (= (and d!283046 (not c!153825)) b!944839))

(assert (= (and b!944839 c!153827) b!944837))

(assert (= (and b!944839 (not c!153827)) b!944840))

(assert (= (and b!944840 (not res!429278)) b!944833))

(assert (= (and b!944833 res!429274) b!944836))

(assert (= (and b!944836 res!429276) b!944830))

(assert (= (and b!944830 res!429281) b!944829))

(assert (= (and b!944833 (not res!429277)) b!944831))

(assert (= (and b!944831 res!429275) b!944832))

(assert (= (and b!944832 (not res!429279)) b!944834))

(assert (= (and b!944834 (not res!429280)) b!944838))

(assert (= (or b!944828 b!944832 b!944836) bm!59057))

(declare-fun m!1160305 () Bool)

(assert (=> b!944841 m!1160305))

(assert (=> b!944829 m!1160019))

(assert (=> d!283046 m!1160021))

(assert (=> d!283046 m!1160235))

(assert (=> bm!59057 m!1160021))

(assert (=> b!944835 m!1160019))

(assert (=> b!944835 m!1160019))

(declare-fun m!1160307 () Bool)

(assert (=> b!944835 m!1160307))

(assert (=> b!944835 m!1160025))

(assert (=> b!944835 m!1160307))

(assert (=> b!944835 m!1160025))

(declare-fun m!1160309 () Bool)

(assert (=> b!944835 m!1160309))

(assert (=> b!944830 m!1160025))

(assert (=> b!944830 m!1160025))

(assert (=> b!944830 m!1160029))

(assert (=> b!944834 m!1160025))

(assert (=> b!944834 m!1160025))

(assert (=> b!944834 m!1160029))

(assert (=> b!944838 m!1160019))

(assert (=> b!944281 d!283046))

(declare-fun d!283048 () Bool)

(assert (=> d!283048 (= (get!3271 lt!343031) (v!19600 lt!343031))))

(assert (=> b!944281 d!283048))

(declare-fun bs!239402 () Bool)

(declare-fun b!944843 () Bool)

(assert (= bs!239402 (and b!944843 d!282962)))

(declare-fun lambda!32081 () Int)

(assert (=> bs!239402 (not (= lambda!32081 lambda!32056))))

(declare-fun bs!239403 () Bool)

(assert (= bs!239403 (and b!944843 d!283038)))

(assert (=> bs!239403 (not (= lambda!32081 lambda!32079))))

(declare-fun bs!239404 () Bool)

(assert (= bs!239404 (and b!944843 d!282976)))

(assert (=> bs!239404 (= (= r!15766 (Star!2593 (reg!2922 r!15766))) (= lambda!32081 lambda!32066))))

(declare-fun bs!239405 () Bool)

(assert (= bs!239405 (and b!944843 b!944704)))

(assert (=> bs!239405 (not (= lambda!32081 lambda!32076))))

(declare-fun bs!239406 () Bool)

(assert (= bs!239406 (and b!944843 b!944278)))

(assert (=> bs!239406 (= (and (= (reg!2922 r!15766) lt!343029) (= r!15766 lt!343024)) (= lambda!32081 lambda!32042))))

(assert (=> bs!239403 (= (and (= (reg!2922 r!15766) lt!343029) (= r!15766 (Star!2593 lt!343029))) (= lambda!32081 lambda!32080))))

(declare-fun bs!239407 () Bool)

(assert (= bs!239407 (and b!944843 b!944701)))

(assert (=> bs!239407 (= (and (= (reg!2922 r!15766) (reg!2922 lt!343024)) (= r!15766 lt!343024)) (= lambda!32081 lambda!32075))))

(assert (=> bs!239406 (not (= lambda!32081 lambda!32041))))

(declare-fun bs!239408 () Bool)

(assert (= bs!239408 (and b!944843 b!944274)))

(assert (=> bs!239408 (= (= r!15766 lt!343028) (= lambda!32081 lambda!32040))))

(declare-fun bs!239409 () Bool)

(assert (= bs!239409 (and b!944843 d!283026)))

(assert (=> bs!239409 (not (= lambda!32081 lambda!32078))))

(assert (=> bs!239408 (not (= lambda!32081 lambda!32039))))

(assert (=> bs!239404 (not (= lambda!32081 lambda!32065))))

(assert (=> b!944843 true))

(assert (=> b!944843 true))

(declare-fun bs!239410 () Bool)

(declare-fun b!944846 () Bool)

(assert (= bs!239410 (and b!944846 d!282962)))

(declare-fun lambda!32082 () Int)

(assert (=> bs!239410 (not (= lambda!32082 lambda!32056))))

(declare-fun bs!239411 () Bool)

(assert (= bs!239411 (and b!944846 d!283038)))

(assert (=> bs!239411 (not (= lambda!32082 lambda!32079))))

(declare-fun bs!239412 () Bool)

(assert (= bs!239412 (and b!944846 d!282976)))

(assert (=> bs!239412 (not (= lambda!32082 lambda!32066))))

(declare-fun bs!239413 () Bool)

(assert (= bs!239413 (and b!944846 b!944704)))

(assert (=> bs!239413 (= (and (= (regOne!5698 r!15766) (regOne!5698 lt!343024)) (= (regTwo!5698 r!15766) (regTwo!5698 lt!343024))) (= lambda!32082 lambda!32076))))

(declare-fun bs!239414 () Bool)

(assert (= bs!239414 (and b!944846 b!944278)))

(assert (=> bs!239414 (not (= lambda!32082 lambda!32042))))

(assert (=> bs!239411 (not (= lambda!32082 lambda!32080))))

(declare-fun bs!239415 () Bool)

(assert (= bs!239415 (and b!944846 b!944701)))

(assert (=> bs!239415 (not (= lambda!32082 lambda!32075))))

(assert (=> bs!239414 (not (= lambda!32082 lambda!32041))))

(declare-fun bs!239416 () Bool)

(assert (= bs!239416 (and b!944846 b!944274)))

(assert (=> bs!239416 (not (= lambda!32082 lambda!32040))))

(declare-fun bs!239417 () Bool)

(assert (= bs!239417 (and b!944846 d!283026)))

(assert (=> bs!239417 (not (= lambda!32082 lambda!32078))))

(declare-fun bs!239418 () Bool)

(assert (= bs!239418 (and b!944846 b!944843)))

(assert (=> bs!239418 (not (= lambda!32082 lambda!32081))))

(assert (=> bs!239416 (not (= lambda!32082 lambda!32039))))

(assert (=> bs!239412 (not (= lambda!32082 lambda!32065))))

(assert (=> b!944846 true))

(assert (=> b!944846 true))

(declare-fun b!944842 () Bool)

(declare-fun e!612473 () Bool)

(assert (=> b!944842 (= e!612473 (matchRSpec!394 (regTwo!5699 r!15766) s!10566))))

(declare-fun e!612471 () Bool)

(declare-fun call!59063 () Bool)

(assert (=> b!944843 (= e!612471 call!59063)))

(declare-fun bm!59058 () Bool)

(declare-fun call!59064 () Bool)

(assert (=> bm!59058 (= call!59064 (isEmpty!6064 s!10566))))

(declare-fun b!944844 () Bool)

(declare-fun res!429283 () Bool)

(assert (=> b!944844 (=> res!429283 e!612471)))

(assert (=> b!944844 (= res!429283 call!59064)))

(declare-fun e!612472 () Bool)

(assert (=> b!944844 (= e!612472 e!612471)))

(declare-fun b!944845 () Bool)

(declare-fun e!612470 () Bool)

(assert (=> b!944845 (= e!612470 call!59064)))

(declare-fun d!283050 () Bool)

(declare-fun c!153828 () Bool)

(assert (=> d!283050 (= c!153828 ((_ is EmptyExpr!2593) r!15766))))

(assert (=> d!283050 (= (matchRSpec!394 r!15766 s!10566) e!612470)))

(assert (=> b!944846 (= e!612472 call!59063)))

(declare-fun b!944847 () Bool)

(declare-fun e!612469 () Bool)

(assert (=> b!944847 (= e!612470 e!612469)))

(declare-fun res!429284 () Bool)

(assert (=> b!944847 (= res!429284 (not ((_ is EmptyLang!2593) r!15766)))))

(assert (=> b!944847 (=> (not res!429284) (not e!612469))))

(declare-fun b!944848 () Bool)

(declare-fun c!153830 () Bool)

(assert (=> b!944848 (= c!153830 ((_ is Union!2593) r!15766))))

(declare-fun e!612474 () Bool)

(declare-fun e!612468 () Bool)

(assert (=> b!944848 (= e!612474 e!612468)))

(declare-fun b!944849 () Bool)

(declare-fun c!153829 () Bool)

(assert (=> b!944849 (= c!153829 ((_ is ElementMatch!2593) r!15766))))

(assert (=> b!944849 (= e!612469 e!612474)))

(declare-fun c!153831 () Bool)

(declare-fun bm!59059 () Bool)

(assert (=> bm!59059 (= call!59063 (Exists!344 (ite c!153831 lambda!32081 lambda!32082)))))

(declare-fun b!944850 () Bool)

(assert (=> b!944850 (= e!612468 e!612472)))

(assert (=> b!944850 (= c!153831 ((_ is Star!2593) r!15766))))

(declare-fun b!944851 () Bool)

(assert (=> b!944851 (= e!612468 e!612473)))

(declare-fun res!429282 () Bool)

(assert (=> b!944851 (= res!429282 (matchRSpec!394 (regOne!5699 r!15766) s!10566))))

(assert (=> b!944851 (=> res!429282 e!612473)))

(declare-fun b!944852 () Bool)

(assert (=> b!944852 (= e!612474 (= s!10566 (Cons!9807 (c!153698 r!15766) Nil!9807)))))

(assert (= (and d!283050 c!153828) b!944845))

(assert (= (and d!283050 (not c!153828)) b!944847))

(assert (= (and b!944847 res!429284) b!944849))

(assert (= (and b!944849 c!153829) b!944852))

(assert (= (and b!944849 (not c!153829)) b!944848))

(assert (= (and b!944848 c!153830) b!944851))

(assert (= (and b!944848 (not c!153830)) b!944850))

(assert (= (and b!944851 (not res!429282)) b!944842))

(assert (= (and b!944850 c!153831) b!944844))

(assert (= (and b!944850 (not c!153831)) b!944846))

(assert (= (and b!944844 (not res!429283)) b!944843))

(assert (= (or b!944843 b!944846) bm!59059))

(assert (= (or b!944845 b!944844) bm!59058))

(declare-fun m!1160311 () Bool)

(assert (=> b!944842 m!1160311))

(assert (=> bm!59058 m!1159997))

(declare-fun m!1160313 () Bool)

(assert (=> bm!59059 m!1160313))

(declare-fun m!1160315 () Bool)

(assert (=> b!944851 m!1160315))

(assert (=> b!944276 d!283050))

(declare-fun b!944853 () Bool)

(declare-fun e!612479 () Bool)

(declare-fun lt!343108 () Bool)

(declare-fun call!59065 () Bool)

(assert (=> b!944853 (= e!612479 (= lt!343108 call!59065))))

(declare-fun bm!59060 () Bool)

(assert (=> bm!59060 (= call!59065 (isEmpty!6064 s!10566))))

(declare-fun b!944854 () Bool)

(declare-fun e!612477 () Bool)

(assert (=> b!944854 (= e!612477 (= (head!1722 s!10566) (c!153698 r!15766)))))

(declare-fun b!944855 () Bool)

(declare-fun res!429292 () Bool)

(assert (=> b!944855 (=> (not res!429292) (not e!612477))))

(assert (=> b!944855 (= res!429292 (isEmpty!6064 (tail!1284 s!10566)))))

(declare-fun b!944856 () Bool)

(declare-fun e!612475 () Bool)

(declare-fun e!612480 () Bool)

(assert (=> b!944856 (= e!612475 e!612480)))

(declare-fun res!429286 () Bool)

(assert (=> b!944856 (=> (not res!429286) (not e!612480))))

(assert (=> b!944856 (= res!429286 (not lt!343108))))

(declare-fun b!944857 () Bool)

(declare-fun e!612481 () Bool)

(assert (=> b!944857 (= e!612480 e!612481)))

(declare-fun res!429290 () Bool)

(assert (=> b!944857 (=> res!429290 e!612481)))

(assert (=> b!944857 (= res!429290 call!59065)))

(declare-fun b!944858 () Bool)

(declare-fun res!429288 () Bool)

(assert (=> b!944858 (=> res!429288 e!612475)))

(assert (=> b!944858 (= res!429288 e!612477)))

(declare-fun res!429285 () Bool)

(assert (=> b!944858 (=> (not res!429285) (not e!612477))))

(assert (=> b!944858 (= res!429285 lt!343108)))

(declare-fun b!944859 () Bool)

(declare-fun res!429291 () Bool)

(assert (=> b!944859 (=> res!429291 e!612481)))

(assert (=> b!944859 (= res!429291 (not (isEmpty!6064 (tail!1284 s!10566))))))

(declare-fun d!283052 () Bool)

(assert (=> d!283052 e!612479))

(declare-fun c!153832 () Bool)

(assert (=> d!283052 (= c!153832 ((_ is EmptyExpr!2593) r!15766))))

(declare-fun e!612476 () Bool)

(assert (=> d!283052 (= lt!343108 e!612476)))

(declare-fun c!153833 () Bool)

(assert (=> d!283052 (= c!153833 (isEmpty!6064 s!10566))))

(assert (=> d!283052 (validRegex!1062 r!15766)))

(assert (=> d!283052 (= (matchR!1131 r!15766 s!10566) lt!343108)))

(declare-fun b!944860 () Bool)

(assert (=> b!944860 (= e!612476 (matchR!1131 (derivativeStep!569 r!15766 (head!1722 s!10566)) (tail!1284 s!10566)))))

(declare-fun b!944861 () Bool)

(declare-fun res!429287 () Bool)

(assert (=> b!944861 (=> (not res!429287) (not e!612477))))

(assert (=> b!944861 (= res!429287 (not call!59065))))

(declare-fun b!944862 () Bool)

(declare-fun e!612478 () Bool)

(assert (=> b!944862 (= e!612478 (not lt!343108))))

(declare-fun b!944863 () Bool)

(assert (=> b!944863 (= e!612481 (not (= (head!1722 s!10566) (c!153698 r!15766))))))

(declare-fun b!944864 () Bool)

(assert (=> b!944864 (= e!612479 e!612478)))

(declare-fun c!153834 () Bool)

(assert (=> b!944864 (= c!153834 ((_ is EmptyLang!2593) r!15766))))

(declare-fun b!944865 () Bool)

(declare-fun res!429289 () Bool)

(assert (=> b!944865 (=> res!429289 e!612475)))

(assert (=> b!944865 (= res!429289 (not ((_ is ElementMatch!2593) r!15766)))))

(assert (=> b!944865 (= e!612478 e!612475)))

(declare-fun b!944866 () Bool)

(assert (=> b!944866 (= e!612476 (nullable!760 r!15766))))

(assert (= (and d!283052 c!153833) b!944866))

(assert (= (and d!283052 (not c!153833)) b!944860))

(assert (= (and d!283052 c!153832) b!944853))

(assert (= (and d!283052 (not c!153832)) b!944864))

(assert (= (and b!944864 c!153834) b!944862))

(assert (= (and b!944864 (not c!153834)) b!944865))

(assert (= (and b!944865 (not res!429289)) b!944858))

(assert (= (and b!944858 res!429285) b!944861))

(assert (= (and b!944861 res!429287) b!944855))

(assert (= (and b!944855 res!429292) b!944854))

(assert (= (and b!944858 (not res!429288)) b!944856))

(assert (= (and b!944856 res!429286) b!944857))

(assert (= (and b!944857 (not res!429290)) b!944859))

(assert (= (and b!944859 (not res!429291)) b!944863))

(assert (= (or b!944853 b!944857 b!944861) bm!59060))

(declare-fun m!1160317 () Bool)

(assert (=> b!944866 m!1160317))

(assert (=> b!944854 m!1160151))

(assert (=> d!283052 m!1159997))

(assert (=> d!283052 m!1159977))

(assert (=> bm!59060 m!1159997))

(assert (=> b!944860 m!1160151))

(assert (=> b!944860 m!1160151))

(declare-fun m!1160319 () Bool)

(assert (=> b!944860 m!1160319))

(assert (=> b!944860 m!1160157))

(assert (=> b!944860 m!1160319))

(assert (=> b!944860 m!1160157))

(declare-fun m!1160321 () Bool)

(assert (=> b!944860 m!1160321))

(assert (=> b!944855 m!1160157))

(assert (=> b!944855 m!1160157))

(assert (=> b!944855 m!1160161))

(assert (=> b!944859 m!1160157))

(assert (=> b!944859 m!1160157))

(assert (=> b!944859 m!1160161))

(assert (=> b!944863 m!1160151))

(assert (=> b!944276 d!283052))

(declare-fun d!283054 () Bool)

(assert (=> d!283054 (= (matchR!1131 r!15766 s!10566) (matchRSpec!394 r!15766 s!10566))))

(declare-fun lt!343109 () Unit!14805)

(assert (=> d!283054 (= lt!343109 (choose!5870 r!15766 s!10566))))

(assert (=> d!283054 (validRegex!1062 r!15766)))

(assert (=> d!283054 (= (mainMatchTheorem!394 r!15766 s!10566) lt!343109)))

(declare-fun bs!239419 () Bool)

(assert (= bs!239419 d!283054))

(assert (=> bs!239419 m!1159967))

(assert (=> bs!239419 m!1159965))

(declare-fun m!1160323 () Bool)

(assert (=> bs!239419 m!1160323))

(assert (=> bs!239419 m!1159977))

(assert (=> b!944276 d!283054))

(declare-fun e!612484 () Bool)

(assert (=> b!944284 (= tp!291721 e!612484)))

(declare-fun b!944877 () Bool)

(assert (=> b!944877 (= e!612484 tp_is_empty!4829)))

(declare-fun b!944878 () Bool)

(declare-fun tp!291777 () Bool)

(declare-fun tp!291773 () Bool)

(assert (=> b!944878 (= e!612484 (and tp!291777 tp!291773))))

(declare-fun b!944879 () Bool)

(declare-fun tp!291775 () Bool)

(assert (=> b!944879 (= e!612484 tp!291775)))

(declare-fun b!944880 () Bool)

(declare-fun tp!291774 () Bool)

(declare-fun tp!291776 () Bool)

(assert (=> b!944880 (= e!612484 (and tp!291774 tp!291776))))

(assert (= (and b!944284 ((_ is ElementMatch!2593) (reg!2922 r!15766))) b!944877))

(assert (= (and b!944284 ((_ is Concat!4426) (reg!2922 r!15766))) b!944878))

(assert (= (and b!944284 ((_ is Star!2593) (reg!2922 r!15766))) b!944879))

(assert (= (and b!944284 ((_ is Union!2593) (reg!2922 r!15766))) b!944880))

(declare-fun e!612485 () Bool)

(assert (=> b!944283 (= tp!291719 e!612485)))

(declare-fun b!944881 () Bool)

(assert (=> b!944881 (= e!612485 tp_is_empty!4829)))

(declare-fun b!944882 () Bool)

(declare-fun tp!291782 () Bool)

(declare-fun tp!291778 () Bool)

(assert (=> b!944882 (= e!612485 (and tp!291782 tp!291778))))

(declare-fun b!944883 () Bool)

(declare-fun tp!291780 () Bool)

(assert (=> b!944883 (= e!612485 tp!291780)))

(declare-fun b!944884 () Bool)

(declare-fun tp!291779 () Bool)

(declare-fun tp!291781 () Bool)

(assert (=> b!944884 (= e!612485 (and tp!291779 tp!291781))))

(assert (= (and b!944283 ((_ is ElementMatch!2593) (regOne!5698 r!15766))) b!944881))

(assert (= (and b!944283 ((_ is Concat!4426) (regOne!5698 r!15766))) b!944882))

(assert (= (and b!944283 ((_ is Star!2593) (regOne!5698 r!15766))) b!944883))

(assert (= (and b!944283 ((_ is Union!2593) (regOne!5698 r!15766))) b!944884))

(declare-fun e!612486 () Bool)

(assert (=> b!944283 (= tp!291720 e!612486)))

(declare-fun b!944885 () Bool)

(assert (=> b!944885 (= e!612486 tp_is_empty!4829)))

(declare-fun b!944886 () Bool)

(declare-fun tp!291787 () Bool)

(declare-fun tp!291783 () Bool)

(assert (=> b!944886 (= e!612486 (and tp!291787 tp!291783))))

(declare-fun b!944887 () Bool)

(declare-fun tp!291785 () Bool)

(assert (=> b!944887 (= e!612486 tp!291785)))

(declare-fun b!944888 () Bool)

(declare-fun tp!291784 () Bool)

(declare-fun tp!291786 () Bool)

(assert (=> b!944888 (= e!612486 (and tp!291784 tp!291786))))

(assert (= (and b!944283 ((_ is ElementMatch!2593) (regTwo!5698 r!15766))) b!944885))

(assert (= (and b!944283 ((_ is Concat!4426) (regTwo!5698 r!15766))) b!944886))

(assert (= (and b!944283 ((_ is Star!2593) (regTwo!5698 r!15766))) b!944887))

(assert (= (and b!944283 ((_ is Union!2593) (regTwo!5698 r!15766))) b!944888))

(declare-fun b!944893 () Bool)

(declare-fun e!612489 () Bool)

(declare-fun tp!291790 () Bool)

(assert (=> b!944893 (= e!612489 (and tp_is_empty!4829 tp!291790))))

(assert (=> b!944275 (= tp!291724 e!612489)))

(assert (= (and b!944275 ((_ is Cons!9807) (t!100869 s!10566))) b!944893))

(declare-fun e!612490 () Bool)

(assert (=> b!944280 (= tp!291722 e!612490)))

(declare-fun b!944894 () Bool)

(assert (=> b!944894 (= e!612490 tp_is_empty!4829)))

(declare-fun b!944895 () Bool)

(declare-fun tp!291795 () Bool)

(declare-fun tp!291791 () Bool)

(assert (=> b!944895 (= e!612490 (and tp!291795 tp!291791))))

(declare-fun b!944896 () Bool)

(declare-fun tp!291793 () Bool)

(assert (=> b!944896 (= e!612490 tp!291793)))

(declare-fun b!944897 () Bool)

(declare-fun tp!291792 () Bool)

(declare-fun tp!291794 () Bool)

(assert (=> b!944897 (= e!612490 (and tp!291792 tp!291794))))

(assert (= (and b!944280 ((_ is ElementMatch!2593) (regOne!5699 r!15766))) b!944894))

(assert (= (and b!944280 ((_ is Concat!4426) (regOne!5699 r!15766))) b!944895))

(assert (= (and b!944280 ((_ is Star!2593) (regOne!5699 r!15766))) b!944896))

(assert (= (and b!944280 ((_ is Union!2593) (regOne!5699 r!15766))) b!944897))

(declare-fun e!612491 () Bool)

(assert (=> b!944280 (= tp!291723 e!612491)))

(declare-fun b!944898 () Bool)

(assert (=> b!944898 (= e!612491 tp_is_empty!4829)))

(declare-fun b!944899 () Bool)

(declare-fun tp!291800 () Bool)

(declare-fun tp!291796 () Bool)

(assert (=> b!944899 (= e!612491 (and tp!291800 tp!291796))))

(declare-fun b!944900 () Bool)

(declare-fun tp!291798 () Bool)

(assert (=> b!944900 (= e!612491 tp!291798)))

(declare-fun b!944901 () Bool)

(declare-fun tp!291797 () Bool)

(declare-fun tp!291799 () Bool)

(assert (=> b!944901 (= e!612491 (and tp!291797 tp!291799))))

(assert (= (and b!944280 ((_ is ElementMatch!2593) (regTwo!5699 r!15766))) b!944898))

(assert (= (and b!944280 ((_ is Concat!4426) (regTwo!5699 r!15766))) b!944899))

(assert (= (and b!944280 ((_ is Star!2593) (regTwo!5699 r!15766))) b!944900))

(assert (= (and b!944280 ((_ is Union!2593) (regTwo!5699 r!15766))) b!944901))

(check-sat (not b!944601) (not b!944887) (not d!282998) (not b!944830) (not b!944607) (not b!944356) (not b!944882) (not b!944879) (not b!944361) (not b!944819) (not d!283022) (not b!944602) (not b!944841) (not bm!58984) (not b!944446) (not b!944357) (not b!944878) (not b!944445) (not bm!59017) (not d!282986) (not b!944855) (not b!944860) (not bm!59032) (not b!944443) (not b!944362) (not b!944730) (not bm!59031) (not b!944886) (not b!944806) (not b!944900) (not b!944727) (not bm!59020) tp_is_empty!4829 (not b!944438) (not d!282962) (not b!944842) (not b!944897) (not b!944866) (not b!944851) (not b!944606) (not b!944883) (not b!944731) (not b!944368) (not b!944880) (not bm!59057) (not b!944724) (not b!944729) (not b!944811) (not b!944895) (not bm!59053) (not b!944896) (not bm!59054) (not d!282976) (not b!944829) (not b!944859) (not d!282984) (not bm!59023) (not b!944732) (not b!944888) (not d!283038) (not d!283054) (not b!944610) (not d!282964) (not d!283042) (not bm!59055) (not b!944893) (not b!944838) (not d!283014) (not bm!58988) (not d!282960) (not b!944899) (not b!944444) (not b!944834) (not d!283040) (not b!944308) (not b!944807) (not b!944835) (not b!944863) (not d!283026) (not b!944365) (not d!283046) (not d!282992) (not b!944700) (not b!944854) (not b!944815) (not b!944578) (not b!944901) (not d!283024) (not b!944709) (not b!944818) (not d!282950) (not bm!59060) (not d!283018) (not bm!59059) (not b!944441) (not bm!59058) (not b!944812) (not b!944884) (not d!282974) (not bm!58983) (not d!283052) (not b!944613))
(check-sat)
