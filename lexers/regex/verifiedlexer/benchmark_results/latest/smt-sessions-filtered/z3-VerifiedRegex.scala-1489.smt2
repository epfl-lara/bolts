; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79354 () Bool)

(assert start!79354)

(declare-fun b!878039 () Bool)

(assert (=> b!878039 true))

(assert (=> b!878039 true))

(declare-fun lambda!26650 () Int)

(declare-fun lambda!26649 () Int)

(assert (=> b!878039 (not (= lambda!26650 lambda!26649))))

(assert (=> b!878039 true))

(assert (=> b!878039 true))

(declare-fun b!878035 () Bool)

(declare-fun res!399240 () Bool)

(declare-fun e!576814 () Bool)

(assert (=> b!878035 (=> res!399240 e!576814)))

(declare-datatypes ((C!5044 0))(
  ( (C!5045 (val!2770 Int)) )
))
(declare-datatypes ((List!9467 0))(
  ( (Nil!9451) (Cons!9451 (h!14852 C!5044) (t!100513 List!9467)) )
))
(declare-fun s!10566 () List!9467)

(declare-fun isEmpty!5642 (List!9467) Bool)

(assert (=> b!878035 (= res!399240 (isEmpty!5642 s!10566))))

(declare-fun b!878036 () Bool)

(declare-fun e!576811 () Bool)

(declare-fun tp!277561 () Bool)

(assert (=> b!878036 (= e!576811 tp!277561)))

(declare-fun b!878037 () Bool)

(declare-fun tp!277562 () Bool)

(declare-fun tp!277564 () Bool)

(assert (=> b!878037 (= e!576811 (and tp!277562 tp!277564))))

(declare-fun b!878038 () Bool)

(declare-fun e!576813 () Bool)

(assert (=> b!878038 (= e!576813 (not e!576814))))

(declare-fun res!399237 () Bool)

(assert (=> b!878038 (=> res!399237 e!576814)))

(declare-fun lt!330118 () Bool)

(declare-datatypes ((Regex!2237 0))(
  ( (ElementMatch!2237 (c!141972 C!5044)) (Concat!4070 (regOne!4986 Regex!2237) (regTwo!4986 Regex!2237)) (EmptyExpr!2237) (Star!2237 (reg!2566 Regex!2237)) (EmptyLang!2237) (Union!2237 (regOne!4987 Regex!2237) (regTwo!4987 Regex!2237)) )
))
(declare-fun r!15766 () Regex!2237)

(get-info :version)

(assert (=> b!878038 (= res!399237 (or (not lt!330118) (and ((_ is Concat!4070) r!15766) ((_ is EmptyExpr!2237) (regOne!4986 r!15766))) (not ((_ is Concat!4070) r!15766)) (not ((_ is EmptyExpr!2237) (regTwo!4986 r!15766)))))))

(declare-fun matchRSpec!38 (Regex!2237 List!9467) Bool)

(assert (=> b!878038 (= lt!330118 (matchRSpec!38 r!15766 s!10566))))

(declare-fun matchR!775 (Regex!2237 List!9467) Bool)

(assert (=> b!878038 (= lt!330118 (matchR!775 r!15766 s!10566))))

(declare-datatypes ((Unit!14053 0))(
  ( (Unit!14054) )
))
(declare-fun lt!330117 () Unit!14053)

(declare-fun mainMatchTheorem!38 (Regex!2237 List!9467) Unit!14053)

(assert (=> b!878038 (= lt!330117 (mainMatchTheorem!38 r!15766 s!10566))))

(declare-fun e!576812 () Bool)

(assert (=> b!878039 (= e!576814 e!576812)))

(declare-fun res!399238 () Bool)

(assert (=> b!878039 (=> res!399238 e!576812)))

(declare-fun validRegex!706 (Regex!2237) Bool)

(assert (=> b!878039 (= res!399238 (not (validRegex!706 (regOne!4986 r!15766))))))

(declare-fun Exists!34 (Int) Bool)

(assert (=> b!878039 (= (Exists!34 lambda!26649) (Exists!34 lambda!26650))))

(declare-fun lt!330119 () Unit!14053)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!26 (Regex!2237 Regex!2237 List!9467) Unit!14053)

