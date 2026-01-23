; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!292212 () Bool)

(assert start!292212)

(declare-fun b!3061687 () Bool)

(declare-fun res!1256938 () Bool)

(declare-fun e!1917081 () Bool)

(assert (=> b!3061687 (=> res!1256938 e!1917081)))

(declare-datatypes ((C!19164 0))(
  ( (C!19165 (val!11618 Int)) )
))
(declare-datatypes ((List!35354 0))(
  ( (Nil!35230) (Cons!35230 (h!40650 C!19164) (t!234419 List!35354)) )
))
(declare-fun s!11993 () List!35354)

(declare-fun ++!8454 (List!35354 List!35354) List!35354)

(assert (=> b!3061687 (= res!1256938 (not (= (++!8454 Nil!35230 s!11993) s!11993)))))

(declare-fun b!3061688 () Bool)

(declare-fun e!1917083 () Bool)

(declare-fun tp!967439 () Bool)

(declare-fun tp!967436 () Bool)

(assert (=> b!3061688 (= e!1917083 (and tp!967439 tp!967436))))

(declare-fun b!3061689 () Bool)

(declare-fun e!1917082 () Bool)

(declare-fun e!1917078 () Bool)

(assert (=> b!3061689 (= e!1917082 e!1917078)))

(declare-fun res!1256935 () Bool)

(assert (=> b!3061689 (=> res!1256935 e!1917078)))

(declare-datatypes ((Regex!9489 0))(
  ( (ElementMatch!9489 (c!508307 C!19164)) (Concat!14810 (regOne!19490 Regex!9489) (regTwo!19490 Regex!9489)) (EmptyExpr!9489) (Star!9489 (reg!9818 Regex!9489)) (EmptyLang!9489) (Union!9489 (regOne!19491 Regex!9489) (regTwo!19491 Regex!9489)) )
))
(declare-fun lt!1049970 () Regex!9489)

(declare-fun isEmptyLang!540 (Regex!9489) Bool)

(assert (=> b!3061689 (= res!1256935 (isEmptyLang!540 lt!1049970))))

(declare-fun lt!1049968 () Regex!9489)

(declare-fun r!17423 () Regex!9489)

(declare-fun simplify!444 (Regex!9489) Regex!9489)

(assert (=> b!3061689 (= lt!1049968 (simplify!444 (regTwo!19490 r!17423)))))

(assert (=> b!3061689 (= lt!1049970 (simplify!444 (regOne!19490 r!17423)))))

(declare-fun b!3061690 () Bool)

(declare-fun res!1256939 () Bool)

(assert (=> b!3061690 (=> res!1256939 e!1917081)))

(declare-fun nullable!3135 (Regex!9489) Bool)

(assert (=> b!3061690 (= res!1256939 (not (nullable!3135 (regOne!19490 r!17423))))))

(declare-fun b!3061691 () Bool)

(declare-fun res!1256946 () Bool)

(assert (=> b!3061691 (=> res!1256946 e!1917081)))

(declare-fun validRegex!4222 (Regex!9489) Bool)

(assert (=> b!3061691 (= res!1256946 (not (validRegex!4222 (regTwo!19490 r!17423))))))

(declare-fun b!3061692 () Bool)

(declare-fun res!1256940 () Bool)

(assert (=> b!3061692 (=> res!1256940 e!1917082)))

(declare-fun isEmpty!19545 (List!35354) Bool)

(assert (=> b!3061692 (= res!1256940 (isEmpty!19545 s!11993))))

(declare-fun b!3061693 () Bool)

(declare-fun e!1917080 () Bool)

(assert (=> b!3061693 (= e!1917080 (not e!1917082))))

(declare-fun res!1256942 () Bool)

(assert (=> b!3061693 (=> res!1256942 e!1917082)))

(declare-fun lt!1049967 () Bool)

(get-info :version)

(assert (=> b!3061693 (= res!1256942 (or lt!1049967 (not ((_ is Concat!14810) r!17423))))))

(declare-fun matchRSpec!1626 (Regex!9489 List!35354) Bool)

(assert (=> b!3061693 (= lt!1049967 (matchRSpec!1626 r!17423 s!11993))))

(declare-fun matchR!4371 (Regex!9489 List!35354) Bool)

(assert (=> b!3061693 (= lt!1049967 (matchR!4371 r!17423 s!11993))))

(declare-datatypes ((Unit!49417 0))(
  ( (Unit!49418) )
))
(declare-fun lt!1049965 () Unit!49417)

(declare-fun mainMatchTheorem!1626 (Regex!9489 List!35354) Unit!49417)

(assert (=> b!3061693 (= lt!1049965 (mainMatchTheorem!1626 r!17423 s!11993))))

(declare-fun b!3061694 () Bool)

(declare-fun isPrefix!2762 (List!35354 List!35354) Bool)

(assert (=> b!3061694 (= e!1917081 (isPrefix!2762 Nil!35230 Nil!35230))))

(declare-fun b!3061695 () Bool)

(declare-fun res!1256943 () Bool)

(assert (=> b!3061695 (=> res!1256943 e!1917078)))

(assert (=> b!3061695 (= res!1256943 (isEmptyLang!540 lt!1049968))))

(declare-fun b!3061696 () Bool)

(declare-fun res!1256944 () Bool)

(assert (=> b!3061696 (=> res!1256944 e!1917081)))

(assert (=> b!3061696 (= res!1256944 (not (validRegex!4222 (regOne!19490 r!17423))))))

(declare-fun res!1256936 () Bool)

(assert (=> start!292212 (=> (not res!1256936) (not e!1917080))))

(assert (=> start!292212 (= res!1256936 (validRegex!4222 r!17423))))

(assert (=> start!292212 e!1917080))

(assert (=> start!292212 e!1917083))

(declare-fun e!1917079 () Bool)

(assert (=> start!292212 e!1917079))

(declare-fun b!3061697 () Bool)

(declare-fun tp!967441 () Bool)

(declare-fun tp!967440 () Bool)

(assert (=> b!3061697 (= e!1917083 (and tp!967441 tp!967440))))

(declare-fun b!3061698 () Bool)

(assert (=> b!3061698 (= e!1917078 e!1917081)))

(declare-fun res!1256937 () Bool)

(assert (=> b!3061698 (=> res!1256937 e!1917081)))

(declare-fun lt!1049969 () Bool)

(assert (=> b!3061698 (= res!1256937 (not lt!1049969))))

(assert (=> b!3061698 (= lt!1049969 (matchR!4371 lt!1049968 s!11993))))

(assert (=> b!3061698 (= lt!1049969 (matchR!4371 (regTwo!19490 r!17423) s!11993))))

(declare-fun lt!1049966 () Unit!49417)

(declare-fun lemmaSimplifySound!274 (Regex!9489 List!35354) Unit!49417)

(assert (=> b!3061698 (= lt!1049966 (lemmaSimplifySound!274 (regTwo!19490 r!17423) s!11993))))

(declare-fun b!3061699 () Bool)

(declare-fun tp_is_empty!16541 () Bool)

(declare-fun tp!967437 () Bool)

(assert (=> b!3061699 (= e!1917079 (and tp_is_empty!16541 tp!967437))))

(declare-fun b!3061700 () Bool)

(declare-fun res!1256945 () Bool)

(assert (=> b!3061700 (=> res!1256945 e!1917081)))

(assert (=> b!3061700 (= res!1256945 (not (matchR!4371 (regOne!19490 r!17423) Nil!35230)))))

(declare-fun b!3061701 () Bool)

(declare-fun tp!967438 () Bool)

(assert (=> b!3061701 (= e!1917083 tp!967438)))

(declare-fun b!3061702 () Bool)

(declare-fun res!1256941 () Bool)

(assert (=> b!3061702 (=> res!1256941 e!1917078)))

(declare-fun isEmptyExpr!546 (Regex!9489) Bool)

(assert (=> b!3061702 (= res!1256941 (not (isEmptyExpr!546 lt!1049970)))))

(declare-fun b!3061703 () Bool)

(assert (=> b!3061703 (= e!1917083 tp_is_empty!16541)))

(assert (= (and start!292212 res!1256936) b!3061693))

(assert (= (and b!3061693 (not res!1256942)) b!3061692))

(assert (= (and b!3061692 (not res!1256940)) b!3061689))

(assert (= (and b!3061689 (not res!1256935)) b!3061695))

(assert (= (and b!3061695 (not res!1256943)) b!3061702))

(assert (= (and b!3061702 (not res!1256941)) b!3061698))

(assert (= (and b!3061698 (not res!1256937)) b!3061690))

(assert (= (and b!3061690 (not res!1256939)) b!3061700))

(assert (= (and b!3061700 (not res!1256945)) b!3061696))

(assert (= (and b!3061696 (not res!1256944)) b!3061691))

(assert (= (and b!3061691 (not res!1256946)) b!3061687))

(assert (= (and b!3061687 (not res!1256938)) b!3061694))

(assert (= (and start!292212 ((_ is ElementMatch!9489) r!17423)) b!3061703))

(assert (= (and start!292212 ((_ is Concat!14810) r!17423)) b!3061688))

(assert (= (and start!292212 ((_ is Star!9489) r!17423)) b!3061701))

(assert (= (and start!292212 ((_ is Union!9489) r!17423)) b!3061697))

(assert (= (and start!292212 ((_ is Cons!35230) s!11993)) b!3061699))

(declare-fun m!3381859 () Bool)

(assert (=> b!3061694 m!3381859))

(declare-fun m!3381861 () Bool)

(assert (=> b!3061696 m!3381861))

(declare-fun m!3381863 () Bool)

(assert (=> b!3061692 m!3381863))

(declare-fun m!3381865 () Bool)

(assert (=> b!3061698 m!3381865))

(declare-fun m!3381867 () Bool)

(assert (=> b!3061698 m!3381867))

(declare-fun m!3381869 () Bool)

(assert (=> b!3061698 m!3381869))

(declare-fun m!3381871 () Bool)

(assert (=> b!3061687 m!3381871))

(declare-fun m!3381873 () Bool)

(assert (=> start!292212 m!3381873))

(declare-fun m!3381875 () Bool)

(assert (=> b!3061700 m!3381875))

(declare-fun m!3381877 () Bool)

(assert (=> b!3061689 m!3381877))

(declare-fun m!3381879 () Bool)

(assert (=> b!3061689 m!3381879))

(declare-fun m!3381881 () Bool)

(assert (=> b!3061689 m!3381881))

(declare-fun m!3381883 () Bool)

(assert (=> b!3061691 m!3381883))

(declare-fun m!3381885 () Bool)

(assert (=> b!3061695 m!3381885))

(declare-fun m!3381887 () Bool)

(assert (=> b!3061690 m!3381887))

(declare-fun m!3381889 () Bool)

(assert (=> b!3061702 m!3381889))

(declare-fun m!3381891 () Bool)

(assert (=> b!3061693 m!3381891))

(declare-fun m!3381893 () Bool)

(assert (=> b!3061693 m!3381893))

(declare-fun m!3381895 () Bool)

(assert (=> b!3061693 m!3381895))

(check-sat (not b!3061691) (not b!3061692) (not b!3061698) (not b!3061697) (not b!3061693) (not b!3061690) (not b!3061694) (not b!3061687) (not b!3061699) (not b!3061700) (not b!3061702) (not b!3061701) (not b!3061689) (not b!3061688) tp_is_empty!16541 (not b!3061696) (not b!3061695) (not start!292212))
(check-sat)
(get-model)

(declare-fun b!3061909 () Bool)

(assert (=> b!3061909 true))

(assert (=> b!3061909 true))

(declare-fun bs!532464 () Bool)

(declare-fun b!3061911 () Bool)

(assert (= bs!532464 (and b!3061911 b!3061909)))

(declare-fun lambda!113896 () Int)

(declare-fun lambda!113895 () Int)

(assert (=> bs!532464 (not (= lambda!113896 lambda!113895))))

(assert (=> b!3061911 true))

(assert (=> b!3061911 true))

(declare-fun b!3061908 () Bool)

(declare-fun e!1917209 () Bool)

(declare-fun e!1917205 () Bool)

(assert (=> b!3061908 (= e!1917209 e!1917205)))

(declare-fun res!1257013 () Bool)

(assert (=> b!3061908 (= res!1257013 (not ((_ is EmptyLang!9489) r!17423)))))

