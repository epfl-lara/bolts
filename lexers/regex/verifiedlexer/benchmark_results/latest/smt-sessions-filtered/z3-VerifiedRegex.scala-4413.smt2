; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!234988 () Bool)

(assert start!234988)

(declare-fun b!2394861 () Bool)

(assert (=> b!2394861 true))

(assert (=> b!2394861 true))

(declare-fun lambda!89845 () Int)

(declare-fun lambda!89844 () Int)

(assert (=> b!2394861 (not (= lambda!89845 lambda!89844))))

(assert (=> b!2394861 true))

(assert (=> b!2394861 true))

(declare-fun b!2394854 () Bool)

(declare-fun res!1017499 () Bool)

(declare-fun e!1526283 () Bool)

(assert (=> b!2394854 (=> (not res!1017499) (not e!1526283))))

(declare-datatypes ((C!14196 0))(
  ( (C!14197 (val!8340 Int)) )
))
(declare-datatypes ((Regex!7019 0))(
  ( (ElementMatch!7019 (c!381083 C!14196)) (Concat!11655 (regOne!14550 Regex!7019) (regTwo!14550 Regex!7019)) (EmptyExpr!7019) (Star!7019 (reg!7348 Regex!7019)) (EmptyLang!7019) (Union!7019 (regOne!14551 Regex!7019) (regTwo!14551 Regex!7019)) )
))
(declare-fun r!13927 () Regex!7019)

(declare-datatypes ((List!28276 0))(
  ( (Nil!28178) (Cons!28178 (h!33579 Regex!7019) (t!208253 List!28276)) )
))
(declare-fun l!9164 () List!28276)

(declare-fun generalisedConcat!120 (List!28276) Regex!7019)

(assert (=> b!2394854 (= res!1017499 (= r!13927 (generalisedConcat!120 l!9164)))))

(declare-fun b!2394855 () Bool)

(declare-fun e!1526276 () Bool)

(assert (=> b!2394855 e!1526276))

(declare-fun res!1017508 () Bool)

(assert (=> b!2394855 (=> (not res!1017508) (not e!1526276))))

(declare-fun call!146060 () Bool)

(assert (=> b!2394855 (= res!1017508 call!146060)))

(declare-datatypes ((List!28277 0))(
  ( (Nil!28179) (Cons!28179 (h!33580 C!14196) (t!208254 List!28277)) )
))
(declare-datatypes ((tuple2!27902 0))(
  ( (tuple2!27903 (_1!16492 List!28277) (_2!16492 List!28277)) )
))
(declare-fun lt!871429 () tuple2!27902)

(declare-datatypes ((Unit!41246 0))(
  ( (Unit!41247) )
))
(declare-fun lt!871444 () Unit!41246)

(declare-fun lt!871430 () Regex!7019)

(declare-fun s!9460 () List!28277)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!38 (Regex!7019 Regex!7019 List!28277 List!28277 List!28277) Unit!41246)

(assert (=> b!2394855 (= lt!871444 (lemmaFindSeparationIsDefinedThenConcatMatches!38 lt!871430 EmptyExpr!7019 (_1!16492 lt!871429) (_2!16492 lt!871429) s!9460))))

(declare-datatypes ((Option!5562 0))(
  ( (None!5561) (Some!5561 (v!30969 tuple2!27902)) )
))
(declare-fun lt!871438 () Option!5562)

(declare-fun get!8626 (Option!5562) tuple2!27902)

(assert (=> b!2394855 (= lt!871429 (get!8626 lt!871438))))

(declare-fun e!1526286 () Unit!41246)

(declare-fun Unit!41248 () Unit!41246)

(assert (=> b!2394855 (= e!1526286 Unit!41248)))

(declare-fun b!2394856 () Bool)

(declare-fun call!146057 () Regex!7019)

(declare-fun lt!871437 () Bool)

(declare-fun isDefined!4390 (Option!5562) Bool)

(declare-fun findConcatSeparation!670 (Regex!7019 Regex!7019 List!28277 List!28277 List!28277) Option!5562)

(assert (=> b!2394856 (= lt!871437 (isDefined!4390 (findConcatSeparation!670 lt!871430 call!146057 Nil!28179 s!9460 s!9460)))))

(declare-fun lt!871439 () Unit!41246)

(declare-fun e!1526272 () Unit!41246)

(assert (=> b!2394856 (= lt!871439 e!1526272)))

(declare-fun c!381081 () Bool)

(declare-fun matchR!3136 (Regex!7019 List!28277) Bool)

(assert (=> b!2394856 (= c!381081 (matchR!3136 lt!871430 s!9460))))

(declare-fun call!146063 () Regex!7019)

(assert (=> b!2394856 (= lt!871430 call!146063)))

(declare-fun e!1526275 () Unit!41246)

(declare-fun Unit!41249 () Unit!41246)

(assert (=> b!2394856 (= e!1526275 Unit!41249)))

(declare-fun lt!871443 () Regex!7019)

(declare-fun call!146056 () List!28277)

(declare-fun bm!146051 () Bool)

(assert (=> bm!146051 (= call!146060 (matchR!3136 (ite c!381081 lt!871443 (Concat!11655 lt!871430 EmptyExpr!7019)) (ite c!381081 s!9460 call!146056)))))

(declare-fun b!2394857 () Bool)

(assert (=> b!2394857 (= e!1526276 false)))

(declare-fun bm!146052 () Bool)

(declare-fun head!5269 (List!28276) Regex!7019)

(assert (=> bm!146052 (= call!146063 (head!5269 l!9164))))

(declare-fun bm!146053 () Bool)

(declare-fun call!146058 () Bool)

(declare-fun call!146061 () Bool)

(assert (=> bm!146053 (= call!146058 call!146061)))

(declare-fun b!2394858 () Bool)

(declare-fun e!1526281 () Bool)

(declare-fun tp!762819 () Bool)

(declare-fun tp!762824 () Bool)

(assert (=> b!2394858 (= e!1526281 (and tp!762819 tp!762824))))

(declare-fun b!2394859 () Bool)

(declare-fun e!1526273 () Bool)

(assert (=> b!2394859 (= e!1526283 (not e!1526273))))

(declare-fun res!1017505 () Bool)

(assert (=> b!2394859 (=> res!1017505 e!1526273)))

(get-info :version)

(assert (=> b!2394859 (= res!1017505 (not ((_ is Concat!11655) r!13927)))))

(declare-fun lt!871432 () Bool)

(assert (=> b!2394859 (= lt!871437 lt!871432)))

(declare-fun matchRSpec!868 (Regex!7019 List!28277) Bool)

(assert (=> b!2394859 (= lt!871432 (matchRSpec!868 r!13927 s!9460))))

(assert (=> b!2394859 (= lt!871437 (matchR!3136 r!13927 s!9460))))

(declare-fun lt!871440 () Unit!41246)

(declare-fun mainMatchTheorem!868 (Regex!7019 List!28277) Unit!41246)

(assert (=> b!2394859 (= lt!871440 (mainMatchTheorem!868 r!13927 s!9460))))

(declare-fun b!2394860 () Bool)

(assert (=> b!2394860 (= lt!871437 call!146061)))

(declare-fun Unit!41250 () Unit!41246)

(assert (=> b!2394860 (= e!1526275 Unit!41250)))

(declare-fun b!2394853 () Bool)

(declare-fun e!1526285 () Bool)

(declare-fun tp!762818 () Bool)

(declare-fun tp!762820 () Bool)

(assert (=> b!2394853 (= e!1526285 (and tp!762818 tp!762820))))

(declare-fun res!1017501 () Bool)

(assert (=> start!234988 (=> (not res!1017501) (not e!1526283))))

(declare-fun lambda!89843 () Int)

(declare-fun forall!5653 (List!28276 Int) Bool)

(assert (=> start!234988 (= res!1017501 (forall!5653 l!9164 lambda!89843))))

(assert (=> start!234988 e!1526283))

(assert (=> start!234988 e!1526285))

(assert (=> start!234988 e!1526281))

(declare-fun e!1526274 () Bool)

(assert (=> start!234988 e!1526274))

(declare-fun e!1526279 () Bool)

(assert (=> b!2394861 (= e!1526273 e!1526279)))

(declare-fun res!1017504 () Bool)

(assert (=> b!2394861 (=> res!1017504 e!1526279)))

(declare-fun lt!871441 () Bool)

(assert (=> b!2394861 (= res!1017504 (not (= lt!871432 lt!871441)))))

(declare-fun Exists!1081 (Int) Bool)

(assert (=> b!2394861 (= (Exists!1081 lambda!89844) (Exists!1081 lambda!89845))))

(declare-fun lt!871436 () Unit!41246)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!420 (Regex!7019 Regex!7019 List!28277) Unit!41246)

(assert (=> b!2394861 (= lt!871436 (lemmaExistCutMatchRandMatchRSpecEquivalent!420 (regOne!14550 r!13927) (regTwo!14550 r!13927) s!9460))))

(assert (=> b!2394861 (= lt!871441 (Exists!1081 lambda!89844))))

(assert (=> b!2394861 (= lt!871441 (isDefined!4390 (findConcatSeparation!670 (regOne!14550 r!13927) (regTwo!14550 r!13927) Nil!28179 s!9460 s!9460)))))

(declare-fun lt!871445 () Unit!41246)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!670 (Regex!7019 Regex!7019 List!28277) Unit!41246)

(assert (=> b!2394861 (= lt!871445 (lemmaFindConcatSeparationEquivalentToExists!670 (regOne!14550 r!13927) (regTwo!14550 r!13927) s!9460))))

(declare-fun b!2394862 () Bool)

(declare-fun tp!762822 () Bool)

(assert (=> b!2394862 (= e!1526281 tp!762822)))

(declare-fun call!146066 () Option!5562)

(declare-fun call!146065 () Regex!7019)

(declare-fun bm!146054 () Bool)

(assert (=> bm!146054 (= call!146066 (findConcatSeparation!670 lt!871430 call!146065 Nil!28179 s!9460 s!9460))))

(declare-fun b!2394863 () Bool)

(declare-fun tp_is_empty!11451 () Bool)

(declare-fun tp!762825 () Bool)

(assert (=> b!2394863 (= e!1526274 (and tp_is_empty!11451 tp!762825))))

(declare-fun b!2394864 () Bool)

(declare-fun e!1526284 () Bool)

(declare-fun call!146059 () Bool)

(assert (=> b!2394864 (= e!1526284 (not call!146059))))

(declare-fun b!2394865 () Bool)

(declare-fun e!1526278 () Bool)

(declare-fun isEmpty!16165 (List!28277) Bool)

(assert (=> b!2394865 (= e!1526278 (not (= lt!871437 (isEmpty!16165 s!9460))))))

(declare-fun b!2394866 () Bool)

(declare-fun tp!762823 () Bool)

(declare-fun tp!762821 () Bool)

(assert (=> b!2394866 (= e!1526281 (and tp!762823 tp!762821))))

(declare-fun bm!146055 () Bool)

(assert (=> bm!146055 (= call!146065 call!146057)))

(declare-fun b!2394867 () Bool)

(declare-fun e!1526271 () Bool)

(assert (=> b!2394867 (= e!1526271 call!146060)))

(declare-fun b!2394868 () Bool)

(declare-fun Unit!41251 () Unit!41246)

(assert (=> b!2394868 (= e!1526272 Unit!41251)))

(declare-fun lt!871433 () Unit!41246)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!56 (Regex!7019 Regex!7019 List!28277 List!28277) Unit!41246)

(assert (=> b!2394868 (= lt!871433 (lemmaTwoRegexMatchThenConcatMatchesConcatString!56 lt!871430 EmptyExpr!7019 s!9460 Nil!28179))))

(assert (=> b!2394868 (= lt!871443 (Concat!11655 lt!871430 EmptyExpr!7019))))

(declare-fun res!1017500 () Bool)

(assert (=> b!2394868 (= res!1017500 (matchR!3136 lt!871443 call!146056))))

(assert (=> b!2394868 (=> (not res!1017500) (not e!1526271))))

(assert (=> b!2394868 e!1526271))

(declare-fun lt!871434 () Unit!41246)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!38 (Regex!7019 Regex!7019 List!28277) Unit!41246)

(assert (=> b!2394868 (= lt!871434 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!38 lt!871430 EmptyExpr!7019 s!9460))))

(declare-fun res!1017507 () Bool)

(assert (=> b!2394868 (= res!1017507 call!146058)))

(declare-fun e!1526277 () Bool)

(assert (=> b!2394868 (=> (not res!1017507) (not e!1526277))))

(assert (=> b!2394868 e!1526277))

(declare-fun b!2394869 () Bool)

(assert (=> b!2394869 (= e!1526281 tp_is_empty!11451)))

(declare-fun b!2394870 () Bool)

(declare-fun Unit!41252 () Unit!41246)

(assert (=> b!2394870 (= e!1526286 Unit!41252)))

(declare-fun b!2394871 () Bool)

(declare-fun e!1526280 () Unit!41246)

(assert (=> b!2394871 (= e!1526280 e!1526275)))

(declare-fun lt!871442 () List!28276)

(declare-fun tail!3539 (List!28276) List!28276)

(assert (=> b!2394871 (= lt!871442 (tail!3539 l!9164))))

(declare-fun c!381078 () Bool)

(declare-fun isEmpty!16166 (List!28276) Bool)

(assert (=> b!2394871 (= c!381078 (isEmpty!16166 lt!871442))))

(declare-fun bm!146056 () Bool)

(declare-fun call!146064 () Option!5562)

(assert (=> bm!146056 (= call!146064 (findConcatSeparation!670 (ite c!381078 lt!871430 call!146063) (ite c!381078 EmptyExpr!7019 call!146057) Nil!28179 s!9460 s!9460))))

(declare-fun bm!146057 () Bool)

(assert (=> bm!146057 (= call!146057 (generalisedConcat!120 lt!871442))))

(declare-fun b!2394872 () Bool)

(declare-fun e!1526282 () Bool)

(assert (=> b!2394872 (= e!1526282 (forall!5653 (t!208253 l!9164) lambda!89843))))

(declare-fun b!2394873 () Bool)

(declare-fun Unit!41253 () Unit!41246)

(assert (=> b!2394873 (= e!1526280 Unit!41253)))

(assert (=> b!2394873 false))

(declare-fun bm!146058 () Bool)

(assert (=> bm!146058 (= call!146059 (isDefined!4390 call!146066))))

(declare-fun b!2394874 () Bool)

(declare-fun res!1017502 () Bool)

(assert (=> b!2394874 (=> res!1017502 e!1526282)))

(assert (=> b!2394874 (= res!1017502 (not ((_ is Cons!28178) l!9164)))))

(declare-fun bm!146059 () Bool)

(declare-fun call!146062 () Option!5562)

(assert (=> bm!146059 (= call!146062 call!146064)))

(declare-fun b!2394875 () Bool)

(assert (=> b!2394875 (= e!1526277 call!146059)))

(declare-fun b!2394876 () Bool)

(declare-fun Unit!41254 () Unit!41246)

(assert (=> b!2394876 (= e!1526272 Unit!41254)))

(assert (=> b!2394876 (= lt!871438 call!146062)))

(declare-fun lt!871435 () Bool)

(assert (=> b!2394876 (= lt!871435 call!146058)))

(declare-fun c!381080 () Bool)

(assert (=> b!2394876 (= c!381080 lt!871435)))

(declare-fun lt!871446 () Unit!41246)

(assert (=> b!2394876 (= lt!871446 e!1526286)))

(declare-fun res!1017503 () Bool)

(assert (=> b!2394876 (= res!1017503 (not lt!871435))))

(assert (=> b!2394876 (=> (not res!1017503) (not e!1526284))))

(assert (=> b!2394876 e!1526284))

(declare-fun b!2394877 () Bool)

(assert (=> b!2394877 (= e!1526278 (not (= lt!871437 (isDefined!4390 (findConcatSeparation!670 (h!33579 l!9164) (generalisedConcat!120 (t!208253 l!9164)) Nil!28179 s!9460 s!9460)))))))

(declare-fun b!2394878 () Bool)

(assert (=> b!2394878 (= e!1526279 e!1526282)))

(declare-fun res!1017506 () Bool)

(assert (=> b!2394878 (=> res!1017506 e!1526282)))

(assert (=> b!2394878 (= res!1017506 e!1526278)))

(declare-fun c!381082 () Bool)

(assert (=> b!2394878 (= c!381082 ((_ is Cons!28178) l!9164))))

(declare-fun lt!871431 () Unit!41246)

(assert (=> b!2394878 (= lt!871431 e!1526280)))

(declare-fun c!381079 () Bool)

(assert (=> b!2394878 (= c!381079 (isEmpty!16166 l!9164))))

(declare-fun bm!146060 () Bool)

(declare-fun ++!6973 (List!28277 List!28277) List!28277)

