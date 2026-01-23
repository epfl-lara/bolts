; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83310 () Bool)

(assert start!83310)

(declare-fun b!930697 () Bool)

(declare-fun e!604923 () Bool)

(declare-fun tp!288979 () Bool)

(declare-fun tp!288978 () Bool)

(assert (=> b!930697 (= e!604923 (and tp!288979 tp!288978))))

(declare-fun b!930698 () Bool)

(declare-fun e!604922 () Bool)

(declare-datatypes ((C!5620 0))(
  ( (C!5621 (val!3058 Int)) )
))
(declare-datatypes ((Regex!2525 0))(
  ( (ElementMatch!2525 (c!151270 C!5620)) (Concat!4358 (regOne!5562 Regex!2525) (regTwo!5562 Regex!2525)) (EmptyExpr!2525) (Star!2525 (reg!2854 Regex!2525)) (EmptyLang!2525) (Union!2525 (regOne!5563 Regex!2525) (regTwo!5563 Regex!2525)) )
))
(declare-fun lt!340184 () Regex!2525)

(declare-fun validRegex!994 (Regex!2525) Bool)

(assert (=> b!930698 (= e!604922 (validRegex!994 lt!340184))))

(declare-fun e!604921 () Bool)

(assert (=> b!930698 e!604921))

(declare-fun res!422793 () Bool)

(assert (=> b!930698 (=> res!422793 e!604921)))

(declare-datatypes ((List!9755 0))(
  ( (Nil!9739) (Cons!9739 (h!15140 C!5620) (t!100801 List!9755)) )
))
(declare-fun s!10566 () List!9755)

(declare-fun matchR!1063 (Regex!2525 List!9755) Bool)

(assert (=> b!930698 (= res!422793 (matchR!1063 lt!340184 s!10566))))

(declare-datatypes ((Unit!14669 0))(
  ( (Unit!14670) )
))
(declare-fun lt!340186 () Unit!14669)

(declare-fun lt!340185 () Regex!2525)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!42 (Regex!2525 Regex!2525 List!9755) Unit!14669)

(assert (=> b!930698 (= lt!340186 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!42 lt!340184 lt!340185 s!10566))))

(declare-fun lt!340187 () Regex!2525)

(declare-fun matchRSpec!326 (Regex!2525 List!9755) Bool)

(assert (=> b!930698 (matchRSpec!326 lt!340187 s!10566)))

(declare-fun lt!340189 () Unit!14669)

(declare-fun mainMatchTheorem!326 (Regex!2525 List!9755) Unit!14669)

(assert (=> b!930698 (= lt!340189 (mainMatchTheorem!326 lt!340187 s!10566))))

(declare-fun res!422791 () Bool)

(declare-fun e!604919 () Bool)

(assert (=> start!83310 (=> (not res!422791) (not e!604919))))

(declare-fun r!15766 () Regex!2525)

(assert (=> start!83310 (= res!422791 (validRegex!994 r!15766))))

(assert (=> start!83310 e!604919))

(assert (=> start!83310 e!604923))

(declare-fun e!604920 () Bool)

(assert (=> start!83310 e!604920))

(declare-fun b!930699 () Bool)

(declare-fun e!604918 () Bool)

(assert (=> b!930699 (= e!604918 e!604922)))

(declare-fun res!422792 () Bool)

(assert (=> b!930699 (=> res!422792 e!604922)))

(assert (=> b!930699 (= res!422792 (not (matchR!1063 lt!340187 s!10566)))))

(assert (=> b!930699 (= lt!340187 (Union!2525 lt!340184 lt!340185))))

(declare-fun removeUselessConcat!200 (Regex!2525) Regex!2525)

(assert (=> b!930699 (= lt!340185 (removeUselessConcat!200 (regTwo!5563 r!15766)))))

(assert (=> b!930699 (= lt!340184 (removeUselessConcat!200 (regOne!5563 r!15766)))))

(declare-fun b!930700 () Bool)

(declare-fun tp_is_empty!4693 () Bool)

(assert (=> b!930700 (= e!604923 tp_is_empty!4693)))

(declare-fun b!930701 () Bool)

(declare-fun tp!288975 () Bool)

(declare-fun tp!288980 () Bool)

(assert (=> b!930701 (= e!604923 (and tp!288975 tp!288980))))

(declare-fun b!930702 () Bool)

(declare-fun tp!288977 () Bool)

(assert (=> b!930702 (= e!604923 tp!288977)))

(declare-fun b!930703 () Bool)

(assert (=> b!930703 (= e!604921 (matchR!1063 lt!340185 s!10566))))

(declare-fun b!930704 () Bool)

(declare-fun tp!288976 () Bool)

(assert (=> b!930704 (= e!604920 (and tp_is_empty!4693 tp!288976))))

(declare-fun b!930705 () Bool)

(assert (=> b!930705 (= e!604919 (not e!604918))))

(declare-fun res!422794 () Bool)

(assert (=> b!930705 (=> res!422794 e!604918)))

(declare-fun lt!340183 () Bool)

(get-info :version)

(assert (=> b!930705 (= res!422794 (or lt!340183 (and ((_ is Concat!4358) r!15766) ((_ is EmptyExpr!2525) (regOne!5562 r!15766))) (and ((_ is Concat!4358) r!15766) ((_ is EmptyExpr!2525) (regTwo!5562 r!15766))) ((_ is Concat!4358) r!15766) (not ((_ is Union!2525) r!15766))))))

(assert (=> b!930705 (= lt!340183 (matchRSpec!326 r!15766 s!10566))))

(assert (=> b!930705 (= lt!340183 (matchR!1063 r!15766 s!10566))))

(declare-fun lt!340188 () Unit!14669)

(assert (=> b!930705 (= lt!340188 (mainMatchTheorem!326 r!15766 s!10566))))

(assert (= (and start!83310 res!422791) b!930705))

(assert (= (and b!930705 (not res!422794)) b!930699))

(assert (= (and b!930699 (not res!422792)) b!930698))

(assert (= (and b!930698 (not res!422793)) b!930703))

(assert (= (and start!83310 ((_ is ElementMatch!2525) r!15766)) b!930700))

(assert (= (and start!83310 ((_ is Concat!4358) r!15766)) b!930701))

(assert (= (and start!83310 ((_ is Star!2525) r!15766)) b!930702))

(assert (= (and start!83310 ((_ is Union!2525) r!15766)) b!930697))

(assert (= (and start!83310 ((_ is Cons!9739) s!10566)) b!930704))

(declare-fun m!1153063 () Bool)

(assert (=> b!930703 m!1153063))

(declare-fun m!1153065 () Bool)

(assert (=> start!83310 m!1153065))

(declare-fun m!1153067 () Bool)

(assert (=> b!930698 m!1153067))

(declare-fun m!1153069 () Bool)

(assert (=> b!930698 m!1153069))

(declare-fun m!1153071 () Bool)

(assert (=> b!930698 m!1153071))

(declare-fun m!1153073 () Bool)

(assert (=> b!930698 m!1153073))

(declare-fun m!1153075 () Bool)

(assert (=> b!930698 m!1153075))

(declare-fun m!1153077 () Bool)

(assert (=> b!930705 m!1153077))

(declare-fun m!1153079 () Bool)

(assert (=> b!930705 m!1153079))

(declare-fun m!1153081 () Bool)

(assert (=> b!930705 m!1153081))

(declare-fun m!1153083 () Bool)

(assert (=> b!930699 m!1153083))

(declare-fun m!1153085 () Bool)

(assert (=> b!930699 m!1153085))

(declare-fun m!1153087 () Bool)

(assert (=> b!930699 m!1153087))

(check-sat (not b!930699) (not b!930704) (not b!930703) (not b!930697) tp_is_empty!4693 (not start!83310) (not b!930701) (not b!930698) (not b!930705) (not b!930702))
(check-sat)
(get-model)

(declare-fun b!930875 () Bool)

(assert (=> b!930875 true))

(assert (=> b!930875 true))

(declare-fun bs!237676 () Bool)

(declare-fun b!930881 () Bool)

(assert (= bs!237676 (and b!930881 b!930875)))

(declare-fun lambda!30796 () Int)

(declare-fun lambda!30795 () Int)

(assert (=> bs!237676 (not (= lambda!30796 lambda!30795))))

(assert (=> b!930881 true))

(assert (=> b!930881 true))

(declare-fun b!930873 () Bool)

(declare-fun res!422861 () Bool)

(declare-fun e!605027 () Bool)

(assert (=> b!930873 (=> res!422861 e!605027)))

(declare-fun call!57381 () Bool)

(assert (=> b!930873 (= res!422861 call!57381)))

(declare-fun e!605023 () Bool)

(assert (=> b!930873 (= e!605023 e!605027)))

(declare-fun b!930874 () Bool)

(declare-fun e!605026 () Bool)

(assert (=> b!930874 (= e!605026 (= s!10566 (Cons!9739 (c!151270 r!15766) Nil!9739)))))

(declare-fun call!57380 () Bool)

(assert (=> b!930875 (= e!605027 call!57380)))

(declare-fun b!930876 () Bool)

(declare-fun e!605022 () Bool)

(assert (=> b!930876 (= e!605022 call!57381)))

(declare-fun b!930877 () Bool)

(declare-fun c!151325 () Bool)

(assert (=> b!930877 (= c!151325 ((_ is Union!2525) r!15766))))

(declare-fun e!605024 () Bool)

(assert (=> b!930877 (= e!605026 e!605024)))

(declare-fun b!930878 () Bool)

(declare-fun c!151322 () Bool)

