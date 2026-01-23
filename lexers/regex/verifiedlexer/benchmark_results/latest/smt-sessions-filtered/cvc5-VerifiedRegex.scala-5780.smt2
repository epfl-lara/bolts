; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!285702 () Bool)

(assert start!285702)

(declare-fun b!2942432 () Bool)

(declare-fun res!1214435 () Bool)

(declare-fun e!1854167 () Bool)

(assert (=> b!2942432 (=> res!1214435 e!1854167)))

(declare-datatypes ((C!18406 0))(
  ( (C!18407 (val!11239 Int)) )
))
(declare-datatypes ((Regex!9110 0))(
  ( (ElementMatch!9110 (c!481138 C!18406)) (Concat!14431 (regOne!18732 Regex!9110) (regTwo!18732 Regex!9110)) (EmptyExpr!9110) (Star!9110 (reg!9439 Regex!9110)) (EmptyLang!9110) (Union!9110 (regOne!18733 Regex!9110) (regTwo!18733 Regex!9110)) )
))
(declare-fun lt!1030444 () Regex!9110)

(declare-fun isEmptyExpr!315 (Regex!9110) Bool)

(assert (=> b!2942432 (= res!1214435 (not (isEmptyExpr!315 lt!1030444)))))

(declare-fun b!2942433 () Bool)

(declare-fun res!1214431 () Bool)

(assert (=> b!2942433 (=> res!1214431 e!1854167)))

(declare-fun lt!1030440 () Regex!9110)

(declare-fun isEmptyLang!234 (Regex!9110) Bool)

(assert (=> b!2942433 (= res!1214431 (isEmptyLang!234 lt!1030440))))

(declare-fun res!1214434 () Bool)

(declare-fun e!1854165 () Bool)

(assert (=> start!285702 (=> (not res!1214434) (not e!1854165))))

(declare-fun r!17423 () Regex!9110)

(declare-fun validRegex!3843 (Regex!9110) Bool)

(assert (=> start!285702 (= res!1214434 (validRegex!3843 r!17423))))

(assert (=> start!285702 e!1854165))

(declare-fun e!1854163 () Bool)

(assert (=> start!285702 e!1854163))

(declare-fun e!1854166 () Bool)

(assert (=> start!285702 e!1854166))

(declare-fun b!2942434 () Bool)

(declare-fun tp!941583 () Bool)

(assert (=> b!2942434 (= e!1854163 tp!941583)))

(declare-fun b!2942435 () Bool)

(declare-fun tp!941581 () Bool)

(declare-fun tp!941578 () Bool)

(assert (=> b!2942435 (= e!1854163 (and tp!941581 tp!941578))))

(declare-fun b!2942436 () Bool)

(declare-fun e!1854164 () Bool)

(assert (=> b!2942436 (= e!1854164 e!1854167)))

(declare-fun res!1214429 () Bool)

(assert (=> b!2942436 (=> res!1214429 e!1854167)))

(assert (=> b!2942436 (= res!1214429 (isEmptyLang!234 lt!1030444))))

(declare-fun simplify!115 (Regex!9110) Regex!9110)

(assert (=> b!2942436 (= lt!1030440 (simplify!115 (regTwo!18732 r!17423)))))

(assert (=> b!2942436 (= lt!1030444 (simplify!115 (regOne!18732 r!17423)))))

(declare-fun b!2942437 () Bool)

(declare-fun tp_is_empty!15783 () Bool)

(assert (=> b!2942437 (= e!1854163 tp_is_empty!15783)))

(declare-fun b!2942438 () Bool)

(declare-fun tp!941582 () Bool)

(assert (=> b!2942438 (= e!1854166 (and tp_is_empty!15783 tp!941582))))

(declare-fun b!2942439 () Bool)

(declare-fun tp!941580 () Bool)

(declare-fun tp!941579 () Bool)

(assert (=> b!2942439 (= e!1854163 (and tp!941580 tp!941579))))

(declare-fun b!2942440 () Bool)

(declare-fun e!1854162 () Bool)

(assert (=> b!2942440 (= e!1854167 e!1854162)))

(declare-fun res!1214432 () Bool)

(assert (=> b!2942440 (=> res!1214432 e!1854162)))

(declare-fun lt!1030442 () Bool)

(assert (=> b!2942440 (= res!1214432 lt!1030442)))

(declare-datatypes ((List!34975 0))(
  ( (Nil!34851) (Cons!34851 (h!40271 C!18406) (t!234040 List!34975)) )
))
(declare-fun s!11993 () List!34975)

(declare-fun matchR!3992 (Regex!9110 List!34975) Bool)

(assert (=> b!2942440 (= lt!1030442 (matchR!3992 lt!1030440 s!11993))))

(assert (=> b!2942440 (= lt!1030442 (matchR!3992 (regTwo!18732 r!17423) s!11993))))

(declare-datatypes ((Unit!48599 0))(
  ( (Unit!48600) )
))
(declare-fun lt!1030443 () Unit!48599)

(declare-fun lemmaSimplifySound!99 (Regex!9110 List!34975) Unit!48599)

(assert (=> b!2942440 (= lt!1030443 (lemmaSimplifySound!99 (regTwo!18732 r!17423) s!11993))))

(declare-fun b!2942441 () Bool)

(declare-fun res!1214433 () Bool)

(assert (=> b!2942441 (=> res!1214433 e!1854164)))

(declare-fun isEmpty!19112 (List!34975) Bool)

(assert (=> b!2942441 (= res!1214433 (isEmpty!19112 s!11993))))

(declare-fun b!2942442 () Bool)

(assert (=> b!2942442 (= e!1854165 (not e!1854164))))

(declare-fun res!1214430 () Bool)

(assert (=> b!2942442 (=> res!1214430 e!1854164)))

(declare-fun lt!1030445 () Bool)

(assert (=> b!2942442 (= res!1214430 (or lt!1030445 (not (is-Concat!14431 r!17423))))))

(declare-fun matchRSpec!1247 (Regex!9110 List!34975) Bool)

(assert (=> b!2942442 (= lt!1030445 (matchRSpec!1247 r!17423 s!11993))))

(assert (=> b!2942442 (= lt!1030445 (matchR!3992 r!17423 s!11993))))

(declare-fun lt!1030441 () Unit!48599)

(declare-fun mainMatchTheorem!1247 (Regex!9110 List!34975) Unit!48599)

(assert (=> b!2942442 (= lt!1030441 (mainMatchTheorem!1247 r!17423 s!11993))))

(declare-fun b!2942443 () Bool)

(assert (=> b!2942443 (= e!1854162 (validRegex!3843 (simplify!115 r!17423)))))

(assert (= (and start!285702 res!1214434) b!2942442))

(assert (= (and b!2942442 (not res!1214430)) b!2942441))

(assert (= (and b!2942441 (not res!1214433)) b!2942436))

(assert (= (and b!2942436 (not res!1214429)) b!2942433))

(assert (= (and b!2942433 (not res!1214431)) b!2942432))

(assert (= (and b!2942432 (not res!1214435)) b!2942440))

(assert (= (and b!2942440 (not res!1214432)) b!2942443))

(assert (= (and start!285702 (is-ElementMatch!9110 r!17423)) b!2942437))

(assert (= (and start!285702 (is-Concat!14431 r!17423)) b!2942435))

(assert (= (and start!285702 (is-Star!9110 r!17423)) b!2942434))

(assert (= (and start!285702 (is-Union!9110 r!17423)) b!2942439))

(assert (= (and start!285702 (is-Cons!34851 s!11993)) b!2942438))

(declare-fun m!3326141 () Bool)

(assert (=> b!2942441 m!3326141))

(declare-fun m!3326143 () Bool)

(assert (=> b!2942442 m!3326143))

(declare-fun m!3326145 () Bool)

(assert (=> b!2942442 m!3326145))

(declare-fun m!3326147 () Bool)

(assert (=> b!2942442 m!3326147))

(declare-fun m!3326149 () Bool)

(assert (=> b!2942443 m!3326149))

(assert (=> b!2942443 m!3326149))

(declare-fun m!3326151 () Bool)

(assert (=> b!2942443 m!3326151))

(declare-fun m!3326153 () Bool)

(assert (=> b!2942436 m!3326153))

(declare-fun m!3326155 () Bool)

(assert (=> b!2942436 m!3326155))

(declare-fun m!3326157 () Bool)

(assert (=> b!2942436 m!3326157))

(declare-fun m!3326159 () Bool)

(assert (=> start!285702 m!3326159))

(declare-fun m!3326161 () Bool)

(assert (=> b!2942432 m!3326161))

(declare-fun m!3326163 () Bool)

(assert (=> b!2942433 m!3326163))

(declare-fun m!3326165 () Bool)

(assert (=> b!2942440 m!3326165))

(declare-fun m!3326167 () Bool)

(assert (=> b!2942440 m!3326167))

(declare-fun m!3326169 () Bool)

(assert (=> b!2942440 m!3326169))

(push 1)

(assert (not b!2942439))

(assert (not b!2942442))

(assert (not b!2942440))

(assert (not b!2942441))

(assert tp_is_empty!15783)

(assert (not b!2942434))

(assert (not b!2942438))

(assert (not b!2942435))

(assert (not start!285702))

(assert (not b!2942443))

(assert (not b!2942433))

(assert (not b!2942432))

(assert (not b!2942436))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!840289 () Bool)

(assert (=> d!840289 (= (isEmptyLang!234 lt!1030440) (is-EmptyLang!9110 lt!1030440))))

(assert (=> b!2942433 d!840289))

(declare-fun d!840291 () Bool)

(assert (=> d!840291 (= (isEmptyExpr!315 lt!1030444) (is-EmptyExpr!9110 lt!1030444))))

(assert (=> b!2942432 d!840291))

(declare-fun bm!193834 () Bool)

(declare-fun call!193841 () Bool)

(declare-fun call!193840 () Bool)

(assert (=> bm!193834 (= call!193841 call!193840)))

(declare-fun b!2942510 () Bool)

(declare-fun res!1214469 () Bool)

(declare-fun e!1854208 () Bool)

(assert (=> b!2942510 (=> res!1214469 e!1854208)))

(assert (=> b!2942510 (= res!1214469 (not (is-Concat!14431 (simplify!115 r!17423))))))

(declare-fun e!1854206 () Bool)

(assert (=> b!2942510 (= e!1854206 e!1854208)))

(declare-fun bm!193835 () Bool)

(declare-fun call!193839 () Bool)

(declare-fun c!481150 () Bool)

(assert (=> bm!193835 (= call!193839 (validRegex!3843 (ite c!481150 (regTwo!18733 (simplify!115 r!17423)) (regOne!18732 (simplify!115 r!17423)))))))

(declare-fun bm!193836 () Bool)

(declare-fun c!481151 () Bool)

(assert (=> bm!193836 (= call!193840 (validRegex!3843 (ite c!481151 (reg!9439 (simplify!115 r!17423)) (ite c!481150 (regOne!18733 (simplify!115 r!17423)) (regTwo!18732 (simplify!115 r!17423))))))))

(declare-fun b!2942511 () Bool)

(declare-fun e!1854210 () Bool)

(assert (=> b!2942511 (= e!1854210 call!193839)))

(declare-fun b!2942512 () Bool)

(declare-fun e!1854212 () Bool)

