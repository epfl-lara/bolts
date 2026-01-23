; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!734176 () Bool)

(assert start!734176)

(declare-fun b!7622503 () Bool)

(assert (=> b!7622503 true))

(assert (=> b!7622503 true))

(declare-fun bs!1943550 () Bool)

(declare-fun b!7622512 () Bool)

(assert (= bs!1943550 (and b!7622512 b!7622503)))

(declare-fun lambda!468539 () Int)

(declare-fun lambda!468538 () Int)

(assert (=> bs!1943550 (not (= lambda!468539 lambda!468538))))

(assert (=> b!7622512 true))

(assert (=> b!7622512 true))

(declare-fun b!7622499 () Bool)

(declare-datatypes ((Unit!167516 0))(
  ( (Unit!167517) )
))
(declare-fun e!4532406 () Unit!167516)

(declare-fun Unit!167518 () Unit!167516)

(assert (=> b!7622499 (= e!4532406 Unit!167518)))

(declare-fun b!7622500 () Bool)

(declare-fun e!4532410 () Bool)

(declare-fun tp_is_empty!50989 () Bool)

(assert (=> b!7622500 (= e!4532410 tp_is_empty!50989)))

(declare-fun b!7622501 () Bool)

(declare-fun e!4532405 () Bool)

(declare-fun tp!2225451 () Bool)

(assert (=> b!7622501 (= e!4532405 (and tp_is_empty!50989 tp!2225451))))

(declare-fun b!7622502 () Bool)

(declare-fun res!3051972 () Bool)

(declare-fun e!4532408 () Bool)

(assert (=> b!7622502 (=> (not res!3051972) (not e!4532408))))

(declare-datatypes ((C!40960 0))(
  ( (C!40961 (val!30920 Int)) )
))
(declare-datatypes ((List!73170 0))(
  ( (Nil!73046) (Cons!73046 (h!79494 C!40960) (t!387905 List!73170)) )
))
(declare-fun s!9605 () List!73170)

(declare-fun isEmpty!41668 (List!73170) Bool)

(assert (=> b!7622502 (= res!3051972 (not (isEmpty!41668 s!9605)))))

(declare-fun e!4532409 () Bool)

(assert (=> b!7622503 (= e!4532408 (not e!4532409))))

(declare-fun res!3051965 () Bool)

(assert (=> b!7622503 (=> res!3051965 e!4532409)))

(declare-fun lt!2657165 () Bool)

(assert (=> b!7622503 (= res!3051965 (not lt!2657165))))

(declare-fun Exists!4473 (Int) Bool)

(assert (=> b!7622503 (= lt!2657165 (Exists!4473 lambda!468538))))

(declare-datatypes ((tuple2!69196 0))(
  ( (tuple2!69197 (_1!37901 List!73170) (_2!37901 List!73170)) )
))
(declare-datatypes ((Option!17392 0))(
  ( (None!17391) (Some!17391 (v!54526 tuple2!69196)) )
))
(declare-fun lt!2657168 () Option!17392)

(declare-fun isDefined!14008 (Option!17392) Bool)

(assert (=> b!7622503 (= lt!2657165 (isDefined!14008 lt!2657168))))

(declare-datatypes ((Regex!20317 0))(
  ( (ElementMatch!20317 (c!1404792 C!40960)) (Concat!29162 (regOne!41146 Regex!20317) (regTwo!41146 Regex!20317)) (EmptyExpr!20317) (Star!20317 (reg!20646 Regex!20317)) (EmptyLang!20317) (Union!20317 (regOne!41147 Regex!20317) (regTwo!41147 Regex!20317)) )
))
(declare-fun r!14126 () Regex!20317)

(declare-fun findConcatSeparation!3422 (Regex!20317 Regex!20317 List!73170 List!73170 List!73170) Option!17392)

(assert (=> b!7622503 (= lt!2657168 (findConcatSeparation!3422 (reg!20646 r!14126) r!14126 Nil!73046 s!9605 s!9605))))

