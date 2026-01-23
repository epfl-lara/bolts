; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!291086 () Bool)

(assert start!291086)

(declare-fun b!3037111 () Bool)

(declare-fun e!1904333 () Bool)

(declare-fun tp_is_empty!16439 () Bool)

(declare-fun tp!961767 () Bool)

(assert (=> b!3037111 (= e!1904333 (and tp_is_empty!16439 tp!961767))))

(declare-fun b!3037112 () Bool)

(declare-fun e!1904335 () Bool)

(declare-fun tp!961766 () Bool)

(assert (=> b!3037112 (= e!1904335 tp!961766)))

(declare-fun b!3037113 () Bool)

(declare-fun tp!961764 () Bool)

(declare-fun tp!961763 () Bool)

(assert (=> b!3037113 (= e!1904335 (and tp!961764 tp!961763))))

(declare-fun b!3037114 () Bool)

(declare-fun res!1249194 () Bool)

(declare-fun e!1904334 () Bool)

(assert (=> b!3037114 (=> res!1249194 e!1904334)))

(declare-datatypes ((C!19062 0))(
  ( (C!19063 (val!11567 Int)) )
))
(declare-datatypes ((List!35303 0))(
  ( (Nil!35179) (Cons!35179 (h!40599 C!19062) (t!234368 List!35303)) )
))
(declare-fun s!11993 () List!35303)

(declare-fun isEmpty!19479 (List!35303) Bool)

(assert (=> b!3037114 (= res!1249194 (not (isEmpty!19479 s!11993)))))

(declare-fun b!3037115 () Bool)

(declare-fun tp!961762 () Bool)

(declare-fun tp!961765 () Bool)

(assert (=> b!3037115 (= e!1904335 (and tp!961762 tp!961765))))

(declare-fun b!3037116 () Bool)

(declare-datatypes ((Regex!9438 0))(
  ( (ElementMatch!9438 (c!502312 C!19062)) (Concat!14759 (regOne!19388 Regex!9438) (regTwo!19388 Regex!9438)) (EmptyExpr!9438) (Star!9438 (reg!9767 Regex!9438)) (EmptyLang!9438) (Union!9438 (regOne!19389 Regex!9438) (regTwo!19389 Regex!9438)) )
))
(declare-fun r!17423 () Regex!9438)

(declare-fun matchR!4320 (Regex!9438 List!35303) Bool)

(declare-fun simplify!405 (Regex!9438) Regex!9438)

(assert (=> b!3037116 (= e!1904334 (matchR!4320 (simplify!405 r!17423) s!11993))))

(declare-fun b!3037117 () Bool)

(declare-fun e!1904332 () Bool)

(assert (=> b!3037117 (= e!1904332 (not e!1904334))))

(declare-fun res!1249193 () Bool)

(assert (=> b!3037117 (=> res!1249193 e!1904334)))

(declare-fun lt!1046842 () Bool)

(assert (=> b!3037117 (= res!1249193 (or (not lt!1046842) (is-Concat!14759 r!17423) (is-Union!9438 r!17423) (not (is-Star!9438 r!17423))))))

(declare-fun matchRSpec!1575 (Regex!9438 List!35303) Bool)

(assert (=> b!3037117 (= lt!1046842 (matchRSpec!1575 r!17423 s!11993))))

(assert (=> b!3037117 (= lt!1046842 (matchR!4320 r!17423 s!11993))))

(declare-datatypes ((Unit!49299 0))(
  ( (Unit!49300) )
))
(declare-fun lt!1046841 () Unit!49299)

(declare-fun mainMatchTheorem!1575 (Regex!9438 List!35303) Unit!49299)

(assert (=> b!3037117 (= lt!1046841 (mainMatchTheorem!1575 r!17423 s!11993))))

(declare-fun res!1249195 () Bool)

(assert (=> start!291086 (=> (not res!1249195) (not e!1904332))))

(declare-fun validRegex!4171 (Regex!9438) Bool)

(assert (=> start!291086 (= res!1249195 (validRegex!4171 r!17423))))

(assert (=> start!291086 e!1904332))

(assert (=> start!291086 e!1904335))

(assert (=> start!291086 e!1904333))

(declare-fun b!3037110 () Bool)

(assert (=> b!3037110 (= e!1904335 tp_is_empty!16439)))

(assert (= (and start!291086 res!1249195) b!3037117))

(assert (= (and b!3037117 (not res!1249193)) b!3037114))

(assert (= (and b!3037114 (not res!1249194)) b!3037116))

(assert (= (and start!291086 (is-ElementMatch!9438 r!17423)) b!3037110))

(assert (= (and start!291086 (is-Concat!14759 r!17423)) b!3037113))

(assert (= (and start!291086 (is-Star!9438 r!17423)) b!3037112))

(assert (= (and start!291086 (is-Union!9438 r!17423)) b!3037115))

(assert (= (and start!291086 (is-Cons!35179 s!11993)) b!3037111))

(declare-fun m!3370613 () Bool)

(assert (=> b!3037114 m!3370613))

(declare-fun m!3370615 () Bool)

(assert (=> b!3037116 m!3370615))

(assert (=> b!3037116 m!3370615))

(declare-fun m!3370617 () Bool)

(assert (=> b!3037116 m!3370617))

(declare-fun m!3370619 () Bool)

(assert (=> b!3037117 m!3370619))

(declare-fun m!3370621 () Bool)

(assert (=> b!3037117 m!3370621))

(declare-fun m!3370623 () Bool)

(assert (=> b!3037117 m!3370623))

(declare-fun m!3370625 () Bool)

(assert (=> start!291086 m!3370625))

(push 1)

(assert (not b!3037114))

(assert (not b!3037111))

(assert (not b!3037115))

(assert (not b!3037112))

(assert (not b!3037117))

(assert (not start!291086))

(assert (not b!3037116))

(assert (not b!3037113))

(assert tp_is_empty!16439)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!851949 () Bool)

(assert (=> d!851949 (= (isEmpty!19479 s!11993) (is-Nil!35179 s!11993))))

(assert (=> b!3037114 d!851949))

(declare-fun b!3037192 () Bool)

(declare-fun e!1904377 () Bool)

(declare-fun lt!1046851 () Bool)

(assert (=> b!3037192 (= e!1904377 (not lt!1046851))))

(declare-fun b!3037193 () Bool)

