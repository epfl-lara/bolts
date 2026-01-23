; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!79020 () Bool)

(assert start!79020)

(declare-fun b!874129 () Bool)

(assert (=> b!874129 true))

(assert (=> b!874129 true))

(declare-fun lambda!26296 () Int)

(declare-fun lambda!26295 () Int)

(assert (=> b!874129 (not (= lambda!26296 lambda!26295))))

(assert (=> b!874129 true))

(assert (=> b!874129 true))

(declare-fun b!874125 () Bool)

(declare-fun e!574748 () Bool)

(declare-fun tp!276580 () Bool)

(assert (=> b!874125 (= e!574748 tp!276580)))

(declare-fun b!874126 () Bool)

(declare-fun tp!276581 () Bool)

(declare-fun tp!276582 () Bool)

(assert (=> b!874126 (= e!574748 (and tp!276581 tp!276582))))

(declare-fun b!874127 () Bool)

(declare-fun tp!276578 () Bool)

(declare-fun tp!276577 () Bool)

(assert (=> b!874127 (= e!574748 (and tp!276578 tp!276577))))

(declare-fun b!874128 () Bool)

(declare-fun e!574746 () Bool)

(declare-fun e!574749 () Bool)

(assert (=> b!874128 (= e!574746 (not e!574749))))

(declare-fun res!397434 () Bool)

(assert (=> b!874128 (=> res!397434 e!574749)))

(declare-fun lt!329469 () Bool)

(declare-datatypes ((C!4994 0))(
  ( (C!4995 (val!2745 Int)) )
))
(declare-datatypes ((Regex!2212 0))(
  ( (ElementMatch!2212 (c!141373 C!4994)) (Concat!4045 (regOne!4936 Regex!2212) (regTwo!4936 Regex!2212)) (EmptyExpr!2212) (Star!2212 (reg!2541 Regex!2212)) (EmptyLang!2212) (Union!2212 (regOne!4937 Regex!2212) (regTwo!4937 Regex!2212)) )
))
(declare-fun r!15766 () Regex!2212)

(assert (=> b!874128 (= res!397434 (or (not lt!329469) (not (is-Concat!4045 r!15766)) (not (is-EmptyExpr!2212 (regOne!4936 r!15766)))))))

(declare-datatypes ((List!9442 0))(
  ( (Nil!9426) (Cons!9426 (h!14827 C!4994) (t!100488 List!9442)) )
))
(declare-fun s!10566 () List!9442)

(declare-fun matchRSpec!13 (Regex!2212 List!9442) Bool)

(assert (=> b!874128 (= lt!329469 (matchRSpec!13 r!15766 s!10566))))

(declare-fun matchR!750 (Regex!2212 List!9442) Bool)

(assert (=> b!874128 (= lt!329469 (matchR!750 r!15766 s!10566))))

(declare-datatypes ((Unit!14003 0))(
  ( (Unit!14004) )
))
(declare-fun lt!329467 () Unit!14003)

(declare-fun mainMatchTheorem!13 (Regex!2212 List!9442) Unit!14003)

(assert (=> b!874128 (= lt!329467 (mainMatchTheorem!13 r!15766 s!10566))))

(declare-fun e!574750 () Bool)

(assert (=> b!874129 (= e!574749 e!574750)))

(declare-fun res!397432 () Bool)

(assert (=> b!874129 (=> res!397432 e!574750)))

(declare-fun isEmpty!5610 (List!9442) Bool)

(assert (=> b!874129 (= res!397432 (isEmpty!5610 s!10566))))

(declare-fun Exists!11 (Int) Bool)

(assert (=> b!874129 (= (Exists!11 lambda!26295) (Exists!11 lambda!26296))))

(declare-fun lt!329466 () Unit!14003)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!7 (Regex!2212 Regex!2212 List!9442) Unit!14003)

(assert (=> b!874129 (= lt!329466 (lemmaExistCutMatchRandMatchRSpecEquivalent!7 EmptyExpr!2212 (regTwo!4936 r!15766) s!10566))))

(declare-datatypes ((tuple2!10522 0))(
  ( (tuple2!10523 (_1!6087 List!9442) (_2!6087 List!9442)) )
))
(declare-datatypes ((Option!1903 0))(
  ( (None!1902) (Some!1902 (v!19319 tuple2!10522)) )
))
(declare-fun isDefined!1545 (Option!1903) Bool)

(declare-fun findConcatSeparation!9 (Regex!2212 Regex!2212 List!9442 List!9442 List!9442) Option!1903)

(assert (=> b!874129 (= (isDefined!1545 (findConcatSeparation!9 EmptyExpr!2212 (regTwo!4936 r!15766) Nil!9426 s!10566 s!10566)) (Exists!11 lambda!26295))))

(declare-fun lt!329468 () Unit!14003)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!9 (Regex!2212 Regex!2212 List!9442) Unit!14003)

(assert (=> b!874129 (= lt!329468 (lemmaFindConcatSeparationEquivalentToExists!9 EmptyExpr!2212 (regTwo!4936 r!15766) s!10566))))

(declare-fun b!874130 () Bool)

(declare-fun validRegex!681 (Regex!2212) Bool)

(assert (=> b!874130 (= e!574750 (validRegex!681 (regTwo!4936 r!15766)))))

(declare-fun b!874124 () Bool)

(declare-fun e!574747 () Bool)

(declare-fun tp_is_empty!4067 () Bool)

(declare-fun tp!276579 () Bool)

(assert (=> b!874124 (= e!574747 (and tp_is_empty!4067 tp!276579))))

(declare-fun res!397433 () Bool)

(assert (=> start!79020 (=> (not res!397433) (not e!574746))))

(assert (=> start!79020 (= res!397433 (validRegex!681 r!15766))))

(assert (=> start!79020 e!574746))

(assert (=> start!79020 e!574748))

(assert (=> start!79020 e!574747))

(declare-fun b!874131 () Bool)

(declare-fun res!397431 () Bool)

(assert (=> b!874131 (=> res!397431 e!574750)))

(assert (=> b!874131 (= res!397431 false)))

(declare-fun b!874132 () Bool)

(assert (=> b!874132 (= e!574748 tp_is_empty!4067)))

(assert (= (and start!79020 res!397433) b!874128))

(assert (= (and b!874128 (not res!397434)) b!874129))

(assert (= (and b!874129 (not res!397432)) b!874131))

