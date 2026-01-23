; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!293306 () Bool)

(assert start!293306)

(declare-fun b!3078422 () Bool)

(assert (=> b!3078422 true))

(assert (=> b!3078422 true))

(declare-fun lambda!114236 () Int)

(declare-fun lambda!114235 () Int)

(assert (=> b!3078422 (not (= lambda!114236 lambda!114235))))

(assert (=> b!3078422 true))

(assert (=> b!3078422 true))

(declare-fun b!3078410 () Bool)

(declare-fun e!1925878 () Bool)

(declare-fun e!1925876 () Bool)

(assert (=> b!3078410 (= e!1925878 e!1925876)))

(declare-fun res!1263153 () Bool)

(assert (=> b!3078410 (=> res!1263153 e!1925876)))

(declare-datatypes ((C!19246 0))(
  ( (C!19247 (val!11659 Int)) )
))
(declare-datatypes ((Regex!9530 0))(
  ( (ElementMatch!9530 (c!512374 C!19246)) (Concat!14851 (regOne!19572 Regex!9530) (regTwo!19572 Regex!9530)) (EmptyExpr!9530) (Star!9530 (reg!9859 Regex!9530)) (EmptyLang!9530) (Union!9530 (regOne!19573 Regex!9530) (regTwo!19573 Regex!9530)) )
))
(declare-fun lt!1052807 () Regex!9530)

(declare-fun isEmptyLang!581 (Regex!9530) Bool)

(assert (=> b!3078410 (= res!1263153 (isEmptyLang!581 lt!1052807))))

(declare-fun lt!1052810 () Regex!9530)

(declare-fun r!17423 () Regex!9530)

(declare-fun simplify!485 (Regex!9530) Regex!9530)

(assert (=> b!3078410 (= lt!1052810 (simplify!485 (regTwo!19572 r!17423)))))

(assert (=> b!3078410 (= lt!1052807 (simplify!485 (regOne!19572 r!17423)))))

(declare-fun b!3078411 () Bool)

(declare-fun e!1925877 () Bool)

(declare-fun tp!970027 () Bool)

(declare-fun tp!970026 () Bool)

(assert (=> b!3078411 (= e!1925877 (and tp!970027 tp!970026))))

(declare-fun b!3078412 () Bool)

(declare-fun tp!970024 () Bool)

(assert (=> b!3078412 (= e!1925877 tp!970024)))

(declare-fun b!3078413 () Bool)

(declare-fun res!1263151 () Bool)

(assert (=> b!3078413 (=> res!1263151 e!1925876)))

(assert (=> b!3078413 (= res!1263151 (isEmptyLang!581 lt!1052810))))

(declare-fun b!3078414 () Bool)

(declare-fun e!1925881 () Bool)

(declare-fun tp_is_empty!16623 () Bool)

(declare-fun tp!970023 () Bool)

(assert (=> b!3078414 (= e!1925881 (and tp_is_empty!16623 tp!970023))))

(declare-fun res!1263156 () Bool)

(declare-fun e!1925880 () Bool)

(assert (=> start!293306 (=> (not res!1263156) (not e!1925880))))

(declare-fun validRegex!4263 (Regex!9530) Bool)

(assert (=> start!293306 (= res!1263156 (validRegex!4263 r!17423))))

(assert (=> start!293306 e!1925880))

(assert (=> start!293306 e!1925877))

(assert (=> start!293306 e!1925881))

(declare-fun b!3078415 () Bool)

(declare-fun res!1263157 () Bool)

(assert (=> b!3078415 (=> res!1263157 e!1925876)))

(declare-fun isEmptyExpr!587 (Regex!9530) Bool)

(assert (=> b!3078415 (= res!1263157 (not (isEmptyExpr!587 lt!1052810)))))

(declare-fun b!3078416 () Bool)

(assert (=> b!3078416 (= e!1925877 tp_is_empty!16623)))

(declare-fun b!3078417 () Bool)

(declare-fun res!1263152 () Bool)

(assert (=> b!3078417 (=> res!1263152 e!1925876)))

(assert (=> b!3078417 (= res!1263152 (isEmptyExpr!587 lt!1052807))))

(declare-fun b!3078418 () Bool)

(assert (=> b!3078418 (= e!1925880 (not e!1925878))))

(declare-fun res!1263158 () Bool)

(assert (=> b!3078418 (=> res!1263158 e!1925878)))

(declare-fun lt!1052805 () Bool)

(assert (=> b!3078418 (= res!1263158 (or lt!1052805 (not (is-Concat!14851 r!17423))))))

(declare-datatypes ((List!35395 0))(
  ( (Nil!35271) (Cons!35271 (h!40691 C!19246) (t!234460 List!35395)) )
))
(declare-fun s!11993 () List!35395)

(declare-fun matchRSpec!1667 (Regex!9530 List!35395) Bool)

(assert (=> b!3078418 (= lt!1052805 (matchRSpec!1667 r!17423 s!11993))))

(declare-fun matchR!4412 (Regex!9530 List!35395) Bool)

(assert (=> b!3078418 (= lt!1052805 (matchR!4412 r!17423 s!11993))))

(declare-datatypes ((Unit!49499 0))(
  ( (Unit!49500) )
))
(declare-fun lt!1052803 () Unit!49499)

(declare-fun mainMatchTheorem!1667 (Regex!9530 List!35395) Unit!49499)

(assert (=> b!3078418 (= lt!1052803 (mainMatchTheorem!1667 r!17423 s!11993))))

(declare-fun b!3078419 () Bool)

(declare-fun tp!970022 () Bool)

(declare-fun tp!970025 () Bool)

(assert (=> b!3078419 (= e!1925877 (and tp!970022 tp!970025))))

(declare-fun b!3078420 () Bool)

(declare-fun res!1263154 () Bool)

(assert (=> b!3078420 (=> res!1263154 e!1925878)))

(declare-fun isEmpty!19604 (List!35395) Bool)

(assert (=> b!3078420 (= res!1263154 (isEmpty!19604 s!11993))))

(declare-fun b!3078421 () Bool)

(declare-fun e!1925879 () Bool)

(assert (=> b!3078421 (= e!1925876 e!1925879)))

(declare-fun res!1263155 () Bool)

(assert (=> b!3078421 (=> res!1263155 e!1925879)))

(declare-fun lt!1052802 () Bool)

(assert (=> b!3078421 (= res!1263155 (not lt!1052802))))

(assert (=> b!3078421 (= (matchR!4412 (regTwo!19572 r!17423) Nil!35271) (matchR!4412 lt!1052810 Nil!35271))))

(declare-fun lt!1052806 () Unit!49499)

(declare-fun lemmaSimplifySound!311 (Regex!9530 List!35395) Unit!49499)

(assert (=> b!3078421 (= lt!1052806 (lemmaSimplifySound!311 (regTwo!19572 r!17423) Nil!35271))))

(assert (=> b!3078421 (= lt!1052802 (matchR!4412 lt!1052807 s!11993))))

(assert (=> b!3078421 (= lt!1052802 (matchR!4412 (regOne!19572 r!17423) s!11993))))

(declare-fun lt!1052809 () Unit!49499)

(assert (=> b!3078421 (= lt!1052809 (lemmaSimplifySound!311 (regOne!19572 r!17423) s!11993))))

(assert (=> b!3078422 (= e!1925879 false)))

(declare-fun Exists!1793 (Int) Bool)

(assert (=> b!3078422 (= (Exists!1793 lambda!114235) (Exists!1793 lambda!114236))))

(declare-fun lt!1052801 () Unit!49499)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!559 (Regex!9530 Regex!9530 List!35395) Unit!49499)

(assert (=> b!3078422 (= lt!1052801 (lemmaExistCutMatchRandMatchRSpecEquivalent!559 (regOne!19572 r!17423) (regTwo!19572 r!17423) s!11993))))

(assert (=> b!3078422 (Exists!1793 lambda!114235)))

(declare-fun lt!1052808 () Unit!49499)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!989 (Regex!9530 Regex!9530 List!35395) Unit!49499)

(assert (=> b!3078422 (= lt!1052808 (lemmaFindConcatSeparationEquivalentToExists!989 (regOne!19572 r!17423) (regTwo!19572 r!17423) s!11993))))

(declare-datatypes ((tuple2!34186 0))(
  ( (tuple2!34187 (_1!20225 List!35395) (_2!20225 List!35395)) )
))
(declare-datatypes ((Option!6825 0))(
  ( (None!6824) (Some!6824 (v!34958 tuple2!34186)) )
))
(declare-fun isDefined!5376 (Option!6825) Bool)

(declare-fun findConcatSeparation!1219 (Regex!9530 Regex!9530 List!35395 List!35395 List!35395) Option!6825)

(assert (=> b!3078422 (isDefined!5376 (findConcatSeparation!1219 (regOne!19572 r!17423) (regTwo!19572 r!17423) Nil!35271 s!11993 s!11993))))

(declare-fun lt!1052804 () Unit!49499)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!39 (Regex!9530 Regex!9530 List!35395 List!35395 List!35395 List!35395 List!35395) Unit!49499)

(assert (=> b!3078422 (= lt!1052804 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!39 (regOne!19572 r!17423) (regTwo!19572 r!17423) s!11993 Nil!35271 s!11993 Nil!35271 s!11993))))

(assert (= (and start!293306 res!1263156) b!3078418))

(assert (= (and b!3078418 (not res!1263158)) b!3078420))

(assert (= (and b!3078420 (not res!1263154)) b!3078410))

(assert (= (and b!3078410 (not res!1263153)) b!3078413))

(assert (= (and b!3078413 (not res!1263151)) b!3078417))

(assert (= (and b!3078417 (not res!1263152)) b!3078415))

(assert (= (and b!3078415 (not res!1263157)) b!3078421))

(assert (= (and b!3078421 (not res!1263155)) b!3078422))

(assert (= (and start!293306 (is-ElementMatch!9530 r!17423)) b!3078416))

(assert (= (and start!293306 (is-Concat!14851 r!17423)) b!3078411))

(assert (= (and start!293306 (is-Star!9530 r!17423)) b!3078412))

(assert (= (and start!293306 (is-Union!9530 r!17423)) b!3078419))

(assert (= (and start!293306 (is-Cons!35271 s!11993)) b!3078414))

(declare-fun m!3389061 () Bool)

(assert (=> b!3078410 m!3389061))

(declare-fun m!3389063 () Bool)

(assert (=> b!3078410 m!3389063))

(declare-fun m!3389065 () Bool)

(assert (=> b!3078410 m!3389065))

(declare-fun m!3389067 () Bool)

(assert (=> b!3078422 m!3389067))

(declare-fun m!3389069 () Bool)

(assert (=> b!3078422 m!3389069))

(declare-fun m!3389071 () Bool)

(assert (=> b!3078422 m!3389071))

(assert (=> b!3078422 m!3389069))

(declare-fun m!3389073 () Bool)

(assert (=> b!3078422 m!3389073))

(declare-fun m!3389075 () Bool)

(assert (=> b!3078422 m!3389075))

(declare-fun m!3389077 () Bool)

(assert (=> b!3078422 m!3389077))

(declare-fun m!3389079 () Bool)

(assert (=> b!3078422 m!3389079))

(assert (=> b!3078422 m!3389077))

(declare-fun m!3389081 () Bool)

(assert (=> b!3078421 m!3389081))

(declare-fun m!3389083 () Bool)

(assert (=> b!3078421 m!3389083))

(declare-fun m!3389085 () Bool)

(assert (=> b!3078421 m!3389085))

(declare-fun m!3389087 () Bool)

(assert (=> b!3078421 m!3389087))

(declare-fun m!3389089 () Bool)

(assert (=> b!3078421 m!3389089))

(declare-fun m!3389091 () Bool)

(assert (=> b!3078421 m!3389091))

(declare-fun m!3389093 () Bool)

(assert (=> b!3078417 m!3389093))

(declare-fun m!3389095 () Bool)

(assert (=> b!3078413 m!3389095))

(declare-fun m!3389097 () Bool)

(assert (=> start!293306 m!3389097))

(declare-fun m!3389099 () Bool)

(assert (=> b!3078418 m!3389099))

(declare-fun m!3389101 () Bool)

(assert (=> b!3078418 m!3389101))

(declare-fun m!3389103 () Bool)

(assert (=> b!3078418 m!3389103))

(declare-fun m!3389105 () Bool)

(assert (=> b!3078420 m!3389105))

(declare-fun m!3389107 () Bool)

(assert (=> b!3078415 m!3389107))

(push 1)

(assert (not b!3078421))

(assert (not b!3078410))

(assert (not start!293306))

(assert tp_is_empty!16623)

(assert (not b!3078417))

(assert (not b!3078414))

(assert (not b!3078411))

(assert (not b!3078419))

(assert (not b!3078413))

(assert (not b!3078422))

(assert (not b!3078412))

(assert (not b!3078420))

(assert (not b!3078415))

(assert (not b!3078418))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!857241 () Bool)

(assert (=> d!857241 (= (isEmpty!19604 s!11993) (is-Nil!35271 s!11993))))

(assert (=> b!3078420 d!857241))

(declare-fun d!857243 () Bool)

(assert (=> d!857243 (= (isEmptyExpr!587 lt!1052810) (is-EmptyExpr!9530 lt!1052810))))

(assert (=> b!3078415 d!857243))

(declare-fun d!857245 () Bool)

(assert (=> d!857245 (= (isEmptyLang!581 lt!1052807) (is-EmptyLang!9530 lt!1052807))))

