; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733682 () Bool)

(assert start!733682)

(declare-fun b!7615906 () Bool)

(assert (=> b!7615906 true))

(assert (=> b!7615906 true))

(declare-fun b!7615900 () Bool)

(declare-fun res!3048787 () Bool)

(declare-fun e!4529058 () Bool)

(assert (=> b!7615900 (=> (not res!3048787) (not e!4529058))))

(declare-datatypes ((C!40854 0))(
  ( (C!40855 (val!30867 Int)) )
))
(declare-datatypes ((Regex!20264 0))(
  ( (ElementMatch!20264 (c!1403867 C!40854)) (Concat!29109 (regOne!41040 Regex!20264) (regTwo!41040 Regex!20264)) (EmptyExpr!20264) (Star!20264 (reg!20593 Regex!20264)) (EmptyLang!20264) (Union!20264 (regOne!41041 Regex!20264) (regTwo!41041 Regex!20264)) )
))
(declare-fun r!14126 () Regex!20264)

(assert (=> b!7615900 (= res!3048787 (and (not (is-EmptyExpr!20264 r!14126)) (not (is-EmptyLang!20264 r!14126)) (not (is-ElementMatch!20264 r!14126)) (not (is-Union!20264 r!14126)) (is-Star!20264 r!14126)))))

(declare-fun b!7615901 () Bool)

(declare-fun e!4529056 () Bool)

(declare-fun tp_is_empty!50883 () Bool)

(assert (=> b!7615901 (= e!4529056 tp_is_empty!50883)))

(declare-fun res!3048789 () Bool)

(assert (=> start!733682 (=> (not res!3048789) (not e!4529058))))

(declare-fun validRegex!10684 (Regex!20264) Bool)

(assert (=> start!733682 (= res!3048789 (validRegex!10684 r!14126))))

(assert (=> start!733682 e!4529058))

(assert (=> start!733682 e!4529056))

(declare-fun e!4529057 () Bool)

(assert (=> start!733682 e!4529057))

(declare-fun b!7615902 () Bool)

(declare-fun tp!2223773 () Bool)

(declare-fun tp!2223774 () Bool)

(assert (=> b!7615902 (= e!4529056 (and tp!2223773 tp!2223774))))

(declare-fun b!7615903 () Bool)

(declare-fun tp!2223776 () Bool)

(declare-fun tp!2223777 () Bool)

(assert (=> b!7615903 (= e!4529056 (and tp!2223776 tp!2223777))))

(declare-fun b!7615904 () Bool)

(declare-fun tp!2223775 () Bool)

(assert (=> b!7615904 (= e!4529056 tp!2223775)))

(declare-fun b!7615905 () Bool)

(declare-fun res!3048788 () Bool)

(assert (=> b!7615905 (=> (not res!3048788) (not e!4529058))))

(declare-datatypes ((List!73117 0))(
  ( (Nil!72993) (Cons!72993 (h!79441 C!40854) (t!387852 List!73117)) )
))
(declare-fun s!9605 () List!73117)

(declare-fun isEmpty!41600 (List!73117) Bool)

(assert (=> b!7615905 (= res!3048788 (not (isEmpty!41600 s!9605)))))

(assert (=> b!7615906 (= e!4529058 (not (validRegex!10684 (reg!20593 r!14126))))))

(declare-fun lambda!468114 () Int)

(declare-datatypes ((tuple2!69090 0))(
  ( (tuple2!69091 (_1!37848 List!73117) (_2!37848 List!73117)) )
))
(declare-datatypes ((Option!17339 0))(
  ( (None!17338) (Some!17338 (v!54473 tuple2!69090)) )
))
(declare-fun isDefined!13955 (Option!17339) Bool)

(declare-fun findConcatSeparation!3369 (Regex!20264 Regex!20264 List!73117 List!73117 List!73117) Option!17339)

(declare-fun Exists!4420 (Int) Bool)

(assert (=> b!7615906 (= (isDefined!13955 (findConcatSeparation!3369 (reg!20593 r!14126) r!14126 Nil!72993 s!9605 s!9605)) (Exists!4420 lambda!468114))))

