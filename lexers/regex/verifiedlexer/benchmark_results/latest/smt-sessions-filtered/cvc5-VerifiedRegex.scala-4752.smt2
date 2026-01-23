; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!245222 () Bool)

(assert start!245222)

(declare-fun b!2514625 () Bool)

(declare-fun e!1593257 () Bool)

(declare-fun tp!803787 () Bool)

(assert (=> b!2514625 (= e!1593257 tp!803787)))

(declare-fun b!2514626 () Bool)

(declare-fun e!1593260 () Bool)

(declare-fun e!1593259 () Bool)

(assert (=> b!2514626 (= e!1593260 (not e!1593259))))

(declare-fun res!1062969 () Bool)

(assert (=> b!2514626 (=> res!1062969 e!1593259)))

(declare-fun lt!898571 () Bool)

(assert (=> b!2514626 (= res!1062969 (not lt!898571))))

(declare-datatypes ((C!15114 0))(
  ( (C!15115 (val!9209 Int)) )
))
(declare-datatypes ((List!29543 0))(
  ( (Nil!29443) (Cons!29443 (h!34863 C!15114) (t!211242 List!29543)) )
))
(declare-fun tl!4068 () List!29543)

(declare-datatypes ((Regex!7478 0))(
  ( (ElementMatch!7478 (c!400758 C!15114)) (Concat!12174 (regOne!15468 Regex!7478) (regTwo!15468 Regex!7478)) (EmptyExpr!7478) (Star!7478 (reg!7807 Regex!7478)) (EmptyLang!7478) (Union!7478 (regOne!15469 Regex!7478) (regTwo!15469 Regex!7478)) )
))
(declare-fun derivative!173 (Regex!7478 List!29543) Regex!7478)

(assert (=> b!2514626 (= (derivative!173 EmptyLang!7478 tl!4068) EmptyLang!7478)))

(declare-datatypes ((Unit!43205 0))(
  ( (Unit!43206) )
))
(declare-fun lt!898570 () Unit!43205)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!25 (Regex!7478 List!29543) Unit!43205)

(assert (=> b!2514626 (= lt!898570 (lemmaEmptyLangDerivativeIsAFixPoint!25 EmptyLang!7478 tl!4068))))

(declare-fun e!1593261 () Bool)

(assert (=> b!2514626 e!1593261))

(declare-fun res!1062974 () Bool)

(assert (=> b!2514626 (=> res!1062974 e!1593261)))

(assert (=> b!2514626 (= res!1062974 lt!898571)))

(declare-fun lt!898574 () Regex!7478)

(declare-fun matchR!3477 (Regex!7478 List!29543) Bool)

(assert (=> b!2514626 (= lt!898571 (matchR!3477 lt!898574 tl!4068))))

(declare-fun lt!898569 () Unit!43205)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!165 (Regex!7478 Regex!7478 List!29543) Unit!43205)

(assert (=> b!2514626 (= lt!898569 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!165 lt!898574 EmptyLang!7478 tl!4068))))

(declare-fun lt!898577 () Regex!7478)

(assert (=> b!2514626 (= (matchR!3477 lt!898577 tl!4068) (matchR!3477 (derivative!173 lt!898577 tl!4068) Nil!29443))))

(declare-fun lt!898578 () Unit!43205)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!123 (Regex!7478 List!29543) Unit!43205)

(assert (=> b!2514626 (= lt!898578 (lemmaMatchRIsSameAsWholeDerivativeAndNil!123 lt!898577 tl!4068))))

(assert (=> b!2514626 (= lt!898577 (Union!7478 lt!898574 EmptyLang!7478))))

(declare-fun lt!898572 () Regex!7478)

(declare-fun r!27340 () Regex!7478)

(assert (=> b!2514626 (= lt!898574 (Concat!12174 lt!898572 (regTwo!15468 r!27340)))))

(declare-fun c!14016 () C!15114)

(declare-fun derivativeStep!2047 (Regex!7478 C!15114) Regex!7478)

(assert (=> b!2514626 (= lt!898572 (derivativeStep!2047 (regOne!15468 r!27340) c!14016))))

(declare-fun res!1062975 () Bool)

(assert (=> start!245222 (=> (not res!1062975) (not e!1593260))))

(declare-fun validRegex!3104 (Regex!7478) Bool)

(assert (=> start!245222 (= res!1062975 (validRegex!3104 r!27340))))

(assert (=> start!245222 e!1593260))

(assert (=> start!245222 e!1593257))

(declare-fun tp_is_empty!12811 () Bool)

(assert (=> start!245222 tp_is_empty!12811))

(declare-fun e!1593258 () Bool)

(assert (=> start!245222 e!1593258))

(declare-fun b!2514627 () Bool)

(assert (=> b!2514627 (= e!1593257 tp_is_empty!12811)))

(declare-fun b!2514628 () Bool)

(declare-fun e!1593262 () Bool)

(assert (=> b!2514628 (= e!1593259 e!1593262)))

(declare-fun res!1062970 () Bool)

(assert (=> b!2514628 (=> res!1062970 e!1593262)))

(declare-datatypes ((tuple2!29486 0))(
  ( (tuple2!29487 (_1!17285 List!29543) (_2!17285 List!29543)) )
))
(declare-fun lt!898573 () tuple2!29486)

(declare-fun ++!7212 (List!29543 List!29543) List!29543)

(assert (=> b!2514628 (= res!1062970 (not (= (++!7212 (_1!17285 lt!898573) (_2!17285 lt!898573)) tl!4068)))))

(declare-datatypes ((Option!5863 0))(
  ( (None!5862) (Some!5862 (v!31793 tuple2!29486)) )
))
(declare-fun lt!898576 () Option!5863)

(declare-fun get!9181 (Option!5863) tuple2!29486)

(assert (=> b!2514628 (= lt!898573 (get!9181 lt!898576))))

(declare-fun isDefined!4685 (Option!5863) Bool)

(assert (=> b!2514628 (isDefined!4685 lt!898576)))

(declare-fun findConcatSeparation!885 (Regex!7478 Regex!7478 List!29543 List!29543 List!29543) Option!5863)

(assert (=> b!2514628 (= lt!898576 (findConcatSeparation!885 lt!898572 (regTwo!15468 r!27340) Nil!29443 tl!4068 tl!4068))))

(declare-fun lt!898575 () Unit!43205)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!167 (Regex!7478 Regex!7478 List!29543) Unit!43205)

(assert (=> b!2514628 (= lt!898575 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!167 lt!898572 (regTwo!15468 r!27340) tl!4068))))

(declare-fun b!2514629 () Bool)

(declare-fun res!1062968 () Bool)

(assert (=> b!2514629 (=> (not res!1062968) (not e!1593260))))

(assert (=> b!2514629 (= res!1062968 (and (not (is-EmptyExpr!7478 r!27340)) (not (is-EmptyLang!7478 r!27340)) (not (is-ElementMatch!7478 r!27340)) (not (is-Union!7478 r!27340)) (not (is-Star!7478 r!27340))))))

(declare-fun b!2514630 () Bool)

(assert (=> b!2514630 (= e!1593261 (matchR!3477 EmptyLang!7478 tl!4068))))

(declare-fun b!2514631 () Bool)

(declare-fun tp!803788 () Bool)

(declare-fun tp!803790 () Bool)

(assert (=> b!2514631 (= e!1593257 (and tp!803788 tp!803790))))

(declare-fun b!2514632 () Bool)

(declare-fun tp!803789 () Bool)

(assert (=> b!2514632 (= e!1593258 (and tp_is_empty!12811 tp!803789))))

(declare-fun b!2514633 () Bool)

(declare-fun res!1062972 () Bool)

(assert (=> b!2514633 (=> res!1062972 e!1593262)))

(assert (=> b!2514633 (= res!1062972 (not (matchR!3477 (regTwo!15468 r!27340) (_2!17285 lt!898573))))))

(declare-fun b!2514634 () Bool)

(declare-fun tp!803791 () Bool)

(declare-fun tp!803792 () Bool)

(assert (=> b!2514634 (= e!1593257 (and tp!803791 tp!803792))))

(declare-fun b!2514635 () Bool)

(declare-fun res!1062971 () Bool)

(assert (=> b!2514635 (=> (not res!1062971) (not e!1593260))))

(declare-fun nullable!2395 (Regex!7478) Bool)

(assert (=> b!2514635 (= res!1062971 (nullable!2395 (derivative!173 (derivativeStep!2047 r!27340 c!14016) tl!4068)))))

(declare-fun b!2514636 () Bool)

(declare-fun res!1062973 () Bool)

(assert (=> b!2514636 (=> res!1062973 e!1593262)))

(assert (=> b!2514636 (= res!1062973 (not (matchR!3477 lt!898572 (_1!17285 lt!898573))))))

(declare-fun b!2514637 () Bool)

(assert (=> b!2514637 (= e!1593262 (validRegex!3104 (regOne!15468 r!27340)))))

(declare-fun b!2514638 () Bool)

(declare-fun res!1062967 () Bool)

(assert (=> b!2514638 (=> (not res!1062967) (not e!1593260))))

(assert (=> b!2514638 (= res!1062967 (not (nullable!2395 (regOne!15468 r!27340))))))

(assert (= (and start!245222 res!1062975) b!2514635))

(assert (= (and b!2514635 res!1062971) b!2514629))

(assert (= (and b!2514629 res!1062968) b!2514638))

(assert (= (and b!2514638 res!1062967) b!2514626))

(assert (= (and b!2514626 (not res!1062974)) b!2514630))

(assert (= (and b!2514626 (not res!1062969)) b!2514628))

(assert (= (and b!2514628 (not res!1062970)) b!2514636))

(assert (= (and b!2514636 (not res!1062973)) b!2514633))

(assert (= (and b!2514633 (not res!1062972)) b!2514637))

(assert (= (and start!245222 (is-ElementMatch!7478 r!27340)) b!2514627))

(assert (= (and start!245222 (is-Concat!12174 r!27340)) b!2514631))

(assert (= (and start!245222 (is-Star!7478 r!27340)) b!2514625))

(assert (= (and start!245222 (is-Union!7478 r!27340)) b!2514634))

(assert (= (and start!245222 (is-Cons!29443 tl!4068)) b!2514632))

(declare-fun m!2872081 () Bool)

(assert (=> b!2514633 m!2872081))

(declare-fun m!2872083 () Bool)

(assert (=> b!2514636 m!2872083))

(declare-fun m!2872085 () Bool)

(assert (=> start!245222 m!2872085))

(declare-fun m!2872087 () Bool)

(assert (=> b!2514638 m!2872087))

(declare-fun m!2872089 () Bool)

(assert (=> b!2514626 m!2872089))

(declare-fun m!2872091 () Bool)

(assert (=> b!2514626 m!2872091))

(declare-fun m!2872093 () Bool)

(assert (=> b!2514626 m!2872093))

(assert (=> b!2514626 m!2872089))

(declare-fun m!2872095 () Bool)

(assert (=> b!2514626 m!2872095))

(declare-fun m!2872097 () Bool)

(assert (=> b!2514626 m!2872097))

(declare-fun m!2872099 () Bool)

(assert (=> b!2514626 m!2872099))

(declare-fun m!2872101 () Bool)

(assert (=> b!2514626 m!2872101))

(declare-fun m!2872103 () Bool)

(assert (=> b!2514626 m!2872103))

(declare-fun m!2872105 () Bool)

(assert (=> b!2514626 m!2872105))

(declare-fun m!2872107 () Bool)

(assert (=> b!2514628 m!2872107))

(declare-fun m!2872109 () Bool)

(assert (=> b!2514628 m!2872109))

(declare-fun m!2872111 () Bool)

(assert (=> b!2514628 m!2872111))

(declare-fun m!2872113 () Bool)

(assert (=> b!2514628 m!2872113))

(declare-fun m!2872115 () Bool)

(assert (=> b!2514628 m!2872115))

(declare-fun m!2872117 () Bool)

(assert (=> b!2514635 m!2872117))

(assert (=> b!2514635 m!2872117))

(declare-fun m!2872119 () Bool)

(assert (=> b!2514635 m!2872119))

(assert (=> b!2514635 m!2872119))

(declare-fun m!2872121 () Bool)

(assert (=> b!2514635 m!2872121))

(declare-fun m!2872123 () Bool)

(assert (=> b!2514637 m!2872123))

(declare-fun m!2872125 () Bool)

(assert (=> b!2514630 m!2872125))

(push 1)

(assert (not b!2514628))

(assert (not b!2514638))

(assert (not b!2514625))

(assert (not b!2514626))

(assert (not b!2514635))

(assert (not b!2514631))

(assert (not b!2514632))

(assert (not b!2514630))

(assert (not start!245222))

(assert tp_is_empty!12811)

(assert (not b!2514637))

(assert (not b!2514634))

(assert (not b!2514636))

(assert (not b!2514633))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!156195 () Bool)

(declare-fun call!156201 () Bool)

(declare-fun c!400764 () Bool)

