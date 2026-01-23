; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!294896 () Bool)

(assert start!294896)

(declare-fun b!3114545 () Bool)

(declare-fun res!1274908 () Bool)

(declare-fun e!1945276 () Bool)

(assert (=> b!3114545 (=> res!1274908 e!1945276)))

(declare-datatypes ((C!19396 0))(
  ( (C!19397 (val!11734 Int)) )
))
(declare-datatypes ((Regex!9605 0))(
  ( (ElementMatch!9605 (c!521563 C!19396)) (Concat!14926 (regOne!19722 Regex!9605) (regTwo!19722 Regex!9605)) (EmptyExpr!9605) (Star!9605 (reg!9934 Regex!9605)) (EmptyLang!9605) (Union!9605 (regOne!19723 Regex!9605) (regTwo!19723 Regex!9605)) )
))
(declare-fun r!17423 () Regex!9605)

(declare-fun isEmptyLang!656 (Regex!9605) Bool)

(declare-fun simplify!560 (Regex!9605) Regex!9605)

(assert (=> b!3114545 (= res!1274908 (not (isEmptyLang!656 (simplify!560 (reg!9934 r!17423)))))))

(declare-fun b!3114546 () Bool)

(declare-fun e!1945279 () Bool)

(declare-fun tp!976966 () Bool)

(declare-fun tp!976968 () Bool)

(assert (=> b!3114546 (= e!1945279 (and tp!976966 tp!976968))))

(declare-fun b!3114547 () Bool)

(declare-fun e!1945277 () Bool)

(assert (=> b!3114547 (= e!1945277 (not e!1945276))))

(declare-fun res!1274905 () Bool)

(assert (=> b!3114547 (=> res!1274905 e!1945276)))

(declare-fun lt!1058052 () Bool)

(get-info :version)

(assert (=> b!3114547 (= res!1274905 (or lt!1058052 ((_ is Concat!14926) r!17423) ((_ is Union!9605) r!17423) (not ((_ is Star!9605) r!17423))))))

(declare-datatypes ((List!35470 0))(
  ( (Nil!35346) (Cons!35346 (h!40766 C!19396) (t!234535 List!35470)) )
))
(declare-fun s!11993 () List!35470)

(declare-fun matchRSpec!1742 (Regex!9605 List!35470) Bool)

(assert (=> b!3114547 (= lt!1058052 (matchRSpec!1742 r!17423 s!11993))))

(declare-fun matchR!4487 (Regex!9605 List!35470) Bool)

(assert (=> b!3114547 (= lt!1058052 (matchR!4487 r!17423 s!11993))))

(declare-datatypes ((Unit!49649 0))(
  ( (Unit!49650) )
))
(declare-fun lt!1058051 () Unit!49649)

(declare-fun mainMatchTheorem!1742 (Regex!9605 List!35470) Unit!49649)

(assert (=> b!3114547 (= lt!1058051 (mainMatchTheorem!1742 r!17423 s!11993))))

(declare-fun b!3114548 () Bool)

(declare-fun e!1945278 () Bool)

(declare-fun tp_is_empty!16773 () Bool)

(declare-fun tp!976969 () Bool)

(assert (=> b!3114548 (= e!1945278 (and tp_is_empty!16773 tp!976969))))

(declare-fun b!3114549 () Bool)

(assert (=> b!3114549 (= e!1945279 tp_is_empty!16773)))

(declare-fun res!1274906 () Bool)

(assert (=> start!294896 (=> (not res!1274906) (not e!1945277))))

(declare-fun validRegex!4338 (Regex!9605) Bool)

(assert (=> start!294896 (= res!1274906 (validRegex!4338 r!17423))))

(assert (=> start!294896 e!1945277))

(assert (=> start!294896 e!1945279))

(assert (=> start!294896 e!1945278))

(declare-fun lt!1058054 () Int)

(declare-fun lt!1058053 () Int)

(declare-fun b!3114550 () Bool)

(declare-fun regexDepth!117 (Regex!9605) Int)

(assert (=> b!3114550 (= e!1945276 (< (+ lt!1058053 lt!1058054) (+ (regexDepth!117 r!17423) lt!1058054)))))

(declare-fun size!26583 (List!35470) Int)

(assert (=> b!3114550 (= lt!1058054 (size!26583 s!11993))))

(assert (=> b!3114550 (= lt!1058053 (regexDepth!117 (reg!9934 r!17423)))))

(declare-fun b!3114551 () Bool)

(declare-fun tp!976964 () Bool)

(assert (=> b!3114551 (= e!1945279 tp!976964)))

(declare-fun b!3114552 () Bool)

(declare-fun res!1274907 () Bool)

(assert (=> b!3114552 (=> res!1274907 e!1945276)))

(assert (=> b!3114552 (= res!1274907 (not (validRegex!4338 (reg!9934 r!17423))))))

(declare-fun b!3114553 () Bool)

(declare-fun tp!976965 () Bool)

(declare-fun tp!976967 () Bool)

(assert (=> b!3114553 (= e!1945279 (and tp!976965 tp!976967))))

(assert (= (and start!294896 res!1274906) b!3114547))

(assert (= (and b!3114547 (not res!1274905)) b!3114545))

(assert (= (and b!3114545 (not res!1274908)) b!3114552))

(assert (= (and b!3114552 (not res!1274907)) b!3114550))

(assert (= (and start!294896 ((_ is ElementMatch!9605) r!17423)) b!3114549))

(assert (= (and start!294896 ((_ is Concat!14926) r!17423)) b!3114546))

(assert (= (and start!294896 ((_ is Star!9605) r!17423)) b!3114551))

(assert (= (and start!294896 ((_ is Union!9605) r!17423)) b!3114553))

(assert (= (and start!294896 ((_ is Cons!35346) s!11993)) b!3114548))

(declare-fun m!3406005 () Bool)

(assert (=> b!3114547 m!3406005))

(declare-fun m!3406007 () Bool)

(assert (=> b!3114547 m!3406007))

(declare-fun m!3406009 () Bool)

(assert (=> b!3114547 m!3406009))

(declare-fun m!3406011 () Bool)

(assert (=> b!3114545 m!3406011))

(assert (=> b!3114545 m!3406011))

(declare-fun m!3406013 () Bool)

(assert (=> b!3114545 m!3406013))

(declare-fun m!3406015 () Bool)

(assert (=> start!294896 m!3406015))

(declare-fun m!3406017 () Bool)

(assert (=> b!3114550 m!3406017))

(declare-fun m!3406019 () Bool)

(assert (=> b!3114550 m!3406019))

(declare-fun m!3406021 () Bool)

(assert (=> b!3114550 m!3406021))

(declare-fun m!3406023 () Bool)

(assert (=> b!3114552 m!3406023))

(check-sat (not b!3114552) (not b!3114548) tp_is_empty!16773 (not b!3114551) (not start!294896) (not b!3114545) (not b!3114550) (not b!3114547) (not b!3114553) (not b!3114546))
(check-sat)
(get-model)

(declare-fun b!3114790 () Bool)

(assert (=> b!3114790 true))

(assert (=> b!3114790 true))

(declare-fun bs!535828 () Bool)

(declare-fun b!3114786 () Bool)

(assert (= bs!535828 (and b!3114786 b!3114790)))

(declare-fun lambda!115120 () Int)

(declare-fun lambda!115119 () Int)

(assert (=> bs!535828 (not (= lambda!115120 lambda!115119))))

(assert (=> b!3114786 true))

(assert (=> b!3114786 true))

(declare-fun b!3114785 () Bool)

(declare-fun e!1945421 () Bool)

(declare-fun e!1945419 () Bool)

(assert (=> b!3114785 (= e!1945421 e!1945419)))

(declare-fun res!1275001 () Bool)

(assert (=> b!3114785 (= res!1275001 (matchRSpec!1742 (regOne!19723 r!17423) s!11993))))

(assert (=> b!3114785 (=> res!1275001 e!1945419)))

(declare-fun e!1945417 () Bool)

(declare-fun call!220897 () Bool)

(assert (=> b!3114786 (= e!1945417 call!220897)))

(declare-fun bm!220891 () Bool)

(declare-fun call!220896 () Bool)

(declare-fun isEmpty!19691 (List!35470) Bool)

(assert (=> bm!220891 (= call!220896 (isEmpty!19691 s!11993))))

(declare-fun b!3114787 () Bool)

