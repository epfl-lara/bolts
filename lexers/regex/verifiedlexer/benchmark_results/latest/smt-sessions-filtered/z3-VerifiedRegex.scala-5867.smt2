; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287712 () Bool)

(assert start!287712)

(declare-fun b!2975621 () Bool)

(assert (=> b!2975621 true))

(assert (=> b!2975621 true))

(assert (=> b!2975621 true))

(declare-fun lambda!110786 () Int)

(declare-fun lambda!110785 () Int)

(assert (=> b!2975621 (not (= lambda!110786 lambda!110785))))

(assert (=> b!2975621 true))

(assert (=> b!2975621 true))

(assert (=> b!2975621 true))

(declare-fun b!2975618 () Bool)

(declare-fun res!1226962 () Bool)

(declare-fun e!1871876 () Bool)

(assert (=> b!2975618 (=> res!1226962 e!1871876)))

(declare-datatypes ((C!18756 0))(
  ( (C!18757 (val!11414 Int)) )
))
(declare-datatypes ((Regex!9285 0))(
  ( (ElementMatch!9285 (c!488495 C!18756)) (Concat!14606 (regOne!19082 Regex!9285) (regTwo!19082 Regex!9285)) (EmptyExpr!9285) (Star!9285 (reg!9614 Regex!9285)) (EmptyLang!9285) (Union!9285 (regOne!19083 Regex!9285) (regTwo!19083 Regex!9285)) )
))
(declare-fun lt!1036994 () Regex!9285)

(declare-fun validRegex!4018 (Regex!9285) Bool)

(assert (=> b!2975618 (= res!1226962 (not (validRegex!4018 lt!1036994)))))

(declare-fun b!2975619 () Bool)

(declare-fun e!1871877 () Bool)

(declare-fun e!1871880 () Bool)

(assert (=> b!2975619 (= e!1871877 e!1871880)))

(declare-fun res!1226967 () Bool)

(assert (=> b!2975619 (=> res!1226967 e!1871880)))

(declare-fun lt!1036998 () Regex!9285)

(declare-fun isEmptyLang!399 (Regex!9285) Bool)

(assert (=> b!2975619 (= res!1226967 (isEmptyLang!399 lt!1036998))))

(declare-fun r!17423 () Regex!9285)

(declare-fun simplify!286 (Regex!9285) Regex!9285)

(assert (=> b!2975619 (= lt!1036998 (simplify!286 (reg!9614 r!17423)))))

(declare-fun b!2975620 () Bool)

(declare-fun e!1871881 () Bool)

(declare-fun tp!948225 () Bool)

(declare-fun tp!948228 () Bool)

(assert (=> b!2975620 (= e!1871881 (and tp!948225 tp!948228))))

(declare-fun res!1226964 () Bool)

(declare-fun e!1871883 () Bool)

(assert (=> start!287712 (=> (not res!1226964) (not e!1871883))))

(assert (=> start!287712 (= res!1226964 (validRegex!4018 r!17423))))

(assert (=> start!287712 e!1871883))

(assert (=> start!287712 e!1871881))

(declare-fun e!1871878 () Bool)

(assert (=> start!287712 e!1871878))

(declare-fun e!1871879 () Bool)

(assert (=> b!2975621 (= e!1871879 e!1871876)))

(declare-fun res!1226965 () Bool)

(assert (=> b!2975621 (=> res!1226965 e!1871876)))

(assert (=> b!2975621 (= res!1226965 (not (validRegex!4018 lt!1036998)))))

(declare-fun Exists!1565 (Int) Bool)

(assert (=> b!2975621 (= (Exists!1565 lambda!110785) (Exists!1565 lambda!110786))))

(declare-datatypes ((Unit!48949 0))(
  ( (Unit!48950) )
))
(declare-fun lt!1036997 () Unit!48949)

(declare-datatypes ((List!35150 0))(
  ( (Nil!35026) (Cons!35026 (h!40446 C!18756) (t!234215 List!35150)) )
))
(declare-fun s!11993 () List!35150)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!250 (Regex!9285 List!35150) Unit!48949)

(assert (=> b!2975621 (= lt!1036997 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!250 lt!1036998 s!11993))))

(declare-datatypes ((tuple2!33908 0))(
  ( (tuple2!33909 (_1!20086 List!35150) (_2!20086 List!35150)) )
))
(declare-datatypes ((Option!6686 0))(
  ( (None!6685) (Some!6685 (v!34819 tuple2!33908)) )
))
(declare-fun isDefined!5237 (Option!6686) Bool)

(declare-fun findConcatSeparation!1080 (Regex!9285 Regex!9285 List!35150 List!35150 List!35150) Option!6686)

(assert (=> b!2975621 (= (isDefined!5237 (findConcatSeparation!1080 lt!1036998 lt!1036994 Nil!35026 s!11993 s!11993)) (Exists!1565 lambda!110785))))

(declare-fun lt!1036996 () Unit!48949)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!858 (Regex!9285 Regex!9285 List!35150) Unit!48949)

(assert (=> b!2975621 (= lt!1036996 (lemmaFindConcatSeparationEquivalentToExists!858 lt!1036998 lt!1036994 s!11993))))

(declare-fun b!2975622 () Bool)

(declare-fun ++!8353 (List!35150 List!35150) List!35150)

(assert (=> b!2975622 (= e!1871876 (= (++!8353 Nil!35026 s!11993) s!11993))))

(declare-fun b!2975623 () Bool)

(declare-fun tp!948226 () Bool)

(declare-fun tp!948227 () Bool)

(assert (=> b!2975623 (= e!1871881 (and tp!948226 tp!948227))))

(declare-fun b!2975624 () Bool)

(assert (=> b!2975624 (= e!1871883 (not e!1871877))))

(declare-fun res!1226963 () Bool)

(assert (=> b!2975624 (=> res!1226963 e!1871877)))

(declare-fun lt!1036995 () Bool)

(get-info :version)

(assert (=> b!2975624 (= res!1226963 (or lt!1036995 ((_ is Concat!14606) r!17423) ((_ is Union!9285) r!17423) (not ((_ is Star!9285) r!17423))))))

(declare-fun matchRSpec!1422 (Regex!9285 List!35150) Bool)

(assert (=> b!2975624 (= lt!1036995 (matchRSpec!1422 r!17423 s!11993))))

(declare-fun matchR!4167 (Regex!9285 List!35150) Bool)

(assert (=> b!2975624 (= lt!1036995 (matchR!4167 r!17423 s!11993))))

(declare-fun lt!1036992 () Unit!48949)

(declare-fun mainMatchTheorem!1422 (Regex!9285 List!35150) Unit!48949)

(assert (=> b!2975624 (= lt!1036992 (mainMatchTheorem!1422 r!17423 s!11993))))

(declare-fun b!2975625 () Bool)

(declare-fun tp_is_empty!16133 () Bool)

(declare-fun tp!948224 () Bool)

(assert (=> b!2975625 (= e!1871878 (and tp_is_empty!16133 tp!948224))))

(declare-fun b!2975626 () Bool)

(declare-fun e!1871882 () Bool)

(assert (=> b!2975626 (= e!1871882 e!1871879)))

(declare-fun res!1226966 () Bool)

(assert (=> b!2975626 (=> res!1226966 e!1871879)))

(declare-fun isEmpty!19269 (List!35150) Bool)

(assert (=> b!2975626 (= res!1226966 (isEmpty!19269 s!11993))))

(assert (=> b!2975626 (matchRSpec!1422 lt!1036994 s!11993)))

(declare-fun lt!1036993 () Unit!48949)

(assert (=> b!2975626 (= lt!1036993 (mainMatchTheorem!1422 lt!1036994 s!11993))))

(declare-fun b!2975627 () Bool)

(assert (=> b!2975627 (= e!1871881 tp_is_empty!16133)))

(declare-fun b!2975628 () Bool)

(declare-fun tp!948229 () Bool)

(assert (=> b!2975628 (= e!1871881 tp!948229)))

(declare-fun b!2975629 () Bool)

(assert (=> b!2975629 (= e!1871880 e!1871882)))

(declare-fun res!1226968 () Bool)

(assert (=> b!2975629 (=> res!1226968 e!1871882)))

(assert (=> b!2975629 (= res!1226968 (not (matchR!4167 lt!1036994 s!11993)))))

(assert (=> b!2975629 (= lt!1036994 (Star!9285 lt!1036998))))

(assert (= (and start!287712 res!1226964) b!2975624))

(assert (= (and b!2975624 (not res!1226963)) b!2975619))

(assert (= (and b!2975619 (not res!1226967)) b!2975629))

(assert (= (and b!2975629 (not res!1226968)) b!2975626))

(assert (= (and b!2975626 (not res!1226966)) b!2975621))

(assert (= (and b!2975621 (not res!1226965)) b!2975618))

(assert (= (and b!2975618 (not res!1226962)) b!2975622))

(assert (= (and start!287712 ((_ is ElementMatch!9285) r!17423)) b!2975627))

(assert (= (and start!287712 ((_ is Concat!14606) r!17423)) b!2975620))

(assert (= (and start!287712 ((_ is Star!9285) r!17423)) b!2975628))

(assert (= (and start!287712 ((_ is Union!9285) r!17423)) b!2975623))

(assert (= (and start!287712 ((_ is Cons!35026) s!11993)) b!2975625))

(declare-fun m!3339923 () Bool)

(assert (=> b!2975624 m!3339923))

(declare-fun m!3339925 () Bool)

(assert (=> b!2975624 m!3339925))

(declare-fun m!3339927 () Bool)

(assert (=> b!2975624 m!3339927))

(declare-fun m!3339929 () Bool)

(assert (=> b!2975618 m!3339929))

(declare-fun m!3339931 () Bool)

(assert (=> b!2975619 m!3339931))

(declare-fun m!3339933 () Bool)

(assert (=> b!2975619 m!3339933))

(declare-fun m!3339935 () Bool)

(assert (=> b!2975621 m!3339935))

(declare-fun m!3339937 () Bool)

(assert (=> b!2975621 m!3339937))

(declare-fun m!3339939 () Bool)

(assert (=> b!2975621 m!3339939))

(declare-fun m!3339941 () Bool)

(assert (=> b!2975621 m!3339941))

(assert (=> b!2975621 m!3339935))

(declare-fun m!3339943 () Bool)

(assert (=> b!2975621 m!3339943))

(declare-fun m!3339945 () Bool)

(assert (=> b!2975621 m!3339945))

(declare-fun m!3339947 () Bool)

(assert (=> b!2975621 m!3339947))

(assert (=> b!2975621 m!3339939))

(declare-fun m!3339949 () Bool)

(assert (=> start!287712 m!3339949))

(declare-fun m!3339951 () Bool)

(assert (=> b!2975629 m!3339951))

(declare-fun m!3339953 () Bool)

(assert (=> b!2975626 m!3339953))

(declare-fun m!3339955 () Bool)

(assert (=> b!2975626 m!3339955))

(declare-fun m!3339957 () Bool)

(assert (=> b!2975626 m!3339957))

(declare-fun m!3339959 () Bool)

(assert (=> b!2975622 m!3339959))