(assert (=> b!2942512 (= e!1854212 e!1854206)))

(assert (=> b!2942512 (= c!481150 (is-Union!9110 (simplify!115 r!17423)))))

(declare-fun d!840295 () Bool)

(declare-fun res!1214471 () Bool)

(declare-fun e!1854209 () Bool)

(assert (=> d!840295 (=> res!1214471 e!1854209)))

(assert (=> d!840295 (= res!1214471 (is-ElementMatch!9110 (simplify!115 r!17423)))))

(assert (=> d!840295 (= (validRegex!3843 (simplify!115 r!17423)) e!1854209)))

(declare-fun b!2942513 () Bool)

(declare-fun res!1214467 () Bool)

(assert (=> b!2942513 (=> (not res!1214467) (not e!1854210))))

(assert (=> b!2942513 (= res!1214467 call!193841)))

(assert (=> b!2942513 (= e!1854206 e!1854210)))

(declare-fun b!2942514 () Bool)

(declare-fun e!1854207 () Bool)

(assert (=> b!2942514 (= e!1854207 call!193841)))

(declare-fun b!2942515 () Bool)

(assert (=> b!2942515 (= e!1854209 e!1854212)))

(assert (=> b!2942515 (= c!481151 (is-Star!9110 (simplify!115 r!17423)))))

(declare-fun b!2942516 () Bool)

(assert (=> b!2942516 (= e!1854208 e!1854207)))

(declare-fun res!1214468 () Bool)

(assert (=> b!2942516 (=> (not res!1214468) (not e!1854207))))

(assert (=> b!2942516 (= res!1214468 call!193839)))

(declare-fun b!2942517 () Bool)

(declare-fun e!1854211 () Bool)

(assert (=> b!2942517 (= e!1854212 e!1854211)))

(declare-fun res!1214470 () Bool)

(declare-fun nullable!2886 (Regex!9110) Bool)

(assert (=> b!2942517 (= res!1214470 (not (nullable!2886 (reg!9439 (simplify!115 r!17423)))))))

(assert (=> b!2942517 (=> (not res!1214470) (not e!1854211))))

(declare-fun b!2942518 () Bool)

(assert (=> b!2942518 (= e!1854211 call!193840)))

(assert (= (and d!840295 (not res!1214471)) b!2942515))

(assert (= (and b!2942515 c!481151) b!2942517))

(assert (= (and b!2942515 (not c!481151)) b!2942512))

(assert (= (and b!2942517 res!1214470) b!2942518))

(assert (= (and b!2942512 c!481150) b!2942513))

(assert (= (and b!2942512 (not c!481150)) b!2942510))

(assert (= (and b!2942513 res!1214467) b!2942511))

(assert (= (and b!2942510 (not res!1214469)) b!2942516))

(assert (= (and b!2942516 res!1214468) b!2942514))

(assert (= (or b!2942513 b!2942514) bm!193834))

(assert (= (or b!2942511 b!2942516) bm!193835))

(assert (= (or b!2942518 bm!193834) bm!193836))

(declare-fun m!3326201 () Bool)

(assert (=> bm!193835 m!3326201))

(declare-fun m!3326203 () Bool)

(assert (=> bm!193836 m!3326203))

(declare-fun m!3326205 () Bool)

(assert (=> b!2942517 m!3326205))

(assert (=> b!2942443 d!840295))

(declare-fun b!2942635 () Bool)

(declare-fun e!1854281 () Bool)

(declare-fun call!193865 () Bool)

(assert (=> b!2942635 (= e!1854281 call!193865)))

(declare-fun b!2942636 () Bool)

(declare-fun e!1854280 () Regex!9110)

(assert (=> b!2942636 (= e!1854280 EmptyLang!9110)))

(declare-fun call!193864 () Bool)

(declare-fun bm!193855 () Bool)

(declare-fun c!481195 () Bool)

(declare-fun lt!1030486 () Regex!9110)

(declare-fun lt!1030484 () Regex!9110)

(assert (=> bm!193855 (= call!193864 (isEmptyLang!234 (ite c!481195 lt!1030484 lt!1030486)))))

(declare-fun bm!193856 () Bool)

(declare-fun call!193860 () Regex!9110)

(declare-fun call!193861 () Regex!9110)

(assert (=> bm!193856 (= call!193860 call!193861)))

(declare-fun b!2942637 () Bool)

(assert (=> b!2942637 (= c!481195 (is-Union!9110 r!17423))))

(declare-fun e!1854289 () Regex!9110)

(declare-fun e!1854279 () Regex!9110)

(assert (=> b!2942637 (= e!1854289 e!1854279)))

(declare-fun bm!193858 () Bool)

(declare-fun c!481197 () Bool)

(assert (=> bm!193858 (= call!193861 (simplify!115 (ite c!481197 (reg!9439 r!17423) (ite c!481195 (regTwo!18733 r!17423) (regOne!18732 r!17423)))))))

(declare-fun b!2942638 () Bool)

(declare-fun c!481196 () Bool)

(assert (=> b!2942638 (= c!481196 e!1854281)))

(declare-fun res!1214516 () Bool)

(assert (=> b!2942638 (=> res!1214516 e!1854281)))

(declare-fun call!193866 () Bool)

(assert (=> b!2942638 (= res!1214516 call!193866)))

(declare-fun lt!1030485 () Regex!9110)

(assert (=> b!2942638 (= lt!1030485 call!193861)))

(declare-fun e!1854290 () Regex!9110)

(assert (=> b!2942638 (= e!1854289 e!1854290)))

(declare-fun b!2942639 () Bool)

(declare-fun e!1854287 () Regex!9110)

(declare-fun lt!1030487 () Regex!9110)

(assert (=> b!2942639 (= e!1854287 lt!1030487)))

(declare-fun bm!193859 () Bool)

(assert (=> bm!193859 (= call!193865 (isEmptyExpr!315 (ite c!481197 lt!1030485 lt!1030486)))))

(declare-fun b!2942640 () Bool)

(declare-fun e!1854283 () Regex!9110)

(assert (=> b!2942640 (= e!1854283 e!1854289)))

(assert (=> b!2942640 (= c!481197 (is-Star!9110 r!17423))))

(declare-fun bm!193860 () Bool)

(declare-fun call!193863 () Regex!9110)

(assert (=> bm!193860 (= call!193863 (simplify!115 (ite c!481195 (regOne!18733 r!17423) (regTwo!18732 r!17423))))))

(declare-fun b!2942641 () Bool)

(declare-fun e!1854288 () Regex!9110)

(assert (=> b!2942641 (= e!1854288 (Concat!14431 lt!1030486 lt!1030487))))

(declare-fun b!2942642 () Bool)

(declare-fun e!1854278 () Regex!9110)

(assert (=> b!2942642 (= e!1854278 lt!1030484)))

(declare-fun b!2942643 () Bool)

(assert (=> b!2942643 (= e!1854290 (Star!9110 lt!1030485))))

(declare-fun b!2942644 () Bool)

(declare-fun e!1854277 () Bool)

(declare-fun call!193862 () Bool)

(assert (=> b!2942644 (= e!1854277 call!193862)))

(declare-fun b!2942645 () Bool)

(assert (=> b!2942645 (= e!1854290 EmptyExpr!9110)))

(declare-fun b!2942646 () Bool)

(declare-fun c!481188 () Bool)

(assert (=> b!2942646 (= c!481188 call!193865)))

(assert (=> b!2942646 (= e!1854280 e!1854287)))

(declare-fun b!2942647 () Bool)

(assert (=> b!2942647 (= e!1854287 e!1854288)))

(declare-fun c!481191 () Bool)

(assert (=> b!2942647 (= c!481191 (isEmptyExpr!315 lt!1030487))))

(declare-fun d!840297 () Bool)

(declare-fun e!1854282 () Bool)

(assert (=> d!840297 e!1854282))

(declare-fun res!1214518 () Bool)

(assert (=> d!840297 (=> (not res!1214518) (not e!1854282))))

(declare-fun lt!1030483 () Regex!9110)

(assert (=> d!840297 (= res!1214518 (validRegex!3843 lt!1030483))))

(declare-fun e!1854285 () Regex!9110)

(assert (=> d!840297 (= lt!1030483 e!1854285)))

(declare-fun c!481190 () Bool)

(assert (=> d!840297 (= c!481190 (is-EmptyLang!9110 r!17423))))

(assert (=> d!840297 (validRegex!3843 r!17423)))

(assert (=> d!840297 (= (simplify!115 r!17423) lt!1030483)))

(declare-fun bm!193857 () Bool)

(assert (=> bm!193857 (= call!193862 call!193866)))

(declare-fun b!2942648 () Bool)

(declare-fun c!481192 () Bool)

(assert (=> b!2942648 (= c!481192 (is-EmptyExpr!9110 r!17423))))

(declare-fun e!1854284 () Regex!9110)

(assert (=> b!2942648 (= e!1854284 e!1854283)))

(declare-fun b!2942649 () Bool)

(assert (=> b!2942649 (= e!1854282 (= (nullable!2886 lt!1030483) (nullable!2886 r!17423)))))

(declare-fun b!2942650 () Bool)

(assert (=> b!2942650 (= e!1854279 e!1854280)))

(assert (=> b!2942650 (= lt!1030486 call!193860)))

(assert (=> b!2942650 (= lt!1030487 call!193863)))

(declare-fun res!1214517 () Bool)

(assert (=> b!2942650 (= res!1214517 call!193864)))

(assert (=> b!2942650 (=> res!1214517 e!1854277)))

(declare-fun c!481189 () Bool)

(assert (=> b!2942650 (= c!481189 e!1854277)))

(declare-fun b!2942651 () Bool)

(declare-fun c!481198 () Bool)

(assert (=> b!2942651 (= c!481198 call!193864)))

(declare-fun e!1854286 () Regex!9110)

(assert (=> b!2942651 (= e!1854278 e!1854286)))

(declare-fun b!2942652 () Bool)

(assert (=> b!2942652 (= e!1854285 EmptyLang!9110)))

(declare-fun b!2942653 () Bool)

(assert (=> b!2942653 (= e!1854283 EmptyExpr!9110)))

(declare-fun b!2942654 () Bool)

(declare-fun lt!1030488 () Regex!9110)

(assert (=> b!2942654 (= e!1854286 (Union!9110 lt!1030488 lt!1030484))))

(declare-fun b!2942655 () Bool)

(assert (=> b!2942655 (= e!1854288 lt!1030486)))

(declare-fun b!2942656 () Bool)

(assert (=> b!2942656 (= e!1854279 e!1854278)))

(assert (=> b!2942656 (= lt!1030488 call!193863)))

(assert (=> b!2942656 (= lt!1030484 call!193860)))

(declare-fun c!481193 () Bool)

(assert (=> b!2942656 (= c!481193 call!193862)))

(declare-fun b!2942657 () Bool)

(assert (=> b!2942657 (= e!1854284 r!17423)))

(declare-fun bm!193861 () Bool)

(assert (=> bm!193861 (= call!193866 (isEmptyLang!234 (ite c!481197 lt!1030485 (ite c!481195 lt!1030488 lt!1030487))))))

(declare-fun b!2942658 () Bool)

(assert (=> b!2942658 (= e!1854285 e!1854284)))

(declare-fun c!481194 () Bool)

