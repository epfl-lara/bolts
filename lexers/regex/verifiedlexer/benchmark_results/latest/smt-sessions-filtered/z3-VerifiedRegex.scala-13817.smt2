; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!735456 () Bool)

(assert start!735456)

(declare-fun b!7639070 () Bool)

(assert (=> b!7639070 true))

(assert (=> b!7639070 true))

(declare-fun b!7639064 () Bool)

(declare-fun e!4540892 () Bool)

(declare-fun tp!2229741 () Bool)

(declare-fun tp!2229743 () Bool)

(assert (=> b!7639064 (= e!4540892 (and tp!2229741 tp!2229743))))

(declare-fun b!7639065 () Bool)

(declare-datatypes ((Unit!167856 0))(
  ( (Unit!167857) )
))
(declare-fun e!4540893 () Unit!167856)

(declare-fun Unit!167858 () Unit!167856)

(assert (=> b!7639065 (= e!4540893 Unit!167858)))

(declare-fun b!7639066 () Bool)

(declare-fun e!4540890 () Bool)

(declare-fun lambda!469603 () Int)

(declare-fun Exists!4583 (Int) Bool)

(assert (=> b!7639066 (= e!4540890 (not (Exists!4583 lambda!469603)))))

(declare-fun lt!2660464 () Unit!167856)

(assert (=> b!7639066 (= lt!2660464 e!4540893)))

(declare-fun c!1407121 () Bool)

(declare-fun lt!2660468 () Bool)

(assert (=> b!7639066 (= c!1407121 lt!2660468)))

(declare-fun b!7639067 () Bool)

(declare-fun tp!2229740 () Bool)

(assert (=> b!7639067 (= e!4540892 tp!2229740)))

(declare-fun b!7639068 () Bool)

(declare-fun tp!2229742 () Bool)

(declare-fun tp!2229744 () Bool)

(assert (=> b!7639068 (= e!4540892 (and tp!2229742 tp!2229744))))

(declare-fun b!7639069 () Bool)

(declare-fun res!3059854 () Bool)

(declare-fun e!4540895 () Bool)

(assert (=> b!7639069 (=> (not res!3059854) (not e!4540895))))

(declare-datatypes ((C!41184 0))(
  ( (C!41185 (val!31032 Int)) )
))
(declare-datatypes ((Regex!20429 0))(
  ( (ElementMatch!20429 (c!1407122 C!41184)) (Concat!29274 (regOne!41370 Regex!20429) (regTwo!41370 Regex!20429)) (EmptyExpr!20429) (Star!20429 (reg!20758 Regex!20429)) (EmptyLang!20429) (Union!20429 (regOne!41371 Regex!20429) (regTwo!41371 Regex!20429)) )
))
(declare-fun r!14126 () Regex!20429)

(get-info :version)

(assert (=> b!7639069 (= res!3059854 (and (not ((_ is EmptyExpr!20429) r!14126)) (not ((_ is EmptyLang!20429) r!14126)) (not ((_ is ElementMatch!20429) r!14126)) (not ((_ is Union!20429) r!14126)) (not ((_ is Star!20429) r!14126))))))

(declare-fun res!3059851 () Bool)

(assert (=> start!735456 (=> (not res!3059851) (not e!4540895))))

(declare-fun validRegex!10847 (Regex!20429) Bool)

(assert (=> start!735456 (= res!3059851 (validRegex!10847 r!14126))))

(assert (=> start!735456 e!4540895))

(assert (=> start!735456 e!4540892))

(declare-fun e!4540891 () Bool)

(assert (=> start!735456 e!4540891))

(declare-fun b!7639063 () Bool)

(declare-fun Unit!167859 () Unit!167856)

(assert (=> b!7639063 (= e!4540893 Unit!167859)))

(declare-datatypes ((List!73280 0))(
  ( (Nil!73156) (Cons!73156 (h!79604 C!41184) (t!388015 List!73280)) )
))
(declare-datatypes ((tuple2!69416 0))(
  ( (tuple2!69417 (_1!38011 List!73280) (_2!38011 List!73280)) )
))
(declare-fun lt!2660466 () tuple2!69416)

(declare-datatypes ((Option!17502 0))(
  ( (None!17501) (Some!17501 (v!54636 tuple2!69416)) )
))
(declare-fun lt!2660463 () Option!17502)

(declare-fun get!25904 (Option!17502) tuple2!69416)

(assert (=> b!7639063 (= lt!2660466 (get!25904 lt!2660463))))

(declare-fun s!9605 () List!73280)

(declare-fun lt!2660467 () Unit!167856)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!180 (Regex!20429 Regex!20429 List!73280 List!73280 List!73280) Unit!167856)