(check-sat (not b!2975620) (not b!2975624) (not b!2975628) (not b!2975629) (not b!2975619) (not b!2975622) tp_is_empty!16133 (not b!2975618) (not b!2975625) (not b!2975623) (not b!2975626) (not b!2975621) (not start!287712))
(check-sat)
(get-model)

(declare-fun b!2975662 () Bool)

(declare-fun res!1226986 () Bool)

(declare-fun e!1871904 () Bool)

(assert (=> b!2975662 (=> res!1226986 e!1871904)))

(declare-fun tail!4862 (List!35150) List!35150)

(assert (=> b!2975662 (= res!1226986 (not (isEmpty!19269 (tail!4862 s!11993))))))

(declare-fun b!2975664 () Bool)

(declare-fun e!1871902 () Bool)

(declare-fun derivativeStep!2577 (Regex!9285 C!18756) Regex!9285)

(declare-fun head!6636 (List!35150) C!18756)

(assert (=> b!2975664 (= e!1871902 (matchR!4167 (derivativeStep!2577 lt!1036994 (head!6636 s!11993)) (tail!4862 s!11993)))))

(declare-fun b!2975665 () Bool)

(declare-fun res!1226991 () Bool)

(declare-fun e!1871900 () Bool)

(assert (=> b!2975665 (=> res!1226991 e!1871900)))

(declare-fun e!1871898 () Bool)

(assert (=> b!2975665 (= res!1226991 e!1871898)))

(declare-fun res!1226985 () Bool)

(assert (=> b!2975665 (=> (not res!1226985) (not e!1871898))))

(declare-fun lt!1037001 () Bool)

(assert (=> b!2975665 (= res!1226985 lt!1037001)))

(declare-fun b!2975666 () Bool)

(declare-fun e!1871899 () Bool)

(declare-fun e!1871901 () Bool)

(assert (=> b!2975666 (= e!1871899 e!1871901)))

(declare-fun c!488503 () Bool)

(assert (=> b!2975666 (= c!488503 ((_ is EmptyLang!9285) lt!1036994))))

(declare-fun b!2975667 () Bool)

(declare-fun call!198413 () Bool)

(assert (=> b!2975667 (= e!1871899 (= lt!1037001 call!198413))))

(declare-fun b!2975668 () Bool)

(declare-fun res!1226987 () Bool)

(assert (=> b!2975668 (=> (not res!1226987) (not e!1871898))))

(assert (=> b!2975668 (= res!1226987 (isEmpty!19269 (tail!4862 s!11993)))))

(declare-fun b!2975669 () Bool)

(assert (=> b!2975669 (= e!1871898 (= (head!6636 s!11993) (c!488495 lt!1036994)))))

(declare-fun b!2975670 () Bool)

(assert (=> b!2975670 (= e!1871901 (not lt!1037001))))

(declare-fun b!2975671 () Bool)

(assert (=> b!2975671 (= e!1871904 (not (= (head!6636 s!11993) (c!488495 lt!1036994))))))

(declare-fun bm!198408 () Bool)

(assert (=> bm!198408 (= call!198413 (isEmpty!19269 s!11993))))

(declare-fun b!2975672 () Bool)

(declare-fun nullable!2977 (Regex!9285) Bool)

(assert (=> b!2975672 (= e!1871902 (nullable!2977 lt!1036994))))

(declare-fun b!2975673 () Bool)

(declare-fun res!1226992 () Bool)

(assert (=> b!2975673 (=> (not res!1226992) (not e!1871898))))

(assert (=> b!2975673 (= res!1226992 (not call!198413))))

(declare-fun b!2975674 () Bool)

(declare-fun res!1226988 () Bool)

(assert (=> b!2975674 (=> res!1226988 e!1871900)))

(assert (=> b!2975674 (= res!1226988 (not ((_ is ElementMatch!9285) lt!1036994)))))

(assert (=> b!2975674 (= e!1871901 e!1871900)))

(declare-fun b!2975675 () Bool)

(declare-fun e!1871903 () Bool)

(assert (=> b!2975675 (= e!1871900 e!1871903)))

(declare-fun res!1226990 () Bool)

(assert (=> b!2975675 (=> (not res!1226990) (not e!1871903))))

(assert (=> b!2975675 (= res!1226990 (not lt!1037001))))

(declare-fun d!843058 () Bool)

(assert (=> d!843058 e!1871899))

(declare-fun c!488504 () Bool)

(assert (=> d!843058 (= c!488504 ((_ is EmptyExpr!9285) lt!1036994))))

(assert (=> d!843058 (= lt!1037001 e!1871902)))

(declare-fun c!488502 () Bool)

(assert (=> d!843058 (= c!488502 (isEmpty!19269 s!11993))))

(assert (=> d!843058 (validRegex!4018 lt!1036994)))

(assert (=> d!843058 (= (matchR!4167 lt!1036994 s!11993) lt!1037001)))

(declare-fun b!2975663 () Bool)

(assert (=> b!2975663 (= e!1871903 e!1871904)))

(declare-fun res!1226989 () Bool)

(assert (=> b!2975663 (=> res!1226989 e!1871904)))

(assert (=> b!2975663 (= res!1226989 call!198413)))

(assert (= (and d!843058 c!488502) b!2975672))

(assert (= (and d!843058 (not c!488502)) b!2975664))

(assert (= (and d!843058 c!488504) b!2975667))

(assert (= (and d!843058 (not c!488504)) b!2975666))

(assert (= (and b!2975666 c!488503) b!2975670))

(assert (= (and b!2975666 (not c!488503)) b!2975674))

(assert (= (and b!2975674 (not res!1226988)) b!2975665))

(assert (= (and b!2975665 res!1226985) b!2975673))

(assert (= (and b!2975673 res!1226992) b!2975668))

(assert (= (and b!2975668 res!1226987) b!2975669))

(assert (= (and b!2975665 (not res!1226991)) b!2975675))

(assert (= (and b!2975675 res!1226990) b!2975663))

(assert (= (and b!2975663 (not res!1226989)) b!2975662))

(assert (= (and b!2975662 (not res!1226986)) b!2975671))

(assert (= (or b!2975667 b!2975673 b!2975663) bm!198408))

(declare-fun m!3339961 () Bool)

(assert (=> b!2975662 m!3339961))

(assert (=> b!2975662 m!3339961))

(declare-fun m!3339963 () Bool)

(assert (=> b!2975662 m!3339963))

(declare-fun m!3339965 () Bool)

(assert (=> b!2975669 m!3339965))

(assert (=> b!2975671 m!3339965))

(assert (=> b!2975668 m!3339961))

(assert (=> b!2975668 m!3339961))

(assert (=> b!2975668 m!3339963))

(assert (=> bm!198408 m!3339953))

(assert (=> d!843058 m!3339953))

(assert (=> d!843058 m!3339929))

(assert (=> b!2975664 m!3339965))

(assert (=> b!2975664 m!3339965))

(declare-fun m!3339967 () Bool)

(assert (=> b!2975664 m!3339967))

(assert (=> b!2975664 m!3339961))

(assert (=> b!2975664 m!3339967))

(assert (=> b!2975664 m!3339961))

(declare-fun m!3339969 () Bool)

(assert (=> b!2975664 m!3339969))

(declare-fun m!3339971 () Bool)

(assert (=> b!2975672 m!3339971))

(assert (=> b!2975629 d!843058))

(declare-fun d!843062 () Bool)

(declare-fun res!1227018 () Bool)

(declare-fun e!1871945 () Bool)

(assert (=> d!843062 (=> res!1227018 e!1871945)))

(assert (=> d!843062 (= res!1227018 ((_ is ElementMatch!9285) r!17423))))

(assert (=> d!843062 (= (validRegex!4018 r!17423) e!1871945)))

(declare-fun b!2975721 () Bool)

(declare-fun e!1871946 () Bool)

(declare-fun e!1871943 () Bool)

(assert (=> b!2975721 (= e!1871946 e!1871943)))

(declare-fun res!1227019 () Bool)

(assert (=> b!2975721 (=> (not res!1227019) (not e!1871943))))

(declare-fun call!198431 () Bool)

(assert (=> b!2975721 (= res!1227019 call!198431)))

(declare-fun b!2975722 () Bool)

(declare-fun e!1871942 () Bool)

(declare-fun call!198430 () Bool)

(assert (=> b!2975722 (= e!1871942 call!198430)))

(declare-fun b!2975723 () Bool)

(declare-fun e!1871940 () Bool)

(declare-fun e!1871941 () Bool)

(assert (=> b!2975723 (= e!1871940 e!1871941)))

(declare-fun c!488515 () Bool)

(assert (=> b!2975723 (= c!488515 ((_ is Union!9285) r!17423))))

(declare-fun bm!198424 () Bool)

(declare-fun call!198429 () Bool)

(assert (=> bm!198424 (= call!198429 call!198430)))

(declare-fun b!2975724 () Bool)

(declare-fun e!1871944 () Bool)

(assert (=> b!2975724 (= e!1871944 call!198431)))

(declare-fun b!2975725 () Bool)

(assert (=> b!2975725 (= e!1871940 e!1871942)))

(declare-fun res!1227022 () Bool)

(assert (=> b!2975725 (= res!1227022 (not (nullable!2977 (reg!9614 r!17423))))))

(assert (=> b!2975725 (=> (not res!1227022) (not e!1871942))))

(declare-fun c!488516 () Bool)

(declare-fun bm!198425 () Bool)

(assert (=> bm!198425 (= call!198430 (validRegex!4018 (ite c!488516 (reg!9614 r!17423) (ite c!488515 (regOne!19083 r!17423) (regTwo!19082 r!17423)))))))

(declare-fun b!2975726 () Bool)

(declare-fun res!1227020 () Bool)

(assert (=> b!2975726 (=> (not res!1227020) (not e!1871944))))

(assert (=> b!2975726 (= res!1227020 call!198429)))

(assert (=> b!2975726 (= e!1871941 e!1871944)))

(declare-fun b!2975727 () Bool)

(assert (=> b!2975727 (= e!1871945 e!1871940)))

(assert (=> b!2975727 (= c!488516 ((_ is Star!9285) r!17423))))

(declare-fun b!2975728 () Bool)

(declare-fun res!1227021 () Bool)

(assert (=> b!2975728 (=> res!1227021 e!1871946)))

(assert (=> b!2975728 (= res!1227021 (not ((_ is Concat!14606) r!17423)))))

(assert (=> b!2975728 (= e!1871941 e!1871946)))

(declare-fun bm!198426 () Bool)

(assert (=> bm!198426 (= call!198431 (validRegex!4018 (ite c!488515 (regTwo!19083 r!17423) (regOne!19082 r!17423))))))

(declare-fun b!2975729 () Bool)

(assert (=> b!2975729 (= e!1871943 call!198429)))

(assert (= (and d!843062 (not res!1227018)) b!2975727))

(assert (= (and b!2975727 c!488516) b!2975725))

(assert (= (and b!2975727 (not c!488516)) b!2975723))

(assert (= (and b!2975725 res!1227022) b!2975722))

(assert (= (and b!2975723 c!488515) b!2975726))

(assert (= (and b!2975723 (not c!488515)) b!2975728))

(assert (= (and b!2975726 res!1227020) b!2975724))