(assert (=> b!3114787 (= e!1945421 e!1945417)))

(declare-fun c!521635 () Bool)

(assert (=> b!3114787 (= c!521635 ((_ is Star!9605) r!17423))))

(declare-fun b!3114788 () Bool)

(declare-fun e!1945418 () Bool)

(assert (=> b!3114788 (= e!1945418 (= s!11993 (Cons!35346 (c!521563 r!17423) Nil!35346)))))

(declare-fun bm!220892 () Bool)

(declare-fun Exists!1861 (Int) Bool)

(assert (=> bm!220892 (= call!220897 (Exists!1861 (ite c!521635 lambda!115119 lambda!115120)))))

(declare-fun d!862038 () Bool)

(declare-fun c!521634 () Bool)

(assert (=> d!862038 (= c!521634 ((_ is EmptyExpr!9605) r!17423))))

(declare-fun e!1945416 () Bool)

(assert (=> d!862038 (= (matchRSpec!1742 r!17423 s!11993) e!1945416)))

(declare-fun b!3114789 () Bool)

(declare-fun e!1945415 () Bool)

(assert (=> b!3114789 (= e!1945416 e!1945415)))

(declare-fun res!1275002 () Bool)

(assert (=> b!3114789 (= res!1275002 (not ((_ is EmptyLang!9605) r!17423)))))

(assert (=> b!3114789 (=> (not res!1275002) (not e!1945415))))

(declare-fun e!1945420 () Bool)

(assert (=> b!3114790 (= e!1945420 call!220897)))

(declare-fun b!3114791 () Bool)

(declare-fun res!1275000 () Bool)

(assert (=> b!3114791 (=> res!1275000 e!1945420)))

(assert (=> b!3114791 (= res!1275000 call!220896)))

(assert (=> b!3114791 (= e!1945417 e!1945420)))

(declare-fun b!3114792 () Bool)

(declare-fun c!521633 () Bool)

(assert (=> b!3114792 (= c!521633 ((_ is Union!9605) r!17423))))

(assert (=> b!3114792 (= e!1945418 e!1945421)))

(declare-fun b!3114793 () Bool)

(assert (=> b!3114793 (= e!1945419 (matchRSpec!1742 (regTwo!19723 r!17423) s!11993))))

(declare-fun b!3114794 () Bool)

(declare-fun c!521632 () Bool)

(assert (=> b!3114794 (= c!521632 ((_ is ElementMatch!9605) r!17423))))

(assert (=> b!3114794 (= e!1945415 e!1945418)))

(declare-fun b!3114795 () Bool)

(assert (=> b!3114795 (= e!1945416 call!220896)))

(assert (= (and d!862038 c!521634) b!3114795))

(assert (= (and d!862038 (not c!521634)) b!3114789))

(assert (= (and b!3114789 res!1275002) b!3114794))

(assert (= (and b!3114794 c!521632) b!3114788))

(assert (= (and b!3114794 (not c!521632)) b!3114792))

(assert (= (and b!3114792 c!521633) b!3114785))

(assert (= (and b!3114792 (not c!521633)) b!3114787))

(assert (= (and b!3114785 (not res!1275001)) b!3114793))

(assert (= (and b!3114787 c!521635) b!3114791))

(assert (= (and b!3114787 (not c!521635)) b!3114786))

(assert (= (and b!3114791 (not res!1275000)) b!3114790))

(assert (= (or b!3114790 b!3114786) bm!220892))

(assert (= (or b!3114795 b!3114791) bm!220891))

(declare-fun m!3406081 () Bool)

(assert (=> b!3114785 m!3406081))

(declare-fun m!3406083 () Bool)

(assert (=> bm!220891 m!3406083))

(declare-fun m!3406085 () Bool)

(assert (=> bm!220892 m!3406085))

(declare-fun m!3406087 () Bool)

(assert (=> b!3114793 m!3406087))

(assert (=> b!3114547 d!862038))

(declare-fun b!3114878 () Bool)

(declare-fun e!1945466 () Bool)

(declare-fun e!1945467 () Bool)

(assert (=> b!3114878 (= e!1945466 e!1945467)))

(declare-fun res!1275027 () Bool)

(assert (=> b!3114878 (=> res!1275027 e!1945467)))

(declare-fun call!220914 () Bool)

(assert (=> b!3114878 (= res!1275027 call!220914)))

(declare-fun b!3114879 () Bool)

(declare-fun res!1275031 () Bool)

(declare-fun e!1945464 () Bool)

(assert (=> b!3114879 (=> (not res!1275031) (not e!1945464))))

(declare-fun tail!5125 (List!35470) List!35470)

(assert (=> b!3114879 (= res!1275031 (isEmpty!19691 (tail!5125 s!11993)))))

(declare-fun b!3114880 () Bool)

(declare-fun e!1945468 () Bool)

(declare-fun nullable!3245 (Regex!9605) Bool)

(assert (=> b!3114880 (= e!1945468 (nullable!3245 r!17423))))

(declare-fun b!3114881 () Bool)

(declare-fun e!1945469 () Bool)

(assert (=> b!3114881 (= e!1945469 e!1945466)))

(declare-fun res!1275028 () Bool)

(assert (=> b!3114881 (=> (not res!1275028) (not e!1945466))))

(declare-fun lt!1058082 () Bool)

(assert (=> b!3114881 (= res!1275028 (not lt!1058082))))

(declare-fun bm!220909 () Bool)

(assert (=> bm!220909 (= call!220914 (isEmpty!19691 s!11993))))

(declare-fun d!862060 () Bool)

(declare-fun e!1945470 () Bool)

(assert (=> d!862060 e!1945470))

(declare-fun c!521666 () Bool)

(assert (=> d!862060 (= c!521666 ((_ is EmptyExpr!9605) r!17423))))

(assert (=> d!862060 (= lt!1058082 e!1945468)))

(declare-fun c!521664 () Bool)

(assert (=> d!862060 (= c!521664 (isEmpty!19691 s!11993))))

(assert (=> d!862060 (validRegex!4338 r!17423)))

(assert (=> d!862060 (= (matchR!4487 r!17423 s!11993) lt!1058082)))

(declare-fun b!3114882 () Bool)

(declare-fun res!1275026 () Bool)

(assert (=> b!3114882 (=> (not res!1275026) (not e!1945464))))

(assert (=> b!3114882 (= res!1275026 (not call!220914))))

(declare-fun b!3114883 () Bool)

(declare-fun res!1275030 () Bool)

(assert (=> b!3114883 (=> res!1275030 e!1945469)))

(assert (=> b!3114883 (= res!1275030 e!1945464)))

(declare-fun res!1275032 () Bool)

(assert (=> b!3114883 (=> (not res!1275032) (not e!1945464))))

(assert (=> b!3114883 (= res!1275032 lt!1058082)))

(declare-fun b!3114884 () Bool)

(declare-fun e!1945465 () Bool)

(assert (=> b!3114884 (= e!1945465 (not lt!1058082))))

(declare-fun b!3114885 () Bool)

(assert (=> b!3114885 (= e!1945470 (= lt!1058082 call!220914))))

(declare-fun b!3114886 () Bool)

(declare-fun res!1275025 () Bool)

(assert (=> b!3114886 (=> res!1275025 e!1945469)))

(assert (=> b!3114886 (= res!1275025 (not ((_ is ElementMatch!9605) r!17423)))))

(assert (=> b!3114886 (= e!1945465 e!1945469)))

(declare-fun b!3114887 () Bool)

(declare-fun head!6899 (List!35470) C!19396)

(assert (=> b!3114887 (= e!1945467 (not (= (head!6899 s!11993) (c!521563 r!17423))))))

(declare-fun b!3114888 () Bool)

(assert (=> b!3114888 (= e!1945464 (= (head!6899 s!11993) (c!521563 r!17423)))))

(declare-fun b!3114889 () Bool)

(declare-fun res!1275029 () Bool)

(assert (=> b!3114889 (=> res!1275029 e!1945467)))

(assert (=> b!3114889 (= res!1275029 (not (isEmpty!19691 (tail!5125 s!11993))))))

(declare-fun b!3114890 () Bool)

(assert (=> b!3114890 (= e!1945470 e!1945465)))

(declare-fun c!521665 () Bool)

(assert (=> b!3114890 (= c!521665 ((_ is EmptyLang!9605) r!17423))))

