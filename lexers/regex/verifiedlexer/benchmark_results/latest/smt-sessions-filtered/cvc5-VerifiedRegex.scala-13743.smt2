; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733766 () Bool)

(assert start!733766)

(declare-fun b!7616887 () Bool)

(assert (=> b!7616887 true))

(assert (=> b!7616887 true))

(declare-fun b!7616882 () Bool)

(declare-fun e!4529498 () Bool)

(declare-fun tp!2224215 () Bool)

(declare-fun tp!2224212 () Bool)

(assert (=> b!7616882 (= e!4529498 (and tp!2224215 tp!2224212))))

(declare-fun b!7616883 () Bool)

(declare-fun e!4529499 () Bool)

(assert (=> b!7616883 (= e!4529499 true)))

(declare-fun lt!2655542 () Bool)

(declare-datatypes ((C!40886 0))(
  ( (C!40887 (val!30883 Int)) )
))
(declare-datatypes ((Regex!20280 0))(
  ( (ElementMatch!20280 (c!1403945 C!40886)) (Concat!29125 (regOne!41072 Regex!20280) (regTwo!41072 Regex!20280)) (EmptyExpr!20280) (Star!20280 (reg!20609 Regex!20280)) (EmptyLang!20280) (Union!20280 (regOne!41073 Regex!20280) (regTwo!41073 Regex!20280)) )
))
(declare-fun r!14126 () Regex!20280)

(declare-datatypes ((List!73133 0))(
  ( (Nil!73009) (Cons!73009 (h!79457 C!40886) (t!387868 List!73133)) )
))
(declare-fun s!9605 () List!73133)

(declare-fun matchR!9787 (Regex!20280 List!73133) Bool)

(assert (=> b!7616883 (= lt!2655542 (matchR!9787 r!14126 s!9605))))

(declare-datatypes ((tuple2!69122 0))(
  ( (tuple2!69123 (_1!37864 List!73133) (_2!37864 List!73133)) )
))
(declare-fun lt!2655540 () tuple2!69122)

(declare-fun matchRSpec!4479 (Regex!20280 List!73133) Bool)

(assert (=> b!7616883 (= (matchR!9787 r!14126 (_2!37864 lt!2655540)) (matchRSpec!4479 r!14126 (_2!37864 lt!2655540)))))

(declare-datatypes ((Unit!167392 0))(
  ( (Unit!167393) )
))
(declare-fun lt!2655541 () Unit!167392)

(declare-fun mainMatchTheorem!4473 (Regex!20280 List!73133) Unit!167392)

(assert (=> b!7616883 (= lt!2655541 (mainMatchTheorem!4473 r!14126 (_2!37864 lt!2655540)))))

(assert (=> b!7616883 (= (matchR!9787 (reg!20609 r!14126) (_1!37864 lt!2655540)) (matchRSpec!4479 (reg!20609 r!14126) (_1!37864 lt!2655540)))))

(declare-fun lt!2655545 () Unit!167392)

(assert (=> b!7616883 (= lt!2655545 (mainMatchTheorem!4473 (reg!20609 r!14126) (_1!37864 lt!2655540)))))

(declare-datatypes ((Option!17355 0))(
  ( (None!17354) (Some!17354 (v!54489 tuple2!69122)) )
))
(declare-fun lt!2655544 () Option!17355)

(declare-fun get!25732 (Option!17355) tuple2!69122)

(assert (=> b!7616883 (= lt!2655540 (get!25732 lt!2655544))))

(declare-fun b!7616884 () Bool)

(declare-fun tp!2224217 () Bool)

(declare-fun tp!2224213 () Bool)

(assert (=> b!7616884 (= e!4529498 (and tp!2224217 tp!2224213))))

(declare-fun b!7616885 () Bool)

(declare-fun res!3049203 () Bool)

(declare-fun e!4529497 () Bool)

(assert (=> b!7616885 (=> (not res!3049203) (not e!4529497))))

(declare-fun isEmpty!41620 (List!73133) Bool)

(assert (=> b!7616885 (= res!3049203 (not (isEmpty!41620 s!9605)))))

(declare-fun res!3049204 () Bool)

(assert (=> start!733766 (=> (not res!3049204) (not e!4529497))))

(declare-fun validRegex!10700 (Regex!20280) Bool)

(assert (=> start!733766 (= res!3049204 (validRegex!10700 r!14126))))

(assert (=> start!733766 e!4529497))

(assert (=> start!733766 e!4529498))

(declare-fun e!4529496 () Bool)

(assert (=> start!733766 e!4529496))

(declare-fun b!7616886 () Bool)

