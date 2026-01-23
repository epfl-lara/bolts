; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!288250 () Bool)

(assert start!288250)

(declare-fun b!2983285 () Bool)

(assert (=> b!2983285 true))

(assert (=> b!2983285 true))

(assert (=> b!2983285 true))

(declare-fun lambda!111340 () Int)

(declare-fun lambda!111339 () Int)

(assert (=> b!2983285 (not (= lambda!111340 lambda!111339))))

(assert (=> b!2983285 true))

(assert (=> b!2983285 true))

(assert (=> b!2983285 true))

(declare-fun b!2983278 () Bool)

(declare-fun e!1876077 () Bool)

(declare-datatypes ((C!18818 0))(
  ( (C!18819 (val!11445 Int)) )
))
(declare-datatypes ((Regex!9316 0))(
  ( (ElementMatch!9316 (c!490039 C!18818)) (Concat!14637 (regOne!19144 Regex!9316) (regTwo!19144 Regex!9316)) (EmptyExpr!9316) (Star!9316 (reg!9645 Regex!9316)) (EmptyLang!9316) (Union!9316 (regOne!19145 Regex!9316) (regTwo!19145 Regex!9316)) )
))
(declare-fun r!17423 () Regex!9316)

(declare-fun validRegex!4049 (Regex!9316) Bool)

(declare-fun simplify!317 (Regex!9316) Regex!9316)

(assert (=> b!2983278 (= e!1876077 (validRegex!4049 (simplify!317 r!17423)))))

(declare-fun lt!1038871 () Regex!9316)

(declare-datatypes ((List!35181 0))(
  ( (Nil!35057) (Cons!35057 (h!40477 C!18818) (t!234246 List!35181)) )
))
(declare-datatypes ((tuple2!33970 0))(
  ( (tuple2!33971 (_1!20117 List!35181) (_2!20117 List!35181)) )
))
(declare-fun lt!1038885 () tuple2!33970)

(declare-fun matchR!4198 (Regex!9316 List!35181) Bool)

(declare-fun ++!8374 (List!35181 List!35181) List!35181)

(assert (=> b!2983278 (matchR!4198 lt!1038871 (++!8374 (_1!20117 lt!1038885) (_2!20117 lt!1038885)))))

(declare-datatypes ((Unit!49031 0))(
  ( (Unit!49032) )
))
(declare-fun lt!1038877 () Unit!49031)

(declare-fun lemmaStarApp!21 (Regex!9316 List!35181 List!35181) Unit!49031)

(assert (=> b!2983278 (= lt!1038877 (lemmaStarApp!21 (reg!9645 r!17423) (_1!20117 lt!1038885) (_2!20117 lt!1038885)))))

(declare-fun b!2983279 () Bool)

(declare-fun res!1230385 () Bool)

(declare-fun e!1876078 () Bool)

(assert (=> b!2983279 (=> res!1230385 e!1876078)))

(declare-fun lt!1038875 () Regex!9316)

(assert (=> b!2983279 (= res!1230385 (not (matchR!4198 lt!1038875 (_2!20117 lt!1038885))))))

(declare-fun b!2983280 () Bool)

(declare-fun e!1876080 () Bool)

(declare-fun tp!949470 () Bool)

(declare-fun tp!949467 () Bool)

(assert (=> b!2983280 (= e!1876080 (and tp!949470 tp!949467))))

(declare-fun b!2983281 () Bool)

(declare-fun tp_is_empty!16195 () Bool)

(assert (=> b!2983281 (= e!1876080 tp_is_empty!16195)))

(declare-fun b!2983282 () Bool)

(declare-fun e!1876075 () Unit!49031)

(declare-fun Unit!49033 () Unit!49031)

(assert (=> b!2983282 (= e!1876075 Unit!49033)))

(declare-fun lt!1038888 () Unit!49031)

(declare-fun mainMatchTheorem!1453 (Regex!9316 List!35181) Unit!49031)

(assert (=> b!2983282 (= lt!1038888 (mainMatchTheorem!1453 (reg!9645 r!17423) (_1!20117 lt!1038885)))))

(assert (=> b!2983282 false))

(declare-fun b!2983283 () Bool)

(declare-fun tp!949468 () Bool)

(declare-fun tp!949469 () Bool)

(assert (=> b!2983283 (= e!1876080 (and tp!949468 tp!949469))))

(declare-fun b!2983284 () Bool)

(declare-fun tp!949471 () Bool)

(assert (=> b!2983284 (= e!1876080 tp!949471)))

(declare-fun b!2983286 () Bool)

(declare-fun e!1876071 () Bool)

(declare-fun e!1876074 () Bool)

(assert (=> b!2983286 (= e!1876071 e!1876074)))

(declare-fun res!1230386 () Bool)

(assert (=> b!2983286 (=> res!1230386 e!1876074)))

(declare-fun lt!1038878 () Regex!9316)

(declare-fun isEmptyLang!430 (Regex!9316) Bool)

(assert (=> b!2983286 (= res!1230386 (isEmptyLang!430 lt!1038878))))

(assert (=> b!2983286 (= lt!1038878 (simplify!317 (reg!9645 r!17423)))))

(declare-fun b!2983287 () Bool)

(declare-fun res!1230384 () Bool)

(assert (=> b!2983287 (=> res!1230384 e!1876077)))

(assert (=> b!2983287 (= res!1230384 (not (validRegex!4049 lt!1038871)))))

(declare-fun b!2983288 () Bool)

(declare-fun e!1876073 () Bool)

(declare-fun tp!949466 () Bool)

(assert (=> b!2983288 (= e!1876073 (and tp_is_empty!16195 tp!949466))))

(declare-fun b!2983289 () Bool)

(declare-fun e!1876072 () Bool)

(assert (=> b!2983289 (= e!1876072 (not e!1876071))))

(declare-fun res!1230379 () Bool)

(assert (=> b!2983289 (=> res!1230379 e!1876071)))

(declare-fun lt!1038872 () Bool)

(assert (=> b!2983289 (= res!1230379 (or lt!1038872 (is-Concat!14637 r!17423) (is-Union!9316 r!17423) (not (is-Star!9316 r!17423))))))

(declare-fun s!11993 () List!35181)

(declare-fun matchRSpec!1453 (Regex!9316 List!35181) Bool)

(assert (=> b!2983289 (= lt!1038872 (matchRSpec!1453 r!17423 s!11993))))

(assert (=> b!2983289 (= lt!1038872 (matchR!4198 r!17423 s!11993))))

(declare-fun lt!1038874 () Unit!49031)

(assert (=> b!2983289 (= lt!1038874 (mainMatchTheorem!1453 r!17423 s!11993))))

(declare-fun b!2983290 () Bool)

(declare-fun e!1876079 () Bool)

(declare-fun e!1876070 () Bool)

(assert (=> b!2983290 (= e!1876079 e!1876070)))

(declare-fun res!1230383 () Bool)

(assert (=> b!2983290 (=> res!1230383 e!1876070)))

(declare-fun isEmpty!19318 (List!35181) Bool)

(assert (=> b!2983290 (= res!1230383 (isEmpty!19318 s!11993))))

(assert (=> b!2983290 (matchRSpec!1453 lt!1038875 s!11993)))

(declare-fun lt!1038884 () Unit!49031)

(assert (=> b!2983290 (= lt!1038884 (mainMatchTheorem!1453 lt!1038875 s!11993))))

(declare-fun b!2983291 () Bool)

(declare-fun Unit!49034 () Unit!49031)

(assert (=> b!2983291 (= e!1876075 Unit!49034)))

(declare-fun b!2983292 () Bool)

(assert (=> b!2983292 (= e!1876078 e!1876077)))

(declare-fun res!1230382 () Bool)

(assert (=> b!2983292 (=> res!1230382 e!1876077)))

(declare-fun lt!1038882 () Bool)

(assert (=> b!2983292 (= res!1230382 (not lt!1038882))))

(declare-fun lt!1038873 () Regex!9316)

(assert (=> b!2983292 (= lt!1038882 (matchR!4198 lt!1038873 (_2!20117 lt!1038885)))))

(assert (=> b!2983292 (= lt!1038882 (matchR!4198 lt!1038871 (_2!20117 lt!1038885)))))

(assert (=> b!2983292 (= lt!1038873 (simplify!317 lt!1038871))))

(declare-fun lt!1038887 () Unit!49031)

(declare-fun lemmaSimplifySound!181 (Regex!9316 List!35181) Unit!49031)

(assert (=> b!2983292 (= lt!1038887 (lemmaSimplifySound!181 lt!1038871 (_2!20117 lt!1038885)))))

(assert (=> b!2983292 (= lt!1038871 (Star!9316 (reg!9645 r!17423)))))

(declare-fun lt!1038886 () Unit!49031)

(assert (=> b!2983292 (= lt!1038886 e!1876075)))

(declare-fun c!490038 () Bool)

(declare-fun size!26488 (List!35181) Int)

(assert (=> b!2983292 (= c!490038 (= (size!26488 (_2!20117 lt!1038885)) (size!26488 s!11993)))))

(assert (=> b!2983292 (matchR!4198 (reg!9645 r!17423) (_1!20117 lt!1038885))))

(declare-fun lt!1038880 () Unit!49031)

(assert (=> b!2983292 (= lt!1038880 (lemmaSimplifySound!181 (reg!9645 r!17423) (_1!20117 lt!1038885)))))

(declare-fun b!2983293 () Bool)

(assert (=> b!2983293 (= e!1876074 e!1876079)))

(declare-fun res!1230387 () Bool)

(assert (=> b!2983293 (=> res!1230387 e!1876079)))

(assert (=> b!2983293 (= res!1230387 (not (matchR!4198 lt!1038875 s!11993)))))

(assert (=> b!2983293 (= lt!1038875 (Star!9316 lt!1038878))))

(declare-fun b!2983294 () Bool)

(declare-fun e!1876076 () Bool)

(assert (=> b!2983294 (= e!1876076 e!1876078)))

(declare-fun res!1230381 () Bool)

(assert (=> b!2983294 (=> res!1230381 e!1876078)))

(assert (=> b!2983294 (= res!1230381 (not (matchR!4198 lt!1038878 (_1!20117 lt!1038885))))))

(declare-datatypes ((Option!6717 0))(
  ( (None!6716) (Some!6716 (v!34850 tuple2!33970)) )
))
(declare-fun lt!1038879 () Option!6717)

(declare-fun get!10843 (Option!6717) tuple2!33970)

(assert (=> b!2983294 (= lt!1038885 (get!10843 lt!1038879))))

(assert (=> b!2983285 (= e!1876070 e!1876076)))

(declare-fun res!1230380 () Bool)

(assert (=> b!2983285 (=> res!1230380 e!1876076)))

(declare-fun lt!1038876 () Bool)

(assert (=> b!2983285 (= res!1230380 (not lt!1038876))))

(declare-fun Exists!1596 (Int) Bool)

(assert (=> b!2983285 (= (Exists!1596 lambda!111339) (Exists!1596 lambda!111340))))

(declare-fun lt!1038881 () Unit!49031)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!281 (Regex!9316 List!35181) Unit!49031)

(assert (=> b!2983285 (= lt!1038881 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!281 lt!1038878 s!11993))))

(assert (=> b!2983285 (= lt!1038876 (Exists!1596 lambda!111339))))

(declare-fun isDefined!5268 (Option!6717) Bool)

(assert (=> b!2983285 (= lt!1038876 (isDefined!5268 lt!1038879))))

(declare-fun findConcatSeparation!1111 (Regex!9316 Regex!9316 List!35181 List!35181 List!35181) Option!6717)

(assert (=> b!2983285 (= lt!1038879 (findConcatSeparation!1111 lt!1038878 lt!1038875 Nil!35057 s!11993 s!11993))))

(declare-fun lt!1038883 () Unit!49031)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!889 (Regex!9316 Regex!9316 List!35181) Unit!49031)

(assert (=> b!2983285 (= lt!1038883 (lemmaFindConcatSeparationEquivalentToExists!889 lt!1038878 lt!1038875 s!11993))))

(declare-fun res!1230388 () Bool)

(assert (=> start!288250 (=> (not res!1230388) (not e!1876072))))

(assert (=> start!288250 (= res!1230388 (validRegex!4049 r!17423))))

(assert (=> start!288250 e!1876072))

(assert (=> start!288250 e!1876080))

(assert (=> start!288250 e!1876073))

(assert (= (and start!288250 res!1230388) b!2983289))

(assert (= (and b!2983289 (not res!1230379)) b!2983286))

(assert (= (and b!2983286 (not res!1230386)) b!2983293))

(assert (= (and b!2983293 (not res!1230387)) b!2983290))

(assert (= (and b!2983290 (not res!1230383)) b!2983285))

(assert (= (and b!2983285 (not res!1230380)) b!2983294))

(assert (= (and b!2983294 (not res!1230381)) b!2983279))

(assert (= (and b!2983279 (not res!1230385)) b!2983292))

(assert (= (and b!2983292 c!490038) b!2983282))

(assert (= (and b!2983292 (not c!490038)) b!2983291))

(assert (= (and b!2983292 (not res!1230382)) b!2983287))

(assert (= (and b!2983287 (not res!1230384)) b!2983278))

(assert (= (and start!288250 (is-ElementMatch!9316 r!17423)) b!2983281))

(assert (= (and start!288250 (is-Concat!14637 r!17423)) b!2983283))

(assert (= (and start!288250 (is-Star!9316 r!17423)) b!2983284))

(assert (= (and start!288250 (is-Union!9316 r!17423)) b!2983280))

(assert (= (and start!288250 (is-Cons!35057 s!11993)) b!2983288))

(declare-fun m!3343549 () Bool)

(assert (=> b!2983292 m!3343549))

(declare-fun m!3343551 () Bool)

(assert (=> b!2983292 m!3343551))

(declare-fun m!3343553 () Bool)

(assert (=> b!2983292 m!3343553))

(declare-fun m!3343555 () Bool)

(assert (=> b!2983292 m!3343555))

(declare-fun m!3343557 () Bool)

(assert (=> b!2983292 m!3343557))

(declare-fun m!3343559 () Bool)

(assert (=> b!2983292 m!3343559))

(declare-fun m!3343561 () Bool)

(assert (=> b!2983292 m!3343561))

(declare-fun m!3343563 () Bool)

(assert (=> b!2983292 m!3343563))

(declare-fun m!3343565 () Bool)

(assert (=> b!2983279 m!3343565))

(declare-fun m!3343567 () Bool)

(assert (=> b!2983285 m!3343567))

(declare-fun m!3343569 () Bool)

(assert (=> b!2983285 m!3343569))

(declare-fun m!3343571 () Bool)

(assert (=> b!2983285 m!3343571))

(declare-fun m!3343573 () Bool)

(assert (=> b!2983285 m!3343573))

(declare-fun m!3343575 () Bool)

(assert (=> b!2983285 m!3343575))

(declare-fun m!3343577 () Bool)

(assert (=> b!2983285 m!3343577))

(assert (=> b!2983285 m!3343569))

(declare-fun m!3343579 () Bool)

(assert (=> b!2983286 m!3343579))

(declare-fun m!3343581 () Bool)

(assert (=> b!2983286 m!3343581))

(declare-fun m!3343583 () Bool)

(assert (=> b!2983293 m!3343583))

(declare-fun m!3343585 () Bool)

(assert (=> b!2983294 m!3343585))

(declare-fun m!3343587 () Bool)

(assert (=> b!2983294 m!3343587))

(declare-fun m!3343589 () Bool)

(assert (=> b!2983282 m!3343589))

(declare-fun m!3343591 () Bool)

(assert (=> b!2983278 m!3343591))

(declare-fun m!3343593 () Bool)

(assert (=> b!2983278 m!3343593))

(declare-fun m!3343595 () Bool)

(assert (=> b!2983278 m!3343595))

(declare-fun m!3343597 () Bool)

(assert (=> b!2983278 m!3343597))

(assert (=> b!2983278 m!3343595))

(assert (=> b!2983278 m!3343591))

(declare-fun m!3343599 () Bool)

(assert (=> b!2983278 m!3343599))

(declare-fun m!3343601 () Bool)

(assert (=> b!2983290 m!3343601))

(declare-fun m!3343603 () Bool)

(assert (=> b!2983290 m!3343603))

(declare-fun m!3343605 () Bool)

(assert (=> b!2983290 m!3343605))

(declare-fun m!3343607 () Bool)

(assert (=> b!2983289 m!3343607))

(declare-fun m!3343609 () Bool)

(assert (=> b!2983289 m!3343609))

(declare-fun m!3343611 () Bool)

(assert (=> b!2983289 m!3343611))

(declare-fun m!3343613 () Bool)

(assert (=> b!2983287 m!3343613))

(declare-fun m!3343615 () Bool)

(assert (=> start!288250 m!3343615))

(push 1)

(assert (not b!2983293))

(assert (not b!2983283))

(assert (not b!2983278))

(assert (not b!2983284))

(assert (not b!2983279))

(assert (not b!2983290))

(assert tp_is_empty!16195)

(assert (not b!2983286))

(assert (not b!2983285))

(assert (not b!2983294))

(assert (not b!2983282))

(assert (not b!2983287))

(assert (not b!2983289))

(assert (not b!2983288))

(assert (not b!2983292))

(assert (not start!288250))

(assert (not b!2983280))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!843810 () Bool)

(assert (=> d!843810 (= (isEmptyLang!430 lt!1038878) (is-EmptyLang!9316 lt!1038878))))

(assert (=> b!2983286 d!843810))

(declare-fun b!2983418 () Bool)

(declare-fun e!1876155 () Regex!9316)

(assert (=> b!2983418 (= e!1876155 EmptyExpr!9316)))

(declare-fun b!2983419 () Bool)

(declare-fun e!1876149 () Regex!9316)

(assert (=> b!2983419 (= e!1876149 EmptyLang!9316)))

(declare-fun bm!199282 () Bool)

(declare-fun call!199291 () Bool)

(declare-fun call!199287 () Bool)

(assert (=> bm!199282 (= call!199291 call!199287)))

(declare-fun b!2983420 () Bool)

(declare-fun e!1876159 () Bool)

(declare-fun call!199289 () Bool)

(assert (=> b!2983420 (= e!1876159 call!199289)))

(declare-fun b!2983421 () Bool)

(declare-fun c!490072 () Bool)

(declare-fun call!199288 () Bool)

(assert (=> b!2983421 (= c!490072 call!199288)))

(declare-fun e!1876154 () Regex!9316)

(assert (=> b!2983421 (= e!1876149 e!1876154)))

(declare-fun b!2983422 () Bool)

(declare-fun e!1876160 () Regex!9316)

(assert (=> b!2983422 (= e!1876160 (reg!9645 r!17423))))

(declare-fun b!2983423 () Bool)

(declare-fun e!1876150 () Regex!9316)

(declare-fun e!1876156 () Regex!9316)

(assert (=> b!2983423 (= e!1876150 e!1876156)))

(declare-fun lt!1038960 () Regex!9316)

(declare-fun call!199290 () Regex!9316)

(assert (=> b!2983423 (= lt!1038960 call!199290)))

(declare-fun lt!1038956 () Regex!9316)

(declare-fun call!199292 () Regex!9316)

(assert (=> b!2983423 (= lt!1038956 call!199292)))

(declare-fun c!490073 () Bool)

(assert (=> b!2983423 (= c!490073 call!199291)))

(declare-fun b!2983424 () Bool)

(declare-fun e!1876158 () Regex!9316)

(assert (=> b!2983424 (= e!1876158 lt!1038960)))

(declare-fun b!2983425 () Bool)

(assert (=> b!2983425 (= e!1876150 e!1876149)))

(declare-fun lt!1038958 () Regex!9316)

(assert (=> b!2983425 (= lt!1038958 call!199292)))

(declare-fun lt!1038955 () Regex!9316)

(assert (=> b!2983425 (= lt!1038955 call!199290)))

(declare-fun res!1230439 () Bool)

(assert (=> b!2983425 (= res!1230439 call!199291)))

(assert (=> b!2983425 (=> res!1230439 e!1876159)))

(declare-fun c!490074 () Bool)

(assert (=> b!2983425 (= c!490074 e!1876159)))

(declare-fun bm!199283 () Bool)

(declare-fun c!490067 () Bool)

(declare-fun lt!1038957 () Regex!9316)

(declare-fun c!490071 () Bool)

(assert (=> bm!199283 (= call!199287 (isEmptyLang!430 (ite c!490071 lt!1038957 (ite c!490067 lt!1038960 lt!1038958))))))

(declare-fun b!2983426 () Bool)

(declare-fun e!1876152 () Regex!9316)

(assert (=> b!2983426 (= e!1876152 (Star!9316 lt!1038957))))

(declare-fun bm!199284 () Bool)

(assert (=> bm!199284 (= call!199290 (simplify!317 (ite c!490067 (regOne!19145 (reg!9645 r!17423)) (regTwo!19144 (reg!9645 r!17423)))))))

(declare-fun b!2983427 () Bool)

(assert (=> b!2983427 (= e!1876156 lt!1038956)))

