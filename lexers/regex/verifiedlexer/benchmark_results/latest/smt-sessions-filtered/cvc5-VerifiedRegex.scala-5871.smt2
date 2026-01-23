; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!287922 () Bool)

(assert start!287922)

(declare-fun b!2978423 () Bool)

(assert (=> b!2978423 true))

(assert (=> b!2978423 true))

(assert (=> b!2978423 true))

(declare-fun lambda!110978 () Int)

(declare-fun lambda!110977 () Int)

(assert (=> b!2978423 (not (= lambda!110978 lambda!110977))))

(assert (=> b!2978423 true))

(assert (=> b!2978423 true))

(assert (=> b!2978423 true))

(declare-fun b!2978422 () Bool)

(declare-fun e!1873421 () Bool)

(declare-fun e!1873414 () Bool)

(assert (=> b!2978422 (= e!1873421 e!1873414)))

(declare-fun res!1228125 () Bool)

(assert (=> b!2978422 (=> res!1228125 e!1873414)))

(declare-datatypes ((C!18770 0))(
  ( (C!18771 (val!11421 Int)) )
))
(declare-datatypes ((Regex!9292 0))(
  ( (ElementMatch!9292 (c!489116 C!18770)) (Concat!14613 (regOne!19096 Regex!9292) (regTwo!19096 Regex!9292)) (EmptyExpr!9292) (Star!9292 (reg!9621 Regex!9292)) (EmptyLang!9292) (Union!9292 (regOne!19097 Regex!9292) (regTwo!19097 Regex!9292)) )
))
(declare-fun lt!1037497 () Regex!9292)

(declare-fun isEmptyLang!406 (Regex!9292) Bool)

(assert (=> b!2978422 (= res!1228125 (isEmptyLang!406 lt!1037497))))

(declare-fun r!17423 () Regex!9292)

(declare-fun simplify!293 (Regex!9292) Regex!9292)

(assert (=> b!2978422 (= lt!1037497 (simplify!293 (reg!9621 r!17423)))))

(declare-fun e!1873420 () Bool)

(declare-fun e!1873418 () Bool)

(assert (=> b!2978423 (= e!1873420 e!1873418)))

(declare-fun res!1228126 () Bool)

(assert (=> b!2978423 (=> res!1228126 e!1873418)))

(declare-fun lt!1037495 () Bool)

(assert (=> b!2978423 (= res!1228126 (not lt!1037495))))

(declare-fun Exists!1572 (Int) Bool)

(assert (=> b!2978423 (= (Exists!1572 lambda!110977) (Exists!1572 lambda!110978))))

(declare-datatypes ((Unit!48963 0))(
  ( (Unit!48964) )
))
(declare-fun lt!1037494 () Unit!48963)

(declare-datatypes ((List!35157 0))(
  ( (Nil!35033) (Cons!35033 (h!40453 C!18770) (t!234222 List!35157)) )
))
(declare-fun s!11993 () List!35157)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!257 (Regex!9292 List!35157) Unit!48963)

(assert (=> b!2978423 (= lt!1037494 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!257 lt!1037497 s!11993))))

(assert (=> b!2978423 (= lt!1037495 (Exists!1572 lambda!110977))))

(declare-fun lt!1037496 () Regex!9292)

(declare-datatypes ((tuple2!33922 0))(
  ( (tuple2!33923 (_1!20093 List!35157) (_2!20093 List!35157)) )
))
(declare-datatypes ((Option!6693 0))(
  ( (None!6692) (Some!6692 (v!34826 tuple2!33922)) )
))
(declare-fun isDefined!5244 (Option!6693) Bool)

(declare-fun findConcatSeparation!1087 (Regex!9292 Regex!9292 List!35157 List!35157 List!35157) Option!6693)

(assert (=> b!2978423 (= lt!1037495 (isDefined!5244 (findConcatSeparation!1087 lt!1037497 lt!1037496 Nil!35033 s!11993 s!11993)))))

(declare-fun lt!1037499 () Unit!48963)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!865 (Regex!9292 Regex!9292 List!35157) Unit!48963)

(assert (=> b!2978423 (= lt!1037499 (lemmaFindConcatSeparationEquivalentToExists!865 lt!1037497 lt!1037496 s!11993))))

(declare-fun b!2978424 () Bool)

(declare-fun e!1873416 () Bool)

(assert (=> b!2978424 (= e!1873414 e!1873416)))

(declare-fun res!1228131 () Bool)

(assert (=> b!2978424 (=> res!1228131 e!1873416)))

(declare-fun matchR!4174 (Regex!9292 List!35157) Bool)

(assert (=> b!2978424 (= res!1228131 (not (matchR!4174 lt!1037496 s!11993)))))

(assert (=> b!2978424 (= lt!1037496 (Star!9292 lt!1037497))))

(declare-fun b!2978425 () Bool)

(declare-fun e!1873415 () Bool)

(declare-fun tp!948656 () Bool)

(declare-fun tp!948659 () Bool)

(assert (=> b!2978425 (= e!1873415 (and tp!948656 tp!948659))))

(declare-fun b!2978426 () Bool)

(assert (=> b!2978426 (= e!1873416 e!1873420)))

(declare-fun res!1228128 () Bool)

(assert (=> b!2978426 (=> res!1228128 e!1873420)))

(declare-fun isEmpty!19284 (List!35157) Bool)

(assert (=> b!2978426 (= res!1228128 (isEmpty!19284 s!11993))))

(declare-fun matchRSpec!1429 (Regex!9292 List!35157) Bool)

(assert (=> b!2978426 (matchRSpec!1429 lt!1037496 s!11993)))

(declare-fun lt!1037493 () Unit!48963)

(declare-fun mainMatchTheorem!1429 (Regex!9292 List!35157) Unit!48963)

(assert (=> b!2978426 (= lt!1037493 (mainMatchTheorem!1429 lt!1037496 s!11993))))

(declare-fun res!1228127 () Bool)

(declare-fun e!1873417 () Bool)

(assert (=> start!287922 (=> (not res!1228127) (not e!1873417))))

(declare-fun validRegex!4025 (Regex!9292) Bool)

(assert (=> start!287922 (= res!1228127 (validRegex!4025 r!17423))))

(assert (=> start!287922 e!1873417))

(assert (=> start!287922 e!1873415))

(declare-fun e!1873419 () Bool)

(assert (=> start!287922 e!1873419))

(declare-fun b!2978427 () Bool)

(declare-fun tp!948658 () Bool)

(declare-fun tp!948655 () Bool)

(assert (=> b!2978427 (= e!1873415 (and tp!948658 tp!948655))))

(declare-fun b!2978428 () Bool)

(declare-fun tp_is_empty!16147 () Bool)

(declare-fun tp!948654 () Bool)

(assert (=> b!2978428 (= e!1873419 (and tp_is_empty!16147 tp!948654))))

(declare-fun b!2978429 () Bool)

(declare-fun res!1228129 () Bool)

(assert (=> b!2978429 (=> res!1228129 e!1873418)))

(assert (=> b!2978429 (= res!1228129 (not (validRegex!4025 lt!1037496)))))

(declare-fun b!2978430 () Bool)

(declare-fun ++!8360 (List!35157 List!35157) List!35157)

(assert (=> b!2978430 (= e!1873418 (= (++!8360 Nil!35033 s!11993) s!11993))))

(declare-fun b!2978431 () Bool)

(declare-fun res!1228132 () Bool)

(assert (=> b!2978431 (=> res!1228132 e!1873418)))

(assert (=> b!2978431 (= res!1228132 (not (validRegex!4025 lt!1037497)))))

(declare-fun b!2978432 () Bool)

(assert (=> b!2978432 (= e!1873417 (not e!1873421))))

(declare-fun res!1228130 () Bool)

(assert (=> b!2978432 (=> res!1228130 e!1873421)))

(declare-fun lt!1037500 () Bool)

(assert (=> b!2978432 (= res!1228130 (or lt!1037500 (is-Concat!14613 r!17423) (is-Union!9292 r!17423) (not (is-Star!9292 r!17423))))))

(assert (=> b!2978432 (= lt!1037500 (matchRSpec!1429 r!17423 s!11993))))

(assert (=> b!2978432 (= lt!1037500 (matchR!4174 r!17423 s!11993))))

(declare-fun lt!1037498 () Unit!48963)

(assert (=> b!2978432 (= lt!1037498 (mainMatchTheorem!1429 r!17423 s!11993))))

(declare-fun b!2978433 () Bool)

(assert (=> b!2978433 (= e!1873415 tp_is_empty!16147)))

(declare-fun b!2978434 () Bool)

(declare-fun tp!948657 () Bool)

(assert (=> b!2978434 (= e!1873415 tp!948657)))

(assert (= (and start!287922 res!1228127) b!2978432))

(assert (= (and b!2978432 (not res!1228130)) b!2978422))

(assert (= (and b!2978422 (not res!1228125)) b!2978424))

(assert (= (and b!2978424 (not res!1228131)) b!2978426))

(assert (= (and b!2978426 (not res!1228128)) b!2978423))

(assert (= (and b!2978423 (not res!1228126)) b!2978431))

(assert (= (and b!2978431 (not res!1228132)) b!2978429))

(assert (= (and b!2978429 (not res!1228129)) b!2978430))

(assert (= (and start!287922 (is-ElementMatch!9292 r!17423)) b!2978433))

(assert (= (and start!287922 (is-Concat!14613 r!17423)) b!2978425))

(assert (= (and start!287922 (is-Star!9292 r!17423)) b!2978434))

(assert (= (and start!287922 (is-Union!9292 r!17423)) b!2978427))

(assert (= (and start!287922 (is-Cons!35033 s!11993)) b!2978428))

(declare-fun m!3341029 () Bool)

(assert (=> start!287922 m!3341029))

(declare-fun m!3341031 () Bool)

(assert (=> b!2978432 m!3341031))

(declare-fun m!3341033 () Bool)

(assert (=> b!2978432 m!3341033))

(declare-fun m!3341035 () Bool)

(assert (=> b!2978432 m!3341035))

(declare-fun m!3341037 () Bool)

(assert (=> b!2978424 m!3341037))

(declare-fun m!3341039 () Bool)

(assert (=> b!2978429 m!3341039))

(declare-fun m!3341041 () Bool)

(assert (=> b!2978422 m!3341041))

(declare-fun m!3341043 () Bool)

(assert (=> b!2978422 m!3341043))

(declare-fun m!3341045 () Bool)

(assert (=> b!2978431 m!3341045))

(declare-fun m!3341047 () Bool)

(assert (=> b!2978430 m!3341047))

(declare-fun m!3341049 () Bool)

(assert (=> b!2978426 m!3341049))

(declare-fun m!3341051 () Bool)

(assert (=> b!2978426 m!3341051))

(declare-fun m!3341053 () Bool)

(assert (=> b!2978426 m!3341053))

(declare-fun m!3341055 () Bool)

(assert (=> b!2978423 m!3341055))

(declare-fun m!3341057 () Bool)

(assert (=> b!2978423 m!3341057))

(declare-fun m!3341059 () Bool)

(assert (=> b!2978423 m!3341059))

(declare-fun m!3341061 () Bool)

(assert (=> b!2978423 m!3341061))

(assert (=> b!2978423 m!3341059))

(declare-fun m!3341063 () Bool)

