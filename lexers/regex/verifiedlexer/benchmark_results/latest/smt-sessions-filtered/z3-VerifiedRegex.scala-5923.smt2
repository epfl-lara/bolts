; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!290008 () Bool)

(assert start!290008)

(declare-fun b!3011644 () Bool)

(declare-fun e!1890856 () Bool)

(declare-fun tp!955741 () Bool)

(declare-fun tp!955744 () Bool)

(assert (=> b!3011644 (= e!1890856 (and tp!955741 tp!955744))))

(declare-fun b!3011645 () Bool)

(declare-fun e!1890858 () Bool)

(declare-fun tp_is_empty!16357 () Bool)

(declare-fun tp!955743 () Bool)

(assert (=> b!3011645 (= e!1890858 (and tp_is_empty!16357 tp!955743))))

(declare-fun b!3011646 () Bool)

(declare-fun tp!955742 () Bool)

(assert (=> b!3011646 (= e!1890856 tp!955742)))

(declare-fun b!3011647 () Bool)

(declare-fun e!1890859 () Bool)

(declare-datatypes ((C!18980 0))(
  ( (C!18981 (val!11526 Int)) )
))
(declare-datatypes ((Regex!9397 0))(
  ( (ElementMatch!9397 (c!496205 C!18980)) (Concat!14718 (regOne!19306 Regex!9397) (regTwo!19306 Regex!9397)) (EmptyExpr!9397) (Star!9397 (reg!9726 Regex!9397)) (EmptyLang!9397) (Union!9397 (regOne!19307 Regex!9397) (regTwo!19307 Regex!9397)) )
))
(declare-fun r!17423 () Regex!9397)

(declare-fun validRegex!4130 (Regex!9397) Bool)

(assert (=> b!3011647 (= e!1890859 (validRegex!4130 (regOne!19306 r!17423)))))

(declare-fun b!3011648 () Bool)

(declare-fun tp!955745 () Bool)

(declare-fun tp!955740 () Bool)

(assert (=> b!3011648 (= e!1890856 (and tp!955745 tp!955740))))

(declare-fun res!1241013 () Bool)

(declare-fun e!1890857 () Bool)

(assert (=> start!290008 (=> (not res!1241013) (not e!1890857))))

(assert (=> start!290008 (= res!1241013 (validRegex!4130 r!17423))))

(assert (=> start!290008 e!1890857))

(assert (=> start!290008 e!1890856))

(assert (=> start!290008 e!1890858))

(declare-fun b!3011649 () Bool)

(assert (=> b!3011649 (= e!1890856 tp_is_empty!16357)))

(declare-fun b!3011650 () Bool)

(declare-fun res!1241012 () Bool)

(assert (=> b!3011650 (=> res!1241012 e!1890859)))

(declare-datatypes ((List!35262 0))(
  ( (Nil!35138) (Cons!35138 (h!40558 C!18980) (t!234327 List!35262)) )
))
(declare-fun s!11993 () List!35262)

(declare-fun isEmpty!19425 (List!35262) Bool)

(assert (=> b!3011650 (= res!1241012 (isEmpty!19425 s!11993))))

(declare-fun b!3011651 () Bool)

(assert (=> b!3011651 (= e!1890857 (not e!1890859))))

(declare-fun res!1241014 () Bool)

(assert (=> b!3011651 (=> res!1241014 e!1890859)))

(declare-fun lt!1044007 () Bool)

(get-info :version)

(assert (=> b!3011651 (= res!1241014 (or (not lt!1044007) (not ((_ is Concat!14718) r!17423))))))

(declare-fun matchRSpec!1534 (Regex!9397 List!35262) Bool)

(assert (=> b!3011651 (= lt!1044007 (matchRSpec!1534 r!17423 s!11993))))

(declare-fun matchR!4279 (Regex!9397 List!35262) Bool)

(assert (=> b!3011651 (= lt!1044007 (matchR!4279 r!17423 s!11993))))

(declare-datatypes ((Unit!49217 0))(
  ( (Unit!49218) )
))
(declare-fun lt!1044008 () Unit!49217)

(declare-fun mainMatchTheorem!1534 (Regex!9397 List!35262) Unit!49217)

(assert (=> b!3011651 (= lt!1044008 (mainMatchTheorem!1534 r!17423 s!11993))))

(assert (= (and start!290008 res!1241013) b!3011651))

(assert (= (and b!3011651 (not res!1241014)) b!3011650))

(assert (= (and b!3011650 (not res!1241012)) b!3011647))

(assert (= (and start!290008 ((_ is ElementMatch!9397) r!17423)) b!3011649))