(assert (= (and b!2975728 (not res!1227021)) b!2975721))

(assert (= (and b!2975721 res!1227019) b!2975729))

(assert (= (or b!2975726 b!2975729) bm!198424))

(assert (= (or b!2975724 b!2975721) bm!198426))

(assert (= (or b!2975722 bm!198424) bm!198425))

(declare-fun m!3339979 () Bool)

(assert (=> b!2975725 m!3339979))

(declare-fun m!3339981 () Bool)

(assert (=> bm!198425 m!3339981))

(declare-fun m!3339983 () Bool)

(assert (=> bm!198426 m!3339983))

(assert (=> start!287712 d!843062))

(declare-fun bs!526746 () Bool)

(declare-fun b!2975813 () Bool)

(assert (= bs!526746 (and b!2975813 b!2975621)))

(declare-fun lambda!110791 () Int)

(assert (=> bs!526746 (not (= lambda!110791 lambda!110785))))

(assert (=> bs!526746 (= (and (= (reg!9614 r!17423) lt!1036998) (= r!17423 lt!1036994)) (= lambda!110791 lambda!110786))))

(assert (=> b!2975813 true))

(assert (=> b!2975813 true))

(declare-fun bs!526747 () Bool)

(declare-fun b!2975820 () Bool)

(assert (= bs!526747 (and b!2975820 b!2975621)))

(declare-fun lambda!110792 () Int)

(assert (=> bs!526747 (not (= lambda!110792 lambda!110785))))

(assert (=> bs!526747 (not (= lambda!110792 lambda!110786))))

(declare-fun bs!526748 () Bool)

(assert (= bs!526748 (and b!2975820 b!2975813)))

(assert (=> bs!526748 (not (= lambda!110792 lambda!110791))))

(assert (=> b!2975820 true))

(assert (=> b!2975820 true))

(declare-fun b!2975812 () Bool)

(declare-fun e!1871993 () Bool)

(assert (=> b!2975812 (= e!1871993 (= s!11993 (Cons!35026 (c!488495 r!17423) Nil!35026)))))

(declare-fun e!1871997 () Bool)

(declare-fun call!198450 () Bool)

(assert (=> b!2975813 (= e!1871997 call!198450)))

(declare-fun b!2975814 () Bool)

(declare-fun e!1871998 () Bool)

(declare-fun call!198451 () Bool)

(assert (=> b!2975814 (= e!1871998 call!198451)))

(declare-fun c!488547 () Bool)

(declare-fun bm!198445 () Bool)

(assert (=> bm!198445 (= call!198450 (Exists!1565 (ite c!488547 lambda!110791 lambda!110792)))))

(declare-fun b!2975815 () Bool)

(declare-fun res!1227045 () Bool)

(assert (=> b!2975815 (=> res!1227045 e!1871997)))

(assert (=> b!2975815 (= res!1227045 call!198451)))

(declare-fun e!1871995 () Bool)

(assert (=> b!2975815 (= e!1871995 e!1871997)))

(declare-fun d!843068 () Bool)

(declare-fun c!488548 () Bool)

(assert (=> d!843068 (= c!488548 ((_ is EmptyExpr!9285) r!17423))))

(assert (=> d!843068 (= (matchRSpec!1422 r!17423 s!11993) e!1871998)))

(declare-fun b!2975816 () Bool)

(declare-fun e!1871994 () Bool)

(assert (=> b!2975816 (= e!1871994 e!1871995)))

(assert (=> b!2975816 (= c!488547 ((_ is Star!9285) r!17423))))

(declare-fun b!2975817 () Bool)

(declare-fun e!1871999 () Bool)

(assert (=> b!2975817 (= e!1871999 (matchRSpec!1422 (regTwo!19083 r!17423) s!11993))))

(declare-fun b!2975818 () Bool)

(declare-fun e!1871996 () Bool)

(assert (=> b!2975818 (= e!1871998 e!1871996)))

(declare-fun res!1227047 () Bool)

(assert (=> b!2975818 (= res!1227047 (not ((_ is EmptyLang!9285) r!17423)))))

(assert (=> b!2975818 (=> (not res!1227047) (not e!1871996))))

(declare-fun bm!198446 () Bool)

(assert (=> bm!198446 (= call!198451 (isEmpty!19269 s!11993))))

(declare-fun b!2975819 () Bool)

(declare-fun c!488550 () Bool)

(assert (=> b!2975819 (= c!488550 ((_ is ElementMatch!9285) r!17423))))

(assert (=> b!2975819 (= e!1871996 e!1871993)))

(assert (=> b!2975820 (= e!1871995 call!198450)))

(declare-fun b!2975821 () Bool)

(assert (=> b!2975821 (= e!1871994 e!1871999)))

(declare-fun res!1227046 () Bool)

(assert (=> b!2975821 (= res!1227046 (matchRSpec!1422 (regOne!19083 r!17423) s!11993))))

(assert (=> b!2975821 (=> res!1227046 e!1871999)))

(declare-fun b!2975822 () Bool)

(declare-fun c!488549 () Bool)

(assert (=> b!2975822 (= c!488549 ((_ is Union!9285) r!17423))))

(assert (=> b!2975822 (= e!1871993 e!1871994)))

(assert (= (and d!843068 c!488548) b!2975814))

(assert (= (and d!843068 (not c!488548)) b!2975818))

(assert (= (and b!2975818 res!1227047) b!2975819))

(assert (= (and b!2975819 c!488550) b!2975812))

(assert (= (and b!2975819 (not c!488550)) b!2975822))

(assert (= (and b!2975822 c!488549) b!2975821))

(assert (= (and b!2975822 (not c!488549)) b!2975816))

(assert (= (and b!2975821 (not res!1227046)) b!2975817))

(assert (= (and b!2975816 c!488547) b!2975815))

(assert (= (and b!2975816 (not c!488547)) b!2975820))

(assert (= (and b!2975815 (not res!1227045)) b!2975813))

(assert (= (or b!2975813 b!2975820) bm!198445))

(assert (= (or b!2975814 b!2975815) bm!198446))

(declare-fun m!3339985 () Bool)

(assert (=> bm!198445 m!3339985))

(declare-fun m!3339987 () Bool)

(assert (=> b!2975817 m!3339987))

(assert (=> bm!198446 m!3339953))

(declare-fun m!3339989 () Bool)

(assert (=> b!2975821 m!3339989))

(assert (=> b!2975624 d!843068))

(declare-fun b!2975823 () Bool)

(declare-fun res!1227049 () Bool)

(declare-fun e!1872006 () Bool)

(assert (=> b!2975823 (=> res!1227049 e!1872006)))

(assert (=> b!2975823 (= res!1227049 (not (isEmpty!19269 (tail!4862 s!11993))))))

(declare-fun b!2975825 () Bool)

(declare-fun e!1872004 () Bool)

(assert (=> b!2975825 (= e!1872004 (matchR!4167 (derivativeStep!2577 r!17423 (head!6636 s!11993)) (tail!4862 s!11993)))))

(declare-fun b!2975826 () Bool)

(declare-fun res!1227054 () Bool)

(declare-fun e!1872002 () Bool)

(assert (=> b!2975826 (=> res!1227054 e!1872002)))

(declare-fun e!1872000 () Bool)

(assert (=> b!2975826 (= res!1227054 e!1872000)))

(declare-fun res!1227048 () Bool)

(assert (=> b!2975826 (=> (not res!1227048) (not e!1872000))))

(declare-fun lt!1037014 () Bool)

(assert (=> b!2975826 (= res!1227048 lt!1037014)))

(declare-fun b!2975827 () Bool)

(declare-fun e!1872001 () Bool)

(declare-fun e!1872003 () Bool)

(assert (=> b!2975827 (= e!1872001 e!1872003)))

(declare-fun c!488552 () Bool)

(assert (=> b!2975827 (= c!488552 ((_ is EmptyLang!9285) r!17423))))

(declare-fun b!2975828 () Bool)

(declare-fun call!198452 () Bool)

(assert (=> b!2975828 (= e!1872001 (= lt!1037014 call!198452))))

(declare-fun b!2975829 () Bool)

(declare-fun res!1227050 () Bool)

(assert (=> b!2975829 (=> (not res!1227050) (not e!1872000))))

(assert (=> b!2975829 (= res!1227050 (isEmpty!19269 (tail!4862 s!11993)))))

(declare-fun b!2975830 () Bool)

(assert (=> b!2975830 (= e!1872000 (= (head!6636 s!11993) (c!488495 r!17423)))))

(declare-fun b!2975831 () Bool)

(assert (=> b!2975831 (= e!1872003 (not lt!1037014))))

(declare-fun b!2975832 () Bool)

(assert (=> b!2975832 (= e!1872006 (not (= (head!6636 s!11993) (c!488495 r!17423))))))

(declare-fun bm!198447 () Bool)

(assert (=> bm!198447 (= call!198452 (isEmpty!19269 s!11993))))

(declare-fun b!2975833 () Bool)

(assert (=> b!2975833 (= e!1872004 (nullable!2977 r!17423))))

(declare-fun b!2975834 () Bool)

(declare-fun res!1227055 () Bool)

(assert (=> b!2975834 (=> (not res!1227055) (not e!1872000))))

(assert (=> b!2975834 (= res!1227055 (not call!198452))))

(declare-fun b!2975835 () Bool)

(declare-fun res!1227051 () Bool)

(assert (=> b!2975835 (=> res!1227051 e!1872002)))

(assert (=> b!2975835 (= res!1227051 (not ((_ is ElementMatch!9285) r!17423)))))

(assert (=> b!2975835 (= e!1872003 e!1872002)))

(declare-fun b!2975836 () Bool)

(declare-fun e!1872005 () Bool)

(assert (=> b!2975836 (= e!1872002 e!1872005)))

(declare-fun res!1227053 () Bool)

(assert (=> b!2975836 (=> (not res!1227053) (not e!1872005))))

(assert (=> b!2975836 (= res!1227053 (not lt!1037014))))

(declare-fun d!843070 () Bool)

(assert (=> d!843070 e!1872001))

(declare-fun c!488553 () Bool)

(assert (=> d!843070 (= c!488553 ((_ is EmptyExpr!9285) r!17423))))

(assert (=> d!843070 (= lt!1037014 e!1872004)))

(declare-fun c!488551 () Bool)

(assert (=> d!843070 (= c!488551 (isEmpty!19269 s!11993))))

(assert (=> d!843070 (validRegex!4018 r!17423)))

(assert (=> d!843070 (= (matchR!4167 r!17423 s!11993) lt!1037014)))

(declare-fun b!2975824 () Bool)

(assert (=> b!2975824 (= e!1872005 e!1872006)))

(declare-fun res!1227052 () Bool)

(assert (=> b!2975824 (=> res!1227052 e!1872006)))

(assert (=> b!2975824 (= res!1227052 call!198452)))

(assert (= (and d!843070 c!488551) b!2975833))

(assert (= (and d!843070 (not c!488551)) b!2975825))

(assert (= (and d!843070 c!488553) b!2975828))

(assert (= (and d!843070 (not c!488553)) b!2975827))

(assert (= (and b!2975827 c!488552) b!2975831))

(assert (= (and b!2975827 (not c!488552)) b!2975835))

