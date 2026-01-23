; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!81472 () Bool)

(assert start!81472)

(declare-fun b!905872 () Bool)

(assert (=> b!905872 true))

(assert (=> b!905872 true))

(declare-fun lambda!28568 () Int)

(declare-fun lambda!28567 () Int)

(assert (=> b!905872 (not (= lambda!28568 lambda!28567))))

(assert (=> b!905872 true))

(assert (=> b!905872 true))

(declare-fun b!905870 () Bool)

(declare-fun e!591602 () Bool)

(declare-fun tp_is_empty!4435 () Bool)

(assert (=> b!905870 (= e!591602 tp_is_empty!4435)))

(declare-fun res!411910 () Bool)

(declare-fun e!591603 () Bool)

(assert (=> start!81472 (=> (not res!411910) (not e!591603))))

(declare-datatypes ((C!5362 0))(
  ( (C!5363 (val!2929 Int)) )
))
(declare-datatypes ((Regex!2396 0))(
  ( (ElementMatch!2396 (c!146741 C!5362)) (Concat!4229 (regOne!5304 Regex!2396) (regTwo!5304 Regex!2396)) (EmptyExpr!2396) (Star!2396 (reg!2725 Regex!2396)) (EmptyLang!2396) (Union!2396 (regOne!5305 Regex!2396) (regTwo!5305 Regex!2396)) )
))
(declare-fun r!15766 () Regex!2396)

(declare-fun validRegex!865 (Regex!2396) Bool)

(assert (=> start!81472 (= res!411910 (validRegex!865 r!15766))))

(assert (=> start!81472 e!591603))

(assert (=> start!81472 e!591602))

(declare-fun e!591604 () Bool)

(assert (=> start!81472 e!591604))

(declare-fun b!905871 () Bool)

(declare-fun tp!283692 () Bool)

(assert (=> b!905871 (= e!591604 (and tp_is_empty!4435 tp!283692))))

(declare-fun e!591605 () Bool)

(declare-fun e!591606 () Bool)

(assert (=> b!905872 (= e!591605 e!591606)))

(declare-fun res!411909 () Bool)

(assert (=> b!905872 (=> res!411909 e!591606)))

(declare-datatypes ((List!9626 0))(
  ( (Nil!9610) (Cons!9610 (h!15011 C!5362) (t!100672 List!9626)) )
))
(declare-fun s!10566 () List!9626)

(declare-fun isEmpty!5814 (List!9626) Bool)

(assert (=> b!905872 (= res!411909 (isEmpty!5814 s!10566))))

(declare-fun Exists!171 (Int) Bool)

(assert (=> b!905872 (= (Exists!171 lambda!28567) (Exists!171 lambda!28568))))

(declare-datatypes ((Unit!14411 0))(
  ( (Unit!14412) )
))
(declare-fun lt!335623 () Unit!14411)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!87 (Regex!2396 Regex!2396 List!9626) Unit!14411)

(assert (=> b!905872 (= lt!335623 (lemmaExistCutMatchRandMatchRSpecEquivalent!87 EmptyExpr!2396 (regTwo!5304 r!15766) s!10566))))

(declare-datatypes ((tuple2!10786 0))(
  ( (tuple2!10787 (_1!6219 List!9626) (_2!6219 List!9626)) )
))
(declare-datatypes ((Option!2035 0))(
  ( (None!2034) (Some!2034 (v!19451 tuple2!10786)) )
))
(declare-fun lt!335628 () Option!2035)

(declare-fun isDefined!1677 (Option!2035) Bool)

(assert (=> b!905872 (= (isDefined!1677 lt!335628) (Exists!171 lambda!28567))))

(declare-fun findConcatSeparation!141 (Regex!2396 Regex!2396 List!9626 List!9626 List!9626) Option!2035)

(assert (=> b!905872 (= lt!335628 (findConcatSeparation!141 EmptyExpr!2396 (regTwo!5304 r!15766) Nil!9610 s!10566 s!10566))))

(declare-fun lt!335625 () Unit!14411)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!141 (Regex!2396 Regex!2396 List!9626) Unit!14411)

(assert (=> b!905872 (= lt!335625 (lemmaFindConcatSeparationEquivalentToExists!141 EmptyExpr!2396 (regTwo!5304 r!15766) s!10566))))

(declare-fun b!905873 () Bool)

(declare-fun lt!335627 () Regex!2396)

(assert (=> b!905873 (= e!591606 (validRegex!865 lt!335627))))

(declare-fun matchR!934 (Regex!2396 List!9626) Bool)

(assert (=> b!905873 (= (matchR!934 (regTwo!5304 r!15766) s!10566) (matchR!934 lt!335627 s!10566))))

(declare-fun removeUselessConcat!95 (Regex!2396) Regex!2396)

(assert (=> b!905873 (= lt!335627 (removeUselessConcat!95 (regTwo!5304 r!15766)))))

(declare-fun lt!335624 () Unit!14411)

(declare-fun lemmaRemoveUselessConcatSound!83 (Regex!2396 List!9626) Unit!14411)

(assert (=> b!905873 (= lt!335624 (lemmaRemoveUselessConcatSound!83 (regTwo!5304 r!15766) s!10566))))

(declare-fun b!905874 () Bool)

(declare-fun tp!283693 () Bool)

(assert (=> b!905874 (= e!591602 tp!283693)))

(declare-fun b!905875 () Bool)

(assert (=> b!905875 (= e!591603 (not e!591605))))

(declare-fun res!411911 () Bool)

(assert (=> b!905875 (=> res!411911 e!591605)))

(declare-fun lt!335626 () Bool)

(assert (=> b!905875 (= res!411911 (or lt!335626 (not (is-Concat!4229 r!15766)) (not (is-EmptyExpr!2396 (regOne!5304 r!15766)))))))

(declare-fun matchRSpec!197 (Regex!2396 List!9626) Bool)

(assert (=> b!905875 (= lt!335626 (matchRSpec!197 r!15766 s!10566))))

(assert (=> b!905875 (= lt!335626 (matchR!934 r!15766 s!10566))))

(declare-fun lt!335622 () Unit!14411)

(declare-fun mainMatchTheorem!197 (Regex!2396 List!9626) Unit!14411)

(assert (=> b!905875 (= lt!335622 (mainMatchTheorem!197 r!15766 s!10566))))

(declare-fun b!905876 () Bool)

(declare-fun tp!283690 () Bool)

(declare-fun tp!283691 () Bool)

(assert (=> b!905876 (= e!591602 (and tp!283690 tp!283691))))

(declare-fun b!905877 () Bool)

(declare-fun res!411912 () Bool)

(assert (=> b!905877 (=> res!411912 e!591606)))

(declare-fun isEmpty!5815 (Option!2035) Bool)

(assert (=> b!905877 (= res!411912 (not (isEmpty!5815 lt!335628)))))

(declare-fun b!905878 () Bool)

(declare-fun tp!283689 () Bool)

(declare-fun tp!283694 () Bool)

(assert (=> b!905878 (= e!591602 (and tp!283689 tp!283694))))

(assert (= (and start!81472 res!411910) b!905875))

(assert (= (and b!905875 (not res!411911)) b!905872))

(assert (= (and b!905872 (not res!411909)) b!905877))

(assert (= (and b!905877 (not res!411912)) b!905873))

(assert (= (and start!81472 (is-ElementMatch!2396 r!15766)) b!905870))

(assert (= (and start!81472 (is-Concat!4229 r!15766)) b!905878))

(assert (= (and start!81472 (is-Star!2396 r!15766)) b!905874))

(assert (= (and start!81472 (is-Union!2396 r!15766)) b!905876))

(assert (= (and start!81472 (is-Cons!9610 s!10566)) b!905871))

(declare-fun m!1140933 () Bool)

(assert (=> b!905873 m!1140933))

(declare-fun m!1140935 () Bool)

(assert (=> b!905873 m!1140935))

(declare-fun m!1140937 () Bool)

(assert (=> b!905873 m!1140937))

(declare-fun m!1140939 () Bool)

(assert (=> b!905873 m!1140939))

(declare-fun m!1140941 () Bool)

(assert (=> b!905873 m!1140941))

(declare-fun m!1140943 () Bool)

(assert (=> start!81472 m!1140943))

(declare-fun m!1140945 () Bool)

(assert (=> b!905877 m!1140945))

(declare-fun m!1140947 () Bool)

(assert (=> b!905872 m!1140947))

(declare-fun m!1140949 () Bool)

(assert (=> b!905872 m!1140949))

(declare-fun m!1140951 () Bool)

(assert (=> b!905872 m!1140951))

(declare-fun m!1140953 () Bool)

(assert (=> b!905872 m!1140953))

(declare-fun m!1140955 () Bool)

(assert (=> b!905872 m!1140955))

(declare-fun m!1140957 () Bool)

(assert (=> b!905872 m!1140957))

(declare-fun m!1140959 () Bool)

(assert (=> b!905872 m!1140959))

(assert (=> b!905872 m!1140959))

