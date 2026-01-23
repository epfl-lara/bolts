; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!91396 () Bool)

(assert start!91396)

(declare-fun b!1064216 () Bool)

(assert (=> b!1064216 true))

(assert (=> b!1064216 true))

(assert (=> b!1064216 true))

(declare-fun lambda!38474 () Int)

(declare-fun lambda!38473 () Int)

(assert (=> b!1064216 (not (= lambda!38474 lambda!38473))))

(assert (=> b!1064216 true))

(assert (=> b!1064216 true))

(assert (=> b!1064216 true))

(declare-fun b!1064215 () Bool)

(declare-fun e!675044 () Bool)

(declare-fun tp_is_empty!5511 () Bool)

(assert (=> b!1064215 (= e!675044 tp_is_empty!5511)))

(declare-fun e!675045 () Bool)

(declare-fun e!675043 () Bool)

(assert (=> b!1064216 (= e!675045 e!675043)))

(declare-fun res!475448 () Bool)

(assert (=> b!1064216 (=> res!475448 e!675043)))

(declare-datatypes ((C!6438 0))(
  ( (C!6439 (val!3467 Int)) )
))
(declare-datatypes ((Regex!2934 0))(
  ( (ElementMatch!2934 (c!178423 C!6438)) (Concat!4767 (regOne!6380 Regex!2934) (regTwo!6380 Regex!2934)) (EmptyExpr!2934) (Star!2934 (reg!3263 Regex!2934)) (EmptyLang!2934) (Union!2934 (regOne!6381 Regex!2934) (regTwo!6381 Regex!2934)) )
))
(declare-fun lt!360260 () Regex!2934)

(declare-datatypes ((List!10164 0))(
  ( (Nil!10148) (Cons!10148 (h!15549 C!6438) (t!101210 List!10164)) )
))
(declare-fun s!10566 () List!10164)

(declare-fun matchR!1470 (Regex!2934 List!10164) Bool)

(assert (=> b!1064216 (= res!475448 (not (matchR!1470 lt!360260 s!10566)))))

(declare-fun lt!360259 () Regex!2934)

(assert (=> b!1064216 (= lt!360260 (Star!2934 lt!360259))))

(declare-fun r!15766 () Regex!2934)

(declare-fun removeUselessConcat!475 (Regex!2934) Regex!2934)

(assert (=> b!1064216 (= lt!360259 (removeUselessConcat!475 (reg!3263 r!15766)))))

(declare-fun Exists!657 (Int) Bool)

(assert (=> b!1064216 (= (Exists!657 lambda!38473) (Exists!657 lambda!38474))))

(declare-datatypes ((Unit!15543 0))(
  ( (Unit!15544) )
))
(declare-fun lt!360254 () Unit!15543)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!175 (Regex!2934 List!10164) Unit!15543)

(assert (=> b!1064216 (= lt!360254 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!175 (reg!3263 r!15766) s!10566))))

(declare-fun lt!360256 () Regex!2934)

(declare-datatypes ((tuple2!11582 0))(
  ( (tuple2!11583 (_1!6617 List!10164) (_2!6617 List!10164)) )
))
(declare-datatypes ((Option!2433 0))(
  ( (None!2432) (Some!2432 (v!19849 tuple2!11582)) )
))
(declare-fun isDefined!2075 (Option!2433) Bool)

(declare-fun findConcatSeparation!539 (Regex!2934 Regex!2934 List!10164 List!10164 List!10164) Option!2433)

(assert (=> b!1064216 (= (isDefined!2075 (findConcatSeparation!539 (reg!3263 r!15766) lt!360256 Nil!10148 s!10566 s!10566)) (Exists!657 lambda!38473))))

(declare-fun lt!360255 () Unit!15543)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!539 (Regex!2934 Regex!2934 List!10164) Unit!15543)

(assert (=> b!1064216 (= lt!360255 (lemmaFindConcatSeparationEquivalentToExists!539 (reg!3263 r!15766) lt!360256 s!10566))))

(assert (=> b!1064216 (= lt!360256 (Star!2934 (reg!3263 r!15766)))))

(declare-fun b!1064217 () Bool)

(declare-fun tp!319511 () Bool)

(assert (=> b!1064217 (= e!675044 tp!319511)))

(declare-fun res!475449 () Bool)

(declare-fun e!675047 () Bool)

(assert (=> start!91396 (=> (not res!475449) (not e!675047))))

(declare-fun validRegex!1403 (Regex!2934) Bool)

(assert (=> start!91396 (= res!475449 (validRegex!1403 r!15766))))

(assert (=> start!91396 e!675047))

(assert (=> start!91396 e!675044))

(declare-fun e!675046 () Bool)

(assert (=> start!91396 e!675046))

(declare-fun b!1064218 () Bool)

(declare-fun tp!319514 () Bool)

(declare-fun tp!319509 () Bool)

(assert (=> b!1064218 (= e!675044 (and tp!319514 tp!319509))))

(declare-fun b!1064219 () Bool)

(declare-fun tp!319512 () Bool)

(assert (=> b!1064219 (= e!675046 (and tp_is_empty!5511 tp!319512))))

(declare-fun b!1064220 () Bool)

(assert (=> b!1064220 (= e!675043 (validRegex!1403 lt!360259))))

(declare-fun matchRSpec!733 (Regex!2934 List!10164) Bool)

(assert (=> b!1064220 (matchRSpec!733 lt!360260 s!10566)))

(declare-fun lt!360258 () Unit!15543)

(declare-fun mainMatchTheorem!733 (Regex!2934 List!10164) Unit!15543)

(assert (=> b!1064220 (= lt!360258 (mainMatchTheorem!733 lt!360260 s!10566))))

(declare-fun b!1064221 () Bool)

(declare-fun tp!319510 () Bool)

(declare-fun tp!319513 () Bool)

(assert (=> b!1064221 (= e!675044 (and tp!319510 tp!319513))))

(declare-fun b!1064222 () Bool)

(assert (=> b!1064222 (= e!675047 (not e!675045))))

(declare-fun res!475450 () Bool)

(assert (=> b!1064222 (=> res!475450 e!675045)))

(declare-fun lt!360261 () Bool)

(assert (=> b!1064222 (= res!475450 (or lt!360261 (and (is-Concat!4767 r!15766) (is-EmptyExpr!2934 (regOne!6380 r!15766))) (and (is-Concat!4767 r!15766) (is-EmptyExpr!2934 (regTwo!6380 r!15766))) (is-Concat!4767 r!15766) (is-Union!2934 r!15766) (not (is-Star!2934 r!15766))))))

(assert (=> b!1064222 (= lt!360261 (matchRSpec!733 r!15766 s!10566))))

(assert (=> b!1064222 (= lt!360261 (matchR!1470 r!15766 s!10566))))

(declare-fun lt!360257 () Unit!15543)

(assert (=> b!1064222 (= lt!360257 (mainMatchTheorem!733 r!15766 s!10566))))

(assert (= (and start!91396 res!475449) b!1064222))

(assert (= (and b!1064222 (not res!475450)) b!1064216))

(assert (= (and b!1064216 (not res!475448)) b!1064220))

(assert (= (and start!91396 (is-ElementMatch!2934 r!15766)) b!1064215))

(assert (= (and start!91396 (is-Concat!4767 r!15766)) b!1064218))

(assert (= (and start!91396 (is-Star!2934 r!15766)) b!1064217))

(assert (= (and start!91396 (is-Union!2934 r!15766)) b!1064221))

(assert (= (and start!91396 (is-Cons!10148 s!10566)) b!1064219))

(declare-fun m!1222269 () Bool)

(assert (=> b!1064216 m!1222269))

(declare-fun m!1222271 () Bool)

(assert (=> b!1064216 m!1222271))

(assert (=> b!1064216 m!1222269))

(declare-fun m!1222273 () Bool)

(assert (=> b!1064216 m!1222273))

(declare-fun m!1222275 () Bool)

(assert (=> b!1064216 m!1222275))

(declare-fun m!1222277 () Bool)

(assert (=> b!1064216 m!1222277))

(declare-fun m!1222279 () Bool)

(assert (=> b!1064216 m!1222279))

(assert (=> b!1064216 m!1222277))

(declare-fun m!1222281 () Bool)

(assert (=> b!1064216 m!1222281))

(declare-fun m!1222283 () Bool)

(assert (=> b!1064216 m!1222283))

(declare-fun m!1222285 () Bool)

(assert (=> start!91396 m!1222285))

(declare-fun m!1222287 () Bool)

(assert (=> b!1064220 m!1222287))

(declare-fun m!1222289 () Bool)

(assert (=> b!1064220 m!1222289))

(declare-fun m!1222291 () Bool)

(assert (=> b!1064220 m!1222291))

(declare-fun m!1222293 () Bool)

(assert (=> b!1064222 m!1222293))

(declare-fun m!1222295 () Bool)

(assert (=> b!1064222 m!1222295))

(declare-fun m!1222297 () Bool)

(assert (=> b!1064222 m!1222297))

(push 1)

(assert (not b!1064221))

(assert tp_is_empty!5511)

(assert (not b!1064219))

(assert (not b!1064217))

(assert (not b!1064218))

(assert (not b!1064220))

(assert (not start!91396))

