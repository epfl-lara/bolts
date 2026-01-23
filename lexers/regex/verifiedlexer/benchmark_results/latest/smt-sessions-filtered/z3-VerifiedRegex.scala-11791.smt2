; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664474 () Bool)

(assert start!664474)

(declare-fun b!6894916 () Bool)

(assert (=> b!6894916 true))

(assert (=> b!6894916 true))

(assert (=> b!6894916 true))

(declare-fun lambda!390876 () Int)

(declare-fun lambda!390875 () Int)

(assert (=> b!6894916 (not (= lambda!390876 lambda!390875))))

(assert (=> b!6894916 true))

(assert (=> b!6894916 true))

(assert (=> b!6894916 true))

(declare-fun b!6894912 () Bool)

(declare-fun e!4153146 () Bool)

(assert (=> b!6894912 (= e!4153146 true)))

(declare-datatypes ((C!33928 0))(
  ( (C!33929 (val!26666 Int)) )
))
(declare-datatypes ((Regex!16829 0))(
  ( (ElementMatch!16829 (c!1281659 C!33928)) (Concat!25674 (regOne!34170 Regex!16829) (regTwo!34170 Regex!16829)) (EmptyExpr!16829) (Star!16829 (reg!17158 Regex!16829)) (EmptyLang!16829) (Union!16829 (regOne!34171 Regex!16829) (regTwo!34171 Regex!16829)) )
))
(declare-fun lt!2463623 () Regex!16829)

(declare-datatypes ((List!66586 0))(
  ( (Nil!66462) (Cons!66462 (h!72910 C!33928) (t!380329 List!66586)) )
))
(declare-datatypes ((tuple2!67392 0))(
  ( (tuple2!67393 (_1!36999 List!66586) (_2!36999 List!66586)) )
))
(declare-fun lt!2463624 () tuple2!67392)

(declare-fun matchRSpec!3892 (Regex!16829 List!66586) Bool)

(assert (=> b!6894912 (matchRSpec!3892 lt!2463623 (_2!36999 lt!2463624))))

(declare-datatypes ((Unit!160378 0))(
  ( (Unit!160379) )
))
(declare-fun lt!2463620 () Unit!160378)

(declare-fun mainMatchTheorem!3892 (Regex!16829 List!66586) Unit!160378)

(assert (=> b!6894912 (= lt!2463620 (mainMatchTheorem!3892 lt!2463623 (_2!36999 lt!2463624)))))

(declare-fun b!6894913 () Bool)

(declare-fun e!4153145 () Bool)

(declare-fun tp!1897772 () Bool)

(declare-fun tp!1897776 () Bool)

(assert (=> b!6894913 (= e!4153145 (and tp!1897772 tp!1897776))))

(declare-fun b!6894914 () Bool)

(declare-fun e!4153144 () Bool)

(declare-fun tp!1897775 () Bool)

(assert (=> b!6894914 (= e!4153144 tp!1897775)))

(declare-fun b!6894915 () Bool)

(declare-fun res!2811066 () Bool)

(declare-fun e!4153142 () Bool)

(assert (=> b!6894915 (=> (not res!2811066) (not e!4153142))))

(declare-fun r3!135 () Regex!16829)

(declare-fun validRegex!8537 (Regex!16829) Bool)

(assert (=> b!6894915 (= res!2811066 (validRegex!8537 r3!135))))

(declare-fun e!4153139 () Bool)

(assert (=> b!6894916 (= e!4153139 e!4153146)))

(declare-fun res!2811070 () Bool)

(assert (=> b!6894916 (=> res!2811070 e!4153146)))

(declare-fun lt!2463627 () Bool)

(assert (=> b!6894916 (= res!2811070 (not lt!2463627))))

(declare-fun r1!6342 () Regex!16829)

(assert (=> b!6894916 (= lt!2463627 (matchRSpec!3892 r1!6342 (_1!36999 lt!2463624)))))

(declare-fun matchR!8974 (Regex!16829 List!66586) Bool)

(assert (=> b!6894916 (= lt!2463627 (matchR!8974 r1!6342 (_1!36999 lt!2463624)))))

(declare-fun lt!2463621 () Unit!160378)

(assert (=> b!6894916 (= lt!2463621 (mainMatchTheorem!3892 r1!6342 (_1!36999 lt!2463624)))))

(declare-datatypes ((Option!16608 0))(
  ( (None!16607) (Some!16607 (v!52879 tuple2!67392)) )
))
(declare-fun lt!2463622 () Option!16608)

(declare-fun get!23194 (Option!16608) tuple2!67392)

(assert (=> b!6894916 (= lt!2463624 (get!23194 lt!2463622))))

(declare-fun Exists!3837 (Int) Bool)

(assert (=> b!6894916 (= (Exists!3837 lambda!390875) (Exists!3837 lambda!390876))))

(declare-fun s!14361 () List!66586)

(declare-fun lt!2463631 () Unit!160378)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2310 (Regex!16829 Regex!16829 List!66586) Unit!160378)

(assert (=> b!6894916 (= lt!2463631 (lemmaExistCutMatchRandMatchRSpecEquivalent!2310 r1!6342 lt!2463623 s!14361))))

