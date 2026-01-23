; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243356 () Bool)

(assert start!243356)

(declare-fun b!2490624 () Bool)

(declare-fun e!1581098 () Bool)

(declare-fun tp!797465 () Bool)

(declare-fun tp!797462 () Bool)

(assert (=> b!2490624 (= e!1581098 (and tp!797465 tp!797462))))

(declare-fun res!1053965 () Bool)

(declare-fun e!1581099 () Bool)

(assert (=> start!243356 (=> (not res!1053965) (not e!1581099))))

(declare-datatypes ((C!14808 0))(
  ( (C!14809 (val!9056 Int)) )
))
(declare-datatypes ((Regex!7325 0))(
  ( (ElementMatch!7325 (c!395899 C!14808)) (Concat!12021 (regOne!15162 Regex!7325) (regTwo!15162 Regex!7325)) (EmptyExpr!7325) (Star!7325 (reg!7654 Regex!7325)) (EmptyLang!7325) (Union!7325 (regOne!15163 Regex!7325) (regTwo!15163 Regex!7325)) )
))
(declare-fun r!27340 () Regex!7325)

(declare-fun validRegex!2951 (Regex!7325) Bool)

(assert (=> start!243356 (= res!1053965 (validRegex!2951 r!27340))))

(assert (=> start!243356 e!1581099))

(assert (=> start!243356 e!1581098))

(declare-fun tp_is_empty!12505 () Bool)

(assert (=> start!243356 tp_is_empty!12505))

(declare-fun e!1581097 () Bool)

(assert (=> start!243356 e!1581097))

(declare-fun b!2490625 () Bool)

(declare-fun res!1053966 () Bool)

(declare-fun e!1581100 () Bool)

(assert (=> b!2490625 (=> (not res!1053966) (not e!1581100))))

(declare-fun lt!893904 () Regex!7325)

(declare-fun c!14016 () C!14808)

(get-info :version)

(assert (=> b!2490625 (= res!1053966 (and (not ((_ is EmptyExpr!7325) r!27340)) (not ((_ is EmptyLang!7325) r!27340)) ((_ is ElementMatch!7325) r!27340) (= c!14016 (c!395899 r!27340)) (= lt!893904 EmptyExpr!7325)))))

(declare-fun b!2490626 () Bool)

(declare-fun res!1053963 () Bool)

(assert (=> b!2490626 (=> (not res!1053963) (not e!1581100))))

(declare-datatypes ((List!29390 0))(
  ( (Nil!29290) (Cons!29290 (h!34710 C!14808) (t!211089 List!29390)) )
))
(declare-fun tl!4068 () List!29390)

(declare-fun isEmpty!16793 (List!29390) Bool)

(assert (=> b!2490626 (= res!1053963 (not (isEmpty!16793 tl!4068)))))

(declare-fun b!2490627 () Bool)

(declare-fun tp!797461 () Bool)

(declare-fun tp!797466 () Bool)

(assert (=> b!2490627 (= e!1581098 (and tp!797461 tp!797466))))

(declare-fun b!2490628 () Bool)

(assert (=> b!2490628 (= e!1581100 (not (validRegex!2951 lt!893904)))))

(declare-fun b!2490629 () Bool)

(declare-fun tp!797463 () Bool)

(assert (=> b!2490629 (= e!1581097 (and tp_is_empty!12505 tp!797463))))

(declare-fun b!2490630 () Bool)

(declare-fun tp!797464 () Bool)

(assert (=> b!2490630 (= e!1581098 tp!797464)))

(declare-fun b!2490631 () Bool)

(assert (=> b!2490631 (= e!1581098 tp_is_empty!12505)))

(declare-fun b!2490632 () Bool)

(assert (=> b!2490632 (= e!1581099 e!1581100)))

(declare-fun res!1053964 () Bool)

(assert (=> b!2490632 (=> (not res!1053964) (not e!1581100))))

(declare-fun nullable!2242 (Regex!7325) Bool)

(declare-fun derivative!20 (Regex!7325 List!29390) Regex!7325)

(assert (=> b!2490632 (= res!1053964 (nullable!2242 (derivative!20 lt!893904 tl!4068)))))

(declare-fun derivativeStep!1894 (Regex!7325 C!14808) Regex!7325)

(assert (=> b!2490632 (= lt!893904 (derivativeStep!1894 r!27340 c!14016))))