(assert (not b!1064216))

(assert (not b!1064222))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!251954 () Bool)

(declare-fun b!1064311 () Bool)

(assert (= bs!251954 (and b!1064311 b!1064216)))

(declare-fun lambda!38487 () Int)

(assert (=> bs!251954 (not (= lambda!38487 lambda!38473))))

(assert (=> bs!251954 (= (= r!15766 lt!360256) (= lambda!38487 lambda!38474))))

(assert (=> b!1064311 true))

(assert (=> b!1064311 true))

(declare-fun bs!251955 () Bool)

(declare-fun b!1064307 () Bool)

(assert (= bs!251955 (and b!1064307 b!1064216)))

(declare-fun lambda!38488 () Int)

(assert (=> bs!251955 (not (= lambda!38488 lambda!38473))))

(assert (=> bs!251955 (not (= lambda!38488 lambda!38474))))

(declare-fun bs!251956 () Bool)

(assert (= bs!251956 (and b!1064307 b!1064311)))

(assert (=> bs!251956 (not (= lambda!38488 lambda!38487))))

(assert (=> b!1064307 true))

(assert (=> b!1064307 true))

(declare-fun e!675095 () Bool)

(declare-fun call!76699 () Bool)

(assert (=> b!1064307 (= e!675095 call!76699)))

(declare-fun bm!76694 () Bool)

(declare-fun c!178436 () Bool)

(assert (=> bm!76694 (= call!76699 (Exists!657 (ite c!178436 lambda!38487 lambda!38488)))))

(declare-fun b!1064308 () Bool)

(declare-fun res!475493 () Bool)

(declare-fun e!675097 () Bool)

(assert (=> b!1064308 (=> res!475493 e!675097)))

(declare-fun call!76700 () Bool)

(assert (=> b!1064308 (= res!475493 call!76700)))

(assert (=> b!1064308 (= e!675095 e!675097)))

(declare-fun b!1064309 () Bool)

(declare-fun c!178437 () Bool)

(assert (=> b!1064309 (= c!178437 (is-ElementMatch!2934 r!15766))))

(declare-fun e!675096 () Bool)

(declare-fun e!675094 () Bool)

(assert (=> b!1064309 (= e!675096 e!675094)))

(declare-fun b!1064310 () Bool)

(declare-fun e!675093 () Bool)

(assert (=> b!1064310 (= e!675093 call!76700)))

(assert (=> b!1064311 (= e!675097 call!76699)))

(declare-fun d!300933 () Bool)

(declare-fun c!178438 () Bool)

(assert (=> d!300933 (= c!178438 (is-EmptyExpr!2934 r!15766))))

(assert (=> d!300933 (= (matchRSpec!733 r!15766 s!10566) e!675093)))

(declare-fun b!1064312 () Bool)

(declare-fun e!675091 () Bool)

(assert (=> b!1064312 (= e!675091 (matchRSpec!733 (regTwo!6381 r!15766) s!10566))))

(declare-fun b!1064313 () Bool)

(declare-fun c!178435 () Bool)

(assert (=> b!1064313 (= c!178435 (is-Union!2934 r!15766))))

(declare-fun e!675092 () Bool)

(assert (=> b!1064313 (= e!675094 e!675092)))

(declare-fun b!1064314 () Bool)

(assert (=> b!1064314 (= e!675093 e!675096)))

(declare-fun res!475494 () Bool)

(assert (=> b!1064314 (= res!475494 (not (is-EmptyLang!2934 r!15766)))))

(assert (=> b!1064314 (=> (not res!475494) (not e!675096))))

(declare-fun b!1064315 () Bool)

(assert (=> b!1064315 (= e!675092 e!675095)))

(assert (=> b!1064315 (= c!178436 (is-Star!2934 r!15766))))

(declare-fun b!1064316 () Bool)

(assert (=> b!1064316 (= e!675092 e!675091)))

(declare-fun res!475492 () Bool)

(assert (=> b!1064316 (= res!475492 (matchRSpec!733 (regOne!6381 r!15766) s!10566))))

(assert (=> b!1064316 (=> res!475492 e!675091)))

(declare-fun bm!76695 () Bool)

(declare-fun isEmpty!6564 (List!10164) Bool)

(assert (=> bm!76695 (= call!76700 (isEmpty!6564 s!10566))))

(declare-fun b!1064317 () Bool)

(assert (=> b!1064317 (= e!675094 (= s!10566 (Cons!10148 (c!178423 r!15766) Nil!10148)))))

(assert (= (and d!300933 c!178438) b!1064310))

(assert (= (and d!300933 (not c!178438)) b!1064314))

(assert (= (and b!1064314 res!475494) b!1064309))

(assert (= (and b!1064309 c!178437) b!1064317))

(assert (= (and b!1064309 (not c!178437)) b!1064313))

(assert (= (and b!1064313 c!178435) b!1064316))

(assert (= (and b!1064313 (not c!178435)) b!1064315))

(assert (= (and b!1064316 (not res!475492)) b!1064312))

(assert (= (and b!1064315 c!178436) b!1064308))

(assert (= (and b!1064315 (not c!178436)) b!1064307))

(assert (= (and b!1064308 (not res!475493)) b!1064311))

(assert (= (or b!1064311 b!1064307) bm!76694))

(assert (= (or b!1064310 b!1064308) bm!76695))

(declare-fun m!1222329 () Bool)

(assert (=> bm!76694 m!1222329))

(declare-fun m!1222331 () Bool)

(assert (=> b!1064312 m!1222331))

(declare-fun m!1222333 () Bool)

(assert (=> b!1064316 m!1222333))

(declare-fun m!1222335 () Bool)

(assert (=> bm!76695 m!1222335))

(assert (=> b!1064222 d!300933))

(declare-fun b!1064367 () Bool)

(declare-fun res!475525 () Bool)

(declare-fun e!675129 () Bool)

(assert (=> b!1064367 (=> (not res!475525) (not e!675129))))

(declare-fun call!76712 () Bool)

(assert (=> b!1064367 (= res!475525 (not call!76712))))

(declare-fun b!1064368 () Bool)

(declare-fun res!475530 () Bool)

(assert (=> b!1064368 (=> (not res!475530) (not e!675129))))

(declare-fun tail!1537 (List!10164) List!10164)

(assert (=> b!1064368 (= res!475530 (isEmpty!6564 (tail!1537 s!10566)))))

(declare-fun b!1064369 () Bool)

(declare-fun res!475529 () Bool)

(declare-fun e!675132 () Bool)

(assert (=> b!1064369 (=> res!475529 e!675132)))

(assert (=> b!1064369 (= res!475529 e!675129)))

(declare-fun res!475526 () Bool)

(assert (=> b!1064369 (=> (not res!475526) (not e!675129))))

(declare-fun lt!360288 () Bool)

(assert (=> b!1064369 (= res!475526 lt!360288)))

(declare-fun b!1064370 () Bool)

(declare-fun e!675130 () Bool)

(declare-fun nullable!1021 (Regex!2934) Bool)

(assert (=> b!1064370 (= e!675130 (nullable!1021 r!15766))))

(declare-fun b!1064371 () Bool)

(declare-fun res!475531 () Bool)

(declare-fun e!675131 () Bool)

(assert (=> b!1064371 (=> res!475531 e!675131)))

(assert (=> b!1064371 (= res!475531 (not (isEmpty!6564 (tail!1537 s!10566))))))

(declare-fun b!1064372 () Bool)

(declare-fun res!475527 () Bool)

(assert (=> b!1064372 (=> res!475527 e!675132)))

(assert (=> b!1064372 (= res!475527 (not (is-ElementMatch!2934 r!15766)))))

(declare-fun e!675133 () Bool)

(assert (=> b!1064372 (= e!675133 e!675132)))

(declare-fun b!1064373 () Bool)

(assert (=> b!1064373 (= e!675133 (not lt!360288))))

(declare-fun b!1064374 () Bool)

(declare-fun head!1975 (List!10164) C!6438)

(assert (=> b!1064374 (= e!675131 (not (= (head!1975 s!10566) (c!178423 r!15766))))))

(declare-fun b!1064375 () Bool)

(declare-fun e!675134 () Bool)

(assert (=> b!1064375 (= e!675134 e!675131)))

(declare-fun res!475528 () Bool)

(assert (=> b!1064375 (=> res!475528 e!675131)))

(assert (=> b!1064375 (= res!475528 call!76712)))

(declare-fun b!1064376 () Bool)

(declare-fun e!675135 () Bool)

(assert (=> b!1064376 (= e!675135 e!675133)))

(declare-fun c!178451 () Bool)

(assert (=> b!1064376 (= c!178451 (is-EmptyLang!2934 r!15766))))

(declare-fun b!1064377 () Bool)

(assert (=> b!1064377 (= e!675129 (= (head!1975 s!10566) (c!178423 r!15766)))))

(declare-fun b!1064378 () Bool)

(assert (=> b!1064378 (= e!675132 e!675134)))

(declare-fun res!475524 () Bool)

(assert (=> b!1064378 (=> (not res!475524) (not e!675134))))

(assert (=> b!1064378 (= res!475524 (not lt!360288))))

(declare-fun b!1064379 () Bool)

(declare-fun derivativeStep!820 (Regex!2934 C!6438) Regex!2934)

