; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!79448 () Bool)

(assert start!79448)

(declare-fun b!879036 () Bool)

(assert (=> b!879036 true))

(assert (=> b!879036 true))

(declare-fun lambda!26750 () Int)

(declare-fun lambda!26749 () Int)

(assert (=> b!879036 (not (= lambda!26750 lambda!26749))))

(assert (=> b!879036 true))

(assert (=> b!879036 true))

(declare-fun e!577329 () Bool)

(declare-fun e!577330 () Bool)

(assert (=> b!879036 (= e!577329 e!577330)))

(declare-fun res!399721 () Bool)

(assert (=> b!879036 (=> res!399721 e!577330)))

(declare-datatypes ((C!5054 0))(
  ( (C!5055 (val!2775 Int)) )
))
(declare-datatypes ((List!9472 0))(
  ( (Nil!9456) (Cons!9456 (h!14857 C!5054) (t!100518 List!9472)) )
))
(declare-datatypes ((tuple2!10574 0))(
  ( (tuple2!10575 (_1!6113 List!9472) (_2!6113 List!9472)) )
))
(declare-datatypes ((Option!1929 0))(
  ( (None!1928) (Some!1928 (v!19345 tuple2!10574)) )
))
(declare-fun lt!330275 () Option!1929)

(declare-fun isEmpty!5650 (List!9472) Bool)

(declare-fun get!2921 (Option!1929) tuple2!10574)

(assert (=> b!879036 (= res!399721 (not (isEmpty!5650 (_2!6113 (get!2921 lt!330275)))))))

(declare-fun Exists!39 (Int) Bool)

(assert (=> b!879036 (= (Exists!39 lambda!26749) (Exists!39 lambda!26750))))

(declare-datatypes ((Unit!14063 0))(
  ( (Unit!14064) )
))
(declare-fun lt!330276 () Unit!14063)

(declare-datatypes ((Regex!2242 0))(
  ( (ElementMatch!2242 (c!142119 C!5054)) (Concat!4075 (regOne!4996 Regex!2242) (regTwo!4996 Regex!2242)) (EmptyExpr!2242) (Star!2242 (reg!2571 Regex!2242)) (EmptyLang!2242) (Union!2242 (regOne!4997 Regex!2242) (regTwo!4997 Regex!2242)) )
))
(declare-fun r!15766 () Regex!2242)

(declare-fun s!10566 () List!9472)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!31 (Regex!2242 Regex!2242 List!9472) Unit!14063)

(assert (=> b!879036 (= lt!330276 (lemmaExistCutMatchRandMatchRSpecEquivalent!31 (regOne!4996 r!15766) EmptyExpr!2242 s!10566))))

(declare-fun isDefined!1571 (Option!1929) Bool)

(assert (=> b!879036 (= (isDefined!1571 lt!330275) (Exists!39 lambda!26749))))

(declare-fun findConcatSeparation!35 (Regex!2242 Regex!2242 List!9472 List!9472 List!9472) Option!1929)

(assert (=> b!879036 (= lt!330275 (findConcatSeparation!35 (regOne!4996 r!15766) EmptyExpr!2242 Nil!9456 s!10566 s!10566))))

(declare-fun lt!330278 () Unit!14063)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!35 (Regex!2242 Regex!2242 List!9472) Unit!14063)

(assert (=> b!879036 (= lt!330278 (lemmaFindConcatSeparationEquivalentToExists!35 (regOne!4996 r!15766) EmptyExpr!2242 s!10566))))

(declare-fun res!399722 () Bool)

(declare-fun e!577331 () Bool)

(assert (=> start!79448 (=> (not res!399722) (not e!577331))))

(declare-fun validRegex!711 (Regex!2242) Bool)

(assert (=> start!79448 (= res!399722 (validRegex!711 r!15766))))

(assert (=> start!79448 e!577331))

(declare-fun e!577332 () Bool)

(assert (=> start!79448 e!577332))

(declare-fun e!577328 () Bool)

(assert (=> start!79448 e!577328))

(declare-fun b!879037 () Bool)

(declare-fun tp_is_empty!4127 () Bool)

(declare-fun tp!277801 () Bool)

(assert (=> b!879037 (= e!577328 (and tp_is_empty!4127 tp!277801))))

(declare-fun b!879038 () Bool)

(assert (=> b!879038 (= e!577332 tp_is_empty!4127)))

(declare-fun b!879039 () Bool)

(declare-fun tp!277805 () Bool)

(declare-fun tp!277803 () Bool)

(assert (=> b!879039 (= e!577332 (and tp!277805 tp!277803))))

(declare-fun b!879040 () Bool)

(declare-fun tp!277802 () Bool)

(declare-fun tp!277806 () Bool)

(assert (=> b!879040 (= e!577332 (and tp!277802 tp!277806))))

(declare-fun b!879041 () Bool)

(assert (=> b!879041 (= e!577331 (not e!577329))))

(declare-fun res!399719 () Bool)

(assert (=> b!879041 (=> res!399719 e!577329)))

(declare-fun lt!330274 () Bool)

(assert (=> b!879041 (= res!399719 (or (not lt!330274) (and (is-Concat!4075 r!15766) (is-EmptyExpr!2242 (regOne!4996 r!15766))) (not (is-Concat!4075 r!15766)) (not (is-EmptyExpr!2242 (regTwo!4996 r!15766)))))))

(declare-fun matchRSpec!43 (Regex!2242 List!9472) Bool)

(assert (=> b!879041 (= lt!330274 (matchRSpec!43 r!15766 s!10566))))

(declare-fun matchR!780 (Regex!2242 List!9472) Bool)

(assert (=> b!879041 (= lt!330274 (matchR!780 r!15766 s!10566))))

(declare-fun lt!330277 () Unit!14063)

(declare-fun mainMatchTheorem!43 (Regex!2242 List!9472) Unit!14063)

(assert (=> b!879041 (= lt!330277 (mainMatchTheorem!43 r!15766 s!10566))))

(declare-fun b!879042 () Bool)

(declare-fun res!399720 () Bool)

(assert (=> b!879042 (=> res!399720 e!577329)))

(assert (=> b!879042 (= res!399720 (isEmpty!5650 s!10566))))

(declare-fun b!879043 () Bool)

(assert (=> b!879043 (= e!577330 (validRegex!711 (regOne!4996 r!15766)))))

(declare-fun b!879044 () Bool)

(declare-fun tp!277804 () Bool)