(assert (=> b!2978423 m!3341063))

(declare-fun m!3341065 () Bool)

(assert (=> b!2978423 m!3341065))

(assert (=> b!2978423 m!3341065))

(push 1)

(assert (not b!2978429))

(assert (not b!2978432))

(assert (not b!2978427))

(assert (not start!287922))

(assert (not b!2978431))

(assert (not b!2978434))

(assert (not b!2978424))

(assert (not b!2978425))

(assert (not b!2978426))

(assert (not b!2978423))

(assert (not b!2978428))

(assert (not b!2978422))

(assert (not b!2978430))

(assert tp_is_empty!16147)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!843346 () Bool)

(declare-fun isEmpty!19286 (Option!6693) Bool)

(assert (=> d!843346 (= (isDefined!5244 (findConcatSeparation!1087 lt!1037497 lt!1037496 Nil!35033 s!11993 s!11993)) (not (isEmpty!19286 (findConcatSeparation!1087 lt!1037497 lt!1037496 Nil!35033 s!11993 s!11993))))))

(declare-fun bs!526978 () Bool)

(assert (= bs!526978 d!843346))

(assert (=> bs!526978 m!3341059))

(declare-fun m!3341105 () Bool)

(assert (=> bs!526978 m!3341105))

(assert (=> b!2978423 d!843346))

(declare-fun d!843348 () Bool)

(declare-fun choose!17632 (Int) Bool)

(assert (=> d!843348 (= (Exists!1572 lambda!110978) (choose!17632 lambda!110978))))

(declare-fun bs!526979 () Bool)

(assert (= bs!526979 d!843348))

(declare-fun m!3341107 () Bool)

(assert (=> bs!526979 m!3341107))

(assert (=> b!2978423 d!843348))

(declare-fun bs!526980 () Bool)

(declare-fun d!843350 () Bool)

(assert (= bs!526980 (and d!843350 b!2978423)))

(declare-fun lambda!110989 () Int)

(assert (=> bs!526980 (= lambda!110989 lambda!110977)))

(assert (=> bs!526980 (not (= lambda!110989 lambda!110978))))

(assert (=> d!843350 true))

(assert (=> d!843350 true))

(assert (=> d!843350 true))

(assert (=> d!843350 (= (isDefined!5244 (findConcatSeparation!1087 lt!1037497 lt!1037496 Nil!35033 s!11993 s!11993)) (Exists!1572 lambda!110989))))

(declare-fun lt!1037527 () Unit!48963)

(declare-fun choose!17633 (Regex!9292 Regex!9292 List!35157) Unit!48963)

(assert (=> d!843350 (= lt!1037527 (choose!17633 lt!1037497 lt!1037496 s!11993))))

(assert (=> d!843350 (validRegex!4025 lt!1037497)))

(assert (=> d!843350 (= (lemmaFindConcatSeparationEquivalentToExists!865 lt!1037497 lt!1037496 s!11993) lt!1037527)))

(declare-fun bs!526981 () Bool)

(assert (= bs!526981 d!843350))

(assert (=> bs!526981 m!3341059))

(declare-fun m!3341109 () Bool)

(assert (=> bs!526981 m!3341109))

(declare-fun m!3341111 () Bool)

(assert (=> bs!526981 m!3341111))

(assert (=> bs!526981 m!3341059))

(assert (=> bs!526981 m!3341061))

(assert (=> bs!526981 m!3341045))

(assert (=> b!2978423 d!843350))

(declare-fun d!843354 () Bool)

(declare-fun e!1873493 () Bool)

(assert (=> d!843354 e!1873493))

(declare-fun res!1228205 () Bool)

(assert (=> d!843354 (=> res!1228205 e!1873493)))

(declare-fun e!1873496 () Bool)

(assert (=> d!843354 (= res!1228205 e!1873496)))

(declare-fun res!1228206 () Bool)

(assert (=> d!843354 (=> (not res!1228206) (not e!1873496))))

(declare-fun lt!1037535 () Option!6693)

(assert (=> d!843354 (= res!1228206 (isDefined!5244 lt!1037535))))

(declare-fun e!1873492 () Option!6693)

(assert (=> d!843354 (= lt!1037535 e!1873492)))

(declare-fun c!489131 () Bool)

(declare-fun e!1873494 () Bool)

(assert (=> d!843354 (= c!489131 e!1873494)))

(declare-fun res!1228209 () Bool)

(assert (=> d!843354 (=> (not res!1228209) (not e!1873494))))

(assert (=> d!843354 (= res!1228209 (matchR!4174 lt!1037497 Nil!35033))))

(assert (=> d!843354 (validRegex!4025 lt!1037497)))

(assert (=> d!843354 (= (findConcatSeparation!1087 lt!1037497 lt!1037496 Nil!35033 s!11993 s!11993) lt!1037535)))

(declare-fun b!2978554 () Bool)

(assert (=> b!2978554 (= e!1873492 (Some!6692 (tuple2!33923 Nil!35033 s!11993)))))

(declare-fun b!2978555 () Bool)

(declare-fun res!1228208 () Bool)

(assert (=> b!2978555 (=> (not res!1228208) (not e!1873496))))

(declare-fun get!10809 (Option!6693) tuple2!33922)

(assert (=> b!2978555 (= res!1228208 (matchR!4174 lt!1037496 (_2!20093 (get!10809 lt!1037535))))))

(declare-fun b!2978556 () Bool)

(assert (=> b!2978556 (= e!1873494 (matchR!4174 lt!1037496 s!11993))))

(declare-fun b!2978557 () Bool)

(declare-fun e!1873495 () Option!6693)

(assert (=> b!2978557 (= e!1873492 e!1873495)))

(declare-fun c!489130 () Bool)

(assert (=> b!2978557 (= c!489130 (is-Nil!35033 s!11993))))

(declare-fun b!2978558 () Bool)

(declare-fun res!1228207 () Bool)

(assert (=> b!2978558 (=> (not res!1228207) (not e!1873496))))

(assert (=> b!2978558 (= res!1228207 (matchR!4174 lt!1037497 (_1!20093 (get!10809 lt!1037535))))))

(declare-fun b!2978559 () Bool)

(assert (=> b!2978559 (= e!1873496 (= (++!8360 (_1!20093 (get!10809 lt!1037535)) (_2!20093 (get!10809 lt!1037535))) s!11993))))

(declare-fun b!2978560 () Bool)

(declare-fun lt!1037534 () Unit!48963)

(declare-fun lt!1037536 () Unit!48963)

(assert (=> b!2978560 (= lt!1037534 lt!1037536)))

