; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!79356 () Bool)

(assert start!79356)

(declare-fun b!878085 () Bool)

(assert (=> b!878085 true))

(assert (=> b!878085 true))

(declare-fun lambda!26658 () Int)

(declare-fun lambda!26657 () Int)

(assert (=> b!878085 (not (= lambda!26658 lambda!26657))))

(assert (=> b!878085 true))

(assert (=> b!878085 true))

(declare-fun b!878080 () Bool)

(declare-fun e!576835 () Bool)

(declare-fun tp!277581 () Bool)

(declare-fun tp!277580 () Bool)

(assert (=> b!878080 (= e!576835 (and tp!277581 tp!277580))))

(declare-fun b!878081 () Bool)

(declare-fun res!399267 () Bool)

(declare-fun e!576832 () Bool)

(assert (=> b!878081 (=> res!399267 e!576832)))

(declare-datatypes ((C!5046 0))(
  ( (C!5047 (val!2771 Int)) )
))
(declare-datatypes ((List!9468 0))(
  ( (Nil!9452) (Cons!9452 (h!14853 C!5046) (t!100514 List!9468)) )
))
(declare-fun s!10566 () List!9468)

(declare-fun isEmpty!5643 (List!9468) Bool)

(assert (=> b!878081 (= res!399267 (isEmpty!5643 s!10566))))

(declare-fun b!878082 () Bool)

(declare-fun res!399265 () Bool)

(declare-fun e!576833 () Bool)

(assert (=> b!878082 (=> res!399265 e!576833)))

(assert (=> b!878082 (= res!399265 false)))

(declare-fun b!878083 () Bool)

(declare-fun ++!2457 (List!9468 List!9468) List!9468)

(assert (=> b!878083 (= e!576833 (= (++!2457 Nil!9452 s!10566) s!10566))))

(declare-fun b!878084 () Bool)

(declare-fun tp!277577 () Bool)

(assert (=> b!878084 (= e!576835 tp!277577)))

(assert (=> b!878085 (= e!576832 e!576833)))

(declare-fun res!399264 () Bool)

(assert (=> b!878085 (=> res!399264 e!576833)))

(declare-datatypes ((Regex!2238 0))(
  ( (ElementMatch!2238 (c!141973 C!5046)) (Concat!4071 (regOne!4988 Regex!2238) (regTwo!4988 Regex!2238)) (EmptyExpr!2238) (Star!2238 (reg!2567 Regex!2238)) (EmptyLang!2238) (Union!2238 (regOne!4989 Regex!2238) (regTwo!4989 Regex!2238)) )
))
(declare-fun r!15766 () Regex!2238)

(declare-fun validRegex!707 (Regex!2238) Bool)

(assert (=> b!878085 (= res!399264 (not (validRegex!707 (regOne!4988 r!15766))))))

(declare-fun Exists!35 (Int) Bool)

(assert (=> b!878085 (= (Exists!35 lambda!26657) (Exists!35 lambda!26658))))

(declare-datatypes ((Unit!14055 0))(
  ( (Unit!14056) )
))
(declare-fun lt!330131 () Unit!14055)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!27 (Regex!2238 Regex!2238 List!9468) Unit!14055)

(assert (=> b!878085 (= lt!330131 (lemmaExistCutMatchRandMatchRSpecEquivalent!27 (regOne!4988 r!15766) EmptyExpr!2238 s!10566))))

(declare-datatypes ((tuple2!10566 0))(
  ( (tuple2!10567 (_1!6109 List!9468) (_2!6109 List!9468)) )
))
(declare-datatypes ((Option!1925 0))(
  ( (None!1924) (Some!1924 (v!19341 tuple2!10566)) )
))
(declare-fun isDefined!1567 (Option!1925) Bool)

(declare-fun findConcatSeparation!31 (Regex!2238 Regex!2238 List!9468 List!9468 List!9468) Option!1925)

(assert (=> b!878085 (= (isDefined!1567 (findConcatSeparation!31 (regOne!4988 r!15766) EmptyExpr!2238 Nil!9452 s!10566 s!10566)) (Exists!35 lambda!26657))))

(declare-fun lt!330129 () Unit!14055)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!31 (Regex!2238 Regex!2238 List!9468) Unit!14055)

(assert (=> b!878085 (= lt!330129 (lemmaFindConcatSeparationEquivalentToExists!31 (regOne!4988 r!15766) EmptyExpr!2238 s!10566))))

(declare-fun b!878086 () Bool)

(declare-fun e!576836 () Bool)

(assert (=> b!878086 (= e!576836 (not e!576832))))

(declare-fun res!399263 () Bool)

(assert (=> b!878086 (=> res!399263 e!576832)))

(declare-fun lt!330130 () Bool)

(assert (=> b!878086 (= res!399263 (or (not lt!330130) (and (is-Concat!4071 r!15766) (is-EmptyExpr!2238 (regOne!4988 r!15766))) (not (is-Concat!4071 r!15766)) (not (is-EmptyExpr!2238 (regTwo!4988 r!15766)))))))

(declare-fun matchRSpec!39 (Regex!2238 List!9468) Bool)

(assert (=> b!878086 (= lt!330130 (matchRSpec!39 r!15766 s!10566))))

(declare-fun matchR!776 (Regex!2238 List!9468) Bool)

(assert (=> b!878086 (= lt!330130 (matchR!776 r!15766 s!10566))))

(declare-fun lt!330128 () Unit!14055)

(declare-fun mainMatchTheorem!39 (Regex!2238 List!9468) Unit!14055)

(assert (=> b!878086 (= lt!330128 (mainMatchTheorem!39 r!15766 s!10566))))

(declare-fun b!878087 () Bool)

(declare-fun tp_is_empty!4119 () Bool)

(assert (=> b!878087 (= e!576835 tp_is_empty!4119)))

(declare-fun res!399266 () Bool)

(assert (=> start!79356 (=> (not res!399266) (not e!576836))))

(assert (=> start!79356 (= res!399266 (validRegex!707 r!15766))))

(assert (=> start!79356 e!576836))

(assert (=> start!79356 e!576835))

(declare-fun e!576834 () Bool)

(assert (=> start!79356 e!576834))

(declare-fun b!878088 () Bool)

(declare-fun tp!277578 () Bool)

(assert (=> b!878088 (= e!576834 (and tp_is_empty!4119 tp!277578))))

(declare-fun b!878089 () Bool)

(declare-fun tp!277582 () Bool)

(declare-fun tp!277579 () Bool)

(assert (=> b!878089 (= e!576835 (and tp!277582 tp!277579))))

(assert (= (and start!79356 res!399266) b!878086))

(assert (= (and b!878086 (not res!399263)) b!878081))

(assert (= (and b!878081 (not res!399267)) b!878085))

