; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!81160 () Bool)

(assert start!81160)

(declare-fun b!901877 () Bool)

(assert (=> b!901877 true))

(assert (=> b!901877 true))

(assert (=> b!901877 true))

(declare-fun lambda!28224 () Int)

(declare-fun lambda!28223 () Int)

(assert (=> b!901877 (not (= lambda!28224 lambda!28223))))

(assert (=> b!901877 true))

(assert (=> b!901877 true))

(assert (=> b!901877 true))

(declare-fun res!410079 () Bool)

(declare-fun e!589526 () Bool)

(assert (=> start!81160 (=> (not res!410079) (not e!589526))))

(declare-datatypes ((C!5306 0))(
  ( (C!5307 (val!2901 Int)) )
))
(declare-datatypes ((Regex!2368 0))(
  ( (ElementMatch!2368 (c!146098 C!5306)) (Concat!4201 (regOne!5248 Regex!2368) (regTwo!5248 Regex!2368)) (EmptyExpr!2368) (Star!2368 (reg!2697 Regex!2368)) (EmptyLang!2368) (Union!2368 (regOne!5249 Regex!2368) (regTwo!5249 Regex!2368)) )
))
(declare-fun r!15766 () Regex!2368)

(declare-fun validRegex!837 (Regex!2368) Bool)

(assert (=> start!81160 (= res!410079 (validRegex!837 r!15766))))

(assert (=> start!81160 e!589526))

(declare-fun e!589525 () Bool)

(assert (=> start!81160 e!589525))

(declare-fun e!589524 () Bool)

(assert (=> start!81160 e!589524))

(declare-fun b!901864 () Bool)

(declare-fun tp!282731 () Bool)

(assert (=> b!901864 (= e!589525 tp!282731)))

(declare-fun b!901865 () Bool)

(declare-fun e!589531 () Bool)

(declare-fun e!589528 () Bool)

(assert (=> b!901865 (= e!589531 e!589528)))

(declare-fun res!410084 () Bool)

(assert (=> b!901865 (=> res!410084 e!589528)))

(declare-datatypes ((List!9598 0))(
  ( (Nil!9582) (Cons!9582 (h!14983 C!5306) (t!100644 List!9598)) )
))
(declare-datatypes ((tuple2!10738 0))(
  ( (tuple2!10739 (_1!6195 List!9598) (_2!6195 List!9598)) )
))
(declare-fun lt!334766 () tuple2!10738)

(declare-fun matchR!906 (Regex!2368 List!9598) Bool)

(assert (=> b!901865 (= res!410084 (not (matchR!906 (reg!2697 r!15766) (_1!6195 lt!334766))))))

(declare-datatypes ((Option!2011 0))(
  ( (None!2010) (Some!2010 (v!19427 tuple2!10738)) )
))
(declare-fun lt!334771 () Option!2011)

(declare-fun get!3051 (Option!2011) tuple2!10738)

(assert (=> b!901865 (= lt!334766 (get!3051 lt!334771))))

(declare-fun b!901866 () Bool)

(declare-datatypes ((Unit!14339 0))(
  ( (Unit!14340) )
))
(declare-fun e!589530 () Unit!14339)

(declare-fun Unit!14341 () Unit!14339)

(assert (=> b!901866 (= e!589530 Unit!14341)))

(declare-fun lt!334759 () Unit!14339)

(declare-fun mainMatchTheorem!169 (Regex!2368 List!9598) Unit!14339)

(assert (=> b!901866 (= lt!334759 (mainMatchTheorem!169 (reg!2697 r!15766) (_1!6195 lt!334766)))))

(assert (=> b!901866 false))

(declare-fun b!901867 () Bool)

(declare-fun res!410083 () Bool)

(assert (=> b!901867 (=> res!410083 e!589531)))

(declare-fun lt!334772 () Bool)

(assert (=> b!901867 (= res!410083 (not lt!334772))))

(declare-fun b!901868 () Bool)

(declare-fun e!589529 () Bool)

(assert (=> b!901868 (= e!589528 e!589529)))

(declare-fun res!410086 () Bool)

(assert (=> b!901868 (=> res!410086 e!589529)))

(declare-fun lt!334767 () Regex!2368)

(declare-fun lt!334770 () Regex!2368)

(assert (=> b!901868 (= res!410086 (not (= lt!334767 lt!334770)))))

(declare-fun lt!334765 () Regex!2368)

(assert (=> b!901868 (= lt!334770 (Star!2368 lt!334765))))

(assert (=> b!901868 (matchR!906 lt!334767 (_2!6195 lt!334766))))

(declare-fun lt!334758 () Regex!2368)

(declare-fun removeUselessConcat!81 (Regex!2368) Regex!2368)

(assert (=> b!901868 (= lt!334767 (removeUselessConcat!81 lt!334758))))

(declare-fun lt!334768 () Unit!14339)

(declare-fun lemmaRemoveUselessConcatSound!73 (Regex!2368 List!9598) Unit!14339)

(assert (=> b!901868 (= lt!334768 (lemmaRemoveUselessConcatSound!73 lt!334758 (_2!6195 lt!334766)))))

(declare-fun lt!334769 () Unit!14339)

(assert (=> b!901868 (= lt!334769 e!589530)))

(declare-fun c!146097 () Bool)

(declare-fun s!10566 () List!9598)

(declare-fun size!7873 (List!9598) Int)

(assert (=> b!901868 (= c!146097 (= (size!7873 (_2!6195 lt!334766)) (size!7873 s!10566)))))

(assert (=> b!901868 (matchR!906 lt!334765 (_1!6195 lt!334766))))

(assert (=> b!901868 (= lt!334765 (removeUselessConcat!81 (reg!2697 r!15766)))))

(declare-fun lt!334762 () Unit!14339)

(assert (=> b!901868 (= lt!334762 (lemmaRemoveUselessConcatSound!73 (reg!2697 r!15766) (_1!6195 lt!334766)))))

(declare-fun b!901869 () Bool)

(assert (=> b!901869 (= e!589529 (validRegex!837 (reg!2697 r!15766)))))

(declare-fun b!901870 () Bool)

(declare-fun res!410085 () Bool)

(assert (=> b!901870 (=> res!410085 e!589528)))

(assert (=> b!901870 (= res!410085 (not (matchR!906 lt!334758 (_2!6195 lt!334766))))))

(declare-fun b!901871 () Bool)

(declare-fun tp_is_empty!4379 () Bool)

(declare-fun tp!282734 () Bool)

(assert (=> b!901871 (= e!589524 (and tp_is_empty!4379 tp!282734))))

(declare-fun b!901872 () Bool)

(declare-fun res!410081 () Bool)

(assert (=> b!901872 (=> res!410081 e!589529)))

(assert (=> b!901872 (= res!410081 (not (matchR!906 lt!334770 (_2!6195 lt!334766))))))

(declare-fun b!901873 () Bool)

(declare-fun tp!282733 () Bool)

(declare-fun tp!282730 () Bool)

(assert (=> b!901873 (= e!589525 (and tp!282733 tp!282730))))

(declare-fun b!901874 () Bool)

(assert (=> b!901874 (= e!589525 tp_is_empty!4379)))

(declare-fun b!901875 () Bool)

(declare-fun e!589527 () Bool)

(assert (=> b!901875 (= e!589526 (not e!589527))))

(declare-fun res!410082 () Bool)

(assert (=> b!901875 (=> res!410082 e!589527)))

(declare-fun lt!334760 () Bool)

(assert (=> b!901875 (= res!410082 (or (not lt!334760) (and (is-Concat!4201 r!15766) (is-EmptyExpr!2368 (regOne!5248 r!15766))) (and (is-Concat!4201 r!15766) (is-EmptyExpr!2368 (regTwo!5248 r!15766))) (is-Concat!4201 r!15766) (is-Union!2368 r!15766) (not (is-Star!2368 r!15766))))))

(declare-fun matchRSpec!169 (Regex!2368 List!9598) Bool)

(assert (=> b!901875 (= lt!334760 (matchRSpec!169 r!15766 s!10566))))

(assert (=> b!901875 (= lt!334760 (matchR!906 r!15766 s!10566))))

(declare-fun lt!334764 () Unit!14339)

(assert (=> b!901875 (= lt!334764 (mainMatchTheorem!169 r!15766 s!10566))))

(declare-fun b!901876 () Bool)

(declare-fun tp!282729 () Bool)

(declare-fun tp!282732 () Bool)

(assert (=> b!901876 (= e!589525 (and tp!282729 tp!282732))))

(assert (=> b!901877 (= e!589527 e!589531)))

(declare-fun res!410080 () Bool)

(assert (=> b!901877 (=> res!410080 e!589531)))

(declare-fun isEmpty!5787 (List!9598) Bool)

(assert (=> b!901877 (= res!410080 (isEmpty!5787 s!10566))))

(declare-fun Exists!145 (Int) Bool)

(assert (=> b!901877 (= (Exists!145 lambda!28223) (Exists!145 lambda!28224))))

(declare-fun lt!334763 () Unit!14339)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!37 (Regex!2368 List!9598) Unit!14339)

(assert (=> b!901877 (= lt!334763 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!37 (reg!2697 r!15766) s!10566))))

(assert (=> b!901877 (= lt!334772 (Exists!145 lambda!28223))))

(declare-fun isDefined!1653 (Option!2011) Bool)

(assert (=> b!901877 (= lt!334772 (isDefined!1653 lt!334771))))

(declare-fun findConcatSeparation!117 (Regex!2368 Regex!2368 List!9598 List!9598 List!9598) Option!2011)

(assert (=> b!901877 (= lt!334771 (findConcatSeparation!117 (reg!2697 r!15766) lt!334758 Nil!9582 s!10566 s!10566))))

(declare-fun lt!334761 () Unit!14339)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!117 (Regex!2368 Regex!2368 List!9598) Unit!14339)

(assert (=> b!901877 (= lt!334761 (lemmaFindConcatSeparationEquivalentToExists!117 (reg!2697 r!15766) lt!334758 s!10566))))

(assert (=> b!901877 (= lt!334758 (Star!2368 (reg!2697 r!15766)))))

(declare-fun b!901878 () Bool)

(declare-fun Unit!14342 () Unit!14339)

(assert (=> b!901878 (= e!589530 Unit!14342)))

(assert (= (and start!81160 res!410079) b!901875))

(assert (= (and b!901875 (not res!410082)) b!901877))

(assert (= (and b!901877 (not res!410080)) b!901867))

(assert (= (and b!901867 (not res!410083)) b!901865))

(assert (= (and b!901865 (not res!410084)) b!901870))

(assert (= (and b!901870 (not res!410085)) b!901868))

(assert (= (and b!901868 c!146097) b!901866))

(assert (= (and b!901868 (not c!146097)) b!901878))

(assert (= (and b!901868 (not res!410086)) b!901872))

(assert (= (and b!901872 (not res!410081)) b!901869))

(assert (= (and start!81160 (is-ElementMatch!2368 r!15766)) b!901874))

(assert (= (and start!81160 (is-Concat!4201 r!15766)) b!901873))

(assert (= (and start!81160 (is-Star!2368 r!15766)) b!901864))

(assert (= (and start!81160 (is-Union!2368 r!15766)) b!901876))

(assert (= (and start!81160 (is-Cons!9582 s!10566)) b!901871))

(declare-fun m!1139029 () Bool)

(assert (=> start!81160 m!1139029))

(declare-fun m!1139031 () Bool)

(assert (=> b!901870 m!1139031))

(declare-fun m!1139033 () Bool)

(assert (=> b!901877 m!1139033))

(declare-fun m!1139035 () Bool)

(assert (=> b!901877 m!1139035))

(declare-fun m!1139037 () Bool)

(assert (=> b!901877 m!1139037))

(declare-fun m!1139039 () Bool)

(assert (=> b!901877 m!1139039))

(assert (=> b!901877 m!1139039))

(declare-fun m!1139041 () Bool)

(assert (=> b!901877 m!1139041))

(declare-fun m!1139043 () Bool)

(assert (=> b!901877 m!1139043))

(declare-fun m!1139045 () Bool)

(assert (=> b!901877 m!1139045))

(declare-fun m!1139047 () Bool)

(assert (=> b!901866 m!1139047))

(declare-fun m!1139049 () Bool)

(assert (=> b!901869 m!1139049))

(declare-fun m!1139051 () Bool)

(assert (=> b!901865 m!1139051))

(declare-fun m!1139053 () Bool)

(assert (=> b!901865 m!1139053))

(declare-fun m!1139055 () Bool)

(assert (=> b!901872 m!1139055))

(declare-fun m!1139057 () Bool)

(assert (=> b!901868 m!1139057))

(declare-fun m!1139059 () Bool)

(assert (=> b!901868 m!1139059))

(declare-fun m!1139061 () Bool)

(assert (=> b!901868 m!1139061))

(declare-fun m!1139063 () Bool)

(assert (=> b!901868 m!1139063))

(declare-fun m!1139065 () Bool)

(assert (=> b!901868 m!1139065))

(declare-fun m!1139067 () Bool)

(assert (=> b!901868 m!1139067))

(declare-fun m!1139069 () Bool)

(assert (=> b!901868 m!1139069))

(declare-fun m!1139071 () Bool)

(assert (=> b!901868 m!1139071))

