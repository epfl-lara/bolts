; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243300 () Bool)

(assert start!243300)

(declare-fun b!2490033 () Bool)

(declare-fun res!1053835 () Bool)

(declare-fun e!1580798 () Bool)

(assert (=> b!2490033 (=> (not res!1053835) (not e!1580798))))

(declare-datatypes ((C!14800 0))(
  ( (C!14801 (val!9052 Int)) )
))
(declare-datatypes ((List!29386 0))(
  ( (Nil!29286) (Cons!29286 (h!34706 C!14800) (t!211085 List!29386)) )
))
(declare-fun tl!4068 () List!29386)

(declare-fun isEmpty!16789 (List!29386) Bool)

(assert (=> b!2490033 (= res!1053835 (isEmpty!16789 tl!4068))))

(declare-fun b!2490034 () Bool)

(declare-fun res!1053832 () Bool)

(assert (=> b!2490034 (=> (not res!1053832) (not e!1580798))))

(declare-datatypes ((Regex!7321 0))(
  ( (ElementMatch!7321 (c!395765 C!14800)) (Concat!12017 (regOne!15154 Regex!7321) (regTwo!15154 Regex!7321)) (EmptyExpr!7321) (Star!7321 (reg!7650 Regex!7321)) (EmptyLang!7321) (Union!7321 (regOne!15155 Regex!7321) (regTwo!15155 Regex!7321)) )
))
(declare-fun r!27340 () Regex!7321)

(declare-fun c!14016 () C!14800)

(declare-fun contains!5293 (List!29386 C!14800) Bool)

(declare-fun firstChars!84 (Regex!7321) List!29386)

(assert (=> b!2490034 (= res!1053832 (contains!5293 (firstChars!84 r!27340) c!14016))))

(declare-fun b!2490035 () Bool)

(declare-fun lt!893862 () Regex!7321)

(declare-fun validRegex!2947 (Regex!7321) Bool)

(assert (=> b!2490035 (= e!1580798 (not (validRegex!2947 lt!893862)))))

(declare-fun b!2490036 () Bool)

(declare-fun e!1580799 () Bool)

(declare-fun tp_is_empty!12497 () Bool)

(declare-fun tp!797237 () Bool)

(assert (=> b!2490036 (= e!1580799 (and tp_is_empty!12497 tp!797237))))

(declare-fun b!2490038 () Bool)

(declare-fun e!1580797 () Bool)

(declare-fun tp!797240 () Bool)

(assert (=> b!2490038 (= e!1580797 tp!797240)))

(declare-fun b!2490039 () Bool)

(declare-fun e!1580800 () Bool)

(assert (=> b!2490039 (= e!1580800 e!1580798)))

(declare-fun res!1053834 () Bool)

(assert (=> b!2490039 (=> (not res!1053834) (not e!1580798))))

(declare-fun nullable!2238 (Regex!7321) Bool)

(declare-fun derivative!16 (Regex!7321 List!29386) Regex!7321)

(assert (=> b!2490039 (= res!1053834 (nullable!2238 (derivative!16 lt!893862 tl!4068)))))

(declare-fun derivativeStep!1890 (Regex!7321 C!14800) Regex!7321)

(assert (=> b!2490039 (= lt!893862 (derivativeStep!1890 r!27340 c!14016))))

(declare-fun b!2490040 () Bool)

(declare-fun tp!797239 () Bool)

(declare-fun tp!797238 () Bool)

(assert (=> b!2490040 (= e!1580797 (and tp!797239 tp!797238))))

(declare-fun b!2490041 () Bool)

(declare-fun tp!797241 () Bool)

(declare-fun tp!797242 () Bool)

(assert (=> b!2490041 (= e!1580797 (and tp!797241 tp!797242))))

(declare-fun b!2490042 () Bool)

(assert (=> b!2490042 (= e!1580797 tp_is_empty!12497)))

(declare-fun b!2490037 () Bool)

(declare-fun res!1053836 () Bool)

(assert (=> b!2490037 (=> (not res!1053836) (not e!1580798))))

(get-info :version)

(assert (=> b!2490037 (= res!1053836 (and (not ((_ is EmptyExpr!7321) r!27340)) (not ((_ is EmptyLang!7321) r!27340)) ((_ is ElementMatch!7321) r!27340) (= c!14016 (c!395765 r!27340)) (= lt!893862 EmptyExpr!7321)))))

(declare-fun res!1053833 () Bool)

(assert (=> start!243300 (=> (not res!1053833) (not e!1580800))))

(assert (=> start!243300 (= res!1053833 (validRegex!2947 r!27340))))

(assert (=> start!243300 e!1580800))

(assert (=> start!243300 e!1580797))

(assert (=> start!243300 tp_is_empty!12497))