(assert (=> b!1064379 (= e!675130 (matchR!1470 (derivativeStep!820 r!15766 (head!1975 s!10566)) (tail!1537 s!10566)))))

(declare-fun b!1064380 () Bool)

(assert (=> b!1064380 (= e!675135 (= lt!360288 call!76712))))

(declare-fun bm!76707 () Bool)

(assert (=> bm!76707 (= call!76712 (isEmpty!6564 s!10566))))

(declare-fun d!300937 () Bool)

(assert (=> d!300937 e!675135))

(declare-fun c!178450 () Bool)

(assert (=> d!300937 (= c!178450 (is-EmptyExpr!2934 r!15766))))

(assert (=> d!300937 (= lt!360288 e!675130)))

(declare-fun c!178449 () Bool)

(assert (=> d!300937 (= c!178449 (isEmpty!6564 s!10566))))

(assert (=> d!300937 (validRegex!1403 r!15766)))

(assert (=> d!300937 (= (matchR!1470 r!15766 s!10566) lt!360288)))

(assert (= (and d!300937 c!178449) b!1064370))

(assert (= (and d!300937 (not c!178449)) b!1064379))

(assert (= (and d!300937 c!178450) b!1064380))

(assert (= (and d!300937 (not c!178450)) b!1064376))

(assert (= (and b!1064376 c!178451) b!1064373))

(assert (= (and b!1064376 (not c!178451)) b!1064372))

(assert (= (and b!1064372 (not res!475527)) b!1064369))

(assert (= (and b!1064369 res!475526) b!1064367))

(assert (= (and b!1064367 res!475525) b!1064368))

(assert (= (and b!1064368 res!475530) b!1064377))

(assert (= (and b!1064369 (not res!475529)) b!1064378))

(assert (= (and b!1064378 res!475524) b!1064375))

(assert (= (and b!1064375 (not res!475528)) b!1064371))

(assert (= (and b!1064371 (not res!475531)) b!1064374))

(assert (= (or b!1064380 b!1064367 b!1064375) bm!76707))

(declare-fun m!1222343 () Bool)

(assert (=> b!1064368 m!1222343))

(assert (=> b!1064368 m!1222343))

(declare-fun m!1222345 () Bool)

(assert (=> b!1064368 m!1222345))

(declare-fun m!1222347 () Bool)

(assert (=> b!1064377 m!1222347))

(assert (=> d!300937 m!1222335))

(assert (=> d!300937 m!1222285))

(declare-fun m!1222349 () Bool)

(assert (=> b!1064370 m!1222349))

(assert (=> b!1064379 m!1222347))

(assert (=> b!1064379 m!1222347))

(declare-fun m!1222351 () Bool)

(assert (=> b!1064379 m!1222351))

(assert (=> b!1064379 m!1222343))

(assert (=> b!1064379 m!1222351))

(assert (=> b!1064379 m!1222343))

(declare-fun m!1222353 () Bool)

(assert (=> b!1064379 m!1222353))

(assert (=> b!1064371 m!1222343))

(assert (=> b!1064371 m!1222343))

(assert (=> b!1064371 m!1222345))

(assert (=> bm!76707 m!1222335))

(assert (=> b!1064374 m!1222347))

(assert (=> b!1064222 d!300937))

(declare-fun d!300941 () Bool)

(assert (=> d!300941 (= (matchR!1470 r!15766 s!10566) (matchRSpec!733 r!15766 s!10566))))

(declare-fun lt!360291 () Unit!15543)

(declare-fun choose!6784 (Regex!2934 List!10164) Unit!15543)

(assert (=> d!300941 (= lt!360291 (choose!6784 r!15766 s!10566))))

(assert (=> d!300941 (validRegex!1403 r!15766)))

(assert (=> d!300941 (= (mainMatchTheorem!733 r!15766 s!10566) lt!360291)))

(declare-fun bs!251957 () Bool)

(assert (= bs!251957 d!300941))

(assert (=> bs!251957 m!1222295))

(assert (=> bs!251957 m!1222293))

(declare-fun m!1222355 () Bool)

(assert (=> bs!251957 m!1222355))

(assert (=> bs!251957 m!1222285))

(assert (=> b!1064222 d!300941))

(declare-fun d!300943 () Bool)

(declare-fun choose!6785 (Int) Bool)

(assert (=> d!300943 (= (Exists!657 lambda!38474) (choose!6785 lambda!38474))))

(declare-fun bs!251958 () Bool)

(assert (= bs!251958 d!300943))

(declare-fun m!1222357 () Bool)

(assert (=> bs!251958 m!1222357))

(assert (=> b!1064216 d!300943))

(declare-fun b!1064381 () Bool)

(declare-fun res!475533 () Bool)

(declare-fun e!675136 () Bool)

(assert (=> b!1064381 (=> (not res!475533) (not e!675136))))

(declare-fun call!76713 () Bool)

(assert (=> b!1064381 (= res!475533 (not call!76713))))

(declare-fun b!1064382 () Bool)

(declare-fun res!475538 () Bool)

(assert (=> b!1064382 (=> (not res!475538) (not e!675136))))

(assert (=> b!1064382 (= res!475538 (isEmpty!6564 (tail!1537 s!10566)))))

(declare-fun b!1064383 () Bool)

(declare-fun res!475537 () Bool)

(declare-fun e!675139 () Bool)

(assert (=> b!1064383 (=> res!475537 e!675139)))

(assert (=> b!1064383 (= res!475537 e!675136)))

(declare-fun res!475534 () Bool)

(assert (=> b!1064383 (=> (not res!475534) (not e!675136))))

(declare-fun lt!360292 () Bool)

(assert (=> b!1064383 (= res!475534 lt!360292)))

(declare-fun b!1064384 () Bool)

(declare-fun e!675137 () Bool)

(assert (=> b!1064384 (= e!675137 (nullable!1021 lt!360260))))

(declare-fun b!1064385 () Bool)

(declare-fun res!475539 () Bool)

(declare-fun e!675138 () Bool)

(assert (=> b!1064385 (=> res!475539 e!675138)))

(assert (=> b!1064385 (= res!475539 (not (isEmpty!6564 (tail!1537 s!10566))))))

(declare-fun b!1064386 () Bool)

(declare-fun res!475535 () Bool)

(assert (=> b!1064386 (=> res!475535 e!675139)))

(assert (=> b!1064386 (= res!475535 (not (is-ElementMatch!2934 lt!360260)))))

(declare-fun e!675140 () Bool)

(assert (=> b!1064386 (= e!675140 e!675139)))

(declare-fun b!1064387 () Bool)

(assert (=> b!1064387 (= e!675140 (not lt!360292))))

(declare-fun b!1064388 () Bool)

(assert (=> b!1064388 (= e!675138 (not (= (head!1975 s!10566) (c!178423 lt!360260))))))

(declare-fun b!1064389 () Bool)

(declare-fun e!675141 () Bool)

(assert (=> b!1064389 (= e!675141 e!675138)))

(declare-fun res!475536 () Bool)

(assert (=> b!1064389 (=> res!475536 e!675138)))

(assert (=> b!1064389 (= res!475536 call!76713)))

(declare-fun b!1064390 () Bool)

(declare-fun e!675142 () Bool)

(assert (=> b!1064390 (= e!675142 e!675140)))

(declare-fun c!178454 () Bool)

(assert (=> b!1064390 (= c!178454 (is-EmptyLang!2934 lt!360260))))

(declare-fun b!1064391 () Bool)

(assert (=> b!1064391 (= e!675136 (= (head!1975 s!10566) (c!178423 lt!360260)))))

(declare-fun b!1064392 () Bool)

(assert (=> b!1064392 (= e!675139 e!675141)))

(declare-fun res!475532 () Bool)

(assert (=> b!1064392 (=> (not res!475532) (not e!675141))))

(assert (=> b!1064392 (= res!475532 (not lt!360292))))

(declare-fun b!1064393 () Bool)

(assert (=> b!1064393 (= e!675137 (matchR!1470 (derivativeStep!820 lt!360260 (head!1975 s!10566)) (tail!1537 s!10566)))))

(declare-fun b!1064394 () Bool)

(assert (=> b!1064394 (= e!675142 (= lt!360292 call!76713))))

(declare-fun bm!76708 () Bool)

(assert (=> bm!76708 (= call!76713 (isEmpty!6564 s!10566))))

(declare-fun d!300945 () Bool)

(assert (=> d!300945 e!675142))

(declare-fun c!178453 () Bool)

(assert (=> d!300945 (= c!178453 (is-EmptyExpr!2934 lt!360260))))

(assert (=> d!300945 (= lt!360292 e!675137)))

(declare-fun c!178452 () Bool)

(assert (=> d!300945 (= c!178452 (isEmpty!6564 s!10566))))

(assert (=> d!300945 (validRegex!1403 lt!360260)))

(assert (=> d!300945 (= (matchR!1470 lt!360260 s!10566) lt!360292)))

(assert (= (and d!300945 c!178452) b!1064384))

(assert (= (and d!300945 (not c!178452)) b!1064393))

(assert (= (and d!300945 c!178453) b!1064394))

(assert (= (and d!300945 (not c!178453)) b!1064390))