(declare-fun b!3114891 () Bool)

(declare-fun derivativeStep!2840 (Regex!9605 C!19396) Regex!9605)

(assert (=> b!3114891 (= e!1945468 (matchR!4487 (derivativeStep!2840 r!17423 (head!6899 s!11993)) (tail!5125 s!11993)))))

(assert (= (and d!862060 c!521664) b!3114880))

(assert (= (and d!862060 (not c!521664)) b!3114891))

(assert (= (and d!862060 c!521666) b!3114885))

(assert (= (and d!862060 (not c!521666)) b!3114890))

(assert (= (and b!3114890 c!521665) b!3114884))

(assert (= (and b!3114890 (not c!521665)) b!3114886))

(assert (= (and b!3114886 (not res!1275025)) b!3114883))

(assert (= (and b!3114883 res!1275032) b!3114882))

(assert (= (and b!3114882 res!1275026) b!3114879))

(assert (= (and b!3114879 res!1275031) b!3114888))

(assert (= (and b!3114883 (not res!1275030)) b!3114881))

(assert (= (and b!3114881 res!1275028) b!3114878))

(assert (= (and b!3114878 (not res!1275027)) b!3114889))

(assert (= (and b!3114889 (not res!1275029)) b!3114887))

(assert (= (or b!3114885 b!3114878 b!3114882) bm!220909))

(declare-fun m!3406089 () Bool)

(assert (=> b!3114891 m!3406089))

(assert (=> b!3114891 m!3406089))

(declare-fun m!3406091 () Bool)

(assert (=> b!3114891 m!3406091))

(declare-fun m!3406093 () Bool)

(assert (=> b!3114891 m!3406093))

(assert (=> b!3114891 m!3406091))

(assert (=> b!3114891 m!3406093))

(declare-fun m!3406095 () Bool)

(assert (=> b!3114891 m!3406095))

(assert (=> bm!220909 m!3406083))

(assert (=> b!3114889 m!3406093))

(assert (=> b!3114889 m!3406093))

(declare-fun m!3406097 () Bool)

(assert (=> b!3114889 m!3406097))

(assert (=> b!3114887 m!3406089))

(declare-fun m!3406099 () Bool)

(assert (=> b!3114880 m!3406099))

(assert (=> d!862060 m!3406083))

(assert (=> d!862060 m!3406015))

(assert (=> b!3114879 m!3406093))

(assert (=> b!3114879 m!3406093))

(assert (=> b!3114879 m!3406097))

(assert (=> b!3114888 m!3406089))

(assert (=> b!3114547 d!862060))

(declare-fun d!862062 () Bool)

(assert (=> d!862062 (= (matchR!4487 r!17423 s!11993) (matchRSpec!1742 r!17423 s!11993))))

(declare-fun lt!1058091 () Unit!49649)

(declare-fun choose!18422 (Regex!9605 List!35470) Unit!49649)

(assert (=> d!862062 (= lt!1058091 (choose!18422 r!17423 s!11993))))

(assert (=> d!862062 (validRegex!4338 r!17423)))

(assert (=> d!862062 (= (mainMatchTheorem!1742 r!17423 s!11993) lt!1058091)))

(declare-fun bs!535829 () Bool)

(assert (= bs!535829 d!862062))

(assert (=> bs!535829 m!3406007))

(assert (=> bs!535829 m!3406005))

(declare-fun m!3406117 () Bool)

(assert (=> bs!535829 m!3406117))

(assert (=> bs!535829 m!3406015))

(assert (=> b!3114547 d!862062))

(declare-fun b!3114970 () Bool)

(declare-fun res!1275048 () Bool)

(declare-fun e!1945509 () Bool)

(assert (=> b!3114970 (=> res!1275048 e!1945509)))

(assert (=> b!3114970 (= res!1275048 (not ((_ is Concat!14926) (reg!9934 r!17423))))))

(declare-fun e!1945511 () Bool)

(assert (=> b!3114970 (= e!1945511 e!1945509)))

(declare-fun b!3114971 () Bool)

(declare-fun e!1945512 () Bool)

(assert (=> b!3114971 (= e!1945509 e!1945512)))

(declare-fun res!1275049 () Bool)

(assert (=> b!3114971 (=> (not res!1275049) (not e!1945512))))

(declare-fun call!220930 () Bool)

(assert (=> b!3114971 (= res!1275049 call!220930)))

(declare-fun b!3114972 () Bool)

(declare-fun res!1275046 () Bool)

(declare-fun e!1945514 () Bool)

(assert (=> b!3114972 (=> (not res!1275046) (not e!1945514))))

(declare-fun call!220929 () Bool)

(assert (=> b!3114972 (= res!1275046 call!220929)))

(assert (=> b!3114972 (= e!1945511 e!1945514)))

(declare-fun c!521683 () Bool)

(declare-fun call!220928 () Bool)

(declare-fun c!521682 () Bool)

(declare-fun bm!220923 () Bool)

(assert (=> bm!220923 (= call!220928 (validRegex!4338 (ite c!521683 (reg!9934 (reg!9934 r!17423)) (ite c!521682 (regOne!19723 (reg!9934 r!17423)) (regTwo!19722 (reg!9934 r!17423))))))))

(declare-fun bm!220924 () Bool)

(assert (=> bm!220924 (= call!220929 call!220928)))

(declare-fun bm!220925 () Bool)

(assert (=> bm!220925 (= call!220930 (validRegex!4338 (ite c!521682 (regTwo!19723 (reg!9934 r!17423)) (regOne!19722 (reg!9934 r!17423)))))))

(declare-fun b!3114973 () Bool)

(assert (=> b!3114973 (= e!1945512 call!220929)))

(declare-fun d!862064 () Bool)

(declare-fun res!1275050 () Bool)

(declare-fun e!1945510 () Bool)

(assert (=> d!862064 (=> res!1275050 e!1945510)))

(assert (=> d!862064 (= res!1275050 ((_ is ElementMatch!9605) (reg!9934 r!17423)))))

(assert (=> d!862064 (= (validRegex!4338 (reg!9934 r!17423)) e!1945510)))

(declare-fun b!3114974 () Bool)

(declare-fun e!1945515 () Bool)

(assert (=> b!3114974 (= e!1945515 call!220928)))

(declare-fun b!3114975 () Bool)

(declare-fun e!1945513 () Bool)

(assert (=> b!3114975 (= e!1945510 e!1945513)))

(assert (=> b!3114975 (= c!521683 ((_ is Star!9605) (reg!9934 r!17423)))))

(declare-fun b!3114976 () Bool)

(assert (=> b!3114976 (= e!1945513 e!1945511)))

(assert (=> b!3114976 (= c!521682 ((_ is Union!9605) (reg!9934 r!17423)))))

(declare-fun b!3114977 () Bool)

(assert (=> b!3114977 (= e!1945514 call!220930)))

(declare-fun b!3114978 () Bool)

(assert (=> b!3114978 (= e!1945513 e!1945515)))

(declare-fun res!1275047 () Bool)

(assert (=> b!3114978 (= res!1275047 (not (nullable!3245 (reg!9934 (reg!9934 r!17423)))))))

(assert (=> b!3114978 (=> (not res!1275047) (not e!1945515))))

(assert (= (and d!862064 (not res!1275050)) b!3114975))

(assert (= (and b!3114975 c!521683) b!3114978))

(assert (= (and b!3114975 (not c!521683)) b!3114976))

(assert (= (and b!3114978 res!1275047) b!3114974))

(assert (= (and b!3114976 c!521682) b!3114972))

(assert (= (and b!3114976 (not c!521682)) b!3114970))

(assert (= (and b!3114972 res!1275046) b!3114977))

(assert (= (and b!3114970 (not res!1275048)) b!3114971))

(assert (= (and b!3114971 res!1275049) b!3114973))

(assert (= (or b!3114972 b!3114973) bm!220924))

(assert (= (or b!3114977 b!3114971) bm!220925))

(assert (= (or b!3114974 bm!220924) bm!220923))

(declare-fun m!3406119 () Bool)

(assert (=> bm!220923 m!3406119))

(declare-fun m!3406121 () Bool)

(assert (=> bm!220925 m!3406121))

(declare-fun m!3406123 () Bool)

(assert (=> b!3114978 m!3406123))

(assert (=> b!3114552 d!862064))

(declare-fun d!862066 () Bool)