(declare-fun lt!2657170 () Unit!167516)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3180 (Regex!20317 Regex!20317 List!73170) Unit!167516)

(assert (=> b!7622503 (= lt!2657170 (lemmaFindConcatSeparationEquivalentToExists!3180 (reg!20646 r!14126) r!14126 s!9605))))

(declare-fun b!7622504 () Bool)

(declare-fun res!3051971 () Bool)

(declare-fun e!4532407 () Bool)

(assert (=> b!7622504 (=> res!3051971 e!4532407)))

(declare-fun lt!2657174 () tuple2!69196)

(assert (=> b!7622504 (= res!3051971 (isEmpty!41668 (_1!37901 lt!2657174)))))

(declare-fun b!7622505 () Bool)

(declare-fun tp!2225449 () Bool)

(declare-fun tp!2225447 () Bool)

(assert (=> b!7622505 (= e!4532410 (and tp!2225449 tp!2225447))))

(declare-fun b!7622506 () Bool)

(declare-fun res!3051966 () Bool)

(assert (=> b!7622506 (=> (not res!3051966) (not e!4532408))))

(get-info :version)

(assert (=> b!7622506 (= res!3051966 (and (not ((_ is EmptyExpr!20317) r!14126)) (not ((_ is EmptyLang!20317) r!14126)) (not ((_ is ElementMatch!20317) r!14126)) (not ((_ is Union!20317) r!14126)) ((_ is Star!20317) r!14126)))))

(declare-fun b!7622507 () Bool)

(declare-fun e!4532404 () Bool)

(assert (=> b!7622507 (= e!4532409 e!4532404)))

(declare-fun res!3051970 () Bool)

(assert (=> b!7622507 (=> res!3051970 e!4532404)))

(assert (=> b!7622507 (= res!3051970 (not (Exists!4473 lambda!468538)))))

(declare-fun lt!2657171 () Unit!167516)

(assert (=> b!7622507 (= lt!2657171 e!4532406)))

(declare-fun c!1404791 () Bool)

(declare-fun matchR!9824 (Regex!20317 List!73170) Bool)

(assert (=> b!7622507 (= c!1404791 (not (matchR!9824 r!14126 s!9605)))))

(declare-fun lt!2657172 () tuple2!69196)

(declare-fun matchRSpec!4516 (Regex!20317 List!73170) Bool)

(assert (=> b!7622507 (= (matchR!9824 r!14126 (_2!37901 lt!2657172)) (matchRSpec!4516 r!14126 (_2!37901 lt!2657172)))))

(declare-fun lt!2657167 () Unit!167516)

(declare-fun mainMatchTheorem!4510 (Regex!20317 List!73170) Unit!167516)

(assert (=> b!7622507 (= lt!2657167 (mainMatchTheorem!4510 r!14126 (_2!37901 lt!2657172)))))

(assert (=> b!7622507 (= (matchR!9824 (reg!20646 r!14126) (_1!37901 lt!2657172)) (matchRSpec!4516 (reg!20646 r!14126) (_1!37901 lt!2657172)))))

(declare-fun lt!2657166 () Unit!167516)

(assert (=> b!7622507 (= lt!2657166 (mainMatchTheorem!4510 (reg!20646 r!14126) (_1!37901 lt!2657172)))))

(declare-fun get!25787 (Option!17392) tuple2!69196)

(assert (=> b!7622507 (= lt!2657172 (get!25787 lt!2657168))))

(declare-fun b!7622508 () Bool)

(assert (=> b!7622508 (= e!4532404 e!4532407)))

(declare-fun res!3051969 () Bool)

(assert (=> b!7622508 (=> res!3051969 e!4532407)))

(declare-fun nullable!8884 (Regex!20317) Bool)

(assert (=> b!7622508 (= res!3051969 (nullable!8884 (reg!20646 r!14126)))))

(assert (=> b!7622508 (= (matchR!9824 r!14126 (_2!37901 lt!2657174)) (matchRSpec!4516 r!14126 (_2!37901 lt!2657174)))))