(assert (=> bm!146060 (= call!146056 (++!6973 (ite c!381081 s!9460 (_1!16492 lt!871429)) (ite c!381081 Nil!28179 (_2!16492 lt!871429))))))

(declare-fun bm!146061 () Bool)

(assert (=> bm!146061 (= call!146061 (isDefined!4390 (ite c!381078 (ite c!381081 call!146062 lt!871438) call!146064)))))

(assert (= (and start!234988 res!1017501) b!2394854))

(assert (= (and b!2394854 res!1017499) b!2394859))

(assert (= (and b!2394859 (not res!1017505)) b!2394861))

(assert (= (and b!2394861 (not res!1017504)) b!2394878))

(assert (= (and b!2394878 c!381079) b!2394873))

(assert (= (and b!2394878 (not c!381079)) b!2394871))

(assert (= (and b!2394871 c!381078) b!2394856))

(assert (= (and b!2394871 (not c!381078)) b!2394860))

(assert (= (and b!2394856 c!381081) b!2394868))

(assert (= (and b!2394856 (not c!381081)) b!2394876))

(assert (= (and b!2394868 res!1017500) b!2394867))

(assert (= (and b!2394868 res!1017507) b!2394875))

(assert (= (and b!2394876 c!381080) b!2394855))

(assert (= (and b!2394876 (not c!381080)) b!2394870))

(assert (= (and b!2394855 res!1017508) b!2394857))

(assert (= (and b!2394876 res!1017503) b!2394864))

(assert (= (or b!2394875 b!2394864) bm!146055))

(assert (= (or b!2394868 b!2394876) bm!146059))

(assert (= (or b!2394868 b!2394855) bm!146060))

(assert (= (or b!2394868 b!2394876) bm!146053))

(assert (= (or b!2394867 b!2394855) bm!146051))

(assert (= (or b!2394875 b!2394864) bm!146054))

(assert (= (or b!2394875 b!2394864) bm!146058))

(assert (= (or b!2394856 b!2394860) bm!146052))

(assert (= (or b!2394856 bm!146055 b!2394860) bm!146057))

(assert (= (or bm!146059 b!2394860) bm!146056))

(assert (= (or bm!146053 b!2394860) bm!146061))

(assert (= (and b!2394878 c!381082) b!2394877))

(assert (= (and b!2394878 (not c!381082)) b!2394865))

(assert (= (and b!2394878 (not res!1017506)) b!2394874))

(assert (= (and b!2394874 (not res!1017502)) b!2394872))

(assert (= (and start!234988 ((_ is Cons!28178) l!9164)) b!2394853))

(assert (= (and start!234988 ((_ is ElementMatch!7019) r!13927)) b!2394869))

(assert (= (and start!234988 ((_ is Concat!11655) r!13927)) b!2394866))

(assert (= (and start!234988 ((_ is Star!7019) r!13927)) b!2394862))

(assert (= (and start!234988 ((_ is Union!7019) r!13927)) b!2394858))

(assert (= (and start!234988 ((_ is Cons!28179) s!9460)) b!2394863))

(declare-fun m!2793927 () Bool)

(assert (=> b!2394877 m!2793927))

(assert (=> b!2394877 m!2793927))

(declare-fun m!2793929 () Bool)

(assert (=> b!2394877 m!2793929))

(assert (=> b!2394877 m!2793929))

(declare-fun m!2793931 () Bool)

(assert (=> b!2394877 m!2793931))

(declare-fun m!2793933 () Bool)

(assert (=> bm!146052 m!2793933))

(declare-fun m!2793935 () Bool)

(assert (=> b!2394878 m!2793935))

(declare-fun m!2793937 () Bool)

(assert (=> bm!146057 m!2793937))

(declare-fun m!2793939 () Bool)

(assert (=> b!2394872 m!2793939))

(declare-fun m!2793941 () Bool)

(assert (=> b!2394856 m!2793941))

(assert (=> b!2394856 m!2793941))

(declare-fun m!2793943 () Bool)

(assert (=> b!2394856 m!2793943))

(declare-fun m!2793945 () Bool)

(assert (=> b!2394856 m!2793945))

(declare-fun m!2793947 () Bool)

(assert (=> b!2394861 m!2793947))

(declare-fun m!2793949 () Bool)

(assert (=> b!2394861 m!2793949))

(declare-fun m!2793951 () Bool)

(assert (=> b!2394861 m!2793951))

(declare-fun m!2793953 () Bool)

(assert (=> b!2394861 m!2793953))

(assert (=> b!2394861 m!2793947))

(assert (=> b!2394861 m!2793951))

(declare-fun m!2793955 () Bool)

(assert (=> b!2394861 m!2793955))

(declare-fun m!2793957 () Bool)

(assert (=> b!2394861 m!2793957))

(declare-fun m!2793959 () Bool)

(assert (=> bm!146054 m!2793959))

(declare-fun m!2793961 () Bool)

(assert (=> b!2394868 m!2793961))

(declare-fun m!2793963 () Bool)

(assert (=> b!2394868 m!2793963))

(declare-fun m!2793965 () Bool)

(assert (=> b!2394868 m!2793965))

(declare-fun m!2793967 () Bool)

(assert (=> bm!146051 m!2793967))

(declare-fun m!2793969 () Bool)

(assert (=> bm!146058 m!2793969))

(declare-fun m!2793971 () Bool)

(assert (=> b!2394854 m!2793971))

(declare-fun m!2793973 () Bool)

(assert (=> bm!146060 m!2793973))

(declare-fun m!2793975 () Bool)

(assert (=> b!2394865 m!2793975))

(declare-fun m!2793977 () Bool)

(assert (=> b!2394871 m!2793977))

(declare-fun m!2793979 () Bool)

(assert (=> b!2394871 m!2793979))

(declare-fun m!2793981 () Bool)

(assert (=> b!2394855 m!2793981))

(declare-fun m!2793983 () Bool)

(assert (=> b!2394855 m!2793983))

(declare-fun m!2793985 () Bool)

(assert (=> start!234988 m!2793985))

(declare-fun m!2793987 () Bool)

(assert (=> bm!146061 m!2793987))

(declare-fun m!2793989 () Bool)

(assert (=> b!2394859 m!2793989))

(declare-fun m!2793991 () Bool)

(assert (=> b!2394859 m!2793991))

(declare-fun m!2793993 () Bool)

(assert (=> b!2394859 m!2793993))

(declare-fun m!2793995 () Bool)

(assert (=> bm!146056 m!2793995))

(check-sat (not b!2394863) tp_is_empty!11451 (not b!2394865) (not bm!146057) (not b!2394862) (not bm!146056) (not bm!146060) (not b!2394868) (not b!2394866) (not bm!146054) (not b!2394853) (not b!2394877) (not bm!146051) (not b!2394858) (not b!2394871) (not bm!146052) (not b!2394854) (not b!2394859) (not bm!146058) (not b!2394856) (not b!2394872) (not b!2394861) (not start!234988) (not bm!146061) (not b!2394855) (not b!2394878))
(check-sat)
(get-model)

(declare-fun d!698792 () Bool)

(declare-fun res!1017519 () Bool)

(declare-fun e!1526297 () Bool)

(assert (=> d!698792 (=> res!1017519 e!1526297)))

(assert (=> d!698792 (= res!1017519 ((_ is Nil!28178) l!9164))))

(assert (=> d!698792 (= (forall!5653 l!9164 lambda!89843) e!1526297)))

(declare-fun b!2394893 () Bool)

(declare-fun e!1526298 () Bool)

(assert (=> b!2394893 (= e!1526297 e!1526298)))

(declare-fun res!1017520 () Bool)

(assert (=> b!2394893 (=> (not res!1017520) (not e!1526298))))

(declare-fun dynLambda!12134 (Int Regex!7019) Bool)

(assert (=> b!2394893 (= res!1017520 (dynLambda!12134 lambda!89843 (h!33579 l!9164)))))

(declare-fun b!2394894 () Bool)

(assert (=> b!2394894 (= e!1526298 (forall!5653 (t!208253 l!9164) lambda!89843))))

(assert (= (and d!698792 (not res!1017519)) b!2394893))

(assert (= (and b!2394893 res!1017520) b!2394894))

(declare-fun b_lambda!74237 () Bool)

(assert (=> (not b_lambda!74237) (not b!2394893)))

(declare-fun m!2794001 () Bool)

(assert (=> b!2394893 m!2794001))

(assert (=> b!2394894 m!2793939))

(assert (=> start!234988 d!698792))

(declare-fun b!2394965 () Bool)

(declare-fun e!1526336 () Bool)

(declare-fun lt!871452 () Bool)

(declare-fun call!146072 () Bool)

(assert (=> b!2394965 (= e!1526336 (= lt!871452 call!146072))))

(declare-fun b!2394966 () Bool)

(declare-fun res!1017567 () Bool)

(declare-fun e!1526340 () Bool)

(assert (=> b!2394966 (=> res!1017567 e!1526340)))

(declare-fun e!1526337 () Bool)

(assert (=> b!2394966 (= res!1017567 e!1526337)))

(declare-fun res!1017562 () Bool)

(assert (=> b!2394966 (=> (not res!1017562) (not e!1526337))))

(assert (=> b!2394966 (= res!1017562 lt!871452)))

(declare-fun b!2394968 () Bool)

(declare-fun e!1526334 () Bool)

(assert (=> b!2394968 (= e!1526340 e!1526334)))

(declare-fun res!1017568 () Bool)

(assert (=> b!2394968 (=> (not res!1017568) (not e!1526334))))

(assert (=> b!2394968 (= res!1017568 (not lt!871452))))

(declare-fun bm!146067 () Bool)

(assert (=> bm!146067 (= call!146072 (isEmpty!16165 (ite c!381081 s!9460 call!146056)))))

(declare-fun b!2394969 () Bool)

(declare-fun res!1017563 () Bool)

(declare-fun e!1526339 () Bool)

(assert (=> b!2394969 (=> res!1017563 e!1526339)))

(declare-fun tail!3541 (List!28277) List!28277)

(assert (=> b!2394969 (= res!1017563 (not (isEmpty!16165 (tail!3541 (ite c!381081 s!9460 call!146056)))))))

(declare-fun b!2394970 () Bool)

(declare-fun e!1526335 () Bool)

(assert (=> b!2394970 (= e!1526335 (not lt!871452))))

(declare-fun b!2394971 () Bool)

(assert (=> b!2394971 (= e!1526336 e!1526335)))

(declare-fun c!381100 () Bool)

(assert (=> b!2394971 (= c!381100 ((_ is EmptyLang!7019) (ite c!381081 lt!871443 (Concat!11655 lt!871430 EmptyExpr!7019))))))

(declare-fun b!2394972 () Bool)

(declare-fun res!1017565 () Bool)

(assert (=> b!2394972 (=> (not res!1017565) (not e!1526337))))

(assert (=> b!2394972 (= res!1017565 (not call!146072))))

(declare-fun e!1526338 () Bool)

(declare-fun b!2394973 () Bool)

(declare-fun nullable!2068 (Regex!7019) Bool)

(assert (=> b!2394973 (= e!1526338 (nullable!2068 (ite c!381081 lt!871443 (Concat!11655 lt!871430 EmptyExpr!7019))))))

(declare-fun b!2394974 () Bool)

(declare-fun head!5271 (List!28277) C!14196)

(assert (=> b!2394974 (= e!1526337 (= (head!5271 (ite c!381081 s!9460 call!146056)) (c!381083 (ite c!381081 lt!871443 (Concat!11655 lt!871430 EmptyExpr!7019)))))))

(declare-fun d!698794 () Bool)

(assert (=> d!698794 e!1526336))

(declare-fun c!381099 () Bool)

(assert (=> d!698794 (= c!381099 ((_ is EmptyExpr!7019) (ite c!381081 lt!871443 (Concat!11655 lt!871430 EmptyExpr!7019))))))

(assert (=> d!698794 (= lt!871452 e!1526338)))

(declare-fun c!381101 () Bool)

(assert (=> d!698794 (= c!381101 (isEmpty!16165 (ite c!381081 s!9460 call!146056)))))

(declare-fun validRegex!2744 (Regex!7019) Bool)

(assert (=> d!698794 (validRegex!2744 (ite c!381081 lt!871443 (Concat!11655 lt!871430 EmptyExpr!7019)))))

(assert (=> d!698794 (= (matchR!3136 (ite c!381081 lt!871443 (Concat!11655 lt!871430 EmptyExpr!7019)) (ite c!381081 s!9460 call!146056)) lt!871452)))

(declare-fun b!2394967 () Bool)

(declare-fun res!1017561 () Bool)

(assert (=> b!2394967 (=> res!1017561 e!1526340)))

(assert (=> b!2394967 (= res!1017561 (not ((_ is ElementMatch!7019) (ite c!381081 lt!871443 (Concat!11655 lt!871430 EmptyExpr!7019)))))))

(assert (=> b!2394967 (= e!1526335 e!1526340)))

(declare-fun b!2394975 () Bool)

(assert (=> b!2394975 (= e!1526339 (not (= (head!5271 (ite c!381081 s!9460 call!146056)) (c!381083 (ite c!381081 lt!871443 (Concat!11655 lt!871430 EmptyExpr!7019))))))))

(declare-fun b!2394976 () Bool)

(assert (=> b!2394976 (= e!1526334 e!1526339)))

(declare-fun res!1017564 () Bool)

(assert (=> b!2394976 (=> res!1017564 e!1526339)))

(assert (=> b!2394976 (= res!1017564 call!146072)))

(declare-fun b!2394977 () Bool)

(declare-fun res!1017566 () Bool)

(assert (=> b!2394977 (=> (not res!1017566) (not e!1526337))))

(assert (=> b!2394977 (= res!1017566 (isEmpty!16165 (tail!3541 (ite c!381081 s!9460 call!146056))))))

(declare-fun b!2394978 () Bool)

(declare-fun derivativeStep!1726 (Regex!7019 C!14196) Regex!7019)

(assert (=> b!2394978 (= e!1526338 (matchR!3136 (derivativeStep!1726 (ite c!381081 lt!871443 (Concat!11655 lt!871430 EmptyExpr!7019)) (head!5271 (ite c!381081 s!9460 call!146056))) (tail!3541 (ite c!381081 s!9460 call!146056))))))

(assert (= (and d!698794 c!381101) b!2394973))

(assert (= (and d!698794 (not c!381101)) b!2394978))

(assert (= (and d!698794 c!381099) b!2394965))

(assert (= (and d!698794 (not c!381099)) b!2394971))

(assert (= (and b!2394971 c!381100) b!2394970))

(assert (= (and b!2394971 (not c!381100)) b!2394967))

(assert (= (and b!2394967 (not res!1017561)) b!2394966))

(assert (= (and b!2394966 res!1017562) b!2394972))

(assert (= (and b!2394972 res!1017565) b!2394977))

(assert (= (and b!2394977 res!1017566) b!2394974))

(assert (= (and b!2394966 (not res!1017567)) b!2394968))

(assert (= (and b!2394968 res!1017568) b!2394976))

(assert (= (and b!2394976 (not res!1017564)) b!2394969))

(assert (= (and b!2394969 (not res!1017563)) b!2394975))

(assert (= (or b!2394965 b!2394972 b!2394976) bm!146067))

(declare-fun m!2794019 () Bool)

(assert (=> b!2394978 m!2794019))

(assert (=> b!2394978 m!2794019))

(declare-fun m!2794021 () Bool)

(assert (=> b!2394978 m!2794021))

(declare-fun m!2794023 () Bool)

(assert (=> b!2394978 m!2794023))

(assert (=> b!2394978 m!2794021))

(assert (=> b!2394978 m!2794023))

(declare-fun m!2794025 () Bool)

(assert (=> b!2394978 m!2794025))

(declare-fun m!2794027 () Bool)

(assert (=> d!698794 m!2794027))

(declare-fun m!2794029 () Bool)

(assert (=> d!698794 m!2794029))

(assert (=> b!2394975 m!2794019))

(assert (=> bm!146067 m!2794027))

(assert (=> b!2394974 m!2794019))

(declare-fun m!2794031 () Bool)

(assert (=> b!2394973 m!2794031))

(assert (=> b!2394969 m!2794023))

(assert (=> b!2394969 m!2794023))

(declare-fun m!2794033 () Bool)

(assert (=> b!2394969 m!2794033))

(assert (=> b!2394977 m!2794023))

(assert (=> b!2394977 m!2794023))

(assert (=> b!2394977 m!2794033))

(assert (=> bm!146051 d!698794))

(declare-fun d!698798 () Bool)

(declare-fun isEmpty!16167 (Option!5562) Bool)

(assert (=> d!698798 (= (isDefined!4390 (ite c!381078 (ite c!381081 call!146062 lt!871438) call!146064)) (not (isEmpty!16167 (ite c!381078 (ite c!381081 call!146062 lt!871438) call!146064))))))

(declare-fun bs!462799 () Bool)

(assert (= bs!462799 d!698798))

(declare-fun m!2794035 () Bool)