(assert (=> d!862066 (= (isEmptyLang!656 (simplify!560 (reg!9934 r!17423))) ((_ is EmptyLang!9605) (simplify!560 (reg!9934 r!17423))))))

(assert (=> b!3114545 d!862066))

(declare-fun b!3115029 () Bool)

(declare-fun c!521711 () Bool)

(declare-fun call!220949 () Bool)

(assert (=> b!3115029 (= c!521711 call!220949)))

(declare-fun e!1945547 () Regex!9605)

(declare-fun e!1945551 () Regex!9605)

(assert (=> b!3115029 (= e!1945547 e!1945551)))

(declare-fun b!3115030 () Bool)

(declare-fun e!1945556 () Regex!9605)

(declare-fun e!1945546 () Regex!9605)

(assert (=> b!3115030 (= e!1945556 e!1945546)))

(declare-fun lt!1058108 () Regex!9605)

(declare-fun call!220947 () Regex!9605)

(assert (=> b!3115030 (= lt!1058108 call!220947)))

(declare-fun lt!1058104 () Regex!9605)

(declare-fun call!220950 () Regex!9605)

(assert (=> b!3115030 (= lt!1058104 call!220950)))

(declare-fun c!521715 () Bool)

(declare-fun call!220946 () Bool)

(assert (=> b!3115030 (= c!521715 call!220946)))

(declare-fun b!3115031 () Bool)

(declare-fun e!1945549 () Regex!9605)

(assert (=> b!3115031 (= e!1945549 EmptyExpr!9605)))

(declare-fun b!3115032 () Bool)

(declare-fun c!521714 () Bool)

(declare-fun call!220945 () Bool)

(assert (=> b!3115032 (= c!521714 call!220945)))

(declare-fun e!1945555 () Regex!9605)

(assert (=> b!3115032 (= e!1945546 e!1945555)))

(declare-fun bm!220940 () Bool)

(declare-fun c!521716 () Bool)

(assert (=> bm!220940 (= call!220950 (simplify!560 (ite c!521716 (regTwo!19723 (reg!9934 r!17423)) (regOne!19722 (reg!9934 r!17423)))))))

(declare-fun b!3115033 () Bool)

(declare-fun e!1945548 () Regex!9605)

(declare-fun e!1945554 () Regex!9605)

(assert (=> b!3115033 (= e!1945548 e!1945554)))

(declare-fun c!521713 () Bool)

(assert (=> b!3115033 (= c!521713 ((_ is ElementMatch!9605) (reg!9934 r!17423)))))

(declare-fun b!3115034 () Bool)

(declare-fun c!521712 () Bool)

(declare-fun e!1945544 () Bool)

(assert (=> b!3115034 (= c!521712 e!1945544)))

(declare-fun res!1275059 () Bool)

(assert (=> b!3115034 (=> res!1275059 e!1945544)))

(declare-fun call!220948 () Bool)

(assert (=> b!3115034 (= res!1275059 call!220948)))

(declare-fun lt!1058105 () Regex!9605)

(declare-fun call!220951 () Regex!9605)

(assert (=> b!3115034 (= lt!1058105 call!220951)))

(declare-fun e!1945545 () Regex!9605)

(declare-fun e!1945552 () Regex!9605)

(assert (=> b!3115034 (= e!1945545 e!1945552)))

(declare-fun b!3115035 () Bool)

(declare-fun e!1945553 () Regex!9605)

(declare-fun lt!1058106 () Regex!9605)

(declare-fun lt!1058107 () Regex!9605)

(assert (=> b!3115035 (= e!1945553 (Concat!14926 lt!1058106 lt!1058107))))

(declare-fun b!3115036 () Bool)

(declare-fun e!1945550 () Bool)

(assert (=> b!3115036 (= e!1945550 call!220945)))

(declare-fun b!3115037 () Bool)

(assert (=> b!3115037 (= e!1945551 lt!1058107)))

(declare-fun bm!220941 () Bool)

(declare-fun c!521708 () Bool)

(assert (=> bm!220941 (= call!220951 (simplify!560 (ite c!521708 (reg!9934 (reg!9934 r!17423)) (ite c!521716 (regOne!19723 (reg!9934 r!17423)) (regTwo!19722 (reg!9934 r!17423))))))))

(declare-fun b!3115038 () Bool)

(assert (=> b!3115038 (= e!1945544 call!220949)))

(declare-fun b!3115039 () Bool)

(assert (=> b!3115039 (= e!1945555 lt!1058108)))

(declare-fun b!3115040 () Bool)

(assert (=> b!3115040 (= e!1945552 (Star!9605 lt!1058105))))

(declare-fun bm!220942 () Bool)

(declare-fun isEmptyExpr!655 (Regex!9605) Bool)

(assert (=> bm!220942 (= call!220949 (isEmptyExpr!655 (ite c!521708 lt!1058105 lt!1058106)))))

(declare-fun b!3115041 () Bool)

(assert (=> b!3115041 (= e!1945556 e!1945547)))

(assert (=> b!3115041 (= lt!1058106 call!220950)))

(assert (=> b!3115041 (= lt!1058107 call!220947)))

(declare-fun res!1275058 () Bool)

(assert (=> b!3115041 (= res!1275058 call!220946)))

(assert (=> b!3115041 (=> res!1275058 e!1945550)))

(declare-fun c!521706 () Bool)

(assert (=> b!3115041 (= c!521706 e!1945550)))

(declare-fun b!3115042 () Bool)

(assert (=> b!3115042 (= e!1945546 lt!1058104)))

(declare-fun b!3115043 () Bool)

(assert (=> b!3115043 (= e!1945549 e!1945545)))

(assert (=> b!3115043 (= c!521708 ((_ is Star!9605) (reg!9934 r!17423)))))

(declare-fun b!3115044 () Bool)

(assert (=> b!3115044 (= e!1945547 EmptyLang!9605)))

(declare-fun b!3115045 () Bool)

(declare-fun e!1945557 () Bool)

(declare-fun lt!1058109 () Regex!9605)

(assert (=> b!3115045 (= e!1945557 (= (nullable!3245 lt!1058109) (nullable!3245 (reg!9934 r!17423))))))

(declare-fun b!3115046 () Bool)

(assert (=> b!3115046 (= e!1945551 e!1945553)))

(declare-fun c!521709 () Bool)

(assert (=> b!3115046 (= c!521709 (isEmptyExpr!655 lt!1058107))))

(declare-fun d!862068 () Bool)

(assert (=> d!862068 e!1945557))

(declare-fun res!1275057 () Bool)

(assert (=> d!862068 (=> (not res!1275057) (not e!1945557))))

(assert (=> d!862068 (= res!1275057 (validRegex!4338 lt!1058109))))

(assert (=> d!862068 (= lt!1058109 e!1945548)))

(declare-fun c!521707 () Bool)

(assert (=> d!862068 (= c!521707 ((_ is EmptyLang!9605) (reg!9934 r!17423)))))

(assert (=> d!862068 (validRegex!4338 (reg!9934 r!17423))))

(assert (=> d!862068 (= (simplify!560 (reg!9934 r!17423)) lt!1058109)))

(declare-fun bm!220943 () Bool)

(assert (=> bm!220943 (= call!220947 call!220951)))

(declare-fun b!3115047 () Bool)

(assert (=> b!3115047 (= e!1945554 (reg!9934 r!17423))))

(declare-fun b!3115048 () Bool)

(declare-fun c!521710 () Bool)

(assert (=> b!3115048 (= c!521710 ((_ is EmptyExpr!9605) (reg!9934 r!17423)))))

(assert (=> b!3115048 (= e!1945554 e!1945549)))

(declare-fun b!3115049 () Bool)

(assert (=> b!3115049 (= e!1945553 lt!1058106)))

(declare-fun b!3115050 () Bool)

(assert (=> b!3115050 (= e!1945548 EmptyLang!9605)))

(declare-fun b!3115051 () Bool)

(assert (=> b!3115051 (= e!1945552 EmptyExpr!9605)))

(declare-fun b!3115052 () Bool)

(assert (=> b!3115052 (= e!1945555 (Union!9605 lt!1058108 lt!1058104))))

(declare-fun b!3115053 () Bool)

(assert (=> b!3115053 (= c!521716 ((_ is Union!9605) (reg!9934 r!17423)))))

(assert (=> b!3115053 (= e!1945545 e!1945556)))

