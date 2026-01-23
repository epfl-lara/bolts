; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81222 () Bool)

(assert start!81222)

(declare-fun b!902694 () Bool)

(assert (=> b!902694 true))

(assert (=> b!902694 true))

(assert (=> b!902694 true))

(declare-fun lambda!28278 () Int)

(declare-fun lambda!28277 () Int)

(assert (=> b!902694 (not (= lambda!28278 lambda!28277))))

(assert (=> b!902694 true))

(assert (=> b!902694 true))

(assert (=> b!902694 true))

(declare-fun b!902691 () Bool)

(declare-fun e!589952 () Bool)

(declare-fun tp!282860 () Bool)

(declare-fun tp!282863 () Bool)

(assert (=> b!902691 (= e!589952 (and tp!282860 tp!282863))))

(declare-fun b!902692 () Bool)

(declare-fun tp!282864 () Bool)

(declare-fun tp!282861 () Bool)

(assert (=> b!902692 (= e!589952 (and tp!282864 tp!282861))))

(declare-fun b!902693 () Bool)

(declare-datatypes ((Unit!14351 0))(
  ( (Unit!14352) )
))
(declare-fun e!589953 () Unit!14351)

(declare-fun Unit!14353 () Unit!14351)

(assert (=> b!902693 (= e!589953 Unit!14353)))

(declare-fun e!589956 () Bool)

(declare-fun e!589954 () Bool)

(assert (=> b!902694 (= e!589956 e!589954)))

(declare-fun res!410470 () Bool)

(assert (=> b!902694 (=> res!410470 e!589954)))

(declare-datatypes ((C!5312 0))(
  ( (C!5313 (val!2904 Int)) )
))
(declare-datatypes ((List!9601 0))(
  ( (Nil!9585) (Cons!9585 (h!14986 C!5312) (t!100647 List!9601)) )
))
(declare-fun s!10566 () List!9601)

(declare-fun isEmpty!5792 (List!9601) Bool)

(assert (=> b!902694 (= res!410470 (isEmpty!5792 s!10566))))

(declare-fun Exists!148 (Int) Bool)

(assert (=> b!902694 (= (Exists!148 lambda!28277) (Exists!148 lambda!28278))))

(declare-fun lt!334974 () Unit!14351)

(declare-datatypes ((Regex!2371 0))(
  ( (ElementMatch!2371 (c!146258 C!5312)) (Concat!4204 (regOne!5254 Regex!2371) (regTwo!5254 Regex!2371)) (EmptyExpr!2371) (Star!2371 (reg!2700 Regex!2371)) (EmptyLang!2371) (Union!2371 (regOne!5255 Regex!2371) (regTwo!5255 Regex!2371)) )
))
(declare-fun r!15766 () Regex!2371)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!40 (Regex!2371 List!9601) Unit!14351)

(assert (=> b!902694 (= lt!334974 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!40 (reg!2700 r!15766) s!10566))))

(declare-fun lt!334971 () Bool)

(assert (=> b!902694 (= lt!334971 (Exists!148 lambda!28277))))

(declare-datatypes ((tuple2!10744 0))(
  ( (tuple2!10745 (_1!6198 List!9601) (_2!6198 List!9601)) )
))
(declare-datatypes ((Option!2014 0))(
  ( (None!2013) (Some!2013 (v!19430 tuple2!10744)) )
))
(declare-fun lt!334977 () Option!2014)

(declare-fun isDefined!1656 (Option!2014) Bool)

(assert (=> b!902694 (= lt!334971 (isDefined!1656 lt!334977))))

(declare-fun lt!334978 () Regex!2371)

(declare-fun findConcatSeparation!120 (Regex!2371 Regex!2371 List!9601 List!9601 List!9601) Option!2014)

(assert (=> b!902694 (= lt!334977 (findConcatSeparation!120 (reg!2700 r!15766) lt!334978 Nil!9585 s!10566 s!10566))))

(declare-fun lt!334980 () Unit!14351)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!120 (Regex!2371 Regex!2371 List!9601) Unit!14351)

(assert (=> b!902694 (= lt!334980 (lemmaFindConcatSeparationEquivalentToExists!120 (reg!2700 r!15766) lt!334978 s!10566))))

(assert (=> b!902694 (= lt!334978 (Star!2371 (reg!2700 r!15766)))))

(declare-fun b!902695 () Bool)

(declare-fun tp_is_empty!4385 () Bool)

(assert (=> b!902695 (= e!589952 tp_is_empty!4385)))

(declare-fun b!902696 () Bool)

(declare-fun e!589957 () Bool)

(declare-fun e!589955 () Bool)

(assert (=> b!902696 (= e!589957 e!589955)))