(declare-fun lt!2657176 () Unit!167516)

(assert (=> b!7622508 (= lt!2657176 (mainMatchTheorem!4510 r!14126 (_2!37901 lt!2657174)))))

(assert (=> b!7622508 (= (matchR!9824 (reg!20646 r!14126) (_1!37901 lt!2657174)) (matchRSpec!4516 (reg!20646 r!14126) (_1!37901 lt!2657174)))))

(declare-fun lt!2657164 () Unit!167516)

(assert (=> b!7622508 (= lt!2657164 (mainMatchTheorem!4510 (reg!20646 r!14126) (_1!37901 lt!2657174)))))

(declare-fun pickWitness!448 (Int) tuple2!69196)

(assert (=> b!7622508 (= lt!2657174 (pickWitness!448 lambda!468538))))

(declare-fun b!7622509 () Bool)

(declare-fun Unit!167519 () Unit!167516)

(assert (=> b!7622509 (= e!4532406 Unit!167519)))

(declare-fun lt!2657175 () Unit!167516)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!144 (Regex!20317 Regex!20317 List!73170 List!73170 List!73170) Unit!167516)

(assert (=> b!7622509 (= lt!2657175 (lemmaFindSeparationIsDefinedThenConcatMatches!144 (reg!20646 r!14126) r!14126 (_1!37901 lt!2657172) (_2!37901 lt!2657172) s!9605))))

(declare-fun lt!2657163 () List!73170)

(declare-fun ++!17627 (List!73170 List!73170) List!73170)

(assert (=> b!7622509 (= lt!2657163 (++!17627 (_1!37901 lt!2657172) (_2!37901 lt!2657172)))))

(assert (=> b!7622509 (matchR!9824 (Concat!29162 (reg!20646 r!14126) r!14126) lt!2657163)))

(declare-fun lt!2657169 () Unit!167516)

(declare-fun lemmaStarApp!198 (Regex!20317 List!73170 List!73170) Unit!167516)

(assert (=> b!7622509 (= lt!2657169 (lemmaStarApp!198 (reg!20646 r!14126) (_1!37901 lt!2657172) (_2!37901 lt!2657172)))))

(declare-fun res!3051968 () Bool)

(assert (=> b!7622509 (= res!3051968 (matchR!9824 r!14126 lt!2657163))))

(declare-fun e!4532411 () Bool)

(assert (=> b!7622509 (=> (not res!3051968) (not e!4532411))))

(assert (=> b!7622509 e!4532411))

(declare-fun b!7622510 () Bool)

(declare-fun tp!2225448 () Bool)

(assert (=> b!7622510 (= e!4532410 tp!2225448)))

(declare-fun b!7622511 () Bool)

(declare-fun tp!2225446 () Bool)

(declare-fun tp!2225450 () Bool)

(assert (=> b!7622511 (= e!4532410 (and tp!2225446 tp!2225450))))

(declare-fun res!3051967 () Bool)

(assert (=> start!734176 (=> (not res!3051967) (not e!4532408))))

(declare-fun validRegex!10737 (Regex!20317) Bool)

(assert (=> start!734176 (= res!3051967 (validRegex!10737 r!14126))))

(assert (=> start!734176 e!4532408))

(assert (=> start!734176 e!4532410))

(assert (=> start!734176 e!4532405))

(assert (=> b!7622512 (= e!4532407 true)))

(declare-fun lt!2657173 () Unit!167516)

(declare-fun ExistsThe!46 (tuple2!69196 Int) Unit!167516)

(assert (=> b!7622512 (= lt!2657173 (ExistsThe!46 lt!2657174 lambda!468539))))

(declare-fun b!7622513 () Bool)

(assert (=> b!7622513 (= e!4532411 false)))

(assert (= (and start!734176 res!3051967) b!7622506))

(assert (= (and b!7622506 res!3051966) b!7622502))

(assert (= (and b!7622502 res!3051972) b!7622503))

