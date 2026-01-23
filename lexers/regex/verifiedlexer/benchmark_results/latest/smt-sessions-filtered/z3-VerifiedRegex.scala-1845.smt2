; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91798 () Bool)

(assert start!91798)

(declare-fun b!1074315 () Bool)

(assert (=> b!1074315 true))

(assert (=> b!1074315 true))

(assert (=> b!1074315 true))

(declare-fun lambda!39000 () Int)

(declare-fun lambda!38999 () Int)

(assert (=> b!1074315 (not (= lambda!39000 lambda!38999))))

(assert (=> b!1074315 true))

(assert (=> b!1074315 true))

(assert (=> b!1074315 true))

(declare-fun bs!254039 () Bool)

(declare-fun b!1074324 () Bool)

(assert (= bs!254039 (and b!1074324 b!1074315)))

(declare-datatypes ((C!6468 0))(
  ( (C!6469 (val!3482 Int)) )
))
(declare-datatypes ((Regex!2949 0))(
  ( (ElementMatch!2949 (c!180726 C!6468)) (Concat!4782 (regOne!6410 Regex!2949) (regTwo!6410 Regex!2949)) (EmptyExpr!2949) (Star!2949 (reg!3278 Regex!2949)) (EmptyLang!2949) (Union!2949 (regOne!6411 Regex!2949) (regTwo!6411 Regex!2949)) )
))
(declare-fun lt!361484 () Regex!2949)

(declare-fun lt!361476 () Regex!2949)

(declare-fun lambda!39001 () Int)

(declare-fun lt!361474 () Regex!2949)

(declare-fun r!15766 () Regex!2949)

(assert (=> bs!254039 (= (and (= lt!361476 (reg!3278 r!15766)) (= lt!361474 lt!361484)) (= lambda!39001 lambda!38999))))

(assert (=> bs!254039 (not (= lambda!39001 lambda!39000))))

(assert (=> b!1074324 true))

(assert (=> b!1074324 true))

(assert (=> b!1074324 true))

(declare-fun lambda!39002 () Int)

(assert (=> bs!254039 (not (= lambda!39002 lambda!38999))))

(assert (=> bs!254039 (= (and (= lt!361476 (reg!3278 r!15766)) (= lt!361474 lt!361484)) (= lambda!39002 lambda!39000))))

(assert (=> b!1074324 (not (= lambda!39002 lambda!39001))))

(assert (=> b!1074324 true))

(assert (=> b!1074324 true))

(assert (=> b!1074324 true))

(declare-fun b!1074313 () Bool)

(declare-fun e!680321 () Bool)

(declare-fun e!680319 () Bool)

(assert (=> b!1074313 (= e!680321 e!680319)))

(declare-fun res!479025 () Bool)

(assert (=> b!1074313 (=> res!479025 e!680319)))

(declare-fun lt!361478 () Int)

(declare-fun lt!361470 () Int)

(declare-fun lt!361475 () Int)

(assert (=> b!1074313 (= res!479025 (or (not (= (+ lt!361478 lt!361470) lt!361475)) (not (= lt!361478 0))))))

(declare-datatypes ((List!10179 0))(
  ( (Nil!10163) (Cons!10163 (h!15564 C!6468) (t!101225 List!10179)) )
))
(declare-datatypes ((tuple2!11612 0))(
  ( (tuple2!11613 (_1!6632 List!10179) (_2!6632 List!10179)) )
))
(declare-fun lt!361481 () tuple2!11612)

(declare-fun size!8008 (List!10179) Int)

(assert (=> b!1074313 (= lt!361478 (size!8008 (_1!6632 lt!361481)))))

(declare-fun b!1074314 () Bool)

(declare-fun res!479023 () Bool)

(declare-fun e!680318 () Bool)

(assert (=> b!1074314 (=> res!479023 e!680318)))

(declare-fun matchR!1485 (Regex!2949 List!10179) Bool)

(assert (=> b!1074314 (= res!479023 (not (matchR!1485 lt!361474 (_2!6632 lt!361481))))))

(declare-fun e!680317 () Bool)

(declare-fun e!680320 () Bool)

(assert (=> b!1074315 (= e!680317 e!680320)))

(declare-fun res!479027 () Bool)

(assert (=> b!1074315 (=> res!479027 e!680320)))

(declare-fun s!10566 () List!10179)

(assert (=> b!1074315 (= res!479027 (not (matchR!1485 lt!361474 s!10566)))))

(assert (=> b!1074315 (= lt!361474 (Star!2949 lt!361476))))

(declare-fun removeUselessConcat!490 (Regex!2949) Regex!2949)

(assert (=> b!1074315 (= lt!361476 (removeUselessConcat!490 (reg!3278 r!15766)))))

(declare-fun Exists!672 (Int) Bool)

(assert (=> b!1074315 (= (Exists!672 lambda!38999) (Exists!672 lambda!39000))))

(declare-datatypes ((Unit!15573 0))(
  ( (Unit!15574) )
))
(declare-fun lt!361471 () Unit!15573)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!190 (Regex!2949 List!10179) Unit!15573)

(assert (=> b!1074315 (= lt!361471 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!190 (reg!3278 r!15766) s!10566))))

(declare-datatypes ((Option!2448 0))(
  ( (None!2447) (Some!2447 (v!19864 tuple2!11612)) )
))
(declare-fun isDefined!2090 (Option!2448) Bool)

(declare-fun findConcatSeparation!554 (Regex!2949 Regex!2949 List!10179 List!10179 List!10179) Option!2448)

(assert (=> b!1074315 (= (isDefined!2090 (findConcatSeparation!554 (reg!3278 r!15766) lt!361484 Nil!10163 s!10566 s!10566)) (Exists!672 lambda!38999))))

(declare-fun lt!361477 () Unit!15573)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!554 (Regex!2949 Regex!2949 List!10179) Unit!15573)

(assert (=> b!1074315 (= lt!361477 (lemmaFindConcatSeparationEquivalentToExists!554 (reg!3278 r!15766) lt!361484 s!10566))))

(assert (=> b!1074315 (= lt!361484 (Star!2949 (reg!3278 r!15766)))))

(declare-fun b!1074316 () Bool)

(declare-fun e!680324 () Bool)

(declare-fun tp!321818 () Bool)

(assert (=> b!1074316 (= e!680324 tp!321818)))

(declare-fun b!1074317 () Bool)

(declare-fun res!479024 () Bool)

(declare-fun e!680322 () Bool)

(assert (=> b!1074317 (=> res!479024 e!680322)))

(declare-fun lt!361479 () Bool)

(assert (=> b!1074317 (= res!479024 (not lt!361479))))

(declare-fun b!1074318 () Bool)

(assert (=> b!1074318 (= e!680322 e!680318)))

(declare-fun res!479026 () Bool)

(assert (=> b!1074318 (=> res!479026 e!680318)))

(assert (=> b!1074318 (= res!479026 (not (matchR!1485 lt!361476 (_1!6632 lt!361481))))))

(declare-fun lt!361480 () Option!2448)

(declare-fun get!3672 (Option!2448) tuple2!11612)

(assert (=> b!1074318 (= lt!361481 (get!3672 lt!361480))))

(declare-fun b!1074319 () Bool)

(assert (=> b!1074319 (= e!680318 e!680321)))

(declare-fun res!479022 () Bool)

(assert (=> b!1074319 (=> res!479022 e!680321)))

(assert (=> b!1074319 (= res!479022 (not (= lt!361470 lt!361475)))))

(assert (=> b!1074319 (= lt!361475 (size!8008 s!10566))))

(assert (=> b!1074319 (= lt!361470 (size!8008 (_2!6632 lt!361481)))))

(assert (=> b!1074319 (matchR!1485 (reg!3278 r!15766) (_1!6632 lt!361481))))

(declare-fun lt!361473 () Unit!15573)

(declare-fun lemmaRemoveUselessConcatSound!282 (Regex!2949 List!10179) Unit!15573)

(assert (=> b!1074319 (= lt!361473 (lemmaRemoveUselessConcatSound!282 (reg!3278 r!15766) (_1!6632 lt!361481)))))

(declare-fun b!1074320 () Bool)

(declare-fun tp!321816 () Bool)

(declare-fun tp!321815 () Bool)

(assert (=> b!1074320 (= e!680324 (and tp!321816 tp!321815))))

(declare-fun b!1074321 () Bool)

(declare-fun e!680323 () Bool)

(assert (=> b!1074321 (= e!680323 (not e!680317))))

(declare-fun res!479020 () Bool)

(assert (=> b!1074321 (=> res!479020 e!680317)))

(declare-fun lt!361486 () Bool)

(get-info :version)

(assert (=> b!1074321 (= res!479020 (or lt!361486 (and ((_ is Concat!4782) r!15766) ((_ is EmptyExpr!2949) (regOne!6410 r!15766))) (and ((_ is Concat!4782) r!15766) ((_ is EmptyExpr!2949) (regTwo!6410 r!15766))) ((_ is Concat!4782) r!15766) ((_ is Union!2949) r!15766) (not ((_ is Star!2949) r!15766))))))

(declare-fun matchRSpec!748 (Regex!2949 List!10179) Bool)

(assert (=> b!1074321 (= lt!361486 (matchRSpec!748 r!15766 s!10566))))

(assert (=> b!1074321 (= lt!361486 (matchR!1485 r!15766 s!10566))))

(declare-fun lt!361482 () Unit!15573)

(declare-fun mainMatchTheorem!748 (Regex!2949 List!10179) Unit!15573)

(assert (=> b!1074321 (= lt!361482 (mainMatchTheorem!748 r!15766 s!10566))))

(declare-fun b!1074322 () Bool)

(declare-fun e!680316 () Bool)

(declare-fun tp_is_empty!5541 () Bool)

(declare-fun tp!321819 () Bool)

(assert (=> b!1074322 (= e!680316 (and tp_is_empty!5541 tp!321819))))

(declare-fun b!1074323 () Bool)

(declare-fun res!479018 () Bool)

(assert (=> b!1074323 (=> res!479018 e!680321)))

(declare-fun ++!2819 (List!10179 List!10179) List!10179)

(assert (=> b!1074323 (= res!479018 (not (= (++!2819 (_1!6632 lt!361481) (_2!6632 lt!361481)) s!10566)))))

(assert (=> b!1074324 (= e!680320 e!680322)))

(declare-fun res!479017 () Bool)

(assert (=> b!1074324 (=> res!479017 e!680322)))

(declare-fun isEmpty!6592 (List!10179) Bool)

(assert (=> b!1074324 (= res!479017 (isEmpty!6592 s!10566))))

(assert (=> b!1074324 (= (Exists!672 lambda!39001) (Exists!672 lambda!39002))))

(declare-fun lt!361472 () Unit!15573)

(assert (=> b!1074324 (= lt!361472 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!190 lt!361476 s!10566))))

(assert (=> b!1074324 (= lt!361479 (Exists!672 lambda!39001))))

(assert (=> b!1074324 (= lt!361479 (isDefined!2090 lt!361480))))

(assert (=> b!1074324 (= lt!361480 (findConcatSeparation!554 lt!361476 lt!361474 Nil!10163 s!10566 s!10566))))

(declare-fun lt!361483 () Unit!15573)

(assert (=> b!1074324 (= lt!361483 (lemmaFindConcatSeparationEquivalentToExists!554 lt!361476 lt!361474 s!10566))))

(assert (=> b!1074324 (matchRSpec!748 lt!361474 s!10566)))

(declare-fun lt!361487 () Unit!15573)

(assert (=> b!1074324 (= lt!361487 (mainMatchTheorem!748 lt!361474 s!10566))))

(declare-fun res!479021 () Bool)

(assert (=> start!91798 (=> (not res!479021) (not e!680323))))

(declare-fun validRegex!1418 (Regex!2949) Bool)

(assert (=> start!91798 (= res!479021 (validRegex!1418 r!15766))))

(assert (=> start!91798 e!680323))

(assert (=> start!91798 e!680324))

(assert (=> start!91798 e!680316))

(declare-fun b!1074325 () Bool)

(declare-fun res!479019 () Bool)

(assert (=> b!1074325 (=> res!479019 e!680319)))

(assert (=> b!1074325 (= res!479019 (not (isEmpty!6592 (_1!6632 lt!361481))))))

(declare-fun b!1074326 () Bool)

(declare-fun nullable!1036 (Regex!2949) Bool)

(assert (=> b!1074326 (= e!680319 (not (nullable!1036 (reg!3278 r!15766))))))

(assert (=> b!1074326 (matchRSpec!748 (reg!3278 r!15766) (_1!6632 lt!361481))))

(declare-fun lt!361485 () Unit!15573)

(assert (=> b!1074326 (= lt!361485 (mainMatchTheorem!748 (reg!3278 r!15766) (_1!6632 lt!361481)))))

(declare-fun b!1074327 () Bool)

(declare-fun tp!321820 () Bool)

(declare-fun tp!321817 () Bool)

(assert (=> b!1074327 (= e!680324 (and tp!321820 tp!321817))))

(declare-fun b!1074328 () Bool)

(assert (=> b!1074328 (= e!680324 tp_is_empty!5541)))

(assert (= (and start!91798 res!479021) b!1074321))

(assert (= (and b!1074321 (not res!479020)) b!1074315))

(assert (= (and b!1074315 (not res!479027)) b!1074324))

(assert (= (and b!1074324 (not res!479017)) b!1074317))

(assert (= (and b!1074317 (not res!479024)) b!1074318))

(assert (= (and b!1074318 (not res!479026)) b!1074314))

(assert (= (and b!1074314 (not res!479023)) b!1074319))

(assert (= (and b!1074319 (not res!479022)) b!1074323))

(assert (= (and b!1074323 (not res!479018)) b!1074313))

(assert (= (and b!1074313 (not res!479025)) b!1074325))

(assert (= (and b!1074325 (not res!479019)) b!1074326))

(assert (= (and start!91798 ((_ is ElementMatch!2949) r!15766)) b!1074328))

(assert (= (and start!91798 ((_ is Concat!4782) r!15766)) b!1074320))

(assert (= (and start!91798 ((_ is Star!2949) r!15766)) b!1074316))

(assert (= (and start!91798 ((_ is Union!2949) r!15766)) b!1074327))

(assert (= (and start!91798 ((_ is Cons!10163) s!10566)) b!1074322))

(declare-fun m!1228069 () Bool)

(assert (=> b!1074325 m!1228069))

(declare-fun m!1228071 () Bool)

(assert (=> b!1074324 m!1228071))

(declare-fun m!1228073 () Bool)

(assert (=> b!1074324 m!1228073))

(assert (=> b!1074324 m!1228073))

(declare-fun m!1228075 () Bool)

(assert (=> b!1074324 m!1228075))

(declare-fun m!1228077 () Bool)

(assert (=> b!1074324 m!1228077))

(declare-fun m!1228079 () Bool)

(assert (=> b!1074324 m!1228079))

(declare-fun m!1228081 () Bool)

(assert (=> b!1074324 m!1228081))

(declare-fun m!1228083 () Bool)

(assert (=> b!1074324 m!1228083))

(declare-fun m!1228085 () Bool)

(assert (=> b!1074324 m!1228085))

(declare-fun m!1228087 () Bool)

(assert (=> b!1074324 m!1228087))

(declare-fun m!1228089 () Bool)

(assert (=> b!1074315 m!1228089))

(declare-fun m!1228091 () Bool)

(assert (=> b!1074315 m!1228091))

(declare-fun m!1228093 () Bool)

(assert (=> b!1074315 m!1228093))

(declare-fun m!1228095 () Bool)

(assert (=> b!1074315 m!1228095))

(declare-fun m!1228097 () Bool)

(assert (=> b!1074315 m!1228097))

(assert (=> b!1074315 m!1228093))

(declare-fun m!1228099 () Bool)

(assert (=> b!1074315 m!1228099))

(declare-fun m!1228101 () Bool)

(assert (=> b!1074315 m!1228101))

(declare-fun m!1228103 () Bool)

(assert (=> b!1074315 m!1228103))

(assert (=> b!1074315 m!1228101))

(declare-fun m!1228105 () Bool)

(assert (=> start!91798 m!1228105))

(declare-fun m!1228107 () Bool)

(assert (=> b!1074326 m!1228107))

(declare-fun m!1228109 () Bool)

(assert (=> b!1074326 m!1228109))

(declare-fun m!1228111 () Bool)

(assert (=> b!1074326 m!1228111))

(declare-fun m!1228113 () Bool)

(assert (=> b!1074314 m!1228113))

(declare-fun m!1228115 () Bool)

(assert (=> b!1074321 m!1228115))

(declare-fun m!1228117 () Bool)

(assert (=> b!1074321 m!1228117))

(declare-fun m!1228119 () Bool)

(assert (=> b!1074321 m!1228119))

(declare-fun m!1228121 () Bool)

(assert (=> b!1074323 m!1228121))