(assert (=> b!930878 (= c!151322 ((_ is ElementMatch!2525) r!15766))))

(declare-fun e!605025 () Bool)

(assert (=> b!930878 (= e!605025 e!605026)))

(declare-fun c!151323 () Bool)

(declare-fun bm!57375 () Bool)

(declare-fun Exists!291 (Int) Bool)

(assert (=> bm!57375 (= call!57380 (Exists!291 (ite c!151323 lambda!30795 lambda!30796)))))

(declare-fun b!930879 () Bool)

(assert (=> b!930879 (= e!605022 e!605025)))

(declare-fun res!422860 () Bool)

(assert (=> b!930879 (= res!422860 (not ((_ is EmptyLang!2525) r!15766)))))

(assert (=> b!930879 (=> (not res!422860) (not e!605025))))

(declare-fun b!930880 () Bool)

(assert (=> b!930880 (= e!605024 e!605023)))

(assert (=> b!930880 (= c!151323 ((_ is Star!2525) r!15766))))

(declare-fun bm!57376 () Bool)

(declare-fun isEmpty!5994 (List!9755) Bool)

(assert (=> bm!57376 (= call!57381 (isEmpty!5994 s!10566))))

(declare-fun b!930882 () Bool)

(declare-fun e!605028 () Bool)

(assert (=> b!930882 (= e!605028 (matchRSpec!326 (regTwo!5563 r!15766) s!10566))))

(declare-fun b!930883 () Bool)

(assert (=> b!930883 (= e!605024 e!605028)))

(declare-fun res!422862 () Bool)

(assert (=> b!930883 (= res!422862 (matchRSpec!326 (regOne!5563 r!15766) s!10566))))

(assert (=> b!930883 (=> res!422862 e!605028)))

(declare-fun d!281414 () Bool)

(declare-fun c!151324 () Bool)

(assert (=> d!281414 (= c!151324 ((_ is EmptyExpr!2525) r!15766))))

(assert (=> d!281414 (= (matchRSpec!326 r!15766 s!10566) e!605022)))

(assert (=> b!930881 (= e!605023 call!57380)))

(assert (= (and d!281414 c!151324) b!930876))

(assert (= (and d!281414 (not c!151324)) b!930879))

(assert (= (and b!930879 res!422860) b!930878))

(assert (= (and b!930878 c!151322) b!930874))

(assert (= (and b!930878 (not c!151322)) b!930877))

(assert (= (and b!930877 c!151325) b!930883))

(assert (= (and b!930877 (not c!151325)) b!930880))

(assert (= (and b!930883 (not res!422862)) b!930882))

(assert (= (and b!930880 c!151323) b!930873))

(assert (= (and b!930880 (not c!151323)) b!930881))

(assert (= (and b!930873 (not res!422861)) b!930875))

(assert (= (or b!930875 b!930881) bm!57375))

(assert (= (or b!930876 b!930873) bm!57376))

(declare-fun m!1153135 () Bool)

(assert (=> bm!57375 m!1153135))

(declare-fun m!1153137 () Bool)

(assert (=> bm!57376 m!1153137))

(declare-fun m!1153139 () Bool)

(assert (=> b!930882 m!1153139))

(declare-fun m!1153141 () Bool)

(assert (=> b!930883 m!1153141))

(assert (=> b!930705 d!281414))

(declare-fun b!930955 () Bool)

(declare-fun e!605066 () Bool)

(declare-fun nullable!721 (Regex!2525) Bool)

(assert (=> b!930955 (= e!605066 (nullable!721 r!15766))))

(declare-fun b!930956 () Bool)

(declare-fun e!605063 () Bool)

(declare-fun e!605061 () Bool)

(assert (=> b!930956 (= e!605063 e!605061)))

(declare-fun res!422903 () Bool)

(assert (=> b!930956 (=> (not res!422903) (not e!605061))))

(declare-fun lt!340200 () Bool)

(assert (=> b!930956 (= res!422903 (not lt!340200))))

(declare-fun b!930957 () Bool)

(declare-fun e!605065 () Bool)

(assert (=> b!930957 (= e!605061 e!605065)))

(declare-fun res!422907 () Bool)

(assert (=> b!930957 (=> res!422907 e!605065)))

(declare-fun call!57391 () Bool)

(assert (=> b!930957 (= res!422907 call!57391)))

(declare-fun d!281426 () Bool)

(declare-fun e!605064 () Bool)

(assert (=> d!281426 e!605064))

(declare-fun c!151340 () Bool)

(assert (=> d!281426 (= c!151340 ((_ is EmptyExpr!2525) r!15766))))

(assert (=> d!281426 (= lt!340200 e!605066)))

(declare-fun c!151341 () Bool)

(assert (=> d!281426 (= c!151341 (isEmpty!5994 s!10566))))

(assert (=> d!281426 (validRegex!994 r!15766)))

(assert (=> d!281426 (= (matchR!1063 r!15766 s!10566) lt!340200)))

(declare-fun b!930958 () Bool)

(declare-fun e!605067 () Bool)

(declare-fun head!1684 (List!9755) C!5620)

(assert (=> b!930958 (= e!605067 (= (head!1684 s!10566) (c!151270 r!15766)))))

(declare-fun b!930959 () Bool)

(assert (=> b!930959 (= e!605065 (not (= (head!1684 s!10566) (c!151270 r!15766))))))

(declare-fun b!930960 () Bool)

(declare-fun res!422905 () Bool)

(assert (=> b!930960 (=> res!422905 e!605063)))

(assert (=> b!930960 (= res!422905 (not ((_ is ElementMatch!2525) r!15766)))))

(declare-fun e!605062 () Bool)

(assert (=> b!930960 (= e!605062 e!605063)))

(declare-fun b!930961 () Bool)

(declare-fun res!422904 () Bool)

(assert (=> b!930961 (=> (not res!422904) (not e!605067))))

(declare-fun tail!1246 (List!9755) List!9755)

(assert (=> b!930961 (= res!422904 (isEmpty!5994 (tail!1246 s!10566)))))

(declare-fun b!930962 () Bool)

(assert (=> b!930962 (= e!605062 (not lt!340200))))

(declare-fun b!930963 () Bool)

(declare-fun derivativeStep!531 (Regex!2525 C!5620) Regex!2525)

(assert (=> b!930963 (= e!605066 (matchR!1063 (derivativeStep!531 r!15766 (head!1684 s!10566)) (tail!1246 s!10566)))))

(declare-fun b!930964 () Bool)

(declare-fun res!422902 () Bool)

(assert (=> b!930964 (=> (not res!422902) (not e!605067))))

(assert (=> b!930964 (= res!422902 (not call!57391))))

(declare-fun b!930965 () Bool)

(assert (=> b!930965 (= e!605064 e!605062)))

(declare-fun c!151339 () Bool)

(assert (=> b!930965 (= c!151339 ((_ is EmptyLang!2525) r!15766))))

(declare-fun b!930966 () Bool)

(declare-fun res!422906 () Bool)

(assert (=> b!930966 (=> res!422906 e!605063)))

(assert (=> b!930966 (= res!422906 e!605067)))

(declare-fun res!422900 () Bool)

(assert (=> b!930966 (=> (not res!422900) (not e!605067))))

(assert (=> b!930966 (= res!422900 lt!340200)))

(declare-fun b!930967 () Bool)

(declare-fun res!422901 () Bool)

(assert (=> b!930967 (=> res!422901 e!605065)))

(assert (=> b!930967 (= res!422901 (not (isEmpty!5994 (tail!1246 s!10566))))))

(declare-fun bm!57386 () Bool)

(assert (=> bm!57386 (= call!57391 (isEmpty!5994 s!10566))))

(declare-fun b!930968 () Bool)

(assert (=> b!930968 (= e!605064 (= lt!340200 call!57391))))

(assert (= (and d!281426 c!151341) b!930955))

(assert (= (and d!281426 (not c!151341)) b!930963))

(assert (= (and d!281426 c!151340) b!930968))

(assert (= (and d!281426 (not c!151340)) b!930965))

(assert (= (and b!930965 c!151339) b!930962))

(assert (= (and b!930965 (not c!151339)) b!930960))

(assert (= (and b!930960 (not res!422905)) b!930966))

(assert (= (and b!930966 res!422900) b!930964))

(assert (= (and b!930964 res!422902) b!930961))

(assert (= (and b!930961 res!422904) b!930958))

(assert (= (and b!930966 (not res!422906)) b!930956))

(assert (= (and b!930956 res!422903) b!930957))

(assert (= (and b!930957 (not res!422907)) b!930967))

(assert (= (and b!930967 (not res!422901)) b!930959))

(assert (= (or b!930968 b!930957 b!930964) bm!57386))

(declare-fun m!1153155 () Bool)

(assert (=> b!930967 m!1153155))

(assert (=> b!930967 m!1153155))

(declare-fun m!1153157 () Bool)

(assert (=> b!930967 m!1153157))

(declare-fun m!1153159 () Bool)

(assert (=> b!930959 m!1153159))

(declare-fun m!1153161 () Bool)

(assert (=> b!930955 m!1153161))

(assert (=> b!930958 m!1153159))

(assert (=> d!281426 m!1153137))

(assert (=> d!281426 m!1153065))

(assert (=> b!930961 m!1153155))

(assert (=> b!930961 m!1153155))

(assert (=> b!930961 m!1153157))

(assert (=> bm!57386 m!1153137))

(assert (=> b!930963 m!1153159))

(assert (=> b!930963 m!1153159))

(declare-fun m!1153163 () Bool)

