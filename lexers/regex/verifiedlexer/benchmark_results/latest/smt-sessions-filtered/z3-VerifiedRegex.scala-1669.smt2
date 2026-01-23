; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84362 () Bool)

(assert start!84362)

(declare-fun b!945857 () Bool)

(assert (=> b!945857 true))

(assert (=> b!945857 true))

(assert (=> b!945857 true))

(declare-fun lambda!32184 () Int)

(declare-fun lambda!32183 () Int)

(assert (=> b!945857 (not (= lambda!32184 lambda!32183))))

(assert (=> b!945857 true))

(assert (=> b!945857 true))

(assert (=> b!945857 true))

(declare-fun bs!239541 () Bool)

(declare-fun b!945853 () Bool)

(assert (= bs!239541 (and b!945853 b!945857)))

(declare-datatypes ((C!5764 0))(
  ( (C!5765 (val!3130 Int)) )
))
(declare-datatypes ((Regex!2597 0))(
  ( (ElementMatch!2597 (c!153990 C!5764)) (Concat!4430 (regOne!5706 Regex!2597) (regTwo!5706 Regex!2597)) (EmptyExpr!2597) (Star!2597 (reg!2926 Regex!2597)) (EmptyLang!2597) (Union!2597 (regOne!5707 Regex!2597) (regTwo!5707 Regex!2597)) )
))
(declare-fun lt!343382 () Regex!2597)

(declare-fun lambda!32185 () Int)

(declare-fun lt!343390 () Regex!2597)

(declare-fun r!15766 () Regex!2597)

(declare-fun lt!343381 () Regex!2597)

(assert (=> bs!239541 (= (and (= lt!343382 (reg!2926 r!15766)) (= lt!343390 lt!343381)) (= lambda!32185 lambda!32183))))

(assert (=> bs!239541 (not (= lambda!32185 lambda!32184))))

(assert (=> b!945853 true))

(assert (=> b!945853 true))

(assert (=> b!945853 true))

(declare-fun lambda!32186 () Int)

(assert (=> bs!239541 (not (= lambda!32186 lambda!32183))))

(assert (=> bs!239541 (= (and (= lt!343382 (reg!2926 r!15766)) (= lt!343390 lt!343381)) (= lambda!32186 lambda!32184))))

(assert (=> b!945853 (not (= lambda!32186 lambda!32185))))

(assert (=> b!945853 true))

(assert (=> b!945853 true))

(assert (=> b!945853 true))

(declare-fun b!945848 () Bool)

(declare-fun res!429802 () Bool)

(declare-fun e!612985 () Bool)

(assert (=> b!945848 (=> res!429802 e!612985)))

(declare-datatypes ((List!9827 0))(
  ( (Nil!9811) (Cons!9811 (h!15212 C!5764) (t!100873 List!9827)) )
))
(declare-datatypes ((tuple2!11092 0))(
  ( (tuple2!11093 (_1!6372 List!9827) (_2!6372 List!9827)) )
))
(declare-fun lt!343378 () tuple2!11092)

(declare-fun s!10566 () List!9827)

(declare-fun ++!2617 (List!9827 List!9827) List!9827)

(assert (=> b!945848 (= res!429802 (not (= (++!2617 (_1!6372 lt!343378) (_2!6372 lt!343378)) s!10566)))))

(declare-fun b!945849 () Bool)

(assert (=> b!945849 (= e!612985 true)))

(declare-fun lt!343385 () Int)

(declare-fun size!7895 (List!9827) Int)

(assert (=> b!945849 (= lt!343385 (size!7895 (_1!6372 lt!343378)))))

(declare-fun b!945850 () Bool)

(declare-fun e!612987 () Bool)

(declare-fun tp_is_empty!4837 () Bool)

(assert (=> b!945850 (= e!612987 tp_is_empty!4837)))

(declare-fun b!945851 () Bool)

(declare-fun e!612988 () Bool)

(assert (=> b!945851 (= e!612988 e!612985)))

(declare-fun res!429801 () Bool)