(assert (=> b!3078410 d!857245))

(declare-fun b!3078554 () Bool)

(declare-fun e!1925953 () Regex!9530)

(declare-fun e!1925950 () Regex!9530)

(assert (=> b!3078554 (= e!1925953 e!1925950)))

(declare-fun c!512410 () Bool)

(assert (=> b!3078554 (= c!512410 (is-ElementMatch!9530 (regTwo!19572 r!17423)))))

(declare-fun b!3078555 () Bool)

(declare-fun e!1925948 () Regex!9530)

(assert (=> b!3078555 (= e!1925948 EmptyLang!9530)))

(declare-fun b!3078556 () Bool)

(declare-fun e!1925961 () Bool)

(declare-fun call!214373 () Bool)

(assert (=> b!3078556 (= e!1925961 call!214373)))

(declare-fun b!3078557 () Bool)

(declare-fun e!1925955 () Regex!9530)

(declare-fun lt!1052854 () Regex!9530)

(assert (=> b!3078557 (= e!1925955 lt!1052854)))

(declare-fun b!3078558 () Bool)

(declare-fun c!512412 () Bool)

(declare-fun call!214367 () Bool)

(assert (=> b!3078558 (= c!512412 call!214367)))

(declare-fun e!1925949 () Regex!9530)

(declare-fun e!1925959 () Regex!9530)

(assert (=> b!3078558 (= e!1925949 e!1925959)))

(declare-fun b!3078559 () Bool)

(declare-fun e!1925952 () Regex!9530)

(assert (=> b!3078559 (= e!1925952 e!1925948)))

(declare-fun call!214370 () Regex!9530)

(assert (=> b!3078559 (= lt!1052854 call!214370)))

(declare-fun lt!1052858 () Regex!9530)

(declare-fun call!214369 () Regex!9530)

(assert (=> b!3078559 (= lt!1052858 call!214369)))

(declare-fun res!1263209 () Bool)

(declare-fun call!214372 () Bool)

(assert (=> b!3078559 (= res!1263209 call!214372)))

(declare-fun e!1925951 () Bool)

(assert (=> b!3078559 (=> res!1263209 e!1925951)))

(declare-fun c!512414 () Bool)

(assert (=> b!3078559 (= c!512414 e!1925951)))

(declare-fun b!3078560 () Bool)

(declare-fun e!1925958 () Regex!9530)

(assert (=> b!3078560 (= e!1925958 lt!1052858)))

(declare-fun bm!214362 () Bool)

(declare-fun call!214368 () Bool)

(assert (=> bm!214362 (= call!214367 call!214368)))

(declare-fun b!3078561 () Bool)

(declare-fun c!512416 () Bool)

(assert (=> b!3078561 (= c!512416 e!1925961)))

(declare-fun res!1263207 () Bool)

(assert (=> b!3078561 (=> res!1263207 e!1925961)))

(assert (=> b!3078561 (= res!1263207 call!214368)))

(declare-fun lt!1052855 () Regex!9530)

(declare-fun call!214371 () Regex!9530)

(assert (=> b!3078561 (= lt!1052855 call!214371)))

(declare-fun e!1925960 () Regex!9530)

(declare-fun e!1925957 () Regex!9530)

(assert (=> b!3078561 (= e!1925960 e!1925957)))

(declare-fun b!3078562 () Bool)

(declare-fun c!512415 () Bool)

(assert (=> b!3078562 (= c!512415 (is-Union!9530 (regTwo!19572 r!17423)))))

(assert (=> b!3078562 (= e!1925960 e!1925952)))

(declare-fun b!3078563 () Bool)

(assert (=> b!3078563 (= e!1925951 call!214367)))

(declare-fun d!857247 () Bool)

(declare-fun e!1925956 () Bool)

(assert (=> d!857247 e!1925956))

(declare-fun res!1263208 () Bool)

(assert (=> d!857247 (=> (not res!1263208) (not e!1925956))))

(declare-fun lt!1052857 () Regex!9530)

(assert (=> d!857247 (= res!1263208 (validRegex!4263 lt!1052857))))

(assert (=> d!857247 (= lt!1052857 e!1925953)))

(declare-fun c!512411 () Bool)

(assert (=> d!857247 (= c!512411 (is-EmptyLang!9530 (regTwo!19572 r!17423)))))

(assert (=> d!857247 (validRegex!4263 (regTwo!19572 r!17423))))

(assert (=> d!857247 (= (simplify!485 (regTwo!19572 r!17423)) lt!1052857)))

(declare-fun b!3078564 () Bool)

(declare-fun lt!1052856 () Regex!9530)

(declare-fun lt!1052853 () Regex!9530)

(assert (=> b!3078564 (= e!1925959 (Union!9530 lt!1052856 lt!1052853))))

(declare-fun bm!214363 () Bool)

(assert (=> bm!214363 (= call!214370 call!214371)))

(declare-fun c!512407 () Bool)

(declare-fun bm!214364 () Bool)

(assert (=> bm!214364 (= call!214371 (simplify!485 (ite c!512407 (reg!9859 (regTwo!19572 r!17423)) (ite c!512415 (regTwo!19573 (regTwo!19572 r!17423)) (regOne!19572 (regTwo!19572 r!17423))))))))

(declare-fun b!3078565 () Bool)

(assert (=> b!3078565 (= e!1925958 e!1925955)))

(declare-fun c!512408 () Bool)

(assert (=> b!3078565 (= c!512408 call!214373)))

(declare-fun bm!214365 () Bool)

(assert (=> bm!214365 (= call!214373 (isEmptyExpr!587 (ite c!512407 lt!1052855 lt!1052858)))))

(declare-fun b!3078566 () Bool)

(assert (=> b!3078566 (= e!1925950 (regTwo!19572 r!17423))))

(declare-fun bm!214366 () Bool)

(assert (=> bm!214366 (= call!214369 (simplify!485 (ite c!512415 (regOne!19573 (regTwo!19572 r!17423)) (regTwo!19572 (regTwo!19572 r!17423)))))))

(declare-fun b!3078567 () Bool)

(assert (=> b!3078567 (= e!1925952 e!1925949)))

(assert (=> b!3078567 (= lt!1052856 call!214369)))

(assert (=> b!3078567 (= lt!1052853 call!214370)))

(declare-fun c!512409 () Bool)

(assert (=> b!3078567 (= c!512409 call!214372)))

(declare-fun b!3078568 () Bool)

(assert (=> b!3078568 (= e!1925953 EmptyLang!9530)))

(declare-fun bm!214367 () Bool)

(assert (=> bm!214367 (= call!214372 (isEmptyLang!581 (ite c!512415 lt!1052856 lt!1052854)))))

(declare-fun b!3078569 () Bool)

(declare-fun e!1925954 () Regex!9530)

(assert (=> b!3078569 (= e!1925954 e!1925960)))

(assert (=> b!3078569 (= c!512407 (is-Star!9530 (regTwo!19572 r!17423)))))

(declare-fun b!3078570 () Bool)

(assert (=> b!3078570 (= e!1925954 EmptyExpr!9530)))

(declare-fun b!3078571 () Bool)

(assert (=> b!3078571 (= e!1925949 lt!1052853)))

(declare-fun b!3078572 () Bool)

(assert (=> b!3078572 (= e!1925957 (Star!9530 lt!1052855))))

(declare-fun b!3078573 () Bool)

(declare-fun nullable!3176 (Regex!9530) Bool)

(assert (=> b!3078573 (= e!1925956 (= (nullable!3176 lt!1052857) (nullable!3176 (regTwo!19572 r!17423))))))

(declare-fun b!3078574 () Bool)

(declare-fun c!512406 () Bool)

(assert (=> b!3078574 (= c!512406 (is-EmptyExpr!9530 (regTwo!19572 r!17423)))))

(assert (=> b!3078574 (= e!1925950 e!1925954)))

(declare-fun b!3078575 () Bool)

(declare-fun c!512413 () Bool)

(assert (=> b!3078575 (= c!512413 (isEmptyExpr!587 lt!1052854))))

(assert (=> b!3078575 (= e!1925948 e!1925958)))

(declare-fun b!3078576 () Bool)

(assert (=> b!3078576 (= e!1925959 lt!1052856)))

(declare-fun b!3078577 () Bool)

(assert (=> b!3078577 (= e!1925957 EmptyExpr!9530)))

(declare-fun bm!214368 () Bool)

(assert (=> bm!214368 (= call!214368 (isEmptyLang!581 (ite c!512407 lt!1052855 (ite c!512415 lt!1052853 lt!1052858))))))

(declare-fun b!3078578 () Bool)

(assert (=> b!3078578 (= e!1925955 (Concat!14851 lt!1052854 lt!1052858))))

(assert (= (and d!857247 c!512411) b!3078568))

(assert (= (and d!857247 (not c!512411)) b!3078554))

(assert (= (and b!3078554 c!512410) b!3078566))

(assert (= (and b!3078554 (not c!512410)) b!3078574))

(assert (= (and b!3078574 c!512406) b!3078570))

(assert (= (and b!3078574 (not c!512406)) b!3078569))

(assert (= (and b!3078569 c!512407) b!3078561))

(assert (= (and b!3078569 (not c!512407)) b!3078562))

(assert (= (and b!3078561 (not res!1263207)) b!3078556))

(assert (= (and b!3078561 c!512416) b!3078577))

(assert (= (and b!3078561 (not c!512416)) b!3078572))

(assert (= (and b!3078562 c!512415) b!3078567))

(assert (= (and b!3078562 (not c!512415)) b!3078559))

(assert (= (and b!3078567 c!512409) b!3078571))

(assert (= (and b!3078567 (not c!512409)) b!3078558))

(assert (= (and b!3078558 c!512412) b!3078576))

(assert (= (and b!3078558 (not c!512412)) b!3078564))

(assert (= (and b!3078559 (not res!1263209)) b!3078563))

(assert (= (and b!3078559 c!512414) b!3078555))

(assert (= (and b!3078559 (not c!512414)) b!3078575))

(assert (= (and b!3078575 c!512413) b!3078560))

(assert (= (and b!3078575 (not c!512413)) b!3078565))

(assert (= (and b!3078565 c!512408) b!3078557))

(assert (= (and b!3078565 (not c!512408)) b!3078578))

(assert (= (or b!3078567 b!3078559) bm!214366))

(assert (= (or b!3078567 b!3078559) bm!214363))

(assert (= (or b!3078567 b!3078559) bm!214367))

(assert (= (or b!3078558 b!3078563) bm!214362))

(assert (= (or b!3078556 b!3078565) bm!214365))

(assert (= (or b!3078561 bm!214363) bm!214364))

(assert (= (or b!3078561 bm!214362) bm!214368))

(assert (= (and d!857247 res!1263208) b!3078573))

(declare-fun m!3389157 () Bool)

(assert (=> bm!214367 m!3389157))

(declare-fun m!3389159 () Bool)

(assert (=> bm!214365 m!3389159))

(declare-fun m!3389161 () Bool)

(assert (=> bm!214366 m!3389161))

(declare-fun m!3389163 () Bool)

(assert (=> bm!214364 m!3389163))

(declare-fun m!3389165 () Bool)

(assert (=> d!857247 m!3389165))

(declare-fun m!3389167 () Bool)

(assert (=> d!857247 m!3389167))

(declare-fun m!3389169 () Bool)

(assert (=> b!3078575 m!3389169))

(declare-fun m!3389171 () Bool)

(assert (=> bm!214368 m!3389171))

(declare-fun m!3389173 () Bool)

(assert (=> b!3078573 m!3389173))

(declare-fun m!3389175 () Bool)

(assert (=> b!3078573 m!3389175))

(assert (=> b!3078410 d!857247))

(declare-fun b!3078585 () Bool)

(declare-fun e!1925969 () Regex!9530)

(declare-fun e!1925966 () Regex!9530)

(assert (=> b!3078585 (= e!1925969 e!1925966)))

(declare-fun c!512421 () Bool)

(assert (=> b!3078585 (= c!512421 (is-ElementMatch!9530 (regOne!19572 r!17423)))))

(declare-fun b!3078586 () Bool)

(declare-fun e!1925964 () Regex!9530)

(assert (=> b!3078586 (= e!1925964 EmptyLang!9530)))

(declare-fun b!3078587 () Bool)

(declare-fun e!1925977 () Bool)

(declare-fun call!214380 () Bool)

(assert (=> b!3078587 (= e!1925977 call!214380)))

(declare-fun b!3078588 () Bool)

(declare-fun e!1925971 () Regex!9530)

(declare-fun lt!1052860 () Regex!9530)

(assert (=> b!3078588 (= e!1925971 lt!1052860)))

(declare-fun b!3078589 () Bool)

(declare-fun c!512423 () Bool)

(declare-fun call!214374 () Bool)

(assert (=> b!3078589 (= c!512423 call!214374)))

(declare-fun e!1925965 () Regex!9530)

(declare-fun e!1925975 () Regex!9530)

(assert (=> b!3078589 (= e!1925965 e!1925975)))

(declare-fun b!3078590 () Bool)

(declare-fun e!1925968 () Regex!9530)

(assert (=> b!3078590 (= e!1925968 e!1925964)))

(declare-fun call!214377 () Regex!9530)

(assert (=> b!3078590 (= lt!1052860 call!214377)))

(declare-fun lt!1052864 () Regex!9530)

(declare-fun call!214376 () Regex!9530)

(assert (=> b!3078590 (= lt!1052864 call!214376)))