(assert (=> bs!462799 m!2794035))

(assert (=> bm!146061 d!698798))

(declare-fun bs!462800 () Bool)

(declare-fun d!698800 () Bool)

(assert (= bs!462800 (and d!698800 start!234988)))

(declare-fun lambda!89852 () Int)

(assert (=> bs!462800 (= lambda!89852 lambda!89843)))

(declare-fun b!2395031 () Bool)

(declare-fun e!1526371 () Regex!7019)

(assert (=> b!2395031 (= e!1526371 (h!33579 lt!871442))))

(declare-fun b!2395032 () Bool)

(declare-fun e!1526376 () Bool)

(assert (=> b!2395032 (= e!1526376 (isEmpty!16166 (t!208253 lt!871442)))))

(declare-fun b!2395033 () Bool)

(declare-fun e!1526375 () Bool)

(declare-fun e!1526372 () Bool)

(assert (=> b!2395033 (= e!1526375 e!1526372)))

(declare-fun c!381120 () Bool)

(assert (=> b!2395033 (= c!381120 (isEmpty!16166 (tail!3539 lt!871442)))))

(declare-fun e!1526374 () Bool)

(assert (=> d!698800 e!1526374))

(declare-fun res!1017589 () Bool)

(assert (=> d!698800 (=> (not res!1017589) (not e!1526374))))

(declare-fun lt!871455 () Regex!7019)

(assert (=> d!698800 (= res!1017589 (validRegex!2744 lt!871455))))

(assert (=> d!698800 (= lt!871455 e!1526371)))

(declare-fun c!381121 () Bool)

(assert (=> d!698800 (= c!381121 e!1526376)))

(declare-fun res!1017590 () Bool)

(assert (=> d!698800 (=> (not res!1017590) (not e!1526376))))

(assert (=> d!698800 (= res!1017590 ((_ is Cons!28178) lt!871442))))

(assert (=> d!698800 (forall!5653 lt!871442 lambda!89852)))

(assert (=> d!698800 (= (generalisedConcat!120 lt!871442) lt!871455)))

(declare-fun b!2395034 () Bool)

(declare-fun isEmptyExpr!88 (Regex!7019) Bool)

(assert (=> b!2395034 (= e!1526375 (isEmptyExpr!88 lt!871455))))

(declare-fun b!2395035 () Bool)

(assert (=> b!2395035 (= e!1526372 (= lt!871455 (head!5269 lt!871442)))))

(declare-fun b!2395036 () Bool)

(declare-fun e!1526373 () Regex!7019)

(assert (=> b!2395036 (= e!1526373 EmptyExpr!7019)))

(declare-fun b!2395037 () Bool)

(assert (=> b!2395037 (= e!1526374 e!1526375)))

(declare-fun c!381119 () Bool)

(assert (=> b!2395037 (= c!381119 (isEmpty!16166 lt!871442))))

(declare-fun b!2395038 () Bool)

(assert (=> b!2395038 (= e!1526373 (Concat!11655 (h!33579 lt!871442) (generalisedConcat!120 (t!208253 lt!871442))))))

(declare-fun b!2395039 () Bool)

(assert (=> b!2395039 (= e!1526371 e!1526373)))

(declare-fun c!381118 () Bool)

(assert (=> b!2395039 (= c!381118 ((_ is Cons!28178) lt!871442))))

(declare-fun b!2395040 () Bool)

(declare-fun isConcat!88 (Regex!7019) Bool)

(assert (=> b!2395040 (= e!1526372 (isConcat!88 lt!871455))))

(assert (= (and d!698800 res!1017590) b!2395032))

(assert (= (and d!698800 c!381121) b!2395031))

(assert (= (and d!698800 (not c!381121)) b!2395039))

(assert (= (and b!2395039 c!381118) b!2395038))

(assert (= (and b!2395039 (not c!381118)) b!2395036))

(assert (= (and d!698800 res!1017589) b!2395037))

(assert (= (and b!2395037 c!381119) b!2395034))

(assert (= (and b!2395037 (not c!381119)) b!2395033))

(assert (= (and b!2395033 c!381120) b!2395035))

(assert (= (and b!2395033 (not c!381120)) b!2395040))

(declare-fun m!2794037 () Bool)

(assert (=> b!2395032 m!2794037))

(declare-fun m!2794039 () Bool)

(assert (=> b!2395040 m!2794039))

(declare-fun m!2794041 () Bool)

(assert (=> b!2395038 m!2794041))

(declare-fun m!2794043 () Bool)

(assert (=> d!698800 m!2794043))

(declare-fun m!2794045 () Bool)

(assert (=> d!698800 m!2794045))

(declare-fun m!2794047 () Bool)

(assert (=> b!2395034 m!2794047))

(declare-fun m!2794049 () Bool)

(assert (=> b!2395033 m!2794049))

(assert (=> b!2395033 m!2794049))

(declare-fun m!2794051 () Bool)

(assert (=> b!2395033 m!2794051))

(assert (=> b!2395037 m!2793979))

(declare-fun m!2794053 () Bool)

(assert (=> b!2395035 m!2794053))

(assert (=> bm!146057 d!698800))

(declare-fun d!698802 () Bool)

(declare-fun res!1017591 () Bool)

(declare-fun e!1526377 () Bool)

(assert (=> d!698802 (=> res!1017591 e!1526377)))

(assert (=> d!698802 (= res!1017591 ((_ is Nil!28178) (t!208253 l!9164)))))

(assert (=> d!698802 (= (forall!5653 (t!208253 l!9164) lambda!89843) e!1526377)))

(declare-fun b!2395041 () Bool)

(declare-fun e!1526378 () Bool)

(assert (=> b!2395041 (= e!1526377 e!1526378)))

(declare-fun res!1017592 () Bool)

(assert (=> b!2395041 (=> (not res!1017592) (not e!1526378))))

(assert (=> b!2395041 (= res!1017592 (dynLambda!12134 lambda!89843 (h!33579 (t!208253 l!9164))))))

(declare-fun b!2395042 () Bool)

(assert (=> b!2395042 (= e!1526378 (forall!5653 (t!208253 (t!208253 l!9164)) lambda!89843))))

(assert (= (and d!698802 (not res!1017591)) b!2395041))

(assert (= (and b!2395041 res!1017592) b!2395042))

(declare-fun b_lambda!74239 () Bool)

(assert (=> (not b_lambda!74239) (not b!2395041)))

(declare-fun m!2794055 () Bool)

(assert (=> b!2395041 m!2794055))

(declare-fun m!2794057 () Bool)

(assert (=> b!2395042 m!2794057))

(assert (=> b!2394872 d!698802))

(declare-fun d!698804 () Bool)

(assert (=> d!698804 (= (isEmpty!16165 s!9460) ((_ is Nil!28179) s!9460))))

(assert (=> b!2394865 d!698804))

(declare-fun d!698806 () Bool)

(assert (=> d!698806 (= (head!5269 l!9164) (h!33579 l!9164))))

(assert (=> bm!146052 d!698806))

(declare-fun bs!462802 () Bool)

(declare-fun d!698808 () Bool)

(assert (= bs!462802 (and d!698808 start!234988)))

(declare-fun lambda!89854 () Int)

(assert (=> bs!462802 (= lambda!89854 lambda!89843)))

(declare-fun bs!462803 () Bool)

(assert (= bs!462803 (and d!698808 d!698800)))

(assert (=> bs!462803 (= lambda!89854 lambda!89852)))

(declare-fun b!2395054 () Bool)

(declare-fun e!1526386 () Regex!7019)

(assert (=> b!2395054 (= e!1526386 (h!33579 l!9164))))

(declare-fun b!2395055 () Bool)

(declare-fun e!1526391 () Bool)

(assert (=> b!2395055 (= e!1526391 (isEmpty!16166 (t!208253 l!9164)))))

(declare-fun b!2395056 () Bool)

(declare-fun e!1526390 () Bool)

(declare-fun e!1526387 () Bool)

(assert (=> b!2395056 (= e!1526390 e!1526387)))

(declare-fun c!381128 () Bool)

(assert (=> b!2395056 (= c!381128 (isEmpty!16166 (tail!3539 l!9164)))))

(declare-fun e!1526389 () Bool)

(assert (=> d!698808 e!1526389))

(declare-fun res!1017596 () Bool)

(assert (=> d!698808 (=> (not res!1017596) (not e!1526389))))

(declare-fun lt!871456 () Regex!7019)

(assert (=> d!698808 (= res!1017596 (validRegex!2744 lt!871456))))

(assert (=> d!698808 (= lt!871456 e!1526386)))

(declare-fun c!381129 () Bool)

(assert (=> d!698808 (= c!381129 e!1526391)))

(declare-fun res!1017597 () Bool)

(assert (=> d!698808 (=> (not res!1017597) (not e!1526391))))

(assert (=> d!698808 (= res!1017597 ((_ is Cons!28178) l!9164))))

(assert (=> d!698808 (forall!5653 l!9164 lambda!89854)))

(assert (=> d!698808 (= (generalisedConcat!120 l!9164) lt!871456)))

(declare-fun b!2395057 () Bool)

(assert (=> b!2395057 (= e!1526390 (isEmptyExpr!88 lt!871456))))

(declare-fun b!2395058 () Bool)

(assert (=> b!2395058 (= e!1526387 (= lt!871456 (head!5269 l!9164)))))

(declare-fun b!2395059 () Bool)

(declare-fun e!1526388 () Regex!7019)

(assert (=> b!2395059 (= e!1526388 EmptyExpr!7019)))

(declare-fun b!2395060 () Bool)

(assert (=> b!2395060 (= e!1526389 e!1526390)))

(declare-fun c!381127 () Bool)

(assert (=> b!2395060 (= c!381127 (isEmpty!16166 l!9164))))

(declare-fun b!2395061 () Bool)

(assert (=> b!2395061 (= e!1526388 (Concat!11655 (h!33579 l!9164) (generalisedConcat!120 (t!208253 l!9164))))))

(declare-fun b!2395062 () Bool)

(assert (=> b!2395062 (= e!1526386 e!1526388)))

(declare-fun c!381126 () Bool)

(assert (=> b!2395062 (= c!381126 ((_ is Cons!28178) l!9164))))

(declare-fun b!2395063 () Bool)

(assert (=> b!2395063 (= e!1526387 (isConcat!88 lt!871456))))

(assert (= (and d!698808 res!1017597) b!2395055))

(assert (= (and d!698808 c!381129) b!2395054))

(assert (= (and d!698808 (not c!381129)) b!2395062))

(assert (= (and b!2395062 c!381126) b!2395061))

(assert (= (and b!2395062 (not c!381126)) b!2395059))

(assert (= (and d!698808 res!1017596) b!2395060))

(assert (= (and b!2395060 c!381127) b!2395057))

(assert (= (and b!2395060 (not c!381127)) b!2395056))

(assert (= (and b!2395056 c!381128) b!2395058))

(assert (= (and b!2395056 (not c!381128)) b!2395063))

(declare-fun m!2794059 () Bool)

(assert (=> b!2395055 m!2794059))

(declare-fun m!2794061 () Bool)

(assert (=> b!2395063 m!2794061))

(assert (=> b!2395061 m!2793927))

(declare-fun m!2794063 () Bool)

(assert (=> d!698808 m!2794063))

(declare-fun m!2794065 () Bool)

(assert (=> d!698808 m!2794065))

(declare-fun m!2794067 () Bool)

(assert (=> b!2395057 m!2794067))

(assert (=> b!2395056 m!2793977))

(assert (=> b!2395056 m!2793977))

(declare-fun m!2794069 () Bool)

(assert (=> b!2395056 m!2794069))

(assert (=> b!2395060 m!2793935))

(assert (=> b!2395058 m!2793933))

(assert (=> b!2394854 d!698808))

(declare-fun d!698810 () Bool)

(assert (=> d!698810 (= (isDefined!4390 (findConcatSeparation!670 (h!33579 l!9164) (generalisedConcat!120 (t!208253 l!9164)) Nil!28179 s!9460 s!9460)) (not (isEmpty!16167 (findConcatSeparation!670 (h!33579 l!9164) (generalisedConcat!120 (t!208253 l!9164)) Nil!28179 s!9460 s!9460))))))

(declare-fun bs!462806 () Bool)

(assert (= bs!462806 d!698810))

(assert (=> bs!462806 m!2793929))

(declare-fun m!2794071 () Bool)

(assert (=> bs!462806 m!2794071))

(assert (=> b!2394877 d!698810))

(declare-fun b!2395108 () Bool)

(declare-fun e!1526419 () Option!5562)

(assert (=> b!2395108 (= e!1526419 None!5561)))

(declare-fun b!2395109 () Bool)

(declare-fun res!1017626 () Bool)

(declare-fun e!1526417 () Bool)

(assert (=> b!2395109 (=> (not res!1017626) (not e!1526417))))

(declare-fun lt!871470 () Option!5562)

(assert (=> b!2395109 (= res!1017626 (matchR!3136 (generalisedConcat!120 (t!208253 l!9164)) (_2!16492 (get!8626 lt!871470))))))

(declare-fun b!2395110 () Bool)

(declare-fun e!1526415 () Bool)

(assert (=> b!2395110 (= e!1526415 (matchR!3136 (generalisedConcat!120 (t!208253 l!9164)) s!9460))))

(declare-fun b!2395111 () Bool)

(declare-fun res!1017625 () Bool)

(assert (=> b!2395111 (=> (not res!1017625) (not e!1526417))))

(assert (=> b!2395111 (= res!1017625 (matchR!3136 (h!33579 l!9164) (_1!16492 (get!8626 lt!871470))))))

(declare-fun b!2395112 () Bool)

(declare-fun e!1526416 () Option!5562)

(assert (=> b!2395112 (= e!1526416 (Some!5561 (tuple2!27903 Nil!28179 s!9460)))))

(declare-fun b!2395113 () Bool)

(assert (=> b!2395113 (= e!1526416 e!1526419)))

(declare-fun c!381140 () Bool)

(assert (=> b!2395113 (= c!381140 ((_ is Nil!28179) s!9460))))

(declare-fun b!2395114 () Bool)

(declare-fun lt!871471 () Unit!41246)

(declare-fun lt!871472 () Unit!41246)

(assert (=> b!2395114 (= lt!871471 lt!871472)))