(assert (=> start!243300 e!1580799))

(assert (= (and start!243300 res!1053833) b!2490039))

(assert (= (and b!2490039 res!1053834) b!2490037))

(assert (= (and b!2490037 res!1053836) b!2490033))

(assert (= (and b!2490033 res!1053835) b!2490034))

(assert (= (and b!2490034 res!1053832) b!2490035))

(assert (= (and start!243300 ((_ is ElementMatch!7321) r!27340)) b!2490042))

(assert (= (and start!243300 ((_ is Concat!12017) r!27340)) b!2490040))

(assert (= (and start!243300 ((_ is Star!7321) r!27340)) b!2490038))

(assert (= (and start!243300 ((_ is Union!7321) r!27340)) b!2490041))

(assert (= (and start!243300 ((_ is Cons!29286) tl!4068)) b!2490036))

(declare-fun m!2857673 () Bool)

(assert (=> b!2490035 m!2857673))

(declare-fun m!2857675 () Bool)

(assert (=> b!2490034 m!2857675))

(assert (=> b!2490034 m!2857675))

(declare-fun m!2857677 () Bool)

(assert (=> b!2490034 m!2857677))

(declare-fun m!2857679 () Bool)

(assert (=> b!2490033 m!2857679))

(declare-fun m!2857681 () Bool)

(assert (=> start!243300 m!2857681))

(declare-fun m!2857683 () Bool)

(assert (=> b!2490039 m!2857683))

(assert (=> b!2490039 m!2857683))

(declare-fun m!2857685 () Bool)

(assert (=> b!2490039 m!2857685))

(declare-fun m!2857687 () Bool)

(assert (=> b!2490039 m!2857687))

(check-sat (not start!243300) (not b!2490033) (not b!2490035) (not b!2490040) (not b!2490038) (not b!2490036) (not b!2490039) (not b!2490041) (not b!2490034) tp_is_empty!12497)
(check-sat)
(get-model)

(declare-fun bm!152929 () Bool)

(declare-fun call!152936 () Bool)

(declare-fun call!152934 () Bool)

(assert (=> bm!152929 (= call!152936 call!152934)))

(declare-fun b!2490067 () Bool)

(declare-fun res!1053850 () Bool)

(declare-fun e!1580818 () Bool)

(assert (=> b!2490067 (=> res!1053850 e!1580818)))

(assert (=> b!2490067 (= res!1053850 (not ((_ is Concat!12017) r!27340)))))

(declare-fun e!1580821 () Bool)

(assert (=> b!2490067 (= e!1580821 e!1580818)))

(declare-fun b!2490068 () Bool)

(declare-fun e!1580823 () Bool)

(assert (=> b!2490068 (= e!1580823 call!152936)))

(declare-fun b!2490069 () Bool)

(declare-fun e!1580819 () Bool)

(declare-fun e!1580822 () Bool)

(assert (=> b!2490069 (= e!1580819 e!1580822)))

(declare-fun res!1053848 () Bool)

(assert (=> b!2490069 (= res!1053848 (not (nullable!2238 (reg!7650 r!27340))))))

(assert (=> b!2490069 (=> (not res!1053848) (not e!1580822))))

(declare-fun bm!152930 () Bool)

(declare-fun c!395773 () Bool)

(declare-fun c!395774 () Bool)

(assert (=> bm!152930 (= call!152934 (validRegex!2947 (ite c!395774 (reg!7650 r!27340) (ite c!395773 (regOne!15155 r!27340) (regTwo!15154 r!27340)))))))

(declare-fun b!2490070 () Bool)

(declare-fun res!1053851 () Bool)

(declare-fun e!1580820 () Bool)

(assert (=> b!2490070 (=> (not res!1053851) (not e!1580820))))

(assert (=> b!2490070 (= res!1053851 call!152936)))

(assert (=> b!2490070 (= e!1580821 e!1580820)))

(declare-fun b!2490071 () Bool)

(declare-fun e!1580824 () Bool)

(assert (=> b!2490071 (= e!1580824 e!1580819)))

(assert (=> b!2490071 (= c!395774 ((_ is Star!7321) r!27340))))

(declare-fun b!2490072 () Bool)

(declare-fun call!152935 () Bool)

(assert (=> b!2490072 (= e!1580820 call!152935)))

(declare-fun b!2490073 () Bool)

(assert (=> b!2490073 (= e!1580819 e!1580821)))

(assert (=> b!2490073 (= c!395773 ((_ is Union!7321) r!27340))))

(declare-fun b!2490074 () Bool)

(assert (=> b!2490074 (= e!1580818 e!1580823)))

(declare-fun res!1053849 () Bool)

(assert (=> b!2490074 (=> (not res!1053849) (not e!1580823))))

(assert (=> b!2490074 (= res!1053849 call!152935)))