(declare-fun bm!220944 () Bool)

(assert (=> bm!220944 (= call!220948 (isEmptyLang!656 (ite c!521708 lt!1058105 (ite c!521716 lt!1058108 lt!1058106))))))

(declare-fun bm!220945 () Bool)

(assert (=> bm!220945 (= call!220945 (isEmptyLang!656 (ite c!521716 lt!1058104 lt!1058107)))))

(declare-fun bm!220946 () Bool)

(assert (=> bm!220946 (= call!220946 call!220948)))

(assert (= (and d!862068 c!521707) b!3115050))

(assert (= (and d!862068 (not c!521707)) b!3115033))

(assert (= (and b!3115033 c!521713) b!3115047))

(assert (= (and b!3115033 (not c!521713)) b!3115048))

(assert (= (and b!3115048 c!521710) b!3115031))

(assert (= (and b!3115048 (not c!521710)) b!3115043))

(assert (= (and b!3115043 c!521708) b!3115034))

(assert (= (and b!3115043 (not c!521708)) b!3115053))

(assert (= (and b!3115034 (not res!1275059)) b!3115038))

(assert (= (and b!3115034 c!521712) b!3115051))

(assert (= (and b!3115034 (not c!521712)) b!3115040))

(assert (= (and b!3115053 c!521716) b!3115030))

(assert (= (and b!3115053 (not c!521716)) b!3115041))

(assert (= (and b!3115030 c!521715) b!3115042))

(assert (= (and b!3115030 (not c!521715)) b!3115032))

(assert (= (and b!3115032 c!521714) b!3115039))

(assert (= (and b!3115032 (not c!521714)) b!3115052))

(assert (= (and b!3115041 (not res!1275058)) b!3115036))

(assert (= (and b!3115041 c!521706) b!3115044))

(assert (= (and b!3115041 (not c!521706)) b!3115029))

(assert (= (and b!3115029 c!521711) b!3115037))

(assert (= (and b!3115029 (not c!521711)) b!3115046))

(assert (= (and b!3115046 c!521709) b!3115049))

(assert (= (and b!3115046 (not c!521709)) b!3115035))

(assert (= (or b!3115030 b!3115041) bm!220943))

(assert (= (or b!3115030 b!3115041) bm!220940))

(assert (= (or b!3115032 b!3115036) bm!220945))

(assert (= (or b!3115030 b!3115041) bm!220946))

(assert (= (or b!3115038 b!3115029) bm!220942))

(assert (= (or b!3115034 bm!220943) bm!220941))

(assert (= (or b!3115034 bm!220946) bm!220944))

(assert (= (and d!862068 res!1275057) b!3115045))

(declare-fun m!3406125 () Bool)

(assert (=> b!3115046 m!3406125))

(declare-fun m!3406127 () Bool)

(assert (=> bm!220944 m!3406127))

(declare-fun m!3406129 () Bool)

(assert (=> bm!220941 m!3406129))

(declare-fun m!3406131 () Bool)

(assert (=> d!862068 m!3406131))

(assert (=> d!862068 m!3406023))

(declare-fun m!3406133 () Bool)

(assert (=> b!3115045 m!3406133))

(declare-fun m!3406135 () Bool)

(assert (=> b!3115045 m!3406135))

(declare-fun m!3406137 () Bool)

(assert (=> bm!220945 m!3406137))

(declare-fun m!3406139 () Bool)

(assert (=> bm!220942 m!3406139))

(declare-fun m!3406141 () Bool)

(assert (=> bm!220940 m!3406141))

(assert (=> b!3114545 d!862068))

(declare-fun b!3115088 () Bool)

(declare-fun e!1945582 () Bool)

(declare-fun e!1945580 () Bool)

(assert (=> b!3115088 (= e!1945582 e!1945580)))

(declare-fun c!521733 () Bool)

(assert (=> b!3115088 (= c!521733 ((_ is Union!9605) r!17423))))

(declare-fun b!3115089 () Bool)

(declare-fun e!1945581 () Int)

(declare-fun call!220971 () Int)

(assert (=> b!3115089 (= e!1945581 (+ 1 call!220971))))

(declare-fun bm!220961 () Bool)

(declare-fun call!220967 () Int)

(declare-fun call!220970 () Int)

(assert (=> bm!220961 (= call!220967 call!220970)))

(declare-fun b!3115090 () Bool)

(declare-fun e!1945587 () Bool)

(declare-fun lt!1058112 () Int)

(assert (=> b!3115090 (= e!1945587 (> lt!1058112 call!220967))))

(declare-fun b!3115091 () Bool)

(declare-fun e!1945583 () Bool)

(assert (=> b!3115091 (= e!1945583 (> lt!1058112 call!220970))))

(declare-fun b!3115092 () Bool)

(declare-fun e!1945579 () Bool)

(assert (=> b!3115092 (= e!1945580 e!1945579)))

(declare-fun c!521732 () Bool)

(assert (=> b!3115092 (= c!521732 ((_ is Concat!14926) r!17423))))

(declare-fun b!3115093 () Bool)

(declare-fun e!1945585 () Int)

(declare-fun call!220969 () Int)

(assert (=> b!3115093 (= e!1945585 (+ 1 call!220969))))

(declare-fun d!862070 () Bool)

(assert (=> d!862070 e!1945582))

(declare-fun res!1275068 () Bool)

(assert (=> d!862070 (=> (not res!1275068) (not e!1945582))))

(assert (=> d!862070 (= res!1275068 (> lt!1058112 0))))

(declare-fun e!1945578 () Int)

(assert (=> d!862070 (= lt!1058112 e!1945578)))

(declare-fun c!521737 () Bool)

(assert (=> d!862070 (= c!521737 ((_ is ElementMatch!9605) r!17423))))

(assert (=> d!862070 (= (regexDepth!117 r!17423) lt!1058112)))

(declare-fun b!3115094 () Bool)

(assert (=> b!3115094 (= e!1945578 1)))

(declare-fun c!521736 () Bool)

(declare-fun c!521735 () Bool)

(declare-fun bm!220962 () Bool)

(assert (=> bm!220962 (= call!220971 (regexDepth!117 (ite c!521736 (reg!9934 r!17423) (ite c!521735 (regTwo!19723 r!17423) (regTwo!19722 r!17423)))))))

(declare-fun b!3115095 () Bool)

(declare-fun c!521731 () Bool)

(assert (=> b!3115095 (= c!521731 ((_ is Star!9605) r!17423))))

(declare-fun e!1945586 () Bool)

(assert (=> b!3115095 (= e!1945579 e!1945586)))

(declare-fun b!3115096 () Bool)

(assert (=> b!3115096 (= e!1945578 e!1945581)))

(assert (=> b!3115096 (= c!521736 ((_ is Star!9605) r!17423))))

(declare-fun bm!220963 () Bool)

(declare-fun call!220966 () Int)

(assert (=> bm!220963 (= call!220966 (regexDepth!117 (ite c!521733 (regOne!19723 r!17423) (regOne!19722 r!17423))))))

(declare-fun bm!220964 () Bool)

(declare-fun call!220972 () Int)

(assert (=> bm!220964 (= call!220972 (regexDepth!117 (ite c!521735 (regOne!19723 r!17423) (regOne!19722 r!17423))))))

(declare-fun b!3115097 () Bool)

(assert (=> b!3115097 (= e!1945586 (> lt!1058112 call!220967))))

(declare-fun b!3115098 () Bool)

(declare-fun e!1945584 () Int)

(assert (=> b!3115098 (= e!1945584 (+ 1 call!220969))))

(declare-fun b!3115099 () Bool)

(assert (=> b!3115099 (= e!1945585 e!1945584)))

(declare-fun c!521734 () Bool)

(assert (=> b!3115099 (= c!521734 ((_ is Concat!14926) r!17423))))

(declare-fun b!3115100 () Bool)

(assert (=> b!3115100 (= c!521735 ((_ is Union!9605) r!17423))))

(assert (=> b!3115100 (= e!1945581 e!1945585)))

(declare-fun b!3115101 () Bool)

(assert (=> b!3115101 (= e!1945580 e!1945583)))

(declare-fun res!1275067 () Bool)

(assert (=> b!3115101 (= res!1275067 (> lt!1058112 call!220966))))

(assert (=> b!3115101 (=> (not res!1275067) (not e!1945583))))

(declare-fun bm!220965 () Bool)