(assert (=> bm!156195 (= call!156201 (validRegex!3104 (ite c!400764 (regTwo!15469 (regOne!15468 r!27340)) (regOne!15468 (regOne!15468 r!27340)))))))

(declare-fun b!2514699 () Bool)

(declare-fun res!1063015 () Bool)

(declare-fun e!1593299 () Bool)

(assert (=> b!2514699 (=> res!1063015 e!1593299)))

(assert (=> b!2514699 (= res!1063015 (not (is-Concat!12174 (regOne!15468 r!27340))))))

(declare-fun e!1593297 () Bool)

(assert (=> b!2514699 (= e!1593297 e!1593299)))

(declare-fun d!717181 () Bool)

(declare-fun res!1063014 () Bool)

(declare-fun e!1593295 () Bool)

(assert (=> d!717181 (=> res!1063014 e!1593295)))

(assert (=> d!717181 (= res!1063014 (is-ElementMatch!7478 (regOne!15468 r!27340)))))

(assert (=> d!717181 (= (validRegex!3104 (regOne!15468 r!27340)) e!1593295)))

(declare-fun b!2514700 () Bool)

(declare-fun e!1593301 () Bool)

(declare-fun e!1593296 () Bool)

(assert (=> b!2514700 (= e!1593301 e!1593296)))

(declare-fun res!1063017 () Bool)

(assert (=> b!2514700 (= res!1063017 (not (nullable!2395 (reg!7807 (regOne!15468 r!27340)))))))

(assert (=> b!2514700 (=> (not res!1063017) (not e!1593296))))

(declare-fun b!2514701 () Bool)

(assert (=> b!2514701 (= e!1593301 e!1593297)))

(assert (=> b!2514701 (= c!400764 (is-Union!7478 (regOne!15468 r!27340)))))

(declare-fun bm!156196 () Bool)

(declare-fun call!156202 () Bool)

(declare-fun call!156200 () Bool)

(assert (=> bm!156196 (= call!156202 call!156200)))

(declare-fun bm!156197 () Bool)

(declare-fun c!400765 () Bool)

(assert (=> bm!156197 (= call!156200 (validRegex!3104 (ite c!400765 (reg!7807 (regOne!15468 r!27340)) (ite c!400764 (regOne!15469 (regOne!15468 r!27340)) (regTwo!15468 (regOne!15468 r!27340))))))))

(declare-fun b!2514702 () Bool)

(assert (=> b!2514702 (= e!1593296 call!156200)))

(declare-fun b!2514703 () Bool)

(declare-fun e!1593298 () Bool)

(assert (=> b!2514703 (= e!1593298 call!156202)))

(declare-fun b!2514704 () Bool)

(declare-fun e!1593300 () Bool)

(assert (=> b!2514704 (= e!1593300 call!156201)))

(declare-fun b!2514705 () Bool)

(declare-fun res!1063013 () Bool)

(assert (=> b!2514705 (=> (not res!1063013) (not e!1593300))))

(assert (=> b!2514705 (= res!1063013 call!156202)))

(assert (=> b!2514705 (= e!1593297 e!1593300)))

(declare-fun b!2514706 () Bool)

(assert (=> b!2514706 (= e!1593295 e!1593301)))

(assert (=> b!2514706 (= c!400765 (is-Star!7478 (regOne!15468 r!27340)))))

(declare-fun b!2514707 () Bool)

(assert (=> b!2514707 (= e!1593299 e!1593298)))

(declare-fun res!1063016 () Bool)

(assert (=> b!2514707 (=> (not res!1063016) (not e!1593298))))

(assert (=> b!2514707 (= res!1063016 call!156201)))

(assert (= (and d!717181 (not res!1063014)) b!2514706))

(assert (= (and b!2514706 c!400765) b!2514700))

(assert (= (and b!2514706 (not c!400765)) b!2514701))

(assert (= (and b!2514700 res!1063017) b!2514702))

(assert (= (and b!2514701 c!400764) b!2514705))

(assert (= (and b!2514701 (not c!400764)) b!2514699))

(assert (= (and b!2514705 res!1063013) b!2514704))

(assert (= (and b!2514699 (not res!1063015)) b!2514707))

(assert (= (and b!2514707 res!1063016) b!2514703))

(assert (= (or b!2514705 b!2514703) bm!156196))

(assert (= (or b!2514704 b!2514707) bm!156195))

(assert (= (or b!2514702 bm!156196) bm!156197))

(declare-fun m!2872173 () Bool)

(assert (=> bm!156195 m!2872173))

(declare-fun m!2872175 () Bool)

(assert (=> b!2514700 m!2872175))

(declare-fun m!2872177 () Bool)

(assert (=> bm!156197 m!2872177))

(assert (=> b!2514637 d!717181))

(declare-fun d!717185 () Bool)

(declare-fun lt!898614 () Regex!7478)

(assert (=> d!717185 (validRegex!3104 lt!898614)))

(declare-fun e!1593337 () Regex!7478)

(assert (=> d!717185 (= lt!898614 e!1593337)))

(declare-fun c!400786 () Bool)

(assert (=> d!717185 (= c!400786 (or (is-EmptyExpr!7478 (regOne!15468 r!27340)) (is-EmptyLang!7478 (regOne!15468 r!27340))))))

(assert (=> d!717185 (validRegex!3104 (regOne!15468 r!27340))))

(assert (=> d!717185 (= (derivativeStep!2047 (regOne!15468 r!27340) c!14016) lt!898614)))

(declare-fun b!2514770 () Bool)

(assert (=> b!2514770 (= e!1593337 EmptyLang!7478)))

(declare-fun b!2514771 () Bool)

(declare-fun e!1593336 () Regex!7478)

(declare-fun call!156216 () Regex!7478)

(assert (=> b!2514771 (= e!1593336 (Union!7478 (Concat!12174 call!156216 (regTwo!15468 (regOne!15468 r!27340))) EmptyLang!7478))))

(declare-fun b!2514772 () Bool)

(declare-fun e!1593334 () Regex!7478)

(declare-fun call!156214 () Regex!7478)

(declare-fun call!156217 () Regex!7478)

(assert (=> b!2514772 (= e!1593334 (Union!7478 call!156214 call!156217))))

(declare-fun bm!156209 () Bool)

(declare-fun c!400788 () Bool)

(assert (=> bm!156209 (= call!156214 (derivativeStep!2047 (ite c!400788 (regOne!15469 (regOne!15468 r!27340)) (regTwo!15468 (regOne!15468 r!27340))) c!14016))))

(declare-fun b!2514773 () Bool)

(declare-fun e!1593335 () Regex!7478)

(declare-fun call!156215 () Regex!7478)

(assert (=> b!2514773 (= e!1593335 (Concat!12174 call!156215 (regOne!15468 r!27340)))))

(declare-fun b!2514774 () Bool)

(assert (=> b!2514774 (= e!1593336 (Union!7478 (Concat!12174 call!156216 (regTwo!15468 (regOne!15468 r!27340))) call!156214))))

(declare-fun bm!156210 () Bool)

(assert (=> bm!156210 (= call!156215 call!156217)))

(declare-fun bm!156211 () Bool)

(declare-fun c!400787 () Bool)

(assert (=> bm!156211 (= call!156217 (derivativeStep!2047 (ite c!400788 (regTwo!15469 (regOne!15468 r!27340)) (ite c!400787 (reg!7807 (regOne!15468 r!27340)) (regOne!15468 (regOne!15468 r!27340)))) c!14016))))

(declare-fun b!2514775 () Bool)

(declare-fun e!1593333 () Regex!7478)

(assert (=> b!2514775 (= e!1593333 (ite (= c!14016 (c!400758 (regOne!15468 r!27340))) EmptyExpr!7478 EmptyLang!7478))))

(declare-fun b!2514776 () Bool)

(assert (=> b!2514776 (= c!400788 (is-Union!7478 (regOne!15468 r!27340)))))

(assert (=> b!2514776 (= e!1593333 e!1593334)))

(declare-fun b!2514777 () Bool)

(assert (=> b!2514777 (= e!1593334 e!1593335)))

(assert (=> b!2514777 (= c!400787 (is-Star!7478 (regOne!15468 r!27340)))))

(declare-fun b!2514778 () Bool)

(declare-fun c!400785 () Bool)

(assert (=> b!2514778 (= c!400785 (nullable!2395 (regOne!15468 (regOne!15468 r!27340))))))

(assert (=> b!2514778 (= e!1593335 e!1593336)))

(declare-fun bm!156212 () Bool)

(assert (=> bm!156212 (= call!156216 call!156215)))

(declare-fun b!2514779 () Bool)

(assert (=> b!2514779 (= e!1593337 e!1593333)))

(declare-fun c!400789 () Bool)

(assert (=> b!2514779 (= c!400789 (is-ElementMatch!7478 (regOne!15468 r!27340)))))

(assert (= (and d!717185 c!400786) b!2514770))

(assert (= (and d!717185 (not c!400786)) b!2514779))

(assert (= (and b!2514779 c!400789) b!2514775))

(assert (= (and b!2514779 (not c!400789)) b!2514776))

(assert (= (and b!2514776 c!400788) b!2514772))

(assert (= (and b!2514776 (not c!400788)) b!2514777))

(assert (= (and b!2514777 c!400787) b!2514773))

(assert (= (and b!2514777 (not c!400787)) b!2514778))

(assert (= (and b!2514778 c!400785) b!2514774))

(assert (= (and b!2514778 (not c!400785)) b!2514771))

(assert (= (or b!2514774 b!2514771) bm!156212))

(assert (= (or b!2514773 bm!156212) bm!156210))

(assert (= (or b!2514772 bm!156210) bm!156211))

(assert (= (or b!2514772 b!2514774) bm!156209))

(declare-fun m!2872195 () Bool)

(assert (=> d!717185 m!2872195))

(assert (=> d!717185 m!2872123))

(declare-fun m!2872197 () Bool)

(assert (=> bm!156209 m!2872197))

(declare-fun m!2872199 () Bool)

(assert (=> bm!156211 m!2872199))

(declare-fun m!2872201 () Bool)

(assert (=> b!2514778 m!2872201))

(assert (=> b!2514626 d!717185))

(declare-fun d!717189 () Bool)

(declare-fun lt!898619 () Regex!7478)

(assert (=> d!717189 (validRegex!3104 lt!898619)))

(declare-fun e!1593342 () Regex!7478)

(assert (=> d!717189 (= lt!898619 e!1593342)))

(declare-fun c!400794 () Bool)

(assert (=> d!717189 (= c!400794 (is-Cons!29443 tl!4068))))

(assert (=> d!717189 (validRegex!3104 EmptyLang!7478)))

(assert (=> d!717189 (= (derivative!173 EmptyLang!7478 tl!4068) lt!898619)))

(declare-fun b!2514788 () Bool)

(assert (=> b!2514788 (= e!1593342 (derivative!173 (derivativeStep!2047 EmptyLang!7478 (h!34863 tl!4068)) (t!211242 tl!4068)))))

(declare-fun b!2514789 () Bool)

(assert (=> b!2514789 (= e!1593342 EmptyLang!7478)))

(assert (= (and d!717189 c!400794) b!2514788))

(assert (= (and d!717189 (not c!400794)) b!2514789))

(declare-fun m!2872203 () Bool)

(assert (=> d!717189 m!2872203))

(declare-fun m!2872205 () Bool)

(assert (=> d!717189 m!2872205))

(declare-fun m!2872207 () Bool)

(assert (=> b!2514788 m!2872207))

(assert (=> b!2514788 m!2872207))

(declare-fun m!2872209 () Bool)

(assert (=> b!2514788 m!2872209))

(assert (=> b!2514626 d!717189))

(declare-fun b!2514844 () Bool)

(declare-fun e!1593370 () Bool)

(declare-fun lt!898623 () Bool)

(declare-fun call!156232 () Bool)

(assert (=> b!2514844 (= e!1593370 (= lt!898623 call!156232))))

(declare-fun b!2514845 () Bool)

(declare-fun e!1593372 () Bool)

(declare-fun head!5743 (List!29543) C!15114)

(assert (=> b!2514845 (= e!1593372 (= (head!5743 Nil!29443) (c!400758 (derivative!173 lt!898577 tl!4068))))))

(declare-fun b!2514846 () Bool)

(declare-fun e!1593374 () Bool)

(assert (=> b!2514846 (= e!1593374 (nullable!2395 (derivative!173 lt!898577 tl!4068)))))

(declare-fun b!2514847 () Bool)

(declare-fun e!1593375 () Bool)

(assert (=> b!2514847 (= e!1593370 e!1593375)))

(declare-fun c!400816 () Bool)

(assert (=> b!2514847 (= c!400816 (is-EmptyLang!7478 (derivative!173 lt!898577 tl!4068)))))

(declare-fun b!2514848 () Bool)

(declare-fun e!1593373 () Bool)

(declare-fun e!1593376 () Bool)

(assert (=> b!2514848 (= e!1593373 e!1593376)))

(declare-fun res!1063065 () Bool)

(assert (=> b!2514848 (=> (not res!1063065) (not e!1593376))))

