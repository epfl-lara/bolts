; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84238 () Bool)

(assert start!84238)

(declare-fun b!944139 () Bool)

(assert (=> b!944139 true))

(assert (=> b!944139 true))

(assert (=> b!944139 true))

(declare-fun lambda!32008 () Int)

(declare-fun lambda!32007 () Int)

(assert (=> b!944139 (not (= lambda!32008 lambda!32007))))

(assert (=> b!944139 true))

(assert (=> b!944139 true))

(assert (=> b!944139 true))

(declare-fun bs!239301 () Bool)

(declare-fun b!944149 () Bool)

(assert (= bs!239301 (and b!944149 b!944139)))

(declare-fun lambda!32009 () Int)

(declare-datatypes ((C!5752 0))(
  ( (C!5753 (val!3124 Int)) )
))
(declare-datatypes ((Regex!2591 0))(
  ( (ElementMatch!2591 (c!153696 C!5752)) (Concat!4424 (regOne!5694 Regex!2591) (regTwo!5694 Regex!2591)) (EmptyExpr!2591) (Star!2591 (reg!2920 Regex!2591)) (EmptyLang!2591) (Union!2591 (regOne!5695 Regex!2591) (regTwo!5695 Regex!2591)) )
))
(declare-fun lt!342946 () Regex!2591)

(declare-fun r!15766 () Regex!2591)

(declare-fun lt!342940 () Regex!2591)

(declare-fun lt!342948 () Regex!2591)

(assert (=> bs!239301 (= (and (= lt!342948 (reg!2920 r!15766)) (= lt!342940 lt!342946)) (= lambda!32009 lambda!32007))))

(assert (=> bs!239301 (not (= lambda!32009 lambda!32008))))

(assert (=> b!944149 true))

(assert (=> b!944149 true))

(assert (=> b!944149 true))

(declare-fun lambda!32010 () Int)

(assert (=> bs!239301 (not (= lambda!32010 lambda!32007))))

(assert (=> bs!239301 (= (and (= lt!342948 (reg!2920 r!15766)) (= lt!342940 lt!342946)) (= lambda!32010 lambda!32008))))

(assert (=> b!944149 (not (= lambda!32010 lambda!32009))))

(assert (=> b!944149 true))

(assert (=> b!944149 true))

(assert (=> b!944149 true))

(declare-fun b!944138 () Bool)

(declare-fun res!428920 () Bool)

(declare-fun e!612099 () Bool)

(assert (=> b!944138 (=> res!428920 e!612099)))

(declare-fun lt!342947 () Bool)

(assert (=> b!944138 (= res!428920 (not lt!342947))))

(declare-fun e!612094 () Bool)

(declare-fun e!612093 () Bool)

(assert (=> b!944139 (= e!612094 e!612093)))

(declare-fun res!428923 () Bool)

(assert (=> b!944139 (=> res!428923 e!612093)))

(declare-datatypes ((List!9821 0))(
  ( (Nil!9805) (Cons!9805 (h!15206 C!5752) (t!100867 List!9821)) )
))
(declare-fun s!10566 () List!9821)

(declare-fun matchR!1129 (Regex!2591 List!9821) Bool)

(assert (=> b!944139 (= res!428923 (not (matchR!1129 lt!342940 s!10566)))))

(assert (=> b!944139 (= lt!342940 (Star!2591 lt!342948))))

(declare-fun removeUselessConcat!260 (Regex!2591) Regex!2591)

(assert (=> b!944139 (= lt!342948 (removeUselessConcat!260 (reg!2920 r!15766)))))

(declare-fun Exists!342 (Int) Bool)

(assert (=> b!944139 (= (Exists!342 lambda!32007) (Exists!342 lambda!32008))))

(declare-datatypes ((Unit!14801 0))(
  ( (Unit!14802) )
))
(declare-fun lt!342945 () Unit!14801)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!86 (Regex!2591 List!9821) Unit!14801)

(assert (=> b!944139 (= lt!342945 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!86 (reg!2920 r!15766) s!10566))))

(declare-datatypes ((tuple2!11080 0))(
  ( (tuple2!11081 (_1!6366 List!9821) (_2!6366 List!9821)) )
))
(declare-datatypes ((Option!2182 0))(
  ( (None!2181) (Some!2181 (v!19598 tuple2!11080)) )
))
(declare-fun isDefined!1824 (Option!2182) Bool)

(declare-fun findConcatSeparation!288 (Regex!2591 Regex!2591 List!9821 List!9821 List!9821) Option!2182)

