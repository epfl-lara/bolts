; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!287606 () Bool)

(assert start!287606)

(declare-fun b!2974162 () Bool)

(assert (=> b!2974162 true))

(assert (=> b!2974162 true))

(assert (=> b!2974162 true))

(declare-fun lambda!110678 () Int)

(declare-fun lambda!110677 () Int)

(assert (=> b!2974162 (not (= lambda!110678 lambda!110677))))

(assert (=> b!2974162 true))

(assert (=> b!2974162 true))

(assert (=> b!2974162 true))

(declare-fun b!2974156 () Bool)

(declare-fun e!1871077 () Bool)

(declare-fun tp!947986 () Bool)

(declare-fun tp!947983 () Bool)

(assert (=> b!2974156 (= e!1871077 (and tp!947986 tp!947983))))

(declare-fun b!2974157 () Bool)

(declare-fun e!1871073 () Bool)

(declare-fun tp_is_empty!16123 () Bool)

(declare-fun tp!947985 () Bool)

(assert (=> b!2974157 (= e!1871073 (and tp_is_empty!16123 tp!947985))))

(declare-fun b!2974158 () Bool)

(declare-fun e!1871075 () Bool)

(declare-fun e!1871078 () Bool)

(assert (=> b!2974158 (= e!1871075 e!1871078)))

(declare-fun res!1226346 () Bool)

(assert (=> b!2974158 (=> res!1226346 e!1871078)))

(declare-datatypes ((C!18746 0))(
  ( (C!18747 (val!11409 Int)) )
))
(declare-datatypes ((List!35145 0))(
  ( (Nil!35021) (Cons!35021 (h!40441 C!18746) (t!234210 List!35145)) )
))
(declare-fun s!11993 () List!35145)

(declare-fun isEmpty!19260 (List!35145) Bool)

(assert (=> b!2974158 (= res!1226346 (isEmpty!19260 s!11993))))

(declare-datatypes ((Regex!9280 0))(
  ( (ElementMatch!9280 (c!488186 C!18746)) (Concat!14601 (regOne!19072 Regex!9280) (regTwo!19072 Regex!9280)) (EmptyExpr!9280) (Star!9280 (reg!9609 Regex!9280)) (EmptyLang!9280) (Union!9280 (regOne!19073 Regex!9280) (regTwo!19073 Regex!9280)) )
))
(declare-fun lt!1036728 () Regex!9280)

(declare-fun matchRSpec!1417 (Regex!9280 List!35145) Bool)

(assert (=> b!2974158 (matchRSpec!1417 lt!1036728 s!11993)))

(declare-datatypes ((Unit!48939 0))(
  ( (Unit!48940) )
))
(declare-fun lt!1036723 () Unit!48939)

(declare-fun mainMatchTheorem!1417 (Regex!9280 List!35145) Unit!48939)

(assert (=> b!2974158 (= lt!1036723 (mainMatchTheorem!1417 lt!1036728 s!11993))))

(declare-fun b!2974159 () Bool)

(declare-fun e!1871072 () Bool)

(declare-fun e!1871074 () Bool)

(assert (=> b!2974159 (= e!1871072 e!1871074)))

(declare-fun res!1226345 () Bool)

(assert (=> b!2974159 (=> res!1226345 e!1871074)))

(declare-fun lt!1036729 () Regex!9280)

(declare-fun isEmptyLang!394 (Regex!9280) Bool)

(assert (=> b!2974159 (= res!1226345 (isEmptyLang!394 lt!1036729))))

(declare-fun r!17423 () Regex!9280)

(declare-fun simplify!281 (Regex!9280) Regex!9280)

(assert (=> b!2974159 (= lt!1036729 (simplify!281 (reg!9609 r!17423)))))

(declare-fun res!1226347 () Bool)

(declare-fun e!1871076 () Bool)

(assert (=> start!287606 (=> (not res!1226347) (not e!1871076))))

(declare-fun validRegex!4013 (Regex!9280) Bool)

(assert (=> start!287606 (= res!1226347 (validRegex!4013 r!17423))))

(assert (=> start!287606 e!1871076))

(assert (=> start!287606 e!1871077))

(assert (=> start!287606 e!1871073))

(declare-fun b!2974160 () Bool)

(declare-fun tp!947984 () Bool)

(assert (=> b!2974160 (= e!1871077 tp!947984)))

(declare-fun b!2974161 () Bool)

(declare-fun tp!947987 () Bool)

(declare-fun tp!947982 () Bool)

(assert (=> b!2974161 (= e!1871077 (and tp!947987 tp!947982))))

(assert (=> b!2974162 (= e!1871078 (validRegex!4013 lt!1036729))))

(declare-fun Exists!1560 (Int) Bool)

(assert (=> b!2974162 (= (Exists!1560 lambda!110677) (Exists!1560 lambda!110678))))

(declare-fun lt!1036726 () Unit!48939)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!245 (Regex!9280 List!35145) Unit!48939)

(assert (=> b!2974162 (= lt!1036726 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!245 lt!1036729 s!11993))))

(declare-datatypes ((tuple2!33898 0))(
  ( (tuple2!33899 (_1!20081 List!35145) (_2!20081 List!35145)) )
))
(declare-datatypes ((Option!6681 0))(
  ( (None!6680) (Some!6680 (v!34814 tuple2!33898)) )
))
(declare-fun isDefined!5232 (Option!6681) Bool)

(declare-fun findConcatSeparation!1075 (Regex!9280 Regex!9280 List!35145 List!35145 List!35145) Option!6681)

(assert (=> b!2974162 (= (isDefined!5232 (findConcatSeparation!1075 lt!1036729 lt!1036728 Nil!35021 s!11993 s!11993)) (Exists!1560 lambda!110677))))

(declare-fun lt!1036727 () Unit!48939)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!853 (Regex!9280 Regex!9280 List!35145) Unit!48939)

(assert (=> b!2974162 (= lt!1036727 (lemmaFindConcatSeparationEquivalentToExists!853 lt!1036729 lt!1036728 s!11993))))

(declare-fun b!2974163 () Bool)

(assert (=> b!2974163 (= e!1871077 tp_is_empty!16123)))

(declare-fun b!2974164 () Bool)

(assert (=> b!2974164 (= e!1871074 e!1871075)))

(declare-fun res!1226344 () Bool)

(assert (=> b!2974164 (=> res!1226344 e!1871075)))

(declare-fun matchR!4162 (Regex!9280 List!35145) Bool)

(assert (=> b!2974164 (= res!1226344 (not (matchR!4162 lt!1036728 s!11993)))))

(assert (=> b!2974164 (= lt!1036728 (Star!9280 lt!1036729))))

(declare-fun b!2974165 () Bool)

(assert (=> b!2974165 (= e!1871076 (not e!1871072))))

(declare-fun res!1226343 () Bool)

(assert (=> b!2974165 (=> res!1226343 e!1871072)))

(declare-fun lt!1036725 () Bool)

(assert (=> b!2974165 (= res!1226343 (or lt!1036725 (is-Concat!14601 r!17423) (is-Union!9280 r!17423) (not (is-Star!9280 r!17423))))))

(assert (=> b!2974165 (= lt!1036725 (matchRSpec!1417 r!17423 s!11993))))

(assert (=> b!2974165 (= lt!1036725 (matchR!4162 r!17423 s!11993))))

(declare-fun lt!1036724 () Unit!48939)

(assert (=> b!2974165 (= lt!1036724 (mainMatchTheorem!1417 r!17423 s!11993))))

(assert (= (and start!287606 res!1226347) b!2974165))

(assert (= (and b!2974165 (not res!1226343)) b!2974159))

(assert (= (and b!2974159 (not res!1226345)) b!2974164))

(assert (= (and b!2974164 (not res!1226344)) b!2974158))

(assert (= (and b!2974158 (not res!1226346)) b!2974162))

(assert (= (and start!287606 (is-ElementMatch!9280 r!17423)) b!2974163))

(assert (= (and start!287606 (is-Concat!14601 r!17423)) b!2974156))

(assert (= (and start!287606 (is-Star!9280 r!17423)) b!2974160))

(assert (= (and start!287606 (is-Union!9280 r!17423)) b!2974161))

(assert (= (and start!287606 (is-Cons!35021 s!11993)) b!2974157))

(declare-fun m!3339329 () Bool)

(assert (=> b!2974165 m!3339329))

(declare-fun m!3339331 () Bool)

(assert (=> b!2974165 m!3339331))

(declare-fun m!3339333 () Bool)

(assert (=> b!2974165 m!3339333))

(declare-fun m!3339335 () Bool)

(assert (=> b!2974159 m!3339335))

(declare-fun m!3339337 () Bool)

(assert (=> b!2974159 m!3339337))

(declare-fun m!3339339 () Bool)

(assert (=> b!2974164 m!3339339))

(declare-fun m!3339341 () Bool)

(assert (=> start!287606 m!3339341))

(declare-fun m!3339343 () Bool)

(assert (=> b!2974162 m!3339343))

(declare-fun m!3339345 () Bool)

(assert (=> b!2974162 m!3339345))

(declare-fun m!3339347 () Bool)

(assert (=> b!2974162 m!3339347))

(assert (=> b!2974162 m!3339345))

(declare-fun m!3339349 () Bool)

(assert (=> b!2974162 m!3339349))

(declare-fun m!3339351 () Bool)

(assert (=> b!2974162 m!3339351))

(declare-fun m!3339353 () Bool)

(assert (=> b!2974162 m!3339353))

(declare-fun m!3339355 () Bool)

(assert (=> b!2974162 m!3339355))

(assert (=> b!2974162 m!3339353))

(declare-fun m!3339357 () Bool)

(assert (=> b!2974158 m!3339357))

(declare-fun m!3339359 () Bool)

(assert (=> b!2974158 m!3339359))

(declare-fun m!3339361 () Bool)

(assert (=> b!2974158 m!3339361))

(push 1)

(assert (not b!2974157))

(assert (not b!2974161))

(assert (not b!2974158))

(assert (not b!2974162))

(assert (not start!287606))

(assert (not b!2974160))

(assert (not b!2974165))

(assert (not b!2974156))

(assert (not b!2974164))

(assert tp_is_empty!16123)