(declare-fun m!1228123 () Bool)

(assert (=> b!1074318 m!1228123))

(declare-fun m!1228125 () Bool)

(assert (=> b!1074318 m!1228125))

(declare-fun m!1228127 () Bool)

(assert (=> b!1074313 m!1228127))

(declare-fun m!1228129 () Bool)

(assert (=> b!1074319 m!1228129))

(declare-fun m!1228131 () Bool)

(assert (=> b!1074319 m!1228131))

(declare-fun m!1228133 () Bool)

(assert (=> b!1074319 m!1228133))

(declare-fun m!1228135 () Bool)

(assert (=> b!1074319 m!1228135))

(check-sat (not b!1074322) (not b!1074324) (not b!1074327) (not b!1074318) (not b!1074321) tp_is_empty!5541 (not b!1074323) (not start!91798) (not b!1074319) (not b!1074320) (not b!1074326) (not b!1074325) (not b!1074315) (not b!1074314) (not b!1074313) (not b!1074316))
(check-sat)
(get-model)

(declare-fun b!1074464 () Bool)

(declare-fun e!680403 () List!10179)

(assert (=> b!1074464 (= e!680403 (_2!6632 lt!361481))))

(declare-fun b!1074466 () Bool)

(declare-fun res!479094 () Bool)

(declare-fun e!680404 () Bool)

(assert (=> b!1074466 (=> (not res!479094) (not e!680404))))

(declare-fun lt!361497 () List!10179)

(assert (=> b!1074466 (= res!479094 (= (size!8008 lt!361497) (+ (size!8008 (_1!6632 lt!361481)) (size!8008 (_2!6632 lt!361481)))))))

(declare-fun d!302830 () Bool)

(assert (=> d!302830 e!680404))

(declare-fun res!479093 () Bool)