(assert (= (and b!2975835 (not res!1227051)) b!2975826))

(assert (= (and b!2975826 res!1227048) b!2975834))

(assert (= (and b!2975834 res!1227055) b!2975829))

(assert (= (and b!2975829 res!1227050) b!2975830))

(assert (= (and b!2975826 (not res!1227054)) b!2975836))

(assert (= (and b!2975836 res!1227053) b!2975824))

(assert (= (and b!2975824 (not res!1227052)) b!2975823))

(assert (= (and b!2975823 (not res!1227049)) b!2975832))

(assert (= (or b!2975828 b!2975834 b!2975824) bm!198447))

(assert (=> b!2975823 m!3339961))

(assert (=> b!2975823 m!3339961))

(assert (=> b!2975823 m!3339963))

(assert (=> b!2975830 m!3339965))

(assert (=> b!2975832 m!3339965))

(assert (=> b!2975829 m!3339961))

(assert (=> b!2975829 m!3339961))

(assert (=> b!2975829 m!3339963))

(assert (=> bm!198447 m!3339953))

(assert (=> d!843070 m!3339953))

(assert (=> d!843070 m!3339949))

(assert (=> b!2975825 m!3339965))

(assert (=> b!2975825 m!3339965))

(declare-fun m!3339991 () Bool)

(assert (=> b!2975825 m!3339991))

(assert (=> b!2975825 m!3339961))

(assert (=> b!2975825 m!3339991))

(assert (=> b!2975825 m!3339961))

(declare-fun m!3339993 () Bool)

(assert (=> b!2975825 m!3339993))

(declare-fun m!3339995 () Bool)

(assert (=> b!2975833 m!3339995))

(assert (=> b!2975624 d!843070))

(declare-fun d!843072 () Bool)

(assert (=> d!843072 (= (matchR!4167 r!17423 s!11993) (matchRSpec!1422 r!17423 s!11993))))

(declare-fun lt!1037023 () Unit!48949)

(declare-fun choose!17601 (Regex!9285 List!35150) Unit!48949)

(assert (=> d!843072 (= lt!1037023 (choose!17601 r!17423 s!11993))))

(assert (=> d!843072 (validRegex!4018 r!17423)))

(assert (=> d!843072 (= (mainMatchTheorem!1422 r!17423 s!11993) lt!1037023)))

(declare-fun bs!526749 () Bool)

(assert (= bs!526749 d!843072))

(assert (=> bs!526749 m!3339925))

(assert (=> bs!526749 m!3339923))

(declare-fun m!3340015 () Bool)

(assert (=> bs!526749 m!3340015))

(assert (=> bs!526749 m!3339949))

(assert (=> b!2975624 d!843072))

(declare-fun d!843076 () Bool)

(assert (=> d!843076 (= (isEmptyLang!399 lt!1036998) ((_ is EmptyLang!9285) lt!1036998))))

(assert (=> b!2975619 d!843076))

(declare-fun b!2975955 () Bool)

(declare-fun e!1872075 () Regex!9285)

(declare-fun e!1872087 () Regex!9285)

(assert (=> b!2975955 (= e!1872075 e!1872087)))

(declare-fun lt!1037038 () Regex!9285)

(declare-fun call!198482 () Regex!9285)

(assert (=> b!2975955 (= lt!1037038 call!198482)))

(declare-fun lt!1037040 () Regex!9285)

(declare-fun call!198481 () Regex!9285)

(assert (=> b!2975955 (= lt!1037040 call!198481)))

(declare-fun res!1227085 () Bool)

(declare-fun call!198483 () Bool)

(assert (=> b!2975955 (= res!1227085 call!198483)))

(declare-fun e!1872085 () Bool)

(assert (=> b!2975955 (=> res!1227085 e!1872085)))

(declare-fun c!488603 () Bool)

(assert (=> b!2975955 (= c!488603 e!1872085)))

(declare-fun b!2975956 () Bool)

(declare-fun e!1872076 () Regex!9285)

(assert (=> b!2975956 (= e!1872076 EmptyExpr!9285)))

(declare-fun b!2975957 () Bool)

(declare-fun e!1872078 () Bool)

(declare-fun lt!1037039 () Regex!9285)

(assert (=> b!2975957 (= e!1872078 (= (nullable!2977 lt!1037039) (nullable!2977 (reg!9614 r!17423))))))

(declare-fun bm!198475 () Bool)

(declare-fun call!198484 () Bool)

(assert (=> bm!198475 (= call!198483 call!198484)))

(declare-fun call!198486 () Bool)

(declare-fun c!488606 () Bool)

(declare-fun bm!198476 () Bool)

(declare-fun lt!1037037 () Regex!9285)

(assert (=> bm!198476 (= call!198486 (isEmptyLang!399 (ite c!488606 lt!1037037 lt!1037040)))))

(declare-fun bm!198477 () Bool)

(declare-fun c!488602 () Bool)

(declare-fun call!198480 () Regex!9285)

(assert (=> bm!198477 (= call!198480 (simplify!286 (ite c!488602 (reg!9614 (reg!9614 r!17423)) (ite c!488606 (regTwo!19083 (reg!9614 r!17423)) (regOne!19082 (reg!9614 r!17423))))))))

(declare-fun b!2975958 () Bool)

(declare-fun e!1872083 () Regex!9285)

(declare-fun lt!1037036 () Regex!9285)

(assert (=> b!2975958 (= e!1872083 lt!1037036)))

(declare-fun b!2975959 () Bool)

(declare-fun e!1872074 () Bool)

(declare-fun call!198485 () Bool)

(assert (=> b!2975959 (= e!1872074 call!198485)))

(declare-fun b!2975960 () Bool)

(declare-fun e!1872082 () Regex!9285)

(assert (=> b!2975960 (= e!1872075 e!1872082)))

(assert (=> b!2975960 (= lt!1037036 call!198481)))

(assert (=> b!2975960 (= lt!1037037 call!198482)))

(declare-fun c!488604 () Bool)

(assert (=> b!2975960 (= c!488604 call!198483)))

(declare-fun b!2975961 () Bool)

(declare-fun c!488605 () Bool)

(assert (=> b!2975961 (= c!488605 e!1872074)))

(declare-fun res!1227086 () Bool)

(assert (=> b!2975961 (=> res!1227086 e!1872074)))

(assert (=> b!2975961 (= res!1227086 call!198484)))

(declare-fun lt!1037041 () Regex!9285)

(assert (=> b!2975961 (= lt!1037041 call!198480)))

(declare-fun e!1872080 () Regex!9285)

(declare-fun e!1872079 () Regex!9285)

(assert (=> b!2975961 (= e!1872080 e!1872079)))

(declare-fun d!843078 () Bool)

(assert (=> d!843078 e!1872078))

(declare-fun res!1227084 () Bool)

(assert (=> d!843078 (=> (not res!1227084) (not e!1872078))))

(assert (=> d!843078 (= res!1227084 (validRegex!4018 lt!1037039))))

(declare-fun e!1872081 () Regex!9285)

(assert (=> d!843078 (= lt!1037039 e!1872081)))

(declare-fun c!488601 () Bool)

(assert (=> d!843078 (= c!488601 ((_ is EmptyLang!9285) (reg!9614 r!17423)))))

(assert (=> d!843078 (validRegex!4018 (reg!9614 r!17423))))

(assert (=> d!843078 (= (simplify!286 (reg!9614 r!17423)) lt!1037039)))

(declare-fun b!2975962 () Bool)

(assert (=> b!2975962 (= e!1872082 lt!1037037)))

(declare-fun b!2975963 () Bool)

(assert (=> b!2975963 (= e!1872085 call!198486)))

(declare-fun b!2975964 () Bool)

(declare-fun e!1872077 () Regex!9285)

(declare-fun e!1872084 () Regex!9285)

(assert (=> b!2975964 (= e!1872077 e!1872084)))

(declare-fun c!488608 () Bool)

(assert (=> b!2975964 (= c!488608 call!198485)))

(declare-fun b!2975965 () Bool)

(assert (=> b!2975965 (= e!1872077 lt!1037040)))

(declare-fun b!2975966 () Bool)

(assert (=> b!2975966 (= e!1872083 (Union!9285 lt!1037036 lt!1037037))))

(declare-fun b!2975967 () Bool)

(declare-fun e!1872086 () Regex!9285)

(assert (=> b!2975967 (= e!1872086 (reg!9614 r!17423))))

(declare-fun b!2975968 () Bool)

(assert (=> b!2975968 (= e!1872084 (Concat!14606 lt!1037038 lt!1037040))))

(declare-fun b!2975969 () Bool)

(declare-fun c!488599 () Bool)

(declare-fun isEmptyExpr!433 (Regex!9285) Bool)

(assert (=> b!2975969 (= c!488599 (isEmptyExpr!433 lt!1037038))))

(assert (=> b!2975969 (= e!1872087 e!1872077)))

(declare-fun bm!198478 () Bool)

(assert (=> bm!198478 (= call!198485 (isEmptyExpr!433 (ite c!488602 lt!1037041 lt!1037040)))))

(declare-fun b!2975970 () Bool)

(assert (=> b!2975970 (= e!1872079 (Star!9285 lt!1037041))))

(declare-fun b!2975971 () Bool)

(assert (=> b!2975971 (= e!1872081 EmptyLang!9285)))

(declare-fun bm!198479 () Bool)

(assert (=> bm!198479 (= call!198482 call!198480)))

(declare-fun b!2975972 () Bool)

(assert (=> b!2975972 (= e!1872081 e!1872086)))

(declare-fun c!488609 () Bool)

(assert (=> b!2975972 (= c!488609 ((_ is ElementMatch!9285) (reg!9614 r!17423)))))

(declare-fun b!2975973 () Bool)

(declare-fun c!488607 () Bool)

(assert (=> b!2975973 (= c!488607 call!198486)))

(assert (=> b!2975973 (= e!1872082 e!1872083)))

(declare-fun b!2975974 () Bool)

(assert (=> b!2975974 (= c!488606 ((_ is Union!9285) (reg!9614 r!17423)))))

(assert (=> b!2975974 (= e!1872080 e!1872075)))

(declare-fun bm!198480 () Bool)

(assert (=> bm!198480 (= call!198484 (isEmptyLang!399 (ite c!488602 lt!1037041 (ite c!488606 lt!1037036 lt!1037038))))))

(declare-fun b!2975975 () Bool)

(assert (=> b!2975975 (= e!1872087 EmptyLang!9285)))

(declare-fun bm!198481 () Bool)

(assert (=> bm!198481 (= call!198481 (simplify!286 (ite c!488606 (regOne!19083 (reg!9614 r!17423)) (regTwo!19082 (reg!9614 r!17423)))))))

(declare-fun b!2975976 () Bool)

(declare-fun c!488600 () Bool)

(assert (=> b!2975976 (= c!488600 ((_ is EmptyExpr!9285) (reg!9614 r!17423)))))

(assert (=> b!2975976 (= e!1872086 e!1872076)))

(declare-fun b!2975977 () Bool)

(assert (=> b!2975977 (= e!1872084 lt!1037038)))

(declare-fun b!2975978 () Bool)

(assert (=> b!2975978 (= e!1872079 EmptyExpr!9285)))