(declare-fun b!2983428 () Bool)

(declare-fun e!1876153 () Regex!9316)

(assert (=> b!2983428 (= e!1876154 e!1876153)))

(declare-fun c!490068 () Bool)

(declare-fun isEmptyExpr!449 (Regex!9316) Bool)

(assert (=> b!2983428 (= c!490068 (isEmptyExpr!449 lt!1038955))))

(declare-fun b!2983429 () Bool)

(assert (=> b!2983429 (= e!1876153 (Concat!14637 lt!1038958 lt!1038955))))

(declare-fun bm!199285 () Bool)

(assert (=> bm!199285 (= call!199288 (isEmptyExpr!449 (ite c!490071 lt!1038957 lt!1038958)))))

(declare-fun b!2983430 () Bool)

(assert (=> b!2983430 (= e!1876154 lt!1038955)))

(declare-fun d!843812 () Bool)

(declare-fun e!1876157 () Bool)

(assert (=> d!843812 e!1876157))

(declare-fun res!1230440 () Bool)

(assert (=> d!843812 (=> (not res!1230440) (not e!1876157))))

(declare-fun lt!1038959 () Regex!9316)

(assert (=> d!843812 (= res!1230440 (validRegex!4049 lt!1038959))))

(declare-fun e!1876161 () Regex!9316)

(assert (=> d!843812 (= lt!1038959 e!1876161)))

(declare-fun c!490076 () Bool)

(assert (=> d!843812 (= c!490076 (is-EmptyLang!9316 (reg!9645 r!17423)))))

(assert (=> d!843812 (validRegex!4049 (reg!9645 r!17423))))

(assert (=> d!843812 (= (simplify!317 (reg!9645 r!17423)) lt!1038959)))

(declare-fun b!2983431 () Bool)

(assert (=> b!2983431 (= e!1876153 lt!1038958)))

(declare-fun b!2983432 () Bool)

(declare-fun e!1876151 () Regex!9316)

(assert (=> b!2983432 (= e!1876155 e!1876151)))

(assert (=> b!2983432 (= c!490071 (is-Star!9316 (reg!9645 r!17423)))))

(declare-fun b!2983433 () Bool)

(declare-fun c!490075 () Bool)

(assert (=> b!2983433 (= c!490075 call!199289)))

(assert (=> b!2983433 (= e!1876156 e!1876158)))

(declare-fun b!2983434 () Bool)

(declare-fun c!490070 () Bool)

(declare-fun e!1876148 () Bool)

(assert (=> b!2983434 (= c!490070 e!1876148)))

(declare-fun res!1230441 () Bool)

(assert (=> b!2983434 (=> res!1230441 e!1876148)))

(assert (=> b!2983434 (= res!1230441 call!199287)))

(declare-fun call!199293 () Regex!9316)

(assert (=> b!2983434 (= lt!1038957 call!199293)))

(assert (=> b!2983434 (= e!1876151 e!1876152)))

(declare-fun bm!199286 () Bool)

(assert (=> bm!199286 (= call!199292 call!199293)))

(declare-fun b!2983435 () Bool)

(assert (=> b!2983435 (= e!1876161 e!1876160)))

(declare-fun c!490069 () Bool)

(assert (=> b!2983435 (= c!490069 (is-ElementMatch!9316 (reg!9645 r!17423)))))

(declare-fun b!2983436 () Bool)

(assert (=> b!2983436 (= e!1876161 EmptyLang!9316)))

(declare-fun b!2983437 () Bool)

(assert (=> b!2983437 (= e!1876148 call!199288)))

(declare-fun b!2983438 () Bool)

(declare-fun nullable!2995 (Regex!9316) Bool)

(assert (=> b!2983438 (= e!1876157 (= (nullable!2995 lt!1038959) (nullable!2995 (reg!9645 r!17423))))))

(declare-fun b!2983439 () Bool)

(assert (=> b!2983439 (= e!1876152 EmptyExpr!9316)))

(declare-fun bm!199287 () Bool)

(assert (=> bm!199287 (= call!199293 (simplify!317 (ite c!490071 (reg!9645 (reg!9645 r!17423)) (ite c!490067 (regTwo!19145 (reg!9645 r!17423)) (regOne!19144 (reg!9645 r!17423))))))))

(declare-fun bm!199288 () Bool)

(assert (=> bm!199288 (= call!199289 (isEmptyLang!430 (ite c!490067 lt!1038956 lt!1038955)))))

(declare-fun b!2983440 () Bool)

(assert (=> b!2983440 (= c!490067 (is-Union!9316 (reg!9645 r!17423)))))

(assert (=> b!2983440 (= e!1876151 e!1876150)))

(declare-fun b!2983441 () Bool)

(assert (=> b!2983441 (= e!1876158 (Union!9316 lt!1038960 lt!1038956))))

(declare-fun b!2983442 () Bool)

(declare-fun c!490066 () Bool)

(assert (=> b!2983442 (= c!490066 (is-EmptyExpr!9316 (reg!9645 r!17423)))))

(assert (=> b!2983442 (= e!1876160 e!1876155)))

(assert (= (and d!843812 c!490076) b!2983436))

(assert (= (and d!843812 (not c!490076)) b!2983435))

(assert (= (and b!2983435 c!490069) b!2983422))

(assert (= (and b!2983435 (not c!490069)) b!2983442))

(assert (= (and b!2983442 c!490066) b!2983418))

(assert (= (and b!2983442 (not c!490066)) b!2983432))

(assert (= (and b!2983432 c!490071) b!2983434))

(assert (= (and b!2983432 (not c!490071)) b!2983440))

(assert (= (and b!2983434 (not res!1230441)) b!2983437))

(assert (= (and b!2983434 c!490070) b!2983439))

(assert (= (and b!2983434 (not c!490070)) b!2983426))

(assert (= (and b!2983440 c!490067) b!2983423))

(assert (= (and b!2983440 (not c!490067)) b!2983425))

(assert (= (and b!2983423 c!490073) b!2983427))

(assert (= (and b!2983423 (not c!490073)) b!2983433))

(assert (= (and b!2983433 c!490075) b!2983424))

(assert (= (and b!2983433 (not c!490075)) b!2983441))

(assert (= (and b!2983425 (not res!1230439)) b!2983420))

(assert (= (and b!2983425 c!490074) b!2983419))

(assert (= (and b!2983425 (not c!490074)) b!2983421))

(assert (= (and b!2983421 c!490072) b!2983430))

(assert (= (and b!2983421 (not c!490072)) b!2983428))

(assert (= (and b!2983428 c!490068) b!2983431))

(assert (= (and b!2983428 (not c!490068)) b!2983429))

(assert (= (or b!2983423 b!2983425) bm!199284))

(assert (= (or b!2983423 b!2983425) bm!199286))

(assert (= (or b!2983433 b!2983420) bm!199288))

(assert (= (or b!2983423 b!2983425) bm!199282))

(assert (= (or b!2983437 b!2983421) bm!199285))

(assert (= (or b!2983434 bm!199286) bm!199287))

(assert (= (or b!2983434 bm!199282) bm!199283))

(assert (= (and d!843812 res!1230440) b!2983438))

(declare-fun m!3343685 () Bool)

(assert (=> d!843812 m!3343685))

(declare-fun m!3343687 () Bool)

(assert (=> d!843812 m!3343687))

(declare-fun m!3343689 () Bool)

(assert (=> b!2983438 m!3343689))

(declare-fun m!3343691 () Bool)

(assert (=> b!2983438 m!3343691))

(declare-fun m!3343693 () Bool)

(assert (=> bm!199288 m!3343693))

(declare-fun m!3343695 () Bool)

(assert (=> bm!199285 m!3343695))

(declare-fun m!3343697 () Bool)

(assert (=> b!2983428 m!3343697))

(declare-fun m!3343699 () Bool)

(assert (=> bm!199283 m!3343699))

(declare-fun m!3343701 () Bool)

(assert (=> bm!199287 m!3343701))

(declare-fun m!3343703 () Bool)

(assert (=> bm!199284 m!3343703))

(assert (=> b!2983286 d!843812))

(declare-fun b!2983461 () Bool)

(declare-fun e!1876179 () Bool)

(declare-fun e!1876181 () Bool)

(assert (=> b!2983461 (= e!1876179 e!1876181)))

(declare-fun c!490082 () Bool)

(assert (=> b!2983461 (= c!490082 (is-Star!9316 lt!1038871))))

(declare-fun b!2983462 () Bool)

(declare-fun res!1230455 () Bool)

(declare-fun e!1876176 () Bool)

(assert (=> b!2983462 (=> (not res!1230455) (not e!1876176))))

(declare-fun call!199301 () Bool)

(assert (=> b!2983462 (= res!1230455 call!199301)))

(declare-fun e!1876177 () Bool)

(assert (=> b!2983462 (= e!1876177 e!1876176)))

(declare-fun b!2983463 () Bool)

(declare-fun res!1230452 () Bool)

(declare-fun e!1876178 () Bool)

(assert (=> b!2983463 (=> res!1230452 e!1876178)))

(assert (=> b!2983463 (= res!1230452 (not (is-Concat!14637 lt!1038871)))))

(assert (=> b!2983463 (= e!1876177 e!1876178)))

(declare-fun b!2983464 () Bool)

(declare-fun e!1876182 () Bool)

(declare-fun call!199300 () Bool)

(assert (=> b!2983464 (= e!1876182 call!199300)))

(declare-fun b!2983465 () Bool)

(assert (=> b!2983465 (= e!1876181 e!1876177)))

(declare-fun c!490081 () Bool)

(assert (=> b!2983465 (= c!490081 (is-Union!9316 lt!1038871))))

(declare-fun bm!199296 () Bool)

(assert (=> bm!199296 (= call!199301 (validRegex!4049 (ite c!490081 (regOne!19145 lt!1038871) (regTwo!19144 lt!1038871))))))

(declare-fun bm!199297 () Bool)

(declare-fun call!199302 () Bool)

(assert (=> bm!199297 (= call!199302 call!199300)))

(declare-fun b!2983466 () Bool)

(assert (=> b!2983466 (= e!1876181 e!1876182)))

(declare-fun res!1230454 () Bool)

(assert (=> b!2983466 (= res!1230454 (not (nullable!2995 (reg!9645 lt!1038871))))))

(assert (=> b!2983466 (=> (not res!1230454) (not e!1876182))))

(declare-fun b!2983467 () Bool)

(declare-fun e!1876180 () Bool)

(assert (=> b!2983467 (= e!1876180 call!199301)))

(declare-fun b!2983468 () Bool)

(assert (=> b!2983468 (= e!1876176 call!199302)))

(declare-fun b!2983469 () Bool)

(assert (=> b!2983469 (= e!1876178 e!1876180)))

(declare-fun res!1230453 () Bool)

(assert (=> b!2983469 (=> (not res!1230453) (not e!1876180))))

(assert (=> b!2983469 (= res!1230453 call!199302)))

(declare-fun bm!199295 () Bool)

(assert (=> bm!199295 (= call!199300 (validRegex!4049 (ite c!490082 (reg!9645 lt!1038871) (ite c!490081 (regTwo!19145 lt!1038871) (regOne!19144 lt!1038871)))))))

(declare-fun d!843816 () Bool)

(declare-fun res!1230456 () Bool)

(assert (=> d!843816 (=> res!1230456 e!1876179)))

(assert (=> d!843816 (= res!1230456 (is-ElementMatch!9316 lt!1038871))))

(assert (=> d!843816 (= (validRegex!4049 lt!1038871) e!1876179)))

(assert (= (and d!843816 (not res!1230456)) b!2983461))

(assert (= (and b!2983461 c!490082) b!2983466))

(assert (= (and b!2983461 (not c!490082)) b!2983465))

(assert (= (and b!2983466 res!1230454) b!2983464))

(assert (= (and b!2983465 c!490081) b!2983462))

(assert (= (and b!2983465 (not c!490081)) b!2983463))

(assert (= (and b!2983462 res!1230455) b!2983468))

(assert (= (and b!2983463 (not res!1230452)) b!2983469))

(assert (= (and b!2983469 res!1230453) b!2983467))

(assert (= (or b!2983462 b!2983467) bm!199296))

(assert (= (or b!2983468 b!2983469) bm!199297))

(assert (= (or b!2983464 bm!199297) bm!199295))

(declare-fun m!3343705 () Bool)

(assert (=> bm!199296 m!3343705))

(declare-fun m!3343707 () Bool)

(assert (=> b!2983466 m!3343707))

(declare-fun m!3343709 () Bool)

(assert (=> bm!199295 m!3343709))

(assert (=> b!2983287 d!843816))

(declare-fun b!2983498 () Bool)

(declare-fun e!1876199 () Bool)

(declare-fun e!1876200 () Bool)

(assert (=> b!2983498 (= e!1876199 e!1876200)))

(declare-fun res!1230477 () Bool)

(assert (=> b!2983498 (=> (not res!1230477) (not e!1876200))))

(declare-fun lt!1038963 () Bool)

(assert (=> b!2983498 (= res!1230477 (not lt!1038963))))

(declare-fun b!2983499 () Bool)

(declare-fun res!1230478 () Bool)

(assert (=> b!2983499 (=> res!1230478 e!1876199)))

(declare-fun e!1876203 () Bool)

(assert (=> b!2983499 (= res!1230478 e!1876203)))

(declare-fun res!1230480 () Bool)

(assert (=> b!2983499 (=> (not res!1230480) (not e!1876203))))

(assert (=> b!2983499 (= res!1230480 lt!1038963)))

(declare-fun b!2983500 () Bool)

(declare-fun e!1876202 () Bool)

(declare-fun derivativeStep!2595 (Regex!9316 C!18818) Regex!9316)

(declare-fun head!6654 (List!35181) C!18818)

(declare-fun tail!4880 (List!35181) List!35181)

(assert (=> b!2983500 (= e!1876202 (matchR!4198 (derivativeStep!2595 lt!1038878 (head!6654 (_1!20117 lt!1038885))) (tail!4880 (_1!20117 lt!1038885))))))

(declare-fun b!2983501 () Bool)

(declare-fun e!1876197 () Bool)

(declare-fun call!199305 () Bool)

(assert (=> b!2983501 (= e!1876197 (= lt!1038963 call!199305))))

(declare-fun b!2983502 () Bool)

(declare-fun res!1230476 () Bool)

(assert (=> b!2983502 (=> (not res!1230476) (not e!1876203))))

(assert (=> b!2983502 (= res!1230476 (not call!199305))))

(declare-fun b!2983503 () Bool)

(assert (=> b!2983503 (= e!1876202 (nullable!2995 lt!1038878))))

(declare-fun b!2983504 () Bool)

(declare-fun e!1876201 () Bool)

(assert (=> b!2983504 (= e!1876201 (not (= (head!6654 (_1!20117 lt!1038885)) (c!490039 lt!1038878))))))

(declare-fun b!2983505 () Bool)

(declare-fun res!1230479 () Bool)

(assert (=> b!2983505 (=> res!1230479 e!1876201)))

(assert (=> b!2983505 (= res!1230479 (not (isEmpty!19318 (tail!4880 (_1!20117 lt!1038885)))))))

(declare-fun b!2983506 () Bool)

(declare-fun res!1230475 () Bool)

(assert (=> b!2983506 (=> (not res!1230475) (not e!1876203))))

(assert (=> b!2983506 (= res!1230475 (isEmpty!19318 (tail!4880 (_1!20117 lt!1038885))))))

(declare-fun d!843818 () Bool)

(assert (=> d!843818 e!1876197))

(declare-fun c!490090 () Bool)

(assert (=> d!843818 (= c!490090 (is-EmptyExpr!9316 lt!1038878))))

(assert (=> d!843818 (= lt!1038963 e!1876202)))

(declare-fun c!490091 () Bool)

(assert (=> d!843818 (= c!490091 (isEmpty!19318 (_1!20117 lt!1038885)))))

(assert (=> d!843818 (validRegex!4049 lt!1038878)))

(assert (=> d!843818 (= (matchR!4198 lt!1038878 (_1!20117 lt!1038885)) lt!1038963)))

(declare-fun b!2983507 () Bool)

(declare-fun e!1876198 () Bool)

(assert (=> b!2983507 (= e!1876198 (not lt!1038963))))

(declare-fun bm!199300 () Bool)

(assert (=> bm!199300 (= call!199305 (isEmpty!19318 (_1!20117 lt!1038885)))))

(declare-fun b!2983508 () Bool)

(assert (=> b!2983508 (= e!1876197 e!1876198)))

(declare-fun c!490089 () Bool)

(assert (=> b!2983508 (= c!490089 (is-EmptyLang!9316 lt!1038878))))

(declare-fun b!2983509 () Bool)

(assert (=> b!2983509 (= e!1876203 (= (head!6654 (_1!20117 lt!1038885)) (c!490039 lt!1038878)))))

(declare-fun b!2983510 () Bool)

(declare-fun res!1230474 () Bool)

(assert (=> b!2983510 (=> res!1230474 e!1876199)))

(assert (=> b!2983510 (= res!1230474 (not (is-ElementMatch!9316 lt!1038878)))))

(assert (=> b!2983510 (= e!1876198 e!1876199)))

(declare-fun b!2983511 () Bool)

(assert (=> b!2983511 (= e!1876200 e!1876201)))

(declare-fun res!1230473 () Bool)

(assert (=> b!2983511 (=> res!1230473 e!1876201)))

(assert (=> b!2983511 (= res!1230473 call!199305)))

(assert (= (and d!843818 c!490091) b!2983503))

(assert (= (and d!843818 (not c!490091)) b!2983500))

(assert (= (and d!843818 c!490090) b!2983501))

(assert (= (and d!843818 (not c!490090)) b!2983508))

(assert (= (and b!2983508 c!490089) b!2983507))

(assert (= (and b!2983508 (not c!490089)) b!2983510))

(assert (= (and b!2983510 (not res!1230474)) b!2983499))

(assert (= (and b!2983499 res!1230480) b!2983502))

(assert (= (and b!2983502 res!1230476) b!2983506))

(assert (= (and b!2983506 res!1230475) b!2983509))

(assert (= (and b!2983499 (not res!1230478)) b!2983498))

(assert (= (and b!2983498 res!1230477) b!2983511))

(assert (= (and b!2983511 (not res!1230473)) b!2983505))

(assert (= (and b!2983505 (not res!1230479)) b!2983504))

(assert (= (or b!2983501 b!2983502 b!2983511) bm!199300))

(declare-fun m!3343711 () Bool)

(assert (=> b!2983504 m!3343711))

(declare-fun m!3343713 () Bool)

(assert (=> b!2983506 m!3343713))

(assert (=> b!2983506 m!3343713))

(declare-fun m!3343715 () Bool)

(assert (=> b!2983506 m!3343715))

(assert (=> b!2983500 m!3343711))

(assert (=> b!2983500 m!3343711))

(declare-fun m!3343717 () Bool)

(assert (=> b!2983500 m!3343717))

(assert (=> b!2983500 m!3343713))

(assert (=> b!2983500 m!3343717))

(assert (=> b!2983500 m!3343713))

(declare-fun m!3343719 () Bool)

(assert (=> b!2983500 m!3343719))

(declare-fun m!3343721 () Bool)

(assert (=> bm!199300 m!3343721))

(assert (=> d!843818 m!3343721))

(declare-fun m!3343723 () Bool)

(assert (=> d!843818 m!3343723))

(assert (=> b!2983505 m!3343713))

(assert (=> b!2983505 m!3343713))

(assert (=> b!2983505 m!3343715))

(assert (=> b!2983509 m!3343711))

(declare-fun m!3343725 () Bool)

(assert (=> b!2983503 m!3343725))

(assert (=> b!2983294 d!843818))

(declare-fun d!843820 () Bool)

(assert (=> d!843820 (= (get!10843 lt!1038879) (v!34850 lt!1038879))))

(assert (=> b!2983294 d!843820))

(declare-fun d!843822 () Bool)

(declare-fun isEmpty!19320 (Option!6717) Bool)

(assert (=> d!843822 (= (isDefined!5268 lt!1038879) (not (isEmpty!19320 lt!1038879)))))

(declare-fun bs!527290 () Bool)

(assert (= bs!527290 d!843822))

(declare-fun m!3343727 () Bool)

(assert (=> bs!527290 m!3343727))

(assert (=> b!2983285 d!843822))

(declare-fun b!2983578 () Bool)

(declare-fun e!1876244 () Option!6717)

(assert (=> b!2983578 (= e!1876244 (Some!6716 (tuple2!33971 Nil!35057 s!11993)))))

(declare-fun b!2983579 () Bool)

(declare-fun res!1230497 () Bool)

(declare-fun e!1876242 () Bool)

(assert (=> b!2983579 (=> (not res!1230497) (not e!1876242))))

(declare-fun lt!1038983 () Option!6717)

(assert (=> b!2983579 (= res!1230497 (matchR!4198 lt!1038878 (_1!20117 (get!10843 lt!1038983))))))

(declare-fun b!2983580 () Bool)