(declare-fun e!1904379 () Bool)

(declare-fun e!1904380 () Bool)

(assert (=> b!3037193 (= e!1904379 e!1904380)))

(declare-fun res!1249229 () Bool)

(assert (=> b!3037193 (=> res!1249229 e!1904380)))

(declare-fun call!207513 () Bool)

(assert (=> b!3037193 (= res!1249229 call!207513)))

(declare-fun b!3037194 () Bool)

(declare-fun head!6744 (List!35303) C!19062)

(assert (=> b!3037194 (= e!1904380 (not (= (head!6744 s!11993) (c!502312 (simplify!405 r!17423)))))))

(declare-fun b!3037195 () Bool)

(declare-fun res!1249230 () Bool)

(declare-fun e!1904382 () Bool)

(assert (=> b!3037195 (=> res!1249230 e!1904382)))

(assert (=> b!3037195 (= res!1249230 (not (is-ElementMatch!9438 (simplify!405 r!17423))))))

(assert (=> b!3037195 (= e!1904377 e!1904382)))

(declare-fun b!3037196 () Bool)

(declare-fun res!1249231 () Bool)

(declare-fun e!1904378 () Bool)

(assert (=> b!3037196 (=> (not res!1249231) (not e!1904378))))

(assert (=> b!3037196 (= res!1249231 (not call!207513))))

(declare-fun b!3037197 () Bool)

(declare-fun res!1249232 () Bool)

(assert (=> b!3037197 (=> (not res!1249232) (not e!1904378))))

(declare-fun tail!4970 (List!35303) List!35303)

(assert (=> b!3037197 (= res!1249232 (isEmpty!19479 (tail!4970 s!11993)))))

(declare-fun b!3037198 () Bool)

(declare-fun e!1904376 () Bool)

(declare-fun nullable!3088 (Regex!9438) Bool)

(assert (=> b!3037198 (= e!1904376 (nullable!3088 (simplify!405 r!17423)))))

(declare-fun bm!207508 () Bool)

(assert (=> bm!207508 (= call!207513 (isEmpty!19479 s!11993))))

(declare-fun b!3037199 () Bool)

(declare-fun derivativeStep!2685 (Regex!9438 C!19062) Regex!9438)

(assert (=> b!3037199 (= e!1904376 (matchR!4320 (derivativeStep!2685 (simplify!405 r!17423) (head!6744 s!11993)) (tail!4970 s!11993)))))

(declare-fun b!3037201 () Bool)

(declare-fun e!1904381 () Bool)

(assert (=> b!3037201 (= e!1904381 e!1904377)))

(declare-fun c!502328 () Bool)

(assert (=> b!3037201 (= c!502328 (is-EmptyLang!9438 (simplify!405 r!17423)))))

(declare-fun b!3037202 () Bool)

(assert (=> b!3037202 (= e!1904381 (= lt!1046851 call!207513))))

(declare-fun b!3037203 () Bool)

(declare-fun res!1249228 () Bool)

(assert (=> b!3037203 (=> res!1249228 e!1904380)))

(assert (=> b!3037203 (= res!1249228 (not (isEmpty!19479 (tail!4970 s!11993))))))

(declare-fun b!3037204 () Bool)

(assert (=> b!3037204 (= e!1904382 e!1904379)))

(declare-fun res!1249233 () Bool)

(assert (=> b!3037204 (=> (not res!1249233) (not e!1904379))))

(assert (=> b!3037204 (= res!1249233 (not lt!1046851))))

(declare-fun b!3037205 () Bool)

(assert (=> b!3037205 (= e!1904378 (= (head!6744 s!11993) (c!502312 (simplify!405 r!17423))))))

(declare-fun d!851951 () Bool)

(assert (=> d!851951 e!1904381))

(declare-fun c!502330 () Bool)

(assert (=> d!851951 (= c!502330 (is-EmptyExpr!9438 (simplify!405 r!17423)))))

(assert (=> d!851951 (= lt!1046851 e!1904376)))

(declare-fun c!502329 () Bool)

(assert (=> d!851951 (= c!502329 (isEmpty!19479 s!11993))))

(assert (=> d!851951 (validRegex!4171 (simplify!405 r!17423))))

(assert (=> d!851951 (= (matchR!4320 (simplify!405 r!17423) s!11993) lt!1046851)))

(declare-fun b!3037200 () Bool)

(declare-fun res!1249227 () Bool)

(assert (=> b!3037200 (=> res!1249227 e!1904382)))

(assert (=> b!3037200 (= res!1249227 e!1904378)))

(declare-fun res!1249234 () Bool)

(assert (=> b!3037200 (=> (not res!1249234) (not e!1904378))))

(assert (=> b!3037200 (= res!1249234 lt!1046851)))

(assert (= (and d!851951 c!502329) b!3037198))

(assert (= (and d!851951 (not c!502329)) b!3037199))

(assert (= (and d!851951 c!502330) b!3037202))

(assert (= (and d!851951 (not c!502330)) b!3037201))

(assert (= (and b!3037201 c!502328) b!3037192))

(assert (= (and b!3037201 (not c!502328)) b!3037195))

(assert (= (and b!3037195 (not res!1249230)) b!3037200))

(assert (= (and b!3037200 res!1249234) b!3037196))

(assert (= (and b!3037196 res!1249231) b!3037197))

(assert (= (and b!3037197 res!1249232) b!3037205))

(assert (= (and b!3037200 (not res!1249227)) b!3037204))

(assert (= (and b!3037204 res!1249233) b!3037193))

(assert (= (and b!3037193 (not res!1249229)) b!3037203))

(assert (= (and b!3037203 (not res!1249228)) b!3037194))

(assert (= (or b!3037202 b!3037193 b!3037196) bm!207508))

(assert (=> d!851951 m!3370613))

(assert (=> d!851951 m!3370615))

(declare-fun m!3370641 () Bool)

(assert (=> d!851951 m!3370641))

(assert (=> bm!207508 m!3370613))

(declare-fun m!3370643 () Bool)

(assert (=> b!3037205 m!3370643))

(assert (=> b!3037199 m!3370643))

(assert (=> b!3037199 m!3370615))

(assert (=> b!3037199 m!3370643))

(declare-fun m!3370645 () Bool)

(assert (=> b!3037199 m!3370645))

(declare-fun m!3370647 () Bool)