(assert (=> b!945851 (=> res!429801 e!612985)))

(assert (=> b!945851 (= res!429801 (not (= (size!7895 (_2!6372 lt!343378)) (size!7895 s!10566))))))

(declare-fun matchR!1135 (Regex!2597 List!9827) Bool)

(assert (=> b!945851 (matchR!1135 (reg!2926 r!15766) (_1!6372 lt!343378))))

(declare-datatypes ((Unit!14813 0))(
  ( (Unit!14814) )
))
(declare-fun lt!343388 () Unit!14813)

(declare-fun lemmaRemoveUselessConcatSound!132 (Regex!2597 List!9827) Unit!14813)

(assert (=> b!945851 (= lt!343388 (lemmaRemoveUselessConcatSound!132 (reg!2926 r!15766) (_1!6372 lt!343378)))))

(declare-fun b!945852 () Bool)

(declare-fun tp!291943 () Bool)

(declare-fun tp!291946 () Bool)

(assert (=> b!945852 (= e!612987 (and tp!291943 tp!291946))))

(declare-fun e!612984 () Bool)

(declare-fun e!612982 () Bool)

(assert (=> b!945853 (= e!612984 e!612982)))

(declare-fun res!429805 () Bool)

(assert (=> b!945853 (=> res!429805 e!612982)))

(declare-fun isEmpty!6072 (List!9827) Bool)

(assert (=> b!945853 (= res!429805 (isEmpty!6072 s!10566))))

(declare-fun Exists!348 (Int) Bool)

(assert (=> b!945853 (= (Exists!348 lambda!32185) (Exists!348 lambda!32186))))

(declare-fun lt!343383 () Unit!14813)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!92 (Regex!2597 List!9827) Unit!14813)

(assert (=> b!945853 (= lt!343383 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!92 lt!343382 s!10566))))

(declare-fun lt!343379 () Bool)

(assert (=> b!945853 (= lt!343379 (Exists!348 lambda!32185))))

(declare-datatypes ((Option!2188 0))(
  ( (None!2187) (Some!2187 (v!19604 tuple2!11092)) )
))
(declare-fun lt!343391 () Option!2188)

(declare-fun isDefined!1830 (Option!2188) Bool)

(assert (=> b!945853 (= lt!343379 (isDefined!1830 lt!343391))))

(declare-fun findConcatSeparation!294 (Regex!2597 Regex!2597 List!9827 List!9827 List!9827) Option!2188)

(assert (=> b!945853 (= lt!343391 (findConcatSeparation!294 lt!343382 lt!343390 Nil!9811 s!10566 s!10566))))

(declare-fun lt!343389 () Unit!14813)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!294 (Regex!2597 Regex!2597 List!9827) Unit!14813)

(assert (=> b!945853 (= lt!343389 (lemmaFindConcatSeparationEquivalentToExists!294 lt!343382 lt!343390 s!10566))))

(declare-fun matchRSpec!398 (Regex!2597 List!9827) Bool)

(assert (=> b!945853 (matchRSpec!398 lt!343390 s!10566)))

(declare-fun lt!343380 () Unit!14813)

(declare-fun mainMatchTheorem!398 (Regex!2597 List!9827) Unit!14813)

(assert (=> b!945853 (= lt!343380 (mainMatchTheorem!398 lt!343390 s!10566))))

(declare-fun b!945854 () Bool)

(declare-fun e!612989 () Bool)

(declare-fun e!612986 () Bool)

(assert (=> b!945854 (= e!612989 (not e!612986))))

(declare-fun res!429798 () Bool)

(assert (=> b!945854 (=> res!429798 e!612986)))

(declare-fun lt!343386 () Bool)

(get-info :version)

(assert (=> b!945854 (= res!429798 (or lt!343386 (and ((_ is Concat!4430) r!15766) ((_ is EmptyExpr!2597) (regOne!5706 r!15766))) (and ((_ is Concat!4430) r!15766) ((_ is EmptyExpr!2597) (regTwo!5706 r!15766))) ((_ is Concat!4430) r!15766) ((_ is Union!2597) r!15766) (not ((_ is Star!2597) r!15766))))))