(declare-fun m!1139073 () Bool)

(assert (=> b!901875 m!1139073))

(declare-fun m!1139075 () Bool)

(assert (=> b!901875 m!1139075))

(declare-fun m!1139077 () Bool)

(assert (=> b!901875 m!1139077))

(push 1)

(assert (not b!901864))

(assert (not b!901865))

(assert (not b!901876))

(assert (not b!901872))

(assert (not b!901870))

(assert (not b!901875))

(assert (not b!901868))

(assert (not b!901869))

(assert (not b!901873))

(assert (not start!81160))

(assert (not b!901871))

(assert (not b!901877))

(assert tp_is_empty!4379)

(assert (not b!901866))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!901968 () Bool)

(declare-fun c!146114 () Bool)

(assert (=> b!901968 (= c!146114 (is-Star!2368 lt!334758))))

(declare-fun e!589576 () Regex!2368)

(declare-fun e!589577 () Regex!2368)

(assert (=> b!901968 (= e!589576 e!589577)))

(declare-fun b!901969 () Bool)

(declare-fun e!589578 () Regex!2368)

(declare-fun call!53835 () Regex!2368)

(assert (=> b!901969 (= e!589578 call!53835)))

(declare-fun bm!53827 () Bool)

(declare-fun call!53833 () Regex!2368)

(declare-fun call!53832 () Regex!2368)

(assert (=> bm!53827 (= call!53833 call!53832)))

(declare-fun d!278448 () Bool)

(declare-fun e!589575 () Bool)

(assert (=> d!278448 e!589575))

(declare-fun res!410127 () Bool)

(assert (=> d!278448 (=> (not res!410127) (not e!589575))))

(declare-fun lt!334820 () Regex!2368)

(assert (=> d!278448 (= res!410127 (validRegex!837 lt!334820))))

(assert (=> d!278448 (= lt!334820 e!589578)))

(declare-fun c!146117 () Bool)

(assert (=> d!278448 (= c!146117 (and (is-Concat!4201 lt!334758) (is-EmptyExpr!2368 (regOne!5248 lt!334758))))))

(assert (=> d!278448 (validRegex!837 lt!334758)))

(assert (=> d!278448 (= (removeUselessConcat!81 lt!334758) lt!334820)))

(declare-fun b!901970 () Bool)

(declare-fun call!53836 () Regex!2368)

(assert (=> b!901970 (= e!589576 (Union!2368 call!53836 call!53833))))

(declare-fun b!901971 () Bool)

(declare-fun nullable!633 (Regex!2368) Bool)

(assert (=> b!901971 (= e!589575 (= (nullable!633 lt!334820) (nullable!633 lt!334758)))))

(declare-fun b!901972 () Bool)

(declare-fun e!589579 () Regex!2368)

(assert (=> b!901972 (= e!589579 (Concat!4201 call!53836 call!53832))))

(declare-fun bm!53828 () Bool)

(declare-fun call!53834 () Regex!2368)

(assert (=> bm!53828 (= call!53832 call!53834)))

(declare-fun b!901973 () Bool)

(declare-fun e!589574 () Regex!2368)

(assert (=> b!901973 (= e!589574 call!53834)))

(declare-fun b!901974 () Bool)

(assert (=> b!901974 (= e!589577 lt!334758)))

(declare-fun bm!53829 () Bool)

(declare-fun c!146116 () Bool)

(assert (=> bm!53829 (= call!53836 (removeUselessConcat!81 (ite c!146116 (regOne!5248 lt!334758) (regOne!5249 lt!334758))))))

(declare-fun b!901975 () Bool)

(assert (=> b!901975 (= e!589577 (Star!2368 call!53833))))

(declare-fun b!901976 () Bool)

(assert (=> b!901976 (= e!589578 e!589574)))

(declare-fun c!146115 () Bool)

(assert (=> b!901976 (= c!146115 (and (is-Concat!4201 lt!334758) (is-EmptyExpr!2368 (regTwo!5248 lt!334758))))))

(declare-fun b!901977 () Bool)

(assert (=> b!901977 (= c!146116 (is-Concat!4201 lt!334758))))

(assert (=> b!901977 (= e!589574 e!589579)))

(declare-fun bm!53830 () Bool)

(assert (=> bm!53830 (= call!53834 call!53835)))

(declare-fun b!901978 () Bool)

(assert (=> b!901978 (= e!589579 e!589576)))

(declare-fun c!146113 () Bool)

(assert (=> b!901978 (= c!146113 (is-Union!2368 lt!334758))))

(declare-fun bm!53831 () Bool)

(assert (=> bm!53831 (= call!53835 (removeUselessConcat!81 (ite c!146117 (regTwo!5248 lt!334758) (ite c!146115 (regOne!5248 lt!334758) (ite c!146116 (regTwo!5248 lt!334758) (ite c!146113 (regTwo!5249 lt!334758) (reg!2697 lt!334758)))))))))

(assert (= (and d!278448 c!146117) b!901969))

(assert (= (and d!278448 (not c!146117)) b!901976))

(assert (= (and b!901976 c!146115) b!901973))

(assert (= (and b!901976 (not c!146115)) b!901977))

(assert (= (and b!901977 c!146116) b!901972))

(assert (= (and b!901977 (not c!146116)) b!901978))

(assert (= (and b!901978 c!146113) b!901970))

(assert (= (and b!901978 (not c!146113)) b!901968))

(assert (= (and b!901968 c!146114) b!901975))

(assert (= (and b!901968 (not c!146114)) b!901974))

(assert (= (or b!901970 b!901975) bm!53827))

(assert (= (or b!901972 bm!53827) bm!53828))

(assert (= (or b!901972 b!901970) bm!53829))

(assert (= (or b!901973 bm!53828) bm!53830))

(assert (= (or b!901969 bm!53830) bm!53831))

(assert (= (and d!278448 res!410127) b!901971))

(declare-fun m!1139129 () Bool)

(assert (=> d!278448 m!1139129))

(declare-fun m!1139131 () Bool)

(assert (=> d!278448 m!1139131))

(declare-fun m!1139133 () Bool)

(assert (=> b!901971 m!1139133))

(declare-fun m!1139135 () Bool)

(assert (=> b!901971 m!1139135))

(declare-fun m!1139137 () Bool)

(assert (=> bm!53829 m!1139137))

(declare-fun m!1139139 () Bool)

(assert (=> bm!53831 m!1139139))

(assert (=> b!901868 d!278448))

(declare-fun d!278450 () Bool)

(declare-fun lt!334823 () Int)

(assert (=> d!278450 (>= lt!334823 0)))

(declare-fun e!589582 () Int)

(assert (=> d!278450 (= lt!334823 e!589582)))

(declare-fun c!146120 () Bool)

(assert (=> d!278450 (= c!146120 (is-Nil!9582 (_2!6195 lt!334766)))))

(assert (=> d!278450 (= (size!7873 (_2!6195 lt!334766)) lt!334823)))

(declare-fun b!901983 () Bool)

(assert (=> b!901983 (= e!589582 0)))

(declare-fun b!901984 () Bool)

(assert (=> b!901984 (= e!589582 (+ 1 (size!7873 (t!100644 (_2!6195 lt!334766)))))))

(assert (= (and d!278450 c!146120) b!901983))

(assert (= (and d!278450 (not c!146120)) b!901984))

(declare-fun m!1139141 () Bool)

(assert (=> b!901984 m!1139141))

(assert (=> b!901868 d!278450))

(declare-fun d!278452 () Bool)

(declare-fun lt!334824 () Int)

(assert (=> d!278452 (>= lt!334824 0)))

(declare-fun e!589583 () Int)

(assert (=> d!278452 (= lt!334824 e!589583)))

(declare-fun c!146121 () Bool)

(assert (=> d!278452 (= c!146121 (is-Nil!9582 s!10566))))

(assert (=> d!278452 (= (size!7873 s!10566) lt!334824)))

(declare-fun b!901985 () Bool)

(assert (=> b!901985 (= e!589583 0)))

(declare-fun b!901986 () Bool)

(assert (=> b!901986 (= e!589583 (+ 1 (size!7873 (t!100644 s!10566))))))

(assert (= (and d!278452 c!146121) b!901985))

(assert (= (and d!278452 (not c!146121)) b!901986))

(declare-fun m!1139143 () Bool)

(assert (=> b!901986 m!1139143))

(assert (=> b!901868 d!278452))

(declare-fun bm!53834 () Bool)

(declare-fun call!53839 () Bool)

(assert (=> bm!53834 (= call!53839 (isEmpty!5787 (_1!6195 lt!334766)))))

(declare-fun b!902015 () Bool)

(declare-fun e!589604 () Bool)

(assert (=> b!902015 (= e!589604 (nullable!633 lt!334765))))

(declare-fun b!902016 () Bool)

(declare-fun e!589598 () Bool)

(declare-fun lt!334827 () Bool)

(assert (=> b!902016 (= e!589598 (not lt!334827))))

(declare-fun b!902017 () Bool)

(declare-fun res!410145 () Bool)

(declare-fun e!589602 () Bool)

(assert (=> b!902017 (=> res!410145 e!589602)))

(declare-fun tail!1160 (List!9598) List!9598)

(assert (=> b!902017 (= res!410145 (not (isEmpty!5787 (tail!1160 (_1!6195 lt!334766)))))))

(declare-fun d!278454 () Bool)

(declare-fun e!589600 () Bool)

(assert (=> d!278454 e!589600))

(declare-fun c!146129 () Bool)

(assert (=> d!278454 (= c!146129 (is-EmptyExpr!2368 lt!334765))))

(assert (=> d!278454 (= lt!334827 e!589604)))

(declare-fun c!146128 () Bool)

(assert (=> d!278454 (= c!146128 (isEmpty!5787 (_1!6195 lt!334766)))))

(assert (=> d!278454 (validRegex!837 lt!334765)))

(assert (=> d!278454 (= (matchR!906 lt!334765 (_1!6195 lt!334766)) lt!334827)))

(declare-fun b!902018 () Bool)

(assert (=> b!902018 (= e!589600 (= lt!334827 call!53839))))

(declare-fun b!902019 () Bool)

(declare-fun e!589603 () Bool)

(declare-fun e!589599 () Bool)

(assert (=> b!902019 (= e!589603 e!589599)))

(declare-fun res!410150 () Bool)

(assert (=> b!902019 (=> (not res!410150) (not e!589599))))

(assert (=> b!902019 (= res!410150 (not lt!334827))))

(declare-fun b!902020 () Bool)

(declare-fun e!589601 () Bool)

(declare-fun head!1598 (List!9598) C!5306)

(assert (=> b!902020 (= e!589601 (= (head!1598 (_1!6195 lt!334766)) (c!146098 lt!334765)))))

(declare-fun b!902021 () Bool)

(declare-fun res!410149 () Bool)

(assert (=> b!902021 (=> (not res!410149) (not e!589601))))

(assert (=> b!902021 (= res!410149 (isEmpty!5787 (tail!1160 (_1!6195 lt!334766))))))

(declare-fun b!902022 () Bool)

(declare-fun res!410148 () Bool)

(assert (=> b!902022 (=> res!410148 e!589603)))

(assert (=> b!902022 (= res!410148 e!589601)))

(declare-fun res!410144 () Bool)

(assert (=> b!902022 (=> (not res!410144) (not e!589601))))

(assert (=> b!902022 (= res!410144 lt!334827)))

(declare-fun b!902023 () Bool)

(declare-fun res!410147 () Bool)

(assert (=> b!902023 (=> res!410147 e!589603)))

(assert (=> b!902023 (= res!410147 (not (is-ElementMatch!2368 lt!334765)))))

(assert (=> b!902023 (= e!589598 e!589603)))

(declare-fun b!902024 () Bool)

(assert (=> b!902024 (= e!589599 e!589602)))

(declare-fun res!410146 () Bool)

(assert (=> b!902024 (=> res!410146 e!589602)))

(assert (=> b!902024 (= res!410146 call!53839)))

(declare-fun b!902025 () Bool)

(declare-fun derivativeStep!445 (Regex!2368 C!5306) Regex!2368)

(assert (=> b!902025 (= e!589604 (matchR!906 (derivativeStep!445 lt!334765 (head!1598 (_1!6195 lt!334766))) (tail!1160 (_1!6195 lt!334766))))))

(declare-fun b!902026 () Bool)

(assert (=> b!902026 (= e!589602 (not (= (head!1598 (_1!6195 lt!334766)) (c!146098 lt!334765))))))

(declare-fun b!902027 () Bool)

(declare-fun res!410151 () Bool)

(assert (=> b!902027 (=> (not res!410151) (not e!589601))))

(assert (=> b!902027 (= res!410151 (not call!53839))))

(declare-fun b!902028 () Bool)

(assert (=> b!902028 (= e!589600 e!589598)))

(declare-fun c!146130 () Bool)

(assert (=> b!902028 (= c!146130 (is-EmptyLang!2368 lt!334765))))

(assert (= (and d!278454 c!146128) b!902015))

(assert (= (and d!278454 (not c!146128)) b!902025))

(assert (= (and d!278454 c!146129) b!902018))

(assert (= (and d!278454 (not c!146129)) b!902028))

(assert (= (and b!902028 c!146130) b!902016))

(assert (= (and b!902028 (not c!146130)) b!902023))