(assert (= (and start!290008 ((_ is Concat!14718) r!17423)) b!3011644))

(assert (= (and start!290008 ((_ is Star!9397) r!17423)) b!3011646))

(assert (= (and start!290008 ((_ is Union!9397) r!17423)) b!3011648))

(assert (= (and start!290008 ((_ is Cons!35138) s!11993)) b!3011645))

(declare-fun m!3357805 () Bool)

(assert (=> b!3011647 m!3357805))

(declare-fun m!3357807 () Bool)

(assert (=> start!290008 m!3357807))

(declare-fun m!3357809 () Bool)

(assert (=> b!3011650 m!3357809))

(declare-fun m!3357811 () Bool)

(assert (=> b!3011651 m!3357811))

(declare-fun m!3357813 () Bool)

(assert (=> b!3011651 m!3357813))

(declare-fun m!3357815 () Bool)

(assert (=> b!3011651 m!3357815))

(check-sat (not b!3011644) (not b!3011651) (not b!3011647) (not b!3011650) (not b!3011645) (not b!3011648) tp_is_empty!16357 (not start!290008) (not b!3011646))
(check-sat)
(get-model)

(declare-fun b!3011793 () Bool)

(assert (=> b!3011793 true))

(assert (=> b!3011793 true))

(declare-fun bs!529591 () Bool)

(declare-fun b!3011796 () Bool)

(assert (= bs!529591 (and b!3011796 b!3011793)))

(declare-fun lambda!112684 () Int)

(declare-fun lambda!112683 () Int)

(assert (=> bs!529591 (not (= lambda!112684 lambda!112683))))

(assert (=> b!3011796 true))

(assert (=> b!3011796 true))

(declare-fun b!3011789 () Bool)

(declare-fun c!496243 () Bool)

(assert (=> b!3011789 (= c!496243 ((_ is ElementMatch!9397) r!17423))))

(declare-fun e!1890944 () Bool)

(declare-fun e!1890942 () Bool)

(assert (=> b!3011789 (= e!1890944 e!1890942)))

(declare-fun b!3011790 () Bool)

(declare-fun e!1890941 () Bool)

(declare-fun call!202997 () Bool)

(assert (=> b!3011790 (= e!1890941 call!202997)))

(declare-fun b!3011791 () Bool)

(declare-fun e!1890945 () Bool)

(declare-fun e!1890947 () Bool)

(assert (=> b!3011791 (= e!1890945 e!1890947)))

(declare-fun c!496242 () Bool)

(assert (=> b!3011791 (= c!496242 ((_ is Star!9397) r!17423))))

(declare-fun d!847826 () Bool)

(declare-fun c!496240 () Bool)

(assert (=> d!847826 (= c!496240 ((_ is EmptyExpr!9397) r!17423))))

(assert (=> d!847826 (= (matchRSpec!1534 r!17423 s!11993) e!1890941)))

(declare-fun b!3011792 () Bool)

(assert (=> b!3011792 (= e!1890942 (= s!11993 (Cons!35138 (c!496205 r!17423) Nil!35138)))))

(declare-fun e!1890943 () Bool)

(declare-fun call!202998 () Bool)

(assert (=> b!3011793 (= e!1890943 call!202998)))

(declare-fun b!3011794 () Bool)

(declare-fun e!1890946 () Bool)

(assert (=> b!3011794 (= e!1890945 e!1890946)))

(declare-fun res!1241081 () Bool)

(assert (=> b!3011794 (= res!1241081 (matchRSpec!1534 (regOne!19307 r!17423) s!11993))))

(assert (=> b!3011794 (=> res!1241081 e!1890946)))

(declare-fun bm!202992 () Bool)

(declare-fun Exists!1664 (Int) Bool)

(assert (=> bm!202992 (= call!202998 (Exists!1664 (ite c!496242 lambda!112683 lambda!112684)))))

(declare-fun b!3011795 () Bool)

(assert (=> b!3011795 (= e!1890941 e!1890944)))

(declare-fun res!1241082 () Bool)

(assert (=> b!3011795 (= res!1241082 (not ((_ is EmptyLang!9397) r!17423)))))

(assert (=> b!3011795 (=> (not res!1241082) (not e!1890944))))

(assert (=> b!3011796 (= e!1890947 call!202998)))

(declare-fun b!3011797 () Bool)

(declare-fun c!496241 () Bool)

(assert (=> b!3011797 (= c!496241 ((_ is Union!9397) r!17423))))

(assert (=> b!3011797 (= e!1890942 e!1890945)))

(declare-fun bm!202993 () Bool)