(assert (=> b!930963 m!1153163))

(assert (=> b!930963 m!1153155))

(assert (=> b!930963 m!1153163))

(assert (=> b!930963 m!1153155))

(declare-fun m!1153165 () Bool)

(assert (=> b!930963 m!1153165))

(assert (=> b!930705 d!281426))

(declare-fun d!281432 () Bool)

(assert (=> d!281432 (= (matchR!1063 r!15766 s!10566) (matchRSpec!326 r!15766 s!10566))))

(declare-fun lt!340208 () Unit!14669)

(declare-fun choose!5722 (Regex!2525 List!9755) Unit!14669)

(assert (=> d!281432 (= lt!340208 (choose!5722 r!15766 s!10566))))

(assert (=> d!281432 (validRegex!994 r!15766)))

(assert (=> d!281432 (= (mainMatchTheorem!326 r!15766 s!10566) lt!340208)))

(declare-fun bs!237679 () Bool)

(assert (= bs!237679 d!281432))

(assert (=> bs!237679 m!1153079))

(assert (=> bs!237679 m!1153077))

(declare-fun m!1153183 () Bool)

(assert (=> bs!237679 m!1153183))

(assert (=> bs!237679 m!1153065))

(assert (=> b!930705 d!281432))

(declare-fun b!931006 () Bool)

(declare-fun e!605094 () Bool)

(assert (=> b!931006 (= e!605094 (nullable!721 lt!340187))))

(declare-fun b!931007 () Bool)

(declare-fun e!605091 () Bool)

(declare-fun e!605089 () Bool)

(assert (=> b!931007 (= e!605091 e!605089)))

(declare-fun res!422932 () Bool)

(assert (=> b!931007 (=> (not res!422932) (not e!605089))))

(declare-fun lt!340209 () Bool)

(assert (=> b!931007 (= res!422932 (not lt!340209))))

(declare-fun b!931008 () Bool)

(declare-fun e!605093 () Bool)

(assert (=> b!931008 (= e!605089 e!605093)))

(declare-fun res!422936 () Bool)

(assert (=> b!931008 (=> res!422936 e!605093)))

(declare-fun call!57397 () Bool)

(assert (=> b!931008 (= res!422936 call!57397)))

(declare-fun d!281440 () Bool)

(declare-fun e!605092 () Bool)

(assert (=> d!281440 e!605092))

(declare-fun c!151351 () Bool)

(assert (=> d!281440 (= c!151351 ((_ is EmptyExpr!2525) lt!340187))))

(assert (=> d!281440 (= lt!340209 e!605094)))

(declare-fun c!151352 () Bool)

(assert (=> d!281440 (= c!151352 (isEmpty!5994 s!10566))))

(assert (=> d!281440 (validRegex!994 lt!340187)))

(assert (=> d!281440 (= (matchR!1063 lt!340187 s!10566) lt!340209)))

(declare-fun b!931009 () Bool)

(declare-fun e!605095 () Bool)

(assert (=> b!931009 (= e!605095 (= (head!1684 s!10566) (c!151270 lt!340187)))))

(declare-fun b!931010 () Bool)

(assert (=> b!931010 (= e!605093 (not (= (head!1684 s!10566) (c!151270 lt!340187))))))

(declare-fun b!931011 () Bool)

(declare-fun res!422934 () Bool)

(assert (=> b!931011 (=> res!422934 e!605091)))

(assert (=> b!931011 (= res!422934 (not ((_ is ElementMatch!2525) lt!340187)))))

(declare-fun e!605090 () Bool)

(assert (=> b!931011 (= e!605090 e!605091)))

(declare-fun b!931012 () Bool)

(declare-fun res!422933 () Bool)

(assert (=> b!931012 (=> (not res!422933) (not e!605095))))

(assert (=> b!931012 (= res!422933 (isEmpty!5994 (tail!1246 s!10566)))))

(declare-fun b!931013 () Bool)

(assert (=> b!931013 (= e!605090 (not lt!340209))))

(declare-fun b!931014 () Bool)

(assert (=> b!931014 (= e!605094 (matchR!1063 (derivativeStep!531 lt!340187 (head!1684 s!10566)) (tail!1246 s!10566)))))

(declare-fun b!931015 () Bool)

(declare-fun res!422931 () Bool)

(assert (=> b!931015 (=> (not res!422931) (not e!605095))))

(assert (=> b!931015 (= res!422931 (not call!57397))))

(declare-fun b!931016 () Bool)

(assert (=> b!931016 (= e!605092 e!605090)))

(declare-fun c!151350 () Bool)

(assert (=> b!931016 (= c!151350 ((_ is EmptyLang!2525) lt!340187))))

(declare-fun b!931017 () Bool)

(declare-fun res!422935 () Bool)

(assert (=> b!931017 (=> res!422935 e!605091)))

(assert (=> b!931017 (= res!422935 e!605095)))

(declare-fun res!422929 () Bool)

(assert (=> b!931017 (=> (not res!422929) (not e!605095))))

(assert (=> b!931017 (= res!422929 lt!340209)))

(declare-fun b!931018 () Bool)

(declare-fun res!422930 () Bool)

(assert (=> b!931018 (=> res!422930 e!605093)))

(assert (=> b!931018 (= res!422930 (not (isEmpty!5994 (tail!1246 s!10566))))))

(declare-fun bm!57392 () Bool)

(assert (=> bm!57392 (= call!57397 (isEmpty!5994 s!10566))))

(declare-fun b!931019 () Bool)

(assert (=> b!931019 (= e!605092 (= lt!340209 call!57397))))

(assert (= (and d!281440 c!151352) b!931006))

(assert (= (and d!281440 (not c!151352)) b!931014))

(assert (= (and d!281440 c!151351) b!931019))

(assert (= (and d!281440 (not c!151351)) b!931016))

(assert (= (and b!931016 c!151350) b!931013))

(assert (= (and b!931016 (not c!151350)) b!931011))

(assert (= (and b!931011 (not res!422934)) b!931017))

(assert (= (and b!931017 res!422929) b!931015))

(assert (= (and b!931015 res!422931) b!931012))

(assert (= (and b!931012 res!422933) b!931009))

(assert (= (and b!931017 (not res!422935)) b!931007))

(assert (= (and b!931007 res!422932) b!931008))

(assert (= (and b!931008 (not res!422936)) b!931018))

(assert (= (and b!931018 (not res!422930)) b!931010))

(assert (= (or b!931019 b!931008 b!931015) bm!57392))

(assert (=> b!931018 m!1153155))

(assert (=> b!931018 m!1153155))

(assert (=> b!931018 m!1153157))

(assert (=> b!931010 m!1153159))

(declare-fun m!1153191 () Bool)

(assert (=> b!931006 m!1153191))

(assert (=> b!931009 m!1153159))

(assert (=> d!281440 m!1153137))

(declare-fun m!1153193 () Bool)

(assert (=> d!281440 m!1153193))

(assert (=> b!931012 m!1153155))

(assert (=> b!931012 m!1153155))

(assert (=> b!931012 m!1153157))

(assert (=> bm!57392 m!1153137))

(assert (=> b!931014 m!1153159))

(assert (=> b!931014 m!1153159))

(declare-fun m!1153195 () Bool)

(assert (=> b!931014 m!1153195))

(assert (=> b!931014 m!1153155))

(assert (=> b!931014 m!1153195))

(assert (=> b!931014 m!1153155))

(declare-fun m!1153197 () Bool)

(assert (=> b!931014 m!1153197))

(assert (=> b!930699 d!281440))

(declare-fun b!931094 () Bool)

(declare-fun e!605131 () Bool)

(declare-fun lt!340216 () Regex!2525)

(assert (=> b!931094 (= e!605131 (= (nullable!721 lt!340216) (nullable!721 (regTwo!5563 r!15766))))))

(declare-fun b!931095 () Bool)

(declare-fun e!605134 () Regex!2525)

(declare-fun call!57410 () Regex!2525)

(assert (=> b!931095 (= e!605134 (Star!2525 call!57410))))

(declare-fun b!931096 () Bool)

(declare-fun e!605136 () Regex!2525)

(declare-fun call!57411 () Regex!2525)

(assert (=> b!931096 (= e!605136 call!57411)))

(declare-fun c!151371 () Bool)

(declare-fun c!151369 () Bool)

(declare-fun bm!57405 () Bool)

(declare-fun c!151367 () Bool)

(assert (=> bm!57405 (= call!57411 (removeUselessConcat!200 (ite c!151371 (regTwo!5562 (regTwo!5563 r!15766)) (ite c!151367 (regOne!5562 (regTwo!5563 r!15766)) (ite c!151369 (regTwo!5562 (regTwo!5563 r!15766)) (regOne!5563 (regTwo!5563 r!15766)))))))))

(declare-fun bm!57406 () Bool)

(declare-fun call!57413 () Regex!2525)

(assert (=> bm!57406 (= call!57413 call!57411)))

(declare-fun b!931097 () Bool)

(assert (=> b!931097 (= e!605134 (regTwo!5563 r!15766))))

(declare-fun bm!57407 () Bool)

(declare-fun call!57412 () Regex!2525)

(assert (=> bm!57407 (= call!57410 call!57412)))

(declare-fun b!931098 () Bool)

(declare-fun e!605133 () Regex!2525)

(assert (=> b!931098 (= e!605133 call!57413)))

(declare-fun d!281444 () Bool)

(assert (=> d!281444 e!605131))

(declare-fun res!422948 () Bool)

(assert (=> d!281444 (=> (not res!422948) (not e!605131))))

