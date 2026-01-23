; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!88904 () Bool)

(assert start!88904)

(declare-fun b!1021250 () Bool)

(assert (=> b!1021250 true))

(assert (=> b!1021250 true))

(declare-fun lambda!36310 () Int)

(declare-fun lambda!36309 () Int)

(assert (=> b!1021250 (not (= lambda!36310 lambda!36309))))

(assert (=> b!1021250 true))

(assert (=> b!1021250 true))

(declare-fun b!1021244 () Bool)

(declare-fun e!652151 () Bool)

(declare-fun e!652149 () Bool)

(assert (=> b!1021244 (= e!652151 e!652149)))

(declare-fun res!458891 () Bool)

(assert (=> b!1021244 (=> res!458891 e!652149)))

(declare-fun lt!354378 () Bool)

(declare-fun lt!354382 () Bool)

(assert (=> b!1021244 (= res!458891 (or (not lt!354378) (not lt!354382)))))

(assert (=> b!1021244 (= lt!354382 lt!354378)))

(declare-datatypes ((C!6214 0))(
  ( (C!6215 (val!3355 Int)) )
))
(declare-datatypes ((Regex!2822 0))(
  ( (ElementMatch!2822 (c!169245 C!6214)) (Concat!4655 (regOne!6156 Regex!2822) (regTwo!6156 Regex!2822)) (EmptyExpr!2822) (Star!2822 (reg!3151 Regex!2822)) (EmptyLang!2822) (Union!2822 (regOne!6157 Regex!2822) (regTwo!6157 Regex!2822)) )
))
(declare-fun lt!354380 () Regex!2822)

(declare-datatypes ((List!10052 0))(
  ( (Nil!10036) (Cons!10036 (h!15437 C!6214) (t!101098 List!10052)) )
))
(declare-fun s!10566 () List!10052)

(declare-fun matchR!1358 (Regex!2822 List!10052) Bool)

(assert (=> b!1021244 (= lt!354378 (matchR!1358 lt!354380 s!10566))))

(declare-fun r!15766 () Regex!2822)

(assert (=> b!1021244 (= lt!354382 (matchR!1358 (regTwo!6156 r!15766) s!10566))))

(declare-fun removeUselessConcat!391 (Regex!2822) Regex!2822)

(assert (=> b!1021244 (= lt!354380 (removeUselessConcat!391 (regTwo!6156 r!15766)))))

(declare-datatypes ((Unit!15319 0))(
  ( (Unit!15320) )
))
(declare-fun lt!354385 () Unit!15319)

(declare-fun lemmaRemoveUselessConcatSound!231 (Regex!2822 List!10052) Unit!15319)

(assert (=> b!1021244 (= lt!354385 (lemmaRemoveUselessConcatSound!231 (regTwo!6156 r!15766) s!10566))))

(declare-fun b!1021245 () Bool)

(declare-fun res!458892 () Bool)

(assert (=> b!1021245 (=> res!458892 e!652151)))

(declare-datatypes ((tuple2!11426 0))(
  ( (tuple2!11427 (_1!6539 List!10052) (_2!6539 List!10052)) )
))
(declare-datatypes ((Option!2355 0))(
  ( (None!2354) (Some!2354 (v!19771 tuple2!11426)) )
))
(declare-fun lt!354381 () Option!2355)

(declare-fun isEmpty!6391 (Option!2355) Bool)

(assert (=> b!1021245 (= res!458892 (not (isEmpty!6391 lt!354381)))))

(declare-fun b!1021246 () Bool)

(declare-fun res!458887 () Bool)

(assert (=> b!1021246 (=> res!458887 e!652149)))

(declare-fun validRegex!1291 (Regex!2822) Bool)

(assert (=> b!1021246 (= res!458887 (not (validRegex!1291 (regTwo!6156 r!15766))))))

(declare-fun res!458888 () Bool)

(declare-fun e!652153 () Bool)

(assert (=> start!88904 (=> (not res!458888) (not e!652153))))

(assert (=> start!88904 (= res!458888 (validRegex!1291 r!15766))))

(assert (=> start!88904 e!652153))

(declare-fun e!652150 () Bool)

(assert (=> start!88904 e!652150))

(declare-fun e!652152 () Bool)

(assert (=> start!88904 e!652152))

(declare-fun b!1021247 () Bool)

(declare-fun tp!310258 () Bool)

(assert (=> b!1021247 (= e!652150 tp!310258)))

(declare-fun b!1021248 () Bool)

(declare-fun tp!310261 () Bool)

(declare-fun tp!310259 () Bool)

(assert (=> b!1021248 (= e!652150 (and tp!310261 tp!310259))))

(declare-fun b!1021249 () Bool)

(declare-fun tp_is_empty!5287 () Bool)

(declare-fun tp!310257 () Bool)

(assert (=> b!1021249 (= e!652152 (and tp_is_empty!5287 tp!310257))))

(declare-fun e!652148 () Bool)

(assert (=> b!1021250 (= e!652148 e!652151)))

(declare-fun res!458889 () Bool)

(assert (=> b!1021250 (=> res!458889 e!652151)))

(declare-fun isEmpty!6392 (List!10052) Bool)

(assert (=> b!1021250 (= res!458889 (isEmpty!6392 s!10566))))

(declare-fun Exists!551 (Int) Bool)

(assert (=> b!1021250 (= (Exists!551 lambda!36309) (Exists!551 lambda!36310))))

(declare-fun lt!354383 () Unit!15319)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!253 (Regex!2822 Regex!2822 List!10052) Unit!15319)

(assert (=> b!1021250 (= lt!354383 (lemmaExistCutMatchRandMatchRSpecEquivalent!253 EmptyExpr!2822 (regTwo!6156 r!15766) s!10566))))

(declare-fun isDefined!1997 (Option!2355) Bool)

(assert (=> b!1021250 (= (isDefined!1997 lt!354381) (Exists!551 lambda!36309))))

(declare-fun findConcatSeparation!461 (Regex!2822 Regex!2822 List!10052 List!10052 List!10052) Option!2355)

(assert (=> b!1021250 (= lt!354381 (findConcatSeparation!461 EmptyExpr!2822 (regTwo!6156 r!15766) Nil!10036 s!10566 s!10566))))

(declare-fun lt!354386 () Unit!15319)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!461 (Regex!2822 Regex!2822 List!10052) Unit!15319)

(assert (=> b!1021250 (= lt!354386 (lemmaFindConcatSeparationEquivalentToExists!461 EmptyExpr!2822 (regTwo!6156 r!15766) s!10566))))

(declare-fun b!1021251 () Bool)

(assert (=> b!1021251 (= e!652150 tp_is_empty!5287)))

(declare-fun b!1021252 () Bool)

(declare-fun ++!2740 (List!10052 List!10052) List!10052)

(assert (=> b!1021252 (= e!652149 (= (++!2740 Nil!10036 s!10566) s!10566))))

(declare-fun b!1021253 () Bool)

(declare-fun tp!310260 () Bool)

(declare-fun tp!310262 () Bool)

(assert (=> b!1021253 (= e!652150 (and tp!310260 tp!310262))))

(declare-fun b!1021254 () Bool)

(assert (=> b!1021254 (= e!652153 (not e!652148))))

(declare-fun res!458890 () Bool)

(assert (=> b!1021254 (=> res!458890 e!652148)))

(declare-fun lt!354384 () Bool)

(assert (=> b!1021254 (= res!458890 (or lt!354384 (not (is-Concat!4655 r!15766)) (not (is-EmptyExpr!2822 (regOne!6156 r!15766)))))))

(declare-fun matchRSpec!621 (Regex!2822 List!10052) Bool)

(assert (=> b!1021254 (= lt!354384 (matchRSpec!621 r!15766 s!10566))))

(assert (=> b!1021254 (= lt!354384 (matchR!1358 r!15766 s!10566))))

(declare-fun lt!354379 () Unit!15319)

(declare-fun mainMatchTheorem!621 (Regex!2822 List!10052) Unit!15319)

(assert (=> b!1021254 (= lt!354379 (mainMatchTheorem!621 r!15766 s!10566))))

(assert (= (and start!88904 res!458888) b!1021254))

(assert (= (and b!1021254 (not res!458890)) b!1021250))

(assert (= (and b!1021250 (not res!458889)) b!1021245))

(assert (= (and b!1021245 (not res!458892)) b!1021244))

(assert (= (and b!1021244 (not res!458891)) b!1021246))

(assert (= (and b!1021246 (not res!458887)) b!1021252))

(assert (= (and start!88904 (is-ElementMatch!2822 r!15766)) b!1021251))

(assert (= (and start!88904 (is-Concat!4655 r!15766)) b!1021248))

(assert (= (and start!88904 (is-Star!2822 r!15766)) b!1021247))

(assert (= (and start!88904 (is-Union!2822 r!15766)) b!1021253))

(assert (= (and start!88904 (is-Cons!10036 s!10566)) b!1021249))

(declare-fun m!1200097 () Bool)

(assert (=> b!1021250 m!1200097))

(declare-fun m!1200099 () Bool)

(assert (=> b!1021250 m!1200099))

(declare-fun m!1200101 () Bool)

(assert (=> b!1021250 m!1200101))

(declare-fun m!1200103 () Bool)

(assert (=> b!1021250 m!1200103))

(assert (=> b!1021250 m!1200099))

(declare-fun m!1200105 () Bool)

(assert (=> b!1021250 m!1200105))

(declare-fun m!1200107 () Bool)

(assert (=> b!1021250 m!1200107))

(declare-fun m!1200109 () Bool)

(assert (=> b!1021250 m!1200109))

(declare-fun m!1200111 () Bool)

(assert (=> b!1021245 m!1200111))

