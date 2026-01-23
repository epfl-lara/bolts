; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84366 () Bool)

(assert start!84366)

(declare-fun b!945997 () Bool)

(assert (=> b!945997 true))

(assert (=> b!945997 true))

(assert (=> b!945997 true))

(declare-fun lambda!32216 () Int)

(declare-fun lambda!32215 () Int)

(assert (=> b!945997 (not (= lambda!32216 lambda!32215))))

(assert (=> b!945997 true))

(assert (=> b!945997 true))

(assert (=> b!945997 true))

(declare-fun bs!239545 () Bool)

(declare-fun b!945996 () Bool)

(assert (= bs!239545 (and b!945996 b!945997)))

(declare-datatypes ((C!5768 0))(
  ( (C!5769 (val!3132 Int)) )
))
(declare-datatypes ((Regex!2599 0))(
  ( (ElementMatch!2599 (c!153998 C!5768)) (Concat!4432 (regOne!5710 Regex!2599) (regTwo!5710 Regex!2599)) (EmptyExpr!2599) (Star!2599 (reg!2928 Regex!2599)) (EmptyLang!2599) (Union!2599 (regOne!5711 Regex!2599) (regTwo!5711 Regex!2599)) )
))
(declare-fun lt!343480 () Regex!2599)

(declare-fun lambda!32217 () Int)

(declare-fun lt!343477 () Regex!2599)

(declare-fun r!15766 () Regex!2599)

(declare-fun lt!343486 () Regex!2599)

(assert (=> bs!239545 (= (and (= lt!343486 (reg!2928 r!15766)) (= lt!343477 lt!343480)) (= lambda!32217 lambda!32215))))

(assert (=> bs!239545 (not (= lambda!32217 lambda!32216))))

(assert (=> b!945996 true))

(assert (=> b!945996 true))

(assert (=> b!945996 true))

(declare-fun lambda!32218 () Int)

(assert (=> bs!239545 (not (= lambda!32218 lambda!32215))))

(assert (=> bs!239545 (= (and (= lt!343486 (reg!2928 r!15766)) (= lt!343477 lt!343480)) (= lambda!32218 lambda!32216))))

(assert (=> b!945996 (not (= lambda!32218 lambda!32217))))

(assert (=> b!945996 true))

(assert (=> b!945996 true))

(assert (=> b!945996 true))

(declare-fun e!613057 () Bool)

(declare-fun e!613056 () Bool)

(assert (=> b!945996 (= e!613057 e!613056)))

(declare-fun res!429904 () Bool)

(assert (=> b!945996 (=> res!429904 e!613056)))

(declare-datatypes ((List!9829 0))(
  ( (Nil!9813) (Cons!9813 (h!15214 C!5768) (t!100875 List!9829)) )
))
(declare-fun s!10566 () List!9829)

(declare-fun isEmpty!6074 (List!9829) Bool)

(assert (=> b!945996 (= res!429904 (isEmpty!6074 s!10566))))

(declare-fun Exists!350 (Int) Bool)

(assert (=> b!945996 (= (Exists!350 lambda!32217) (Exists!350 lambda!32218))))

(declare-datatypes ((Unit!14819 0))(
  ( (Unit!14820) )
))
(declare-fun lt!343476 () Unit!14819)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!94 (Regex!2599 List!9829) Unit!14819)

(assert (=> b!945996 (= lt!343476 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!94 lt!343486 s!10566))))

(declare-fun lt!343474 () Bool)

(assert (=> b!945996 (= lt!343474 (Exists!350 lambda!32217))))

(declare-datatypes ((tuple2!11096 0))(
  ( (tuple2!11097 (_1!6374 List!9829) (_2!6374 List!9829)) )
))
(declare-datatypes ((Option!2190 0))(
  ( (None!2189) (Some!2189 (v!19606 tuple2!11096)) )
))
(declare-fun lt!343485 () Option!2190)

(declare-fun isDefined!1832 (Option!2190) Bool)

