; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!665706 () Bool)

(assert start!665706)

(declare-fun b!6922971 () Bool)

(assert (=> b!6922971 true))

(assert (=> b!6922971 true))

(assert (=> b!6922971 true))

(declare-fun lambda!393636 () Int)

(declare-fun lambda!393635 () Int)

(assert (=> b!6922971 (not (= lambda!393636 lambda!393635))))

(assert (=> b!6922971 true))

(assert (=> b!6922971 true))

(assert (=> b!6922971 true))

(declare-fun bs!1847659 () Bool)

(declare-fun b!6922960 () Bool)

(assert (= bs!1847659 (and b!6922960 b!6922971)))

(declare-datatypes ((C!34112 0))(
  ( (C!34113 (val!26758 Int)) )
))
(declare-datatypes ((Regex!16921 0))(
  ( (ElementMatch!16921 (c!1285227 C!34112)) (Concat!25766 (regOne!34354 Regex!16921) (regTwo!34354 Regex!16921)) (EmptyExpr!16921) (Star!16921 (reg!17250 Regex!16921)) (EmptyLang!16921) (Union!16921 (regOne!34355 Regex!16921) (regTwo!34355 Regex!16921)) )
))
(declare-fun r1!6342 () Regex!16921)

(declare-fun lt!2470895 () Regex!16921)

(declare-datatypes ((List!66674 0))(
  ( (Nil!66550) (Cons!66550 (h!72998 C!34112) (t!380417 List!66674)) )
))
(declare-fun s!14361 () List!66674)

(declare-fun r2!6280 () Regex!16921)

(declare-fun lambda!393637 () Int)

(declare-fun r3!135 () Regex!16921)

(declare-datatypes ((tuple2!67556 0))(
  ( (tuple2!67557 (_1!37081 List!66674) (_2!37081 List!66674)) )
))
(declare-fun lt!2470879 () tuple2!67556)

(assert (=> bs!1847659 (= (and (= (_1!37081 lt!2470879) s!14361) (= r1!6342 lt!2470895) (= r2!6280 r3!135)) (= lambda!393637 lambda!393635))))

(assert (=> bs!1847659 (not (= lambda!393637 lambda!393636))))

(assert (=> b!6922960 true))

(assert (=> b!6922960 true))

(assert (=> b!6922960 true))

(declare-fun lambda!393638 () Int)

(assert (=> bs!1847659 (not (= lambda!393638 lambda!393635))))

(assert (=> bs!1847659 (= (and (= (_1!37081 lt!2470879) s!14361) (= r1!6342 lt!2470895) (= r2!6280 r3!135)) (= lambda!393638 lambda!393636))))

(assert (=> b!6922960 (not (= lambda!393638 lambda!393637))))

(assert (=> b!6922960 true))

(assert (=> b!6922960 true))

(assert (=> b!6922960 true))

(declare-fun bs!1847660 () Bool)

(declare-fun b!6922970 () Bool)

(assert (= bs!1847660 (and b!6922970 b!6922971)))

(declare-fun lt!2470877 () List!66674)

(declare-fun lambda!393639 () Int)

(assert (=> bs!1847660 (= (and (= lt!2470877 s!14361) (= r2!6280 lt!2470895)) (= lambda!393639 lambda!393635))))

(assert (=> bs!1847660 (not (= lambda!393639 lambda!393636))))

(declare-fun bs!1847661 () Bool)

(assert (= bs!1847661 (and b!6922970 b!6922960)))