(assert (=> b!3037199 m!3370647))

(assert (=> b!3037199 m!3370645))

(assert (=> b!3037199 m!3370647))

(declare-fun m!3370649 () Bool)

(assert (=> b!3037199 m!3370649))

(assert (=> b!3037194 m!3370643))

(assert (=> b!3037198 m!3370615))

(declare-fun m!3370651 () Bool)

(assert (=> b!3037198 m!3370651))

(assert (=> b!3037203 m!3370647))

(assert (=> b!3037203 m!3370647))

(declare-fun m!3370653 () Bool)

(assert (=> b!3037203 m!3370653))

(assert (=> b!3037197 m!3370647))

(assert (=> b!3037197 m!3370647))

(assert (=> b!3037197 m!3370653))

(assert (=> b!3037116 d!851951))

(declare-fun b!3037256 () Bool)

(declare-fun e!1904420 () Regex!9438)

(declare-fun e!1904423 () Regex!9438)

(assert (=> b!3037256 (= e!1904420 e!1904423)))

(declare-fun c!502360 () Bool)

(assert (=> b!3037256 (= c!502360 (is-Star!9438 r!17423))))

(declare-fun b!3037257 () Bool)

(declare-fun e!1904415 () Regex!9438)

(declare-fun lt!1046864 () Regex!9438)

(assert (=> b!3037257 (= e!1904415 lt!1046864)))

(declare-fun d!851953 () Bool)

(declare-fun e!1904413 () Bool)

(assert (=> d!851953 e!1904413))

(declare-fun res!1249243 () Bool)

(assert (=> d!851953 (=> (not res!1249243) (not e!1904413))))

(declare-fun lt!1046865 () Regex!9438)

(assert (=> d!851953 (= res!1249243 (validRegex!4171 lt!1046865))))

(declare-fun e!1904422 () Regex!9438)

(assert (=> d!851953 (= lt!1046865 e!1904422)))

(declare-fun c!502357 () Bool)

(assert (=> d!851953 (= c!502357 (is-EmptyLang!9438 r!17423))))

(assert (=> d!851953 (validRegex!4171 r!17423)))

(assert (=> d!851953 (= (simplify!405 r!17423) lt!1046865)))

(declare-fun c!502354 () Bool)

(declare-fun bm!207523 () Bool)

(declare-fun lt!1046868 () Regex!9438)

(declare-fun call!207530 () Bool)

(declare-fun lt!1046866 () Regex!9438)

(declare-fun isEmptyLang!503 (Regex!9438) Bool)

(assert (=> bm!207523 (= call!207530 (isEmptyLang!503 (ite c!502360 lt!1046866 (ite c!502354 lt!1046864 lt!1046868))))))

(declare-fun bm!207524 () Bool)

(declare-fun lt!1046869 () Regex!9438)

(declare-fun call!207531 () Bool)

(declare-fun isEmptyExpr!509 (Regex!9438) Bool)

(assert (=> bm!207524 (= call!207531 (isEmptyExpr!509 (ite c!502360 lt!1046866 lt!1046869)))))

(declare-fun b!3037258 () Bool)

(declare-fun e!1904416 () Regex!9438)

(assert (=> b!3037258 (= e!1904416 EmptyLang!9438)))

(declare-fun b!3037259 () Bool)

(declare-fun e!1904412 () Regex!9438)

(assert (=> b!3037259 (= e!1904412 lt!1046868)))

(declare-fun bm!207525 () Bool)

(declare-fun call!207529 () Regex!9438)

(assert (=> bm!207525 (= call!207529 (simplify!405 (ite c!502354 (regOne!19389 r!17423) (regTwo!19388 r!17423))))))

(declare-fun b!3037260 () Bool)

(declare-fun e!1904418 () Regex!9438)

(declare-fun e!1904424 () Regex!9438)

(assert (=> b!3037260 (= e!1904418 e!1904424)))

(assert (=> b!3037260 (= lt!1046864 call!207529)))

(declare-fun lt!1046867 () Regex!9438)

(declare-fun call!207528 () Regex!9438)

(assert (=> b!3037260 (= lt!1046867 call!207528)))

(declare-fun c!502355 () Bool)

(declare-fun call!207532 () Bool)

(assert (=> b!3037260 (= c!502355 call!207532)))

(declare-fun b!3037261 () Bool)

(declare-fun c!502353 () Bool)

(assert (=> b!3037261 (= c!502353 (is-EmptyExpr!9438 r!17423))))

(declare-fun e!1904419 () Regex!9438)

(assert (=> b!3037261 (= e!1904419 e!1904420)))

(declare-fun b!3037262 () Bool)

(declare-fun e!1904417 () Bool)

(assert (=> b!3037262 (= e!1904417 call!207531)))

(declare-fun b!3037263 () Bool)

(assert (=> b!3037263 (= e!1904420 EmptyExpr!9438)))

(declare-fun b!3037264 () Bool)

(assert (=> b!3037264 (= c!502354 (is-Union!9438 r!17423))))

(assert (=> b!3037264 (= e!1904423 e!1904418)))

(declare-fun b!3037265 () Bool)

(assert (=> b!3037265 (= e!1904418 e!1904416)))

(assert (=> b!3037265 (= lt!1046869 call!207528)))

(assert (=> b!3037265 (= lt!1046868 call!207529)))

(declare-fun res!1249242 () Bool)

(declare-fun call!207534 () Bool)

(assert (=> b!3037265 (= res!1249242 call!207534)))

(declare-fun e!1904411 () Bool)

(assert (=> b!3037265 (=> res!1249242 e!1904411)))

(declare-fun c!502356 () Bool)

(assert (=> b!3037265 (= c!502356 e!1904411)))

(declare-fun b!3037266 () Bool)

(assert (=> b!3037266 (= e!1904413 (= (nullable!3088 lt!1046865) (nullable!3088 r!17423)))))

(declare-fun b!3037267 () Bool)

(declare-fun c!502363 () Bool)

(assert (=> b!3037267 (= c!502363 e!1904417)))

(declare-fun res!1249241 () Bool)

(assert (=> b!3037267 (=> res!1249241 e!1904417)))

(assert (=> b!3037267 (= res!1249241 call!207530)))

(declare-fun call!207533 () Regex!9438)

(assert (=> b!3037267 (= lt!1046866 call!207533)))