(assert (=> b!2395114 (= (++!6973 (++!6973 Nil!28179 (Cons!28179 (h!33580 s!9460) Nil!28179)) (t!208254 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!615 (List!28277 C!14196 List!28277 List!28277) Unit!41246)

(assert (=> b!2395114 (= lt!871472 (lemmaMoveElementToOtherListKeepsConcatEq!615 Nil!28179 (h!33580 s!9460) (t!208254 s!9460) s!9460))))

(assert (=> b!2395114 (= e!1526419 (findConcatSeparation!670 (h!33579 l!9164) (generalisedConcat!120 (t!208253 l!9164)) (++!6973 Nil!28179 (Cons!28179 (h!33580 s!9460) Nil!28179)) (t!208254 s!9460) s!9460))))

(declare-fun b!2395115 () Bool)

(declare-fun e!1526418 () Bool)

(assert (=> b!2395115 (= e!1526418 (not (isDefined!4390 lt!871470)))))

(declare-fun b!2395116 () Bool)

(assert (=> b!2395116 (= e!1526417 (= (++!6973 (_1!16492 (get!8626 lt!871470)) (_2!16492 (get!8626 lt!871470))) s!9460))))

(declare-fun d!698812 () Bool)

(assert (=> d!698812 e!1526418))

(declare-fun res!1017623 () Bool)

(assert (=> d!698812 (=> res!1017623 e!1526418)))

(assert (=> d!698812 (= res!1017623 e!1526417)))

(declare-fun res!1017622 () Bool)

(assert (=> d!698812 (=> (not res!1017622) (not e!1526417))))

(assert (=> d!698812 (= res!1017622 (isDefined!4390 lt!871470))))

(assert (=> d!698812 (= lt!871470 e!1526416)))

(declare-fun c!381141 () Bool)

(assert (=> d!698812 (= c!381141 e!1526415)))

(declare-fun res!1017624 () Bool)

(assert (=> d!698812 (=> (not res!1017624) (not e!1526415))))

(assert (=> d!698812 (= res!1017624 (matchR!3136 (h!33579 l!9164) Nil!28179))))

(assert (=> d!698812 (validRegex!2744 (h!33579 l!9164))))

(assert (=> d!698812 (= (findConcatSeparation!670 (h!33579 l!9164) (generalisedConcat!120 (t!208253 l!9164)) Nil!28179 s!9460 s!9460) lt!871470)))

(assert (= (and d!698812 res!1017624) b!2395110))

(assert (= (and d!698812 c!381141) b!2395112))

(assert (= (and d!698812 (not c!381141)) b!2395113))

(assert (= (and b!2395113 c!381140) b!2395108))

(assert (= (and b!2395113 (not c!381140)) b!2395114))

(assert (= (and d!698812 res!1017622) b!2395111))

(assert (= (and b!2395111 res!1017625) b!2395109))

(assert (= (and b!2395109 res!1017626) b!2395116))

(assert (= (and d!698812 (not res!1017623)) b!2395115))

(declare-fun m!2794113 () Bool)

(assert (=> d!698812 m!2794113))

(declare-fun m!2794115 () Bool)

(assert (=> d!698812 m!2794115))

(declare-fun m!2794117 () Bool)

(assert (=> d!698812 m!2794117))

(assert (=> b!2395110 m!2793927))

(declare-fun m!2794119 () Bool)

(assert (=> b!2395110 m!2794119))

(declare-fun m!2794121 () Bool)

(assert (=> b!2395111 m!2794121))

(declare-fun m!2794123 () Bool)

(assert (=> b!2395111 m!2794123))

(assert (=> b!2395116 m!2794121))

(declare-fun m!2794125 () Bool)

(assert (=> b!2395116 m!2794125))

(assert (=> b!2395109 m!2794121))

(assert (=> b!2395109 m!2793927))

(declare-fun m!2794127 () Bool)

(assert (=> b!2395109 m!2794127))

(declare-fun m!2794129 () Bool)

(assert (=> b!2395114 m!2794129))

(assert (=> b!2395114 m!2794129))

(declare-fun m!2794131 () Bool)

(assert (=> b!2395114 m!2794131))

(declare-fun m!2794133 () Bool)

(assert (=> b!2395114 m!2794133))

(assert (=> b!2395114 m!2793927))

(assert (=> b!2395114 m!2794129))

(declare-fun m!2794135 () Bool)

(assert (=> b!2395114 m!2794135))

(assert (=> b!2395115 m!2794113))

(assert (=> b!2394877 d!698812))

(declare-fun bs!462810 () Bool)

(declare-fun d!698828 () Bool)

(assert (= bs!462810 (and d!698828 start!234988)))

(declare-fun lambda!89856 () Int)

(assert (=> bs!462810 (= lambda!89856 lambda!89843)))

(declare-fun bs!462811 () Bool)

(assert (= bs!462811 (and d!698828 d!698800)))

(assert (=> bs!462811 (= lambda!89856 lambda!89852)))

(declare-fun bs!462812 () Bool)

(assert (= bs!462812 (and d!698828 d!698808)))

(assert (=> bs!462812 (= lambda!89856 lambda!89854)))

(declare-fun b!2395117 () Bool)

(declare-fun e!1526420 () Regex!7019)

(assert (=> b!2395117 (= e!1526420 (h!33579 (t!208253 l!9164)))))

(declare-fun b!2395118 () Bool)

(declare-fun e!1526425 () Bool)

(assert (=> b!2395118 (= e!1526425 (isEmpty!16166 (t!208253 (t!208253 l!9164))))))

(declare-fun b!2395119 () Bool)

(declare-fun e!1526424 () Bool)

(declare-fun e!1526421 () Bool)

(assert (=> b!2395119 (= e!1526424 e!1526421)))

(declare-fun c!381144 () Bool)

(assert (=> b!2395119 (= c!381144 (isEmpty!16166 (tail!3539 (t!208253 l!9164))))))

(declare-fun e!1526423 () Bool)

(assert (=> d!698828 e!1526423))

(declare-fun res!1017627 () Bool)

(assert (=> d!698828 (=> (not res!1017627) (not e!1526423))))

(declare-fun lt!871473 () Regex!7019)

(assert (=> d!698828 (= res!1017627 (validRegex!2744 lt!871473))))

(assert (=> d!698828 (= lt!871473 e!1526420)))

(declare-fun c!381145 () Bool)

(assert (=> d!698828 (= c!381145 e!1526425)))

(declare-fun res!1017628 () Bool)

(assert (=> d!698828 (=> (not res!1017628) (not e!1526425))))

(assert (=> d!698828 (= res!1017628 ((_ is Cons!28178) (t!208253 l!9164)))))

(assert (=> d!698828 (forall!5653 (t!208253 l!9164) lambda!89856)))

(assert (=> d!698828 (= (generalisedConcat!120 (t!208253 l!9164)) lt!871473)))

(declare-fun b!2395120 () Bool)

(assert (=> b!2395120 (= e!1526424 (isEmptyExpr!88 lt!871473))))

(declare-fun b!2395121 () Bool)

(assert (=> b!2395121 (= e!1526421 (= lt!871473 (head!5269 (t!208253 l!9164))))))

(declare-fun b!2395122 () Bool)

(declare-fun e!1526422 () Regex!7019)

(assert (=> b!2395122 (= e!1526422 EmptyExpr!7019)))

(declare-fun b!2395123 () Bool)

(assert (=> b!2395123 (= e!1526423 e!1526424)))

(declare-fun c!381143 () Bool)

(assert (=> b!2395123 (= c!381143 (isEmpty!16166 (t!208253 l!9164)))))

(declare-fun b!2395124 () Bool)

(assert (=> b!2395124 (= e!1526422 (Concat!11655 (h!33579 (t!208253 l!9164)) (generalisedConcat!120 (t!208253 (t!208253 l!9164)))))))

(declare-fun b!2395125 () Bool)

(assert (=> b!2395125 (= e!1526420 e!1526422)))

(declare-fun c!381142 () Bool)

(assert (=> b!2395125 (= c!381142 ((_ is Cons!28178) (t!208253 l!9164)))))

(declare-fun b!2395126 () Bool)

(assert (=> b!2395126 (= e!1526421 (isConcat!88 lt!871473))))

(assert (= (and d!698828 res!1017628) b!2395118))

(assert (= (and d!698828 c!381145) b!2395117))

(assert (= (and d!698828 (not c!381145)) b!2395125))

(assert (= (and b!2395125 c!381142) b!2395124))

(assert (= (and b!2395125 (not c!381142)) b!2395122))

(assert (= (and d!698828 res!1017627) b!2395123))

(assert (= (and b!2395123 c!381143) b!2395120))

(assert (= (and b!2395123 (not c!381143)) b!2395119))

(assert (= (and b!2395119 c!381144) b!2395121))

(assert (= (and b!2395119 (not c!381144)) b!2395126))

(declare-fun m!2794137 () Bool)

(assert (=> b!2395118 m!2794137))

(declare-fun m!2794139 () Bool)

(assert (=> b!2395126 m!2794139))

(declare-fun m!2794141 () Bool)

(assert (=> b!2395124 m!2794141))

(declare-fun m!2794143 () Bool)

(assert (=> d!698828 m!2794143))

(declare-fun m!2794145 () Bool)

(assert (=> d!698828 m!2794145))

(declare-fun m!2794147 () Bool)

(assert (=> b!2395120 m!2794147))

(declare-fun m!2794149 () Bool)

(assert (=> b!2395119 m!2794149))

(assert (=> b!2395119 m!2794149))

(declare-fun m!2794151 () Bool)

(assert (=> b!2395119 m!2794151))

(assert (=> b!2395123 m!2794059))

(declare-fun m!2794153 () Bool)

(assert (=> b!2395121 m!2794153))

(assert (=> b!2394877 d!698828))

(declare-fun d!698830 () Bool)

(assert (=> d!698830 (matchR!3136 (Concat!11655 lt!871430 EmptyExpr!7019) (++!6973 (_1!16492 lt!871429) (_2!16492 lt!871429)))))

(declare-fun lt!871479 () Unit!41246)

(declare-fun choose!14144 (Regex!7019 Regex!7019 List!28277 List!28277 List!28277) Unit!41246)

(assert (=> d!698830 (= lt!871479 (choose!14144 lt!871430 EmptyExpr!7019 (_1!16492 lt!871429) (_2!16492 lt!871429) s!9460))))

(assert (=> d!698830 (validRegex!2744 lt!871430)))

(assert (=> d!698830 (= (lemmaFindSeparationIsDefinedThenConcatMatches!38 lt!871430 EmptyExpr!7019 (_1!16492 lt!871429) (_2!16492 lt!871429) s!9460) lt!871479)))

(declare-fun bs!462817 () Bool)

(assert (= bs!462817 d!698830))

(declare-fun m!2794161 () Bool)

(assert (=> bs!462817 m!2794161))

(assert (=> bs!462817 m!2794161))

(declare-fun m!2794163 () Bool)

(assert (=> bs!462817 m!2794163))

(declare-fun m!2794165 () Bool)

(assert (=> bs!462817 m!2794165))

(declare-fun m!2794167 () Bool)

(assert (=> bs!462817 m!2794167))

(assert (=> b!2394855 d!698830))

(declare-fun d!698834 () Bool)

(assert (=> d!698834 (= (get!8626 lt!871438) (v!30969 lt!871438))))

(assert (=> b!2394855 d!698834))

(declare-fun d!698836 () Bool)

(assert (=> d!698836 (= (isEmpty!16166 l!9164) ((_ is Nil!28178) l!9164))))

(assert (=> b!2394878 d!698836))

(declare-fun d!698838 () Bool)

(assert (=> d!698838 (= (tail!3539 l!9164) (t!208253 l!9164))))

(assert (=> b!2394871 d!698838))

(declare-fun d!698840 () Bool)

(assert (=> d!698840 (= (isEmpty!16166 lt!871442) ((_ is Nil!28178) lt!871442))))

(assert (=> b!2394871 d!698840))

(declare-fun b!2395131 () Bool)

(declare-fun e!1526432 () Option!5562)

(assert (=> b!2395131 (= e!1526432 None!5561)))

(declare-fun b!2395132 () Bool)

(declare-fun res!1017637 () Bool)

(declare-fun e!1526430 () Bool)

(assert (=> b!2395132 (=> (not res!1017637) (not e!1526430))))

(declare-fun lt!871480 () Option!5562)

(assert (=> b!2395132 (= res!1017637 (matchR!3136 (ite c!381078 EmptyExpr!7019 call!146057) (_2!16492 (get!8626 lt!871480))))))

(declare-fun b!2395133 () Bool)

(declare-fun e!1526428 () Bool)

(assert (=> b!2395133 (= e!1526428 (matchR!3136 (ite c!381078 EmptyExpr!7019 call!146057) s!9460))))

(declare-fun b!2395134 () Bool)

(declare-fun res!1017636 () Bool)

(assert (=> b!2395134 (=> (not res!1017636) (not e!1526430))))

(assert (=> b!2395134 (= res!1017636 (matchR!3136 (ite c!381078 lt!871430 call!146063) (_1!16492 (get!8626 lt!871480))))))

(declare-fun b!2395135 () Bool)

(declare-fun e!1526429 () Option!5562)

(assert (=> b!2395135 (= e!1526429 (Some!5561 (tuple2!27903 Nil!28179 s!9460)))))

(declare-fun b!2395136 () Bool)

(assert (=> b!2395136 (= e!1526429 e!1526432)))

(declare-fun c!381146 () Bool)

(assert (=> b!2395136 (= c!381146 ((_ is Nil!28179) s!9460))))

(declare-fun b!2395137 () Bool)

(declare-fun lt!871481 () Unit!41246)

(declare-fun lt!871482 () Unit!41246)

(assert (=> b!2395137 (= lt!871481 lt!871482)))

(assert (=> b!2395137 (= (++!6973 (++!6973 Nil!28179 (Cons!28179 (h!33580 s!9460) Nil!28179)) (t!208254 s!9460)) s!9460)))

(assert (=> b!2395137 (= lt!871482 (lemmaMoveElementToOtherListKeepsConcatEq!615 Nil!28179 (h!33580 s!9460) (t!208254 s!9460) s!9460))))

(assert (=> b!2395137 (= e!1526432 (findConcatSeparation!670 (ite c!381078 lt!871430 call!146063) (ite c!381078 EmptyExpr!7019 call!146057) (++!6973 Nil!28179 (Cons!28179 (h!33580 s!9460) Nil!28179)) (t!208254 s!9460) s!9460))))

(declare-fun b!2395138 () Bool)

(declare-fun e!1526431 () Bool)

(assert (=> b!2395138 (= e!1526431 (not (isDefined!4390 lt!871480)))))

(declare-fun b!2395139 () Bool)

(assert (=> b!2395139 (= e!1526430 (= (++!6973 (_1!16492 (get!8626 lt!871480)) (_2!16492 (get!8626 lt!871480))) s!9460))))

(declare-fun d!698842 () Bool)

(assert (=> d!698842 e!1526431))

(declare-fun res!1017634 () Bool)

(assert (=> d!698842 (=> res!1017634 e!1526431)))

(assert (=> d!698842 (= res!1017634 e!1526430)))

(declare-fun res!1017633 () Bool)

(assert (=> d!698842 (=> (not res!1017633) (not e!1526430))))

(assert (=> d!698842 (= res!1017633 (isDefined!4390 lt!871480))))

(assert (=> d!698842 (= lt!871480 e!1526429)))

(declare-fun c!381147 () Bool)

(assert (=> d!698842 (= c!381147 e!1526428)))

(declare-fun res!1017635 () Bool)

(assert (=> d!698842 (=> (not res!1017635) (not e!1526428))))

(assert (=> d!698842 (= res!1017635 (matchR!3136 (ite c!381078 lt!871430 call!146063) Nil!28179))))

(assert (=> d!698842 (validRegex!2744 (ite c!381078 lt!871430 call!146063))))

(assert (=> d!698842 (= (findConcatSeparation!670 (ite c!381078 lt!871430 call!146063) (ite c!381078 EmptyExpr!7019 call!146057) Nil!28179 s!9460 s!9460) lt!871480)))

(assert (= (and d!698842 res!1017635) b!2395133))

(assert (= (and d!698842 c!381147) b!2395135))

(assert (= (and d!698842 (not c!381147)) b!2395136))

(assert (= (and b!2395136 c!381146) b!2395131))

(assert (= (and b!2395136 (not c!381146)) b!2395137))

(assert (= (and d!698842 res!1017633) b!2395134))

(assert (= (and b!2395134 res!1017636) b!2395132))

(assert (= (and b!2395132 res!1017637) b!2395139))

(assert (= (and d!698842 (not res!1017634)) b!2395138))

(declare-fun m!2794169 () Bool)

(assert (=> d!698842 m!2794169))

(declare-fun m!2794171 () Bool)

(assert (=> d!698842 m!2794171))

(declare-fun m!2794173 () Bool)

(assert (=> d!698842 m!2794173))

(declare-fun m!2794175 () Bool)

(assert (=> b!2395133 m!2794175))

(declare-fun m!2794177 () Bool)

(assert (=> b!2395134 m!2794177))

(declare-fun m!2794179 () Bool)

(assert (=> b!2395134 m!2794179))

(assert (=> b!2395139 m!2794177))

(declare-fun m!2794181 () Bool)

(assert (=> b!2395139 m!2794181))

(assert (=> b!2395132 m!2794177))

(declare-fun m!2794183 () Bool)

(assert (=> b!2395132 m!2794183))

(assert (=> b!2395137 m!2794129))

(assert (=> b!2395137 m!2794129))

(assert (=> b!2395137 m!2794131))

(assert (=> b!2395137 m!2794133))

(assert (=> b!2395137 m!2794129))

(declare-fun m!2794185 () Bool)

(assert (=> b!2395137 m!2794185))

(assert (=> b!2395138 m!2794169))

(assert (=> bm!146056 d!698842))

(declare-fun b!2395140 () Bool)

(declare-fun e!1526437 () Option!5562)

(assert (=> b!2395140 (= e!1526437 None!5561)))

(declare-fun b!2395141 () Bool)

(declare-fun res!1017642 () Bool)

(declare-fun e!1526435 () Bool)

(assert (=> b!2395141 (=> (not res!1017642) (not e!1526435))))

(declare-fun lt!871483 () Option!5562)

(assert (=> b!2395141 (= res!1017642 (matchR!3136 call!146065 (_2!16492 (get!8626 lt!871483))))))

(declare-fun b!2395142 () Bool)

(declare-fun e!1526433 () Bool)

(assert (=> b!2395142 (= e!1526433 (matchR!3136 call!146065 s!9460))))

(declare-fun b!2395143 () Bool)

(declare-fun res!1017641 () Bool)

(assert (=> b!2395143 (=> (not res!1017641) (not e!1526435))))

(assert (=> b!2395143 (= res!1017641 (matchR!3136 lt!871430 (_1!16492 (get!8626 lt!871483))))))

(declare-fun b!2395144 () Bool)

(declare-fun e!1526434 () Option!5562)

(assert (=> b!2395144 (= e!1526434 (Some!5561 (tuple2!27903 Nil!28179 s!9460)))))

(declare-fun b!2395145 () Bool)

(assert (=> b!2395145 (= e!1526434 e!1526437)))

(declare-fun c!381148 () Bool)

(assert (=> b!2395145 (= c!381148 ((_ is Nil!28179) s!9460))))

(declare-fun b!2395146 () Bool)

(declare-fun lt!871484 () Unit!41246)

(declare-fun lt!871485 () Unit!41246)

(assert (=> b!2395146 (= lt!871484 lt!871485)))

(assert (=> b!2395146 (= (++!6973 (++!6973 Nil!28179 (Cons!28179 (h!33580 s!9460) Nil!28179)) (t!208254 s!9460)) s!9460)))

(assert (=> b!2395146 (= lt!871485 (lemmaMoveElementToOtherListKeepsConcatEq!615 Nil!28179 (h!33580 s!9460) (t!208254 s!9460) s!9460))))

(assert (=> b!2395146 (= e!1526437 (findConcatSeparation!670 lt!871430 call!146065 (++!6973 Nil!28179 (Cons!28179 (h!33580 s!9460) Nil!28179)) (t!208254 s!9460) s!9460))))

(declare-fun b!2395147 () Bool)

(declare-fun e!1526436 () Bool)

(assert (=> b!2395147 (= e!1526436 (not (isDefined!4390 lt!871483)))))

(declare-fun b!2395148 () Bool)

(assert (=> b!2395148 (= e!1526435 (= (++!6973 (_1!16492 (get!8626 lt!871483)) (_2!16492 (get!8626 lt!871483))) s!9460))))

(declare-fun d!698844 () Bool)

(assert (=> d!698844 e!1526436))

(declare-fun res!1017639 () Bool)

(assert (=> d!698844 (=> res!1017639 e!1526436)))

(assert (=> d!698844 (= res!1017639 e!1526435)))

(declare-fun res!1017638 () Bool)

(assert (=> d!698844 (=> (not res!1017638) (not e!1526435))))

(assert (=> d!698844 (= res!1017638 (isDefined!4390 lt!871483))))

(assert (=> d!698844 (= lt!871483 e!1526434)))

(declare-fun c!381149 () Bool)

(assert (=> d!698844 (= c!381149 e!1526433)))

(declare-fun res!1017640 () Bool)

(assert (=> d!698844 (=> (not res!1017640) (not e!1526433))))

(assert (=> d!698844 (= res!1017640 (matchR!3136 lt!871430 Nil!28179))))

(assert (=> d!698844 (validRegex!2744 lt!871430)))

(assert (=> d!698844 (= (findConcatSeparation!670 lt!871430 call!146065 Nil!28179 s!9460 s!9460) lt!871483)))

(assert (= (and d!698844 res!1017640) b!2395142))

(assert (= (and d!698844 c!381149) b!2395144))

(assert (= (and d!698844 (not c!381149)) b!2395145))

(assert (= (and b!2395145 c!381148) b!2395140))

(assert (= (and b!2395145 (not c!381148)) b!2395146))

(assert (= (and d!698844 res!1017638) b!2395143))

(assert (= (and b!2395143 res!1017641) b!2395141))

(assert (= (and b!2395141 res!1017642) b!2395148))

(assert (= (and d!698844 (not res!1017639)) b!2395147))

(declare-fun m!2794187 () Bool)

(assert (=> d!698844 m!2794187))

(declare-fun m!2794189 () Bool)

(assert (=> d!698844 m!2794189))

(assert (=> d!698844 m!2794167))

(declare-fun m!2794191 () Bool)

(assert (=> b!2395142 m!2794191))

(declare-fun m!2794193 () Bool)

(assert (=> b!2395143 m!2794193))

(declare-fun m!2794195 () Bool)

(assert (=> b!2395143 m!2794195))

(assert (=> b!2395148 m!2794193))

(declare-fun m!2794197 () Bool)

(assert (=> b!2395148 m!2794197))

(assert (=> b!2395141 m!2794193))

(declare-fun m!2794199 () Bool)

(assert (=> b!2395141 m!2794199))

(assert (=> b!2395146 m!2794129))

(assert (=> b!2395146 m!2794129))

(assert (=> b!2395146 m!2794131))

(assert (=> b!2395146 m!2794133))

(assert (=> b!2395146 m!2794129))

(declare-fun m!2794201 () Bool)

(assert (=> b!2395146 m!2794201))

(assert (=> b!2395147 m!2794187))

(assert (=> bm!146054 d!698844))

(declare-fun d!698846 () Bool)

(assert (=> d!698846 (= (isDefined!4390 (findConcatSeparation!670 lt!871430 call!146057 Nil!28179 s!9460 s!9460)) (not (isEmpty!16167 (findConcatSeparation!670 lt!871430 call!146057 Nil!28179 s!9460 s!9460))))))

(declare-fun bs!462818 () Bool)

(assert (= bs!462818 d!698846))

(assert (=> bs!462818 m!2793941))

(declare-fun m!2794203 () Bool)

(assert (=> bs!462818 m!2794203))

(assert (=> b!2394856 d!698846))

(declare-fun b!2395149 () Bool)

(declare-fun e!1526442 () Option!5562)

(assert (=> b!2395149 (= e!1526442 None!5561)))

(declare-fun b!2395150 () Bool)

(declare-fun res!1017647 () Bool)

(declare-fun e!1526440 () Bool)

(assert (=> b!2395150 (=> (not res!1017647) (not e!1526440))))

(declare-fun lt!871488 () Option!5562)

(assert (=> b!2395150 (= res!1017647 (matchR!3136 call!146057 (_2!16492 (get!8626 lt!871488))))))

(declare-fun b!2395151 () Bool)

(declare-fun e!1526438 () Bool)

(assert (=> b!2395151 (= e!1526438 (matchR!3136 call!146057 s!9460))))

(declare-fun b!2395152 () Bool)

(declare-fun res!1017646 () Bool)

(assert (=> b!2395152 (=> (not res!1017646) (not e!1526440))))

(assert (=> b!2395152 (= res!1017646 (matchR!3136 lt!871430 (_1!16492 (get!8626 lt!871488))))))

(declare-fun b!2395153 () Bool)

(declare-fun e!1526439 () Option!5562)

(assert (=> b!2395153 (= e!1526439 (Some!5561 (tuple2!27903 Nil!28179 s!9460)))))

(declare-fun b!2395154 () Bool)

(assert (=> b!2395154 (= e!1526439 e!1526442)))

(declare-fun c!381150 () Bool)

(assert (=> b!2395154 (= c!381150 ((_ is Nil!28179) s!9460))))

(declare-fun b!2395155 () Bool)

(declare-fun lt!871489 () Unit!41246)

(declare-fun lt!871490 () Unit!41246)

(assert (=> b!2395155 (= lt!871489 lt!871490)))

(assert (=> b!2395155 (= (++!6973 (++!6973 Nil!28179 (Cons!28179 (h!33580 s!9460) Nil!28179)) (t!208254 s!9460)) s!9460)))

(assert (=> b!2395155 (= lt!871490 (lemmaMoveElementToOtherListKeepsConcatEq!615 Nil!28179 (h!33580 s!9460) (t!208254 s!9460) s!9460))))

(assert (=> b!2395155 (= e!1526442 (findConcatSeparation!670 lt!871430 call!146057 (++!6973 Nil!28179 (Cons!28179 (h!33580 s!9460) Nil!28179)) (t!208254 s!9460) s!9460))))

(declare-fun b!2395156 () Bool)

(declare-fun e!1526441 () Bool)

(assert (=> b!2395156 (= e!1526441 (not (isDefined!4390 lt!871488)))))

(declare-fun b!2395157 () Bool)

(assert (=> b!2395157 (= e!1526440 (= (++!6973 (_1!16492 (get!8626 lt!871488)) (_2!16492 (get!8626 lt!871488))) s!9460))))

(declare-fun d!698848 () Bool)

(assert (=> d!698848 e!1526441))

(declare-fun res!1017644 () Bool)

(assert (=> d!698848 (=> res!1017644 e!1526441)))

(assert (=> d!698848 (= res!1017644 e!1526440)))

(declare-fun res!1017643 () Bool)

(assert (=> d!698848 (=> (not res!1017643) (not e!1526440))))

(assert (=> d!698848 (= res!1017643 (isDefined!4390 lt!871488))))

(assert (=> d!698848 (= lt!871488 e!1526439)))

(declare-fun c!381151 () Bool)

(assert (=> d!698848 (= c!381151 e!1526438)))

(declare-fun res!1017645 () Bool)

(assert (=> d!698848 (=> (not res!1017645) (not e!1526438))))

(assert (=> d!698848 (= res!1017645 (matchR!3136 lt!871430 Nil!28179))))

(assert (=> d!698848 (validRegex!2744 lt!871430)))

(assert (=> d!698848 (= (findConcatSeparation!670 lt!871430 call!146057 Nil!28179 s!9460 s!9460) lt!871488)))

(assert (= (and d!698848 res!1017645) b!2395151))

(assert (= (and d!698848 c!381151) b!2395153))

(assert (= (and d!698848 (not c!381151)) b!2395154))

(assert (= (and b!2395154 c!381150) b!2395149))

(assert (= (and b!2395154 (not c!381150)) b!2395155))

(assert (= (and d!698848 res!1017643) b!2395152))

(assert (= (and b!2395152 res!1017646) b!2395150))

(assert (= (and b!2395150 res!1017647) b!2395157))

(assert (= (and d!698848 (not res!1017644)) b!2395156))

(declare-fun m!2794205 () Bool)

(assert (=> d!698848 m!2794205))

(assert (=> d!698848 m!2794189))

(assert (=> d!698848 m!2794167))

(declare-fun m!2794207 () Bool)

(assert (=> b!2395151 m!2794207))

(declare-fun m!2794209 () Bool)

(assert (=> b!2395152 m!2794209))

(declare-fun m!2794211 () Bool)

(assert (=> b!2395152 m!2794211))

(assert (=> b!2395157 m!2794209))

(declare-fun m!2794213 () Bool)

(assert (=> b!2395157 m!2794213))

(assert (=> b!2395150 m!2794209))

(declare-fun m!2794215 () Bool)

(assert (=> b!2395150 m!2794215))

(assert (=> b!2395155 m!2794129))

(assert (=> b!2395155 m!2794129))

(assert (=> b!2395155 m!2794131))

(assert (=> b!2395155 m!2794133))

(assert (=> b!2395155 m!2794129))

(declare-fun m!2794217 () Bool)

(assert (=> b!2395155 m!2794217))

(assert (=> b!2395156 m!2794205))

(assert (=> b!2394856 d!698848))

(declare-fun b!2395162 () Bool)

(declare-fun e!1526447 () Bool)

(declare-fun lt!871491 () Bool)

(declare-fun call!146080 () Bool)

(assert (=> b!2395162 (= e!1526447 (= lt!871491 call!146080))))

(declare-fun b!2395163 () Bool)

(declare-fun res!1017658 () Bool)

(declare-fun e!1526451 () Bool)

(assert (=> b!2395163 (=> res!1017658 e!1526451)))

(declare-fun e!1526448 () Bool)

(assert (=> b!2395163 (= res!1017658 e!1526448)))

(declare-fun res!1017653 () Bool)

(assert (=> b!2395163 (=> (not res!1017653) (not e!1526448))))

(assert (=> b!2395163 (= res!1017653 lt!871491)))

(declare-fun b!2395165 () Bool)

(declare-fun e!1526445 () Bool)

(assert (=> b!2395165 (= e!1526451 e!1526445)))

(declare-fun res!1017659 () Bool)

(assert (=> b!2395165 (=> (not res!1017659) (not e!1526445))))

(assert (=> b!2395165 (= res!1017659 (not lt!871491))))

(declare-fun bm!146075 () Bool)

(assert (=> bm!146075 (= call!146080 (isEmpty!16165 s!9460))))

(declare-fun b!2395166 () Bool)

(declare-fun res!1017654 () Bool)

(declare-fun e!1526450 () Bool)

(assert (=> b!2395166 (=> res!1017654 e!1526450)))

(assert (=> b!2395166 (= res!1017654 (not (isEmpty!16165 (tail!3541 s!9460))))))

(declare-fun b!2395167 () Bool)

(declare-fun e!1526446 () Bool)

(assert (=> b!2395167 (= e!1526446 (not lt!871491))))

(declare-fun b!2395168 () Bool)

(assert (=> b!2395168 (= e!1526447 e!1526446)))

(declare-fun c!381153 () Bool)

(assert (=> b!2395168 (= c!381153 ((_ is EmptyLang!7019) lt!871430))))

(declare-fun b!2395169 () Bool)

(declare-fun res!1017656 () Bool)

(assert (=> b!2395169 (=> (not res!1017656) (not e!1526448))))

(assert (=> b!2395169 (= res!1017656 (not call!146080))))

(declare-fun b!2395170 () Bool)

(declare-fun e!1526449 () Bool)

(assert (=> b!2395170 (= e!1526449 (nullable!2068 lt!871430))))

(declare-fun b!2395171 () Bool)

(assert (=> b!2395171 (= e!1526448 (= (head!5271 s!9460) (c!381083 lt!871430)))))

(declare-fun d!698850 () Bool)

(assert (=> d!698850 e!1526447))

(declare-fun c!381152 () Bool)

(assert (=> d!698850 (= c!381152 ((_ is EmptyExpr!7019) lt!871430))))

(assert (=> d!698850 (= lt!871491 e!1526449)))

(declare-fun c!381154 () Bool)

(assert (=> d!698850 (= c!381154 (isEmpty!16165 s!9460))))

(assert (=> d!698850 (validRegex!2744 lt!871430)))

(assert (=> d!698850 (= (matchR!3136 lt!871430 s!9460) lt!871491)))

(declare-fun b!2395164 () Bool)

(declare-fun res!1017652 () Bool)

(assert (=> b!2395164 (=> res!1017652 e!1526451)))

(assert (=> b!2395164 (= res!1017652 (not ((_ is ElementMatch!7019) lt!871430)))))

(assert (=> b!2395164 (= e!1526446 e!1526451)))

(declare-fun b!2395172 () Bool)

(assert (=> b!2395172 (= e!1526450 (not (= (head!5271 s!9460) (c!381083 lt!871430))))))

(declare-fun b!2395173 () Bool)

(assert (=> b!2395173 (= e!1526445 e!1526450)))

(declare-fun res!1017655 () Bool)

(assert (=> b!2395173 (=> res!1017655 e!1526450)))

(assert (=> b!2395173 (= res!1017655 call!146080)))

(declare-fun b!2395174 () Bool)

(declare-fun res!1017657 () Bool)

(assert (=> b!2395174 (=> (not res!1017657) (not e!1526448))))

(assert (=> b!2395174 (= res!1017657 (isEmpty!16165 (tail!3541 s!9460)))))

(declare-fun b!2395175 () Bool)

(assert (=> b!2395175 (= e!1526449 (matchR!3136 (derivativeStep!1726 lt!871430 (head!5271 s!9460)) (tail!3541 s!9460)))))

(assert (= (and d!698850 c!381154) b!2395170))

(assert (= (and d!698850 (not c!381154)) b!2395175))

(assert (= (and d!698850 c!381152) b!2395162))

(assert (= (and d!698850 (not c!381152)) b!2395168))

(assert (= (and b!2395168 c!381153) b!2395167))

(assert (= (and b!2395168 (not c!381153)) b!2395164))

(assert (= (and b!2395164 (not res!1017652)) b!2395163))

(assert (= (and b!2395163 res!1017653) b!2395169))

(assert (= (and b!2395169 res!1017656) b!2395174))

(assert (= (and b!2395174 res!1017657) b!2395171))

(assert (= (and b!2395163 (not res!1017658)) b!2395165))

(assert (= (and b!2395165 res!1017659) b!2395173))

(assert (= (and b!2395173 (not res!1017655)) b!2395166))

(assert (= (and b!2395166 (not res!1017654)) b!2395172))

(assert (= (or b!2395162 b!2395169 b!2395173) bm!146075))

(declare-fun m!2794219 () Bool)

(assert (=> b!2395175 m!2794219))

(assert (=> b!2395175 m!2794219))

(declare-fun m!2794221 () Bool)

(assert (=> b!2395175 m!2794221))

(declare-fun m!2794223 () Bool)

(assert (=> b!2395175 m!2794223))

(assert (=> b!2395175 m!2794221))

(assert (=> b!2395175 m!2794223))

(declare-fun m!2794225 () Bool)

(assert (=> b!2395175 m!2794225))

(assert (=> d!698850 m!2793975))

(assert (=> d!698850 m!2794167))

(assert (=> b!2395172 m!2794219))

(assert (=> bm!146075 m!2793975))

(assert (=> b!2395171 m!2794219))

(declare-fun m!2794227 () Bool)

(assert (=> b!2395170 m!2794227))

(assert (=> b!2395166 m!2794223))

(assert (=> b!2395166 m!2794223))

(declare-fun m!2794229 () Bool)

(assert (=> b!2395166 m!2794229))

(assert (=> b!2395174 m!2794223))

(assert (=> b!2395174 m!2794223))

(assert (=> b!2395174 m!2794229))

(assert (=> b!2394856 d!698850))

(declare-fun b!2395190 () Bool)

(declare-fun res!1017669 () Bool)

(declare-fun e!1526458 () Bool)

(assert (=> b!2395190 (=> (not res!1017669) (not e!1526458))))

(declare-fun lt!871495 () List!28277)

(declare-fun size!22194 (List!28277) Int)

(assert (=> b!2395190 (= res!1017669 (= (size!22194 lt!871495) (+ (size!22194 (ite c!381081 s!9460 (_1!16492 lt!871429))) (size!22194 (ite c!381081 Nil!28179 (_2!16492 lt!871429))))))))

(declare-fun d!698852 () Bool)

(assert (=> d!698852 e!1526458))

(declare-fun res!1017668 () Bool)

(assert (=> d!698852 (=> (not res!1017668) (not e!1526458))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3856 (List!28277) (InoxSet C!14196))

(assert (=> d!698852 (= res!1017668 (= (content!3856 lt!871495) ((_ map or) (content!3856 (ite c!381081 s!9460 (_1!16492 lt!871429))) (content!3856 (ite c!381081 Nil!28179 (_2!16492 lt!871429))))))))

(declare-fun e!1526459 () List!28277)

(assert (=> d!698852 (= lt!871495 e!1526459)))

(declare-fun c!381157 () Bool)

(assert (=> d!698852 (= c!381157 ((_ is Nil!28179) (ite c!381081 s!9460 (_1!16492 lt!871429))))))

(assert (=> d!698852 (= (++!6973 (ite c!381081 s!9460 (_1!16492 lt!871429)) (ite c!381081 Nil!28179 (_2!16492 lt!871429))) lt!871495)))

(declare-fun b!2395191 () Bool)

(assert (=> b!2395191 (= e!1526458 (or (not (= (ite c!381081 Nil!28179 (_2!16492 lt!871429)) Nil!28179)) (= lt!871495 (ite c!381081 s!9460 (_1!16492 lt!871429)))))))

(declare-fun b!2395188 () Bool)

(assert (=> b!2395188 (= e!1526459 (ite c!381081 Nil!28179 (_2!16492 lt!871429)))))

(declare-fun b!2395189 () Bool)

(assert (=> b!2395189 (= e!1526459 (Cons!28179 (h!33580 (ite c!381081 s!9460 (_1!16492 lt!871429))) (++!6973 (t!208254 (ite c!381081 s!9460 (_1!16492 lt!871429))) (ite c!381081 Nil!28179 (_2!16492 lt!871429)))))))

(assert (= (and d!698852 c!381157) b!2395188))

(assert (= (and d!698852 (not c!381157)) b!2395189))

(assert (= (and d!698852 res!1017668) b!2395190))

(assert (= (and b!2395190 res!1017669) b!2395191))

(declare-fun m!2794237 () Bool)

(assert (=> b!2395190 m!2794237))

(declare-fun m!2794239 () Bool)

(assert (=> b!2395190 m!2794239))

(declare-fun m!2794241 () Bool)

(assert (=> b!2395190 m!2794241))

(declare-fun m!2794243 () Bool)

(assert (=> d!698852 m!2794243))

(declare-fun m!2794245 () Bool)

(assert (=> d!698852 m!2794245))

(declare-fun m!2794247 () Bool)

(assert (=> d!698852 m!2794247))

(declare-fun m!2794249 () Bool)

(assert (=> b!2395189 m!2794249))

(assert (=> bm!146060 d!698852))

(declare-fun d!698856 () Bool)

(assert (=> d!698856 (matchR!3136 (Concat!11655 lt!871430 EmptyExpr!7019) (++!6973 s!9460 Nil!28179))))

(declare-fun lt!871498 () Unit!41246)

(declare-fun choose!14146 (Regex!7019 Regex!7019 List!28277 List!28277) Unit!41246)

(assert (=> d!698856 (= lt!871498 (choose!14146 lt!871430 EmptyExpr!7019 s!9460 Nil!28179))))

(declare-fun e!1526462 () Bool)

(assert (=> d!698856 e!1526462))

(declare-fun res!1017672 () Bool)

(assert (=> d!698856 (=> (not res!1017672) (not e!1526462))))

(assert (=> d!698856 (= res!1017672 (validRegex!2744 lt!871430))))

(assert (=> d!698856 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!56 lt!871430 EmptyExpr!7019 s!9460 Nil!28179) lt!871498)))

(declare-fun b!2395194 () Bool)

(assert (=> b!2395194 (= e!1526462 (validRegex!2744 EmptyExpr!7019))))

(assert (= (and d!698856 res!1017672) b!2395194))

(declare-fun m!2794251 () Bool)

(assert (=> d!698856 m!2794251))

(assert (=> d!698856 m!2794251))

(declare-fun m!2794253 () Bool)

(assert (=> d!698856 m!2794253))

(declare-fun m!2794255 () Bool)

(assert (=> d!698856 m!2794255))

(assert (=> d!698856 m!2794167))

(declare-fun m!2794257 () Bool)

(assert (=> b!2395194 m!2794257))

(assert (=> b!2394868 d!698856))

(declare-fun b!2395195 () Bool)

(declare-fun e!1526465 () Bool)

(declare-fun lt!871499 () Bool)

(declare-fun call!146081 () Bool)

(assert (=> b!2395195 (= e!1526465 (= lt!871499 call!146081))))

(declare-fun b!2395196 () Bool)

(declare-fun res!1017679 () Bool)

(declare-fun e!1526469 () Bool)

(assert (=> b!2395196 (=> res!1017679 e!1526469)))

(declare-fun e!1526466 () Bool)

(assert (=> b!2395196 (= res!1017679 e!1526466)))

(declare-fun res!1017674 () Bool)

(assert (=> b!2395196 (=> (not res!1017674) (not e!1526466))))

(assert (=> b!2395196 (= res!1017674 lt!871499)))

(declare-fun b!2395198 () Bool)

(declare-fun e!1526463 () Bool)

(assert (=> b!2395198 (= e!1526469 e!1526463)))

(declare-fun res!1017680 () Bool)

(assert (=> b!2395198 (=> (not res!1017680) (not e!1526463))))

(assert (=> b!2395198 (= res!1017680 (not lt!871499))))

(declare-fun bm!146076 () Bool)

(assert (=> bm!146076 (= call!146081 (isEmpty!16165 call!146056))))

(declare-fun b!2395199 () Bool)

(declare-fun res!1017675 () Bool)

(declare-fun e!1526468 () Bool)

(assert (=> b!2395199 (=> res!1017675 e!1526468)))

(assert (=> b!2395199 (= res!1017675 (not (isEmpty!16165 (tail!3541 call!146056))))))

(declare-fun b!2395200 () Bool)

(declare-fun e!1526464 () Bool)

(assert (=> b!2395200 (= e!1526464 (not lt!871499))))

(declare-fun b!2395201 () Bool)

(assert (=> b!2395201 (= e!1526465 e!1526464)))

(declare-fun c!381159 () Bool)

(assert (=> b!2395201 (= c!381159 ((_ is EmptyLang!7019) lt!871443))))

(declare-fun b!2395202 () Bool)

(declare-fun res!1017677 () Bool)

(assert (=> b!2395202 (=> (not res!1017677) (not e!1526466))))

(assert (=> b!2395202 (= res!1017677 (not call!146081))))

(declare-fun b!2395203 () Bool)

(declare-fun e!1526467 () Bool)

(assert (=> b!2395203 (= e!1526467 (nullable!2068 lt!871443))))

(declare-fun b!2395204 () Bool)

(assert (=> b!2395204 (= e!1526466 (= (head!5271 call!146056) (c!381083 lt!871443)))))

(declare-fun d!698858 () Bool)

(assert (=> d!698858 e!1526465))

(declare-fun c!381158 () Bool)

(assert (=> d!698858 (= c!381158 ((_ is EmptyExpr!7019) lt!871443))))

(assert (=> d!698858 (= lt!871499 e!1526467)))

(declare-fun c!381160 () Bool)

(assert (=> d!698858 (= c!381160 (isEmpty!16165 call!146056))))

(assert (=> d!698858 (validRegex!2744 lt!871443)))

(assert (=> d!698858 (= (matchR!3136 lt!871443 call!146056) lt!871499)))

(declare-fun b!2395197 () Bool)

(declare-fun res!1017673 () Bool)

(assert (=> b!2395197 (=> res!1017673 e!1526469)))

(assert (=> b!2395197 (= res!1017673 (not ((_ is ElementMatch!7019) lt!871443)))))

(assert (=> b!2395197 (= e!1526464 e!1526469)))

(declare-fun b!2395205 () Bool)

(assert (=> b!2395205 (= e!1526468 (not (= (head!5271 call!146056) (c!381083 lt!871443))))))

(declare-fun b!2395206 () Bool)

(assert (=> b!2395206 (= e!1526463 e!1526468)))

(declare-fun res!1017676 () Bool)

(assert (=> b!2395206 (=> res!1017676 e!1526468)))

(assert (=> b!2395206 (= res!1017676 call!146081)))

(declare-fun b!2395207 () Bool)

(declare-fun res!1017678 () Bool)

(assert (=> b!2395207 (=> (not res!1017678) (not e!1526466))))

(assert (=> b!2395207 (= res!1017678 (isEmpty!16165 (tail!3541 call!146056)))))

(declare-fun b!2395208 () Bool)

(assert (=> b!2395208 (= e!1526467 (matchR!3136 (derivativeStep!1726 lt!871443 (head!5271 call!146056)) (tail!3541 call!146056)))))

(assert (= (and d!698858 c!381160) b!2395203))

(assert (= (and d!698858 (not c!381160)) b!2395208))

(assert (= (and d!698858 c!381158) b!2395195))

(assert (= (and d!698858 (not c!381158)) b!2395201))

(assert (= (and b!2395201 c!381159) b!2395200))

(assert (= (and b!2395201 (not c!381159)) b!2395197))

(assert (= (and b!2395197 (not res!1017673)) b!2395196))

(assert (= (and b!2395196 res!1017674) b!2395202))

(assert (= (and b!2395202 res!1017677) b!2395207))

(assert (= (and b!2395207 res!1017678) b!2395204))

(assert (= (and b!2395196 (not res!1017679)) b!2395198))

(assert (= (and b!2395198 res!1017680) b!2395206))

(assert (= (and b!2395206 (not res!1017676)) b!2395199))

(assert (= (and b!2395199 (not res!1017675)) b!2395205))

(assert (= (or b!2395195 b!2395202 b!2395206) bm!146076))

(declare-fun m!2794259 () Bool)

(assert (=> b!2395208 m!2794259))

(assert (=> b!2395208 m!2794259))

(declare-fun m!2794261 () Bool)

(assert (=> b!2395208 m!2794261))

(declare-fun m!2794263 () Bool)

(assert (=> b!2395208 m!2794263))

(assert (=> b!2395208 m!2794261))

(assert (=> b!2395208 m!2794263))

(declare-fun m!2794265 () Bool)

(assert (=> b!2395208 m!2794265))

(declare-fun m!2794267 () Bool)

(assert (=> d!698858 m!2794267))

(declare-fun m!2794269 () Bool)

(assert (=> d!698858 m!2794269))

(assert (=> b!2395205 m!2794259))

(assert (=> bm!146076 m!2794267))

(assert (=> b!2395204 m!2794259))

(declare-fun m!2794271 () Bool)

(assert (=> b!2395203 m!2794271))

(assert (=> b!2395199 m!2794263))

(assert (=> b!2395199 m!2794263))

(declare-fun m!2794273 () Bool)

(assert (=> b!2395199 m!2794273))

(assert (=> b!2395207 m!2794263))

(assert (=> b!2395207 m!2794263))

(assert (=> b!2395207 m!2794273))

(assert (=> b!2394868 d!698858))

(declare-fun d!698860 () Bool)

(assert (=> d!698860 (isDefined!4390 (findConcatSeparation!670 lt!871430 EmptyExpr!7019 Nil!28179 s!9460 s!9460))))

(declare-fun lt!871508 () Unit!41246)

(declare-fun choose!14147 (Regex!7019 Regex!7019 List!28277) Unit!41246)

(assert (=> d!698860 (= lt!871508 (choose!14147 lt!871430 EmptyExpr!7019 s!9460))))

(assert (=> d!698860 (validRegex!2744 lt!871430)))

(assert (=> d!698860 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!38 lt!871430 EmptyExpr!7019 s!9460) lt!871508)))

(declare-fun bs!462824 () Bool)

(assert (= bs!462824 d!698860))

(declare-fun m!2794275 () Bool)

(assert (=> bs!462824 m!2794275))

(assert (=> bs!462824 m!2794275))

(declare-fun m!2794277 () Bool)

(assert (=> bs!462824 m!2794277))

(declare-fun m!2794279 () Bool)

(assert (=> bs!462824 m!2794279))

(assert (=> bs!462824 m!2794167))

(assert (=> b!2394868 d!698860))

(declare-fun bs!462828 () Bool)

(declare-fun b!2395291 () Bool)

(assert (= bs!462828 (and b!2395291 b!2394861)))

(declare-fun lambda!89870 () Int)

(assert (=> bs!462828 (not (= lambda!89870 lambda!89844))))

(assert (=> bs!462828 (not (= lambda!89870 lambda!89845))))

(assert (=> b!2395291 true))

(assert (=> b!2395291 true))

(declare-fun bs!462830 () Bool)

(declare-fun b!2395295 () Bool)

(assert (= bs!462830 (and b!2395295 b!2394861)))

(declare-fun lambda!89871 () Int)

(assert (=> bs!462830 (not (= lambda!89871 lambda!89844))))

(assert (=> bs!462830 (= lambda!89871 lambda!89845)))

(declare-fun bs!462831 () Bool)

(assert (= bs!462831 (and b!2395295 b!2395291)))

(assert (=> bs!462831 (not (= lambda!89871 lambda!89870))))

(assert (=> b!2395295 true))

(assert (=> b!2395295 true))

(declare-fun b!2395285 () Bool)

(declare-fun e!1526513 () Bool)

(declare-fun e!1526516 () Bool)

(assert (=> b!2395285 (= e!1526513 e!1526516)))

(declare-fun c!381180 () Bool)

(assert (=> b!2395285 (= c!381180 ((_ is Star!7019) r!13927))))

(declare-fun b!2395286 () Bool)

(declare-fun c!381179 () Bool)

(assert (=> b!2395286 (= c!381179 ((_ is ElementMatch!7019) r!13927))))

(declare-fun e!1526519 () Bool)

(declare-fun e!1526514 () Bool)

(assert (=> b!2395286 (= e!1526519 e!1526514)))

(declare-fun bm!146082 () Bool)

(declare-fun call!146087 () Bool)

(assert (=> bm!146082 (= call!146087 (isEmpty!16165 s!9460))))

(declare-fun b!2395287 () Bool)

(assert (=> b!2395287 (= e!1526514 (= s!9460 (Cons!28179 (c!381083 r!13927) Nil!28179)))))

(declare-fun d!698862 () Bool)

(declare-fun c!381181 () Bool)

(assert (=> d!698862 (= c!381181 ((_ is EmptyExpr!7019) r!13927))))

(declare-fun e!1526518 () Bool)

(assert (=> d!698862 (= (matchRSpec!868 r!13927 s!9460) e!1526518)))

(declare-fun b!2395288 () Bool)

(declare-fun e!1526517 () Bool)

(assert (=> b!2395288 (= e!1526517 (matchRSpec!868 (regTwo!14551 r!13927) s!9460))))

(declare-fun bm!146083 () Bool)

(declare-fun call!146088 () Bool)

(assert (=> bm!146083 (= call!146088 (Exists!1081 (ite c!381180 lambda!89870 lambda!89871)))))

(declare-fun b!2395289 () Bool)

(assert (=> b!2395289 (= e!1526518 e!1526519)))

(declare-fun res!1017725 () Bool)

(assert (=> b!2395289 (= res!1017725 (not ((_ is EmptyLang!7019) r!13927)))))

(assert (=> b!2395289 (=> (not res!1017725) (not e!1526519))))

(declare-fun b!2395290 () Bool)

(assert (=> b!2395290 (= e!1526513 e!1526517)))

(declare-fun res!1017724 () Bool)

(assert (=> b!2395290 (= res!1017724 (matchRSpec!868 (regOne!14551 r!13927) s!9460))))

(assert (=> b!2395290 (=> res!1017724 e!1526517)))

(declare-fun e!1526515 () Bool)

(assert (=> b!2395291 (= e!1526515 call!146088)))

(declare-fun b!2395292 () Bool)

(assert (=> b!2395292 (= e!1526518 call!146087)))

(declare-fun b!2395293 () Bool)

(declare-fun res!1017723 () Bool)

(assert (=> b!2395293 (=> res!1017723 e!1526515)))

(assert (=> b!2395293 (= res!1017723 call!146087)))

(assert (=> b!2395293 (= e!1526516 e!1526515)))

(declare-fun b!2395294 () Bool)

(declare-fun c!381178 () Bool)

(assert (=> b!2395294 (= c!381178 ((_ is Union!7019) r!13927))))

(assert (=> b!2395294 (= e!1526514 e!1526513)))

(assert (=> b!2395295 (= e!1526516 call!146088)))

(assert (= (and d!698862 c!381181) b!2395292))

(assert (= (and d!698862 (not c!381181)) b!2395289))

(assert (= (and b!2395289 res!1017725) b!2395286))

(assert (= (and b!2395286 c!381179) b!2395287))

(assert (= (and b!2395286 (not c!381179)) b!2395294))

(assert (= (and b!2395294 c!381178) b!2395290))

(assert (= (and b!2395294 (not c!381178)) b!2395285))

(assert (= (and b!2395290 (not res!1017724)) b!2395288))

(assert (= (and b!2395285 c!381180) b!2395293))

(assert (= (and b!2395285 (not c!381180)) b!2395295))

(assert (= (and b!2395293 (not res!1017723)) b!2395291))

(assert (= (or b!2395291 b!2395295) bm!146083))

(assert (= (or b!2395292 b!2395293) bm!146082))

(assert (=> bm!146082 m!2793975))

(declare-fun m!2794341 () Bool)

(assert (=> b!2395288 m!2794341))

(declare-fun m!2794343 () Bool)

(assert (=> bm!146083 m!2794343))

(declare-fun m!2794345 () Bool)

(assert (=> b!2395290 m!2794345))

(assert (=> b!2394859 d!698862))

(declare-fun b!2395296 () Bool)

(declare-fun e!1526522 () Bool)

(declare-fun lt!871519 () Bool)

(declare-fun call!146089 () Bool)

(assert (=> b!2395296 (= e!1526522 (= lt!871519 call!146089))))

(declare-fun b!2395297 () Bool)

(declare-fun res!1017732 () Bool)

(declare-fun e!1526526 () Bool)

(assert (=> b!2395297 (=> res!1017732 e!1526526)))

(declare-fun e!1526523 () Bool)

(assert (=> b!2395297 (= res!1017732 e!1526523)))

(declare-fun res!1017727 () Bool)

(assert (=> b!2395297 (=> (not res!1017727) (not e!1526523))))

(assert (=> b!2395297 (= res!1017727 lt!871519)))

(declare-fun b!2395299 () Bool)

(declare-fun e!1526520 () Bool)

(assert (=> b!2395299 (= e!1526526 e!1526520)))

(declare-fun res!1017733 () Bool)

(assert (=> b!2395299 (=> (not res!1017733) (not e!1526520))))

(assert (=> b!2395299 (= res!1017733 (not lt!871519))))

(declare-fun bm!146084 () Bool)

(assert (=> bm!146084 (= call!146089 (isEmpty!16165 s!9460))))

(declare-fun b!2395300 () Bool)

(declare-fun res!1017728 () Bool)

(declare-fun e!1526525 () Bool)

(assert (=> b!2395300 (=> res!1017728 e!1526525)))

(assert (=> b!2395300 (= res!1017728 (not (isEmpty!16165 (tail!3541 s!9460))))))

(declare-fun b!2395301 () Bool)

(declare-fun e!1526521 () Bool)

(assert (=> b!2395301 (= e!1526521 (not lt!871519))))

(declare-fun b!2395302 () Bool)

(assert (=> b!2395302 (= e!1526522 e!1526521)))

(declare-fun c!381183 () Bool)

(assert (=> b!2395302 (= c!381183 ((_ is EmptyLang!7019) r!13927))))

(declare-fun b!2395303 () Bool)

(declare-fun res!1017730 () Bool)

(assert (=> b!2395303 (=> (not res!1017730) (not e!1526523))))

(assert (=> b!2395303 (= res!1017730 (not call!146089))))

(declare-fun b!2395304 () Bool)

(declare-fun e!1526524 () Bool)

(assert (=> b!2395304 (= e!1526524 (nullable!2068 r!13927))))

(declare-fun b!2395305 () Bool)

(assert (=> b!2395305 (= e!1526523 (= (head!5271 s!9460) (c!381083 r!13927)))))

(declare-fun d!698878 () Bool)

(assert (=> d!698878 e!1526522))

(declare-fun c!381182 () Bool)

(assert (=> d!698878 (= c!381182 ((_ is EmptyExpr!7019) r!13927))))

(assert (=> d!698878 (= lt!871519 e!1526524)))

(declare-fun c!381184 () Bool)

(assert (=> d!698878 (= c!381184 (isEmpty!16165 s!9460))))

(assert (=> d!698878 (validRegex!2744 r!13927)))

(assert (=> d!698878 (= (matchR!3136 r!13927 s!9460) lt!871519)))

(declare-fun b!2395298 () Bool)

(declare-fun res!1017726 () Bool)

(assert (=> b!2395298 (=> res!1017726 e!1526526)))

(assert (=> b!2395298 (= res!1017726 (not ((_ is ElementMatch!7019) r!13927)))))

(assert (=> b!2395298 (= e!1526521 e!1526526)))

(declare-fun b!2395306 () Bool)

(assert (=> b!2395306 (= e!1526525 (not (= (head!5271 s!9460) (c!381083 r!13927))))))

(declare-fun b!2395307 () Bool)

(assert (=> b!2395307 (= e!1526520 e!1526525)))

(declare-fun res!1017729 () Bool)

(assert (=> b!2395307 (=> res!1017729 e!1526525)))

(assert (=> b!2395307 (= res!1017729 call!146089)))

(declare-fun b!2395308 () Bool)

(declare-fun res!1017731 () Bool)

(assert (=> b!2395308 (=> (not res!1017731) (not e!1526523))))

(assert (=> b!2395308 (= res!1017731 (isEmpty!16165 (tail!3541 s!9460)))))

(declare-fun b!2395309 () Bool)

(assert (=> b!2395309 (= e!1526524 (matchR!3136 (derivativeStep!1726 r!13927 (head!5271 s!9460)) (tail!3541 s!9460)))))

(assert (= (and d!698878 c!381184) b!2395304))

(assert (= (and d!698878 (not c!381184)) b!2395309))

(assert (= (and d!698878 c!381182) b!2395296))

(assert (= (and d!698878 (not c!381182)) b!2395302))

(assert (= (and b!2395302 c!381183) b!2395301))

(assert (= (and b!2395302 (not c!381183)) b!2395298))

(assert (= (and b!2395298 (not res!1017726)) b!2395297))

(assert (= (and b!2395297 res!1017727) b!2395303))

(assert (= (and b!2395303 res!1017730) b!2395308))

(assert (= (and b!2395308 res!1017731) b!2395305))

(assert (= (and b!2395297 (not res!1017732)) b!2395299))

(assert (= (and b!2395299 res!1017733) b!2395307))

(assert (= (and b!2395307 (not res!1017729)) b!2395300))

(assert (= (and b!2395300 (not res!1017728)) b!2395306))

(assert (= (or b!2395296 b!2395303 b!2395307) bm!146084))

(assert (=> b!2395309 m!2794219))

(assert (=> b!2395309 m!2794219))

(declare-fun m!2794347 () Bool)

(assert (=> b!2395309 m!2794347))

(assert (=> b!2395309 m!2794223))

(assert (=> b!2395309 m!2794347))

(assert (=> b!2395309 m!2794223))

(declare-fun m!2794349 () Bool)

(assert (=> b!2395309 m!2794349))

(assert (=> d!698878 m!2793975))

(declare-fun m!2794351 () Bool)

(assert (=> d!698878 m!2794351))

(assert (=> b!2395306 m!2794219))

(assert (=> bm!146084 m!2793975))

(assert (=> b!2395305 m!2794219))

(declare-fun m!2794353 () Bool)

(assert (=> b!2395304 m!2794353))

(assert (=> b!2395300 m!2794223))

(assert (=> b!2395300 m!2794223))

(assert (=> b!2395300 m!2794229))

(assert (=> b!2395308 m!2794223))

(assert (=> b!2395308 m!2794223))

(assert (=> b!2395308 m!2794229))

(assert (=> b!2394859 d!698878))

(declare-fun d!698880 () Bool)

(assert (=> d!698880 (= (matchR!3136 r!13927 s!9460) (matchRSpec!868 r!13927 s!9460))))

(declare-fun lt!871524 () Unit!41246)

(declare-fun choose!14149 (Regex!7019 List!28277) Unit!41246)

(assert (=> d!698880 (= lt!871524 (choose!14149 r!13927 s!9460))))

(assert (=> d!698880 (validRegex!2744 r!13927)))

(assert (=> d!698880 (= (mainMatchTheorem!868 r!13927 s!9460) lt!871524)))

(declare-fun bs!462832 () Bool)

(assert (= bs!462832 d!698880))

(assert (=> bs!462832 m!2793991))

(assert (=> bs!462832 m!2793989))

(declare-fun m!2794355 () Bool)

(assert (=> bs!462832 m!2794355))

(assert (=> bs!462832 m!2794351))

(assert (=> b!2394859 d!698880))

(declare-fun d!698882 () Bool)

(assert (=> d!698882 (= (isDefined!4390 (findConcatSeparation!670 (regOne!14550 r!13927) (regTwo!14550 r!13927) Nil!28179 s!9460 s!9460)) (not (isEmpty!16167 (findConcatSeparation!670 (regOne!14550 r!13927) (regTwo!14550 r!13927) Nil!28179 s!9460 s!9460))))))

(declare-fun bs!462833 () Bool)

(assert (= bs!462833 d!698882))

(assert (=> bs!462833 m!2793947))

(declare-fun m!2794357 () Bool)

(assert (=> bs!462833 m!2794357))

(assert (=> b!2394861 d!698882))

(declare-fun d!698884 () Bool)

(declare-fun choose!14150 (Int) Bool)

(assert (=> d!698884 (= (Exists!1081 lambda!89845) (choose!14150 lambda!89845))))

(declare-fun bs!462834 () Bool)

(assert (= bs!462834 d!698884))

(declare-fun m!2794359 () Bool)

(assert (=> bs!462834 m!2794359))

(assert (=> b!2394861 d!698884))

(declare-fun bs!462839 () Bool)

(declare-fun d!698886 () Bool)

(assert (= bs!462839 (and d!698886 b!2394861)))

(declare-fun lambda!89878 () Int)

(assert (=> bs!462839 (= lambda!89878 lambda!89844)))

(assert (=> bs!462839 (not (= lambda!89878 lambda!89845))))

(declare-fun bs!462840 () Bool)

(assert (= bs!462840 (and d!698886 b!2395291)))

(assert (=> bs!462840 (not (= lambda!89878 lambda!89870))))

(declare-fun bs!462841 () Bool)

(assert (= bs!462841 (and d!698886 b!2395295)))

(assert (=> bs!462841 (not (= lambda!89878 lambda!89871))))

(assert (=> d!698886 true))

(assert (=> d!698886 true))

(assert (=> d!698886 true))

(assert (=> d!698886 (= (isDefined!4390 (findConcatSeparation!670 (regOne!14550 r!13927) (regTwo!14550 r!13927) Nil!28179 s!9460 s!9460)) (Exists!1081 lambda!89878))))

(declare-fun lt!871536 () Unit!41246)

(declare-fun choose!14151 (Regex!7019 Regex!7019 List!28277) Unit!41246)

(assert (=> d!698886 (= lt!871536 (choose!14151 (regOne!14550 r!13927) (regTwo!14550 r!13927) s!9460))))

(assert (=> d!698886 (validRegex!2744 (regOne!14550 r!13927))))

(assert (=> d!698886 (= (lemmaFindConcatSeparationEquivalentToExists!670 (regOne!14550 r!13927) (regTwo!14550 r!13927) s!9460) lt!871536)))

(declare-fun bs!462842 () Bool)

(assert (= bs!462842 d!698886))

(assert (=> bs!462842 m!2793947))

(assert (=> bs!462842 m!2793949))

(declare-fun m!2794431 () Bool)

(assert (=> bs!462842 m!2794431))

(assert (=> bs!462842 m!2793947))

(declare-fun m!2794433 () Bool)

(assert (=> bs!462842 m!2794433))

(declare-fun m!2794435 () Bool)

(assert (=> bs!462842 m!2794435))

(assert (=> b!2394861 d!698886))

(declare-fun bs!462848 () Bool)

(declare-fun d!698904 () Bool)

(assert (= bs!462848 (and d!698904 b!2395295)))

(declare-fun lambda!89884 () Int)

(assert (=> bs!462848 (not (= lambda!89884 lambda!89871))))

(declare-fun bs!462849 () Bool)

(assert (= bs!462849 (and d!698904 b!2394861)))

(assert (=> bs!462849 (= lambda!89884 lambda!89844)))

(assert (=> bs!462849 (not (= lambda!89884 lambda!89845))))

(declare-fun bs!462850 () Bool)

(assert (= bs!462850 (and d!698904 b!2395291)))

(assert (=> bs!462850 (not (= lambda!89884 lambda!89870))))

(declare-fun bs!462851 () Bool)

(assert (= bs!462851 (and d!698904 d!698886)))

(assert (=> bs!462851 (= lambda!89884 lambda!89878)))

(assert (=> d!698904 true))

(assert (=> d!698904 true))

(assert (=> d!698904 true))

(declare-fun lambda!89885 () Int)

(assert (=> bs!462848 (= lambda!89885 lambda!89871)))

(assert (=> bs!462849 (not (= lambda!89885 lambda!89844))))

(declare-fun bs!462852 () Bool)

(assert (= bs!462852 d!698904))

(assert (=> bs!462852 (not (= lambda!89885 lambda!89884))))

(assert (=> bs!462849 (= lambda!89885 lambda!89845)))

(assert (=> bs!462850 (not (= lambda!89885 lambda!89870))))

(assert (=> bs!462851 (not (= lambda!89885 lambda!89878))))

(assert (=> d!698904 true))

(assert (=> d!698904 true))

(assert (=> d!698904 true))

(assert (=> d!698904 (= (Exists!1081 lambda!89884) (Exists!1081 lambda!89885))))

(declare-fun lt!871549 () Unit!41246)

(declare-fun choose!14152 (Regex!7019 Regex!7019 List!28277) Unit!41246)

(assert (=> d!698904 (= lt!871549 (choose!14152 (regOne!14550 r!13927) (regTwo!14550 r!13927) s!9460))))

(assert (=> d!698904 (validRegex!2744 (regOne!14550 r!13927))))

(assert (=> d!698904 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!420 (regOne!14550 r!13927) (regTwo!14550 r!13927) s!9460) lt!871549)))