(assert (=> bs!1847661 (= (and (= lt!2470877 (_1!37081 lt!2470879)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393639 lambda!393637))))

(assert (=> bs!1847661 (not (= lambda!393639 lambda!393638))))

(assert (=> b!6922970 true))

(assert (=> b!6922970 true))

(assert (=> b!6922970 true))

(declare-fun lambda!393640 () Int)

(assert (=> bs!1847660 (= (and (= lt!2470877 s!14361) (= r2!6280 lt!2470895)) (= lambda!393640 lambda!393636))))

(assert (=> bs!1847661 (not (= lambda!393640 lambda!393637))))

(assert (=> b!6922970 (not (= lambda!393640 lambda!393639))))

(assert (=> bs!1847660 (not (= lambda!393640 lambda!393635))))

(assert (=> bs!1847661 (= (and (= lt!2470877 (_1!37081 lt!2470879)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393640 lambda!393638))))

(assert (=> b!6922970 true))

(assert (=> b!6922970 true))

(assert (=> b!6922970 true))

(declare-fun b!6922953 () Bool)

(declare-fun e!4166490 () Bool)

(declare-fun tp!1908245 () Bool)

(declare-fun tp!1908255 () Bool)

(assert (=> b!6922953 (= e!4166490 (and tp!1908245 tp!1908255))))

(declare-fun b!6922954 () Bool)

(declare-fun tp!1908246 () Bool)

(assert (=> b!6922954 (= e!4166490 tp!1908246)))

(declare-fun b!6922955 () Bool)

(declare-fun e!4166496 () Bool)

(declare-fun tp_is_empty!43067 () Bool)

(assert (=> b!6922955 (= e!4166496 tp_is_empty!43067)))

(declare-fun b!6922956 () Bool)

(declare-fun e!4166495 () Bool)

(declare-fun e!4166487 () Bool)

(assert (=> b!6922956 (= e!4166495 (not e!4166487))))

(declare-fun res!2823003 () Bool)

(assert (=> b!6922956 (=> res!2823003 e!4166487)))

(declare-fun lt!2470888 () Bool)

(assert (=> b!6922956 (= res!2823003 (not lt!2470888))))

(declare-fun lt!2470883 () Regex!16921)

(declare-fun matchR!9060 (Regex!16921 List!66674) Bool)

(declare-fun matchRSpec!3978 (Regex!16921 List!66674) Bool)

(assert (=> b!6922956 (= (matchR!9060 lt!2470883 s!14361) (matchRSpec!3978 lt!2470883 s!14361))))

(declare-datatypes ((Unit!160566 0))(
  ( (Unit!160567) )
))
(declare-fun lt!2470872 () Unit!160566)

(declare-fun mainMatchTheorem!3978 (Regex!16921 List!66674) Unit!160566)

(assert (=> b!6922956 (= lt!2470872 (mainMatchTheorem!3978 lt!2470883 s!14361))))

(declare-fun lt!2470896 () Regex!16921)

(assert (=> b!6922956 (= lt!2470888 (matchRSpec!3978 lt!2470896 s!14361))))

(assert (=> b!6922956 (= lt!2470888 (matchR!9060 lt!2470896 s!14361))))

(declare-fun lt!2470899 () Unit!160566)

(assert (=> b!6922956 (= lt!2470899 (mainMatchTheorem!3978 lt!2470896 s!14361))))

(declare-fun lt!2470893 () Regex!16921)

(assert (=> b!6922956 (= lt!2470883 (Concat!25766 r1!6342 lt!2470893))))

(assert (=> b!6922956 (= lt!2470893 (Concat!25766 r2!6280 r3!135))))

(assert (=> b!6922956 (= lt!2470896 (Concat!25766 lt!2470895 r3!135))))

(assert (=> b!6922956 (= lt!2470895 (Concat!25766 r1!6342 r2!6280))))

(declare-fun b!6922957 () Bool)

(declare-fun e!4166488 () Bool)

(declare-fun tp!1908249 () Bool)

(assert (=> b!6922957 (= e!4166488 (and tp_is_empty!43067 tp!1908249))))

(declare-fun res!2823009 () Bool)

(assert (=> start!665706 (=> (not res!2823009) (not e!4166495))))

(declare-fun validRegex!8627 (Regex!16921) Bool)

(assert (=> start!665706 (= res!2823009 (validRegex!8627 r1!6342))))

(assert (=> start!665706 e!4166495))

(assert (=> start!665706 e!4166490))

(declare-fun e!4166489 () Bool)

(assert (=> start!665706 e!4166489))

(assert (=> start!665706 e!4166496))

(assert (=> start!665706 e!4166488))

(declare-fun b!6922958 () Bool)

(assert (=> b!6922958 (= e!4166489 tp_is_empty!43067)))

(declare-fun b!6922959 () Bool)

(declare-fun res!2823002 () Bool)

(declare-fun e!4166493 () Bool)

(assert (=> b!6922959 (=> res!2823002 e!4166493)))

(declare-fun lt!2470898 () tuple2!67556)

(assert (=> b!6922959 (= res!2823002 (not (matchR!9060 r2!6280 (_2!37081 lt!2470898))))))

(declare-fun e!4166494 () Bool)

(assert (=> b!6922960 (= e!4166494 e!4166493)))

(declare-fun res!2823008 () Bool)

(assert (=> b!6922960 (=> res!2823008 e!4166493)))

(assert (=> b!6922960 (= res!2823008 (not (matchR!9060 r1!6342 (_1!37081 lt!2470898))))))

(declare-datatypes ((Option!16690 0))(
  ( (None!16689) (Some!16689 (v!52961 tuple2!67556)) )
))
(declare-fun lt!2470887 () Option!16690)

(declare-fun get!23322 (Option!16690) tuple2!67556)

(assert (=> b!6922960 (= lt!2470898 (get!23322 lt!2470887))))

(declare-fun Exists!3923 (Int) Bool)

(assert (=> b!6922960 (= (Exists!3923 lambda!393637) (Exists!3923 lambda!393638))))

(declare-fun lt!2470892 () Unit!160566)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2390 (Regex!16921 Regex!16921 List!66674) Unit!160566)

(assert (=> b!6922960 (= lt!2470892 (lemmaExistCutMatchRandMatchRSpecEquivalent!2390 r1!6342 r2!6280 (_1!37081 lt!2470879)))))

(declare-fun isDefined!13393 (Option!16690) Bool)

(assert (=> b!6922960 (= (isDefined!13393 lt!2470887) (Exists!3923 lambda!393637))))

(declare-fun findConcatSeparation!3104 (Regex!16921 Regex!16921 List!66674 List!66674 List!66674) Option!16690)

(assert (=> b!6922960 (= lt!2470887 (findConcatSeparation!3104 r1!6342 r2!6280 Nil!66550 (_1!37081 lt!2470879) (_1!37081 lt!2470879)))))

(declare-fun lt!2470897 () Unit!160566)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2866 (Regex!16921 Regex!16921 List!66674) Unit!160566)