(declare-fun e!1904421 () Regex!9438)

(assert (=> b!3037267 (= e!1904423 e!1904421)))

(declare-fun b!3037268 () Bool)

(declare-fun c!502362 () Bool)

(assert (=> b!3037268 (= c!502362 call!207534)))

(assert (=> b!3037268 (= e!1904424 e!1904415)))

(declare-fun b!3037269 () Bool)

(declare-fun c!502361 () Bool)

(assert (=> b!3037269 (= c!502361 call!207531)))

(assert (=> b!3037269 (= e!1904416 e!1904412)))

(declare-fun b!3037270 () Bool)

(assert (=> b!3037270 (= e!1904424 lt!1046867)))

(declare-fun b!3037271 () Bool)

(assert (=> b!3037271 (= e!1904422 e!1904419)))

(declare-fun c!502359 () Bool)

(assert (=> b!3037271 (= c!502359 (is-ElementMatch!9438 r!17423))))

(declare-fun bm!207526 () Bool)

(assert (=> bm!207526 (= call!207532 call!207530)))

(declare-fun bm!207527 () Bool)

(assert (=> bm!207527 (= call!207534 (isEmptyLang!503 (ite c!502354 lt!1046867 lt!1046869)))))

(declare-fun b!3037272 () Bool)

(declare-fun e!1904414 () Regex!9438)

(assert (=> b!3037272 (= e!1904412 e!1904414)))

(declare-fun c!502358 () Bool)

(assert (=> b!3037272 (= c!502358 (isEmptyExpr!509 lt!1046868))))

(declare-fun b!3037273 () Bool)

(assert (=> b!3037273 (= e!1904411 call!207532)))

(declare-fun b!3037274 () Bool)

(assert (=> b!3037274 (= e!1904422 EmptyLang!9438)))

(declare-fun b!3037275 () Bool)

(assert (=> b!3037275 (= e!1904421 EmptyExpr!9438)))

(declare-fun bm!207528 () Bool)

(assert (=> bm!207528 (= call!207528 call!207533)))

(declare-fun b!3037276 () Bool)

(assert (=> b!3037276 (= e!1904414 lt!1046869)))

(declare-fun b!3037277 () Bool)

(assert (=> b!3037277 (= e!1904414 (Concat!14759 lt!1046869 lt!1046868))))

(declare-fun b!3037278 () Bool)

(assert (=> b!3037278 (= e!1904419 r!17423)))

(declare-fun b!3037279 () Bool)

(assert (=> b!3037279 (= e!1904415 (Union!9438 lt!1046864 lt!1046867))))

(declare-fun b!3037280 () Bool)

(assert (=> b!3037280 (= e!1904421 (Star!9438 lt!1046866))))

(declare-fun bm!207529 () Bool)

(assert (=> bm!207529 (= call!207533 (simplify!405 (ite c!502360 (reg!9767 r!17423) (ite c!502354 (regTwo!19389 r!17423) (regOne!19388 r!17423)))))))

(assert (= (and d!851953 c!502357) b!3037274))

(assert (= (and d!851953 (not c!502357)) b!3037271))

(assert (= (and b!3037271 c!502359) b!3037278))

(assert (= (and b!3037271 (not c!502359)) b!3037261))

(assert (= (and b!3037261 c!502353) b!3037263))

(assert (= (and b!3037261 (not c!502353)) b!3037256))

(assert (= (and b!3037256 c!502360) b!3037267))

(assert (= (and b!3037256 (not c!502360)) b!3037264))

(assert (= (and b!3037267 (not res!1249241)) b!3037262))

(assert (= (and b!3037267 c!502363) b!3037275))

(assert (= (and b!3037267 (not c!502363)) b!3037280))

(assert (= (and b!3037264 c!502354) b!3037260))

(assert (= (and b!3037264 (not c!502354)) b!3037265))

(assert (= (and b!3037260 c!502355) b!3037270))

(assert (= (and b!3037260 (not c!502355)) b!3037268))

(assert (= (and b!3037268 c!502362) b!3037257))

(assert (= (and b!3037268 (not c!502362)) b!3037279))

(assert (= (and b!3037265 (not res!1249242)) b!3037273))

(assert (= (and b!3037265 c!502356) b!3037258))

(assert (= (and b!3037265 (not c!502356)) b!3037269))

(assert (= (and b!3037269 c!502361) b!3037259))

(assert (= (and b!3037269 (not c!502361)) b!3037272))

(assert (= (and b!3037272 c!502358) b!3037276))

(assert (= (and b!3037272 (not c!502358)) b!3037277))

(assert (= (or b!3037260 b!3037265) bm!207525))

(assert (= (or b!3037260 b!3037265) bm!207528))

(assert (= (or b!3037268 b!3037265) bm!207527))

(assert (= (or b!3037260 b!3037273) bm!207526))

(assert (= (or b!3037262 b!3037269) bm!207524))

(assert (= (or b!3037267 bm!207528) bm!207529))

(assert (= (or b!3037267 bm!207526) bm!207523))

(assert (= (and d!851953 res!1249243) b!3037266))

(declare-fun m!3370655 () Bool)

(assert (=> d!851953 m!3370655))

(assert (=> d!851953 m!3370625))

(declare-fun m!3370657 () Bool)

(assert (=> bm!207529 m!3370657))

(declare-fun m!3370659 () Bool)

(assert (=> bm!207525 m!3370659))

(declare-fun m!3370661 () Bool)

(assert (=> bm!207523 m!3370661))

(declare-fun m!3370663 () Bool)

(assert (=> b!3037266 m!3370663))

(declare-fun m!3370665 () Bool)

(assert (=> b!3037266 m!3370665))

(declare-fun m!3370667 () Bool)

(assert (=> bm!207524 m!3370667))

(declare-fun m!3370669 () Bool)

(assert (=> b!3037272 m!3370669))

(declare-fun m!3370671 () Bool)

(assert (=> bm!207527 m!3370671))

(assert (=> b!3037116 d!851953))

(declare-fun b!3037299 () Bool)

(declare-fun e!1904445 () Bool)

(declare-fun e!1904441 () Bool)

(assert (=> b!3037299 (= e!1904445 e!1904441)))

(declare-fun c!502369 () Bool)

(assert (=> b!3037299 (= c!502369 (is-Star!9438 r!17423))))

(declare-fun b!3037300 () Bool)