(assert (=> b!879044 (= e!577332 tp!277804)))

(assert (= (and start!79448 res!399722) b!879041))

(assert (= (and b!879041 (not res!399719)) b!879042))

(assert (= (and b!879042 (not res!399720)) b!879036))

(assert (= (and b!879036 (not res!399721)) b!879043))

(assert (= (and start!79448 (is-ElementMatch!2242 r!15766)) b!879038))

(assert (= (and start!79448 (is-Concat!4075 r!15766)) b!879039))

(assert (= (and start!79448 (is-Star!2242 r!15766)) b!879044))

(assert (= (and start!79448 (is-Union!2242 r!15766)) b!879040))

(assert (= (and start!79448 (is-Cons!9456 s!10566)) b!879037))

(declare-fun m!1128351 () Bool)

(assert (=> b!879043 m!1128351))

(declare-fun m!1128353 () Bool)

(assert (=> b!879041 m!1128353))

(declare-fun m!1128355 () Bool)

(assert (=> b!879041 m!1128355))

(declare-fun m!1128357 () Bool)

(assert (=> b!879041 m!1128357))

(declare-fun m!1128359 () Bool)

(assert (=> b!879042 m!1128359))

(declare-fun m!1128361 () Bool)

(assert (=> b!879036 m!1128361))

(declare-fun m!1128363 () Bool)

(assert (=> b!879036 m!1128363))

(declare-fun m!1128365 () Bool)

(assert (=> b!879036 m!1128365))

(declare-fun m!1128367 () Bool)

(assert (=> b!879036 m!1128367))

(declare-fun m!1128369 () Bool)

(assert (=> b!879036 m!1128369))

(declare-fun m!1128371 () Bool)

(assert (=> b!879036 m!1128371))

(assert (=> b!879036 m!1128361))

(declare-fun m!1128373 () Bool)

(assert (=> b!879036 m!1128373))

(declare-fun m!1128375 () Bool)

(assert (=> b!879036 m!1128375))

(declare-fun m!1128377 () Bool)

(assert (=> start!79448 m!1128377))

(push 1)

(assert (not b!879044))

(assert (not b!879036))

(assert (not b!879041))

(assert (not b!879037))

(assert (not b!879039))

(assert (not b!879042))

(assert (not start!79448))

(assert (not b!879043))

(assert (not b!879040))

(assert tp_is_empty!4127)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!276157 () Bool)

(assert (=> d!276157 (= (get!2921 lt!330275) (v!19345 lt!330275))))

(assert (=> b!879036 d!276157))

(declare-fun b!879110 () Bool)

(declare-fun e!577365 () Option!1929)

(assert (=> b!879110 (= e!577365 None!1928)))

(declare-fun b!879111 () Bool)

(declare-fun res!399758 () Bool)

(declare-fun e!577368 () Bool)

(assert (=> b!879111 (=> (not res!399758) (not e!577368))))

(declare-fun lt!330300 () Option!1929)

(assert (=> b!879111 (= res!399758 (matchR!780 EmptyExpr!2242 (_2!6113 (get!2921 lt!330300))))))

(declare-fun b!879112 () Bool)

(declare-fun ++!2461 (List!9472 List!9472) List!9472)

(assert (=> b!879112 (= e!577368 (= (++!2461 (_1!6113 (get!2921 lt!330300)) (_2!6113 (get!2921 lt!330300))) s!10566))))

(declare-fun b!879113 () Bool)

(declare-fun e!577364 () Option!1929)

(assert (=> b!879113 (= e!577364 e!577365)))

(declare-fun c!142126 () Bool)

(assert (=> b!879113 (= c!142126 (is-Nil!9456 s!10566))))

(declare-fun d!276159 () Bool)

(declare-fun e!577366 () Bool)

(assert (=> d!276159 e!577366))

(declare-fun res!399760 () Bool)

(assert (=> d!276159 (=> res!399760 e!577366)))

(assert (=> d!276159 (= res!399760 e!577368)))

(declare-fun res!399759 () Bool)

(assert (=> d!276159 (=> (not res!399759) (not e!577368))))

(assert (=> d!276159 (= res!399759 (isDefined!1571 lt!330300))))

(assert (=> d!276159 (= lt!330300 e!577364)))

(declare-fun c!142125 () Bool)

(declare-fun e!577367 () Bool)

(assert (=> d!276159 (= c!142125 e!577367)))

(declare-fun res!399757 () Bool)

(assert (=> d!276159 (=> (not res!399757) (not e!577367))))

(assert (=> d!276159 (= res!399757 (matchR!780 (regOne!4996 r!15766) Nil!9456))))

(assert (=> d!276159 (validRegex!711 (regOne!4996 r!15766))))

(assert (=> d!276159 (= (findConcatSeparation!35 (regOne!4996 r!15766) EmptyExpr!2242 Nil!9456 s!10566 s!10566) lt!330300)))

(declare-fun b!879114 () Bool)

(assert (=> b!879114 (= e!577366 (not (isDefined!1571 lt!330300)))))

(declare-fun b!879115 () Bool)

(assert (=> b!879115 (= e!577364 (Some!1928 (tuple2!10575 Nil!9456 s!10566)))))

(declare-fun b!879116 () Bool)

(declare-fun res!399761 () Bool)

(assert (=> b!879116 (=> (not res!399761) (not e!577368))))

(assert (=> b!879116 (= res!399761 (matchR!780 (regOne!4996 r!15766) (_1!6113 (get!2921 lt!330300))))))

(declare-fun b!879117 () Bool)

(declare-fun lt!330302 () Unit!14063)

(declare-fun lt!330301 () Unit!14063)

(assert (=> b!879117 (= lt!330302 lt!330301)))