(declare-fun e!1876240 () Bool)

(assert (=> b!2983580 (= e!1876240 (matchR!4198 lt!1038875 s!11993))))

(declare-fun b!2983581 () Bool)

(declare-fun res!1230499 () Bool)

(assert (=> b!2983581 (=> (not res!1230499) (not e!1876242))))

(assert (=> b!2983581 (= res!1230499 (matchR!4198 lt!1038875 (_2!20117 (get!10843 lt!1038983))))))

(declare-fun b!2983582 () Bool)

(declare-fun e!1876241 () Option!6717)

(assert (=> b!2983582 (= e!1876244 e!1876241)))

(declare-fun c!490118 () Bool)

(assert (=> b!2983582 (= c!490118 (is-Nil!35057 s!11993))))

(declare-fun b!2983583 () Bool)

(assert (=> b!2983583 (= e!1876242 (= (++!8374 (_1!20117 (get!10843 lt!1038983)) (_2!20117 (get!10843 lt!1038983))) s!11993))))

(declare-fun b!2983584 () Bool)

(declare-fun lt!1038984 () Unit!49031)

(declare-fun lt!1038982 () Unit!49031)

(assert (=> b!2983584 (= lt!1038984 lt!1038982)))

(assert (=> b!2983584 (= (++!8374 (++!8374 Nil!35057 (Cons!35057 (h!40477 s!11993) Nil!35057)) (t!234246 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!989 (List!35181 C!18818 List!35181 List!35181) Unit!49031)

(assert (=> b!2983584 (= lt!1038982 (lemmaMoveElementToOtherListKeepsConcatEq!989 Nil!35057 (h!40477 s!11993) (t!234246 s!11993) s!11993))))

(assert (=> b!2983584 (= e!1876241 (findConcatSeparation!1111 lt!1038878 lt!1038875 (++!8374 Nil!35057 (Cons!35057 (h!40477 s!11993) Nil!35057)) (t!234246 s!11993) s!11993))))

(declare-fun d!843824 () Bool)

(declare-fun e!1876243 () Bool)

(assert (=> d!843824 e!1876243))

(declare-fun res!1230495 () Bool)

(assert (=> d!843824 (=> res!1230495 e!1876243)))

(assert (=> d!843824 (= res!1230495 e!1876242)))

(declare-fun res!1230496 () Bool)

(assert (=> d!843824 (=> (not res!1230496) (not e!1876242))))

(assert (=> d!843824 (= res!1230496 (isDefined!5268 lt!1038983))))

(assert (=> d!843824 (= lt!1038983 e!1876244)))

(declare-fun c!490119 () Bool)

(assert (=> d!843824 (= c!490119 e!1876240)))

(declare-fun res!1230498 () Bool)

(assert (=> d!843824 (=> (not res!1230498) (not e!1876240))))

(assert (=> d!843824 (= res!1230498 (matchR!4198 lt!1038878 Nil!35057))))

(assert (=> d!843824 (validRegex!4049 lt!1038878)))

(assert (=> d!843824 (= (findConcatSeparation!1111 lt!1038878 lt!1038875 Nil!35057 s!11993 s!11993) lt!1038983)))

(declare-fun b!2983585 () Bool)

(assert (=> b!2983585 (= e!1876241 None!6716)))

(declare-fun b!2983586 () Bool)

(assert (=> b!2983586 (= e!1876243 (not (isDefined!5268 lt!1038983)))))

(assert (= (and d!843824 res!1230498) b!2983580))

(assert (= (and d!843824 c!490119) b!2983578))

(assert (= (and d!843824 (not c!490119)) b!2983582))

(assert (= (and b!2983582 c!490118) b!2983585))

(assert (= (and b!2983582 (not c!490118)) b!2983584))

(assert (= (and d!843824 res!1230496) b!2983579))

(assert (= (and b!2983579 res!1230497) b!2983581))

(assert (= (and b!2983581 res!1230499) b!2983583))

(assert (= (and d!843824 (not res!1230495)) b!2983586))

(declare-fun m!3343729 () Bool)

(assert (=> b!2983583 m!3343729))

(declare-fun m!3343731 () Bool)

(assert (=> b!2983583 m!3343731))

(assert (=> b!2983580 m!3343583))

(assert (=> b!2983579 m!3343729))

(declare-fun m!3343733 () Bool)

(assert (=> b!2983579 m!3343733))

(declare-fun m!3343735 () Bool)

(assert (=> b!2983584 m!3343735))

(assert (=> b!2983584 m!3343735))

(declare-fun m!3343737 () Bool)

(assert (=> b!2983584 m!3343737))

(declare-fun m!3343739 () Bool)

(assert (=> b!2983584 m!3343739))

(assert (=> b!2983584 m!3343735))

(declare-fun m!3343741 () Bool)

(assert (=> b!2983584 m!3343741))

(declare-fun m!3343743 () Bool)

(assert (=> b!2983586 m!3343743))

(assert (=> d!843824 m!3343743))

(declare-fun m!3343745 () Bool)

(assert (=> d!843824 m!3343745))

(assert (=> d!843824 m!3343723))

(assert (=> b!2983581 m!3343729))

(declare-fun m!3343747 () Bool)

(assert (=> b!2983581 m!3343747))

(assert (=> b!2983285 d!843824))

(declare-fun bs!527291 () Bool)

(declare-fun d!843826 () Bool)

(assert (= bs!527291 (and d!843826 b!2983285)))

(declare-fun lambda!111351 () Int)

(assert (=> bs!527291 (= lambda!111351 lambda!111339)))

(assert (=> bs!527291 (not (= lambda!111351 lambda!111340))))

(assert (=> d!843826 true))

(assert (=> d!843826 true))

(assert (=> d!843826 true))

(assert (=> d!843826 (= (isDefined!5268 (findConcatSeparation!1111 lt!1038878 lt!1038875 Nil!35057 s!11993 s!11993)) (Exists!1596 lambda!111351))))

(declare-fun lt!1038987 () Unit!49031)

(declare-fun choose!17676 (Regex!9316 Regex!9316 List!35181) Unit!49031)

(assert (=> d!843826 (= lt!1038987 (choose!17676 lt!1038878 lt!1038875 s!11993))))

(assert (=> d!843826 (validRegex!4049 lt!1038878)))

(assert (=> d!843826 (= (lemmaFindConcatSeparationEquivalentToExists!889 lt!1038878 lt!1038875 s!11993) lt!1038987)))

(declare-fun bs!527292 () Bool)

(assert (= bs!527292 d!843826))

(assert (=> bs!527292 m!3343567))

(assert (=> bs!527292 m!3343723))

(declare-fun m!3343749 () Bool)

(assert (=> bs!527292 m!3343749))

(assert (=> bs!527292 m!3343567))

(declare-fun m!3343751 () Bool)

(assert (=> bs!527292 m!3343751))

(declare-fun m!3343753 () Bool)

(assert (=> bs!527292 m!3343753))

(assert (=> b!2983285 d!843826))

(declare-fun d!843828 () Bool)

(declare-fun choose!17677 (Int) Bool)

(assert (=> d!843828 (= (Exists!1596 lambda!111340) (choose!17677 lambda!111340))))

(declare-fun bs!527293 () Bool)

(assert (= bs!527293 d!843828))

(declare-fun m!3343755 () Bool)

(assert (=> bs!527293 m!3343755))

(assert (=> b!2983285 d!843828))

(declare-fun bs!527294 () Bool)

(declare-fun d!843830 () Bool)

(assert (= bs!527294 (and d!843830 b!2983285)))

(declare-fun lambda!111356 () Int)

(assert (=> bs!527294 (= (= (Star!9316 lt!1038878) lt!1038875) (= lambda!111356 lambda!111339))))

(assert (=> bs!527294 (not (= lambda!111356 lambda!111340))))

(declare-fun bs!527295 () Bool)

(assert (= bs!527295 (and d!843830 d!843826)))

(assert (=> bs!527295 (= (= (Star!9316 lt!1038878) lt!1038875) (= lambda!111356 lambda!111351))))

(assert (=> d!843830 true))

(assert (=> d!843830 true))

(declare-fun lambda!111357 () Int)

(assert (=> bs!527294 (not (= lambda!111357 lambda!111339))))

(assert (=> bs!527294 (= (= (Star!9316 lt!1038878) lt!1038875) (= lambda!111357 lambda!111340))))

(assert (=> bs!527295 (not (= lambda!111357 lambda!111351))))

(declare-fun bs!527296 () Bool)

(assert (= bs!527296 d!843830))

(assert (=> bs!527296 (not (= lambda!111357 lambda!111356))))

(assert (=> d!843830 true))

(assert (=> d!843830 true))

(assert (=> d!843830 (= (Exists!1596 lambda!111356) (Exists!1596 lambda!111357))))

(declare-fun lt!1038996 () Unit!49031)

(declare-fun choose!17678 (Regex!9316 List!35181) Unit!49031)

(assert (=> d!843830 (= lt!1038996 (choose!17678 lt!1038878 s!11993))))

(assert (=> d!843830 (validRegex!4049 lt!1038878)))

(assert (=> d!843830 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!281 lt!1038878 s!11993) lt!1038996)))

(declare-fun m!3343775 () Bool)

(assert (=> bs!527296 m!3343775))

(declare-fun m!3343777 () Bool)

(assert (=> bs!527296 m!3343777))

(declare-fun m!3343779 () Bool)

(assert (=> bs!527296 m!3343779))

(assert (=> bs!527296 m!3343723))

(assert (=> b!2983285 d!843830))

(declare-fun d!843834 () Bool)

(assert (=> d!843834 (= (Exists!1596 lambda!111339) (choose!17677 lambda!111339))))

(declare-fun bs!527297 () Bool)

(assert (= bs!527297 d!843834))

(declare-fun m!3343781 () Bool)

(assert (=> bs!527297 m!3343781))

(assert (=> b!2983285 d!843834))

(declare-fun b!2983628 () Bool)

(declare-fun e!1876269 () Bool)

(declare-fun e!1876270 () Bool)

(assert (=> b!2983628 (= e!1876269 e!1876270)))

(declare-fun res!1230523 () Bool)

(assert (=> b!2983628 (=> (not res!1230523) (not e!1876270))))

(declare-fun lt!1038997 () Bool)

(assert (=> b!2983628 (= res!1230523 (not lt!1038997))))

(declare-fun b!2983629 () Bool)

(declare-fun res!1230524 () Bool)

(assert (=> b!2983629 (=> res!1230524 e!1876269)))

(declare-fun e!1876273 () Bool)

(assert (=> b!2983629 (= res!1230524 e!1876273)))

(declare-fun res!1230526 () Bool)

(assert (=> b!2983629 (=> (not res!1230526) (not e!1876273))))

(assert (=> b!2983629 (= res!1230526 lt!1038997)))

(declare-fun b!2983630 () Bool)

(declare-fun e!1876272 () Bool)

(assert (=> b!2983630 (= e!1876272 (matchR!4198 (derivativeStep!2595 (reg!9645 r!17423) (head!6654 (_1!20117 lt!1038885))) (tail!4880 (_1!20117 lt!1038885))))))

(declare-fun b!2983631 () Bool)

(declare-fun e!1876267 () Bool)

(declare-fun call!199327 () Bool)

(assert (=> b!2983631 (= e!1876267 (= lt!1038997 call!199327))))

(declare-fun b!2983632 () Bool)

(declare-fun res!1230522 () Bool)

(assert (=> b!2983632 (=> (not res!1230522) (not e!1876273))))

(assert (=> b!2983632 (= res!1230522 (not call!199327))))

(declare-fun b!2983633 () Bool)

(assert (=> b!2983633 (= e!1876272 (nullable!2995 (reg!9645 r!17423)))))

(declare-fun b!2983634 () Bool)

(declare-fun e!1876271 () Bool)

(assert (=> b!2983634 (= e!1876271 (not (= (head!6654 (_1!20117 lt!1038885)) (c!490039 (reg!9645 r!17423)))))))

(declare-fun b!2983635 () Bool)

(declare-fun res!1230525 () Bool)

(assert (=> b!2983635 (=> res!1230525 e!1876271)))

(assert (=> b!2983635 (= res!1230525 (not (isEmpty!19318 (tail!4880 (_1!20117 lt!1038885)))))))

(declare-fun b!2983636 () Bool)

(declare-fun res!1230521 () Bool)

(assert (=> b!2983636 (=> (not res!1230521) (not e!1876273))))

(assert (=> b!2983636 (= res!1230521 (isEmpty!19318 (tail!4880 (_1!20117 lt!1038885))))))

(declare-fun d!843836 () Bool)

(assert (=> d!843836 e!1876267))

(declare-fun c!490132 () Bool)

(assert (=> d!843836 (= c!490132 (is-EmptyExpr!9316 (reg!9645 r!17423)))))

(assert (=> d!843836 (= lt!1038997 e!1876272)))

(declare-fun c!490133 () Bool)

(assert (=> d!843836 (= c!490133 (isEmpty!19318 (_1!20117 lt!1038885)))))

(assert (=> d!843836 (validRegex!4049 (reg!9645 r!17423))))

(assert (=> d!843836 (= (matchR!4198 (reg!9645 r!17423) (_1!20117 lt!1038885)) lt!1038997)))

(declare-fun b!2983637 () Bool)

(declare-fun e!1876268 () Bool)

(assert (=> b!2983637 (= e!1876268 (not lt!1038997))))

(declare-fun bm!199322 () Bool)

(assert (=> bm!199322 (= call!199327 (isEmpty!19318 (_1!20117 lt!1038885)))))

(declare-fun b!2983638 () Bool)

(assert (=> b!2983638 (= e!1876267 e!1876268)))

(declare-fun c!490131 () Bool)

(assert (=> b!2983638 (= c!490131 (is-EmptyLang!9316 (reg!9645 r!17423)))))

(declare-fun b!2983639 () Bool)

(assert (=> b!2983639 (= e!1876273 (= (head!6654 (_1!20117 lt!1038885)) (c!490039 (reg!9645 r!17423))))))

(declare-fun b!2983640 () Bool)

(declare-fun res!1230520 () Bool)

(assert (=> b!2983640 (=> res!1230520 e!1876269)))

(assert (=> b!2983640 (= res!1230520 (not (is-ElementMatch!9316 (reg!9645 r!17423))))))

(assert (=> b!2983640 (= e!1876268 e!1876269)))

(declare-fun b!2983641 () Bool)

(assert (=> b!2983641 (= e!1876270 e!1876271)))

(declare-fun res!1230519 () Bool)

(assert (=> b!2983641 (=> res!1230519 e!1876271)))

(assert (=> b!2983641 (= res!1230519 call!199327)))

(assert (= (and d!843836 c!490133) b!2983633))

(assert (= (and d!843836 (not c!490133)) b!2983630))

(assert (= (and d!843836 c!490132) b!2983631))

(assert (= (and d!843836 (not c!490132)) b!2983638))

(assert (= (and b!2983638 c!490131) b!2983637))

(assert (= (and b!2983638 (not c!490131)) b!2983640))

(assert (= (and b!2983640 (not res!1230520)) b!2983629))

(assert (= (and b!2983629 res!1230526) b!2983632))

(assert (= (and b!2983632 res!1230522) b!2983636))

(assert (= (and b!2983636 res!1230521) b!2983639))

(assert (= (and b!2983629 (not res!1230524)) b!2983628))

(assert (= (and b!2983628 res!1230523) b!2983641))

(assert (= (and b!2983641 (not res!1230519)) b!2983635))

(assert (= (and b!2983635 (not res!1230525)) b!2983634))

(assert (= (or b!2983631 b!2983632 b!2983641) bm!199322))

(assert (=> b!2983634 m!3343711))

(assert (=> b!2983636 m!3343713))

(assert (=> b!2983636 m!3343713))

(assert (=> b!2983636 m!3343715))

(assert (=> b!2983630 m!3343711))

(assert (=> b!2983630 m!3343711))

(declare-fun m!3343783 () Bool)

(assert (=> b!2983630 m!3343783))

(assert (=> b!2983630 m!3343713))

(assert (=> b!2983630 m!3343783))

(assert (=> b!2983630 m!3343713))

(declare-fun m!3343785 () Bool)

(assert (=> b!2983630 m!3343785))

(assert (=> bm!199322 m!3343721))

(assert (=> d!843836 m!3343721))

(assert (=> d!843836 m!3343687))

(assert (=> b!2983635 m!3343713))

(assert (=> b!2983635 m!3343713))

(assert (=> b!2983635 m!3343715))

(assert (=> b!2983639 m!3343711))

(assert (=> b!2983633 m!3343691))

(assert (=> b!2983292 d!843836))

(declare-fun b!2983646 () Bool)

(declare-fun e!1876283 () Regex!9316)

(assert (=> b!2983646 (= e!1876283 EmptyExpr!9316)))

(declare-fun b!2983647 () Bool)

(declare-fun e!1876277 () Regex!9316)

(assert (=> b!2983647 (= e!1876277 EmptyLang!9316)))

(declare-fun bm!199323 () Bool)

(declare-fun call!199332 () Bool)

(declare-fun call!199328 () Bool)

(assert (=> bm!199323 (= call!199332 call!199328)))

(declare-fun b!2983648 () Bool)

(declare-fun e!1876287 () Bool)

(declare-fun call!199330 () Bool)

(assert (=> b!2983648 (= e!1876287 call!199330)))

(declare-fun b!2983649 () Bool)

(declare-fun c!490142 () Bool)

(declare-fun call!199329 () Bool)

(assert (=> b!2983649 (= c!490142 call!199329)))

(declare-fun e!1876282 () Regex!9316)

(assert (=> b!2983649 (= e!1876277 e!1876282)))

(declare-fun b!2983650 () Bool)

(declare-fun e!1876288 () Regex!9316)

(assert (=> b!2983650 (= e!1876288 lt!1038871)))

(declare-fun b!2983651 () Bool)

(declare-fun e!1876278 () Regex!9316)

(declare-fun e!1876284 () Regex!9316)

(assert (=> b!2983651 (= e!1876278 e!1876284)))

(declare-fun lt!1039005 () Regex!9316)

(declare-fun call!199331 () Regex!9316)

(assert (=> b!2983651 (= lt!1039005 call!199331)))

(declare-fun lt!1039001 () Regex!9316)

(declare-fun call!199333 () Regex!9316)

(assert (=> b!2983651 (= lt!1039001 call!199333)))

(declare-fun c!490143 () Bool)

(assert (=> b!2983651 (= c!490143 call!199332)))

(declare-fun b!2983652 () Bool)

(declare-fun e!1876286 () Regex!9316)

(assert (=> b!2983652 (= e!1876286 lt!1039005)))

(declare-fun b!2983653 () Bool)

(assert (=> b!2983653 (= e!1876278 e!1876277)))

(declare-fun lt!1039003 () Regex!9316)

(assert (=> b!2983653 (= lt!1039003 call!199333)))

(declare-fun lt!1039000 () Regex!9316)

(assert (=> b!2983653 (= lt!1039000 call!199331)))

(declare-fun res!1230527 () Bool)

(assert (=> b!2983653 (= res!1230527 call!199332)))

(assert (=> b!2983653 (=> res!1230527 e!1876287)))

(declare-fun c!490144 () Bool)

(assert (=> b!2983653 (= c!490144 e!1876287)))

(declare-fun lt!1039002 () Regex!9316)

(declare-fun bm!199324 () Bool)

(declare-fun c!490141 () Bool)

(declare-fun c!490137 () Bool)

(assert (=> bm!199324 (= call!199328 (isEmptyLang!430 (ite c!490141 lt!1039002 (ite c!490137 lt!1039005 lt!1039003))))))

(declare-fun b!2983654 () Bool)

(declare-fun e!1876280 () Regex!9316)

(assert (=> b!2983654 (= e!1876280 (Star!9316 lt!1039002))))

(declare-fun bm!199325 () Bool)

(assert (=> bm!199325 (= call!199331 (simplify!317 (ite c!490137 (regOne!19145 lt!1038871) (regTwo!19144 lt!1038871))))))

(declare-fun b!2983655 () Bool)

(assert (=> b!2983655 (= e!1876284 lt!1039001)))

(declare-fun b!2983656 () Bool)

(declare-fun e!1876281 () Regex!9316)

(assert (=> b!2983656 (= e!1876282 e!1876281)))

(declare-fun c!490138 () Bool)

(assert (=> b!2983656 (= c!490138 (isEmptyExpr!449 lt!1039000))))

(declare-fun b!2983657 () Bool)

(assert (=> b!2983657 (= e!1876281 (Concat!14637 lt!1039003 lt!1039000))))

(declare-fun bm!199326 () Bool)

(assert (=> bm!199326 (= call!199329 (isEmptyExpr!449 (ite c!490141 lt!1039002 lt!1039003)))))

(declare-fun b!2983658 () Bool)

(assert (=> b!2983658 (= e!1876282 lt!1039000)))

(declare-fun d!843838 () Bool)

(declare-fun e!1876285 () Bool)

(assert (=> d!843838 e!1876285))

(declare-fun res!1230528 () Bool)

(assert (=> d!843838 (=> (not res!1230528) (not e!1876285))))

(declare-fun lt!1039004 () Regex!9316)

(assert (=> d!843838 (= res!1230528 (validRegex!4049 lt!1039004))))

(declare-fun e!1876289 () Regex!9316)

(assert (=> d!843838 (= lt!1039004 e!1876289)))

(declare-fun c!490146 () Bool)

(assert (=> d!843838 (= c!490146 (is-EmptyLang!9316 lt!1038871))))

(assert (=> d!843838 (validRegex!4049 lt!1038871)))

(assert (=> d!843838 (= (simplify!317 lt!1038871) lt!1039004)))

(declare-fun b!2983659 () Bool)

(assert (=> b!2983659 (= e!1876281 lt!1039003)))

(declare-fun b!2983660 () Bool)

(declare-fun e!1876279 () Regex!9316)

(assert (=> b!2983660 (= e!1876283 e!1876279)))

(assert (=> b!2983660 (= c!490141 (is-Star!9316 lt!1038871))))

(declare-fun b!2983661 () Bool)

(declare-fun c!490145 () Bool)

(assert (=> b!2983661 (= c!490145 call!199330)))

(assert (=> b!2983661 (= e!1876284 e!1876286)))

(declare-fun b!2983662 () Bool)

(declare-fun c!490140 () Bool)

(declare-fun e!1876276 () Bool)

(assert (=> b!2983662 (= c!490140 e!1876276)))

(declare-fun res!1230529 () Bool)

(assert (=> b!2983662 (=> res!1230529 e!1876276)))

(assert (=> b!2983662 (= res!1230529 call!199328)))

(declare-fun call!199334 () Regex!9316)

(assert (=> b!2983662 (= lt!1039002 call!199334)))

(assert (=> b!2983662 (= e!1876279 e!1876280)))

(declare-fun bm!199327 () Bool)

(assert (=> bm!199327 (= call!199333 call!199334)))

(declare-fun b!2983663 () Bool)

(assert (=> b!2983663 (= e!1876289 e!1876288)))

(declare-fun c!490139 () Bool)

(assert (=> b!2983663 (= c!490139 (is-ElementMatch!9316 lt!1038871))))

(declare-fun b!2983664 () Bool)

(assert (=> b!2983664 (= e!1876289 EmptyLang!9316)))

(declare-fun b!2983665 () Bool)

(assert (=> b!2983665 (= e!1876276 call!199329)))

(declare-fun b!2983666 () Bool)

(assert (=> b!2983666 (= e!1876285 (= (nullable!2995 lt!1039004) (nullable!2995 lt!1038871)))))

(declare-fun b!2983667 () Bool)

(assert (=> b!2983667 (= e!1876280 EmptyExpr!9316)))

(declare-fun bm!199328 () Bool)

(assert (=> bm!199328 (= call!199334 (simplify!317 (ite c!490141 (reg!9645 lt!1038871) (ite c!490137 (regTwo!19145 lt!1038871) (regOne!19144 lt!1038871)))))))

(declare-fun bm!199329 () Bool)

(assert (=> bm!199329 (= call!199330 (isEmptyLang!430 (ite c!490137 lt!1039001 lt!1039000)))))

(declare-fun b!2983668 () Bool)

(assert (=> b!2983668 (= c!490137 (is-Union!9316 lt!1038871))))

(assert (=> b!2983668 (= e!1876279 e!1876278)))

(declare-fun b!2983669 () Bool)

(assert (=> b!2983669 (= e!1876286 (Union!9316 lt!1039005 lt!1039001))))

(declare-fun b!2983670 () Bool)

(declare-fun c!490136 () Bool)

(assert (=> b!2983670 (= c!490136 (is-EmptyExpr!9316 lt!1038871))))

(assert (=> b!2983670 (= e!1876288 e!1876283)))

(assert (= (and d!843838 c!490146) b!2983664))

(assert (= (and d!843838 (not c!490146)) b!2983663))

(assert (= (and b!2983663 c!490139) b!2983650))

(assert (= (and b!2983663 (not c!490139)) b!2983670))

(assert (= (and b!2983670 c!490136) b!2983646))

(assert (= (and b!2983670 (not c!490136)) b!2983660))

(assert (= (and b!2983660 c!490141) b!2983662))

(assert (= (and b!2983660 (not c!490141)) b!2983668))

(assert (= (and b!2983662 (not res!1230529)) b!2983665))

(assert (= (and b!2983662 c!490140) b!2983667))

(assert (= (and b!2983662 (not c!490140)) b!2983654))

(assert (= (and b!2983668 c!490137) b!2983651))

(assert (= (and b!2983668 (not c!490137)) b!2983653))

(assert (= (and b!2983651 c!490143) b!2983655))

(assert (= (and b!2983651 (not c!490143)) b!2983661))

(assert (= (and b!2983661 c!490145) b!2983652))

(assert (= (and b!2983661 (not c!490145)) b!2983669))

(assert (= (and b!2983653 (not res!1230527)) b!2983648))

(assert (= (and b!2983653 c!490144) b!2983647))

(assert (= (and b!2983653 (not c!490144)) b!2983649))

(assert (= (and b!2983649 c!490142) b!2983658))

(assert (= (and b!2983649 (not c!490142)) b!2983656))

(assert (= (and b!2983656 c!490138) b!2983659))

(assert (= (and b!2983656 (not c!490138)) b!2983657))

(assert (= (or b!2983651 b!2983653) bm!199325))

(assert (= (or b!2983651 b!2983653) bm!199327))

(assert (= (or b!2983661 b!2983648) bm!199329))

(assert (= (or b!2983651 b!2983653) bm!199323))

(assert (= (or b!2983665 b!2983649) bm!199326))

(assert (= (or b!2983662 bm!199327) bm!199328))

(assert (= (or b!2983662 bm!199323) bm!199324))

(assert (= (and d!843838 res!1230528) b!2983666))

(declare-fun m!3343787 () Bool)

(assert (=> d!843838 m!3343787))

(assert (=> d!843838 m!3343613))

(declare-fun m!3343789 () Bool)

(assert (=> b!2983666 m!3343789))

(declare-fun m!3343791 () Bool)

(assert (=> b!2983666 m!3343791))

(declare-fun m!3343793 () Bool)

(assert (=> bm!199329 m!3343793))

(declare-fun m!3343795 () Bool)

(assert (=> bm!199326 m!3343795))

(declare-fun m!3343797 () Bool)

(assert (=> b!2983656 m!3343797))

(declare-fun m!3343799 () Bool)

(assert (=> bm!199324 m!3343799))

(declare-fun m!3343801 () Bool)

(assert (=> bm!199328 m!3343801))

(declare-fun m!3343803 () Bool)

(assert (=> bm!199325 m!3343803))

(assert (=> b!2983292 d!843838))

(declare-fun b!2983671 () Bool)

(declare-fun e!1876292 () Bool)

(declare-fun e!1876293 () Bool)

(assert (=> b!2983671 (= e!1876292 e!1876293)))

(declare-fun res!1230534 () Bool)

(assert (=> b!2983671 (=> (not res!1230534) (not e!1876293))))

(declare-fun lt!1039006 () Bool)

(assert (=> b!2983671 (= res!1230534 (not lt!1039006))))

(declare-fun b!2983672 () Bool)

(declare-fun res!1230535 () Bool)

(assert (=> b!2983672 (=> res!1230535 e!1876292)))

(declare-fun e!1876296 () Bool)

(assert (=> b!2983672 (= res!1230535 e!1876296)))

(declare-fun res!1230537 () Bool)

(assert (=> b!2983672 (=> (not res!1230537) (not e!1876296))))

(assert (=> b!2983672 (= res!1230537 lt!1039006)))

(declare-fun b!2983673 () Bool)

(declare-fun e!1876295 () Bool)

(assert (=> b!2983673 (= e!1876295 (matchR!4198 (derivativeStep!2595 lt!1038871 (head!6654 (_2!20117 lt!1038885))) (tail!4880 (_2!20117 lt!1038885))))))

(declare-fun b!2983674 () Bool)

(declare-fun e!1876290 () Bool)

(declare-fun call!199335 () Bool)

(assert (=> b!2983674 (= e!1876290 (= lt!1039006 call!199335))))

(declare-fun b!2983675 () Bool)

(declare-fun res!1230533 () Bool)

(assert (=> b!2983675 (=> (not res!1230533) (not e!1876296))))

(assert (=> b!2983675 (= res!1230533 (not call!199335))))

(declare-fun b!2983676 () Bool)

(assert (=> b!2983676 (= e!1876295 (nullable!2995 lt!1038871))))

(declare-fun b!2983677 () Bool)

(declare-fun e!1876294 () Bool)

(assert (=> b!2983677 (= e!1876294 (not (= (head!6654 (_2!20117 lt!1038885)) (c!490039 lt!1038871))))))

(declare-fun b!2983678 () Bool)

(declare-fun res!1230536 () Bool)

(assert (=> b!2983678 (=> res!1230536 e!1876294)))

(assert (=> b!2983678 (= res!1230536 (not (isEmpty!19318 (tail!4880 (_2!20117 lt!1038885)))))))

(declare-fun b!2983679 () Bool)

(declare-fun res!1230532 () Bool)

(assert (=> b!2983679 (=> (not res!1230532) (not e!1876296))))

(assert (=> b!2983679 (= res!1230532 (isEmpty!19318 (tail!4880 (_2!20117 lt!1038885))))))

(declare-fun d!843840 () Bool)

(assert (=> d!843840 e!1876290))

(declare-fun c!490148 () Bool)

(assert (=> d!843840 (= c!490148 (is-EmptyExpr!9316 lt!1038871))))

(assert (=> d!843840 (= lt!1039006 e!1876295)))

(declare-fun c!490149 () Bool)

(assert (=> d!843840 (= c!490149 (isEmpty!19318 (_2!20117 lt!1038885)))))

(assert (=> d!843840 (validRegex!4049 lt!1038871)))

(assert (=> d!843840 (= (matchR!4198 lt!1038871 (_2!20117 lt!1038885)) lt!1039006)))

(declare-fun b!2983680 () Bool)

(declare-fun e!1876291 () Bool)

(assert (=> b!2983680 (= e!1876291 (not lt!1039006))))

(declare-fun bm!199330 () Bool)

(assert (=> bm!199330 (= call!199335 (isEmpty!19318 (_2!20117 lt!1038885)))))

(declare-fun b!2983681 () Bool)

(assert (=> b!2983681 (= e!1876290 e!1876291)))

(declare-fun c!490147 () Bool)

(assert (=> b!2983681 (= c!490147 (is-EmptyLang!9316 lt!1038871))))

(declare-fun b!2983682 () Bool)

(assert (=> b!2983682 (= e!1876296 (= (head!6654 (_2!20117 lt!1038885)) (c!490039 lt!1038871)))))

(declare-fun b!2983683 () Bool)

(declare-fun res!1230531 () Bool)

(assert (=> b!2983683 (=> res!1230531 e!1876292)))

(assert (=> b!2983683 (= res!1230531 (not (is-ElementMatch!9316 lt!1038871)))))

(assert (=> b!2983683 (= e!1876291 e!1876292)))

(declare-fun b!2983684 () Bool)

(assert (=> b!2983684 (= e!1876293 e!1876294)))

(declare-fun res!1230530 () Bool)

(assert (=> b!2983684 (=> res!1230530 e!1876294)))

(assert (=> b!2983684 (= res!1230530 call!199335)))

(assert (= (and d!843840 c!490149) b!2983676))

(assert (= (and d!843840 (not c!490149)) b!2983673))

(assert (= (and d!843840 c!490148) b!2983674))

(assert (= (and d!843840 (not c!490148)) b!2983681))

(assert (= (and b!2983681 c!490147) b!2983680))

(assert (= (and b!2983681 (not c!490147)) b!2983683))

(assert (= (and b!2983683 (not res!1230531)) b!2983672))

(assert (= (and b!2983672 res!1230537) b!2983675))

(assert (= (and b!2983675 res!1230533) b!2983679))

(assert (= (and b!2983679 res!1230532) b!2983682))

(assert (= (and b!2983672 (not res!1230535)) b!2983671))

(assert (= (and b!2983671 res!1230534) b!2983684))

(assert (= (and b!2983684 (not res!1230530)) b!2983678))

(assert (= (and b!2983678 (not res!1230536)) b!2983677))

(assert (= (or b!2983674 b!2983675 b!2983684) bm!199330))

(declare-fun m!3343807 () Bool)

(assert (=> b!2983677 m!3343807))

(declare-fun m!3343809 () Bool)

(assert (=> b!2983679 m!3343809))

(assert (=> b!2983679 m!3343809))

(declare-fun m!3343811 () Bool)

(assert (=> b!2983679 m!3343811))

(assert (=> b!2983673 m!3343807))

(assert (=> b!2983673 m!3343807))

(declare-fun m!3343813 () Bool)

(assert (=> b!2983673 m!3343813))

(assert (=> b!2983673 m!3343809))

(assert (=> b!2983673 m!3343813))

(assert (=> b!2983673 m!3343809))

(declare-fun m!3343815 () Bool)

(assert (=> b!2983673 m!3343815))

(declare-fun m!3343817 () Bool)

(assert (=> bm!199330 m!3343817))

(assert (=> d!843840 m!3343817))

(assert (=> d!843840 m!3343613))

(assert (=> b!2983678 m!3343809))

(assert (=> b!2983678 m!3343809))

(assert (=> b!2983678 m!3343811))

(assert (=> b!2983682 m!3343807))

(assert (=> b!2983676 m!3343791))

(assert (=> b!2983292 d!843840))

(declare-fun d!843844 () Bool)

(assert (=> d!843844 (= (matchR!4198 lt!1038871 (_2!20117 lt!1038885)) (matchR!4198 (simplify!317 lt!1038871) (_2!20117 lt!1038885)))))

(declare-fun lt!1039010 () Unit!49031)

(declare-fun choose!17679 (Regex!9316 List!35181) Unit!49031)

(assert (=> d!843844 (= lt!1039010 (choose!17679 lt!1038871 (_2!20117 lt!1038885)))))

(assert (=> d!843844 (validRegex!4049 lt!1038871)))

(assert (=> d!843844 (= (lemmaSimplifySound!181 lt!1038871 (_2!20117 lt!1038885)) lt!1039010)))

(declare-fun bs!527298 () Bool)

(assert (= bs!527298 d!843844))

(assert (=> bs!527298 m!3343559))

(declare-fun m!3343819 () Bool)

(assert (=> bs!527298 m!3343819))

(declare-fun m!3343821 () Bool)

(assert (=> bs!527298 m!3343821))

(assert (=> bs!527298 m!3343613))

(assert (=> bs!527298 m!3343561))

(assert (=> bs!527298 m!3343559))

(assert (=> b!2983292 d!843844))

(declare-fun d!843846 () Bool)

(declare-fun lt!1039013 () Int)

(assert (=> d!843846 (>= lt!1039013 0)))

(declare-fun e!1876300 () Int)

(assert (=> d!843846 (= lt!1039013 e!1876300)))

(declare-fun c!490153 () Bool)

(assert (=> d!843846 (= c!490153 (is-Nil!35057 s!11993))))

(assert (=> d!843846 (= (size!26488 s!11993) lt!1039013)))

(declare-fun b!2983691 () Bool)

(assert (=> b!2983691 (= e!1876300 0)))

(declare-fun b!2983692 () Bool)

(assert (=> b!2983692 (= e!1876300 (+ 1 (size!26488 (t!234246 s!11993))))))

(assert (= (and d!843846 c!490153) b!2983691))

(assert (= (and d!843846 (not c!490153)) b!2983692))

(declare-fun m!3343823 () Bool)

(assert (=> b!2983692 m!3343823))

(assert (=> b!2983292 d!843846))

(declare-fun d!843848 () Bool)

(assert (=> d!843848 (= (matchR!4198 (reg!9645 r!17423) (_1!20117 lt!1038885)) (matchR!4198 (simplify!317 (reg!9645 r!17423)) (_1!20117 lt!1038885)))))

(declare-fun lt!1039014 () Unit!49031)

(assert (=> d!843848 (= lt!1039014 (choose!17679 (reg!9645 r!17423) (_1!20117 lt!1038885)))))

(assert (=> d!843848 (validRegex!4049 (reg!9645 r!17423))))

(assert (=> d!843848 (= (lemmaSimplifySound!181 (reg!9645 r!17423) (_1!20117 lt!1038885)) lt!1039014)))

(declare-fun bs!527299 () Bool)

(assert (= bs!527299 d!843848))

(assert (=> bs!527299 m!3343581))

(declare-fun m!3343825 () Bool)

(assert (=> bs!527299 m!3343825))

(declare-fun m!3343827 () Bool)

(assert (=> bs!527299 m!3343827))

(assert (=> bs!527299 m!3343687))

(assert (=> bs!527299 m!3343549))

(assert (=> bs!527299 m!3343581))

(assert (=> b!2983292 d!843848))

(declare-fun b!2983693 () Bool)

(declare-fun e!1876303 () Bool)

(declare-fun e!1876304 () Bool)

(assert (=> b!2983693 (= e!1876303 e!1876304)))

(declare-fun res!1230542 () Bool)

(assert (=> b!2983693 (=> (not res!1230542) (not e!1876304))))

(declare-fun lt!1039015 () Bool)

(assert (=> b!2983693 (= res!1230542 (not lt!1039015))))

(declare-fun b!2983694 () Bool)

(declare-fun res!1230543 () Bool)

(assert (=> b!2983694 (=> res!1230543 e!1876303)))

(declare-fun e!1876307 () Bool)

(assert (=> b!2983694 (= res!1230543 e!1876307)))

(declare-fun res!1230545 () Bool)

(assert (=> b!2983694 (=> (not res!1230545) (not e!1876307))))

(assert (=> b!2983694 (= res!1230545 lt!1039015)))

(declare-fun b!2983695 () Bool)

(declare-fun e!1876306 () Bool)

(assert (=> b!2983695 (= e!1876306 (matchR!4198 (derivativeStep!2595 lt!1038873 (head!6654 (_2!20117 lt!1038885))) (tail!4880 (_2!20117 lt!1038885))))))

(declare-fun b!2983696 () Bool)

(declare-fun e!1876301 () Bool)

(declare-fun call!199336 () Bool)

(assert (=> b!2983696 (= e!1876301 (= lt!1039015 call!199336))))

(declare-fun b!2983697 () Bool)

(declare-fun res!1230541 () Bool)

(assert (=> b!2983697 (=> (not res!1230541) (not e!1876307))))

(assert (=> b!2983697 (= res!1230541 (not call!199336))))

(declare-fun b!2983698 () Bool)

(assert (=> b!2983698 (= e!1876306 (nullable!2995 lt!1038873))))

(declare-fun b!2983699 () Bool)

(declare-fun e!1876305 () Bool)

(assert (=> b!2983699 (= e!1876305 (not (= (head!6654 (_2!20117 lt!1038885)) (c!490039 lt!1038873))))))

(declare-fun b!2983700 () Bool)

(declare-fun res!1230544 () Bool)

(assert (=> b!2983700 (=> res!1230544 e!1876305)))

(assert (=> b!2983700 (= res!1230544 (not (isEmpty!19318 (tail!4880 (_2!20117 lt!1038885)))))))

(declare-fun b!2983701 () Bool)

(declare-fun res!1230540 () Bool)

(assert (=> b!2983701 (=> (not res!1230540) (not e!1876307))))

(assert (=> b!2983701 (= res!1230540 (isEmpty!19318 (tail!4880 (_2!20117 lt!1038885))))))

(declare-fun d!843850 () Bool)

(assert (=> d!843850 e!1876301))

(declare-fun c!490155 () Bool)

(assert (=> d!843850 (= c!490155 (is-EmptyExpr!9316 lt!1038873))))

(assert (=> d!843850 (= lt!1039015 e!1876306)))

(declare-fun c!490156 () Bool)

(assert (=> d!843850 (= c!490156 (isEmpty!19318 (_2!20117 lt!1038885)))))

(assert (=> d!843850 (validRegex!4049 lt!1038873)))

(assert (=> d!843850 (= (matchR!4198 lt!1038873 (_2!20117 lt!1038885)) lt!1039015)))

(declare-fun b!2983702 () Bool)

(declare-fun e!1876302 () Bool)

(assert (=> b!2983702 (= e!1876302 (not lt!1039015))))

(declare-fun bm!199331 () Bool)

(assert (=> bm!199331 (= call!199336 (isEmpty!19318 (_2!20117 lt!1038885)))))

(declare-fun b!2983703 () Bool)

(assert (=> b!2983703 (= e!1876301 e!1876302)))

(declare-fun c!490154 () Bool)

(assert (=> b!2983703 (= c!490154 (is-EmptyLang!9316 lt!1038873))))

(declare-fun b!2983704 () Bool)

(assert (=> b!2983704 (= e!1876307 (= (head!6654 (_2!20117 lt!1038885)) (c!490039 lt!1038873)))))

(declare-fun b!2983705 () Bool)

(declare-fun res!1230539 () Bool)

(assert (=> b!2983705 (=> res!1230539 e!1876303)))

(assert (=> b!2983705 (= res!1230539 (not (is-ElementMatch!9316 lt!1038873)))))

(assert (=> b!2983705 (= e!1876302 e!1876303)))

(declare-fun b!2983706 () Bool)

(assert (=> b!2983706 (= e!1876304 e!1876305)))

(declare-fun res!1230538 () Bool)

(assert (=> b!2983706 (=> res!1230538 e!1876305)))

(assert (=> b!2983706 (= res!1230538 call!199336)))

(assert (= (and d!843850 c!490156) b!2983698))

(assert (= (and d!843850 (not c!490156)) b!2983695))

(assert (= (and d!843850 c!490155) b!2983696))

(assert (= (and d!843850 (not c!490155)) b!2983703))

(assert (= (and b!2983703 c!490154) b!2983702))

(assert (= (and b!2983703 (not c!490154)) b!2983705))

(assert (= (and b!2983705 (not res!1230539)) b!2983694))

(assert (= (and b!2983694 res!1230545) b!2983697))

(assert (= (and b!2983697 res!1230541) b!2983701))

(assert (= (and b!2983701 res!1230540) b!2983704))

(assert (= (and b!2983694 (not res!1230543)) b!2983693))

(assert (= (and b!2983693 res!1230542) b!2983706))

(assert (= (and b!2983706 (not res!1230538)) b!2983700))

(assert (= (and b!2983700 (not res!1230544)) b!2983699))

(assert (= (or b!2983696 b!2983697 b!2983706) bm!199331))

(assert (=> b!2983699 m!3343807))

(assert (=> b!2983701 m!3343809))

(assert (=> b!2983701 m!3343809))

(assert (=> b!2983701 m!3343811))

(assert (=> b!2983695 m!3343807))

(assert (=> b!2983695 m!3343807))

(declare-fun m!3343829 () Bool)

(assert (=> b!2983695 m!3343829))

(assert (=> b!2983695 m!3343809))

(assert (=> b!2983695 m!3343829))

(assert (=> b!2983695 m!3343809))

(declare-fun m!3343831 () Bool)

(assert (=> b!2983695 m!3343831))

(assert (=> bm!199331 m!3343817))

(assert (=> d!843850 m!3343817))

(declare-fun m!3343833 () Bool)

(assert (=> d!843850 m!3343833))

(assert (=> b!2983700 m!3343809))

(assert (=> b!2983700 m!3343809))

(assert (=> b!2983700 m!3343811))

(assert (=> b!2983704 m!3343807))

(declare-fun m!3343835 () Bool)

(assert (=> b!2983698 m!3343835))

(assert (=> b!2983292 d!843850))

(declare-fun d!843852 () Bool)

(declare-fun lt!1039016 () Int)

(assert (=> d!843852 (>= lt!1039016 0)))

(declare-fun e!1876308 () Int)

(assert (=> d!843852 (= lt!1039016 e!1876308)))

(declare-fun c!490157 () Bool)

(assert (=> d!843852 (= c!490157 (is-Nil!35057 (_2!20117 lt!1038885)))))

(assert (=> d!843852 (= (size!26488 (_2!20117 lt!1038885)) lt!1039016)))

(declare-fun b!2983707 () Bool)

(assert (=> b!2983707 (= e!1876308 0)))

(declare-fun b!2983708 () Bool)

(assert (=> b!2983708 (= e!1876308 (+ 1 (size!26488 (t!234246 (_2!20117 lt!1038885)))))))

(assert (= (and d!843852 c!490157) b!2983707))

(assert (= (and d!843852 (not c!490157)) b!2983708))

(declare-fun m!3343837 () Bool)

(assert (=> b!2983708 m!3343837))

(assert (=> b!2983292 d!843852))

(declare-fun b!2983709 () Bool)

(declare-fun e!1876311 () Bool)

(declare-fun e!1876312 () Bool)

(assert (=> b!2983709 (= e!1876311 e!1876312)))

(declare-fun res!1230550 () Bool)

(assert (=> b!2983709 (=> (not res!1230550) (not e!1876312))))

(declare-fun lt!1039017 () Bool)

(assert (=> b!2983709 (= res!1230550 (not lt!1039017))))

(declare-fun b!2983710 () Bool)

(declare-fun res!1230551 () Bool)

(assert (=> b!2983710 (=> res!1230551 e!1876311)))

(declare-fun e!1876315 () Bool)

(assert (=> b!2983710 (= res!1230551 e!1876315)))

(declare-fun res!1230553 () Bool)

(assert (=> b!2983710 (=> (not res!1230553) (not e!1876315))))

(assert (=> b!2983710 (= res!1230553 lt!1039017)))

(declare-fun b!2983711 () Bool)

(declare-fun e!1876314 () Bool)

(assert (=> b!2983711 (= e!1876314 (matchR!4198 (derivativeStep!2595 lt!1038875 (head!6654 s!11993)) (tail!4880 s!11993)))))

(declare-fun b!2983712 () Bool)

(declare-fun e!1876309 () Bool)

(declare-fun call!199337 () Bool)

(assert (=> b!2983712 (= e!1876309 (= lt!1039017 call!199337))))

(declare-fun b!2983713 () Bool)

(declare-fun res!1230549 () Bool)

(assert (=> b!2983713 (=> (not res!1230549) (not e!1876315))))

(assert (=> b!2983713 (= res!1230549 (not call!199337))))

(declare-fun b!2983714 () Bool)

(assert (=> b!2983714 (= e!1876314 (nullable!2995 lt!1038875))))

(declare-fun b!2983715 () Bool)

(declare-fun e!1876313 () Bool)

(assert (=> b!2983715 (= e!1876313 (not (= (head!6654 s!11993) (c!490039 lt!1038875))))))

(declare-fun b!2983716 () Bool)

(declare-fun res!1230552 () Bool)

(assert (=> b!2983716 (=> res!1230552 e!1876313)))

(assert (=> b!2983716 (= res!1230552 (not (isEmpty!19318 (tail!4880 s!11993))))))

(declare-fun b!2983717 () Bool)

(declare-fun res!1230548 () Bool)

(assert (=> b!2983717 (=> (not res!1230548) (not e!1876315))))

(assert (=> b!2983717 (= res!1230548 (isEmpty!19318 (tail!4880 s!11993)))))

(declare-fun d!843854 () Bool)

(assert (=> d!843854 e!1876309))

(declare-fun c!490159 () Bool)

(assert (=> d!843854 (= c!490159 (is-EmptyExpr!9316 lt!1038875))))

(assert (=> d!843854 (= lt!1039017 e!1876314)))

(declare-fun c!490160 () Bool)

(assert (=> d!843854 (= c!490160 (isEmpty!19318 s!11993))))

(assert (=> d!843854 (validRegex!4049 lt!1038875)))

(assert (=> d!843854 (= (matchR!4198 lt!1038875 s!11993) lt!1039017)))

(declare-fun b!2983718 () Bool)

(declare-fun e!1876310 () Bool)

(assert (=> b!2983718 (= e!1876310 (not lt!1039017))))

(declare-fun bm!199332 () Bool)

(assert (=> bm!199332 (= call!199337 (isEmpty!19318 s!11993))))

(declare-fun b!2983719 () Bool)

(assert (=> b!2983719 (= e!1876309 e!1876310)))

(declare-fun c!490158 () Bool)

(assert (=> b!2983719 (= c!490158 (is-EmptyLang!9316 lt!1038875))))

(declare-fun b!2983720 () Bool)

(assert (=> b!2983720 (= e!1876315 (= (head!6654 s!11993) (c!490039 lt!1038875)))))

(declare-fun b!2983721 () Bool)

(declare-fun res!1230547 () Bool)

(assert (=> b!2983721 (=> res!1230547 e!1876311)))

(assert (=> b!2983721 (= res!1230547 (not (is-ElementMatch!9316 lt!1038875)))))

(assert (=> b!2983721 (= e!1876310 e!1876311)))

(declare-fun b!2983722 () Bool)

(assert (=> b!2983722 (= e!1876312 e!1876313)))

(declare-fun res!1230546 () Bool)

(assert (=> b!2983722 (=> res!1230546 e!1876313)))

(assert (=> b!2983722 (= res!1230546 call!199337)))

(assert (= (and d!843854 c!490160) b!2983714))

(assert (= (and d!843854 (not c!490160)) b!2983711))

(assert (= (and d!843854 c!490159) b!2983712))

(assert (= (and d!843854 (not c!490159)) b!2983719))

(assert (= (and b!2983719 c!490158) b!2983718))

(assert (= (and b!2983719 (not c!490158)) b!2983721))

(assert (= (and b!2983721 (not res!1230547)) b!2983710))

(assert (= (and b!2983710 res!1230553) b!2983713))

(assert (= (and b!2983713 res!1230549) b!2983717))

(assert (= (and b!2983717 res!1230548) b!2983720))

(assert (= (and b!2983710 (not res!1230551)) b!2983709))

(assert (= (and b!2983709 res!1230550) b!2983722))

(assert (= (and b!2983722 (not res!1230546)) b!2983716))

(assert (= (and b!2983716 (not res!1230552)) b!2983715))

(assert (= (or b!2983712 b!2983713 b!2983722) bm!199332))

(declare-fun m!3343839 () Bool)

(assert (=> b!2983715 m!3343839))

(declare-fun m!3343841 () Bool)

(assert (=> b!2983717 m!3343841))

(assert (=> b!2983717 m!3343841))

(declare-fun m!3343843 () Bool)

(assert (=> b!2983717 m!3343843))

(assert (=> b!2983711 m!3343839))

(assert (=> b!2983711 m!3343839))

(declare-fun m!3343845 () Bool)

(assert (=> b!2983711 m!3343845))

(assert (=> b!2983711 m!3343841))

(assert (=> b!2983711 m!3343845))

(assert (=> b!2983711 m!3343841))

(declare-fun m!3343847 () Bool)

(assert (=> b!2983711 m!3343847))

(assert (=> bm!199332 m!3343601))

(assert (=> d!843854 m!3343601))

(declare-fun m!3343849 () Bool)

(assert (=> d!843854 m!3343849))

(assert (=> b!2983716 m!3343841))

(assert (=> b!2983716 m!3343841))

(assert (=> b!2983716 m!3343843))

(assert (=> b!2983720 m!3343839))

(declare-fun m!3343851 () Bool)

(assert (=> b!2983714 m!3343851))

(assert (=> b!2983293 d!843854))

(declare-fun d!843856 () Bool)

(assert (=> d!843856 (= (matchR!4198 (reg!9645 r!17423) (_1!20117 lt!1038885)) (matchRSpec!1453 (reg!9645 r!17423) (_1!20117 lt!1038885)))))

(declare-fun lt!1039020 () Unit!49031)

(declare-fun choose!17680 (Regex!9316 List!35181) Unit!49031)

(assert (=> d!843856 (= lt!1039020 (choose!17680 (reg!9645 r!17423) (_1!20117 lt!1038885)))))

(assert (=> d!843856 (validRegex!4049 (reg!9645 r!17423))))

(assert (=> d!843856 (= (mainMatchTheorem!1453 (reg!9645 r!17423) (_1!20117 lt!1038885)) lt!1039020)))

(declare-fun bs!527300 () Bool)

(assert (= bs!527300 d!843856))

(assert (=> bs!527300 m!3343549))

(declare-fun m!3343853 () Bool)

(assert (=> bs!527300 m!3343853))

(declare-fun m!3343855 () Bool)

(assert (=> bs!527300 m!3343855))

(assert (=> bs!527300 m!3343687))

(assert (=> b!2983282 d!843856))

(declare-fun bs!527301 () Bool)

(declare-fun b!2983793 () Bool)

(assert (= bs!527301 (and b!2983793 d!843830)))

(declare-fun lambda!111362 () Int)

(assert (=> bs!527301 (not (= lambda!111362 lambda!111356))))

(declare-fun bs!527302 () Bool)

(assert (= bs!527302 (and b!2983793 b!2983285)))

(assert (=> bs!527302 (not (= lambda!111362 lambda!111339))))

(assert (=> bs!527301 (= (and (= (reg!9645 r!17423) lt!1038878) (= r!17423 (Star!9316 lt!1038878))) (= lambda!111362 lambda!111357))))

(assert (=> bs!527302 (= (and (= (reg!9645 r!17423) lt!1038878) (= r!17423 lt!1038875)) (= lambda!111362 lambda!111340))))

(declare-fun bs!527303 () Bool)

(assert (= bs!527303 (and b!2983793 d!843826)))

(assert (=> bs!527303 (not (= lambda!111362 lambda!111351))))

(assert (=> b!2983793 true))

(assert (=> b!2983793 true))

(declare-fun bs!527304 () Bool)

(declare-fun b!2983792 () Bool)

(assert (= bs!527304 (and b!2983792 d!843830)))

(declare-fun lambda!111363 () Int)

(assert (=> bs!527304 (not (= lambda!111363 lambda!111356))))

(declare-fun bs!527305 () Bool)

(assert (= bs!527305 (and b!2983792 b!2983285)))

(assert (=> bs!527305 (not (= lambda!111363 lambda!111339))))

(assert (=> bs!527304 (not (= lambda!111363 lambda!111357))))

(declare-fun bs!527306 () Bool)

(assert (= bs!527306 (and b!2983792 b!2983793)))

(assert (=> bs!527306 (not (= lambda!111363 lambda!111362))))

(assert (=> bs!527305 (not (= lambda!111363 lambda!111340))))

(declare-fun bs!527307 () Bool)

(assert (= bs!527307 (and b!2983792 d!843826)))

(assert (=> bs!527307 (not (= lambda!111363 lambda!111351))))

(assert (=> b!2983792 true))

(assert (=> b!2983792 true))

(declare-fun d!843858 () Bool)

(declare-fun c!490177 () Bool)

(assert (=> d!843858 (= c!490177 (is-EmptyExpr!9316 r!17423))))

(declare-fun e!1876348 () Bool)

(assert (=> d!843858 (= (matchRSpec!1453 r!17423 s!11993) e!1876348)))

(declare-fun b!2983783 () Bool)

(declare-fun e!1876351 () Bool)

(assert (=> b!2983783 (= e!1876351 (matchRSpec!1453 (regTwo!19145 r!17423) s!11993))))

(declare-fun b!2983784 () Bool)

(declare-fun e!1876352 () Bool)

(assert (=> b!2983784 (= e!1876352 (= s!11993 (Cons!35057 (c!490039 r!17423) Nil!35057)))))

(declare-fun b!2983785 () Bool)

(declare-fun c!490175 () Bool)

(assert (=> b!2983785 (= c!490175 (is-ElementMatch!9316 r!17423))))

(declare-fun e!1876353 () Bool)

(assert (=> b!2983785 (= e!1876353 e!1876352)))

(declare-fun b!2983786 () Bool)

(declare-fun e!1876354 () Bool)

(declare-fun e!1876350 () Bool)

(assert (=> b!2983786 (= e!1876354 e!1876350)))

(declare-fun c!490178 () Bool)

(assert (=> b!2983786 (= c!490178 (is-Star!9316 r!17423))))

(declare-fun b!2983787 () Bool)

(declare-fun c!490176 () Bool)

(assert (=> b!2983787 (= c!490176 (is-Union!9316 r!17423))))

(assert (=> b!2983787 (= e!1876352 e!1876354)))

(declare-fun b!2983788 () Bool)

(declare-fun res!1230587 () Bool)

(declare-fun e!1876349 () Bool)

(assert (=> b!2983788 (=> res!1230587 e!1876349)))

(declare-fun call!199345 () Bool)

(assert (=> b!2983788 (= res!1230587 call!199345)))

(assert (=> b!2983788 (= e!1876350 e!1876349)))

(declare-fun bm!199339 () Bool)

(assert (=> bm!199339 (= call!199345 (isEmpty!19318 s!11993))))

(declare-fun b!2983789 () Bool)

(assert (=> b!2983789 (= e!1876354 e!1876351)))

(declare-fun res!1230588 () Bool)

(assert (=> b!2983789 (= res!1230588 (matchRSpec!1453 (regOne!19145 r!17423) s!11993))))

(assert (=> b!2983789 (=> res!1230588 e!1876351)))

(declare-fun b!2983790 () Bool)

(assert (=> b!2983790 (= e!1876348 e!1876353)))

(declare-fun res!1230586 () Bool)

(assert (=> b!2983790 (= res!1230586 (not (is-EmptyLang!9316 r!17423)))))

(assert (=> b!2983790 (=> (not res!1230586) (not e!1876353))))

(declare-fun b!2983791 () Bool)

(assert (=> b!2983791 (= e!1876348 call!199345)))

(declare-fun call!199344 () Bool)

(assert (=> b!2983792 (= e!1876350 call!199344)))

(assert (=> b!2983793 (= e!1876349 call!199344)))

(declare-fun bm!199340 () Bool)

(assert (=> bm!199340 (= call!199344 (Exists!1596 (ite c!490178 lambda!111362 lambda!111363)))))

(assert (= (and d!843858 c!490177) b!2983791))

(assert (= (and d!843858 (not c!490177)) b!2983790))

(assert (= (and b!2983790 res!1230586) b!2983785))

(assert (= (and b!2983785 c!490175) b!2983784))

(assert (= (and b!2983785 (not c!490175)) b!2983787))

(assert (= (and b!2983787 c!490176) b!2983789))

(assert (= (and b!2983787 (not c!490176)) b!2983786))

(assert (= (and b!2983789 (not res!1230588)) b!2983783))

(assert (= (and b!2983786 c!490178) b!2983788))

(assert (= (and b!2983786 (not c!490178)) b!2983792))

(assert (= (and b!2983788 (not res!1230587)) b!2983793))

(assert (= (or b!2983793 b!2983792) bm!199340))

(assert (= (or b!2983791 b!2983788) bm!199339))

(declare-fun m!3343863 () Bool)

(assert (=> b!2983783 m!3343863))

(assert (=> bm!199339 m!3343601))

(declare-fun m!3343865 () Bool)

(assert (=> b!2983789 m!3343865))

(declare-fun m!3343867 () Bool)

(assert (=> bm!199340 m!3343867))

(assert (=> b!2983289 d!843858))

(declare-fun b!2983808 () Bool)

(declare-fun e!1876364 () Bool)

(declare-fun e!1876365 () Bool)

(assert (=> b!2983808 (= e!1876364 e!1876365)))

(declare-fun res!1230601 () Bool)

(assert (=> b!2983808 (=> (not res!1230601) (not e!1876365))))

(declare-fun lt!1039024 () Bool)

(assert (=> b!2983808 (= res!1230601 (not lt!1039024))))

(declare-fun b!2983809 () Bool)

(declare-fun res!1230602 () Bool)

(assert (=> b!2983809 (=> res!1230602 e!1876364)))

(declare-fun e!1876368 () Bool)

(assert (=> b!2983809 (= res!1230602 e!1876368)))

(declare-fun res!1230604 () Bool)

(assert (=> b!2983809 (=> (not res!1230604) (not e!1876368))))

(assert (=> b!2983809 (= res!1230604 lt!1039024)))

(declare-fun b!2983810 () Bool)

(declare-fun e!1876367 () Bool)

(assert (=> b!2983810 (= e!1876367 (matchR!4198 (derivativeStep!2595 r!17423 (head!6654 s!11993)) (tail!4880 s!11993)))))

(declare-fun b!2983811 () Bool)

(declare-fun e!1876362 () Bool)

(declare-fun call!199347 () Bool)

(assert (=> b!2983811 (= e!1876362 (= lt!1039024 call!199347))))

(declare-fun b!2983812 () Bool)

(declare-fun res!1230600 () Bool)

(assert (=> b!2983812 (=> (not res!1230600) (not e!1876368))))

(assert (=> b!2983812 (= res!1230600 (not call!199347))))

(declare-fun b!2983813 () Bool)

(assert (=> b!2983813 (= e!1876367 (nullable!2995 r!17423))))

(declare-fun b!2983814 () Bool)

(declare-fun e!1876366 () Bool)

(assert (=> b!2983814 (= e!1876366 (not (= (head!6654 s!11993) (c!490039 r!17423))))))

(declare-fun b!2983815 () Bool)

(declare-fun res!1230603 () Bool)

(assert (=> b!2983815 (=> res!1230603 e!1876366)))

(assert (=> b!2983815 (= res!1230603 (not (isEmpty!19318 (tail!4880 s!11993))))))

(declare-fun b!2983816 () Bool)

(declare-fun res!1230599 () Bool)

(assert (=> b!2983816 (=> (not res!1230599) (not e!1876368))))

(assert (=> b!2983816 (= res!1230599 (isEmpty!19318 (tail!4880 s!11993)))))

(declare-fun d!843860 () Bool)

(assert (=> d!843860 e!1876362))

(declare-fun c!490183 () Bool)

(assert (=> d!843860 (= c!490183 (is-EmptyExpr!9316 r!17423))))

(assert (=> d!843860 (= lt!1039024 e!1876367)))

(declare-fun c!490184 () Bool)

(assert (=> d!843860 (= c!490184 (isEmpty!19318 s!11993))))

(assert (=> d!843860 (validRegex!4049 r!17423)))

(assert (=> d!843860 (= (matchR!4198 r!17423 s!11993) lt!1039024)))

(declare-fun b!2983817 () Bool)

(declare-fun e!1876363 () Bool)

(assert (=> b!2983817 (= e!1876363 (not lt!1039024))))

(declare-fun bm!199342 () Bool)

(assert (=> bm!199342 (= call!199347 (isEmpty!19318 s!11993))))

(declare-fun b!2983818 () Bool)

(assert (=> b!2983818 (= e!1876362 e!1876363)))

(declare-fun c!490182 () Bool)

(assert (=> b!2983818 (= c!490182 (is-EmptyLang!9316 r!17423))))

(declare-fun b!2983819 () Bool)

(assert (=> b!2983819 (= e!1876368 (= (head!6654 s!11993) (c!490039 r!17423)))))

(declare-fun b!2983820 () Bool)

(declare-fun res!1230598 () Bool)

(assert (=> b!2983820 (=> res!1230598 e!1876364)))

(assert (=> b!2983820 (= res!1230598 (not (is-ElementMatch!9316 r!17423)))))

(assert (=> b!2983820 (= e!1876363 e!1876364)))

(declare-fun b!2983821 () Bool)

(assert (=> b!2983821 (= e!1876365 e!1876366)))

(declare-fun res!1230597 () Bool)

(assert (=> b!2983821 (=> res!1230597 e!1876366)))

(assert (=> b!2983821 (= res!1230597 call!199347)))

(assert (= (and d!843860 c!490184) b!2983813))

(assert (= (and d!843860 (not c!490184)) b!2983810))

(assert (= (and d!843860 c!490183) b!2983811))

(assert (= (and d!843860 (not c!490183)) b!2983818))

(assert (= (and b!2983818 c!490182) b!2983817))

(assert (= (and b!2983818 (not c!490182)) b!2983820))

(assert (= (and b!2983820 (not res!1230598)) b!2983809))

(assert (= (and b!2983809 res!1230604) b!2983812))

(assert (= (and b!2983812 res!1230600) b!2983816))

(assert (= (and b!2983816 res!1230599) b!2983819))

(assert (= (and b!2983809 (not res!1230602)) b!2983808))

(assert (= (and b!2983808 res!1230601) b!2983821))

(assert (= (and b!2983821 (not res!1230597)) b!2983815))

(assert (= (and b!2983815 (not res!1230603)) b!2983814))

(assert (= (or b!2983811 b!2983812 b!2983821) bm!199342))

(assert (=> b!2983814 m!3343839))

(assert (=> b!2983816 m!3343841))

(assert (=> b!2983816 m!3343841))

(assert (=> b!2983816 m!3343843))

(assert (=> b!2983810 m!3343839))

(assert (=> b!2983810 m!3343839))

(declare-fun m!3343879 () Bool)

(assert (=> b!2983810 m!3343879))

(assert (=> b!2983810 m!3343841))

(assert (=> b!2983810 m!3343879))

(assert (=> b!2983810 m!3343841))

(declare-fun m!3343881 () Bool)

(assert (=> b!2983810 m!3343881))

(assert (=> bm!199342 m!3343601))

(assert (=> d!843860 m!3343601))

(assert (=> d!843860 m!3343615))

(assert (=> b!2983815 m!3343841))

(assert (=> b!2983815 m!3343841))

(assert (=> b!2983815 m!3343843))

(assert (=> b!2983819 m!3343839))

(declare-fun m!3343883 () Bool)

(assert (=> b!2983813 m!3343883))

(assert (=> b!2983289 d!843860))

(declare-fun d!843864 () Bool)

(assert (=> d!843864 (= (matchR!4198 r!17423 s!11993) (matchRSpec!1453 r!17423 s!11993))))

(declare-fun lt!1039025 () Unit!49031)

(assert (=> d!843864 (= lt!1039025 (choose!17680 r!17423 s!11993))))

(assert (=> d!843864 (validRegex!4049 r!17423)))

(assert (=> d!843864 (= (mainMatchTheorem!1453 r!17423 s!11993) lt!1039025)))

(declare-fun bs!527308 () Bool)

(assert (= bs!527308 d!843864))

(assert (=> bs!527308 m!3343609))

(assert (=> bs!527308 m!3343607))

(declare-fun m!3343885 () Bool)

(assert (=> bs!527308 m!3343885))

(assert (=> bs!527308 m!3343615))

(assert (=> b!2983289 d!843864))

(declare-fun d!843866 () Bool)

(assert (=> d!843866 (matchR!4198 (Star!9316 (reg!9645 r!17423)) (++!8374 (_1!20117 lt!1038885) (_2!20117 lt!1038885)))))

(declare-fun lt!1039028 () Unit!49031)

(declare-fun choose!17681 (Regex!9316 List!35181 List!35181) Unit!49031)

(assert (=> d!843866 (= lt!1039028 (choose!17681 (reg!9645 r!17423) (_1!20117 lt!1038885) (_2!20117 lt!1038885)))))

(assert (=> d!843866 (validRegex!4049 (Star!9316 (reg!9645 r!17423)))))

(assert (=> d!843866 (= (lemmaStarApp!21 (reg!9645 r!17423) (_1!20117 lt!1038885) (_2!20117 lt!1038885)) lt!1039028)))

(declare-fun bs!527309 () Bool)

(assert (= bs!527309 d!843866))

(assert (=> bs!527309 m!3343595))

(assert (=> bs!527309 m!3343595))

(declare-fun m!3343887 () Bool)

(assert (=> bs!527309 m!3343887))

(declare-fun m!3343889 () Bool)

(assert (=> bs!527309 m!3343889))

(declare-fun m!3343891 () Bool)

(assert (=> bs!527309 m!3343891))

(assert (=> b!2983278 d!843866))

(declare-fun d!843868 () Bool)

(declare-fun e!1876374 () Bool)

(assert (=> d!843868 e!1876374))

(declare-fun res!1230610 () Bool)

(assert (=> d!843868 (=> (not res!1230610) (not e!1876374))))

(declare-fun lt!1039035 () List!35181)

(declare-fun content!4765 (List!35181) (Set C!18818))

(assert (=> d!843868 (= res!1230610 (= (content!4765 lt!1039035) (set.union (content!4765 (_1!20117 lt!1038885)) (content!4765 (_2!20117 lt!1038885)))))))

(declare-fun e!1876373 () List!35181)

(assert (=> d!843868 (= lt!1039035 e!1876373)))

(declare-fun c!490187 () Bool)

(assert (=> d!843868 (= c!490187 (is-Nil!35057 (_1!20117 lt!1038885)))))

(assert (=> d!843868 (= (++!8374 (_1!20117 lt!1038885) (_2!20117 lt!1038885)) lt!1039035)))

(declare-fun b!2983832 () Bool)

(declare-fun res!1230609 () Bool)

(assert (=> b!2983832 (=> (not res!1230609) (not e!1876374))))

(assert (=> b!2983832 (= res!1230609 (= (size!26488 lt!1039035) (+ (size!26488 (_1!20117 lt!1038885)) (size!26488 (_2!20117 lt!1038885)))))))

(declare-fun b!2983830 () Bool)

(assert (=> b!2983830 (= e!1876373 (_2!20117 lt!1038885))))

(declare-fun b!2983833 () Bool)

(assert (=> b!2983833 (= e!1876374 (or (not (= (_2!20117 lt!1038885) Nil!35057)) (= lt!1039035 (_1!20117 lt!1038885))))))

(declare-fun b!2983831 () Bool)

(assert (=> b!2983831 (= e!1876373 (Cons!35057 (h!40477 (_1!20117 lt!1038885)) (++!8374 (t!234246 (_1!20117 lt!1038885)) (_2!20117 lt!1038885))))))

(assert (= (and d!843868 c!490187) b!2983830))

(assert (= (and d!843868 (not c!490187)) b!2983831))

(assert (= (and d!843868 res!1230610) b!2983832))

(assert (= (and b!2983832 res!1230609) b!2983833))

(declare-fun m!3343899 () Bool)

(assert (=> d!843868 m!3343899))

(declare-fun m!3343901 () Bool)

(assert (=> d!843868 m!3343901))

(declare-fun m!3343905 () Bool)

(assert (=> d!843868 m!3343905))

(declare-fun m!3343907 () Bool)

(assert (=> b!2983832 m!3343907))

(declare-fun m!3343909 () Bool)

(assert (=> b!2983832 m!3343909))

(assert (=> b!2983832 m!3343553))

(declare-fun m!3343911 () Bool)

(assert (=> b!2983831 m!3343911))

(assert (=> b!2983278 d!843868))

(declare-fun b!2983848 () Bool)

(declare-fun e!1876384 () Bool)

(declare-fun e!1876385 () Bool)

(assert (=> b!2983848 (= e!1876384 e!1876385)))

(declare-fun res!1230623 () Bool)

(assert (=> b!2983848 (=> (not res!1230623) (not e!1876385))))

(declare-fun lt!1039037 () Bool)

(assert (=> b!2983848 (= res!1230623 (not lt!1039037))))

(declare-fun b!2983849 () Bool)

(declare-fun res!1230624 () Bool)

(assert (=> b!2983849 (=> res!1230624 e!1876384)))

(declare-fun e!1876388 () Bool)

(assert (=> b!2983849 (= res!1230624 e!1876388)))

(declare-fun res!1230626 () Bool)

(assert (=> b!2983849 (=> (not res!1230626) (not e!1876388))))

(assert (=> b!2983849 (= res!1230626 lt!1039037)))

(declare-fun b!2983850 () Bool)

(declare-fun e!1876387 () Bool)

(assert (=> b!2983850 (= e!1876387 (matchR!4198 (derivativeStep!2595 lt!1038871 (head!6654 (++!8374 (_1!20117 lt!1038885) (_2!20117 lt!1038885)))) (tail!4880 (++!8374 (_1!20117 lt!1038885) (_2!20117 lt!1038885)))))))

(declare-fun b!2983851 () Bool)

(declare-fun e!1876382 () Bool)

(declare-fun call!199349 () Bool)

(assert (=> b!2983851 (= e!1876382 (= lt!1039037 call!199349))))

(declare-fun b!2983852 () Bool)

(declare-fun res!1230622 () Bool)

(assert (=> b!2983852 (=> (not res!1230622) (not e!1876388))))

(assert (=> b!2983852 (= res!1230622 (not call!199349))))

(declare-fun b!2983853 () Bool)

(assert (=> b!2983853 (= e!1876387 (nullable!2995 lt!1038871))))

(declare-fun b!2983854 () Bool)

(declare-fun e!1876386 () Bool)

(assert (=> b!2983854 (= e!1876386 (not (= (head!6654 (++!8374 (_1!20117 lt!1038885) (_2!20117 lt!1038885))) (c!490039 lt!1038871))))))

(declare-fun b!2983855 () Bool)

(declare-fun res!1230625 () Bool)

(assert (=> b!2983855 (=> res!1230625 e!1876386)))

(assert (=> b!2983855 (= res!1230625 (not (isEmpty!19318 (tail!4880 (++!8374 (_1!20117 lt!1038885) (_2!20117 lt!1038885))))))))

(declare-fun b!2983856 () Bool)

(declare-fun res!1230621 () Bool)

(assert (=> b!2983856 (=> (not res!1230621) (not e!1876388))))

(assert (=> b!2983856 (= res!1230621 (isEmpty!19318 (tail!4880 (++!8374 (_1!20117 lt!1038885) (_2!20117 lt!1038885)))))))

(declare-fun d!843874 () Bool)

(assert (=> d!843874 e!1876382))

(declare-fun c!490192 () Bool)

(assert (=> d!843874 (= c!490192 (is-EmptyExpr!9316 lt!1038871))))

(assert (=> d!843874 (= lt!1039037 e!1876387)))

(declare-fun c!490193 () Bool)

(assert (=> d!843874 (= c!490193 (isEmpty!19318 (++!8374 (_1!20117 lt!1038885) (_2!20117 lt!1038885))))))

(assert (=> d!843874 (validRegex!4049 lt!1038871)))

(assert (=> d!843874 (= (matchR!4198 lt!1038871 (++!8374 (_1!20117 lt!1038885) (_2!20117 lt!1038885))) lt!1039037)))

(declare-fun b!2983857 () Bool)

(declare-fun e!1876383 () Bool)

(assert (=> b!2983857 (= e!1876383 (not lt!1039037))))

(declare-fun bm!199344 () Bool)

(assert (=> bm!199344 (= call!199349 (isEmpty!19318 (++!8374 (_1!20117 lt!1038885) (_2!20117 lt!1038885))))))

(declare-fun b!2983858 () Bool)

(assert (=> b!2983858 (= e!1876382 e!1876383)))

(declare-fun c!490191 () Bool)

(assert (=> b!2983858 (= c!490191 (is-EmptyLang!9316 lt!1038871))))

(declare-fun b!2983859 () Bool)

(assert (=> b!2983859 (= e!1876388 (= (head!6654 (++!8374 (_1!20117 lt!1038885) (_2!20117 lt!1038885))) (c!490039 lt!1038871)))))

(declare-fun b!2983860 () Bool)

(declare-fun res!1230620 () Bool)

(assert (=> b!2983860 (=> res!1230620 e!1876384)))

(assert (=> b!2983860 (= res!1230620 (not (is-ElementMatch!9316 lt!1038871)))))

(assert (=> b!2983860 (= e!1876383 e!1876384)))

(declare-fun b!2983861 () Bool)

(assert (=> b!2983861 (= e!1876385 e!1876386)))

(declare-fun res!1230618 () Bool)

(assert (=> b!2983861 (=> res!1230618 e!1876386)))

(assert (=> b!2983861 (= res!1230618 call!199349)))

(assert (= (and d!843874 c!490193) b!2983853))

(assert (= (and d!843874 (not c!490193)) b!2983850))

(assert (= (and d!843874 c!490192) b!2983851))

(assert (= (and d!843874 (not c!490192)) b!2983858))

(assert (= (and b!2983858 c!490191) b!2983857))

(assert (= (and b!2983858 (not c!490191)) b!2983860))

(assert (= (and b!2983860 (not res!1230620)) b!2983849))

(assert (= (and b!2983849 res!1230626) b!2983852))

(assert (= (and b!2983852 res!1230622) b!2983856))

(assert (= (and b!2983856 res!1230621) b!2983859))

(assert (= (and b!2983849 (not res!1230624)) b!2983848))

(assert (= (and b!2983848 res!1230623) b!2983861))

(assert (= (and b!2983861 (not res!1230618)) b!2983855))

(assert (= (and b!2983855 (not res!1230625)) b!2983854))

(assert (= (or b!2983851 b!2983852 b!2983861) bm!199344))

(assert (=> b!2983854 m!3343595))

(declare-fun m!3343913 () Bool)

(assert (=> b!2983854 m!3343913))

(assert (=> b!2983856 m!3343595))

(declare-fun m!3343915 () Bool)

(assert (=> b!2983856 m!3343915))

(assert (=> b!2983856 m!3343915))

(declare-fun m!3343917 () Bool)

(assert (=> b!2983856 m!3343917))

(assert (=> b!2983850 m!3343595))

(assert (=> b!2983850 m!3343913))

(assert (=> b!2983850 m!3343913))

(declare-fun m!3343919 () Bool)

(assert (=> b!2983850 m!3343919))

(assert (=> b!2983850 m!3343595))

(assert (=> b!2983850 m!3343915))

(assert (=> b!2983850 m!3343919))

(assert (=> b!2983850 m!3343915))

(declare-fun m!3343921 () Bool)

(assert (=> b!2983850 m!3343921))

(assert (=> bm!199344 m!3343595))

(declare-fun m!3343923 () Bool)

(assert (=> bm!199344 m!3343923))

(assert (=> d!843874 m!3343595))

(assert (=> d!843874 m!3343923))

(assert (=> d!843874 m!3343613))

(assert (=> b!2983855 m!3343595))

(assert (=> b!2983855 m!3343915))

(assert (=> b!2983855 m!3343915))

(assert (=> b!2983855 m!3343917))

(assert (=> b!2983859 m!3343595))

(assert (=> b!2983859 m!3343913))

(assert (=> b!2983853 m!3343791))

(assert (=> b!2983278 d!843874))

(declare-fun b!2983862 () Bool)

(declare-fun e!1876392 () Bool)

(declare-fun e!1876394 () Bool)

(assert (=> b!2983862 (= e!1876392 e!1876394)))

(declare-fun c!490195 () Bool)

(assert (=> b!2983862 (= c!490195 (is-Star!9316 (simplify!317 r!17423)))))

(declare-fun b!2983863 () Bool)

(declare-fun res!1230630 () Bool)

(declare-fun e!1876389 () Bool)

(assert (=> b!2983863 (=> (not res!1230630) (not e!1876389))))

(declare-fun call!199351 () Bool)

(assert (=> b!2983863 (= res!1230630 call!199351)))

(declare-fun e!1876390 () Bool)

(assert (=> b!2983863 (= e!1876390 e!1876389)))

(declare-fun b!2983864 () Bool)

(declare-fun res!1230627 () Bool)

(declare-fun e!1876391 () Bool)

(assert (=> b!2983864 (=> res!1230627 e!1876391)))

(assert (=> b!2983864 (= res!1230627 (not (is-Concat!14637 (simplify!317 r!17423))))))

(assert (=> b!2983864 (= e!1876390 e!1876391)))

(declare-fun b!2983865 () Bool)

(declare-fun e!1876395 () Bool)

(declare-fun call!199350 () Bool)

(assert (=> b!2983865 (= e!1876395 call!199350)))

(declare-fun b!2983866 () Bool)

(assert (=> b!2983866 (= e!1876394 e!1876390)))

(declare-fun c!490194 () Bool)

(assert (=> b!2983866 (= c!490194 (is-Union!9316 (simplify!317 r!17423)))))

(declare-fun bm!199346 () Bool)

(assert (=> bm!199346 (= call!199351 (validRegex!4049 (ite c!490194 (regOne!19145 (simplify!317 r!17423)) (regTwo!19144 (simplify!317 r!17423)))))))

(declare-fun bm!199347 () Bool)

(declare-fun call!199352 () Bool)

(assert (=> bm!199347 (= call!199352 call!199350)))

(declare-fun b!2983867 () Bool)

(assert (=> b!2983867 (= e!1876394 e!1876395)))

(declare-fun res!1230629 () Bool)

(assert (=> b!2983867 (= res!1230629 (not (nullable!2995 (reg!9645 (simplify!317 r!17423)))))))

(assert (=> b!2983867 (=> (not res!1230629) (not e!1876395))))

(declare-fun b!2983868 () Bool)

(declare-fun e!1876393 () Bool)

(assert (=> b!2983868 (= e!1876393 call!199351)))

(declare-fun b!2983869 () Bool)

(assert (=> b!2983869 (= e!1876389 call!199352)))

(declare-fun b!2983870 () Bool)

(assert (=> b!2983870 (= e!1876391 e!1876393)))

(declare-fun res!1230628 () Bool)

(assert (=> b!2983870 (=> (not res!1230628) (not e!1876393))))

(assert (=> b!2983870 (= res!1230628 call!199352)))

(declare-fun bm!199345 () Bool)

(assert (=> bm!199345 (= call!199350 (validRegex!4049 (ite c!490195 (reg!9645 (simplify!317 r!17423)) (ite c!490194 (regTwo!19145 (simplify!317 r!17423)) (regOne!19144 (simplify!317 r!17423))))))))

(declare-fun d!843876 () Bool)

(declare-fun res!1230631 () Bool)

(assert (=> d!843876 (=> res!1230631 e!1876392)))

(assert (=> d!843876 (= res!1230631 (is-ElementMatch!9316 (simplify!317 r!17423)))))

(assert (=> d!843876 (= (validRegex!4049 (simplify!317 r!17423)) e!1876392)))

(assert (= (and d!843876 (not res!1230631)) b!2983862))

(assert (= (and b!2983862 c!490195) b!2983867))

(assert (= (and b!2983862 (not c!490195)) b!2983866))

(assert (= (and b!2983867 res!1230629) b!2983865))

(assert (= (and b!2983866 c!490194) b!2983863))

(assert (= (and b!2983866 (not c!490194)) b!2983864))

(assert (= (and b!2983863 res!1230630) b!2983869))

(assert (= (and b!2983864 (not res!1230627)) b!2983870))

(assert (= (and b!2983870 res!1230628) b!2983868))

(assert (= (or b!2983863 b!2983868) bm!199346))

(assert (= (or b!2983869 b!2983870) bm!199347))

(assert (= (or b!2983865 bm!199347) bm!199345))

(declare-fun m!3343929 () Bool)

(assert (=> bm!199346 m!3343929))

(declare-fun m!3343931 () Bool)

(assert (=> b!2983867 m!3343931))

(declare-fun m!3343935 () Bool)

(assert (=> bm!199345 m!3343935))

(assert (=> b!2983278 d!843876))

(declare-fun b!2983871 () Bool)

(declare-fun e!1876403 () Regex!9316)

(assert (=> b!2983871 (= e!1876403 EmptyExpr!9316)))

(declare-fun b!2983872 () Bool)

(declare-fun e!1876397 () Regex!9316)

(assert (=> b!2983872 (= e!1876397 EmptyLang!9316)))

(declare-fun bm!199348 () Bool)

(declare-fun call!199357 () Bool)

(declare-fun call!199353 () Bool)

(assert (=> bm!199348 (= call!199357 call!199353)))

(declare-fun b!2983873 () Bool)

(declare-fun e!1876407 () Bool)

(declare-fun call!199355 () Bool)

(assert (=> b!2983873 (= e!1876407 call!199355)))

(declare-fun b!2983874 () Bool)

(declare-fun c!490202 () Bool)

(declare-fun call!199354 () Bool)

(assert (=> b!2983874 (= c!490202 call!199354)))

(declare-fun e!1876402 () Regex!9316)

(assert (=> b!2983874 (= e!1876397 e!1876402)))

(declare-fun b!2983875 () Bool)

(declare-fun e!1876408 () Regex!9316)

(assert (=> b!2983875 (= e!1876408 r!17423)))

(declare-fun b!2983876 () Bool)

(declare-fun e!1876398 () Regex!9316)

(declare-fun e!1876404 () Regex!9316)

(assert (=> b!2983876 (= e!1876398 e!1876404)))

(declare-fun lt!1039043 () Regex!9316)

(declare-fun call!199356 () Regex!9316)

(assert (=> b!2983876 (= lt!1039043 call!199356)))

(declare-fun lt!1039039 () Regex!9316)

(declare-fun call!199358 () Regex!9316)

(assert (=> b!2983876 (= lt!1039039 call!199358)))

(declare-fun c!490203 () Bool)

(assert (=> b!2983876 (= c!490203 call!199357)))

(declare-fun b!2983877 () Bool)

(declare-fun e!1876406 () Regex!9316)

(assert (=> b!2983877 (= e!1876406 lt!1039043)))

(declare-fun b!2983878 () Bool)

(assert (=> b!2983878 (= e!1876398 e!1876397)))

(declare-fun lt!1039041 () Regex!9316)

(assert (=> b!2983878 (= lt!1039041 call!199358)))

(declare-fun lt!1039038 () Regex!9316)

(assert (=> b!2983878 (= lt!1039038 call!199356)))

(declare-fun res!1230632 () Bool)

(assert (=> b!2983878 (= res!1230632 call!199357)))

(assert (=> b!2983878 (=> res!1230632 e!1876407)))

(declare-fun c!490204 () Bool)

(assert (=> b!2983878 (= c!490204 e!1876407)))

(declare-fun c!490201 () Bool)

(declare-fun lt!1039040 () Regex!9316)

(declare-fun bm!199349 () Bool)

(declare-fun c!490197 () Bool)

(assert (=> bm!199349 (= call!199353 (isEmptyLang!430 (ite c!490201 lt!1039040 (ite c!490197 lt!1039043 lt!1039041))))))

(declare-fun b!2983879 () Bool)

(declare-fun e!1876400 () Regex!9316)

(assert (=> b!2983879 (= e!1876400 (Star!9316 lt!1039040))))

(declare-fun bm!199350 () Bool)

(assert (=> bm!199350 (= call!199356 (simplify!317 (ite c!490197 (regOne!19145 r!17423) (regTwo!19144 r!17423))))))

(declare-fun b!2983880 () Bool)

(assert (=> b!2983880 (= e!1876404 lt!1039039)))

(declare-fun b!2983881 () Bool)

(declare-fun e!1876401 () Regex!9316)

(assert (=> b!2983881 (= e!1876402 e!1876401)))

(declare-fun c!490198 () Bool)

(assert (=> b!2983881 (= c!490198 (isEmptyExpr!449 lt!1039038))))

(declare-fun b!2983882 () Bool)

(assert (=> b!2983882 (= e!1876401 (Concat!14637 lt!1039041 lt!1039038))))

(declare-fun bm!199351 () Bool)

(assert (=> bm!199351 (= call!199354 (isEmptyExpr!449 (ite c!490201 lt!1039040 lt!1039041)))))

(declare-fun b!2983883 () Bool)

(assert (=> b!2983883 (= e!1876402 lt!1039038)))

(declare-fun d!843878 () Bool)

(declare-fun e!1876405 () Bool)

(assert (=> d!843878 e!1876405))

(declare-fun res!1230633 () Bool)

(assert (=> d!843878 (=> (not res!1230633) (not e!1876405))))

(declare-fun lt!1039042 () Regex!9316)

(assert (=> d!843878 (= res!1230633 (validRegex!4049 lt!1039042))))

(declare-fun e!1876409 () Regex!9316)

(assert (=> d!843878 (= lt!1039042 e!1876409)))

(declare-fun c!490206 () Bool)

(assert (=> d!843878 (= c!490206 (is-EmptyLang!9316 r!17423))))

(assert (=> d!843878 (validRegex!4049 r!17423)))

(assert (=> d!843878 (= (simplify!317 r!17423) lt!1039042)))

(declare-fun b!2983884 () Bool)

(assert (=> b!2983884 (= e!1876401 lt!1039041)))

(declare-fun b!2983885 () Bool)

(declare-fun e!1876399 () Regex!9316)

(assert (=> b!2983885 (= e!1876403 e!1876399)))

(assert (=> b!2983885 (= c!490201 (is-Star!9316 r!17423))))

(declare-fun b!2983886 () Bool)

(declare-fun c!490205 () Bool)

(assert (=> b!2983886 (= c!490205 call!199355)))

(assert (=> b!2983886 (= e!1876404 e!1876406)))

(declare-fun b!2983887 () Bool)

(declare-fun c!490200 () Bool)

(declare-fun e!1876396 () Bool)

(assert (=> b!2983887 (= c!490200 e!1876396)))

(declare-fun res!1230634 () Bool)

(assert (=> b!2983887 (=> res!1230634 e!1876396)))

(assert (=> b!2983887 (= res!1230634 call!199353)))

(declare-fun call!199359 () Regex!9316)

(assert (=> b!2983887 (= lt!1039040 call!199359)))

(assert (=> b!2983887 (= e!1876399 e!1876400)))

(declare-fun bm!199352 () Bool)

(assert (=> bm!199352 (= call!199358 call!199359)))

(declare-fun b!2983888 () Bool)

(assert (=> b!2983888 (= e!1876409 e!1876408)))

(declare-fun c!490199 () Bool)

(assert (=> b!2983888 (= c!490199 (is-ElementMatch!9316 r!17423))))

(declare-fun b!2983889 () Bool)

(assert (=> b!2983889 (= e!1876409 EmptyLang!9316)))

(declare-fun b!2983890 () Bool)

(assert (=> b!2983890 (= e!1876396 call!199354)))

(declare-fun b!2983891 () Bool)

(assert (=> b!2983891 (= e!1876405 (= (nullable!2995 lt!1039042) (nullable!2995 r!17423)))))

(declare-fun b!2983892 () Bool)

(assert (=> b!2983892 (= e!1876400 EmptyExpr!9316)))

(declare-fun bm!199353 () Bool)

(assert (=> bm!199353 (= call!199359 (simplify!317 (ite c!490201 (reg!9645 r!17423) (ite c!490197 (regTwo!19145 r!17423) (regOne!19144 r!17423)))))))

(declare-fun bm!199354 () Bool)

(assert (=> bm!199354 (= call!199355 (isEmptyLang!430 (ite c!490197 lt!1039039 lt!1039038)))))

(declare-fun b!2983893 () Bool)

(assert (=> b!2983893 (= c!490197 (is-Union!9316 r!17423))))

(assert (=> b!2983893 (= e!1876399 e!1876398)))

(declare-fun b!2983894 () Bool)

(assert (=> b!2983894 (= e!1876406 (Union!9316 lt!1039043 lt!1039039))))

(declare-fun b!2983895 () Bool)

(declare-fun c!490196 () Bool)

(assert (=> b!2983895 (= c!490196 (is-EmptyExpr!9316 r!17423))))

(assert (=> b!2983895 (= e!1876408 e!1876403)))

(assert (= (and d!843878 c!490206) b!2983889))

(assert (= (and d!843878 (not c!490206)) b!2983888))

(assert (= (and b!2983888 c!490199) b!2983875))

(assert (= (and b!2983888 (not c!490199)) b!2983895))

(assert (= (and b!2983895 c!490196) b!2983871))

(assert (= (and b!2983895 (not c!490196)) b!2983885))

(assert (= (and b!2983885 c!490201) b!2983887))

(assert (= (and b!2983885 (not c!490201)) b!2983893))

(assert (= (and b!2983887 (not res!1230634)) b!2983890))

(assert (= (and b!2983887 c!490200) b!2983892))

(assert (= (and b!2983887 (not c!490200)) b!2983879))

(assert (= (and b!2983893 c!490197) b!2983876))

(assert (= (and b!2983893 (not c!490197)) b!2983878))

(assert (= (and b!2983876 c!490203) b!2983880))

(assert (= (and b!2983876 (not c!490203)) b!2983886))

(assert (= (and b!2983886 c!490205) b!2983877))

(assert (= (and b!2983886 (not c!490205)) b!2983894))

(assert (= (and b!2983878 (not res!1230632)) b!2983873))

(assert (= (and b!2983878 c!490204) b!2983872))

(assert (= (and b!2983878 (not c!490204)) b!2983874))

(assert (= (and b!2983874 c!490202) b!2983883))

(assert (= (and b!2983874 (not c!490202)) b!2983881))

(assert (= (and b!2983881 c!490198) b!2983884))

(assert (= (and b!2983881 (not c!490198)) b!2983882))

(assert (= (or b!2983876 b!2983878) bm!199350))

(assert (= (or b!2983876 b!2983878) bm!199352))

(assert (= (or b!2983886 b!2983873) bm!199354))

(assert (= (or b!2983876 b!2983878) bm!199348))

(assert (= (or b!2983890 b!2983874) bm!199351))

(assert (= (or b!2983887 bm!199352) bm!199353))

(assert (= (or b!2983887 bm!199348) bm!199349))

(assert (= (and d!843878 res!1230633) b!2983891))

(declare-fun m!3343949 () Bool)

(assert (=> d!843878 m!3343949))

(assert (=> d!843878 m!3343615))

(declare-fun m!3343951 () Bool)

(assert (=> b!2983891 m!3343951))

(assert (=> b!2983891 m!3343883))

(declare-fun m!3343953 () Bool)

(assert (=> bm!199354 m!3343953))

(declare-fun m!3343955 () Bool)

(assert (=> bm!199351 m!3343955))

(declare-fun m!3343957 () Bool)

(assert (=> b!2983881 m!3343957))

(declare-fun m!3343959 () Bool)

(assert (=> bm!199349 m!3343959))

(declare-fun m!3343961 () Bool)

(assert (=> bm!199353 m!3343961))

(declare-fun m!3343963 () Bool)

(assert (=> bm!199350 m!3343963))

(assert (=> b!2983278 d!843878))

(declare-fun b!2983912 () Bool)

(declare-fun e!1876420 () Bool)

(declare-fun e!1876421 () Bool)

(assert (=> b!2983912 (= e!1876420 e!1876421)))

(declare-fun res!1230647 () Bool)

(assert (=> b!2983912 (=> (not res!1230647) (not e!1876421))))

(declare-fun lt!1039046 () Bool)

(assert (=> b!2983912 (= res!1230647 (not lt!1039046))))

(declare-fun b!2983913 () Bool)

(declare-fun res!1230648 () Bool)

(assert (=> b!2983913 (=> res!1230648 e!1876420)))

(declare-fun e!1876424 () Bool)

(assert (=> b!2983913 (= res!1230648 e!1876424)))

(declare-fun res!1230650 () Bool)

(assert (=> b!2983913 (=> (not res!1230650) (not e!1876424))))

(assert (=> b!2983913 (= res!1230650 lt!1039046)))

(declare-fun b!2983914 () Bool)

(declare-fun e!1876423 () Bool)

(assert (=> b!2983914 (= e!1876423 (matchR!4198 (derivativeStep!2595 lt!1038875 (head!6654 (_2!20117 lt!1038885))) (tail!4880 (_2!20117 lt!1038885))))))

(declare-fun b!2983915 () Bool)

(declare-fun e!1876418 () Bool)

(declare-fun call!199361 () Bool)

(assert (=> b!2983915 (= e!1876418 (= lt!1039046 call!199361))))

(declare-fun b!2983916 () Bool)

(declare-fun res!1230646 () Bool)

(assert (=> b!2983916 (=> (not res!1230646) (not e!1876424))))

(assert (=> b!2983916 (= res!1230646 (not call!199361))))

(declare-fun b!2983917 () Bool)

(assert (=> b!2983917 (= e!1876423 (nullable!2995 lt!1038875))))

(declare-fun b!2983918 () Bool)

(declare-fun e!1876422 () Bool)

(assert (=> b!2983918 (= e!1876422 (not (= (head!6654 (_2!20117 lt!1038885)) (c!490039 lt!1038875))))))

(declare-fun b!2983919 () Bool)

(declare-fun res!1230649 () Bool)

(assert (=> b!2983919 (=> res!1230649 e!1876422)))

(assert (=> b!2983919 (= res!1230649 (not (isEmpty!19318 (tail!4880 (_2!20117 lt!1038885)))))))

(declare-fun b!2983920 () Bool)

(declare-fun res!1230645 () Bool)

(assert (=> b!2983920 (=> (not res!1230645) (not e!1876424))))

(assert (=> b!2983920 (= res!1230645 (isEmpty!19318 (tail!4880 (_2!20117 lt!1038885))))))

(declare-fun d!843884 () Bool)

(assert (=> d!843884 e!1876418))

(declare-fun c!490212 () Bool)

(assert (=> d!843884 (= c!490212 (is-EmptyExpr!9316 lt!1038875))))

(assert (=> d!843884 (= lt!1039046 e!1876423)))

(declare-fun c!490213 () Bool)

(assert (=> d!843884 (= c!490213 (isEmpty!19318 (_2!20117 lt!1038885)))))

(assert (=> d!843884 (validRegex!4049 lt!1038875)))

(assert (=> d!843884 (= (matchR!4198 lt!1038875 (_2!20117 lt!1038885)) lt!1039046)))

(declare-fun b!2983921 () Bool)

(declare-fun e!1876419 () Bool)

(assert (=> b!2983921 (= e!1876419 (not lt!1039046))))

(declare-fun bm!199356 () Bool)

(assert (=> bm!199356 (= call!199361 (isEmpty!19318 (_2!20117 lt!1038885)))))

(declare-fun b!2983922 () Bool)

(assert (=> b!2983922 (= e!1876418 e!1876419)))

(declare-fun c!490211 () Bool)

(assert (=> b!2983922 (= c!490211 (is-EmptyLang!9316 lt!1038875))))

(declare-fun b!2983923 () Bool)

(assert (=> b!2983923 (= e!1876424 (= (head!6654 (_2!20117 lt!1038885)) (c!490039 lt!1038875)))))

(declare-fun b!2983924 () Bool)

(declare-fun res!1230644 () Bool)

(assert (=> b!2983924 (=> res!1230644 e!1876420)))

(assert (=> b!2983924 (= res!1230644 (not (is-ElementMatch!9316 lt!1038875)))))

(assert (=> b!2983924 (= e!1876419 e!1876420)))

(declare-fun b!2983925 () Bool)

(assert (=> b!2983925 (= e!1876421 e!1876422)))

(declare-fun res!1230643 () Bool)

(assert (=> b!2983925 (=> res!1230643 e!1876422)))

(assert (=> b!2983925 (= res!1230643 call!199361)))

(assert (= (and d!843884 c!490213) b!2983917))

(assert (= (and d!843884 (not c!490213)) b!2983914))

(assert (= (and d!843884 c!490212) b!2983915))

(assert (= (and d!843884 (not c!490212)) b!2983922))

(assert (= (and b!2983922 c!490211) b!2983921))

(assert (= (and b!2983922 (not c!490211)) b!2983924))

(assert (= (and b!2983924 (not res!1230644)) b!2983913))

(assert (= (and b!2983913 res!1230650) b!2983916))

(assert (= (and b!2983916 res!1230646) b!2983920))

(assert (= (and b!2983920 res!1230645) b!2983923))

(assert (= (and b!2983913 (not res!1230648)) b!2983912))

(assert (= (and b!2983912 res!1230647) b!2983925))

(assert (= (and b!2983925 (not res!1230643)) b!2983919))

(assert (= (and b!2983919 (not res!1230649)) b!2983918))

(assert (= (or b!2983915 b!2983916 b!2983925) bm!199356))

(assert (=> b!2983918 m!3343807))

(assert (=> b!2983920 m!3343809))

(assert (=> b!2983920 m!3343809))

(assert (=> b!2983920 m!3343811))

(assert (=> b!2983914 m!3343807))

(assert (=> b!2983914 m!3343807))

(declare-fun m!3343965 () Bool)

(assert (=> b!2983914 m!3343965))

(assert (=> b!2983914 m!3343809))

(assert (=> b!2983914 m!3343965))

(assert (=> b!2983914 m!3343809))

(declare-fun m!3343967 () Bool)

(assert (=> b!2983914 m!3343967))

(assert (=> bm!199356 m!3343817))

(assert (=> d!843884 m!3343817))

(assert (=> d!843884 m!3343849))

(assert (=> b!2983919 m!3343809))

(assert (=> b!2983919 m!3343809))

(assert (=> b!2983919 m!3343811))

(assert (=> b!2983923 m!3343807))

(assert (=> b!2983917 m!3343851))

(assert (=> b!2983279 d!843884))

(declare-fun b!2983926 () Bool)

(declare-fun e!1876428 () Bool)

(declare-fun e!1876430 () Bool)

(assert (=> b!2983926 (= e!1876428 e!1876430)))

(declare-fun c!490215 () Bool)

(assert (=> b!2983926 (= c!490215 (is-Star!9316 r!17423))))

(declare-fun b!2983927 () Bool)

(declare-fun res!1230654 () Bool)

(declare-fun e!1876425 () Bool)

(assert (=> b!2983927 (=> (not res!1230654) (not e!1876425))))

(declare-fun call!199363 () Bool)

(assert (=> b!2983927 (= res!1230654 call!199363)))

(declare-fun e!1876426 () Bool)

(assert (=> b!2983927 (= e!1876426 e!1876425)))

(declare-fun b!2983928 () Bool)

(declare-fun res!1230651 () Bool)

(declare-fun e!1876427 () Bool)

(assert (=> b!2983928 (=> res!1230651 e!1876427)))

(assert (=> b!2983928 (= res!1230651 (not (is-Concat!14637 r!17423)))))

(assert (=> b!2983928 (= e!1876426 e!1876427)))

(declare-fun b!2983929 () Bool)

(declare-fun e!1876431 () Bool)

(declare-fun call!199362 () Bool)

(assert (=> b!2983929 (= e!1876431 call!199362)))

(declare-fun b!2983930 () Bool)

(assert (=> b!2983930 (= e!1876430 e!1876426)))

(declare-fun c!490214 () Bool)

(assert (=> b!2983930 (= c!490214 (is-Union!9316 r!17423))))

(declare-fun bm!199358 () Bool)

(assert (=> bm!199358 (= call!199363 (validRegex!4049 (ite c!490214 (regOne!19145 r!17423) (regTwo!19144 r!17423))))))

(declare-fun bm!199359 () Bool)

(declare-fun call!199364 () Bool)

(assert (=> bm!199359 (= call!199364 call!199362)))

(declare-fun b!2983931 () Bool)

(assert (=> b!2983931 (= e!1876430 e!1876431)))

(declare-fun res!1230653 () Bool)

(assert (=> b!2983931 (= res!1230653 (not (nullable!2995 (reg!9645 r!17423))))))

(assert (=> b!2983931 (=> (not res!1230653) (not e!1876431))))

(declare-fun b!2983932 () Bool)

(declare-fun e!1876429 () Bool)

(assert (=> b!2983932 (= e!1876429 call!199363)))

(declare-fun b!2983933 () Bool)

(assert (=> b!2983933 (= e!1876425 call!199364)))

(declare-fun b!2983934 () Bool)

(assert (=> b!2983934 (= e!1876427 e!1876429)))

(declare-fun res!1230652 () Bool)

(assert (=> b!2983934 (=> (not res!1230652) (not e!1876429))))

(assert (=> b!2983934 (= res!1230652 call!199364)))

(declare-fun bm!199357 () Bool)

(assert (=> bm!199357 (= call!199362 (validRegex!4049 (ite c!490215 (reg!9645 r!17423) (ite c!490214 (regTwo!19145 r!17423) (regOne!19144 r!17423)))))))

(declare-fun d!843886 () Bool)

(declare-fun res!1230655 () Bool)

(assert (=> d!843886 (=> res!1230655 e!1876428)))

(assert (=> d!843886 (= res!1230655 (is-ElementMatch!9316 r!17423))))

(assert (=> d!843886 (= (validRegex!4049 r!17423) e!1876428)))

(assert (= (and d!843886 (not res!1230655)) b!2983926))

(assert (= (and b!2983926 c!490215) b!2983931))

(assert (= (and b!2983926 (not c!490215)) b!2983930))

(assert (= (and b!2983931 res!1230653) b!2983929))

(assert (= (and b!2983930 c!490214) b!2983927))

(assert (= (and b!2983930 (not c!490214)) b!2983928))

(assert (= (and b!2983927 res!1230654) b!2983933))

(assert (= (and b!2983928 (not res!1230651)) b!2983934))

(assert (= (and b!2983934 res!1230652) b!2983932))

(assert (= (or b!2983927 b!2983932) bm!199358))

(assert (= (or b!2983933 b!2983934) bm!199359))

(assert (= (or b!2983929 bm!199359) bm!199357))

(declare-fun m!3343973 () Bool)

(assert (=> bm!199358 m!3343973))

(assert (=> b!2983931 m!3343691))

(declare-fun m!3343975 () Bool)

(assert (=> bm!199357 m!3343975))

(assert (=> start!288250 d!843886))

(declare-fun d!843888 () Bool)

(assert (=> d!843888 (= (isEmpty!19318 s!11993) (is-Nil!35057 s!11993))))

(assert (=> b!2983290 d!843888))

(declare-fun bs!527312 () Bool)

(declare-fun b!2983959 () Bool)

(assert (= bs!527312 (and b!2983959 d!843830)))

(declare-fun lambda!111364 () Int)

(assert (=> bs!527312 (not (= lambda!111364 lambda!111356))))

(declare-fun bs!527313 () Bool)

(assert (= bs!527313 (and b!2983959 b!2983792)))

(assert (=> bs!527313 (not (= lambda!111364 lambda!111363))))

(declare-fun bs!527314 () Bool)

(assert (= bs!527314 (and b!2983959 b!2983285)))

(assert (=> bs!527314 (not (= lambda!111364 lambda!111339))))

(assert (=> bs!527312 (= (and (= (reg!9645 lt!1038875) lt!1038878) (= lt!1038875 (Star!9316 lt!1038878))) (= lambda!111364 lambda!111357))))

(declare-fun bs!527315 () Bool)

(assert (= bs!527315 (and b!2983959 b!2983793)))

(assert (=> bs!527315 (= (and (= (reg!9645 lt!1038875) (reg!9645 r!17423)) (= lt!1038875 r!17423)) (= lambda!111364 lambda!111362))))

(assert (=> bs!527314 (= (= (reg!9645 lt!1038875) lt!1038878) (= lambda!111364 lambda!111340))))

(declare-fun bs!527316 () Bool)

(assert (= bs!527316 (and b!2983959 d!843826)))

(assert (=> bs!527316 (not (= lambda!111364 lambda!111351))))

(assert (=> b!2983959 true))

(assert (=> b!2983959 true))

(declare-fun bs!527317 () Bool)

(declare-fun b!2983958 () Bool)

(assert (= bs!527317 (and b!2983958 d!843830)))

(declare-fun lambda!111365 () Int)

(assert (=> bs!527317 (not (= lambda!111365 lambda!111356))))

(declare-fun bs!527318 () Bool)

(assert (= bs!527318 (and b!2983958 b!2983792)))

(assert (=> bs!527318 (= (and (= (regOne!19144 lt!1038875) (regOne!19144 r!17423)) (= (regTwo!19144 lt!1038875) (regTwo!19144 r!17423))) (= lambda!111365 lambda!111363))))

(declare-fun bs!527319 () Bool)

(assert (= bs!527319 (and b!2983958 b!2983285)))

(assert (=> bs!527319 (not (= lambda!111365 lambda!111339))))

(declare-fun bs!527320 () Bool)

(assert (= bs!527320 (and b!2983958 b!2983959)))

(assert (=> bs!527320 (not (= lambda!111365 lambda!111364))))

(assert (=> bs!527317 (not (= lambda!111365 lambda!111357))))

(declare-fun bs!527321 () Bool)

(assert (= bs!527321 (and b!2983958 b!2983793)))

(assert (=> bs!527321 (not (= lambda!111365 lambda!111362))))

(assert (=> bs!527319 (not (= lambda!111365 lambda!111340))))

(declare-fun bs!527322 () Bool)

(assert (= bs!527322 (and b!2983958 d!843826)))

(assert (=> bs!527322 (not (= lambda!111365 lambda!111351))))

(assert (=> b!2983958 true))

(assert (=> b!2983958 true))

(declare-fun d!843892 () Bool)

(declare-fun c!490221 () Bool)

(assert (=> d!843892 (= c!490221 (is-EmptyExpr!9316 lt!1038875))))

(declare-fun e!1876439 () Bool)

(assert (=> d!843892 (= (matchRSpec!1453 lt!1038875 s!11993) e!1876439)))

(declare-fun b!2983949 () Bool)

(declare-fun e!1876442 () Bool)

(assert (=> b!2983949 (= e!1876442 (matchRSpec!1453 (regTwo!19145 lt!1038875) s!11993))))

(declare-fun b!2983950 () Bool)

(declare-fun e!1876443 () Bool)

(assert (=> b!2983950 (= e!1876443 (= s!11993 (Cons!35057 (c!490039 lt!1038875) Nil!35057)))))

(declare-fun b!2983951 () Bool)

(declare-fun c!490219 () Bool)

(assert (=> b!2983951 (= c!490219 (is-ElementMatch!9316 lt!1038875))))

(declare-fun e!1876444 () Bool)

(assert (=> b!2983951 (= e!1876444 e!1876443)))

(declare-fun b!2983952 () Bool)

(declare-fun e!1876445 () Bool)

(declare-fun e!1876441 () Bool)

(assert (=> b!2983952 (= e!1876445 e!1876441)))

(declare-fun c!490222 () Bool)

(assert (=> b!2983952 (= c!490222 (is-Star!9316 lt!1038875))))

(declare-fun b!2983953 () Bool)

(declare-fun c!490220 () Bool)

(assert (=> b!2983953 (= c!490220 (is-Union!9316 lt!1038875))))

(assert (=> b!2983953 (= e!1876443 e!1876445)))

(declare-fun b!2983954 () Bool)

(declare-fun res!1230665 () Bool)

(declare-fun e!1876440 () Bool)

(assert (=> b!2983954 (=> res!1230665 e!1876440)))

(declare-fun call!199367 () Bool)

(assert (=> b!2983954 (= res!1230665 call!199367)))

(assert (=> b!2983954 (= e!1876441 e!1876440)))

(declare-fun bm!199361 () Bool)

(assert (=> bm!199361 (= call!199367 (isEmpty!19318 s!11993))))

(declare-fun b!2983955 () Bool)

(assert (=> b!2983955 (= e!1876445 e!1876442)))

(declare-fun res!1230666 () Bool)

(assert (=> b!2983955 (= res!1230666 (matchRSpec!1453 (regOne!19145 lt!1038875) s!11993))))

(assert (=> b!2983955 (=> res!1230666 e!1876442)))

(declare-fun b!2983956 () Bool)

(assert (=> b!2983956 (= e!1876439 e!1876444)))

(declare-fun res!1230664 () Bool)

(assert (=> b!2983956 (= res!1230664 (not (is-EmptyLang!9316 lt!1038875)))))

(assert (=> b!2983956 (=> (not res!1230664) (not e!1876444))))

(declare-fun b!2983957 () Bool)

(assert (=> b!2983957 (= e!1876439 call!199367)))

(declare-fun call!199366 () Bool)

(assert (=> b!2983958 (= e!1876441 call!199366)))

(assert (=> b!2983959 (= e!1876440 call!199366)))

(declare-fun bm!199362 () Bool)

(assert (=> bm!199362 (= call!199366 (Exists!1596 (ite c!490222 lambda!111364 lambda!111365)))))

(assert (= (and d!843892 c!490221) b!2983957))

(assert (= (and d!843892 (not c!490221)) b!2983956))

(assert (= (and b!2983956 res!1230664) b!2983951))

(assert (= (and b!2983951 c!490219) b!2983950))

(assert (= (and b!2983951 (not c!490219)) b!2983953))

(assert (= (and b!2983953 c!490220) b!2983955))

(assert (= (and b!2983953 (not c!490220)) b!2983952))

(assert (= (and b!2983955 (not res!1230666)) b!2983949))

(assert (= (and b!2983952 c!490222) b!2983954))

(assert (= (and b!2983952 (not c!490222)) b!2983958))

(assert (= (and b!2983954 (not res!1230665)) b!2983959))

(assert (= (or b!2983959 b!2983958) bm!199362))

(assert (= (or b!2983957 b!2983954) bm!199361))

(declare-fun m!3343985 () Bool)

(assert (=> b!2983949 m!3343985))

(assert (=> bm!199361 m!3343601))

(declare-fun m!3343987 () Bool)

(assert (=> b!2983955 m!3343987))

(declare-fun m!3343989 () Bool)

(assert (=> bm!199362 m!3343989))

(assert (=> b!2983290 d!843892))

(declare-fun d!843896 () Bool)

(assert (=> d!843896 (= (matchR!4198 lt!1038875 s!11993) (matchRSpec!1453 lt!1038875 s!11993))))

(declare-fun lt!1039049 () Unit!49031)

(assert (=> d!843896 (= lt!1039049 (choose!17680 lt!1038875 s!11993))))

(assert (=> d!843896 (validRegex!4049 lt!1038875)))

(assert (=> d!843896 (= (mainMatchTheorem!1453 lt!1038875 s!11993) lt!1039049)))

(declare-fun bs!527323 () Bool)

(assert (= bs!527323 d!843896))

(assert (=> bs!527323 m!3343583))

(assert (=> bs!527323 m!3343603))

(declare-fun m!3343991 () Bool)

(assert (=> bs!527323 m!3343991))

(assert (=> bs!527323 m!3343849))

(assert (=> b!2983290 d!843896))

(declare-fun b!2983985 () Bool)

(declare-fun e!1876455 () Bool)

(declare-fun tp!949502 () Bool)

(declare-fun tp!949500 () Bool)

(assert (=> b!2983985 (= e!1876455 (and tp!949502 tp!949500))))

(declare-fun b!2983986 () Bool)

(declare-fun tp!949503 () Bool)

(assert (=> b!2983986 (= e!1876455 tp!949503)))

(assert (=> b!2983280 (= tp!949470 e!1876455)))

(declare-fun b!2983987 () Bool)

(declare-fun tp!949504 () Bool)

(declare-fun tp!949501 () Bool)

(assert (=> b!2983987 (= e!1876455 (and tp!949504 tp!949501))))

(declare-fun b!2983984 () Bool)

(assert (=> b!2983984 (= e!1876455 tp_is_empty!16195)))

(assert (= (and b!2983280 (is-ElementMatch!9316 (regOne!19145 r!17423))) b!2983984))

(assert (= (and b!2983280 (is-Concat!14637 (regOne!19145 r!17423))) b!2983985))

(assert (= (and b!2983280 (is-Star!9316 (regOne!19145 r!17423))) b!2983986))

(assert (= (and b!2983280 (is-Union!9316 (regOne!19145 r!17423))) b!2983987))

(declare-fun b!2983989 () Bool)

(declare-fun e!1876456 () Bool)

(declare-fun tp!949507 () Bool)

(declare-fun tp!949505 () Bool)

(assert (=> b!2983989 (= e!1876456 (and tp!949507 tp!949505))))

(declare-fun b!2983990 () Bool)

(declare-fun tp!949508 () Bool)

(assert (=> b!2983990 (= e!1876456 tp!949508)))

(assert (=> b!2983280 (= tp!949467 e!1876456)))

(declare-fun b!2983991 () Bool)

(declare-fun tp!949509 () Bool)

(declare-fun tp!949506 () Bool)

(assert (=> b!2983991 (= e!1876456 (and tp!949509 tp!949506))))

(declare-fun b!2983988 () Bool)

(assert (=> b!2983988 (= e!1876456 tp_is_empty!16195)))

(assert (= (and b!2983280 (is-ElementMatch!9316 (regTwo!19145 r!17423))) b!2983988))

(assert (= (and b!2983280 (is-Concat!14637 (regTwo!19145 r!17423))) b!2983989))

(assert (= (and b!2983280 (is-Star!9316 (regTwo!19145 r!17423))) b!2983990))

(assert (= (and b!2983280 (is-Union!9316 (regTwo!19145 r!17423))) b!2983991))

(declare-fun b!2983993 () Bool)

(declare-fun e!1876457 () Bool)

(declare-fun tp!949512 () Bool)

(declare-fun tp!949510 () Bool)

(assert (=> b!2983993 (= e!1876457 (and tp!949512 tp!949510))))

(declare-fun b!2983994 () Bool)

(declare-fun tp!949513 () Bool)

(assert (=> b!2983994 (= e!1876457 tp!949513)))

(assert (=> b!2983283 (= tp!949468 e!1876457)))

(declare-fun b!2983995 () Bool)

(declare-fun tp!949514 () Bool)

(declare-fun tp!949511 () Bool)

(assert (=> b!2983995 (= e!1876457 (and tp!949514 tp!949511))))

(declare-fun b!2983992 () Bool)

(assert (=> b!2983992 (= e!1876457 tp_is_empty!16195)))

(assert (= (and b!2983283 (is-ElementMatch!9316 (regOne!19144 r!17423))) b!2983992))

(assert (= (and b!2983283 (is-Concat!14637 (regOne!19144 r!17423))) b!2983993))

(assert (= (and b!2983283 (is-Star!9316 (regOne!19144 r!17423))) b!2983994))

(assert (= (and b!2983283 (is-Union!9316 (regOne!19144 r!17423))) b!2983995))

(declare-fun b!2983997 () Bool)

(declare-fun e!1876458 () Bool)

(declare-fun tp!949517 () Bool)

(declare-fun tp!949515 () Bool)

(assert (=> b!2983997 (= e!1876458 (and tp!949517 tp!949515))))

(declare-fun b!2983998 () Bool)

(declare-fun tp!949518 () Bool)

(assert (=> b!2983998 (= e!1876458 tp!949518)))

(assert (=> b!2983283 (= tp!949469 e!1876458)))

(declare-fun b!2983999 () Bool)

(declare-fun tp!949519 () Bool)

(declare-fun tp!949516 () Bool)

(assert (=> b!2983999 (= e!1876458 (and tp!949519 tp!949516))))

(declare-fun b!2983996 () Bool)

(assert (=> b!2983996 (= e!1876458 tp_is_empty!16195)))

(assert (= (and b!2983283 (is-ElementMatch!9316 (regTwo!19144 r!17423))) b!2983996))

(assert (= (and b!2983283 (is-Concat!14637 (regTwo!19144 r!17423))) b!2983997))

(assert (= (and b!2983283 (is-Star!9316 (regTwo!19144 r!17423))) b!2983998))

(assert (= (and b!2983283 (is-Union!9316 (regTwo!19144 r!17423))) b!2983999))

(declare-fun b!2984004 () Bool)

(declare-fun e!1876461 () Bool)

(declare-fun tp!949522 () Bool)

(assert (=> b!2984004 (= e!1876461 (and tp_is_empty!16195 tp!949522))))

(assert (=> b!2983288 (= tp!949466 e!1876461)))

(assert (= (and b!2983288 (is-Cons!35057 (t!234246 s!11993))) b!2984004))

(declare-fun b!2984006 () Bool)

(declare-fun e!1876462 () Bool)

(declare-fun tp!949525 () Bool)

(declare-fun tp!949523 () Bool)

(assert (=> b!2984006 (= e!1876462 (and tp!949525 tp!949523))))

(declare-fun b!2984007 () Bool)

(declare-fun tp!949526 () Bool)

(assert (=> b!2984007 (= e!1876462 tp!949526)))

(assert (=> b!2983284 (= tp!949471 e!1876462)))

(declare-fun b!2984008 () Bool)

(declare-fun tp!949527 () Bool)

(declare-fun tp!949524 () Bool)

(assert (=> b!2984008 (= e!1876462 (and tp!949527 tp!949524))))

(declare-fun b!2984005 () Bool)

(assert (=> b!2984005 (= e!1876462 tp_is_empty!16195)))

(assert (= (and b!2983284 (is-ElementMatch!9316 (reg!9645 r!17423))) b!2984005))

(assert (= (and b!2983284 (is-Concat!14637 (reg!9645 r!17423))) b!2984006))

(assert (= (and b!2983284 (is-Star!9316 (reg!9645 r!17423))) b!2984007))

(assert (= (and b!2983284 (is-Union!9316 (reg!9645 r!17423))) b!2984008))

(push 1)

(assert (not b!2983720))

(assert (not b!2983676))

(assert (not b!2983816))

(assert (not b!2983832))

(assert (not b!2983891))

(assert (not bm!199353))

(assert (not bm!199345))

(assert (not bm!199354))

(assert tp_is_empty!16195)

(assert (not b!2983682))

(assert (not d!843860))

(assert (not b!2983990))

(assert (not bm!199284))

(assert (not b!2983789))

(assert (not d!843868))

(assert (not b!2983509))

(assert (not b!2983987))

(assert (not d!843850))

(assert (not b!2983810))

(assert (not b!2983678))

(assert (not d!843830))

(assert (not b!2983854))

(assert (not b!2983955))

(assert (not b!2983636))

(assert (not d!843864))

(assert (not b!2984007))

(assert (not b!2983711))

(assert (not b!2983855))

(assert (not bm!199329))

(assert (not bm!199358))

(assert (not bm!199332))

(assert (not b!2983831))

(assert (not b!2983635))

(assert (not b!2983997))

(assert (not b!2983581))

(assert (not d!843878))

(assert (not b!2983500))

(assert (not bm!199362))

(assert (not d!843840))

(assert (not b!2983783))

(assert (not b!2983931))

(assert (not b!2983579))

(assert (not bm!199325))

(assert (not b!2983466))

(assert (not b!2983998))

(assert (not bm!199330))

(assert (not b!2983692))

(assert (not d!843866))

(assert (not b!2983701))

(assert (not bm!199342))

(assert (not b!2983503))

(assert (not d!843844))

(assert (not b!2983715))

(assert (not b!2983949))

(assert (not b!2983673))

(assert (not b!2983867))

(assert (not d!843838))

(assert (not b!2983994))

(assert (not b!2983985))

(assert (not d!843848))

(assert (not bm!199351))

(assert (not b!2983993))

(assert (not d!843884))

(assert (not bm!199346))

(assert (not b!2984008))

(assert (not b!2983505))

(assert (not b!2983679))

(assert (not d!843874))

(assert (not d!843854))

(assert (not b!2983923))

(assert (not b!2983634))

(assert (not b!2983717))

(assert (not d!843822))

(assert (not d!843818))

(assert (not b!2984006))

(assert (not bm!199324))

(assert (not b!2983708))

(assert (not bm!199350))

(assert (not bm!199357))

(assert (not bm!199283))

(assert (not b!2983586))

(assert (not b!2983677))

(assert (not b!2983991))

(assert (not bm!199356))

(assert (not bm!199295))

(assert (not b!2983919))

(assert (not b!2983853))

(assert (not b!2983813))

(assert (not b!2983438))

(assert (not bm!199296))

(assert (not bm!199339))

(assert (not bm!199287))

(assert (not bm!199349))

(assert (not b!2983630))

(assert (not b!2983856))

(assert (not d!843824))

(assert (not b!2983698))

(assert (not b!2983699))

(assert (not b!2983814))

(assert (not b!2983639))

(assert (not b!2983914))

(assert (not b!2983700))

(assert (not b!2983881))

(assert (not bm!199344))

(assert (not bm!199322))

(assert (not d!843828))

(assert (not b!2983704))

(assert (not bm!199285))

(assert (not b!2983695))

(assert (not b!2983850))

(assert (not bm!199340))

(assert (not b!2983716))

(assert (not d!843856))

(assert (not d!843812))

(assert (not d!843896))

(assert (not b!2983819))

(assert (not b!2983428))

(assert (not b!2983999))

(assert (not b!2983666))

(assert (not bm!199328))

(assert (not d!843826))

(assert (not b!2983918))

(assert (not d!843836))

(assert (not bm!199361))

(assert (not b!2983656))

(assert (not d!843834))

(assert (not bm!199331))

(assert (not b!2983815))

(assert (not b!2983917))

(assert (not b!2984004))

(assert (not b!2983920))

(assert (not b!2983506))

(assert (not bm!199288))

(assert (not bm!199326))

(assert (not b!2983859))

(assert (not b!2983995))

(assert (not b!2983986))

(assert (not b!2983584))

(assert (not b!2983714))

(assert (not b!2983633))

(assert (not b!2983580))

(assert (not b!2983504))

(assert (not bm!199300))

(assert (not b!2983989))

(assert (not b!2983583))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