(declare-fun b!2975979 () Bool)

(assert (=> b!2975979 (= e!1872076 e!1872080)))

(assert (=> b!2975979 (= c!488602 ((_ is Star!9285) (reg!9614 r!17423)))))

(assert (= (and d!843078 c!488601) b!2975971))

(assert (= (and d!843078 (not c!488601)) b!2975972))

(assert (= (and b!2975972 c!488609) b!2975967))

(assert (= (and b!2975972 (not c!488609)) b!2975976))

(assert (= (and b!2975976 c!488600) b!2975956))

(assert (= (and b!2975976 (not c!488600)) b!2975979))

(assert (= (and b!2975979 c!488602) b!2975961))

(assert (= (and b!2975979 (not c!488602)) b!2975974))

(assert (= (and b!2975961 (not res!1227086)) b!2975959))

(assert (= (and b!2975961 c!488605) b!2975978))

(assert (= (and b!2975961 (not c!488605)) b!2975970))

(assert (= (and b!2975974 c!488606) b!2975960))

(assert (= (and b!2975974 (not c!488606)) b!2975955))

(assert (= (and b!2975960 c!488604) b!2975962))

(assert (= (and b!2975960 (not c!488604)) b!2975973))

(assert (= (and b!2975973 c!488607) b!2975958))

(assert (= (and b!2975973 (not c!488607)) b!2975966))

(assert (= (and b!2975955 (not res!1227085)) b!2975963))

(assert (= (and b!2975955 c!488603) b!2975975))

(assert (= (and b!2975955 (not c!488603)) b!2975969))

(assert (= (and b!2975969 c!488599) b!2975965))

(assert (= (and b!2975969 (not c!488599)) b!2975964))

(assert (= (and b!2975964 c!488608) b!2975977))

(assert (= (and b!2975964 (not c!488608)) b!2975968))

(assert (= (or b!2975960 b!2975955) bm!198481))

(assert (= (or b!2975960 b!2975955) bm!198479))

(assert (= (or b!2975973 b!2975963) bm!198476))

(assert (= (or b!2975960 b!2975955) bm!198475))

(assert (= (or b!2975959 b!2975964) bm!198478))

(assert (= (or b!2975961 bm!198479) bm!198477))

(assert (= (or b!2975961 bm!198475) bm!198480))

(assert (= (and d!843078 res!1227084) b!2975957))

(declare-fun m!3340023 () Bool)

(assert (=> bm!198480 m!3340023))

(declare-fun m!3340025 () Bool)

(assert (=> b!2975957 m!3340025))

(assert (=> b!2975957 m!3339979))

(declare-fun m!3340027 () Bool)

(assert (=> bm!198476 m!3340027))

(declare-fun m!3340029 () Bool)

(assert (=> bm!198481 m!3340029))

(declare-fun m!3340031 () Bool)

(assert (=> bm!198477 m!3340031))

(declare-fun m!3340033 () Bool)

(assert (=> bm!198478 m!3340033))

(declare-fun m!3340035 () Bool)

(assert (=> d!843078 m!3340035))

(declare-fun m!3340037 () Bool)

(assert (=> d!843078 m!3340037))

(declare-fun m!3340039 () Bool)

(assert (=> b!2975969 m!3340039))

(assert (=> b!2975619 d!843078))

(declare-fun d!843082 () Bool)

(assert (=> d!843082 (= (isEmpty!19269 s!11993) ((_ is Nil!35026) s!11993))))

(assert (=> b!2975626 d!843082))

(declare-fun bs!526753 () Bool)

(declare-fun b!2976009 () Bool)

(assert (= bs!526753 (and b!2976009 b!2975621)))

(declare-fun lambda!110799 () Int)

(assert (=> bs!526753 (not (= lambda!110799 lambda!110785))))

(assert (=> bs!526753 (= (= (reg!9614 lt!1036994) lt!1036998) (= lambda!110799 lambda!110786))))

(declare-fun bs!526754 () Bool)

(assert (= bs!526754 (and b!2976009 b!2975813)))

(assert (=> bs!526754 (= (and (= (reg!9614 lt!1036994) (reg!9614 r!17423)) (= lt!1036994 r!17423)) (= lambda!110799 lambda!110791))))

(declare-fun bs!526755 () Bool)

(assert (= bs!526755 (and b!2976009 b!2975820)))

(assert (=> bs!526755 (not (= lambda!110799 lambda!110792))))

(assert (=> b!2976009 true))

(assert (=> b!2976009 true))

(declare-fun bs!526756 () Bool)

(declare-fun b!2976016 () Bool)

(assert (= bs!526756 (and b!2976016 b!2975621)))

(declare-fun lambda!110800 () Int)

(assert (=> bs!526756 (not (= lambda!110800 lambda!110786))))

(declare-fun bs!526757 () Bool)

(assert (= bs!526757 (and b!2976016 b!2975813)))

(assert (=> bs!526757 (not (= lambda!110800 lambda!110791))))

(assert (=> bs!526756 (not (= lambda!110800 lambda!110785))))

(declare-fun bs!526758 () Bool)

(assert (= bs!526758 (and b!2976016 b!2975820)))

(assert (=> bs!526758 (= (and (= (regOne!19082 lt!1036994) (regOne!19082 r!17423)) (= (regTwo!19082 lt!1036994) (regTwo!19082 r!17423))) (= lambda!110800 lambda!110792))))

(declare-fun bs!526759 () Bool)

(assert (= bs!526759 (and b!2976016 b!2976009)))

(assert (=> bs!526759 (not (= lambda!110800 lambda!110799))))

(assert (=> b!2976016 true))

(assert (=> b!2976016 true))

(declare-fun b!2976008 () Bool)

(declare-fun e!1872102 () Bool)

(assert (=> b!2976008 (= e!1872102 (= s!11993 (Cons!35026 (c!488495 lt!1036994) Nil!35026)))))

(declare-fun e!1872106 () Bool)

(declare-fun call!198489 () Bool)

(assert (=> b!2976009 (= e!1872106 call!198489)))

(declare-fun b!2976010 () Bool)

(declare-fun e!1872107 () Bool)

(declare-fun call!198490 () Bool)

(assert (=> b!2976010 (= e!1872107 call!198490)))

(declare-fun bm!198484 () Bool)

(declare-fun c!488616 () Bool)

(assert (=> bm!198484 (= call!198489 (Exists!1565 (ite c!488616 lambda!110799 lambda!110800)))))

(declare-fun b!2976011 () Bool)

(declare-fun res!1227103 () Bool)

(assert (=> b!2976011 (=> res!1227103 e!1872106)))

(assert (=> b!2976011 (= res!1227103 call!198490)))

(declare-fun e!1872104 () Bool)

(assert (=> b!2976011 (= e!1872104 e!1872106)))

(declare-fun d!843084 () Bool)

(declare-fun c!488617 () Bool)

(assert (=> d!843084 (= c!488617 ((_ is EmptyExpr!9285) lt!1036994))))

(assert (=> d!843084 (= (matchRSpec!1422 lt!1036994 s!11993) e!1872107)))

(declare-fun b!2976012 () Bool)

(declare-fun e!1872103 () Bool)

(assert (=> b!2976012 (= e!1872103 e!1872104)))

(assert (=> b!2976012 (= c!488616 ((_ is Star!9285) lt!1036994))))

(declare-fun b!2976013 () Bool)

(declare-fun e!1872108 () Bool)

(assert (=> b!2976013 (= e!1872108 (matchRSpec!1422 (regTwo!19083 lt!1036994) s!11993))))

(declare-fun b!2976014 () Bool)

(declare-fun e!1872105 () Bool)

(assert (=> b!2976014 (= e!1872107 e!1872105)))

(declare-fun res!1227105 () Bool)

(assert (=> b!2976014 (= res!1227105 (not ((_ is EmptyLang!9285) lt!1036994)))))

(assert (=> b!2976014 (=> (not res!1227105) (not e!1872105))))

(declare-fun bm!198485 () Bool)

(assert (=> bm!198485 (= call!198490 (isEmpty!19269 s!11993))))

(declare-fun b!2976015 () Bool)

(declare-fun c!488619 () Bool)

(assert (=> b!2976015 (= c!488619 ((_ is ElementMatch!9285) lt!1036994))))

(assert (=> b!2976015 (= e!1872105 e!1872102)))

(assert (=> b!2976016 (= e!1872104 call!198489)))

(declare-fun b!2976017 () Bool)

(assert (=> b!2976017 (= e!1872103 e!1872108)))

(declare-fun res!1227104 () Bool)

(assert (=> b!2976017 (= res!1227104 (matchRSpec!1422 (regOne!19083 lt!1036994) s!11993))))

(assert (=> b!2976017 (=> res!1227104 e!1872108)))

(declare-fun b!2976018 () Bool)

(declare-fun c!488618 () Bool)

(assert (=> b!2976018 (= c!488618 ((_ is Union!9285) lt!1036994))))

(assert (=> b!2976018 (= e!1872102 e!1872103)))

(assert (= (and d!843084 c!488617) b!2976010))

(assert (= (and d!843084 (not c!488617)) b!2976014))

(assert (= (and b!2976014 res!1227105) b!2976015))

(assert (= (and b!2976015 c!488619) b!2976008))

(assert (= (and b!2976015 (not c!488619)) b!2976018))

(assert (= (and b!2976018 c!488618) b!2976017))

(assert (= (and b!2976018 (not c!488618)) b!2976012))

(assert (= (and b!2976017 (not res!1227104)) b!2976013))

(assert (= (and b!2976012 c!488616) b!2976011))

(assert (= (and b!2976012 (not c!488616)) b!2976016))

(assert (= (and b!2976011 (not res!1227103)) b!2976009))

(assert (= (or b!2976009 b!2976016) bm!198484))

(assert (= (or b!2976010 b!2976011) bm!198485))

(declare-fun m!3340041 () Bool)

(assert (=> bm!198484 m!3340041))

(declare-fun m!3340043 () Bool)

(assert (=> b!2976013 m!3340043))

(assert (=> bm!198485 m!3339953))

(declare-fun m!3340045 () Bool)

(assert (=> b!2976017 m!3340045))

(assert (=> b!2975626 d!843084))

(declare-fun d!843086 () Bool)

(assert (=> d!843086 (= (matchR!4167 lt!1036994 s!11993) (matchRSpec!1422 lt!1036994 s!11993))))

(declare-fun lt!1037045 () Unit!48949)

(assert (=> d!843086 (= lt!1037045 (choose!17601 lt!1036994 s!11993))))

(assert (=> d!843086 (validRegex!4018 lt!1036994)))

(assert (=> d!843086 (= (mainMatchTheorem!1422 lt!1036994 s!11993) lt!1037045)))

(declare-fun bs!526760 () Bool)

(assert (= bs!526760 d!843086))

(assert (=> bs!526760 m!3339951))

(assert (=> bs!526760 m!3339955))

(declare-fun m!3340047 () Bool)

(assert (=> bs!526760 m!3340047))

(assert (=> bs!526760 m!3339929))

(assert (=> b!2975626 d!843086))

(declare-fun d!843088 () Bool)

(declare-fun choose!17603 (Int) Bool)