(assert (=> b!7639063 (= lt!2660467 (lemmaFindSeparationIsDefinedThenConcatMatches!180 (regOne!41370 r!14126) (regTwo!41370 r!14126) (_1!38011 lt!2660466) (_2!38011 lt!2660466) s!9605))))

(declare-fun res!3059852 () Bool)

(declare-fun matchR!9932 (Regex!20429 List!73280) Bool)

(declare-fun ++!17705 (List!73280 List!73280) List!73280)

(assert (=> b!7639063 (= res!3059852 (matchR!9932 r!14126 (++!17705 (_1!38011 lt!2660466) (_2!38011 lt!2660466))))))

(declare-fun e!4540894 () Bool)

(assert (=> b!7639063 (=> (not res!3059852) (not e!4540894))))

(assert (=> b!7639063 e!4540894))

(assert (=> b!7639070 (= e!4540895 (not e!4540890))))

(declare-fun res!3059853 () Bool)

(assert (=> b!7639070 (=> res!3059853 e!4540890)))

(assert (=> b!7639070 (= res!3059853 (matchR!9932 r!14126 s!9605))))

(assert (=> b!7639070 (= lt!2660468 (Exists!4583 lambda!469603))))

(declare-fun isDefined!14118 (Option!17502) Bool)

(assert (=> b!7639070 (= lt!2660468 (isDefined!14118 lt!2660463))))

(declare-fun findConcatSeparation!3532 (Regex!20429 Regex!20429 List!73280 List!73280 List!73280) Option!17502)

(assert (=> b!7639070 (= lt!2660463 (findConcatSeparation!3532 (regOne!41370 r!14126) (regTwo!41370 r!14126) Nil!73156 s!9605 s!9605))))

(declare-fun lt!2660465 () Unit!167856)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3290 (Regex!20429 Regex!20429 List!73280) Unit!167856)

(assert (=> b!7639070 (= lt!2660465 (lemmaFindConcatSeparationEquivalentToExists!3290 (regOne!41370 r!14126) (regTwo!41370 r!14126) s!9605))))

(declare-fun b!7639071 () Bool)

(declare-fun tp_is_empty!51213 () Bool)

(assert (=> b!7639071 (= e!4540892 tp_is_empty!51213)))

(declare-fun b!7639072 () Bool)

(declare-fun tp!2229745 () Bool)

(assert (=> b!7639072 (= e!4540891 (and tp_is_empty!51213 tp!2229745))))

(declare-fun b!7639073 () Bool)

(assert (=> b!7639073 (= e!4540894 false)))

(assert (= (and start!735456 res!3059851) b!7639069))

(assert (= (and b!7639069 res!3059854) b!7639070))

(assert (= (and b!7639070 (not res!3059853)) b!7639066))

(assert (= (and b!7639066 c!1407121) b!7639063))

(assert (= (and b!7639066 (not c!1407121)) b!7639065))

(assert (= (and b!7639063 res!3059852) b!7639073))

(assert (= (and start!735456 ((_ is ElementMatch!20429) r!14126)) b!7639071))

(assert (= (and start!735456 ((_ is Concat!29274) r!14126)) b!7639064))

(assert (= (and start!735456 ((_ is Star!20429) r!14126)) b!7639067))

(assert (= (and start!735456 ((_ is Union!20429) r!14126)) b!7639068))

(assert (= (and start!735456 ((_ is Cons!73156) s!9605)) b!7639072))

(declare-fun m!8162526 () Bool)

(assert (=> b!7639066 m!8162526))

(declare-fun m!8162528 () Bool)

(assert (=> start!735456 m!8162528))

(declare-fun m!8162530 () Bool)

(assert (=> b!7639063 m!8162530))

(declare-fun m!8162532 () Bool)

(assert (=> b!7639063 m!8162532))

(declare-fun m!8162534 () Bool)

(assert (=> b!7639063 m!8162534))

(assert (=> b!7639063 m!8162534))

(declare-fun m!8162536 () Bool)

(assert (=> b!7639063 m!8162536))

(declare-fun m!8162538 () Bool)

(assert (=> b!7639070 m!8162538))

(declare-fun m!8162540 () Bool)

(assert (=> b!7639070 m!8162540))

(assert (=> b!7639070 m!8162526))

(declare-fun m!8162542 () Bool)

(assert (=> b!7639070 m!8162542))

(declare-fun m!8162544 () Bool)

(assert (=> b!7639070 m!8162544))

(check-sat (not b!7639068) (not b!7639066) (not b!7639067) (not start!735456) (not b!7639064) (not b!7639063) (not b!7639072) tp_is_empty!51213 (not b!7639070))
(check-sat)