(assert (=> d!281444 (= res!422948 (validRegex!994 lt!340216))))

(assert (=> d!281444 (= lt!340216 e!605136)))

(assert (=> d!281444 (= c!151371 (and ((_ is Concat!4358) (regTwo!5563 r!15766)) ((_ is EmptyExpr!2525) (regOne!5562 (regTwo!5563 r!15766)))))))

(assert (=> d!281444 (validRegex!994 (regTwo!5563 r!15766))))

(assert (=> d!281444 (= (removeUselessConcat!200 (regTwo!5563 r!15766)) lt!340216)))

(declare-fun b!931099 () Bool)

(assert (=> b!931099 (= e!605136 e!605133)))

(assert (=> b!931099 (= c!151367 (and ((_ is Concat!4358) (regTwo!5563 r!15766)) ((_ is EmptyExpr!2525) (regTwo!5562 (regTwo!5563 r!15766)))))))

(declare-fun bm!57408 () Bool)

(declare-fun call!57414 () Regex!2525)

(assert (=> bm!57408 (= call!57414 call!57413)))

(declare-fun b!931100 () Bool)

(declare-fun e!605132 () Regex!2525)

(assert (=> b!931100 (= e!605132 (Concat!4358 call!57412 call!57414))))

(declare-fun b!931101 () Bool)

(assert (=> b!931101 (= c!151369 ((_ is Concat!4358) (regTwo!5563 r!15766)))))

(assert (=> b!931101 (= e!605133 e!605132)))

(declare-fun b!931102 () Bool)

(declare-fun c!151368 () Bool)

(assert (=> b!931102 (= c!151368 ((_ is Star!2525) (regTwo!5563 r!15766)))))

(declare-fun e!605135 () Regex!2525)

(assert (=> b!931102 (= e!605135 e!605134)))

(declare-fun b!931103 () Bool)

(assert (=> b!931103 (= e!605135 (Union!2525 call!57414 call!57410))))

(declare-fun b!931104 () Bool)

(assert (=> b!931104 (= e!605132 e!605135)))

(declare-fun c!151370 () Bool)

(assert (=> b!931104 (= c!151370 ((_ is Union!2525) (regTwo!5563 r!15766)))))

(declare-fun bm!57409 () Bool)

(assert (=> bm!57409 (= call!57412 (removeUselessConcat!200 (ite c!151369 (regOne!5562 (regTwo!5563 r!15766)) (ite c!151370 (regTwo!5563 (regTwo!5563 r!15766)) (reg!2854 (regTwo!5563 r!15766))))))))

(assert (= (and d!281444 c!151371) b!931096))

(assert (= (and d!281444 (not c!151371)) b!931099))

(assert (= (and b!931099 c!151367) b!931098))

(assert (= (and b!931099 (not c!151367)) b!931101))

(assert (= (and b!931101 c!151369) b!931100))

(assert (= (and b!931101 (not c!151369)) b!931104))

(assert (= (and b!931104 c!151370) b!931103))

(assert (= (and b!931104 (not c!151370)) b!931102))

(assert (= (and b!931102 c!151368) b!931095))

(assert (= (and b!931102 (not c!151368)) b!931097))

(assert (= (or b!931103 b!931095) bm!57407))

(assert (= (or b!931100 b!931103) bm!57408))

(assert (= (or b!931100 bm!57407) bm!57409))

(assert (= (or b!931098 bm!57408) bm!57406))

(assert (= (or b!931096 bm!57406) bm!57405))

(assert (= (and d!281444 res!422948) b!931094))

(declare-fun m!1153209 () Bool)

(assert (=> b!931094 m!1153209))

(declare-fun m!1153211 () Bool)

(assert (=> b!931094 m!1153211))

(declare-fun m!1153213 () Bool)

(assert (=> bm!57405 m!1153213))

(declare-fun m!1153215 () Bool)

(assert (=> d!281444 m!1153215))

(declare-fun m!1153217 () Bool)

(assert (=> d!281444 m!1153217))

(declare-fun m!1153219 () Bool)

(assert (=> bm!57409 m!1153219))

(assert (=> b!930699 d!281444))

(declare-fun b!931105 () Bool)

(declare-fun e!605137 () Bool)

(declare-fun lt!340217 () Regex!2525)

(assert (=> b!931105 (= e!605137 (= (nullable!721 lt!340217) (nullable!721 (regOne!5563 r!15766))))))

(declare-fun b!931106 () Bool)

(declare-fun e!605140 () Regex!2525)

(declare-fun call!57415 () Regex!2525)

(assert (=> b!931106 (= e!605140 (Star!2525 call!57415))))

(declare-fun b!931107 () Bool)

(declare-fun e!605142 () Regex!2525)

(declare-fun call!57416 () Regex!2525)

(assert (=> b!931107 (= e!605142 call!57416)))

(declare-fun bm!57410 () Bool)

(declare-fun c!151372 () Bool)

(declare-fun c!151374 () Bool)

(declare-fun c!151376 () Bool)

(assert (=> bm!57410 (= call!57416 (removeUselessConcat!200 (ite c!151376 (regTwo!5562 (regOne!5563 r!15766)) (ite c!151372 (regOne!5562 (regOne!5563 r!15766)) (ite c!151374 (regTwo!5562 (regOne!5563 r!15766)) (regOne!5563 (regOne!5563 r!15766)))))))))

(declare-fun bm!57411 () Bool)

(declare-fun call!57418 () Regex!2525)

(assert (=> bm!57411 (= call!57418 call!57416)))

(declare-fun b!931108 () Bool)

(assert (=> b!931108 (= e!605140 (regOne!5563 r!15766))))

(declare-fun bm!57412 () Bool)

(declare-fun call!57417 () Regex!2525)

(assert (=> bm!57412 (= call!57415 call!57417)))

(declare-fun b!931109 () Bool)

(declare-fun e!605139 () Regex!2525)

(assert (=> b!931109 (= e!605139 call!57418)))

(declare-fun d!281450 () Bool)

(assert (=> d!281450 e!605137))

(declare-fun res!422949 () Bool)

(assert (=> d!281450 (=> (not res!422949) (not e!605137))))

(assert (=> d!281450 (= res!422949 (validRegex!994 lt!340217))))

(assert (=> d!281450 (= lt!340217 e!605142)))

(assert (=> d!281450 (= c!151376 (and ((_ is Concat!4358) (regOne!5563 r!15766)) ((_ is EmptyExpr!2525) (regOne!5562 (regOne!5563 r!15766)))))))

(assert (=> d!281450 (validRegex!994 (regOne!5563 r!15766))))

(assert (=> d!281450 (= (removeUselessConcat!200 (regOne!5563 r!15766)) lt!340217)))

(declare-fun b!931110 () Bool)

(assert (=> b!931110 (= e!605142 e!605139)))

(assert (=> b!931110 (= c!151372 (and ((_ is Concat!4358) (regOne!5563 r!15766)) ((_ is EmptyExpr!2525) (regTwo!5562 (regOne!5563 r!15766)))))))

(declare-fun bm!57413 () Bool)

(declare-fun call!57419 () Regex!2525)

(assert (=> bm!57413 (= call!57419 call!57418)))

(declare-fun b!931111 () Bool)

(declare-fun e!605138 () Regex!2525)

(assert (=> b!931111 (= e!605138 (Concat!4358 call!57417 call!57419))))

(declare-fun b!931112 () Bool)

(assert (=> b!931112 (= c!151374 ((_ is Concat!4358) (regOne!5563 r!15766)))))

(assert (=> b!931112 (= e!605139 e!605138)))

(declare-fun b!931113 () Bool)

(declare-fun c!151373 () Bool)

(assert (=> b!931113 (= c!151373 ((_ is Star!2525) (regOne!5563 r!15766)))))

(declare-fun e!605141 () Regex!2525)

(assert (=> b!931113 (= e!605141 e!605140)))

(declare-fun b!931114 () Bool)

(assert (=> b!931114 (= e!605141 (Union!2525 call!57419 call!57415))))

(declare-fun b!931115 () Bool)

(assert (=> b!931115 (= e!605138 e!605141)))

(declare-fun c!151375 () Bool)

(assert (=> b!931115 (= c!151375 ((_ is Union!2525) (regOne!5563 r!15766)))))

(declare-fun bm!57414 () Bool)

(assert (=> bm!57414 (= call!57417 (removeUselessConcat!200 (ite c!151374 (regOne!5562 (regOne!5563 r!15766)) (ite c!151375 (regTwo!5563 (regOne!5563 r!15766)) (reg!2854 (regOne!5563 r!15766))))))))

(assert (= (and d!281450 c!151376) b!931107))

(assert (= (and d!281450 (not c!151376)) b!931110))

(assert (= (and b!931110 c!151372) b!931109))

(assert (= (and b!931110 (not c!151372)) b!931112))

(assert (= (and b!931112 c!151374) b!931111))

(assert (= (and b!931112 (not c!151374)) b!931115))

(assert (= (and b!931115 c!151375) b!931114))

(assert (= (and b!931115 (not c!151375)) b!931113))

(assert (= (and b!931113 c!151373) b!931106))

(assert (= (and b!931113 (not c!151373)) b!931108))

(assert (= (or b!931114 b!931106) bm!57412))

(assert (= (or b!931111 b!931114) bm!57413))

(assert (= (or b!931111 bm!57412) bm!57414))

(assert (= (or b!931109 bm!57413) bm!57411))

(assert (= (or b!931107 bm!57411) bm!57410))

(assert (= (and d!281450 res!422949) b!931105))