(assert (=> b!2514848 (= res!1063065 (not lt!898623))))

(declare-fun b!2514849 () Bool)

(assert (=> b!2514849 (= e!1593375 (not lt!898623))))

(declare-fun b!2514850 () Bool)

(declare-fun res!1063061 () Bool)

(assert (=> b!2514850 (=> res!1063061 e!1593373)))

(assert (=> b!2514850 (= res!1063061 e!1593372)))

(declare-fun res!1063063 () Bool)

(assert (=> b!2514850 (=> (not res!1063063) (not e!1593372))))

(assert (=> b!2514850 (= res!1063063 lt!898623)))

(declare-fun b!2514851 () Bool)

(declare-fun res!1063059 () Bool)

(assert (=> b!2514851 (=> (not res!1063059) (not e!1593372))))

(declare-fun isEmpty!16911 (List!29543) Bool)

(declare-fun tail!4020 (List!29543) List!29543)

(assert (=> b!2514851 (= res!1063059 (isEmpty!16911 (tail!4020 Nil!29443)))))

(declare-fun b!2514852 () Bool)

(declare-fun res!1063060 () Bool)

(assert (=> b!2514852 (=> (not res!1063060) (not e!1593372))))

(assert (=> b!2514852 (= res!1063060 (not call!156232))))

(declare-fun b!2514853 () Bool)

(declare-fun res!1063064 () Bool)

(assert (=> b!2514853 (=> res!1063064 e!1593373)))

(assert (=> b!2514853 (= res!1063064 (not (is-ElementMatch!7478 (derivative!173 lt!898577 tl!4068))))))

(assert (=> b!2514853 (= e!1593375 e!1593373)))

(declare-fun b!2514854 () Bool)

(declare-fun e!1593371 () Bool)

(assert (=> b!2514854 (= e!1593371 (not (= (head!5743 Nil!29443) (c!400758 (derivative!173 lt!898577 tl!4068)))))))

(declare-fun d!717191 () Bool)

(assert (=> d!717191 e!1593370))

(declare-fun c!400815 () Bool)

(assert (=> d!717191 (= c!400815 (is-EmptyExpr!7478 (derivative!173 lt!898577 tl!4068)))))

(assert (=> d!717191 (= lt!898623 e!1593374)))

(declare-fun c!400814 () Bool)

(assert (=> d!717191 (= c!400814 (isEmpty!16911 Nil!29443))))

(assert (=> d!717191 (validRegex!3104 (derivative!173 lt!898577 tl!4068))))

(assert (=> d!717191 (= (matchR!3477 (derivative!173 lt!898577 tl!4068) Nil!29443) lt!898623)))

(declare-fun b!2514855 () Bool)

(assert (=> b!2514855 (= e!1593374 (matchR!3477 (derivativeStep!2047 (derivative!173 lt!898577 tl!4068) (head!5743 Nil!29443)) (tail!4020 Nil!29443)))))

(declare-fun b!2514856 () Bool)

(assert (=> b!2514856 (= e!1593376 e!1593371)))

(declare-fun res!1063058 () Bool)

(assert (=> b!2514856 (=> res!1063058 e!1593371)))

(assert (=> b!2514856 (= res!1063058 call!156232)))

(declare-fun bm!156227 () Bool)

(assert (=> bm!156227 (= call!156232 (isEmpty!16911 Nil!29443))))

(declare-fun b!2514857 () Bool)

(declare-fun res!1063062 () Bool)

(assert (=> b!2514857 (=> res!1063062 e!1593371)))

(assert (=> b!2514857 (= res!1063062 (not (isEmpty!16911 (tail!4020 Nil!29443))))))

(assert (= (and d!717191 c!400814) b!2514846))

(assert (= (and d!717191 (not c!400814)) b!2514855))

(assert (= (and d!717191 c!400815) b!2514844))

(assert (= (and d!717191 (not c!400815)) b!2514847))

(assert (= (and b!2514847 c!400816) b!2514849))

(assert (= (and b!2514847 (not c!400816)) b!2514853))

(assert (= (and b!2514853 (not res!1063064)) b!2514850))

(assert (= (and b!2514850 res!1063063) b!2514852))

(assert (= (and b!2514852 res!1063060) b!2514851))

(assert (= (and b!2514851 res!1063059) b!2514845))

(assert (= (and b!2514850 (not res!1063061)) b!2514848))

(assert (= (and b!2514848 res!1063065) b!2514856))

(assert (= (and b!2514856 (not res!1063058)) b!2514857))

(assert (= (and b!2514857 (not res!1063062)) b!2514854))

(assert (= (or b!2514844 b!2514856 b!2514852) bm!156227))

(declare-fun m!2872219 () Bool)

(assert (=> b!2514851 m!2872219))

(assert (=> b!2514851 m!2872219))

(declare-fun m!2872221 () Bool)

(assert (=> b!2514851 m!2872221))

(declare-fun m!2872223 () Bool)

(assert (=> bm!156227 m!2872223))

(assert (=> d!717191 m!2872223))

(assert (=> d!717191 m!2872089))

(declare-fun m!2872225 () Bool)

(assert (=> d!717191 m!2872225))

(declare-fun m!2872228 () Bool)

(assert (=> b!2514845 m!2872228))

(assert (=> b!2514855 m!2872228))

(assert (=> b!2514855 m!2872089))

(assert (=> b!2514855 m!2872228))

(declare-fun m!2872231 () Bool)

(assert (=> b!2514855 m!2872231))

(assert (=> b!2514855 m!2872219))

(assert (=> b!2514855 m!2872231))

(assert (=> b!2514855 m!2872219))

(declare-fun m!2872235 () Bool)

(assert (=> b!2514855 m!2872235))

(assert (=> b!2514857 m!2872219))

(assert (=> b!2514857 m!2872219))

(assert (=> b!2514857 m!2872221))

(assert (=> b!2514854 m!2872228))

(assert (=> b!2514846 m!2872089))

(declare-fun m!2872237 () Bool)

(assert (=> b!2514846 m!2872237))

(assert (=> b!2514626 d!717191))

(declare-fun d!717197 () Bool)

(declare-fun e!1593384 () Bool)

(assert (=> d!717197 e!1593384))

(declare-fun res!1063070 () Bool)

(assert (=> d!717197 (=> res!1063070 e!1593384)))

(assert (=> d!717197 (= res!1063070 (matchR!3477 lt!898574 tl!4068))))

(declare-fun lt!898631 () Unit!43205)

(declare-fun choose!14907 (Regex!7478 Regex!7478 List!29543) Unit!43205)

(assert (=> d!717197 (= lt!898631 (choose!14907 lt!898574 EmptyLang!7478 tl!4068))))

(declare-fun e!1593383 () Bool)

(assert (=> d!717197 e!1593383))

(declare-fun res!1063071 () Bool)

(assert (=> d!717197 (=> (not res!1063071) (not e!1593383))))

(assert (=> d!717197 (= res!1063071 (validRegex!3104 lt!898574))))

(assert (=> d!717197 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!165 lt!898574 EmptyLang!7478 tl!4068) lt!898631)))

(declare-fun b!2514866 () Bool)

(assert (=> b!2514866 (= e!1593383 (validRegex!3104 EmptyLang!7478))))

(declare-fun b!2514867 () Bool)

(assert (=> b!2514867 (= e!1593384 (matchR!3477 EmptyLang!7478 tl!4068))))

(assert (= (and d!717197 res!1063071) b!2514866))

(assert (= (and d!717197 (not res!1063070)) b!2514867))

(assert (=> d!717197 m!2872105))

(declare-fun m!2872239 () Bool)

(assert (=> d!717197 m!2872239))

(declare-fun m!2872241 () Bool)

(assert (=> d!717197 m!2872241))

(assert (=> b!2514866 m!2872205))

(assert (=> b!2514867 m!2872125))

(assert (=> b!2514626 d!717197))

(declare-fun d!717199 () Bool)

(assert (=> d!717199 (= (derivative!173 EmptyLang!7478 tl!4068) EmptyLang!7478)))

(declare-fun lt!898637 () Unit!43205)

(declare-fun choose!14908 (Regex!7478 List!29543) Unit!43205)

(assert (=> d!717199 (= lt!898637 (choose!14908 EmptyLang!7478 tl!4068))))

(assert (=> d!717199 (= EmptyLang!7478 EmptyLang!7478)))

(assert (=> d!717199 (= (lemmaEmptyLangDerivativeIsAFixPoint!25 EmptyLang!7478 tl!4068) lt!898637)))

(declare-fun bs!468865 () Bool)

(assert (= bs!468865 d!717199))

(assert (=> bs!468865 m!2872097))

(declare-fun m!2872267 () Bool)

(assert (=> bs!468865 m!2872267))

(assert (=> b!2514626 d!717199))

(declare-fun b!2514898 () Bool)

(declare-fun e!1593400 () Bool)

(declare-fun lt!898638 () Bool)

(declare-fun call!156235 () Bool)

(assert (=> b!2514898 (= e!1593400 (= lt!898638 call!156235))))

(declare-fun b!2514899 () Bool)

(declare-fun e!1593402 () Bool)

(assert (=> b!2514899 (= e!1593402 (= (head!5743 tl!4068) (c!400758 lt!898577)))))

(declare-fun b!2514900 () Bool)

(declare-fun e!1593404 () Bool)

(assert (=> b!2514900 (= e!1593404 (nullable!2395 lt!898577))))

(declare-fun b!2514901 () Bool)

(declare-fun e!1593405 () Bool)

(assert (=> b!2514901 (= e!1593400 e!1593405)))

(declare-fun c!400828 () Bool)

(assert (=> b!2514901 (= c!400828 (is-EmptyLang!7478 lt!898577))))

(declare-fun b!2514902 () Bool)

(declare-fun e!1593403 () Bool)

(declare-fun e!1593406 () Bool)

(assert (=> b!2514902 (= e!1593403 e!1593406)))

(declare-fun res!1063095 () Bool)

(assert (=> b!2514902 (=> (not res!1063095) (not e!1593406))))

(assert (=> b!2514902 (= res!1063095 (not lt!898638))))

(declare-fun b!2514903 () Bool)

(assert (=> b!2514903 (= e!1593405 (not lt!898638))))

(declare-fun b!2514904 () Bool)

(declare-fun res!1063091 () Bool)

(assert (=> b!2514904 (=> res!1063091 e!1593403)))

(assert (=> b!2514904 (= res!1063091 e!1593402)))

(declare-fun res!1063093 () Bool)

(assert (=> b!2514904 (=> (not res!1063093) (not e!1593402))))

(assert (=> b!2514904 (= res!1063093 lt!898638)))

(declare-fun b!2514905 () Bool)

(declare-fun res!1063089 () Bool)

(assert (=> b!2514905 (=> (not res!1063089) (not e!1593402))))

(assert (=> b!2514905 (= res!1063089 (isEmpty!16911 (tail!4020 tl!4068)))))

(declare-fun b!2514906 () Bool)

(declare-fun res!1063090 () Bool)

(assert (=> b!2514906 (=> (not res!1063090) (not e!1593402))))

(assert (=> b!2514906 (= res!1063090 (not call!156235))))

(declare-fun b!2514907 () Bool)

(declare-fun res!1063094 () Bool)

(assert (=> b!2514907 (=> res!1063094 e!1593403)))

(assert (=> b!2514907 (= res!1063094 (not (is-ElementMatch!7478 lt!898577)))))

(assert (=> b!2514907 (= e!1593405 e!1593403)))

(declare-fun b!2514908 () Bool)

(declare-fun e!1593401 () Bool)

(assert (=> b!2514908 (= e!1593401 (not (= (head!5743 tl!4068) (c!400758 lt!898577))))))

(declare-fun d!717205 () Bool)

(assert (=> d!717205 e!1593400))

(declare-fun c!400827 () Bool)

(assert (=> d!717205 (= c!400827 (is-EmptyExpr!7478 lt!898577))))

(assert (=> d!717205 (= lt!898638 e!1593404)))

(declare-fun c!400826 () Bool)

(assert (=> d!717205 (= c!400826 (isEmpty!16911 tl!4068))))

(assert (=> d!717205 (validRegex!3104 lt!898577)))

(assert (=> d!717205 (= (matchR!3477 lt!898577 tl!4068) lt!898638)))

(declare-fun b!2514909 () Bool)

(assert (=> b!2514909 (= e!1593404 (matchR!3477 (derivativeStep!2047 lt!898577 (head!5743 tl!4068)) (tail!4020 tl!4068)))))

(declare-fun b!2514910 () Bool)

(assert (=> b!2514910 (= e!1593406 e!1593401)))

(declare-fun res!1063088 () Bool)

(assert (=> b!2514910 (=> res!1063088 e!1593401)))

(assert (=> b!2514910 (= res!1063088 call!156235)))

(declare-fun bm!156230 () Bool)

(assert (=> bm!156230 (= call!156235 (isEmpty!16911 tl!4068))))

(declare-fun b!2514911 () Bool)