(assert (=> b!945996 (= lt!343474 (isDefined!1832 lt!343485))))

(declare-fun findConcatSeparation!296 (Regex!2599 Regex!2599 List!9829 List!9829 List!9829) Option!2190)

(assert (=> b!945996 (= lt!343485 (findConcatSeparation!296 lt!343486 lt!343477 Nil!9813 s!10566 s!10566))))

(declare-fun lt!343483 () Unit!14819)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!296 (Regex!2599 Regex!2599 List!9829) Unit!14819)

(assert (=> b!945996 (= lt!343483 (lemmaFindConcatSeparationEquivalentToExists!296 lt!343486 lt!343477 s!10566))))

(declare-fun matchRSpec!400 (Regex!2599 List!9829) Bool)

(assert (=> b!945996 (matchRSpec!400 lt!343477 s!10566)))

(declare-fun lt!343478 () Unit!14819)

(declare-fun mainMatchTheorem!400 (Regex!2599 List!9829) Unit!14819)

(assert (=> b!945996 (= lt!343478 (mainMatchTheorem!400 lt!343477 s!10566))))

(declare-fun e!613059 () Bool)

(assert (=> b!945997 (= e!613059 e!613057)))

(declare-fun res!429902 () Bool)

(assert (=> b!945997 (=> res!429902 e!613057)))

(declare-fun matchR!1137 (Regex!2599 List!9829) Bool)

(assert (=> b!945997 (= res!429902 (not (matchR!1137 lt!343477 s!10566)))))

(assert (=> b!945997 (= lt!343477 (Star!2599 lt!343486))))

(declare-fun removeUselessConcat!268 (Regex!2599) Regex!2599)

(assert (=> b!945997 (= lt!343486 (removeUselessConcat!268 (reg!2928 r!15766)))))

(assert (=> b!945997 (= (Exists!350 lambda!32215) (Exists!350 lambda!32216))))

(declare-fun lt!343487 () Unit!14819)

(assert (=> b!945997 (= lt!343487 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!94 (reg!2928 r!15766) s!10566))))

(assert (=> b!945997 (= (isDefined!1832 (findConcatSeparation!296 (reg!2928 r!15766) lt!343480 Nil!9813 s!10566 s!10566)) (Exists!350 lambda!32215))))

(declare-fun lt!343473 () Unit!14819)

(assert (=> b!945997 (= lt!343473 (lemmaFindConcatSeparationEquivalentToExists!296 (reg!2928 r!15766) lt!343480 s!10566))))

(assert (=> b!945997 (= lt!343480 (Star!2599 (reg!2928 r!15766)))))

(declare-fun b!945998 () Bool)

(declare-fun e!613054 () Bool)

(assert (=> b!945998 (= e!613054 true)))

(declare-fun lt!343481 () Unit!14819)

(declare-fun e!613061 () Unit!14819)

(assert (=> b!945998 (= lt!343481 e!613061)))

(declare-fun c!153997 () Bool)

(declare-fun lt!343479 () tuple2!11096)

(declare-fun size!7897 (List!9829) Int)

(assert (=> b!945998 (= c!153997 (= (size!7897 (_2!6374 lt!343479)) (size!7897 s!10566)))))

(assert (=> b!945998 (matchR!1137 (reg!2928 r!15766) (_1!6374 lt!343479))))

(declare-fun lt!343472 () Unit!14819)

(declare-fun lemmaRemoveUselessConcatSound!134 (Regex!2599 List!9829) Unit!14819)

(assert (=> b!945998 (= lt!343472 (lemmaRemoveUselessConcatSound!134 (reg!2928 r!15766) (_1!6374 lt!343479)))))

(declare-fun b!945999 () Bool)

(declare-fun e!613060 () Bool)

(declare-fun tp_is_empty!4841 () Bool)

(declare-fun tp!291979 () Bool)

(assert (=> b!945999 (= e!613060 (and tp_is_empty!4841 tp!291979))))