(assert (=> bm!202993 (= call!202997 (isEmpty!19425 s!11993))))

(declare-fun b!3011798 () Bool)

(declare-fun res!1241080 () Bool)

(assert (=> b!3011798 (=> res!1241080 e!1890943)))

(assert (=> b!3011798 (= res!1241080 call!202997)))

(assert (=> b!3011798 (= e!1890947 e!1890943)))

(declare-fun b!3011801 () Bool)

(assert (=> b!3011801 (= e!1890946 (matchRSpec!1534 (regTwo!19307 r!17423) s!11993))))

(assert (= (and d!847826 c!496240) b!3011790))

(assert (= (and d!847826 (not c!496240)) b!3011795))

(assert (= (and b!3011795 res!1241082) b!3011789))

(assert (= (and b!3011789 c!496243) b!3011792))

(assert (= (and b!3011789 (not c!496243)) b!3011797))

(assert (= (and b!3011797 c!496241) b!3011794))

(assert (= (and b!3011797 (not c!496241)) b!3011791))

(assert (= (and b!3011794 (not res!1241081)) b!3011801))

(assert (= (and b!3011791 c!496242) b!3011798))

(assert (= (and b!3011791 (not c!496242)) b!3011796))

(assert (= (and b!3011798 (not res!1241080)) b!3011793))

(assert (= (or b!3011793 b!3011796) bm!202992))

(assert (= (or b!3011790 b!3011798) bm!202993))

(declare-fun m!3357835 () Bool)

(assert (=> b!3011794 m!3357835))

(declare-fun m!3357837 () Bool)

(assert (=> bm!202992 m!3357837))

(assert (=> bm!202993 m!3357809))

(declare-fun m!3357839 () Bool)

(assert (=> b!3011801 m!3357839))

(assert (=> b!3011651 d!847826))

(declare-fun d!847838 () Bool)

(declare-fun e!1890988 () Bool)

(assert (=> d!847838 e!1890988))

(declare-fun c!496253 () Bool)

(assert (=> d!847838 (= c!496253 ((_ is EmptyExpr!9397) r!17423))))

(declare-fun lt!1044017 () Bool)

(declare-fun e!1890987 () Bool)

(assert (=> d!847838 (= lt!1044017 e!1890987)))

(declare-fun c!496255 () Bool)

(assert (=> d!847838 (= c!496255 (isEmpty!19425 s!11993))))

(assert (=> d!847838 (validRegex!4130 r!17423)))

(assert (=> d!847838 (= (matchR!4279 r!17423 s!11993) lt!1044017)))

(declare-fun b!3011887 () Bool)

(declare-fun e!1890983 () Bool)

(declare-fun head!6706 (List!35262) C!18980)

(assert (=> b!3011887 (= e!1890983 (= (head!6706 s!11993) (c!496205 r!17423)))))

(declare-fun b!3011888 () Bool)

(declare-fun res!1241120 () Bool)

(assert (=> b!3011888 (=> (not res!1241120) (not e!1890983))))

(declare-fun call!203004 () Bool)

(assert (=> b!3011888 (= res!1241120 (not call!203004))))

(declare-fun b!3011889 () Bool)

(declare-fun e!1890989 () Bool)

(declare-fun e!1890986 () Bool)

(assert (=> b!3011889 (= e!1890989 e!1890986)))

(declare-fun res!1241113 () Bool)

(assert (=> b!3011889 (=> res!1241113 e!1890986)))

(assert (=> b!3011889 (= res!1241113 call!203004)))

(declare-fun b!3011890 () Bool)

(declare-fun res!1241117 () Bool)

(declare-fun e!1890985 () Bool)

(assert (=> b!3011890 (=> res!1241117 e!1890985)))

(assert (=> b!3011890 (= res!1241117 e!1890983)))

(declare-fun res!1241118 () Bool)

(assert (=> b!3011890 (=> (not res!1241118) (not e!1890983))))

(assert (=> b!3011890 (= res!1241118 lt!1044017)))

(declare-fun b!3011891 () Bool)

(assert (=> b!3011891 (= e!1890986 (not (= (head!6706 s!11993) (c!496205 r!17423))))))

(declare-fun b!3011892 () Bool)

(declare-fun derivativeStep!2647 (Regex!9397 C!18980) Regex!9397)

(declare-fun tail!4932 (List!35262) List!35262)

(assert (=> b!3011892 (= e!1890987 (matchR!4279 (derivativeStep!2647 r!17423 (head!6706 s!11993)) (tail!4932 s!11993)))))

(declare-fun bm!202999 () Bool)