(assert (=> b!3061908 (=> (not res!1257013) (not e!1917205))))

(declare-fun bm!211857 () Bool)

(declare-fun call!211863 () Bool)

(assert (=> bm!211857 (= call!211863 (isEmpty!19545 s!11993))))

(declare-fun e!1917206 () Bool)

(declare-fun call!211862 () Bool)

(assert (=> b!3061909 (= e!1917206 call!211862)))

(declare-fun b!3061910 () Bool)

(declare-fun c!508380 () Bool)

(assert (=> b!3061910 (= c!508380 ((_ is ElementMatch!9489) r!17423))))

(declare-fun e!1917204 () Bool)

(assert (=> b!3061910 (= e!1917205 e!1917204)))

(declare-fun c!508377 () Bool)

(declare-fun bm!211858 () Bool)

(declare-fun Exists!1751 (Int) Bool)

(assert (=> bm!211858 (= call!211862 (Exists!1751 (ite c!508377 lambda!113895 lambda!113896)))))

(declare-fun e!1917208 () Bool)

(assert (=> b!3061911 (= e!1917208 call!211862)))

(declare-fun b!3061912 () Bool)

(assert (=> b!3061912 (= e!1917204 (= s!11993 (Cons!35230 (c!508307 r!17423) Nil!35230)))))

(declare-fun b!3061913 () Bool)

(declare-fun e!1917207 () Bool)

(declare-fun e!1917203 () Bool)

(assert (=> b!3061913 (= e!1917207 e!1917203)))

(declare-fun res!1257012 () Bool)

(assert (=> b!3061913 (= res!1257012 (matchRSpec!1626 (regOne!19491 r!17423) s!11993))))

(assert (=> b!3061913 (=> res!1257012 e!1917203)))

(declare-fun b!3061907 () Bool)

(assert (=> b!3061907 (= e!1917203 (matchRSpec!1626 (regTwo!19491 r!17423) s!11993))))

(declare-fun d!855304 () Bool)

(declare-fun c!508378 () Bool)

(assert (=> d!855304 (= c!508378 ((_ is EmptyExpr!9489) r!17423))))

(assert (=> d!855304 (= (matchRSpec!1626 r!17423 s!11993) e!1917209)))

(declare-fun b!3061914 () Bool)

(assert (=> b!3061914 (= e!1917209 call!211863)))

(declare-fun b!3061915 () Bool)

(declare-fun c!508379 () Bool)

(assert (=> b!3061915 (= c!508379 ((_ is Union!9489) r!17423))))

(assert (=> b!3061915 (= e!1917204 e!1917207)))

(declare-fun b!3061916 () Bool)

(assert (=> b!3061916 (= e!1917207 e!1917208)))

(assert (=> b!3061916 (= c!508377 ((_ is Star!9489) r!17423))))

(declare-fun b!3061917 () Bool)

(declare-fun res!1257014 () Bool)

(assert (=> b!3061917 (=> res!1257014 e!1917206)))

(assert (=> b!3061917 (= res!1257014 call!211863)))

(assert (=> b!3061917 (= e!1917208 e!1917206)))

(assert (= (and d!855304 c!508378) b!3061914))

(assert (= (and d!855304 (not c!508378)) b!3061908))

(assert (= (and b!3061908 res!1257013) b!3061910))

(assert (= (and b!3061910 c!508380) b!3061912))

(assert (= (and b!3061910 (not c!508380)) b!3061915))

(assert (= (and b!3061915 c!508379) b!3061913))

(assert (= (and b!3061915 (not c!508379)) b!3061916))

(assert (= (and b!3061913 (not res!1257012)) b!3061907))

(assert (= (and b!3061916 c!508377) b!3061917))

(assert (= (and b!3061916 (not c!508377)) b!3061911))

(assert (= (and b!3061917 (not res!1257014)) b!3061909))

(assert (= (or b!3061909 b!3061911) bm!211858))

(assert (= (or b!3061914 b!3061917) bm!211857))

(assert (=> bm!211857 m!3381863))

(declare-fun m!3381951 () Bool)

(assert (=> bm!211858 m!3381951))

(declare-fun m!3381953 () Bool)

(assert (=> b!3061913 m!3381953))

(declare-fun m!3381955 () Bool)

(assert (=> b!3061907 m!3381955))

(assert (=> b!3061693 d!855304))

(declare-fun bm!211865 () Bool)

(declare-fun call!211870 () Bool)

(assert (=> bm!211865 (= call!211870 (isEmpty!19545 s!11993))))

(declare-fun d!855318 () Bool)

(declare-fun e!1917251 () Bool)

(assert (=> d!855318 e!1917251))

(declare-fun c!508399 () Bool)

(assert (=> d!855318 (= c!508399 ((_ is EmptyExpr!9489) r!17423))))

(declare-fun lt!1050002 () Bool)

(declare-fun e!1917249 () Bool)

(assert (=> d!855318 (= lt!1050002 e!1917249)))

(declare-fun c!508397 () Bool)

(assert (=> d!855318 (= c!508397 (isEmpty!19545 s!11993))))

(assert (=> d!855318 (validRegex!4222 r!17423)))

(assert (=> d!855318 (= (matchR!4371 r!17423 s!11993) lt!1050002)))

(declare-fun b!3061993 () Bool)

(declare-fun e!1917248 () Bool)

(assert (=> b!3061993 (= e!1917251 e!1917248)))

(declare-fun c!508398 () Bool)

(assert (=> b!3061993 (= c!508398 ((_ is EmptyLang!9489) r!17423))))

(declare-fun b!3061994 () Bool)

(assert (=> b!3061994 (= e!1917248 (not lt!1050002))))

(declare-fun b!3061995 () Bool)

(declare-fun derivativeStep!2730 (Regex!9489 C!19164) Regex!9489)

(declare-fun head!6789 (List!35354) C!19164)

(declare-fun tail!5015 (List!35354) List!35354)

(assert (=> b!3061995 (= e!1917249 (matchR!4371 (derivativeStep!2730 r!17423 (head!6789 s!11993)) (tail!5015 s!11993)))))

(declare-fun b!3061996 () Bool)

(declare-fun e!1917247 () Bool)

(declare-fun e!1917246 () Bool)

(assert (=> b!3061996 (= e!1917247 e!1917246)))

(declare-fun res!1257057 () Bool)

(assert (=> b!3061996 (=> res!1257057 e!1917246)))

(assert (=> b!3061996 (= res!1257057 call!211870)))

(declare-fun b!3061997 () Bool)

(declare-fun res!1257055 () Bool)

(declare-fun e!1917250 () Bool)

(assert (=> b!3061997 (=> (not res!1257055) (not e!1917250))))

(assert (=> b!3061997 (= res!1257055 (isEmpty!19545 (tail!5015 s!11993)))))

(declare-fun b!3061998 () Bool)

(declare-fun e!1917245 () Bool)

(assert (=> b!3061998 (= e!1917245 e!1917247)))

(declare-fun res!1257054 () Bool)

(assert (=> b!3061998 (=> (not res!1257054) (not e!1917247))))

(assert (=> b!3061998 (= res!1257054 (not lt!1050002))))

(declare-fun b!3061999 () Bool)

(declare-fun res!1257050 () Bool)

(assert (=> b!3061999 (=> res!1257050 e!1917246)))

(assert (=> b!3061999 (= res!1257050 (not (isEmpty!19545 (tail!5015 s!11993))))))

(declare-fun b!3062000 () Bool)

(declare-fun res!1257056 () Bool)

(assert (=> b!3062000 (=> (not res!1257056) (not e!1917250))))

(assert (=> b!3062000 (= res!1257056 (not call!211870))))

(declare-fun b!3062001 () Bool)

(assert (=> b!3062001 (= e!1917250 (= (head!6789 s!11993) (c!508307 r!17423)))))

(declare-fun b!3062002 () Bool)

(assert (=> b!3062002 (= e!1917246 (not (= (head!6789 s!11993) (c!508307 r!17423))))))

(declare-fun b!3062003 () Bool)

(declare-fun res!1257053 () Bool)

(assert (=> b!3062003 (=> res!1257053 e!1917245)))

(assert (=> b!3062003 (= res!1257053 e!1917250)))

(declare-fun res!1257051 () Bool)

(assert (=> b!3062003 (=> (not res!1257051) (not e!1917250))))

(assert (=> b!3062003 (= res!1257051 lt!1050002)))

(declare-fun b!3062004 () Bool)

(assert (=> b!3062004 (= e!1917249 (nullable!3135 r!17423))))

(declare-fun b!3062005 () Bool)

(declare-fun res!1257052 () Bool)

(assert (=> b!3062005 (=> res!1257052 e!1917245)))

(assert (=> b!3062005 (= res!1257052 (not ((_ is ElementMatch!9489) r!17423)))))

(assert (=> b!3062005 (= e!1917248 e!1917245)))

(declare-fun b!3062006 () Bool)

(assert (=> b!3062006 (= e!1917251 (= lt!1050002 call!211870))))

(assert (= (and d!855318 c!508397) b!3062004))

(assert (= (and d!855318 (not c!508397)) b!3061995))

(assert (= (and d!855318 c!508399) b!3062006))

(assert (= (and d!855318 (not c!508399)) b!3061993))

(assert (= (and b!3061993 c!508398) b!3061994))

(assert (= (and b!3061993 (not c!508398)) b!3062005))

(assert (= (and b!3062005 (not res!1257052)) b!3062003))

(assert (= (and b!3062003 res!1257051) b!3062000))

(assert (= (and b!3062000 res!1257056) b!3061997))

(assert (= (and b!3061997 res!1257055) b!3062001))

(assert (= (and b!3062003 (not res!1257053)) b!3061998))

(assert (= (and b!3061998 res!1257054) b!3061996))

(assert (= (and b!3061996 (not res!1257057)) b!3061999))

(assert (= (and b!3061999 (not res!1257050)) b!3062002))

(assert (= (or b!3062006 b!3061996 b!3062000) bm!211865))

(declare-fun m!3381963 () Bool)

(assert (=> b!3061999 m!3381963))

(assert (=> b!3061999 m!3381963))

(declare-fun m!3381965 () Bool)

(assert (=> b!3061999 m!3381965))

(assert (=> b!3061997 m!3381963))

(assert (=> b!3061997 m!3381963))

(assert (=> b!3061997 m!3381965))

(assert (=> bm!211865 m!3381863))

(declare-fun m!3381967 () Bool)

(assert (=> b!3062004 m!3381967))

(declare-fun m!3381969 () Bool)

(assert (=> b!3061995 m!3381969))

(assert (=> b!3061995 m!3381969))

(declare-fun m!3381971 () Bool)

(assert (=> b!3061995 m!3381971))

(assert (=> b!3061995 m!3381963))

(assert (=> b!3061995 m!3381971))

(assert (=> b!3061995 m!3381963))

(declare-fun m!3381973 () Bool)

(assert (=> b!3061995 m!3381973))

(assert (=> d!855318 m!3381863))

(assert (=> d!855318 m!3381873))

(assert (=> b!3062001 m!3381969))

(assert (=> b!3062002 m!3381969))

(assert (=> b!3061693 d!855318))

(declare-fun d!855322 () Bool)

(assert (=> d!855322 (= (matchR!4371 r!17423 s!11993) (matchRSpec!1626 r!17423 s!11993))))

(declare-fun lt!1050006 () Unit!49417)

(declare-fun choose!18128 (Regex!9489 List!35354) Unit!49417)

(assert (=> d!855322 (= lt!1050006 (choose!18128 r!17423 s!11993))))

(assert (=> d!855322 (validRegex!4222 r!17423)))

(assert (=> d!855322 (= (mainMatchTheorem!1626 r!17423 s!11993) lt!1050006)))

(declare-fun bs!532466 () Bool)

(assert (= bs!532466 d!855322))

(assert (=> bs!532466 m!3381893))

(assert (=> bs!532466 m!3381891))

(declare-fun m!3381987 () Bool)

(assert (=> bs!532466 m!3381987))

(assert (=> bs!532466 m!3381873))

(assert (=> b!3061693 d!855322))

(declare-fun d!855326 () Bool)

(assert (=> d!855326 (= (isEmptyLang!540 lt!1049968) ((_ is EmptyLang!9489) lt!1049968))))