(assert (=> b!944139 (= (isDefined!1824 (findConcatSeparation!288 (reg!2920 r!15766) lt!342946 Nil!9805 s!10566 s!10566)) (Exists!342 lambda!32007))))

(declare-fun lt!342943 () Unit!14801)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!288 (Regex!2591 Regex!2591 List!9821) Unit!14801)

(assert (=> b!944139 (= lt!342943 (lemmaFindConcatSeparationEquivalentToExists!288 (reg!2920 r!15766) lt!342946 s!10566))))

(assert (=> b!944139 (= lt!342946 (Star!2591 (reg!2920 r!15766)))))

(declare-fun b!944140 () Bool)

(declare-fun e!612098 () Bool)

(declare-fun tp!291684 () Bool)

(assert (=> b!944140 (= e!612098 tp!291684)))

(declare-fun b!944142 () Bool)

(declare-fun tp!291687 () Bool)

(declare-fun tp!291686 () Bool)

(assert (=> b!944142 (= e!612098 (and tp!291687 tp!291686))))

(declare-fun b!944143 () Bool)

(declare-fun e!612095 () Bool)

(assert (=> b!944143 (= e!612095 true)))

(declare-fun b!944144 () Bool)

(declare-fun e!612096 () Bool)

(assert (=> b!944144 (= e!612096 (not e!612094))))

(declare-fun res!428922 () Bool)

(assert (=> b!944144 (=> res!428922 e!612094)))

(declare-fun lt!342951 () Bool)

(get-info :version)

(assert (=> b!944144 (= res!428922 (or lt!342951 (and ((_ is Concat!4424) r!15766) ((_ is EmptyExpr!2591) (regOne!5694 r!15766))) (and ((_ is Concat!4424) r!15766) ((_ is EmptyExpr!2591) (regTwo!5694 r!15766))) ((_ is Concat!4424) r!15766) ((_ is Union!2591) r!15766) (not ((_ is Star!2591) r!15766))))))

(declare-fun matchRSpec!392 (Regex!2591 List!9821) Bool)

(assert (=> b!944144 (= lt!342951 (matchRSpec!392 r!15766 s!10566))))

(assert (=> b!944144 (= lt!342951 (matchR!1129 r!15766 s!10566))))

(declare-fun lt!342949 () Unit!14801)

(declare-fun mainMatchTheorem!392 (Regex!2591 List!9821) Unit!14801)

(assert (=> b!944144 (= lt!342949 (mainMatchTheorem!392 r!15766 s!10566))))

(declare-fun b!944145 () Bool)

(declare-fun tp!291685 () Bool)

(declare-fun tp!291683 () Bool)

(assert (=> b!944145 (= e!612098 (and tp!291685 tp!291683))))

(declare-fun b!944146 () Bool)

(declare-fun res!428919 () Bool)

(assert (=> b!944146 (=> res!428919 e!612095)))

(declare-fun lt!342944 () tuple2!11080)

(assert (=> b!944146 (= res!428919 (not (matchR!1129 lt!342940 (_2!6366 lt!342944))))))

(declare-fun b!944147 () Bool)

(declare-fun tp_is_empty!4825 () Bool)

(assert (=> b!944147 (= e!612098 tp_is_empty!4825)))

(declare-fun res!428918 () Bool)

(assert (=> start!84238 (=> (not res!428918) (not e!612096))))

(declare-fun validRegex!1060 (Regex!2591) Bool)

(assert (=> start!84238 (= res!428918 (validRegex!1060 r!15766))))

(assert (=> start!84238 e!612096))

(assert (=> start!84238 e!612098))

(declare-fun e!612097 () Bool)

(assert (=> start!84238 e!612097))

(declare-fun b!944141 () Bool)

(assert (=> b!944141 (= e!612099 e!612095)))

(declare-fun res!428924 () Bool)

(assert (=> b!944141 (=> res!428924 e!612095)))

(assert (=> b!944141 (= res!428924 (not (matchR!1129 lt!342948 (_1!6366 lt!342944))))))

(declare-fun lt!342950 () Option!2182)

(declare-fun get!3268 (Option!2182) tuple2!11080)

(assert (=> b!944141 (= lt!342944 (get!3268 lt!342950))))

(declare-fun b!944148 () Bool)

(declare-fun tp!291688 () Bool)

(assert (=> b!944148 (= e!612097 (and tp_is_empty!4825 tp!291688))))

(assert (=> b!944149 (= e!612093 e!612099)))

(declare-fun res!428921 () Bool)

(assert (=> b!944149 (=> res!428921 e!612099)))

(declare-fun isEmpty!6062 (List!9821) Bool)