(assert (= (and b!1064390 c!178454) b!1064387))

(assert (= (and b!1064390 (not c!178454)) b!1064386))

(assert (= (and b!1064386 (not res!475535)) b!1064383))

(assert (= (and b!1064383 res!475534) b!1064381))

(assert (= (and b!1064381 res!475533) b!1064382))

(assert (= (and b!1064382 res!475538) b!1064391))

(assert (= (and b!1064383 (not res!475537)) b!1064392))

(assert (= (and b!1064392 res!475532) b!1064389))

(assert (= (and b!1064389 (not res!475536)) b!1064385))

(assert (= (and b!1064385 (not res!475539)) b!1064388))

(assert (= (or b!1064394 b!1064381 b!1064389) bm!76708))

(assert (=> b!1064382 m!1222343))

(assert (=> b!1064382 m!1222343))

(assert (=> b!1064382 m!1222345))

(assert (=> b!1064391 m!1222347))

(assert (=> d!300945 m!1222335))

(declare-fun m!1222359 () Bool)

(assert (=> d!300945 m!1222359))

(declare-fun m!1222361 () Bool)

(assert (=> b!1064384 m!1222361))

(assert (=> b!1064393 m!1222347))

(assert (=> b!1064393 m!1222347))

(declare-fun m!1222363 () Bool)

(assert (=> b!1064393 m!1222363))

(assert (=> b!1064393 m!1222343))

(assert (=> b!1064393 m!1222363))

(assert (=> b!1064393 m!1222343))

(declare-fun m!1222365 () Bool)

(assert (=> b!1064393 m!1222365))

(assert (=> b!1064385 m!1222343))

(assert (=> b!1064385 m!1222343))

(assert (=> b!1064385 m!1222345))

(assert (=> bm!76708 m!1222335))

(assert (=> b!1064388 m!1222347))

(assert (=> b!1064216 d!300945))

(declare-fun d!300947 () Bool)

(declare-fun isEmpty!6565 (Option!2433) Bool)

(assert (=> d!300947 (= (isDefined!2075 (findConcatSeparation!539 (reg!3263 r!15766) lt!360256 Nil!10148 s!10566 s!10566)) (not (isEmpty!6565 (findConcatSeparation!539 (reg!3263 r!15766) lt!360256 Nil!10148 s!10566 s!10566))))))

(declare-fun bs!251959 () Bool)

(assert (= bs!251959 d!300947))

(assert (=> bs!251959 m!1222269))

(declare-fun m!1222367 () Bool)

(assert (=> bs!251959 m!1222367))

(assert (=> b!1064216 d!300947))

(declare-fun bs!251962 () Bool)

(declare-fun d!300949 () Bool)

(assert (= bs!251962 (and d!300949 b!1064216)))

(declare-fun lambda!38496 () Int)

(assert (=> bs!251962 (= (= (Star!2934 (reg!3263 r!15766)) lt!360256) (= lambda!38496 lambda!38473))))

(assert (=> bs!251962 (not (= lambda!38496 lambda!38474))))

(declare-fun bs!251963 () Bool)

(assert (= bs!251963 (and d!300949 b!1064311)))

(assert (=> bs!251963 (not (= lambda!38496 lambda!38487))))

(declare-fun bs!251964 () Bool)

(assert (= bs!251964 (and d!300949 b!1064307)))

(assert (=> bs!251964 (not (= lambda!38496 lambda!38488))))

(assert (=> d!300949 true))

(assert (=> d!300949 true))

(declare-fun lambda!38497 () Int)

(assert (=> bs!251962 (= (= (Star!2934 (reg!3263 r!15766)) lt!360256) (= lambda!38497 lambda!38474))))

(assert (=> bs!251962 (not (= lambda!38497 lambda!38473))))

(declare-fun bs!251965 () Bool)

(assert (= bs!251965 d!300949))

(assert (=> bs!251965 (not (= lambda!38497 lambda!38496))))

(assert (=> bs!251964 (not (= lambda!38497 lambda!38488))))

(assert (=> bs!251963 (= (= (Star!2934 (reg!3263 r!15766)) r!15766) (= lambda!38497 lambda!38487))))

(assert (=> d!300949 true))

(assert (=> d!300949 true))

(assert (=> d!300949 (= (Exists!657 lambda!38496) (Exists!657 lambda!38497))))

(declare-fun lt!360298 () Unit!15543)

(declare-fun choose!6786 (Regex!2934 List!10164) Unit!15543)

(assert (=> d!300949 (= lt!360298 (choose!6786 (reg!3263 r!15766) s!10566))))

(assert (=> d!300949 (validRegex!1403 (reg!3263 r!15766))))

(assert (=> d!300949 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!175 (reg!3263 r!15766) s!10566) lt!360298)))

(declare-fun m!1222375 () Bool)

(assert (=> bs!251965 m!1222375))

(declare-fun m!1222379 () Bool)

(assert (=> bs!251965 m!1222379))

(declare-fun m!1222381 () Bool)

(assert (=> bs!251965 m!1222381))

(declare-fun m!1222383 () Bool)

(assert (=> bs!251965 m!1222383))

(assert (=> b!1064216 d!300949))

(declare-fun b!1064431 () Bool)

(declare-fun c!178466 () Bool)

(assert (=> b!1064431 (= c!178466 (is-Star!2934 (reg!3263 r!15766)))))

(declare-fun e!675164 () Regex!2934)

(declare-fun e!675161 () Regex!2934)

(assert (=> b!1064431 (= e!675164 e!675161)))

(declare-fun b!1064432 () Bool)

(declare-fun e!675165 () Regex!2934)

(assert (=> b!1064432 (= e!675165 e!675164)))

(declare-fun c!178469 () Bool)

(assert (=> b!1064432 (= c!178469 (is-Union!2934 (reg!3263 r!15766)))))

(declare-fun d!300955 () Bool)

(declare-fun e!675166 () Bool)

(assert (=> d!300955 e!675166))

(declare-fun res!475556 () Bool)

(assert (=> d!300955 (=> (not res!475556) (not e!675166))))

(declare-fun lt!360301 () Regex!2934)

(assert (=> d!300955 (= res!475556 (validRegex!1403 lt!360301))))

(declare-fun e!675163 () Regex!2934)

(assert (=> d!300955 (= lt!360301 e!675163)))

(declare-fun c!178465 () Bool)

(assert (=> d!300955 (= c!178465 (and (is-Concat!4767 (reg!3263 r!15766)) (is-EmptyExpr!2934 (regOne!6380 (reg!3263 r!15766)))))))

(assert (=> d!300955 (validRegex!1403 (reg!3263 r!15766))))

(assert (=> d!300955 (= (removeUselessConcat!475 (reg!3263 r!15766)) lt!360301)))

(declare-fun b!1064433 () Bool)

(declare-fun call!76725 () Regex!2934)

(declare-fun call!76728 () Regex!2934)

(assert (=> b!1064433 (= e!675165 (Concat!4767 call!76725 call!76728))))

(declare-fun b!1064434 () Bool)

(declare-fun call!76727 () Regex!2934)

(assert (=> b!1064434 (= e!675163 call!76727)))

(declare-fun bm!76719 () Bool)

(declare-fun call!76724 () Regex!2934)

(assert (=> bm!76719 (= call!76724 call!76727)))

(declare-fun bm!76720 () Bool)

(declare-fun call!76726 () Regex!2934)

(assert (=> bm!76720 (= call!76726 call!76728)))

(declare-fun bm!76721 () Bool)

(assert (=> bm!76721 (= call!76728 call!76724)))

(declare-fun b!1064435 () Bool)

(assert (=> b!1064435 (= e!675164 (Union!2934 call!76725 call!76726))))

(declare-fun b!1064436 () Bool)

(declare-fun e!675162 () Regex!2934)

(assert (=> b!1064436 (= e!675162 call!76724)))

(declare-fun b!1064437 () Bool)

(declare-fun c!178468 () Bool)

(assert (=> b!1064437 (= c!178468 (is-Concat!4767 (reg!3263 r!15766)))))

(assert (=> b!1064437 (= e!675162 e!675165)))

(declare-fun bm!76722 () Bool)

(declare-fun c!178467 () Bool)

(assert (=> bm!76722 (= call!76727 (removeUselessConcat!475 (ite c!178465 (regTwo!6380 (reg!3263 r!15766)) (ite c!178467 (regOne!6380 (reg!3263 r!15766)) (ite c!178468 (regTwo!6380 (reg!3263 r!15766)) (ite c!178469 (regTwo!6381 (reg!3263 r!15766)) (reg!3263 (reg!3263 r!15766))))))))))

(declare-fun b!1064438 () Bool)

(assert (=> b!1064438 (= e!675163 e!675162)))

(assert (=> b!1064438 (= c!178467 (and (is-Concat!4767 (reg!3263 r!15766)) (is-EmptyExpr!2934 (regTwo!6380 (reg!3263 r!15766)))))))

(declare-fun b!1064439 () Bool)

(assert (=> b!1064439 (= e!675166 (= (nullable!1021 lt!360301) (nullable!1021 (reg!3263 r!15766))))))

(declare-fun b!1064440 () Bool)

(assert (=> b!1064440 (= e!675161 (Star!2934 call!76726))))