(declare-fun b!2490075 () Bool)

(assert (=> b!2490075 (= e!1580822 call!152934)))

(declare-fun d!714324 () Bool)

(declare-fun res!1053847 () Bool)

(assert (=> d!714324 (=> res!1053847 e!1580824)))

(assert (=> d!714324 (= res!1053847 ((_ is ElementMatch!7321) r!27340))))

(assert (=> d!714324 (= (validRegex!2947 r!27340) e!1580824)))

(declare-fun bm!152931 () Bool)

(assert (=> bm!152931 (= call!152935 (validRegex!2947 (ite c!395773 (regTwo!15155 r!27340) (regOne!15154 r!27340))))))

(assert (= (and d!714324 (not res!1053847)) b!2490071))

(assert (= (and b!2490071 c!395774) b!2490069))

(assert (= (and b!2490071 (not c!395774)) b!2490073))

(assert (= (and b!2490069 res!1053848) b!2490075))

(assert (= (and b!2490073 c!395773) b!2490070))

(assert (= (and b!2490073 (not c!395773)) b!2490067))

(assert (= (and b!2490070 res!1053851) b!2490072))

(assert (= (and b!2490067 (not res!1053850)) b!2490074))

(assert (= (and b!2490074 res!1053849) b!2490068))

(assert (= (or b!2490070 b!2490068) bm!152929))

(assert (= (or b!2490072 b!2490074) bm!152931))

(assert (= (or b!2490075 bm!152929) bm!152930))

(declare-fun m!2857697 () Bool)

(assert (=> b!2490069 m!2857697))

(declare-fun m!2857699 () Bool)

(assert (=> bm!152930 m!2857699))

(declare-fun m!2857701 () Bool)

(assert (=> bm!152931 m!2857701))

(assert (=> start!243300 d!714324))

(declare-fun bm!152932 () Bool)

(declare-fun call!152939 () Bool)

(declare-fun call!152937 () Bool)

(assert (=> bm!152932 (= call!152939 call!152937)))

(declare-fun b!2490076 () Bool)

(declare-fun res!1053855 () Bool)

(declare-fun e!1580825 () Bool)

(assert (=> b!2490076 (=> res!1053855 e!1580825)))

(assert (=> b!2490076 (= res!1053855 (not ((_ is Concat!12017) lt!893862)))))

(declare-fun e!1580828 () Bool)

(assert (=> b!2490076 (= e!1580828 e!1580825)))

(declare-fun b!2490077 () Bool)

(declare-fun e!1580830 () Bool)

(assert (=> b!2490077 (= e!1580830 call!152939)))

(declare-fun b!2490078 () Bool)

(declare-fun e!1580826 () Bool)

(declare-fun e!1580829 () Bool)

(assert (=> b!2490078 (= e!1580826 e!1580829)))

(declare-fun res!1053853 () Bool)

(assert (=> b!2490078 (= res!1053853 (not (nullable!2238 (reg!7650 lt!893862))))))

(assert (=> b!2490078 (=> (not res!1053853) (not e!1580829))))

(declare-fun bm!152933 () Bool)

(declare-fun c!395776 () Bool)

(declare-fun c!395775 () Bool)

(assert (=> bm!152933 (= call!152937 (validRegex!2947 (ite c!395776 (reg!7650 lt!893862) (ite c!395775 (regOne!15155 lt!893862) (regTwo!15154 lt!893862)))))))

(declare-fun b!2490079 () Bool)

(declare-fun res!1053856 () Bool)

(declare-fun e!1580827 () Bool)

(assert (=> b!2490079 (=> (not res!1053856) (not e!1580827))))

(assert (=> b!2490079 (= res!1053856 call!152939)))

(assert (=> b!2490079 (= e!1580828 e!1580827)))

(declare-fun b!2490080 () Bool)

(declare-fun e!1580831 () Bool)

(assert (=> b!2490080 (= e!1580831 e!1580826)))

(assert (=> b!2490080 (= c!395776 ((_ is Star!7321) lt!893862))))

(declare-fun b!2490081 () Bool)

(declare-fun call!152938 () Bool)

(assert (=> b!2490081 (= e!1580827 call!152938)))

(declare-fun b!2490082 () Bool)

(assert (=> b!2490082 (= e!1580826 e!1580828)))

(assert (=> b!2490082 (= c!395775 ((_ is Union!7321) lt!893862))))

(declare-fun b!2490083 () Bool)

(assert (=> b!2490083 (= e!1580825 e!1580830)))

(declare-fun res!1053854 () Bool)

(assert (=> b!2490083 (=> (not res!1053854) (not e!1580830))))

(assert (=> b!2490083 (= res!1053854 call!152938)))

(declare-fun b!2490084 () Bool)