(assert (= (and start!243356 res!1053965) b!2490632))

(assert (= (and b!2490632 res!1053964) b!2490625))

(assert (= (and b!2490625 res!1053966) b!2490626))

(assert (= (and b!2490626 res!1053963) b!2490628))

(assert (= (and start!243356 ((_ is ElementMatch!7325) r!27340)) b!2490631))

(assert (= (and start!243356 ((_ is Concat!12021) r!27340)) b!2490627))

(assert (= (and start!243356 ((_ is Star!7325) r!27340)) b!2490630))

(assert (= (and start!243356 ((_ is Union!7325) r!27340)) b!2490624))

(assert (= (and start!243356 ((_ is Cons!29290) tl!4068)) b!2490629))

(declare-fun m!2857849 () Bool)

(assert (=> start!243356 m!2857849))

(declare-fun m!2857851 () Bool)

(assert (=> b!2490626 m!2857851))

(declare-fun m!2857853 () Bool)

(assert (=> b!2490628 m!2857853))

(declare-fun m!2857855 () Bool)

(assert (=> b!2490632 m!2857855))

(assert (=> b!2490632 m!2857855))

(declare-fun m!2857857 () Bool)

(assert (=> b!2490632 m!2857857))

(declare-fun m!2857859 () Bool)

(assert (=> b!2490632 m!2857859))

(check-sat (not b!2490630) (not b!2490629) (not b!2490626) (not b!2490624) (not b!2490632) tp_is_empty!12505 (not b!2490627) (not b!2490628) (not start!243356))
(check-sat)
(get-model)

(declare-fun bm!153055 () Bool)

(declare-fun call!153060 () Bool)

(declare-fun c!395909 () Bool)

(assert (=> bm!153055 (= call!153060 (validRegex!2951 (ite c!395909 (regOne!15163 r!27340) (regTwo!15162 r!27340))))))

(declare-fun b!2490669 () Bool)

(declare-fun e!1581135 () Bool)

(declare-fun e!1581129 () Bool)

(assert (=> b!2490669 (= e!1581135 e!1581129)))

(assert (=> b!2490669 (= c!395909 ((_ is Union!7325) r!27340))))

(declare-fun b!2490670 () Bool)

(declare-fun e!1581133 () Bool)

(declare-fun e!1581134 () Bool)

(assert (=> b!2490670 (= e!1581133 e!1581134)))

(declare-fun res!1053990 () Bool)

(assert (=> b!2490670 (=> (not res!1053990) (not e!1581134))))

(declare-fun call!153062 () Bool)

(assert (=> b!2490670 (= res!1053990 call!153062)))

(declare-fun bm!153056 () Bool)

(declare-fun call!153061 () Bool)

(assert (=> bm!153056 (= call!153062 call!153061)))

(declare-fun d!714376 () Bool)

(declare-fun res!1053989 () Bool)

(declare-fun e!1581130 () Bool)

(assert (=> d!714376 (=> res!1053989 e!1581130)))

(assert (=> d!714376 (= res!1053989 ((_ is ElementMatch!7325) r!27340))))

(assert (=> d!714376 (= (validRegex!2951 r!27340) e!1581130)))

(declare-fun c!395908 () Bool)

(declare-fun bm!153057 () Bool)

(assert (=> bm!153057 (= call!153061 (validRegex!2951 (ite c!395908 (reg!7654 r!27340) (ite c!395909 (regTwo!15163 r!27340) (regOne!15162 r!27340)))))))

(declare-fun b!2490671 () Bool)

(assert (=> b!2490671 (= e!1581130 e!1581135)))

(assert (=> b!2490671 (= c!395908 ((_ is Star!7325) r!27340))))

(declare-fun b!2490672 () Bool)

(declare-fun res!1053991 () Bool)

(assert (=> b!2490672 (=> res!1053991 e!1581133)))

(assert (=> b!2490672 (= res!1053991 (not ((_ is Concat!12021) r!27340)))))

(assert (=> b!2490672 (= e!1581129 e!1581133)))

(declare-fun b!2490673 () Bool)

(declare-fun e!1581132 () Bool)

(assert (=> b!2490673 (= e!1581135 e!1581132)))

(declare-fun res!1053988 () Bool)

(assert (=> b!2490673 (= res!1053988 (not (nullable!2242 (reg!7654 r!27340))))))