(assert (=> b!6894916 (Exists!3837 lambda!390875)))

(declare-fun lt!2463629 () Unit!160378)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2784 (Regex!16829 Regex!16829 List!66586) Unit!160378)

(assert (=> b!6894916 (= lt!2463629 (lemmaFindConcatSeparationEquivalentToExists!2784 r1!6342 lt!2463623 s!14361))))

(declare-fun res!2811068 () Bool)

(assert (=> start!664474 (=> (not res!2811068) (not e!4153142))))

(assert (=> start!664474 (= res!2811068 (validRegex!8537 r1!6342))))

(assert (=> start!664474 e!4153142))

(assert (=> start!664474 e!4153144))

(declare-fun e!4153140 () Bool)

(assert (=> start!664474 e!4153140))

(assert (=> start!664474 e!4153145))

(declare-fun e!4153143 () Bool)

(assert (=> start!664474 e!4153143))

(declare-fun b!6894917 () Bool)

(declare-fun e!4153141 () Bool)

(assert (=> b!6894917 (= e!4153141 e!4153139)))

(declare-fun res!2811071 () Bool)

(assert (=> b!6894917 (=> res!2811071 e!4153139)))

(declare-fun isDefined!13311 (Option!16608) Bool)

(assert (=> b!6894917 (= res!2811071 (not (isDefined!13311 lt!2463622)))))

(declare-fun findConcatSeparation!3022 (Regex!16829 Regex!16829 List!66586 List!66586 List!66586) Option!16608)

(assert (=> b!6894917 (= lt!2463622 (findConcatSeparation!3022 r1!6342 lt!2463623 Nil!66462 s!14361 s!14361))))

(declare-fun b!6894918 () Bool)

(assert (=> b!6894918 (= e!4153142 (not e!4153141))))

(declare-fun res!2811067 () Bool)

(assert (=> b!6894918 (=> res!2811067 e!4153141)))

(declare-fun lt!2463619 () Bool)

(assert (=> b!6894918 (= res!2811067 lt!2463619)))

(declare-fun lt!2463630 () Regex!16829)

(assert (=> b!6894918 (= (matchR!8974 lt!2463630 s!14361) (matchRSpec!3892 lt!2463630 s!14361))))

(declare-fun lt!2463626 () Unit!160378)

(assert (=> b!6894918 (= lt!2463626 (mainMatchTheorem!3892 lt!2463630 s!14361))))

(declare-fun lt!2463628 () Regex!16829)

(assert (=> b!6894918 (= lt!2463619 (matchRSpec!3892 lt!2463628 s!14361))))

(assert (=> b!6894918 (= lt!2463619 (matchR!8974 lt!2463628 s!14361))))

(declare-fun lt!2463625 () Unit!160378)

(assert (=> b!6894918 (= lt!2463625 (mainMatchTheorem!3892 lt!2463628 s!14361))))

(assert (=> b!6894918 (= lt!2463630 (Concat!25674 r1!6342 lt!2463623))))

(declare-fun r2!6280 () Regex!16829)

(assert (=> b!6894918 (= lt!2463623 (Concat!25674 r2!6280 r3!135))))

(assert (=> b!6894918 (= lt!2463628 (Concat!25674 (Concat!25674 r1!6342 r2!6280) r3!135))))

(declare-fun b!6894919 () Bool)

(declare-fun res!2811072 () Bool)

(assert (=> b!6894919 (=> (not res!2811072) (not e!4153142))))

(assert (=> b!6894919 (= res!2811072 (validRegex!8537 r2!6280))))

(declare-fun b!6894920 () Bool)

(declare-fun tp!1897774 () Bool)

(assert (=> b!6894920 (= e!4153140 tp!1897774)))

(declare-fun b!6894921 () Bool)

(declare-fun tp!1897770 () Bool)

(declare-fun tp!1897780 () Bool)

(assert (=> b!6894921 (= e!4153140 (and tp!1897770 tp!1897780))))

(declare-fun b!6894922 () Bool)

(declare-fun tp_is_empty!42883 () Bool)

(assert (=> b!6894922 (= e!4153144 tp_is_empty!42883)))

(declare-fun b!6894923 () Bool)

(declare-fun tp!1897781 () Bool)

(assert (=> b!6894923 (= e!4153143 (and tp_is_empty!42883 tp!1897781))))

(declare-fun b!6894924 () Bool)

(declare-fun tp!1897769 () Bool)

(declare-fun tp!1897768 () Bool)

(assert (=> b!6894924 (= e!4153145 (and tp!1897769 tp!1897768))))

(declare-fun b!6894925 () Bool)

(declare-fun tp!1897782 () Bool)

(assert (=> b!6894925 (= e!4153145 tp!1897782)))

(declare-fun b!6894926 () Bool)

(declare-fun tp!1897777 () Bool)

(declare-fun tp!1897783 () Bool)

(assert (=> b!6894926 (= e!4153140 (and tp!1897777 tp!1897783))))

(declare-fun b!6894927 () Bool)

(declare-fun tp!1897771 () Bool)

(declare-fun tp!1897778 () Bool)