(assert (=> b!2490084 (= e!1580829 call!152937)))

(declare-fun d!714330 () Bool)

(declare-fun res!1053852 () Bool)

(assert (=> d!714330 (=> res!1053852 e!1580831)))

(assert (=> d!714330 (= res!1053852 ((_ is ElementMatch!7321) lt!893862))))

(assert (=> d!714330 (= (validRegex!2947 lt!893862) e!1580831)))

(declare-fun bm!152934 () Bool)

(assert (=> bm!152934 (= call!152938 (validRegex!2947 (ite c!395775 (regTwo!15155 lt!893862) (regOne!15154 lt!893862))))))

(assert (= (and d!714330 (not res!1053852)) b!2490080))

(assert (= (and b!2490080 c!395776) b!2490078))

(assert (= (and b!2490080 (not c!395776)) b!2490082))

(assert (= (and b!2490078 res!1053853) b!2490084))

(assert (= (and b!2490082 c!395775) b!2490079))

(assert (= (and b!2490082 (not c!395775)) b!2490076))

(assert (= (and b!2490079 res!1053856) b!2490081))

(assert (= (and b!2490076 (not res!1053855)) b!2490083))

(assert (= (and b!2490083 res!1053854) b!2490077))

(assert (= (or b!2490079 b!2490077) bm!152932))

(assert (= (or b!2490081 b!2490083) bm!152934))

(assert (= (or b!2490084 bm!152932) bm!152933))

(declare-fun m!2857703 () Bool)

(assert (=> b!2490078 m!2857703))

(declare-fun m!2857705 () Bool)

(assert (=> bm!152933 m!2857705))

(declare-fun m!2857707 () Bool)

(assert (=> bm!152934 m!2857707))

(assert (=> b!2490035 d!714330))

(declare-fun d!714332 () Bool)

(declare-fun lt!893870 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3991 (List!29386) (InoxSet C!14800))

(assert (=> d!714332 (= lt!893870 (select (content!3991 (firstChars!84 r!27340)) c!14016))))

(declare-fun e!1580846 () Bool)

(assert (=> d!714332 (= lt!893870 e!1580846)))

(declare-fun res!1053861 () Bool)

(assert (=> d!714332 (=> (not res!1053861) (not e!1580846))))

(assert (=> d!714332 (= res!1053861 ((_ is Cons!29286) (firstChars!84 r!27340)))))

(assert (=> d!714332 (= (contains!5293 (firstChars!84 r!27340) c!14016) lt!893870)))

(declare-fun b!2490109 () Bool)

(declare-fun e!1580847 () Bool)

(assert (=> b!2490109 (= e!1580846 e!1580847)))

(declare-fun res!1053862 () Bool)

(assert (=> b!2490109 (=> res!1053862 e!1580847)))

(assert (=> b!2490109 (= res!1053862 (= (h!34706 (firstChars!84 r!27340)) c!14016))))

(declare-fun b!2490110 () Bool)

(assert (=> b!2490110 (= e!1580847 (contains!5293 (t!211085 (firstChars!84 r!27340)) c!14016))))

(assert (= (and d!714332 res!1053861) b!2490109))

(assert (= (and b!2490109 (not res!1053862)) b!2490110))

(assert (=> d!714332 m!2857675))

(declare-fun m!2857709 () Bool)

(assert (=> d!714332 m!2857709))

(declare-fun m!2857711 () Bool)

(assert (=> d!714332 m!2857711))

(declare-fun m!2857713 () Bool)

(assert (=> b!2490110 m!2857713))

(assert (=> b!2490034 d!714332))

(declare-fun b!2490159 () Bool)

(declare-fun e!1580881 () List!29386)

(declare-fun e!1580877 () List!29386)

(assert (=> b!2490159 (= e!1580881 e!1580877)))

(declare-fun c!395806 () Bool)

(assert (=> b!2490159 (= c!395806 ((_ is ElementMatch!7321) r!27340))))

(declare-fun b!2490160 () Bool)

(assert (=> b!2490160 (= e!1580877 (Cons!29286 (c!395765 r!27340) Nil!29286))))

(declare-fun b!2490161 () Bool)

(declare-fun e!1580880 () List!29386)

(declare-fun e!1580879 () List!29386)

(assert (=> b!2490161 (= e!1580880 e!1580879)))

(declare-fun c!395807 () Bool)

(assert (=> b!2490161 (= c!395807 ((_ is Union!7321) r!27340))))

(declare-fun b!2490162 () Bool)

(assert (=> b!2490162 (= e!1580881 Nil!29286)))

(declare-fun call!152969 () List!29386)

(declare-fun bm!152963 () Bool)

(declare-fun call!152970 () List!29386)

(declare-fun call!152971 () List!29386)

(declare-fun call!152972 () List!29386)