(assert (=> b!2490673 (=> (not res!1053988) (not e!1581132))))

(declare-fun b!2490674 () Bool)

(declare-fun e!1581131 () Bool)

(assert (=> b!2490674 (= e!1581131 call!153062)))

(declare-fun b!2490675 () Bool)

(declare-fun res!1053987 () Bool)

(assert (=> b!2490675 (=> (not res!1053987) (not e!1581131))))

(assert (=> b!2490675 (= res!1053987 call!153060)))

(assert (=> b!2490675 (= e!1581129 e!1581131)))

(declare-fun b!2490676 () Bool)

(assert (=> b!2490676 (= e!1581134 call!153060)))

(declare-fun b!2490677 () Bool)

(assert (=> b!2490677 (= e!1581132 call!153061)))

(assert (= (and d!714376 (not res!1053989)) b!2490671))

(assert (= (and b!2490671 c!395908) b!2490673))

(assert (= (and b!2490671 (not c!395908)) b!2490669))

(assert (= (and b!2490673 res!1053988) b!2490677))

(assert (= (and b!2490669 c!395909) b!2490675))

(assert (= (and b!2490669 (not c!395909)) b!2490672))

(assert (= (and b!2490675 res!1053987) b!2490674))

(assert (= (and b!2490672 (not res!1053991)) b!2490670))

(assert (= (and b!2490670 res!1053990) b!2490676))

(assert (= (or b!2490675 b!2490676) bm!153055))

(assert (= (or b!2490674 b!2490670) bm!153056))

(assert (= (or b!2490677 bm!153056) bm!153057))

(declare-fun m!2857861 () Bool)

(assert (=> bm!153055 m!2857861))

(declare-fun m!2857863 () Bool)

(assert (=> bm!153057 m!2857863))

(declare-fun m!2857865 () Bool)

(assert (=> b!2490673 m!2857865))

(assert (=> start!243356 d!714376))

(declare-fun bm!153058 () Bool)

(declare-fun call!153063 () Bool)

(declare-fun c!395911 () Bool)

(assert (=> bm!153058 (= call!153063 (validRegex!2951 (ite c!395911 (regOne!15163 lt!893904) (regTwo!15162 lt!893904))))))

(declare-fun b!2490678 () Bool)

(declare-fun e!1581142 () Bool)

(declare-fun e!1581136 () Bool)

(assert (=> b!2490678 (= e!1581142 e!1581136)))

(assert (=> b!2490678 (= c!395911 ((_ is Union!7325) lt!893904))))

(declare-fun b!2490679 () Bool)

(declare-fun e!1581140 () Bool)

(declare-fun e!1581141 () Bool)

(assert (=> b!2490679 (= e!1581140 e!1581141)))

(declare-fun res!1053995 () Bool)

(assert (=> b!2490679 (=> (not res!1053995) (not e!1581141))))

(declare-fun call!153065 () Bool)

(assert (=> b!2490679 (= res!1053995 call!153065)))

(declare-fun bm!153059 () Bool)

(declare-fun call!153064 () Bool)

(assert (=> bm!153059 (= call!153065 call!153064)))

(declare-fun d!714382 () Bool)

(declare-fun res!1053994 () Bool)

(declare-fun e!1581137 () Bool)

(assert (=> d!714382 (=> res!1053994 e!1581137)))

(assert (=> d!714382 (= res!1053994 ((_ is ElementMatch!7325) lt!893904))))

(assert (=> d!714382 (= (validRegex!2951 lt!893904) e!1581137)))

(declare-fun bm!153060 () Bool)

(declare-fun c!395910 () Bool)

(assert (=> bm!153060 (= call!153064 (validRegex!2951 (ite c!395910 (reg!7654 lt!893904) (ite c!395911 (regTwo!15163 lt!893904) (regOne!15162 lt!893904)))))))

(declare-fun b!2490680 () Bool)

(assert (=> b!2490680 (= e!1581137 e!1581142)))

(assert (=> b!2490680 (= c!395910 ((_ is Star!7325) lt!893904))))

(declare-fun b!2490681 () Bool)

(declare-fun res!1053996 () Bool)

(assert (=> b!2490681 (=> res!1053996 e!1581140)))

(assert (=> b!2490681 (= res!1053996 (not ((_ is Concat!12021) lt!893904)))))

(assert (=> b!2490681 (= e!1581136 e!1581140)))