(assert (=> b!6922960 (= lt!2470897 (lemmaFindConcatSeparationEquivalentToExists!2866 r1!6342 r2!6280 (_1!37081 lt!2470879)))))

(declare-fun b!6922961 () Bool)

(declare-fun res!2823005 () Bool)

(assert (=> b!6922961 (=> res!2823005 e!4166494)))

(assert (=> b!6922961 (= res!2823005 (not (matchR!9060 r3!135 (_2!37081 lt!2470879))))))

(declare-fun b!6922962 () Bool)

(declare-fun res!2823007 () Bool)

(assert (=> b!6922962 (=> (not res!2823007) (not e!4166495))))

(assert (=> b!6922962 (= res!2823007 (validRegex!8627 r2!6280))))

(declare-fun b!6922963 () Bool)

(declare-fun e!4166491 () Bool)

(assert (=> b!6922963 (= e!4166491 true)))

(declare-fun lt!2470880 () List!66674)

(declare-fun ++!14964 (List!66674 List!66674) List!66674)

(assert (=> b!6922963 (= lt!2470880 (++!14964 (_1!37081 lt!2470898) lt!2470877))))

(declare-fun lt!2470889 () Unit!160566)

(declare-fun lemmaConcatAssociativity!3012 (List!66674 List!66674 List!66674) Unit!160566)

(assert (=> b!6922963 (= lt!2470889 (lemmaConcatAssociativity!3012 (_1!37081 lt!2470898) (_2!37081 lt!2470898) (_2!37081 lt!2470879)))))

(declare-fun b!6922964 () Bool)

(declare-fun tp!1908247 () Bool)

(declare-fun tp!1908253 () Bool)

(assert (=> b!6922964 (= e!4166490 (and tp!1908247 tp!1908253))))

(declare-fun b!6922965 () Bool)

(declare-fun e!4166492 () Bool)

(assert (=> b!6922965 (= e!4166493 e!4166492)))

(declare-fun res!2823001 () Bool)

(assert (=> b!6922965 (=> res!2823001 e!4166492)))

(assert (=> b!6922965 (= res!2823001 (not (= lt!2470880 s!14361)))))

(assert (=> b!6922965 (= lt!2470880 (++!14964 (++!14964 (_1!37081 lt!2470898) (_2!37081 lt!2470898)) (_2!37081 lt!2470879)))))

(assert (=> b!6922965 (matchRSpec!3978 r2!6280 (_2!37081 lt!2470898))))

(declare-fun lt!2470878 () Unit!160566)

(assert (=> b!6922965 (= lt!2470878 (mainMatchTheorem!3978 r2!6280 (_2!37081 lt!2470898)))))