(assert (=> b!2942658 (= c!481194 (is-ElementMatch!9110 r!17423))))

(declare-fun b!2942659 () Bool)

(assert (=> b!2942659 (= e!1854286 lt!1030488)))

(assert (= (and d!840297 c!481190) b!2942652))

(assert (= (and d!840297 (not c!481190)) b!2942658))

(assert (= (and b!2942658 c!481194) b!2942657))

(assert (= (and b!2942658 (not c!481194)) b!2942648))

(assert (= (and b!2942648 c!481192) b!2942653))

(assert (= (and b!2942648 (not c!481192)) b!2942640))

(assert (= (and b!2942640 c!481197) b!2942638))

(assert (= (and b!2942640 (not c!481197)) b!2942637))

(assert (= (and b!2942638 (not res!1214516)) b!2942635))

(assert (= (and b!2942638 c!481196) b!2942645))

(assert (= (and b!2942638 (not c!481196)) b!2942643))

(assert (= (and b!2942637 c!481195) b!2942656))

(assert (= (and b!2942637 (not c!481195)) b!2942650))

(assert (= (and b!2942656 c!481193) b!2942642))

(assert (= (and b!2942656 (not c!481193)) b!2942651))

(assert (= (and b!2942651 c!481198) b!2942659))

(assert (= (and b!2942651 (not c!481198)) b!2942654))

(assert (= (and b!2942650 (not res!1214517)) b!2942644))

(assert (= (and b!2942650 c!481189) b!2942636))

(assert (= (and b!2942650 (not c!481189)) b!2942646))

(assert (= (and b!2942646 c!481188) b!2942639))

(assert (= (and b!2942646 (not c!481188)) b!2942647))

(assert (= (and b!2942647 c!481191) b!2942655))

(assert (= (and b!2942647 (not c!481191)) b!2942641))

(assert (= (or b!2942656 b!2942650) bm!193860))

(assert (= (or b!2942656 b!2942650) bm!193856))

(assert (= (or b!2942651 b!2942650) bm!193855))

(assert (= (or b!2942656 b!2942644) bm!193857))

(assert (= (or b!2942635 b!2942646) bm!193859))

(assert (= (or b!2942638 bm!193856) bm!193858))

(assert (= (or b!2942638 bm!193857) bm!193861))

(assert (= (and d!840297 res!1214518) b!2942649))

(declare-fun m!3326233 () Bool)

(assert (=> bm!193861 m!3326233))

(declare-fun m!3326235 () Bool)

(assert (=> d!840297 m!3326235))

(assert (=> d!840297 m!3326159))

(declare-fun m!3326237 () Bool)

(assert (=> b!2942649 m!3326237))

(declare-fun m!3326239 () Bool)

(assert (=> b!2942649 m!3326239))

(declare-fun m!3326241 () Bool)

(assert (=> b!2942647 m!3326241))

(declare-fun m!3326243 () Bool)

(assert (=> bm!193858 m!3326243))

(declare-fun m!3326245 () Bool)

(assert (=> bm!193860 m!3326245))

(declare-fun m!3326247 () Bool)

(assert (=> bm!193859 m!3326247))

(declare-fun m!3326249 () Bool)

(assert (=> bm!193855 m!3326249))

(assert (=> b!2942443 d!840297))

(declare-fun d!840305 () Bool)

(assert (=> d!840305 (= (isEmptyLang!234 lt!1030444) (is-EmptyLang!9110 lt!1030444))))

(assert (=> b!2942436 d!840305))

(declare-fun b!2942660 () Bool)

(declare-fun e!1854295 () Bool)

(declare-fun call!193872 () Bool)

(assert (=> b!2942660 (= e!1854295 call!193872)))

(declare-fun b!2942661 () Bool)

(declare-fun e!1854294 () Regex!9110)

(assert (=> b!2942661 (= e!1854294 EmptyLang!9110)))

(declare-fun lt!1030492 () Regex!9110)

(declare-fun lt!1030490 () Regex!9110)

(declare-fun bm!193862 () Bool)

(declare-fun c!481206 () Bool)

(declare-fun call!193871 () Bool)

(assert (=> bm!193862 (= call!193871 (isEmptyLang!234 (ite c!481206 lt!1030490 lt!1030492)))))

(declare-fun bm!193863 () Bool)

(declare-fun call!193867 () Regex!9110)

(declare-fun call!193868 () Regex!9110)

(assert (=> bm!193863 (= call!193867 call!193868)))

(declare-fun b!2942662 () Bool)

(assert (=> b!2942662 (= c!481206 (is-Union!9110 (regTwo!18732 r!17423)))))

(declare-fun e!1854303 () Regex!9110)

(declare-fun e!1854293 () Regex!9110)

(assert (=> b!2942662 (= e!1854303 e!1854293)))

(declare-fun bm!193865 () Bool)

(declare-fun c!481208 () Bool)

(assert (=> bm!193865 (= call!193868 (simplify!115 (ite c!481208 (reg!9439 (regTwo!18732 r!17423)) (ite c!481206 (regTwo!18733 (regTwo!18732 r!17423)) (regOne!18732 (regTwo!18732 r!17423))))))))

(declare-fun b!2942663 () Bool)

(declare-fun c!481207 () Bool)

(assert (=> b!2942663 (= c!481207 e!1854295)))

(declare-fun res!1214519 () Bool)

(assert (=> b!2942663 (=> res!1214519 e!1854295)))

(declare-fun call!193873 () Bool)

(assert (=> b!2942663 (= res!1214519 call!193873)))

(declare-fun lt!1030491 () Regex!9110)

(assert (=> b!2942663 (= lt!1030491 call!193868)))

(declare-fun e!1854304 () Regex!9110)

(assert (=> b!2942663 (= e!1854303 e!1854304)))

(declare-fun b!2942664 () Bool)

(declare-fun e!1854301 () Regex!9110)

(declare-fun lt!1030493 () Regex!9110)

(assert (=> b!2942664 (= e!1854301 lt!1030493)))

(declare-fun bm!193866 () Bool)

(assert (=> bm!193866 (= call!193872 (isEmptyExpr!315 (ite c!481208 lt!1030491 lt!1030492)))))

(declare-fun b!2942665 () Bool)

(declare-fun e!1854297 () Regex!9110)

(assert (=> b!2942665 (= e!1854297 e!1854303)))

(assert (=> b!2942665 (= c!481208 (is-Star!9110 (regTwo!18732 r!17423)))))

(declare-fun bm!193867 () Bool)

(declare-fun call!193870 () Regex!9110)

(assert (=> bm!193867 (= call!193870 (simplify!115 (ite c!481206 (regOne!18733 (regTwo!18732 r!17423)) (regTwo!18732 (regTwo!18732 r!17423)))))))

(declare-fun b!2942666 () Bool)

(declare-fun e!1854302 () Regex!9110)

(assert (=> b!2942666 (= e!1854302 (Concat!14431 lt!1030492 lt!1030493))))

(declare-fun b!2942667 () Bool)

(declare-fun e!1854292 () Regex!9110)

(assert (=> b!2942667 (= e!1854292 lt!1030490)))

(declare-fun b!2942668 () Bool)

(assert (=> b!2942668 (= e!1854304 (Star!9110 lt!1030491))))

(declare-fun b!2942669 () Bool)

(declare-fun e!1854291 () Bool)

(declare-fun call!193869 () Bool)

(assert (=> b!2942669 (= e!1854291 call!193869)))

(declare-fun b!2942670 () Bool)

(assert (=> b!2942670 (= e!1854304 EmptyExpr!9110)))

(declare-fun b!2942671 () Bool)

(declare-fun c!481199 () Bool)

(assert (=> b!2942671 (= c!481199 call!193872)))

(assert (=> b!2942671 (= e!1854294 e!1854301)))

(declare-fun b!2942672 () Bool)

(assert (=> b!2942672 (= e!1854301 e!1854302)))

(declare-fun c!481202 () Bool)

(assert (=> b!2942672 (= c!481202 (isEmptyExpr!315 lt!1030493))))

(declare-fun d!840307 () Bool)

(declare-fun e!1854296 () Bool)

(assert (=> d!840307 e!1854296))

(declare-fun res!1214521 () Bool)

(assert (=> d!840307 (=> (not res!1214521) (not e!1854296))))

(declare-fun lt!1030489 () Regex!9110)

(assert (=> d!840307 (= res!1214521 (validRegex!3843 lt!1030489))))

(declare-fun e!1854299 () Regex!9110)

(assert (=> d!840307 (= lt!1030489 e!1854299)))

(declare-fun c!481201 () Bool)

(assert (=> d!840307 (= c!481201 (is-EmptyLang!9110 (regTwo!18732 r!17423)))))

(assert (=> d!840307 (validRegex!3843 (regTwo!18732 r!17423))))

(assert (=> d!840307 (= (simplify!115 (regTwo!18732 r!17423)) lt!1030489)))

(declare-fun bm!193864 () Bool)

(assert (=> bm!193864 (= call!193869 call!193873)))

(declare-fun b!2942673 () Bool)

(declare-fun c!481203 () Bool)

(assert (=> b!2942673 (= c!481203 (is-EmptyExpr!9110 (regTwo!18732 r!17423)))))

(declare-fun e!1854298 () Regex!9110)

(assert (=> b!2942673 (= e!1854298 e!1854297)))

(declare-fun b!2942674 () Bool)

(assert (=> b!2942674 (= e!1854296 (= (nullable!2886 lt!1030489) (nullable!2886 (regTwo!18732 r!17423))))))

(declare-fun b!2942675 () Bool)

(assert (=> b!2942675 (= e!1854293 e!1854294)))

(assert (=> b!2942675 (= lt!1030492 call!193867)))

(assert (=> b!2942675 (= lt!1030493 call!193870)))

(declare-fun res!1214520 () Bool)

(assert (=> b!2942675 (= res!1214520 call!193871)))

(assert (=> b!2942675 (=> res!1214520 e!1854291)))

(declare-fun c!481200 () Bool)

(assert (=> b!2942675 (= c!481200 e!1854291)))

(declare-fun b!2942676 () Bool)

(declare-fun c!481209 () Bool)

(assert (=> b!2942676 (= c!481209 call!193871)))

(declare-fun e!1854300 () Regex!9110)

(assert (=> b!2942676 (= e!1854292 e!1854300)))

(declare-fun b!2942677 () Bool)

(assert (=> b!2942677 (= e!1854299 EmptyLang!9110)))

(declare-fun b!2942678 () Bool)

(assert (=> b!2942678 (= e!1854297 EmptyExpr!9110)))

(declare-fun b!2942679 () Bool)

(declare-fun lt!1030494 () Regex!9110)

(assert (=> b!2942679 (= e!1854300 (Union!9110 lt!1030494 lt!1030490))))

(declare-fun b!2942680 () Bool)

(assert (=> b!2942680 (= e!1854302 lt!1030492)))

(declare-fun b!2942681 () Bool)

(assert (=> b!2942681 (= e!1854293 e!1854292)))

(assert (=> b!2942681 (= lt!1030494 call!193870)))

(assert (=> b!2942681 (= lt!1030490 call!193867)))

(declare-fun c!481204 () Bool)

(assert (=> b!2942681 (= c!481204 call!193869)))

(declare-fun b!2942682 () Bool)

(assert (=> b!2942682 (= e!1854298 (regTwo!18732 r!17423))))