(assert (not b!2974159))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!842918 () Bool)

(assert (=> d!842918 (= (isEmpty!19260 s!11993) (is-Nil!35021 s!11993))))

(assert (=> b!2974158 d!842918))

(declare-fun bs!526630 () Bool)

(declare-fun b!2974282 () Bool)

(assert (= bs!526630 (and b!2974282 b!2974162)))

(declare-fun lambda!110691 () Int)

(assert (=> bs!526630 (not (= lambda!110691 lambda!110677))))

(assert (=> bs!526630 (= (= (reg!9609 lt!1036728) lt!1036729) (= lambda!110691 lambda!110678))))

(assert (=> b!2974282 true))

(assert (=> b!2974282 true))

(declare-fun bs!526631 () Bool)

(declare-fun b!2974279 () Bool)

(assert (= bs!526631 (and b!2974279 b!2974162)))

(declare-fun lambda!110692 () Int)

(assert (=> bs!526631 (not (= lambda!110692 lambda!110677))))

(assert (=> bs!526631 (not (= lambda!110692 lambda!110678))))

(declare-fun bs!526632 () Bool)

(assert (= bs!526632 (and b!2974279 b!2974282)))

(assert (=> bs!526632 (not (= lambda!110692 lambda!110691))))

(assert (=> b!2974279 true))

(assert (=> b!2974279 true))

(declare-fun d!842920 () Bool)

(declare-fun c!488204 () Bool)

(assert (=> d!842920 (= c!488204 (is-EmptyExpr!9280 lt!1036728))))

(declare-fun e!1871141 () Bool)

(assert (=> d!842920 (= (matchRSpec!1417 lt!1036728 s!11993) e!1871141)))

(declare-fun b!2974278 () Bool)

(declare-fun c!488205 () Bool)

(assert (=> b!2974278 (= c!488205 (is-Union!9280 lt!1036728))))

(declare-fun e!1871143 () Bool)

(declare-fun e!1871139 () Bool)

(assert (=> b!2974278 (= e!1871143 e!1871139)))

(declare-fun e!1871140 () Bool)

(declare-fun call!198231 () Bool)

(assert (=> b!2974279 (= e!1871140 call!198231)))

(declare-fun b!2974280 () Bool)

(declare-fun e!1871144 () Bool)

(assert (=> b!2974280 (= e!1871144 (matchRSpec!1417 (regTwo!19073 lt!1036728) s!11993))))

(declare-fun bm!198226 () Bool)

(declare-fun call!198232 () Bool)

(assert (=> bm!198226 (= call!198232 (isEmpty!19260 s!11993))))

(declare-fun bm!198227 () Bool)

(declare-fun c!488203 () Bool)

(assert (=> bm!198227 (= call!198231 (Exists!1560 (ite c!488203 lambda!110691 lambda!110692)))))

(declare-fun b!2974281 () Bool)

(assert (=> b!2974281 (= e!1871141 call!198232)))

(declare-fun e!1871138 () Bool)

(assert (=> b!2974282 (= e!1871138 call!198231)))

(declare-fun b!2974283 () Bool)

(declare-fun c!488202 () Bool)

(assert (=> b!2974283 (= c!488202 (is-ElementMatch!9280 lt!1036728))))

(declare-fun e!1871142 () Bool)

(assert (=> b!2974283 (= e!1871142 e!1871143)))

(declare-fun b!2974284 () Bool)

(declare-fun res!1226411 () Bool)

(assert (=> b!2974284 (=> res!1226411 e!1871138)))

(assert (=> b!2974284 (= res!1226411 call!198232)))

(assert (=> b!2974284 (= e!1871140 e!1871138)))

(declare-fun b!2974285 () Bool)

(assert (=> b!2974285 (= e!1871141 e!1871142)))

(declare-fun res!1226410 () Bool)

(assert (=> b!2974285 (= res!1226410 (not (is-EmptyLang!9280 lt!1036728)))))

(assert (=> b!2974285 (=> (not res!1226410) (not e!1871142))))

(declare-fun b!2974286 () Bool)

(assert (=> b!2974286 (= e!1871139 e!1871144)))

(declare-fun res!1226409 () Bool)

(assert (=> b!2974286 (= res!1226409 (matchRSpec!1417 (regOne!19073 lt!1036728) s!11993))))

(assert (=> b!2974286 (=> res!1226409 e!1871144)))

(declare-fun b!2974287 () Bool)

(assert (=> b!2974287 (= e!1871139 e!1871140)))

(assert (=> b!2974287 (= c!488203 (is-Star!9280 lt!1036728))))

(declare-fun b!2974288 () Bool)

(assert (=> b!2974288 (= e!1871143 (= s!11993 (Cons!35021 (c!488186 lt!1036728) Nil!35021)))))

(assert (= (and d!842920 c!488204) b!2974281))

(assert (= (and d!842920 (not c!488204)) b!2974285))

(assert (= (and b!2974285 res!1226410) b!2974283))

(assert (= (and b!2974283 c!488202) b!2974288))

(assert (= (and b!2974283 (not c!488202)) b!2974278))

(assert (= (and b!2974278 c!488205) b!2974286))

(assert (= (and b!2974278 (not c!488205)) b!2974287))

(assert (= (and b!2974286 (not res!1226409)) b!2974280))

(assert (= (and b!2974287 c!488203) b!2974284))

(assert (= (and b!2974287 (not c!488203)) b!2974279))

(assert (= (and b!2974284 (not res!1226411)) b!2974282))

(assert (= (or b!2974282 b!2974279) bm!198227))

(assert (= (or b!2974281 b!2974284) bm!198226))

(declare-fun m!3339397 () Bool)

(assert (=> b!2974280 m!3339397))

(assert (=> bm!198226 m!3339357))

(declare-fun m!3339399 () Bool)

(assert (=> bm!198227 m!3339399))

(declare-fun m!3339401 () Bool)

(assert (=> b!2974286 m!3339401))

(assert (=> b!2974158 d!842920))

(declare-fun d!842922 () Bool)

(assert (=> d!842922 (= (matchR!4162 lt!1036728 s!11993) (matchRSpec!1417 lt!1036728 s!11993))))

(declare-fun lt!1036756 () Unit!48939)

(declare-fun choose!17585 (Regex!9280 List!35145) Unit!48939)

(assert (=> d!842922 (= lt!1036756 (choose!17585 lt!1036728 s!11993))))

(assert (=> d!842922 (validRegex!4013 lt!1036728)))

(assert (=> d!842922 (= (mainMatchTheorem!1417 lt!1036728 s!11993) lt!1036756)))

(declare-fun bs!526633 () Bool)

(assert (= bs!526633 d!842922))

(assert (=> bs!526633 m!3339339))

(assert (=> bs!526633 m!3339359))

(declare-fun m!3339403 () Bool)

(assert (=> bs!526633 m!3339403))

(declare-fun m!3339405 () Bool)

(assert (=> bs!526633 m!3339405))

(assert (=> b!2974158 d!842922))

(declare-fun d!842924 () Bool)

(declare-fun isEmpty!19262 (Option!6681) Bool)

(assert (=> d!842924 (= (isDefined!5232 (findConcatSeparation!1075 lt!1036729 lt!1036728 Nil!35021 s!11993 s!11993)) (not (isEmpty!19262 (findConcatSeparation!1075 lt!1036729 lt!1036728 Nil!35021 s!11993 s!11993))))))

(declare-fun bs!526634 () Bool)

(assert (= bs!526634 d!842924))

(assert (=> bs!526634 m!3339345))

(declare-fun m!3339407 () Bool)

(assert (=> bs!526634 m!3339407))

(assert (=> b!2974162 d!842924))

(declare-fun d!842926 () Bool)

(declare-fun choose!17586 (Int) Bool)

(assert (=> d!842926 (= (Exists!1560 lambda!110678) (choose!17586 lambda!110678))))

(declare-fun bs!526635 () Bool)

(assert (= bs!526635 d!842926))

(declare-fun m!3339421 () Bool)

(assert (=> bs!526635 m!3339421))

(assert (=> b!2974162 d!842926))

(declare-fun bs!526639 () Bool)

(declare-fun d!842928 () Bool)

(assert (= bs!526639 (and d!842928 b!2974162)))

(declare-fun lambda!110695 () Int)

(assert (=> bs!526639 (= lambda!110695 lambda!110677)))

(assert (=> bs!526639 (not (= lambda!110695 lambda!110678))))

(declare-fun bs!526640 () Bool)

(assert (= bs!526640 (and d!842928 b!2974282)))

(assert (=> bs!526640 (not (= lambda!110695 lambda!110691))))

(declare-fun bs!526641 () Bool)

(assert (= bs!526641 (and d!842928 b!2974279)))

(assert (=> bs!526641 (not (= lambda!110695 lambda!110692))))

(assert (=> d!842928 true))

(assert (=> d!842928 true))

(assert (=> d!842928 true))

(assert (=> d!842928 (= (isDefined!5232 (findConcatSeparation!1075 lt!1036729 lt!1036728 Nil!35021 s!11993 s!11993)) (Exists!1560 lambda!110695))))

(declare-fun lt!1036759 () Unit!48939)

(declare-fun choose!17587 (Regex!9280 Regex!9280 List!35145) Unit!48939)

(assert (=> d!842928 (= lt!1036759 (choose!17587 lt!1036729 lt!1036728 s!11993))))

(assert (=> d!842928 (validRegex!4013 lt!1036729)))

(assert (=> d!842928 (= (lemmaFindConcatSeparationEquivalentToExists!853 lt!1036729 lt!1036728 s!11993) lt!1036759)))

(declare-fun bs!526642 () Bool)

(assert (= bs!526642 d!842928))

(assert (=> bs!526642 m!3339345))

(assert (=> bs!526642 m!3339347))

(assert (=> bs!526642 m!3339349))

(declare-fun m!3339431 () Bool)

(assert (=> bs!526642 m!3339431))

(declare-fun m!3339433 () Bool)

(assert (=> bs!526642 m!3339433))

(assert (=> bs!526642 m!3339345))

(assert (=> b!2974162 d!842928))

(declare-fun d!842938 () Bool)

(assert (=> d!842938 (= (Exists!1560 lambda!110677) (choose!17586 lambda!110677))))