(declare-fun ++!7155 (List!29386 List!29386) List!29386)

(assert (=> bm!152963 (= call!152969 (++!7155 (ite c!395807 call!152970 call!152971) (ite c!395807 call!152971 call!152972)))))

(declare-fun bm!152964 () Bool)

(assert (=> bm!152964 (= call!152972 call!152970)))

(declare-fun b!2490164 () Bool)

(declare-fun call!152968 () List!29386)

(assert (=> b!2490164 (= e!1580880 call!152968)))

(declare-fun bm!152965 () Bool)

(assert (=> bm!152965 (= call!152971 (firstChars!84 (ite c!395807 (regTwo!15155 r!27340) (regOne!15154 r!27340))))))

(declare-fun bm!152966 () Bool)

(assert (=> bm!152966 (= call!152970 call!152968)))

(declare-fun c!395808 () Bool)

(declare-fun c!395810 () Bool)

(declare-fun bm!152967 () Bool)

(assert (=> bm!152967 (= call!152968 (firstChars!84 (ite c!395810 (reg!7650 r!27340) (ite c!395807 (regOne!15155 r!27340) (ite c!395808 (regTwo!15154 r!27340) (regOne!15154 r!27340))))))))

(declare-fun b!2490165 () Bool)

(declare-fun e!1580878 () List!29386)

(assert (=> b!2490165 (= e!1580878 call!152972)))

(declare-fun b!2490166 () Bool)

(assert (=> b!2490166 (= e!1580879 call!152969)))

(declare-fun d!714334 () Bool)

(declare-fun c!395809 () Bool)

(assert (=> d!714334 (= c!395809 (or ((_ is EmptyExpr!7321) r!27340) ((_ is EmptyLang!7321) r!27340)))))

(assert (=> d!714334 (= (firstChars!84 r!27340) e!1580881)))

(declare-fun b!2490163 () Bool)

(assert (=> b!2490163 (= e!1580878 call!152969)))

(declare-fun b!2490167 () Bool)

(assert (=> b!2490167 (= c!395810 ((_ is Star!7321) r!27340))))

(assert (=> b!2490167 (= e!1580877 e!1580880)))

(declare-fun b!2490168 () Bool)

(assert (=> b!2490168 (= c!395808 (nullable!2238 (regOne!15154 r!27340)))))

(assert (=> b!2490168 (= e!1580879 e!1580878)))

(assert (= (and d!714334 c!395809) b!2490162))

(assert (= (and d!714334 (not c!395809)) b!2490159))

(assert (= (and b!2490159 c!395806) b!2490160))

(assert (= (and b!2490159 (not c!395806)) b!2490167))

(assert (= (and b!2490167 c!395810) b!2490164))

(assert (= (and b!2490167 (not c!395810)) b!2490161))

(assert (= (and b!2490161 c!395807) b!2490166))

(assert (= (and b!2490161 (not c!395807)) b!2490168))

(assert (= (and b!2490168 c!395808) b!2490163))

(assert (= (and b!2490168 (not c!395808)) b!2490165))

(assert (= (or b!2490163 b!2490165) bm!152964))

(assert (= (or b!2490166 bm!152964) bm!152966))

(assert (= (or b!2490166 b!2490163) bm!152965))

(assert (= (or b!2490166 b!2490163) bm!152963))

(assert (= (or b!2490164 bm!152966) bm!152967))

(declare-fun m!2857723 () Bool)

(assert (=> bm!152963 m!2857723))

(declare-fun m!2857725 () Bool)

(assert (=> bm!152965 m!2857725))

(declare-fun m!2857727 () Bool)

(assert (=> bm!152967 m!2857727))

(declare-fun m!2857729 () Bool)

(assert (=> b!2490168 m!2857729))

(assert (=> b!2490034 d!714334))

(declare-fun d!714338 () Bool)

(declare-fun nullableFct!545 (Regex!7321) Bool)

(assert (=> d!714338 (= (nullable!2238 (derivative!16 lt!893862 tl!4068)) (nullableFct!545 (derivative!16 lt!893862 tl!4068)))))

(declare-fun bs!468347 () Bool)

(assert (= bs!468347 d!714338))

(assert (=> bs!468347 m!2857683))

(declare-fun m!2857731 () Bool)

(assert (=> bs!468347 m!2857731))

(assert (=> b!2490039 d!714338))

(declare-fun d!714340 () Bool)

(declare-fun lt!893874 () Regex!7321)

(assert (=> d!714340 (validRegex!2947 lt!893874)))

(declare-fun e!1580898 () Regex!7321)

(assert (=> d!714340 (= lt!893874 e!1580898)))

(declare-fun c!395817 () Bool)

(assert (=> d!714340 (= c!395817 ((_ is Cons!29286) tl!4068))))