(declare-datatypes ((Unit!167360 0))(
  ( (Unit!167361) )
))
(declare-fun lt!2655347 () Unit!167360)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3127 (Regex!20264 Regex!20264 List!73117) Unit!167360)

(assert (=> b!7615906 (= lt!2655347 (lemmaFindConcatSeparationEquivalentToExists!3127 (reg!20593 r!14126) r!14126 s!9605))))

(declare-fun b!7615907 () Bool)

(declare-fun tp!2223772 () Bool)

(assert (=> b!7615907 (= e!4529057 (and tp_is_empty!50883 tp!2223772))))

(assert (= (and start!733682 res!3048789) b!7615900))

(assert (= (and b!7615900 res!3048787) b!7615905))

(assert (= (and b!7615905 res!3048788) b!7615906))

(assert (= (and start!733682 (is-ElementMatch!20264 r!14126)) b!7615901))

(assert (= (and start!733682 (is-Concat!29109 r!14126)) b!7615902))

(assert (= (and start!733682 (is-Star!20264 r!14126)) b!7615904))

(assert (= (and start!733682 (is-Union!20264 r!14126)) b!7615903))

(assert (= (and start!733682 (is-Cons!72993 s!9605)) b!7615907))

(declare-fun m!8149582 () Bool)

(assert (=> start!733682 m!8149582))

(declare-fun m!8149584 () Bool)

(assert (=> b!7615905 m!8149584))

(declare-fun m!8149586 () Bool)

(assert (=> b!7615906 m!8149586))

(declare-fun m!8149588 () Bool)

(assert (=> b!7615906 m!8149588))

(declare-fun m!8149590 () Bool)

(assert (=> b!7615906 m!8149590))

(declare-fun m!8149592 () Bool)

(assert (=> b!7615906 m!8149592))

(assert (=> b!7615906 m!8149586))

(declare-fun m!8149594 () Bool)

(assert (=> b!7615906 m!8149594))

(push 1)

(assert (not b!7615903))

(assert (not b!7615907))

(assert tp_is_empty!50883)

(assert (not b!7615902))

(assert (not b!7615904))

(assert (not b!7615906))

(assert (not b!7615905))

(assert (not start!733682))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7615962 () Bool)

(declare-fun e!4529085 () Bool)

(declare-fun e!4529089 () Bool)

(assert (=> b!7615962 (= e!4529085 e!4529089)))

(declare-fun res!3048817 () Bool)

(declare-fun nullable!8863 (Regex!20264) Bool)

(assert (=> b!7615962 (= res!3048817 (not (nullable!8863 (reg!20593 r!14126))))))

(assert (=> b!7615962 (=> (not res!3048817) (not e!4529089))))

(declare-fun b!7615963 () Bool)

(declare-fun res!3048816 () Bool)

(declare-fun e!4529084 () Bool)

(assert (=> b!7615963 (=> (not res!3048816) (not e!4529084))))

(declare-fun call!699633 () Bool)

(assert (=> b!7615963 (= res!3048816 call!699633)))

(declare-fun e!4529086 () Bool)

(assert (=> b!7615963 (= e!4529086 e!4529084)))

(declare-fun bm!699628 () Bool)

(declare-fun call!699635 () Bool)

(declare-fun c!1403873 () Bool)

(assert (=> bm!699628 (= call!699635 (validRegex!10684 (ite c!1403873 (regTwo!41041 r!14126) (regTwo!41040 r!14126))))))

(declare-fun b!7615964 () Bool)

(declare-fun res!3048813 () Bool)

(declare-fun e!4529090 () Bool)

(assert (=> b!7615964 (=> res!3048813 e!4529090)))

(assert (=> b!7615964 (= res!3048813 (not (is-Concat!29109 r!14126)))))

(assert (=> b!7615964 (= e!4529086 e!4529090)))

(declare-fun b!7615965 () Bool)

(declare-fun e!4529087 () Bool)

(assert (=> b!7615965 (= e!4529090 e!4529087)))

(declare-fun res!3048814 () Bool)

(assert (=> b!7615965 (=> (not res!3048814) (not e!4529087))))

(assert (=> b!7615965 (= res!3048814 call!699633)))

(declare-fun b!7615966 () Bool)

(declare-fun call!699634 () Bool)