(assert (= (and b!902023 (not res!410147)) b!902022))

(assert (= (and b!902022 res!410144) b!902027))

(assert (= (and b!902027 res!410151) b!902021))

(assert (= (and b!902021 res!410149) b!902020))

(assert (= (and b!902022 (not res!410148)) b!902019))

(assert (= (and b!902019 res!410150) b!902024))

(assert (= (and b!902024 (not res!410146)) b!902017))

(assert (= (and b!902017 (not res!410145)) b!902026))

(assert (= (or b!902018 b!902024 b!902027) bm!53834))

(declare-fun m!1139145 () Bool)

(assert (=> bm!53834 m!1139145))

(declare-fun m!1139147 () Bool)

(assert (=> b!902021 m!1139147))

(assert (=> b!902021 m!1139147))

(declare-fun m!1139149 () Bool)

(assert (=> b!902021 m!1139149))

(declare-fun m!1139151 () Bool)

(assert (=> b!902025 m!1139151))

(assert (=> b!902025 m!1139151))

(declare-fun m!1139153 () Bool)

(assert (=> b!902025 m!1139153))

(assert (=> b!902025 m!1139147))

(assert (=> b!902025 m!1139153))

(assert (=> b!902025 m!1139147))

(declare-fun m!1139155 () Bool)

(assert (=> b!902025 m!1139155))

(assert (=> b!902017 m!1139147))

(assert (=> b!902017 m!1139147))

(assert (=> b!902017 m!1139149))

(declare-fun m!1139157 () Bool)

(assert (=> b!902015 m!1139157))

(assert (=> b!902020 m!1139151))

(assert (=> d!278454 m!1139145))

(declare-fun m!1139159 () Bool)

(assert (=> d!278454 m!1139159))

(assert (=> b!902026 m!1139151))

(assert (=> b!901868 d!278454))

(declare-fun d!278458 () Bool)

(assert (=> d!278458 (= (matchR!906 lt!334758 (_2!6195 lt!334766)) (matchR!906 (removeUselessConcat!81 lt!334758) (_2!6195 lt!334766)))))

(declare-fun lt!334830 () Unit!14339)

(declare-fun choose!5447 (Regex!2368 List!9598) Unit!14339)

(assert (=> d!278458 (= lt!334830 (choose!5447 lt!334758 (_2!6195 lt!334766)))))

(assert (=> d!278458 (validRegex!837 lt!334758)))

(assert (=> d!278458 (= (lemmaRemoveUselessConcatSound!73 lt!334758 (_2!6195 lt!334766)) lt!334830)))

(declare-fun bs!235274 () Bool)

(assert (= bs!235274 d!278458))

(assert (=> bs!235274 m!1139131))

(assert (=> bs!235274 m!1139057))

(declare-fun m!1139161 () Bool)

(assert (=> bs!235274 m!1139161))

(assert (=> bs!235274 m!1139057))

(declare-fun m!1139163 () Bool)

(assert (=> bs!235274 m!1139163))

(assert (=> bs!235274 m!1139031))

(assert (=> b!901868 d!278458))

(declare-fun b!902051 () Bool)

(declare-fun c!146140 () Bool)

(assert (=> b!902051 (= c!146140 (is-Star!2368 (reg!2697 r!15766)))))

(declare-fun e!589621 () Regex!2368)

(declare-fun e!589622 () Regex!2368)

(assert (=> b!902051 (= e!589621 e!589622)))

(declare-fun b!902052 () Bool)

(declare-fun e!589623 () Regex!2368)

(declare-fun call!53843 () Regex!2368)

(assert (=> b!902052 (= e!589623 call!53843)))

(declare-fun bm!53835 () Bool)

(declare-fun call!53841 () Regex!2368)

(declare-fun call!53840 () Regex!2368)

(assert (=> bm!53835 (= call!53841 call!53840)))

(declare-fun d!278460 () Bool)

(declare-fun e!589620 () Bool)

(assert (=> d!278460 e!589620))

(declare-fun res!410158 () Bool)

(assert (=> d!278460 (=> (not res!410158) (not e!589620))))

(declare-fun lt!334831 () Regex!2368)

(assert (=> d!278460 (= res!410158 (validRegex!837 lt!334831))))

(assert (=> d!278460 (= lt!334831 e!589623)))

(declare-fun c!146143 () Bool)

(assert (=> d!278460 (= c!146143 (and (is-Concat!4201 (reg!2697 r!15766)) (is-EmptyExpr!2368 (regOne!5248 (reg!2697 r!15766)))))))

(assert (=> d!278460 (validRegex!837 (reg!2697 r!15766))))

(assert (=> d!278460 (= (removeUselessConcat!81 (reg!2697 r!15766)) lt!334831)))

(declare-fun b!902053 () Bool)

(declare-fun call!53844 () Regex!2368)

(assert (=> b!902053 (= e!589621 (Union!2368 call!53844 call!53841))))

(declare-fun b!902054 () Bool)

(assert (=> b!902054 (= e!589620 (= (nullable!633 lt!334831) (nullable!633 (reg!2697 r!15766))))))

(declare-fun b!902055 () Bool)

(declare-fun e!589624 () Regex!2368)

(assert (=> b!902055 (= e!589624 (Concat!4201 call!53844 call!53840))))

(declare-fun bm!53836 () Bool)

(declare-fun call!53842 () Regex!2368)

(assert (=> bm!53836 (= call!53840 call!53842)))

(declare-fun b!902056 () Bool)

(declare-fun e!589619 () Regex!2368)

(assert (=> b!902056 (= e!589619 call!53842)))

(declare-fun b!902057 () Bool)

(assert (=> b!902057 (= e!589622 (reg!2697 r!15766))))

(declare-fun bm!53837 () Bool)

(declare-fun c!146142 () Bool)

(assert (=> bm!53837 (= call!53844 (removeUselessConcat!81 (ite c!146142 (regOne!5248 (reg!2697 r!15766)) (regOne!5249 (reg!2697 r!15766)))))))

(declare-fun b!902058 () Bool)

(assert (=> b!902058 (= e!589622 (Star!2368 call!53841))))

(declare-fun b!902059 () Bool)

(assert (=> b!902059 (= e!589623 e!589619)))

(declare-fun c!146141 () Bool)

(assert (=> b!902059 (= c!146141 (and (is-Concat!4201 (reg!2697 r!15766)) (is-EmptyExpr!2368 (regTwo!5248 (reg!2697 r!15766)))))))

(declare-fun b!902060 () Bool)

(assert (=> b!902060 (= c!146142 (is-Concat!4201 (reg!2697 r!15766)))))

(assert (=> b!902060 (= e!589619 e!589624)))

(declare-fun bm!53838 () Bool)

(assert (=> bm!53838 (= call!53842 call!53843)))

(declare-fun b!902061 () Bool)

(assert (=> b!902061 (= e!589624 e!589621)))

(declare-fun c!146139 () Bool)

(assert (=> b!902061 (= c!146139 (is-Union!2368 (reg!2697 r!15766)))))

(declare-fun bm!53839 () Bool)

(assert (=> bm!53839 (= call!53843 (removeUselessConcat!81 (ite c!146143 (regTwo!5248 (reg!2697 r!15766)) (ite c!146141 (regOne!5248 (reg!2697 r!15766)) (ite c!146142 (regTwo!5248 (reg!2697 r!15766)) (ite c!146139 (regTwo!5249 (reg!2697 r!15766)) (reg!2697 (reg!2697 r!15766))))))))))

(assert (= (and d!278460 c!146143) b!902052))

(assert (= (and d!278460 (not c!146143)) b!902059))

(assert (= (and b!902059 c!146141) b!902056))

(assert (= (and b!902059 (not c!146141)) b!902060))

(assert (= (and b!902060 c!146142) b!902055))

(assert (= (and b!902060 (not c!146142)) b!902061))

(assert (= (and b!902061 c!146139) b!902053))

(assert (= (and b!902061 (not c!146139)) b!902051))

(assert (= (and b!902051 c!146140) b!902058))

(assert (= (and b!902051 (not c!146140)) b!902057))

(assert (= (or b!902053 b!902058) bm!53835))

(assert (= (or b!902055 bm!53835) bm!53836))

(assert (= (or b!902055 b!902053) bm!53837))

(assert (= (or b!902056 bm!53836) bm!53838))

(assert (= (or b!902052 bm!53838) bm!53839))

(assert (= (and d!278460 res!410158) b!902054))

(declare-fun m!1139165 () Bool)

(assert (=> d!278460 m!1139165))

(assert (=> d!278460 m!1139049))

(declare-fun m!1139167 () Bool)

(assert (=> b!902054 m!1139167))

(declare-fun m!1139169 () Bool)

(assert (=> b!902054 m!1139169))

(declare-fun m!1139171 () Bool)

(assert (=> bm!53837 m!1139171))

(declare-fun m!1139173 () Bool)

(assert (=> bm!53839 m!1139173))

(assert (=> b!901868 d!278460))

(declare-fun bm!53840 () Bool)

(declare-fun call!53845 () Bool)

(assert (=> bm!53840 (= call!53845 (isEmpty!5787 (_2!6195 lt!334766)))))

(declare-fun b!902062 () Bool)

(declare-fun e!589631 () Bool)

(assert (=> b!902062 (= e!589631 (nullable!633 lt!334767))))

(declare-fun b!902063 () Bool)

(declare-fun e!589625 () Bool)

(declare-fun lt!334832 () Bool)

(assert (=> b!902063 (= e!589625 (not lt!334832))))

(declare-fun b!902064 () Bool)

(declare-fun res!410160 () Bool)

(declare-fun e!589629 () Bool)

(assert (=> b!902064 (=> res!410160 e!589629)))

(assert (=> b!902064 (= res!410160 (not (isEmpty!5787 (tail!1160 (_2!6195 lt!334766)))))))

(declare-fun d!278462 () Bool)

(declare-fun e!589627 () Bool)

(assert (=> d!278462 e!589627))

(declare-fun c!146145 () Bool)

(assert (=> d!278462 (= c!146145 (is-EmptyExpr!2368 lt!334767))))

(assert (=> d!278462 (= lt!334832 e!589631)))

(declare-fun c!146144 () Bool)

(assert (=> d!278462 (= c!146144 (isEmpty!5787 (_2!6195 lt!334766)))))

(assert (=> d!278462 (validRegex!837 lt!334767)))

(assert (=> d!278462 (= (matchR!906 lt!334767 (_2!6195 lt!334766)) lt!334832)))

(declare-fun b!902065 () Bool)

(assert (=> b!902065 (= e!589627 (= lt!334832 call!53845))))

(declare-fun b!902066 () Bool)

(declare-fun e!589630 () Bool)

(declare-fun e!589626 () Bool)

(assert (=> b!902066 (= e!589630 e!589626)))

(declare-fun res!410165 () Bool)

(assert (=> b!902066 (=> (not res!410165) (not e!589626))))

(assert (=> b!902066 (= res!410165 (not lt!334832))))

(declare-fun b!902067 () Bool)

(declare-fun e!589628 () Bool)

(assert (=> b!902067 (= e!589628 (= (head!1598 (_2!6195 lt!334766)) (c!146098 lt!334767)))))

(declare-fun b!902068 () Bool)

(declare-fun res!410164 () Bool)

(assert (=> b!902068 (=> (not res!410164) (not e!589628))))

(assert (=> b!902068 (= res!410164 (isEmpty!5787 (tail!1160 (_2!6195 lt!334766))))))

(declare-fun b!902069 () Bool)

(declare-fun res!410163 () Bool)

(assert (=> b!902069 (=> res!410163 e!589630)))

(assert (=> b!902069 (= res!410163 e!589628)))

(declare-fun res!410159 () Bool)

(assert (=> b!902069 (=> (not res!410159) (not e!589628))))

(assert (=> b!902069 (= res!410159 lt!334832)))

(declare-fun b!902070 () Bool)

(declare-fun res!410162 () Bool)

(assert (=> b!902070 (=> res!410162 e!589630)))

(assert (=> b!902070 (= res!410162 (not (is-ElementMatch!2368 lt!334767)))))

(assert (=> b!902070 (= e!589625 e!589630)))

(declare-fun b!902071 () Bool)

(assert (=> b!902071 (= e!589626 e!589629)))

(declare-fun res!410161 () Bool)

(assert (=> b!902071 (=> res!410161 e!589629)))

(assert (=> b!902071 (= res!410161 call!53845)))

(declare-fun b!902072 () Bool)

(assert (=> b!902072 (= e!589631 (matchR!906 (derivativeStep!445 lt!334767 (head!1598 (_2!6195 lt!334766))) (tail!1160 (_2!6195 lt!334766))))))

(declare-fun b!902073 () Bool)

(assert (=> b!902073 (= e!589629 (not (= (head!1598 (_2!6195 lt!334766)) (c!146098 lt!334767))))))

(declare-fun b!902074 () Bool)

(declare-fun res!410166 () Bool)

(assert (=> b!902074 (=> (not res!410166) (not e!589628))))

(assert (=> b!902074 (= res!410166 (not call!53845))))

(declare-fun b!902075 () Bool)

(assert (=> b!902075 (= e!589627 e!589625)))

(declare-fun c!146146 () Bool)

(assert (=> b!902075 (= c!146146 (is-EmptyLang!2368 lt!334767))))