(declare-fun m!2794501 () Bool)

(assert (=> bs!462852 m!2794501))

(declare-fun m!2794503 () Bool)

(assert (=> bs!462852 m!2794503))

(declare-fun m!2794505 () Bool)

(assert (=> bs!462852 m!2794505))

(assert (=> bs!462852 m!2794433))

(assert (=> b!2394861 d!698904))

(declare-fun b!2395468 () Bool)

(declare-fun e!1526610 () Option!5562)

(assert (=> b!2395468 (= e!1526610 None!5561)))

(declare-fun b!2395469 () Bool)

(declare-fun res!1017790 () Bool)

(declare-fun e!1526608 () Bool)

(assert (=> b!2395469 (=> (not res!1017790) (not e!1526608))))

(declare-fun lt!871550 () Option!5562)

(assert (=> b!2395469 (= res!1017790 (matchR!3136 (regTwo!14550 r!13927) (_2!16492 (get!8626 lt!871550))))))

(declare-fun b!2395470 () Bool)

(declare-fun e!1526606 () Bool)

(assert (=> b!2395470 (= e!1526606 (matchR!3136 (regTwo!14550 r!13927) s!9460))))

(declare-fun b!2395471 () Bool)

(declare-fun res!1017789 () Bool)

(assert (=> b!2395471 (=> (not res!1017789) (not e!1526608))))