(assert (= (and b!7622503 (not res!3051965)) b!7622507))

(assert (= (and b!7622507 c!1404791) b!7622509))

(assert (= (and b!7622507 (not c!1404791)) b!7622499))

(assert (= (and b!7622509 res!3051968) b!7622513))

(assert (= (and b!7622507 (not res!3051970)) b!7622508))

(assert (= (and b!7622508 (not res!3051969)) b!7622504))

(assert (= (and b!7622504 (not res!3051971)) b!7622512))

(assert (= (and start!734176 ((_ is ElementMatch!20317) r!14126)) b!7622500))

(assert (= (and start!734176 ((_ is Concat!29162) r!14126)) b!7622505))

(assert (= (and start!734176 ((_ is Star!20317) r!14126)) b!7622510))

(assert (= (and start!734176 ((_ is Union!20317) r!14126)) b!7622511))

(assert (= (and start!734176 ((_ is Cons!73046) s!9605)) b!7622501))

(declare-fun m!8153784 () Bool)

(assert (=> b!7622507 m!8153784))

(declare-fun m!8153786 () Bool)

(assert (=> b!7622507 m!8153786))

(declare-fun m!8153788 () Bool)

(assert (=> b!7622507 m!8153788))

(declare-fun m!8153790 () Bool)

(assert (=> b!7622507 m!8153790))

(declare-fun m!8153792 () Bool)

(assert (=> b!7622507 m!8153792))

(declare-fun m!8153794 () Bool)

(assert (=> b!7622507 m!8153794))

(declare-fun m!8153796 () Bool)

(assert (=> b!7622507 m!8153796))

(declare-fun m!8153798 () Bool)

(assert (=> b!7622507 m!8153798))

(declare-fun m!8153800 () Bool)

(assert (=> b!7622507 m!8153800))

(declare-fun m!8153802 () Bool)

(assert (=> b!7622508 m!8153802))

(declare-fun m!8153804 () Bool)

(assert (=> b!7622508 m!8153804))

(declare-fun m!8153806 () Bool)

(assert (=> b!7622508 m!8153806))

(declare-fun m!8153808 () Bool)

(assert (=> b!7622508 m!8153808))

(declare-fun m!8153810 () Bool)

(assert (=> b!7622508 m!8153810))

(declare-fun m!8153812 () Bool)

(assert (=> b!7622508 m!8153812))

(declare-fun m!8153814 () Bool)

(assert (=> b!7622508 m!8153814))

(declare-fun m!8153816 () Bool)

(assert (=> b!7622508 m!8153816))

(declare-fun m!8153818 () Bool)

(assert (=> b!7622502 m!8153818))

(declare-fun m!8153820 () Bool)

(assert (=> b!7622504 m!8153820))

(assert (=> b!7622503 m!8153794))

(declare-fun m!8153822 () Bool)

(assert (=> b!7622503 m!8153822))

(declare-fun m!8153824 () Bool)

(assert (=> b!7622503 m!8153824))

(declare-fun m!8153826 () Bool)

(assert (=> b!7622503 m!8153826))

(declare-fun m!8153828 () Bool)

(assert (=> b!7622512 m!8153828))

(declare-fun m!8153830 () Bool)

(assert (=> start!734176 m!8153830))

(declare-fun m!8153832 () Bool)

(assert (=> b!7622509 m!8153832))

(declare-fun m!8153834 () Bool)

(assert (=> b!7622509 m!8153834))

(declare-fun m!8153836 () Bool)

(assert (=> b!7622509 m!8153836))

(declare-fun m!8153838 () Bool)

(assert (=> b!7622509 m!8153838))

(declare-fun m!8153840 () Bool)

(assert (=> b!7622509 m!8153840))

(check-sat (not b!7622508) (not b!7622511) (not b!7622504) (not start!734176) tp_is_empty!50989 (not b!7622512) (not b!7622503) (not b!7622501) (not b!7622502) (not b!7622507) (not b!7622505) (not b!7622509) (not b!7622510))
(check-sat)
