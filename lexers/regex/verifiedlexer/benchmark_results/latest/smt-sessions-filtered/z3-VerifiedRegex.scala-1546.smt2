; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80842 () Bool)

(assert start!80842)

(declare-fun b!897850 () Bool)

(assert (=> b!897850 true))

(assert (=> b!897850 true))

(assert (=> b!897850 true))

(declare-fun lambda!27938 () Int)

(declare-fun lambda!27937 () Int)

(assert (=> b!897850 (not (= lambda!27938 lambda!27937))))

(assert (=> b!897850 true))

(assert (=> b!897850 true))

(assert (=> b!897850 true))

(declare-fun b!897841 () Bool)

(declare-fun res!408213 () Bool)

(declare-fun e!587452 () Bool)

(assert (=> b!897841 (=> res!408213 e!587452)))

(declare-datatypes ((C!5272 0))(
  ( (C!5273 (val!2884 Int)) )
))
(declare-datatypes ((Regex!2351 0))(
  ( (ElementMatch!2351 (c!145340 C!5272)) (Concat!4184 (regOne!5214 Regex!2351) (regTwo!5214 Regex!2351)) (EmptyExpr!2351) (Star!2351 (reg!2680 Regex!2351)) (EmptyLang!2351) (Union!2351 (regOne!5215 Regex!2351) (regTwo!5215 Regex!2351)) )
))
(declare-fun lt!333753 () Regex!2351)

(declare-datatypes ((List!9581 0))(
  ( (Nil!9565) (Cons!9565 (h!14966 C!5272) (t!100627 List!9581)) )
))
(declare-datatypes ((tuple2!10704 0))(
  ( (tuple2!10705 (_1!6178 List!9581) (_2!6178 List!9581)) )
))
(declare-fun lt!333746 () tuple2!10704)

(declare-fun matchR!889 (Regex!2351 List!9581) Bool)

(assert (=> b!897841 (= res!408213 (not (matchR!889 lt!333753 (_2!6178 lt!333746))))))

(declare-fun b!897842 () Bool)

(assert (=> b!897842 (= e!587452 true)))

(declare-fun b!897843 () Bool)

(declare-fun e!587451 () Bool)

(assert (=> b!897843 (= e!587451 e!587452)))

(declare-fun res!408214 () Bool)

(assert (=> b!897843 (=> res!408214 e!587452)))

(declare-fun r!15766 () Regex!2351)

(assert (=> b!897843 (= res!408214 (not (matchR!889 (reg!2680 r!15766) (_1!6178 lt!333746))))))

(declare-datatypes ((Option!1994 0))(
  ( (None!1993) (Some!1993 (v!19410 tuple2!10704)) )
))
(declare-fun lt!333747 () Option!1994)

(declare-fun get!3025 (Option!1994) tuple2!10704)

(assert (=> b!897843 (= lt!333746 (get!3025 lt!333747))))

(declare-fun b!897844 () Bool)

(declare-fun e!587448 () Bool)

(declare-fun tp_is_empty!4345 () Bool)

(assert (=> b!897844 (= e!587448 tp_is_empty!4345)))

(declare-fun b!897845 () Bool)

(declare-fun e!587453 () Bool)

(declare-fun e!587450 () Bool)

(assert (=> b!897845 (= e!587453 (not e!587450))))

(declare-fun res!408211 () Bool)

(assert (=> b!897845 (=> res!408211 e!587450)))

(declare-fun lt!333750 () Bool)

(get-info :version)

(assert (=> b!897845 (= res!408211 (or (not lt!333750) (and ((_ is Concat!4184) r!15766) ((_ is EmptyExpr!2351) (regOne!5214 r!15766))) (and ((_ is Concat!4184) r!15766) ((_ is EmptyExpr!2351) (regTwo!5214 r!15766))) ((_ is Concat!4184) r!15766) ((_ is Union!2351) r!15766) (not ((_ is Star!2351) r!15766))))))

(declare-fun s!10566 () List!9581)

(declare-fun matchRSpec!152 (Regex!2351 List!9581) Bool)

(assert (=> b!897845 (= lt!333750 (matchRSpec!152 r!15766 s!10566))))

(assert (=> b!897845 (= lt!333750 (matchR!889 r!15766 s!10566))))

(declare-datatypes ((Unit!14281 0))(
  ( (Unit!14282) )
))
(declare-fun lt!333749 () Unit!14281)

(declare-fun mainMatchTheorem!152 (Regex!2351 List!9581) Unit!14281)

(assert (=> b!897845 (= lt!333749 (mainMatchTheorem!152 r!15766 s!10566))))

(declare-fun res!408210 () Bool)

(assert (=> start!80842 (=> (not res!408210) (not e!587453))))

(declare-fun validRegex!820 (Regex!2351) Bool)

(assert (=> start!80842 (= res!408210 (validRegex!820 r!15766))))

(assert (=> start!80842 e!587453))

(assert (=> start!80842 e!587448))

(declare-fun e!587449 () Bool)

(assert (=> start!80842 e!587449))

