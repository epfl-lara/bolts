; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!734182 () Bool)

(assert start!734182)

(declare-fun b!7622630 () Bool)

(assert (=> b!7622630 true))

(assert (=> b!7622630 true))

(declare-fun b!7622624 () Bool)

(declare-fun e!4532450 () Bool)

(declare-fun tp_is_empty!50995 () Bool)

(declare-fun tp!2225503 () Bool)

(assert (=> b!7622624 (= e!4532450 (and tp_is_empty!50995 tp!2225503))))

(declare-fun b!7622625 () Bool)

(declare-fun e!4532452 () Bool)

(declare-fun tp!2225505 () Bool)

(declare-fun tp!2225502 () Bool)

(assert (=> b!7622625 (= e!4532452 (and tp!2225505 tp!2225502))))

(declare-fun b!7622626 () Bool)

(declare-fun e!4532453 () Bool)

(assert (=> b!7622626 (= e!4532453 true)))

(declare-datatypes ((C!40966 0))(
  ( (C!40967 (val!30923 Int)) )
))
(declare-datatypes ((Regex!20320 0))(
  ( (ElementMatch!20320 (c!1404795 C!40966)) (Concat!29165 (regOne!41152 Regex!20320) (regTwo!41152 Regex!20320)) (EmptyExpr!20320) (Star!20320 (reg!20649 Regex!20320)) (EmptyLang!20320) (Union!20320 (regOne!41153 Regex!20320) (regTwo!41153 Regex!20320)) )
))
(declare-fun r!14126 () Regex!20320)

(declare-datatypes ((List!73173 0))(
  ( (Nil!73049) (Cons!73049 (h!79497 C!40966) (t!387908 List!73173)) )
))
(declare-fun s!9605 () List!73173)

(declare-fun matchR!9827 (Regex!20320 List!73173) Bool)

(assert (=> b!7622626 (matchR!9827 (Concat!29165 (reg!20649 r!14126) r!14126) s!9605)))

(declare-datatypes ((Unit!167524 0))(
  ( (Unit!167525) )
))
(declare-fun lt!2657201 () Unit!167524)

(declare-fun lemmaStarAppConcat!1 (Regex!20320 List!73173) Unit!167524)

(assert (=> b!7622626 (= lt!2657201 (lemmaStarAppConcat!1 (reg!20649 r!14126) s!9605))))

(declare-fun b!7622627 () Bool)

(assert (=> b!7622627 (= e!4532452 tp_is_empty!50995)))

(declare-fun res!3052032 () Bool)

(declare-fun e!4532451 () Bool)

(assert (=> start!734182 (=> (not res!3052032) (not e!4532451))))

(declare-fun validRegex!10740 (Regex!20320) Bool)

(assert (=> start!734182 (= res!3052032 (validRegex!10740 r!14126))))

(assert (=> start!734182 e!4532451))

(assert (=> start!734182 e!4532452))

(assert (=> start!734182 e!4532450))

(declare-fun b!7622628 () Bool)

(declare-fun tp!2225504 () Bool)

(declare-fun tp!2225500 () Bool)

(assert (=> b!7622628 (= e!4532452 (and tp!2225504 tp!2225500))))

(declare-fun b!7622629 () Bool)

(declare-fun res!3052031 () Bool)

(assert (=> b!7622629 (=> (not res!3052031) (not e!4532451))))

(assert (=> b!7622629 (= res!3052031 (and (not (is-EmptyExpr!20320 r!14126)) (not (is-EmptyLang!20320 r!14126)) (not (is-ElementMatch!20320 r!14126)) (not (is-Union!20320 r!14126)) (is-Star!20320 r!14126)))))

(assert (=> b!7622630 (= e!4532451 (not e!4532453))))

(declare-fun res!3052033 () Bool)

(assert (=> b!7622630 (=> res!3052033 e!4532453)))

(declare-fun lt!2657203 () Bool)

(assert (=> b!7622630 (= res!3052033 lt!2657203)))