(declare-fun m!1140961 () Bool)

(assert (=> b!905875 m!1140961))

(declare-fun m!1140963 () Bool)

(assert (=> b!905875 m!1140963))

(declare-fun m!1140965 () Bool)

(assert (=> b!905875 m!1140965))

(push 1)

(assert (not b!905872))

(assert (not b!905878))

(assert (not start!81472))

(assert (not b!905876))

(assert tp_is_empty!4435)

(assert (not b!905877))

(assert (not b!905875))

(assert (not b!905874))

(assert (not b!905871))

(assert (not b!905873))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!905944 () Bool)

(declare-fun res!411950 () Bool)

(declare-fun e!591648 () Bool)

(assert (=> b!905944 (=> (not res!411950) (not e!591648))))

(declare-fun call!54224 () Bool)

(assert (=> b!905944 (= res!411950 call!54224)))

(declare-fun e!591644 () Bool)

(assert (=> b!905944 (= e!591644 e!591648)))

(declare-fun b!905945 () Bool)

(declare-fun e!591646 () Bool)

(assert (=> b!905945 (= e!591646 e!591644)))

(declare-fun c!146748 () Bool)

(assert (=> b!905945 (= c!146748 (is-Union!2396 lt!335627))))

(declare-fun bm!54219 () Bool)

(declare-fun call!54225 () Bool)

(assert (=> bm!54219 (= call!54224 call!54225)))

(declare-fun b!905946 () Bool)

(declare-fun res!411948 () Bool)

(declare-fun e!591647 () Bool)

(assert (=> b!905946 (=> res!411948 e!591647)))

(assert (=> b!905946 (= res!411948 (not (is-Concat!4229 lt!335627)))))

(assert (=> b!905946 (= e!591644 e!591647)))

(declare-fun b!905947 () Bool)

(declare-fun call!54226 () Bool)

(assert (=> b!905947 (= e!591648 call!54226)))

(declare-fun b!905948 () Bool)

(declare-fun e!591643 () Bool)

(assert (=> b!905948 (= e!591647 e!591643)))

(declare-fun res!411947 () Bool)

(assert (=> b!905948 (=> (not res!411947) (not e!591643))))

(assert (=> b!905948 (= res!411947 call!54224)))

(declare-fun d!278806 () Bool)

(declare-fun res!411951 () Bool)

(declare-fun e!591645 () Bool)

(assert (=> d!278806 (=> res!411951 e!591645)))

(assert (=> d!278806 (= res!411951 (is-ElementMatch!2396 lt!335627))))

(assert (=> d!278806 (= (validRegex!865 lt!335627) e!591645)))

(declare-fun b!905949 () Bool)

(declare-fun e!591642 () Bool)

(assert (=> b!905949 (= e!591646 e!591642)))

(declare-fun res!411949 () Bool)

(declare-fun nullable!644 (Regex!2396) Bool)

(assert (=> b!905949 (= res!411949 (not (nullable!644 (reg!2725 lt!335627))))))

(assert (=> b!905949 (=> (not res!411949) (not e!591642))))

(declare-fun b!905950 () Bool)

(assert (=> b!905950 (= e!591642 call!54225)))

(declare-fun bm!54220 () Bool)

(declare-fun c!146747 () Bool)

(assert (=> bm!54220 (= call!54225 (validRegex!865 (ite c!146747 (reg!2725 lt!335627) (ite c!146748 (regOne!5305 lt!335627) (regOne!5304 lt!335627)))))))

(declare-fun bm!54221 () Bool)

(assert (=> bm!54221 (= call!54226 (validRegex!865 (ite c!146748 (regTwo!5305 lt!335627) (regTwo!5304 lt!335627))))))

(declare-fun b!905951 () Bool)

(assert (=> b!905951 (= e!591643 call!54226)))

(declare-fun b!905952 () Bool)

(assert (=> b!905952 (= e!591645 e!591646)))

(assert (=> b!905952 (= c!146747 (is-Star!2396 lt!335627))))

(assert (= (and d!278806 (not res!411951)) b!905952))

(assert (= (and b!905952 c!146747) b!905949))

(assert (= (and b!905952 (not c!146747)) b!905945))

(assert (= (and b!905949 res!411949) b!905950))

(assert (= (and b!905945 c!146748) b!905944))

(assert (= (and b!905945 (not c!146748)) b!905946))

(assert (= (and b!905944 res!411950) b!905947))

(assert (= (and b!905946 (not res!411948)) b!905948))

(assert (= (and b!905948 res!411947) b!905951))

(assert (= (or b!905947 b!905951) bm!54221))

(assert (= (or b!905944 b!905948) bm!54219))

(assert (= (or b!905950 bm!54219) bm!54220))

(declare-fun m!1141001 () Bool)

(assert (=> b!905949 m!1141001))

(declare-fun m!1141003 () Bool)

(assert (=> bm!54220 m!1141003))

(declare-fun m!1141005 () Bool)

(assert (=> bm!54221 m!1141005))

(assert (=> b!905873 d!278806))

(declare-fun d!278808 () Bool)

(assert (=> d!278808 (= (matchR!934 (regTwo!5304 r!15766) s!10566) (matchR!934 (removeUselessConcat!95 (regTwo!5304 r!15766)) s!10566))))

(declare-fun lt!335652 () Unit!14411)

(declare-fun choose!5479 (Regex!2396 List!9626) Unit!14411)

(assert (=> d!278808 (= lt!335652 (choose!5479 (regTwo!5304 r!15766) s!10566))))

(assert (=> d!278808 (validRegex!865 (regTwo!5304 r!15766))))

(assert (=> d!278808 (= (lemmaRemoveUselessConcatSound!83 (regTwo!5304 r!15766) s!10566) lt!335652)))

(declare-fun bs!235474 () Bool)

(assert (= bs!235474 d!278808))

(assert (=> bs!235474 m!1140937))

(declare-fun m!1141007 () Bool)

(assert (=> bs!235474 m!1141007))

(assert (=> bs!235474 m!1140935))

(declare-fun m!1141009 () Bool)

(assert (=> bs!235474 m!1141009))

(declare-fun m!1141011 () Bool)

(assert (=> bs!235474 m!1141011))

(assert (=> bs!235474 m!1140935))

(assert (=> b!905873 d!278808))

(declare-fun b!905981 () Bool)

(declare-fun e!591664 () Bool)

(declare-fun derivativeStep!455 (Regex!2396 C!5362) Regex!2396)

(declare-fun head!1608 (List!9626) C!5362)

(declare-fun tail!1170 (List!9626) List!9626)

(assert (=> b!905981 (= e!591664 (matchR!934 (derivativeStep!455 (regTwo!5304 r!15766) (head!1608 s!10566)) (tail!1170 s!10566)))))

(declare-fun b!905982 () Bool)

(declare-fun res!411975 () Bool)

(declare-fun e!591667 () Bool)

(assert (=> b!905982 (=> res!411975 e!591667)))

(declare-fun e!591666 () Bool)

(assert (=> b!905982 (= res!411975 e!591666)))

(declare-fun res!411969 () Bool)

(assert (=> b!905982 (=> (not res!411969) (not e!591666))))

(declare-fun lt!335655 () Bool)

(assert (=> b!905982 (= res!411969 lt!335655)))

(declare-fun b!905983 () Bool)

(declare-fun res!411973 () Bool)

(assert (=> b!905983 (=> (not res!411973) (not e!591666))))

(declare-fun call!54229 () Bool)

(assert (=> b!905983 (= res!411973 (not call!54229))))

(declare-fun bm!54224 () Bool)

(assert (=> bm!54224 (= call!54229 (isEmpty!5814 s!10566))))

(declare-fun b!905984 () Bool)

(declare-fun e!591663 () Bool)

(assert (=> b!905984 (= e!591667 e!591663)))

(declare-fun res!411968 () Bool)

(assert (=> b!905984 (=> (not res!411968) (not e!591663))))

(assert (=> b!905984 (= res!411968 (not lt!335655))))

(declare-fun b!905985 () Bool)

(declare-fun e!591668 () Bool)

(assert (=> b!905985 (= e!591668 (= lt!335655 call!54229))))

(declare-fun b!905986 () Bool)

(declare-fun e!591665 () Bool)

(assert (=> b!905986 (= e!591663 e!591665)))

(declare-fun res!411974 () Bool)

(assert (=> b!905986 (=> res!411974 e!591665)))

(assert (=> b!905986 (= res!411974 call!54229)))

(declare-fun d!278810 () Bool)

(assert (=> d!278810 e!591668))

(declare-fun c!146757 () Bool)

(assert (=> d!278810 (= c!146757 (is-EmptyExpr!2396 (regTwo!5304 r!15766)))))

(assert (=> d!278810 (= lt!335655 e!591664)))

(declare-fun c!146755 () Bool)

(assert (=> d!278810 (= c!146755 (isEmpty!5814 s!10566))))

(assert (=> d!278810 (validRegex!865 (regTwo!5304 r!15766))))