(assert (=> b!7615966 (= e!4529089 call!699634)))

(declare-fun b!7615967 () Bool)

(declare-fun e!4529088 () Bool)

(assert (=> b!7615967 (= e!4529088 e!4529085)))

(declare-fun c!1403874 () Bool)

(assert (=> b!7615967 (= c!1403874 (is-Star!20264 r!14126))))

(declare-fun d!2322712 () Bool)

(declare-fun res!3048815 () Bool)

(assert (=> d!2322712 (=> res!3048815 e!4529088)))

(assert (=> d!2322712 (= res!3048815 (is-ElementMatch!20264 r!14126))))

(assert (=> d!2322712 (= (validRegex!10684 r!14126) e!4529088)))

(declare-fun b!7615968 () Bool)

(assert (=> b!7615968 (= e!4529084 call!699635)))

(declare-fun bm!699629 () Bool)

(assert (=> bm!699629 (= call!699634 (validRegex!10684 (ite c!1403874 (reg!20593 r!14126) (ite c!1403873 (regOne!41041 r!14126) (regOne!41040 r!14126)))))))

(declare-fun b!7615969 () Bool)

(assert (=> b!7615969 (= e!4529085 e!4529086)))

(assert (=> b!7615969 (= c!1403873 (is-Union!20264 r!14126))))

(declare-fun bm!699630 () Bool)

(assert (=> bm!699630 (= call!699633 call!699634)))

(declare-fun b!7615970 () Bool)

(assert (=> b!7615970 (= e!4529087 call!699635)))

(assert (= (and d!2322712 (not res!3048815)) b!7615967))

(assert (= (and b!7615967 c!1403874) b!7615962))

(assert (= (and b!7615967 (not c!1403874)) b!7615969))

(assert (= (and b!7615962 res!3048817) b!7615966))

(assert (= (and b!7615969 c!1403873) b!7615963))

(assert (= (and b!7615969 (not c!1403873)) b!7615964))

(assert (= (and b!7615963 res!3048816) b!7615968))

(assert (= (and b!7615964 (not res!3048813)) b!7615965))

(assert (= (and b!7615965 res!3048814) b!7615970))

(assert (= (or b!7615963 b!7615965) bm!699630))

(assert (= (or b!7615968 b!7615970) bm!699628))

(assert (= (or b!7615966 bm!699630) bm!699629))

(declare-fun m!8149610 () Bool)

(assert (=> b!7615962 m!8149610))

(declare-fun m!8149612 () Bool)

(assert (=> bm!699628 m!8149612))

(declare-fun m!8149614 () Bool)

(assert (=> bm!699629 m!8149614))

(assert (=> start!733682 d!2322712))

(declare-fun d!2322718 () Bool)

(assert (=> d!2322718 (= (isEmpty!41600 s!9605) (is-Nil!72993 s!9605))))

(assert (=> b!7615905 d!2322718))

(declare-fun d!2322720 () Bool)

(declare-fun isEmpty!41602 (Option!17339) Bool)

(assert (=> d!2322720 (= (isDefined!13955 (findConcatSeparation!3369 (reg!20593 r!14126) r!14126 Nil!72993 s!9605 s!9605)) (not (isEmpty!41602 (findConcatSeparation!3369 (reg!20593 r!14126) r!14126 Nil!72993 s!9605 s!9605))))))

(declare-fun bs!1942983 () Bool)

(assert (= bs!1942983 d!2322720))

(assert (=> bs!1942983 m!8149586))

(declare-fun m!8149616 () Bool)

(assert (=> bs!1942983 m!8149616))

(assert (=> b!7615906 d!2322720))

(declare-fun b!7615971 () Bool)

(declare-fun e!4529092 () Bool)

(declare-fun e!4529096 () Bool)

(assert (=> b!7615971 (= e!4529092 e!4529096)))

(declare-fun res!3048822 () Bool)

(assert (=> b!7615971 (= res!3048822 (not (nullable!8863 (reg!20593 (reg!20593 r!14126)))))))

(assert (=> b!7615971 (=> (not res!3048822) (not e!4529096))))

(declare-fun b!7615972 () Bool)

(declare-fun res!3048821 () Bool)

(declare-fun e!4529091 () Bool)