(declare-fun call!220968 () Int)

(assert (=> bm!220965 (= call!220968 call!220971)))

(declare-fun b!3115102 () Bool)

(assert (=> b!3115102 (= e!1945586 (= lt!1058112 1))))

(declare-fun bm!220966 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!220966 (= call!220969 (maxBigInt!0 call!220972 call!220968))))

(declare-fun b!3115103 () Bool)

(assert (=> b!3115103 (= e!1945584 1)))

(declare-fun b!3115104 () Bool)

(declare-fun res!1275066 () Bool)

(assert (=> b!3115104 (=> (not res!1275066) (not e!1945587))))

(assert (=> b!3115104 (= res!1275066 (> lt!1058112 call!220966))))

(assert (=> b!3115104 (= e!1945579 e!1945587)))

(declare-fun bm!220967 () Bool)

(assert (=> bm!220967 (= call!220970 (regexDepth!117 (ite c!521733 (regTwo!19723 r!17423) (ite c!521732 (regTwo!19722 r!17423) (reg!9934 r!17423)))))))

(assert (= (and d!862070 c!521737) b!3115094))

(assert (= (and d!862070 (not c!521737)) b!3115096))

(assert (= (and b!3115096 c!521736) b!3115089))

(assert (= (and b!3115096 (not c!521736)) b!3115100))

(assert (= (and b!3115100 c!521735) b!3115093))

(assert (= (and b!3115100 (not c!521735)) b!3115099))

(assert (= (and b!3115099 c!521734) b!3115098))

(assert (= (and b!3115099 (not c!521734)) b!3115103))

(assert (= (or b!3115093 b!3115098) bm!220965))

(assert (= (or b!3115093 b!3115098) bm!220964))

(assert (= (or b!3115093 b!3115098) bm!220966))

(assert (= (or b!3115089 bm!220965) bm!220962))

(assert (= (and d!862070 res!1275068) b!3115088))

(assert (= (and b!3115088 c!521733) b!3115101))

(assert (= (and b!3115088 (not c!521733)) b!3115092))

(assert (= (and b!3115101 res!1275067) b!3115091))

(assert (= (and b!3115092 c!521732) b!3115104))

(assert (= (and b!3115092 (not c!521732)) b!3115095))

(assert (= (and b!3115104 res!1275066) b!3115090))

(assert (= (and b!3115095 c!521731) b!3115097))

(assert (= (and b!3115095 (not c!521731)) b!3115102))

(assert (= (or b!3115090 b!3115097) bm!220961))

(assert (= (or b!3115091 bm!220961) bm!220967))

(assert (= (or b!3115101 b!3115104) bm!220963))

(declare-fun m!3406143 () Bool)

(assert (=> bm!220963 m!3406143))

(declare-fun m!3406145 () Bool)

(assert (=> bm!220962 m!3406145))

(declare-fun m!3406147 () Bool)

(assert (=> bm!220966 m!3406147))

(declare-fun m!3406149 () Bool)

(assert (=> bm!220964 m!3406149))

(declare-fun m!3406151 () Bool)

(assert (=> bm!220967 m!3406151))

(assert (=> b!3114550 d!862070))

(declare-fun d!862072 () Bool)

(declare-fun lt!1058115 () Int)

(assert (=> d!862072 (>= lt!1058115 0)))

(declare-fun e!1945590 () Int)

(assert (=> d!862072 (= lt!1058115 e!1945590)))

(declare-fun c!521740 () Bool)

(assert (=> d!862072 (= c!521740 ((_ is Nil!35346) s!11993))))

(assert (=> d!862072 (= (size!26583 s!11993) lt!1058115)))

(declare-fun b!3115109 () Bool)

(assert (=> b!3115109 (= e!1945590 0)))

(declare-fun b!3115110 () Bool)

(assert (=> b!3115110 (= e!1945590 (+ 1 (size!26583 (t!234535 s!11993))))))

(assert (= (and d!862072 c!521740) b!3115109))

(assert (= (and d!862072 (not c!521740)) b!3115110))

(declare-fun m!3406153 () Bool)

(assert (=> b!3115110 m!3406153))

(assert (=> b!3114550 d!862072))

(declare-fun b!3115111 () Bool)

(declare-fun e!1945595 () Bool)

(declare-fun e!1945593 () Bool)

(assert (=> b!3115111 (= e!1945595 e!1945593)))

(declare-fun c!521743 () Bool)

(assert (=> b!3115111 (= c!521743 ((_ is Union!9605) (reg!9934 r!17423)))))

(declare-fun b!3115112 () Bool)

(declare-fun e!1945594 () Int)

(declare-fun call!220978 () Int)

(assert (=> b!3115112 (= e!1945594 (+ 1 call!220978))))

(declare-fun bm!220968 () Bool)

(declare-fun call!220974 () Int)

(declare-fun call!220977 () Int)

(assert (=> bm!220968 (= call!220974 call!220977)))

(declare-fun b!3115113 () Bool)

(declare-fun e!1945600 () Bool)

(declare-fun lt!1058116 () Int)

(assert (=> b!3115113 (= e!1945600 (> lt!1058116 call!220974))))

(declare-fun b!3115114 () Bool)

(declare-fun e!1945596 () Bool)

(assert (=> b!3115114 (= e!1945596 (> lt!1058116 call!220977))))

(declare-fun b!3115115 () Bool)

(declare-fun e!1945592 () Bool)

(assert (=> b!3115115 (= e!1945593 e!1945592)))

(declare-fun c!521742 () Bool)

(assert (=> b!3115115 (= c!521742 ((_ is Concat!14926) (reg!9934 r!17423)))))

(declare-fun b!3115116 () Bool)

(declare-fun e!1945598 () Int)

(declare-fun call!220976 () Int)

(assert (=> b!3115116 (= e!1945598 (+ 1 call!220976))))

(declare-fun d!862074 () Bool)

(assert (=> d!862074 e!1945595))

(declare-fun res!1275071 () Bool)

(assert (=> d!862074 (=> (not res!1275071) (not e!1945595))))

(assert (=> d!862074 (= res!1275071 (> lt!1058116 0))))

(declare-fun e!1945591 () Int)

(assert (=> d!862074 (= lt!1058116 e!1945591)))

(declare-fun c!521747 () Bool)

(assert (=> d!862074 (= c!521747 ((_ is ElementMatch!9605) (reg!9934 r!17423)))))

(assert (=> d!862074 (= (regexDepth!117 (reg!9934 r!17423)) lt!1058116)))

(declare-fun b!3115117 () Bool)

(assert (=> b!3115117 (= e!1945591 1)))

(declare-fun c!521745 () Bool)

(declare-fun bm!220969 () Bool)

(declare-fun c!521746 () Bool)

(assert (=> bm!220969 (= call!220978 (regexDepth!117 (ite c!521746 (reg!9934 (reg!9934 r!17423)) (ite c!521745 (regTwo!19723 (reg!9934 r!17423)) (regTwo!19722 (reg!9934 r!17423))))))))

(declare-fun b!3115118 () Bool)

(declare-fun c!521741 () Bool)

(assert (=> b!3115118 (= c!521741 ((_ is Star!9605) (reg!9934 r!17423)))))

(declare-fun e!1945599 () Bool)

(assert (=> b!3115118 (= e!1945592 e!1945599)))

(declare-fun b!3115119 () Bool)

(assert (=> b!3115119 (= e!1945591 e!1945594)))

(assert (=> b!3115119 (= c!521746 ((_ is Star!9605) (reg!9934 r!17423)))))

(declare-fun bm!220970 () Bool)

(declare-fun call!220973 () Int)

(assert (=> bm!220970 (= call!220973 (regexDepth!117 (ite c!521743 (regOne!19723 (reg!9934 r!17423)) (regOne!19722 (reg!9934 r!17423)))))))

(declare-fun bm!220971 () Bool)

(declare-fun call!220979 () Int)

(assert (=> bm!220971 (= call!220979 (regexDepth!117 (ite c!521745 (regOne!19723 (reg!9934 r!17423)) (regOne!19722 (reg!9934 r!17423)))))))

(declare-fun b!3115120 () Bool)

(assert (=> b!3115120 (= e!1945599 (> lt!1058116 call!220974))))

(declare-fun b!3115121 () Bool)

(declare-fun e!1945597 () Int)

(assert (=> b!3115121 (= e!1945597 (+ 1 call!220976))))