(declare-fun res!1263218 () Bool)

(declare-fun call!214379 () Bool)

(assert (=> b!3078590 (= res!1263218 call!214379)))

(declare-fun e!1925967 () Bool)

(assert (=> b!3078590 (=> res!1263218 e!1925967)))

(declare-fun c!512425 () Bool)

(assert (=> b!3078590 (= c!512425 e!1925967)))

(declare-fun b!3078591 () Bool)

(declare-fun e!1925974 () Regex!9530)

(assert (=> b!3078591 (= e!1925974 lt!1052864)))

(declare-fun bm!214369 () Bool)

(declare-fun call!214375 () Bool)

(assert (=> bm!214369 (= call!214374 call!214375)))

(declare-fun b!3078592 () Bool)

(declare-fun c!512427 () Bool)

(assert (=> b!3078592 (= c!512427 e!1925977)))

(declare-fun res!1263216 () Bool)

(assert (=> b!3078592 (=> res!1263216 e!1925977)))

(assert (=> b!3078592 (= res!1263216 call!214375)))

(declare-fun lt!1052861 () Regex!9530)

(declare-fun call!214378 () Regex!9530)

(assert (=> b!3078592 (= lt!1052861 call!214378)))

(declare-fun e!1925976 () Regex!9530)

(declare-fun e!1925973 () Regex!9530)

(assert (=> b!3078592 (= e!1925976 e!1925973)))

(declare-fun b!3078593 () Bool)

(declare-fun c!512426 () Bool)

(assert (=> b!3078593 (= c!512426 (is-Union!9530 (regOne!19572 r!17423)))))

(assert (=> b!3078593 (= e!1925976 e!1925968)))

(declare-fun b!3078594 () Bool)

(assert (=> b!3078594 (= e!1925967 call!214374)))

(declare-fun d!857251 () Bool)

(declare-fun e!1925972 () Bool)

(assert (=> d!857251 e!1925972))

(declare-fun res!1263217 () Bool)

(assert (=> d!857251 (=> (not res!1263217) (not e!1925972))))

(declare-fun lt!1052863 () Regex!9530)

(assert (=> d!857251 (= res!1263217 (validRegex!4263 lt!1052863))))

(assert (=> d!857251 (= lt!1052863 e!1925969)))

(declare-fun c!512422 () Bool)

(assert (=> d!857251 (= c!512422 (is-EmptyLang!9530 (regOne!19572 r!17423)))))

(assert (=> d!857251 (validRegex!4263 (regOne!19572 r!17423))))

(assert (=> d!857251 (= (simplify!485 (regOne!19572 r!17423)) lt!1052863)))

(declare-fun b!3078595 () Bool)

(declare-fun lt!1052862 () Regex!9530)

(declare-fun lt!1052859 () Regex!9530)

(assert (=> b!3078595 (= e!1925975 (Union!9530 lt!1052862 lt!1052859))))

(declare-fun bm!214370 () Bool)

(assert (=> bm!214370 (= call!214377 call!214378)))

(declare-fun bm!214371 () Bool)

(declare-fun c!512418 () Bool)

(assert (=> bm!214371 (= call!214378 (simplify!485 (ite c!512418 (reg!9859 (regOne!19572 r!17423)) (ite c!512426 (regTwo!19573 (regOne!19572 r!17423)) (regOne!19572 (regOne!19572 r!17423))))))))

(declare-fun b!3078596 () Bool)

(assert (=> b!3078596 (= e!1925974 e!1925971)))

(declare-fun c!512419 () Bool)

(assert (=> b!3078596 (= c!512419 call!214380)))

(declare-fun bm!214372 () Bool)

(assert (=> bm!214372 (= call!214380 (isEmptyExpr!587 (ite c!512418 lt!1052861 lt!1052864)))))

(declare-fun b!3078597 () Bool)

(assert (=> b!3078597 (= e!1925966 (regOne!19572 r!17423))))

(declare-fun bm!214373 () Bool)

(assert (=> bm!214373 (= call!214376 (simplify!485 (ite c!512426 (regOne!19573 (regOne!19572 r!17423)) (regTwo!19572 (regOne!19572 r!17423)))))))

(declare-fun b!3078598 () Bool)

(assert (=> b!3078598 (= e!1925968 e!1925965)))

(assert (=> b!3078598 (= lt!1052862 call!214376)))

(assert (=> b!3078598 (= lt!1052859 call!214377)))

(declare-fun c!512420 () Bool)

(assert (=> b!3078598 (= c!512420 call!214379)))

(declare-fun b!3078599 () Bool)

(assert (=> b!3078599 (= e!1925969 EmptyLang!9530)))

(declare-fun bm!214374 () Bool)

(assert (=> bm!214374 (= call!214379 (isEmptyLang!581 (ite c!512426 lt!1052862 lt!1052860)))))

(declare-fun b!3078600 () Bool)

(declare-fun e!1925970 () Regex!9530)

(assert (=> b!3078600 (= e!1925970 e!1925976)))

(assert (=> b!3078600 (= c!512418 (is-Star!9530 (regOne!19572 r!17423)))))

(declare-fun b!3078601 () Bool)

(assert (=> b!3078601 (= e!1925970 EmptyExpr!9530)))

(declare-fun b!3078602 () Bool)

(assert (=> b!3078602 (= e!1925965 lt!1052859)))

(declare-fun b!3078603 () Bool)

(assert (=> b!3078603 (= e!1925973 (Star!9530 lt!1052861))))

(declare-fun b!3078604 () Bool)

(assert (=> b!3078604 (= e!1925972 (= (nullable!3176 lt!1052863) (nullable!3176 (regOne!19572 r!17423))))))

(declare-fun b!3078605 () Bool)

(declare-fun c!512417 () Bool)

(assert (=> b!3078605 (= c!512417 (is-EmptyExpr!9530 (regOne!19572 r!17423)))))

(assert (=> b!3078605 (= e!1925966 e!1925970)))

(declare-fun b!3078606 () Bool)

(declare-fun c!512424 () Bool)

(assert (=> b!3078606 (= c!512424 (isEmptyExpr!587 lt!1052860))))

(assert (=> b!3078606 (= e!1925964 e!1925974)))

(declare-fun b!3078607 () Bool)

(assert (=> b!3078607 (= e!1925975 lt!1052862)))

(declare-fun b!3078608 () Bool)

(assert (=> b!3078608 (= e!1925973 EmptyExpr!9530)))

(declare-fun bm!214375 () Bool)

(assert (=> bm!214375 (= call!214375 (isEmptyLang!581 (ite c!512418 lt!1052861 (ite c!512426 lt!1052859 lt!1052864))))))

(declare-fun b!3078609 () Bool)

(assert (=> b!3078609 (= e!1925971 (Concat!14851 lt!1052860 lt!1052864))))

(assert (= (and d!857251 c!512422) b!3078599))

(assert (= (and d!857251 (not c!512422)) b!3078585))

(assert (= (and b!3078585 c!512421) b!3078597))

(assert (= (and b!3078585 (not c!512421)) b!3078605))

(assert (= (and b!3078605 c!512417) b!3078601))

(assert (= (and b!3078605 (not c!512417)) b!3078600))

(assert (= (and b!3078600 c!512418) b!3078592))

(assert (= (and b!3078600 (not c!512418)) b!3078593))

(assert (= (and b!3078592 (not res!1263216)) b!3078587))

(assert (= (and b!3078592 c!512427) b!3078608))

(assert (= (and b!3078592 (not c!512427)) b!3078603))

(assert (= (and b!3078593 c!512426) b!3078598))

(assert (= (and b!3078593 (not c!512426)) b!3078590))

(assert (= (and b!3078598 c!512420) b!3078602))

(assert (= (and b!3078598 (not c!512420)) b!3078589))

(assert (= (and b!3078589 c!512423) b!3078607))

(assert (= (and b!3078589 (not c!512423)) b!3078595))

(assert (= (and b!3078590 (not res!1263218)) b!3078594))

(assert (= (and b!3078590 c!512425) b!3078586))

(assert (= (and b!3078590 (not c!512425)) b!3078606))

(assert (= (and b!3078606 c!512424) b!3078591))

(assert (= (and b!3078606 (not c!512424)) b!3078596))

(assert (= (and b!3078596 c!512419) b!3078588))

(assert (= (and b!3078596 (not c!512419)) b!3078609))

(assert (= (or b!3078598 b!3078590) bm!214373))

(assert (= (or b!3078598 b!3078590) bm!214370))

(assert (= (or b!3078598 b!3078590) bm!214374))

(assert (= (or b!3078589 b!3078594) bm!214369))

(assert (= (or b!3078587 b!3078596) bm!214372))

(assert (= (or b!3078592 bm!214370) bm!214371))

(assert (= (or b!3078592 bm!214369) bm!214375))

(assert (= (and d!857251 res!1263217) b!3078604))

(declare-fun m!3389177 () Bool)

(assert (=> bm!214374 m!3389177))

(declare-fun m!3389179 () Bool)

(assert (=> bm!214372 m!3389179))

(declare-fun m!3389181 () Bool)

(assert (=> bm!214373 m!3389181))

(declare-fun m!3389183 () Bool)

(assert (=> bm!214371 m!3389183))

(declare-fun m!3389185 () Bool)

(assert (=> d!857251 m!3389185))

(declare-fun m!3389187 () Bool)

(assert (=> d!857251 m!3389187))

(declare-fun m!3389189 () Bool)

(assert (=> b!3078606 m!3389189))

(declare-fun m!3389191 () Bool)

(assert (=> bm!214375 m!3389191))

(declare-fun m!3389193 () Bool)

(assert (=> b!3078604 m!3389193))

(declare-fun m!3389195 () Bool)

(assert (=> b!3078604 m!3389195))

(assert (=> b!3078410 d!857251))

(declare-fun d!857253 () Bool)

(assert (=> d!857253 (= (matchR!4412 (regTwo!19572 r!17423) Nil!35271) (matchR!4412 (simplify!485 (regTwo!19572 r!17423)) Nil!35271))))

(declare-fun lt!1052867 () Unit!49499)

(declare-fun choose!18245 (Regex!9530 List!35395) Unit!49499)

(assert (=> d!857253 (= lt!1052867 (choose!18245 (regTwo!19572 r!17423) Nil!35271))))

(assert (=> d!857253 (validRegex!4263 (regTwo!19572 r!17423))))

(assert (=> d!857253 (= (lemmaSimplifySound!311 (regTwo!19572 r!17423) Nil!35271) lt!1052867)))

(declare-fun bs!532834 () Bool)

(assert (= bs!532834 d!857253))

(declare-fun m!3389197 () Bool)

(assert (=> bs!532834 m!3389197))

(assert (=> bs!532834 m!3389063))

(declare-fun m!3389199 () Bool)

(assert (=> bs!532834 m!3389199))

(assert (=> bs!532834 m!3389167))

(assert (=> bs!532834 m!3389089))

(assert (=> bs!532834 m!3389063))

(assert (=> b!3078421 d!857253))

(declare-fun d!857255 () Bool)

(assert (=> d!857255 (= (matchR!4412 (regOne!19572 r!17423) s!11993) (matchR!4412 (simplify!485 (regOne!19572 r!17423)) s!11993))))

(declare-fun lt!1052868 () Unit!49499)

(assert (=> d!857255 (= lt!1052868 (choose!18245 (regOne!19572 r!17423) s!11993))))

(assert (=> d!857255 (validRegex!4263 (regOne!19572 r!17423))))

(assert (=> d!857255 (= (lemmaSimplifySound!311 (regOne!19572 r!17423) s!11993) lt!1052868)))

(declare-fun bs!532835 () Bool)

(assert (= bs!532835 d!857255))

(declare-fun m!3389201 () Bool)

(assert (=> bs!532835 m!3389201))

(assert (=> bs!532835 m!3389065))

(declare-fun m!3389203 () Bool)

(assert (=> bs!532835 m!3389203))

(assert (=> bs!532835 m!3389187))

(assert (=> bs!532835 m!3389083))

(assert (=> bs!532835 m!3389065))

(assert (=> b!3078421 d!857255))

(declare-fun d!857257 () Bool)

(declare-fun e!1925994 () Bool)

(assert (=> d!857257 e!1925994))

(declare-fun c!512434 () Bool)

(assert (=> d!857257 (= c!512434 (is-EmptyExpr!9530 (regOne!19572 r!17423)))))

(declare-fun lt!1052871 () Bool)

(declare-fun e!1925997 () Bool)

(assert (=> d!857257 (= lt!1052871 e!1925997)))

(declare-fun c!512435 () Bool)

(assert (=> d!857257 (= c!512435 (isEmpty!19604 s!11993))))

(assert (=> d!857257 (validRegex!4263 (regOne!19572 r!17423))))

(assert (=> d!857257 (= (matchR!4412 (regOne!19572 r!17423) s!11993) lt!1052871)))

(declare-fun b!3078642 () Bool)

(declare-fun res!1263244 () Bool)

(declare-fun e!1925999 () Bool)

(assert (=> b!3078642 (=> res!1263244 e!1925999)))

(declare-fun tail!5057 (List!35395) List!35395)

(assert (=> b!3078642 (= res!1263244 (not (isEmpty!19604 (tail!5057 s!11993))))))

(declare-fun b!3078643 () Bool)

(declare-fun e!1925995 () Bool)

(assert (=> b!3078643 (= e!1925995 e!1925999)))

(declare-fun res!1263239 () Bool)