(declare-fun e!1904440 () Bool)

(assert (=> b!3037300 (= e!1904441 e!1904440)))

(declare-fun c!502368 () Bool)

(assert (=> b!3037300 (= c!502368 (is-Union!9438 r!17423))))

(declare-fun b!3037301 () Bool)

(declare-fun res!1249258 () Bool)

(declare-fun e!1904442 () Bool)

(assert (=> b!3037301 (=> (not res!1249258) (not e!1904442))))

(declare-fun call!207543 () Bool)

(assert (=> b!3037301 (= res!1249258 call!207543)))

(assert (=> b!3037301 (= e!1904440 e!1904442)))

(declare-fun bm!207536 () Bool)

(declare-fun call!207541 () Bool)

(assert (=> bm!207536 (= call!207541 (validRegex!4171 (ite c!502368 (regTwo!19389 r!17423) (regOne!19388 r!17423))))))

(declare-fun b!3037302 () Bool)

(declare-fun res!1249254 () Bool)

(declare-fun e!1904443 () Bool)

(assert (=> b!3037302 (=> res!1249254 e!1904443)))

(assert (=> b!3037302 (= res!1249254 (not (is-Concat!14759 r!17423)))))

(assert (=> b!3037302 (= e!1904440 e!1904443)))

(declare-fun d!851955 () Bool)

(declare-fun res!1249257 () Bool)

(assert (=> d!851955 (=> res!1249257 e!1904445)))

(assert (=> d!851955 (= res!1249257 (is-ElementMatch!9438 r!17423))))

(assert (=> d!851955 (= (validRegex!4171 r!17423) e!1904445)))

(declare-fun b!3037303 () Bool)

(declare-fun e!1904439 () Bool)

(assert (=> b!3037303 (= e!1904439 call!207543)))

(declare-fun b!3037304 () Bool)

(assert (=> b!3037304 (= e!1904443 e!1904439)))

(declare-fun res!1249256 () Bool)

(assert (=> b!3037304 (=> (not res!1249256) (not e!1904439))))

(assert (=> b!3037304 (= res!1249256 call!207541)))

(declare-fun b!3037305 () Bool)

(declare-fun e!1904444 () Bool)

(assert (=> b!3037305 (= e!1904441 e!1904444)))

(declare-fun res!1249255 () Bool)

(assert (=> b!3037305 (= res!1249255 (not (nullable!3088 (reg!9767 r!17423))))))

(assert (=> b!3037305 (=> (not res!1249255) (not e!1904444))))

(declare-fun b!3037306 () Bool)

(assert (=> b!3037306 (= e!1904442 call!207541)))

(declare-fun call!207542 () Bool)

(declare-fun bm!207537 () Bool)

(assert (=> bm!207537 (= call!207542 (validRegex!4171 (ite c!502369 (reg!9767 r!17423) (ite c!502368 (regOne!19389 r!17423) (regTwo!19388 r!17423)))))))

(declare-fun bm!207538 () Bool)

(assert (=> bm!207538 (= call!207543 call!207542)))

(declare-fun b!3037307 () Bool)

(assert (=> b!3037307 (= e!1904444 call!207542)))

(assert (= (and d!851955 (not res!1249257)) b!3037299))

(assert (= (and b!3037299 c!502369) b!3037305))

(assert (= (and b!3037299 (not c!502369)) b!3037300))

(assert (= (and b!3037305 res!1249255) b!3037307))

(assert (= (and b!3037300 c!502368) b!3037301))

(assert (= (and b!3037300 (not c!502368)) b!3037302))

(assert (= (and b!3037301 res!1249258) b!3037306))

(assert (= (and b!3037302 (not res!1249254)) b!3037304))

(assert (= (and b!3037304 res!1249256) b!3037303))

(assert (= (or b!3037301 b!3037303) bm!207538))

(assert (= (or b!3037306 b!3037304) bm!207536))

(assert (= (or b!3037307 bm!207538) bm!207537))

(declare-fun m!3370673 () Bool)

(assert (=> bm!207536 m!3370673))

(declare-fun m!3370675 () Bool)

(assert (=> b!3037305 m!3370675))

(declare-fun m!3370677 () Bool)

(assert (=> bm!207537 m!3370677))

(assert (=> start!291086 d!851955))

(declare-fun b!3037430 () Bool)

(assert (=> b!3037430 true))

(assert (=> b!3037430 true))

(declare-fun bs!531000 () Bool)

(declare-fun b!3037424 () Bool)

(assert (= bs!531000 (and b!3037424 b!3037430)))

(declare-fun lambda!113278 () Int)

(declare-fun lambda!113277 () Int)

(assert (=> bs!531000 (not (= lambda!113278 lambda!113277))))

(assert (=> b!3037424 true))

(assert (=> b!3037424 true))

(declare-fun b!3037421 () Bool)

(declare-fun e!1904508 () Bool)

(declare-fun e!1904504 () Bool)

(assert (=> b!3037421 (= e!1904508 e!1904504)))

(declare-fun c!502395 () Bool)

(assert (=> b!3037421 (= c!502395 (is-Star!9438 r!17423))))

(declare-fun b!3037422 () Bool)

(declare-fun e!1904509 () Bool)

(declare-fun e!1904506 () Bool)

(assert (=> b!3037422 (= e!1904509 e!1904506)))

(declare-fun res!1249320 () Bool)

(assert (=> b!3037422 (= res!1249320 (not (is-EmptyLang!9438 r!17423)))))

(assert (=> b!3037422 (=> (not res!1249320) (not e!1904506))))

(declare-fun b!3037423 () Bool)

(declare-fun c!502397 () Bool)

(assert (=> b!3037423 (= c!502397 (is-ElementMatch!9438 r!17423))))

(declare-fun e!1904503 () Bool)

(assert (=> b!3037423 (= e!1904506 e!1904503)))

(declare-fun call!207558 () Bool)

(assert (=> b!3037424 (= e!1904504 call!207558)))

(declare-fun b!3037425 () Bool)

(declare-fun call!207559 () Bool)

(assert (=> b!3037425 (= e!1904509 call!207559)))

(declare-fun b!3037426 () Bool)

(declare-fun e!1904505 () Bool)

(assert (=> b!3037426 (= e!1904508 e!1904505)))

(declare-fun res!1249321 () Bool)