(assert (= (and b!878085 (not res!399264)) b!878082))

(assert (= (and b!878082 (not res!399265)) b!878083))

(assert (= (and start!79356 (is-ElementMatch!2238 r!15766)) b!878087))

(assert (= (and start!79356 (is-Concat!4071 r!15766)) b!878089))

(assert (= (and start!79356 (is-Star!2238 r!15766)) b!878084))

(assert (= (and start!79356 (is-Union!2238 r!15766)) b!878080))

(assert (= (and start!79356 (is-Cons!9452 s!10566)) b!878088))

(declare-fun m!1127957 () Bool)

(assert (=> b!878085 m!1127957))

(declare-fun m!1127959 () Bool)

(assert (=> b!878085 m!1127959))

(declare-fun m!1127961 () Bool)

(assert (=> b!878085 m!1127961))

(declare-fun m!1127963 () Bool)

(assert (=> b!878085 m!1127963))

(declare-fun m!1127965 () Bool)

(assert (=> b!878085 m!1127965))

(declare-fun m!1127967 () Bool)

(assert (=> b!878085 m!1127967))

(declare-fun m!1127969 () Bool)

(assert (=> b!878085 m!1127969))

(assert (=> b!878085 m!1127965))

(assert (=> b!878085 m!1127967))

(declare-fun m!1127971 () Bool)

(assert (=> start!79356 m!1127971))

(declare-fun m!1127973 () Bool)

(assert (=> b!878086 m!1127973))

(declare-fun m!1127975 () Bool)

(assert (=> b!878086 m!1127975))

(declare-fun m!1127977 () Bool)

(assert (=> b!878086 m!1127977))

(declare-fun m!1127979 () Bool)

(assert (=> b!878081 m!1127979))

(declare-fun m!1127981 () Bool)

(assert (=> b!878083 m!1127981))

(push 1)

(assert (not b!878080))

(assert (not b!878081))

(assert (not start!79356))

(assert (not b!878088))

(assert (not b!878084))

(assert (not b!878089))

(assert (not b!878083))

(assert tp_is_empty!4119)

(assert (not b!878085))

(assert (not b!878086))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!878150 () Bool)

(declare-fun res!399300 () Bool)

(declare-fun e!576863 () Bool)

(assert (=> b!878150 (=> (not res!399300) (not e!576863))))

(declare-fun lt!330146 () List!9468)

(declare-fun size!7849 (List!9468) Int)

(assert (=> b!878150 (= res!399300 (= (size!7849 lt!330146) (+ (size!7849 Nil!9452) (size!7849 s!10566))))))

(declare-fun b!878151 () Bool)

(assert (=> b!878151 (= e!576863 (or (not (= s!10566 Nil!9452)) (= lt!330146 Nil!9452)))))

(declare-fun b!878148 () Bool)

(declare-fun e!576862 () List!9468)

(assert (=> b!878148 (= e!576862 s!10566)))

(declare-fun b!878149 () Bool)

(assert (=> b!878149 (= e!576862 (Cons!9452 (h!14853 Nil!9452) (++!2457 (t!100514 Nil!9452) s!10566)))))

(declare-fun d!276059 () Bool)

(assert (=> d!276059 e!576863))

(declare-fun res!399299 () Bool)

(assert (=> d!276059 (=> (not res!399299) (not e!576863))))

(declare-fun content!1370 (List!9468) (Set C!5046))

(assert (=> d!276059 (= res!399299 (= (content!1370 lt!330146) (set.union (content!1370 Nil!9452) (content!1370 s!10566))))))

(assert (=> d!276059 (= lt!330146 e!576862)))

(declare-fun c!141977 () Bool)

(assert (=> d!276059 (= c!141977 (is-Nil!9452 Nil!9452))))

(assert (=> d!276059 (= (++!2457 Nil!9452 s!10566) lt!330146)))

(assert (= (and d!276059 c!141977) b!878148))

(assert (= (and d!276059 (not c!141977)) b!878149))

(assert (= (and d!276059 res!399299) b!878150))

(assert (= (and b!878150 res!399300) b!878151))

(declare-fun m!1128009 () Bool)

(assert (=> b!878150 m!1128009))

(declare-fun m!1128011 () Bool)

(assert (=> b!878150 m!1128011))

(declare-fun m!1128013 () Bool)

(assert (=> b!878150 m!1128013))

(declare-fun m!1128015 () Bool)

(assert (=> b!878149 m!1128015))

(declare-fun m!1128017 () Bool)

(assert (=> d!276059 m!1128017))

(declare-fun m!1128019 () Bool)

(assert (=> d!276059 m!1128019))

(declare-fun m!1128021 () Bool)

(assert (=> d!276059 m!1128021))

(assert (=> b!878083 d!276059))

(declare-fun d!276061 () Bool)

(assert (=> d!276061 (= (isEmpty!5643 s!10566) (is-Nil!9452 s!10566))))

(assert (=> b!878081 d!276061))

(declare-fun bm!51155 () Bool)

(declare-fun call!51160 () Bool)

(declare-fun c!141982 () Bool)

(assert (=> bm!51155 (= call!51160 (validRegex!707 (ite c!141982 (regTwo!4989 r!15766) (regTwo!4988 r!15766))))))

(declare-fun b!878170 () Bool)

(declare-fun e!576883 () Bool)

(declare-fun e!576880 () Bool)

(assert (=> b!878170 (= e!576883 e!576880)))

(declare-fun res!399313 () Bool)

(assert (=> b!878170 (=> (not res!399313) (not e!576880))))

(declare-fun call!51162 () Bool)

(assert (=> b!878170 (= res!399313 call!51162)))

(declare-fun b!878171 () Bool)

(declare-fun e!576879 () Bool)

(declare-fun e!576881 () Bool)

(assert (=> b!878171 (= e!576879 e!576881)))

(declare-fun c!141983 () Bool)

(assert (=> b!878171 (= c!141983 (is-Star!2238 r!15766))))

(declare-fun b!878173 () Bool)

(declare-fun e!576884 () Bool)

(assert (=> b!878173 (= e!576884 call!51160)))

(declare-fun b!878174 () Bool)

(declare-fun res!399314 () Bool)

(assert (=> b!878174 (=> (not res!399314) (not e!576884))))

(assert (=> b!878174 (= res!399314 call!51162)))

(declare-fun e!576882 () Bool)

(assert (=> b!878174 (= e!576882 e!576884)))

(declare-fun bm!51156 () Bool)

(declare-fun call!51161 () Bool)

(assert (=> bm!51156 (= call!51162 call!51161)))

(declare-fun b!878175 () Bool)

(declare-fun res!399315 () Bool)

(assert (=> b!878175 (=> res!399315 e!576883)))