(assert (=> d!843088 (= (Exists!1565 lambda!110786) (choose!17603 lambda!110786))))

(declare-fun bs!526761 () Bool)

(assert (= bs!526761 d!843088))

(declare-fun m!3340049 () Bool)

(assert (=> bs!526761 m!3340049))

(assert (=> b!2975621 d!843088))

(declare-fun d!843090 () Bool)

(declare-fun isEmpty!19270 (Option!6686) Bool)

(assert (=> d!843090 (= (isDefined!5237 (findConcatSeparation!1080 lt!1036998 lt!1036994 Nil!35026 s!11993 s!11993)) (not (isEmpty!19270 (findConcatSeparation!1080 lt!1036998 lt!1036994 Nil!35026 s!11993 s!11993))))))

(declare-fun bs!526762 () Bool)

(assert (= bs!526762 d!843090))

(assert (=> bs!526762 m!3339939))

(declare-fun m!3340063 () Bool)

(assert (=> bs!526762 m!3340063))

(assert (=> b!2975621 d!843090))

(declare-fun bs!526772 () Bool)

(declare-fun d!843094 () Bool)

(assert (= bs!526772 (and d!843094 b!2975621)))

(declare-fun lambda!110805 () Int)

(assert (=> bs!526772 (not (= lambda!110805 lambda!110786))))

(declare-fun bs!526773 () Bool)

(assert (= bs!526773 (and d!843094 b!2975813)))

(assert (=> bs!526773 (not (= lambda!110805 lambda!110791))))

(declare-fun bs!526774 () Bool)

(assert (= bs!526774 (and d!843094 b!2976016)))

(assert (=> bs!526774 (not (= lambda!110805 lambda!110800))))

(assert (=> bs!526772 (= lambda!110805 lambda!110785)))

(declare-fun bs!526775 () Bool)

(assert (= bs!526775 (and d!843094 b!2975820)))

(assert (=> bs!526775 (not (= lambda!110805 lambda!110792))))

(declare-fun bs!526776 () Bool)

(assert (= bs!526776 (and d!843094 b!2976009)))

(assert (=> bs!526776 (not (= lambda!110805 lambda!110799))))

(assert (=> d!843094 true))

(assert (=> d!843094 true))

(assert (=> d!843094 true))

(assert (=> d!843094 (= (isDefined!5237 (findConcatSeparation!1080 lt!1036998 lt!1036994 Nil!35026 s!11993 s!11993)) (Exists!1565 lambda!110805))))

(declare-fun lt!1037052 () Unit!48949)

(declare-fun choose!17604 (Regex!9285 Regex!9285 List!35150) Unit!48949)

(assert (=> d!843094 (= lt!1037052 (choose!17604 lt!1036998 lt!1036994 s!11993))))

(assert (=> d!843094 (validRegex!4018 lt!1036998)))

(assert (=> d!843094 (= (lemmaFindConcatSeparationEquivalentToExists!858 lt!1036998 lt!1036994 s!11993) lt!1037052)))

(declare-fun bs!526777 () Bool)

(assert (= bs!526777 d!843094))

(assert (=> bs!526777 m!3339939))

(assert (=> bs!526777 m!3339941))

(declare-fun m!3340075 () Bool)

(assert (=> bs!526777 m!3340075))

(assert (=> bs!526777 m!3339939))

(declare-fun m!3340077 () Bool)

(assert (=> bs!526777 m!3340077))

(assert (=> bs!526777 m!3339943))

(assert (=> b!2975621 d!843094))

(declare-fun d!843104 () Bool)

(assert (=> d!843104 (= (Exists!1565 lambda!110785) (choose!17603 lambda!110785))))

(declare-fun bs!526778 () Bool)

(assert (= bs!526778 d!843104))

(declare-fun m!3340079 () Bool)

(assert (=> bs!526778 m!3340079))

(assert (=> b!2975621 d!843104))

(declare-fun d!843106 () Bool)

(declare-fun res!1227121 () Bool)

(declare-fun e!1872130 () Bool)

(assert (=> d!843106 (=> res!1227121 e!1872130)))

(assert (=> d!843106 (= res!1227121 ((_ is ElementMatch!9285) lt!1036998))))

(assert (=> d!843106 (= (validRegex!4018 lt!1036998) e!1872130)))

(declare-fun b!2976048 () Bool)

(declare-fun e!1872131 () Bool)

(declare-fun e!1872128 () Bool)

(assert (=> b!2976048 (= e!1872131 e!1872128)))

(declare-fun res!1227122 () Bool)

(assert (=> b!2976048 (=> (not res!1227122) (not e!1872128))))

(declare-fun call!198496 () Bool)

(assert (=> b!2976048 (= res!1227122 call!198496)))

(declare-fun b!2976049 () Bool)

(declare-fun e!1872127 () Bool)

(declare-fun call!198495 () Bool)

(assert (=> b!2976049 (= e!1872127 call!198495)))

(declare-fun b!2976050 () Bool)

(declare-fun e!1872125 () Bool)

(declare-fun e!1872126 () Bool)

(assert (=> b!2976050 (= e!1872125 e!1872126)))

(declare-fun c!488627 () Bool)

(assert (=> b!2976050 (= c!488627 ((_ is Union!9285) lt!1036998))))

(declare-fun bm!198489 () Bool)

(declare-fun call!198494 () Bool)

(assert (=> bm!198489 (= call!198494 call!198495)))

(declare-fun b!2976051 () Bool)

(declare-fun e!1872129 () Bool)

(assert (=> b!2976051 (= e!1872129 call!198496)))

(declare-fun b!2976052 () Bool)

(assert (=> b!2976052 (= e!1872125 e!1872127)))

(declare-fun res!1227125 () Bool)

(assert (=> b!2976052 (= res!1227125 (not (nullable!2977 (reg!9614 lt!1036998))))))

(assert (=> b!2976052 (=> (not res!1227125) (not e!1872127))))

(declare-fun c!488628 () Bool)

(declare-fun bm!198490 () Bool)

(assert (=> bm!198490 (= call!198495 (validRegex!4018 (ite c!488628 (reg!9614 lt!1036998) (ite c!488627 (regOne!19083 lt!1036998) (regTwo!19082 lt!1036998)))))))

(declare-fun b!2976053 () Bool)

(declare-fun res!1227123 () Bool)

(assert (=> b!2976053 (=> (not res!1227123) (not e!1872129))))

(assert (=> b!2976053 (= res!1227123 call!198494)))

(assert (=> b!2976053 (= e!1872126 e!1872129)))

(declare-fun b!2976054 () Bool)

(assert (=> b!2976054 (= e!1872130 e!1872125)))

(assert (=> b!2976054 (= c!488628 ((_ is Star!9285) lt!1036998))))

(declare-fun b!2976055 () Bool)

(declare-fun res!1227124 () Bool)

(assert (=> b!2976055 (=> res!1227124 e!1872131)))

(assert (=> b!2976055 (= res!1227124 (not ((_ is Concat!14606) lt!1036998)))))

(assert (=> b!2976055 (= e!1872126 e!1872131)))

(declare-fun bm!198491 () Bool)

(assert (=> bm!198491 (= call!198496 (validRegex!4018 (ite c!488627 (regTwo!19083 lt!1036998) (regOne!19082 lt!1036998))))))

(declare-fun b!2976056 () Bool)

(assert (=> b!2976056 (= e!1872128 call!198494)))

(assert (= (and d!843106 (not res!1227121)) b!2976054))

(assert (= (and b!2976054 c!488628) b!2976052))

(assert (= (and b!2976054 (not c!488628)) b!2976050))

(assert (= (and b!2976052 res!1227125) b!2976049))

(assert (= (and b!2976050 c!488627) b!2976053))

(assert (= (and b!2976050 (not c!488627)) b!2976055))

(assert (= (and b!2976053 res!1227123) b!2976051))

(assert (= (and b!2976055 (not res!1227124)) b!2976048))

(assert (= (and b!2976048 res!1227122) b!2976056))

(assert (= (or b!2976053 b!2976056) bm!198489))

(assert (= (or b!2976051 b!2976048) bm!198491))

(assert (= (or b!2976049 bm!198489) bm!198490))

(declare-fun m!3340081 () Bool)

(assert (=> b!2976052 m!3340081))

(declare-fun m!3340083 () Bool)

(assert (=> bm!198490 m!3340083))

(declare-fun m!3340085 () Bool)

(assert (=> bm!198491 m!3340085))

(assert (=> b!2975621 d!843106))

(declare-fun bs!526780 () Bool)

(declare-fun d!843108 () Bool)

(assert (= bs!526780 (and d!843108 b!2975621)))

(declare-fun lambda!110810 () Int)

(assert (=> bs!526780 (not (= lambda!110810 lambda!110786))))

(declare-fun bs!526781 () Bool)

(assert (= bs!526781 (and d!843108 b!2975813)))

(assert (=> bs!526781 (not (= lambda!110810 lambda!110791))))

(declare-fun bs!526782 () Bool)

(assert (= bs!526782 (and d!843108 b!2976016)))

(assert (=> bs!526782 (not (= lambda!110810 lambda!110800))))

(assert (=> bs!526780 (= (= (Star!9285 lt!1036998) lt!1036994) (= lambda!110810 lambda!110785))))

(declare-fun bs!526783 () Bool)

(assert (= bs!526783 (and d!843108 d!843094)))

(assert (=> bs!526783 (= (= (Star!9285 lt!1036998) lt!1036994) (= lambda!110810 lambda!110805))))

(declare-fun bs!526784 () Bool)

(assert (= bs!526784 (and d!843108 b!2975820)))

(assert (=> bs!526784 (not (= lambda!110810 lambda!110792))))

(declare-fun bs!526785 () Bool)

(assert (= bs!526785 (and d!843108 b!2976009)))

(assert (=> bs!526785 (not (= lambda!110810 lambda!110799))))

(assert (=> d!843108 true))

(assert (=> d!843108 true))

(declare-fun bs!526786 () Bool)

(assert (= bs!526786 d!843108))

(declare-fun lambda!110811 () Int)

(assert (=> bs!526786 (not (= lambda!110811 lambda!110810))))

(assert (=> bs!526780 (= (= (Star!9285 lt!1036998) lt!1036994) (= lambda!110811 lambda!110786))))

(assert (=> bs!526781 (= (and (= lt!1036998 (reg!9614 r!17423)) (= (Star!9285 lt!1036998) r!17423)) (= lambda!110811 lambda!110791))))

(assert (=> bs!526782 (not (= lambda!110811 lambda!110800))))

(assert (=> bs!526780 (not (= lambda!110811 lambda!110785))))

(assert (=> bs!526783 (not (= lambda!110811 lambda!110805))))

(assert (=> bs!526784 (not (= lambda!110811 lambda!110792))))

(assert (=> bs!526785 (= (and (= lt!1036998 (reg!9614 lt!1036994)) (= (Star!9285 lt!1036998) lt!1036994)) (= lambda!110811 lambda!110799))))

(assert (=> d!843108 true))

(assert (=> d!843108 true))

(assert (=> d!843108 (= (Exists!1565 lambda!110810) (Exists!1565 lambda!110811))))

(declare-fun lt!1037058 () Unit!48949)

