; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!287818 () Bool)

(assert start!287818)

(declare-fun b!2977006 () Bool)

(assert (=> b!2977006 true))

(assert (=> b!2977006 true))

(assert (=> b!2977006 true))

(declare-fun lambda!110878 () Int)

(declare-fun lambda!110877 () Int)

(assert (=> b!2977006 (not (= lambda!110878 lambda!110877))))

(assert (=> b!2977006 true))

(assert (=> b!2977006 true))

(assert (=> b!2977006 true))

(declare-fun b!2977002 () Bool)

(declare-fun e!1872636 () Bool)

(declare-fun e!1872639 () Bool)

(assert (=> b!2977002 (= e!1872636 (not e!1872639))))

(declare-fun res!1227534 () Bool)

(assert (=> b!2977002 (=> res!1227534 e!1872639)))

(declare-fun lt!1037237 () Bool)

(declare-datatypes ((C!18762 0))(
  ( (C!18763 (val!11417 Int)) )
))
(declare-datatypes ((Regex!9288 0))(
  ( (ElementMatch!9288 (c!488808 C!18762)) (Concat!14609 (regOne!19088 Regex!9288) (regTwo!19088 Regex!9288)) (EmptyExpr!9288) (Star!9288 (reg!9617 Regex!9288)) (EmptyLang!9288) (Union!9288 (regOne!19089 Regex!9288) (regTwo!19089 Regex!9288)) )
))
(declare-fun r!17423 () Regex!9288)

(assert (=> b!2977002 (= res!1227534 (or lt!1037237 (is-Concat!14609 r!17423) (is-Union!9288 r!17423) (not (is-Star!9288 r!17423))))))

(declare-datatypes ((List!35153 0))(
  ( (Nil!35029) (Cons!35029 (h!40449 C!18762) (t!234218 List!35153)) )
))
(declare-fun s!11993 () List!35153)

(declare-fun matchRSpec!1425 (Regex!9288 List!35153) Bool)

(assert (=> b!2977002 (= lt!1037237 (matchRSpec!1425 r!17423 s!11993))))

(declare-fun matchR!4170 (Regex!9288 List!35153) Bool)

(assert (=> b!2977002 (= lt!1037237 (matchR!4170 r!17423 s!11993))))

(declare-datatypes ((Unit!48955 0))(
  ( (Unit!48956) )
))
(declare-fun lt!1037238 () Unit!48955)

(declare-fun mainMatchTheorem!1425 (Regex!9288 List!35153) Unit!48955)

(assert (=> b!2977002 (= lt!1037238 (mainMatchTheorem!1425 r!17423 s!11993))))

(declare-fun b!2977003 () Bool)

(declare-fun e!1872641 () Bool)

(declare-fun e!1872638 () Bool)

(assert (=> b!2977003 (= e!1872641 e!1872638)))

(declare-fun res!1227533 () Bool)

(assert (=> b!2977003 (=> res!1227533 e!1872638)))

(declare-fun isEmpty!19276 (List!35153) Bool)

(assert (=> b!2977003 (= res!1227533 (isEmpty!19276 s!11993))))

(declare-fun lt!1037239 () Regex!9288)

(assert (=> b!2977003 (matchRSpec!1425 lt!1037239 s!11993)))

(declare-fun lt!1037233 () Unit!48955)

(assert (=> b!2977003 (= lt!1037233 (mainMatchTheorem!1425 lt!1037239 s!11993))))

(declare-fun b!2977004 () Bool)

(declare-fun e!1872637 () Bool)

(assert (=> b!2977004 (= e!1872639 e!1872637)))

(declare-fun res!1227531 () Bool)

(assert (=> b!2977004 (=> res!1227531 e!1872637)))

(declare-fun lt!1037235 () Regex!9288)

(declare-fun isEmptyLang!402 (Regex!9288) Bool)

(assert (=> b!2977004 (= res!1227531 (isEmptyLang!402 lt!1037235))))

(declare-fun simplify!289 (Regex!9288) Regex!9288)

(assert (=> b!2977004 (= lt!1037235 (simplify!289 (reg!9617 r!17423)))))

(declare-fun b!2977005 () Bool)

(declare-fun e!1872640 () Bool)

(declare-fun tp_is_empty!16139 () Bool)

(assert (=> b!2977005 (= e!1872640 tp_is_empty!16139)))

(declare-fun e!1872642 () Bool)

(assert (=> b!2977006 (= e!1872638 e!1872642)))

(declare-fun res!1227532 () Bool)

(assert (=> b!2977006 (=> res!1227532 e!1872642)))

(declare-fun lt!1037236 () Bool)

(assert (=> b!2977006 (= res!1227532 (not lt!1037236))))

(declare-fun Exists!1568 (Int) Bool)

(assert (=> b!2977006 (= (Exists!1568 lambda!110877) (Exists!1568 lambda!110878))))

(declare-fun lt!1037234 () Unit!48955)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!253 (Regex!9288 List!35153) Unit!48955)

(assert (=> b!2977006 (= lt!1037234 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!253 lt!1037235 s!11993))))

(assert (=> b!2977006 (= lt!1037236 (Exists!1568 lambda!110877))))

(declare-datatypes ((tuple2!33914 0))(
  ( (tuple2!33915 (_1!20089 List!35153) (_2!20089 List!35153)) )
))
(declare-datatypes ((Option!6689 0))(
  ( (None!6688) (Some!6688 (v!34822 tuple2!33914)) )
))
(declare-fun isDefined!5240 (Option!6689) Bool)

(declare-fun findConcatSeparation!1083 (Regex!9288 Regex!9288 List!35153 List!35153 List!35153) Option!6689)

(assert (=> b!2977006 (= lt!1037236 (isDefined!5240 (findConcatSeparation!1083 lt!1037235 lt!1037239 Nil!35029 s!11993 s!11993)))))

(declare-fun lt!1037240 () Unit!48955)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!861 (Regex!9288 Regex!9288 List!35153) Unit!48955)

(assert (=> b!2977006 (= lt!1037240 (lemmaFindConcatSeparationEquivalentToExists!861 lt!1037235 lt!1037239 s!11993))))

(declare-fun res!1227529 () Bool)

(assert (=> start!287818 (=> (not res!1227529) (not e!1872636))))

(declare-fun validRegex!4021 (Regex!9288) Bool)

(assert (=> start!287818 (= res!1227529 (validRegex!4021 r!17423))))

(assert (=> start!287818 e!1872636))

(assert (=> start!287818 e!1872640))

(declare-fun e!1872643 () Bool)

(assert (=> start!287818 e!1872643))

(declare-fun b!2977007 () Bool)

(assert (=> b!2977007 (= e!1872642 (validRegex!4021 lt!1037235))))

(declare-fun b!2977008 () Bool)

(declare-fun tp!948433 () Bool)

(declare-fun tp!948434 () Bool)

(assert (=> b!2977008 (= e!1872640 (and tp!948433 tp!948434))))

(declare-fun b!2977009 () Bool)

(declare-fun tp!948430 () Bool)

(declare-fun tp!948432 () Bool)

(assert (=> b!2977009 (= e!1872640 (and tp!948430 tp!948432))))

(declare-fun b!2977010 () Bool)

(assert (=> b!2977010 (= e!1872637 e!1872641)))

(declare-fun res!1227530 () Bool)

(assert (=> b!2977010 (=> res!1227530 e!1872641)))

(assert (=> b!2977010 (= res!1227530 (not (matchR!4170 lt!1037239 s!11993)))))

(assert (=> b!2977010 (= lt!1037239 (Star!9288 lt!1037235))))

(declare-fun b!2977011 () Bool)

(declare-fun tp!948431 () Bool)

(assert (=> b!2977011 (= e!1872640 tp!948431)))

(declare-fun b!2977012 () Bool)

(declare-fun tp!948435 () Bool)

(assert (=> b!2977012 (= e!1872643 (and tp_is_empty!16139 tp!948435))))

(assert (= (and start!287818 res!1227529) b!2977002))

(assert (= (and b!2977002 (not res!1227534)) b!2977004))

(assert (= (and b!2977004 (not res!1227531)) b!2977010))

(assert (= (and b!2977010 (not res!1227530)) b!2977003))

(assert (= (and b!2977003 (not res!1227533)) b!2977006))

(assert (= (and b!2977006 (not res!1227532)) b!2977007))

(assert (= (and start!287818 (is-ElementMatch!9288 r!17423)) b!2977005))

(assert (= (and start!287818 (is-Concat!14609 r!17423)) b!2977009))

(assert (= (and start!287818 (is-Star!9288 r!17423)) b!2977011))

(assert (= (and start!287818 (is-Union!9288 r!17423)) b!2977008))

(assert (= (and start!287818 (is-Cons!35029 s!11993)) b!2977012))

(declare-fun m!3340473 () Bool)

(assert (=> b!2977004 m!3340473))

(declare-fun m!3340475 () Bool)

(assert (=> b!2977004 m!3340475))

(declare-fun m!3340477 () Bool)

(assert (=> b!2977002 m!3340477))

(declare-fun m!3340479 () Bool)

(assert (=> b!2977002 m!3340479))

(declare-fun m!3340481 () Bool)

(assert (=> b!2977002 m!3340481))

(declare-fun m!3340483 () Bool)

(assert (=> b!2977007 m!3340483))

(declare-fun m!3340485 () Bool)

(assert (=> b!2977006 m!3340485))

(assert (=> b!2977006 m!3340485))

(declare-fun m!3340487 () Bool)

(assert (=> b!2977006 m!3340487))

(declare-fun m!3340489 () Bool)

(assert (=> b!2977006 m!3340489))

(declare-fun m!3340491 () Bool)

(assert (=> b!2977006 m!3340491))

(declare-fun m!3340493 () Bool)

(assert (=> b!2977006 m!3340493))

(assert (=> b!2977006 m!3340487))

(declare-fun m!3340495 () Bool)

(assert (=> b!2977006 m!3340495))

(declare-fun m!3340497 () Bool)

(assert (=> b!2977010 m!3340497))

(declare-fun m!3340499 () Bool)

(assert (=> start!287818 m!3340499))

(declare-fun m!3340501 () Bool)

(assert (=> b!2977003 m!3340501))

(declare-fun m!3340503 () Bool)