(assert (=> b!3078643 (=> res!1263239 e!1925999)))

(declare-fun call!214387 () Bool)

(assert (=> b!3078643 (= res!1263239 call!214387)))

(declare-fun b!3078644 () Bool)

(declare-fun e!1925998 () Bool)

(assert (=> b!3078644 (= e!1925998 (not lt!1052871))))

(declare-fun b!3078645 () Bool)

(assert (=> b!3078645 (= e!1925994 (= lt!1052871 call!214387))))

(declare-fun bm!214382 () Bool)

(assert (=> bm!214382 (= call!214387 (isEmpty!19604 s!11993))))

(declare-fun b!3078646 () Bool)

(assert (=> b!3078646 (= e!1925997 (nullable!3176 (regOne!19572 r!17423)))))

(declare-fun b!3078647 () Bool)

(declare-fun res!1263246 () Bool)

(declare-fun e!1926000 () Bool)

(assert (=> b!3078647 (=> res!1263246 e!1926000)))

(assert (=> b!3078647 (= res!1263246 (not (is-ElementMatch!9530 (regOne!19572 r!17423))))))

(assert (=> b!3078647 (= e!1925998 e!1926000)))

(declare-fun b!3078648 () Bool)

(declare-fun e!1925996 () Bool)

(declare-fun head!6831 (List!35395) C!19246)

(assert (=> b!3078648 (= e!1925996 (= (head!6831 s!11993) (c!512374 (regOne!19572 r!17423))))))

(declare-fun b!3078649 () Bool)

(assert (=> b!3078649 (= e!1926000 e!1925995)))

(declare-fun res!1263242 () Bool)

(assert (=> b!3078649 (=> (not res!1263242) (not e!1925995))))

(assert (=> b!3078649 (= res!1263242 (not lt!1052871))))

(declare-fun b!3078650 () Bool)

(assert (=> b!3078650 (= e!1925999 (not (= (head!6831 s!11993) (c!512374 (regOne!19572 r!17423)))))))

(declare-fun b!3078651 () Bool)

(declare-fun res!1263240 () Bool)

(assert (=> b!3078651 (=> (not res!1263240) (not e!1925996))))

(assert (=> b!3078651 (= res!1263240 (not call!214387))))

(declare-fun b!3078652 () Bool)

(declare-fun res!1263245 () Bool)

(assert (=> b!3078652 (=> res!1263245 e!1926000)))

(assert (=> b!3078652 (= res!1263245 e!1925996)))

(declare-fun res!1263243 () Bool)

(assert (=> b!3078652 (=> (not res!1263243) (not e!1925996))))

(assert (=> b!3078652 (= res!1263243 lt!1052871)))

(declare-fun b!3078653 () Bool)

(declare-fun derivativeStep!2772 (Regex!9530 C!19246) Regex!9530)

(assert (=> b!3078653 (= e!1925997 (matchR!4412 (derivativeStep!2772 (regOne!19572 r!17423) (head!6831 s!11993)) (tail!5057 s!11993)))))

(declare-fun b!3078654 () Bool)

(assert (=> b!3078654 (= e!1925994 e!1925998)))

(declare-fun c!512436 () Bool)

(assert (=> b!3078654 (= c!512436 (is-EmptyLang!9530 (regOne!19572 r!17423)))))

(declare-fun b!3078655 () Bool)

(declare-fun res!1263241 () Bool)

(assert (=> b!3078655 (=> (not res!1263241) (not e!1925996))))

(assert (=> b!3078655 (= res!1263241 (isEmpty!19604 (tail!5057 s!11993)))))

(assert (= (and d!857257 c!512435) b!3078646))

(assert (= (and d!857257 (not c!512435)) b!3078653))

(assert (= (and d!857257 c!512434) b!3078645))

(assert (= (and d!857257 (not c!512434)) b!3078654))

(assert (= (and b!3078654 c!512436) b!3078644))

(assert (= (and b!3078654 (not c!512436)) b!3078647))

(assert (= (and b!3078647 (not res!1263246)) b!3078652))

(assert (= (and b!3078652 res!1263243) b!3078651))

(assert (= (and b!3078651 res!1263240) b!3078655))

(assert (= (and b!3078655 res!1263241) b!3078648))

(assert (= (and b!3078652 (not res!1263245)) b!3078649))

(assert (= (and b!3078649 res!1263242) b!3078643))

(assert (= (and b!3078643 (not res!1263239)) b!3078642))

(assert (= (and b!3078642 (not res!1263244)) b!3078650))

(assert (= (or b!3078645 b!3078643 b!3078651) bm!214382))

(declare-fun m!3389205 () Bool)

(assert (=> b!3078642 m!3389205))

(assert (=> b!3078642 m!3389205))

(declare-fun m!3389207 () Bool)

(assert (=> b!3078642 m!3389207))

(declare-fun m!3389209 () Bool)

(assert (=> b!3078648 m!3389209))

(assert (=> b!3078655 m!3389205))

(assert (=> b!3078655 m!3389205))

(assert (=> b!3078655 m!3389207))

(assert (=> b!3078653 m!3389209))

(assert (=> b!3078653 m!3389209))

(declare-fun m!3389211 () Bool)

(assert (=> b!3078653 m!3389211))

(assert (=> b!3078653 m!3389205))

(assert (=> b!3078653 m!3389211))

(assert (=> b!3078653 m!3389205))

(declare-fun m!3389213 () Bool)

(assert (=> b!3078653 m!3389213))

(assert (=> d!857257 m!3389105))

(assert (=> d!857257 m!3389187))

(assert (=> b!3078646 m!3389195))

(assert (=> bm!214382 m!3389105))

(assert (=> b!3078650 m!3389209))

(assert (=> b!3078421 d!857257))

(declare-fun d!857259 () Bool)

(declare-fun e!1926008 () Bool)

(assert (=> d!857259 e!1926008))

(declare-fun c!512441 () Bool)

(assert (=> d!857259 (= c!512441 (is-EmptyExpr!9530 lt!1052807))))

(declare-fun lt!1052872 () Bool)

(declare-fun e!1926011 () Bool)

(assert (=> d!857259 (= lt!1052872 e!1926011)))

(declare-fun c!512442 () Bool)

(assert (=> d!857259 (= c!512442 (isEmpty!19604 s!11993))))

(assert (=> d!857259 (validRegex!4263 lt!1052807)))

(assert (=> d!857259 (= (matchR!4412 lt!1052807 s!11993) lt!1052872)))

(declare-fun b!3078667 () Bool)

(declare-fun res!1263255 () Bool)

(declare-fun e!1926013 () Bool)

(assert (=> b!3078667 (=> res!1263255 e!1926013)))

(assert (=> b!3078667 (= res!1263255 (not (isEmpty!19604 (tail!5057 s!11993))))))

(declare-fun b!3078668 () Bool)

(declare-fun e!1926009 () Bool)

(assert (=> b!3078668 (= e!1926009 e!1926013)))

(declare-fun res!1263250 () Bool)

(assert (=> b!3078668 (=> res!1263250 e!1926013)))

(declare-fun call!214390 () Bool)

(assert (=> b!3078668 (= res!1263250 call!214390)))

(declare-fun b!3078669 () Bool)

(declare-fun e!1926012 () Bool)

(assert (=> b!3078669 (= e!1926012 (not lt!1052872))))

(declare-fun b!3078670 () Bool)

(assert (=> b!3078670 (= e!1926008 (= lt!1052872 call!214390))))

(declare-fun bm!214385 () Bool)

(assert (=> bm!214385 (= call!214390 (isEmpty!19604 s!11993))))

(declare-fun b!3078671 () Bool)

(assert (=> b!3078671 (= e!1926011 (nullable!3176 lt!1052807))))

(declare-fun b!3078672 () Bool)

(declare-fun res!1263257 () Bool)

(declare-fun e!1926014 () Bool)

(assert (=> b!3078672 (=> res!1263257 e!1926014)))

(assert (=> b!3078672 (= res!1263257 (not (is-ElementMatch!9530 lt!1052807)))))

(assert (=> b!3078672 (= e!1926012 e!1926014)))

(declare-fun b!3078673 () Bool)

(declare-fun e!1926010 () Bool)

(assert (=> b!3078673 (= e!1926010 (= (head!6831 s!11993) (c!512374 lt!1052807)))))

(declare-fun b!3078674 () Bool)

(assert (=> b!3078674 (= e!1926014 e!1926009)))

(declare-fun res!1263253 () Bool)

(assert (=> b!3078674 (=> (not res!1263253) (not e!1926009))))

(assert (=> b!3078674 (= res!1263253 (not lt!1052872))))

(declare-fun b!3078675 () Bool)

(assert (=> b!3078675 (= e!1926013 (not (= (head!6831 s!11993) (c!512374 lt!1052807))))))

(declare-fun b!3078676 () Bool)

(declare-fun res!1263251 () Bool)

(assert (=> b!3078676 (=> (not res!1263251) (not e!1926010))))

(assert (=> b!3078676 (= res!1263251 (not call!214390))))

(declare-fun b!3078677 () Bool)

(declare-fun res!1263256 () Bool)

(assert (=> b!3078677 (=> res!1263256 e!1926014)))

(assert (=> b!3078677 (= res!1263256 e!1926010)))

(declare-fun res!1263254 () Bool)

(assert (=> b!3078677 (=> (not res!1263254) (not e!1926010))))

(assert (=> b!3078677 (= res!1263254 lt!1052872)))

(declare-fun b!3078678 () Bool)

(assert (=> b!3078678 (= e!1926011 (matchR!4412 (derivativeStep!2772 lt!1052807 (head!6831 s!11993)) (tail!5057 s!11993)))))

(declare-fun b!3078679 () Bool)

(assert (=> b!3078679 (= e!1926008 e!1926012)))

(declare-fun c!512443 () Bool)

(assert (=> b!3078679 (= c!512443 (is-EmptyLang!9530 lt!1052807))))

(declare-fun b!3078680 () Bool)

(declare-fun res!1263252 () Bool)

(assert (=> b!3078680 (=> (not res!1263252) (not e!1926010))))

(assert (=> b!3078680 (= res!1263252 (isEmpty!19604 (tail!5057 s!11993)))))

(assert (= (and d!857259 c!512442) b!3078671))

(assert (= (and d!857259 (not c!512442)) b!3078678))

(assert (= (and d!857259 c!512441) b!3078670))

(assert (= (and d!857259 (not c!512441)) b!3078679))

(assert (= (and b!3078679 c!512443) b!3078669))

(assert (= (and b!3078679 (not c!512443)) b!3078672))

(assert (= (and b!3078672 (not res!1263257)) b!3078677))

(assert (= (and b!3078677 res!1263254) b!3078676))

(assert (= (and b!3078676 res!1263251) b!3078680))

(assert (= (and b!3078680 res!1263252) b!3078673))

(assert (= (and b!3078677 (not res!1263256)) b!3078674))

(assert (= (and b!3078674 res!1263253) b!3078668))

(assert (= (and b!3078668 (not res!1263250)) b!3078667))

(assert (= (and b!3078667 (not res!1263255)) b!3078675))

(assert (= (or b!3078670 b!3078668 b!3078676) bm!214385))

(assert (=> b!3078667 m!3389205))

(assert (=> b!3078667 m!3389205))

(assert (=> b!3078667 m!3389207))

(assert (=> b!3078673 m!3389209))

(assert (=> b!3078680 m!3389205))

(assert (=> b!3078680 m!3389205))

(assert (=> b!3078680 m!3389207))

(assert (=> b!3078678 m!3389209))

(assert (=> b!3078678 m!3389209))

(declare-fun m!3389215 () Bool)

(assert (=> b!3078678 m!3389215))

(assert (=> b!3078678 m!3389205))

(assert (=> b!3078678 m!3389215))

(assert (=> b!3078678 m!3389205))

(declare-fun m!3389217 () Bool)

(assert (=> b!3078678 m!3389217))

(assert (=> d!857259 m!3389105))

(declare-fun m!3389219 () Bool)

(assert (=> d!857259 m!3389219))

(declare-fun m!3389221 () Bool)

(assert (=> b!3078671 m!3389221))

(assert (=> bm!214385 m!3389105))

(assert (=> b!3078675 m!3389209))

(assert (=> b!3078421 d!857259))

(declare-fun d!857261 () Bool)

(declare-fun e!1926015 () Bool)

(assert (=> d!857261 e!1926015))

(declare-fun c!512444 () Bool)

(assert (=> d!857261 (= c!512444 (is-EmptyExpr!9530 lt!1052810))))

(declare-fun lt!1052873 () Bool)

(declare-fun e!1926018 () Bool)

(assert (=> d!857261 (= lt!1052873 e!1926018)))

(declare-fun c!512445 () Bool)

(assert (=> d!857261 (= c!512445 (isEmpty!19604 Nil!35271))))

(assert (=> d!857261 (validRegex!4263 lt!1052810)))

(assert (=> d!857261 (= (matchR!4412 lt!1052810 Nil!35271) lt!1052873)))

(declare-fun b!3078681 () Bool)

(declare-fun res!1263263 () Bool)

(declare-fun e!1926020 () Bool)

(assert (=> b!3078681 (=> res!1263263 e!1926020)))

(assert (=> b!3078681 (= res!1263263 (not (isEmpty!19604 (tail!5057 Nil!35271))))))

(declare-fun b!3078682 () Bool)

(declare-fun e!1926016 () Bool)

(assert (=> b!3078682 (= e!1926016 e!1926020)))