(declare-fun b!1064441 () Bool)

(assert (=> b!1064441 (= e!675161 (reg!3263 r!15766))))

(declare-fun bm!76723 () Bool)

(assert (=> bm!76723 (= call!76725 (removeUselessConcat!475 (ite c!178468 (regOne!6380 (reg!3263 r!15766)) (regOne!6381 (reg!3263 r!15766)))))))

(assert (= (and d!300955 c!178465) b!1064434))

(assert (= (and d!300955 (not c!178465)) b!1064438))

(assert (= (and b!1064438 c!178467) b!1064436))

(assert (= (and b!1064438 (not c!178467)) b!1064437))

(assert (= (and b!1064437 c!178468) b!1064433))

(assert (= (and b!1064437 (not c!178468)) b!1064432))

(assert (= (and b!1064432 c!178469) b!1064435))

(assert (= (and b!1064432 (not c!178469)) b!1064431))

(assert (= (and b!1064431 c!178466) b!1064440))

(assert (= (and b!1064431 (not c!178466)) b!1064441))

(assert (= (or b!1064435 b!1064440) bm!76720))

(assert (= (or b!1064433 bm!76720) bm!76721))

(assert (= (or b!1064433 b!1064435) bm!76723))

(assert (= (or b!1064436 bm!76721) bm!76719))

(assert (= (or b!1064434 bm!76719) bm!76722))

(assert (= (and d!300955 res!475556) b!1064439))

(declare-fun m!1222385 () Bool)

(assert (=> d!300955 m!1222385))

(assert (=> d!300955 m!1222383))

(declare-fun m!1222387 () Bool)

(assert (=> bm!76722 m!1222387))

(declare-fun m!1222389 () Bool)

(assert (=> b!1064439 m!1222389))

(declare-fun m!1222391 () Bool)

(assert (=> b!1064439 m!1222391))

(declare-fun m!1222393 () Bool)

(assert (=> bm!76723 m!1222393))

(assert (=> b!1064216 d!300955))

(declare-fun b!1064502 () Bool)

(declare-fun e!675202 () Option!2433)

(declare-fun e!675201 () Option!2433)

(assert (=> b!1064502 (= e!675202 e!675201)))

(declare-fun c!178484 () Bool)

(assert (=> b!1064502 (= c!178484 (is-Nil!10148 s!10566))))

(declare-fun b!1064503 () Bool)

(declare-fun res!475595 () Bool)

(declare-fun e!675199 () Bool)

(assert (=> b!1064503 (=> (not res!475595) (not e!675199))))

(declare-fun lt!360312 () Option!2433)

(declare-fun get!3650 (Option!2433) tuple2!11582)

(assert (=> b!1064503 (= res!475595 (matchR!1470 lt!360256 (_2!6617 (get!3650 lt!360312))))))

(declare-fun b!1064504 () Bool)

(assert (=> b!1064504 (= e!675201 None!2432)))

(declare-fun d!300957 () Bool)

(declare-fun e!675200 () Bool)

(assert (=> d!300957 e!675200))

(declare-fun res!475592 () Bool)

(assert (=> d!300957 (=> res!475592 e!675200)))

(assert (=> d!300957 (= res!475592 e!675199)))

(declare-fun res!475593 () Bool)

(assert (=> d!300957 (=> (not res!475593) (not e!675199))))

(assert (=> d!300957 (= res!475593 (isDefined!2075 lt!360312))))

(assert (=> d!300957 (= lt!360312 e!675202)))

(declare-fun c!178483 () Bool)

(declare-fun e!675198 () Bool)

(assert (=> d!300957 (= c!178483 e!675198)))

(declare-fun res!475591 () Bool)

(assert (=> d!300957 (=> (not res!475591) (not e!675198))))

(assert (=> d!300957 (= res!475591 (matchR!1470 (reg!3263 r!15766) Nil!10148))))

(assert (=> d!300957 (validRegex!1403 (reg!3263 r!15766))))

(assert (=> d!300957 (= (findConcatSeparation!539 (reg!3263 r!15766) lt!360256 Nil!10148 s!10566 s!10566) lt!360312)))

(declare-fun b!1064505 () Bool)

(declare-fun res!475594 () Bool)

(assert (=> b!1064505 (=> (not res!475594) (not e!675199))))

(assert (=> b!1064505 (= res!475594 (matchR!1470 (reg!3263 r!15766) (_1!6617 (get!3650 lt!360312))))))

(declare-fun b!1064506 () Bool)

(assert (=> b!1064506 (= e!675202 (Some!2432 (tuple2!11583 Nil!10148 s!10566)))))

(declare-fun b!1064507 () Bool)

(assert (=> b!1064507 (= e!675198 (matchR!1470 lt!360256 s!10566))))

(declare-fun b!1064508 () Bool)

(declare-fun lt!360311 () Unit!15543)

(declare-fun lt!360313 () Unit!15543)

(assert (=> b!1064508 (= lt!360311 lt!360313)))

(declare-fun ++!2805 (List!10164 List!10164) List!10164)