(assert (=> b!3061695 d!855326))

(declare-fun b!3062053 () Bool)

(declare-fun res!1257090 () Bool)

(declare-fun e!1917279 () Bool)

(assert (=> b!3062053 (=> (not res!1257090) (not e!1917279))))

(assert (=> b!3062053 (= res!1257090 (= (head!6789 Nil!35230) (head!6789 Nil!35230)))))

(declare-fun b!3062055 () Bool)

(declare-fun e!1917281 () Bool)

(declare-fun size!26555 (List!35354) Int)

(assert (=> b!3062055 (= e!1917281 (>= (size!26555 Nil!35230) (size!26555 Nil!35230)))))

(declare-fun b!3062054 () Bool)

(assert (=> b!3062054 (= e!1917279 (isPrefix!2762 (tail!5015 Nil!35230) (tail!5015 Nil!35230)))))

(declare-fun b!3062052 () Bool)

(declare-fun e!1917280 () Bool)

(assert (=> b!3062052 (= e!1917280 e!1917279)))

(declare-fun res!1257088 () Bool)

(assert (=> b!3062052 (=> (not res!1257088) (not e!1917279))))

(assert (=> b!3062052 (= res!1257088 (not ((_ is Nil!35230) Nil!35230)))))

(declare-fun d!855328 () Bool)

(assert (=> d!855328 e!1917281))

(declare-fun res!1257089 () Bool)

(assert (=> d!855328 (=> res!1257089 e!1917281)))

(declare-fun lt!1050013 () Bool)

(assert (=> d!855328 (= res!1257089 (not lt!1050013))))

(assert (=> d!855328 (= lt!1050013 e!1917280)))

(declare-fun res!1257087 () Bool)

(assert (=> d!855328 (=> res!1257087 e!1917280)))

(assert (=> d!855328 (= res!1257087 ((_ is Nil!35230) Nil!35230))))

(assert (=> d!855328 (= (isPrefix!2762 Nil!35230 Nil!35230) lt!1050013)))

(assert (= (and d!855328 (not res!1257087)) b!3062052))

(assert (= (and b!3062052 res!1257088) b!3062053))

(assert (= (and b!3062053 res!1257090) b!3062054))

(assert (= (and d!855328 (not res!1257089)) b!3062055))

(declare-fun m!3382011 () Bool)

(assert (=> b!3062053 m!3382011))

(assert (=> b!3062053 m!3382011))

(declare-fun m!3382013 () Bool)

(assert (=> b!3062055 m!3382013))

(assert (=> b!3062055 m!3382013))

(declare-fun m!3382015 () Bool)

(assert (=> b!3062054 m!3382015))

(assert (=> b!3062054 m!3382015))

(assert (=> b!3062054 m!3382015))

(assert (=> b!3062054 m!3382015))

(declare-fun m!3382017 () Bool)

(assert (=> b!3062054 m!3382017))

(assert (=> b!3061694 d!855328))

(declare-fun b!3062109 () Bool)

(declare-fun e!1917323 () Bool)

(declare-fun e!1917319 () Bool)

(assert (=> b!3062109 (= e!1917323 e!1917319)))

(declare-fun res!1257127 () Bool)

(assert (=> b!3062109 (= res!1257127 (not (nullable!3135 (reg!9818 (regTwo!19490 r!17423)))))))

(assert (=> b!3062109 (=> (not res!1257127) (not e!1917319))))

(declare-fun b!3062110 () Bool)

(declare-fun e!1917324 () Bool)

(assert (=> b!3062110 (= e!1917324 e!1917323)))

(declare-fun c!508417 () Bool)

(assert (=> b!3062110 (= c!508417 ((_ is Star!9489) (regTwo!19490 r!17423)))))

(declare-fun bm!211881 () Bool)

(declare-fun call!211886 () Bool)

(declare-fun c!508418 () Bool)

(assert (=> bm!211881 (= call!211886 (validRegex!4222 (ite c!508418 (regOne!19491 (regTwo!19490 r!17423)) (regTwo!19490 (regTwo!19490 r!17423)))))))

(declare-fun b!3062111 () Bool)

(declare-fun e!1917322 () Bool)

(assert (=> b!3062111 (= e!1917323 e!1917322)))

(assert (=> b!3062111 (= c!508418 ((_ is Union!9489) (regTwo!19490 r!17423)))))

(declare-fun b!3062112 () Bool)

(declare-fun e!1917325 () Bool)

(declare-fun call!211888 () Bool)

(assert (=> b!3062112 (= e!1917325 call!211888)))

(declare-fun b!3062113 () Bool)

(declare-fun res!1257126 () Bool)

(assert (=> b!3062113 (=> (not res!1257126) (not e!1917325))))

(assert (=> b!3062113 (= res!1257126 call!211886)))

(assert (=> b!3062113 (= e!1917322 e!1917325)))

(declare-fun bm!211882 () Bool)

(declare-fun call!211887 () Bool)

(assert (=> bm!211882 (= call!211887 (validRegex!4222 (ite c!508417 (reg!9818 (regTwo!19490 r!17423)) (ite c!508418 (regTwo!19491 (regTwo!19490 r!17423)) (regOne!19490 (regTwo!19490 r!17423))))))))

(declare-fun b!3062114 () Bool)

(assert (=> b!3062114 (= e!1917319 call!211887)))

(declare-fun b!3062115 () Bool)

(declare-fun res!1257130 () Bool)

(declare-fun e!1917320 () Bool)

(assert (=> b!3062115 (=> res!1257130 e!1917320)))

(assert (=> b!3062115 (= res!1257130 (not ((_ is Concat!14810) (regTwo!19490 r!17423))))))

(assert (=> b!3062115 (= e!1917322 e!1917320)))

(declare-fun b!3062116 () Bool)

(declare-fun e!1917321 () Bool)

(assert (=> b!3062116 (= e!1917321 call!211886)))

(declare-fun d!855340 () Bool)

(declare-fun res!1257128 () Bool)

(assert (=> d!855340 (=> res!1257128 e!1917324)))

(assert (=> d!855340 (= res!1257128 ((_ is ElementMatch!9489) (regTwo!19490 r!17423)))))

(assert (=> d!855340 (= (validRegex!4222 (regTwo!19490 r!17423)) e!1917324)))

(declare-fun b!3062117 () Bool)

(assert (=> b!3062117 (= e!1917320 e!1917321)))

(declare-fun res!1257129 () Bool)

(assert (=> b!3062117 (=> (not res!1257129) (not e!1917321))))

(assert (=> b!3062117 (= res!1257129 call!211888)))

(declare-fun bm!211883 () Bool)

(assert (=> bm!211883 (= call!211888 call!211887)))

(assert (= (and d!855340 (not res!1257128)) b!3062110))

(assert (= (and b!3062110 c!508417) b!3062109))

(assert (= (and b!3062110 (not c!508417)) b!3062111))

(assert (= (and b!3062109 res!1257127) b!3062114))

(assert (= (and b!3062111 c!508418) b!3062113))

(assert (= (and b!3062111 (not c!508418)) b!3062115))

(assert (= (and b!3062113 res!1257126) b!3062112))

(assert (= (and b!3062115 (not res!1257130)) b!3062117))

(assert (= (and b!3062117 res!1257129) b!3062116))

(assert (= (or b!3062113 b!3062116) bm!211881))

(assert (= (or b!3062112 b!3062117) bm!211883))

(assert (= (or b!3062114 bm!211883) bm!211882))

(declare-fun m!3382035 () Bool)

(assert (=> b!3062109 m!3382035))

(declare-fun m!3382037 () Bool)

(assert (=> bm!211881 m!3382037))

(declare-fun m!3382039 () Bool)

(assert (=> bm!211882 m!3382039))

(assert (=> b!3061691 d!855340))

(declare-fun d!855350 () Bool)

(declare-fun nullableFct!894 (Regex!9489) Bool)

(assert (=> d!855350 (= (nullable!3135 (regOne!19490 r!17423)) (nullableFct!894 (regOne!19490 r!17423)))))

(declare-fun bs!532469 () Bool)

(assert (= bs!532469 d!855350))

(declare-fun m!3382041 () Bool)

(assert (=> bs!532469 m!3382041))

(assert (=> b!3061690 d!855350))

(declare-fun d!855352 () Bool)

(assert (=> d!855352 (= (isEmpty!19545 s!11993) ((_ is Nil!35230) s!11993))))

(assert (=> b!3061692 d!855352))

(declare-fun d!855356 () Bool)

(assert (=> d!855356 (= (isEmptyExpr!546 lt!1049970) ((_ is EmptyExpr!9489) lt!1049970))))

(assert (=> b!3061702 d!855356))

(declare-fun b!3062132 () Bool)

(declare-fun e!1917337 () Bool)

(declare-fun e!1917333 () Bool)

(assert (=> b!3062132 (= e!1917337 e!1917333)))

(declare-fun res!1257140 () Bool)

(assert (=> b!3062132 (= res!1257140 (not (nullable!3135 (reg!9818 r!17423))))))

(assert (=> b!3062132 (=> (not res!1257140) (not e!1917333))))

(declare-fun b!3062133 () Bool)

(declare-fun e!1917338 () Bool)

(assert (=> b!3062133 (= e!1917338 e!1917337)))

(declare-fun c!508422 () Bool)

(assert (=> b!3062133 (= c!508422 ((_ is Star!9489) r!17423))))

(declare-fun bm!211885 () Bool)

(declare-fun call!211890 () Bool)

(declare-fun c!508423 () Bool)

(assert (=> bm!211885 (= call!211890 (validRegex!4222 (ite c!508423 (regOne!19491 r!17423) (regTwo!19490 r!17423))))))

(declare-fun b!3062134 () Bool)

(declare-fun e!1917336 () Bool)

(assert (=> b!3062134 (= e!1917337 e!1917336)))

(assert (=> b!3062134 (= c!508423 ((_ is Union!9489) r!17423))))

(declare-fun b!3062135 () Bool)

(declare-fun e!1917339 () Bool)

(declare-fun call!211892 () Bool)

(assert (=> b!3062135 (= e!1917339 call!211892)))

(declare-fun b!3062136 () Bool)

(declare-fun res!1257139 () Bool)

(assert (=> b!3062136 (=> (not res!1257139) (not e!1917339))))

(assert (=> b!3062136 (= res!1257139 call!211890)))

(assert (=> b!3062136 (= e!1917336 e!1917339)))

(declare-fun bm!211886 () Bool)

(declare-fun call!211891 () Bool)

(assert (=> bm!211886 (= call!211891 (validRegex!4222 (ite c!508422 (reg!9818 r!17423) (ite c!508423 (regTwo!19491 r!17423) (regOne!19490 r!17423)))))))

(declare-fun b!3062137 () Bool)

(assert (=> b!3062137 (= e!1917333 call!211891)))

(declare-fun b!3062138 () Bool)

(declare-fun res!1257143 () Bool)

(declare-fun e!1917334 () Bool)

(assert (=> b!3062138 (=> res!1257143 e!1917334)))

(assert (=> b!3062138 (= res!1257143 (not ((_ is Concat!14810) r!17423)))))

(assert (=> b!3062138 (= e!1917336 e!1917334)))

(declare-fun b!3062139 () Bool)

(declare-fun e!1917335 () Bool)

(assert (=> b!3062139 (= e!1917335 call!211890)))

(declare-fun d!855358 () Bool)

(declare-fun res!1257141 () Bool)

(assert (=> d!855358 (=> res!1257141 e!1917338)))

(assert (=> d!855358 (= res!1257141 ((_ is ElementMatch!9489) r!17423))))

(assert (=> d!855358 (= (validRegex!4222 r!17423) e!1917338)))

(declare-fun b!3062140 () Bool)

(assert (=> b!3062140 (= e!1917334 e!1917335)))

(declare-fun res!1257142 () Bool)

(assert (=> b!3062140 (=> (not res!1257142) (not e!1917335))))

(assert (=> b!3062140 (= res!1257142 call!211892)))

(declare-fun bm!211887 () Bool)

(assert (=> bm!211887 (= call!211892 call!211891)))

(assert (= (and d!855358 (not res!1257141)) b!3062133))

(assert (= (and b!3062133 c!508422) b!3062132))

(assert (= (and b!3062133 (not c!508422)) b!3062134))

(assert (= (and b!3062132 res!1257140) b!3062137))