(assert (= (and b!874131 (not res!397431)) b!874130))

(assert (= (and start!79020 (is-ElementMatch!2212 r!15766)) b!874132))

(assert (= (and start!79020 (is-Concat!4045 r!15766)) b!874126))

(assert (= (and start!79020 (is-Star!2212 r!15766)) b!874125))

(assert (= (and start!79020 (is-Union!2212 r!15766)) b!874127))

(assert (= (and start!79020 (is-Cons!9426 s!10566)) b!874124))

(declare-fun m!1126221 () Bool)

(assert (=> b!874128 m!1126221))

(declare-fun m!1126223 () Bool)

(assert (=> b!874128 m!1126223))

(declare-fun m!1126225 () Bool)

(assert (=> b!874128 m!1126225))

(declare-fun m!1126227 () Bool)

(assert (=> b!874129 m!1126227))

(declare-fun m!1126229 () Bool)

(assert (=> b!874129 m!1126229))

(declare-fun m!1126231 () Bool)

(assert (=> b!874129 m!1126231))

(declare-fun m!1126233 () Bool)

(assert (=> b!874129 m!1126233))

(declare-fun m!1126235 () Bool)

(assert (=> b!874129 m!1126235))

(assert (=> b!874129 m!1126233))

(declare-fun m!1126237 () Bool)

(assert (=> b!874129 m!1126237))

(declare-fun m!1126239 () Bool)

(assert (=> b!874129 m!1126239))

(assert (=> b!874129 m!1126229))

(declare-fun m!1126241 () Bool)

(assert (=> b!874130 m!1126241))

(declare-fun m!1126243 () Bool)

(assert (=> start!79020 m!1126243))

(push 1)

(assert (not b!874128))

(assert (not b!874126))

(assert (not b!874124))

(assert (not b!874129))

(assert tp_is_empty!4067)

(assert (not b!874130))

(assert (not start!79020))

(assert (not b!874127))

(assert (not b!874125))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!233956 () Bool)

(declare-fun b!874216 () Bool)

(assert (= bs!233956 (and b!874216 b!874129)))

(declare-fun lambda!26309 () Int)

(assert (=> bs!233956 (not (= lambda!26309 lambda!26295))))

(assert (=> bs!233956 (not (= lambda!26309 lambda!26296))))

(assert (=> b!874216 true))

(assert (=> b!874216 true))

(declare-fun bs!233957 () Bool)

(declare-fun b!874218 () Bool)

(assert (= bs!233957 (and b!874218 b!874129)))

(declare-fun lambda!26310 () Int)

(assert (=> bs!233957 (not (= lambda!26310 lambda!26295))))

(assert (=> bs!233957 (= (= (regOne!4936 r!15766) EmptyExpr!2212) (= lambda!26310 lambda!26296))))

(declare-fun bs!233958 () Bool)

(assert (= bs!233958 (and b!874218 b!874216)))

(assert (=> bs!233958 (not (= lambda!26310 lambda!26309))))

(assert (=> b!874218 true))

(assert (=> b!874218 true))

(declare-fun b!874212 () Bool)

(declare-fun e!574796 () Bool)

(declare-fun e!574793 () Bool)

(assert (=> b!874212 (= e!574796 e!574793)))

(declare-fun res!397475 () Bool)

(assert (=> b!874212 (= res!397475 (not (is-EmptyLang!2212 r!15766)))))

(assert (=> b!874212 (=> (not res!397475) (not e!574793))))

(declare-fun call!50786 () Bool)

(declare-fun c!141384 () Bool)

(declare-fun bm!50781 () Bool)

(assert (=> bm!50781 (= call!50786 (Exists!11 (ite c!141384 lambda!26309 lambda!26310)))))

(declare-fun b!874213 () Bool)

(declare-fun c!141383 () Bool)

(assert (=> b!874213 (= c!141383 (is-ElementMatch!2212 r!15766))))

(declare-fun e!574795 () Bool)

(assert (=> b!874213 (= e!574793 e!574795)))

(declare-fun b!874214 () Bool)

(declare-fun e!574794 () Bool)

(declare-fun e!574790 () Bool)

(assert (=> b!874214 (= e!574794 e!574790)))

(declare-fun res!397477 () Bool)

(assert (=> b!874214 (= res!397477 (matchRSpec!13 (regOne!4937 r!15766) s!10566))))

(assert (=> b!874214 (=> res!397477 e!574790)))

(declare-fun bm!50782 () Bool)

(declare-fun call!50787 () Bool)

(assert (=> bm!50782 (= call!50787 (isEmpty!5610 s!10566))))

(declare-fun b!874215 () Bool)

(declare-fun res!397476 () Bool)

(declare-fun e!574792 () Bool)

(assert (=> b!874215 (=> res!397476 e!574792)))

(assert (=> b!874215 (= res!397476 call!50787)))

(declare-fun e!574791 () Bool)

(assert (=> b!874215 (= e!574791 e!574792)))

(declare-fun b!874217 () Bool)

(declare-fun c!141385 () Bool)

(assert (=> b!874217 (= c!141385 (is-Union!2212 r!15766))))

(assert (=> b!874217 (= e!574795 e!574794)))

(assert (=> b!874218 (= e!574791 call!50786)))

(declare-fun b!874219 () Bool)

(assert (=> b!874219 (= e!574796 call!50787)))

(declare-fun b!874220 () Bool)

(assert (=> b!874220 (= e!574794 e!574791)))

(assert (=> b!874220 (= c!141384 (is-Star!2212 r!15766))))

(declare-fun b!874221 () Bool)

(assert (=> b!874221 (= e!574795 (= s!10566 (Cons!9426 (c!141373 r!15766) Nil!9426)))))

(declare-fun b!874222 () Bool)

(assert (=> b!874222 (= e!574790 (matchRSpec!13 (regTwo!4937 r!15766) s!10566))))

(assert (=> b!874216 (= e!574792 call!50786)))

(declare-fun d!275682 () Bool)

(declare-fun c!141386 () Bool)

(assert (=> d!275682 (= c!141386 (is-EmptyExpr!2212 r!15766))))

(assert (=> d!275682 (= (matchRSpec!13 r!15766 s!10566) e!574796)))

(assert (= (and d!275682 c!141386) b!874219))

(assert (= (and d!275682 (not c!141386)) b!874212))