(assert (= (and d!278462 c!146144) b!902062))

(assert (= (and d!278462 (not c!146144)) b!902072))

(assert (= (and d!278462 c!146145) b!902065))

(assert (= (and d!278462 (not c!146145)) b!902075))

(assert (= (and b!902075 c!146146) b!902063))

(assert (= (and b!902075 (not c!146146)) b!902070))

(assert (= (and b!902070 (not res!410162)) b!902069))

(assert (= (and b!902069 res!410159) b!902074))

(assert (= (and b!902074 res!410166) b!902068))

(assert (= (and b!902068 res!410164) b!902067))

(assert (= (and b!902069 (not res!410163)) b!902066))

(assert (= (and b!902066 res!410165) b!902071))

(assert (= (and b!902071 (not res!410161)) b!902064))

(assert (= (and b!902064 (not res!410160)) b!902073))

(assert (= (or b!902065 b!902071 b!902074) bm!53840))

(declare-fun m!1139175 () Bool)

(assert (=> bm!53840 m!1139175))

(declare-fun m!1139177 () Bool)

(assert (=> b!902068 m!1139177))

(assert (=> b!902068 m!1139177))

(declare-fun m!1139179 () Bool)

(assert (=> b!902068 m!1139179))

(declare-fun m!1139181 () Bool)

(assert (=> b!902072 m!1139181))

(assert (=> b!902072 m!1139181))

(declare-fun m!1139183 () Bool)

(assert (=> b!902072 m!1139183))

(assert (=> b!902072 m!1139177))

(assert (=> b!902072 m!1139183))

(assert (=> b!902072 m!1139177))

(declare-fun m!1139185 () Bool)

(assert (=> b!902072 m!1139185))

(assert (=> b!902064 m!1139177))

(assert (=> b!902064 m!1139177))

(assert (=> b!902064 m!1139179))

(declare-fun m!1139187 () Bool)

(assert (=> b!902062 m!1139187))

(assert (=> b!902067 m!1139181))

(assert (=> d!278462 m!1139175))

(declare-fun m!1139189 () Bool)

(assert (=> d!278462 m!1139189))

(assert (=> b!902073 m!1139181))

(assert (=> b!901868 d!278462))

(declare-fun d!278464 () Bool)

(assert (=> d!278464 (= (matchR!906 (reg!2697 r!15766) (_1!6195 lt!334766)) (matchR!906 (removeUselessConcat!81 (reg!2697 r!15766)) (_1!6195 lt!334766)))))

(declare-fun lt!334833 () Unit!14339)

(assert (=> d!278464 (= lt!334833 (choose!5447 (reg!2697 r!15766) (_1!6195 lt!334766)))))

(assert (=> d!278464 (validRegex!837 (reg!2697 r!15766))))

(assert (=> d!278464 (= (lemmaRemoveUselessConcatSound!73 (reg!2697 r!15766) (_1!6195 lt!334766)) lt!334833)))

(declare-fun bs!235275 () Bool)

(assert (= bs!235275 d!278464))

(assert (=> bs!235275 m!1139049))

(assert (=> bs!235275 m!1139059))

(declare-fun m!1139191 () Bool)

(assert (=> bs!235275 m!1139191))

(assert (=> bs!235275 m!1139059))

(declare-fun m!1139193 () Bool)

(assert (=> bs!235275 m!1139193))

(assert (=> bs!235275 m!1139051))

(assert (=> b!901868 d!278464))

(declare-fun bm!53841 () Bool)

(declare-fun call!53846 () Bool)

(assert (=> bm!53841 (= call!53846 (isEmpty!5787 (_2!6195 lt!334766)))))

(declare-fun b!902082 () Bool)

(declare-fun e!589640 () Bool)

(assert (=> b!902082 (= e!589640 (nullable!633 lt!334770))))

(declare-fun b!902083 () Bool)

(declare-fun e!589634 () Bool)

(declare-fun lt!334834 () Bool)

(assert (=> b!902083 (= e!589634 (not lt!334834))))

(declare-fun b!902084 () Bool)

(declare-fun res!410174 () Bool)

(declare-fun e!589638 () Bool)

(assert (=> b!902084 (=> res!410174 e!589638)))

(assert (=> b!902084 (= res!410174 (not (isEmpty!5787 (tail!1160 (_2!6195 lt!334766)))))))

(declare-fun d!278466 () Bool)

(declare-fun e!589636 () Bool)

(assert (=> d!278466 e!589636))

(declare-fun c!146148 () Bool)

(assert (=> d!278466 (= c!146148 (is-EmptyExpr!2368 lt!334770))))

(assert (=> d!278466 (= lt!334834 e!589640)))

(declare-fun c!146147 () Bool)

(assert (=> d!278466 (= c!146147 (isEmpty!5787 (_2!6195 lt!334766)))))

(assert (=> d!278466 (validRegex!837 lt!334770)))

(assert (=> d!278466 (= (matchR!906 lt!334770 (_2!6195 lt!334766)) lt!334834)))

(declare-fun b!902085 () Bool)

(assert (=> b!902085 (= e!589636 (= lt!334834 call!53846))))

(declare-fun b!902086 () Bool)

(declare-fun e!589639 () Bool)

(declare-fun e!589635 () Bool)

(assert (=> b!902086 (= e!589639 e!589635)))

(declare-fun res!410179 () Bool)

(assert (=> b!902086 (=> (not res!410179) (not e!589635))))

(assert (=> b!902086 (= res!410179 (not lt!334834))))

(declare-fun b!902087 () Bool)

(declare-fun e!589637 () Bool)

(assert (=> b!902087 (= e!589637 (= (head!1598 (_2!6195 lt!334766)) (c!146098 lt!334770)))))

(declare-fun b!902088 () Bool)

(declare-fun res!410178 () Bool)

(assert (=> b!902088 (=> (not res!410178) (not e!589637))))

(assert (=> b!902088 (= res!410178 (isEmpty!5787 (tail!1160 (_2!6195 lt!334766))))))

(declare-fun b!902089 () Bool)

(declare-fun res!410177 () Bool)

(assert (=> b!902089 (=> res!410177 e!589639)))

(assert (=> b!902089 (= res!410177 e!589637)))

(declare-fun res!410173 () Bool)

(assert (=> b!902089 (=> (not res!410173) (not e!589637))))

(assert (=> b!902089 (= res!410173 lt!334834)))

(declare-fun b!902090 () Bool)

(declare-fun res!410176 () Bool)

(assert (=> b!902090 (=> res!410176 e!589639)))

(assert (=> b!902090 (= res!410176 (not (is-ElementMatch!2368 lt!334770)))))

(assert (=> b!902090 (= e!589634 e!589639)))

(declare-fun b!902091 () Bool)

(assert (=> b!902091 (= e!589635 e!589638)))

(declare-fun res!410175 () Bool)

(assert (=> b!902091 (=> res!410175 e!589638)))

(assert (=> b!902091 (= res!410175 call!53846)))

(declare-fun b!902092 () Bool)

(assert (=> b!902092 (= e!589640 (matchR!906 (derivativeStep!445 lt!334770 (head!1598 (_2!6195 lt!334766))) (tail!1160 (_2!6195 lt!334766))))))

(declare-fun b!902093 () Bool)

(assert (=> b!902093 (= e!589638 (not (= (head!1598 (_2!6195 lt!334766)) (c!146098 lt!334770))))))

(declare-fun b!902094 () Bool)

(declare-fun res!410180 () Bool)

(assert (=> b!902094 (=> (not res!410180) (not e!589637))))

(assert (=> b!902094 (= res!410180 (not call!53846))))

(declare-fun b!902095 () Bool)

(assert (=> b!902095 (= e!589636 e!589634)))

(declare-fun c!146149 () Bool)

(assert (=> b!902095 (= c!146149 (is-EmptyLang!2368 lt!334770))))

(assert (= (and d!278466 c!146147) b!902082))

(assert (= (and d!278466 (not c!146147)) b!902092))

(assert (= (and d!278466 c!146148) b!902085))

(assert (= (and d!278466 (not c!146148)) b!902095))

(assert (= (and b!902095 c!146149) b!902083))

(assert (= (and b!902095 (not c!146149)) b!902090))

(assert (= (and b!902090 (not res!410176)) b!902089))

(assert (= (and b!902089 res!410173) b!902094))

(assert (= (and b!902094 res!410180) b!902088))

(assert (= (and b!902088 res!410178) b!902087))

(assert (= (and b!902089 (not res!410177)) b!902086))

(assert (= (and b!902086 res!410179) b!902091))

(assert (= (and b!902091 (not res!410175)) b!902084))

(assert (= (and b!902084 (not res!410174)) b!902093))

(assert (= (or b!902085 b!902091 b!902094) bm!53841))

(assert (=> bm!53841 m!1139175))

(assert (=> b!902088 m!1139177))

(assert (=> b!902088 m!1139177))

(assert (=> b!902088 m!1139179))

(assert (=> b!902092 m!1139181))

(assert (=> b!902092 m!1139181))

(declare-fun m!1139195 () Bool)

(assert (=> b!902092 m!1139195))

(assert (=> b!902092 m!1139177))

(assert (=> b!902092 m!1139195))

(assert (=> b!902092 m!1139177))

(declare-fun m!1139197 () Bool)

(assert (=> b!902092 m!1139197))

(assert (=> b!902084 m!1139177))

(assert (=> b!902084 m!1139177))

(assert (=> b!902084 m!1139179))

(declare-fun m!1139199 () Bool)

(assert (=> b!902082 m!1139199))

(assert (=> b!902087 m!1139181))

(assert (=> d!278466 m!1139175))

(declare-fun m!1139201 () Bool)

(assert (=> d!278466 m!1139201))

(assert (=> b!902093 m!1139181))

(assert (=> b!901872 d!278466))

(declare-fun bs!235276 () Bool)

(declare-fun d!278468 () Bool)

(assert (= bs!235276 (and d!278468 b!901877)))

(declare-fun lambda!28239 () Int)

(assert (=> bs!235276 (= lambda!28239 lambda!28223)))

(assert (=> bs!235276 (not (= lambda!28239 lambda!28224))))

(assert (=> d!278468 true))

(assert (=> d!278468 true))

(assert (=> d!278468 true))

(assert (=> d!278468 (= (isDefined!1653 (findConcatSeparation!117 (reg!2697 r!15766) lt!334758 Nil!9582 s!10566 s!10566)) (Exists!145 lambda!28239))))

(declare-fun lt!334837 () Unit!14339)

(declare-fun choose!5448 (Regex!2368 Regex!2368 List!9598) Unit!14339)

(assert (=> d!278468 (= lt!334837 (choose!5448 (reg!2697 r!15766) lt!334758 s!10566))))

(assert (=> d!278468 (validRegex!837 (reg!2697 r!15766))))

(assert (=> d!278468 (= (lemmaFindConcatSeparationEquivalentToExists!117 (reg!2697 r!15766) lt!334758 s!10566) lt!334837)))

(declare-fun bs!235277 () Bool)

(assert (= bs!235277 d!278468))

(assert (=> bs!235277 m!1139049))

(declare-fun m!1139203 () Bool)

(assert (=> bs!235277 m!1139203))

(assert (=> bs!235277 m!1139037))

(declare-fun m!1139205 () Bool)

(assert (=> bs!235277 m!1139205))

(declare-fun m!1139207 () Bool)

(assert (=> bs!235277 m!1139207))

(assert (=> bs!235277 m!1139037))

(assert (=> b!901877 d!278468))

(declare-fun d!278470 () Bool)

(declare-fun isEmpty!5789 (Option!2011) Bool)

(assert (=> d!278470 (= (isDefined!1653 lt!334771) (not (isEmpty!5789 lt!334771)))))

(declare-fun bs!235278 () Bool)

(assert (= bs!235278 d!278470))

(declare-fun m!1139209 () Bool)

(assert (=> bs!235278 m!1139209))

(assert (=> b!901877 d!278470))

(declare-fun d!278472 () Bool)

(assert (=> d!278472 (= (isEmpty!5787 s!10566) (is-Nil!9582 s!10566))))

(assert (=> b!901877 d!278472))

(declare-fun d!278474 () Bool)

(declare-fun choose!5449 (Int) Bool)

(assert (=> d!278474 (= (Exists!145 lambda!28224) (choose!5449 lambda!28224))))

(declare-fun bs!235279 () Bool)

(assert (= bs!235279 d!278474))

(declare-fun m!1139211 () Bool)

(assert (=> bs!235279 m!1139211))

(assert (=> b!901877 d!278474))

(declare-fun bs!235282 () Bool)

(declare-fun d!278476 () Bool)

(assert (= bs!235282 (and d!278476 b!901877)))

(declare-fun lambda!28246 () Int)

(assert (=> bs!235282 (= (= (Star!2368 (reg!2697 r!15766)) lt!334758) (= lambda!28246 lambda!28223))))

(assert (=> bs!235282 (not (= lambda!28246 lambda!28224))))

(declare-fun bs!235284 () Bool)

(assert (= bs!235284 (and d!278476 d!278468)))

(assert (=> bs!235284 (= (= (Star!2368 (reg!2697 r!15766)) lt!334758) (= lambda!28246 lambda!28239))))

(assert (=> d!278476 true))