(declare-fun m!1200113 () Bool)

(assert (=> b!1021252 m!1200113))

(declare-fun m!1200115 () Bool)

(assert (=> b!1021254 m!1200115))

(declare-fun m!1200117 () Bool)

(assert (=> b!1021254 m!1200117))

(declare-fun m!1200119 () Bool)

(assert (=> b!1021254 m!1200119))

(declare-fun m!1200121 () Bool)

(assert (=> b!1021246 m!1200121))

(declare-fun m!1200123 () Bool)

(assert (=> start!88904 m!1200123))

(declare-fun m!1200125 () Bool)

(assert (=> b!1021244 m!1200125))

(declare-fun m!1200127 () Bool)

(assert (=> b!1021244 m!1200127))

(declare-fun m!1200129 () Bool)

(assert (=> b!1021244 m!1200129))

(declare-fun m!1200131 () Bool)

(assert (=> b!1021244 m!1200131))

(push 1)

(assert (not b!1021246))

(assert (not b!1021248))

(assert (not b!1021249))

(assert (not b!1021250))

(assert (not b!1021245))

(assert (not start!88904))

(assert (not b!1021254))

(assert (not b!1021253))

(assert (not b!1021247))

(assert (not b!1021244))

(assert (not b!1021252))

(assert tp_is_empty!5287)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!69919 () Bool)

(declare-fun call!69924 () Bool)

(declare-fun call!69925 () Bool)

(assert (=> bm!69919 (= call!69924 call!69925)))

(declare-fun b!1021326 () Bool)

(declare-fun e!652193 () Bool)

(declare-fun e!652198 () Bool)

(assert (=> b!1021326 (= e!652193 e!652198)))

(declare-fun c!169251 () Bool)

(assert (=> b!1021326 (= c!169251 (is-Union!2822 (regTwo!6156 r!15766)))))

(declare-fun b!1021327 () Bool)

(declare-fun e!652192 () Bool)

(assert (=> b!1021327 (= e!652192 call!69924)))

(declare-fun b!1021328 () Bool)

(declare-fun e!652197 () Bool)

(assert (=> b!1021328 (= e!652197 e!652193)))

(declare-fun c!169252 () Bool)

(assert (=> b!1021328 (= c!169252 (is-Star!2822 (regTwo!6156 r!15766)))))

(declare-fun b!1021329 () Bool)

(declare-fun e!652196 () Bool)

(assert (=> b!1021329 (= e!652196 call!69924)))

(declare-fun b!1021330 () Bool)

(declare-fun res!458933 () Bool)

(assert (=> b!1021330 (=> (not res!458933) (not e!652196))))

(declare-fun call!69926 () Bool)

(assert (=> b!1021330 (= res!458933 call!69926)))

(assert (=> b!1021330 (= e!652198 e!652196)))

(declare-fun bm!69920 () Bool)

(assert (=> bm!69920 (= call!69925 (validRegex!1291 (ite c!169252 (reg!3151 (regTwo!6156 r!15766)) (ite c!169251 (regTwo!6157 (regTwo!6156 r!15766)) (regTwo!6156 (regTwo!6156 r!15766))))))))

(declare-fun b!1021331 () Bool)

(declare-fun e!652195 () Bool)

(assert (=> b!1021331 (= e!652195 e!652192)))

(declare-fun res!458937 () Bool)

(assert (=> b!1021331 (=> (not res!458937) (not e!652192))))

(assert (=> b!1021331 (= res!458937 call!69926)))

(declare-fun b!1021332 () Bool)

(declare-fun res!458936 () Bool)

(assert (=> b!1021332 (=> res!458936 e!652195)))

(assert (=> b!1021332 (= res!458936 (not (is-Concat!4655 (regTwo!6156 r!15766))))))

(assert (=> b!1021332 (= e!652198 e!652195)))

(declare-fun b!1021333 () Bool)

(declare-fun e!652194 () Bool)

(assert (=> b!1021333 (= e!652193 e!652194)))

(declare-fun res!458934 () Bool)

(declare-fun nullable!925 (Regex!2822) Bool)

(assert (=> b!1021333 (= res!458934 (not (nullable!925 (reg!3151 (regTwo!6156 r!15766)))))))

(assert (=> b!1021333 (=> (not res!458934) (not e!652194))))

(declare-fun d!294427 () Bool)

(declare-fun res!458935 () Bool)

(assert (=> d!294427 (=> res!458935 e!652197)))

(assert (=> d!294427 (= res!458935 (is-ElementMatch!2822 (regTwo!6156 r!15766)))))

(assert (=> d!294427 (= (validRegex!1291 (regTwo!6156 r!15766)) e!652197)))

(declare-fun b!1021334 () Bool)

(assert (=> b!1021334 (= e!652194 call!69925)))

(declare-fun bm!69921 () Bool)

(assert (=> bm!69921 (= call!69926 (validRegex!1291 (ite c!169251 (regOne!6157 (regTwo!6156 r!15766)) (regOne!6156 (regTwo!6156 r!15766)))))))

(assert (= (and d!294427 (not res!458935)) b!1021328))

(assert (= (and b!1021328 c!169252) b!1021333))

(assert (= (and b!1021328 (not c!169252)) b!1021326))

(assert (= (and b!1021333 res!458934) b!1021334))

(assert (= (and b!1021326 c!169251) b!1021330))

(assert (= (and b!1021326 (not c!169251)) b!1021332))

(assert (= (and b!1021330 res!458933) b!1021329))

(assert (= (and b!1021332 (not res!458936)) b!1021331))

(assert (= (and b!1021331 res!458937) b!1021327))

(assert (= (or b!1021329 b!1021327) bm!69919))

(assert (= (or b!1021330 b!1021331) bm!69921))

(assert (= (or b!1021334 bm!69919) bm!69920))

(declare-fun m!1200173 () Bool)

(assert (=> bm!69920 m!1200173))

(declare-fun m!1200175 () Bool)

(assert (=> b!1021333 m!1200175))

(declare-fun m!1200177 () Bool)

(assert (=> bm!69921 m!1200177))

(assert (=> b!1021246 d!294427))

(declare-fun d!294429 () Bool)

(declare-fun e!652203 () Bool)

(assert (=> d!294429 e!652203))

(declare-fun res!458942 () Bool)

(assert (=> d!294429 (=> (not res!458942) (not e!652203))))

(declare-fun lt!354416 () List!10052)

(declare-fun content!1437 (List!10052) (Set C!6214))

(assert (=> d!294429 (= res!458942 (= (content!1437 lt!354416) (set.union (content!1437 Nil!10036) (content!1437 s!10566))))))

(declare-fun e!652204 () List!10052)

(assert (=> d!294429 (= lt!354416 e!652204)))

(declare-fun c!169255 () Bool)

(assert (=> d!294429 (= c!169255 (is-Nil!10036 Nil!10036))))

(assert (=> d!294429 (= (++!2740 Nil!10036 s!10566) lt!354416)))

(declare-fun b!1021346 () Bool)

(assert (=> b!1021346 (= e!652203 (or (not (= s!10566 Nil!10036)) (= lt!354416 Nil!10036)))))

(declare-fun b!1021344 () Bool)

(assert (=> b!1021344 (= e!652204 (Cons!10036 (h!15437 Nil!10036) (++!2740 (t!101098 Nil!10036) s!10566)))))

(declare-fun b!1021345 () Bool)

(declare-fun res!458943 () Bool)

(assert (=> b!1021345 (=> (not res!458943) (not e!652203))))

(declare-fun size!7980 (List!10052) Int)

(assert (=> b!1021345 (= res!458943 (= (size!7980 lt!354416) (+ (size!7980 Nil!10036) (size!7980 s!10566))))))

(declare-fun b!1021343 () Bool)

(assert (=> b!1021343 (= e!652204 s!10566)))

(assert (= (and d!294429 c!169255) b!1021343))

(assert (= (and d!294429 (not c!169255)) b!1021344))

(assert (= (and d!294429 res!458942) b!1021345))

(assert (= (and b!1021345 res!458943) b!1021346))

(declare-fun m!1200179 () Bool)

(assert (=> d!294429 m!1200179))

(declare-fun m!1200181 () Bool)

(assert (=> d!294429 m!1200181))

(declare-fun m!1200183 () Bool)

(assert (=> d!294429 m!1200183))

(declare-fun m!1200185 () Bool)

(assert (=> b!1021344 m!1200185))

(declare-fun m!1200187 () Bool)

(assert (=> b!1021345 m!1200187))

(declare-fun m!1200189 () Bool)

(assert (=> b!1021345 m!1200189))

(declare-fun m!1200191 () Bool)

(assert (=> b!1021345 m!1200191))

(assert (=> b!1021252 d!294429))

(declare-fun d!294431 () Bool)

(declare-fun choose!6457 (Int) Bool)

(assert (=> d!294431 (= (Exists!551 lambda!36309) (choose!6457 lambda!36309))))

(declare-fun bs!246694 () Bool)

(assert (= bs!246694 d!294431))

(declare-fun m!1200193 () Bool)

(assert (=> bs!246694 m!1200193))

(assert (=> b!1021250 d!294431))

(declare-fun d!294433 () Bool)

(assert (=> d!294433 (= (isEmpty!6392 s!10566) (is-Nil!10036 s!10566))))

(assert (=> b!1021250 d!294433))

(declare-fun b!1021383 () Bool)

(declare-fun e!652229 () Option!2355)

(assert (=> b!1021383 (= e!652229 (Some!2354 (tuple2!11427 Nil!10036 s!10566)))))

(declare-fun b!1021384 () Bool)

(declare-fun res!458968 () Bool)

(declare-fun e!652226 () Bool)

(assert (=> b!1021384 (=> (not res!458968) (not e!652226))))