(assert (=> d!714340 (validRegex!2947 lt!893862)))

(assert (=> d!714340 (= (derivative!16 lt!893862 tl!4068) lt!893874)))

(declare-fun b!2490191 () Bool)

(assert (=> b!2490191 (= e!1580898 (derivative!16 (derivativeStep!1890 lt!893862 (h!34706 tl!4068)) (t!211085 tl!4068)))))

(declare-fun b!2490192 () Bool)

(assert (=> b!2490192 (= e!1580898 lt!893862)))

(assert (= (and d!714340 c!395817) b!2490191))

(assert (= (and d!714340 (not c!395817)) b!2490192))

(declare-fun m!2857745 () Bool)

(assert (=> d!714340 m!2857745))

(assert (=> d!714340 m!2857673))

(declare-fun m!2857747 () Bool)

(assert (=> b!2490191 m!2857747))

(assert (=> b!2490191 m!2857747))

(declare-fun m!2857749 () Bool)

(assert (=> b!2490191 m!2857749))

(assert (=> b!2490039 d!714340))

(declare-fun b!2490249 () Bool)

(declare-fun e!1580931 () Regex!7321)

(assert (=> b!2490249 (= e!1580931 (ite (= c!14016 (c!395765 r!27340)) EmptyExpr!7321 EmptyLang!7321))))

(declare-fun b!2490250 () Bool)

(declare-fun c!395845 () Bool)

(assert (=> b!2490250 (= c!395845 ((_ is Union!7321) r!27340))))

(declare-fun e!1580932 () Regex!7321)

(assert (=> b!2490250 (= e!1580931 e!1580932)))

(declare-fun b!2490251 () Bool)

(declare-fun e!1580934 () Regex!7321)

(declare-fun call!153005 () Regex!7321)

(assert (=> b!2490251 (= e!1580934 (Union!7321 (Concat!12017 call!153005 (regTwo!15154 r!27340)) EmptyLang!7321))))

(declare-fun b!2490252 () Bool)

(declare-fun e!1580933 () Regex!7321)

(assert (=> b!2490252 (= e!1580933 EmptyLang!7321)))

(declare-fun b!2490253 () Bool)

(declare-fun c!395846 () Bool)

(assert (=> b!2490253 (= c!395846 (nullable!2238 (regOne!15154 r!27340)))))

(declare-fun e!1580930 () Regex!7321)

(assert (=> b!2490253 (= e!1580930 e!1580934)))

(declare-fun b!2490254 () Bool)

(assert (=> b!2490254 (= e!1580933 e!1580931)))

(declare-fun c!395847 () Bool)

(assert (=> b!2490254 (= c!395847 ((_ is ElementMatch!7321) r!27340))))

(declare-fun d!714346 () Bool)

(declare-fun lt!893880 () Regex!7321)

(assert (=> d!714346 (validRegex!2947 lt!893880)))

(assert (=> d!714346 (= lt!893880 e!1580933)))

(declare-fun c!395844 () Bool)

(assert (=> d!714346 (= c!395844 (or ((_ is EmptyExpr!7321) r!27340) ((_ is EmptyLang!7321) r!27340)))))

(assert (=> d!714346 (validRegex!2947 r!27340)))

(assert (=> d!714346 (= (derivativeStep!1890 r!27340 c!14016) lt!893880)))

(declare-fun c!395843 () Bool)

(declare-fun call!153002 () Regex!7321)

(declare-fun bm!152997 () Bool)

(assert (=> bm!152997 (= call!153002 (derivativeStep!1890 (ite c!395845 (regTwo!15155 r!27340) (ite c!395843 (reg!7650 r!27340) (regOne!15154 r!27340))) c!14016))))

(declare-fun bm!152998 () Bool)

(declare-fun call!153003 () Regex!7321)

(assert (=> bm!152998 (= call!153005 call!153003)))

(declare-fun b!2490255 () Bool)

(assert (=> b!2490255 (= e!1580932 e!1580930)))

(assert (=> b!2490255 (= c!395843 ((_ is Star!7321) r!27340))))

(declare-fun b!2490256 () Bool)

(assert (=> b!2490256 (= e!1580930 (Concat!12017 call!153003 r!27340))))

(declare-fun call!153004 () Regex!7321)

(declare-fun b!2490257 () Bool)

(assert (=> b!2490257 (= e!1580934 (Union!7321 (Concat!12017 call!153005 (regTwo!15154 r!27340)) call!153004))))

(declare-fun bm!152999 () Bool)

(assert (=> bm!152999 (= call!153003 call!153002)))

(declare-fun b!2490258 () Bool)

(assert (=> b!2490258 (= e!1580932 (Union!7321 call!153004 call!153002))))

(declare-fun bm!153000 () Bool)

