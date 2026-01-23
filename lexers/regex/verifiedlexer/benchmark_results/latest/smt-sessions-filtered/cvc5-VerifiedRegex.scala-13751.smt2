; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733898 () Bool)

(assert start!733898)

(declare-fun b!7618630 () Bool)

(assert (=> b!7618630 true))

(assert (=> b!7618630 true))

(declare-fun b!7618628 () Bool)

(declare-fun e!4530389 () Bool)

(declare-fun tp_is_empty!50947 () Bool)

(declare-fun tp!2224687 () Bool)

(assert (=> b!7618628 (= e!4530389 (and tp_is_empty!50947 tp!2224687))))

(declare-fun b!7618629 () Bool)

(declare-fun e!4530385 () Bool)

(assert (=> b!7618629 (= e!4530385 tp_is_empty!50947)))

(declare-fun e!4530390 () Bool)

(declare-fun e!4530387 () Bool)

(assert (=> b!7618630 (= e!4530390 (not e!4530387))))

(declare-fun res!3050025 () Bool)

(assert (=> b!7618630 (=> res!3050025 e!4530387)))

(declare-fun lt!2656063 () Bool)

(assert (=> b!7618630 (= res!3050025 (not lt!2656063))))

(declare-fun lambda!468268 () Int)

(declare-fun Exists!4452 (Int) Bool)

(assert (=> b!7618630 (= lt!2656063 (Exists!4452 lambda!468268))))

(declare-datatypes ((C!40918 0))(
  ( (C!40919 (val!30899 Int)) )
))
(declare-datatypes ((List!73149 0))(
  ( (Nil!73025) (Cons!73025 (h!79473 C!40918) (t!387884 List!73149)) )
))
(declare-datatypes ((tuple2!69154 0))(
  ( (tuple2!69155 (_1!37880 List!73149) (_2!37880 List!73149)) )
))
(declare-datatypes ((Option!17371 0))(
  ( (None!17370) (Some!17370 (v!54505 tuple2!69154)) )
))
(declare-fun lt!2656062 () Option!17371)

(declare-fun isDefined!13987 (Option!17371) Bool)

(assert (=> b!7618630 (= lt!2656063 (isDefined!13987 lt!2656062))))

(declare-datatypes ((Regex!20296 0))(
  ( (ElementMatch!20296 (c!1404188 C!40918)) (Concat!29141 (regOne!41104 Regex!20296) (regTwo!41104 Regex!20296)) (EmptyExpr!20296) (Star!20296 (reg!20625 Regex!20296)) (EmptyLang!20296) (Union!20296 (regOne!41105 Regex!20296) (regTwo!41105 Regex!20296)) )
))
(declare-fun r!14126 () Regex!20296)

(declare-fun s!9605 () List!73149)

(declare-fun findConcatSeparation!3401 (Regex!20296 Regex!20296 List!73149 List!73149 List!73149) Option!17371)

(assert (=> b!7618630 (= lt!2656062 (findConcatSeparation!3401 (reg!20625 r!14126) r!14126 Nil!73025 s!9605 s!9605))))

(declare-datatypes ((Unit!167432 0))(
  ( (Unit!167433) )
))
(declare-fun lt!2656057 () Unit!167432)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3159 (Regex!20296 Regex!20296 List!73149) Unit!167432)

(assert (=> b!7618630 (= lt!2656057 (lemmaFindConcatSeparationEquivalentToExists!3159 (reg!20625 r!14126) r!14126 s!9605))))

(declare-fun res!3050022 () Bool)

(assert (=> start!733898 (=> (not res!3050022) (not e!4530390))))

(declare-fun validRegex!10716 (Regex!20296) Bool)

(assert (=> start!733898 (= res!3050022 (validRegex!10716 r!14126))))

(assert (=> start!733898 e!4530390))

(assert (=> start!733898 e!4530385))

(declare-fun e!4530391 () Bool)

(assert (=> start!733898 e!4530391))

(declare-fun e!4530388 () Bool)

(assert (=> start!733898 (and e!4530388 e!4530389)))

(declare-fun b!7618631 () Bool)

(declare-fun res!3050020 () Bool)

(assert (=> b!7618631 (=> (not res!3050020) (not e!4530390))))

(assert (=> b!7618631 (= res!3050020 (and (not (is-EmptyExpr!20296 r!14126)) (not (is-EmptyLang!20296 r!14126)) (not (is-ElementMatch!20296 r!14126)) (not (is-Union!20296 r!14126)) (is-Star!20296 r!14126)))))

(declare-fun b!7618632 () Bool)

(declare-fun e!4530392 () Bool)

(assert (=> b!7618632 (= e!4530392 (validRegex!10716 (reg!20625 r!14126)))))

(declare-fun b!7618633 () Bool)

(declare-fun e!4530386 () Unit!167432)

(declare-fun Unit!167434 () Unit!167432)

(assert (=> b!7618633 (= e!4530386 Unit!167434)))

(declare-fun b!7618634 () Bool)

(declare-fun Unit!167435 () Unit!167432)

(assert (=> b!7618634 (= e!4530386 Unit!167435)))

(declare-fun lt!2656060 () tuple2!69154)

(declare-fun lt!2656059 () Unit!167432)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!123 (Regex!20296 Regex!20296 List!73149 List!73149 List!73149) Unit!167432)

(assert (=> b!7618634 (= lt!2656059 (lemmaFindSeparationIsDefinedThenConcatMatches!123 (reg!20625 r!14126) r!14126 (_1!37880 lt!2656060) (_2!37880 lt!2656060) s!9605))))

(declare-fun lt!2656058 () List!73149)

(declare-fun ++!17606 (List!73149 List!73149) List!73149)

(assert (=> b!7618634 (= lt!2656058 (++!17606 (_1!37880 lt!2656060) (_2!37880 lt!2656060)))))

(declare-fun matchR!9803 (Regex!20296 List!73149) Bool)

(assert (=> b!7618634 (matchR!9803 (Concat!29141 (reg!20625 r!14126) r!14126) lt!2656058)))

(declare-fun lt!2656064 () Unit!167432)

(declare-fun lemmaStarApp!177 (Regex!20296 List!73149 List!73149) Unit!167432)

(assert (=> b!7618634 (= lt!2656064 (lemmaStarApp!177 (reg!20625 r!14126) (_1!37880 lt!2656060) (_2!37880 lt!2656060)))))

(declare-fun res!3050023 () Bool)

(assert (=> b!7618634 (= res!3050023 (matchR!9803 r!14126 lt!2656058))))

(declare-fun e!4530384 () Bool)

(assert (=> b!7618634 (=> (not res!3050023) (not e!4530384))))

(assert (=> b!7618634 e!4530384))

(declare-fun b!7618635 () Bool)

(assert (=> b!7618635 (= e!4530384 false)))

(declare-fun b!7618636 () Bool)

(declare-fun tp!2224689 () Bool)

(declare-fun tp!2224684 () Bool)

(assert (=> b!7618636 (= e!4530385 (and tp!2224689 tp!2224684))))

(declare-fun b!7618637 () Bool)

(declare-fun tp!2224691 () Bool)

(declare-fun tp!2224686 () Bool)

(assert (=> b!7618637 (= e!4530385 (and tp!2224691 tp!2224686))))

(declare-fun b!7618638 () Bool)

(assert (=> b!7618638 (= e!4530387 e!4530392)))

(declare-fun res!3050019 () Bool)

(assert (=> b!7618638 (=> res!3050019 e!4530392)))

(assert (=> b!7618638 (= res!3050019 (not (Exists!4452 lambda!468268)))))

(declare-fun lt!2656065 () Unit!167432)

(assert (=> b!7618638 (= lt!2656065 e!4530386)))

(declare-fun c!1404187 () Bool)

(assert (=> b!7618638 (= c!1404187 (not (matchR!9803 r!14126 s!9605)))))

(declare-fun matchRSpec!4495 (Regex!20296 List!73149) Bool)

(assert (=> b!7618638 (= (matchR!9803 r!14126 (_2!37880 lt!2656060)) (matchRSpec!4495 r!14126 (_2!37880 lt!2656060)))))

(declare-fun lt!2656061 () Unit!167432)

(declare-fun mainMatchTheorem!4489 (Regex!20296 List!73149) Unit!167432)

(assert (=> b!7618638 (= lt!2656061 (mainMatchTheorem!4489 r!14126 (_2!37880 lt!2656060)))))

(assert (=> b!7618638 (= (matchR!9803 (reg!20625 r!14126) (_1!37880 lt!2656060)) (matchRSpec!4495 (reg!20625 r!14126) (_1!37880 lt!2656060)))))

(declare-fun lt!2656066 () Unit!167432)

(assert (=> b!7618638 (= lt!2656066 (mainMatchTheorem!4489 (reg!20625 r!14126) (_1!37880 lt!2656060)))))

(declare-fun get!25756 (Option!17371) tuple2!69154)

(assert (=> b!7618638 (= lt!2656060 (get!25756 lt!2656062))))

(declare-fun b!7618639 () Bool)

(declare-fun tp!2224688 () Bool)

(assert (=> b!7618639 (= e!4530391 (and tp_is_empty!50947 tp!2224688))))

(declare-fun b!7618640 () Bool)

(declare-fun tp!2224690 () Bool)

(assert (=> b!7618640 (= e!4530385 tp!2224690)))

(declare-fun b!7618641 () Bool)

(declare-fun tp!2224685 () Bool)

(assert (=> b!7618641 (= e!4530388 (and tp_is_empty!50947 tp!2224685))))

(declare-fun b!7618642 () Bool)

(declare-fun res!3050024 () Bool)

(assert (=> b!7618642 (=> (not res!3050024) (not e!4530390))))

(declare-fun isEmpty!41639 (List!73149) Bool)

(assert (=> b!7618642 (= res!3050024 (not (isEmpty!41639 s!9605)))))

(declare-fun b!7618643 () Bool)

(declare-fun res!3050021 () Bool)

(assert (=> b!7618643 (=> res!3050021 e!4530392)))

(declare-fun cut!6 () tuple2!69154)

(assert (=> b!7618643 (= res!3050021 (not (= (++!17606 (_1!37880 cut!6) (_2!37880 cut!6)) s!9605)))))

(assert (= (and start!733898 res!3050022) b!7618631))

(assert (= (and b!7618631 res!3050020) b!7618642))

(assert (= (and b!7618642 res!3050024) b!7618630))

(assert (= (and b!7618630 (not res!3050025)) b!7618638))

(assert (= (and b!7618638 c!1404187) b!7618634))

(assert (= (and b!7618638 (not c!1404187)) b!7618633))

(assert (= (and b!7618634 res!3050023) b!7618635))

(assert (= (and b!7618638 (not res!3050019)) b!7618643))

(assert (= (and b!7618643 (not res!3050021)) b!7618632))

(assert (= (and start!733898 (is-ElementMatch!20296 r!14126)) b!7618629))

(assert (= (and start!733898 (is-Concat!29141 r!14126)) b!7618637))

(assert (= (and start!733898 (is-Star!20296 r!14126)) b!7618640))

(assert (= (and start!733898 (is-Union!20296 r!14126)) b!7618636))

(assert (= (and start!733898 (is-Cons!73025 s!9605)) b!7618639))

(assert (= (and start!733898 (is-Cons!73025 (_1!37880 cut!6))) b!7618641))

(assert (= (and start!733898 (is-Cons!73025 (_2!37880 cut!6))) b!7618628))

(declare-fun m!8151178 () Bool)

(assert (=> start!733898 m!8151178))

(declare-fun m!8151180 () Bool)

(assert (=> b!7618643 m!8151180))

(declare-fun m!8151182 () Bool)

(assert (=> b!7618642 m!8151182))

(declare-fun m!8151184 () Bool)

(assert (=> b!7618638 m!8151184))

(declare-fun m!8151186 () Bool)

(assert (=> b!7618638 m!8151186))

(declare-fun m!8151188 () Bool)

(assert (=> b!7618638 m!8151188))

(declare-fun m!8151190 () Bool)

(assert (=> b!7618638 m!8151190))

(declare-fun m!8151192 () Bool)

(assert (=> b!7618638 m!8151192))

(declare-fun m!8151194 () Bool)

(assert (=> b!7618638 m!8151194))

(declare-fun m!8151196 () Bool)

(assert (=> b!7618638 m!8151196))

(declare-fun m!8151198 () Bool)

(assert (=> b!7618638 m!8151198))

(declare-fun m!8151200 () Bool)

(assert (=> b!7618638 m!8151200))

(assert (=> b!7618630 m!8151196))

(declare-fun m!8151202 () Bool)

(assert (=> b!7618630 m!8151202))

(declare-fun m!8151204 () Bool)

(assert (=> b!7618630 m!8151204))