(assert (=> b!7615972 (=> (not res!3048821) (not e!4529091))))

(declare-fun call!699636 () Bool)

(assert (=> b!7615972 (= res!3048821 call!699636)))

(declare-fun e!4529093 () Bool)

(assert (=> b!7615972 (= e!4529093 e!4529091)))

(declare-fun bm!699631 () Bool)

(declare-fun call!699638 () Bool)

(declare-fun c!1403875 () Bool)

(assert (=> bm!699631 (= call!699638 (validRegex!10684 (ite c!1403875 (regTwo!41041 (reg!20593 r!14126)) (regTwo!41040 (reg!20593 r!14126)))))))

(declare-fun b!7615973 () Bool)

(declare-fun res!3048818 () Bool)

(declare-fun e!4529097 () Bool)

(assert (=> b!7615973 (=> res!3048818 e!4529097)))

(assert (=> b!7615973 (= res!3048818 (not (is-Concat!29109 (reg!20593 r!14126))))))

(assert (=> b!7615973 (= e!4529093 e!4529097)))

(declare-fun b!7615974 () Bool)

(declare-fun e!4529094 () Bool)

(assert (=> b!7615974 (= e!4529097 e!4529094)))

(declare-fun res!3048819 () Bool)

(assert (=> b!7615974 (=> (not res!3048819) (not e!4529094))))

(assert (=> b!7615974 (= res!3048819 call!699636)))

(declare-fun b!7615975 () Bool)

(declare-fun call!699637 () Bool)

(assert (=> b!7615975 (= e!4529096 call!699637)))

(declare-fun b!7615976 () Bool)

(declare-fun e!4529095 () Bool)

(assert (=> b!7615976 (= e!4529095 e!4529092)))

(declare-fun c!1403876 () Bool)

(assert (=> b!7615976 (= c!1403876 (is-Star!20264 (reg!20593 r!14126)))))

(declare-fun d!2322722 () Bool)

(declare-fun res!3048820 () Bool)

(assert (=> d!2322722 (=> res!3048820 e!4529095)))

(assert (=> d!2322722 (= res!3048820 (is-ElementMatch!20264 (reg!20593 r!14126)))))

(assert (=> d!2322722 (= (validRegex!10684 (reg!20593 r!14126)) e!4529095)))

(declare-fun b!7615977 () Bool)

(assert (=> b!7615977 (= e!4529091 call!699638)))

(declare-fun bm!699632 () Bool)

(assert (=> bm!699632 (= call!699637 (validRegex!10684 (ite c!1403876 (reg!20593 (reg!20593 r!14126)) (ite c!1403875 (regOne!41041 (reg!20593 r!14126)) (regOne!41040 (reg!20593 r!14126))))))))

(declare-fun b!7615978 () Bool)

(assert (=> b!7615978 (= e!4529092 e!4529093)))

(assert (=> b!7615978 (= c!1403875 (is-Union!20264 (reg!20593 r!14126)))))

(declare-fun bm!699633 () Bool)

(assert (=> bm!699633 (= call!699636 call!699637)))

(declare-fun b!7615979 () Bool)

(assert (=> b!7615979 (= e!4529094 call!699638)))

(assert (= (and d!2322722 (not res!3048820)) b!7615976))

(assert (= (and b!7615976 c!1403876) b!7615971))

(assert (= (and b!7615976 (not c!1403876)) b!7615978))

(assert (= (and b!7615971 res!3048822) b!7615975))

(assert (= (and b!7615978 c!1403875) b!7615972))

(assert (= (and b!7615978 (not c!1403875)) b!7615973))

(assert (= (and b!7615972 res!3048821) b!7615977))

(assert (= (and b!7615973 (not res!3048818)) b!7615974))

(assert (= (and b!7615974 res!3048819) b!7615979))

(assert (= (or b!7615972 b!7615974) bm!699633))

(assert (= (or b!7615977 b!7615979) bm!699631))

(assert (= (or b!7615975 bm!699633) bm!699632))

(declare-fun m!8149618 () Bool)

(assert (=> b!7615971 m!8149618))

(declare-fun m!8149620 () Bool)

(assert (=> bm!699631 m!8149620))