(assert (=> b!878039 (= lt!330119 (lemmaExistCutMatchRandMatchRSpecEquivalent!26 (regOne!4986 r!15766) EmptyExpr!2237 s!10566))))

(declare-datatypes ((tuple2!10564 0))(
  ( (tuple2!10565 (_1!6108 List!9467) (_2!6108 List!9467)) )
))
(declare-datatypes ((Option!1924 0))(
  ( (None!1923) (Some!1923 (v!19340 tuple2!10564)) )
))
(declare-fun isDefined!1566 (Option!1924) Bool)

(declare-fun findConcatSeparation!30 (Regex!2237 Regex!2237 List!9467 List!9467 List!9467) Option!1924)

(assert (=> b!878039 (= (isDefined!1566 (findConcatSeparation!30 (regOne!4986 r!15766) EmptyExpr!2237 Nil!9451 s!10566 s!10566)) (Exists!34 lambda!26649))))

(declare-fun lt!330116 () Unit!14053)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!30 (Regex!2237 Regex!2237 List!9467) Unit!14053)

(assert (=> b!878039 (= lt!330116 (lemmaFindConcatSeparationEquivalentToExists!30 (regOne!4986 r!15766) EmptyExpr!2237 s!10566))))

(declare-fun b!878040 () Bool)

(assert (=> b!878040 (= e!576812 true)))

(declare-fun b!878041 () Bool)

(declare-fun e!576815 () Bool)

(declare-fun tp_is_empty!4117 () Bool)

(declare-fun tp!277559 () Bool)

(assert (=> b!878041 (= e!576815 (and tp_is_empty!4117 tp!277559))))

(declare-fun res!399239 () Bool)

(assert (=> start!79354 (=> (not res!399239) (not e!576813))))

(assert (=> start!79354 (= res!399239 (validRegex!706 r!15766))))

(assert (=> start!79354 e!576813))

(assert (=> start!79354 e!576811))

(assert (=> start!79354 e!576815))

(declare-fun b!878042 () Bool)

(declare-fun tp!277560 () Bool)

(declare-fun tp!277563 () Bool)

(assert (=> b!878042 (= e!576811 (and tp!277560 tp!277563))))

(declare-fun b!878043 () Bool)

(assert (=> b!878043 (= e!576811 tp_is_empty!4117)))

(assert (= (and start!79354 res!399239) b!878038))

(assert (= (and b!878038 (not res!399237)) b!878035))

(assert (= (and b!878035 (not res!399240)) b!878039))

(assert (= (and b!878039 (not res!399238)) b!878040))

(assert (= (and start!79354 ((_ is ElementMatch!2237) r!15766)) b!878043))

(assert (= (and start!79354 ((_ is Concat!4070) r!15766)) b!878042))

(assert (= (and start!79354 ((_ is Star!2237) r!15766)) b!878036))

(assert (= (and start!79354 ((_ is Union!2237) r!15766)) b!878037))

(assert (= (and start!79354 ((_ is Cons!9451) s!10566)) b!878041))

(declare-fun m!1127933 () Bool)

(assert (=> b!878035 m!1127933))

(declare-fun m!1127935 () Bool)

(assert (=> b!878038 m!1127935))

(declare-fun m!1127937 () Bool)

(assert (=> b!878038 m!1127937))

(declare-fun m!1127939 () Bool)

(assert (=> b!878038 m!1127939))

(declare-fun m!1127941 () Bool)

(assert (=> b!878039 m!1127941))

(declare-fun m!1127943 () Bool)

(assert (=> b!878039 m!1127943))

(declare-fun m!1127945 () Bool)

(assert (=> b!878039 m!1127945))

(declare-fun m!1127947 () Bool)

(assert (=> b!878039 m!1127947))

(declare-fun m!1127949 () Bool)

(assert (=> b!878039 m!1127949))

(declare-fun m!1127951 () Bool)

(assert (=> b!878039 m!1127951))

(declare-fun m!1127953 () Bool)

(assert (=> b!878039 m!1127953))

(assert (=> b!878039 m!1127943))

(assert (=> b!878039 m!1127949))

(declare-fun m!1127955 () Bool)

(assert (=> start!79354 m!1127955))

(check-sat (not b!878037) (not b!878039) (not b!878036) (not b!878041) (not b!878038) tp_is_empty!4117 (not start!79354) (not b!878042) (not b!878035))
(check-sat)