(assert (= (and b!3062134 c!508423) b!3062136))

(assert (= (and b!3062134 (not c!508423)) b!3062138))

(assert (= (and b!3062136 res!1257139) b!3062135))

(assert (= (and b!3062138 (not res!1257143)) b!3062140))

(assert (= (and b!3062140 res!1257142) b!3062139))

(assert (= (or b!3062136 b!3062139) bm!211885))

(assert (= (or b!3062135 b!3062140) bm!211887))

(assert (= (or b!3062137 bm!211887) bm!211886))

(declare-fun m!3382047 () Bool)

(assert (=> b!3062132 m!3382047))

(declare-fun m!3382049 () Bool)

(assert (=> bm!211885 m!3382049))

(declare-fun m!3382051 () Bool)

(assert (=> bm!211886 m!3382051))

(assert (=> start!292212 d!855358))

(declare-fun bm!211888 () Bool)

(declare-fun call!211893 () Bool)

(assert (=> bm!211888 (= call!211893 (isEmpty!19545 s!11993))))

(declare-fun d!855360 () Bool)

(declare-fun e!1917346 () Bool)

(assert (=> d!855360 e!1917346))

(declare-fun c!508426 () Bool)

(assert (=> d!855360 (= c!508426 ((_ is EmptyExpr!9489) lt!1049968))))

(declare-fun lt!1050019 () Bool)

(declare-fun e!1917344 () Bool)

(assert (=> d!855360 (= lt!1050019 e!1917344)))

(declare-fun c!508424 () Bool)

(assert (=> d!855360 (= c!508424 (isEmpty!19545 s!11993))))

(assert (=> d!855360 (validRegex!4222 lt!1049968)))

(assert (=> d!855360 (= (matchR!4371 lt!1049968 s!11993) lt!1050019)))

(declare-fun b!3062141 () Bool)

(declare-fun e!1917343 () Bool)

(assert (=> b!3062141 (= e!1917346 e!1917343)))

(declare-fun c!508425 () Bool)

(assert (=> b!3062141 (= c!508425 ((_ is EmptyLang!9489) lt!1049968))))

(declare-fun b!3062142 () Bool)

(assert (=> b!3062142 (= e!1917343 (not lt!1050019))))

(declare-fun b!3062143 () Bool)

(assert (=> b!3062143 (= e!1917344 (matchR!4371 (derivativeStep!2730 lt!1049968 (head!6789 s!11993)) (tail!5015 s!11993)))))

(declare-fun b!3062144 () Bool)

(declare-fun e!1917342 () Bool)

(declare-fun e!1917341 () Bool)

(assert (=> b!3062144 (= e!1917342 e!1917341)))

(declare-fun res!1257151 () Bool)

(assert (=> b!3062144 (=> res!1257151 e!1917341)))

(assert (=> b!3062144 (= res!1257151 call!211893)))

(declare-fun b!3062145 () Bool)

(declare-fun res!1257149 () Bool)

(declare-fun e!1917345 () Bool)

(assert (=> b!3062145 (=> (not res!1257149) (not e!1917345))))

(assert (=> b!3062145 (= res!1257149 (isEmpty!19545 (tail!5015 s!11993)))))

(declare-fun b!3062146 () Bool)

(declare-fun e!1917340 () Bool)

(assert (=> b!3062146 (= e!1917340 e!1917342)))

(declare-fun res!1257148 () Bool)

(assert (=> b!3062146 (=> (not res!1257148) (not e!1917342))))

(assert (=> b!3062146 (= res!1257148 (not lt!1050019))))

(declare-fun b!3062147 () Bool)

(declare-fun res!1257144 () Bool)

(assert (=> b!3062147 (=> res!1257144 e!1917341)))

(assert (=> b!3062147 (= res!1257144 (not (isEmpty!19545 (tail!5015 s!11993))))))

(declare-fun b!3062148 () Bool)

(declare-fun res!1257150 () Bool)

(assert (=> b!3062148 (=> (not res!1257150) (not e!1917345))))

(assert (=> b!3062148 (= res!1257150 (not call!211893))))

(declare-fun b!3062149 () Bool)

(assert (=> b!3062149 (= e!1917345 (= (head!6789 s!11993) (c!508307 lt!1049968)))))

(declare-fun b!3062150 () Bool)

(assert (=> b!3062150 (= e!1917341 (not (= (head!6789 s!11993) (c!508307 lt!1049968))))))

(declare-fun b!3062151 () Bool)

(declare-fun res!1257147 () Bool)

(assert (=> b!3062151 (=> res!1257147 e!1917340)))

(assert (=> b!3062151 (= res!1257147 e!1917345)))

(declare-fun res!1257145 () Bool)

(assert (=> b!3062151 (=> (not res!1257145) (not e!1917345))))

(assert (=> b!3062151 (= res!1257145 lt!1050019)))

(declare-fun b!3062152 () Bool)

(assert (=> b!3062152 (= e!1917344 (nullable!3135 lt!1049968))))

(declare-fun b!3062153 () Bool)

(declare-fun res!1257146 () Bool)

(assert (=> b!3062153 (=> res!1257146 e!1917340)))

(assert (=> b!3062153 (= res!1257146 (not ((_ is ElementMatch!9489) lt!1049968)))))

(assert (=> b!3062153 (= e!1917343 e!1917340)))

(declare-fun b!3062154 () Bool)

(assert (=> b!3062154 (= e!1917346 (= lt!1050019 call!211893))))

(assert (= (and d!855360 c!508424) b!3062152))

(assert (= (and d!855360 (not c!508424)) b!3062143))

(assert (= (and d!855360 c!508426) b!3062154))

(assert (= (and d!855360 (not c!508426)) b!3062141))

(assert (= (and b!3062141 c!508425) b!3062142))

(assert (= (and b!3062141 (not c!508425)) b!3062153))

(assert (= (and b!3062153 (not res!1257146)) b!3062151))

(assert (= (and b!3062151 res!1257145) b!3062148))

(assert (= (and b!3062148 res!1257150) b!3062145))

(assert (= (and b!3062145 res!1257149) b!3062149))

(assert (= (and b!3062151 (not res!1257147)) b!3062146))

(assert (= (and b!3062146 res!1257148) b!3062144))

(assert (= (and b!3062144 (not res!1257151)) b!3062147))

(assert (= (and b!3062147 (not res!1257144)) b!3062150))

(assert (= (or b!3062154 b!3062144 b!3062148) bm!211888))

(assert (=> b!3062147 m!3381963))

(assert (=> b!3062147 m!3381963))

(assert (=> b!3062147 m!3381965))

(assert (=> b!3062145 m!3381963))

(assert (=> b!3062145 m!3381963))

(assert (=> b!3062145 m!3381965))

(assert (=> bm!211888 m!3381863))

(declare-fun m!3382053 () Bool)

(assert (=> b!3062152 m!3382053))

(assert (=> b!3062143 m!3381969))

(assert (=> b!3062143 m!3381969))

(declare-fun m!3382055 () Bool)

(assert (=> b!3062143 m!3382055))

(assert (=> b!3062143 m!3381963))

(assert (=> b!3062143 m!3382055))

(assert (=> b!3062143 m!3381963))

(declare-fun m!3382057 () Bool)

(assert (=> b!3062143 m!3382057))

(assert (=> d!855360 m!3381863))

(declare-fun m!3382059 () Bool)

(assert (=> d!855360 m!3382059))

(assert (=> b!3062149 m!3381969))

(assert (=> b!3062150 m!3381969))

(assert (=> b!3061698 d!855360))

(declare-fun bm!211889 () Bool)

(declare-fun call!211894 () Bool)

(assert (=> bm!211889 (= call!211894 (isEmpty!19545 s!11993))))

(declare-fun d!855362 () Bool)

(declare-fun e!1917353 () Bool)

(assert (=> d!855362 e!1917353))

(declare-fun c!508429 () Bool)

(assert (=> d!855362 (= c!508429 ((_ is EmptyExpr!9489) (regTwo!19490 r!17423)))))

(declare-fun lt!1050020 () Bool)

(declare-fun e!1917351 () Bool)

(assert (=> d!855362 (= lt!1050020 e!1917351)))

(declare-fun c!508427 () Bool)

(assert (=> d!855362 (= c!508427 (isEmpty!19545 s!11993))))

(assert (=> d!855362 (validRegex!4222 (regTwo!19490 r!17423))))

(assert (=> d!855362 (= (matchR!4371 (regTwo!19490 r!17423) s!11993) lt!1050020)))

(declare-fun b!3062155 () Bool)

(declare-fun e!1917350 () Bool)

(assert (=> b!3062155 (= e!1917353 e!1917350)))

(declare-fun c!508428 () Bool)

(assert (=> b!3062155 (= c!508428 ((_ is EmptyLang!9489) (regTwo!19490 r!17423)))))

(declare-fun b!3062156 () Bool)

(assert (=> b!3062156 (= e!1917350 (not lt!1050020))))

(declare-fun b!3062157 () Bool)

(assert (=> b!3062157 (= e!1917351 (matchR!4371 (derivativeStep!2730 (regTwo!19490 r!17423) (head!6789 s!11993)) (tail!5015 s!11993)))))

(declare-fun b!3062158 () Bool)

(declare-fun e!1917349 () Bool)

(declare-fun e!1917348 () Bool)

(assert (=> b!3062158 (= e!1917349 e!1917348)))

(declare-fun res!1257159 () Bool)

(assert (=> b!3062158 (=> res!1257159 e!1917348)))

(assert (=> b!3062158 (= res!1257159 call!211894)))

(declare-fun b!3062159 () Bool)

(declare-fun res!1257157 () Bool)

(declare-fun e!1917352 () Bool)

(assert (=> b!3062159 (=> (not res!1257157) (not e!1917352))))

(assert (=> b!3062159 (= res!1257157 (isEmpty!19545 (tail!5015 s!11993)))))

(declare-fun b!3062160 () Bool)

(declare-fun e!1917347 () Bool)

(assert (=> b!3062160 (= e!1917347 e!1917349)))

(declare-fun res!1257156 () Bool)

(assert (=> b!3062160 (=> (not res!1257156) (not e!1917349))))

(assert (=> b!3062160 (= res!1257156 (not lt!1050020))))

(declare-fun b!3062161 () Bool)

(declare-fun res!1257152 () Bool)

(assert (=> b!3062161 (=> res!1257152 e!1917348)))

(assert (=> b!3062161 (= res!1257152 (not (isEmpty!19545 (tail!5015 s!11993))))))

(declare-fun b!3062162 () Bool)

(declare-fun res!1257158 () Bool)

(assert (=> b!3062162 (=> (not res!1257158) (not e!1917352))))

(assert (=> b!3062162 (= res!1257158 (not call!211894))))

(declare-fun b!3062163 () Bool)

(assert (=> b!3062163 (= e!1917352 (= (head!6789 s!11993) (c!508307 (regTwo!19490 r!17423))))))

(declare-fun b!3062164 () Bool)

(assert (=> b!3062164 (= e!1917348 (not (= (head!6789 s!11993) (c!508307 (regTwo!19490 r!17423)))))))

(declare-fun b!3062165 () Bool)

(declare-fun res!1257155 () Bool)

(assert (=> b!3062165 (=> res!1257155 e!1917347)))

(assert (=> b!3062165 (= res!1257155 e!1917352)))

(declare-fun res!1257153 () Bool)

(assert (=> b!3062165 (=> (not res!1257153) (not e!1917352))))

(assert (=> b!3062165 (= res!1257153 lt!1050020)))

(declare-fun b!3062166 () Bool)

(assert (=> b!3062166 (= e!1917351 (nullable!3135 (regTwo!19490 r!17423)))))

(declare-fun b!3062167 () Bool)

(declare-fun res!1257154 () Bool)

(assert (=> b!3062167 (=> res!1257154 e!1917347)))

(assert (=> b!3062167 (= res!1257154 (not ((_ is ElementMatch!9489) (regTwo!19490 r!17423))))))

(assert (=> b!3062167 (= e!1917350 e!1917347)))

(declare-fun b!3062168 () Bool)

(assert (=> b!3062168 (= e!1917353 (= lt!1050020 call!211894))))

(assert (= (and d!855362 c!508427) b!3062166))

(assert (= (and d!855362 (not c!508427)) b!3062157))