(assert (=> b!3037426 (= res!1249321 (matchRSpec!1575 (regOne!19389 r!17423) s!11993))))

(assert (=> b!3037426 (=> res!1249321 e!1904505)))

(declare-fun bm!207553 () Bool)

(assert (=> bm!207553 (= call!207559 (isEmpty!19479 s!11993))))

(declare-fun b!3037427 () Bool)

(declare-fun c!502394 () Bool)

(assert (=> b!3037427 (= c!502394 (is-Union!9438 r!17423))))

(assert (=> b!3037427 (= e!1904503 e!1904508)))

(declare-fun b!3037428 () Bool)

(assert (=> b!3037428 (= e!1904505 (matchRSpec!1575 (regTwo!19389 r!17423) s!11993))))

(declare-fun d!851957 () Bool)

(declare-fun c!502396 () Bool)

(assert (=> d!851957 (= c!502396 (is-EmptyExpr!9438 r!17423))))

(assert (=> d!851957 (= (matchRSpec!1575 r!17423 s!11993) e!1904509)))

(declare-fun b!3037429 () Bool)

(assert (=> b!3037429 (= e!1904503 (= s!11993 (Cons!35179 (c!502312 r!17423) Nil!35179)))))

(declare-fun bm!207554 () Bool)

(declare-fun Exists!1705 (Int) Bool)

(assert (=> bm!207554 (= call!207558 (Exists!1705 (ite c!502395 lambda!113277 lambda!113278)))))

(declare-fun e!1904507 () Bool)

(assert (=> b!3037430 (= e!1904507 call!207558)))

(declare-fun b!3037431 () Bool)

(declare-fun res!1249322 () Bool)

(assert (=> b!3037431 (=> res!1249322 e!1904507)))

(assert (=> b!3037431 (= res!1249322 call!207559)))

(assert (=> b!3037431 (= e!1904504 e!1904507)))

(assert (= (and d!851957 c!502396) b!3037425))

(assert (= (and d!851957 (not c!502396)) b!3037422))

(assert (= (and b!3037422 res!1249320) b!3037423))

(assert (= (and b!3037423 c!502397) b!3037429))

(assert (= (and b!3037423 (not c!502397)) b!3037427))

(assert (= (and b!3037427 c!502394) b!3037426))

(assert (= (and b!3037427 (not c!502394)) b!3037421))

(assert (= (and b!3037426 (not res!1249321)) b!3037428))

(assert (= (and b!3037421 c!502395) b!3037431))

(assert (= (and b!3037421 (not c!502395)) b!3037424))

(assert (= (and b!3037431 (not res!1249322)) b!3037430))

(assert (= (or b!3037430 b!3037424) bm!207554))

(assert (= (or b!3037425 b!3037431) bm!207553))

(declare-fun m!3370707 () Bool)

(assert (=> b!3037426 m!3370707))

(assert (=> bm!207553 m!3370613))

(declare-fun m!3370709 () Bool)

(assert (=> b!3037428 m!3370709))

(declare-fun m!3370711 () Bool)

(assert (=> bm!207554 m!3370711))

(assert (=> b!3037117 d!851957))

(declare-fun b!3037456 () Bool)

(declare-fun e!1904519 () Bool)

(declare-fun lt!1046881 () Bool)

(assert (=> b!3037456 (= e!1904519 (not lt!1046881))))

(declare-fun b!3037457 () Bool)

(declare-fun e!1904522 () Bool)

(declare-fun e!1904524 () Bool)

(assert (=> b!3037457 (= e!1904522 e!1904524)))

(declare-fun res!1249325 () Bool)

(assert (=> b!3037457 (=> res!1249325 e!1904524)))

(declare-fun call!207560 () Bool)

(assert (=> b!3037457 (= res!1249325 call!207560)))

(declare-fun b!3037458 () Bool)

(assert (=> b!3037458 (= e!1904524 (not (= (head!6744 s!11993) (c!502312 r!17423))))))

(declare-fun b!3037459 () Bool)

(declare-fun res!1249326 () Bool)

(declare-fun e!1904526 () Bool)

(assert (=> b!3037459 (=> res!1249326 e!1904526)))

(assert (=> b!3037459 (= res!1249326 (not (is-ElementMatch!9438 r!17423)))))

(assert (=> b!3037459 (= e!1904519 e!1904526)))

(declare-fun b!3037462 () Bool)

(declare-fun res!1249327 () Bool)

(declare-fun e!1904521 () Bool)

(assert (=> b!3037462 (=> (not res!1249327) (not e!1904521))))

(assert (=> b!3037462 (= res!1249327 (not call!207560))))

(declare-fun b!3037463 () Bool)

(declare-fun res!1249328 () Bool)

(assert (=> b!3037463 (=> (not res!1249328) (not e!1904521))))

(assert (=> b!3037463 (= res!1249328 (isEmpty!19479 (tail!4970 s!11993)))))

(declare-fun b!3037464 () Bool)

(declare-fun e!1904518 () Bool)

(assert (=> b!3037464 (= e!1904518 (nullable!3088 r!17423))))

(declare-fun bm!207555 () Bool)

(assert (=> bm!207555 (= call!207560 (isEmpty!19479 s!11993))))

(declare-fun b!3037465 () Bool)

(assert (=> b!3037465 (= e!1904518 (matchR!4320 (derivativeStep!2685 r!17423 (head!6744 s!11993)) (tail!4970 s!11993)))))

(declare-fun b!3037467 () Bool)

(declare-fun e!1904525 () Bool)

(assert (=> b!3037467 (= e!1904525 e!1904519)))

(declare-fun c!502406 () Bool)

(assert (=> b!3037467 (= c!502406 (is-EmptyLang!9438 r!17423))))

(declare-fun b!3037468 () Bool)

(assert (=> b!3037468 (= e!1904525 (= lt!1046881 call!207560))))

(declare-fun b!3037469 () Bool)

(declare-fun res!1249324 () Bool)

(assert (=> b!3037469 (=> res!1249324 e!1904524)))

(assert (=> b!3037469 (= res!1249324 (not (isEmpty!19479 (tail!4970 s!11993))))))

(declare-fun b!3037470 () Bool)

(assert (=> b!3037470 (= e!1904526 e!1904522)))

(declare-fun res!1249329 () Bool)

(assert (=> b!3037470 (=> (not res!1249329) (not e!1904522))))