(assert (=> b!6894927 (= e!4153144 (and tp!1897771 tp!1897778))))

(declare-fun b!6894928 () Bool)

(assert (=> b!6894928 (= e!4153145 tp_is_empty!42883)))

(declare-fun b!6894929 () Bool)

(declare-fun tp!1897779 () Bool)

(declare-fun tp!1897773 () Bool)

(assert (=> b!6894929 (= e!4153144 (and tp!1897779 tp!1897773))))

(declare-fun b!6894930 () Bool)

(assert (=> b!6894930 (= e!4153140 tp_is_empty!42883)))

(declare-fun b!6894931 () Bool)

(declare-fun res!2811069 () Bool)

(assert (=> b!6894931 (=> res!2811069 e!4153146)))

(assert (=> b!6894931 (= res!2811069 (not (matchR!8974 lt!2463623 (_2!36999 lt!2463624))))))

(assert (= (and start!664474 res!2811068) b!6894919))

(assert (= (and b!6894919 res!2811072) b!6894915))

(assert (= (and b!6894915 res!2811066) b!6894918))

(assert (= (and b!6894918 (not res!2811067)) b!6894917))

(assert (= (and b!6894917 (not res!2811071)) b!6894916))

(assert (= (and b!6894916 (not res!2811070)) b!6894931))

(assert (= (and b!6894931 (not res!2811069)) b!6894912))

(get-info :version)

(assert (= (and start!664474 ((_ is ElementMatch!16829) r1!6342)) b!6894922))

(assert (= (and start!664474 ((_ is Concat!25674) r1!6342)) b!6894929))

(assert (= (and start!664474 ((_ is Star!16829) r1!6342)) b!6894914))

(assert (= (and start!664474 ((_ is Union!16829) r1!6342)) b!6894927))

(assert (= (and start!664474 ((_ is ElementMatch!16829) r2!6280)) b!6894930))

(assert (= (and start!664474 ((_ is Concat!25674) r2!6280)) b!6894921))

(assert (= (and start!664474 ((_ is Star!16829) r2!6280)) b!6894920))

(assert (= (and start!664474 ((_ is Union!16829) r2!6280)) b!6894926))

(assert (= (and start!664474 ((_ is ElementMatch!16829) r3!135)) b!6894928))

(assert (= (and start!664474 ((_ is Concat!25674) r3!135)) b!6894913))

(assert (= (and start!664474 ((_ is Star!16829) r3!135)) b!6894925))

(assert (= (and start!664474 ((_ is Union!16829) r3!135)) b!6894924))

(assert (= (and start!664474 ((_ is Cons!66462) s!14361)) b!6894923))

(declare-fun m!7614508 () Bool)

(assert (=> start!664474 m!7614508))

(declare-fun m!7614510 () Bool)

(assert (=> b!6894918 m!7614510))

(declare-fun m!7614512 () Bool)

(assert (=> b!6894918 m!7614512))

(declare-fun m!7614514 () Bool)

(assert (=> b!6894918 m!7614514))

(declare-fun m!7614516 () Bool)

(assert (=> b!6894918 m!7614516))

(declare-fun m!7614518 () Bool)

(assert (=> b!6894918 m!7614518))

(declare-fun m!7614520 () Bool)

(assert (=> b!6894918 m!7614520))

(declare-fun m!7614522 () Bool)

(assert (=> b!6894931 m!7614522))

(declare-fun m!7614524 () Bool)

(assert (=> b!6894917 m!7614524))

(declare-fun m!7614526 () Bool)

(assert (=> b!6894917 m!7614526))

(declare-fun m!7614528 () Bool)

(assert (=> b!6894915 m!7614528))

(declare-fun m!7614530 () Bool)

(assert (=> b!6894919 m!7614530))

(declare-fun m!7614532 () Bool)

(assert (=> b!6894912 m!7614532))

(declare-fun m!7614534 () Bool)

(assert (=> b!6894912 m!7614534))

(declare-fun m!7614536 () Bool)

(assert (=> b!6894916 m!7614536))

(declare-fun m!7614538 () Bool)

(assert (=> b!6894916 m!7614538))

(declare-fun m!7614540 () Bool)

(assert (=> b!6894916 m!7614540))

(declare-fun m!7614542 () Bool)

(assert (=> b!6894916 m!7614542))

(assert (=> b!6894916 m!7614540))

(declare-fun m!7614544 () Bool)

(assert (=> b!6894916 m!7614544))

(declare-fun m!7614546 () Bool)

(assert (=> b!6894916 m!7614546))

(declare-fun m!7614548 () Bool)

(assert (=> b!6894916 m!7614548))

(declare-fun m!7614550 () Bool)

(assert (=> b!6894916 m!7614550))

(check-sat (not b!6894917) tp_is_empty!42883 (not b!6894929) (not b!6894923) (not b!6894913) (not b!6894919) (not b!6894918) (not b!6894926) (not b!6894916) (not start!664474) (not b!6894931) (not b!6894924) (not b!6894921) (not b!6894914) (not b!6894920) (not b!6894915) (not b!6894912) (not b!6894927) (not b!6894925))
(check-sat)