(declare-fun bs!526643 () Bool)

(assert (= bs!526643 d!842938))

(declare-fun m!3339435 () Bool)

(assert (=> bs!526643 m!3339435))

(assert (=> b!2974162 d!842938))

(declare-fun b!2974325 () Bool)

(declare-fun e!1871170 () Bool)

(declare-fun call!198240 () Bool)

(assert (=> b!2974325 (= e!1871170 call!198240)))

(declare-fun b!2974326 () Bool)

(declare-fun e!1871172 () Bool)

(declare-fun e!1871168 () Bool)

(assert (=> b!2974326 (= e!1871172 e!1871168)))

(declare-fun res!1226438 () Bool)

(assert (=> b!2974326 (=> (not res!1226438) (not e!1871168))))

(declare-fun call!198242 () Bool)

(assert (=> b!2974326 (= res!1226438 call!198242)))

(declare-fun bm!198235 () Bool)

(declare-fun c!488214 () Bool)

(declare-fun c!488213 () Bool)

(assert (=> bm!198235 (= call!198240 (validRegex!4013 (ite c!488213 (reg!9609 lt!1036729) (ite c!488214 (regTwo!19073 lt!1036729) (regOne!19072 lt!1036729)))))))

(declare-fun b!2974327 () Bool)

(declare-fun call!198241 () Bool)

(assert (=> b!2974327 (= e!1871168 call!198241)))

(declare-fun b!2974328 () Bool)

(declare-fun e!1871173 () Bool)

(declare-fun e!1871171 () Bool)

(assert (=> b!2974328 (= e!1871173 e!1871171)))

(assert (=> b!2974328 (= c!488213 (is-Star!9280 lt!1036729))))

(declare-fun b!2974329 () Bool)

(declare-fun res!1226435 () Bool)

(assert (=> b!2974329 (=> res!1226435 e!1871172)))

(assert (=> b!2974329 (= res!1226435 (not (is-Concat!14601 lt!1036729)))))

(declare-fun e!1871169 () Bool)

(assert (=> b!2974329 (= e!1871169 e!1871172)))

(declare-fun b!2974330 () Bool)

(declare-fun res!1226434 () Bool)

(declare-fun e!1871174 () Bool)

(assert (=> b!2974330 (=> (not res!1226434) (not e!1871174))))

(assert (=> b!2974330 (= res!1226434 call!198241)))

(assert (=> b!2974330 (= e!1871169 e!1871174)))

(declare-fun b!2974331 () Bool)

(assert (=> b!2974331 (= e!1871171 e!1871169)))

(assert (=> b!2974331 (= c!488214 (is-Union!9280 lt!1036729))))

(declare-fun b!2974332 () Bool)

(assert (=> b!2974332 (= e!1871171 e!1871170)))

(declare-fun res!1226437 () Bool)

(declare-fun nullable!2973 (Regex!9280) Bool)

(assert (=> b!2974332 (= res!1226437 (not (nullable!2973 (reg!9609 lt!1036729))))))

(assert (=> b!2974332 (=> (not res!1226437) (not e!1871170))))

(declare-fun d!842940 () Bool)

(declare-fun res!1226436 () Bool)

(assert (=> d!842940 (=> res!1226436 e!1871173)))

(assert (=> d!842940 (= res!1226436 (is-ElementMatch!9280 lt!1036729))))

(assert (=> d!842940 (= (validRegex!4013 lt!1036729) e!1871173)))

(declare-fun bm!198236 () Bool)

(assert (=> bm!198236 (= call!198241 (validRegex!4013 (ite c!488214 (regOne!19073 lt!1036729) (regTwo!19072 lt!1036729))))))

(declare-fun b!2974333 () Bool)

(assert (=> b!2974333 (= e!1871174 call!198242)))

(declare-fun bm!198237 () Bool)

(assert (=> bm!198237 (= call!198242 call!198240)))

(assert (= (and d!842940 (not res!1226436)) b!2974328))

(assert (= (and b!2974328 c!488213) b!2974332))

(assert (= (and b!2974328 (not c!488213)) b!2974331))

(assert (= (and b!2974332 res!1226437) b!2974325))

(assert (= (and b!2974331 c!488214) b!2974330))

(assert (= (and b!2974331 (not c!488214)) b!2974329))

(assert (= (and b!2974330 res!1226434) b!2974333))

(assert (= (and b!2974329 (not res!1226435)) b!2974326))

(assert (= (and b!2974326 res!1226438) b!2974327))

(assert (= (or b!2974330 b!2974327) bm!198236))

(assert (= (or b!2974333 b!2974326) bm!198237))

(assert (= (or b!2974325 bm!198237) bm!198235))

(declare-fun m!3339437 () Bool)

(assert (=> bm!198235 m!3339437))

(declare-fun m!3339439 () Bool)

(assert (=> b!2974332 m!3339439))

(declare-fun m!3339441 () Bool)

(assert (=> bm!198236 m!3339441))

(assert (=> b!2974162 d!842940))

(declare-fun bs!526644 () Bool)

(declare-fun d!842942 () Bool)

(assert (= bs!526644 (and d!842942 d!842928)))

(declare-fun lambda!110704 () Int)

(assert (=> bs!526644 (= (= (Star!9280 lt!1036729) lt!1036728) (= lambda!110704 lambda!110695))))

(declare-fun bs!526645 () Bool)

(assert (= bs!526645 (and d!842942 b!2974162)))

(assert (=> bs!526645 (= (= (Star!9280 lt!1036729) lt!1036728) (= lambda!110704 lambda!110677))))

(declare-fun bs!526646 () Bool)

(assert (= bs!526646 (and d!842942 b!2974282)))

(assert (=> bs!526646 (not (= lambda!110704 lambda!110691))))

(assert (=> bs!526645 (not (= lambda!110704 lambda!110678))))

(declare-fun bs!526647 () Bool)

(assert (= bs!526647 (and d!842942 b!2974279)))

(assert (=> bs!526647 (not (= lambda!110704 lambda!110692))))

(assert (=> d!842942 true))

(assert (=> d!842942 true))

(declare-fun bs!526648 () Bool)

(assert (= bs!526648 d!842942))

(declare-fun lambda!110705 () Int)

(assert (=> bs!526648 (not (= lambda!110705 lambda!110704))))

(assert (=> bs!526644 (not (= lambda!110705 lambda!110695))))

(assert (=> bs!526645 (not (= lambda!110705 lambda!110677))))

(assert (=> bs!526646 (= (and (= lt!1036729 (reg!9609 lt!1036728)) (= (Star!9280 lt!1036729) lt!1036728)) (= lambda!110705 lambda!110691))))

(assert (=> bs!526645 (= (= (Star!9280 lt!1036729) lt!1036728) (= lambda!110705 lambda!110678))))

(assert (=> bs!526647 (not (= lambda!110705 lambda!110692))))

(assert (=> d!842942 true))

(assert (=> d!842942 true))

(assert (=> d!842942 (= (Exists!1560 lambda!110704) (Exists!1560 lambda!110705))))

(declare-fun lt!1036764 () Unit!48939)

(declare-fun choose!17588 (Regex!9280 List!35145) Unit!48939)

(assert (=> d!842942 (= lt!1036764 (choose!17588 lt!1036729 s!11993))))

(assert (=> d!842942 (validRegex!4013 lt!1036729)))

(assert (=> d!842942 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!245 lt!1036729 s!11993) lt!1036764)))

(declare-fun m!3339443 () Bool)

(assert (=> bs!526648 m!3339443))

(declare-fun m!3339445 () Bool)

(assert (=> bs!526648 m!3339445))

(declare-fun m!3339447 () Bool)

(assert (=> bs!526648 m!3339447))

(assert (=> bs!526648 m!3339349))

(assert (=> b!2974162 d!842942))

(declare-fun b!2974372 () Bool)

(declare-fun e!1871195 () Option!6681)

(assert (=> b!2974372 (= e!1871195 None!6680)))

(declare-fun b!2974373 () Bool)

(declare-fun res!1226470 () Bool)

(declare-fun e!1871193 () Bool)

(assert (=> b!2974373 (=> (not res!1226470) (not e!1871193))))

(declare-fun lt!1036773 () Option!6681)

(declare-fun get!10791 (Option!6681) tuple2!33898)

(assert (=> b!2974373 (= res!1226470 (matchR!4162 lt!1036729 (_1!20081 (get!10791 lt!1036773))))))

(declare-fun d!842944 () Bool)

(declare-fun e!1871197 () Bool)

(assert (=> d!842944 e!1871197))

(declare-fun res!1226469 () Bool)

(assert (=> d!842944 (=> res!1226469 e!1871197)))

(assert (=> d!842944 (= res!1226469 e!1871193)))

(declare-fun res!1226473 () Bool)

(assert (=> d!842944 (=> (not res!1226473) (not e!1871193))))

(assert (=> d!842944 (= res!1226473 (isDefined!5232 lt!1036773))))

(declare-fun e!1871196 () Option!6681)

(assert (=> d!842944 (= lt!1036773 e!1871196)))

(declare-fun c!488219 () Bool)

(declare-fun e!1871194 () Bool)

(assert (=> d!842944 (= c!488219 e!1871194)))

(declare-fun res!1226472 () Bool)

(assert (=> d!842944 (=> (not res!1226472) (not e!1871194))))

(assert (=> d!842944 (= res!1226472 (matchR!4162 lt!1036729 Nil!35021))))

(assert (=> d!842944 (validRegex!4013 lt!1036729)))

(assert (=> d!842944 (= (findConcatSeparation!1075 lt!1036729 lt!1036728 Nil!35021 s!11993 s!11993) lt!1036773)))

(declare-fun b!2974374 () Bool)

(assert (=> b!2974374 (= e!1871194 (matchR!4162 lt!1036728 s!11993))))

(declare-fun b!2974375 () Bool)

(assert (=> b!2974375 (= e!1871197 (not (isDefined!5232 lt!1036773)))))

(declare-fun b!2974376 () Bool)

(declare-fun lt!1036774 () Unit!48939)

(declare-fun lt!1036772 () Unit!48939)

(assert (=> b!2974376 (= lt!1036774 lt!1036772)))