(declare-fun lt!354429 () Option!2355)

(declare-fun get!3535 (Option!2355) tuple2!11426)

(assert (=> b!1021384 (= res!458968 (matchR!1358 EmptyExpr!2822 (_1!6539 (get!3535 lt!354429))))))

(declare-fun b!1021385 () Bool)

(declare-fun lt!354431 () Unit!15319)

(declare-fun lt!354430 () Unit!15319)

(assert (=> b!1021385 (= lt!354431 lt!354430)))

(assert (=> b!1021385 (= (++!2740 (++!2740 Nil!10036 (Cons!10036 (h!15437 s!10566) Nil!10036)) (t!101098 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!339 (List!10052 C!6214 List!10052 List!10052) Unit!15319)

(assert (=> b!1021385 (= lt!354430 (lemmaMoveElementToOtherListKeepsConcatEq!339 Nil!10036 (h!15437 s!10566) (t!101098 s!10566) s!10566))))

(declare-fun e!652227 () Option!2355)

(assert (=> b!1021385 (= e!652227 (findConcatSeparation!461 EmptyExpr!2822 (regTwo!6156 r!15766) (++!2740 Nil!10036 (Cons!10036 (h!15437 s!10566) Nil!10036)) (t!101098 s!10566) s!10566))))

(declare-fun b!1021386 () Bool)

(assert (=> b!1021386 (= e!652227 None!2354)))

(declare-fun b!1021387 () Bool)

(assert (=> b!1021387 (= e!652229 e!652227)))

(declare-fun c!169265 () Bool)

(assert (=> b!1021387 (= c!169265 (is-Nil!10036 s!10566))))

(declare-fun b!1021388 () Bool)

(assert (=> b!1021388 (= e!652226 (= (++!2740 (_1!6539 (get!3535 lt!354429)) (_2!6539 (get!3535 lt!354429))) s!10566))))

(declare-fun b!1021389 () Bool)

(declare-fun e!652225 () Bool)

(assert (=> b!1021389 (= e!652225 (matchR!1358 (regTwo!6156 r!15766) s!10566))))

(declare-fun b!1021390 () Bool)

(declare-fun res!458966 () Bool)

(assert (=> b!1021390 (=> (not res!458966) (not e!652226))))

(assert (=> b!1021390 (= res!458966 (matchR!1358 (regTwo!6156 r!15766) (_2!6539 (get!3535 lt!354429))))))

(declare-fun b!1021391 () Bool)

(declare-fun e!652228 () Bool)

(assert (=> b!1021391 (= e!652228 (not (isDefined!1997 lt!354429)))))

(declare-fun d!294435 () Bool)

(assert (=> d!294435 e!652228))

(declare-fun res!458967 () Bool)

(assert (=> d!294435 (=> res!458967 e!652228)))

(assert (=> d!294435 (= res!458967 e!652226)))

(declare-fun res!458964 () Bool)

(assert (=> d!294435 (=> (not res!458964) (not e!652226))))

(assert (=> d!294435 (= res!458964 (isDefined!1997 lt!354429))))

(assert (=> d!294435 (= lt!354429 e!652229)))

(declare-fun c!169264 () Bool)

(assert (=> d!294435 (= c!169264 e!652225)))

(declare-fun res!458965 () Bool)

(assert (=> d!294435 (=> (not res!458965) (not e!652225))))

(assert (=> d!294435 (= res!458965 (matchR!1358 EmptyExpr!2822 Nil!10036))))

(assert (=> d!294435 (validRegex!1291 EmptyExpr!2822)))

(assert (=> d!294435 (= (findConcatSeparation!461 EmptyExpr!2822 (regTwo!6156 r!15766) Nil!10036 s!10566 s!10566) lt!354429)))

(assert (= (and d!294435 res!458965) b!1021389))

(assert (= (and d!294435 c!169264) b!1021383))

(assert (= (and d!294435 (not c!169264)) b!1021387))

(assert (= (and b!1021387 c!169265) b!1021386))

(assert (= (and b!1021387 (not c!169265)) b!1021385))

(assert (= (and d!294435 res!458964) b!1021384))

(assert (= (and b!1021384 res!458968) b!1021390))

(assert (= (and b!1021390 res!458966) b!1021388))

(assert (= (and d!294435 (not res!458967)) b!1021391))

(declare-fun m!1200195 () Bool)

(assert (=> b!1021388 m!1200195))

(declare-fun m!1200197 () Bool)

(assert (=> b!1021388 m!1200197))

(assert (=> b!1021384 m!1200195))

(declare-fun m!1200199 () Bool)

(assert (=> b!1021384 m!1200199))

(declare-fun m!1200201 () Bool)

(assert (=> d!294435 m!1200201))

(declare-fun m!1200203 () Bool)

(assert (=> d!294435 m!1200203))

(declare-fun m!1200205 () Bool)

(assert (=> d!294435 m!1200205))

(declare-fun m!1200207 () Bool)

(assert (=> b!1021385 m!1200207))

(assert (=> b!1021385 m!1200207))

(declare-fun m!1200209 () Bool)

(assert (=> b!1021385 m!1200209))

(declare-fun m!1200211 () Bool)

(assert (=> b!1021385 m!1200211))

(assert (=> b!1021385 m!1200207))

(declare-fun m!1200213 () Bool)

(assert (=> b!1021385 m!1200213))

(assert (=> b!1021391 m!1200201))

(assert (=> b!1021389 m!1200127))

(assert (=> b!1021390 m!1200195))

(declare-fun m!1200215 () Bool)

(assert (=> b!1021390 m!1200215))

(assert (=> b!1021250 d!294435))

(declare-fun bs!246696 () Bool)

(declare-fun d!294437 () Bool)

(assert (= bs!246696 (and d!294437 b!1021250)))

(declare-fun lambda!36321 () Int)

(assert (=> bs!246696 (= lambda!36321 lambda!36309)))

(assert (=> bs!246696 (not (= lambda!36321 lambda!36310))))

(assert (=> d!294437 true))

(assert (=> d!294437 true))

(assert (=> d!294437 true))

(assert (=> d!294437 (= (isDefined!1997 (findConcatSeparation!461 EmptyExpr!2822 (regTwo!6156 r!15766) Nil!10036 s!10566 s!10566)) (Exists!551 lambda!36321))))

(declare-fun lt!354437 () Unit!15319)

(declare-fun choose!6458 (Regex!2822 Regex!2822 List!10052) Unit!15319)

(assert (=> d!294437 (= lt!354437 (choose!6458 EmptyExpr!2822 (regTwo!6156 r!15766) s!10566))))

(assert (=> d!294437 (validRegex!1291 EmptyExpr!2822)))

(assert (=> d!294437 (= (lemmaFindConcatSeparationEquivalentToExists!461 EmptyExpr!2822 (regTwo!6156 r!15766) s!10566) lt!354437)))

(declare-fun bs!246697 () Bool)

(assert (= bs!246697 d!294437))

(declare-fun m!1200239 () Bool)

(assert (=> bs!246697 m!1200239))

(assert (=> bs!246697 m!1200205))

(declare-fun m!1200241 () Bool)

(assert (=> bs!246697 m!1200241))

(assert (=> bs!246697 m!1200107))

(declare-fun m!1200243 () Bool)

(assert (=> bs!246697 m!1200243))

(assert (=> bs!246697 m!1200107))

(assert (=> b!1021250 d!294437))

(declare-fun bs!246698 () Bool)

(declare-fun d!294443 () Bool)

(assert (= bs!246698 (and d!294443 b!1021250)))

(declare-fun lambda!36326 () Int)

(assert (=> bs!246698 (= lambda!36326 lambda!36309)))

(assert (=> bs!246698 (not (= lambda!36326 lambda!36310))))

(declare-fun bs!246699 () Bool)

(assert (= bs!246699 (and d!294443 d!294437)))

(assert (=> bs!246699 (= lambda!36326 lambda!36321)))

(assert (=> d!294443 true))

(assert (=> d!294443 true))

(assert (=> d!294443 true))

(declare-fun lambda!36327 () Int)

(assert (=> bs!246698 (not (= lambda!36327 lambda!36309))))

(assert (=> bs!246698 (= lambda!36327 lambda!36310)))

(assert (=> bs!246699 (not (= lambda!36327 lambda!36321))))

(declare-fun bs!246700 () Bool)

(assert (= bs!246700 d!294443))

(assert (=> bs!246700 (not (= lambda!36327 lambda!36326))))

(assert (=> d!294443 true))

(assert (=> d!294443 true))

(assert (=> d!294443 true))

(assert (=> d!294443 (= (Exists!551 lambda!36326) (Exists!551 lambda!36327))))

(declare-fun lt!354440 () Unit!15319)

(declare-fun choose!6459 (Regex!2822 Regex!2822 List!10052) Unit!15319)

(assert (=> d!294443 (= lt!354440 (choose!6459 EmptyExpr!2822 (regTwo!6156 r!15766) s!10566))))

(assert (=> d!294443 (validRegex!1291 EmptyExpr!2822)))

(assert (=> d!294443 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!253 EmptyExpr!2822 (regTwo!6156 r!15766) s!10566) lt!354440)))

(declare-fun m!1200245 () Bool)

(assert (=> bs!246700 m!1200245))

(declare-fun m!1200247 () Bool)

(assert (=> bs!246700 m!1200247))

(declare-fun m!1200249 () Bool)

(assert (=> bs!246700 m!1200249))

(assert (=> bs!246700 m!1200205))

(assert (=> b!1021250 d!294443))

(declare-fun d!294445 () Bool)

(assert (=> d!294445 (= (isDefined!1997 lt!354381) (not (isEmpty!6391 lt!354381)))))

(declare-fun bs!246701 () Bool)

(assert (= bs!246701 d!294445))

(assert (=> bs!246701 m!1200111))

(assert (=> b!1021250 d!294445))

(declare-fun d!294447 () Bool)

(assert (=> d!294447 (= (Exists!551 lambda!36310) (choose!6457 lambda!36310))))

(declare-fun bs!246702 () Bool)

(assert (= bs!246702 d!294447))

(declare-fun m!1200251 () Bool)

(assert (=> bs!246702 m!1200251))

(assert (=> b!1021250 d!294447))

(declare-fun d!294449 () Bool)

(assert (=> d!294449 (= (isEmpty!6391 lt!354381) (not (is-Some!2354 lt!354381)))))

(assert (=> b!1021245 d!294449))

(declare-fun bs!246705 () Bool)

(declare-fun b!1021451 () Bool)

(assert (= bs!246705 (and b!1021451 b!1021250)))

(declare-fun lambda!36335 () Int)

(assert (=> bs!246705 (not (= lambda!36335 lambda!36309))))

(declare-fun bs!246706 () Bool)

(assert (= bs!246706 (and b!1021451 d!294437)))

(assert (=> bs!246706 (not (= lambda!36335 lambda!36321))))

(assert (=> bs!246705 (not (= lambda!36335 lambda!36310))))

(declare-fun bs!246707 () Bool)

(assert (= bs!246707 (and b!1021451 d!294443)))

(assert (=> bs!246707 (not (= lambda!36335 lambda!36327))))

(assert (=> bs!246707 (not (= lambda!36335 lambda!36326))))

(assert (=> b!1021451 true))

(assert (=> b!1021451 true))

(declare-fun bs!246708 () Bool)

(declare-fun b!1021458 () Bool)

(assert (= bs!246708 (and b!1021458 b!1021250)))

(declare-fun lambda!36336 () Int)

(assert (=> bs!246708 (not (= lambda!36336 lambda!36309))))

(declare-fun bs!246709 () Bool)

(assert (= bs!246709 (and b!1021458 d!294437)))

(assert (=> bs!246709 (not (= lambda!36336 lambda!36321))))

(assert (=> bs!246708 (= (= (regOne!6156 r!15766) EmptyExpr!2822) (= lambda!36336 lambda!36310))))

(declare-fun bs!246710 () Bool)

(assert (= bs!246710 (and b!1021458 b!1021451)))

(assert (=> bs!246710 (not (= lambda!36336 lambda!36335))))

(declare-fun bs!246711 () Bool)

(assert (= bs!246711 (and b!1021458 d!294443)))

(assert (=> bs!246711 (= (= (regOne!6156 r!15766) EmptyExpr!2822) (= lambda!36336 lambda!36327))))

(assert (=> bs!246711 (not (= lambda!36336 lambda!36326))))

(assert (=> b!1021458 true))

(assert (=> b!1021458 true))

(declare-fun d!294451 () Bool)

(declare-fun c!169277 () Bool)

(assert (=> d!294451 (= c!169277 (is-EmptyExpr!2822 r!15766))))

(declare-fun e!652266 () Bool)

(assert (=> d!294451 (= (matchRSpec!621 r!15766 s!10566) e!652266)))

(declare-fun b!1021449 () Bool)

(declare-fun c!169278 () Bool)

(assert (=> b!1021449 (= c!169278 (is-ElementMatch!2822 r!15766))))

(declare-fun e!652264 () Bool)

(declare-fun e!652265 () Bool)

(assert (=> b!1021449 (= e!652264 e!652265)))

(declare-fun b!1021450 () Bool)

(declare-fun e!652267 () Bool)

(assert (=> b!1021450 (= e!652267 (matchRSpec!621 (regTwo!6157 r!15766) s!10566))))

(declare-fun e!652263 () Bool)

(declare-fun call!69932 () Bool)

(assert (=> b!1021451 (= e!652263 call!69932)))

(declare-fun b!1021452 () Bool)

(declare-fun res!459006 () Bool)

(assert (=> b!1021452 (=> res!459006 e!652263)))

(declare-fun call!69931 () Bool)

(assert (=> b!1021452 (= res!459006 call!69931)))

(declare-fun e!652261 () Bool)

(assert (=> b!1021452 (= e!652261 e!652263)))

(declare-fun b!1021453 () Bool)

(declare-fun c!169276 () Bool)

(assert (=> b!1021453 (= c!169276 (is-Union!2822 r!15766))))

(declare-fun e!652262 () Bool)

(assert (=> b!1021453 (= e!652265 e!652262)))

(declare-fun b!1021454 () Bool)

(assert (=> b!1021454 (= e!652262 e!652267)))

(declare-fun res!459008 () Bool)

(assert (=> b!1021454 (= res!459008 (matchRSpec!621 (regOne!6157 r!15766) s!10566))))

(assert (=> b!1021454 (=> res!459008 e!652267)))

(declare-fun b!1021455 () Bool)

(assert (=> b!1021455 (= e!652265 (= s!10566 (Cons!10036 (c!169245 r!15766) Nil!10036)))))

(declare-fun b!1021456 () Bool)

(assert (=> b!1021456 (= e!652266 call!69931)))

(declare-fun bm!69926 () Bool)

(assert (=> bm!69926 (= call!69931 (isEmpty!6392 s!10566))))

(declare-fun b!1021457 () Bool)

(assert (=> b!1021457 (= e!652266 e!652264)))

(declare-fun res!459007 () Bool)

(assert (=> b!1021457 (= res!459007 (not (is-EmptyLang!2822 r!15766)))))

(assert (=> b!1021457 (=> (not res!459007) (not e!652264))))

(declare-fun bm!69927 () Bool)

(declare-fun c!169279 () Bool)

(assert (=> bm!69927 (= call!69932 (Exists!551 (ite c!169279 lambda!36335 lambda!36336)))))

(assert (=> b!1021458 (= e!652261 call!69932)))

(declare-fun b!1021459 () Bool)

(assert (=> b!1021459 (= e!652262 e!652261)))

(assert (=> b!1021459 (= c!169279 (is-Star!2822 r!15766))))

(assert (= (and d!294451 c!169277) b!1021456))

(assert (= (and d!294451 (not c!169277)) b!1021457))

(assert (= (and b!1021457 res!459007) b!1021449))

(assert (= (and b!1021449 c!169278) b!1021455))

(assert (= (and b!1021449 (not c!169278)) b!1021453))

(assert (= (and b!1021453 c!169276) b!1021454))

(assert (= (and b!1021453 (not c!169276)) b!1021459))

(assert (= (and b!1021454 (not res!459008)) b!1021450))

(assert (= (and b!1021459 c!169279) b!1021452))

(assert (= (and b!1021459 (not c!169279)) b!1021458))

(assert (= (and b!1021452 (not res!459006)) b!1021451))

(assert (= (or b!1021451 b!1021458) bm!69927))

(assert (= (or b!1021456 b!1021452) bm!69926))

(declare-fun m!1200259 () Bool)

(assert (=> b!1021450 m!1200259))

(declare-fun m!1200261 () Bool)

(assert (=> b!1021454 m!1200261))

(assert (=> bm!69926 m!1200105))

(declare-fun m!1200263 () Bool)

(assert (=> bm!69927 m!1200263))

(assert (=> b!1021254 d!294451))

(declare-fun b!1021496 () Bool)

(declare-fun e!652286 () Bool)

(declare-fun e!652292 () Bool)

(assert (=> b!1021496 (= e!652286 e!652292)))

(declare-fun res!459039 () Bool)

(assert (=> b!1021496 (=> res!459039 e!652292)))

(declare-fun call!69935 () Bool)

(assert (=> b!1021496 (= res!459039 call!69935)))

(declare-fun b!1021497 () Bool)

(declare-fun e!652291 () Bool)

(declare-fun lt!354448 () Bool)

(assert (=> b!1021497 (= e!652291 (= lt!354448 call!69935))))

(declare-fun d!294455 () Bool)

(assert (=> d!294455 e!652291))

(declare-fun c!169286 () Bool)

(assert (=> d!294455 (= c!169286 (is-EmptyExpr!2822 r!15766))))

(declare-fun e!652288 () Bool)

(assert (=> d!294455 (= lt!354448 e!652288)))

(declare-fun c!169287 () Bool)

(assert (=> d!294455 (= c!169287 (isEmpty!6392 s!10566))))

(assert (=> d!294455 (validRegex!1291 r!15766)))

(assert (=> d!294455 (= (matchR!1358 r!15766 s!10566) lt!354448)))

(declare-fun b!1021498 () Bool)

(declare-fun derivativeStep!727 (Regex!2822 C!6214) Regex!2822)

(declare-fun head!1881 (List!10052) C!6214)

(declare-fun tail!1443 (List!10052) List!10052)

(assert (=> b!1021498 (= e!652288 (matchR!1358 (derivativeStep!727 r!15766 (head!1881 s!10566)) (tail!1443 s!10566)))))

(declare-fun b!1021499 () Bool)

(declare-fun res!459035 () Bool)

(declare-fun e!652287 () Bool)

(assert (=> b!1021499 (=> res!459035 e!652287)))

(declare-fun e!652289 () Bool)

(assert (=> b!1021499 (= res!459035 e!652289)))

(declare-fun res!459037 () Bool)

(assert (=> b!1021499 (=> (not res!459037) (not e!652289))))

(assert (=> b!1021499 (= res!459037 lt!354448)))

(declare-fun b!1021500 () Bool)

(assert (=> b!1021500 (= e!652289 (= (head!1881 s!10566) (c!169245 r!15766)))))

(declare-fun b!1021501 () Bool)

(assert (=> b!1021501 (= e!652288 (nullable!925 r!15766))))

(declare-fun b!1021502 () Bool)

(declare-fun e!652290 () Bool)

(assert (=> b!1021502 (= e!652291 e!652290)))

(declare-fun c!169288 () Bool)

(assert (=> b!1021502 (= c!169288 (is-EmptyLang!2822 r!15766))))

(declare-fun b!1021503 () Bool)

(declare-fun res!459036 () Bool)

(assert (=> b!1021503 (=> res!459036 e!652292)))

(assert (=> b!1021503 (= res!459036 (not (isEmpty!6392 (tail!1443 s!10566))))))

(declare-fun b!1021504 () Bool)

(assert (=> b!1021504 (= e!652290 (not lt!354448))))

(declare-fun b!1021505 () Bool)

(assert (=> b!1021505 (= e!652287 e!652286)))

(declare-fun res!459040 () Bool)

(assert (=> b!1021505 (=> (not res!459040) (not e!652286))))

(assert (=> b!1021505 (= res!459040 (not lt!354448))))

(declare-fun b!1021506 () Bool)

(declare-fun res!459038 () Bool)

(assert (=> b!1021506 (=> (not res!459038) (not e!652289))))

(assert (=> b!1021506 (= res!459038 (isEmpty!6392 (tail!1443 s!10566)))))

(declare-fun bm!69930 () Bool)

(assert (=> bm!69930 (= call!69935 (isEmpty!6392 s!10566))))

(declare-fun b!1021507 () Bool)

(declare-fun res!459034 () Bool)

(assert (=> b!1021507 (=> res!459034 e!652287)))

(assert (=> b!1021507 (= res!459034 (not (is-ElementMatch!2822 r!15766)))))

(assert (=> b!1021507 (= e!652290 e!652287)))

(declare-fun b!1021508 () Bool)

(assert (=> b!1021508 (= e!652292 (not (= (head!1881 s!10566) (c!169245 r!15766))))))

(declare-fun b!1021509 () Bool)

(declare-fun res!459033 () Bool)

(assert (=> b!1021509 (=> (not res!459033) (not e!652289))))

(assert (=> b!1021509 (= res!459033 (not call!69935))))

(assert (= (and d!294455 c!169287) b!1021501))

(assert (= (and d!294455 (not c!169287)) b!1021498))

(assert (= (and d!294455 c!169286) b!1021497))

(assert (= (and d!294455 (not c!169286)) b!1021502))

(assert (= (and b!1021502 c!169288) b!1021504))

(assert (= (and b!1021502 (not c!169288)) b!1021507))

(assert (= (and b!1021507 (not res!459034)) b!1021499))

(assert (= (and b!1021499 res!459037) b!1021509))

(assert (= (and b!1021509 res!459033) b!1021506))

(assert (= (and b!1021506 res!459038) b!1021500))

(assert (= (and b!1021499 (not res!459035)) b!1021505))

(assert (= (and b!1021505 res!459040) b!1021496))

(assert (= (and b!1021496 (not res!459039)) b!1021503))

(assert (= (and b!1021503 (not res!459036)) b!1021508))

(assert (= (or b!1021497 b!1021496 b!1021509) bm!69930))

(assert (=> d!294455 m!1200105))

(assert (=> d!294455 m!1200123))

(assert (=> bm!69930 m!1200105))

(declare-fun m!1200265 () Bool)

(assert (=> b!1021506 m!1200265))

(assert (=> b!1021506 m!1200265))

(declare-fun m!1200267 () Bool)

(assert (=> b!1021506 m!1200267))

(declare-fun m!1200269 () Bool)

(assert (=> b!1021508 m!1200269))

(assert (=> b!1021498 m!1200269))

(assert (=> b!1021498 m!1200269))

(declare-fun m!1200271 () Bool)

(assert (=> b!1021498 m!1200271))

(assert (=> b!1021498 m!1200265))

(assert (=> b!1021498 m!1200271))

(assert (=> b!1021498 m!1200265))

(declare-fun m!1200273 () Bool)

(assert (=> b!1021498 m!1200273))

(assert (=> b!1021503 m!1200265))

(assert (=> b!1021503 m!1200265))

(assert (=> b!1021503 m!1200267))

(declare-fun m!1200275 () Bool)

(assert (=> b!1021501 m!1200275))

(assert (=> b!1021500 m!1200269))

(assert (=> b!1021254 d!294455))

(declare-fun d!294457 () Bool)

(assert (=> d!294457 (= (matchR!1358 r!15766 s!10566) (matchRSpec!621 r!15766 s!10566))))

(declare-fun lt!354452 () Unit!15319)

(declare-fun choose!6460 (Regex!2822 List!10052) Unit!15319)

(assert (=> d!294457 (= lt!354452 (choose!6460 r!15766 s!10566))))

(assert (=> d!294457 (validRegex!1291 r!15766)))

(assert (=> d!294457 (= (mainMatchTheorem!621 r!15766 s!10566) lt!354452)))

(declare-fun bs!246714 () Bool)

(assert (= bs!246714 d!294457))

(assert (=> bs!246714 m!1200117))

(assert (=> bs!246714 m!1200115))

(declare-fun m!1200277 () Bool)

(assert (=> bs!246714 m!1200277))

(assert (=> bs!246714 m!1200123))

(assert (=> b!1021254 d!294457))

(declare-fun b!1021510 () Bool)

(declare-fun e!652293 () Bool)

(declare-fun e!652299 () Bool)

(assert (=> b!1021510 (= e!652293 e!652299)))

(declare-fun res!459047 () Bool)

(assert (=> b!1021510 (=> res!459047 e!652299)))

(declare-fun call!69936 () Bool)

(assert (=> b!1021510 (= res!459047 call!69936)))

(declare-fun b!1021511 () Bool)

(declare-fun e!652298 () Bool)

(declare-fun lt!354453 () Bool)

(assert (=> b!1021511 (= e!652298 (= lt!354453 call!69936))))

(declare-fun d!294459 () Bool)

(assert (=> d!294459 e!652298))

(declare-fun c!169289 () Bool)

(assert (=> d!294459 (= c!169289 (is-EmptyExpr!2822 lt!354380))))

(declare-fun e!652295 () Bool)

(assert (=> d!294459 (= lt!354453 e!652295)))

(declare-fun c!169290 () Bool)

(assert (=> d!294459 (= c!169290 (isEmpty!6392 s!10566))))

(assert (=> d!294459 (validRegex!1291 lt!354380)))

(assert (=> d!294459 (= (matchR!1358 lt!354380 s!10566) lt!354453)))

(declare-fun b!1021512 () Bool)

(assert (=> b!1021512 (= e!652295 (matchR!1358 (derivativeStep!727 lt!354380 (head!1881 s!10566)) (tail!1443 s!10566)))))

(declare-fun b!1021513 () Bool)

(declare-fun res!459043 () Bool)

(declare-fun e!652294 () Bool)

(assert (=> b!1021513 (=> res!459043 e!652294)))

(declare-fun e!652296 () Bool)

(assert (=> b!1021513 (= res!459043 e!652296)))

(declare-fun res!459045 () Bool)

(assert (=> b!1021513 (=> (not res!459045) (not e!652296))))

(assert (=> b!1021513 (= res!459045 lt!354453)))

(declare-fun b!1021514 () Bool)

(assert (=> b!1021514 (= e!652296 (= (head!1881 s!10566) (c!169245 lt!354380)))))

(declare-fun b!1021515 () Bool)

(assert (=> b!1021515 (= e!652295 (nullable!925 lt!354380))))

(declare-fun b!1021516 () Bool)

(declare-fun e!652297 () Bool)

(assert (=> b!1021516 (= e!652298 e!652297)))

(declare-fun c!169291 () Bool)

(assert (=> b!1021516 (= c!169291 (is-EmptyLang!2822 lt!354380))))

(declare-fun b!1021517 () Bool)

(declare-fun res!459044 () Bool)

(assert (=> b!1021517 (=> res!459044 e!652299)))

(assert (=> b!1021517 (= res!459044 (not (isEmpty!6392 (tail!1443 s!10566))))))

(declare-fun b!1021518 () Bool)

(assert (=> b!1021518 (= e!652297 (not lt!354453))))

(declare-fun b!1021519 () Bool)

(assert (=> b!1021519 (= e!652294 e!652293)))

(declare-fun res!459048 () Bool)

(assert (=> b!1021519 (=> (not res!459048) (not e!652293))))

(assert (=> b!1021519 (= res!459048 (not lt!354453))))

(declare-fun b!1021520 () Bool)

(declare-fun res!459046 () Bool)

(assert (=> b!1021520 (=> (not res!459046) (not e!652296))))

(assert (=> b!1021520 (= res!459046 (isEmpty!6392 (tail!1443 s!10566)))))

(declare-fun bm!69931 () Bool)

(assert (=> bm!69931 (= call!69936 (isEmpty!6392 s!10566))))

(declare-fun b!1021521 () Bool)

(declare-fun res!459042 () Bool)

(assert (=> b!1021521 (=> res!459042 e!652294)))

(assert (=> b!1021521 (= res!459042 (not (is-ElementMatch!2822 lt!354380)))))

(assert (=> b!1021521 (= e!652297 e!652294)))

(declare-fun b!1021522 () Bool)

(assert (=> b!1021522 (= e!652299 (not (= (head!1881 s!10566) (c!169245 lt!354380))))))

(declare-fun b!1021523 () Bool)

(declare-fun res!459041 () Bool)

(assert (=> b!1021523 (=> (not res!459041) (not e!652296))))

(assert (=> b!1021523 (= res!459041 (not call!69936))))

(assert (= (and d!294459 c!169290) b!1021515))

(assert (= (and d!294459 (not c!169290)) b!1021512))

(assert (= (and d!294459 c!169289) b!1021511))

(assert (= (and d!294459 (not c!169289)) b!1021516))

(assert (= (and b!1021516 c!169291) b!1021518))

(assert (= (and b!1021516 (not c!169291)) b!1021521))

(assert (= (and b!1021521 (not res!459042)) b!1021513))

(assert (= (and b!1021513 res!459045) b!1021523))

(assert (= (and b!1021523 res!459041) b!1021520))

(assert (= (and b!1021520 res!459046) b!1021514))

(assert (= (and b!1021513 (not res!459043)) b!1021519))

(assert (= (and b!1021519 res!459048) b!1021510))

(assert (= (and b!1021510 (not res!459047)) b!1021517))

(assert (= (and b!1021517 (not res!459044)) b!1021522))

(assert (= (or b!1021511 b!1021510 b!1021523) bm!69931))

(assert (=> d!294459 m!1200105))

(declare-fun m!1200279 () Bool)

(assert (=> d!294459 m!1200279))

(assert (=> bm!69931 m!1200105))

(assert (=> b!1021520 m!1200265))

(assert (=> b!1021520 m!1200265))

(assert (=> b!1021520 m!1200267))

(assert (=> b!1021522 m!1200269))

(assert (=> b!1021512 m!1200269))

(assert (=> b!1021512 m!1200269))

(declare-fun m!1200281 () Bool)

(assert (=> b!1021512 m!1200281))

(assert (=> b!1021512 m!1200265))

(assert (=> b!1021512 m!1200281))

(assert (=> b!1021512 m!1200265))

(declare-fun m!1200283 () Bool)

(assert (=> b!1021512 m!1200283))

(assert (=> b!1021517 m!1200265))

(assert (=> b!1021517 m!1200265))

(assert (=> b!1021517 m!1200267))

(declare-fun m!1200285 () Bool)

(assert (=> b!1021515 m!1200285))

(assert (=> b!1021514 m!1200269))

(assert (=> b!1021244 d!294459))

(declare-fun b!1021524 () Bool)

(declare-fun e!652300 () Bool)

(declare-fun e!652306 () Bool)

(assert (=> b!1021524 (= e!652300 e!652306)))

(declare-fun res!459055 () Bool)

(assert (=> b!1021524 (=> res!459055 e!652306)))

(declare-fun call!69937 () Bool)

(assert (=> b!1021524 (= res!459055 call!69937)))

(declare-fun b!1021525 () Bool)

(declare-fun e!652305 () Bool)

(declare-fun lt!354454 () Bool)

(assert (=> b!1021525 (= e!652305 (= lt!354454 call!69937))))

(declare-fun d!294461 () Bool)

(assert (=> d!294461 e!652305))

(declare-fun c!169292 () Bool)

(assert (=> d!294461 (= c!169292 (is-EmptyExpr!2822 (regTwo!6156 r!15766)))))

(declare-fun e!652302 () Bool)

(assert (=> d!294461 (= lt!354454 e!652302)))

(declare-fun c!169293 () Bool)

(assert (=> d!294461 (= c!169293 (isEmpty!6392 s!10566))))

(assert (=> d!294461 (validRegex!1291 (regTwo!6156 r!15766))))

(assert (=> d!294461 (= (matchR!1358 (regTwo!6156 r!15766) s!10566) lt!354454)))

(declare-fun b!1021526 () Bool)

(assert (=> b!1021526 (= e!652302 (matchR!1358 (derivativeStep!727 (regTwo!6156 r!15766) (head!1881 s!10566)) (tail!1443 s!10566)))))

(declare-fun b!1021527 () Bool)

(declare-fun res!459051 () Bool)

(declare-fun e!652301 () Bool)

(assert (=> b!1021527 (=> res!459051 e!652301)))

(declare-fun e!652303 () Bool)

(assert (=> b!1021527 (= res!459051 e!652303)))

(declare-fun res!459053 () Bool)

(assert (=> b!1021527 (=> (not res!459053) (not e!652303))))

(assert (=> b!1021527 (= res!459053 lt!354454)))

(declare-fun b!1021528 () Bool)

(assert (=> b!1021528 (= e!652303 (= (head!1881 s!10566) (c!169245 (regTwo!6156 r!15766))))))

(declare-fun b!1021529 () Bool)

(assert (=> b!1021529 (= e!652302 (nullable!925 (regTwo!6156 r!15766)))))

(declare-fun b!1021530 () Bool)

(declare-fun e!652304 () Bool)

(assert (=> b!1021530 (= e!652305 e!652304)))

(declare-fun c!169294 () Bool)

(assert (=> b!1021530 (= c!169294 (is-EmptyLang!2822 (regTwo!6156 r!15766)))))

(declare-fun b!1021531 () Bool)

(declare-fun res!459052 () Bool)

(assert (=> b!1021531 (=> res!459052 e!652306)))

(assert (=> b!1021531 (= res!459052 (not (isEmpty!6392 (tail!1443 s!10566))))))

(declare-fun b!1021532 () Bool)

(assert (=> b!1021532 (= e!652304 (not lt!354454))))

(declare-fun b!1021533 () Bool)

(assert (=> b!1021533 (= e!652301 e!652300)))

(declare-fun res!459056 () Bool)

(assert (=> b!1021533 (=> (not res!459056) (not e!652300))))

(assert (=> b!1021533 (= res!459056 (not lt!354454))))

(declare-fun b!1021534 () Bool)

(declare-fun res!459054 () Bool)

(assert (=> b!1021534 (=> (not res!459054) (not e!652303))))

(assert (=> b!1021534 (= res!459054 (isEmpty!6392 (tail!1443 s!10566)))))

(declare-fun bm!69932 () Bool)

(assert (=> bm!69932 (= call!69937 (isEmpty!6392 s!10566))))

(declare-fun b!1021535 () Bool)

(declare-fun res!459050 () Bool)

(assert (=> b!1021535 (=> res!459050 e!652301)))

(assert (=> b!1021535 (= res!459050 (not (is-ElementMatch!2822 (regTwo!6156 r!15766))))))

(assert (=> b!1021535 (= e!652304 e!652301)))

(declare-fun b!1021536 () Bool)

(assert (=> b!1021536 (= e!652306 (not (= (head!1881 s!10566) (c!169245 (regTwo!6156 r!15766)))))))

(declare-fun b!1021537 () Bool)

(declare-fun res!459049 () Bool)

(assert (=> b!1021537 (=> (not res!459049) (not e!652303))))

(assert (=> b!1021537 (= res!459049 (not call!69937))))

(assert (= (and d!294461 c!169293) b!1021529))

(assert (= (and d!294461 (not c!169293)) b!1021526))

(assert (= (and d!294461 c!169292) b!1021525))

(assert (= (and d!294461 (not c!169292)) b!1021530))

(assert (= (and b!1021530 c!169294) b!1021532))

(assert (= (and b!1021530 (not c!169294)) b!1021535))

(assert (= (and b!1021535 (not res!459050)) b!1021527))

(assert (= (and b!1021527 res!459053) b!1021537))

(assert (= (and b!1021537 res!459049) b!1021534))

(assert (= (and b!1021534 res!459054) b!1021528))

(assert (= (and b!1021527 (not res!459051)) b!1021533))

(assert (= (and b!1021533 res!459056) b!1021524))

(assert (= (and b!1021524 (not res!459055)) b!1021531))

(assert (= (and b!1021531 (not res!459052)) b!1021536))

(assert (= (or b!1021525 b!1021524 b!1021537) bm!69932))

(assert (=> d!294461 m!1200105))

(assert (=> d!294461 m!1200121))

(assert (=> bm!69932 m!1200105))

(assert (=> b!1021534 m!1200265))

(assert (=> b!1021534 m!1200265))

(assert (=> b!1021534 m!1200267))

(assert (=> b!1021536 m!1200269))

(assert (=> b!1021526 m!1200269))

(assert (=> b!1021526 m!1200269))

(declare-fun m!1200291 () Bool)

(assert (=> b!1021526 m!1200291))

(assert (=> b!1021526 m!1200265))

(assert (=> b!1021526 m!1200291))

(assert (=> b!1021526 m!1200265))

(declare-fun m!1200295 () Bool)

(assert (=> b!1021526 m!1200295))

(assert (=> b!1021531 m!1200265))

(assert (=> b!1021531 m!1200265))

(assert (=> b!1021531 m!1200267))

(declare-fun m!1200297 () Bool)

(assert (=> b!1021529 m!1200297))

(assert (=> b!1021528 m!1200269))

(assert (=> b!1021244 d!294461))

(declare-fun b!1021578 () Bool)

(declare-fun e!652337 () Regex!2822)

(assert (=> b!1021578 (= e!652337 (regTwo!6156 r!15766))))

(declare-fun b!1021579 () Bool)

(declare-fun c!169309 () Bool)

(assert (=> b!1021579 (= c!169309 (is-Concat!4655 (regTwo!6156 r!15766)))))

(declare-fun e!652333 () Regex!2822)

(declare-fun e!652335 () Regex!2822)

(assert (=> b!1021579 (= e!652333 e!652335)))

(declare-fun b!1021580 () Bool)

(declare-fun call!69957 () Regex!2822)

(assert (=> b!1021580 (= e!652337 (Star!2822 call!69957))))

(declare-fun b!1021581 () Bool)

(declare-fun e!652334 () Regex!2822)

(declare-fun call!69958 () Regex!2822)

(assert (=> b!1021581 (= e!652334 call!69958)))

(declare-fun b!1021582 () Bool)

(assert (=> b!1021582 (= e!652334 e!652333)))

(declare-fun c!169310 () Bool)

(assert (=> b!1021582 (= c!169310 (and (is-Concat!4655 (regTwo!6156 r!15766)) (is-EmptyExpr!2822 (regTwo!6156 (regTwo!6156 r!15766)))))))

(declare-fun b!1021584 () Bool)

(declare-fun call!69956 () Regex!2822)

(assert (=> b!1021584 (= e!652333 call!69956)))

(declare-fun b!1021585 () Bool)

(declare-fun e!652338 () Regex!2822)

(assert (=> b!1021585 (= e!652335 e!652338)))

(declare-fun c!169311 () Bool)

(assert (=> b!1021585 (= c!169311 (is-Union!2822 (regTwo!6156 r!15766)))))

(declare-fun c!169313 () Bool)

(declare-fun bm!69949 () Bool)

(assert (=> bm!69949 (= call!69958 (removeUselessConcat!391 (ite c!169313 (regTwo!6156 (regTwo!6156 r!15766)) (ite (or c!169310 c!169309) (regOne!6156 (regTwo!6156 r!15766)) (regOne!6157 (regTwo!6156 r!15766))))))))

(declare-fun b!1021586 () Bool)

(declare-fun c!169312 () Bool)

(assert (=> b!1021586 (= c!169312 (is-Star!2822 (regTwo!6156 r!15766)))))

(assert (=> b!1021586 (= e!652338 e!652337)))

(declare-fun bm!69950 () Bool)

(assert (=> bm!69950 (= call!69956 call!69958)))

(declare-fun call!69955 () Regex!2822)

(declare-fun bm!69951 () Bool)

(assert (=> bm!69951 (= call!69955 (removeUselessConcat!391 (ite c!169309 (regTwo!6156 (regTwo!6156 r!15766)) (ite c!169311 (regTwo!6157 (regTwo!6156 r!15766)) (reg!3151 (regTwo!6156 r!15766))))))))

(declare-fun b!1021587 () Bool)

(declare-fun e!652336 () Bool)

(declare-fun lt!354457 () Regex!2822)

(assert (=> b!1021587 (= e!652336 (= (nullable!925 lt!354457) (nullable!925 (regTwo!6156 r!15766))))))

(declare-fun b!1021588 () Bool)

(declare-fun call!69954 () Regex!2822)

(assert (=> b!1021588 (= e!652338 (Union!2822 call!69954 call!69957))))

(declare-fun bm!69952 () Bool)

(assert (=> bm!69952 (= call!69954 call!69956)))

(declare-fun bm!69953 () Bool)

(assert (=> bm!69953 (= call!69957 call!69955)))

(declare-fun d!294465 () Bool)

(assert (=> d!294465 e!652336))

(declare-fun res!459069 () Bool)

(assert (=> d!294465 (=> (not res!459069) (not e!652336))))

(assert (=> d!294465 (= res!459069 (validRegex!1291 lt!354457))))

(assert (=> d!294465 (= lt!354457 e!652334)))

(assert (=> d!294465 (= c!169313 (and (is-Concat!4655 (regTwo!6156 r!15766)) (is-EmptyExpr!2822 (regOne!6156 (regTwo!6156 r!15766)))))))

(assert (=> d!294465 (validRegex!1291 (regTwo!6156 r!15766))))

(assert (=> d!294465 (= (removeUselessConcat!391 (regTwo!6156 r!15766)) lt!354457)))

(declare-fun b!1021583 () Bool)

(assert (=> b!1021583 (= e!652335 (Concat!4655 call!69954 call!69955))))

(assert (= (and d!294465 c!169313) b!1021581))

(assert (= (and d!294465 (not c!169313)) b!1021582))

(assert (= (and b!1021582 c!169310) b!1021584))

(assert (= (and b!1021582 (not c!169310)) b!1021579))

(assert (= (and b!1021579 c!169309) b!1021583))

(assert (= (and b!1021579 (not c!169309)) b!1021585))

(assert (= (and b!1021585 c!169311) b!1021588))

(assert (= (and b!1021585 (not c!169311)) b!1021586))

(assert (= (and b!1021586 c!169312) b!1021580))

(assert (= (and b!1021586 (not c!169312)) b!1021578))

(assert (= (or b!1021588 b!1021580) bm!69953))

(assert (= (or b!1021583 bm!69953) bm!69951))

(assert (= (or b!1021583 b!1021588) bm!69952))

(assert (= (or b!1021584 bm!69952) bm!69950))

(assert (= (or b!1021581 bm!69950) bm!69949))

(assert (= (and d!294465 res!459069) b!1021587))

(declare-fun m!1200299 () Bool)

(assert (=> bm!69949 m!1200299))

(declare-fun m!1200301 () Bool)

(assert (=> bm!69951 m!1200301))

(declare-fun m!1200303 () Bool)

(assert (=> b!1021587 m!1200303))

(assert (=> b!1021587 m!1200297))

(declare-fun m!1200305 () Bool)

(assert (=> d!294465 m!1200305))

(assert (=> d!294465 m!1200121))

(assert (=> b!1021244 d!294465))

(declare-fun d!294467 () Bool)

(assert (=> d!294467 (= (matchR!1358 (regTwo!6156 r!15766) s!10566) (matchR!1358 (removeUselessConcat!391 (regTwo!6156 r!15766)) s!10566))))

(declare-fun lt!354460 () Unit!15319)

(declare-fun choose!6464 (Regex!2822 List!10052) Unit!15319)

(assert (=> d!294467 (= lt!354460 (choose!6464 (regTwo!6156 r!15766) s!10566))))

(assert (=> d!294467 (validRegex!1291 (regTwo!6156 r!15766))))

(assert (=> d!294467 (= (lemmaRemoveUselessConcatSound!231 (regTwo!6156 r!15766) s!10566) lt!354460)))

(declare-fun bs!246716 () Bool)

(assert (= bs!246716 d!294467))

(assert (=> bs!246716 m!1200127))

(assert (=> bs!246716 m!1200121))

(assert (=> bs!246716 m!1200129))

(assert (=> bs!246716 m!1200129))

(declare-fun m!1200313 () Bool)

(assert (=> bs!246716 m!1200313))

(declare-fun m!1200315 () Bool)

(assert (=> bs!246716 m!1200315))

(assert (=> b!1021244 d!294467))

(declare-fun bm!69957 () Bool)

(declare-fun call!69962 () Bool)

(declare-fun call!69963 () Bool)

(assert (=> bm!69957 (= call!69962 call!69963)))

(declare-fun b!1021598 () Bool)

(declare-fun e!652347 () Bool)

(declare-fun e!652352 () Bool)

(assert (=> b!1021598 (= e!652347 e!652352)))

(declare-fun c!169316 () Bool)

(assert (=> b!1021598 (= c!169316 (is-Union!2822 r!15766))))

(declare-fun b!1021599 () Bool)

(declare-fun e!652346 () Bool)

(assert (=> b!1021599 (= e!652346 call!69962)))

(declare-fun b!1021600 () Bool)

(declare-fun e!652351 () Bool)

(assert (=> b!1021600 (= e!652351 e!652347)))

(declare-fun c!169317 () Bool)

(assert (=> b!1021600 (= c!169317 (is-Star!2822 r!15766))))

(declare-fun b!1021601 () Bool)

(declare-fun e!652350 () Bool)

(assert (=> b!1021601 (= e!652350 call!69962)))

(declare-fun b!1021602 () Bool)

(declare-fun res!459075 () Bool)

(assert (=> b!1021602 (=> (not res!459075) (not e!652350))))

(declare-fun call!69964 () Bool)

(assert (=> b!1021602 (= res!459075 call!69964)))

(assert (=> b!1021602 (= e!652352 e!652350)))

(declare-fun bm!69958 () Bool)

(assert (=> bm!69958 (= call!69963 (validRegex!1291 (ite c!169317 (reg!3151 r!15766) (ite c!169316 (regTwo!6157 r!15766) (regTwo!6156 r!15766)))))))

(declare-fun b!1021603 () Bool)

(declare-fun e!652349 () Bool)

(assert (=> b!1021603 (= e!652349 e!652346)))

(declare-fun res!459079 () Bool)

(assert (=> b!1021603 (=> (not res!459079) (not e!652346))))

(assert (=> b!1021603 (= res!459079 call!69964)))

(declare-fun b!1021604 () Bool)

(declare-fun res!459078 () Bool)

(assert (=> b!1021604 (=> res!459078 e!652349)))

(assert (=> b!1021604 (= res!459078 (not (is-Concat!4655 r!15766)))))

(assert (=> b!1021604 (= e!652352 e!652349)))

(declare-fun b!1021605 () Bool)

(declare-fun e!652348 () Bool)

(assert (=> b!1021605 (= e!652347 e!652348)))

(declare-fun res!459076 () Bool)

(assert (=> b!1021605 (= res!459076 (not (nullable!925 (reg!3151 r!15766))))))

(assert (=> b!1021605 (=> (not res!459076) (not e!652348))))

(declare-fun d!294471 () Bool)

(declare-fun res!459077 () Bool)

(assert (=> d!294471 (=> res!459077 e!652351)))

(assert (=> d!294471 (= res!459077 (is-ElementMatch!2822 r!15766))))

(assert (=> d!294471 (= (validRegex!1291 r!15766) e!652351)))

(declare-fun b!1021606 () Bool)

(assert (=> b!1021606 (= e!652348 call!69963)))

(declare-fun bm!69959 () Bool)

(assert (=> bm!69959 (= call!69964 (validRegex!1291 (ite c!169316 (regOne!6157 r!15766) (regOne!6156 r!15766))))))

(assert (= (and d!294471 (not res!459077)) b!1021600))

(assert (= (and b!1021600 c!169317) b!1021605))

(assert (= (and b!1021600 (not c!169317)) b!1021598))

(assert (= (and b!1021605 res!459076) b!1021606))

(assert (= (and b!1021598 c!169316) b!1021602))

(assert (= (and b!1021598 (not c!169316)) b!1021604))

(assert (= (and b!1021602 res!459075) b!1021601))

(assert (= (and b!1021604 (not res!459078)) b!1021603))

(assert (= (and b!1021603 res!459079) b!1021599))

(assert (= (or b!1021601 b!1021599) bm!69957))

(assert (= (or b!1021602 b!1021603) bm!69959))

(assert (= (or b!1021606 bm!69957) bm!69958))

(declare-fun m!1200317 () Bool)

(assert (=> bm!69958 m!1200317))

(declare-fun m!1200319 () Bool)

(assert (=> b!1021605 m!1200319))

(declare-fun m!1200321 () Bool)

(assert (=> bm!69959 m!1200321))

(assert (=> start!88904 d!294471))

(declare-fun b!1021618 () Bool)

(declare-fun e!652355 () Bool)

(declare-fun tp!310292 () Bool)

(declare-fun tp!310293 () Bool)

(assert (=> b!1021618 (= e!652355 (and tp!310292 tp!310293))))

(declare-fun b!1021619 () Bool)

(declare-fun tp!310291 () Bool)

(assert (=> b!1021619 (= e!652355 tp!310291)))

(assert (=> b!1021247 (= tp!310258 e!652355)))

(declare-fun b!1021617 () Bool)

(assert (=> b!1021617 (= e!652355 tp_is_empty!5287)))

(declare-fun b!1021620 () Bool)

(declare-fun tp!310295 () Bool)

(declare-fun tp!310294 () Bool)

(assert (=> b!1021620 (= e!652355 (and tp!310295 tp!310294))))

(assert (= (and b!1021247 (is-ElementMatch!2822 (reg!3151 r!15766))) b!1021617))

(assert (= (and b!1021247 (is-Concat!4655 (reg!3151 r!15766))) b!1021618))

(assert (= (and b!1021247 (is-Star!2822 (reg!3151 r!15766))) b!1021619))

(assert (= (and b!1021247 (is-Union!2822 (reg!3151 r!15766))) b!1021620))

(declare-fun b!1021625 () Bool)

(declare-fun e!652358 () Bool)

(declare-fun tp!310298 () Bool)

(assert (=> b!1021625 (= e!652358 (and tp_is_empty!5287 tp!310298))))

(assert (=> b!1021249 (= tp!310257 e!652358)))

(assert (= (and b!1021249 (is-Cons!10036 (t!101098 s!10566))) b!1021625))

(declare-fun b!1021627 () Bool)

(declare-fun e!652359 () Bool)

(declare-fun tp!310300 () Bool)

(declare-fun tp!310301 () Bool)

(assert (=> b!1021627 (= e!652359 (and tp!310300 tp!310301))))

(declare-fun b!1021628 () Bool)

(declare-fun tp!310299 () Bool)

(assert (=> b!1021628 (= e!652359 tp!310299)))

(assert (=> b!1021253 (= tp!310260 e!652359)))

(declare-fun b!1021626 () Bool)

(assert (=> b!1021626 (= e!652359 tp_is_empty!5287)))

(declare-fun b!1021629 () Bool)

(declare-fun tp!310303 () Bool)

(declare-fun tp!310302 () Bool)

(assert (=> b!1021629 (= e!652359 (and tp!310303 tp!310302))))

(assert (= (and b!1021253 (is-ElementMatch!2822 (regOne!6157 r!15766))) b!1021626))

(assert (= (and b!1021253 (is-Concat!4655 (regOne!6157 r!15766))) b!1021627))

(assert (= (and b!1021253 (is-Star!2822 (regOne!6157 r!15766))) b!1021628))

(assert (= (and b!1021253 (is-Union!2822 (regOne!6157 r!15766))) b!1021629))

(declare-fun b!1021631 () Bool)

(declare-fun e!652360 () Bool)

(declare-fun tp!310305 () Bool)

(declare-fun tp!310306 () Bool)

(assert (=> b!1021631 (= e!652360 (and tp!310305 tp!310306))))

(declare-fun b!1021632 () Bool)

(declare-fun tp!310304 () Bool)

(assert (=> b!1021632 (= e!652360 tp!310304)))

(assert (=> b!1021253 (= tp!310262 e!652360)))

(declare-fun b!1021630 () Bool)

(assert (=> b!1021630 (= e!652360 tp_is_empty!5287)))

(declare-fun b!1021633 () Bool)

(declare-fun tp!310308 () Bool)

(declare-fun tp!310307 () Bool)

(assert (=> b!1021633 (= e!652360 (and tp!310308 tp!310307))))

(assert (= (and b!1021253 (is-ElementMatch!2822 (regTwo!6157 r!15766))) b!1021630))

(assert (= (and b!1021253 (is-Concat!4655 (regTwo!6157 r!15766))) b!1021631))

(assert (= (and b!1021253 (is-Star!2822 (regTwo!6157 r!15766))) b!1021632))

(assert (= (and b!1021253 (is-Union!2822 (regTwo!6157 r!15766))) b!1021633))

(declare-fun b!1021635 () Bool)

(declare-fun e!652361 () Bool)

(declare-fun tp!310310 () Bool)

(declare-fun tp!310311 () Bool)

(assert (=> b!1021635 (= e!652361 (and tp!310310 tp!310311))))

(declare-fun b!1021636 () Bool)

(declare-fun tp!310309 () Bool)

(assert (=> b!1021636 (= e!652361 tp!310309)))

(assert (=> b!1021248 (= tp!310261 e!652361)))

(declare-fun b!1021634 () Bool)

(assert (=> b!1021634 (= e!652361 tp_is_empty!5287)))

(declare-fun b!1021637 () Bool)

(declare-fun tp!310313 () Bool)

(declare-fun tp!310312 () Bool)

(assert (=> b!1021637 (= e!652361 (and tp!310313 tp!310312))))

(assert (= (and b!1021248 (is-ElementMatch!2822 (regOne!6156 r!15766))) b!1021634))

(assert (= (and b!1021248 (is-Concat!4655 (regOne!6156 r!15766))) b!1021635))

(assert (= (and b!1021248 (is-Star!2822 (regOne!6156 r!15766))) b!1021636))

(assert (= (and b!1021248 (is-Union!2822 (regOne!6156 r!15766))) b!1021637))

(declare-fun b!1021639 () Bool)

(declare-fun e!652362 () Bool)

(declare-fun tp!310315 () Bool)

(declare-fun tp!310316 () Bool)

(assert (=> b!1021639 (= e!652362 (and tp!310315 tp!310316))))

(declare-fun b!1021640 () Bool)

(declare-fun tp!310314 () Bool)

(assert (=> b!1021640 (= e!652362 tp!310314)))

(assert (=> b!1021248 (= tp!310259 e!652362)))

(declare-fun b!1021638 () Bool)

(assert (=> b!1021638 (= e!652362 tp_is_empty!5287)))

(declare-fun b!1021641 () Bool)

(declare-fun tp!310318 () Bool)

(declare-fun tp!310317 () Bool)

(assert (=> b!1021641 (= e!652362 (and tp!310318 tp!310317))))

(assert (= (and b!1021248 (is-ElementMatch!2822 (regTwo!6156 r!15766))) b!1021638))

(assert (= (and b!1021248 (is-Concat!4655 (regTwo!6156 r!15766))) b!1021639))

(assert (= (and b!1021248 (is-Star!2822 (regTwo!6156 r!15766))) b!1021640))

(assert (= (and b!1021248 (is-Union!2822 (regTwo!6156 r!15766))) b!1021641))

(push 1)

(assert (not b!1021503))

(assert (not bm!69949))

(assert tp_is_empty!5287)

(assert (not b!1021345))

(assert (not b!1021625))

(assert (not d!294461))

(assert (not b!1021641))

(assert (not bm!69920))

(assert (not b!1021498))

(assert (not b!1021512))

(assert (not d!294431))

(assert (not bm!69959))

(assert (not bm!69926))

(assert (not b!1021389))

(assert (not b!1021385))

(assert (not b!1021628))

(assert (not d!294445))

(assert (not b!1021528))

(assert (not bm!69921))

(assert (not d!294457))

(assert (not b!1021587))

(assert (not b!1021526))

(assert (not bm!69931))

(assert (not b!1021629))

(assert (not b!1021522))

(assert (not b!1021501))

(assert (not b!1021508))

(assert (not d!294455))

(assert (not d!294443))

(assert (not b!1021517))

(assert (not b!1021637))

(assert (not b!1021605))

(assert (not b!1021506))

(assert (not bm!69958))

(assert (not bm!69932))

(assert (not d!294459))

(assert (not b!1021344))

(assert (not b!1021632))

(assert (not b!1021384))

(assert (not b!1021454))

(assert (not b!1021620))

(assert (not b!1021635))

(assert (not bm!69951))

(assert (not d!294437))

(assert (not b!1021390))

(assert (not d!294465))

(assert (not b!1021619))

(assert (not bm!69927))

(assert (not b!1021618))

(assert (not b!1021388))

(assert (not bm!69930))

(assert (not d!294447))

(assert (not b!1021639))

(assert (not b!1021333))

(assert (not d!294435))

(assert (not b!1021636))

(assert (not b!1021450))

(assert (not b!1021640))

(assert (not b!1021631))

(assert (not b!1021529))

(assert (not d!294429))

(assert (not b!1021515))

(assert (not b!1021391))

(assert (not b!1021627))

(assert (not b!1021531))

(assert (not b!1021514))

(assert (not b!1021520))

(assert (not b!1021500))

(assert (not b!1021534))

(assert (not b!1021633))

(assert (not d!294467))

(assert (not b!1021536))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