(assert (=> bm!202999 (= call!203004 (isEmpty!19425 s!11993))))

(declare-fun b!3011893 () Bool)

(assert (=> b!3011893 (= e!1890985 e!1890989)))

(declare-fun res!1241116 () Bool)

(assert (=> b!3011893 (=> (not res!1241116) (not e!1890989))))

(assert (=> b!3011893 (= res!1241116 (not lt!1044017))))

(declare-fun b!3011894 () Bool)

(declare-fun e!1890984 () Bool)

(assert (=> b!3011894 (= e!1890984 (not lt!1044017))))

(declare-fun b!3011895 () Bool)

(declare-fun res!1241119 () Bool)

(assert (=> b!3011895 (=> res!1241119 e!1890985)))

(assert (=> b!3011895 (= res!1241119 (not ((_ is ElementMatch!9397) r!17423)))))

(assert (=> b!3011895 (= e!1890984 e!1890985)))

(declare-fun b!3011896 () Bool)

(declare-fun res!1241115 () Bool)

(assert (=> b!3011896 (=> res!1241115 e!1890986)))

(assert (=> b!3011896 (= res!1241115 (not (isEmpty!19425 (tail!4932 s!11993))))))

(declare-fun b!3011897 () Bool)

(declare-fun nullable!3049 (Regex!9397) Bool)

(assert (=> b!3011897 (= e!1890987 (nullable!3049 r!17423))))

(declare-fun b!3011898 () Bool)

(assert (=> b!3011898 (= e!1890988 (= lt!1044017 call!203004))))

(declare-fun b!3011899 () Bool)

(assert (=> b!3011899 (= e!1890988 e!1890984)))

(declare-fun c!496254 () Bool)

(assert (=> b!3011899 (= c!496254 ((_ is EmptyLang!9397) r!17423))))

(declare-fun b!3011900 () Bool)

(declare-fun res!1241114 () Bool)

(assert (=> b!3011900 (=> (not res!1241114) (not e!1890983))))

(assert (=> b!3011900 (= res!1241114 (isEmpty!19425 (tail!4932 s!11993)))))

(assert (= (and d!847838 c!496255) b!3011897))

(assert (= (and d!847838 (not c!496255)) b!3011892))

(assert (= (and d!847838 c!496253) b!3011898))

(assert (= (and d!847838 (not c!496253)) b!3011899))

(assert (= (and b!3011899 c!496254) b!3011894))

(assert (= (and b!3011899 (not c!496254)) b!3011895))

(assert (= (and b!3011895 (not res!1241119)) b!3011890))

(assert (= (and b!3011890 res!1241118) b!3011888))

(assert (= (and b!3011888 res!1241120) b!3011900))

(assert (= (and b!3011900 res!1241114) b!3011887))

(assert (= (and b!3011890 (not res!1241117)) b!3011893))

(assert (= (and b!3011893 res!1241116) b!3011889))

(assert (= (and b!3011889 (not res!1241113)) b!3011896))

(assert (= (and b!3011896 (not res!1241115)) b!3011891))

(assert (= (or b!3011898 b!3011888 b!3011889) bm!202999))

(declare-fun m!3357855 () Bool)

(assert (=> b!3011900 m!3357855))

(assert (=> b!3011900 m!3357855))

(declare-fun m!3357857 () Bool)

(assert (=> b!3011900 m!3357857))

(declare-fun m!3357859 () Bool)

(assert (=> b!3011891 m!3357859))

(declare-fun m!3357861 () Bool)

(assert (=> b!3011897 m!3357861))

(assert (=> bm!202999 m!3357809))

(assert (=> b!3011887 m!3357859))

(assert (=> d!847838 m!3357809))

(assert (=> d!847838 m!3357807))

(assert (=> b!3011896 m!3357855))

(assert (=> b!3011896 m!3357855))

(assert (=> b!3011896 m!3357857))

(assert (=> b!3011892 m!3357859))

(assert (=> b!3011892 m!3357859))

(declare-fun m!3357863 () Bool)

(assert (=> b!3011892 m!3357863))

(assert (=> b!3011892 m!3357855))

(assert (=> b!3011892 m!3357863))

(assert (=> b!3011892 m!3357855))

(declare-fun m!3357865 () Bool)

(assert (=> b!3011892 m!3357865))

(assert (=> b!3011651 d!847838))

(declare-fun d!847842 () Bool)

(assert (=> d!847842 (= (matchR!4279 r!17423 s!11993) (matchRSpec!1534 r!17423 s!11993))))

(declare-fun lt!1044020 () Unit!49217)