(assert (=> b!878175 (= res!399315 (not (is-Concat!4071 r!15766)))))

(assert (=> b!878175 (= e!576882 e!576883)))

(declare-fun b!878176 () Bool)

(assert (=> b!878176 (= e!576881 e!576882)))

(assert (=> b!878176 (= c!141982 (is-Union!2238 r!15766))))

(declare-fun bm!51157 () Bool)

(assert (=> bm!51157 (= call!51161 (validRegex!707 (ite c!141983 (reg!2567 r!15766) (ite c!141982 (regOne!4989 r!15766) (regOne!4988 r!15766)))))))

(declare-fun d!276063 () Bool)

(declare-fun res!399312 () Bool)

(assert (=> d!276063 (=> res!399312 e!576879)))

(assert (=> d!276063 (= res!399312 (is-ElementMatch!2238 r!15766))))

(assert (=> d!276063 (= (validRegex!707 r!15766) e!576879)))

(declare-fun b!878172 () Bool)

(declare-fun e!576878 () Bool)

(assert (=> b!878172 (= e!576881 e!576878)))

(declare-fun res!399311 () Bool)

(declare-fun nullable!563 (Regex!2238) Bool)

(assert (=> b!878172 (= res!399311 (not (nullable!563 (reg!2567 r!15766))))))

(assert (=> b!878172 (=> (not res!399311) (not e!576878))))

(declare-fun b!878177 () Bool)

(assert (=> b!878177 (= e!576880 call!51160)))

(declare-fun b!878178 () Bool)

(assert (=> b!878178 (= e!576878 call!51161)))

(assert (= (and d!276063 (not res!399312)) b!878171))

(assert (= (and b!878171 c!141983) b!878172))

(assert (= (and b!878171 (not c!141983)) b!878176))

(assert (= (and b!878172 res!399311) b!878178))

(assert (= (and b!878176 c!141982) b!878174))

(assert (= (and b!878176 (not c!141982)) b!878175))

(assert (= (and b!878174 res!399314) b!878173))

(assert (= (and b!878175 (not res!399315)) b!878170))

(assert (= (and b!878170 res!399313) b!878177))

(assert (= (or b!878173 b!878177) bm!51155))

(assert (= (or b!878174 b!878170) bm!51156))

(assert (= (or b!878178 bm!51156) bm!51157))

(declare-fun m!1128023 () Bool)

(assert (=> bm!51155 m!1128023))

(declare-fun m!1128025 () Bool)

(assert (=> bm!51157 m!1128025))

(declare-fun m!1128027 () Bool)

(assert (=> b!878172 m!1128027))

(assert (=> start!79356 d!276063))

(declare-fun bs!234204 () Bool)

(declare-fun b!878229 () Bool)

(assert (= bs!234204 (and b!878229 b!878085)))

(declare-fun lambda!26671 () Int)

(assert (=> bs!234204 (not (= lambda!26671 lambda!26657))))

(assert (=> bs!234204 (not (= lambda!26671 lambda!26658))))

(assert (=> b!878229 true))

(assert (=> b!878229 true))

(declare-fun bs!234205 () Bool)

(declare-fun b!878231 () Bool)

(assert (= bs!234205 (and b!878231 b!878085)))

(declare-fun lambda!26672 () Int)

(assert (=> bs!234205 (not (= lambda!26672 lambda!26657))))

(assert (=> bs!234205 (= (= (regTwo!4988 r!15766) EmptyExpr!2238) (= lambda!26672 lambda!26658))))

(declare-fun bs!234206 () Bool)

(assert (= bs!234206 (and b!878231 b!878229)))

(assert (=> bs!234206 (not (= lambda!26672 lambda!26671))))

(assert (=> b!878231 true))

(assert (=> b!878231 true))

(declare-fun b!878223 () Bool)

(declare-fun e!576915 () Bool)

(assert (=> b!878223 (= e!576915 (matchRSpec!39 (regTwo!4989 r!15766) s!10566))))

(declare-fun b!878224 () Bool)

(declare-fun c!141996 () Bool)

(assert (=> b!878224 (= c!141996 (is-Union!2238 r!15766))))

(declare-fun e!576912 () Bool)

(declare-fun e!576911 () Bool)

(assert (=> b!878224 (= e!576912 e!576911)))

(declare-fun b!878225 () Bool)

(declare-fun res!399339 () Bool)

(declare-fun e!576914 () Bool)

(assert (=> b!878225 (=> res!399339 e!576914)))

(declare-fun call!51167 () Bool)

(assert (=> b!878225 (= res!399339 call!51167)))

(declare-fun e!576913 () Bool)

(assert (=> b!878225 (= e!576913 e!576914)))

(declare-fun b!878226 () Bool)

(assert (=> b!878226 (= e!576911 e!576915)))

(declare-fun res!399340 () Bool)

(assert (=> b!878226 (= res!399340 (matchRSpec!39 (regOne!4989 r!15766) s!10566))))

(assert (=> b!878226 (=> res!399340 e!576915)))

(declare-fun bm!51162 () Bool)

(assert (=> bm!51162 (= call!51167 (isEmpty!5643 s!10566))))

(declare-fun bm!51163 () Bool)

(declare-fun call!51168 () Bool)

(declare-fun c!141995 () Bool)

(assert (=> bm!51163 (= call!51168 (Exists!35 (ite c!141995 lambda!26671 lambda!26672)))))

(declare-fun b!878227 () Bool)

(declare-fun e!576909 () Bool)

(declare-fun e!576910 () Bool)

(assert (=> b!878227 (= e!576909 e!576910)))

(declare-fun res!399338 () Bool)

(assert (=> b!878227 (= res!399338 (not (is-EmptyLang!2238 r!15766)))))

(assert (=> b!878227 (=> (not res!399338) (not e!576910))))

(declare-fun d!276065 () Bool)

(declare-fun c!141998 () Bool)

(assert (=> d!276065 (= c!141998 (is-EmptyExpr!2238 r!15766))))

(assert (=> d!276065 (= (matchRSpec!39 r!15766 s!10566) e!576909)))

(declare-fun b!878228 () Bool)

(declare-fun c!141997 () Bool)

(assert (=> b!878228 (= c!141997 (is-ElementMatch!2238 r!15766))))

(assert (=> b!878228 (= e!576910 e!576912)))

(assert (=> b!878229 (= e!576914 call!51168)))

(declare-fun b!878230 () Bool)

(assert (=> b!878230 (= e!576911 e!576913)))

(assert (=> b!878230 (= c!141995 (is-Star!2238 r!15766))))

(assert (=> b!878231 (= e!576913 call!51168)))

(declare-fun b!878232 () Bool)

(assert (=> b!878232 (= e!576912 (= s!10566 (Cons!9452 (c!141973 r!15766) Nil!9452)))))