(assert (=> b!6922965 (matchRSpec!3978 r1!6342 (_1!37081 lt!2470898))))

(declare-fun lt!2470891 () Unit!160566)

(assert (=> b!6922965 (= lt!2470891 (mainMatchTheorem!3978 r1!6342 (_1!37081 lt!2470898)))))

(declare-fun b!6922966 () Bool)

(assert (=> b!6922966 (= e!4166490 tp_is_empty!43067)))

(declare-fun b!6922967 () Bool)

(declare-fun res!2823010 () Bool)

(assert (=> b!6922967 (=> (not res!2823010) (not e!4166495))))

(assert (=> b!6922967 (= res!2823010 (validRegex!8627 r3!135))))

(declare-fun b!6922968 () Bool)

(declare-fun tp!1908252 () Bool)

(declare-fun tp!1908254 () Bool)

(assert (=> b!6922968 (= e!4166489 (and tp!1908252 tp!1908254))))

(declare-fun b!6922969 () Bool)

(declare-fun tp!1908251 () Bool)

(assert (=> b!6922969 (= e!4166489 tp!1908251)))

(assert (=> b!6922970 (= e!4166492 e!4166491)))

(declare-fun res!2823004 () Bool)

(assert (=> b!6922970 (=> res!2823004 e!4166491)))

(declare-fun lt!2470886 () Bool)

(assert (=> b!6922970 (= res!2823004 (not lt!2470886))))

(declare-fun lt!2470874 () Bool)

(assert (=> b!6922970 lt!2470874))

(declare-fun lt!2470875 () Unit!160566)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!82 (Regex!16921 Regex!16921 List!66674 List!66674 List!66674 List!66674 List!66674) Unit!160566)

(assert (=> b!6922970 (= lt!2470875 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!82 r2!6280 r3!135 (_2!37081 lt!2470898) (_2!37081 lt!2470879) lt!2470877 Nil!66550 lt!2470877))))

(assert (=> b!6922970 (= (Exists!3923 lambda!393639) (Exists!3923 lambda!393640))))

(declare-fun lt!2470881 () Unit!160566)

(assert (=> b!6922970 (= lt!2470881 (lemmaExistCutMatchRandMatchRSpecEquivalent!2390 r2!6280 r3!135 lt!2470877))))

(assert (=> b!6922970 (= lt!2470874 (Exists!3923 lambda!393639))))

(assert (=> b!6922970 (= lt!2470874 (isDefined!13393 (findConcatSeparation!3104 r2!6280 r3!135 Nil!66550 lt!2470877 lt!2470877)))))

(declare-fun lt!2470885 () Unit!160566)

(assert (=> b!6922970 (= lt!2470885 (lemmaFindConcatSeparationEquivalentToExists!2866 r2!6280 r3!135 lt!2470877))))

(assert (=> b!6922970 (= lt!2470886 (matchRSpec!3978 lt!2470893 lt!2470877))))

(assert (=> b!6922970 (= lt!2470886 (matchR!9060 lt!2470893 lt!2470877))))

(declare-fun lt!2470882 () Unit!160566)

(assert (=> b!6922970 (= lt!2470882 (mainMatchTheorem!3978 lt!2470893 lt!2470877))))

(assert (=> b!6922970 (= lt!2470877 (++!14964 (_2!37081 lt!2470898) (_2!37081 lt!2470879)))))

(assert (=> b!6922971 (= e!4166487 e!4166494)))

(declare-fun res!2823006 () Bool)

(assert (=> b!6922971 (=> res!2823006 e!4166494)))

(declare-fun lt!2470873 () Bool)

(assert (=> b!6922971 (= res!2823006 (not lt!2470873))))

(assert (=> b!6922971 (= lt!2470873 (matchRSpec!3978 lt!2470895 (_1!37081 lt!2470879)))))

(assert (=> b!6922971 (= lt!2470873 (matchR!9060 lt!2470895 (_1!37081 lt!2470879)))))

(declare-fun lt!2470890 () Unit!160566)

(assert (=> b!6922971 (= lt!2470890 (mainMatchTheorem!3978 lt!2470895 (_1!37081 lt!2470879)))))

(declare-fun lt!2470884 () Option!16690)

(assert (=> b!6922971 (= lt!2470879 (get!23322 lt!2470884))))

(assert (=> b!6922971 (= (Exists!3923 lambda!393635) (Exists!3923 lambda!393636))))