(assert (= (and d!855362 c!508429) b!3062168))

(assert (= (and d!855362 (not c!508429)) b!3062155))

(assert (= (and b!3062155 c!508428) b!3062156))

(assert (= (and b!3062155 (not c!508428)) b!3062167))

(assert (= (and b!3062167 (not res!1257154)) b!3062165))

(assert (= (and b!3062165 res!1257153) b!3062162))

(assert (= (and b!3062162 res!1257158) b!3062159))

(assert (= (and b!3062159 res!1257157) b!3062163))

(assert (= (and b!3062165 (not res!1257155)) b!3062160))

(assert (= (and b!3062160 res!1257156) b!3062158))

(assert (= (and b!3062158 (not res!1257159)) b!3062161))

(assert (= (and b!3062161 (not res!1257152)) b!3062164))

(assert (= (or b!3062168 b!3062158 b!3062162) bm!211889))

(assert (=> b!3062161 m!3381963))

(assert (=> b!3062161 m!3381963))

(assert (=> b!3062161 m!3381965))

(assert (=> b!3062159 m!3381963))

(assert (=> b!3062159 m!3381963))

(assert (=> b!3062159 m!3381965))

(assert (=> bm!211889 m!3381863))

(declare-fun m!3382061 () Bool)

(assert (=> b!3062166 m!3382061))

(assert (=> b!3062157 m!3381969))

(assert (=> b!3062157 m!3381969))

(declare-fun m!3382065 () Bool)

(assert (=> b!3062157 m!3382065))

(assert (=> b!3062157 m!3381963))

(assert (=> b!3062157 m!3382065))

(assert (=> b!3062157 m!3381963))

(declare-fun m!3382069 () Bool)

(assert (=> b!3062157 m!3382069))

(assert (=> d!855362 m!3381863))

(assert (=> d!855362 m!3381883))

(assert (=> b!3062163 m!3381969))

(assert (=> b!3062164 m!3381969))

(assert (=> b!3061698 d!855362))

(declare-fun d!855366 () Bool)

(assert (=> d!855366 (= (matchR!4371 (regTwo!19490 r!17423) s!11993) (matchR!4371 (simplify!444 (regTwo!19490 r!17423)) s!11993))))

(declare-fun lt!1050026 () Unit!49417)

(declare-fun choose!18130 (Regex!9489 List!35354) Unit!49417)

(assert (=> d!855366 (= lt!1050026 (choose!18130 (regTwo!19490 r!17423) s!11993))))

(assert (=> d!855366 (validRegex!4222 (regTwo!19490 r!17423))))

(assert (=> d!855366 (= (lemmaSimplifySound!274 (regTwo!19490 r!17423) s!11993) lt!1050026)))

(declare-fun bs!532471 () Bool)

(assert (= bs!532471 d!855366))

(assert (=> bs!532471 m!3381879))

(declare-fun m!3382071 () Bool)

(assert (=> bs!532471 m!3382071))

(assert (=> bs!532471 m!3381867))

(declare-fun m!3382073 () Bool)

(assert (=> bs!532471 m!3382073))

(assert (=> bs!532471 m!3381883))

(assert (=> bs!532471 m!3381879))

(assert (=> b!3061698 d!855366))

(declare-fun bm!211890 () Bool)

(declare-fun call!211895 () Bool)

(assert (=> bm!211890 (= call!211895 (isEmpty!19545 Nil!35230))))

(declare-fun d!855368 () Bool)

(declare-fun e!1917370 () Bool)

(assert (=> d!855368 e!1917370))

(declare-fun c!508432 () Bool)

(assert (=> d!855368 (= c!508432 ((_ is EmptyExpr!9489) (regOne!19490 r!17423)))))

(declare-fun lt!1050027 () Bool)

(declare-fun e!1917368 () Bool)

(assert (=> d!855368 (= lt!1050027 e!1917368)))

(declare-fun c!508430 () Bool)

(assert (=> d!855368 (= c!508430 (isEmpty!19545 Nil!35230))))

(assert (=> d!855368 (validRegex!4222 (regOne!19490 r!17423))))

(assert (=> d!855368 (= (matchR!4371 (regOne!19490 r!17423) Nil!35230) lt!1050027)))

(declare-fun b!3062204 () Bool)

(declare-fun e!1917367 () Bool)

(assert (=> b!3062204 (= e!1917370 e!1917367)))

(declare-fun c!508431 () Bool)

(assert (=> b!3062204 (= c!508431 ((_ is EmptyLang!9489) (regOne!19490 r!17423)))))

(declare-fun b!3062205 () Bool)

(assert (=> b!3062205 (= e!1917367 (not lt!1050027))))

(declare-fun b!3062206 () Bool)

(assert (=> b!3062206 (= e!1917368 (matchR!4371 (derivativeStep!2730 (regOne!19490 r!17423) (head!6789 Nil!35230)) (tail!5015 Nil!35230)))))

(declare-fun b!3062207 () Bool)

(declare-fun e!1917366 () Bool)

(declare-fun e!1917365 () Bool)

(assert (=> b!3062207 (= e!1917366 e!1917365)))

(declare-fun res!1257167 () Bool)

(assert (=> b!3062207 (=> res!1257167 e!1917365)))

(assert (=> b!3062207 (= res!1257167 call!211895)))

(declare-fun b!3062208 () Bool)

(declare-fun res!1257165 () Bool)

(declare-fun e!1917369 () Bool)

(assert (=> b!3062208 (=> (not res!1257165) (not e!1917369))))

(assert (=> b!3062208 (= res!1257165 (isEmpty!19545 (tail!5015 Nil!35230)))))

(declare-fun b!3062209 () Bool)

(declare-fun e!1917364 () Bool)

(assert (=> b!3062209 (= e!1917364 e!1917366)))

(declare-fun res!1257164 () Bool)

(assert (=> b!3062209 (=> (not res!1257164) (not e!1917366))))

(assert (=> b!3062209 (= res!1257164 (not lt!1050027))))

(declare-fun b!3062210 () Bool)

(declare-fun res!1257160 () Bool)

(assert (=> b!3062210 (=> res!1257160 e!1917365)))

(assert (=> b!3062210 (= res!1257160 (not (isEmpty!19545 (tail!5015 Nil!35230))))))

(declare-fun b!3062211 () Bool)

(declare-fun res!1257166 () Bool)

(assert (=> b!3062211 (=> (not res!1257166) (not e!1917369))))

(assert (=> b!3062211 (= res!1257166 (not call!211895))))

(declare-fun b!3062212 () Bool)

(assert (=> b!3062212 (= e!1917369 (= (head!6789 Nil!35230) (c!508307 (regOne!19490 r!17423))))))

(declare-fun b!3062213 () Bool)

(assert (=> b!3062213 (= e!1917365 (not (= (head!6789 Nil!35230) (c!508307 (regOne!19490 r!17423)))))))

(declare-fun b!3062214 () Bool)

(declare-fun res!1257163 () Bool)

(assert (=> b!3062214 (=> res!1257163 e!1917364)))

(assert (=> b!3062214 (= res!1257163 e!1917369)))

(declare-fun res!1257161 () Bool)

(assert (=> b!3062214 (=> (not res!1257161) (not e!1917369))))

(assert (=> b!3062214 (= res!1257161 lt!1050027)))

(declare-fun b!3062215 () Bool)

(assert (=> b!3062215 (= e!1917368 (nullable!3135 (regOne!19490 r!17423)))))

(declare-fun b!3062216 () Bool)

(declare-fun res!1257162 () Bool)

(assert (=> b!3062216 (=> res!1257162 e!1917364)))

(assert (=> b!3062216 (= res!1257162 (not ((_ is ElementMatch!9489) (regOne!19490 r!17423))))))

(assert (=> b!3062216 (= e!1917367 e!1917364)))

(declare-fun b!3062217 () Bool)

(assert (=> b!3062217 (= e!1917370 (= lt!1050027 call!211895))))

(assert (= (and d!855368 c!508430) b!3062215))

(assert (= (and d!855368 (not c!508430)) b!3062206))

(assert (= (and d!855368 c!508432) b!3062217))

(assert (= (and d!855368 (not c!508432)) b!3062204))

(assert (= (and b!3062204 c!508431) b!3062205))

(assert (= (and b!3062204 (not c!508431)) b!3062216))

(assert (= (and b!3062216 (not res!1257162)) b!3062214))

(assert (= (and b!3062214 res!1257161) b!3062211))

(assert (= (and b!3062211 res!1257166) b!3062208))

(assert (= (and b!3062208 res!1257165) b!3062212))

(assert (= (and b!3062214 (not res!1257163)) b!3062209))

(assert (= (and b!3062209 res!1257164) b!3062207))

(assert (= (and b!3062207 (not res!1257167)) b!3062210))

(assert (= (and b!3062210 (not res!1257160)) b!3062213))

(assert (= (or b!3062217 b!3062207 b!3062211) bm!211890))

(assert (=> b!3062210 m!3382015))

(assert (=> b!3062210 m!3382015))

(declare-fun m!3382075 () Bool)

(assert (=> b!3062210 m!3382075))

(assert (=> b!3062208 m!3382015))

(assert (=> b!3062208 m!3382015))

(assert (=> b!3062208 m!3382075))

(declare-fun m!3382077 () Bool)

(assert (=> bm!211890 m!3382077))

(assert (=> b!3062215 m!3381887))

(assert (=> b!3062206 m!3382011))

(assert (=> b!3062206 m!3382011))

(declare-fun m!3382079 () Bool)

(assert (=> b!3062206 m!3382079))

(assert (=> b!3062206 m!3382015))

(assert (=> b!3062206 m!3382079))

(assert (=> b!3062206 m!3382015))

(declare-fun m!3382081 () Bool)

(assert (=> b!3062206 m!3382081))

(assert (=> d!855368 m!3382077))

(assert (=> d!855368 m!3381861))

(assert (=> b!3062212 m!3382011))

(assert (=> b!3062213 m!3382011))

(assert (=> b!3061700 d!855368))

(declare-fun d!855370 () Bool)

(assert (=> d!855370 (= (isEmptyLang!540 lt!1049970) ((_ is EmptyLang!9489) lt!1049970))))

(assert (=> b!3061689 d!855370))

(declare-fun b!3062268 () Bool)

(declare-fun c!508464 () Bool)

(declare-fun e!1917407 () Bool)

(assert (=> b!3062268 (= c!508464 e!1917407)))

(declare-fun res!1257174 () Bool)

(assert (=> b!3062268 (=> res!1257174 e!1917407)))

(declare-fun call!211916 () Bool)

(assert (=> b!3062268 (= res!1257174 call!211916)))

(declare-fun lt!1050042 () Regex!9489)

(declare-fun call!211915 () Regex!9489)

(assert (=> b!3062268 (= lt!1050042 call!211915)))

(declare-fun e!1917406 () Regex!9489)

(declare-fun e!1917402 () Regex!9489)

(assert (=> b!3062268 (= e!1917406 e!1917402)))

(declare-fun b!3062269 () Bool)

(declare-fun e!1917403 () Regex!9489)

(declare-fun lt!1050040 () Regex!9489)

(assert (=> b!3062269 (= e!1917403 lt!1050040)))

(declare-fun b!3062270 () Bool)

(declare-fun e!1917399 () Regex!9489)

(assert (=> b!3062270 (= e!1917399 e!1917406)))

(declare-fun c!508459 () Bool)

(assert (=> b!3062270 (= c!508459 ((_ is Star!9489) (regTwo!19490 r!17423)))))

(declare-fun b!3062271 () Bool)

(declare-fun c!508463 () Bool)

(declare-fun call!211914 () Bool)

(assert (=> b!3062271 (= c!508463 call!211914)))

(declare-fun e!1917401 () Regex!9489)

(assert (=> b!3062271 (= e!1917403 e!1917401)))

(declare-fun b!3062272 () Bool)

(declare-fun lt!1050041 () Regex!9489)

(assert (=> b!3062272 (= e!1917401 (Union!9489 lt!1050041 lt!1050040))))

(declare-fun bm!211905 () Bool)

(declare-fun lt!1050044 () Regex!9489)

(declare-fun c!508455 () Bool)

(assert (=> bm!211905 (= call!211914 (isEmptyLang!540 (ite c!508455 lt!1050040 lt!1050044)))))