(declare-fun b!878233 () Bool)

(assert (=> b!878233 (= e!576909 call!51167)))

(assert (= (and d!276065 c!141998) b!878233))

(assert (= (and d!276065 (not c!141998)) b!878227))

(assert (= (and b!878227 res!399338) b!878228))

(assert (= (and b!878228 c!141997) b!878232))

(assert (= (and b!878228 (not c!141997)) b!878224))

(assert (= (and b!878224 c!141996) b!878226))

(assert (= (and b!878224 (not c!141996)) b!878230))

(assert (= (and b!878226 (not res!399340)) b!878223))

(assert (= (and b!878230 c!141995) b!878225))

(assert (= (and b!878230 (not c!141995)) b!878231))

(assert (= (and b!878225 (not res!399339)) b!878229))

(assert (= (or b!878229 b!878231) bm!51163))

(assert (= (or b!878233 b!878225) bm!51162))

(declare-fun m!1128045 () Bool)

(assert (=> b!878223 m!1128045))

(declare-fun m!1128047 () Bool)

(assert (=> b!878226 m!1128047))

(assert (=> bm!51162 m!1127979))

(declare-fun m!1128049 () Bool)

(assert (=> bm!51163 m!1128049))

(assert (=> b!878086 d!276065))

(declare-fun b!878280 () Bool)

(declare-fun e!576944 () Bool)

(declare-fun lt!330152 () Bool)

(declare-fun call!51177 () Bool)

(assert (=> b!878280 (= e!576944 (= lt!330152 call!51177))))

(declare-fun b!878281 () Bool)

(declare-fun res!399367 () Bool)

(declare-fun e!576949 () Bool)

(assert (=> b!878281 (=> (not res!399367) (not e!576949))))

(assert (=> b!878281 (= res!399367 (not call!51177))))

(declare-fun b!878282 () Bool)

(declare-fun res!399372 () Bool)

(assert (=> b!878282 (=> (not res!399372) (not e!576949))))

(declare-fun tail!1092 (List!9468) List!9468)

(assert (=> b!878282 (= res!399372 (isEmpty!5643 (tail!1092 s!10566)))))

(declare-fun b!878283 () Bool)

(declare-fun e!576950 () Bool)

(declare-fun head!1530 (List!9468) C!5046)

(assert (=> b!878283 (= e!576950 (not (= (head!1530 s!10566) (c!141973 r!15766))))))

(declare-fun b!878284 () Bool)

(declare-fun res!399370 () Bool)

(declare-fun e!576946 () Bool)

(assert (=> b!878284 (=> res!399370 e!576946)))

(assert (=> b!878284 (= res!399370 (not (is-ElementMatch!2238 r!15766)))))

(declare-fun e!576947 () Bool)

(assert (=> b!878284 (= e!576947 e!576946)))

(declare-fun bm!51172 () Bool)

(assert (=> bm!51172 (= call!51177 (isEmpty!5643 s!10566))))

(declare-fun b!878285 () Bool)

(assert (=> b!878285 (= e!576949 (= (head!1530 s!10566) (c!141973 r!15766)))))

(declare-fun b!878286 () Bool)

(assert (=> b!878286 (= e!576944 e!576947)))

(declare-fun c!142009 () Bool)

(assert (=> b!878286 (= c!142009 (is-EmptyLang!2238 r!15766))))

(declare-fun b!878288 () Bool)

(declare-fun res!399371 () Bool)

(assert (=> b!878288 (=> res!399371 e!576946)))

(assert (=> b!878288 (= res!399371 e!576949)))

(declare-fun res!399369 () Bool)

(assert (=> b!878288 (=> (not res!399369) (not e!576949))))

(assert (=> b!878288 (= res!399369 lt!330152)))

(declare-fun b!878289 () Bool)

(declare-fun e!576945 () Bool)

(declare-fun derivativeStep!377 (Regex!2238 C!5046) Regex!2238)

(assert (=> b!878289 (= e!576945 (matchR!776 (derivativeStep!377 r!15766 (head!1530 s!10566)) (tail!1092 s!10566)))))

(declare-fun b!878290 () Bool)

(declare-fun res!399374 () Bool)

(assert (=> b!878290 (=> res!399374 e!576950)))

(assert (=> b!878290 (= res!399374 (not (isEmpty!5643 (tail!1092 s!10566))))))

(declare-fun b!878291 () Bool)

(declare-fun e!576948 () Bool)

(assert (=> b!878291 (= e!576948 e!576950)))

(declare-fun res!399368 () Bool)

(assert (=> b!878291 (=> res!399368 e!576950)))

(assert (=> b!878291 (= res!399368 call!51177)))

(declare-fun b!878292 () Bool)

(assert (=> b!878292 (= e!576947 (not lt!330152))))

(declare-fun b!878293 () Bool)

(assert (=> b!878293 (= e!576945 (nullable!563 r!15766))))

(declare-fun d!276073 () Bool)

(assert (=> d!276073 e!576944))

(declare-fun c!142010 () Bool)

(assert (=> d!276073 (= c!142010 (is-EmptyExpr!2238 r!15766))))

(assert (=> d!276073 (= lt!330152 e!576945)))

(declare-fun c!142011 () Bool)

(assert (=> d!276073 (= c!142011 (isEmpty!5643 s!10566))))

(assert (=> d!276073 (validRegex!707 r!15766)))

(assert (=> d!276073 (= (matchR!776 r!15766 s!10566) lt!330152)))

(declare-fun b!878287 () Bool)

(assert (=> b!878287 (= e!576946 e!576948)))

(declare-fun res!399373 () Bool)

(assert (=> b!878287 (=> (not res!399373) (not e!576948))))

(assert (=> b!878287 (= res!399373 (not lt!330152))))

(assert (= (and d!276073 c!142011) b!878293))

(assert (= (and d!276073 (not c!142011)) b!878289))

(assert (= (and d!276073 c!142010) b!878280))

(assert (= (and d!276073 (not c!142010)) b!878286))

(assert (= (and b!878286 c!142009) b!878292))

(assert (= (and b!878286 (not c!142009)) b!878284))

(assert (= (and b!878284 (not res!399370)) b!878288))

(assert (= (and b!878288 res!399369) b!878281))

(assert (= (and b!878281 res!399367) b!878282))

(assert (= (and b!878282 res!399372) b!878285))

(assert (= (and b!878288 (not res!399371)) b!878287))

(assert (= (and b!878287 res!399373) b!878291))

(assert (= (and b!878291 (not res!399368)) b!878290))

(assert (= (and b!878290 (not res!399374)) b!878283))

(assert (= (or b!878280 b!878281 b!878291) bm!51172))

(assert (=> d!276073 m!1127979))