(declare-fun m!1153221 () Bool)

(assert (=> b!931105 m!1153221))

(declare-fun m!1153223 () Bool)

(assert (=> b!931105 m!1153223))

(declare-fun m!1153225 () Bool)

(assert (=> bm!57410 m!1153225))

(declare-fun m!1153227 () Bool)

(assert (=> d!281450 m!1153227))

(declare-fun m!1153229 () Bool)

(assert (=> d!281450 m!1153229))

(declare-fun m!1153231 () Bool)

(assert (=> bm!57414 m!1153231))

(assert (=> b!930699 d!281450))

(declare-fun bs!237686 () Bool)

(declare-fun b!931118 () Bool)

(assert (= bs!237686 (and b!931118 b!930875)))

(declare-fun lambda!30803 () Int)

(assert (=> bs!237686 (= (and (= (reg!2854 lt!340187) (reg!2854 r!15766)) (= lt!340187 r!15766)) (= lambda!30803 lambda!30795))))

(declare-fun bs!237687 () Bool)

(assert (= bs!237687 (and b!931118 b!930881)))

(assert (=> bs!237687 (not (= lambda!30803 lambda!30796))))

(assert (=> b!931118 true))

(assert (=> b!931118 true))

(declare-fun bs!237688 () Bool)

(declare-fun b!931124 () Bool)

(assert (= bs!237688 (and b!931124 b!930875)))

(declare-fun lambda!30804 () Int)

(assert (=> bs!237688 (not (= lambda!30804 lambda!30795))))

(declare-fun bs!237689 () Bool)

(assert (= bs!237689 (and b!931124 b!930881)))

(assert (=> bs!237689 (= (and (= (regOne!5562 lt!340187) (regOne!5562 r!15766)) (= (regTwo!5562 lt!340187) (regTwo!5562 r!15766))) (= lambda!30804 lambda!30796))))

(declare-fun bs!237690 () Bool)

(assert (= bs!237690 (and b!931124 b!931118)))

(assert (=> bs!237690 (not (= lambda!30804 lambda!30803))))

(assert (=> b!931124 true))

(assert (=> b!931124 true))

(declare-fun b!931116 () Bool)

(declare-fun res!422951 () Bool)

(declare-fun e!605148 () Bool)

(assert (=> b!931116 (=> res!422951 e!605148)))

(declare-fun call!57421 () Bool)

(assert (=> b!931116 (= res!422951 call!57421)))

(declare-fun e!605144 () Bool)

(assert (=> b!931116 (= e!605144 e!605148)))

(declare-fun b!931117 () Bool)

(declare-fun e!605147 () Bool)

(assert (=> b!931117 (= e!605147 (= s!10566 (Cons!9739 (c!151270 lt!340187) Nil!9739)))))

(declare-fun call!57420 () Bool)

(assert (=> b!931118 (= e!605148 call!57420)))

(declare-fun b!931119 () Bool)

(declare-fun e!605143 () Bool)

(assert (=> b!931119 (= e!605143 call!57421)))

(declare-fun b!931120 () Bool)

(declare-fun c!151380 () Bool)

(assert (=> b!931120 (= c!151380 ((_ is Union!2525) lt!340187))))

(declare-fun e!605145 () Bool)

(assert (=> b!931120 (= e!605147 e!605145)))

(declare-fun b!931121 () Bool)

(declare-fun c!151377 () Bool)

(assert (=> b!931121 (= c!151377 ((_ is ElementMatch!2525) lt!340187))))

(declare-fun e!605146 () Bool)

(assert (=> b!931121 (= e!605146 e!605147)))

(declare-fun c!151378 () Bool)

(declare-fun bm!57415 () Bool)

(assert (=> bm!57415 (= call!57420 (Exists!291 (ite c!151378 lambda!30803 lambda!30804)))))

(declare-fun b!931122 () Bool)

(assert (=> b!931122 (= e!605143 e!605146)))

(declare-fun res!422950 () Bool)

(assert (=> b!931122 (= res!422950 (not ((_ is EmptyLang!2525) lt!340187)))))

(assert (=> b!931122 (=> (not res!422950) (not e!605146))))

(declare-fun b!931123 () Bool)

(assert (=> b!931123 (= e!605145 e!605144)))

(assert (=> b!931123 (= c!151378 ((_ is Star!2525) lt!340187))))

(declare-fun bm!57416 () Bool)

(assert (=> bm!57416 (= call!57421 (isEmpty!5994 s!10566))))

(declare-fun b!931125 () Bool)

(declare-fun e!605149 () Bool)

(assert (=> b!931125 (= e!605149 (matchRSpec!326 (regTwo!5563 lt!340187) s!10566))))

(declare-fun b!931126 () Bool)

(assert (=> b!931126 (= e!605145 e!605149)))

(declare-fun res!422952 () Bool)

(assert (=> b!931126 (= res!422952 (matchRSpec!326 (regOne!5563 lt!340187) s!10566))))

(assert (=> b!931126 (=> res!422952 e!605149)))

(declare-fun d!281452 () Bool)

(declare-fun c!151379 () Bool)

(assert (=> d!281452 (= c!151379 ((_ is EmptyExpr!2525) lt!340187))))

(assert (=> d!281452 (= (matchRSpec!326 lt!340187 s!10566) e!605143)))

(assert (=> b!931124 (= e!605144 call!57420)))

(assert (= (and d!281452 c!151379) b!931119))

(assert (= (and d!281452 (not c!151379)) b!931122))

(assert (= (and b!931122 res!422950) b!931121))

(assert (= (and b!931121 c!151377) b!931117))

(assert (= (and b!931121 (not c!151377)) b!931120))

(assert (= (and b!931120 c!151380) b!931126))

(assert (= (and b!931120 (not c!151380)) b!931123))

(assert (= (and b!931126 (not res!422952)) b!931125))

(assert (= (and b!931123 c!151378) b!931116))

(assert (= (and b!931123 (not c!151378)) b!931124))

(assert (= (and b!931116 (not res!422951)) b!931118))

(assert (= (or b!931118 b!931124) bm!57415))

(assert (= (or b!931119 b!931116) bm!57416))

(declare-fun m!1153233 () Bool)

(assert (=> bm!57415 m!1153233))

(assert (=> bm!57416 m!1153137))

(declare-fun m!1153235 () Bool)

(assert (=> b!931125 m!1153235))

(declare-fun m!1153237 () Bool)

(assert (=> b!931126 m!1153237))

(assert (=> b!930698 d!281452))

(declare-fun d!281454 () Bool)

(declare-fun e!605155 () Bool)

(assert (=> d!281454 e!605155))

(declare-fun res!422957 () Bool)

(assert (=> d!281454 (=> res!422957 e!605155)))

(assert (=> d!281454 (= res!422957 (matchR!1063 lt!340184 s!10566))))

(declare-fun lt!340220 () Unit!14669)

(declare-fun choose!5724 (Regex!2525 Regex!2525 List!9755) Unit!14669)

(assert (=> d!281454 (= lt!340220 (choose!5724 lt!340184 lt!340185 s!10566))))

(declare-fun e!605154 () Bool)

(assert (=> d!281454 e!605154))

(declare-fun res!422958 () Bool)

(assert (=> d!281454 (=> (not res!422958) (not e!605154))))

(assert (=> d!281454 (= res!422958 (validRegex!994 lt!340184))))

(assert (=> d!281454 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!42 lt!340184 lt!340185 s!10566) lt!340220)))

(declare-fun b!931131 () Bool)

(assert (=> b!931131 (= e!605154 (validRegex!994 lt!340185))))

(declare-fun b!931132 () Bool)

(assert (=> b!931132 (= e!605155 (matchR!1063 lt!340185 s!10566))))

(assert (= (and d!281454 res!422958) b!931131))

(assert (= (and d!281454 (not res!422957)) b!931132))

(assert (=> d!281454 m!1153067))

(declare-fun m!1153239 () Bool)

(assert (=> d!281454 m!1153239))

(assert (=> d!281454 m!1153069))

(declare-fun m!1153241 () Bool)

(assert (=> b!931131 m!1153241))

(assert (=> b!931132 m!1153063))

(assert (=> b!930698 d!281454))

(declare-fun b!931152 () Bool)

(declare-fun e!605175 () Bool)

(declare-fun e!605174 () Bool)

(assert (=> b!931152 (= e!605175 e!605174)))

(declare-fun c!151386 () Bool)

(assert (=> b!931152 (= c!151386 ((_ is Union!2525) lt!340184))))

(declare-fun bm!57423 () Bool)

(declare-fun call!57428 () Bool)

(declare-fun call!57429 () Bool)

(assert (=> bm!57423 (= call!57428 call!57429)))

(declare-fun b!931153 () Bool)

(declare-fun e!605176 () Bool)

(assert (=> b!931153 (= e!605176 call!57428)))

(declare-fun b!931154 () Bool)

(declare-fun e!605172 () Bool)

(assert (=> b!931154 (= e!605172 e!605176)))

(declare-fun res!422969 () Bool)

(assert (=> b!931154 (=> (not res!422969) (not e!605176))))

(declare-fun call!57430 () Bool)

(assert (=> b!931154 (= res!422969 call!57430)))

(declare-fun b!931155 () Bool)

(declare-fun e!605173 () Bool)

(assert (=> b!931155 (= e!605175 e!605173)))

(declare-fun res!422973 () Bool)

(assert (=> b!931155 (= res!422973 (not (nullable!721 (reg!2854 lt!340184))))))

(assert (=> b!931155 (=> (not res!422973) (not e!605173))))