(declare-fun lt!2470894 () Unit!160566)

(assert (=> b!6922971 (= lt!2470894 (lemmaExistCutMatchRandMatchRSpecEquivalent!2390 lt!2470895 r3!135 s!14361))))

(assert (=> b!6922971 (= (isDefined!13393 lt!2470884) (Exists!3923 lambda!393635))))

(assert (=> b!6922971 (= lt!2470884 (findConcatSeparation!3104 lt!2470895 r3!135 Nil!66550 s!14361 s!14361))))

(declare-fun lt!2470876 () Unit!160566)

(assert (=> b!6922971 (= lt!2470876 (lemmaFindConcatSeparationEquivalentToExists!2866 lt!2470895 r3!135 s!14361))))

(declare-fun b!6922972 () Bool)

(declare-fun tp!1908258 () Bool)

(assert (=> b!6922972 (= e!4166496 tp!1908258)))

(declare-fun b!6922973 () Bool)

(declare-fun tp!1908259 () Bool)

(declare-fun tp!1908250 () Bool)

(assert (=> b!6922973 (= e!4166489 (and tp!1908259 tp!1908250))))

(declare-fun b!6922974 () Bool)

(declare-fun tp!1908256 () Bool)

(declare-fun tp!1908257 () Bool)

(assert (=> b!6922974 (= e!4166496 (and tp!1908256 tp!1908257))))

(declare-fun b!6922975 () Bool)

(declare-fun tp!1908248 () Bool)

(declare-fun tp!1908244 () Bool)

(assert (=> b!6922975 (= e!4166496 (and tp!1908248 tp!1908244))))

(assert (= (and start!665706 res!2823009) b!6922962))

(assert (= (and b!6922962 res!2823007) b!6922967))

(assert (= (and b!6922967 res!2823010) b!6922956))

(assert (= (and b!6922956 (not res!2823003)) b!6922971))

(assert (= (and b!6922971 (not res!2823006)) b!6922961))

(assert (= (and b!6922961 (not res!2823005)) b!6922960))

(assert (= (and b!6922960 (not res!2823008)) b!6922959))

(assert (= (and b!6922959 (not res!2823002)) b!6922965))

(assert (= (and b!6922965 (not res!2823001)) b!6922970))

(assert (= (and b!6922970 (not res!2823004)) b!6922963))

(get-info :version)

(assert (= (and start!665706 ((_ is ElementMatch!16921) r1!6342)) b!6922966))

(assert (= (and start!665706 ((_ is Concat!25766) r1!6342)) b!6922953))

(assert (= (and start!665706 ((_ is Star!16921) r1!6342)) b!6922954))

(assert (= (and start!665706 ((_ is Union!16921) r1!6342)) b!6922964))

(assert (= (and start!665706 ((_ is ElementMatch!16921) r2!6280)) b!6922958))

(assert (= (and start!665706 ((_ is Concat!25766) r2!6280)) b!6922968))

(assert (= (and start!665706 ((_ is Star!16921) r2!6280)) b!6922969))

(assert (= (and start!665706 ((_ is Union!16921) r2!6280)) b!6922973))

(assert (= (and start!665706 ((_ is ElementMatch!16921) r3!135)) b!6922955))

(assert (= (and start!665706 ((_ is Concat!25766) r3!135)) b!6922974))

(assert (= (and start!665706 ((_ is Star!16921) r3!135)) b!6922972))

(assert (= (and start!665706 ((_ is Union!16921) r3!135)) b!6922975))

(assert (= (and start!665706 ((_ is Cons!66550) s!14361)) b!6922957))

(declare-fun m!7632312 () Bool)

(assert (=> b!6922971 m!7632312))

(declare-fun m!7632314 () Bool)

(assert (=> b!6922971 m!7632314))

(declare-fun m!7632316 () Bool)

(assert (=> b!6922971 m!7632316))

(declare-fun m!7632318 () Bool)

(assert (=> b!6922971 m!7632318))

(declare-fun m!7632320 () Bool)

(assert (=> b!6922971 m!7632320))

(declare-fun m!7632322 () Bool)

(assert (=> b!6922971 m!7632322))

(declare-fun m!7632324 () Bool)

(assert (=> b!6922971 m!7632324))

(assert (=> b!6922971 m!7632314))

(declare-fun m!7632326 () Bool)

(assert (=> b!6922971 m!7632326))