(declare-fun choose!17879 (Regex!9397 List!35262) Unit!49217)

(assert (=> d!847842 (= lt!1044020 (choose!17879 r!17423 s!11993))))

(assert (=> d!847842 (validRegex!4130 r!17423)))

(assert (=> d!847842 (= (mainMatchTheorem!1534 r!17423 s!11993) lt!1044020)))

(declare-fun bs!529593 () Bool)

(assert (= bs!529593 d!847842))

(assert (=> bs!529593 m!3357813))

(assert (=> bs!529593 m!3357811))

(declare-fun m!3357867 () Bool)

(assert (=> bs!529593 m!3357867))

(assert (=> bs!529593 m!3357807))

(assert (=> b!3011651 d!847842))

(declare-fun d!847844 () Bool)

(assert (=> d!847844 (= (isEmpty!19425 s!11993) ((_ is Nil!35138) s!11993))))

(assert (=> b!3011650 d!847844))

(declare-fun bm!203006 () Bool)

(declare-fun call!203013 () Bool)

(declare-fun c!496261 () Bool)

(assert (=> bm!203006 (= call!203013 (validRegex!4130 (ite c!496261 (regTwo!19307 r!17423) (regOne!19306 r!17423))))))

(declare-fun b!3011919 () Bool)

(declare-fun res!1241135 () Bool)

(declare-fun e!1891010 () Bool)

(assert (=> b!3011919 (=> res!1241135 e!1891010)))

(assert (=> b!3011919 (= res!1241135 (not ((_ is Concat!14718) r!17423)))))

(declare-fun e!1891006 () Bool)

(assert (=> b!3011919 (= e!1891006 e!1891010)))

(declare-fun b!3011920 () Bool)

(declare-fun e!1891008 () Bool)

(assert (=> b!3011920 (= e!1891010 e!1891008)))

(declare-fun res!1241131 () Bool)

(assert (=> b!3011920 (=> (not res!1241131) (not e!1891008))))

(assert (=> b!3011920 (= res!1241131 call!203013)))

(declare-fun call!203011 () Bool)

(declare-fun c!496260 () Bool)

(declare-fun bm!203007 () Bool)

(assert (=> bm!203007 (= call!203011 (validRegex!4130 (ite c!496260 (reg!9726 r!17423) (ite c!496261 (regOne!19307 r!17423) (regTwo!19306 r!17423)))))))

(declare-fun b!3011921 () Bool)

(declare-fun e!1891004 () Bool)

(assert (=> b!3011921 (= e!1891004 call!203011)))

(declare-fun b!3011922 () Bool)

(declare-fun e!1891009 () Bool)

(assert (=> b!3011922 (= e!1891009 e!1891006)))

(assert (=> b!3011922 (= c!496261 ((_ is Union!9397) r!17423))))

(declare-fun b!3011923 () Bool)

(declare-fun call!203012 () Bool)

(assert (=> b!3011923 (= e!1891008 call!203012)))

(declare-fun b!3011925 () Bool)

(assert (=> b!3011925 (= e!1891009 e!1891004)))

(declare-fun res!1241134 () Bool)

(assert (=> b!3011925 (= res!1241134 (not (nullable!3049 (reg!9726 r!17423))))))

(assert (=> b!3011925 (=> (not res!1241134) (not e!1891004))))

(declare-fun b!3011926 () Bool)

(declare-fun e!1891007 () Bool)

(assert (=> b!3011926 (= e!1891007 call!203013)))

(declare-fun bm!203008 () Bool)

(assert (=> bm!203008 (= call!203012 call!203011)))

(declare-fun b!3011927 () Bool)

(declare-fun e!1891005 () Bool)

(assert (=> b!3011927 (= e!1891005 e!1891009)))

(assert (=> b!3011927 (= c!496260 ((_ is Star!9397) r!17423))))

(declare-fun d!847846 () Bool)

(declare-fun res!1241133 () Bool)

(assert (=> d!847846 (=> res!1241133 e!1891005)))

(assert (=> d!847846 (= res!1241133 ((_ is ElementMatch!9397) r!17423))))

(assert (=> d!847846 (= (validRegex!4130 r!17423) e!1891005)))

(declare-fun b!3011924 () Bool)

(declare-fun res!1241132 () Bool)

(assert (=> b!3011924 (=> (not res!1241132) (not e!1891007))))

(assert (=> b!3011924 (= res!1241132 call!203012)))

(assert (=> b!3011924 (= e!1891006 e!1891007)))

(assert (= (and d!847846 (not res!1241133)) b!3011927))

