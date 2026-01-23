; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!289864 () Bool)

(assert start!289864)

(declare-fun b!3008998 () Bool)

(assert (=> b!3008998 true))

(assert (=> b!3008998 true))

(assert (=> b!3008998 true))

(declare-fun lambda!112588 () Int)

(declare-fun lambda!112587 () Int)

(assert (=> b!3008998 (not (= lambda!112588 lambda!112587))))

(assert (=> b!3008998 true))

(assert (=> b!3008998 true))

(assert (=> b!3008998 true))

(declare-fun b!3008991 () Bool)

(declare-fun e!1889480 () Bool)

(declare-fun tp!955264 () Bool)

(declare-fun tp!955266 () Bool)

(assert (=> b!3008991 (= e!1889480 (and tp!955264 tp!955266))))

(declare-fun b!3008992 () Bool)

(declare-fun e!1889472 () Bool)

(declare-fun e!1889473 () Bool)

(assert (=> b!3008992 (= e!1889472 e!1889473)))

(declare-fun res!1240125 () Bool)

(assert (=> b!3008992 (=> res!1240125 e!1889473)))

(declare-datatypes ((C!18972 0))(
  ( (C!18973 (val!11522 Int)) )
))
(declare-datatypes ((List!35258 0))(
  ( (Nil!35134) (Cons!35134 (h!40554 C!18972) (t!234323 List!35258)) )
))
(declare-fun s!11993 () List!35258)

(declare-fun isEmpty!19419 (List!35258) Bool)

(assert (=> b!3008992 (= res!1240125 (isEmpty!19419 s!11993))))

(declare-datatypes ((Regex!9393 0))(
  ( (ElementMatch!9393 (c!495525 C!18972)) (Concat!14714 (regOne!19298 Regex!9393) (regTwo!19298 Regex!9393)) (EmptyExpr!9393) (Star!9393 (reg!9722 Regex!9393)) (EmptyLang!9393) (Union!9393 (regOne!19299 Regex!9393) (regTwo!19299 Regex!9393)) )
))
(declare-fun lt!1043692 () Regex!9393)

(declare-fun matchRSpec!1530 (Regex!9393 List!35258) Bool)

(assert (=> b!3008992 (matchRSpec!1530 lt!1043692 s!11993)))

(declare-datatypes ((Unit!49207 0))(
  ( (Unit!49208) )
))
(declare-fun lt!1043680 () Unit!49207)

(declare-fun mainMatchTheorem!1530 (Regex!9393 List!35258) Unit!49207)

(assert (=> b!3008992 (= lt!1043680 (mainMatchTheorem!1530 lt!1043692 s!11993))))

(declare-fun b!3008993 () Bool)

(declare-fun res!1240124 () Bool)

(declare-fun e!1889479 () Bool)

(assert (=> b!3008993 (=> res!1240124 e!1889479)))

(declare-datatypes ((tuple2!34080 0))(
  ( (tuple2!34081 (_1!20172 List!35258) (_2!20172 List!35258)) )
))
(declare-fun lt!1043681 () tuple2!34080)

(declare-fun matchR!4275 (Regex!9393 List!35258) Bool)

(assert (=> b!3008993 (= res!1240124 (not (matchR!4275 lt!1043692 (_2!20172 lt!1043681))))))

(declare-fun b!3008994 () Bool)

(declare-fun e!1889474 () Bool)

(assert (=> b!3008994 (= e!1889474 e!1889472)))

(declare-fun res!1240122 () Bool)

(assert (=> b!3008994 (=> res!1240122 e!1889472)))

(assert (=> b!3008994 (= res!1240122 (not (matchR!4275 lt!1043692 s!11993)))))

(declare-fun lt!1043686 () Regex!9393)

(assert (=> b!3008994 (= lt!1043692 (Star!9393 lt!1043686))))

(declare-fun b!3008995 () Bool)

(declare-fun e!1889478 () Bool)

(assert (=> b!3008995 (= e!1889478 e!1889479)))

(declare-fun res!1240120 () Bool)

(assert (=> b!3008995 (=> res!1240120 e!1889479)))

(assert (=> b!3008995 (= res!1240120 (not (matchR!4275 lt!1043686 (_1!20172 lt!1043681))))))

(declare-datatypes ((Option!6772 0))(
  ( (None!6771) (Some!6771 (v!34905 tuple2!34080)) )
))
(declare-fun lt!1043695 () Option!6772)

(declare-fun get!10936 (Option!6772) tuple2!34080)

(assert (=> b!3008995 (= lt!1043681 (get!10936 lt!1043695))))

(declare-fun b!3008996 () Bool)

(declare-fun e!1889476 () Unit!49207)

(declare-fun Unit!49209 () Unit!49207)

(assert (=> b!3008996 (= e!1889476 Unit!49209)))

(declare-fun res!1240123 () Bool)

(declare-fun e!1889481 () Bool)

(assert (=> start!289864 (=> (not res!1240123) (not e!1889481))))

(declare-fun r!17423 () Regex!9393)

(declare-fun validRegex!4126 (Regex!9393) Bool)

(assert (=> start!289864 (= res!1240123 (validRegex!4126 r!17423))))

(assert (=> start!289864 e!1889481))

(assert (=> start!289864 e!1889480))

(declare-fun e!1889477 () Bool)

(assert (=> start!289864 e!1889477))

(declare-fun b!3008997 () Bool)

(declare-fun tp_is_empty!16349 () Bool)

(declare-fun tp!955265 () Bool)

(assert (=> b!3008997 (= e!1889477 (and tp_is_empty!16349 tp!955265))))

(assert (=> b!3008998 (= e!1889473 e!1889478)))

(declare-fun res!1240119 () Bool)

(assert (=> b!3008998 (=> res!1240119 e!1889478)))

(declare-fun lt!1043691 () Bool)

(assert (=> b!3008998 (= res!1240119 (not lt!1043691))))

(declare-fun Exists!1662 (Int) Bool)

(assert (=> b!3008998 (= (Exists!1662 lambda!112587) (Exists!1662 lambda!112588))))

(declare-fun lt!1043688 () Unit!49207)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!328 (Regex!9393 List!35258) Unit!49207)

(assert (=> b!3008998 (= lt!1043688 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!328 lt!1043686 s!11993))))

(assert (=> b!3008998 (= lt!1043691 (Exists!1662 lambda!112587))))

(declare-fun isDefined!5323 (Option!6772) Bool)

(assert (=> b!3008998 (= lt!1043691 (isDefined!5323 lt!1043695))))

(declare-fun findConcatSeparation!1166 (Regex!9393 Regex!9393 List!35258 List!35258 List!35258) Option!6772)

(assert (=> b!3008998 (= lt!1043695 (findConcatSeparation!1166 lt!1043686 lt!1043692 Nil!35134 s!11993 s!11993))))

(declare-fun lt!1043682 () Unit!49207)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!944 (Regex!9393 Regex!9393 List!35258) Unit!49207)

(assert (=> b!3008998 (= lt!1043682 (lemmaFindConcatSeparationEquivalentToExists!944 lt!1043686 lt!1043692 s!11993))))

(declare-fun b!3008999 () Bool)

(declare-fun tp!955268 () Bool)

(declare-fun tp!955267 () Bool)

(assert (=> b!3008999 (= e!1889480 (and tp!955268 tp!955267))))

(declare-fun b!3009000 () Bool)

(assert (=> b!3009000 (= e!1889480 tp_is_empty!16349)))

(declare-fun b!3009001 () Bool)

(declare-fun tp!955269 () Bool)

(assert (=> b!3009001 (= e!1889480 tp!955269)))

(declare-fun b!3009002 () Bool)

(declare-fun Unit!49210 () Unit!49207)

(assert (=> b!3009002 (= e!1889476 Unit!49210)))

(declare-fun lt!1043693 () Unit!49207)

(assert (=> b!3009002 (= lt!1043693 (mainMatchTheorem!1530 (reg!9722 r!17423) (_1!20172 lt!1043681)))))

(assert (=> b!3009002 false))

(declare-fun b!3009003 () Bool)

(declare-fun lt!1043694 () Bool)

(assert (=> b!3009003 (= e!1889479 lt!1043694)))

(declare-fun lt!1043689 () Regex!9393)

(assert (=> b!3009003 (= lt!1043694 (matchR!4275 lt!1043689 (_2!20172 lt!1043681)))))

(declare-fun lt!1043690 () Regex!9393)

(assert (=> b!3009003 (= lt!1043694 (matchR!4275 lt!1043690 (_2!20172 lt!1043681)))))

(declare-fun simplify!384 (Regex!9393) Regex!9393)

(assert (=> b!3009003 (= lt!1043689 (simplify!384 lt!1043690))))

(declare-fun lt!1043685 () Unit!49207)

(declare-fun lemmaSimplifySound!234 (Regex!9393 List!35258) Unit!49207)

(assert (=> b!3009003 (= lt!1043685 (lemmaSimplifySound!234 lt!1043690 (_2!20172 lt!1043681)))))

(assert (=> b!3009003 (= lt!1043690 (Star!9393 (reg!9722 r!17423)))))

(declare-fun lt!1043687 () Unit!49207)

(assert (=> b!3009003 (= lt!1043687 e!1889476)))

(declare-fun c!495524 () Bool)

(declare-fun size!26523 (List!35258) Int)

(assert (=> b!3009003 (= c!495524 (= (size!26523 (_2!20172 lt!1043681)) (size!26523 s!11993)))))

(assert (=> b!3009003 (matchR!4275 (reg!9722 r!17423) (_1!20172 lt!1043681))))

(declare-fun lt!1043684 () Unit!49207)

(assert (=> b!3009003 (= lt!1043684 (lemmaSimplifySound!234 (reg!9722 r!17423) (_1!20172 lt!1043681)))))

(declare-fun b!3009004 () Bool)

(declare-fun e!1889475 () Bool)

(assert (=> b!3009004 (= e!1889475 e!1889474)))

(declare-fun res!1240126 () Bool)

(assert (=> b!3009004 (=> res!1240126 e!1889474)))

(declare-fun isEmptyLang!483 (Regex!9393) Bool)

(assert (=> b!3009004 (= res!1240126 (isEmptyLang!483 lt!1043686))))

(assert (=> b!3009004 (= lt!1043686 (simplify!384 (reg!9722 r!17423)))))

(declare-fun b!3009005 () Bool)

(assert (=> b!3009005 (= e!1889481 (not e!1889475))))

(declare-fun res!1240121 () Bool)

(assert (=> b!3009005 (=> res!1240121 e!1889475)))

(declare-fun lt!1043696 () Bool)

(get-info :version)

(assert (=> b!3009005 (= res!1240121 (or lt!1043696 ((_ is Concat!14714) r!17423) ((_ is Union!9393) r!17423) (not ((_ is Star!9393) r!17423))))))

(assert (=> b!3009005 (= lt!1043696 (matchRSpec!1530 r!17423 s!11993))))

(assert (=> b!3009005 (= lt!1043696 (matchR!4275 r!17423 s!11993))))

(declare-fun lt!1043683 () Unit!49207)

(assert (=> b!3009005 (= lt!1043683 (mainMatchTheorem!1530 r!17423 s!11993))))

(assert (= (and start!289864 res!1240123) b!3009005))

(assert (= (and b!3009005 (not res!1240121)) b!3009004))

(assert (= (and b!3009004 (not res!1240126)) b!3008994))

(assert (= (and b!3008994 (not res!1240122)) b!3008992))

(assert (= (and b!3008992 (not res!1240125)) b!3008998))

(assert (= (and b!3008998 (not res!1240119)) b!3008995))

(assert (= (and b!3008995 (not res!1240120)) b!3008993))

(assert (= (and b!3008993 (not res!1240124)) b!3009003))

(assert (= (and b!3009003 c!495524) b!3009002))

(assert (= (and b!3009003 (not c!495524)) b!3008996))

(assert (= (and start!289864 ((_ is ElementMatch!9393) r!17423)) b!3009000))

(assert (= (and start!289864 ((_ is Concat!14714) r!17423)) b!3008999))

(assert (= (and start!289864 ((_ is Star!9393) r!17423)) b!3009001))

(assert (= (and start!289864 ((_ is Union!9393) r!17423)) b!3008991))

(assert (= (and start!289864 ((_ is Cons!35134) s!11993)) b!3008997))

(declare-fun m!3356353 () Bool)

(assert (=> b!3008992 m!3356353))

(declare-fun m!3356355 () Bool)

(assert (=> b!3008992 m!3356355))

(declare-fun m!3356357 () Bool)

(assert (=> b!3008992 m!3356357))

(declare-fun m!3356359 () Bool)

(assert (=> b!3009004 m!3356359))

(declare-fun m!3356361 () Bool)

(assert (=> b!3009004 m!3356361))

(declare-fun m!3356363 () Bool)

(assert (=> b!3009005 m!3356363))

(declare-fun m!3356365 () Bool)

(assert (=> b!3009005 m!3356365))

(declare-fun m!3356367 () Bool)

(assert (=> b!3009005 m!3356367))

(declare-fun m!3356369 () Bool)

(assert (=> b!3008994 m!3356369))

(declare-fun m!3356371 () Bool)

(assert (=> b!3009003 m!3356371))

(declare-fun m!3356373 () Bool)

(assert (=> b!3009003 m!3356373))

(declare-fun m!3356375 () Bool)

(assert (=> b!3009003 m!3356375))

(declare-fun m!3356377 () Bool)

(assert (=> b!3009003 m!3356377))

(declare-fun m!3356379 () Bool)

(assert (=> b!3009003 m!3356379))

(declare-fun m!3356381 () Bool)

(assert (=> b!3009003 m!3356381))

(declare-fun m!3356383 () Bool)

(assert (=> b!3009003 m!3356383))

(declare-fun m!3356385 () Bool)

(assert (=> b!3009003 m!3356385))

(declare-fun m!3356387 () Bool)

(assert (=> b!3009002 m!3356387))

(declare-fun m!3356389 () Bool)

(assert (=> b!3008995 m!3356389))

(declare-fun m!3356391 () Bool)

(assert (=> b!3008995 m!3356391))

(declare-fun m!3356393 () Bool)

(assert (=> start!289864 m!3356393))

(declare-fun m!3356395 () Bool)

(assert (=> b!3008998 m!3356395))

(declare-fun m!3356397 () Bool)

(assert (=> b!3008998 m!3356397))

(declare-fun m!3356399 () Bool)

(assert (=> b!3008998 m!3356399))

(assert (=> b!3008998 m!3356395))

(declare-fun m!3356401 () Bool)

(assert (=> b!3008998 m!3356401))

(declare-fun m!3356403 () Bool)

(assert (=> b!3008998 m!3356403))

(declare-fun m!3356405 () Bool)

(assert (=> b!3008998 m!3356405))

(declare-fun m!3356407 () Bool)

(assert (=> b!3008993 m!3356407))

(check-sat (not b!3009003) (not b!3008993) (not b!3008991) (not b!3009002) (not b!3009004) (not b!3008999) (not b!3009001) (not b!3008997) (not b!3008995) (not start!289864) (not b!3008998) tp_is_empty!16349 (not b!3008992) (not b!3008994) (not b!3009005))
(check-sat)
(get-model)

(declare-fun bs!529187 () Bool)

(declare-fun b!3009154 () Bool)

(assert (= bs!529187 (and b!3009154 b!3008998)))

(declare-fun lambda!112601 () Int)

(assert (=> bs!529187 (not (= lambda!112601 lambda!112587))))

(assert (=> bs!529187 (= (and (= (reg!9722 r!17423) lt!1043686) (= r!17423 lt!1043692)) (= lambda!112601 lambda!112588))))

(assert (=> b!3009154 true))

(assert (=> b!3009154 true))

(declare-fun bs!529188 () Bool)

(declare-fun b!3009153 () Bool)

(assert (= bs!529188 (and b!3009153 b!3008998)))

(declare-fun lambda!112602 () Int)

(assert (=> bs!529188 (not (= lambda!112602 lambda!112587))))

(assert (=> bs!529188 (not (= lambda!112602 lambda!112588))))

(declare-fun bs!529189 () Bool)

(assert (= bs!529189 (and b!3009153 b!3009154)))

(assert (=> bs!529189 (not (= lambda!112602 lambda!112601))))

(assert (=> b!3009153 true))

(assert (=> b!3009153 true))

(declare-fun b!3009152 () Bool)

(declare-fun e!1889564 () Bool)

(declare-fun call!202578 () Bool)

(assert (=> b!3009152 (= e!1889564 call!202578)))

(declare-fun e!1889563 () Bool)

(declare-fun call!202577 () Bool)

(assert (=> b!3009153 (= e!1889563 call!202577)))

(declare-fun e!1889560 () Bool)

(assert (=> b!3009154 (= e!1889560 call!202577)))

(declare-fun b!3009155 () Bool)

(declare-fun c!495564 () Bool)

(assert (=> b!3009155 (= c!495564 ((_ is Union!9393) r!17423))))

(declare-fun e!1889561 () Bool)

(declare-fun e!1889565 () Bool)

(assert (=> b!3009155 (= e!1889561 e!1889565)))

(declare-fun b!3009156 () Bool)

(assert (=> b!3009156 (= e!1889561 (= s!11993 (Cons!35134 (c!495525 r!17423) Nil!35134)))))

(declare-fun b!3009157 () Bool)

(declare-fun e!1889562 () Bool)

(assert (=> b!3009157 (= e!1889564 e!1889562)))

(declare-fun res!1240199 () Bool)

(assert (=> b!3009157 (= res!1240199 (not ((_ is EmptyLang!9393) r!17423)))))

(assert (=> b!3009157 (=> (not res!1240199) (not e!1889562))))

(declare-fun b!3009158 () Bool)

(declare-fun c!495565 () Bool)

(assert (=> b!3009158 (= c!495565 ((_ is ElementMatch!9393) r!17423))))

(assert (=> b!3009158 (= e!1889562 e!1889561)))

(declare-fun b!3009159 () Bool)

(assert (=> b!3009159 (= e!1889565 e!1889563)))

(declare-fun c!495562 () Bool)

(assert (=> b!3009159 (= c!495562 ((_ is Star!9393) r!17423))))

(declare-fun bm!202572 () Bool)

(assert (=> bm!202572 (= call!202578 (isEmpty!19419 s!11993))))

(declare-fun b!3009160 () Bool)

(declare-fun res!1240198 () Bool)

(assert (=> b!3009160 (=> res!1240198 e!1889560)))

(assert (=> b!3009160 (= res!1240198 call!202578)))

(assert (=> b!3009160 (= e!1889563 e!1889560)))

(declare-fun bm!202573 () Bool)

(assert (=> bm!202573 (= call!202577 (Exists!1662 (ite c!495562 lambda!112601 lambda!112602)))))

(declare-fun b!3009161 () Bool)

(declare-fun e!1889566 () Bool)

(assert (=> b!3009161 (= e!1889566 (matchRSpec!1530 (regTwo!19299 r!17423) s!11993))))

(declare-fun b!3009162 () Bool)

(assert (=> b!3009162 (= e!1889565 e!1889566)))

(declare-fun res!1240197 () Bool)

(assert (=> b!3009162 (= res!1240197 (matchRSpec!1530 (regOne!19299 r!17423) s!11993))))

(assert (=> b!3009162 (=> res!1240197 e!1889566)))

(declare-fun d!847330 () Bool)

(declare-fun c!495563 () Bool)

(assert (=> d!847330 (= c!495563 ((_ is EmptyExpr!9393) r!17423))))

(assert (=> d!847330 (= (matchRSpec!1530 r!17423 s!11993) e!1889564)))

(assert (= (and d!847330 c!495563) b!3009152))

(assert (= (and d!847330 (not c!495563)) b!3009157))

(assert (= (and b!3009157 res!1240199) b!3009158))

(assert (= (and b!3009158 c!495565) b!3009156))

(assert (= (and b!3009158 (not c!495565)) b!3009155))

(assert (= (and b!3009155 c!495564) b!3009162))

(assert (= (and b!3009155 (not c!495564)) b!3009159))

(assert (= (and b!3009162 (not res!1240197)) b!3009161))

(assert (= (and b!3009159 c!495562) b!3009160))

(assert (= (and b!3009159 (not c!495562)) b!3009153))

(assert (= (and b!3009160 (not res!1240198)) b!3009154))

(assert (= (or b!3009154 b!3009153) bm!202573))

(assert (= (or b!3009152 b!3009160) bm!202572))

(assert (=> bm!202572 m!3356353))

(declare-fun m!3356463 () Bool)

(assert (=> bm!202573 m!3356463))

(declare-fun m!3356465 () Bool)

(assert (=> b!3009161 m!3356465))

(declare-fun m!3356467 () Bool)

(assert (=> b!3009162 m!3356467))

(assert (=> b!3009005 d!847330))

(declare-fun b!3009307 () Bool)

(declare-fun e!1889654 () Bool)

(declare-fun lt!1043727 () Bool)

(assert (=> b!3009307 (= e!1889654 (not lt!1043727))))

(declare-fun b!3009308 () Bool)

(declare-fun res!1240255 () Bool)

(declare-fun e!1889656 () Bool)

(assert (=> b!3009308 (=> res!1240255 e!1889656)))

(declare-fun e!1889652 () Bool)

(assert (=> b!3009308 (= res!1240255 e!1889652)))

(declare-fun res!1240253 () Bool)

(assert (=> b!3009308 (=> (not res!1240253) (not e!1889652))))

(assert (=> b!3009308 (= res!1240253 lt!1043727)))

(declare-fun d!847352 () Bool)

(declare-fun e!1889651 () Bool)

(assert (=> d!847352 e!1889651))

(declare-fun c!495614 () Bool)

(assert (=> d!847352 (= c!495614 ((_ is EmptyExpr!9393) r!17423))))

(declare-fun e!1889653 () Bool)

(assert (=> d!847352 (= lt!1043727 e!1889653)))

(declare-fun c!495615 () Bool)

(assert (=> d!847352 (= c!495615 (isEmpty!19419 s!11993))))

(assert (=> d!847352 (validRegex!4126 r!17423)))

(assert (=> d!847352 (= (matchR!4275 r!17423 s!11993) lt!1043727)))

(declare-fun bm!202607 () Bool)

(declare-fun call!202612 () Bool)

(assert (=> bm!202607 (= call!202612 (isEmpty!19419 s!11993))))

(declare-fun b!3009309 () Bool)

(declare-fun e!1889655 () Bool)

(declare-fun e!1889657 () Bool)

(assert (=> b!3009309 (= e!1889655 e!1889657)))

(declare-fun res!1240254 () Bool)

(assert (=> b!3009309 (=> res!1240254 e!1889657)))

(assert (=> b!3009309 (= res!1240254 call!202612)))

(declare-fun b!3009310 () Bool)

(declare-fun res!1240249 () Bool)

(assert (=> b!3009310 (=> res!1240249 e!1889656)))

(assert (=> b!3009310 (= res!1240249 (not ((_ is ElementMatch!9393) r!17423)))))

(assert (=> b!3009310 (= e!1889654 e!1889656)))

(declare-fun b!3009311 () Bool)

(assert (=> b!3009311 (= e!1889651 e!1889654)))

(declare-fun c!495616 () Bool)

(assert (=> b!3009311 (= c!495616 ((_ is EmptyLang!9393) r!17423))))

(declare-fun b!3009312 () Bool)

(declare-fun head!6703 (List!35258) C!18972)

(assert (=> b!3009312 (= e!1889652 (= (head!6703 s!11993) (c!495525 r!17423)))))

(declare-fun b!3009313 () Bool)

(declare-fun nullable!3046 (Regex!9393) Bool)

(assert (=> b!3009313 (= e!1889653 (nullable!3046 r!17423))))

(declare-fun b!3009314 () Bool)

(declare-fun res!1240252 () Bool)

(assert (=> b!3009314 (=> (not res!1240252) (not e!1889652))))

(declare-fun tail!4929 (List!35258) List!35258)

(assert (=> b!3009314 (= res!1240252 (isEmpty!19419 (tail!4929 s!11993)))))

(declare-fun b!3009315 () Bool)

(assert (=> b!3009315 (= e!1889657 (not (= (head!6703 s!11993) (c!495525 r!17423))))))

(declare-fun b!3009316 () Bool)

(declare-fun derivativeStep!2644 (Regex!9393 C!18972) Regex!9393)

(assert (=> b!3009316 (= e!1889653 (matchR!4275 (derivativeStep!2644 r!17423 (head!6703 s!11993)) (tail!4929 s!11993)))))

(declare-fun b!3009317 () Bool)

(declare-fun res!1240250 () Bool)

(assert (=> b!3009317 (=> (not res!1240250) (not e!1889652))))

(assert (=> b!3009317 (= res!1240250 (not call!202612))))

(declare-fun b!3009318 () Bool)

(declare-fun res!1240248 () Bool)

(assert (=> b!3009318 (=> res!1240248 e!1889657)))

(assert (=> b!3009318 (= res!1240248 (not (isEmpty!19419 (tail!4929 s!11993))))))

(declare-fun b!3009319 () Bool)

(assert (=> b!3009319 (= e!1889651 (= lt!1043727 call!202612))))

(declare-fun b!3009320 () Bool)

(assert (=> b!3009320 (= e!1889656 e!1889655)))

(declare-fun res!1240251 () Bool)

(assert (=> b!3009320 (=> (not res!1240251) (not e!1889655))))

(assert (=> b!3009320 (= res!1240251 (not lt!1043727))))

(assert (= (and d!847352 c!495615) b!3009313))

(assert (= (and d!847352 (not c!495615)) b!3009316))

(assert (= (and d!847352 c!495614) b!3009319))

(assert (= (and d!847352 (not c!495614)) b!3009311))

(assert (= (and b!3009311 c!495616) b!3009307))

(assert (= (and b!3009311 (not c!495616)) b!3009310))

(assert (= (and b!3009310 (not res!1240249)) b!3009308))

(assert (= (and b!3009308 res!1240253) b!3009317))

(assert (= (and b!3009317 res!1240250) b!3009314))

(assert (= (and b!3009314 res!1240252) b!3009312))

(assert (= (and b!3009308 (not res!1240255)) b!3009320))

(assert (= (and b!3009320 res!1240251) b!3009309))

(assert (= (and b!3009309 (not res!1240254)) b!3009318))

(assert (= (and b!3009318 (not res!1240248)) b!3009315))

(assert (= (or b!3009319 b!3009309 b!3009317) bm!202607))

(declare-fun m!3356493 () Bool)

(assert (=> b!3009312 m!3356493))

(assert (=> b!3009316 m!3356493))

(assert (=> b!3009316 m!3356493))

(declare-fun m!3356495 () Bool)

(assert (=> b!3009316 m!3356495))

(declare-fun m!3356497 () Bool)

(assert (=> b!3009316 m!3356497))

(assert (=> b!3009316 m!3356495))

(assert (=> b!3009316 m!3356497))

(declare-fun m!3356499 () Bool)

(assert (=> b!3009316 m!3356499))

(assert (=> b!3009315 m!3356493))

(declare-fun m!3356501 () Bool)

(assert (=> b!3009313 m!3356501))

(assert (=> b!3009314 m!3356497))

(assert (=> b!3009314 m!3356497))

(declare-fun m!3356503 () Bool)

(assert (=> b!3009314 m!3356503))

(assert (=> b!3009318 m!3356497))

(assert (=> b!3009318 m!3356497))

(assert (=> b!3009318 m!3356503))

(assert (=> bm!202607 m!3356353))

(assert (=> d!847352 m!3356353))

(assert (=> d!847352 m!3356393))

(assert (=> b!3009005 d!847352))

(declare-fun d!847360 () Bool)

(assert (=> d!847360 (= (matchR!4275 r!17423 s!11993) (matchRSpec!1530 r!17423 s!11993))))

(declare-fun lt!1043733 () Unit!49207)

(declare-fun choose!17870 (Regex!9393 List!35258) Unit!49207)

(assert (=> d!847360 (= lt!1043733 (choose!17870 r!17423 s!11993))))

(assert (=> d!847360 (validRegex!4126 r!17423)))

(assert (=> d!847360 (= (mainMatchTheorem!1530 r!17423 s!11993) lt!1043733)))

(declare-fun bs!529198 () Bool)

(assert (= bs!529198 d!847360))

(assert (=> bs!529198 m!3356365))

(assert (=> bs!529198 m!3356363))

(declare-fun m!3356515 () Bool)

(assert (=> bs!529198 m!3356515))

(assert (=> bs!529198 m!3356393))

(assert (=> b!3009005 d!847360))

(declare-fun b!3009325 () Bool)

(declare-fun e!1889663 () Bool)

(declare-fun lt!1043734 () Bool)

(assert (=> b!3009325 (= e!1889663 (not lt!1043734))))

(declare-fun b!3009326 () Bool)

(declare-fun res!1240267 () Bool)

(declare-fun e!1889665 () Bool)

(assert (=> b!3009326 (=> res!1240267 e!1889665)))

(declare-fun e!1889661 () Bool)

(assert (=> b!3009326 (= res!1240267 e!1889661)))

(declare-fun res!1240265 () Bool)

(assert (=> b!3009326 (=> (not res!1240265) (not e!1889661))))

(assert (=> b!3009326 (= res!1240265 lt!1043734)))

(declare-fun d!847366 () Bool)

(declare-fun e!1889660 () Bool)

(assert (=> d!847366 e!1889660))

(declare-fun c!495617 () Bool)

(assert (=> d!847366 (= c!495617 ((_ is EmptyExpr!9393) lt!1043692))))

(declare-fun e!1889662 () Bool)

(assert (=> d!847366 (= lt!1043734 e!1889662)))

(declare-fun c!495618 () Bool)

(assert (=> d!847366 (= c!495618 (isEmpty!19419 s!11993))))

(assert (=> d!847366 (validRegex!4126 lt!1043692)))

(assert (=> d!847366 (= (matchR!4275 lt!1043692 s!11993) lt!1043734)))

(declare-fun bm!202608 () Bool)

(declare-fun call!202613 () Bool)

(assert (=> bm!202608 (= call!202613 (isEmpty!19419 s!11993))))

(declare-fun b!3009327 () Bool)

(declare-fun e!1889664 () Bool)

(declare-fun e!1889666 () Bool)

(assert (=> b!3009327 (= e!1889664 e!1889666)))

(declare-fun res!1240266 () Bool)

(assert (=> b!3009327 (=> res!1240266 e!1889666)))

(assert (=> b!3009327 (= res!1240266 call!202613)))

(declare-fun b!3009328 () Bool)

(declare-fun res!1240261 () Bool)

(assert (=> b!3009328 (=> res!1240261 e!1889665)))

(assert (=> b!3009328 (= res!1240261 (not ((_ is ElementMatch!9393) lt!1043692)))))

(assert (=> b!3009328 (= e!1889663 e!1889665)))

(declare-fun b!3009329 () Bool)

(assert (=> b!3009329 (= e!1889660 e!1889663)))

(declare-fun c!495619 () Bool)

(assert (=> b!3009329 (= c!495619 ((_ is EmptyLang!9393) lt!1043692))))

(declare-fun b!3009330 () Bool)

(assert (=> b!3009330 (= e!1889661 (= (head!6703 s!11993) (c!495525 lt!1043692)))))

(declare-fun b!3009331 () Bool)

(assert (=> b!3009331 (= e!1889662 (nullable!3046 lt!1043692))))

(declare-fun b!3009332 () Bool)

(declare-fun res!1240264 () Bool)

(assert (=> b!3009332 (=> (not res!1240264) (not e!1889661))))

(assert (=> b!3009332 (= res!1240264 (isEmpty!19419 (tail!4929 s!11993)))))

(declare-fun b!3009333 () Bool)

(assert (=> b!3009333 (= e!1889666 (not (= (head!6703 s!11993) (c!495525 lt!1043692))))))

(declare-fun b!3009334 () Bool)

(assert (=> b!3009334 (= e!1889662 (matchR!4275 (derivativeStep!2644 lt!1043692 (head!6703 s!11993)) (tail!4929 s!11993)))))

(declare-fun b!3009335 () Bool)

(declare-fun res!1240262 () Bool)

(assert (=> b!3009335 (=> (not res!1240262) (not e!1889661))))

(assert (=> b!3009335 (= res!1240262 (not call!202613))))

(declare-fun b!3009336 () Bool)

(declare-fun res!1240260 () Bool)

(assert (=> b!3009336 (=> res!1240260 e!1889666)))

(assert (=> b!3009336 (= res!1240260 (not (isEmpty!19419 (tail!4929 s!11993))))))

(declare-fun b!3009337 () Bool)

(assert (=> b!3009337 (= e!1889660 (= lt!1043734 call!202613))))

(declare-fun b!3009338 () Bool)

(assert (=> b!3009338 (= e!1889665 e!1889664)))

(declare-fun res!1240263 () Bool)

(assert (=> b!3009338 (=> (not res!1240263) (not e!1889664))))

(assert (=> b!3009338 (= res!1240263 (not lt!1043734))))

(assert (= (and d!847366 c!495618) b!3009331))

(assert (= (and d!847366 (not c!495618)) b!3009334))

(assert (= (and d!847366 c!495617) b!3009337))

(assert (= (and d!847366 (not c!495617)) b!3009329))

(assert (= (and b!3009329 c!495619) b!3009325))

(assert (= (and b!3009329 (not c!495619)) b!3009328))

(assert (= (and b!3009328 (not res!1240261)) b!3009326))

(assert (= (and b!3009326 res!1240265) b!3009335))

(assert (= (and b!3009335 res!1240262) b!3009332))

(assert (= (and b!3009332 res!1240264) b!3009330))

(assert (= (and b!3009326 (not res!1240267)) b!3009338))

(assert (= (and b!3009338 res!1240263) b!3009327))

(assert (= (and b!3009327 (not res!1240266)) b!3009336))

(assert (= (and b!3009336 (not res!1240260)) b!3009333))

(assert (= (or b!3009337 b!3009327 b!3009335) bm!202608))

(assert (=> b!3009330 m!3356493))

(assert (=> b!3009334 m!3356493))

(assert (=> b!3009334 m!3356493))

(declare-fun m!3356517 () Bool)

(assert (=> b!3009334 m!3356517))

(assert (=> b!3009334 m!3356497))

(assert (=> b!3009334 m!3356517))

(assert (=> b!3009334 m!3356497))

(declare-fun m!3356519 () Bool)

(assert (=> b!3009334 m!3356519))

(assert (=> b!3009333 m!3356493))

(declare-fun m!3356521 () Bool)

(assert (=> b!3009331 m!3356521))

(assert (=> b!3009332 m!3356497))

(assert (=> b!3009332 m!3356497))

(assert (=> b!3009332 m!3356503))

(assert (=> b!3009336 m!3356497))

(assert (=> b!3009336 m!3356497))

(assert (=> b!3009336 m!3356503))

(assert (=> bm!202608 m!3356353))

(assert (=> d!847366 m!3356353))

(declare-fun m!3356523 () Bool)

(assert (=> d!847366 m!3356523))

(assert (=> b!3008994 d!847366))

(declare-fun d!847368 () Bool)

(assert (=> d!847368 (= (isEmptyLang!483 lt!1043686) ((_ is EmptyLang!9393) lt!1043686))))

(assert (=> b!3009004 d!847368))

(declare-fun b!3009550 () Bool)

(declare-fun c!495678 () Bool)

(declare-fun e!1889773 () Bool)

(assert (=> b!3009550 (= c!495678 e!1889773)))

(declare-fun res!1240334 () Bool)

(assert (=> b!3009550 (=> res!1240334 e!1889773)))

(declare-fun call!202643 () Bool)

(assert (=> b!3009550 (= res!1240334 call!202643)))

(declare-fun lt!1043782 () Regex!9393)

(declare-fun call!202644 () Regex!9393)

(assert (=> b!3009550 (= lt!1043782 call!202644)))

(declare-fun e!1889782 () Regex!9393)

(declare-fun e!1889774 () Regex!9393)

(assert (=> b!3009550 (= e!1889782 e!1889774)))

(declare-fun b!3009551 () Bool)

(declare-fun e!1889770 () Regex!9393)

(assert (=> b!3009551 (= e!1889770 (reg!9722 r!17423))))

(declare-fun b!3009552 () Bool)

(declare-fun e!1889777 () Regex!9393)

(assert (=> b!3009552 (= e!1889777 e!1889770)))

(declare-fun c!495680 () Bool)

(assert (=> b!3009552 (= c!495680 ((_ is ElementMatch!9393) (reg!9722 r!17423)))))

(declare-fun b!3009553 () Bool)

(declare-fun c!495676 () Bool)

(declare-fun call!202641 () Bool)

(assert (=> b!3009553 (= c!495676 call!202641)))

(declare-fun e!1889772 () Regex!9393)

(declare-fun e!1889783 () Regex!9393)

(assert (=> b!3009553 (= e!1889772 e!1889783)))

(declare-fun b!3009554 () Bool)

(declare-fun c!495681 () Bool)

(assert (=> b!3009554 (= c!495681 ((_ is Union!9393) (reg!9722 r!17423)))))

(declare-fun e!1889775 () Regex!9393)

(assert (=> b!3009554 (= e!1889782 e!1889775)))

(declare-fun b!3009555 () Bool)

(assert (=> b!3009555 (= e!1889774 (Star!9393 lt!1043782))))

(declare-fun b!3009556 () Bool)

(declare-fun e!1889780 () Regex!9393)

(assert (=> b!3009556 (= e!1889780 EmptyExpr!9393)))

(declare-fun b!3009557 () Bool)

(declare-fun e!1889771 () Bool)

(assert (=> b!3009557 (= e!1889771 call!202641)))

(declare-fun b!3009558 () Bool)

(declare-fun e!1889778 () Bool)

(declare-fun lt!1043780 () Regex!9393)

(assert (=> b!3009558 (= e!1889778 (= (nullable!3046 lt!1043780) (nullable!3046 (reg!9722 r!17423))))))

(declare-fun b!3009559 () Bool)

(assert (=> b!3009559 (= e!1889780 e!1889782)))

(declare-fun c!495685 () Bool)

(assert (=> b!3009559 (= c!495685 ((_ is Star!9393) (reg!9722 r!17423)))))

(declare-fun b!3009560 () Bool)

(declare-fun call!202640 () Bool)

(assert (=> b!3009560 (= e!1889773 call!202640)))

(declare-fun b!3009561 () Bool)

(declare-fun lt!1043779 () Regex!9393)

(declare-fun lt!1043781 () Regex!9393)

(assert (=> b!3009561 (= e!1889783 (Union!9393 lt!1043779 lt!1043781))))

(declare-fun d!847370 () Bool)

(assert (=> d!847370 e!1889778))

(declare-fun res!1240335 () Bool)

(assert (=> d!847370 (=> (not res!1240335) (not e!1889778))))

(assert (=> d!847370 (= res!1240335 (validRegex!4126 lt!1043780))))

(assert (=> d!847370 (= lt!1043780 e!1889777)))

(declare-fun c!495675 () Bool)

(assert (=> d!847370 (= c!495675 ((_ is EmptyLang!9393) (reg!9722 r!17423)))))

(assert (=> d!847370 (validRegex!4126 (reg!9722 r!17423))))

(assert (=> d!847370 (= (simplify!384 (reg!9722 r!17423)) lt!1043780)))

(declare-fun b!3009562 () Bool)

(assert (=> b!3009562 (= e!1889783 lt!1043779)))

(declare-fun b!3009563 () Bool)

(declare-fun c!495679 () Bool)

(declare-fun lt!1043777 () Regex!9393)

(declare-fun isEmptyExpr!489 (Regex!9393) Bool)

(assert (=> b!3009563 (= c!495679 (isEmptyExpr!489 lt!1043777))))

(declare-fun e!1889776 () Regex!9393)

(declare-fun e!1889779 () Regex!9393)

(assert (=> b!3009563 (= e!1889776 e!1889779)))

(declare-fun lt!1043778 () Regex!9393)

(declare-fun bm!202634 () Bool)

(assert (=> bm!202634 (= call!202640 (isEmptyExpr!489 (ite c!495685 lt!1043782 lt!1043778)))))

(declare-fun bm!202635 () Bool)

(declare-fun call!202639 () Regex!9393)

(assert (=> bm!202635 (= call!202639 call!202644)))

(declare-fun b!3009564 () Bool)

(assert (=> b!3009564 (= e!1889775 e!1889776)))

(assert (=> b!3009564 (= lt!1043777 call!202639)))

(declare-fun call!202642 () Regex!9393)

(assert (=> b!3009564 (= lt!1043778 call!202642)))

(declare-fun res!1240336 () Bool)

(declare-fun call!202645 () Bool)

(assert (=> b!3009564 (= res!1240336 call!202645)))

(assert (=> b!3009564 (=> res!1240336 e!1889771)))

(declare-fun c!495682 () Bool)

(assert (=> b!3009564 (= c!495682 e!1889771)))

(declare-fun bm!202636 () Bool)

(assert (=> bm!202636 (= call!202641 (isEmptyLang!483 (ite c!495681 lt!1043781 lt!1043778)))))

(declare-fun b!3009565 () Bool)

(assert (=> b!3009565 (= e!1889779 lt!1043778)))

(declare-fun bm!202637 () Bool)

(assert (=> bm!202637 (= call!202642 (simplify!384 (ite c!495681 (regOne!19299 (reg!9722 r!17423)) (regTwo!19298 (reg!9722 r!17423)))))))

(declare-fun b!3009566 () Bool)

(assert (=> b!3009566 (= e!1889775 e!1889772)))

(assert (=> b!3009566 (= lt!1043779 call!202642)))

(assert (=> b!3009566 (= lt!1043781 call!202639)))

(declare-fun c!495683 () Bool)

(assert (=> b!3009566 (= c!495683 call!202645)))

(declare-fun bm!202638 () Bool)

(assert (=> bm!202638 (= call!202643 (isEmptyLang!483 (ite c!495685 lt!1043782 (ite c!495681 lt!1043779 lt!1043777))))))

(declare-fun b!3009567 () Bool)

(assert (=> b!3009567 (= e!1889772 lt!1043781)))

(declare-fun b!3009568 () Bool)

(assert (=> b!3009568 (= e!1889776 EmptyLang!9393)))

(declare-fun b!3009569 () Bool)

(assert (=> b!3009569 (= e!1889774 EmptyExpr!9393)))

(declare-fun b!3009570 () Bool)

(declare-fun e!1889781 () Regex!9393)

(assert (=> b!3009570 (= e!1889781 lt!1043777)))

(declare-fun b!3009571 () Bool)

(assert (=> b!3009571 (= e!1889779 e!1889781)))

(declare-fun c!495677 () Bool)

(assert (=> b!3009571 (= c!495677 call!202640)))

(declare-fun b!3009572 () Bool)

(assert (=> b!3009572 (= e!1889781 (Concat!14714 lt!1043777 lt!1043778))))

(declare-fun bm!202639 () Bool)

(assert (=> bm!202639 (= call!202645 call!202643)))

(declare-fun b!3009573 () Bool)

(assert (=> b!3009573 (= e!1889777 EmptyLang!9393)))

(declare-fun bm!202640 () Bool)

(assert (=> bm!202640 (= call!202644 (simplify!384 (ite c!495685 (reg!9722 (reg!9722 r!17423)) (ite c!495681 (regTwo!19299 (reg!9722 r!17423)) (regOne!19298 (reg!9722 r!17423))))))))

(declare-fun b!3009574 () Bool)

(declare-fun c!495684 () Bool)

(assert (=> b!3009574 (= c!495684 ((_ is EmptyExpr!9393) (reg!9722 r!17423)))))

(assert (=> b!3009574 (= e!1889770 e!1889780)))

(assert (= (and d!847370 c!495675) b!3009573))

(assert (= (and d!847370 (not c!495675)) b!3009552))

(assert (= (and b!3009552 c!495680) b!3009551))

(assert (= (and b!3009552 (not c!495680)) b!3009574))

(assert (= (and b!3009574 c!495684) b!3009556))

(assert (= (and b!3009574 (not c!495684)) b!3009559))

(assert (= (and b!3009559 c!495685) b!3009550))

(assert (= (and b!3009559 (not c!495685)) b!3009554))

(assert (= (and b!3009550 (not res!1240334)) b!3009560))

(assert (= (and b!3009550 c!495678) b!3009569))

(assert (= (and b!3009550 (not c!495678)) b!3009555))

(assert (= (and b!3009554 c!495681) b!3009566))

(assert (= (and b!3009554 (not c!495681)) b!3009564))

(assert (= (and b!3009566 c!495683) b!3009567))

(assert (= (and b!3009566 (not c!495683)) b!3009553))

(assert (= (and b!3009553 c!495676) b!3009562))

(assert (= (and b!3009553 (not c!495676)) b!3009561))

(assert (= (and b!3009564 (not res!1240336)) b!3009557))

(assert (= (and b!3009564 c!495682) b!3009568))

(assert (= (and b!3009564 (not c!495682)) b!3009563))

(assert (= (and b!3009563 c!495679) b!3009565))

(assert (= (and b!3009563 (not c!495679)) b!3009571))

(assert (= (and b!3009571 c!495677) b!3009570))

(assert (= (and b!3009571 (not c!495677)) b!3009572))

(assert (= (or b!3009566 b!3009564) bm!202637))

(assert (= (or b!3009566 b!3009564) bm!202635))

(assert (= (or b!3009566 b!3009564) bm!202639))

(assert (= (or b!3009553 b!3009557) bm!202636))

(assert (= (or b!3009560 b!3009571) bm!202634))

(assert (= (or b!3009550 bm!202635) bm!202640))

(assert (= (or b!3009550 bm!202639) bm!202638))

(assert (= (and d!847370 res!1240335) b!3009558))

(declare-fun m!3356615 () Bool)

(assert (=> b!3009563 m!3356615))

(declare-fun m!3356617 () Bool)

(assert (=> bm!202637 m!3356617))

(declare-fun m!3356619 () Bool)

(assert (=> d!847370 m!3356619))

(declare-fun m!3356621 () Bool)

(assert (=> d!847370 m!3356621))

(declare-fun m!3356623 () Bool)

(assert (=> bm!202640 m!3356623))

(declare-fun m!3356625 () Bool)

(assert (=> b!3009558 m!3356625))

(declare-fun m!3356627 () Bool)

(assert (=> b!3009558 m!3356627))

(declare-fun m!3356629 () Bool)

(assert (=> bm!202636 m!3356629))

(declare-fun m!3356631 () Bool)

(assert (=> bm!202634 m!3356631))

(declare-fun m!3356633 () Bool)

(assert (=> bm!202638 m!3356633))

(assert (=> b!3009004 d!847370))

(declare-fun b!3009575 () Bool)

(declare-fun e!1889787 () Bool)

(declare-fun lt!1043783 () Bool)

(assert (=> b!3009575 (= e!1889787 (not lt!1043783))))

(declare-fun b!3009576 () Bool)

(declare-fun res!1240344 () Bool)

(declare-fun e!1889789 () Bool)

(assert (=> b!3009576 (=> res!1240344 e!1889789)))

(declare-fun e!1889785 () Bool)

(assert (=> b!3009576 (= res!1240344 e!1889785)))

(declare-fun res!1240342 () Bool)

(assert (=> b!3009576 (=> (not res!1240342) (not e!1889785))))

(assert (=> b!3009576 (= res!1240342 lt!1043783)))

(declare-fun d!847396 () Bool)

(declare-fun e!1889784 () Bool)

(assert (=> d!847396 e!1889784))

(declare-fun c!495686 () Bool)

(assert (=> d!847396 (= c!495686 ((_ is EmptyExpr!9393) lt!1043692))))

(declare-fun e!1889786 () Bool)

(assert (=> d!847396 (= lt!1043783 e!1889786)))

(declare-fun c!495687 () Bool)

(assert (=> d!847396 (= c!495687 (isEmpty!19419 (_2!20172 lt!1043681)))))

(assert (=> d!847396 (validRegex!4126 lt!1043692)))

(assert (=> d!847396 (= (matchR!4275 lt!1043692 (_2!20172 lt!1043681)) lt!1043783)))

(declare-fun bm!202641 () Bool)

(declare-fun call!202646 () Bool)

(assert (=> bm!202641 (= call!202646 (isEmpty!19419 (_2!20172 lt!1043681)))))

(declare-fun b!3009577 () Bool)

(declare-fun e!1889788 () Bool)

(declare-fun e!1889790 () Bool)

(assert (=> b!3009577 (= e!1889788 e!1889790)))

(declare-fun res!1240343 () Bool)

(assert (=> b!3009577 (=> res!1240343 e!1889790)))

(assert (=> b!3009577 (= res!1240343 call!202646)))

(declare-fun b!3009578 () Bool)

(declare-fun res!1240338 () Bool)

(assert (=> b!3009578 (=> res!1240338 e!1889789)))

(assert (=> b!3009578 (= res!1240338 (not ((_ is ElementMatch!9393) lt!1043692)))))

(assert (=> b!3009578 (= e!1889787 e!1889789)))

(declare-fun b!3009579 () Bool)

(assert (=> b!3009579 (= e!1889784 e!1889787)))

(declare-fun c!495688 () Bool)

(assert (=> b!3009579 (= c!495688 ((_ is EmptyLang!9393) lt!1043692))))

(declare-fun b!3009580 () Bool)

(assert (=> b!3009580 (= e!1889785 (= (head!6703 (_2!20172 lt!1043681)) (c!495525 lt!1043692)))))

(declare-fun b!3009581 () Bool)

(assert (=> b!3009581 (= e!1889786 (nullable!3046 lt!1043692))))

(declare-fun b!3009582 () Bool)

(declare-fun res!1240341 () Bool)

(assert (=> b!3009582 (=> (not res!1240341) (not e!1889785))))

(assert (=> b!3009582 (= res!1240341 (isEmpty!19419 (tail!4929 (_2!20172 lt!1043681))))))

(declare-fun b!3009583 () Bool)

(assert (=> b!3009583 (= e!1889790 (not (= (head!6703 (_2!20172 lt!1043681)) (c!495525 lt!1043692))))))

(declare-fun b!3009584 () Bool)

(assert (=> b!3009584 (= e!1889786 (matchR!4275 (derivativeStep!2644 lt!1043692 (head!6703 (_2!20172 lt!1043681))) (tail!4929 (_2!20172 lt!1043681))))))

(declare-fun b!3009585 () Bool)

(declare-fun res!1240339 () Bool)

(assert (=> b!3009585 (=> (not res!1240339) (not e!1889785))))

(assert (=> b!3009585 (= res!1240339 (not call!202646))))

(declare-fun b!3009586 () Bool)

(declare-fun res!1240337 () Bool)

(assert (=> b!3009586 (=> res!1240337 e!1889790)))

(assert (=> b!3009586 (= res!1240337 (not (isEmpty!19419 (tail!4929 (_2!20172 lt!1043681)))))))

(declare-fun b!3009587 () Bool)

(assert (=> b!3009587 (= e!1889784 (= lt!1043783 call!202646))))

(declare-fun b!3009588 () Bool)

(assert (=> b!3009588 (= e!1889789 e!1889788)))

(declare-fun res!1240340 () Bool)

(assert (=> b!3009588 (=> (not res!1240340) (not e!1889788))))

(assert (=> b!3009588 (= res!1240340 (not lt!1043783))))

(assert (= (and d!847396 c!495687) b!3009581))

(assert (= (and d!847396 (not c!495687)) b!3009584))

(assert (= (and d!847396 c!495686) b!3009587))

(assert (= (and d!847396 (not c!495686)) b!3009579))

(assert (= (and b!3009579 c!495688) b!3009575))

(assert (= (and b!3009579 (not c!495688)) b!3009578))

(assert (= (and b!3009578 (not res!1240338)) b!3009576))

(assert (= (and b!3009576 res!1240342) b!3009585))

(assert (= (and b!3009585 res!1240339) b!3009582))

(assert (= (and b!3009582 res!1240341) b!3009580))

(assert (= (and b!3009576 (not res!1240344)) b!3009588))

(assert (= (and b!3009588 res!1240340) b!3009577))

(assert (= (and b!3009577 (not res!1240343)) b!3009586))

(assert (= (and b!3009586 (not res!1240337)) b!3009583))

(assert (= (or b!3009587 b!3009577 b!3009585) bm!202641))

(declare-fun m!3356635 () Bool)

(assert (=> b!3009580 m!3356635))

(assert (=> b!3009584 m!3356635))

(assert (=> b!3009584 m!3356635))

(declare-fun m!3356637 () Bool)

(assert (=> b!3009584 m!3356637))

(declare-fun m!3356639 () Bool)

(assert (=> b!3009584 m!3356639))

(assert (=> b!3009584 m!3356637))

(assert (=> b!3009584 m!3356639))

(declare-fun m!3356641 () Bool)

(assert (=> b!3009584 m!3356641))

(assert (=> b!3009583 m!3356635))

(assert (=> b!3009581 m!3356521))

(assert (=> b!3009582 m!3356639))

(assert (=> b!3009582 m!3356639))

(declare-fun m!3356643 () Bool)

(assert (=> b!3009582 m!3356643))

(assert (=> b!3009586 m!3356639))

(assert (=> b!3009586 m!3356639))

(assert (=> b!3009586 m!3356643))

(declare-fun m!3356645 () Bool)

(assert (=> bm!202641 m!3356645))

(assert (=> d!847396 m!3356645))

(assert (=> d!847396 m!3356523))

(assert (=> b!3008993 d!847396))

(declare-fun d!847398 () Bool)

(declare-fun choose!17872 (Int) Bool)

(assert (=> d!847398 (= (Exists!1662 lambda!112588) (choose!17872 lambda!112588))))

(declare-fun bs!529209 () Bool)

(assert (= bs!529209 d!847398))

(declare-fun m!3356647 () Bool)

(assert (=> bs!529209 m!3356647))

(assert (=> b!3008998 d!847398))

(declare-fun d!847400 () Bool)

(declare-fun isEmpty!19421 (Option!6772) Bool)

(assert (=> d!847400 (= (isDefined!5323 lt!1043695) (not (isEmpty!19421 lt!1043695)))))

(declare-fun bs!529210 () Bool)

(assert (= bs!529210 d!847400))

(declare-fun m!3356649 () Bool)

(assert (=> bs!529210 m!3356649))

(assert (=> b!3008998 d!847400))

(declare-fun bs!529211 () Bool)

(declare-fun d!847402 () Bool)

(assert (= bs!529211 (and d!847402 b!3008998)))

(declare-fun lambda!112616 () Int)

(assert (=> bs!529211 (= (= (Star!9393 lt!1043686) lt!1043692) (= lambda!112616 lambda!112587))))

(assert (=> bs!529211 (not (= lambda!112616 lambda!112588))))

(declare-fun bs!529212 () Bool)

(assert (= bs!529212 (and d!847402 b!3009154)))

(assert (=> bs!529212 (not (= lambda!112616 lambda!112601))))

(declare-fun bs!529213 () Bool)

(assert (= bs!529213 (and d!847402 b!3009153)))

(assert (=> bs!529213 (not (= lambda!112616 lambda!112602))))

(assert (=> d!847402 true))

(assert (=> d!847402 true))

(declare-fun bs!529214 () Bool)

(assert (= bs!529214 d!847402))

(declare-fun lambda!112617 () Int)

(assert (=> bs!529214 (not (= lambda!112617 lambda!112616))))

(assert (=> bs!529213 (not (= lambda!112617 lambda!112602))))

(assert (=> bs!529211 (= (= (Star!9393 lt!1043686) lt!1043692) (= lambda!112617 lambda!112588))))

(assert (=> bs!529212 (= (and (= lt!1043686 (reg!9722 r!17423)) (= (Star!9393 lt!1043686) r!17423)) (= lambda!112617 lambda!112601))))

(assert (=> bs!529211 (not (= lambda!112617 lambda!112587))))

(assert (=> d!847402 true))

(assert (=> d!847402 true))

(assert (=> d!847402 (= (Exists!1662 lambda!112616) (Exists!1662 lambda!112617))))

(declare-fun lt!1043786 () Unit!49207)

(declare-fun choose!17873 (Regex!9393 List!35258) Unit!49207)

(assert (=> d!847402 (= lt!1043786 (choose!17873 lt!1043686 s!11993))))

(assert (=> d!847402 (validRegex!4126 lt!1043686)))

(assert (=> d!847402 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!328 lt!1043686 s!11993) lt!1043786)))

(declare-fun m!3356651 () Bool)

(assert (=> bs!529214 m!3356651))

(declare-fun m!3356653 () Bool)

(assert (=> bs!529214 m!3356653))

(declare-fun m!3356655 () Bool)

(assert (=> bs!529214 m!3356655))

(declare-fun m!3356657 () Bool)

(assert (=> bs!529214 m!3356657))

(assert (=> b!3008998 d!847402))

(declare-fun d!847404 () Bool)

(assert (=> d!847404 (= (Exists!1662 lambda!112587) (choose!17872 lambda!112587))))

(declare-fun bs!529215 () Bool)

(assert (= bs!529215 d!847404))

(declare-fun m!3356659 () Bool)

(assert (=> bs!529215 m!3356659))

(assert (=> b!3008998 d!847404))

(declare-fun b!3009617 () Bool)

(declare-fun e!1889809 () Bool)

(declare-fun lt!1043795 () Option!6772)

(assert (=> b!3009617 (= e!1889809 (not (isDefined!5323 lt!1043795)))))

(declare-fun d!847406 () Bool)

(assert (=> d!847406 e!1889809))

(declare-fun res!1240368 () Bool)

(assert (=> d!847406 (=> res!1240368 e!1889809)))

(declare-fun e!1889808 () Bool)

(assert (=> d!847406 (= res!1240368 e!1889808)))

(declare-fun res!1240369 () Bool)

(assert (=> d!847406 (=> (not res!1240369) (not e!1889808))))

(assert (=> d!847406 (= res!1240369 (isDefined!5323 lt!1043795))))

(declare-fun e!1889805 () Option!6772)

(assert (=> d!847406 (= lt!1043795 e!1889805)))

(declare-fun c!495693 () Bool)

(declare-fun e!1889806 () Bool)

(assert (=> d!847406 (= c!495693 e!1889806)))

(declare-fun res!1240366 () Bool)

(assert (=> d!847406 (=> (not res!1240366) (not e!1889806))))

(assert (=> d!847406 (= res!1240366 (matchR!4275 lt!1043686 Nil!35134))))

(assert (=> d!847406 (validRegex!4126 lt!1043686)))

(assert (=> d!847406 (= (findConcatSeparation!1166 lt!1043686 lt!1043692 Nil!35134 s!11993 s!11993) lt!1043795)))

(declare-fun b!3009618 () Bool)

(assert (=> b!3009618 (= e!1889805 (Some!6771 (tuple2!34081 Nil!35134 s!11993)))))

(declare-fun b!3009619 () Bool)

(assert (=> b!3009619 (= e!1889806 (matchR!4275 lt!1043692 s!11993))))

(declare-fun b!3009620 () Bool)

(declare-fun res!1240365 () Bool)

(assert (=> b!3009620 (=> (not res!1240365) (not e!1889808))))

(assert (=> b!3009620 (= res!1240365 (matchR!4275 lt!1043692 (_2!20172 (get!10936 lt!1043795))))))

(declare-fun b!3009621 () Bool)

(declare-fun lt!1043794 () Unit!49207)

(declare-fun lt!1043793 () Unit!49207)

(assert (=> b!3009621 (= lt!1043794 lt!1043793)))

(declare-fun ++!8419 (List!35258 List!35258) List!35258)

(assert (=> b!3009621 (= (++!8419 (++!8419 Nil!35134 (Cons!35134 (h!40554 s!11993) Nil!35134)) (t!234323 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1026 (List!35258 C!18972 List!35258 List!35258) Unit!49207)

(assert (=> b!3009621 (= lt!1043793 (lemmaMoveElementToOtherListKeepsConcatEq!1026 Nil!35134 (h!40554 s!11993) (t!234323 s!11993) s!11993))))

(declare-fun e!1889807 () Option!6772)

(assert (=> b!3009621 (= e!1889807 (findConcatSeparation!1166 lt!1043686 lt!1043692 (++!8419 Nil!35134 (Cons!35134 (h!40554 s!11993) Nil!35134)) (t!234323 s!11993) s!11993))))

(declare-fun b!3009622 () Bool)

(declare-fun res!1240367 () Bool)

(assert (=> b!3009622 (=> (not res!1240367) (not e!1889808))))

(assert (=> b!3009622 (= res!1240367 (matchR!4275 lt!1043686 (_1!20172 (get!10936 lt!1043795))))))

(declare-fun b!3009623 () Bool)

(assert (=> b!3009623 (= e!1889807 None!6771)))

(declare-fun b!3009624 () Bool)

(assert (=> b!3009624 (= e!1889805 e!1889807)))

(declare-fun c!495694 () Bool)

(assert (=> b!3009624 (= c!495694 ((_ is Nil!35134) s!11993))))

(declare-fun b!3009625 () Bool)

(assert (=> b!3009625 (= e!1889808 (= (++!8419 (_1!20172 (get!10936 lt!1043795)) (_2!20172 (get!10936 lt!1043795))) s!11993))))

(assert (= (and d!847406 res!1240366) b!3009619))

(assert (= (and d!847406 c!495693) b!3009618))

(assert (= (and d!847406 (not c!495693)) b!3009624))

(assert (= (and b!3009624 c!495694) b!3009623))

(assert (= (and b!3009624 (not c!495694)) b!3009621))

(assert (= (and d!847406 res!1240369) b!3009622))

(assert (= (and b!3009622 res!1240367) b!3009620))

(assert (= (and b!3009620 res!1240365) b!3009625))

(assert (= (and d!847406 (not res!1240368)) b!3009617))

(declare-fun m!3356661 () Bool)

(assert (=> b!3009625 m!3356661))

(declare-fun m!3356663 () Bool)

(assert (=> b!3009625 m!3356663))

(declare-fun m!3356665 () Bool)

(assert (=> b!3009617 m!3356665))

(declare-fun m!3356667 () Bool)

(assert (=> b!3009621 m!3356667))

(assert (=> b!3009621 m!3356667))

(declare-fun m!3356669 () Bool)

(assert (=> b!3009621 m!3356669))

(declare-fun m!3356671 () Bool)

(assert (=> b!3009621 m!3356671))

(assert (=> b!3009621 m!3356667))

(declare-fun m!3356673 () Bool)

(assert (=> b!3009621 m!3356673))

(assert (=> b!3009619 m!3356369))

(assert (=> b!3009620 m!3356661))

(declare-fun m!3356675 () Bool)

(assert (=> b!3009620 m!3356675))

(assert (=> d!847406 m!3356665))

(declare-fun m!3356677 () Bool)

(assert (=> d!847406 m!3356677))

(assert (=> d!847406 m!3356657))

(assert (=> b!3009622 m!3356661))

(declare-fun m!3356679 () Bool)

(assert (=> b!3009622 m!3356679))

(assert (=> b!3008998 d!847406))

(declare-fun bs!529216 () Bool)

(declare-fun d!847408 () Bool)

(assert (= bs!529216 (and d!847408 d!847402)))

(declare-fun lambda!112620 () Int)

(assert (=> bs!529216 (= (= lt!1043692 (Star!9393 lt!1043686)) (= lambda!112620 lambda!112616))))

(declare-fun bs!529217 () Bool)

(assert (= bs!529217 (and d!847408 b!3008998)))

(assert (=> bs!529217 (not (= lambda!112620 lambda!112588))))

(declare-fun bs!529218 () Bool)

(assert (= bs!529218 (and d!847408 b!3009154)))

(assert (=> bs!529218 (not (= lambda!112620 lambda!112601))))

(assert (=> bs!529217 (= lambda!112620 lambda!112587)))

(declare-fun bs!529219 () Bool)

(assert (= bs!529219 (and d!847408 b!3009153)))

(assert (=> bs!529219 (not (= lambda!112620 lambda!112602))))

(assert (=> bs!529216 (not (= lambda!112620 lambda!112617))))

(assert (=> d!847408 true))

(assert (=> d!847408 true))

(assert (=> d!847408 true))

(assert (=> d!847408 (= (isDefined!5323 (findConcatSeparation!1166 lt!1043686 lt!1043692 Nil!35134 s!11993 s!11993)) (Exists!1662 lambda!112620))))

(declare-fun lt!1043798 () Unit!49207)

(declare-fun choose!17874 (Regex!9393 Regex!9393 List!35258) Unit!49207)

(assert (=> d!847408 (= lt!1043798 (choose!17874 lt!1043686 lt!1043692 s!11993))))

(assert (=> d!847408 (validRegex!4126 lt!1043686)))

(assert (=> d!847408 (= (lemmaFindConcatSeparationEquivalentToExists!944 lt!1043686 lt!1043692 s!11993) lt!1043798)))

(declare-fun bs!529220 () Bool)

(assert (= bs!529220 d!847408))

(declare-fun m!3356681 () Bool)

(assert (=> bs!529220 m!3356681))

(assert (=> bs!529220 m!3356405))

(declare-fun m!3356683 () Bool)

(assert (=> bs!529220 m!3356683))

(assert (=> bs!529220 m!3356657))

(declare-fun m!3356685 () Bool)

(assert (=> bs!529220 m!3356685))

(assert (=> bs!529220 m!3356405))

(assert (=> b!3008998 d!847408))

(declare-fun d!847410 () Bool)

(declare-fun lt!1043801 () Int)

(assert (=> d!847410 (>= lt!1043801 0)))

(declare-fun e!1889814 () Int)

(assert (=> d!847410 (= lt!1043801 e!1889814)))

(declare-fun c!495697 () Bool)

(assert (=> d!847410 (= c!495697 ((_ is Nil!35134) (_2!20172 lt!1043681)))))

(assert (=> d!847410 (= (size!26523 (_2!20172 lt!1043681)) lt!1043801)))

(declare-fun b!3009634 () Bool)

(assert (=> b!3009634 (= e!1889814 0)))

(declare-fun b!3009635 () Bool)

(assert (=> b!3009635 (= e!1889814 (+ 1 (size!26523 (t!234323 (_2!20172 lt!1043681)))))))

(assert (= (and d!847410 c!495697) b!3009634))

(assert (= (and d!847410 (not c!495697)) b!3009635))

(declare-fun m!3356687 () Bool)

(assert (=> b!3009635 m!3356687))

(assert (=> b!3009003 d!847410))

(declare-fun b!3009636 () Bool)

(declare-fun e!1889818 () Bool)

(declare-fun lt!1043802 () Bool)

(assert (=> b!3009636 (= e!1889818 (not lt!1043802))))

(declare-fun b!3009637 () Bool)

(declare-fun res!1240381 () Bool)

(declare-fun e!1889820 () Bool)

(assert (=> b!3009637 (=> res!1240381 e!1889820)))

(declare-fun e!1889816 () Bool)

(assert (=> b!3009637 (= res!1240381 e!1889816)))

(declare-fun res!1240379 () Bool)

(assert (=> b!3009637 (=> (not res!1240379) (not e!1889816))))

(assert (=> b!3009637 (= res!1240379 lt!1043802)))

(declare-fun d!847412 () Bool)

(declare-fun e!1889815 () Bool)

(assert (=> d!847412 e!1889815))

(declare-fun c!495698 () Bool)

(assert (=> d!847412 (= c!495698 ((_ is EmptyExpr!9393) lt!1043690))))

(declare-fun e!1889817 () Bool)

(assert (=> d!847412 (= lt!1043802 e!1889817)))

(declare-fun c!495699 () Bool)

(assert (=> d!847412 (= c!495699 (isEmpty!19419 (_2!20172 lt!1043681)))))

(assert (=> d!847412 (validRegex!4126 lt!1043690)))

(assert (=> d!847412 (= (matchR!4275 lt!1043690 (_2!20172 lt!1043681)) lt!1043802)))

(declare-fun bm!202642 () Bool)

(declare-fun call!202647 () Bool)

(assert (=> bm!202642 (= call!202647 (isEmpty!19419 (_2!20172 lt!1043681)))))

(declare-fun b!3009638 () Bool)

(declare-fun e!1889819 () Bool)

(declare-fun e!1889821 () Bool)

(assert (=> b!3009638 (= e!1889819 e!1889821)))

(declare-fun res!1240380 () Bool)

(assert (=> b!3009638 (=> res!1240380 e!1889821)))

(assert (=> b!3009638 (= res!1240380 call!202647)))

(declare-fun b!3009639 () Bool)

(declare-fun res!1240375 () Bool)

(assert (=> b!3009639 (=> res!1240375 e!1889820)))

(assert (=> b!3009639 (= res!1240375 (not ((_ is ElementMatch!9393) lt!1043690)))))

(assert (=> b!3009639 (= e!1889818 e!1889820)))

(declare-fun b!3009640 () Bool)

(assert (=> b!3009640 (= e!1889815 e!1889818)))

(declare-fun c!495700 () Bool)

(assert (=> b!3009640 (= c!495700 ((_ is EmptyLang!9393) lt!1043690))))

(declare-fun b!3009641 () Bool)

(assert (=> b!3009641 (= e!1889816 (= (head!6703 (_2!20172 lt!1043681)) (c!495525 lt!1043690)))))

(declare-fun b!3009642 () Bool)

(assert (=> b!3009642 (= e!1889817 (nullable!3046 lt!1043690))))

(declare-fun b!3009643 () Bool)

(declare-fun res!1240378 () Bool)

(assert (=> b!3009643 (=> (not res!1240378) (not e!1889816))))

(assert (=> b!3009643 (= res!1240378 (isEmpty!19419 (tail!4929 (_2!20172 lt!1043681))))))

(declare-fun b!3009644 () Bool)

(assert (=> b!3009644 (= e!1889821 (not (= (head!6703 (_2!20172 lt!1043681)) (c!495525 lt!1043690))))))

(declare-fun b!3009645 () Bool)

(assert (=> b!3009645 (= e!1889817 (matchR!4275 (derivativeStep!2644 lt!1043690 (head!6703 (_2!20172 lt!1043681))) (tail!4929 (_2!20172 lt!1043681))))))

(declare-fun b!3009646 () Bool)

(declare-fun res!1240376 () Bool)

(assert (=> b!3009646 (=> (not res!1240376) (not e!1889816))))

(assert (=> b!3009646 (= res!1240376 (not call!202647))))

(declare-fun b!3009647 () Bool)

(declare-fun res!1240374 () Bool)

(assert (=> b!3009647 (=> res!1240374 e!1889821)))

(assert (=> b!3009647 (= res!1240374 (not (isEmpty!19419 (tail!4929 (_2!20172 lt!1043681)))))))

(declare-fun b!3009648 () Bool)

(assert (=> b!3009648 (= e!1889815 (= lt!1043802 call!202647))))

(declare-fun b!3009649 () Bool)

(assert (=> b!3009649 (= e!1889820 e!1889819)))

(declare-fun res!1240377 () Bool)

(assert (=> b!3009649 (=> (not res!1240377) (not e!1889819))))

(assert (=> b!3009649 (= res!1240377 (not lt!1043802))))

(assert (= (and d!847412 c!495699) b!3009642))

(assert (= (and d!847412 (not c!495699)) b!3009645))

(assert (= (and d!847412 c!495698) b!3009648))

(assert (= (and d!847412 (not c!495698)) b!3009640))

(assert (= (and b!3009640 c!495700) b!3009636))

(assert (= (and b!3009640 (not c!495700)) b!3009639))

(assert (= (and b!3009639 (not res!1240375)) b!3009637))

(assert (= (and b!3009637 res!1240379) b!3009646))

(assert (= (and b!3009646 res!1240376) b!3009643))

(assert (= (and b!3009643 res!1240378) b!3009641))

(assert (= (and b!3009637 (not res!1240381)) b!3009649))

(assert (= (and b!3009649 res!1240377) b!3009638))

(assert (= (and b!3009638 (not res!1240380)) b!3009647))

(assert (= (and b!3009647 (not res!1240374)) b!3009644))

(assert (= (or b!3009648 b!3009638 b!3009646) bm!202642))

(assert (=> b!3009641 m!3356635))

(assert (=> b!3009645 m!3356635))

(assert (=> b!3009645 m!3356635))

(declare-fun m!3356689 () Bool)

(assert (=> b!3009645 m!3356689))

(assert (=> b!3009645 m!3356639))

(assert (=> b!3009645 m!3356689))

(assert (=> b!3009645 m!3356639))

(declare-fun m!3356691 () Bool)

(assert (=> b!3009645 m!3356691))

(assert (=> b!3009644 m!3356635))

(declare-fun m!3356693 () Bool)

(assert (=> b!3009642 m!3356693))

(assert (=> b!3009643 m!3356639))

(assert (=> b!3009643 m!3356639))

(assert (=> b!3009643 m!3356643))

(assert (=> b!3009647 m!3356639))

(assert (=> b!3009647 m!3356639))

(assert (=> b!3009647 m!3356643))

(assert (=> bm!202642 m!3356645))

(assert (=> d!847412 m!3356645))

(declare-fun m!3356695 () Bool)

(assert (=> d!847412 m!3356695))

(assert (=> b!3009003 d!847412))

(declare-fun b!3009650 () Bool)

(declare-fun e!1889825 () Bool)

(declare-fun lt!1043803 () Bool)

(assert (=> b!3009650 (= e!1889825 (not lt!1043803))))

(declare-fun b!3009651 () Bool)

(declare-fun res!1240389 () Bool)

(declare-fun e!1889827 () Bool)

(assert (=> b!3009651 (=> res!1240389 e!1889827)))

(declare-fun e!1889823 () Bool)

(assert (=> b!3009651 (= res!1240389 e!1889823)))

(declare-fun res!1240387 () Bool)

(assert (=> b!3009651 (=> (not res!1240387) (not e!1889823))))

(assert (=> b!3009651 (= res!1240387 lt!1043803)))

(declare-fun d!847414 () Bool)

(declare-fun e!1889822 () Bool)

(assert (=> d!847414 e!1889822))

(declare-fun c!495701 () Bool)

(assert (=> d!847414 (= c!495701 ((_ is EmptyExpr!9393) (reg!9722 r!17423)))))

(declare-fun e!1889824 () Bool)

(assert (=> d!847414 (= lt!1043803 e!1889824)))

(declare-fun c!495702 () Bool)

(assert (=> d!847414 (= c!495702 (isEmpty!19419 (_1!20172 lt!1043681)))))

(assert (=> d!847414 (validRegex!4126 (reg!9722 r!17423))))

(assert (=> d!847414 (= (matchR!4275 (reg!9722 r!17423) (_1!20172 lt!1043681)) lt!1043803)))

(declare-fun bm!202643 () Bool)

(declare-fun call!202648 () Bool)

(assert (=> bm!202643 (= call!202648 (isEmpty!19419 (_1!20172 lt!1043681)))))

(declare-fun b!3009652 () Bool)

(declare-fun e!1889826 () Bool)

(declare-fun e!1889828 () Bool)

(assert (=> b!3009652 (= e!1889826 e!1889828)))

(declare-fun res!1240388 () Bool)

(assert (=> b!3009652 (=> res!1240388 e!1889828)))

(assert (=> b!3009652 (= res!1240388 call!202648)))

(declare-fun b!3009653 () Bool)

(declare-fun res!1240383 () Bool)

(assert (=> b!3009653 (=> res!1240383 e!1889827)))

(assert (=> b!3009653 (= res!1240383 (not ((_ is ElementMatch!9393) (reg!9722 r!17423))))))

(assert (=> b!3009653 (= e!1889825 e!1889827)))

(declare-fun b!3009654 () Bool)

(assert (=> b!3009654 (= e!1889822 e!1889825)))

(declare-fun c!495703 () Bool)

(assert (=> b!3009654 (= c!495703 ((_ is EmptyLang!9393) (reg!9722 r!17423)))))

(declare-fun b!3009655 () Bool)

(assert (=> b!3009655 (= e!1889823 (= (head!6703 (_1!20172 lt!1043681)) (c!495525 (reg!9722 r!17423))))))

(declare-fun b!3009656 () Bool)

(assert (=> b!3009656 (= e!1889824 (nullable!3046 (reg!9722 r!17423)))))

(declare-fun b!3009657 () Bool)

(declare-fun res!1240386 () Bool)

(assert (=> b!3009657 (=> (not res!1240386) (not e!1889823))))

(assert (=> b!3009657 (= res!1240386 (isEmpty!19419 (tail!4929 (_1!20172 lt!1043681))))))

(declare-fun b!3009658 () Bool)

(assert (=> b!3009658 (= e!1889828 (not (= (head!6703 (_1!20172 lt!1043681)) (c!495525 (reg!9722 r!17423)))))))

(declare-fun b!3009659 () Bool)

(assert (=> b!3009659 (= e!1889824 (matchR!4275 (derivativeStep!2644 (reg!9722 r!17423) (head!6703 (_1!20172 lt!1043681))) (tail!4929 (_1!20172 lt!1043681))))))

(declare-fun b!3009660 () Bool)

(declare-fun res!1240384 () Bool)

(assert (=> b!3009660 (=> (not res!1240384) (not e!1889823))))

(assert (=> b!3009660 (= res!1240384 (not call!202648))))

(declare-fun b!3009661 () Bool)

(declare-fun res!1240382 () Bool)

(assert (=> b!3009661 (=> res!1240382 e!1889828)))

(assert (=> b!3009661 (= res!1240382 (not (isEmpty!19419 (tail!4929 (_1!20172 lt!1043681)))))))

(declare-fun b!3009662 () Bool)

(assert (=> b!3009662 (= e!1889822 (= lt!1043803 call!202648))))

(declare-fun b!3009663 () Bool)

(assert (=> b!3009663 (= e!1889827 e!1889826)))

(declare-fun res!1240385 () Bool)

(assert (=> b!3009663 (=> (not res!1240385) (not e!1889826))))

(assert (=> b!3009663 (= res!1240385 (not lt!1043803))))

(assert (= (and d!847414 c!495702) b!3009656))

(assert (= (and d!847414 (not c!495702)) b!3009659))

(assert (= (and d!847414 c!495701) b!3009662))

(assert (= (and d!847414 (not c!495701)) b!3009654))

(assert (= (and b!3009654 c!495703) b!3009650))

(assert (= (and b!3009654 (not c!495703)) b!3009653))

(assert (= (and b!3009653 (not res!1240383)) b!3009651))

(assert (= (and b!3009651 res!1240387) b!3009660))

(assert (= (and b!3009660 res!1240384) b!3009657))

(assert (= (and b!3009657 res!1240386) b!3009655))

(assert (= (and b!3009651 (not res!1240389)) b!3009663))

(assert (= (and b!3009663 res!1240385) b!3009652))

(assert (= (and b!3009652 (not res!1240388)) b!3009661))

(assert (= (and b!3009661 (not res!1240382)) b!3009658))

(assert (= (or b!3009662 b!3009652 b!3009660) bm!202643))

(declare-fun m!3356697 () Bool)

(assert (=> b!3009655 m!3356697))

(assert (=> b!3009659 m!3356697))

(assert (=> b!3009659 m!3356697))

(declare-fun m!3356699 () Bool)

(assert (=> b!3009659 m!3356699))

(declare-fun m!3356701 () Bool)

(assert (=> b!3009659 m!3356701))

(assert (=> b!3009659 m!3356699))

(assert (=> b!3009659 m!3356701))

(declare-fun m!3356703 () Bool)

(assert (=> b!3009659 m!3356703))

(assert (=> b!3009658 m!3356697))

(assert (=> b!3009656 m!3356627))

(assert (=> b!3009657 m!3356701))

(assert (=> b!3009657 m!3356701))

(declare-fun m!3356705 () Bool)

(assert (=> b!3009657 m!3356705))

(assert (=> b!3009661 m!3356701))

(assert (=> b!3009661 m!3356701))

(assert (=> b!3009661 m!3356705))

(declare-fun m!3356707 () Bool)

(assert (=> bm!202643 m!3356707))

(assert (=> d!847414 m!3356707))

(assert (=> d!847414 m!3356621))

(assert (=> b!3009003 d!847414))

(declare-fun d!847416 () Bool)

(assert (=> d!847416 (= (matchR!4275 (reg!9722 r!17423) (_1!20172 lt!1043681)) (matchR!4275 (simplify!384 (reg!9722 r!17423)) (_1!20172 lt!1043681)))))

(declare-fun lt!1043806 () Unit!49207)

(declare-fun choose!17875 (Regex!9393 List!35258) Unit!49207)

(assert (=> d!847416 (= lt!1043806 (choose!17875 (reg!9722 r!17423) (_1!20172 lt!1043681)))))

(assert (=> d!847416 (validRegex!4126 (reg!9722 r!17423))))

(assert (=> d!847416 (= (lemmaSimplifySound!234 (reg!9722 r!17423) (_1!20172 lt!1043681)) lt!1043806)))

(declare-fun bs!529221 () Bool)

(assert (= bs!529221 d!847416))

(assert (=> bs!529221 m!3356621))

(assert (=> bs!529221 m!3356361))

(assert (=> bs!529221 m!3356361))

(declare-fun m!3356709 () Bool)

(assert (=> bs!529221 m!3356709))

(declare-fun m!3356711 () Bool)

(assert (=> bs!529221 m!3356711))

(assert (=> bs!529221 m!3356375))

(assert (=> b!3009003 d!847416))

(declare-fun d!847418 () Bool)

(assert (=> d!847418 (= (matchR!4275 lt!1043690 (_2!20172 lt!1043681)) (matchR!4275 (simplify!384 lt!1043690) (_2!20172 lt!1043681)))))

(declare-fun lt!1043807 () Unit!49207)

(assert (=> d!847418 (= lt!1043807 (choose!17875 lt!1043690 (_2!20172 lt!1043681)))))

(assert (=> d!847418 (validRegex!4126 lt!1043690)))

(assert (=> d!847418 (= (lemmaSimplifySound!234 lt!1043690 (_2!20172 lt!1043681)) lt!1043807)))

(declare-fun bs!529222 () Bool)

(assert (= bs!529222 d!847418))

(assert (=> bs!529222 m!3356695))

(assert (=> bs!529222 m!3356379))

(assert (=> bs!529222 m!3356379))

(declare-fun m!3356713 () Bool)

(assert (=> bs!529222 m!3356713))

(declare-fun m!3356715 () Bool)

(assert (=> bs!529222 m!3356715))

(assert (=> bs!529222 m!3356385))

(assert (=> b!3009003 d!847418))

(declare-fun b!3009664 () Bool)

(declare-fun e!1889832 () Bool)

(declare-fun lt!1043808 () Bool)

(assert (=> b!3009664 (= e!1889832 (not lt!1043808))))

(declare-fun b!3009665 () Bool)

(declare-fun res!1240397 () Bool)

(declare-fun e!1889834 () Bool)

(assert (=> b!3009665 (=> res!1240397 e!1889834)))

(declare-fun e!1889830 () Bool)

(assert (=> b!3009665 (= res!1240397 e!1889830)))

(declare-fun res!1240395 () Bool)

(assert (=> b!3009665 (=> (not res!1240395) (not e!1889830))))

(assert (=> b!3009665 (= res!1240395 lt!1043808)))

(declare-fun d!847420 () Bool)

(declare-fun e!1889829 () Bool)

(assert (=> d!847420 e!1889829))

(declare-fun c!495704 () Bool)

(assert (=> d!847420 (= c!495704 ((_ is EmptyExpr!9393) lt!1043689))))

(declare-fun e!1889831 () Bool)

(assert (=> d!847420 (= lt!1043808 e!1889831)))

(declare-fun c!495705 () Bool)

(assert (=> d!847420 (= c!495705 (isEmpty!19419 (_2!20172 lt!1043681)))))

(assert (=> d!847420 (validRegex!4126 lt!1043689)))

(assert (=> d!847420 (= (matchR!4275 lt!1043689 (_2!20172 lt!1043681)) lt!1043808)))

(declare-fun bm!202644 () Bool)

(declare-fun call!202649 () Bool)

(assert (=> bm!202644 (= call!202649 (isEmpty!19419 (_2!20172 lt!1043681)))))

(declare-fun b!3009666 () Bool)

(declare-fun e!1889833 () Bool)

(declare-fun e!1889835 () Bool)

(assert (=> b!3009666 (= e!1889833 e!1889835)))

(declare-fun res!1240396 () Bool)

(assert (=> b!3009666 (=> res!1240396 e!1889835)))

(assert (=> b!3009666 (= res!1240396 call!202649)))

(declare-fun b!3009667 () Bool)

(declare-fun res!1240391 () Bool)

(assert (=> b!3009667 (=> res!1240391 e!1889834)))

(assert (=> b!3009667 (= res!1240391 (not ((_ is ElementMatch!9393) lt!1043689)))))

(assert (=> b!3009667 (= e!1889832 e!1889834)))

(declare-fun b!3009668 () Bool)

(assert (=> b!3009668 (= e!1889829 e!1889832)))

(declare-fun c!495706 () Bool)

(assert (=> b!3009668 (= c!495706 ((_ is EmptyLang!9393) lt!1043689))))

(declare-fun b!3009669 () Bool)

(assert (=> b!3009669 (= e!1889830 (= (head!6703 (_2!20172 lt!1043681)) (c!495525 lt!1043689)))))

(declare-fun b!3009670 () Bool)

(assert (=> b!3009670 (= e!1889831 (nullable!3046 lt!1043689))))

(declare-fun b!3009671 () Bool)

(declare-fun res!1240394 () Bool)

(assert (=> b!3009671 (=> (not res!1240394) (not e!1889830))))

(assert (=> b!3009671 (= res!1240394 (isEmpty!19419 (tail!4929 (_2!20172 lt!1043681))))))

(declare-fun b!3009672 () Bool)

(assert (=> b!3009672 (= e!1889835 (not (= (head!6703 (_2!20172 lt!1043681)) (c!495525 lt!1043689))))))

(declare-fun b!3009673 () Bool)

(assert (=> b!3009673 (= e!1889831 (matchR!4275 (derivativeStep!2644 lt!1043689 (head!6703 (_2!20172 lt!1043681))) (tail!4929 (_2!20172 lt!1043681))))))

(declare-fun b!3009674 () Bool)

(declare-fun res!1240392 () Bool)

(assert (=> b!3009674 (=> (not res!1240392) (not e!1889830))))

(assert (=> b!3009674 (= res!1240392 (not call!202649))))

(declare-fun b!3009675 () Bool)

(declare-fun res!1240390 () Bool)

(assert (=> b!3009675 (=> res!1240390 e!1889835)))

(assert (=> b!3009675 (= res!1240390 (not (isEmpty!19419 (tail!4929 (_2!20172 lt!1043681)))))))

(declare-fun b!3009676 () Bool)

(assert (=> b!3009676 (= e!1889829 (= lt!1043808 call!202649))))

(declare-fun b!3009677 () Bool)

(assert (=> b!3009677 (= e!1889834 e!1889833)))

(declare-fun res!1240393 () Bool)

(assert (=> b!3009677 (=> (not res!1240393) (not e!1889833))))

(assert (=> b!3009677 (= res!1240393 (not lt!1043808))))

(assert (= (and d!847420 c!495705) b!3009670))

(assert (= (and d!847420 (not c!495705)) b!3009673))

(assert (= (and d!847420 c!495704) b!3009676))

(assert (= (and d!847420 (not c!495704)) b!3009668))

(assert (= (and b!3009668 c!495706) b!3009664))

(assert (= (and b!3009668 (not c!495706)) b!3009667))

(assert (= (and b!3009667 (not res!1240391)) b!3009665))

(assert (= (and b!3009665 res!1240395) b!3009674))

(assert (= (and b!3009674 res!1240392) b!3009671))

(assert (= (and b!3009671 res!1240394) b!3009669))

(assert (= (and b!3009665 (not res!1240397)) b!3009677))

(assert (= (and b!3009677 res!1240393) b!3009666))

(assert (= (and b!3009666 (not res!1240396)) b!3009675))

(assert (= (and b!3009675 (not res!1240390)) b!3009672))

(assert (= (or b!3009676 b!3009666 b!3009674) bm!202644))

(assert (=> b!3009669 m!3356635))

(assert (=> b!3009673 m!3356635))

(assert (=> b!3009673 m!3356635))

(declare-fun m!3356717 () Bool)

(assert (=> b!3009673 m!3356717))

(assert (=> b!3009673 m!3356639))

(assert (=> b!3009673 m!3356717))

(assert (=> b!3009673 m!3356639))

(declare-fun m!3356719 () Bool)

(assert (=> b!3009673 m!3356719))

(assert (=> b!3009672 m!3356635))

(declare-fun m!3356721 () Bool)

(assert (=> b!3009670 m!3356721))

(assert (=> b!3009671 m!3356639))

(assert (=> b!3009671 m!3356639))

(assert (=> b!3009671 m!3356643))

(assert (=> b!3009675 m!3356639))

(assert (=> b!3009675 m!3356639))

(assert (=> b!3009675 m!3356643))

(assert (=> bm!202644 m!3356645))

(assert (=> d!847420 m!3356645))

(declare-fun m!3356723 () Bool)

(assert (=> d!847420 m!3356723))

(assert (=> b!3009003 d!847420))

(declare-fun d!847422 () Bool)

(declare-fun lt!1043809 () Int)

(assert (=> d!847422 (>= lt!1043809 0)))

(declare-fun e!1889836 () Int)

(assert (=> d!847422 (= lt!1043809 e!1889836)))

(declare-fun c!495707 () Bool)

(assert (=> d!847422 (= c!495707 ((_ is Nil!35134) s!11993))))

(assert (=> d!847422 (= (size!26523 s!11993) lt!1043809)))

(declare-fun b!3009678 () Bool)

(assert (=> b!3009678 (= e!1889836 0)))

(declare-fun b!3009679 () Bool)

(assert (=> b!3009679 (= e!1889836 (+ 1 (size!26523 (t!234323 s!11993))))))

(assert (= (and d!847422 c!495707) b!3009678))

(assert (= (and d!847422 (not c!495707)) b!3009679))

(declare-fun m!3356725 () Bool)

(assert (=> b!3009679 m!3356725))

(assert (=> b!3009003 d!847422))

(declare-fun b!3009680 () Bool)

(declare-fun c!495711 () Bool)

(declare-fun e!1889840 () Bool)

(assert (=> b!3009680 (= c!495711 e!1889840)))

(declare-fun res!1240398 () Bool)

(assert (=> b!3009680 (=> res!1240398 e!1889840)))

(declare-fun call!202654 () Bool)

(assert (=> b!3009680 (= res!1240398 call!202654)))

(declare-fun lt!1043815 () Regex!9393)

(declare-fun call!202655 () Regex!9393)

(assert (=> b!3009680 (= lt!1043815 call!202655)))

(declare-fun e!1889849 () Regex!9393)

(declare-fun e!1889841 () Regex!9393)

(assert (=> b!3009680 (= e!1889849 e!1889841)))

(declare-fun b!3009681 () Bool)

(declare-fun e!1889837 () Regex!9393)

(assert (=> b!3009681 (= e!1889837 lt!1043690)))

(declare-fun b!3009682 () Bool)

(declare-fun e!1889844 () Regex!9393)

(assert (=> b!3009682 (= e!1889844 e!1889837)))

(declare-fun c!495713 () Bool)

(assert (=> b!3009682 (= c!495713 ((_ is ElementMatch!9393) lt!1043690))))

(declare-fun b!3009683 () Bool)

(declare-fun c!495709 () Bool)

(declare-fun call!202652 () Bool)

(assert (=> b!3009683 (= c!495709 call!202652)))

(declare-fun e!1889839 () Regex!9393)

(declare-fun e!1889850 () Regex!9393)

(assert (=> b!3009683 (= e!1889839 e!1889850)))

(declare-fun b!3009684 () Bool)

(declare-fun c!495714 () Bool)

(assert (=> b!3009684 (= c!495714 ((_ is Union!9393) lt!1043690))))

(declare-fun e!1889842 () Regex!9393)

(assert (=> b!3009684 (= e!1889849 e!1889842)))

(declare-fun b!3009685 () Bool)

(assert (=> b!3009685 (= e!1889841 (Star!9393 lt!1043815))))

(declare-fun b!3009686 () Bool)

(declare-fun e!1889847 () Regex!9393)

(assert (=> b!3009686 (= e!1889847 EmptyExpr!9393)))

(declare-fun b!3009687 () Bool)

(declare-fun e!1889838 () Bool)

(assert (=> b!3009687 (= e!1889838 call!202652)))

(declare-fun b!3009688 () Bool)

(declare-fun e!1889845 () Bool)

(declare-fun lt!1043813 () Regex!9393)

(assert (=> b!3009688 (= e!1889845 (= (nullable!3046 lt!1043813) (nullable!3046 lt!1043690)))))

(declare-fun b!3009689 () Bool)

(assert (=> b!3009689 (= e!1889847 e!1889849)))

(declare-fun c!495718 () Bool)

(assert (=> b!3009689 (= c!495718 ((_ is Star!9393) lt!1043690))))

(declare-fun b!3009690 () Bool)

(declare-fun call!202651 () Bool)

(assert (=> b!3009690 (= e!1889840 call!202651)))

(declare-fun b!3009691 () Bool)

(declare-fun lt!1043812 () Regex!9393)

(declare-fun lt!1043814 () Regex!9393)

(assert (=> b!3009691 (= e!1889850 (Union!9393 lt!1043812 lt!1043814))))

(declare-fun d!847424 () Bool)

(assert (=> d!847424 e!1889845))

(declare-fun res!1240399 () Bool)

(assert (=> d!847424 (=> (not res!1240399) (not e!1889845))))

(assert (=> d!847424 (= res!1240399 (validRegex!4126 lt!1043813))))

(assert (=> d!847424 (= lt!1043813 e!1889844)))

(declare-fun c!495708 () Bool)

(assert (=> d!847424 (= c!495708 ((_ is EmptyLang!9393) lt!1043690))))

(assert (=> d!847424 (validRegex!4126 lt!1043690)))

(assert (=> d!847424 (= (simplify!384 lt!1043690) lt!1043813)))

(declare-fun b!3009692 () Bool)

(assert (=> b!3009692 (= e!1889850 lt!1043812)))

(declare-fun b!3009693 () Bool)

(declare-fun c!495712 () Bool)

(declare-fun lt!1043810 () Regex!9393)

(assert (=> b!3009693 (= c!495712 (isEmptyExpr!489 lt!1043810))))

(declare-fun e!1889843 () Regex!9393)

(declare-fun e!1889846 () Regex!9393)

(assert (=> b!3009693 (= e!1889843 e!1889846)))

(declare-fun bm!202645 () Bool)

(declare-fun lt!1043811 () Regex!9393)

(assert (=> bm!202645 (= call!202651 (isEmptyExpr!489 (ite c!495718 lt!1043815 lt!1043811)))))

(declare-fun bm!202646 () Bool)

(declare-fun call!202650 () Regex!9393)

(assert (=> bm!202646 (= call!202650 call!202655)))

(declare-fun b!3009694 () Bool)

(assert (=> b!3009694 (= e!1889842 e!1889843)))

(assert (=> b!3009694 (= lt!1043810 call!202650)))

(declare-fun call!202653 () Regex!9393)

(assert (=> b!3009694 (= lt!1043811 call!202653)))

(declare-fun res!1240400 () Bool)

(declare-fun call!202656 () Bool)

(assert (=> b!3009694 (= res!1240400 call!202656)))

(assert (=> b!3009694 (=> res!1240400 e!1889838)))

(declare-fun c!495715 () Bool)

(assert (=> b!3009694 (= c!495715 e!1889838)))

(declare-fun bm!202647 () Bool)

(assert (=> bm!202647 (= call!202652 (isEmptyLang!483 (ite c!495714 lt!1043814 lt!1043811)))))

(declare-fun b!3009695 () Bool)

(assert (=> b!3009695 (= e!1889846 lt!1043811)))

(declare-fun bm!202648 () Bool)

(assert (=> bm!202648 (= call!202653 (simplify!384 (ite c!495714 (regOne!19299 lt!1043690) (regTwo!19298 lt!1043690))))))

(declare-fun b!3009696 () Bool)

(assert (=> b!3009696 (= e!1889842 e!1889839)))

(assert (=> b!3009696 (= lt!1043812 call!202653)))

(assert (=> b!3009696 (= lt!1043814 call!202650)))

(declare-fun c!495716 () Bool)

(assert (=> b!3009696 (= c!495716 call!202656)))

(declare-fun bm!202649 () Bool)

(assert (=> bm!202649 (= call!202654 (isEmptyLang!483 (ite c!495718 lt!1043815 (ite c!495714 lt!1043812 lt!1043810))))))

(declare-fun b!3009697 () Bool)

(assert (=> b!3009697 (= e!1889839 lt!1043814)))

(declare-fun b!3009698 () Bool)

(assert (=> b!3009698 (= e!1889843 EmptyLang!9393)))

(declare-fun b!3009699 () Bool)

(assert (=> b!3009699 (= e!1889841 EmptyExpr!9393)))

(declare-fun b!3009700 () Bool)

(declare-fun e!1889848 () Regex!9393)

(assert (=> b!3009700 (= e!1889848 lt!1043810)))

(declare-fun b!3009701 () Bool)

(assert (=> b!3009701 (= e!1889846 e!1889848)))

(declare-fun c!495710 () Bool)

(assert (=> b!3009701 (= c!495710 call!202651)))

(declare-fun b!3009702 () Bool)

(assert (=> b!3009702 (= e!1889848 (Concat!14714 lt!1043810 lt!1043811))))

(declare-fun bm!202650 () Bool)

(assert (=> bm!202650 (= call!202656 call!202654)))

(declare-fun b!3009703 () Bool)

(assert (=> b!3009703 (= e!1889844 EmptyLang!9393)))

(declare-fun bm!202651 () Bool)

(assert (=> bm!202651 (= call!202655 (simplify!384 (ite c!495718 (reg!9722 lt!1043690) (ite c!495714 (regTwo!19299 lt!1043690) (regOne!19298 lt!1043690)))))))

(declare-fun b!3009704 () Bool)

(declare-fun c!495717 () Bool)

(assert (=> b!3009704 (= c!495717 ((_ is EmptyExpr!9393) lt!1043690))))

(assert (=> b!3009704 (= e!1889837 e!1889847)))

(assert (= (and d!847424 c!495708) b!3009703))

(assert (= (and d!847424 (not c!495708)) b!3009682))

(assert (= (and b!3009682 c!495713) b!3009681))

(assert (= (and b!3009682 (not c!495713)) b!3009704))

(assert (= (and b!3009704 c!495717) b!3009686))

(assert (= (and b!3009704 (not c!495717)) b!3009689))

(assert (= (and b!3009689 c!495718) b!3009680))

(assert (= (and b!3009689 (not c!495718)) b!3009684))

(assert (= (and b!3009680 (not res!1240398)) b!3009690))

(assert (= (and b!3009680 c!495711) b!3009699))

(assert (= (and b!3009680 (not c!495711)) b!3009685))

(assert (= (and b!3009684 c!495714) b!3009696))

(assert (= (and b!3009684 (not c!495714)) b!3009694))

(assert (= (and b!3009696 c!495716) b!3009697))

(assert (= (and b!3009696 (not c!495716)) b!3009683))

(assert (= (and b!3009683 c!495709) b!3009692))

(assert (= (and b!3009683 (not c!495709)) b!3009691))

(assert (= (and b!3009694 (not res!1240400)) b!3009687))

(assert (= (and b!3009694 c!495715) b!3009698))

(assert (= (and b!3009694 (not c!495715)) b!3009693))

(assert (= (and b!3009693 c!495712) b!3009695))

(assert (= (and b!3009693 (not c!495712)) b!3009701))

(assert (= (and b!3009701 c!495710) b!3009700))

(assert (= (and b!3009701 (not c!495710)) b!3009702))

(assert (= (or b!3009696 b!3009694) bm!202648))

(assert (= (or b!3009696 b!3009694) bm!202646))

(assert (= (or b!3009696 b!3009694) bm!202650))

(assert (= (or b!3009683 b!3009687) bm!202647))

(assert (= (or b!3009690 b!3009701) bm!202645))

(assert (= (or b!3009680 bm!202646) bm!202651))

(assert (= (or b!3009680 bm!202650) bm!202649))

(assert (= (and d!847424 res!1240399) b!3009688))

(declare-fun m!3356727 () Bool)

(assert (=> b!3009693 m!3356727))

(declare-fun m!3356729 () Bool)

(assert (=> bm!202648 m!3356729))

(declare-fun m!3356731 () Bool)

(assert (=> d!847424 m!3356731))

(assert (=> d!847424 m!3356695))

(declare-fun m!3356733 () Bool)

(assert (=> bm!202651 m!3356733))

(declare-fun m!3356735 () Bool)

(assert (=> b!3009688 m!3356735))

(assert (=> b!3009688 m!3356693))

(declare-fun m!3356737 () Bool)

(assert (=> bm!202647 m!3356737))

(declare-fun m!3356739 () Bool)

(assert (=> bm!202645 m!3356739))

(declare-fun m!3356741 () Bool)

(assert (=> bm!202649 m!3356741))

(assert (=> b!3009003 d!847424))

(declare-fun b!3009723 () Bool)

(declare-fun e!1889868 () Bool)

(declare-fun e!1889870 () Bool)

(assert (=> b!3009723 (= e!1889868 e!1889870)))

(declare-fun res!1240412 () Bool)

(assert (=> b!3009723 (= res!1240412 (not (nullable!3046 (reg!9722 r!17423))))))

(assert (=> b!3009723 (=> (not res!1240412) (not e!1889870))))

(declare-fun b!3009724 () Bool)

(declare-fun call!202663 () Bool)

(assert (=> b!3009724 (= e!1889870 call!202663)))

(declare-fun b!3009725 () Bool)

(declare-fun e!1889871 () Bool)

(declare-fun call!202664 () Bool)

(assert (=> b!3009725 (= e!1889871 call!202664)))

(declare-fun d!847426 () Bool)

(declare-fun res!1240413 () Bool)

(declare-fun e!1889867 () Bool)

(assert (=> d!847426 (=> res!1240413 e!1889867)))

(assert (=> d!847426 (= res!1240413 ((_ is ElementMatch!9393) r!17423))))

(assert (=> d!847426 (= (validRegex!4126 r!17423) e!1889867)))

(declare-fun b!3009726 () Bool)

(declare-fun res!1240415 () Bool)

(declare-fun e!1889865 () Bool)

(assert (=> b!3009726 (=> (not res!1240415) (not e!1889865))))

(assert (=> b!3009726 (= res!1240415 call!202664)))

(declare-fun e!1889866 () Bool)

(assert (=> b!3009726 (= e!1889866 e!1889865)))

(declare-fun bm!202658 () Bool)

(declare-fun call!202665 () Bool)

(declare-fun c!495723 () Bool)

(assert (=> bm!202658 (= call!202665 (validRegex!4126 (ite c!495723 (regTwo!19299 r!17423) (regOne!19298 r!17423))))))

(declare-fun b!3009727 () Bool)

(assert (=> b!3009727 (= e!1889865 call!202665)))

(declare-fun b!3009728 () Bool)

(declare-fun e!1889869 () Bool)

(assert (=> b!3009728 (= e!1889869 e!1889871)))

(declare-fun res!1240411 () Bool)

(assert (=> b!3009728 (=> (not res!1240411) (not e!1889871))))

(assert (=> b!3009728 (= res!1240411 call!202665)))

(declare-fun b!3009729 () Bool)

(assert (=> b!3009729 (= e!1889868 e!1889866)))

(assert (=> b!3009729 (= c!495723 ((_ is Union!9393) r!17423))))

(declare-fun bm!202659 () Bool)

(assert (=> bm!202659 (= call!202664 call!202663)))

(declare-fun b!3009730 () Bool)

(declare-fun res!1240414 () Bool)

(assert (=> b!3009730 (=> res!1240414 e!1889869)))

(assert (=> b!3009730 (= res!1240414 (not ((_ is Concat!14714) r!17423)))))

(assert (=> b!3009730 (= e!1889866 e!1889869)))

(declare-fun b!3009731 () Bool)

(assert (=> b!3009731 (= e!1889867 e!1889868)))

(declare-fun c!495724 () Bool)

(assert (=> b!3009731 (= c!495724 ((_ is Star!9393) r!17423))))

(declare-fun bm!202660 () Bool)

(assert (=> bm!202660 (= call!202663 (validRegex!4126 (ite c!495724 (reg!9722 r!17423) (ite c!495723 (regOne!19299 r!17423) (regTwo!19298 r!17423)))))))

(assert (= (and d!847426 (not res!1240413)) b!3009731))

(assert (= (and b!3009731 c!495724) b!3009723))

(assert (= (and b!3009731 (not c!495724)) b!3009729))

(assert (= (and b!3009723 res!1240412) b!3009724))

(assert (= (and b!3009729 c!495723) b!3009726))

(assert (= (and b!3009729 (not c!495723)) b!3009730))

(assert (= (and b!3009726 res!1240415) b!3009727))

(assert (= (and b!3009730 (not res!1240414)) b!3009728))

(assert (= (and b!3009728 res!1240411) b!3009725))

(assert (= (or b!3009726 b!3009725) bm!202659))

(assert (= (or b!3009727 b!3009728) bm!202658))

(assert (= (or b!3009724 bm!202659) bm!202660))

(assert (=> b!3009723 m!3356627))

(declare-fun m!3356743 () Bool)

(assert (=> bm!202658 m!3356743))

(declare-fun m!3356745 () Bool)

(assert (=> bm!202660 m!3356745))

(assert (=> start!289864 d!847426))

(declare-fun d!847428 () Bool)

(assert (=> d!847428 (= (isEmpty!19419 s!11993) ((_ is Nil!35134) s!11993))))

(assert (=> b!3008992 d!847428))

(declare-fun bs!529223 () Bool)

(declare-fun b!3009734 () Bool)

(assert (= bs!529223 (and b!3009734 d!847402)))

(declare-fun lambda!112621 () Int)

(assert (=> bs!529223 (not (= lambda!112621 lambda!112616))))

(declare-fun bs!529224 () Bool)

(assert (= bs!529224 (and b!3009734 d!847408)))

(assert (=> bs!529224 (not (= lambda!112621 lambda!112620))))

(declare-fun bs!529225 () Bool)

(assert (= bs!529225 (and b!3009734 b!3008998)))

(assert (=> bs!529225 (= (= (reg!9722 lt!1043692) lt!1043686) (= lambda!112621 lambda!112588))))

(declare-fun bs!529226 () Bool)

(assert (= bs!529226 (and b!3009734 b!3009154)))

(assert (=> bs!529226 (= (and (= (reg!9722 lt!1043692) (reg!9722 r!17423)) (= lt!1043692 r!17423)) (= lambda!112621 lambda!112601))))

(assert (=> bs!529225 (not (= lambda!112621 lambda!112587))))

(declare-fun bs!529227 () Bool)

(assert (= bs!529227 (and b!3009734 b!3009153)))

(assert (=> bs!529227 (not (= lambda!112621 lambda!112602))))

(assert (=> bs!529223 (= (and (= (reg!9722 lt!1043692) lt!1043686) (= lt!1043692 (Star!9393 lt!1043686))) (= lambda!112621 lambda!112617))))

(assert (=> b!3009734 true))

(assert (=> b!3009734 true))

(declare-fun bs!529228 () Bool)

(declare-fun b!3009733 () Bool)

(assert (= bs!529228 (and b!3009733 d!847402)))

(declare-fun lambda!112622 () Int)

(assert (=> bs!529228 (not (= lambda!112622 lambda!112616))))

(declare-fun bs!529229 () Bool)

(assert (= bs!529229 (and b!3009733 d!847408)))

(assert (=> bs!529229 (not (= lambda!112622 lambda!112620))))

(declare-fun bs!529230 () Bool)

(assert (= bs!529230 (and b!3009733 b!3009734)))

(assert (=> bs!529230 (not (= lambda!112622 lambda!112621))))

(declare-fun bs!529231 () Bool)

(assert (= bs!529231 (and b!3009733 b!3008998)))

(assert (=> bs!529231 (not (= lambda!112622 lambda!112588))))

(declare-fun bs!529232 () Bool)

(assert (= bs!529232 (and b!3009733 b!3009154)))

(assert (=> bs!529232 (not (= lambda!112622 lambda!112601))))

(assert (=> bs!529231 (not (= lambda!112622 lambda!112587))))

(declare-fun bs!529233 () Bool)

(assert (= bs!529233 (and b!3009733 b!3009153)))

(assert (=> bs!529233 (= (and (= (regOne!19298 lt!1043692) (regOne!19298 r!17423)) (= (regTwo!19298 lt!1043692) (regTwo!19298 r!17423))) (= lambda!112622 lambda!112602))))

(assert (=> bs!529228 (not (= lambda!112622 lambda!112617))))

(assert (=> b!3009733 true))

(assert (=> b!3009733 true))

(declare-fun b!3009732 () Bool)

(declare-fun e!1889876 () Bool)

(declare-fun call!202667 () Bool)

(assert (=> b!3009732 (= e!1889876 call!202667)))

(declare-fun e!1889875 () Bool)

(declare-fun call!202666 () Bool)

(assert (=> b!3009733 (= e!1889875 call!202666)))

(declare-fun e!1889872 () Bool)

(assert (=> b!3009734 (= e!1889872 call!202666)))

(declare-fun b!3009735 () Bool)

(declare-fun c!495727 () Bool)

(assert (=> b!3009735 (= c!495727 ((_ is Union!9393) lt!1043692))))

(declare-fun e!1889873 () Bool)

(declare-fun e!1889877 () Bool)

(assert (=> b!3009735 (= e!1889873 e!1889877)))

(declare-fun b!3009736 () Bool)

(assert (=> b!3009736 (= e!1889873 (= s!11993 (Cons!35134 (c!495525 lt!1043692) Nil!35134)))))

(declare-fun b!3009737 () Bool)

(declare-fun e!1889874 () Bool)

(assert (=> b!3009737 (= e!1889876 e!1889874)))

(declare-fun res!1240418 () Bool)

(assert (=> b!3009737 (= res!1240418 (not ((_ is EmptyLang!9393) lt!1043692)))))

(assert (=> b!3009737 (=> (not res!1240418) (not e!1889874))))

(declare-fun b!3009738 () Bool)

(declare-fun c!495728 () Bool)

(assert (=> b!3009738 (= c!495728 ((_ is ElementMatch!9393) lt!1043692))))

(assert (=> b!3009738 (= e!1889874 e!1889873)))

(declare-fun b!3009739 () Bool)

(assert (=> b!3009739 (= e!1889877 e!1889875)))

(declare-fun c!495725 () Bool)

(assert (=> b!3009739 (= c!495725 ((_ is Star!9393) lt!1043692))))

(declare-fun bm!202661 () Bool)

(assert (=> bm!202661 (= call!202667 (isEmpty!19419 s!11993))))

(declare-fun b!3009740 () Bool)

(declare-fun res!1240417 () Bool)

(assert (=> b!3009740 (=> res!1240417 e!1889872)))

(assert (=> b!3009740 (= res!1240417 call!202667)))

(assert (=> b!3009740 (= e!1889875 e!1889872)))

(declare-fun bm!202662 () Bool)

(assert (=> bm!202662 (= call!202666 (Exists!1662 (ite c!495725 lambda!112621 lambda!112622)))))

(declare-fun b!3009741 () Bool)

(declare-fun e!1889878 () Bool)

(assert (=> b!3009741 (= e!1889878 (matchRSpec!1530 (regTwo!19299 lt!1043692) s!11993))))

(declare-fun b!3009742 () Bool)

(assert (=> b!3009742 (= e!1889877 e!1889878)))

(declare-fun res!1240416 () Bool)

(assert (=> b!3009742 (= res!1240416 (matchRSpec!1530 (regOne!19299 lt!1043692) s!11993))))

(assert (=> b!3009742 (=> res!1240416 e!1889878)))

(declare-fun d!847430 () Bool)

(declare-fun c!495726 () Bool)

(assert (=> d!847430 (= c!495726 ((_ is EmptyExpr!9393) lt!1043692))))

(assert (=> d!847430 (= (matchRSpec!1530 lt!1043692 s!11993) e!1889876)))

(assert (= (and d!847430 c!495726) b!3009732))

(assert (= (and d!847430 (not c!495726)) b!3009737))

(assert (= (and b!3009737 res!1240418) b!3009738))

(assert (= (and b!3009738 c!495728) b!3009736))

(assert (= (and b!3009738 (not c!495728)) b!3009735))

(assert (= (and b!3009735 c!495727) b!3009742))

(assert (= (and b!3009735 (not c!495727)) b!3009739))

(assert (= (and b!3009742 (not res!1240416)) b!3009741))

(assert (= (and b!3009739 c!495725) b!3009740))

(assert (= (and b!3009739 (not c!495725)) b!3009733))

(assert (= (and b!3009740 (not res!1240417)) b!3009734))

(assert (= (or b!3009734 b!3009733) bm!202662))

(assert (= (or b!3009732 b!3009740) bm!202661))

(assert (=> bm!202661 m!3356353))

(declare-fun m!3356747 () Bool)

(assert (=> bm!202662 m!3356747))

(declare-fun m!3356749 () Bool)

(assert (=> b!3009741 m!3356749))

(declare-fun m!3356751 () Bool)

(assert (=> b!3009742 m!3356751))

(assert (=> b!3008992 d!847430))

(declare-fun d!847432 () Bool)

(assert (=> d!847432 (= (matchR!4275 lt!1043692 s!11993) (matchRSpec!1530 lt!1043692 s!11993))))

(declare-fun lt!1043816 () Unit!49207)

(assert (=> d!847432 (= lt!1043816 (choose!17870 lt!1043692 s!11993))))

(assert (=> d!847432 (validRegex!4126 lt!1043692)))

(assert (=> d!847432 (= (mainMatchTheorem!1530 lt!1043692 s!11993) lt!1043816)))

(declare-fun bs!529234 () Bool)

(assert (= bs!529234 d!847432))

(assert (=> bs!529234 m!3356369))

(assert (=> bs!529234 m!3356355))

(declare-fun m!3356753 () Bool)

(assert (=> bs!529234 m!3356753))

(assert (=> bs!529234 m!3356523))

(assert (=> b!3008992 d!847432))

(declare-fun d!847434 () Bool)

(assert (=> d!847434 (= (matchR!4275 (reg!9722 r!17423) (_1!20172 lt!1043681)) (matchRSpec!1530 (reg!9722 r!17423) (_1!20172 lt!1043681)))))

(declare-fun lt!1043817 () Unit!49207)

(assert (=> d!847434 (= lt!1043817 (choose!17870 (reg!9722 r!17423) (_1!20172 lt!1043681)))))

(assert (=> d!847434 (validRegex!4126 (reg!9722 r!17423))))

(assert (=> d!847434 (= (mainMatchTheorem!1530 (reg!9722 r!17423) (_1!20172 lt!1043681)) lt!1043817)))

(declare-fun bs!529235 () Bool)

(assert (= bs!529235 d!847434))

(assert (=> bs!529235 m!3356375))

(declare-fun m!3356755 () Bool)

(assert (=> bs!529235 m!3356755))

(declare-fun m!3356757 () Bool)

(assert (=> bs!529235 m!3356757))

(assert (=> bs!529235 m!3356621))

(assert (=> b!3009002 d!847434))

(declare-fun b!3009743 () Bool)

(declare-fun e!1889882 () Bool)

(declare-fun lt!1043818 () Bool)

(assert (=> b!3009743 (= e!1889882 (not lt!1043818))))

(declare-fun b!3009744 () Bool)

(declare-fun res!1240426 () Bool)

(declare-fun e!1889884 () Bool)

(assert (=> b!3009744 (=> res!1240426 e!1889884)))

(declare-fun e!1889880 () Bool)

(assert (=> b!3009744 (= res!1240426 e!1889880)))

(declare-fun res!1240424 () Bool)

(assert (=> b!3009744 (=> (not res!1240424) (not e!1889880))))

(assert (=> b!3009744 (= res!1240424 lt!1043818)))

(declare-fun d!847436 () Bool)

(declare-fun e!1889879 () Bool)

(assert (=> d!847436 e!1889879))

(declare-fun c!495729 () Bool)

(assert (=> d!847436 (= c!495729 ((_ is EmptyExpr!9393) lt!1043686))))

(declare-fun e!1889881 () Bool)

(assert (=> d!847436 (= lt!1043818 e!1889881)))

(declare-fun c!495730 () Bool)

(assert (=> d!847436 (= c!495730 (isEmpty!19419 (_1!20172 lt!1043681)))))

(assert (=> d!847436 (validRegex!4126 lt!1043686)))

(assert (=> d!847436 (= (matchR!4275 lt!1043686 (_1!20172 lt!1043681)) lt!1043818)))

(declare-fun bm!202663 () Bool)

(declare-fun call!202668 () Bool)

(assert (=> bm!202663 (= call!202668 (isEmpty!19419 (_1!20172 lt!1043681)))))

(declare-fun b!3009745 () Bool)

(declare-fun e!1889883 () Bool)

(declare-fun e!1889885 () Bool)

(assert (=> b!3009745 (= e!1889883 e!1889885)))

(declare-fun res!1240425 () Bool)

(assert (=> b!3009745 (=> res!1240425 e!1889885)))

(assert (=> b!3009745 (= res!1240425 call!202668)))

(declare-fun b!3009746 () Bool)

(declare-fun res!1240420 () Bool)

(assert (=> b!3009746 (=> res!1240420 e!1889884)))

(assert (=> b!3009746 (= res!1240420 (not ((_ is ElementMatch!9393) lt!1043686)))))

(assert (=> b!3009746 (= e!1889882 e!1889884)))

(declare-fun b!3009747 () Bool)

(assert (=> b!3009747 (= e!1889879 e!1889882)))

(declare-fun c!495731 () Bool)

(assert (=> b!3009747 (= c!495731 ((_ is EmptyLang!9393) lt!1043686))))

(declare-fun b!3009748 () Bool)

(assert (=> b!3009748 (= e!1889880 (= (head!6703 (_1!20172 lt!1043681)) (c!495525 lt!1043686)))))

(declare-fun b!3009749 () Bool)

(assert (=> b!3009749 (= e!1889881 (nullable!3046 lt!1043686))))

(declare-fun b!3009750 () Bool)

(declare-fun res!1240423 () Bool)

(assert (=> b!3009750 (=> (not res!1240423) (not e!1889880))))

(assert (=> b!3009750 (= res!1240423 (isEmpty!19419 (tail!4929 (_1!20172 lt!1043681))))))

(declare-fun b!3009751 () Bool)

(assert (=> b!3009751 (= e!1889885 (not (= (head!6703 (_1!20172 lt!1043681)) (c!495525 lt!1043686))))))

(declare-fun b!3009752 () Bool)

(assert (=> b!3009752 (= e!1889881 (matchR!4275 (derivativeStep!2644 lt!1043686 (head!6703 (_1!20172 lt!1043681))) (tail!4929 (_1!20172 lt!1043681))))))

(declare-fun b!3009753 () Bool)

(declare-fun res!1240421 () Bool)

(assert (=> b!3009753 (=> (not res!1240421) (not e!1889880))))

(assert (=> b!3009753 (= res!1240421 (not call!202668))))

(declare-fun b!3009754 () Bool)

(declare-fun res!1240419 () Bool)

(assert (=> b!3009754 (=> res!1240419 e!1889885)))

(assert (=> b!3009754 (= res!1240419 (not (isEmpty!19419 (tail!4929 (_1!20172 lt!1043681)))))))

(declare-fun b!3009755 () Bool)

(assert (=> b!3009755 (= e!1889879 (= lt!1043818 call!202668))))

(declare-fun b!3009756 () Bool)

(assert (=> b!3009756 (= e!1889884 e!1889883)))

(declare-fun res!1240422 () Bool)

(assert (=> b!3009756 (=> (not res!1240422) (not e!1889883))))

(assert (=> b!3009756 (= res!1240422 (not lt!1043818))))

(assert (= (and d!847436 c!495730) b!3009749))

(assert (= (and d!847436 (not c!495730)) b!3009752))

(assert (= (and d!847436 c!495729) b!3009755))

(assert (= (and d!847436 (not c!495729)) b!3009747))

(assert (= (and b!3009747 c!495731) b!3009743))

(assert (= (and b!3009747 (not c!495731)) b!3009746))

(assert (= (and b!3009746 (not res!1240420)) b!3009744))

(assert (= (and b!3009744 res!1240424) b!3009753))

(assert (= (and b!3009753 res!1240421) b!3009750))

(assert (= (and b!3009750 res!1240423) b!3009748))

(assert (= (and b!3009744 (not res!1240426)) b!3009756))

(assert (= (and b!3009756 res!1240422) b!3009745))

(assert (= (and b!3009745 (not res!1240425)) b!3009754))

(assert (= (and b!3009754 (not res!1240419)) b!3009751))

(assert (= (or b!3009755 b!3009745 b!3009753) bm!202663))

(assert (=> b!3009748 m!3356697))

(assert (=> b!3009752 m!3356697))

(assert (=> b!3009752 m!3356697))

(declare-fun m!3356759 () Bool)

(assert (=> b!3009752 m!3356759))

(assert (=> b!3009752 m!3356701))

(assert (=> b!3009752 m!3356759))

(assert (=> b!3009752 m!3356701))

(declare-fun m!3356761 () Bool)

(assert (=> b!3009752 m!3356761))

(assert (=> b!3009751 m!3356697))

(declare-fun m!3356763 () Bool)

(assert (=> b!3009749 m!3356763))

(assert (=> b!3009750 m!3356701))

(assert (=> b!3009750 m!3356701))

(assert (=> b!3009750 m!3356705))

(assert (=> b!3009754 m!3356701))

(assert (=> b!3009754 m!3356701))

(assert (=> b!3009754 m!3356705))

(assert (=> bm!202663 m!3356707))

(assert (=> d!847436 m!3356707))

(assert (=> d!847436 m!3356657))

(assert (=> b!3008995 d!847436))

(declare-fun d!847438 () Bool)

(assert (=> d!847438 (= (get!10936 lt!1043695) (v!34905 lt!1043695))))

(assert (=> b!3008995 d!847438))

(declare-fun b!3009767 () Bool)

(declare-fun e!1889888 () Bool)

(assert (=> b!3009767 (= e!1889888 tp_is_empty!16349)))

(declare-fun b!3009768 () Bool)

(declare-fun tp!955319 () Bool)

(declare-fun tp!955322 () Bool)

(assert (=> b!3009768 (= e!1889888 (and tp!955319 tp!955322))))

(assert (=> b!3008999 (= tp!955268 e!1889888)))

(declare-fun b!3009770 () Bool)

(declare-fun tp!955321 () Bool)

(declare-fun tp!955320 () Bool)

(assert (=> b!3009770 (= e!1889888 (and tp!955321 tp!955320))))

(declare-fun b!3009769 () Bool)

(declare-fun tp!955318 () Bool)

(assert (=> b!3009769 (= e!1889888 tp!955318)))

(assert (= (and b!3008999 ((_ is ElementMatch!9393) (regOne!19298 r!17423))) b!3009767))

(assert (= (and b!3008999 ((_ is Concat!14714) (regOne!19298 r!17423))) b!3009768))

(assert (= (and b!3008999 ((_ is Star!9393) (regOne!19298 r!17423))) b!3009769))

(assert (= (and b!3008999 ((_ is Union!9393) (regOne!19298 r!17423))) b!3009770))

(declare-fun b!3009771 () Bool)

(declare-fun e!1889889 () Bool)

(assert (=> b!3009771 (= e!1889889 tp_is_empty!16349)))

(declare-fun b!3009772 () Bool)

(declare-fun tp!955324 () Bool)

(declare-fun tp!955327 () Bool)

(assert (=> b!3009772 (= e!1889889 (and tp!955324 tp!955327))))

(assert (=> b!3008999 (= tp!955267 e!1889889)))

(declare-fun b!3009774 () Bool)

(declare-fun tp!955326 () Bool)

(declare-fun tp!955325 () Bool)

(assert (=> b!3009774 (= e!1889889 (and tp!955326 tp!955325))))

(declare-fun b!3009773 () Bool)

(declare-fun tp!955323 () Bool)

(assert (=> b!3009773 (= e!1889889 tp!955323)))

(assert (= (and b!3008999 ((_ is ElementMatch!9393) (regTwo!19298 r!17423))) b!3009771))

(assert (= (and b!3008999 ((_ is Concat!14714) (regTwo!19298 r!17423))) b!3009772))

(assert (= (and b!3008999 ((_ is Star!9393) (regTwo!19298 r!17423))) b!3009773))

(assert (= (and b!3008999 ((_ is Union!9393) (regTwo!19298 r!17423))) b!3009774))

(declare-fun b!3009779 () Bool)

(declare-fun e!1889892 () Bool)

(declare-fun tp!955330 () Bool)

(assert (=> b!3009779 (= e!1889892 (and tp_is_empty!16349 tp!955330))))

(assert (=> b!3008997 (= tp!955265 e!1889892)))

(assert (= (and b!3008997 ((_ is Cons!35134) (t!234323 s!11993))) b!3009779))

(declare-fun b!3009780 () Bool)

(declare-fun e!1889893 () Bool)

(assert (=> b!3009780 (= e!1889893 tp_is_empty!16349)))

(declare-fun b!3009781 () Bool)

(declare-fun tp!955332 () Bool)

(declare-fun tp!955335 () Bool)

(assert (=> b!3009781 (= e!1889893 (and tp!955332 tp!955335))))

(assert (=> b!3008991 (= tp!955264 e!1889893)))

(declare-fun b!3009783 () Bool)

(declare-fun tp!955334 () Bool)

(declare-fun tp!955333 () Bool)

(assert (=> b!3009783 (= e!1889893 (and tp!955334 tp!955333))))

(declare-fun b!3009782 () Bool)

(declare-fun tp!955331 () Bool)

(assert (=> b!3009782 (= e!1889893 tp!955331)))

(assert (= (and b!3008991 ((_ is ElementMatch!9393) (regOne!19299 r!17423))) b!3009780))

(assert (= (and b!3008991 ((_ is Concat!14714) (regOne!19299 r!17423))) b!3009781))

(assert (= (and b!3008991 ((_ is Star!9393) (regOne!19299 r!17423))) b!3009782))

(assert (= (and b!3008991 ((_ is Union!9393) (regOne!19299 r!17423))) b!3009783))

(declare-fun b!3009784 () Bool)

(declare-fun e!1889894 () Bool)

(assert (=> b!3009784 (= e!1889894 tp_is_empty!16349)))

(declare-fun b!3009785 () Bool)

(declare-fun tp!955337 () Bool)

(declare-fun tp!955340 () Bool)

(assert (=> b!3009785 (= e!1889894 (and tp!955337 tp!955340))))

(assert (=> b!3008991 (= tp!955266 e!1889894)))

(declare-fun b!3009787 () Bool)

(declare-fun tp!955339 () Bool)

(declare-fun tp!955338 () Bool)

(assert (=> b!3009787 (= e!1889894 (and tp!955339 tp!955338))))

(declare-fun b!3009786 () Bool)

(declare-fun tp!955336 () Bool)

(assert (=> b!3009786 (= e!1889894 tp!955336)))

(assert (= (and b!3008991 ((_ is ElementMatch!9393) (regTwo!19299 r!17423))) b!3009784))

(assert (= (and b!3008991 ((_ is Concat!14714) (regTwo!19299 r!17423))) b!3009785))

(assert (= (and b!3008991 ((_ is Star!9393) (regTwo!19299 r!17423))) b!3009786))

(assert (= (and b!3008991 ((_ is Union!9393) (regTwo!19299 r!17423))) b!3009787))

(declare-fun b!3009788 () Bool)

(declare-fun e!1889895 () Bool)

(assert (=> b!3009788 (= e!1889895 tp_is_empty!16349)))

(declare-fun b!3009789 () Bool)

(declare-fun tp!955342 () Bool)

(declare-fun tp!955345 () Bool)

(assert (=> b!3009789 (= e!1889895 (and tp!955342 tp!955345))))

(assert (=> b!3009001 (= tp!955269 e!1889895)))

(declare-fun b!3009791 () Bool)

(declare-fun tp!955344 () Bool)

(declare-fun tp!955343 () Bool)

(assert (=> b!3009791 (= e!1889895 (and tp!955344 tp!955343))))

(declare-fun b!3009790 () Bool)

(declare-fun tp!955341 () Bool)

(assert (=> b!3009790 (= e!1889895 tp!955341)))

(assert (= (and b!3009001 ((_ is ElementMatch!9393) (reg!9722 r!17423))) b!3009788))

(assert (= (and b!3009001 ((_ is Concat!14714) (reg!9722 r!17423))) b!3009789))

(assert (= (and b!3009001 ((_ is Star!9393) (reg!9722 r!17423))) b!3009790))

(assert (= (and b!3009001 ((_ is Union!9393) (reg!9722 r!17423))) b!3009791))

(check-sat (not b!3009658) (not b!3009563) (not b!3009584) (not bm!202607) (not b!3009768) (not b!3009331) (not b!3009785) (not b!3009672) (not b!3009617) (not b!3009659) (not b!3009786) (not b!3009781) (not d!847400) (not b!3009688) (not b!3009789) (not b!3009787) (not b!3009750) (not b!3009621) (not b!3009619) (not b!3009673) (not bm!202651) (not bm!202634) (not b!3009332) (not b!3009723) (not b!3009645) (not b!3009782) (not b!3009774) (not b!3009661) (not b!3009754) (not b!3009580) (not bm!202663) (not b!3009641) (not bm!202642) (not bm!202643) (not d!847434) (not b!3009622) (not b!3009583) (not d!847370) (not b!3009318) (not bm!202644) (not bm!202641) (not b!3009752) (not b!3009693) (not b!3009657) (not bm!202637) (not bm!202661) (not b!3009773) (not b!3009582) (not b!3009751) (not bm!202658) (not b!3009586) (not b!3009581) (not bm!202647) (not b!3009749) (not bm!202662) (not b!3009669) (not bm!202648) (not d!847404) (not b!3009748) (not bm!202572) (not d!847366) (not bm!202640) (not b!3009162) (not b!3009790) tp_is_empty!16349 (not b!3009315) (not b!3009772) (not b!3009770) (not bm!202636) (not b!3009647) (not d!847424) (not b!3009741) (not d!847406) (not b!3009330) (not b!3009670) (not b!3009655) (not b!3009644) (not d!847414) (not b!3009791) (not b!3009783) (not b!3009161) (not d!847360) (not d!847432) (not b!3009679) (not d!847408) (not bm!202660) (not b!3009671) (not bm!202573) (not b!3009333) (not bm!202608) (not d!847416) (not b!3009558) (not b!3009313) (not b!3009312) (not d!847396) (not b!3009779) (not bm!202638) (not b!3009620) (not d!847352) (not bm!202645) (not d!847420) (not b!3009656) (not d!847402) (not d!847418) (not d!847412) (not b!3009334) (not b!3009769) (not b!3009314) (not b!3009742) (not d!847436) (not b!3009316) (not b!3009625) (not b!3009635) (not bm!202649) (not b!3009643) (not d!847398) (not b!3009336) (not b!3009675) (not b!3009642))
(check-sat)
(get-model)

(declare-fun b!3009792 () Bool)

(declare-fun c!495735 () Bool)

(declare-fun e!1889899 () Bool)

(assert (=> b!3009792 (= c!495735 e!1889899)))

(declare-fun res!1240427 () Bool)

(assert (=> b!3009792 (=> res!1240427 e!1889899)))

(declare-fun call!202673 () Bool)

(assert (=> b!3009792 (= res!1240427 call!202673)))

(declare-fun lt!1043824 () Regex!9393)

(declare-fun call!202674 () Regex!9393)

(assert (=> b!3009792 (= lt!1043824 call!202674)))

(declare-fun e!1889908 () Regex!9393)

(declare-fun e!1889900 () Regex!9393)

(assert (=> b!3009792 (= e!1889908 e!1889900)))

(declare-fun b!3009793 () Bool)

(declare-fun e!1889896 () Regex!9393)

(assert (=> b!3009793 (= e!1889896 (ite c!495681 (regOne!19299 (reg!9722 r!17423)) (regTwo!19298 (reg!9722 r!17423))))))

(declare-fun b!3009794 () Bool)

(declare-fun e!1889903 () Regex!9393)

(assert (=> b!3009794 (= e!1889903 e!1889896)))

(declare-fun c!495737 () Bool)

(assert (=> b!3009794 (= c!495737 ((_ is ElementMatch!9393) (ite c!495681 (regOne!19299 (reg!9722 r!17423)) (regTwo!19298 (reg!9722 r!17423)))))))

(declare-fun b!3009795 () Bool)

(declare-fun c!495733 () Bool)

(declare-fun call!202671 () Bool)

(assert (=> b!3009795 (= c!495733 call!202671)))

(declare-fun e!1889898 () Regex!9393)

(declare-fun e!1889909 () Regex!9393)

(assert (=> b!3009795 (= e!1889898 e!1889909)))

(declare-fun b!3009796 () Bool)

(declare-fun c!495738 () Bool)

(assert (=> b!3009796 (= c!495738 ((_ is Union!9393) (ite c!495681 (regOne!19299 (reg!9722 r!17423)) (regTwo!19298 (reg!9722 r!17423)))))))

(declare-fun e!1889901 () Regex!9393)

(assert (=> b!3009796 (= e!1889908 e!1889901)))

(declare-fun b!3009797 () Bool)

(assert (=> b!3009797 (= e!1889900 (Star!9393 lt!1043824))))

(declare-fun b!3009798 () Bool)

(declare-fun e!1889906 () Regex!9393)

(assert (=> b!3009798 (= e!1889906 EmptyExpr!9393)))

(declare-fun b!3009799 () Bool)

(declare-fun e!1889897 () Bool)

(assert (=> b!3009799 (= e!1889897 call!202671)))

(declare-fun lt!1043822 () Regex!9393)

(declare-fun e!1889904 () Bool)

(declare-fun b!3009800 () Bool)

(assert (=> b!3009800 (= e!1889904 (= (nullable!3046 lt!1043822) (nullable!3046 (ite c!495681 (regOne!19299 (reg!9722 r!17423)) (regTwo!19298 (reg!9722 r!17423))))))))

(declare-fun b!3009801 () Bool)

(assert (=> b!3009801 (= e!1889906 e!1889908)))

(declare-fun c!495742 () Bool)

(assert (=> b!3009801 (= c!495742 ((_ is Star!9393) (ite c!495681 (regOne!19299 (reg!9722 r!17423)) (regTwo!19298 (reg!9722 r!17423)))))))

(declare-fun b!3009802 () Bool)

(declare-fun call!202670 () Bool)

(assert (=> b!3009802 (= e!1889899 call!202670)))

(declare-fun b!3009803 () Bool)

(declare-fun lt!1043821 () Regex!9393)

(declare-fun lt!1043823 () Regex!9393)

(assert (=> b!3009803 (= e!1889909 (Union!9393 lt!1043821 lt!1043823))))

(declare-fun d!847440 () Bool)

(assert (=> d!847440 e!1889904))

(declare-fun res!1240428 () Bool)

(assert (=> d!847440 (=> (not res!1240428) (not e!1889904))))

(assert (=> d!847440 (= res!1240428 (validRegex!4126 lt!1043822))))

(assert (=> d!847440 (= lt!1043822 e!1889903)))

(declare-fun c!495732 () Bool)

(assert (=> d!847440 (= c!495732 ((_ is EmptyLang!9393) (ite c!495681 (regOne!19299 (reg!9722 r!17423)) (regTwo!19298 (reg!9722 r!17423)))))))

(assert (=> d!847440 (validRegex!4126 (ite c!495681 (regOne!19299 (reg!9722 r!17423)) (regTwo!19298 (reg!9722 r!17423))))))

(assert (=> d!847440 (= (simplify!384 (ite c!495681 (regOne!19299 (reg!9722 r!17423)) (regTwo!19298 (reg!9722 r!17423)))) lt!1043822)))

(declare-fun b!3009804 () Bool)

(assert (=> b!3009804 (= e!1889909 lt!1043821)))

(declare-fun b!3009805 () Bool)

(declare-fun c!495736 () Bool)

(declare-fun lt!1043819 () Regex!9393)

(assert (=> b!3009805 (= c!495736 (isEmptyExpr!489 lt!1043819))))

(declare-fun e!1889902 () Regex!9393)

(declare-fun e!1889905 () Regex!9393)

(assert (=> b!3009805 (= e!1889902 e!1889905)))

(declare-fun lt!1043820 () Regex!9393)

(declare-fun bm!202664 () Bool)

(assert (=> bm!202664 (= call!202670 (isEmptyExpr!489 (ite c!495742 lt!1043824 lt!1043820)))))

(declare-fun bm!202665 () Bool)

(declare-fun call!202669 () Regex!9393)

(assert (=> bm!202665 (= call!202669 call!202674)))

(declare-fun b!3009806 () Bool)

(assert (=> b!3009806 (= e!1889901 e!1889902)))

(assert (=> b!3009806 (= lt!1043819 call!202669)))

(declare-fun call!202672 () Regex!9393)

(assert (=> b!3009806 (= lt!1043820 call!202672)))

(declare-fun res!1240429 () Bool)

(declare-fun call!202675 () Bool)

(assert (=> b!3009806 (= res!1240429 call!202675)))

(assert (=> b!3009806 (=> res!1240429 e!1889897)))

(declare-fun c!495739 () Bool)

(assert (=> b!3009806 (= c!495739 e!1889897)))

(declare-fun bm!202666 () Bool)

(assert (=> bm!202666 (= call!202671 (isEmptyLang!483 (ite c!495738 lt!1043823 lt!1043820)))))

(declare-fun b!3009807 () Bool)

(assert (=> b!3009807 (= e!1889905 lt!1043820)))

(declare-fun bm!202667 () Bool)

(assert (=> bm!202667 (= call!202672 (simplify!384 (ite c!495738 (regOne!19299 (ite c!495681 (regOne!19299 (reg!9722 r!17423)) (regTwo!19298 (reg!9722 r!17423)))) (regTwo!19298 (ite c!495681 (regOne!19299 (reg!9722 r!17423)) (regTwo!19298 (reg!9722 r!17423)))))))))

(declare-fun b!3009808 () Bool)

(assert (=> b!3009808 (= e!1889901 e!1889898)))

(assert (=> b!3009808 (= lt!1043821 call!202672)))

(assert (=> b!3009808 (= lt!1043823 call!202669)))

(declare-fun c!495740 () Bool)

(assert (=> b!3009808 (= c!495740 call!202675)))

(declare-fun bm!202668 () Bool)

(assert (=> bm!202668 (= call!202673 (isEmptyLang!483 (ite c!495742 lt!1043824 (ite c!495738 lt!1043821 lt!1043819))))))

(declare-fun b!3009809 () Bool)

(assert (=> b!3009809 (= e!1889898 lt!1043823)))

(declare-fun b!3009810 () Bool)

(assert (=> b!3009810 (= e!1889902 EmptyLang!9393)))

(declare-fun b!3009811 () Bool)

(assert (=> b!3009811 (= e!1889900 EmptyExpr!9393)))

(declare-fun b!3009812 () Bool)

(declare-fun e!1889907 () Regex!9393)

(assert (=> b!3009812 (= e!1889907 lt!1043819)))

(declare-fun b!3009813 () Bool)

(assert (=> b!3009813 (= e!1889905 e!1889907)))

(declare-fun c!495734 () Bool)

(assert (=> b!3009813 (= c!495734 call!202670)))

(declare-fun b!3009814 () Bool)

(assert (=> b!3009814 (= e!1889907 (Concat!14714 lt!1043819 lt!1043820))))

(declare-fun bm!202669 () Bool)

(assert (=> bm!202669 (= call!202675 call!202673)))

(declare-fun b!3009815 () Bool)

(assert (=> b!3009815 (= e!1889903 EmptyLang!9393)))

(declare-fun bm!202670 () Bool)

(assert (=> bm!202670 (= call!202674 (simplify!384 (ite c!495742 (reg!9722 (ite c!495681 (regOne!19299 (reg!9722 r!17423)) (regTwo!19298 (reg!9722 r!17423)))) (ite c!495738 (regTwo!19299 (ite c!495681 (regOne!19299 (reg!9722 r!17423)) (regTwo!19298 (reg!9722 r!17423)))) (regOne!19298 (ite c!495681 (regOne!19299 (reg!9722 r!17423)) (regTwo!19298 (reg!9722 r!17423))))))))))

(declare-fun b!3009816 () Bool)

(declare-fun c!495741 () Bool)

(assert (=> b!3009816 (= c!495741 ((_ is EmptyExpr!9393) (ite c!495681 (regOne!19299 (reg!9722 r!17423)) (regTwo!19298 (reg!9722 r!17423)))))))

(assert (=> b!3009816 (= e!1889896 e!1889906)))

(assert (= (and d!847440 c!495732) b!3009815))

(assert (= (and d!847440 (not c!495732)) b!3009794))

(assert (= (and b!3009794 c!495737) b!3009793))

(assert (= (and b!3009794 (not c!495737)) b!3009816))

(assert (= (and b!3009816 c!495741) b!3009798))

(assert (= (and b!3009816 (not c!495741)) b!3009801))

(assert (= (and b!3009801 c!495742) b!3009792))

(assert (= (and b!3009801 (not c!495742)) b!3009796))

(assert (= (and b!3009792 (not res!1240427)) b!3009802))

(assert (= (and b!3009792 c!495735) b!3009811))

(assert (= (and b!3009792 (not c!495735)) b!3009797))

(assert (= (and b!3009796 c!495738) b!3009808))

(assert (= (and b!3009796 (not c!495738)) b!3009806))

(assert (= (and b!3009808 c!495740) b!3009809))

(assert (= (and b!3009808 (not c!495740)) b!3009795))

(assert (= (and b!3009795 c!495733) b!3009804))

(assert (= (and b!3009795 (not c!495733)) b!3009803))

(assert (= (and b!3009806 (not res!1240429)) b!3009799))

(assert (= (and b!3009806 c!495739) b!3009810))

(assert (= (and b!3009806 (not c!495739)) b!3009805))

(assert (= (and b!3009805 c!495736) b!3009807))

(assert (= (and b!3009805 (not c!495736)) b!3009813))

(assert (= (and b!3009813 c!495734) b!3009812))

(assert (= (and b!3009813 (not c!495734)) b!3009814))

(assert (= (or b!3009808 b!3009806) bm!202667))

(assert (= (or b!3009808 b!3009806) bm!202665))

(assert (= (or b!3009808 b!3009806) bm!202669))

(assert (= (or b!3009795 b!3009799) bm!202666))

(assert (= (or b!3009802 b!3009813) bm!202664))

(assert (= (or b!3009792 bm!202665) bm!202670))

(assert (= (or b!3009792 bm!202669) bm!202668))

(assert (= (and d!847440 res!1240428) b!3009800))

(declare-fun m!3356765 () Bool)

(assert (=> b!3009805 m!3356765))

(declare-fun m!3356767 () Bool)

(assert (=> bm!202667 m!3356767))

(declare-fun m!3356769 () Bool)

(assert (=> d!847440 m!3356769))

(declare-fun m!3356771 () Bool)

(assert (=> d!847440 m!3356771))

(declare-fun m!3356773 () Bool)

(assert (=> bm!202670 m!3356773))

(declare-fun m!3356775 () Bool)

(assert (=> b!3009800 m!3356775))

(declare-fun m!3356777 () Bool)

(assert (=> b!3009800 m!3356777))

(declare-fun m!3356779 () Bool)

(assert (=> bm!202666 m!3356779))

(declare-fun m!3356781 () Bool)

(assert (=> bm!202664 m!3356781))

(declare-fun m!3356783 () Bool)

(assert (=> bm!202668 m!3356783))

(assert (=> bm!202637 d!847440))

(declare-fun d!847442 () Bool)

(assert (=> d!847442 (= (isEmpty!19419 (tail!4929 (_1!20172 lt!1043681))) ((_ is Nil!35134) (tail!4929 (_1!20172 lt!1043681))))))

(assert (=> b!3009754 d!847442))

(declare-fun d!847444 () Bool)

(assert (=> d!847444 (= (tail!4929 (_1!20172 lt!1043681)) (t!234323 (_1!20172 lt!1043681)))))

(assert (=> b!3009754 d!847444))

(declare-fun b!3009817 () Bool)

(declare-fun e!1889913 () Bool)

(declare-fun lt!1043825 () Bool)

(assert (=> b!3009817 (= e!1889913 (not lt!1043825))))

(declare-fun b!3009818 () Bool)

(declare-fun res!1240437 () Bool)

(declare-fun e!1889915 () Bool)

(assert (=> b!3009818 (=> res!1240437 e!1889915)))

(declare-fun e!1889911 () Bool)

(assert (=> b!3009818 (= res!1240437 e!1889911)))

(declare-fun res!1240435 () Bool)

(assert (=> b!3009818 (=> (not res!1240435) (not e!1889911))))

(assert (=> b!3009818 (= res!1240435 lt!1043825)))

(declare-fun d!847446 () Bool)

(declare-fun e!1889910 () Bool)

(assert (=> d!847446 e!1889910))

(declare-fun c!495743 () Bool)

(assert (=> d!847446 (= c!495743 ((_ is EmptyExpr!9393) (derivativeStep!2644 lt!1043690 (head!6703 (_2!20172 lt!1043681)))))))

(declare-fun e!1889912 () Bool)

(assert (=> d!847446 (= lt!1043825 e!1889912)))

(declare-fun c!495744 () Bool)

(assert (=> d!847446 (= c!495744 (isEmpty!19419 (tail!4929 (_2!20172 lt!1043681))))))

(assert (=> d!847446 (validRegex!4126 (derivativeStep!2644 lt!1043690 (head!6703 (_2!20172 lt!1043681))))))

(assert (=> d!847446 (= (matchR!4275 (derivativeStep!2644 lt!1043690 (head!6703 (_2!20172 lt!1043681))) (tail!4929 (_2!20172 lt!1043681))) lt!1043825)))

(declare-fun bm!202671 () Bool)

(declare-fun call!202676 () Bool)

(assert (=> bm!202671 (= call!202676 (isEmpty!19419 (tail!4929 (_2!20172 lt!1043681))))))

(declare-fun b!3009819 () Bool)

(declare-fun e!1889914 () Bool)

(declare-fun e!1889916 () Bool)

(assert (=> b!3009819 (= e!1889914 e!1889916)))

(declare-fun res!1240436 () Bool)

(assert (=> b!3009819 (=> res!1240436 e!1889916)))

(assert (=> b!3009819 (= res!1240436 call!202676)))

(declare-fun b!3009820 () Bool)

(declare-fun res!1240431 () Bool)

(assert (=> b!3009820 (=> res!1240431 e!1889915)))

(assert (=> b!3009820 (= res!1240431 (not ((_ is ElementMatch!9393) (derivativeStep!2644 lt!1043690 (head!6703 (_2!20172 lt!1043681))))))))

(assert (=> b!3009820 (= e!1889913 e!1889915)))

(declare-fun b!3009821 () Bool)

(assert (=> b!3009821 (= e!1889910 e!1889913)))

(declare-fun c!495745 () Bool)

(assert (=> b!3009821 (= c!495745 ((_ is EmptyLang!9393) (derivativeStep!2644 lt!1043690 (head!6703 (_2!20172 lt!1043681)))))))

(declare-fun b!3009822 () Bool)

(assert (=> b!3009822 (= e!1889911 (= (head!6703 (tail!4929 (_2!20172 lt!1043681))) (c!495525 (derivativeStep!2644 lt!1043690 (head!6703 (_2!20172 lt!1043681))))))))

(declare-fun b!3009823 () Bool)

(assert (=> b!3009823 (= e!1889912 (nullable!3046 (derivativeStep!2644 lt!1043690 (head!6703 (_2!20172 lt!1043681)))))))

(declare-fun b!3009824 () Bool)

(declare-fun res!1240434 () Bool)

(assert (=> b!3009824 (=> (not res!1240434) (not e!1889911))))

(assert (=> b!3009824 (= res!1240434 (isEmpty!19419 (tail!4929 (tail!4929 (_2!20172 lt!1043681)))))))

(declare-fun b!3009825 () Bool)

(assert (=> b!3009825 (= e!1889916 (not (= (head!6703 (tail!4929 (_2!20172 lt!1043681))) (c!495525 (derivativeStep!2644 lt!1043690 (head!6703 (_2!20172 lt!1043681)))))))))

(declare-fun b!3009826 () Bool)

(assert (=> b!3009826 (= e!1889912 (matchR!4275 (derivativeStep!2644 (derivativeStep!2644 lt!1043690 (head!6703 (_2!20172 lt!1043681))) (head!6703 (tail!4929 (_2!20172 lt!1043681)))) (tail!4929 (tail!4929 (_2!20172 lt!1043681)))))))

(declare-fun b!3009827 () Bool)

(declare-fun res!1240432 () Bool)

(assert (=> b!3009827 (=> (not res!1240432) (not e!1889911))))

(assert (=> b!3009827 (= res!1240432 (not call!202676))))

(declare-fun b!3009828 () Bool)

(declare-fun res!1240430 () Bool)

(assert (=> b!3009828 (=> res!1240430 e!1889916)))

(assert (=> b!3009828 (= res!1240430 (not (isEmpty!19419 (tail!4929 (tail!4929 (_2!20172 lt!1043681))))))))

(declare-fun b!3009829 () Bool)

(assert (=> b!3009829 (= e!1889910 (= lt!1043825 call!202676))))

(declare-fun b!3009830 () Bool)

(assert (=> b!3009830 (= e!1889915 e!1889914)))

(declare-fun res!1240433 () Bool)

(assert (=> b!3009830 (=> (not res!1240433) (not e!1889914))))

(assert (=> b!3009830 (= res!1240433 (not lt!1043825))))

(assert (= (and d!847446 c!495744) b!3009823))

(assert (= (and d!847446 (not c!495744)) b!3009826))

(assert (= (and d!847446 c!495743) b!3009829))

(assert (= (and d!847446 (not c!495743)) b!3009821))

(assert (= (and b!3009821 c!495745) b!3009817))

(assert (= (and b!3009821 (not c!495745)) b!3009820))

(assert (= (and b!3009820 (not res!1240431)) b!3009818))

(assert (= (and b!3009818 res!1240435) b!3009827))

(assert (= (and b!3009827 res!1240432) b!3009824))

(assert (= (and b!3009824 res!1240434) b!3009822))

(assert (= (and b!3009818 (not res!1240437)) b!3009830))

(assert (= (and b!3009830 res!1240433) b!3009819))

(assert (= (and b!3009819 (not res!1240436)) b!3009828))

(assert (= (and b!3009828 (not res!1240430)) b!3009825))

(assert (= (or b!3009829 b!3009819 b!3009827) bm!202671))

(assert (=> b!3009822 m!3356639))

(declare-fun m!3356785 () Bool)

(assert (=> b!3009822 m!3356785))

(assert (=> b!3009826 m!3356639))

(assert (=> b!3009826 m!3356785))

(assert (=> b!3009826 m!3356689))

(assert (=> b!3009826 m!3356785))

(declare-fun m!3356787 () Bool)

(assert (=> b!3009826 m!3356787))

(assert (=> b!3009826 m!3356639))

(declare-fun m!3356789 () Bool)

(assert (=> b!3009826 m!3356789))

(assert (=> b!3009826 m!3356787))

(assert (=> b!3009826 m!3356789))

(declare-fun m!3356791 () Bool)

(assert (=> b!3009826 m!3356791))

(assert (=> b!3009825 m!3356639))

(assert (=> b!3009825 m!3356785))

(assert (=> b!3009823 m!3356689))

(declare-fun m!3356793 () Bool)

(assert (=> b!3009823 m!3356793))

(assert (=> b!3009824 m!3356639))

(assert (=> b!3009824 m!3356789))

(assert (=> b!3009824 m!3356789))

(declare-fun m!3356795 () Bool)

(assert (=> b!3009824 m!3356795))

(assert (=> b!3009828 m!3356639))

(assert (=> b!3009828 m!3356789))

(assert (=> b!3009828 m!3356789))

(assert (=> b!3009828 m!3356795))

(assert (=> bm!202671 m!3356639))

(assert (=> bm!202671 m!3356643))

(assert (=> d!847446 m!3356639))

(assert (=> d!847446 m!3356643))

(assert (=> d!847446 m!3356689))

(declare-fun m!3356797 () Bool)

(assert (=> d!847446 m!3356797))

(assert (=> b!3009645 d!847446))

(declare-fun bm!202680 () Bool)

(declare-fun call!202685 () Regex!9393)

(declare-fun call!202688 () Regex!9393)

(assert (=> bm!202680 (= call!202685 call!202688)))

(declare-fun b!3009851 () Bool)

(declare-fun c!495759 () Bool)

(assert (=> b!3009851 (= c!495759 (nullable!3046 (regOne!19298 lt!1043690)))))

(declare-fun e!1889929 () Regex!9393)

(declare-fun e!1889927 () Regex!9393)

(assert (=> b!3009851 (= e!1889929 e!1889927)))

(declare-fun c!495756 () Bool)

(declare-fun bm!202681 () Bool)

(declare-fun call!202687 () Regex!9393)

(declare-fun c!495758 () Bool)

(assert (=> bm!202681 (= call!202687 (derivativeStep!2644 (ite c!495756 (regTwo!19299 lt!1043690) (ite c!495758 (reg!9722 lt!1043690) (regOne!19298 lt!1043690))) (head!6703 (_2!20172 lt!1043681))))))

(declare-fun b!3009852 () Bool)

(declare-fun e!1889931 () Regex!9393)

(declare-fun call!202686 () Regex!9393)

(assert (=> b!3009852 (= e!1889931 (Union!9393 call!202686 call!202687))))

(declare-fun b!3009853 () Bool)

(assert (=> b!3009853 (= e!1889927 (Union!9393 (Concat!14714 call!202685 (regTwo!19298 lt!1043690)) call!202686))))

(declare-fun b!3009854 () Bool)

(declare-fun e!1889928 () Regex!9393)

(assert (=> b!3009854 (= e!1889928 EmptyLang!9393)))

(declare-fun bm!202682 () Bool)

(assert (=> bm!202682 (= call!202686 (derivativeStep!2644 (ite c!495756 (regOne!19299 lt!1043690) (regTwo!19298 lt!1043690)) (head!6703 (_2!20172 lt!1043681))))))

(declare-fun b!3009855 () Bool)

(assert (=> b!3009855 (= e!1889929 (Concat!14714 call!202688 lt!1043690))))

(declare-fun b!3009856 () Bool)

(declare-fun e!1889930 () Regex!9393)

(assert (=> b!3009856 (= e!1889928 e!1889930)))

(declare-fun c!495757 () Bool)

(assert (=> b!3009856 (= c!495757 ((_ is ElementMatch!9393) lt!1043690))))

(declare-fun b!3009857 () Bool)

(assert (=> b!3009857 (= e!1889927 (Union!9393 (Concat!14714 call!202685 (regTwo!19298 lt!1043690)) EmptyLang!9393))))

(declare-fun d!847448 () Bool)

(declare-fun lt!1043828 () Regex!9393)

(assert (=> d!847448 (validRegex!4126 lt!1043828)))

(assert (=> d!847448 (= lt!1043828 e!1889928)))

(declare-fun c!495760 () Bool)

(assert (=> d!847448 (= c!495760 (or ((_ is EmptyExpr!9393) lt!1043690) ((_ is EmptyLang!9393) lt!1043690)))))

(assert (=> d!847448 (validRegex!4126 lt!1043690)))

(assert (=> d!847448 (= (derivativeStep!2644 lt!1043690 (head!6703 (_2!20172 lt!1043681))) lt!1043828)))

(declare-fun b!3009858 () Bool)

(assert (=> b!3009858 (= e!1889931 e!1889929)))

(assert (=> b!3009858 (= c!495758 ((_ is Star!9393) lt!1043690))))

(declare-fun bm!202683 () Bool)

(assert (=> bm!202683 (= call!202688 call!202687)))

(declare-fun b!3009859 () Bool)

(assert (=> b!3009859 (= e!1889930 (ite (= (head!6703 (_2!20172 lt!1043681)) (c!495525 lt!1043690)) EmptyExpr!9393 EmptyLang!9393))))

(declare-fun b!3009860 () Bool)

(assert (=> b!3009860 (= c!495756 ((_ is Union!9393) lt!1043690))))

(assert (=> b!3009860 (= e!1889930 e!1889931)))

(assert (= (and d!847448 c!495760) b!3009854))

(assert (= (and d!847448 (not c!495760)) b!3009856))

(assert (= (and b!3009856 c!495757) b!3009859))

(assert (= (and b!3009856 (not c!495757)) b!3009860))

(assert (= (and b!3009860 c!495756) b!3009852))

(assert (= (and b!3009860 (not c!495756)) b!3009858))

(assert (= (and b!3009858 c!495758) b!3009855))

(assert (= (and b!3009858 (not c!495758)) b!3009851))

(assert (= (and b!3009851 c!495759) b!3009853))

(assert (= (and b!3009851 (not c!495759)) b!3009857))

(assert (= (or b!3009853 b!3009857) bm!202680))

(assert (= (or b!3009855 bm!202680) bm!202683))

(assert (= (or b!3009852 bm!202683) bm!202681))

(assert (= (or b!3009852 b!3009853) bm!202682))

(declare-fun m!3356799 () Bool)

(assert (=> b!3009851 m!3356799))

(assert (=> bm!202681 m!3356635))

(declare-fun m!3356801 () Bool)

(assert (=> bm!202681 m!3356801))

(assert (=> bm!202682 m!3356635))

(declare-fun m!3356803 () Bool)

(assert (=> bm!202682 m!3356803))

(declare-fun m!3356805 () Bool)

(assert (=> d!847448 m!3356805))

(assert (=> d!847448 m!3356695))

(assert (=> b!3009645 d!847448))

(declare-fun d!847450 () Bool)

(assert (=> d!847450 (= (head!6703 (_2!20172 lt!1043681)) (h!40554 (_2!20172 lt!1043681)))))

(assert (=> b!3009645 d!847450))

(declare-fun d!847452 () Bool)

(assert (=> d!847452 (= (tail!4929 (_2!20172 lt!1043681)) (t!234323 (_2!20172 lt!1043681)))))

(assert (=> b!3009645 d!847452))

(declare-fun d!847454 () Bool)

(declare-fun nullableFct!868 (Regex!9393) Bool)

(assert (=> d!847454 (= (nullable!3046 lt!1043692) (nullableFct!868 lt!1043692))))

(declare-fun bs!529236 () Bool)

(assert (= bs!529236 d!847454))

(declare-fun m!3356807 () Bool)

(assert (=> bs!529236 m!3356807))

(assert (=> b!3009581 d!847454))

(declare-fun d!847456 () Bool)

(assert (=> d!847456 true))

(assert (=> d!847456 true))

(declare-fun res!1240440 () Bool)

(assert (=> d!847456 (= (choose!17872 lambda!112588) res!1240440)))

(assert (=> d!847398 d!847456))

(assert (=> bm!202608 d!847428))

(assert (=> b!3009641 d!847450))

(declare-fun d!847458 () Bool)

(assert (=> d!847458 (= (nullable!3046 (reg!9722 r!17423)) (nullableFct!868 (reg!9722 r!17423)))))

(declare-fun bs!529237 () Bool)

(assert (= bs!529237 d!847458))

(declare-fun m!3356809 () Bool)

(assert (=> bs!529237 m!3356809))

(assert (=> b!3009656 d!847458))

(assert (=> d!847416 d!847370))

(assert (=> d!847416 d!847414))

(declare-fun d!847460 () Bool)

(assert (=> d!847460 (= (matchR!4275 (reg!9722 r!17423) (_1!20172 lt!1043681)) (matchR!4275 (simplify!384 (reg!9722 r!17423)) (_1!20172 lt!1043681)))))

(assert (=> d!847460 true))

(declare-fun _$95!551 () Unit!49207)

(assert (=> d!847460 (= (choose!17875 (reg!9722 r!17423) (_1!20172 lt!1043681)) _$95!551)))

(declare-fun bs!529238 () Bool)

(assert (= bs!529238 d!847460))

(assert (=> bs!529238 m!3356375))

(assert (=> bs!529238 m!3356361))

(assert (=> bs!529238 m!3356361))

(assert (=> bs!529238 m!3356709))

(assert (=> d!847416 d!847460))

(declare-fun b!3009861 () Bool)

(declare-fun e!1889935 () Bool)

(declare-fun e!1889937 () Bool)

(assert (=> b!3009861 (= e!1889935 e!1889937)))

(declare-fun res!1240442 () Bool)

(assert (=> b!3009861 (= res!1240442 (not (nullable!3046 (reg!9722 (reg!9722 r!17423)))))))

(assert (=> b!3009861 (=> (not res!1240442) (not e!1889937))))

(declare-fun b!3009862 () Bool)

(declare-fun call!202689 () Bool)

(assert (=> b!3009862 (= e!1889937 call!202689)))

(declare-fun b!3009863 () Bool)

(declare-fun e!1889938 () Bool)

(declare-fun call!202690 () Bool)

(assert (=> b!3009863 (= e!1889938 call!202690)))

(declare-fun d!847462 () Bool)

(declare-fun res!1240443 () Bool)

(declare-fun e!1889934 () Bool)

(assert (=> d!847462 (=> res!1240443 e!1889934)))

(assert (=> d!847462 (= res!1240443 ((_ is ElementMatch!9393) (reg!9722 r!17423)))))

(assert (=> d!847462 (= (validRegex!4126 (reg!9722 r!17423)) e!1889934)))

(declare-fun b!3009864 () Bool)

(declare-fun res!1240445 () Bool)

(declare-fun e!1889932 () Bool)

(assert (=> b!3009864 (=> (not res!1240445) (not e!1889932))))

(assert (=> b!3009864 (= res!1240445 call!202690)))

(declare-fun e!1889933 () Bool)

(assert (=> b!3009864 (= e!1889933 e!1889932)))

(declare-fun bm!202684 () Bool)

(declare-fun call!202691 () Bool)

(declare-fun c!495761 () Bool)

(assert (=> bm!202684 (= call!202691 (validRegex!4126 (ite c!495761 (regTwo!19299 (reg!9722 r!17423)) (regOne!19298 (reg!9722 r!17423)))))))

(declare-fun b!3009865 () Bool)

(assert (=> b!3009865 (= e!1889932 call!202691)))

(declare-fun b!3009866 () Bool)

(declare-fun e!1889936 () Bool)

(assert (=> b!3009866 (= e!1889936 e!1889938)))

(declare-fun res!1240441 () Bool)

(assert (=> b!3009866 (=> (not res!1240441) (not e!1889938))))

(assert (=> b!3009866 (= res!1240441 call!202691)))

(declare-fun b!3009867 () Bool)

(assert (=> b!3009867 (= e!1889935 e!1889933)))

(assert (=> b!3009867 (= c!495761 ((_ is Union!9393) (reg!9722 r!17423)))))

(declare-fun bm!202685 () Bool)

(assert (=> bm!202685 (= call!202690 call!202689)))

(declare-fun b!3009868 () Bool)

(declare-fun res!1240444 () Bool)

(assert (=> b!3009868 (=> res!1240444 e!1889936)))

(assert (=> b!3009868 (= res!1240444 (not ((_ is Concat!14714) (reg!9722 r!17423))))))

(assert (=> b!3009868 (= e!1889933 e!1889936)))

(declare-fun b!3009869 () Bool)

(assert (=> b!3009869 (= e!1889934 e!1889935)))

(declare-fun c!495762 () Bool)

(assert (=> b!3009869 (= c!495762 ((_ is Star!9393) (reg!9722 r!17423)))))

(declare-fun bm!202686 () Bool)

(assert (=> bm!202686 (= call!202689 (validRegex!4126 (ite c!495762 (reg!9722 (reg!9722 r!17423)) (ite c!495761 (regOne!19299 (reg!9722 r!17423)) (regTwo!19298 (reg!9722 r!17423))))))))

(assert (= (and d!847462 (not res!1240443)) b!3009869))

(assert (= (and b!3009869 c!495762) b!3009861))

(assert (= (and b!3009869 (not c!495762)) b!3009867))

(assert (= (and b!3009861 res!1240442) b!3009862))

(assert (= (and b!3009867 c!495761) b!3009864))

(assert (= (and b!3009867 (not c!495761)) b!3009868))

(assert (= (and b!3009864 res!1240445) b!3009865))

(assert (= (and b!3009868 (not res!1240444)) b!3009866))

(assert (= (and b!3009866 res!1240441) b!3009863))

(assert (= (or b!3009864 b!3009863) bm!202685))

(assert (= (or b!3009865 b!3009866) bm!202684))

(assert (= (or b!3009862 bm!202685) bm!202686))

(declare-fun m!3356811 () Bool)

(assert (=> b!3009861 m!3356811))

(declare-fun m!3356813 () Bool)

(assert (=> bm!202684 m!3356813))

(declare-fun m!3356815 () Bool)

(assert (=> bm!202686 m!3356815))

(assert (=> d!847416 d!847462))

(declare-fun b!3009870 () Bool)

(declare-fun e!1889942 () Bool)

(declare-fun lt!1043829 () Bool)

(assert (=> b!3009870 (= e!1889942 (not lt!1043829))))

(declare-fun b!3009871 () Bool)

(declare-fun res!1240453 () Bool)

(declare-fun e!1889944 () Bool)

(assert (=> b!3009871 (=> res!1240453 e!1889944)))

(declare-fun e!1889940 () Bool)

(assert (=> b!3009871 (= res!1240453 e!1889940)))

(declare-fun res!1240451 () Bool)

(assert (=> b!3009871 (=> (not res!1240451) (not e!1889940))))

(assert (=> b!3009871 (= res!1240451 lt!1043829)))

(declare-fun d!847464 () Bool)

(declare-fun e!1889939 () Bool)

(assert (=> d!847464 e!1889939))

(declare-fun c!495763 () Bool)

(assert (=> d!847464 (= c!495763 ((_ is EmptyExpr!9393) (simplify!384 (reg!9722 r!17423))))))

(declare-fun e!1889941 () Bool)

(assert (=> d!847464 (= lt!1043829 e!1889941)))

(declare-fun c!495764 () Bool)

(assert (=> d!847464 (= c!495764 (isEmpty!19419 (_1!20172 lt!1043681)))))

(assert (=> d!847464 (validRegex!4126 (simplify!384 (reg!9722 r!17423)))))

(assert (=> d!847464 (= (matchR!4275 (simplify!384 (reg!9722 r!17423)) (_1!20172 lt!1043681)) lt!1043829)))

(declare-fun bm!202687 () Bool)

(declare-fun call!202692 () Bool)

(assert (=> bm!202687 (= call!202692 (isEmpty!19419 (_1!20172 lt!1043681)))))

(declare-fun b!3009872 () Bool)

(declare-fun e!1889943 () Bool)

(declare-fun e!1889945 () Bool)

(assert (=> b!3009872 (= e!1889943 e!1889945)))

(declare-fun res!1240452 () Bool)

(assert (=> b!3009872 (=> res!1240452 e!1889945)))

(assert (=> b!3009872 (= res!1240452 call!202692)))

(declare-fun b!3009873 () Bool)

(declare-fun res!1240447 () Bool)

(assert (=> b!3009873 (=> res!1240447 e!1889944)))

(assert (=> b!3009873 (= res!1240447 (not ((_ is ElementMatch!9393) (simplify!384 (reg!9722 r!17423)))))))

(assert (=> b!3009873 (= e!1889942 e!1889944)))

(declare-fun b!3009874 () Bool)

(assert (=> b!3009874 (= e!1889939 e!1889942)))

(declare-fun c!495765 () Bool)

(assert (=> b!3009874 (= c!495765 ((_ is EmptyLang!9393) (simplify!384 (reg!9722 r!17423))))))

(declare-fun b!3009875 () Bool)

(assert (=> b!3009875 (= e!1889940 (= (head!6703 (_1!20172 lt!1043681)) (c!495525 (simplify!384 (reg!9722 r!17423)))))))

(declare-fun b!3009876 () Bool)

(assert (=> b!3009876 (= e!1889941 (nullable!3046 (simplify!384 (reg!9722 r!17423))))))

(declare-fun b!3009877 () Bool)

(declare-fun res!1240450 () Bool)

(assert (=> b!3009877 (=> (not res!1240450) (not e!1889940))))

(assert (=> b!3009877 (= res!1240450 (isEmpty!19419 (tail!4929 (_1!20172 lt!1043681))))))

(declare-fun b!3009878 () Bool)

(assert (=> b!3009878 (= e!1889945 (not (= (head!6703 (_1!20172 lt!1043681)) (c!495525 (simplify!384 (reg!9722 r!17423))))))))

(declare-fun b!3009879 () Bool)

(assert (=> b!3009879 (= e!1889941 (matchR!4275 (derivativeStep!2644 (simplify!384 (reg!9722 r!17423)) (head!6703 (_1!20172 lt!1043681))) (tail!4929 (_1!20172 lt!1043681))))))

(declare-fun b!3009880 () Bool)

(declare-fun res!1240448 () Bool)

(assert (=> b!3009880 (=> (not res!1240448) (not e!1889940))))

(assert (=> b!3009880 (= res!1240448 (not call!202692))))

(declare-fun b!3009881 () Bool)

(declare-fun res!1240446 () Bool)

(assert (=> b!3009881 (=> res!1240446 e!1889945)))

(assert (=> b!3009881 (= res!1240446 (not (isEmpty!19419 (tail!4929 (_1!20172 lt!1043681)))))))

(declare-fun b!3009882 () Bool)

(assert (=> b!3009882 (= e!1889939 (= lt!1043829 call!202692))))

(declare-fun b!3009883 () Bool)

(assert (=> b!3009883 (= e!1889944 e!1889943)))

(declare-fun res!1240449 () Bool)

(assert (=> b!3009883 (=> (not res!1240449) (not e!1889943))))

(assert (=> b!3009883 (= res!1240449 (not lt!1043829))))

(assert (= (and d!847464 c!495764) b!3009876))

(assert (= (and d!847464 (not c!495764)) b!3009879))

(assert (= (and d!847464 c!495763) b!3009882))

(assert (= (and d!847464 (not c!495763)) b!3009874))

(assert (= (and b!3009874 c!495765) b!3009870))

(assert (= (and b!3009874 (not c!495765)) b!3009873))

(assert (= (and b!3009873 (not res!1240447)) b!3009871))

(assert (= (and b!3009871 res!1240451) b!3009880))

(assert (= (and b!3009880 res!1240448) b!3009877))

(assert (= (and b!3009877 res!1240450) b!3009875))

(assert (= (and b!3009871 (not res!1240453)) b!3009883))

(assert (= (and b!3009883 res!1240449) b!3009872))

(assert (= (and b!3009872 (not res!1240452)) b!3009881))

(assert (= (and b!3009881 (not res!1240446)) b!3009878))

(assert (= (or b!3009882 b!3009872 b!3009880) bm!202687))

(assert (=> b!3009875 m!3356697))

(assert (=> b!3009879 m!3356697))

(assert (=> b!3009879 m!3356361))

(assert (=> b!3009879 m!3356697))

(declare-fun m!3356817 () Bool)

(assert (=> b!3009879 m!3356817))

(assert (=> b!3009879 m!3356701))

(assert (=> b!3009879 m!3356817))

(assert (=> b!3009879 m!3356701))

(declare-fun m!3356819 () Bool)

(assert (=> b!3009879 m!3356819))

(assert (=> b!3009878 m!3356697))

(assert (=> b!3009876 m!3356361))

(declare-fun m!3356821 () Bool)

(assert (=> b!3009876 m!3356821))

(assert (=> b!3009877 m!3356701))

(assert (=> b!3009877 m!3356701))

(assert (=> b!3009877 m!3356705))

(assert (=> b!3009881 m!3356701))

(assert (=> b!3009881 m!3356701))

(assert (=> b!3009881 m!3356705))

(assert (=> bm!202687 m!3356707))

(assert (=> d!847464 m!3356707))

(assert (=> d!847464 m!3356361))

(declare-fun m!3356823 () Bool)

(assert (=> d!847464 m!3356823))

(assert (=> d!847416 d!847464))

(assert (=> b!3009750 d!847442))

(assert (=> b!3009750 d!847444))

(declare-fun d!847466 () Bool)

(assert (=> d!847466 (= (nullable!3046 lt!1043813) (nullableFct!868 lt!1043813))))

(declare-fun bs!529239 () Bool)

(assert (= bs!529239 d!847466))

(declare-fun m!3356825 () Bool)

(assert (=> bs!529239 m!3356825))

(assert (=> b!3009688 d!847466))

(declare-fun d!847468 () Bool)

(assert (=> d!847468 (= (nullable!3046 lt!1043690) (nullableFct!868 lt!1043690))))

(declare-fun bs!529240 () Bool)

(assert (= bs!529240 d!847468))

(declare-fun m!3356827 () Bool)

(assert (=> bs!529240 m!3356827))

(assert (=> b!3009688 d!847468))

(declare-fun d!847470 () Bool)

(assert (=> d!847470 (= (isEmpty!19419 (tail!4929 (_2!20172 lt!1043681))) ((_ is Nil!35134) (tail!4929 (_2!20172 lt!1043681))))))

(assert (=> b!3009675 d!847470))

(assert (=> b!3009675 d!847452))

(declare-fun b!3009884 () Bool)

(declare-fun e!1889949 () Bool)

(declare-fun e!1889951 () Bool)

(assert (=> b!3009884 (= e!1889949 e!1889951)))

(declare-fun res!1240455 () Bool)

(assert (=> b!3009884 (= res!1240455 (not (nullable!3046 (reg!9722 lt!1043813))))))

(assert (=> b!3009884 (=> (not res!1240455) (not e!1889951))))

(declare-fun b!3009885 () Bool)

(declare-fun call!202693 () Bool)

(assert (=> b!3009885 (= e!1889951 call!202693)))

(declare-fun b!3009886 () Bool)

(declare-fun e!1889952 () Bool)

(declare-fun call!202694 () Bool)

(assert (=> b!3009886 (= e!1889952 call!202694)))

(declare-fun d!847472 () Bool)

(declare-fun res!1240456 () Bool)

(declare-fun e!1889948 () Bool)

(assert (=> d!847472 (=> res!1240456 e!1889948)))

(assert (=> d!847472 (= res!1240456 ((_ is ElementMatch!9393) lt!1043813))))

(assert (=> d!847472 (= (validRegex!4126 lt!1043813) e!1889948)))

(declare-fun b!3009887 () Bool)

(declare-fun res!1240458 () Bool)

(declare-fun e!1889946 () Bool)

(assert (=> b!3009887 (=> (not res!1240458) (not e!1889946))))

(assert (=> b!3009887 (= res!1240458 call!202694)))

(declare-fun e!1889947 () Bool)

(assert (=> b!3009887 (= e!1889947 e!1889946)))

(declare-fun bm!202688 () Bool)

(declare-fun call!202695 () Bool)

(declare-fun c!495766 () Bool)

(assert (=> bm!202688 (= call!202695 (validRegex!4126 (ite c!495766 (regTwo!19299 lt!1043813) (regOne!19298 lt!1043813))))))

(declare-fun b!3009888 () Bool)

(assert (=> b!3009888 (= e!1889946 call!202695)))

(declare-fun b!3009889 () Bool)

(declare-fun e!1889950 () Bool)

(assert (=> b!3009889 (= e!1889950 e!1889952)))

(declare-fun res!1240454 () Bool)

(assert (=> b!3009889 (=> (not res!1240454) (not e!1889952))))

(assert (=> b!3009889 (= res!1240454 call!202695)))

(declare-fun b!3009890 () Bool)

(assert (=> b!3009890 (= e!1889949 e!1889947)))

(assert (=> b!3009890 (= c!495766 ((_ is Union!9393) lt!1043813))))

(declare-fun bm!202689 () Bool)

(assert (=> bm!202689 (= call!202694 call!202693)))

(declare-fun b!3009891 () Bool)

(declare-fun res!1240457 () Bool)

(assert (=> b!3009891 (=> res!1240457 e!1889950)))

(assert (=> b!3009891 (= res!1240457 (not ((_ is Concat!14714) lt!1043813)))))

(assert (=> b!3009891 (= e!1889947 e!1889950)))

(declare-fun b!3009892 () Bool)

(assert (=> b!3009892 (= e!1889948 e!1889949)))

(declare-fun c!495767 () Bool)

(assert (=> b!3009892 (= c!495767 ((_ is Star!9393) lt!1043813))))

(declare-fun bm!202690 () Bool)

(assert (=> bm!202690 (= call!202693 (validRegex!4126 (ite c!495767 (reg!9722 lt!1043813) (ite c!495766 (regOne!19299 lt!1043813) (regTwo!19298 lt!1043813)))))))

(assert (= (and d!847472 (not res!1240456)) b!3009892))

(assert (= (and b!3009892 c!495767) b!3009884))

(assert (= (and b!3009892 (not c!495767)) b!3009890))

(assert (= (and b!3009884 res!1240455) b!3009885))

(assert (= (and b!3009890 c!495766) b!3009887))

(assert (= (and b!3009890 (not c!495766)) b!3009891))

(assert (= (and b!3009887 res!1240458) b!3009888))

(assert (= (and b!3009891 (not res!1240457)) b!3009889))

(assert (= (and b!3009889 res!1240454) b!3009886))

(assert (= (or b!3009887 b!3009886) bm!202689))

(assert (= (or b!3009888 b!3009889) bm!202688))

(assert (= (or b!3009885 bm!202689) bm!202690))

(declare-fun m!3356829 () Bool)

(assert (=> b!3009884 m!3356829))

(declare-fun m!3356831 () Bool)

(assert (=> bm!202688 m!3356831))

(declare-fun m!3356833 () Bool)

(assert (=> bm!202690 m!3356833))

(assert (=> d!847424 d!847472))

(declare-fun b!3009893 () Bool)

(declare-fun e!1889956 () Bool)

(declare-fun e!1889958 () Bool)

(assert (=> b!3009893 (= e!1889956 e!1889958)))

(declare-fun res!1240460 () Bool)

(assert (=> b!3009893 (= res!1240460 (not (nullable!3046 (reg!9722 lt!1043690))))))

(assert (=> b!3009893 (=> (not res!1240460) (not e!1889958))))

(declare-fun b!3009894 () Bool)

(declare-fun call!202696 () Bool)

(assert (=> b!3009894 (= e!1889958 call!202696)))

(declare-fun b!3009895 () Bool)

(declare-fun e!1889959 () Bool)

(declare-fun call!202697 () Bool)

(assert (=> b!3009895 (= e!1889959 call!202697)))

(declare-fun d!847474 () Bool)

(declare-fun res!1240461 () Bool)

(declare-fun e!1889955 () Bool)

(assert (=> d!847474 (=> res!1240461 e!1889955)))

(assert (=> d!847474 (= res!1240461 ((_ is ElementMatch!9393) lt!1043690))))

(assert (=> d!847474 (= (validRegex!4126 lt!1043690) e!1889955)))

(declare-fun b!3009896 () Bool)

(declare-fun res!1240463 () Bool)

(declare-fun e!1889953 () Bool)

(assert (=> b!3009896 (=> (not res!1240463) (not e!1889953))))

(assert (=> b!3009896 (= res!1240463 call!202697)))

(declare-fun e!1889954 () Bool)

(assert (=> b!3009896 (= e!1889954 e!1889953)))

(declare-fun bm!202691 () Bool)

(declare-fun call!202698 () Bool)

(declare-fun c!495768 () Bool)

(assert (=> bm!202691 (= call!202698 (validRegex!4126 (ite c!495768 (regTwo!19299 lt!1043690) (regOne!19298 lt!1043690))))))

(declare-fun b!3009897 () Bool)

(assert (=> b!3009897 (= e!1889953 call!202698)))

(declare-fun b!3009898 () Bool)

(declare-fun e!1889957 () Bool)

(assert (=> b!3009898 (= e!1889957 e!1889959)))

(declare-fun res!1240459 () Bool)

(assert (=> b!3009898 (=> (not res!1240459) (not e!1889959))))

(assert (=> b!3009898 (= res!1240459 call!202698)))

(declare-fun b!3009899 () Bool)

(assert (=> b!3009899 (= e!1889956 e!1889954)))

(assert (=> b!3009899 (= c!495768 ((_ is Union!9393) lt!1043690))))

(declare-fun bm!202692 () Bool)

(assert (=> bm!202692 (= call!202697 call!202696)))

(declare-fun b!3009900 () Bool)

(declare-fun res!1240462 () Bool)

(assert (=> b!3009900 (=> res!1240462 e!1889957)))

(assert (=> b!3009900 (= res!1240462 (not ((_ is Concat!14714) lt!1043690)))))

(assert (=> b!3009900 (= e!1889954 e!1889957)))

(declare-fun b!3009901 () Bool)

(assert (=> b!3009901 (= e!1889955 e!1889956)))

(declare-fun c!495769 () Bool)

(assert (=> b!3009901 (= c!495769 ((_ is Star!9393) lt!1043690))))

(declare-fun bm!202693 () Bool)

(assert (=> bm!202693 (= call!202696 (validRegex!4126 (ite c!495769 (reg!9722 lt!1043690) (ite c!495768 (regOne!19299 lt!1043690) (regTwo!19298 lt!1043690)))))))

(assert (= (and d!847474 (not res!1240461)) b!3009901))

(assert (= (and b!3009901 c!495769) b!3009893))

(assert (= (and b!3009901 (not c!495769)) b!3009899))

(assert (= (and b!3009893 res!1240460) b!3009894))

(assert (= (and b!3009899 c!495768) b!3009896))

(assert (= (and b!3009899 (not c!495768)) b!3009900))

(assert (= (and b!3009896 res!1240463) b!3009897))

(assert (= (and b!3009900 (not res!1240462)) b!3009898))

(assert (= (and b!3009898 res!1240459) b!3009895))

(assert (= (or b!3009896 b!3009895) bm!202692))

(assert (= (or b!3009897 b!3009898) bm!202691))

(assert (= (or b!3009894 bm!202692) bm!202693))

(declare-fun m!3356835 () Bool)

(assert (=> b!3009893 m!3356835))

(declare-fun m!3356837 () Bool)

(assert (=> bm!202691 m!3356837))

(declare-fun m!3356839 () Bool)

(assert (=> bm!202693 m!3356839))

(assert (=> d!847424 d!847474))

(declare-fun d!847478 () Bool)

(assert (=> d!847478 (= (isEmpty!19419 (_1!20172 lt!1043681)) ((_ is Nil!35134) (_1!20172 lt!1043681)))))

(assert (=> d!847436 d!847478))

(declare-fun b!3009902 () Bool)

(declare-fun e!1889963 () Bool)

(declare-fun e!1889965 () Bool)

(assert (=> b!3009902 (= e!1889963 e!1889965)))

(declare-fun res!1240465 () Bool)

(assert (=> b!3009902 (= res!1240465 (not (nullable!3046 (reg!9722 lt!1043686))))))

(assert (=> b!3009902 (=> (not res!1240465) (not e!1889965))))

(declare-fun b!3009903 () Bool)

(declare-fun call!202699 () Bool)

(assert (=> b!3009903 (= e!1889965 call!202699)))

(declare-fun b!3009904 () Bool)

(declare-fun e!1889966 () Bool)

(declare-fun call!202700 () Bool)

(assert (=> b!3009904 (= e!1889966 call!202700)))

(declare-fun d!847480 () Bool)

(declare-fun res!1240466 () Bool)

(declare-fun e!1889962 () Bool)

(assert (=> d!847480 (=> res!1240466 e!1889962)))

(assert (=> d!847480 (= res!1240466 ((_ is ElementMatch!9393) lt!1043686))))

(assert (=> d!847480 (= (validRegex!4126 lt!1043686) e!1889962)))

(declare-fun b!3009905 () Bool)

(declare-fun res!1240468 () Bool)

(declare-fun e!1889960 () Bool)

(assert (=> b!3009905 (=> (not res!1240468) (not e!1889960))))

(assert (=> b!3009905 (= res!1240468 call!202700)))

(declare-fun e!1889961 () Bool)

(assert (=> b!3009905 (= e!1889961 e!1889960)))

(declare-fun bm!202694 () Bool)

(declare-fun call!202701 () Bool)

(declare-fun c!495770 () Bool)

(assert (=> bm!202694 (= call!202701 (validRegex!4126 (ite c!495770 (regTwo!19299 lt!1043686) (regOne!19298 lt!1043686))))))

(declare-fun b!3009906 () Bool)

(assert (=> b!3009906 (= e!1889960 call!202701)))

(declare-fun b!3009907 () Bool)

(declare-fun e!1889964 () Bool)

(assert (=> b!3009907 (= e!1889964 e!1889966)))

(declare-fun res!1240464 () Bool)

(assert (=> b!3009907 (=> (not res!1240464) (not e!1889966))))

(assert (=> b!3009907 (= res!1240464 call!202701)))

(declare-fun b!3009908 () Bool)

(assert (=> b!3009908 (= e!1889963 e!1889961)))

(assert (=> b!3009908 (= c!495770 ((_ is Union!9393) lt!1043686))))

(declare-fun bm!202695 () Bool)

(assert (=> bm!202695 (= call!202700 call!202699)))

(declare-fun b!3009909 () Bool)

(declare-fun res!1240467 () Bool)

(assert (=> b!3009909 (=> res!1240467 e!1889964)))

(assert (=> b!3009909 (= res!1240467 (not ((_ is Concat!14714) lt!1043686)))))

(assert (=> b!3009909 (= e!1889961 e!1889964)))

(declare-fun b!3009910 () Bool)

(assert (=> b!3009910 (= e!1889962 e!1889963)))

(declare-fun c!495771 () Bool)

(assert (=> b!3009910 (= c!495771 ((_ is Star!9393) lt!1043686))))

(declare-fun bm!202696 () Bool)

(assert (=> bm!202696 (= call!202699 (validRegex!4126 (ite c!495771 (reg!9722 lt!1043686) (ite c!495770 (regOne!19299 lt!1043686) (regTwo!19298 lt!1043686)))))))

(assert (= (and d!847480 (not res!1240466)) b!3009910))

(assert (= (and b!3009910 c!495771) b!3009902))

(assert (= (and b!3009910 (not c!495771)) b!3009908))

(assert (= (and b!3009902 res!1240465) b!3009903))

(assert (= (and b!3009908 c!495770) b!3009905))

(assert (= (and b!3009908 (not c!495770)) b!3009909))

(assert (= (and b!3009905 res!1240468) b!3009906))

(assert (= (and b!3009909 (not res!1240467)) b!3009907))

(assert (= (and b!3009907 res!1240464) b!3009904))

(assert (= (or b!3009905 b!3009904) bm!202695))

(assert (= (or b!3009906 b!3009907) bm!202694))

(assert (= (or b!3009903 bm!202695) bm!202696))

(declare-fun m!3356841 () Bool)

(assert (=> b!3009902 m!3356841))

(declare-fun m!3356843 () Bool)

(assert (=> bm!202694 m!3356843))

(declare-fun m!3356845 () Bool)

(assert (=> bm!202696 m!3356845))

(assert (=> d!847436 d!847480))

(declare-fun d!847484 () Bool)

(assert (=> d!847484 (= (isEmpty!19419 (_2!20172 lt!1043681)) ((_ is Nil!35134) (_2!20172 lt!1043681)))))

(assert (=> bm!202642 d!847484))

(assert (=> b!3009671 d!847470))

(assert (=> b!3009671 d!847452))

(assert (=> b!3009619 d!847366))

(declare-fun d!847488 () Bool)

(declare-fun lt!1043830 () Int)

(assert (=> d!847488 (>= lt!1043830 0)))

(declare-fun e!1889967 () Int)

(assert (=> d!847488 (= lt!1043830 e!1889967)))

(declare-fun c!495772 () Bool)

(assert (=> d!847488 (= c!495772 ((_ is Nil!35134) (t!234323 s!11993)))))

(assert (=> d!847488 (= (size!26523 (t!234323 s!11993)) lt!1043830)))

(declare-fun b!3009911 () Bool)

(assert (=> b!3009911 (= e!1889967 0)))

(declare-fun b!3009912 () Bool)

(assert (=> b!3009912 (= e!1889967 (+ 1 (size!26523 (t!234323 (t!234323 s!11993)))))))

(assert (= (and d!847488 c!495772) b!3009911))

(assert (= (and d!847488 (not c!495772)) b!3009912))

(declare-fun m!3356847 () Bool)

(assert (=> b!3009912 m!3356847))

(assert (=> b!3009679 d!847488))

(declare-fun d!847492 () Bool)

(assert (=> d!847492 (= (isEmptyLang!483 (ite c!495714 lt!1043814 lt!1043811)) ((_ is EmptyLang!9393) (ite c!495714 lt!1043814 lt!1043811)))))

(assert (=> bm!202647 d!847492))

(declare-fun d!847494 () Bool)

(assert (=> d!847494 (= (head!6703 s!11993) (h!40554 s!11993))))

(assert (=> b!3009312 d!847494))

(assert (=> b!3009586 d!847470))

(assert (=> b!3009586 d!847452))

(declare-fun bs!529241 () Bool)

(declare-fun b!3009924 () Bool)

(assert (= bs!529241 (and b!3009924 d!847402)))

(declare-fun lambda!112623 () Int)

(assert (=> bs!529241 (not (= lambda!112623 lambda!112616))))

(declare-fun bs!529242 () Bool)

(assert (= bs!529242 (and b!3009924 d!847408)))

(assert (=> bs!529242 (not (= lambda!112623 lambda!112620))))

(declare-fun bs!529243 () Bool)

(assert (= bs!529243 (and b!3009924 b!3009733)))

(assert (=> bs!529243 (not (= lambda!112623 lambda!112622))))

(declare-fun bs!529244 () Bool)

(assert (= bs!529244 (and b!3009924 b!3009734)))

(assert (=> bs!529244 (= (and (= (reg!9722 (regTwo!19299 r!17423)) (reg!9722 lt!1043692)) (= (regTwo!19299 r!17423) lt!1043692)) (= lambda!112623 lambda!112621))))

(declare-fun bs!529245 () Bool)

(assert (= bs!529245 (and b!3009924 b!3008998)))

(assert (=> bs!529245 (= (and (= (reg!9722 (regTwo!19299 r!17423)) lt!1043686) (= (regTwo!19299 r!17423) lt!1043692)) (= lambda!112623 lambda!112588))))

(declare-fun bs!529246 () Bool)

(assert (= bs!529246 (and b!3009924 b!3009154)))

(assert (=> bs!529246 (= (and (= (reg!9722 (regTwo!19299 r!17423)) (reg!9722 r!17423)) (= (regTwo!19299 r!17423) r!17423)) (= lambda!112623 lambda!112601))))

(assert (=> bs!529245 (not (= lambda!112623 lambda!112587))))

(declare-fun bs!529247 () Bool)

(assert (= bs!529247 (and b!3009924 b!3009153)))

(assert (=> bs!529247 (not (= lambda!112623 lambda!112602))))

(assert (=> bs!529241 (= (and (= (reg!9722 (regTwo!19299 r!17423)) lt!1043686) (= (regTwo!19299 r!17423) (Star!9393 lt!1043686))) (= lambda!112623 lambda!112617))))

(assert (=> b!3009924 true))

(assert (=> b!3009924 true))

(declare-fun bs!529248 () Bool)

(declare-fun b!3009923 () Bool)

(assert (= bs!529248 (and b!3009923 d!847402)))

(declare-fun lambda!112624 () Int)

(assert (=> bs!529248 (not (= lambda!112624 lambda!112616))))

(declare-fun bs!529249 () Bool)

(assert (= bs!529249 (and b!3009923 d!847408)))

(assert (=> bs!529249 (not (= lambda!112624 lambda!112620))))

(declare-fun bs!529250 () Bool)

(assert (= bs!529250 (and b!3009923 b!3009733)))

(assert (=> bs!529250 (= (and (= (regOne!19298 (regTwo!19299 r!17423)) (regOne!19298 lt!1043692)) (= (regTwo!19298 (regTwo!19299 r!17423)) (regTwo!19298 lt!1043692))) (= lambda!112624 lambda!112622))))

(declare-fun bs!529251 () Bool)

(assert (= bs!529251 (and b!3009923 b!3009734)))

(assert (=> bs!529251 (not (= lambda!112624 lambda!112621))))

(declare-fun bs!529253 () Bool)

(assert (= bs!529253 (and b!3009923 b!3009924)))

(assert (=> bs!529253 (not (= lambda!112624 lambda!112623))))

(declare-fun bs!529254 () Bool)

(assert (= bs!529254 (and b!3009923 b!3008998)))

(assert (=> bs!529254 (not (= lambda!112624 lambda!112588))))

(declare-fun bs!529256 () Bool)

(assert (= bs!529256 (and b!3009923 b!3009154)))

(assert (=> bs!529256 (not (= lambda!112624 lambda!112601))))

(assert (=> bs!529254 (not (= lambda!112624 lambda!112587))))

(declare-fun bs!529257 () Bool)

(assert (= bs!529257 (and b!3009923 b!3009153)))

(assert (=> bs!529257 (= (and (= (regOne!19298 (regTwo!19299 r!17423)) (regOne!19298 r!17423)) (= (regTwo!19298 (regTwo!19299 r!17423)) (regTwo!19298 r!17423))) (= lambda!112624 lambda!112602))))

(assert (=> bs!529248 (not (= lambda!112624 lambda!112617))))

(assert (=> b!3009923 true))

(assert (=> b!3009923 true))

(declare-fun b!3009922 () Bool)

(declare-fun e!1889979 () Bool)

(declare-fun call!202706 () Bool)

(assert (=> b!3009922 (= e!1889979 call!202706)))

(declare-fun e!1889978 () Bool)

(declare-fun call!202705 () Bool)

(assert (=> b!3009923 (= e!1889978 call!202705)))

(declare-fun e!1889975 () Bool)

(assert (=> b!3009924 (= e!1889975 call!202705)))

(declare-fun b!3009925 () Bool)

(declare-fun c!495777 () Bool)

(assert (=> b!3009925 (= c!495777 ((_ is Union!9393) (regTwo!19299 r!17423)))))

(declare-fun e!1889976 () Bool)

(declare-fun e!1889980 () Bool)

(assert (=> b!3009925 (= e!1889976 e!1889980)))

(declare-fun b!3009926 () Bool)

(assert (=> b!3009926 (= e!1889976 (= s!11993 (Cons!35134 (c!495525 (regTwo!19299 r!17423)) Nil!35134)))))

(declare-fun b!3009927 () Bool)

(declare-fun e!1889977 () Bool)

(assert (=> b!3009927 (= e!1889979 e!1889977)))

(declare-fun res!1240476 () Bool)

(assert (=> b!3009927 (= res!1240476 (not ((_ is EmptyLang!9393) (regTwo!19299 r!17423))))))

(assert (=> b!3009927 (=> (not res!1240476) (not e!1889977))))

(declare-fun b!3009928 () Bool)

(declare-fun c!495778 () Bool)

(assert (=> b!3009928 (= c!495778 ((_ is ElementMatch!9393) (regTwo!19299 r!17423)))))

(assert (=> b!3009928 (= e!1889977 e!1889976)))

(declare-fun b!3009929 () Bool)

(assert (=> b!3009929 (= e!1889980 e!1889978)))

(declare-fun c!495775 () Bool)

(assert (=> b!3009929 (= c!495775 ((_ is Star!9393) (regTwo!19299 r!17423)))))

(declare-fun bm!202700 () Bool)

(assert (=> bm!202700 (= call!202706 (isEmpty!19419 s!11993))))

(declare-fun b!3009930 () Bool)

(declare-fun res!1240475 () Bool)

(assert (=> b!3009930 (=> res!1240475 e!1889975)))

(assert (=> b!3009930 (= res!1240475 call!202706)))

(assert (=> b!3009930 (= e!1889978 e!1889975)))

(declare-fun bm!202701 () Bool)

(assert (=> bm!202701 (= call!202705 (Exists!1662 (ite c!495775 lambda!112623 lambda!112624)))))

(declare-fun b!3009931 () Bool)

(declare-fun e!1889981 () Bool)

(assert (=> b!3009931 (= e!1889981 (matchRSpec!1530 (regTwo!19299 (regTwo!19299 r!17423)) s!11993))))

(declare-fun b!3009932 () Bool)

(assert (=> b!3009932 (= e!1889980 e!1889981)))

(declare-fun res!1240474 () Bool)

(assert (=> b!3009932 (= res!1240474 (matchRSpec!1530 (regOne!19299 (regTwo!19299 r!17423)) s!11993))))

(assert (=> b!3009932 (=> res!1240474 e!1889981)))

(declare-fun d!847496 () Bool)

(declare-fun c!495776 () Bool)

(assert (=> d!847496 (= c!495776 ((_ is EmptyExpr!9393) (regTwo!19299 r!17423)))))

(assert (=> d!847496 (= (matchRSpec!1530 (regTwo!19299 r!17423) s!11993) e!1889979)))

(assert (= (and d!847496 c!495776) b!3009922))

(assert (= (and d!847496 (not c!495776)) b!3009927))

(assert (= (and b!3009927 res!1240476) b!3009928))

(assert (= (and b!3009928 c!495778) b!3009926))

(assert (= (and b!3009928 (not c!495778)) b!3009925))

(assert (= (and b!3009925 c!495777) b!3009932))

(assert (= (and b!3009925 (not c!495777)) b!3009929))

(assert (= (and b!3009932 (not res!1240474)) b!3009931))

(assert (= (and b!3009929 c!495775) b!3009930))

(assert (= (and b!3009929 (not c!495775)) b!3009923))

(assert (= (and b!3009930 (not res!1240475)) b!3009924))

(assert (= (or b!3009924 b!3009923) bm!202701))

(assert (= (or b!3009922 b!3009930) bm!202700))

(assert (=> bm!202700 m!3356353))

(declare-fun m!3356865 () Bool)

(assert (=> bm!202701 m!3356865))

(declare-fun m!3356867 () Bool)

(assert (=> b!3009931 m!3356867))

(declare-fun m!3356869 () Bool)

(assert (=> b!3009932 m!3356869))

(assert (=> b!3009161 d!847496))

(declare-fun d!847508 () Bool)

(assert (=> d!847508 (= (isEmptyLang!483 (ite c!495718 lt!1043815 (ite c!495714 lt!1043812 lt!1043810))) ((_ is EmptyLang!9393) (ite c!495718 lt!1043815 (ite c!495714 lt!1043812 lt!1043810))))))

(assert (=> bm!202649 d!847508))

(declare-fun b!3009953 () Bool)

(declare-fun e!1889999 () Bool)

(declare-fun lt!1043831 () Bool)

(assert (=> b!3009953 (= e!1889999 (not lt!1043831))))

(declare-fun b!3009954 () Bool)

(declare-fun res!1240492 () Bool)

(declare-fun e!1890001 () Bool)

(assert (=> b!3009954 (=> res!1240492 e!1890001)))

(declare-fun e!1889997 () Bool)

(assert (=> b!3009954 (= res!1240492 e!1889997)))

(declare-fun res!1240490 () Bool)

(assert (=> b!3009954 (=> (not res!1240490) (not e!1889997))))

(assert (=> b!3009954 (= res!1240490 lt!1043831)))

(declare-fun d!847510 () Bool)

(declare-fun e!1889996 () Bool)

(assert (=> d!847510 e!1889996))

(declare-fun c!495785 () Bool)

(assert (=> d!847510 (= c!495785 ((_ is EmptyExpr!9393) (derivativeStep!2644 r!17423 (head!6703 s!11993))))))

(declare-fun e!1889998 () Bool)

(assert (=> d!847510 (= lt!1043831 e!1889998)))

(declare-fun c!495786 () Bool)

(assert (=> d!847510 (= c!495786 (isEmpty!19419 (tail!4929 s!11993)))))

(assert (=> d!847510 (validRegex!4126 (derivativeStep!2644 r!17423 (head!6703 s!11993)))))

(assert (=> d!847510 (= (matchR!4275 (derivativeStep!2644 r!17423 (head!6703 s!11993)) (tail!4929 s!11993)) lt!1043831)))

(declare-fun bm!202707 () Bool)

(declare-fun call!202712 () Bool)

(assert (=> bm!202707 (= call!202712 (isEmpty!19419 (tail!4929 s!11993)))))

(declare-fun b!3009955 () Bool)

(declare-fun e!1890000 () Bool)

(declare-fun e!1890002 () Bool)

(assert (=> b!3009955 (= e!1890000 e!1890002)))

(declare-fun res!1240491 () Bool)

(assert (=> b!3009955 (=> res!1240491 e!1890002)))

(assert (=> b!3009955 (= res!1240491 call!202712)))

(declare-fun b!3009956 () Bool)

(declare-fun res!1240486 () Bool)

(assert (=> b!3009956 (=> res!1240486 e!1890001)))

(assert (=> b!3009956 (= res!1240486 (not ((_ is ElementMatch!9393) (derivativeStep!2644 r!17423 (head!6703 s!11993)))))))

(assert (=> b!3009956 (= e!1889999 e!1890001)))

(declare-fun b!3009957 () Bool)

(assert (=> b!3009957 (= e!1889996 e!1889999)))

(declare-fun c!495787 () Bool)

(assert (=> b!3009957 (= c!495787 ((_ is EmptyLang!9393) (derivativeStep!2644 r!17423 (head!6703 s!11993))))))

(declare-fun b!3009958 () Bool)

(assert (=> b!3009958 (= e!1889997 (= (head!6703 (tail!4929 s!11993)) (c!495525 (derivativeStep!2644 r!17423 (head!6703 s!11993)))))))

(declare-fun b!3009959 () Bool)

(assert (=> b!3009959 (= e!1889998 (nullable!3046 (derivativeStep!2644 r!17423 (head!6703 s!11993))))))

(declare-fun b!3009960 () Bool)

(declare-fun res!1240489 () Bool)

(assert (=> b!3009960 (=> (not res!1240489) (not e!1889997))))

(assert (=> b!3009960 (= res!1240489 (isEmpty!19419 (tail!4929 (tail!4929 s!11993))))))

(declare-fun b!3009961 () Bool)

(assert (=> b!3009961 (= e!1890002 (not (= (head!6703 (tail!4929 s!11993)) (c!495525 (derivativeStep!2644 r!17423 (head!6703 s!11993))))))))

(declare-fun b!3009962 () Bool)

(assert (=> b!3009962 (= e!1889998 (matchR!4275 (derivativeStep!2644 (derivativeStep!2644 r!17423 (head!6703 s!11993)) (head!6703 (tail!4929 s!11993))) (tail!4929 (tail!4929 s!11993))))))

(declare-fun b!3009963 () Bool)

(declare-fun res!1240487 () Bool)

(assert (=> b!3009963 (=> (not res!1240487) (not e!1889997))))

(assert (=> b!3009963 (= res!1240487 (not call!202712))))

(declare-fun b!3009964 () Bool)

(declare-fun res!1240485 () Bool)

(assert (=> b!3009964 (=> res!1240485 e!1890002)))

(assert (=> b!3009964 (= res!1240485 (not (isEmpty!19419 (tail!4929 (tail!4929 s!11993)))))))

(declare-fun b!3009965 () Bool)

(assert (=> b!3009965 (= e!1889996 (= lt!1043831 call!202712))))

(declare-fun b!3009966 () Bool)

(assert (=> b!3009966 (= e!1890001 e!1890000)))

(declare-fun res!1240488 () Bool)

(assert (=> b!3009966 (=> (not res!1240488) (not e!1890000))))

(assert (=> b!3009966 (= res!1240488 (not lt!1043831))))

(assert (= (and d!847510 c!495786) b!3009959))

(assert (= (and d!847510 (not c!495786)) b!3009962))

(assert (= (and d!847510 c!495785) b!3009965))

(assert (= (and d!847510 (not c!495785)) b!3009957))

(assert (= (and b!3009957 c!495787) b!3009953))

(assert (= (and b!3009957 (not c!495787)) b!3009956))

(assert (= (and b!3009956 (not res!1240486)) b!3009954))

(assert (= (and b!3009954 res!1240490) b!3009963))

(assert (= (and b!3009963 res!1240487) b!3009960))

(assert (= (and b!3009960 res!1240489) b!3009958))

(assert (= (and b!3009954 (not res!1240492)) b!3009966))

(assert (= (and b!3009966 res!1240488) b!3009955))

(assert (= (and b!3009955 (not res!1240491)) b!3009964))

(assert (= (and b!3009964 (not res!1240485)) b!3009961))

(assert (= (or b!3009965 b!3009955 b!3009963) bm!202707))

(assert (=> b!3009958 m!3356497))

(declare-fun m!3356871 () Bool)

(assert (=> b!3009958 m!3356871))

(assert (=> b!3009962 m!3356497))

(assert (=> b!3009962 m!3356871))

(assert (=> b!3009962 m!3356495))

(assert (=> b!3009962 m!3356871))

(declare-fun m!3356873 () Bool)

(assert (=> b!3009962 m!3356873))

(assert (=> b!3009962 m!3356497))

(declare-fun m!3356875 () Bool)

(assert (=> b!3009962 m!3356875))

(assert (=> b!3009962 m!3356873))

(assert (=> b!3009962 m!3356875))

(declare-fun m!3356877 () Bool)

(assert (=> b!3009962 m!3356877))

(assert (=> b!3009961 m!3356497))

(assert (=> b!3009961 m!3356871))

(assert (=> b!3009959 m!3356495))

(declare-fun m!3356879 () Bool)

(assert (=> b!3009959 m!3356879))

(assert (=> b!3009960 m!3356497))

(assert (=> b!3009960 m!3356875))

(assert (=> b!3009960 m!3356875))

(declare-fun m!3356881 () Bool)

(assert (=> b!3009960 m!3356881))

(assert (=> b!3009964 m!3356497))

(assert (=> b!3009964 m!3356875))

(assert (=> b!3009964 m!3356875))

(assert (=> b!3009964 m!3356881))

(assert (=> bm!202707 m!3356497))

(assert (=> bm!202707 m!3356503))

(assert (=> d!847510 m!3356497))

(assert (=> d!847510 m!3356503))

(assert (=> d!847510 m!3356495))

(declare-fun m!3356883 () Bool)

(assert (=> d!847510 m!3356883))

(assert (=> b!3009316 d!847510))

(declare-fun bm!202708 () Bool)

(declare-fun call!202713 () Regex!9393)

(declare-fun call!202716 () Regex!9393)

(assert (=> bm!202708 (= call!202713 call!202716)))

(declare-fun b!3009967 () Bool)

(declare-fun c!495791 () Bool)

(assert (=> b!3009967 (= c!495791 (nullable!3046 (regOne!19298 r!17423)))))

(declare-fun e!1890005 () Regex!9393)

(declare-fun e!1890003 () Regex!9393)

(assert (=> b!3009967 (= e!1890005 e!1890003)))

(declare-fun c!495788 () Bool)

(declare-fun bm!202709 () Bool)

(declare-fun c!495790 () Bool)

(declare-fun call!202715 () Regex!9393)

(assert (=> bm!202709 (= call!202715 (derivativeStep!2644 (ite c!495788 (regTwo!19299 r!17423) (ite c!495790 (reg!9722 r!17423) (regOne!19298 r!17423))) (head!6703 s!11993)))))

(declare-fun b!3009968 () Bool)

(declare-fun e!1890007 () Regex!9393)

(declare-fun call!202714 () Regex!9393)

(assert (=> b!3009968 (= e!1890007 (Union!9393 call!202714 call!202715))))

(declare-fun b!3009969 () Bool)

(assert (=> b!3009969 (= e!1890003 (Union!9393 (Concat!14714 call!202713 (regTwo!19298 r!17423)) call!202714))))

(declare-fun b!3009970 () Bool)

(declare-fun e!1890004 () Regex!9393)

(assert (=> b!3009970 (= e!1890004 EmptyLang!9393)))

(declare-fun bm!202710 () Bool)

(assert (=> bm!202710 (= call!202714 (derivativeStep!2644 (ite c!495788 (regOne!19299 r!17423) (regTwo!19298 r!17423)) (head!6703 s!11993)))))

(declare-fun b!3009971 () Bool)

(assert (=> b!3009971 (= e!1890005 (Concat!14714 call!202716 r!17423))))

(declare-fun b!3009972 () Bool)

(declare-fun e!1890006 () Regex!9393)

(assert (=> b!3009972 (= e!1890004 e!1890006)))

(declare-fun c!495789 () Bool)

(assert (=> b!3009972 (= c!495789 ((_ is ElementMatch!9393) r!17423))))

(declare-fun b!3009973 () Bool)

(assert (=> b!3009973 (= e!1890003 (Union!9393 (Concat!14714 call!202713 (regTwo!19298 r!17423)) EmptyLang!9393))))

(declare-fun d!847512 () Bool)

(declare-fun lt!1043832 () Regex!9393)

(assert (=> d!847512 (validRegex!4126 lt!1043832)))

(assert (=> d!847512 (= lt!1043832 e!1890004)))

(declare-fun c!495792 () Bool)

(assert (=> d!847512 (= c!495792 (or ((_ is EmptyExpr!9393) r!17423) ((_ is EmptyLang!9393) r!17423)))))

(assert (=> d!847512 (validRegex!4126 r!17423)))

(assert (=> d!847512 (= (derivativeStep!2644 r!17423 (head!6703 s!11993)) lt!1043832)))

(declare-fun b!3009974 () Bool)

(assert (=> b!3009974 (= e!1890007 e!1890005)))

(assert (=> b!3009974 (= c!495790 ((_ is Star!9393) r!17423))))

(declare-fun bm!202711 () Bool)

(assert (=> bm!202711 (= call!202716 call!202715)))

(declare-fun b!3009975 () Bool)

(assert (=> b!3009975 (= e!1890006 (ite (= (head!6703 s!11993) (c!495525 r!17423)) EmptyExpr!9393 EmptyLang!9393))))

(declare-fun b!3009976 () Bool)

(assert (=> b!3009976 (= c!495788 ((_ is Union!9393) r!17423))))

(assert (=> b!3009976 (= e!1890006 e!1890007)))

(assert (= (and d!847512 c!495792) b!3009970))

(assert (= (and d!847512 (not c!495792)) b!3009972))

(assert (= (and b!3009972 c!495789) b!3009975))

(assert (= (and b!3009972 (not c!495789)) b!3009976))

(assert (= (and b!3009976 c!495788) b!3009968))

(assert (= (and b!3009976 (not c!495788)) b!3009974))

(assert (= (and b!3009974 c!495790) b!3009971))

(assert (= (and b!3009974 (not c!495790)) b!3009967))

(assert (= (and b!3009967 c!495791) b!3009969))

(assert (= (and b!3009967 (not c!495791)) b!3009973))

(assert (= (or b!3009969 b!3009973) bm!202708))

(assert (= (or b!3009971 bm!202708) bm!202711))

(assert (= (or b!3009968 bm!202711) bm!202709))

(assert (= (or b!3009968 b!3009969) bm!202710))

(declare-fun m!3356885 () Bool)

(assert (=> b!3009967 m!3356885))

(assert (=> bm!202709 m!3356493))

(declare-fun m!3356887 () Bool)

(assert (=> bm!202709 m!3356887))

(assert (=> bm!202710 m!3356493))

(declare-fun m!3356889 () Bool)

(assert (=> bm!202710 m!3356889))

(declare-fun m!3356891 () Bool)

(assert (=> d!847512 m!3356891))

(assert (=> d!847512 m!3356393))

(assert (=> b!3009316 d!847512))

(assert (=> b!3009316 d!847494))

(declare-fun d!847514 () Bool)

(assert (=> d!847514 (= (tail!4929 s!11993) (t!234323 s!11993))))

(assert (=> b!3009316 d!847514))

(assert (=> b!3009331 d!847454))

(assert (=> bm!202644 d!847484))

(assert (=> b!3009580 d!847450))

(declare-fun b!3009977 () Bool)

(declare-fun e!1890011 () Bool)

(declare-fun lt!1043833 () Bool)

(assert (=> b!3009977 (= e!1890011 (not lt!1043833))))

(declare-fun b!3009978 () Bool)

(declare-fun res!1240500 () Bool)

(declare-fun e!1890013 () Bool)

(assert (=> b!3009978 (=> res!1240500 e!1890013)))

(declare-fun e!1890009 () Bool)

(assert (=> b!3009978 (= res!1240500 e!1890009)))

(declare-fun res!1240498 () Bool)

(assert (=> b!3009978 (=> (not res!1240498) (not e!1890009))))

(assert (=> b!3009978 (= res!1240498 lt!1043833)))

(declare-fun d!847516 () Bool)

(declare-fun e!1890008 () Bool)

(assert (=> d!847516 e!1890008))

(declare-fun c!495793 () Bool)

(assert (=> d!847516 (= c!495793 ((_ is EmptyExpr!9393) (derivativeStep!2644 lt!1043692 (head!6703 (_2!20172 lt!1043681)))))))

(declare-fun e!1890010 () Bool)

(assert (=> d!847516 (= lt!1043833 e!1890010)))

(declare-fun c!495794 () Bool)

(assert (=> d!847516 (= c!495794 (isEmpty!19419 (tail!4929 (_2!20172 lt!1043681))))))

(assert (=> d!847516 (validRegex!4126 (derivativeStep!2644 lt!1043692 (head!6703 (_2!20172 lt!1043681))))))

(assert (=> d!847516 (= (matchR!4275 (derivativeStep!2644 lt!1043692 (head!6703 (_2!20172 lt!1043681))) (tail!4929 (_2!20172 lt!1043681))) lt!1043833)))

(declare-fun bm!202712 () Bool)

(declare-fun call!202717 () Bool)

(assert (=> bm!202712 (= call!202717 (isEmpty!19419 (tail!4929 (_2!20172 lt!1043681))))))

(declare-fun b!3009979 () Bool)

(declare-fun e!1890012 () Bool)

(declare-fun e!1890014 () Bool)

(assert (=> b!3009979 (= e!1890012 e!1890014)))

(declare-fun res!1240499 () Bool)

(assert (=> b!3009979 (=> res!1240499 e!1890014)))

(assert (=> b!3009979 (= res!1240499 call!202717)))

(declare-fun b!3009980 () Bool)

(declare-fun res!1240494 () Bool)

(assert (=> b!3009980 (=> res!1240494 e!1890013)))

(assert (=> b!3009980 (= res!1240494 (not ((_ is ElementMatch!9393) (derivativeStep!2644 lt!1043692 (head!6703 (_2!20172 lt!1043681))))))))

(assert (=> b!3009980 (= e!1890011 e!1890013)))

(declare-fun b!3009981 () Bool)

(assert (=> b!3009981 (= e!1890008 e!1890011)))

(declare-fun c!495795 () Bool)

(assert (=> b!3009981 (= c!495795 ((_ is EmptyLang!9393) (derivativeStep!2644 lt!1043692 (head!6703 (_2!20172 lt!1043681)))))))

(declare-fun b!3009982 () Bool)

(assert (=> b!3009982 (= e!1890009 (= (head!6703 (tail!4929 (_2!20172 lt!1043681))) (c!495525 (derivativeStep!2644 lt!1043692 (head!6703 (_2!20172 lt!1043681))))))))

(declare-fun b!3009983 () Bool)

(assert (=> b!3009983 (= e!1890010 (nullable!3046 (derivativeStep!2644 lt!1043692 (head!6703 (_2!20172 lt!1043681)))))))

(declare-fun b!3009984 () Bool)

(declare-fun res!1240497 () Bool)

(assert (=> b!3009984 (=> (not res!1240497) (not e!1890009))))

(assert (=> b!3009984 (= res!1240497 (isEmpty!19419 (tail!4929 (tail!4929 (_2!20172 lt!1043681)))))))

(declare-fun b!3009985 () Bool)

(assert (=> b!3009985 (= e!1890014 (not (= (head!6703 (tail!4929 (_2!20172 lt!1043681))) (c!495525 (derivativeStep!2644 lt!1043692 (head!6703 (_2!20172 lt!1043681)))))))))

(declare-fun b!3009986 () Bool)

(assert (=> b!3009986 (= e!1890010 (matchR!4275 (derivativeStep!2644 (derivativeStep!2644 lt!1043692 (head!6703 (_2!20172 lt!1043681))) (head!6703 (tail!4929 (_2!20172 lt!1043681)))) (tail!4929 (tail!4929 (_2!20172 lt!1043681)))))))

(declare-fun b!3009987 () Bool)

(declare-fun res!1240495 () Bool)

(assert (=> b!3009987 (=> (not res!1240495) (not e!1890009))))

(assert (=> b!3009987 (= res!1240495 (not call!202717))))

(declare-fun b!3009988 () Bool)

(declare-fun res!1240493 () Bool)

(assert (=> b!3009988 (=> res!1240493 e!1890014)))

(assert (=> b!3009988 (= res!1240493 (not (isEmpty!19419 (tail!4929 (tail!4929 (_2!20172 lt!1043681))))))))

(declare-fun b!3009989 () Bool)

(assert (=> b!3009989 (= e!1890008 (= lt!1043833 call!202717))))

(declare-fun b!3009990 () Bool)

(assert (=> b!3009990 (= e!1890013 e!1890012)))

(declare-fun res!1240496 () Bool)

(assert (=> b!3009990 (=> (not res!1240496) (not e!1890012))))

(assert (=> b!3009990 (= res!1240496 (not lt!1043833))))

(assert (= (and d!847516 c!495794) b!3009983))

(assert (= (and d!847516 (not c!495794)) b!3009986))

(assert (= (and d!847516 c!495793) b!3009989))

(assert (= (and d!847516 (not c!495793)) b!3009981))

(assert (= (and b!3009981 c!495795) b!3009977))

(assert (= (and b!3009981 (not c!495795)) b!3009980))

(assert (= (and b!3009980 (not res!1240494)) b!3009978))

(assert (= (and b!3009978 res!1240498) b!3009987))

(assert (= (and b!3009987 res!1240495) b!3009984))

(assert (= (and b!3009984 res!1240497) b!3009982))

(assert (= (and b!3009978 (not res!1240500)) b!3009990))

(assert (= (and b!3009990 res!1240496) b!3009979))

(assert (= (and b!3009979 (not res!1240499)) b!3009988))

(assert (= (and b!3009988 (not res!1240493)) b!3009985))

(assert (= (or b!3009989 b!3009979 b!3009987) bm!202712))

(assert (=> b!3009982 m!3356639))

(assert (=> b!3009982 m!3356785))

(assert (=> b!3009986 m!3356639))

(assert (=> b!3009986 m!3356785))

(assert (=> b!3009986 m!3356637))

(assert (=> b!3009986 m!3356785))

(declare-fun m!3356893 () Bool)

(assert (=> b!3009986 m!3356893))

(assert (=> b!3009986 m!3356639))

(assert (=> b!3009986 m!3356789))

(assert (=> b!3009986 m!3356893))

(assert (=> b!3009986 m!3356789))

(declare-fun m!3356895 () Bool)

(assert (=> b!3009986 m!3356895))

(assert (=> b!3009985 m!3356639))

(assert (=> b!3009985 m!3356785))

(assert (=> b!3009983 m!3356637))

(declare-fun m!3356897 () Bool)

(assert (=> b!3009983 m!3356897))

(assert (=> b!3009984 m!3356639))

(assert (=> b!3009984 m!3356789))

(assert (=> b!3009984 m!3356789))

(assert (=> b!3009984 m!3356795))

(assert (=> b!3009988 m!3356639))

(assert (=> b!3009988 m!3356789))

(assert (=> b!3009988 m!3356789))

(assert (=> b!3009988 m!3356795))

(assert (=> bm!202712 m!3356639))

(assert (=> bm!202712 m!3356643))

(assert (=> d!847516 m!3356639))

(assert (=> d!847516 m!3356643))

(assert (=> d!847516 m!3356637))

(declare-fun m!3356899 () Bool)

(assert (=> d!847516 m!3356899))

(assert (=> b!3009584 d!847516))

(declare-fun bm!202713 () Bool)

(declare-fun call!202718 () Regex!9393)

(declare-fun call!202721 () Regex!9393)

(assert (=> bm!202713 (= call!202718 call!202721)))

(declare-fun b!3009991 () Bool)

(declare-fun c!495799 () Bool)

(assert (=> b!3009991 (= c!495799 (nullable!3046 (regOne!19298 lt!1043692)))))

(declare-fun e!1890017 () Regex!9393)

(declare-fun e!1890015 () Regex!9393)

(assert (=> b!3009991 (= e!1890017 e!1890015)))

(declare-fun c!495796 () Bool)

(declare-fun c!495798 () Bool)

(declare-fun call!202720 () Regex!9393)

(declare-fun bm!202714 () Bool)

(assert (=> bm!202714 (= call!202720 (derivativeStep!2644 (ite c!495796 (regTwo!19299 lt!1043692) (ite c!495798 (reg!9722 lt!1043692) (regOne!19298 lt!1043692))) (head!6703 (_2!20172 lt!1043681))))))

(declare-fun b!3009992 () Bool)

(declare-fun e!1890019 () Regex!9393)

(declare-fun call!202719 () Regex!9393)

(assert (=> b!3009992 (= e!1890019 (Union!9393 call!202719 call!202720))))

(declare-fun b!3009993 () Bool)

(assert (=> b!3009993 (= e!1890015 (Union!9393 (Concat!14714 call!202718 (regTwo!19298 lt!1043692)) call!202719))))

(declare-fun b!3009994 () Bool)

(declare-fun e!1890016 () Regex!9393)

(assert (=> b!3009994 (= e!1890016 EmptyLang!9393)))

(declare-fun bm!202715 () Bool)

(assert (=> bm!202715 (= call!202719 (derivativeStep!2644 (ite c!495796 (regOne!19299 lt!1043692) (regTwo!19298 lt!1043692)) (head!6703 (_2!20172 lt!1043681))))))

(declare-fun b!3009995 () Bool)

(assert (=> b!3009995 (= e!1890017 (Concat!14714 call!202721 lt!1043692))))

(declare-fun b!3009996 () Bool)

(declare-fun e!1890018 () Regex!9393)

(assert (=> b!3009996 (= e!1890016 e!1890018)))

(declare-fun c!495797 () Bool)

(assert (=> b!3009996 (= c!495797 ((_ is ElementMatch!9393) lt!1043692))))

(declare-fun b!3009997 () Bool)

(assert (=> b!3009997 (= e!1890015 (Union!9393 (Concat!14714 call!202718 (regTwo!19298 lt!1043692)) EmptyLang!9393))))

(declare-fun d!847518 () Bool)

(declare-fun lt!1043834 () Regex!9393)

(assert (=> d!847518 (validRegex!4126 lt!1043834)))

(assert (=> d!847518 (= lt!1043834 e!1890016)))

(declare-fun c!495800 () Bool)

(assert (=> d!847518 (= c!495800 (or ((_ is EmptyExpr!9393) lt!1043692) ((_ is EmptyLang!9393) lt!1043692)))))

(assert (=> d!847518 (validRegex!4126 lt!1043692)))

(assert (=> d!847518 (= (derivativeStep!2644 lt!1043692 (head!6703 (_2!20172 lt!1043681))) lt!1043834)))

(declare-fun b!3009998 () Bool)

(assert (=> b!3009998 (= e!1890019 e!1890017)))

(assert (=> b!3009998 (= c!495798 ((_ is Star!9393) lt!1043692))))

(declare-fun bm!202716 () Bool)

(assert (=> bm!202716 (= call!202721 call!202720)))

(declare-fun b!3009999 () Bool)

(assert (=> b!3009999 (= e!1890018 (ite (= (head!6703 (_2!20172 lt!1043681)) (c!495525 lt!1043692)) EmptyExpr!9393 EmptyLang!9393))))

(declare-fun b!3010000 () Bool)

(assert (=> b!3010000 (= c!495796 ((_ is Union!9393) lt!1043692))))

(assert (=> b!3010000 (= e!1890018 e!1890019)))

(assert (= (and d!847518 c!495800) b!3009994))

(assert (= (and d!847518 (not c!495800)) b!3009996))

(assert (= (and b!3009996 c!495797) b!3009999))

(assert (= (and b!3009996 (not c!495797)) b!3010000))

(assert (= (and b!3010000 c!495796) b!3009992))

(assert (= (and b!3010000 (not c!495796)) b!3009998))

(assert (= (and b!3009998 c!495798) b!3009995))

(assert (= (and b!3009998 (not c!495798)) b!3009991))

(assert (= (and b!3009991 c!495799) b!3009993))

(assert (= (and b!3009991 (not c!495799)) b!3009997))

(assert (= (or b!3009993 b!3009997) bm!202713))

(assert (= (or b!3009995 bm!202713) bm!202716))

(assert (= (or b!3009992 bm!202716) bm!202714))

(assert (= (or b!3009992 b!3009993) bm!202715))

(declare-fun m!3356901 () Bool)

(assert (=> b!3009991 m!3356901))

(assert (=> bm!202714 m!3356635))

(declare-fun m!3356903 () Bool)

(assert (=> bm!202714 m!3356903))

(assert (=> bm!202715 m!3356635))

(declare-fun m!3356905 () Bool)

(assert (=> bm!202715 m!3356905))

(declare-fun m!3356907 () Bool)

(assert (=> d!847518 m!3356907))

(assert (=> d!847518 m!3356523))

(assert (=> b!3009584 d!847518))

(assert (=> b!3009584 d!847450))

(assert (=> b!3009584 d!847452))

(declare-fun b!3010001 () Bool)

(declare-fun e!1890023 () Bool)

(declare-fun lt!1043835 () Bool)

(assert (=> b!3010001 (= e!1890023 (not lt!1043835))))

(declare-fun b!3010002 () Bool)

(declare-fun res!1240508 () Bool)

(declare-fun e!1890025 () Bool)

(assert (=> b!3010002 (=> res!1240508 e!1890025)))

(declare-fun e!1890021 () Bool)

(assert (=> b!3010002 (= res!1240508 e!1890021)))

(declare-fun res!1240506 () Bool)

(assert (=> b!3010002 (=> (not res!1240506) (not e!1890021))))

(assert (=> b!3010002 (= res!1240506 lt!1043835)))

(declare-fun d!847520 () Bool)

(declare-fun e!1890020 () Bool)

(assert (=> d!847520 e!1890020))

(declare-fun c!495801 () Bool)

(assert (=> d!847520 (= c!495801 ((_ is EmptyExpr!9393) (derivativeStep!2644 (reg!9722 r!17423) (head!6703 (_1!20172 lt!1043681)))))))

(declare-fun e!1890022 () Bool)

(assert (=> d!847520 (= lt!1043835 e!1890022)))

(declare-fun c!495802 () Bool)

(assert (=> d!847520 (= c!495802 (isEmpty!19419 (tail!4929 (_1!20172 lt!1043681))))))

(assert (=> d!847520 (validRegex!4126 (derivativeStep!2644 (reg!9722 r!17423) (head!6703 (_1!20172 lt!1043681))))))

(assert (=> d!847520 (= (matchR!4275 (derivativeStep!2644 (reg!9722 r!17423) (head!6703 (_1!20172 lt!1043681))) (tail!4929 (_1!20172 lt!1043681))) lt!1043835)))

(declare-fun bm!202717 () Bool)

(declare-fun call!202722 () Bool)

(assert (=> bm!202717 (= call!202722 (isEmpty!19419 (tail!4929 (_1!20172 lt!1043681))))))

(declare-fun b!3010003 () Bool)

(declare-fun e!1890024 () Bool)

(declare-fun e!1890026 () Bool)

(assert (=> b!3010003 (= e!1890024 e!1890026)))

(declare-fun res!1240507 () Bool)

(assert (=> b!3010003 (=> res!1240507 e!1890026)))

(assert (=> b!3010003 (= res!1240507 call!202722)))

(declare-fun b!3010004 () Bool)

(declare-fun res!1240502 () Bool)

(assert (=> b!3010004 (=> res!1240502 e!1890025)))

(assert (=> b!3010004 (= res!1240502 (not ((_ is ElementMatch!9393) (derivativeStep!2644 (reg!9722 r!17423) (head!6703 (_1!20172 lt!1043681))))))))

(assert (=> b!3010004 (= e!1890023 e!1890025)))

(declare-fun b!3010005 () Bool)

(assert (=> b!3010005 (= e!1890020 e!1890023)))

(declare-fun c!495803 () Bool)

(assert (=> b!3010005 (= c!495803 ((_ is EmptyLang!9393) (derivativeStep!2644 (reg!9722 r!17423) (head!6703 (_1!20172 lt!1043681)))))))

(declare-fun b!3010006 () Bool)

(assert (=> b!3010006 (= e!1890021 (= (head!6703 (tail!4929 (_1!20172 lt!1043681))) (c!495525 (derivativeStep!2644 (reg!9722 r!17423) (head!6703 (_1!20172 lt!1043681))))))))

(declare-fun b!3010007 () Bool)

(assert (=> b!3010007 (= e!1890022 (nullable!3046 (derivativeStep!2644 (reg!9722 r!17423) (head!6703 (_1!20172 lt!1043681)))))))

(declare-fun b!3010008 () Bool)

(declare-fun res!1240505 () Bool)

(assert (=> b!3010008 (=> (not res!1240505) (not e!1890021))))

(assert (=> b!3010008 (= res!1240505 (isEmpty!19419 (tail!4929 (tail!4929 (_1!20172 lt!1043681)))))))

(declare-fun b!3010009 () Bool)

(assert (=> b!3010009 (= e!1890026 (not (= (head!6703 (tail!4929 (_1!20172 lt!1043681))) (c!495525 (derivativeStep!2644 (reg!9722 r!17423) (head!6703 (_1!20172 lt!1043681)))))))))

(declare-fun b!3010010 () Bool)

(assert (=> b!3010010 (= e!1890022 (matchR!4275 (derivativeStep!2644 (derivativeStep!2644 (reg!9722 r!17423) (head!6703 (_1!20172 lt!1043681))) (head!6703 (tail!4929 (_1!20172 lt!1043681)))) (tail!4929 (tail!4929 (_1!20172 lt!1043681)))))))

(declare-fun b!3010011 () Bool)

(declare-fun res!1240503 () Bool)

(assert (=> b!3010011 (=> (not res!1240503) (not e!1890021))))

(assert (=> b!3010011 (= res!1240503 (not call!202722))))

(declare-fun b!3010012 () Bool)

(declare-fun res!1240501 () Bool)

(assert (=> b!3010012 (=> res!1240501 e!1890026)))

(assert (=> b!3010012 (= res!1240501 (not (isEmpty!19419 (tail!4929 (tail!4929 (_1!20172 lt!1043681))))))))

(declare-fun b!3010013 () Bool)

(assert (=> b!3010013 (= e!1890020 (= lt!1043835 call!202722))))

(declare-fun b!3010014 () Bool)

(assert (=> b!3010014 (= e!1890025 e!1890024)))

(declare-fun res!1240504 () Bool)

(assert (=> b!3010014 (=> (not res!1240504) (not e!1890024))))

(assert (=> b!3010014 (= res!1240504 (not lt!1043835))))

(assert (= (and d!847520 c!495802) b!3010007))

(assert (= (and d!847520 (not c!495802)) b!3010010))

(assert (= (and d!847520 c!495801) b!3010013))

(assert (= (and d!847520 (not c!495801)) b!3010005))

(assert (= (and b!3010005 c!495803) b!3010001))

(assert (= (and b!3010005 (not c!495803)) b!3010004))

(assert (= (and b!3010004 (not res!1240502)) b!3010002))

(assert (= (and b!3010002 res!1240506) b!3010011))

(assert (= (and b!3010011 res!1240503) b!3010008))

(assert (= (and b!3010008 res!1240505) b!3010006))

(assert (= (and b!3010002 (not res!1240508)) b!3010014))

(assert (= (and b!3010014 res!1240504) b!3010003))

(assert (= (and b!3010003 (not res!1240507)) b!3010012))

(assert (= (and b!3010012 (not res!1240501)) b!3010009))

(assert (= (or b!3010013 b!3010003 b!3010011) bm!202717))

(assert (=> b!3010006 m!3356701))

(declare-fun m!3356909 () Bool)

(assert (=> b!3010006 m!3356909))

(assert (=> b!3010010 m!3356701))

(assert (=> b!3010010 m!3356909))

(assert (=> b!3010010 m!3356699))

(assert (=> b!3010010 m!3356909))

(declare-fun m!3356911 () Bool)

(assert (=> b!3010010 m!3356911))

(assert (=> b!3010010 m!3356701))

(declare-fun m!3356913 () Bool)

(assert (=> b!3010010 m!3356913))

(assert (=> b!3010010 m!3356911))

(assert (=> b!3010010 m!3356913))

(declare-fun m!3356915 () Bool)

(assert (=> b!3010010 m!3356915))

(assert (=> b!3010009 m!3356701))

(assert (=> b!3010009 m!3356909))

(assert (=> b!3010007 m!3356699))

(declare-fun m!3356917 () Bool)

(assert (=> b!3010007 m!3356917))

(assert (=> b!3010008 m!3356701))

(assert (=> b!3010008 m!3356913))

(assert (=> b!3010008 m!3356913))

(declare-fun m!3356919 () Bool)

(assert (=> b!3010008 m!3356919))

(assert (=> b!3010012 m!3356701))

(assert (=> b!3010012 m!3356913))

(assert (=> b!3010012 m!3356913))

(assert (=> b!3010012 m!3356919))

(assert (=> bm!202717 m!3356701))

(assert (=> bm!202717 m!3356705))

(assert (=> d!847520 m!3356701))

(assert (=> d!847520 m!3356705))

(assert (=> d!847520 m!3356699))

(declare-fun m!3356921 () Bool)

(assert (=> d!847520 m!3356921))

(assert (=> b!3009659 d!847520))

(declare-fun bm!202718 () Bool)

(declare-fun call!202723 () Regex!9393)

(declare-fun call!202726 () Regex!9393)

(assert (=> bm!202718 (= call!202723 call!202726)))

(declare-fun b!3010015 () Bool)

(declare-fun c!495807 () Bool)

(assert (=> b!3010015 (= c!495807 (nullable!3046 (regOne!19298 (reg!9722 r!17423))))))

(declare-fun e!1890029 () Regex!9393)

(declare-fun e!1890027 () Regex!9393)

(assert (=> b!3010015 (= e!1890029 e!1890027)))

(declare-fun bm!202719 () Bool)

(declare-fun call!202725 () Regex!9393)

(declare-fun c!495804 () Bool)

(declare-fun c!495806 () Bool)

(assert (=> bm!202719 (= call!202725 (derivativeStep!2644 (ite c!495804 (regTwo!19299 (reg!9722 r!17423)) (ite c!495806 (reg!9722 (reg!9722 r!17423)) (regOne!19298 (reg!9722 r!17423)))) (head!6703 (_1!20172 lt!1043681))))))

(declare-fun b!3010016 () Bool)

(declare-fun e!1890031 () Regex!9393)

(declare-fun call!202724 () Regex!9393)

(assert (=> b!3010016 (= e!1890031 (Union!9393 call!202724 call!202725))))

(declare-fun b!3010017 () Bool)

(assert (=> b!3010017 (= e!1890027 (Union!9393 (Concat!14714 call!202723 (regTwo!19298 (reg!9722 r!17423))) call!202724))))

(declare-fun b!3010018 () Bool)

(declare-fun e!1890028 () Regex!9393)

(assert (=> b!3010018 (= e!1890028 EmptyLang!9393)))

(declare-fun bm!202720 () Bool)

(assert (=> bm!202720 (= call!202724 (derivativeStep!2644 (ite c!495804 (regOne!19299 (reg!9722 r!17423)) (regTwo!19298 (reg!9722 r!17423))) (head!6703 (_1!20172 lt!1043681))))))

(declare-fun b!3010019 () Bool)

(assert (=> b!3010019 (= e!1890029 (Concat!14714 call!202726 (reg!9722 r!17423)))))

(declare-fun b!3010020 () Bool)

(declare-fun e!1890030 () Regex!9393)

(assert (=> b!3010020 (= e!1890028 e!1890030)))

(declare-fun c!495805 () Bool)

(assert (=> b!3010020 (= c!495805 ((_ is ElementMatch!9393) (reg!9722 r!17423)))))

(declare-fun b!3010021 () Bool)

(assert (=> b!3010021 (= e!1890027 (Union!9393 (Concat!14714 call!202723 (regTwo!19298 (reg!9722 r!17423))) EmptyLang!9393))))

(declare-fun d!847522 () Bool)

(declare-fun lt!1043836 () Regex!9393)

(assert (=> d!847522 (validRegex!4126 lt!1043836)))

(assert (=> d!847522 (= lt!1043836 e!1890028)))

(declare-fun c!495808 () Bool)

(assert (=> d!847522 (= c!495808 (or ((_ is EmptyExpr!9393) (reg!9722 r!17423)) ((_ is EmptyLang!9393) (reg!9722 r!17423))))))

(assert (=> d!847522 (validRegex!4126 (reg!9722 r!17423))))

(assert (=> d!847522 (= (derivativeStep!2644 (reg!9722 r!17423) (head!6703 (_1!20172 lt!1043681))) lt!1043836)))

(declare-fun b!3010022 () Bool)

(assert (=> b!3010022 (= e!1890031 e!1890029)))

(assert (=> b!3010022 (= c!495806 ((_ is Star!9393) (reg!9722 r!17423)))))

(declare-fun bm!202721 () Bool)

(assert (=> bm!202721 (= call!202726 call!202725)))

(declare-fun b!3010023 () Bool)

(assert (=> b!3010023 (= e!1890030 (ite (= (head!6703 (_1!20172 lt!1043681)) (c!495525 (reg!9722 r!17423))) EmptyExpr!9393 EmptyLang!9393))))

(declare-fun b!3010024 () Bool)

(assert (=> b!3010024 (= c!495804 ((_ is Union!9393) (reg!9722 r!17423)))))

(assert (=> b!3010024 (= e!1890030 e!1890031)))

(assert (= (and d!847522 c!495808) b!3010018))

(assert (= (and d!847522 (not c!495808)) b!3010020))

(assert (= (and b!3010020 c!495805) b!3010023))

(assert (= (and b!3010020 (not c!495805)) b!3010024))

(assert (= (and b!3010024 c!495804) b!3010016))

(assert (= (and b!3010024 (not c!495804)) b!3010022))

(assert (= (and b!3010022 c!495806) b!3010019))

(assert (= (and b!3010022 (not c!495806)) b!3010015))

(assert (= (and b!3010015 c!495807) b!3010017))

(assert (= (and b!3010015 (not c!495807)) b!3010021))

(assert (= (or b!3010017 b!3010021) bm!202718))

(assert (= (or b!3010019 bm!202718) bm!202721))

(assert (= (or b!3010016 bm!202721) bm!202719))

(assert (= (or b!3010016 b!3010017) bm!202720))

(declare-fun m!3356923 () Bool)

(assert (=> b!3010015 m!3356923))

(assert (=> bm!202719 m!3356697))

(declare-fun m!3356925 () Bool)

(assert (=> bm!202719 m!3356925))

(assert (=> bm!202720 m!3356697))

(declare-fun m!3356927 () Bool)

(assert (=> bm!202720 m!3356927))

(declare-fun m!3356929 () Bool)

(assert (=> d!847522 m!3356929))

(assert (=> d!847522 m!3356621))

(assert (=> b!3009659 d!847522))

(declare-fun d!847524 () Bool)

(assert (=> d!847524 (= (head!6703 (_1!20172 lt!1043681)) (h!40554 (_1!20172 lt!1043681)))))

(assert (=> b!3009659 d!847524))

(assert (=> b!3009659 d!847444))

(declare-fun d!847526 () Bool)

(assert (=> d!847526 (= (isEmptyExpr!489 (ite c!495685 lt!1043782 lt!1043778)) ((_ is EmptyExpr!9393) (ite c!495685 lt!1043782 lt!1043778)))))

(assert (=> bm!202634 d!847526))

(assert (=> bm!202641 d!847484))

(declare-fun d!847528 () Bool)

(assert (=> d!847528 (= (nullable!3046 lt!1043686) (nullableFct!868 lt!1043686))))

(declare-fun bs!529273 () Bool)

(assert (= bs!529273 d!847528))

(declare-fun m!3356931 () Bool)

(assert (=> bs!529273 m!3356931))

(assert (=> b!3009749 d!847528))

(assert (=> bm!202643 d!847478))

(declare-fun d!847530 () Bool)

(assert (=> d!847530 (= (Exists!1662 lambda!112616) (choose!17872 lambda!112616))))

(declare-fun bs!529274 () Bool)

(assert (= bs!529274 d!847530))

(declare-fun m!3356937 () Bool)

(assert (=> bs!529274 m!3356937))

(assert (=> d!847402 d!847530))

(declare-fun d!847532 () Bool)

(assert (=> d!847532 (= (Exists!1662 lambda!112617) (choose!17872 lambda!112617))))

(declare-fun bs!529275 () Bool)

(assert (= bs!529275 d!847532))

(declare-fun m!3356941 () Bool)

(assert (=> bs!529275 m!3356941))

(assert (=> d!847402 d!847532))

(declare-fun bs!529277 () Bool)

(declare-fun d!847534 () Bool)

(assert (= bs!529277 (and d!847534 d!847402)))

(declare-fun lambda!112631 () Int)

(assert (=> bs!529277 (= lambda!112631 lambda!112616)))

(declare-fun bs!529278 () Bool)

(assert (= bs!529278 (and d!847534 d!847408)))

(assert (=> bs!529278 (= (= (Star!9393 lt!1043686) lt!1043692) (= lambda!112631 lambda!112620))))

(declare-fun bs!529279 () Bool)

(assert (= bs!529279 (and d!847534 b!3009733)))

(assert (=> bs!529279 (not (= lambda!112631 lambda!112622))))

(declare-fun bs!529280 () Bool)

(assert (= bs!529280 (and d!847534 b!3009734)))

(assert (=> bs!529280 (not (= lambda!112631 lambda!112621))))

(declare-fun bs!529281 () Bool)

(assert (= bs!529281 (and d!847534 b!3008998)))

(assert (=> bs!529281 (not (= lambda!112631 lambda!112588))))

(declare-fun bs!529282 () Bool)

(assert (= bs!529282 (and d!847534 b!3009154)))

(assert (=> bs!529282 (not (= lambda!112631 lambda!112601))))

(assert (=> bs!529281 (= (= (Star!9393 lt!1043686) lt!1043692) (= lambda!112631 lambda!112587))))

(declare-fun bs!529283 () Bool)

(assert (= bs!529283 (and d!847534 b!3009153)))

(assert (=> bs!529283 (not (= lambda!112631 lambda!112602))))

(assert (=> bs!529277 (not (= lambda!112631 lambda!112617))))

(declare-fun bs!529284 () Bool)

(assert (= bs!529284 (and d!847534 b!3009923)))

(assert (=> bs!529284 (not (= lambda!112631 lambda!112624))))

(declare-fun bs!529285 () Bool)

(assert (= bs!529285 (and d!847534 b!3009924)))

(assert (=> bs!529285 (not (= lambda!112631 lambda!112623))))

(assert (=> d!847534 true))

(assert (=> d!847534 true))

(declare-fun lambda!112632 () Int)

(assert (=> bs!529278 (not (= lambda!112632 lambda!112620))))

(assert (=> bs!529279 (not (= lambda!112632 lambda!112622))))

(assert (=> bs!529280 (= (and (= lt!1043686 (reg!9722 lt!1043692)) (= (Star!9393 lt!1043686) lt!1043692)) (= lambda!112632 lambda!112621))))

(assert (=> bs!529281 (= (= (Star!9393 lt!1043686) lt!1043692) (= lambda!112632 lambda!112588))))

(assert (=> bs!529282 (= (and (= lt!1043686 (reg!9722 r!17423)) (= (Star!9393 lt!1043686) r!17423)) (= lambda!112632 lambda!112601))))

(assert (=> bs!529281 (not (= lambda!112632 lambda!112587))))

(assert (=> bs!529277 (not (= lambda!112632 lambda!112616))))

(declare-fun bs!529286 () Bool)

(assert (= bs!529286 d!847534))

(assert (=> bs!529286 (not (= lambda!112632 lambda!112631))))

(assert (=> bs!529283 (not (= lambda!112632 lambda!112602))))

(assert (=> bs!529277 (= lambda!112632 lambda!112617)))

(assert (=> bs!529284 (not (= lambda!112632 lambda!112624))))

(assert (=> bs!529285 (= (and (= lt!1043686 (reg!9722 (regTwo!19299 r!17423))) (= (Star!9393 lt!1043686) (regTwo!19299 r!17423))) (= lambda!112632 lambda!112623))))

(assert (=> d!847534 true))

(assert (=> d!847534 true))

(assert (=> d!847534 (= (Exists!1662 lambda!112631) (Exists!1662 lambda!112632))))

(assert (=> d!847534 true))

(declare-fun _$91!473 () Unit!49207)

(assert (=> d!847534 (= (choose!17873 lt!1043686 s!11993) _$91!473)))

(declare-fun m!3356963 () Bool)

(assert (=> bs!529286 m!3356963))

(declare-fun m!3356965 () Bool)

(assert (=> bs!529286 m!3356965))

(assert (=> d!847402 d!847534))

(assert (=> d!847402 d!847480))

(assert (=> b!3009655 d!847524))

(assert (=> b!3009644 d!847450))

(declare-fun bs!529287 () Bool)

(declare-fun b!3010062 () Bool)

(assert (= bs!529287 (and b!3010062 d!847408)))

(declare-fun lambda!112633 () Int)

(assert (=> bs!529287 (not (= lambda!112633 lambda!112620))))

(declare-fun bs!529288 () Bool)

(assert (= bs!529288 (and b!3010062 b!3009733)))

(assert (=> bs!529288 (not (= lambda!112633 lambda!112622))))

(declare-fun bs!529289 () Bool)

(assert (= bs!529289 (and b!3010062 b!3009734)))

(assert (=> bs!529289 (= (and (= (reg!9722 (regOne!19299 lt!1043692)) (reg!9722 lt!1043692)) (= (regOne!19299 lt!1043692) lt!1043692)) (= lambda!112633 lambda!112621))))

(declare-fun bs!529290 () Bool)

(assert (= bs!529290 (and b!3010062 b!3008998)))

(assert (=> bs!529290 (= (and (= (reg!9722 (regOne!19299 lt!1043692)) lt!1043686) (= (regOne!19299 lt!1043692) lt!1043692)) (= lambda!112633 lambda!112588))))

(declare-fun bs!529291 () Bool)

(assert (= bs!529291 (and b!3010062 b!3009154)))

(assert (=> bs!529291 (= (and (= (reg!9722 (regOne!19299 lt!1043692)) (reg!9722 r!17423)) (= (regOne!19299 lt!1043692) r!17423)) (= lambda!112633 lambda!112601))))

(assert (=> bs!529290 (not (= lambda!112633 lambda!112587))))

(declare-fun bs!529292 () Bool)

(assert (= bs!529292 (and b!3010062 d!847402)))

(assert (=> bs!529292 (not (= lambda!112633 lambda!112616))))

(declare-fun bs!529293 () Bool)

(assert (= bs!529293 (and b!3010062 d!847534)))

(assert (=> bs!529293 (not (= lambda!112633 lambda!112631))))

(declare-fun bs!529294 () Bool)

(assert (= bs!529294 (and b!3010062 b!3009153)))

(assert (=> bs!529294 (not (= lambda!112633 lambda!112602))))

(assert (=> bs!529292 (= (and (= (reg!9722 (regOne!19299 lt!1043692)) lt!1043686) (= (regOne!19299 lt!1043692) (Star!9393 lt!1043686))) (= lambda!112633 lambda!112617))))

(declare-fun bs!529295 () Bool)

(assert (= bs!529295 (and b!3010062 b!3009923)))

(assert (=> bs!529295 (not (= lambda!112633 lambda!112624))))

(assert (=> bs!529293 (= (and (= (reg!9722 (regOne!19299 lt!1043692)) lt!1043686) (= (regOne!19299 lt!1043692) (Star!9393 lt!1043686))) (= lambda!112633 lambda!112632))))

(declare-fun bs!529296 () Bool)

(assert (= bs!529296 (and b!3010062 b!3009924)))

(assert (=> bs!529296 (= (and (= (reg!9722 (regOne!19299 lt!1043692)) (reg!9722 (regTwo!19299 r!17423))) (= (regOne!19299 lt!1043692) (regTwo!19299 r!17423))) (= lambda!112633 lambda!112623))))

(assert (=> b!3010062 true))

(assert (=> b!3010062 true))

(declare-fun bs!529297 () Bool)

(declare-fun b!3010061 () Bool)

(assert (= bs!529297 (and b!3010061 d!847408)))

(declare-fun lambda!112634 () Int)

(assert (=> bs!529297 (not (= lambda!112634 lambda!112620))))

(declare-fun bs!529298 () Bool)

(assert (= bs!529298 (and b!3010061 b!3009734)))

(assert (=> bs!529298 (not (= lambda!112634 lambda!112621))))

(declare-fun bs!529299 () Bool)

(assert (= bs!529299 (and b!3010061 b!3008998)))

(assert (=> bs!529299 (not (= lambda!112634 lambda!112588))))

(declare-fun bs!529300 () Bool)

(assert (= bs!529300 (and b!3010061 b!3009154)))

(assert (=> bs!529300 (not (= lambda!112634 lambda!112601))))

(assert (=> bs!529299 (not (= lambda!112634 lambda!112587))))

(declare-fun bs!529301 () Bool)

(assert (= bs!529301 (and b!3010061 d!847402)))

(assert (=> bs!529301 (not (= lambda!112634 lambda!112616))))

(declare-fun bs!529302 () Bool)

(assert (= bs!529302 (and b!3010061 d!847534)))

(assert (=> bs!529302 (not (= lambda!112634 lambda!112631))))

(declare-fun bs!529303 () Bool)

(assert (= bs!529303 (and b!3010061 b!3009733)))

(assert (=> bs!529303 (= (and (= (regOne!19298 (regOne!19299 lt!1043692)) (regOne!19298 lt!1043692)) (= (regTwo!19298 (regOne!19299 lt!1043692)) (regTwo!19298 lt!1043692))) (= lambda!112634 lambda!112622))))

(declare-fun bs!529304 () Bool)

(assert (= bs!529304 (and b!3010061 b!3010062)))

(assert (=> bs!529304 (not (= lambda!112634 lambda!112633))))

(declare-fun bs!529305 () Bool)

(assert (= bs!529305 (and b!3010061 b!3009153)))

(assert (=> bs!529305 (= (and (= (regOne!19298 (regOne!19299 lt!1043692)) (regOne!19298 r!17423)) (= (regTwo!19298 (regOne!19299 lt!1043692)) (regTwo!19298 r!17423))) (= lambda!112634 lambda!112602))))

(assert (=> bs!529301 (not (= lambda!112634 lambda!112617))))

(declare-fun bs!529306 () Bool)

(assert (= bs!529306 (and b!3010061 b!3009923)))

(assert (=> bs!529306 (= (and (= (regOne!19298 (regOne!19299 lt!1043692)) (regOne!19298 (regTwo!19299 r!17423))) (= (regTwo!19298 (regOne!19299 lt!1043692)) (regTwo!19298 (regTwo!19299 r!17423)))) (= lambda!112634 lambda!112624))))

(assert (=> bs!529302 (not (= lambda!112634 lambda!112632))))

(declare-fun bs!529307 () Bool)

(assert (= bs!529307 (and b!3010061 b!3009924)))

(assert (=> bs!529307 (not (= lambda!112634 lambda!112623))))

(assert (=> b!3010061 true))

(assert (=> b!3010061 true))

(declare-fun b!3010060 () Bool)

(declare-fun e!1890054 () Bool)

(declare-fun call!202735 () Bool)

(assert (=> b!3010060 (= e!1890054 call!202735)))

(declare-fun e!1890053 () Bool)

(declare-fun call!202734 () Bool)

(assert (=> b!3010061 (= e!1890053 call!202734)))

(declare-fun e!1890050 () Bool)

(assert (=> b!3010062 (= e!1890050 call!202734)))

(declare-fun b!3010063 () Bool)

(declare-fun c!495822 () Bool)

(assert (=> b!3010063 (= c!495822 ((_ is Union!9393) (regOne!19299 lt!1043692)))))

(declare-fun e!1890051 () Bool)

(declare-fun e!1890055 () Bool)

(assert (=> b!3010063 (= e!1890051 e!1890055)))

(declare-fun b!3010064 () Bool)

(assert (=> b!3010064 (= e!1890051 (= s!11993 (Cons!35134 (c!495525 (regOne!19299 lt!1043692)) Nil!35134)))))

(declare-fun b!3010065 () Bool)

(declare-fun e!1890052 () Bool)

(assert (=> b!3010065 (= e!1890054 e!1890052)))

(declare-fun res!1240524 () Bool)

(assert (=> b!3010065 (= res!1240524 (not ((_ is EmptyLang!9393) (regOne!19299 lt!1043692))))))

(assert (=> b!3010065 (=> (not res!1240524) (not e!1890052))))

(declare-fun b!3010066 () Bool)

(declare-fun c!495823 () Bool)

(assert (=> b!3010066 (= c!495823 ((_ is ElementMatch!9393) (regOne!19299 lt!1043692)))))

(assert (=> b!3010066 (= e!1890052 e!1890051)))

(declare-fun b!3010067 () Bool)

(assert (=> b!3010067 (= e!1890055 e!1890053)))

(declare-fun c!495820 () Bool)

(assert (=> b!3010067 (= c!495820 ((_ is Star!9393) (regOne!19299 lt!1043692)))))

(declare-fun bm!202729 () Bool)

(assert (=> bm!202729 (= call!202735 (isEmpty!19419 s!11993))))

(declare-fun b!3010068 () Bool)

(declare-fun res!1240523 () Bool)

(assert (=> b!3010068 (=> res!1240523 e!1890050)))

(assert (=> b!3010068 (= res!1240523 call!202735)))

(assert (=> b!3010068 (= e!1890053 e!1890050)))

(declare-fun bm!202730 () Bool)

(assert (=> bm!202730 (= call!202734 (Exists!1662 (ite c!495820 lambda!112633 lambda!112634)))))

(declare-fun b!3010069 () Bool)

(declare-fun e!1890056 () Bool)

(assert (=> b!3010069 (= e!1890056 (matchRSpec!1530 (regTwo!19299 (regOne!19299 lt!1043692)) s!11993))))

(declare-fun b!3010070 () Bool)

(assert (=> b!3010070 (= e!1890055 e!1890056)))

(declare-fun res!1240522 () Bool)

(assert (=> b!3010070 (= res!1240522 (matchRSpec!1530 (regOne!19299 (regOne!19299 lt!1043692)) s!11993))))

(assert (=> b!3010070 (=> res!1240522 e!1890056)))

(declare-fun d!847546 () Bool)

(declare-fun c!495821 () Bool)

(assert (=> d!847546 (= c!495821 ((_ is EmptyExpr!9393) (regOne!19299 lt!1043692)))))

(assert (=> d!847546 (= (matchRSpec!1530 (regOne!19299 lt!1043692) s!11993) e!1890054)))

(assert (= (and d!847546 c!495821) b!3010060))

(assert (= (and d!847546 (not c!495821)) b!3010065))

(assert (= (and b!3010065 res!1240524) b!3010066))

(assert (= (and b!3010066 c!495823) b!3010064))

(assert (= (and b!3010066 (not c!495823)) b!3010063))

(assert (= (and b!3010063 c!495822) b!3010070))

(assert (= (and b!3010063 (not c!495822)) b!3010067))

(assert (= (and b!3010070 (not res!1240522)) b!3010069))

(assert (= (and b!3010067 c!495820) b!3010068))

(assert (= (and b!3010067 (not c!495820)) b!3010061))

(assert (= (and b!3010068 (not res!1240523)) b!3010062))

(assert (= (or b!3010062 b!3010061) bm!202730))

(assert (= (or b!3010060 b!3010068) bm!202729))

(assert (=> bm!202729 m!3356353))

(declare-fun m!3356979 () Bool)

(assert (=> bm!202730 m!3356979))

(declare-fun m!3356981 () Bool)

(assert (=> b!3010069 m!3356981))

(declare-fun m!3356983 () Bool)

(assert (=> b!3010070 m!3356983))

(assert (=> b!3009742 d!847546))

(assert (=> d!847432 d!847366))

(assert (=> d!847432 d!847430))

(declare-fun d!847560 () Bool)

(assert (=> d!847560 (= (matchR!4275 lt!1043692 s!11993) (matchRSpec!1530 lt!1043692 s!11993))))

(assert (=> d!847560 true))

(declare-fun _$88!3344 () Unit!49207)

(assert (=> d!847560 (= (choose!17870 lt!1043692 s!11993) _$88!3344)))

(declare-fun bs!529308 () Bool)

(assert (= bs!529308 d!847560))

(assert (=> bs!529308 m!3356369))

(assert (=> bs!529308 m!3356355))

(assert (=> d!847432 d!847560))

(declare-fun b!3010099 () Bool)

(declare-fun e!1890074 () Bool)

(declare-fun e!1890076 () Bool)

(assert (=> b!3010099 (= e!1890074 e!1890076)))

(declare-fun res!1240542 () Bool)

(assert (=> b!3010099 (= res!1240542 (not (nullable!3046 (reg!9722 lt!1043692))))))

(assert (=> b!3010099 (=> (not res!1240542) (not e!1890076))))

(declare-fun b!3010100 () Bool)

(declare-fun call!202738 () Bool)

(assert (=> b!3010100 (= e!1890076 call!202738)))

(declare-fun b!3010101 () Bool)

(declare-fun e!1890077 () Bool)

(declare-fun call!202739 () Bool)

(assert (=> b!3010101 (= e!1890077 call!202739)))

(declare-fun d!847564 () Bool)

(declare-fun res!1240543 () Bool)

(declare-fun e!1890073 () Bool)

(assert (=> d!847564 (=> res!1240543 e!1890073)))

(assert (=> d!847564 (= res!1240543 ((_ is ElementMatch!9393) lt!1043692))))

(assert (=> d!847564 (= (validRegex!4126 lt!1043692) e!1890073)))

(declare-fun b!3010102 () Bool)

(declare-fun res!1240545 () Bool)

(declare-fun e!1890071 () Bool)

(assert (=> b!3010102 (=> (not res!1240545) (not e!1890071))))

(assert (=> b!3010102 (= res!1240545 call!202739)))

(declare-fun e!1890072 () Bool)

(assert (=> b!3010102 (= e!1890072 e!1890071)))

(declare-fun bm!202733 () Bool)

(declare-fun call!202740 () Bool)

(declare-fun c!495830 () Bool)

(assert (=> bm!202733 (= call!202740 (validRegex!4126 (ite c!495830 (regTwo!19299 lt!1043692) (regOne!19298 lt!1043692))))))

(declare-fun b!3010103 () Bool)

(assert (=> b!3010103 (= e!1890071 call!202740)))

(declare-fun b!3010104 () Bool)

(declare-fun e!1890075 () Bool)

(assert (=> b!3010104 (= e!1890075 e!1890077)))

(declare-fun res!1240541 () Bool)

(assert (=> b!3010104 (=> (not res!1240541) (not e!1890077))))

(assert (=> b!3010104 (= res!1240541 call!202740)))

(declare-fun b!3010105 () Bool)

(assert (=> b!3010105 (= e!1890074 e!1890072)))

(assert (=> b!3010105 (= c!495830 ((_ is Union!9393) lt!1043692))))

(declare-fun bm!202734 () Bool)

(assert (=> bm!202734 (= call!202739 call!202738)))

(declare-fun b!3010106 () Bool)

(declare-fun res!1240544 () Bool)

(assert (=> b!3010106 (=> res!1240544 e!1890075)))

(assert (=> b!3010106 (= res!1240544 (not ((_ is Concat!14714) lt!1043692)))))

(assert (=> b!3010106 (= e!1890072 e!1890075)))

(declare-fun b!3010107 () Bool)

(assert (=> b!3010107 (= e!1890073 e!1890074)))

(declare-fun c!495831 () Bool)

(assert (=> b!3010107 (= c!495831 ((_ is Star!9393) lt!1043692))))

(declare-fun bm!202735 () Bool)

(assert (=> bm!202735 (= call!202738 (validRegex!4126 (ite c!495831 (reg!9722 lt!1043692) (ite c!495830 (regOne!19299 lt!1043692) (regTwo!19298 lt!1043692)))))))

(assert (= (and d!847564 (not res!1240543)) b!3010107))

(assert (= (and b!3010107 c!495831) b!3010099))

(assert (= (and b!3010107 (not c!495831)) b!3010105))

(assert (= (and b!3010099 res!1240542) b!3010100))

(assert (= (and b!3010105 c!495830) b!3010102))

(assert (= (and b!3010105 (not c!495830)) b!3010106))

(assert (= (and b!3010102 res!1240545) b!3010103))

(assert (= (and b!3010106 (not res!1240544)) b!3010104))

(assert (= (and b!3010104 res!1240541) b!3010101))

(assert (= (or b!3010102 b!3010101) bm!202734))

(assert (= (or b!3010103 b!3010104) bm!202733))

(assert (= (or b!3010100 bm!202734) bm!202735))

(declare-fun m!3356999 () Bool)

(assert (=> b!3010099 m!3356999))

(declare-fun m!3357001 () Bool)

(assert (=> bm!202733 m!3357001))

(declare-fun m!3357003 () Bool)

(assert (=> bm!202735 m!3357003))

(assert (=> d!847432 d!847564))

(declare-fun d!847566 () Bool)

(assert (=> d!847566 (= (isDefined!5323 lt!1043795) (not (isEmpty!19421 lt!1043795)))))

(declare-fun bs!529309 () Bool)

(assert (= bs!529309 d!847566))

(declare-fun m!3357005 () Bool)

(assert (=> bs!529309 m!3357005))

(assert (=> d!847406 d!847566))

(declare-fun b!3010108 () Bool)

(declare-fun e!1890081 () Bool)

(declare-fun lt!1043845 () Bool)

(assert (=> b!3010108 (= e!1890081 (not lt!1043845))))

(declare-fun b!3010109 () Bool)

(declare-fun res!1240553 () Bool)

(declare-fun e!1890083 () Bool)

(assert (=> b!3010109 (=> res!1240553 e!1890083)))

(declare-fun e!1890079 () Bool)

(assert (=> b!3010109 (= res!1240553 e!1890079)))

(declare-fun res!1240551 () Bool)

(assert (=> b!3010109 (=> (not res!1240551) (not e!1890079))))

(assert (=> b!3010109 (= res!1240551 lt!1043845)))

(declare-fun d!847568 () Bool)

(declare-fun e!1890078 () Bool)

(assert (=> d!847568 e!1890078))

(declare-fun c!495832 () Bool)

(assert (=> d!847568 (= c!495832 ((_ is EmptyExpr!9393) lt!1043686))))

(declare-fun e!1890080 () Bool)

(assert (=> d!847568 (= lt!1043845 e!1890080)))

(declare-fun c!495833 () Bool)

(assert (=> d!847568 (= c!495833 (isEmpty!19419 Nil!35134))))

(assert (=> d!847568 (validRegex!4126 lt!1043686)))

(assert (=> d!847568 (= (matchR!4275 lt!1043686 Nil!35134) lt!1043845)))

(declare-fun bm!202736 () Bool)

(declare-fun call!202741 () Bool)

(assert (=> bm!202736 (= call!202741 (isEmpty!19419 Nil!35134))))

(declare-fun b!3010110 () Bool)

(declare-fun e!1890082 () Bool)

(declare-fun e!1890084 () Bool)

(assert (=> b!3010110 (= e!1890082 e!1890084)))

(declare-fun res!1240552 () Bool)

(assert (=> b!3010110 (=> res!1240552 e!1890084)))

(assert (=> b!3010110 (= res!1240552 call!202741)))

(declare-fun b!3010111 () Bool)

(declare-fun res!1240547 () Bool)

(assert (=> b!3010111 (=> res!1240547 e!1890083)))

(assert (=> b!3010111 (= res!1240547 (not ((_ is ElementMatch!9393) lt!1043686)))))

(assert (=> b!3010111 (= e!1890081 e!1890083)))

(declare-fun b!3010112 () Bool)

(assert (=> b!3010112 (= e!1890078 e!1890081)))

(declare-fun c!495834 () Bool)

(assert (=> b!3010112 (= c!495834 ((_ is EmptyLang!9393) lt!1043686))))

(declare-fun b!3010113 () Bool)

(assert (=> b!3010113 (= e!1890079 (= (head!6703 Nil!35134) (c!495525 lt!1043686)))))

(declare-fun b!3010114 () Bool)

(assert (=> b!3010114 (= e!1890080 (nullable!3046 lt!1043686))))

(declare-fun b!3010115 () Bool)

(declare-fun res!1240550 () Bool)

(assert (=> b!3010115 (=> (not res!1240550) (not e!1890079))))

(assert (=> b!3010115 (= res!1240550 (isEmpty!19419 (tail!4929 Nil!35134)))))

(declare-fun b!3010116 () Bool)

(assert (=> b!3010116 (= e!1890084 (not (= (head!6703 Nil!35134) (c!495525 lt!1043686))))))

(declare-fun b!3010117 () Bool)

(assert (=> b!3010117 (= e!1890080 (matchR!4275 (derivativeStep!2644 lt!1043686 (head!6703 Nil!35134)) (tail!4929 Nil!35134)))))

(declare-fun b!3010118 () Bool)

(declare-fun res!1240548 () Bool)

(assert (=> b!3010118 (=> (not res!1240548) (not e!1890079))))

(assert (=> b!3010118 (= res!1240548 (not call!202741))))

(declare-fun b!3010119 () Bool)

(declare-fun res!1240546 () Bool)

(assert (=> b!3010119 (=> res!1240546 e!1890084)))

(assert (=> b!3010119 (= res!1240546 (not (isEmpty!19419 (tail!4929 Nil!35134))))))

(declare-fun b!3010120 () Bool)

(assert (=> b!3010120 (= e!1890078 (= lt!1043845 call!202741))))

(declare-fun b!3010121 () Bool)

(assert (=> b!3010121 (= e!1890083 e!1890082)))

(declare-fun res!1240549 () Bool)

(assert (=> b!3010121 (=> (not res!1240549) (not e!1890082))))

(assert (=> b!3010121 (= res!1240549 (not lt!1043845))))

(assert (= (and d!847568 c!495833) b!3010114))

(assert (= (and d!847568 (not c!495833)) b!3010117))

(assert (= (and d!847568 c!495832) b!3010120))

(assert (= (and d!847568 (not c!495832)) b!3010112))

(assert (= (and b!3010112 c!495834) b!3010108))

(assert (= (and b!3010112 (not c!495834)) b!3010111))

(assert (= (and b!3010111 (not res!1240547)) b!3010109))

(assert (= (and b!3010109 res!1240551) b!3010118))

(assert (= (and b!3010118 res!1240548) b!3010115))

(assert (= (and b!3010115 res!1240550) b!3010113))

(assert (= (and b!3010109 (not res!1240553)) b!3010121))

(assert (= (and b!3010121 res!1240549) b!3010110))

(assert (= (and b!3010110 (not res!1240552)) b!3010119))

(assert (= (and b!3010119 (not res!1240546)) b!3010116))

(assert (= (or b!3010120 b!3010110 b!3010118) bm!202736))

(declare-fun m!3357007 () Bool)

(assert (=> b!3010113 m!3357007))

(assert (=> b!3010117 m!3357007))

(assert (=> b!3010117 m!3357007))

(declare-fun m!3357009 () Bool)

(assert (=> b!3010117 m!3357009))

(declare-fun m!3357011 () Bool)

(assert (=> b!3010117 m!3357011))

(assert (=> b!3010117 m!3357009))

(assert (=> b!3010117 m!3357011))

(declare-fun m!3357013 () Bool)

(assert (=> b!3010117 m!3357013))

(assert (=> b!3010116 m!3357007))

(assert (=> b!3010114 m!3356763))

(assert (=> b!3010115 m!3357011))

(assert (=> b!3010115 m!3357011))

(declare-fun m!3357015 () Bool)

(assert (=> b!3010115 m!3357015))

(assert (=> b!3010119 m!3357011))

(assert (=> b!3010119 m!3357011))

(assert (=> b!3010119 m!3357015))

(declare-fun m!3357017 () Bool)

(assert (=> bm!202736 m!3357017))

(assert (=> d!847568 m!3357017))

(assert (=> d!847568 m!3356657))

(assert (=> d!847406 d!847568))

(assert (=> d!847406 d!847480))

(declare-fun b!3010122 () Bool)

(declare-fun e!1890088 () Bool)

(declare-fun lt!1043846 () Bool)

(assert (=> b!3010122 (= e!1890088 (not lt!1043846))))

(declare-fun b!3010123 () Bool)

(declare-fun res!1240561 () Bool)

(declare-fun e!1890090 () Bool)

(assert (=> b!3010123 (=> res!1240561 e!1890090)))

(declare-fun e!1890086 () Bool)

(assert (=> b!3010123 (= res!1240561 e!1890086)))

(declare-fun res!1240559 () Bool)

(assert (=> b!3010123 (=> (not res!1240559) (not e!1890086))))

(assert (=> b!3010123 (= res!1240559 lt!1043846)))

(declare-fun d!847570 () Bool)

(declare-fun e!1890085 () Bool)

(assert (=> d!847570 e!1890085))

(declare-fun c!495835 () Bool)

(assert (=> d!847570 (= c!495835 ((_ is EmptyExpr!9393) (derivativeStep!2644 lt!1043692 (head!6703 s!11993))))))

(declare-fun e!1890087 () Bool)

(assert (=> d!847570 (= lt!1043846 e!1890087)))

(declare-fun c!495836 () Bool)

(assert (=> d!847570 (= c!495836 (isEmpty!19419 (tail!4929 s!11993)))))

(assert (=> d!847570 (validRegex!4126 (derivativeStep!2644 lt!1043692 (head!6703 s!11993)))))

(assert (=> d!847570 (= (matchR!4275 (derivativeStep!2644 lt!1043692 (head!6703 s!11993)) (tail!4929 s!11993)) lt!1043846)))

(declare-fun bm!202737 () Bool)

(declare-fun call!202742 () Bool)

(assert (=> bm!202737 (= call!202742 (isEmpty!19419 (tail!4929 s!11993)))))

(declare-fun b!3010124 () Bool)

(declare-fun e!1890089 () Bool)

(declare-fun e!1890091 () Bool)

(assert (=> b!3010124 (= e!1890089 e!1890091)))

(declare-fun res!1240560 () Bool)

(assert (=> b!3010124 (=> res!1240560 e!1890091)))

(assert (=> b!3010124 (= res!1240560 call!202742)))

(declare-fun b!3010125 () Bool)

(declare-fun res!1240555 () Bool)

(assert (=> b!3010125 (=> res!1240555 e!1890090)))

(assert (=> b!3010125 (= res!1240555 (not ((_ is ElementMatch!9393) (derivativeStep!2644 lt!1043692 (head!6703 s!11993)))))))

(assert (=> b!3010125 (= e!1890088 e!1890090)))

(declare-fun b!3010126 () Bool)

(assert (=> b!3010126 (= e!1890085 e!1890088)))

(declare-fun c!495837 () Bool)

(assert (=> b!3010126 (= c!495837 ((_ is EmptyLang!9393) (derivativeStep!2644 lt!1043692 (head!6703 s!11993))))))

(declare-fun b!3010127 () Bool)

(assert (=> b!3010127 (= e!1890086 (= (head!6703 (tail!4929 s!11993)) (c!495525 (derivativeStep!2644 lt!1043692 (head!6703 s!11993)))))))

(declare-fun b!3010128 () Bool)

(assert (=> b!3010128 (= e!1890087 (nullable!3046 (derivativeStep!2644 lt!1043692 (head!6703 s!11993))))))

(declare-fun b!3010129 () Bool)

(declare-fun res!1240558 () Bool)

(assert (=> b!3010129 (=> (not res!1240558) (not e!1890086))))

(assert (=> b!3010129 (= res!1240558 (isEmpty!19419 (tail!4929 (tail!4929 s!11993))))))

(declare-fun b!3010130 () Bool)

(assert (=> b!3010130 (= e!1890091 (not (= (head!6703 (tail!4929 s!11993)) (c!495525 (derivativeStep!2644 lt!1043692 (head!6703 s!11993))))))))

(declare-fun b!3010131 () Bool)

(assert (=> b!3010131 (= e!1890087 (matchR!4275 (derivativeStep!2644 (derivativeStep!2644 lt!1043692 (head!6703 s!11993)) (head!6703 (tail!4929 s!11993))) (tail!4929 (tail!4929 s!11993))))))

(declare-fun b!3010132 () Bool)

(declare-fun res!1240556 () Bool)

(assert (=> b!3010132 (=> (not res!1240556) (not e!1890086))))

(assert (=> b!3010132 (= res!1240556 (not call!202742))))

(declare-fun b!3010133 () Bool)

(declare-fun res!1240554 () Bool)

(assert (=> b!3010133 (=> res!1240554 e!1890091)))

(assert (=> b!3010133 (= res!1240554 (not (isEmpty!19419 (tail!4929 (tail!4929 s!11993)))))))

(declare-fun b!3010134 () Bool)

(assert (=> b!3010134 (= e!1890085 (= lt!1043846 call!202742))))

(declare-fun b!3010135 () Bool)

(assert (=> b!3010135 (= e!1890090 e!1890089)))

(declare-fun res!1240557 () Bool)

(assert (=> b!3010135 (=> (not res!1240557) (not e!1890089))))

(assert (=> b!3010135 (= res!1240557 (not lt!1043846))))

(assert (= (and d!847570 c!495836) b!3010128))

(assert (= (and d!847570 (not c!495836)) b!3010131))

(assert (= (and d!847570 c!495835) b!3010134))

(assert (= (and d!847570 (not c!495835)) b!3010126))

(assert (= (and b!3010126 c!495837) b!3010122))

(assert (= (and b!3010126 (not c!495837)) b!3010125))

(assert (= (and b!3010125 (not res!1240555)) b!3010123))

(assert (= (and b!3010123 res!1240559) b!3010132))

(assert (= (and b!3010132 res!1240556) b!3010129))

(assert (= (and b!3010129 res!1240558) b!3010127))

(assert (= (and b!3010123 (not res!1240561)) b!3010135))

(assert (= (and b!3010135 res!1240557) b!3010124))

(assert (= (and b!3010124 (not res!1240560)) b!3010133))

(assert (= (and b!3010133 (not res!1240554)) b!3010130))

(assert (= (or b!3010134 b!3010124 b!3010132) bm!202737))

(assert (=> b!3010127 m!3356497))

(assert (=> b!3010127 m!3356871))

(assert (=> b!3010131 m!3356497))

(assert (=> b!3010131 m!3356871))

(assert (=> b!3010131 m!3356517))

(assert (=> b!3010131 m!3356871))

(declare-fun m!3357019 () Bool)

(assert (=> b!3010131 m!3357019))

(assert (=> b!3010131 m!3356497))

(assert (=> b!3010131 m!3356875))

(assert (=> b!3010131 m!3357019))

(assert (=> b!3010131 m!3356875))

(declare-fun m!3357021 () Bool)

(assert (=> b!3010131 m!3357021))

(assert (=> b!3010130 m!3356497))

(assert (=> b!3010130 m!3356871))

(assert (=> b!3010128 m!3356517))

(declare-fun m!3357023 () Bool)

(assert (=> b!3010128 m!3357023))

(assert (=> b!3010129 m!3356497))

(assert (=> b!3010129 m!3356875))

(assert (=> b!3010129 m!3356875))

(assert (=> b!3010129 m!3356881))

(assert (=> b!3010133 m!3356497))

(assert (=> b!3010133 m!3356875))

(assert (=> b!3010133 m!3356875))

(assert (=> b!3010133 m!3356881))

(assert (=> bm!202737 m!3356497))

(assert (=> bm!202737 m!3356503))

(assert (=> d!847570 m!3356497))

(assert (=> d!847570 m!3356503))

(assert (=> d!847570 m!3356517))

(declare-fun m!3357025 () Bool)

(assert (=> d!847570 m!3357025))

(assert (=> b!3009334 d!847570))

(declare-fun bm!202738 () Bool)

(declare-fun call!202743 () Regex!9393)

(declare-fun call!202746 () Regex!9393)

(assert (=> bm!202738 (= call!202743 call!202746)))

(declare-fun b!3010136 () Bool)

(declare-fun c!495841 () Bool)

(assert (=> b!3010136 (= c!495841 (nullable!3046 (regOne!19298 lt!1043692)))))

(declare-fun e!1890094 () Regex!9393)

(declare-fun e!1890092 () Regex!9393)

(assert (=> b!3010136 (= e!1890094 e!1890092)))

(declare-fun c!495840 () Bool)

(declare-fun bm!202739 () Bool)

(declare-fun c!495838 () Bool)

(declare-fun call!202745 () Regex!9393)

(assert (=> bm!202739 (= call!202745 (derivativeStep!2644 (ite c!495838 (regTwo!19299 lt!1043692) (ite c!495840 (reg!9722 lt!1043692) (regOne!19298 lt!1043692))) (head!6703 s!11993)))))

(declare-fun b!3010137 () Bool)

(declare-fun e!1890096 () Regex!9393)

(declare-fun call!202744 () Regex!9393)

(assert (=> b!3010137 (= e!1890096 (Union!9393 call!202744 call!202745))))

(declare-fun b!3010138 () Bool)

(assert (=> b!3010138 (= e!1890092 (Union!9393 (Concat!14714 call!202743 (regTwo!19298 lt!1043692)) call!202744))))

(declare-fun b!3010139 () Bool)

(declare-fun e!1890093 () Regex!9393)

(assert (=> b!3010139 (= e!1890093 EmptyLang!9393)))

(declare-fun bm!202740 () Bool)

(assert (=> bm!202740 (= call!202744 (derivativeStep!2644 (ite c!495838 (regOne!19299 lt!1043692) (regTwo!19298 lt!1043692)) (head!6703 s!11993)))))

(declare-fun b!3010140 () Bool)

(assert (=> b!3010140 (= e!1890094 (Concat!14714 call!202746 lt!1043692))))

(declare-fun b!3010141 () Bool)

(declare-fun e!1890095 () Regex!9393)

(assert (=> b!3010141 (= e!1890093 e!1890095)))

(declare-fun c!495839 () Bool)

(assert (=> b!3010141 (= c!495839 ((_ is ElementMatch!9393) lt!1043692))))

(declare-fun b!3010142 () Bool)

(assert (=> b!3010142 (= e!1890092 (Union!9393 (Concat!14714 call!202743 (regTwo!19298 lt!1043692)) EmptyLang!9393))))

(declare-fun d!847572 () Bool)

(declare-fun lt!1043847 () Regex!9393)

(assert (=> d!847572 (validRegex!4126 lt!1043847)))

(assert (=> d!847572 (= lt!1043847 e!1890093)))

(declare-fun c!495842 () Bool)

(assert (=> d!847572 (= c!495842 (or ((_ is EmptyExpr!9393) lt!1043692) ((_ is EmptyLang!9393) lt!1043692)))))

(assert (=> d!847572 (validRegex!4126 lt!1043692)))

(assert (=> d!847572 (= (derivativeStep!2644 lt!1043692 (head!6703 s!11993)) lt!1043847)))

(declare-fun b!3010143 () Bool)

(assert (=> b!3010143 (= e!1890096 e!1890094)))

(assert (=> b!3010143 (= c!495840 ((_ is Star!9393) lt!1043692))))

(declare-fun bm!202741 () Bool)

(assert (=> bm!202741 (= call!202746 call!202745)))

(declare-fun b!3010144 () Bool)

(assert (=> b!3010144 (= e!1890095 (ite (= (head!6703 s!11993) (c!495525 lt!1043692)) EmptyExpr!9393 EmptyLang!9393))))

(declare-fun b!3010145 () Bool)

(assert (=> b!3010145 (= c!495838 ((_ is Union!9393) lt!1043692))))

(assert (=> b!3010145 (= e!1890095 e!1890096)))

(assert (= (and d!847572 c!495842) b!3010139))

(assert (= (and d!847572 (not c!495842)) b!3010141))

(assert (= (and b!3010141 c!495839) b!3010144))

(assert (= (and b!3010141 (not c!495839)) b!3010145))

(assert (= (and b!3010145 c!495838) b!3010137))

(assert (= (and b!3010145 (not c!495838)) b!3010143))

(assert (= (and b!3010143 c!495840) b!3010140))

(assert (= (and b!3010143 (not c!495840)) b!3010136))

(assert (= (and b!3010136 c!495841) b!3010138))

(assert (= (and b!3010136 (not c!495841)) b!3010142))

(assert (= (or b!3010138 b!3010142) bm!202738))

(assert (= (or b!3010140 bm!202738) bm!202741))

(assert (= (or b!3010137 bm!202741) bm!202739))

(assert (= (or b!3010137 b!3010138) bm!202740))

(assert (=> b!3010136 m!3356901))

(assert (=> bm!202739 m!3356493))

(declare-fun m!3357027 () Bool)

(assert (=> bm!202739 m!3357027))

(assert (=> bm!202740 m!3356493))

(declare-fun m!3357029 () Bool)

(assert (=> bm!202740 m!3357029))

(declare-fun m!3357031 () Bool)

(assert (=> d!847572 m!3357031))

(assert (=> d!847572 m!3356523))

(assert (=> b!3009334 d!847572))

(assert (=> b!3009334 d!847494))

(assert (=> b!3009334 d!847514))

(assert (=> bm!202661 d!847428))

(assert (=> d!847408 d!847480))

(declare-fun bs!529310 () Bool)

(declare-fun d!847574 () Bool)

(assert (= bs!529310 (and d!847574 d!847408)))

(declare-fun lambda!112637 () Int)

(assert (=> bs!529310 (= lambda!112637 lambda!112620)))

(declare-fun bs!529311 () Bool)

(assert (= bs!529311 (and d!847574 b!3009734)))

(assert (=> bs!529311 (not (= lambda!112637 lambda!112621))))

(declare-fun bs!529312 () Bool)

(assert (= bs!529312 (and d!847574 b!3010061)))

(assert (=> bs!529312 (not (= lambda!112637 lambda!112634))))

(declare-fun bs!529313 () Bool)

(assert (= bs!529313 (and d!847574 b!3008998)))

(assert (=> bs!529313 (not (= lambda!112637 lambda!112588))))

(declare-fun bs!529314 () Bool)

(assert (= bs!529314 (and d!847574 b!3009154)))

(assert (=> bs!529314 (not (= lambda!112637 lambda!112601))))

(assert (=> bs!529313 (= lambda!112637 lambda!112587)))

(declare-fun bs!529315 () Bool)

(assert (= bs!529315 (and d!847574 d!847402)))

(assert (=> bs!529315 (= (= lt!1043692 (Star!9393 lt!1043686)) (= lambda!112637 lambda!112616))))

(declare-fun bs!529316 () Bool)

(assert (= bs!529316 (and d!847574 d!847534)))

(assert (=> bs!529316 (= (= lt!1043692 (Star!9393 lt!1043686)) (= lambda!112637 lambda!112631))))

(declare-fun bs!529317 () Bool)

(assert (= bs!529317 (and d!847574 b!3009733)))

(assert (=> bs!529317 (not (= lambda!112637 lambda!112622))))

(declare-fun bs!529318 () Bool)

(assert (= bs!529318 (and d!847574 b!3010062)))

(assert (=> bs!529318 (not (= lambda!112637 lambda!112633))))

(declare-fun bs!529319 () Bool)

(assert (= bs!529319 (and d!847574 b!3009153)))

(assert (=> bs!529319 (not (= lambda!112637 lambda!112602))))

(assert (=> bs!529315 (not (= lambda!112637 lambda!112617))))

(declare-fun bs!529320 () Bool)

(assert (= bs!529320 (and d!847574 b!3009923)))

(assert (=> bs!529320 (not (= lambda!112637 lambda!112624))))

(assert (=> bs!529316 (not (= lambda!112637 lambda!112632))))

(declare-fun bs!529321 () Bool)

(assert (= bs!529321 (and d!847574 b!3009924)))

(assert (=> bs!529321 (not (= lambda!112637 lambda!112623))))

(assert (=> d!847574 true))

(assert (=> d!847574 true))

(assert (=> d!847574 true))

(assert (=> d!847574 (= (isDefined!5323 (findConcatSeparation!1166 lt!1043686 lt!1043692 Nil!35134 s!11993 s!11993)) (Exists!1662 lambda!112637))))

(assert (=> d!847574 true))

(declare-fun _$89!1283 () Unit!49207)

(assert (=> d!847574 (= (choose!17874 lt!1043686 lt!1043692 s!11993) _$89!1283)))

(declare-fun bs!529322 () Bool)

(assert (= bs!529322 d!847574))

(assert (=> bs!529322 m!3356405))

(assert (=> bs!529322 m!3356405))

(assert (=> bs!529322 m!3356683))

(declare-fun m!3357033 () Bool)

(assert (=> bs!529322 m!3357033))

(assert (=> d!847408 d!847574))

(assert (=> d!847408 d!847406))

(declare-fun d!847576 () Bool)

(assert (=> d!847576 (= (isDefined!5323 (findConcatSeparation!1166 lt!1043686 lt!1043692 Nil!35134 s!11993 s!11993)) (not (isEmpty!19421 (findConcatSeparation!1166 lt!1043686 lt!1043692 Nil!35134 s!11993 s!11993))))))

(declare-fun bs!529323 () Bool)

(assert (= bs!529323 d!847576))

(assert (=> bs!529323 m!3356405))

(declare-fun m!3357035 () Bool)

(assert (=> bs!529323 m!3357035))

(assert (=> d!847408 d!847576))

(declare-fun d!847578 () Bool)

(assert (=> d!847578 (= (Exists!1662 lambda!112620) (choose!17872 lambda!112620))))

(declare-fun bs!529324 () Bool)

(assert (= bs!529324 d!847578))

(declare-fun m!3357037 () Bool)

(assert (=> bs!529324 m!3357037))

(assert (=> d!847408 d!847578))

(declare-fun d!847580 () Bool)

(assert (=> d!847580 (= (nullable!3046 lt!1043689) (nullableFct!868 lt!1043689))))

(declare-fun bs!529325 () Bool)

(assert (= bs!529325 d!847580))

(declare-fun m!3357039 () Bool)

(assert (=> bs!529325 m!3357039))

(assert (=> b!3009670 d!847580))

(assert (=> b!3009330 d!847494))

(declare-fun b!3010170 () Bool)

(declare-fun e!1890112 () Bool)

(declare-fun lt!1043850 () Bool)

(assert (=> b!3010170 (= e!1890112 (not lt!1043850))))

(declare-fun b!3010171 () Bool)

(declare-fun res!1240573 () Bool)

(declare-fun e!1890114 () Bool)

(assert (=> b!3010171 (=> res!1240573 e!1890114)))

(declare-fun e!1890110 () Bool)

(assert (=> b!3010171 (= res!1240573 e!1890110)))

(declare-fun res!1240571 () Bool)

(assert (=> b!3010171 (=> (not res!1240571) (not e!1890110))))

(assert (=> b!3010171 (= res!1240571 lt!1043850)))

(declare-fun d!847582 () Bool)

(declare-fun e!1890109 () Bool)

(assert (=> d!847582 e!1890109))

(declare-fun c!495853 () Bool)

(assert (=> d!847582 (= c!495853 ((_ is EmptyExpr!9393) lt!1043686))))

(declare-fun e!1890111 () Bool)

(assert (=> d!847582 (= lt!1043850 e!1890111)))

(declare-fun c!495854 () Bool)

(assert (=> d!847582 (= c!495854 (isEmpty!19419 (_1!20172 (get!10936 lt!1043795))))))

(assert (=> d!847582 (validRegex!4126 lt!1043686)))

(assert (=> d!847582 (= (matchR!4275 lt!1043686 (_1!20172 (get!10936 lt!1043795))) lt!1043850)))

(declare-fun bm!202750 () Bool)

(declare-fun call!202755 () Bool)

(assert (=> bm!202750 (= call!202755 (isEmpty!19419 (_1!20172 (get!10936 lt!1043795))))))

(declare-fun b!3010172 () Bool)

(declare-fun e!1890113 () Bool)

(declare-fun e!1890115 () Bool)

(assert (=> b!3010172 (= e!1890113 e!1890115)))

(declare-fun res!1240572 () Bool)

(assert (=> b!3010172 (=> res!1240572 e!1890115)))

(assert (=> b!3010172 (= res!1240572 call!202755)))

(declare-fun b!3010173 () Bool)

(declare-fun res!1240567 () Bool)

(assert (=> b!3010173 (=> res!1240567 e!1890114)))

(assert (=> b!3010173 (= res!1240567 (not ((_ is ElementMatch!9393) lt!1043686)))))

(assert (=> b!3010173 (= e!1890112 e!1890114)))

(declare-fun b!3010174 () Bool)

(assert (=> b!3010174 (= e!1890109 e!1890112)))

(declare-fun c!495855 () Bool)

(assert (=> b!3010174 (= c!495855 ((_ is EmptyLang!9393) lt!1043686))))

(declare-fun b!3010175 () Bool)

(assert (=> b!3010175 (= e!1890110 (= (head!6703 (_1!20172 (get!10936 lt!1043795))) (c!495525 lt!1043686)))))

(declare-fun b!3010176 () Bool)

(assert (=> b!3010176 (= e!1890111 (nullable!3046 lt!1043686))))

(declare-fun b!3010177 () Bool)

(declare-fun res!1240570 () Bool)

(assert (=> b!3010177 (=> (not res!1240570) (not e!1890110))))

(assert (=> b!3010177 (= res!1240570 (isEmpty!19419 (tail!4929 (_1!20172 (get!10936 lt!1043795)))))))

(declare-fun b!3010178 () Bool)

(assert (=> b!3010178 (= e!1890115 (not (= (head!6703 (_1!20172 (get!10936 lt!1043795))) (c!495525 lt!1043686))))))

(declare-fun b!3010179 () Bool)

(assert (=> b!3010179 (= e!1890111 (matchR!4275 (derivativeStep!2644 lt!1043686 (head!6703 (_1!20172 (get!10936 lt!1043795)))) (tail!4929 (_1!20172 (get!10936 lt!1043795)))))))

(declare-fun b!3010180 () Bool)

(declare-fun res!1240568 () Bool)

(assert (=> b!3010180 (=> (not res!1240568) (not e!1890110))))

(assert (=> b!3010180 (= res!1240568 (not call!202755))))

(declare-fun b!3010181 () Bool)

(declare-fun res!1240566 () Bool)

(assert (=> b!3010181 (=> res!1240566 e!1890115)))

(assert (=> b!3010181 (= res!1240566 (not (isEmpty!19419 (tail!4929 (_1!20172 (get!10936 lt!1043795))))))))

(declare-fun b!3010182 () Bool)

(assert (=> b!3010182 (= e!1890109 (= lt!1043850 call!202755))))

(declare-fun b!3010183 () Bool)

(assert (=> b!3010183 (= e!1890114 e!1890113)))

(declare-fun res!1240569 () Bool)

(assert (=> b!3010183 (=> (not res!1240569) (not e!1890113))))

(assert (=> b!3010183 (= res!1240569 (not lt!1043850))))

(assert (= (and d!847582 c!495854) b!3010176))

(assert (= (and d!847582 (not c!495854)) b!3010179))

(assert (= (and d!847582 c!495853) b!3010182))

(assert (= (and d!847582 (not c!495853)) b!3010174))

(assert (= (and b!3010174 c!495855) b!3010170))

(assert (= (and b!3010174 (not c!495855)) b!3010173))

(assert (= (and b!3010173 (not res!1240567)) b!3010171))

(assert (= (and b!3010171 res!1240571) b!3010180))

(assert (= (and b!3010180 res!1240568) b!3010177))

(assert (= (and b!3010177 res!1240570) b!3010175))

(assert (= (and b!3010171 (not res!1240573)) b!3010183))

(assert (= (and b!3010183 res!1240569) b!3010172))

(assert (= (and b!3010172 (not res!1240572)) b!3010181))

(assert (= (and b!3010181 (not res!1240566)) b!3010178))

(assert (= (or b!3010182 b!3010172 b!3010180) bm!202750))

(declare-fun m!3357041 () Bool)

(assert (=> b!3010175 m!3357041))

(assert (=> b!3010179 m!3357041))

(assert (=> b!3010179 m!3357041))

(declare-fun m!3357043 () Bool)

(assert (=> b!3010179 m!3357043))

(declare-fun m!3357045 () Bool)

(assert (=> b!3010179 m!3357045))

(assert (=> b!3010179 m!3357043))

(assert (=> b!3010179 m!3357045))

(declare-fun m!3357047 () Bool)

(assert (=> b!3010179 m!3357047))

(assert (=> b!3010178 m!3357041))

(assert (=> b!3010176 m!3356763))

(assert (=> b!3010177 m!3357045))

(assert (=> b!3010177 m!3357045))

(declare-fun m!3357049 () Bool)

(assert (=> b!3010177 m!3357049))

(assert (=> b!3010181 m!3357045))

(assert (=> b!3010181 m!3357045))

(assert (=> b!3010181 m!3357049))

(declare-fun m!3357051 () Bool)

(assert (=> bm!202750 m!3357051))

(assert (=> d!847582 m!3357051))

(assert (=> d!847582 m!3356657))

(assert (=> b!3009622 d!847582))

(declare-fun d!847584 () Bool)

(assert (=> d!847584 (= (get!10936 lt!1043795) (v!34905 lt!1043795))))

(assert (=> b!3009622 d!847584))

(declare-fun d!847586 () Bool)

(assert (=> d!847586 (= (Exists!1662 (ite c!495562 lambda!112601 lambda!112602)) (choose!17872 (ite c!495562 lambda!112601 lambda!112602)))))

(declare-fun bs!529326 () Bool)

(assert (= bs!529326 d!847586))

(declare-fun m!3357053 () Bool)

(assert (=> bs!529326 m!3357053))

(assert (=> bm!202573 d!847586))

(assert (=> b!3009315 d!847494))

(declare-fun d!847588 () Bool)

(assert (=> d!847588 (= (isEmpty!19421 lt!1043695) (not ((_ is Some!6771) lt!1043695)))))

(assert (=> d!847400 d!847588))

(assert (=> b!3009658 d!847524))

(assert (=> d!847366 d!847428))

(assert (=> d!847366 d!847564))

(assert (=> b!3009647 d!847470))

(assert (=> b!3009647 d!847452))

(declare-fun d!847590 () Bool)

(assert (=> d!847590 (= (isEmptyLang!483 (ite c!495681 lt!1043781 lt!1043778)) ((_ is EmptyLang!9393) (ite c!495681 lt!1043781 lt!1043778)))))

(assert (=> bm!202636 d!847590))

(declare-fun d!847592 () Bool)

(assert (=> d!847592 (= (isEmptyLang!483 (ite c!495685 lt!1043782 (ite c!495681 lt!1043779 lt!1043777))) ((_ is EmptyLang!9393) (ite c!495685 lt!1043782 (ite c!495681 lt!1043779 lt!1043777))))))

(assert (=> bm!202638 d!847592))

(assert (=> b!3009583 d!847450))

(declare-fun d!847594 () Bool)

(assert (=> d!847594 (= (isEmptyExpr!489 (ite c!495718 lt!1043815 lt!1043811)) ((_ is EmptyExpr!9393) (ite c!495718 lt!1043815 lt!1043811)))))

(assert (=> bm!202645 d!847594))

(declare-fun d!847596 () Bool)

(assert (=> d!847596 (= (isEmptyExpr!489 lt!1043777) ((_ is EmptyExpr!9393) lt!1043777))))

(assert (=> b!3009563 d!847596))

(declare-fun bs!529327 () Bool)

(declare-fun b!3010186 () Bool)

(assert (= bs!529327 (and b!3010186 d!847408)))

(declare-fun lambda!112638 () Int)

(assert (=> bs!529327 (not (= lambda!112638 lambda!112620))))

(declare-fun bs!529328 () Bool)

(assert (= bs!529328 (and b!3010186 b!3009734)))

(assert (=> bs!529328 (= (and (= (reg!9722 (regTwo!19299 lt!1043692)) (reg!9722 lt!1043692)) (= (regTwo!19299 lt!1043692) lt!1043692)) (= lambda!112638 lambda!112621))))

(declare-fun bs!529329 () Bool)

(assert (= bs!529329 (and b!3010186 b!3008998)))

(assert (=> bs!529329 (= (and (= (reg!9722 (regTwo!19299 lt!1043692)) lt!1043686) (= (regTwo!19299 lt!1043692) lt!1043692)) (= lambda!112638 lambda!112588))))

(declare-fun bs!529330 () Bool)

(assert (= bs!529330 (and b!3010186 b!3009154)))

(assert (=> bs!529330 (= (and (= (reg!9722 (regTwo!19299 lt!1043692)) (reg!9722 r!17423)) (= (regTwo!19299 lt!1043692) r!17423)) (= lambda!112638 lambda!112601))))

(assert (=> bs!529329 (not (= lambda!112638 lambda!112587))))

(declare-fun bs!529331 () Bool)

(assert (= bs!529331 (and b!3010186 d!847402)))

(assert (=> bs!529331 (not (= lambda!112638 lambda!112616))))

(declare-fun bs!529332 () Bool)

(assert (= bs!529332 (and b!3010186 d!847534)))

(assert (=> bs!529332 (not (= lambda!112638 lambda!112631))))

(declare-fun bs!529333 () Bool)

(assert (= bs!529333 (and b!3010186 b!3009733)))

(assert (=> bs!529333 (not (= lambda!112638 lambda!112622))))

(declare-fun bs!529334 () Bool)

(assert (= bs!529334 (and b!3010186 b!3010062)))

(assert (=> bs!529334 (= (and (= (reg!9722 (regTwo!19299 lt!1043692)) (reg!9722 (regOne!19299 lt!1043692))) (= (regTwo!19299 lt!1043692) (regOne!19299 lt!1043692))) (= lambda!112638 lambda!112633))))

(declare-fun bs!529335 () Bool)

(assert (= bs!529335 (and b!3010186 b!3009153)))

(assert (=> bs!529335 (not (= lambda!112638 lambda!112602))))

(assert (=> bs!529331 (= (and (= (reg!9722 (regTwo!19299 lt!1043692)) lt!1043686) (= (regTwo!19299 lt!1043692) (Star!9393 lt!1043686))) (= lambda!112638 lambda!112617))))

(declare-fun bs!529336 () Bool)

(assert (= bs!529336 (and b!3010186 b!3009923)))

(assert (=> bs!529336 (not (= lambda!112638 lambda!112624))))

(assert (=> bs!529332 (= (and (= (reg!9722 (regTwo!19299 lt!1043692)) lt!1043686) (= (regTwo!19299 lt!1043692) (Star!9393 lt!1043686))) (= lambda!112638 lambda!112632))))

(declare-fun bs!529337 () Bool)

(assert (= bs!529337 (and b!3010186 b!3009924)))

(assert (=> bs!529337 (= (and (= (reg!9722 (regTwo!19299 lt!1043692)) (reg!9722 (regTwo!19299 r!17423))) (= (regTwo!19299 lt!1043692) (regTwo!19299 r!17423))) (= lambda!112638 lambda!112623))))

(declare-fun bs!529338 () Bool)

(assert (= bs!529338 (and b!3010186 b!3010061)))

(assert (=> bs!529338 (not (= lambda!112638 lambda!112634))))

(declare-fun bs!529339 () Bool)

(assert (= bs!529339 (and b!3010186 d!847574)))

(assert (=> bs!529339 (not (= lambda!112638 lambda!112637))))

(assert (=> b!3010186 true))

(assert (=> b!3010186 true))

(declare-fun bs!529340 () Bool)

(declare-fun b!3010185 () Bool)

(assert (= bs!529340 (and b!3010185 d!847408)))

(declare-fun lambda!112639 () Int)

(assert (=> bs!529340 (not (= lambda!112639 lambda!112620))))

(declare-fun bs!529341 () Bool)

(assert (= bs!529341 (and b!3010185 b!3009734)))

(assert (=> bs!529341 (not (= lambda!112639 lambda!112621))))

(declare-fun bs!529342 () Bool)

(assert (= bs!529342 (and b!3010185 b!3010186)))

(assert (=> bs!529342 (not (= lambda!112639 lambda!112638))))

(declare-fun bs!529343 () Bool)

(assert (= bs!529343 (and b!3010185 b!3008998)))

(assert (=> bs!529343 (not (= lambda!112639 lambda!112588))))

(declare-fun bs!529344 () Bool)

(assert (= bs!529344 (and b!3010185 b!3009154)))

(assert (=> bs!529344 (not (= lambda!112639 lambda!112601))))

(assert (=> bs!529343 (not (= lambda!112639 lambda!112587))))

(declare-fun bs!529345 () Bool)

(assert (= bs!529345 (and b!3010185 d!847402)))

(assert (=> bs!529345 (not (= lambda!112639 lambda!112616))))

(declare-fun bs!529346 () Bool)

(assert (= bs!529346 (and b!3010185 d!847534)))

(assert (=> bs!529346 (not (= lambda!112639 lambda!112631))))

(declare-fun bs!529347 () Bool)

(assert (= bs!529347 (and b!3010185 b!3009733)))

(assert (=> bs!529347 (= (and (= (regOne!19298 (regTwo!19299 lt!1043692)) (regOne!19298 lt!1043692)) (= (regTwo!19298 (regTwo!19299 lt!1043692)) (regTwo!19298 lt!1043692))) (= lambda!112639 lambda!112622))))

(declare-fun bs!529348 () Bool)

(assert (= bs!529348 (and b!3010185 b!3010062)))

(assert (=> bs!529348 (not (= lambda!112639 lambda!112633))))

(declare-fun bs!529349 () Bool)

(assert (= bs!529349 (and b!3010185 b!3009153)))

(assert (=> bs!529349 (= (and (= (regOne!19298 (regTwo!19299 lt!1043692)) (regOne!19298 r!17423)) (= (regTwo!19298 (regTwo!19299 lt!1043692)) (regTwo!19298 r!17423))) (= lambda!112639 lambda!112602))))

(assert (=> bs!529345 (not (= lambda!112639 lambda!112617))))

(declare-fun bs!529350 () Bool)

(assert (= bs!529350 (and b!3010185 b!3009923)))

(assert (=> bs!529350 (= (and (= (regOne!19298 (regTwo!19299 lt!1043692)) (regOne!19298 (regTwo!19299 r!17423))) (= (regTwo!19298 (regTwo!19299 lt!1043692)) (regTwo!19298 (regTwo!19299 r!17423)))) (= lambda!112639 lambda!112624))))

(assert (=> bs!529346 (not (= lambda!112639 lambda!112632))))

(declare-fun bs!529351 () Bool)

(assert (= bs!529351 (and b!3010185 b!3009924)))

(assert (=> bs!529351 (not (= lambda!112639 lambda!112623))))

(declare-fun bs!529352 () Bool)

(assert (= bs!529352 (and b!3010185 b!3010061)))

(assert (=> bs!529352 (= (and (= (regOne!19298 (regTwo!19299 lt!1043692)) (regOne!19298 (regOne!19299 lt!1043692))) (= (regTwo!19298 (regTwo!19299 lt!1043692)) (regTwo!19298 (regOne!19299 lt!1043692)))) (= lambda!112639 lambda!112634))))

(declare-fun bs!529353 () Bool)

(assert (= bs!529353 (and b!3010185 d!847574)))

(assert (=> bs!529353 (not (= lambda!112639 lambda!112637))))

(assert (=> b!3010185 true))

(assert (=> b!3010185 true))

(declare-fun b!3010184 () Bool)

(declare-fun e!1890120 () Bool)

(declare-fun call!202757 () Bool)

(assert (=> b!3010184 (= e!1890120 call!202757)))

(declare-fun e!1890119 () Bool)

(declare-fun call!202756 () Bool)

(assert (=> b!3010185 (= e!1890119 call!202756)))

(declare-fun e!1890116 () Bool)

(assert (=> b!3010186 (= e!1890116 call!202756)))

(declare-fun b!3010187 () Bool)

(declare-fun c!495858 () Bool)

(assert (=> b!3010187 (= c!495858 ((_ is Union!9393) (regTwo!19299 lt!1043692)))))

(declare-fun e!1890117 () Bool)

(declare-fun e!1890121 () Bool)

(assert (=> b!3010187 (= e!1890117 e!1890121)))

(declare-fun b!3010188 () Bool)

(assert (=> b!3010188 (= e!1890117 (= s!11993 (Cons!35134 (c!495525 (regTwo!19299 lt!1043692)) Nil!35134)))))

(declare-fun b!3010189 () Bool)

(declare-fun e!1890118 () Bool)

(assert (=> b!3010189 (= e!1890120 e!1890118)))

(declare-fun res!1240576 () Bool)

(assert (=> b!3010189 (= res!1240576 (not ((_ is EmptyLang!9393) (regTwo!19299 lt!1043692))))))

(assert (=> b!3010189 (=> (not res!1240576) (not e!1890118))))

(declare-fun b!3010190 () Bool)

(declare-fun c!495859 () Bool)

(assert (=> b!3010190 (= c!495859 ((_ is ElementMatch!9393) (regTwo!19299 lt!1043692)))))

(assert (=> b!3010190 (= e!1890118 e!1890117)))

(declare-fun b!3010191 () Bool)

(assert (=> b!3010191 (= e!1890121 e!1890119)))

(declare-fun c!495856 () Bool)

(assert (=> b!3010191 (= c!495856 ((_ is Star!9393) (regTwo!19299 lt!1043692)))))

(declare-fun bm!202751 () Bool)

(assert (=> bm!202751 (= call!202757 (isEmpty!19419 s!11993))))

(declare-fun b!3010192 () Bool)

(declare-fun res!1240575 () Bool)

(assert (=> b!3010192 (=> res!1240575 e!1890116)))

(assert (=> b!3010192 (= res!1240575 call!202757)))

(assert (=> b!3010192 (= e!1890119 e!1890116)))

(declare-fun bm!202752 () Bool)

(assert (=> bm!202752 (= call!202756 (Exists!1662 (ite c!495856 lambda!112638 lambda!112639)))))

(declare-fun b!3010193 () Bool)

(declare-fun e!1890122 () Bool)

(assert (=> b!3010193 (= e!1890122 (matchRSpec!1530 (regTwo!19299 (regTwo!19299 lt!1043692)) s!11993))))

(declare-fun b!3010194 () Bool)

(assert (=> b!3010194 (= e!1890121 e!1890122)))

(declare-fun res!1240574 () Bool)

(assert (=> b!3010194 (= res!1240574 (matchRSpec!1530 (regOne!19299 (regTwo!19299 lt!1043692)) s!11993))))

(assert (=> b!3010194 (=> res!1240574 e!1890122)))

(declare-fun d!847598 () Bool)

(declare-fun c!495857 () Bool)

(assert (=> d!847598 (= c!495857 ((_ is EmptyExpr!9393) (regTwo!19299 lt!1043692)))))

(assert (=> d!847598 (= (matchRSpec!1530 (regTwo!19299 lt!1043692) s!11993) e!1890120)))

(assert (= (and d!847598 c!495857) b!3010184))

(assert (= (and d!847598 (not c!495857)) b!3010189))

(assert (= (and b!3010189 res!1240576) b!3010190))

(assert (= (and b!3010190 c!495859) b!3010188))

(assert (= (and b!3010190 (not c!495859)) b!3010187))

(assert (= (and b!3010187 c!495858) b!3010194))

(assert (= (and b!3010187 (not c!495858)) b!3010191))

(assert (= (and b!3010194 (not res!1240574)) b!3010193))

(assert (= (and b!3010191 c!495856) b!3010192))

(assert (= (and b!3010191 (not c!495856)) b!3010185))

(assert (= (and b!3010192 (not res!1240575)) b!3010186))

(assert (= (or b!3010186 b!3010185) bm!202752))

(assert (= (or b!3010184 b!3010192) bm!202751))

(assert (=> bm!202751 m!3356353))

(declare-fun m!3357063 () Bool)

(assert (=> bm!202752 m!3357063))

(declare-fun m!3357065 () Bool)

(assert (=> b!3010193 m!3357065))

(declare-fun m!3357067 () Bool)

(assert (=> b!3010194 m!3357067))

(assert (=> b!3009741 d!847598))

(assert (=> b!3009748 d!847524))

(declare-fun b!3010205 () Bool)

(declare-fun e!1890131 () Bool)

(declare-fun lt!1043852 () Bool)

(assert (=> b!3010205 (= e!1890131 (not lt!1043852))))

(declare-fun b!3010206 () Bool)

(declare-fun res!1240584 () Bool)

(declare-fun e!1890133 () Bool)

(assert (=> b!3010206 (=> res!1240584 e!1890133)))

(declare-fun e!1890129 () Bool)

(assert (=> b!3010206 (= res!1240584 e!1890129)))

(declare-fun res!1240582 () Bool)

(assert (=> b!3010206 (=> (not res!1240582) (not e!1890129))))

(assert (=> b!3010206 (= res!1240582 lt!1043852)))

(declare-fun d!847602 () Bool)

(declare-fun e!1890128 () Bool)

(assert (=> d!847602 e!1890128))

(declare-fun c!495865 () Bool)

(assert (=> d!847602 (= c!495865 ((_ is EmptyExpr!9393) (derivativeStep!2644 lt!1043686 (head!6703 (_1!20172 lt!1043681)))))))

(declare-fun e!1890130 () Bool)

(assert (=> d!847602 (= lt!1043852 e!1890130)))

(declare-fun c!495866 () Bool)

(assert (=> d!847602 (= c!495866 (isEmpty!19419 (tail!4929 (_1!20172 lt!1043681))))))

(assert (=> d!847602 (validRegex!4126 (derivativeStep!2644 lt!1043686 (head!6703 (_1!20172 lt!1043681))))))

(assert (=> d!847602 (= (matchR!4275 (derivativeStep!2644 lt!1043686 (head!6703 (_1!20172 lt!1043681))) (tail!4929 (_1!20172 lt!1043681))) lt!1043852)))

(declare-fun bm!202757 () Bool)

(declare-fun call!202762 () Bool)

(assert (=> bm!202757 (= call!202762 (isEmpty!19419 (tail!4929 (_1!20172 lt!1043681))))))

(declare-fun b!3010207 () Bool)

(declare-fun e!1890132 () Bool)

(declare-fun e!1890134 () Bool)

(assert (=> b!3010207 (= e!1890132 e!1890134)))

(declare-fun res!1240583 () Bool)

(assert (=> b!3010207 (=> res!1240583 e!1890134)))

(assert (=> b!3010207 (= res!1240583 call!202762)))

(declare-fun b!3010208 () Bool)

(declare-fun res!1240578 () Bool)

(assert (=> b!3010208 (=> res!1240578 e!1890133)))

(assert (=> b!3010208 (= res!1240578 (not ((_ is ElementMatch!9393) (derivativeStep!2644 lt!1043686 (head!6703 (_1!20172 lt!1043681))))))))

(assert (=> b!3010208 (= e!1890131 e!1890133)))

(declare-fun b!3010209 () Bool)

(assert (=> b!3010209 (= e!1890128 e!1890131)))

(declare-fun c!495867 () Bool)

(assert (=> b!3010209 (= c!495867 ((_ is EmptyLang!9393) (derivativeStep!2644 lt!1043686 (head!6703 (_1!20172 lt!1043681)))))))

(declare-fun b!3010210 () Bool)

(assert (=> b!3010210 (= e!1890129 (= (head!6703 (tail!4929 (_1!20172 lt!1043681))) (c!495525 (derivativeStep!2644 lt!1043686 (head!6703 (_1!20172 lt!1043681))))))))

(declare-fun b!3010211 () Bool)

(assert (=> b!3010211 (= e!1890130 (nullable!3046 (derivativeStep!2644 lt!1043686 (head!6703 (_1!20172 lt!1043681)))))))

(declare-fun b!3010212 () Bool)

(declare-fun res!1240581 () Bool)

(assert (=> b!3010212 (=> (not res!1240581) (not e!1890129))))

(assert (=> b!3010212 (= res!1240581 (isEmpty!19419 (tail!4929 (tail!4929 (_1!20172 lt!1043681)))))))

(declare-fun b!3010213 () Bool)

(assert (=> b!3010213 (= e!1890134 (not (= (head!6703 (tail!4929 (_1!20172 lt!1043681))) (c!495525 (derivativeStep!2644 lt!1043686 (head!6703 (_1!20172 lt!1043681)))))))))

(declare-fun b!3010214 () Bool)

(assert (=> b!3010214 (= e!1890130 (matchR!4275 (derivativeStep!2644 (derivativeStep!2644 lt!1043686 (head!6703 (_1!20172 lt!1043681))) (head!6703 (tail!4929 (_1!20172 lt!1043681)))) (tail!4929 (tail!4929 (_1!20172 lt!1043681)))))))

(declare-fun b!3010215 () Bool)

(declare-fun res!1240579 () Bool)

(assert (=> b!3010215 (=> (not res!1240579) (not e!1890129))))

(assert (=> b!3010215 (= res!1240579 (not call!202762))))

(declare-fun b!3010216 () Bool)

(declare-fun res!1240577 () Bool)

(assert (=> b!3010216 (=> res!1240577 e!1890134)))

(assert (=> b!3010216 (= res!1240577 (not (isEmpty!19419 (tail!4929 (tail!4929 (_1!20172 lt!1043681))))))))

(declare-fun b!3010217 () Bool)

(assert (=> b!3010217 (= e!1890128 (= lt!1043852 call!202762))))

(declare-fun b!3010218 () Bool)

(assert (=> b!3010218 (= e!1890133 e!1890132)))

(declare-fun res!1240580 () Bool)

(assert (=> b!3010218 (=> (not res!1240580) (not e!1890132))))

(assert (=> b!3010218 (= res!1240580 (not lt!1043852))))

(assert (= (and d!847602 c!495866) b!3010211))

(assert (= (and d!847602 (not c!495866)) b!3010214))

(assert (= (and d!847602 c!495865) b!3010217))

(assert (= (and d!847602 (not c!495865)) b!3010209))

(assert (= (and b!3010209 c!495867) b!3010205))

(assert (= (and b!3010209 (not c!495867)) b!3010208))

(assert (= (and b!3010208 (not res!1240578)) b!3010206))

(assert (= (and b!3010206 res!1240582) b!3010215))

(assert (= (and b!3010215 res!1240579) b!3010212))

(assert (= (and b!3010212 res!1240581) b!3010210))

(assert (= (and b!3010206 (not res!1240584)) b!3010218))

(assert (= (and b!3010218 res!1240580) b!3010207))

(assert (= (and b!3010207 (not res!1240583)) b!3010216))

(assert (= (and b!3010216 (not res!1240577)) b!3010213))

(assert (= (or b!3010217 b!3010207 b!3010215) bm!202757))

(assert (=> b!3010210 m!3356701))

(assert (=> b!3010210 m!3356909))

(assert (=> b!3010214 m!3356701))

(assert (=> b!3010214 m!3356909))

(assert (=> b!3010214 m!3356759))

(assert (=> b!3010214 m!3356909))

(declare-fun m!3357071 () Bool)

(assert (=> b!3010214 m!3357071))

(assert (=> b!3010214 m!3356701))

(assert (=> b!3010214 m!3356913))

(assert (=> b!3010214 m!3357071))

(assert (=> b!3010214 m!3356913))

(declare-fun m!3357073 () Bool)

(assert (=> b!3010214 m!3357073))

(assert (=> b!3010213 m!3356701))

(assert (=> b!3010213 m!3356909))

(assert (=> b!3010211 m!3356759))

(declare-fun m!3357075 () Bool)

(assert (=> b!3010211 m!3357075))

(assert (=> b!3010212 m!3356701))

(assert (=> b!3010212 m!3356913))

(assert (=> b!3010212 m!3356913))

(assert (=> b!3010212 m!3356919))

(assert (=> b!3010216 m!3356701))

(assert (=> b!3010216 m!3356913))

(assert (=> b!3010216 m!3356913))

(assert (=> b!3010216 m!3356919))

(assert (=> bm!202757 m!3356701))

(assert (=> bm!202757 m!3356705))

(assert (=> d!847602 m!3356701))

(assert (=> d!847602 m!3356705))

(assert (=> d!847602 m!3356759))

(declare-fun m!3357077 () Bool)

(assert (=> d!847602 m!3357077))

(assert (=> b!3009752 d!847602))

(declare-fun bm!202761 () Bool)

(declare-fun call!202766 () Regex!9393)

(declare-fun call!202769 () Regex!9393)

(assert (=> bm!202761 (= call!202766 call!202769)))

(declare-fun b!3010228 () Bool)

(declare-fun c!495873 () Bool)

(assert (=> b!3010228 (= c!495873 (nullable!3046 (regOne!19298 lt!1043686)))))

(declare-fun e!1890144 () Regex!9393)

(declare-fun e!1890142 () Regex!9393)

(assert (=> b!3010228 (= e!1890144 e!1890142)))

(declare-fun c!495870 () Bool)

(declare-fun bm!202762 () Bool)

(declare-fun call!202768 () Regex!9393)

(declare-fun c!495872 () Bool)

(assert (=> bm!202762 (= call!202768 (derivativeStep!2644 (ite c!495870 (regTwo!19299 lt!1043686) (ite c!495872 (reg!9722 lt!1043686) (regOne!19298 lt!1043686))) (head!6703 (_1!20172 lt!1043681))))))

(declare-fun b!3010229 () Bool)

(declare-fun e!1890146 () Regex!9393)

(declare-fun call!202767 () Regex!9393)

(assert (=> b!3010229 (= e!1890146 (Union!9393 call!202767 call!202768))))

(declare-fun b!3010230 () Bool)

(assert (=> b!3010230 (= e!1890142 (Union!9393 (Concat!14714 call!202766 (regTwo!19298 lt!1043686)) call!202767))))

(declare-fun b!3010231 () Bool)

(declare-fun e!1890143 () Regex!9393)

(assert (=> b!3010231 (= e!1890143 EmptyLang!9393)))

(declare-fun bm!202763 () Bool)

(assert (=> bm!202763 (= call!202767 (derivativeStep!2644 (ite c!495870 (regOne!19299 lt!1043686) (regTwo!19298 lt!1043686)) (head!6703 (_1!20172 lt!1043681))))))

(declare-fun b!3010232 () Bool)

(assert (=> b!3010232 (= e!1890144 (Concat!14714 call!202769 lt!1043686))))

(declare-fun b!3010233 () Bool)

(declare-fun e!1890145 () Regex!9393)

(assert (=> b!3010233 (= e!1890143 e!1890145)))

(declare-fun c!495871 () Bool)

(assert (=> b!3010233 (= c!495871 ((_ is ElementMatch!9393) lt!1043686))))

(declare-fun b!3010234 () Bool)

(assert (=> b!3010234 (= e!1890142 (Union!9393 (Concat!14714 call!202766 (regTwo!19298 lt!1043686)) EmptyLang!9393))))

(declare-fun d!847614 () Bool)

(declare-fun lt!1043853 () Regex!9393)

(assert (=> d!847614 (validRegex!4126 lt!1043853)))

(assert (=> d!847614 (= lt!1043853 e!1890143)))

(declare-fun c!495874 () Bool)

(assert (=> d!847614 (= c!495874 (or ((_ is EmptyExpr!9393) lt!1043686) ((_ is EmptyLang!9393) lt!1043686)))))

(assert (=> d!847614 (validRegex!4126 lt!1043686)))

(assert (=> d!847614 (= (derivativeStep!2644 lt!1043686 (head!6703 (_1!20172 lt!1043681))) lt!1043853)))

(declare-fun b!3010235 () Bool)

(assert (=> b!3010235 (= e!1890146 e!1890144)))

(assert (=> b!3010235 (= c!495872 ((_ is Star!9393) lt!1043686))))

(declare-fun bm!202764 () Bool)

(assert (=> bm!202764 (= call!202769 call!202768)))

(declare-fun b!3010236 () Bool)

(assert (=> b!3010236 (= e!1890145 (ite (= (head!6703 (_1!20172 lt!1043681)) (c!495525 lt!1043686)) EmptyExpr!9393 EmptyLang!9393))))

(declare-fun b!3010237 () Bool)

(assert (=> b!3010237 (= c!495870 ((_ is Union!9393) lt!1043686))))

(assert (=> b!3010237 (= e!1890145 e!1890146)))

(assert (= (and d!847614 c!495874) b!3010231))

(assert (= (and d!847614 (not c!495874)) b!3010233))

(assert (= (and b!3010233 c!495871) b!3010236))

(assert (= (and b!3010233 (not c!495871)) b!3010237))

(assert (= (and b!3010237 c!495870) b!3010229))

(assert (= (and b!3010237 (not c!495870)) b!3010235))

(assert (= (and b!3010235 c!495872) b!3010232))

(assert (= (and b!3010235 (not c!495872)) b!3010228))

(assert (= (and b!3010228 c!495873) b!3010230))

(assert (= (and b!3010228 (not c!495873)) b!3010234))

(assert (= (or b!3010230 b!3010234) bm!202761))

(assert (= (or b!3010232 bm!202761) bm!202764))

(assert (= (or b!3010229 bm!202764) bm!202762))

(assert (= (or b!3010229 b!3010230) bm!202763))

(declare-fun m!3357085 () Bool)

(assert (=> b!3010228 m!3357085))

(assert (=> bm!202762 m!3356697))

(declare-fun m!3357087 () Bool)

(assert (=> bm!202762 m!3357087))

(assert (=> bm!202763 m!3356697))

(declare-fun m!3357089 () Bool)

(assert (=> bm!202763 m!3357089))

(declare-fun m!3357091 () Bool)

(assert (=> d!847614 m!3357091))

(assert (=> d!847614 m!3356657))

(assert (=> b!3009752 d!847614))

(assert (=> b!3009752 d!847524))

(assert (=> b!3009752 d!847444))

(assert (=> b!3009643 d!847470))

(assert (=> b!3009643 d!847452))

(declare-fun b!3010238 () Bool)

(declare-fun c!495878 () Bool)

(declare-fun e!1890150 () Bool)

(assert (=> b!3010238 (= c!495878 e!1890150)))

(declare-fun res!1240590 () Bool)

(assert (=> b!3010238 (=> res!1240590 e!1890150)))

(declare-fun call!202774 () Bool)

(assert (=> b!3010238 (= res!1240590 call!202774)))

(declare-fun lt!1043859 () Regex!9393)

(declare-fun call!202775 () Regex!9393)

(assert (=> b!3010238 (= lt!1043859 call!202775)))

(declare-fun e!1890159 () Regex!9393)

(declare-fun e!1890151 () Regex!9393)

(assert (=> b!3010238 (= e!1890159 e!1890151)))

(declare-fun b!3010239 () Bool)

(declare-fun e!1890147 () Regex!9393)

(assert (=> b!3010239 (= e!1890147 (ite c!495685 (reg!9722 (reg!9722 r!17423)) (ite c!495681 (regTwo!19299 (reg!9722 r!17423)) (regOne!19298 (reg!9722 r!17423)))))))

(declare-fun b!3010240 () Bool)

(declare-fun e!1890154 () Regex!9393)

(assert (=> b!3010240 (= e!1890154 e!1890147)))

(declare-fun c!495880 () Bool)

(assert (=> b!3010240 (= c!495880 ((_ is ElementMatch!9393) (ite c!495685 (reg!9722 (reg!9722 r!17423)) (ite c!495681 (regTwo!19299 (reg!9722 r!17423)) (regOne!19298 (reg!9722 r!17423))))))))

(declare-fun b!3010241 () Bool)

(declare-fun c!495876 () Bool)

(declare-fun call!202772 () Bool)

(assert (=> b!3010241 (= c!495876 call!202772)))

(declare-fun e!1890149 () Regex!9393)

(declare-fun e!1890160 () Regex!9393)

(assert (=> b!3010241 (= e!1890149 e!1890160)))

(declare-fun c!495881 () Bool)

(declare-fun b!3010242 () Bool)

(assert (=> b!3010242 (= c!495881 ((_ is Union!9393) (ite c!495685 (reg!9722 (reg!9722 r!17423)) (ite c!495681 (regTwo!19299 (reg!9722 r!17423)) (regOne!19298 (reg!9722 r!17423))))))))

(declare-fun e!1890152 () Regex!9393)

(assert (=> b!3010242 (= e!1890159 e!1890152)))

(declare-fun b!3010243 () Bool)

(assert (=> b!3010243 (= e!1890151 (Star!9393 lt!1043859))))

(declare-fun b!3010244 () Bool)

(declare-fun e!1890157 () Regex!9393)

(assert (=> b!3010244 (= e!1890157 EmptyExpr!9393)))

(declare-fun b!3010245 () Bool)

(declare-fun e!1890148 () Bool)

(assert (=> b!3010245 (= e!1890148 call!202772)))

(declare-fun e!1890155 () Bool)

(declare-fun lt!1043857 () Regex!9393)

(declare-fun b!3010246 () Bool)

(assert (=> b!3010246 (= e!1890155 (= (nullable!3046 lt!1043857) (nullable!3046 (ite c!495685 (reg!9722 (reg!9722 r!17423)) (ite c!495681 (regTwo!19299 (reg!9722 r!17423)) (regOne!19298 (reg!9722 r!17423)))))))))

(declare-fun b!3010247 () Bool)

(assert (=> b!3010247 (= e!1890157 e!1890159)))

(declare-fun c!495885 () Bool)

(assert (=> b!3010247 (= c!495885 ((_ is Star!9393) (ite c!495685 (reg!9722 (reg!9722 r!17423)) (ite c!495681 (regTwo!19299 (reg!9722 r!17423)) (regOne!19298 (reg!9722 r!17423))))))))

(declare-fun b!3010248 () Bool)

(declare-fun call!202771 () Bool)

(assert (=> b!3010248 (= e!1890150 call!202771)))

(declare-fun b!3010249 () Bool)

(declare-fun lt!1043856 () Regex!9393)

(declare-fun lt!1043858 () Regex!9393)

(assert (=> b!3010249 (= e!1890160 (Union!9393 lt!1043856 lt!1043858))))

(declare-fun d!847618 () Bool)

(assert (=> d!847618 e!1890155))

(declare-fun res!1240591 () Bool)

(assert (=> d!847618 (=> (not res!1240591) (not e!1890155))))

(assert (=> d!847618 (= res!1240591 (validRegex!4126 lt!1043857))))

(assert (=> d!847618 (= lt!1043857 e!1890154)))

(declare-fun c!495875 () Bool)

(assert (=> d!847618 (= c!495875 ((_ is EmptyLang!9393) (ite c!495685 (reg!9722 (reg!9722 r!17423)) (ite c!495681 (regTwo!19299 (reg!9722 r!17423)) (regOne!19298 (reg!9722 r!17423))))))))

(assert (=> d!847618 (validRegex!4126 (ite c!495685 (reg!9722 (reg!9722 r!17423)) (ite c!495681 (regTwo!19299 (reg!9722 r!17423)) (regOne!19298 (reg!9722 r!17423)))))))

(assert (=> d!847618 (= (simplify!384 (ite c!495685 (reg!9722 (reg!9722 r!17423)) (ite c!495681 (regTwo!19299 (reg!9722 r!17423)) (regOne!19298 (reg!9722 r!17423))))) lt!1043857)))

(declare-fun b!3010250 () Bool)

(assert (=> b!3010250 (= e!1890160 lt!1043856)))

(declare-fun b!3010251 () Bool)

(declare-fun c!495879 () Bool)

(declare-fun lt!1043854 () Regex!9393)

(assert (=> b!3010251 (= c!495879 (isEmptyExpr!489 lt!1043854))))

(declare-fun e!1890153 () Regex!9393)

(declare-fun e!1890156 () Regex!9393)

(assert (=> b!3010251 (= e!1890153 e!1890156)))

(declare-fun lt!1043855 () Regex!9393)

(declare-fun bm!202765 () Bool)

(assert (=> bm!202765 (= call!202771 (isEmptyExpr!489 (ite c!495885 lt!1043859 lt!1043855)))))

(declare-fun bm!202766 () Bool)

(declare-fun call!202770 () Regex!9393)

(assert (=> bm!202766 (= call!202770 call!202775)))

(declare-fun b!3010252 () Bool)

(assert (=> b!3010252 (= e!1890152 e!1890153)))

(assert (=> b!3010252 (= lt!1043854 call!202770)))

(declare-fun call!202773 () Regex!9393)

(assert (=> b!3010252 (= lt!1043855 call!202773)))

(declare-fun res!1240592 () Bool)

(declare-fun call!202776 () Bool)

(assert (=> b!3010252 (= res!1240592 call!202776)))

(assert (=> b!3010252 (=> res!1240592 e!1890148)))

(declare-fun c!495882 () Bool)

(assert (=> b!3010252 (= c!495882 e!1890148)))

(declare-fun bm!202767 () Bool)

(assert (=> bm!202767 (= call!202772 (isEmptyLang!483 (ite c!495881 lt!1043858 lt!1043855)))))

(declare-fun b!3010253 () Bool)

(assert (=> b!3010253 (= e!1890156 lt!1043855)))

(declare-fun bm!202768 () Bool)

(assert (=> bm!202768 (= call!202773 (simplify!384 (ite c!495881 (regOne!19299 (ite c!495685 (reg!9722 (reg!9722 r!17423)) (ite c!495681 (regTwo!19299 (reg!9722 r!17423)) (regOne!19298 (reg!9722 r!17423))))) (regTwo!19298 (ite c!495685 (reg!9722 (reg!9722 r!17423)) (ite c!495681 (regTwo!19299 (reg!9722 r!17423)) (regOne!19298 (reg!9722 r!17423))))))))))

(declare-fun b!3010254 () Bool)

(assert (=> b!3010254 (= e!1890152 e!1890149)))

(assert (=> b!3010254 (= lt!1043856 call!202773)))

(assert (=> b!3010254 (= lt!1043858 call!202770)))

(declare-fun c!495883 () Bool)

(assert (=> b!3010254 (= c!495883 call!202776)))

(declare-fun bm!202769 () Bool)

(assert (=> bm!202769 (= call!202774 (isEmptyLang!483 (ite c!495885 lt!1043859 (ite c!495881 lt!1043856 lt!1043854))))))

(declare-fun b!3010255 () Bool)

(assert (=> b!3010255 (= e!1890149 lt!1043858)))

(declare-fun b!3010256 () Bool)

(assert (=> b!3010256 (= e!1890153 EmptyLang!9393)))

(declare-fun b!3010257 () Bool)

(assert (=> b!3010257 (= e!1890151 EmptyExpr!9393)))

(declare-fun b!3010258 () Bool)

(declare-fun e!1890158 () Regex!9393)

(assert (=> b!3010258 (= e!1890158 lt!1043854)))

(declare-fun b!3010259 () Bool)

(assert (=> b!3010259 (= e!1890156 e!1890158)))

(declare-fun c!495877 () Bool)

(assert (=> b!3010259 (= c!495877 call!202771)))

(declare-fun b!3010260 () Bool)

(assert (=> b!3010260 (= e!1890158 (Concat!14714 lt!1043854 lt!1043855))))

(declare-fun bm!202770 () Bool)

(assert (=> bm!202770 (= call!202776 call!202774)))

(declare-fun b!3010261 () Bool)

(assert (=> b!3010261 (= e!1890154 EmptyLang!9393)))

(declare-fun bm!202771 () Bool)

(assert (=> bm!202771 (= call!202775 (simplify!384 (ite c!495885 (reg!9722 (ite c!495685 (reg!9722 (reg!9722 r!17423)) (ite c!495681 (regTwo!19299 (reg!9722 r!17423)) (regOne!19298 (reg!9722 r!17423))))) (ite c!495881 (regTwo!19299 (ite c!495685 (reg!9722 (reg!9722 r!17423)) (ite c!495681 (regTwo!19299 (reg!9722 r!17423)) (regOne!19298 (reg!9722 r!17423))))) (regOne!19298 (ite c!495685 (reg!9722 (reg!9722 r!17423)) (ite c!495681 (regTwo!19299 (reg!9722 r!17423)) (regOne!19298 (reg!9722 r!17423)))))))))))

(declare-fun b!3010262 () Bool)

(declare-fun c!495884 () Bool)

(assert (=> b!3010262 (= c!495884 ((_ is EmptyExpr!9393) (ite c!495685 (reg!9722 (reg!9722 r!17423)) (ite c!495681 (regTwo!19299 (reg!9722 r!17423)) (regOne!19298 (reg!9722 r!17423))))))))

(assert (=> b!3010262 (= e!1890147 e!1890157)))

(assert (= (and d!847618 c!495875) b!3010261))

(assert (= (and d!847618 (not c!495875)) b!3010240))

(assert (= (and b!3010240 c!495880) b!3010239))

(assert (= (and b!3010240 (not c!495880)) b!3010262))

(assert (= (and b!3010262 c!495884) b!3010244))

(assert (= (and b!3010262 (not c!495884)) b!3010247))

(assert (= (and b!3010247 c!495885) b!3010238))

(assert (= (and b!3010247 (not c!495885)) b!3010242))

(assert (= (and b!3010238 (not res!1240590)) b!3010248))

(assert (= (and b!3010238 c!495878) b!3010257))

(assert (= (and b!3010238 (not c!495878)) b!3010243))

(assert (= (and b!3010242 c!495881) b!3010254))

(assert (= (and b!3010242 (not c!495881)) b!3010252))

(assert (= (and b!3010254 c!495883) b!3010255))

(assert (= (and b!3010254 (not c!495883)) b!3010241))

(assert (= (and b!3010241 c!495876) b!3010250))

(assert (= (and b!3010241 (not c!495876)) b!3010249))

(assert (= (and b!3010252 (not res!1240592)) b!3010245))

(assert (= (and b!3010252 c!495882) b!3010256))

(assert (= (and b!3010252 (not c!495882)) b!3010251))

(assert (= (and b!3010251 c!495879) b!3010253))

(assert (= (and b!3010251 (not c!495879)) b!3010259))

(assert (= (and b!3010259 c!495877) b!3010258))

(assert (= (and b!3010259 (not c!495877)) b!3010260))

(assert (= (or b!3010254 b!3010252) bm!202768))

(assert (= (or b!3010254 b!3010252) bm!202766))

(assert (= (or b!3010254 b!3010252) bm!202770))

(assert (= (or b!3010241 b!3010245) bm!202767))

(assert (= (or b!3010248 b!3010259) bm!202765))

(assert (= (or b!3010238 bm!202766) bm!202771))

(assert (= (or b!3010238 bm!202770) bm!202769))

(assert (= (and d!847618 res!1240591) b!3010246))

(declare-fun m!3357093 () Bool)

(assert (=> b!3010251 m!3357093))

(declare-fun m!3357095 () Bool)

(assert (=> bm!202768 m!3357095))

(declare-fun m!3357097 () Bool)

(assert (=> d!847618 m!3357097))

(declare-fun m!3357099 () Bool)

(assert (=> d!847618 m!3357099))

(declare-fun m!3357101 () Bool)

(assert (=> bm!202771 m!3357101))

(declare-fun m!3357103 () Bool)

(assert (=> b!3010246 m!3357103))

(declare-fun m!3357105 () Bool)

(assert (=> b!3010246 m!3357105))

(declare-fun m!3357107 () Bool)

(assert (=> bm!202767 m!3357107))

(declare-fun m!3357109 () Bool)

(assert (=> bm!202765 m!3357109))

(declare-fun m!3357111 () Bool)

(assert (=> bm!202769 m!3357111))

(assert (=> bm!202640 d!847618))

(assert (=> d!847412 d!847484))

(assert (=> d!847412 d!847474))

(assert (=> bm!202663 d!847478))

(declare-fun d!847620 () Bool)

(assert (=> d!847620 (= (isEmpty!19419 (tail!4929 s!11993)) ((_ is Nil!35134) (tail!4929 s!11993)))))

(assert (=> b!3009318 d!847620))

(assert (=> b!3009318 d!847514))

(assert (=> b!3009723 d!847458))

(declare-fun d!847622 () Bool)

(assert (=> d!847622 true))

(assert (=> d!847622 true))

(declare-fun res!1240593 () Bool)

(assert (=> d!847622 (= (choose!17872 lambda!112587) res!1240593)))

(assert (=> d!847404 d!847622))

(declare-fun b!3010263 () Bool)

(declare-fun e!1890164 () Bool)

(declare-fun e!1890166 () Bool)

(assert (=> b!3010263 (= e!1890164 e!1890166)))

(declare-fun res!1240595 () Bool)

(assert (=> b!3010263 (= res!1240595 (not (nullable!3046 (reg!9722 (ite c!495723 (regTwo!19299 r!17423) (regOne!19298 r!17423))))))))

(assert (=> b!3010263 (=> (not res!1240595) (not e!1890166))))

(declare-fun b!3010264 () Bool)

(declare-fun call!202777 () Bool)

(assert (=> b!3010264 (= e!1890166 call!202777)))

(declare-fun b!3010265 () Bool)

(declare-fun e!1890167 () Bool)

(declare-fun call!202778 () Bool)

(assert (=> b!3010265 (= e!1890167 call!202778)))

(declare-fun d!847624 () Bool)

(declare-fun res!1240596 () Bool)

(declare-fun e!1890163 () Bool)

(assert (=> d!847624 (=> res!1240596 e!1890163)))

(assert (=> d!847624 (= res!1240596 ((_ is ElementMatch!9393) (ite c!495723 (regTwo!19299 r!17423) (regOne!19298 r!17423))))))

(assert (=> d!847624 (= (validRegex!4126 (ite c!495723 (regTwo!19299 r!17423) (regOne!19298 r!17423))) e!1890163)))

(declare-fun b!3010266 () Bool)

(declare-fun res!1240598 () Bool)

(declare-fun e!1890161 () Bool)

(assert (=> b!3010266 (=> (not res!1240598) (not e!1890161))))

(assert (=> b!3010266 (= res!1240598 call!202778)))

(declare-fun e!1890162 () Bool)

(assert (=> b!3010266 (= e!1890162 e!1890161)))

(declare-fun call!202779 () Bool)

(declare-fun c!495886 () Bool)

(declare-fun bm!202772 () Bool)

(assert (=> bm!202772 (= call!202779 (validRegex!4126 (ite c!495886 (regTwo!19299 (ite c!495723 (regTwo!19299 r!17423) (regOne!19298 r!17423))) (regOne!19298 (ite c!495723 (regTwo!19299 r!17423) (regOne!19298 r!17423))))))))

(declare-fun b!3010267 () Bool)

(assert (=> b!3010267 (= e!1890161 call!202779)))

(declare-fun b!3010268 () Bool)

(declare-fun e!1890165 () Bool)

(assert (=> b!3010268 (= e!1890165 e!1890167)))

(declare-fun res!1240594 () Bool)

(assert (=> b!3010268 (=> (not res!1240594) (not e!1890167))))

(assert (=> b!3010268 (= res!1240594 call!202779)))

(declare-fun b!3010269 () Bool)

(assert (=> b!3010269 (= e!1890164 e!1890162)))

(assert (=> b!3010269 (= c!495886 ((_ is Union!9393) (ite c!495723 (regTwo!19299 r!17423) (regOne!19298 r!17423))))))

(declare-fun bm!202773 () Bool)

(assert (=> bm!202773 (= call!202778 call!202777)))

(declare-fun b!3010270 () Bool)

(declare-fun res!1240597 () Bool)

(assert (=> b!3010270 (=> res!1240597 e!1890165)))

(assert (=> b!3010270 (= res!1240597 (not ((_ is Concat!14714) (ite c!495723 (regTwo!19299 r!17423) (regOne!19298 r!17423)))))))

(assert (=> b!3010270 (= e!1890162 e!1890165)))

(declare-fun b!3010271 () Bool)

(assert (=> b!3010271 (= e!1890163 e!1890164)))

(declare-fun c!495887 () Bool)

(assert (=> b!3010271 (= c!495887 ((_ is Star!9393) (ite c!495723 (regTwo!19299 r!17423) (regOne!19298 r!17423))))))

(declare-fun bm!202774 () Bool)

(assert (=> bm!202774 (= call!202777 (validRegex!4126 (ite c!495887 (reg!9722 (ite c!495723 (regTwo!19299 r!17423) (regOne!19298 r!17423))) (ite c!495886 (regOne!19299 (ite c!495723 (regTwo!19299 r!17423) (regOne!19298 r!17423))) (regTwo!19298 (ite c!495723 (regTwo!19299 r!17423) (regOne!19298 r!17423)))))))))

(assert (= (and d!847624 (not res!1240596)) b!3010271))

(assert (= (and b!3010271 c!495887) b!3010263))

(assert (= (and b!3010271 (not c!495887)) b!3010269))

(assert (= (and b!3010263 res!1240595) b!3010264))

(assert (= (and b!3010269 c!495886) b!3010266))

(assert (= (and b!3010269 (not c!495886)) b!3010270))

(assert (= (and b!3010266 res!1240598) b!3010267))

(assert (= (and b!3010270 (not res!1240597)) b!3010268))

(assert (= (and b!3010268 res!1240594) b!3010265))

(assert (= (or b!3010266 b!3010265) bm!202773))

(assert (= (or b!3010267 b!3010268) bm!202772))

(assert (= (or b!3010264 bm!202773) bm!202774))

(declare-fun m!3357113 () Bool)

(assert (=> b!3010263 m!3357113))

(declare-fun m!3357115 () Bool)

(assert (=> bm!202772 m!3357115))

(declare-fun m!3357117 () Bool)

(assert (=> bm!202774 m!3357117))

(assert (=> bm!202658 d!847624))

(declare-fun b!3010280 () Bool)

(declare-fun e!1890173 () List!35258)

(assert (=> b!3010280 (= e!1890173 (_2!20172 (get!10936 lt!1043795)))))

(declare-fun d!847626 () Bool)

(declare-fun e!1890172 () Bool)

(assert (=> d!847626 e!1890172))

(declare-fun res!1240604 () Bool)

(assert (=> d!847626 (=> (not res!1240604) (not e!1890172))))

(declare-fun lt!1043862 () List!35258)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4786 (List!35258) (InoxSet C!18972))

(assert (=> d!847626 (= res!1240604 (= (content!4786 lt!1043862) ((_ map or) (content!4786 (_1!20172 (get!10936 lt!1043795))) (content!4786 (_2!20172 (get!10936 lt!1043795))))))))

(assert (=> d!847626 (= lt!1043862 e!1890173)))

(declare-fun c!495890 () Bool)

(assert (=> d!847626 (= c!495890 ((_ is Nil!35134) (_1!20172 (get!10936 lt!1043795))))))

(assert (=> d!847626 (= (++!8419 (_1!20172 (get!10936 lt!1043795)) (_2!20172 (get!10936 lt!1043795))) lt!1043862)))

(declare-fun b!3010281 () Bool)

(assert (=> b!3010281 (= e!1890173 (Cons!35134 (h!40554 (_1!20172 (get!10936 lt!1043795))) (++!8419 (t!234323 (_1!20172 (get!10936 lt!1043795))) (_2!20172 (get!10936 lt!1043795)))))))

(declare-fun b!3010282 () Bool)

(declare-fun res!1240603 () Bool)

(assert (=> b!3010282 (=> (not res!1240603) (not e!1890172))))

(assert (=> b!3010282 (= res!1240603 (= (size!26523 lt!1043862) (+ (size!26523 (_1!20172 (get!10936 lt!1043795))) (size!26523 (_2!20172 (get!10936 lt!1043795))))))))

(declare-fun b!3010283 () Bool)

(assert (=> b!3010283 (= e!1890172 (or (not (= (_2!20172 (get!10936 lt!1043795)) Nil!35134)) (= lt!1043862 (_1!20172 (get!10936 lt!1043795)))))))

(assert (= (and d!847626 c!495890) b!3010280))

(assert (= (and d!847626 (not c!495890)) b!3010281))

(assert (= (and d!847626 res!1240604) b!3010282))

(assert (= (and b!3010282 res!1240603) b!3010283))

(declare-fun m!3357119 () Bool)

(assert (=> d!847626 m!3357119))

(declare-fun m!3357121 () Bool)

(assert (=> d!847626 m!3357121))

(declare-fun m!3357123 () Bool)

(assert (=> d!847626 m!3357123))

(declare-fun m!3357125 () Bool)

(assert (=> b!3010281 m!3357125))

(declare-fun m!3357127 () Bool)

(assert (=> b!3010282 m!3357127))

(declare-fun m!3357129 () Bool)

(assert (=> b!3010282 m!3357129))

(declare-fun m!3357131 () Bool)

(assert (=> b!3010282 m!3357131))

(assert (=> b!3009625 d!847626))

(assert (=> b!3009625 d!847584))

(assert (=> b!3009314 d!847620))

(assert (=> b!3009314 d!847514))

(assert (=> d!847352 d!847428))

(assert (=> d!847352 d!847426))

(assert (=> b!3009669 d!847450))

(assert (=> b!3009617 d!847566))

(assert (=> b!3009333 d!847494))

(declare-fun b!3010288 () Bool)

(declare-fun e!1890179 () Bool)

(declare-fun lt!1043863 () Bool)

(assert (=> b!3010288 (= e!1890179 (not lt!1043863))))

(declare-fun b!3010289 () Bool)

(declare-fun res!1240616 () Bool)

(declare-fun e!1890181 () Bool)

(assert (=> b!3010289 (=> res!1240616 e!1890181)))

(declare-fun e!1890177 () Bool)

(assert (=> b!3010289 (= res!1240616 e!1890177)))

(declare-fun res!1240614 () Bool)

(assert (=> b!3010289 (=> (not res!1240614) (not e!1890177))))

(assert (=> b!3010289 (= res!1240614 lt!1043863)))

(declare-fun d!847628 () Bool)

(declare-fun e!1890176 () Bool)

(assert (=> d!847628 e!1890176))

(declare-fun c!495891 () Bool)

(assert (=> d!847628 (= c!495891 ((_ is EmptyExpr!9393) (derivativeStep!2644 lt!1043689 (head!6703 (_2!20172 lt!1043681)))))))

(declare-fun e!1890178 () Bool)

(assert (=> d!847628 (= lt!1043863 e!1890178)))

(declare-fun c!495892 () Bool)

(assert (=> d!847628 (= c!495892 (isEmpty!19419 (tail!4929 (_2!20172 lt!1043681))))))

(assert (=> d!847628 (validRegex!4126 (derivativeStep!2644 lt!1043689 (head!6703 (_2!20172 lt!1043681))))))

(assert (=> d!847628 (= (matchR!4275 (derivativeStep!2644 lt!1043689 (head!6703 (_2!20172 lt!1043681))) (tail!4929 (_2!20172 lt!1043681))) lt!1043863)))

(declare-fun bm!202775 () Bool)

(declare-fun call!202780 () Bool)

(assert (=> bm!202775 (= call!202780 (isEmpty!19419 (tail!4929 (_2!20172 lt!1043681))))))

(declare-fun b!3010290 () Bool)

(declare-fun e!1890180 () Bool)

(declare-fun e!1890182 () Bool)

(assert (=> b!3010290 (= e!1890180 e!1890182)))

(declare-fun res!1240615 () Bool)

(assert (=> b!3010290 (=> res!1240615 e!1890182)))

(assert (=> b!3010290 (= res!1240615 call!202780)))

(declare-fun b!3010291 () Bool)

(declare-fun res!1240610 () Bool)

(assert (=> b!3010291 (=> res!1240610 e!1890181)))

(assert (=> b!3010291 (= res!1240610 (not ((_ is ElementMatch!9393) (derivativeStep!2644 lt!1043689 (head!6703 (_2!20172 lt!1043681))))))))

(assert (=> b!3010291 (= e!1890179 e!1890181)))

(declare-fun b!3010292 () Bool)

(assert (=> b!3010292 (= e!1890176 e!1890179)))

(declare-fun c!495893 () Bool)

(assert (=> b!3010292 (= c!495893 ((_ is EmptyLang!9393) (derivativeStep!2644 lt!1043689 (head!6703 (_2!20172 lt!1043681)))))))

(declare-fun b!3010293 () Bool)

(assert (=> b!3010293 (= e!1890177 (= (head!6703 (tail!4929 (_2!20172 lt!1043681))) (c!495525 (derivativeStep!2644 lt!1043689 (head!6703 (_2!20172 lt!1043681))))))))

(declare-fun b!3010294 () Bool)

(assert (=> b!3010294 (= e!1890178 (nullable!3046 (derivativeStep!2644 lt!1043689 (head!6703 (_2!20172 lt!1043681)))))))

(declare-fun b!3010295 () Bool)

(declare-fun res!1240613 () Bool)

(assert (=> b!3010295 (=> (not res!1240613) (not e!1890177))))

(assert (=> b!3010295 (= res!1240613 (isEmpty!19419 (tail!4929 (tail!4929 (_2!20172 lt!1043681)))))))

(declare-fun b!3010296 () Bool)

(assert (=> b!3010296 (= e!1890182 (not (= (head!6703 (tail!4929 (_2!20172 lt!1043681))) (c!495525 (derivativeStep!2644 lt!1043689 (head!6703 (_2!20172 lt!1043681)))))))))

(declare-fun b!3010297 () Bool)

(assert (=> b!3010297 (= e!1890178 (matchR!4275 (derivativeStep!2644 (derivativeStep!2644 lt!1043689 (head!6703 (_2!20172 lt!1043681))) (head!6703 (tail!4929 (_2!20172 lt!1043681)))) (tail!4929 (tail!4929 (_2!20172 lt!1043681)))))))

(declare-fun b!3010298 () Bool)

(declare-fun res!1240611 () Bool)

(assert (=> b!3010298 (=> (not res!1240611) (not e!1890177))))

(assert (=> b!3010298 (= res!1240611 (not call!202780))))

(declare-fun b!3010299 () Bool)

(declare-fun res!1240609 () Bool)

(assert (=> b!3010299 (=> res!1240609 e!1890182)))

(assert (=> b!3010299 (= res!1240609 (not (isEmpty!19419 (tail!4929 (tail!4929 (_2!20172 lt!1043681))))))))

(declare-fun b!3010300 () Bool)

(assert (=> b!3010300 (= e!1890176 (= lt!1043863 call!202780))))

(declare-fun b!3010301 () Bool)

(assert (=> b!3010301 (= e!1890181 e!1890180)))

(declare-fun res!1240612 () Bool)

(assert (=> b!3010301 (=> (not res!1240612) (not e!1890180))))

(assert (=> b!3010301 (= res!1240612 (not lt!1043863))))

(assert (= (and d!847628 c!495892) b!3010294))

(assert (= (and d!847628 (not c!495892)) b!3010297))

(assert (= (and d!847628 c!495891) b!3010300))

(assert (= (and d!847628 (not c!495891)) b!3010292))

(assert (= (and b!3010292 c!495893) b!3010288))

(assert (= (and b!3010292 (not c!495893)) b!3010291))

(assert (= (and b!3010291 (not res!1240610)) b!3010289))

(assert (= (and b!3010289 res!1240614) b!3010298))

(assert (= (and b!3010298 res!1240611) b!3010295))

(assert (= (and b!3010295 res!1240613) b!3010293))

(assert (= (and b!3010289 (not res!1240616)) b!3010301))

(assert (= (and b!3010301 res!1240612) b!3010290))

(assert (= (and b!3010290 (not res!1240615)) b!3010299))

(assert (= (and b!3010299 (not res!1240609)) b!3010296))

(assert (= (or b!3010300 b!3010290 b!3010298) bm!202775))

(assert (=> b!3010293 m!3356639))

(assert (=> b!3010293 m!3356785))

(assert (=> b!3010297 m!3356639))

(assert (=> b!3010297 m!3356785))

(assert (=> b!3010297 m!3356717))

(assert (=> b!3010297 m!3356785))

(declare-fun m!3357133 () Bool)

(assert (=> b!3010297 m!3357133))

(assert (=> b!3010297 m!3356639))

(assert (=> b!3010297 m!3356789))

(assert (=> b!3010297 m!3357133))

(assert (=> b!3010297 m!3356789))

(declare-fun m!3357135 () Bool)

(assert (=> b!3010297 m!3357135))

(assert (=> b!3010296 m!3356639))

(assert (=> b!3010296 m!3356785))

(assert (=> b!3010294 m!3356717))

(declare-fun m!3357137 () Bool)

(assert (=> b!3010294 m!3357137))

(assert (=> b!3010295 m!3356639))

(assert (=> b!3010295 m!3356789))

(assert (=> b!3010295 m!3356789))

(assert (=> b!3010295 m!3356795))

(assert (=> b!3010299 m!3356639))

(assert (=> b!3010299 m!3356789))

(assert (=> b!3010299 m!3356789))

(assert (=> b!3010299 m!3356795))

(assert (=> bm!202775 m!3356639))

(assert (=> bm!202775 m!3356643))

(assert (=> d!847628 m!3356639))

(assert (=> d!847628 m!3356643))

(assert (=> d!847628 m!3356717))

(declare-fun m!3357139 () Bool)

(assert (=> d!847628 m!3357139))

(assert (=> b!3009673 d!847628))

(declare-fun bm!202776 () Bool)

(declare-fun call!202781 () Regex!9393)

(declare-fun call!202784 () Regex!9393)

(assert (=> bm!202776 (= call!202781 call!202784)))

(declare-fun b!3010302 () Bool)

(declare-fun c!495897 () Bool)

(assert (=> b!3010302 (= c!495897 (nullable!3046 (regOne!19298 lt!1043689)))))

(declare-fun e!1890185 () Regex!9393)

(declare-fun e!1890183 () Regex!9393)

(assert (=> b!3010302 (= e!1890185 e!1890183)))

(declare-fun c!495894 () Bool)

(declare-fun bm!202777 () Bool)

(declare-fun call!202783 () Regex!9393)

(declare-fun c!495896 () Bool)

(assert (=> bm!202777 (= call!202783 (derivativeStep!2644 (ite c!495894 (regTwo!19299 lt!1043689) (ite c!495896 (reg!9722 lt!1043689) (regOne!19298 lt!1043689))) (head!6703 (_2!20172 lt!1043681))))))

(declare-fun b!3010303 () Bool)

(declare-fun e!1890187 () Regex!9393)

(declare-fun call!202782 () Regex!9393)

(assert (=> b!3010303 (= e!1890187 (Union!9393 call!202782 call!202783))))

(declare-fun b!3010304 () Bool)

(assert (=> b!3010304 (= e!1890183 (Union!9393 (Concat!14714 call!202781 (regTwo!19298 lt!1043689)) call!202782))))

(declare-fun b!3010305 () Bool)

(declare-fun e!1890184 () Regex!9393)

(assert (=> b!3010305 (= e!1890184 EmptyLang!9393)))

(declare-fun bm!202778 () Bool)

(assert (=> bm!202778 (= call!202782 (derivativeStep!2644 (ite c!495894 (regOne!19299 lt!1043689) (regTwo!19298 lt!1043689)) (head!6703 (_2!20172 lt!1043681))))))

(declare-fun b!3010306 () Bool)

(assert (=> b!3010306 (= e!1890185 (Concat!14714 call!202784 lt!1043689))))

(declare-fun b!3010307 () Bool)

(declare-fun e!1890186 () Regex!9393)

(assert (=> b!3010307 (= e!1890184 e!1890186)))

(declare-fun c!495895 () Bool)

(assert (=> b!3010307 (= c!495895 ((_ is ElementMatch!9393) lt!1043689))))

(declare-fun b!3010308 () Bool)

(assert (=> b!3010308 (= e!1890183 (Union!9393 (Concat!14714 call!202781 (regTwo!19298 lt!1043689)) EmptyLang!9393))))

(declare-fun d!847630 () Bool)

(declare-fun lt!1043864 () Regex!9393)

(assert (=> d!847630 (validRegex!4126 lt!1043864)))

(assert (=> d!847630 (= lt!1043864 e!1890184)))

(declare-fun c!495898 () Bool)

(assert (=> d!847630 (= c!495898 (or ((_ is EmptyExpr!9393) lt!1043689) ((_ is EmptyLang!9393) lt!1043689)))))

(assert (=> d!847630 (validRegex!4126 lt!1043689)))

(assert (=> d!847630 (= (derivativeStep!2644 lt!1043689 (head!6703 (_2!20172 lt!1043681))) lt!1043864)))

(declare-fun b!3010309 () Bool)

(assert (=> b!3010309 (= e!1890187 e!1890185)))

(assert (=> b!3010309 (= c!495896 ((_ is Star!9393) lt!1043689))))

(declare-fun bm!202779 () Bool)

(assert (=> bm!202779 (= call!202784 call!202783)))

(declare-fun b!3010310 () Bool)

(assert (=> b!3010310 (= e!1890186 (ite (= (head!6703 (_2!20172 lt!1043681)) (c!495525 lt!1043689)) EmptyExpr!9393 EmptyLang!9393))))

(declare-fun b!3010311 () Bool)

(assert (=> b!3010311 (= c!495894 ((_ is Union!9393) lt!1043689))))

(assert (=> b!3010311 (= e!1890186 e!1890187)))

(assert (= (and d!847630 c!495898) b!3010305))

(assert (= (and d!847630 (not c!495898)) b!3010307))

(assert (= (and b!3010307 c!495895) b!3010310))

(assert (= (and b!3010307 (not c!495895)) b!3010311))

(assert (= (and b!3010311 c!495894) b!3010303))

(assert (= (and b!3010311 (not c!495894)) b!3010309))

(assert (= (and b!3010309 c!495896) b!3010306))

(assert (= (and b!3010309 (not c!495896)) b!3010302))

(assert (= (and b!3010302 c!495897) b!3010304))

(assert (= (and b!3010302 (not c!495897)) b!3010308))

(assert (= (or b!3010304 b!3010308) bm!202776))

(assert (= (or b!3010306 bm!202776) bm!202779))

(assert (= (or b!3010303 bm!202779) bm!202777))

(assert (= (or b!3010303 b!3010304) bm!202778))

(declare-fun m!3357141 () Bool)

(assert (=> b!3010302 m!3357141))

(assert (=> bm!202777 m!3356635))

(declare-fun m!3357143 () Bool)

(assert (=> bm!202777 m!3357143))

(assert (=> bm!202778 m!3356635))

(declare-fun m!3357145 () Bool)

(assert (=> bm!202778 m!3357145))

(declare-fun m!3357147 () Bool)

(assert (=> d!847630 m!3357147))

(assert (=> d!847630 m!3356723))

(assert (=> b!3009673 d!847630))

(assert (=> b!3009673 d!847450))

(assert (=> b!3009673 d!847452))

(declare-fun b!3010312 () Bool)

(declare-fun e!1890189 () List!35258)

(assert (=> b!3010312 (= e!1890189 (t!234323 s!11993))))

(declare-fun d!847632 () Bool)

(declare-fun e!1890188 () Bool)

(assert (=> d!847632 e!1890188))

(declare-fun res!1240618 () Bool)

(assert (=> d!847632 (=> (not res!1240618) (not e!1890188))))

(declare-fun lt!1043865 () List!35258)

(assert (=> d!847632 (= res!1240618 (= (content!4786 lt!1043865) ((_ map or) (content!4786 (++!8419 Nil!35134 (Cons!35134 (h!40554 s!11993) Nil!35134))) (content!4786 (t!234323 s!11993)))))))

(assert (=> d!847632 (= lt!1043865 e!1890189)))

(declare-fun c!495899 () Bool)

(assert (=> d!847632 (= c!495899 ((_ is Nil!35134) (++!8419 Nil!35134 (Cons!35134 (h!40554 s!11993) Nil!35134))))))

(assert (=> d!847632 (= (++!8419 (++!8419 Nil!35134 (Cons!35134 (h!40554 s!11993) Nil!35134)) (t!234323 s!11993)) lt!1043865)))

(declare-fun b!3010313 () Bool)

(assert (=> b!3010313 (= e!1890189 (Cons!35134 (h!40554 (++!8419 Nil!35134 (Cons!35134 (h!40554 s!11993) Nil!35134))) (++!8419 (t!234323 (++!8419 Nil!35134 (Cons!35134 (h!40554 s!11993) Nil!35134))) (t!234323 s!11993))))))

(declare-fun b!3010314 () Bool)

(declare-fun res!1240617 () Bool)

(assert (=> b!3010314 (=> (not res!1240617) (not e!1890188))))

(assert (=> b!3010314 (= res!1240617 (= (size!26523 lt!1043865) (+ (size!26523 (++!8419 Nil!35134 (Cons!35134 (h!40554 s!11993) Nil!35134))) (size!26523 (t!234323 s!11993)))))))

(declare-fun b!3010315 () Bool)

(assert (=> b!3010315 (= e!1890188 (or (not (= (t!234323 s!11993) Nil!35134)) (= lt!1043865 (++!8419 Nil!35134 (Cons!35134 (h!40554 s!11993) Nil!35134)))))))

(assert (= (and d!847632 c!495899) b!3010312))

(assert (= (and d!847632 (not c!495899)) b!3010313))

(assert (= (and d!847632 res!1240618) b!3010314))

(assert (= (and b!3010314 res!1240617) b!3010315))

(declare-fun m!3357149 () Bool)

(assert (=> d!847632 m!3357149))

(assert (=> d!847632 m!3356667))

(declare-fun m!3357151 () Bool)

(assert (=> d!847632 m!3357151))

(declare-fun m!3357153 () Bool)

(assert (=> d!847632 m!3357153))

(declare-fun m!3357155 () Bool)

(assert (=> b!3010313 m!3357155))

(declare-fun m!3357157 () Bool)

(assert (=> b!3010314 m!3357157))

(assert (=> b!3010314 m!3356667))

(declare-fun m!3357159 () Bool)

(assert (=> b!3010314 m!3357159))

(assert (=> b!3010314 m!3356725))

(assert (=> b!3009621 d!847632))

(declare-fun b!3010316 () Bool)

(declare-fun e!1890191 () List!35258)

(assert (=> b!3010316 (= e!1890191 (Cons!35134 (h!40554 s!11993) Nil!35134))))

(declare-fun d!847634 () Bool)

(declare-fun e!1890190 () Bool)

(assert (=> d!847634 e!1890190))

(declare-fun res!1240620 () Bool)

(assert (=> d!847634 (=> (not res!1240620) (not e!1890190))))

(declare-fun lt!1043866 () List!35258)

(assert (=> d!847634 (= res!1240620 (= (content!4786 lt!1043866) ((_ map or) (content!4786 Nil!35134) (content!4786 (Cons!35134 (h!40554 s!11993) Nil!35134)))))))

(assert (=> d!847634 (= lt!1043866 e!1890191)))

(declare-fun c!495900 () Bool)

(assert (=> d!847634 (= c!495900 ((_ is Nil!35134) Nil!35134))))

(assert (=> d!847634 (= (++!8419 Nil!35134 (Cons!35134 (h!40554 s!11993) Nil!35134)) lt!1043866)))

(declare-fun b!3010317 () Bool)

(assert (=> b!3010317 (= e!1890191 (Cons!35134 (h!40554 Nil!35134) (++!8419 (t!234323 Nil!35134) (Cons!35134 (h!40554 s!11993) Nil!35134))))))

(declare-fun b!3010318 () Bool)

(declare-fun res!1240619 () Bool)

(assert (=> b!3010318 (=> (not res!1240619) (not e!1890190))))

(assert (=> b!3010318 (= res!1240619 (= (size!26523 lt!1043866) (+ (size!26523 Nil!35134) (size!26523 (Cons!35134 (h!40554 s!11993) Nil!35134)))))))

(declare-fun b!3010319 () Bool)

(assert (=> b!3010319 (= e!1890190 (or (not (= (Cons!35134 (h!40554 s!11993) Nil!35134) Nil!35134)) (= lt!1043866 Nil!35134)))))

(assert (= (and d!847634 c!495900) b!3010316))

(assert (= (and d!847634 (not c!495900)) b!3010317))

(assert (= (and d!847634 res!1240620) b!3010318))

(assert (= (and b!3010318 res!1240619) b!3010319))

(declare-fun m!3357161 () Bool)

(assert (=> d!847634 m!3357161))

(declare-fun m!3357163 () Bool)

(assert (=> d!847634 m!3357163))

(declare-fun m!3357165 () Bool)

(assert (=> d!847634 m!3357165))

(declare-fun m!3357167 () Bool)

(assert (=> b!3010317 m!3357167))

(declare-fun m!3357169 () Bool)

(assert (=> b!3010318 m!3357169))

(declare-fun m!3357171 () Bool)

(assert (=> b!3010318 m!3357171))

(declare-fun m!3357173 () Bool)

(assert (=> b!3010318 m!3357173))

(assert (=> b!3009621 d!847634))

(declare-fun d!847636 () Bool)

(assert (=> d!847636 (= (++!8419 (++!8419 Nil!35134 (Cons!35134 (h!40554 s!11993) Nil!35134)) (t!234323 s!11993)) s!11993)))

(declare-fun lt!1043870 () Unit!49207)

(declare-fun choose!17877 (List!35258 C!18972 List!35258 List!35258) Unit!49207)

(assert (=> d!847636 (= lt!1043870 (choose!17877 Nil!35134 (h!40554 s!11993) (t!234323 s!11993) s!11993))))

(assert (=> d!847636 (= (++!8419 Nil!35134 (Cons!35134 (h!40554 s!11993) (t!234323 s!11993))) s!11993)))

(assert (=> d!847636 (= (lemmaMoveElementToOtherListKeepsConcatEq!1026 Nil!35134 (h!40554 s!11993) (t!234323 s!11993) s!11993) lt!1043870)))

(declare-fun bs!529366 () Bool)

(assert (= bs!529366 d!847636))

(assert (=> bs!529366 m!3356667))

(assert (=> bs!529366 m!3356667))

(assert (=> bs!529366 m!3356669))

(declare-fun m!3357191 () Bool)

(assert (=> bs!529366 m!3357191))

(declare-fun m!3357193 () Bool)

(assert (=> bs!529366 m!3357193))

(assert (=> b!3009621 d!847636))

(declare-fun b!3010343 () Bool)

(declare-fun e!1890210 () Bool)

(declare-fun lt!1043873 () Option!6772)

(assert (=> b!3010343 (= e!1890210 (not (isDefined!5323 lt!1043873)))))

(declare-fun d!847644 () Bool)

(assert (=> d!847644 e!1890210))

(declare-fun res!1240637 () Bool)

(assert (=> d!847644 (=> res!1240637 e!1890210)))

(declare-fun e!1890209 () Bool)

(assert (=> d!847644 (= res!1240637 e!1890209)))

(declare-fun res!1240638 () Bool)

(assert (=> d!847644 (=> (not res!1240638) (not e!1890209))))

(assert (=> d!847644 (= res!1240638 (isDefined!5323 lt!1043873))))

(declare-fun e!1890206 () Option!6772)

(assert (=> d!847644 (= lt!1043873 e!1890206)))

(declare-fun c!495906 () Bool)

(declare-fun e!1890207 () Bool)

(assert (=> d!847644 (= c!495906 e!1890207)))

(declare-fun res!1240635 () Bool)

(assert (=> d!847644 (=> (not res!1240635) (not e!1890207))))

(assert (=> d!847644 (= res!1240635 (matchR!4275 lt!1043686 (++!8419 Nil!35134 (Cons!35134 (h!40554 s!11993) Nil!35134))))))

(assert (=> d!847644 (validRegex!4126 lt!1043686)))

(assert (=> d!847644 (= (findConcatSeparation!1166 lt!1043686 lt!1043692 (++!8419 Nil!35134 (Cons!35134 (h!40554 s!11993) Nil!35134)) (t!234323 s!11993) s!11993) lt!1043873)))

(declare-fun b!3010344 () Bool)

(assert (=> b!3010344 (= e!1890206 (Some!6771 (tuple2!34081 (++!8419 Nil!35134 (Cons!35134 (h!40554 s!11993) Nil!35134)) (t!234323 s!11993))))))

(declare-fun b!3010345 () Bool)

(assert (=> b!3010345 (= e!1890207 (matchR!4275 lt!1043692 (t!234323 s!11993)))))

(declare-fun b!3010346 () Bool)

(declare-fun res!1240634 () Bool)

(assert (=> b!3010346 (=> (not res!1240634) (not e!1890209))))

(assert (=> b!3010346 (= res!1240634 (matchR!4275 lt!1043692 (_2!20172 (get!10936 lt!1043873))))))

(declare-fun b!3010347 () Bool)

(declare-fun lt!1043872 () Unit!49207)

(declare-fun lt!1043871 () Unit!49207)

(assert (=> b!3010347 (= lt!1043872 lt!1043871)))

(assert (=> b!3010347 (= (++!8419 (++!8419 (++!8419 Nil!35134 (Cons!35134 (h!40554 s!11993) Nil!35134)) (Cons!35134 (h!40554 (t!234323 s!11993)) Nil!35134)) (t!234323 (t!234323 s!11993))) s!11993)))

(assert (=> b!3010347 (= lt!1043871 (lemmaMoveElementToOtherListKeepsConcatEq!1026 (++!8419 Nil!35134 (Cons!35134 (h!40554 s!11993) Nil!35134)) (h!40554 (t!234323 s!11993)) (t!234323 (t!234323 s!11993)) s!11993))))

(declare-fun e!1890208 () Option!6772)

(assert (=> b!3010347 (= e!1890208 (findConcatSeparation!1166 lt!1043686 lt!1043692 (++!8419 (++!8419 Nil!35134 (Cons!35134 (h!40554 s!11993) Nil!35134)) (Cons!35134 (h!40554 (t!234323 s!11993)) Nil!35134)) (t!234323 (t!234323 s!11993)) s!11993))))

(declare-fun b!3010348 () Bool)

(declare-fun res!1240636 () Bool)

(assert (=> b!3010348 (=> (not res!1240636) (not e!1890209))))

(assert (=> b!3010348 (= res!1240636 (matchR!4275 lt!1043686 (_1!20172 (get!10936 lt!1043873))))))

(declare-fun b!3010349 () Bool)

(assert (=> b!3010349 (= e!1890208 None!6771)))

(declare-fun b!3010350 () Bool)

(assert (=> b!3010350 (= e!1890206 e!1890208)))

(declare-fun c!495907 () Bool)

(assert (=> b!3010350 (= c!495907 ((_ is Nil!35134) (t!234323 s!11993)))))

(declare-fun b!3010351 () Bool)

(assert (=> b!3010351 (= e!1890209 (= (++!8419 (_1!20172 (get!10936 lt!1043873)) (_2!20172 (get!10936 lt!1043873))) s!11993))))

(assert (= (and d!847644 res!1240635) b!3010345))

(assert (= (and d!847644 c!495906) b!3010344))

(assert (= (and d!847644 (not c!495906)) b!3010350))

(assert (= (and b!3010350 c!495907) b!3010349))

(assert (= (and b!3010350 (not c!495907)) b!3010347))

(assert (= (and d!847644 res!1240638) b!3010348))

(assert (= (and b!3010348 res!1240636) b!3010346))

(assert (= (and b!3010346 res!1240634) b!3010351))

(assert (= (and d!847644 (not res!1240637)) b!3010343))

(declare-fun m!3357207 () Bool)

(assert (=> b!3010351 m!3357207))

(declare-fun m!3357209 () Bool)

(assert (=> b!3010351 m!3357209))

(declare-fun m!3357213 () Bool)

(assert (=> b!3010343 m!3357213))

(assert (=> b!3010347 m!3356667))

(declare-fun m!3357217 () Bool)

(assert (=> b!3010347 m!3357217))

(assert (=> b!3010347 m!3357217))

(declare-fun m!3357221 () Bool)

(assert (=> b!3010347 m!3357221))

(assert (=> b!3010347 m!3356667))

(declare-fun m!3357225 () Bool)

(assert (=> b!3010347 m!3357225))

(assert (=> b!3010347 m!3357217))

(declare-fun m!3357227 () Bool)

(assert (=> b!3010347 m!3357227))

(declare-fun m!3357229 () Bool)

(assert (=> b!3010345 m!3357229))

(assert (=> b!3010346 m!3357207))

(declare-fun m!3357231 () Bool)

(assert (=> b!3010346 m!3357231))

(assert (=> d!847644 m!3357213))

(assert (=> d!847644 m!3356667))

(declare-fun m!3357233 () Bool)

(assert (=> d!847644 m!3357233))

(assert (=> d!847644 m!3356657))

(assert (=> b!3010348 m!3357207))

(declare-fun m!3357235 () Bool)

(assert (=> b!3010348 m!3357235))

(assert (=> b!3009621 d!847644))

(declare-fun b!3010376 () Bool)

(declare-fun c!495919 () Bool)

(declare-fun e!1890226 () Bool)

(assert (=> b!3010376 (= c!495919 e!1890226)))

(declare-fun res!1240647 () Bool)

(assert (=> b!3010376 (=> res!1240647 e!1890226)))

(declare-fun call!202798 () Bool)

(assert (=> b!3010376 (= res!1240647 call!202798)))

(declare-fun lt!1043881 () Regex!9393)

(declare-fun call!202799 () Regex!9393)

(assert (=> b!3010376 (= lt!1043881 call!202799)))

(declare-fun e!1890235 () Regex!9393)

(declare-fun e!1890227 () Regex!9393)

(assert (=> b!3010376 (= e!1890235 e!1890227)))

(declare-fun b!3010377 () Bool)

(declare-fun e!1890223 () Regex!9393)

(assert (=> b!3010377 (= e!1890223 (ite c!495714 (regOne!19299 lt!1043690) (regTwo!19298 lt!1043690)))))

(declare-fun b!3010378 () Bool)

(declare-fun e!1890230 () Regex!9393)

(assert (=> b!3010378 (= e!1890230 e!1890223)))

(declare-fun c!495921 () Bool)

(assert (=> b!3010378 (= c!495921 ((_ is ElementMatch!9393) (ite c!495714 (regOne!19299 lt!1043690) (regTwo!19298 lt!1043690))))))

(declare-fun b!3010379 () Bool)

(declare-fun c!495917 () Bool)

(declare-fun call!202796 () Bool)

(assert (=> b!3010379 (= c!495917 call!202796)))

(declare-fun e!1890225 () Regex!9393)

(declare-fun e!1890236 () Regex!9393)

(assert (=> b!3010379 (= e!1890225 e!1890236)))

(declare-fun b!3010380 () Bool)

(declare-fun c!495922 () Bool)

(assert (=> b!3010380 (= c!495922 ((_ is Union!9393) (ite c!495714 (regOne!19299 lt!1043690) (regTwo!19298 lt!1043690))))))

(declare-fun e!1890228 () Regex!9393)

(assert (=> b!3010380 (= e!1890235 e!1890228)))

(declare-fun b!3010381 () Bool)

(assert (=> b!3010381 (= e!1890227 (Star!9393 lt!1043881))))

(declare-fun b!3010382 () Bool)

(declare-fun e!1890233 () Regex!9393)

(assert (=> b!3010382 (= e!1890233 EmptyExpr!9393)))

(declare-fun b!3010383 () Bool)

(declare-fun e!1890224 () Bool)

(assert (=> b!3010383 (= e!1890224 call!202796)))

(declare-fun e!1890231 () Bool)

(declare-fun b!3010384 () Bool)

(declare-fun lt!1043879 () Regex!9393)

(assert (=> b!3010384 (= e!1890231 (= (nullable!3046 lt!1043879) (nullable!3046 (ite c!495714 (regOne!19299 lt!1043690) (regTwo!19298 lt!1043690)))))))

(declare-fun b!3010385 () Bool)

(assert (=> b!3010385 (= e!1890233 e!1890235)))

(declare-fun c!495926 () Bool)

(assert (=> b!3010385 (= c!495926 ((_ is Star!9393) (ite c!495714 (regOne!19299 lt!1043690) (regTwo!19298 lt!1043690))))))

(declare-fun b!3010386 () Bool)

(declare-fun call!202795 () Bool)

(assert (=> b!3010386 (= e!1890226 call!202795)))

(declare-fun b!3010387 () Bool)

(declare-fun lt!1043878 () Regex!9393)

(declare-fun lt!1043880 () Regex!9393)

(assert (=> b!3010387 (= e!1890236 (Union!9393 lt!1043878 lt!1043880))))

(declare-fun d!847650 () Bool)

(assert (=> d!847650 e!1890231))

(declare-fun res!1240648 () Bool)

(assert (=> d!847650 (=> (not res!1240648) (not e!1890231))))

(assert (=> d!847650 (= res!1240648 (validRegex!4126 lt!1043879))))

(assert (=> d!847650 (= lt!1043879 e!1890230)))

(declare-fun c!495916 () Bool)

(assert (=> d!847650 (= c!495916 ((_ is EmptyLang!9393) (ite c!495714 (regOne!19299 lt!1043690) (regTwo!19298 lt!1043690))))))

(assert (=> d!847650 (validRegex!4126 (ite c!495714 (regOne!19299 lt!1043690) (regTwo!19298 lt!1043690)))))

(assert (=> d!847650 (= (simplify!384 (ite c!495714 (regOne!19299 lt!1043690) (regTwo!19298 lt!1043690))) lt!1043879)))

(declare-fun b!3010388 () Bool)

(assert (=> b!3010388 (= e!1890236 lt!1043878)))

(declare-fun b!3010389 () Bool)

(declare-fun c!495920 () Bool)

(declare-fun lt!1043876 () Regex!9393)

(assert (=> b!3010389 (= c!495920 (isEmptyExpr!489 lt!1043876))))

(declare-fun e!1890229 () Regex!9393)

(declare-fun e!1890232 () Regex!9393)

(assert (=> b!3010389 (= e!1890229 e!1890232)))

(declare-fun bm!202789 () Bool)

(declare-fun lt!1043877 () Regex!9393)

(assert (=> bm!202789 (= call!202795 (isEmptyExpr!489 (ite c!495926 lt!1043881 lt!1043877)))))

(declare-fun bm!202790 () Bool)

(declare-fun call!202794 () Regex!9393)

(assert (=> bm!202790 (= call!202794 call!202799)))

(declare-fun b!3010390 () Bool)

(assert (=> b!3010390 (= e!1890228 e!1890229)))

(assert (=> b!3010390 (= lt!1043876 call!202794)))

(declare-fun call!202797 () Regex!9393)

(assert (=> b!3010390 (= lt!1043877 call!202797)))

(declare-fun res!1240649 () Bool)

(declare-fun call!202800 () Bool)

(assert (=> b!3010390 (= res!1240649 call!202800)))

(assert (=> b!3010390 (=> res!1240649 e!1890224)))

(declare-fun c!495923 () Bool)

(assert (=> b!3010390 (= c!495923 e!1890224)))

(declare-fun bm!202791 () Bool)

(assert (=> bm!202791 (= call!202796 (isEmptyLang!483 (ite c!495922 lt!1043880 lt!1043877)))))

(declare-fun b!3010391 () Bool)

(assert (=> b!3010391 (= e!1890232 lt!1043877)))

(declare-fun bm!202792 () Bool)

(assert (=> bm!202792 (= call!202797 (simplify!384 (ite c!495922 (regOne!19299 (ite c!495714 (regOne!19299 lt!1043690) (regTwo!19298 lt!1043690))) (regTwo!19298 (ite c!495714 (regOne!19299 lt!1043690) (regTwo!19298 lt!1043690))))))))

(declare-fun b!3010392 () Bool)

(assert (=> b!3010392 (= e!1890228 e!1890225)))

(assert (=> b!3010392 (= lt!1043878 call!202797)))

(assert (=> b!3010392 (= lt!1043880 call!202794)))

(declare-fun c!495924 () Bool)

(assert (=> b!3010392 (= c!495924 call!202800)))

(declare-fun bm!202793 () Bool)

(assert (=> bm!202793 (= call!202798 (isEmptyLang!483 (ite c!495926 lt!1043881 (ite c!495922 lt!1043878 lt!1043876))))))

(declare-fun b!3010393 () Bool)

(assert (=> b!3010393 (= e!1890225 lt!1043880)))

(declare-fun b!3010394 () Bool)

(assert (=> b!3010394 (= e!1890229 EmptyLang!9393)))

(declare-fun b!3010395 () Bool)

(assert (=> b!3010395 (= e!1890227 EmptyExpr!9393)))

(declare-fun b!3010396 () Bool)

(declare-fun e!1890234 () Regex!9393)

(assert (=> b!3010396 (= e!1890234 lt!1043876)))

(declare-fun b!3010397 () Bool)

(assert (=> b!3010397 (= e!1890232 e!1890234)))

(declare-fun c!495918 () Bool)

(assert (=> b!3010397 (= c!495918 call!202795)))

(declare-fun b!3010398 () Bool)

(assert (=> b!3010398 (= e!1890234 (Concat!14714 lt!1043876 lt!1043877))))

(declare-fun bm!202794 () Bool)

(assert (=> bm!202794 (= call!202800 call!202798)))

(declare-fun b!3010399 () Bool)

(assert (=> b!3010399 (= e!1890230 EmptyLang!9393)))

(declare-fun bm!202795 () Bool)

(assert (=> bm!202795 (= call!202799 (simplify!384 (ite c!495926 (reg!9722 (ite c!495714 (regOne!19299 lt!1043690) (regTwo!19298 lt!1043690))) (ite c!495922 (regTwo!19299 (ite c!495714 (regOne!19299 lt!1043690) (regTwo!19298 lt!1043690))) (regOne!19298 (ite c!495714 (regOne!19299 lt!1043690) (regTwo!19298 lt!1043690)))))))))

(declare-fun b!3010400 () Bool)

(declare-fun c!495925 () Bool)

(assert (=> b!3010400 (= c!495925 ((_ is EmptyExpr!9393) (ite c!495714 (regOne!19299 lt!1043690) (regTwo!19298 lt!1043690))))))

(assert (=> b!3010400 (= e!1890223 e!1890233)))

(assert (= (and d!847650 c!495916) b!3010399))

(assert (= (and d!847650 (not c!495916)) b!3010378))

(assert (= (and b!3010378 c!495921) b!3010377))

(assert (= (and b!3010378 (not c!495921)) b!3010400))

(assert (= (and b!3010400 c!495925) b!3010382))

(assert (= (and b!3010400 (not c!495925)) b!3010385))

(assert (= (and b!3010385 c!495926) b!3010376))

(assert (= (and b!3010385 (not c!495926)) b!3010380))

(assert (= (and b!3010376 (not res!1240647)) b!3010386))

(assert (= (and b!3010376 c!495919) b!3010395))

(assert (= (and b!3010376 (not c!495919)) b!3010381))

(assert (= (and b!3010380 c!495922) b!3010392))

(assert (= (and b!3010380 (not c!495922)) b!3010390))

(assert (= (and b!3010392 c!495924) b!3010393))

(assert (= (and b!3010392 (not c!495924)) b!3010379))

(assert (= (and b!3010379 c!495917) b!3010388))

(assert (= (and b!3010379 (not c!495917)) b!3010387))

(assert (= (and b!3010390 (not res!1240649)) b!3010383))

(assert (= (and b!3010390 c!495923) b!3010394))

(assert (= (and b!3010390 (not c!495923)) b!3010389))

(assert (= (and b!3010389 c!495920) b!3010391))

(assert (= (and b!3010389 (not c!495920)) b!3010397))

(assert (= (and b!3010397 c!495918) b!3010396))

(assert (= (and b!3010397 (not c!495918)) b!3010398))

(assert (= (or b!3010392 b!3010390) bm!202792))

(assert (= (or b!3010392 b!3010390) bm!202790))

(assert (= (or b!3010392 b!3010390) bm!202794))

(assert (= (or b!3010379 b!3010383) bm!202791))

(assert (= (or b!3010386 b!3010397) bm!202789))

(assert (= (or b!3010376 bm!202790) bm!202795))

(assert (= (or b!3010376 bm!202794) bm!202793))

(assert (= (and d!847650 res!1240648) b!3010384))

(declare-fun m!3357249 () Bool)

(assert (=> b!3010389 m!3357249))

(declare-fun m!3357253 () Bool)

(assert (=> bm!202792 m!3357253))

(declare-fun m!3357255 () Bool)

(assert (=> d!847650 m!3357255))

(declare-fun m!3357257 () Bool)

(assert (=> d!847650 m!3357257))

(declare-fun m!3357259 () Bool)

(assert (=> bm!202795 m!3357259))

(declare-fun m!3357261 () Bool)

(assert (=> b!3010384 m!3357261))

(declare-fun m!3357263 () Bool)

(assert (=> b!3010384 m!3357263))

(declare-fun m!3357265 () Bool)

(assert (=> bm!202791 m!3357265))

(declare-fun m!3357267 () Bool)

(assert (=> bm!202789 m!3357267))

(declare-fun m!3357269 () Bool)

(assert (=> bm!202793 m!3357269))

(assert (=> bm!202648 d!847650))

(declare-fun d!847658 () Bool)

(declare-fun lt!1043882 () Int)

(assert (=> d!847658 (>= lt!1043882 0)))

(declare-fun e!1890251 () Int)

(assert (=> d!847658 (= lt!1043882 e!1890251)))

(declare-fun c!495931 () Bool)

(assert (=> d!847658 (= c!495931 ((_ is Nil!35134) (t!234323 (_2!20172 lt!1043681))))))

(assert (=> d!847658 (= (size!26523 (t!234323 (_2!20172 lt!1043681))) lt!1043882)))

(declare-fun b!3010419 () Bool)

(assert (=> b!3010419 (= e!1890251 0)))

(declare-fun b!3010420 () Bool)

(assert (=> b!3010420 (= e!1890251 (+ 1 (size!26523 (t!234323 (t!234323 (_2!20172 lt!1043681))))))))

(assert (= (and d!847658 c!495931) b!3010419))

(assert (= (and d!847658 (not c!495931)) b!3010420))

(declare-fun m!3357271 () Bool)

(assert (=> b!3010420 m!3357271))

(assert (=> b!3009635 d!847658))

(declare-fun d!847660 () Bool)

(assert (=> d!847660 (= (isEmptyExpr!489 lt!1043810) ((_ is EmptyExpr!9393) lt!1043810))))

(assert (=> b!3009693 d!847660))

(assert (=> bm!202607 d!847428))

(assert (=> b!3009582 d!847470))

(assert (=> b!3009582 d!847452))

(declare-fun b!3010421 () Bool)

(declare-fun e!1890255 () Bool)

(declare-fun e!1890257 () Bool)

(assert (=> b!3010421 (= e!1890255 e!1890257)))

(declare-fun res!1240661 () Bool)

(assert (=> b!3010421 (= res!1240661 (not (nullable!3046 (reg!9722 (ite c!495724 (reg!9722 r!17423) (ite c!495723 (regOne!19299 r!17423) (regTwo!19298 r!17423)))))))))

(assert (=> b!3010421 (=> (not res!1240661) (not e!1890257))))

(declare-fun b!3010422 () Bool)

(declare-fun call!202807 () Bool)

(assert (=> b!3010422 (= e!1890257 call!202807)))

(declare-fun b!3010423 () Bool)

(declare-fun e!1890258 () Bool)

(declare-fun call!202808 () Bool)

(assert (=> b!3010423 (= e!1890258 call!202808)))

(declare-fun d!847662 () Bool)

(declare-fun res!1240662 () Bool)

(declare-fun e!1890254 () Bool)

(assert (=> d!847662 (=> res!1240662 e!1890254)))

(assert (=> d!847662 (= res!1240662 ((_ is ElementMatch!9393) (ite c!495724 (reg!9722 r!17423) (ite c!495723 (regOne!19299 r!17423) (regTwo!19298 r!17423)))))))

(assert (=> d!847662 (= (validRegex!4126 (ite c!495724 (reg!9722 r!17423) (ite c!495723 (regOne!19299 r!17423) (regTwo!19298 r!17423)))) e!1890254)))

(declare-fun b!3010424 () Bool)

(declare-fun res!1240664 () Bool)

(declare-fun e!1890252 () Bool)

(assert (=> b!3010424 (=> (not res!1240664) (not e!1890252))))

(assert (=> b!3010424 (= res!1240664 call!202808)))

(declare-fun e!1890253 () Bool)

(assert (=> b!3010424 (= e!1890253 e!1890252)))

(declare-fun c!495932 () Bool)

(declare-fun call!202809 () Bool)

(declare-fun bm!202802 () Bool)

(assert (=> bm!202802 (= call!202809 (validRegex!4126 (ite c!495932 (regTwo!19299 (ite c!495724 (reg!9722 r!17423) (ite c!495723 (regOne!19299 r!17423) (regTwo!19298 r!17423)))) (regOne!19298 (ite c!495724 (reg!9722 r!17423) (ite c!495723 (regOne!19299 r!17423) (regTwo!19298 r!17423)))))))))

(declare-fun b!3010425 () Bool)

(assert (=> b!3010425 (= e!1890252 call!202809)))

(declare-fun b!3010426 () Bool)

(declare-fun e!1890256 () Bool)

(assert (=> b!3010426 (= e!1890256 e!1890258)))

(declare-fun res!1240660 () Bool)

(assert (=> b!3010426 (=> (not res!1240660) (not e!1890258))))

(assert (=> b!3010426 (= res!1240660 call!202809)))

(declare-fun b!3010427 () Bool)

(assert (=> b!3010427 (= e!1890255 e!1890253)))

(assert (=> b!3010427 (= c!495932 ((_ is Union!9393) (ite c!495724 (reg!9722 r!17423) (ite c!495723 (regOne!19299 r!17423) (regTwo!19298 r!17423)))))))

(declare-fun bm!202803 () Bool)

(assert (=> bm!202803 (= call!202808 call!202807)))

(declare-fun b!3010428 () Bool)

(declare-fun res!1240663 () Bool)

(assert (=> b!3010428 (=> res!1240663 e!1890256)))

(assert (=> b!3010428 (= res!1240663 (not ((_ is Concat!14714) (ite c!495724 (reg!9722 r!17423) (ite c!495723 (regOne!19299 r!17423) (regTwo!19298 r!17423))))))))

(assert (=> b!3010428 (= e!1890253 e!1890256)))

(declare-fun b!3010429 () Bool)

(assert (=> b!3010429 (= e!1890254 e!1890255)))

(declare-fun c!495933 () Bool)

(assert (=> b!3010429 (= c!495933 ((_ is Star!9393) (ite c!495724 (reg!9722 r!17423) (ite c!495723 (regOne!19299 r!17423) (regTwo!19298 r!17423)))))))

(declare-fun bm!202804 () Bool)

(assert (=> bm!202804 (= call!202807 (validRegex!4126 (ite c!495933 (reg!9722 (ite c!495724 (reg!9722 r!17423) (ite c!495723 (regOne!19299 r!17423) (regTwo!19298 r!17423)))) (ite c!495932 (regOne!19299 (ite c!495724 (reg!9722 r!17423) (ite c!495723 (regOne!19299 r!17423) (regTwo!19298 r!17423)))) (regTwo!19298 (ite c!495724 (reg!9722 r!17423) (ite c!495723 (regOne!19299 r!17423) (regTwo!19298 r!17423))))))))))

(assert (= (and d!847662 (not res!1240662)) b!3010429))

(assert (= (and b!3010429 c!495933) b!3010421))

(assert (= (and b!3010429 (not c!495933)) b!3010427))

(assert (= (and b!3010421 res!1240661) b!3010422))

(assert (= (and b!3010427 c!495932) b!3010424))

(assert (= (and b!3010427 (not c!495932)) b!3010428))

(assert (= (and b!3010424 res!1240664) b!3010425))

(assert (= (and b!3010428 (not res!1240663)) b!3010426))

(assert (= (and b!3010426 res!1240660) b!3010423))

(assert (= (or b!3010424 b!3010423) bm!202803))

(assert (= (or b!3010425 b!3010426) bm!202802))

(assert (= (or b!3010422 bm!202803) bm!202804))

(declare-fun m!3357279 () Bool)

(assert (=> b!3010421 m!3357279))

(declare-fun m!3357281 () Bool)

(assert (=> bm!202802 m!3357281))

(declare-fun m!3357283 () Bool)

(assert (=> bm!202804 m!3357283))

(assert (=> bm!202660 d!847662))

(assert (=> d!847420 d!847484))

(declare-fun b!3010430 () Bool)

(declare-fun e!1890262 () Bool)

(declare-fun e!1890264 () Bool)

(assert (=> b!3010430 (= e!1890262 e!1890264)))

(declare-fun res!1240666 () Bool)

(assert (=> b!3010430 (= res!1240666 (not (nullable!3046 (reg!9722 lt!1043689))))))

(assert (=> b!3010430 (=> (not res!1240666) (not e!1890264))))

(declare-fun b!3010431 () Bool)

(declare-fun call!202810 () Bool)

(assert (=> b!3010431 (= e!1890264 call!202810)))

(declare-fun b!3010432 () Bool)

(declare-fun e!1890265 () Bool)

(declare-fun call!202811 () Bool)

(assert (=> b!3010432 (= e!1890265 call!202811)))

(declare-fun d!847666 () Bool)

(declare-fun res!1240667 () Bool)

(declare-fun e!1890261 () Bool)

(assert (=> d!847666 (=> res!1240667 e!1890261)))

(assert (=> d!847666 (= res!1240667 ((_ is ElementMatch!9393) lt!1043689))))

(assert (=> d!847666 (= (validRegex!4126 lt!1043689) e!1890261)))

(declare-fun b!3010433 () Bool)

(declare-fun res!1240669 () Bool)

(declare-fun e!1890259 () Bool)

(assert (=> b!3010433 (=> (not res!1240669) (not e!1890259))))

(assert (=> b!3010433 (= res!1240669 call!202811)))

(declare-fun e!1890260 () Bool)

(assert (=> b!3010433 (= e!1890260 e!1890259)))

(declare-fun bm!202805 () Bool)

(declare-fun call!202812 () Bool)

(declare-fun c!495934 () Bool)

(assert (=> bm!202805 (= call!202812 (validRegex!4126 (ite c!495934 (regTwo!19299 lt!1043689) (regOne!19298 lt!1043689))))))

(declare-fun b!3010434 () Bool)

(assert (=> b!3010434 (= e!1890259 call!202812)))

(declare-fun b!3010435 () Bool)

(declare-fun e!1890263 () Bool)

(assert (=> b!3010435 (= e!1890263 e!1890265)))

(declare-fun res!1240665 () Bool)

(assert (=> b!3010435 (=> (not res!1240665) (not e!1890265))))

(assert (=> b!3010435 (= res!1240665 call!202812)))

(declare-fun b!3010436 () Bool)

(assert (=> b!3010436 (= e!1890262 e!1890260)))

(assert (=> b!3010436 (= c!495934 ((_ is Union!9393) lt!1043689))))

(declare-fun bm!202806 () Bool)

(assert (=> bm!202806 (= call!202811 call!202810)))

(declare-fun b!3010437 () Bool)

(declare-fun res!1240668 () Bool)

(assert (=> b!3010437 (=> res!1240668 e!1890263)))

(assert (=> b!3010437 (= res!1240668 (not ((_ is Concat!14714) lt!1043689)))))

(assert (=> b!3010437 (= e!1890260 e!1890263)))

(declare-fun b!3010438 () Bool)

(assert (=> b!3010438 (= e!1890261 e!1890262)))

(declare-fun c!495935 () Bool)

(assert (=> b!3010438 (= c!495935 ((_ is Star!9393) lt!1043689))))

(declare-fun bm!202807 () Bool)

(assert (=> bm!202807 (= call!202810 (validRegex!4126 (ite c!495935 (reg!9722 lt!1043689) (ite c!495934 (regOne!19299 lt!1043689) (regTwo!19298 lt!1043689)))))))

(assert (= (and d!847666 (not res!1240667)) b!3010438))

(assert (= (and b!3010438 c!495935) b!3010430))

(assert (= (and b!3010438 (not c!495935)) b!3010436))

(assert (= (and b!3010430 res!1240666) b!3010431))

(assert (= (and b!3010436 c!495934) b!3010433))

(assert (= (and b!3010436 (not c!495934)) b!3010437))

(assert (= (and b!3010433 res!1240669) b!3010434))

(assert (= (and b!3010437 (not res!1240668)) b!3010435))

(assert (= (and b!3010435 res!1240665) b!3010432))

(assert (= (or b!3010433 b!3010432) bm!202806))

(assert (= (or b!3010434 b!3010435) bm!202805))

(assert (= (or b!3010431 bm!202806) bm!202807))

(declare-fun m!3357285 () Bool)

(assert (=> b!3010430 m!3357285))

(declare-fun m!3357287 () Bool)

(assert (=> bm!202805 m!3357287))

(declare-fun m!3357289 () Bool)

(assert (=> bm!202807 m!3357289))

(assert (=> d!847420 d!847666))

(assert (=> b!3009657 d!847442))

(assert (=> b!3009657 d!847444))

(assert (=> b!3009661 d!847442))

(assert (=> b!3009661 d!847444))

(assert (=> d!847434 d!847414))

(declare-fun bs!529368 () Bool)

(declare-fun b!3010441 () Bool)

(assert (= bs!529368 (and b!3010441 d!847408)))

(declare-fun lambda!112643 () Int)

(assert (=> bs!529368 (not (= lambda!112643 lambda!112620))))

(declare-fun bs!529369 () Bool)

(assert (= bs!529369 (and b!3010441 b!3009734)))

(assert (=> bs!529369 (= (and (= (_1!20172 lt!1043681) s!11993) (= (reg!9722 (reg!9722 r!17423)) (reg!9722 lt!1043692)) (= (reg!9722 r!17423) lt!1043692)) (= lambda!112643 lambda!112621))))

(declare-fun bs!529370 () Bool)

(assert (= bs!529370 (and b!3010441 b!3010186)))

(assert (=> bs!529370 (= (and (= (_1!20172 lt!1043681) s!11993) (= (reg!9722 (reg!9722 r!17423)) (reg!9722 (regTwo!19299 lt!1043692))) (= (reg!9722 r!17423) (regTwo!19299 lt!1043692))) (= lambda!112643 lambda!112638))))

(declare-fun bs!529371 () Bool)

(assert (= bs!529371 (and b!3010441 b!3010185)))

(assert (=> bs!529371 (not (= lambda!112643 lambda!112639))))

(declare-fun bs!529372 () Bool)

(assert (= bs!529372 (and b!3010441 b!3008998)))

(assert (=> bs!529372 (= (and (= (_1!20172 lt!1043681) s!11993) (= (reg!9722 (reg!9722 r!17423)) lt!1043686) (= (reg!9722 r!17423) lt!1043692)) (= lambda!112643 lambda!112588))))

(declare-fun bs!529373 () Bool)

(assert (= bs!529373 (and b!3010441 b!3009154)))

(assert (=> bs!529373 (= (and (= (_1!20172 lt!1043681) s!11993) (= (reg!9722 (reg!9722 r!17423)) (reg!9722 r!17423)) (= (reg!9722 r!17423) r!17423)) (= lambda!112643 lambda!112601))))

(assert (=> bs!529372 (not (= lambda!112643 lambda!112587))))

(declare-fun bs!529374 () Bool)

(assert (= bs!529374 (and b!3010441 d!847402)))

(assert (=> bs!529374 (not (= lambda!112643 lambda!112616))))

(declare-fun bs!529375 () Bool)

(assert (= bs!529375 (and b!3010441 d!847534)))

(assert (=> bs!529375 (not (= lambda!112643 lambda!112631))))

(declare-fun bs!529376 () Bool)

(assert (= bs!529376 (and b!3010441 b!3009733)))

(assert (=> bs!529376 (not (= lambda!112643 lambda!112622))))

(declare-fun bs!529377 () Bool)

(assert (= bs!529377 (and b!3010441 b!3010062)))

(assert (=> bs!529377 (= (and (= (_1!20172 lt!1043681) s!11993) (= (reg!9722 (reg!9722 r!17423)) (reg!9722 (regOne!19299 lt!1043692))) (= (reg!9722 r!17423) (regOne!19299 lt!1043692))) (= lambda!112643 lambda!112633))))

(declare-fun bs!529378 () Bool)

(assert (= bs!529378 (and b!3010441 b!3009153)))

(assert (=> bs!529378 (not (= lambda!112643 lambda!112602))))

(assert (=> bs!529374 (= (and (= (_1!20172 lt!1043681) s!11993) (= (reg!9722 (reg!9722 r!17423)) lt!1043686) (= (reg!9722 r!17423) (Star!9393 lt!1043686))) (= lambda!112643 lambda!112617))))

(declare-fun bs!529379 () Bool)

(assert (= bs!529379 (and b!3010441 b!3009923)))

(assert (=> bs!529379 (not (= lambda!112643 lambda!112624))))

(assert (=> bs!529375 (= (and (= (_1!20172 lt!1043681) s!11993) (= (reg!9722 (reg!9722 r!17423)) lt!1043686) (= (reg!9722 r!17423) (Star!9393 lt!1043686))) (= lambda!112643 lambda!112632))))

(declare-fun bs!529380 () Bool)

(assert (= bs!529380 (and b!3010441 b!3009924)))

(assert (=> bs!529380 (= (and (= (_1!20172 lt!1043681) s!11993) (= (reg!9722 (reg!9722 r!17423)) (reg!9722 (regTwo!19299 r!17423))) (= (reg!9722 r!17423) (regTwo!19299 r!17423))) (= lambda!112643 lambda!112623))))

(declare-fun bs!529381 () Bool)

(assert (= bs!529381 (and b!3010441 b!3010061)))

(assert (=> bs!529381 (not (= lambda!112643 lambda!112634))))

(declare-fun bs!529382 () Bool)

(assert (= bs!529382 (and b!3010441 d!847574)))

(assert (=> bs!529382 (not (= lambda!112643 lambda!112637))))

(assert (=> b!3010441 true))

(assert (=> b!3010441 true))

(declare-fun bs!529383 () Bool)

(declare-fun b!3010440 () Bool)

(assert (= bs!529383 (and b!3010440 d!847408)))

(declare-fun lambda!112644 () Int)

(assert (=> bs!529383 (not (= lambda!112644 lambda!112620))))

(declare-fun bs!529384 () Bool)

(assert (= bs!529384 (and b!3010440 b!3009734)))

(assert (=> bs!529384 (not (= lambda!112644 lambda!112621))))

(declare-fun bs!529385 () Bool)

(assert (= bs!529385 (and b!3010440 b!3010186)))

(assert (=> bs!529385 (not (= lambda!112644 lambda!112638))))

(declare-fun bs!529386 () Bool)

(assert (= bs!529386 (and b!3010440 b!3010185)))

(assert (=> bs!529386 (= (and (= (_1!20172 lt!1043681) s!11993) (= (regOne!19298 (reg!9722 r!17423)) (regOne!19298 (regTwo!19299 lt!1043692))) (= (regTwo!19298 (reg!9722 r!17423)) (regTwo!19298 (regTwo!19299 lt!1043692)))) (= lambda!112644 lambda!112639))))

(declare-fun bs!529387 () Bool)

(assert (= bs!529387 (and b!3010440 b!3008998)))

(assert (=> bs!529387 (not (= lambda!112644 lambda!112588))))

(declare-fun bs!529388 () Bool)

(assert (= bs!529388 (and b!3010440 b!3009154)))

(assert (=> bs!529388 (not (= lambda!112644 lambda!112601))))

(assert (=> bs!529387 (not (= lambda!112644 lambda!112587))))

(declare-fun bs!529389 () Bool)

(assert (= bs!529389 (and b!3010440 d!847402)))

(assert (=> bs!529389 (not (= lambda!112644 lambda!112616))))

(declare-fun bs!529390 () Bool)

(assert (= bs!529390 (and b!3010440 d!847534)))

(assert (=> bs!529390 (not (= lambda!112644 lambda!112631))))

(declare-fun bs!529391 () Bool)

(assert (= bs!529391 (and b!3010440 b!3009733)))

(assert (=> bs!529391 (= (and (= (_1!20172 lt!1043681) s!11993) (= (regOne!19298 (reg!9722 r!17423)) (regOne!19298 lt!1043692)) (= (regTwo!19298 (reg!9722 r!17423)) (regTwo!19298 lt!1043692))) (= lambda!112644 lambda!112622))))

(declare-fun bs!529392 () Bool)

(assert (= bs!529392 (and b!3010440 b!3010062)))

(assert (=> bs!529392 (not (= lambda!112644 lambda!112633))))

(declare-fun bs!529393 () Bool)

(assert (= bs!529393 (and b!3010440 b!3009153)))

(assert (=> bs!529393 (= (and (= (_1!20172 lt!1043681) s!11993) (= (regOne!19298 (reg!9722 r!17423)) (regOne!19298 r!17423)) (= (regTwo!19298 (reg!9722 r!17423)) (regTwo!19298 r!17423))) (= lambda!112644 lambda!112602))))

(assert (=> bs!529389 (not (= lambda!112644 lambda!112617))))

(declare-fun bs!529394 () Bool)

(assert (= bs!529394 (and b!3010440 b!3009923)))

(assert (=> bs!529394 (= (and (= (_1!20172 lt!1043681) s!11993) (= (regOne!19298 (reg!9722 r!17423)) (regOne!19298 (regTwo!19299 r!17423))) (= (regTwo!19298 (reg!9722 r!17423)) (regTwo!19298 (regTwo!19299 r!17423)))) (= lambda!112644 lambda!112624))))

(assert (=> bs!529390 (not (= lambda!112644 lambda!112632))))

(declare-fun bs!529395 () Bool)

(assert (= bs!529395 (and b!3010440 b!3009924)))

(assert (=> bs!529395 (not (= lambda!112644 lambda!112623))))

(declare-fun bs!529396 () Bool)

(assert (= bs!529396 (and b!3010440 b!3010441)))

(assert (=> bs!529396 (not (= lambda!112644 lambda!112643))))

(declare-fun bs!529397 () Bool)

(assert (= bs!529397 (and b!3010440 b!3010061)))

(assert (=> bs!529397 (= (and (= (_1!20172 lt!1043681) s!11993) (= (regOne!19298 (reg!9722 r!17423)) (regOne!19298 (regOne!19299 lt!1043692))) (= (regTwo!19298 (reg!9722 r!17423)) (regTwo!19298 (regOne!19299 lt!1043692)))) (= lambda!112644 lambda!112634))))

(declare-fun bs!529398 () Bool)

(assert (= bs!529398 (and b!3010440 d!847574)))

(assert (=> bs!529398 (not (= lambda!112644 lambda!112637))))

(assert (=> b!3010440 true))

(assert (=> b!3010440 true))

(declare-fun b!3010439 () Bool)

(declare-fun e!1890270 () Bool)

(declare-fun call!202814 () Bool)

(assert (=> b!3010439 (= e!1890270 call!202814)))

(declare-fun e!1890269 () Bool)

(declare-fun call!202813 () Bool)

(assert (=> b!3010440 (= e!1890269 call!202813)))

(declare-fun e!1890266 () Bool)

(assert (=> b!3010441 (= e!1890266 call!202813)))

(declare-fun b!3010442 () Bool)

(declare-fun c!495938 () Bool)

(assert (=> b!3010442 (= c!495938 ((_ is Union!9393) (reg!9722 r!17423)))))

(declare-fun e!1890267 () Bool)

(declare-fun e!1890271 () Bool)

(assert (=> b!3010442 (= e!1890267 e!1890271)))

(declare-fun b!3010443 () Bool)

(assert (=> b!3010443 (= e!1890267 (= (_1!20172 lt!1043681) (Cons!35134 (c!495525 (reg!9722 r!17423)) Nil!35134)))))

(declare-fun b!3010444 () Bool)

(declare-fun e!1890268 () Bool)

(assert (=> b!3010444 (= e!1890270 e!1890268)))

(declare-fun res!1240672 () Bool)

(assert (=> b!3010444 (= res!1240672 (not ((_ is EmptyLang!9393) (reg!9722 r!17423))))))

(assert (=> b!3010444 (=> (not res!1240672) (not e!1890268))))

(declare-fun b!3010445 () Bool)

(declare-fun c!495939 () Bool)

(assert (=> b!3010445 (= c!495939 ((_ is ElementMatch!9393) (reg!9722 r!17423)))))

(assert (=> b!3010445 (= e!1890268 e!1890267)))

(declare-fun b!3010446 () Bool)

(assert (=> b!3010446 (= e!1890271 e!1890269)))

(declare-fun c!495936 () Bool)

(assert (=> b!3010446 (= c!495936 ((_ is Star!9393) (reg!9722 r!17423)))))

(declare-fun bm!202808 () Bool)

(assert (=> bm!202808 (= call!202814 (isEmpty!19419 (_1!20172 lt!1043681)))))

(declare-fun b!3010447 () Bool)

(declare-fun res!1240671 () Bool)

(assert (=> b!3010447 (=> res!1240671 e!1890266)))

(assert (=> b!3010447 (= res!1240671 call!202814)))

(assert (=> b!3010447 (= e!1890269 e!1890266)))

(declare-fun bm!202809 () Bool)

(assert (=> bm!202809 (= call!202813 (Exists!1662 (ite c!495936 lambda!112643 lambda!112644)))))

(declare-fun b!3010448 () Bool)

(declare-fun e!1890272 () Bool)

(assert (=> b!3010448 (= e!1890272 (matchRSpec!1530 (regTwo!19299 (reg!9722 r!17423)) (_1!20172 lt!1043681)))))

(declare-fun b!3010449 () Bool)

(assert (=> b!3010449 (= e!1890271 e!1890272)))

(declare-fun res!1240670 () Bool)

(assert (=> b!3010449 (= res!1240670 (matchRSpec!1530 (regOne!19299 (reg!9722 r!17423)) (_1!20172 lt!1043681)))))

(assert (=> b!3010449 (=> res!1240670 e!1890272)))

(declare-fun d!847668 () Bool)

(declare-fun c!495937 () Bool)

(assert (=> d!847668 (= c!495937 ((_ is EmptyExpr!9393) (reg!9722 r!17423)))))

(assert (=> d!847668 (= (matchRSpec!1530 (reg!9722 r!17423) (_1!20172 lt!1043681)) e!1890270)))

(assert (= (and d!847668 c!495937) b!3010439))

(assert (= (and d!847668 (not c!495937)) b!3010444))

(assert (= (and b!3010444 res!1240672) b!3010445))

(assert (= (and b!3010445 c!495939) b!3010443))

(assert (= (and b!3010445 (not c!495939)) b!3010442))

(assert (= (and b!3010442 c!495938) b!3010449))

(assert (= (and b!3010442 (not c!495938)) b!3010446))

(assert (= (and b!3010449 (not res!1240670)) b!3010448))

(assert (= (and b!3010446 c!495936) b!3010447))

(assert (= (and b!3010446 (not c!495936)) b!3010440))

(assert (= (and b!3010447 (not res!1240671)) b!3010441))

(assert (= (or b!3010441 b!3010440) bm!202809))

(assert (= (or b!3010439 b!3010447) bm!202808))

(assert (=> bm!202808 m!3356707))

(declare-fun m!3357317 () Bool)

(assert (=> bm!202809 m!3357317))

(declare-fun m!3357319 () Bool)

(assert (=> b!3010448 m!3357319))

(declare-fun m!3357321 () Bool)

(assert (=> b!3010449 m!3357321))

(assert (=> d!847434 d!847668))

(declare-fun d!847674 () Bool)

(assert (=> d!847674 (= (matchR!4275 (reg!9722 r!17423) (_1!20172 lt!1043681)) (matchRSpec!1530 (reg!9722 r!17423) (_1!20172 lt!1043681)))))

(assert (=> d!847674 true))

(declare-fun _$88!3346 () Unit!49207)

(assert (=> d!847674 (= (choose!17870 (reg!9722 r!17423) (_1!20172 lt!1043681)) _$88!3346)))

(declare-fun bs!529399 () Bool)

(assert (= bs!529399 d!847674))

(assert (=> bs!529399 m!3356375))

(assert (=> bs!529399 m!3356755))

(assert (=> d!847434 d!847674))

(assert (=> d!847434 d!847462))

(declare-fun d!847676 () Bool)

(assert (=> d!847676 (= (Exists!1662 (ite c!495725 lambda!112621 lambda!112622)) (choose!17872 (ite c!495725 lambda!112621 lambda!112622)))))

(declare-fun bs!529400 () Bool)

(assert (= bs!529400 d!847676))

(declare-fun m!3357323 () Bool)

(assert (=> bs!529400 m!3357323))

(assert (=> bm!202662 d!847676))

(assert (=> b!3009751 d!847524))

(assert (=> b!3009642 d!847468))

(declare-fun b!3010466 () Bool)

(declare-fun c!495947 () Bool)

(declare-fun e!1890284 () Bool)

(assert (=> b!3010466 (= c!495947 e!1890284)))

(declare-fun res!1240681 () Bool)

(assert (=> b!3010466 (=> res!1240681 e!1890284)))

(declare-fun call!202819 () Bool)

(assert (=> b!3010466 (= res!1240681 call!202819)))

(declare-fun lt!1043895 () Regex!9393)

(declare-fun call!202820 () Regex!9393)

(assert (=> b!3010466 (= lt!1043895 call!202820)))

(declare-fun e!1890293 () Regex!9393)

(declare-fun e!1890285 () Regex!9393)

(assert (=> b!3010466 (= e!1890293 e!1890285)))

(declare-fun b!3010467 () Bool)

(declare-fun e!1890281 () Regex!9393)

(assert (=> b!3010467 (= e!1890281 (ite c!495718 (reg!9722 lt!1043690) (ite c!495714 (regTwo!19299 lt!1043690) (regOne!19298 lt!1043690))))))

(declare-fun b!3010468 () Bool)

(declare-fun e!1890288 () Regex!9393)

(assert (=> b!3010468 (= e!1890288 e!1890281)))

(declare-fun c!495949 () Bool)

(assert (=> b!3010468 (= c!495949 ((_ is ElementMatch!9393) (ite c!495718 (reg!9722 lt!1043690) (ite c!495714 (regTwo!19299 lt!1043690) (regOne!19298 lt!1043690)))))))

(declare-fun b!3010469 () Bool)

(declare-fun c!495945 () Bool)

(declare-fun call!202817 () Bool)

(assert (=> b!3010469 (= c!495945 call!202817)))

(declare-fun e!1890283 () Regex!9393)

(declare-fun e!1890294 () Regex!9393)

(assert (=> b!3010469 (= e!1890283 e!1890294)))

(declare-fun c!495950 () Bool)

(declare-fun b!3010470 () Bool)

(assert (=> b!3010470 (= c!495950 ((_ is Union!9393) (ite c!495718 (reg!9722 lt!1043690) (ite c!495714 (regTwo!19299 lt!1043690) (regOne!19298 lt!1043690)))))))

(declare-fun e!1890286 () Regex!9393)

(assert (=> b!3010470 (= e!1890293 e!1890286)))

(declare-fun b!3010471 () Bool)

(assert (=> b!3010471 (= e!1890285 (Star!9393 lt!1043895))))

(declare-fun b!3010472 () Bool)

(declare-fun e!1890291 () Regex!9393)

(assert (=> b!3010472 (= e!1890291 EmptyExpr!9393)))

(declare-fun b!3010473 () Bool)

(declare-fun e!1890282 () Bool)

(assert (=> b!3010473 (= e!1890282 call!202817)))

(declare-fun b!3010474 () Bool)

(declare-fun lt!1043893 () Regex!9393)

(declare-fun e!1890289 () Bool)

(assert (=> b!3010474 (= e!1890289 (= (nullable!3046 lt!1043893) (nullable!3046 (ite c!495718 (reg!9722 lt!1043690) (ite c!495714 (regTwo!19299 lt!1043690) (regOne!19298 lt!1043690))))))))

(declare-fun b!3010475 () Bool)

(assert (=> b!3010475 (= e!1890291 e!1890293)))

(declare-fun c!495954 () Bool)

(assert (=> b!3010475 (= c!495954 ((_ is Star!9393) (ite c!495718 (reg!9722 lt!1043690) (ite c!495714 (regTwo!19299 lt!1043690) (regOne!19298 lt!1043690)))))))

(declare-fun b!3010476 () Bool)

(declare-fun call!202816 () Bool)

(assert (=> b!3010476 (= e!1890284 call!202816)))

(declare-fun b!3010477 () Bool)

(declare-fun lt!1043892 () Regex!9393)

(declare-fun lt!1043894 () Regex!9393)

(assert (=> b!3010477 (= e!1890294 (Union!9393 lt!1043892 lt!1043894))))

(declare-fun d!847678 () Bool)

(assert (=> d!847678 e!1890289))

(declare-fun res!1240682 () Bool)

(assert (=> d!847678 (=> (not res!1240682) (not e!1890289))))

(assert (=> d!847678 (= res!1240682 (validRegex!4126 lt!1043893))))

(assert (=> d!847678 (= lt!1043893 e!1890288)))

(declare-fun c!495944 () Bool)

(assert (=> d!847678 (= c!495944 ((_ is EmptyLang!9393) (ite c!495718 (reg!9722 lt!1043690) (ite c!495714 (regTwo!19299 lt!1043690) (regOne!19298 lt!1043690)))))))

(assert (=> d!847678 (validRegex!4126 (ite c!495718 (reg!9722 lt!1043690) (ite c!495714 (regTwo!19299 lt!1043690) (regOne!19298 lt!1043690))))))

(assert (=> d!847678 (= (simplify!384 (ite c!495718 (reg!9722 lt!1043690) (ite c!495714 (regTwo!19299 lt!1043690) (regOne!19298 lt!1043690)))) lt!1043893)))

(declare-fun b!3010478 () Bool)

(assert (=> b!3010478 (= e!1890294 lt!1043892)))

(declare-fun b!3010479 () Bool)

(declare-fun c!495948 () Bool)

(declare-fun lt!1043890 () Regex!9393)

(assert (=> b!3010479 (= c!495948 (isEmptyExpr!489 lt!1043890))))

(declare-fun e!1890287 () Regex!9393)

(declare-fun e!1890290 () Regex!9393)

(assert (=> b!3010479 (= e!1890287 e!1890290)))

(declare-fun lt!1043891 () Regex!9393)

(declare-fun bm!202810 () Bool)

(assert (=> bm!202810 (= call!202816 (isEmptyExpr!489 (ite c!495954 lt!1043895 lt!1043891)))))

(declare-fun bm!202811 () Bool)

(declare-fun call!202815 () Regex!9393)

(assert (=> bm!202811 (= call!202815 call!202820)))

(declare-fun b!3010480 () Bool)

(assert (=> b!3010480 (= e!1890286 e!1890287)))

(assert (=> b!3010480 (= lt!1043890 call!202815)))

(declare-fun call!202818 () Regex!9393)

(assert (=> b!3010480 (= lt!1043891 call!202818)))

(declare-fun res!1240683 () Bool)

(declare-fun call!202821 () Bool)

(assert (=> b!3010480 (= res!1240683 call!202821)))

(assert (=> b!3010480 (=> res!1240683 e!1890282)))

(declare-fun c!495951 () Bool)

(assert (=> b!3010480 (= c!495951 e!1890282)))

(declare-fun bm!202812 () Bool)

(assert (=> bm!202812 (= call!202817 (isEmptyLang!483 (ite c!495950 lt!1043894 lt!1043891)))))

(declare-fun b!3010481 () Bool)

(assert (=> b!3010481 (= e!1890290 lt!1043891)))

(declare-fun bm!202813 () Bool)

(assert (=> bm!202813 (= call!202818 (simplify!384 (ite c!495950 (regOne!19299 (ite c!495718 (reg!9722 lt!1043690) (ite c!495714 (regTwo!19299 lt!1043690) (regOne!19298 lt!1043690)))) (regTwo!19298 (ite c!495718 (reg!9722 lt!1043690) (ite c!495714 (regTwo!19299 lt!1043690) (regOne!19298 lt!1043690)))))))))

(declare-fun b!3010482 () Bool)

(assert (=> b!3010482 (= e!1890286 e!1890283)))

(assert (=> b!3010482 (= lt!1043892 call!202818)))

(assert (=> b!3010482 (= lt!1043894 call!202815)))

(declare-fun c!495952 () Bool)

(assert (=> b!3010482 (= c!495952 call!202821)))

(declare-fun bm!202814 () Bool)

(assert (=> bm!202814 (= call!202819 (isEmptyLang!483 (ite c!495954 lt!1043895 (ite c!495950 lt!1043892 lt!1043890))))))

(declare-fun b!3010483 () Bool)

(assert (=> b!3010483 (= e!1890283 lt!1043894)))

(declare-fun b!3010484 () Bool)

(assert (=> b!3010484 (= e!1890287 EmptyLang!9393)))

(declare-fun b!3010485 () Bool)

(assert (=> b!3010485 (= e!1890285 EmptyExpr!9393)))

(declare-fun b!3010486 () Bool)

(declare-fun e!1890292 () Regex!9393)

(assert (=> b!3010486 (= e!1890292 lt!1043890)))

(declare-fun b!3010487 () Bool)

(assert (=> b!3010487 (= e!1890290 e!1890292)))

(declare-fun c!495946 () Bool)

(assert (=> b!3010487 (= c!495946 call!202816)))

(declare-fun b!3010488 () Bool)

(assert (=> b!3010488 (= e!1890292 (Concat!14714 lt!1043890 lt!1043891))))

(declare-fun bm!202815 () Bool)

(assert (=> bm!202815 (= call!202821 call!202819)))

(declare-fun b!3010489 () Bool)

(assert (=> b!3010489 (= e!1890288 EmptyLang!9393)))

(declare-fun bm!202816 () Bool)

(assert (=> bm!202816 (= call!202820 (simplify!384 (ite c!495954 (reg!9722 (ite c!495718 (reg!9722 lt!1043690) (ite c!495714 (regTwo!19299 lt!1043690) (regOne!19298 lt!1043690)))) (ite c!495950 (regTwo!19299 (ite c!495718 (reg!9722 lt!1043690) (ite c!495714 (regTwo!19299 lt!1043690) (regOne!19298 lt!1043690)))) (regOne!19298 (ite c!495718 (reg!9722 lt!1043690) (ite c!495714 (regTwo!19299 lt!1043690) (regOne!19298 lt!1043690))))))))))

(declare-fun b!3010490 () Bool)

(declare-fun c!495953 () Bool)

(assert (=> b!3010490 (= c!495953 ((_ is EmptyExpr!9393) (ite c!495718 (reg!9722 lt!1043690) (ite c!495714 (regTwo!19299 lt!1043690) (regOne!19298 lt!1043690)))))))

(assert (=> b!3010490 (= e!1890281 e!1890291)))

(assert (= (and d!847678 c!495944) b!3010489))

(assert (= (and d!847678 (not c!495944)) b!3010468))

(assert (= (and b!3010468 c!495949) b!3010467))

(assert (= (and b!3010468 (not c!495949)) b!3010490))

(assert (= (and b!3010490 c!495953) b!3010472))

(assert (= (and b!3010490 (not c!495953)) b!3010475))

(assert (= (and b!3010475 c!495954) b!3010466))

(assert (= (and b!3010475 (not c!495954)) b!3010470))

(assert (= (and b!3010466 (not res!1240681)) b!3010476))

(assert (= (and b!3010466 c!495947) b!3010485))

(assert (= (and b!3010466 (not c!495947)) b!3010471))

(assert (= (and b!3010470 c!495950) b!3010482))

(assert (= (and b!3010470 (not c!495950)) b!3010480))

(assert (= (and b!3010482 c!495952) b!3010483))

(assert (= (and b!3010482 (not c!495952)) b!3010469))

(assert (= (and b!3010469 c!495945) b!3010478))

(assert (= (and b!3010469 (not c!495945)) b!3010477))

(assert (= (and b!3010480 (not res!1240683)) b!3010473))

(assert (= (and b!3010480 c!495951) b!3010484))

(assert (= (and b!3010480 (not c!495951)) b!3010479))

(assert (= (and b!3010479 c!495948) b!3010481))

(assert (= (and b!3010479 (not c!495948)) b!3010487))

(assert (= (and b!3010487 c!495946) b!3010486))

(assert (= (and b!3010487 (not c!495946)) b!3010488))

(assert (= (or b!3010482 b!3010480) bm!202813))

(assert (= (or b!3010482 b!3010480) bm!202811))

(assert (= (or b!3010482 b!3010480) bm!202815))

(assert (= (or b!3010469 b!3010473) bm!202812))

(assert (= (or b!3010476 b!3010487) bm!202810))

(assert (= (or b!3010466 bm!202811) bm!202816))

(assert (= (or b!3010466 bm!202815) bm!202814))

(assert (= (and d!847678 res!1240682) b!3010474))

(declare-fun m!3357329 () Bool)

(assert (=> b!3010479 m!3357329))

(declare-fun m!3357331 () Bool)

(assert (=> bm!202813 m!3357331))

(declare-fun m!3357333 () Bool)

(assert (=> d!847678 m!3357333))

(declare-fun m!3357335 () Bool)

(assert (=> d!847678 m!3357335))

(declare-fun m!3357337 () Bool)

(assert (=> bm!202816 m!3357337))

(declare-fun m!3357339 () Bool)

(assert (=> b!3010474 m!3357339))

(declare-fun m!3357341 () Bool)

(assert (=> b!3010474 m!3357341))

(declare-fun m!3357343 () Bool)

(assert (=> bm!202812 m!3357343))

(declare-fun m!3357345 () Bool)

(assert (=> bm!202810 m!3357345))

(declare-fun m!3357349 () Bool)

(assert (=> bm!202814 m!3357349))

(assert (=> bm!202651 d!847678))

(assert (=> b!3009336 d!847620))

(assert (=> b!3009336 d!847514))

(declare-fun d!847682 () Bool)

(assert (=> d!847682 (= (nullable!3046 lt!1043780) (nullableFct!868 lt!1043780))))

(declare-fun bs!529402 () Bool)

(assert (= bs!529402 d!847682))

(declare-fun m!3357355 () Bool)

(assert (=> bs!529402 m!3357355))

(assert (=> b!3009558 d!847682))

(assert (=> b!3009558 d!847458))

(declare-fun bs!529404 () Bool)

(declare-fun b!3010502 () Bool)

(assert (= bs!529404 (and b!3010502 d!847408)))

(declare-fun lambda!112645 () Int)

(assert (=> bs!529404 (not (= lambda!112645 lambda!112620))))

(declare-fun bs!529405 () Bool)

(assert (= bs!529405 (and b!3010502 b!3009734)))

(assert (=> bs!529405 (= (and (= (reg!9722 (regOne!19299 r!17423)) (reg!9722 lt!1043692)) (= (regOne!19299 r!17423) lt!1043692)) (= lambda!112645 lambda!112621))))

(declare-fun bs!529406 () Bool)

(assert (= bs!529406 (and b!3010502 b!3010440)))

(assert (=> bs!529406 (not (= lambda!112645 lambda!112644))))

(declare-fun bs!529407 () Bool)

(assert (= bs!529407 (and b!3010502 b!3010186)))

(assert (=> bs!529407 (= (and (= (reg!9722 (regOne!19299 r!17423)) (reg!9722 (regTwo!19299 lt!1043692))) (= (regOne!19299 r!17423) (regTwo!19299 lt!1043692))) (= lambda!112645 lambda!112638))))

(declare-fun bs!529408 () Bool)

(assert (= bs!529408 (and b!3010502 b!3010185)))

(assert (=> bs!529408 (not (= lambda!112645 lambda!112639))))

(declare-fun bs!529409 () Bool)

(assert (= bs!529409 (and b!3010502 b!3008998)))

(assert (=> bs!529409 (= (and (= (reg!9722 (regOne!19299 r!17423)) lt!1043686) (= (regOne!19299 r!17423) lt!1043692)) (= lambda!112645 lambda!112588))))

(declare-fun bs!529410 () Bool)

(assert (= bs!529410 (and b!3010502 b!3009154)))

(assert (=> bs!529410 (= (and (= (reg!9722 (regOne!19299 r!17423)) (reg!9722 r!17423)) (= (regOne!19299 r!17423) r!17423)) (= lambda!112645 lambda!112601))))

(assert (=> bs!529409 (not (= lambda!112645 lambda!112587))))

(declare-fun bs!529411 () Bool)

(assert (= bs!529411 (and b!3010502 d!847402)))

(assert (=> bs!529411 (not (= lambda!112645 lambda!112616))))

(declare-fun bs!529412 () Bool)

(assert (= bs!529412 (and b!3010502 d!847534)))

(assert (=> bs!529412 (not (= lambda!112645 lambda!112631))))

(declare-fun bs!529413 () Bool)

(assert (= bs!529413 (and b!3010502 b!3009733)))

(assert (=> bs!529413 (not (= lambda!112645 lambda!112622))))

(declare-fun bs!529414 () Bool)

(assert (= bs!529414 (and b!3010502 b!3010062)))

(assert (=> bs!529414 (= (and (= (reg!9722 (regOne!19299 r!17423)) (reg!9722 (regOne!19299 lt!1043692))) (= (regOne!19299 r!17423) (regOne!19299 lt!1043692))) (= lambda!112645 lambda!112633))))

(declare-fun bs!529415 () Bool)

(assert (= bs!529415 (and b!3010502 b!3009153)))

(assert (=> bs!529415 (not (= lambda!112645 lambda!112602))))

(assert (=> bs!529411 (= (and (= (reg!9722 (regOne!19299 r!17423)) lt!1043686) (= (regOne!19299 r!17423) (Star!9393 lt!1043686))) (= lambda!112645 lambda!112617))))

(declare-fun bs!529416 () Bool)

(assert (= bs!529416 (and b!3010502 b!3009923)))

(assert (=> bs!529416 (not (= lambda!112645 lambda!112624))))

(assert (=> bs!529412 (= (and (= (reg!9722 (regOne!19299 r!17423)) lt!1043686) (= (regOne!19299 r!17423) (Star!9393 lt!1043686))) (= lambda!112645 lambda!112632))))

(declare-fun bs!529417 () Bool)

(assert (= bs!529417 (and b!3010502 b!3009924)))

(assert (=> bs!529417 (= (and (= (reg!9722 (regOne!19299 r!17423)) (reg!9722 (regTwo!19299 r!17423))) (= (regOne!19299 r!17423) (regTwo!19299 r!17423))) (= lambda!112645 lambda!112623))))

(declare-fun bs!529419 () Bool)

(assert (= bs!529419 (and b!3010502 b!3010441)))

(assert (=> bs!529419 (= (and (= s!11993 (_1!20172 lt!1043681)) (= (reg!9722 (regOne!19299 r!17423)) (reg!9722 (reg!9722 r!17423))) (= (regOne!19299 r!17423) (reg!9722 r!17423))) (= lambda!112645 lambda!112643))))

(declare-fun bs!529420 () Bool)

(assert (= bs!529420 (and b!3010502 b!3010061)))

(assert (=> bs!529420 (not (= lambda!112645 lambda!112634))))

(declare-fun bs!529421 () Bool)

(assert (= bs!529421 (and b!3010502 d!847574)))

(assert (=> bs!529421 (not (= lambda!112645 lambda!112637))))

(assert (=> b!3010502 true))

(assert (=> b!3010502 true))

(declare-fun bs!529422 () Bool)

(declare-fun b!3010501 () Bool)

(assert (= bs!529422 (and b!3010501 d!847408)))

(declare-fun lambda!112646 () Int)

(assert (=> bs!529422 (not (= lambda!112646 lambda!112620))))

(declare-fun bs!529423 () Bool)

(assert (= bs!529423 (and b!3010501 b!3009734)))

(assert (=> bs!529423 (not (= lambda!112646 lambda!112621))))

(declare-fun bs!529424 () Bool)

(assert (= bs!529424 (and b!3010501 b!3010440)))

(assert (=> bs!529424 (= (and (= s!11993 (_1!20172 lt!1043681)) (= (regOne!19298 (regOne!19299 r!17423)) (regOne!19298 (reg!9722 r!17423))) (= (regTwo!19298 (regOne!19299 r!17423)) (regTwo!19298 (reg!9722 r!17423)))) (= lambda!112646 lambda!112644))))

(declare-fun bs!529425 () Bool)

(assert (= bs!529425 (and b!3010501 b!3010186)))

(assert (=> bs!529425 (not (= lambda!112646 lambda!112638))))

(declare-fun bs!529426 () Bool)

(assert (= bs!529426 (and b!3010501 b!3010185)))

(assert (=> bs!529426 (= (and (= (regOne!19298 (regOne!19299 r!17423)) (regOne!19298 (regTwo!19299 lt!1043692))) (= (regTwo!19298 (regOne!19299 r!17423)) (regTwo!19298 (regTwo!19299 lt!1043692)))) (= lambda!112646 lambda!112639))))

(declare-fun bs!529427 () Bool)

(assert (= bs!529427 (and b!3010501 b!3008998)))

(assert (=> bs!529427 (not (= lambda!112646 lambda!112588))))

(declare-fun bs!529428 () Bool)

(assert (= bs!529428 (and b!3010501 b!3010502)))

(assert (=> bs!529428 (not (= lambda!112646 lambda!112645))))

(declare-fun bs!529429 () Bool)

(assert (= bs!529429 (and b!3010501 b!3009154)))

(assert (=> bs!529429 (not (= lambda!112646 lambda!112601))))

(assert (=> bs!529427 (not (= lambda!112646 lambda!112587))))

(declare-fun bs!529430 () Bool)

(assert (= bs!529430 (and b!3010501 d!847402)))

(assert (=> bs!529430 (not (= lambda!112646 lambda!112616))))

(declare-fun bs!529431 () Bool)

(assert (= bs!529431 (and b!3010501 d!847534)))

(assert (=> bs!529431 (not (= lambda!112646 lambda!112631))))

(declare-fun bs!529432 () Bool)

(assert (= bs!529432 (and b!3010501 b!3009733)))

(assert (=> bs!529432 (= (and (= (regOne!19298 (regOne!19299 r!17423)) (regOne!19298 lt!1043692)) (= (regTwo!19298 (regOne!19299 r!17423)) (regTwo!19298 lt!1043692))) (= lambda!112646 lambda!112622))))

(declare-fun bs!529433 () Bool)

(assert (= bs!529433 (and b!3010501 b!3010062)))

(assert (=> bs!529433 (not (= lambda!112646 lambda!112633))))

(declare-fun bs!529434 () Bool)

(assert (= bs!529434 (and b!3010501 b!3009153)))

(assert (=> bs!529434 (= (and (= (regOne!19298 (regOne!19299 r!17423)) (regOne!19298 r!17423)) (= (regTwo!19298 (regOne!19299 r!17423)) (regTwo!19298 r!17423))) (= lambda!112646 lambda!112602))))

(assert (=> bs!529430 (not (= lambda!112646 lambda!112617))))

(declare-fun bs!529435 () Bool)

(assert (= bs!529435 (and b!3010501 b!3009923)))

(assert (=> bs!529435 (= (and (= (regOne!19298 (regOne!19299 r!17423)) (regOne!19298 (regTwo!19299 r!17423))) (= (regTwo!19298 (regOne!19299 r!17423)) (regTwo!19298 (regTwo!19299 r!17423)))) (= lambda!112646 lambda!112624))))

(assert (=> bs!529431 (not (= lambda!112646 lambda!112632))))

(declare-fun bs!529436 () Bool)

(assert (= bs!529436 (and b!3010501 b!3009924)))

(assert (=> bs!529436 (not (= lambda!112646 lambda!112623))))

(declare-fun bs!529437 () Bool)

(assert (= bs!529437 (and b!3010501 b!3010441)))

(assert (=> bs!529437 (not (= lambda!112646 lambda!112643))))

(declare-fun bs!529438 () Bool)

(assert (= bs!529438 (and b!3010501 b!3010061)))

(assert (=> bs!529438 (= (and (= (regOne!19298 (regOne!19299 r!17423)) (regOne!19298 (regOne!19299 lt!1043692))) (= (regTwo!19298 (regOne!19299 r!17423)) (regTwo!19298 (regOne!19299 lt!1043692)))) (= lambda!112646 lambda!112634))))

(declare-fun bs!529439 () Bool)

(assert (= bs!529439 (and b!3010501 d!847574)))

(assert (=> bs!529439 (not (= lambda!112646 lambda!112637))))

(assert (=> b!3010501 true))

(assert (=> b!3010501 true))

(declare-fun b!3010500 () Bool)

(declare-fun e!1890304 () Bool)

(declare-fun call!202823 () Bool)

(assert (=> b!3010500 (= e!1890304 call!202823)))

(declare-fun e!1890303 () Bool)

(declare-fun call!202822 () Bool)

(assert (=> b!3010501 (= e!1890303 call!202822)))

(declare-fun e!1890300 () Bool)

(assert (=> b!3010502 (= e!1890300 call!202822)))

(declare-fun b!3010503 () Bool)

(declare-fun c!495959 () Bool)

(assert (=> b!3010503 (= c!495959 ((_ is Union!9393) (regOne!19299 r!17423)))))

(declare-fun e!1890301 () Bool)

(declare-fun e!1890305 () Bool)

(assert (=> b!3010503 (= e!1890301 e!1890305)))

(declare-fun b!3010504 () Bool)

(assert (=> b!3010504 (= e!1890301 (= s!11993 (Cons!35134 (c!495525 (regOne!19299 r!17423)) Nil!35134)))))

(declare-fun b!3010505 () Bool)

(declare-fun e!1890302 () Bool)

(assert (=> b!3010505 (= e!1890304 e!1890302)))

(declare-fun res!1240691 () Bool)

(assert (=> b!3010505 (= res!1240691 (not ((_ is EmptyLang!9393) (regOne!19299 r!17423))))))

(assert (=> b!3010505 (=> (not res!1240691) (not e!1890302))))

(declare-fun b!3010506 () Bool)

(declare-fun c!495960 () Bool)

(assert (=> b!3010506 (= c!495960 ((_ is ElementMatch!9393) (regOne!19299 r!17423)))))

(assert (=> b!3010506 (= e!1890302 e!1890301)))

(declare-fun b!3010507 () Bool)

(assert (=> b!3010507 (= e!1890305 e!1890303)))

(declare-fun c!495957 () Bool)

(assert (=> b!3010507 (= c!495957 ((_ is Star!9393) (regOne!19299 r!17423)))))

(declare-fun bm!202817 () Bool)

(assert (=> bm!202817 (= call!202823 (isEmpty!19419 s!11993))))

(declare-fun b!3010508 () Bool)

(declare-fun res!1240690 () Bool)

(assert (=> b!3010508 (=> res!1240690 e!1890300)))

(assert (=> b!3010508 (= res!1240690 call!202823)))

(assert (=> b!3010508 (= e!1890303 e!1890300)))

(declare-fun bm!202818 () Bool)

(assert (=> bm!202818 (= call!202822 (Exists!1662 (ite c!495957 lambda!112645 lambda!112646)))))

(declare-fun b!3010509 () Bool)

(declare-fun e!1890306 () Bool)

(assert (=> b!3010509 (= e!1890306 (matchRSpec!1530 (regTwo!19299 (regOne!19299 r!17423)) s!11993))))

(declare-fun b!3010510 () Bool)

(assert (=> b!3010510 (= e!1890305 e!1890306)))

(declare-fun res!1240689 () Bool)

(assert (=> b!3010510 (= res!1240689 (matchRSpec!1530 (regOne!19299 (regOne!19299 r!17423)) s!11993))))

(assert (=> b!3010510 (=> res!1240689 e!1890306)))

(declare-fun d!847684 () Bool)

(declare-fun c!495958 () Bool)

(assert (=> d!847684 (= c!495958 ((_ is EmptyExpr!9393) (regOne!19299 r!17423)))))

(assert (=> d!847684 (= (matchRSpec!1530 (regOne!19299 r!17423) s!11993) e!1890304)))

(assert (= (and d!847684 c!495958) b!3010500))

(assert (= (and d!847684 (not c!495958)) b!3010505))

(assert (= (and b!3010505 res!1240691) b!3010506))

(assert (= (and b!3010506 c!495960) b!3010504))

(assert (= (and b!3010506 (not c!495960)) b!3010503))

(assert (= (and b!3010503 c!495959) b!3010510))

(assert (= (and b!3010503 (not c!495959)) b!3010507))

(assert (= (and b!3010510 (not res!1240689)) b!3010509))

(assert (= (and b!3010507 c!495957) b!3010508))

(assert (= (and b!3010507 (not c!495957)) b!3010501))

(assert (= (and b!3010508 (not res!1240690)) b!3010502))

(assert (= (or b!3010502 b!3010501) bm!202818))

(assert (= (or b!3010500 b!3010508) bm!202817))

(assert (=> bm!202817 m!3356353))

(declare-fun m!3357425 () Bool)

(assert (=> bm!202818 m!3357425))

(declare-fun m!3357427 () Bool)

(assert (=> b!3010509 m!3357427))

(declare-fun m!3357429 () Bool)

(assert (=> b!3010510 m!3357429))

(assert (=> b!3009162 d!847684))

(assert (=> d!847396 d!847484))

(assert (=> d!847396 d!847564))

(assert (=> d!847418 d!847412))

(declare-fun b!3010589 () Bool)

(declare-fun e!1890357 () Bool)

(declare-fun lt!1043907 () Bool)

(assert (=> b!3010589 (= e!1890357 (not lt!1043907))))

(declare-fun b!3010590 () Bool)

(declare-fun res!1240723 () Bool)

(declare-fun e!1890359 () Bool)

(assert (=> b!3010590 (=> res!1240723 e!1890359)))

(declare-fun e!1890355 () Bool)

(assert (=> b!3010590 (= res!1240723 e!1890355)))

(declare-fun res!1240721 () Bool)

(assert (=> b!3010590 (=> (not res!1240721) (not e!1890355))))

(assert (=> b!3010590 (= res!1240721 lt!1043907)))

(declare-fun d!847702 () Bool)

(declare-fun e!1890354 () Bool)

(assert (=> d!847702 e!1890354))

(declare-fun c!495988 () Bool)

(assert (=> d!847702 (= c!495988 ((_ is EmptyExpr!9393) (simplify!384 lt!1043690)))))

(declare-fun e!1890356 () Bool)

(assert (=> d!847702 (= lt!1043907 e!1890356)))

(declare-fun c!495989 () Bool)

(assert (=> d!847702 (= c!495989 (isEmpty!19419 (_2!20172 lt!1043681)))))

(assert (=> d!847702 (validRegex!4126 (simplify!384 lt!1043690))))

(assert (=> d!847702 (= (matchR!4275 (simplify!384 lt!1043690) (_2!20172 lt!1043681)) lt!1043907)))

(declare-fun bm!202839 () Bool)

(declare-fun call!202844 () Bool)

(assert (=> bm!202839 (= call!202844 (isEmpty!19419 (_2!20172 lt!1043681)))))

(declare-fun b!3010591 () Bool)

(declare-fun e!1890358 () Bool)

(declare-fun e!1890360 () Bool)

(assert (=> b!3010591 (= e!1890358 e!1890360)))

(declare-fun res!1240722 () Bool)

(assert (=> b!3010591 (=> res!1240722 e!1890360)))

(assert (=> b!3010591 (= res!1240722 call!202844)))

(declare-fun b!3010592 () Bool)

(declare-fun res!1240717 () Bool)

(assert (=> b!3010592 (=> res!1240717 e!1890359)))

(assert (=> b!3010592 (= res!1240717 (not ((_ is ElementMatch!9393) (simplify!384 lt!1043690))))))

(assert (=> b!3010592 (= e!1890357 e!1890359)))

(declare-fun b!3010593 () Bool)

(assert (=> b!3010593 (= e!1890354 e!1890357)))

(declare-fun c!495990 () Bool)

(assert (=> b!3010593 (= c!495990 ((_ is EmptyLang!9393) (simplify!384 lt!1043690)))))

(declare-fun b!3010594 () Bool)

(assert (=> b!3010594 (= e!1890355 (= (head!6703 (_2!20172 lt!1043681)) (c!495525 (simplify!384 lt!1043690))))))

(declare-fun b!3010595 () Bool)

(assert (=> b!3010595 (= e!1890356 (nullable!3046 (simplify!384 lt!1043690)))))

(declare-fun b!3010596 () Bool)

(declare-fun res!1240720 () Bool)

(assert (=> b!3010596 (=> (not res!1240720) (not e!1890355))))

(assert (=> b!3010596 (= res!1240720 (isEmpty!19419 (tail!4929 (_2!20172 lt!1043681))))))

(declare-fun b!3010597 () Bool)

(assert (=> b!3010597 (= e!1890360 (not (= (head!6703 (_2!20172 lt!1043681)) (c!495525 (simplify!384 lt!1043690)))))))

(declare-fun b!3010598 () Bool)

(assert (=> b!3010598 (= e!1890356 (matchR!4275 (derivativeStep!2644 (simplify!384 lt!1043690) (head!6703 (_2!20172 lt!1043681))) (tail!4929 (_2!20172 lt!1043681))))))

(declare-fun b!3010599 () Bool)

(declare-fun res!1240718 () Bool)

(assert (=> b!3010599 (=> (not res!1240718) (not e!1890355))))

(assert (=> b!3010599 (= res!1240718 (not call!202844))))

(declare-fun b!3010600 () Bool)

(declare-fun res!1240716 () Bool)

(assert (=> b!3010600 (=> res!1240716 e!1890360)))

(assert (=> b!3010600 (= res!1240716 (not (isEmpty!19419 (tail!4929 (_2!20172 lt!1043681)))))))

(declare-fun b!3010601 () Bool)

(assert (=> b!3010601 (= e!1890354 (= lt!1043907 call!202844))))

(declare-fun b!3010602 () Bool)

(assert (=> b!3010602 (= e!1890359 e!1890358)))

(declare-fun res!1240719 () Bool)

(assert (=> b!3010602 (=> (not res!1240719) (not e!1890358))))

(assert (=> b!3010602 (= res!1240719 (not lt!1043907))))

(assert (= (and d!847702 c!495989) b!3010595))

(assert (= (and d!847702 (not c!495989)) b!3010598))

(assert (= (and d!847702 c!495988) b!3010601))

(assert (= (and d!847702 (not c!495988)) b!3010593))

(assert (= (and b!3010593 c!495990) b!3010589))

(assert (= (and b!3010593 (not c!495990)) b!3010592))

(assert (= (and b!3010592 (not res!1240717)) b!3010590))

(assert (= (and b!3010590 res!1240721) b!3010599))

(assert (= (and b!3010599 res!1240718) b!3010596))

(assert (= (and b!3010596 res!1240720) b!3010594))

(assert (= (and b!3010590 (not res!1240723)) b!3010602))

(assert (= (and b!3010602 res!1240719) b!3010591))

(assert (= (and b!3010591 (not res!1240722)) b!3010600))

(assert (= (and b!3010600 (not res!1240716)) b!3010597))

(assert (= (or b!3010601 b!3010591 b!3010599) bm!202839))

(assert (=> b!3010594 m!3356635))

(assert (=> b!3010598 m!3356635))

(assert (=> b!3010598 m!3356379))

(assert (=> b!3010598 m!3356635))

(declare-fun m!3357431 () Bool)

(assert (=> b!3010598 m!3357431))

(assert (=> b!3010598 m!3356639))

(assert (=> b!3010598 m!3357431))

(assert (=> b!3010598 m!3356639))

(declare-fun m!3357433 () Bool)

(assert (=> b!3010598 m!3357433))

(assert (=> b!3010597 m!3356635))

(assert (=> b!3010595 m!3356379))

(declare-fun m!3357435 () Bool)

(assert (=> b!3010595 m!3357435))

(assert (=> b!3010596 m!3356639))

(assert (=> b!3010596 m!3356639))

(assert (=> b!3010596 m!3356643))

(assert (=> b!3010600 m!3356639))

(assert (=> b!3010600 m!3356639))

(assert (=> b!3010600 m!3356643))

(assert (=> bm!202839 m!3356645))

(assert (=> d!847702 m!3356645))

(assert (=> d!847702 m!3356379))

(declare-fun m!3357437 () Bool)

(assert (=> d!847702 m!3357437))

(assert (=> d!847418 d!847702))

(assert (=> d!847418 d!847424))

(declare-fun d!847704 () Bool)

(assert (=> d!847704 (= (matchR!4275 lt!1043690 (_2!20172 lt!1043681)) (matchR!4275 (simplify!384 lt!1043690) (_2!20172 lt!1043681)))))

(assert (=> d!847704 true))

(declare-fun _$95!552 () Unit!49207)

(assert (=> d!847704 (= (choose!17875 lt!1043690 (_2!20172 lt!1043681)) _$95!552)))

(declare-fun bs!529449 () Bool)

(assert (= bs!529449 d!847704))

(assert (=> bs!529449 m!3356385))

(assert (=> bs!529449 m!3356379))

(assert (=> bs!529449 m!3356379))

(assert (=> bs!529449 m!3356713))

(assert (=> d!847418 d!847704))

(assert (=> d!847418 d!847474))

(assert (=> d!847414 d!847478))

(assert (=> d!847414 d!847462))

(assert (=> bm!202572 d!847428))

(declare-fun d!847706 () Bool)

(assert (=> d!847706 (= (nullable!3046 r!17423) (nullableFct!868 r!17423))))

(declare-fun bs!529451 () Bool)

(assert (= bs!529451 d!847706))

(declare-fun m!3357439 () Bool)

(assert (=> bs!529451 m!3357439))

(assert (=> b!3009313 d!847706))

(assert (=> d!847360 d!847352))

(assert (=> d!847360 d!847330))

(declare-fun d!847708 () Bool)

(assert (=> d!847708 (= (matchR!4275 r!17423 s!11993) (matchRSpec!1530 r!17423 s!11993))))

(assert (=> d!847708 true))

(declare-fun _$88!3347 () Unit!49207)

(assert (=> d!847708 (= (choose!17870 r!17423 s!11993) _$88!3347)))

(declare-fun bs!529452 () Bool)

(assert (= bs!529452 d!847708))

(assert (=> bs!529452 m!3356365))

(assert (=> bs!529452 m!3356363))

(assert (=> d!847360 d!847708))

(assert (=> d!847360 d!847426))

(declare-fun b!3010603 () Bool)

(declare-fun e!1890364 () Bool)

(declare-fun e!1890366 () Bool)

(assert (=> b!3010603 (= e!1890364 e!1890366)))

(declare-fun res!1240725 () Bool)

(assert (=> b!3010603 (= res!1240725 (not (nullable!3046 (reg!9722 lt!1043780))))))

(assert (=> b!3010603 (=> (not res!1240725) (not e!1890366))))

(declare-fun b!3010604 () Bool)

(declare-fun call!202845 () Bool)

(assert (=> b!3010604 (= e!1890366 call!202845)))

(declare-fun b!3010605 () Bool)

(declare-fun e!1890367 () Bool)

(declare-fun call!202846 () Bool)

(assert (=> b!3010605 (= e!1890367 call!202846)))

(declare-fun d!847710 () Bool)

(declare-fun res!1240726 () Bool)

(declare-fun e!1890363 () Bool)

(assert (=> d!847710 (=> res!1240726 e!1890363)))

(assert (=> d!847710 (= res!1240726 ((_ is ElementMatch!9393) lt!1043780))))

(assert (=> d!847710 (= (validRegex!4126 lt!1043780) e!1890363)))

(declare-fun b!3010606 () Bool)

(declare-fun res!1240728 () Bool)

(declare-fun e!1890361 () Bool)

(assert (=> b!3010606 (=> (not res!1240728) (not e!1890361))))

(assert (=> b!3010606 (= res!1240728 call!202846)))

(declare-fun e!1890362 () Bool)

(assert (=> b!3010606 (= e!1890362 e!1890361)))

(declare-fun bm!202840 () Bool)

(declare-fun call!202847 () Bool)

(declare-fun c!495991 () Bool)

(assert (=> bm!202840 (= call!202847 (validRegex!4126 (ite c!495991 (regTwo!19299 lt!1043780) (regOne!19298 lt!1043780))))))

(declare-fun b!3010607 () Bool)

(assert (=> b!3010607 (= e!1890361 call!202847)))

(declare-fun b!3010608 () Bool)

(declare-fun e!1890365 () Bool)

(assert (=> b!3010608 (= e!1890365 e!1890367)))

(declare-fun res!1240724 () Bool)

(assert (=> b!3010608 (=> (not res!1240724) (not e!1890367))))

(assert (=> b!3010608 (= res!1240724 call!202847)))

(declare-fun b!3010609 () Bool)

(assert (=> b!3010609 (= e!1890364 e!1890362)))

(assert (=> b!3010609 (= c!495991 ((_ is Union!9393) lt!1043780))))

(declare-fun bm!202841 () Bool)

(assert (=> bm!202841 (= call!202846 call!202845)))

(declare-fun b!3010610 () Bool)

(declare-fun res!1240727 () Bool)

(assert (=> b!3010610 (=> res!1240727 e!1890365)))

(assert (=> b!3010610 (= res!1240727 (not ((_ is Concat!14714) lt!1043780)))))

(assert (=> b!3010610 (= e!1890362 e!1890365)))

(declare-fun b!3010611 () Bool)

(assert (=> b!3010611 (= e!1890363 e!1890364)))

(declare-fun c!495992 () Bool)

(assert (=> b!3010611 (= c!495992 ((_ is Star!9393) lt!1043780))))

(declare-fun bm!202842 () Bool)

(assert (=> bm!202842 (= call!202845 (validRegex!4126 (ite c!495992 (reg!9722 lt!1043780) (ite c!495991 (regOne!19299 lt!1043780) (regTwo!19298 lt!1043780)))))))

(assert (= (and d!847710 (not res!1240726)) b!3010611))

(assert (= (and b!3010611 c!495992) b!3010603))

(assert (= (and b!3010611 (not c!495992)) b!3010609))

(assert (= (and b!3010603 res!1240725) b!3010604))

(assert (= (and b!3010609 c!495991) b!3010606))

(assert (= (and b!3010609 (not c!495991)) b!3010610))

(assert (= (and b!3010606 res!1240728) b!3010607))

(assert (= (and b!3010610 (not res!1240727)) b!3010608))

(assert (= (and b!3010608 res!1240724) b!3010605))

(assert (= (or b!3010606 b!3010605) bm!202841))

(assert (= (or b!3010607 b!3010608) bm!202840))

(assert (= (or b!3010604 bm!202841) bm!202842))

(declare-fun m!3357441 () Bool)

(assert (=> b!3010603 m!3357441))

(declare-fun m!3357443 () Bool)

(assert (=> bm!202840 m!3357443))

(declare-fun m!3357445 () Bool)

(assert (=> bm!202842 m!3357445))

(assert (=> d!847370 d!847710))

(assert (=> d!847370 d!847462))

(declare-fun b!3010612 () Bool)

(declare-fun e!1890371 () Bool)

(declare-fun lt!1043908 () Bool)

(assert (=> b!3010612 (= e!1890371 (not lt!1043908))))

(declare-fun b!3010613 () Bool)

(declare-fun res!1240736 () Bool)

(declare-fun e!1890373 () Bool)

(assert (=> b!3010613 (=> res!1240736 e!1890373)))

(declare-fun e!1890369 () Bool)

(assert (=> b!3010613 (= res!1240736 e!1890369)))

(declare-fun res!1240734 () Bool)

(assert (=> b!3010613 (=> (not res!1240734) (not e!1890369))))

(assert (=> b!3010613 (= res!1240734 lt!1043908)))

(declare-fun d!847712 () Bool)

(declare-fun e!1890368 () Bool)

(assert (=> d!847712 e!1890368))

(declare-fun c!495993 () Bool)

(assert (=> d!847712 (= c!495993 ((_ is EmptyExpr!9393) lt!1043692))))

(declare-fun e!1890370 () Bool)

(assert (=> d!847712 (= lt!1043908 e!1890370)))

(declare-fun c!495994 () Bool)

(assert (=> d!847712 (= c!495994 (isEmpty!19419 (_2!20172 (get!10936 lt!1043795))))))

(assert (=> d!847712 (validRegex!4126 lt!1043692)))

(assert (=> d!847712 (= (matchR!4275 lt!1043692 (_2!20172 (get!10936 lt!1043795))) lt!1043908)))

(declare-fun bm!202843 () Bool)

(declare-fun call!202848 () Bool)

(assert (=> bm!202843 (= call!202848 (isEmpty!19419 (_2!20172 (get!10936 lt!1043795))))))

(declare-fun b!3010614 () Bool)

(declare-fun e!1890372 () Bool)

(declare-fun e!1890374 () Bool)

(assert (=> b!3010614 (= e!1890372 e!1890374)))

(declare-fun res!1240735 () Bool)

(assert (=> b!3010614 (=> res!1240735 e!1890374)))

(assert (=> b!3010614 (= res!1240735 call!202848)))

(declare-fun b!3010615 () Bool)

(declare-fun res!1240730 () Bool)

(assert (=> b!3010615 (=> res!1240730 e!1890373)))

(assert (=> b!3010615 (= res!1240730 (not ((_ is ElementMatch!9393) lt!1043692)))))

(assert (=> b!3010615 (= e!1890371 e!1890373)))

(declare-fun b!3010616 () Bool)

(assert (=> b!3010616 (= e!1890368 e!1890371)))

(declare-fun c!495995 () Bool)

(assert (=> b!3010616 (= c!495995 ((_ is EmptyLang!9393) lt!1043692))))

(declare-fun b!3010617 () Bool)

(assert (=> b!3010617 (= e!1890369 (= (head!6703 (_2!20172 (get!10936 lt!1043795))) (c!495525 lt!1043692)))))

(declare-fun b!3010618 () Bool)

(assert (=> b!3010618 (= e!1890370 (nullable!3046 lt!1043692))))

(declare-fun b!3010619 () Bool)

(declare-fun res!1240733 () Bool)

(assert (=> b!3010619 (=> (not res!1240733) (not e!1890369))))

(assert (=> b!3010619 (= res!1240733 (isEmpty!19419 (tail!4929 (_2!20172 (get!10936 lt!1043795)))))))

(declare-fun b!3010620 () Bool)

(assert (=> b!3010620 (= e!1890374 (not (= (head!6703 (_2!20172 (get!10936 lt!1043795))) (c!495525 lt!1043692))))))

(declare-fun b!3010621 () Bool)

(assert (=> b!3010621 (= e!1890370 (matchR!4275 (derivativeStep!2644 lt!1043692 (head!6703 (_2!20172 (get!10936 lt!1043795)))) (tail!4929 (_2!20172 (get!10936 lt!1043795)))))))

(declare-fun b!3010622 () Bool)

(declare-fun res!1240731 () Bool)

(assert (=> b!3010622 (=> (not res!1240731) (not e!1890369))))

(assert (=> b!3010622 (= res!1240731 (not call!202848))))

(declare-fun b!3010623 () Bool)

(declare-fun res!1240729 () Bool)

(assert (=> b!3010623 (=> res!1240729 e!1890374)))

(assert (=> b!3010623 (= res!1240729 (not (isEmpty!19419 (tail!4929 (_2!20172 (get!10936 lt!1043795))))))))

(declare-fun b!3010624 () Bool)

(assert (=> b!3010624 (= e!1890368 (= lt!1043908 call!202848))))

(declare-fun b!3010625 () Bool)

(assert (=> b!3010625 (= e!1890373 e!1890372)))

(declare-fun res!1240732 () Bool)

(assert (=> b!3010625 (=> (not res!1240732) (not e!1890372))))

(assert (=> b!3010625 (= res!1240732 (not lt!1043908))))

(assert (= (and d!847712 c!495994) b!3010618))

(assert (= (and d!847712 (not c!495994)) b!3010621))

(assert (= (and d!847712 c!495993) b!3010624))

(assert (= (and d!847712 (not c!495993)) b!3010616))

(assert (= (and b!3010616 c!495995) b!3010612))

(assert (= (and b!3010616 (not c!495995)) b!3010615))

(assert (= (and b!3010615 (not res!1240730)) b!3010613))

(assert (= (and b!3010613 res!1240734) b!3010622))

(assert (= (and b!3010622 res!1240731) b!3010619))

(assert (= (and b!3010619 res!1240733) b!3010617))

(assert (= (and b!3010613 (not res!1240736)) b!3010625))

(assert (= (and b!3010625 res!1240732) b!3010614))

(assert (= (and b!3010614 (not res!1240735)) b!3010623))

(assert (= (and b!3010623 (not res!1240729)) b!3010620))

(assert (= (or b!3010624 b!3010614 b!3010622) bm!202843))

(declare-fun m!3357447 () Bool)

(assert (=> b!3010617 m!3357447))

(assert (=> b!3010621 m!3357447))

(assert (=> b!3010621 m!3357447))

(declare-fun m!3357449 () Bool)

(assert (=> b!3010621 m!3357449))

(declare-fun m!3357451 () Bool)

(assert (=> b!3010621 m!3357451))

(assert (=> b!3010621 m!3357449))

(assert (=> b!3010621 m!3357451))

(declare-fun m!3357453 () Bool)

(assert (=> b!3010621 m!3357453))

(assert (=> b!3010620 m!3357447))

(assert (=> b!3010618 m!3356521))

(assert (=> b!3010619 m!3357451))

(assert (=> b!3010619 m!3357451))

(declare-fun m!3357455 () Bool)

(assert (=> b!3010619 m!3357455))

(assert (=> b!3010623 m!3357451))

(assert (=> b!3010623 m!3357451))

(assert (=> b!3010623 m!3357455))

(declare-fun m!3357457 () Bool)

(assert (=> bm!202843 m!3357457))

(assert (=> d!847712 m!3357457))

(assert (=> d!847712 m!3356523))

(assert (=> b!3009620 d!847712))

(assert (=> b!3009620 d!847584))

(assert (=> b!3009332 d!847620))

(assert (=> b!3009332 d!847514))

(assert (=> b!3009672 d!847450))

(declare-fun b!3010626 () Bool)

(declare-fun e!1890375 () Bool)

(assert (=> b!3010626 (= e!1890375 tp_is_empty!16349)))

(declare-fun b!3010627 () Bool)

(declare-fun tp!955347 () Bool)

(declare-fun tp!955350 () Bool)

(assert (=> b!3010627 (= e!1890375 (and tp!955347 tp!955350))))

(assert (=> b!3009783 (= tp!955334 e!1890375)))

(declare-fun b!3010629 () Bool)

(declare-fun tp!955349 () Bool)

(declare-fun tp!955348 () Bool)

(assert (=> b!3010629 (= e!1890375 (and tp!955349 tp!955348))))

(declare-fun b!3010628 () Bool)

(declare-fun tp!955346 () Bool)

(assert (=> b!3010628 (= e!1890375 tp!955346)))

(assert (= (and b!3009783 ((_ is ElementMatch!9393) (regOne!19299 (regOne!19299 r!17423)))) b!3010626))

(assert (= (and b!3009783 ((_ is Concat!14714) (regOne!19299 (regOne!19299 r!17423)))) b!3010627))

(assert (= (and b!3009783 ((_ is Star!9393) (regOne!19299 (regOne!19299 r!17423)))) b!3010628))

(assert (= (and b!3009783 ((_ is Union!9393) (regOne!19299 (regOne!19299 r!17423)))) b!3010629))

(declare-fun b!3010630 () Bool)

(declare-fun e!1890376 () Bool)

(assert (=> b!3010630 (= e!1890376 tp_is_empty!16349)))

(declare-fun b!3010631 () Bool)

(declare-fun tp!955352 () Bool)

(declare-fun tp!955355 () Bool)

(assert (=> b!3010631 (= e!1890376 (and tp!955352 tp!955355))))

(assert (=> b!3009783 (= tp!955333 e!1890376)))

(declare-fun b!3010633 () Bool)

(declare-fun tp!955354 () Bool)

(declare-fun tp!955353 () Bool)

(assert (=> b!3010633 (= e!1890376 (and tp!955354 tp!955353))))

(declare-fun b!3010632 () Bool)

(declare-fun tp!955351 () Bool)

(assert (=> b!3010632 (= e!1890376 tp!955351)))

(assert (= (and b!3009783 ((_ is ElementMatch!9393) (regTwo!19299 (regOne!19299 r!17423)))) b!3010630))

(assert (= (and b!3009783 ((_ is Concat!14714) (regTwo!19299 (regOne!19299 r!17423)))) b!3010631))

(assert (= (and b!3009783 ((_ is Star!9393) (regTwo!19299 (regOne!19299 r!17423)))) b!3010632))

(assert (= (and b!3009783 ((_ is Union!9393) (regTwo!19299 (regOne!19299 r!17423)))) b!3010633))

(declare-fun b!3010634 () Bool)

(declare-fun e!1890377 () Bool)

(declare-fun tp!955356 () Bool)

(assert (=> b!3010634 (= e!1890377 (and tp_is_empty!16349 tp!955356))))

(assert (=> b!3009779 (= tp!955330 e!1890377)))

(assert (= (and b!3009779 ((_ is Cons!35134) (t!234323 (t!234323 s!11993)))) b!3010634))

(declare-fun b!3010635 () Bool)

(declare-fun e!1890378 () Bool)

(assert (=> b!3010635 (= e!1890378 tp_is_empty!16349)))

(declare-fun b!3010636 () Bool)

(declare-fun tp!955358 () Bool)

(declare-fun tp!955361 () Bool)

(assert (=> b!3010636 (= e!1890378 (and tp!955358 tp!955361))))

(assert (=> b!3009769 (= tp!955318 e!1890378)))

(declare-fun b!3010638 () Bool)

(declare-fun tp!955360 () Bool)

(declare-fun tp!955359 () Bool)

(assert (=> b!3010638 (= e!1890378 (and tp!955360 tp!955359))))

(declare-fun b!3010637 () Bool)

(declare-fun tp!955357 () Bool)

(assert (=> b!3010637 (= e!1890378 tp!955357)))

(assert (= (and b!3009769 ((_ is ElementMatch!9393) (reg!9722 (regOne!19298 r!17423)))) b!3010635))

(assert (= (and b!3009769 ((_ is Concat!14714) (reg!9722 (regOne!19298 r!17423)))) b!3010636))

(assert (= (and b!3009769 ((_ is Star!9393) (reg!9722 (regOne!19298 r!17423)))) b!3010637))

(assert (= (and b!3009769 ((_ is Union!9393) (reg!9722 (regOne!19298 r!17423)))) b!3010638))

(declare-fun b!3010639 () Bool)

(declare-fun e!1890379 () Bool)

(assert (=> b!3010639 (= e!1890379 tp_is_empty!16349)))

(declare-fun b!3010640 () Bool)

(declare-fun tp!955363 () Bool)

(declare-fun tp!955366 () Bool)

(assert (=> b!3010640 (= e!1890379 (and tp!955363 tp!955366))))

(assert (=> b!3009789 (= tp!955342 e!1890379)))

(declare-fun b!3010642 () Bool)

(declare-fun tp!955365 () Bool)

(declare-fun tp!955364 () Bool)

(assert (=> b!3010642 (= e!1890379 (and tp!955365 tp!955364))))

(declare-fun b!3010641 () Bool)

(declare-fun tp!955362 () Bool)

(assert (=> b!3010641 (= e!1890379 tp!955362)))

(assert (= (and b!3009789 ((_ is ElementMatch!9393) (regOne!19298 (reg!9722 r!17423)))) b!3010639))

(assert (= (and b!3009789 ((_ is Concat!14714) (regOne!19298 (reg!9722 r!17423)))) b!3010640))

(assert (= (and b!3009789 ((_ is Star!9393) (regOne!19298 (reg!9722 r!17423)))) b!3010641))

(assert (= (and b!3009789 ((_ is Union!9393) (regOne!19298 (reg!9722 r!17423)))) b!3010642))

(declare-fun b!3010643 () Bool)

(declare-fun e!1890380 () Bool)

(assert (=> b!3010643 (= e!1890380 tp_is_empty!16349)))

(declare-fun b!3010644 () Bool)

(declare-fun tp!955368 () Bool)

(declare-fun tp!955371 () Bool)

(assert (=> b!3010644 (= e!1890380 (and tp!955368 tp!955371))))

(assert (=> b!3009789 (= tp!955345 e!1890380)))

(declare-fun b!3010646 () Bool)

(declare-fun tp!955370 () Bool)

(declare-fun tp!955369 () Bool)

(assert (=> b!3010646 (= e!1890380 (and tp!955370 tp!955369))))

(declare-fun b!3010645 () Bool)

(declare-fun tp!955367 () Bool)

(assert (=> b!3010645 (= e!1890380 tp!955367)))

(assert (= (and b!3009789 ((_ is ElementMatch!9393) (regTwo!19298 (reg!9722 r!17423)))) b!3010643))

(assert (= (and b!3009789 ((_ is Concat!14714) (regTwo!19298 (reg!9722 r!17423)))) b!3010644))

(assert (= (and b!3009789 ((_ is Star!9393) (regTwo!19298 (reg!9722 r!17423)))) b!3010645))

(assert (= (and b!3009789 ((_ is Union!9393) (regTwo!19298 (reg!9722 r!17423)))) b!3010646))

(declare-fun b!3010647 () Bool)

(declare-fun e!1890381 () Bool)

(assert (=> b!3010647 (= e!1890381 tp_is_empty!16349)))

(declare-fun b!3010648 () Bool)

(declare-fun tp!955373 () Bool)

(declare-fun tp!955376 () Bool)

(assert (=> b!3010648 (= e!1890381 (and tp!955373 tp!955376))))

(assert (=> b!3009774 (= tp!955326 e!1890381)))

(declare-fun b!3010650 () Bool)

(declare-fun tp!955375 () Bool)

(declare-fun tp!955374 () Bool)

(assert (=> b!3010650 (= e!1890381 (and tp!955375 tp!955374))))

(declare-fun b!3010649 () Bool)

(declare-fun tp!955372 () Bool)

(assert (=> b!3010649 (= e!1890381 tp!955372)))

(assert (= (and b!3009774 ((_ is ElementMatch!9393) (regOne!19299 (regTwo!19298 r!17423)))) b!3010647))

(assert (= (and b!3009774 ((_ is Concat!14714) (regOne!19299 (regTwo!19298 r!17423)))) b!3010648))

(assert (= (and b!3009774 ((_ is Star!9393) (regOne!19299 (regTwo!19298 r!17423)))) b!3010649))

(assert (= (and b!3009774 ((_ is Union!9393) (regOne!19299 (regTwo!19298 r!17423)))) b!3010650))

(declare-fun b!3010651 () Bool)

(declare-fun e!1890382 () Bool)

(assert (=> b!3010651 (= e!1890382 tp_is_empty!16349)))

(declare-fun b!3010652 () Bool)

(declare-fun tp!955378 () Bool)

(declare-fun tp!955381 () Bool)

(assert (=> b!3010652 (= e!1890382 (and tp!955378 tp!955381))))

(assert (=> b!3009774 (= tp!955325 e!1890382)))

(declare-fun b!3010654 () Bool)

(declare-fun tp!955380 () Bool)

(declare-fun tp!955379 () Bool)

(assert (=> b!3010654 (= e!1890382 (and tp!955380 tp!955379))))

(declare-fun b!3010653 () Bool)

(declare-fun tp!955377 () Bool)

(assert (=> b!3010653 (= e!1890382 tp!955377)))

(assert (= (and b!3009774 ((_ is ElementMatch!9393) (regTwo!19299 (regTwo!19298 r!17423)))) b!3010651))

(assert (= (and b!3009774 ((_ is Concat!14714) (regTwo!19299 (regTwo!19298 r!17423)))) b!3010652))

(assert (= (and b!3009774 ((_ is Star!9393) (regTwo!19299 (regTwo!19298 r!17423)))) b!3010653))

(assert (= (and b!3009774 ((_ is Union!9393) (regTwo!19299 (regTwo!19298 r!17423)))) b!3010654))

(declare-fun b!3010655 () Bool)

(declare-fun e!1890383 () Bool)

(assert (=> b!3010655 (= e!1890383 tp_is_empty!16349)))

(declare-fun b!3010656 () Bool)

(declare-fun tp!955383 () Bool)

(declare-fun tp!955386 () Bool)

(assert (=> b!3010656 (= e!1890383 (and tp!955383 tp!955386))))

(assert (=> b!3009772 (= tp!955324 e!1890383)))

(declare-fun b!3010658 () Bool)

(declare-fun tp!955385 () Bool)

(declare-fun tp!955384 () Bool)

(assert (=> b!3010658 (= e!1890383 (and tp!955385 tp!955384))))

(declare-fun b!3010657 () Bool)

(declare-fun tp!955382 () Bool)

(assert (=> b!3010657 (= e!1890383 tp!955382)))

(assert (= (and b!3009772 ((_ is ElementMatch!9393) (regOne!19298 (regTwo!19298 r!17423)))) b!3010655))

(assert (= (and b!3009772 ((_ is Concat!14714) (regOne!19298 (regTwo!19298 r!17423)))) b!3010656))

(assert (= (and b!3009772 ((_ is Star!9393) (regOne!19298 (regTwo!19298 r!17423)))) b!3010657))

(assert (= (and b!3009772 ((_ is Union!9393) (regOne!19298 (regTwo!19298 r!17423)))) b!3010658))

(declare-fun b!3010659 () Bool)

(declare-fun e!1890384 () Bool)

(assert (=> b!3010659 (= e!1890384 tp_is_empty!16349)))

(declare-fun b!3010660 () Bool)

(declare-fun tp!955388 () Bool)

(declare-fun tp!955391 () Bool)

(assert (=> b!3010660 (= e!1890384 (and tp!955388 tp!955391))))

(assert (=> b!3009772 (= tp!955327 e!1890384)))

(declare-fun b!3010662 () Bool)

(declare-fun tp!955390 () Bool)

(declare-fun tp!955389 () Bool)

(assert (=> b!3010662 (= e!1890384 (and tp!955390 tp!955389))))

(declare-fun b!3010661 () Bool)

(declare-fun tp!955387 () Bool)

(assert (=> b!3010661 (= e!1890384 tp!955387)))

(assert (= (and b!3009772 ((_ is ElementMatch!9393) (regTwo!19298 (regTwo!19298 r!17423)))) b!3010659))

(assert (= (and b!3009772 ((_ is Concat!14714) (regTwo!19298 (regTwo!19298 r!17423)))) b!3010660))

(assert (= (and b!3009772 ((_ is Star!9393) (regTwo!19298 (regTwo!19298 r!17423)))) b!3010661))

(assert (= (and b!3009772 ((_ is Union!9393) (regTwo!19298 (regTwo!19298 r!17423)))) b!3010662))

(declare-fun b!3010677 () Bool)

(declare-fun e!1890392 () Bool)

(assert (=> b!3010677 (= e!1890392 tp_is_empty!16349)))

(declare-fun b!3010678 () Bool)

(declare-fun tp!955393 () Bool)

(declare-fun tp!955396 () Bool)

(assert (=> b!3010678 (= e!1890392 (and tp!955393 tp!955396))))

(assert (=> b!3009773 (= tp!955323 e!1890392)))

(declare-fun b!3010680 () Bool)

(declare-fun tp!955395 () Bool)

(declare-fun tp!955394 () Bool)

(assert (=> b!3010680 (= e!1890392 (and tp!955395 tp!955394))))

(declare-fun b!3010679 () Bool)

(declare-fun tp!955392 () Bool)

(assert (=> b!3010679 (= e!1890392 tp!955392)))

(assert (= (and b!3009773 ((_ is ElementMatch!9393) (reg!9722 (regTwo!19298 r!17423)))) b!3010677))

(assert (= (and b!3009773 ((_ is Concat!14714) (reg!9722 (regTwo!19298 r!17423)))) b!3010678))

(assert (= (and b!3009773 ((_ is Star!9393) (reg!9722 (regTwo!19298 r!17423)))) b!3010679))

(assert (= (and b!3009773 ((_ is Union!9393) (reg!9722 (regTwo!19298 r!17423)))) b!3010680))

(declare-fun b!3010681 () Bool)

(declare-fun e!1890393 () Bool)

(assert (=> b!3010681 (= e!1890393 tp_is_empty!16349)))

(declare-fun b!3010682 () Bool)

(declare-fun tp!955398 () Bool)

(declare-fun tp!955401 () Bool)

(assert (=> b!3010682 (= e!1890393 (and tp!955398 tp!955401))))

(assert (=> b!3009768 (= tp!955319 e!1890393)))

(declare-fun b!3010684 () Bool)

(declare-fun tp!955400 () Bool)

(declare-fun tp!955399 () Bool)

(assert (=> b!3010684 (= e!1890393 (and tp!955400 tp!955399))))

(declare-fun b!3010683 () Bool)

(declare-fun tp!955397 () Bool)

(assert (=> b!3010683 (= e!1890393 tp!955397)))

(assert (= (and b!3009768 ((_ is ElementMatch!9393) (regOne!19298 (regOne!19298 r!17423)))) b!3010681))

(assert (= (and b!3009768 ((_ is Concat!14714) (regOne!19298 (regOne!19298 r!17423)))) b!3010682))

(assert (= (and b!3009768 ((_ is Star!9393) (regOne!19298 (regOne!19298 r!17423)))) b!3010683))

(assert (= (and b!3009768 ((_ is Union!9393) (regOne!19298 (regOne!19298 r!17423)))) b!3010684))

(declare-fun b!3010685 () Bool)

(declare-fun e!1890394 () Bool)

(assert (=> b!3010685 (= e!1890394 tp_is_empty!16349)))

(declare-fun b!3010686 () Bool)

(declare-fun tp!955403 () Bool)

(declare-fun tp!955406 () Bool)

(assert (=> b!3010686 (= e!1890394 (and tp!955403 tp!955406))))

(assert (=> b!3009768 (= tp!955322 e!1890394)))

(declare-fun b!3010688 () Bool)

(declare-fun tp!955405 () Bool)

(declare-fun tp!955404 () Bool)

(assert (=> b!3010688 (= e!1890394 (and tp!955405 tp!955404))))

(declare-fun b!3010687 () Bool)

(declare-fun tp!955402 () Bool)

(assert (=> b!3010687 (= e!1890394 tp!955402)))

(assert (= (and b!3009768 ((_ is ElementMatch!9393) (regTwo!19298 (regOne!19298 r!17423)))) b!3010685))

(assert (= (and b!3009768 ((_ is Concat!14714) (regTwo!19298 (regOne!19298 r!17423)))) b!3010686))

(assert (= (and b!3009768 ((_ is Star!9393) (regTwo!19298 (regOne!19298 r!17423)))) b!3010687))

(assert (= (and b!3009768 ((_ is Union!9393) (regTwo!19298 (regOne!19298 r!17423)))) b!3010688))

(declare-fun b!3010689 () Bool)

(declare-fun e!1890395 () Bool)

(assert (=> b!3010689 (= e!1890395 tp_is_empty!16349)))

(declare-fun b!3010690 () Bool)

(declare-fun tp!955408 () Bool)

(declare-fun tp!955411 () Bool)

(assert (=> b!3010690 (= e!1890395 (and tp!955408 tp!955411))))

(assert (=> b!3009791 (= tp!955344 e!1890395)))

(declare-fun b!3010692 () Bool)

(declare-fun tp!955410 () Bool)

(declare-fun tp!955409 () Bool)

(assert (=> b!3010692 (= e!1890395 (and tp!955410 tp!955409))))

(declare-fun b!3010691 () Bool)

(declare-fun tp!955407 () Bool)

(assert (=> b!3010691 (= e!1890395 tp!955407)))

(assert (= (and b!3009791 ((_ is ElementMatch!9393) (regOne!19299 (reg!9722 r!17423)))) b!3010689))

(assert (= (and b!3009791 ((_ is Concat!14714) (regOne!19299 (reg!9722 r!17423)))) b!3010690))

(assert (= (and b!3009791 ((_ is Star!9393) (regOne!19299 (reg!9722 r!17423)))) b!3010691))

(assert (= (and b!3009791 ((_ is Union!9393) (regOne!19299 (reg!9722 r!17423)))) b!3010692))

(declare-fun b!3010693 () Bool)

(declare-fun e!1890396 () Bool)

(assert (=> b!3010693 (= e!1890396 tp_is_empty!16349)))

(declare-fun b!3010694 () Bool)

(declare-fun tp!955413 () Bool)

(declare-fun tp!955416 () Bool)

(assert (=> b!3010694 (= e!1890396 (and tp!955413 tp!955416))))

(assert (=> b!3009791 (= tp!955343 e!1890396)))

(declare-fun b!3010696 () Bool)

(declare-fun tp!955415 () Bool)

(declare-fun tp!955414 () Bool)

(assert (=> b!3010696 (= e!1890396 (and tp!955415 tp!955414))))

(declare-fun b!3010695 () Bool)

(declare-fun tp!955412 () Bool)

(assert (=> b!3010695 (= e!1890396 tp!955412)))

(assert (= (and b!3009791 ((_ is ElementMatch!9393) (regTwo!19299 (reg!9722 r!17423)))) b!3010693))

(assert (= (and b!3009791 ((_ is Concat!14714) (regTwo!19299 (reg!9722 r!17423)))) b!3010694))

(assert (= (and b!3009791 ((_ is Star!9393) (regTwo!19299 (reg!9722 r!17423)))) b!3010695))

(assert (= (and b!3009791 ((_ is Union!9393) (regTwo!19299 (reg!9722 r!17423)))) b!3010696))

(declare-fun b!3010697 () Bool)

(declare-fun e!1890397 () Bool)

(assert (=> b!3010697 (= e!1890397 tp_is_empty!16349)))

(declare-fun b!3010698 () Bool)

(declare-fun tp!955418 () Bool)

(declare-fun tp!955421 () Bool)

(assert (=> b!3010698 (= e!1890397 (and tp!955418 tp!955421))))

(assert (=> b!3009786 (= tp!955336 e!1890397)))

(declare-fun b!3010700 () Bool)

(declare-fun tp!955420 () Bool)

(declare-fun tp!955419 () Bool)

(assert (=> b!3010700 (= e!1890397 (and tp!955420 tp!955419))))

(declare-fun b!3010699 () Bool)

(declare-fun tp!955417 () Bool)

(assert (=> b!3010699 (= e!1890397 tp!955417)))

(assert (= (and b!3009786 ((_ is ElementMatch!9393) (reg!9722 (regTwo!19299 r!17423)))) b!3010697))

(assert (= (and b!3009786 ((_ is Concat!14714) (reg!9722 (regTwo!19299 r!17423)))) b!3010698))

(assert (= (and b!3009786 ((_ is Star!9393) (reg!9722 (regTwo!19299 r!17423)))) b!3010699))

(assert (= (and b!3009786 ((_ is Union!9393) (reg!9722 (regTwo!19299 r!17423)))) b!3010700))

(declare-fun b!3010701 () Bool)

(declare-fun e!1890398 () Bool)

(assert (=> b!3010701 (= e!1890398 tp_is_empty!16349)))

(declare-fun b!3010702 () Bool)

(declare-fun tp!955423 () Bool)

(declare-fun tp!955426 () Bool)

(assert (=> b!3010702 (= e!1890398 (and tp!955423 tp!955426))))

(assert (=> b!3009787 (= tp!955339 e!1890398)))

(declare-fun b!3010704 () Bool)

(declare-fun tp!955425 () Bool)

(declare-fun tp!955424 () Bool)

(assert (=> b!3010704 (= e!1890398 (and tp!955425 tp!955424))))

(declare-fun b!3010703 () Bool)

(declare-fun tp!955422 () Bool)

(assert (=> b!3010703 (= e!1890398 tp!955422)))

(assert (= (and b!3009787 ((_ is ElementMatch!9393) (regOne!19299 (regTwo!19299 r!17423)))) b!3010701))

(assert (= (and b!3009787 ((_ is Concat!14714) (regOne!19299 (regTwo!19299 r!17423)))) b!3010702))

(assert (= (and b!3009787 ((_ is Star!9393) (regOne!19299 (regTwo!19299 r!17423)))) b!3010703))

(assert (= (and b!3009787 ((_ is Union!9393) (regOne!19299 (regTwo!19299 r!17423)))) b!3010704))

(declare-fun b!3010705 () Bool)

(declare-fun e!1890399 () Bool)

(assert (=> b!3010705 (= e!1890399 tp_is_empty!16349)))

(declare-fun b!3010706 () Bool)

(declare-fun tp!955428 () Bool)

(declare-fun tp!955431 () Bool)

(assert (=> b!3010706 (= e!1890399 (and tp!955428 tp!955431))))

(assert (=> b!3009787 (= tp!955338 e!1890399)))

(declare-fun b!3010708 () Bool)

(declare-fun tp!955430 () Bool)

(declare-fun tp!955429 () Bool)

(assert (=> b!3010708 (= e!1890399 (and tp!955430 tp!955429))))

(declare-fun b!3010707 () Bool)

(declare-fun tp!955427 () Bool)

(assert (=> b!3010707 (= e!1890399 tp!955427)))

(assert (= (and b!3009787 ((_ is ElementMatch!9393) (regTwo!19299 (regTwo!19299 r!17423)))) b!3010705))

(assert (= (and b!3009787 ((_ is Concat!14714) (regTwo!19299 (regTwo!19299 r!17423)))) b!3010706))

(assert (= (and b!3009787 ((_ is Star!9393) (regTwo!19299 (regTwo!19299 r!17423)))) b!3010707))

(assert (= (and b!3009787 ((_ is Union!9393) (regTwo!19299 (regTwo!19299 r!17423)))) b!3010708))

(declare-fun b!3010719 () Bool)

(declare-fun e!1890405 () Bool)

(assert (=> b!3010719 (= e!1890405 tp_is_empty!16349)))

(declare-fun b!3010720 () Bool)

(declare-fun tp!955433 () Bool)

(declare-fun tp!955436 () Bool)

(assert (=> b!3010720 (= e!1890405 (and tp!955433 tp!955436))))

(assert (=> b!3009782 (= tp!955331 e!1890405)))

(declare-fun b!3010722 () Bool)

(declare-fun tp!955435 () Bool)

(declare-fun tp!955434 () Bool)

(assert (=> b!3010722 (= e!1890405 (and tp!955435 tp!955434))))

(declare-fun b!3010721 () Bool)

(declare-fun tp!955432 () Bool)

(assert (=> b!3010721 (= e!1890405 tp!955432)))

(assert (= (and b!3009782 ((_ is ElementMatch!9393) (reg!9722 (regOne!19299 r!17423)))) b!3010719))

(assert (= (and b!3009782 ((_ is Concat!14714) (reg!9722 (regOne!19299 r!17423)))) b!3010720))

(assert (= (and b!3009782 ((_ is Star!9393) (reg!9722 (regOne!19299 r!17423)))) b!3010721))

(assert (= (and b!3009782 ((_ is Union!9393) (reg!9722 (regOne!19299 r!17423)))) b!3010722))

(declare-fun b!3010723 () Bool)

(declare-fun e!1890406 () Bool)

(assert (=> b!3010723 (= e!1890406 tp_is_empty!16349)))

(declare-fun b!3010724 () Bool)

(declare-fun tp!955438 () Bool)

(declare-fun tp!955441 () Bool)

(assert (=> b!3010724 (= e!1890406 (and tp!955438 tp!955441))))

(assert (=> b!3009785 (= tp!955337 e!1890406)))

(declare-fun b!3010726 () Bool)

(declare-fun tp!955440 () Bool)

(declare-fun tp!955439 () Bool)

(assert (=> b!3010726 (= e!1890406 (and tp!955440 tp!955439))))

(declare-fun b!3010725 () Bool)

(declare-fun tp!955437 () Bool)

(assert (=> b!3010725 (= e!1890406 tp!955437)))

(assert (= (and b!3009785 ((_ is ElementMatch!9393) (regOne!19298 (regTwo!19299 r!17423)))) b!3010723))

(assert (= (and b!3009785 ((_ is Concat!14714) (regOne!19298 (regTwo!19299 r!17423)))) b!3010724))

(assert (= (and b!3009785 ((_ is Star!9393) (regOne!19298 (regTwo!19299 r!17423)))) b!3010725))

(assert (= (and b!3009785 ((_ is Union!9393) (regOne!19298 (regTwo!19299 r!17423)))) b!3010726))

(declare-fun b!3010727 () Bool)

(declare-fun e!1890407 () Bool)

(assert (=> b!3010727 (= e!1890407 tp_is_empty!16349)))

(declare-fun b!3010728 () Bool)

(declare-fun tp!955443 () Bool)

(declare-fun tp!955446 () Bool)

(assert (=> b!3010728 (= e!1890407 (and tp!955443 tp!955446))))

(assert (=> b!3009785 (= tp!955340 e!1890407)))

(declare-fun b!3010730 () Bool)

(declare-fun tp!955445 () Bool)

(declare-fun tp!955444 () Bool)

(assert (=> b!3010730 (= e!1890407 (and tp!955445 tp!955444))))

(declare-fun b!3010729 () Bool)

(declare-fun tp!955442 () Bool)

(assert (=> b!3010729 (= e!1890407 tp!955442)))

(assert (= (and b!3009785 ((_ is ElementMatch!9393) (regTwo!19298 (regTwo!19299 r!17423)))) b!3010727))

(assert (= (and b!3009785 ((_ is Concat!14714) (regTwo!19298 (regTwo!19299 r!17423)))) b!3010728))

(assert (= (and b!3009785 ((_ is Star!9393) (regTwo!19298 (regTwo!19299 r!17423)))) b!3010729))

(assert (= (and b!3009785 ((_ is Union!9393) (regTwo!19298 (regTwo!19299 r!17423)))) b!3010730))

(declare-fun b!3010731 () Bool)

(declare-fun e!1890408 () Bool)

(assert (=> b!3010731 (= e!1890408 tp_is_empty!16349)))

(declare-fun b!3010732 () Bool)

(declare-fun tp!955448 () Bool)

(declare-fun tp!955451 () Bool)

(assert (=> b!3010732 (= e!1890408 (and tp!955448 tp!955451))))

(assert (=> b!3009770 (= tp!955321 e!1890408)))

(declare-fun b!3010734 () Bool)

(declare-fun tp!955450 () Bool)

(declare-fun tp!955449 () Bool)

(assert (=> b!3010734 (= e!1890408 (and tp!955450 tp!955449))))

(declare-fun b!3010733 () Bool)

(declare-fun tp!955447 () Bool)

(assert (=> b!3010733 (= e!1890408 tp!955447)))

(assert (= (and b!3009770 ((_ is ElementMatch!9393) (regOne!19299 (regOne!19298 r!17423)))) b!3010731))

(assert (= (and b!3009770 ((_ is Concat!14714) (regOne!19299 (regOne!19298 r!17423)))) b!3010732))

(assert (= (and b!3009770 ((_ is Star!9393) (regOne!19299 (regOne!19298 r!17423)))) b!3010733))

(assert (= (and b!3009770 ((_ is Union!9393) (regOne!19299 (regOne!19298 r!17423)))) b!3010734))

(declare-fun b!3010735 () Bool)

(declare-fun e!1890409 () Bool)

(assert (=> b!3010735 (= e!1890409 tp_is_empty!16349)))

(declare-fun b!3010736 () Bool)

(declare-fun tp!955453 () Bool)

(declare-fun tp!955456 () Bool)

(assert (=> b!3010736 (= e!1890409 (and tp!955453 tp!955456))))

(assert (=> b!3009770 (= tp!955320 e!1890409)))

(declare-fun b!3010738 () Bool)

(declare-fun tp!955455 () Bool)

(declare-fun tp!955454 () Bool)

(assert (=> b!3010738 (= e!1890409 (and tp!955455 tp!955454))))

(declare-fun b!3010737 () Bool)

(declare-fun tp!955452 () Bool)

(assert (=> b!3010737 (= e!1890409 tp!955452)))

(assert (= (and b!3009770 ((_ is ElementMatch!9393) (regTwo!19299 (regOne!19298 r!17423)))) b!3010735))

(assert (= (and b!3009770 ((_ is Concat!14714) (regTwo!19299 (regOne!19298 r!17423)))) b!3010736))

(assert (= (and b!3009770 ((_ is Star!9393) (regTwo!19299 (regOne!19298 r!17423)))) b!3010737))

(assert (= (and b!3009770 ((_ is Union!9393) (regTwo!19299 (regOne!19298 r!17423)))) b!3010738))

(declare-fun b!3010748 () Bool)

(declare-fun e!1890417 () Bool)

(assert (=> b!3010748 (= e!1890417 tp_is_empty!16349)))

(declare-fun b!3010749 () Bool)

(declare-fun tp!955458 () Bool)

(declare-fun tp!955461 () Bool)

(assert (=> b!3010749 (= e!1890417 (and tp!955458 tp!955461))))

(assert (=> b!3009781 (= tp!955332 e!1890417)))

(declare-fun b!3010751 () Bool)

(declare-fun tp!955460 () Bool)

(declare-fun tp!955459 () Bool)

(assert (=> b!3010751 (= e!1890417 (and tp!955460 tp!955459))))

(declare-fun b!3010750 () Bool)

(declare-fun tp!955457 () Bool)

(assert (=> b!3010750 (= e!1890417 tp!955457)))

(assert (= (and b!3009781 ((_ is ElementMatch!9393) (regOne!19298 (regOne!19299 r!17423)))) b!3010748))

(assert (= (and b!3009781 ((_ is Concat!14714) (regOne!19298 (regOne!19299 r!17423)))) b!3010749))

(assert (= (and b!3009781 ((_ is Star!9393) (regOne!19298 (regOne!19299 r!17423)))) b!3010750))

(assert (= (and b!3009781 ((_ is Union!9393) (regOne!19298 (regOne!19299 r!17423)))) b!3010751))

(declare-fun b!3010752 () Bool)

(declare-fun e!1890418 () Bool)

(assert (=> b!3010752 (= e!1890418 tp_is_empty!16349)))

(declare-fun b!3010753 () Bool)

(declare-fun tp!955463 () Bool)

(declare-fun tp!955466 () Bool)

(assert (=> b!3010753 (= e!1890418 (and tp!955463 tp!955466))))

(assert (=> b!3009781 (= tp!955335 e!1890418)))

(declare-fun b!3010755 () Bool)

(declare-fun tp!955465 () Bool)

(declare-fun tp!955464 () Bool)

(assert (=> b!3010755 (= e!1890418 (and tp!955465 tp!955464))))

(declare-fun b!3010754 () Bool)

(declare-fun tp!955462 () Bool)

(assert (=> b!3010754 (= e!1890418 tp!955462)))

(assert (= (and b!3009781 ((_ is ElementMatch!9393) (regTwo!19298 (regOne!19299 r!17423)))) b!3010752))

(assert (= (and b!3009781 ((_ is Concat!14714) (regTwo!19298 (regOne!19299 r!17423)))) b!3010753))

(assert (= (and b!3009781 ((_ is Star!9393) (regTwo!19298 (regOne!19299 r!17423)))) b!3010754))

(assert (= (and b!3009781 ((_ is Union!9393) (regTwo!19298 (regOne!19299 r!17423)))) b!3010755))

(declare-fun b!3010756 () Bool)

(declare-fun e!1890419 () Bool)

(assert (=> b!3010756 (= e!1890419 tp_is_empty!16349)))

(declare-fun b!3010757 () Bool)

(declare-fun tp!955468 () Bool)

(declare-fun tp!955471 () Bool)

(assert (=> b!3010757 (= e!1890419 (and tp!955468 tp!955471))))

(assert (=> b!3009790 (= tp!955341 e!1890419)))

(declare-fun b!3010759 () Bool)

(declare-fun tp!955470 () Bool)

(declare-fun tp!955469 () Bool)

(assert (=> b!3010759 (= e!1890419 (and tp!955470 tp!955469))))

(declare-fun b!3010758 () Bool)

(declare-fun tp!955467 () Bool)

(assert (=> b!3010758 (= e!1890419 tp!955467)))

(assert (= (and b!3009790 ((_ is ElementMatch!9393) (reg!9722 (reg!9722 r!17423)))) b!3010756))

(assert (= (and b!3009790 ((_ is Concat!14714) (reg!9722 (reg!9722 r!17423)))) b!3010757))

(assert (= (and b!3009790 ((_ is Star!9393) (reg!9722 (reg!9722 r!17423)))) b!3010758))

(assert (= (and b!3009790 ((_ is Union!9393) (reg!9722 (reg!9722 r!17423)))) b!3010759))

(check-sat (not bm!202688) (not b!3009967) (not b!3010656) (not bm!202795) (not b!3009823) (not b!3010678) (not b!3010099) (not b!3010129) (not d!847448) (not bm!202737) (not b!3010725) (not bm!202765) (not b!3010595) (not bm!202671) (not b!3010343) (not b!3010632) (not bm!202817) (not b!3010657) (not b!3010181) (not b!3010009) (not b!3010642) (not b!3010012) (not bm!202691) (not b!3010130) (not b!3010296) (not b!3010596) (not bm!202696) (not d!847614) (not d!847568) (not b!3010680) (not bm!202717) (not bm!202818) (not d!847522) (not b!3010510) (not b!3009826) (not bm!202712) (not b!3010648) (not b!3010646) (not b!3010682) (not bm!202775) (not b!3010212) (not b!3010193) (not b!3009879) (not bm!202668) (not b!3010116) (not b!3009884) (not b!3009881) (not b!3010282) (not d!847468) (not bm!202687) (not b!3010179) (not bm!202750) (not b!3010738) (not d!847440) (not b!3009825) (not bm!202809) (not b!3010629) (not b!3010314) (not b!3010621) (not b!3010755) (not b!3010176) (not b!3009964) (not b!3010211) (not d!847632) (not d!847534) (not b!3010703) (not d!847708) (not b!3010706) (not b!3010737) (not b!3010384) (not bm!202774) (not b!3010133) (not b!3009931) (not bm!202684) (not b!3010210) (not d!847530) (not b!3010654) (not b!3009851) (not b!3010177) (not b!3010732) (not bm!202816) (not d!847510) (not d!847570) (not b!3010650) (not b!3010728) (not b!3010597) (not bm!202681) (not b!3009932) (not b!3010448) (not b!3010637) (not b!3010294) (not bm!202667) (not b!3010636) (not b!3010617) (not d!847532) (not b!3010069) (not b!3010694) (not b!3010113) (not b!3010214) (not b!3010594) (not b!3010293) (not b!3010758) (not bm!202763) (not bm!202714) (not b!3010117) (not b!3010351) (not b!3010216) (not b!3009861) (not b!3010660) (not bm!202707) (not b!3009824) (not b!3010317) (not bm!202690) (not b!3010295) (not b!3010734) (not d!847466) (not b!3010690) (not b!3010127) (not b!3010318) (not d!847626) (not b!3010345) (not b!3010246) (not d!847518) (not b!3010687) (not bm!202802) (not b!3010313) (not bm!202740) (not bm!202682) (not d!847586) (not bm!202772) (not bm!202807) (not b!3010634) (not d!847628) (not b!3010175) (not b!3010686) (not b!3010733) (not d!847528) (not d!847704) (not b!3010722) (not d!847702) (not bm!202810) (not d!847580) (not b!3010603) (not bm!202789) (not b!3010692) (not b!3010729) (not b!3010751) (not b!3010684) (not b!3010707) (not bm!202710) (not d!847682) (not bm!202751) (not bm!202793) (not b!3009902) (not bm!202768) (not b!3010297) (not b!3010430) (not b!3009878) (not b!3009960) (not b!3010623) (not bm!202757) (not d!847636) (not b!3010070) (not b!3009962) (not d!847706) (not b!3010620) (not b!3010299) tp_is_empty!16349 (not bm!202839) (not b!3010421) (not bm!202730) (not b!3010720) (not b!3010652) (not bm!202752) (not b!3010736) (not d!847578) (not b!3009991) (not b!3010251) (not b!3010119) (not b!3010700) (not b!3009893) (not b!3010661) (not d!847634) (not bm!202686) (not bm!202808) (not b!3010724) (not bm!202767) (not b!3010750) (not b!3009822) (not b!3010688) (not b!3010008) (not b!3009985) (not b!3010128) (not b!3010007) (not b!3010662) (not b!3010389) (not b!3010115) (not bm!202736) (not b!3010698) (not b!3010753) (not bm!202715) (not b!3010730) (not d!847576) (not b!3010695) (not b!3010645) (not b!3010449) (not b!3010228) (not b!3010640) (not b!3009876) (not b!3010633) (not d!847644) (not bm!202719) (not b!3009877) (not d!847520) (not b!3009800) (not d!847602) (not bm!202804) (not b!3010509) (not bm!202842) (not d!847566) (not bm!202777) (not bm!202739) (not b!3009912) (not bm!202771) (not b!3010653) (not b!3010281) (not b!3010627) (not b!3010754) (not b!3010420) (not bm!202791) (not d!847512) (not bm!202735) (not b!3010683) (not b!3009875) (not bm!202762) (not b!3010006) (not b!3010618) (not b!3010619) (not b!3010649) (not b!3009805) (not b!3009828) (not b!3010658) (not bm!202805) (not b!3010704) (not b!3010131) (not bm!202666) (not d!847618) (not d!847674) (not bm!202709) (not b!3009961) (not b!3010015) (not d!847712) (not b!3010708) (not d!847678) (not b!3010010) (not bm!202769) (not bm!202701) (not d!847560) (not b!3010348) (not b!3009959) (not b!3010757) (not b!3010136) (not b!3010696) (not bm!202694) (not bm!202840) (not bm!202792) (not b!3010302) (not b!3010702) (not d!847582) (not d!847460) (not b!3010759) (not b!3010638) (not d!847676) (not b!3009984) (not bm!202693) (not b!3010600) (not bm!202814) (not d!847454) (not b!3010628) (not b!3010479) (not b!3010474) (not bm!202729) (not bm!202670) (not d!847464) (not b!3009986) (not d!847446) (not b!3010644) (not b!3010726) (not bm!202664) (not b!3010749) (not d!847572) (not b!3010213) (not b!3010194) (not bm!202778) (not b!3010691) (not bm!202813) (not b!3010699) (not bm!202700) (not b!3009983) (not b!3009958) (not d!847574) (not b!3010346) (not d!847650) (not b!3010347) (not b!3010631) (not b!3010598) (not bm!202733) (not b!3009982) (not d!847630) (not d!847516) (not b!3010263) (not bm!202720) (not b!3010679) (not bm!202843) (not bm!202812) (not b!3010178) (not b!3010114) (not d!847458) (not b!3010641) (not b!3009988) (not b!3010721))
(check-sat)