(assert (= (and b!874212 res!397475) b!874213))

(assert (= (and b!874213 c!141383) b!874221))

(assert (= (and b!874213 (not c!141383)) b!874217))

(assert (= (and b!874217 c!141385) b!874214))

(assert (= (and b!874217 (not c!141385)) b!874220))

(assert (= (and b!874214 (not res!397477)) b!874222))

(assert (= (and b!874220 c!141384) b!874215))

(assert (= (and b!874220 (not c!141384)) b!874218))

(assert (= (and b!874215 (not res!397476)) b!874216))

(assert (= (or b!874216 b!874218) bm!50781))

(assert (= (or b!874219 b!874215) bm!50782))

(declare-fun m!1126269 () Bool)

(assert (=> bm!50781 m!1126269))

(declare-fun m!1126271 () Bool)

(assert (=> b!874214 m!1126271))

(assert (=> bm!50782 m!1126239))

(declare-fun m!1126273 () Bool)

(assert (=> b!874222 m!1126273))

(assert (=> b!874128 d!275682))

(declare-fun b!874273 () Bool)

(declare-fun e!574832 () Bool)

(declare-fun head!1519 (List!9442) C!4994)

(assert (=> b!874273 (= e!574832 (= (head!1519 s!10566) (c!141373 r!15766)))))

(declare-fun b!874274 () Bool)

(declare-fun e!574828 () Bool)

(declare-fun nullable!551 (Regex!2212) Bool)

(assert (=> b!874274 (= e!574828 (nullable!551 r!15766))))

(declare-fun b!874275 () Bool)

(declare-fun e!574833 () Bool)

(declare-fun e!574830 () Bool)

(assert (=> b!874275 (= e!574833 e!574830)))

(declare-fun res!397509 () Bool)

(assert (=> b!874275 (=> (not res!397509) (not e!574830))))

(declare-fun lt!329484 () Bool)

(assert (=> b!874275 (= res!397509 (not lt!329484))))

(declare-fun b!874276 () Bool)

(declare-fun res!397503 () Bool)

(assert (=> b!874276 (=> res!397503 e!574833)))

(assert (=> b!874276 (= res!397503 (not (is-ElementMatch!2212 r!15766)))))

(declare-fun e!574829 () Bool)

(assert (=> b!874276 (= e!574829 e!574833)))

(declare-fun b!874277 () Bool)

(declare-fun e!574831 () Bool)

(assert (=> b!874277 (= e!574830 e!574831)))

(declare-fun res!397505 () Bool)

(assert (=> b!874277 (=> res!397505 e!574831)))

(declare-fun call!50790 () Bool)

(assert (=> b!874277 (= res!397505 call!50790)))

(declare-fun d!275686 () Bool)

(declare-fun e!574827 () Bool)

(assert (=> d!275686 e!574827))

(declare-fun c!141401 () Bool)

(assert (=> d!275686 (= c!141401 (is-EmptyExpr!2212 r!15766))))

(assert (=> d!275686 (= lt!329484 e!574828)))

(declare-fun c!141403 () Bool)

(assert (=> d!275686 (= c!141403 (isEmpty!5610 s!10566))))

(assert (=> d!275686 (validRegex!681 r!15766)))

(assert (=> d!275686 (= (matchR!750 r!15766 s!10566) lt!329484)))

(declare-fun b!874278 () Bool)

(assert (=> b!874278 (= e!574827 e!574829)))

(declare-fun c!141402 () Bool)

(assert (=> b!874278 (= c!141402 (is-EmptyLang!2212 r!15766))))

(declare-fun bm!50785 () Bool)

(assert (=> bm!50785 (= call!50790 (isEmpty!5610 s!10566))))

(declare-fun b!874279 () Bool)

(assert (=> b!874279 (= e!574827 (= lt!329484 call!50790))))

(declare-fun b!874280 () Bool)

(declare-fun res!397508 () Bool)

(assert (=> b!874280 (=> res!397508 e!574831)))

(declare-fun tail!1081 (List!9442) List!9442)

(assert (=> b!874280 (= res!397508 (not (isEmpty!5610 (tail!1081 s!10566))))))

(declare-fun b!874281 () Bool)

(declare-fun res!397507 () Bool)

(assert (=> b!874281 (=> res!397507 e!574833)))

(assert (=> b!874281 (= res!397507 e!574832)))

(declare-fun res!397506 () Bool)

(assert (=> b!874281 (=> (not res!397506) (not e!574832))))

(assert (=> b!874281 (= res!397506 lt!329484)))

(declare-fun b!874282 () Bool)

(declare-fun res!397504 () Bool)

(assert (=> b!874282 (=> (not res!397504) (not e!574832))))

(assert (=> b!874282 (= res!397504 (not call!50790))))

(declare-fun b!874283 () Bool)

(assert (=> b!874283 (= e!574831 (not (= (head!1519 s!10566) (c!141373 r!15766))))))

(declare-fun b!874284 () Bool)

(declare-fun res!397502 () Bool)

(assert (=> b!874284 (=> (not res!397502) (not e!574832))))

(assert (=> b!874284 (= res!397502 (isEmpty!5610 (tail!1081 s!10566)))))

(declare-fun b!874285 () Bool)

(assert (=> b!874285 (= e!574829 (not lt!329484))))

(declare-fun b!874286 () Bool)

(declare-fun derivativeStep!366 (Regex!2212 C!4994) Regex!2212)

(assert (=> b!874286 (= e!574828 (matchR!750 (derivativeStep!366 r!15766 (head!1519 s!10566)) (tail!1081 s!10566)))))

(assert (= (and d!275686 c!141403) b!874274))

(assert (= (and d!275686 (not c!141403)) b!874286))

(assert (= (and d!275686 c!141401) b!874279))

(assert (= (and d!275686 (not c!141401)) b!874278))

(assert (= (and b!874278 c!141402) b!874285))

(assert (= (and b!874278 (not c!141402)) b!874276))

(assert (= (and b!874276 (not res!397503)) b!874281))

(assert (= (and b!874281 res!397506) b!874282))

(assert (= (and b!874282 res!397504) b!874284))

(assert (= (and b!874284 res!397502) b!874273))

(assert (= (and b!874281 (not res!397507)) b!874275))

(assert (= (and b!874275 res!397509) b!874277))

(assert (= (and b!874277 (not res!397505)) b!874280))