(declare-fun c!151385 () Bool)

(declare-fun bm!57424 () Bool)

(assert (=> bm!57424 (= call!57429 (validRegex!994 (ite c!151385 (reg!2854 lt!340184) (ite c!151386 (regTwo!5563 lt!340184) (regTwo!5562 lt!340184)))))))

(declare-fun b!931156 () Bool)

(declare-fun e!605170 () Bool)

(assert (=> b!931156 (= e!605170 call!57428)))

(declare-fun b!931157 () Bool)

(declare-fun e!605171 () Bool)

(assert (=> b!931157 (= e!605171 e!605175)))

(assert (=> b!931157 (= c!151385 ((_ is Star!2525) lt!340184))))

(declare-fun b!931158 () Bool)

(assert (=> b!931158 (= e!605173 call!57429)))

(declare-fun b!931159 () Bool)

(declare-fun res!422972 () Bool)

(assert (=> b!931159 (=> (not res!422972) (not e!605170))))

(assert (=> b!931159 (= res!422972 call!57430)))

(assert (=> b!931159 (= e!605174 e!605170)))

(declare-fun bm!57425 () Bool)

(assert (=> bm!57425 (= call!57430 (validRegex!994 (ite c!151386 (regOne!5563 lt!340184) (regOne!5562 lt!340184))))))

(declare-fun b!931151 () Bool)

(declare-fun res!422971 () Bool)

(assert (=> b!931151 (=> res!422971 e!605172)))

(assert (=> b!931151 (= res!422971 (not ((_ is Concat!4358) lt!340184)))))

(assert (=> b!931151 (= e!605174 e!605172)))

(declare-fun d!281456 () Bool)

(declare-fun res!422970 () Bool)

(assert (=> d!281456 (=> res!422970 e!605171)))

(assert (=> d!281456 (= res!422970 ((_ is ElementMatch!2525) lt!340184))))

(assert (=> d!281456 (= (validRegex!994 lt!340184) e!605171)))

(assert (= (and d!281456 (not res!422970)) b!931157))

(assert (= (and b!931157 c!151385) b!931155))

(assert (= (and b!931157 (not c!151385)) b!931152))

(assert (= (and b!931155 res!422973) b!931158))

(assert (= (and b!931152 c!151386) b!931159))

(assert (= (and b!931152 (not c!151386)) b!931151))

(assert (= (and b!931159 res!422972) b!931156))

(assert (= (and b!931151 (not res!422971)) b!931154))

(assert (= (and b!931154 res!422969) b!931153))

(assert (= (or b!931156 b!931153) bm!57423))

(assert (= (or b!931159 b!931154) bm!57425))

(assert (= (or b!931158 bm!57423) bm!57424))

(declare-fun m!1153243 () Bool)

(assert (=> b!931155 m!1153243))

(declare-fun m!1153245 () Bool)

(assert (=> bm!57424 m!1153245))

(declare-fun m!1153247 () Bool)

(assert (=> bm!57425 m!1153247))

(assert (=> b!930698 d!281456))

(declare-fun b!931160 () Bool)

(declare-fun e!605182 () Bool)

(assert (=> b!931160 (= e!605182 (nullable!721 lt!340184))))

(declare-fun b!931161 () Bool)

(declare-fun e!605179 () Bool)

(declare-fun e!605177 () Bool)

(assert (=> b!931161 (= e!605179 e!605177)))

(declare-fun res!422977 () Bool)

(assert (=> b!931161 (=> (not res!422977) (not e!605177))))

(declare-fun lt!340221 () Bool)

(assert (=> b!931161 (= res!422977 (not lt!340221))))

(declare-fun b!931162 () Bool)

(declare-fun e!605181 () Bool)

(assert (=> b!931162 (= e!605177 e!605181)))

(declare-fun res!422981 () Bool)

(assert (=> b!931162 (=> res!422981 e!605181)))

(declare-fun call!57431 () Bool)

(assert (=> b!931162 (= res!422981 call!57431)))

(declare-fun d!281458 () Bool)

(declare-fun e!605180 () Bool)

(assert (=> d!281458 e!605180))

(declare-fun c!151388 () Bool)

(assert (=> d!281458 (= c!151388 ((_ is EmptyExpr!2525) lt!340184))))

(assert (=> d!281458 (= lt!340221 e!605182)))

(declare-fun c!151389 () Bool)

(assert (=> d!281458 (= c!151389 (isEmpty!5994 s!10566))))

(assert (=> d!281458 (validRegex!994 lt!340184)))

(assert (=> d!281458 (= (matchR!1063 lt!340184 s!10566) lt!340221)))

(declare-fun b!931163 () Bool)

(declare-fun e!605183 () Bool)

(assert (=> b!931163 (= e!605183 (= (head!1684 s!10566) (c!151270 lt!340184)))))

(declare-fun b!931164 () Bool)

(assert (=> b!931164 (= e!605181 (not (= (head!1684 s!10566) (c!151270 lt!340184))))))

(declare-fun b!931165 () Bool)

(declare-fun res!422979 () Bool)

(assert (=> b!931165 (=> res!422979 e!605179)))

(assert (=> b!931165 (= res!422979 (not ((_ is ElementMatch!2525) lt!340184)))))

(declare-fun e!605178 () Bool)

(assert (=> b!931165 (= e!605178 e!605179)))

(declare-fun b!931166 () Bool)

(declare-fun res!422978 () Bool)

(assert (=> b!931166 (=> (not res!422978) (not e!605183))))

(assert (=> b!931166 (= res!422978 (isEmpty!5994 (tail!1246 s!10566)))))

(declare-fun b!931167 () Bool)

(assert (=> b!931167 (= e!605178 (not lt!340221))))

(declare-fun b!931168 () Bool)

(assert (=> b!931168 (= e!605182 (matchR!1063 (derivativeStep!531 lt!340184 (head!1684 s!10566)) (tail!1246 s!10566)))))

(declare-fun b!931169 () Bool)

(declare-fun res!422976 () Bool)

(assert (=> b!931169 (=> (not res!422976) (not e!605183))))

(assert (=> b!931169 (= res!422976 (not call!57431))))

(declare-fun b!931170 () Bool)

(assert (=> b!931170 (= e!605180 e!605178)))

(declare-fun c!151387 () Bool)

(assert (=> b!931170 (= c!151387 ((_ is EmptyLang!2525) lt!340184))))

(declare-fun b!931171 () Bool)

(declare-fun res!422980 () Bool)

(assert (=> b!931171 (=> res!422980 e!605179)))

(assert (=> b!931171 (= res!422980 e!605183)))

(declare-fun res!422974 () Bool)

(assert (=> b!931171 (=> (not res!422974) (not e!605183))))

(assert (=> b!931171 (= res!422974 lt!340221)))

(declare-fun b!931172 () Bool)

(declare-fun res!422975 () Bool)

(assert (=> b!931172 (=> res!422975 e!605181)))

(assert (=> b!931172 (= res!422975 (not (isEmpty!5994 (tail!1246 s!10566))))))

(declare-fun bm!57426 () Bool)

(assert (=> bm!57426 (= call!57431 (isEmpty!5994 s!10566))))

(declare-fun b!931173 () Bool)

(assert (=> b!931173 (= e!605180 (= lt!340221 call!57431))))

(assert (= (and d!281458 c!151389) b!931160))

(assert (= (and d!281458 (not c!151389)) b!931168))

(assert (= (and d!281458 c!151388) b!931173))

(assert (= (and d!281458 (not c!151388)) b!931170))

(assert (= (and b!931170 c!151387) b!931167))

(assert (= (and b!931170 (not c!151387)) b!931165))

(assert (= (and b!931165 (not res!422979)) b!931171))

(assert (= (and b!931171 res!422974) b!931169))

(assert (= (and b!931169 res!422976) b!931166))

(assert (= (and b!931166 res!422978) b!931163))

(assert (= (and b!931171 (not res!422980)) b!931161))

(assert (= (and b!931161 res!422977) b!931162))

(assert (= (and b!931162 (not res!422981)) b!931172))

(assert (= (and b!931172 (not res!422975)) b!931164))

(assert (= (or b!931173 b!931162 b!931169) bm!57426))

(assert (=> b!931172 m!1153155))

(assert (=> b!931172 m!1153155))

(assert (=> b!931172 m!1153157))

(assert (=> b!931164 m!1153159))

(declare-fun m!1153249 () Bool)

(assert (=> b!931160 m!1153249))

(assert (=> b!931163 m!1153159))

(assert (=> d!281458 m!1153137))

(assert (=> d!281458 m!1153069))

(assert (=> b!931166 m!1153155))

(assert (=> b!931166 m!1153155))

(assert (=> b!931166 m!1153157))

(assert (=> bm!57426 m!1153137))

(assert (=> b!931168 m!1153159))

(assert (=> b!931168 m!1153159))

(declare-fun m!1153251 () Bool)

(assert (=> b!931168 m!1153251))

(assert (=> b!931168 m!1153155))

(assert (=> b!931168 m!1153251))

(assert (=> b!931168 m!1153155))

(declare-fun m!1153253 () Bool)

(assert (=> b!931168 m!1153253))

(assert (=> b!930698 d!281458))

(declare-fun d!281460 () Bool)

(assert (=> d!281460 (= (matchR!1063 lt!340187 s!10566) (matchRSpec!326 lt!340187 s!10566))))

(declare-fun lt!340222 () Unit!14669)

(assert (=> d!281460 (= lt!340222 (choose!5722 lt!340187 s!10566))))