(declare-fun m!8149622 () Bool)

(assert (=> bm!699632 m!8149622))

(assert (=> b!7615906 d!2322722))

(declare-fun bs!1942984 () Bool)

(declare-fun d!2322724 () Bool)

(assert (= bs!1942984 (and d!2322724 b!7615906)))

(declare-fun lambda!468120 () Int)

(assert (=> bs!1942984 (= lambda!468120 lambda!468114)))

(assert (=> d!2322724 true))

(assert (=> d!2322724 true))

(assert (=> d!2322724 true))

(assert (=> d!2322724 (= (isDefined!13955 (findConcatSeparation!3369 (reg!20593 r!14126) r!14126 Nil!72993 s!9605 s!9605)) (Exists!4420 lambda!468120))))

(declare-fun lt!2655353 () Unit!167360)

(declare-fun choose!58752 (Regex!20264 Regex!20264 List!73117) Unit!167360)

(assert (=> d!2322724 (= lt!2655353 (choose!58752 (reg!20593 r!14126) r!14126 s!9605))))

(assert (=> d!2322724 (validRegex!10684 (reg!20593 r!14126))))

(assert (=> d!2322724 (= (lemmaFindConcatSeparationEquivalentToExists!3127 (reg!20593 r!14126) r!14126 s!9605) lt!2655353)))

(declare-fun bs!1942985 () Bool)

(assert (= bs!1942985 d!2322724))

(assert (=> bs!1942985 m!8149586))

(assert (=> bs!1942985 m!8149586))

(assert (=> bs!1942985 m!8149594))

(assert (=> bs!1942985 m!8149588))

(declare-fun m!8149624 () Bool)

(assert (=> bs!1942985 m!8149624))

(declare-fun m!8149626 () Bool)

(assert (=> bs!1942985 m!8149626))

(assert (=> b!7615906 d!2322724))

(declare-fun d!2322726 () Bool)

(declare-fun choose!58753 (Int) Bool)

(assert (=> d!2322726 (= (Exists!4420 lambda!468114) (choose!58753 lambda!468114))))

(declare-fun bs!1942986 () Bool)

(assert (= bs!1942986 d!2322726))

(declare-fun m!8149628 () Bool)

(assert (=> bs!1942986 m!8149628))

(assert (=> b!7615906 d!2322726))

(declare-fun b!7616029 () Bool)

(declare-fun e!4529134 () Bool)

(declare-fun lt!2655362 () Option!17339)

(declare-fun ++!17588 (List!73117 List!73117) List!73117)

(declare-fun get!25714 (Option!17339) tuple2!69090)

(assert (=> b!7616029 (= e!4529134 (= (++!17588 (_1!37848 (get!25714 lt!2655362)) (_2!37848 (get!25714 lt!2655362))) s!9605))))

(declare-fun b!7616030 () Bool)

(declare-fun e!4529133 () Bool)

(assert (=> b!7616030 (= e!4529133 (not (isDefined!13955 lt!2655362)))))

(declare-fun b!7616031 () Bool)

(declare-fun e!4529135 () Bool)

(declare-fun matchR!9777 (Regex!20264 List!73117) Bool)

(assert (=> b!7616031 (= e!4529135 (matchR!9777 r!14126 s!9605))))

(declare-fun b!7616032 () Bool)

(declare-fun e!4529131 () Option!17339)

(assert (=> b!7616032 (= e!4529131 (Some!17338 (tuple2!69091 Nil!72993 s!9605)))))

(declare-fun d!2322728 () Bool)

(assert (=> d!2322728 e!4529133))

(declare-fun res!3048852 () Bool)

(assert (=> d!2322728 (=> res!3048852 e!4529133)))

(assert (=> d!2322728 (= res!3048852 e!4529134)))

(declare-fun res!3048854 () Bool)

(assert (=> d!2322728 (=> (not res!3048854) (not e!4529134))))

(assert (=> d!2322728 (= res!3048854 (isDefined!13955 lt!2655362))))

(assert (=> d!2322728 (= lt!2655362 e!4529131)))

(declare-fun c!1403887 () Bool)

(assert (=> d!2322728 (= c!1403887 e!4529135)))

(declare-fun res!3048855 () Bool)