(declare-fun m!7632328 () Bool)

(assert (=> b!6922971 m!7632328))

(declare-fun m!7632330 () Bool)

(assert (=> b!6922971 m!7632330))

(declare-fun m!7632332 () Bool)

(assert (=> b!6922962 m!7632332))

(declare-fun m!7632334 () Bool)

(assert (=> b!6922967 m!7632334))

(declare-fun m!7632336 () Bool)

(assert (=> b!6922970 m!7632336))

(declare-fun m!7632338 () Bool)

(assert (=> b!6922970 m!7632338))

(declare-fun m!7632340 () Bool)

(assert (=> b!6922970 m!7632340))

(declare-fun m!7632342 () Bool)

(assert (=> b!6922970 m!7632342))

(declare-fun m!7632344 () Bool)

(assert (=> b!6922970 m!7632344))

(assert (=> b!6922970 m!7632340))

(declare-fun m!7632346 () Bool)

(assert (=> b!6922970 m!7632346))

(declare-fun m!7632348 () Bool)

(assert (=> b!6922970 m!7632348))

(declare-fun m!7632350 () Bool)

(assert (=> b!6922970 m!7632350))

(assert (=> b!6922970 m!7632348))

(declare-fun m!7632352 () Bool)

(assert (=> b!6922970 m!7632352))

(declare-fun m!7632354 () Bool)

(assert (=> b!6922970 m!7632354))

(declare-fun m!7632356 () Bool)

(assert (=> b!6922970 m!7632356))

(declare-fun m!7632358 () Bool)

(assert (=> b!6922961 m!7632358))

(declare-fun m!7632360 () Bool)

(assert (=> start!665706 m!7632360))

(declare-fun m!7632362 () Bool)

(assert (=> b!6922965 m!7632362))

(declare-fun m!7632364 () Bool)

(assert (=> b!6922965 m!7632364))

(declare-fun m!7632366 () Bool)

(assert (=> b!6922965 m!7632366))

(declare-fun m!7632368 () Bool)

(assert (=> b!6922965 m!7632368))

(declare-fun m!7632370 () Bool)

(assert (=> b!6922965 m!7632370))

(assert (=> b!6922965 m!7632362))

(declare-fun m!7632372 () Bool)

(assert (=> b!6922965 m!7632372))

(declare-fun m!7632374 () Bool)

(assert (=> b!6922963 m!7632374))

(declare-fun m!7632376 () Bool)

(assert (=> b!6922963 m!7632376))

(declare-fun m!7632378 () Bool)

(assert (=> b!6922960 m!7632378))

(declare-fun m!7632380 () Bool)

(assert (=> b!6922960 m!7632380))

(declare-fun m!7632382 () Bool)

(assert (=> b!6922960 m!7632382))

(declare-fun m!7632384 () Bool)

(assert (=> b!6922960 m!7632384))

(declare-fun m!7632386 () Bool)

(assert (=> b!6922960 m!7632386))

(declare-fun m!7632388 () Bool)

(assert (=> b!6922960 m!7632388))

(declare-fun m!7632390 () Bool)

(assert (=> b!6922960 m!7632390))

(declare-fun m!7632392 () Bool)

(assert (=> b!6922960 m!7632392))

(assert (=> b!6922960 m!7632392))

(declare-fun m!7632394 () Bool)

(assert (=> b!6922956 m!7632394))

(declare-fun m!7632396 () Bool)

(assert (=> b!6922956 m!7632396))

(declare-fun m!7632398 () Bool)

(assert (=> b!6922956 m!7632398))

(declare-fun m!7632400 () Bool)

(assert (=> b!6922956 m!7632400))

(declare-fun m!7632402 () Bool)

(assert (=> b!6922956 m!7632402))

(declare-fun m!7632404 () Bool)

(assert (=> b!6922956 m!7632404))

(declare-fun m!7632406 () Bool)

(assert (=> b!6922959 m!7632406))

(check-sat (not b!6922954) tp_is_empty!43067 (not b!6922968) (not b!6922959) (not b!6922975) (not b!6922971) (not b!6922960) (not b!6922970) (not b!6922967) (not b!6922956) (not b!6922972) (not start!665706) (not b!6922965) (not b!6922963) (not b!6922973) (not b!6922953) (not b!6922961) (not b!6922962) (not b!6922964) (not b!6922969) (not b!6922974) (not b!6922957))
(check-sat)