(assert (=> d!278810 (= (matchR!934 (regTwo!5304 r!15766) s!10566) lt!335655)))

(declare-fun b!905987 () Bool)

(declare-fun e!591669 () Bool)

(assert (=> b!905987 (= e!591668 e!591669)))

(declare-fun c!146756 () Bool)

(assert (=> b!905987 (= c!146756 (is-EmptyLang!2396 (regTwo!5304 r!15766)))))

(declare-fun b!905988 () Bool)

(declare-fun res!411971 () Bool)

(assert (=> b!905988 (=> res!411971 e!591665)))

(assert (=> b!905988 (= res!411971 (not (isEmpty!5814 (tail!1170 s!10566))))))

(declare-fun b!905989 () Bool)

(declare-fun res!411970 () Bool)

(assert (=> b!905989 (=> res!411970 e!591667)))

(assert (=> b!905989 (= res!411970 (not (is-ElementMatch!2396 (regTwo!5304 r!15766))))))

(assert (=> b!905989 (= e!591669 e!591667)))

(declare-fun b!905990 () Bool)

(declare-fun res!411972 () Bool)

(assert (=> b!905990 (=> (not res!411972) (not e!591666))))

(assert (=> b!905990 (= res!411972 (isEmpty!5814 (tail!1170 s!10566)))))

(declare-fun b!905991 () Bool)

(assert (=> b!905991 (= e!591665 (not (= (head!1608 s!10566) (c!146741 (regTwo!5304 r!15766)))))))

(declare-fun b!905992 () Bool)

(assert (=> b!905992 (= e!591664 (nullable!644 (regTwo!5304 r!15766)))))

(declare-fun b!905993 () Bool)

(assert (=> b!905993 (= e!591666 (= (head!1608 s!10566) (c!146741 (regTwo!5304 r!15766))))))

(declare-fun b!905994 () Bool)

(assert (=> b!905994 (= e!591669 (not lt!335655))))

(assert (= (and d!278810 c!146755) b!905992))

(assert (= (and d!278810 (not c!146755)) b!905981))

(assert (= (and d!278810 c!146757) b!905985))

(assert (= (and d!278810 (not c!146757)) b!905987))

(assert (= (and b!905987 c!146756) b!905994))

(assert (= (and b!905987 (not c!146756)) b!905989))

(assert (= (and b!905989 (not res!411970)) b!905982))

(assert (= (and b!905982 res!411969) b!905983))

(assert (= (and b!905983 res!411973) b!905990))

(assert (= (and b!905990 res!411972) b!905993))

(assert (= (and b!905982 (not res!411975)) b!905984))

(assert (= (and b!905984 res!411968) b!905986))

(assert (= (and b!905986 (not res!411974)) b!905988))

(assert (= (and b!905988 (not res!411971)) b!905991))

(assert (= (or b!905985 b!905983 b!905986) bm!54224))

(assert (=> d!278810 m!1140955))

(assert (=> d!278810 m!1141007))

(declare-fun m!1141015 () Bool)

(assert (=> b!905993 m!1141015))

(declare-fun m!1141017 () Bool)

(assert (=> b!905990 m!1141017))

(assert (=> b!905990 m!1141017))

(declare-fun m!1141019 () Bool)

(assert (=> b!905990 m!1141019))

(assert (=> b!905988 m!1141017))

(assert (=> b!905988 m!1141017))

(assert (=> b!905988 m!1141019))

(assert (=> b!905991 m!1141015))

(assert (=> bm!54224 m!1140955))

(assert (=> b!905981 m!1141015))

(assert (=> b!905981 m!1141015))

(declare-fun m!1141021 () Bool)

(assert (=> b!905981 m!1141021))

(assert (=> b!905981 m!1141017))

(assert (=> b!905981 m!1141021))

(assert (=> b!905981 m!1141017))

(declare-fun m!1141023 () Bool)

(assert (=> b!905981 m!1141023))

(declare-fun m!1141025 () Bool)

(assert (=> b!905992 m!1141025))

(assert (=> b!905873 d!278810))

(declare-fun b!906017 () Bool)

(declare-fun e!591684 () Regex!2396)

(declare-fun e!591686 () Regex!2396)

(assert (=> b!906017 (= e!591684 e!591686)))

(declare-fun c!146770 () Bool)

(assert (=> b!906017 (= c!146770 (is-Union!2396 (regTwo!5304 r!15766)))))

(declare-fun b!906018 () Bool)

(declare-fun c!146771 () Bool)

(assert (=> b!906018 (= c!146771 (is-Concat!4229 (regTwo!5304 r!15766)))))

(declare-fun e!591682 () Regex!2396)

(assert (=> b!906018 (= e!591682 e!591684)))

(declare-fun b!906019 () Bool)

(declare-fun call!54241 () Regex!2396)

(declare-fun call!54240 () Regex!2396)

(assert (=> b!906019 (= e!591686 (Union!2396 call!54241 call!54240))))

(declare-fun b!906020 () Bool)

(declare-fun e!591685 () Regex!2396)

(assert (=> b!906020 (= e!591685 e!591682)))

(declare-fun c!146769 () Bool)

(assert (=> b!906020 (= c!146769 (and (is-Concat!4229 (regTwo!5304 r!15766)) (is-EmptyExpr!2396 (regTwo!5304 (regTwo!5304 r!15766)))))))

(declare-fun d!278820 () Bool)

(declare-fun e!591687 () Bool)

(assert (=> d!278820 e!591687))

(declare-fun res!411978 () Bool)

(assert (=> d!278820 (=> (not res!411978) (not e!591687))))

(declare-fun lt!335658 () Regex!2396)

(assert (=> d!278820 (= res!411978 (validRegex!865 lt!335658))))

(assert (=> d!278820 (= lt!335658 e!591685)))

(declare-fun c!146772 () Bool)

(assert (=> d!278820 (= c!146772 (and (is-Concat!4229 (regTwo!5304 r!15766)) (is-EmptyExpr!2396 (regOne!5304 (regTwo!5304 r!15766)))))))

(assert (=> d!278820 (validRegex!865 (regTwo!5304 r!15766))))

(assert (=> d!278820 (= (removeUselessConcat!95 (regTwo!5304 r!15766)) lt!335658)))

(declare-fun b!906021 () Bool)

(declare-fun call!54242 () Regex!2396)

(assert (=> b!906021 (= e!591682 call!54242)))

(declare-fun b!906022 () Bool)

(declare-fun call!54243 () Regex!2396)

(assert (=> b!906022 (= e!591685 call!54243)))

(declare-fun b!906023 () Bool)

(declare-fun e!591683 () Regex!2396)

(assert (=> b!906023 (= e!591683 (regTwo!5304 r!15766))))

(declare-fun b!906024 () Bool)

(declare-fun call!54244 () Regex!2396)

(assert (=> b!906024 (= e!591684 (Concat!4229 call!54244 call!54241))))

(declare-fun bm!54235 () Bool)

(assert (=> bm!54235 (= call!54242 call!54243)))

(declare-fun bm!54236 () Bool)

(assert (=> bm!54236 (= call!54241 (removeUselessConcat!95 (ite c!146771 (regTwo!5304 (regTwo!5304 r!15766)) (regOne!5305 (regTwo!5304 r!15766)))))))

(declare-fun b!906025 () Bool)

(assert (=> b!906025 (= e!591683 (Star!2396 call!54240))))

(declare-fun bm!54237 () Bool)

(assert (=> bm!54237 (= call!54243 (removeUselessConcat!95 (ite c!146772 (regTwo!5304 (regTwo!5304 r!15766)) (ite (or c!146769 c!146771) (regOne!5304 (regTwo!5304 r!15766)) (ite c!146770 (regTwo!5305 (regTwo!5304 r!15766)) (reg!2725 (regTwo!5304 r!15766)))))))))

(declare-fun b!906026 () Bool)

(declare-fun c!146768 () Bool)

(assert (=> b!906026 (= c!146768 (is-Star!2396 (regTwo!5304 r!15766)))))

(assert (=> b!906026 (= e!591686 e!591683)))

(declare-fun bm!54238 () Bool)

(assert (=> bm!54238 (= call!54244 call!54242)))

(declare-fun b!906027 () Bool)

(assert (=> b!906027 (= e!591687 (= (nullable!644 lt!335658) (nullable!644 (regTwo!5304 r!15766))))))

(declare-fun bm!54239 () Bool)

(assert (=> bm!54239 (= call!54240 call!54244)))

(assert (= (and d!278820 c!146772) b!906022))

(assert (= (and d!278820 (not c!146772)) b!906020))

(assert (= (and b!906020 c!146769) b!906021))

(assert (= (and b!906020 (not c!146769)) b!906018))

(assert (= (and b!906018 c!146771) b!906024))

(assert (= (and b!906018 (not c!146771)) b!906017))

(assert (= (and b!906017 c!146770) b!906019))

(assert (= (and b!906017 (not c!146770)) b!906026))