(assert (=> b!2395471 (= res!1017789 (matchR!3136 (regOne!14550 r!13927) (_1!16492 (get!8626 lt!871550))))))

(declare-fun b!2395472 () Bool)

(declare-fun e!1526607 () Option!5562)

(assert (=> b!2395472 (= e!1526607 (Some!5561 (tuple2!27903 Nil!28179 s!9460)))))

(declare-fun b!2395473 () Bool)

(assert (=> b!2395473 (= e!1526607 e!1526610)))

(declare-fun c!381216 () Bool)

(assert (=> b!2395473 (= c!381216 ((_ is Nil!28179) s!9460))))

(declare-fun b!2395474 () Bool)

(declare-fun lt!871551 () Unit!41246)

(declare-fun lt!871552 () Unit!41246)

(assert (=> b!2395474 (= lt!871551 lt!871552)))

(assert (=> b!2395474 (= (++!6973 (++!6973 Nil!28179 (Cons!28179 (h!33580 s!9460) Nil!28179)) (t!208254 s!9460)) s!9460)))

(assert (=> b!2395474 (= lt!871552 (lemmaMoveElementToOtherListKeepsConcatEq!615 Nil!28179 (h!33580 s!9460) (t!208254 s!9460) s!9460))))

(assert (=> b!2395474 (= e!1526610 (findConcatSeparation!670 (regOne!14550 r!13927) (regTwo!14550 r!13927) (++!6973 Nil!28179 (Cons!28179 (h!33580 s!9460) Nil!28179)) (t!208254 s!9460) s!9460))))