(declare-fun bm!211906 () Bool)

(declare-fun call!211910 () Bool)

(assert (=> bm!211906 (= call!211910 call!211916)))

(declare-fun b!3062273 () Bool)

(declare-fun c!508457 () Bool)

(assert (=> b!3062273 (= c!508457 (isEmptyExpr!546 lt!1050044))))

(declare-fun e!1917400 () Regex!9489)

(declare-fun e!1917404 () Regex!9489)

(assert (=> b!3062273 (= e!1917400 e!1917404)))

(declare-fun d!855372 () Bool)

(declare-fun e!1917405 () Bool)

(assert (=> d!855372 e!1917405))

(declare-fun res!1257176 () Bool)

(assert (=> d!855372 (=> (not res!1257176) (not e!1917405))))

(declare-fun lt!1050043 () Regex!9489)

(assert (=> d!855372 (= res!1257176 (validRegex!4222 lt!1050043))))

(declare-fun e!1917409 () Regex!9489)

(assert (=> d!855372 (= lt!1050043 e!1917409)))

(declare-fun c!508462 () Bool)

(assert (=> d!855372 (= c!508462 ((_ is EmptyLang!9489) (regTwo!19490 r!17423)))))

(assert (=> d!855372 (validRegex!4222 (regTwo!19490 r!17423))))

(assert (=> d!855372 (= (simplify!444 (regTwo!19490 r!17423)) lt!1050043)))

(declare-fun b!3062274 () Bool)

(declare-fun e!1917408 () Regex!9489)

(declare-fun lt!1050045 () Regex!9489)

(assert (=> b!3062274 (= e!1917408 (Concat!14810 lt!1050044 lt!1050045))))

(declare-fun b!3062275 () Bool)

(assert (=> b!3062275 (= e!1917400 EmptyLang!9489)))

(declare-fun bm!211907 () Bool)

(declare-fun call!211911 () Bool)

(assert (=> bm!211907 (= call!211911 (isEmptyExpr!546 (ite c!508459 lt!1050042 lt!1050045)))))

(declare-fun b!3062276 () Bool)

(assert (=> b!3062276 (= e!1917404 e!1917408)))

(declare-fun c!508456 () Bool)

(assert (=> b!3062276 (= c!508456 call!211911)))

(declare-fun b!3062277 () Bool)

(assert (=> b!3062277 (= e!1917402 (Star!9489 lt!1050042))))

(declare-fun b!3062278 () Bool)

(declare-fun e!1917411 () Regex!9489)

(assert (=> b!3062278 (= e!1917411 e!1917403)))

(declare-fun call!211913 () Regex!9489)

(assert (=> b!3062278 (= lt!1050041 call!211913)))

(declare-fun call!211912 () Regex!9489)

(assert (=> b!3062278 (= lt!1050040 call!211912)))

(declare-fun c!508461 () Bool)

(assert (=> b!3062278 (= c!508461 call!211910)))

(declare-fun b!3062279 () Bool)

(assert (=> b!3062279 (= e!1917399 EmptyExpr!9489)))

(declare-fun b!3062280 () Bool)

(assert (=> b!3062280 (= e!1917409 EmptyLang!9489)))

(declare-fun b!3062281 () Bool)

(declare-fun c!508460 () Bool)

(assert (=> b!3062281 (= c!508460 ((_ is EmptyExpr!9489) (regTwo!19490 r!17423)))))

(declare-fun e!1917410 () Regex!9489)

(assert (=> b!3062281 (= e!1917410 e!1917399)))

(declare-fun b!3062282 () Bool)

(declare-fun e!1917412 () Bool)

(assert (=> b!3062282 (= e!1917412 call!211910)))

(declare-fun b!3062283 () Bool)

(assert (=> b!3062283 (= e!1917411 e!1917400)))

(assert (=> b!3062283 (= lt!1050044 call!211912)))

(assert (=> b!3062283 (= lt!1050045 call!211913)))

(declare-fun res!1257175 () Bool)

(assert (=> b!3062283 (= res!1257175 call!211914)))

(assert (=> b!3062283 (=> res!1257175 e!1917412)))

(declare-fun c!508465 () Bool)

(assert (=> b!3062283 (= c!508465 e!1917412)))

(declare-fun b!3062284 () Bool)

(assert (=> b!3062284 (= e!1917407 call!211911)))

(declare-fun b!3062285 () Bool)

(assert (=> b!3062285 (= e!1917405 (= (nullable!3135 lt!1050043) (nullable!3135 (regTwo!19490 r!17423))))))

(declare-fun b!3062286 () Bool)

(assert (=> b!3062286 (= e!1917410 (regTwo!19490 r!17423))))

(declare-fun b!3062287 () Bool)

(assert (=> b!3062287 (= e!1917404 lt!1050045)))

(declare-fun b!3062288 () Bool)

(assert (=> b!3062288 (= e!1917401 lt!1050041)))

(declare-fun bm!211908 () Bool)

(assert (=> bm!211908 (= call!211913 call!211915)))

(declare-fun b!3062289 () Bool)

(assert (=> b!3062289 (= c!508455 ((_ is Union!9489) (regTwo!19490 r!17423)))))

(assert (=> b!3062289 (= e!1917406 e!1917411)))

(declare-fun b!3062290 () Bool)

(assert (=> b!3062290 (= e!1917402 EmptyExpr!9489)))

(declare-fun bm!211909 () Bool)

(assert (=> bm!211909 (= call!211912 (simplify!444 (ite c!508455 (regTwo!19491 (regTwo!19490 r!17423)) (regOne!19490 (regTwo!19490 r!17423)))))))

(declare-fun bm!211910 () Bool)

(assert (=> bm!211910 (= call!211915 (simplify!444 (ite c!508459 (reg!9818 (regTwo!19490 r!17423)) (ite c!508455 (regOne!19491 (regTwo!19490 r!17423)) (regTwo!19490 (regTwo!19490 r!17423))))))))

(declare-fun b!3062291 () Bool)

(assert (=> b!3062291 (= e!1917409 e!1917410)))

(declare-fun c!508458 () Bool)

(assert (=> b!3062291 (= c!508458 ((_ is ElementMatch!9489) (regTwo!19490 r!17423)))))

(declare-fun bm!211911 () Bool)

(assert (=> bm!211911 (= call!211916 (isEmptyLang!540 (ite c!508459 lt!1050042 (ite c!508455 lt!1050041 lt!1050045))))))

(declare-fun b!3062292 () Bool)

(assert (=> b!3062292 (= e!1917408 lt!1050044)))

(assert (= (and d!855372 c!508462) b!3062280))

(assert (= (and d!855372 (not c!508462)) b!3062291))

(assert (= (and b!3062291 c!508458) b!3062286))

(assert (= (and b!3062291 (not c!508458)) b!3062281))

(assert (= (and b!3062281 c!508460) b!3062279))

(assert (= (and b!3062281 (not c!508460)) b!3062270))

(assert (= (and b!3062270 c!508459) b!3062268))

(assert (= (and b!3062270 (not c!508459)) b!3062289))

(assert (= (and b!3062268 (not res!1257174)) b!3062284))

(assert (= (and b!3062268 c!508464) b!3062290))

(assert (= (and b!3062268 (not c!508464)) b!3062277))

(assert (= (and b!3062289 c!508455) b!3062278))

(assert (= (and b!3062289 (not c!508455)) b!3062283))

(assert (= (and b!3062278 c!508461) b!3062269))

(assert (= (and b!3062278 (not c!508461)) b!3062271))

(assert (= (and b!3062271 c!508463) b!3062288))

(assert (= (and b!3062271 (not c!508463)) b!3062272))

(assert (= (and b!3062283 (not res!1257175)) b!3062282))

(assert (= (and b!3062283 c!508465) b!3062275))

(assert (= (and b!3062283 (not c!508465)) b!3062273))

(assert (= (and b!3062273 c!508457) b!3062287))

(assert (= (and b!3062273 (not c!508457)) b!3062276))

(assert (= (and b!3062276 c!508456) b!3062292))

(assert (= (and b!3062276 (not c!508456)) b!3062274))

(assert (= (or b!3062278 b!3062283) bm!211908))

(assert (= (or b!3062278 b!3062283) bm!211909))

(assert (= (or b!3062271 b!3062283) bm!211905))

(assert (= (or b!3062278 b!3062282) bm!211906))

(assert (= (or b!3062284 b!3062276) bm!211907))

(assert (= (or b!3062268 bm!211908) bm!211910))

(assert (= (or b!3062268 bm!211906) bm!211911))

(assert (= (and d!855372 res!1257176) b!3062285))

(declare-fun m!3382083 () Bool)

(assert (=> bm!211910 m!3382083))

(declare-fun m!3382085 () Bool)

(assert (=> bm!211909 m!3382085))

(declare-fun m!3382087 () Bool)

(assert (=> bm!211905 m!3382087))

(declare-fun m!3382089 () Bool)

(assert (=> b!3062273 m!3382089))

(declare-fun m!3382091 () Bool)

(assert (=> bm!211911 m!3382091))

(declare-fun m!3382093 () Bool)

(assert (=> bm!211907 m!3382093))

(declare-fun m!3382095 () Bool)

(assert (=> b!3062285 m!3382095))

(assert (=> b!3062285 m!3382061))

(declare-fun m!3382097 () Bool)

(assert (=> d!855372 m!3382097))

(assert (=> d!855372 m!3381883))

(assert (=> b!3061689 d!855372))

(declare-fun b!3062293 () Bool)

(declare-fun c!508475 () Bool)

(declare-fun e!1917421 () Bool)

(assert (=> b!3062293 (= c!508475 e!1917421)))

(declare-fun res!1257177 () Bool)

(assert (=> b!3062293 (=> res!1257177 e!1917421)))

(declare-fun call!211923 () Bool)

(assert (=> b!3062293 (= res!1257177 call!211923)))

(declare-fun lt!1050048 () Regex!9489)

(declare-fun call!211922 () Regex!9489)

(assert (=> b!3062293 (= lt!1050048 call!211922)))

(declare-fun e!1917420 () Regex!9489)

(declare-fun e!1917416 () Regex!9489)

(assert (=> b!3062293 (= e!1917420 e!1917416)))

(declare-fun b!3062294 () Bool)

(declare-fun e!1917417 () Regex!9489)

(declare-fun lt!1050046 () Regex!9489)

(assert (=> b!3062294 (= e!1917417 lt!1050046)))

(declare-fun b!3062295 () Bool)

(declare-fun e!1917413 () Regex!9489)

(assert (=> b!3062295 (= e!1917413 e!1917420)))

(declare-fun c!508470 () Bool)

(assert (=> b!3062295 (= c!508470 ((_ is Star!9489) (regOne!19490 r!17423)))))

(declare-fun b!3062296 () Bool)

(declare-fun c!508474 () Bool)

(declare-fun call!211921 () Bool)

(assert (=> b!3062296 (= c!508474 call!211921)))

(declare-fun e!1917415 () Regex!9489)

(assert (=> b!3062296 (= e!1917417 e!1917415)))

(declare-fun b!3062297 () Bool)

(declare-fun lt!1050047 () Regex!9489)

(assert (=> b!3062297 (= e!1917415 (Union!9489 lt!1050047 lt!1050046))))

(declare-fun lt!1050050 () Regex!9489)

(declare-fun c!508466 () Bool)

(declare-fun bm!211912 () Bool)

(assert (=> bm!211912 (= call!211921 (isEmptyLang!540 (ite c!508466 lt!1050046 lt!1050050)))))

(declare-fun bm!211913 () Bool)

(declare-fun call!211917 () Bool)

(assert (=> bm!211913 (= call!211917 call!211923)))

(declare-fun b!3062298 () Bool)

(declare-fun c!508468 () Bool)

(assert (=> b!3062298 (= c!508468 (isEmptyExpr!546 lt!1050050))))

(declare-fun e!1917414 () Regex!9489)

(declare-fun e!1917418 () Regex!9489)

(assert (=> b!3062298 (= e!1917414 e!1917418)))

(declare-fun d!855374 () Bool)

(declare-fun e!1917419 () Bool)

(assert (=> d!855374 e!1917419))

(declare-fun res!1257179 () Bool)

(assert (=> d!855374 (=> (not res!1257179) (not e!1917419))))

(declare-fun lt!1050049 () Regex!9489)