(assert (=> d!302830 (=> (not res!479093) (not e!680404))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1457 (List!10179) (InoxSet C!6468))

(assert (=> d!302830 (= res!479093 (= (content!1457 lt!361497) ((_ map or) (content!1457 (_1!6632 lt!361481)) (content!1457 (_2!6632 lt!361481)))))))

(assert (=> d!302830 (= lt!361497 e!680403)))

(declare-fun c!180760 () Bool)

(assert (=> d!302830 (= c!180760 ((_ is Nil!10163) (_1!6632 lt!361481)))))

(assert (=> d!302830 (= (++!2819 (_1!6632 lt!361481) (_2!6632 lt!361481)) lt!361497)))

(declare-fun b!1074465 () Bool)

(assert (=> b!1074465 (= e!680403 (Cons!10163 (h!15564 (_1!6632 lt!361481)) (++!2819 (t!101225 (_1!6632 lt!361481)) (_2!6632 lt!361481))))))

(declare-fun b!1074467 () Bool)

(assert (=> b!1074467 (= e!680404 (or (not (= (_2!6632 lt!361481) Nil!10163)) (= lt!361497 (_1!6632 lt!361481))))))

(assert (= (and d!302830 c!180760) b!1074464))

(assert (= (and d!302830 (not c!180760)) b!1074465))

(assert (= (and d!302830 res!479093) b!1074466))

(assert (= (and b!1074466 res!479094) b!1074467))

(declare-fun m!1228173 () Bool)

(assert (=> b!1074466 m!1228173))

(assert (=> b!1074466 m!1228127))

(assert (=> b!1074466 m!1228131))

(declare-fun m!1228175 () Bool)

(assert (=> d!302830 m!1228175))

(declare-fun m!1228177 () Bool)

(assert (=> d!302830 m!1228177))

(declare-fun m!1228179 () Bool)

(assert (=> d!302830 m!1228179))

(declare-fun m!1228181 () Bool)

(assert (=> b!1074465 m!1228181))

(assert (=> b!1074323 d!302830))

(declare-fun d!302838 () Bool)

(declare-fun nullableFct!229 (Regex!2949) Bool)

(assert (=> d!302838 (= (nullable!1036 (reg!3278 r!15766)) (nullableFct!229 (reg!3278 r!15766)))))

(declare-fun bs!254069 () Bool)

(assert (= bs!254069 d!302838))

(declare-fun m!1228183 () Bool)

(assert (=> bs!254069 m!1228183))

(assert (=> b!1074326 d!302838))

(declare-fun bs!254081 () Bool)

(declare-fun b!1074553 () Bool)

(assert (= bs!254081 (and b!1074553 b!1074315)))

(declare-fun lambda!39023 () Int)

(assert (=> bs!254081 (not (= lambda!39023 lambda!38999))))

(assert (=> bs!254081 (= (and (= (_1!6632 lt!361481) s!10566) (= (reg!3278 (reg!3278 r!15766)) (reg!3278 r!15766)) (= (reg!3278 r!15766) lt!361484)) (= lambda!39023 lambda!39000))))

(declare-fun bs!254082 () Bool)

(assert (= bs!254082 (and b!1074553 b!1074324)))

(assert (=> bs!254082 (not (= lambda!39023 lambda!39001))))

(assert (=> bs!254082 (= (and (= (_1!6632 lt!361481) s!10566) (= (reg!3278 (reg!3278 r!15766)) lt!361476) (= (reg!3278 r!15766) lt!361474)) (= lambda!39023 lambda!39002))))

(assert (=> b!1074553 true))

(assert (=> b!1074553 true))

(declare-fun bs!254091 () Bool)

(declare-fun b!1074551 () Bool)

(assert (= bs!254091 (and b!1074551 b!1074315)))

(declare-fun lambda!39027 () Int)

(assert (=> bs!254091 (not (= lambda!39027 lambda!38999))))

(declare-fun bs!254093 () Bool)

(assert (= bs!254093 (and b!1074551 b!1074324)))

(assert (=> bs!254093 (not (= lambda!39027 lambda!39002))))

(assert (=> bs!254091 (not (= lambda!39027 lambda!39000))))

(assert (=> bs!254093 (not (= lambda!39027 lambda!39001))))

(declare-fun bs!254095 () Bool)

(assert (= bs!254095 (and b!1074551 b!1074553)))

(assert (=> bs!254095 (not (= lambda!39027 lambda!39023))))

(assert (=> b!1074551 true))

(assert (=> b!1074551 true))

(declare-fun bm!78482 () Bool)

(declare-fun call!78487 () Bool)

(declare-fun c!180782 () Bool)

(assert (=> bm!78482 (= call!78487 (Exists!672 (ite c!180782 lambda!39023 lambda!39027)))))

(declare-fun b!1074548 () Bool)

(declare-fun c!180780 () Bool)

(assert (=> b!1074548 (= c!180780 ((_ is ElementMatch!2949) (reg!3278 r!15766)))))

(declare-fun e!680453 () Bool)

(declare-fun e!680450 () Bool)

(assert (=> b!1074548 (= e!680453 e!680450)))

(declare-fun d!302840 () Bool)

(declare-fun c!180781 () Bool)

(assert (=> d!302840 (= c!180781 ((_ is EmptyExpr!2949) (reg!3278 r!15766)))))

(declare-fun e!680449 () Bool)

(assert (=> d!302840 (= (matchRSpec!748 (reg!3278 r!15766) (_1!6632 lt!361481)) e!680449)))

(declare-fun b!1074549 () Bool)

(assert (=> b!1074549 (= e!680449 e!680453)))

(declare-fun res!479139 () Bool)

(assert (=> b!1074549 (= res!479139 (not ((_ is EmptyLang!2949) (reg!3278 r!15766))))))

(assert (=> b!1074549 (=> (not res!479139) (not e!680453))))

(declare-fun b!1074550 () Bool)

(declare-fun e!680455 () Bool)

(declare-fun e!680454 () Bool)

(assert (=> b!1074550 (= e!680455 e!680454)))

(declare-fun res!479141 () Bool)

(assert (=> b!1074550 (= res!479141 (matchRSpec!748 (regOne!6411 (reg!3278 r!15766)) (_1!6632 lt!361481)))))

(assert (=> b!1074550 (=> res!479141 e!680454)))

(declare-fun e!680451 () Bool)

(assert (=> b!1074551 (= e!680451 call!78487)))

(declare-fun b!1074552 () Bool)

(declare-fun c!180779 () Bool)

(assert (=> b!1074552 (= c!180779 ((_ is Union!2949) (reg!3278 r!15766)))))

(assert (=> b!1074552 (= e!680450 e!680455)))

(declare-fun e!680452 () Bool)

(assert (=> b!1074553 (= e!680452 call!78487)))

(declare-fun b!1074554 () Bool)

(declare-fun call!78488 () Bool)

(assert (=> b!1074554 (= e!680449 call!78488)))

(declare-fun bm!78483 () Bool)

(assert (=> bm!78483 (= call!78488 (isEmpty!6592 (_1!6632 lt!361481)))))

(declare-fun b!1074555 () Bool)

(declare-fun res!479140 () Bool)

(assert (=> b!1074555 (=> res!479140 e!680452)))

(assert (=> b!1074555 (= res!479140 call!78488)))

(assert (=> b!1074555 (= e!680451 e!680452)))

(declare-fun b!1074556 () Bool)

(assert (=> b!1074556 (= e!680450 (= (_1!6632 lt!361481) (Cons!10163 (c!180726 (reg!3278 r!15766)) Nil!10163)))))

(declare-fun b!1074557 () Bool)

(assert (=> b!1074557 (= e!680454 (matchRSpec!748 (regTwo!6411 (reg!3278 r!15766)) (_1!6632 lt!361481)))))

(declare-fun b!1074558 () Bool)

(assert (=> b!1074558 (= e!680455 e!680451)))

(assert (=> b!1074558 (= c!180782 ((_ is Star!2949) (reg!3278 r!15766)))))

(assert (= (and d!302840 c!180781) b!1074554))

(assert (= (and d!302840 (not c!180781)) b!1074549))

(assert (= (and b!1074549 res!479139) b!1074548))

(assert (= (and b!1074548 c!180780) b!1074556))

(assert (= (and b!1074548 (not c!180780)) b!1074552))

(assert (= (and b!1074552 c!180779) b!1074550))

(assert (= (and b!1074552 (not c!180779)) b!1074558))

(assert (= (and b!1074550 (not res!479141)) b!1074557))

(assert (= (and b!1074558 c!180782) b!1074555))

(assert (= (and b!1074558 (not c!180782)) b!1074551))

(assert (= (and b!1074555 (not res!479140)) b!1074553))

(assert (= (or b!1074553 b!1074551) bm!78482))

(assert (= (or b!1074554 b!1074555) bm!78483))

(declare-fun m!1228235 () Bool)

(assert (=> bm!78482 m!1228235))

(declare-fun m!1228237 () Bool)

(assert (=> b!1074550 m!1228237))

(assert (=> bm!78483 m!1228069))

(declare-fun m!1228239 () Bool)

(assert (=> b!1074557 m!1228239))

(assert (=> b!1074326 d!302840))

(declare-fun d!302860 () Bool)

(assert (=> d!302860 (= (matchR!1485 (reg!3278 r!15766) (_1!6632 lt!361481)) (matchRSpec!748 (reg!3278 r!15766) (_1!6632 lt!361481)))))

(declare-fun lt!361523 () Unit!15573)

(declare-fun choose!6845 (Regex!2949 List!10179) Unit!15573)

(assert (=> d!302860 (= lt!361523 (choose!6845 (reg!3278 r!15766) (_1!6632 lt!361481)))))

(assert (=> d!302860 (validRegex!1418 (reg!3278 r!15766))))

(assert (=> d!302860 (= (mainMatchTheorem!748 (reg!3278 r!15766) (_1!6632 lt!361481)) lt!361523)))

(declare-fun bs!254121 () Bool)

(assert (= bs!254121 d!302860))

(assert (=> bs!254121 m!1228133))

(assert (=> bs!254121 m!1228109))

(declare-fun m!1228265 () Bool)

(assert (=> bs!254121 m!1228265))

(declare-fun m!1228267 () Bool)

(assert (=> bs!254121 m!1228267))

(assert (=> b!1074326 d!302860))

(declare-fun bs!254123 () Bool)

(declare-fun b!1074602 () Bool)

(assert (= bs!254123 (and b!1074602 b!1074315)))

(declare-fun lambda!39031 () Int)

(assert (=> bs!254123 (not (= lambda!39031 lambda!38999))))

(declare-fun bs!254124 () Bool)

(assert (= bs!254124 (and b!1074602 b!1074324)))

(assert (=> bs!254124 (= (and (= (reg!3278 r!15766) lt!361476) (= r!15766 lt!361474)) (= lambda!39031 lambda!39002))))

(declare-fun bs!254125 () Bool)

(assert (= bs!254125 (and b!1074602 b!1074551)))

(assert (=> bs!254125 (not (= lambda!39031 lambda!39027))))

(assert (=> bs!254123 (= (= r!15766 lt!361484) (= lambda!39031 lambda!39000))))

(assert (=> bs!254124 (not (= lambda!39031 lambda!39001))))

(declare-fun bs!254127 () Bool)

(assert (= bs!254127 (and b!1074602 b!1074553)))

(assert (=> bs!254127 (= (and (= s!10566 (_1!6632 lt!361481)) (= (reg!3278 r!15766) (reg!3278 (reg!3278 r!15766))) (= r!15766 (reg!3278 r!15766))) (= lambda!39031 lambda!39023))))

(assert (=> b!1074602 true))

(assert (=> b!1074602 true))

(declare-fun bs!254130 () Bool)

(declare-fun b!1074600 () Bool)

(assert (= bs!254130 (and b!1074600 b!1074315)))

(declare-fun lambda!39032 () Int)

(assert (=> bs!254130 (not (= lambda!39032 lambda!38999))))

(declare-fun bs!254131 () Bool)

(assert (= bs!254131 (and b!1074600 b!1074324)))

(assert (=> bs!254131 (not (= lambda!39032 lambda!39002))))

(declare-fun bs!254132 () Bool)

(assert (= bs!254132 (and b!1074600 b!1074551)))

(assert (=> bs!254132 (= (and (= s!10566 (_1!6632 lt!361481)) (= (regOne!6410 r!15766) (regOne!6410 (reg!3278 r!15766))) (= (regTwo!6410 r!15766) (regTwo!6410 (reg!3278 r!15766)))) (= lambda!39032 lambda!39027))))

(declare-fun bs!254133 () Bool)

(assert (= bs!254133 (and b!1074600 b!1074602)))

(assert (=> bs!254133 (not (= lambda!39032 lambda!39031))))

(assert (=> bs!254130 (not (= lambda!39032 lambda!39000))))

(assert (=> bs!254131 (not (= lambda!39032 lambda!39001))))

(declare-fun bs!254134 () Bool)

(assert (= bs!254134 (and b!1074600 b!1074553)))

(assert (=> bs!254134 (not (= lambda!39032 lambda!39023))))

(assert (=> b!1074600 true))

(assert (=> b!1074600 true))

(declare-fun c!180795 () Bool)

(declare-fun bm!78486 () Bool)

(declare-fun call!78491 () Bool)

(assert (=> bm!78486 (= call!78491 (Exists!672 (ite c!180795 lambda!39031 lambda!39032)))))

(declare-fun b!1074597 () Bool)

(declare-fun c!180793 () Bool)

(assert (=> b!1074597 (= c!180793 ((_ is ElementMatch!2949) r!15766))))

(declare-fun e!680479 () Bool)

(declare-fun e!680476 () Bool)

(assert (=> b!1074597 (= e!680479 e!680476)))

(declare-fun d!302872 () Bool)

(declare-fun c!180794 () Bool)

(assert (=> d!302872 (= c!180794 ((_ is EmptyExpr!2949) r!15766))))

(declare-fun e!680475 () Bool)

(assert (=> d!302872 (= (matchRSpec!748 r!15766 s!10566) e!680475)))

(declare-fun b!1074598 () Bool)

(assert (=> b!1074598 (= e!680475 e!680479)))

(declare-fun res!479162 () Bool)

(assert (=> b!1074598 (= res!479162 (not ((_ is EmptyLang!2949) r!15766)))))

(assert (=> b!1074598 (=> (not res!479162) (not e!680479))))

(declare-fun b!1074599 () Bool)

(declare-fun e!680481 () Bool)

(declare-fun e!680480 () Bool)

(assert (=> b!1074599 (= e!680481 e!680480)))

(declare-fun res!479164 () Bool)

(assert (=> b!1074599 (= res!479164 (matchRSpec!748 (regOne!6411 r!15766) s!10566))))

(assert (=> b!1074599 (=> res!479164 e!680480)))

(declare-fun e!680477 () Bool)

(assert (=> b!1074600 (= e!680477 call!78491)))

(declare-fun b!1074601 () Bool)

(declare-fun c!180792 () Bool)

(assert (=> b!1074601 (= c!180792 ((_ is Union!2949) r!15766))))

(assert (=> b!1074601 (= e!680476 e!680481)))

(declare-fun e!680478 () Bool)

(assert (=> b!1074602 (= e!680478 call!78491)))

(declare-fun b!1074603 () Bool)

(declare-fun call!78492 () Bool)

(assert (=> b!1074603 (= e!680475 call!78492)))

(declare-fun bm!78487 () Bool)

(assert (=> bm!78487 (= call!78492 (isEmpty!6592 s!10566))))

(declare-fun b!1074604 () Bool)

(declare-fun res!479163 () Bool)

(assert (=> b!1074604 (=> res!479163 e!680478)))

(assert (=> b!1074604 (= res!479163 call!78492)))

(assert (=> b!1074604 (= e!680477 e!680478)))

(declare-fun b!1074605 () Bool)

(assert (=> b!1074605 (= e!680476 (= s!10566 (Cons!10163 (c!180726 r!15766) Nil!10163)))))

(declare-fun b!1074606 () Bool)

(assert (=> b!1074606 (= e!680480 (matchRSpec!748 (regTwo!6411 r!15766) s!10566))))

(declare-fun b!1074607 () Bool)

(assert (=> b!1074607 (= e!680481 e!680477)))

(assert (=> b!1074607 (= c!180795 ((_ is Star!2949) r!15766))))

(assert (= (and d!302872 c!180794) b!1074603))

(assert (= (and d!302872 (not c!180794)) b!1074598))

(assert (= (and b!1074598 res!479162) b!1074597))

(assert (= (and b!1074597 c!180793) b!1074605))

(assert (= (and b!1074597 (not c!180793)) b!1074601))

(assert (= (and b!1074601 c!180792) b!1074599))

(assert (= (and b!1074601 (not c!180792)) b!1074607))

(assert (= (and b!1074599 (not res!479164)) b!1074606))

(assert (= (and b!1074607 c!180795) b!1074604))

(assert (= (and b!1074607 (not c!180795)) b!1074600))

(assert (= (and b!1074604 (not res!479163)) b!1074602))

(assert (= (or b!1074602 b!1074600) bm!78486))

(assert (= (or b!1074603 b!1074604) bm!78487))

(declare-fun m!1228297 () Bool)

(assert (=> bm!78486 m!1228297))

(declare-fun m!1228299 () Bool)

(assert (=> b!1074599 m!1228299))

(assert (=> bm!78487 m!1228087))

(declare-fun m!1228301 () Bool)

(assert (=> b!1074606 m!1228301))

(assert (=> b!1074321 d!302872))

(declare-fun b!1074757 () Bool)

(declare-fun e!680551 () Bool)

(assert (=> b!1074757 (= e!680551 (nullable!1036 r!15766))))

(declare-fun bm!78507 () Bool)

(declare-fun call!78512 () Bool)

(assert (=> bm!78507 (= call!78512 (isEmpty!6592 s!10566))))

(declare-fun b!1074758 () Bool)

(declare-fun res!479214 () Bool)

(declare-fun e!680555 () Bool)

(assert (=> b!1074758 (=> res!479214 e!680555)))

(declare-fun tail!1551 (List!10179) List!10179)

(assert (=> b!1074758 (= res!479214 (not (isEmpty!6592 (tail!1551 s!10566))))))

(declare-fun b!1074759 () Bool)

(declare-fun derivativeStep!834 (Regex!2949 C!6468) Regex!2949)

(declare-fun head!1989 (List!10179) C!6468)

(assert (=> b!1074759 (= e!680551 (matchR!1485 (derivativeStep!834 r!15766 (head!1989 s!10566)) (tail!1551 s!10566)))))

(declare-fun b!1074760 () Bool)

(assert (=> b!1074760 (= e!680555 (not (= (head!1989 s!10566) (c!180726 r!15766))))))

(declare-fun b!1074761 () Bool)

(declare-fun e!680552 () Bool)

(assert (=> b!1074761 (= e!680552 (= (head!1989 s!10566) (c!180726 r!15766)))))

(declare-fun b!1074762 () Bool)

(declare-fun res!479211 () Bool)

(assert (=> b!1074762 (=> (not res!479211) (not e!680552))))

(assert (=> b!1074762 (= res!479211 (not call!78512))))

(declare-fun b!1074763 () Bool)

(declare-fun e!680553 () Bool)

(declare-fun e!680557 () Bool)

(assert (=> b!1074763 (= e!680553 e!680557)))

(declare-fun c!180831 () Bool)

(assert (=> b!1074763 (= c!180831 ((_ is EmptyLang!2949) r!15766))))

(declare-fun b!1074764 () Bool)

(declare-fun res!479213 () Bool)

(declare-fun e!680554 () Bool)

(assert (=> b!1074764 (=> res!479213 e!680554)))

(assert (=> b!1074764 (= res!479213 e!680552)))

(declare-fun res!479215 () Bool)

(assert (=> b!1074764 (=> (not res!479215) (not e!680552))))

(declare-fun lt!361542 () Bool)

(assert (=> b!1074764 (= res!479215 lt!361542)))

(declare-fun b!1074765 () Bool)

(assert (=> b!1074765 (= e!680557 (not lt!361542))))

(declare-fun b!1074766 () Bool)

(declare-fun e!680556 () Bool)

(assert (=> b!1074766 (= e!680554 e!680556)))

(declare-fun res!479218 () Bool)

(assert (=> b!1074766 (=> (not res!479218) (not e!680556))))

(assert (=> b!1074766 (= res!479218 (not lt!361542))))

(declare-fun b!1074767 () Bool)

(assert (=> b!1074767 (= e!680556 e!680555)))

(declare-fun res!479212 () Bool)

(assert (=> b!1074767 (=> res!479212 e!680555)))

(assert (=> b!1074767 (= res!479212 call!78512)))

(declare-fun b!1074768 () Bool)

(assert (=> b!1074768 (= e!680553 (= lt!361542 call!78512))))

(declare-fun d!302884 () Bool)

(assert (=> d!302884 e!680553))

(declare-fun c!180832 () Bool)

(assert (=> d!302884 (= c!180832 ((_ is EmptyExpr!2949) r!15766))))

(assert (=> d!302884 (= lt!361542 e!680551)))

(declare-fun c!180830 () Bool)

(assert (=> d!302884 (= c!180830 (isEmpty!6592 s!10566))))

(assert (=> d!302884 (validRegex!1418 r!15766)))

(assert (=> d!302884 (= (matchR!1485 r!15766 s!10566) lt!361542)))

(declare-fun b!1074769 () Bool)

(declare-fun res!479217 () Bool)

(assert (=> b!1074769 (=> (not res!479217) (not e!680552))))

(assert (=> b!1074769 (= res!479217 (isEmpty!6592 (tail!1551 s!10566)))))

(declare-fun b!1074770 () Bool)

(declare-fun res!479216 () Bool)

(assert (=> b!1074770 (=> res!479216 e!680554)))

(assert (=> b!1074770 (= res!479216 (not ((_ is ElementMatch!2949) r!15766)))))

(assert (=> b!1074770 (= e!680557 e!680554)))

(assert (= (and d!302884 c!180830) b!1074757))

(assert (= (and d!302884 (not c!180830)) b!1074759))

(assert (= (and d!302884 c!180832) b!1074768))

(assert (= (and d!302884 (not c!180832)) b!1074763))

(assert (= (and b!1074763 c!180831) b!1074765))

(assert (= (and b!1074763 (not c!180831)) b!1074770))

(assert (= (and b!1074770 (not res!479216)) b!1074764))

(assert (= (and b!1074764 res!479215) b!1074762))

(assert (= (and b!1074762 res!479211) b!1074769))

(assert (= (and b!1074769 res!479217) b!1074761))

(assert (= (and b!1074764 (not res!479213)) b!1074766))

(assert (= (and b!1074766 res!479218) b!1074767))

(assert (= (and b!1074767 (not res!479212)) b!1074758))

(assert (= (and b!1074758 (not res!479214)) b!1074760))

(assert (= (or b!1074768 b!1074762 b!1074767) bm!78507))

(declare-fun m!1228345 () Bool)

(assert (=> b!1074759 m!1228345))

(assert (=> b!1074759 m!1228345))

(declare-fun m!1228347 () Bool)

(assert (=> b!1074759 m!1228347))

(declare-fun m!1228349 () Bool)

(assert (=> b!1074759 m!1228349))

(assert (=> b!1074759 m!1228347))

(assert (=> b!1074759 m!1228349))

(declare-fun m!1228351 () Bool)

(assert (=> b!1074759 m!1228351))

(assert (=> b!1074760 m!1228345))

(assert (=> d!302884 m!1228087))

(assert (=> d!302884 m!1228105))

(assert (=> b!1074761 m!1228345))

(assert (=> b!1074769 m!1228349))

(assert (=> b!1074769 m!1228349))

(declare-fun m!1228353 () Bool)

(assert (=> b!1074769 m!1228353))

(assert (=> bm!78507 m!1228087))

(assert (=> b!1074758 m!1228349))

(assert (=> b!1074758 m!1228349))

(assert (=> b!1074758 m!1228353))

(declare-fun m!1228355 () Bool)

(assert (=> b!1074757 m!1228355))

(assert (=> b!1074321 d!302884))

(declare-fun d!302900 () Bool)

(assert (=> d!302900 (= (matchR!1485 r!15766 s!10566) (matchRSpec!748 r!15766 s!10566))))

(declare-fun lt!361543 () Unit!15573)

(assert (=> d!302900 (= lt!361543 (choose!6845 r!15766 s!10566))))

(assert (=> d!302900 (validRegex!1418 r!15766)))

(assert (=> d!302900 (= (mainMatchTheorem!748 r!15766 s!10566) lt!361543)))

(declare-fun bs!254136 () Bool)

(assert (= bs!254136 d!302900))

(assert (=> bs!254136 m!1228117))

(assert (=> bs!254136 m!1228115))

(declare-fun m!1228357 () Bool)

(assert (=> bs!254136 m!1228357))

(assert (=> bs!254136 m!1228105))

(assert (=> b!1074321 d!302900))

(declare-fun b!1074789 () Bool)

(declare-fun e!680576 () Bool)

(declare-fun call!78520 () Bool)

(assert (=> b!1074789 (= e!680576 call!78520)))

(declare-fun b!1074790 () Bool)

(declare-fun e!680572 () Bool)

(declare-fun e!680574 () Bool)

(assert (=> b!1074790 (= e!680572 e!680574)))

(declare-fun c!180837 () Bool)

(assert (=> b!1074790 (= c!180837 ((_ is Union!2949) r!15766))))

(declare-fun bm!78514 () Bool)

(assert (=> bm!78514 (= call!78520 (validRegex!1418 (ite c!180837 (regTwo!6411 r!15766) (regTwo!6410 r!15766))))))

(declare-fun b!1074791 () Bool)

(declare-fun e!680573 () Bool)

(assert (=> b!1074791 (= e!680572 e!680573)))

(declare-fun res!479232 () Bool)

(assert (=> b!1074791 (= res!479232 (not (nullable!1036 (reg!3278 r!15766))))))

(assert (=> b!1074791 (=> (not res!479232) (not e!680573))))

(declare-fun b!1074792 () Bool)

(declare-fun call!78519 () Bool)

(assert (=> b!1074792 (= e!680573 call!78519)))

(declare-fun b!1074793 () Bool)

(declare-fun res!479233 () Bool)

(declare-fun e!680577 () Bool)

(assert (=> b!1074793 (=> (not res!479233) (not e!680577))))

(declare-fun call!78521 () Bool)

(assert (=> b!1074793 (= res!479233 call!78521)))

(assert (=> b!1074793 (= e!680574 e!680577)))

(declare-fun bm!78515 () Bool)

(declare-fun c!180838 () Bool)

(assert (=> bm!78515 (= call!78519 (validRegex!1418 (ite c!180838 (reg!3278 r!15766) (ite c!180837 (regOne!6411 r!15766) (regOne!6410 r!15766)))))))

(declare-fun d!302902 () Bool)

(declare-fun res!479231 () Bool)

(declare-fun e!680578 () Bool)

(assert (=> d!302902 (=> res!479231 e!680578)))

(assert (=> d!302902 (= res!479231 ((_ is ElementMatch!2949) r!15766))))

(assert (=> d!302902 (= (validRegex!1418 r!15766) e!680578)))

(declare-fun b!1074794 () Bool)

(declare-fun e!680575 () Bool)

(assert (=> b!1074794 (= e!680575 e!680576)))

(declare-fun res!479230 () Bool)

(assert (=> b!1074794 (=> (not res!479230) (not e!680576))))

(assert (=> b!1074794 (= res!479230 call!78521)))

(declare-fun b!1074795 () Bool)

(assert (=> b!1074795 (= e!680577 call!78520)))

(declare-fun b!1074796 () Bool)

(assert (=> b!1074796 (= e!680578 e!680572)))

(assert (=> b!1074796 (= c!180838 ((_ is Star!2949) r!15766))))

(declare-fun b!1074797 () Bool)

(declare-fun res!479229 () Bool)

(assert (=> b!1074797 (=> res!479229 e!680575)))

(assert (=> b!1074797 (= res!479229 (not ((_ is Concat!4782) r!15766)))))

(assert (=> b!1074797 (= e!680574 e!680575)))

(declare-fun bm!78516 () Bool)

(assert (=> bm!78516 (= call!78521 call!78519)))

(assert (= (and d!302902 (not res!479231)) b!1074796))

(assert (= (and b!1074796 c!180838) b!1074791))

(assert (= (and b!1074796 (not c!180838)) b!1074790))

(assert (= (and b!1074791 res!479232) b!1074792))

(assert (= (and b!1074790 c!180837) b!1074793))

(assert (= (and b!1074790 (not c!180837)) b!1074797))

(assert (= (and b!1074793 res!479233) b!1074795))

(assert (= (and b!1074797 (not res!479229)) b!1074794))

(assert (= (and b!1074794 res!479230) b!1074789))

(assert (= (or b!1074795 b!1074789) bm!78514))

(assert (= (or b!1074793 b!1074794) bm!78516))

(assert (= (or b!1074792 bm!78516) bm!78515))

(declare-fun m!1228359 () Bool)

(assert (=> bm!78514 m!1228359))

(assert (=> b!1074791 m!1228107))

(declare-fun m!1228361 () Bool)

(assert (=> bm!78515 m!1228361))

(assert (=> start!91798 d!302902))

(declare-fun d!302904 () Bool)

(declare-fun choose!6846 (Int) Bool)

(assert (=> d!302904 (= (Exists!672 lambda!38999) (choose!6846 lambda!38999))))

(declare-fun bs!254137 () Bool)

(assert (= bs!254137 d!302904))

(declare-fun m!1228363 () Bool)

(assert (=> bs!254137 m!1228363))

(assert (=> b!1074315 d!302904))

(declare-fun d!302906 () Bool)

(assert (=> d!302906 (= (Exists!672 lambda!39000) (choose!6846 lambda!39000))))

(declare-fun bs!254138 () Bool)

(assert (= bs!254138 d!302906))

(declare-fun m!1228365 () Bool)

(assert (=> bs!254138 m!1228365))

(assert (=> b!1074315 d!302906))

(declare-fun bs!254139 () Bool)

(declare-fun d!302908 () Bool)

(assert (= bs!254139 (and d!302908 b!1074315)))

(declare-fun lambda!39037 () Int)

(assert (=> bs!254139 (= (= (Star!2949 (reg!3278 r!15766)) lt!361484) (= lambda!39037 lambda!38999))))

(declare-fun bs!254140 () Bool)

(assert (= bs!254140 (and d!302908 b!1074324)))

(assert (=> bs!254140 (not (= lambda!39037 lambda!39002))))

(declare-fun bs!254141 () Bool)

(assert (= bs!254141 (and d!302908 b!1074551)))

(assert (=> bs!254141 (not (= lambda!39037 lambda!39027))))

(declare-fun bs!254142 () Bool)

(assert (= bs!254142 (and d!302908 b!1074602)))

(assert (=> bs!254142 (not (= lambda!39037 lambda!39031))))

(assert (=> bs!254139 (not (= lambda!39037 lambda!39000))))

(assert (=> bs!254140 (= (and (= (reg!3278 r!15766) lt!361476) (= (Star!2949 (reg!3278 r!15766)) lt!361474)) (= lambda!39037 lambda!39001))))

(declare-fun bs!254143 () Bool)

(assert (= bs!254143 (and d!302908 b!1074553)))

(assert (=> bs!254143 (not (= lambda!39037 lambda!39023))))

(declare-fun bs!254144 () Bool)

(assert (= bs!254144 (and d!302908 b!1074600)))

(assert (=> bs!254144 (not (= lambda!39037 lambda!39032))))

(assert (=> d!302908 true))

(assert (=> d!302908 true))

(declare-fun lambda!39038 () Int)

(assert (=> bs!254139 (not (= lambda!39038 lambda!38999))))

(assert (=> bs!254140 (= (and (= (reg!3278 r!15766) lt!361476) (= (Star!2949 (reg!3278 r!15766)) lt!361474)) (= lambda!39038 lambda!39002))))

(assert (=> bs!254141 (not (= lambda!39038 lambda!39027))))

(assert (=> bs!254142 (= (= (Star!2949 (reg!3278 r!15766)) r!15766) (= lambda!39038 lambda!39031))))

(assert (=> bs!254139 (= (= (Star!2949 (reg!3278 r!15766)) lt!361484) (= lambda!39038 lambda!39000))))

(assert (=> bs!254140 (not (= lambda!39038 lambda!39001))))

(assert (=> bs!254143 (= (and (= s!10566 (_1!6632 lt!361481)) (= (reg!3278 r!15766) (reg!3278 (reg!3278 r!15766))) (= (Star!2949 (reg!3278 r!15766)) (reg!3278 r!15766))) (= lambda!39038 lambda!39023))))

(assert (=> bs!254144 (not (= lambda!39038 lambda!39032))))

(declare-fun bs!254145 () Bool)

(assert (= bs!254145 d!302908))

(assert (=> bs!254145 (not (= lambda!39038 lambda!39037))))

(assert (=> d!302908 true))

(assert (=> d!302908 true))

(assert (=> d!302908 (= (Exists!672 lambda!39037) (Exists!672 lambda!39038))))

(declare-fun lt!361546 () Unit!15573)

(declare-fun choose!6847 (Regex!2949 List!10179) Unit!15573)

(assert (=> d!302908 (= lt!361546 (choose!6847 (reg!3278 r!15766) s!10566))))

(assert (=> d!302908 (validRegex!1418 (reg!3278 r!15766))))

(assert (=> d!302908 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!190 (reg!3278 r!15766) s!10566) lt!361546)))