(assert (=> d!281460 (validRegex!994 lt!340187)))

(assert (=> d!281460 (= (mainMatchTheorem!326 lt!340187 s!10566) lt!340222)))

(declare-fun bs!237691 () Bool)

(assert (= bs!237691 d!281460))

(assert (=> bs!237691 m!1153083))

(assert (=> bs!237691 m!1153071))

(declare-fun m!1153255 () Bool)

(assert (=> bs!237691 m!1153255))

(assert (=> bs!237691 m!1153193))

(assert (=> b!930698 d!281460))

(declare-fun b!931175 () Bool)

(declare-fun e!605189 () Bool)

(declare-fun e!605188 () Bool)

(assert (=> b!931175 (= e!605189 e!605188)))

(declare-fun c!151391 () Bool)

(assert (=> b!931175 (= c!151391 ((_ is Union!2525) r!15766))))

(declare-fun bm!57427 () Bool)

(declare-fun call!57432 () Bool)

(declare-fun call!57433 () Bool)

(assert (=> bm!57427 (= call!57432 call!57433)))

(declare-fun b!931176 () Bool)

(declare-fun e!605190 () Bool)

(assert (=> b!931176 (= e!605190 call!57432)))

(declare-fun b!931177 () Bool)

(declare-fun e!605186 () Bool)

(assert (=> b!931177 (= e!605186 e!605190)))

(declare-fun res!422982 () Bool)

(assert (=> b!931177 (=> (not res!422982) (not e!605190))))

(declare-fun call!57434 () Bool)

(assert (=> b!931177 (= res!422982 call!57434)))

(declare-fun b!931178 () Bool)

(declare-fun e!605187 () Bool)

(assert (=> b!931178 (= e!605189 e!605187)))

(declare-fun res!422986 () Bool)

(assert (=> b!931178 (= res!422986 (not (nullable!721 (reg!2854 r!15766))))))

(assert (=> b!931178 (=> (not res!422986) (not e!605187))))

(declare-fun bm!57428 () Bool)

(declare-fun c!151390 () Bool)

(assert (=> bm!57428 (= call!57433 (validRegex!994 (ite c!151390 (reg!2854 r!15766) (ite c!151391 (regTwo!5563 r!15766) (regTwo!5562 r!15766)))))))

(declare-fun b!931179 () Bool)

(declare-fun e!605184 () Bool)

(assert (=> b!931179 (= e!605184 call!57432)))

(declare-fun b!931180 () Bool)

(declare-fun e!605185 () Bool)

(assert (=> b!931180 (= e!605185 e!605189)))

(assert (=> b!931180 (= c!151390 ((_ is Star!2525) r!15766))))

(declare-fun b!931181 () Bool)

(assert (=> b!931181 (= e!605187 call!57433)))

(declare-fun b!931182 () Bool)

(declare-fun res!422985 () Bool)

(assert (=> b!931182 (=> (not res!422985) (not e!605184))))

(assert (=> b!931182 (= res!422985 call!57434)))

(assert (=> b!931182 (= e!605188 e!605184)))

(declare-fun bm!57429 () Bool)

(assert (=> bm!57429 (= call!57434 (validRegex!994 (ite c!151391 (regOne!5563 r!15766) (regOne!5562 r!15766))))))

(declare-fun b!931174 () Bool)

(declare-fun res!422984 () Bool)

(assert (=> b!931174 (=> res!422984 e!605186)))

(assert (=> b!931174 (= res!422984 (not ((_ is Concat!4358) r!15766)))))

(assert (=> b!931174 (= e!605188 e!605186)))

(declare-fun d!281462 () Bool)

(declare-fun res!422983 () Bool)

(assert (=> d!281462 (=> res!422983 e!605185)))

(assert (=> d!281462 (= res!422983 ((_ is ElementMatch!2525) r!15766))))

(assert (=> d!281462 (= (validRegex!994 r!15766) e!605185)))

(assert (= (and d!281462 (not res!422983)) b!931180))

(assert (= (and b!931180 c!151390) b!931178))

(assert (= (and b!931180 (not c!151390)) b!931175))

(assert (= (and b!931178 res!422986) b!931181))

(assert (= (and b!931175 c!151391) b!931182))

(assert (= (and b!931175 (not c!151391)) b!931174))

(assert (= (and b!931182 res!422985) b!931179))

(assert (= (and b!931174 (not res!422984)) b!931177))

(assert (= (and b!931177 res!422982) b!931176))

(assert (= (or b!931179 b!931176) bm!57427))

(assert (= (or b!931182 b!931177) bm!57429))

(assert (= (or b!931181 bm!57427) bm!57428))

(declare-fun m!1153257 () Bool)

(assert (=> b!931178 m!1153257))

(declare-fun m!1153259 () Bool)

(assert (=> bm!57428 m!1153259))

(declare-fun m!1153261 () Bool)

(assert (=> bm!57429 m!1153261))

(assert (=> start!83310 d!281462))

(declare-fun b!931183 () Bool)

(declare-fun e!605196 () Bool)

(assert (=> b!931183 (= e!605196 (nullable!721 lt!340185))))

(declare-fun b!931184 () Bool)

(declare-fun e!605193 () Bool)

(declare-fun e!605191 () Bool)

(assert (=> b!931184 (= e!605193 e!605191)))

(declare-fun res!422990 () Bool)

(assert (=> b!931184 (=> (not res!422990) (not e!605191))))

(declare-fun lt!340223 () Bool)

(assert (=> b!931184 (= res!422990 (not lt!340223))))

(declare-fun b!931185 () Bool)

(declare-fun e!605195 () Bool)

(assert (=> b!931185 (= e!605191 e!605195)))

(declare-fun res!422994 () Bool)

(assert (=> b!931185 (=> res!422994 e!605195)))

(declare-fun call!57435 () Bool)

(assert (=> b!931185 (= res!422994 call!57435)))

(declare-fun d!281464 () Bool)

(declare-fun e!605194 () Bool)

(assert (=> d!281464 e!605194))

(declare-fun c!151393 () Bool)

(assert (=> d!281464 (= c!151393 ((_ is EmptyExpr!2525) lt!340185))))

(assert (=> d!281464 (= lt!340223 e!605196)))

(declare-fun c!151394 () Bool)

(assert (=> d!281464 (= c!151394 (isEmpty!5994 s!10566))))

(assert (=> d!281464 (validRegex!994 lt!340185)))

(assert (=> d!281464 (= (matchR!1063 lt!340185 s!10566) lt!340223)))

(declare-fun b!931186 () Bool)

(declare-fun e!605197 () Bool)

(assert (=> b!931186 (= e!605197 (= (head!1684 s!10566) (c!151270 lt!340185)))))

(declare-fun b!931187 () Bool)

(assert (=> b!931187 (= e!605195 (not (= (head!1684 s!10566) (c!151270 lt!340185))))))

(declare-fun b!931188 () Bool)

(declare-fun res!422992 () Bool)

(assert (=> b!931188 (=> res!422992 e!605193)))

(assert (=> b!931188 (= res!422992 (not ((_ is ElementMatch!2525) lt!340185)))))

(declare-fun e!605192 () Bool)

(assert (=> b!931188 (= e!605192 e!605193)))

(declare-fun b!931189 () Bool)

(declare-fun res!422991 () Bool)

(assert (=> b!931189 (=> (not res!422991) (not e!605197))))

(assert (=> b!931189 (= res!422991 (isEmpty!5994 (tail!1246 s!10566)))))

(declare-fun b!931190 () Bool)

(assert (=> b!931190 (= e!605192 (not lt!340223))))

(declare-fun b!931191 () Bool)

(assert (=> b!931191 (= e!605196 (matchR!1063 (derivativeStep!531 lt!340185 (head!1684 s!10566)) (tail!1246 s!10566)))))

(declare-fun b!931192 () Bool)

(declare-fun res!422989 () Bool)

(assert (=> b!931192 (=> (not res!422989) (not e!605197))))

(assert (=> b!931192 (= res!422989 (not call!57435))))

(declare-fun b!931193 () Bool)

(assert (=> b!931193 (= e!605194 e!605192)))

(declare-fun c!151392 () Bool)

(assert (=> b!931193 (= c!151392 ((_ is EmptyLang!2525) lt!340185))))

(declare-fun b!931194 () Bool)

(declare-fun res!422993 () Bool)

(assert (=> b!931194 (=> res!422993 e!605193)))

(assert (=> b!931194 (= res!422993 e!605197)))

(declare-fun res!422987 () Bool)

(assert (=> b!931194 (=> (not res!422987) (not e!605197))))

(assert (=> b!931194 (= res!422987 lt!340223)))

(declare-fun b!931195 () Bool)

(declare-fun res!422988 () Bool)

(assert (=> b!931195 (=> res!422988 e!605195)))

(assert (=> b!931195 (= res!422988 (not (isEmpty!5994 (tail!1246 s!10566))))))

(declare-fun bm!57430 () Bool)

(assert (=> bm!57430 (= call!57435 (isEmpty!5994 s!10566))))

(declare-fun b!931196 () Bool)

(assert (=> b!931196 (= e!605194 (= lt!340223 call!57435))))

(assert (= (and d!281464 c!151394) b!931183))

(assert (= (and d!281464 (not c!151394)) b!931191))

(assert (= (and d!281464 c!151393) b!931196))

(assert (= (and d!281464 (not c!151393)) b!931193))

(assert (= (and b!931193 c!151392) b!931190))

(assert (= (and b!931193 (not c!151392)) b!931188))

(assert (= (and b!931188 (not res!422992)) b!931194))