(declare-fun b!3115122 () Bool)

(assert (=> b!3115122 (= e!1945598 e!1945597)))

(declare-fun c!521744 () Bool)

(assert (=> b!3115122 (= c!521744 ((_ is Concat!14926) (reg!9934 r!17423)))))

(declare-fun b!3115123 () Bool)

(assert (=> b!3115123 (= c!521745 ((_ is Union!9605) (reg!9934 r!17423)))))

(assert (=> b!3115123 (= e!1945594 e!1945598)))

(declare-fun b!3115124 () Bool)

(assert (=> b!3115124 (= e!1945593 e!1945596)))

(declare-fun res!1275070 () Bool)

(assert (=> b!3115124 (= res!1275070 (> lt!1058116 call!220973))))

(assert (=> b!3115124 (=> (not res!1275070) (not e!1945596))))

(declare-fun bm!220972 () Bool)

(declare-fun call!220975 () Int)

(assert (=> bm!220972 (= call!220975 call!220978)))

(declare-fun b!3115125 () Bool)

(assert (=> b!3115125 (= e!1945599 (= lt!1058116 1))))

(declare-fun bm!220973 () Bool)

(assert (=> bm!220973 (= call!220976 (maxBigInt!0 call!220979 call!220975))))

(declare-fun b!3115126 () Bool)

(assert (=> b!3115126 (= e!1945597 1)))

(declare-fun b!3115127 () Bool)

(declare-fun res!1275069 () Bool)

(assert (=> b!3115127 (=> (not res!1275069) (not e!1945600))))

(assert (=> b!3115127 (= res!1275069 (> lt!1058116 call!220973))))

(assert (=> b!3115127 (= e!1945592 e!1945600)))

(declare-fun bm!220974 () Bool)

(assert (=> bm!220974 (= call!220977 (regexDepth!117 (ite c!521743 (regTwo!19723 (reg!9934 r!17423)) (ite c!521742 (regTwo!19722 (reg!9934 r!17423)) (reg!9934 (reg!9934 r!17423))))))))

(assert (= (and d!862074 c!521747) b!3115117))

(assert (= (and d!862074 (not c!521747)) b!3115119))

(assert (= (and b!3115119 c!521746) b!3115112))

(assert (= (and b!3115119 (not c!521746)) b!3115123))

(assert (= (and b!3115123 c!521745) b!3115116))

(assert (= (and b!3115123 (not c!521745)) b!3115122))

(assert (= (and b!3115122 c!521744) b!3115121))

(assert (= (and b!3115122 (not c!521744)) b!3115126))

(assert (= (or b!3115116 b!3115121) bm!220972))

(assert (= (or b!3115116 b!3115121) bm!220971))

(assert (= (or b!3115116 b!3115121) bm!220973))

(assert (= (or b!3115112 bm!220972) bm!220969))

(assert (= (and d!862074 res!1275071) b!3115111))

(assert (= (and b!3115111 c!521743) b!3115124))

(assert (= (and b!3115111 (not c!521743)) b!3115115))

(assert (= (and b!3115124 res!1275070) b!3115114))

(assert (= (and b!3115115 c!521742) b!3115127))

(assert (= (and b!3115115 (not c!521742)) b!3115118))

(assert (= (and b!3115127 res!1275069) b!3115113))

(assert (= (and b!3115118 c!521741) b!3115120))

(assert (= (and b!3115118 (not c!521741)) b!3115125))

(assert (= (or b!3115113 b!3115120) bm!220968))

(assert (= (or b!3115114 bm!220968) bm!220974))

(assert (= (or b!3115124 b!3115127) bm!220970))

(declare-fun m!3406155 () Bool)

(assert (=> bm!220970 m!3406155))

(declare-fun m!3406157 () Bool)

(assert (=> bm!220969 m!3406157))

(declare-fun m!3406159 () Bool)

(assert (=> bm!220973 m!3406159))

(declare-fun m!3406161 () Bool)

(assert (=> bm!220971 m!3406161))

(declare-fun m!3406163 () Bool)

(assert (=> bm!220974 m!3406163))

(assert (=> b!3114550 d!862074))

(declare-fun b!3115128 () Bool)

(declare-fun res!1275074 () Bool)

(declare-fun e!1945601 () Bool)

(assert (=> b!3115128 (=> res!1275074 e!1945601)))

(assert (=> b!3115128 (= res!1275074 (not ((_ is Concat!14926) r!17423)))))

(declare-fun e!1945603 () Bool)

(assert (=> b!3115128 (= e!1945603 e!1945601)))

(declare-fun b!3115129 () Bool)

(declare-fun e!1945604 () Bool)

(assert (=> b!3115129 (= e!1945601 e!1945604)))

(declare-fun res!1275075 () Bool)

(assert (=> b!3115129 (=> (not res!1275075) (not e!1945604))))

(declare-fun call!220982 () Bool)

(assert (=> b!3115129 (= res!1275075 call!220982)))

(declare-fun b!3115130 () Bool)

(declare-fun res!1275072 () Bool)

(declare-fun e!1945606 () Bool)

(assert (=> b!3115130 (=> (not res!1275072) (not e!1945606))))

(declare-fun call!220981 () Bool)

(assert (=> b!3115130 (= res!1275072 call!220981)))

(assert (=> b!3115130 (= e!1945603 e!1945606)))

(declare-fun call!220980 () Bool)

(declare-fun bm!220975 () Bool)

(declare-fun c!521749 () Bool)

(declare-fun c!521748 () Bool)

(assert (=> bm!220975 (= call!220980 (validRegex!4338 (ite c!521749 (reg!9934 r!17423) (ite c!521748 (regOne!19723 r!17423) (regTwo!19722 r!17423)))))))

(declare-fun bm!220976 () Bool)

(assert (=> bm!220976 (= call!220981 call!220980)))

(declare-fun bm!220977 () Bool)

(assert (=> bm!220977 (= call!220982 (validRegex!4338 (ite c!521748 (regTwo!19723 r!17423) (regOne!19722 r!17423))))))

(declare-fun b!3115131 () Bool)

(assert (=> b!3115131 (= e!1945604 call!220981)))

(declare-fun d!862076 () Bool)

(declare-fun res!1275076 () Bool)

(declare-fun e!1945602 () Bool)

(assert (=> d!862076 (=> res!1275076 e!1945602)))

(assert (=> d!862076 (= res!1275076 ((_ is ElementMatch!9605) r!17423))))

(assert (=> d!862076 (= (validRegex!4338 r!17423) e!1945602)))

(declare-fun b!3115132 () Bool)

(declare-fun e!1945607 () Bool)

(assert (=> b!3115132 (= e!1945607 call!220980)))

(declare-fun b!3115133 () Bool)

(declare-fun e!1945605 () Bool)

(assert (=> b!3115133 (= e!1945602 e!1945605)))

(assert (=> b!3115133 (= c!521749 ((_ is Star!9605) r!17423))))

(declare-fun b!3115134 () Bool)

(assert (=> b!3115134 (= e!1945605 e!1945603)))

(assert (=> b!3115134 (= c!521748 ((_ is Union!9605) r!17423))))

(declare-fun b!3115135 () Bool)

(assert (=> b!3115135 (= e!1945606 call!220982)))

(declare-fun b!3115136 () Bool)

(assert (=> b!3115136 (= e!1945605 e!1945607)))

(declare-fun res!1275073 () Bool)

(assert (=> b!3115136 (= res!1275073 (not (nullable!3245 (reg!9934 r!17423))))))

(assert (=> b!3115136 (=> (not res!1275073) (not e!1945607))))

(assert (= (and d!862076 (not res!1275076)) b!3115133))

(assert (= (and b!3115133 c!521749) b!3115136))

(assert (= (and b!3115133 (not c!521749)) b!3115134))

(assert (= (and b!3115136 res!1275073) b!3115132))

(assert (= (and b!3115134 c!521748) b!3115130))

(assert (= (and b!3115134 (not c!521748)) b!3115128))

(assert (= (and b!3115130 res!1275072) b!3115135))

(assert (= (and b!3115128 (not res!1275074)) b!3115129))

(assert (= (and b!3115129 res!1275075) b!3115131))

(assert (= (or b!3115130 b!3115131) bm!220976))

(assert (= (or b!3115135 b!3115129) bm!220977))

(assert (= (or b!3115132 bm!220976) bm!220975))