(declare-fun res!1063092 () Bool)

(assert (=> b!2514911 (=> res!1063092 e!1593401)))

(assert (=> b!2514911 (= res!1063092 (not (isEmpty!16911 (tail!4020 tl!4068))))))

(assert (= (and d!717205 c!400826) b!2514900))

(assert (= (and d!717205 (not c!400826)) b!2514909))

(assert (= (and d!717205 c!400827) b!2514898))

(assert (= (and d!717205 (not c!400827)) b!2514901))

(assert (= (and b!2514901 c!400828) b!2514903))

(assert (= (and b!2514901 (not c!400828)) b!2514907))

(assert (= (and b!2514907 (not res!1063094)) b!2514904))

(assert (= (and b!2514904 res!1063093) b!2514906))

(assert (= (and b!2514906 res!1063090) b!2514905))

(assert (= (and b!2514905 res!1063089) b!2514899))

(assert (= (and b!2514904 (not res!1063091)) b!2514902))

(assert (= (and b!2514902 res!1063095) b!2514910))

(assert (= (and b!2514910 (not res!1063088)) b!2514911))

(assert (= (and b!2514911 (not res!1063092)) b!2514908))

(assert (= (or b!2514898 b!2514910 b!2514906) bm!156230))

(declare-fun m!2872283 () Bool)

(assert (=> b!2514905 m!2872283))

(assert (=> b!2514905 m!2872283))

(declare-fun m!2872285 () Bool)

(assert (=> b!2514905 m!2872285))

(declare-fun m!2872287 () Bool)

(assert (=> bm!156230 m!2872287))

(assert (=> d!717205 m!2872287))

(declare-fun m!2872289 () Bool)

(assert (=> d!717205 m!2872289))

(declare-fun m!2872291 () Bool)

(assert (=> b!2514899 m!2872291))

(assert (=> b!2514909 m!2872291))

(assert (=> b!2514909 m!2872291))

(declare-fun m!2872293 () Bool)

(assert (=> b!2514909 m!2872293))

(assert (=> b!2514909 m!2872283))

(assert (=> b!2514909 m!2872293))

(assert (=> b!2514909 m!2872283))

(declare-fun m!2872295 () Bool)

(assert (=> b!2514909 m!2872295))

(assert (=> b!2514911 m!2872283))

(assert (=> b!2514911 m!2872283))

(assert (=> b!2514911 m!2872285))

(assert (=> b!2514908 m!2872291))

(declare-fun m!2872301 () Bool)

(assert (=> b!2514900 m!2872301))

(assert (=> b!2514626 d!717205))

(declare-fun d!717209 () Bool)

(declare-fun lt!898640 () Regex!7478)

(assert (=> d!717209 (validRegex!3104 lt!898640)))

(declare-fun e!1593408 () Regex!7478)

(assert (=> d!717209 (= lt!898640 e!1593408)))

(declare-fun c!400830 () Bool)

(assert (=> d!717209 (= c!400830 (is-Cons!29443 tl!4068))))

(assert (=> d!717209 (validRegex!3104 lt!898577)))

(assert (=> d!717209 (= (derivative!173 lt!898577 tl!4068) lt!898640)))

(declare-fun b!2514914 () Bool)

(assert (=> b!2514914 (= e!1593408 (derivative!173 (derivativeStep!2047 lt!898577 (h!34863 tl!4068)) (t!211242 tl!4068)))))

(declare-fun b!2514915 () Bool)

(assert (=> b!2514915 (= e!1593408 lt!898577)))

(assert (= (and d!717209 c!400830) b!2514914))

(assert (= (and d!717209 (not c!400830)) b!2514915))

(declare-fun m!2872305 () Bool)

(assert (=> d!717209 m!2872305))

(assert (=> d!717209 m!2872289))

(declare-fun m!2872307 () Bool)

(assert (=> b!2514914 m!2872307))

(assert (=> b!2514914 m!2872307))

(declare-fun m!2872309 () Bool)

(assert (=> b!2514914 m!2872309))

(assert (=> b!2514626 d!717209))

(declare-fun d!717213 () Bool)

(assert (=> d!717213 (= (matchR!3477 lt!898577 tl!4068) (matchR!3477 (derivative!173 lt!898577 tl!4068) Nil!29443))))

(declare-fun lt!898647 () Unit!43205)

(declare-fun choose!14909 (Regex!7478 List!29543) Unit!43205)

(assert (=> d!717213 (= lt!898647 (choose!14909 lt!898577 tl!4068))))

(assert (=> d!717213 (validRegex!3104 lt!898577)))

(assert (=> d!717213 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!123 lt!898577 tl!4068) lt!898647)))

(declare-fun bs!468867 () Bool)

(assert (= bs!468867 d!717213))

(assert (=> bs!468867 m!2872091))

(declare-fun m!2872313 () Bool)

(assert (=> bs!468867 m!2872313))

(assert (=> bs!468867 m!2872289))

(assert (=> bs!468867 m!2872089))

(assert (=> bs!468867 m!2872095))

(assert (=> bs!468867 m!2872089))

(assert (=> b!2514626 d!717213))

(declare-fun b!2514930 () Bool)

(declare-fun e!1593416 () Bool)

(declare-fun lt!898648 () Bool)

(declare-fun call!156237 () Bool)

(assert (=> b!2514930 (= e!1593416 (= lt!898648 call!156237))))

(declare-fun b!2514931 () Bool)

(declare-fun e!1593418 () Bool)

(assert (=> b!2514931 (= e!1593418 (= (head!5743 tl!4068) (c!400758 lt!898574)))))

(declare-fun b!2514932 () Bool)

(declare-fun e!1593420 () Bool)

(assert (=> b!2514932 (= e!1593420 (nullable!2395 lt!898574))))

(declare-fun b!2514933 () Bool)

(declare-fun e!1593421 () Bool)

(assert (=> b!2514933 (= e!1593416 e!1593421)))

(declare-fun c!400836 () Bool)

(assert (=> b!2514933 (= c!400836 (is-EmptyLang!7478 lt!898574))))

(declare-fun b!2514934 () Bool)

(declare-fun e!1593419 () Bool)

(declare-fun e!1593422 () Bool)

(assert (=> b!2514934 (= e!1593419 e!1593422)))

(declare-fun res!1063111 () Bool)

(assert (=> b!2514934 (=> (not res!1063111) (not e!1593422))))

(assert (=> b!2514934 (= res!1063111 (not lt!898648))))

(declare-fun b!2514935 () Bool)

(assert (=> b!2514935 (= e!1593421 (not lt!898648))))

(declare-fun b!2514936 () Bool)

(declare-fun res!1063107 () Bool)

(assert (=> b!2514936 (=> res!1063107 e!1593419)))

(assert (=> b!2514936 (= res!1063107 e!1593418)))

(declare-fun res!1063109 () Bool)

(assert (=> b!2514936 (=> (not res!1063109) (not e!1593418))))

(assert (=> b!2514936 (= res!1063109 lt!898648)))

(declare-fun b!2514937 () Bool)

(declare-fun res!1063105 () Bool)

(assert (=> b!2514937 (=> (not res!1063105) (not e!1593418))))

(assert (=> b!2514937 (= res!1063105 (isEmpty!16911 (tail!4020 tl!4068)))))

(declare-fun b!2514938 () Bool)

(declare-fun res!1063106 () Bool)

(assert (=> b!2514938 (=> (not res!1063106) (not e!1593418))))

(assert (=> b!2514938 (= res!1063106 (not call!156237))))

(declare-fun b!2514939 () Bool)

(declare-fun res!1063110 () Bool)

(assert (=> b!2514939 (=> res!1063110 e!1593419)))

(assert (=> b!2514939 (= res!1063110 (not (is-ElementMatch!7478 lt!898574)))))

(assert (=> b!2514939 (= e!1593421 e!1593419)))

(declare-fun b!2514940 () Bool)

(declare-fun e!1593417 () Bool)

(assert (=> b!2514940 (= e!1593417 (not (= (head!5743 tl!4068) (c!400758 lt!898574))))))

(declare-fun d!717217 () Bool)

(assert (=> d!717217 e!1593416))

(declare-fun c!400835 () Bool)

(assert (=> d!717217 (= c!400835 (is-EmptyExpr!7478 lt!898574))))

(assert (=> d!717217 (= lt!898648 e!1593420)))

(declare-fun c!400834 () Bool)

(assert (=> d!717217 (= c!400834 (isEmpty!16911 tl!4068))))

(assert (=> d!717217 (validRegex!3104 lt!898574)))

(assert (=> d!717217 (= (matchR!3477 lt!898574 tl!4068) lt!898648)))

(declare-fun b!2514941 () Bool)

(assert (=> b!2514941 (= e!1593420 (matchR!3477 (derivativeStep!2047 lt!898574 (head!5743 tl!4068)) (tail!4020 tl!4068)))))

(declare-fun b!2514942 () Bool)

(assert (=> b!2514942 (= e!1593422 e!1593417)))

(declare-fun res!1063104 () Bool)

(assert (=> b!2514942 (=> res!1063104 e!1593417)))

(assert (=> b!2514942 (= res!1063104 call!156237)))

(declare-fun bm!156232 () Bool)

(assert (=> bm!156232 (= call!156237 (isEmpty!16911 tl!4068))))

(declare-fun b!2514943 () Bool)

(declare-fun res!1063108 () Bool)

(assert (=> b!2514943 (=> res!1063108 e!1593417)))

(assert (=> b!2514943 (= res!1063108 (not (isEmpty!16911 (tail!4020 tl!4068))))))

(assert (= (and d!717217 c!400834) b!2514932))

(assert (= (and d!717217 (not c!400834)) b!2514941))

(assert (= (and d!717217 c!400835) b!2514930))

(assert (= (and d!717217 (not c!400835)) b!2514933))

(assert (= (and b!2514933 c!400836) b!2514935))

(assert (= (and b!2514933 (not c!400836)) b!2514939))

(assert (= (and b!2514939 (not res!1063110)) b!2514936))

(assert (= (and b!2514936 res!1063109) b!2514938))

(assert (= (and b!2514938 res!1063106) b!2514937))

(assert (= (and b!2514937 res!1063105) b!2514931))

(assert (= (and b!2514936 (not res!1063107)) b!2514934))

(assert (= (and b!2514934 res!1063111) b!2514942))

(assert (= (and b!2514942 (not res!1063104)) b!2514943))

(assert (= (and b!2514943 (not res!1063108)) b!2514940))

(assert (= (or b!2514930 b!2514942 b!2514938) bm!156232))

(assert (=> b!2514937 m!2872283))

(assert (=> b!2514937 m!2872283))

(assert (=> b!2514937 m!2872285))

(assert (=> bm!156232 m!2872287))

(assert (=> d!717217 m!2872287))

(assert (=> d!717217 m!2872241))

(assert (=> b!2514931 m!2872291))

(assert (=> b!2514941 m!2872291))

(assert (=> b!2514941 m!2872291))

(declare-fun m!2872321 () Bool)

(assert (=> b!2514941 m!2872321))

(assert (=> b!2514941 m!2872283))

(assert (=> b!2514941 m!2872321))

(assert (=> b!2514941 m!2872283))

(declare-fun m!2872325 () Bool)

(assert (=> b!2514941 m!2872325))

(assert (=> b!2514943 m!2872283))

(assert (=> b!2514943 m!2872283))

(assert (=> b!2514943 m!2872285))

(assert (=> b!2514940 m!2872291))

(declare-fun m!2872327 () Bool)

(assert (=> b!2514932 m!2872327))

(assert (=> b!2514626 d!717217))

(declare-fun b!2514944 () Bool)

(declare-fun e!1593423 () Bool)

(declare-fun lt!898649 () Bool)

(declare-fun call!156238 () Bool)

(assert (=> b!2514944 (= e!1593423 (= lt!898649 call!156238))))

(declare-fun b!2514945 () Bool)

(declare-fun e!1593425 () Bool)

(assert (=> b!2514945 (= e!1593425 (= (head!5743 (_1!17285 lt!898573)) (c!400758 lt!898572)))))

(declare-fun b!2514946 () Bool)

(declare-fun e!1593427 () Bool)

(assert (=> b!2514946 (= e!1593427 (nullable!2395 lt!898572))))

(declare-fun b!2514947 () Bool)

(declare-fun e!1593428 () Bool)

(assert (=> b!2514947 (= e!1593423 e!1593428)))

(declare-fun c!400839 () Bool)

(assert (=> b!2514947 (= c!400839 (is-EmptyLang!7478 lt!898572))))

(declare-fun b!2514948 () Bool)

(declare-fun e!1593426 () Bool)

(declare-fun e!1593429 () Bool)

(assert (=> b!2514948 (= e!1593426 e!1593429)))

(declare-fun res!1063119 () Bool)

(assert (=> b!2514948 (=> (not res!1063119) (not e!1593429))))

(assert (=> b!2514948 (= res!1063119 (not lt!898649))))

(declare-fun b!2514949 () Bool)

(assert (=> b!2514949 (= e!1593428 (not lt!898649))))