(declare-fun b!2490682 () Bool)

(declare-fun e!1581139 () Bool)

(assert (=> b!2490682 (= e!1581142 e!1581139)))

(declare-fun res!1053993 () Bool)

(assert (=> b!2490682 (= res!1053993 (not (nullable!2242 (reg!7654 lt!893904))))))

(assert (=> b!2490682 (=> (not res!1053993) (not e!1581139))))

(declare-fun b!2490683 () Bool)

(declare-fun e!1581138 () Bool)

(assert (=> b!2490683 (= e!1581138 call!153065)))

(declare-fun b!2490684 () Bool)

(declare-fun res!1053992 () Bool)

(assert (=> b!2490684 (=> (not res!1053992) (not e!1581138))))

(assert (=> b!2490684 (= res!1053992 call!153063)))

(assert (=> b!2490684 (= e!1581136 e!1581138)))

(declare-fun b!2490685 () Bool)

(assert (=> b!2490685 (= e!1581141 call!153063)))

(declare-fun b!2490686 () Bool)

(assert (=> b!2490686 (= e!1581139 call!153064)))

(assert (= (and d!714382 (not res!1053994)) b!2490680))

(assert (= (and b!2490680 c!395910) b!2490682))

(assert (= (and b!2490680 (not c!395910)) b!2490678))

(assert (= (and b!2490682 res!1053993) b!2490686))

(assert (= (and b!2490678 c!395911) b!2490684))

(assert (= (and b!2490678 (not c!395911)) b!2490681))

(assert (= (and b!2490684 res!1053992) b!2490683))

(assert (= (and b!2490681 (not res!1053996)) b!2490679))

(assert (= (and b!2490679 res!1053995) b!2490685))

(assert (= (or b!2490684 b!2490685) bm!153058))

(assert (= (or b!2490683 b!2490679) bm!153059))

(assert (= (or b!2490686 bm!153059) bm!153060))

(declare-fun m!2857867 () Bool)

(assert (=> bm!153058 m!2857867))

(declare-fun m!2857869 () Bool)

(assert (=> bm!153060 m!2857869))

(declare-fun m!2857871 () Bool)

(assert (=> b!2490682 m!2857871))

(assert (=> b!2490628 d!714382))

(declare-fun d!714384 () Bool)

(assert (=> d!714384 (= (isEmpty!16793 tl!4068) ((_ is Nil!29290) tl!4068))))

(assert (=> b!2490626 d!714384))

(declare-fun d!714386 () Bool)

(declare-fun nullableFct!548 (Regex!7325) Bool)

(assert (=> d!714386 (= (nullable!2242 (derivative!20 lt!893904 tl!4068)) (nullableFct!548 (derivative!20 lt!893904 tl!4068)))))

(declare-fun bs!468354 () Bool)

(assert (= bs!468354 d!714386))

(assert (=> bs!468354 m!2857855))

(declare-fun m!2857879 () Bool)

(assert (=> bs!468354 m!2857879))

(assert (=> b!2490632 d!714386))

(declare-fun d!714390 () Bool)

(declare-fun lt!893909 () Regex!7325)

(assert (=> d!714390 (validRegex!2951 lt!893909)))

(declare-fun e!1581161 () Regex!7325)

(assert (=> d!714390 (= lt!893909 e!1581161)))

(declare-fun c!395920 () Bool)

(assert (=> d!714390 (= c!395920 ((_ is Cons!29290) tl!4068))))

(assert (=> d!714390 (validRegex!2951 lt!893904)))

(assert (=> d!714390 (= (derivative!20 lt!893904 tl!4068) lt!893909)))

(declare-fun b!2490713 () Bool)

(assert (=> b!2490713 (= e!1581161 (derivative!20 (derivativeStep!1894 lt!893904 (h!34710 tl!4068)) (t!211089 tl!4068)))))

(declare-fun b!2490714 () Bool)

(assert (=> b!2490714 (= e!1581161 lt!893904)))

(assert (= (and d!714390 c!395920) b!2490713))

(assert (= (and d!714390 (not c!395920)) b!2490714))

(declare-fun m!2857889 () Bool)

(assert (=> d!714390 m!2857889))

(assert (=> d!714390 m!2857853))

(declare-fun m!2857891 () Bool)

(assert (=> b!2490713 m!2857891))

(assert (=> b!2490713 m!2857891))