(assert (=> b!3037470 (= res!1249329 (not lt!1046881))))

(declare-fun b!3037471 () Bool)

(assert (=> b!3037471 (= e!1904521 (= (head!6744 s!11993) (c!502312 r!17423)))))

(declare-fun d!851967 () Bool)

(assert (=> d!851967 e!1904525))

(declare-fun c!502410 () Bool)

(assert (=> d!851967 (= c!502410 (is-EmptyExpr!9438 r!17423))))

(assert (=> d!851967 (= lt!1046881 e!1904518)))

(declare-fun c!502407 () Bool)

(assert (=> d!851967 (= c!502407 (isEmpty!19479 s!11993))))

(assert (=> d!851967 (validRegex!4171 r!17423)))

(assert (=> d!851967 (= (matchR!4320 r!17423 s!11993) lt!1046881)))

(declare-fun b!3037466 () Bool)

(declare-fun res!1249323 () Bool)

(assert (=> b!3037466 (=> res!1249323 e!1904526)))

(assert (=> b!3037466 (= res!1249323 e!1904521)))

(declare-fun res!1249330 () Bool)

(assert (=> b!3037466 (=> (not res!1249330) (not e!1904521))))

(assert (=> b!3037466 (= res!1249330 lt!1046881)))

(assert (= (and d!851967 c!502407) b!3037464))

(assert (= (and d!851967 (not c!502407)) b!3037465))

(assert (= (and d!851967 c!502410) b!3037468))

(assert (= (and d!851967 (not c!502410)) b!3037467))

(assert (= (and b!3037467 c!502406) b!3037456))

(assert (= (and b!3037467 (not c!502406)) b!3037459))

(assert (= (and b!3037459 (not res!1249326)) b!3037466))

(assert (= (and b!3037466 res!1249330) b!3037462))

(assert (= (and b!3037462 res!1249327) b!3037463))

(assert (= (and b!3037463 res!1249328) b!3037471))

(assert (= (and b!3037466 (not res!1249323)) b!3037470))

(assert (= (and b!3037470 res!1249329) b!3037457))

(assert (= (and b!3037457 (not res!1249325)) b!3037469))

(assert (= (and b!3037469 (not res!1249324)) b!3037458))

(assert (= (or b!3037468 b!3037457 b!3037462) bm!207555))

(assert (=> d!851967 m!3370613))

(assert (=> d!851967 m!3370625))

(assert (=> bm!207555 m!3370613))

(assert (=> b!3037471 m!3370643))

(assert (=> b!3037465 m!3370643))

(assert (=> b!3037465 m!3370643))

(declare-fun m!3370713 () Bool)

(assert (=> b!3037465 m!3370713))

(assert (=> b!3037465 m!3370647))

(assert (=> b!3037465 m!3370713))

(assert (=> b!3037465 m!3370647))

(declare-fun m!3370715 () Bool)

(assert (=> b!3037465 m!3370715))

(assert (=> b!3037458 m!3370643))

(assert (=> b!3037464 m!3370665))

(assert (=> b!3037469 m!3370647))

(assert (=> b!3037469 m!3370647))

(assert (=> b!3037469 m!3370653))

(assert (=> b!3037463 m!3370647))

(assert (=> b!3037463 m!3370647))

(assert (=> b!3037463 m!3370653))

(assert (=> b!3037117 d!851967))

(declare-fun d!851969 () Bool)

(assert (=> d!851969 (= (matchR!4320 r!17423 s!11993) (matchRSpec!1575 r!17423 s!11993))))

(declare-fun lt!1046892 () Unit!49299)

(declare-fun choose!18017 (Regex!9438 List!35303) Unit!49299)

(assert (=> d!851969 (= lt!1046892 (choose!18017 r!17423 s!11993))))

(assert (=> d!851969 (validRegex!4171 r!17423)))

(assert (=> d!851969 (= (mainMatchTheorem!1575 r!17423 s!11993) lt!1046892)))

(declare-fun bs!531001 () Bool)

(assert (= bs!531001 d!851969))

(assert (=> bs!531001 m!3370621))

(assert (=> bs!531001 m!3370619))

(declare-fun m!3370717 () Bool)

(assert (=> bs!531001 m!3370717))

(assert (=> bs!531001 m!3370625))

(assert (=> b!3037117 d!851969))

(declare-fun b!3037512 () Bool)

(declare-fun e!1904547 () Bool)

(declare-fun tp!961796 () Bool)

(assert (=> b!3037512 (= e!1904547 tp!961796)))

(assert (=> b!3037113 (= tp!961764 e!1904547)))

(declare-fun b!3037511 () Bool)

(declare-fun tp!961798 () Bool)

(declare-fun tp!961797 () Bool)

(assert (=> b!3037511 (= e!1904547 (and tp!961798 tp!961797))))

(declare-fun b!3037513 () Bool)

(declare-fun tp!961800 () Bool)

(declare-fun tp!961799 () Bool)

(assert (=> b!3037513 (= e!1904547 (and tp!961800 tp!961799))))

(declare-fun b!3037510 () Bool)

(assert (=> b!3037510 (= e!1904547 tp_is_empty!16439)))

(assert (= (and b!3037113 (is-ElementMatch!9438 (regOne!19388 r!17423))) b!3037510))

(assert (= (and b!3037113 (is-Concat!14759 (regOne!19388 r!17423))) b!3037511))

(assert (= (and b!3037113 (is-Star!9438 (regOne!19388 r!17423))) b!3037512))

(assert (= (and b!3037113 (is-Union!9438 (regOne!19388 r!17423))) b!3037513))

(declare-fun b!3037516 () Bool)

(declare-fun e!1904548 () Bool)

(declare-fun tp!961801 () Bool)

(assert (=> b!3037516 (= e!1904548 tp!961801)))

(assert (=> b!3037113 (= tp!961763 e!1904548)))

(declare-fun b!3037515 () Bool)

(declare-fun tp!961803 () Bool)

(declare-fun tp!961802 () Bool)

(assert (=> b!3037515 (= e!1904548 (and tp!961803 tp!961802))))

(declare-fun b!3037517 () Bool)

(declare-fun tp!961805 () Bool)

(declare-fun tp!961804 () Bool)

(assert (=> b!3037517 (= e!1904548 (and tp!961805 tp!961804))))

(declare-fun b!3037514 () Bool)