(declare-fun ++!8348 (List!35145 List!35145) List!35145)

(assert (=> b!2974376 (= (++!8348 (++!8348 Nil!35021 (Cons!35021 (h!40441 s!11993) Nil!35021)) (t!234210 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!967 (List!35145 C!18746 List!35145 List!35145) Unit!48939)

(assert (=> b!2974376 (= lt!1036772 (lemmaMoveElementToOtherListKeepsConcatEq!967 Nil!35021 (h!40441 s!11993) (t!234210 s!11993) s!11993))))

(assert (=> b!2974376 (= e!1871195 (findConcatSeparation!1075 lt!1036729 lt!1036728 (++!8348 Nil!35021 (Cons!35021 (h!40441 s!11993) Nil!35021)) (t!234210 s!11993) s!11993))))

(declare-fun b!2974377 () Bool)

(declare-fun res!1226471 () Bool)

(assert (=> b!2974377 (=> (not res!1226471) (not e!1871193))))

(assert (=> b!2974377 (= res!1226471 (matchR!4162 lt!1036728 (_2!20081 (get!10791 lt!1036773))))))

(declare-fun b!2974378 () Bool)

(assert (=> b!2974378 (= e!1871193 (= (++!8348 (_1!20081 (get!10791 lt!1036773)) (_2!20081 (get!10791 lt!1036773))) s!11993))))

(declare-fun b!2974379 () Bool)

(assert (=> b!2974379 (= e!1871196 e!1871195)))

(declare-fun c!488220 () Bool)

(assert (=> b!2974379 (= c!488220 (is-Nil!35021 s!11993))))

(declare-fun b!2974380 () Bool)

(assert (=> b!2974380 (= e!1871196 (Some!6680 (tuple2!33899 Nil!35021 s!11993)))))

(assert (= (and d!842944 res!1226472) b!2974374))

(assert (= (and d!842944 c!488219) b!2974380))

(assert (= (and d!842944 (not c!488219)) b!2974379))

(assert (= (and b!2974379 c!488220) b!2974372))

(assert (= (and b!2974379 (not c!488220)) b!2974376))

(assert (= (and d!842944 res!1226473) b!2974373))

(assert (= (and b!2974373 res!1226470) b!2974377))

(assert (= (and b!2974377 res!1226471) b!2974378))

(assert (= (and d!842944 (not res!1226469)) b!2974375))

(declare-fun m!3339455 () Bool)

(assert (=> b!2974376 m!3339455))

(assert (=> b!2974376 m!3339455))

(declare-fun m!3339457 () Bool)

(assert (=> b!2974376 m!3339457))

(declare-fun m!3339459 () Bool)

(assert (=> b!2974376 m!3339459))

(assert (=> b!2974376 m!3339455))

(declare-fun m!3339461 () Bool)

(assert (=> b!2974376 m!3339461))

(assert (=> b!2974374 m!3339339))

(declare-fun m!3339463 () Bool)

(assert (=> b!2974375 m!3339463))

(assert (=> d!842944 m!3339463))

(declare-fun m!3339465 () Bool)

(assert (=> d!842944 m!3339465))

(assert (=> d!842944 m!3339349))

(declare-fun m!3339467 () Bool)

(assert (=> b!2974378 m!3339467))

(declare-fun m!3339469 () Bool)

(assert (=> b!2974378 m!3339469))

(assert (=> b!2974373 m!3339467))

(declare-fun m!3339471 () Bool)

(assert (=> b!2974373 m!3339471))

(assert (=> b!2974377 m!3339467))

(declare-fun m!3339473 () Bool)

(assert (=> b!2974377 m!3339473))

(assert (=> b!2974162 d!842944))

(declare-fun bs!526651 () Bool)

(declare-fun b!2974385 () Bool)

(assert (= bs!526651 (and b!2974385 d!842942)))

(declare-fun lambda!110708 () Int)

(assert (=> bs!526651 (not (= lambda!110708 lambda!110704))))

(declare-fun bs!526652 () Bool)

(assert (= bs!526652 (and b!2974385 d!842928)))

(assert (=> bs!526652 (not (= lambda!110708 lambda!110695))))

(declare-fun bs!526653 () Bool)

(assert (= bs!526653 (and b!2974385 b!2974162)))

(assert (=> bs!526653 (not (= lambda!110708 lambda!110677))))

(declare-fun bs!526654 () Bool)

(assert (= bs!526654 (and b!2974385 b!2974282)))

(assert (=> bs!526654 (= (and (= (reg!9609 r!17423) (reg!9609 lt!1036728)) (= r!17423 lt!1036728)) (= lambda!110708 lambda!110691))))

(assert (=> bs!526653 (= (and (= (reg!9609 r!17423) lt!1036729) (= r!17423 lt!1036728)) (= lambda!110708 lambda!110678))))

(assert (=> bs!526651 (= (and (= (reg!9609 r!17423) lt!1036729) (= r!17423 (Star!9280 lt!1036729))) (= lambda!110708 lambda!110705))))

(declare-fun bs!526655 () Bool)

(assert (= bs!526655 (and b!2974385 b!2974279)))

(assert (=> bs!526655 (not (= lambda!110708 lambda!110692))))

(assert (=> b!2974385 true))

(assert (=> b!2974385 true))

(declare-fun bs!526656 () Bool)

(declare-fun b!2974382 () Bool)

(assert (= bs!526656 (and b!2974382 b!2974385)))

(declare-fun lambda!110709 () Int)

(assert (=> bs!526656 (not (= lambda!110709 lambda!110708))))

(declare-fun bs!526657 () Bool)

(assert (= bs!526657 (and b!2974382 d!842942)))

(assert (=> bs!526657 (not (= lambda!110709 lambda!110704))))

(declare-fun bs!526658 () Bool)

(assert (= bs!526658 (and b!2974382 d!842928)))

(assert (=> bs!526658 (not (= lambda!110709 lambda!110695))))

(declare-fun bs!526659 () Bool)

(assert (= bs!526659 (and b!2974382 b!2974162)))

(assert (=> bs!526659 (not (= lambda!110709 lambda!110677))))

(declare-fun bs!526660 () Bool)

(assert (= bs!526660 (and b!2974382 b!2974282)))

(assert (=> bs!526660 (not (= lambda!110709 lambda!110691))))

(assert (=> bs!526659 (not (= lambda!110709 lambda!110678))))

(assert (=> bs!526657 (not (= lambda!110709 lambda!110705))))

(declare-fun bs!526661 () Bool)

(assert (= bs!526661 (and b!2974382 b!2974279)))

(assert (=> bs!526661 (= (and (= (regOne!19072 r!17423) (regOne!19072 lt!1036728)) (= (regTwo!19072 r!17423) (regTwo!19072 lt!1036728))) (= lambda!110709 lambda!110692))))

(assert (=> b!2974382 true))

(assert (=> b!2974382 true))

(declare-fun d!842948 () Bool)

(declare-fun c!488223 () Bool)

(assert (=> d!842948 (= c!488223 (is-EmptyExpr!9280 r!17423))))

(declare-fun e!1871201 () Bool)

(assert (=> d!842948 (= (matchRSpec!1417 r!17423 s!11993) e!1871201)))

(declare-fun b!2974381 () Bool)

(declare-fun c!488224 () Bool)

(assert (=> b!2974381 (= c!488224 (is-Union!9280 r!17423))))

(declare-fun e!1871203 () Bool)

(declare-fun e!1871199 () Bool)

(assert (=> b!2974381 (= e!1871203 e!1871199)))

(declare-fun e!1871200 () Bool)

(declare-fun call!198243 () Bool)

(assert (=> b!2974382 (= e!1871200 call!198243)))

(declare-fun b!2974383 () Bool)

(declare-fun e!1871204 () Bool)

(assert (=> b!2974383 (= e!1871204 (matchRSpec!1417 (regTwo!19073 r!17423) s!11993))))

(declare-fun bm!198238 () Bool)

(declare-fun call!198244 () Bool)

(assert (=> bm!198238 (= call!198244 (isEmpty!19260 s!11993))))

(declare-fun bm!198239 () Bool)

(declare-fun c!488222 () Bool)

(assert (=> bm!198239 (= call!198243 (Exists!1560 (ite c!488222 lambda!110708 lambda!110709)))))

(declare-fun b!2974384 () Bool)

(assert (=> b!2974384 (= e!1871201 call!198244)))

(declare-fun e!1871198 () Bool)

(assert (=> b!2974385 (= e!1871198 call!198243)))

(declare-fun b!2974386 () Bool)

(declare-fun c!488221 () Bool)

(assert (=> b!2974386 (= c!488221 (is-ElementMatch!9280 r!17423))))

(declare-fun e!1871202 () Bool)

(assert (=> b!2974386 (= e!1871202 e!1871203)))

(declare-fun b!2974387 () Bool)

(declare-fun res!1226476 () Bool)

(assert (=> b!2974387 (=> res!1226476 e!1871198)))

(assert (=> b!2974387 (= res!1226476 call!198244)))

(assert (=> b!2974387 (= e!1871200 e!1871198)))

(declare-fun b!2974388 () Bool)

(assert (=> b!2974388 (= e!1871201 e!1871202)))

(declare-fun res!1226475 () Bool)

(assert (=> b!2974388 (= res!1226475 (not (is-EmptyLang!9280 r!17423)))))

(assert (=> b!2974388 (=> (not res!1226475) (not e!1871202))))

(declare-fun b!2974389 () Bool)

(assert (=> b!2974389 (= e!1871199 e!1871204)))

(declare-fun res!1226474 () Bool)

(assert (=> b!2974389 (= res!1226474 (matchRSpec!1417 (regOne!19073 r!17423) s!11993))))

(assert (=> b!2974389 (=> res!1226474 e!1871204)))

(declare-fun b!2974390 () Bool)

(assert (=> b!2974390 (= e!1871199 e!1871200)))

(assert (=> b!2974390 (= c!488222 (is-Star!9280 r!17423))))

(declare-fun b!2974391 () Bool)

(assert (=> b!2974391 (= e!1871203 (= s!11993 (Cons!35021 (c!488186 r!17423) Nil!35021)))))

(assert (= (and d!842948 c!488223) b!2974384))

(assert (= (and d!842948 (not c!488223)) b!2974388))

(assert (= (and b!2974388 res!1226475) b!2974386))

(assert (= (and b!2974386 c!488221) b!2974391))

(assert (= (and b!2974386 (not c!488221)) b!2974381))

(assert (= (and b!2974381 c!488224) b!2974389))

(assert (= (and b!2974381 (not c!488224)) b!2974390))

(assert (= (and b!2974389 (not res!1226474)) b!2974383))

(assert (= (and b!2974390 c!488222) b!2974387))

(assert (= (and b!2974390 (not c!488222)) b!2974382))

(assert (= (and b!2974387 (not res!1226476)) b!2974385))

(assert (= (or b!2974385 b!2974382) bm!198239))

(assert (= (or b!2974384 b!2974387) bm!198238))

(declare-fun m!3339475 () Bool)

(assert (=> b!2974383 m!3339475))

(assert (=> bm!198238 m!3339357))

(declare-fun m!3339477 () Bool)

(assert (=> bm!198239 m!3339477))

(declare-fun m!3339479 () Bool)

(assert (=> b!2974389 m!3339479))

(assert (=> b!2974165 d!842948))

(declare-fun b!2974424 () Bool)

(declare-fun res!1226504 () Bool)

(declare-fun e!1871224 () Bool)

(assert (=> b!2974424 (=> res!1226504 e!1871224)))

(declare-fun e!1871227 () Bool)

(assert (=> b!2974424 (= res!1226504 e!1871227)))

(declare-fun res!1226501 () Bool)

(assert (=> b!2974424 (=> (not res!1226501) (not e!1871227))))

(declare-fun lt!1036780 () Bool)

(assert (=> b!2974424 (= res!1226501 lt!1036780)))

(declare-fun b!2974425 () Bool)

(declare-fun e!1871223 () Bool)

(declare-fun e!1871226 () Bool)

(assert (=> b!2974425 (= e!1871223 e!1871226)))

(declare-fun c!488231 () Bool)

(assert (=> b!2974425 (= c!488231 (is-EmptyLang!9280 r!17423))))

(declare-fun b!2974426 () Bool)

(declare-fun res!1226497 () Bool)

(assert (=> b!2974426 (=> (not res!1226497) (not e!1871227))))

(declare-fun tail!4858 (List!35145) List!35145)

(assert (=> b!2974426 (= res!1226497 (isEmpty!19260 (tail!4858 s!11993)))))

(declare-fun b!2974427 () Bool)

(declare-fun e!1871221 () Bool)

(declare-fun head!6632 (List!35145) C!18746)

(assert (=> b!2974427 (= e!1871221 (not (= (head!6632 s!11993) (c!488186 r!17423))))))

(declare-fun b!2974428 () Bool)

(assert (=> b!2974428 (= e!1871227 (= (head!6632 s!11993) (c!488186 r!17423)))))

(declare-fun b!2974429 () Bool)

(declare-fun e!1871225 () Bool)

(assert (=> b!2974429 (= e!1871225 e!1871221)))

(declare-fun res!1226498 () Bool)

(assert (=> b!2974429 (=> res!1226498 e!1871221)))

(declare-fun call!198247 () Bool)

(assert (=> b!2974429 (= res!1226498 call!198247)))

(declare-fun b!2974430 () Bool)

(assert (=> b!2974430 (= e!1871224 e!1871225)))

(declare-fun res!1226503 () Bool)

(assert (=> b!2974430 (=> (not res!1226503) (not e!1871225))))

(assert (=> b!2974430 (= res!1226503 (not lt!1036780))))

(declare-fun b!2974431 () Bool)

(declare-fun res!1226499 () Bool)

(assert (=> b!2974431 (=> (not res!1226499) (not e!1871227))))

(assert (=> b!2974431 (= res!1226499 (not call!198247))))

(declare-fun b!2974432 () Bool)

(declare-fun res!1226502 () Bool)

(assert (=> b!2974432 (=> res!1226502 e!1871221)))

(assert (=> b!2974432 (= res!1226502 (not (isEmpty!19260 (tail!4858 s!11993))))))

(declare-fun d!842950 () Bool)

(assert (=> d!842950 e!1871223))

(declare-fun c!488233 () Bool)

(assert (=> d!842950 (= c!488233 (is-EmptyExpr!9280 r!17423))))

(declare-fun e!1871222 () Bool)

(assert (=> d!842950 (= lt!1036780 e!1871222)))

(declare-fun c!488232 () Bool)

(assert (=> d!842950 (= c!488232 (isEmpty!19260 s!11993))))

(assert (=> d!842950 (validRegex!4013 r!17423)))

(assert (=> d!842950 (= (matchR!4162 r!17423 s!11993) lt!1036780)))

(declare-fun b!2974433 () Bool)

(assert (=> b!2974433 (= e!1871223 (= lt!1036780 call!198247))))

(declare-fun bm!198242 () Bool)

(assert (=> bm!198242 (= call!198247 (isEmpty!19260 s!11993))))

(declare-fun b!2974434 () Bool)

(declare-fun derivativeStep!2573 (Regex!9280 C!18746) Regex!9280)

(assert (=> b!2974434 (= e!1871222 (matchR!4162 (derivativeStep!2573 r!17423 (head!6632 s!11993)) (tail!4858 s!11993)))))

(declare-fun b!2974435 () Bool)

(declare-fun res!1226500 () Bool)

(assert (=> b!2974435 (=> res!1226500 e!1871224)))

(assert (=> b!2974435 (= res!1226500 (not (is-ElementMatch!9280 r!17423)))))

(assert (=> b!2974435 (= e!1871226 e!1871224)))

(declare-fun b!2974436 () Bool)

(assert (=> b!2974436 (= e!1871226 (not lt!1036780))))

(declare-fun b!2974437 () Bool)

(assert (=> b!2974437 (= e!1871222 (nullable!2973 r!17423))))

(assert (= (and d!842950 c!488232) b!2974437))

(assert (= (and d!842950 (not c!488232)) b!2974434))

(assert (= (and d!842950 c!488233) b!2974433))

(assert (= (and d!842950 (not c!488233)) b!2974425))

(assert (= (and b!2974425 c!488231) b!2974436))

(assert (= (and b!2974425 (not c!488231)) b!2974435))

(assert (= (and b!2974435 (not res!1226500)) b!2974424))

(assert (= (and b!2974424 res!1226501) b!2974431))

(assert (= (and b!2974431 res!1226499) b!2974426))

(assert (= (and b!2974426 res!1226497) b!2974428))

(assert (= (and b!2974424 (not res!1226504)) b!2974430))

(assert (= (and b!2974430 res!1226503) b!2974429))

(assert (= (and b!2974429 (not res!1226498)) b!2974432))

(assert (= (and b!2974432 (not res!1226502)) b!2974427))

(assert (= (or b!2974433 b!2974429 b!2974431) bm!198242))

(declare-fun m!3339485 () Bool)

(assert (=> b!2974437 m!3339485))

(declare-fun m!3339487 () Bool)

(assert (=> b!2974428 m!3339487))

(assert (=> b!2974427 m!3339487))

(assert (=> bm!198242 m!3339357))

(declare-fun m!3339489 () Bool)

(assert (=> b!2974432 m!3339489))

(assert (=> b!2974432 m!3339489))

(declare-fun m!3339491 () Bool)

(assert (=> b!2974432 m!3339491))

(assert (=> b!2974426 m!3339489))

(assert (=> b!2974426 m!3339489))

(assert (=> b!2974426 m!3339491))

(assert (=> d!842950 m!3339357))

(assert (=> d!842950 m!3339341))

(assert (=> b!2974434 m!3339487))

(assert (=> b!2974434 m!3339487))

(declare-fun m!3339493 () Bool)

(assert (=> b!2974434 m!3339493))

(assert (=> b!2974434 m!3339489))

(assert (=> b!2974434 m!3339493))

(assert (=> b!2974434 m!3339489))

(declare-fun m!3339495 () Bool)

(assert (=> b!2974434 m!3339495))

(assert (=> b!2974165 d!842950))

(declare-fun d!842954 () Bool)

(assert (=> d!842954 (= (matchR!4162 r!17423 s!11993) (matchRSpec!1417 r!17423 s!11993))))

(declare-fun lt!1036781 () Unit!48939)

(assert (=> d!842954 (= lt!1036781 (choose!17585 r!17423 s!11993))))

(assert (=> d!842954 (validRegex!4013 r!17423)))

(assert (=> d!842954 (= (mainMatchTheorem!1417 r!17423 s!11993) lt!1036781)))

(declare-fun bs!526665 () Bool)

(assert (= bs!526665 d!842954))

(assert (=> bs!526665 m!3339331))

(assert (=> bs!526665 m!3339329))

(declare-fun m!3339497 () Bool)

(assert (=> bs!526665 m!3339497))

(assert (=> bs!526665 m!3339341))

(assert (=> b!2974165 d!842954))

(declare-fun b!2974438 () Bool)

(declare-fun e!1871230 () Bool)

(declare-fun call!198248 () Bool)

(assert (=> b!2974438 (= e!1871230 call!198248)))

(declare-fun b!2974439 () Bool)

(declare-fun e!1871232 () Bool)

(declare-fun e!1871228 () Bool)

(assert (=> b!2974439 (= e!1871232 e!1871228)))

(declare-fun res!1226509 () Bool)

(assert (=> b!2974439 (=> (not res!1226509) (not e!1871228))))

(declare-fun call!198250 () Bool)

(assert (=> b!2974439 (= res!1226509 call!198250)))

(declare-fun c!488235 () Bool)

(declare-fun c!488234 () Bool)

(declare-fun bm!198243 () Bool)

(assert (=> bm!198243 (= call!198248 (validRegex!4013 (ite c!488234 (reg!9609 r!17423) (ite c!488235 (regTwo!19073 r!17423) (regOne!19072 r!17423)))))))

(declare-fun b!2974440 () Bool)

(declare-fun call!198249 () Bool)

(assert (=> b!2974440 (= e!1871228 call!198249)))

(declare-fun b!2974441 () Bool)

(declare-fun e!1871233 () Bool)

(declare-fun e!1871231 () Bool)

(assert (=> b!2974441 (= e!1871233 e!1871231)))

(assert (=> b!2974441 (= c!488234 (is-Star!9280 r!17423))))

(declare-fun b!2974442 () Bool)

(declare-fun res!1226506 () Bool)

(assert (=> b!2974442 (=> res!1226506 e!1871232)))

(assert (=> b!2974442 (= res!1226506 (not (is-Concat!14601 r!17423)))))

(declare-fun e!1871229 () Bool)

(assert (=> b!2974442 (= e!1871229 e!1871232)))

(declare-fun b!2974443 () Bool)

(declare-fun res!1226505 () Bool)

(declare-fun e!1871234 () Bool)

(assert (=> b!2974443 (=> (not res!1226505) (not e!1871234))))

(assert (=> b!2974443 (= res!1226505 call!198249)))

(assert (=> b!2974443 (= e!1871229 e!1871234)))

(declare-fun b!2974444 () Bool)

(assert (=> b!2974444 (= e!1871231 e!1871229)))

(assert (=> b!2974444 (= c!488235 (is-Union!9280 r!17423))))

(declare-fun b!2974445 () Bool)

(assert (=> b!2974445 (= e!1871231 e!1871230)))

(declare-fun res!1226508 () Bool)

(assert (=> b!2974445 (= res!1226508 (not (nullable!2973 (reg!9609 r!17423))))))

(assert (=> b!2974445 (=> (not res!1226508) (not e!1871230))))

(declare-fun d!842956 () Bool)

(declare-fun res!1226507 () Bool)

(assert (=> d!842956 (=> res!1226507 e!1871233)))

(assert (=> d!842956 (= res!1226507 (is-ElementMatch!9280 r!17423))))

(assert (=> d!842956 (= (validRegex!4013 r!17423) e!1871233)))

(declare-fun bm!198244 () Bool)

(assert (=> bm!198244 (= call!198249 (validRegex!4013 (ite c!488235 (regOne!19073 r!17423) (regTwo!19072 r!17423))))))

(declare-fun b!2974446 () Bool)

(assert (=> b!2974446 (= e!1871234 call!198250)))

(declare-fun bm!198245 () Bool)

(assert (=> bm!198245 (= call!198250 call!198248)))

(assert (= (and d!842956 (not res!1226507)) b!2974441))

(assert (= (and b!2974441 c!488234) b!2974445))

(assert (= (and b!2974441 (not c!488234)) b!2974444))

(assert (= (and b!2974445 res!1226508) b!2974438))

(assert (= (and b!2974444 c!488235) b!2974443))

(assert (= (and b!2974444 (not c!488235)) b!2974442))

(assert (= (and b!2974443 res!1226505) b!2974446))

(assert (= (and b!2974442 (not res!1226506)) b!2974439))

(assert (= (and b!2974439 res!1226509) b!2974440))

(assert (= (or b!2974443 b!2974440) bm!198244))

(assert (= (or b!2974446 b!2974439) bm!198245))

(assert (= (or b!2974438 bm!198245) bm!198243))

(declare-fun m!3339499 () Bool)

(assert (=> bm!198243 m!3339499))

(declare-fun m!3339501 () Bool)

(assert (=> b!2974445 m!3339501))

(declare-fun m!3339503 () Bool)

(assert (=> bm!198244 m!3339503))

(assert (=> start!287606 d!842956))

(declare-fun b!2974447 () Bool)

(declare-fun res!1226517 () Bool)

(declare-fun e!1871238 () Bool)

(assert (=> b!2974447 (=> res!1226517 e!1871238)))

(declare-fun e!1871241 () Bool)

(assert (=> b!2974447 (= res!1226517 e!1871241)))

(declare-fun res!1226514 () Bool)

(assert (=> b!2974447 (=> (not res!1226514) (not e!1871241))))

(declare-fun lt!1036782 () Bool)

(assert (=> b!2974447 (= res!1226514 lt!1036782)))

(declare-fun b!2974448 () Bool)

(declare-fun e!1871237 () Bool)

(declare-fun e!1871240 () Bool)

(assert (=> b!2974448 (= e!1871237 e!1871240)))

(declare-fun c!488236 () Bool)

(assert (=> b!2974448 (= c!488236 (is-EmptyLang!9280 lt!1036728))))

(declare-fun b!2974449 () Bool)

(declare-fun res!1226510 () Bool)

(assert (=> b!2974449 (=> (not res!1226510) (not e!1871241))))

(assert (=> b!2974449 (= res!1226510 (isEmpty!19260 (tail!4858 s!11993)))))

(declare-fun b!2974450 () Bool)

(declare-fun e!1871235 () Bool)

(assert (=> b!2974450 (= e!1871235 (not (= (head!6632 s!11993) (c!488186 lt!1036728))))))

(declare-fun b!2974451 () Bool)

(assert (=> b!2974451 (= e!1871241 (= (head!6632 s!11993) (c!488186 lt!1036728)))))

(declare-fun b!2974452 () Bool)

(declare-fun e!1871239 () Bool)

(assert (=> b!2974452 (= e!1871239 e!1871235)))

(declare-fun res!1226511 () Bool)

(assert (=> b!2974452 (=> res!1226511 e!1871235)))

(declare-fun call!198251 () Bool)

(assert (=> b!2974452 (= res!1226511 call!198251)))

(declare-fun b!2974453 () Bool)

(assert (=> b!2974453 (= e!1871238 e!1871239)))

(declare-fun res!1226516 () Bool)

(assert (=> b!2974453 (=> (not res!1226516) (not e!1871239))))

(assert (=> b!2974453 (= res!1226516 (not lt!1036782))))

(declare-fun b!2974454 () Bool)

(declare-fun res!1226512 () Bool)

(assert (=> b!2974454 (=> (not res!1226512) (not e!1871241))))

(assert (=> b!2974454 (= res!1226512 (not call!198251))))

(declare-fun b!2974455 () Bool)

(declare-fun res!1226515 () Bool)

(assert (=> b!2974455 (=> res!1226515 e!1871235)))

(assert (=> b!2974455 (= res!1226515 (not (isEmpty!19260 (tail!4858 s!11993))))))

(declare-fun d!842958 () Bool)

(assert (=> d!842958 e!1871237))

(declare-fun c!488238 () Bool)

(assert (=> d!842958 (= c!488238 (is-EmptyExpr!9280 lt!1036728))))

(declare-fun e!1871236 () Bool)

(assert (=> d!842958 (= lt!1036782 e!1871236)))

(declare-fun c!488237 () Bool)

(assert (=> d!842958 (= c!488237 (isEmpty!19260 s!11993))))

(assert (=> d!842958 (validRegex!4013 lt!1036728)))

(assert (=> d!842958 (= (matchR!4162 lt!1036728 s!11993) lt!1036782)))

(declare-fun b!2974456 () Bool)

(assert (=> b!2974456 (= e!1871237 (= lt!1036782 call!198251))))

(declare-fun bm!198246 () Bool)

(assert (=> bm!198246 (= call!198251 (isEmpty!19260 s!11993))))

(declare-fun b!2974457 () Bool)

(assert (=> b!2974457 (= e!1871236 (matchR!4162 (derivativeStep!2573 lt!1036728 (head!6632 s!11993)) (tail!4858 s!11993)))))

(declare-fun b!2974458 () Bool)

(declare-fun res!1226513 () Bool)

(assert (=> b!2974458 (=> res!1226513 e!1871238)))

(assert (=> b!2974458 (= res!1226513 (not (is-ElementMatch!9280 lt!1036728)))))

(assert (=> b!2974458 (= e!1871240 e!1871238)))

(declare-fun b!2974459 () Bool)

(assert (=> b!2974459 (= e!1871240 (not lt!1036782))))

(declare-fun b!2974460 () Bool)

(assert (=> b!2974460 (= e!1871236 (nullable!2973 lt!1036728))))

(assert (= (and d!842958 c!488237) b!2974460))

(assert (= (and d!842958 (not c!488237)) b!2974457))

(assert (= (and d!842958 c!488238) b!2974456))

(assert (= (and d!842958 (not c!488238)) b!2974448))

(assert (= (and b!2974448 c!488236) b!2974459))

(assert (= (and b!2974448 (not c!488236)) b!2974458))

(assert (= (and b!2974458 (not res!1226513)) b!2974447))

(assert (= (and b!2974447 res!1226514) b!2974454))

(assert (= (and b!2974454 res!1226512) b!2974449))

(assert (= (and b!2974449 res!1226510) b!2974451))

(assert (= (and b!2974447 (not res!1226517)) b!2974453))

(assert (= (and b!2974453 res!1226516) b!2974452))

(assert (= (and b!2974452 (not res!1226511)) b!2974455))

(assert (= (and b!2974455 (not res!1226515)) b!2974450))

(assert (= (or b!2974456 b!2974452 b!2974454) bm!198246))

(declare-fun m!3339505 () Bool)

(assert (=> b!2974460 m!3339505))

(assert (=> b!2974451 m!3339487))

(assert (=> b!2974450 m!3339487))

(assert (=> bm!198246 m!3339357))

(assert (=> b!2974455 m!3339489))

(assert (=> b!2974455 m!3339489))

(assert (=> b!2974455 m!3339491))

(assert (=> b!2974449 m!3339489))

(assert (=> b!2974449 m!3339489))

(assert (=> b!2974449 m!3339491))

(assert (=> d!842958 m!3339357))

(assert (=> d!842958 m!3339405))

(assert (=> b!2974457 m!3339487))

(assert (=> b!2974457 m!3339487))

(declare-fun m!3339507 () Bool)

(assert (=> b!2974457 m!3339507))

(assert (=> b!2974457 m!3339489))

(assert (=> b!2974457 m!3339507))

(assert (=> b!2974457 m!3339489))

(declare-fun m!3339509 () Bool)

(assert (=> b!2974457 m!3339509))

(assert (=> b!2974164 d!842958))

(declare-fun d!842960 () Bool)

(assert (=> d!842960 (= (isEmptyLang!394 lt!1036729) (is-EmptyLang!9280 lt!1036729))))

(assert (=> b!2974159 d!842960))

(declare-fun bm!198261 () Bool)

(declare-fun lt!1036805 () Regex!9280)

(declare-fun lt!1036803 () Regex!9280)

(declare-fun call!198266 () Bool)

(declare-fun c!488270 () Bool)

(declare-fun c!488275 () Bool)

(declare-fun lt!1036802 () Regex!9280)

(assert (=> bm!198261 (= call!198266 (isEmptyLang!394 (ite c!488270 lt!1036802 (ite c!488275 lt!1036805 lt!1036803))))))

(declare-fun b!2974529 () Bool)

(declare-fun e!1871282 () Regex!9280)

(assert (=> b!2974529 (= e!1871282 EmptyLang!9280)))

(declare-fun b!2974530 () Bool)

(declare-fun e!1871284 () Regex!9280)

(assert (=> b!2974530 (= e!1871284 lt!1036805)))

(declare-fun b!2974531 () Bool)

(declare-fun e!1871293 () Regex!9280)

(declare-fun e!1871287 () Regex!9280)

(assert (=> b!2974531 (= e!1871293 e!1871287)))

(assert (=> b!2974531 (= c!488270 (is-Star!9280 (reg!9609 r!17423)))))

(declare-fun b!2974532 () Bool)

(declare-fun c!488265 () Bool)

(declare-fun call!198270 () Bool)

(assert (=> b!2974532 (= c!488265 call!198270)))

(declare-fun e!1871292 () Regex!9280)

(assert (=> b!2974532 (= e!1871284 e!1871292)))

(declare-fun b!2974533 () Bool)

(declare-fun lt!1036806 () Regex!9280)

(assert (=> b!2974533 (= e!1871292 lt!1036806)))

(declare-fun bm!198262 () Bool)

(declare-fun call!198269 () Regex!9280)

(declare-fun call!198272 () Regex!9280)

(assert (=> bm!198262 (= call!198269 call!198272)))

(declare-fun b!2974534 () Bool)

(declare-fun e!1871291 () Regex!9280)

(assert (=> b!2974534 (= e!1871291 lt!1036803)))

(declare-fun b!2974535 () Bool)

(declare-fun e!1871290 () Regex!9280)

(assert (=> b!2974535 (= e!1871290 EmptyLang!9280)))

(declare-fun b!2974536 () Bool)

(declare-fun c!488267 () Bool)

(assert (=> b!2974536 (= c!488267 (is-EmptyExpr!9280 (reg!9609 r!17423)))))

(declare-fun e!1871286 () Regex!9280)

(assert (=> b!2974536 (= e!1871286 e!1871293)))

(declare-fun b!2974537 () Bool)

(declare-fun e!1871285 () Regex!9280)

(assert (=> b!2974537 (= e!1871291 e!1871285)))

(declare-fun c!488271 () Bool)

(declare-fun call!198271 () Bool)

(assert (=> b!2974537 (= c!488271 call!198271)))

(declare-fun b!2974538 () Bool)

(assert (=> b!2974538 (= e!1871293 EmptyExpr!9280)))

(declare-fun b!2974539 () Bool)

(declare-fun e!1871283 () Regex!9280)

(assert (=> b!2974539 (= e!1871283 e!1871284)))

(assert (=> b!2974539 (= lt!1036806 call!198269)))

(declare-fun call!198267 () Regex!9280)

(assert (=> b!2974539 (= lt!1036805 call!198267)))

(declare-fun c!488268 () Bool)

(declare-fun call!198268 () Bool)

(assert (=> b!2974539 (= c!488268 call!198268)))

(declare-fun b!2974540 () Bool)

(assert (=> b!2974540 (= e!1871290 e!1871286)))

(declare-fun c!488272 () Bool)

(assert (=> b!2974540 (= c!488272 (is-ElementMatch!9280 (reg!9609 r!17423)))))

(declare-fun bm!198263 () Bool)

(declare-fun isEmptyExpr!428 (Regex!9280) Bool)

(assert (=> bm!198263 (= call!198271 (isEmptyExpr!428 (ite c!488270 lt!1036802 lt!1036803)))))

(declare-fun b!2974541 () Bool)

(declare-fun e!1871288 () Bool)

(declare-fun lt!1036801 () Regex!9280)

(assert (=> b!2974541 (= e!1871288 (= (nullable!2973 lt!1036801) (nullable!2973 (reg!9609 r!17423))))))

(declare-fun b!2974542 () Bool)

(declare-fun c!488269 () Bool)

(declare-fun lt!1036804 () Regex!9280)

(assert (=> b!2974542 (= c!488269 (isEmptyExpr!428 lt!1036804))))

(assert (=> b!2974542 (= e!1871282 e!1871291)))

(declare-fun b!2974543 () Bool)

(assert (=> b!2974543 (= e!1871286 (reg!9609 r!17423))))

(declare-fun b!2974544 () Bool)

(assert (=> b!2974544 (= e!1871285 (Concat!14601 lt!1036804 lt!1036803))))

(declare-fun bm!198264 () Bool)

(assert (=> bm!198264 (= call!198270 call!198266)))

(declare-fun bm!198265 () Bool)

(assert (=> bm!198265 (= call!198267 (simplify!281 (ite c!488275 (regTwo!19073 (reg!9609 r!17423)) (regOne!19072 (reg!9609 r!17423)))))))

(declare-fun b!2974545 () Bool)

(declare-fun c!488274 () Bool)

(declare-fun e!1871289 () Bool)

(assert (=> b!2974545 (= c!488274 e!1871289)))

(declare-fun res!1226534 () Bool)

(assert (=> b!2974545 (=> res!1226534 e!1871289)))

(assert (=> b!2974545 (= res!1226534 call!198266)))

(assert (=> b!2974545 (= lt!1036802 call!198272)))

(declare-fun e!1871280 () Regex!9280)

(assert (=> b!2974545 (= e!1871287 e!1871280)))

(declare-fun b!2974546 () Bool)

(assert (=> b!2974546 (= e!1871292 (Union!9280 lt!1036806 lt!1036805))))

(declare-fun b!2974547 () Bool)

(assert (=> b!2974547 (= e!1871280 EmptyExpr!9280)))

(declare-fun bm!198266 () Bool)

(assert (=> bm!198266 (= call!198268 (isEmptyLang!394 (ite c!488275 lt!1036806 lt!1036804)))))

(declare-fun b!2974548 () Bool)

(assert (=> b!2974548 (= e!1871285 lt!1036804)))

(declare-fun b!2974549 () Bool)

(assert (=> b!2974549 (= e!1871289 call!198271)))

(declare-fun bm!198267 () Bool)

(assert (=> bm!198267 (= call!198272 (simplify!281 (ite c!488270 (reg!9609 (reg!9609 r!17423)) (ite c!488275 (regOne!19073 (reg!9609 r!17423)) (regTwo!19072 (reg!9609 r!17423))))))))

(declare-fun b!2974550 () Bool)

(declare-fun e!1871281 () Bool)

(assert (=> b!2974550 (= e!1871281 call!198270)))

(declare-fun d!842962 () Bool)

(assert (=> d!842962 e!1871288))

(declare-fun res!1226535 () Bool)

(assert (=> d!842962 (=> (not res!1226535) (not e!1871288))))

(assert (=> d!842962 (= res!1226535 (validRegex!4013 lt!1036801))))

(assert (=> d!842962 (= lt!1036801 e!1871290)))

(declare-fun c!488266 () Bool)

(assert (=> d!842962 (= c!488266 (is-EmptyLang!9280 (reg!9609 r!17423)))))

(assert (=> d!842962 (validRegex!4013 (reg!9609 r!17423))))

(assert (=> d!842962 (= (simplify!281 (reg!9609 r!17423)) lt!1036801)))

(declare-fun b!2974551 () Bool)

(assert (=> b!2974551 (= e!1871280 (Star!9280 lt!1036802))))

(declare-fun b!2974552 () Bool)

(assert (=> b!2974552 (= c!488275 (is-Union!9280 (reg!9609 r!17423)))))

(assert (=> b!2974552 (= e!1871287 e!1871283)))

(declare-fun b!2974553 () Bool)

(assert (=> b!2974553 (= e!1871283 e!1871282)))

(assert (=> b!2974553 (= lt!1036804 call!198267)))

(assert (=> b!2974553 (= lt!1036803 call!198269)))

(declare-fun res!1226536 () Bool)

(assert (=> b!2974553 (= res!1226536 call!198268)))

(assert (=> b!2974553 (=> res!1226536 e!1871281)))

(declare-fun c!488273 () Bool)

(assert (=> b!2974553 (= c!488273 e!1871281)))

(assert (= (and d!842962 c!488266) b!2974535))

(assert (= (and d!842962 (not c!488266)) b!2974540))

(assert (= (and b!2974540 c!488272) b!2974543))

(assert (= (and b!2974540 (not c!488272)) b!2974536))

(assert (= (and b!2974536 c!488267) b!2974538))

(assert (= (and b!2974536 (not c!488267)) b!2974531))

(assert (= (and b!2974531 c!488270) b!2974545))

(assert (= (and b!2974531 (not c!488270)) b!2974552))

(assert (= (and b!2974545 (not res!1226534)) b!2974549))

(assert (= (and b!2974545 c!488274) b!2974547))

(assert (= (and b!2974545 (not c!488274)) b!2974551))

(assert (= (and b!2974552 c!488275) b!2974539))

(assert (= (and b!2974552 (not c!488275)) b!2974553))

(assert (= (and b!2974539 c!488268) b!2974530))

(assert (= (and b!2974539 (not c!488268)) b!2974532))

(assert (= (and b!2974532 c!488265) b!2974533))

(assert (= (and b!2974532 (not c!488265)) b!2974546))

(assert (= (and b!2974553 (not res!1226536)) b!2974550))

(assert (= (and b!2974553 c!488273) b!2974529))

(assert (= (and b!2974553 (not c!488273)) b!2974542))

(assert (= (and b!2974542 c!488269) b!2974534))

(assert (= (and b!2974542 (not c!488269)) b!2974537))

(assert (= (and b!2974537 c!488271) b!2974548))

(assert (= (and b!2974537 (not c!488271)) b!2974544))

(assert (= (or b!2974539 b!2974553) bm!198262))

(assert (= (or b!2974539 b!2974553) bm!198265))

(assert (= (or b!2974532 b!2974550) bm!198264))

(assert (= (or b!2974539 b!2974553) bm!198266))

(assert (= (or b!2974549 b!2974537) bm!198263))

(assert (= (or b!2974545 bm!198262) bm!198267))

(assert (= (or b!2974545 bm!198264) bm!198261))

(assert (= (and d!842962 res!1226535) b!2974541))

(declare-fun m!3339511 () Bool)

(assert (=> b!2974542 m!3339511))

(declare-fun m!3339513 () Bool)

(assert (=> d!842962 m!3339513))

(declare-fun m!3339515 () Bool)

(assert (=> d!842962 m!3339515))

(declare-fun m!3339517 () Bool)

(assert (=> bm!198267 m!3339517))

(declare-fun m!3339519 () Bool)

(assert (=> bm!198261 m!3339519))

(declare-fun m!3339521 () Bool)

(assert (=> bm!198265 m!3339521))

(declare-fun m!3339523 () Bool)

(assert (=> bm!198266 m!3339523))

(declare-fun m!3339525 () Bool)

(assert (=> bm!198263 m!3339525))

(declare-fun m!3339527 () Bool)

(assert (=> b!2974541 m!3339527))

(assert (=> b!2974541 m!3339501))

(assert (=> b!2974159 d!842962))

(declare-fun b!2974558 () Bool)

(declare-fun e!1871296 () Bool)

(declare-fun tp!948008 () Bool)

(assert (=> b!2974558 (= e!1871296 (and tp_is_empty!16123 tp!948008))))

(assert (=> b!2974157 (= tp!947985 e!1871296)))

(assert (= (and b!2974157 (is-Cons!35021 (t!234210 s!11993))) b!2974558))

(declare-fun b!2974572 () Bool)

(declare-fun e!1871299 () Bool)

(declare-fun tp!948021 () Bool)

(declare-fun tp!948023 () Bool)

(assert (=> b!2974572 (= e!1871299 (and tp!948021 tp!948023))))

(declare-fun b!2974571 () Bool)

(declare-fun tp!948020 () Bool)

(assert (=> b!2974571 (= e!1871299 tp!948020)))

(declare-fun b!2974570 () Bool)

(declare-fun tp!948022 () Bool)

(declare-fun tp!948019 () Bool)

(assert (=> b!2974570 (= e!1871299 (and tp!948022 tp!948019))))

(assert (=> b!2974156 (= tp!947986 e!1871299)))

(declare-fun b!2974569 () Bool)

(assert (=> b!2974569 (= e!1871299 tp_is_empty!16123)))

(assert (= (and b!2974156 (is-ElementMatch!9280 (regOne!19072 r!17423))) b!2974569))

(assert (= (and b!2974156 (is-Concat!14601 (regOne!19072 r!17423))) b!2974570))

(assert (= (and b!2974156 (is-Star!9280 (regOne!19072 r!17423))) b!2974571))

(assert (= (and b!2974156 (is-Union!9280 (regOne!19072 r!17423))) b!2974572))

(declare-fun b!2974576 () Bool)

(declare-fun e!1871300 () Bool)

(declare-fun tp!948026 () Bool)

(declare-fun tp!948028 () Bool)

(assert (=> b!2974576 (= e!1871300 (and tp!948026 tp!948028))))

(declare-fun b!2974575 () Bool)

(declare-fun tp!948025 () Bool)

(assert (=> b!2974575 (= e!1871300 tp!948025)))

(declare-fun b!2974574 () Bool)

(declare-fun tp!948027 () Bool)

(declare-fun tp!948024 () Bool)

(assert (=> b!2974574 (= e!1871300 (and tp!948027 tp!948024))))

(assert (=> b!2974156 (= tp!947983 e!1871300)))

(declare-fun b!2974573 () Bool)

(assert (=> b!2974573 (= e!1871300 tp_is_empty!16123)))

(assert (= (and b!2974156 (is-ElementMatch!9280 (regTwo!19072 r!17423))) b!2974573))

(assert (= (and b!2974156 (is-Concat!14601 (regTwo!19072 r!17423))) b!2974574))

(assert (= (and b!2974156 (is-Star!9280 (regTwo!19072 r!17423))) b!2974575))

(assert (= (and b!2974156 (is-Union!9280 (regTwo!19072 r!17423))) b!2974576))

(declare-fun b!2974580 () Bool)

(declare-fun e!1871301 () Bool)

(declare-fun tp!948031 () Bool)

(declare-fun tp!948033 () Bool)

(assert (=> b!2974580 (= e!1871301 (and tp!948031 tp!948033))))

(declare-fun b!2974579 () Bool)

(declare-fun tp!948030 () Bool)

(assert (=> b!2974579 (= e!1871301 tp!948030)))

(declare-fun b!2974578 () Bool)

(declare-fun tp!948032 () Bool)

(declare-fun tp!948029 () Bool)

(assert (=> b!2974578 (= e!1871301 (and tp!948032 tp!948029))))

(assert (=> b!2974161 (= tp!947987 e!1871301)))

(declare-fun b!2974577 () Bool)

(assert (=> b!2974577 (= e!1871301 tp_is_empty!16123)))

(assert (= (and b!2974161 (is-ElementMatch!9280 (regOne!19073 r!17423))) b!2974577))

(assert (= (and b!2974161 (is-Concat!14601 (regOne!19073 r!17423))) b!2974578))

(assert (= (and b!2974161 (is-Star!9280 (regOne!19073 r!17423))) b!2974579))

(assert (= (and b!2974161 (is-Union!9280 (regOne!19073 r!17423))) b!2974580))

(declare-fun b!2974584 () Bool)

(declare-fun e!1871302 () Bool)

(declare-fun tp!948036 () Bool)

(declare-fun tp!948038 () Bool)

(assert (=> b!2974584 (= e!1871302 (and tp!948036 tp!948038))))

(declare-fun b!2974583 () Bool)

(declare-fun tp!948035 () Bool)

(assert (=> b!2974583 (= e!1871302 tp!948035)))

(declare-fun b!2974582 () Bool)

(declare-fun tp!948037 () Bool)

(declare-fun tp!948034 () Bool)

(assert (=> b!2974582 (= e!1871302 (and tp!948037 tp!948034))))

(assert (=> b!2974161 (= tp!947982 e!1871302)))

(declare-fun b!2974581 () Bool)

(assert (=> b!2974581 (= e!1871302 tp_is_empty!16123)))

(assert (= (and b!2974161 (is-ElementMatch!9280 (regTwo!19073 r!17423))) b!2974581))

(assert (= (and b!2974161 (is-Concat!14601 (regTwo!19073 r!17423))) b!2974582))

(assert (= (and b!2974161 (is-Star!9280 (regTwo!19073 r!17423))) b!2974583))

(assert (= (and b!2974161 (is-Union!9280 (regTwo!19073 r!17423))) b!2974584))

(declare-fun b!2974588 () Bool)

(declare-fun e!1871303 () Bool)

(declare-fun tp!948041 () Bool)

(declare-fun tp!948043 () Bool)

(assert (=> b!2974588 (= e!1871303 (and tp!948041 tp!948043))))

(declare-fun b!2974587 () Bool)

(declare-fun tp!948040 () Bool)

(assert (=> b!2974587 (= e!1871303 tp!948040)))

(declare-fun b!2974586 () Bool)

(declare-fun tp!948042 () Bool)

(declare-fun tp!948039 () Bool)

(assert (=> b!2974586 (= e!1871303 (and tp!948042 tp!948039))))

(assert (=> b!2974160 (= tp!947984 e!1871303)))

(declare-fun b!2974585 () Bool)

(assert (=> b!2974585 (= e!1871303 tp_is_empty!16123)))

(assert (= (and b!2974160 (is-ElementMatch!9280 (reg!9609 r!17423))) b!2974585))

(assert (= (and b!2974160 (is-Concat!14601 (reg!9609 r!17423))) b!2974586))

(assert (= (and b!2974160 (is-Star!9280 (reg!9609 r!17423))) b!2974587))

(assert (= (and b!2974160 (is-Union!9280 (reg!9609 r!17423))) b!2974588))

(push 1)

(assert (not b!2974376))

(assert (not b!2974579))

(assert (not b!2974375))

(assert (not b!2974377))

(assert (not b!2974582))

(assert (not b!2974432))

(assert (not bm!198242))

(assert (not b!2974374))

(assert (not b!2974450))

(assert (not b!2974455))

(assert (not b!2974389))

(assert (not d!842958))

(assert (not b!2974541))

(assert (not d!842944))

(assert (not d!842926))

(assert (not b!2974427))

(assert (not bm!198227))

(assert (not b!2974542))

(assert (not bm!198226))

(assert (not b!2974451))

(assert (not b!2974428))

(assert (not b!2974570))

(assert (not b!2974571))

(assert (not b!2974572))

(assert (not bm!198267))

(assert (not b!2974575))

(assert (not b!2974378))

(assert (not d!842922))

(assert (not bm!198265))

(assert (not b!2974586))

(assert (not d!842954))

(assert (not bm!198243))

(assert (not b!2974580))

(assert (not d!842938))

(assert (not b!2974332))

(assert (not d!842950))

(assert (not b!2974558))

(assert (not b!2974280))

(assert (not b!2974584))

(assert (not b!2974583))

(assert (not d!842942))

(assert (not b!2974373))

(assert (not bm!198239))

(assert (not bm!198235))

(assert (not b!2974587))

(assert (not b!2974437))

(assert (not b!2974574))

(assert (not bm!198261))

(assert (not bm!198236))

(assert (not b!2974588))

(assert (not bm!198238))

(assert (not b!2974434))

(assert (not b!2974286))

(assert (not d!842928))

(assert (not d!842962))

(assert (not b!2974445))

(assert (not b!2974449))

(assert tp_is_empty!16123)

(assert (not b!2974576))

(assert (not bm!198263))

(assert (not b!2974457))

(assert (not b!2974460))

(assert (not bm!198266))

(assert (not b!2974383))

(assert (not b!2974426))

(assert (not d!842924))

(assert (not b!2974578))

(assert (not bm!198244))

(assert (not bm!198246))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