(declare-fun b!2395475 () Bool)

(declare-fun e!1526609 () Bool)

(assert (=> b!2395475 (= e!1526609 (not (isDefined!4390 lt!871550)))))

(declare-fun b!2395476 () Bool)

(assert (=> b!2395476 (= e!1526608 (= (++!6973 (_1!16492 (get!8626 lt!871550)) (_2!16492 (get!8626 lt!871550))) s!9460))))

(declare-fun d!698920 () Bool)

(assert (=> d!698920 e!1526609))

(declare-fun res!1017787 () Bool)

(assert (=> d!698920 (=> res!1017787 e!1526609)))

(assert (=> d!698920 (= res!1017787 e!1526608)))

(declare-fun res!1017786 () Bool)

(assert (=> d!698920 (=> (not res!1017786) (not e!1526608))))

(assert (=> d!698920 (= res!1017786 (isDefined!4390 lt!871550))))

(assert (=> d!698920 (= lt!871550 e!1526607)))

(declare-fun c!381217 () Bool)

(assert (=> d!698920 (= c!381217 e!1526606)))

(declare-fun res!1017788 () Bool)

(assert (=> d!698920 (=> (not res!1017788) (not e!1526606))))

(assert (=> d!698920 (= res!1017788 (matchR!3136 (regOne!14550 r!13927) Nil!28179))))