(assert (= (and b!874280 (not res!397508)) b!874283))

(assert (= (or b!874279 b!874277 b!874282) bm!50785))

(declare-fun m!1126275 () Bool)

(assert (=> b!874274 m!1126275))

(declare-fun m!1126277 () Bool)

(assert (=> b!874280 m!1126277))

(assert (=> b!874280 m!1126277))

(declare-fun m!1126279 () Bool)

(assert (=> b!874280 m!1126279))

(declare-fun m!1126281 () Bool)

(assert (=> b!874286 m!1126281))

(assert (=> b!874286 m!1126281))

(declare-fun m!1126283 () Bool)

(assert (=> b!874286 m!1126283))

(assert (=> b!874286 m!1126277))

(assert (=> b!874286 m!1126283))

(assert (=> b!874286 m!1126277))

(declare-fun m!1126285 () Bool)

(assert (=> b!874286 m!1126285))

(assert (=> d!275686 m!1126239))

(assert (=> d!275686 m!1126243))

(assert (=> bm!50785 m!1126239))

(assert (=> b!874273 m!1126281))

(assert (=> b!874283 m!1126281))

(assert (=> b!874284 m!1126277))

(assert (=> b!874284 m!1126277))

(assert (=> b!874284 m!1126279))

(assert (=> b!874128 d!275686))

(declare-fun d!275688 () Bool)

(assert (=> d!275688 (= (matchR!750 r!15766 s!10566) (matchRSpec!13 r!15766 s!10566))))

(declare-fun lt!329487 () Unit!14003)

(declare-fun choose!5143 (Regex!2212 List!9442) Unit!14003)

(assert (=> d!275688 (= lt!329487 (choose!5143 r!15766 s!10566))))

(assert (=> d!275688 (validRegex!681 r!15766)))

(assert (=> d!275688 (= (mainMatchTheorem!13 r!15766 s!10566) lt!329487)))

(declare-fun bs!233959 () Bool)

(assert (= bs!233959 d!275688))

(assert (=> bs!233959 m!1126223))

(assert (=> bs!233959 m!1126221))

(declare-fun m!1126287 () Bool)

(assert (=> bs!233959 m!1126287))

(assert (=> bs!233959 m!1126243))

(assert (=> b!874128 d!275688))

(declare-fun b!874315 () Bool)

(declare-fun e!574854 () Bool)

(declare-fun call!50799 () Bool)

(assert (=> b!874315 (= e!574854 call!50799)))

(declare-fun b!874316 () Bool)

(declare-fun e!574853 () Bool)

(declare-fun e!574851 () Bool)

(assert (=> b!874316 (= e!574853 e!574851)))

(declare-fun c!141408 () Bool)

(assert (=> b!874316 (= c!141408 (is-Star!2212 (regTwo!4936 r!15766)))))

(declare-fun b!874317 () Bool)

(declare-fun e!574856 () Bool)

(declare-fun call!50800 () Bool)

(assert (=> b!874317 (= e!574856 call!50800)))

(declare-fun bm!50794 () Bool)

(declare-fun call!50801 () Bool)

(declare-fun c!141409 () Bool)

(assert (=> bm!50794 (= call!50801 (validRegex!681 (ite c!141409 (regOne!4937 (regTwo!4936 r!15766)) (regOne!4936 (regTwo!4936 r!15766)))))))

(declare-fun b!874318 () Bool)

(declare-fun res!397528 () Bool)

(assert (=> b!874318 (=> (not res!397528) (not e!574854))))

(assert (=> b!874318 (= res!397528 call!50801)))

(declare-fun e!574852 () Bool)

(assert (=> b!874318 (= e!574852 e!574854)))

(declare-fun b!874320 () Bool)

(assert (=> b!874320 (= e!574851 e!574852)))

(assert (=> b!874320 (= c!141409 (is-Union!2212 (regTwo!4936 r!15766)))))

(declare-fun bm!50795 () Bool)

(assert (=> bm!50795 (= call!50800 (validRegex!681 (ite c!141408 (reg!2541 (regTwo!4936 r!15766)) (ite c!141409 (regTwo!4937 (regTwo!4936 r!15766)) (regTwo!4936 (regTwo!4936 r!15766))))))))

(declare-fun b!874321 () Bool)

(declare-fun e!574855 () Bool)

(declare-fun e!574850 () Bool)

(assert (=> b!874321 (= e!574855 e!574850)))

(declare-fun res!397530 () Bool)

(assert (=> b!874321 (=> (not res!397530) (not e!574850))))

(assert (=> b!874321 (= res!397530 call!50801)))

(declare-fun bm!50796 () Bool)

(assert (=> bm!50796 (= call!50799 call!50800)))

(declare-fun b!874322 () Bool)

(assert (=> b!874322 (= e!574851 e!574856)))

(declare-fun res!397529 () Bool)

(assert (=> b!874322 (= res!397529 (not (nullable!551 (reg!2541 (regTwo!4936 r!15766)))))))

(assert (=> b!874322 (=> (not res!397529) (not e!574856))))

(declare-fun b!874323 () Bool)

(assert (=> b!874323 (= e!574850 call!50799)))

(declare-fun b!874319 () Bool)

(declare-fun res!397531 () Bool)

(assert (=> b!874319 (=> res!397531 e!574855)))

(assert (=> b!874319 (= res!397531 (not (is-Concat!4045 (regTwo!4936 r!15766))))))

(assert (=> b!874319 (= e!574852 e!574855)))

(declare-fun d!275690 () Bool)

(declare-fun res!397532 () Bool)

(assert (=> d!275690 (=> res!397532 e!574853)))

(assert (=> d!275690 (= res!397532 (is-ElementMatch!2212 (regTwo!4936 r!15766)))))

(assert (=> d!275690 (= (validRegex!681 (regTwo!4936 r!15766)) e!574853)))

(assert (= (and d!275690 (not res!397532)) b!874316))

(assert (= (and b!874316 c!141408) b!874322))

(assert (= (and b!874316 (not c!141408)) b!874320))

(assert (= (and b!874322 res!397529) b!874317))

(assert (= (and b!874320 c!141409) b!874318))

(assert (= (and b!874320 (not c!141409)) b!874319))

(assert (= (and b!874318 res!397528) b!874315))

(assert (= (and b!874319 (not res!397531)) b!874321))

(assert (= (and b!874321 res!397530) b!874323))