(assert (= (and b!931194 res!422987) b!931192))

(assert (= (and b!931192 res!422989) b!931189))

(assert (= (and b!931189 res!422991) b!931186))

(assert (= (and b!931194 (not res!422993)) b!931184))

(assert (= (and b!931184 res!422990) b!931185))

(assert (= (and b!931185 (not res!422994)) b!931195))

(assert (= (and b!931195 (not res!422988)) b!931187))

(assert (= (or b!931196 b!931185 b!931192) bm!57430))

(assert (=> b!931195 m!1153155))

(assert (=> b!931195 m!1153155))

(assert (=> b!931195 m!1153157))

(assert (=> b!931187 m!1153159))

(declare-fun m!1153263 () Bool)

(assert (=> b!931183 m!1153263))

(assert (=> b!931186 m!1153159))

(assert (=> d!281464 m!1153137))

(assert (=> d!281464 m!1153241))

(assert (=> b!931189 m!1153155))

(assert (=> b!931189 m!1153155))

(assert (=> b!931189 m!1153157))

(assert (=> bm!57430 m!1153137))

(assert (=> b!931191 m!1153159))

(assert (=> b!931191 m!1153159))

(declare-fun m!1153265 () Bool)

(assert (=> b!931191 m!1153265))

(assert (=> b!931191 m!1153155))

(assert (=> b!931191 m!1153265))

(assert (=> b!931191 m!1153155))

(declare-fun m!1153267 () Bool)

(assert (=> b!931191 m!1153267))

(assert (=> b!930703 d!281464))

(declare-fun b!931201 () Bool)

(declare-fun e!605200 () Bool)

(declare-fun tp!289021 () Bool)

(assert (=> b!931201 (= e!605200 (and tp_is_empty!4693 tp!289021))))

(assert (=> b!930704 (= tp!288976 e!605200)))

(assert (= (and b!930704 ((_ is Cons!9739) (t!100801 s!10566))) b!931201))

(declare-fun b!931215 () Bool)

(declare-fun e!605203 () Bool)

(declare-fun tp!289033 () Bool)

(declare-fun tp!289035 () Bool)

(assert (=> b!931215 (= e!605203 (and tp!289033 tp!289035))))

(declare-fun b!931212 () Bool)

(assert (=> b!931212 (= e!605203 tp_is_empty!4693)))

(declare-fun b!931213 () Bool)

(declare-fun tp!289032 () Bool)

(declare-fun tp!289034 () Bool)

(assert (=> b!931213 (= e!605203 (and tp!289032 tp!289034))))

(assert (=> b!930697 (= tp!288979 e!605203)))

(declare-fun b!931214 () Bool)

(declare-fun tp!289036 () Bool)

(assert (=> b!931214 (= e!605203 tp!289036)))

(assert (= (and b!930697 ((_ is ElementMatch!2525) (regOne!5563 r!15766))) b!931212))

(assert (= (and b!930697 ((_ is Concat!4358) (regOne!5563 r!15766))) b!931213))

(assert (= (and b!930697 ((_ is Star!2525) (regOne!5563 r!15766))) b!931214))

(assert (= (and b!930697 ((_ is Union!2525) (regOne!5563 r!15766))) b!931215))

(declare-fun b!931219 () Bool)

(declare-fun e!605204 () Bool)

(declare-fun tp!289038 () Bool)

(declare-fun tp!289040 () Bool)

(assert (=> b!931219 (= e!605204 (and tp!289038 tp!289040))))

(declare-fun b!931216 () Bool)

(assert (=> b!931216 (= e!605204 tp_is_empty!4693)))

(declare-fun b!931217 () Bool)

(declare-fun tp!289037 () Bool)

(declare-fun tp!289039 () Bool)

(assert (=> b!931217 (= e!605204 (and tp!289037 tp!289039))))

(assert (=> b!930697 (= tp!288978 e!605204)))

(declare-fun b!931218 () Bool)

(declare-fun tp!289041 () Bool)

(assert (=> b!931218 (= e!605204 tp!289041)))

(assert (= (and b!930697 ((_ is ElementMatch!2525) (regTwo!5563 r!15766))) b!931216))

(assert (= (and b!930697 ((_ is Concat!4358) (regTwo!5563 r!15766))) b!931217))

(assert (= (and b!930697 ((_ is Star!2525) (regTwo!5563 r!15766))) b!931218))

(assert (= (and b!930697 ((_ is Union!2525) (regTwo!5563 r!15766))) b!931219))

(declare-fun b!931223 () Bool)

(declare-fun e!605205 () Bool)

(declare-fun tp!289043 () Bool)

(declare-fun tp!289045 () Bool)

(assert (=> b!931223 (= e!605205 (and tp!289043 tp!289045))))

(declare-fun b!931220 () Bool)

(assert (=> b!931220 (= e!605205 tp_is_empty!4693)))

(declare-fun b!931221 () Bool)

(declare-fun tp!289042 () Bool)

(declare-fun tp!289044 () Bool)

(assert (=> b!931221 (= e!605205 (and tp!289042 tp!289044))))

(assert (=> b!930702 (= tp!288977 e!605205)))

(declare-fun b!931222 () Bool)

(declare-fun tp!289046 () Bool)

(assert (=> b!931222 (= e!605205 tp!289046)))

(assert (= (and b!930702 ((_ is ElementMatch!2525) (reg!2854 r!15766))) b!931220))

(assert (= (and b!930702 ((_ is Concat!4358) (reg!2854 r!15766))) b!931221))

(assert (= (and b!930702 ((_ is Star!2525) (reg!2854 r!15766))) b!931222))

(assert (= (and b!930702 ((_ is Union!2525) (reg!2854 r!15766))) b!931223))

(declare-fun b!931227 () Bool)

(declare-fun e!605206 () Bool)

(declare-fun tp!289048 () Bool)

(declare-fun tp!289050 () Bool)

(assert (=> b!931227 (= e!605206 (and tp!289048 tp!289050))))

(declare-fun b!931224 () Bool)

(assert (=> b!931224 (= e!605206 tp_is_empty!4693)))

(declare-fun b!931225 () Bool)

(declare-fun tp!289047 () Bool)

(declare-fun tp!289049 () Bool)

(assert (=> b!931225 (= e!605206 (and tp!289047 tp!289049))))

(assert (=> b!930701 (= tp!288975 e!605206)))

(declare-fun b!931226 () Bool)

(declare-fun tp!289051 () Bool)

(assert (=> b!931226 (= e!605206 tp!289051)))

(assert (= (and b!930701 ((_ is ElementMatch!2525) (regOne!5562 r!15766))) b!931224))

(assert (= (and b!930701 ((_ is Concat!4358) (regOne!5562 r!15766))) b!931225))

(assert (= (and b!930701 ((_ is Star!2525) (regOne!5562 r!15766))) b!931226))

(assert (= (and b!930701 ((_ is Union!2525) (regOne!5562 r!15766))) b!931227))

(declare-fun b!931231 () Bool)

(declare-fun e!605207 () Bool)

(declare-fun tp!289053 () Bool)

(declare-fun tp!289055 () Bool)

(assert (=> b!931231 (= e!605207 (and tp!289053 tp!289055))))

(declare-fun b!931228 () Bool)

(assert (=> b!931228 (= e!605207 tp_is_empty!4693)))

(declare-fun b!931229 () Bool)

(declare-fun tp!289052 () Bool)

(declare-fun tp!289054 () Bool)

(assert (=> b!931229 (= e!605207 (and tp!289052 tp!289054))))

(assert (=> b!930701 (= tp!288980 e!605207)))

(declare-fun b!931230 () Bool)

(declare-fun tp!289056 () Bool)

(assert (=> b!931230 (= e!605207 tp!289056)))

(assert (= (and b!930701 ((_ is ElementMatch!2525) (regTwo!5562 r!15766))) b!931228))

(assert (= (and b!930701 ((_ is Concat!4358) (regTwo!5562 r!15766))) b!931229))

(assert (= (and b!930701 ((_ is Star!2525) (regTwo!5562 r!15766))) b!931230))

(assert (= (and b!930701 ((_ is Union!2525) (regTwo!5562 r!15766))) b!931231))

(check-sat (not bm!57425) (not b!931125) (not b!931230) (not bm!57405) (not b!931231) (not b!930883) (not b!930967) (not b!931213) (not b!931229) (not d!281426) (not bm!57415) (not d!281444) (not b!931186) (not d!281454) (not b!931166) (not d!281432) (not bm!57414) (not b!930955) (not bm!57410) (not b!931214) (not bm!57376) (not b!931155) (not bm!57409) (not b!931094) (not bm!57386) (not b!931132) (not bm!57429) (not b!931227) (not b!931187) (not b!931012) (not b!931014) (not b!931105) tp_is_empty!4693 (not d!281450) (not bm!57375) (not bm!57392) (not b!931189) (not b!931215) (not b!930959) (not b!931126) (not b!931223) (not b!931006) (not d!281460) (not b!931160) (not b!931131) (not b!931219) (not b!930882) (not b!930963) (not bm!57428) (not b!931172) (not b!931009) (not b!931217) (not d!281458) (not b!931218) (not b!931191) (not b!931195) (not b!931222) (not b!931164) (not bm!57424) (not b!930958) (not bm!57430) (not b!931178) (not bm!57426) (not d!281440) (not b!931010) (not b!930961) (not d!281464) (not b!931163) (not b!931221) (not b!931018) (not b!931168) (not b!931183) (not bm!57416) (not b!931226) (not b!931201) (not b!931225))
(check-sat)