(assert (=> b!2978560 (= (++!8360 (++!8360 Nil!35033 (Cons!35033 (h!40453 s!11993) Nil!35033)) (t!234222 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!979 (List!35157 C!18770 List!35157 List!35157) Unit!48963)

(assert (=> b!2978560 (= lt!1037536 (lemmaMoveElementToOtherListKeepsConcatEq!979 Nil!35033 (h!40453 s!11993) (t!234222 s!11993) s!11993))))

(assert (=> b!2978560 (= e!1873495 (findConcatSeparation!1087 lt!1037497 lt!1037496 (++!8360 Nil!35033 (Cons!35033 (h!40453 s!11993) Nil!35033)) (t!234222 s!11993) s!11993))))

(declare-fun b!2978561 () Bool)

(assert (=> b!2978561 (= e!1873493 (not (isDefined!5244 lt!1037535)))))

(declare-fun b!2978562 () Bool)

(assert (=> b!2978562 (= e!1873495 None!6692)))

(assert (= (and d!843354 res!1228209) b!2978556))

(assert (= (and d!843354 c!489131) b!2978554))

(assert (= (and d!843354 (not c!489131)) b!2978557))

(assert (= (and b!2978557 c!489130) b!2978562))

(assert (= (and b!2978557 (not c!489130)) b!2978560))

(assert (= (and d!843354 res!1228206) b!2978558))

(assert (= (and b!2978558 res!1228207) b!2978555))

(assert (= (and b!2978555 res!1228208) b!2978559))

(assert (= (and d!843354 (not res!1228205)) b!2978561))

(declare-fun m!3341125 () Bool)

(assert (=> d!843354 m!3341125))

(declare-fun m!3341127 () Bool)

(assert (=> d!843354 m!3341127))

(assert (=> d!843354 m!3341045))

(declare-fun m!3341129 () Bool)

(assert (=> b!2978555 m!3341129))

(declare-fun m!3341131 () Bool)

(assert (=> b!2978555 m!3341131))

(assert (=> b!2978561 m!3341125))

(assert (=> b!2978559 m!3341129))

(declare-fun m!3341133 () Bool)

(assert (=> b!2978559 m!3341133))

(assert (=> b!2978556 m!3341037))

(assert (=> b!2978558 m!3341129))

(declare-fun m!3341135 () Bool)

(assert (=> b!2978558 m!3341135))

(declare-fun m!3341137 () Bool)

(assert (=> b!2978560 m!3341137))

(assert (=> b!2978560 m!3341137))

(declare-fun m!3341139 () Bool)

(assert (=> b!2978560 m!3341139))

(declare-fun m!3341141 () Bool)

(assert (=> b!2978560 m!3341141))

(assert (=> b!2978560 m!3341137))

(declare-fun m!3341143 () Bool)

(assert (=> b!2978560 m!3341143))

(assert (=> b!2978423 d!843354))

(declare-fun bs!526982 () Bool)

(declare-fun d!843362 () Bool)

(assert (= bs!526982 (and d!843362 b!2978423)))

(declare-fun lambda!110994 () Int)

(assert (=> bs!526982 (= (= (Star!9292 lt!1037497) lt!1037496) (= lambda!110994 lambda!110977))))

(assert (=> bs!526982 (not (= lambda!110994 lambda!110978))))

(declare-fun bs!526983 () Bool)

(assert (= bs!526983 (and d!843362 d!843350)))

(assert (=> bs!526983 (= (= (Star!9292 lt!1037497) lt!1037496) (= lambda!110994 lambda!110989))))

(assert (=> d!843362 true))

(assert (=> d!843362 true))

(declare-fun lambda!110995 () Int)

(assert (=> bs!526982 (not (= lambda!110995 lambda!110977))))

(assert (=> bs!526982 (= (= (Star!9292 lt!1037497) lt!1037496) (= lambda!110995 lambda!110978))))

(assert (=> bs!526983 (not (= lambda!110995 lambda!110989))))

(declare-fun bs!526984 () Bool)

(assert (= bs!526984 d!843362))

(assert (=> bs!526984 (not (= lambda!110995 lambda!110994))))

(assert (=> d!843362 true))

(assert (=> d!843362 true))

(assert (=> d!843362 (= (Exists!1572 lambda!110994) (Exists!1572 lambda!110995))))

(declare-fun lt!1037547 () Unit!48963)

(declare-fun choose!17634 (Regex!9292 List!35157) Unit!48963)

(assert (=> d!843362 (= lt!1037547 (choose!17634 lt!1037497 s!11993))))

(assert (=> d!843362 (validRegex!4025 lt!1037497)))

(assert (=> d!843362 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!257 lt!1037497 s!11993) lt!1037547)))

(declare-fun m!3341145 () Bool)

(assert (=> bs!526984 m!3341145))

(declare-fun m!3341147 () Bool)

(assert (=> bs!526984 m!3341147))

(declare-fun m!3341149 () Bool)

(assert (=> bs!526984 m!3341149))

(assert (=> bs!526984 m!3341045))

(assert (=> b!2978423 d!843362))

(declare-fun d!843364 () Bool)

(assert (=> d!843364 (= (Exists!1572 lambda!110977) (choose!17632 lambda!110977))))

(declare-fun bs!526985 () Bool)

(assert (= bs!526985 d!843364))

(declare-fun m!3341151 () Bool)

(assert (=> bs!526985 m!3341151))

(assert (=> b!2978423 d!843364))

(declare-fun b!2978649 () Bool)

(declare-fun res!1228244 () Bool)

(declare-fun e!1873543 () Bool)

(assert (=> b!2978649 (=> (not res!1228244) (not e!1873543))))

(declare-fun call!198811 () Bool)

(assert (=> b!2978649 (= res!1228244 (not call!198811))))

(declare-fun b!2978650 () Bool)

(declare-fun e!1873546 () Bool)

(declare-fun nullable!2985 (Regex!9292) Bool)

(assert (=> b!2978650 (= e!1873546 (nullable!2985 lt!1037496))))

(declare-fun b!2978651 () Bool)

(declare-fun derivativeStep!2585 (Regex!9292 C!18770) Regex!9292)

(declare-fun head!6644 (List!35157) C!18770)

(declare-fun tail!4870 (List!35157) List!35157)

(assert (=> b!2978651 (= e!1873546 (matchR!4174 (derivativeStep!2585 lt!1037496 (head!6644 s!11993)) (tail!4870 s!11993)))))

(declare-fun b!2978652 () Bool)

(declare-fun e!1873547 () Bool)

(declare-fun lt!1037554 () Bool)

(assert (=> b!2978652 (= e!1873547 (= lt!1037554 call!198811))))

(declare-fun d!843366 () Bool)

(assert (=> d!843366 e!1873547))

(declare-fun c!489161 () Bool)

(assert (=> d!843366 (= c!489161 (is-EmptyExpr!9292 lt!1037496))))

(assert (=> d!843366 (= lt!1037554 e!1873546)))

(declare-fun c!489162 () Bool)

(assert (=> d!843366 (= c!489162 (isEmpty!19284 s!11993))))

(assert (=> d!843366 (validRegex!4025 lt!1037496)))

(assert (=> d!843366 (= (matchR!4174 lt!1037496 s!11993) lt!1037554)))

(declare-fun b!2978653 () Bool)

(declare-fun e!1873542 () Bool)

(declare-fun e!1873545 () Bool)

(assert (=> b!2978653 (= e!1873542 e!1873545)))

(declare-fun res!1228245 () Bool)

(assert (=> b!2978653 (=> res!1228245 e!1873545)))

(assert (=> b!2978653 (= res!1228245 call!198811)))

(declare-fun b!2978654 () Bool)

(declare-fun e!1873544 () Bool)

(assert (=> b!2978654 (= e!1873544 e!1873542)))

(declare-fun res!1228243 () Bool)

(assert (=> b!2978654 (=> (not res!1228243) (not e!1873542))))

(assert (=> b!2978654 (= res!1228243 (not lt!1037554))))

(declare-fun b!2978655 () Bool)

(declare-fun res!1228247 () Bool)

(assert (=> b!2978655 (=> res!1228247 e!1873544)))

(assert (=> b!2978655 (= res!1228247 e!1873543)))

(declare-fun res!1228246 () Bool)

(assert (=> b!2978655 (=> (not res!1228246) (not e!1873543))))

(assert (=> b!2978655 (= res!1228246 lt!1037554)))

(declare-fun b!2978656 () Bool)

(declare-fun res!1228242 () Bool)

(assert (=> b!2978656 (=> res!1228242 e!1873544)))

(assert (=> b!2978656 (= res!1228242 (not (is-ElementMatch!9292 lt!1037496)))))

(declare-fun e!1873541 () Bool)

(assert (=> b!2978656 (= e!1873541 e!1873544)))

(declare-fun b!2978657 () Bool)

(assert (=> b!2978657 (= e!1873543 (= (head!6644 s!11993) (c!489116 lt!1037496)))))

(declare-fun b!2978658 () Bool)

(assert (=> b!2978658 (= e!1873547 e!1873541)))

(declare-fun c!489160 () Bool)

(assert (=> b!2978658 (= c!489160 (is-EmptyLang!9292 lt!1037496))))

(declare-fun b!2978659 () Bool)

(declare-fun res!1228241 () Bool)

(assert (=> b!2978659 (=> res!1228241 e!1873545)))

(assert (=> b!2978659 (= res!1228241 (not (isEmpty!19284 (tail!4870 s!11993))))))

(declare-fun b!2978660 () Bool)

(assert (=> b!2978660 (= e!1873545 (not (= (head!6644 s!11993) (c!489116 lt!1037496))))))

(declare-fun b!2978661 () Bool)

(assert (=> b!2978661 (= e!1873541 (not lt!1037554))))

(declare-fun b!2978662 () Bool)

(declare-fun res!1228240 () Bool)

(assert (=> b!2978662 (=> (not res!1228240) (not e!1873543))))

(assert (=> b!2978662 (= res!1228240 (isEmpty!19284 (tail!4870 s!11993)))))

(declare-fun bm!198806 () Bool)

(assert (=> bm!198806 (= call!198811 (isEmpty!19284 s!11993))))

(assert (= (and d!843366 c!489162) b!2978650))

(assert (= (and d!843366 (not c!489162)) b!2978651))

(assert (= (and d!843366 c!489161) b!2978652))

(assert (= (and d!843366 (not c!489161)) b!2978658))

(assert (= (and b!2978658 c!489160) b!2978661))

(assert (= (and b!2978658 (not c!489160)) b!2978656))

(assert (= (and b!2978656 (not res!1228242)) b!2978655))

(assert (= (and b!2978655 res!1228246) b!2978649))

(assert (= (and b!2978649 res!1228244) b!2978662))

(assert (= (and b!2978662 res!1228240) b!2978657))

(assert (= (and b!2978655 (not res!1228247)) b!2978654))

(assert (= (and b!2978654 res!1228243) b!2978653))

(assert (= (and b!2978653 (not res!1228245)) b!2978659))

(assert (= (and b!2978659 (not res!1228241)) b!2978660))

(assert (= (or b!2978652 b!2978649 b!2978653) bm!198806))

(declare-fun m!3341153 () Bool)

(assert (=> b!2978651 m!3341153))

(assert (=> b!2978651 m!3341153))

(declare-fun m!3341155 () Bool)

(assert (=> b!2978651 m!3341155))

(declare-fun m!3341157 () Bool)

(assert (=> b!2978651 m!3341157))

(assert (=> b!2978651 m!3341155))

(assert (=> b!2978651 m!3341157))

(declare-fun m!3341159 () Bool)

(assert (=> b!2978651 m!3341159))

(declare-fun m!3341161 () Bool)

(assert (=> b!2978650 m!3341161))

(assert (=> b!2978660 m!3341153))

(assert (=> b!2978659 m!3341157))

(assert (=> b!2978659 m!3341157))

(declare-fun m!3341163 () Bool)

(assert (=> b!2978659 m!3341163))

(assert (=> b!2978662 m!3341157))

(assert (=> b!2978662 m!3341157))

(assert (=> b!2978662 m!3341163))

(assert (=> d!843366 m!3341049))

(assert (=> d!843366 m!3341039))

(assert (=> bm!198806 m!3341049))

(assert (=> b!2978657 m!3341153))

(assert (=> b!2978424 d!843366))

(declare-fun b!2978683 () Bool)

(declare-fun res!1228261 () Bool)

(declare-fun e!1873565 () Bool)

(assert (=> b!2978683 (=> res!1228261 e!1873565)))

(assert (=> b!2978683 (= res!1228261 (not (is-Concat!14613 lt!1037496)))))

(declare-fun e!1873566 () Bool)

(assert (=> b!2978683 (= e!1873566 e!1873565)))

(declare-fun b!2978684 () Bool)

(declare-fun e!1873568 () Bool)

(declare-fun call!198818 () Bool)

(assert (=> b!2978684 (= e!1873568 call!198818)))

(declare-fun b!2978685 () Bool)

(declare-fun e!1873567 () Bool)

(assert (=> b!2978685 (= e!1873565 e!1873567)))

(declare-fun res!1228260 () Bool)

(assert (=> b!2978685 (=> (not res!1228260) (not e!1873567))))

(declare-fun call!198820 () Bool)

(assert (=> b!2978685 (= res!1228260 call!198820)))

(declare-fun bm!198813 () Bool)

(declare-fun call!198819 () Bool)

(declare-fun c!489167 () Bool)

(assert (=> bm!198813 (= call!198819 (validRegex!4025 (ite c!489167 (regOne!19097 lt!1037496) (regTwo!19096 lt!1037496))))))

(declare-fun b!2978686 () Bool)

(declare-fun e!1873570 () Bool)

(assert (=> b!2978686 (= e!1873570 call!198820)))

(declare-fun bm!198814 () Bool)

(declare-fun c!489168 () Bool)

(assert (=> bm!198814 (= call!198818 (validRegex!4025 (ite c!489168 (reg!9621 lt!1037496) (ite c!489167 (regTwo!19097 lt!1037496) (regOne!19096 lt!1037496)))))))

(declare-fun b!2978687 () Bool)

(assert (=> b!2978687 (= e!1873567 call!198819)))

(declare-fun bm!198815 () Bool)

(assert (=> bm!198815 (= call!198820 call!198818)))

(declare-fun b!2978688 () Bool)

(declare-fun e!1873564 () Bool)

(declare-fun e!1873569 () Bool)

(assert (=> b!2978688 (= e!1873564 e!1873569)))

(assert (=> b!2978688 (= c!489168 (is-Star!9292 lt!1037496))))

(declare-fun b!2978690 () Bool)

(declare-fun res!1228264 () Bool)

(assert (=> b!2978690 (=> (not res!1228264) (not e!1873570))))

(assert (=> b!2978690 (= res!1228264 call!198819)))

(assert (=> b!2978690 (= e!1873566 e!1873570)))

(declare-fun b!2978691 () Bool)

(assert (=> b!2978691 (= e!1873569 e!1873566)))

(assert (=> b!2978691 (= c!489167 (is-Union!9292 lt!1037496))))

(declare-fun b!2978689 () Bool)

(assert (=> b!2978689 (= e!1873569 e!1873568)))

(declare-fun res!1228262 () Bool)

(assert (=> b!2978689 (= res!1228262 (not (nullable!2985 (reg!9621 lt!1037496))))))

(assert (=> b!2978689 (=> (not res!1228262) (not e!1873568))))

(declare-fun d!843368 () Bool)

(declare-fun res!1228263 () Bool)

(assert (=> d!843368 (=> res!1228263 e!1873564)))

(assert (=> d!843368 (= res!1228263 (is-ElementMatch!9292 lt!1037496))))

(assert (=> d!843368 (= (validRegex!4025 lt!1037496) e!1873564)))

(assert (= (and d!843368 (not res!1228263)) b!2978688))

(assert (= (and b!2978688 c!489168) b!2978689))

(assert (= (and b!2978688 (not c!489168)) b!2978691))

(assert (= (and b!2978689 res!1228262) b!2978684))

(assert (= (and b!2978691 c!489167) b!2978690))

(assert (= (and b!2978691 (not c!489167)) b!2978683))

(assert (= (and b!2978690 res!1228264) b!2978686))

(assert (= (and b!2978683 (not res!1228261)) b!2978685))

(assert (= (and b!2978685 res!1228260) b!2978687))

(assert (= (or b!2978690 b!2978687) bm!198813))

(assert (= (or b!2978686 b!2978685) bm!198815))

(assert (= (or b!2978684 bm!198815) bm!198814))

(declare-fun m!3341165 () Bool)

(assert (=> bm!198813 m!3341165))

(declare-fun m!3341167 () Bool)

(assert (=> bm!198814 m!3341167))

(declare-fun m!3341169 () Bool)

(assert (=> b!2978689 m!3341169))

(assert (=> b!2978429 d!843368))

(declare-fun d!843370 () Bool)

(assert (=> d!843370 (= (isEmptyLang!406 lt!1037497) (is-EmptyLang!9292 lt!1037497))))

(assert (=> b!2978422 d!843370))

(declare-fun b!2978767 () Bool)

(declare-fun e!1873614 () Regex!9292)

(declare-fun e!1873625 () Regex!9292)

(assert (=> b!2978767 (= e!1873614 e!1873625)))

(declare-fun lt!1037576 () Regex!9292)

(declare-fun call!198844 () Regex!9292)

(assert (=> b!2978767 (= lt!1037576 call!198844)))

(declare-fun lt!1037574 () Regex!9292)

(declare-fun call!198846 () Regex!9292)

(assert (=> b!2978767 (= lt!1037574 call!198846)))

(declare-fun res!1228276 () Bool)

(declare-fun call!198842 () Bool)

(assert (=> b!2978767 (= res!1228276 call!198842)))

(declare-fun e!1873622 () Bool)

(assert (=> b!2978767 (=> res!1228276 e!1873622)))

(declare-fun c!489203 () Bool)

(assert (=> b!2978767 (= c!489203 e!1873622)))

(declare-fun b!2978768 () Bool)

(declare-fun c!489208 () Bool)

(declare-fun e!1873624 () Bool)

(assert (=> b!2978768 (= c!489208 e!1873624)))

(declare-fun res!1228274 () Bool)

(assert (=> b!2978768 (=> res!1228274 e!1873624)))

(declare-fun call!198848 () Bool)

(assert (=> b!2978768 (= res!1228274 call!198848)))

(declare-fun lt!1037575 () Regex!9292)

(declare-fun call!198843 () Regex!9292)

(assert (=> b!2978768 (= lt!1037575 call!198843)))

(declare-fun e!1873619 () Regex!9292)

(declare-fun e!1873621 () Regex!9292)

(assert (=> b!2978768 (= e!1873619 e!1873621)))

(declare-fun b!2978769 () Bool)

(declare-fun e!1873623 () Regex!9292)

(assert (=> b!2978769 (= e!1873614 e!1873623)))

(declare-fun lt!1037573 () Regex!9292)

(assert (=> b!2978769 (= lt!1037573 call!198846)))

(declare-fun lt!1037577 () Regex!9292)

(assert (=> b!2978769 (= lt!1037577 call!198844)))

(declare-fun c!489207 () Bool)

(declare-fun call!198845 () Bool)

(assert (=> b!2978769 (= c!489207 call!198845)))

(declare-fun b!2978770 () Bool)

(declare-fun e!1873626 () Regex!9292)

(assert (=> b!2978770 (= e!1873626 EmptyExpr!9292)))

(declare-fun b!2978771 () Bool)

(declare-fun e!1873613 () Regex!9292)

(assert (=> b!2978771 (= e!1873613 lt!1037573)))

(declare-fun bm!198837 () Bool)

(assert (=> bm!198837 (= call!198844 call!198843)))

(declare-fun b!2978772 () Bool)

(declare-fun e!1873618 () Regex!9292)

(assert (=> b!2978772 (= e!1873618 (Concat!14613 lt!1037576 lt!1037574))))

(declare-fun b!2978773 () Bool)

(assert (=> b!2978773 (= e!1873621 EmptyExpr!9292)))

(declare-fun b!2978774 () Bool)

(assert (=> b!2978774 (= e!1873613 (Union!9292 lt!1037573 lt!1037577))))

(declare-fun b!2978775 () Bool)

(assert (=> b!2978775 (= e!1873621 (Star!9292 lt!1037575))))

(declare-fun b!2978776 () Bool)

(declare-fun e!1873620 () Regex!9292)

(assert (=> b!2978776 (= e!1873620 (reg!9621 r!17423))))

(declare-fun b!2978777 () Bool)

(assert (=> b!2978777 (= e!1873618 lt!1037576)))

(declare-fun bm!198839 () Bool)

(declare-fun c!489205 () Bool)

(assert (=> bm!198839 (= call!198846 (simplify!293 (ite c!489205 (regOne!19097 (reg!9621 r!17423)) (regTwo!19096 (reg!9621 r!17423)))))))

(declare-fun b!2978778 () Bool)

(assert (=> b!2978778 (= e!1873623 lt!1037577)))

(declare-fun b!2978779 () Bool)

(assert (=> b!2978779 (= e!1873626 e!1873619)))

(declare-fun c!489211 () Bool)

(assert (=> b!2978779 (= c!489211 (is-Star!9292 (reg!9621 r!17423)))))

(declare-fun b!2978780 () Bool)

(assert (=> b!2978780 (= c!489205 (is-Union!9292 (reg!9621 r!17423)))))

(assert (=> b!2978780 (= e!1873619 e!1873614)))

(declare-fun d!843372 () Bool)

(declare-fun e!1873615 () Bool)

(assert (=> d!843372 e!1873615))

(declare-fun res!1228275 () Bool)

(assert (=> d!843372 (=> (not res!1228275) (not e!1873615))))

(declare-fun lt!1037578 () Regex!9292)

(assert (=> d!843372 (= res!1228275 (validRegex!4025 lt!1037578))))

(declare-fun e!1873616 () Regex!9292)

(assert (=> d!843372 (= lt!1037578 e!1873616)))

(declare-fun c!489204 () Bool)

(assert (=> d!843372 (= c!489204 (is-EmptyLang!9292 (reg!9621 r!17423)))))

(assert (=> d!843372 (validRegex!4025 (reg!9621 r!17423))))

(assert (=> d!843372 (= (simplify!293 (reg!9621 r!17423)) lt!1037578)))

(declare-fun bm!198838 () Bool)

(assert (=> bm!198838 (= call!198842 (isEmptyLang!406 (ite c!489205 lt!1037577 lt!1037576)))))

(declare-fun call!198847 () Bool)

(declare-fun bm!198840 () Bool)

(declare-fun isEmptyExpr!440 (Regex!9292) Bool)

(assert (=> bm!198840 (= call!198847 (isEmptyExpr!440 (ite c!489211 lt!1037575 lt!1037574)))))

(declare-fun b!2978781 () Bool)

(assert (=> b!2978781 (= e!1873625 EmptyLang!9292)))

(declare-fun b!2978782 () Bool)

(assert (=> b!2978782 (= e!1873615 (= (nullable!2985 lt!1037578) (nullable!2985 (reg!9621 r!17423))))))

(declare-fun b!2978783 () Bool)

(declare-fun c!489212 () Bool)

(assert (=> b!2978783 (= c!489212 call!198842)))

(assert (=> b!2978783 (= e!1873623 e!1873613)))

(declare-fun b!2978784 () Bool)

(assert (=> b!2978784 (= e!1873622 call!198845)))

(declare-fun b!2978785 () Bool)

(assert (=> b!2978785 (= e!1873624 call!198847)))

(declare-fun b!2978786 () Bool)

(assert (=> b!2978786 (= e!1873616 e!1873620)))

(declare-fun c!489206 () Bool)

(assert (=> b!2978786 (= c!489206 (is-ElementMatch!9292 (reg!9621 r!17423)))))

(declare-fun b!2978787 () Bool)

(declare-fun e!1873617 () Regex!9292)

(assert (=> b!2978787 (= e!1873617 e!1873618)))

(declare-fun c!489202 () Bool)

(assert (=> b!2978787 (= c!489202 call!198847)))

(declare-fun bm!198841 () Bool)

(assert (=> bm!198841 (= call!198845 call!198848)))

(declare-fun bm!198842 () Bool)

(assert (=> bm!198842 (= call!198848 (isEmptyLang!406 (ite c!489211 lt!1037575 (ite c!489205 lt!1037573 lt!1037574))))))

(declare-fun b!2978788 () Bool)

(declare-fun c!489209 () Bool)

(assert (=> b!2978788 (= c!489209 (is-EmptyExpr!9292 (reg!9621 r!17423)))))

(assert (=> b!2978788 (= e!1873620 e!1873626)))

(declare-fun b!2978789 () Bool)

(assert (=> b!2978789 (= e!1873617 lt!1037574)))

(declare-fun b!2978790 () Bool)

(declare-fun c!489210 () Bool)

(assert (=> b!2978790 (= c!489210 (isEmptyExpr!440 lt!1037576))))

(assert (=> b!2978790 (= e!1873625 e!1873617)))

(declare-fun bm!198843 () Bool)

(assert (=> bm!198843 (= call!198843 (simplify!293 (ite c!489211 (reg!9621 (reg!9621 r!17423)) (ite c!489205 (regTwo!19097 (reg!9621 r!17423)) (regOne!19096 (reg!9621 r!17423))))))))

(declare-fun b!2978791 () Bool)

(assert (=> b!2978791 (= e!1873616 EmptyLang!9292)))

(assert (= (and d!843372 c!489204) b!2978791))

(assert (= (and d!843372 (not c!489204)) b!2978786))

(assert (= (and b!2978786 c!489206) b!2978776))

(assert (= (and b!2978786 (not c!489206)) b!2978788))

(assert (= (and b!2978788 c!489209) b!2978770))

(assert (= (and b!2978788 (not c!489209)) b!2978779))

(assert (= (and b!2978779 c!489211) b!2978768))

(assert (= (and b!2978779 (not c!489211)) b!2978780))

(assert (= (and b!2978768 (not res!1228274)) b!2978785))

(assert (= (and b!2978768 c!489208) b!2978773))

(assert (= (and b!2978768 (not c!489208)) b!2978775))

(assert (= (and b!2978780 c!489205) b!2978769))

(assert (= (and b!2978780 (not c!489205)) b!2978767))

(assert (= (and b!2978769 c!489207) b!2978778))

(assert (= (and b!2978769 (not c!489207)) b!2978783))

(assert (= (and b!2978783 c!489212) b!2978771))

(assert (= (and b!2978783 (not c!489212)) b!2978774))

(assert (= (and b!2978767 (not res!1228276)) b!2978784))

(assert (= (and b!2978767 c!489203) b!2978781))

(assert (= (and b!2978767 (not c!489203)) b!2978790))

(assert (= (and b!2978790 c!489210) b!2978789))

(assert (= (and b!2978790 (not c!489210)) b!2978787))

(assert (= (and b!2978787 c!489202) b!2978777))

(assert (= (and b!2978787 (not c!489202)) b!2978772))

(assert (= (or b!2978769 b!2978767) bm!198839))

(assert (= (or b!2978769 b!2978767) bm!198837))

(assert (= (or b!2978769 b!2978784) bm!198841))

(assert (= (or b!2978783 b!2978767) bm!198838))

(assert (= (or b!2978785 b!2978787) bm!198840))

(assert (= (or b!2978768 bm!198837) bm!198843))

(assert (= (or b!2978768 bm!198841) bm!198842))

(assert (= (and d!843372 res!1228275) b!2978782))

(declare-fun m!3341189 () Bool)

(assert (=> bm!198843 m!3341189))

(declare-fun m!3341191 () Bool)

(assert (=> bm!198838 m!3341191))

(declare-fun m!3341193 () Bool)

(assert (=> bm!198842 m!3341193))

(declare-fun m!3341195 () Bool)

(assert (=> d!843372 m!3341195))

(declare-fun m!3341197 () Bool)

(assert (=> d!843372 m!3341197))

(declare-fun m!3341199 () Bool)

(assert (=> b!2978782 m!3341199))

(declare-fun m!3341201 () Bool)

(assert (=> b!2978782 m!3341201))

(declare-fun m!3341203 () Bool)

(assert (=> b!2978790 m!3341203))

(declare-fun m!3341205 () Bool)

(assert (=> bm!198840 m!3341205))

(declare-fun m!3341207 () Bool)

(assert (=> bm!198839 m!3341207))

(assert (=> b!2978422 d!843372))

(declare-fun d!843376 () Bool)

(assert (=> d!843376 (= (isEmpty!19284 s!11993) (is-Nil!35033 s!11993))))

(assert (=> b!2978426 d!843376))

(declare-fun bs!526986 () Bool)

(declare-fun b!2978865 () Bool)

(assert (= bs!526986 (and b!2978865 d!843362)))

(declare-fun lambda!111004 () Int)

(assert (=> bs!526986 (not (= lambda!111004 lambda!110994))))

(declare-fun bs!526987 () Bool)

(assert (= bs!526987 (and b!2978865 b!2978423)))

(assert (=> bs!526987 (= (= (reg!9621 lt!1037496) lt!1037497) (= lambda!111004 lambda!110978))))

(declare-fun bs!526988 () Bool)

(assert (= bs!526988 (and b!2978865 d!843350)))

(assert (=> bs!526988 (not (= lambda!111004 lambda!110989))))

(assert (=> bs!526986 (= (and (= (reg!9621 lt!1037496) lt!1037497) (= lt!1037496 (Star!9292 lt!1037497))) (= lambda!111004 lambda!110995))))

(assert (=> bs!526987 (not (= lambda!111004 lambda!110977))))

(assert (=> b!2978865 true))

(assert (=> b!2978865 true))

(declare-fun bs!526989 () Bool)

(declare-fun b!2978862 () Bool)

(assert (= bs!526989 (and b!2978862 d!843362)))

(declare-fun lambda!111005 () Int)

(assert (=> bs!526989 (not (= lambda!111005 lambda!110994))))

(declare-fun bs!526990 () Bool)

(assert (= bs!526990 (and b!2978862 b!2978865)))

(assert (=> bs!526990 (not (= lambda!111005 lambda!111004))))

(declare-fun bs!526991 () Bool)

(assert (= bs!526991 (and b!2978862 b!2978423)))

(assert (=> bs!526991 (not (= lambda!111005 lambda!110978))))

(declare-fun bs!526992 () Bool)

(assert (= bs!526992 (and b!2978862 d!843350)))

(assert (=> bs!526992 (not (= lambda!111005 lambda!110989))))

(assert (=> bs!526989 (not (= lambda!111005 lambda!110995))))

(assert (=> bs!526991 (not (= lambda!111005 lambda!110977))))

(assert (=> b!2978862 true))

(assert (=> b!2978862 true))

(declare-fun b!2978856 () Bool)

(declare-fun e!1873664 () Bool)

(assert (=> b!2978856 (= e!1873664 (= s!11993 (Cons!35033 (c!489116 lt!1037496) Nil!35033)))))

(declare-fun b!2978857 () Bool)

(declare-fun e!1873669 () Bool)

(assert (=> b!2978857 (= e!1873669 (matchRSpec!1429 (regTwo!19097 lt!1037496) s!11993))))

(declare-fun b!2978858 () Bool)

(declare-fun e!1873663 () Bool)

(declare-fun e!1873666 () Bool)

(assert (=> b!2978858 (= e!1873663 e!1873666)))

(declare-fun c!489229 () Bool)

(assert (=> b!2978858 (= c!489229 (is-Star!9292 lt!1037496))))

(declare-fun d!843378 () Bool)

(declare-fun c!489230 () Bool)

(assert (=> d!843378 (= c!489230 (is-EmptyExpr!9292 lt!1037496))))

(declare-fun e!1873665 () Bool)

(assert (=> d!843378 (= (matchRSpec!1429 lt!1037496 s!11993) e!1873665)))

(declare-fun b!2978859 () Bool)

(declare-fun e!1873668 () Bool)

(assert (=> b!2978859 (= e!1873665 e!1873668)))

(declare-fun res!1228310 () Bool)

(assert (=> b!2978859 (= res!1228310 (not (is-EmptyLang!9292 lt!1037496)))))

(assert (=> b!2978859 (=> (not res!1228310) (not e!1873668))))

(declare-fun b!2978860 () Bool)

(declare-fun call!198854 () Bool)

(assert (=> b!2978860 (= e!1873665 call!198854)))

(declare-fun b!2978861 () Bool)

(declare-fun c!489232 () Bool)

(assert (=> b!2978861 (= c!489232 (is-ElementMatch!9292 lt!1037496))))

(assert (=> b!2978861 (= e!1873668 e!1873664)))

(declare-fun call!198853 () Bool)

(assert (=> b!2978862 (= e!1873666 call!198853)))

(declare-fun bm!198848 () Bool)

(assert (=> bm!198848 (= call!198854 (isEmpty!19284 s!11993))))

(declare-fun b!2978863 () Bool)

(assert (=> b!2978863 (= e!1873663 e!1873669)))

(declare-fun res!1228309 () Bool)

(assert (=> b!2978863 (= res!1228309 (matchRSpec!1429 (regOne!19097 lt!1037496) s!11993))))

(assert (=> b!2978863 (=> res!1228309 e!1873669)))

(declare-fun b!2978864 () Bool)

(declare-fun c!489231 () Bool)

(assert (=> b!2978864 (= c!489231 (is-Union!9292 lt!1037496))))

(assert (=> b!2978864 (= e!1873664 e!1873663)))

(declare-fun e!1873667 () Bool)

(assert (=> b!2978865 (= e!1873667 call!198853)))

(declare-fun b!2978866 () Bool)

(declare-fun res!1228311 () Bool)

(assert (=> b!2978866 (=> res!1228311 e!1873667)))

(assert (=> b!2978866 (= res!1228311 call!198854)))

(assert (=> b!2978866 (= e!1873666 e!1873667)))

(declare-fun bm!198849 () Bool)

(assert (=> bm!198849 (= call!198853 (Exists!1572 (ite c!489229 lambda!111004 lambda!111005)))))

(assert (= (and d!843378 c!489230) b!2978860))

(assert (= (and d!843378 (not c!489230)) b!2978859))

(assert (= (and b!2978859 res!1228310) b!2978861))

(assert (= (and b!2978861 c!489232) b!2978856))

(assert (= (and b!2978861 (not c!489232)) b!2978864))

(assert (= (and b!2978864 c!489231) b!2978863))

(assert (= (and b!2978864 (not c!489231)) b!2978858))

(assert (= (and b!2978863 (not res!1228309)) b!2978857))

(assert (= (and b!2978858 c!489229) b!2978866))

(assert (= (and b!2978858 (not c!489229)) b!2978862))

(assert (= (and b!2978866 (not res!1228311)) b!2978865))

(assert (= (or b!2978865 b!2978862) bm!198849))

(assert (= (or b!2978860 b!2978866) bm!198848))

(declare-fun m!3341209 () Bool)

(assert (=> b!2978857 m!3341209))

(assert (=> bm!198848 m!3341049))

(declare-fun m!3341211 () Bool)

(assert (=> b!2978863 m!3341211))

(declare-fun m!3341213 () Bool)

(assert (=> bm!198849 m!3341213))

(assert (=> b!2978426 d!843378))

(declare-fun d!843380 () Bool)

(assert (=> d!843380 (= (matchR!4174 lt!1037496 s!11993) (matchRSpec!1429 lt!1037496 s!11993))))

(declare-fun lt!1037581 () Unit!48963)

(declare-fun choose!17635 (Regex!9292 List!35157) Unit!48963)

(assert (=> d!843380 (= lt!1037581 (choose!17635 lt!1037496 s!11993))))

(assert (=> d!843380 (validRegex!4025 lt!1037496)))

(assert (=> d!843380 (= (mainMatchTheorem!1429 lt!1037496 s!11993) lt!1037581)))

(declare-fun bs!526993 () Bool)

(assert (= bs!526993 d!843380))

(assert (=> bs!526993 m!3341037))

(assert (=> bs!526993 m!3341051))

(declare-fun m!3341215 () Bool)

(assert (=> bs!526993 m!3341215))

(assert (=> bs!526993 m!3341039))

(assert (=> b!2978426 d!843380))

(declare-fun b!2978867 () Bool)

(declare-fun res!1228313 () Bool)

(declare-fun e!1873671 () Bool)

(assert (=> b!2978867 (=> res!1228313 e!1873671)))

(assert (=> b!2978867 (= res!1228313 (not (is-Concat!14613 lt!1037497)))))

(declare-fun e!1873672 () Bool)

(assert (=> b!2978867 (= e!1873672 e!1873671)))

(declare-fun b!2978868 () Bool)

(declare-fun e!1873674 () Bool)

(declare-fun call!198859 () Bool)

(assert (=> b!2978868 (= e!1873674 call!198859)))

(declare-fun b!2978869 () Bool)

(declare-fun e!1873673 () Bool)

(assert (=> b!2978869 (= e!1873671 e!1873673)))

(declare-fun res!1228312 () Bool)

(assert (=> b!2978869 (=> (not res!1228312) (not e!1873673))))

(declare-fun call!198861 () Bool)

(assert (=> b!2978869 (= res!1228312 call!198861)))

(declare-fun bm!198854 () Bool)

(declare-fun call!198860 () Bool)

(declare-fun c!489233 () Bool)

(assert (=> bm!198854 (= call!198860 (validRegex!4025 (ite c!489233 (regOne!19097 lt!1037497) (regTwo!19096 lt!1037497))))))

(declare-fun b!2978870 () Bool)

(declare-fun e!1873676 () Bool)

(assert (=> b!2978870 (= e!1873676 call!198861)))

(declare-fun bm!198855 () Bool)

(declare-fun c!489234 () Bool)

(assert (=> bm!198855 (= call!198859 (validRegex!4025 (ite c!489234 (reg!9621 lt!1037497) (ite c!489233 (regTwo!19097 lt!1037497) (regOne!19096 lt!1037497)))))))

(declare-fun b!2978871 () Bool)

(assert (=> b!2978871 (= e!1873673 call!198860)))

(declare-fun bm!198856 () Bool)

(assert (=> bm!198856 (= call!198861 call!198859)))

(declare-fun b!2978872 () Bool)

(declare-fun e!1873670 () Bool)

(declare-fun e!1873675 () Bool)

(assert (=> b!2978872 (= e!1873670 e!1873675)))

(assert (=> b!2978872 (= c!489234 (is-Star!9292 lt!1037497))))

(declare-fun b!2978874 () Bool)

(declare-fun res!1228316 () Bool)

(assert (=> b!2978874 (=> (not res!1228316) (not e!1873676))))

(assert (=> b!2978874 (= res!1228316 call!198860)))

(assert (=> b!2978874 (= e!1873672 e!1873676)))

(declare-fun b!2978875 () Bool)

(assert (=> b!2978875 (= e!1873675 e!1873672)))

(assert (=> b!2978875 (= c!489233 (is-Union!9292 lt!1037497))))

(declare-fun b!2978873 () Bool)

(assert (=> b!2978873 (= e!1873675 e!1873674)))

(declare-fun res!1228314 () Bool)

(assert (=> b!2978873 (= res!1228314 (not (nullable!2985 (reg!9621 lt!1037497))))))

(assert (=> b!2978873 (=> (not res!1228314) (not e!1873674))))

(declare-fun d!843382 () Bool)

(declare-fun res!1228315 () Bool)

(assert (=> d!843382 (=> res!1228315 e!1873670)))

(assert (=> d!843382 (= res!1228315 (is-ElementMatch!9292 lt!1037497))))

(assert (=> d!843382 (= (validRegex!4025 lt!1037497) e!1873670)))

(assert (= (and d!843382 (not res!1228315)) b!2978872))

(assert (= (and b!2978872 c!489234) b!2978873))

(assert (= (and b!2978872 (not c!489234)) b!2978875))

(assert (= (and b!2978873 res!1228314) b!2978868))

(assert (= (and b!2978875 c!489233) b!2978874))

(assert (= (and b!2978875 (not c!489233)) b!2978867))

(assert (= (and b!2978874 res!1228316) b!2978870))

(assert (= (and b!2978867 (not res!1228313)) b!2978869))

(assert (= (and b!2978869 res!1228312) b!2978871))

(assert (= (or b!2978874 b!2978871) bm!198854))

(assert (= (or b!2978870 b!2978869) bm!198856))

(assert (= (or b!2978868 bm!198856) bm!198855))

(declare-fun m!3341217 () Bool)

(assert (=> bm!198854 m!3341217))

(declare-fun m!3341219 () Bool)

(assert (=> bm!198855 m!3341219))

(declare-fun m!3341221 () Bool)

(assert (=> b!2978873 m!3341221))

(assert (=> b!2978431 d!843382))

(declare-fun bs!526994 () Bool)

(declare-fun b!2978885 () Bool)

(assert (= bs!526994 (and b!2978885 d!843362)))

(declare-fun lambda!111006 () Int)

(assert (=> bs!526994 (not (= lambda!111006 lambda!110994))))

(declare-fun bs!526995 () Bool)

(assert (= bs!526995 (and b!2978885 b!2978865)))

(assert (=> bs!526995 (= (and (= (reg!9621 r!17423) (reg!9621 lt!1037496)) (= r!17423 lt!1037496)) (= lambda!111006 lambda!111004))))

(declare-fun bs!526996 () Bool)

(assert (= bs!526996 (and b!2978885 b!2978423)))

(assert (=> bs!526996 (= (and (= (reg!9621 r!17423) lt!1037497) (= r!17423 lt!1037496)) (= lambda!111006 lambda!110978))))

(declare-fun bs!526997 () Bool)

(assert (= bs!526997 (and b!2978885 b!2978862)))

(assert (=> bs!526997 (not (= lambda!111006 lambda!111005))))

(declare-fun bs!526998 () Bool)

(assert (= bs!526998 (and b!2978885 d!843350)))

(assert (=> bs!526998 (not (= lambda!111006 lambda!110989))))

(assert (=> bs!526994 (= (and (= (reg!9621 r!17423) lt!1037497) (= r!17423 (Star!9292 lt!1037497))) (= lambda!111006 lambda!110995))))

(assert (=> bs!526996 (not (= lambda!111006 lambda!110977))))

(assert (=> b!2978885 true))

(assert (=> b!2978885 true))

(declare-fun bs!526999 () Bool)

(declare-fun b!2978882 () Bool)

(assert (= bs!526999 (and b!2978882 b!2978885)))

(declare-fun lambda!111007 () Int)

(assert (=> bs!526999 (not (= lambda!111007 lambda!111006))))

(declare-fun bs!527000 () Bool)

(assert (= bs!527000 (and b!2978882 d!843362)))

(assert (=> bs!527000 (not (= lambda!111007 lambda!110994))))

(declare-fun bs!527001 () Bool)

(assert (= bs!527001 (and b!2978882 b!2978865)))

(assert (=> bs!527001 (not (= lambda!111007 lambda!111004))))

(declare-fun bs!527002 () Bool)

(assert (= bs!527002 (and b!2978882 b!2978423)))

(assert (=> bs!527002 (not (= lambda!111007 lambda!110978))))

(declare-fun bs!527003 () Bool)

(assert (= bs!527003 (and b!2978882 b!2978862)))

(assert (=> bs!527003 (= (and (= (regOne!19096 r!17423) (regOne!19096 lt!1037496)) (= (regTwo!19096 r!17423) (regTwo!19096 lt!1037496))) (= lambda!111007 lambda!111005))))

(declare-fun bs!527004 () Bool)

(assert (= bs!527004 (and b!2978882 d!843350)))

(assert (=> bs!527004 (not (= lambda!111007 lambda!110989))))

(assert (=> bs!527000 (not (= lambda!111007 lambda!110995))))

(assert (=> bs!527002 (not (= lambda!111007 lambda!110977))))

(assert (=> b!2978882 true))

(assert (=> b!2978882 true))

(declare-fun b!2978876 () Bool)

(declare-fun e!1873678 () Bool)

(assert (=> b!2978876 (= e!1873678 (= s!11993 (Cons!35033 (c!489116 r!17423) Nil!35033)))))

(declare-fun b!2978877 () Bool)

(declare-fun e!1873683 () Bool)

(assert (=> b!2978877 (= e!1873683 (matchRSpec!1429 (regTwo!19097 r!17423) s!11993))))

(declare-fun b!2978878 () Bool)

(declare-fun e!1873677 () Bool)

(declare-fun e!1873680 () Bool)

(assert (=> b!2978878 (= e!1873677 e!1873680)))

(declare-fun c!489235 () Bool)

(assert (=> b!2978878 (= c!489235 (is-Star!9292 r!17423))))

(declare-fun d!843384 () Bool)

(declare-fun c!489236 () Bool)

(assert (=> d!843384 (= c!489236 (is-EmptyExpr!9292 r!17423))))

(declare-fun e!1873679 () Bool)

(assert (=> d!843384 (= (matchRSpec!1429 r!17423 s!11993) e!1873679)))

(declare-fun b!2978879 () Bool)

(declare-fun e!1873682 () Bool)

(assert (=> b!2978879 (= e!1873679 e!1873682)))

(declare-fun res!1228318 () Bool)

(assert (=> b!2978879 (= res!1228318 (not (is-EmptyLang!9292 r!17423)))))

(assert (=> b!2978879 (=> (not res!1228318) (not e!1873682))))

(declare-fun b!2978880 () Bool)

(declare-fun call!198863 () Bool)

(assert (=> b!2978880 (= e!1873679 call!198863)))

(declare-fun b!2978881 () Bool)

(declare-fun c!489238 () Bool)

(assert (=> b!2978881 (= c!489238 (is-ElementMatch!9292 r!17423))))

(assert (=> b!2978881 (= e!1873682 e!1873678)))

(declare-fun call!198862 () Bool)

(assert (=> b!2978882 (= e!1873680 call!198862)))

(declare-fun bm!198857 () Bool)

(assert (=> bm!198857 (= call!198863 (isEmpty!19284 s!11993))))

(declare-fun b!2978883 () Bool)

(assert (=> b!2978883 (= e!1873677 e!1873683)))

(declare-fun res!1228317 () Bool)

(assert (=> b!2978883 (= res!1228317 (matchRSpec!1429 (regOne!19097 r!17423) s!11993))))

(assert (=> b!2978883 (=> res!1228317 e!1873683)))

(declare-fun b!2978884 () Bool)

(declare-fun c!489237 () Bool)

(assert (=> b!2978884 (= c!489237 (is-Union!9292 r!17423))))

(assert (=> b!2978884 (= e!1873678 e!1873677)))

(declare-fun e!1873681 () Bool)

(assert (=> b!2978885 (= e!1873681 call!198862)))

(declare-fun b!2978886 () Bool)

(declare-fun res!1228319 () Bool)

(assert (=> b!2978886 (=> res!1228319 e!1873681)))

(assert (=> b!2978886 (= res!1228319 call!198863)))

(assert (=> b!2978886 (= e!1873680 e!1873681)))

(declare-fun bm!198858 () Bool)

(assert (=> bm!198858 (= call!198862 (Exists!1572 (ite c!489235 lambda!111006 lambda!111007)))))

(assert (= (and d!843384 c!489236) b!2978880))

(assert (= (and d!843384 (not c!489236)) b!2978879))

(assert (= (and b!2978879 res!1228318) b!2978881))

(assert (= (and b!2978881 c!489238) b!2978876))

(assert (= (and b!2978881 (not c!489238)) b!2978884))

(assert (= (and b!2978884 c!489237) b!2978883))

(assert (= (and b!2978884 (not c!489237)) b!2978878))

(assert (= (and b!2978883 (not res!1228317)) b!2978877))

(assert (= (and b!2978878 c!489235) b!2978886))

(assert (= (and b!2978878 (not c!489235)) b!2978882))

(assert (= (and b!2978886 (not res!1228319)) b!2978885))

(assert (= (or b!2978885 b!2978882) bm!198858))

(assert (= (or b!2978880 b!2978886) bm!198857))

(declare-fun m!3341223 () Bool)

(assert (=> b!2978877 m!3341223))

(assert (=> bm!198857 m!3341049))

(declare-fun m!3341225 () Bool)

(assert (=> b!2978883 m!3341225))

(declare-fun m!3341227 () Bool)

(assert (=> bm!198858 m!3341227))

(assert (=> b!2978432 d!843384))

(declare-fun b!2978887 () Bool)

(declare-fun res!1228324 () Bool)

(declare-fun e!1873686 () Bool)

(assert (=> b!2978887 (=> (not res!1228324) (not e!1873686))))

(declare-fun call!198864 () Bool)

(assert (=> b!2978887 (= res!1228324 (not call!198864))))

(declare-fun b!2978888 () Bool)

(declare-fun e!1873689 () Bool)

(assert (=> b!2978888 (= e!1873689 (nullable!2985 r!17423))))

(declare-fun b!2978889 () Bool)

(assert (=> b!2978889 (= e!1873689 (matchR!4174 (derivativeStep!2585 r!17423 (head!6644 s!11993)) (tail!4870 s!11993)))))

(declare-fun b!2978890 () Bool)

(declare-fun e!1873690 () Bool)

(declare-fun lt!1037582 () Bool)

(assert (=> b!2978890 (= e!1873690 (= lt!1037582 call!198864))))

(declare-fun d!843386 () Bool)

(assert (=> d!843386 e!1873690))

(declare-fun c!489240 () Bool)

(assert (=> d!843386 (= c!489240 (is-EmptyExpr!9292 r!17423))))

(assert (=> d!843386 (= lt!1037582 e!1873689)))

(declare-fun c!489241 () Bool)

(assert (=> d!843386 (= c!489241 (isEmpty!19284 s!11993))))

(assert (=> d!843386 (validRegex!4025 r!17423)))

(assert (=> d!843386 (= (matchR!4174 r!17423 s!11993) lt!1037582)))

(declare-fun b!2978891 () Bool)

(declare-fun e!1873685 () Bool)

(declare-fun e!1873688 () Bool)

(assert (=> b!2978891 (= e!1873685 e!1873688)))

(declare-fun res!1228325 () Bool)

(assert (=> b!2978891 (=> res!1228325 e!1873688)))

(assert (=> b!2978891 (= res!1228325 call!198864)))

(declare-fun b!2978892 () Bool)

(declare-fun e!1873687 () Bool)

(assert (=> b!2978892 (= e!1873687 e!1873685)))

(declare-fun res!1228323 () Bool)

(assert (=> b!2978892 (=> (not res!1228323) (not e!1873685))))

(assert (=> b!2978892 (= res!1228323 (not lt!1037582))))

(declare-fun b!2978893 () Bool)

(declare-fun res!1228327 () Bool)

(assert (=> b!2978893 (=> res!1228327 e!1873687)))

(assert (=> b!2978893 (= res!1228327 e!1873686)))

(declare-fun res!1228326 () Bool)

(assert (=> b!2978893 (=> (not res!1228326) (not e!1873686))))

(assert (=> b!2978893 (= res!1228326 lt!1037582)))

(declare-fun b!2978894 () Bool)

(declare-fun res!1228322 () Bool)

(assert (=> b!2978894 (=> res!1228322 e!1873687)))

(assert (=> b!2978894 (= res!1228322 (not (is-ElementMatch!9292 r!17423)))))

(declare-fun e!1873684 () Bool)

(assert (=> b!2978894 (= e!1873684 e!1873687)))

(declare-fun b!2978895 () Bool)

(assert (=> b!2978895 (= e!1873686 (= (head!6644 s!11993) (c!489116 r!17423)))))

(declare-fun b!2978896 () Bool)

(assert (=> b!2978896 (= e!1873690 e!1873684)))

(declare-fun c!489239 () Bool)

(assert (=> b!2978896 (= c!489239 (is-EmptyLang!9292 r!17423))))

(declare-fun b!2978897 () Bool)

(declare-fun res!1228321 () Bool)

(assert (=> b!2978897 (=> res!1228321 e!1873688)))

(assert (=> b!2978897 (= res!1228321 (not (isEmpty!19284 (tail!4870 s!11993))))))

(declare-fun b!2978898 () Bool)

(assert (=> b!2978898 (= e!1873688 (not (= (head!6644 s!11993) (c!489116 r!17423))))))

(declare-fun b!2978899 () Bool)

(assert (=> b!2978899 (= e!1873684 (not lt!1037582))))

(declare-fun b!2978900 () Bool)

(declare-fun res!1228320 () Bool)

(assert (=> b!2978900 (=> (not res!1228320) (not e!1873686))))

(assert (=> b!2978900 (= res!1228320 (isEmpty!19284 (tail!4870 s!11993)))))

(declare-fun bm!198859 () Bool)

(assert (=> bm!198859 (= call!198864 (isEmpty!19284 s!11993))))

(assert (= (and d!843386 c!489241) b!2978888))

(assert (= (and d!843386 (not c!489241)) b!2978889))

(assert (= (and d!843386 c!489240) b!2978890))

(assert (= (and d!843386 (not c!489240)) b!2978896))

(assert (= (and b!2978896 c!489239) b!2978899))

(assert (= (and b!2978896 (not c!489239)) b!2978894))

(assert (= (and b!2978894 (not res!1228322)) b!2978893))

(assert (= (and b!2978893 res!1228326) b!2978887))

(assert (= (and b!2978887 res!1228324) b!2978900))

(assert (= (and b!2978900 res!1228320) b!2978895))

(assert (= (and b!2978893 (not res!1228327)) b!2978892))

(assert (= (and b!2978892 res!1228323) b!2978891))

(assert (= (and b!2978891 (not res!1228325)) b!2978897))

(assert (= (and b!2978897 (not res!1228321)) b!2978898))

(assert (= (or b!2978890 b!2978887 b!2978891) bm!198859))

(assert (=> b!2978889 m!3341153))

(assert (=> b!2978889 m!3341153))

(declare-fun m!3341229 () Bool)

(assert (=> b!2978889 m!3341229))

(assert (=> b!2978889 m!3341157))

(assert (=> b!2978889 m!3341229))

(assert (=> b!2978889 m!3341157))

(declare-fun m!3341231 () Bool)

(assert (=> b!2978889 m!3341231))

(declare-fun m!3341233 () Bool)

(assert (=> b!2978888 m!3341233))

(assert (=> b!2978898 m!3341153))

(assert (=> b!2978897 m!3341157))

(assert (=> b!2978897 m!3341157))

(assert (=> b!2978897 m!3341163))

(assert (=> b!2978900 m!3341157))

(assert (=> b!2978900 m!3341157))

(assert (=> b!2978900 m!3341163))

(assert (=> d!843386 m!3341049))

(assert (=> d!843386 m!3341029))

(assert (=> bm!198859 m!3341049))

(assert (=> b!2978895 m!3341153))

(assert (=> b!2978432 d!843386))

(declare-fun d!843388 () Bool)

(assert (=> d!843388 (= (matchR!4174 r!17423 s!11993) (matchRSpec!1429 r!17423 s!11993))))

(declare-fun lt!1037583 () Unit!48963)

(assert (=> d!843388 (= lt!1037583 (choose!17635 r!17423 s!11993))))

(assert (=> d!843388 (validRegex!4025 r!17423)))

(assert (=> d!843388 (= (mainMatchTheorem!1429 r!17423 s!11993) lt!1037583)))

(declare-fun bs!527005 () Bool)

(assert (= bs!527005 d!843388))

(assert (=> bs!527005 m!3341033))

(assert (=> bs!527005 m!3341031))

(declare-fun m!3341235 () Bool)

(assert (=> bs!527005 m!3341235))

(assert (=> bs!527005 m!3341029))

(assert (=> b!2978432 d!843388))

(declare-fun b!2978920 () Bool)

(declare-fun e!1873702 () List!35157)

(assert (=> b!2978920 (= e!1873702 s!11993)))

(declare-fun b!2978921 () Bool)

(assert (=> b!2978921 (= e!1873702 (Cons!35033 (h!40453 Nil!35033) (++!8360 (t!234222 Nil!35033) s!11993)))))

(declare-fun b!2978923 () Bool)

(declare-fun e!1873703 () Bool)

(declare-fun lt!1037586 () List!35157)

(assert (=> b!2978923 (= e!1873703 (or (not (= s!11993 Nil!35033)) (= lt!1037586 Nil!35033)))))

(declare-fun d!843390 () Bool)

(assert (=> d!843390 e!1873703))

(declare-fun res!1228336 () Bool)

(assert (=> d!843390 (=> (not res!1228336) (not e!1873703))))

(declare-fun content!4761 (List!35157) (Set C!18770))

(assert (=> d!843390 (= res!1228336 (= (content!4761 lt!1037586) (set.union (content!4761 Nil!35033) (content!4761 s!11993))))))

(assert (=> d!843390 (= lt!1037586 e!1873702)))

(declare-fun c!489248 () Bool)

(assert (=> d!843390 (= c!489248 (is-Nil!35033 Nil!35033))))

(assert (=> d!843390 (= (++!8360 Nil!35033 s!11993) lt!1037586)))

(declare-fun b!2978922 () Bool)

(declare-fun res!1228335 () Bool)

(assert (=> b!2978922 (=> (not res!1228335) (not e!1873703))))

(declare-fun size!26472 (List!35157) Int)

(assert (=> b!2978922 (= res!1228335 (= (size!26472 lt!1037586) (+ (size!26472 Nil!35033) (size!26472 s!11993))))))

(assert (= (and d!843390 c!489248) b!2978920))

(assert (= (and d!843390 (not c!489248)) b!2978921))

(assert (= (and d!843390 res!1228336) b!2978922))

(assert (= (and b!2978922 res!1228335) b!2978923))

(declare-fun m!3341237 () Bool)

(assert (=> b!2978921 m!3341237))

(declare-fun m!3341239 () Bool)

(assert (=> d!843390 m!3341239))

(declare-fun m!3341241 () Bool)

(assert (=> d!843390 m!3341241))

(declare-fun m!3341243 () Bool)

(assert (=> d!843390 m!3341243))

(declare-fun m!3341245 () Bool)

(assert (=> b!2978922 m!3341245))

(declare-fun m!3341247 () Bool)

(assert (=> b!2978922 m!3341247))

(declare-fun m!3341249 () Bool)

(assert (=> b!2978922 m!3341249))

(assert (=> b!2978430 d!843390))

(declare-fun b!2978924 () Bool)

(declare-fun res!1228338 () Bool)

(declare-fun e!1873705 () Bool)

(assert (=> b!2978924 (=> res!1228338 e!1873705)))

(assert (=> b!2978924 (= res!1228338 (not (is-Concat!14613 r!17423)))))

(declare-fun e!1873706 () Bool)

(assert (=> b!2978924 (= e!1873706 e!1873705)))

(declare-fun b!2978925 () Bool)

(declare-fun e!1873708 () Bool)

(declare-fun call!198867 () Bool)

(assert (=> b!2978925 (= e!1873708 call!198867)))

(declare-fun b!2978926 () Bool)

(declare-fun e!1873707 () Bool)

(assert (=> b!2978926 (= e!1873705 e!1873707)))

(declare-fun res!1228337 () Bool)

(assert (=> b!2978926 (=> (not res!1228337) (not e!1873707))))

(declare-fun call!198869 () Bool)

(assert (=> b!2978926 (= res!1228337 call!198869)))

(declare-fun bm!198862 () Bool)

(declare-fun call!198868 () Bool)

(declare-fun c!489249 () Bool)

(assert (=> bm!198862 (= call!198868 (validRegex!4025 (ite c!489249 (regOne!19097 r!17423) (regTwo!19096 r!17423))))))

(declare-fun b!2978927 () Bool)

(declare-fun e!1873710 () Bool)

(assert (=> b!2978927 (= e!1873710 call!198869)))

(declare-fun c!489250 () Bool)

(declare-fun bm!198863 () Bool)

(assert (=> bm!198863 (= call!198867 (validRegex!4025 (ite c!489250 (reg!9621 r!17423) (ite c!489249 (regTwo!19097 r!17423) (regOne!19096 r!17423)))))))

(declare-fun b!2978928 () Bool)

(assert (=> b!2978928 (= e!1873707 call!198868)))

(declare-fun bm!198864 () Bool)

(assert (=> bm!198864 (= call!198869 call!198867)))

(declare-fun b!2978929 () Bool)

(declare-fun e!1873704 () Bool)

(declare-fun e!1873709 () Bool)

(assert (=> b!2978929 (= e!1873704 e!1873709)))

(assert (=> b!2978929 (= c!489250 (is-Star!9292 r!17423))))

(declare-fun b!2978931 () Bool)

(declare-fun res!1228341 () Bool)

(assert (=> b!2978931 (=> (not res!1228341) (not e!1873710))))

(assert (=> b!2978931 (= res!1228341 call!198868)))

(assert (=> b!2978931 (= e!1873706 e!1873710)))

(declare-fun b!2978932 () Bool)

(assert (=> b!2978932 (= e!1873709 e!1873706)))

(assert (=> b!2978932 (= c!489249 (is-Union!9292 r!17423))))

(declare-fun b!2978930 () Bool)

(assert (=> b!2978930 (= e!1873709 e!1873708)))

(declare-fun res!1228339 () Bool)

(assert (=> b!2978930 (= res!1228339 (not (nullable!2985 (reg!9621 r!17423))))))

(assert (=> b!2978930 (=> (not res!1228339) (not e!1873708))))

(declare-fun d!843392 () Bool)

(declare-fun res!1228340 () Bool)

(assert (=> d!843392 (=> res!1228340 e!1873704)))

(assert (=> d!843392 (= res!1228340 (is-ElementMatch!9292 r!17423))))

(assert (=> d!843392 (= (validRegex!4025 r!17423) e!1873704)))

(assert (= (and d!843392 (not res!1228340)) b!2978929))

(assert (= (and b!2978929 c!489250) b!2978930))

(assert (= (and b!2978929 (not c!489250)) b!2978932))

(assert (= (and b!2978930 res!1228339) b!2978925))

(assert (= (and b!2978932 c!489249) b!2978931))

(assert (= (and b!2978932 (not c!489249)) b!2978924))

(assert (= (and b!2978931 res!1228341) b!2978927))

(assert (= (and b!2978924 (not res!1228338)) b!2978926))

(assert (= (and b!2978926 res!1228337) b!2978928))

(assert (= (or b!2978931 b!2978928) bm!198862))

(assert (= (or b!2978927 b!2978926) bm!198864))

(assert (= (or b!2978925 bm!198864) bm!198863))

(declare-fun m!3341251 () Bool)

(assert (=> bm!198862 m!3341251))

(declare-fun m!3341253 () Bool)

(assert (=> bm!198863 m!3341253))

(assert (=> b!2978930 m!3341201))

(assert (=> start!287922 d!843392))

(declare-fun e!1873713 () Bool)

(assert (=> b!2978434 (= tp!948657 e!1873713)))

(declare-fun b!2978944 () Bool)

(declare-fun tp!948691 () Bool)

(declare-fun tp!948690 () Bool)

(assert (=> b!2978944 (= e!1873713 (and tp!948691 tp!948690))))

(declare-fun b!2978943 () Bool)

(assert (=> b!2978943 (= e!1873713 tp_is_empty!16147)))

(declare-fun b!2978945 () Bool)

(declare-fun tp!948688 () Bool)

(assert (=> b!2978945 (= e!1873713 tp!948688)))

(declare-fun b!2978946 () Bool)

(declare-fun tp!948692 () Bool)

(declare-fun tp!948689 () Bool)

(assert (=> b!2978946 (= e!1873713 (and tp!948692 tp!948689))))

(assert (= (and b!2978434 (is-ElementMatch!9292 (reg!9621 r!17423))) b!2978943))

(assert (= (and b!2978434 (is-Concat!14613 (reg!9621 r!17423))) b!2978944))

(assert (= (and b!2978434 (is-Star!9292 (reg!9621 r!17423))) b!2978945))

(assert (= (and b!2978434 (is-Union!9292 (reg!9621 r!17423))) b!2978946))

(declare-fun e!1873714 () Bool)

(assert (=> b!2978427 (= tp!948658 e!1873714)))

(declare-fun b!2978948 () Bool)

(declare-fun tp!948696 () Bool)

(declare-fun tp!948695 () Bool)

(assert (=> b!2978948 (= e!1873714 (and tp!948696 tp!948695))))

(declare-fun b!2978947 () Bool)

(assert (=> b!2978947 (= e!1873714 tp_is_empty!16147)))

(declare-fun b!2978949 () Bool)

(declare-fun tp!948693 () Bool)

(assert (=> b!2978949 (= e!1873714 tp!948693)))

(declare-fun b!2978950 () Bool)

(declare-fun tp!948697 () Bool)

(declare-fun tp!948694 () Bool)

(assert (=> b!2978950 (= e!1873714 (and tp!948697 tp!948694))))

(assert (= (and b!2978427 (is-ElementMatch!9292 (regOne!19097 r!17423))) b!2978947))

(assert (= (and b!2978427 (is-Concat!14613 (regOne!19097 r!17423))) b!2978948))

(assert (= (and b!2978427 (is-Star!9292 (regOne!19097 r!17423))) b!2978949))

(assert (= (and b!2978427 (is-Union!9292 (regOne!19097 r!17423))) b!2978950))

(declare-fun e!1873715 () Bool)

(assert (=> b!2978427 (= tp!948655 e!1873715)))

(declare-fun b!2978952 () Bool)

(declare-fun tp!948701 () Bool)

(declare-fun tp!948700 () Bool)

(assert (=> b!2978952 (= e!1873715 (and tp!948701 tp!948700))))

(declare-fun b!2978951 () Bool)

(assert (=> b!2978951 (= e!1873715 tp_is_empty!16147)))

(declare-fun b!2978953 () Bool)

(declare-fun tp!948698 () Bool)

(assert (=> b!2978953 (= e!1873715 tp!948698)))

(declare-fun b!2978954 () Bool)

(declare-fun tp!948702 () Bool)

(declare-fun tp!948699 () Bool)

(assert (=> b!2978954 (= e!1873715 (and tp!948702 tp!948699))))

(assert (= (and b!2978427 (is-ElementMatch!9292 (regTwo!19097 r!17423))) b!2978951))

(assert (= (and b!2978427 (is-Concat!14613 (regTwo!19097 r!17423))) b!2978952))

(assert (= (and b!2978427 (is-Star!9292 (regTwo!19097 r!17423))) b!2978953))

(assert (= (and b!2978427 (is-Union!9292 (regTwo!19097 r!17423))) b!2978954))

(declare-fun b!2978959 () Bool)

(declare-fun e!1873718 () Bool)

(declare-fun tp!948705 () Bool)

(assert (=> b!2978959 (= e!1873718 (and tp_is_empty!16147 tp!948705))))

(assert (=> b!2978428 (= tp!948654 e!1873718)))

(assert (= (and b!2978428 (is-Cons!35033 (t!234222 s!11993))) b!2978959))

(declare-fun e!1873719 () Bool)

(assert (=> b!2978425 (= tp!948656 e!1873719)))

(declare-fun b!2978961 () Bool)

(declare-fun tp!948709 () Bool)

(declare-fun tp!948708 () Bool)

(assert (=> b!2978961 (= e!1873719 (and tp!948709 tp!948708))))

(declare-fun b!2978960 () Bool)

(assert (=> b!2978960 (= e!1873719 tp_is_empty!16147)))

(declare-fun b!2978962 () Bool)

(declare-fun tp!948706 () Bool)

(assert (=> b!2978962 (= e!1873719 tp!948706)))

(declare-fun b!2978963 () Bool)

(declare-fun tp!948710 () Bool)

(declare-fun tp!948707 () Bool)

(assert (=> b!2978963 (= e!1873719 (and tp!948710 tp!948707))))

(assert (= (and b!2978425 (is-ElementMatch!9292 (regOne!19096 r!17423))) b!2978960))

(assert (= (and b!2978425 (is-Concat!14613 (regOne!19096 r!17423))) b!2978961))

(assert (= (and b!2978425 (is-Star!9292 (regOne!19096 r!17423))) b!2978962))

(assert (= (and b!2978425 (is-Union!9292 (regOne!19096 r!17423))) b!2978963))

(declare-fun e!1873720 () Bool)

(assert (=> b!2978425 (= tp!948659 e!1873720)))

(declare-fun b!2978965 () Bool)

(declare-fun tp!948714 () Bool)

(declare-fun tp!948713 () Bool)

(assert (=> b!2978965 (= e!1873720 (and tp!948714 tp!948713))))

(declare-fun b!2978964 () Bool)

(assert (=> b!2978964 (= e!1873720 tp_is_empty!16147)))

(declare-fun b!2978966 () Bool)

(declare-fun tp!948711 () Bool)

(assert (=> b!2978966 (= e!1873720 tp!948711)))

(declare-fun b!2978967 () Bool)

(declare-fun tp!948715 () Bool)

(declare-fun tp!948712 () Bool)

(assert (=> b!2978967 (= e!1873720 (and tp!948715 tp!948712))))

(assert (= (and b!2978425 (is-ElementMatch!9292 (regTwo!19096 r!17423))) b!2978964))

(assert (= (and b!2978425 (is-Concat!14613 (regTwo!19096 r!17423))) b!2978965))

(assert (= (and b!2978425 (is-Star!9292 (regTwo!19096 r!17423))) b!2978966))

(assert (= (and b!2978425 (is-Union!9292 (regTwo!19096 r!17423))) b!2978967))

(push 1)

(assert (not bm!198862))

(assert (not b!2978966))

(assert (not b!2978930))

(assert (not d!843364))

(assert (not b!2978857))

(assert (not b!2978900))

(assert (not d!843386))

(assert (not d!843362))

(assert (not b!2978897))

(assert (not b!2978561))

(assert (not b!2978967))

(assert (not b!2978949))

(assert (not d!843354))

(assert (not bm!198857))

(assert (not bm!198839))

(assert (not d!843348))

(assert (not b!2978883))

(assert (not b!2978961))

(assert (not b!2978946))

(assert (not b!2978954))

(assert (not b!2978559))

(assert (not d!843346))

(assert (not b!2978898))

(assert (not bm!198838))

(assert (not d!843366))

(assert (not bm!198848))

(assert (not bm!198840))

(assert (not b!2978558))

(assert (not bm!198858))

(assert (not d!843388))

(assert (not d!843390))

(assert (not b!2978560))

(assert (not bm!198813))

(assert (not b!2978953))

(assert (not b!2978895))

(assert (not b!2978948))

(assert (not b!2978556))

(assert (not b!2978952))

(assert (not bm!198863))

(assert (not bm!198842))

(assert (not b!2978660))

(assert (not b!2978963))

(assert (not b!2978863))

(assert (not b!2978950))

(assert (not bm!198849))

(assert (not b!2978889))

(assert (not b!2978921))

(assert (not b!2978651))

(assert (not b!2978888))

(assert (not d!843380))

(assert (not b!2978922))

(assert (not b!2978944))

(assert (not bm!198855))

(assert (not b!2978555))

(assert (not b!2978782))

(assert (not bm!198859))

(assert (not b!2978959))

(assert (not b!2978689))

(assert (not b!2978790))

(assert (not bm!198854))

(assert (not bm!198814))

(assert (not bm!198843))

(assert (not d!843372))

(assert (not b!2978659))

(assert (not b!2978873))

(assert (not d!843350))

(assert (not b!2978650))

(assert (not bm!198806))

(assert (not b!2978945))

(assert (not b!2978657))

(assert tp_is_empty!16147)

(assert (not b!2978662))

(assert (not b!2978962))

(assert (not b!2978877))

(assert (not b!2978965))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