(assert (=> b!944149 (= res!428921 (isEmpty!6062 s!10566))))

(assert (=> b!944149 (= (Exists!342 lambda!32009) (Exists!342 lambda!32010))))

(declare-fun lt!342939 () Unit!14801)

(assert (=> b!944149 (= lt!342939 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!86 lt!342948 s!10566))))

(assert (=> b!944149 (= lt!342947 (Exists!342 lambda!32009))))

(assert (=> b!944149 (= lt!342947 (isDefined!1824 lt!342950))))

(assert (=> b!944149 (= lt!342950 (findConcatSeparation!288 lt!342948 lt!342940 Nil!9805 s!10566 s!10566))))

(declare-fun lt!342942 () Unit!14801)

(assert (=> b!944149 (= lt!342942 (lemmaFindConcatSeparationEquivalentToExists!288 lt!342948 lt!342940 s!10566))))

(assert (=> b!944149 (matchRSpec!392 lt!342940 s!10566)))

(declare-fun lt!342941 () Unit!14801)

(assert (=> b!944149 (= lt!342941 (mainMatchTheorem!392 lt!342940 s!10566))))

(assert (= (and start!84238 res!428918) b!944144))

(assert (= (and b!944144 (not res!428922)) b!944139))

(assert (= (and b!944139 (not res!428923)) b!944149))

(assert (= (and b!944149 (not res!428921)) b!944138))

(assert (= (and b!944138 (not res!428920)) b!944141))

(assert (= (and b!944141 (not res!428924)) b!944146))

(assert (= (and b!944146 (not res!428919)) b!944143))

(assert (= (and start!84238 ((_ is ElementMatch!2591) r!15766)) b!944147))

(assert (= (and start!84238 ((_ is Concat!4424) r!15766)) b!944145))

(assert (= (and start!84238 ((_ is Star!2591) r!15766)) b!944140))

(assert (= (and start!84238 ((_ is Union!2591) r!15766)) b!944142))

(assert (= (and start!84238 ((_ is Cons!9805) s!10566)) b!944148))

(declare-fun m!1159845 () Bool)

(assert (=> b!944144 m!1159845))

(declare-fun m!1159847 () Bool)

(assert (=> b!944144 m!1159847))

(declare-fun m!1159849 () Bool)

(assert (=> b!944144 m!1159849))

(declare-fun m!1159851 () Bool)

(assert (=> b!944139 m!1159851))

(declare-fun m!1159853 () Bool)

(assert (=> b!944139 m!1159853))

(declare-fun m!1159855 () Bool)

(assert (=> b!944139 m!1159855))

(declare-fun m!1159857 () Bool)

(assert (=> b!944139 m!1159857))

(declare-fun m!1159859 () Bool)

(assert (=> b!944139 m!1159859))

(declare-fun m!1159861 () Bool)

(assert (=> b!944139 m!1159861))

(assert (=> b!944139 m!1159857))

(declare-fun m!1159863 () Bool)

(assert (=> b!944139 m!1159863))

(assert (=> b!944139 m!1159855))

(declare-fun m!1159865 () Bool)

(assert (=> b!944139 m!1159865))

(declare-fun m!1159867 () Bool)

(assert (=> b!944141 m!1159867))

(declare-fun m!1159869 () Bool)

(assert (=> b!944141 m!1159869))

(declare-fun m!1159871 () Bool)

(assert (=> b!944149 m!1159871))

(declare-fun m!1159873 () Bool)

(assert (=> b!944149 m!1159873))

(declare-fun m!1159875 () Bool)

(assert (=> b!944149 m!1159875))

(declare-fun m!1159877 () Bool)

(assert (=> b!944149 m!1159877))

(declare-fun m!1159879 () Bool)

(assert (=> b!944149 m!1159879))

(declare-fun m!1159881 () Bool)

(assert (=> b!944149 m!1159881))

(declare-fun m!1159883 () Bool)

(assert (=> b!944149 m!1159883))

(declare-fun m!1159885 () Bool)

(assert (=> b!944149 m!1159885))

(assert (=> b!944149 m!1159881))

(declare-fun m!1159887 () Bool)

(assert (=> b!944149 m!1159887))

(declare-fun m!1159889 () Bool)

(assert (=> start!84238 m!1159889))

(declare-fun m!1159891 () Bool)

(assert (=> b!944146 m!1159891))

(check-sat tp_is_empty!4825 (not b!944141) (not b!944140) (not b!944145) (not b!944144) (not start!84238) (not b!944142) (not b!944148) (not b!944146) (not b!944139) (not b!944149))
(check-sat)