(declare-fun m!8151206 () Bool)

(assert (=> b!7618630 m!8151206))

(declare-fun m!8151208 () Bool)

(assert (=> b!7618632 m!8151208))

(declare-fun m!8151210 () Bool)

(assert (=> b!7618634 m!8151210))

(declare-fun m!8151212 () Bool)

(assert (=> b!7618634 m!8151212))

(declare-fun m!8151214 () Bool)

(assert (=> b!7618634 m!8151214))

(declare-fun m!8151216 () Bool)

(assert (=> b!7618634 m!8151216))

(declare-fun m!8151218 () Bool)

(assert (=> b!7618634 m!8151218))

(push 1)

(assert (not b!7618637))

(assert (not b!7618632))

(assert (not b!7618642))

(assert (not b!7618643))

(assert (not b!7618630))

(assert (not b!7618628))

(assert (not b!7618636))

(assert (not b!7618641))

(assert (not b!7618634))

(assert (not start!733898))

(assert tp_is_empty!50947)

(assert (not b!7618639))

(assert (not b!7618640))

(assert (not b!7618638))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2322950 () Bool)

(declare-fun choose!58773 (Int) Bool)

(assert (=> d!2322950 (= (Exists!4452 lambda!468268) (choose!58773 lambda!468268))))

(declare-fun bs!1943119 () Bool)

(assert (= bs!1943119 d!2322950))

(declare-fun m!8151266 () Bool)

(assert (=> bs!1943119 m!8151266))

(assert (=> b!7618630 d!2322950))

(declare-fun d!2322952 () Bool)

(declare-fun isEmpty!41641 (Option!17371) Bool)

(assert (=> d!2322952 (= (isDefined!13987 lt!2656062) (not (isEmpty!41641 lt!2656062)))))

(declare-fun bs!1943120 () Bool)

(assert (= bs!1943120 d!2322952))

(declare-fun m!8151268 () Bool)

(assert (=> bs!1943120 m!8151268))

(assert (=> b!7618630 d!2322952))

(declare-fun b!7618744 () Bool)

(declare-fun lt!2656109 () Unit!167432)

(declare-fun lt!2656111 () Unit!167432)

(assert (=> b!7618744 (= lt!2656109 lt!2656111)))