(declare-fun b!946000 () Bool)

(declare-fun e!613058 () Bool)

(declare-fun tp!291984 () Bool)

(declare-fun tp!291980 () Bool)

(assert (=> b!946000 (= e!613058 (and tp!291984 tp!291980))))

(declare-fun b!946001 () Bool)

(declare-fun res!429901 () Bool)

(assert (=> b!946001 (=> res!429901 e!613056)))

(assert (=> b!946001 (= res!429901 (not lt!343474))))

(declare-fun res!429903 () Bool)

(declare-fun e!613055 () Bool)

(assert (=> start!84366 (=> (not res!429903) (not e!613055))))

(declare-fun validRegex!1068 (Regex!2599) Bool)

(assert (=> start!84366 (= res!429903 (validRegex!1068 r!15766))))

(assert (=> start!84366 e!613055))

(assert (=> start!84366 e!613058))

(assert (=> start!84366 e!613060))

(declare-fun b!946002 () Bool)

(declare-fun res!429899 () Bool)

(assert (=> b!946002 (=> res!429899 e!613054)))

(assert (=> b!946002 (= res!429899 (not (matchR!1137 lt!343477 (_2!6374 lt!343479))))))

(declare-fun b!946003 () Bool)

(assert (=> b!946003 (= e!613056 e!613054)))

(declare-fun res!429900 () Bool)

(assert (=> b!946003 (=> res!429900 e!613054)))

(assert (=> b!946003 (= res!429900 (not (matchR!1137 lt!343486 (_1!6374 lt!343479))))))

(declare-fun get!3280 (Option!2190) tuple2!11096)

(assert (=> b!946003 (= lt!343479 (get!3280 lt!343485))))

(declare-fun b!946004 () Bool)

(declare-fun Unit!14821 () Unit!14819)

(assert (=> b!946004 (= e!613061 Unit!14821)))

(declare-fun b!946005 () Bool)

(assert (=> b!946005 (= e!613055 (not e!613059))))

(declare-fun res!429898 () Bool)

(assert (=> b!946005 (=> res!429898 e!613059)))

(declare-fun lt!343475 () Bool)

(get-info :version)

(assert (=> b!946005 (= res!429898 (or lt!343475 (and ((_ is Concat!4432) r!15766) ((_ is EmptyExpr!2599) (regOne!5710 r!15766))) (and ((_ is Concat!4432) r!15766) ((_ is EmptyExpr!2599) (regTwo!5710 r!15766))) ((_ is Concat!4432) r!15766) ((_ is Union!2599) r!15766) (not ((_ is Star!2599) r!15766))))))

(assert (=> b!946005 (= lt!343475 (matchRSpec!400 r!15766 s!10566))))

(assert (=> b!946005 (= lt!343475 (matchR!1137 r!15766 s!10566))))

(declare-fun lt!343482 () Unit!14819)

(assert (=> b!946005 (= lt!343482 (mainMatchTheorem!400 r!15766 s!10566))))

(declare-fun b!946006 () Bool)

(assert (=> b!946006 (= e!613058 tp_is_empty!4841)))

(declare-fun b!946007 () Bool)

(declare-fun tp!291983 () Bool)

(assert (=> b!946007 (= e!613058 tp!291983)))

(declare-fun b!946008 () Bool)

(declare-fun tp!291981 () Bool)

(declare-fun tp!291982 () Bool)

(assert (=> b!946008 (= e!613058 (and tp!291981 tp!291982))))

(declare-fun b!946009 () Bool)

(declare-fun Unit!14822 () Unit!14819)

(assert (=> b!946009 (= e!613061 Unit!14822)))

(declare-fun lt!343484 () Unit!14819)

(assert (=> b!946009 (= lt!343484 (mainMatchTheorem!400 (reg!2928 r!15766) (_1!6374 lt!343479)))))

(assert (=> b!946009 false))

(assert (= (and start!84366 res!429903) b!946005))

(assert (= (and b!946005 (not res!429898)) b!945997))