(declare-fun lambda!468548 () Int)

(declare-fun Exists!4476 (Int) Bool)

(assert (=> b!7622630 (= lt!2657203 (Exists!4476 lambda!468548))))

(declare-datatypes ((tuple2!69202 0))(
  ( (tuple2!69203 (_1!37904 List!73173) (_2!37904 List!73173)) )
))
(declare-datatypes ((Option!17395 0))(
  ( (None!17394) (Some!17394 (v!54529 tuple2!69202)) )
))
(declare-fun isDefined!14011 (Option!17395) Bool)

(declare-fun findConcatSeparation!3425 (Regex!20320 Regex!20320 List!73173 List!73173 List!73173) Option!17395)

(assert (=> b!7622630 (= lt!2657203 (isDefined!14011 (findConcatSeparation!3425 (reg!20649 r!14126) r!14126 Nil!73049 s!9605 s!9605)))))

(declare-fun lt!2657202 () Unit!167524)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3183 (Regex!20320 Regex!20320 List!73173) Unit!167524)

(assert (=> b!7622630 (= lt!2657202 (lemmaFindConcatSeparationEquivalentToExists!3183 (reg!20649 r!14126) r!14126 s!9605))))

(declare-fun b!7622631 () Bool)

(declare-fun tp!2225501 () Bool)

(assert (=> b!7622631 (= e!4532452 tp!2225501)))

(declare-fun b!7622632 () Bool)

(declare-fun res!3052035 () Bool)

(assert (=> b!7622632 (=> (not res!3052035) (not e!4532451))))

(declare-fun isEmpty!41671 (List!73173) Bool)

(assert (=> b!7622632 (= res!3052035 (not (isEmpty!41671 s!9605)))))

(declare-fun b!7622633 () Bool)

(declare-fun res!3052034 () Bool)

(assert (=> b!7622633 (=> res!3052034 e!4532453)))

(assert (=> b!7622633 (= res!3052034 (not (matchR!9827 r!14126 s!9605)))))

(assert (= (and start!734182 res!3052032) b!7622629))

(assert (= (and b!7622629 res!3052031) b!7622632))

(assert (= (and b!7622632 res!3052035) b!7622630))

(assert (= (and b!7622630 (not res!3052033)) b!7622633))

(assert (= (and b!7622633 (not res!3052034)) b!7622626))

(assert (= (and start!734182 (is-ElementMatch!20320 r!14126)) b!7622627))

(assert (= (and start!734182 (is-Concat!29165 r!14126)) b!7622625))

(assert (= (and start!734182 (is-Star!20320 r!14126)) b!7622631))

(assert (= (and start!734182 (is-Union!20320 r!14126)) b!7622628))

(assert (= (and start!734182 (is-Cons!73049 s!9605)) b!7622624))

(declare-fun m!8153870 () Bool)

(assert (=> start!734182 m!8153870))

(declare-fun m!8153872 () Bool)

(assert (=> b!7622630 m!8153872))

(declare-fun m!8153874 () Bool)

(assert (=> b!7622630 m!8153874))

(assert (=> b!7622630 m!8153874))

(declare-fun m!8153876 () Bool)

(assert (=> b!7622630 m!8153876))

(declare-fun m!8153878 () Bool)

(assert (=> b!7622630 m!8153878))

(declare-fun m!8153880 () Bool)

(assert (=> b!7622632 m!8153880))

(declare-fun m!8153882 () Bool)

(assert (=> b!7622626 m!8153882))

(declare-fun m!8153884 () Bool)

(assert (=> b!7622626 m!8153884))

(declare-fun m!8153886 () Bool)

(assert (=> b!7622633 m!8153886))

(push 1)

(assert (not b!7622625))

(assert (not b!7622632))

(assert (not b!7622631))

(assert (not b!7622624))

(assert tp_is_empty!50995)

(assert (not start!734182))

(assert (not b!7622630))

(assert (not b!7622633))

(assert (not b!7622628))

(assert (not b!7622626))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