(declare-fun m!2857893 () Bool)

(assert (=> b!2490713 m!2857893))

(assert (=> b!2490632 d!714390))

(declare-fun b!2490757 () Bool)

(declare-fun c!395944 () Bool)

(assert (=> b!2490757 (= c!395944 ((_ is Union!7325) r!27340))))

(declare-fun e!1581184 () Regex!7325)

(declare-fun e!1581183 () Regex!7325)

(assert (=> b!2490757 (= e!1581184 e!1581183)))

(declare-fun b!2490758 () Bool)

(declare-fun e!1581187 () Regex!7325)

(assert (=> b!2490758 (= e!1581183 e!1581187)))

(declare-fun c!395945 () Bool)

(assert (=> b!2490758 (= c!395945 ((_ is Star!7325) r!27340))))

(declare-fun bm!153083 () Bool)

(declare-fun call!153091 () Regex!7325)

(declare-fun call!153089 () Regex!7325)

(assert (=> bm!153083 (= call!153091 call!153089)))

(declare-fun call!153090 () Regex!7325)

(declare-fun call!153088 () Regex!7325)

(declare-fun e!1581185 () Regex!7325)

(declare-fun b!2490759 () Bool)

(assert (=> b!2490759 (= e!1581185 (Union!7325 (Concat!12021 call!153088 (regTwo!15162 r!27340)) call!153090))))

(declare-fun b!2490760 () Bool)

(declare-fun e!1581186 () Regex!7325)

(assert (=> b!2490760 (= e!1581186 EmptyLang!7325)))

(declare-fun b!2490761 () Bool)

(assert (=> b!2490761 (= e!1581187 (Concat!12021 call!153091 r!27340))))

(declare-fun b!2490762 () Bool)

(assert (=> b!2490762 (= e!1581183 (Union!7325 call!153089 call!153090))))

(declare-fun d!714396 () Bool)

(declare-fun lt!893915 () Regex!7325)

(assert (=> d!714396 (validRegex!2951 lt!893915)))

(assert (=> d!714396 (= lt!893915 e!1581186)))

(declare-fun c!395946 () Bool)

(assert (=> d!714396 (= c!395946 (or ((_ is EmptyExpr!7325) r!27340) ((_ is EmptyLang!7325) r!27340)))))

(assert (=> d!714396 (validRegex!2951 r!27340)))

(assert (=> d!714396 (= (derivativeStep!1894 r!27340 c!14016) lt!893915)))

(declare-fun b!2490763 () Bool)

(assert (=> b!2490763 (= e!1581185 (Union!7325 (Concat!12021 call!153088 (regTwo!15162 r!27340)) EmptyLang!7325))))

(declare-fun b!2490764 () Bool)

(assert (=> b!2490764 (= e!1581186 e!1581184)))

(declare-fun c!395942 () Bool)

(assert (=> b!2490764 (= c!395942 ((_ is ElementMatch!7325) r!27340))))

(declare-fun bm!153084 () Bool)

(assert (=> bm!153084 (= call!153089 (derivativeStep!1894 (ite c!395944 (regOne!15163 r!27340) (ite c!395945 (reg!7654 r!27340) (regOne!15162 r!27340))) c!14016))))

(declare-fun bm!153085 () Bool)

(assert (=> bm!153085 (= call!153088 call!153091)))

(declare-fun bm!153086 () Bool)

(assert (=> bm!153086 (= call!153090 (derivativeStep!1894 (ite c!395944 (regTwo!15163 r!27340) (regTwo!15162 r!27340)) c!14016))))

(declare-fun b!2490765 () Bool)

(assert (=> b!2490765 (= e!1581184 (ite (= c!14016 (c!395899 r!27340)) EmptyExpr!7325 EmptyLang!7325))))

(declare-fun b!2490766 () Bool)

(declare-fun c!395943 () Bool)

(assert (=> b!2490766 (= c!395943 (nullable!2242 (regOne!15162 r!27340)))))

(assert (=> b!2490766 (= e!1581187 e!1581185)))

(assert (= (and d!714396 c!395946) b!2490760))

(assert (= (and d!714396 (not c!395946)) b!2490764))

(assert (= (and b!2490764 c!395942) b!2490765))

(assert (= (and b!2490764 (not c!395942)) b!2490757))

(assert (= (and b!2490757 c!395944) b!2490762))