(declare-fun m!1228367 () Bool)

(assert (=> bs!254145 m!1228367))

(declare-fun m!1228369 () Bool)

(assert (=> bs!254145 m!1228369))

(declare-fun m!1228371 () Bool)

(assert (=> bs!254145 m!1228371))

(assert (=> bs!254145 m!1228267))

(assert (=> b!1074315 d!302908))

(declare-fun b!1074826 () Bool)

(declare-fun e!680594 () Bool)

(declare-fun lt!361555 () Option!2448)

(assert (=> b!1074826 (= e!680594 (not (isDefined!2090 lt!361555)))))

(declare-fun d!302910 () Bool)

(assert (=> d!302910 e!680594))

(declare-fun res!479255 () Bool)

(assert (=> d!302910 (=> res!479255 e!680594)))

(declare-fun e!680596 () Bool)

(assert (=> d!302910 (= res!479255 e!680596)))

(declare-fun res!479254 () Bool)

(assert (=> d!302910 (=> (not res!479254) (not e!680596))))

(assert (=> d!302910 (= res!479254 (isDefined!2090 lt!361555))))

(declare-fun e!680597 () Option!2448)

(assert (=> d!302910 (= lt!361555 e!680597)))

(declare-fun c!180844 () Bool)

(declare-fun e!680593 () Bool)

(assert (=> d!302910 (= c!180844 e!680593)))

(declare-fun res!479258 () Bool)

(assert (=> d!302910 (=> (not res!479258) (not e!680593))))

(assert (=> d!302910 (= res!479258 (matchR!1485 (reg!3278 r!15766) Nil!10163))))

(assert (=> d!302910 (validRegex!1418 (reg!3278 r!15766))))

(assert (=> d!302910 (= (findConcatSeparation!554 (reg!3278 r!15766) lt!361484 Nil!10163 s!10566 s!10566) lt!361555)))

(declare-fun b!1074827 () Bool)

(declare-fun e!680595 () Option!2448)

(assert (=> b!1074827 (= e!680595 None!2447)))

(declare-fun b!1074828 () Bool)

(assert (=> b!1074828 (= e!680597 (Some!2447 (tuple2!11613 Nil!10163 s!10566)))))

(declare-fun b!1074829 () Bool)

(assert (=> b!1074829 (= e!680593 (matchR!1485 lt!361484 s!10566))))

(declare-fun b!1074830 () Bool)

(assert (=> b!1074830 (= e!680596 (= (++!2819 (_1!6632 (get!3672 lt!361555)) (_2!6632 (get!3672 lt!361555))) s!10566))))

(declare-fun b!1074831 () Bool)

(declare-fun res!479256 () Bool)

(assert (=> b!1074831 (=> (not res!479256) (not e!680596))))

(assert (=> b!1074831 (= res!479256 (matchR!1485 lt!361484 (_2!6632 (get!3672 lt!361555))))))

(declare-fun b!1074832 () Bool)

(declare-fun lt!361553 () Unit!15573)

(declare-fun lt!361554 () Unit!15573)

(assert (=> b!1074832 (= lt!361553 lt!361554)))