(assert (= (and b!3011927 c!496260) b!3011925))

(assert (= (and b!3011927 (not c!496260)) b!3011922))

(assert (= (and b!3011925 res!1241134) b!3011921))

(assert (= (and b!3011922 c!496261) b!3011924))

(assert (= (and b!3011922 (not c!496261)) b!3011919))

(assert (= (and b!3011924 res!1241132) b!3011926))

(assert (= (and b!3011919 (not res!1241135)) b!3011920))

(assert (= (and b!3011920 res!1241131) b!3011923))

(assert (= (or b!3011924 b!3011923) bm!203008))

(assert (= (or b!3011926 b!3011920) bm!203006))

(assert (= (or b!3011921 bm!203008) bm!203007))

(declare-fun m!3357869 () Bool)

(assert (=> bm!203006 m!3357869))

(declare-fun m!3357871 () Bool)

(assert (=> bm!203007 m!3357871))

(declare-fun m!3357873 () Bool)

(assert (=> b!3011925 m!3357873))

(assert (=> start!290008 d!847846))

(declare-fun bm!203009 () Bool)

(declare-fun call!203016 () Bool)

(declare-fun c!496263 () Bool)

(assert (=> bm!203009 (= call!203016 (validRegex!4130 (ite c!496263 (regTwo!19307 (regOne!19306 r!17423)) (regOne!19306 (regOne!19306 r!17423)))))))

(declare-fun b!3011928 () Bool)

(declare-fun res!1241140 () Bool)

(declare-fun e!1891017 () Bool)

(assert (=> b!3011928 (=> res!1241140 e!1891017)))

(assert (=> b!3011928 (= res!1241140 (not ((_ is Concat!14718) (regOne!19306 r!17423))))))

(declare-fun e!1891013 () Bool)

(assert (=> b!3011928 (= e!1891013 e!1891017)))

(declare-fun b!3011929 () Bool)

(declare-fun e!1891015 () Bool)

(assert (=> b!3011929 (= e!1891017 e!1891015)))

(declare-fun res!1241136 () Bool)

(assert (=> b!3011929 (=> (not res!1241136) (not e!1891015))))

(assert (=> b!3011929 (= res!1241136 call!203016)))

(declare-fun call!203014 () Bool)

(declare-fun bm!203010 () Bool)

(declare-fun c!496262 () Bool)

(assert (=> bm!203010 (= call!203014 (validRegex!4130 (ite c!496262 (reg!9726 (regOne!19306 r!17423)) (ite c!496263 (regOne!19307 (regOne!19306 r!17423)) (regTwo!19306 (regOne!19306 r!17423))))))))

(declare-fun b!3011930 () Bool)

(declare-fun e!1891011 () Bool)

(assert (=> b!3011930 (= e!1891011 call!203014)))

(declare-fun b!3011931 () Bool)

(declare-fun e!1891016 () Bool)

(assert (=> b!3011931 (= e!1891016 e!1891013)))

(assert (=> b!3011931 (= c!496263 ((_ is Union!9397) (regOne!19306 r!17423)))))

(declare-fun b!3011932 () Bool)

(declare-fun call!203015 () Bool)

(assert (=> b!3011932 (= e!1891015 call!203015)))

(declare-fun b!3011934 () Bool)

(assert (=> b!3011934 (= e!1891016 e!1891011)))

(declare-fun res!1241139 () Bool)

(assert (=> b!3011934 (= res!1241139 (not (nullable!3049 (reg!9726 (regOne!19306 r!17423)))))))

(assert (=> b!3011934 (=> (not res!1241139) (not e!1891011))))

(declare-fun b!3011935 () Bool)

(declare-fun e!1891014 () Bool)

(assert (=> b!3011935 (= e!1891014 call!203016)))

(declare-fun bm!203011 () Bool)

(assert (=> bm!203011 (= call!203015 call!203014)))

(declare-fun b!3011936 () Bool)

(declare-fun e!1891012 () Bool)

(assert (=> b!3011936 (= e!1891012 e!1891016)))

(assert (=> b!3011936 (= c!496262 ((_ is Star!9397) (regOne!19306 r!17423)))))

(declare-fun d!847848 () Bool)

(declare-fun res!1241138 () Bool)

(assert (=> d!847848 (=> res!1241138 e!1891012)))

(assert (=> d!847848 (= res!1241138 ((_ is ElementMatch!9397) (regOne!19306 r!17423)))))

(assert (=> d!847848 (= (validRegex!4130 (regOne!19306 r!17423)) e!1891012)))

(declare-fun b!3011933 () Bool)

(declare-fun res!1241137 () Bool)