(assert (=> bm!153000 (= call!153004 (derivativeStep!1890 (ite c!395845 (regOne!15155 r!27340) (regTwo!15154 r!27340)) c!14016))))

(assert (= (and d!714346 c!395844) b!2490252))

(assert (= (and d!714346 (not c!395844)) b!2490254))

(assert (= (and b!2490254 c!395847) b!2490249))

(assert (= (and b!2490254 (not c!395847)) b!2490250))

(assert (= (and b!2490250 c!395845) b!2490258))

(assert (= (and b!2490250 (not c!395845)) b!2490255))

(assert (= (and b!2490255 c!395843) b!2490256))

(assert (= (and b!2490255 (not c!395843)) b!2490253))

(assert (= (and b!2490253 c!395846) b!2490257))

(assert (= (and b!2490253 (not c!395846)) b!2490251))

(assert (= (or b!2490257 b!2490251) bm!152998))

(assert (= (or b!2490256 bm!152998) bm!152999))

(assert (= (or b!2490258 bm!152999) bm!152997))

(assert (= (or b!2490258 b!2490257) bm!153000))

(assert (=> b!2490253 m!2857729))

(declare-fun m!2857763 () Bool)

(assert (=> d!714346 m!2857763))

(assert (=> d!714346 m!2857681))

(declare-fun m!2857765 () Bool)

(assert (=> bm!152997 m!2857765))

(declare-fun m!2857767 () Bool)

(assert (=> bm!153000 m!2857767))

(assert (=> b!2490039 d!714346))

(declare-fun d!714352 () Bool)

(assert (=> d!714352 (= (isEmpty!16789 tl!4068) ((_ is Nil!29286) tl!4068))))

(assert (=> b!2490033 d!714352))

(declare-fun b!2490285 () Bool)

(declare-fun e!1580942 () Bool)

(declare-fun tp!797270 () Bool)

(assert (=> b!2490285 (= e!1580942 (and tp_is_empty!12497 tp!797270))))

(assert (=> b!2490036 (= tp!797237 e!1580942)))

(assert (= (and b!2490036 ((_ is Cons!29286) (t!211085 tl!4068))) b!2490285))

(declare-fun e!1580950 () Bool)

(assert (=> b!2490041 (= tp!797241 e!1580950)))

(declare-fun b!2490311 () Bool)

(declare-fun tp!797297 () Bool)

(assert (=> b!2490311 (= e!1580950 tp!797297)))

(declare-fun b!2490310 () Bool)

(declare-fun tp!797294 () Bool)

(declare-fun tp!797296 () Bool)

(assert (=> b!2490310 (= e!1580950 (and tp!797294 tp!797296))))

(declare-fun b!2490309 () Bool)

(assert (=> b!2490309 (= e!1580950 tp_is_empty!12497)))

(declare-fun b!2490312 () Bool)

(declare-fun tp!797295 () Bool)

(declare-fun tp!797298 () Bool)

(assert (=> b!2490312 (= e!1580950 (and tp!797295 tp!797298))))

(assert (= (and b!2490041 ((_ is ElementMatch!7321) (regOne!15155 r!27340))) b!2490309))

(assert (= (and b!2490041 ((_ is Concat!12017) (regOne!15155 r!27340))) b!2490310))

(assert (= (and b!2490041 ((_ is Star!7321) (regOne!15155 r!27340))) b!2490311))

(assert (= (and b!2490041 ((_ is Union!7321) (regOne!15155 r!27340))) b!2490312))

(declare-fun e!1580951 () Bool)

(assert (=> b!2490041 (= tp!797242 e!1580951)))

(declare-fun b!2490315 () Bool)

(declare-fun tp!797302 () Bool)

(assert (=> b!2490315 (= e!1580951 tp!797302)))

(declare-fun b!2490314 () Bool)

(declare-fun tp!797299 () Bool)

(declare-fun tp!797301 () Bool)

(assert (=> b!2490314 (= e!1580951 (and tp!797299 tp!797301))))

(declare-fun b!2490313 () Bool)

(assert (=> b!2490313 (= e!1580951 tp_is_empty!12497)))

(declare-fun b!2490316 () Bool)

(declare-fun tp!797300 () Bool)

(declare-fun tp!797303 () Bool)

(assert (=> b!2490316 (= e!1580951 (and tp!797300 tp!797303))))

(assert (= (and b!2490041 ((_ is ElementMatch!7321) (regTwo!15155 r!27340))) b!2490313))

(assert (= (and b!2490041 ((_ is Concat!12017) (regTwo!15155 r!27340))) b!2490314))

(assert (= (and b!2490041 ((_ is Star!7321) (regTwo!15155 r!27340))) b!2490315))

(assert (= (and b!2490041 ((_ is Union!7321) (regTwo!15155 r!27340))) b!2490316))