(assert (= (and b!906026 c!146768) b!906025))

(assert (= (and b!906026 (not c!146768)) b!906023))

(assert (= (or b!906019 b!906025) bm!54239))

(assert (= (or b!906024 b!906019) bm!54236))

(assert (= (or b!906024 bm!54239) bm!54238))

(assert (= (or b!906021 bm!54238) bm!54235))

(assert (= (or b!906022 bm!54235) bm!54237))

(assert (= (and d!278820 res!411978) b!906027))

(declare-fun m!1141027 () Bool)

(assert (=> d!278820 m!1141027))

(assert (=> d!278820 m!1141007))

(declare-fun m!1141029 () Bool)

(assert (=> bm!54236 m!1141029))

(declare-fun m!1141031 () Bool)

(assert (=> bm!54237 m!1141031))

(declare-fun m!1141033 () Bool)

(assert (=> b!906027 m!1141033))

(assert (=> b!906027 m!1141025))

(assert (=> b!905873 d!278820))

(declare-fun b!906028 () Bool)

(declare-fun e!591689 () Bool)

(assert (=> b!906028 (= e!591689 (matchR!934 (derivativeStep!455 lt!335627 (head!1608 s!10566)) (tail!1170 s!10566)))))

(declare-fun b!906029 () Bool)

(declare-fun res!411986 () Bool)

(declare-fun e!591692 () Bool)

(assert (=> b!906029 (=> res!411986 e!591692)))

(declare-fun e!591691 () Bool)

(assert (=> b!906029 (= res!411986 e!591691)))

(declare-fun res!411980 () Bool)

(assert (=> b!906029 (=> (not res!411980) (not e!591691))))

(declare-fun lt!335659 () Bool)

(assert (=> b!906029 (= res!411980 lt!335659)))

(declare-fun b!906030 () Bool)

(declare-fun res!411984 () Bool)

(assert (=> b!906030 (=> (not res!411984) (not e!591691))))

(declare-fun call!54245 () Bool)

(assert (=> b!906030 (= res!411984 (not call!54245))))

(declare-fun bm!54240 () Bool)

(assert (=> bm!54240 (= call!54245 (isEmpty!5814 s!10566))))

(declare-fun b!906031 () Bool)

(declare-fun e!591688 () Bool)

(assert (=> b!906031 (= e!591692 e!591688)))

(declare-fun res!411979 () Bool)

(assert (=> b!906031 (=> (not res!411979) (not e!591688))))

(assert (=> b!906031 (= res!411979 (not lt!335659))))

(declare-fun b!906032 () Bool)

(declare-fun e!591693 () Bool)

(assert (=> b!906032 (= e!591693 (= lt!335659 call!54245))))

(declare-fun b!906033 () Bool)

(declare-fun e!591690 () Bool)

(assert (=> b!906033 (= e!591688 e!591690)))

(declare-fun res!411985 () Bool)

(assert (=> b!906033 (=> res!411985 e!591690)))

(assert (=> b!906033 (= res!411985 call!54245)))

(declare-fun d!278822 () Bool)

(assert (=> d!278822 e!591693))

(declare-fun c!146775 () Bool)

(assert (=> d!278822 (= c!146775 (is-EmptyExpr!2396 lt!335627))))

(assert (=> d!278822 (= lt!335659 e!591689)))

(declare-fun c!146773 () Bool)

(assert (=> d!278822 (= c!146773 (isEmpty!5814 s!10566))))

(assert (=> d!278822 (validRegex!865 lt!335627)))

(assert (=> d!278822 (= (matchR!934 lt!335627 s!10566) lt!335659)))

(declare-fun b!906034 () Bool)

(declare-fun e!591694 () Bool)

(assert (=> b!906034 (= e!591693 e!591694)))

(declare-fun c!146774 () Bool)

(assert (=> b!906034 (= c!146774 (is-EmptyLang!2396 lt!335627))))

(declare-fun b!906035 () Bool)

(declare-fun res!411982 () Bool)

(assert (=> b!906035 (=> res!411982 e!591690)))

(assert (=> b!906035 (= res!411982 (not (isEmpty!5814 (tail!1170 s!10566))))))

(declare-fun b!906036 () Bool)

(declare-fun res!411981 () Bool)

(assert (=> b!906036 (=> res!411981 e!591692)))

(assert (=> b!906036 (= res!411981 (not (is-ElementMatch!2396 lt!335627)))))

(assert (=> b!906036 (= e!591694 e!591692)))

(declare-fun b!906037 () Bool)

(declare-fun res!411983 () Bool)

(assert (=> b!906037 (=> (not res!411983) (not e!591691))))

(assert (=> b!906037 (= res!411983 (isEmpty!5814 (tail!1170 s!10566)))))

(declare-fun b!906038 () Bool)

(assert (=> b!906038 (= e!591690 (not (= (head!1608 s!10566) (c!146741 lt!335627))))))

(declare-fun b!906039 () Bool)

(assert (=> b!906039 (= e!591689 (nullable!644 lt!335627))))

(declare-fun b!906040 () Bool)

(assert (=> b!906040 (= e!591691 (= (head!1608 s!10566) (c!146741 lt!335627)))))

(declare-fun b!906041 () Bool)

(assert (=> b!906041 (= e!591694 (not lt!335659))))

(assert (= (and d!278822 c!146773) b!906039))

(assert (= (and d!278822 (not c!146773)) b!906028))

(assert (= (and d!278822 c!146775) b!906032))

(assert (= (and d!278822 (not c!146775)) b!906034))

(assert (= (and b!906034 c!146774) b!906041))

(assert (= (and b!906034 (not c!146774)) b!906036))

(assert (= (and b!906036 (not res!411981)) b!906029))

(assert (= (and b!906029 res!411980) b!906030))

(assert (= (and b!906030 res!411984) b!906037))

(assert (= (and b!906037 res!411983) b!906040))

(assert (= (and b!906029 (not res!411986)) b!906031))

(assert (= (and b!906031 res!411979) b!906033))

(assert (= (and b!906033 (not res!411985)) b!906035))

(assert (= (and b!906035 (not res!411982)) b!906038))

(assert (= (or b!906032 b!906030 b!906033) bm!54240))

(assert (=> d!278822 m!1140955))

(assert (=> d!278822 m!1140933))

(assert (=> b!906040 m!1141015))

(assert (=> b!906037 m!1141017))

(assert (=> b!906037 m!1141017))

(assert (=> b!906037 m!1141019))

(assert (=> b!906035 m!1141017))

(assert (=> b!906035 m!1141017))

(assert (=> b!906035 m!1141019))

(assert (=> b!906038 m!1141015))

(assert (=> bm!54240 m!1140955))

(assert (=> b!906028 m!1141015))

(assert (=> b!906028 m!1141015))

(declare-fun m!1141035 () Bool)

(assert (=> b!906028 m!1141035))

(assert (=> b!906028 m!1141017))

(assert (=> b!906028 m!1141035))

(assert (=> b!906028 m!1141017))

(declare-fun m!1141037 () Bool)

(assert (=> b!906028 m!1141037))

(declare-fun m!1141039 () Bool)

(assert (=> b!906039 m!1141039))

(assert (=> b!905873 d!278822))

(declare-fun d!278824 () Bool)

(assert (=> d!278824 (= (isEmpty!5815 lt!335628) (not (is-Some!2034 lt!335628)))))

(assert (=> b!905877 d!278824))

(declare-fun b!906042 () Bool)

(declare-fun res!411990 () Bool)

(declare-fun e!591701 () Bool)

(assert (=> b!906042 (=> (not res!411990) (not e!591701))))

(declare-fun call!54246 () Bool)

(assert (=> b!906042 (= res!411990 call!54246)))

(declare-fun e!591697 () Bool)

(assert (=> b!906042 (= e!591697 e!591701)))

(declare-fun b!906043 () Bool)

(declare-fun e!591699 () Bool)

(assert (=> b!906043 (= e!591699 e!591697)))

(declare-fun c!146777 () Bool)

(assert (=> b!906043 (= c!146777 (is-Union!2396 r!15766))))

(declare-fun bm!54241 () Bool)

(declare-fun call!54247 () Bool)

(assert (=> bm!54241 (= call!54246 call!54247)))

(declare-fun b!906044 () Bool)

(declare-fun res!411988 () Bool)

(declare-fun e!591700 () Bool)

(assert (=> b!906044 (=> res!411988 e!591700)))

(assert (=> b!906044 (= res!411988 (not (is-Concat!4229 r!15766)))))

(assert (=> b!906044 (= e!591697 e!591700)))

(declare-fun b!906045 () Bool)

(declare-fun call!54248 () Bool)

(assert (=> b!906045 (= e!591701 call!54248)))

(declare-fun b!906046 () Bool)

(declare-fun e!591696 () Bool)

(assert (=> b!906046 (= e!591700 e!591696)))

(declare-fun res!411987 () Bool)

(assert (=> b!906046 (=> (not res!411987) (not e!591696))))