(declare-fun bm!193868 () Bool)

(assert (=> bm!193868 (= call!193873 (isEmptyLang!234 (ite c!481208 lt!1030491 (ite c!481206 lt!1030494 lt!1030493))))))

(declare-fun b!2942683 () Bool)

(assert (=> b!2942683 (= e!1854299 e!1854298)))

(declare-fun c!481205 () Bool)

(assert (=> b!2942683 (= c!481205 (is-ElementMatch!9110 (regTwo!18732 r!17423)))))

(declare-fun b!2942684 () Bool)

(assert (=> b!2942684 (= e!1854300 lt!1030494)))

(assert (= (and d!840307 c!481201) b!2942677))

(assert (= (and d!840307 (not c!481201)) b!2942683))

(assert (= (and b!2942683 c!481205) b!2942682))

(assert (= (and b!2942683 (not c!481205)) b!2942673))

(assert (= (and b!2942673 c!481203) b!2942678))

(assert (= (and b!2942673 (not c!481203)) b!2942665))

(assert (= (and b!2942665 c!481208) b!2942663))

(assert (= (and b!2942665 (not c!481208)) b!2942662))

(assert (= (and b!2942663 (not res!1214519)) b!2942660))

(assert (= (and b!2942663 c!481207) b!2942670))

(assert (= (and b!2942663 (not c!481207)) b!2942668))

(assert (= (and b!2942662 c!481206) b!2942681))

(assert (= (and b!2942662 (not c!481206)) b!2942675))

(assert (= (and b!2942681 c!481204) b!2942667))

(assert (= (and b!2942681 (not c!481204)) b!2942676))

(assert (= (and b!2942676 c!481209) b!2942684))

(assert (= (and b!2942676 (not c!481209)) b!2942679))

(assert (= (and b!2942675 (not res!1214520)) b!2942669))

(assert (= (and b!2942675 c!481200) b!2942661))

(assert (= (and b!2942675 (not c!481200)) b!2942671))

(assert (= (and b!2942671 c!481199) b!2942664))

(assert (= (and b!2942671 (not c!481199)) b!2942672))

(assert (= (and b!2942672 c!481202) b!2942680))

(assert (= (and b!2942672 (not c!481202)) b!2942666))

(assert (= (or b!2942681 b!2942675) bm!193867))

(assert (= (or b!2942681 b!2942675) bm!193863))

(assert (= (or b!2942676 b!2942675) bm!193862))

(assert (= (or b!2942681 b!2942669) bm!193864))

(assert (= (or b!2942660 b!2942671) bm!193866))

(assert (= (or b!2942663 bm!193863) bm!193865))

(assert (= (or b!2942663 bm!193864) bm!193868))

(assert (= (and d!840307 res!1214521) b!2942674))

(declare-fun m!3326251 () Bool)

(assert (=> bm!193868 m!3326251))

(declare-fun m!3326253 () Bool)

(assert (=> d!840307 m!3326253))

(declare-fun m!3326255 () Bool)

(assert (=> d!840307 m!3326255))

(declare-fun m!3326257 () Bool)

(assert (=> b!2942674 m!3326257))

(declare-fun m!3326259 () Bool)

(assert (=> b!2942674 m!3326259))

(declare-fun m!3326261 () Bool)

(assert (=> b!2942672 m!3326261))

(declare-fun m!3326263 () Bool)

(assert (=> bm!193865 m!3326263))

(declare-fun m!3326265 () Bool)

(assert (=> bm!193867 m!3326265))

(declare-fun m!3326267 () Bool)

(assert (=> bm!193866 m!3326267))

(declare-fun m!3326269 () Bool)

(assert (=> bm!193862 m!3326269))

(assert (=> b!2942436 d!840307))

(declare-fun b!2942685 () Bool)

(declare-fun e!1854309 () Bool)

(declare-fun call!193879 () Bool)

(assert (=> b!2942685 (= e!1854309 call!193879)))

(declare-fun b!2942686 () Bool)

(declare-fun e!1854308 () Regex!9110)

(assert (=> b!2942686 (= e!1854308 EmptyLang!9110)))

(declare-fun bm!193869 () Bool)

(declare-fun lt!1030498 () Regex!9110)

(declare-fun call!193878 () Bool)

(declare-fun c!481217 () Bool)

(declare-fun lt!1030496 () Regex!9110)

(assert (=> bm!193869 (= call!193878 (isEmptyLang!234 (ite c!481217 lt!1030496 lt!1030498)))))

(declare-fun bm!193870 () Bool)

(declare-fun call!193874 () Regex!9110)

(declare-fun call!193875 () Regex!9110)

(assert (=> bm!193870 (= call!193874 call!193875)))

(declare-fun b!2942687 () Bool)

(assert (=> b!2942687 (= c!481217 (is-Union!9110 (regOne!18732 r!17423)))))

(declare-fun e!1854317 () Regex!9110)

(declare-fun e!1854307 () Regex!9110)

(assert (=> b!2942687 (= e!1854317 e!1854307)))

(declare-fun c!481219 () Bool)

(declare-fun bm!193872 () Bool)

(assert (=> bm!193872 (= call!193875 (simplify!115 (ite c!481219 (reg!9439 (regOne!18732 r!17423)) (ite c!481217 (regTwo!18733 (regOne!18732 r!17423)) (regOne!18732 (regOne!18732 r!17423))))))))

(declare-fun b!2942688 () Bool)

(declare-fun c!481218 () Bool)

(assert (=> b!2942688 (= c!481218 e!1854309)))

(declare-fun res!1214522 () Bool)

(assert (=> b!2942688 (=> res!1214522 e!1854309)))

(declare-fun call!193880 () Bool)

(assert (=> b!2942688 (= res!1214522 call!193880)))

(declare-fun lt!1030497 () Regex!9110)

(assert (=> b!2942688 (= lt!1030497 call!193875)))

(declare-fun e!1854318 () Regex!9110)

(assert (=> b!2942688 (= e!1854317 e!1854318)))

(declare-fun b!2942689 () Bool)

(declare-fun e!1854315 () Regex!9110)

(declare-fun lt!1030499 () Regex!9110)

(assert (=> b!2942689 (= e!1854315 lt!1030499)))

(declare-fun bm!193873 () Bool)

(assert (=> bm!193873 (= call!193879 (isEmptyExpr!315 (ite c!481219 lt!1030497 lt!1030498)))))

(declare-fun b!2942690 () Bool)

(declare-fun e!1854311 () Regex!9110)

(assert (=> b!2942690 (= e!1854311 e!1854317)))

(assert (=> b!2942690 (= c!481219 (is-Star!9110 (regOne!18732 r!17423)))))

(declare-fun bm!193874 () Bool)

(declare-fun call!193877 () Regex!9110)

(assert (=> bm!193874 (= call!193877 (simplify!115 (ite c!481217 (regOne!18733 (regOne!18732 r!17423)) (regTwo!18732 (regOne!18732 r!17423)))))))

(declare-fun b!2942691 () Bool)

(declare-fun e!1854316 () Regex!9110)

(assert (=> b!2942691 (= e!1854316 (Concat!14431 lt!1030498 lt!1030499))))

(declare-fun b!2942692 () Bool)

(declare-fun e!1854306 () Regex!9110)

(assert (=> b!2942692 (= e!1854306 lt!1030496)))

(declare-fun b!2942693 () Bool)

(assert (=> b!2942693 (= e!1854318 (Star!9110 lt!1030497))))

(declare-fun b!2942694 () Bool)

(declare-fun e!1854305 () Bool)

(declare-fun call!193876 () Bool)

(assert (=> b!2942694 (= e!1854305 call!193876)))

(declare-fun b!2942695 () Bool)

(assert (=> b!2942695 (= e!1854318 EmptyExpr!9110)))

(declare-fun b!2942696 () Bool)

(declare-fun c!481210 () Bool)

(assert (=> b!2942696 (= c!481210 call!193879)))

(assert (=> b!2942696 (= e!1854308 e!1854315)))

(declare-fun b!2942697 () Bool)

(assert (=> b!2942697 (= e!1854315 e!1854316)))

(declare-fun c!481213 () Bool)

(assert (=> b!2942697 (= c!481213 (isEmptyExpr!315 lt!1030499))))

(declare-fun d!840309 () Bool)

(declare-fun e!1854310 () Bool)

(assert (=> d!840309 e!1854310))

(declare-fun res!1214524 () Bool)

(assert (=> d!840309 (=> (not res!1214524) (not e!1854310))))

(declare-fun lt!1030495 () Regex!9110)

(assert (=> d!840309 (= res!1214524 (validRegex!3843 lt!1030495))))

(declare-fun e!1854313 () Regex!9110)

(assert (=> d!840309 (= lt!1030495 e!1854313)))

(declare-fun c!481212 () Bool)

(assert (=> d!840309 (= c!481212 (is-EmptyLang!9110 (regOne!18732 r!17423)))))

(assert (=> d!840309 (validRegex!3843 (regOne!18732 r!17423))))

(assert (=> d!840309 (= (simplify!115 (regOne!18732 r!17423)) lt!1030495)))

(declare-fun bm!193871 () Bool)

(assert (=> bm!193871 (= call!193876 call!193880)))

(declare-fun b!2942698 () Bool)

(declare-fun c!481214 () Bool)

(assert (=> b!2942698 (= c!481214 (is-EmptyExpr!9110 (regOne!18732 r!17423)))))

(declare-fun e!1854312 () Regex!9110)

(assert (=> b!2942698 (= e!1854312 e!1854311)))

(declare-fun b!2942699 () Bool)

(assert (=> b!2942699 (= e!1854310 (= (nullable!2886 lt!1030495) (nullable!2886 (regOne!18732 r!17423))))))

(declare-fun b!2942700 () Bool)

(assert (=> b!2942700 (= e!1854307 e!1854308)))

(assert (=> b!2942700 (= lt!1030498 call!193874)))

(assert (=> b!2942700 (= lt!1030499 call!193877)))

(declare-fun res!1214523 () Bool)

(assert (=> b!2942700 (= res!1214523 call!193878)))

(assert (=> b!2942700 (=> res!1214523 e!1854305)))

(declare-fun c!481211 () Bool)

(assert (=> b!2942700 (= c!481211 e!1854305)))

(declare-fun b!2942701 () Bool)

(declare-fun c!481220 () Bool)

(assert (=> b!2942701 (= c!481220 call!193878)))

(declare-fun e!1854314 () Regex!9110)

(assert (=> b!2942701 (= e!1854306 e!1854314)))

(declare-fun b!2942702 () Bool)

(assert (=> b!2942702 (= e!1854313 EmptyLang!9110)))

(declare-fun b!2942703 () Bool)

(assert (=> b!2942703 (= e!1854311 EmptyExpr!9110)))

(declare-fun b!2942704 () Bool)

(declare-fun lt!1030500 () Regex!9110)

(assert (=> b!2942704 (= e!1854314 (Union!9110 lt!1030500 lt!1030496))))

(declare-fun b!2942705 () Bool)

(assert (=> b!2942705 (= e!1854316 lt!1030498)))

(declare-fun b!2942706 () Bool)

(assert (=> b!2942706 (= e!1854307 e!1854306)))

(assert (=> b!2942706 (= lt!1030500 call!193877)))