(declare-fun res!1263258 () Bool)

(assert (=> b!3078682 (=> res!1263258 e!1926020)))

(declare-fun call!214391 () Bool)

(assert (=> b!3078682 (= res!1263258 call!214391)))

(declare-fun b!3078683 () Bool)

(declare-fun e!1926019 () Bool)

(assert (=> b!3078683 (= e!1926019 (not lt!1052873))))

(declare-fun b!3078684 () Bool)

(assert (=> b!3078684 (= e!1926015 (= lt!1052873 call!214391))))

(declare-fun bm!214386 () Bool)

(assert (=> bm!214386 (= call!214391 (isEmpty!19604 Nil!35271))))

(declare-fun b!3078685 () Bool)

(assert (=> b!3078685 (= e!1926018 (nullable!3176 lt!1052810))))

(declare-fun b!3078686 () Bool)

(declare-fun res!1263265 () Bool)

(declare-fun e!1926021 () Bool)

(assert (=> b!3078686 (=> res!1263265 e!1926021)))

(assert (=> b!3078686 (= res!1263265 (not (is-ElementMatch!9530 lt!1052810)))))

(assert (=> b!3078686 (= e!1926019 e!1926021)))

(declare-fun b!3078687 () Bool)

(declare-fun e!1926017 () Bool)

(assert (=> b!3078687 (= e!1926017 (= (head!6831 Nil!35271) (c!512374 lt!1052810)))))

(declare-fun b!3078688 () Bool)

(assert (=> b!3078688 (= e!1926021 e!1926016)))

(declare-fun res!1263261 () Bool)

(assert (=> b!3078688 (=> (not res!1263261) (not e!1926016))))

(assert (=> b!3078688 (= res!1263261 (not lt!1052873))))

(declare-fun b!3078689 () Bool)

(assert (=> b!3078689 (= e!1926020 (not (= (head!6831 Nil!35271) (c!512374 lt!1052810))))))

(declare-fun b!3078690 () Bool)

(declare-fun res!1263259 () Bool)

(assert (=> b!3078690 (=> (not res!1263259) (not e!1926017))))

(assert (=> b!3078690 (= res!1263259 (not call!214391))))

(declare-fun b!3078691 () Bool)

(declare-fun res!1263264 () Bool)

(assert (=> b!3078691 (=> res!1263264 e!1926021)))

(assert (=> b!3078691 (= res!1263264 e!1926017)))

(declare-fun res!1263262 () Bool)

(assert (=> b!3078691 (=> (not res!1263262) (not e!1926017))))

(assert (=> b!3078691 (= res!1263262 lt!1052873)))

(declare-fun b!3078692 () Bool)

(assert (=> b!3078692 (= e!1926018 (matchR!4412 (derivativeStep!2772 lt!1052810 (head!6831 Nil!35271)) (tail!5057 Nil!35271)))))

(declare-fun b!3078693 () Bool)

(assert (=> b!3078693 (= e!1926015 e!1926019)))

(declare-fun c!512446 () Bool)

(assert (=> b!3078693 (= c!512446 (is-EmptyLang!9530 lt!1052810))))

(declare-fun b!3078694 () Bool)

(declare-fun res!1263260 () Bool)

(assert (=> b!3078694 (=> (not res!1263260) (not e!1926017))))

(assert (=> b!3078694 (= res!1263260 (isEmpty!19604 (tail!5057 Nil!35271)))))

(assert (= (and d!857261 c!512445) b!3078685))

(assert (= (and d!857261 (not c!512445)) b!3078692))

(assert (= (and d!857261 c!512444) b!3078684))

(assert (= (and d!857261 (not c!512444)) b!3078693))

(assert (= (and b!3078693 c!512446) b!3078683))

(assert (= (and b!3078693 (not c!512446)) b!3078686))

(assert (= (and b!3078686 (not res!1263265)) b!3078691))

(assert (= (and b!3078691 res!1263262) b!3078690))

(assert (= (and b!3078690 res!1263259) b!3078694))

(assert (= (and b!3078694 res!1263260) b!3078687))

(assert (= (and b!3078691 (not res!1263264)) b!3078688))

(assert (= (and b!3078688 res!1263261) b!3078682))

(assert (= (and b!3078682 (not res!1263258)) b!3078681))

(assert (= (and b!3078681 (not res!1263263)) b!3078689))

(assert (= (or b!3078684 b!3078682 b!3078690) bm!214386))

(declare-fun m!3389223 () Bool)

(assert (=> b!3078681 m!3389223))

(assert (=> b!3078681 m!3389223))

(declare-fun m!3389225 () Bool)

(assert (=> b!3078681 m!3389225))

(declare-fun m!3389227 () Bool)

(assert (=> b!3078687 m!3389227))

(assert (=> b!3078694 m!3389223))

(assert (=> b!3078694 m!3389223))

(assert (=> b!3078694 m!3389225))

(assert (=> b!3078692 m!3389227))

(assert (=> b!3078692 m!3389227))

(declare-fun m!3389229 () Bool)

(assert (=> b!3078692 m!3389229))

(assert (=> b!3078692 m!3389223))

(assert (=> b!3078692 m!3389229))

(assert (=> b!3078692 m!3389223))

(declare-fun m!3389231 () Bool)

(assert (=> b!3078692 m!3389231))

(declare-fun m!3389233 () Bool)

(assert (=> d!857261 m!3389233))

(declare-fun m!3389235 () Bool)

(assert (=> d!857261 m!3389235))

(declare-fun m!3389237 () Bool)

(assert (=> b!3078685 m!3389237))

(assert (=> bm!214386 m!3389233))

(assert (=> b!3078689 m!3389227))

(assert (=> b!3078421 d!857261))

(declare-fun d!857263 () Bool)

(declare-fun e!1926022 () Bool)

(assert (=> d!857263 e!1926022))

(declare-fun c!512447 () Bool)

(assert (=> d!857263 (= c!512447 (is-EmptyExpr!9530 (regTwo!19572 r!17423)))))

(declare-fun lt!1052874 () Bool)

(declare-fun e!1926025 () Bool)

(assert (=> d!857263 (= lt!1052874 e!1926025)))

(declare-fun c!512448 () Bool)

(assert (=> d!857263 (= c!512448 (isEmpty!19604 Nil!35271))))

(assert (=> d!857263 (validRegex!4263 (regTwo!19572 r!17423))))

(assert (=> d!857263 (= (matchR!4412 (regTwo!19572 r!17423) Nil!35271) lt!1052874)))

(declare-fun b!3078695 () Bool)

(declare-fun res!1263271 () Bool)

(declare-fun e!1926027 () Bool)

(assert (=> b!3078695 (=> res!1263271 e!1926027)))

(assert (=> b!3078695 (= res!1263271 (not (isEmpty!19604 (tail!5057 Nil!35271))))))

(declare-fun b!3078696 () Bool)

(declare-fun e!1926023 () Bool)

(assert (=> b!3078696 (= e!1926023 e!1926027)))

(declare-fun res!1263266 () Bool)

(assert (=> b!3078696 (=> res!1263266 e!1926027)))

(declare-fun call!214392 () Bool)

(assert (=> b!3078696 (= res!1263266 call!214392)))

(declare-fun b!3078697 () Bool)

(declare-fun e!1926026 () Bool)

(assert (=> b!3078697 (= e!1926026 (not lt!1052874))))

(declare-fun b!3078698 () Bool)

(assert (=> b!3078698 (= e!1926022 (= lt!1052874 call!214392))))

(declare-fun bm!214387 () Bool)

(assert (=> bm!214387 (= call!214392 (isEmpty!19604 Nil!35271))))

(declare-fun b!3078699 () Bool)

(assert (=> b!3078699 (= e!1926025 (nullable!3176 (regTwo!19572 r!17423)))))

(declare-fun b!3078700 () Bool)

(declare-fun res!1263273 () Bool)

(declare-fun e!1926028 () Bool)

(assert (=> b!3078700 (=> res!1263273 e!1926028)))

(assert (=> b!3078700 (= res!1263273 (not (is-ElementMatch!9530 (regTwo!19572 r!17423))))))

(assert (=> b!3078700 (= e!1926026 e!1926028)))

(declare-fun b!3078701 () Bool)

(declare-fun e!1926024 () Bool)

(assert (=> b!3078701 (= e!1926024 (= (head!6831 Nil!35271) (c!512374 (regTwo!19572 r!17423))))))

(declare-fun b!3078702 () Bool)

(assert (=> b!3078702 (= e!1926028 e!1926023)))

(declare-fun res!1263269 () Bool)

(assert (=> b!3078702 (=> (not res!1263269) (not e!1926023))))

(assert (=> b!3078702 (= res!1263269 (not lt!1052874))))

(declare-fun b!3078703 () Bool)

(assert (=> b!3078703 (= e!1926027 (not (= (head!6831 Nil!35271) (c!512374 (regTwo!19572 r!17423)))))))

(declare-fun b!3078704 () Bool)

(declare-fun res!1263267 () Bool)

(assert (=> b!3078704 (=> (not res!1263267) (not e!1926024))))

(assert (=> b!3078704 (= res!1263267 (not call!214392))))

(declare-fun b!3078705 () Bool)

(declare-fun res!1263272 () Bool)

(assert (=> b!3078705 (=> res!1263272 e!1926028)))

(assert (=> b!3078705 (= res!1263272 e!1926024)))

(declare-fun res!1263270 () Bool)

(assert (=> b!3078705 (=> (not res!1263270) (not e!1926024))))

(assert (=> b!3078705 (= res!1263270 lt!1052874)))

(declare-fun b!3078706 () Bool)

(assert (=> b!3078706 (= e!1926025 (matchR!4412 (derivativeStep!2772 (regTwo!19572 r!17423) (head!6831 Nil!35271)) (tail!5057 Nil!35271)))))

(declare-fun b!3078707 () Bool)

(assert (=> b!3078707 (= e!1926022 e!1926026)))

(declare-fun c!512449 () Bool)

(assert (=> b!3078707 (= c!512449 (is-EmptyLang!9530 (regTwo!19572 r!17423)))))

(declare-fun b!3078708 () Bool)

(declare-fun res!1263268 () Bool)

(assert (=> b!3078708 (=> (not res!1263268) (not e!1926024))))

(assert (=> b!3078708 (= res!1263268 (isEmpty!19604 (tail!5057 Nil!35271)))))

(assert (= (and d!857263 c!512448) b!3078699))

(assert (= (and d!857263 (not c!512448)) b!3078706))

(assert (= (and d!857263 c!512447) b!3078698))

(assert (= (and d!857263 (not c!512447)) b!3078707))

(assert (= (and b!3078707 c!512449) b!3078697))

(assert (= (and b!3078707 (not c!512449)) b!3078700))

(assert (= (and b!3078700 (not res!1263273)) b!3078705))

(assert (= (and b!3078705 res!1263270) b!3078704))

(assert (= (and b!3078704 res!1263267) b!3078708))

(assert (= (and b!3078708 res!1263268) b!3078701))

(assert (= (and b!3078705 (not res!1263272)) b!3078702))

(assert (= (and b!3078702 res!1263269) b!3078696))

(assert (= (and b!3078696 (not res!1263266)) b!3078695))

(assert (= (and b!3078695 (not res!1263271)) b!3078703))

(assert (= (or b!3078698 b!3078696 b!3078704) bm!214387))

(assert (=> b!3078695 m!3389223))

(assert (=> b!3078695 m!3389223))

(assert (=> b!3078695 m!3389225))

(assert (=> b!3078701 m!3389227))

(assert (=> b!3078708 m!3389223))

(assert (=> b!3078708 m!3389223))

(assert (=> b!3078708 m!3389225))

(assert (=> b!3078706 m!3389227))

(assert (=> b!3078706 m!3389227))

(declare-fun m!3389239 () Bool)

(assert (=> b!3078706 m!3389239))

(assert (=> b!3078706 m!3389223))

(assert (=> b!3078706 m!3389239))

(assert (=> b!3078706 m!3389223))

(declare-fun m!3389241 () Bool)

(assert (=> b!3078706 m!3389241))

(assert (=> d!857263 m!3389233))

(assert (=> d!857263 m!3389167))

(assert (=> b!3078699 m!3389175))

(assert (=> bm!214387 m!3389233))

(assert (=> b!3078703 m!3389227))

(assert (=> b!3078421 d!857263))

(declare-fun d!857265 () Bool)

(assert (=> d!857265 (isDefined!5376 (findConcatSeparation!1219 (regOne!19572 r!17423) (regTwo!19572 r!17423) Nil!35271 s!11993 s!11993))))

(declare-fun lt!1052877 () Unit!49499)

(declare-fun choose!18246 (Regex!9530 Regex!9530 List!35395 List!35395 List!35395 List!35395 List!35395) Unit!49499)

(assert (=> d!857265 (= lt!1052877 (choose!18246 (regOne!19572 r!17423) (regTwo!19572 r!17423) s!11993 Nil!35271 s!11993 Nil!35271 s!11993))))

(assert (=> d!857265 (validRegex!4263 (regOne!19572 r!17423))))

(assert (=> d!857265 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!39 (regOne!19572 r!17423) (regTwo!19572 r!17423) s!11993 Nil!35271 s!11993 Nil!35271 s!11993) lt!1052877)))

(declare-fun bs!532839 () Bool)

(assert (= bs!532839 d!857265))

(assert (=> bs!532839 m!3389069))

(assert (=> bs!532839 m!3389069))