(assert (=> b!945854 (= lt!343386 (matchRSpec!398 r!15766 s!10566))))

(assert (=> b!945854 (= lt!343386 (matchR!1135 r!15766 s!10566))))

(declare-fun lt!343384 () Unit!14813)

(assert (=> b!945854 (= lt!343384 (mainMatchTheorem!398 r!15766 s!10566))))

(declare-fun b!945855 () Bool)

(declare-fun res!429803 () Bool)

(assert (=> b!945855 (=> res!429803 e!612982)))

(assert (=> b!945855 (= res!429803 (not lt!343379))))

(declare-fun b!945856 () Bool)

(declare-fun res!429804 () Bool)

(assert (=> b!945856 (=> res!429804 e!612988)))

(assert (=> b!945856 (= res!429804 (not (matchR!1135 lt!343390 (_2!6372 lt!343378))))))

(declare-fun b!945858 () Bool)

(declare-fun tp!291945 () Bool)

(declare-fun tp!291948 () Bool)

(assert (=> b!945858 (= e!612987 (and tp!291945 tp!291948))))

(declare-fun b!945859 () Bool)

(declare-fun e!612983 () Bool)

(declare-fun tp!291944 () Bool)

(assert (=> b!945859 (= e!612983 (and tp_is_empty!4837 tp!291944))))

(declare-fun b!945860 () Bool)

(assert (=> b!945860 (= e!612982 e!612988)))

(declare-fun res!429800 () Bool)

(assert (=> b!945860 (=> res!429800 e!612988)))

(assert (=> b!945860 (= res!429800 (not (matchR!1135 lt!343382 (_1!6372 lt!343378))))))

(declare-fun get!3277 (Option!2188) tuple2!11092)

(assert (=> b!945860 (= lt!343378 (get!3277 lt!343391))))

(declare-fun b!945861 () Bool)

(declare-fun tp!291947 () Bool)

(assert (=> b!945861 (= e!612987 tp!291947)))

(declare-fun res!429799 () Bool)

(assert (=> start!84362 (=> (not res!429799) (not e!612989))))

(declare-fun validRegex!1066 (Regex!2597) Bool)

(assert (=> start!84362 (= res!429799 (validRegex!1066 r!15766))))

(assert (=> start!84362 e!612989))

(assert (=> start!84362 e!612987))

(assert (=> start!84362 e!612983))

(assert (=> b!945857 (= e!612986 e!612984)))

(declare-fun res!429806 () Bool)

(assert (=> b!945857 (=> res!429806 e!612984)))

(assert (=> b!945857 (= res!429806 (not (matchR!1135 lt!343390 s!10566)))))

(assert (=> b!945857 (= lt!343390 (Star!2597 lt!343382))))

(declare-fun removeUselessConcat!266 (Regex!2597) Regex!2597)

(assert (=> b!945857 (= lt!343382 (removeUselessConcat!266 (reg!2926 r!15766)))))

(assert (=> b!945857 (= (Exists!348 lambda!32183) (Exists!348 lambda!32184))))

(declare-fun lt!343377 () Unit!14813)

(assert (=> b!945857 (= lt!343377 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!92 (reg!2926 r!15766) s!10566))))

(assert (=> b!945857 (= (isDefined!1830 (findConcatSeparation!294 (reg!2926 r!15766) lt!343381 Nil!9811 s!10566 s!10566)) (Exists!348 lambda!32183))))

(declare-fun lt!343387 () Unit!14813)

(assert (=> b!945857 (= lt!343387 (lemmaFindConcatSeparationEquivalentToExists!294 (reg!2926 r!15766) lt!343381 s!10566))))

(assert (=> b!945857 (= lt!343381 (Star!2597 (reg!2926 r!15766)))))

(assert (= (and start!84362 res!429799) b!945854))

(assert (= (and b!945854 (not res!429798)) b!945857))

(assert (= (and b!945857 (not res!429806)) b!945853))