(assert (=> b!879117 (= (++!2461 (++!2461 Nil!9456 (Cons!9456 (h!14857 s!10566) Nil!9456)) (t!100518 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!91 (List!9472 C!5054 List!9472 List!9472) Unit!14063)

(assert (=> b!879117 (= lt!330301 (lemmaMoveElementToOtherListKeepsConcatEq!91 Nil!9456 (h!14857 s!10566) (t!100518 s!10566) s!10566))))

(assert (=> b!879117 (= e!577365 (findConcatSeparation!35 (regOne!4996 r!15766) EmptyExpr!2242 (++!2461 Nil!9456 (Cons!9456 (h!14857 s!10566) Nil!9456)) (t!100518 s!10566) s!10566))))

(declare-fun b!879118 () Bool)

(assert (=> b!879118 (= e!577367 (matchR!780 EmptyExpr!2242 s!10566))))

(assert (= (and d!276159 res!399757) b!879118))

(assert (= (and d!276159 c!142125) b!879115))

(assert (= (and d!276159 (not c!142125)) b!879113))

(assert (= (and b!879113 c!142126) b!879110))

(assert (= (and b!879113 (not c!142126)) b!879117))

(assert (= (and d!276159 res!399759) b!879116))

(assert (= (and b!879116 res!399761) b!879111))

(assert (= (and b!879111 res!399758) b!879112))

(assert (= (and d!276159 (not res!399760)) b!879114))

(declare-fun m!1128407 () Bool)

(assert (=> d!276159 m!1128407))

(declare-fun m!1128409 () Bool)

(assert (=> d!276159 m!1128409))

(assert (=> d!276159 m!1128351))

(declare-fun m!1128411 () Bool)

(assert (=> b!879116 m!1128411))

(declare-fun m!1128413 () Bool)

(assert (=> b!879116 m!1128413))

(assert (=> b!879112 m!1128411))

(declare-fun m!1128415 () Bool)

(assert (=> b!879112 m!1128415))

(declare-fun m!1128417 () Bool)

(assert (=> b!879117 m!1128417))

(assert (=> b!879117 m!1128417))

(declare-fun m!1128419 () Bool)

(assert (=> b!879117 m!1128419))

(declare-fun m!1128421 () Bool)

(assert (=> b!879117 m!1128421))

(assert (=> b!879117 m!1128417))

(declare-fun m!1128423 () Bool)

(assert (=> b!879117 m!1128423))

(assert (=> b!879114 m!1128407))

(declare-fun m!1128425 () Bool)

(assert (=> b!879118 m!1128425))

(assert (=> b!879111 m!1128411))

(declare-fun m!1128427 () Bool)

(assert (=> b!879111 m!1128427))

(assert (=> b!879036 d!276159))

(declare-fun d!276165 () Bool)

(declare-fun choose!5190 (Int) Bool)

(assert (=> d!276165 (= (Exists!39 lambda!26750) (choose!5190 lambda!26750))))

(declare-fun bs!234271 () Bool)

(assert (= bs!234271 d!276165))

(declare-fun m!1128429 () Bool)

(assert (=> bs!234271 m!1128429))

(assert (=> b!879036 d!276165))

(declare-fun d!276167 () Bool)

(assert (=> d!276167 (= (Exists!39 lambda!26749) (choose!5190 lambda!26749))))

(declare-fun bs!234272 () Bool)

(assert (= bs!234272 d!276167))

(declare-fun m!1128431 () Bool)

(assert (=> bs!234272 m!1128431))

(assert (=> b!879036 d!276167))

(declare-fun d!276169 () Bool)

(declare-fun isEmpty!5652 (Option!1929) Bool)

(assert (=> d!276169 (= (isDefined!1571 lt!330275) (not (isEmpty!5652 lt!330275)))))

(declare-fun bs!234273 () Bool)

(assert (= bs!234273 d!276169))

(declare-fun m!1128433 () Bool)

(assert (=> bs!234273 m!1128433))

(assert (=> b!879036 d!276169))

(declare-fun bs!234274 () Bool)

(declare-fun d!276171 () Bool)

(assert (= bs!234274 (and d!276171 b!879036)))

(declare-fun lambda!26761 () Int)

(assert (=> bs!234274 (= lambda!26761 lambda!26749)))

(assert (=> bs!234274 (not (= lambda!26761 lambda!26750))))

(assert (=> d!276171 true))

(assert (=> d!276171 true))

(assert (=> d!276171 true))

(assert (=> d!276171 (= (isDefined!1571 (findConcatSeparation!35 (regOne!4996 r!15766) EmptyExpr!2242 Nil!9456 s!10566 s!10566)) (Exists!39 lambda!26761))))

(declare-fun lt!330305 () Unit!14063)

(declare-fun choose!5191 (Regex!2242 Regex!2242 List!9472) Unit!14063)

(assert (=> d!276171 (= lt!330305 (choose!5191 (regOne!4996 r!15766) EmptyExpr!2242 s!10566))))

(assert (=> d!276171 (validRegex!711 (regOne!4996 r!15766))))

(assert (=> d!276171 (= (lemmaFindConcatSeparationEquivalentToExists!35 (regOne!4996 r!15766) EmptyExpr!2242 s!10566) lt!330305)))

(declare-fun bs!234275 () Bool)

(assert (= bs!234275 d!276171))

(assert (=> bs!234275 m!1128375))

(assert (=> bs!234275 m!1128375))

(declare-fun m!1128435 () Bool)

(assert (=> bs!234275 m!1128435))

(assert (=> bs!234275 m!1128351))

(declare-fun m!1128437 () Bool)

(assert (=> bs!234275 m!1128437))

(declare-fun m!1128439 () Bool)

(assert (=> bs!234275 m!1128439))

(assert (=> b!879036 d!276171))

(declare-fun d!276173 () Bool)

(assert (=> d!276173 (= (isEmpty!5650 (_2!6113 (get!2921 lt!330275))) (is-Nil!9456 (_2!6113 (get!2921 lt!330275))))))

(assert (=> b!879036 d!276173))

(declare-fun bs!234276 () Bool)

(declare-fun d!276175 () Bool)

(assert (= bs!234276 (and d!276175 b!879036)))

(declare-fun lambda!26766 () Int)

(assert (=> bs!234276 (= lambda!26766 lambda!26749)))

(assert (=> bs!234276 (not (= lambda!26766 lambda!26750))))

(declare-fun bs!234277 () Bool)

(assert (= bs!234277 (and d!276175 d!276171)))

(assert (=> bs!234277 (= lambda!26766 lambda!26761)))

(assert (=> d!276175 true))

(assert (=> d!276175 true))

(assert (=> d!276175 true))

(declare-fun lambda!26767 () Int)

(assert (=> bs!234276 (not (= lambda!26767 lambda!26749))))

(assert (=> bs!234276 (= lambda!26767 lambda!26750)))

(assert (=> bs!234277 (not (= lambda!26767 lambda!26761))))

(declare-fun bs!234278 () Bool)

(assert (= bs!234278 d!276175))

(assert (=> bs!234278 (not (= lambda!26767 lambda!26766))))

(assert (=> d!276175 true))

(assert (=> d!276175 true))

(assert (=> d!276175 true))

(assert (=> d!276175 (= (Exists!39 lambda!26766) (Exists!39 lambda!26767))))

(declare-fun lt!330314 () Unit!14063)

(declare-fun choose!5192 (Regex!2242 Regex!2242 List!9472) Unit!14063)

(assert (=> d!276175 (= lt!330314 (choose!5192 (regOne!4996 r!15766) EmptyExpr!2242 s!10566))))

(assert (=> d!276175 (validRegex!711 (regOne!4996 r!15766))))

(assert (=> d!276175 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!31 (regOne!4996 r!15766) EmptyExpr!2242 s!10566) lt!330314)))

(declare-fun m!1128441 () Bool)

(assert (=> bs!234278 m!1128441))

(declare-fun m!1128443 () Bool)

(assert (=> bs!234278 m!1128443))

(declare-fun m!1128445 () Bool)

(assert (=> bs!234278 m!1128445))

(assert (=> bs!234278 m!1128351))

(assert (=> b!879036 d!276175))

(declare-fun bs!234281 () Bool)

(declare-fun b!879192 () Bool)

(assert (= bs!234281 (and b!879192 b!879036)))

(declare-fun lambda!26772 () Int)

(assert (=> bs!234281 (not (= lambda!26772 lambda!26750))))

(assert (=> bs!234281 (not (= lambda!26772 lambda!26749))))

(declare-fun bs!234282 () Bool)

(assert (= bs!234282 (and b!879192 d!276175)))

(assert (=> bs!234282 (not (= lambda!26772 lambda!26766))))

(declare-fun bs!234283 () Bool)

(assert (= bs!234283 (and b!879192 d!276171)))

(assert (=> bs!234283 (not (= lambda!26772 lambda!26761))))

(assert (=> bs!234282 (not (= lambda!26772 lambda!26767))))

(assert (=> b!879192 true))

(assert (=> b!879192 true))

(declare-fun bs!234284 () Bool)

(declare-fun b!879195 () Bool)

(assert (= bs!234284 (and b!879195 b!879036)))

(declare-fun lambda!26773 () Int)

(assert (=> bs!234284 (= (= (regTwo!4996 r!15766) EmptyExpr!2242) (= lambda!26773 lambda!26750))))

(assert (=> bs!234284 (not (= lambda!26773 lambda!26749))))

(declare-fun bs!234285 () Bool)

(assert (= bs!234285 (and b!879195 d!276175)))

(assert (=> bs!234285 (not (= lambda!26773 lambda!26766))))

(declare-fun bs!234286 () Bool)

(assert (= bs!234286 (and b!879195 b!879192)))

(assert (=> bs!234286 (not (= lambda!26773 lambda!26772))))

(declare-fun bs!234287 () Bool)

(assert (= bs!234287 (and b!879195 d!276171)))

(assert (=> bs!234287 (not (= lambda!26773 lambda!26761))))

(assert (=> bs!234285 (= (= (regTwo!4996 r!15766) EmptyExpr!2242) (= lambda!26773 lambda!26767))))

(assert (=> b!879195 true))

(assert (=> b!879195 true))

(declare-fun b!879190 () Bool)

(declare-fun e!577413 () Bool)

(assert (=> b!879190 (= e!577413 (matchRSpec!43 (regTwo!4997 r!15766) s!10566))))

(declare-fun b!879191 () Bool)

(declare-fun e!577414 () Bool)

(declare-fun e!577408 () Bool)

(assert (=> b!879191 (= e!577414 e!577408)))

(declare-fun c!142142 () Bool)

(assert (=> b!879191 (= c!142142 (is-Star!2242 r!15766))))

(declare-fun e!577410 () Bool)

(declare-fun call!51237 () Bool)

(assert (=> b!879192 (= e!577410 call!51237)))

(declare-fun b!879193 () Bool)

(declare-fun e!577409 () Bool)

(assert (=> b!879193 (= e!577409 (= s!10566 (Cons!9456 (c!142119 r!15766) Nil!9456)))))

(declare-fun b!879194 () Bool)

(declare-fun e!577411 () Bool)

(declare-fun call!51236 () Bool)

(assert (=> b!879194 (= e!577411 call!51236)))

(assert (=> b!879195 (= e!577408 call!51237)))

(declare-fun b!879196 () Bool)

(assert (=> b!879196 (= e!577414 e!577413)))

(declare-fun res!399805 () Bool)

(assert (=> b!879196 (= res!399805 (matchRSpec!43 (regOne!4997 r!15766) s!10566))))

(assert (=> b!879196 (=> res!399805 e!577413)))

(declare-fun b!879197 () Bool)

(declare-fun c!142144 () Bool)

(assert (=> b!879197 (= c!142144 (is-Union!2242 r!15766))))

(assert (=> b!879197 (= e!577409 e!577414)))

(declare-fun bm!51232 () Bool)

(assert (=> bm!51232 (= call!51236 (isEmpty!5650 s!10566))))

(declare-fun b!879198 () Bool)

(declare-fun res!399806 () Bool)

(assert (=> b!879198 (=> res!399806 e!577410)))

(assert (=> b!879198 (= res!399806 call!51236)))

(assert (=> b!879198 (= e!577408 e!577410)))

(declare-fun b!879199 () Bool)

(declare-fun c!142141 () Bool)

(assert (=> b!879199 (= c!142141 (is-ElementMatch!2242 r!15766))))

(declare-fun e!577412 () Bool)

(assert (=> b!879199 (= e!577412 e!577409)))

(declare-fun b!879200 () Bool)

(assert (=> b!879200 (= e!577411 e!577412)))

(declare-fun res!399807 () Bool)

(assert (=> b!879200 (= res!399807 (not (is-EmptyLang!2242 r!15766)))))

(assert (=> b!879200 (=> (not res!399807) (not e!577412))))

(declare-fun bm!51231 () Bool)

(assert (=> bm!51231 (= call!51237 (Exists!39 (ite c!142142 lambda!26772 lambda!26773)))))

(declare-fun d!276177 () Bool)

(declare-fun c!142143 () Bool)

(assert (=> d!276177 (= c!142143 (is-EmptyExpr!2242 r!15766))))

(assert (=> d!276177 (= (matchRSpec!43 r!15766 s!10566) e!577411)))

(assert (= (and d!276177 c!142143) b!879194))

(assert (= (and d!276177 (not c!142143)) b!879200))

(assert (= (and b!879200 res!399807) b!879199))

(assert (= (and b!879199 c!142141) b!879193))

(assert (= (and b!879199 (not c!142141)) b!879197))

(assert (= (and b!879197 c!142144) b!879196))

(assert (= (and b!879197 (not c!142144)) b!879191))

(assert (= (and b!879196 (not res!399805)) b!879190))

(assert (= (and b!879191 c!142142) b!879198))

(assert (= (and b!879191 (not c!142142)) b!879195))

(assert (= (and b!879198 (not res!399806)) b!879192))

(assert (= (or b!879192 b!879195) bm!51231))

(assert (= (or b!879194 b!879198) bm!51232))

(declare-fun m!1128473 () Bool)

(assert (=> b!879190 m!1128473))

(declare-fun m!1128475 () Bool)

(assert (=> b!879196 m!1128475))

(assert (=> bm!51232 m!1128359))

(declare-fun m!1128477 () Bool)

(assert (=> bm!51231 m!1128477))

(assert (=> b!879041 d!276177))

(declare-fun b!879233 () Bool)

(declare-fun e!577434 () Bool)

(declare-fun head!1532 (List!9472) C!5054)

(assert (=> b!879233 (= e!577434 (not (= (head!1532 s!10566) (c!142119 r!15766))))))

(declare-fun b!879234 () Bool)

(declare-fun e!577436 () Bool)

(assert (=> b!879234 (= e!577436 (= (head!1532 s!10566) (c!142119 r!15766)))))

(declare-fun b!879235 () Bool)

(declare-fun e!577433 () Bool)

(declare-fun e!577435 () Bool)

(assert (=> b!879235 (= e!577433 e!577435)))

(declare-fun c!142153 () Bool)

(assert (=> b!879235 (= c!142153 (is-EmptyLang!2242 r!15766))))

(declare-fun b!879236 () Bool)

(declare-fun e!577432 () Bool)

(assert (=> b!879236 (= e!577432 e!577434)))

(declare-fun res!399831 () Bool)

(assert (=> b!879236 (=> res!399831 e!577434)))

(declare-fun call!51240 () Bool)

(assert (=> b!879236 (= res!399831 call!51240)))

(declare-fun b!879237 () Bool)

(declare-fun res!399834 () Bool)

(assert (=> b!879237 (=> res!399834 e!577434)))

(declare-fun tail!1094 (List!9472) List!9472)

(assert (=> b!879237 (= res!399834 (not (isEmpty!5650 (tail!1094 s!10566))))))

(declare-fun b!879238 () Bool)

(declare-fun lt!330323 () Bool)

(assert (=> b!879238 (= e!577435 (not lt!330323))))

(declare-fun bm!51235 () Bool)

(assert (=> bm!51235 (= call!51240 (isEmpty!5650 s!10566))))

(declare-fun d!276187 () Bool)

(assert (=> d!276187 e!577433))

(declare-fun c!142152 () Bool)

(assert (=> d!276187 (= c!142152 (is-EmptyExpr!2242 r!15766))))

(declare-fun e!577437 () Bool)

(assert (=> d!276187 (= lt!330323 e!577437)))

(declare-fun c!142151 () Bool)

(assert (=> d!276187 (= c!142151 (isEmpty!5650 s!10566))))

(assert (=> d!276187 (validRegex!711 r!15766)))

(assert (=> d!276187 (= (matchR!780 r!15766 s!10566) lt!330323)))

(declare-fun b!879239 () Bool)

(declare-fun res!399830 () Bool)

(declare-fun e!577431 () Bool)

(assert (=> b!879239 (=> res!399830 e!577431)))

(assert (=> b!879239 (= res!399830 (not (is-ElementMatch!2242 r!15766)))))

(assert (=> b!879239 (= e!577435 e!577431)))

(declare-fun b!879240 () Bool)

(assert (=> b!879240 (= e!577433 (= lt!330323 call!51240))))

(declare-fun b!879241 () Bool)

(declare-fun derivativeStep!379 (Regex!2242 C!5054) Regex!2242)

(assert (=> b!879241 (= e!577437 (matchR!780 (derivativeStep!379 r!15766 (head!1532 s!10566)) (tail!1094 s!10566)))))

(declare-fun b!879242 () Bool)

(declare-fun res!399832 () Bool)

(assert (=> b!879242 (=> (not res!399832) (not e!577436))))

(assert (=> b!879242 (= res!399832 (isEmpty!5650 (tail!1094 s!10566)))))

(declare-fun b!879243 () Bool)

(declare-fun res!399828 () Bool)

(assert (=> b!879243 (=> (not res!399828) (not e!577436))))

(assert (=> b!879243 (= res!399828 (not call!51240))))

(declare-fun b!879244 () Bool)

(declare-fun nullable!566 (Regex!2242) Bool)

(assert (=> b!879244 (= e!577437 (nullable!566 r!15766))))

(declare-fun b!879245 () Bool)

(declare-fun res!399829 () Bool)

(assert (=> b!879245 (=> res!399829 e!577431)))

(assert (=> b!879245 (= res!399829 e!577436)))

(declare-fun res!399833 () Bool)

(assert (=> b!879245 (=> (not res!399833) (not e!577436))))

(assert (=> b!879245 (= res!399833 lt!330323)))

(declare-fun b!879246 () Bool)

(assert (=> b!879246 (= e!577431 e!577432)))

(declare-fun res!399835 () Bool)

(assert (=> b!879246 (=> (not res!399835) (not e!577432))))

(assert (=> b!879246 (= res!399835 (not lt!330323))))

(assert (= (and d!276187 c!142151) b!879244))

(assert (= (and d!276187 (not c!142151)) b!879241))

(assert (= (and d!276187 c!142152) b!879240))

(assert (= (and d!276187 (not c!142152)) b!879235))

(assert (= (and b!879235 c!142153) b!879238))

(assert (= (and b!879235 (not c!142153)) b!879239))

(assert (= (and b!879239 (not res!399830)) b!879245))

(assert (= (and b!879245 res!399833) b!879243))

(assert (= (and b!879243 res!399828) b!879242))

(assert (= (and b!879242 res!399832) b!879234))

(assert (= (and b!879245 (not res!399829)) b!879246))

(assert (= (and b!879246 res!399835) b!879236))

(assert (= (and b!879236 (not res!399831)) b!879237))

(assert (= (and b!879237 (not res!399834)) b!879233))

(assert (= (or b!879240 b!879236 b!879243) bm!51235))

(declare-fun m!1128481 () Bool)

(assert (=> b!879237 m!1128481))

(assert (=> b!879237 m!1128481))

(declare-fun m!1128483 () Bool)

(assert (=> b!879237 m!1128483))

(declare-fun m!1128485 () Bool)

(assert (=> b!879234 m!1128485))

(assert (=> bm!51235 m!1128359))

(declare-fun m!1128489 () Bool)

(assert (=> b!879244 m!1128489))

(assert (=> b!879241 m!1128485))

(assert (=> b!879241 m!1128485))

(declare-fun m!1128491 () Bool)

(assert (=> b!879241 m!1128491))

(assert (=> b!879241 m!1128481))

(assert (=> b!879241 m!1128491))

(assert (=> b!879241 m!1128481))

(declare-fun m!1128495 () Bool)

(assert (=> b!879241 m!1128495))

(assert (=> d!276187 m!1128359))

(assert (=> d!276187 m!1128377))

(assert (=> b!879233 m!1128485))

(assert (=> b!879242 m!1128481))

(assert (=> b!879242 m!1128481))

(assert (=> b!879242 m!1128483))

(assert (=> b!879041 d!276187))

(declare-fun d!276191 () Bool)

(assert (=> d!276191 (= (matchR!780 r!15766 s!10566) (matchRSpec!43 r!15766 s!10566))))

(declare-fun lt!330326 () Unit!14063)

(declare-fun choose!5193 (Regex!2242 List!9472) Unit!14063)

(assert (=> d!276191 (= lt!330326 (choose!5193 r!15766 s!10566))))

(assert (=> d!276191 (validRegex!711 r!15766)))

(assert (=> d!276191 (= (mainMatchTheorem!43 r!15766 s!10566) lt!330326)))

(declare-fun bs!234291 () Bool)

(assert (= bs!234291 d!276191))

(assert (=> bs!234291 m!1128355))

(assert (=> bs!234291 m!1128353))

(declare-fun m!1128499 () Bool)

(assert (=> bs!234291 m!1128499))

(assert (=> bs!234291 m!1128377))

(assert (=> b!879041 d!276191))

(declare-fun d!276195 () Bool)

(assert (=> d!276195 (= (isEmpty!5650 s!10566) (is-Nil!9456 s!10566))))

(assert (=> b!879042 d!276195))

(declare-fun call!51249 () Bool)

(declare-fun c!142158 () Bool)

(declare-fun c!142159 () Bool)

(declare-fun bm!51242 () Bool)

(assert (=> bm!51242 (= call!51249 (validRegex!711 (ite c!142158 (reg!2571 r!15766) (ite c!142159 (regOne!4997 r!15766) (regOne!4996 r!15766)))))))

(declare-fun b!879265 () Bool)

(declare-fun e!577458 () Bool)

(assert (=> b!879265 (= e!577458 call!51249)))

(declare-fun b!879266 () Bool)

(declare-fun e!577456 () Bool)

(declare-fun e!577454 () Bool)

(assert (=> b!879266 (= e!577456 e!577454)))

(declare-fun res!399848 () Bool)

(assert (=> b!879266 (=> (not res!399848) (not e!577454))))

(declare-fun call!51247 () Bool)

(assert (=> b!879266 (= res!399848 call!51247)))

(declare-fun bm!51243 () Bool)

(assert (=> bm!51243 (= call!51247 call!51249)))

(declare-fun b!879267 () Bool)

(declare-fun call!51248 () Bool)

(assert (=> b!879267 (= e!577454 call!51248)))

(declare-fun b!879268 () Bool)

(declare-fun e!577452 () Bool)

(assert (=> b!879268 (= e!577452 e!577458)))

(declare-fun res!399846 () Bool)

(assert (=> b!879268 (= res!399846 (not (nullable!566 (reg!2571 r!15766))))))

(assert (=> b!879268 (=> (not res!399846) (not e!577458))))

(declare-fun b!879269 () Bool)

(declare-fun e!577457 () Bool)

(assert (=> b!879269 (= e!577457 e!577452)))

(assert (=> b!879269 (= c!142158 (is-Star!2242 r!15766))))

(declare-fun b!879270 () Bool)

(declare-fun e!577455 () Bool)

(assert (=> b!879270 (= e!577455 call!51248)))

(declare-fun d!276197 () Bool)

(declare-fun res!399849 () Bool)

(assert (=> d!276197 (=> res!399849 e!577457)))

(assert (=> d!276197 (= res!399849 (is-ElementMatch!2242 r!15766))))

(assert (=> d!276197 (= (validRegex!711 r!15766) e!577457)))

(declare-fun b!879271 () Bool)

(declare-fun e!577453 () Bool)

(assert (=> b!879271 (= e!577452 e!577453)))

(assert (=> b!879271 (= c!142159 (is-Union!2242 r!15766))))

(declare-fun b!879272 () Bool)

(declare-fun res!399847 () Bool)

(assert (=> b!879272 (=> (not res!399847) (not e!577455))))

(assert (=> b!879272 (= res!399847 call!51247)))

(assert (=> b!879272 (= e!577453 e!577455)))

(declare-fun bm!51244 () Bool)

(assert (=> bm!51244 (= call!51248 (validRegex!711 (ite c!142159 (regTwo!4997 r!15766) (regTwo!4996 r!15766))))))

(declare-fun b!879273 () Bool)

(declare-fun res!399850 () Bool)

(assert (=> b!879273 (=> res!399850 e!577456)))

(assert (=> b!879273 (= res!399850 (not (is-Concat!4075 r!15766)))))

(assert (=> b!879273 (= e!577453 e!577456)))

(assert (= (and d!276197 (not res!399849)) b!879269))

(assert (= (and b!879269 c!142158) b!879268))

(assert (= (and b!879269 (not c!142158)) b!879271))

(assert (= (and b!879268 res!399846) b!879265))

(assert (= (and b!879271 c!142159) b!879272))

(assert (= (and b!879271 (not c!142159)) b!879273))

(assert (= (and b!879272 res!399847) b!879270))

(assert (= (and b!879273 (not res!399850)) b!879266))

(assert (= (and b!879266 res!399848) b!879267))

(assert (= (or b!879270 b!879267) bm!51244))

(assert (= (or b!879272 b!879266) bm!51243))

(assert (= (or b!879265 bm!51243) bm!51242))

(declare-fun m!1128501 () Bool)

(assert (=> bm!51242 m!1128501))

(declare-fun m!1128503 () Bool)

(assert (=> b!879268 m!1128503))

(declare-fun m!1128505 () Bool)

(assert (=> bm!51244 m!1128505))

(assert (=> start!79448 d!276197))

(declare-fun call!51252 () Bool)

(declare-fun bm!51245 () Bool)

(declare-fun c!142161 () Bool)

(declare-fun c!142160 () Bool)

(assert (=> bm!51245 (= call!51252 (validRegex!711 (ite c!142160 (reg!2571 (regOne!4996 r!15766)) (ite c!142161 (regOne!4997 (regOne!4996 r!15766)) (regOne!4996 (regOne!4996 r!15766))))))))

(declare-fun b!879274 () Bool)

(declare-fun e!577465 () Bool)

(assert (=> b!879274 (= e!577465 call!51252)))

(declare-fun b!879275 () Bool)

(declare-fun e!577463 () Bool)

(declare-fun e!577461 () Bool)

(assert (=> b!879275 (= e!577463 e!577461)))

(declare-fun res!399853 () Bool)

(assert (=> b!879275 (=> (not res!399853) (not e!577461))))

(declare-fun call!51250 () Bool)

(assert (=> b!879275 (= res!399853 call!51250)))

(declare-fun bm!51246 () Bool)

(assert (=> bm!51246 (= call!51250 call!51252)))

(declare-fun b!879276 () Bool)

(declare-fun call!51251 () Bool)

(assert (=> b!879276 (= e!577461 call!51251)))

(declare-fun b!879277 () Bool)

(declare-fun e!577459 () Bool)

(assert (=> b!879277 (= e!577459 e!577465)))

(declare-fun res!399851 () Bool)

(assert (=> b!879277 (= res!399851 (not (nullable!566 (reg!2571 (regOne!4996 r!15766)))))))

(assert (=> b!879277 (=> (not res!399851) (not e!577465))))

(declare-fun b!879278 () Bool)

(declare-fun e!577464 () Bool)

(assert (=> b!879278 (= e!577464 e!577459)))

(assert (=> b!879278 (= c!142160 (is-Star!2242 (regOne!4996 r!15766)))))

(declare-fun b!879279 () Bool)

(declare-fun e!577462 () Bool)

(assert (=> b!879279 (= e!577462 call!51251)))

(declare-fun d!276199 () Bool)

(declare-fun res!399854 () Bool)

(assert (=> d!276199 (=> res!399854 e!577464)))

(assert (=> d!276199 (= res!399854 (is-ElementMatch!2242 (regOne!4996 r!15766)))))

(assert (=> d!276199 (= (validRegex!711 (regOne!4996 r!15766)) e!577464)))

(declare-fun b!879280 () Bool)

(declare-fun e!577460 () Bool)

(assert (=> b!879280 (= e!577459 e!577460)))

(assert (=> b!879280 (= c!142161 (is-Union!2242 (regOne!4996 r!15766)))))

(declare-fun b!879281 () Bool)

(declare-fun res!399852 () Bool)

(assert (=> b!879281 (=> (not res!399852) (not e!577462))))

(assert (=> b!879281 (= res!399852 call!51250)))

(assert (=> b!879281 (= e!577460 e!577462)))

(declare-fun bm!51247 () Bool)

(assert (=> bm!51247 (= call!51251 (validRegex!711 (ite c!142161 (regTwo!4997 (regOne!4996 r!15766)) (regTwo!4996 (regOne!4996 r!15766)))))))

(declare-fun b!879282 () Bool)

(declare-fun res!399855 () Bool)

(assert (=> b!879282 (=> res!399855 e!577463)))

(assert (=> b!879282 (= res!399855 (not (is-Concat!4075 (regOne!4996 r!15766))))))

(assert (=> b!879282 (= e!577460 e!577463)))

(assert (= (and d!276199 (not res!399854)) b!879278))

(assert (= (and b!879278 c!142160) b!879277))

(assert (= (and b!879278 (not c!142160)) b!879280))

(assert (= (and b!879277 res!399851) b!879274))

(assert (= (and b!879280 c!142161) b!879281))

(assert (= (and b!879280 (not c!142161)) b!879282))

(assert (= (and b!879281 res!399852) b!879279))

(assert (= (and b!879282 (not res!399855)) b!879275))

(assert (= (and b!879275 res!399853) b!879276))

(assert (= (or b!879279 b!879276) bm!51247))

(assert (= (or b!879281 b!879275) bm!51246))

(assert (= (or b!879274 bm!51246) bm!51245))

(declare-fun m!1128507 () Bool)

(assert (=> bm!51245 m!1128507))

(declare-fun m!1128509 () Bool)

(assert (=> b!879277 m!1128509))

(declare-fun m!1128511 () Bool)

(assert (=> bm!51247 m!1128511))

(assert (=> b!879043 d!276199))

(declare-fun b!879287 () Bool)

(declare-fun e!577468 () Bool)

(declare-fun tp!277827 () Bool)

(assert (=> b!879287 (= e!577468 (and tp_is_empty!4127 tp!277827))))

(assert (=> b!879037 (= tp!277801 e!577468)))

(assert (= (and b!879037 (is-Cons!9456 (t!100518 s!10566))) b!879287))

(declare-fun b!879298 () Bool)

(declare-fun e!577471 () Bool)

(assert (=> b!879298 (= e!577471 tp_is_empty!4127)))

(declare-fun b!879299 () Bool)

(declare-fun tp!277840 () Bool)

(declare-fun tp!277839 () Bool)

(assert (=> b!879299 (= e!577471 (and tp!277840 tp!277839))))

(assert (=> b!879044 (= tp!277804 e!577471)))

(declare-fun b!879301 () Bool)

(declare-fun tp!277838 () Bool)

(declare-fun tp!277841 () Bool)

(assert (=> b!879301 (= e!577471 (and tp!277838 tp!277841))))

(declare-fun b!879300 () Bool)

(declare-fun tp!277842 () Bool)

(assert (=> b!879300 (= e!577471 tp!277842)))

(assert (= (and b!879044 (is-ElementMatch!2242 (reg!2571 r!15766))) b!879298))

(assert (= (and b!879044 (is-Concat!4075 (reg!2571 r!15766))) b!879299))

(assert (= (and b!879044 (is-Star!2242 (reg!2571 r!15766))) b!879300))

(assert (= (and b!879044 (is-Union!2242 (reg!2571 r!15766))) b!879301))

(declare-fun b!879302 () Bool)

(declare-fun e!577472 () Bool)

(assert (=> b!879302 (= e!577472 tp_is_empty!4127)))

(declare-fun b!879303 () Bool)

(declare-fun tp!277845 () Bool)

(declare-fun tp!277844 () Bool)

(assert (=> b!879303 (= e!577472 (and tp!277845 tp!277844))))

(assert (=> b!879040 (= tp!277802 e!577472)))

(declare-fun b!879305 () Bool)

(declare-fun tp!277843 () Bool)

(declare-fun tp!277846 () Bool)

(assert (=> b!879305 (= e!577472 (and tp!277843 tp!277846))))

(declare-fun b!879304 () Bool)

(declare-fun tp!277847 () Bool)

(assert (=> b!879304 (= e!577472 tp!277847)))

(assert (= (and b!879040 (is-ElementMatch!2242 (regOne!4997 r!15766))) b!879302))

(assert (= (and b!879040 (is-Concat!4075 (regOne!4997 r!15766))) b!879303))

(assert (= (and b!879040 (is-Star!2242 (regOne!4997 r!15766))) b!879304))

(assert (= (and b!879040 (is-Union!2242 (regOne!4997 r!15766))) b!879305))

(declare-fun b!879306 () Bool)

(declare-fun e!577473 () Bool)

(assert (=> b!879306 (= e!577473 tp_is_empty!4127)))

(declare-fun b!879307 () Bool)

(declare-fun tp!277850 () Bool)

(declare-fun tp!277849 () Bool)

(assert (=> b!879307 (= e!577473 (and tp!277850 tp!277849))))

(assert (=> b!879040 (= tp!277806 e!577473)))

(declare-fun b!879309 () Bool)

(declare-fun tp!277848 () Bool)

(declare-fun tp!277851 () Bool)

(assert (=> b!879309 (= e!577473 (and tp!277848 tp!277851))))

(declare-fun b!879308 () Bool)

(declare-fun tp!277852 () Bool)

(assert (=> b!879308 (= e!577473 tp!277852)))

(assert (= (and b!879040 (is-ElementMatch!2242 (regTwo!4997 r!15766))) b!879306))

(assert (= (and b!879040 (is-Concat!4075 (regTwo!4997 r!15766))) b!879307))

(assert (= (and b!879040 (is-Star!2242 (regTwo!4997 r!15766))) b!879308))

(assert (= (and b!879040 (is-Union!2242 (regTwo!4997 r!15766))) b!879309))

(declare-fun b!879310 () Bool)

(declare-fun e!577474 () Bool)

(assert (=> b!879310 (= e!577474 tp_is_empty!4127)))

(declare-fun b!879311 () Bool)

(declare-fun tp!277855 () Bool)

(declare-fun tp!277854 () Bool)

(assert (=> b!879311 (= e!577474 (and tp!277855 tp!277854))))

(assert (=> b!879039 (= tp!277805 e!577474)))

(declare-fun b!879313 () Bool)

(declare-fun tp!277853 () Bool)

(declare-fun tp!277856 () Bool)

(assert (=> b!879313 (= e!577474 (and tp!277853 tp!277856))))

(declare-fun b!879312 () Bool)

(declare-fun tp!277857 () Bool)

(assert (=> b!879312 (= e!577474 tp!277857)))

(assert (= (and b!879039 (is-ElementMatch!2242 (regOne!4996 r!15766))) b!879310))

(assert (= (and b!879039 (is-Concat!4075 (regOne!4996 r!15766))) b!879311))

(assert (= (and b!879039 (is-Star!2242 (regOne!4996 r!15766))) b!879312))

(assert (= (and b!879039 (is-Union!2242 (regOne!4996 r!15766))) b!879313))

(declare-fun b!879314 () Bool)

(declare-fun e!577475 () Bool)

(assert (=> b!879314 (= e!577475 tp_is_empty!4127)))

(declare-fun b!879315 () Bool)

(declare-fun tp!277860 () Bool)

(declare-fun tp!277859 () Bool)

(assert (=> b!879315 (= e!577475 (and tp!277860 tp!277859))))

(assert (=> b!879039 (= tp!277803 e!577475)))

(declare-fun b!879317 () Bool)

(declare-fun tp!277858 () Bool)

(declare-fun tp!277861 () Bool)

(assert (=> b!879317 (= e!577475 (and tp!277858 tp!277861))))

(declare-fun b!879316 () Bool)

(declare-fun tp!277862 () Bool)

(assert (=> b!879316 (= e!577475 tp!277862)))

(assert (= (and b!879039 (is-ElementMatch!2242 (regTwo!4996 r!15766))) b!879314))

(assert (= (and b!879039 (is-Concat!4075 (regTwo!4996 r!15766))) b!879315))

(assert (= (and b!879039 (is-Star!2242 (regTwo!4996 r!15766))) b!879316))

(assert (= (and b!879039 (is-Union!2242 (regTwo!4996 r!15766))) b!879317))

(push 1)

(assert (not b!879112))

(assert (not b!879244))

(assert (not bm!51242))

(assert tp_is_empty!4127)

(assert (not d!276167))

(assert (not b!879114))

(assert (not b!879196))

(assert (not b!879116))

(assert (not bm!51232))

(assert (not b!879313))

(assert (not b!879315))

(assert (not b!879118))

(assert (not b!879309))

(assert (not b!879316))

(assert (not b!879311))

(assert (not b!879317))

(assert (not d!276191))

(assert (not b!879277))

(assert (not b!879301))

(assert (not bm!51235))

(assert (not bm!51244))

(assert (not b!879308))

(assert (not b!879303))

(assert (not b!879300))

(assert (not b!879241))

(assert (not b!879234))

(assert (not b!879305))

(assert (not d!276175))

(assert (not b!879287))

(assert (not b!879268))

(assert (not b!879242))

(assert (not b!879117))

(assert (not bm!51245))

(assert (not b!879111))

(assert (not d!276187))

(assert (not d!276159))

(assert (not b!879190))

(assert (not b!879312))

(assert (not b!879237))

(assert (not d!276165))

(assert (not b!879304))

(assert (not bm!51231))

(assert (not b!879307))

(assert (not b!879299))

(assert (not d!276171))

(assert (not bm!51247))

(assert (not d!276169))

(assert (not b!879233))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