(assert (=> b!1064508 (= (++!2805 (++!2805 Nil!10148 (Cons!10148 (h!15549 s!10566) Nil!10148)) (t!101210 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!398 (List!10164 C!6438 List!10164 List!10164) Unit!15543)

(assert (=> b!1064508 (= lt!360313 (lemmaMoveElementToOtherListKeepsConcatEq!398 Nil!10148 (h!15549 s!10566) (t!101210 s!10566) s!10566))))

(assert (=> b!1064508 (= e!675201 (findConcatSeparation!539 (reg!3263 r!15766) lt!360256 (++!2805 Nil!10148 (Cons!10148 (h!15549 s!10566) Nil!10148)) (t!101210 s!10566) s!10566))))

(declare-fun b!1064509 () Bool)

(assert (=> b!1064509 (= e!675200 (not (isDefined!2075 lt!360312)))))

(declare-fun b!1064510 () Bool)

(assert (=> b!1064510 (= e!675199 (= (++!2805 (_1!6617 (get!3650 lt!360312)) (_2!6617 (get!3650 lt!360312))) s!10566))))

(assert (= (and d!300957 res!475591) b!1064507))

(assert (= (and d!300957 c!178483) b!1064506))

(assert (= (and d!300957 (not c!178483)) b!1064502))

(assert (= (and b!1064502 c!178484) b!1064504))

(assert (= (and b!1064502 (not c!178484)) b!1064508))

(assert (= (and d!300957 res!475593) b!1064505))

(assert (= (and b!1064505 res!475594) b!1064503))

(assert (= (and b!1064503 res!475595) b!1064510))

(assert (= (and d!300957 (not res!475592)) b!1064509))

(declare-fun m!1222395 () Bool)

(assert (=> d!300957 m!1222395))

(declare-fun m!1222397 () Bool)

(assert (=> d!300957 m!1222397))

(assert (=> d!300957 m!1222383))

(declare-fun m!1222399 () Bool)

(assert (=> b!1064510 m!1222399))

(declare-fun m!1222401 () Bool)

(assert (=> b!1064510 m!1222401))

(assert (=> b!1064503 m!1222399))

(declare-fun m!1222403 () Bool)

(assert (=> b!1064503 m!1222403))

(declare-fun m!1222405 () Bool)

(assert (=> b!1064507 m!1222405))

(declare-fun m!1222407 () Bool)

(assert (=> b!1064508 m!1222407))

(assert (=> b!1064508 m!1222407))

(declare-fun m!1222409 () Bool)

(assert (=> b!1064508 m!1222409))

(declare-fun m!1222413 () Bool)

(assert (=> b!1064508 m!1222413))

(assert (=> b!1064508 m!1222407))

(declare-fun m!1222415 () Bool)

(assert (=> b!1064508 m!1222415))

(assert (=> b!1064509 m!1222395))

(assert (=> b!1064505 m!1222399))

(declare-fun m!1222421 () Bool)

(assert (=> b!1064505 m!1222421))

(assert (=> b!1064216 d!300957))

(declare-fun d!300959 () Bool)

(assert (=> d!300959 (= (Exists!657 lambda!38473) (choose!6785 lambda!38473))))

(declare-fun bs!251967 () Bool)

(assert (= bs!251967 d!300959))

(declare-fun m!1222427 () Bool)

(assert (=> bs!251967 m!1222427))

(assert (=> b!1064216 d!300959))

(declare-fun bs!251969 () Bool)

(declare-fun d!300961 () Bool)

(assert (= bs!251969 (and d!300961 b!1064216)))

(declare-fun lambda!38500 () Int)

(assert (=> bs!251969 (not (= lambda!38500 lambda!38474))))

(declare-fun bs!251970 () Bool)

(assert (= bs!251970 (and d!300961 d!300949)))

(assert (=> bs!251970 (not (= lambda!38500 lambda!38497))))

(assert (=> bs!251969 (= lambda!38500 lambda!38473)))

(assert (=> bs!251970 (= (= lt!360256 (Star!2934 (reg!3263 r!15766))) (= lambda!38500 lambda!38496))))

(declare-fun bs!251971 () Bool)

(assert (= bs!251971 (and d!300961 b!1064307)))

(assert (=> bs!251971 (not (= lambda!38500 lambda!38488))))

(declare-fun bs!251972 () Bool)

(assert (= bs!251972 (and d!300961 b!1064311)))

(assert (=> bs!251972 (not (= lambda!38500 lambda!38487))))

(assert (=> d!300961 true))

(assert (=> d!300961 true))

(assert (=> d!300961 true))

(assert (=> d!300961 (= (isDefined!2075 (findConcatSeparation!539 (reg!3263 r!15766) lt!360256 Nil!10148 s!10566 s!10566)) (Exists!657 lambda!38500))))

(declare-fun lt!360316 () Unit!15543)

(declare-fun choose!6787 (Regex!2934 Regex!2934 List!10164) Unit!15543)

(assert (=> d!300961 (= lt!360316 (choose!6787 (reg!3263 r!15766) lt!360256 s!10566))))

(assert (=> d!300961 (validRegex!1403 (reg!3263 r!15766))))

(assert (=> d!300961 (= (lemmaFindConcatSeparationEquivalentToExists!539 (reg!3263 r!15766) lt!360256 s!10566) lt!360316)))

(declare-fun bs!251973 () Bool)

(assert (= bs!251973 d!300961))

(assert (=> bs!251973 m!1222269))

(declare-fun m!1222437 () Bool)

(assert (=> bs!251973 m!1222437))

(assert (=> bs!251973 m!1222383))

(declare-fun m!1222439 () Bool)

(assert (=> bs!251973 m!1222439))

(assert (=> bs!251973 m!1222269))

(assert (=> bs!251973 m!1222273))

(assert (=> b!1064216 d!300961))

(declare-fun b!1064533 () Bool)

(declare-fun e!675221 () Bool)

(declare-fun call!76740 () Bool)

(assert (=> b!1064533 (= e!675221 call!76740)))

(declare-fun bm!76733 () Bool)

(declare-fun call!76739 () Bool)

(declare-fun c!178489 () Bool)

(assert (=> bm!76733 (= call!76739 (validRegex!1403 (ite c!178489 (regOne!6381 lt!360259) (regOne!6380 lt!360259))))))

(declare-fun b!1064534 () Bool)

(declare-fun e!675220 () Bool)

(declare-fun e!675225 () Bool)

(assert (=> b!1064534 (= e!675220 e!675225)))

(declare-fun c!178490 () Bool)

(assert (=> b!1064534 (= c!178490 (is-Star!2934 lt!360259))))

(declare-fun d!300967 () Bool)

(declare-fun res!475611 () Bool)

(assert (=> d!300967 (=> res!475611 e!675220)))

(assert (=> d!300967 (= res!475611 (is-ElementMatch!2934 lt!360259))))

(assert (=> d!300967 (= (validRegex!1403 lt!360259) e!675220)))

(declare-fun bm!76734 () Bool)

(declare-fun call!76738 () Bool)

(assert (=> bm!76734 (= call!76738 call!76740)))

(declare-fun b!1064535 () Bool)

(declare-fun e!675222 () Bool)

(assert (=> b!1064535 (= e!675222 call!76738)))

(declare-fun b!1064536 () Bool)

(declare-fun e!675219 () Bool)

(assert (=> b!1064536 (= e!675219 e!675222)))

(declare-fun res!475613 () Bool)

(assert (=> b!1064536 (=> (not res!475613) (not e!675222))))

(assert (=> b!1064536 (= res!475613 call!76739)))

(declare-fun b!1064537 () Bool)

(declare-fun res!475610 () Bool)

(assert (=> b!1064537 (=> res!475610 e!675219)))

(assert (=> b!1064537 (= res!475610 (not (is-Concat!4767 lt!360259)))))

(declare-fun e!675224 () Bool)

(assert (=> b!1064537 (= e!675224 e!675219)))

(declare-fun b!1064538 () Bool)

(declare-fun res!475614 () Bool)

(declare-fun e!675223 () Bool)

(assert (=> b!1064538 (=> (not res!475614) (not e!675223))))

(assert (=> b!1064538 (= res!475614 call!76739)))

(assert (=> b!1064538 (= e!675224 e!675223)))

(declare-fun bm!76735 () Bool)

(assert (=> bm!76735 (= call!76740 (validRegex!1403 (ite c!178490 (reg!3263 lt!360259) (ite c!178489 (regTwo!6381 lt!360259) (regTwo!6380 lt!360259)))))))

(declare-fun b!1064539 () Bool)

(assert (=> b!1064539 (= e!675225 e!675224)))

(assert (=> b!1064539 (= c!178489 (is-Union!2934 lt!360259))))

(declare-fun b!1064540 () Bool)

(assert (=> b!1064540 (= e!675223 call!76738)))

(declare-fun b!1064541 () Bool)

(assert (=> b!1064541 (= e!675225 e!675221)))

(declare-fun res!475612 () Bool)

(assert (=> b!1064541 (= res!475612 (not (nullable!1021 (reg!3263 lt!360259))))))

(assert (=> b!1064541 (=> (not res!475612) (not e!675221))))

(assert (= (and d!300967 (not res!475611)) b!1064534))

(assert (= (and b!1064534 c!178490) b!1064541))

(assert (= (and b!1064534 (not c!178490)) b!1064539))

(assert (= (and b!1064541 res!475612) b!1064533))

(assert (= (and b!1064539 c!178489) b!1064538))

(assert (= (and b!1064539 (not c!178489)) b!1064537))

(assert (= (and b!1064538 res!475614) b!1064540))

(assert (= (and b!1064537 (not res!475610)) b!1064536))

(assert (= (and b!1064536 res!475613) b!1064535))

(assert (= (or b!1064540 b!1064535) bm!76734))

(assert (= (or b!1064538 b!1064536) bm!76733))

(assert (= (or b!1064533 bm!76734) bm!76735))

(declare-fun m!1222441 () Bool)

(assert (=> bm!76733 m!1222441))

(declare-fun m!1222443 () Bool)

(assert (=> bm!76735 m!1222443))

(declare-fun m!1222445 () Bool)

(assert (=> b!1064541 m!1222445))

(assert (=> b!1064220 d!300967))

(declare-fun bs!251974 () Bool)

(declare-fun b!1064546 () Bool)

(assert (= bs!251974 (and b!1064546 b!1064216)))

(declare-fun lambda!38501 () Int)

(assert (=> bs!251974 (= (and (= (reg!3263 lt!360260) (reg!3263 r!15766)) (= lt!360260 lt!360256)) (= lambda!38501 lambda!38474))))

(declare-fun bs!251975 () Bool)

(assert (= bs!251975 (and b!1064546 d!300949)))

(assert (=> bs!251975 (= (and (= (reg!3263 lt!360260) (reg!3263 r!15766)) (= lt!360260 (Star!2934 (reg!3263 r!15766)))) (= lambda!38501 lambda!38497))))

(declare-fun bs!251976 () Bool)

(assert (= bs!251976 (and b!1064546 d!300961)))

(assert (=> bs!251976 (not (= lambda!38501 lambda!38500))))

(assert (=> bs!251974 (not (= lambda!38501 lambda!38473))))

(assert (=> bs!251975 (not (= lambda!38501 lambda!38496))))

(declare-fun bs!251977 () Bool)

(assert (= bs!251977 (and b!1064546 b!1064307)))

(assert (=> bs!251977 (not (= lambda!38501 lambda!38488))))

(declare-fun bs!251978 () Bool)

(assert (= bs!251978 (and b!1064546 b!1064311)))

(assert (=> bs!251978 (= (and (= (reg!3263 lt!360260) (reg!3263 r!15766)) (= lt!360260 r!15766)) (= lambda!38501 lambda!38487))))

(assert (=> b!1064546 true))

(assert (=> b!1064546 true))

(declare-fun bs!251979 () Bool)

(declare-fun b!1064542 () Bool)

(assert (= bs!251979 (and b!1064542 b!1064216)))

(declare-fun lambda!38504 () Int)

(assert (=> bs!251979 (not (= lambda!38504 lambda!38474))))

(declare-fun bs!251980 () Bool)

(assert (= bs!251980 (and b!1064542 d!300949)))

(assert (=> bs!251980 (not (= lambda!38504 lambda!38497))))

(declare-fun bs!251981 () Bool)

(assert (= bs!251981 (and b!1064542 b!1064546)))

(assert (=> bs!251981 (not (= lambda!38504 lambda!38501))))

(declare-fun bs!251982 () Bool)

(assert (= bs!251982 (and b!1064542 d!300961)))

(assert (=> bs!251982 (not (= lambda!38504 lambda!38500))))

(assert (=> bs!251979 (not (= lambda!38504 lambda!38473))))

(assert (=> bs!251980 (not (= lambda!38504 lambda!38496))))

(declare-fun bs!251983 () Bool)

(assert (= bs!251983 (and b!1064542 b!1064307)))

(assert (=> bs!251983 (= (and (= (regOne!6380 lt!360260) (regOne!6380 r!15766)) (= (regTwo!6380 lt!360260) (regTwo!6380 r!15766))) (= lambda!38504 lambda!38488))))

(declare-fun bs!251984 () Bool)

(assert (= bs!251984 (and b!1064542 b!1064311)))

(assert (=> bs!251984 (not (= lambda!38504 lambda!38487))))

(assert (=> b!1064542 true))

(assert (=> b!1064542 true))

(declare-fun e!675230 () Bool)

(declare-fun call!76741 () Bool)

(assert (=> b!1064542 (= e!675230 call!76741)))

(declare-fun c!178492 () Bool)

(declare-fun bm!76736 () Bool)

(assert (=> bm!76736 (= call!76741 (Exists!657 (ite c!178492 lambda!38501 lambda!38504)))))

(declare-fun b!1064543 () Bool)

(declare-fun res!475616 () Bool)

(declare-fun e!675232 () Bool)

(assert (=> b!1064543 (=> res!475616 e!675232)))

(declare-fun call!76742 () Bool)

(assert (=> b!1064543 (= res!475616 call!76742)))

(assert (=> b!1064543 (= e!675230 e!675232)))

(declare-fun b!1064544 () Bool)

(declare-fun c!178493 () Bool)

(assert (=> b!1064544 (= c!178493 (is-ElementMatch!2934 lt!360260))))

(declare-fun e!675231 () Bool)

(declare-fun e!675229 () Bool)

(assert (=> b!1064544 (= e!675231 e!675229)))

(declare-fun b!1064545 () Bool)

(declare-fun e!675228 () Bool)

(assert (=> b!1064545 (= e!675228 call!76742)))

(assert (=> b!1064546 (= e!675232 call!76741)))

(declare-fun d!300969 () Bool)

(declare-fun c!178494 () Bool)

(assert (=> d!300969 (= c!178494 (is-EmptyExpr!2934 lt!360260))))

(assert (=> d!300969 (= (matchRSpec!733 lt!360260 s!10566) e!675228)))

(declare-fun b!1064547 () Bool)

(declare-fun e!675226 () Bool)

(assert (=> b!1064547 (= e!675226 (matchRSpec!733 (regTwo!6381 lt!360260) s!10566))))

(declare-fun b!1064548 () Bool)

(declare-fun c!178491 () Bool)

(assert (=> b!1064548 (= c!178491 (is-Union!2934 lt!360260))))

(declare-fun e!675227 () Bool)

(assert (=> b!1064548 (= e!675229 e!675227)))

(declare-fun b!1064549 () Bool)

(assert (=> b!1064549 (= e!675228 e!675231)))

(declare-fun res!475617 () Bool)

(assert (=> b!1064549 (= res!475617 (not (is-EmptyLang!2934 lt!360260)))))

(assert (=> b!1064549 (=> (not res!475617) (not e!675231))))

(declare-fun b!1064550 () Bool)

(assert (=> b!1064550 (= e!675227 e!675230)))

(assert (=> b!1064550 (= c!178492 (is-Star!2934 lt!360260))))

(declare-fun b!1064551 () Bool)

(assert (=> b!1064551 (= e!675227 e!675226)))

(declare-fun res!475615 () Bool)

(assert (=> b!1064551 (= res!475615 (matchRSpec!733 (regOne!6381 lt!360260) s!10566))))

(assert (=> b!1064551 (=> res!475615 e!675226)))

(declare-fun bm!76737 () Bool)

(assert (=> bm!76737 (= call!76742 (isEmpty!6564 s!10566))))

(declare-fun b!1064552 () Bool)

(assert (=> b!1064552 (= e!675229 (= s!10566 (Cons!10148 (c!178423 lt!360260) Nil!10148)))))

(assert (= (and d!300969 c!178494) b!1064545))

(assert (= (and d!300969 (not c!178494)) b!1064549))

(assert (= (and b!1064549 res!475617) b!1064544))

(assert (= (and b!1064544 c!178493) b!1064552))

(assert (= (and b!1064544 (not c!178493)) b!1064548))

(assert (= (and b!1064548 c!178491) b!1064551))

(assert (= (and b!1064548 (not c!178491)) b!1064550))

(assert (= (and b!1064551 (not res!475615)) b!1064547))

(assert (= (and b!1064550 c!178492) b!1064543))

(assert (= (and b!1064550 (not c!178492)) b!1064542))

(assert (= (and b!1064543 (not res!475616)) b!1064546))

(assert (= (or b!1064546 b!1064542) bm!76736))

(assert (= (or b!1064545 b!1064543) bm!76737))

(declare-fun m!1222447 () Bool)

(assert (=> bm!76736 m!1222447))

(declare-fun m!1222449 () Bool)

(assert (=> b!1064547 m!1222449))

(declare-fun m!1222451 () Bool)

(assert (=> b!1064551 m!1222451))

(assert (=> bm!76737 m!1222335))

(assert (=> b!1064220 d!300969))

(declare-fun d!300971 () Bool)

(assert (=> d!300971 (= (matchR!1470 lt!360260 s!10566) (matchRSpec!733 lt!360260 s!10566))))

(declare-fun lt!360319 () Unit!15543)

(assert (=> d!300971 (= lt!360319 (choose!6784 lt!360260 s!10566))))

(assert (=> d!300971 (validRegex!1403 lt!360260)))

(assert (=> d!300971 (= (mainMatchTheorem!733 lt!360260 s!10566) lt!360319)))

(declare-fun bs!251985 () Bool)

(assert (= bs!251985 d!300971))

(assert (=> bs!251985 m!1222279))

(assert (=> bs!251985 m!1222289))

(declare-fun m!1222453 () Bool)

(assert (=> bs!251985 m!1222453))

(assert (=> bs!251985 m!1222359))

(assert (=> b!1064220 d!300971))

(declare-fun b!1064557 () Bool)

(declare-fun e!675237 () Bool)

(declare-fun call!76745 () Bool)

(assert (=> b!1064557 (= e!675237 call!76745)))

(declare-fun bm!76738 () Bool)

(declare-fun call!76744 () Bool)

(declare-fun c!178495 () Bool)

(assert (=> bm!76738 (= call!76744 (validRegex!1403 (ite c!178495 (regOne!6381 r!15766) (regOne!6380 r!15766))))))

(declare-fun b!1064558 () Bool)

(declare-fun e!675236 () Bool)

(declare-fun e!675241 () Bool)

(assert (=> b!1064558 (= e!675236 e!675241)))

(declare-fun c!178496 () Bool)

(assert (=> b!1064558 (= c!178496 (is-Star!2934 r!15766))))

(declare-fun d!300973 () Bool)

(declare-fun res!475623 () Bool)

(assert (=> d!300973 (=> res!475623 e!675236)))

(assert (=> d!300973 (= res!475623 (is-ElementMatch!2934 r!15766))))

(assert (=> d!300973 (= (validRegex!1403 r!15766) e!675236)))

(declare-fun bm!76739 () Bool)

(declare-fun call!76743 () Bool)

(assert (=> bm!76739 (= call!76743 call!76745)))

(declare-fun b!1064559 () Bool)

(declare-fun e!675238 () Bool)

(assert (=> b!1064559 (= e!675238 call!76743)))

(declare-fun b!1064560 () Bool)

(declare-fun e!675235 () Bool)

(assert (=> b!1064560 (= e!675235 e!675238)))

(declare-fun res!475625 () Bool)

(assert (=> b!1064560 (=> (not res!475625) (not e!675238))))

(assert (=> b!1064560 (= res!475625 call!76744)))

(declare-fun b!1064561 () Bool)

(declare-fun res!475622 () Bool)

(assert (=> b!1064561 (=> res!475622 e!675235)))

(assert (=> b!1064561 (= res!475622 (not (is-Concat!4767 r!15766)))))

(declare-fun e!675240 () Bool)

(assert (=> b!1064561 (= e!675240 e!675235)))

(declare-fun b!1064562 () Bool)

(declare-fun res!475626 () Bool)

(declare-fun e!675239 () Bool)

(assert (=> b!1064562 (=> (not res!475626) (not e!675239))))

(assert (=> b!1064562 (= res!475626 call!76744)))

(assert (=> b!1064562 (= e!675240 e!675239)))

(declare-fun bm!76740 () Bool)

(assert (=> bm!76740 (= call!76745 (validRegex!1403 (ite c!178496 (reg!3263 r!15766) (ite c!178495 (regTwo!6381 r!15766) (regTwo!6380 r!15766)))))))

(declare-fun b!1064563 () Bool)

(assert (=> b!1064563 (= e!675241 e!675240)))

(assert (=> b!1064563 (= c!178495 (is-Union!2934 r!15766))))

(declare-fun b!1064564 () Bool)

(assert (=> b!1064564 (= e!675239 call!76743)))

(declare-fun b!1064565 () Bool)

(assert (=> b!1064565 (= e!675241 e!675237)))

(declare-fun res!475624 () Bool)

(assert (=> b!1064565 (= res!475624 (not (nullable!1021 (reg!3263 r!15766))))))

(assert (=> b!1064565 (=> (not res!475624) (not e!675237))))

(assert (= (and d!300973 (not res!475623)) b!1064558))

(assert (= (and b!1064558 c!178496) b!1064565))

(assert (= (and b!1064558 (not c!178496)) b!1064563))

(assert (= (and b!1064565 res!475624) b!1064557))

(assert (= (and b!1064563 c!178495) b!1064562))

(assert (= (and b!1064563 (not c!178495)) b!1064561))

(assert (= (and b!1064562 res!475626) b!1064564))

(assert (= (and b!1064561 (not res!475622)) b!1064560))

(assert (= (and b!1064560 res!475625) b!1064559))

(assert (= (or b!1064564 b!1064559) bm!76739))

(assert (= (or b!1064562 b!1064560) bm!76738))

(assert (= (or b!1064557 bm!76739) bm!76740))

(declare-fun m!1222455 () Bool)

(assert (=> bm!76738 m!1222455))

(declare-fun m!1222457 () Bool)

(assert (=> bm!76740 m!1222457))

(assert (=> b!1064565 m!1222391))

(assert (=> start!91396 d!300973))

(declare-fun b!1064577 () Bool)

(declare-fun e!675244 () Bool)

(declare-fun tp!319545 () Bool)

(declare-fun tp!319544 () Bool)

(assert (=> b!1064577 (= e!675244 (and tp!319545 tp!319544))))

(declare-fun b!1064578 () Bool)

(declare-fun tp!319543 () Bool)

(assert (=> b!1064578 (= e!675244 tp!319543)))

(assert (=> b!1064217 (= tp!319511 e!675244)))

(declare-fun b!1064576 () Bool)

(assert (=> b!1064576 (= e!675244 tp_is_empty!5511)))

(declare-fun b!1064579 () Bool)

(declare-fun tp!319547 () Bool)

(declare-fun tp!319546 () Bool)

(assert (=> b!1064579 (= e!675244 (and tp!319547 tp!319546))))

(assert (= (and b!1064217 (is-ElementMatch!2934 (reg!3263 r!15766))) b!1064576))

(assert (= (and b!1064217 (is-Concat!4767 (reg!3263 r!15766))) b!1064577))

(assert (= (and b!1064217 (is-Star!2934 (reg!3263 r!15766))) b!1064578))

(assert (= (and b!1064217 (is-Union!2934 (reg!3263 r!15766))) b!1064579))

(declare-fun b!1064581 () Bool)

(declare-fun e!675245 () Bool)

(declare-fun tp!319550 () Bool)

(declare-fun tp!319549 () Bool)

(assert (=> b!1064581 (= e!675245 (and tp!319550 tp!319549))))

(declare-fun b!1064582 () Bool)

(declare-fun tp!319548 () Bool)

(assert (=> b!1064582 (= e!675245 tp!319548)))

(assert (=> b!1064221 (= tp!319510 e!675245)))

(declare-fun b!1064580 () Bool)

(assert (=> b!1064580 (= e!675245 tp_is_empty!5511)))

(declare-fun b!1064583 () Bool)

(declare-fun tp!319552 () Bool)

(declare-fun tp!319551 () Bool)

(assert (=> b!1064583 (= e!675245 (and tp!319552 tp!319551))))

(assert (= (and b!1064221 (is-ElementMatch!2934 (regOne!6381 r!15766))) b!1064580))

(assert (= (and b!1064221 (is-Concat!4767 (regOne!6381 r!15766))) b!1064581))

(assert (= (and b!1064221 (is-Star!2934 (regOne!6381 r!15766))) b!1064582))

(assert (= (and b!1064221 (is-Union!2934 (regOne!6381 r!15766))) b!1064583))

(declare-fun b!1064585 () Bool)

(declare-fun e!675246 () Bool)

(declare-fun tp!319555 () Bool)

(declare-fun tp!319554 () Bool)

(assert (=> b!1064585 (= e!675246 (and tp!319555 tp!319554))))

(declare-fun b!1064586 () Bool)

(declare-fun tp!319553 () Bool)

(assert (=> b!1064586 (= e!675246 tp!319553)))

(assert (=> b!1064221 (= tp!319513 e!675246)))

(declare-fun b!1064584 () Bool)

(assert (=> b!1064584 (= e!675246 tp_is_empty!5511)))

(declare-fun b!1064587 () Bool)

(declare-fun tp!319557 () Bool)

(declare-fun tp!319556 () Bool)

(assert (=> b!1064587 (= e!675246 (and tp!319557 tp!319556))))

(assert (= (and b!1064221 (is-ElementMatch!2934 (regTwo!6381 r!15766))) b!1064584))

(assert (= (and b!1064221 (is-Concat!4767 (regTwo!6381 r!15766))) b!1064585))

(assert (= (and b!1064221 (is-Star!2934 (regTwo!6381 r!15766))) b!1064586))

(assert (= (and b!1064221 (is-Union!2934 (regTwo!6381 r!15766))) b!1064587))

(declare-fun b!1064598 () Bool)

(declare-fun e!675251 () Bool)

(declare-fun tp!319560 () Bool)

(assert (=> b!1064598 (= e!675251 (and tp_is_empty!5511 tp!319560))))

(assert (=> b!1064219 (= tp!319512 e!675251)))

(assert (= (and b!1064219 (is-Cons!10148 (t!101210 s!10566))) b!1064598))

(declare-fun b!1064600 () Bool)

(declare-fun e!675252 () Bool)

(declare-fun tp!319563 () Bool)

(declare-fun tp!319562 () Bool)

(assert (=> b!1064600 (= e!675252 (and tp!319563 tp!319562))))

(declare-fun b!1064601 () Bool)

(declare-fun tp!319561 () Bool)

(assert (=> b!1064601 (= e!675252 tp!319561)))

(assert (=> b!1064218 (= tp!319514 e!675252)))

(declare-fun b!1064599 () Bool)

(assert (=> b!1064599 (= e!675252 tp_is_empty!5511)))

(declare-fun b!1064602 () Bool)

(declare-fun tp!319565 () Bool)

(declare-fun tp!319564 () Bool)

(assert (=> b!1064602 (= e!675252 (and tp!319565 tp!319564))))

(assert (= (and b!1064218 (is-ElementMatch!2934 (regOne!6380 r!15766))) b!1064599))

(assert (= (and b!1064218 (is-Concat!4767 (regOne!6380 r!15766))) b!1064600))

(assert (= (and b!1064218 (is-Star!2934 (regOne!6380 r!15766))) b!1064601))

(assert (= (and b!1064218 (is-Union!2934 (regOne!6380 r!15766))) b!1064602))

(declare-fun b!1064604 () Bool)

(declare-fun e!675253 () Bool)

(declare-fun tp!319568 () Bool)

(declare-fun tp!319567 () Bool)

(assert (=> b!1064604 (= e!675253 (and tp!319568 tp!319567))))

(declare-fun b!1064605 () Bool)

(declare-fun tp!319566 () Bool)

(assert (=> b!1064605 (= e!675253 tp!319566)))

(assert (=> b!1064218 (= tp!319509 e!675253)))

(declare-fun b!1064603 () Bool)

(assert (=> b!1064603 (= e!675253 tp_is_empty!5511)))

(declare-fun b!1064606 () Bool)

(declare-fun tp!319570 () Bool)

(declare-fun tp!319569 () Bool)

(assert (=> b!1064606 (= e!675253 (and tp!319570 tp!319569))))

(assert (= (and b!1064218 (is-ElementMatch!2934 (regTwo!6380 r!15766))) b!1064603))

(assert (= (and b!1064218 (is-Concat!4767 (regTwo!6380 r!15766))) b!1064604))

(assert (= (and b!1064218 (is-Star!2934 (regTwo!6380 r!15766))) b!1064605))

(assert (= (and b!1064218 (is-Union!2934 (regTwo!6380 r!15766))) b!1064606))

(push 1)

(assert (not d!300947))

(assert (not bm!76735))

(assert (not b!1064503))

(assert (not b!1064391))

(assert (not b!1064370))

(assert (not b!1064581))

(assert (not b!1064565))

(assert (not b!1064505))

(assert (not b!1064578))

(assert (not b!1064382))

(assert (not d!300945))

(assert (not bm!76736))

(assert (not b!1064551))

(assert (not d!300959))

(assert tp_is_empty!5511)

(assert (not b!1064371))

(assert (not b!1064374))

(assert (not bm!76708))

(assert (not b!1064600))

(assert (not b!1064368))

(assert (not b!1064377))

(assert (not d!300943))

(assert (not b!1064439))

(assert (not b!1064316))

(assert (not b!1064510))

(assert (not bm!76733))

(assert (not b!1064587))

(assert (not bm!76740))

(assert (not b!1064509))

(assert (not b!1064585))

(assert (not b!1064586))

(assert (not bm!76737))

(assert (not b!1064508))

(assert (not d!300941))

(assert (not d!300971))

(assert (not b!1064583))

(assert (not d!300961))

(assert (not b!1064388))

(assert (not bm!76695))

(assert (not b!1064507))

(assert (not bm!76738))

(assert (not d!300957))

(assert (not b!1064604))

(assert (not b!1064379))

(assert (not bm!76707))

(assert (not b!1064605))

(assert (not b!1064582))

(assert (not b!1064601))

(assert (not b!1064606))

(assert (not d!300955))

(assert (not bm!76722))

(assert (not d!300949))

(assert (not b!1064577))

(assert (not d!300937))

(assert (not b!1064385))

(assert (not b!1064579))

(assert (not b!1064598))

(assert (not b!1064312))

(assert (not b!1064384))

(assert (not b!1064547))

(assert (not b!1064541))

(assert (not bm!76723))

(assert (not b!1064393))

(assert (not bm!76694))

(assert (not b!1064602))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