(assert (=> d!276073 m!1127971))

(declare-fun m!1128051 () Bool)

(assert (=> b!878289 m!1128051))

(assert (=> b!878289 m!1128051))

(declare-fun m!1128053 () Bool)

(assert (=> b!878289 m!1128053))

(declare-fun m!1128055 () Bool)

(assert (=> b!878289 m!1128055))

(assert (=> b!878289 m!1128053))

(assert (=> b!878289 m!1128055))

(declare-fun m!1128057 () Bool)

(assert (=> b!878289 m!1128057))

(assert (=> b!878285 m!1128051))

(assert (=> b!878283 m!1128051))

(declare-fun m!1128059 () Bool)

(assert (=> b!878293 m!1128059))

(assert (=> b!878282 m!1128055))

(assert (=> b!878282 m!1128055))

(declare-fun m!1128061 () Bool)

(assert (=> b!878282 m!1128061))

(assert (=> b!878290 m!1128055))

(assert (=> b!878290 m!1128055))

(assert (=> b!878290 m!1128061))

(assert (=> bm!51172 m!1127979))

(assert (=> b!878086 d!276073))

(declare-fun d!276075 () Bool)

(assert (=> d!276075 (= (matchR!776 r!15766 s!10566) (matchRSpec!39 r!15766 s!10566))))

(declare-fun lt!330155 () Unit!14055)

(declare-fun choose!5179 (Regex!2238 List!9468) Unit!14055)

(assert (=> d!276075 (= lt!330155 (choose!5179 r!15766 s!10566))))

(assert (=> d!276075 (validRegex!707 r!15766)))

(assert (=> d!276075 (= (mainMatchTheorem!39 r!15766 s!10566) lt!330155)))

(declare-fun bs!234208 () Bool)

(assert (= bs!234208 d!276075))

(assert (=> bs!234208 m!1127975))

(assert (=> bs!234208 m!1127973))

(declare-fun m!1128068 () Bool)

(assert (=> bs!234208 m!1128068))

(assert (=> bs!234208 m!1127971))

(assert (=> b!878086 d!276075))

(declare-fun d!276077 () Bool)

(declare-fun isEmpty!5645 (Option!1925) Bool)

(assert (=> d!276077 (= (isDefined!1567 (findConcatSeparation!31 (regOne!4988 r!15766) EmptyExpr!2238 Nil!9452 s!10566 s!10566)) (not (isEmpty!5645 (findConcatSeparation!31 (regOne!4988 r!15766) EmptyExpr!2238 Nil!9452 s!10566 s!10566))))))

(declare-fun bs!234209 () Bool)

(assert (= bs!234209 d!276077))

(assert (=> bs!234209 m!1127967))

(declare-fun m!1128071 () Bool)

(assert (=> bs!234209 m!1128071))

(assert (=> b!878085 d!276077))

(declare-fun bm!51176 () Bool)

(declare-fun call!51181 () Bool)

(declare-fun c!142014 () Bool)

(assert (=> bm!51176 (= call!51181 (validRegex!707 (ite c!142014 (regTwo!4989 (regOne!4988 r!15766)) (regTwo!4988 (regOne!4988 r!15766)))))))

(declare-fun b!878303 () Bool)

(declare-fun e!576963 () Bool)

(declare-fun e!576960 () Bool)

(assert (=> b!878303 (= e!576963 e!576960)))

(declare-fun res!399382 () Bool)

(assert (=> b!878303 (=> (not res!399382) (not e!576960))))

(declare-fun call!51183 () Bool)

(assert (=> b!878303 (= res!399382 call!51183)))

(declare-fun b!878304 () Bool)

(declare-fun e!576959 () Bool)

(declare-fun e!576961 () Bool)

(assert (=> b!878304 (= e!576959 e!576961)))

(declare-fun c!142015 () Bool)

(assert (=> b!878304 (= c!142015 (is-Star!2238 (regOne!4988 r!15766)))))

(declare-fun b!878306 () Bool)

(declare-fun e!576964 () Bool)

(assert (=> b!878306 (= e!576964 call!51181)))

(declare-fun b!878307 () Bool)

(declare-fun res!399383 () Bool)

(assert (=> b!878307 (=> (not res!399383) (not e!576964))))

(assert (=> b!878307 (= res!399383 call!51183)))

(declare-fun e!576962 () Bool)

(assert (=> b!878307 (= e!576962 e!576964)))

(declare-fun bm!51177 () Bool)

(declare-fun call!51182 () Bool)

(assert (=> bm!51177 (= call!51183 call!51182)))

(declare-fun b!878308 () Bool)

(declare-fun res!399384 () Bool)

(assert (=> b!878308 (=> res!399384 e!576963)))

(assert (=> b!878308 (= res!399384 (not (is-Concat!4071 (regOne!4988 r!15766))))))

(assert (=> b!878308 (= e!576962 e!576963)))

(declare-fun b!878309 () Bool)

(assert (=> b!878309 (= e!576961 e!576962)))

(assert (=> b!878309 (= c!142014 (is-Union!2238 (regOne!4988 r!15766)))))

(declare-fun bm!51178 () Bool)

(assert (=> bm!51178 (= call!51182 (validRegex!707 (ite c!142015 (reg!2567 (regOne!4988 r!15766)) (ite c!142014 (regOne!4989 (regOne!4988 r!15766)) (regOne!4988 (regOne!4988 r!15766))))))))

(declare-fun d!276081 () Bool)

(declare-fun res!399381 () Bool)

(assert (=> d!276081 (=> res!399381 e!576959)))

(assert (=> d!276081 (= res!399381 (is-ElementMatch!2238 (regOne!4988 r!15766)))))

(assert (=> d!276081 (= (validRegex!707 (regOne!4988 r!15766)) e!576959)))

(declare-fun b!878305 () Bool)

(declare-fun e!576958 () Bool)

(assert (=> b!878305 (= e!576961 e!576958)))

(declare-fun res!399380 () Bool)

(assert (=> b!878305 (= res!399380 (not (nullable!563 (reg!2567 (regOne!4988 r!15766)))))))

(assert (=> b!878305 (=> (not res!399380) (not e!576958))))

(declare-fun b!878310 () Bool)

(assert (=> b!878310 (= e!576960 call!51181)))

(declare-fun b!878311 () Bool)

(assert (=> b!878311 (= e!576958 call!51182)))

(assert (= (and d!276081 (not res!399381)) b!878304))

(assert (= (and b!878304 c!142015) b!878305))

(assert (= (and b!878304 (not c!142015)) b!878309))

(assert (= (and b!878305 res!399380) b!878311))

(assert (= (and b!878309 c!142014) b!878307))

(assert (= (and b!878309 (not c!142014)) b!878308))

(assert (= (and b!878307 res!399383) b!878306))