(assert (= (and b!945997 (not res!429902)) b!945996))

(assert (= (and b!945996 (not res!429904)) b!946001))

(assert (= (and b!946001 (not res!429901)) b!946003))

(assert (= (and b!946003 (not res!429900)) b!946002))

(assert (= (and b!946002 (not res!429899)) b!945998))

(assert (= (and b!945998 c!153997) b!946009))

(assert (= (and b!945998 (not c!153997)) b!946004))

(assert (= (and start!84366 ((_ is ElementMatch!2599) r!15766)) b!946006))

(assert (= (and start!84366 ((_ is Concat!4432) r!15766)) b!946000))

(assert (= (and start!84366 ((_ is Star!2599) r!15766)) b!946007))

(assert (= (and start!84366 ((_ is Union!2599) r!15766)) b!946008))

(assert (= (and start!84366 ((_ is Cons!9813) s!10566)) b!945999))

(declare-fun m!1160983 () Bool)

(assert (=> b!946005 m!1160983))

(declare-fun m!1160985 () Bool)

(assert (=> b!946005 m!1160985))

(declare-fun m!1160987 () Bool)

(assert (=> b!946005 m!1160987))

(declare-fun m!1160989 () Bool)

(assert (=> start!84366 m!1160989))

(declare-fun m!1160991 () Bool)

(assert (=> b!946002 m!1160991))

(declare-fun m!1160993 () Bool)

(assert (=> b!945998 m!1160993))

(declare-fun m!1160995 () Bool)

(assert (=> b!945998 m!1160995))

(declare-fun m!1160997 () Bool)

(assert (=> b!945998 m!1160997))

(declare-fun m!1160999 () Bool)

(assert (=> b!945998 m!1160999))

(declare-fun m!1161001 () Bool)

(assert (=> b!945997 m!1161001))

(declare-fun m!1161003 () Bool)

(assert (=> b!945997 m!1161003))

(declare-fun m!1161005 () Bool)

(assert (=> b!945997 m!1161005))

(declare-fun m!1161007 () Bool)

(assert (=> b!945997 m!1161007))

(declare-fun m!1161009 () Bool)

(assert (=> b!945997 m!1161009))

(assert (=> b!945997 m!1161003))

(declare-fun m!1161011 () Bool)

(assert (=> b!945997 m!1161011))

(assert (=> b!945997 m!1161009))

(declare-fun m!1161013 () Bool)

(assert (=> b!945997 m!1161013))

(declare-fun m!1161015 () Bool)

(assert (=> b!945997 m!1161015))

(declare-fun m!1161017 () Bool)

(assert (=> b!945996 m!1161017))

(declare-fun m!1161019 () Bool)

(assert (=> b!945996 m!1161019))

(declare-fun m!1161021 () Bool)

(assert (=> b!945996 m!1161021))

(declare-fun m!1161023 () Bool)

(assert (=> b!945996 m!1161023))

(declare-fun m!1161025 () Bool)

(assert (=> b!945996 m!1161025))

(declare-fun m!1161027 () Bool)

(assert (=> b!945996 m!1161027))

(declare-fun m!1161029 () Bool)

(assert (=> b!945996 m!1161029))

(declare-fun m!1161031 () Bool)

(assert (=> b!945996 m!1161031))

(assert (=> b!945996 m!1161025))

(declare-fun m!1161033 () Bool)

(assert (=> b!945996 m!1161033))

(declare-fun m!1161035 () Bool)

(assert (=> b!946003 m!1161035))

(declare-fun m!1161037 () Bool)

(assert (=> b!946003 m!1161037))

(declare-fun m!1161039 () Bool)

(assert (=> b!946009 m!1161039))

(check-sat (not b!946007) (not b!946009) (not b!946008) tp_is_empty!4841 (not start!84366) (not b!946000) (not b!945997) (not b!946003) (not b!945996) (not b!945999) (not b!946005) (not b!946002) (not b!945998))
(check-sat)