(assert (=> d!855374 (= res!1257179 (validRegex!4222 lt!1050049))))

(declare-fun e!1917423 () Regex!9489)

(assert (=> d!855374 (= lt!1050049 e!1917423)))

(declare-fun c!508473 () Bool)

(assert (=> d!855374 (= c!508473 ((_ is EmptyLang!9489) (regOne!19490 r!17423)))))

(assert (=> d!855374 (validRegex!4222 (regOne!19490 r!17423))))

(assert (=> d!855374 (= (simplify!444 (regOne!19490 r!17423)) lt!1050049)))

(declare-fun b!3062299 () Bool)

(declare-fun e!1917422 () Regex!9489)

(declare-fun lt!1050051 () Regex!9489)

(assert (=> b!3062299 (= e!1917422 (Concat!14810 lt!1050050 lt!1050051))))

(declare-fun b!3062300 () Bool)

(assert (=> b!3062300 (= e!1917414 EmptyLang!9489)))

(declare-fun bm!211914 () Bool)

(declare-fun call!211918 () Bool)

(assert (=> bm!211914 (= call!211918 (isEmptyExpr!546 (ite c!508470 lt!1050048 lt!1050051)))))

(declare-fun b!3062301 () Bool)

(assert (=> b!3062301 (= e!1917418 e!1917422)))

(declare-fun c!508467 () Bool)

(assert (=> b!3062301 (= c!508467 call!211918)))

(declare-fun b!3062302 () Bool)

(assert (=> b!3062302 (= e!1917416 (Star!9489 lt!1050048))))

(declare-fun b!3062303 () Bool)

(declare-fun e!1917425 () Regex!9489)

(assert (=> b!3062303 (= e!1917425 e!1917417)))

(declare-fun call!211920 () Regex!9489)

(assert (=> b!3062303 (= lt!1050047 call!211920)))

(declare-fun call!211919 () Regex!9489)

(assert (=> b!3062303 (= lt!1050046 call!211919)))

(declare-fun c!508472 () Bool)

(assert (=> b!3062303 (= c!508472 call!211917)))

(declare-fun b!3062304 () Bool)

(assert (=> b!3062304 (= e!1917413 EmptyExpr!9489)))

(declare-fun b!3062305 () Bool)

(assert (=> b!3062305 (= e!1917423 EmptyLang!9489)))

(declare-fun b!3062306 () Bool)

(declare-fun c!508471 () Bool)

(assert (=> b!3062306 (= c!508471 ((_ is EmptyExpr!9489) (regOne!19490 r!17423)))))

(declare-fun e!1917424 () Regex!9489)

(assert (=> b!3062306 (= e!1917424 e!1917413)))

(declare-fun b!3062307 () Bool)

(declare-fun e!1917426 () Bool)

(assert (=> b!3062307 (= e!1917426 call!211917)))

(declare-fun b!3062308 () Bool)

(assert (=> b!3062308 (= e!1917425 e!1917414)))

(assert (=> b!3062308 (= lt!1050050 call!211919)))

(assert (=> b!3062308 (= lt!1050051 call!211920)))

(declare-fun res!1257178 () Bool)

(assert (=> b!3062308 (= res!1257178 call!211921)))

(assert (=> b!3062308 (=> res!1257178 e!1917426)))

(declare-fun c!508476 () Bool)

(assert (=> b!3062308 (= c!508476 e!1917426)))

(declare-fun b!3062309 () Bool)

(assert (=> b!3062309 (= e!1917421 call!211918)))

(declare-fun b!3062310 () Bool)

(assert (=> b!3062310 (= e!1917419 (= (nullable!3135 lt!1050049) (nullable!3135 (regOne!19490 r!17423))))))

(declare-fun b!3062311 () Bool)

(assert (=> b!3062311 (= e!1917424 (regOne!19490 r!17423))))

(declare-fun b!3062312 () Bool)

(assert (=> b!3062312 (= e!1917418 lt!1050051)))

(declare-fun b!3062313 () Bool)

(assert (=> b!3062313 (= e!1917415 lt!1050047)))

(declare-fun bm!211915 () Bool)

(assert (=> bm!211915 (= call!211920 call!211922)))

(declare-fun b!3062314 () Bool)

(assert (=> b!3062314 (= c!508466 ((_ is Union!9489) (regOne!19490 r!17423)))))

(assert (=> b!3062314 (= e!1917420 e!1917425)))

(declare-fun b!3062315 () Bool)

(assert (=> b!3062315 (= e!1917416 EmptyExpr!9489)))

(declare-fun bm!211916 () Bool)

(assert (=> bm!211916 (= call!211919 (simplify!444 (ite c!508466 (regTwo!19491 (regOne!19490 r!17423)) (regOne!19490 (regOne!19490 r!17423)))))))

(declare-fun bm!211917 () Bool)

(assert (=> bm!211917 (= call!211922 (simplify!444 (ite c!508470 (reg!9818 (regOne!19490 r!17423)) (ite c!508466 (regOne!19491 (regOne!19490 r!17423)) (regTwo!19490 (regOne!19490 r!17423))))))))

(declare-fun b!3062316 () Bool)

(assert (=> b!3062316 (= e!1917423 e!1917424)))

(declare-fun c!508469 () Bool)

(assert (=> b!3062316 (= c!508469 ((_ is ElementMatch!9489) (regOne!19490 r!17423)))))

(declare-fun bm!211918 () Bool)

(assert (=> bm!211918 (= call!211923 (isEmptyLang!540 (ite c!508470 lt!1050048 (ite c!508466 lt!1050047 lt!1050051))))))

(declare-fun b!3062317 () Bool)

(assert (=> b!3062317 (= e!1917422 lt!1050050)))

(assert (= (and d!855374 c!508473) b!3062305))

(assert (= (and d!855374 (not c!508473)) b!3062316))

(assert (= (and b!3062316 c!508469) b!3062311))

(assert (= (and b!3062316 (not c!508469)) b!3062306))

(assert (= (and b!3062306 c!508471) b!3062304))

(assert (= (and b!3062306 (not c!508471)) b!3062295))

(assert (= (and b!3062295 c!508470) b!3062293))

(assert (= (and b!3062295 (not c!508470)) b!3062314))

(assert (= (and b!3062293 (not res!1257177)) b!3062309))

(assert (= (and b!3062293 c!508475) b!3062315))

(assert (= (and b!3062293 (not c!508475)) b!3062302))

(assert (= (and b!3062314 c!508466) b!3062303))

(assert (= (and b!3062314 (not c!508466)) b!3062308))

(assert (= (and b!3062303 c!508472) b!3062294))

(assert (= (and b!3062303 (not c!508472)) b!3062296))

(assert (= (and b!3062296 c!508474) b!3062313))

(assert (= (and b!3062296 (not c!508474)) b!3062297))

(assert (= (and b!3062308 (not res!1257178)) b!3062307))

(assert (= (and b!3062308 c!508476) b!3062300))

(assert (= (and b!3062308 (not c!508476)) b!3062298))

(assert (= (and b!3062298 c!508468) b!3062312))

(assert (= (and b!3062298 (not c!508468)) b!3062301))

(assert (= (and b!3062301 c!508467) b!3062317))

(assert (= (and b!3062301 (not c!508467)) b!3062299))

(assert (= (or b!3062303 b!3062308) bm!211915))

(assert (= (or b!3062303 b!3062308) bm!211916))

(assert (= (or b!3062296 b!3062308) bm!211912))

(assert (= (or b!3062303 b!3062307) bm!211913))

(assert (= (or b!3062309 b!3062301) bm!211914))

(assert (= (or b!3062293 bm!211915) bm!211917))

(assert (= (or b!3062293 bm!211913) bm!211918))

(assert (= (and d!855374 res!1257179) b!3062310))

(declare-fun m!3382099 () Bool)

(assert (=> bm!211917 m!3382099))

(declare-fun m!3382101 () Bool)

(assert (=> bm!211916 m!3382101))

(declare-fun m!3382103 () Bool)

(assert (=> bm!211912 m!3382103))

(declare-fun m!3382105 () Bool)

(assert (=> b!3062298 m!3382105))

(declare-fun m!3382107 () Bool)

(assert (=> bm!211918 m!3382107))

(declare-fun m!3382109 () Bool)

(assert (=> bm!211914 m!3382109))

(declare-fun m!3382111 () Bool)

(assert (=> b!3062310 m!3382111))

(assert (=> b!3062310 m!3381887))

(declare-fun m!3382113 () Bool)

(assert (=> d!855374 m!3382113))

(assert (=> d!855374 m!3381861))

(assert (=> b!3061689 d!855374))

(declare-fun b!3062318 () Bool)

(declare-fun e!1917431 () Bool)

(declare-fun e!1917427 () Bool)

(assert (=> b!3062318 (= e!1917431 e!1917427)))

(declare-fun res!1257181 () Bool)

(assert (=> b!3062318 (= res!1257181 (not (nullable!3135 (reg!9818 (regOne!19490 r!17423)))))))

(assert (=> b!3062318 (=> (not res!1257181) (not e!1917427))))

(declare-fun b!3062319 () Bool)

(declare-fun e!1917432 () Bool)

(assert (=> b!3062319 (= e!1917432 e!1917431)))

(declare-fun c!508477 () Bool)

(assert (=> b!3062319 (= c!508477 ((_ is Star!9489) (regOne!19490 r!17423)))))

(declare-fun bm!211919 () Bool)

(declare-fun call!211924 () Bool)

(declare-fun c!508478 () Bool)

(assert (=> bm!211919 (= call!211924 (validRegex!4222 (ite c!508478 (regOne!19491 (regOne!19490 r!17423)) (regTwo!19490 (regOne!19490 r!17423)))))))

(declare-fun b!3062320 () Bool)

(declare-fun e!1917430 () Bool)

(assert (=> b!3062320 (= e!1917431 e!1917430)))

(assert (=> b!3062320 (= c!508478 ((_ is Union!9489) (regOne!19490 r!17423)))))

(declare-fun b!3062321 () Bool)

(declare-fun e!1917433 () Bool)

(declare-fun call!211926 () Bool)

(assert (=> b!3062321 (= e!1917433 call!211926)))

(declare-fun b!3062322 () Bool)

(declare-fun res!1257180 () Bool)

(assert (=> b!3062322 (=> (not res!1257180) (not e!1917433))))

(assert (=> b!3062322 (= res!1257180 call!211924)))

(assert (=> b!3062322 (= e!1917430 e!1917433)))

(declare-fun call!211925 () Bool)

(declare-fun bm!211920 () Bool)

(assert (=> bm!211920 (= call!211925 (validRegex!4222 (ite c!508477 (reg!9818 (regOne!19490 r!17423)) (ite c!508478 (regTwo!19491 (regOne!19490 r!17423)) (regOne!19490 (regOne!19490 r!17423))))))))

(declare-fun b!3062323 () Bool)

(assert (=> b!3062323 (= e!1917427 call!211925)))

(declare-fun b!3062324 () Bool)

(declare-fun res!1257184 () Bool)

(declare-fun e!1917428 () Bool)

(assert (=> b!3062324 (=> res!1257184 e!1917428)))

(assert (=> b!3062324 (= res!1257184 (not ((_ is Concat!14810) (regOne!19490 r!17423))))))

(assert (=> b!3062324 (= e!1917430 e!1917428)))

(declare-fun b!3062325 () Bool)

(declare-fun e!1917429 () Bool)

(assert (=> b!3062325 (= e!1917429 call!211924)))

(declare-fun d!855376 () Bool)

(declare-fun res!1257182 () Bool)

(assert (=> d!855376 (=> res!1257182 e!1917432)))

(assert (=> d!855376 (= res!1257182 ((_ is ElementMatch!9489) (regOne!19490 r!17423)))))

(assert (=> d!855376 (= (validRegex!4222 (regOne!19490 r!17423)) e!1917432)))

(declare-fun b!3062326 () Bool)

(assert (=> b!3062326 (= e!1917428 e!1917429)))

(declare-fun res!1257183 () Bool)

(assert (=> b!3062326 (=> (not res!1257183) (not e!1917429))))

(assert (=> b!3062326 (= res!1257183 call!211926)))

(declare-fun bm!211921 () Bool)

(assert (=> bm!211921 (= call!211926 call!211925)))