(assert (= (and b!945853 (not res!429805)) b!945855))

(assert (= (and b!945855 (not res!429803)) b!945860))

(assert (= (and b!945860 (not res!429800)) b!945856))

(assert (= (and b!945856 (not res!429804)) b!945851))

(assert (= (and b!945851 (not res!429801)) b!945848))

(assert (= (and b!945848 (not res!429802)) b!945849))

(assert (= (and start!84362 ((_ is ElementMatch!2597) r!15766)) b!945850))

(assert (= (and start!84362 ((_ is Concat!4430) r!15766)) b!945852))

(assert (= (and start!84362 ((_ is Star!2597) r!15766)) b!945861))

(assert (= (and start!84362 ((_ is Union!2597) r!15766)) b!945858))

(assert (= (and start!84362 ((_ is Cons!9811) s!10566)) b!945859))

(declare-fun m!1160865 () Bool)

(assert (=> b!945856 m!1160865))

(declare-fun m!1160867 () Bool)

(assert (=> b!945854 m!1160867))

(declare-fun m!1160869 () Bool)

(assert (=> b!945854 m!1160869))

(declare-fun m!1160871 () Bool)

(assert (=> b!945854 m!1160871))

(declare-fun m!1160873 () Bool)

(assert (=> b!945857 m!1160873))

(declare-fun m!1160875 () Bool)

(assert (=> b!945857 m!1160875))

(declare-fun m!1160877 () Bool)

(assert (=> b!945857 m!1160877))

(declare-fun m!1160879 () Bool)

(assert (=> b!945857 m!1160879))

(assert (=> b!945857 m!1160873))

(declare-fun m!1160881 () Bool)

(assert (=> b!945857 m!1160881))

(declare-fun m!1160883 () Bool)

(assert (=> b!945857 m!1160883))

(declare-fun m!1160885 () Bool)

(assert (=> b!945857 m!1160885))

(assert (=> b!945857 m!1160885))

(declare-fun m!1160887 () Bool)

(assert (=> b!945857 m!1160887))

(declare-fun m!1160889 () Bool)

(assert (=> b!945853 m!1160889))

(declare-fun m!1160891 () Bool)

(assert (=> b!945853 m!1160891))

(declare-fun m!1160893 () Bool)

(assert (=> b!945853 m!1160893))

(declare-fun m!1160895 () Bool)

(assert (=> b!945853 m!1160895))

(declare-fun m!1160897 () Bool)

(assert (=> b!945853 m!1160897))

(declare-fun m!1160899 () Bool)

(assert (=> b!945853 m!1160899))

(declare-fun m!1160901 () Bool)

(assert (=> b!945853 m!1160901))

(declare-fun m!1160903 () Bool)

(assert (=> b!945853 m!1160903))

(declare-fun m!1160905 () Bool)

(assert (=> b!945853 m!1160905))

(assert (=> b!945853 m!1160899))

(declare-fun m!1160907 () Bool)

(assert (=> b!945851 m!1160907))

(declare-fun m!1160909 () Bool)

(assert (=> b!945851 m!1160909))

(declare-fun m!1160911 () Bool)

(assert (=> b!945851 m!1160911))

(declare-fun m!1160913 () Bool)

(assert (=> b!945851 m!1160913))

(declare-fun m!1160915 () Bool)

(assert (=> b!945849 m!1160915))

(declare-fun m!1160917 () Bool)

(assert (=> start!84362 m!1160917))

(declare-fun m!1160919 () Bool)

(assert (=> b!945860 m!1160919))

(declare-fun m!1160921 () Bool)

(assert (=> b!945860 m!1160921))

(declare-fun m!1160923 () Bool)

(assert (=> b!945848 m!1160923))

(check-sat (not b!945853) (not start!84362) (not b!945860) (not b!945849) (not b!945854) (not b!945858) (not b!945859) (not b!945857) (not b!945852) (not b!945851) tp_is_empty!4837 (not b!945861) (not b!945856) (not b!945848))
(check-sat)