(assert (= (or b!874315 b!874323) bm!50796))

(assert (= (or b!874318 b!874321) bm!50794))

(assert (= (or b!874317 bm!50796) bm!50795))

(declare-fun m!1126289 () Bool)

(assert (=> bm!50794 m!1126289))

(declare-fun m!1126291 () Bool)

(assert (=> bm!50795 m!1126291))

(declare-fun m!1126293 () Bool)

(assert (=> b!874322 m!1126293))

(assert (=> b!874130 d!275690))

(declare-fun b!874324 () Bool)

(declare-fun e!574861 () Bool)

(declare-fun call!50802 () Bool)

(assert (=> b!874324 (= e!574861 call!50802)))

(declare-fun b!874325 () Bool)

(declare-fun e!574860 () Bool)

(declare-fun e!574858 () Bool)

(assert (=> b!874325 (= e!574860 e!574858)))

(declare-fun c!141410 () Bool)

(assert (=> b!874325 (= c!141410 (is-Star!2212 r!15766))))

(declare-fun b!874326 () Bool)

(declare-fun e!574863 () Bool)

(declare-fun call!50803 () Bool)

(assert (=> b!874326 (= e!574863 call!50803)))

(declare-fun bm!50797 () Bool)

(declare-fun call!50804 () Bool)

(declare-fun c!141411 () Bool)

(assert (=> bm!50797 (= call!50804 (validRegex!681 (ite c!141411 (regOne!4937 r!15766) (regOne!4936 r!15766))))))

(declare-fun b!874327 () Bool)

(declare-fun res!397533 () Bool)

(assert (=> b!874327 (=> (not res!397533) (not e!574861))))

(assert (=> b!874327 (= res!397533 call!50804)))

(declare-fun e!574859 () Bool)

(assert (=> b!874327 (= e!574859 e!574861)))

(declare-fun b!874329 () Bool)

(assert (=> b!874329 (= e!574858 e!574859)))

(assert (=> b!874329 (= c!141411 (is-Union!2212 r!15766))))

(declare-fun bm!50798 () Bool)

(assert (=> bm!50798 (= call!50803 (validRegex!681 (ite c!141410 (reg!2541 r!15766) (ite c!141411 (regTwo!4937 r!15766) (regTwo!4936 r!15766)))))))

(declare-fun b!874330 () Bool)

(declare-fun e!574862 () Bool)

(declare-fun e!574857 () Bool)

(assert (=> b!874330 (= e!574862 e!574857)))

(declare-fun res!397535 () Bool)

(assert (=> b!874330 (=> (not res!397535) (not e!574857))))

(assert (=> b!874330 (= res!397535 call!50804)))

(declare-fun bm!50799 () Bool)

(assert (=> bm!50799 (= call!50802 call!50803)))

(declare-fun b!874331 () Bool)

(assert (=> b!874331 (= e!574858 e!574863)))

(declare-fun res!397534 () Bool)

(assert (=> b!874331 (= res!397534 (not (nullable!551 (reg!2541 r!15766))))))

(assert (=> b!874331 (=> (not res!397534) (not e!574863))))

(declare-fun b!874332 () Bool)

(assert (=> b!874332 (= e!574857 call!50802)))

(declare-fun b!874328 () Bool)

(declare-fun res!397536 () Bool)

(assert (=> b!874328 (=> res!397536 e!574862)))

(assert (=> b!874328 (= res!397536 (not (is-Concat!4045 r!15766)))))

(assert (=> b!874328 (= e!574859 e!574862)))

(declare-fun d!275692 () Bool)

(declare-fun res!397537 () Bool)

(assert (=> d!275692 (=> res!397537 e!574860)))

(assert (=> d!275692 (= res!397537 (is-ElementMatch!2212 r!15766))))

(assert (=> d!275692 (= (validRegex!681 r!15766) e!574860)))

(assert (= (and d!275692 (not res!397537)) b!874325))

(assert (= (and b!874325 c!141410) b!874331))

(assert (= (and b!874325 (not c!141410)) b!874329))

(assert (= (and b!874331 res!397534) b!874326))

(assert (= (and b!874329 c!141411) b!874327))

(assert (= (and b!874329 (not c!141411)) b!874328))

(assert (= (and b!874327 res!397533) b!874324))

(assert (= (and b!874328 (not res!397536)) b!874330))

(assert (= (and b!874330 res!397535) b!874332))

(assert (= (or b!874324 b!874332) bm!50799))

(assert (= (or b!874327 b!874330) bm!50797))

(assert (= (or b!874326 bm!50799) bm!50798))

(declare-fun m!1126295 () Bool)

(assert (=> bm!50797 m!1126295))

(declare-fun m!1126297 () Bool)

(assert (=> bm!50798 m!1126297))

(declare-fun m!1126299 () Bool)

(assert (=> b!874331 m!1126299))

(assert (=> start!79020 d!275692))

(declare-fun d!275694 () Bool)

(assert (=> d!275694 (= (isEmpty!5610 s!10566) (is-Nil!9426 s!10566))))

(assert (=> b!874129 d!275694))

(declare-fun b!874362 () Bool)

(declare-fun lt!329496 () Unit!14003)

(declare-fun lt!329495 () Unit!14003)

(assert (=> b!874362 (= lt!329496 lt!329495)))

(declare-fun ++!2447 (List!9442 List!9442) List!9442)