(assert (=> b!3037514 (= e!1904548 tp_is_empty!16439)))

(assert (= (and b!3037113 (is-ElementMatch!9438 (regTwo!19388 r!17423))) b!3037514))

(assert (= (and b!3037113 (is-Concat!14759 (regTwo!19388 r!17423))) b!3037515))

(assert (= (and b!3037113 (is-Star!9438 (regTwo!19388 r!17423))) b!3037516))

(assert (= (and b!3037113 (is-Union!9438 (regTwo!19388 r!17423))) b!3037517))

(declare-fun b!3037520 () Bool)

(declare-fun e!1904549 () Bool)

(declare-fun tp!961806 () Bool)

(assert (=> b!3037520 (= e!1904549 tp!961806)))

(assert (=> b!3037115 (= tp!961762 e!1904549)))

(declare-fun b!3037519 () Bool)

(declare-fun tp!961808 () Bool)

(declare-fun tp!961807 () Bool)

(assert (=> b!3037519 (= e!1904549 (and tp!961808 tp!961807))))

(declare-fun b!3037521 () Bool)

(declare-fun tp!961810 () Bool)

(declare-fun tp!961809 () Bool)

(assert (=> b!3037521 (= e!1904549 (and tp!961810 tp!961809))))

(declare-fun b!3037518 () Bool)

(assert (=> b!3037518 (= e!1904549 tp_is_empty!16439)))

(assert (= (and b!3037115 (is-ElementMatch!9438 (regOne!19389 r!17423))) b!3037518))

(assert (= (and b!3037115 (is-Concat!14759 (regOne!19389 r!17423))) b!3037519))

(assert (= (and b!3037115 (is-Star!9438 (regOne!19389 r!17423))) b!3037520))

(assert (= (and b!3037115 (is-Union!9438 (regOne!19389 r!17423))) b!3037521))

(declare-fun b!3037524 () Bool)

(declare-fun e!1904550 () Bool)

(declare-fun tp!961811 () Bool)

(assert (=> b!3037524 (= e!1904550 tp!961811)))

(assert (=> b!3037115 (= tp!961765 e!1904550)))

(declare-fun b!3037523 () Bool)

(declare-fun tp!961813 () Bool)

(declare-fun tp!961812 () Bool)

(assert (=> b!3037523 (= e!1904550 (and tp!961813 tp!961812))))

(declare-fun b!3037525 () Bool)

(declare-fun tp!961815 () Bool)

(declare-fun tp!961814 () Bool)

(assert (=> b!3037525 (= e!1904550 (and tp!961815 tp!961814))))

(declare-fun b!3037522 () Bool)

(assert (=> b!3037522 (= e!1904550 tp_is_empty!16439)))

(assert (= (and b!3037115 (is-ElementMatch!9438 (regTwo!19389 r!17423))) b!3037522))

(assert (= (and b!3037115 (is-Concat!14759 (regTwo!19389 r!17423))) b!3037523))

(assert (= (and b!3037115 (is-Star!9438 (regTwo!19389 r!17423))) b!3037524))

(assert (= (and b!3037115 (is-Union!9438 (regTwo!19389 r!17423))) b!3037525))

(declare-fun b!3037530 () Bool)

(declare-fun e!1904553 () Bool)

(declare-fun tp!961818 () Bool)

(assert (=> b!3037530 (= e!1904553 (and tp_is_empty!16439 tp!961818))))

(assert (=> b!3037111 (= tp!961767 e!1904553)))

(assert (= (and b!3037111 (is-Cons!35179 (t!234368 s!11993))) b!3037530))

(declare-fun b!3037533 () Bool)

(declare-fun e!1904554 () Bool)

(declare-fun tp!961819 () Bool)

(assert (=> b!3037533 (= e!1904554 tp!961819)))

(assert (=> b!3037112 (= tp!961766 e!1904554)))

(declare-fun b!3037532 () Bool)

(declare-fun tp!961821 () Bool)

(declare-fun tp!961820 () Bool)

(assert (=> b!3037532 (= e!1904554 (and tp!961821 tp!961820))))

(declare-fun b!3037534 () Bool)

(declare-fun tp!961823 () Bool)

(declare-fun tp!961822 () Bool)

(assert (=> b!3037534 (= e!1904554 (and tp!961823 tp!961822))))

(declare-fun b!3037531 () Bool)

(assert (=> b!3037531 (= e!1904554 tp_is_empty!16439)))

(assert (= (and b!3037112 (is-ElementMatch!9438 (reg!9767 r!17423))) b!3037531))

(assert (= (and b!3037112 (is-Concat!14759 (reg!9767 r!17423))) b!3037532))

(assert (= (and b!3037112 (is-Star!9438 (reg!9767 r!17423))) b!3037533))

(assert (= (and b!3037112 (is-Union!9438 (reg!9767 r!17423))) b!3037534))

(push 1)

(assert (not bm!207555))

(assert (not b!3037520))

(assert (not b!3037534))

(assert (not b!3037511))

(assert (not bm!207554))

(assert (not d!851951))

(assert (not b!3037199))

(assert (not d!851967))

(assert (not b!3037519))

(assert (not b!3037198))

(assert (not b!3037458))

(assert (not b!3037266))

(assert (not b!3037194))

(assert (not b!3037463))

(assert (not b!3037205))

(assert (not b!3037197))

(assert (not b!3037530))

(assert (not b!3037469))

(assert (not b!3037524))

(assert (not bm!207553))

(assert (not d!851953))

(assert (not bm!207529))

(assert (not bm!207536))

(assert (not b!3037464))

(assert (not bm!207537))

(assert (not b!3037272))

(assert (not b!3037516))

(assert (not b!3037471))

(assert (not bm!207523))

(assert (not b!3037428))

(assert (not bm!207524))

(assert (not b!3037426))

(assert (not b!3037533))

(assert (not b!3037203))

(assert (not b!3037521))

(assert (not bm!207508))

(assert (not b!3037512))

(assert (not b!3037513))

(assert (not b!3037532))

(assert (not b!3037523))

(assert (not b!3037515))

(assert (not bm!207525))

(assert (not b!3037465))

(assert tp_is_empty!16439)

(assert (not b!3037305))

(assert (not bm!207527))

(assert (not d!851969))

(assert (not b!3037517))

(assert (not b!3037525))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