(declare-fun res!3049201 () Bool)

(assert (=> b!7616886 (=> (not res!3049201) (not e!4529497))))

(assert (=> b!7616886 (= res!3049201 (and (not (is-EmptyExpr!20280 r!14126)) (not (is-EmptyLang!20280 r!14126)) (not (is-ElementMatch!20280 r!14126)) (not (is-Union!20280 r!14126)) (is-Star!20280 r!14126)))))

(assert (=> b!7616887 (= e!4529497 (not e!4529499))))

(declare-fun res!3049202 () Bool)

(assert (=> b!7616887 (=> res!3049202 e!4529499)))

(declare-fun lt!2655543 () Bool)

(assert (=> b!7616887 (= res!3049202 (not lt!2655543))))

(declare-fun lambda!468174 () Int)

(declare-fun Exists!4436 (Int) Bool)

(assert (=> b!7616887 (= lt!2655543 (Exists!4436 lambda!468174))))

(declare-fun isDefined!13971 (Option!17355) Bool)

(assert (=> b!7616887 (= lt!2655543 (isDefined!13971 lt!2655544))))

(declare-fun findConcatSeparation!3385 (Regex!20280 Regex!20280 List!73133 List!73133 List!73133) Option!17355)

(assert (=> b!7616887 (= lt!2655544 (findConcatSeparation!3385 (reg!20609 r!14126) r!14126 Nil!73009 s!9605 s!9605))))

(declare-fun lt!2655539 () Unit!167392)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3143 (Regex!20280 Regex!20280 List!73133) Unit!167392)

(assert (=> b!7616887 (= lt!2655539 (lemmaFindConcatSeparationEquivalentToExists!3143 (reg!20609 r!14126) r!14126 s!9605))))

(declare-fun b!7616888 () Bool)

(declare-fun tp!2224214 () Bool)

(assert (=> b!7616888 (= e!4529498 tp!2224214)))

(declare-fun b!7616889 () Bool)

(declare-fun tp_is_empty!50915 () Bool)

(declare-fun tp!2224216 () Bool)

(assert (=> b!7616889 (= e!4529496 (and tp_is_empty!50915 tp!2224216))))

(declare-fun b!7616890 () Bool)

(assert (=> b!7616890 (= e!4529498 tp_is_empty!50915)))

(assert (= (and start!733766 res!3049204) b!7616886))

(assert (= (and b!7616886 res!3049201) b!7616885))

(assert (= (and b!7616885 res!3049203) b!7616887))

(assert (= (and b!7616887 (not res!3049202)) b!7616883))

(assert (= (and start!733766 (is-ElementMatch!20280 r!14126)) b!7616890))

(assert (= (and start!733766 (is-Concat!29125 r!14126)) b!7616884))

(assert (= (and start!733766 (is-Star!20280 r!14126)) b!7616888))

(assert (= (and start!733766 (is-Union!20280 r!14126)) b!7616882))

(assert (= (and start!733766 (is-Cons!73009 s!9605)) b!7616889))

(declare-fun m!8150046 () Bool)

(assert (=> b!7616883 m!8150046))

(declare-fun m!8150048 () Bool)

(assert (=> b!7616883 m!8150048))

(declare-fun m!8150050 () Bool)

(assert (=> b!7616883 m!8150050))

(declare-fun m!8150052 () Bool)

(assert (=> b!7616883 m!8150052))

(declare-fun m!8150054 () Bool)

(assert (=> b!7616883 m!8150054))

(declare-fun m!8150056 () Bool)

(assert (=> b!7616883 m!8150056))

(declare-fun m!8150058 () Bool)

(assert (=> b!7616883 m!8150058))

(declare-fun m!8150060 () Bool)

(assert (=> b!7616883 m!8150060))

(declare-fun m!8150062 () Bool)

(assert (=> b!7616885 m!8150062))

(declare-fun m!8150064 () Bool)

(assert (=> start!733766 m!8150064))

(declare-fun m!8150066 () Bool)

(assert (=> b!7616887 m!8150066))

(declare-fun m!8150068 () Bool)

(assert (=> b!7616887 m!8150068))

(declare-fun m!8150070 () Bool)

(assert (=> b!7616887 m!8150070))

(declare-fun m!8150072 () Bool)

(assert (=> b!7616887 m!8150072))

(push 1)

(assert (not b!7616885))

(assert (not b!7616889))

(assert (not b!7616883))

(assert (not b!7616887))

(assert (not b!7616882))

(assert (not start!733766))

(assert (not b!7616888))

(assert tp_is_empty!50915)

(assert (not b!7616884))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