(assert (=> b!3011933 (=> (not res!1241137) (not e!1891014))))

(assert (=> b!3011933 (= res!1241137 call!203015)))

(assert (=> b!3011933 (= e!1891013 e!1891014)))

(assert (= (and d!847848 (not res!1241138)) b!3011936))

(assert (= (and b!3011936 c!496262) b!3011934))

(assert (= (and b!3011936 (not c!496262)) b!3011931))

(assert (= (and b!3011934 res!1241139) b!3011930))

(assert (= (and b!3011931 c!496263) b!3011933))

(assert (= (and b!3011931 (not c!496263)) b!3011928))

(assert (= (and b!3011933 res!1241137) b!3011935))

(assert (= (and b!3011928 (not res!1241140)) b!3011929))

(assert (= (and b!3011929 res!1241136) b!3011932))

(assert (= (or b!3011933 b!3011932) bm!203011))

(assert (= (or b!3011935 b!3011929) bm!203009))

(assert (= (or b!3011930 bm!203011) bm!203010))

(declare-fun m!3357875 () Bool)

(assert (=> bm!203009 m!3357875))

(declare-fun m!3357877 () Bool)

(assert (=> bm!203010 m!3357877))

(declare-fun m!3357879 () Bool)

(assert (=> b!3011934 m!3357879))

(assert (=> b!3011647 d!847848))

(declare-fun b!3011949 () Bool)

(declare-fun e!1891020 () Bool)

(declare-fun tp!955798 () Bool)

(assert (=> b!3011949 (= e!1891020 tp!955798)))

(assert (=> b!3011646 (= tp!955742 e!1891020)))

(declare-fun b!3011947 () Bool)

(assert (=> b!3011947 (= e!1891020 tp_is_empty!16357)))

(declare-fun b!3011948 () Bool)

(declare-fun tp!955797 () Bool)

(declare-fun tp!955795 () Bool)

(assert (=> b!3011948 (= e!1891020 (and tp!955797 tp!955795))))

(declare-fun b!3011950 () Bool)

(declare-fun tp!955796 () Bool)

(declare-fun tp!955794 () Bool)

(assert (=> b!3011950 (= e!1891020 (and tp!955796 tp!955794))))

(assert (= (and b!3011646 ((_ is ElementMatch!9397) (reg!9726 r!17423))) b!3011947))

(assert (= (and b!3011646 ((_ is Concat!14718) (reg!9726 r!17423))) b!3011948))

(assert (= (and b!3011646 ((_ is Star!9397) (reg!9726 r!17423))) b!3011949))

(assert (= (and b!3011646 ((_ is Union!9397) (reg!9726 r!17423))) b!3011950))

(declare-fun b!3011955 () Bool)

(declare-fun e!1891023 () Bool)

(declare-fun tp!955801 () Bool)

(assert (=> b!3011955 (= e!1891023 (and tp_is_empty!16357 tp!955801))))

(assert (=> b!3011645 (= tp!955743 e!1891023)))

(assert (= (and b!3011645 ((_ is Cons!35138) (t!234327 s!11993))) b!3011955))

(declare-fun b!3011958 () Bool)

(declare-fun e!1891024 () Bool)

(declare-fun tp!955806 () Bool)

(assert (=> b!3011958 (= e!1891024 tp!955806)))

(assert (=> b!3011644 (= tp!955741 e!1891024)))

(declare-fun b!3011956 () Bool)

(assert (=> b!3011956 (= e!1891024 tp_is_empty!16357)))

(declare-fun b!3011957 () Bool)

(declare-fun tp!955805 () Bool)

(declare-fun tp!955803 () Bool)

(assert (=> b!3011957 (= e!1891024 (and tp!955805 tp!955803))))

(declare-fun b!3011959 () Bool)

(declare-fun tp!955804 () Bool)

(declare-fun tp!955802 () Bool)

(assert (=> b!3011959 (= e!1891024 (and tp!955804 tp!955802))))

(assert (= (and b!3011644 ((_ is ElementMatch!9397) (regOne!19306 r!17423))) b!3011956))

(assert (= (and b!3011644 ((_ is Concat!14718) (regOne!19306 r!17423))) b!3011957))

(assert (= (and b!3011644 ((_ is Star!9397) (regOne!19306 r!17423))) b!3011958))

(assert (= (and b!3011644 ((_ is Union!9397) (regOne!19306 r!17423))) b!3011959))

(declare-fun b!3011962 () Bool)

(declare-fun e!1891025 () Bool)

(declare-fun tp!955811 () Bool)