(declare-fun b!2514950 () Bool)

(declare-fun res!1063115 () Bool)

(assert (=> b!2514950 (=> res!1063115 e!1593426)))

(assert (=> b!2514950 (= res!1063115 e!1593425)))

(declare-fun res!1063117 () Bool)

(assert (=> b!2514950 (=> (not res!1063117) (not e!1593425))))

(assert (=> b!2514950 (= res!1063117 lt!898649)))

(declare-fun b!2514951 () Bool)

(declare-fun res!1063113 () Bool)

(assert (=> b!2514951 (=> (not res!1063113) (not e!1593425))))

(assert (=> b!2514951 (= res!1063113 (isEmpty!16911 (tail!4020 (_1!17285 lt!898573))))))

(declare-fun b!2514952 () Bool)

(declare-fun res!1063114 () Bool)

(assert (=> b!2514952 (=> (not res!1063114) (not e!1593425))))

(assert (=> b!2514952 (= res!1063114 (not call!156238))))

(declare-fun b!2514953 () Bool)

(declare-fun res!1063118 () Bool)

(assert (=> b!2514953 (=> res!1063118 e!1593426)))

(assert (=> b!2514953 (= res!1063118 (not (is-ElementMatch!7478 lt!898572)))))

(assert (=> b!2514953 (= e!1593428 e!1593426)))

(declare-fun b!2514954 () Bool)

(declare-fun e!1593424 () Bool)

(assert (=> b!2514954 (= e!1593424 (not (= (head!5743 (_1!17285 lt!898573)) (c!400758 lt!898572))))))

(declare-fun d!717221 () Bool)

(assert (=> d!717221 e!1593423))

(declare-fun c!400838 () Bool)

(assert (=> d!717221 (= c!400838 (is-EmptyExpr!7478 lt!898572))))

(assert (=> d!717221 (= lt!898649 e!1593427)))

(declare-fun c!400837 () Bool)

(assert (=> d!717221 (= c!400837 (isEmpty!16911 (_1!17285 lt!898573)))))

(assert (=> d!717221 (validRegex!3104 lt!898572)))

(assert (=> d!717221 (= (matchR!3477 lt!898572 (_1!17285 lt!898573)) lt!898649)))

(declare-fun b!2514955 () Bool)

(assert (=> b!2514955 (= e!1593427 (matchR!3477 (derivativeStep!2047 lt!898572 (head!5743 (_1!17285 lt!898573))) (tail!4020 (_1!17285 lt!898573))))))

(declare-fun b!2514956 () Bool)

(assert (=> b!2514956 (= e!1593429 e!1593424)))

(declare-fun res!1063112 () Bool)

(assert (=> b!2514956 (=> res!1063112 e!1593424)))

(assert (=> b!2514956 (= res!1063112 call!156238)))

(declare-fun bm!156233 () Bool)

(assert (=> bm!156233 (= call!156238 (isEmpty!16911 (_1!17285 lt!898573)))))

(declare-fun b!2514957 () Bool)

(declare-fun res!1063116 () Bool)

(assert (=> b!2514957 (=> res!1063116 e!1593424)))

(assert (=> b!2514957 (= res!1063116 (not (isEmpty!16911 (tail!4020 (_1!17285 lt!898573)))))))

(assert (= (and d!717221 c!400837) b!2514946))

(assert (= (and d!717221 (not c!400837)) b!2514955))

(assert (= (and d!717221 c!400838) b!2514944))

(assert (= (and d!717221 (not c!400838)) b!2514947))

(assert (= (and b!2514947 c!400839) b!2514949))

(assert (= (and b!2514947 (not c!400839)) b!2514953))

(assert (= (and b!2514953 (not res!1063118)) b!2514950))

(assert (= (and b!2514950 res!1063117) b!2514952))

(assert (= (and b!2514952 res!1063114) b!2514951))

(assert (= (and b!2514951 res!1063113) b!2514945))

(assert (= (and b!2514950 (not res!1063115)) b!2514948))

(assert (= (and b!2514948 res!1063119) b!2514956))

(assert (= (and b!2514956 (not res!1063112)) b!2514957))

(assert (= (and b!2514957 (not res!1063116)) b!2514954))

(assert (= (or b!2514944 b!2514956 b!2514952) bm!156233))

(declare-fun m!2872329 () Bool)

(assert (=> b!2514951 m!2872329))

(assert (=> b!2514951 m!2872329))

(declare-fun m!2872331 () Bool)

(assert (=> b!2514951 m!2872331))

(declare-fun m!2872333 () Bool)

(assert (=> bm!156233 m!2872333))

(assert (=> d!717221 m!2872333))

(declare-fun m!2872335 () Bool)

(assert (=> d!717221 m!2872335))

(declare-fun m!2872337 () Bool)

(assert (=> b!2514945 m!2872337))

(assert (=> b!2514955 m!2872337))

(assert (=> b!2514955 m!2872337))

(declare-fun m!2872339 () Bool)

(assert (=> b!2514955 m!2872339))

(assert (=> b!2514955 m!2872329))

(assert (=> b!2514955 m!2872339))

(assert (=> b!2514955 m!2872329))

(declare-fun m!2872341 () Bool)

(assert (=> b!2514955 m!2872341))

(assert (=> b!2514957 m!2872329))

(assert (=> b!2514957 m!2872329))

(assert (=> b!2514957 m!2872331))

(assert (=> b!2514954 m!2872337))

(declare-fun m!2872343 () Bool)

(assert (=> b!2514946 m!2872343))

(assert (=> b!2514636 d!717221))

(declare-fun b!2514958 () Bool)

(declare-fun e!1593430 () Bool)

(declare-fun lt!898650 () Bool)

(declare-fun call!156239 () Bool)

(assert (=> b!2514958 (= e!1593430 (= lt!898650 call!156239))))

(declare-fun b!2514959 () Bool)

(declare-fun e!1593432 () Bool)

(assert (=> b!2514959 (= e!1593432 (= (head!5743 tl!4068) (c!400758 EmptyLang!7478)))))

(declare-fun b!2514960 () Bool)

(declare-fun e!1593434 () Bool)

(assert (=> b!2514960 (= e!1593434 (nullable!2395 EmptyLang!7478))))

(declare-fun b!2514961 () Bool)

(declare-fun e!1593435 () Bool)

(assert (=> b!2514961 (= e!1593430 e!1593435)))

(declare-fun c!400842 () Bool)

(assert (=> b!2514961 (= c!400842 (is-EmptyLang!7478 EmptyLang!7478))))

(declare-fun b!2514962 () Bool)

(declare-fun e!1593433 () Bool)

(declare-fun e!1593436 () Bool)

(assert (=> b!2514962 (= e!1593433 e!1593436)))

(declare-fun res!1063127 () Bool)

(assert (=> b!2514962 (=> (not res!1063127) (not e!1593436))))

(assert (=> b!2514962 (= res!1063127 (not lt!898650))))

(declare-fun b!2514963 () Bool)

(assert (=> b!2514963 (= e!1593435 (not lt!898650))))

(declare-fun b!2514964 () Bool)

(declare-fun res!1063123 () Bool)

(assert (=> b!2514964 (=> res!1063123 e!1593433)))

(assert (=> b!2514964 (= res!1063123 e!1593432)))

(declare-fun res!1063125 () Bool)

(assert (=> b!2514964 (=> (not res!1063125) (not e!1593432))))

(assert (=> b!2514964 (= res!1063125 lt!898650)))

(declare-fun b!2514965 () Bool)

(declare-fun res!1063121 () Bool)

(assert (=> b!2514965 (=> (not res!1063121) (not e!1593432))))

(assert (=> b!2514965 (= res!1063121 (isEmpty!16911 (tail!4020 tl!4068)))))

(declare-fun b!2514966 () Bool)

(declare-fun res!1063122 () Bool)

(assert (=> b!2514966 (=> (not res!1063122) (not e!1593432))))

(assert (=> b!2514966 (= res!1063122 (not call!156239))))

(declare-fun b!2514967 () Bool)

(declare-fun res!1063126 () Bool)

(assert (=> b!2514967 (=> res!1063126 e!1593433)))

(assert (=> b!2514967 (= res!1063126 (not (is-ElementMatch!7478 EmptyLang!7478)))))

(assert (=> b!2514967 (= e!1593435 e!1593433)))

(declare-fun b!2514968 () Bool)

(declare-fun e!1593431 () Bool)

(assert (=> b!2514968 (= e!1593431 (not (= (head!5743 tl!4068) (c!400758 EmptyLang!7478))))))

(declare-fun d!717223 () Bool)

(assert (=> d!717223 e!1593430))

(declare-fun c!400841 () Bool)

(assert (=> d!717223 (= c!400841 (is-EmptyExpr!7478 EmptyLang!7478))))

(assert (=> d!717223 (= lt!898650 e!1593434)))

(declare-fun c!400840 () Bool)

(assert (=> d!717223 (= c!400840 (isEmpty!16911 tl!4068))))

(assert (=> d!717223 (validRegex!3104 EmptyLang!7478)))

(assert (=> d!717223 (= (matchR!3477 EmptyLang!7478 tl!4068) lt!898650)))

(declare-fun b!2514969 () Bool)

(assert (=> b!2514969 (= e!1593434 (matchR!3477 (derivativeStep!2047 EmptyLang!7478 (head!5743 tl!4068)) (tail!4020 tl!4068)))))

(declare-fun b!2514970 () Bool)

(assert (=> b!2514970 (= e!1593436 e!1593431)))

(declare-fun res!1063120 () Bool)

(assert (=> b!2514970 (=> res!1063120 e!1593431)))

(assert (=> b!2514970 (= res!1063120 call!156239)))

(declare-fun bm!156234 () Bool)

(assert (=> bm!156234 (= call!156239 (isEmpty!16911 tl!4068))))

(declare-fun b!2514971 () Bool)

(declare-fun res!1063124 () Bool)

(assert (=> b!2514971 (=> res!1063124 e!1593431)))

(assert (=> b!2514971 (= res!1063124 (not (isEmpty!16911 (tail!4020 tl!4068))))))

(assert (= (and d!717223 c!400840) b!2514960))

(assert (= (and d!717223 (not c!400840)) b!2514969))

(assert (= (and d!717223 c!400841) b!2514958))

(assert (= (and d!717223 (not c!400841)) b!2514961))

(assert (= (and b!2514961 c!400842) b!2514963))

(assert (= (and b!2514961 (not c!400842)) b!2514967))

(assert (= (and b!2514967 (not res!1063126)) b!2514964))

(assert (= (and b!2514964 res!1063125) b!2514966))

(assert (= (and b!2514966 res!1063122) b!2514965))

(assert (= (and b!2514965 res!1063121) b!2514959))

(assert (= (and b!2514964 (not res!1063123)) b!2514962))

(assert (= (and b!2514962 res!1063127) b!2514970))

(assert (= (and b!2514970 (not res!1063120)) b!2514971))

(assert (= (and b!2514971 (not res!1063124)) b!2514968))

(assert (= (or b!2514958 b!2514970 b!2514966) bm!156234))

(assert (=> b!2514965 m!2872283))

(assert (=> b!2514965 m!2872283))

(assert (=> b!2514965 m!2872285))

(assert (=> bm!156234 m!2872287))

(assert (=> d!717223 m!2872287))

(assert (=> d!717223 m!2872205))

(assert (=> b!2514959 m!2872291))

(assert (=> b!2514969 m!2872291))

(assert (=> b!2514969 m!2872291))

(declare-fun m!2872345 () Bool)

(assert (=> b!2514969 m!2872345))

(assert (=> b!2514969 m!2872283))

(assert (=> b!2514969 m!2872345))

(assert (=> b!2514969 m!2872283))

(declare-fun m!2872347 () Bool)

(assert (=> b!2514969 m!2872347))

(assert (=> b!2514971 m!2872283))

(assert (=> b!2514971 m!2872283))

(assert (=> b!2514971 m!2872285))

(assert (=> b!2514968 m!2872291))

(declare-fun m!2872349 () Bool)

(assert (=> b!2514960 m!2872349))

(assert (=> b!2514630 d!717223))

(declare-fun d!717225 () Bool)

(declare-fun nullableFct!641 (Regex!7478) Bool)