(assert (=> b!2942706 (= lt!1030496 call!193874)))

(declare-fun c!481215 () Bool)

(assert (=> b!2942706 (= c!481215 call!193876)))

(declare-fun b!2942707 () Bool)

(assert (=> b!2942707 (= e!1854312 (regOne!18732 r!17423))))

(declare-fun bm!193875 () Bool)

(assert (=> bm!193875 (= call!193880 (isEmptyLang!234 (ite c!481219 lt!1030497 (ite c!481217 lt!1030500 lt!1030499))))))

(declare-fun b!2942708 () Bool)

(assert (=> b!2942708 (= e!1854313 e!1854312)))

(declare-fun c!481216 () Bool)

(assert (=> b!2942708 (= c!481216 (is-ElementMatch!9110 (regOne!18732 r!17423)))))

(declare-fun b!2942709 () Bool)

(assert (=> b!2942709 (= e!1854314 lt!1030500)))

(assert (= (and d!840309 c!481212) b!2942702))

(assert (= (and d!840309 (not c!481212)) b!2942708))

(assert (= (and b!2942708 c!481216) b!2942707))

(assert (= (and b!2942708 (not c!481216)) b!2942698))

(assert (= (and b!2942698 c!481214) b!2942703))

(assert (= (and b!2942698 (not c!481214)) b!2942690))

(assert (= (and b!2942690 c!481219) b!2942688))

(assert (= (and b!2942690 (not c!481219)) b!2942687))

(assert (= (and b!2942688 (not res!1214522)) b!2942685))

(assert (= (and b!2942688 c!481218) b!2942695))

(assert (= (and b!2942688 (not c!481218)) b!2942693))

(assert (= (and b!2942687 c!481217) b!2942706))

(assert (= (and b!2942687 (not c!481217)) b!2942700))

(assert (= (and b!2942706 c!481215) b!2942692))

(assert (= (and b!2942706 (not c!481215)) b!2942701))

(assert (= (and b!2942701 c!481220) b!2942709))

(assert (= (and b!2942701 (not c!481220)) b!2942704))

(assert (= (and b!2942700 (not res!1214523)) b!2942694))

(assert (= (and b!2942700 c!481211) b!2942686))

(assert (= (and b!2942700 (not c!481211)) b!2942696))

(assert (= (and b!2942696 c!481210) b!2942689))

(assert (= (and b!2942696 (not c!481210)) b!2942697))

(assert (= (and b!2942697 c!481213) b!2942705))

(assert (= (and b!2942697 (not c!481213)) b!2942691))

(assert (= (or b!2942706 b!2942700) bm!193874))

(assert (= (or b!2942706 b!2942700) bm!193870))

(assert (= (or b!2942701 b!2942700) bm!193869))

(assert (= (or b!2942706 b!2942694) bm!193871))

(assert (= (or b!2942685 b!2942696) bm!193873))

(assert (= (or b!2942688 bm!193870) bm!193872))

(assert (= (or b!2942688 bm!193871) bm!193875))

(assert (= (and d!840309 res!1214524) b!2942699))

(declare-fun m!3326271 () Bool)

(assert (=> bm!193875 m!3326271))

(declare-fun m!3326273 () Bool)

(assert (=> d!840309 m!3326273))

(declare-fun m!3326275 () Bool)

(assert (=> d!840309 m!3326275))

(declare-fun m!3326277 () Bool)

(assert (=> b!2942699 m!3326277))

(declare-fun m!3326279 () Bool)

(assert (=> b!2942699 m!3326279))

(declare-fun m!3326281 () Bool)

(assert (=> b!2942697 m!3326281))

(declare-fun m!3326283 () Bool)

(assert (=> bm!193872 m!3326283))

(declare-fun m!3326285 () Bool)

(assert (=> bm!193874 m!3326285))

(declare-fun m!3326287 () Bool)

(assert (=> bm!193873 m!3326287))

(declare-fun m!3326289 () Bool)

(assert (=> bm!193869 m!3326289))

(assert (=> b!2942436 d!840309))

(declare-fun d!840311 () Bool)

(assert (=> d!840311 (= (isEmpty!19112 s!11993) (is-Nil!34851 s!11993))))

(assert (=> b!2942441 d!840311))

(declare-fun bm!193876 () Bool)

(declare-fun call!193883 () Bool)

(declare-fun call!193882 () Bool)

(assert (=> bm!193876 (= call!193883 call!193882)))

(declare-fun b!2942710 () Bool)

(declare-fun res!1214527 () Bool)

(declare-fun e!1854321 () Bool)

(assert (=> b!2942710 (=> res!1214527 e!1854321)))

(assert (=> b!2942710 (= res!1214527 (not (is-Concat!14431 r!17423)))))

(declare-fun e!1854319 () Bool)

(assert (=> b!2942710 (= e!1854319 e!1854321)))

(declare-fun bm!193877 () Bool)

(declare-fun call!193881 () Bool)

(declare-fun c!481221 () Bool)

(assert (=> bm!193877 (= call!193881 (validRegex!3843 (ite c!481221 (regTwo!18733 r!17423) (regOne!18732 r!17423))))))

(declare-fun c!481222 () Bool)

(declare-fun bm!193878 () Bool)

(assert (=> bm!193878 (= call!193882 (validRegex!3843 (ite c!481222 (reg!9439 r!17423) (ite c!481221 (regOne!18733 r!17423) (regTwo!18732 r!17423)))))))

(declare-fun b!2942711 () Bool)

(declare-fun e!1854323 () Bool)

(assert (=> b!2942711 (= e!1854323 call!193881)))

(declare-fun b!2942712 () Bool)

(declare-fun e!1854325 () Bool)

(assert (=> b!2942712 (= e!1854325 e!1854319)))

(assert (=> b!2942712 (= c!481221 (is-Union!9110 r!17423))))

(declare-fun d!840313 () Bool)

(declare-fun res!1214529 () Bool)

(declare-fun e!1854322 () Bool)

(assert (=> d!840313 (=> res!1214529 e!1854322)))

(assert (=> d!840313 (= res!1214529 (is-ElementMatch!9110 r!17423))))

(assert (=> d!840313 (= (validRegex!3843 r!17423) e!1854322)))

(declare-fun b!2942713 () Bool)

(declare-fun res!1214525 () Bool)

(assert (=> b!2942713 (=> (not res!1214525) (not e!1854323))))

(assert (=> b!2942713 (= res!1214525 call!193883)))

(assert (=> b!2942713 (= e!1854319 e!1854323)))

(declare-fun b!2942714 () Bool)

(declare-fun e!1854320 () Bool)

(assert (=> b!2942714 (= e!1854320 call!193883)))

(declare-fun b!2942715 () Bool)

(assert (=> b!2942715 (= e!1854322 e!1854325)))

(assert (=> b!2942715 (= c!481222 (is-Star!9110 r!17423))))

(declare-fun b!2942716 () Bool)

(assert (=> b!2942716 (= e!1854321 e!1854320)))

(declare-fun res!1214526 () Bool)

(assert (=> b!2942716 (=> (not res!1214526) (not e!1854320))))

(assert (=> b!2942716 (= res!1214526 call!193881)))

(declare-fun b!2942717 () Bool)

(declare-fun e!1854324 () Bool)

(assert (=> b!2942717 (= e!1854325 e!1854324)))

(declare-fun res!1214528 () Bool)

(assert (=> b!2942717 (= res!1214528 (not (nullable!2886 (reg!9439 r!17423))))))

(assert (=> b!2942717 (=> (not res!1214528) (not e!1854324))))

(declare-fun b!2942718 () Bool)

(assert (=> b!2942718 (= e!1854324 call!193882)))

(assert (= (and d!840313 (not res!1214529)) b!2942715))

(assert (= (and b!2942715 c!481222) b!2942717))

(assert (= (and b!2942715 (not c!481222)) b!2942712))

(assert (= (and b!2942717 res!1214528) b!2942718))

(assert (= (and b!2942712 c!481221) b!2942713))

(assert (= (and b!2942712 (not c!481221)) b!2942710))

(assert (= (and b!2942713 res!1214525) b!2942711))

(assert (= (and b!2942710 (not res!1214527)) b!2942716))

(assert (= (and b!2942716 res!1214526) b!2942714))

(assert (= (or b!2942713 b!2942714) bm!193876))

(assert (= (or b!2942711 b!2942716) bm!193877))

(assert (= (or b!2942718 bm!193876) bm!193878))

(declare-fun m!3326291 () Bool)

(assert (=> bm!193877 m!3326291))

(declare-fun m!3326293 () Bool)

(assert (=> bm!193878 m!3326293))

(declare-fun m!3326295 () Bool)

(assert (=> b!2942717 m!3326295))

(assert (=> start!285702 d!840313))

(declare-fun b!2942752 () Bool)

(assert (=> b!2942752 true))

(assert (=> b!2942752 true))

(declare-fun bs!525532 () Bool)

(declare-fun b!2942759 () Bool)

(assert (= bs!525532 (and b!2942759 b!2942752)))

(declare-fun lambda!109552 () Int)

(declare-fun lambda!109551 () Int)

(assert (=> bs!525532 (not (= lambda!109552 lambda!109551))))

(assert (=> b!2942759 true))

(assert (=> b!2942759 true))

(declare-fun b!2942751 () Bool)

(declare-fun c!481234 () Bool)

(assert (=> b!2942751 (= c!481234 (is-Union!9110 r!17423))))

(declare-fun e!1854348 () Bool)

(declare-fun e!1854350 () Bool)

(assert (=> b!2942751 (= e!1854348 e!1854350)))

(declare-fun e!1854346 () Bool)

(declare-fun call!193889 () Bool)

(assert (=> b!2942752 (= e!1854346 call!193889)))

(declare-fun b!2942753 () Bool)

(declare-fun e!1854344 () Bool)

(assert (=> b!2942753 (= e!1854350 e!1854344)))

(declare-fun res!1214548 () Bool)

(assert (=> b!2942753 (= res!1214548 (matchRSpec!1247 (regOne!18733 r!17423) s!11993))))

(assert (=> b!2942753 (=> res!1214548 e!1854344)))

(declare-fun bm!193883 () Bool)

(declare-fun c!481233 () Bool)

(declare-fun Exists!1456 (Int) Bool)

(assert (=> bm!193883 (= call!193889 (Exists!1456 (ite c!481233 lambda!109551 lambda!109552)))))

(declare-fun b!2942754 () Bool)

(declare-fun e!1854349 () Bool)

(declare-fun e!1854345 () Bool)

(assert (=> b!2942754 (= e!1854349 e!1854345)))

(declare-fun res!1214547 () Bool)

(assert (=> b!2942754 (= res!1214547 (not (is-EmptyLang!9110 r!17423)))))

(assert (=> b!2942754 (=> (not res!1214547) (not e!1854345))))

(declare-fun b!2942755 () Bool)

(assert (=> b!2942755 (= e!1854348 (= s!11993 (Cons!34851 (c!481138 r!17423) Nil!34851)))))

(declare-fun b!2942756 () Bool)

(declare-fun e!1854347 () Bool)

(assert (=> b!2942756 (= e!1854350 e!1854347)))

(assert (=> b!2942756 (= c!481233 (is-Star!9110 r!17423))))

(declare-fun d!840315 () Bool)

(declare-fun c!481232 () Bool)