(assert (= (and d!855376 (not res!1257182)) b!3062319))

(assert (= (and b!3062319 c!508477) b!3062318))

(assert (= (and b!3062319 (not c!508477)) b!3062320))

(assert (= (and b!3062318 res!1257181) b!3062323))

(assert (= (and b!3062320 c!508478) b!3062322))

(assert (= (and b!3062320 (not c!508478)) b!3062324))

(assert (= (and b!3062322 res!1257180) b!3062321))

(assert (= (and b!3062324 (not res!1257184)) b!3062326))

(assert (= (and b!3062326 res!1257183) b!3062325))

(assert (= (or b!3062322 b!3062325) bm!211919))

(assert (= (or b!3062321 b!3062326) bm!211921))

(assert (= (or b!3062323 bm!211921) bm!211920))

(declare-fun m!3382115 () Bool)

(assert (=> b!3062318 m!3382115))

(declare-fun m!3382117 () Bool)

(assert (=> bm!211919 m!3382117))

(declare-fun m!3382119 () Bool)

(assert (=> bm!211920 m!3382119))

(assert (=> b!3061696 d!855376))

(declare-fun b!3062338 () Bool)

(declare-fun e!1917439 () Bool)

(declare-fun lt!1050054 () List!35354)

(assert (=> b!3062338 (= e!1917439 (or (not (= s!11993 Nil!35230)) (= lt!1050054 Nil!35230)))))

(declare-fun b!3062336 () Bool)

(declare-fun e!1917438 () List!35354)

(assert (=> b!3062336 (= e!1917438 (Cons!35230 (h!40650 Nil!35230) (++!8454 (t!234419 Nil!35230) s!11993)))))

(declare-fun d!855378 () Bool)

(assert (=> d!855378 e!1917439))

(declare-fun res!1257190 () Bool)

(assert (=> d!855378 (=> (not res!1257190) (not e!1917439))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4804 (List!35354) (InoxSet C!19164))

(assert (=> d!855378 (= res!1257190 (= (content!4804 lt!1050054) ((_ map or) (content!4804 Nil!35230) (content!4804 s!11993))))))

(assert (=> d!855378 (= lt!1050054 e!1917438)))

(declare-fun c!508481 () Bool)

(assert (=> d!855378 (= c!508481 ((_ is Nil!35230) Nil!35230))))

(assert (=> d!855378 (= (++!8454 Nil!35230 s!11993) lt!1050054)))

(declare-fun b!3062335 () Bool)

(assert (=> b!3062335 (= e!1917438 s!11993)))

(declare-fun b!3062337 () Bool)

(declare-fun res!1257189 () Bool)

(assert (=> b!3062337 (=> (not res!1257189) (not e!1917439))))

(assert (=> b!3062337 (= res!1257189 (= (size!26555 lt!1050054) (+ (size!26555 Nil!35230) (size!26555 s!11993))))))

(assert (= (and d!855378 c!508481) b!3062335))

(assert (= (and d!855378 (not c!508481)) b!3062336))

(assert (= (and d!855378 res!1257190) b!3062337))

(assert (= (and b!3062337 res!1257189) b!3062338))

(declare-fun m!3382121 () Bool)

(assert (=> b!3062336 m!3382121))

(declare-fun m!3382123 () Bool)

(assert (=> d!855378 m!3382123))

(declare-fun m!3382125 () Bool)

(assert (=> d!855378 m!3382125))

(declare-fun m!3382127 () Bool)

(assert (=> d!855378 m!3382127))

(declare-fun m!3382129 () Bool)

(assert (=> b!3062337 m!3382129))

(assert (=> b!3062337 m!3382013))

(declare-fun m!3382131 () Bool)

(assert (=> b!3062337 m!3382131))

(assert (=> b!3061687 d!855378))

(declare-fun b!3062343 () Bool)

(declare-fun e!1917442 () Bool)

(declare-fun tp!967482 () Bool)

(assert (=> b!3062343 (= e!1917442 (and tp_is_empty!16541 tp!967482))))

(assert (=> b!3061699 (= tp!967437 e!1917442)))

(assert (= (and b!3061699 ((_ is Cons!35230) (t!234419 s!11993))) b!3062343))

(declare-fun b!3062355 () Bool)

(declare-fun e!1917445 () Bool)

(declare-fun tp!967493 () Bool)

(declare-fun tp!967494 () Bool)

(assert (=> b!3062355 (= e!1917445 (and tp!967493 tp!967494))))

(declare-fun b!3062354 () Bool)

(assert (=> b!3062354 (= e!1917445 tp_is_empty!16541)))

(declare-fun b!3062357 () Bool)

(declare-fun tp!967496 () Bool)

(declare-fun tp!967497 () Bool)

(assert (=> b!3062357 (= e!1917445 (and tp!967496 tp!967497))))

(declare-fun b!3062356 () Bool)

(declare-fun tp!967495 () Bool)

(assert (=> b!3062356 (= e!1917445 tp!967495)))

(assert (=> b!3061688 (= tp!967439 e!1917445)))

(assert (= (and b!3061688 ((_ is ElementMatch!9489) (regOne!19490 r!17423))) b!3062354))

(assert (= (and b!3061688 ((_ is Concat!14810) (regOne!19490 r!17423))) b!3062355))

(assert (= (and b!3061688 ((_ is Star!9489) (regOne!19490 r!17423))) b!3062356))

(assert (= (and b!3061688 ((_ is Union!9489) (regOne!19490 r!17423))) b!3062357))

(declare-fun b!3062359 () Bool)

(declare-fun e!1917446 () Bool)

(declare-fun tp!967498 () Bool)

(declare-fun tp!967499 () Bool)

(assert (=> b!3062359 (= e!1917446 (and tp!967498 tp!967499))))

(declare-fun b!3062358 () Bool)

(assert (=> b!3062358 (= e!1917446 tp_is_empty!16541)))

(declare-fun b!3062361 () Bool)

(declare-fun tp!967501 () Bool)

(declare-fun tp!967502 () Bool)

(assert (=> b!3062361 (= e!1917446 (and tp!967501 tp!967502))))

(declare-fun b!3062360 () Bool)

(declare-fun tp!967500 () Bool)

(assert (=> b!3062360 (= e!1917446 tp!967500)))

(assert (=> b!3061688 (= tp!967436 e!1917446)))

(assert (= (and b!3061688 ((_ is ElementMatch!9489) (regTwo!19490 r!17423))) b!3062358))

(assert (= (and b!3061688 ((_ is Concat!14810) (regTwo!19490 r!17423))) b!3062359))

(assert (= (and b!3061688 ((_ is Star!9489) (regTwo!19490 r!17423))) b!3062360))

(assert (= (and b!3061688 ((_ is Union!9489) (regTwo!19490 r!17423))) b!3062361))

(declare-fun b!3062363 () Bool)

(declare-fun e!1917447 () Bool)

(declare-fun tp!967503 () Bool)

(declare-fun tp!967504 () Bool)

(assert (=> b!3062363 (= e!1917447 (and tp!967503 tp!967504))))

(declare-fun b!3062362 () Bool)

(assert (=> b!3062362 (= e!1917447 tp_is_empty!16541)))

(declare-fun b!3062365 () Bool)

(declare-fun tp!967506 () Bool)

(declare-fun tp!967507 () Bool)

(assert (=> b!3062365 (= e!1917447 (and tp!967506 tp!967507))))

(declare-fun b!3062364 () Bool)

(declare-fun tp!967505 () Bool)

(assert (=> b!3062364 (= e!1917447 tp!967505)))

(assert (=> b!3061701 (= tp!967438 e!1917447)))

(assert (= (and b!3061701 ((_ is ElementMatch!9489) (reg!9818 r!17423))) b!3062362))

(assert (= (and b!3061701 ((_ is Concat!14810) (reg!9818 r!17423))) b!3062363))

(assert (= (and b!3061701 ((_ is Star!9489) (reg!9818 r!17423))) b!3062364))

(assert (= (and b!3061701 ((_ is Union!9489) (reg!9818 r!17423))) b!3062365))

(declare-fun b!3062367 () Bool)

(declare-fun e!1917448 () Bool)

(declare-fun tp!967508 () Bool)

(declare-fun tp!967509 () Bool)

(assert (=> b!3062367 (= e!1917448 (and tp!967508 tp!967509))))

(declare-fun b!3062366 () Bool)

(assert (=> b!3062366 (= e!1917448 tp_is_empty!16541)))

(declare-fun b!3062369 () Bool)

(declare-fun tp!967511 () Bool)

(declare-fun tp!967512 () Bool)

(assert (=> b!3062369 (= e!1917448 (and tp!967511 tp!967512))))

(declare-fun b!3062368 () Bool)

(declare-fun tp!967510 () Bool)

(assert (=> b!3062368 (= e!1917448 tp!967510)))

(assert (=> b!3061697 (= tp!967441 e!1917448)))

(assert (= (and b!3061697 ((_ is ElementMatch!9489) (regOne!19491 r!17423))) b!3062366))

(assert (= (and b!3061697 ((_ is Concat!14810) (regOne!19491 r!17423))) b!3062367))

(assert (= (and b!3061697 ((_ is Star!9489) (regOne!19491 r!17423))) b!3062368))

(assert (= (and b!3061697 ((_ is Union!9489) (regOne!19491 r!17423))) b!3062369))

(declare-fun b!3062371 () Bool)

(declare-fun e!1917449 () Bool)

(declare-fun tp!967513 () Bool)

(declare-fun tp!967514 () Bool)

(assert (=> b!3062371 (= e!1917449 (and tp!967513 tp!967514))))

(declare-fun b!3062370 () Bool)

(assert (=> b!3062370 (= e!1917449 tp_is_empty!16541)))

(declare-fun b!3062373 () Bool)

(declare-fun tp!967516 () Bool)

(declare-fun tp!967517 () Bool)

(assert (=> b!3062373 (= e!1917449 (and tp!967516 tp!967517))))

(declare-fun b!3062372 () Bool)

(declare-fun tp!967515 () Bool)

(assert (=> b!3062372 (= e!1917449 tp!967515)))

(assert (=> b!3061697 (= tp!967440 e!1917449)))

(assert (= (and b!3061697 ((_ is ElementMatch!9489) (regTwo!19491 r!17423))) b!3062370))

(assert (= (and b!3061697 ((_ is Concat!14810) (regTwo!19491 r!17423))) b!3062371))

(assert (= (and b!3061697 ((_ is Star!9489) (regTwo!19491 r!17423))) b!3062372))

(assert (= (and b!3061697 ((_ is Union!9489) (regTwo!19491 r!17423))) b!3062373))

(check-sat (not bm!211889) (not b!3062210) (not d!855322) (not b!3062164) (not b!3062132) (not b!3062004) tp_is_empty!16541 (not b!3062053) (not b!3062002) (not d!855360) (not bm!211858) (not b!3062371) (not b!3062213) (not b!3062147) (not d!855366) (not bm!211885) (not b!3062166) (not bm!211888) (not b!3062215) (not d!855318) (not b!3061913) (not bm!211905) (not b!3062212) (not b!3062206) (not b!3062372) (not b!3062161) (not b!3062359) (not b!3062157) (not b!3062109) (not b!3062152) (not b!3062150) (not b!3062054) (not d!855368) (not bm!211886) (not b!3062001) (not b!3062373) (not bm!211907) (not b!3062149) (not bm!211857) (not b!3061907) (not b!3062365) (not b!3062285) (not b!3061995) (not bm!211911) (not b!3062356) (not d!855350) (not b!3062318) (not bm!211914) (not b!3062355) (not bm!211917) (not b!3062367) (not b!3062208) (not b!3062368) (not b!3062357) (not d!855378) (not bm!211918) (not d!855372) (not b!3062159) (not b!3061999) (not b!3062360) (not b!3062363) (not d!855374) (not bm!211890) (not b!3062143) (not b!3062055) (not b!3062163) (not b!3062337) (not b!3062369) (not bm!211910) (not d!855362) (not b!3062145) (not b!3062310) (not b!3062364) (not b!3062298) (not b!3062343) (not b!3061997) (not bm!211865) (not bm!211916) (not bm!211919) (not bm!211881) (not bm!211912) (not bm!211920) (not bm!211909) (not b!3062273) (not b!3062336) (not bm!211882) (not b!3062361))
(check-sat)