(assert (=> b!2977003 m!3340503))

(declare-fun m!3340505 () Bool)

(assert (=> b!2977003 m!3340505))

(push 1)

(assert (not b!2977010))

(assert (not b!2977007))

(assert (not b!2977003))

(assert (not b!2977009))

(assert (not start!287818))

(assert (not b!2977008))

(assert (not b!2977006))

(assert tp_is_empty!16139)

(assert (not b!2977002))

(assert (not b!2977004))

(assert (not b!2977012))

(assert (not b!2977011))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!198598 () Bool)

(declare-fun call!198605 () Bool)

(declare-fun call!198603 () Bool)

(assert (=> bm!198598 (= call!198605 call!198603)))

(declare-fun b!2977086 () Bool)

(declare-fun e!1872691 () Bool)

(declare-fun e!1872688 () Bool)

(assert (=> b!2977086 (= e!1872691 e!1872688)))

(declare-fun c!488814 () Bool)

(assert (=> b!2977086 (= c!488814 (is-Union!9288 lt!1037235))))

(declare-fun b!2977087 () Bool)

(declare-fun e!1872694 () Bool)

(assert (=> b!2977087 (= e!1872694 e!1872691)))

(declare-fun c!488815 () Bool)

(assert (=> b!2977087 (= c!488815 (is-Star!9288 lt!1037235))))

(declare-fun b!2977088 () Bool)

(declare-fun res!1227580 () Bool)

(declare-fun e!1872689 () Bool)

(assert (=> b!2977088 (=> (not res!1227580) (not e!1872689))))

(declare-fun call!198604 () Bool)

(assert (=> b!2977088 (= res!1227580 call!198604)))

(assert (=> b!2977088 (= e!1872688 e!1872689)))

(declare-fun bm!198599 () Bool)

(assert (=> bm!198599 (= call!198603 (validRegex!4021 (ite c!488815 (reg!9617 lt!1037235) (ite c!488814 (regTwo!19089 lt!1037235) (regOne!19088 lt!1037235)))))))

(declare-fun b!2977089 () Bool)

(declare-fun res!1227579 () Bool)

(declare-fun e!1872690 () Bool)

(assert (=> b!2977089 (=> res!1227579 e!1872690)))

(assert (=> b!2977089 (= res!1227579 (not (is-Concat!14609 lt!1037235)))))

(assert (=> b!2977089 (= e!1872688 e!1872690)))

(declare-fun b!2977090 () Bool)

(assert (=> b!2977090 (= e!1872689 call!198605)))

(declare-fun d!843204 () Bool)

(declare-fun res!1227581 () Bool)

(assert (=> d!843204 (=> res!1227581 e!1872694)))

(assert (=> d!843204 (= res!1227581 (is-ElementMatch!9288 lt!1037235))))

(assert (=> d!843204 (= (validRegex!4021 lt!1037235) e!1872694)))

(declare-fun bm!198600 () Bool)

(assert (=> bm!198600 (= call!198604 (validRegex!4021 (ite c!488814 (regOne!19089 lt!1037235) (regTwo!19088 lt!1037235))))))

(declare-fun b!2977091 () Bool)

(declare-fun e!1872693 () Bool)

(assert (=> b!2977091 (= e!1872693 call!198603)))

(declare-fun b!2977092 () Bool)

(assert (=> b!2977092 (= e!1872691 e!1872693)))

(declare-fun res!1227577 () Bool)

(declare-fun nullable!2981 (Regex!9288) Bool)

(assert (=> b!2977092 (= res!1227577 (not (nullable!2981 (reg!9617 lt!1037235))))))

(assert (=> b!2977092 (=> (not res!1227577) (not e!1872693))))

(declare-fun b!2977093 () Bool)

(declare-fun e!1872692 () Bool)

(assert (=> b!2977093 (= e!1872690 e!1872692)))

(declare-fun res!1227578 () Bool)

(assert (=> b!2977093 (=> (not res!1227578) (not e!1872692))))

(assert (=> b!2977093 (= res!1227578 call!198605)))

(declare-fun b!2977094 () Bool)

(assert (=> b!2977094 (= e!1872692 call!198604)))

(assert (= (and d!843204 (not res!1227581)) b!2977087))

(assert (= (and b!2977087 c!488815) b!2977092))

(assert (= (and b!2977087 (not c!488815)) b!2977086))

(assert (= (and b!2977092 res!1227577) b!2977091))

(assert (= (and b!2977086 c!488814) b!2977088))

(assert (= (and b!2977086 (not c!488814)) b!2977089))

(assert (= (and b!2977088 res!1227580) b!2977090))

(assert (= (and b!2977089 (not res!1227579)) b!2977093))

(assert (= (and b!2977093 res!1227578) b!2977094))

(assert (= (or b!2977088 b!2977094) bm!198600))

(assert (= (or b!2977090 b!2977093) bm!198598))

(assert (= (or b!2977091 bm!198598) bm!198599))

(declare-fun m!3340541 () Bool)

(assert (=> bm!198599 m!3340541))

(declare-fun m!3340543 () Bool)

(assert (=> bm!198600 m!3340543))

(declare-fun m!3340545 () Bool)

(assert (=> b!2977092 m!3340545))

(assert (=> b!2977007 d!843204))

(declare-fun bs!526862 () Bool)

(declare-fun d!843206 () Bool)

(assert (= bs!526862 (and d!843206 b!2977006)))

(declare-fun lambda!110891 () Int)

(assert (=> bs!526862 (= (= (Star!9288 lt!1037235) lt!1037239) (= lambda!110891 lambda!110877))))

(assert (=> bs!526862 (not (= lambda!110891 lambda!110878))))

(assert (=> d!843206 true))

(assert (=> d!843206 true))

(declare-fun lambda!110892 () Int)

(assert (=> bs!526862 (not (= lambda!110892 lambda!110877))))

(assert (=> bs!526862 (= (= (Star!9288 lt!1037235) lt!1037239) (= lambda!110892 lambda!110878))))

(declare-fun bs!526863 () Bool)

(assert (= bs!526863 d!843206))

(assert (=> bs!526863 (not (= lambda!110892 lambda!110891))))

(assert (=> d!843206 true))

(assert (=> d!843206 true))

(assert (=> d!843206 (= (Exists!1568 lambda!110891) (Exists!1568 lambda!110892))))

(declare-fun lt!1037267 () Unit!48955)

(declare-fun choose!17617 (Regex!9288 List!35153) Unit!48955)

(assert (=> d!843206 (= lt!1037267 (choose!17617 lt!1037235 s!11993))))

(assert (=> d!843206 (validRegex!4021 lt!1037235)))

(assert (=> d!843206 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!253 lt!1037235 s!11993) lt!1037267)))

(declare-fun m!3340547 () Bool)

(assert (=> bs!526863 m!3340547))

(declare-fun m!3340549 () Bool)

(assert (=> bs!526863 m!3340549))

(declare-fun m!3340551 () Bool)

(assert (=> bs!526863 m!3340551))

(assert (=> bs!526863 m!3340483))

(assert (=> b!2977006 d!843206))

(declare-fun d!843210 () Bool)

(declare-fun choose!17618 (Int) Bool)

(assert (=> d!843210 (= (Exists!1568 lambda!110877) (choose!17618 lambda!110877))))

(declare-fun bs!526864 () Bool)

(assert (= bs!526864 d!843210))

(declare-fun m!3340553 () Bool)

(assert (=> bs!526864 m!3340553))

(assert (=> b!2977006 d!843210))

(declare-fun b!2977127 () Bool)

(declare-fun res!1227608 () Bool)

(declare-fun e!1872714 () Bool)

(assert (=> b!2977127 (=> (not res!1227608) (not e!1872714))))

(declare-fun lt!1037276 () Option!6689)

(declare-fun get!10803 (Option!6689) tuple2!33914)

(assert (=> b!2977127 (= res!1227608 (matchR!4170 lt!1037239 (_2!20089 (get!10803 lt!1037276))))))

(declare-fun b!2977129 () Bool)

(declare-fun e!1872711 () Bool)

(assert (=> b!2977129 (= e!1872711 (matchR!4170 lt!1037239 s!11993))))

(declare-fun b!2977130 () Bool)

(declare-fun e!1872713 () Option!6689)

(assert (=> b!2977130 (= e!1872713 None!6688)))

(declare-fun b!2977131 () Bool)

(declare-fun e!1872712 () Bool)

(assert (=> b!2977131 (= e!1872712 (not (isDefined!5240 lt!1037276)))))

(declare-fun b!2977132 () Bool)

(declare-fun ++!8356 (List!35153 List!35153) List!35153)

(assert (=> b!2977132 (= e!1872714 (= (++!8356 (_1!20089 (get!10803 lt!1037276)) (_2!20089 (get!10803 lt!1037276))) s!11993))))

(declare-fun b!2977133 () Bool)

(declare-fun e!1872715 () Option!6689)

(assert (=> b!2977133 (= e!1872715 e!1872713)))

(declare-fun c!488820 () Bool)

(assert (=> b!2977133 (= c!488820 (is-Nil!35029 s!11993))))

(declare-fun d!843212 () Bool)

(assert (=> d!843212 e!1872712))

(declare-fun res!1227610 () Bool)

(assert (=> d!843212 (=> res!1227610 e!1872712)))

(assert (=> d!843212 (= res!1227610 e!1872714)))

(declare-fun res!1227606 () Bool)

(assert (=> d!843212 (=> (not res!1227606) (not e!1872714))))

(assert (=> d!843212 (= res!1227606 (isDefined!5240 lt!1037276))))

(assert (=> d!843212 (= lt!1037276 e!1872715)))

(declare-fun c!488821 () Bool)

(assert (=> d!843212 (= c!488821 e!1872711)))

(declare-fun res!1227609 () Bool)

(assert (=> d!843212 (=> (not res!1227609) (not e!1872711))))

(assert (=> d!843212 (= res!1227609 (matchR!4170 lt!1037235 Nil!35029))))

(assert (=> d!843212 (validRegex!4021 lt!1037235)))

(assert (=> d!843212 (= (findConcatSeparation!1083 lt!1037235 lt!1037239 Nil!35029 s!11993 s!11993) lt!1037276)))

(declare-fun b!2977128 () Bool)