(assert (=> d!717225 (= (nullable!2395 (derivative!173 (derivativeStep!2047 r!27340 c!14016) tl!4068)) (nullableFct!641 (derivative!173 (derivativeStep!2047 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468868 () Bool)

(assert (= bs!468868 d!717225))

(assert (=> bs!468868 m!2872119))

(declare-fun m!2872351 () Bool)

(assert (=> bs!468868 m!2872351))

(assert (=> b!2514635 d!717225))

(declare-fun d!717227 () Bool)

(declare-fun lt!898653 () Regex!7478)

(assert (=> d!717227 (validRegex!3104 lt!898653)))

(declare-fun e!1593441 () Regex!7478)

(assert (=> d!717227 (= lt!898653 e!1593441)))

(declare-fun c!400843 () Bool)

(assert (=> d!717227 (= c!400843 (is-Cons!29443 tl!4068))))

(assert (=> d!717227 (validRegex!3104 (derivativeStep!2047 r!27340 c!14016))))

(assert (=> d!717227 (= (derivative!173 (derivativeStep!2047 r!27340 c!14016) tl!4068) lt!898653)))

(declare-fun b!2514976 () Bool)

(assert (=> b!2514976 (= e!1593441 (derivative!173 (derivativeStep!2047 (derivativeStep!2047 r!27340 c!14016) (h!34863 tl!4068)) (t!211242 tl!4068)))))

(declare-fun b!2514977 () Bool)

(assert (=> b!2514977 (= e!1593441 (derivativeStep!2047 r!27340 c!14016))))

(assert (= (and d!717227 c!400843) b!2514976))

(assert (= (and d!717227 (not c!400843)) b!2514977))

(declare-fun m!2872353 () Bool)

(assert (=> d!717227 m!2872353))

(assert (=> d!717227 m!2872117))

(declare-fun m!2872355 () Bool)

(assert (=> d!717227 m!2872355))

(assert (=> b!2514976 m!2872117))

(declare-fun m!2872357 () Bool)

(assert (=> b!2514976 m!2872357))

(assert (=> b!2514976 m!2872357))

(declare-fun m!2872359 () Bool)

(assert (=> b!2514976 m!2872359))

(assert (=> b!2514635 d!717227))

(declare-fun d!717229 () Bool)

(declare-fun lt!898654 () Regex!7478)

(assert (=> d!717229 (validRegex!3104 lt!898654)))

(declare-fun e!1593446 () Regex!7478)

(assert (=> d!717229 (= lt!898654 e!1593446)))

(declare-fun c!400845 () Bool)

(assert (=> d!717229 (= c!400845 (or (is-EmptyExpr!7478 r!27340) (is-EmptyLang!7478 r!27340)))))

(assert (=> d!717229 (validRegex!3104 r!27340)))

(assert (=> d!717229 (= (derivativeStep!2047 r!27340 c!14016) lt!898654)))

(declare-fun b!2514978 () Bool)

(assert (=> b!2514978 (= e!1593446 EmptyLang!7478)))

(declare-fun b!2514979 () Bool)

(declare-fun e!1593445 () Regex!7478)

(declare-fun call!156242 () Regex!7478)

(assert (=> b!2514979 (= e!1593445 (Union!7478 (Concat!12174 call!156242 (regTwo!15468 r!27340)) EmptyLang!7478))))

(declare-fun b!2514980 () Bool)

(declare-fun e!1593443 () Regex!7478)

(declare-fun call!156240 () Regex!7478)

(declare-fun call!156243 () Regex!7478)

(assert (=> b!2514980 (= e!1593443 (Union!7478 call!156240 call!156243))))

(declare-fun c!400847 () Bool)

(declare-fun bm!156235 () Bool)

(assert (=> bm!156235 (= call!156240 (derivativeStep!2047 (ite c!400847 (regOne!15469 r!27340) (regTwo!15468 r!27340)) c!14016))))

(declare-fun b!2514981 () Bool)

(declare-fun e!1593444 () Regex!7478)

(declare-fun call!156241 () Regex!7478)

(assert (=> b!2514981 (= e!1593444 (Concat!12174 call!156241 r!27340))))

(declare-fun b!2514982 () Bool)

(assert (=> b!2514982 (= e!1593445 (Union!7478 (Concat!12174 call!156242 (regTwo!15468 r!27340)) call!156240))))

(declare-fun bm!156236 () Bool)

(assert (=> bm!156236 (= call!156241 call!156243)))

(declare-fun c!400846 () Bool)

(declare-fun bm!156237 () Bool)

(assert (=> bm!156237 (= call!156243 (derivativeStep!2047 (ite c!400847 (regTwo!15469 r!27340) (ite c!400846 (reg!7807 r!27340) (regOne!15468 r!27340))) c!14016))))

(declare-fun b!2514983 () Bool)

(declare-fun e!1593442 () Regex!7478)

(assert (=> b!2514983 (= e!1593442 (ite (= c!14016 (c!400758 r!27340)) EmptyExpr!7478 EmptyLang!7478))))

(declare-fun b!2514984 () Bool)

(assert (=> b!2514984 (= c!400847 (is-Union!7478 r!27340))))

(assert (=> b!2514984 (= e!1593442 e!1593443)))

(declare-fun b!2514985 () Bool)

(assert (=> b!2514985 (= e!1593443 e!1593444)))

(assert (=> b!2514985 (= c!400846 (is-Star!7478 r!27340))))

(declare-fun b!2514986 () Bool)

(declare-fun c!400844 () Bool)

(assert (=> b!2514986 (= c!400844 (nullable!2395 (regOne!15468 r!27340)))))

(assert (=> b!2514986 (= e!1593444 e!1593445)))

(declare-fun bm!156238 () Bool)

(assert (=> bm!156238 (= call!156242 call!156241)))

(declare-fun b!2514987 () Bool)

(assert (=> b!2514987 (= e!1593446 e!1593442)))

(declare-fun c!400848 () Bool)

(assert (=> b!2514987 (= c!400848 (is-ElementMatch!7478 r!27340))))

(assert (= (and d!717229 c!400845) b!2514978))

(assert (= (and d!717229 (not c!400845)) b!2514987))

(assert (= (and b!2514987 c!400848) b!2514983))

(assert (= (and b!2514987 (not c!400848)) b!2514984))

(assert (= (and b!2514984 c!400847) b!2514980))

(assert (= (and b!2514984 (not c!400847)) b!2514985))

(assert (= (and b!2514985 c!400846) b!2514981))

(assert (= (and b!2514985 (not c!400846)) b!2514986))

(assert (= (and b!2514986 c!400844) b!2514982))

(assert (= (and b!2514986 (not c!400844)) b!2514979))

(assert (= (or b!2514982 b!2514979) bm!156238))

(assert (= (or b!2514981 bm!156238) bm!156236))

(assert (= (or b!2514980 bm!156236) bm!156237))

(assert (= (or b!2514980 b!2514982) bm!156235))

(declare-fun m!2872361 () Bool)

(assert (=> d!717229 m!2872361))

(assert (=> d!717229 m!2872085))

(declare-fun m!2872363 () Bool)

(assert (=> bm!156235 m!2872363))

(declare-fun m!2872365 () Bool)

(assert (=> bm!156237 m!2872365))

(assert (=> b!2514986 m!2872087))

(assert (=> b!2514635 d!717229))

(declare-fun bm!156239 () Bool)

(declare-fun call!156245 () Bool)

(declare-fun c!400849 () Bool)

(assert (=> bm!156239 (= call!156245 (validRegex!3104 (ite c!400849 (regTwo!15469 r!27340) (regOne!15468 r!27340))))))

(declare-fun b!2514990 () Bool)

(declare-fun res!1063136 () Bool)

(declare-fun e!1593453 () Bool)

(assert (=> b!2514990 (=> res!1063136 e!1593453)))

(assert (=> b!2514990 (= res!1063136 (not (is-Concat!12174 r!27340)))))

(declare-fun e!1593451 () Bool)

(assert (=> b!2514990 (= e!1593451 e!1593453)))

(declare-fun d!717231 () Bool)

(declare-fun res!1063135 () Bool)

(declare-fun e!1593449 () Bool)

(assert (=> d!717231 (=> res!1063135 e!1593449)))

(assert (=> d!717231 (= res!1063135 (is-ElementMatch!7478 r!27340))))

(assert (=> d!717231 (= (validRegex!3104 r!27340) e!1593449)))

(declare-fun b!2514991 () Bool)

(declare-fun e!1593455 () Bool)

(declare-fun e!1593450 () Bool)

(assert (=> b!2514991 (= e!1593455 e!1593450)))

(declare-fun res!1063138 () Bool)

(assert (=> b!2514991 (= res!1063138 (not (nullable!2395 (reg!7807 r!27340))))))

(assert (=> b!2514991 (=> (not res!1063138) (not e!1593450))))

(declare-fun b!2514992 () Bool)

(assert (=> b!2514992 (= e!1593455 e!1593451)))

(assert (=> b!2514992 (= c!400849 (is-Union!7478 r!27340))))

(declare-fun bm!156240 () Bool)

(declare-fun call!156246 () Bool)

(declare-fun call!156244 () Bool)

(assert (=> bm!156240 (= call!156246 call!156244)))

(declare-fun bm!156241 () Bool)

(declare-fun c!400850 () Bool)

(assert (=> bm!156241 (= call!156244 (validRegex!3104 (ite c!400850 (reg!7807 r!27340) (ite c!400849 (regOne!15469 r!27340) (regTwo!15468 r!27340)))))))

(declare-fun b!2514993 () Bool)

(assert (=> b!2514993 (= e!1593450 call!156244)))

(declare-fun b!2514994 () Bool)

(declare-fun e!1593452 () Bool)

(assert (=> b!2514994 (= e!1593452 call!156246)))

(declare-fun b!2514995 () Bool)

(declare-fun e!1593454 () Bool)

(assert (=> b!2514995 (= e!1593454 call!156245)))

(declare-fun b!2514996 () Bool)

(declare-fun res!1063134 () Bool)

(assert (=> b!2514996 (=> (not res!1063134) (not e!1593454))))

(assert (=> b!2514996 (= res!1063134 call!156246)))

(assert (=> b!2514996 (= e!1593451 e!1593454)))

(declare-fun b!2514997 () Bool)

(assert (=> b!2514997 (= e!1593449 e!1593455)))

(assert (=> b!2514997 (= c!400850 (is-Star!7478 r!27340))))

(declare-fun b!2514998 () Bool)

(assert (=> b!2514998 (= e!1593453 e!1593452)))

(declare-fun res!1063137 () Bool)

(assert (=> b!2514998 (=> (not res!1063137) (not e!1593452))))

(assert (=> b!2514998 (= res!1063137 call!156245)))

(assert (= (and d!717231 (not res!1063135)) b!2514997))

(assert (= (and b!2514997 c!400850) b!2514991))

(assert (= (and b!2514997 (not c!400850)) b!2514992))

(assert (= (and b!2514991 res!1063138) b!2514993))

(assert (= (and b!2514992 c!400849) b!2514996))

(assert (= (and b!2514992 (not c!400849)) b!2514990))

(assert (= (and b!2514996 res!1063134) b!2514995))

(assert (= (and b!2514990 (not res!1063136)) b!2514998))

(assert (= (and b!2514998 res!1063137) b!2514994))

(assert (= (or b!2514996 b!2514994) bm!156240))

(assert (= (or b!2514995 b!2514998) bm!156239))

(assert (= (or b!2514993 bm!156240) bm!156241))

(declare-fun m!2872369 () Bool)

(assert (=> bm!156239 m!2872369))

(declare-fun m!2872371 () Bool)

(assert (=> b!2514991 m!2872371))

(declare-fun m!2872373 () Bool)

(assert (=> bm!156241 m!2872373))

(assert (=> start!245222 d!717231))

(declare-fun d!717233 () Bool)

(declare-fun isEmpty!16913 (Option!5863) Bool)

(assert (=> d!717233 (= (isDefined!4685 lt!898576) (not (isEmpty!16913 lt!898576)))))

(declare-fun bs!468869 () Bool)

(assert (= bs!468869 d!717233))

(declare-fun m!2872375 () Bool)

(assert (=> bs!468869 m!2872375))

(assert (=> b!2514628 d!717233))

(declare-fun b!2515010 () Bool)

(declare-fun e!1593460 () Bool)

(declare-fun lt!898658 () List!29543)

(assert (=> b!2515010 (= e!1593460 (or (not (= (_2!17285 lt!898573) Nil!29443)) (= lt!898658 (_1!17285 lt!898573))))))

(declare-fun d!717237 () Bool)

(assert (=> d!717237 e!1593460))

(declare-fun res!1063143 () Bool)

(assert (=> d!717237 (=> (not res!1063143) (not e!1593460))))

(declare-fun content!4023 (List!29543) (Set C!15114))

(assert (=> d!717237 (= res!1063143 (= (content!4023 lt!898658) (set.union (content!4023 (_1!17285 lt!898573)) (content!4023 (_2!17285 lt!898573)))))))

(declare-fun e!1593461 () List!29543)

(assert (=> d!717237 (= lt!898658 e!1593461)))

(declare-fun c!400853 () Bool)

(assert (=> d!717237 (= c!400853 (is-Nil!29443 (_1!17285 lt!898573)))))

(assert (=> d!717237 (= (++!7212 (_1!17285 lt!898573) (_2!17285 lt!898573)) lt!898658)))

(declare-fun b!2515008 () Bool)

(assert (=> b!2515008 (= e!1593461 (Cons!29443 (h!34863 (_1!17285 lt!898573)) (++!7212 (t!211242 (_1!17285 lt!898573)) (_2!17285 lt!898573))))))

(declare-fun b!2515007 () Bool)

(assert (=> b!2515007 (= e!1593461 (_2!17285 lt!898573))))

(declare-fun b!2515009 () Bool)

(declare-fun res!1063144 () Bool)

(assert (=> b!2515009 (=> (not res!1063144) (not e!1593460))))

(declare-fun size!22907 (List!29543) Int)

(assert (=> b!2515009 (= res!1063144 (= (size!22907 lt!898658) (+ (size!22907 (_1!17285 lt!898573)) (size!22907 (_2!17285 lt!898573)))))))

(assert (= (and d!717237 c!400853) b!2515007))

(assert (= (and d!717237 (not c!400853)) b!2515008))

(assert (= (and d!717237 res!1063143) b!2515009))

(assert (= (and b!2515009 res!1063144) b!2515010))

(declare-fun m!2872377 () Bool)

(assert (=> d!717237 m!2872377))

(declare-fun m!2872379 () Bool)

(assert (=> d!717237 m!2872379))

(declare-fun m!2872381 () Bool)

(assert (=> d!717237 m!2872381))

(declare-fun m!2872383 () Bool)

(assert (=> b!2515008 m!2872383))

(declare-fun m!2872385 () Bool)

(assert (=> b!2515009 m!2872385))

(declare-fun m!2872387 () Bool)

(assert (=> b!2515009 m!2872387))

(declare-fun m!2872389 () Bool)

(assert (=> b!2515009 m!2872389))

(assert (=> b!2514628 d!717237))

(declare-fun b!2515037 () Bool)

(declare-fun res!1063163 () Bool)

(declare-fun e!1593478 () Bool)

(assert (=> b!2515037 (=> (not res!1063163) (not e!1593478))))

(declare-fun lt!898670 () Option!5863)

(assert (=> b!2515037 (= res!1063163 (matchR!3477 lt!898572 (_1!17285 (get!9181 lt!898670))))))

(declare-fun b!2515038 () Bool)

(assert (=> b!2515038 (= e!1593478 (= (++!7212 (_1!17285 (get!9181 lt!898670)) (_2!17285 (get!9181 lt!898670))) tl!4068))))

(declare-fun b!2515039 () Bool)

(declare-fun e!1593480 () Option!5863)

(declare-fun e!1593477 () Option!5863)

(assert (=> b!2515039 (= e!1593480 e!1593477)))

(declare-fun c!400861 () Bool)

(assert (=> b!2515039 (= c!400861 (is-Nil!29443 tl!4068))))

(declare-fun d!717241 () Bool)

(declare-fun e!1593479 () Bool)

(assert (=> d!717241 e!1593479))

(declare-fun res!1063160 () Bool)

(assert (=> d!717241 (=> res!1063160 e!1593479)))

(assert (=> d!717241 (= res!1063160 e!1593478)))

(declare-fun res!1063159 () Bool)

(assert (=> d!717241 (=> (not res!1063159) (not e!1593478))))

(assert (=> d!717241 (= res!1063159 (isDefined!4685 lt!898670))))

(assert (=> d!717241 (= lt!898670 e!1593480)))

(declare-fun c!400860 () Bool)

(declare-fun e!1593476 () Bool)

(assert (=> d!717241 (= c!400860 e!1593476)))

(declare-fun res!1063162 () Bool)

(assert (=> d!717241 (=> (not res!1063162) (not e!1593476))))

(assert (=> d!717241 (= res!1063162 (matchR!3477 lt!898572 Nil!29443))))

(assert (=> d!717241 (validRegex!3104 lt!898572)))

(assert (=> d!717241 (= (findConcatSeparation!885 lt!898572 (regTwo!15468 r!27340) Nil!29443 tl!4068 tl!4068) lt!898670)))

(declare-fun b!2515040 () Bool)

(assert (=> b!2515040 (= e!1593477 None!5862)))

(declare-fun b!2515041 () Bool)

(declare-fun res!1063161 () Bool)

(assert (=> b!2515041 (=> (not res!1063161) (not e!1593478))))

(assert (=> b!2515041 (= res!1063161 (matchR!3477 (regTwo!15468 r!27340) (_2!17285 (get!9181 lt!898670))))))

(declare-fun b!2515042 () Bool)

(assert (=> b!2515042 (= e!1593480 (Some!5862 (tuple2!29487 Nil!29443 tl!4068)))))

(declare-fun b!2515043 () Bool)

(declare-fun lt!898671 () Unit!43205)

(declare-fun lt!898672 () Unit!43205)

(assert (=> b!2515043 (= lt!898671 lt!898672)))

(assert (=> b!2515043 (= (++!7212 (++!7212 Nil!29443 (Cons!29443 (h!34863 tl!4068) Nil!29443)) (t!211242 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!758 (List!29543 C!15114 List!29543 List!29543) Unit!43205)

(assert (=> b!2515043 (= lt!898672 (lemmaMoveElementToOtherListKeepsConcatEq!758 Nil!29443 (h!34863 tl!4068) (t!211242 tl!4068) tl!4068))))

(assert (=> b!2515043 (= e!1593477 (findConcatSeparation!885 lt!898572 (regTwo!15468 r!27340) (++!7212 Nil!29443 (Cons!29443 (h!34863 tl!4068) Nil!29443)) (t!211242 tl!4068) tl!4068))))

(declare-fun b!2515044 () Bool)

(assert (=> b!2515044 (= e!1593479 (not (isDefined!4685 lt!898670)))))

(declare-fun b!2515045 () Bool)

(assert (=> b!2515045 (= e!1593476 (matchR!3477 (regTwo!15468 r!27340) tl!4068))))

(assert (= (and d!717241 res!1063162) b!2515045))

(assert (= (and d!717241 c!400860) b!2515042))

(assert (= (and d!717241 (not c!400860)) b!2515039))

(assert (= (and b!2515039 c!400861) b!2515040))

(assert (= (and b!2515039 (not c!400861)) b!2515043))

(assert (= (and d!717241 res!1063159) b!2515037))

(assert (= (and b!2515037 res!1063163) b!2515041))

(assert (= (and b!2515041 res!1063161) b!2515038))

(assert (= (and d!717241 (not res!1063160)) b!2515044))

(declare-fun m!2872399 () Bool)

(assert (=> b!2515045 m!2872399))

(declare-fun m!2872401 () Bool)

(assert (=> b!2515041 m!2872401))

(declare-fun m!2872403 () Bool)

(assert (=> b!2515041 m!2872403))

(assert (=> b!2515037 m!2872401))

(declare-fun m!2872405 () Bool)

(assert (=> b!2515037 m!2872405))

(declare-fun m!2872407 () Bool)

(assert (=> b!2515044 m!2872407))

(assert (=> d!717241 m!2872407))

(declare-fun m!2872409 () Bool)

(assert (=> d!717241 m!2872409))

(assert (=> d!717241 m!2872335))

(declare-fun m!2872411 () Bool)

(assert (=> b!2515043 m!2872411))

(assert (=> b!2515043 m!2872411))

(declare-fun m!2872413 () Bool)

(assert (=> b!2515043 m!2872413))

(declare-fun m!2872415 () Bool)

(assert (=> b!2515043 m!2872415))

(assert (=> b!2515043 m!2872411))

(declare-fun m!2872417 () Bool)

(assert (=> b!2515043 m!2872417))

(assert (=> b!2515038 m!2872401))

(declare-fun m!2872419 () Bool)

(assert (=> b!2515038 m!2872419))

(assert (=> b!2514628 d!717241))

(declare-fun d!717247 () Bool)

(assert (=> d!717247 (= (get!9181 lt!898576) (v!31793 lt!898576))))

(assert (=> b!2514628 d!717247))

(declare-fun d!717249 () Bool)

(assert (=> d!717249 (isDefined!4685 (findConcatSeparation!885 lt!898572 (regTwo!15468 r!27340) Nil!29443 tl!4068 tl!4068))))

(declare-fun lt!898676 () Unit!43205)

(declare-fun choose!14912 (Regex!7478 Regex!7478 List!29543) Unit!43205)

(assert (=> d!717249 (= lt!898676 (choose!14912 lt!898572 (regTwo!15468 r!27340) tl!4068))))

(assert (=> d!717249 (validRegex!3104 lt!898572)))

(assert (=> d!717249 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!167 lt!898572 (regTwo!15468 r!27340) tl!4068) lt!898676)))

(declare-fun bs!468872 () Bool)

(assert (= bs!468872 d!717249))

(assert (=> bs!468872 m!2872115))

(assert (=> bs!468872 m!2872115))

(declare-fun m!2872435 () Bool)

(assert (=> bs!468872 m!2872435))

(declare-fun m!2872437 () Bool)

(assert (=> bs!468872 m!2872437))

(assert (=> bs!468872 m!2872335))

(assert (=> b!2514628 d!717249))

(declare-fun b!2515050 () Bool)

(declare-fun e!1593483 () Bool)

(declare-fun lt!898677 () Bool)

(declare-fun call!156247 () Bool)

(assert (=> b!2515050 (= e!1593483 (= lt!898677 call!156247))))

(declare-fun b!2515051 () Bool)

(declare-fun e!1593485 () Bool)

(assert (=> b!2515051 (= e!1593485 (= (head!5743 (_2!17285 lt!898573)) (c!400758 (regTwo!15468 r!27340))))))

(declare-fun b!2515052 () Bool)

(declare-fun e!1593487 () Bool)

(assert (=> b!2515052 (= e!1593487 (nullable!2395 (regTwo!15468 r!27340)))))

(declare-fun b!2515053 () Bool)

(declare-fun e!1593488 () Bool)

(assert (=> b!2515053 (= e!1593483 e!1593488)))

(declare-fun c!400865 () Bool)

(assert (=> b!2515053 (= c!400865 (is-EmptyLang!7478 (regTwo!15468 r!27340)))))

(declare-fun b!2515054 () Bool)

(declare-fun e!1593486 () Bool)

(declare-fun e!1593489 () Bool)

(assert (=> b!2515054 (= e!1593486 e!1593489)))

(declare-fun res!1063173 () Bool)

(assert (=> b!2515054 (=> (not res!1063173) (not e!1593489))))

(assert (=> b!2515054 (= res!1063173 (not lt!898677))))

(declare-fun b!2515055 () Bool)

(assert (=> b!2515055 (= e!1593488 (not lt!898677))))

(declare-fun b!2515056 () Bool)

(declare-fun res!1063169 () Bool)

(assert (=> b!2515056 (=> res!1063169 e!1593486)))

(assert (=> b!2515056 (= res!1063169 e!1593485)))

(declare-fun res!1063171 () Bool)

(assert (=> b!2515056 (=> (not res!1063171) (not e!1593485))))

(assert (=> b!2515056 (= res!1063171 lt!898677)))

(declare-fun b!2515057 () Bool)

(declare-fun res!1063167 () Bool)

(assert (=> b!2515057 (=> (not res!1063167) (not e!1593485))))

(assert (=> b!2515057 (= res!1063167 (isEmpty!16911 (tail!4020 (_2!17285 lt!898573))))))

(declare-fun b!2515058 () Bool)

(declare-fun res!1063168 () Bool)

(assert (=> b!2515058 (=> (not res!1063168) (not e!1593485))))

(assert (=> b!2515058 (= res!1063168 (not call!156247))))

(declare-fun b!2515059 () Bool)

(declare-fun res!1063172 () Bool)

(assert (=> b!2515059 (=> res!1063172 e!1593486)))

(assert (=> b!2515059 (= res!1063172 (not (is-ElementMatch!7478 (regTwo!15468 r!27340))))))

(assert (=> b!2515059 (= e!1593488 e!1593486)))

(declare-fun b!2515060 () Bool)

(declare-fun e!1593484 () Bool)

(assert (=> b!2515060 (= e!1593484 (not (= (head!5743 (_2!17285 lt!898573)) (c!400758 (regTwo!15468 r!27340)))))))

(declare-fun d!717253 () Bool)

(assert (=> d!717253 e!1593483))

(declare-fun c!400864 () Bool)

(assert (=> d!717253 (= c!400864 (is-EmptyExpr!7478 (regTwo!15468 r!27340)))))

(assert (=> d!717253 (= lt!898677 e!1593487)))

(declare-fun c!400863 () Bool)

(assert (=> d!717253 (= c!400863 (isEmpty!16911 (_2!17285 lt!898573)))))

(assert (=> d!717253 (validRegex!3104 (regTwo!15468 r!27340))))

(assert (=> d!717253 (= (matchR!3477 (regTwo!15468 r!27340) (_2!17285 lt!898573)) lt!898677)))

(declare-fun b!2515061 () Bool)

(assert (=> b!2515061 (= e!1593487 (matchR!3477 (derivativeStep!2047 (regTwo!15468 r!27340) (head!5743 (_2!17285 lt!898573))) (tail!4020 (_2!17285 lt!898573))))))

(declare-fun b!2515062 () Bool)

(assert (=> b!2515062 (= e!1593489 e!1593484)))

(declare-fun res!1063166 () Bool)

(assert (=> b!2515062 (=> res!1063166 e!1593484)))

(assert (=> b!2515062 (= res!1063166 call!156247)))

(declare-fun bm!156242 () Bool)

(assert (=> bm!156242 (= call!156247 (isEmpty!16911 (_2!17285 lt!898573)))))

(declare-fun b!2515063 () Bool)

(declare-fun res!1063170 () Bool)

(assert (=> b!2515063 (=> res!1063170 e!1593484)))

(assert (=> b!2515063 (= res!1063170 (not (isEmpty!16911 (tail!4020 (_2!17285 lt!898573)))))))

(assert (= (and d!717253 c!400863) b!2515052))

(assert (= (and d!717253 (not c!400863)) b!2515061))

(assert (= (and d!717253 c!400864) b!2515050))

(assert (= (and d!717253 (not c!400864)) b!2515053))

(assert (= (and b!2515053 c!400865) b!2515055))

(assert (= (and b!2515053 (not c!400865)) b!2515059))

(assert (= (and b!2515059 (not res!1063172)) b!2515056))

(assert (= (and b!2515056 res!1063171) b!2515058))

(assert (= (and b!2515058 res!1063168) b!2515057))

(assert (= (and b!2515057 res!1063167) b!2515051))

(assert (= (and b!2515056 (not res!1063169)) b!2515054))

(assert (= (and b!2515054 res!1063173) b!2515062))

(assert (= (and b!2515062 (not res!1063166)) b!2515063))

(assert (= (and b!2515063 (not res!1063170)) b!2515060))

(assert (= (or b!2515050 b!2515062 b!2515058) bm!156242))

(declare-fun m!2872439 () Bool)

(assert (=> b!2515057 m!2872439))

(assert (=> b!2515057 m!2872439))

(declare-fun m!2872441 () Bool)

(assert (=> b!2515057 m!2872441))

(declare-fun m!2872443 () Bool)

(assert (=> bm!156242 m!2872443))

(assert (=> d!717253 m!2872443))

(declare-fun m!2872445 () Bool)

(assert (=> d!717253 m!2872445))

(declare-fun m!2872447 () Bool)

(assert (=> b!2515051 m!2872447))

(assert (=> b!2515061 m!2872447))

(assert (=> b!2515061 m!2872447))

(declare-fun m!2872449 () Bool)

(assert (=> b!2515061 m!2872449))

(assert (=> b!2515061 m!2872439))

(assert (=> b!2515061 m!2872449))

(assert (=> b!2515061 m!2872439))

(declare-fun m!2872451 () Bool)

(assert (=> b!2515061 m!2872451))

(assert (=> b!2515063 m!2872439))

(assert (=> b!2515063 m!2872439))

(assert (=> b!2515063 m!2872441))

(assert (=> b!2515060 m!2872447))

(declare-fun m!2872453 () Bool)

(assert (=> b!2515052 m!2872453))

(assert (=> b!2514633 d!717253))

(declare-fun d!717255 () Bool)

(assert (=> d!717255 (= (nullable!2395 (regOne!15468 r!27340)) (nullableFct!641 (regOne!15468 r!27340)))))

(declare-fun bs!468873 () Bool)

(assert (= bs!468873 d!717255))

(declare-fun m!2872455 () Bool)

(assert (=> bs!468873 m!2872455))

(assert (=> b!2514638 d!717255))

(declare-fun b!2515068 () Bool)

(declare-fun e!1593492 () Bool)

(declare-fun tp!803813 () Bool)

(assert (=> b!2515068 (= e!1593492 (and tp_is_empty!12811 tp!803813))))

(assert (=> b!2514632 (= tp!803789 e!1593492)))

(assert (= (and b!2514632 (is-Cons!29443 (t!211242 tl!4068))) b!2515068))

(declare-fun e!1593495 () Bool)

(assert (=> b!2514631 (= tp!803788 e!1593495)))

(declare-fun b!2515079 () Bool)

(assert (=> b!2515079 (= e!1593495 tp_is_empty!12811)))

(declare-fun b!2515081 () Bool)

(declare-fun tp!803826 () Bool)

(assert (=> b!2515081 (= e!1593495 tp!803826)))

(declare-fun b!2515080 () Bool)

(declare-fun tp!803824 () Bool)

(declare-fun tp!803828 () Bool)

(assert (=> b!2515080 (= e!1593495 (and tp!803824 tp!803828))))

(declare-fun b!2515082 () Bool)

(declare-fun tp!803827 () Bool)

(declare-fun tp!803825 () Bool)

(assert (=> b!2515082 (= e!1593495 (and tp!803827 tp!803825))))

(assert (= (and b!2514631 (is-ElementMatch!7478 (regOne!15468 r!27340))) b!2515079))

(assert (= (and b!2514631 (is-Concat!12174 (regOne!15468 r!27340))) b!2515080))

(assert (= (and b!2514631 (is-Star!7478 (regOne!15468 r!27340))) b!2515081))

(assert (= (and b!2514631 (is-Union!7478 (regOne!15468 r!27340))) b!2515082))

(declare-fun e!1593496 () Bool)

(assert (=> b!2514631 (= tp!803790 e!1593496)))

(declare-fun b!2515083 () Bool)

(assert (=> b!2515083 (= e!1593496 tp_is_empty!12811)))

(declare-fun b!2515085 () Bool)

(declare-fun tp!803831 () Bool)

(assert (=> b!2515085 (= e!1593496 tp!803831)))

(declare-fun b!2515084 () Bool)

(declare-fun tp!803829 () Bool)

(declare-fun tp!803833 () Bool)

(assert (=> b!2515084 (= e!1593496 (and tp!803829 tp!803833))))

(declare-fun b!2515086 () Bool)

(declare-fun tp!803832 () Bool)

(declare-fun tp!803830 () Bool)

(assert (=> b!2515086 (= e!1593496 (and tp!803832 tp!803830))))

(assert (= (and b!2514631 (is-ElementMatch!7478 (regTwo!15468 r!27340))) b!2515083))

(assert (= (and b!2514631 (is-Concat!12174 (regTwo!15468 r!27340))) b!2515084))

(assert (= (and b!2514631 (is-Star!7478 (regTwo!15468 r!27340))) b!2515085))

(assert (= (and b!2514631 (is-Union!7478 (regTwo!15468 r!27340))) b!2515086))

(declare-fun e!1593497 () Bool)

(assert (=> b!2514625 (= tp!803787 e!1593497)))

(declare-fun b!2515087 () Bool)

(assert (=> b!2515087 (= e!1593497 tp_is_empty!12811)))

(declare-fun b!2515089 () Bool)

(declare-fun tp!803836 () Bool)

(assert (=> b!2515089 (= e!1593497 tp!803836)))

(declare-fun b!2515088 () Bool)

(declare-fun tp!803834 () Bool)

(declare-fun tp!803838 () Bool)

(assert (=> b!2515088 (= e!1593497 (and tp!803834 tp!803838))))

(declare-fun b!2515090 () Bool)

(declare-fun tp!803837 () Bool)

(declare-fun tp!803835 () Bool)

(assert (=> b!2515090 (= e!1593497 (and tp!803837 tp!803835))))

(assert (= (and b!2514625 (is-ElementMatch!7478 (reg!7807 r!27340))) b!2515087))

(assert (= (and b!2514625 (is-Concat!12174 (reg!7807 r!27340))) b!2515088))

(assert (= (and b!2514625 (is-Star!7478 (reg!7807 r!27340))) b!2515089))

(assert (= (and b!2514625 (is-Union!7478 (reg!7807 r!27340))) b!2515090))

(declare-fun e!1593498 () Bool)

(assert (=> b!2514634 (= tp!803791 e!1593498)))

(declare-fun b!2515091 () Bool)

(assert (=> b!2515091 (= e!1593498 tp_is_empty!12811)))

(declare-fun b!2515093 () Bool)

(declare-fun tp!803841 () Bool)

(assert (=> b!2515093 (= e!1593498 tp!803841)))

(declare-fun b!2515092 () Bool)

(declare-fun tp!803839 () Bool)

(declare-fun tp!803843 () Bool)

(assert (=> b!2515092 (= e!1593498 (and tp!803839 tp!803843))))

(declare-fun b!2515094 () Bool)

(declare-fun tp!803842 () Bool)

(declare-fun tp!803840 () Bool)

(assert (=> b!2515094 (= e!1593498 (and tp!803842 tp!803840))))

(assert (= (and b!2514634 (is-ElementMatch!7478 (regOne!15469 r!27340))) b!2515091))

(assert (= (and b!2514634 (is-Concat!12174 (regOne!15469 r!27340))) b!2515092))

(assert (= (and b!2514634 (is-Star!7478 (regOne!15469 r!27340))) b!2515093))

(assert (= (and b!2514634 (is-Union!7478 (regOne!15469 r!27340))) b!2515094))

(declare-fun e!1593499 () Bool)

(assert (=> b!2514634 (= tp!803792 e!1593499)))

(declare-fun b!2515095 () Bool)

(assert (=> b!2515095 (= e!1593499 tp_is_empty!12811)))

(declare-fun b!2515097 () Bool)

(declare-fun tp!803846 () Bool)

(assert (=> b!2515097 (= e!1593499 tp!803846)))

(declare-fun b!2515096 () Bool)

(declare-fun tp!803844 () Bool)

(declare-fun tp!803848 () Bool)

(assert (=> b!2515096 (= e!1593499 (and tp!803844 tp!803848))))

(declare-fun b!2515098 () Bool)

(declare-fun tp!803847 () Bool)

(declare-fun tp!803845 () Bool)

(assert (=> b!2515098 (= e!1593499 (and tp!803847 tp!803845))))

(assert (= (and b!2514634 (is-ElementMatch!7478 (regTwo!15469 r!27340))) b!2515095))

(assert (= (and b!2514634 (is-Concat!12174 (regTwo!15469 r!27340))) b!2515096))

(assert (= (and b!2514634 (is-Star!7478 (regTwo!15469 r!27340))) b!2515097))

(assert (= (and b!2514634 (is-Union!7478 (regTwo!15469 r!27340))) b!2515098))

(push 1)

(assert (not b!2514955))

(assert (not b!2514946))

(assert (not d!717253))

(assert (not b!2515093))

(assert (not b!2515038))

(assert (not b!2515009))

(assert (not d!717221))

(assert (not b!2515084))

(assert (not bm!156230))

(assert (not b!2514969))

(assert (not b!2514845))

(assert (not bm!156242))

(assert (not b!2514940))

(assert (not b!2515080))

(assert (not b!2515008))

(assert (not d!717225))

(assert (not d!717249))

(assert (not b!2515085))

(assert (not b!2514941))

(assert (not b!2514937))

(assert (not b!2514932))

(assert (not d!717217))

(assert (not bm!156239))

(assert (not bm!156197))

(assert (not b!2514991))

(assert (not b!2515063))

(assert (not b!2514959))

(assert tp_is_empty!12811)

(assert (not b!2514866))

(assert (not b!2515090))

(assert (not b!2514976))

(assert (not b!2514954))

(assert (not b!2514951))

(assert (not b!2514986))

(assert (not d!717213))

(assert (not b!2514914))

(assert (not b!2515098))

(assert (not b!2514854))

(assert (not b!2515082))

(assert (not b!2514855))

(assert (not d!717255))

(assert (not b!2515061))

(assert (not bm!156211))

(assert (not b!2515060))

(assert (not bm!156227))

(assert (not d!717189))

(assert (not b!2515037))

(assert (not b!2514908))

(assert (not b!2515092))

(assert (not b!2515094))

(assert (not b!2514957))

(assert (not b!2514965))

(assert (not bm!156195))

(assert (not d!717185))

(assert (not d!717209))

(assert (not b!2515096))

(assert (not b!2514846))

(assert (not d!717229))

(assert (not bm!156241))

(assert (not bm!156233))

(assert (not d!717199))

(assert (not d!717237))

(assert (not b!2514857))

(assert (not b!2515081))

(assert (not b!2514788))

(assert (not b!2515057))

(assert (not bm!156237))

(assert (not b!2515044))

(assert (not b!2515052))

(assert (not bm!156209))

(assert (not b!2515068))

(assert (not b!2514867))

(assert (not d!717197))

(assert (not b!2515088))

(assert (not b!2515045))

(assert (not b!2514943))

(assert (not bm!156235))

(assert (not b!2514909))

(assert (not b!2514971))

(assert (not b!2514851))

(assert (not d!717227))

(assert (not d!717233))

(assert (not b!2514778))

(assert (not b!2514960))

(assert (not b!2515043))

(assert (not d!717191))

(assert (not b!2514700))

(assert (not d!717241))

(assert (not b!2514899))

(assert (not b!2515041))

(assert (not b!2515089))

(assert (not b!2515051))

(assert (not bm!156234))

(assert (not b!2514945))

(assert (not b!2514900))

(assert (not b!2514931))

(assert (not b!2514911))

(assert (not b!2515086))

(assert (not bm!156232))

(assert (not b!2514905))

(assert (not d!717205))

(assert (not b!2515097))

(assert (not b!2514968))

(assert (not d!717223))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