(assert (=> b!906046 (= res!411987 call!54246)))

(declare-fun d!278826 () Bool)

(declare-fun res!411991 () Bool)

(declare-fun e!591698 () Bool)

(assert (=> d!278826 (=> res!411991 e!591698)))

(assert (=> d!278826 (= res!411991 (is-ElementMatch!2396 r!15766))))

(assert (=> d!278826 (= (validRegex!865 r!15766) e!591698)))

(declare-fun b!906047 () Bool)

(declare-fun e!591695 () Bool)

(assert (=> b!906047 (= e!591699 e!591695)))

(declare-fun res!411989 () Bool)

(assert (=> b!906047 (= res!411989 (not (nullable!644 (reg!2725 r!15766))))))

(assert (=> b!906047 (=> (not res!411989) (not e!591695))))

(declare-fun b!906048 () Bool)

(assert (=> b!906048 (= e!591695 call!54247)))

(declare-fun bm!54242 () Bool)

(declare-fun c!146776 () Bool)

(assert (=> bm!54242 (= call!54247 (validRegex!865 (ite c!146776 (reg!2725 r!15766) (ite c!146777 (regOne!5305 r!15766) (regOne!5304 r!15766)))))))

(declare-fun bm!54243 () Bool)

(assert (=> bm!54243 (= call!54248 (validRegex!865 (ite c!146777 (regTwo!5305 r!15766) (regTwo!5304 r!15766))))))

(declare-fun b!906049 () Bool)

(assert (=> b!906049 (= e!591696 call!54248)))

(declare-fun b!906050 () Bool)

(assert (=> b!906050 (= e!591698 e!591699)))

(assert (=> b!906050 (= c!146776 (is-Star!2396 r!15766))))

(assert (= (and d!278826 (not res!411991)) b!906050))

(assert (= (and b!906050 c!146776) b!906047))

(assert (= (and b!906050 (not c!146776)) b!906043))

(assert (= (and b!906047 res!411989) b!906048))

(assert (= (and b!906043 c!146777) b!906042))

(assert (= (and b!906043 (not c!146777)) b!906044))

(assert (= (and b!906042 res!411990) b!906045))

(assert (= (and b!906044 (not res!411988)) b!906046))

(assert (= (and b!906046 res!411987) b!906049))

(assert (= (or b!906045 b!906049) bm!54243))

(assert (= (or b!906042 b!906046) bm!54241))

(assert (= (or b!906048 bm!54241) bm!54242))

(declare-fun m!1141041 () Bool)

(assert (=> b!906047 m!1141041))

(declare-fun m!1141043 () Bool)

(assert (=> bm!54242 m!1141043))

(declare-fun m!1141045 () Bool)

(assert (=> bm!54243 m!1141045))

(assert (=> start!81472 d!278826))

(declare-fun d!278828 () Bool)

(declare-fun choose!5480 (Int) Bool)

(assert (=> d!278828 (= (Exists!171 lambda!28568) (choose!5480 lambda!28568))))

(declare-fun bs!235477 () Bool)

(assert (= bs!235477 d!278828))

(declare-fun m!1141047 () Bool)

(assert (=> bs!235477 m!1141047))

(assert (=> b!905872 d!278828))

(declare-fun d!278830 () Bool)

(assert (=> d!278830 (= (isEmpty!5814 s!10566) (is-Nil!9610 s!10566))))

(assert (=> b!905872 d!278830))

(declare-fun b!906083 () Bool)

(declare-fun e!591722 () Bool)

(declare-fun lt!335673 () Option!2035)

(assert (=> b!906083 (= e!591722 (not (isDefined!1677 lt!335673)))))

(declare-fun b!906084 () Bool)

(declare-fun e!591723 () Bool)

(assert (=> b!906084 (= e!591723 (matchR!934 (regTwo!5304 r!15766) s!10566))))

(declare-fun d!278832 () Bool)

(assert (=> d!278832 e!591722))

(declare-fun res!412014 () Bool)

(assert (=> d!278832 (=> res!412014 e!591722)))

(declare-fun e!591726 () Bool)

(assert (=> d!278832 (= res!412014 e!591726)))

(declare-fun res!412015 () Bool)

(assert (=> d!278832 (=> (not res!412015) (not e!591726))))

(assert (=> d!278832 (= res!412015 (isDefined!1677 lt!335673))))

(declare-fun e!591725 () Option!2035)

(assert (=> d!278832 (= lt!335673 e!591725)))

(declare-fun c!146787 () Bool)

(assert (=> d!278832 (= c!146787 e!591723)))

(declare-fun res!412010 () Bool)

(assert (=> d!278832 (=> (not res!412010) (not e!591723))))

(assert (=> d!278832 (= res!412010 (matchR!934 EmptyExpr!2396 Nil!9610))))

(assert (=> d!278832 (validRegex!865 EmptyExpr!2396)))

(assert (=> d!278832 (= (findConcatSeparation!141 EmptyExpr!2396 (regTwo!5304 r!15766) Nil!9610 s!10566 s!10566) lt!335673)))

(declare-fun b!906085 () Bool)

(declare-fun res!412013 () Bool)

(assert (=> b!906085 (=> (not res!412013) (not e!591726))))

(declare-fun get!3079 (Option!2035) tuple2!10786)

(assert (=> b!906085 (= res!412013 (matchR!934 EmptyExpr!2396 (_1!6219 (get!3079 lt!335673))))))

(declare-fun b!906086 () Bool)

(declare-fun lt!335674 () Unit!14411)

(declare-fun lt!335672 () Unit!14411)

(assert (=> b!906086 (= lt!335674 lt!335672)))

(declare-fun ++!2521 (List!9626 List!9626) List!9626)