(assert (=> d!278476 true))

(declare-fun lambda!28247 () Int)

(assert (=> bs!235282 (not (= lambda!28247 lambda!28223))))

(assert (=> bs!235282 (= (= (Star!2368 (reg!2697 r!15766)) lt!334758) (= lambda!28247 lambda!28224))))

(assert (=> bs!235284 (not (= lambda!28247 lambda!28239))))

(declare-fun bs!235285 () Bool)

(assert (= bs!235285 d!278476))

(assert (=> bs!235285 (not (= lambda!28247 lambda!28246))))

(assert (=> d!278476 true))

(assert (=> d!278476 true))

(assert (=> d!278476 (= (Exists!145 lambda!28246) (Exists!145 lambda!28247))))

(declare-fun lt!334840 () Unit!14339)

(declare-fun choose!5450 (Regex!2368 List!9598) Unit!14339)

(assert (=> d!278476 (= lt!334840 (choose!5450 (reg!2697 r!15766) s!10566))))

(assert (=> d!278476 (validRegex!837 (reg!2697 r!15766))))

(assert (=> d!278476 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!37 (reg!2697 r!15766) s!10566) lt!334840)))

(declare-fun m!1139217 () Bool)

(assert (=> bs!235285 m!1139217))

(declare-fun m!1139219 () Bool)

(assert (=> bs!235285 m!1139219))

(declare-fun m!1139221 () Bool)

(assert (=> bs!235285 m!1139221))

(assert (=> bs!235285 m!1139049))

(assert (=> b!901877 d!278476))

(declare-fun b!902163 () Bool)

(declare-fun e!589676 () Option!2011)

(assert (=> b!902163 (= e!589676 (Some!2010 (tuple2!10739 Nil!9582 s!10566)))))

(declare-fun b!902164 () Bool)

(declare-fun res!410225 () Bool)

(declare-fun e!589678 () Bool)

(assert (=> b!902164 (=> (not res!410225) (not e!589678))))

(declare-fun lt!334850 () Option!2011)

(assert (=> b!902164 (= res!410225 (matchR!906 (reg!2697 r!15766) (_1!6195 (get!3051 lt!334850))))))

(declare-fun b!902165 () Bool)

(declare-fun e!589677 () Bool)

(assert (=> b!902165 (= e!589677 (matchR!906 lt!334758 s!10566))))

(declare-fun d!278478 () Bool)

(declare-fun e!589679 () Bool)

(assert (=> d!278478 e!589679))

(declare-fun res!410223 () Bool)

(assert (=> d!278478 (=> res!410223 e!589679)))

(assert (=> d!278478 (= res!410223 e!589678)))

(declare-fun res!410226 () Bool)

(assert (=> d!278478 (=> (not res!410226) (not e!589678))))

(assert (=> d!278478 (= res!410226 (isDefined!1653 lt!334850))))

(assert (=> d!278478 (= lt!334850 e!589676)))

(declare-fun c!146164 () Bool)

(assert (=> d!278478 (= c!146164 e!589677)))

(declare-fun res!410224 () Bool)

(assert (=> d!278478 (=> (not res!410224) (not e!589677))))

(assert (=> d!278478 (= res!410224 (matchR!906 (reg!2697 r!15766) Nil!9582))))

(assert (=> d!278478 (validRegex!837 (reg!2697 r!15766))))

(assert (=> d!278478 (= (findConcatSeparation!117 (reg!2697 r!15766) lt!334758 Nil!9582 s!10566 s!10566) lt!334850)))

(declare-fun b!902166 () Bool)

(declare-fun res!410222 () Bool)

(assert (=> b!902166 (=> (not res!410222) (not e!589678))))

(assert (=> b!902166 (= res!410222 (matchR!906 lt!334758 (_2!6195 (get!3051 lt!334850))))))

(declare-fun b!902167 () Bool)

(declare-fun ++!2508 (List!9598 List!9598) List!9598)

(assert (=> b!902167 (= e!589678 (= (++!2508 (_1!6195 (get!3051 lt!334850)) (_2!6195 (get!3051 lt!334850))) s!10566))))

(declare-fun b!902168 () Bool)

(declare-fun e!589680 () Option!2011)

(assert (=> b!902168 (= e!589676 e!589680)))

(declare-fun c!146165 () Bool)

(assert (=> b!902168 (= c!146165 (is-Nil!9582 s!10566))))

(declare-fun b!902169 () Bool)

(assert (=> b!902169 (= e!589680 None!2010)))

(declare-fun b!902170 () Bool)

(assert (=> b!902170 (= e!589679 (not (isDefined!1653 lt!334850)))))

(declare-fun b!902171 () Bool)

(declare-fun lt!334849 () Unit!14339)

(declare-fun lt!334851 () Unit!14339)

(assert (=> b!902171 (= lt!334849 lt!334851)))