(declare-fun m!3406165 () Bool)

(assert (=> bm!220975 m!3406165))

(declare-fun m!3406167 () Bool)

(assert (=> bm!220977 m!3406167))

(assert (=> b!3115136 m!3406135))

(assert (=> start!294896 d!862076))

(declare-fun b!3115147 () Bool)

(declare-fun e!1945610 () Bool)

(assert (=> b!3115147 (= e!1945610 tp_is_empty!16773)))

(assert (=> b!3114553 (= tp!976965 e!1945610)))

(declare-fun b!3115148 () Bool)

(declare-fun tp!977021 () Bool)

(declare-fun tp!977019 () Bool)

(assert (=> b!3115148 (= e!1945610 (and tp!977021 tp!977019))))

(declare-fun b!3115150 () Bool)

(declare-fun tp!977022 () Bool)

(declare-fun tp!977018 () Bool)

(assert (=> b!3115150 (= e!1945610 (and tp!977022 tp!977018))))

(declare-fun b!3115149 () Bool)

(declare-fun tp!977020 () Bool)

(assert (=> b!3115149 (= e!1945610 tp!977020)))

(assert (= (and b!3114553 ((_ is ElementMatch!9605) (regOne!19723 r!17423))) b!3115147))

(assert (= (and b!3114553 ((_ is Concat!14926) (regOne!19723 r!17423))) b!3115148))

(assert (= (and b!3114553 ((_ is Star!9605) (regOne!19723 r!17423))) b!3115149))

(assert (= (and b!3114553 ((_ is Union!9605) (regOne!19723 r!17423))) b!3115150))

(declare-fun b!3115151 () Bool)

(declare-fun e!1945611 () Bool)

(assert (=> b!3115151 (= e!1945611 tp_is_empty!16773)))

(assert (=> b!3114553 (= tp!976967 e!1945611)))

(declare-fun b!3115152 () Bool)

(declare-fun tp!977026 () Bool)

(declare-fun tp!977024 () Bool)

(assert (=> b!3115152 (= e!1945611 (and tp!977026 tp!977024))))

(declare-fun b!3115154 () Bool)

(declare-fun tp!977027 () Bool)

(declare-fun tp!977023 () Bool)

(assert (=> b!3115154 (= e!1945611 (and tp!977027 tp!977023))))

(declare-fun b!3115153 () Bool)

(declare-fun tp!977025 () Bool)

(assert (=> b!3115153 (= e!1945611 tp!977025)))

(assert (= (and b!3114553 ((_ is ElementMatch!9605) (regTwo!19723 r!17423))) b!3115151))

(assert (= (and b!3114553 ((_ is Concat!14926) (regTwo!19723 r!17423))) b!3115152))

(assert (= (and b!3114553 ((_ is Star!9605) (regTwo!19723 r!17423))) b!3115153))

(assert (= (and b!3114553 ((_ is Union!9605) (regTwo!19723 r!17423))) b!3115154))

(declare-fun b!3115159 () Bool)

(declare-fun e!1945614 () Bool)

(declare-fun tp!977030 () Bool)

(assert (=> b!3115159 (= e!1945614 (and tp_is_empty!16773 tp!977030))))

(assert (=> b!3114548 (= tp!976969 e!1945614)))

(assert (= (and b!3114548 ((_ is Cons!35346) (t!234535 s!11993))) b!3115159))

(declare-fun b!3115160 () Bool)

(declare-fun e!1945615 () Bool)

(assert (=> b!3115160 (= e!1945615 tp_is_empty!16773)))

(assert (=> b!3114551 (= tp!976964 e!1945615)))

(declare-fun b!3115161 () Bool)

(declare-fun tp!977034 () Bool)

(declare-fun tp!977032 () Bool)

(assert (=> b!3115161 (= e!1945615 (and tp!977034 tp!977032))))

(declare-fun b!3115163 () Bool)

(declare-fun tp!977035 () Bool)

(declare-fun tp!977031 () Bool)

(assert (=> b!3115163 (= e!1945615 (and tp!977035 tp!977031))))

(declare-fun b!3115162 () Bool)

(declare-fun tp!977033 () Bool)

(assert (=> b!3115162 (= e!1945615 tp!977033)))

(assert (= (and b!3114551 ((_ is ElementMatch!9605) (reg!9934 r!17423))) b!3115160))

(assert (= (and b!3114551 ((_ is Concat!14926) (reg!9934 r!17423))) b!3115161))

(assert (= (and b!3114551 ((_ is Star!9605) (reg!9934 r!17423))) b!3115162))

(assert (= (and b!3114551 ((_ is Union!9605) (reg!9934 r!17423))) b!3115163))

(declare-fun b!3115164 () Bool)

(declare-fun e!1945616 () Bool)

(assert (=> b!3115164 (= e!1945616 tp_is_empty!16773)))

(assert (=> b!3114546 (= tp!976966 e!1945616)))

(declare-fun b!3115165 () Bool)

(declare-fun tp!977039 () Bool)

(declare-fun tp!977037 () Bool)

(assert (=> b!3115165 (= e!1945616 (and tp!977039 tp!977037))))

(declare-fun b!3115167 () Bool)

(declare-fun tp!977040 () Bool)

(declare-fun tp!977036 () Bool)

(assert (=> b!3115167 (= e!1945616 (and tp!977040 tp!977036))))

(declare-fun b!3115166 () Bool)

(declare-fun tp!977038 () Bool)

(assert (=> b!3115166 (= e!1945616 tp!977038)))

(assert (= (and b!3114546 ((_ is ElementMatch!9605) (regOne!19722 r!17423))) b!3115164))

(assert (= (and b!3114546 ((_ is Concat!14926) (regOne!19722 r!17423))) b!3115165))

(assert (= (and b!3114546 ((_ is Star!9605) (regOne!19722 r!17423))) b!3115166))

(assert (= (and b!3114546 ((_ is Union!9605) (regOne!19722 r!17423))) b!3115167))

(declare-fun b!3115168 () Bool)

(declare-fun e!1945617 () Bool)

(assert (=> b!3115168 (= e!1945617 tp_is_empty!16773)))

(assert (=> b!3114546 (= tp!976968 e!1945617)))

(declare-fun b!3115169 () Bool)

(declare-fun tp!977044 () Bool)

(declare-fun tp!977042 () Bool)

(assert (=> b!3115169 (= e!1945617 (and tp!977044 tp!977042))))

(declare-fun b!3115171 () Bool)

(declare-fun tp!977045 () Bool)

(declare-fun tp!977041 () Bool)

(assert (=> b!3115171 (= e!1945617 (and tp!977045 tp!977041))))

(declare-fun b!3115170 () Bool)

(declare-fun tp!977043 () Bool)

(assert (=> b!3115170 (= e!1945617 tp!977043)))

(assert (= (and b!3114546 ((_ is ElementMatch!9605) (regTwo!19722 r!17423))) b!3115168))

(assert (= (and b!3114546 ((_ is Concat!14926) (regTwo!19722 r!17423))) b!3115169))

(assert (= (and b!3114546 ((_ is Star!9605) (regTwo!19722 r!17423))) b!3115170))

(assert (= (and b!3114546 ((_ is Union!9605) (regTwo!19722 r!17423))) b!3115171))

(check-sat (not d!862068) (not bm!220971) (not b!3114889) (not b!3115153) tp_is_empty!16773 (not bm!220923) (not b!3114887) (not b!3115045) (not b!3115150) (not b!3115148) (not bm!220909) (not d!862060) (not b!3114978) (not b!3114888) (not b!3114793) (not b!3115165) (not b!3115163) (not bm!220892) (not bm!220942) (not b!3115161) (not bm!220945) (not bm!220941) (not bm!220970) (not b!3115152) (not bm!220963) (not bm!220964) (not b!3115162) (not b!3115110) (not b!3115166) (not b!3115170) (not b!3115046) (not bm!220962) (not b!3114785) (not b!3115167) (not bm!220977) (not bm!220969) (not bm!220940) (not bm!220967) (not b!3114891) (not bm!220973) (not bm!220925) (not b!3115171) (not b!3115159) (not d!862062) (not b!3115149) (not bm!220944) (not b!3115154) (not bm!220966) (not b!3115169) (not b!3114880) (not bm!220974) (not bm!220975) (not b!3115136) (not b!3114879) (not bm!220891))
(check-sat)