(assert (=> b!7618744 (= (++!17606 (++!17606 Nil!73025 (Cons!73025 (h!79473 s!9605) Nil!73025)) (t!387884 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3214 (List!73149 C!40918 List!73149 List!73149) Unit!167432)

(assert (=> b!7618744 (= lt!2656111 (lemmaMoveElementToOtherListKeepsConcatEq!3214 Nil!73025 (h!79473 s!9605) (t!387884 s!9605) s!9605))))

(declare-fun e!4530444 () Option!17371)

(assert (=> b!7618744 (= e!4530444 (findConcatSeparation!3401 (reg!20625 r!14126) r!14126 (++!17606 Nil!73025 (Cons!73025 (h!79473 s!9605) Nil!73025)) (t!387884 s!9605) s!9605))))

(declare-fun b!7618745 () Bool)

(declare-fun e!4530445 () Bool)

(assert (=> b!7618745 (= e!4530445 (matchR!9803 r!14126 s!9605))))

(declare-fun b!7618746 () Bool)

(declare-fun res!3050078 () Bool)

(declare-fun e!4530446 () Bool)

(assert (=> b!7618746 (=> (not res!3050078) (not e!4530446))))

(declare-fun lt!2656110 () Option!17371)

(assert (=> b!7618746 (= res!3050078 (matchR!9803 r!14126 (_2!37880 (get!25756 lt!2656110))))))

(declare-fun b!7618747 () Bool)

(declare-fun e!4530448 () Bool)

(assert (=> b!7618747 (= e!4530448 (not (isDefined!13987 lt!2656110)))))

(declare-fun b!7618748 () Bool)

(declare-fun e!4530447 () Option!17371)

(assert (=> b!7618748 (= e!4530447 (Some!17370 (tuple2!69155 Nil!73025 s!9605)))))

(declare-fun b!7618749 () Bool)

(assert (=> b!7618749 (= e!4530446 (= (++!17606 (_1!37880 (get!25756 lt!2656110)) (_2!37880 (get!25756 lt!2656110))) s!9605))))

(declare-fun d!2322954 () Bool)

(assert (=> d!2322954 e!4530448))

(declare-fun res!3050077 () Bool)

(assert (=> d!2322954 (=> res!3050077 e!4530448)))

(assert (=> d!2322954 (= res!3050077 e!4530446)))

(declare-fun res!3050076 () Bool)

(assert (=> d!2322954 (=> (not res!3050076) (not e!4530446))))

(assert (=> d!2322954 (= res!3050076 (isDefined!13987 lt!2656110))))

(assert (=> d!2322954 (= lt!2656110 e!4530447)))

(declare-fun c!1404202 () Bool)

(assert (=> d!2322954 (= c!1404202 e!4530445)))

(declare-fun res!3050079 () Bool)

(assert (=> d!2322954 (=> (not res!3050079) (not e!4530445))))

(assert (=> d!2322954 (= res!3050079 (matchR!9803 (reg!20625 r!14126) Nil!73025))))

(assert (=> d!2322954 (validRegex!10716 (reg!20625 r!14126))))

(assert (=> d!2322954 (= (findConcatSeparation!3401 (reg!20625 r!14126) r!14126 Nil!73025 s!9605 s!9605) lt!2656110)))

(declare-fun b!7618750 () Bool)

(assert (=> b!7618750 (= e!4530447 e!4530444)))

(declare-fun c!1404201 () Bool)

(assert (=> b!7618750 (= c!1404201 (is-Nil!73025 s!9605))))

(declare-fun b!7618751 () Bool)

(declare-fun res!3050075 () Bool)

(assert (=> b!7618751 (=> (not res!3050075) (not e!4530446))))

(assert (=> b!7618751 (= res!3050075 (matchR!9803 (reg!20625 r!14126) (_1!37880 (get!25756 lt!2656110))))))

(declare-fun b!7618752 () Bool)

(assert (=> b!7618752 (= e!4530444 None!17370)))

(assert (= (and d!2322954 res!3050079) b!7618745))

(assert (= (and d!2322954 c!1404202) b!7618748))

(assert (= (and d!2322954 (not c!1404202)) b!7618750))

(assert (= (and b!7618750 c!1404201) b!7618752))

(assert (= (and b!7618750 (not c!1404201)) b!7618744))

(assert (= (and d!2322954 res!3050076) b!7618751))

(assert (= (and b!7618751 res!3050075) b!7618746))

(assert (= (and b!7618746 res!3050078) b!7618749))

(assert (= (and d!2322954 (not res!3050077)) b!7618747))

(declare-fun m!8151270 () Bool)

(assert (=> b!7618749 m!8151270))

(declare-fun m!8151272 () Bool)

(assert (=> b!7618749 m!8151272))

(declare-fun m!8151274 () Bool)

(assert (=> d!2322954 m!8151274))

(declare-fun m!8151276 () Bool)

(assert (=> d!2322954 m!8151276))

(assert (=> d!2322954 m!8151208))

(assert (=> b!7618745 m!8151186))

(assert (=> b!7618746 m!8151270))

(declare-fun m!8151278 () Bool)

(assert (=> b!7618746 m!8151278))

(assert (=> b!7618751 m!8151270))

(declare-fun m!8151280 () Bool)

(assert (=> b!7618751 m!8151280))

(declare-fun m!8151282 () Bool)

(assert (=> b!7618744 m!8151282))

(assert (=> b!7618744 m!8151282))

(declare-fun m!8151284 () Bool)

(assert (=> b!7618744 m!8151284))

(declare-fun m!8151286 () Bool)

(assert (=> b!7618744 m!8151286))

(assert (=> b!7618744 m!8151282))

(declare-fun m!8151288 () Bool)

(assert (=> b!7618744 m!8151288))

(assert (=> b!7618747 m!8151274))

(assert (=> b!7618630 d!2322954))

(declare-fun bs!1943121 () Bool)

(declare-fun d!2322956 () Bool)

(assert (= bs!1943121 (and d!2322956 b!7618630)))

(declare-fun lambda!468276 () Int)

(assert (=> bs!1943121 (= lambda!468276 lambda!468268)))

(assert (=> d!2322956 true))

(assert (=> d!2322956 true))

(assert (=> d!2322956 true))

(assert (=> d!2322956 (= (isDefined!13987 (findConcatSeparation!3401 (reg!20625 r!14126) r!14126 Nil!73025 s!9605 s!9605)) (Exists!4452 lambda!468276))))

(declare-fun lt!2656117 () Unit!167432)

(declare-fun choose!58774 (Regex!20296 Regex!20296 List!73149) Unit!167432)

(assert (=> d!2322956 (= lt!2656117 (choose!58774 (reg!20625 r!14126) r!14126 s!9605))))

(assert (=> d!2322956 (validRegex!10716 (reg!20625 r!14126))))

(assert (=> d!2322956 (= (lemmaFindConcatSeparationEquivalentToExists!3159 (reg!20625 r!14126) r!14126 s!9605) lt!2656117)))

(declare-fun bs!1943122 () Bool)

(assert (= bs!1943122 d!2322956))

(declare-fun m!8151310 () Bool)

(assert (=> bs!1943122 m!8151310))

(declare-fun m!8151312 () Bool)

(assert (=> bs!1943122 m!8151312))

(assert (=> bs!1943122 m!8151204))

(assert (=> bs!1943122 m!8151208))

(assert (=> bs!1943122 m!8151204))

(declare-fun m!8151314 () Bool)

(assert (=> bs!1943122 m!8151314))

(assert (=> b!7618630 d!2322956))

(declare-fun d!2322960 () Bool)

(assert (=> d!2322960 (= (isEmpty!41639 s!9605) (is-Nil!73025 s!9605))))

(assert (=> b!7618642 d!2322960))

(declare-fun b!7618784 () Bool)

(declare-fun e!4530476 () Bool)

(declare-fun e!4530471 () Bool)

(assert (=> b!7618784 (= e!4530476 e!4530471)))

(declare-fun c!1404210 () Bool)

(assert (=> b!7618784 (= c!1404210 (is-Union!20296 r!14126))))

(declare-fun b!7618785 () Bool)

(declare-fun e!4530474 () Bool)

(declare-fun call!699788 () Bool)

(assert (=> b!7618785 (= e!4530474 call!699788)))

(declare-fun b!7618786 () Bool)

(declare-fun e!4530475 () Bool)

(assert (=> b!7618786 (= e!4530475 e!4530476)))

(declare-fun c!1404209 () Bool)

(assert (=> b!7618786 (= c!1404209 (is-Star!20296 r!14126))))

(declare-fun b!7618787 () Bool)

(declare-fun e!4530472 () Bool)

(assert (=> b!7618787 (= e!4530472 call!699788)))

(declare-fun call!699789 () Bool)

(declare-fun bm!699782 () Bool)

(assert (=> bm!699782 (= call!699789 (validRegex!10716 (ite c!1404209 (reg!20625 r!14126) (ite c!1404210 (regTwo!41105 r!14126) (regTwo!41104 r!14126)))))))

(declare-fun d!2322962 () Bool)

(declare-fun res!3050099 () Bool)

(assert (=> d!2322962 (=> res!3050099 e!4530475)))

(assert (=> d!2322962 (= res!3050099 (is-ElementMatch!20296 r!14126))))

(assert (=> d!2322962 (= (validRegex!10716 r!14126) e!4530475)))

(declare-fun b!7618788 () Bool)

(declare-fun e!4530470 () Bool)

(assert (=> b!7618788 (= e!4530476 e!4530470)))

(declare-fun res!3050102 () Bool)

(declare-fun nullable!8871 (Regex!20296) Bool)

(assert (=> b!7618788 (= res!3050102 (not (nullable!8871 (reg!20625 r!14126))))))

(assert (=> b!7618788 (=> (not res!3050102) (not e!4530470))))

(declare-fun bm!699783 () Bool)

(assert (=> bm!699783 (= call!699788 call!699789)))

(declare-fun b!7618789 () Bool)

(declare-fun e!4530473 () Bool)

(assert (=> b!7618789 (= e!4530473 e!4530472)))

(declare-fun res!3050101 () Bool)

(assert (=> b!7618789 (=> (not res!3050101) (not e!4530472))))

(declare-fun call!699787 () Bool)

(assert (=> b!7618789 (= res!3050101 call!699787)))

(declare-fun b!7618790 () Bool)

(declare-fun res!3050100 () Bool)

(assert (=> b!7618790 (=> res!3050100 e!4530473)))

(assert (=> b!7618790 (= res!3050100 (not (is-Concat!29141 r!14126)))))

(assert (=> b!7618790 (= e!4530471 e!4530473)))

(declare-fun b!7618791 () Bool)

(assert (=> b!7618791 (= e!4530470 call!699789)))

(declare-fun b!7618792 () Bool)

(declare-fun res!3050103 () Bool)

(assert (=> b!7618792 (=> (not res!3050103) (not e!4530474))))

(assert (=> b!7618792 (= res!3050103 call!699787)))

(assert (=> b!7618792 (= e!4530471 e!4530474)))

(declare-fun bm!699784 () Bool)

(assert (=> bm!699784 (= call!699787 (validRegex!10716 (ite c!1404210 (regOne!41105 r!14126) (regOne!41104 r!14126))))))

(assert (= (and d!2322962 (not res!3050099)) b!7618786))

(assert (= (and b!7618786 c!1404209) b!7618788))

(assert (= (and b!7618786 (not c!1404209)) b!7618784))

(assert (= (and b!7618788 res!3050102) b!7618791))

(assert (= (and b!7618784 c!1404210) b!7618792))

(assert (= (and b!7618784 (not c!1404210)) b!7618790))

(assert (= (and b!7618792 res!3050103) b!7618785))

(assert (= (and b!7618790 (not res!3050100)) b!7618789))

(assert (= (and b!7618789 res!3050101) b!7618787))

(assert (= (or b!7618792 b!7618789) bm!699784))

(assert (= (or b!7618785 b!7618787) bm!699783))

(assert (= (or b!7618791 bm!699783) bm!699782))

(declare-fun m!8151316 () Bool)

(assert (=> bm!699782 m!8151316))

(declare-fun m!8151318 () Bool)

(assert (=> b!7618788 m!8151318))

(declare-fun m!8151320 () Bool)

(assert (=> bm!699784 m!8151320))

(assert (=> start!733898 d!2322962))

(declare-fun b!7618793 () Bool)

(declare-fun e!4530483 () Bool)

(declare-fun e!4530478 () Bool)

(assert (=> b!7618793 (= e!4530483 e!4530478)))

(declare-fun c!1404212 () Bool)

(assert (=> b!7618793 (= c!1404212 (is-Union!20296 (reg!20625 r!14126)))))

(declare-fun b!7618794 () Bool)

(declare-fun e!4530481 () Bool)

(declare-fun call!699791 () Bool)

(assert (=> b!7618794 (= e!4530481 call!699791)))

(declare-fun b!7618795 () Bool)

(declare-fun e!4530482 () Bool)

(assert (=> b!7618795 (= e!4530482 e!4530483)))

(declare-fun c!1404211 () Bool)

(assert (=> b!7618795 (= c!1404211 (is-Star!20296 (reg!20625 r!14126)))))

(declare-fun b!7618796 () Bool)

(declare-fun e!4530479 () Bool)

(assert (=> b!7618796 (= e!4530479 call!699791)))

(declare-fun call!699792 () Bool)

(declare-fun bm!699785 () Bool)

(assert (=> bm!699785 (= call!699792 (validRegex!10716 (ite c!1404211 (reg!20625 (reg!20625 r!14126)) (ite c!1404212 (regTwo!41105 (reg!20625 r!14126)) (regTwo!41104 (reg!20625 r!14126))))))))

(declare-fun d!2322964 () Bool)

(declare-fun res!3050104 () Bool)

(assert (=> d!2322964 (=> res!3050104 e!4530482)))

(assert (=> d!2322964 (= res!3050104 (is-ElementMatch!20296 (reg!20625 r!14126)))))

(assert (=> d!2322964 (= (validRegex!10716 (reg!20625 r!14126)) e!4530482)))

(declare-fun b!7618797 () Bool)

(declare-fun e!4530477 () Bool)

(assert (=> b!7618797 (= e!4530483 e!4530477)))

(declare-fun res!3050107 () Bool)

(assert (=> b!7618797 (= res!3050107 (not (nullable!8871 (reg!20625 (reg!20625 r!14126)))))))

(assert (=> b!7618797 (=> (not res!3050107) (not e!4530477))))

(declare-fun bm!699786 () Bool)

(assert (=> bm!699786 (= call!699791 call!699792)))

(declare-fun b!7618798 () Bool)

(declare-fun e!4530480 () Bool)

(assert (=> b!7618798 (= e!4530480 e!4530479)))

(declare-fun res!3050106 () Bool)

(assert (=> b!7618798 (=> (not res!3050106) (not e!4530479))))

(declare-fun call!699790 () Bool)

(assert (=> b!7618798 (= res!3050106 call!699790)))

(declare-fun b!7618799 () Bool)

(declare-fun res!3050105 () Bool)

(assert (=> b!7618799 (=> res!3050105 e!4530480)))

(assert (=> b!7618799 (= res!3050105 (not (is-Concat!29141 (reg!20625 r!14126))))))

(assert (=> b!7618799 (= e!4530478 e!4530480)))

(declare-fun b!7618800 () Bool)

(assert (=> b!7618800 (= e!4530477 call!699792)))

(declare-fun b!7618801 () Bool)

(declare-fun res!3050108 () Bool)

(assert (=> b!7618801 (=> (not res!3050108) (not e!4530481))))

(assert (=> b!7618801 (= res!3050108 call!699790)))

(assert (=> b!7618801 (= e!4530478 e!4530481)))

(declare-fun bm!699787 () Bool)

(assert (=> bm!699787 (= call!699790 (validRegex!10716 (ite c!1404212 (regOne!41105 (reg!20625 r!14126)) (regOne!41104 (reg!20625 r!14126)))))))

(assert (= (and d!2322964 (not res!3050104)) b!7618795))

(assert (= (and b!7618795 c!1404211) b!7618797))

(assert (= (and b!7618795 (not c!1404211)) b!7618793))

(assert (= (and b!7618797 res!3050107) b!7618800))

(assert (= (and b!7618793 c!1404212) b!7618801))

(assert (= (and b!7618793 (not c!1404212)) b!7618799))

(assert (= (and b!7618801 res!3050108) b!7618794))

(assert (= (and b!7618799 (not res!3050105)) b!7618798))

(assert (= (and b!7618798 res!3050106) b!7618796))

(assert (= (or b!7618801 b!7618798) bm!699787))

(assert (= (or b!7618794 b!7618796) bm!699786))

(assert (= (or b!7618800 bm!699786) bm!699785))

(declare-fun m!8151322 () Bool)

(assert (=> bm!699785 m!8151322))

(declare-fun m!8151324 () Bool)

(assert (=> b!7618797 m!8151324))

(declare-fun m!8151326 () Bool)

(assert (=> bm!699787 m!8151326))

(assert (=> b!7618632 d!2322964))

(declare-fun b!7618813 () Bool)

(declare-fun e!4530488 () Bool)

(declare-fun lt!2656122 () List!73149)

(assert (=> b!7618813 (= e!4530488 (or (not (= (_2!37880 cut!6) Nil!73025)) (= lt!2656122 (_1!37880 cut!6))))))

(declare-fun b!7618812 () Bool)

(declare-fun res!3050114 () Bool)

(assert (=> b!7618812 (=> (not res!3050114) (not e!4530488))))

(declare-fun size!42531 (List!73149) Int)

(assert (=> b!7618812 (= res!3050114 (= (size!42531 lt!2656122) (+ (size!42531 (_1!37880 cut!6)) (size!42531 (_2!37880 cut!6)))))))

(declare-fun b!7618810 () Bool)

(declare-fun e!4530489 () List!73149)

(assert (=> b!7618810 (= e!4530489 (_2!37880 cut!6))))

(declare-fun b!7618811 () Bool)

(assert (=> b!7618811 (= e!4530489 (Cons!73025 (h!79473 (_1!37880 cut!6)) (++!17606 (t!387884 (_1!37880 cut!6)) (_2!37880 cut!6))))))

(declare-fun d!2322966 () Bool)

(assert (=> d!2322966 e!4530488))

(declare-fun res!3050113 () Bool)

(assert (=> d!2322966 (=> (not res!3050113) (not e!4530488))))

(declare-fun content!15438 (List!73149) (Set C!40918))

(assert (=> d!2322966 (= res!3050113 (= (content!15438 lt!2656122) (set.union (content!15438 (_1!37880 cut!6)) (content!15438 (_2!37880 cut!6)))))))

(assert (=> d!2322966 (= lt!2656122 e!4530489)))

(declare-fun c!1404215 () Bool)

(assert (=> d!2322966 (= c!1404215 (is-Nil!73025 (_1!37880 cut!6)))))

(assert (=> d!2322966 (= (++!17606 (_1!37880 cut!6) (_2!37880 cut!6)) lt!2656122)))

(assert (= (and d!2322966 c!1404215) b!7618810))

(assert (= (and d!2322966 (not c!1404215)) b!7618811))

(assert (= (and d!2322966 res!3050113) b!7618812))

(assert (= (and b!7618812 res!3050114) b!7618813))

(declare-fun m!8151328 () Bool)

(assert (=> b!7618812 m!8151328))

(declare-fun m!8151330 () Bool)

(assert (=> b!7618812 m!8151330))

(declare-fun m!8151332 () Bool)

(assert (=> b!7618812 m!8151332))

(declare-fun m!8151334 () Bool)

(assert (=> b!7618811 m!8151334))

(declare-fun m!8151336 () Bool)

(assert (=> d!2322966 m!8151336))

(declare-fun m!8151338 () Bool)

(assert (=> d!2322966 m!8151338))

(declare-fun m!8151340 () Bool)

(assert (=> d!2322966 m!8151340))

(assert (=> b!7618643 d!2322966))

(declare-fun b!7618846 () Bool)

(declare-fun e!4530506 () Bool)

(assert (=> b!7618846 (= e!4530506 (nullable!8871 r!14126))))

(declare-fun b!7618847 () Bool)

(declare-fun res!3050137 () Bool)

(declare-fun e!4530511 () Bool)

(assert (=> b!7618847 (=> res!3050137 e!4530511)))

(assert (=> b!7618847 (= res!3050137 (not (is-ElementMatch!20296 r!14126)))))

(declare-fun e!4530508 () Bool)

(assert (=> b!7618847 (= e!4530508 e!4530511)))

(declare-fun b!7618848 () Bool)

(declare-fun res!3050135 () Bool)

(declare-fun e!4530507 () Bool)

(assert (=> b!7618848 (=> (not res!3050135) (not e!4530507))))

(declare-fun tail!15191 (List!73149) List!73149)

(assert (=> b!7618848 (= res!3050135 (isEmpty!41639 (tail!15191 s!9605)))))

(declare-fun d!2322968 () Bool)

(declare-fun e!4530509 () Bool)

(assert (=> d!2322968 e!4530509))

(declare-fun c!1404223 () Bool)

(assert (=> d!2322968 (= c!1404223 (is-EmptyExpr!20296 r!14126))))

(declare-fun lt!2656126 () Bool)

(assert (=> d!2322968 (= lt!2656126 e!4530506)))

(declare-fun c!1404224 () Bool)

(assert (=> d!2322968 (= c!1404224 (isEmpty!41639 s!9605))))

(assert (=> d!2322968 (validRegex!10716 r!14126)))

(assert (=> d!2322968 (= (matchR!9803 r!14126 s!9605) lt!2656126)))

(declare-fun b!7618849 () Bool)

(assert (=> b!7618849 (= e!4530508 (not lt!2656126))))

(declare-fun b!7618850 () Bool)

(declare-fun head!15651 (List!73149) C!40918)

(assert (=> b!7618850 (= e!4530507 (= (head!15651 s!9605) (c!1404188 r!14126)))))

(declare-fun b!7618851 () Bool)

(declare-fun e!4530510 () Bool)

(assert (=> b!7618851 (= e!4530510 (not (= (head!15651 s!9605) (c!1404188 r!14126))))))

(declare-fun b!7618852 () Bool)

(declare-fun e!4530512 () Bool)

(assert (=> b!7618852 (= e!4530512 e!4530510)))

(declare-fun res!3050136 () Bool)

(assert (=> b!7618852 (=> res!3050136 e!4530510)))

(declare-fun call!699795 () Bool)

(assert (=> b!7618852 (= res!3050136 call!699795)))

(declare-fun b!7618853 () Bool)

(assert (=> b!7618853 (= e!4530509 e!4530508)))

(declare-fun c!1404222 () Bool)

(assert (=> b!7618853 (= c!1404222 (is-EmptyLang!20296 r!14126))))

(declare-fun b!7618854 () Bool)

(declare-fun res!3050140 () Bool)

(assert (=> b!7618854 (=> res!3050140 e!4530510)))

(assert (=> b!7618854 (= res!3050140 (not (isEmpty!41639 (tail!15191 s!9605))))))

(declare-fun b!7618855 () Bool)

(declare-fun derivativeStep!5851 (Regex!20296 C!40918) Regex!20296)

(assert (=> b!7618855 (= e!4530506 (matchR!9803 (derivativeStep!5851 r!14126 (head!15651 s!9605)) (tail!15191 s!9605)))))

(declare-fun b!7618856 () Bool)

(assert (=> b!7618856 (= e!4530511 e!4530512)))

(declare-fun res!3050138 () Bool)

(assert (=> b!7618856 (=> (not res!3050138) (not e!4530512))))

(assert (=> b!7618856 (= res!3050138 (not lt!2656126))))

(declare-fun b!7618857 () Bool)

(assert (=> b!7618857 (= e!4530509 (= lt!2656126 call!699795))))

(declare-fun b!7618858 () Bool)

(declare-fun res!3050139 () Bool)

(assert (=> b!7618858 (=> res!3050139 e!4530511)))

(assert (=> b!7618858 (= res!3050139 e!4530507)))

(declare-fun res!3050141 () Bool)

(assert (=> b!7618858 (=> (not res!3050141) (not e!4530507))))

(assert (=> b!7618858 (= res!3050141 lt!2656126)))

(declare-fun b!7618859 () Bool)

(declare-fun res!3050142 () Bool)

(assert (=> b!7618859 (=> (not res!3050142) (not e!4530507))))

(assert (=> b!7618859 (= res!3050142 (not call!699795))))

(declare-fun bm!699790 () Bool)

(assert (=> bm!699790 (= call!699795 (isEmpty!41639 s!9605))))

(assert (= (and d!2322968 c!1404224) b!7618846))

(assert (= (and d!2322968 (not c!1404224)) b!7618855))

(assert (= (and d!2322968 c!1404223) b!7618857))

(assert (= (and d!2322968 (not c!1404223)) b!7618853))

(assert (= (and b!7618853 c!1404222) b!7618849))

(assert (= (and b!7618853 (not c!1404222)) b!7618847))

(assert (= (and b!7618847 (not res!3050137)) b!7618858))

(assert (= (and b!7618858 res!3050141) b!7618859))

(assert (= (and b!7618859 res!3050142) b!7618848))

(assert (= (and b!7618848 res!3050135) b!7618850))

(assert (= (and b!7618858 (not res!3050139)) b!7618856))

(assert (= (and b!7618856 res!3050138) b!7618852))

(assert (= (and b!7618852 (not res!3050136)) b!7618854))

(assert (= (and b!7618854 (not res!3050140)) b!7618851))

(assert (= (or b!7618857 b!7618859 b!7618852) bm!699790))

(declare-fun m!8151348 () Bool)

(assert (=> b!7618850 m!8151348))

(declare-fun m!8151350 () Bool)

(assert (=> b!7618846 m!8151350))

(declare-fun m!8151352 () Bool)

(assert (=> b!7618854 m!8151352))

(assert (=> b!7618854 m!8151352))

(declare-fun m!8151354 () Bool)

(assert (=> b!7618854 m!8151354))

(assert (=> b!7618851 m!8151348))

(assert (=> d!2322968 m!8151182))

(assert (=> d!2322968 m!8151178))

(assert (=> bm!699790 m!8151182))

(assert (=> b!7618855 m!8151348))

(assert (=> b!7618855 m!8151348))

(declare-fun m!8151356 () Bool)

(assert (=> b!7618855 m!8151356))

(assert (=> b!7618855 m!8151352))

(assert (=> b!7618855 m!8151356))

(assert (=> b!7618855 m!8151352))

(declare-fun m!8151358 () Bool)

(assert (=> b!7618855 m!8151358))

(assert (=> b!7618848 m!8151352))

(assert (=> b!7618848 m!8151352))

(assert (=> b!7618848 m!8151354))

(assert (=> b!7618638 d!2322968))

(declare-fun b!7618860 () Bool)

(declare-fun e!4530513 () Bool)

(assert (=> b!7618860 (= e!4530513 (nullable!8871 r!14126))))

(declare-fun b!7618861 () Bool)

(declare-fun res!3050145 () Bool)

(declare-fun e!4530518 () Bool)

(assert (=> b!7618861 (=> res!3050145 e!4530518)))

(assert (=> b!7618861 (= res!3050145 (not (is-ElementMatch!20296 r!14126)))))

(declare-fun e!4530515 () Bool)

(assert (=> b!7618861 (= e!4530515 e!4530518)))

(declare-fun b!7618862 () Bool)

(declare-fun res!3050143 () Bool)

(declare-fun e!4530514 () Bool)

(assert (=> b!7618862 (=> (not res!3050143) (not e!4530514))))

(assert (=> b!7618862 (= res!3050143 (isEmpty!41639 (tail!15191 (_2!37880 lt!2656060))))))

(declare-fun d!2322972 () Bool)

(declare-fun e!4530516 () Bool)

(assert (=> d!2322972 e!4530516))

(declare-fun c!1404226 () Bool)

(assert (=> d!2322972 (= c!1404226 (is-EmptyExpr!20296 r!14126))))

(declare-fun lt!2656127 () Bool)

(assert (=> d!2322972 (= lt!2656127 e!4530513)))

(declare-fun c!1404227 () Bool)

(assert (=> d!2322972 (= c!1404227 (isEmpty!41639 (_2!37880 lt!2656060)))))

(assert (=> d!2322972 (validRegex!10716 r!14126)))

(assert (=> d!2322972 (= (matchR!9803 r!14126 (_2!37880 lt!2656060)) lt!2656127)))

(declare-fun b!7618863 () Bool)

(assert (=> b!7618863 (= e!4530515 (not lt!2656127))))

(declare-fun b!7618864 () Bool)

(assert (=> b!7618864 (= e!4530514 (= (head!15651 (_2!37880 lt!2656060)) (c!1404188 r!14126)))))

(declare-fun b!7618865 () Bool)

(declare-fun e!4530517 () Bool)

(assert (=> b!7618865 (= e!4530517 (not (= (head!15651 (_2!37880 lt!2656060)) (c!1404188 r!14126))))))

(declare-fun b!7618866 () Bool)

(declare-fun e!4530519 () Bool)

(assert (=> b!7618866 (= e!4530519 e!4530517)))

(declare-fun res!3050144 () Bool)

(assert (=> b!7618866 (=> res!3050144 e!4530517)))

(declare-fun call!699796 () Bool)

(assert (=> b!7618866 (= res!3050144 call!699796)))

(declare-fun b!7618867 () Bool)

(assert (=> b!7618867 (= e!4530516 e!4530515)))

(declare-fun c!1404225 () Bool)

(assert (=> b!7618867 (= c!1404225 (is-EmptyLang!20296 r!14126))))

(declare-fun b!7618868 () Bool)

(declare-fun res!3050148 () Bool)

(assert (=> b!7618868 (=> res!3050148 e!4530517)))

(assert (=> b!7618868 (= res!3050148 (not (isEmpty!41639 (tail!15191 (_2!37880 lt!2656060)))))))

(declare-fun b!7618869 () Bool)

(assert (=> b!7618869 (= e!4530513 (matchR!9803 (derivativeStep!5851 r!14126 (head!15651 (_2!37880 lt!2656060))) (tail!15191 (_2!37880 lt!2656060))))))

(declare-fun b!7618870 () Bool)

(assert (=> b!7618870 (= e!4530518 e!4530519)))

(declare-fun res!3050146 () Bool)

(assert (=> b!7618870 (=> (not res!3050146) (not e!4530519))))

(assert (=> b!7618870 (= res!3050146 (not lt!2656127))))

(declare-fun b!7618871 () Bool)

(assert (=> b!7618871 (= e!4530516 (= lt!2656127 call!699796))))

(declare-fun b!7618872 () Bool)

(declare-fun res!3050147 () Bool)

(assert (=> b!7618872 (=> res!3050147 e!4530518)))

(assert (=> b!7618872 (= res!3050147 e!4530514)))

(declare-fun res!3050149 () Bool)

(assert (=> b!7618872 (=> (not res!3050149) (not e!4530514))))

(assert (=> b!7618872 (= res!3050149 lt!2656127)))

(declare-fun b!7618873 () Bool)

(declare-fun res!3050150 () Bool)

(assert (=> b!7618873 (=> (not res!3050150) (not e!4530514))))

(assert (=> b!7618873 (= res!3050150 (not call!699796))))

(declare-fun bm!699791 () Bool)

(assert (=> bm!699791 (= call!699796 (isEmpty!41639 (_2!37880 lt!2656060)))))

(assert (= (and d!2322972 c!1404227) b!7618860))

(assert (= (and d!2322972 (not c!1404227)) b!7618869))

(assert (= (and d!2322972 c!1404226) b!7618871))

(assert (= (and d!2322972 (not c!1404226)) b!7618867))

(assert (= (and b!7618867 c!1404225) b!7618863))

(assert (= (and b!7618867 (not c!1404225)) b!7618861))

(assert (= (and b!7618861 (not res!3050145)) b!7618872))

(assert (= (and b!7618872 res!3050149) b!7618873))

(assert (= (and b!7618873 res!3050150) b!7618862))

(assert (= (and b!7618862 res!3050143) b!7618864))

(assert (= (and b!7618872 (not res!3050147)) b!7618870))

(assert (= (and b!7618870 res!3050146) b!7618866))

(assert (= (and b!7618866 (not res!3050144)) b!7618868))

(assert (= (and b!7618868 (not res!3050148)) b!7618865))

(assert (= (or b!7618871 b!7618873 b!7618866) bm!699791))

(declare-fun m!8151360 () Bool)

(assert (=> b!7618864 m!8151360))

(assert (=> b!7618860 m!8151350))

(declare-fun m!8151362 () Bool)

(assert (=> b!7618868 m!8151362))

(assert (=> b!7618868 m!8151362))

(declare-fun m!8151364 () Bool)

(assert (=> b!7618868 m!8151364))

(assert (=> b!7618865 m!8151360))

(declare-fun m!8151366 () Bool)

(assert (=> d!2322972 m!8151366))

(assert (=> d!2322972 m!8151178))

(assert (=> bm!699791 m!8151366))

(assert (=> b!7618869 m!8151360))

(assert (=> b!7618869 m!8151360))

(declare-fun m!8151368 () Bool)

(assert (=> b!7618869 m!8151368))

(assert (=> b!7618869 m!8151362))

(assert (=> b!7618869 m!8151368))

(assert (=> b!7618869 m!8151362))

(declare-fun m!8151370 () Bool)

(assert (=> b!7618869 m!8151370))

(assert (=> b!7618862 m!8151362))

(assert (=> b!7618862 m!8151362))

(assert (=> b!7618862 m!8151364))

(assert (=> b!7618638 d!2322972))

(declare-fun b!7618874 () Bool)

(declare-fun e!4530520 () Bool)

(assert (=> b!7618874 (= e!4530520 (nullable!8871 (reg!20625 r!14126)))))

(declare-fun b!7618875 () Bool)

(declare-fun res!3050153 () Bool)

(declare-fun e!4530525 () Bool)

(assert (=> b!7618875 (=> res!3050153 e!4530525)))

(assert (=> b!7618875 (= res!3050153 (not (is-ElementMatch!20296 (reg!20625 r!14126))))))

(declare-fun e!4530522 () Bool)

(assert (=> b!7618875 (= e!4530522 e!4530525)))

(declare-fun b!7618876 () Bool)

(declare-fun res!3050151 () Bool)

(declare-fun e!4530521 () Bool)

(assert (=> b!7618876 (=> (not res!3050151) (not e!4530521))))

(assert (=> b!7618876 (= res!3050151 (isEmpty!41639 (tail!15191 (_1!37880 lt!2656060))))))

(declare-fun d!2322974 () Bool)

(declare-fun e!4530523 () Bool)

(assert (=> d!2322974 e!4530523))

(declare-fun c!1404229 () Bool)

(assert (=> d!2322974 (= c!1404229 (is-EmptyExpr!20296 (reg!20625 r!14126)))))

(declare-fun lt!2656128 () Bool)

(assert (=> d!2322974 (= lt!2656128 e!4530520)))

(declare-fun c!1404230 () Bool)

(assert (=> d!2322974 (= c!1404230 (isEmpty!41639 (_1!37880 lt!2656060)))))

(assert (=> d!2322974 (validRegex!10716 (reg!20625 r!14126))))

(assert (=> d!2322974 (= (matchR!9803 (reg!20625 r!14126) (_1!37880 lt!2656060)) lt!2656128)))

(declare-fun b!7618877 () Bool)

(assert (=> b!7618877 (= e!4530522 (not lt!2656128))))

(declare-fun b!7618878 () Bool)

(assert (=> b!7618878 (= e!4530521 (= (head!15651 (_1!37880 lt!2656060)) (c!1404188 (reg!20625 r!14126))))))

(declare-fun b!7618879 () Bool)

(declare-fun e!4530524 () Bool)

(assert (=> b!7618879 (= e!4530524 (not (= (head!15651 (_1!37880 lt!2656060)) (c!1404188 (reg!20625 r!14126)))))))

(declare-fun b!7618880 () Bool)

(declare-fun e!4530526 () Bool)

(assert (=> b!7618880 (= e!4530526 e!4530524)))

(declare-fun res!3050152 () Bool)

(assert (=> b!7618880 (=> res!3050152 e!4530524)))

(declare-fun call!699797 () Bool)

(assert (=> b!7618880 (= res!3050152 call!699797)))

(declare-fun b!7618881 () Bool)

(assert (=> b!7618881 (= e!4530523 e!4530522)))

(declare-fun c!1404228 () Bool)

(assert (=> b!7618881 (= c!1404228 (is-EmptyLang!20296 (reg!20625 r!14126)))))

(declare-fun b!7618882 () Bool)

(declare-fun res!3050156 () Bool)

(assert (=> b!7618882 (=> res!3050156 e!4530524)))

(assert (=> b!7618882 (= res!3050156 (not (isEmpty!41639 (tail!15191 (_1!37880 lt!2656060)))))))

(declare-fun b!7618883 () Bool)

(assert (=> b!7618883 (= e!4530520 (matchR!9803 (derivativeStep!5851 (reg!20625 r!14126) (head!15651 (_1!37880 lt!2656060))) (tail!15191 (_1!37880 lt!2656060))))))

(declare-fun b!7618884 () Bool)

(assert (=> b!7618884 (= e!4530525 e!4530526)))

(declare-fun res!3050154 () Bool)

(assert (=> b!7618884 (=> (not res!3050154) (not e!4530526))))

(assert (=> b!7618884 (= res!3050154 (not lt!2656128))))

(declare-fun b!7618885 () Bool)

(assert (=> b!7618885 (= e!4530523 (= lt!2656128 call!699797))))

(declare-fun b!7618886 () Bool)

(declare-fun res!3050155 () Bool)

(assert (=> b!7618886 (=> res!3050155 e!4530525)))

(assert (=> b!7618886 (= res!3050155 e!4530521)))

(declare-fun res!3050157 () Bool)

(assert (=> b!7618886 (=> (not res!3050157) (not e!4530521))))

(assert (=> b!7618886 (= res!3050157 lt!2656128)))

(declare-fun b!7618887 () Bool)

(declare-fun res!3050158 () Bool)

(assert (=> b!7618887 (=> (not res!3050158) (not e!4530521))))

(assert (=> b!7618887 (= res!3050158 (not call!699797))))

(declare-fun bm!699792 () Bool)

(assert (=> bm!699792 (= call!699797 (isEmpty!41639 (_1!37880 lt!2656060)))))

(assert (= (and d!2322974 c!1404230) b!7618874))

(assert (= (and d!2322974 (not c!1404230)) b!7618883))

(assert (= (and d!2322974 c!1404229) b!7618885))

(assert (= (and d!2322974 (not c!1404229)) b!7618881))

(assert (= (and b!7618881 c!1404228) b!7618877))

(assert (= (and b!7618881 (not c!1404228)) b!7618875))

(assert (= (and b!7618875 (not res!3050153)) b!7618886))

(assert (= (and b!7618886 res!3050157) b!7618887))

(assert (= (and b!7618887 res!3050158) b!7618876))

(assert (= (and b!7618876 res!3050151) b!7618878))

(assert (= (and b!7618886 (not res!3050155)) b!7618884))

(assert (= (and b!7618884 res!3050154) b!7618880))

(assert (= (and b!7618880 (not res!3050152)) b!7618882))

(assert (= (and b!7618882 (not res!3050156)) b!7618879))

(assert (= (or b!7618885 b!7618887 b!7618880) bm!699792))

(declare-fun m!8151372 () Bool)

(assert (=> b!7618878 m!8151372))

(assert (=> b!7618874 m!8151318))

(declare-fun m!8151374 () Bool)

(assert (=> b!7618882 m!8151374))

(assert (=> b!7618882 m!8151374))

(declare-fun m!8151376 () Bool)

(assert (=> b!7618882 m!8151376))

(assert (=> b!7618879 m!8151372))

(declare-fun m!8151378 () Bool)

(assert (=> d!2322974 m!8151378))

(assert (=> d!2322974 m!8151208))

(assert (=> bm!699792 m!8151378))

(assert (=> b!7618883 m!8151372))

(assert (=> b!7618883 m!8151372))

(declare-fun m!8151380 () Bool)

(assert (=> b!7618883 m!8151380))

(assert (=> b!7618883 m!8151374))

(assert (=> b!7618883 m!8151380))

(assert (=> b!7618883 m!8151374))

(declare-fun m!8151382 () Bool)

(assert (=> b!7618883 m!8151382))

(assert (=> b!7618876 m!8151374))

(assert (=> b!7618876 m!8151374))

(assert (=> b!7618876 m!8151376))

(assert (=> b!7618638 d!2322974))

(assert (=> b!7618638 d!2322950))

(declare-fun d!2322976 () Bool)

(assert (=> d!2322976 (= (get!25756 lt!2656062) (v!54505 lt!2656062))))

(assert (=> b!7618638 d!2322976))

(declare-fun d!2322978 () Bool)

(assert (=> d!2322978 (= (matchR!9803 (reg!20625 r!14126) (_1!37880 lt!2656060)) (matchRSpec!4495 (reg!20625 r!14126) (_1!37880 lt!2656060)))))

(declare-fun lt!2656131 () Unit!167432)

(declare-fun choose!58776 (Regex!20296 List!73149) Unit!167432)

(assert (=> d!2322978 (= lt!2656131 (choose!58776 (reg!20625 r!14126) (_1!37880 lt!2656060)))))

(assert (=> d!2322978 (validRegex!10716 (reg!20625 r!14126))))

(assert (=> d!2322978 (= (mainMatchTheorem!4489 (reg!20625 r!14126) (_1!37880 lt!2656060)) lt!2656131)))

(declare-fun bs!1943125 () Bool)

(assert (= bs!1943125 d!2322978))

(assert (=> bs!1943125 m!8151198))

(assert (=> bs!1943125 m!8151200))

(declare-fun m!8151384 () Bool)

(assert (=> bs!1943125 m!8151384))

(assert (=> bs!1943125 m!8151208))

(assert (=> b!7618638 d!2322978))

(declare-fun bs!1943126 () Bool)

(declare-fun b!7618953 () Bool)

(assert (= bs!1943126 (and b!7618953 b!7618630)))

(declare-fun lambda!468284 () Int)

(assert (=> bs!1943126 (not (= lambda!468284 lambda!468268))))

(declare-fun bs!1943127 () Bool)

(assert (= bs!1943127 (and b!7618953 d!2322956)))

(assert (=> bs!1943127 (not (= lambda!468284 lambda!468276))))

(assert (=> b!7618953 true))

(assert (=> b!7618953 true))

(declare-fun bs!1943128 () Bool)

(declare-fun b!7618956 () Bool)

(assert (= bs!1943128 (and b!7618956 b!7618630)))

(declare-fun lambda!468285 () Int)

(assert (=> bs!1943128 (not (= lambda!468285 lambda!468268))))

(declare-fun bs!1943129 () Bool)

(assert (= bs!1943129 (and b!7618956 d!2322956)))

(assert (=> bs!1943129 (not (= lambda!468285 lambda!468276))))

(declare-fun bs!1943130 () Bool)

(assert (= bs!1943130 (and b!7618956 b!7618953)))

(assert (=> bs!1943130 (not (= lambda!468285 lambda!468284))))

(assert (=> b!7618956 true))

(assert (=> b!7618956 true))

(declare-fun b!7618948 () Bool)

(declare-fun e!4530563 () Bool)

(declare-fun e!4530561 () Bool)

(assert (=> b!7618948 (= e!4530563 e!4530561)))

(declare-fun res!3050193 () Bool)

(assert (=> b!7618948 (= res!3050193 (not (is-EmptyLang!20296 r!14126)))))

(assert (=> b!7618948 (=> (not res!3050193) (not e!4530561))))

(declare-fun b!7618949 () Bool)

(declare-fun e!4530559 () Bool)

(declare-fun e!4530564 () Bool)

(assert (=> b!7618949 (= e!4530559 e!4530564)))

(declare-fun res!3050192 () Bool)

(assert (=> b!7618949 (= res!3050192 (matchRSpec!4495 (regOne!41105 r!14126) (_2!37880 lt!2656060)))))

(assert (=> b!7618949 (=> res!3050192 e!4530564)))

(declare-fun b!7618950 () Bool)

(assert (=> b!7618950 (= e!4530564 (matchRSpec!4495 (regTwo!41105 r!14126) (_2!37880 lt!2656060)))))

(declare-fun b!7618951 () Bool)

(declare-fun res!3050191 () Bool)

(declare-fun e!4530565 () Bool)

(assert (=> b!7618951 (=> res!3050191 e!4530565)))

(declare-fun call!699804 () Bool)

(assert (=> b!7618951 (= res!3050191 call!699804)))

(declare-fun e!4530560 () Bool)

(assert (=> b!7618951 (= e!4530560 e!4530565)))

(declare-fun b!7618952 () Bool)

(assert (=> b!7618952 (= e!4530559 e!4530560)))

(declare-fun c!1404248 () Bool)

(assert (=> b!7618952 (= c!1404248 (is-Star!20296 r!14126))))

(declare-fun call!699805 () Bool)

(assert (=> b!7618953 (= e!4530565 call!699805)))

(declare-fun bm!699799 () Bool)

(assert (=> bm!699799 (= call!699805 (Exists!4452 (ite c!1404248 lambda!468284 lambda!468285)))))

(declare-fun b!7618954 () Bool)

(declare-fun c!1404246 () Bool)

(assert (=> b!7618954 (= c!1404246 (is-Union!20296 r!14126))))

(declare-fun e!4530562 () Bool)

(assert (=> b!7618954 (= e!4530562 e!4530559)))

(declare-fun d!2322980 () Bool)

(declare-fun c!1404245 () Bool)

(assert (=> d!2322980 (= c!1404245 (is-EmptyExpr!20296 r!14126))))

(assert (=> d!2322980 (= (matchRSpec!4495 r!14126 (_2!37880 lt!2656060)) e!4530563)))

(declare-fun b!7618955 () Bool)

(assert (=> b!7618955 (= e!4530563 call!699804)))

(assert (=> b!7618956 (= e!4530560 call!699805)))

(declare-fun b!7618957 () Bool)

(assert (=> b!7618957 (= e!4530562 (= (_2!37880 lt!2656060) (Cons!73025 (c!1404188 r!14126) Nil!73025)))))

(declare-fun bm!699800 () Bool)

(assert (=> bm!699800 (= call!699804 (isEmpty!41639 (_2!37880 lt!2656060)))))

(declare-fun b!7618958 () Bool)

(declare-fun c!1404247 () Bool)

(assert (=> b!7618958 (= c!1404247 (is-ElementMatch!20296 r!14126))))

(assert (=> b!7618958 (= e!4530561 e!4530562)))

(assert (= (and d!2322980 c!1404245) b!7618955))

(assert (= (and d!2322980 (not c!1404245)) b!7618948))

(assert (= (and b!7618948 res!3050193) b!7618958))

(assert (= (and b!7618958 c!1404247) b!7618957))

(assert (= (and b!7618958 (not c!1404247)) b!7618954))

(assert (= (and b!7618954 c!1404246) b!7618949))

(assert (= (and b!7618954 (not c!1404246)) b!7618952))

(assert (= (and b!7618949 (not res!3050192)) b!7618950))

(assert (= (and b!7618952 c!1404248) b!7618951))

(assert (= (and b!7618952 (not c!1404248)) b!7618956))

(assert (= (and b!7618951 (not res!3050191)) b!7618953))

(assert (= (or b!7618953 b!7618956) bm!699799))

(assert (= (or b!7618955 b!7618951) bm!699800))

(declare-fun m!8151386 () Bool)

(assert (=> b!7618949 m!8151386))

(declare-fun m!8151388 () Bool)

(assert (=> b!7618950 m!8151388))

(declare-fun m!8151390 () Bool)

(assert (=> bm!699799 m!8151390))

(assert (=> bm!699800 m!8151366))

(assert (=> b!7618638 d!2322980))

(declare-fun d!2322982 () Bool)

(assert (=> d!2322982 (= (matchR!9803 r!14126 (_2!37880 lt!2656060)) (matchRSpec!4495 r!14126 (_2!37880 lt!2656060)))))

(declare-fun lt!2656135 () Unit!167432)

(assert (=> d!2322982 (= lt!2656135 (choose!58776 r!14126 (_2!37880 lt!2656060)))))

(assert (=> d!2322982 (validRegex!10716 r!14126)))

(assert (=> d!2322982 (= (mainMatchTheorem!4489 r!14126 (_2!37880 lt!2656060)) lt!2656135)))

(declare-fun bs!1943131 () Bool)

(assert (= bs!1943131 d!2322982))

(assert (=> bs!1943131 m!8151188))

(assert (=> bs!1943131 m!8151192))

(declare-fun m!8151392 () Bool)

(assert (=> bs!1943131 m!8151392))

(assert (=> bs!1943131 m!8151178))

(assert (=> b!7618638 d!2322982))

(declare-fun bs!1943132 () Bool)

(declare-fun b!7618978 () Bool)

(assert (= bs!1943132 (and b!7618978 b!7618630)))

(declare-fun lambda!468286 () Int)

(assert (=> bs!1943132 (not (= lambda!468286 lambda!468268))))

(declare-fun bs!1943133 () Bool)

(assert (= bs!1943133 (and b!7618978 d!2322956)))

(assert (=> bs!1943133 (not (= lambda!468286 lambda!468276))))

(declare-fun bs!1943134 () Bool)

(assert (= bs!1943134 (and b!7618978 b!7618953)))

(assert (=> bs!1943134 (= (and (= (_1!37880 lt!2656060) (_2!37880 lt!2656060)) (= (reg!20625 (reg!20625 r!14126)) (reg!20625 r!14126)) (= (reg!20625 r!14126) r!14126)) (= lambda!468286 lambda!468284))))

(declare-fun bs!1943135 () Bool)

(assert (= bs!1943135 (and b!7618978 b!7618956)))

(assert (=> bs!1943135 (not (= lambda!468286 lambda!468285))))

(assert (=> b!7618978 true))

(assert (=> b!7618978 true))

(declare-fun bs!1943136 () Bool)

(declare-fun b!7618981 () Bool)

(assert (= bs!1943136 (and b!7618981 b!7618953)))

(declare-fun lambda!468287 () Int)

(assert (=> bs!1943136 (not (= lambda!468287 lambda!468284))))

(declare-fun bs!1943137 () Bool)

(assert (= bs!1943137 (and b!7618981 d!2322956)))

(assert (=> bs!1943137 (not (= lambda!468287 lambda!468276))))

(declare-fun bs!1943138 () Bool)

(assert (= bs!1943138 (and b!7618981 b!7618630)))

(assert (=> bs!1943138 (not (= lambda!468287 lambda!468268))))

(declare-fun bs!1943139 () Bool)

(assert (= bs!1943139 (and b!7618981 b!7618956)))

(assert (=> bs!1943139 (= (and (= (_1!37880 lt!2656060) (_2!37880 lt!2656060)) (= (regOne!41104 (reg!20625 r!14126)) (regOne!41104 r!14126)) (= (regTwo!41104 (reg!20625 r!14126)) (regTwo!41104 r!14126))) (= lambda!468287 lambda!468285))))

(declare-fun bs!1943140 () Bool)

(assert (= bs!1943140 (and b!7618981 b!7618978)))

(assert (=> bs!1943140 (not (= lambda!468287 lambda!468286))))

(assert (=> b!7618981 true))

(assert (=> b!7618981 true))

(declare-fun b!7618973 () Bool)

(declare-fun e!4530577 () Bool)

(declare-fun e!4530575 () Bool)

(assert (=> b!7618973 (= e!4530577 e!4530575)))

(declare-fun res!3050204 () Bool)

(assert (=> b!7618973 (= res!3050204 (not (is-EmptyLang!20296 (reg!20625 r!14126))))))

(assert (=> b!7618973 (=> (not res!3050204) (not e!4530575))))

(declare-fun b!7618974 () Bool)

(declare-fun e!4530573 () Bool)

(declare-fun e!4530578 () Bool)

(assert (=> b!7618974 (= e!4530573 e!4530578)))

(declare-fun res!3050203 () Bool)

(assert (=> b!7618974 (= res!3050203 (matchRSpec!4495 (regOne!41105 (reg!20625 r!14126)) (_1!37880 lt!2656060)))))

(assert (=> b!7618974 (=> res!3050203 e!4530578)))

(declare-fun b!7618975 () Bool)

(assert (=> b!7618975 (= e!4530578 (matchRSpec!4495 (regTwo!41105 (reg!20625 r!14126)) (_1!37880 lt!2656060)))))

(declare-fun b!7618976 () Bool)

(declare-fun res!3050202 () Bool)

(declare-fun e!4530579 () Bool)

(assert (=> b!7618976 (=> res!3050202 e!4530579)))

(declare-fun call!699807 () Bool)

(assert (=> b!7618976 (= res!3050202 call!699807)))

(declare-fun e!4530574 () Bool)

(assert (=> b!7618976 (= e!4530574 e!4530579)))

(declare-fun b!7618977 () Bool)

(assert (=> b!7618977 (= e!4530573 e!4530574)))

(declare-fun c!1404255 () Bool)

(assert (=> b!7618977 (= c!1404255 (is-Star!20296 (reg!20625 r!14126)))))

(declare-fun call!699808 () Bool)

(assert (=> b!7618978 (= e!4530579 call!699808)))

(declare-fun bm!699802 () Bool)

(assert (=> bm!699802 (= call!699808 (Exists!4452 (ite c!1404255 lambda!468286 lambda!468287)))))

(declare-fun b!7618979 () Bool)

(declare-fun c!1404253 () Bool)

(assert (=> b!7618979 (= c!1404253 (is-Union!20296 (reg!20625 r!14126)))))

(declare-fun e!4530576 () Bool)

(assert (=> b!7618979 (= e!4530576 e!4530573)))

(declare-fun d!2322984 () Bool)

(declare-fun c!1404252 () Bool)

(assert (=> d!2322984 (= c!1404252 (is-EmptyExpr!20296 (reg!20625 r!14126)))))

(assert (=> d!2322984 (= (matchRSpec!4495 (reg!20625 r!14126) (_1!37880 lt!2656060)) e!4530577)))

(declare-fun b!7618980 () Bool)

(assert (=> b!7618980 (= e!4530577 call!699807)))

(assert (=> b!7618981 (= e!4530574 call!699808)))

(declare-fun b!7618982 () Bool)

(assert (=> b!7618982 (= e!4530576 (= (_1!37880 lt!2656060) (Cons!73025 (c!1404188 (reg!20625 r!14126)) Nil!73025)))))

(declare-fun bm!699803 () Bool)

(assert (=> bm!699803 (= call!699807 (isEmpty!41639 (_1!37880 lt!2656060)))))

(declare-fun b!7618983 () Bool)

(declare-fun c!1404254 () Bool)

(assert (=> b!7618983 (= c!1404254 (is-ElementMatch!20296 (reg!20625 r!14126)))))

(assert (=> b!7618983 (= e!4530575 e!4530576)))

(assert (= (and d!2322984 c!1404252) b!7618980))

(assert (= (and d!2322984 (not c!1404252)) b!7618973))

(assert (= (and b!7618973 res!3050204) b!7618983))

(assert (= (and b!7618983 c!1404254) b!7618982))

(assert (= (and b!7618983 (not c!1404254)) b!7618979))

(assert (= (and b!7618979 c!1404253) b!7618974))

(assert (= (and b!7618979 (not c!1404253)) b!7618977))

(assert (= (and b!7618974 (not res!3050203)) b!7618975))

(assert (= (and b!7618977 c!1404255) b!7618976))

(assert (= (and b!7618977 (not c!1404255)) b!7618981))

(assert (= (and b!7618976 (not res!3050202)) b!7618978))

(assert (= (or b!7618978 b!7618981) bm!699802))

(assert (= (or b!7618980 b!7618976) bm!699803))

(declare-fun m!8151408 () Bool)

(assert (=> b!7618974 m!8151408))

(declare-fun m!8151410 () Bool)

(assert (=> b!7618975 m!8151410))

(declare-fun m!8151412 () Bool)

(assert (=> bm!699802 m!8151412))

(assert (=> bm!699803 m!8151378))

(assert (=> b!7618638 d!2322984))

(declare-fun d!2322988 () Bool)

(assert (=> d!2322988 (matchR!9803 (Concat!29141 (reg!20625 r!14126) r!14126) (++!17606 (_1!37880 lt!2656060) (_2!37880 lt!2656060)))))

(declare-fun lt!2656139 () Unit!167432)

(declare-fun choose!58778 (Regex!20296 Regex!20296 List!73149 List!73149 List!73149) Unit!167432)

(assert (=> d!2322988 (= lt!2656139 (choose!58778 (reg!20625 r!14126) r!14126 (_1!37880 lt!2656060) (_2!37880 lt!2656060) s!9605))))

(assert (=> d!2322988 (validRegex!10716 (reg!20625 r!14126))))

(assert (=> d!2322988 (= (lemmaFindSeparationIsDefinedThenConcatMatches!123 (reg!20625 r!14126) r!14126 (_1!37880 lt!2656060) (_2!37880 lt!2656060) s!9605) lt!2656139)))

(declare-fun bs!1943141 () Bool)

(assert (= bs!1943141 d!2322988))

(assert (=> bs!1943141 m!8151214))

(assert (=> bs!1943141 m!8151214))

(declare-fun m!8151422 () Bool)

(assert (=> bs!1943141 m!8151422))

(declare-fun m!8151424 () Bool)

(assert (=> bs!1943141 m!8151424))

(assert (=> bs!1943141 m!8151208))

(assert (=> b!7618634 d!2322988))

(declare-fun b!7618998 () Bool)

(declare-fun e!4530587 () Bool)

(assert (=> b!7618998 (= e!4530587 (nullable!8871 (Concat!29141 (reg!20625 r!14126) r!14126)))))

(declare-fun b!7618999 () Bool)

(declare-fun res!3050215 () Bool)

(declare-fun e!4530592 () Bool)

(assert (=> b!7618999 (=> res!3050215 e!4530592)))

(assert (=> b!7618999 (= res!3050215 (not (is-ElementMatch!20296 (Concat!29141 (reg!20625 r!14126) r!14126))))))

(declare-fun e!4530589 () Bool)

(assert (=> b!7618999 (= e!4530589 e!4530592)))

(declare-fun b!7619000 () Bool)

(declare-fun res!3050213 () Bool)

(declare-fun e!4530588 () Bool)

(assert (=> b!7619000 (=> (not res!3050213) (not e!4530588))))

(assert (=> b!7619000 (= res!3050213 (isEmpty!41639 (tail!15191 lt!2656058)))))

(declare-fun d!2322992 () Bool)

(declare-fun e!4530590 () Bool)

(assert (=> d!2322992 e!4530590))

(declare-fun c!1404260 () Bool)

(assert (=> d!2322992 (= c!1404260 (is-EmptyExpr!20296 (Concat!29141 (reg!20625 r!14126) r!14126)))))

(declare-fun lt!2656140 () Bool)

(assert (=> d!2322992 (= lt!2656140 e!4530587)))

(declare-fun c!1404261 () Bool)

(assert (=> d!2322992 (= c!1404261 (isEmpty!41639 lt!2656058))))

(assert (=> d!2322992 (validRegex!10716 (Concat!29141 (reg!20625 r!14126) r!14126))))

(assert (=> d!2322992 (= (matchR!9803 (Concat!29141 (reg!20625 r!14126) r!14126) lt!2656058) lt!2656140)))

(declare-fun b!7619001 () Bool)

(assert (=> b!7619001 (= e!4530589 (not lt!2656140))))

(declare-fun b!7619002 () Bool)

(assert (=> b!7619002 (= e!4530588 (= (head!15651 lt!2656058) (c!1404188 (Concat!29141 (reg!20625 r!14126) r!14126))))))

(declare-fun b!7619003 () Bool)

(declare-fun e!4530591 () Bool)

(assert (=> b!7619003 (= e!4530591 (not (= (head!15651 lt!2656058) (c!1404188 (Concat!29141 (reg!20625 r!14126) r!14126)))))))

(declare-fun b!7619004 () Bool)

(declare-fun e!4530593 () Bool)

(assert (=> b!7619004 (= e!4530593 e!4530591)))

(declare-fun res!3050214 () Bool)

(assert (=> b!7619004 (=> res!3050214 e!4530591)))

(declare-fun call!699810 () Bool)

(assert (=> b!7619004 (= res!3050214 call!699810)))

(declare-fun b!7619005 () Bool)

(assert (=> b!7619005 (= e!4530590 e!4530589)))

(declare-fun c!1404259 () Bool)

(assert (=> b!7619005 (= c!1404259 (is-EmptyLang!20296 (Concat!29141 (reg!20625 r!14126) r!14126)))))

(declare-fun b!7619006 () Bool)

(declare-fun res!3050218 () Bool)

(assert (=> b!7619006 (=> res!3050218 e!4530591)))

(assert (=> b!7619006 (= res!3050218 (not (isEmpty!41639 (tail!15191 lt!2656058))))))

(declare-fun b!7619007 () Bool)

(assert (=> b!7619007 (= e!4530587 (matchR!9803 (derivativeStep!5851 (Concat!29141 (reg!20625 r!14126) r!14126) (head!15651 lt!2656058)) (tail!15191 lt!2656058)))))

(declare-fun b!7619008 () Bool)

(assert (=> b!7619008 (= e!4530592 e!4530593)))

(declare-fun res!3050216 () Bool)

(assert (=> b!7619008 (=> (not res!3050216) (not e!4530593))))

(assert (=> b!7619008 (= res!3050216 (not lt!2656140))))

(declare-fun b!7619009 () Bool)

(assert (=> b!7619009 (= e!4530590 (= lt!2656140 call!699810))))

(declare-fun b!7619010 () Bool)

(declare-fun res!3050217 () Bool)

(assert (=> b!7619010 (=> res!3050217 e!4530592)))

(assert (=> b!7619010 (= res!3050217 e!4530588)))

(declare-fun res!3050219 () Bool)

(assert (=> b!7619010 (=> (not res!3050219) (not e!4530588))))

(assert (=> b!7619010 (= res!3050219 lt!2656140)))

(declare-fun b!7619011 () Bool)

(declare-fun res!3050220 () Bool)

(assert (=> b!7619011 (=> (not res!3050220) (not e!4530588))))

(assert (=> b!7619011 (= res!3050220 (not call!699810))))

(declare-fun bm!699805 () Bool)

(assert (=> bm!699805 (= call!699810 (isEmpty!41639 lt!2656058))))

(assert (= (and d!2322992 c!1404261) b!7618998))

(assert (= (and d!2322992 (not c!1404261)) b!7619007))

(assert (= (and d!2322992 c!1404260) b!7619009))

(assert (= (and d!2322992 (not c!1404260)) b!7619005))

(assert (= (and b!7619005 c!1404259) b!7619001))

(assert (= (and b!7619005 (not c!1404259)) b!7618999))

(assert (= (and b!7618999 (not res!3050215)) b!7619010))

(assert (= (and b!7619010 res!3050219) b!7619011))

(assert (= (and b!7619011 res!3050220) b!7619000))

(assert (= (and b!7619000 res!3050213) b!7619002))

(assert (= (and b!7619010 (not res!3050217)) b!7619008))

(assert (= (and b!7619008 res!3050216) b!7619004))

(assert (= (and b!7619004 (not res!3050214)) b!7619006))

(assert (= (and b!7619006 (not res!3050218)) b!7619003))

(assert (= (or b!7619009 b!7619011 b!7619004) bm!699805))

(declare-fun m!8151426 () Bool)

(assert (=> b!7619002 m!8151426))

(declare-fun m!8151428 () Bool)

(assert (=> b!7618998 m!8151428))

(declare-fun m!8151430 () Bool)

(assert (=> b!7619006 m!8151430))

(assert (=> b!7619006 m!8151430))

(declare-fun m!8151432 () Bool)

(assert (=> b!7619006 m!8151432))

(assert (=> b!7619003 m!8151426))

(declare-fun m!8151434 () Bool)

(assert (=> d!2322992 m!8151434))

(declare-fun m!8151436 () Bool)

(assert (=> d!2322992 m!8151436))

(assert (=> bm!699805 m!8151434))

(assert (=> b!7619007 m!8151426))

(assert (=> b!7619007 m!8151426))

(declare-fun m!8151438 () Bool)

(assert (=> b!7619007 m!8151438))

(assert (=> b!7619007 m!8151430))

(assert (=> b!7619007 m!8151438))

(assert (=> b!7619007 m!8151430))

(declare-fun m!8151440 () Bool)

(assert (=> b!7619007 m!8151440))

(assert (=> b!7619000 m!8151430))

(assert (=> b!7619000 m!8151430))

(assert (=> b!7619000 m!8151432))

(assert (=> b!7618634 d!2322992))

(declare-fun b!7619012 () Bool)

(declare-fun e!4530594 () Bool)

(assert (=> b!7619012 (= e!4530594 (nullable!8871 r!14126))))

(declare-fun b!7619013 () Bool)

(declare-fun res!3050223 () Bool)

(declare-fun e!4530599 () Bool)

(assert (=> b!7619013 (=> res!3050223 e!4530599)))

(assert (=> b!7619013 (= res!3050223 (not (is-ElementMatch!20296 r!14126)))))

(declare-fun e!4530596 () Bool)

(assert (=> b!7619013 (= e!4530596 e!4530599)))

(declare-fun b!7619014 () Bool)

(declare-fun res!3050221 () Bool)

(declare-fun e!4530595 () Bool)

(assert (=> b!7619014 (=> (not res!3050221) (not e!4530595))))

(assert (=> b!7619014 (= res!3050221 (isEmpty!41639 (tail!15191 lt!2656058)))))

(declare-fun d!2322994 () Bool)

(declare-fun e!4530597 () Bool)

(assert (=> d!2322994 e!4530597))

(declare-fun c!1404263 () Bool)

(assert (=> d!2322994 (= c!1404263 (is-EmptyExpr!20296 r!14126))))

(declare-fun lt!2656141 () Bool)

(assert (=> d!2322994 (= lt!2656141 e!4530594)))

(declare-fun c!1404264 () Bool)

(assert (=> d!2322994 (= c!1404264 (isEmpty!41639 lt!2656058))))

(assert (=> d!2322994 (validRegex!10716 r!14126)))

(assert (=> d!2322994 (= (matchR!9803 r!14126 lt!2656058) lt!2656141)))

(declare-fun b!7619015 () Bool)

(assert (=> b!7619015 (= e!4530596 (not lt!2656141))))

(declare-fun b!7619016 () Bool)

(assert (=> b!7619016 (= e!4530595 (= (head!15651 lt!2656058) (c!1404188 r!14126)))))

(declare-fun b!7619017 () Bool)

(declare-fun e!4530598 () Bool)

(assert (=> b!7619017 (= e!4530598 (not (= (head!15651 lt!2656058) (c!1404188 r!14126))))))

(declare-fun b!7619018 () Bool)

(declare-fun e!4530600 () Bool)

(assert (=> b!7619018 (= e!4530600 e!4530598)))

(declare-fun res!3050222 () Bool)

(assert (=> b!7619018 (=> res!3050222 e!4530598)))

(declare-fun call!699811 () Bool)

(assert (=> b!7619018 (= res!3050222 call!699811)))

(declare-fun b!7619019 () Bool)

(assert (=> b!7619019 (= e!4530597 e!4530596)))

(declare-fun c!1404262 () Bool)

(assert (=> b!7619019 (= c!1404262 (is-EmptyLang!20296 r!14126))))

(declare-fun b!7619020 () Bool)

(declare-fun res!3050226 () Bool)

(assert (=> b!7619020 (=> res!3050226 e!4530598)))

(assert (=> b!7619020 (= res!3050226 (not (isEmpty!41639 (tail!15191 lt!2656058))))))

(declare-fun b!7619021 () Bool)

(assert (=> b!7619021 (= e!4530594 (matchR!9803 (derivativeStep!5851 r!14126 (head!15651 lt!2656058)) (tail!15191 lt!2656058)))))

(declare-fun b!7619022 () Bool)

(assert (=> b!7619022 (= e!4530599 e!4530600)))

(declare-fun res!3050224 () Bool)

(assert (=> b!7619022 (=> (not res!3050224) (not e!4530600))))

(assert (=> b!7619022 (= res!3050224 (not lt!2656141))))

(declare-fun b!7619023 () Bool)

(assert (=> b!7619023 (= e!4530597 (= lt!2656141 call!699811))))

(declare-fun b!7619024 () Bool)

(declare-fun res!3050225 () Bool)

(assert (=> b!7619024 (=> res!3050225 e!4530599)))

(assert (=> b!7619024 (= res!3050225 e!4530595)))

(declare-fun res!3050227 () Bool)

(assert (=> b!7619024 (=> (not res!3050227) (not e!4530595))))

(assert (=> b!7619024 (= res!3050227 lt!2656141)))

(declare-fun b!7619025 () Bool)

(declare-fun res!3050228 () Bool)

(assert (=> b!7619025 (=> (not res!3050228) (not e!4530595))))

(assert (=> b!7619025 (= res!3050228 (not call!699811))))

(declare-fun bm!699806 () Bool)

(assert (=> bm!699806 (= call!699811 (isEmpty!41639 lt!2656058))))

(assert (= (and d!2322994 c!1404264) b!7619012))

(assert (= (and d!2322994 (not c!1404264)) b!7619021))

(assert (= (and d!2322994 c!1404263) b!7619023))

(assert (= (and d!2322994 (not c!1404263)) b!7619019))

(assert (= (and b!7619019 c!1404262) b!7619015))

(assert (= (and b!7619019 (not c!1404262)) b!7619013))

(assert (= (and b!7619013 (not res!3050223)) b!7619024))

(assert (= (and b!7619024 res!3050227) b!7619025))

(assert (= (and b!7619025 res!3050228) b!7619014))

(assert (= (and b!7619014 res!3050221) b!7619016))

(assert (= (and b!7619024 (not res!3050225)) b!7619022))

(assert (= (and b!7619022 res!3050224) b!7619018))

(assert (= (and b!7619018 (not res!3050222)) b!7619020))

(assert (= (and b!7619020 (not res!3050226)) b!7619017))

(assert (= (or b!7619023 b!7619025 b!7619018) bm!699806))

(assert (=> b!7619016 m!8151426))

(assert (=> b!7619012 m!8151350))

(assert (=> b!7619020 m!8151430))

(assert (=> b!7619020 m!8151430))

(assert (=> b!7619020 m!8151432))

(assert (=> b!7619017 m!8151426))

(assert (=> d!2322994 m!8151434))

(assert (=> d!2322994 m!8151178))

(assert (=> bm!699806 m!8151434))

(assert (=> b!7619021 m!8151426))

(assert (=> b!7619021 m!8151426))

(declare-fun m!8151442 () Bool)

(assert (=> b!7619021 m!8151442))

(assert (=> b!7619021 m!8151430))

(assert (=> b!7619021 m!8151442))

(assert (=> b!7619021 m!8151430))

(declare-fun m!8151444 () Bool)

(assert (=> b!7619021 m!8151444))

(assert (=> b!7619014 m!8151430))

(assert (=> b!7619014 m!8151430))

(assert (=> b!7619014 m!8151432))

(assert (=> b!7618634 d!2322994))

(declare-fun d!2322996 () Bool)

(assert (=> d!2322996 (matchR!9803 (Star!20296 (reg!20625 r!14126)) (++!17606 (_1!37880 lt!2656060) (_2!37880 lt!2656060)))))

(declare-fun lt!2656147 () Unit!167432)

(declare-fun choose!58780 (Regex!20296 List!73149 List!73149) Unit!167432)

(assert (=> d!2322996 (= lt!2656147 (choose!58780 (reg!20625 r!14126) (_1!37880 lt!2656060) (_2!37880 lt!2656060)))))

(assert (=> d!2322996 (validRegex!10716 (Star!20296 (reg!20625 r!14126)))))

(assert (=> d!2322996 (= (lemmaStarApp!177 (reg!20625 r!14126) (_1!37880 lt!2656060) (_2!37880 lt!2656060)) lt!2656147)))

(declare-fun bs!1943143 () Bool)

(assert (= bs!1943143 d!2322996))

(assert (=> bs!1943143 m!8151214))

(assert (=> bs!1943143 m!8151214))

(declare-fun m!8151452 () Bool)

(assert (=> bs!1943143 m!8151452))

(declare-fun m!8151454 () Bool)

(assert (=> bs!1943143 m!8151454))

(declare-fun m!8151456 () Bool)

(assert (=> bs!1943143 m!8151456))

(assert (=> b!7618634 d!2322996))

(declare-fun b!7619029 () Bool)

(declare-fun e!4530601 () Bool)

(declare-fun lt!2656148 () List!73149)

(assert (=> b!7619029 (= e!4530601 (or (not (= (_2!37880 lt!2656060) Nil!73025)) (= lt!2656148 (_1!37880 lt!2656060))))))

(declare-fun b!7619028 () Bool)

(declare-fun res!3050230 () Bool)

(assert (=> b!7619028 (=> (not res!3050230) (not e!4530601))))

(assert (=> b!7619028 (= res!3050230 (= (size!42531 lt!2656148) (+ (size!42531 (_1!37880 lt!2656060)) (size!42531 (_2!37880 lt!2656060)))))))

(declare-fun b!7619026 () Bool)

(declare-fun e!4530602 () List!73149)

(assert (=> b!7619026 (= e!4530602 (_2!37880 lt!2656060))))

(declare-fun b!7619027 () Bool)

(assert (=> b!7619027 (= e!4530602 (Cons!73025 (h!79473 (_1!37880 lt!2656060)) (++!17606 (t!387884 (_1!37880 lt!2656060)) (_2!37880 lt!2656060))))))

(declare-fun d!2323000 () Bool)

(assert (=> d!2323000 e!4530601))

(declare-fun res!3050229 () Bool)

(assert (=> d!2323000 (=> (not res!3050229) (not e!4530601))))

(assert (=> d!2323000 (= res!3050229 (= (content!15438 lt!2656148) (set.union (content!15438 (_1!37880 lt!2656060)) (content!15438 (_2!37880 lt!2656060)))))))

(assert (=> d!2323000 (= lt!2656148 e!4530602)))

(declare-fun c!1404265 () Bool)

(assert (=> d!2323000 (= c!1404265 (is-Nil!73025 (_1!37880 lt!2656060)))))

(assert (=> d!2323000 (= (++!17606 (_1!37880 lt!2656060) (_2!37880 lt!2656060)) lt!2656148)))

(assert (= (and d!2323000 c!1404265) b!7619026))

(assert (= (and d!2323000 (not c!1404265)) b!7619027))

(assert (= (and d!2323000 res!3050229) b!7619028))

(assert (= (and b!7619028 res!3050230) b!7619029))

(declare-fun m!8151458 () Bool)

(assert (=> b!7619028 m!8151458))

(declare-fun m!8151460 () Bool)

(assert (=> b!7619028 m!8151460))

(declare-fun m!8151462 () Bool)

(assert (=> b!7619028 m!8151462))

(declare-fun m!8151464 () Bool)

(assert (=> b!7619027 m!8151464))

(declare-fun m!8151466 () Bool)

(assert (=> d!2323000 m!8151466))

(declare-fun m!8151468 () Bool)

(assert (=> d!2323000 m!8151468))

(declare-fun m!8151470 () Bool)

(assert (=> d!2323000 m!8151470))

(assert (=> b!7618634 d!2323000))

(declare-fun b!7619034 () Bool)

(declare-fun e!4530605 () Bool)

(declare-fun tp!2224718 () Bool)

(assert (=> b!7619034 (= e!4530605 (and tp_is_empty!50947 tp!2224718))))

(assert (=> b!7618641 (= tp!2224685 e!4530605)))

(assert (= (and b!7618641 (is-Cons!73025 (t!387884 (_1!37880 cut!6)))) b!7619034))

(declare-fun e!4530608 () Bool)

(assert (=> b!7618636 (= tp!2224689 e!4530608)))

(declare-fun b!7619046 () Bool)

(declare-fun tp!2224731 () Bool)

(declare-fun tp!2224732 () Bool)

(assert (=> b!7619046 (= e!4530608 (and tp!2224731 tp!2224732))))

(declare-fun b!7619048 () Bool)

(declare-fun tp!2224730 () Bool)

(declare-fun tp!2224729 () Bool)

(assert (=> b!7619048 (= e!4530608 (and tp!2224730 tp!2224729))))

(declare-fun b!7619047 () Bool)

(declare-fun tp!2224733 () Bool)

(assert (=> b!7619047 (= e!4530608 tp!2224733)))

(declare-fun b!7619045 () Bool)

(assert (=> b!7619045 (= e!4530608 tp_is_empty!50947)))

(assert (= (and b!7618636 (is-ElementMatch!20296 (regOne!41105 r!14126))) b!7619045))

(assert (= (and b!7618636 (is-Concat!29141 (regOne!41105 r!14126))) b!7619046))

(assert (= (and b!7618636 (is-Star!20296 (regOne!41105 r!14126))) b!7619047))

(assert (= (and b!7618636 (is-Union!20296 (regOne!41105 r!14126))) b!7619048))

(declare-fun e!4530609 () Bool)

(assert (=> b!7618636 (= tp!2224684 e!4530609)))

(declare-fun b!7619050 () Bool)

(declare-fun tp!2224736 () Bool)

(declare-fun tp!2224737 () Bool)

(assert (=> b!7619050 (= e!4530609 (and tp!2224736 tp!2224737))))

(declare-fun b!7619052 () Bool)

(declare-fun tp!2224735 () Bool)

(declare-fun tp!2224734 () Bool)

(assert (=> b!7619052 (= e!4530609 (and tp!2224735 tp!2224734))))

(declare-fun b!7619051 () Bool)

(declare-fun tp!2224738 () Bool)

(assert (=> b!7619051 (= e!4530609 tp!2224738)))

(declare-fun b!7619049 () Bool)

(assert (=> b!7619049 (= e!4530609 tp_is_empty!50947)))

(assert (= (and b!7618636 (is-ElementMatch!20296 (regTwo!41105 r!14126))) b!7619049))

(assert (= (and b!7618636 (is-Concat!29141 (regTwo!41105 r!14126))) b!7619050))

(assert (= (and b!7618636 (is-Star!20296 (regTwo!41105 r!14126))) b!7619051))

(assert (= (and b!7618636 (is-Union!20296 (regTwo!41105 r!14126))) b!7619052))

(declare-fun e!4530610 () Bool)

(assert (=> b!7618637 (= tp!2224691 e!4530610)))

(declare-fun b!7619054 () Bool)

(declare-fun tp!2224741 () Bool)

(declare-fun tp!2224742 () Bool)

(assert (=> b!7619054 (= e!4530610 (and tp!2224741 tp!2224742))))

(declare-fun b!7619056 () Bool)

(declare-fun tp!2224740 () Bool)

(declare-fun tp!2224739 () Bool)

(assert (=> b!7619056 (= e!4530610 (and tp!2224740 tp!2224739))))

(declare-fun b!7619055 () Bool)

(declare-fun tp!2224743 () Bool)

(assert (=> b!7619055 (= e!4530610 tp!2224743)))

(declare-fun b!7619053 () Bool)

(assert (=> b!7619053 (= e!4530610 tp_is_empty!50947)))

(assert (= (and b!7618637 (is-ElementMatch!20296 (regOne!41104 r!14126))) b!7619053))

(assert (= (and b!7618637 (is-Concat!29141 (regOne!41104 r!14126))) b!7619054))

(assert (= (and b!7618637 (is-Star!20296 (regOne!41104 r!14126))) b!7619055))

(assert (= (and b!7618637 (is-Union!20296 (regOne!41104 r!14126))) b!7619056))

(declare-fun e!4530611 () Bool)

(assert (=> b!7618637 (= tp!2224686 e!4530611)))

(declare-fun b!7619058 () Bool)

(declare-fun tp!2224746 () Bool)

(declare-fun tp!2224747 () Bool)

(assert (=> b!7619058 (= e!4530611 (and tp!2224746 tp!2224747))))

(declare-fun b!7619060 () Bool)

(declare-fun tp!2224745 () Bool)

(declare-fun tp!2224744 () Bool)

(assert (=> b!7619060 (= e!4530611 (and tp!2224745 tp!2224744))))

(declare-fun b!7619059 () Bool)

(declare-fun tp!2224748 () Bool)

(assert (=> b!7619059 (= e!4530611 tp!2224748)))

(declare-fun b!7619057 () Bool)

(assert (=> b!7619057 (= e!4530611 tp_is_empty!50947)))

(assert (= (and b!7618637 (is-ElementMatch!20296 (regTwo!41104 r!14126))) b!7619057))

(assert (= (and b!7618637 (is-Concat!29141 (regTwo!41104 r!14126))) b!7619058))

(assert (= (and b!7618637 (is-Star!20296 (regTwo!41104 r!14126))) b!7619059))

(assert (= (and b!7618637 (is-Union!20296 (regTwo!41104 r!14126))) b!7619060))

(declare-fun b!7619061 () Bool)

(declare-fun e!4530612 () Bool)

(declare-fun tp!2224749 () Bool)

(assert (=> b!7619061 (= e!4530612 (and tp_is_empty!50947 tp!2224749))))

(assert (=> b!7618628 (= tp!2224687 e!4530612)))

(assert (= (and b!7618628 (is-Cons!73025 (t!387884 (_2!37880 cut!6)))) b!7619061))

(declare-fun b!7619062 () Bool)

(declare-fun e!4530613 () Bool)

(declare-fun tp!2224750 () Bool)

(assert (=> b!7619062 (= e!4530613 (and tp_is_empty!50947 tp!2224750))))

(assert (=> b!7618639 (= tp!2224688 e!4530613)))

(assert (= (and b!7618639 (is-Cons!73025 (t!387884 s!9605))) b!7619062))

(declare-fun e!4530614 () Bool)

(assert (=> b!7618640 (= tp!2224690 e!4530614)))

(declare-fun b!7619064 () Bool)

(declare-fun tp!2224753 () Bool)

(declare-fun tp!2224754 () Bool)

(assert (=> b!7619064 (= e!4530614 (and tp!2224753 tp!2224754))))

(declare-fun b!7619066 () Bool)

(declare-fun tp!2224752 () Bool)

(declare-fun tp!2224751 () Bool)

(assert (=> b!7619066 (= e!4530614 (and tp!2224752 tp!2224751))))

(declare-fun b!7619065 () Bool)

(declare-fun tp!2224755 () Bool)

(assert (=> b!7619065 (= e!4530614 tp!2224755)))

(declare-fun b!7619063 () Bool)

(assert (=> b!7619063 (= e!4530614 tp_is_empty!50947)))

(assert (= (and b!7618640 (is-ElementMatch!20296 (reg!20625 r!14126))) b!7619063))

(assert (= (and b!7618640 (is-Concat!29141 (reg!20625 r!14126))) b!7619064))

(assert (= (and b!7618640 (is-Star!20296 (reg!20625 r!14126))) b!7619065))

(assert (= (and b!7618640 (is-Union!20296 (reg!20625 r!14126))) b!7619066))

(push 1)

(assert (not b!7618869))

(assert (not b!7619052))

(assert (not d!2322950))

(assert (not b!7619021))

(assert (not b!7619054))

(assert (not b!7618850))

(assert (not d!2322982))

(assert (not bm!699800))

(assert (not d!2322952))

(assert (not b!7619047))

(assert (not b!7618998))

(assert (not bm!699802))

(assert (not bm!699803))

(assert (not d!2322978))

(assert (not b!7619034))

(assert (not bm!699784))

(assert (not b!7618860))

(assert (not b!7618846))

(assert (not b!7618862))

(assert (not b!7618865))

(assert (not b!7618751))

(assert (not b!7618848))

(assert (not b!7618868))

(assert (not b!7618811))

(assert (not bm!699785))

(assert (not b!7619016))

(assert (not bm!699791))

(assert (not b!7619012))

(assert (not b!7618975))

(assert (not bm!699805))

(assert (not b!7619062))

(assert (not b!7619055))

(assert (not b!7619002))

(assert (not d!2322968))

(assert tp_is_empty!50947)

(assert (not d!2322992))

(assert (not b!7618876))

(assert (not b!7618812))

(assert (not bm!699782))

(assert (not b!7619051))

(assert (not b!7618974))

(assert (not b!7618744))

(assert (not d!2322974))

(assert (not b!7619060))

(assert (not d!2323000))

(assert (not b!7618882))

(assert (not b!7618854))

(assert (not b!7618746))

(assert (not d!2322996))

(assert (not b!7618879))

(assert (not b!7618788))

(assert (not d!2322956))

(assert (not d!2322994))

(assert (not b!7619061))

(assert (not b!7619000))

(assert (not b!7618950))

(assert (not d!2322954))

(assert (not b!7618749))

(assert (not b!7618851))

(assert (not b!7619046))

(assert (not d!2322988))

(assert (not b!7619007))

(assert (not d!2322972))

(assert (not b!7618855))

(assert (not b!7619050))

(assert (not bm!699792))

(assert (not b!7619064))

(assert (not b!7618878))

(assert (not b!7619014))

(assert (not bm!699787))

(assert (not b!7619065))

(assert (not b!7619048))

(assert (not bm!699806))

(assert (not b!7619056))

(assert (not b!7618797))

(assert (not bm!699799))

(assert (not d!2322966))

(assert (not b!7618949))

(assert (not b!7619017))

(assert (not b!7619058))

(assert (not b!7619066))

(assert (not b!7619003))

(assert (not b!7619028))

(assert (not b!7618747))

(assert (not b!7618745))

(assert (not b!7619059))

(assert (not b!7619020))

(assert (not b!7618883))

(assert (not bm!699790))

(assert (not b!7619027))

(assert (not b!7618864))

(assert (not b!7618874))

(assert (not b!7619006))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