(assert (=> b!1074832 (= (++!2819 (++!2819 Nil!10163 (Cons!10163 (h!15564 s!10566) Nil!10163)) (t!101225 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!412 (List!10179 C!6468 List!10179 List!10179) Unit!15573)

(assert (=> b!1074832 (= lt!361554 (lemmaMoveElementToOtherListKeepsConcatEq!412 Nil!10163 (h!15564 s!10566) (t!101225 s!10566) s!10566))))

(assert (=> b!1074832 (= e!680595 (findConcatSeparation!554 (reg!3278 r!15766) lt!361484 (++!2819 Nil!10163 (Cons!10163 (h!15564 s!10566) Nil!10163)) (t!101225 s!10566) s!10566))))

(declare-fun b!1074833 () Bool)

(declare-fun res!479257 () Bool)

(assert (=> b!1074833 (=> (not res!479257) (not e!680596))))

(assert (=> b!1074833 (= res!479257 (matchR!1485 (reg!3278 r!15766) (_1!6632 (get!3672 lt!361555))))))

(declare-fun b!1074834 () Bool)

(assert (=> b!1074834 (= e!680597 e!680595)))

(declare-fun c!180843 () Bool)

(assert (=> b!1074834 (= c!180843 ((_ is Nil!10163) s!10566))))

(assert (= (and d!302910 res!479258) b!1074829))

(assert (= (and d!302910 c!180844) b!1074828))

(assert (= (and d!302910 (not c!180844)) b!1074834))

(assert (= (and b!1074834 c!180843) b!1074827))

(assert (= (and b!1074834 (not c!180843)) b!1074832))

(assert (= (and d!302910 res!479254) b!1074833))

(assert (= (and b!1074833 res!479257) b!1074831))

(assert (= (and b!1074831 res!479256) b!1074830))

(assert (= (and d!302910 (not res!479255)) b!1074826))

(declare-fun m!1228373 () Bool)

(assert (=> b!1074833 m!1228373))

(declare-fun m!1228375 () Bool)

(assert (=> b!1074833 m!1228375))

(assert (=> b!1074831 m!1228373))

(declare-fun m!1228377 () Bool)

(assert (=> b!1074831 m!1228377))

(declare-fun m!1228379 () Bool)

(assert (=> b!1074829 m!1228379))

(assert (=> b!1074830 m!1228373))

(declare-fun m!1228381 () Bool)

(assert (=> b!1074830 m!1228381))

(declare-fun m!1228383 () Bool)

(assert (=> d!302910 m!1228383))

(declare-fun m!1228385 () Bool)

(assert (=> d!302910 m!1228385))

(assert (=> d!302910 m!1228267))

(declare-fun m!1228387 () Bool)

(assert (=> b!1074832 m!1228387))

(assert (=> b!1074832 m!1228387))

(declare-fun m!1228389 () Bool)

(assert (=> b!1074832 m!1228389))

(declare-fun m!1228391 () Bool)

(assert (=> b!1074832 m!1228391))

(assert (=> b!1074832 m!1228387))

(declare-fun m!1228393 () Bool)

(assert (=> b!1074832 m!1228393))

(assert (=> b!1074826 m!1228383))

(assert (=> b!1074315 d!302910))

(declare-fun d!302912 () Bool)

(declare-fun isEmpty!6594 (Option!2448) Bool)

(assert (=> d!302912 (= (isDefined!2090 (findConcatSeparation!554 (reg!3278 r!15766) lt!361484 Nil!10163 s!10566 s!10566)) (not (isEmpty!6594 (findConcatSeparation!554 (reg!3278 r!15766) lt!361484 Nil!10163 s!10566 s!10566))))))

(declare-fun bs!254146 () Bool)

(assert (= bs!254146 d!302912))

(assert (=> bs!254146 m!1228093))

(declare-fun m!1228395 () Bool)

(assert (=> bs!254146 m!1228395))

(assert (=> b!1074315 d!302912))

(declare-fun b!1074835 () Bool)

(declare-fun e!680598 () Bool)

(assert (=> b!1074835 (= e!680598 (nullable!1036 lt!361474))))

(declare-fun bm!78517 () Bool)

(declare-fun call!78522 () Bool)

(assert (=> bm!78517 (= call!78522 (isEmpty!6592 s!10566))))

(declare-fun b!1074836 () Bool)

(declare-fun res!479262 () Bool)

(declare-fun e!680602 () Bool)

(assert (=> b!1074836 (=> res!479262 e!680602)))

(assert (=> b!1074836 (= res!479262 (not (isEmpty!6592 (tail!1551 s!10566))))))

(declare-fun b!1074837 () Bool)

(assert (=> b!1074837 (= e!680598 (matchR!1485 (derivativeStep!834 lt!361474 (head!1989 s!10566)) (tail!1551 s!10566)))))

(declare-fun b!1074838 () Bool)

(assert (=> b!1074838 (= e!680602 (not (= (head!1989 s!10566) (c!180726 lt!361474))))))

(declare-fun b!1074839 () Bool)

(declare-fun e!680599 () Bool)

(assert (=> b!1074839 (= e!680599 (= (head!1989 s!10566) (c!180726 lt!361474)))))

(declare-fun b!1074840 () Bool)

(declare-fun res!479259 () Bool)

(assert (=> b!1074840 (=> (not res!479259) (not e!680599))))

(assert (=> b!1074840 (= res!479259 (not call!78522))))

(declare-fun b!1074841 () Bool)

(declare-fun e!680600 () Bool)

(declare-fun e!680604 () Bool)

(assert (=> b!1074841 (= e!680600 e!680604)))

(declare-fun c!180846 () Bool)

(assert (=> b!1074841 (= c!180846 ((_ is EmptyLang!2949) lt!361474))))

(declare-fun b!1074842 () Bool)

(declare-fun res!479261 () Bool)

(declare-fun e!680601 () Bool)

(assert (=> b!1074842 (=> res!479261 e!680601)))

(assert (=> b!1074842 (= res!479261 e!680599)))

(declare-fun res!479263 () Bool)

(assert (=> b!1074842 (=> (not res!479263) (not e!680599))))

(declare-fun lt!361556 () Bool)

(assert (=> b!1074842 (= res!479263 lt!361556)))

(declare-fun b!1074843 () Bool)

(assert (=> b!1074843 (= e!680604 (not lt!361556))))

(declare-fun b!1074844 () Bool)

(declare-fun e!680603 () Bool)

(assert (=> b!1074844 (= e!680601 e!680603)))

(declare-fun res!479266 () Bool)

(assert (=> b!1074844 (=> (not res!479266) (not e!680603))))

(assert (=> b!1074844 (= res!479266 (not lt!361556))))

(declare-fun b!1074845 () Bool)

(assert (=> b!1074845 (= e!680603 e!680602)))

(declare-fun res!479260 () Bool)

(assert (=> b!1074845 (=> res!479260 e!680602)))

(assert (=> b!1074845 (= res!479260 call!78522)))

(declare-fun b!1074846 () Bool)

(assert (=> b!1074846 (= e!680600 (= lt!361556 call!78522))))

(declare-fun d!302914 () Bool)

(assert (=> d!302914 e!680600))

(declare-fun c!180847 () Bool)

(assert (=> d!302914 (= c!180847 ((_ is EmptyExpr!2949) lt!361474))))

(assert (=> d!302914 (= lt!361556 e!680598)))

(declare-fun c!180845 () Bool)

(assert (=> d!302914 (= c!180845 (isEmpty!6592 s!10566))))

(assert (=> d!302914 (validRegex!1418 lt!361474)))

(assert (=> d!302914 (= (matchR!1485 lt!361474 s!10566) lt!361556)))

(declare-fun b!1074847 () Bool)

(declare-fun res!479265 () Bool)

(assert (=> b!1074847 (=> (not res!479265) (not e!680599))))

(assert (=> b!1074847 (= res!479265 (isEmpty!6592 (tail!1551 s!10566)))))

(declare-fun b!1074848 () Bool)

(declare-fun res!479264 () Bool)

(assert (=> b!1074848 (=> res!479264 e!680601)))

(assert (=> b!1074848 (= res!479264 (not ((_ is ElementMatch!2949) lt!361474)))))

(assert (=> b!1074848 (= e!680604 e!680601)))

(assert (= (and d!302914 c!180845) b!1074835))

(assert (= (and d!302914 (not c!180845)) b!1074837))

(assert (= (and d!302914 c!180847) b!1074846))

(assert (= (and d!302914 (not c!180847)) b!1074841))

(assert (= (and b!1074841 c!180846) b!1074843))

(assert (= (and b!1074841 (not c!180846)) b!1074848))

(assert (= (and b!1074848 (not res!479264)) b!1074842))

(assert (= (and b!1074842 res!479263) b!1074840))

(assert (= (and b!1074840 res!479259) b!1074847))

(assert (= (and b!1074847 res!479265) b!1074839))

(assert (= (and b!1074842 (not res!479261)) b!1074844))

(assert (= (and b!1074844 res!479266) b!1074845))

(assert (= (and b!1074845 (not res!479260)) b!1074836))

(assert (= (and b!1074836 (not res!479262)) b!1074838))

(assert (= (or b!1074846 b!1074840 b!1074845) bm!78517))

(assert (=> b!1074837 m!1228345))

(assert (=> b!1074837 m!1228345))

(declare-fun m!1228397 () Bool)

(assert (=> b!1074837 m!1228397))

(assert (=> b!1074837 m!1228349))

(assert (=> b!1074837 m!1228397))

(assert (=> b!1074837 m!1228349))

(declare-fun m!1228399 () Bool)

(assert (=> b!1074837 m!1228399))

(assert (=> b!1074838 m!1228345))

(assert (=> d!302914 m!1228087))

(declare-fun m!1228401 () Bool)

(assert (=> d!302914 m!1228401))

(assert (=> b!1074839 m!1228345))

(assert (=> b!1074847 m!1228349))

(assert (=> b!1074847 m!1228349))

(assert (=> b!1074847 m!1228353))

(assert (=> bm!78517 m!1228087))

(assert (=> b!1074836 m!1228349))

(assert (=> b!1074836 m!1228349))

(assert (=> b!1074836 m!1228353))

(declare-fun m!1228403 () Bool)

(assert (=> b!1074835 m!1228403))

(assert (=> b!1074315 d!302914))

(declare-fun bs!254147 () Bool)

(declare-fun d!302916 () Bool)

(assert (= bs!254147 (and d!302916 b!1074315)))

(declare-fun lambda!39041 () Int)

(assert (=> bs!254147 (= lambda!39041 lambda!38999)))

(declare-fun bs!254148 () Bool)

(assert (= bs!254148 (and d!302916 b!1074324)))

(assert (=> bs!254148 (not (= lambda!39041 lambda!39002))))

(declare-fun bs!254149 () Bool)

(assert (= bs!254149 (and d!302916 b!1074551)))

(assert (=> bs!254149 (not (= lambda!39041 lambda!39027))))

(declare-fun bs!254150 () Bool)

(assert (= bs!254150 (and d!302916 b!1074602)))

(assert (=> bs!254150 (not (= lambda!39041 lambda!39031))))

(assert (=> bs!254147 (not (= lambda!39041 lambda!39000))))

(assert (=> bs!254148 (= (and (= (reg!3278 r!15766) lt!361476) (= lt!361484 lt!361474)) (= lambda!39041 lambda!39001))))

(declare-fun bs!254151 () Bool)

(assert (= bs!254151 (and d!302916 b!1074553)))

(assert (=> bs!254151 (not (= lambda!39041 lambda!39023))))

(declare-fun bs!254152 () Bool)

(assert (= bs!254152 (and d!302916 b!1074600)))

(assert (=> bs!254152 (not (= lambda!39041 lambda!39032))))

(declare-fun bs!254153 () Bool)

(assert (= bs!254153 (and d!302916 d!302908)))

(assert (=> bs!254153 (not (= lambda!39041 lambda!39038))))

(assert (=> bs!254153 (= (= lt!361484 (Star!2949 (reg!3278 r!15766))) (= lambda!39041 lambda!39037))))

(assert (=> d!302916 true))

(assert (=> d!302916 true))

(assert (=> d!302916 true))

(assert (=> d!302916 (= (isDefined!2090 (findConcatSeparation!554 (reg!3278 r!15766) lt!361484 Nil!10163 s!10566 s!10566)) (Exists!672 lambda!39041))))

(declare-fun lt!361559 () Unit!15573)

(declare-fun choose!6849 (Regex!2949 Regex!2949 List!10179) Unit!15573)

(assert (=> d!302916 (= lt!361559 (choose!6849 (reg!3278 r!15766) lt!361484 s!10566))))

(assert (=> d!302916 (validRegex!1418 (reg!3278 r!15766))))

(assert (=> d!302916 (= (lemmaFindConcatSeparationEquivalentToExists!554 (reg!3278 r!15766) lt!361484 s!10566) lt!361559)))

(declare-fun bs!254154 () Bool)

(assert (= bs!254154 d!302916))

(declare-fun m!1228405 () Bool)

(assert (=> bs!254154 m!1228405))

(assert (=> bs!254154 m!1228093))

(assert (=> bs!254154 m!1228095))

(assert (=> bs!254154 m!1228267))

(declare-fun m!1228407 () Bool)

(assert (=> bs!254154 m!1228407))

(assert (=> bs!254154 m!1228093))

(assert (=> b!1074315 d!302916))

(declare-fun b!1074875 () Bool)

(declare-fun e!680619 () Regex!2949)

(declare-fun e!680623 () Regex!2949)

(assert (=> b!1074875 (= e!680619 e!680623)))

(declare-fun c!180862 () Bool)

(assert (=> b!1074875 (= c!180862 ((_ is Union!2949) (reg!3278 r!15766)))))

(declare-fun b!1074876 () Bool)

(declare-fun call!78533 () Regex!2949)

(declare-fun call!78536 () Regex!2949)

(assert (=> b!1074876 (= e!680619 (Concat!4782 call!78533 call!78536))))

(declare-fun c!180860 () Bool)

(declare-fun bm!78528 () Bool)

(declare-fun call!78535 () Regex!2949)

(declare-fun c!180858 () Bool)

(assert (=> bm!78528 (= call!78535 (removeUselessConcat!490 (ite c!180858 (regOne!6410 (reg!3278 r!15766)) (ite c!180860 (regTwo!6410 (reg!3278 r!15766)) (ite c!180862 (regTwo!6411 (reg!3278 r!15766)) (reg!3278 (reg!3278 r!15766)))))))))

(declare-fun b!1074877 () Bool)

(declare-fun e!680624 () Regex!2949)

(declare-fun e!680620 () Regex!2949)

(assert (=> b!1074877 (= e!680624 e!680620)))

(assert (=> b!1074877 (= c!180858 (and ((_ is Concat!4782) (reg!3278 r!15766)) ((_ is EmptyExpr!2949) (regTwo!6410 (reg!3278 r!15766)))))))

(declare-fun b!1074878 () Bool)

(assert (=> b!1074878 (= e!680620 call!78535)))

(declare-fun bm!78529 () Bool)

(declare-fun c!180861 () Bool)

(declare-fun call!78537 () Regex!2949)

(assert (=> bm!78529 (= call!78537 (removeUselessConcat!490 (ite c!180861 (regTwo!6410 (reg!3278 r!15766)) (ite c!180860 (regOne!6410 (reg!3278 r!15766)) (regOne!6411 (reg!3278 r!15766))))))))

(declare-fun b!1074879 () Bool)

(declare-fun e!680622 () Regex!2949)

(assert (=> b!1074879 (= e!680622 (reg!3278 r!15766))))

(declare-fun b!1074880 () Bool)

(declare-fun call!78534 () Regex!2949)

(assert (=> b!1074880 (= e!680623 (Union!2949 call!78533 call!78534))))

(declare-fun bm!78530 () Bool)

(assert (=> bm!78530 (= call!78534 call!78536)))

(declare-fun b!1074881 () Bool)

(declare-fun c!180859 () Bool)

(assert (=> b!1074881 (= c!180859 ((_ is Star!2949) (reg!3278 r!15766)))))

(assert (=> b!1074881 (= e!680623 e!680622)))

(declare-fun bm!78531 () Bool)

(assert (=> bm!78531 (= call!78533 call!78537)))

(declare-fun b!1074882 () Bool)

(assert (=> b!1074882 (= e!680622 (Star!2949 call!78534))))

(declare-fun d!302918 () Bool)

(declare-fun e!680621 () Bool)

(assert (=> d!302918 e!680621))

(declare-fun res!479273 () Bool)

(assert (=> d!302918 (=> (not res!479273) (not e!680621))))

(declare-fun lt!361562 () Regex!2949)

(assert (=> d!302918 (= res!479273 (validRegex!1418 lt!361562))))

(assert (=> d!302918 (= lt!361562 e!680624)))

(assert (=> d!302918 (= c!180861 (and ((_ is Concat!4782) (reg!3278 r!15766)) ((_ is EmptyExpr!2949) (regOne!6410 (reg!3278 r!15766)))))))

(assert (=> d!302918 (validRegex!1418 (reg!3278 r!15766))))

(assert (=> d!302918 (= (removeUselessConcat!490 (reg!3278 r!15766)) lt!361562)))

(declare-fun bm!78532 () Bool)

(assert (=> bm!78532 (= call!78536 call!78535)))

(declare-fun b!1074883 () Bool)

(assert (=> b!1074883 (= e!680624 call!78537)))

(declare-fun b!1074884 () Bool)

(assert (=> b!1074884 (= e!680621 (= (nullable!1036 lt!361562) (nullable!1036 (reg!3278 r!15766))))))

(declare-fun b!1074885 () Bool)

(assert (=> b!1074885 (= c!180860 ((_ is Concat!4782) (reg!3278 r!15766)))))

(assert (=> b!1074885 (= e!680620 e!680619)))

(assert (= (and d!302918 c!180861) b!1074883))

(assert (= (and d!302918 (not c!180861)) b!1074877))

(assert (= (and b!1074877 c!180858) b!1074878))

(assert (= (and b!1074877 (not c!180858)) b!1074885))

(assert (= (and b!1074885 c!180860) b!1074876))

(assert (= (and b!1074885 (not c!180860)) b!1074875))

(assert (= (and b!1074875 c!180862) b!1074880))

(assert (= (and b!1074875 (not c!180862)) b!1074881))

(assert (= (and b!1074881 c!180859) b!1074882))

(assert (= (and b!1074881 (not c!180859)) b!1074879))

(assert (= (or b!1074880 b!1074882) bm!78530))

(assert (= (or b!1074876 bm!78530) bm!78532))

(assert (= (or b!1074876 b!1074880) bm!78531))

(assert (= (or b!1074878 bm!78532) bm!78528))

(assert (= (or b!1074883 bm!78531) bm!78529))

(assert (= (and d!302918 res!479273) b!1074884))

(declare-fun m!1228409 () Bool)

(assert (=> bm!78528 m!1228409))

(declare-fun m!1228411 () Bool)

(assert (=> bm!78529 m!1228411))

(declare-fun m!1228413 () Bool)

(assert (=> d!302918 m!1228413))

(assert (=> d!302918 m!1228267))

(declare-fun m!1228415 () Bool)

(assert (=> b!1074884 m!1228415))

(assert (=> b!1074884 m!1228107))

(assert (=> b!1074315 d!302918))

(declare-fun b!1074886 () Bool)

(declare-fun e!680625 () Bool)

(assert (=> b!1074886 (= e!680625 (nullable!1036 lt!361474))))

(declare-fun bm!78533 () Bool)

(declare-fun call!78538 () Bool)

(assert (=> bm!78533 (= call!78538 (isEmpty!6592 (_2!6632 lt!361481)))))

(declare-fun b!1074887 () Bool)

(declare-fun res!479277 () Bool)

(declare-fun e!680629 () Bool)

(assert (=> b!1074887 (=> res!479277 e!680629)))

(assert (=> b!1074887 (= res!479277 (not (isEmpty!6592 (tail!1551 (_2!6632 lt!361481)))))))

(declare-fun b!1074888 () Bool)

(assert (=> b!1074888 (= e!680625 (matchR!1485 (derivativeStep!834 lt!361474 (head!1989 (_2!6632 lt!361481))) (tail!1551 (_2!6632 lt!361481))))))

(declare-fun b!1074889 () Bool)

(assert (=> b!1074889 (= e!680629 (not (= (head!1989 (_2!6632 lt!361481)) (c!180726 lt!361474))))))

(declare-fun b!1074890 () Bool)

(declare-fun e!680626 () Bool)

(assert (=> b!1074890 (= e!680626 (= (head!1989 (_2!6632 lt!361481)) (c!180726 lt!361474)))))

(declare-fun b!1074891 () Bool)

(declare-fun res!479274 () Bool)

(assert (=> b!1074891 (=> (not res!479274) (not e!680626))))

(assert (=> b!1074891 (= res!479274 (not call!78538))))

(declare-fun b!1074892 () Bool)

(declare-fun e!680627 () Bool)

(declare-fun e!680631 () Bool)

(assert (=> b!1074892 (= e!680627 e!680631)))

(declare-fun c!180864 () Bool)

(assert (=> b!1074892 (= c!180864 ((_ is EmptyLang!2949) lt!361474))))

(declare-fun b!1074893 () Bool)

(declare-fun res!479276 () Bool)

(declare-fun e!680628 () Bool)

(assert (=> b!1074893 (=> res!479276 e!680628)))

(assert (=> b!1074893 (= res!479276 e!680626)))

(declare-fun res!479278 () Bool)

(assert (=> b!1074893 (=> (not res!479278) (not e!680626))))

(declare-fun lt!361563 () Bool)

(assert (=> b!1074893 (= res!479278 lt!361563)))

(declare-fun b!1074894 () Bool)

(assert (=> b!1074894 (= e!680631 (not lt!361563))))

(declare-fun b!1074895 () Bool)

(declare-fun e!680630 () Bool)

(assert (=> b!1074895 (= e!680628 e!680630)))

(declare-fun res!479281 () Bool)

(assert (=> b!1074895 (=> (not res!479281) (not e!680630))))

(assert (=> b!1074895 (= res!479281 (not lt!361563))))

(declare-fun b!1074896 () Bool)

(assert (=> b!1074896 (= e!680630 e!680629)))

(declare-fun res!479275 () Bool)

(assert (=> b!1074896 (=> res!479275 e!680629)))

(assert (=> b!1074896 (= res!479275 call!78538)))

(declare-fun b!1074897 () Bool)

(assert (=> b!1074897 (= e!680627 (= lt!361563 call!78538))))

(declare-fun d!302920 () Bool)

(assert (=> d!302920 e!680627))

(declare-fun c!180865 () Bool)

(assert (=> d!302920 (= c!180865 ((_ is EmptyExpr!2949) lt!361474))))

(assert (=> d!302920 (= lt!361563 e!680625)))

(declare-fun c!180863 () Bool)

(assert (=> d!302920 (= c!180863 (isEmpty!6592 (_2!6632 lt!361481)))))

(assert (=> d!302920 (validRegex!1418 lt!361474)))

(assert (=> d!302920 (= (matchR!1485 lt!361474 (_2!6632 lt!361481)) lt!361563)))

(declare-fun b!1074898 () Bool)

(declare-fun res!479280 () Bool)

(assert (=> b!1074898 (=> (not res!479280) (not e!680626))))

(assert (=> b!1074898 (= res!479280 (isEmpty!6592 (tail!1551 (_2!6632 lt!361481))))))

(declare-fun b!1074899 () Bool)

(declare-fun res!479279 () Bool)

(assert (=> b!1074899 (=> res!479279 e!680628)))

(assert (=> b!1074899 (= res!479279 (not ((_ is ElementMatch!2949) lt!361474)))))

(assert (=> b!1074899 (= e!680631 e!680628)))

(assert (= (and d!302920 c!180863) b!1074886))

(assert (= (and d!302920 (not c!180863)) b!1074888))

(assert (= (and d!302920 c!180865) b!1074897))

(assert (= (and d!302920 (not c!180865)) b!1074892))

(assert (= (and b!1074892 c!180864) b!1074894))

(assert (= (and b!1074892 (not c!180864)) b!1074899))

(assert (= (and b!1074899 (not res!479279)) b!1074893))

(assert (= (and b!1074893 res!479278) b!1074891))

(assert (= (and b!1074891 res!479274) b!1074898))

(assert (= (and b!1074898 res!479280) b!1074890))

(assert (= (and b!1074893 (not res!479276)) b!1074895))

(assert (= (and b!1074895 res!479281) b!1074896))

(assert (= (and b!1074896 (not res!479275)) b!1074887))

(assert (= (and b!1074887 (not res!479277)) b!1074889))

(assert (= (or b!1074897 b!1074891 b!1074896) bm!78533))

(declare-fun m!1228417 () Bool)

(assert (=> b!1074888 m!1228417))

(assert (=> b!1074888 m!1228417))

(declare-fun m!1228419 () Bool)

(assert (=> b!1074888 m!1228419))

(declare-fun m!1228421 () Bool)

(assert (=> b!1074888 m!1228421))

(assert (=> b!1074888 m!1228419))

(assert (=> b!1074888 m!1228421))

(declare-fun m!1228423 () Bool)

(assert (=> b!1074888 m!1228423))

(assert (=> b!1074889 m!1228417))

(declare-fun m!1228425 () Bool)

(assert (=> d!302920 m!1228425))

(assert (=> d!302920 m!1228401))

(assert (=> b!1074890 m!1228417))

(assert (=> b!1074898 m!1228421))

(assert (=> b!1074898 m!1228421))

(declare-fun m!1228427 () Bool)

(assert (=> b!1074898 m!1228427))

(assert (=> bm!78533 m!1228425))

(assert (=> b!1074887 m!1228421))

(assert (=> b!1074887 m!1228421))

(assert (=> b!1074887 m!1228427))

(assert (=> b!1074886 m!1228403))

(assert (=> b!1074314 d!302920))

(declare-fun d!302922 () Bool)

(assert (=> d!302922 (= (isEmpty!6592 (_1!6632 lt!361481)) ((_ is Nil!10163) (_1!6632 lt!361481)))))

(assert (=> b!1074325 d!302922))

(declare-fun bs!254155 () Bool)

(declare-fun d!302924 () Bool)

(assert (= bs!254155 (and d!302924 b!1074315)))

(declare-fun lambda!39042 () Int)

(assert (=> bs!254155 (= (and (= lt!361476 (reg!3278 r!15766)) (= lt!361474 lt!361484)) (= lambda!39042 lambda!38999))))

(declare-fun bs!254156 () Bool)

(assert (= bs!254156 (and d!302924 b!1074324)))

(assert (=> bs!254156 (not (= lambda!39042 lambda!39002))))

(declare-fun bs!254157 () Bool)

(assert (= bs!254157 (and d!302924 b!1074602)))

(assert (=> bs!254157 (not (= lambda!39042 lambda!39031))))

(assert (=> bs!254155 (not (= lambda!39042 lambda!39000))))

(assert (=> bs!254156 (= lambda!39042 lambda!39001)))

(declare-fun bs!254158 () Bool)

(assert (= bs!254158 (and d!302924 b!1074553)))

(assert (=> bs!254158 (not (= lambda!39042 lambda!39023))))

(declare-fun bs!254159 () Bool)

(assert (= bs!254159 (and d!302924 b!1074600)))

(assert (=> bs!254159 (not (= lambda!39042 lambda!39032))))

(declare-fun bs!254160 () Bool)

(assert (= bs!254160 (and d!302924 d!302908)))

(assert (=> bs!254160 (not (= lambda!39042 lambda!39038))))

(assert (=> bs!254160 (= (and (= lt!361476 (reg!3278 r!15766)) (= lt!361474 (Star!2949 (reg!3278 r!15766)))) (= lambda!39042 lambda!39037))))

(declare-fun bs!254161 () Bool)

(assert (= bs!254161 (and d!302924 b!1074551)))

(assert (=> bs!254161 (not (= lambda!39042 lambda!39027))))

(declare-fun bs!254162 () Bool)

(assert (= bs!254162 (and d!302924 d!302916)))

(assert (=> bs!254162 (= (and (= lt!361476 (reg!3278 r!15766)) (= lt!361474 lt!361484)) (= lambda!39042 lambda!39041))))

(assert (=> d!302924 true))

(assert (=> d!302924 true))

(assert (=> d!302924 true))

(assert (=> d!302924 (= (isDefined!2090 (findConcatSeparation!554 lt!361476 lt!361474 Nil!10163 s!10566 s!10566)) (Exists!672 lambda!39042))))

(declare-fun lt!361564 () Unit!15573)

(assert (=> d!302924 (= lt!361564 (choose!6849 lt!361476 lt!361474 s!10566))))

(assert (=> d!302924 (validRegex!1418 lt!361476)))

(assert (=> d!302924 (= (lemmaFindConcatSeparationEquivalentToExists!554 lt!361476 lt!361474 s!10566) lt!361564)))

(declare-fun bs!254163 () Bool)

(assert (= bs!254163 d!302924))

(declare-fun m!1228429 () Bool)

(assert (=> bs!254163 m!1228429))

(assert (=> bs!254163 m!1228075))

(declare-fun m!1228431 () Bool)

(assert (=> bs!254163 m!1228431))

(declare-fun m!1228433 () Bool)

(assert (=> bs!254163 m!1228433))

(declare-fun m!1228435 () Bool)

(assert (=> bs!254163 m!1228435))

(assert (=> bs!254163 m!1228075))

(assert (=> b!1074324 d!302924))

(declare-fun d!302926 () Bool)

(assert (=> d!302926 (= (isEmpty!6592 s!10566) ((_ is Nil!10163) s!10566))))

(assert (=> b!1074324 d!302926))

(declare-fun bs!254164 () Bool)

(declare-fun b!1074905 () Bool)

(assert (= bs!254164 (and b!1074905 b!1074315)))

(declare-fun lambda!39043 () Int)

(assert (=> bs!254164 (not (= lambda!39043 lambda!38999))))

(declare-fun bs!254165 () Bool)

(assert (= bs!254165 (and b!1074905 b!1074324)))

(assert (=> bs!254165 (= (= (reg!3278 lt!361474) lt!361476) (= lambda!39043 lambda!39002))))

(declare-fun bs!254166 () Bool)

(assert (= bs!254166 (and b!1074905 b!1074602)))

(assert (=> bs!254166 (= (and (= (reg!3278 lt!361474) (reg!3278 r!15766)) (= lt!361474 r!15766)) (= lambda!39043 lambda!39031))))

(assert (=> bs!254164 (= (and (= (reg!3278 lt!361474) (reg!3278 r!15766)) (= lt!361474 lt!361484)) (= lambda!39043 lambda!39000))))

(assert (=> bs!254165 (not (= lambda!39043 lambda!39001))))

(declare-fun bs!254167 () Bool)

(assert (= bs!254167 (and b!1074905 b!1074553)))

(assert (=> bs!254167 (= (and (= s!10566 (_1!6632 lt!361481)) (= (reg!3278 lt!361474) (reg!3278 (reg!3278 r!15766))) (= lt!361474 (reg!3278 r!15766))) (= lambda!39043 lambda!39023))))

(declare-fun bs!254168 () Bool)

(assert (= bs!254168 (and b!1074905 b!1074600)))

(assert (=> bs!254168 (not (= lambda!39043 lambda!39032))))

(declare-fun bs!254169 () Bool)

(assert (= bs!254169 (and b!1074905 d!302908)))

(assert (=> bs!254169 (= (and (= (reg!3278 lt!361474) (reg!3278 r!15766)) (= lt!361474 (Star!2949 (reg!3278 r!15766)))) (= lambda!39043 lambda!39038))))

(assert (=> bs!254169 (not (= lambda!39043 lambda!39037))))

(declare-fun bs!254170 () Bool)

(assert (= bs!254170 (and b!1074905 b!1074551)))

(assert (=> bs!254170 (not (= lambda!39043 lambda!39027))))

(declare-fun bs!254171 () Bool)

(assert (= bs!254171 (and b!1074905 d!302924)))

(assert (=> bs!254171 (not (= lambda!39043 lambda!39042))))

(declare-fun bs!254172 () Bool)

(assert (= bs!254172 (and b!1074905 d!302916)))

(assert (=> bs!254172 (not (= lambda!39043 lambda!39041))))

(assert (=> b!1074905 true))

(assert (=> b!1074905 true))

(declare-fun bs!254173 () Bool)

(declare-fun b!1074903 () Bool)

(assert (= bs!254173 (and b!1074903 b!1074315)))

(declare-fun lambda!39044 () Int)

(assert (=> bs!254173 (not (= lambda!39044 lambda!38999))))

(declare-fun bs!254174 () Bool)

(assert (= bs!254174 (and b!1074903 b!1074324)))

(assert (=> bs!254174 (not (= lambda!39044 lambda!39002))))

(declare-fun bs!254175 () Bool)

(assert (= bs!254175 (and b!1074903 b!1074905)))

(assert (=> bs!254175 (not (= lambda!39044 lambda!39043))))

(declare-fun bs!254176 () Bool)

(assert (= bs!254176 (and b!1074903 b!1074602)))

(assert (=> bs!254176 (not (= lambda!39044 lambda!39031))))

(assert (=> bs!254173 (not (= lambda!39044 lambda!39000))))

(assert (=> bs!254174 (not (= lambda!39044 lambda!39001))))

(declare-fun bs!254177 () Bool)

(assert (= bs!254177 (and b!1074903 b!1074553)))

(assert (=> bs!254177 (not (= lambda!39044 lambda!39023))))

(declare-fun bs!254178 () Bool)

(assert (= bs!254178 (and b!1074903 b!1074600)))

(assert (=> bs!254178 (= (and (= (regOne!6410 lt!361474) (regOne!6410 r!15766)) (= (regTwo!6410 lt!361474) (regTwo!6410 r!15766))) (= lambda!39044 lambda!39032))))

(declare-fun bs!254179 () Bool)

(assert (= bs!254179 (and b!1074903 d!302908)))

(assert (=> bs!254179 (not (= lambda!39044 lambda!39038))))

(assert (=> bs!254179 (not (= lambda!39044 lambda!39037))))

(declare-fun bs!254180 () Bool)

(assert (= bs!254180 (and b!1074903 b!1074551)))

(assert (=> bs!254180 (= (and (= s!10566 (_1!6632 lt!361481)) (= (regOne!6410 lt!361474) (regOne!6410 (reg!3278 r!15766))) (= (regTwo!6410 lt!361474) (regTwo!6410 (reg!3278 r!15766)))) (= lambda!39044 lambda!39027))))

(declare-fun bs!254181 () Bool)

(assert (= bs!254181 (and b!1074903 d!302924)))

(assert (=> bs!254181 (not (= lambda!39044 lambda!39042))))

(declare-fun bs!254182 () Bool)

(assert (= bs!254182 (and b!1074903 d!302916)))

(assert (=> bs!254182 (not (= lambda!39044 lambda!39041))))

(assert (=> b!1074903 true))

(assert (=> b!1074903 true))

(declare-fun bm!78534 () Bool)

(declare-fun c!180869 () Bool)

(declare-fun call!78539 () Bool)

(assert (=> bm!78534 (= call!78539 (Exists!672 (ite c!180869 lambda!39043 lambda!39044)))))

(declare-fun b!1074900 () Bool)

(declare-fun c!180867 () Bool)

(assert (=> b!1074900 (= c!180867 ((_ is ElementMatch!2949) lt!361474))))

(declare-fun e!680636 () Bool)

(declare-fun e!680633 () Bool)

(assert (=> b!1074900 (= e!680636 e!680633)))

(declare-fun d!302928 () Bool)

(declare-fun c!180868 () Bool)

(assert (=> d!302928 (= c!180868 ((_ is EmptyExpr!2949) lt!361474))))

(declare-fun e!680632 () Bool)

(assert (=> d!302928 (= (matchRSpec!748 lt!361474 s!10566) e!680632)))

(declare-fun b!1074901 () Bool)

(assert (=> b!1074901 (= e!680632 e!680636)))

(declare-fun res!479282 () Bool)

(assert (=> b!1074901 (= res!479282 (not ((_ is EmptyLang!2949) lt!361474)))))

(assert (=> b!1074901 (=> (not res!479282) (not e!680636))))

(declare-fun b!1074902 () Bool)

(declare-fun e!680638 () Bool)

(declare-fun e!680637 () Bool)

(assert (=> b!1074902 (= e!680638 e!680637)))

(declare-fun res!479284 () Bool)

(assert (=> b!1074902 (= res!479284 (matchRSpec!748 (regOne!6411 lt!361474) s!10566))))

(assert (=> b!1074902 (=> res!479284 e!680637)))

(declare-fun e!680634 () Bool)

(assert (=> b!1074903 (= e!680634 call!78539)))

(declare-fun b!1074904 () Bool)

(declare-fun c!180866 () Bool)

(assert (=> b!1074904 (= c!180866 ((_ is Union!2949) lt!361474))))

(assert (=> b!1074904 (= e!680633 e!680638)))

(declare-fun e!680635 () Bool)

(assert (=> b!1074905 (= e!680635 call!78539)))

(declare-fun b!1074906 () Bool)

(declare-fun call!78540 () Bool)

(assert (=> b!1074906 (= e!680632 call!78540)))

(declare-fun bm!78535 () Bool)

(assert (=> bm!78535 (= call!78540 (isEmpty!6592 s!10566))))

(declare-fun b!1074907 () Bool)

(declare-fun res!479283 () Bool)

(assert (=> b!1074907 (=> res!479283 e!680635)))

(assert (=> b!1074907 (= res!479283 call!78540)))

(assert (=> b!1074907 (= e!680634 e!680635)))

(declare-fun b!1074908 () Bool)

(assert (=> b!1074908 (= e!680633 (= s!10566 (Cons!10163 (c!180726 lt!361474) Nil!10163)))))

(declare-fun b!1074909 () Bool)

(assert (=> b!1074909 (= e!680637 (matchRSpec!748 (regTwo!6411 lt!361474) s!10566))))

(declare-fun b!1074910 () Bool)

(assert (=> b!1074910 (= e!680638 e!680634)))

(assert (=> b!1074910 (= c!180869 ((_ is Star!2949) lt!361474))))

(assert (= (and d!302928 c!180868) b!1074906))

(assert (= (and d!302928 (not c!180868)) b!1074901))

(assert (= (and b!1074901 res!479282) b!1074900))

(assert (= (and b!1074900 c!180867) b!1074908))

(assert (= (and b!1074900 (not c!180867)) b!1074904))

(assert (= (and b!1074904 c!180866) b!1074902))

(assert (= (and b!1074904 (not c!180866)) b!1074910))

(assert (= (and b!1074902 (not res!479284)) b!1074909))

(assert (= (and b!1074910 c!180869) b!1074907))

(assert (= (and b!1074910 (not c!180869)) b!1074903))

(assert (= (and b!1074907 (not res!479283)) b!1074905))

(assert (= (or b!1074905 b!1074903) bm!78534))

(assert (= (or b!1074906 b!1074907) bm!78535))

(declare-fun m!1228437 () Bool)

(assert (=> bm!78534 m!1228437))

(declare-fun m!1228439 () Bool)

(assert (=> b!1074902 m!1228439))

(assert (=> bm!78535 m!1228087))

(declare-fun m!1228441 () Bool)

(assert (=> b!1074909 m!1228441))

(assert (=> b!1074324 d!302928))

(declare-fun d!302930 () Bool)

(assert (=> d!302930 (= (isDefined!2090 lt!361480) (not (isEmpty!6594 lt!361480)))))

(declare-fun bs!254183 () Bool)

(assert (= bs!254183 d!302930))

(declare-fun m!1228443 () Bool)

(assert (=> bs!254183 m!1228443))

(assert (=> b!1074324 d!302930))

(declare-fun d!302932 () Bool)

(assert (=> d!302932 (= (Exists!672 lambda!39001) (choose!6846 lambda!39001))))

(declare-fun bs!254184 () Bool)

(assert (= bs!254184 d!302932))

(declare-fun m!1228445 () Bool)

(assert (=> bs!254184 m!1228445))

(assert (=> b!1074324 d!302932))

(declare-fun d!302934 () Bool)

(assert (=> d!302934 (= (Exists!672 lambda!39002) (choose!6846 lambda!39002))))

(declare-fun bs!254185 () Bool)

(assert (= bs!254185 d!302934))

(declare-fun m!1228447 () Bool)

(assert (=> bs!254185 m!1228447))

(assert (=> b!1074324 d!302934))

(declare-fun bs!254186 () Bool)

(declare-fun d!302936 () Bool)

(assert (= bs!254186 (and d!302936 b!1074315)))

(declare-fun lambda!39045 () Int)

(assert (=> bs!254186 (= (and (= lt!361476 (reg!3278 r!15766)) (= (Star!2949 lt!361476) lt!361484)) (= lambda!39045 lambda!38999))))

(declare-fun bs!254187 () Bool)

(assert (= bs!254187 (and d!302936 b!1074905)))

(assert (=> bs!254187 (not (= lambda!39045 lambda!39043))))

(declare-fun bs!254188 () Bool)

(assert (= bs!254188 (and d!302936 b!1074602)))

(assert (=> bs!254188 (not (= lambda!39045 lambda!39031))))

(assert (=> bs!254186 (not (= lambda!39045 lambda!39000))))

(declare-fun bs!254189 () Bool)

(assert (= bs!254189 (and d!302936 b!1074324)))

(assert (=> bs!254189 (= (= (Star!2949 lt!361476) lt!361474) (= lambda!39045 lambda!39001))))

(declare-fun bs!254190 () Bool)

(assert (= bs!254190 (and d!302936 b!1074553)))

(assert (=> bs!254190 (not (= lambda!39045 lambda!39023))))

(declare-fun bs!254191 () Bool)

(assert (= bs!254191 (and d!302936 b!1074600)))

(assert (=> bs!254191 (not (= lambda!39045 lambda!39032))))

(declare-fun bs!254192 () Bool)

(assert (= bs!254192 (and d!302936 d!302908)))

(assert (=> bs!254192 (not (= lambda!39045 lambda!39038))))

(assert (=> bs!254192 (= (and (= lt!361476 (reg!3278 r!15766)) (= (Star!2949 lt!361476) (Star!2949 (reg!3278 r!15766)))) (= lambda!39045 lambda!39037))))

(declare-fun bs!254193 () Bool)

(assert (= bs!254193 (and d!302936 b!1074903)))

(assert (=> bs!254193 (not (= lambda!39045 lambda!39044))))

(assert (=> bs!254189 (not (= lambda!39045 lambda!39002))))

(declare-fun bs!254194 () Bool)

(assert (= bs!254194 (and d!302936 b!1074551)))

(assert (=> bs!254194 (not (= lambda!39045 lambda!39027))))

(declare-fun bs!254195 () Bool)

(assert (= bs!254195 (and d!302936 d!302924)))

(assert (=> bs!254195 (= (= (Star!2949 lt!361476) lt!361474) (= lambda!39045 lambda!39042))))

(declare-fun bs!254196 () Bool)

(assert (= bs!254196 (and d!302936 d!302916)))

(assert (=> bs!254196 (= (and (= lt!361476 (reg!3278 r!15766)) (= (Star!2949 lt!361476) lt!361484)) (= lambda!39045 lambda!39041))))

(assert (=> d!302936 true))

(assert (=> d!302936 true))

(declare-fun lambda!39046 () Int)

(assert (=> bs!254186 (not (= lambda!39046 lambda!38999))))

(assert (=> bs!254187 (= (and (= lt!361476 (reg!3278 lt!361474)) (= (Star!2949 lt!361476) lt!361474)) (= lambda!39046 lambda!39043))))

(assert (=> bs!254188 (= (and (= lt!361476 (reg!3278 r!15766)) (= (Star!2949 lt!361476) r!15766)) (= lambda!39046 lambda!39031))))

(assert (=> bs!254189 (not (= lambda!39046 lambda!39001))))

(assert (=> bs!254190 (= (and (= s!10566 (_1!6632 lt!361481)) (= lt!361476 (reg!3278 (reg!3278 r!15766))) (= (Star!2949 lt!361476) (reg!3278 r!15766))) (= lambda!39046 lambda!39023))))

(assert (=> bs!254191 (not (= lambda!39046 lambda!39032))))

(assert (=> bs!254192 (= (and (= lt!361476 (reg!3278 r!15766)) (= (Star!2949 lt!361476) (Star!2949 (reg!3278 r!15766)))) (= lambda!39046 lambda!39038))))

(assert (=> bs!254192 (not (= lambda!39046 lambda!39037))))

(assert (=> bs!254193 (not (= lambda!39046 lambda!39044))))

(assert (=> bs!254189 (= (= (Star!2949 lt!361476) lt!361474) (= lambda!39046 lambda!39002))))

(assert (=> bs!254194 (not (= lambda!39046 lambda!39027))))

(assert (=> bs!254195 (not (= lambda!39046 lambda!39042))))

(assert (=> bs!254196 (not (= lambda!39046 lambda!39041))))

(declare-fun bs!254197 () Bool)

(assert (= bs!254197 d!302936))

(assert (=> bs!254197 (not (= lambda!39046 lambda!39045))))

(assert (=> bs!254186 (= (and (= lt!361476 (reg!3278 r!15766)) (= (Star!2949 lt!361476) lt!361484)) (= lambda!39046 lambda!39000))))

(assert (=> d!302936 true))

(assert (=> d!302936 true))

(assert (=> d!302936 (= (Exists!672 lambda!39045) (Exists!672 lambda!39046))))

(declare-fun lt!361565 () Unit!15573)

(assert (=> d!302936 (= lt!361565 (choose!6847 lt!361476 s!10566))))

(assert (=> d!302936 (validRegex!1418 lt!361476)))

(assert (=> d!302936 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!190 lt!361476 s!10566) lt!361565)))

(declare-fun m!1228449 () Bool)

(assert (=> bs!254197 m!1228449))

(declare-fun m!1228451 () Bool)

(assert (=> bs!254197 m!1228451))

(declare-fun m!1228453 () Bool)

(assert (=> bs!254197 m!1228453))

(assert (=> bs!254197 m!1228433))

(assert (=> b!1074324 d!302936))

(declare-fun d!302938 () Bool)

(assert (=> d!302938 (= (matchR!1485 lt!361474 s!10566) (matchRSpec!748 lt!361474 s!10566))))

(declare-fun lt!361566 () Unit!15573)

(assert (=> d!302938 (= lt!361566 (choose!6845 lt!361474 s!10566))))

(assert (=> d!302938 (validRegex!1418 lt!361474)))

(assert (=> d!302938 (= (mainMatchTheorem!748 lt!361474 s!10566) lt!361566)))

(declare-fun bs!254198 () Bool)

(assert (= bs!254198 d!302938))

(assert (=> bs!254198 m!1228097))

(assert (=> bs!254198 m!1228083))

(declare-fun m!1228455 () Bool)

(assert (=> bs!254198 m!1228455))

(assert (=> bs!254198 m!1228401))

(assert (=> b!1074324 d!302938))

(declare-fun b!1074911 () Bool)

(declare-fun e!680640 () Bool)

(declare-fun lt!361569 () Option!2448)

(assert (=> b!1074911 (= e!680640 (not (isDefined!2090 lt!361569)))))

(declare-fun d!302940 () Bool)

(assert (=> d!302940 e!680640))

(declare-fun res!479286 () Bool)

(assert (=> d!302940 (=> res!479286 e!680640)))

(declare-fun e!680642 () Bool)

(assert (=> d!302940 (= res!479286 e!680642)))

(declare-fun res!479285 () Bool)

(assert (=> d!302940 (=> (not res!479285) (not e!680642))))

(assert (=> d!302940 (= res!479285 (isDefined!2090 lt!361569))))

(declare-fun e!680643 () Option!2448)

(assert (=> d!302940 (= lt!361569 e!680643)))

(declare-fun c!180871 () Bool)

(declare-fun e!680639 () Bool)

(assert (=> d!302940 (= c!180871 e!680639)))

(declare-fun res!479289 () Bool)

(assert (=> d!302940 (=> (not res!479289) (not e!680639))))

(assert (=> d!302940 (= res!479289 (matchR!1485 lt!361476 Nil!10163))))

(assert (=> d!302940 (validRegex!1418 lt!361476)))

(assert (=> d!302940 (= (findConcatSeparation!554 lt!361476 lt!361474 Nil!10163 s!10566 s!10566) lt!361569)))

(declare-fun b!1074912 () Bool)

(declare-fun e!680641 () Option!2448)

(assert (=> b!1074912 (= e!680641 None!2447)))

(declare-fun b!1074913 () Bool)

(assert (=> b!1074913 (= e!680643 (Some!2447 (tuple2!11613 Nil!10163 s!10566)))))

(declare-fun b!1074914 () Bool)

(assert (=> b!1074914 (= e!680639 (matchR!1485 lt!361474 s!10566))))

(declare-fun b!1074915 () Bool)

(assert (=> b!1074915 (= e!680642 (= (++!2819 (_1!6632 (get!3672 lt!361569)) (_2!6632 (get!3672 lt!361569))) s!10566))))

(declare-fun b!1074916 () Bool)

(declare-fun res!479287 () Bool)

(assert (=> b!1074916 (=> (not res!479287) (not e!680642))))

(assert (=> b!1074916 (= res!479287 (matchR!1485 lt!361474 (_2!6632 (get!3672 lt!361569))))))

(declare-fun b!1074917 () Bool)

(declare-fun lt!361567 () Unit!15573)

(declare-fun lt!361568 () Unit!15573)

(assert (=> b!1074917 (= lt!361567 lt!361568)))

(assert (=> b!1074917 (= (++!2819 (++!2819 Nil!10163 (Cons!10163 (h!15564 s!10566) Nil!10163)) (t!101225 s!10566)) s!10566)))

(assert (=> b!1074917 (= lt!361568 (lemmaMoveElementToOtherListKeepsConcatEq!412 Nil!10163 (h!15564 s!10566) (t!101225 s!10566) s!10566))))

(assert (=> b!1074917 (= e!680641 (findConcatSeparation!554 lt!361476 lt!361474 (++!2819 Nil!10163 (Cons!10163 (h!15564 s!10566) Nil!10163)) (t!101225 s!10566) s!10566))))

(declare-fun b!1074918 () Bool)

(declare-fun res!479288 () Bool)

(assert (=> b!1074918 (=> (not res!479288) (not e!680642))))

(assert (=> b!1074918 (= res!479288 (matchR!1485 lt!361476 (_1!6632 (get!3672 lt!361569))))))

(declare-fun b!1074919 () Bool)

(assert (=> b!1074919 (= e!680643 e!680641)))

(declare-fun c!180870 () Bool)

(assert (=> b!1074919 (= c!180870 ((_ is Nil!10163) s!10566))))

(assert (= (and d!302940 res!479289) b!1074914))

(assert (= (and d!302940 c!180871) b!1074913))

(assert (= (and d!302940 (not c!180871)) b!1074919))

(assert (= (and b!1074919 c!180870) b!1074912))

(assert (= (and b!1074919 (not c!180870)) b!1074917))

(assert (= (and d!302940 res!479285) b!1074918))

(assert (= (and b!1074918 res!479288) b!1074916))

(assert (= (and b!1074916 res!479287) b!1074915))

(assert (= (and d!302940 (not res!479286)) b!1074911))

(declare-fun m!1228457 () Bool)

(assert (=> b!1074918 m!1228457))

(declare-fun m!1228459 () Bool)

(assert (=> b!1074918 m!1228459))

(assert (=> b!1074916 m!1228457))

(declare-fun m!1228461 () Bool)

(assert (=> b!1074916 m!1228461))

(assert (=> b!1074914 m!1228097))

(assert (=> b!1074915 m!1228457))

(declare-fun m!1228463 () Bool)

(assert (=> b!1074915 m!1228463))

(declare-fun m!1228465 () Bool)

(assert (=> d!302940 m!1228465))

(declare-fun m!1228467 () Bool)

(assert (=> d!302940 m!1228467))

(assert (=> d!302940 m!1228433))

(assert (=> b!1074917 m!1228387))

(assert (=> b!1074917 m!1228387))

(assert (=> b!1074917 m!1228389))

(assert (=> b!1074917 m!1228391))

(assert (=> b!1074917 m!1228387))

(declare-fun m!1228469 () Bool)

(assert (=> b!1074917 m!1228469))

(assert (=> b!1074911 m!1228465))

(assert (=> b!1074324 d!302940))

(declare-fun d!302942 () Bool)

(declare-fun lt!361572 () Int)

(assert (=> d!302942 (>= lt!361572 0)))

(declare-fun e!680646 () Int)

(assert (=> d!302942 (= lt!361572 e!680646)))

(declare-fun c!180874 () Bool)

(assert (=> d!302942 (= c!180874 ((_ is Nil!10163) s!10566))))

(assert (=> d!302942 (= (size!8008 s!10566) lt!361572)))

(declare-fun b!1074924 () Bool)

(assert (=> b!1074924 (= e!680646 0)))

(declare-fun b!1074925 () Bool)

(assert (=> b!1074925 (= e!680646 (+ 1 (size!8008 (t!101225 s!10566))))))

(assert (= (and d!302942 c!180874) b!1074924))

(assert (= (and d!302942 (not c!180874)) b!1074925))

(declare-fun m!1228471 () Bool)

(assert (=> b!1074925 m!1228471))

(assert (=> b!1074319 d!302942))

(declare-fun d!302944 () Bool)

(declare-fun lt!361573 () Int)

(assert (=> d!302944 (>= lt!361573 0)))

(declare-fun e!680647 () Int)

(assert (=> d!302944 (= lt!361573 e!680647)))

(declare-fun c!180875 () Bool)

(assert (=> d!302944 (= c!180875 ((_ is Nil!10163) (_2!6632 lt!361481)))))

(assert (=> d!302944 (= (size!8008 (_2!6632 lt!361481)) lt!361573)))

(declare-fun b!1074926 () Bool)

(assert (=> b!1074926 (= e!680647 0)))

(declare-fun b!1074927 () Bool)

(assert (=> b!1074927 (= e!680647 (+ 1 (size!8008 (t!101225 (_2!6632 lt!361481)))))))

(assert (= (and d!302944 c!180875) b!1074926))

(assert (= (and d!302944 (not c!180875)) b!1074927))

(declare-fun m!1228473 () Bool)

(assert (=> b!1074927 m!1228473))

(assert (=> b!1074319 d!302944))

(declare-fun b!1074928 () Bool)

(declare-fun e!680648 () Bool)

(assert (=> b!1074928 (= e!680648 (nullable!1036 (reg!3278 r!15766)))))

(declare-fun bm!78536 () Bool)

(declare-fun call!78541 () Bool)

(assert (=> bm!78536 (= call!78541 (isEmpty!6592 (_1!6632 lt!361481)))))

(declare-fun b!1074929 () Bool)

(declare-fun res!479293 () Bool)

(declare-fun e!680652 () Bool)

(assert (=> b!1074929 (=> res!479293 e!680652)))

(assert (=> b!1074929 (= res!479293 (not (isEmpty!6592 (tail!1551 (_1!6632 lt!361481)))))))

(declare-fun b!1074930 () Bool)

(assert (=> b!1074930 (= e!680648 (matchR!1485 (derivativeStep!834 (reg!3278 r!15766) (head!1989 (_1!6632 lt!361481))) (tail!1551 (_1!6632 lt!361481))))))

(declare-fun b!1074931 () Bool)

(assert (=> b!1074931 (= e!680652 (not (= (head!1989 (_1!6632 lt!361481)) (c!180726 (reg!3278 r!15766)))))))

(declare-fun b!1074932 () Bool)

(declare-fun e!680649 () Bool)

(assert (=> b!1074932 (= e!680649 (= (head!1989 (_1!6632 lt!361481)) (c!180726 (reg!3278 r!15766))))))

(declare-fun b!1074933 () Bool)

(declare-fun res!479290 () Bool)

(assert (=> b!1074933 (=> (not res!479290) (not e!680649))))

(assert (=> b!1074933 (= res!479290 (not call!78541))))

(declare-fun b!1074934 () Bool)

(declare-fun e!680650 () Bool)

(declare-fun e!680654 () Bool)

(assert (=> b!1074934 (= e!680650 e!680654)))

(declare-fun c!180877 () Bool)

(assert (=> b!1074934 (= c!180877 ((_ is EmptyLang!2949) (reg!3278 r!15766)))))

(declare-fun b!1074935 () Bool)

(declare-fun res!479292 () Bool)

(declare-fun e!680651 () Bool)

(assert (=> b!1074935 (=> res!479292 e!680651)))

(assert (=> b!1074935 (= res!479292 e!680649)))

(declare-fun res!479294 () Bool)

(assert (=> b!1074935 (=> (not res!479294) (not e!680649))))

(declare-fun lt!361574 () Bool)

(assert (=> b!1074935 (= res!479294 lt!361574)))

(declare-fun b!1074936 () Bool)

(assert (=> b!1074936 (= e!680654 (not lt!361574))))

(declare-fun b!1074937 () Bool)

(declare-fun e!680653 () Bool)

(assert (=> b!1074937 (= e!680651 e!680653)))

(declare-fun res!479297 () Bool)

(assert (=> b!1074937 (=> (not res!479297) (not e!680653))))

(assert (=> b!1074937 (= res!479297 (not lt!361574))))

(declare-fun b!1074938 () Bool)

(assert (=> b!1074938 (= e!680653 e!680652)))

(declare-fun res!479291 () Bool)

(assert (=> b!1074938 (=> res!479291 e!680652)))

(assert (=> b!1074938 (= res!479291 call!78541)))

(declare-fun b!1074939 () Bool)

(assert (=> b!1074939 (= e!680650 (= lt!361574 call!78541))))

(declare-fun d!302946 () Bool)

(assert (=> d!302946 e!680650))

(declare-fun c!180878 () Bool)

(assert (=> d!302946 (= c!180878 ((_ is EmptyExpr!2949) (reg!3278 r!15766)))))

(assert (=> d!302946 (= lt!361574 e!680648)))

(declare-fun c!180876 () Bool)

(assert (=> d!302946 (= c!180876 (isEmpty!6592 (_1!6632 lt!361481)))))

(assert (=> d!302946 (validRegex!1418 (reg!3278 r!15766))))

(assert (=> d!302946 (= (matchR!1485 (reg!3278 r!15766) (_1!6632 lt!361481)) lt!361574)))

(declare-fun b!1074940 () Bool)

(declare-fun res!479296 () Bool)

(assert (=> b!1074940 (=> (not res!479296) (not e!680649))))

(assert (=> b!1074940 (= res!479296 (isEmpty!6592 (tail!1551 (_1!6632 lt!361481))))))

(declare-fun b!1074941 () Bool)

(declare-fun res!479295 () Bool)

(assert (=> b!1074941 (=> res!479295 e!680651)))

(assert (=> b!1074941 (= res!479295 (not ((_ is ElementMatch!2949) (reg!3278 r!15766))))))

(assert (=> b!1074941 (= e!680654 e!680651)))

(assert (= (and d!302946 c!180876) b!1074928))

(assert (= (and d!302946 (not c!180876)) b!1074930))

(assert (= (and d!302946 c!180878) b!1074939))

(assert (= (and d!302946 (not c!180878)) b!1074934))

(assert (= (and b!1074934 c!180877) b!1074936))

(assert (= (and b!1074934 (not c!180877)) b!1074941))

(assert (= (and b!1074941 (not res!479295)) b!1074935))

(assert (= (and b!1074935 res!479294) b!1074933))

(assert (= (and b!1074933 res!479290) b!1074940))

(assert (= (and b!1074940 res!479296) b!1074932))

(assert (= (and b!1074935 (not res!479292)) b!1074937))

(assert (= (and b!1074937 res!479297) b!1074938))

(assert (= (and b!1074938 (not res!479291)) b!1074929))

(assert (= (and b!1074929 (not res!479293)) b!1074931))

(assert (= (or b!1074939 b!1074933 b!1074938) bm!78536))

(declare-fun m!1228475 () Bool)

(assert (=> b!1074930 m!1228475))

(assert (=> b!1074930 m!1228475))

(declare-fun m!1228477 () Bool)

(assert (=> b!1074930 m!1228477))

(declare-fun m!1228479 () Bool)

(assert (=> b!1074930 m!1228479))

(assert (=> b!1074930 m!1228477))

(assert (=> b!1074930 m!1228479))

(declare-fun m!1228481 () Bool)

(assert (=> b!1074930 m!1228481))

(assert (=> b!1074931 m!1228475))

(assert (=> d!302946 m!1228069))

(assert (=> d!302946 m!1228267))

(assert (=> b!1074932 m!1228475))

(assert (=> b!1074940 m!1228479))

(assert (=> b!1074940 m!1228479))

(declare-fun m!1228483 () Bool)

(assert (=> b!1074940 m!1228483))

(assert (=> bm!78536 m!1228069))

(assert (=> b!1074929 m!1228479))

(assert (=> b!1074929 m!1228479))

(assert (=> b!1074929 m!1228483))

(assert (=> b!1074928 m!1228107))

(assert (=> b!1074319 d!302946))

(declare-fun d!302948 () Bool)

(assert (=> d!302948 (= (matchR!1485 (reg!3278 r!15766) (_1!6632 lt!361481)) (matchR!1485 (removeUselessConcat!490 (reg!3278 r!15766)) (_1!6632 lt!361481)))))

(declare-fun lt!361577 () Unit!15573)

(declare-fun choose!6850 (Regex!2949 List!10179) Unit!15573)

(assert (=> d!302948 (= lt!361577 (choose!6850 (reg!3278 r!15766) (_1!6632 lt!361481)))))

(assert (=> d!302948 (validRegex!1418 (reg!3278 r!15766))))

(assert (=> d!302948 (= (lemmaRemoveUselessConcatSound!282 (reg!3278 r!15766) (_1!6632 lt!361481)) lt!361577)))

(declare-fun bs!254199 () Bool)

(assert (= bs!254199 d!302948))

(assert (=> bs!254199 m!1228133))

(assert (=> bs!254199 m!1228103))

(declare-fun m!1228485 () Bool)

(assert (=> bs!254199 m!1228485))

(declare-fun m!1228487 () Bool)

(assert (=> bs!254199 m!1228487))

(assert (=> bs!254199 m!1228267))

(assert (=> bs!254199 m!1228103))

(assert (=> b!1074319 d!302948))

(declare-fun b!1074942 () Bool)

(declare-fun e!680655 () Bool)

(assert (=> b!1074942 (= e!680655 (nullable!1036 lt!361476))))

(declare-fun bm!78537 () Bool)

(declare-fun call!78542 () Bool)

(assert (=> bm!78537 (= call!78542 (isEmpty!6592 (_1!6632 lt!361481)))))

(declare-fun b!1074943 () Bool)

(declare-fun res!479301 () Bool)

(declare-fun e!680659 () Bool)

(assert (=> b!1074943 (=> res!479301 e!680659)))

(assert (=> b!1074943 (= res!479301 (not (isEmpty!6592 (tail!1551 (_1!6632 lt!361481)))))))

(declare-fun b!1074944 () Bool)

(assert (=> b!1074944 (= e!680655 (matchR!1485 (derivativeStep!834 lt!361476 (head!1989 (_1!6632 lt!361481))) (tail!1551 (_1!6632 lt!361481))))))

(declare-fun b!1074945 () Bool)

(assert (=> b!1074945 (= e!680659 (not (= (head!1989 (_1!6632 lt!361481)) (c!180726 lt!361476))))))

(declare-fun b!1074946 () Bool)

(declare-fun e!680656 () Bool)

(assert (=> b!1074946 (= e!680656 (= (head!1989 (_1!6632 lt!361481)) (c!180726 lt!361476)))))

(declare-fun b!1074947 () Bool)

(declare-fun res!479298 () Bool)

(assert (=> b!1074947 (=> (not res!479298) (not e!680656))))

(assert (=> b!1074947 (= res!479298 (not call!78542))))

(declare-fun b!1074948 () Bool)

(declare-fun e!680657 () Bool)

(declare-fun e!680661 () Bool)

(assert (=> b!1074948 (= e!680657 e!680661)))

(declare-fun c!180880 () Bool)

(assert (=> b!1074948 (= c!180880 ((_ is EmptyLang!2949) lt!361476))))

(declare-fun b!1074949 () Bool)

(declare-fun res!479300 () Bool)

(declare-fun e!680658 () Bool)

(assert (=> b!1074949 (=> res!479300 e!680658)))

(assert (=> b!1074949 (= res!479300 e!680656)))

(declare-fun res!479302 () Bool)

(assert (=> b!1074949 (=> (not res!479302) (not e!680656))))

(declare-fun lt!361578 () Bool)

(assert (=> b!1074949 (= res!479302 lt!361578)))

(declare-fun b!1074950 () Bool)

(assert (=> b!1074950 (= e!680661 (not lt!361578))))

(declare-fun b!1074951 () Bool)

(declare-fun e!680660 () Bool)

(assert (=> b!1074951 (= e!680658 e!680660)))

(declare-fun res!479305 () Bool)

(assert (=> b!1074951 (=> (not res!479305) (not e!680660))))

(assert (=> b!1074951 (= res!479305 (not lt!361578))))

(declare-fun b!1074952 () Bool)

(assert (=> b!1074952 (= e!680660 e!680659)))

(declare-fun res!479299 () Bool)

(assert (=> b!1074952 (=> res!479299 e!680659)))

(assert (=> b!1074952 (= res!479299 call!78542)))

(declare-fun b!1074953 () Bool)

(assert (=> b!1074953 (= e!680657 (= lt!361578 call!78542))))

(declare-fun d!302950 () Bool)

(assert (=> d!302950 e!680657))

(declare-fun c!180881 () Bool)

(assert (=> d!302950 (= c!180881 ((_ is EmptyExpr!2949) lt!361476))))

(assert (=> d!302950 (= lt!361578 e!680655)))

(declare-fun c!180879 () Bool)

(assert (=> d!302950 (= c!180879 (isEmpty!6592 (_1!6632 lt!361481)))))

(assert (=> d!302950 (validRegex!1418 lt!361476)))

(assert (=> d!302950 (= (matchR!1485 lt!361476 (_1!6632 lt!361481)) lt!361578)))

(declare-fun b!1074954 () Bool)

(declare-fun res!479304 () Bool)

(assert (=> b!1074954 (=> (not res!479304) (not e!680656))))

(assert (=> b!1074954 (= res!479304 (isEmpty!6592 (tail!1551 (_1!6632 lt!361481))))))

(declare-fun b!1074955 () Bool)

(declare-fun res!479303 () Bool)

(assert (=> b!1074955 (=> res!479303 e!680658)))

(assert (=> b!1074955 (= res!479303 (not ((_ is ElementMatch!2949) lt!361476)))))

(assert (=> b!1074955 (= e!680661 e!680658)))

(assert (= (and d!302950 c!180879) b!1074942))

(assert (= (and d!302950 (not c!180879)) b!1074944))

(assert (= (and d!302950 c!180881) b!1074953))

(assert (= (and d!302950 (not c!180881)) b!1074948))

(assert (= (and b!1074948 c!180880) b!1074950))

(assert (= (and b!1074948 (not c!180880)) b!1074955))

(assert (= (and b!1074955 (not res!479303)) b!1074949))

(assert (= (and b!1074949 res!479302) b!1074947))

(assert (= (and b!1074947 res!479298) b!1074954))

(assert (= (and b!1074954 res!479304) b!1074946))

(assert (= (and b!1074949 (not res!479300)) b!1074951))

(assert (= (and b!1074951 res!479305) b!1074952))

(assert (= (and b!1074952 (not res!479299)) b!1074943))

(assert (= (and b!1074943 (not res!479301)) b!1074945))

(assert (= (or b!1074953 b!1074947 b!1074952) bm!78537))

(assert (=> b!1074944 m!1228475))

(assert (=> b!1074944 m!1228475))

(declare-fun m!1228489 () Bool)

(assert (=> b!1074944 m!1228489))

(assert (=> b!1074944 m!1228479))

(assert (=> b!1074944 m!1228489))

(assert (=> b!1074944 m!1228479))

(declare-fun m!1228491 () Bool)

(assert (=> b!1074944 m!1228491))

(assert (=> b!1074945 m!1228475))

(assert (=> d!302950 m!1228069))

(assert (=> d!302950 m!1228433))

(assert (=> b!1074946 m!1228475))

(assert (=> b!1074954 m!1228479))

(assert (=> b!1074954 m!1228479))

(assert (=> b!1074954 m!1228483))

(assert (=> bm!78537 m!1228069))

(assert (=> b!1074943 m!1228479))

(assert (=> b!1074943 m!1228479))

(assert (=> b!1074943 m!1228483))

(declare-fun m!1228493 () Bool)

(assert (=> b!1074942 m!1228493))

(assert (=> b!1074318 d!302950))

(declare-fun d!302952 () Bool)

(assert (=> d!302952 (= (get!3672 lt!361480) (v!19864 lt!361480))))

(assert (=> b!1074318 d!302952))

(declare-fun d!302954 () Bool)

(declare-fun lt!361579 () Int)

(assert (=> d!302954 (>= lt!361579 0)))

(declare-fun e!680662 () Int)

(assert (=> d!302954 (= lt!361579 e!680662)))

(declare-fun c!180882 () Bool)

(assert (=> d!302954 (= c!180882 ((_ is Nil!10163) (_1!6632 lt!361481)))))

(assert (=> d!302954 (= (size!8008 (_1!6632 lt!361481)) lt!361579)))

(declare-fun b!1074956 () Bool)

(assert (=> b!1074956 (= e!680662 0)))

(declare-fun b!1074957 () Bool)

(assert (=> b!1074957 (= e!680662 (+ 1 (size!8008 (t!101225 (_1!6632 lt!361481)))))))

(assert (= (and d!302954 c!180882) b!1074956))

(assert (= (and d!302954 (not c!180882)) b!1074957))

(declare-fun m!1228495 () Bool)

(assert (=> b!1074957 m!1228495))

(assert (=> b!1074313 d!302954))

(declare-fun b!1074962 () Bool)

(declare-fun e!680665 () Bool)

(declare-fun tp!321861 () Bool)

(assert (=> b!1074962 (= e!680665 (and tp_is_empty!5541 tp!321861))))

(assert (=> b!1074322 (= tp!321819 e!680665)))

(assert (= (and b!1074322 ((_ is Cons!10163) (t!101225 s!10566))) b!1074962))

(declare-fun b!1074974 () Bool)

(declare-fun e!680668 () Bool)

(declare-fun tp!321876 () Bool)

(declare-fun tp!321873 () Bool)

(assert (=> b!1074974 (= e!680668 (and tp!321876 tp!321873))))

(declare-fun b!1074973 () Bool)

(assert (=> b!1074973 (= e!680668 tp_is_empty!5541)))

(declare-fun b!1074975 () Bool)

(declare-fun tp!321875 () Bool)

(assert (=> b!1074975 (= e!680668 tp!321875)))

(declare-fun b!1074976 () Bool)

(declare-fun tp!321872 () Bool)

(declare-fun tp!321874 () Bool)

(assert (=> b!1074976 (= e!680668 (and tp!321872 tp!321874))))

(assert (=> b!1074316 (= tp!321818 e!680668)))

(assert (= (and b!1074316 ((_ is ElementMatch!2949) (reg!3278 r!15766))) b!1074973))

(assert (= (and b!1074316 ((_ is Concat!4782) (reg!3278 r!15766))) b!1074974))

(assert (= (and b!1074316 ((_ is Star!2949) (reg!3278 r!15766))) b!1074975))

(assert (= (and b!1074316 ((_ is Union!2949) (reg!3278 r!15766))) b!1074976))

(declare-fun b!1074978 () Bool)

(declare-fun e!680669 () Bool)

(declare-fun tp!321881 () Bool)

(declare-fun tp!321878 () Bool)

(assert (=> b!1074978 (= e!680669 (and tp!321881 tp!321878))))

(declare-fun b!1074977 () Bool)

(assert (=> b!1074977 (= e!680669 tp_is_empty!5541)))

(declare-fun b!1074979 () Bool)

(declare-fun tp!321880 () Bool)

(assert (=> b!1074979 (= e!680669 tp!321880)))

(declare-fun b!1074980 () Bool)

(declare-fun tp!321877 () Bool)

(declare-fun tp!321879 () Bool)

(assert (=> b!1074980 (= e!680669 (and tp!321877 tp!321879))))

(assert (=> b!1074327 (= tp!321820 e!680669)))

(assert (= (and b!1074327 ((_ is ElementMatch!2949) (regOne!6411 r!15766))) b!1074977))

(assert (= (and b!1074327 ((_ is Concat!4782) (regOne!6411 r!15766))) b!1074978))

(assert (= (and b!1074327 ((_ is Star!2949) (regOne!6411 r!15766))) b!1074979))

(assert (= (and b!1074327 ((_ is Union!2949) (regOne!6411 r!15766))) b!1074980))

(declare-fun b!1074982 () Bool)

(declare-fun e!680670 () Bool)

(declare-fun tp!321886 () Bool)

(declare-fun tp!321883 () Bool)

(assert (=> b!1074982 (= e!680670 (and tp!321886 tp!321883))))

(declare-fun b!1074981 () Bool)

(assert (=> b!1074981 (= e!680670 tp_is_empty!5541)))

(declare-fun b!1074983 () Bool)

(declare-fun tp!321885 () Bool)

(assert (=> b!1074983 (= e!680670 tp!321885)))

(declare-fun b!1074984 () Bool)

(declare-fun tp!321882 () Bool)

(declare-fun tp!321884 () Bool)

(assert (=> b!1074984 (= e!680670 (and tp!321882 tp!321884))))

(assert (=> b!1074327 (= tp!321817 e!680670)))

(assert (= (and b!1074327 ((_ is ElementMatch!2949) (regTwo!6411 r!15766))) b!1074981))

(assert (= (and b!1074327 ((_ is Concat!4782) (regTwo!6411 r!15766))) b!1074982))

(assert (= (and b!1074327 ((_ is Star!2949) (regTwo!6411 r!15766))) b!1074983))

(assert (= (and b!1074327 ((_ is Union!2949) (regTwo!6411 r!15766))) b!1074984))

(declare-fun b!1074986 () Bool)

(declare-fun e!680671 () Bool)

(declare-fun tp!321891 () Bool)

(declare-fun tp!321888 () Bool)

(assert (=> b!1074986 (= e!680671 (and tp!321891 tp!321888))))

(declare-fun b!1074985 () Bool)

(assert (=> b!1074985 (= e!680671 tp_is_empty!5541)))

(declare-fun b!1074987 () Bool)

(declare-fun tp!321890 () Bool)

(assert (=> b!1074987 (= e!680671 tp!321890)))

(declare-fun b!1074988 () Bool)

(declare-fun tp!321887 () Bool)

(declare-fun tp!321889 () Bool)

(assert (=> b!1074988 (= e!680671 (and tp!321887 tp!321889))))

(assert (=> b!1074320 (= tp!321816 e!680671)))

(assert (= (and b!1074320 ((_ is ElementMatch!2949) (regOne!6410 r!15766))) b!1074985))

(assert (= (and b!1074320 ((_ is Concat!4782) (regOne!6410 r!15766))) b!1074986))

(assert (= (and b!1074320 ((_ is Star!2949) (regOne!6410 r!15766))) b!1074987))

(assert (= (and b!1074320 ((_ is Union!2949) (regOne!6410 r!15766))) b!1074988))

(declare-fun b!1074990 () Bool)

(declare-fun e!680672 () Bool)

(declare-fun tp!321896 () Bool)

(declare-fun tp!321893 () Bool)

(assert (=> b!1074990 (= e!680672 (and tp!321896 tp!321893))))

(declare-fun b!1074989 () Bool)

(assert (=> b!1074989 (= e!680672 tp_is_empty!5541)))

(declare-fun b!1074991 () Bool)

(declare-fun tp!321895 () Bool)

(assert (=> b!1074991 (= e!680672 tp!321895)))

(declare-fun b!1074992 () Bool)

(declare-fun tp!321892 () Bool)

(declare-fun tp!321894 () Bool)

(assert (=> b!1074992 (= e!680672 (and tp!321892 tp!321894))))

(assert (=> b!1074320 (= tp!321815 e!680672)))

(assert (= (and b!1074320 ((_ is ElementMatch!2949) (regTwo!6410 r!15766))) b!1074989))

(assert (= (and b!1074320 ((_ is Concat!4782) (regTwo!6410 r!15766))) b!1074990))

(assert (= (and b!1074320 ((_ is Star!2949) (regTwo!6410 r!15766))) b!1074991))

(assert (= (and b!1074320 ((_ is Union!2949) (regTwo!6410 r!15766))) b!1074992))

(check-sat (not b!1074761) (not bm!78534) (not b!1074831) (not b!1074757) (not d!302860) (not b!1074927) (not b!1074945) (not b!1074980) (not d!302912) (not b!1074916) (not b!1074887) (not d!302946) (not b!1074974) (not b!1074976) (not b!1074990) (not d!302910) (not b!1074465) (not b!1074929) (not b!1074758) (not b!1074914) (not d!302938) (not bm!78514) (not d!302914) (not d!302830) (not d!302934) (not bm!78482) (not d!302838) (not b!1074550) (not b!1074954) (not bm!78487) (not b!1074943) (not b!1074826) (not b!1074979) (not b!1074833) (not bm!78535) (not b!1074838) (not bm!78515) (not b!1074987) (not bm!78517) (not d!302936) (not b!1074983) (not b!1074839) (not d!302918) (not b!1074889) (not d!302948) (not b!1074932) (not b!1074944) (not d!302930) (not b!1074837) (not b!1074760) (not d!302900) (not b!1074978) (not b!1074946) (not b!1074962) (not b!1074886) (not d!302916) (not d!302940) (not b!1074975) (not bm!78486) (not d!302884) (not b!1074599) (not b!1074942) (not b!1074466) (not b!1074931) (not b!1074832) (not b!1074911) (not b!1074884) (not b!1074888) (not bm!78483) (not d!302908) (not d!302932) (not bm!78528) (not b!1074986) (not d!302920) (not b!1074606) (not bm!78537) tp_is_empty!5541 (not b!1074918) (not b!1074915) (not b!1074992) (not b!1074830) (not b!1074930) (not b!1074909) (not bm!78536) (not b!1074940) (not b!1074847) (not b!1074759) (not b!1074836) (not b!1074835) (not b!1074917) (not d!302904) (not b!1074902) (not bm!78533) (not b!1074829) (not d!302906) (not b!1074988) (not b!1074984) (not b!1074898) (not b!1074991) (not bm!78507) (not b!1074982) (not d!302924) (not bm!78529) (not b!1074769) (not b!1074557) (not b!1074890) (not b!1074928) (not b!1074925) (not d!302950) (not b!1074791) (not b!1074957))
(check-sat)