(declare-fun choose!17606 (Regex!9285 List!35150) Unit!48949)

(assert (=> d!843108 (= lt!1037058 (choose!17606 lt!1036998 s!11993))))

(assert (=> d!843108 (validRegex!4018 lt!1036998)))

(assert (=> d!843108 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!250 lt!1036998 s!11993) lt!1037058)))

(declare-fun m!3340115 () Bool)

(assert (=> bs!526786 m!3340115))

(declare-fun m!3340117 () Bool)

(assert (=> bs!526786 m!3340117))

(declare-fun m!3340119 () Bool)

(assert (=> bs!526786 m!3340119))

(assert (=> bs!526786 m!3339943))

(assert (=> b!2975621 d!843108))

(declare-fun b!2976146 () Bool)

(declare-fun e!1872185 () Bool)

(declare-fun lt!1037078 () Option!6686)

(assert (=> b!2976146 (= e!1872185 (not (isDefined!5237 lt!1037078)))))

(declare-fun b!2976147 () Bool)

(declare-fun res!1227183 () Bool)

(declare-fun e!1872186 () Bool)

(assert (=> b!2976147 (=> (not res!1227183) (not e!1872186))))

(declare-fun get!10797 (Option!6686) tuple2!33908)

(assert (=> b!2976147 (= res!1227183 (matchR!4167 lt!1036998 (_1!20086 (get!10797 lt!1037078))))))

(declare-fun b!2976148 () Bool)

(declare-fun res!1227185 () Bool)

(assert (=> b!2976148 (=> (not res!1227185) (not e!1872186))))

(assert (=> b!2976148 (= res!1227185 (matchR!4167 lt!1036994 (_2!20086 (get!10797 lt!1037078))))))

(declare-fun b!2976149 () Bool)

(assert (=> b!2976149 (= e!1872186 (= (++!8353 (_1!20086 (get!10797 lt!1037078)) (_2!20086 (get!10797 lt!1037078))) s!11993))))

(declare-fun b!2976150 () Bool)

(declare-fun e!1872187 () Bool)

(assert (=> b!2976150 (= e!1872187 (matchR!4167 lt!1036994 s!11993))))

(declare-fun d!843118 () Bool)

(assert (=> d!843118 e!1872185))

(declare-fun res!1227182 () Bool)

(assert (=> d!843118 (=> res!1227182 e!1872185)))

(assert (=> d!843118 (= res!1227182 e!1872186)))

(declare-fun res!1227181 () Bool)

(assert (=> d!843118 (=> (not res!1227181) (not e!1872186))))

(assert (=> d!843118 (= res!1227181 (isDefined!5237 lt!1037078))))

(declare-fun e!1872183 () Option!6686)

(assert (=> d!843118 (= lt!1037078 e!1872183)))

(declare-fun c!488647 () Bool)

(assert (=> d!843118 (= c!488647 e!1872187)))

(declare-fun res!1227184 () Bool)

(assert (=> d!843118 (=> (not res!1227184) (not e!1872187))))

(assert (=> d!843118 (= res!1227184 (matchR!4167 lt!1036998 Nil!35026))))

(assert (=> d!843118 (validRegex!4018 lt!1036998)))

(assert (=> d!843118 (= (findConcatSeparation!1080 lt!1036998 lt!1036994 Nil!35026 s!11993 s!11993) lt!1037078)))

(declare-fun b!2976151 () Bool)

(declare-fun lt!1037077 () Unit!48949)

(declare-fun lt!1037079 () Unit!48949)

(assert (=> b!2976151 (= lt!1037077 lt!1037079)))