(assert (=> b!874362 (= (++!2447 (++!2447 Nil!9426 (Cons!9426 (h!14827 s!10566) Nil!9426)) (t!100488 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!79 (List!9442 C!4994 List!9442 List!9442) Unit!14003)

(assert (=> b!874362 (= lt!329495 (lemmaMoveElementToOtherListKeepsConcatEq!79 Nil!9426 (h!14827 s!10566) (t!100488 s!10566) s!10566))))

(declare-fun e!574885 () Option!1903)

(assert (=> b!874362 (= e!574885 (findConcatSeparation!9 EmptyExpr!2212 (regTwo!4936 r!15766) (++!2447 Nil!9426 (Cons!9426 (h!14827 s!10566) Nil!9426)) (t!100488 s!10566) s!10566))))

(declare-fun b!874363 () Bool)

(declare-fun res!397555 () Bool)

(declare-fun e!574884 () Bool)

(assert (=> b!874363 (=> (not res!397555) (not e!574884))))

(declare-fun lt!329494 () Option!1903)

(declare-fun get!2887 (Option!1903) tuple2!10522)

(assert (=> b!874363 (= res!397555 (matchR!750 (regTwo!4936 r!15766) (_2!6087 (get!2887 lt!329494))))))

(declare-fun b!874364 () Bool)

(assert (=> b!874364 (= e!574884 (= (++!2447 (_1!6087 (get!2887 lt!329494)) (_2!6087 (get!2887 lt!329494))) s!10566))))

(declare-fun b!874365 () Bool)

(declare-fun e!574881 () Bool)

(assert (=> b!874365 (= e!574881 (matchR!750 (regTwo!4936 r!15766) s!10566))))

(declare-fun b!874366 () Bool)

(declare-fun res!397551 () Bool)

(assert (=> b!874366 (=> (not res!397551) (not e!574884))))

(assert (=> b!874366 (= res!397551 (matchR!750 EmptyExpr!2212 (_1!6087 (get!2887 lt!329494))))))

(declare-fun b!874367 () Bool)

(declare-fun e!574883 () Option!1903)

(assert (=> b!874367 (= e!574883 e!574885)))

(declare-fun c!141420 () Bool)

(assert (=> b!874367 (= c!141420 (is-Nil!9426 s!10566))))

(declare-fun b!874368 () Bool)

(declare-fun e!574882 () Bool)

(assert (=> b!874368 (= e!574882 (not (isDefined!1545 lt!329494)))))

(declare-fun b!874370 () Bool)

(assert (=> b!874370 (= e!574885 None!1902)))

(declare-fun b!874369 () Bool)

(assert (=> b!874369 (= e!574883 (Some!1902 (tuple2!10523 Nil!9426 s!10566)))))

(declare-fun d!275696 () Bool)

(assert (=> d!275696 e!574882))

(declare-fun res!397553 () Bool)

(assert (=> d!275696 (=> res!397553 e!574882)))

(assert (=> d!275696 (= res!397553 e!574884)))

(declare-fun res!397554 () Bool)

(assert (=> d!275696 (=> (not res!397554) (not e!574884))))

(assert (=> d!275696 (= res!397554 (isDefined!1545 lt!329494))))

(assert (=> d!275696 (= lt!329494 e!574883)))

(declare-fun c!141421 () Bool)

(assert (=> d!275696 (= c!141421 e!574881)))

(declare-fun res!397552 () Bool)

(assert (=> d!275696 (=> (not res!397552) (not e!574881))))

(assert (=> d!275696 (= res!397552 (matchR!750 EmptyExpr!2212 Nil!9426))))

(assert (=> d!275696 (validRegex!681 EmptyExpr!2212)))

(assert (=> d!275696 (= (findConcatSeparation!9 EmptyExpr!2212 (regTwo!4936 r!15766) Nil!9426 s!10566 s!10566) lt!329494)))

(assert (= (and d!275696 res!397552) b!874365))

(assert (= (and d!275696 c!141421) b!874369))

(assert (= (and d!275696 (not c!141421)) b!874367))

(assert (= (and b!874367 c!141420) b!874370))

(assert (= (and b!874367 (not c!141420)) b!874362))

(assert (= (and d!275696 res!397554) b!874366))

(assert (= (and b!874366 res!397551) b!874363))

(assert (= (and b!874363 res!397555) b!874364))

(assert (= (and d!275696 (not res!397553)) b!874368))

(declare-fun m!1126307 () Bool)

(assert (=> b!874365 m!1126307))

(declare-fun m!1126309 () Bool)

(assert (=> b!874368 m!1126309))

(declare-fun m!1126311 () Bool)

(assert (=> b!874366 m!1126311))

(declare-fun m!1126313 () Bool)

(assert (=> b!874366 m!1126313))

(declare-fun m!1126315 () Bool)

(assert (=> b!874362 m!1126315))

(assert (=> b!874362 m!1126315))

(declare-fun m!1126317 () Bool)

(assert (=> b!874362 m!1126317))

(declare-fun m!1126319 () Bool)

(assert (=> b!874362 m!1126319))

(assert (=> b!874362 m!1126315))

(declare-fun m!1126321 () Bool)

(assert (=> b!874362 m!1126321))

(assert (=> b!874363 m!1126311))

(declare-fun m!1126323 () Bool)

(assert (=> b!874363 m!1126323))

(assert (=> d!275696 m!1126309))

(declare-fun m!1126325 () Bool)

(assert (=> d!275696 m!1126325))

(declare-fun m!1126327 () Bool)

(assert (=> d!275696 m!1126327))

(assert (=> b!874364 m!1126311))

(declare-fun m!1126329 () Bool)

(assert (=> b!874364 m!1126329))

(assert (=> b!874129 d!275696))

(declare-fun d!275700 () Bool)

(declare-fun choose!5144 (Int) Bool)

(assert (=> d!275700 (= (Exists!11 lambda!26295) (choose!5144 lambda!26295))))

(declare-fun bs!233963 () Bool)

(assert (= bs!233963 d!275700))

(declare-fun m!1126331 () Bool)

(assert (=> bs!233963 m!1126331))

(assert (=> b!874129 d!275700))

(declare-fun bs!233964 () Bool)

(declare-fun d!275702 () Bool)

(assert (= bs!233964 (and d!275702 b!874129)))

(declare-fun lambda!26319 () Int)

(assert (=> bs!233964 (= lambda!26319 lambda!26295)))

(assert (=> bs!233964 (not (= lambda!26319 lambda!26296))))

(declare-fun bs!233965 () Bool)

(assert (= bs!233965 (and d!275702 b!874216)))

(assert (=> bs!233965 (not (= lambda!26319 lambda!26309))))

(declare-fun bs!233966 () Bool)

(assert (= bs!233966 (and d!275702 b!874218)))

(assert (=> bs!233966 (not (= lambda!26319 lambda!26310))))

(assert (=> d!275702 true))

(assert (=> d!275702 true))

(assert (=> d!275702 true))

(assert (=> d!275702 (= (isDefined!1545 (findConcatSeparation!9 EmptyExpr!2212 (regTwo!4936 r!15766) Nil!9426 s!10566 s!10566)) (Exists!11 lambda!26319))))

(declare-fun lt!329499 () Unit!14003)

(declare-fun choose!5145 (Regex!2212 Regex!2212 List!9442) Unit!14003)

(assert (=> d!275702 (= lt!329499 (choose!5145 EmptyExpr!2212 (regTwo!4936 r!15766) s!10566))))

(assert (=> d!275702 (validRegex!681 EmptyExpr!2212)))

(assert (=> d!275702 (= (lemmaFindConcatSeparationEquivalentToExists!9 EmptyExpr!2212 (regTwo!4936 r!15766) s!10566) lt!329499)))

(declare-fun bs!233967 () Bool)

(assert (= bs!233967 d!275702))

(assert (=> bs!233967 m!1126327))

(declare-fun m!1126333 () Bool)

(assert (=> bs!233967 m!1126333))

(declare-fun m!1126335 () Bool)

(assert (=> bs!233967 m!1126335))

(assert (=> bs!233967 m!1126229))

(assert (=> bs!233967 m!1126231))

(assert (=> bs!233967 m!1126229))

(assert (=> b!874129 d!275702))

(declare-fun bs!233968 () Bool)

(declare-fun d!275704 () Bool)

(assert (= bs!233968 (and d!275704 b!874216)))

(declare-fun lambda!26324 () Int)

(assert (=> bs!233968 (not (= lambda!26324 lambda!26309))))

(declare-fun bs!233969 () Bool)

(assert (= bs!233969 (and d!275704 b!874218)))

(assert (=> bs!233969 (not (= lambda!26324 lambda!26310))))

(declare-fun bs!233970 () Bool)

(assert (= bs!233970 (and d!275704 b!874129)))

(assert (=> bs!233970 (not (= lambda!26324 lambda!26296))))

(assert (=> bs!233970 (= lambda!26324 lambda!26295)))

(declare-fun bs!233971 () Bool)

(assert (= bs!233971 (and d!275704 d!275702)))

(assert (=> bs!233971 (= lambda!26324 lambda!26319)))

(assert (=> d!275704 true))

(assert (=> d!275704 true))

(assert (=> d!275704 true))

(declare-fun lambda!26325 () Int)

(assert (=> bs!233968 (not (= lambda!26325 lambda!26309))))

(declare-fun bs!233972 () Bool)

(assert (= bs!233972 d!275704))

(assert (=> bs!233972 (not (= lambda!26325 lambda!26324))))

(assert (=> bs!233969 (= (= EmptyExpr!2212 (regOne!4936 r!15766)) (= lambda!26325 lambda!26310))))

(assert (=> bs!233970 (= lambda!26325 lambda!26296)))

(assert (=> bs!233970 (not (= lambda!26325 lambda!26295))))

(assert (=> bs!233971 (not (= lambda!26325 lambda!26319))))

(assert (=> d!275704 true))

(assert (=> d!275704 true))

(assert (=> d!275704 true))

(assert (=> d!275704 (= (Exists!11 lambda!26324) (Exists!11 lambda!26325))))

(declare-fun lt!329504 () Unit!14003)

(declare-fun choose!5146 (Regex!2212 Regex!2212 List!9442) Unit!14003)

(assert (=> d!275704 (= lt!329504 (choose!5146 EmptyExpr!2212 (regTwo!4936 r!15766) s!10566))))

(assert (=> d!275704 (validRegex!681 EmptyExpr!2212)))

(assert (=> d!275704 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!7 EmptyExpr!2212 (regTwo!4936 r!15766) s!10566) lt!329504)))

(declare-fun m!1126337 () Bool)

(assert (=> bs!233972 m!1126337))

(declare-fun m!1126339 () Bool)

(assert (=> bs!233972 m!1126339))

(declare-fun m!1126341 () Bool)

(assert (=> bs!233972 m!1126341))

(assert (=> bs!233972 m!1126327))

(assert (=> b!874129 d!275704))

(declare-fun d!275706 () Bool)

(assert (=> d!275706 (= (Exists!11 lambda!26296) (choose!5144 lambda!26296))))

(declare-fun bs!233973 () Bool)

(assert (= bs!233973 d!275706))

(declare-fun m!1126343 () Bool)

(assert (=> bs!233973 m!1126343))

(assert (=> b!874129 d!275706))

(declare-fun d!275708 () Bool)

(declare-fun isEmpty!5612 (Option!1903) Bool)

(assert (=> d!275708 (= (isDefined!1545 (findConcatSeparation!9 EmptyExpr!2212 (regTwo!4936 r!15766) Nil!9426 s!10566 s!10566)) (not (isEmpty!5612 (findConcatSeparation!9 EmptyExpr!2212 (regTwo!4936 r!15766) Nil!9426 s!10566 s!10566))))))

(declare-fun bs!233974 () Bool)

(assert (= bs!233974 d!275708))

(assert (=> bs!233974 m!1126229))

(declare-fun m!1126345 () Bool)

(assert (=> bs!233974 m!1126345))

(assert (=> b!874129 d!275708))

(declare-fun b!874436 () Bool)

(declare-fun e!574915 () Bool)

(declare-fun tp!276611 () Bool)

(declare-fun tp!276614 () Bool)

(assert (=> b!874436 (= e!574915 (and tp!276611 tp!276614))))

(declare-fun b!874437 () Bool)

(declare-fun tp!276613 () Bool)

(assert (=> b!874437 (= e!574915 tp!276613)))

(assert (=> b!874127 (= tp!276578 e!574915)))

(declare-fun b!874435 () Bool)

(assert (=> b!874435 (= e!574915 tp_is_empty!4067)))

(declare-fun b!874438 () Bool)

(declare-fun tp!276612 () Bool)

(declare-fun tp!276615 () Bool)

(assert (=> b!874438 (= e!574915 (and tp!276612 tp!276615))))

(assert (= (and b!874127 (is-ElementMatch!2212 (regOne!4937 r!15766))) b!874435))

(assert (= (and b!874127 (is-Concat!4045 (regOne!4937 r!15766))) b!874436))

(assert (= (and b!874127 (is-Star!2212 (regOne!4937 r!15766))) b!874437))

(assert (= (and b!874127 (is-Union!2212 (regOne!4937 r!15766))) b!874438))

(declare-fun b!874440 () Bool)

(declare-fun e!574916 () Bool)

(declare-fun tp!276616 () Bool)

(declare-fun tp!276619 () Bool)

(assert (=> b!874440 (= e!574916 (and tp!276616 tp!276619))))

(declare-fun b!874441 () Bool)

(declare-fun tp!276618 () Bool)

(assert (=> b!874441 (= e!574916 tp!276618)))

(assert (=> b!874127 (= tp!276577 e!574916)))

(declare-fun b!874439 () Bool)

(assert (=> b!874439 (= e!574916 tp_is_empty!4067)))

(declare-fun b!874442 () Bool)

(declare-fun tp!276617 () Bool)

(declare-fun tp!276620 () Bool)

(assert (=> b!874442 (= e!574916 (and tp!276617 tp!276620))))

(assert (= (and b!874127 (is-ElementMatch!2212 (regTwo!4937 r!15766))) b!874439))

(assert (= (and b!874127 (is-Concat!4045 (regTwo!4937 r!15766))) b!874440))

(assert (= (and b!874127 (is-Star!2212 (regTwo!4937 r!15766))) b!874441))

(assert (= (and b!874127 (is-Union!2212 (regTwo!4937 r!15766))) b!874442))

(declare-fun b!874444 () Bool)

(declare-fun e!574917 () Bool)

(declare-fun tp!276621 () Bool)

(declare-fun tp!276624 () Bool)

(assert (=> b!874444 (= e!574917 (and tp!276621 tp!276624))))

(declare-fun b!874445 () Bool)

(declare-fun tp!276623 () Bool)

(assert (=> b!874445 (= e!574917 tp!276623)))

(assert (=> b!874126 (= tp!276581 e!574917)))

(declare-fun b!874443 () Bool)

(assert (=> b!874443 (= e!574917 tp_is_empty!4067)))

(declare-fun b!874446 () Bool)

(declare-fun tp!276622 () Bool)

(declare-fun tp!276625 () Bool)

(assert (=> b!874446 (= e!574917 (and tp!276622 tp!276625))))

(assert (= (and b!874126 (is-ElementMatch!2212 (regOne!4936 r!15766))) b!874443))

(assert (= (and b!874126 (is-Concat!4045 (regOne!4936 r!15766))) b!874444))

(assert (= (and b!874126 (is-Star!2212 (regOne!4936 r!15766))) b!874445))

(assert (= (and b!874126 (is-Union!2212 (regOne!4936 r!15766))) b!874446))

(declare-fun b!874448 () Bool)

(declare-fun e!574918 () Bool)

(declare-fun tp!276626 () Bool)

(declare-fun tp!276629 () Bool)

(assert (=> b!874448 (= e!574918 (and tp!276626 tp!276629))))

(declare-fun b!874449 () Bool)

(declare-fun tp!276628 () Bool)

(assert (=> b!874449 (= e!574918 tp!276628)))

(assert (=> b!874126 (= tp!276582 e!574918)))

(declare-fun b!874447 () Bool)

(assert (=> b!874447 (= e!574918 tp_is_empty!4067)))

(declare-fun b!874450 () Bool)

(declare-fun tp!276627 () Bool)

(declare-fun tp!276630 () Bool)

(assert (=> b!874450 (= e!574918 (and tp!276627 tp!276630))))

(assert (= (and b!874126 (is-ElementMatch!2212 (regTwo!4936 r!15766))) b!874447))

(assert (= (and b!874126 (is-Concat!4045 (regTwo!4936 r!15766))) b!874448))

(assert (= (and b!874126 (is-Star!2212 (regTwo!4936 r!15766))) b!874449))

(assert (= (and b!874126 (is-Union!2212 (regTwo!4936 r!15766))) b!874450))

(declare-fun b!874452 () Bool)

(declare-fun e!574919 () Bool)

(declare-fun tp!276631 () Bool)

(declare-fun tp!276634 () Bool)

(assert (=> b!874452 (= e!574919 (and tp!276631 tp!276634))))

(declare-fun b!874453 () Bool)

(declare-fun tp!276633 () Bool)

(assert (=> b!874453 (= e!574919 tp!276633)))

(assert (=> b!874125 (= tp!276580 e!574919)))

(declare-fun b!874451 () Bool)

(assert (=> b!874451 (= e!574919 tp_is_empty!4067)))

(declare-fun b!874454 () Bool)

(declare-fun tp!276632 () Bool)

(declare-fun tp!276635 () Bool)

(assert (=> b!874454 (= e!574919 (and tp!276632 tp!276635))))

(assert (= (and b!874125 (is-ElementMatch!2212 (reg!2541 r!15766))) b!874451))

(assert (= (and b!874125 (is-Concat!4045 (reg!2541 r!15766))) b!874452))

(assert (= (and b!874125 (is-Star!2212 (reg!2541 r!15766))) b!874453))

(assert (= (and b!874125 (is-Union!2212 (reg!2541 r!15766))) b!874454))

(declare-fun b!874459 () Bool)

(declare-fun e!574922 () Bool)

(declare-fun tp!276638 () Bool)

(assert (=> b!874459 (= e!574922 (and tp_is_empty!4067 tp!276638))))

(assert (=> b!874124 (= tp!276579 e!574922)))

(assert (= (and b!874124 (is-Cons!9426 (t!100488 s!10566))) b!874459))

(push 1)

(assert (not b!874283))

(assert (not b!874450))

(assert (not b!874286))

(assert (not b!874363))

(assert (not d!275686))

(assert (not b!874322))

(assert (not d!275708))

(assert (not b!874331))

(assert (not b!874222))

(assert (not bm!50785))

(assert (not bm!50782))

(assert (not b!874454))

(assert (not b!874444))

(assert (not d!275696))

(assert (not b!874438))

(assert (not b!874452))

(assert (not b!874440))

(assert (not d!275688))

(assert (not bm!50794))

(assert (not b!874437))

(assert (not b!874368))

(assert (not d!275700))

(assert (not bm!50797))

(assert (not d!275702))

(assert (not b!874448))

(assert (not b!874284))

(assert (not d!275706))

(assert (not b!874459))

(assert (not b!874446))

(assert (not b!874274))

(assert tp_is_empty!4067)

(assert (not b!874442))

(assert (not b!874445))

(assert (not bm!50781))

(assert (not b!874441))

(assert (not b!874449))

(assert (not b!874436))

(assert (not b!874366))

(assert (not b!874362))

(assert (not d!275704))

(assert (not b!874453))

(assert (not b!874214))

(assert (not b!874364))

(assert (not bm!50795))

(assert (not b!874365))

(assert (not b!874273))

(assert (not bm!50798))

(assert (not b!874280))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