(declare-fun b!897846 () Bool)

(declare-fun res!408209 () Bool)

(assert (=> b!897846 (=> res!408209 e!587451)))

(declare-fun lt!333751 () Bool)

(assert (=> b!897846 (= res!408209 (not lt!333751))))

(declare-fun b!897847 () Bool)

(declare-fun tp!282048 () Bool)

(assert (=> b!897847 (= e!587449 (and tp_is_empty!4345 tp!282048))))

(declare-fun b!897848 () Bool)

(declare-fun tp!282044 () Bool)

(declare-fun tp!282045 () Bool)

(assert (=> b!897848 (= e!587448 (and tp!282044 tp!282045))))

(declare-fun b!897849 () Bool)

(declare-fun tp!282046 () Bool)

(assert (=> b!897849 (= e!587448 tp!282046)))

(assert (=> b!897850 (= e!587450 e!587451)))

(declare-fun res!408212 () Bool)

(assert (=> b!897850 (=> res!408212 e!587451)))

(declare-fun isEmpty!5760 (List!9581) Bool)

(assert (=> b!897850 (= res!408212 (isEmpty!5760 s!10566))))

(declare-fun Exists!128 (Int) Bool)

(assert (=> b!897850 (= (Exists!128 lambda!27937) (Exists!128 lambda!27938))))

(declare-fun lt!333752 () Unit!14281)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!20 (Regex!2351 List!9581) Unit!14281)

(assert (=> b!897850 (= lt!333752 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!20 (reg!2680 r!15766) s!10566))))

(assert (=> b!897850 (= lt!333751 (Exists!128 lambda!27937))))

(declare-fun isDefined!1636 (Option!1994) Bool)

(assert (=> b!897850 (= lt!333751 (isDefined!1636 lt!333747))))

(declare-fun findConcatSeparation!100 (Regex!2351 Regex!2351 List!9581 List!9581 List!9581) Option!1994)

(assert (=> b!897850 (= lt!333747 (findConcatSeparation!100 (reg!2680 r!15766) lt!333753 Nil!9565 s!10566 s!10566))))

(declare-fun lt!333748 () Unit!14281)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!100 (Regex!2351 Regex!2351 List!9581) Unit!14281)

(assert (=> b!897850 (= lt!333748 (lemmaFindConcatSeparationEquivalentToExists!100 (reg!2680 r!15766) lt!333753 s!10566))))

(assert (=> b!897850 (= lt!333753 (Star!2351 (reg!2680 r!15766)))))

(declare-fun b!897851 () Bool)

(declare-fun tp!282047 () Bool)

(declare-fun tp!282043 () Bool)

(assert (=> b!897851 (= e!587448 (and tp!282047 tp!282043))))

(assert (= (and start!80842 res!408210) b!897845))

(assert (= (and b!897845 (not res!408211)) b!897850))

(assert (= (and b!897850 (not res!408212)) b!897846))

(assert (= (and b!897846 (not res!408209)) b!897843))

(assert (= (and b!897843 (not res!408214)) b!897841))

(assert (= (and b!897841 (not res!408213)) b!897842))

(assert (= (and start!80842 ((_ is ElementMatch!2351) r!15766)) b!897844))

(assert (= (and start!80842 ((_ is Concat!4184) r!15766)) b!897851))

(assert (= (and start!80842 ((_ is Star!2351) r!15766)) b!897849))

(assert (= (and start!80842 ((_ is Union!2351) r!15766)) b!897848))

(assert (= (and start!80842 ((_ is Cons!9565) s!10566)) b!897847))

(declare-fun m!1136825 () Bool)

(assert (=> start!80842 m!1136825))

(declare-fun m!1136827 () Bool)

(assert (=> b!897843 m!1136827))

(declare-fun m!1136829 () Bool)

(assert (=> b!897843 m!1136829))

(declare-fun m!1136831 () Bool)

(assert (=> b!897841 m!1136831))

(declare-fun m!1136833 () Bool)

(assert (=> b!897845 m!1136833))

(declare-fun m!1136835 () Bool)

(assert (=> b!897845 m!1136835))

(declare-fun m!1136837 () Bool)

(assert (=> b!897845 m!1136837))

(declare-fun m!1136839 () Bool)

(assert (=> b!897850 m!1136839))

(declare-fun m!1136841 () Bool)

(assert (=> b!897850 m!1136841))

(declare-fun m!1136843 () Bool)

(assert (=> b!897850 m!1136843))

(declare-fun m!1136845 () Bool)

(assert (=> b!897850 m!1136845))

(declare-fun m!1136847 () Bool)

(assert (=> b!897850 m!1136847))

(declare-fun m!1136849 () Bool)

(assert (=> b!897850 m!1136849))

(declare-fun m!1136851 () Bool)

(assert (=> b!897850 m!1136851))

(assert (=> b!897850 m!1136839))

(check-sat (not b!897851) (not b!897841) (not start!80842) tp_is_empty!4345 (not b!897850) (not b!897843) (not b!897848) (not b!897847) (not b!897849) (not b!897845))
(check-sat)