(assert (=> b!902171 (= (++!2508 (++!2508 Nil!9582 (Cons!9582 (h!14983 s!10566) Nil!9582)) (t!100644 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!132 (List!9598 C!5306 List!9598 List!9598) Unit!14339)

(assert (=> b!902171 (= lt!334851 (lemmaMoveElementToOtherListKeepsConcatEq!132 Nil!9582 (h!14983 s!10566) (t!100644 s!10566) s!10566))))

(assert (=> b!902171 (= e!589680 (findConcatSeparation!117 (reg!2697 r!15766) lt!334758 (++!2508 Nil!9582 (Cons!9582 (h!14983 s!10566) Nil!9582)) (t!100644 s!10566) s!10566))))

(assert (= (and d!278478 res!410224) b!902165))

(assert (= (and d!278478 c!146164) b!902163))

(assert (= (and d!278478 (not c!146164)) b!902168))

(assert (= (and b!902168 c!146165) b!902169))

(assert (= (and b!902168 (not c!146165)) b!902171))

(assert (= (and d!278478 res!410226) b!902164))

(assert (= (and b!902164 res!410225) b!902166))

(assert (= (and b!902166 res!410222) b!902167))

(assert (= (and d!278478 (not res!410223)) b!902170))

(declare-fun m!1139225 () Bool)

(assert (=> b!902171 m!1139225))

(assert (=> b!902171 m!1139225))

(declare-fun m!1139227 () Bool)

(assert (=> b!902171 m!1139227))

(declare-fun m!1139229 () Bool)

(assert (=> b!902171 m!1139229))

(assert (=> b!902171 m!1139225))

(declare-fun m!1139231 () Bool)

(assert (=> b!902171 m!1139231))

(declare-fun m!1139233 () Bool)

(assert (=> b!902167 m!1139233))

(declare-fun m!1139235 () Bool)

(assert (=> b!902167 m!1139235))

(declare-fun m!1139237 () Bool)

(assert (=> b!902165 m!1139237))

(assert (=> b!902164 m!1139233))

(declare-fun m!1139239 () Bool)

(assert (=> b!902164 m!1139239))

(declare-fun m!1139241 () Bool)

(assert (=> b!902170 m!1139241))

(assert (=> d!278478 m!1139241))

(declare-fun m!1139243 () Bool)

(assert (=> d!278478 m!1139243))

(assert (=> d!278478 m!1139049))

(assert (=> b!902166 m!1139233))

(declare-fun m!1139245 () Bool)

(assert (=> b!902166 m!1139245))

(assert (=> b!901877 d!278478))

(declare-fun d!278482 () Bool)

(assert (=> d!278482 (= (Exists!145 lambda!28223) (choose!5449 lambda!28223))))

(declare-fun bs!235286 () Bool)

(assert (= bs!235286 d!278482))

(declare-fun m!1139247 () Bool)

(assert (=> bs!235286 m!1139247))

(assert (=> b!901877 d!278482))

(declare-fun b!902198 () Bool)

(declare-fun e!589700 () Bool)

(declare-fun e!589704 () Bool)

(assert (=> b!902198 (= e!589700 e!589704)))

(declare-fun c!146171 () Bool)

(assert (=> b!902198 (= c!146171 (is-Star!2368 r!15766))))

(declare-fun bm!53856 () Bool)

(declare-fun call!53863 () Bool)

(declare-fun call!53862 () Bool)

(assert (=> bm!53856 (= call!53863 call!53862)))

(declare-fun b!902199 () Bool)

(declare-fun e!589699 () Bool)

(assert (=> b!902199 (= e!589699 call!53863)))

(declare-fun b!902200 () Bool)

(declare-fun e!589702 () Bool)

(assert (=> b!902200 (= e!589704 e!589702)))

(declare-fun res!410245 () Bool)

(assert (=> b!902200 (= res!410245 (not (nullable!633 (reg!2697 r!15766))))))

(assert (=> b!902200 (=> (not res!410245) (not e!589702))))

(declare-fun b!902201 () Bool)

(declare-fun e!589705 () Bool)

(assert (=> b!902201 (= e!589705 call!53863)))

(declare-fun b!902203 () Bool)

(declare-fun e!589701 () Bool)

(assert (=> b!902203 (= e!589704 e!589701)))

(declare-fun c!146170 () Bool)

(assert (=> b!902203 (= c!146170 (is-Union!2368 r!15766))))

(declare-fun b!902204 () Bool)

(declare-fun res!410244 () Bool)

(assert (=> b!902204 (=> (not res!410244) (not e!589705))))

(declare-fun call!53861 () Bool)

(assert (=> b!902204 (= res!410244 call!53861)))

(assert (=> b!902204 (= e!589701 e!589705)))

(declare-fun bm!53857 () Bool)

(assert (=> bm!53857 (= call!53861 (validRegex!837 (ite c!146170 (regOne!5249 r!15766) (regOne!5248 r!15766))))))

(declare-fun b!902205 () Bool)

(assert (=> b!902205 (= e!589702 call!53862)))

(declare-fun b!902202 () Bool)

(declare-fun res!410247 () Bool)

(declare-fun e!589703 () Bool)

(assert (=> b!902202 (=> res!410247 e!589703)))

(assert (=> b!902202 (= res!410247 (not (is-Concat!4201 r!15766)))))

(assert (=> b!902202 (= e!589701 e!589703)))

(declare-fun d!278484 () Bool)

(declare-fun res!410246 () Bool)

(assert (=> d!278484 (=> res!410246 e!589700)))

(assert (=> d!278484 (= res!410246 (is-ElementMatch!2368 r!15766))))

(assert (=> d!278484 (= (validRegex!837 r!15766) e!589700)))

(declare-fun bm!53858 () Bool)

(assert (=> bm!53858 (= call!53862 (validRegex!837 (ite c!146171 (reg!2697 r!15766) (ite c!146170 (regTwo!5249 r!15766) (regTwo!5248 r!15766)))))))

(declare-fun b!902206 () Bool)

(assert (=> b!902206 (= e!589703 e!589699)))

(declare-fun res!410243 () Bool)

(assert (=> b!902206 (=> (not res!410243) (not e!589699))))

(assert (=> b!902206 (= res!410243 call!53861)))

(assert (= (and d!278484 (not res!410246)) b!902198))

(assert (= (and b!902198 c!146171) b!902200))

(assert (= (and b!902198 (not c!146171)) b!902203))

(assert (= (and b!902200 res!410245) b!902205))

(assert (= (and b!902203 c!146170) b!902204))

(assert (= (and b!902203 (not c!146170)) b!902202))

(assert (= (and b!902204 res!410244) b!902201))

(assert (= (and b!902202 (not res!410247)) b!902206))

(assert (= (and b!902206 res!410243) b!902199))

(assert (= (or b!902201 b!902199) bm!53856))

(assert (= (or b!902204 b!902206) bm!53857))

(assert (= (or b!902205 bm!53856) bm!53858))

(assert (=> b!902200 m!1139169))

(declare-fun m!1139249 () Bool)

(assert (=> bm!53857 m!1139249))

(declare-fun m!1139251 () Bool)

(assert (=> bm!53858 m!1139251))

(assert (=> start!81160 d!278484))

(declare-fun d!278486 () Bool)

(assert (=> d!278486 (= (matchR!906 (reg!2697 r!15766) (_1!6195 lt!334766)) (matchRSpec!169 (reg!2697 r!15766) (_1!6195 lt!334766)))))

(declare-fun lt!334855 () Unit!14339)

(declare-fun choose!5451 (Regex!2368 List!9598) Unit!14339)

(assert (=> d!278486 (= lt!334855 (choose!5451 (reg!2697 r!15766) (_1!6195 lt!334766)))))

(assert (=> d!278486 (validRegex!837 (reg!2697 r!15766))))

(assert (=> d!278486 (= (mainMatchTheorem!169 (reg!2697 r!15766) (_1!6195 lt!334766)) lt!334855)))

(declare-fun bs!235287 () Bool)

(assert (= bs!235287 d!278486))

(assert (=> bs!235287 m!1139051))

(declare-fun m!1139253 () Bool)

(assert (=> bs!235287 m!1139253))

(declare-fun m!1139255 () Bool)

(assert (=> bs!235287 m!1139255))

(assert (=> bs!235287 m!1139049))

(assert (=> b!901866 d!278486))

(declare-fun bm!53860 () Bool)

(declare-fun call!53865 () Bool)

(assert (=> bm!53860 (= call!53865 (isEmpty!5787 (_1!6195 lt!334766)))))

(declare-fun b!902221 () Bool)

(declare-fun e!589719 () Bool)

(assert (=> b!902221 (= e!589719 (nullable!633 (reg!2697 r!15766)))))

(declare-fun b!902222 () Bool)

(declare-fun e!589713 () Bool)

(declare-fun lt!334856 () Bool)

(assert (=> b!902222 (= e!589713 (not lt!334856))))

(declare-fun b!902223 () Bool)

(declare-fun res!410257 () Bool)

(declare-fun e!589717 () Bool)

(assert (=> b!902223 (=> res!410257 e!589717)))

(assert (=> b!902223 (= res!410257 (not (isEmpty!5787 (tail!1160 (_1!6195 lt!334766)))))))

(declare-fun d!278488 () Bool)

(declare-fun e!589715 () Bool)

(assert (=> d!278488 e!589715))

(declare-fun c!146176 () Bool)

(assert (=> d!278488 (= c!146176 (is-EmptyExpr!2368 (reg!2697 r!15766)))))

(assert (=> d!278488 (= lt!334856 e!589719)))

(declare-fun c!146175 () Bool)

(assert (=> d!278488 (= c!146175 (isEmpty!5787 (_1!6195 lt!334766)))))

(assert (=> d!278488 (validRegex!837 (reg!2697 r!15766))))

(assert (=> d!278488 (= (matchR!906 (reg!2697 r!15766) (_1!6195 lt!334766)) lt!334856)))

(declare-fun b!902224 () Bool)

(assert (=> b!902224 (= e!589715 (= lt!334856 call!53865))))

(declare-fun b!902225 () Bool)

(declare-fun e!589718 () Bool)

(declare-fun e!589714 () Bool)

(assert (=> b!902225 (= e!589718 e!589714)))

(declare-fun res!410262 () Bool)

(assert (=> b!902225 (=> (not res!410262) (not e!589714))))

(assert (=> b!902225 (= res!410262 (not lt!334856))))

(declare-fun b!902226 () Bool)

(declare-fun e!589716 () Bool)

(assert (=> b!902226 (= e!589716 (= (head!1598 (_1!6195 lt!334766)) (c!146098 (reg!2697 r!15766))))))

(declare-fun b!902227 () Bool)

(declare-fun res!410261 () Bool)

(assert (=> b!902227 (=> (not res!410261) (not e!589716))))

(assert (=> b!902227 (= res!410261 (isEmpty!5787 (tail!1160 (_1!6195 lt!334766))))))

(declare-fun b!902228 () Bool)

(declare-fun res!410260 () Bool)

(assert (=> b!902228 (=> res!410260 e!589718)))

(assert (=> b!902228 (= res!410260 e!589716)))

(declare-fun res!410256 () Bool)

(assert (=> b!902228 (=> (not res!410256) (not e!589716))))

(assert (=> b!902228 (= res!410256 lt!334856)))

(declare-fun b!902229 () Bool)

(declare-fun res!410259 () Bool)

(assert (=> b!902229 (=> res!410259 e!589718)))

(assert (=> b!902229 (= res!410259 (not (is-ElementMatch!2368 (reg!2697 r!15766))))))

(assert (=> b!902229 (= e!589713 e!589718)))

(declare-fun b!902230 () Bool)

(assert (=> b!902230 (= e!589714 e!589717)))

(declare-fun res!410258 () Bool)

(assert (=> b!902230 (=> res!410258 e!589717)))

(assert (=> b!902230 (= res!410258 call!53865)))

(declare-fun b!902231 () Bool)

(assert (=> b!902231 (= e!589719 (matchR!906 (derivativeStep!445 (reg!2697 r!15766) (head!1598 (_1!6195 lt!334766))) (tail!1160 (_1!6195 lt!334766))))))

(declare-fun b!902232 () Bool)

(assert (=> b!902232 (= e!589717 (not (= (head!1598 (_1!6195 lt!334766)) (c!146098 (reg!2697 r!15766)))))))

(declare-fun b!902233 () Bool)

(declare-fun res!410263 () Bool)

(assert (=> b!902233 (=> (not res!410263) (not e!589716))))

(assert (=> b!902233 (= res!410263 (not call!53865))))

(declare-fun b!902234 () Bool)

(assert (=> b!902234 (= e!589715 e!589713)))

(declare-fun c!146177 () Bool)

(assert (=> b!902234 (= c!146177 (is-EmptyLang!2368 (reg!2697 r!15766)))))

(assert (= (and d!278488 c!146175) b!902221))

(assert (= (and d!278488 (not c!146175)) b!902231))

(assert (= (and d!278488 c!146176) b!902224))

(assert (= (and d!278488 (not c!146176)) b!902234))

(assert (= (and b!902234 c!146177) b!902222))

(assert (= (and b!902234 (not c!146177)) b!902229))

(assert (= (and b!902229 (not res!410259)) b!902228))

(assert (= (and b!902228 res!410256) b!902233))

(assert (= (and b!902233 res!410263) b!902227))

(assert (= (and b!902227 res!410261) b!902226))

(assert (= (and b!902228 (not res!410260)) b!902225))

(assert (= (and b!902225 res!410262) b!902230))

(assert (= (and b!902230 (not res!410258)) b!902223))

(assert (= (and b!902223 (not res!410257)) b!902232))

(assert (= (or b!902224 b!902230 b!902233) bm!53860))

(assert (=> bm!53860 m!1139145))

(assert (=> b!902227 m!1139147))

(assert (=> b!902227 m!1139147))

(assert (=> b!902227 m!1139149))

(assert (=> b!902231 m!1139151))

(assert (=> b!902231 m!1139151))

(declare-fun m!1139257 () Bool)

(assert (=> b!902231 m!1139257))

(assert (=> b!902231 m!1139147))

(assert (=> b!902231 m!1139257))

(assert (=> b!902231 m!1139147))

(declare-fun m!1139259 () Bool)

(assert (=> b!902231 m!1139259))

(assert (=> b!902223 m!1139147))

(assert (=> b!902223 m!1139147))

(assert (=> b!902223 m!1139149))

(assert (=> b!902221 m!1139169))

(assert (=> b!902226 m!1139151))

(assert (=> d!278488 m!1139145))

(assert (=> d!278488 m!1139049))

(assert (=> b!902232 m!1139151))

(assert (=> b!901865 d!278488))

(declare-fun d!278490 () Bool)

(assert (=> d!278490 (= (get!3051 lt!334771) (v!19427 lt!334771))))

(assert (=> b!901865 d!278490))

(declare-fun bm!53861 () Bool)

(declare-fun call!53866 () Bool)

(assert (=> bm!53861 (= call!53866 (isEmpty!5787 (_2!6195 lt!334766)))))

(declare-fun b!902235 () Bool)

(declare-fun e!589726 () Bool)

(assert (=> b!902235 (= e!589726 (nullable!633 lt!334758))))

(declare-fun b!902236 () Bool)

(declare-fun e!589720 () Bool)

(declare-fun lt!334857 () Bool)

(assert (=> b!902236 (= e!589720 (not lt!334857))))

(declare-fun b!902237 () Bool)

(declare-fun res!410265 () Bool)

(declare-fun e!589724 () Bool)

(assert (=> b!902237 (=> res!410265 e!589724)))

(assert (=> b!902237 (= res!410265 (not (isEmpty!5787 (tail!1160 (_2!6195 lt!334766)))))))

(declare-fun d!278492 () Bool)

(declare-fun e!589722 () Bool)

(assert (=> d!278492 e!589722))

(declare-fun c!146179 () Bool)

(assert (=> d!278492 (= c!146179 (is-EmptyExpr!2368 lt!334758))))

(assert (=> d!278492 (= lt!334857 e!589726)))

(declare-fun c!146178 () Bool)

(assert (=> d!278492 (= c!146178 (isEmpty!5787 (_2!6195 lt!334766)))))

(assert (=> d!278492 (validRegex!837 lt!334758)))

(assert (=> d!278492 (= (matchR!906 lt!334758 (_2!6195 lt!334766)) lt!334857)))

(declare-fun b!902238 () Bool)

(assert (=> b!902238 (= e!589722 (= lt!334857 call!53866))))

(declare-fun b!902239 () Bool)

(declare-fun e!589725 () Bool)

(declare-fun e!589721 () Bool)

(assert (=> b!902239 (= e!589725 e!589721)))

(declare-fun res!410270 () Bool)

(assert (=> b!902239 (=> (not res!410270) (not e!589721))))

(assert (=> b!902239 (= res!410270 (not lt!334857))))

(declare-fun b!902240 () Bool)

(declare-fun e!589723 () Bool)

(assert (=> b!902240 (= e!589723 (= (head!1598 (_2!6195 lt!334766)) (c!146098 lt!334758)))))

(declare-fun b!902241 () Bool)

(declare-fun res!410269 () Bool)

(assert (=> b!902241 (=> (not res!410269) (not e!589723))))

(assert (=> b!902241 (= res!410269 (isEmpty!5787 (tail!1160 (_2!6195 lt!334766))))))

(declare-fun b!902242 () Bool)

(declare-fun res!410268 () Bool)

(assert (=> b!902242 (=> res!410268 e!589725)))

(assert (=> b!902242 (= res!410268 e!589723)))

(declare-fun res!410264 () Bool)

(assert (=> b!902242 (=> (not res!410264) (not e!589723))))

(assert (=> b!902242 (= res!410264 lt!334857)))

(declare-fun b!902243 () Bool)

(declare-fun res!410267 () Bool)

(assert (=> b!902243 (=> res!410267 e!589725)))

(assert (=> b!902243 (= res!410267 (not (is-ElementMatch!2368 lt!334758)))))

(assert (=> b!902243 (= e!589720 e!589725)))

(declare-fun b!902244 () Bool)

(assert (=> b!902244 (= e!589721 e!589724)))

(declare-fun res!410266 () Bool)

(assert (=> b!902244 (=> res!410266 e!589724)))

(assert (=> b!902244 (= res!410266 call!53866)))

(declare-fun b!902245 () Bool)

(assert (=> b!902245 (= e!589726 (matchR!906 (derivativeStep!445 lt!334758 (head!1598 (_2!6195 lt!334766))) (tail!1160 (_2!6195 lt!334766))))))

(declare-fun b!902246 () Bool)

(assert (=> b!902246 (= e!589724 (not (= (head!1598 (_2!6195 lt!334766)) (c!146098 lt!334758))))))

(declare-fun b!902247 () Bool)

(declare-fun res!410271 () Bool)

(assert (=> b!902247 (=> (not res!410271) (not e!589723))))

(assert (=> b!902247 (= res!410271 (not call!53866))))

(declare-fun b!902248 () Bool)

(assert (=> b!902248 (= e!589722 e!589720)))

(declare-fun c!146180 () Bool)

(assert (=> b!902248 (= c!146180 (is-EmptyLang!2368 lt!334758))))

(assert (= (and d!278492 c!146178) b!902235))

(assert (= (and d!278492 (not c!146178)) b!902245))

(assert (= (and d!278492 c!146179) b!902238))

(assert (= (and d!278492 (not c!146179)) b!902248))

(assert (= (and b!902248 c!146180) b!902236))

(assert (= (and b!902248 (not c!146180)) b!902243))

(assert (= (and b!902243 (not res!410267)) b!902242))

(assert (= (and b!902242 res!410264) b!902247))

(assert (= (and b!902247 res!410271) b!902241))

(assert (= (and b!902241 res!410269) b!902240))

(assert (= (and b!902242 (not res!410268)) b!902239))

(assert (= (and b!902239 res!410270) b!902244))

(assert (= (and b!902244 (not res!410266)) b!902237))

(assert (= (and b!902237 (not res!410265)) b!902246))

(assert (= (or b!902238 b!902244 b!902247) bm!53861))

(assert (=> bm!53861 m!1139175))

(assert (=> b!902241 m!1139177))

(assert (=> b!902241 m!1139177))

(assert (=> b!902241 m!1139179))

(assert (=> b!902245 m!1139181))

(assert (=> b!902245 m!1139181))

(declare-fun m!1139273 () Bool)

(assert (=> b!902245 m!1139273))

(assert (=> b!902245 m!1139177))

(assert (=> b!902245 m!1139273))

(assert (=> b!902245 m!1139177))

(declare-fun m!1139275 () Bool)

(assert (=> b!902245 m!1139275))

(assert (=> b!902237 m!1139177))

(assert (=> b!902237 m!1139177))

(assert (=> b!902237 m!1139179))

(assert (=> b!902235 m!1139135))

(assert (=> b!902240 m!1139181))

(assert (=> d!278492 m!1139175))

(assert (=> d!278492 m!1139131))

(assert (=> b!902246 m!1139181))

(assert (=> b!901870 d!278492))

(declare-fun bs!235289 () Bool)

(declare-fun b!902302 () Bool)

(assert (= bs!235289 (and b!902302 d!278476)))

(declare-fun lambda!28252 () Int)

(assert (=> bs!235289 (= (= r!15766 (Star!2368 (reg!2697 r!15766))) (= lambda!28252 lambda!28247))))

(declare-fun bs!235290 () Bool)

(assert (= bs!235290 (and b!902302 d!278468)))

(assert (=> bs!235290 (not (= lambda!28252 lambda!28239))))

(assert (=> bs!235289 (not (= lambda!28252 lambda!28246))))

(declare-fun bs!235291 () Bool)

(assert (= bs!235291 (and b!902302 b!901877)))

(assert (=> bs!235291 (= (= r!15766 lt!334758) (= lambda!28252 lambda!28224))))

(assert (=> bs!235291 (not (= lambda!28252 lambda!28223))))

(assert (=> b!902302 true))

(assert (=> b!902302 true))

(declare-fun bs!235292 () Bool)

(declare-fun b!902304 () Bool)

(assert (= bs!235292 (and b!902304 d!278476)))

(declare-fun lambda!28253 () Int)

(assert (=> bs!235292 (not (= lambda!28253 lambda!28247))))

(declare-fun bs!235293 () Bool)

(assert (= bs!235293 (and b!902304 d!278468)))

(assert (=> bs!235293 (not (= lambda!28253 lambda!28239))))

(assert (=> bs!235292 (not (= lambda!28253 lambda!28246))))

(declare-fun bs!235294 () Bool)

(assert (= bs!235294 (and b!902304 b!901877)))

(assert (=> bs!235294 (not (= lambda!28253 lambda!28224))))

(assert (=> bs!235294 (not (= lambda!28253 lambda!28223))))

(declare-fun bs!235295 () Bool)

(assert (= bs!235295 (and b!902304 b!902302)))

(assert (=> bs!235295 (not (= lambda!28253 lambda!28252))))

(assert (=> b!902304 true))

(assert (=> b!902304 true))

(declare-fun d!278496 () Bool)

(declare-fun c!146194 () Bool)

(assert (=> d!278496 (= c!146194 (is-EmptyExpr!2368 r!15766))))

(declare-fun e!589760 () Bool)

(assert (=> d!278496 (= (matchRSpec!169 r!15766 s!10566) e!589760)))

(declare-fun b!902299 () Bool)

(declare-fun e!589765 () Bool)

(assert (=> b!902299 (= e!589760 e!589765)))

(declare-fun res!410299 () Bool)

(assert (=> b!902299 (= res!410299 (not (is-EmptyLang!2368 r!15766)))))

(assert (=> b!902299 (=> (not res!410299) (not e!589765))))

(declare-fun b!902300 () Bool)

(declare-fun e!589759 () Bool)

(assert (=> b!902300 (= e!589759 (matchRSpec!169 (regTwo!5249 r!15766) s!10566))))

(declare-fun b!902301 () Bool)

(declare-fun res!410300 () Bool)

(declare-fun e!589761 () Bool)

(assert (=> b!902301 (=> res!410300 e!589761)))

(declare-fun call!53876 () Bool)

(assert (=> b!902301 (= res!410300 call!53876)))

(declare-fun e!589764 () Bool)

(assert (=> b!902301 (= e!589764 e!589761)))

(declare-fun c!146196 () Bool)

(declare-fun bm!53870 () Bool)

(declare-fun call!53875 () Bool)

(assert (=> bm!53870 (= call!53875 (Exists!145 (ite c!146196 lambda!28252 lambda!28253)))))

(declare-fun bm!53871 () Bool)

(assert (=> bm!53871 (= call!53876 (isEmpty!5787 s!10566))))

(assert (=> b!902302 (= e!589761 call!53875)))

(declare-fun b!902303 () Bool)

(declare-fun c!146193 () Bool)

(assert (=> b!902303 (= c!146193 (is-Union!2368 r!15766))))

(declare-fun e!589762 () Bool)

(declare-fun e!589763 () Bool)

(assert (=> b!902303 (= e!589762 e!589763)))

(assert (=> b!902304 (= e!589764 call!53875)))

(declare-fun b!902305 () Bool)

(assert (=> b!902305 (= e!589763 e!589759)))

(declare-fun res!410298 () Bool)

(assert (=> b!902305 (= res!410298 (matchRSpec!169 (regOne!5249 r!15766) s!10566))))

(assert (=> b!902305 (=> res!410298 e!589759)))

(declare-fun b!902306 () Bool)

(declare-fun c!146195 () Bool)

(assert (=> b!902306 (= c!146195 (is-ElementMatch!2368 r!15766))))

(assert (=> b!902306 (= e!589765 e!589762)))

(declare-fun b!902307 () Bool)

(assert (=> b!902307 (= e!589760 call!53876)))

(declare-fun b!902308 () Bool)

(assert (=> b!902308 (= e!589762 (= s!10566 (Cons!9582 (c!146098 r!15766) Nil!9582)))))

(declare-fun b!902309 () Bool)

(assert (=> b!902309 (= e!589763 e!589764)))

(assert (=> b!902309 (= c!146196 (is-Star!2368 r!15766))))

(assert (= (and d!278496 c!146194) b!902307))

(assert (= (and d!278496 (not c!146194)) b!902299))

(assert (= (and b!902299 res!410299) b!902306))

(assert (= (and b!902306 c!146195) b!902308))

(assert (= (and b!902306 (not c!146195)) b!902303))

(assert (= (and b!902303 c!146193) b!902305))

(assert (= (and b!902303 (not c!146193)) b!902309))

(assert (= (and b!902305 (not res!410298)) b!902300))

(assert (= (and b!902309 c!146196) b!902301))

(assert (= (and b!902309 (not c!146196)) b!902304))

(assert (= (and b!902301 (not res!410300)) b!902302))

(assert (= (or b!902302 b!902304) bm!53870))

(assert (= (or b!902307 b!902301) bm!53871))

(declare-fun m!1139279 () Bool)

(assert (=> b!902300 m!1139279))

(declare-fun m!1139281 () Bool)

(assert (=> bm!53870 m!1139281))

(assert (=> bm!53871 m!1139041))

(declare-fun m!1139283 () Bool)

(assert (=> b!902305 m!1139283))

(assert (=> b!901875 d!278496))

(declare-fun bm!53874 () Bool)

(declare-fun call!53879 () Bool)

(assert (=> bm!53874 (= call!53879 (isEmpty!5787 s!10566))))

(declare-fun b!902310 () Bool)

(declare-fun e!589772 () Bool)

(assert (=> b!902310 (= e!589772 (nullable!633 r!15766))))

(declare-fun b!902311 () Bool)

(declare-fun e!589766 () Bool)

(declare-fun lt!334861 () Bool)

(assert (=> b!902311 (= e!589766 (not lt!334861))))

(declare-fun b!902312 () Bool)

(declare-fun res!410302 () Bool)

(declare-fun e!589770 () Bool)

(assert (=> b!902312 (=> res!410302 e!589770)))

(assert (=> b!902312 (= res!410302 (not (isEmpty!5787 (tail!1160 s!10566))))))

(declare-fun d!278500 () Bool)

(declare-fun e!589768 () Bool)

(assert (=> d!278500 e!589768))

(declare-fun c!146198 () Bool)

(assert (=> d!278500 (= c!146198 (is-EmptyExpr!2368 r!15766))))

(assert (=> d!278500 (= lt!334861 e!589772)))

(declare-fun c!146197 () Bool)

(assert (=> d!278500 (= c!146197 (isEmpty!5787 s!10566))))

(assert (=> d!278500 (validRegex!837 r!15766)))

(assert (=> d!278500 (= (matchR!906 r!15766 s!10566) lt!334861)))

(declare-fun b!902313 () Bool)

(assert (=> b!902313 (= e!589768 (= lt!334861 call!53879))))

(declare-fun b!902314 () Bool)

(declare-fun e!589771 () Bool)

(declare-fun e!589767 () Bool)

(assert (=> b!902314 (= e!589771 e!589767)))

(declare-fun res!410307 () Bool)

(assert (=> b!902314 (=> (not res!410307) (not e!589767))))

(assert (=> b!902314 (= res!410307 (not lt!334861))))

(declare-fun b!902315 () Bool)

(declare-fun e!589769 () Bool)

(assert (=> b!902315 (= e!589769 (= (head!1598 s!10566) (c!146098 r!15766)))))

(declare-fun b!902316 () Bool)

(declare-fun res!410306 () Bool)

(assert (=> b!902316 (=> (not res!410306) (not e!589769))))

(assert (=> b!902316 (= res!410306 (isEmpty!5787 (tail!1160 s!10566)))))

(declare-fun b!902317 () Bool)

(declare-fun res!410305 () Bool)

(assert (=> b!902317 (=> res!410305 e!589771)))

(assert (=> b!902317 (= res!410305 e!589769)))

(declare-fun res!410301 () Bool)

(assert (=> b!902317 (=> (not res!410301) (not e!589769))))

(assert (=> b!902317 (= res!410301 lt!334861)))

(declare-fun b!902318 () Bool)

(declare-fun res!410304 () Bool)

(assert (=> b!902318 (=> res!410304 e!589771)))

(assert (=> b!902318 (= res!410304 (not (is-ElementMatch!2368 r!15766)))))

(assert (=> b!902318 (= e!589766 e!589771)))

(declare-fun b!902319 () Bool)

(assert (=> b!902319 (= e!589767 e!589770)))

(declare-fun res!410303 () Bool)

(assert (=> b!902319 (=> res!410303 e!589770)))

(assert (=> b!902319 (= res!410303 call!53879)))

(declare-fun b!902320 () Bool)

(assert (=> b!902320 (= e!589772 (matchR!906 (derivativeStep!445 r!15766 (head!1598 s!10566)) (tail!1160 s!10566)))))

(declare-fun b!902321 () Bool)

(assert (=> b!902321 (= e!589770 (not (= (head!1598 s!10566) (c!146098 r!15766))))))

(declare-fun b!902322 () Bool)

(declare-fun res!410308 () Bool)

(assert (=> b!902322 (=> (not res!410308) (not e!589769))))

(assert (=> b!902322 (= res!410308 (not call!53879))))

(declare-fun b!902323 () Bool)

(assert (=> b!902323 (= e!589768 e!589766)))

(declare-fun c!146199 () Bool)

(assert (=> b!902323 (= c!146199 (is-EmptyLang!2368 r!15766))))

(assert (= (and d!278500 c!146197) b!902310))

(assert (= (and d!278500 (not c!146197)) b!902320))

(assert (= (and d!278500 c!146198) b!902313))

(assert (= (and d!278500 (not c!146198)) b!902323))

(assert (= (and b!902323 c!146199) b!902311))

(assert (= (and b!902323 (not c!146199)) b!902318))

(assert (= (and b!902318 (not res!410304)) b!902317))

(assert (= (and b!902317 res!410301) b!902322))

(assert (= (and b!902322 res!410308) b!902316))

(assert (= (and b!902316 res!410306) b!902315))

(assert (= (and b!902317 (not res!410305)) b!902314))

(assert (= (and b!902314 res!410307) b!902319))

(assert (= (and b!902319 (not res!410303)) b!902312))

(assert (= (and b!902312 (not res!410302)) b!902321))

(assert (= (or b!902313 b!902319 b!902322) bm!53874))

(assert (=> bm!53874 m!1139041))

(declare-fun m!1139285 () Bool)

(assert (=> b!902316 m!1139285))

(assert (=> b!902316 m!1139285))

(declare-fun m!1139287 () Bool)

(assert (=> b!902316 m!1139287))

(declare-fun m!1139289 () Bool)

(assert (=> b!902320 m!1139289))

(assert (=> b!902320 m!1139289))

(declare-fun m!1139291 () Bool)

(assert (=> b!902320 m!1139291))

(assert (=> b!902320 m!1139285))

(assert (=> b!902320 m!1139291))

(assert (=> b!902320 m!1139285))

(declare-fun m!1139293 () Bool)

(assert (=> b!902320 m!1139293))

(assert (=> b!902312 m!1139285))

(assert (=> b!902312 m!1139285))

(assert (=> b!902312 m!1139287))

(declare-fun m!1139295 () Bool)

(assert (=> b!902310 m!1139295))

(assert (=> b!902315 m!1139289))

(assert (=> d!278500 m!1139041))

(assert (=> d!278500 m!1139029))

(assert (=> b!902321 m!1139289))

(assert (=> b!901875 d!278500))

(declare-fun d!278502 () Bool)

(assert (=> d!278502 (= (matchR!906 r!15766 s!10566) (matchRSpec!169 r!15766 s!10566))))

(declare-fun lt!334862 () Unit!14339)

(assert (=> d!278502 (= lt!334862 (choose!5451 r!15766 s!10566))))

(assert (=> d!278502 (validRegex!837 r!15766)))

(assert (=> d!278502 (= (mainMatchTheorem!169 r!15766 s!10566) lt!334862)))

(declare-fun bs!235296 () Bool)

(assert (= bs!235296 d!278502))

(assert (=> bs!235296 m!1139075))

(assert (=> bs!235296 m!1139073))

(declare-fun m!1139297 () Bool)

(assert (=> bs!235296 m!1139297))

(assert (=> bs!235296 m!1139029))

(assert (=> b!901875 d!278502))

(declare-fun b!902324 () Bool)

(declare-fun e!589774 () Bool)

(declare-fun e!589778 () Bool)

(assert (=> b!902324 (= e!589774 e!589778)))

(declare-fun c!146201 () Bool)

(assert (=> b!902324 (= c!146201 (is-Star!2368 (reg!2697 r!15766)))))

(declare-fun bm!53875 () Bool)

(declare-fun call!53882 () Bool)

(declare-fun call!53881 () Bool)

(assert (=> bm!53875 (= call!53882 call!53881)))

(declare-fun b!902325 () Bool)

(declare-fun e!589773 () Bool)

(assert (=> b!902325 (= e!589773 call!53882)))

(declare-fun b!902326 () Bool)

(declare-fun e!589776 () Bool)

(assert (=> b!902326 (= e!589778 e!589776)))

(declare-fun res!410311 () Bool)

(assert (=> b!902326 (= res!410311 (not (nullable!633 (reg!2697 (reg!2697 r!15766)))))))

(assert (=> b!902326 (=> (not res!410311) (not e!589776))))

(declare-fun b!902327 () Bool)

(declare-fun e!589779 () Bool)

(assert (=> b!902327 (= e!589779 call!53882)))

(declare-fun b!902329 () Bool)

(declare-fun e!589775 () Bool)

(assert (=> b!902329 (= e!589778 e!589775)))

(declare-fun c!146200 () Bool)

(assert (=> b!902329 (= c!146200 (is-Union!2368 (reg!2697 r!15766)))))

(declare-fun b!902330 () Bool)

(declare-fun res!410310 () Bool)

(assert (=> b!902330 (=> (not res!410310) (not e!589779))))

(declare-fun call!53880 () Bool)

(assert (=> b!902330 (= res!410310 call!53880)))

(assert (=> b!902330 (= e!589775 e!589779)))

(declare-fun bm!53876 () Bool)

(assert (=> bm!53876 (= call!53880 (validRegex!837 (ite c!146200 (regOne!5249 (reg!2697 r!15766)) (regOne!5248 (reg!2697 r!15766)))))))

(declare-fun b!902331 () Bool)

(assert (=> b!902331 (= e!589776 call!53881)))

(declare-fun b!902328 () Bool)

(declare-fun res!410313 () Bool)

(declare-fun e!589777 () Bool)

(assert (=> b!902328 (=> res!410313 e!589777)))

(assert (=> b!902328 (= res!410313 (not (is-Concat!4201 (reg!2697 r!15766))))))

(assert (=> b!902328 (= e!589775 e!589777)))

(declare-fun d!278504 () Bool)

(declare-fun res!410312 () Bool)

(assert (=> d!278504 (=> res!410312 e!589774)))

(assert (=> d!278504 (= res!410312 (is-ElementMatch!2368 (reg!2697 r!15766)))))

(assert (=> d!278504 (= (validRegex!837 (reg!2697 r!15766)) e!589774)))

(declare-fun bm!53877 () Bool)

(assert (=> bm!53877 (= call!53881 (validRegex!837 (ite c!146201 (reg!2697 (reg!2697 r!15766)) (ite c!146200 (regTwo!5249 (reg!2697 r!15766)) (regTwo!5248 (reg!2697 r!15766))))))))

(declare-fun b!902332 () Bool)

(assert (=> b!902332 (= e!589777 e!589773)))

(declare-fun res!410309 () Bool)

(assert (=> b!902332 (=> (not res!410309) (not e!589773))))

(assert (=> b!902332 (= res!410309 call!53880)))

(assert (= (and d!278504 (not res!410312)) b!902324))

(assert (= (and b!902324 c!146201) b!902326))

(assert (= (and b!902324 (not c!146201)) b!902329))

(assert (= (and b!902326 res!410311) b!902331))

(assert (= (and b!902329 c!146200) b!902330))

(assert (= (and b!902329 (not c!146200)) b!902328))

(assert (= (and b!902330 res!410310) b!902327))

(assert (= (and b!902328 (not res!410313)) b!902332))

(assert (= (and b!902332 res!410309) b!902325))

(assert (= (or b!902327 b!902325) bm!53875))

(assert (= (or b!902330 b!902332) bm!53876))

(assert (= (or b!902331 bm!53875) bm!53877))

(declare-fun m!1139299 () Bool)

(assert (=> b!902326 m!1139299))

(declare-fun m!1139301 () Bool)

(assert (=> bm!53876 m!1139301))

(declare-fun m!1139303 () Bool)

(assert (=> bm!53877 m!1139303))

(assert (=> b!901869 d!278504))

(declare-fun e!589782 () Bool)

(assert (=> b!901873 (= tp!282733 e!589782)))

(declare-fun b!902343 () Bool)

(assert (=> b!902343 (= e!589782 tp_is_empty!4379)))

(declare-fun b!902345 () Bool)

(declare-fun tp!282764 () Bool)

(assert (=> b!902345 (= e!589782 tp!282764)))

(declare-fun b!902344 () Bool)

(declare-fun tp!282766 () Bool)

(declare-fun tp!282763 () Bool)

(assert (=> b!902344 (= e!589782 (and tp!282766 tp!282763))))

(declare-fun b!902346 () Bool)

(declare-fun tp!282767 () Bool)

(declare-fun tp!282765 () Bool)

(assert (=> b!902346 (= e!589782 (and tp!282767 tp!282765))))

(assert (= (and b!901873 (is-ElementMatch!2368 (regOne!5248 r!15766))) b!902343))

(assert (= (and b!901873 (is-Concat!4201 (regOne!5248 r!15766))) b!902344))

(assert (= (and b!901873 (is-Star!2368 (regOne!5248 r!15766))) b!902345))

(assert (= (and b!901873 (is-Union!2368 (regOne!5248 r!15766))) b!902346))

(declare-fun e!589783 () Bool)

(assert (=> b!901873 (= tp!282730 e!589783)))

(declare-fun b!902347 () Bool)

(assert (=> b!902347 (= e!589783 tp_is_empty!4379)))

(declare-fun b!902349 () Bool)

(declare-fun tp!282769 () Bool)

(assert (=> b!902349 (= e!589783 tp!282769)))

(declare-fun b!902348 () Bool)

(declare-fun tp!282771 () Bool)

(declare-fun tp!282768 () Bool)

(assert (=> b!902348 (= e!589783 (and tp!282771 tp!282768))))

(declare-fun b!902350 () Bool)

(declare-fun tp!282772 () Bool)

(declare-fun tp!282770 () Bool)

(assert (=> b!902350 (= e!589783 (and tp!282772 tp!282770))))

(assert (= (and b!901873 (is-ElementMatch!2368 (regTwo!5248 r!15766))) b!902347))

(assert (= (and b!901873 (is-Concat!4201 (regTwo!5248 r!15766))) b!902348))

(assert (= (and b!901873 (is-Star!2368 (regTwo!5248 r!15766))) b!902349))

(assert (= (and b!901873 (is-Union!2368 (regTwo!5248 r!15766))) b!902350))

(declare-fun b!902364 () Bool)

(declare-fun e!589793 () Bool)

(declare-fun tp!282775 () Bool)

(assert (=> b!902364 (= e!589793 (and tp_is_empty!4379 tp!282775))))

(assert (=> b!901871 (= tp!282734 e!589793)))

(assert (= (and b!901871 (is-Cons!9582 (t!100644 s!10566))) b!902364))

(declare-fun e!589794 () Bool)

(assert (=> b!901876 (= tp!282729 e!589794)))

(declare-fun b!902365 () Bool)

(assert (=> b!902365 (= e!589794 tp_is_empty!4379)))

(declare-fun b!902367 () Bool)

(declare-fun tp!282777 () Bool)

(assert (=> b!902367 (= e!589794 tp!282777)))

(declare-fun b!902366 () Bool)

(declare-fun tp!282779 () Bool)

(declare-fun tp!282776 () Bool)

(assert (=> b!902366 (= e!589794 (and tp!282779 tp!282776))))

(declare-fun b!902368 () Bool)

(declare-fun tp!282780 () Bool)

(declare-fun tp!282778 () Bool)

(assert (=> b!902368 (= e!589794 (and tp!282780 tp!282778))))

(assert (= (and b!901876 (is-ElementMatch!2368 (regOne!5249 r!15766))) b!902365))

(assert (= (and b!901876 (is-Concat!4201 (regOne!5249 r!15766))) b!902366))

(assert (= (and b!901876 (is-Star!2368 (regOne!5249 r!15766))) b!902367))

(assert (= (and b!901876 (is-Union!2368 (regOne!5249 r!15766))) b!902368))

(declare-fun e!589795 () Bool)

(assert (=> b!901876 (= tp!282732 e!589795)))

(declare-fun b!902369 () Bool)

(assert (=> b!902369 (= e!589795 tp_is_empty!4379)))

(declare-fun b!902371 () Bool)

(declare-fun tp!282782 () Bool)

(assert (=> b!902371 (= e!589795 tp!282782)))

(declare-fun b!902370 () Bool)

(declare-fun tp!282784 () Bool)

(declare-fun tp!282781 () Bool)

(assert (=> b!902370 (= e!589795 (and tp!282784 tp!282781))))

(declare-fun b!902372 () Bool)

(declare-fun tp!282785 () Bool)

(declare-fun tp!282783 () Bool)

(assert (=> b!902372 (= e!589795 (and tp!282785 tp!282783))))

(assert (= (and b!901876 (is-ElementMatch!2368 (regTwo!5249 r!15766))) b!902369))

(assert (= (and b!901876 (is-Concat!4201 (regTwo!5249 r!15766))) b!902370))

(assert (= (and b!901876 (is-Star!2368 (regTwo!5249 r!15766))) b!902371))

(assert (= (and b!901876 (is-Union!2368 (regTwo!5249 r!15766))) b!902372))

(declare-fun e!589796 () Bool)

(assert (=> b!901864 (= tp!282731 e!589796)))

(declare-fun b!902373 () Bool)

(assert (=> b!902373 (= e!589796 tp_is_empty!4379)))

(declare-fun b!902375 () Bool)

(declare-fun tp!282787 () Bool)

(assert (=> b!902375 (= e!589796 tp!282787)))

(declare-fun b!902374 () Bool)

(declare-fun tp!282789 () Bool)

(declare-fun tp!282786 () Bool)

(assert (=> b!902374 (= e!589796 (and tp!282789 tp!282786))))

(declare-fun b!902376 () Bool)

(declare-fun tp!282790 () Bool)

(declare-fun tp!282788 () Bool)

(assert (=> b!902376 (= e!589796 (and tp!282790 tp!282788))))

(assert (= (and b!901864 (is-ElementMatch!2368 (reg!2697 r!15766))) b!902373))

(assert (= (and b!901864 (is-Concat!4201 (reg!2697 r!15766))) b!902374))

(assert (= (and b!901864 (is-Star!2368 (reg!2697 r!15766))) b!902375))

(assert (= (and b!901864 (is-Union!2368 (reg!2697 r!15766))) b!902376))

(push 1)

(assert (not d!278488))

(assert (not bm!53839))

(assert (not b!902246))

(assert (not b!902164))

(assert (not bm!53840))

(assert (not b!902221))

(assert (not b!902171))

(assert (not bm!53841))

(assert (not b!902370))

(assert (not b!902312))

(assert (not b!902072))

(assert (not b!902025))

(assert (not bm!53829))

(assert (not b!902320))

(assert (not d!278448))

(assert (not b!902237))

(assert (not b!902064))

(assert (not b!902082))

(assert (not bm!53861))

(assert (not d!278486))

(assert (not b!902305))

(assert (not bm!53876))

(assert (not b!902300))

(assert (not d!278464))

(assert (not b!902017))

(assert (not b!902346))

(assert (not b!902092))

(assert tp_is_empty!4379)

(assert (not d!278492))

(assert (not b!902166))

(assert (not b!902020))

(assert (not bm!53831))

(assert (not b!902374))

(assert (not b!902084))

(assert (not d!278500))

(assert (not bm!53837))

(assert (not b!902241))

(assert (not bm!53834))

(assert (not b!902015))

(assert (not b!902371))

(assert (not b!902087))

(assert (not d!278502))

(assert (not b!901971))

(assert (not b!902316))

(assert (not b!902345))

(assert (not b!902240))

(assert (not b!902073))

(assert (not b!902315))

(assert (not b!902326))

(assert (not d!278476))

(assert (not bm!53858))

(assert (not bm!53874))

(assert (not bm!53871))

(assert (not b!902367))

(assert (not bm!53877))

(assert (not b!902375))

(assert (not b!902054))

(assert (not d!278454))

(assert (not b!902245))

(assert (not b!902200))

(assert (not b!902368))

(assert (not b!902068))

(assert (not b!902344))

(assert (not b!902376))

(assert (not b!902227))

(assert (not b!902026))

(assert (not b!902067))

(assert (not b!902366))

(assert (not b!901986))

(assert (not b!902372))

(assert (not d!278470))

(assert (not bm!53870))

(assert (not b!902349))

(assert (not b!902223))

(assert (not d!278474))

(assert (not b!902235))

(assert (not b!902350))

(assert (not d!278478))

(assert (not b!902093))

(assert (not b!902088))

(assert (not b!902062))

(assert (not b!902364))

(assert (not b!902310))

(assert (not b!902232))

(assert (not d!278466))

(assert (not bm!53860))

(assert (not b!901984))

(assert (not b!902231))

(assert (not b!902167))

(assert (not b!902348))

(assert (not b!902226))

(assert (not d!278460))

(assert (not d!278458))

(assert (not b!902165))

(assert (not d!278468))

(assert (not b!902170))

(assert (not b!902021))

(assert (not bm!53857))

(assert (not d!278462))

(assert (not b!902321))

(assert (not d!278482))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