(assert (=> bs!532839 m!3389071))

(declare-fun m!3389249 () Bool)

(assert (=> bs!532839 m!3389249))

(assert (=> bs!532839 m!3389187))

(assert (=> b!3078422 d!857265))

(declare-fun bs!532840 () Bool)

(declare-fun d!857269 () Bool)

(assert (= bs!532840 (and d!857269 b!3078422)))

(declare-fun lambda!114255 () Int)

(assert (=> bs!532840 (= lambda!114255 lambda!114235)))

(assert (=> bs!532840 (not (= lambda!114255 lambda!114236))))

(assert (=> d!857269 true))

(assert (=> d!857269 true))

(assert (=> d!857269 true))

(declare-fun lambda!114256 () Int)

(assert (=> bs!532840 (not (= lambda!114256 lambda!114235))))

(assert (=> bs!532840 (= lambda!114256 lambda!114236)))

(declare-fun bs!532841 () Bool)

(assert (= bs!532841 d!857269))

(assert (=> bs!532841 (not (= lambda!114256 lambda!114255))))

(assert (=> d!857269 true))

(assert (=> d!857269 true))

(assert (=> d!857269 true))

(assert (=> d!857269 (= (Exists!1793 lambda!114255) (Exists!1793 lambda!114256))))

(declare-fun lt!1052880 () Unit!49499)

(declare-fun choose!18247 (Regex!9530 Regex!9530 List!35395) Unit!49499)

(assert (=> d!857269 (= lt!1052880 (choose!18247 (regOne!19572 r!17423) (regTwo!19572 r!17423) s!11993))))

(assert (=> d!857269 (validRegex!4263 (regOne!19572 r!17423))))

(assert (=> d!857269 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!559 (regOne!19572 r!17423) (regTwo!19572 r!17423) s!11993) lt!1052880)))

(declare-fun m!3389251 () Bool)

(assert (=> bs!532841 m!3389251))

(declare-fun m!3389253 () Bool)

(assert (=> bs!532841 m!3389253))

(declare-fun m!3389255 () Bool)

(assert (=> bs!532841 m!3389255))

(assert (=> bs!532841 m!3389187))

(assert (=> b!3078422 d!857269))

(declare-fun d!857271 () Bool)

(declare-fun choose!18248 (Int) Bool)

(assert (=> d!857271 (= (Exists!1793 lambda!114236) (choose!18248 lambda!114236))))

(declare-fun bs!532842 () Bool)

(assert (= bs!532842 d!857271))

(declare-fun m!3389257 () Bool)

(assert (=> bs!532842 m!3389257))

(assert (=> b!3078422 d!857271))

(declare-fun d!857273 () Bool)

(assert (=> d!857273 (= (Exists!1793 lambda!114235) (choose!18248 lambda!114235))))

(declare-fun bs!532843 () Bool)

(assert (= bs!532843 d!857273))

(declare-fun m!3389259 () Bool)

(assert (=> bs!532843 m!3389259))

(assert (=> b!3078422 d!857273))

(declare-fun d!857275 () Bool)

(declare-fun isEmpty!19606 (Option!6825) Bool)

(assert (=> d!857275 (= (isDefined!5376 (findConcatSeparation!1219 (regOne!19572 r!17423) (regTwo!19572 r!17423) Nil!35271 s!11993 s!11993)) (not (isEmpty!19606 (findConcatSeparation!1219 (regOne!19572 r!17423) (regTwo!19572 r!17423) Nil!35271 s!11993 s!11993))))))

(declare-fun bs!532844 () Bool)

(assert (= bs!532844 d!857275))

(assert (=> bs!532844 m!3389069))

(declare-fun m!3389261 () Bool)

(assert (=> bs!532844 m!3389261))

(assert (=> b!3078422 d!857275))

(declare-fun b!3078777 () Bool)

(declare-fun e!1926067 () Bool)

(assert (=> b!3078777 (= e!1926067 (matchR!4412 (regTwo!19572 r!17423) s!11993))))

(declare-fun b!3078778 () Bool)

(declare-fun e!1926065 () Option!6825)

(assert (=> b!3078778 (= e!1926065 None!6824)))

(declare-fun b!3078779 () Bool)

(declare-fun e!1926068 () Bool)

(declare-fun lt!1052891 () Option!6825)

(assert (=> b!3078779 (= e!1926068 (not (isDefined!5376 lt!1052891)))))

(declare-fun b!3078780 () Bool)

(declare-fun lt!1052890 () Unit!49499)

(declare-fun lt!1052892 () Unit!49499)

(assert (=> b!3078780 (= lt!1052890 lt!1052892)))

(declare-fun ++!8481 (List!35395 List!35395) List!35395)