(assert (=> b!2976151 (= (++!8353 (++!8353 Nil!35026 (Cons!35026 (h!40446 s!11993) Nil!35026)) (t!234215 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!971 (List!35150 C!18756 List!35150 List!35150) Unit!48949)

(assert (=> b!2976151 (= lt!1037079 (lemmaMoveElementToOtherListKeepsConcatEq!971 Nil!35026 (h!40446 s!11993) (t!234215 s!11993) s!11993))))

(declare-fun e!1872184 () Option!6686)

(assert (=> b!2976151 (= e!1872184 (findConcatSeparation!1080 lt!1036998 lt!1036994 (++!8353 Nil!35026 (Cons!35026 (h!40446 s!11993) Nil!35026)) (t!234215 s!11993) s!11993))))

(declare-fun b!2976152 () Bool)

(assert (=> b!2976152 (= e!1872183 e!1872184)))

(declare-fun c!488646 () Bool)

(assert (=> b!2976152 (= c!488646 ((_ is Nil!35026) s!11993))))

(declare-fun b!2976153 () Bool)

(assert (=> b!2976153 (= e!1872184 None!6685)))

(declare-fun b!2976154 () Bool)

(assert (=> b!2976154 (= e!1872183 (Some!6685 (tuple2!33909 Nil!35026 s!11993)))))

(assert (= (and d!843118 res!1227184) b!2976150))

(assert (= (and d!843118 c!488647) b!2976154))

(assert (= (and d!843118 (not c!488647)) b!2976152))

(assert (= (and b!2976152 c!488646) b!2976153))

(assert (= (and b!2976152 (not c!488646)) b!2976151))

(assert (= (and d!843118 res!1227181) b!2976147))

(assert (= (and b!2976147 res!1227183) b!2976148))

(assert (= (and b!2976148 res!1227185) b!2976149))

(assert (= (and d!843118 (not res!1227182)) b!2976146))

(declare-fun m!3340143 () Bool)

(assert (=> d!843118 m!3340143))

(declare-fun m!3340145 () Bool)

(assert (=> d!843118 m!3340145))

(assert (=> d!843118 m!3339943))

(declare-fun m!3340147 () Bool)

(assert (=> b!2976148 m!3340147))

(declare-fun m!3340149 () Bool)

(assert (=> b!2976148 m!3340149))

(assert (=> b!2976149 m!3340147))

(declare-fun m!3340151 () Bool)

(assert (=> b!2976149 m!3340151))

(declare-fun m!3340153 () Bool)

(assert (=> b!2976151 m!3340153))

(assert (=> b!2976151 m!3340153))

(declare-fun m!3340155 () Bool)

(assert (=> b!2976151 m!3340155))

(declare-fun m!3340159 () Bool)

(assert (=> b!2976151 m!3340159))

(assert (=> b!2976151 m!3340153))

(declare-fun m!3340163 () Bool)

(assert (=> b!2976151 m!3340163))

(assert (=> b!2976147 m!3340147))

(declare-fun m!3340165 () Bool)

(assert (=> b!2976147 m!3340165))

(assert (=> b!2976146 m!3340143))

(assert (=> b!2976150 m!3339951))

(assert (=> b!2975621 d!843118))

(declare-fun b!2976164 () Bool)

(declare-fun e!1872193 () List!35150)

(assert (=> b!2976164 (= e!1872193 (Cons!35026 (h!40446 Nil!35026) (++!8353 (t!234215 Nil!35026) s!11993)))))

(declare-fun b!2976166 () Bool)

(declare-fun e!1872192 () Bool)

(declare-fun lt!1037082 () List!35150)

(assert (=> b!2976166 (= e!1872192 (or (not (= s!11993 Nil!35026)) (= lt!1037082 Nil!35026)))))

(declare-fun d!843126 () Bool)

(assert (=> d!843126 e!1872192))

(declare-fun res!1227190 () Bool)

(assert (=> d!843126 (=> (not res!1227190) (not e!1872192))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4760 (List!35150) (InoxSet C!18756))

(assert (=> d!843126 (= res!1227190 (= (content!4760 lt!1037082) ((_ map or) (content!4760 Nil!35026) (content!4760 s!11993))))))

(assert (=> d!843126 (= lt!1037082 e!1872193)))

(declare-fun c!488650 () Bool)

(assert (=> d!843126 (= c!488650 ((_ is Nil!35026) Nil!35026))))

(assert (=> d!843126 (= (++!8353 Nil!35026 s!11993) lt!1037082)))

(declare-fun b!2976163 () Bool)

(assert (=> b!2976163 (= e!1872193 s!11993)))

(declare-fun b!2976165 () Bool)

(declare-fun res!1227191 () Bool)

(assert (=> b!2976165 (=> (not res!1227191) (not e!1872192))))

(declare-fun size!26471 (List!35150) Int)

(assert (=> b!2976165 (= res!1227191 (= (size!26471 lt!1037082) (+ (size!26471 Nil!35026) (size!26471 s!11993))))))

(assert (= (and d!843126 c!488650) b!2976163))

(assert (= (and d!843126 (not c!488650)) b!2976164))

(assert (= (and d!843126 res!1227190) b!2976165))

(assert (= (and b!2976165 res!1227191) b!2976166))

(declare-fun m!3340167 () Bool)

(assert (=> b!2976164 m!3340167))

(declare-fun m!3340169 () Bool)

(assert (=> d!843126 m!3340169))

(declare-fun m!3340171 () Bool)

(assert (=> d!843126 m!3340171))

(declare-fun m!3340173 () Bool)

(assert (=> d!843126 m!3340173))

(declare-fun m!3340175 () Bool)

(assert (=> b!2976165 m!3340175))

(declare-fun m!3340177 () Bool)

(assert (=> b!2976165 m!3340177))

(declare-fun m!3340179 () Bool)

(assert (=> b!2976165 m!3340179))

(assert (=> b!2975622 d!843126))

(declare-fun d!843128 () Bool)

(declare-fun res!1227192 () Bool)

(declare-fun e!1872199 () Bool)

(assert (=> d!843128 (=> res!1227192 e!1872199)))

(assert (=> d!843128 (= res!1227192 ((_ is ElementMatch!9285) lt!1036994))))

(assert (=> d!843128 (= (validRegex!4018 lt!1036994) e!1872199)))

(declare-fun b!2976167 () Bool)

(declare-fun e!1872200 () Bool)

(declare-fun e!1872197 () Bool)

(assert (=> b!2976167 (= e!1872200 e!1872197)))

(declare-fun res!1227193 () Bool)

(assert (=> b!2976167 (=> (not res!1227193) (not e!1872197))))

(declare-fun call!198505 () Bool)

(assert (=> b!2976167 (= res!1227193 call!198505)))

(declare-fun b!2976168 () Bool)

(declare-fun e!1872196 () Bool)

(declare-fun call!198504 () Bool)

(assert (=> b!2976168 (= e!1872196 call!198504)))

(declare-fun b!2976169 () Bool)

(declare-fun e!1872194 () Bool)

(declare-fun e!1872195 () Bool)

(assert (=> b!2976169 (= e!1872194 e!1872195)))

(declare-fun c!488651 () Bool)

(assert (=> b!2976169 (= c!488651 ((_ is Union!9285) lt!1036994))))

(declare-fun bm!198498 () Bool)

(declare-fun call!198503 () Bool)

(assert (=> bm!198498 (= call!198503 call!198504)))

(declare-fun b!2976170 () Bool)

(declare-fun e!1872198 () Bool)

(assert (=> b!2976170 (= e!1872198 call!198505)))

(declare-fun b!2976171 () Bool)

(assert (=> b!2976171 (= e!1872194 e!1872196)))

(declare-fun res!1227196 () Bool)

(assert (=> b!2976171 (= res!1227196 (not (nullable!2977 (reg!9614 lt!1036994))))))

(assert (=> b!2976171 (=> (not res!1227196) (not e!1872196))))

(declare-fun c!488652 () Bool)

(declare-fun bm!198499 () Bool)

(assert (=> bm!198499 (= call!198504 (validRegex!4018 (ite c!488652 (reg!9614 lt!1036994) (ite c!488651 (regOne!19083 lt!1036994) (regTwo!19082 lt!1036994)))))))

(declare-fun b!2976172 () Bool)

(declare-fun res!1227194 () Bool)

(assert (=> b!2976172 (=> (not res!1227194) (not e!1872198))))

(assert (=> b!2976172 (= res!1227194 call!198503)))

(assert (=> b!2976172 (= e!1872195 e!1872198)))

(declare-fun b!2976173 () Bool)

(assert (=> b!2976173 (= e!1872199 e!1872194)))

(assert (=> b!2976173 (= c!488652 ((_ is Star!9285) lt!1036994))))

(declare-fun b!2976174 () Bool)

(declare-fun res!1227195 () Bool)

(assert (=> b!2976174 (=> res!1227195 e!1872200)))

(assert (=> b!2976174 (= res!1227195 (not ((_ is Concat!14606) lt!1036994)))))

(assert (=> b!2976174 (= e!1872195 e!1872200)))

(declare-fun bm!198500 () Bool)

(assert (=> bm!198500 (= call!198505 (validRegex!4018 (ite c!488651 (regTwo!19083 lt!1036994) (regOne!19082 lt!1036994))))))

(declare-fun b!2976175 () Bool)

(assert (=> b!2976175 (= e!1872197 call!198503)))

(assert (= (and d!843128 (not res!1227192)) b!2976173))

(assert (= (and b!2976173 c!488652) b!2976171))

(assert (= (and b!2976173 (not c!488652)) b!2976169))

(assert (= (and b!2976171 res!1227196) b!2976168))

(assert (= (and b!2976169 c!488651) b!2976172))

(assert (= (and b!2976169 (not c!488651)) b!2976174))

(assert (= (and b!2976172 res!1227194) b!2976170))

(assert (= (and b!2976174 (not res!1227195)) b!2976167))

(assert (= (and b!2976167 res!1227193) b!2976175))

(assert (= (or b!2976172 b!2976175) bm!198498))

(assert (= (or b!2976170 b!2976167) bm!198500))

(assert (= (or b!2976168 bm!198498) bm!198499))

(declare-fun m!3340181 () Bool)

(assert (=> b!2976171 m!3340181))

(declare-fun m!3340183 () Bool)

(assert (=> bm!198499 m!3340183))

(declare-fun m!3340185 () Bool)

(assert (=> bm!198500 m!3340185))

(assert (=> b!2975618 d!843128))

(declare-fun b!2976180 () Bool)

(declare-fun e!1872203 () Bool)

(declare-fun tp!948232 () Bool)

(assert (=> b!2976180 (= e!1872203 (and tp_is_empty!16133 tp!948232))))

(assert (=> b!2975625 (= tp!948224 e!1872203)))

(assert (= (and b!2975625 ((_ is Cons!35026) (t!234215 s!11993))) b!2976180))

(declare-fun b!2976197 () Bool)

(declare-fun e!1872208 () Bool)

(declare-fun tp!948244 () Bool)

(assert (=> b!2976197 (= e!1872208 tp!948244)))

(assert (=> b!2975620 (= tp!948225 e!1872208)))

(declare-fun b!2976195 () Bool)

(assert (=> b!2976195 (= e!1872208 tp_is_empty!16133)))

(declare-fun b!2976198 () Bool)

(declare-fun tp!948247 () Bool)

(declare-fun tp!948243 () Bool)

(assert (=> b!2976198 (= e!1872208 (and tp!948247 tp!948243))))

(declare-fun b!2976196 () Bool)

(declare-fun tp!948245 () Bool)

(declare-fun tp!948246 () Bool)

(assert (=> b!2976196 (= e!1872208 (and tp!948245 tp!948246))))

(assert (= (and b!2975620 ((_ is ElementMatch!9285) (regOne!19082 r!17423))) b!2976195))

(assert (= (and b!2975620 ((_ is Concat!14606) (regOne!19082 r!17423))) b!2976196))

(assert (= (and b!2975620 ((_ is Star!9285) (regOne!19082 r!17423))) b!2976197))

(assert (= (and b!2975620 ((_ is Union!9285) (regOne!19082 r!17423))) b!2976198))

(declare-fun b!2976201 () Bool)

(declare-fun e!1872209 () Bool)

(declare-fun tp!948249 () Bool)

(assert (=> b!2976201 (= e!1872209 tp!948249)))

(assert (=> b!2975620 (= tp!948228 e!1872209)))

(declare-fun b!2976199 () Bool)

(assert (=> b!2976199 (= e!1872209 tp_is_empty!16133)))

(declare-fun b!2976202 () Bool)

(declare-fun tp!948252 () Bool)

(declare-fun tp!948248 () Bool)

(assert (=> b!2976202 (= e!1872209 (and tp!948252 tp!948248))))

(declare-fun b!2976200 () Bool)

(declare-fun tp!948250 () Bool)

(declare-fun tp!948251 () Bool)

(assert (=> b!2976200 (= e!1872209 (and tp!948250 tp!948251))))

(assert (= (and b!2975620 ((_ is ElementMatch!9285) (regTwo!19082 r!17423))) b!2976199))

(assert (= (and b!2975620 ((_ is Concat!14606) (regTwo!19082 r!17423))) b!2976200))

(assert (= (and b!2975620 ((_ is Star!9285) (regTwo!19082 r!17423))) b!2976201))

(assert (= (and b!2975620 ((_ is Union!9285) (regTwo!19082 r!17423))) b!2976202))

(declare-fun b!2976205 () Bool)

(declare-fun e!1872210 () Bool)

(declare-fun tp!948254 () Bool)

(assert (=> b!2976205 (= e!1872210 tp!948254)))

(assert (=> b!2975628 (= tp!948229 e!1872210)))

(declare-fun b!2976203 () Bool)

(assert (=> b!2976203 (= e!1872210 tp_is_empty!16133)))

(declare-fun b!2976206 () Bool)

(declare-fun tp!948257 () Bool)

(declare-fun tp!948253 () Bool)

(assert (=> b!2976206 (= e!1872210 (and tp!948257 tp!948253))))

(declare-fun b!2976204 () Bool)

(declare-fun tp!948255 () Bool)

(declare-fun tp!948256 () Bool)

(assert (=> b!2976204 (= e!1872210 (and tp!948255 tp!948256))))

(assert (= (and b!2975628 ((_ is ElementMatch!9285) (reg!9614 r!17423))) b!2976203))

(assert (= (and b!2975628 ((_ is Concat!14606) (reg!9614 r!17423))) b!2976204))

(assert (= (and b!2975628 ((_ is Star!9285) (reg!9614 r!17423))) b!2976205))

(assert (= (and b!2975628 ((_ is Union!9285) (reg!9614 r!17423))) b!2976206))

(declare-fun b!2976209 () Bool)

(declare-fun e!1872211 () Bool)

(declare-fun tp!948259 () Bool)

(assert (=> b!2976209 (= e!1872211 tp!948259)))

(assert (=> b!2975623 (= tp!948226 e!1872211)))

(declare-fun b!2976207 () Bool)

(assert (=> b!2976207 (= e!1872211 tp_is_empty!16133)))

(declare-fun b!2976210 () Bool)

(declare-fun tp!948262 () Bool)

(declare-fun tp!948258 () Bool)

(assert (=> b!2976210 (= e!1872211 (and tp!948262 tp!948258))))

(declare-fun b!2976208 () Bool)

(declare-fun tp!948260 () Bool)

(declare-fun tp!948261 () Bool)

(assert (=> b!2976208 (= e!1872211 (and tp!948260 tp!948261))))

(assert (= (and b!2975623 ((_ is ElementMatch!9285) (regOne!19083 r!17423))) b!2976207))

(assert (= (and b!2975623 ((_ is Concat!14606) (regOne!19083 r!17423))) b!2976208))

(assert (= (and b!2975623 ((_ is Star!9285) (regOne!19083 r!17423))) b!2976209))

(assert (= (and b!2975623 ((_ is Union!9285) (regOne!19083 r!17423))) b!2976210))

(declare-fun b!2976213 () Bool)

(declare-fun e!1872212 () Bool)

(declare-fun tp!948264 () Bool)

(assert (=> b!2976213 (= e!1872212 tp!948264)))

(assert (=> b!2975623 (= tp!948227 e!1872212)))

(declare-fun b!2976211 () Bool)

(assert (=> b!2976211 (= e!1872212 tp_is_empty!16133)))

(declare-fun b!2976214 () Bool)

(declare-fun tp!948267 () Bool)

(declare-fun tp!948263 () Bool)

(assert (=> b!2976214 (= e!1872212 (and tp!948267 tp!948263))))

(declare-fun b!2976212 () Bool)

(declare-fun tp!948265 () Bool)

(declare-fun tp!948266 () Bool)

(assert (=> b!2976212 (= e!1872212 (and tp!948265 tp!948266))))

(assert (= (and b!2975623 ((_ is ElementMatch!9285) (regTwo!19083 r!17423))) b!2976211))

(assert (= (and b!2975623 ((_ is Concat!14606) (regTwo!19083 r!17423))) b!2976212))

(assert (= (and b!2975623 ((_ is Star!9285) (regTwo!19083 r!17423))) b!2976213))

(assert (= (and b!2975623 ((_ is Union!9285) (regTwo!19083 r!17423))) b!2976214))

(check-sat (not b!2975969) (not d!843072) (not b!2976150) (not b!2976206) (not d!843118) (not b!2976147) (not b!2976201) (not bm!198491) (not d!843126) (not b!2976151) (not bm!198425) (not b!2976197) (not d!843058) (not d!843088) (not b!2975725) (not b!2976214) (not bm!198476) (not d!843090) (not bm!198490) (not b!2976149) (not b!2975823) (not b!2976202) (not b!2976213) (not b!2976148) (not b!2975817) (not b!2975829) (not b!2975672) (not b!2976205) (not bm!198477) (not b!2976200) (not b!2975833) (not b!2976171) (not d!843078) (not b!2976052) (not b!2976164) (not b!2975671) (not b!2976204) (not b!2976209) (not b!2976146) (not b!2975830) (not bm!198426) (not bm!198445) (not b!2975957) (not bm!198485) (not b!2976208) tp_is_empty!16133 (not d!843104) (not b!2975825) (not b!2976198) (not bm!198446) (not b!2975669) (not b!2975664) (not d!843086) (not b!2976165) (not b!2975821) (not b!2975662) (not b!2975668) (not bm!198478) (not b!2976013) (not b!2976212) (not d!843108) (not b!2976017) (not b!2975832) (not b!2976196) (not d!843070) (not bm!198480) (not bm!198447) (not b!2976210) (not d!843094) (not b!2976180) (not bm!198500) (not bm!198499) (not bm!198408) (not bm!198484) (not bm!198481))
(check-sat)