(declare-fun lt!1037278 () Unit!48955)

(declare-fun lt!1037277 () Unit!48955)

(assert (=> b!2977128 (= lt!1037278 lt!1037277)))

(assert (=> b!2977128 (= (++!8356 (++!8356 Nil!35029 (Cons!35029 (h!40449 s!11993) Nil!35029)) (t!234218 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!975 (List!35153 C!18762 List!35153 List!35153) Unit!48955)

(assert (=> b!2977128 (= lt!1037277 (lemmaMoveElementToOtherListKeepsConcatEq!975 Nil!35029 (h!40449 s!11993) (t!234218 s!11993) s!11993))))

(assert (=> b!2977128 (= e!1872713 (findConcatSeparation!1083 lt!1037235 lt!1037239 (++!8356 Nil!35029 (Cons!35029 (h!40449 s!11993) Nil!35029)) (t!234218 s!11993) s!11993))))

(declare-fun b!2977134 () Bool)

(declare-fun res!1227607 () Bool)

(assert (=> b!2977134 (=> (not res!1227607) (not e!1872714))))

(assert (=> b!2977134 (= res!1227607 (matchR!4170 lt!1037235 (_1!20089 (get!10803 lt!1037276))))))

(declare-fun b!2977135 () Bool)

(assert (=> b!2977135 (= e!1872715 (Some!6688 (tuple2!33915 Nil!35029 s!11993)))))

(assert (= (and d!843212 res!1227609) b!2977129))

(assert (= (and d!843212 c!488821) b!2977135))

(assert (= (and d!843212 (not c!488821)) b!2977133))

(assert (= (and b!2977133 c!488820) b!2977130))

(assert (= (and b!2977133 (not c!488820)) b!2977128))

(assert (= (and d!843212 res!1227606) b!2977134))

(assert (= (and b!2977134 res!1227607) b!2977127))

(assert (= (and b!2977127 res!1227608) b!2977132))

(assert (= (and d!843212 (not res!1227610)) b!2977131))

(declare-fun m!3340555 () Bool)

(assert (=> b!2977131 m!3340555))

(assert (=> b!2977129 m!3340497))

(declare-fun m!3340557 () Bool)

(assert (=> b!2977128 m!3340557))

(assert (=> b!2977128 m!3340557))

(declare-fun m!3340559 () Bool)

(assert (=> b!2977128 m!3340559))

(declare-fun m!3340561 () Bool)

(assert (=> b!2977128 m!3340561))

(assert (=> b!2977128 m!3340557))

(declare-fun m!3340563 () Bool)

(assert (=> b!2977128 m!3340563))

(declare-fun m!3340565 () Bool)

(assert (=> b!2977127 m!3340565))

(declare-fun m!3340567 () Bool)

(assert (=> b!2977127 m!3340567))

(assert (=> b!2977132 m!3340565))

(declare-fun m!3340569 () Bool)

(assert (=> b!2977132 m!3340569))

(assert (=> d!843212 m!3340555))

(declare-fun m!3340571 () Bool)

(assert (=> d!843212 m!3340571))

(assert (=> d!843212 m!3340483))

(assert (=> b!2977134 m!3340565))

(declare-fun m!3340573 () Bool)

(assert (=> b!2977134 m!3340573))

(assert (=> b!2977006 d!843212))

(declare-fun bs!526865 () Bool)

(declare-fun d!843214 () Bool)

(assert (= bs!526865 (and d!843214 b!2977006)))

(declare-fun lambda!110899 () Int)

(assert (=> bs!526865 (= lambda!110899 lambda!110877)))

(assert (=> bs!526865 (not (= lambda!110899 lambda!110878))))

(declare-fun bs!526866 () Bool)

(assert (= bs!526866 (and d!843214 d!843206)))

(assert (=> bs!526866 (= (= lt!1037239 (Star!9288 lt!1037235)) (= lambda!110899 lambda!110891))))

(assert (=> bs!526866 (not (= lambda!110899 lambda!110892))))

(assert (=> d!843214 true))

(assert (=> d!843214 true))

(assert (=> d!843214 true))

(assert (=> d!843214 (= (isDefined!5240 (findConcatSeparation!1083 lt!1037235 lt!1037239 Nil!35029 s!11993 s!11993)) (Exists!1568 lambda!110899))))

(declare-fun lt!1037281 () Unit!48955)

(declare-fun choose!17619 (Regex!9288 Regex!9288 List!35153) Unit!48955)

(assert (=> d!843214 (= lt!1037281 (choose!17619 lt!1037235 lt!1037239 s!11993))))

(assert (=> d!843214 (validRegex!4021 lt!1037235)))

(assert (=> d!843214 (= (lemmaFindConcatSeparationEquivalentToExists!861 lt!1037235 lt!1037239 s!11993) lt!1037281)))

(declare-fun bs!526867 () Bool)

(assert (= bs!526867 d!843214))

(declare-fun m!3340575 () Bool)

(assert (=> bs!526867 m!3340575))

(declare-fun m!3340577 () Bool)

(assert (=> bs!526867 m!3340577))

(assert (=> bs!526867 m!3340483))

(assert (=> bs!526867 m!3340487))

(assert (=> bs!526867 m!3340489))

(assert (=> bs!526867 m!3340487))

(assert (=> b!2977006 d!843214))

(declare-fun d!843216 () Bool)

(assert (=> d!843216 (= (Exists!1568 lambda!110878) (choose!17618 lambda!110878))))

(declare-fun bs!526868 () Bool)

(assert (= bs!526868 d!843216))

(declare-fun m!3340579 () Bool)

(assert (=> bs!526868 m!3340579))

(assert (=> b!2977006 d!843216))

(declare-fun d!843218 () Bool)

(declare-fun isEmpty!19278 (Option!6689) Bool)

(assert (=> d!843218 (= (isDefined!5240 (findConcatSeparation!1083 lt!1037235 lt!1037239 Nil!35029 s!11993 s!11993)) (not (isEmpty!19278 (findConcatSeparation!1083 lt!1037235 lt!1037239 Nil!35029 s!11993 s!11993))))))

(declare-fun bs!526869 () Bool)

(assert (= bs!526869 d!843218))

(assert (=> bs!526869 m!3340487))

(declare-fun m!3340581 () Bool)

(assert (=> bs!526869 m!3340581))

(assert (=> b!2977006 d!843218))

(declare-fun d!843220 () Bool)

(assert (=> d!843220 (= (isEmpty!19276 s!11993) (is-Nil!35029 s!11993))))

(assert (=> b!2977003 d!843220))

(declare-fun bs!526872 () Bool)

(declare-fun b!2977178 () Bool)

(assert (= bs!526872 (and b!2977178 d!843214)))

(declare-fun lambda!110906 () Int)

(assert (=> bs!526872 (not (= lambda!110906 lambda!110899))))

(declare-fun bs!526873 () Bool)

(assert (= bs!526873 (and b!2977178 b!2977006)))

(assert (=> bs!526873 (not (= lambda!110906 lambda!110877))))

(declare-fun bs!526874 () Bool)

(assert (= bs!526874 (and b!2977178 d!843206)))

(assert (=> bs!526874 (= (and (= (reg!9617 lt!1037239) lt!1037235) (= lt!1037239 (Star!9288 lt!1037235))) (= lambda!110906 lambda!110892))))

(assert (=> bs!526873 (= (= (reg!9617 lt!1037239) lt!1037235) (= lambda!110906 lambda!110878))))

(assert (=> bs!526874 (not (= lambda!110906 lambda!110891))))

(assert (=> b!2977178 true))

(assert (=> b!2977178 true))

(declare-fun bs!526875 () Bool)

(declare-fun b!2977187 () Bool)

(assert (= bs!526875 (and b!2977187 d!843214)))

(declare-fun lambda!110907 () Int)

(assert (=> bs!526875 (not (= lambda!110907 lambda!110899))))

(declare-fun bs!526876 () Bool)

(assert (= bs!526876 (and b!2977187 b!2977006)))

(assert (=> bs!526876 (not (= lambda!110907 lambda!110877))))

(assert (=> bs!526876 (not (= lambda!110907 lambda!110878))))

(declare-fun bs!526877 () Bool)

(assert (= bs!526877 (and b!2977187 d!843206)))

(assert (=> bs!526877 (not (= lambda!110907 lambda!110891))))

(declare-fun bs!526878 () Bool)

(assert (= bs!526878 (and b!2977187 b!2977178)))

(assert (=> bs!526878 (not (= lambda!110907 lambda!110906))))

(assert (=> bs!526877 (not (= lambda!110907 lambda!110892))))

(assert (=> b!2977187 true))

(assert (=> b!2977187 true))

(declare-fun e!1872740 () Bool)

(declare-fun call!198611 () Bool)

(assert (=> b!2977178 (= e!1872740 call!198611)))

(declare-fun bm!198605 () Bool)

(declare-fun c!488833 () Bool)

(assert (=> bm!198605 (= call!198611 (Exists!1568 (ite c!488833 lambda!110906 lambda!110907)))))

(declare-fun b!2977179 () Bool)

(declare-fun e!1872739 () Bool)

(assert (=> b!2977179 (= e!1872739 (matchRSpec!1425 (regTwo!19089 lt!1037239) s!11993))))

(declare-fun d!843222 () Bool)

(declare-fun c!488831 () Bool)

(assert (=> d!843222 (= c!488831 (is-EmptyExpr!9288 lt!1037239))))

(declare-fun e!1872743 () Bool)

(assert (=> d!843222 (= (matchRSpec!1425 lt!1037239 s!11993) e!1872743)))

(declare-fun b!2977180 () Bool)

(declare-fun e!1872744 () Bool)

(assert (=> b!2977180 (= e!1872744 e!1872739)))

(declare-fun res!1227637 () Bool)

(assert (=> b!2977180 (= res!1227637 (matchRSpec!1425 (regOne!19089 lt!1037239) s!11993))))

(assert (=> b!2977180 (=> res!1227637 e!1872739)))

(declare-fun b!2977181 () Bool)

(declare-fun c!488832 () Bool)

(assert (=> b!2977181 (= c!488832 (is-ElementMatch!9288 lt!1037239))))

(declare-fun e!1872741 () Bool)

(declare-fun e!1872742 () Bool)

(assert (=> b!2977181 (= e!1872741 e!1872742)))

(declare-fun b!2977182 () Bool)

(assert (=> b!2977182 (= e!1872743 e!1872741)))

(declare-fun res!1227638 () Bool)

(assert (=> b!2977182 (= res!1227638 (not (is-EmptyLang!9288 lt!1037239)))))

(assert (=> b!2977182 (=> (not res!1227638) (not e!1872741))))

(declare-fun b!2977183 () Bool)

(declare-fun call!198610 () Bool)

(assert (=> b!2977183 (= e!1872743 call!198610)))

(declare-fun b!2977184 () Bool)

(declare-fun res!1227639 () Bool)

(assert (=> b!2977184 (=> res!1227639 e!1872740)))

(assert (=> b!2977184 (= res!1227639 call!198610)))

(declare-fun e!1872738 () Bool)

(assert (=> b!2977184 (= e!1872738 e!1872740)))

(declare-fun b!2977185 () Bool)

(assert (=> b!2977185 (= e!1872742 (= s!11993 (Cons!35029 (c!488808 lt!1037239) Nil!35029)))))

(declare-fun b!2977186 () Bool)

(assert (=> b!2977186 (= e!1872744 e!1872738)))

(assert (=> b!2977186 (= c!488833 (is-Star!9288 lt!1037239))))

(assert (=> b!2977187 (= e!1872738 call!198611)))

(declare-fun bm!198606 () Bool)

(assert (=> bm!198606 (= call!198610 (isEmpty!19276 s!11993))))

(declare-fun b!2977188 () Bool)

(declare-fun c!488830 () Bool)

(assert (=> b!2977188 (= c!488830 (is-Union!9288 lt!1037239))))

(assert (=> b!2977188 (= e!1872742 e!1872744)))

(assert (= (and d!843222 c!488831) b!2977183))

(assert (= (and d!843222 (not c!488831)) b!2977182))

(assert (= (and b!2977182 res!1227638) b!2977181))

(assert (= (and b!2977181 c!488832) b!2977185))

(assert (= (and b!2977181 (not c!488832)) b!2977188))

(assert (= (and b!2977188 c!488830) b!2977180))

(assert (= (and b!2977188 (not c!488830)) b!2977186))

(assert (= (and b!2977180 (not res!1227637)) b!2977179))

(assert (= (and b!2977186 c!488833) b!2977184))

(assert (= (and b!2977186 (not c!488833)) b!2977187))

(assert (= (and b!2977184 (not res!1227639)) b!2977178))

(assert (= (or b!2977178 b!2977187) bm!198605))

(assert (= (or b!2977183 b!2977184) bm!198606))

(declare-fun m!3340589 () Bool)

(assert (=> bm!198605 m!3340589))

(declare-fun m!3340591 () Bool)

(assert (=> b!2977179 m!3340591))

(declare-fun m!3340593 () Bool)

(assert (=> b!2977180 m!3340593))

(assert (=> bm!198606 m!3340501))

(assert (=> b!2977003 d!843222))

(declare-fun d!843226 () Bool)

(assert (=> d!843226 (= (matchR!4170 lt!1037239 s!11993) (matchRSpec!1425 lt!1037239 s!11993))))

(declare-fun lt!1037285 () Unit!48955)

(declare-fun choose!17620 (Regex!9288 List!35153) Unit!48955)

(assert (=> d!843226 (= lt!1037285 (choose!17620 lt!1037239 s!11993))))

(assert (=> d!843226 (validRegex!4021 lt!1037239)))

(assert (=> d!843226 (= (mainMatchTheorem!1425 lt!1037239 s!11993) lt!1037285)))

(declare-fun bs!526879 () Bool)

(assert (= bs!526879 d!843226))

(assert (=> bs!526879 m!3340497))

(assert (=> bs!526879 m!3340503))

(declare-fun m!3340595 () Bool)

(assert (=> bs!526879 m!3340595))

(declare-fun m!3340597 () Bool)

(assert (=> bs!526879 m!3340597))

(assert (=> b!2977003 d!843226))

(declare-fun bs!526880 () Bool)

(declare-fun b!2977189 () Bool)

(assert (= bs!526880 (and b!2977189 d!843214)))

(declare-fun lambda!110908 () Int)

(assert (=> bs!526880 (not (= lambda!110908 lambda!110899))))

(declare-fun bs!526881 () Bool)

(assert (= bs!526881 (and b!2977189 b!2977006)))

(assert (=> bs!526881 (= (and (= (reg!9617 r!17423) lt!1037235) (= r!17423 lt!1037239)) (= lambda!110908 lambda!110878))))

(declare-fun bs!526882 () Bool)

(assert (= bs!526882 (and b!2977189 d!843206)))

(assert (=> bs!526882 (not (= lambda!110908 lambda!110891))))

(assert (=> bs!526881 (not (= lambda!110908 lambda!110877))))

(declare-fun bs!526883 () Bool)

(assert (= bs!526883 (and b!2977189 b!2977187)))

(assert (=> bs!526883 (not (= lambda!110908 lambda!110907))))

(declare-fun bs!526884 () Bool)

(assert (= bs!526884 (and b!2977189 b!2977178)))

(assert (=> bs!526884 (= (and (= (reg!9617 r!17423) (reg!9617 lt!1037239)) (= r!17423 lt!1037239)) (= lambda!110908 lambda!110906))))

(assert (=> bs!526882 (= (and (= (reg!9617 r!17423) lt!1037235) (= r!17423 (Star!9288 lt!1037235))) (= lambda!110908 lambda!110892))))

(assert (=> b!2977189 true))

(assert (=> b!2977189 true))

(declare-fun bs!526885 () Bool)

(declare-fun b!2977198 () Bool)

(assert (= bs!526885 (and b!2977198 d!843214)))

(declare-fun lambda!110909 () Int)

(assert (=> bs!526885 (not (= lambda!110909 lambda!110899))))

(declare-fun bs!526886 () Bool)

(assert (= bs!526886 (and b!2977198 b!2977189)))

(assert (=> bs!526886 (not (= lambda!110909 lambda!110908))))

(declare-fun bs!526887 () Bool)

(assert (= bs!526887 (and b!2977198 b!2977006)))

(assert (=> bs!526887 (not (= lambda!110909 lambda!110878))))

(declare-fun bs!526888 () Bool)

(assert (= bs!526888 (and b!2977198 d!843206)))

(assert (=> bs!526888 (not (= lambda!110909 lambda!110891))))

(assert (=> bs!526887 (not (= lambda!110909 lambda!110877))))

(declare-fun bs!526889 () Bool)

(assert (= bs!526889 (and b!2977198 b!2977187)))

(assert (=> bs!526889 (= (and (= (regOne!19088 r!17423) (regOne!19088 lt!1037239)) (= (regTwo!19088 r!17423) (regTwo!19088 lt!1037239))) (= lambda!110909 lambda!110907))))

(declare-fun bs!526890 () Bool)

(assert (= bs!526890 (and b!2977198 b!2977178)))

(assert (=> bs!526890 (not (= lambda!110909 lambda!110906))))

(assert (=> bs!526888 (not (= lambda!110909 lambda!110892))))

(assert (=> b!2977198 true))

(assert (=> b!2977198 true))

(declare-fun e!1872747 () Bool)

(declare-fun call!198613 () Bool)

(assert (=> b!2977189 (= e!1872747 call!198613)))

(declare-fun c!488837 () Bool)

(declare-fun bm!198607 () Bool)

(assert (=> bm!198607 (= call!198613 (Exists!1568 (ite c!488837 lambda!110908 lambda!110909)))))

(declare-fun b!2977190 () Bool)

(declare-fun e!1872746 () Bool)

(assert (=> b!2977190 (= e!1872746 (matchRSpec!1425 (regTwo!19089 r!17423) s!11993))))

(declare-fun d!843228 () Bool)

(declare-fun c!488835 () Bool)

(assert (=> d!843228 (= c!488835 (is-EmptyExpr!9288 r!17423))))

(declare-fun e!1872750 () Bool)

(assert (=> d!843228 (= (matchRSpec!1425 r!17423 s!11993) e!1872750)))

(declare-fun b!2977191 () Bool)

(declare-fun e!1872751 () Bool)

(assert (=> b!2977191 (= e!1872751 e!1872746)))

(declare-fun res!1227640 () Bool)

(assert (=> b!2977191 (= res!1227640 (matchRSpec!1425 (regOne!19089 r!17423) s!11993))))

(assert (=> b!2977191 (=> res!1227640 e!1872746)))

(declare-fun b!2977192 () Bool)

(declare-fun c!488836 () Bool)

(assert (=> b!2977192 (= c!488836 (is-ElementMatch!9288 r!17423))))

(declare-fun e!1872748 () Bool)

(declare-fun e!1872749 () Bool)

(assert (=> b!2977192 (= e!1872748 e!1872749)))

(declare-fun b!2977193 () Bool)

(assert (=> b!2977193 (= e!1872750 e!1872748)))

(declare-fun res!1227641 () Bool)

(assert (=> b!2977193 (= res!1227641 (not (is-EmptyLang!9288 r!17423)))))

(assert (=> b!2977193 (=> (not res!1227641) (not e!1872748))))

(declare-fun b!2977194 () Bool)

(declare-fun call!198612 () Bool)

(assert (=> b!2977194 (= e!1872750 call!198612)))

(declare-fun b!2977195 () Bool)

(declare-fun res!1227642 () Bool)

(assert (=> b!2977195 (=> res!1227642 e!1872747)))

(assert (=> b!2977195 (= res!1227642 call!198612)))

(declare-fun e!1872745 () Bool)

(assert (=> b!2977195 (= e!1872745 e!1872747)))

(declare-fun b!2977196 () Bool)

(assert (=> b!2977196 (= e!1872749 (= s!11993 (Cons!35029 (c!488808 r!17423) Nil!35029)))))

(declare-fun b!2977197 () Bool)

(assert (=> b!2977197 (= e!1872751 e!1872745)))

(assert (=> b!2977197 (= c!488837 (is-Star!9288 r!17423))))

(assert (=> b!2977198 (= e!1872745 call!198613)))

(declare-fun bm!198608 () Bool)

(assert (=> bm!198608 (= call!198612 (isEmpty!19276 s!11993))))

(declare-fun b!2977199 () Bool)

(declare-fun c!488834 () Bool)

(assert (=> b!2977199 (= c!488834 (is-Union!9288 r!17423))))

(assert (=> b!2977199 (= e!1872749 e!1872751)))

(assert (= (and d!843228 c!488835) b!2977194))

(assert (= (and d!843228 (not c!488835)) b!2977193))

(assert (= (and b!2977193 res!1227641) b!2977192))

(assert (= (and b!2977192 c!488836) b!2977196))

(assert (= (and b!2977192 (not c!488836)) b!2977199))

(assert (= (and b!2977199 c!488834) b!2977191))

(assert (= (and b!2977199 (not c!488834)) b!2977197))

(assert (= (and b!2977191 (not res!1227640)) b!2977190))

(assert (= (and b!2977197 c!488837) b!2977195))

(assert (= (and b!2977197 (not c!488837)) b!2977198))

(assert (= (and b!2977195 (not res!1227642)) b!2977189))

(assert (= (or b!2977189 b!2977198) bm!198607))

(assert (= (or b!2977194 b!2977195) bm!198608))

(declare-fun m!3340599 () Bool)

(assert (=> bm!198607 m!3340599))

(declare-fun m!3340601 () Bool)

(assert (=> b!2977190 m!3340601))

(declare-fun m!3340603 () Bool)

(assert (=> b!2977191 m!3340603))

(assert (=> bm!198608 m!3340501))

(assert (=> b!2977002 d!843228))

(declare-fun b!2977246 () Bool)

(declare-fun res!1227669 () Bool)

(declare-fun e!1872777 () Bool)

(assert (=> b!2977246 (=> res!1227669 e!1872777)))

(declare-fun tail!4866 (List!35153) List!35153)

(assert (=> b!2977246 (= res!1227669 (not (isEmpty!19276 (tail!4866 s!11993))))))

(declare-fun b!2977247 () Bool)

(declare-fun res!1227670 () Bool)

(declare-fun e!1872780 () Bool)

(assert (=> b!2977247 (=> (not res!1227670) (not e!1872780))))

(assert (=> b!2977247 (= res!1227670 (isEmpty!19276 (tail!4866 s!11993)))))

(declare-fun d!843230 () Bool)

(declare-fun e!1872778 () Bool)

(assert (=> d!843230 e!1872778))

(declare-fun c!488850 () Bool)

(assert (=> d!843230 (= c!488850 (is-EmptyExpr!9288 r!17423))))

(declare-fun lt!1037294 () Bool)

(declare-fun e!1872779 () Bool)

(assert (=> d!843230 (= lt!1037294 e!1872779)))

(declare-fun c!488849 () Bool)

(assert (=> d!843230 (= c!488849 (isEmpty!19276 s!11993))))

(assert (=> d!843230 (validRegex!4021 r!17423)))

(assert (=> d!843230 (= (matchR!4170 r!17423 s!11993) lt!1037294)))

(declare-fun b!2977248 () Bool)

(declare-fun head!6640 (List!35153) C!18762)

(assert (=> b!2977248 (= e!1872777 (not (= (head!6640 s!11993) (c!488808 r!17423))))))

(declare-fun b!2977249 () Bool)

(declare-fun derivativeStep!2581 (Regex!9288 C!18762) Regex!9288)

(assert (=> b!2977249 (= e!1872779 (matchR!4170 (derivativeStep!2581 r!17423 (head!6640 s!11993)) (tail!4866 s!11993)))))

(declare-fun b!2977250 () Bool)

(declare-fun e!1872776 () Bool)

(assert (=> b!2977250 (= e!1872778 e!1872776)))

(declare-fun c!488848 () Bool)

(assert (=> b!2977250 (= c!488848 (is-EmptyLang!9288 r!17423))))

(declare-fun b!2977251 () Bool)

(assert (=> b!2977251 (= e!1872779 (nullable!2981 r!17423))))

(declare-fun b!2977252 () Bool)

(assert (=> b!2977252 (= e!1872780 (= (head!6640 s!11993) (c!488808 r!17423)))))

(declare-fun bm!198611 () Bool)

(declare-fun call!198616 () Bool)

(assert (=> bm!198611 (= call!198616 (isEmpty!19276 s!11993))))

(declare-fun b!2977253 () Bool)

(declare-fun e!1872781 () Bool)

(assert (=> b!2977253 (= e!1872781 e!1872777)))

(declare-fun res!1227671 () Bool)

(assert (=> b!2977253 (=> res!1227671 e!1872777)))

(assert (=> b!2977253 (= res!1227671 call!198616)))

(declare-fun b!2977254 () Bool)

(assert (=> b!2977254 (= e!1872776 (not lt!1037294))))

(declare-fun b!2977255 () Bool)

(declare-fun res!1227675 () Bool)

(assert (=> b!2977255 (=> (not res!1227675) (not e!1872780))))

(assert (=> b!2977255 (= res!1227675 (not call!198616))))

(declare-fun b!2977256 () Bool)

(declare-fun res!1227672 () Bool)

(declare-fun e!1872782 () Bool)

(assert (=> b!2977256 (=> res!1227672 e!1872782)))

(assert (=> b!2977256 (= res!1227672 e!1872780)))

(declare-fun res!1227673 () Bool)

(assert (=> b!2977256 (=> (not res!1227673) (not e!1872780))))

(assert (=> b!2977256 (= res!1227673 lt!1037294)))

(declare-fun b!2977257 () Bool)

(declare-fun res!1227676 () Bool)

(assert (=> b!2977257 (=> res!1227676 e!1872782)))

(assert (=> b!2977257 (= res!1227676 (not (is-ElementMatch!9288 r!17423)))))

(assert (=> b!2977257 (= e!1872776 e!1872782)))

(declare-fun b!2977258 () Bool)

(assert (=> b!2977258 (= e!1872782 e!1872781)))

(declare-fun res!1227674 () Bool)

(assert (=> b!2977258 (=> (not res!1227674) (not e!1872781))))

(assert (=> b!2977258 (= res!1227674 (not lt!1037294))))

(declare-fun b!2977259 () Bool)

(assert (=> b!2977259 (= e!1872778 (= lt!1037294 call!198616))))

(assert (= (and d!843230 c!488849) b!2977251))

(assert (= (and d!843230 (not c!488849)) b!2977249))

(assert (= (and d!843230 c!488850) b!2977259))

(assert (= (and d!843230 (not c!488850)) b!2977250))

(assert (= (and b!2977250 c!488848) b!2977254))

(assert (= (and b!2977250 (not c!488848)) b!2977257))

(assert (= (and b!2977257 (not res!1227676)) b!2977256))

(assert (= (and b!2977256 res!1227673) b!2977255))

(assert (= (and b!2977255 res!1227675) b!2977247))

(assert (= (and b!2977247 res!1227670) b!2977252))

(assert (= (and b!2977256 (not res!1227672)) b!2977258))

(assert (= (and b!2977258 res!1227674) b!2977253))

(assert (= (and b!2977253 (not res!1227671)) b!2977246))

(assert (= (and b!2977246 (not res!1227669)) b!2977248))

(assert (= (or b!2977259 b!2977253 b!2977255) bm!198611))

(declare-fun m!3340605 () Bool)

(assert (=> b!2977252 m!3340605))

(declare-fun m!3340607 () Bool)

(assert (=> b!2977246 m!3340607))

(assert (=> b!2977246 m!3340607))

(declare-fun m!3340609 () Bool)

(assert (=> b!2977246 m!3340609))

(assert (=> b!2977249 m!3340605))

(assert (=> b!2977249 m!3340605))

(declare-fun m!3340611 () Bool)

(assert (=> b!2977249 m!3340611))

(assert (=> b!2977249 m!3340607))

(assert (=> b!2977249 m!3340611))

(assert (=> b!2977249 m!3340607))

(declare-fun m!3340613 () Bool)

(assert (=> b!2977249 m!3340613))

(assert (=> d!843230 m!3340501))

(assert (=> d!843230 m!3340499))

(declare-fun m!3340615 () Bool)

(assert (=> b!2977251 m!3340615))

(assert (=> b!2977247 m!3340607))

(assert (=> b!2977247 m!3340607))

(assert (=> b!2977247 m!3340609))

(assert (=> bm!198611 m!3340501))

(assert (=> b!2977248 m!3340605))

(assert (=> b!2977002 d!843230))

(declare-fun d!843232 () Bool)

(assert (=> d!843232 (= (matchR!4170 r!17423 s!11993) (matchRSpec!1425 r!17423 s!11993))))

(declare-fun lt!1037295 () Unit!48955)

(assert (=> d!843232 (= lt!1037295 (choose!17620 r!17423 s!11993))))

(assert (=> d!843232 (validRegex!4021 r!17423)))

(assert (=> d!843232 (= (mainMatchTheorem!1425 r!17423 s!11993) lt!1037295)))

(declare-fun bs!526891 () Bool)

(assert (= bs!526891 d!843232))

(assert (=> bs!526891 m!3340479))

(assert (=> bs!526891 m!3340477))

(declare-fun m!3340617 () Bool)

(assert (=> bs!526891 m!3340617))

(assert (=> bs!526891 m!3340499))

(assert (=> b!2977002 d!843232))

(declare-fun d!843234 () Bool)

(assert (=> d!843234 (= (isEmptyLang!402 lt!1037235) (is-EmptyLang!9288 lt!1037235))))

(assert (=> b!2977004 d!843234))

(declare-fun bm!198626 () Bool)

(declare-fun call!198631 () Bool)

(declare-fun call!198635 () Bool)

(assert (=> bm!198626 (= call!198631 call!198635)))

(declare-fun lt!1037312 () Regex!9288)

(declare-fun c!488884 () Bool)

(declare-fun lt!1037316 () Regex!9288)

(declare-fun lt!1037311 () Regex!9288)

(declare-fun c!488882 () Bool)

(declare-fun bm!198627 () Bool)

(assert (=> bm!198627 (= call!198635 (isEmptyLang!402 (ite c!488882 lt!1037316 (ite c!488884 lt!1037312 lt!1037311))))))

(declare-fun b!2977319 () Bool)

(declare-fun e!1872826 () Bool)

(declare-fun call!198636 () Bool)

(assert (=> b!2977319 (= e!1872826 call!198636)))

(declare-fun bm!198628 () Bool)

(declare-fun call!198637 () Regex!9288)

(assert (=> bm!198628 (= call!198637 (simplify!289 (ite c!488884 (regOne!19089 (reg!9617 r!17423)) (regTwo!19088 (reg!9617 r!17423)))))))

(declare-fun b!2977320 () Bool)

(declare-fun e!1872819 () Regex!9288)

(declare-fun e!1872829 () Regex!9288)

(assert (=> b!2977320 (= e!1872819 e!1872829)))

(declare-fun call!198634 () Regex!9288)

(assert (=> b!2977320 (= lt!1037311 call!198634)))

(declare-fun lt!1037315 () Regex!9288)

(assert (=> b!2977320 (= lt!1037315 call!198637)))

(declare-fun res!1227690 () Bool)

(assert (=> b!2977320 (= res!1227690 call!198631)))

(assert (=> b!2977320 (=> res!1227690 e!1872826)))

(declare-fun c!488875 () Bool)

(assert (=> b!2977320 (= c!488875 e!1872826)))

(declare-fun bm!198629 () Bool)

(declare-fun call!198633 () Bool)

(declare-fun isEmptyExpr!436 (Regex!9288) Bool)

(assert (=> bm!198629 (= call!198633 (isEmptyExpr!436 (ite c!488882 lt!1037316 lt!1037315)))))

(declare-fun b!2977321 () Bool)

(declare-fun e!1872822 () Regex!9288)

(assert (=> b!2977321 (= e!1872822 EmptyExpr!9288)))

(declare-fun b!2977322 () Bool)

(declare-fun e!1872820 () Regex!9288)

(assert (=> b!2977322 (= e!1872820 EmptyLang!9288)))

(declare-fun b!2977323 () Bool)

(declare-fun e!1872823 () Bool)

(assert (=> b!2977323 (= e!1872823 call!198633)))

(declare-fun b!2977324 () Bool)

(declare-fun e!1872828 () Regex!9288)

(declare-fun e!1872824 () Regex!9288)

(assert (=> b!2977324 (= e!1872828 e!1872824)))

(assert (=> b!2977324 (= c!488882 (is-Star!9288 (reg!9617 r!17423)))))

(declare-fun d!843236 () Bool)

(declare-fun e!1872817 () Bool)

(assert (=> d!843236 e!1872817))

(declare-fun res!1227688 () Bool)

(assert (=> d!843236 (=> (not res!1227688) (not e!1872817))))

(declare-fun lt!1037313 () Regex!9288)

(assert (=> d!843236 (= res!1227688 (validRegex!4021 lt!1037313))))

(assert (=> d!843236 (= lt!1037313 e!1872820)))

(declare-fun c!488880 () Bool)

(assert (=> d!843236 (= c!488880 (is-EmptyLang!9288 (reg!9617 r!17423)))))

(assert (=> d!843236 (validRegex!4021 (reg!9617 r!17423))))

(assert (=> d!843236 (= (simplify!289 (reg!9617 r!17423)) lt!1037313)))

(declare-fun b!2977325 () Bool)

(declare-fun e!1872825 () Regex!9288)

(assert (=> b!2977325 (= e!1872825 lt!1037315)))

(declare-fun b!2977326 () Bool)

(assert (=> b!2977326 (= e!1872828 EmptyExpr!9288)))

(declare-fun b!2977327 () Bool)

(declare-fun c!488883 () Bool)

(assert (=> b!2977327 (= c!488883 e!1872823)))

(declare-fun res!1227689 () Bool)

(assert (=> b!2977327 (=> res!1227689 e!1872823)))

(assert (=> b!2977327 (= res!1227689 call!198635)))

(declare-fun call!198632 () Regex!9288)

(assert (=> b!2977327 (= lt!1037316 call!198632)))

(assert (=> b!2977327 (= e!1872824 e!1872822)))

(declare-fun bm!198630 () Bool)

(declare-fun lt!1037314 () Regex!9288)

(assert (=> bm!198630 (= call!198636 (isEmptyLang!402 (ite c!488884 lt!1037314 lt!1037315)))))

(declare-fun b!2977328 () Bool)

(assert (=> b!2977328 (= e!1872817 (= (nullable!2981 lt!1037313) (nullable!2981 (reg!9617 r!17423))))))

(declare-fun b!2977329 () Bool)

(declare-fun e!1872821 () Regex!9288)

(assert (=> b!2977329 (= e!1872821 lt!1037314)))

(declare-fun b!2977330 () Bool)

(declare-fun c!488878 () Bool)

(assert (=> b!2977330 (= c!488878 (is-EmptyExpr!9288 (reg!9617 r!17423)))))

(declare-fun e!1872827 () Regex!9288)

(assert (=> b!2977330 (= e!1872827 e!1872828)))

(declare-fun bm!198631 () Bool)

(assert (=> bm!198631 (= call!198632 (simplify!289 (ite c!488882 (reg!9617 (reg!9617 r!17423)) (ite c!488884 (regTwo!19089 (reg!9617 r!17423)) (regOne!19088 (reg!9617 r!17423))))))))

(declare-fun b!2977331 () Bool)

(assert (=> b!2977331 (= e!1872819 e!1872821)))

(assert (=> b!2977331 (= lt!1037312 call!198637)))

(assert (=> b!2977331 (= lt!1037314 call!198634)))

(declare-fun c!488881 () Bool)

(assert (=> b!2977331 (= c!488881 call!198631)))

(declare-fun b!2977332 () Bool)

(assert (=> b!2977332 (= e!1872827 (reg!9617 r!17423))))

(declare-fun b!2977333 () Bool)

(assert (=> b!2977333 (= e!1872820 e!1872827)))

(declare-fun c!488876 () Bool)

(assert (=> b!2977333 (= c!488876 (is-ElementMatch!9288 (reg!9617 r!17423)))))

(declare-fun b!2977334 () Bool)

(declare-fun e!1872816 () Regex!9288)

(assert (=> b!2977334 (= e!1872825 e!1872816)))

(declare-fun c!488879 () Bool)

(assert (=> b!2977334 (= c!488879 call!198633)))

(declare-fun b!2977335 () Bool)

(assert (=> b!2977335 (= e!1872816 lt!1037311)))

(declare-fun bm!198632 () Bool)

(assert (=> bm!198632 (= call!198634 call!198632)))

(declare-fun b!2977336 () Bool)

(declare-fun c!488877 () Bool)

(assert (=> b!2977336 (= c!488877 (isEmptyExpr!436 lt!1037311))))

(assert (=> b!2977336 (= e!1872829 e!1872825)))

(declare-fun b!2977337 () Bool)

(assert (=> b!2977337 (= e!1872829 EmptyLang!9288)))

(declare-fun b!2977338 () Bool)

(declare-fun e!1872818 () Regex!9288)

(assert (=> b!2977338 (= e!1872818 lt!1037312)))

(declare-fun b!2977339 () Bool)

(declare-fun c!488885 () Bool)

(assert (=> b!2977339 (= c!488885 call!198636)))

(assert (=> b!2977339 (= e!1872821 e!1872818)))

(declare-fun b!2977340 () Bool)

(assert (=> b!2977340 (= e!1872818 (Union!9288 lt!1037312 lt!1037314))))

(declare-fun b!2977341 () Bool)

(assert (=> b!2977341 (= e!1872822 (Star!9288 lt!1037316))))

(declare-fun b!2977342 () Bool)

(assert (=> b!2977342 (= c!488884 (is-Union!9288 (reg!9617 r!17423)))))

(assert (=> b!2977342 (= e!1872824 e!1872819)))

(declare-fun b!2977343 () Bool)

(assert (=> b!2977343 (= e!1872816 (Concat!14609 lt!1037311 lt!1037315))))

(assert (= (and d!843236 c!488880) b!2977322))

(assert (= (and d!843236 (not c!488880)) b!2977333))

(assert (= (and b!2977333 c!488876) b!2977332))

(assert (= (and b!2977333 (not c!488876)) b!2977330))

(assert (= (and b!2977330 c!488878) b!2977326))

(assert (= (and b!2977330 (not c!488878)) b!2977324))

(assert (= (and b!2977324 c!488882) b!2977327))

(assert (= (and b!2977324 (not c!488882)) b!2977342))

(assert (= (and b!2977327 (not res!1227689)) b!2977323))

(assert (= (and b!2977327 c!488883) b!2977321))

(assert (= (and b!2977327 (not c!488883)) b!2977341))

(assert (= (and b!2977342 c!488884) b!2977331))

(assert (= (and b!2977342 (not c!488884)) b!2977320))

(assert (= (and b!2977331 c!488881) b!2977329))

(assert (= (and b!2977331 (not c!488881)) b!2977339))

(assert (= (and b!2977339 c!488885) b!2977338))

(assert (= (and b!2977339 (not c!488885)) b!2977340))

(assert (= (and b!2977320 (not res!1227690)) b!2977319))

(assert (= (and b!2977320 c!488875) b!2977337))

(assert (= (and b!2977320 (not c!488875)) b!2977336))

(assert (= (and b!2977336 c!488877) b!2977325))

(assert (= (and b!2977336 (not c!488877)) b!2977334))

(assert (= (and b!2977334 c!488879) b!2977335))

(assert (= (and b!2977334 (not c!488879)) b!2977343))

(assert (= (or b!2977331 b!2977320) bm!198628))

(assert (= (or b!2977331 b!2977320) bm!198632))

(assert (= (or b!2977339 b!2977319) bm!198630))

(assert (= (or b!2977331 b!2977320) bm!198626))

(assert (= (or b!2977323 b!2977334) bm!198629))

(assert (= (or b!2977327 bm!198632) bm!198631))

(assert (= (or b!2977327 bm!198626) bm!198627))

(assert (= (and d!843236 res!1227688) b!2977328))

(declare-fun m!3340643 () Bool)

(assert (=> bm!198628 m!3340643))

(declare-fun m!3340645 () Bool)

(assert (=> bm!198631 m!3340645))

(declare-fun m!3340647 () Bool)

(assert (=> bm!198629 m!3340647))

(declare-fun m!3340649 () Bool)

(assert (=> bm!198630 m!3340649))

(declare-fun m!3340651 () Bool)

(assert (=> bm!198627 m!3340651))

(declare-fun m!3340653 () Bool)

(assert (=> d!843236 m!3340653))

(declare-fun m!3340655 () Bool)

(assert (=> d!843236 m!3340655))

(declare-fun m!3340657 () Bool)

(assert (=> b!2977336 m!3340657))

(declare-fun m!3340659 () Bool)

(assert (=> b!2977328 m!3340659))

(declare-fun m!3340661 () Bool)

(assert (=> b!2977328 m!3340661))

(assert (=> b!2977004 d!843236))

(declare-fun bm!198633 () Bool)

(declare-fun call!198640 () Bool)

(declare-fun call!198638 () Bool)

(assert (=> bm!198633 (= call!198640 call!198638)))

(declare-fun b!2977344 () Bool)

(declare-fun e!1872833 () Bool)

(declare-fun e!1872830 () Bool)

(assert (=> b!2977344 (= e!1872833 e!1872830)))

(declare-fun c!488886 () Bool)

(assert (=> b!2977344 (= c!488886 (is-Union!9288 r!17423))))

(declare-fun b!2977345 () Bool)

(declare-fun e!1872836 () Bool)

(assert (=> b!2977345 (= e!1872836 e!1872833)))

(declare-fun c!488887 () Bool)

(assert (=> b!2977345 (= c!488887 (is-Star!9288 r!17423))))

(declare-fun b!2977346 () Bool)

(declare-fun res!1227694 () Bool)

(declare-fun e!1872831 () Bool)

(assert (=> b!2977346 (=> (not res!1227694) (not e!1872831))))

(declare-fun call!198639 () Bool)

(assert (=> b!2977346 (= res!1227694 call!198639)))

(assert (=> b!2977346 (= e!1872830 e!1872831)))

(declare-fun bm!198634 () Bool)

(assert (=> bm!198634 (= call!198638 (validRegex!4021 (ite c!488887 (reg!9617 r!17423) (ite c!488886 (regTwo!19089 r!17423) (regOne!19088 r!17423)))))))

(declare-fun b!2977347 () Bool)

(declare-fun res!1227693 () Bool)

(declare-fun e!1872832 () Bool)

(assert (=> b!2977347 (=> res!1227693 e!1872832)))

(assert (=> b!2977347 (= res!1227693 (not (is-Concat!14609 r!17423)))))

(assert (=> b!2977347 (= e!1872830 e!1872832)))

(declare-fun b!2977348 () Bool)

(assert (=> b!2977348 (= e!1872831 call!198640)))

(declare-fun d!843244 () Bool)

(declare-fun res!1227695 () Bool)

(assert (=> d!843244 (=> res!1227695 e!1872836)))

(assert (=> d!843244 (= res!1227695 (is-ElementMatch!9288 r!17423))))

(assert (=> d!843244 (= (validRegex!4021 r!17423) e!1872836)))

(declare-fun bm!198635 () Bool)

(assert (=> bm!198635 (= call!198639 (validRegex!4021 (ite c!488886 (regOne!19089 r!17423) (regTwo!19088 r!17423))))))

(declare-fun b!2977349 () Bool)

(declare-fun e!1872835 () Bool)

(assert (=> b!2977349 (= e!1872835 call!198638)))

(declare-fun b!2977350 () Bool)

(assert (=> b!2977350 (= e!1872833 e!1872835)))

(declare-fun res!1227691 () Bool)

(assert (=> b!2977350 (= res!1227691 (not (nullable!2981 (reg!9617 r!17423))))))

(assert (=> b!2977350 (=> (not res!1227691) (not e!1872835))))

(declare-fun b!2977351 () Bool)

(declare-fun e!1872834 () Bool)

(assert (=> b!2977351 (= e!1872832 e!1872834)))

(declare-fun res!1227692 () Bool)

(assert (=> b!2977351 (=> (not res!1227692) (not e!1872834))))

(assert (=> b!2977351 (= res!1227692 call!198640)))

(declare-fun b!2977352 () Bool)

(assert (=> b!2977352 (= e!1872834 call!198639)))

(assert (= (and d!843244 (not res!1227695)) b!2977345))

(assert (= (and b!2977345 c!488887) b!2977350))

(assert (= (and b!2977345 (not c!488887)) b!2977344))

(assert (= (and b!2977350 res!1227691) b!2977349))

(assert (= (and b!2977344 c!488886) b!2977346))

(assert (= (and b!2977344 (not c!488886)) b!2977347))

(assert (= (and b!2977346 res!1227694) b!2977348))

(assert (= (and b!2977347 (not res!1227693)) b!2977351))

(assert (= (and b!2977351 res!1227692) b!2977352))

(assert (= (or b!2977346 b!2977352) bm!198635))

(assert (= (or b!2977348 b!2977351) bm!198633))

(assert (= (or b!2977349 bm!198633) bm!198634))

(declare-fun m!3340663 () Bool)

(assert (=> bm!198634 m!3340663))

(declare-fun m!3340665 () Bool)

(assert (=> bm!198635 m!3340665))

(assert (=> b!2977350 m!3340661))

(assert (=> start!287818 d!843244))

(declare-fun b!2977353 () Bool)

(declare-fun res!1227696 () Bool)

(declare-fun e!1872838 () Bool)

(assert (=> b!2977353 (=> res!1227696 e!1872838)))

(assert (=> b!2977353 (= res!1227696 (not (isEmpty!19276 (tail!4866 s!11993))))))

(declare-fun b!2977354 () Bool)

(declare-fun res!1227697 () Bool)

(declare-fun e!1872841 () Bool)

(assert (=> b!2977354 (=> (not res!1227697) (not e!1872841))))

(assert (=> b!2977354 (= res!1227697 (isEmpty!19276 (tail!4866 s!11993)))))

(declare-fun d!843246 () Bool)

(declare-fun e!1872839 () Bool)

(assert (=> d!843246 e!1872839))

(declare-fun c!488890 () Bool)

(assert (=> d!843246 (= c!488890 (is-EmptyExpr!9288 lt!1037239))))

(declare-fun lt!1037319 () Bool)

(declare-fun e!1872840 () Bool)

(assert (=> d!843246 (= lt!1037319 e!1872840)))

(declare-fun c!488889 () Bool)

(assert (=> d!843246 (= c!488889 (isEmpty!19276 s!11993))))

(assert (=> d!843246 (validRegex!4021 lt!1037239)))

(assert (=> d!843246 (= (matchR!4170 lt!1037239 s!11993) lt!1037319)))

(declare-fun b!2977355 () Bool)

(assert (=> b!2977355 (= e!1872838 (not (= (head!6640 s!11993) (c!488808 lt!1037239))))))

(declare-fun b!2977356 () Bool)

(assert (=> b!2977356 (= e!1872840 (matchR!4170 (derivativeStep!2581 lt!1037239 (head!6640 s!11993)) (tail!4866 s!11993)))))

(declare-fun b!2977357 () Bool)

(declare-fun e!1872837 () Bool)

(assert (=> b!2977357 (= e!1872839 e!1872837)))

(declare-fun c!488888 () Bool)

(assert (=> b!2977357 (= c!488888 (is-EmptyLang!9288 lt!1037239))))

(declare-fun b!2977358 () Bool)

(assert (=> b!2977358 (= e!1872840 (nullable!2981 lt!1037239))))

(declare-fun b!2977359 () Bool)

(assert (=> b!2977359 (= e!1872841 (= (head!6640 s!11993) (c!488808 lt!1037239)))))

(declare-fun bm!198636 () Bool)

(declare-fun call!198641 () Bool)

(assert (=> bm!198636 (= call!198641 (isEmpty!19276 s!11993))))

(declare-fun b!2977360 () Bool)

(declare-fun e!1872842 () Bool)

(assert (=> b!2977360 (= e!1872842 e!1872838)))

(declare-fun res!1227698 () Bool)

(assert (=> b!2977360 (=> res!1227698 e!1872838)))

(assert (=> b!2977360 (= res!1227698 call!198641)))

(declare-fun b!2977361 () Bool)

(assert (=> b!2977361 (= e!1872837 (not lt!1037319))))

(declare-fun b!2977362 () Bool)

(declare-fun res!1227702 () Bool)

(assert (=> b!2977362 (=> (not res!1227702) (not e!1872841))))

(assert (=> b!2977362 (= res!1227702 (not call!198641))))

(declare-fun b!2977363 () Bool)

(declare-fun res!1227699 () Bool)

(declare-fun e!1872843 () Bool)

(assert (=> b!2977363 (=> res!1227699 e!1872843)))

(assert (=> b!2977363 (= res!1227699 e!1872841)))

(declare-fun res!1227700 () Bool)

(assert (=> b!2977363 (=> (not res!1227700) (not e!1872841))))

(assert (=> b!2977363 (= res!1227700 lt!1037319)))

(declare-fun b!2977364 () Bool)

(declare-fun res!1227703 () Bool)

(assert (=> b!2977364 (=> res!1227703 e!1872843)))

(assert (=> b!2977364 (= res!1227703 (not (is-ElementMatch!9288 lt!1037239)))))

(assert (=> b!2977364 (= e!1872837 e!1872843)))

(declare-fun b!2977365 () Bool)

(assert (=> b!2977365 (= e!1872843 e!1872842)))

(declare-fun res!1227701 () Bool)

(assert (=> b!2977365 (=> (not res!1227701) (not e!1872842))))

(assert (=> b!2977365 (= res!1227701 (not lt!1037319))))

(declare-fun b!2977366 () Bool)

(assert (=> b!2977366 (= e!1872839 (= lt!1037319 call!198641))))

(assert (= (and d!843246 c!488889) b!2977358))

(assert (= (and d!843246 (not c!488889)) b!2977356))

(assert (= (and d!843246 c!488890) b!2977366))

(assert (= (and d!843246 (not c!488890)) b!2977357))

(assert (= (and b!2977357 c!488888) b!2977361))

(assert (= (and b!2977357 (not c!488888)) b!2977364))

(assert (= (and b!2977364 (not res!1227703)) b!2977363))

(assert (= (and b!2977363 res!1227700) b!2977362))

(assert (= (and b!2977362 res!1227702) b!2977354))

(assert (= (and b!2977354 res!1227697) b!2977359))

(assert (= (and b!2977363 (not res!1227699)) b!2977365))

(assert (= (and b!2977365 res!1227701) b!2977360))

(assert (= (and b!2977360 (not res!1227698)) b!2977353))

(assert (= (and b!2977353 (not res!1227696)) b!2977355))

(assert (= (or b!2977366 b!2977360 b!2977362) bm!198636))

(assert (=> b!2977359 m!3340605))

(assert (=> b!2977353 m!3340607))

(assert (=> b!2977353 m!3340607))

(assert (=> b!2977353 m!3340609))

(assert (=> b!2977356 m!3340605))

(assert (=> b!2977356 m!3340605))

(declare-fun m!3340667 () Bool)

(assert (=> b!2977356 m!3340667))

(assert (=> b!2977356 m!3340607))

(assert (=> b!2977356 m!3340667))

(assert (=> b!2977356 m!3340607))

(declare-fun m!3340669 () Bool)

(assert (=> b!2977356 m!3340669))

(assert (=> d!843246 m!3340501))

(assert (=> d!843246 m!3340597))

(declare-fun m!3340671 () Bool)

(assert (=> b!2977358 m!3340671))

(assert (=> b!2977354 m!3340607))

(assert (=> b!2977354 m!3340607))

(assert (=> b!2977354 m!3340609))

(assert (=> bm!198636 m!3340501))

(assert (=> b!2977355 m!3340605))

(assert (=> b!2977010 d!843246))

(declare-fun b!2977375 () Bool)

(declare-fun e!1872848 () Bool)

(declare-fun tp!948456 () Bool)

(assert (=> b!2977375 (= e!1872848 (and tp_is_empty!16139 tp!948456))))

(assert (=> b!2977012 (= tp!948435 e!1872848)))

(assert (= (and b!2977012 (is-Cons!35029 (t!234218 s!11993))) b!2977375))

(declare-fun b!2977388 () Bool)

(declare-fun e!1872851 () Bool)

(declare-fun tp!948469 () Bool)

(assert (=> b!2977388 (= e!1872851 tp!948469)))

(declare-fun b!2977389 () Bool)

(declare-fun tp!948468 () Bool)

(declare-fun tp!948471 () Bool)

(assert (=> b!2977389 (= e!1872851 (and tp!948468 tp!948471))))

(declare-fun b!2977387 () Bool)

(declare-fun tp!948467 () Bool)

(declare-fun tp!948470 () Bool)

(assert (=> b!2977387 (= e!1872851 (and tp!948467 tp!948470))))

(declare-fun b!2977386 () Bool)

(assert (=> b!2977386 (= e!1872851 tp_is_empty!16139)))

(assert (=> b!2977008 (= tp!948433 e!1872851)))

(assert (= (and b!2977008 (is-ElementMatch!9288 (regOne!19089 r!17423))) b!2977386))

(assert (= (and b!2977008 (is-Concat!14609 (regOne!19089 r!17423))) b!2977387))

(assert (= (and b!2977008 (is-Star!9288 (regOne!19089 r!17423))) b!2977388))

(assert (= (and b!2977008 (is-Union!9288 (regOne!19089 r!17423))) b!2977389))

(declare-fun b!2977392 () Bool)

(declare-fun e!1872852 () Bool)

(declare-fun tp!948474 () Bool)

(assert (=> b!2977392 (= e!1872852 tp!948474)))

(declare-fun b!2977393 () Bool)

(declare-fun tp!948473 () Bool)

(declare-fun tp!948476 () Bool)

(assert (=> b!2977393 (= e!1872852 (and tp!948473 tp!948476))))

(declare-fun b!2977391 () Bool)

(declare-fun tp!948472 () Bool)

(declare-fun tp!948475 () Bool)

(assert (=> b!2977391 (= e!1872852 (and tp!948472 tp!948475))))

(declare-fun b!2977390 () Bool)

(assert (=> b!2977390 (= e!1872852 tp_is_empty!16139)))

(assert (=> b!2977008 (= tp!948434 e!1872852)))

(assert (= (and b!2977008 (is-ElementMatch!9288 (regTwo!19089 r!17423))) b!2977390))

(assert (= (and b!2977008 (is-Concat!14609 (regTwo!19089 r!17423))) b!2977391))

(assert (= (and b!2977008 (is-Star!9288 (regTwo!19089 r!17423))) b!2977392))

(assert (= (and b!2977008 (is-Union!9288 (regTwo!19089 r!17423))) b!2977393))

(declare-fun b!2977396 () Bool)

(declare-fun e!1872853 () Bool)

(declare-fun tp!948479 () Bool)

(assert (=> b!2977396 (= e!1872853 tp!948479)))

(declare-fun b!2977397 () Bool)

(declare-fun tp!948478 () Bool)

(declare-fun tp!948481 () Bool)

(assert (=> b!2977397 (= e!1872853 (and tp!948478 tp!948481))))

(declare-fun b!2977395 () Bool)

(declare-fun tp!948477 () Bool)

(declare-fun tp!948480 () Bool)

(assert (=> b!2977395 (= e!1872853 (and tp!948477 tp!948480))))

(declare-fun b!2977394 () Bool)

(assert (=> b!2977394 (= e!1872853 tp_is_empty!16139)))

(assert (=> b!2977009 (= tp!948430 e!1872853)))

(assert (= (and b!2977009 (is-ElementMatch!9288 (regOne!19088 r!17423))) b!2977394))

(assert (= (and b!2977009 (is-Concat!14609 (regOne!19088 r!17423))) b!2977395))

(assert (= (and b!2977009 (is-Star!9288 (regOne!19088 r!17423))) b!2977396))

(assert (= (and b!2977009 (is-Union!9288 (regOne!19088 r!17423))) b!2977397))

(declare-fun b!2977400 () Bool)

(declare-fun e!1872854 () Bool)

(declare-fun tp!948484 () Bool)

(assert (=> b!2977400 (= e!1872854 tp!948484)))

(declare-fun b!2977401 () Bool)

(declare-fun tp!948483 () Bool)

(declare-fun tp!948486 () Bool)

(assert (=> b!2977401 (= e!1872854 (and tp!948483 tp!948486))))

(declare-fun b!2977399 () Bool)

(declare-fun tp!948482 () Bool)

(declare-fun tp!948485 () Bool)

(assert (=> b!2977399 (= e!1872854 (and tp!948482 tp!948485))))

(declare-fun b!2977398 () Bool)

(assert (=> b!2977398 (= e!1872854 tp_is_empty!16139)))

(assert (=> b!2977009 (= tp!948432 e!1872854)))

(assert (= (and b!2977009 (is-ElementMatch!9288 (regTwo!19088 r!17423))) b!2977398))

(assert (= (and b!2977009 (is-Concat!14609 (regTwo!19088 r!17423))) b!2977399))

(assert (= (and b!2977009 (is-Star!9288 (regTwo!19088 r!17423))) b!2977400))

(assert (= (and b!2977009 (is-Union!9288 (regTwo!19088 r!17423))) b!2977401))

(declare-fun b!2977404 () Bool)

(declare-fun e!1872855 () Bool)

(declare-fun tp!948489 () Bool)

(assert (=> b!2977404 (= e!1872855 tp!948489)))

(declare-fun b!2977405 () Bool)

(declare-fun tp!948488 () Bool)

(declare-fun tp!948491 () Bool)

(assert (=> b!2977405 (= e!1872855 (and tp!948488 tp!948491))))

(declare-fun b!2977403 () Bool)

(declare-fun tp!948487 () Bool)

(declare-fun tp!948490 () Bool)

(assert (=> b!2977403 (= e!1872855 (and tp!948487 tp!948490))))

(declare-fun b!2977402 () Bool)

(assert (=> b!2977402 (= e!1872855 tp_is_empty!16139)))

(assert (=> b!2977011 (= tp!948431 e!1872855)))

(assert (= (and b!2977011 (is-ElementMatch!9288 (reg!9617 r!17423))) b!2977402))

(assert (= (and b!2977011 (is-Concat!14609 (reg!9617 r!17423))) b!2977403))

(assert (= (and b!2977011 (is-Star!9288 (reg!9617 r!17423))) b!2977404))

(assert (= (and b!2977011 (is-Union!9288 (reg!9617 r!17423))) b!2977405))

(push 1)

(assert (not b!2977401))

(assert (not b!2977134))

(assert (not b!2977191))

(assert (not bm!198636))

(assert (not bm!198611))

(assert (not b!2977400))

(assert (not b!2977179))

(assert (not b!2977180))

(assert (not b!2977354))

(assert (not b!2977336))

(assert (not bm!198631))

(assert (not b!2977328))

(assert (not b!2977393))

(assert (not d!843218))

(assert (not b!2977395))

(assert (not b!2977127))

(assert (not b!2977190))

(assert (not b!2977248))

(assert (not d!843212))

(assert (not d!843230))

(assert (not bm!198630))

(assert (not b!2977247))

(assert (not b!2977356))

(assert (not b!2977131))

(assert (not b!2977404))

(assert (not bm!198635))

(assert (not bm!198634))

(assert (not bm!198606))

(assert (not b!2977375))

(assert (not d!843210))

(assert (not b!2977388))

(assert (not b!2977389))

(assert (not b!2977252))

(assert (not b!2977403))

(assert (not d!843236))

(assert (not b!2977350))

(assert (not d!843216))

(assert (not bm!198607))

(assert (not b!2977092))

(assert (not b!2977387))

(assert (not d!843232))

(assert (not b!2977353))

(assert (not bm!198627))

(assert (not bm!198628))

(assert (not bm!198629))

(assert (not b!2977132))

(assert (not d!843206))

(assert (not b!2977359))

(assert (not b!2977358))

(assert (not b!2977405))

(assert (not d!843246))

(assert (not b!2977392))

(assert (not bm!198599))

(assert (not bm!198600))

(assert tp_is_empty!16139)

(assert (not bm!198605))

(assert (not d!843214))

(assert (not b!2977251))

(assert (not b!2977129))

(assert (not b!2977246))

(assert (not b!2977249))

(assert (not b!2977355))

(assert (not bm!198608))

(assert (not d!843226))

(assert (not b!2977396))

(assert (not b!2977397))

(assert (not b!2977391))

(assert (not b!2977128))

(assert (not b!2977399))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