(assert (=> b!3078780 (= (++!8481 (++!8481 Nil!35271 (Cons!35271 (h!40691 s!11993) Nil!35271)) (t!234460 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1076 (List!35395 C!19246 List!35395 List!35395) Unit!49499)

(assert (=> b!3078780 (= lt!1052892 (lemmaMoveElementToOtherListKeepsConcatEq!1076 Nil!35271 (h!40691 s!11993) (t!234460 s!11993) s!11993))))

(assert (=> b!3078780 (= e!1926065 (findConcatSeparation!1219 (regOne!19572 r!17423) (regTwo!19572 r!17423) (++!8481 Nil!35271 (Cons!35271 (h!40691 s!11993) Nil!35271)) (t!234460 s!11993) s!11993))))

(declare-fun b!3078782 () Bool)

(declare-fun res!1263317 () Bool)

(declare-fun e!1926066 () Bool)

(assert (=> b!3078782 (=> (not res!1263317) (not e!1926066))))

(declare-fun get!11057 (Option!6825) tuple2!34186)

(assert (=> b!3078782 (= res!1263317 (matchR!4412 (regTwo!19572 r!17423) (_2!20225 (get!11057 lt!1052891))))))

(declare-fun b!3078783 () Bool)

(declare-fun res!1263318 () Bool)

(assert (=> b!3078783 (=> (not res!1263318) (not e!1926066))))

(assert (=> b!3078783 (= res!1263318 (matchR!4412 (regOne!19572 r!17423) (_1!20225 (get!11057 lt!1052891))))))

(declare-fun b!3078784 () Bool)

(declare-fun e!1926064 () Option!6825)

(assert (=> b!3078784 (= e!1926064 (Some!6824 (tuple2!34187 Nil!35271 s!11993)))))

(declare-fun b!3078785 () Bool)

(assert (=> b!3078785 (= e!1926064 e!1926065)))

(declare-fun c!512463 () Bool)

(assert (=> b!3078785 (= c!512463 (is-Nil!35271 s!11993))))

(declare-fun d!857277 () Bool)

(assert (=> d!857277 e!1926068))

(declare-fun res!1263319 () Bool)

(assert (=> d!857277 (=> res!1263319 e!1926068)))

(assert (=> d!857277 (= res!1263319 e!1926066)))

(declare-fun res!1263316 () Bool)

(assert (=> d!857277 (=> (not res!1263316) (not e!1926066))))

(assert (=> d!857277 (= res!1263316 (isDefined!5376 lt!1052891))))

(assert (=> d!857277 (= lt!1052891 e!1926064)))

(declare-fun c!512464 () Bool)

(assert (=> d!857277 (= c!512464 e!1926067)))

(declare-fun res!1263320 () Bool)

(assert (=> d!857277 (=> (not res!1263320) (not e!1926067))))

(assert (=> d!857277 (= res!1263320 (matchR!4412 (regOne!19572 r!17423) Nil!35271))))

(assert (=> d!857277 (validRegex!4263 (regOne!19572 r!17423))))

(assert (=> d!857277 (= (findConcatSeparation!1219 (regOne!19572 r!17423) (regTwo!19572 r!17423) Nil!35271 s!11993 s!11993) lt!1052891)))

(declare-fun b!3078781 () Bool)

(assert (=> b!3078781 (= e!1926066 (= (++!8481 (_1!20225 (get!11057 lt!1052891)) (_2!20225 (get!11057 lt!1052891))) s!11993))))

(assert (= (and d!857277 res!1263320) b!3078777))

(assert (= (and d!857277 c!512464) b!3078784))

(assert (= (and d!857277 (not c!512464)) b!3078785))

(assert (= (and b!3078785 c!512463) b!3078778))

(assert (= (and b!3078785 (not c!512463)) b!3078780))

(assert (= (and d!857277 res!1263316) b!3078783))

(assert (= (and b!3078783 res!1263318) b!3078782))

(assert (= (and b!3078782 res!1263317) b!3078781))

(assert (= (and d!857277 (not res!1263319)) b!3078779))

(declare-fun m!3389275 () Bool)

(assert (=> b!3078782 m!3389275))

(declare-fun m!3389277 () Bool)

(assert (=> b!3078782 m!3389277))

(declare-fun m!3389279 () Bool)

(assert (=> b!3078777 m!3389279))

(declare-fun m!3389281 () Bool)

(assert (=> b!3078780 m!3389281))

(assert (=> b!3078780 m!3389281))

(declare-fun m!3389283 () Bool)

(assert (=> b!3078780 m!3389283))

(declare-fun m!3389285 () Bool)

(assert (=> b!3078780 m!3389285))

(assert (=> b!3078780 m!3389281))

(declare-fun m!3389287 () Bool)

(assert (=> b!3078780 m!3389287))

(assert (=> b!3078781 m!3389275))

(declare-fun m!3389289 () Bool)

(assert (=> b!3078781 m!3389289))

(declare-fun m!3389291 () Bool)

(assert (=> b!3078779 m!3389291))

(assert (=> b!3078783 m!3389275))

(declare-fun m!3389293 () Bool)

(assert (=> b!3078783 m!3389293))

(assert (=> d!857277 m!3389291))

(declare-fun m!3389295 () Bool)

(assert (=> d!857277 m!3389295))

(assert (=> d!857277 m!3389187))

(assert (=> b!3078422 d!857277))

(declare-fun bs!532846 () Bool)

(declare-fun d!857281 () Bool)

(assert (= bs!532846 (and d!857281 b!3078422)))

(declare-fun lambda!114259 () Int)

(assert (=> bs!532846 (= lambda!114259 lambda!114235)))

(assert (=> bs!532846 (not (= lambda!114259 lambda!114236))))

(declare-fun bs!532847 () Bool)

(assert (= bs!532847 (and d!857281 d!857269)))

(assert (=> bs!532847 (= lambda!114259 lambda!114255)))

(assert (=> bs!532847 (not (= lambda!114259 lambda!114256))))

(assert (=> d!857281 true))

(assert (=> d!857281 true))

(assert (=> d!857281 true))

(assert (=> d!857281 (= (isDefined!5376 (findConcatSeparation!1219 (regOne!19572 r!17423) (regTwo!19572 r!17423) Nil!35271 s!11993 s!11993)) (Exists!1793 lambda!114259))))

(declare-fun lt!1052898 () Unit!49499)

(declare-fun choose!18249 (Regex!9530 Regex!9530 List!35395) Unit!49499)

(assert (=> d!857281 (= lt!1052898 (choose!18249 (regOne!19572 r!17423) (regTwo!19572 r!17423) s!11993))))

(assert (=> d!857281 (validRegex!4263 (regOne!19572 r!17423))))

(assert (=> d!857281 (= (lemmaFindConcatSeparationEquivalentToExists!989 (regOne!19572 r!17423) (regTwo!19572 r!17423) s!11993) lt!1052898)))

(declare-fun bs!532848 () Bool)

(assert (= bs!532848 d!857281))

(assert (=> bs!532848 m!3389187))

(assert (=> bs!532848 m!3389069))

(assert (=> bs!532848 m!3389071))

(assert (=> bs!532848 m!3389069))

(declare-fun m!3389299 () Bool)

(assert (=> bs!532848 m!3389299))

(declare-fun m!3389301 () Bool)

(assert (=> bs!532848 m!3389301))

(assert (=> b!3078422 d!857281))

(declare-fun d!857287 () Bool)

(assert (=> d!857287 (= (isEmptyExpr!587 lt!1052807) (is-EmptyExpr!9530 lt!1052807))))

(assert (=> b!3078417 d!857287))

(declare-fun b!3078808 () Bool)

(declare-fun e!1926087 () Bool)

(declare-fun e!1926086 () Bool)

(assert (=> b!3078808 (= e!1926087 e!1926086)))

(declare-fun res!1263337 () Bool)

(assert (=> b!3078808 (=> (not res!1263337) (not e!1926086))))

(declare-fun call!214402 () Bool)

(assert (=> b!3078808 (= res!1263337 call!214402)))

(declare-fun d!857289 () Bool)

(declare-fun res!1263339 () Bool)

(declare-fun e!1926089 () Bool)

(assert (=> d!857289 (=> res!1263339 e!1926089)))

(assert (=> d!857289 (= res!1263339 (is-ElementMatch!9530 r!17423))))

(assert (=> d!857289 (= (validRegex!4263 r!17423) e!1926089)))

(declare-fun b!3078809 () Bool)

(declare-fun res!1263335 () Bool)

(assert (=> b!3078809 (=> res!1263335 e!1926087)))

(assert (=> b!3078809 (= res!1263335 (not (is-Concat!14851 r!17423)))))

(declare-fun e!1926091 () Bool)

(assert (=> b!3078809 (= e!1926091 e!1926087)))

(declare-fun b!3078810 () Bool)

(declare-fun e!1926088 () Bool)

(declare-fun e!1926085 () Bool)

(assert (=> b!3078810 (= e!1926088 e!1926085)))

(declare-fun res!1263336 () Bool)

(assert (=> b!3078810 (= res!1263336 (not (nullable!3176 (reg!9859 r!17423))))))

(assert (=> b!3078810 (=> (not res!1263336) (not e!1926085))))

(declare-fun b!3078811 () Bool)

(declare-fun call!214403 () Bool)

(assert (=> b!3078811 (= e!1926085 call!214403)))

(declare-fun bm!214397 () Bool)

(assert (=> bm!214397 (= call!214402 call!214403)))

(declare-fun b!3078812 () Bool)

(assert (=> b!3078812 (= e!1926089 e!1926088)))

(declare-fun c!512469 () Bool)

(assert (=> b!3078812 (= c!512469 (is-Star!9530 r!17423))))

(declare-fun b!3078813 () Bool)

(declare-fun res!1263338 () Bool)

(declare-fun e!1926090 () Bool)

(assert (=> b!3078813 (=> (not res!1263338) (not e!1926090))))

(declare-fun call!214404 () Bool)

(assert (=> b!3078813 (= res!1263338 call!214404)))

(assert (=> b!3078813 (= e!1926091 e!1926090)))

(declare-fun b!3078814 () Bool)

(assert (=> b!3078814 (= e!1926088 e!1926091)))

(declare-fun c!512470 () Bool)

(assert (=> b!3078814 (= c!512470 (is-Union!9530 r!17423))))

(declare-fun b!3078815 () Bool)

(assert (=> b!3078815 (= e!1926090 call!214402)))

(declare-fun bm!214398 () Bool)

(assert (=> bm!214398 (= call!214403 (validRegex!4263 (ite c!512469 (reg!9859 r!17423) (ite c!512470 (regTwo!19573 r!17423) (regOne!19572 r!17423)))))))

(declare-fun bm!214399 () Bool)

(assert (=> bm!214399 (= call!214404 (validRegex!4263 (ite c!512470 (regOne!19573 r!17423) (regTwo!19572 r!17423))))))

(declare-fun b!3078816 () Bool)

(assert (=> b!3078816 (= e!1926086 call!214404)))

(assert (= (and d!857289 (not res!1263339)) b!3078812))

(assert (= (and b!3078812 c!512469) b!3078810))

(assert (= (and b!3078812 (not c!512469)) b!3078814))

(assert (= (and b!3078810 res!1263336) b!3078811))

(assert (= (and b!3078814 c!512470) b!3078813))

(assert (= (and b!3078814 (not c!512470)) b!3078809))

(assert (= (and b!3078813 res!1263338) b!3078815))

(assert (= (and b!3078809 (not res!1263335)) b!3078808))

(assert (= (and b!3078808 res!1263337) b!3078816))

(assert (= (or b!3078813 b!3078816) bm!214399))

(assert (= (or b!3078815 b!3078808) bm!214397))

(assert (= (or b!3078811 bm!214397) bm!214398))

(declare-fun m!3389303 () Bool)

(assert (=> b!3078810 m!3389303))

(declare-fun m!3389305 () Bool)

(assert (=> bm!214398 m!3389305))

(declare-fun m!3389307 () Bool)

(assert (=> bm!214399 m!3389307))

(assert (=> start!293306 d!857289))

(declare-fun bs!532850 () Bool)

(declare-fun b!3078849 () Bool)

(assert (= bs!532850 (and b!3078849 d!857269)))

(declare-fun lambda!114266 () Int)

(assert (=> bs!532850 (not (= lambda!114266 lambda!114256))))

(declare-fun bs!532851 () Bool)

(assert (= bs!532851 (and b!3078849 d!857281)))

(assert (=> bs!532851 (not (= lambda!114266 lambda!114259))))

(declare-fun bs!532852 () Bool)

(assert (= bs!532852 (and b!3078849 b!3078422)))

(assert (=> bs!532852 (not (= lambda!114266 lambda!114236))))

(assert (=> bs!532852 (not (= lambda!114266 lambda!114235))))

(assert (=> bs!532850 (not (= lambda!114266 lambda!114255))))

(assert (=> b!3078849 true))

(assert (=> b!3078849 true))

(declare-fun bs!532853 () Bool)

(declare-fun b!3078855 () Bool)

(assert (= bs!532853 (and b!3078855 b!3078849)))

(declare-fun lambda!114267 () Int)

(assert (=> bs!532853 (not (= lambda!114267 lambda!114266))))

(declare-fun bs!532854 () Bool)

(assert (= bs!532854 (and b!3078855 d!857269)))

(assert (=> bs!532854 (= lambda!114267 lambda!114256)))

(declare-fun bs!532855 () Bool)

(assert (= bs!532855 (and b!3078855 d!857281)))

(assert (=> bs!532855 (not (= lambda!114267 lambda!114259))))

(declare-fun bs!532856 () Bool)

(assert (= bs!532856 (and b!3078855 b!3078422)))

(assert (=> bs!532856 (= lambda!114267 lambda!114236)))

(assert (=> bs!532856 (not (= lambda!114267 lambda!114235))))

(assert (=> bs!532854 (not (= lambda!114267 lambda!114255))))

(assert (=> b!3078855 true))

(assert (=> b!3078855 true))

(declare-fun e!1926117 () Bool)

(declare-fun call!214410 () Bool)

(assert (=> b!3078849 (= e!1926117 call!214410)))

(declare-fun b!3078850 () Bool)

(declare-fun e!1926114 () Bool)

(declare-fun e!1926116 () Bool)

(assert (=> b!3078850 (= e!1926114 e!1926116)))

(declare-fun res!1263356 () Bool)

(assert (=> b!3078850 (= res!1263356 (not (is-EmptyLang!9530 r!17423)))))

(assert (=> b!3078850 (=> (not res!1263356) (not e!1926116))))

(declare-fun b!3078851 () Bool)

(declare-fun call!214409 () Bool)

(assert (=> b!3078851 (= e!1926114 call!214409)))

(declare-fun bm!214404 () Bool)

(assert (=> bm!214404 (= call!214409 (isEmpty!19604 s!11993))))

(declare-fun b!3078852 () Bool)

(declare-fun c!512482 () Bool)

(assert (=> b!3078852 (= c!512482 (is-Union!9530 r!17423))))

(declare-fun e!1926115 () Bool)

(declare-fun e!1926113 () Bool)

(assert (=> b!3078852 (= e!1926115 e!1926113)))

(declare-fun b!3078853 () Bool)

(declare-fun e!1926118 () Bool)

(assert (=> b!3078853 (= e!1926113 e!1926118)))

(declare-fun res!1263360 () Bool)

(assert (=> b!3078853 (= res!1263360 (matchRSpec!1667 (regOne!19573 r!17423) s!11993))))

(assert (=> b!3078853 (=> res!1263360 e!1926118)))

(declare-fun c!512480 () Bool)

(declare-fun bm!214405 () Bool)

(assert (=> bm!214405 (= call!214410 (Exists!1793 (ite c!512480 lambda!114266 lambda!114267)))))

(declare-fun e!1926110 () Bool)

(assert (=> b!3078855 (= e!1926110 call!214410)))

(declare-fun b!3078856 () Bool)

(assert (=> b!3078856 (= e!1926118 (matchRSpec!1667 (regTwo!19573 r!17423) s!11993))))

(declare-fun b!3078857 () Bool)

(assert (=> b!3078857 (= e!1926115 (= s!11993 (Cons!35271 (c!512374 r!17423) Nil!35271)))))

(declare-fun b!3078858 () Bool)

(assert (=> b!3078858 (= e!1926113 e!1926110)))

(assert (=> b!3078858 (= c!512480 (is-Star!9530 r!17423))))

(declare-fun b!3078859 () Bool)

(declare-fun res!1263359 () Bool)

(assert (=> b!3078859 (=> res!1263359 e!1926117)))

(assert (=> b!3078859 (= res!1263359 call!214409)))

(assert (=> b!3078859 (= e!1926110 e!1926117)))

(declare-fun b!3078854 () Bool)

(declare-fun c!512481 () Bool)

(assert (=> b!3078854 (= c!512481 (is-ElementMatch!9530 r!17423))))

(assert (=> b!3078854 (= e!1926116 e!1926115)))

(declare-fun d!857291 () Bool)

(declare-fun c!512479 () Bool)

(assert (=> d!857291 (= c!512479 (is-EmptyExpr!9530 r!17423))))

(assert (=> d!857291 (= (matchRSpec!1667 r!17423 s!11993) e!1926114)))

(assert (= (and d!857291 c!512479) b!3078851))

(assert (= (and d!857291 (not c!512479)) b!3078850))

(assert (= (and b!3078850 res!1263356) b!3078854))

(assert (= (and b!3078854 c!512481) b!3078857))

(assert (= (and b!3078854 (not c!512481)) b!3078852))

(assert (= (and b!3078852 c!512482) b!3078853))

(assert (= (and b!3078852 (not c!512482)) b!3078858))

(assert (= (and b!3078853 (not res!1263360)) b!3078856))

(assert (= (and b!3078858 c!512480) b!3078859))

(assert (= (and b!3078858 (not c!512480)) b!3078855))

(assert (= (and b!3078859 (not res!1263359)) b!3078849))

(assert (= (or b!3078849 b!3078855) bm!214405))

(assert (= (or b!3078851 b!3078859) bm!214404))

(assert (=> bm!214404 m!3389105))

(declare-fun m!3389313 () Bool)

(assert (=> b!3078853 m!3389313))

(declare-fun m!3389315 () Bool)

(assert (=> bm!214405 m!3389315))

(declare-fun m!3389317 () Bool)

(assert (=> b!3078856 m!3389317))

(assert (=> b!3078418 d!857291))

(declare-fun d!857295 () Bool)

(declare-fun e!1926119 () Bool)

(assert (=> d!857295 e!1926119))

(declare-fun c!512483 () Bool)

(assert (=> d!857295 (= c!512483 (is-EmptyExpr!9530 r!17423))))

(declare-fun lt!1052904 () Bool)

(declare-fun e!1926122 () Bool)

(assert (=> d!857295 (= lt!1052904 e!1926122)))

(declare-fun c!512484 () Bool)

(assert (=> d!857295 (= c!512484 (isEmpty!19604 s!11993))))

(assert (=> d!857295 (validRegex!4263 r!17423)))

(assert (=> d!857295 (= (matchR!4412 r!17423 s!11993) lt!1052904)))

(declare-fun b!3078864 () Bool)

(declare-fun res!1263368 () Bool)

(declare-fun e!1926124 () Bool)

(assert (=> b!3078864 (=> res!1263368 e!1926124)))

(assert (=> b!3078864 (= res!1263368 (not (isEmpty!19604 (tail!5057 s!11993))))))

(declare-fun b!3078865 () Bool)

(declare-fun e!1926120 () Bool)

(assert (=> b!3078865 (= e!1926120 e!1926124)))

(declare-fun res!1263363 () Bool)

(assert (=> b!3078865 (=> res!1263363 e!1926124)))

(declare-fun call!214411 () Bool)

(assert (=> b!3078865 (= res!1263363 call!214411)))

(declare-fun b!3078866 () Bool)

(declare-fun e!1926123 () Bool)

(assert (=> b!3078866 (= e!1926123 (not lt!1052904))))

(declare-fun b!3078867 () Bool)

(assert (=> b!3078867 (= e!1926119 (= lt!1052904 call!214411))))

(declare-fun bm!214406 () Bool)

(assert (=> bm!214406 (= call!214411 (isEmpty!19604 s!11993))))

(declare-fun b!3078868 () Bool)

(assert (=> b!3078868 (= e!1926122 (nullable!3176 r!17423))))

(declare-fun b!3078869 () Bool)

(declare-fun res!1263370 () Bool)

(declare-fun e!1926125 () Bool)

(assert (=> b!3078869 (=> res!1263370 e!1926125)))

(assert (=> b!3078869 (= res!1263370 (not (is-ElementMatch!9530 r!17423)))))

(assert (=> b!3078869 (= e!1926123 e!1926125)))

(declare-fun b!3078870 () Bool)

(declare-fun e!1926121 () Bool)

(assert (=> b!3078870 (= e!1926121 (= (head!6831 s!11993) (c!512374 r!17423)))))

(declare-fun b!3078871 () Bool)

(assert (=> b!3078871 (= e!1926125 e!1926120)))

(declare-fun res!1263366 () Bool)

(assert (=> b!3078871 (=> (not res!1263366) (not e!1926120))))

(assert (=> b!3078871 (= res!1263366 (not lt!1052904))))

(declare-fun b!3078872 () Bool)

(assert (=> b!3078872 (= e!1926124 (not (= (head!6831 s!11993) (c!512374 r!17423))))))

(declare-fun b!3078873 () Bool)

(declare-fun res!1263364 () Bool)

(assert (=> b!3078873 (=> (not res!1263364) (not e!1926121))))

(assert (=> b!3078873 (= res!1263364 (not call!214411))))

(declare-fun b!3078874 () Bool)

(declare-fun res!1263369 () Bool)

(assert (=> b!3078874 (=> res!1263369 e!1926125)))

(assert (=> b!3078874 (= res!1263369 e!1926121)))

(declare-fun res!1263367 () Bool)

(assert (=> b!3078874 (=> (not res!1263367) (not e!1926121))))

(assert (=> b!3078874 (= res!1263367 lt!1052904)))

(declare-fun b!3078875 () Bool)

(assert (=> b!3078875 (= e!1926122 (matchR!4412 (derivativeStep!2772 r!17423 (head!6831 s!11993)) (tail!5057 s!11993)))))

(declare-fun b!3078876 () Bool)

(assert (=> b!3078876 (= e!1926119 e!1926123)))

(declare-fun c!512485 () Bool)

(assert (=> b!3078876 (= c!512485 (is-EmptyLang!9530 r!17423))))

(declare-fun b!3078877 () Bool)

(declare-fun res!1263365 () Bool)

(assert (=> b!3078877 (=> (not res!1263365) (not e!1926121))))

(assert (=> b!3078877 (= res!1263365 (isEmpty!19604 (tail!5057 s!11993)))))

(assert (= (and d!857295 c!512484) b!3078868))

(assert (= (and d!857295 (not c!512484)) b!3078875))

(assert (= (and d!857295 c!512483) b!3078867))

(assert (= (and d!857295 (not c!512483)) b!3078876))

(assert (= (and b!3078876 c!512485) b!3078866))

(assert (= (and b!3078876 (not c!512485)) b!3078869))

(assert (= (and b!3078869 (not res!1263370)) b!3078874))

(assert (= (and b!3078874 res!1263367) b!3078873))

(assert (= (and b!3078873 res!1263364) b!3078877))

(assert (= (and b!3078877 res!1263365) b!3078870))

(assert (= (and b!3078874 (not res!1263369)) b!3078871))

(assert (= (and b!3078871 res!1263366) b!3078865))

(assert (= (and b!3078865 (not res!1263363)) b!3078864))

(assert (= (and b!3078864 (not res!1263368)) b!3078872))

(assert (= (or b!3078867 b!3078865 b!3078873) bm!214406))

(assert (=> b!3078864 m!3389205))

(assert (=> b!3078864 m!3389205))

(assert (=> b!3078864 m!3389207))

(assert (=> b!3078870 m!3389209))

(assert (=> b!3078877 m!3389205))

(assert (=> b!3078877 m!3389205))

(assert (=> b!3078877 m!3389207))

(assert (=> b!3078875 m!3389209))

(assert (=> b!3078875 m!3389209))

(declare-fun m!3389319 () Bool)

(assert (=> b!3078875 m!3389319))

(assert (=> b!3078875 m!3389205))

(assert (=> b!3078875 m!3389319))

(assert (=> b!3078875 m!3389205))

(declare-fun m!3389321 () Bool)

(assert (=> b!3078875 m!3389321))

(assert (=> d!857295 m!3389105))

(assert (=> d!857295 m!3389097))

(declare-fun m!3389323 () Bool)

(assert (=> b!3078868 m!3389323))

(assert (=> bm!214406 m!3389105))

(assert (=> b!3078872 m!3389209))

(assert (=> b!3078418 d!857295))

(declare-fun d!857297 () Bool)

(assert (=> d!857297 (= (matchR!4412 r!17423 s!11993) (matchRSpec!1667 r!17423 s!11993))))

(declare-fun lt!1052907 () Unit!49499)

(declare-fun choose!18250 (Regex!9530 List!35395) Unit!49499)

(assert (=> d!857297 (= lt!1052907 (choose!18250 r!17423 s!11993))))

(assert (=> d!857297 (validRegex!4263 r!17423)))

(assert (=> d!857297 (= (mainMatchTheorem!1667 r!17423 s!11993) lt!1052907)))

(declare-fun bs!532857 () Bool)

(assert (= bs!532857 d!857297))

(assert (=> bs!532857 m!3389101))

(assert (=> bs!532857 m!3389099))

(declare-fun m!3389325 () Bool)

(assert (=> bs!532857 m!3389325))

(assert (=> bs!532857 m!3389097))

(assert (=> b!3078418 d!857297))

(declare-fun d!857299 () Bool)

(assert (=> d!857299 (= (isEmptyLang!581 lt!1052810) (is-EmptyLang!9530 lt!1052810))))

(assert (=> b!3078413 d!857299))

(declare-fun b!3078892 () Bool)

(declare-fun e!1926130 () Bool)

(assert (=> b!3078892 (= e!1926130 tp_is_empty!16623)))

(declare-fun b!3078893 () Bool)

(declare-fun tp!970058 () Bool)

(declare-fun tp!970056 () Bool)

(assert (=> b!3078893 (= e!1926130 (and tp!970058 tp!970056))))

(declare-fun b!3078894 () Bool)

(declare-fun tp!970059 () Bool)

(assert (=> b!3078894 (= e!1926130 tp!970059)))

(assert (=> b!3078419 (= tp!970022 e!1926130)))

(declare-fun b!3078895 () Bool)

(declare-fun tp!970060 () Bool)

(declare-fun tp!970057 () Bool)

(assert (=> b!3078895 (= e!1926130 (and tp!970060 tp!970057))))

(assert (= (and b!3078419 (is-ElementMatch!9530 (regOne!19573 r!17423))) b!3078892))

(assert (= (and b!3078419 (is-Concat!14851 (regOne!19573 r!17423))) b!3078893))

(assert (= (and b!3078419 (is-Star!9530 (regOne!19573 r!17423))) b!3078894))

(assert (= (and b!3078419 (is-Union!9530 (regOne!19573 r!17423))) b!3078895))

(declare-fun b!3078896 () Bool)

(declare-fun e!1926131 () Bool)

(assert (=> b!3078896 (= e!1926131 tp_is_empty!16623)))

(declare-fun b!3078897 () Bool)

(declare-fun tp!970063 () Bool)

(declare-fun tp!970061 () Bool)

(assert (=> b!3078897 (= e!1926131 (and tp!970063 tp!970061))))

(declare-fun b!3078898 () Bool)

(declare-fun tp!970064 () Bool)

(assert (=> b!3078898 (= e!1926131 tp!970064)))

(assert (=> b!3078419 (= tp!970025 e!1926131)))

(declare-fun b!3078899 () Bool)

(declare-fun tp!970065 () Bool)

(declare-fun tp!970062 () Bool)

(assert (=> b!3078899 (= e!1926131 (and tp!970065 tp!970062))))

(assert (= (and b!3078419 (is-ElementMatch!9530 (regTwo!19573 r!17423))) b!3078896))

(assert (= (and b!3078419 (is-Concat!14851 (regTwo!19573 r!17423))) b!3078897))

(assert (= (and b!3078419 (is-Star!9530 (regTwo!19573 r!17423))) b!3078898))

(assert (= (and b!3078419 (is-Union!9530 (regTwo!19573 r!17423))) b!3078899))

(declare-fun b!3078904 () Bool)

(declare-fun e!1926134 () Bool)

(declare-fun tp!970068 () Bool)

(assert (=> b!3078904 (= e!1926134 (and tp_is_empty!16623 tp!970068))))

(assert (=> b!3078414 (= tp!970023 e!1926134)))

(assert (= (and b!3078414 (is-Cons!35271 (t!234460 s!11993))) b!3078904))

(declare-fun b!3078905 () Bool)

(declare-fun e!1926135 () Bool)

(assert (=> b!3078905 (= e!1926135 tp_is_empty!16623)))

(declare-fun b!3078906 () Bool)

(declare-fun tp!970071 () Bool)

(declare-fun tp!970069 () Bool)

(assert (=> b!3078906 (= e!1926135 (and tp!970071 tp!970069))))

(declare-fun b!3078907 () Bool)

(declare-fun tp!970072 () Bool)

(assert (=> b!3078907 (= e!1926135 tp!970072)))

(assert (=> b!3078411 (= tp!970027 e!1926135)))

(declare-fun b!3078908 () Bool)

(declare-fun tp!970073 () Bool)

(declare-fun tp!970070 () Bool)

(assert (=> b!3078908 (= e!1926135 (and tp!970073 tp!970070))))

(assert (= (and b!3078411 (is-ElementMatch!9530 (regOne!19572 r!17423))) b!3078905))

(assert (= (and b!3078411 (is-Concat!14851 (regOne!19572 r!17423))) b!3078906))

(assert (= (and b!3078411 (is-Star!9530 (regOne!19572 r!17423))) b!3078907))

(assert (= (and b!3078411 (is-Union!9530 (regOne!19572 r!17423))) b!3078908))

(declare-fun b!3078909 () Bool)

(declare-fun e!1926136 () Bool)

(assert (=> b!3078909 (= e!1926136 tp_is_empty!16623)))

(declare-fun b!3078910 () Bool)

(declare-fun tp!970076 () Bool)

(declare-fun tp!970074 () Bool)

(assert (=> b!3078910 (= e!1926136 (and tp!970076 tp!970074))))

(declare-fun b!3078911 () Bool)

(declare-fun tp!970077 () Bool)

(assert (=> b!3078911 (= e!1926136 tp!970077)))

(assert (=> b!3078411 (= tp!970026 e!1926136)))

(declare-fun b!3078912 () Bool)

(declare-fun tp!970078 () Bool)

(declare-fun tp!970075 () Bool)

(assert (=> b!3078912 (= e!1926136 (and tp!970078 tp!970075))))

(assert (= (and b!3078411 (is-ElementMatch!9530 (regTwo!19572 r!17423))) b!3078909))

(assert (= (and b!3078411 (is-Concat!14851 (regTwo!19572 r!17423))) b!3078910))

(assert (= (and b!3078411 (is-Star!9530 (regTwo!19572 r!17423))) b!3078911))

(assert (= (and b!3078411 (is-Union!9530 (regTwo!19572 r!17423))) b!3078912))

(declare-fun b!3078913 () Bool)

(declare-fun e!1926137 () Bool)

(assert (=> b!3078913 (= e!1926137 tp_is_empty!16623)))

(declare-fun b!3078914 () Bool)

(declare-fun tp!970081 () Bool)

(declare-fun tp!970079 () Bool)

(assert (=> b!3078914 (= e!1926137 (and tp!970081 tp!970079))))

(declare-fun b!3078915 () Bool)

(declare-fun tp!970082 () Bool)

(assert (=> b!3078915 (= e!1926137 tp!970082)))

(assert (=> b!3078412 (= tp!970024 e!1926137)))

(declare-fun b!3078916 () Bool)

(declare-fun tp!970083 () Bool)

(declare-fun tp!970080 () Bool)

(assert (=> b!3078916 (= e!1926137 (and tp!970083 tp!970080))))

(assert (= (and b!3078412 (is-ElementMatch!9530 (reg!9859 r!17423))) b!3078913))

(assert (= (and b!3078412 (is-Concat!14851 (reg!9859 r!17423))) b!3078914))

(assert (= (and b!3078412 (is-Star!9530 (reg!9859 r!17423))) b!3078915))

(assert (= (and b!3078412 (is-Union!9530 (reg!9859 r!17423))) b!3078916))

(push 1)

(assert (not bm!214385))

(assert (not b!3078655))

(assert (not b!3078899))

(assert (not bm!214382))

(assert (not b!3078667))

(assert (not b!3078895))

(assert (not b!3078646))

(assert (not bm!214399))

(assert (not bm!214374))

(assert (not b!3078781))

(assert (not bm!214375))

(assert (not bm!214386))

(assert (not b!3078650))

(assert (not d!857273))

(assert (not bm!214398))

(assert (not d!857261))

(assert (not b!3078875))

(assert (not bm!214365))

(assert (not b!3078687))

(assert (not b!3078782))

(assert (not d!857271))

(assert (not bm!214366))

(assert (not b!3078699))

(assert (not b!3078783))

(assert (not b!3078642))

(assert (not bm!214371))

(assert (not d!857255))

(assert (not b!3078675))

(assert (not bm!214367))

(assert (not b!3078706))

(assert (not d!857259))

(assert tp_is_empty!16623)

(assert (not b!3078604))

(assert (not b!3078779))

(assert (not b!3078853))

(assert (not d!857265))

(assert (not b!3078810))

(assert (not bm!214372))

(assert (not b!3078864))

(assert (not b!3078868))

(assert (not b!3078575))

(assert (not bm!214406))

(assert (not d!857277))

(assert (not bm!214364))

(assert (not b!3078681))

(assert (not b!3078680))

(assert (not b!3078870))

(assert (not b!3078689))

(assert (not d!857251))

(assert (not d!857297))

(assert (not b!3078893))

(assert (not b!3078908))

(assert (not b!3078703))

(assert (not b!3078678))

(assert (not b!3078914))

(assert (not b!3078906))

(assert (not b!3078777))

(assert (not b!3078606))

(assert (not b!3078708))

(assert (not b!3078653))

(assert (not bm!214405))

(assert (not b!3078648))

(assert (not b!3078916))

(assert (not b!3078872))

(assert (not b!3078877))

(assert (not d!857263))

(assert (not b!3078907))

(assert (not bm!214404))

(assert (not b!3078701))

(assert (not b!3078910))

(assert (not b!3078912))

(assert (not bm!214387))

(assert (not b!3078780))

(assert (not b!3078856))

(assert (not bm!214373))

(assert (not b!3078692))

(assert (not b!3078904))

(assert (not b!3078898))

(assert (not b!3078671))

(assert (not b!3078573))

(assert (not d!857269))

(assert (not b!3078695))

(assert (not b!3078897))

(assert (not d!857247))

(assert (not d!857275))

(assert (not b!3078911))

(assert (not b!3078915))

(assert (not d!857295))

(assert (not d!857281))

(assert (not b!3078685))

(assert (not d!857253))

(assert (not b!3078894))

(assert (not bm!214368))

(assert (not b!3078694))

(assert (not b!3078673))

(assert (not d!857257))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