(declare-fun e!1580952 () Bool)

(assert (=> b!2490040 (= tp!797239 e!1580952)))

(declare-fun b!2490319 () Bool)

(declare-fun tp!797307 () Bool)

(assert (=> b!2490319 (= e!1580952 tp!797307)))

(declare-fun b!2490318 () Bool)

(declare-fun tp!797304 () Bool)

(declare-fun tp!797306 () Bool)

(assert (=> b!2490318 (= e!1580952 (and tp!797304 tp!797306))))

(declare-fun b!2490317 () Bool)

(assert (=> b!2490317 (= e!1580952 tp_is_empty!12497)))

(declare-fun b!2490320 () Bool)

(declare-fun tp!797305 () Bool)

(declare-fun tp!797308 () Bool)

(assert (=> b!2490320 (= e!1580952 (and tp!797305 tp!797308))))

(assert (= (and b!2490040 ((_ is ElementMatch!7321) (regOne!15154 r!27340))) b!2490317))

(assert (= (and b!2490040 ((_ is Concat!12017) (regOne!15154 r!27340))) b!2490318))

(assert (= (and b!2490040 ((_ is Star!7321) (regOne!15154 r!27340))) b!2490319))

(assert (= (and b!2490040 ((_ is Union!7321) (regOne!15154 r!27340))) b!2490320))

(declare-fun e!1580953 () Bool)

(assert (=> b!2490040 (= tp!797238 e!1580953)))

(declare-fun b!2490323 () Bool)

(declare-fun tp!797312 () Bool)

(assert (=> b!2490323 (= e!1580953 tp!797312)))

(declare-fun b!2490322 () Bool)

(declare-fun tp!797309 () Bool)

(declare-fun tp!797311 () Bool)

(assert (=> b!2490322 (= e!1580953 (and tp!797309 tp!797311))))

(declare-fun b!2490321 () Bool)

(assert (=> b!2490321 (= e!1580953 tp_is_empty!12497)))

(declare-fun b!2490324 () Bool)

(declare-fun tp!797310 () Bool)

(declare-fun tp!797313 () Bool)

(assert (=> b!2490324 (= e!1580953 (and tp!797310 tp!797313))))

(assert (= (and b!2490040 ((_ is ElementMatch!7321) (regTwo!15154 r!27340))) b!2490321))

(assert (= (and b!2490040 ((_ is Concat!12017) (regTwo!15154 r!27340))) b!2490322))

(assert (= (and b!2490040 ((_ is Star!7321) (regTwo!15154 r!27340))) b!2490323))

(assert (= (and b!2490040 ((_ is Union!7321) (regTwo!15154 r!27340))) b!2490324))

(declare-fun e!1580954 () Bool)

(assert (=> b!2490038 (= tp!797240 e!1580954)))

(declare-fun b!2490327 () Bool)

(declare-fun tp!797317 () Bool)

(assert (=> b!2490327 (= e!1580954 tp!797317)))

(declare-fun b!2490326 () Bool)

(declare-fun tp!797314 () Bool)

(declare-fun tp!797316 () Bool)

(assert (=> b!2490326 (= e!1580954 (and tp!797314 tp!797316))))

(declare-fun b!2490325 () Bool)

(assert (=> b!2490325 (= e!1580954 tp_is_empty!12497)))

(declare-fun b!2490328 () Bool)

(declare-fun tp!797315 () Bool)

(declare-fun tp!797318 () Bool)

(assert (=> b!2490328 (= e!1580954 (and tp!797315 tp!797318))))

(assert (= (and b!2490038 ((_ is ElementMatch!7321) (reg!7650 r!27340))) b!2490325))

(assert (= (and b!2490038 ((_ is Concat!12017) (reg!7650 r!27340))) b!2490326))

(assert (= (and b!2490038 ((_ is Star!7321) (reg!7650 r!27340))) b!2490327))

(assert (= (and b!2490038 ((_ is Union!7321) (reg!7650 r!27340))) b!2490328))

(check-sat (not b!2490069) (not b!2490322) (not bm!152997) (not b!2490315) (not b!2490319) (not b!2490078) (not d!714346) (not b!2490168) (not b!2490326) (not b!2490316) (not b!2490312) (not b!2490310) (not d!714332) (not bm!152963) (not bm!152930) (not bm!152967) (not b!2490285) (not d!714338) (not d!714340) (not b!2490328) (not bm!153000) (not b!2490320) (not b!2490191) (not b!2490324) (not b!2490253) (not bm!152931) (not b!2490318) (not bm!152965) (not bm!152933) (not b!2490323) (not b!2490110) (not b!2490311) (not bm!152934) tp_is_empty!12497 (not b!2490327) (not b!2490314))
(check-sat)