(assert (= (and b!2490757 (not c!395944)) b!2490758))

(assert (= (and b!2490758 c!395945) b!2490761))

(assert (= (and b!2490758 (not c!395945)) b!2490766))

(assert (= (and b!2490766 c!395943) b!2490759))

(assert (= (and b!2490766 (not c!395943)) b!2490763))

(assert (= (or b!2490759 b!2490763) bm!153085))

(assert (= (or b!2490761 bm!153085) bm!153083))

(assert (= (or b!2490762 b!2490759) bm!153086))

(assert (= (or b!2490762 bm!153083) bm!153084))

(declare-fun m!2857901 () Bool)

(assert (=> d!714396 m!2857901))

(assert (=> d!714396 m!2857849))

(declare-fun m!2857903 () Bool)

(assert (=> bm!153084 m!2857903))

(declare-fun m!2857905 () Bool)

(assert (=> bm!153086 m!2857905))

(declare-fun m!2857907 () Bool)

(assert (=> b!2490766 m!2857907))

(assert (=> b!2490632 d!714396))

(declare-fun b!2490796 () Bool)

(declare-fun e!1581197 () Bool)

(declare-fun tp!797484 () Bool)

(declare-fun tp!797485 () Bool)

(assert (=> b!2490796 (= e!1581197 (and tp!797484 tp!797485))))

(declare-fun b!2490798 () Bool)

(declare-fun tp!797487 () Bool)

(declare-fun tp!797486 () Bool)

(assert (=> b!2490798 (= e!1581197 (and tp!797487 tp!797486))))

(assert (=> b!2490630 (= tp!797464 e!1581197)))

(declare-fun b!2490795 () Bool)

(assert (=> b!2490795 (= e!1581197 tp_is_empty!12505)))

(declare-fun b!2490797 () Bool)

(declare-fun tp!797483 () Bool)

(assert (=> b!2490797 (= e!1581197 tp!797483)))

(assert (= (and b!2490630 ((_ is ElementMatch!7325) (reg!7654 r!27340))) b!2490795))

(assert (= (and b!2490630 ((_ is Concat!12021) (reg!7654 r!27340))) b!2490796))

(assert (= (and b!2490630 ((_ is Star!7325) (reg!7654 r!27340))) b!2490797))

(assert (= (and b!2490630 ((_ is Union!7325) (reg!7654 r!27340))) b!2490798))

(declare-fun b!2490802 () Bool)

(declare-fun e!1581198 () Bool)

(declare-fun tp!797493 () Bool)

(declare-fun tp!797494 () Bool)

(assert (=> b!2490802 (= e!1581198 (and tp!797493 tp!797494))))

(declare-fun b!2490804 () Bool)

(declare-fun tp!797496 () Bool)

(declare-fun tp!797495 () Bool)

(assert (=> b!2490804 (= e!1581198 (and tp!797496 tp!797495))))

(assert (=> b!2490624 (= tp!797465 e!1581198)))

(declare-fun b!2490801 () Bool)

(assert (=> b!2490801 (= e!1581198 tp_is_empty!12505)))

(declare-fun b!2490803 () Bool)

(declare-fun tp!797492 () Bool)

(assert (=> b!2490803 (= e!1581198 tp!797492)))

(assert (= (and b!2490624 ((_ is ElementMatch!7325) (regOne!15163 r!27340))) b!2490801))

(assert (= (and b!2490624 ((_ is Concat!12021) (regOne!15163 r!27340))) b!2490802))

(assert (= (and b!2490624 ((_ is Star!7325) (regOne!15163 r!27340))) b!2490803))

(assert (= (and b!2490624 ((_ is Union!7325) (regOne!15163 r!27340))) b!2490804))

(declare-fun b!2490806 () Bool)

(declare-fun e!1581199 () Bool)

(declare-fun tp!797498 () Bool)

(declare-fun tp!797499 () Bool)

(assert (=> b!2490806 (= e!1581199 (and tp!797498 tp!797499))))

(declare-fun b!2490808 () Bool)

(declare-fun tp!797501 () Bool)

(declare-fun tp!797500 () Bool)

(assert (=> b!2490808 (= e!1581199 (and tp!797501 tp!797500))))

(assert (=> b!2490624 (= tp!797462 e!1581199)))

(declare-fun b!2490805 () Bool)

(assert (=> b!2490805 (= e!1581199 tp_is_empty!12505)))