(assert (=> b!906086 (= (++!2521 (++!2521 Nil!9610 (Cons!9610 (h!15011 s!10566) Nil!9610)) (t!100672 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!140 (List!9626 C!5362 List!9626 List!9626) Unit!14411)

(assert (=> b!906086 (= lt!335672 (lemmaMoveElementToOtherListKeepsConcatEq!140 Nil!9610 (h!15011 s!10566) (t!100672 s!10566) s!10566))))

(declare-fun e!591724 () Option!2035)

(assert (=> b!906086 (= e!591724 (findConcatSeparation!141 EmptyExpr!2396 (regTwo!5304 r!15766) (++!2521 Nil!9610 (Cons!9610 (h!15011 s!10566) Nil!9610)) (t!100672 s!10566) s!10566))))

(declare-fun b!906087 () Bool)

(assert (=> b!906087 (= e!591725 (Some!2034 (tuple2!10787 Nil!9610 s!10566)))))

(declare-fun b!906088 () Bool)

(assert (=> b!906088 (= e!591724 None!2034)))

(declare-fun b!906089 () Bool)

(assert (=> b!906089 (= e!591726 (= (++!2521 (_1!6219 (get!3079 lt!335673)) (_2!6219 (get!3079 lt!335673))) s!10566))))

(declare-fun b!906090 () Bool)

(assert (=> b!906090 (= e!591725 e!591724)))

(declare-fun c!146786 () Bool)

(assert (=> b!906090 (= c!146786 (is-Nil!9610 s!10566))))

(declare-fun b!906091 () Bool)

(declare-fun res!412016 () Bool)

(assert (=> b!906091 (=> (not res!412016) (not e!591726))))

(assert (=> b!906091 (= res!412016 (matchR!934 (regTwo!5304 r!15766) (_2!6219 (get!3079 lt!335673))))))

(assert (= (and d!278832 res!412010) b!906084))

(assert (= (and d!278832 c!146787) b!906087))

(assert (= (and d!278832 (not c!146787)) b!906090))

(assert (= (and b!906090 c!146786) b!906088))

(assert (= (and b!906090 (not c!146786)) b!906086))

(assert (= (and d!278832 res!412015) b!906085))

(assert (= (and b!906085 res!412013) b!906091))

(assert (= (and b!906091 res!412016) b!906089))

(assert (= (and d!278832 (not res!412014)) b!906083))

(declare-fun m!1141049 () Bool)

(assert (=> b!906091 m!1141049))

(declare-fun m!1141051 () Bool)

(assert (=> b!906091 m!1141051))

(assert (=> b!906089 m!1141049))

(declare-fun m!1141053 () Bool)

(assert (=> b!906089 m!1141053))

(declare-fun m!1141055 () Bool)

(assert (=> d!278832 m!1141055))

(declare-fun m!1141057 () Bool)

(assert (=> d!278832 m!1141057))

(declare-fun m!1141059 () Bool)

(assert (=> d!278832 m!1141059))

(assert (=> b!906084 m!1140937))

(assert (=> b!906083 m!1141055))

(declare-fun m!1141061 () Bool)

(assert (=> b!906086 m!1141061))

(assert (=> b!906086 m!1141061))

(declare-fun m!1141063 () Bool)

(assert (=> b!906086 m!1141063))

(declare-fun m!1141065 () Bool)

(assert (=> b!906086 m!1141065))

(assert (=> b!906086 m!1141061))

(declare-fun m!1141067 () Bool)

(assert (=> b!906086 m!1141067))

(assert (=> b!906085 m!1141049))

(declare-fun m!1141069 () Bool)

(assert (=> b!906085 m!1141069))

(assert (=> b!905872 d!278832))

(declare-fun d!278834 () Bool)

(assert (=> d!278834 (= (Exists!171 lambda!28567) (choose!5480 lambda!28567))))

(declare-fun bs!235478 () Bool)

(assert (= bs!235478 d!278834))

(declare-fun m!1141071 () Bool)

(assert (=> bs!235478 m!1141071))

(assert (=> b!905872 d!278834))

(declare-fun bs!235479 () Bool)

(declare-fun d!278836 () Bool)

(assert (= bs!235479 (and d!278836 b!905872)))

(declare-fun lambda!28579 () Int)

(assert (=> bs!235479 (= lambda!28579 lambda!28567)))

(assert (=> bs!235479 (not (= lambda!28579 lambda!28568))))

(assert (=> d!278836 true))

(assert (=> d!278836 true))

(assert (=> d!278836 true))

(assert (=> d!278836 (= (isDefined!1677 (findConcatSeparation!141 EmptyExpr!2396 (regTwo!5304 r!15766) Nil!9610 s!10566 s!10566)) (Exists!171 lambda!28579))))

(declare-fun lt!335677 () Unit!14411)

(declare-fun choose!5481 (Regex!2396 Regex!2396 List!9626) Unit!14411)

(assert (=> d!278836 (= lt!335677 (choose!5481 EmptyExpr!2396 (regTwo!5304 r!15766) s!10566))))

(assert (=> d!278836 (validRegex!865 EmptyExpr!2396)))

(assert (=> d!278836 (= (lemmaFindConcatSeparationEquivalentToExists!141 EmptyExpr!2396 (regTwo!5304 r!15766) s!10566) lt!335677)))

(declare-fun bs!235480 () Bool)

(assert (= bs!235480 d!278836))

(assert (=> bs!235480 m!1140957))

(declare-fun m!1141073 () Bool)

(assert (=> bs!235480 m!1141073))

(assert (=> bs!235480 m!1141059))

(assert (=> bs!235480 m!1140957))

(declare-fun m!1141075 () Bool)

(assert (=> bs!235480 m!1141075))

(declare-fun m!1141077 () Bool)

(assert (=> bs!235480 m!1141077))

(assert (=> b!905872 d!278836))

(declare-fun bs!235481 () Bool)

(declare-fun d!278838 () Bool)

(assert (= bs!235481 (and d!278838 b!905872)))

(declare-fun lambda!28584 () Int)

(assert (=> bs!235481 (= lambda!28584 lambda!28567)))

(assert (=> bs!235481 (not (= lambda!28584 lambda!28568))))

(declare-fun bs!235482 () Bool)

(assert (= bs!235482 (and d!278838 d!278836)))

(assert (=> bs!235482 (= lambda!28584 lambda!28579)))

(assert (=> d!278838 true))

(assert (=> d!278838 true))

(assert (=> d!278838 true))

(declare-fun lambda!28585 () Int)

(assert (=> bs!235481 (not (= lambda!28585 lambda!28567))))

(assert (=> bs!235481 (= lambda!28585 lambda!28568)))

(assert (=> bs!235482 (not (= lambda!28585 lambda!28579))))

(declare-fun bs!235483 () Bool)

(assert (= bs!235483 d!278838))

(assert (=> bs!235483 (not (= lambda!28585 lambda!28584))))

(assert (=> d!278838 true))

(assert (=> d!278838 true))

(assert (=> d!278838 true))

(assert (=> d!278838 (= (Exists!171 lambda!28584) (Exists!171 lambda!28585))))

(declare-fun lt!335683 () Unit!14411)

(declare-fun choose!5482 (Regex!2396 Regex!2396 List!9626) Unit!14411)

(assert (=> d!278838 (= lt!335683 (choose!5482 EmptyExpr!2396 (regTwo!5304 r!15766) s!10566))))

(assert (=> d!278838 (validRegex!865 EmptyExpr!2396)))

(assert (=> d!278838 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!87 EmptyExpr!2396 (regTwo!5304 r!15766) s!10566) lt!335683)))

(declare-fun m!1141101 () Bool)

(assert (=> bs!235483 m!1141101))

(declare-fun m!1141103 () Bool)

(assert (=> bs!235483 m!1141103))

(declare-fun m!1141105 () Bool)

(assert (=> bs!235483 m!1141105))

(assert (=> bs!235483 m!1141059))

(assert (=> b!905872 d!278838))

(declare-fun d!278842 () Bool)

(assert (=> d!278842 (= (isDefined!1677 lt!335628) (not (isEmpty!5815 lt!335628)))))

(declare-fun bs!235484 () Bool)

(assert (= bs!235484 d!278842))

(assert (=> bs!235484 m!1140945))

(assert (=> b!905872 d!278842))

(declare-fun bs!235485 () Bool)

(declare-fun b!906163 () Bool)

(assert (= bs!235485 (and b!906163 b!905872)))

(declare-fun lambda!28594 () Int)

(assert (=> bs!235485 (not (= lambda!28594 lambda!28568))))

(declare-fun bs!235486 () Bool)

(assert (= bs!235486 (and b!906163 d!278838)))

(assert (=> bs!235486 (not (= lambda!28594 lambda!28585))))

(declare-fun bs!235487 () Bool)

(assert (= bs!235487 (and b!906163 d!278836)))

(assert (=> bs!235487 (not (= lambda!28594 lambda!28579))))

(assert (=> bs!235485 (not (= lambda!28594 lambda!28567))))

(assert (=> bs!235486 (not (= lambda!28594 lambda!28584))))

(assert (=> b!906163 true))

(assert (=> b!906163 true))

(declare-fun bs!235488 () Bool)

(declare-fun b!906159 () Bool)

(assert (= bs!235488 (and b!906159 b!905872)))

(declare-fun lambda!28595 () Int)

(assert (=> bs!235488 (= (= (regOne!5304 r!15766) EmptyExpr!2396) (= lambda!28595 lambda!28568))))

(declare-fun bs!235489 () Bool)

(assert (= bs!235489 (and b!906159 d!278838)))

(assert (=> bs!235489 (= (= (regOne!5304 r!15766) EmptyExpr!2396) (= lambda!28595 lambda!28585))))

(declare-fun bs!235490 () Bool)

(assert (= bs!235490 (and b!906159 d!278836)))

(assert (=> bs!235490 (not (= lambda!28595 lambda!28579))))

(declare-fun bs!235491 () Bool)

(assert (= bs!235491 (and b!906159 b!906163)))

(assert (=> bs!235491 (not (= lambda!28595 lambda!28594))))

(assert (=> bs!235488 (not (= lambda!28595 lambda!28567))))

(assert (=> bs!235489 (not (= lambda!28595 lambda!28584))))

(assert (=> b!906159 true))

(assert (=> b!906159 true))

(declare-fun b!906157 () Bool)

(declare-fun e!591763 () Bool)

(declare-fun e!591762 () Bool)

(assert (=> b!906157 (= e!591763 e!591762)))

(declare-fun res!412059 () Bool)

(assert (=> b!906157 (= res!412059 (not (is-EmptyLang!2396 r!15766)))))

(assert (=> b!906157 (=> (not res!412059) (not e!591762))))

(declare-fun d!278844 () Bool)

(declare-fun c!146799 () Bool)

(assert (=> d!278844 (= c!146799 (is-EmptyExpr!2396 r!15766))))

(assert (=> d!278844 (= (matchRSpec!197 r!15766 s!10566) e!591763)))

(declare-fun b!906158 () Bool)

(declare-fun res!412058 () Bool)

(declare-fun e!591765 () Bool)

(assert (=> b!906158 (=> res!412058 e!591765)))

(declare-fun call!54254 () Bool)

(assert (=> b!906158 (= res!412058 call!54254)))

(declare-fun e!591760 () Bool)

(assert (=> b!906158 (= e!591760 e!591765)))

(declare-fun c!146798 () Bool)

(declare-fun bm!54248 () Bool)

(declare-fun call!54253 () Bool)

(assert (=> bm!54248 (= call!54253 (Exists!171 (ite c!146798 lambda!28594 lambda!28595)))))

(assert (=> b!906159 (= e!591760 call!54253)))

(declare-fun b!906160 () Bool)

(declare-fun c!146800 () Bool)

(assert (=> b!906160 (= c!146800 (is-ElementMatch!2396 r!15766))))

(declare-fun e!591766 () Bool)

(assert (=> b!906160 (= e!591762 e!591766)))

(declare-fun b!906161 () Bool)

(declare-fun e!591761 () Bool)

(assert (=> b!906161 (= e!591761 e!591760)))

(assert (=> b!906161 (= c!146798 (is-Star!2396 r!15766))))

(declare-fun b!906162 () Bool)

(declare-fun c!146801 () Bool)

(assert (=> b!906162 (= c!146801 (is-Union!2396 r!15766))))

(assert (=> b!906162 (= e!591766 e!591761)))

(assert (=> b!906163 (= e!591765 call!54253)))

(declare-fun b!906164 () Bool)

(assert (=> b!906164 (= e!591763 call!54254)))

(declare-fun bm!54249 () Bool)

(assert (=> bm!54249 (= call!54254 (isEmpty!5814 s!10566))))

(declare-fun b!906165 () Bool)

(declare-fun e!591764 () Bool)

(assert (=> b!906165 (= e!591761 e!591764)))

(declare-fun res!412060 () Bool)

(assert (=> b!906165 (= res!412060 (matchRSpec!197 (regOne!5305 r!15766) s!10566))))

(assert (=> b!906165 (=> res!412060 e!591764)))

(declare-fun b!906166 () Bool)

(assert (=> b!906166 (= e!591764 (matchRSpec!197 (regTwo!5305 r!15766) s!10566))))

(declare-fun b!906167 () Bool)

(assert (=> b!906167 (= e!591766 (= s!10566 (Cons!9610 (c!146741 r!15766) Nil!9610)))))

(assert (= (and d!278844 c!146799) b!906164))

(assert (= (and d!278844 (not c!146799)) b!906157))

(assert (= (and b!906157 res!412059) b!906160))

(assert (= (and b!906160 c!146800) b!906167))

(assert (= (and b!906160 (not c!146800)) b!906162))

(assert (= (and b!906162 c!146801) b!906165))

(assert (= (and b!906162 (not c!146801)) b!906161))

(assert (= (and b!906165 (not res!412060)) b!906166))

(assert (= (and b!906161 c!146798) b!906158))

(assert (= (and b!906161 (not c!146798)) b!906159))

(assert (= (and b!906158 (not res!412058)) b!906163))

(assert (= (or b!906163 b!906159) bm!54248))

(assert (= (or b!906164 b!906158) bm!54249))

(declare-fun m!1141107 () Bool)

(assert (=> bm!54248 m!1141107))

(assert (=> bm!54249 m!1140955))

(declare-fun m!1141109 () Bool)

(assert (=> b!906165 m!1141109))

(declare-fun m!1141111 () Bool)

(assert (=> b!906166 m!1141111))

(assert (=> b!905875 d!278844))

(declare-fun b!906168 () Bool)

(declare-fun e!591768 () Bool)

(assert (=> b!906168 (= e!591768 (matchR!934 (derivativeStep!455 r!15766 (head!1608 s!10566)) (tail!1170 s!10566)))))

(declare-fun b!906169 () Bool)

(declare-fun res!412068 () Bool)

(declare-fun e!591771 () Bool)

(assert (=> b!906169 (=> res!412068 e!591771)))

(declare-fun e!591770 () Bool)

(assert (=> b!906169 (= res!412068 e!591770)))

(declare-fun res!412062 () Bool)

(assert (=> b!906169 (=> (not res!412062) (not e!591770))))

(declare-fun lt!335687 () Bool)

(assert (=> b!906169 (= res!412062 lt!335687)))

(declare-fun b!906170 () Bool)

(declare-fun res!412066 () Bool)

(assert (=> b!906170 (=> (not res!412066) (not e!591770))))

(declare-fun call!54255 () Bool)

(assert (=> b!906170 (= res!412066 (not call!54255))))

(declare-fun bm!54250 () Bool)

(assert (=> bm!54250 (= call!54255 (isEmpty!5814 s!10566))))

(declare-fun b!906171 () Bool)

(declare-fun e!591767 () Bool)

(assert (=> b!906171 (= e!591771 e!591767)))

(declare-fun res!412061 () Bool)

(assert (=> b!906171 (=> (not res!412061) (not e!591767))))

(assert (=> b!906171 (= res!412061 (not lt!335687))))

(declare-fun b!906172 () Bool)

(declare-fun e!591772 () Bool)

(assert (=> b!906172 (= e!591772 (= lt!335687 call!54255))))

(declare-fun b!906173 () Bool)

(declare-fun e!591769 () Bool)

(assert (=> b!906173 (= e!591767 e!591769)))

(declare-fun res!412067 () Bool)

(assert (=> b!906173 (=> res!412067 e!591769)))

(assert (=> b!906173 (= res!412067 call!54255)))

(declare-fun d!278846 () Bool)

(assert (=> d!278846 e!591772))

(declare-fun c!146804 () Bool)

(assert (=> d!278846 (= c!146804 (is-EmptyExpr!2396 r!15766))))

(assert (=> d!278846 (= lt!335687 e!591768)))

(declare-fun c!146802 () Bool)

(assert (=> d!278846 (= c!146802 (isEmpty!5814 s!10566))))

(assert (=> d!278846 (validRegex!865 r!15766)))

(assert (=> d!278846 (= (matchR!934 r!15766 s!10566) lt!335687)))

(declare-fun b!906174 () Bool)

(declare-fun e!591773 () Bool)

(assert (=> b!906174 (= e!591772 e!591773)))

(declare-fun c!146803 () Bool)

(assert (=> b!906174 (= c!146803 (is-EmptyLang!2396 r!15766))))

(declare-fun b!906175 () Bool)

(declare-fun res!412064 () Bool)

(assert (=> b!906175 (=> res!412064 e!591769)))

(assert (=> b!906175 (= res!412064 (not (isEmpty!5814 (tail!1170 s!10566))))))

(declare-fun b!906176 () Bool)

(declare-fun res!412063 () Bool)

(assert (=> b!906176 (=> res!412063 e!591771)))

(assert (=> b!906176 (= res!412063 (not (is-ElementMatch!2396 r!15766)))))

(assert (=> b!906176 (= e!591773 e!591771)))

(declare-fun b!906177 () Bool)

(declare-fun res!412065 () Bool)

(assert (=> b!906177 (=> (not res!412065) (not e!591770))))

(assert (=> b!906177 (= res!412065 (isEmpty!5814 (tail!1170 s!10566)))))

(declare-fun b!906178 () Bool)

(assert (=> b!906178 (= e!591769 (not (= (head!1608 s!10566) (c!146741 r!15766))))))

(declare-fun b!906179 () Bool)

(assert (=> b!906179 (= e!591768 (nullable!644 r!15766))))

(declare-fun b!906180 () Bool)

(assert (=> b!906180 (= e!591770 (= (head!1608 s!10566) (c!146741 r!15766)))))

(declare-fun b!906181 () Bool)

(assert (=> b!906181 (= e!591773 (not lt!335687))))

(assert (= (and d!278846 c!146802) b!906179))

(assert (= (and d!278846 (not c!146802)) b!906168))

(assert (= (and d!278846 c!146804) b!906172))

(assert (= (and d!278846 (not c!146804)) b!906174))

(assert (= (and b!906174 c!146803) b!906181))

(assert (= (and b!906174 (not c!146803)) b!906176))

(assert (= (and b!906176 (not res!412063)) b!906169))

(assert (= (and b!906169 res!412062) b!906170))

(assert (= (and b!906170 res!412066) b!906177))

(assert (= (and b!906177 res!412065) b!906180))

(assert (= (and b!906169 (not res!412068)) b!906171))

(assert (= (and b!906171 res!412061) b!906173))

(assert (= (and b!906173 (not res!412067)) b!906175))

(assert (= (and b!906175 (not res!412064)) b!906178))

(assert (= (or b!906172 b!906170 b!906173) bm!54250))

(assert (=> d!278846 m!1140955))

(assert (=> d!278846 m!1140943))

(assert (=> b!906180 m!1141015))

(assert (=> b!906177 m!1141017))

(assert (=> b!906177 m!1141017))

(assert (=> b!906177 m!1141019))

(assert (=> b!906175 m!1141017))

(assert (=> b!906175 m!1141017))

(assert (=> b!906175 m!1141019))

(assert (=> b!906178 m!1141015))

(assert (=> bm!54250 m!1140955))

(assert (=> b!906168 m!1141015))

(assert (=> b!906168 m!1141015))

(declare-fun m!1141113 () Bool)

(assert (=> b!906168 m!1141113))

(assert (=> b!906168 m!1141017))

(assert (=> b!906168 m!1141113))

(assert (=> b!906168 m!1141017))

(declare-fun m!1141115 () Bool)

(assert (=> b!906168 m!1141115))

(declare-fun m!1141117 () Bool)

(assert (=> b!906179 m!1141117))

(assert (=> b!905875 d!278846))

(declare-fun d!278848 () Bool)

(assert (=> d!278848 (= (matchR!934 r!15766 s!10566) (matchRSpec!197 r!15766 s!10566))))

(declare-fun lt!335690 () Unit!14411)

(declare-fun choose!5483 (Regex!2396 List!9626) Unit!14411)

(assert (=> d!278848 (= lt!335690 (choose!5483 r!15766 s!10566))))

(assert (=> d!278848 (validRegex!865 r!15766)))

(assert (=> d!278848 (= (mainMatchTheorem!197 r!15766 s!10566) lt!335690)))

(declare-fun bs!235494 () Bool)

(assert (= bs!235494 d!278848))

(assert (=> bs!235494 m!1140963))

(assert (=> bs!235494 m!1140961))

(declare-fun m!1141125 () Bool)

(assert (=> bs!235494 m!1141125))

(assert (=> bs!235494 m!1140943))

(assert (=> b!905875 d!278848))

(declare-fun b!906193 () Bool)

(declare-fun e!591776 () Bool)

(declare-fun tp!283724 () Bool)

(declare-fun tp!283727 () Bool)

(assert (=> b!906193 (= e!591776 (and tp!283724 tp!283727))))

(assert (=> b!905878 (= tp!283689 e!591776)))

(declare-fun b!906192 () Bool)

(assert (=> b!906192 (= e!591776 tp_is_empty!4435)))

(declare-fun b!906195 () Bool)

(declare-fun tp!283723 () Bool)

(declare-fun tp!283725 () Bool)

(assert (=> b!906195 (= e!591776 (and tp!283723 tp!283725))))

(declare-fun b!906194 () Bool)

(declare-fun tp!283726 () Bool)

(assert (=> b!906194 (= e!591776 tp!283726)))

(assert (= (and b!905878 (is-ElementMatch!2396 (regOne!5304 r!15766))) b!906192))

(assert (= (and b!905878 (is-Concat!4229 (regOne!5304 r!15766))) b!906193))

(assert (= (and b!905878 (is-Star!2396 (regOne!5304 r!15766))) b!906194))

(assert (= (and b!905878 (is-Union!2396 (regOne!5304 r!15766))) b!906195))

(declare-fun b!906197 () Bool)

(declare-fun e!591777 () Bool)

(declare-fun tp!283729 () Bool)

(declare-fun tp!283732 () Bool)

(assert (=> b!906197 (= e!591777 (and tp!283729 tp!283732))))

(assert (=> b!905878 (= tp!283694 e!591777)))

(declare-fun b!906196 () Bool)

(assert (=> b!906196 (= e!591777 tp_is_empty!4435)))

(declare-fun b!906199 () Bool)

(declare-fun tp!283728 () Bool)

(declare-fun tp!283730 () Bool)

(assert (=> b!906199 (= e!591777 (and tp!283728 tp!283730))))

(declare-fun b!906198 () Bool)

(declare-fun tp!283731 () Bool)

(assert (=> b!906198 (= e!591777 tp!283731)))

(assert (= (and b!905878 (is-ElementMatch!2396 (regTwo!5304 r!15766))) b!906196))

(assert (= (and b!905878 (is-Concat!4229 (regTwo!5304 r!15766))) b!906197))

(assert (= (and b!905878 (is-Star!2396 (regTwo!5304 r!15766))) b!906198))

(assert (= (and b!905878 (is-Union!2396 (regTwo!5304 r!15766))) b!906199))

(declare-fun b!906204 () Bool)

(declare-fun e!591780 () Bool)

(declare-fun tp!283735 () Bool)

(assert (=> b!906204 (= e!591780 (and tp_is_empty!4435 tp!283735))))

(assert (=> b!905871 (= tp!283692 e!591780)))

(assert (= (and b!905871 (is-Cons!9610 (t!100672 s!10566))) b!906204))

(declare-fun b!906206 () Bool)

(declare-fun e!591781 () Bool)

(declare-fun tp!283737 () Bool)

(declare-fun tp!283740 () Bool)

(assert (=> b!906206 (= e!591781 (and tp!283737 tp!283740))))

(assert (=> b!905876 (= tp!283690 e!591781)))

(declare-fun b!906205 () Bool)

(assert (=> b!906205 (= e!591781 tp_is_empty!4435)))

(declare-fun b!906208 () Bool)

(declare-fun tp!283736 () Bool)

(declare-fun tp!283738 () Bool)

(assert (=> b!906208 (= e!591781 (and tp!283736 tp!283738))))

(declare-fun b!906207 () Bool)

(declare-fun tp!283739 () Bool)

(assert (=> b!906207 (= e!591781 tp!283739)))

(assert (= (and b!905876 (is-ElementMatch!2396 (regOne!5305 r!15766))) b!906205))

(assert (= (and b!905876 (is-Concat!4229 (regOne!5305 r!15766))) b!906206))

(assert (= (and b!905876 (is-Star!2396 (regOne!5305 r!15766))) b!906207))

(assert (= (and b!905876 (is-Union!2396 (regOne!5305 r!15766))) b!906208))

(declare-fun b!906210 () Bool)

(declare-fun e!591782 () Bool)

(declare-fun tp!283742 () Bool)

(declare-fun tp!283745 () Bool)

(assert (=> b!906210 (= e!591782 (and tp!283742 tp!283745))))

(assert (=> b!905876 (= tp!283691 e!591782)))

(declare-fun b!906209 () Bool)

(assert (=> b!906209 (= e!591782 tp_is_empty!4435)))

(declare-fun b!906212 () Bool)

(declare-fun tp!283741 () Bool)

(declare-fun tp!283743 () Bool)

(assert (=> b!906212 (= e!591782 (and tp!283741 tp!283743))))

(declare-fun b!906211 () Bool)

(declare-fun tp!283744 () Bool)

(assert (=> b!906211 (= e!591782 tp!283744)))

(assert (= (and b!905876 (is-ElementMatch!2396 (regTwo!5305 r!15766))) b!906209))

(assert (= (and b!905876 (is-Concat!4229 (regTwo!5305 r!15766))) b!906210))

(assert (= (and b!905876 (is-Star!2396 (regTwo!5305 r!15766))) b!906211))

(assert (= (and b!905876 (is-Union!2396 (regTwo!5305 r!15766))) b!906212))

(declare-fun b!906214 () Bool)

(declare-fun e!591783 () Bool)

(declare-fun tp!283747 () Bool)

(declare-fun tp!283750 () Bool)

(assert (=> b!906214 (= e!591783 (and tp!283747 tp!283750))))

(assert (=> b!905874 (= tp!283693 e!591783)))

(declare-fun b!906213 () Bool)

(assert (=> b!906213 (= e!591783 tp_is_empty!4435)))

(declare-fun b!906216 () Bool)

(declare-fun tp!283746 () Bool)

(declare-fun tp!283748 () Bool)

(assert (=> b!906216 (= e!591783 (and tp!283746 tp!283748))))

(declare-fun b!906215 () Bool)

(declare-fun tp!283749 () Bool)

(assert (=> b!906215 (= e!591783 tp!283749)))

(assert (= (and b!905874 (is-ElementMatch!2396 (reg!2725 r!15766))) b!906213))

(assert (= (and b!905874 (is-Concat!4229 (reg!2725 r!15766))) b!906214))

(assert (= (and b!905874 (is-Star!2396 (reg!2725 r!15766))) b!906215))

(assert (= (and b!905874 (is-Union!2396 (reg!2725 r!15766))) b!906216))

(push 1)

(assert (not b!906035))

(assert (not bm!54242))

(assert (not b!906085))

(assert (not b!906198))

(assert (not b!906195))

(assert (not bm!54237))

(assert (not b!905981))

(assert (not b!906028))

(assert (not b!906168))

(assert (not b!906039))

(assert (not bm!54250))

(assert (not bm!54248))

(assert (not d!278846))

(assert (not b!906165))

(assert (not b!905991))

(assert (not d!278842))

(assert (not d!278848))

(assert (not d!278836))

(assert (not b!906175))

(assert (not d!278838))

(assert (not d!278828))

(assert (not b!906208))

(assert (not b!906197))

(assert (not b!906179))

(assert (not b!906089))

(assert (not b!906214))

(assert (not b!906206))

(assert (not bm!54236))

(assert (not d!278832))

(assert (not d!278820))

(assert (not b!906091))

(assert (not b!906199))

(assert (not bm!54240))

(assert (not b!906178))

(assert (not b!906211))

(assert (not b!906047))

(assert (not b!906027))

(assert (not b!905993))

(assert (not b!905990))

(assert (not bm!54249))

(assert (not bm!54220))

(assert (not d!278810))

(assert (not b!906040))

(assert (not b!906204))

(assert (not b!906207))

(assert (not bm!54221))

(assert (not b!906216))

(assert (not b!906193))

(assert (not bm!54224))

(assert (not b!906083))

(assert (not d!278834))

(assert (not b!906177))

(assert (not b!906038))

(assert (not b!906180))

(assert (not b!905949))

(assert (not b!906086))

(assert (not bm!54243))

(assert (not b!906212))

(assert (not b!905988))

(assert tp_is_empty!4435)

(assert (not b!906210))

(assert (not b!905992))

(assert (not b!906215))

(assert (not b!906166))

(assert (not b!906194))

(assert (not d!278808))

(assert (not b!906084))

(assert (not b!906037))

(assert (not d!278822))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