(assert (=> d!840315 (= c!481232 (is-EmptyExpr!9110 r!17423))))

(assert (=> d!840315 (= (matchRSpec!1247 r!17423 s!11993) e!1854349)))

(declare-fun bm!193884 () Bool)

(declare-fun call!193888 () Bool)

(assert (=> bm!193884 (= call!193888 (isEmpty!19112 s!11993))))

(declare-fun b!2942757 () Bool)

(declare-fun c!481231 () Bool)

(assert (=> b!2942757 (= c!481231 (is-ElementMatch!9110 r!17423))))

(assert (=> b!2942757 (= e!1854345 e!1854348)))

(declare-fun b!2942758 () Bool)

(declare-fun res!1214546 () Bool)

(assert (=> b!2942758 (=> res!1214546 e!1854346)))

(assert (=> b!2942758 (= res!1214546 call!193888)))

(assert (=> b!2942758 (= e!1854347 e!1854346)))

(assert (=> b!2942759 (= e!1854347 call!193889)))

(declare-fun b!2942760 () Bool)

(assert (=> b!2942760 (= e!1854349 call!193888)))

(declare-fun b!2942761 () Bool)

(assert (=> b!2942761 (= e!1854344 (matchRSpec!1247 (regTwo!18733 r!17423) s!11993))))

(assert (= (and d!840315 c!481232) b!2942760))

(assert (= (and d!840315 (not c!481232)) b!2942754))

(assert (= (and b!2942754 res!1214547) b!2942757))

(assert (= (and b!2942757 c!481231) b!2942755))

(assert (= (and b!2942757 (not c!481231)) b!2942751))

(assert (= (and b!2942751 c!481234) b!2942753))

(assert (= (and b!2942751 (not c!481234)) b!2942756))

(assert (= (and b!2942753 (not res!1214548)) b!2942761))

(assert (= (and b!2942756 c!481233) b!2942758))

(assert (= (and b!2942756 (not c!481233)) b!2942759))

(assert (= (and b!2942758 (not res!1214546)) b!2942752))

(assert (= (or b!2942752 b!2942759) bm!193883))

(assert (= (or b!2942760 b!2942758) bm!193884))

(declare-fun m!3326297 () Bool)

(assert (=> b!2942753 m!3326297))

(declare-fun m!3326299 () Bool)

(assert (=> bm!193883 m!3326299))

(assert (=> bm!193884 m!3326141))

(declare-fun m!3326301 () Bool)

(assert (=> b!2942761 m!3326301))

(assert (=> b!2942442 d!840315))

(declare-fun b!2942794 () Bool)

(declare-fun res!1214571 () Bool)

(declare-fun e!1854366 () Bool)

(assert (=> b!2942794 (=> res!1214571 e!1854366)))

(declare-fun tail!4775 (List!34975) List!34975)

(assert (=> b!2942794 (= res!1214571 (not (isEmpty!19112 (tail!4775 s!11993))))))

(declare-fun b!2942795 () Bool)

(declare-fun res!1214568 () Bool)

(declare-fun e!1854368 () Bool)

(assert (=> b!2942795 (=> res!1214568 e!1854368)))

(declare-fun e!1854371 () Bool)

(assert (=> b!2942795 (= res!1214568 e!1854371)))

(declare-fun res!1214570 () Bool)

(assert (=> b!2942795 (=> (not res!1214570) (not e!1854371))))

(declare-fun lt!1030503 () Bool)

(assert (=> b!2942795 (= res!1214570 lt!1030503)))

(declare-fun b!2942796 () Bool)

(declare-fun res!1214566 () Bool)

(assert (=> b!2942796 (=> res!1214566 e!1854368)))

(assert (=> b!2942796 (= res!1214566 (not (is-ElementMatch!9110 r!17423)))))

(declare-fun e!1854365 () Bool)

(assert (=> b!2942796 (= e!1854365 e!1854368)))

(declare-fun b!2942797 () Bool)

(declare-fun head!6549 (List!34975) C!18406)

(assert (=> b!2942797 (= e!1854366 (not (= (head!6549 s!11993) (c!481138 r!17423))))))

(declare-fun d!840317 () Bool)

(declare-fun e!1854370 () Bool)

(assert (=> d!840317 e!1854370))

(declare-fun c!481243 () Bool)

(assert (=> d!840317 (= c!481243 (is-EmptyExpr!9110 r!17423))))

(declare-fun e!1854367 () Bool)

(assert (=> d!840317 (= lt!1030503 e!1854367)))

(declare-fun c!481241 () Bool)

(assert (=> d!840317 (= c!481241 (isEmpty!19112 s!11993))))

(assert (=> d!840317 (validRegex!3843 r!17423)))

(assert (=> d!840317 (= (matchR!3992 r!17423 s!11993) lt!1030503)))

(declare-fun bm!193887 () Bool)

(declare-fun call!193892 () Bool)

(assert (=> bm!193887 (= call!193892 (isEmpty!19112 s!11993))))

(declare-fun b!2942798 () Bool)

(assert (=> b!2942798 (= e!1854371 (= (head!6549 s!11993) (c!481138 r!17423)))))

(declare-fun b!2942799 () Bool)

(assert (=> b!2942799 (= e!1854370 e!1854365)))

(declare-fun c!481242 () Bool)

(assert (=> b!2942799 (= c!481242 (is-EmptyLang!9110 r!17423))))

(declare-fun b!2942800 () Bool)

(declare-fun derivativeStep!2490 (Regex!9110 C!18406) Regex!9110)

(assert (=> b!2942800 (= e!1854367 (matchR!3992 (derivativeStep!2490 r!17423 (head!6549 s!11993)) (tail!4775 s!11993)))))

(declare-fun b!2942801 () Bool)

(declare-fun res!1214567 () Bool)

(assert (=> b!2942801 (=> (not res!1214567) (not e!1854371))))

(assert (=> b!2942801 (= res!1214567 (isEmpty!19112 (tail!4775 s!11993)))))

(declare-fun b!2942802 () Bool)

(assert (=> b!2942802 (= e!1854370 (= lt!1030503 call!193892))))

(declare-fun b!2942803 () Bool)

(assert (=> b!2942803 (= e!1854365 (not lt!1030503))))

(declare-fun b!2942804 () Bool)

(declare-fun res!1214565 () Bool)

(assert (=> b!2942804 (=> (not res!1214565) (not e!1854371))))

(assert (=> b!2942804 (= res!1214565 (not call!193892))))

(declare-fun b!2942805 () Bool)

(declare-fun e!1854369 () Bool)

(assert (=> b!2942805 (= e!1854369 e!1854366)))

(declare-fun res!1214572 () Bool)

(assert (=> b!2942805 (=> res!1214572 e!1854366)))

(assert (=> b!2942805 (= res!1214572 call!193892)))

(declare-fun b!2942806 () Bool)

(assert (=> b!2942806 (= e!1854367 (nullable!2886 r!17423))))

(declare-fun b!2942807 () Bool)

(assert (=> b!2942807 (= e!1854368 e!1854369)))

(declare-fun res!1214569 () Bool)

(assert (=> b!2942807 (=> (not res!1214569) (not e!1854369))))

(assert (=> b!2942807 (= res!1214569 (not lt!1030503))))

(assert (= (and d!840317 c!481241) b!2942806))

(assert (= (and d!840317 (not c!481241)) b!2942800))

(assert (= (and d!840317 c!481243) b!2942802))

(assert (= (and d!840317 (not c!481243)) b!2942799))

(assert (= (and b!2942799 c!481242) b!2942803))

(assert (= (and b!2942799 (not c!481242)) b!2942796))

(assert (= (and b!2942796 (not res!1214566)) b!2942795))

(assert (= (and b!2942795 res!1214570) b!2942804))

(assert (= (and b!2942804 res!1214565) b!2942801))

(assert (= (and b!2942801 res!1214567) b!2942798))

(assert (= (and b!2942795 (not res!1214568)) b!2942807))

(assert (= (and b!2942807 res!1214569) b!2942805))

(assert (= (and b!2942805 (not res!1214572)) b!2942794))

(assert (= (and b!2942794 (not res!1214571)) b!2942797))

(assert (= (or b!2942802 b!2942804 b!2942805) bm!193887))

(declare-fun m!3326303 () Bool)

(assert (=> b!2942794 m!3326303))

(assert (=> b!2942794 m!3326303))

(declare-fun m!3326305 () Bool)

(assert (=> b!2942794 m!3326305))

(declare-fun m!3326307 () Bool)

(assert (=> b!2942798 m!3326307))

(assert (=> d!840317 m!3326141))

(assert (=> d!840317 m!3326159))

(assert (=> b!2942797 m!3326307))

(assert (=> b!2942806 m!3326239))

(assert (=> b!2942800 m!3326307))

(assert (=> b!2942800 m!3326307))

(declare-fun m!3326309 () Bool)

(assert (=> b!2942800 m!3326309))

(assert (=> b!2942800 m!3326303))

(assert (=> b!2942800 m!3326309))

(assert (=> b!2942800 m!3326303))

(declare-fun m!3326311 () Bool)

(assert (=> b!2942800 m!3326311))

(assert (=> bm!193887 m!3326141))

(assert (=> b!2942801 m!3326303))

(assert (=> b!2942801 m!3326303))

(assert (=> b!2942801 m!3326305))

(assert (=> b!2942442 d!840317))

(declare-fun d!840319 () Bool)

(assert (=> d!840319 (= (matchR!3992 r!17423 s!11993) (matchRSpec!1247 r!17423 s!11993))))

(declare-fun lt!1030506 () Unit!48599)

(declare-fun choose!17399 (Regex!9110 List!34975) Unit!48599)

(assert (=> d!840319 (= lt!1030506 (choose!17399 r!17423 s!11993))))

(assert (=> d!840319 (validRegex!3843 r!17423)))

(assert (=> d!840319 (= (mainMatchTheorem!1247 r!17423 s!11993) lt!1030506)))

(declare-fun bs!525533 () Bool)

(assert (= bs!525533 d!840319))

(assert (=> bs!525533 m!3326145))

(assert (=> bs!525533 m!3326143))

(declare-fun m!3326313 () Bool)

(assert (=> bs!525533 m!3326313))

(assert (=> bs!525533 m!3326159))

(assert (=> b!2942442 d!840319))

(declare-fun b!2942808 () Bool)

(declare-fun res!1214579 () Bool)

(declare-fun e!1854373 () Bool)

(assert (=> b!2942808 (=> res!1214579 e!1854373)))

(assert (=> b!2942808 (= res!1214579 (not (isEmpty!19112 (tail!4775 s!11993))))))

(declare-fun b!2942809 () Bool)

(declare-fun res!1214576 () Bool)

(declare-fun e!1854375 () Bool)

(assert (=> b!2942809 (=> res!1214576 e!1854375)))

(declare-fun e!1854378 () Bool)

(assert (=> b!2942809 (= res!1214576 e!1854378)))

(declare-fun res!1214578 () Bool)

(assert (=> b!2942809 (=> (not res!1214578) (not e!1854378))))

(declare-fun lt!1030507 () Bool)

(assert (=> b!2942809 (= res!1214578 lt!1030507)))

(declare-fun b!2942810 () Bool)

(declare-fun res!1214574 () Bool)

(assert (=> b!2942810 (=> res!1214574 e!1854375)))