(declare-fun res!410466 () Bool)

(assert (=> b!902696 (=> res!410466 e!589955)))

(declare-fun lt!334976 () Regex!2371)

(declare-fun lt!334979 () Regex!2371)

(assert (=> b!902696 (= res!410466 (not (= lt!334976 lt!334979)))))

(declare-fun lt!334984 () Regex!2371)

(assert (=> b!902696 (= lt!334979 (Star!2371 lt!334984))))

(declare-fun lt!334983 () tuple2!10744)

(declare-fun matchR!909 (Regex!2371 List!9601) Bool)

(assert (=> b!902696 (matchR!909 lt!334976 (_2!6198 lt!334983))))

(declare-fun removeUselessConcat!84 (Regex!2371) Regex!2371)

(assert (=> b!902696 (= lt!334976 (removeUselessConcat!84 lt!334978))))

(declare-fun lt!334985 () Unit!14351)

(declare-fun lemmaRemoveUselessConcatSound!76 (Regex!2371 List!9601) Unit!14351)

(assert (=> b!902696 (= lt!334985 (lemmaRemoveUselessConcatSound!76 lt!334978 (_2!6198 lt!334983)))))

(declare-fun lt!334973 () Unit!14351)

(assert (=> b!902696 (= lt!334973 e!589953)))

(declare-fun c!146257 () Bool)

(declare-fun size!7876 (List!9601) Int)

(assert (=> b!902696 (= c!146257 (= (size!7876 (_2!6198 lt!334983)) (size!7876 s!10566)))))

(assert (=> b!902696 (matchR!909 lt!334984 (_1!6198 lt!334983))))

(assert (=> b!902696 (= lt!334984 (removeUselessConcat!84 (reg!2700 r!15766)))))

(declare-fun lt!334975 () Unit!14351)

(assert (=> b!902696 (= lt!334975 (lemmaRemoveUselessConcatSound!76 (reg!2700 r!15766) (_1!6198 lt!334983)))))

(declare-fun res!410471 () Bool)

(declare-fun e!589950 () Bool)

(assert (=> start!81222 (=> (not res!410471) (not e!589950))))

(declare-fun validRegex!840 (Regex!2371) Bool)

(assert (=> start!81222 (= res!410471 (validRegex!840 r!15766))))

(assert (=> start!81222 e!589950))

(assert (=> start!81222 e!589952))

(declare-fun e!589951 () Bool)

(assert (=> start!81222 e!589951))

(declare-fun b!902697 () Bool)

(assert (=> b!902697 (= e!589950 (not e!589956))))

(declare-fun res!410472 () Bool)

(assert (=> b!902697 (=> res!410472 e!589956)))

(declare-fun lt!334972 () Bool)

(get-info :version)

(assert (=> b!902697 (= res!410472 (or (not lt!334972) (and ((_ is Concat!4204) r!15766) ((_ is EmptyExpr!2371) (regOne!5254 r!15766))) (and ((_ is Concat!4204) r!15766) ((_ is EmptyExpr!2371) (regTwo!5254 r!15766))) ((_ is Concat!4204) r!15766) ((_ is Union!2371) r!15766) (not ((_ is Star!2371) r!15766))))))

(declare-fun matchRSpec!172 (Regex!2371 List!9601) Bool)

(assert (=> b!902697 (= lt!334972 (matchRSpec!172 r!15766 s!10566))))

(assert (=> b!902697 (= lt!334972 (matchR!909 r!15766 s!10566))))

(declare-fun lt!334981 () Unit!14351)

(declare-fun mainMatchTheorem!172 (Regex!2371 List!9601) Unit!14351)

(assert (=> b!902697 (= lt!334981 (mainMatchTheorem!172 r!15766 s!10566))))

(declare-fun b!902698 () Bool)

(declare-fun Unit!14354 () Unit!14351)

(assert (=> b!902698 (= e!589953 Unit!14354)))

(declare-fun lt!334982 () Unit!14351)

(assert (=> b!902698 (= lt!334982 (mainMatchTheorem!172 (reg!2700 r!15766) (_1!6198 lt!334983)))))

(assert (=> b!902698 false))

(declare-fun b!902699 () Bool)

(assert (=> b!902699 (= e!589954 e!589957)))

(declare-fun res!410465 () Bool)

(assert (=> b!902699 (=> res!410465 e!589957)))

(assert (=> b!902699 (= res!410465 (not (matchR!909 (reg!2700 r!15766) (_1!6198 lt!334983))))))

(declare-fun get!3055 (Option!2014) tuple2!10744)

(assert (=> b!902699 (= lt!334983 (get!3055 lt!334977))))

(declare-fun b!902700 () Bool)

(declare-fun res!410467 () Bool)