(assert (=> d!698920 (validRegex!2744 (regOne!14550 r!13927))))

(assert (=> d!698920 (= (findConcatSeparation!670 (regOne!14550 r!13927) (regTwo!14550 r!13927) Nil!28179 s!9460 s!9460) lt!871550)))

(assert (= (and d!698920 res!1017788) b!2395470))

(assert (= (and d!698920 c!381217) b!2395472))

(assert (= (and d!698920 (not c!381217)) b!2395473))

(assert (= (and b!2395473 c!381216) b!2395468))

(assert (= (and b!2395473 (not c!381216)) b!2395474))

(assert (= (and d!698920 res!1017786) b!2395471))

(assert (= (and b!2395471 res!1017789) b!2395469))

(assert (= (and b!2395469 res!1017790) b!2395476))

(assert (= (and d!698920 (not res!1017787)) b!2395475))

(declare-fun m!2794507 () Bool)

(assert (=> d!698920 m!2794507))

(declare-fun m!2794509 () Bool)

(assert (=> d!698920 m!2794509))

(assert (=> d!698920 m!2794433))

(declare-fun m!2794511 () Bool)

(assert (=> b!2395470 m!2794511))

(declare-fun m!2794513 () Bool)

(assert (=> b!2395471 m!2794513))

(declare-fun m!2794515 () Bool)

(assert (=> b!2395471 m!2794515))

(assert (=> b!2395476 m!2794513))

(declare-fun m!2794517 () Bool)

(assert (=> b!2395476 m!2794517))

(assert (=> b!2395469 m!2794513))

(declare-fun m!2794519 () Bool)

(assert (=> b!2395469 m!2794519))

(assert (=> b!2395474 m!2794129))

(assert (=> b!2395474 m!2794129))

(assert (=> b!2395474 m!2794131))

(assert (=> b!2395474 m!2794133))

(assert (=> b!2395474 m!2794129))

(declare-fun m!2794521 () Bool)

(assert (=> b!2395474 m!2794521))

(assert (=> b!2395475 m!2794507))

(assert (=> b!2394861 d!698920))

(declare-fun d!698922 () Bool)

(assert (=> d!698922 (= (Exists!1081 lambda!89844) (choose!14150 lambda!89844))))

(declare-fun bs!462855 () Bool)

(assert (= bs!462855 d!698922))

(declare-fun m!2794523 () Bool)

(assert (=> bs!462855 m!2794523))

(assert (=> b!2394861 d!698922))

(declare-fun d!698924 () Bool)

(assert (=> d!698924 (= (isDefined!4390 call!146066) (not (isEmpty!16167 call!146066)))))

(declare-fun bs!462856 () Bool)

(assert (= bs!462856 d!698924))

(declare-fun m!2794525 () Bool)

(assert (=> bs!462856 m!2794525))

(assert (=> bm!146058 d!698924))

(declare-fun b!2395489 () Bool)

(declare-fun e!1526613 () Bool)

(declare-fun tp!762885 () Bool)

(assert (=> b!2395489 (= e!1526613 tp!762885)))

(assert (=> b!2394853 (= tp!762818 e!1526613)))

(declare-fun b!2395487 () Bool)

(assert (=> b!2395487 (= e!1526613 tp_is_empty!11451)))

(declare-fun b!2395490 () Bool)

(declare-fun tp!762886 () Bool)

(declare-fun tp!762887 () Bool)

(assert (=> b!2395490 (= e!1526613 (and tp!762886 tp!762887))))

(declare-fun b!2395488 () Bool)

(declare-fun tp!762889 () Bool)

(declare-fun tp!762888 () Bool)

(assert (=> b!2395488 (= e!1526613 (and tp!762889 tp!762888))))

(assert (= (and b!2394853 ((_ is ElementMatch!7019) (h!33579 l!9164))) b!2395487))

(assert (= (and b!2394853 ((_ is Concat!11655) (h!33579 l!9164))) b!2395488))

(assert (= (and b!2394853 ((_ is Star!7019) (h!33579 l!9164))) b!2395489))

(assert (= (and b!2394853 ((_ is Union!7019) (h!33579 l!9164))) b!2395490))

(declare-fun b!2395495 () Bool)

(declare-fun e!1526616 () Bool)

(declare-fun tp!762894 () Bool)

(declare-fun tp!762895 () Bool)

(assert (=> b!2395495 (= e!1526616 (and tp!762894 tp!762895))))

(assert (=> b!2394853 (= tp!762820 e!1526616)))

(assert (= (and b!2394853 ((_ is Cons!28178) (t!208253 l!9164))) b!2395495))

(declare-fun b!2395498 () Bool)

(declare-fun e!1526617 () Bool)

(declare-fun tp!762896 () Bool)

(assert (=> b!2395498 (= e!1526617 tp!762896)))

(assert (=> b!2394862 (= tp!762822 e!1526617)))

(declare-fun b!2395496 () Bool)

(assert (=> b!2395496 (= e!1526617 tp_is_empty!11451)))

(declare-fun b!2395499 () Bool)

(declare-fun tp!762897 () Bool)

(declare-fun tp!762898 () Bool)

(assert (=> b!2395499 (= e!1526617 (and tp!762897 tp!762898))))

(declare-fun b!2395497 () Bool)

(declare-fun tp!762900 () Bool)

(declare-fun tp!762899 () Bool)

(assert (=> b!2395497 (= e!1526617 (and tp!762900 tp!762899))))

(assert (= (and b!2394862 ((_ is ElementMatch!7019) (reg!7348 r!13927))) b!2395496))

(assert (= (and b!2394862 ((_ is Concat!11655) (reg!7348 r!13927))) b!2395497))

(assert (= (and b!2394862 ((_ is Star!7019) (reg!7348 r!13927))) b!2395498))

(assert (= (and b!2394862 ((_ is Union!7019) (reg!7348 r!13927))) b!2395499))

(declare-fun b!2395502 () Bool)

(declare-fun e!1526618 () Bool)

(declare-fun tp!762901 () Bool)

(assert (=> b!2395502 (= e!1526618 tp!762901)))

(assert (=> b!2394866 (= tp!762823 e!1526618)))

(declare-fun b!2395500 () Bool)

(assert (=> b!2395500 (= e!1526618 tp_is_empty!11451)))

(declare-fun b!2395503 () Bool)

(declare-fun tp!762902 () Bool)

(declare-fun tp!762903 () Bool)

(assert (=> b!2395503 (= e!1526618 (and tp!762902 tp!762903))))

(declare-fun b!2395501 () Bool)

(declare-fun tp!762905 () Bool)

(declare-fun tp!762904 () Bool)

(assert (=> b!2395501 (= e!1526618 (and tp!762905 tp!762904))))

(assert (= (and b!2394866 ((_ is ElementMatch!7019) (regOne!14550 r!13927))) b!2395500))

(assert (= (and b!2394866 ((_ is Concat!11655) (regOne!14550 r!13927))) b!2395501))

(assert (= (and b!2394866 ((_ is Star!7019) (regOne!14550 r!13927))) b!2395502))

(assert (= (and b!2394866 ((_ is Union!7019) (regOne!14550 r!13927))) b!2395503))

(declare-fun b!2395506 () Bool)

(declare-fun e!1526619 () Bool)

(declare-fun tp!762906 () Bool)

(assert (=> b!2395506 (= e!1526619 tp!762906)))

(assert (=> b!2394866 (= tp!762821 e!1526619)))

(declare-fun b!2395504 () Bool)

(assert (=> b!2395504 (= e!1526619 tp_is_empty!11451)))

(declare-fun b!2395507 () Bool)

(declare-fun tp!762907 () Bool)

(declare-fun tp!762908 () Bool)

(assert (=> b!2395507 (= e!1526619 (and tp!762907 tp!762908))))

(declare-fun b!2395505 () Bool)

(declare-fun tp!762910 () Bool)

(declare-fun tp!762909 () Bool)

(assert (=> b!2395505 (= e!1526619 (and tp!762910 tp!762909))))

(assert (= (and b!2394866 ((_ is ElementMatch!7019) (regTwo!14550 r!13927))) b!2395504))

(assert (= (and b!2394866 ((_ is Concat!11655) (regTwo!14550 r!13927))) b!2395505))

(assert (= (and b!2394866 ((_ is Star!7019) (regTwo!14550 r!13927))) b!2395506))

(assert (= (and b!2394866 ((_ is Union!7019) (regTwo!14550 r!13927))) b!2395507))

(declare-fun b!2395510 () Bool)

(declare-fun e!1526620 () Bool)

(declare-fun tp!762911 () Bool)

(assert (=> b!2395510 (= e!1526620 tp!762911)))

(assert (=> b!2394858 (= tp!762819 e!1526620)))

(declare-fun b!2395508 () Bool)

(assert (=> b!2395508 (= e!1526620 tp_is_empty!11451)))

(declare-fun b!2395511 () Bool)

(declare-fun tp!762912 () Bool)

(declare-fun tp!762913 () Bool)

(assert (=> b!2395511 (= e!1526620 (and tp!762912 tp!762913))))

(declare-fun b!2395509 () Bool)

(declare-fun tp!762915 () Bool)

(declare-fun tp!762914 () Bool)

(assert (=> b!2395509 (= e!1526620 (and tp!762915 tp!762914))))

(assert (= (and b!2394858 ((_ is ElementMatch!7019) (regOne!14551 r!13927))) b!2395508))

(assert (= (and b!2394858 ((_ is Concat!11655) (regOne!14551 r!13927))) b!2395509))

(assert (= (and b!2394858 ((_ is Star!7019) (regOne!14551 r!13927))) b!2395510))

(assert (= (and b!2394858 ((_ is Union!7019) (regOne!14551 r!13927))) b!2395511))

(declare-fun b!2395514 () Bool)

(declare-fun e!1526621 () Bool)

(declare-fun tp!762916 () Bool)

(assert (=> b!2395514 (= e!1526621 tp!762916)))

(assert (=> b!2394858 (= tp!762824 e!1526621)))

(declare-fun b!2395512 () Bool)

(assert (=> b!2395512 (= e!1526621 tp_is_empty!11451)))

(declare-fun b!2395515 () Bool)

(declare-fun tp!762917 () Bool)

(declare-fun tp!762918 () Bool)

(assert (=> b!2395515 (= e!1526621 (and tp!762917 tp!762918))))

(declare-fun b!2395513 () Bool)

(declare-fun tp!762920 () Bool)

(declare-fun tp!762919 () Bool)

(assert (=> b!2395513 (= e!1526621 (and tp!762920 tp!762919))))

(assert (= (and b!2394858 ((_ is ElementMatch!7019) (regTwo!14551 r!13927))) b!2395512))

(assert (= (and b!2394858 ((_ is Concat!11655) (regTwo!14551 r!13927))) b!2395513))

(assert (= (and b!2394858 ((_ is Star!7019) (regTwo!14551 r!13927))) b!2395514))

(assert (= (and b!2394858 ((_ is Union!7019) (regTwo!14551 r!13927))) b!2395515))

(declare-fun b!2395520 () Bool)

(declare-fun e!1526624 () Bool)

(declare-fun tp!762923 () Bool)

(assert (=> b!2395520 (= e!1526624 (and tp_is_empty!11451 tp!762923))))

(assert (=> b!2394863 (= tp!762825 e!1526624)))

(assert (= (and b!2394863 ((_ is Cons!28179) (t!208254 s!9460))) b!2395520))

(declare-fun b_lambda!74247 () Bool)

(assert (= b_lambda!74239 (or start!234988 b_lambda!74247)))

(declare-fun bs!462857 () Bool)

(declare-fun d!698926 () Bool)

(assert (= bs!462857 (and d!698926 start!234988)))

(assert (=> bs!462857 (= (dynLambda!12134 lambda!89843 (h!33579 (t!208253 l!9164))) (validRegex!2744 (h!33579 (t!208253 l!9164))))))

(declare-fun m!2794527 () Bool)

(assert (=> bs!462857 m!2794527))

(assert (=> b!2395041 d!698926))

(declare-fun b_lambda!74249 () Bool)

(assert (= b_lambda!74237 (or start!234988 b_lambda!74249)))

(declare-fun bs!462858 () Bool)

(declare-fun d!698928 () Bool)

(assert (= bs!462858 (and d!698928 start!234988)))

(assert (=> bs!462858 (= (dynLambda!12134 lambda!89843 (h!33579 l!9164)) (validRegex!2744 (h!33579 l!9164)))))

(assert (=> bs!462858 m!2794117))

(assert (=> b!2394893 d!698928))

(check-sat (not d!698844) (not b!2395116) (not b!2395488) (not b!2395156) (not b!2395124) (not b!2395498) (not b!2394977) (not b!2395305) (not d!698860) (not b!2395166) (not b!2395499) (not b!2395114) tp_is_empty!11451 (not b!2395056) (not b!2395511) (not b!2395110) (not b!2395175) (not b!2395304) (not b!2395306) (not b!2395471) (not b!2395510) (not b!2395171) (not b!2395475) (not b!2395057) (not b!2395060) (not b!2395151) (not d!698828) (not b_lambda!74249) (not d!698800) (not d!698798) (not b!2395126) (not b_lambda!74247) (not b!2395208) (not b!2395509) (not b!2395115) (not b!2395119) (not b!2395513) (not b!2395138) (not b!2395204) (not bm!146082) (not b!2395133) (not d!698842) (not b!2395146) (not d!698922) (not b!2395520) (not b!2395120) (not b!2395150) (not d!698794) (not d!698846) (not d!698810) (not b!2395121) (not b!2395205) (not b!2395143) (not d!698856) (not b!2395038) (not b!2395505) (not bm!146076) (not b!2395300) (not d!698808) (not b!2395308) (not b!2395489) (not b!2395490) (not b!2395469) (not b!2395470) (not b!2394973) (not d!698858) (not b!2395207) (not b!2395190) (not b!2395035) (not b!2395058) (not b!2395476) (not b!2395061) (not b!2395152) (not d!698812) (not b!2395194) (not b!2394894) (not b!2395111) (not b!2395147) (not bs!462857) (not b!2395137) (not b!2395174) (not b!2395141) (not b!2395309) (not b!2395034) (not b!2395290) (not d!698904) (not d!698920) (not b!2395148) (not b!2395134) (not b!2395157) (not b!2395037) (not b!2395042) (not d!698884) (not b!2395155) (not b!2395109) (not b!2395170) (not b!2394974) (not d!698850) (not d!698852) (not b!2395506) (not b!2395172) (not b!2394975) (not b!2395474) (not bm!146067) (not b!2394969) (not b!2395055) (not b!2395203) (not b!2395503) (not d!698882) (not bm!146075) (not d!698848) (not b!2395288) (not b!2395514) (not d!698886) (not d!698830) (not b!2395123) (not b!2395139) (not bm!146084) (not b!2395132) (not b!2395063) (not b!2394978) (not bm!146083) (not b!2395515) (not b!2395495) (not b!2395507) (not bs!462858) (not b!2395501) (not d!698924) (not b!2395118) (not b!2395040) (not d!698880) (not b!2395032) (not b!2395199) (not b!2395502) (not b!2395189) (not b!2395033) (not d!698878) (not b!2395142) (not b!2395497))
(check-sat)