(assert (=> b!2942810 (= res!1214574 (not (is-ElementMatch!9110 lt!1030440)))))

(declare-fun e!1854372 () Bool)

(assert (=> b!2942810 (= e!1854372 e!1854375)))

(declare-fun b!2942811 () Bool)

(assert (=> b!2942811 (= e!1854373 (not (= (head!6549 s!11993) (c!481138 lt!1030440))))))

(declare-fun d!840321 () Bool)

(declare-fun e!1854377 () Bool)

(assert (=> d!840321 e!1854377))

(declare-fun c!481246 () Bool)

(assert (=> d!840321 (= c!481246 (is-EmptyExpr!9110 lt!1030440))))

(declare-fun e!1854374 () Bool)

(assert (=> d!840321 (= lt!1030507 e!1854374)))

(declare-fun c!481244 () Bool)

(assert (=> d!840321 (= c!481244 (isEmpty!19112 s!11993))))

(assert (=> d!840321 (validRegex!3843 lt!1030440)))

(assert (=> d!840321 (= (matchR!3992 lt!1030440 s!11993) lt!1030507)))

(declare-fun bm!193888 () Bool)

(declare-fun call!193893 () Bool)

(assert (=> bm!193888 (= call!193893 (isEmpty!19112 s!11993))))

(declare-fun b!2942812 () Bool)

(assert (=> b!2942812 (= e!1854378 (= (head!6549 s!11993) (c!481138 lt!1030440)))))

(declare-fun b!2942813 () Bool)

(assert (=> b!2942813 (= e!1854377 e!1854372)))

(declare-fun c!481245 () Bool)

(assert (=> b!2942813 (= c!481245 (is-EmptyLang!9110 lt!1030440))))

(declare-fun b!2942814 () Bool)

(assert (=> b!2942814 (= e!1854374 (matchR!3992 (derivativeStep!2490 lt!1030440 (head!6549 s!11993)) (tail!4775 s!11993)))))

(declare-fun b!2942815 () Bool)

(declare-fun res!1214575 () Bool)

(assert (=> b!2942815 (=> (not res!1214575) (not e!1854378))))

(assert (=> b!2942815 (= res!1214575 (isEmpty!19112 (tail!4775 s!11993)))))

(declare-fun b!2942816 () Bool)

(assert (=> b!2942816 (= e!1854377 (= lt!1030507 call!193893))))

(declare-fun b!2942817 () Bool)

(assert (=> b!2942817 (= e!1854372 (not lt!1030507))))

(declare-fun b!2942818 () Bool)

(declare-fun res!1214573 () Bool)

(assert (=> b!2942818 (=> (not res!1214573) (not e!1854378))))

(assert (=> b!2942818 (= res!1214573 (not call!193893))))

(declare-fun b!2942819 () Bool)

(declare-fun e!1854376 () Bool)

(assert (=> b!2942819 (= e!1854376 e!1854373)))

(declare-fun res!1214580 () Bool)

(assert (=> b!2942819 (=> res!1214580 e!1854373)))

(assert (=> b!2942819 (= res!1214580 call!193893)))

(declare-fun b!2942820 () Bool)

(assert (=> b!2942820 (= e!1854374 (nullable!2886 lt!1030440))))

(declare-fun b!2942821 () Bool)

(assert (=> b!2942821 (= e!1854375 e!1854376)))

(declare-fun res!1214577 () Bool)

(assert (=> b!2942821 (=> (not res!1214577) (not e!1854376))))

(assert (=> b!2942821 (= res!1214577 (not lt!1030507))))

(assert (= (and d!840321 c!481244) b!2942820))

(assert (= (and d!840321 (not c!481244)) b!2942814))

(assert (= (and d!840321 c!481246) b!2942816))

(assert (= (and d!840321 (not c!481246)) b!2942813))

(assert (= (and b!2942813 c!481245) b!2942817))

(assert (= (and b!2942813 (not c!481245)) b!2942810))

(assert (= (and b!2942810 (not res!1214574)) b!2942809))

(assert (= (and b!2942809 res!1214578) b!2942818))

(assert (= (and b!2942818 res!1214573) b!2942815))

(assert (= (and b!2942815 res!1214575) b!2942812))

(assert (= (and b!2942809 (not res!1214576)) b!2942821))

(assert (= (and b!2942821 res!1214577) b!2942819))

(assert (= (and b!2942819 (not res!1214580)) b!2942808))

(assert (= (and b!2942808 (not res!1214579)) b!2942811))

(assert (= (or b!2942816 b!2942818 b!2942819) bm!193888))

(assert (=> b!2942808 m!3326303))

(assert (=> b!2942808 m!3326303))

(assert (=> b!2942808 m!3326305))

(assert (=> b!2942812 m!3326307))

(assert (=> d!840321 m!3326141))

(declare-fun m!3326315 () Bool)

(assert (=> d!840321 m!3326315))

(assert (=> b!2942811 m!3326307))

(declare-fun m!3326317 () Bool)

(assert (=> b!2942820 m!3326317))

(assert (=> b!2942814 m!3326307))

(assert (=> b!2942814 m!3326307))

(declare-fun m!3326319 () Bool)

(assert (=> b!2942814 m!3326319))

(assert (=> b!2942814 m!3326303))

(assert (=> b!2942814 m!3326319))

(assert (=> b!2942814 m!3326303))

(declare-fun m!3326321 () Bool)

(assert (=> b!2942814 m!3326321))

(assert (=> bm!193888 m!3326141))

(assert (=> b!2942815 m!3326303))

(assert (=> b!2942815 m!3326303))

(assert (=> b!2942815 m!3326305))

(assert (=> b!2942440 d!840321))

(declare-fun b!2942822 () Bool)

(declare-fun res!1214587 () Bool)

(declare-fun e!1854380 () Bool)

(assert (=> b!2942822 (=> res!1214587 e!1854380)))

(assert (=> b!2942822 (= res!1214587 (not (isEmpty!19112 (tail!4775 s!11993))))))

(declare-fun b!2942823 () Bool)

(declare-fun res!1214584 () Bool)

(declare-fun e!1854382 () Bool)

(assert (=> b!2942823 (=> res!1214584 e!1854382)))

(declare-fun e!1854385 () Bool)

(assert (=> b!2942823 (= res!1214584 e!1854385)))

(declare-fun res!1214586 () Bool)

(assert (=> b!2942823 (=> (not res!1214586) (not e!1854385))))

(declare-fun lt!1030508 () Bool)

(assert (=> b!2942823 (= res!1214586 lt!1030508)))

(declare-fun b!2942824 () Bool)

(declare-fun res!1214582 () Bool)

(assert (=> b!2942824 (=> res!1214582 e!1854382)))

(assert (=> b!2942824 (= res!1214582 (not (is-ElementMatch!9110 (regTwo!18732 r!17423))))))

(declare-fun e!1854379 () Bool)

(assert (=> b!2942824 (= e!1854379 e!1854382)))

(declare-fun b!2942825 () Bool)

(assert (=> b!2942825 (= e!1854380 (not (= (head!6549 s!11993) (c!481138 (regTwo!18732 r!17423)))))))

(declare-fun d!840323 () Bool)

(declare-fun e!1854384 () Bool)

(assert (=> d!840323 e!1854384))

(declare-fun c!481249 () Bool)

(assert (=> d!840323 (= c!481249 (is-EmptyExpr!9110 (regTwo!18732 r!17423)))))

(declare-fun e!1854381 () Bool)

(assert (=> d!840323 (= lt!1030508 e!1854381)))

(declare-fun c!481247 () Bool)

(assert (=> d!840323 (= c!481247 (isEmpty!19112 s!11993))))

(assert (=> d!840323 (validRegex!3843 (regTwo!18732 r!17423))))

(assert (=> d!840323 (= (matchR!3992 (regTwo!18732 r!17423) s!11993) lt!1030508)))

(declare-fun bm!193889 () Bool)

(declare-fun call!193894 () Bool)

(assert (=> bm!193889 (= call!193894 (isEmpty!19112 s!11993))))

(declare-fun b!2942826 () Bool)

(assert (=> b!2942826 (= e!1854385 (= (head!6549 s!11993) (c!481138 (regTwo!18732 r!17423))))))

(declare-fun b!2942827 () Bool)

(assert (=> b!2942827 (= e!1854384 e!1854379)))

(declare-fun c!481248 () Bool)

(assert (=> b!2942827 (= c!481248 (is-EmptyLang!9110 (regTwo!18732 r!17423)))))

(declare-fun b!2942828 () Bool)

(assert (=> b!2942828 (= e!1854381 (matchR!3992 (derivativeStep!2490 (regTwo!18732 r!17423) (head!6549 s!11993)) (tail!4775 s!11993)))))

(declare-fun b!2942829 () Bool)

(declare-fun res!1214583 () Bool)

(assert (=> b!2942829 (=> (not res!1214583) (not e!1854385))))

(assert (=> b!2942829 (= res!1214583 (isEmpty!19112 (tail!4775 s!11993)))))

(declare-fun b!2942830 () Bool)

(assert (=> b!2942830 (= e!1854384 (= lt!1030508 call!193894))))

(declare-fun b!2942831 () Bool)

(assert (=> b!2942831 (= e!1854379 (not lt!1030508))))

(declare-fun b!2942832 () Bool)

(declare-fun res!1214581 () Bool)

(assert (=> b!2942832 (=> (not res!1214581) (not e!1854385))))

(assert (=> b!2942832 (= res!1214581 (not call!193894))))

(declare-fun b!2942833 () Bool)

(declare-fun e!1854383 () Bool)

(assert (=> b!2942833 (= e!1854383 e!1854380)))

(declare-fun res!1214588 () Bool)

(assert (=> b!2942833 (=> res!1214588 e!1854380)))

(assert (=> b!2942833 (= res!1214588 call!193894)))

(declare-fun b!2942834 () Bool)

(assert (=> b!2942834 (= e!1854381 (nullable!2886 (regTwo!18732 r!17423)))))

(declare-fun b!2942835 () Bool)

(assert (=> b!2942835 (= e!1854382 e!1854383)))

(declare-fun res!1214585 () Bool)

(assert (=> b!2942835 (=> (not res!1214585) (not e!1854383))))

(assert (=> b!2942835 (= res!1214585 (not lt!1030508))))

(assert (= (and d!840323 c!481247) b!2942834))

(assert (= (and d!840323 (not c!481247)) b!2942828))

(assert (= (and d!840323 c!481249) b!2942830))

(assert (= (and d!840323 (not c!481249)) b!2942827))

(assert (= (and b!2942827 c!481248) b!2942831))

(assert (= (and b!2942827 (not c!481248)) b!2942824))

(assert (= (and b!2942824 (not res!1214582)) b!2942823))

(assert (= (and b!2942823 res!1214586) b!2942832))

(assert (= (and b!2942832 res!1214581) b!2942829))

(assert (= (and b!2942829 res!1214583) b!2942826))

(assert (= (and b!2942823 (not res!1214584)) b!2942835))

(assert (= (and b!2942835 res!1214585) b!2942833))

(assert (= (and b!2942833 (not res!1214588)) b!2942822))

(assert (= (and b!2942822 (not res!1214587)) b!2942825))

(assert (= (or b!2942830 b!2942832 b!2942833) bm!193889))

