; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86718 () Bool)

(assert start!86718)

(declare-fun b!976782 () Bool)

(assert (=> b!976782 true))

(assert (=> b!976782 true))

(declare-fun b!976777 () Bool)

(declare-fun e!628955 () Bool)

(declare-fun tp!298801 () Bool)

(declare-fun tp!298799 () Bool)

(assert (=> b!976777 (= e!628955 (and tp!298801 tp!298799))))

(declare-fun b!976778 () Bool)

(declare-fun e!628957 () Bool)

(assert (=> b!976778 (= e!628957 true)))

(declare-fun b!976779 () Bool)

(declare-fun tp_is_empty!5093 () Bool)

(assert (=> b!976779 (= e!628955 tp_is_empty!5093)))

(declare-fun b!976780 () Bool)

(declare-fun res!443591 () Bool)

(declare-fun e!628954 () Bool)

(assert (=> b!976780 (=> res!443591 e!628954)))

(declare-datatypes ((C!6020 0))(
  ( (C!6021 (val!3258 Int)) )
))
(declare-datatypes ((List!9955 0))(
  ( (Nil!9939) (Cons!9939 (h!15340 C!6020) (t!101001 List!9955)) )
))
(declare-fun s!10566 () List!9955)

(declare-fun isEmpty!6256 (List!9955) Bool)

(assert (=> b!976780 (= res!443591 (isEmpty!6256 s!10566))))

(declare-fun b!976781 () Bool)

(declare-fun tp!298802 () Bool)

(declare-fun tp!298804 () Bool)

(assert (=> b!976781 (= e!628955 (and tp!298802 tp!298804))))

(assert (=> b!976782 (= e!628954 e!628957)))

(declare-fun res!443589 () Bool)

(assert (=> b!976782 (=> res!443589 e!628957)))

(declare-datatypes ((Regex!2725 0))(
  ( (ElementMatch!2725 (c!159518 C!6020)) (Concat!4558 (regOne!5962 Regex!2725) (regTwo!5962 Regex!2725)) (EmptyExpr!2725) (Star!2725 (reg!3054 Regex!2725)) (EmptyLang!2725) (Union!2725 (regOne!5963 Regex!2725) (regTwo!5963 Regex!2725)) )
))
(declare-fun r!15766 () Regex!2725)

(declare-fun validRegex!1194 (Regex!2725) Bool)

(assert (=> b!976782 (= res!443589 (not (validRegex!1194 (regOne!5962 r!15766))))))

(declare-fun lambda!34688 () Int)

(declare-datatypes ((tuple2!11304 0))(
  ( (tuple2!11305 (_1!6478 List!9955) (_2!6478 List!9955)) )
))
(declare-datatypes ((Option!2294 0))(
  ( (None!2293) (Some!2293 (v!19710 tuple2!11304)) )
))
(declare-fun isDefined!1936 (Option!2294) Bool)

(declare-fun findConcatSeparation!400 (Regex!2725 Regex!2725 List!9955 List!9955 List!9955) Option!2294)

(declare-fun Exists!462 (Int) Bool)

(assert (=> b!976782 (= (isDefined!1936 (findConcatSeparation!400 (regOne!5962 r!15766) EmptyExpr!2725 Nil!9939 s!10566 s!10566)) (Exists!462 lambda!34688))))

(declare-datatypes ((Unit!15109 0))(
  ( (Unit!15110) )
))
(declare-fun lt!349544 () Unit!15109)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!400 (Regex!2725 Regex!2725 List!9955) Unit!15109)

(assert (=> b!976782 (= lt!349544 (lemmaFindConcatSeparationEquivalentToExists!400 (regOne!5962 r!15766) EmptyExpr!2725 s!10566))))

(declare-fun b!976783 () Bool)

(declare-fun e!628956 () Bool)

(assert (=> b!976783 (= e!628956 (not e!628954))))

(declare-fun res!443592 () Bool)

(assert (=> b!976783 (=> res!443592 e!628954)))

(declare-fun lt!349543 () Bool)

(get-info :version)

(assert (=> b!976783 (= res!443592 (or (not lt!349543) (and ((_ is Concat!4558) r!15766) ((_ is EmptyExpr!2725) (regOne!5962 r!15766))) (not ((_ is Concat!4558) r!15766)) (not ((_ is EmptyExpr!2725) (regTwo!5962 r!15766)))))))

(declare-fun matchRSpec!524 (Regex!2725 List!9955) Bool)

(assert (=> b!976783 (= lt!349543 (matchRSpec!524 r!15766 s!10566))))

(declare-fun matchR!1261 (Regex!2725 List!9955) Bool)

(assert (=> b!976783 (= lt!349543 (matchR!1261 r!15766 s!10566))))

(declare-fun lt!349545 () Unit!15109)

(declare-fun mainMatchTheorem!524 (Regex!2725 List!9955) Unit!15109)

(assert (=> b!976783 (= lt!349545 (mainMatchTheorem!524 r!15766 s!10566))))

(declare-fun res!443590 () Bool)

(assert (=> start!86718 (=> (not res!443590) (not e!628956))))

(assert (=> start!86718 (= res!443590 (validRegex!1194 r!15766))))

(assert (=> start!86718 e!628956))

(assert (=> start!86718 e!628955))

(declare-fun e!628953 () Bool)

(assert (=> start!86718 e!628953))

(declare-fun b!976784 () Bool)

(declare-fun tp!298800 () Bool)

(assert (=> b!976784 (= e!628955 tp!298800)))

(declare-fun b!976785 () Bool)

(declare-fun tp!298803 () Bool)

(assert (=> b!976785 (= e!628953 (and tp_is_empty!5093 tp!298803))))

(assert (= (and start!86718 res!443590) b!976783))

(assert (= (and b!976783 (not res!443592)) b!976780))

(assert (= (and b!976780 (not res!443591)) b!976782))

(assert (= (and b!976782 (not res!443589)) b!976778))

(assert (= (and start!86718 ((_ is ElementMatch!2725) r!15766)) b!976779))

(assert (= (and start!86718 ((_ is Concat!4558) r!15766)) b!976777))

(assert (= (and start!86718 ((_ is Star!2725) r!15766)) b!976784))

(assert (= (and start!86718 ((_ is Union!2725) r!15766)) b!976781))

(assert (= (and start!86718 ((_ is Cons!9939) s!10566)) b!976785))

(declare-fun m!1177869 () Bool)

(assert (=> b!976780 m!1177869))

(declare-fun m!1177871 () Bool)

(assert (=> b!976782 m!1177871))

(declare-fun m!1177873 () Bool)

(assert (=> b!976782 m!1177873))

(declare-fun m!1177875 () Bool)

(assert (=> b!976782 m!1177875))

(declare-fun m!1177877 () Bool)

(assert (=> b!976782 m!1177877))

(assert (=> b!976782 m!1177873))

(declare-fun m!1177879 () Bool)

(assert (=> b!976782 m!1177879))

(declare-fun m!1177881 () Bool)

(assert (=> b!976783 m!1177881))

(declare-fun m!1177883 () Bool)

(assert (=> b!976783 m!1177883))

(declare-fun m!1177885 () Bool)

(assert (=> b!976783 m!1177885))

(declare-fun m!1177887 () Bool)

(assert (=> start!86718 m!1177887))

(check-sat (not b!976785) (not b!976782) tp_is_empty!5093 (not b!976780) (not start!86718) (not b!976783) (not b!976781) (not b!976777) (not b!976784))
(check-sat)