(assert (= (and b!878308 (not res!399384)) b!878303))

(assert (= (and b!878303 res!399382) b!878310))

(assert (= (or b!878306 b!878310) bm!51176))

(assert (= (or b!878307 b!878303) bm!51177))

(assert (= (or b!878311 bm!51177) bm!51178))

(declare-fun m!1128073 () Bool)

(assert (=> bm!51176 m!1128073))

(declare-fun m!1128075 () Bool)

(assert (=> bm!51178 m!1128075))

(declare-fun m!1128077 () Bool)

(assert (=> b!878305 m!1128077))

(assert (=> b!878085 d!276081))

(declare-fun b!878330 () Bool)

(declare-fun e!576977 () Option!1925)

(declare-fun e!576978 () Option!1925)

(assert (=> b!878330 (= e!576977 e!576978)))

(declare-fun c!142021 () Bool)

(assert (=> b!878330 (= c!142021 (is-Nil!9452 s!10566))))

(declare-fun b!878331 () Bool)

(declare-fun res!399397 () Bool)

(declare-fun e!576975 () Bool)

(assert (=> b!878331 (=> (not res!399397) (not e!576975))))

(declare-fun lt!330163 () Option!1925)

(declare-fun get!2916 (Option!1925) tuple2!10566)

(assert (=> b!878331 (= res!399397 (matchR!776 (regOne!4988 r!15766) (_1!6109 (get!2916 lt!330163))))))

(declare-fun b!878332 () Bool)

(declare-fun lt!330164 () Unit!14055)

(declare-fun lt!330162 () Unit!14055)

(assert (=> b!878332 (= lt!330164 lt!330162)))