(assert (=> b!2942822 m!3326303))

(assert (=> b!2942822 m!3326303))

(assert (=> b!2942822 m!3326305))

(assert (=> b!2942826 m!3326307))

(assert (=> d!840323 m!3326141))

(assert (=> d!840323 m!3326255))

(assert (=> b!2942825 m!3326307))

(assert (=> b!2942834 m!3326259))

(assert (=> b!2942828 m!3326307))

(assert (=> b!2942828 m!3326307))

(declare-fun m!3326323 () Bool)

(assert (=> b!2942828 m!3326323))

(assert (=> b!2942828 m!3326303))

(assert (=> b!2942828 m!3326323))

(assert (=> b!2942828 m!3326303))

(declare-fun m!3326325 () Bool)

(assert (=> b!2942828 m!3326325))

(assert (=> bm!193889 m!3326141))

(assert (=> b!2942829 m!3326303))

(assert (=> b!2942829 m!3326303))

(assert (=> b!2942829 m!3326305))

(assert (=> b!2942440 d!840323))

(declare-fun d!840325 () Bool)

(assert (=> d!840325 (= (matchR!3992 (regTwo!18732 r!17423) s!11993) (matchR!3992 (simplify!115 (regTwo!18732 r!17423)) s!11993))))

(declare-fun lt!1030511 () Unit!48599)

(declare-fun choose!17401 (Regex!9110 List!34975) Unit!48599)

(assert (=> d!840325 (= lt!1030511 (choose!17401 (regTwo!18732 r!17423) s!11993))))

(assert (=> d!840325 (validRegex!3843 (regTwo!18732 r!17423))))

(assert (=> d!840325 (= (lemmaSimplifySound!99 (regTwo!18732 r!17423) s!11993) lt!1030511)))

(declare-fun bs!525534 () Bool)

(assert (= bs!525534 d!840325))

(assert (=> bs!525534 m!3326155))

(assert (=> bs!525534 m!3326155))

(declare-fun m!3326327 () Bool)

(assert (=> bs!525534 m!3326327))

(declare-fun m!3326329 () Bool)

(assert (=> bs!525534 m!3326329))

(assert (=> bs!525534 m!3326167))

(assert (=> bs!525534 m!3326255))

(assert (=> b!2942440 d!840325))

(declare-fun b!2942847 () Bool)

(declare-fun e!1854388 () Bool)

(declare-fun tp!941612 () Bool)

(declare-fun tp!941616 () Bool)

(assert (=> b!2942847 (= e!1854388 (and tp!941612 tp!941616))))

(assert (=> b!2942434 (= tp!941583 e!1854388)))

(declare-fun b!2942846 () Bool)

(assert (=> b!2942846 (= e!1854388 tp_is_empty!15783)))

(declare-fun b!2942849 () Bool)

(declare-fun tp!941614 () Bool)

(declare-fun tp!941613 () Bool)

(assert (=> b!2942849 (= e!1854388 (and tp!941614 tp!941613))))

(declare-fun b!2942848 () Bool)

(declare-fun tp!941615 () Bool)

(assert (=> b!2942848 (= e!1854388 tp!941615)))

(assert (= (and b!2942434 (is-ElementMatch!9110 (reg!9439 r!17423))) b!2942846))

(assert (= (and b!2942434 (is-Concat!14431 (reg!9439 r!17423))) b!2942847))

(assert (= (and b!2942434 (is-Star!9110 (reg!9439 r!17423))) b!2942848))

(assert (= (and b!2942434 (is-Union!9110 (reg!9439 r!17423))) b!2942849))

(declare-fun b!2942851 () Bool)

(declare-fun e!1854389 () Bool)

(declare-fun tp!941617 () Bool)

(declare-fun tp!941621 () Bool)

(assert (=> b!2942851 (= e!1854389 (and tp!941617 tp!941621))))

(assert (=> b!2942439 (= tp!941580 e!1854389)))

(declare-fun b!2942850 () Bool)

(assert (=> b!2942850 (= e!1854389 tp_is_empty!15783)))

(declare-fun b!2942853 () Bool)

(declare-fun tp!941619 () Bool)

(declare-fun tp!941618 () Bool)

(assert (=> b!2942853 (= e!1854389 (and tp!941619 tp!941618))))

(declare-fun b!2942852 () Bool)

(declare-fun tp!941620 () Bool)

(assert (=> b!2942852 (= e!1854389 tp!941620)))

(assert (= (and b!2942439 (is-ElementMatch!9110 (regOne!18733 r!17423))) b!2942850))

(assert (= (and b!2942439 (is-Concat!14431 (regOne!18733 r!17423))) b!2942851))

(assert (= (and b!2942439 (is-Star!9110 (regOne!18733 r!17423))) b!2942852))

(assert (= (and b!2942439 (is-Union!9110 (regOne!18733 r!17423))) b!2942853))

(declare-fun b!2942855 () Bool)

(declare-fun e!1854390 () Bool)

(declare-fun tp!941622 () Bool)

(declare-fun tp!941626 () Bool)

(assert (=> b!2942855 (= e!1854390 (and tp!941622 tp!941626))))

(assert (=> b!2942439 (= tp!941579 e!1854390)))

(declare-fun b!2942854 () Bool)

(assert (=> b!2942854 (= e!1854390 tp_is_empty!15783)))

(declare-fun b!2942857 () Bool)

(declare-fun tp!941624 () Bool)

(declare-fun tp!941623 () Bool)

(assert (=> b!2942857 (= e!1854390 (and tp!941624 tp!941623))))

(declare-fun b!2942856 () Bool)

(declare-fun tp!941625 () Bool)

(assert (=> b!2942856 (= e!1854390 tp!941625)))

(assert (= (and b!2942439 (is-ElementMatch!9110 (regTwo!18733 r!17423))) b!2942854))

(assert (= (and b!2942439 (is-Concat!14431 (regTwo!18733 r!17423))) b!2942855))

(assert (= (and b!2942439 (is-Star!9110 (regTwo!18733 r!17423))) b!2942856))

(assert (= (and b!2942439 (is-Union!9110 (regTwo!18733 r!17423))) b!2942857))

(declare-fun b!2942862 () Bool)

(declare-fun e!1854393 () Bool)

(declare-fun tp!941629 () Bool)

(assert (=> b!2942862 (= e!1854393 (and tp_is_empty!15783 tp!941629))))

(assert (=> b!2942438 (= tp!941582 e!1854393)))

(assert (= (and b!2942438 (is-Cons!34851 (t!234040 s!11993))) b!2942862))

(declare-fun b!2942864 () Bool)

(declare-fun e!1854394 () Bool)

(declare-fun tp!941630 () Bool)

(declare-fun tp!941634 () Bool)

(assert (=> b!2942864 (= e!1854394 (and tp!941630 tp!941634))))

(assert (=> b!2942435 (= tp!941581 e!1854394)))

(declare-fun b!2942863 () Bool)

(assert (=> b!2942863 (= e!1854394 tp_is_empty!15783)))

(declare-fun b!2942866 () Bool)

(declare-fun tp!941632 () Bool)

(declare-fun tp!941631 () Bool)

(assert (=> b!2942866 (= e!1854394 (and tp!941632 tp!941631))))

(declare-fun b!2942865 () Bool)

(declare-fun tp!941633 () Bool)

(assert (=> b!2942865 (= e!1854394 tp!941633)))

(assert (= (and b!2942435 (is-ElementMatch!9110 (regOne!18732 r!17423))) b!2942863))

(assert (= (and b!2942435 (is-Concat!14431 (regOne!18732 r!17423))) b!2942864))

(assert (= (and b!2942435 (is-Star!9110 (regOne!18732 r!17423))) b!2942865))

(assert (= (and b!2942435 (is-Union!9110 (regOne!18732 r!17423))) b!2942866))

(declare-fun b!2942868 () Bool)

(declare-fun e!1854395 () Bool)

(declare-fun tp!941635 () Bool)

(declare-fun tp!941639 () Bool)

(assert (=> b!2942868 (= e!1854395 (and tp!941635 tp!941639))))

(assert (=> b!2942435 (= tp!941578 e!1854395)))

(declare-fun b!2942867 () Bool)

(assert (=> b!2942867 (= e!1854395 tp_is_empty!15783)))

(declare-fun b!2942870 () Bool)

(declare-fun tp!941637 () Bool)

(declare-fun tp!941636 () Bool)

(assert (=> b!2942870 (= e!1854395 (and tp!941637 tp!941636))))

(declare-fun b!2942869 () Bool)

(declare-fun tp!941638 () Bool)

(assert (=> b!2942869 (= e!1854395 tp!941638)))

(assert (= (and b!2942435 (is-ElementMatch!9110 (regTwo!18732 r!17423))) b!2942867))

(assert (= (and b!2942435 (is-Concat!14431 (regTwo!18732 r!17423))) b!2942868))

(assert (= (and b!2942435 (is-Star!9110 (regTwo!18732 r!17423))) b!2942869))

(assert (= (and b!2942435 (is-Union!9110 (regTwo!18732 r!17423))) b!2942870))

(push 1)

(assert (not bm!193889))

(assert (not b!2942800))

(assert (not b!2942672))

(assert (not d!840317))

(assert (not d!840297))

(assert (not b!2942864))

(assert (not b!2942517))

(assert (not b!2942853))

(assert (not d!840307))

(assert (not bm!193836))

(assert (not b!2942829))

(assert (not b!2942856))

(assert (not b!2942815))

(assert (not d!840309))

(assert (not bm!193867))

(assert (not bm!193858))

(assert (not bm!193865))

(assert (not bm!193874))

(assert (not b!2942865))

(assert (not b!2942812))

(assert (not bm!193859))

(assert (not b!2942697))

(assert (not b!2942857))

(assert (not bm!193875))

(assert (not b!2942794))

(assert (not b!2942761))

(assert (not bm!193866))

(assert (not b!2942849))

(assert (not bm!193877))

(assert (not bm!193873))

(assert tp_is_empty!15783)

(assert (not b!2942822))

(assert (not b!2942808))

(assert (not b!2942820))

(assert (not d!840319))

(assert (not b!2942852))

(assert (not bm!193887))

(assert (not b!2942801))

(assert (not b!2942826))

(assert (not d!840323))

(assert (not b!2942811))

(assert (not bm!193869))

(assert (not b!2942806))

(assert (not bm!193868))

(assert (not bm!193883))

(assert (not b!2942862))

(assert (not bm!193860))

(assert (not bm!193884))

(assert (not bm!193878))

(assert (not b!2942647))

(assert (not b!2942753))

(assert (not b!2942851))

(assert (not b!2942717))

(assert (not bm!193872))

(assert (not b!2942649))

(assert (not bm!193861))

(assert (not d!840321))

(assert (not b!2942699))

(assert (not b!2942834))

(assert (not b!2942828))

(assert (not b!2942674))

(assert (not bm!193862))

(assert (not b!2942847))

(assert (not b!2942855))

(assert (not b!2942798))

(assert (not b!2942870))

(assert (not b!2942814))

(assert (not bm!193855))

(assert (not b!2942868))

(assert (not b!2942825))

(assert (not b!2942869))

(assert (not bm!193835))

(assert (not d!840325))

(assert (not b!2942797))

(assert (not b!2942848))

(assert (not bm!193888))

(assert (not b!2942866))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