(declare-fun b!2490807 () Bool)

(declare-fun tp!797497 () Bool)

(assert (=> b!2490807 (= e!1581199 tp!797497)))

(assert (= (and b!2490624 ((_ is ElementMatch!7325) (regTwo!15163 r!27340))) b!2490805))

(assert (= (and b!2490624 ((_ is Concat!12021) (regTwo!15163 r!27340))) b!2490806))

(assert (= (and b!2490624 ((_ is Star!7325) (regTwo!15163 r!27340))) b!2490807))

(assert (= (and b!2490624 ((_ is Union!7325) (regTwo!15163 r!27340))) b!2490808))

(declare-fun b!2490817 () Bool)

(declare-fun e!1581203 () Bool)

(declare-fun tp!797510 () Bool)

(assert (=> b!2490817 (= e!1581203 (and tp_is_empty!12505 tp!797510))))

(assert (=> b!2490629 (= tp!797463 e!1581203)))

(assert (= (and b!2490629 ((_ is Cons!29290) (t!211089 tl!4068))) b!2490817))

(declare-fun b!2490823 () Bool)

(declare-fun e!1581205 () Bool)

(declare-fun tp!797516 () Bool)

(declare-fun tp!797517 () Bool)

(assert (=> b!2490823 (= e!1581205 (and tp!797516 tp!797517))))

(declare-fun b!2490825 () Bool)

(declare-fun tp!797519 () Bool)

(declare-fun tp!797518 () Bool)

(assert (=> b!2490825 (= e!1581205 (and tp!797519 tp!797518))))

(assert (=> b!2490627 (= tp!797461 e!1581205)))

(declare-fun b!2490822 () Bool)

(assert (=> b!2490822 (= e!1581205 tp_is_empty!12505)))

(declare-fun b!2490824 () Bool)

(declare-fun tp!797515 () Bool)

(assert (=> b!2490824 (= e!1581205 tp!797515)))

(assert (= (and b!2490627 ((_ is ElementMatch!7325) (regOne!15162 r!27340))) b!2490822))

(assert (= (and b!2490627 ((_ is Concat!12021) (regOne!15162 r!27340))) b!2490823))

(assert (= (and b!2490627 ((_ is Star!7325) (regOne!15162 r!27340))) b!2490824))

(assert (= (and b!2490627 ((_ is Union!7325) (regOne!15162 r!27340))) b!2490825))

(declare-fun b!2490831 () Bool)

(declare-fun e!1581208 () Bool)

(declare-fun tp!797523 () Bool)

(declare-fun tp!797524 () Bool)

(assert (=> b!2490831 (= e!1581208 (and tp!797523 tp!797524))))

(declare-fun b!2490833 () Bool)

(declare-fun tp!797526 () Bool)

(declare-fun tp!797525 () Bool)

(assert (=> b!2490833 (= e!1581208 (and tp!797526 tp!797525))))

(assert (=> b!2490627 (= tp!797466 e!1581208)))

(declare-fun b!2490830 () Bool)

(assert (=> b!2490830 (= e!1581208 tp_is_empty!12505)))

(declare-fun b!2490832 () Bool)

(declare-fun tp!797522 () Bool)

(assert (=> b!2490832 (= e!1581208 tp!797522)))

(assert (= (and b!2490627 ((_ is ElementMatch!7325) (regTwo!15162 r!27340))) b!2490830))

(assert (= (and b!2490627 ((_ is Concat!12021) (regTwo!15162 r!27340))) b!2490831))

(assert (= (and b!2490627 ((_ is Star!7325) (regTwo!15162 r!27340))) b!2490832))

(assert (= (and b!2490627 ((_ is Union!7325) (regTwo!15162 r!27340))) b!2490833))

(check-sat (not b!2490798) (not b!2490802) (not b!2490797) (not b!2490824) (not bm!153057) (not d!714386) (not b!2490833) (not b!2490832) (not b!2490804) (not bm!153060) (not bm!153084) (not b!2490831) (not bm!153086) (not b!2490766) (not b!2490808) (not b!2490673) (not d!714396) (not b!2490682) (not bm!153055) (not b!2490803) (not b!2490823) tp_is_empty!12505 (not bm!153058) (not b!2490806) (not b!2490825) (not b!2490796) (not b!2490713) (not b!2490807) (not b!2490817) (not d!714390))
(check-sat)