(assert (=> b!3011962 (= e!1891025 tp!955811)))

(assert (=> b!3011644 (= tp!955744 e!1891025)))

(declare-fun b!3011960 () Bool)

(assert (=> b!3011960 (= e!1891025 tp_is_empty!16357)))

(declare-fun b!3011961 () Bool)

(declare-fun tp!955810 () Bool)

(declare-fun tp!955808 () Bool)

(assert (=> b!3011961 (= e!1891025 (and tp!955810 tp!955808))))

(declare-fun b!3011963 () Bool)

(declare-fun tp!955809 () Bool)

(declare-fun tp!955807 () Bool)

(assert (=> b!3011963 (= e!1891025 (and tp!955809 tp!955807))))

(assert (= (and b!3011644 ((_ is ElementMatch!9397) (regTwo!19306 r!17423))) b!3011960))

(assert (= (and b!3011644 ((_ is Concat!14718) (regTwo!19306 r!17423))) b!3011961))

(assert (= (and b!3011644 ((_ is Star!9397) (regTwo!19306 r!17423))) b!3011962))

(assert (= (and b!3011644 ((_ is Union!9397) (regTwo!19306 r!17423))) b!3011963))

(declare-fun b!3011966 () Bool)

(declare-fun e!1891026 () Bool)

(declare-fun tp!955816 () Bool)

(assert (=> b!3011966 (= e!1891026 tp!955816)))

(assert (=> b!3011648 (= tp!955745 e!1891026)))

(declare-fun b!3011964 () Bool)

(assert (=> b!3011964 (= e!1891026 tp_is_empty!16357)))

(declare-fun b!3011965 () Bool)

(declare-fun tp!955815 () Bool)

(declare-fun tp!955813 () Bool)

(assert (=> b!3011965 (= e!1891026 (and tp!955815 tp!955813))))

(declare-fun b!3011967 () Bool)

(declare-fun tp!955814 () Bool)

(declare-fun tp!955812 () Bool)

(assert (=> b!3011967 (= e!1891026 (and tp!955814 tp!955812))))

(assert (= (and b!3011648 ((_ is ElementMatch!9397) (regOne!19307 r!17423))) b!3011964))

(assert (= (and b!3011648 ((_ is Concat!14718) (regOne!19307 r!17423))) b!3011965))

(assert (= (and b!3011648 ((_ is Star!9397) (regOne!19307 r!17423))) b!3011966))

(assert (= (and b!3011648 ((_ is Union!9397) (regOne!19307 r!17423))) b!3011967))

(declare-fun b!3011970 () Bool)

(declare-fun e!1891027 () Bool)

(declare-fun tp!955821 () Bool)

(assert (=> b!3011970 (= e!1891027 tp!955821)))

(assert (=> b!3011648 (= tp!955740 e!1891027)))

(declare-fun b!3011968 () Bool)

(assert (=> b!3011968 (= e!1891027 tp_is_empty!16357)))

(declare-fun b!3011969 () Bool)

(declare-fun tp!955820 () Bool)

(declare-fun tp!955818 () Bool)

(assert (=> b!3011969 (= e!1891027 (and tp!955820 tp!955818))))

(declare-fun b!3011971 () Bool)

(declare-fun tp!955819 () Bool)

(declare-fun tp!955817 () Bool)

(assert (=> b!3011971 (= e!1891027 (and tp!955819 tp!955817))))

(assert (= (and b!3011648 ((_ is ElementMatch!9397) (regTwo!19307 r!17423))) b!3011968))

(assert (= (and b!3011648 ((_ is Concat!14718) (regTwo!19307 r!17423))) b!3011969))

(assert (= (and b!3011648 ((_ is Star!9397) (regTwo!19307 r!17423))) b!3011970))

(assert (= (and b!3011648 ((_ is Union!9397) (regTwo!19307 r!17423))) b!3011971))

(check-sat (not b!3011896) (not b!3011967) (not d!847838) (not b!3011962) (not b!3011958) tp_is_empty!16357 (not bm!203007) (not bm!202992) (not bm!203010) (not b!3011950) (not b!3011925) (not b!3011897) (not b!3011955) (not b!3011900) (not b!3011957) (not b!3011971) (not b!3011892) (not bm!203009) (not b!3011949) (not b!3011794) (not b!3011970) (not b!3011934) (not b!3011887) (not b!3011959) (not bm!203006) (not b!3011963) (not b!3011961) (not b!3011966) (not b!3011801) (not b!3011969) (not b!3011965) (not d!847842) (not b!3011948) (not b!3011891) (not bm!202999) (not bm!202993))
(check-sat)