(assert (=> b!878332 (= (++!2457 (++!2457 Nil!9452 (Cons!9452 (h!14853 s!10566) Nil!9452)) (t!100514 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!88 (List!9468 C!5046 List!9468 List!9468) Unit!14055)

(assert (=> b!878332 (= lt!330162 (lemmaMoveElementToOtherListKeepsConcatEq!88 Nil!9452 (h!14853 s!10566) (t!100514 s!10566) s!10566))))

(assert (=> b!878332 (= e!576978 (findConcatSeparation!31 (regOne!4988 r!15766) EmptyExpr!2238 (++!2457 Nil!9452 (Cons!9452 (h!14853 s!10566) Nil!9452)) (t!100514 s!10566) s!10566))))

(declare-fun b!878333 () Bool)

(assert (=> b!878333 (= e!576978 None!1924)))

(declare-fun d!276083 () Bool)

(declare-fun e!576979 () Bool)

(assert (=> d!276083 e!576979))

(declare-fun res!399396 () Bool)

(assert (=> d!276083 (=> res!399396 e!576979)))

(assert (=> d!276083 (= res!399396 e!576975)))

(declare-fun res!399395 () Bool)

(assert (=> d!276083 (=> (not res!399395) (not e!576975))))

(assert (=> d!276083 (= res!399395 (isDefined!1567 lt!330163))))

(assert (=> d!276083 (= lt!330163 e!576977)))

(declare-fun c!142020 () Bool)

(declare-fun e!576976 () Bool)

(assert (=> d!276083 (= c!142020 e!576976)))

(declare-fun res!399399 () Bool)

(assert (=> d!276083 (=> (not res!399399) (not e!576976))))

(assert (=> d!276083 (= res!399399 (matchR!776 (regOne!4988 r!15766) Nil!9452))))

(assert (=> d!276083 (validRegex!707 (regOne!4988 r!15766))))

(assert (=> d!276083 (= (findConcatSeparation!31 (regOne!4988 r!15766) EmptyExpr!2238 Nil!9452 s!10566 s!10566) lt!330163)))

(declare-fun b!878334 () Bool)

(assert (=> b!878334 (= e!576975 (= (++!2457 (_1!6109 (get!2916 lt!330163)) (_2!6109 (get!2916 lt!330163))) s!10566))))

(declare-fun b!878335 () Bool)

(declare-fun res!399398 () Bool)

(assert (=> b!878335 (=> (not res!399398) (not e!576975))))

(assert (=> b!878335 (= res!399398 (matchR!776 EmptyExpr!2238 (_2!6109 (get!2916 lt!330163))))))

(declare-fun b!878336 () Bool)

(assert (=> b!878336 (= e!576977 (Some!1924 (tuple2!10567 Nil!9452 s!10566)))))

(declare-fun b!878337 () Bool)

(assert (=> b!878337 (= e!576976 (matchR!776 EmptyExpr!2238 s!10566))))

(declare-fun b!878338 () Bool)

(assert (=> b!878338 (= e!576979 (not (isDefined!1567 lt!330163)))))

(assert (= (and d!276083 res!399399) b!878337))

(assert (= (and d!276083 c!142020) b!878336))

(assert (= (and d!276083 (not c!142020)) b!878330))

(assert (= (and b!878330 c!142021) b!878333))

(assert (= (and b!878330 (not c!142021)) b!878332))

(assert (= (and d!276083 res!399395) b!878331))

(assert (= (and b!878331 res!399397) b!878335))

(assert (= (and b!878335 res!399398) b!878334))

(assert (= (and d!276083 (not res!399396)) b!878338))

(declare-fun m!1128079 () Bool)

(assert (=> b!878335 m!1128079))

(declare-fun m!1128081 () Bool)

(assert (=> b!878335 m!1128081))

(assert (=> b!878334 m!1128079))

(declare-fun m!1128083 () Bool)

(assert (=> b!878334 m!1128083))

(declare-fun m!1128085 () Bool)

(assert (=> d!276083 m!1128085))

(declare-fun m!1128087 () Bool)

(assert (=> d!276083 m!1128087))

(assert (=> d!276083 m!1127963))

(assert (=> b!878338 m!1128085))

(declare-fun m!1128089 () Bool)

(assert (=> b!878337 m!1128089))

(assert (=> b!878331 m!1128079))

(declare-fun m!1128091 () Bool)

(assert (=> b!878331 m!1128091))

(declare-fun m!1128093 () Bool)

(assert (=> b!878332 m!1128093))

(assert (=> b!878332 m!1128093))

(declare-fun m!1128095 () Bool)

(assert (=> b!878332 m!1128095))

(declare-fun m!1128097 () Bool)

(assert (=> b!878332 m!1128097))

(assert (=> b!878332 m!1128093))

(declare-fun m!1128099 () Bool)

(assert (=> b!878332 m!1128099))

(assert (=> b!878085 d!276083))

(declare-fun d!276085 () Bool)

(declare-fun choose!5180 (Int) Bool)

(assert (=> d!276085 (= (Exists!35 lambda!26657) (choose!5180 lambda!26657))))

(declare-fun bs!234210 () Bool)

(assert (= bs!234210 d!276085))

(declare-fun m!1128101 () Bool)

(assert (=> bs!234210 m!1128101))

(assert (=> b!878085 d!276085))

(declare-fun d!276087 () Bool)

(assert (=> d!276087 (= (Exists!35 lambda!26658) (choose!5180 lambda!26658))))

(declare-fun bs!234211 () Bool)

(assert (= bs!234211 d!276087))

(declare-fun m!1128103 () Bool)

(assert (=> bs!234211 m!1128103))

(assert (=> b!878085 d!276087))

(declare-fun bs!234212 () Bool)

(declare-fun d!276089 () Bool)

(assert (= bs!234212 (and d!276089 b!878085)))

(declare-fun lambda!26675 () Int)

(assert (=> bs!234212 (= lambda!26675 lambda!26657)))

(assert (=> bs!234212 (not (= lambda!26675 lambda!26658))))

(declare-fun bs!234213 () Bool)

(assert (= bs!234213 (and d!276089 b!878229)))

(assert (=> bs!234213 (not (= lambda!26675 lambda!26671))))

(declare-fun bs!234214 () Bool)

(assert (= bs!234214 (and d!276089 b!878231)))

(assert (=> bs!234214 (not (= lambda!26675 lambda!26672))))

(assert (=> d!276089 true))

(assert (=> d!276089 true))

(assert (=> d!276089 true))

(assert (=> d!276089 (= (isDefined!1567 (findConcatSeparation!31 (regOne!4988 r!15766) EmptyExpr!2238 Nil!9452 s!10566 s!10566)) (Exists!35 lambda!26675))))

(declare-fun lt!330173 () Unit!14055)

(declare-fun choose!5181 (Regex!2238 Regex!2238 List!9468) Unit!14055)

(assert (=> d!276089 (= lt!330173 (choose!5181 (regOne!4988 r!15766) EmptyExpr!2238 s!10566))))

(assert (=> d!276089 (validRegex!707 (regOne!4988 r!15766))))

(assert (=> d!276089 (= (lemmaFindConcatSeparationEquivalentToExists!31 (regOne!4988 r!15766) EmptyExpr!2238 s!10566) lt!330173)))

(declare-fun bs!234215 () Bool)

(assert (= bs!234215 d!276089))

(assert (=> bs!234215 m!1127963))

(declare-fun m!1128105 () Bool)

(assert (=> bs!234215 m!1128105))

(assert (=> bs!234215 m!1127967))

(assert (=> bs!234215 m!1127969))

(declare-fun m!1128107 () Bool)

(assert (=> bs!234215 m!1128107))

(assert (=> bs!234215 m!1127967))

(assert (=> b!878085 d!276089))

(declare-fun bs!234216 () Bool)

(declare-fun d!276091 () Bool)

(assert (= bs!234216 (and d!276091 d!276089)))

(declare-fun lambda!26680 () Int)

(assert (=> bs!234216 (= lambda!26680 lambda!26675)))

(declare-fun bs!234217 () Bool)

(assert (= bs!234217 (and d!276091 b!878231)))

(assert (=> bs!234217 (not (= lambda!26680 lambda!26672))))

(declare-fun bs!234218 () Bool)

(assert (= bs!234218 (and d!276091 b!878085)))

(assert (=> bs!234218 (not (= lambda!26680 lambda!26658))))

(assert (=> bs!234218 (= lambda!26680 lambda!26657)))

(declare-fun bs!234219 () Bool)

(assert (= bs!234219 (and d!276091 b!878229)))

(assert (=> bs!234219 (not (= lambda!26680 lambda!26671))))

(assert (=> d!276091 true))

(assert (=> d!276091 true))

(assert (=> d!276091 true))

(declare-fun lambda!26681 () Int)

(assert (=> bs!234216 (not (= lambda!26681 lambda!26675))))

(assert (=> bs!234217 (= (= EmptyExpr!2238 (regTwo!4988 r!15766)) (= lambda!26681 lambda!26672))))

(declare-fun bs!234220 () Bool)

(assert (= bs!234220 d!276091))

(assert (=> bs!234220 (not (= lambda!26681 lambda!26680))))

(assert (=> bs!234218 (= lambda!26681 lambda!26658)))

(assert (=> bs!234218 (not (= lambda!26681 lambda!26657))))

(assert (=> bs!234219 (not (= lambda!26681 lambda!26671))))

(assert (=> d!276091 true))

(assert (=> d!276091 true))

(assert (=> d!276091 true))

(assert (=> d!276091 (= (Exists!35 lambda!26680) (Exists!35 lambda!26681))))

(declare-fun lt!330179 () Unit!14055)

(declare-fun choose!5182 (Regex!2238 Regex!2238 List!9468) Unit!14055)

(assert (=> d!276091 (= lt!330179 (choose!5182 (regOne!4988 r!15766) EmptyExpr!2238 s!10566))))

(assert (=> d!276091 (validRegex!707 (regOne!4988 r!15766))))

(assert (=> d!276091 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!27 (regOne!4988 r!15766) EmptyExpr!2238 s!10566) lt!330179)))

(declare-fun m!1128131 () Bool)

(assert (=> bs!234220 m!1128131))

(declare-fun m!1128133 () Bool)

(assert (=> bs!234220 m!1128133))

(declare-fun m!1128135 () Bool)

(assert (=> bs!234220 m!1128135))

(assert (=> bs!234220 m!1127963))

(assert (=> b!878085 d!276091))

(declare-fun b!878382 () Bool)

(declare-fun e!577003 () Bool)

(declare-fun tp!277603 () Bool)

(assert (=> b!878382 (= e!577003 (and tp_is_empty!4119 tp!277603))))

(assert (=> b!878088 (= tp!277578 e!577003)))

(assert (= (and b!878088 (is-Cons!9452 (t!100514 s!10566))) b!878382))

(declare-fun e!577006 () Bool)

(assert (=> b!878080 (= tp!277581 e!577006)))

(declare-fun b!878394 () Bool)

(declare-fun tp!277617 () Bool)

(declare-fun tp!277615 () Bool)

(assert (=> b!878394 (= e!577006 (and tp!277617 tp!277615))))

(declare-fun b!878395 () Bool)

(declare-fun tp!277616 () Bool)

(assert (=> b!878395 (= e!577006 tp!277616)))

(declare-fun b!878393 () Bool)

(assert (=> b!878393 (= e!577006 tp_is_empty!4119)))

(declare-fun b!878396 () Bool)

(declare-fun tp!277614 () Bool)

(declare-fun tp!277618 () Bool)

(assert (=> b!878396 (= e!577006 (and tp!277614 tp!277618))))

(assert (= (and b!878080 (is-ElementMatch!2238 (regOne!4989 r!15766))) b!878393))

(assert (= (and b!878080 (is-Concat!4071 (regOne!4989 r!15766))) b!878394))

(assert (= (and b!878080 (is-Star!2238 (regOne!4989 r!15766))) b!878395))

(assert (= (and b!878080 (is-Union!2238 (regOne!4989 r!15766))) b!878396))

(declare-fun e!577007 () Bool)

(assert (=> b!878080 (= tp!277580 e!577007)))

(declare-fun b!878398 () Bool)

(declare-fun tp!277622 () Bool)

(declare-fun tp!277620 () Bool)

(assert (=> b!878398 (= e!577007 (and tp!277622 tp!277620))))

(declare-fun b!878399 () Bool)

(declare-fun tp!277621 () Bool)

(assert (=> b!878399 (= e!577007 tp!277621)))

(declare-fun b!878397 () Bool)

(assert (=> b!878397 (= e!577007 tp_is_empty!4119)))

(declare-fun b!878400 () Bool)

(declare-fun tp!277619 () Bool)

(declare-fun tp!277623 () Bool)

(assert (=> b!878400 (= e!577007 (and tp!277619 tp!277623))))

(assert (= (and b!878080 (is-ElementMatch!2238 (regTwo!4989 r!15766))) b!878397))

(assert (= (and b!878080 (is-Concat!4071 (regTwo!4989 r!15766))) b!878398))

(assert (= (and b!878080 (is-Star!2238 (regTwo!4989 r!15766))) b!878399))

(assert (= (and b!878080 (is-Union!2238 (regTwo!4989 r!15766))) b!878400))

(declare-fun e!577008 () Bool)

(assert (=> b!878084 (= tp!277577 e!577008)))

(declare-fun b!878402 () Bool)

(declare-fun tp!277627 () Bool)

(declare-fun tp!277625 () Bool)

(assert (=> b!878402 (= e!577008 (and tp!277627 tp!277625))))

(declare-fun b!878403 () Bool)

(declare-fun tp!277626 () Bool)

(assert (=> b!878403 (= e!577008 tp!277626)))

(declare-fun b!878401 () Bool)

(assert (=> b!878401 (= e!577008 tp_is_empty!4119)))

(declare-fun b!878404 () Bool)

(declare-fun tp!277624 () Bool)

(declare-fun tp!277628 () Bool)

(assert (=> b!878404 (= e!577008 (and tp!277624 tp!277628))))

(assert (= (and b!878084 (is-ElementMatch!2238 (reg!2567 r!15766))) b!878401))

(assert (= (and b!878084 (is-Concat!4071 (reg!2567 r!15766))) b!878402))

(assert (= (and b!878084 (is-Star!2238 (reg!2567 r!15766))) b!878403))

(assert (= (and b!878084 (is-Union!2238 (reg!2567 r!15766))) b!878404))

(declare-fun e!577009 () Bool)

(assert (=> b!878089 (= tp!277582 e!577009)))

(declare-fun b!878406 () Bool)

(declare-fun tp!277632 () Bool)

(declare-fun tp!277630 () Bool)

(assert (=> b!878406 (= e!577009 (and tp!277632 tp!277630))))

(declare-fun b!878407 () Bool)

(declare-fun tp!277631 () Bool)

(assert (=> b!878407 (= e!577009 tp!277631)))

(declare-fun b!878405 () Bool)

(assert (=> b!878405 (= e!577009 tp_is_empty!4119)))

(declare-fun b!878408 () Bool)

(declare-fun tp!277629 () Bool)

(declare-fun tp!277633 () Bool)

(assert (=> b!878408 (= e!577009 (and tp!277629 tp!277633))))

(assert (= (and b!878089 (is-ElementMatch!2238 (regOne!4988 r!15766))) b!878405))

(assert (= (and b!878089 (is-Concat!4071 (regOne!4988 r!15766))) b!878406))

(assert (= (and b!878089 (is-Star!2238 (regOne!4988 r!15766))) b!878407))

(assert (= (and b!878089 (is-Union!2238 (regOne!4988 r!15766))) b!878408))

(declare-fun e!577010 () Bool)

(assert (=> b!878089 (= tp!277579 e!577010)))

(declare-fun b!878410 () Bool)

(declare-fun tp!277637 () Bool)

(declare-fun tp!277635 () Bool)

(assert (=> b!878410 (= e!577010 (and tp!277637 tp!277635))))

(declare-fun b!878411 () Bool)

(declare-fun tp!277636 () Bool)

(assert (=> b!878411 (= e!577010 tp!277636)))

(declare-fun b!878409 () Bool)

(assert (=> b!878409 (= e!577010 tp_is_empty!4119)))

(declare-fun b!878412 () Bool)

(declare-fun tp!277634 () Bool)

(declare-fun tp!277638 () Bool)

(assert (=> b!878412 (= e!577010 (and tp!277634 tp!277638))))

(assert (= (and b!878089 (is-ElementMatch!2238 (regTwo!4988 r!15766))) b!878409))

(assert (= (and b!878089 (is-Concat!4071 (regTwo!4988 r!15766))) b!878410))

(assert (= (and b!878089 (is-Star!2238 (regTwo!4988 r!15766))) b!878411))

(assert (= (and b!878089 (is-Union!2238 (regTwo!4988 r!15766))) b!878412))

(push 1)

(assert (not b!878404))

(assert (not b!878334))

(assert (not b!878337))

(assert (not bm!51157))

(assert (not b!878290))

(assert (not b!878382))

(assert (not b!878394))

(assert (not b!878293))

(assert (not bm!51155))

(assert (not d!276085))

(assert (not bm!51163))

(assert (not b!878396))

(assert (not b!878172))

(assert (not d!276059))

(assert (not b!878289))

(assert (not bm!51162))

(assert (not b!878407))

(assert (not b!878331))

(assert (not b!878332))

(assert (not b!878406))

(assert (not b!878403))

(assert (not d!276087))

(assert (not b!878338))

(assert (not d!276073))

(assert (not b!878395))

(assert (not b!878149))

(assert (not bm!51172))

(assert (not b!878150))

(assert (not b!878335))

(assert (not bm!51178))

(assert (not d!276083))

(assert (not b!878285))

(assert (not b!878282))

(assert (not b!878226))

(assert (not b!878402))

(assert (not d!276091))

(assert (not b!878399))

(assert (not d!276075))

(assert (not b!878412))

(assert (not b!878398))

(assert (not b!878283))

(assert (not b!878223))

(assert tp_is_empty!4119)

(assert (not b!878408))

(assert (not d!276089))

(assert (not bm!51176))

(assert (not b!878411))

(assert (not b!878410))

(assert (not b!878400))

(assert (not b!878305))

(assert (not d!276077))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