(assert (=> b!902700 (=> res!410467 e!589957)))

(assert (=> b!902700 (= res!410467 (not (matchR!909 lt!334978 (_2!6198 lt!334983))))))

(declare-fun b!902701 () Bool)

(declare-fun res!410469 () Bool)

(assert (=> b!902701 (=> res!410469 e!589954)))

(assert (=> b!902701 (= res!410469 (not lt!334971))))

(declare-fun b!902702 () Bool)

(declare-fun res!410468 () Bool)

(assert (=> b!902702 (=> res!410468 e!589955)))

(assert (=> b!902702 (= res!410468 (not (matchR!909 lt!334979 (_2!6198 lt!334983))))))

(declare-fun b!902703 () Bool)

(declare-fun tp!282859 () Bool)

(assert (=> b!902703 (= e!589952 tp!282859)))

(declare-fun b!902704 () Bool)

(declare-fun tp!282862 () Bool)

(assert (=> b!902704 (= e!589951 (and tp_is_empty!4385 tp!282862))))

(declare-fun b!902705 () Bool)

(assert (=> b!902705 (= e!589955 true)))

(assert (= (and start!81222 res!410471) b!902697))

(assert (= (and b!902697 (not res!410472)) b!902694))

(assert (= (and b!902694 (not res!410470)) b!902701))

(assert (= (and b!902701 (not res!410469)) b!902699))

(assert (= (and b!902699 (not res!410465)) b!902700))

(assert (= (and b!902700 (not res!410467)) b!902696))

(assert (= (and b!902696 c!146257) b!902698))

(assert (= (and b!902696 (not c!146257)) b!902693))

(assert (= (and b!902696 (not res!410466)) b!902702))

(assert (= (and b!902702 (not res!410468)) b!902705))

(assert (= (and start!81222 ((_ is ElementMatch!2371) r!15766)) b!902695))

(assert (= (and start!81222 ((_ is Concat!4204) r!15766)) b!902691))

(assert (= (and start!81222 ((_ is Star!2371) r!15766)) b!902703))

(assert (= (and start!81222 ((_ is Union!2371) r!15766)) b!902692))

(assert (= (and start!81222 ((_ is Cons!9585) s!10566)) b!902704))

(declare-fun m!1139489 () Bool)

(assert (=> b!902700 m!1139489))

(declare-fun m!1139491 () Bool)

(assert (=> b!902699 m!1139491))

(declare-fun m!1139493 () Bool)

(assert (=> b!902699 m!1139493))

(declare-fun m!1139495 () Bool)

(assert (=> b!902702 m!1139495))

(declare-fun m!1139497 () Bool)

(assert (=> b!902694 m!1139497))

(declare-fun m!1139499 () Bool)

(assert (=> b!902694 m!1139499))

(declare-fun m!1139501 () Bool)

(assert (=> b!902694 m!1139501))

(declare-fun m!1139503 () Bool)

(assert (=> b!902694 m!1139503))

(declare-fun m!1139505 () Bool)

(assert (=> b!902694 m!1139505))

(declare-fun m!1139507 () Bool)

(assert (=> b!902694 m!1139507))

(assert (=> b!902694 m!1139503))

(declare-fun m!1139509 () Bool)

(assert (=> b!902694 m!1139509))

(declare-fun m!1139511 () Bool)

(assert (=> b!902696 m!1139511))

(declare-fun m!1139513 () Bool)

(assert (=> b!902696 m!1139513))

(declare-fun m!1139515 () Bool)

(assert (=> b!902696 m!1139515))

(declare-fun m!1139517 () Bool)

(assert (=> b!902696 m!1139517))

(declare-fun m!1139519 () Bool)

(assert (=> b!902696 m!1139519))

(declare-fun m!1139521 () Bool)

(assert (=> b!902696 m!1139521))

(declare-fun m!1139523 () Bool)

(assert (=> b!902696 m!1139523))

(declare-fun m!1139525 () Bool)

(assert (=> b!902696 m!1139525))

(declare-fun m!1139527 () Bool)

(assert (=> start!81222 m!1139527))

(declare-fun m!1139529 () Bool)

(assert (=> b!902697 m!1139529))

(declare-fun m!1139531 () Bool)

(assert (=> b!902697 m!1139531))

(declare-fun m!1139533 () Bool)

(assert (=> b!902697 m!1139533))

(declare-fun m!1139535 () Bool)

(assert (=> b!902698 m!1139535))

(check-sat (not b!902692) (not b!902697) (not b!902696) (not b!902700) (not b!902691) (not b!902694) (not start!81222) (not b!902699) tp_is_empty!4385 (not b!902703) (not b!902704) (not b!902702) (not b!902698))
(check-sat)