(assert (=> d!2322728 (=> (not res!3048855) (not e!4529135))))

(assert (=> d!2322728 (= res!3048855 (matchR!9777 (reg!20593 r!14126) Nil!72993))))

(assert (=> d!2322728 (validRegex!10684 (reg!20593 r!14126))))

(assert (=> d!2322728 (= (findConcatSeparation!3369 (reg!20593 r!14126) r!14126 Nil!72993 s!9605 s!9605) lt!2655362)))

(declare-fun b!7616033 () Bool)

(declare-fun lt!2655360 () Unit!167360)

(declare-fun lt!2655361 () Unit!167360)

(assert (=> b!7616033 (= lt!2655360 lt!2655361)))

(assert (=> b!7616033 (= (++!17588 (++!17588 Nil!72993 (Cons!72993 (h!79441 s!9605) Nil!72993)) (t!387852 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3207 (List!73117 C!40854 List!73117 List!73117) Unit!167360)

(assert (=> b!7616033 (= lt!2655361 (lemmaMoveElementToOtherListKeepsConcatEq!3207 Nil!72993 (h!79441 s!9605) (t!387852 s!9605) s!9605))))

(declare-fun e!4529132 () Option!17339)

(assert (=> b!7616033 (= e!4529132 (findConcatSeparation!3369 (reg!20593 r!14126) r!14126 (++!17588 Nil!72993 (Cons!72993 (h!79441 s!9605) Nil!72993)) (t!387852 s!9605) s!9605))))

(declare-fun b!7616034 () Bool)

(declare-fun res!3048853 () Bool)

(assert (=> b!7616034 (=> (not res!3048853) (not e!4529134))))

(assert (=> b!7616034 (= res!3048853 (matchR!9777 (reg!20593 r!14126) (_1!37848 (get!25714 lt!2655362))))))

(declare-fun b!7616035 () Bool)

(assert (=> b!7616035 (= e!4529131 e!4529132)))

(declare-fun c!1403888 () Bool)

(assert (=> b!7616035 (= c!1403888 (is-Nil!72993 s!9605))))

(declare-fun b!7616036 () Bool)

(declare-fun res!3048856 () Bool)

(assert (=> b!7616036 (=> (not res!3048856) (not e!4529134))))

(assert (=> b!7616036 (= res!3048856 (matchR!9777 r!14126 (_2!37848 (get!25714 lt!2655362))))))

(declare-fun b!7616037 () Bool)

(assert (=> b!7616037 (= e!4529132 None!17338)))

(assert (= (and d!2322728 res!3048855) b!7616031))

(assert (= (and d!2322728 c!1403887) b!7616032))

(assert (= (and d!2322728 (not c!1403887)) b!7616035))

(assert (= (and b!7616035 c!1403888) b!7616037))

(assert (= (and b!7616035 (not c!1403888)) b!7616033))

(assert (= (and d!2322728 res!3048854) b!7616034))

(assert (= (and b!7616034 res!3048853) b!7616036))

(assert (= (and b!7616036 res!3048856) b!7616029))

(assert (= (and d!2322728 (not res!3048852)) b!7616030))

(declare-fun m!8149640 () Bool)

(assert (=> b!7616034 m!8149640))

(declare-fun m!8149642 () Bool)

(assert (=> b!7616034 m!8149642))

(declare-fun m!8149644 () Bool)

(assert (=> b!7616033 m!8149644))

(assert (=> b!7616033 m!8149644))

(declare-fun m!8149646 () Bool)

(assert (=> b!7616033 m!8149646))

(declare-fun m!8149648 () Bool)

(assert (=> b!7616033 m!8149648))

(assert (=> b!7616033 m!8149644))

(declare-fun m!8149650 () Bool)

(assert (=> b!7616033 m!8149650))

(declare-fun m!8149652 () Bool)

(assert (=> b!7616030 m!8149652))

(declare-fun m!8149654 () Bool)

(assert (=> b!7616031 m!8149654))

(assert (=> d!2322728 m!8149652))

(declare-fun m!8149656 () Bool)

(assert (=> d!2322728 m!8149656))

(assert (=> d!2322728 m!8149588))

(assert (=> b!7616036 m!8149640))

(declare-fun m!8149658 () Bool)

(assert (=> b!7616036 m!8149658))

(assert (=> b!7616029 m!8149640))

(declare-fun m!8149660 () Bool)

(assert (=> b!7616029 m!8149660))

(assert (=> b!7615906 d!2322728))

(declare-fun b!7616050 () Bool)

(declare-fun e!4529138 () Bool)

(declare-fun tp!2223808 () Bool)

(assert (=> b!7616050 (= e!4529138 tp!2223808)))

(assert (=> b!7615904 (= tp!2223775 e!4529138)))

(declare-fun b!7616049 () Bool)

(declare-fun tp!2223806 () Bool)

(declare-fun tp!2223809 () Bool)

(assert (=> b!7616049 (= e!4529138 (and tp!2223806 tp!2223809))))

(declare-fun b!7616051 () Bool)

(declare-fun tp!2223810 () Bool)

(declare-fun tp!2223807 () Bool)

(assert (=> b!7616051 (= e!4529138 (and tp!2223810 tp!2223807))))

(declare-fun b!7616048 () Bool)

(assert (=> b!7616048 (= e!4529138 tp_is_empty!50883)))

(assert (= (and b!7615904 (is-ElementMatch!20264 (reg!20593 r!14126))) b!7616048))

(assert (= (and b!7615904 (is-Concat!29109 (reg!20593 r!14126))) b!7616049))

(assert (= (and b!7615904 (is-Star!20264 (reg!20593 r!14126))) b!7616050))

(assert (= (and b!7615904 (is-Union!20264 (reg!20593 r!14126))) b!7616051))

(declare-fun b!7616054 () Bool)

(declare-fun e!4529139 () Bool)

(declare-fun tp!2223813 () Bool)

(assert (=> b!7616054 (= e!4529139 tp!2223813)))

(assert (=> b!7615903 (= tp!2223776 e!4529139)))

(declare-fun b!7616053 () Bool)

(declare-fun tp!2223811 () Bool)

(declare-fun tp!2223814 () Bool)

(assert (=> b!7616053 (= e!4529139 (and tp!2223811 tp!2223814))))

(declare-fun b!7616055 () Bool)

(declare-fun tp!2223815 () Bool)

(declare-fun tp!2223812 () Bool)

(assert (=> b!7616055 (= e!4529139 (and tp!2223815 tp!2223812))))

(declare-fun b!7616052 () Bool)

(assert (=> b!7616052 (= e!4529139 tp_is_empty!50883)))

(assert (= (and b!7615903 (is-ElementMatch!20264 (regOne!41041 r!14126))) b!7616052))

(assert (= (and b!7615903 (is-Concat!29109 (regOne!41041 r!14126))) b!7616053))

(assert (= (and b!7615903 (is-Star!20264 (regOne!41041 r!14126))) b!7616054))

(assert (= (and b!7615903 (is-Union!20264 (regOne!41041 r!14126))) b!7616055))

(declare-fun b!7616058 () Bool)

(declare-fun e!4529140 () Bool)

(declare-fun tp!2223818 () Bool)

(assert (=> b!7616058 (= e!4529140 tp!2223818)))

(assert (=> b!7615903 (= tp!2223777 e!4529140)))

(declare-fun b!7616057 () Bool)

(declare-fun tp!2223816 () Bool)

(declare-fun tp!2223819 () Bool)

(assert (=> b!7616057 (= e!4529140 (and tp!2223816 tp!2223819))))

(declare-fun b!7616059 () Bool)

(declare-fun tp!2223820 () Bool)

(declare-fun tp!2223817 () Bool)

(assert (=> b!7616059 (= e!4529140 (and tp!2223820 tp!2223817))))

(declare-fun b!7616056 () Bool)

(assert (=> b!7616056 (= e!4529140 tp_is_empty!50883)))

(assert (= (and b!7615903 (is-ElementMatch!20264 (regTwo!41041 r!14126))) b!7616056))

(assert (= (and b!7615903 (is-Concat!29109 (regTwo!41041 r!14126))) b!7616057))

(assert (= (and b!7615903 (is-Star!20264 (regTwo!41041 r!14126))) b!7616058))

(assert (= (and b!7615903 (is-Union!20264 (regTwo!41041 r!14126))) b!7616059))

(declare-fun b!7616062 () Bool)

(declare-fun e!4529141 () Bool)

(declare-fun tp!2223823 () Bool)

(assert (=> b!7616062 (= e!4529141 tp!2223823)))

(assert (=> b!7615902 (= tp!2223773 e!4529141)))

(declare-fun b!7616061 () Bool)

(declare-fun tp!2223821 () Bool)

(declare-fun tp!2223824 () Bool)

(assert (=> b!7616061 (= e!4529141 (and tp!2223821 tp!2223824))))

(declare-fun b!7616063 () Bool)

(declare-fun tp!2223825 () Bool)

(declare-fun tp!2223822 () Bool)

(assert (=> b!7616063 (= e!4529141 (and tp!2223825 tp!2223822))))

(declare-fun b!7616060 () Bool)

(assert (=> b!7616060 (= e!4529141 tp_is_empty!50883)))

(assert (= (and b!7615902 (is-ElementMatch!20264 (regOne!41040 r!14126))) b!7616060))

(assert (= (and b!7615902 (is-Concat!29109 (regOne!41040 r!14126))) b!7616061))

(assert (= (and b!7615902 (is-Star!20264 (regOne!41040 r!14126))) b!7616062))

(assert (= (and b!7615902 (is-Union!20264 (regOne!41040 r!14126))) b!7616063))

(declare-fun b!7616066 () Bool)

(declare-fun e!4529142 () Bool)

(declare-fun tp!2223828 () Bool)

(assert (=> b!7616066 (= e!4529142 tp!2223828)))

(assert (=> b!7615902 (= tp!2223774 e!4529142)))

(declare-fun b!7616065 () Bool)

(declare-fun tp!2223826 () Bool)

(declare-fun tp!2223829 () Bool)

(assert (=> b!7616065 (= e!4529142 (and tp!2223826 tp!2223829))))

(declare-fun b!7616067 () Bool)

(declare-fun tp!2223830 () Bool)

(declare-fun tp!2223827 () Bool)

(assert (=> b!7616067 (= e!4529142 (and tp!2223830 tp!2223827))))

(declare-fun b!7616064 () Bool)

(assert (=> b!7616064 (= e!4529142 tp_is_empty!50883)))

(assert (= (and b!7615902 (is-ElementMatch!20264 (regTwo!41040 r!14126))) b!7616064))

(assert (= (and b!7615902 (is-Concat!29109 (regTwo!41040 r!14126))) b!7616065))

(assert (= (and b!7615902 (is-Star!20264 (regTwo!41040 r!14126))) b!7616066))

(assert (= (and b!7615902 (is-Union!20264 (regTwo!41040 r!14126))) b!7616067))

(declare-fun b!7616072 () Bool)

(declare-fun e!4529145 () Bool)

(declare-fun tp!2223833 () Bool)

(assert (=> b!7616072 (= e!4529145 (and tp_is_empty!50883 tp!2223833))))

(assert (=> b!7615907 (= tp!2223772 e!4529145)))

(assert (= (and b!7615907 (is-Cons!72993 (t!387852 s!9605))) b!7616072))

(push 1)

(assert (not d!2322726))

(assert (not b!7616063))

(assert (not b!7616029))

(assert (not b!7616058))

(assert (not b!7616049))

(assert (not b!7615962))

(assert (not b!7616033))

(assert (not b!7616054))

(assert (not bm!699628))

(assert (not b!7616057))

(assert (not d!2322720))

(assert (not bm!699632))

(assert tp_is_empty!50883)

(assert (not b!7616055))

(assert (not b!7615971))

(assert (not b!7616059))

(assert (not b!7616065))

(assert (not d!2322724))

(assert (not b!7616062))

(assert (not b!7616036))

(assert (not b!7616031))

(assert (not bm!699629))

(assert (not b!7616066))

(assert (not bm!699631))

(assert (not b!7616051))

(assert (not b!7616034))

(assert (not d!2322728))

(assert (not b!7616061))

(assert (not b!7616072))

(assert (not b!7616067))

(assert (not b!7616050))

(assert (not b!7616053))

(assert (not b!7616030))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

