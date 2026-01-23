; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!84720 () Bool)

(assert start!84720)

(declare-fun b!950918 () Bool)

(assert (=> b!950918 true))

(assert (=> b!950918 true))

(declare-fun lambda!32658 () Int)

(declare-fun lambda!32657 () Int)

(assert (=> b!950918 (not (= lambda!32658 lambda!32657))))

(assert (=> b!950918 true))

(assert (=> b!950918 true))

(declare-fun b!950912 () Bool)

(declare-fun e!615572 () Bool)

(declare-fun tp!293068 () Bool)

(assert (=> b!950912 (= e!615572 tp!293068)))

(declare-fun b!950913 () Bool)

(declare-fun res!432143 () Bool)

(declare-fun e!615573 () Bool)

(assert (=> b!950913 (=> res!432143 e!615573)))

(declare-datatypes ((C!5810 0))(
  ( (C!5811 (val!3153 Int)) )
))
(declare-datatypes ((List!9850 0))(
  ( (Nil!9834) (Cons!9834 (h!15235 C!5810) (t!100896 List!9850)) )
))
(declare-fun s!10566 () List!9850)

(declare-fun isEmpty!6103 (List!9850) Bool)

(assert (=> b!950913 (= res!432143 (isEmpty!6103 s!10566))))

(declare-fun b!950914 () Bool)

(declare-fun tp!293070 () Bool)

(declare-fun tp!293069 () Bool)

(assert (=> b!950914 (= e!615572 (and tp!293070 tp!293069))))

(declare-fun b!950915 () Bool)

(declare-fun tp!293066 () Bool)

(declare-fun tp!293067 () Bool)

(assert (=> b!950915 (= e!615572 (and tp!293066 tp!293067))))

(declare-fun b!950916 () Bool)

(declare-fun e!615575 () Bool)

(assert (=> b!950916 (= e!615575 (not e!615573))))

(declare-fun res!432144 () Bool)

(assert (=> b!950916 (=> res!432144 e!615573)))

(declare-fun lt!344584 () Bool)

(declare-datatypes ((Regex!2620 0))(
  ( (ElementMatch!2620 (c!154847 C!5810)) (Concat!4453 (regOne!5752 Regex!2620) (regTwo!5752 Regex!2620)) (EmptyExpr!2620) (Star!2620 (reg!2949 Regex!2620)) (EmptyLang!2620) (Union!2620 (regOne!5753 Regex!2620) (regTwo!5753 Regex!2620)) )
))
(declare-fun r!15766 () Regex!2620)

(assert (=> b!950916 (= res!432144 (or (not lt!344584) (and (is-Concat!4453 r!15766) (is-EmptyExpr!2620 (regOne!5752 r!15766))) (not (is-Concat!4453 r!15766)) (not (is-EmptyExpr!2620 (regTwo!5752 r!15766)))))))

(declare-fun matchRSpec!421 (Regex!2620 List!9850) Bool)

(assert (=> b!950916 (= lt!344584 (matchRSpec!421 r!15766 s!10566))))

(declare-fun matchR!1158 (Regex!2620 List!9850) Bool)

(assert (=> b!950916 (= lt!344584 (matchR!1158 r!15766 s!10566))))

(declare-datatypes ((Unit!14883 0))(
  ( (Unit!14884) )
))
(declare-fun lt!344583 () Unit!14883)

(declare-fun mainMatchTheorem!421 (Regex!2620 List!9850) Unit!14883)

(assert (=> b!950916 (= lt!344583 (mainMatchTheorem!421 r!15766 s!10566))))

(declare-fun b!950917 () Bool)

(declare-fun e!615574 () Bool)

(declare-fun tp_is_empty!4883 () Bool)

(declare-fun tp!293065 () Bool)

(assert (=> b!950917 (= e!615574 (and tp_is_empty!4883 tp!293065))))

(declare-fun b!950919 () Bool)

(assert (=> b!950919 (= e!615572 tp_is_empty!4883)))

(declare-datatypes ((tuple2!11134 0))(
  ( (tuple2!11135 (_1!6393 List!9850) (_2!6393 List!9850)) )
))
(declare-datatypes ((Option!2209 0))(
  ( (None!2208) (Some!2208 (v!19625 tuple2!11134)) )
))
(declare-fun lt!344585 () Option!2209)

(declare-fun get!3308 (Option!2209) tuple2!11134)

(assert (=> b!950918 (= e!615573 (isEmpty!6103 (_2!6393 (get!3308 lt!344585))))))

(declare-fun Exists!371 (Int) Bool)

(assert (=> b!950918 (= (Exists!371 lambda!32657) (Exists!371 lambda!32658))))

(declare-fun lt!344582 () Unit!14883)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!191 (Regex!2620 Regex!2620 List!9850) Unit!14883)

(assert (=> b!950918 (= lt!344582 (lemmaExistCutMatchRandMatchRSpecEquivalent!191 (regOne!5752 r!15766) EmptyExpr!2620 s!10566))))

(declare-fun isDefined!1851 (Option!2209) Bool)

(assert (=> b!950918 (= (isDefined!1851 lt!344585) (Exists!371 lambda!32657))))

(declare-fun findConcatSeparation!315 (Regex!2620 Regex!2620 List!9850 List!9850 List!9850) Option!2209)

(assert (=> b!950918 (= lt!344585 (findConcatSeparation!315 (regOne!5752 r!15766) EmptyExpr!2620 Nil!9834 s!10566 s!10566))))

(declare-fun lt!344586 () Unit!14883)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!315 (Regex!2620 Regex!2620 List!9850) Unit!14883)

(assert (=> b!950918 (= lt!344586 (lemmaFindConcatSeparationEquivalentToExists!315 (regOne!5752 r!15766) EmptyExpr!2620 s!10566))))

(declare-fun res!432145 () Bool)

(assert (=> start!84720 (=> (not res!432145) (not e!615575))))

(declare-fun validRegex!1089 (Regex!2620) Bool)

(assert (=> start!84720 (= res!432145 (validRegex!1089 r!15766))))

(assert (=> start!84720 e!615575))

(assert (=> start!84720 e!615572))

(assert (=> start!84720 e!615574))

(assert (= (and start!84720 res!432145) b!950916))

(assert (= (and b!950916 (not res!432144)) b!950913))

(assert (= (and b!950913 (not res!432143)) b!950918))

(assert (= (and start!84720 (is-ElementMatch!2620 r!15766)) b!950919))

(assert (= (and start!84720 (is-Concat!4453 r!15766)) b!950915))

(assert (= (and start!84720 (is-Star!2620 r!15766)) b!950912))

(assert (= (and start!84720 (is-Union!2620 r!15766)) b!950914))

(assert (= (and start!84720 (is-Cons!9834 s!10566)) b!950917))

(declare-fun m!1163809 () Bool)

(assert (=> b!950913 m!1163809))

(declare-fun m!1163811 () Bool)

(assert (=> b!950916 m!1163811))

(declare-fun m!1163813 () Bool)

(assert (=> b!950916 m!1163813))

(declare-fun m!1163815 () Bool)

(assert (=> b!950916 m!1163815))

(declare-fun m!1163817 () Bool)

(assert (=> b!950918 m!1163817))

(declare-fun m!1163819 () Bool)

(assert (=> b!950918 m!1163819))

(declare-fun m!1163821 () Bool)

(assert (=> b!950918 m!1163821))

(declare-fun m!1163823 () Bool)

(assert (=> b!950918 m!1163823))

(declare-fun m!1163825 () Bool)

(assert (=> b!950918 m!1163825))

(declare-fun m!1163827 () Bool)

(assert (=> b!950918 m!1163827))

(assert (=> b!950918 m!1163827))

(declare-fun m!1163829 () Bool)

(assert (=> b!950918 m!1163829))

(declare-fun m!1163831 () Bool)

(assert (=> b!950918 m!1163831))

(declare-fun m!1163833 () Bool)

(assert (=> start!84720 m!1163833))

(push 1)

(assert (not b!950917))

(assert (not b!950918))

(assert (not b!950916))

(assert (not b!950913))

(assert (not b!950912))

(assert (not b!950914))

(assert (not b!950915))

(assert (not start!84720))

(assert tp_is_empty!4883)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!950982 () Bool)

(declare-fun e!615607 () Bool)

(assert (=> b!950982 (= e!615607 (matchR!1158 EmptyExpr!2620 s!10566))))

(declare-fun b!950983 () Bool)

(declare-fun e!615606 () Bool)

(declare-fun lt!344609 () Option!2209)

(assert (=> b!950983 (= e!615606 (not (isDefined!1851 lt!344609)))))

(declare-fun b!950984 () Bool)

(declare-fun e!615608 () Bool)

(declare-fun ++!2630 (List!9850 List!9850) List!9850)

(assert (=> b!950984 (= e!615608 (= (++!2630 (_1!6393 (get!3308 lt!344609)) (_2!6393 (get!3308 lt!344609))) s!10566))))

(declare-fun b!950985 () Bool)

(declare-fun res!432177 () Bool)

(assert (=> b!950985 (=> (not res!432177) (not e!615608))))

(assert (=> b!950985 (= res!432177 (matchR!1158 EmptyExpr!2620 (_2!6393 (get!3308 lt!344609))))))

(declare-fun b!950987 () Bool)

(declare-fun e!615604 () Option!2209)

(assert (=> b!950987 (= e!615604 (Some!2208 (tuple2!11135 Nil!9834 s!10566)))))

(declare-fun b!950988 () Bool)

(declare-fun lt!344610 () Unit!14883)

(declare-fun lt!344608 () Unit!14883)

(assert (=> b!950988 (= lt!344610 lt!344608)))

(assert (=> b!950988 (= (++!2630 (++!2630 Nil!9834 (Cons!9834 (h!15235 s!10566) Nil!9834)) (t!100896 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!239 (List!9850 C!5810 List!9850 List!9850) Unit!14883)

(assert (=> b!950988 (= lt!344608 (lemmaMoveElementToOtherListKeepsConcatEq!239 Nil!9834 (h!15235 s!10566) (t!100896 s!10566) s!10566))))

(declare-fun e!615605 () Option!2209)

(assert (=> b!950988 (= e!615605 (findConcatSeparation!315 (regOne!5752 r!15766) EmptyExpr!2620 (++!2630 Nil!9834 (Cons!9834 (h!15235 s!10566) Nil!9834)) (t!100896 s!10566) s!10566))))

(declare-fun b!950989 () Bool)

(declare-fun res!432181 () Bool)

(assert (=> b!950989 (=> (not res!432181) (not e!615608))))

(assert (=> b!950989 (= res!432181 (matchR!1158 (regOne!5752 r!15766) (_1!6393 (get!3308 lt!344609))))))

(declare-fun b!950990 () Bool)

(assert (=> b!950990 (= e!615605 None!2208)))

(declare-fun b!950986 () Bool)

(assert (=> b!950986 (= e!615604 e!615605)))

(declare-fun c!154853 () Bool)

(assert (=> b!950986 (= c!154853 (is-Nil!9834 s!10566))))

(declare-fun d!283814 () Bool)

(assert (=> d!283814 e!615606))

(declare-fun res!432178 () Bool)

(assert (=> d!283814 (=> res!432178 e!615606)))

(assert (=> d!283814 (= res!432178 e!615608)))

(declare-fun res!432180 () Bool)

(assert (=> d!283814 (=> (not res!432180) (not e!615608))))

(assert (=> d!283814 (= res!432180 (isDefined!1851 lt!344609))))

(assert (=> d!283814 (= lt!344609 e!615604)))

(declare-fun c!154854 () Bool)

(assert (=> d!283814 (= c!154854 e!615607)))

(declare-fun res!432179 () Bool)

(assert (=> d!283814 (=> (not res!432179) (not e!615607))))

(assert (=> d!283814 (= res!432179 (matchR!1158 (regOne!5752 r!15766) Nil!9834))))

(assert (=> d!283814 (validRegex!1089 (regOne!5752 r!15766))))

(assert (=> d!283814 (= (findConcatSeparation!315 (regOne!5752 r!15766) EmptyExpr!2620 Nil!9834 s!10566 s!10566) lt!344609)))

(assert (= (and d!283814 res!432179) b!950982))

(assert (= (and d!283814 c!154854) b!950987))

(assert (= (and d!283814 (not c!154854)) b!950986))

(assert (= (and b!950986 c!154853) b!950990))

(assert (= (and b!950986 (not c!154853)) b!950988))

(assert (= (and d!283814 res!432180) b!950989))

(assert (= (and b!950989 res!432181) b!950985))

(assert (= (and b!950985 res!432177) b!950984))

(assert (= (and d!283814 (not res!432178)) b!950983))

(declare-fun m!1163861 () Bool)

(assert (=> b!950982 m!1163861))

(declare-fun m!1163863 () Bool)

(assert (=> b!950984 m!1163863))

(declare-fun m!1163865 () Bool)

(assert (=> b!950984 m!1163865))

(declare-fun m!1163867 () Bool)

(assert (=> b!950988 m!1163867))

(assert (=> b!950988 m!1163867))

(declare-fun m!1163869 () Bool)

(assert (=> b!950988 m!1163869))

(declare-fun m!1163871 () Bool)

(assert (=> b!950988 m!1163871))

(assert (=> b!950988 m!1163867))

(declare-fun m!1163873 () Bool)

(assert (=> b!950988 m!1163873))

(assert (=> b!950989 m!1163863))

(declare-fun m!1163875 () Bool)

(assert (=> b!950989 m!1163875))

(declare-fun m!1163877 () Bool)

(assert (=> d!283814 m!1163877))

(declare-fun m!1163879 () Bool)

(assert (=> d!283814 m!1163879))

(declare-fun m!1163881 () Bool)

(assert (=> d!283814 m!1163881))

(assert (=> b!950983 m!1163877))

(assert (=> b!950985 m!1163863))

(declare-fun m!1163883 () Bool)

(assert (=> b!950985 m!1163883))

(assert (=> b!950918 d!283814))

(declare-fun bs!240030 () Bool)

(declare-fun d!283818 () Bool)

(assert (= bs!240030 (and d!283818 b!950918)))

(declare-fun lambda!32669 () Int)

(assert (=> bs!240030 (= lambda!32669 lambda!32657)))

(assert (=> bs!240030 (not (= lambda!32669 lambda!32658))))

(assert (=> d!283818 true))

(assert (=> d!283818 true))

(assert (=> d!283818 true))

(assert (=> d!283818 (= (isDefined!1851 (findConcatSeparation!315 (regOne!5752 r!15766) EmptyExpr!2620 Nil!9834 s!10566 s!10566)) (Exists!371 lambda!32669))))

(declare-fun lt!344613 () Unit!14883)

(declare-fun choose!5929 (Regex!2620 Regex!2620 List!9850) Unit!14883)

(assert (=> d!283818 (= lt!344613 (choose!5929 (regOne!5752 r!15766) EmptyExpr!2620 s!10566))))

(assert (=> d!283818 (validRegex!1089 (regOne!5752 r!15766))))

(assert (=> d!283818 (= (lemmaFindConcatSeparationEquivalentToExists!315 (regOne!5752 r!15766) EmptyExpr!2620 s!10566) lt!344613)))

(declare-fun bs!240031 () Bool)

(assert (= bs!240031 d!283818))

(declare-fun m!1163885 () Bool)

(assert (=> bs!240031 m!1163885))

(assert (=> bs!240031 m!1163819))

(declare-fun m!1163887 () Bool)

(assert (=> bs!240031 m!1163887))

(assert (=> bs!240031 m!1163819))

(declare-fun m!1163889 () Bool)

(assert (=> bs!240031 m!1163889))

(assert (=> bs!240031 m!1163881))

(assert (=> b!950918 d!283818))

(declare-fun d!283820 () Bool)

(declare-fun choose!5930 (Int) Bool)

(assert (=> d!283820 (= (Exists!371 lambda!32657) (choose!5930 lambda!32657))))

(declare-fun bs!240032 () Bool)

(assert (= bs!240032 d!283820))

(declare-fun m!1163891 () Bool)

(assert (=> bs!240032 m!1163891))

(assert (=> b!950918 d!283820))

(declare-fun d!283822 () Bool)

(assert (=> d!283822 (= (isEmpty!6103 (_2!6393 (get!3308 lt!344585))) (is-Nil!9834 (_2!6393 (get!3308 lt!344585))))))

(assert (=> b!950918 d!283822))

(declare-fun d!283824 () Bool)

(declare-fun isEmpty!6105 (Option!2209) Bool)

(assert (=> d!283824 (= (isDefined!1851 lt!344585) (not (isEmpty!6105 lt!344585)))))

(declare-fun bs!240033 () Bool)

(assert (= bs!240033 d!283824))

(declare-fun m!1163893 () Bool)

(assert (=> bs!240033 m!1163893))

(assert (=> b!950918 d!283824))

(declare-fun d!283826 () Bool)

(assert (=> d!283826 (= (Exists!371 lambda!32658) (choose!5930 lambda!32658))))

(declare-fun bs!240034 () Bool)

(assert (= bs!240034 d!283826))

(declare-fun m!1163895 () Bool)

(assert (=> bs!240034 m!1163895))

(assert (=> b!950918 d!283826))

(declare-fun d!283828 () Bool)

(assert (=> d!283828 (= (get!3308 lt!344585) (v!19625 lt!344585))))

(assert (=> b!950918 d!283828))

(declare-fun bs!240035 () Bool)

(declare-fun d!283830 () Bool)

(assert (= bs!240035 (and d!283830 b!950918)))

(declare-fun lambda!32678 () Int)

(assert (=> bs!240035 (= lambda!32678 lambda!32657)))

(assert (=> bs!240035 (not (= lambda!32678 lambda!32658))))

(declare-fun bs!240036 () Bool)

(assert (= bs!240036 (and d!283830 d!283818)))

(assert (=> bs!240036 (= lambda!32678 lambda!32669)))

(assert (=> d!283830 true))

(assert (=> d!283830 true))

(assert (=> d!283830 true))

(declare-fun lambda!32679 () Int)

(assert (=> bs!240035 (not (= lambda!32679 lambda!32657))))

(assert (=> bs!240035 (= lambda!32679 lambda!32658)))

(assert (=> bs!240036 (not (= lambda!32679 lambda!32669))))

(declare-fun bs!240037 () Bool)

(assert (= bs!240037 d!283830))

(assert (=> bs!240037 (not (= lambda!32679 lambda!32678))))

(assert (=> d!283830 true))

(assert (=> d!283830 true))

(assert (=> d!283830 true))

(assert (=> d!283830 (= (Exists!371 lambda!32678) (Exists!371 lambda!32679))))

(declare-fun lt!344616 () Unit!14883)

(declare-fun choose!5931 (Regex!2620 Regex!2620 List!9850) Unit!14883)

(assert (=> d!283830 (= lt!344616 (choose!5931 (regOne!5752 r!15766) EmptyExpr!2620 s!10566))))

(assert (=> d!283830 (validRegex!1089 (regOne!5752 r!15766))))

(assert (=> d!283830 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!191 (regOne!5752 r!15766) EmptyExpr!2620 s!10566) lt!344616)))

(declare-fun m!1163897 () Bool)

(assert (=> bs!240037 m!1163897))

(declare-fun m!1163899 () Bool)

(assert (=> bs!240037 m!1163899))

(declare-fun m!1163901 () Bool)

(assert (=> bs!240037 m!1163901))

(assert (=> bs!240037 m!1163881))

(assert (=> b!950918 d!283830))

(declare-fun bm!59655 () Bool)

(declare-fun call!59660 () Bool)

(declare-fun call!59661 () Bool)

(assert (=> bm!59655 (= call!59660 call!59661)))

(declare-fun b!951064 () Bool)

(declare-fun e!615660 () Bool)

(declare-fun e!615659 () Bool)

(assert (=> b!951064 (= e!615660 e!615659)))

(declare-fun res!432223 () Bool)

(assert (=> b!951064 (=> (not res!432223) (not e!615659))))

(assert (=> b!951064 (= res!432223 call!59660)))

(declare-fun b!951065 () Bool)

(declare-fun res!432224 () Bool)

(assert (=> b!951065 (=> res!432224 e!615660)))

(assert (=> b!951065 (= res!432224 (not (is-Concat!4453 r!15766)))))

(declare-fun e!615654 () Bool)

(assert (=> b!951065 (= e!615654 e!615660)))

(declare-fun b!951066 () Bool)

(declare-fun e!615657 () Bool)

(declare-fun e!615658 () Bool)

(assert (=> b!951066 (= e!615657 e!615658)))

(declare-fun c!154871 () Bool)

(assert (=> b!951066 (= c!154871 (is-Star!2620 r!15766))))

(declare-fun b!951067 () Bool)

(declare-fun e!615655 () Bool)

(assert (=> b!951067 (= e!615658 e!615655)))

(declare-fun res!432227 () Bool)

(declare-fun nullable!775 (Regex!2620) Bool)

(assert (=> b!951067 (= res!432227 (not (nullable!775 (reg!2949 r!15766))))))

(assert (=> b!951067 (=> (not res!432227) (not e!615655))))

(declare-fun bm!59656 () Bool)

(declare-fun call!59662 () Bool)

(declare-fun c!154872 () Bool)

(assert (=> bm!59656 (= call!59662 (validRegex!1089 (ite c!154872 (regTwo!5753 r!15766) (regTwo!5752 r!15766))))))

(declare-fun d!283832 () Bool)

(declare-fun res!432225 () Bool)

(assert (=> d!283832 (=> res!432225 e!615657)))

(assert (=> d!283832 (= res!432225 (is-ElementMatch!2620 r!15766))))

(assert (=> d!283832 (= (validRegex!1089 r!15766) e!615657)))

(declare-fun b!951068 () Bool)

(declare-fun res!432226 () Bool)

(declare-fun e!615656 () Bool)

(assert (=> b!951068 (=> (not res!432226) (not e!615656))))

(assert (=> b!951068 (= res!432226 call!59660)))

(assert (=> b!951068 (= e!615654 e!615656)))

(declare-fun b!951069 () Bool)

(assert (=> b!951069 (= e!615656 call!59662)))

(declare-fun bm!59657 () Bool)

(assert (=> bm!59657 (= call!59661 (validRegex!1089 (ite c!154871 (reg!2949 r!15766) (ite c!154872 (regOne!5753 r!15766) (regOne!5752 r!15766)))))))

(declare-fun b!951070 () Bool)

(assert (=> b!951070 (= e!615658 e!615654)))

(assert (=> b!951070 (= c!154872 (is-Union!2620 r!15766))))

(declare-fun b!951071 () Bool)

(assert (=> b!951071 (= e!615655 call!59661)))

(declare-fun b!951072 () Bool)

(assert (=> b!951072 (= e!615659 call!59662)))

(assert (= (and d!283832 (not res!432225)) b!951066))

(assert (= (and b!951066 c!154871) b!951067))

(assert (= (and b!951066 (not c!154871)) b!951070))

(assert (= (and b!951067 res!432227) b!951071))

(assert (= (and b!951070 c!154872) b!951068))

(assert (= (and b!951070 (not c!154872)) b!951065))

(assert (= (and b!951068 res!432226) b!951069))

(assert (= (and b!951065 (not res!432224)) b!951064))

(assert (= (and b!951064 res!432223) b!951072))

(assert (= (or b!951069 b!951072) bm!59656))

(assert (= (or b!951068 b!951064) bm!59655))

(assert (= (or b!951071 bm!59655) bm!59657))

(declare-fun m!1163903 () Bool)

(assert (=> b!951067 m!1163903))

(declare-fun m!1163905 () Bool)

(assert (=> bm!59656 m!1163905))

(declare-fun m!1163907 () Bool)

(assert (=> bm!59657 m!1163907))

(assert (=> start!84720 d!283832))

(declare-fun d!283834 () Bool)

(assert (=> d!283834 (= (isEmpty!6103 s!10566) (is-Nil!9834 s!10566))))

(assert (=> b!950913 d!283834))

(declare-fun bs!240041 () Bool)

(declare-fun b!951114 () Bool)

(assert (= bs!240041 (and b!951114 d!283818)))

(declare-fun lambda!32686 () Int)

(assert (=> bs!240041 (not (= lambda!32686 lambda!32669))))

(declare-fun bs!240042 () Bool)

(assert (= bs!240042 (and b!951114 b!950918)))

(assert (=> bs!240042 (not (= lambda!32686 lambda!32658))))

(declare-fun bs!240043 () Bool)

(assert (= bs!240043 (and b!951114 d!283830)))

(assert (=> bs!240043 (not (= lambda!32686 lambda!32678))))

(assert (=> bs!240042 (not (= lambda!32686 lambda!32657))))

(assert (=> bs!240043 (not (= lambda!32686 lambda!32679))))

(assert (=> b!951114 true))

(assert (=> b!951114 true))

(declare-fun bs!240044 () Bool)

(declare-fun b!951110 () Bool)

(assert (= bs!240044 (and b!951110 d!283818)))

(declare-fun lambda!32687 () Int)

(assert (=> bs!240044 (not (= lambda!32687 lambda!32669))))

(declare-fun bs!240045 () Bool)

(assert (= bs!240045 (and b!951110 b!950918)))

(assert (=> bs!240045 (= (= (regTwo!5752 r!15766) EmptyExpr!2620) (= lambda!32687 lambda!32658))))

(declare-fun bs!240046 () Bool)

(assert (= bs!240046 (and b!951110 b!951114)))

(assert (=> bs!240046 (not (= lambda!32687 lambda!32686))))

(declare-fun bs!240047 () Bool)

(assert (= bs!240047 (and b!951110 d!283830)))

(assert (=> bs!240047 (not (= lambda!32687 lambda!32678))))

(assert (=> bs!240045 (not (= lambda!32687 lambda!32657))))

(assert (=> bs!240047 (= (= (regTwo!5752 r!15766) EmptyExpr!2620) (= lambda!32687 lambda!32679))))

(assert (=> b!951110 true))

(assert (=> b!951110 true))

(declare-fun b!951105 () Bool)

(declare-fun e!615682 () Bool)

(declare-fun e!615684 () Bool)

(assert (=> b!951105 (= e!615682 e!615684)))

(declare-fun res!432245 () Bool)

(assert (=> b!951105 (= res!432245 (not (is-EmptyLang!2620 r!15766)))))

(assert (=> b!951105 (=> (not res!432245) (not e!615684))))

(declare-fun b!951106 () Bool)

(declare-fun c!154882 () Bool)

(assert (=> b!951106 (= c!154882 (is-ElementMatch!2620 r!15766))))

(declare-fun e!615683 () Bool)

(assert (=> b!951106 (= e!615684 e!615683)))

(declare-fun bm!59662 () Bool)

(declare-fun call!59668 () Bool)

(assert (=> bm!59662 (= call!59668 (isEmpty!6103 s!10566))))

(declare-fun b!951107 () Bool)

(declare-fun e!615680 () Bool)

(declare-fun e!615685 () Bool)

(assert (=> b!951107 (= e!615680 e!615685)))

(declare-fun res!432246 () Bool)

(assert (=> b!951107 (= res!432246 (matchRSpec!421 (regOne!5753 r!15766) s!10566))))

(assert (=> b!951107 (=> res!432246 e!615685)))

(declare-fun b!951108 () Bool)

(assert (=> b!951108 (= e!615683 (= s!10566 (Cons!9834 (c!154847 r!15766) Nil!9834)))))

(declare-fun b!951109 () Bool)

(assert (=> b!951109 (= e!615682 call!59668)))

(declare-fun b!951111 () Bool)

(assert (=> b!951111 (= e!615685 (matchRSpec!421 (regTwo!5753 r!15766) s!10566))))

(declare-fun b!951112 () Bool)

(declare-fun e!615679 () Bool)

(assert (=> b!951112 (= e!615680 e!615679)))

(declare-fun c!154881 () Bool)

(assert (=> b!951112 (= c!154881 (is-Star!2620 r!15766))))

(declare-fun call!59667 () Bool)

(declare-fun bm!59663 () Bool)

(assert (=> bm!59663 (= call!59667 (Exists!371 (ite c!154881 lambda!32686 lambda!32687)))))

(declare-fun b!951113 () Bool)

(declare-fun c!154883 () Bool)

(assert (=> b!951113 (= c!154883 (is-Union!2620 r!15766))))

(assert (=> b!951113 (= e!615683 e!615680)))

(declare-fun e!615681 () Bool)

(assert (=> b!951114 (= e!615681 call!59667)))

(declare-fun b!951115 () Bool)

(declare-fun res!432244 () Bool)

(assert (=> b!951115 (=> res!432244 e!615681)))

(assert (=> b!951115 (= res!432244 call!59668)))

(assert (=> b!951115 (= e!615679 e!615681)))

(assert (=> b!951110 (= e!615679 call!59667)))

(declare-fun d!283836 () Bool)

(declare-fun c!154884 () Bool)

(assert (=> d!283836 (= c!154884 (is-EmptyExpr!2620 r!15766))))

(assert (=> d!283836 (= (matchRSpec!421 r!15766 s!10566) e!615682)))

(assert (= (and d!283836 c!154884) b!951109))

(assert (= (and d!283836 (not c!154884)) b!951105))

(assert (= (and b!951105 res!432245) b!951106))

(assert (= (and b!951106 c!154882) b!951108))

(assert (= (and b!951106 (not c!154882)) b!951113))

(assert (= (and b!951113 c!154883) b!951107))

(assert (= (and b!951113 (not c!154883)) b!951112))

(assert (= (and b!951107 (not res!432246)) b!951111))

(assert (= (and b!951112 c!154881) b!951115))

(assert (= (and b!951112 (not c!154881)) b!951110))

(assert (= (and b!951115 (not res!432244)) b!951114))

(assert (= (or b!951114 b!951110) bm!59663))

(assert (= (or b!951109 b!951115) bm!59662))

(assert (=> bm!59662 m!1163809))

(declare-fun m!1163915 () Bool)

(assert (=> b!951107 m!1163915))

(declare-fun m!1163917 () Bool)

(assert (=> b!951111 m!1163917))

(declare-fun m!1163919 () Bool)

(assert (=> bm!59663 m!1163919))

(assert (=> b!950916 d!283836))

(declare-fun bm!59668 () Bool)

(declare-fun call!59673 () Bool)

(assert (=> bm!59668 (= call!59673 (isEmpty!6103 s!10566))))

(declare-fun b!951172 () Bool)

(declare-fun e!615718 () Bool)

(declare-fun head!1737 (List!9850) C!5810)

(assert (=> b!951172 (= e!615718 (not (= (head!1737 s!10566) (c!154847 r!15766))))))

(declare-fun b!951173 () Bool)

(declare-fun res!432285 () Bool)

(assert (=> b!951173 (=> res!432285 e!615718)))

(declare-fun tail!1299 (List!9850) List!9850)

(assert (=> b!951173 (= res!432285 (not (isEmpty!6103 (tail!1299 s!10566))))))

(declare-fun b!951174 () Bool)

(declare-fun e!615714 () Bool)

(assert (=> b!951174 (= e!615714 (= (head!1737 s!10566) (c!154847 r!15766)))))

(declare-fun b!951175 () Bool)

(declare-fun e!615720 () Bool)

(declare-fun e!615717 () Bool)

(assert (=> b!951175 (= e!615720 e!615717)))

(declare-fun c!154897 () Bool)

(assert (=> b!951175 (= c!154897 (is-EmptyLang!2620 r!15766))))

(declare-fun b!951176 () Bool)

(declare-fun lt!344621 () Bool)

(assert (=> b!951176 (= e!615717 (not lt!344621))))

(declare-fun b!951177 () Bool)

(declare-fun res!432284 () Bool)

(assert (=> b!951177 (=> (not res!432284) (not e!615714))))

(assert (=> b!951177 (= res!432284 (not call!59673))))

(declare-fun b!951178 () Bool)

(declare-fun res!432280 () Bool)

(declare-fun e!615719 () Bool)

(assert (=> b!951178 (=> res!432280 e!615719)))

(assert (=> b!951178 (= res!432280 (not (is-ElementMatch!2620 r!15766)))))

(assert (=> b!951178 (= e!615717 e!615719)))

(declare-fun b!951179 () Bool)

(assert (=> b!951179 (= e!615720 (= lt!344621 call!59673))))

(declare-fun b!951180 () Bool)

(declare-fun e!615716 () Bool)

(assert (=> b!951180 (= e!615716 e!615718)))

(declare-fun res!432282 () Bool)

(assert (=> b!951180 (=> res!432282 e!615718)))

(assert (=> b!951180 (= res!432282 call!59673)))

(declare-fun b!951181 () Bool)

(declare-fun e!615715 () Bool)

(assert (=> b!951181 (= e!615715 (nullable!775 r!15766))))

(declare-fun b!951182 () Bool)

(declare-fun res!432281 () Bool)

(assert (=> b!951182 (=> res!432281 e!615719)))

(assert (=> b!951182 (= res!432281 e!615714)))

(declare-fun res!432279 () Bool)

(assert (=> b!951182 (=> (not res!432279) (not e!615714))))

(assert (=> b!951182 (= res!432279 lt!344621)))

(declare-fun b!951183 () Bool)

(declare-fun derivativeStep!584 (Regex!2620 C!5810) Regex!2620)

(assert (=> b!951183 (= e!615715 (matchR!1158 (derivativeStep!584 r!15766 (head!1737 s!10566)) (tail!1299 s!10566)))))

(declare-fun d!283840 () Bool)

(assert (=> d!283840 e!615720))

(declare-fun c!154898 () Bool)

(assert (=> d!283840 (= c!154898 (is-EmptyExpr!2620 r!15766))))

(assert (=> d!283840 (= lt!344621 e!615715)))

(declare-fun c!154899 () Bool)

(assert (=> d!283840 (= c!154899 (isEmpty!6103 s!10566))))

(assert (=> d!283840 (validRegex!1089 r!15766)))

(assert (=> d!283840 (= (matchR!1158 r!15766 s!10566) lt!344621)))

(declare-fun b!951184 () Bool)

(assert (=> b!951184 (= e!615719 e!615716)))

(declare-fun res!432283 () Bool)

(assert (=> b!951184 (=> (not res!432283) (not e!615716))))

(assert (=> b!951184 (= res!432283 (not lt!344621))))

(declare-fun b!951185 () Bool)

(declare-fun res!432286 () Bool)

(assert (=> b!951185 (=> (not res!432286) (not e!615714))))

(assert (=> b!951185 (= res!432286 (isEmpty!6103 (tail!1299 s!10566)))))

(assert (= (and d!283840 c!154899) b!951181))

(assert (= (and d!283840 (not c!154899)) b!951183))

(assert (= (and d!283840 c!154898) b!951179))

(assert (= (and d!283840 (not c!154898)) b!951175))

(assert (= (and b!951175 c!154897) b!951176))

(assert (= (and b!951175 (not c!154897)) b!951178))

(assert (= (and b!951178 (not res!432280)) b!951182))

(assert (= (and b!951182 res!432279) b!951177))

(assert (= (and b!951177 res!432284) b!951185))

(assert (= (and b!951185 res!432286) b!951174))

(assert (= (and b!951182 (not res!432281)) b!951184))

(assert (= (and b!951184 res!432283) b!951180))

(assert (= (and b!951180 (not res!432282)) b!951173))

(assert (= (and b!951173 (not res!432285)) b!951172))

(assert (= (or b!951179 b!951177 b!951180) bm!59668))

(declare-fun m!1163921 () Bool)

(assert (=> b!951181 m!1163921))

(declare-fun m!1163923 () Bool)

(assert (=> b!951173 m!1163923))

(assert (=> b!951173 m!1163923))

(declare-fun m!1163925 () Bool)

(assert (=> b!951173 m!1163925))

(declare-fun m!1163927 () Bool)

(assert (=> b!951174 m!1163927))

(assert (=> b!951185 m!1163923))

(assert (=> b!951185 m!1163923))

(assert (=> b!951185 m!1163925))

(assert (=> b!951183 m!1163927))

(assert (=> b!951183 m!1163927))

(declare-fun m!1163929 () Bool)

(assert (=> b!951183 m!1163929))

(assert (=> b!951183 m!1163923))

(assert (=> b!951183 m!1163929))

(assert (=> b!951183 m!1163923))

(declare-fun m!1163931 () Bool)

(assert (=> b!951183 m!1163931))

(assert (=> d!283840 m!1163809))

(assert (=> d!283840 m!1163833))

(assert (=> b!951172 m!1163927))

(assert (=> bm!59668 m!1163809))

(assert (=> b!950916 d!283840))

(declare-fun d!283842 () Bool)

(assert (=> d!283842 (= (matchR!1158 r!15766 s!10566) (matchRSpec!421 r!15766 s!10566))))

(declare-fun lt!344625 () Unit!14883)

(declare-fun choose!5932 (Regex!2620 List!9850) Unit!14883)

(assert (=> d!283842 (= lt!344625 (choose!5932 r!15766 s!10566))))

(assert (=> d!283842 (validRegex!1089 r!15766)))

(assert (=> d!283842 (= (mainMatchTheorem!421 r!15766 s!10566) lt!344625)))

(declare-fun bs!240048 () Bool)

(assert (= bs!240048 d!283842))

(assert (=> bs!240048 m!1163813))

(assert (=> bs!240048 m!1163811))

(declare-fun m!1163945 () Bool)

(assert (=> bs!240048 m!1163945))

(assert (=> bs!240048 m!1163833))

(assert (=> b!950916 d!283842))

(declare-fun b!951210 () Bool)

(declare-fun e!615730 () Bool)

(assert (=> b!951210 (= e!615730 tp_is_empty!4883)))

(assert (=> b!950912 (= tp!293068 e!615730)))

(declare-fun b!951212 () Bool)

(declare-fun tp!293101 () Bool)

(assert (=> b!951212 (= e!615730 tp!293101)))

(declare-fun b!951213 () Bool)

(declare-fun tp!293100 () Bool)

(declare-fun tp!293099 () Bool)

(assert (=> b!951213 (= e!615730 (and tp!293100 tp!293099))))

(declare-fun b!951211 () Bool)

(declare-fun tp!293102 () Bool)

(declare-fun tp!293103 () Bool)

(assert (=> b!951211 (= e!615730 (and tp!293102 tp!293103))))

(assert (= (and b!950912 (is-ElementMatch!2620 (reg!2949 r!15766))) b!951210))

(assert (= (and b!950912 (is-Concat!4453 (reg!2949 r!15766))) b!951211))

(assert (= (and b!950912 (is-Star!2620 (reg!2949 r!15766))) b!951212))

(assert (= (and b!950912 (is-Union!2620 (reg!2949 r!15766))) b!951213))

(declare-fun b!951218 () Bool)

(declare-fun e!615733 () Bool)

(declare-fun tp!293106 () Bool)

(assert (=> b!951218 (= e!615733 (and tp_is_empty!4883 tp!293106))))

(assert (=> b!950917 (= tp!293065 e!615733)))

(assert (= (and b!950917 (is-Cons!9834 (t!100896 s!10566))) b!951218))

(declare-fun b!951219 () Bool)

(declare-fun e!615734 () Bool)

(assert (=> b!951219 (= e!615734 tp_is_empty!4883)))

(assert (=> b!950914 (= tp!293070 e!615734)))

(declare-fun b!951221 () Bool)

(declare-fun tp!293109 () Bool)

(assert (=> b!951221 (= e!615734 tp!293109)))

(declare-fun b!951222 () Bool)

(declare-fun tp!293108 () Bool)

(declare-fun tp!293107 () Bool)

(assert (=> b!951222 (= e!615734 (and tp!293108 tp!293107))))

(declare-fun b!951220 () Bool)

(declare-fun tp!293110 () Bool)

(declare-fun tp!293111 () Bool)

(assert (=> b!951220 (= e!615734 (and tp!293110 tp!293111))))

(assert (= (and b!950914 (is-ElementMatch!2620 (regOne!5753 r!15766))) b!951219))

(assert (= (and b!950914 (is-Concat!4453 (regOne!5753 r!15766))) b!951220))

(assert (= (and b!950914 (is-Star!2620 (regOne!5753 r!15766))) b!951221))

(assert (= (and b!950914 (is-Union!2620 (regOne!5753 r!15766))) b!951222))

(declare-fun b!951223 () Bool)

(declare-fun e!615735 () Bool)

(assert (=> b!951223 (= e!615735 tp_is_empty!4883)))

(assert (=> b!950914 (= tp!293069 e!615735)))

(declare-fun b!951225 () Bool)

(declare-fun tp!293114 () Bool)

(assert (=> b!951225 (= e!615735 tp!293114)))

(declare-fun b!951226 () Bool)

(declare-fun tp!293113 () Bool)

(declare-fun tp!293112 () Bool)

(assert (=> b!951226 (= e!615735 (and tp!293113 tp!293112))))

(declare-fun b!951224 () Bool)

(declare-fun tp!293115 () Bool)

(declare-fun tp!293116 () Bool)

(assert (=> b!951224 (= e!615735 (and tp!293115 tp!293116))))

(assert (= (and b!950914 (is-ElementMatch!2620 (regTwo!5753 r!15766))) b!951223))

(assert (= (and b!950914 (is-Concat!4453 (regTwo!5753 r!15766))) b!951224))

(assert (= (and b!950914 (is-Star!2620 (regTwo!5753 r!15766))) b!951225))

(assert (= (and b!950914 (is-Union!2620 (regTwo!5753 r!15766))) b!951226))

(declare-fun b!951227 () Bool)

(declare-fun e!615736 () Bool)

(assert (=> b!951227 (= e!615736 tp_is_empty!4883)))

(assert (=> b!950915 (= tp!293066 e!615736)))

(declare-fun b!951229 () Bool)

(declare-fun tp!293119 () Bool)

(assert (=> b!951229 (= e!615736 tp!293119)))

(declare-fun b!951230 () Bool)

(declare-fun tp!293118 () Bool)

(declare-fun tp!293117 () Bool)

(assert (=> b!951230 (= e!615736 (and tp!293118 tp!293117))))

(declare-fun b!951228 () Bool)

(declare-fun tp!293120 () Bool)

(declare-fun tp!293121 () Bool)

(assert (=> b!951228 (= e!615736 (and tp!293120 tp!293121))))

(assert (= (and b!950915 (is-ElementMatch!2620 (regOne!5752 r!15766))) b!951227))

(assert (= (and b!950915 (is-Concat!4453 (regOne!5752 r!15766))) b!951228))

(assert (= (and b!950915 (is-Star!2620 (regOne!5752 r!15766))) b!951229))

(assert (= (and b!950915 (is-Union!2620 (regOne!5752 r!15766))) b!951230))

(declare-fun b!951231 () Bool)

(declare-fun e!615737 () Bool)

(assert (=> b!951231 (= e!615737 tp_is_empty!4883)))

(assert (=> b!950915 (= tp!293067 e!615737)))

(declare-fun b!951233 () Bool)

(declare-fun tp!293124 () Bool)

(assert (=> b!951233 (= e!615737 tp!293124)))

(declare-fun b!951234 () Bool)

(declare-fun tp!293123 () Bool)

(declare-fun tp!293122 () Bool)

(assert (=> b!951234 (= e!615737 (and tp!293123 tp!293122))))

(declare-fun b!951232 () Bool)

(declare-fun tp!293125 () Bool)

(declare-fun tp!293126 () Bool)

(assert (=> b!951232 (= e!615737 (and tp!293125 tp!293126))))

(assert (= (and b!950915 (is-ElementMatch!2620 (regTwo!5752 r!15766))) b!951231))

(assert (= (and b!950915 (is-Concat!4453 (regTwo!5752 r!15766))) b!951232))

(assert (= (and b!950915 (is-Star!2620 (regTwo!5752 r!15766))) b!951233))

(assert (= (and b!950915 (is-Union!2620 (regTwo!5752 r!15766))) b!951234))

(push 1)

(assert (not b!950984))

(assert (not d!283840))

(assert (not b!951181))

(assert (not b!951221))

(assert (not b!951173))

(assert (not b!951230))

(assert (not b!951174))

(assert (not b!951229))

(assert (not b!951211))

(assert (not d!283830))

(assert (not b!950989))

(assert (not b!950985))

(assert (not d!283842))

(assert (not bm!59668))

(assert (not b!951107))

(assert (not bm!59657))

(assert (not b!951172))

(assert (not b!951228))

(assert (not b!951232))

(assert (not b!950982))

(assert (not b!951213))

(assert (not b!951185))

(assert (not b!951234))

(assert (not b!951222))

(assert (not b!951224))

(assert (not b!951220))

(assert (not bm!59663))

(assert (not b!951183))

(assert (not b!950983))

(assert (not bm!59662))

(assert (not b!951226))

(assert (not d!283818))

(assert (not b!951111))

(assert (not bm!59656))

(assert (not b!951225))

(assert (not b!951218))

(assert (not b!951212))

(assert (not d!283824))

(assert (not b!951067))

(assert (not d!283820))

(assert (not b!951233))

(assert tp_is_empty!4883)

(assert (not d!283814))

(assert (not b!950988))

(assert (not d!283826))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!59679 () Bool)

(declare-fun call!59684 () Bool)

(assert (=> bm!59679 (= call!59684 (isEmpty!6103 (_1!6393 (get!3308 lt!344609))))))

(declare-fun b!951336 () Bool)

(declare-fun e!615794 () Bool)

(assert (=> b!951336 (= e!615794 (not (= (head!1737 (_1!6393 (get!3308 lt!344609))) (c!154847 (regOne!5752 r!15766)))))))

(declare-fun b!951337 () Bool)

(declare-fun res!432343 () Bool)

(assert (=> b!951337 (=> res!432343 e!615794)))

(assert (=> b!951337 (= res!432343 (not (isEmpty!6103 (tail!1299 (_1!6393 (get!3308 lt!344609))))))))

(declare-fun b!951338 () Bool)

(declare-fun e!615790 () Bool)

(assert (=> b!951338 (= e!615790 (= (head!1737 (_1!6393 (get!3308 lt!344609))) (c!154847 (regOne!5752 r!15766))))))

(declare-fun b!951339 () Bool)

(declare-fun e!615796 () Bool)

(declare-fun e!615793 () Bool)

(assert (=> b!951339 (= e!615796 e!615793)))

(declare-fun c!154915 () Bool)

(assert (=> b!951339 (= c!154915 (is-EmptyLang!2620 (regOne!5752 r!15766)))))

(declare-fun b!951340 () Bool)

(declare-fun lt!344644 () Bool)

(assert (=> b!951340 (= e!615793 (not lt!344644))))

(declare-fun b!951341 () Bool)

(declare-fun res!432342 () Bool)

(assert (=> b!951341 (=> (not res!432342) (not e!615790))))

(assert (=> b!951341 (= res!432342 (not call!59684))))

(declare-fun b!951342 () Bool)

(declare-fun res!432338 () Bool)

(declare-fun e!615795 () Bool)

(assert (=> b!951342 (=> res!432338 e!615795)))

(assert (=> b!951342 (= res!432338 (not (is-ElementMatch!2620 (regOne!5752 r!15766))))))

(assert (=> b!951342 (= e!615793 e!615795)))

(declare-fun b!951343 () Bool)

(assert (=> b!951343 (= e!615796 (= lt!344644 call!59684))))

(declare-fun b!951344 () Bool)

(declare-fun e!615792 () Bool)

(assert (=> b!951344 (= e!615792 e!615794)))

(declare-fun res!432340 () Bool)

(assert (=> b!951344 (=> res!432340 e!615794)))

(assert (=> b!951344 (= res!432340 call!59684)))

(declare-fun b!951345 () Bool)

(declare-fun e!615791 () Bool)

(assert (=> b!951345 (= e!615791 (nullable!775 (regOne!5752 r!15766)))))

(declare-fun b!951346 () Bool)

(declare-fun res!432339 () Bool)

(assert (=> b!951346 (=> res!432339 e!615795)))

(assert (=> b!951346 (= res!432339 e!615790)))

(declare-fun res!432337 () Bool)

(assert (=> b!951346 (=> (not res!432337) (not e!615790))))

(assert (=> b!951346 (= res!432337 lt!344644)))

(declare-fun b!951347 () Bool)

(assert (=> b!951347 (= e!615791 (matchR!1158 (derivativeStep!584 (regOne!5752 r!15766) (head!1737 (_1!6393 (get!3308 lt!344609)))) (tail!1299 (_1!6393 (get!3308 lt!344609)))))))

(declare-fun d!283866 () Bool)

(assert (=> d!283866 e!615796))

(declare-fun c!154916 () Bool)

(assert (=> d!283866 (= c!154916 (is-EmptyExpr!2620 (regOne!5752 r!15766)))))

(assert (=> d!283866 (= lt!344644 e!615791)))

(declare-fun c!154917 () Bool)

(assert (=> d!283866 (= c!154917 (isEmpty!6103 (_1!6393 (get!3308 lt!344609))))))

(assert (=> d!283866 (validRegex!1089 (regOne!5752 r!15766))))

(assert (=> d!283866 (= (matchR!1158 (regOne!5752 r!15766) (_1!6393 (get!3308 lt!344609))) lt!344644)))

(declare-fun b!951348 () Bool)

(assert (=> b!951348 (= e!615795 e!615792)))

(declare-fun res!432341 () Bool)

(assert (=> b!951348 (=> (not res!432341) (not e!615792))))

(assert (=> b!951348 (= res!432341 (not lt!344644))))

(declare-fun b!951349 () Bool)

(declare-fun res!432344 () Bool)

(assert (=> b!951349 (=> (not res!432344) (not e!615790))))

(assert (=> b!951349 (= res!432344 (isEmpty!6103 (tail!1299 (_1!6393 (get!3308 lt!344609)))))))

(assert (= (and d!283866 c!154917) b!951345))

(assert (= (and d!283866 (not c!154917)) b!951347))

(assert (= (and d!283866 c!154916) b!951343))

(assert (= (and d!283866 (not c!154916)) b!951339))

(assert (= (and b!951339 c!154915) b!951340))

(assert (= (and b!951339 (not c!154915)) b!951342))

(assert (= (and b!951342 (not res!432338)) b!951346))

(assert (= (and b!951346 res!432337) b!951341))

(assert (= (and b!951341 res!432342) b!951349))

(assert (= (and b!951349 res!432344) b!951338))

(assert (= (and b!951346 (not res!432339)) b!951348))

(assert (= (and b!951348 res!432341) b!951344))

(assert (= (and b!951344 (not res!432340)) b!951337))

(assert (= (and b!951337 (not res!432343)) b!951336))

(assert (= (or b!951343 b!951341 b!951344) bm!59679))

(declare-fun m!1163997 () Bool)

(assert (=> b!951345 m!1163997))

(declare-fun m!1163999 () Bool)

(assert (=> b!951337 m!1163999))

(assert (=> b!951337 m!1163999))

(declare-fun m!1164001 () Bool)

(assert (=> b!951337 m!1164001))

(declare-fun m!1164003 () Bool)

(assert (=> b!951338 m!1164003))

(assert (=> b!951349 m!1163999))

(assert (=> b!951349 m!1163999))

(assert (=> b!951349 m!1164001))

(assert (=> b!951347 m!1164003))

(assert (=> b!951347 m!1164003))

(declare-fun m!1164005 () Bool)

(assert (=> b!951347 m!1164005))

(assert (=> b!951347 m!1163999))

(assert (=> b!951347 m!1164005))

(assert (=> b!951347 m!1163999))

(declare-fun m!1164007 () Bool)

(assert (=> b!951347 m!1164007))

(declare-fun m!1164009 () Bool)

(assert (=> d!283866 m!1164009))

(assert (=> d!283866 m!1163881))

(assert (=> b!951336 m!1164003))

(assert (=> bm!59679 m!1164009))

(assert (=> b!950989 d!283866))

(declare-fun d!283868 () Bool)

(assert (=> d!283868 (= (get!3308 lt!344609) (v!19625 lt!344609))))

(assert (=> b!950989 d!283868))

(declare-fun b!951359 () Bool)

(declare-fun e!615802 () List!9850)

(assert (=> b!951359 (= e!615802 (Cons!9834 (h!15235 (++!2630 Nil!9834 (Cons!9834 (h!15235 s!10566) Nil!9834))) (++!2630 (t!100896 (++!2630 Nil!9834 (Cons!9834 (h!15235 s!10566) Nil!9834))) (t!100896 s!10566))))))

(declare-fun b!951360 () Bool)

(declare-fun res!432349 () Bool)

(declare-fun e!615801 () Bool)

(assert (=> b!951360 (=> (not res!432349) (not e!615801))))

(declare-fun lt!344647 () List!9850)

(declare-fun size!7910 (List!9850) Int)

(assert (=> b!951360 (= res!432349 (= (size!7910 lt!344647) (+ (size!7910 (++!2630 Nil!9834 (Cons!9834 (h!15235 s!10566) Nil!9834))) (size!7910 (t!100896 s!10566)))))))

(declare-fun d!283870 () Bool)

(assert (=> d!283870 e!615801))

(declare-fun res!432350 () Bool)

(assert (=> d!283870 (=> (not res!432350) (not e!615801))))

(declare-fun content!1398 (List!9850) (Set C!5810))

(assert (=> d!283870 (= res!432350 (= (content!1398 lt!344647) (set.union (content!1398 (++!2630 Nil!9834 (Cons!9834 (h!15235 s!10566) Nil!9834))) (content!1398 (t!100896 s!10566)))))))

(assert (=> d!283870 (= lt!344647 e!615802)))

(declare-fun c!154920 () Bool)

(assert (=> d!283870 (= c!154920 (is-Nil!9834 (++!2630 Nil!9834 (Cons!9834 (h!15235 s!10566) Nil!9834))))))

(assert (=> d!283870 (= (++!2630 (++!2630 Nil!9834 (Cons!9834 (h!15235 s!10566) Nil!9834)) (t!100896 s!10566)) lt!344647)))

(declare-fun b!951358 () Bool)

(assert (=> b!951358 (= e!615802 (t!100896 s!10566))))

(declare-fun b!951361 () Bool)

(assert (=> b!951361 (= e!615801 (or (not (= (t!100896 s!10566) Nil!9834)) (= lt!344647 (++!2630 Nil!9834 (Cons!9834 (h!15235 s!10566) Nil!9834)))))))

(assert (= (and d!283870 c!154920) b!951358))

(assert (= (and d!283870 (not c!154920)) b!951359))

(assert (= (and d!283870 res!432350) b!951360))

(assert (= (and b!951360 res!432349) b!951361))

(declare-fun m!1164011 () Bool)

(assert (=> b!951359 m!1164011))

(declare-fun m!1164013 () Bool)

(assert (=> b!951360 m!1164013))

(assert (=> b!951360 m!1163867))

(declare-fun m!1164015 () Bool)

(assert (=> b!951360 m!1164015))

(declare-fun m!1164017 () Bool)

(assert (=> b!951360 m!1164017))

(declare-fun m!1164019 () Bool)

(assert (=> d!283870 m!1164019))

(assert (=> d!283870 m!1163867))

(declare-fun m!1164021 () Bool)

(assert (=> d!283870 m!1164021))

(declare-fun m!1164023 () Bool)

(assert (=> d!283870 m!1164023))

(assert (=> b!950988 d!283870))

(declare-fun b!951363 () Bool)

(declare-fun e!615804 () List!9850)

(assert (=> b!951363 (= e!615804 (Cons!9834 (h!15235 Nil!9834) (++!2630 (t!100896 Nil!9834) (Cons!9834 (h!15235 s!10566) Nil!9834))))))

(declare-fun b!951364 () Bool)

(declare-fun res!432351 () Bool)

(declare-fun e!615803 () Bool)

(assert (=> b!951364 (=> (not res!432351) (not e!615803))))

(declare-fun lt!344648 () List!9850)

(assert (=> b!951364 (= res!432351 (= (size!7910 lt!344648) (+ (size!7910 Nil!9834) (size!7910 (Cons!9834 (h!15235 s!10566) Nil!9834)))))))

(declare-fun d!283872 () Bool)

(assert (=> d!283872 e!615803))

(declare-fun res!432352 () Bool)

(assert (=> d!283872 (=> (not res!432352) (not e!615803))))

(assert (=> d!283872 (= res!432352 (= (content!1398 lt!344648) (set.union (content!1398 Nil!9834) (content!1398 (Cons!9834 (h!15235 s!10566) Nil!9834)))))))

(assert (=> d!283872 (= lt!344648 e!615804)))

(declare-fun c!154921 () Bool)

(assert (=> d!283872 (= c!154921 (is-Nil!9834 Nil!9834))))

(assert (=> d!283872 (= (++!2630 Nil!9834 (Cons!9834 (h!15235 s!10566) Nil!9834)) lt!344648)))

(declare-fun b!951362 () Bool)

(assert (=> b!951362 (= e!615804 (Cons!9834 (h!15235 s!10566) Nil!9834))))

(declare-fun b!951365 () Bool)

(assert (=> b!951365 (= e!615803 (or (not (= (Cons!9834 (h!15235 s!10566) Nil!9834) Nil!9834)) (= lt!344648 Nil!9834)))))

(assert (= (and d!283872 c!154921) b!951362))

(assert (= (and d!283872 (not c!154921)) b!951363))

(assert (= (and d!283872 res!432352) b!951364))

(assert (= (and b!951364 res!432351) b!951365))

(declare-fun m!1164025 () Bool)

(assert (=> b!951363 m!1164025))

(declare-fun m!1164027 () Bool)

(assert (=> b!951364 m!1164027))

(declare-fun m!1164029 () Bool)

(assert (=> b!951364 m!1164029))

(declare-fun m!1164031 () Bool)

(assert (=> b!951364 m!1164031))

(declare-fun m!1164033 () Bool)

(assert (=> d!283872 m!1164033))

(declare-fun m!1164035 () Bool)

(assert (=> d!283872 m!1164035))

(declare-fun m!1164037 () Bool)

(assert (=> d!283872 m!1164037))

(assert (=> b!950988 d!283872))

(declare-fun d!283874 () Bool)

(assert (=> d!283874 (= (++!2630 (++!2630 Nil!9834 (Cons!9834 (h!15235 s!10566) Nil!9834)) (t!100896 s!10566)) s!10566)))

(declare-fun lt!344651 () Unit!14883)

(declare-fun choose!5937 (List!9850 C!5810 List!9850 List!9850) Unit!14883)

(assert (=> d!283874 (= lt!344651 (choose!5937 Nil!9834 (h!15235 s!10566) (t!100896 s!10566) s!10566))))

(assert (=> d!283874 (= (++!2630 Nil!9834 (Cons!9834 (h!15235 s!10566) (t!100896 s!10566))) s!10566)))

(assert (=> d!283874 (= (lemmaMoveElementToOtherListKeepsConcatEq!239 Nil!9834 (h!15235 s!10566) (t!100896 s!10566) s!10566) lt!344651)))

(declare-fun bs!240062 () Bool)

(assert (= bs!240062 d!283874))

(assert (=> bs!240062 m!1163867))

(assert (=> bs!240062 m!1163867))

(assert (=> bs!240062 m!1163869))

(declare-fun m!1164039 () Bool)

(assert (=> bs!240062 m!1164039))

(declare-fun m!1164041 () Bool)

(assert (=> bs!240062 m!1164041))

(assert (=> b!950988 d!283874))

(declare-fun b!951366 () Bool)

(declare-fun e!615808 () Bool)

(assert (=> b!951366 (= e!615808 (matchR!1158 EmptyExpr!2620 (t!100896 s!10566)))))

(declare-fun b!951367 () Bool)

(declare-fun e!615807 () Bool)

(declare-fun lt!344653 () Option!2209)

(assert (=> b!951367 (= e!615807 (not (isDefined!1851 lt!344653)))))

(declare-fun b!951368 () Bool)

(declare-fun e!615809 () Bool)

(assert (=> b!951368 (= e!615809 (= (++!2630 (_1!6393 (get!3308 lt!344653)) (_2!6393 (get!3308 lt!344653))) s!10566))))

(declare-fun b!951369 () Bool)

(declare-fun res!432353 () Bool)

(assert (=> b!951369 (=> (not res!432353) (not e!615809))))

(assert (=> b!951369 (= res!432353 (matchR!1158 EmptyExpr!2620 (_2!6393 (get!3308 lt!344653))))))

(declare-fun b!951371 () Bool)

(declare-fun e!615805 () Option!2209)

(assert (=> b!951371 (= e!615805 (Some!2208 (tuple2!11135 (++!2630 Nil!9834 (Cons!9834 (h!15235 s!10566) Nil!9834)) (t!100896 s!10566))))))

(declare-fun b!951372 () Bool)

(declare-fun lt!344654 () Unit!14883)

(declare-fun lt!344652 () Unit!14883)

(assert (=> b!951372 (= lt!344654 lt!344652)))

(assert (=> b!951372 (= (++!2630 (++!2630 (++!2630 Nil!9834 (Cons!9834 (h!15235 s!10566) Nil!9834)) (Cons!9834 (h!15235 (t!100896 s!10566)) Nil!9834)) (t!100896 (t!100896 s!10566))) s!10566)))

(assert (=> b!951372 (= lt!344652 (lemmaMoveElementToOtherListKeepsConcatEq!239 (++!2630 Nil!9834 (Cons!9834 (h!15235 s!10566) Nil!9834)) (h!15235 (t!100896 s!10566)) (t!100896 (t!100896 s!10566)) s!10566))))

(declare-fun e!615806 () Option!2209)

(assert (=> b!951372 (= e!615806 (findConcatSeparation!315 (regOne!5752 r!15766) EmptyExpr!2620 (++!2630 (++!2630 Nil!9834 (Cons!9834 (h!15235 s!10566) Nil!9834)) (Cons!9834 (h!15235 (t!100896 s!10566)) Nil!9834)) (t!100896 (t!100896 s!10566)) s!10566))))

(declare-fun b!951373 () Bool)

(declare-fun res!432357 () Bool)

(assert (=> b!951373 (=> (not res!432357) (not e!615809))))

(assert (=> b!951373 (= res!432357 (matchR!1158 (regOne!5752 r!15766) (_1!6393 (get!3308 lt!344653))))))

(declare-fun b!951374 () Bool)

(assert (=> b!951374 (= e!615806 None!2208)))

(declare-fun b!951370 () Bool)

(assert (=> b!951370 (= e!615805 e!615806)))

(declare-fun c!154922 () Bool)

(assert (=> b!951370 (= c!154922 (is-Nil!9834 (t!100896 s!10566)))))

(declare-fun d!283876 () Bool)

(assert (=> d!283876 e!615807))

(declare-fun res!432354 () Bool)

(assert (=> d!283876 (=> res!432354 e!615807)))

(assert (=> d!283876 (= res!432354 e!615809)))

(declare-fun res!432356 () Bool)

(assert (=> d!283876 (=> (not res!432356) (not e!615809))))

(assert (=> d!283876 (= res!432356 (isDefined!1851 lt!344653))))

(assert (=> d!283876 (= lt!344653 e!615805)))

(declare-fun c!154923 () Bool)

(assert (=> d!283876 (= c!154923 e!615808)))

(declare-fun res!432355 () Bool)

(assert (=> d!283876 (=> (not res!432355) (not e!615808))))

(assert (=> d!283876 (= res!432355 (matchR!1158 (regOne!5752 r!15766) (++!2630 Nil!9834 (Cons!9834 (h!15235 s!10566) Nil!9834))))))

(assert (=> d!283876 (validRegex!1089 (regOne!5752 r!15766))))

(assert (=> d!283876 (= (findConcatSeparation!315 (regOne!5752 r!15766) EmptyExpr!2620 (++!2630 Nil!9834 (Cons!9834 (h!15235 s!10566) Nil!9834)) (t!100896 s!10566) s!10566) lt!344653)))

(assert (= (and d!283876 res!432355) b!951366))

(assert (= (and d!283876 c!154923) b!951371))

(assert (= (and d!283876 (not c!154923)) b!951370))

(assert (= (and b!951370 c!154922) b!951374))

(assert (= (and b!951370 (not c!154922)) b!951372))

(assert (= (and d!283876 res!432356) b!951373))

(assert (= (and b!951373 res!432357) b!951369))

(assert (= (and b!951369 res!432353) b!951368))

(assert (= (and d!283876 (not res!432354)) b!951367))

(declare-fun m!1164043 () Bool)

(assert (=> b!951366 m!1164043))

(declare-fun m!1164045 () Bool)

(assert (=> b!951368 m!1164045))

(declare-fun m!1164047 () Bool)

(assert (=> b!951368 m!1164047))

(assert (=> b!951372 m!1163867))

(declare-fun m!1164049 () Bool)

(assert (=> b!951372 m!1164049))

(assert (=> b!951372 m!1164049))

(declare-fun m!1164051 () Bool)

(assert (=> b!951372 m!1164051))

(assert (=> b!951372 m!1163867))

(declare-fun m!1164053 () Bool)

(assert (=> b!951372 m!1164053))

(assert (=> b!951372 m!1164049))

(declare-fun m!1164055 () Bool)

(assert (=> b!951372 m!1164055))

(assert (=> b!951373 m!1164045))

(declare-fun m!1164057 () Bool)

(assert (=> b!951373 m!1164057))

(declare-fun m!1164059 () Bool)

(assert (=> d!283876 m!1164059))

(assert (=> d!283876 m!1163867))

(declare-fun m!1164061 () Bool)

(assert (=> d!283876 m!1164061))

(assert (=> d!283876 m!1163881))

(assert (=> b!951367 m!1164059))

(assert (=> b!951369 m!1164045))

(declare-fun m!1164063 () Bool)

(assert (=> b!951369 m!1164063))

(assert (=> b!950988 d!283876))

(declare-fun bs!240063 () Bool)

(declare-fun b!951384 () Bool)

(assert (= bs!240063 (and b!951384 b!951110)))

(declare-fun lambda!32697 () Int)

(assert (=> bs!240063 (not (= lambda!32697 lambda!32687))))

(declare-fun bs!240064 () Bool)

(assert (= bs!240064 (and b!951384 d!283818)))

(assert (=> bs!240064 (not (= lambda!32697 lambda!32669))))

(declare-fun bs!240065 () Bool)

(assert (= bs!240065 (and b!951384 b!950918)))

(assert (=> bs!240065 (not (= lambda!32697 lambda!32658))))

(declare-fun bs!240066 () Bool)

(assert (= bs!240066 (and b!951384 b!951114)))

(assert (=> bs!240066 (= (and (= (reg!2949 (regOne!5753 r!15766)) (reg!2949 r!15766)) (= (regOne!5753 r!15766) r!15766)) (= lambda!32697 lambda!32686))))

(declare-fun bs!240067 () Bool)

(assert (= bs!240067 (and b!951384 d!283830)))

(assert (=> bs!240067 (not (= lambda!32697 lambda!32678))))

(assert (=> bs!240065 (not (= lambda!32697 lambda!32657))))

(assert (=> bs!240067 (not (= lambda!32697 lambda!32679))))

(assert (=> b!951384 true))

(assert (=> b!951384 true))

(declare-fun bs!240068 () Bool)

(declare-fun b!951380 () Bool)

(assert (= bs!240068 (and b!951380 b!951110)))

(declare-fun lambda!32698 () Int)

(assert (=> bs!240068 (= (and (= (regOne!5752 (regOne!5753 r!15766)) (regOne!5752 r!15766)) (= (regTwo!5752 (regOne!5753 r!15766)) (regTwo!5752 r!15766))) (= lambda!32698 lambda!32687))))

(declare-fun bs!240069 () Bool)

(assert (= bs!240069 (and b!951380 d!283818)))

(assert (=> bs!240069 (not (= lambda!32698 lambda!32669))))

(declare-fun bs!240070 () Bool)

(assert (= bs!240070 (and b!951380 b!951384)))

(assert (=> bs!240070 (not (= lambda!32698 lambda!32697))))

(declare-fun bs!240071 () Bool)

(assert (= bs!240071 (and b!951380 b!950918)))

(assert (=> bs!240071 (= (and (= (regOne!5752 (regOne!5753 r!15766)) (regOne!5752 r!15766)) (= (regTwo!5752 (regOne!5753 r!15766)) EmptyExpr!2620)) (= lambda!32698 lambda!32658))))

(declare-fun bs!240072 () Bool)

(assert (= bs!240072 (and b!951380 b!951114)))

(assert (=> bs!240072 (not (= lambda!32698 lambda!32686))))

(declare-fun bs!240073 () Bool)

(assert (= bs!240073 (and b!951380 d!283830)))

(assert (=> bs!240073 (not (= lambda!32698 lambda!32678))))

(assert (=> bs!240071 (not (= lambda!32698 lambda!32657))))

(assert (=> bs!240073 (= (and (= (regOne!5752 (regOne!5753 r!15766)) (regOne!5752 r!15766)) (= (regTwo!5752 (regOne!5753 r!15766)) EmptyExpr!2620)) (= lambda!32698 lambda!32679))))

(assert (=> b!951380 true))

(assert (=> b!951380 true))

(declare-fun b!951375 () Bool)

(declare-fun e!615813 () Bool)

(declare-fun e!615815 () Bool)

(assert (=> b!951375 (= e!615813 e!615815)))

(declare-fun res!432359 () Bool)

(assert (=> b!951375 (= res!432359 (not (is-EmptyLang!2620 (regOne!5753 r!15766))))))

(assert (=> b!951375 (=> (not res!432359) (not e!615815))))

(declare-fun b!951376 () Bool)

(declare-fun c!154925 () Bool)

(assert (=> b!951376 (= c!154925 (is-ElementMatch!2620 (regOne!5753 r!15766)))))

(declare-fun e!615814 () Bool)

(assert (=> b!951376 (= e!615815 e!615814)))

(declare-fun bm!59680 () Bool)

(declare-fun call!59686 () Bool)

(assert (=> bm!59680 (= call!59686 (isEmpty!6103 s!10566))))

(declare-fun b!951377 () Bool)

(declare-fun e!615811 () Bool)

(declare-fun e!615816 () Bool)

(assert (=> b!951377 (= e!615811 e!615816)))

(declare-fun res!432360 () Bool)

(assert (=> b!951377 (= res!432360 (matchRSpec!421 (regOne!5753 (regOne!5753 r!15766)) s!10566))))

(assert (=> b!951377 (=> res!432360 e!615816)))

(declare-fun b!951378 () Bool)

(assert (=> b!951378 (= e!615814 (= s!10566 (Cons!9834 (c!154847 (regOne!5753 r!15766)) Nil!9834)))))

(declare-fun b!951379 () Bool)

(assert (=> b!951379 (= e!615813 call!59686)))

(declare-fun b!951381 () Bool)

(assert (=> b!951381 (= e!615816 (matchRSpec!421 (regTwo!5753 (regOne!5753 r!15766)) s!10566))))

(declare-fun b!951382 () Bool)

(declare-fun e!615810 () Bool)

(assert (=> b!951382 (= e!615811 e!615810)))

(declare-fun c!154924 () Bool)

(assert (=> b!951382 (= c!154924 (is-Star!2620 (regOne!5753 r!15766)))))

(declare-fun call!59685 () Bool)

(declare-fun bm!59681 () Bool)

(assert (=> bm!59681 (= call!59685 (Exists!371 (ite c!154924 lambda!32697 lambda!32698)))))

(declare-fun b!951383 () Bool)

(declare-fun c!154926 () Bool)

(assert (=> b!951383 (= c!154926 (is-Union!2620 (regOne!5753 r!15766)))))

(assert (=> b!951383 (= e!615814 e!615811)))

(declare-fun e!615812 () Bool)

(assert (=> b!951384 (= e!615812 call!59685)))

(declare-fun b!951385 () Bool)

(declare-fun res!432358 () Bool)

(assert (=> b!951385 (=> res!432358 e!615812)))

(assert (=> b!951385 (= res!432358 call!59686)))

(assert (=> b!951385 (= e!615810 e!615812)))

(assert (=> b!951380 (= e!615810 call!59685)))

(declare-fun d!283878 () Bool)

(declare-fun c!154927 () Bool)

(assert (=> d!283878 (= c!154927 (is-EmptyExpr!2620 (regOne!5753 r!15766)))))

(assert (=> d!283878 (= (matchRSpec!421 (regOne!5753 r!15766) s!10566) e!615813)))

(assert (= (and d!283878 c!154927) b!951379))

(assert (= (and d!283878 (not c!154927)) b!951375))

(assert (= (and b!951375 res!432359) b!951376))

(assert (= (and b!951376 c!154925) b!951378))

(assert (= (and b!951376 (not c!154925)) b!951383))

(assert (= (and b!951383 c!154926) b!951377))

(assert (= (and b!951383 (not c!154926)) b!951382))

(assert (= (and b!951377 (not res!432360)) b!951381))

(assert (= (and b!951382 c!154924) b!951385))

(assert (= (and b!951382 (not c!154924)) b!951380))

(assert (= (and b!951385 (not res!432358)) b!951384))

(assert (= (or b!951384 b!951380) bm!59681))

(assert (= (or b!951379 b!951385) bm!59680))

(assert (=> bm!59680 m!1163809))

(declare-fun m!1164065 () Bool)

(assert (=> b!951377 m!1164065))

(declare-fun m!1164067 () Bool)

(assert (=> b!951381 m!1164067))

(declare-fun m!1164069 () Bool)

(assert (=> bm!59681 m!1164069))

(assert (=> b!951107 d!283878))

(declare-fun bm!59682 () Bool)

(declare-fun call!59687 () Bool)

(declare-fun call!59688 () Bool)

(assert (=> bm!59682 (= call!59687 call!59688)))

(declare-fun b!951386 () Bool)

(declare-fun e!615823 () Bool)

(declare-fun e!615822 () Bool)

(assert (=> b!951386 (= e!615823 e!615822)))

(declare-fun res!432361 () Bool)

(assert (=> b!951386 (=> (not res!432361) (not e!615822))))

(assert (=> b!951386 (= res!432361 call!59687)))

(declare-fun b!951387 () Bool)

(declare-fun res!432362 () Bool)

(assert (=> b!951387 (=> res!432362 e!615823)))

(assert (=> b!951387 (= res!432362 (not (is-Concat!4453 (ite c!154872 (regTwo!5753 r!15766) (regTwo!5752 r!15766)))))))

(declare-fun e!615817 () Bool)

(assert (=> b!951387 (= e!615817 e!615823)))

(declare-fun b!951388 () Bool)

(declare-fun e!615820 () Bool)

(declare-fun e!615821 () Bool)

(assert (=> b!951388 (= e!615820 e!615821)))

(declare-fun c!154928 () Bool)

(assert (=> b!951388 (= c!154928 (is-Star!2620 (ite c!154872 (regTwo!5753 r!15766) (regTwo!5752 r!15766))))))

(declare-fun b!951389 () Bool)

(declare-fun e!615818 () Bool)

(assert (=> b!951389 (= e!615821 e!615818)))

(declare-fun res!432365 () Bool)

(assert (=> b!951389 (= res!432365 (not (nullable!775 (reg!2949 (ite c!154872 (regTwo!5753 r!15766) (regTwo!5752 r!15766))))))))

(assert (=> b!951389 (=> (not res!432365) (not e!615818))))

(declare-fun call!59689 () Bool)

(declare-fun c!154929 () Bool)

(declare-fun bm!59683 () Bool)

(assert (=> bm!59683 (= call!59689 (validRegex!1089 (ite c!154929 (regTwo!5753 (ite c!154872 (regTwo!5753 r!15766) (regTwo!5752 r!15766))) (regTwo!5752 (ite c!154872 (regTwo!5753 r!15766) (regTwo!5752 r!15766))))))))

(declare-fun d!283880 () Bool)

(declare-fun res!432363 () Bool)

(assert (=> d!283880 (=> res!432363 e!615820)))

(assert (=> d!283880 (= res!432363 (is-ElementMatch!2620 (ite c!154872 (regTwo!5753 r!15766) (regTwo!5752 r!15766))))))

(assert (=> d!283880 (= (validRegex!1089 (ite c!154872 (regTwo!5753 r!15766) (regTwo!5752 r!15766))) e!615820)))

(declare-fun b!951390 () Bool)

(declare-fun res!432364 () Bool)

(declare-fun e!615819 () Bool)

(assert (=> b!951390 (=> (not res!432364) (not e!615819))))

(assert (=> b!951390 (= res!432364 call!59687)))

(assert (=> b!951390 (= e!615817 e!615819)))

(declare-fun b!951391 () Bool)

(assert (=> b!951391 (= e!615819 call!59689)))

(declare-fun bm!59684 () Bool)

(assert (=> bm!59684 (= call!59688 (validRegex!1089 (ite c!154928 (reg!2949 (ite c!154872 (regTwo!5753 r!15766) (regTwo!5752 r!15766))) (ite c!154929 (regOne!5753 (ite c!154872 (regTwo!5753 r!15766) (regTwo!5752 r!15766))) (regOne!5752 (ite c!154872 (regTwo!5753 r!15766) (regTwo!5752 r!15766)))))))))

(declare-fun b!951392 () Bool)

(assert (=> b!951392 (= e!615821 e!615817)))

(assert (=> b!951392 (= c!154929 (is-Union!2620 (ite c!154872 (regTwo!5753 r!15766) (regTwo!5752 r!15766))))))

(declare-fun b!951393 () Bool)

(assert (=> b!951393 (= e!615818 call!59688)))

(declare-fun b!951394 () Bool)

(assert (=> b!951394 (= e!615822 call!59689)))

(assert (= (and d!283880 (not res!432363)) b!951388))

(assert (= (and b!951388 c!154928) b!951389))

(assert (= (and b!951388 (not c!154928)) b!951392))

(assert (= (and b!951389 res!432365) b!951393))

(assert (= (and b!951392 c!154929) b!951390))

(assert (= (and b!951392 (not c!154929)) b!951387))

(assert (= (and b!951390 res!432364) b!951391))

(assert (= (and b!951387 (not res!432362)) b!951386))

(assert (= (and b!951386 res!432361) b!951394))

(assert (= (or b!951391 b!951394) bm!59683))

(assert (= (or b!951390 b!951386) bm!59682))

(assert (= (or b!951393 bm!59682) bm!59684))

(declare-fun m!1164071 () Bool)

(assert (=> b!951389 m!1164071))

(declare-fun m!1164073 () Bool)

(assert (=> bm!59683 m!1164073))

(declare-fun m!1164075 () Bool)

(assert (=> bm!59684 m!1164075))

(assert (=> bm!59656 d!283880))

(assert (=> d!283842 d!283840))

(assert (=> d!283842 d!283836))

(declare-fun d!283882 () Bool)

(assert (=> d!283882 (= (matchR!1158 r!15766 s!10566) (matchRSpec!421 r!15766 s!10566))))

(assert (=> d!283882 true))

(declare-fun _$88!3001 () Unit!14883)

(assert (=> d!283882 (= (choose!5932 r!15766 s!10566) _$88!3001)))

(declare-fun bs!240074 () Bool)

(assert (= bs!240074 d!283882))

(assert (=> bs!240074 m!1163813))

(assert (=> bs!240074 m!1163811))

(assert (=> d!283842 d!283882))

(assert (=> d!283842 d!283832))

(declare-fun d!283884 () Bool)

(assert (=> d!283884 (= (isDefined!1851 lt!344609) (not (isEmpty!6105 lt!344609)))))

(declare-fun bs!240075 () Bool)

(assert (= bs!240075 d!283884))

(declare-fun m!1164077 () Bool)

(assert (=> bs!240075 m!1164077))

(assert (=> d!283814 d!283884))

(declare-fun bm!59685 () Bool)

(declare-fun call!59690 () Bool)

(assert (=> bm!59685 (= call!59690 (isEmpty!6103 Nil!9834))))

(declare-fun b!951395 () Bool)

(declare-fun e!615828 () Bool)

(assert (=> b!951395 (= e!615828 (not (= (head!1737 Nil!9834) (c!154847 (regOne!5752 r!15766)))))))

(declare-fun b!951396 () Bool)

(declare-fun res!432372 () Bool)

(assert (=> b!951396 (=> res!432372 e!615828)))

(assert (=> b!951396 (= res!432372 (not (isEmpty!6103 (tail!1299 Nil!9834))))))

(declare-fun b!951397 () Bool)

(declare-fun e!615824 () Bool)

(assert (=> b!951397 (= e!615824 (= (head!1737 Nil!9834) (c!154847 (regOne!5752 r!15766))))))

(declare-fun b!951398 () Bool)

(declare-fun e!615830 () Bool)

(declare-fun e!615827 () Bool)

(assert (=> b!951398 (= e!615830 e!615827)))

(declare-fun c!154930 () Bool)

(assert (=> b!951398 (= c!154930 (is-EmptyLang!2620 (regOne!5752 r!15766)))))

(declare-fun b!951399 () Bool)

(declare-fun lt!344655 () Bool)

(assert (=> b!951399 (= e!615827 (not lt!344655))))

(declare-fun b!951400 () Bool)

(declare-fun res!432371 () Bool)

(assert (=> b!951400 (=> (not res!432371) (not e!615824))))

(assert (=> b!951400 (= res!432371 (not call!59690))))

(declare-fun b!951401 () Bool)

(declare-fun res!432367 () Bool)

(declare-fun e!615829 () Bool)

(assert (=> b!951401 (=> res!432367 e!615829)))

(assert (=> b!951401 (= res!432367 (not (is-ElementMatch!2620 (regOne!5752 r!15766))))))

(assert (=> b!951401 (= e!615827 e!615829)))

(declare-fun b!951402 () Bool)

(assert (=> b!951402 (= e!615830 (= lt!344655 call!59690))))

(declare-fun b!951403 () Bool)

(declare-fun e!615826 () Bool)

(assert (=> b!951403 (= e!615826 e!615828)))

(declare-fun res!432369 () Bool)

(assert (=> b!951403 (=> res!432369 e!615828)))

(assert (=> b!951403 (= res!432369 call!59690)))

(declare-fun b!951404 () Bool)

(declare-fun e!615825 () Bool)

(assert (=> b!951404 (= e!615825 (nullable!775 (regOne!5752 r!15766)))))

(declare-fun b!951405 () Bool)

(declare-fun res!432368 () Bool)

(assert (=> b!951405 (=> res!432368 e!615829)))

(assert (=> b!951405 (= res!432368 e!615824)))

(declare-fun res!432366 () Bool)

(assert (=> b!951405 (=> (not res!432366) (not e!615824))))

(assert (=> b!951405 (= res!432366 lt!344655)))

(declare-fun b!951406 () Bool)

(assert (=> b!951406 (= e!615825 (matchR!1158 (derivativeStep!584 (regOne!5752 r!15766) (head!1737 Nil!9834)) (tail!1299 Nil!9834)))))

(declare-fun d!283886 () Bool)

(assert (=> d!283886 e!615830))

(declare-fun c!154931 () Bool)

(assert (=> d!283886 (= c!154931 (is-EmptyExpr!2620 (regOne!5752 r!15766)))))

(assert (=> d!283886 (= lt!344655 e!615825)))

(declare-fun c!154932 () Bool)

(assert (=> d!283886 (= c!154932 (isEmpty!6103 Nil!9834))))

(assert (=> d!283886 (validRegex!1089 (regOne!5752 r!15766))))

(assert (=> d!283886 (= (matchR!1158 (regOne!5752 r!15766) Nil!9834) lt!344655)))

(declare-fun b!951407 () Bool)

(assert (=> b!951407 (= e!615829 e!615826)))

(declare-fun res!432370 () Bool)

(assert (=> b!951407 (=> (not res!432370) (not e!615826))))

(assert (=> b!951407 (= res!432370 (not lt!344655))))

(declare-fun b!951408 () Bool)

(declare-fun res!432373 () Bool)

(assert (=> b!951408 (=> (not res!432373) (not e!615824))))

(assert (=> b!951408 (= res!432373 (isEmpty!6103 (tail!1299 Nil!9834)))))

(assert (= (and d!283886 c!154932) b!951404))

(assert (= (and d!283886 (not c!154932)) b!951406))

(assert (= (and d!283886 c!154931) b!951402))

(assert (= (and d!283886 (not c!154931)) b!951398))

(assert (= (and b!951398 c!154930) b!951399))

(assert (= (and b!951398 (not c!154930)) b!951401))

(assert (= (and b!951401 (not res!432367)) b!951405))

(assert (= (and b!951405 res!432366) b!951400))

(assert (= (and b!951400 res!432371) b!951408))

(assert (= (and b!951408 res!432373) b!951397))

(assert (= (and b!951405 (not res!432368)) b!951407))

(assert (= (and b!951407 res!432370) b!951403))

(assert (= (and b!951403 (not res!432369)) b!951396))

(assert (= (and b!951396 (not res!432372)) b!951395))

(assert (= (or b!951402 b!951400 b!951403) bm!59685))

(assert (=> b!951404 m!1163997))

(declare-fun m!1164079 () Bool)

(assert (=> b!951396 m!1164079))

(assert (=> b!951396 m!1164079))

(declare-fun m!1164081 () Bool)

(assert (=> b!951396 m!1164081))

(declare-fun m!1164083 () Bool)

(assert (=> b!951397 m!1164083))

(assert (=> b!951408 m!1164079))

(assert (=> b!951408 m!1164079))

(assert (=> b!951408 m!1164081))

(assert (=> b!951406 m!1164083))

(assert (=> b!951406 m!1164083))

(declare-fun m!1164085 () Bool)

(assert (=> b!951406 m!1164085))

(assert (=> b!951406 m!1164079))

(assert (=> b!951406 m!1164085))

(assert (=> b!951406 m!1164079))

(declare-fun m!1164087 () Bool)

(assert (=> b!951406 m!1164087))

(declare-fun m!1164089 () Bool)

(assert (=> d!283886 m!1164089))

(assert (=> d!283886 m!1163881))

(assert (=> b!951395 m!1164083))

(assert (=> bm!59685 m!1164089))

(assert (=> d!283814 d!283886))

(declare-fun bm!59686 () Bool)

(declare-fun call!59691 () Bool)

(declare-fun call!59692 () Bool)

(assert (=> bm!59686 (= call!59691 call!59692)))

(declare-fun b!951409 () Bool)

(declare-fun e!615837 () Bool)

(declare-fun e!615836 () Bool)

(assert (=> b!951409 (= e!615837 e!615836)))

(declare-fun res!432374 () Bool)

(assert (=> b!951409 (=> (not res!432374) (not e!615836))))

(assert (=> b!951409 (= res!432374 call!59691)))

(declare-fun b!951410 () Bool)

(declare-fun res!432375 () Bool)

(assert (=> b!951410 (=> res!432375 e!615837)))

(assert (=> b!951410 (= res!432375 (not (is-Concat!4453 (regOne!5752 r!15766))))))

(declare-fun e!615831 () Bool)

(assert (=> b!951410 (= e!615831 e!615837)))

(declare-fun b!951411 () Bool)

(declare-fun e!615834 () Bool)

(declare-fun e!615835 () Bool)

(assert (=> b!951411 (= e!615834 e!615835)))

(declare-fun c!154933 () Bool)

(assert (=> b!951411 (= c!154933 (is-Star!2620 (regOne!5752 r!15766)))))

(declare-fun b!951412 () Bool)

(declare-fun e!615832 () Bool)

(assert (=> b!951412 (= e!615835 e!615832)))

(declare-fun res!432378 () Bool)

(assert (=> b!951412 (= res!432378 (not (nullable!775 (reg!2949 (regOne!5752 r!15766)))))))

(assert (=> b!951412 (=> (not res!432378) (not e!615832))))

(declare-fun bm!59687 () Bool)

(declare-fun call!59693 () Bool)

(declare-fun c!154934 () Bool)

(assert (=> bm!59687 (= call!59693 (validRegex!1089 (ite c!154934 (regTwo!5753 (regOne!5752 r!15766)) (regTwo!5752 (regOne!5752 r!15766)))))))

(declare-fun d!283888 () Bool)

(declare-fun res!432376 () Bool)

(assert (=> d!283888 (=> res!432376 e!615834)))

(assert (=> d!283888 (= res!432376 (is-ElementMatch!2620 (regOne!5752 r!15766)))))

(assert (=> d!283888 (= (validRegex!1089 (regOne!5752 r!15766)) e!615834)))

(declare-fun b!951413 () Bool)

(declare-fun res!432377 () Bool)

(declare-fun e!615833 () Bool)

(assert (=> b!951413 (=> (not res!432377) (not e!615833))))

(assert (=> b!951413 (= res!432377 call!59691)))

(assert (=> b!951413 (= e!615831 e!615833)))

(declare-fun b!951414 () Bool)

(assert (=> b!951414 (= e!615833 call!59693)))

(declare-fun bm!59688 () Bool)

(assert (=> bm!59688 (= call!59692 (validRegex!1089 (ite c!154933 (reg!2949 (regOne!5752 r!15766)) (ite c!154934 (regOne!5753 (regOne!5752 r!15766)) (regOne!5752 (regOne!5752 r!15766))))))))

(declare-fun b!951415 () Bool)

(assert (=> b!951415 (= e!615835 e!615831)))

(assert (=> b!951415 (= c!154934 (is-Union!2620 (regOne!5752 r!15766)))))

(declare-fun b!951416 () Bool)

(assert (=> b!951416 (= e!615832 call!59692)))

(declare-fun b!951417 () Bool)

(assert (=> b!951417 (= e!615836 call!59693)))

(assert (= (and d!283888 (not res!432376)) b!951411))

(assert (= (and b!951411 c!154933) b!951412))

(assert (= (and b!951411 (not c!154933)) b!951415))

(assert (= (and b!951412 res!432378) b!951416))

(assert (= (and b!951415 c!154934) b!951413))

(assert (= (and b!951415 (not c!154934)) b!951410))

(assert (= (and b!951413 res!432377) b!951414))

(assert (= (and b!951410 (not res!432375)) b!951409))

(assert (= (and b!951409 res!432374) b!951417))

(assert (= (or b!951414 b!951417) bm!59687))

(assert (= (or b!951413 b!951409) bm!59686))

(assert (= (or b!951416 bm!59686) bm!59688))

(declare-fun m!1164091 () Bool)

(assert (=> b!951412 m!1164091))

(declare-fun m!1164093 () Bool)

(assert (=> bm!59687 m!1164093))

(declare-fun m!1164095 () Bool)

(assert (=> bm!59688 m!1164095))

(assert (=> d!283814 d!283888))

(declare-fun d!283890 () Bool)

(assert (=> d!283890 (= (isEmpty!6105 lt!344585) (not (is-Some!2208 lt!344585)))))

(assert (=> d!283824 d!283890))

(declare-fun d!283892 () Bool)

(assert (=> d!283892 (= (Exists!371 lambda!32678) (choose!5930 lambda!32678))))

(declare-fun bs!240076 () Bool)

(assert (= bs!240076 d!283892))

(declare-fun m!1164097 () Bool)

(assert (=> bs!240076 m!1164097))

(assert (=> d!283830 d!283892))

(declare-fun d!283894 () Bool)

(assert (=> d!283894 (= (Exists!371 lambda!32679) (choose!5930 lambda!32679))))

(declare-fun bs!240077 () Bool)

(assert (= bs!240077 d!283894))

(declare-fun m!1164099 () Bool)

(assert (=> bs!240077 m!1164099))

(assert (=> d!283830 d!283894))

(declare-fun bs!240078 () Bool)

(declare-fun d!283896 () Bool)

(assert (= bs!240078 (and d!283896 b!951110)))

(declare-fun lambda!32703 () Int)

(assert (=> bs!240078 (not (= lambda!32703 lambda!32687))))

(declare-fun bs!240079 () Bool)

(assert (= bs!240079 (and d!283896 d!283818)))

(assert (=> bs!240079 (= lambda!32703 lambda!32669)))

(declare-fun bs!240080 () Bool)

(assert (= bs!240080 (and d!283896 b!951384)))

(assert (=> bs!240080 (not (= lambda!32703 lambda!32697))))

(declare-fun bs!240081 () Bool)

(assert (= bs!240081 (and d!283896 b!950918)))

(assert (=> bs!240081 (not (= lambda!32703 lambda!32658))))

(declare-fun bs!240082 () Bool)

(assert (= bs!240082 (and d!283896 b!951114)))

(assert (=> bs!240082 (not (= lambda!32703 lambda!32686))))

(declare-fun bs!240083 () Bool)

(assert (= bs!240083 (and d!283896 d!283830)))

(assert (=> bs!240083 (= lambda!32703 lambda!32678)))

(declare-fun bs!240084 () Bool)

(assert (= bs!240084 (and d!283896 b!951380)))

(assert (=> bs!240084 (not (= lambda!32703 lambda!32698))))

(assert (=> bs!240081 (= lambda!32703 lambda!32657)))

(assert (=> bs!240083 (not (= lambda!32703 lambda!32679))))

(assert (=> d!283896 true))

(assert (=> d!283896 true))

(assert (=> d!283896 true))

(declare-fun lambda!32704 () Int)

(assert (=> bs!240078 (= (= EmptyExpr!2620 (regTwo!5752 r!15766)) (= lambda!32704 lambda!32687))))

(assert (=> bs!240079 (not (= lambda!32704 lambda!32669))))

(assert (=> bs!240080 (not (= lambda!32704 lambda!32697))))

(assert (=> bs!240081 (= lambda!32704 lambda!32658)))

(assert (=> bs!240082 (not (= lambda!32704 lambda!32686))))

(declare-fun bs!240085 () Bool)

(assert (= bs!240085 d!283896))

(assert (=> bs!240085 (not (= lambda!32704 lambda!32703))))

(assert (=> bs!240083 (not (= lambda!32704 lambda!32678))))

(assert (=> bs!240084 (= (and (= (regOne!5752 r!15766) (regOne!5752 (regOne!5753 r!15766))) (= EmptyExpr!2620 (regTwo!5752 (regOne!5753 r!15766)))) (= lambda!32704 lambda!32698))))

(assert (=> bs!240081 (not (= lambda!32704 lambda!32657))))

(assert (=> bs!240083 (= lambda!32704 lambda!32679)))

(assert (=> d!283896 true))

(assert (=> d!283896 true))

(assert (=> d!283896 true))

(assert (=> d!283896 (= (Exists!371 lambda!32703) (Exists!371 lambda!32704))))

(assert (=> d!283896 true))

(declare-fun _$90!807 () Unit!14883)

(assert (=> d!283896 (= (choose!5931 (regOne!5752 r!15766) EmptyExpr!2620 s!10566) _$90!807)))

(declare-fun m!1164101 () Bool)

(assert (=> bs!240085 m!1164101))

(declare-fun m!1164103 () Bool)

(assert (=> bs!240085 m!1164103))

(assert (=> d!283830 d!283896))

(assert (=> d!283830 d!283888))

(declare-fun d!283898 () Bool)

(declare-fun nullableFct!187 (Regex!2620) Bool)

(assert (=> d!283898 (= (nullable!775 (reg!2949 r!15766)) (nullableFct!187 (reg!2949 r!15766)))))

(declare-fun bs!240086 () Bool)

(assert (= bs!240086 d!283898))

(declare-fun m!1164105 () Bool)

(assert (=> bs!240086 m!1164105))

(assert (=> b!951067 d!283898))

(assert (=> bm!59662 d!283834))

(declare-fun d!283900 () Bool)

(assert (=> d!283900 (= (isEmpty!6103 (tail!1299 s!10566)) (is-Nil!9834 (tail!1299 s!10566)))))

(assert (=> b!951185 d!283900))

(declare-fun d!283902 () Bool)

(assert (=> d!283902 (= (tail!1299 s!10566) (t!100896 s!10566))))

(assert (=> b!951185 d!283902))

(assert (=> b!950983 d!283884))

(declare-fun bm!59689 () Bool)

(declare-fun call!59694 () Bool)

(assert (=> bm!59689 (= call!59694 (isEmpty!6103 (_2!6393 (get!3308 lt!344609))))))

(declare-fun b!951426 () Bool)

(declare-fun e!615846 () Bool)

(assert (=> b!951426 (= e!615846 (not (= (head!1737 (_2!6393 (get!3308 lt!344609))) (c!154847 EmptyExpr!2620))))))

(declare-fun b!951427 () Bool)

(declare-fun res!432393 () Bool)

(assert (=> b!951427 (=> res!432393 e!615846)))

(assert (=> b!951427 (= res!432393 (not (isEmpty!6103 (tail!1299 (_2!6393 (get!3308 lt!344609))))))))

(declare-fun b!951428 () Bool)

(declare-fun e!615842 () Bool)

(assert (=> b!951428 (= e!615842 (= (head!1737 (_2!6393 (get!3308 lt!344609))) (c!154847 EmptyExpr!2620)))))

(declare-fun b!951429 () Bool)

(declare-fun e!615848 () Bool)

(declare-fun e!615845 () Bool)

(assert (=> b!951429 (= e!615848 e!615845)))

(declare-fun c!154935 () Bool)

(assert (=> b!951429 (= c!154935 (is-EmptyLang!2620 EmptyExpr!2620))))

(declare-fun b!951430 () Bool)

(declare-fun lt!344656 () Bool)

(assert (=> b!951430 (= e!615845 (not lt!344656))))

(declare-fun b!951431 () Bool)

(declare-fun res!432392 () Bool)

(assert (=> b!951431 (=> (not res!432392) (not e!615842))))

(assert (=> b!951431 (= res!432392 (not call!59694))))

(declare-fun b!951432 () Bool)

(declare-fun res!432388 () Bool)

(declare-fun e!615847 () Bool)

(assert (=> b!951432 (=> res!432388 e!615847)))

(assert (=> b!951432 (= res!432388 (not (is-ElementMatch!2620 EmptyExpr!2620)))))

(assert (=> b!951432 (= e!615845 e!615847)))

(declare-fun b!951433 () Bool)

(assert (=> b!951433 (= e!615848 (= lt!344656 call!59694))))

(declare-fun b!951434 () Bool)

(declare-fun e!615844 () Bool)

(assert (=> b!951434 (= e!615844 e!615846)))

(declare-fun res!432390 () Bool)

(assert (=> b!951434 (=> res!432390 e!615846)))

(assert (=> b!951434 (= res!432390 call!59694)))

(declare-fun b!951435 () Bool)

(declare-fun e!615843 () Bool)

(assert (=> b!951435 (= e!615843 (nullable!775 EmptyExpr!2620))))

(declare-fun b!951436 () Bool)

(declare-fun res!432389 () Bool)

(assert (=> b!951436 (=> res!432389 e!615847)))

(assert (=> b!951436 (= res!432389 e!615842)))

(declare-fun res!432387 () Bool)

(assert (=> b!951436 (=> (not res!432387) (not e!615842))))

(assert (=> b!951436 (= res!432387 lt!344656)))

(declare-fun b!951437 () Bool)

(assert (=> b!951437 (= e!615843 (matchR!1158 (derivativeStep!584 EmptyExpr!2620 (head!1737 (_2!6393 (get!3308 lt!344609)))) (tail!1299 (_2!6393 (get!3308 lt!344609)))))))

(declare-fun d!283904 () Bool)

(assert (=> d!283904 e!615848))

(declare-fun c!154936 () Bool)

(assert (=> d!283904 (= c!154936 (is-EmptyExpr!2620 EmptyExpr!2620))))

(assert (=> d!283904 (= lt!344656 e!615843)))

(declare-fun c!154937 () Bool)

(assert (=> d!283904 (= c!154937 (isEmpty!6103 (_2!6393 (get!3308 lt!344609))))))

(assert (=> d!283904 (validRegex!1089 EmptyExpr!2620)))

(assert (=> d!283904 (= (matchR!1158 EmptyExpr!2620 (_2!6393 (get!3308 lt!344609))) lt!344656)))

(declare-fun b!951438 () Bool)

(assert (=> b!951438 (= e!615847 e!615844)))

(declare-fun res!432391 () Bool)

(assert (=> b!951438 (=> (not res!432391) (not e!615844))))

(assert (=> b!951438 (= res!432391 (not lt!344656))))

(declare-fun b!951439 () Bool)

(declare-fun res!432394 () Bool)

(assert (=> b!951439 (=> (not res!432394) (not e!615842))))

(assert (=> b!951439 (= res!432394 (isEmpty!6103 (tail!1299 (_2!6393 (get!3308 lt!344609)))))))

(assert (= (and d!283904 c!154937) b!951435))

(assert (= (and d!283904 (not c!154937)) b!951437))

(assert (= (and d!283904 c!154936) b!951433))

(assert (= (and d!283904 (not c!154936)) b!951429))

(assert (= (and b!951429 c!154935) b!951430))

(assert (= (and b!951429 (not c!154935)) b!951432))

(assert (= (and b!951432 (not res!432388)) b!951436))

(assert (= (and b!951436 res!432387) b!951431))

(assert (= (and b!951431 res!432392) b!951439))

(assert (= (and b!951439 res!432394) b!951428))

(assert (= (and b!951436 (not res!432389)) b!951438))

(assert (= (and b!951438 res!432391) b!951434))

(assert (= (and b!951434 (not res!432390)) b!951427))

(assert (= (and b!951427 (not res!432393)) b!951426))

(assert (= (or b!951433 b!951431 b!951434) bm!59689))

(declare-fun m!1164107 () Bool)

(assert (=> b!951435 m!1164107))

(declare-fun m!1164109 () Bool)

(assert (=> b!951427 m!1164109))

(assert (=> b!951427 m!1164109))

(declare-fun m!1164111 () Bool)

(assert (=> b!951427 m!1164111))

(declare-fun m!1164113 () Bool)

(assert (=> b!951428 m!1164113))

(assert (=> b!951439 m!1164109))

(assert (=> b!951439 m!1164109))

(assert (=> b!951439 m!1164111))

(assert (=> b!951437 m!1164113))

(assert (=> b!951437 m!1164113))

(declare-fun m!1164115 () Bool)

(assert (=> b!951437 m!1164115))

(assert (=> b!951437 m!1164109))

(assert (=> b!951437 m!1164115))

(assert (=> b!951437 m!1164109))

(declare-fun m!1164117 () Bool)

(assert (=> b!951437 m!1164117))

(declare-fun m!1164119 () Bool)

(assert (=> d!283904 m!1164119))

(declare-fun m!1164121 () Bool)

(assert (=> d!283904 m!1164121))

(assert (=> b!951426 m!1164113))

(assert (=> bm!59689 m!1164119))

(assert (=> b!950985 d!283904))

(assert (=> b!950985 d!283868))

(declare-fun b!951441 () Bool)

(declare-fun e!615850 () List!9850)

(assert (=> b!951441 (= e!615850 (Cons!9834 (h!15235 (_1!6393 (get!3308 lt!344609))) (++!2630 (t!100896 (_1!6393 (get!3308 lt!344609))) (_2!6393 (get!3308 lt!344609)))))))

(declare-fun b!951442 () Bool)

(declare-fun res!432395 () Bool)

(declare-fun e!615849 () Bool)

(assert (=> b!951442 (=> (not res!432395) (not e!615849))))

(declare-fun lt!344657 () List!9850)

(assert (=> b!951442 (= res!432395 (= (size!7910 lt!344657) (+ (size!7910 (_1!6393 (get!3308 lt!344609))) (size!7910 (_2!6393 (get!3308 lt!344609))))))))

(declare-fun d!283906 () Bool)

(assert (=> d!283906 e!615849))

(declare-fun res!432396 () Bool)

(assert (=> d!283906 (=> (not res!432396) (not e!615849))))

(assert (=> d!283906 (= res!432396 (= (content!1398 lt!344657) (set.union (content!1398 (_1!6393 (get!3308 lt!344609))) (content!1398 (_2!6393 (get!3308 lt!344609))))))))

(assert (=> d!283906 (= lt!344657 e!615850)))

(declare-fun c!154938 () Bool)

(assert (=> d!283906 (= c!154938 (is-Nil!9834 (_1!6393 (get!3308 lt!344609))))))

(assert (=> d!283906 (= (++!2630 (_1!6393 (get!3308 lt!344609)) (_2!6393 (get!3308 lt!344609))) lt!344657)))

(declare-fun b!951440 () Bool)

(assert (=> b!951440 (= e!615850 (_2!6393 (get!3308 lt!344609)))))

(declare-fun b!951443 () Bool)

(assert (=> b!951443 (= e!615849 (or (not (= (_2!6393 (get!3308 lt!344609)) Nil!9834)) (= lt!344657 (_1!6393 (get!3308 lt!344609)))))))

(assert (= (and d!283906 c!154938) b!951440))

(assert (= (and d!283906 (not c!154938)) b!951441))

(assert (= (and d!283906 res!432396) b!951442))

(assert (= (and b!951442 res!432395) b!951443))

(declare-fun m!1164123 () Bool)

(assert (=> b!951441 m!1164123))

(declare-fun m!1164125 () Bool)

(assert (=> b!951442 m!1164125))

(declare-fun m!1164127 () Bool)

(assert (=> b!951442 m!1164127))

(declare-fun m!1164129 () Bool)

(assert (=> b!951442 m!1164129))

(declare-fun m!1164131 () Bool)

(assert (=> d!283906 m!1164131))

(declare-fun m!1164133 () Bool)

(assert (=> d!283906 m!1164133))

(declare-fun m!1164135 () Bool)

(assert (=> d!283906 m!1164135))

(assert (=> b!950984 d!283906))

(assert (=> b!950984 d!283868))

(declare-fun d!283908 () Bool)

(assert (=> d!283908 true))

(assert (=> d!283908 true))

(declare-fun res!432399 () Bool)

(assert (=> d!283908 (= (choose!5930 lambda!32657) res!432399)))

(assert (=> d!283820 d!283908))

(declare-fun bm!59690 () Bool)

(declare-fun call!59695 () Bool)

(assert (=> bm!59690 (= call!59695 (isEmpty!6103 s!10566))))

(declare-fun b!951444 () Bool)

(declare-fun e!615855 () Bool)

(assert (=> b!951444 (= e!615855 (not (= (head!1737 s!10566) (c!154847 EmptyExpr!2620))))))

(declare-fun b!951445 () Bool)

(declare-fun res!432406 () Bool)

(assert (=> b!951445 (=> res!432406 e!615855)))

(assert (=> b!951445 (= res!432406 (not (isEmpty!6103 (tail!1299 s!10566))))))

(declare-fun b!951446 () Bool)

(declare-fun e!615851 () Bool)

(assert (=> b!951446 (= e!615851 (= (head!1737 s!10566) (c!154847 EmptyExpr!2620)))))

(declare-fun b!951447 () Bool)

(declare-fun e!615857 () Bool)

(declare-fun e!615854 () Bool)

(assert (=> b!951447 (= e!615857 e!615854)))

(declare-fun c!154939 () Bool)

(assert (=> b!951447 (= c!154939 (is-EmptyLang!2620 EmptyExpr!2620))))

(declare-fun b!951448 () Bool)

(declare-fun lt!344658 () Bool)

(assert (=> b!951448 (= e!615854 (not lt!344658))))

(declare-fun b!951449 () Bool)

(declare-fun res!432405 () Bool)

(assert (=> b!951449 (=> (not res!432405) (not e!615851))))

(assert (=> b!951449 (= res!432405 (not call!59695))))

(declare-fun b!951450 () Bool)

(declare-fun res!432401 () Bool)

(declare-fun e!615856 () Bool)

(assert (=> b!951450 (=> res!432401 e!615856)))

(assert (=> b!951450 (= res!432401 (not (is-ElementMatch!2620 EmptyExpr!2620)))))

(assert (=> b!951450 (= e!615854 e!615856)))

(declare-fun b!951451 () Bool)

(assert (=> b!951451 (= e!615857 (= lt!344658 call!59695))))

(declare-fun b!951452 () Bool)

(declare-fun e!615853 () Bool)

(assert (=> b!951452 (= e!615853 e!615855)))

(declare-fun res!432403 () Bool)

(assert (=> b!951452 (=> res!432403 e!615855)))

(assert (=> b!951452 (= res!432403 call!59695)))

(declare-fun b!951453 () Bool)

(declare-fun e!615852 () Bool)

(assert (=> b!951453 (= e!615852 (nullable!775 EmptyExpr!2620))))

(declare-fun b!951454 () Bool)

(declare-fun res!432402 () Bool)

(assert (=> b!951454 (=> res!432402 e!615856)))

(assert (=> b!951454 (= res!432402 e!615851)))

(declare-fun res!432400 () Bool)

(assert (=> b!951454 (=> (not res!432400) (not e!615851))))

(assert (=> b!951454 (= res!432400 lt!344658)))

(declare-fun b!951455 () Bool)

(assert (=> b!951455 (= e!615852 (matchR!1158 (derivativeStep!584 EmptyExpr!2620 (head!1737 s!10566)) (tail!1299 s!10566)))))

(declare-fun d!283910 () Bool)

(assert (=> d!283910 e!615857))

(declare-fun c!154940 () Bool)

(assert (=> d!283910 (= c!154940 (is-EmptyExpr!2620 EmptyExpr!2620))))

(assert (=> d!283910 (= lt!344658 e!615852)))

(declare-fun c!154941 () Bool)

(assert (=> d!283910 (= c!154941 (isEmpty!6103 s!10566))))

(assert (=> d!283910 (validRegex!1089 EmptyExpr!2620)))

(assert (=> d!283910 (= (matchR!1158 EmptyExpr!2620 s!10566) lt!344658)))

(declare-fun b!951456 () Bool)

(assert (=> b!951456 (= e!615856 e!615853)))

(declare-fun res!432404 () Bool)

(assert (=> b!951456 (=> (not res!432404) (not e!615853))))

(assert (=> b!951456 (= res!432404 (not lt!344658))))

(declare-fun b!951457 () Bool)

(declare-fun res!432407 () Bool)

(assert (=> b!951457 (=> (not res!432407) (not e!615851))))

(assert (=> b!951457 (= res!432407 (isEmpty!6103 (tail!1299 s!10566)))))

(assert (= (and d!283910 c!154941) b!951453))

(assert (= (and d!283910 (not c!154941)) b!951455))

(assert (= (and d!283910 c!154940) b!951451))

(assert (= (and d!283910 (not c!154940)) b!951447))

(assert (= (and b!951447 c!154939) b!951448))

(assert (= (and b!951447 (not c!154939)) b!951450))

(assert (= (and b!951450 (not res!432401)) b!951454))

(assert (= (and b!951454 res!432400) b!951449))

(assert (= (and b!951449 res!432405) b!951457))

(assert (= (and b!951457 res!432407) b!951446))

(assert (= (and b!951454 (not res!432402)) b!951456))

(assert (= (and b!951456 res!432404) b!951452))

(assert (= (and b!951452 (not res!432403)) b!951445))

(assert (= (and b!951445 (not res!432406)) b!951444))

(assert (= (or b!951451 b!951449 b!951452) bm!59690))

(assert (=> b!951453 m!1164107))

(assert (=> b!951445 m!1163923))

(assert (=> b!951445 m!1163923))

(assert (=> b!951445 m!1163925))

(assert (=> b!951446 m!1163927))

(assert (=> b!951457 m!1163923))

(assert (=> b!951457 m!1163923))

(assert (=> b!951457 m!1163925))

(assert (=> b!951455 m!1163927))

(assert (=> b!951455 m!1163927))

(declare-fun m!1164137 () Bool)

(assert (=> b!951455 m!1164137))

(assert (=> b!951455 m!1163923))

(assert (=> b!951455 m!1164137))

(assert (=> b!951455 m!1163923))

(declare-fun m!1164139 () Bool)

(assert (=> b!951455 m!1164139))

(assert (=> d!283910 m!1163809))

(assert (=> d!283910 m!1164121))

(assert (=> b!951444 m!1163927))

(assert (=> bm!59690 m!1163809))

(assert (=> b!950982 d!283910))

(declare-fun bm!59691 () Bool)

(declare-fun call!59696 () Bool)

(assert (=> bm!59691 (= call!59696 (isEmpty!6103 (tail!1299 s!10566)))))

(declare-fun b!951458 () Bool)

(declare-fun e!615862 () Bool)

(assert (=> b!951458 (= e!615862 (not (= (head!1737 (tail!1299 s!10566)) (c!154847 (derivativeStep!584 r!15766 (head!1737 s!10566))))))))

(declare-fun b!951459 () Bool)

(declare-fun res!432414 () Bool)

(assert (=> b!951459 (=> res!432414 e!615862)))

(assert (=> b!951459 (= res!432414 (not (isEmpty!6103 (tail!1299 (tail!1299 s!10566)))))))

(declare-fun b!951460 () Bool)

(declare-fun e!615858 () Bool)

(assert (=> b!951460 (= e!615858 (= (head!1737 (tail!1299 s!10566)) (c!154847 (derivativeStep!584 r!15766 (head!1737 s!10566)))))))

(declare-fun b!951461 () Bool)

(declare-fun e!615864 () Bool)

(declare-fun e!615861 () Bool)

(assert (=> b!951461 (= e!615864 e!615861)))

(declare-fun c!154942 () Bool)

(assert (=> b!951461 (= c!154942 (is-EmptyLang!2620 (derivativeStep!584 r!15766 (head!1737 s!10566))))))

(declare-fun b!951462 () Bool)

(declare-fun lt!344659 () Bool)

(assert (=> b!951462 (= e!615861 (not lt!344659))))

(declare-fun b!951463 () Bool)

(declare-fun res!432413 () Bool)

(assert (=> b!951463 (=> (not res!432413) (not e!615858))))

(assert (=> b!951463 (= res!432413 (not call!59696))))

(declare-fun b!951464 () Bool)

(declare-fun res!432409 () Bool)

(declare-fun e!615863 () Bool)

(assert (=> b!951464 (=> res!432409 e!615863)))

(assert (=> b!951464 (= res!432409 (not (is-ElementMatch!2620 (derivativeStep!584 r!15766 (head!1737 s!10566)))))))

(assert (=> b!951464 (= e!615861 e!615863)))

(declare-fun b!951465 () Bool)

(assert (=> b!951465 (= e!615864 (= lt!344659 call!59696))))

(declare-fun b!951466 () Bool)

(declare-fun e!615860 () Bool)

(assert (=> b!951466 (= e!615860 e!615862)))

(declare-fun res!432411 () Bool)

(assert (=> b!951466 (=> res!432411 e!615862)))

(assert (=> b!951466 (= res!432411 call!59696)))

(declare-fun b!951467 () Bool)

(declare-fun e!615859 () Bool)

(assert (=> b!951467 (= e!615859 (nullable!775 (derivativeStep!584 r!15766 (head!1737 s!10566))))))

(declare-fun b!951468 () Bool)

(declare-fun res!432410 () Bool)

(assert (=> b!951468 (=> res!432410 e!615863)))

(assert (=> b!951468 (= res!432410 e!615858)))

(declare-fun res!432408 () Bool)

(assert (=> b!951468 (=> (not res!432408) (not e!615858))))

(assert (=> b!951468 (= res!432408 lt!344659)))

(declare-fun b!951469 () Bool)

(assert (=> b!951469 (= e!615859 (matchR!1158 (derivativeStep!584 (derivativeStep!584 r!15766 (head!1737 s!10566)) (head!1737 (tail!1299 s!10566))) (tail!1299 (tail!1299 s!10566))))))

(declare-fun d!283912 () Bool)

(assert (=> d!283912 e!615864))

(declare-fun c!154943 () Bool)

(assert (=> d!283912 (= c!154943 (is-EmptyExpr!2620 (derivativeStep!584 r!15766 (head!1737 s!10566))))))

(assert (=> d!283912 (= lt!344659 e!615859)))

(declare-fun c!154944 () Bool)

(assert (=> d!283912 (= c!154944 (isEmpty!6103 (tail!1299 s!10566)))))

(assert (=> d!283912 (validRegex!1089 (derivativeStep!584 r!15766 (head!1737 s!10566)))))

(assert (=> d!283912 (= (matchR!1158 (derivativeStep!584 r!15766 (head!1737 s!10566)) (tail!1299 s!10566)) lt!344659)))

(declare-fun b!951470 () Bool)

(assert (=> b!951470 (= e!615863 e!615860)))

(declare-fun res!432412 () Bool)

(assert (=> b!951470 (=> (not res!432412) (not e!615860))))

(assert (=> b!951470 (= res!432412 (not lt!344659))))

(declare-fun b!951471 () Bool)

(declare-fun res!432415 () Bool)

(assert (=> b!951471 (=> (not res!432415) (not e!615858))))

(assert (=> b!951471 (= res!432415 (isEmpty!6103 (tail!1299 (tail!1299 s!10566))))))

(assert (= (and d!283912 c!154944) b!951467))

(assert (= (and d!283912 (not c!154944)) b!951469))

(assert (= (and d!283912 c!154943) b!951465))

(assert (= (and d!283912 (not c!154943)) b!951461))

(assert (= (and b!951461 c!154942) b!951462))

(assert (= (and b!951461 (not c!154942)) b!951464))

(assert (= (and b!951464 (not res!432409)) b!951468))

(assert (= (and b!951468 res!432408) b!951463))

(assert (= (and b!951463 res!432413) b!951471))

(assert (= (and b!951471 res!432415) b!951460))

(assert (= (and b!951468 (not res!432410)) b!951470))

(assert (= (and b!951470 res!432412) b!951466))

(assert (= (and b!951466 (not res!432411)) b!951459))

(assert (= (and b!951459 (not res!432414)) b!951458))

(assert (= (or b!951465 b!951463 b!951466) bm!59691))

(assert (=> b!951467 m!1163929))

(declare-fun m!1164141 () Bool)

(assert (=> b!951467 m!1164141))

(assert (=> b!951459 m!1163923))

(declare-fun m!1164143 () Bool)

(assert (=> b!951459 m!1164143))

(assert (=> b!951459 m!1164143))

(declare-fun m!1164145 () Bool)

(assert (=> b!951459 m!1164145))

(assert (=> b!951460 m!1163923))

(declare-fun m!1164147 () Bool)

(assert (=> b!951460 m!1164147))

(assert (=> b!951471 m!1163923))

(assert (=> b!951471 m!1164143))

(assert (=> b!951471 m!1164143))

(assert (=> b!951471 m!1164145))

(assert (=> b!951469 m!1163923))

(assert (=> b!951469 m!1164147))

(assert (=> b!951469 m!1163929))

(assert (=> b!951469 m!1164147))

(declare-fun m!1164149 () Bool)

(assert (=> b!951469 m!1164149))

(assert (=> b!951469 m!1163923))

(assert (=> b!951469 m!1164143))

(assert (=> b!951469 m!1164149))

(assert (=> b!951469 m!1164143))

(declare-fun m!1164151 () Bool)

(assert (=> b!951469 m!1164151))

(assert (=> d!283912 m!1163923))

(assert (=> d!283912 m!1163925))

(assert (=> d!283912 m!1163929))

(declare-fun m!1164153 () Bool)

(assert (=> d!283912 m!1164153))

(assert (=> b!951458 m!1163923))

(assert (=> b!951458 m!1164147))

(assert (=> bm!59691 m!1163923))

(assert (=> bm!59691 m!1163925))

(assert (=> b!951183 d!283912))

(declare-fun b!951492 () Bool)

(declare-fun c!154957 () Bool)

(assert (=> b!951492 (= c!154957 (nullable!775 (regOne!5752 r!15766)))))

(declare-fun e!615875 () Regex!2620)

(declare-fun e!615876 () Regex!2620)

(assert (=> b!951492 (= e!615875 e!615876)))

(declare-fun b!951493 () Bool)

(declare-fun e!615878 () Regex!2620)

(assert (=> b!951493 (= e!615878 e!615875)))

(declare-fun c!154955 () Bool)

(assert (=> b!951493 (= c!154955 (is-Star!2620 r!15766))))

(declare-fun b!951494 () Bool)

(declare-fun e!615879 () Regex!2620)

(declare-fun e!615877 () Regex!2620)

(assert (=> b!951494 (= e!615879 e!615877)))

(declare-fun c!154959 () Bool)

(assert (=> b!951494 (= c!154959 (is-ElementMatch!2620 r!15766))))

(declare-fun d!283914 () Bool)

(declare-fun lt!344662 () Regex!2620)

(assert (=> d!283914 (validRegex!1089 lt!344662)))

(assert (=> d!283914 (= lt!344662 e!615879)))

(declare-fun c!154956 () Bool)

(assert (=> d!283914 (= c!154956 (or (is-EmptyExpr!2620 r!15766) (is-EmptyLang!2620 r!15766)))))

(assert (=> d!283914 (validRegex!1089 r!15766)))

(assert (=> d!283914 (= (derivativeStep!584 r!15766 (head!1737 s!10566)) lt!344662)))

(declare-fun b!951495 () Bool)

(declare-fun call!59708 () Regex!2620)

(declare-fun call!59706 () Regex!2620)

(assert (=> b!951495 (= e!615878 (Union!2620 call!59708 call!59706))))

(declare-fun c!154958 () Bool)

(declare-fun bm!59700 () Bool)

(assert (=> bm!59700 (= call!59708 (derivativeStep!584 (ite c!154958 (regOne!5753 r!15766) (regOne!5752 r!15766)) (head!1737 s!10566)))))

(declare-fun b!951496 () Bool)

(declare-fun call!59707 () Regex!2620)

(assert (=> b!951496 (= e!615875 (Concat!4453 call!59707 r!15766))))

(declare-fun b!951497 () Bool)

(declare-fun call!59705 () Regex!2620)

(assert (=> b!951497 (= e!615876 (Union!2620 (Concat!4453 call!59705 (regTwo!5752 r!15766)) EmptyLang!2620))))

(declare-fun bm!59701 () Bool)

(assert (=> bm!59701 (= call!59705 call!59707)))

(declare-fun bm!59702 () Bool)

(assert (=> bm!59702 (= call!59706 (derivativeStep!584 (ite c!154958 (regTwo!5753 r!15766) (ite c!154955 (reg!2949 r!15766) (ite c!154957 (regTwo!5752 r!15766) (regOne!5752 r!15766)))) (head!1737 s!10566)))))

(declare-fun b!951498 () Bool)

(assert (=> b!951498 (= e!615877 (ite (= (head!1737 s!10566) (c!154847 r!15766)) EmptyExpr!2620 EmptyLang!2620))))

(declare-fun b!951499 () Bool)

(assert (=> b!951499 (= e!615879 EmptyLang!2620)))

(declare-fun b!951500 () Bool)

(assert (=> b!951500 (= e!615876 (Union!2620 (Concat!4453 call!59708 (regTwo!5752 r!15766)) call!59705))))

(declare-fun bm!59703 () Bool)

(assert (=> bm!59703 (= call!59707 call!59706)))

(declare-fun b!951501 () Bool)

(assert (=> b!951501 (= c!154958 (is-Union!2620 r!15766))))

(assert (=> b!951501 (= e!615877 e!615878)))

(assert (= (and d!283914 c!154956) b!951499))

(assert (= (and d!283914 (not c!154956)) b!951494))

(assert (= (and b!951494 c!154959) b!951498))

(assert (= (and b!951494 (not c!154959)) b!951501))

(assert (= (and b!951501 c!154958) b!951495))

(assert (= (and b!951501 (not c!154958)) b!951493))

(assert (= (and b!951493 c!154955) b!951496))

(assert (= (and b!951493 (not c!154955)) b!951492))

(assert (= (and b!951492 c!154957) b!951500))

(assert (= (and b!951492 (not c!154957)) b!951497))

(assert (= (or b!951500 b!951497) bm!59701))

(assert (= (or b!951496 bm!59701) bm!59703))

(assert (= (or b!951495 b!951500) bm!59700))

(assert (= (or b!951495 bm!59703) bm!59702))

(assert (=> b!951492 m!1163997))

(declare-fun m!1164155 () Bool)

(assert (=> d!283914 m!1164155))

(assert (=> d!283914 m!1163833))

(assert (=> bm!59700 m!1163927))

(declare-fun m!1164157 () Bool)

(assert (=> bm!59700 m!1164157))

(assert (=> bm!59702 m!1163927))

(declare-fun m!1164159 () Bool)

(assert (=> bm!59702 m!1164159))

(assert (=> b!951183 d!283914))

(declare-fun d!283916 () Bool)

(assert (=> d!283916 (= (head!1737 s!10566) (h!15235 s!10566))))

(assert (=> b!951183 d!283916))

(assert (=> b!951183 d!283902))

(declare-fun d!283918 () Bool)

(assert (=> d!283918 true))

(assert (=> d!283918 true))

(declare-fun res!432416 () Bool)

(assert (=> d!283918 (= (choose!5930 lambda!32658) res!432416)))

(assert (=> d!283826 d!283918))

(declare-fun d!283920 () Bool)

(assert (=> d!283920 (= (nullable!775 r!15766) (nullableFct!187 r!15766))))

(declare-fun bs!240087 () Bool)

(assert (= bs!240087 d!283920))

(declare-fun m!1164161 () Bool)

(assert (=> bs!240087 m!1164161))

(assert (=> b!951181 d!283920))

(declare-fun d!283922 () Bool)

(assert (=> d!283922 (= (Exists!371 (ite c!154881 lambda!32686 lambda!32687)) (choose!5930 (ite c!154881 lambda!32686 lambda!32687)))))

(declare-fun bs!240088 () Bool)

(assert (= bs!240088 d!283922))

(declare-fun m!1164163 () Bool)

(assert (=> bs!240088 m!1164163))

(assert (=> bm!59663 d!283922))

(assert (=> d!283840 d!283834))

(assert (=> d!283840 d!283832))

(assert (=> b!951174 d!283916))

(declare-fun d!283924 () Bool)

(assert (=> d!283924 (= (isDefined!1851 (findConcatSeparation!315 (regOne!5752 r!15766) EmptyExpr!2620 Nil!9834 s!10566 s!10566)) (not (isEmpty!6105 (findConcatSeparation!315 (regOne!5752 r!15766) EmptyExpr!2620 Nil!9834 s!10566 s!10566))))))

(declare-fun bs!240089 () Bool)

(assert (= bs!240089 d!283924))

(assert (=> bs!240089 m!1163819))

(declare-fun m!1164165 () Bool)

(assert (=> bs!240089 m!1164165))

(assert (=> d!283818 d!283924))

(assert (=> d!283818 d!283888))

(assert (=> d!283818 d!283814))

(declare-fun bs!240090 () Bool)

(declare-fun d!283926 () Bool)

(assert (= bs!240090 (and d!283926 b!951110)))

(declare-fun lambda!32707 () Int)

(assert (=> bs!240090 (not (= lambda!32707 lambda!32687))))

(declare-fun bs!240091 () Bool)

(assert (= bs!240091 (and d!283926 d!283818)))

(assert (=> bs!240091 (= lambda!32707 lambda!32669)))

(declare-fun bs!240092 () Bool)

(assert (= bs!240092 (and d!283926 b!951384)))

(assert (=> bs!240092 (not (= lambda!32707 lambda!32697))))

(declare-fun bs!240093 () Bool)

(assert (= bs!240093 (and d!283926 b!950918)))

(assert (=> bs!240093 (not (= lambda!32707 lambda!32658))))

(declare-fun bs!240094 () Bool)

(assert (= bs!240094 (and d!283926 b!951114)))

(assert (=> bs!240094 (not (= lambda!32707 lambda!32686))))

(declare-fun bs!240095 () Bool)

(assert (= bs!240095 (and d!283926 d!283896)))

(assert (=> bs!240095 (= lambda!32707 lambda!32703)))

(declare-fun bs!240096 () Bool)

(assert (= bs!240096 (and d!283926 d!283830)))

(assert (=> bs!240096 (= lambda!32707 lambda!32678)))

(declare-fun bs!240097 () Bool)

(assert (= bs!240097 (and d!283926 b!951380)))

(assert (=> bs!240097 (not (= lambda!32707 lambda!32698))))

(assert (=> bs!240095 (not (= lambda!32707 lambda!32704))))

(assert (=> bs!240093 (= lambda!32707 lambda!32657)))

(assert (=> bs!240096 (not (= lambda!32707 lambda!32679))))

(assert (=> d!283926 true))

(assert (=> d!283926 true))

(assert (=> d!283926 true))

(assert (=> d!283926 (= (isDefined!1851 (findConcatSeparation!315 (regOne!5752 r!15766) EmptyExpr!2620 Nil!9834 s!10566 s!10566)) (Exists!371 lambda!32707))))

(assert (=> d!283926 true))

(declare-fun _$89!1129 () Unit!14883)

(assert (=> d!283926 (= (choose!5929 (regOne!5752 r!15766) EmptyExpr!2620 s!10566) _$89!1129)))

(declare-fun bs!240098 () Bool)

(assert (= bs!240098 d!283926))

(assert (=> bs!240098 m!1163819))

(assert (=> bs!240098 m!1163819))

(assert (=> bs!240098 m!1163887))

(declare-fun m!1164167 () Bool)

(assert (=> bs!240098 m!1164167))

(assert (=> d!283818 d!283926))

(declare-fun d!283928 () Bool)

(assert (=> d!283928 (= (Exists!371 lambda!32669) (choose!5930 lambda!32669))))

(declare-fun bs!240099 () Bool)

(assert (= bs!240099 d!283928))

(declare-fun m!1164169 () Bool)

(assert (=> bs!240099 m!1164169))

(assert (=> d!283818 d!283928))

(declare-fun bm!59704 () Bool)

(declare-fun call!59709 () Bool)

(declare-fun call!59710 () Bool)

(assert (=> bm!59704 (= call!59709 call!59710)))

(declare-fun b!951506 () Bool)

(declare-fun e!615888 () Bool)

(declare-fun e!615887 () Bool)

(assert (=> b!951506 (= e!615888 e!615887)))

(declare-fun res!432421 () Bool)

(assert (=> b!951506 (=> (not res!432421) (not e!615887))))

(assert (=> b!951506 (= res!432421 call!59709)))

(declare-fun b!951507 () Bool)

(declare-fun res!432422 () Bool)

(assert (=> b!951507 (=> res!432422 e!615888)))

(assert (=> b!951507 (= res!432422 (not (is-Concat!4453 (ite c!154871 (reg!2949 r!15766) (ite c!154872 (regOne!5753 r!15766) (regOne!5752 r!15766))))))))

(declare-fun e!615882 () Bool)

(assert (=> b!951507 (= e!615882 e!615888)))

(declare-fun b!951508 () Bool)

(declare-fun e!615885 () Bool)

(declare-fun e!615886 () Bool)

(assert (=> b!951508 (= e!615885 e!615886)))

(declare-fun c!154960 () Bool)

(assert (=> b!951508 (= c!154960 (is-Star!2620 (ite c!154871 (reg!2949 r!15766) (ite c!154872 (regOne!5753 r!15766) (regOne!5752 r!15766)))))))

(declare-fun b!951509 () Bool)

(declare-fun e!615883 () Bool)

(assert (=> b!951509 (= e!615886 e!615883)))

(declare-fun res!432425 () Bool)

(assert (=> b!951509 (= res!432425 (not (nullable!775 (reg!2949 (ite c!154871 (reg!2949 r!15766) (ite c!154872 (regOne!5753 r!15766) (regOne!5752 r!15766)))))))))

(assert (=> b!951509 (=> (not res!432425) (not e!615883))))

(declare-fun bm!59705 () Bool)

(declare-fun call!59711 () Bool)

(declare-fun c!154961 () Bool)

(assert (=> bm!59705 (= call!59711 (validRegex!1089 (ite c!154961 (regTwo!5753 (ite c!154871 (reg!2949 r!15766) (ite c!154872 (regOne!5753 r!15766) (regOne!5752 r!15766)))) (regTwo!5752 (ite c!154871 (reg!2949 r!15766) (ite c!154872 (regOne!5753 r!15766) (regOne!5752 r!15766)))))))))

(declare-fun d!283930 () Bool)

(declare-fun res!432423 () Bool)

(assert (=> d!283930 (=> res!432423 e!615885)))

(assert (=> d!283930 (= res!432423 (is-ElementMatch!2620 (ite c!154871 (reg!2949 r!15766) (ite c!154872 (regOne!5753 r!15766) (regOne!5752 r!15766)))))))

(assert (=> d!283930 (= (validRegex!1089 (ite c!154871 (reg!2949 r!15766) (ite c!154872 (regOne!5753 r!15766) (regOne!5752 r!15766)))) e!615885)))

(declare-fun b!951510 () Bool)

(declare-fun res!432424 () Bool)

(declare-fun e!615884 () Bool)

(assert (=> b!951510 (=> (not res!432424) (not e!615884))))

(assert (=> b!951510 (= res!432424 call!59709)))

(assert (=> b!951510 (= e!615882 e!615884)))

(declare-fun b!951511 () Bool)

(assert (=> b!951511 (= e!615884 call!59711)))

(declare-fun bm!59706 () Bool)

(assert (=> bm!59706 (= call!59710 (validRegex!1089 (ite c!154960 (reg!2949 (ite c!154871 (reg!2949 r!15766) (ite c!154872 (regOne!5753 r!15766) (regOne!5752 r!15766)))) (ite c!154961 (regOne!5753 (ite c!154871 (reg!2949 r!15766) (ite c!154872 (regOne!5753 r!15766) (regOne!5752 r!15766)))) (regOne!5752 (ite c!154871 (reg!2949 r!15766) (ite c!154872 (regOne!5753 r!15766) (regOne!5752 r!15766))))))))))

(declare-fun b!951512 () Bool)

(assert (=> b!951512 (= e!615886 e!615882)))

(assert (=> b!951512 (= c!154961 (is-Union!2620 (ite c!154871 (reg!2949 r!15766) (ite c!154872 (regOne!5753 r!15766) (regOne!5752 r!15766)))))))

(declare-fun b!951513 () Bool)

(assert (=> b!951513 (= e!615883 call!59710)))

(declare-fun b!951514 () Bool)

(assert (=> b!951514 (= e!615887 call!59711)))

(assert (= (and d!283930 (not res!432423)) b!951508))

(assert (= (and b!951508 c!154960) b!951509))

(assert (= (and b!951508 (not c!154960)) b!951512))

(assert (= (and b!951509 res!432425) b!951513))

(assert (= (and b!951512 c!154961) b!951510))

(assert (= (and b!951512 (not c!154961)) b!951507))

(assert (= (and b!951510 res!432424) b!951511))

(assert (= (and b!951507 (not res!432422)) b!951506))

(assert (= (and b!951506 res!432421) b!951514))

(assert (= (or b!951511 b!951514) bm!59705))

(assert (= (or b!951510 b!951506) bm!59704))

(assert (= (or b!951513 bm!59704) bm!59706))

(declare-fun m!1164171 () Bool)

(assert (=> b!951509 m!1164171))

(declare-fun m!1164173 () Bool)

(assert (=> bm!59705 m!1164173))

(declare-fun m!1164175 () Bool)

(assert (=> bm!59706 m!1164175))

(assert (=> bm!59657 d!283930))

(assert (=> bm!59668 d!283834))

(assert (=> b!951172 d!283916))

(declare-fun bs!240100 () Bool)

(declare-fun b!951524 () Bool)

(assert (= bs!240100 (and b!951524 b!951110)))

(declare-fun lambda!32708 () Int)

(assert (=> bs!240100 (not (= lambda!32708 lambda!32687))))

(declare-fun bs!240101 () Bool)

(assert (= bs!240101 (and b!951524 d!283818)))

(assert (=> bs!240101 (not (= lambda!32708 lambda!32669))))

(declare-fun bs!240102 () Bool)

(assert (= bs!240102 (and b!951524 b!951384)))

(assert (=> bs!240102 (= (and (= (reg!2949 (regTwo!5753 r!15766)) (reg!2949 (regOne!5753 r!15766))) (= (regTwo!5753 r!15766) (regOne!5753 r!15766))) (= lambda!32708 lambda!32697))))

(declare-fun bs!240103 () Bool)

(assert (= bs!240103 (and b!951524 b!950918)))

(assert (=> bs!240103 (not (= lambda!32708 lambda!32658))))

(declare-fun bs!240104 () Bool)

(assert (= bs!240104 (and b!951524 b!951114)))

(assert (=> bs!240104 (= (and (= (reg!2949 (regTwo!5753 r!15766)) (reg!2949 r!15766)) (= (regTwo!5753 r!15766) r!15766)) (= lambda!32708 lambda!32686))))

(declare-fun bs!240105 () Bool)

(assert (= bs!240105 (and b!951524 d!283896)))

(assert (=> bs!240105 (not (= lambda!32708 lambda!32703))))

(declare-fun bs!240106 () Bool)

(assert (= bs!240106 (and b!951524 d!283830)))

(assert (=> bs!240106 (not (= lambda!32708 lambda!32678))))

(declare-fun bs!240107 () Bool)

(assert (= bs!240107 (and b!951524 b!951380)))

(assert (=> bs!240107 (not (= lambda!32708 lambda!32698))))

(declare-fun bs!240108 () Bool)

(assert (= bs!240108 (and b!951524 d!283926)))

(assert (=> bs!240108 (not (= lambda!32708 lambda!32707))))

(assert (=> bs!240105 (not (= lambda!32708 lambda!32704))))

(assert (=> bs!240103 (not (= lambda!32708 lambda!32657))))

(assert (=> bs!240106 (not (= lambda!32708 lambda!32679))))

(assert (=> b!951524 true))

(assert (=> b!951524 true))

(declare-fun bs!240109 () Bool)

(declare-fun b!951520 () Bool)

(assert (= bs!240109 (and b!951520 b!951110)))

(declare-fun lambda!32709 () Int)

(assert (=> bs!240109 (= (and (= (regOne!5752 (regTwo!5753 r!15766)) (regOne!5752 r!15766)) (= (regTwo!5752 (regTwo!5753 r!15766)) (regTwo!5752 r!15766))) (= lambda!32709 lambda!32687))))

(declare-fun bs!240110 () Bool)

(assert (= bs!240110 (and b!951520 d!283818)))

(assert (=> bs!240110 (not (= lambda!32709 lambda!32669))))

(declare-fun bs!240111 () Bool)

(assert (= bs!240111 (and b!951520 b!951384)))

(assert (=> bs!240111 (not (= lambda!32709 lambda!32697))))

(declare-fun bs!240112 () Bool)

(assert (= bs!240112 (and b!951520 b!950918)))

(assert (=> bs!240112 (= (and (= (regOne!5752 (regTwo!5753 r!15766)) (regOne!5752 r!15766)) (= (regTwo!5752 (regTwo!5753 r!15766)) EmptyExpr!2620)) (= lambda!32709 lambda!32658))))

(declare-fun bs!240113 () Bool)

(assert (= bs!240113 (and b!951520 b!951114)))

(assert (=> bs!240113 (not (= lambda!32709 lambda!32686))))

(declare-fun bs!240114 () Bool)

(assert (= bs!240114 (and b!951520 d!283896)))

(assert (=> bs!240114 (not (= lambda!32709 lambda!32703))))

(declare-fun bs!240115 () Bool)

(assert (= bs!240115 (and b!951520 d!283830)))

(assert (=> bs!240115 (not (= lambda!32709 lambda!32678))))

(declare-fun bs!240116 () Bool)

(assert (= bs!240116 (and b!951520 b!951380)))

(assert (=> bs!240116 (= (and (= (regOne!5752 (regTwo!5753 r!15766)) (regOne!5752 (regOne!5753 r!15766))) (= (regTwo!5752 (regTwo!5753 r!15766)) (regTwo!5752 (regOne!5753 r!15766)))) (= lambda!32709 lambda!32698))))

(declare-fun bs!240117 () Bool)

(assert (= bs!240117 (and b!951520 b!951524)))

(assert (=> bs!240117 (not (= lambda!32709 lambda!32708))))

(declare-fun bs!240118 () Bool)

(assert (= bs!240118 (and b!951520 d!283926)))

(assert (=> bs!240118 (not (= lambda!32709 lambda!32707))))

(assert (=> bs!240114 (= (and (= (regOne!5752 (regTwo!5753 r!15766)) (regOne!5752 r!15766)) (= (regTwo!5752 (regTwo!5753 r!15766)) EmptyExpr!2620)) (= lambda!32709 lambda!32704))))

(assert (=> bs!240112 (not (= lambda!32709 lambda!32657))))

(assert (=> bs!240115 (= (and (= (regOne!5752 (regTwo!5753 r!15766)) (regOne!5752 r!15766)) (= (regTwo!5752 (regTwo!5753 r!15766)) EmptyExpr!2620)) (= lambda!32709 lambda!32679))))

(assert (=> b!951520 true))

(assert (=> b!951520 true))

(declare-fun b!951515 () Bool)

(declare-fun e!615892 () Bool)

(declare-fun e!615894 () Bool)

(assert (=> b!951515 (= e!615892 e!615894)))

(declare-fun res!432427 () Bool)

(assert (=> b!951515 (= res!432427 (not (is-EmptyLang!2620 (regTwo!5753 r!15766))))))

(assert (=> b!951515 (=> (not res!432427) (not e!615894))))

(declare-fun b!951516 () Bool)

(declare-fun c!154963 () Bool)

(assert (=> b!951516 (= c!154963 (is-ElementMatch!2620 (regTwo!5753 r!15766)))))

(declare-fun e!615893 () Bool)

(assert (=> b!951516 (= e!615894 e!615893)))

(declare-fun bm!59707 () Bool)

(declare-fun call!59713 () Bool)

(assert (=> bm!59707 (= call!59713 (isEmpty!6103 s!10566))))

(declare-fun b!951517 () Bool)

(declare-fun e!615890 () Bool)

(declare-fun e!615895 () Bool)

(assert (=> b!951517 (= e!615890 e!615895)))

(declare-fun res!432428 () Bool)

(assert (=> b!951517 (= res!432428 (matchRSpec!421 (regOne!5753 (regTwo!5753 r!15766)) s!10566))))

(assert (=> b!951517 (=> res!432428 e!615895)))

(declare-fun b!951518 () Bool)

(assert (=> b!951518 (= e!615893 (= s!10566 (Cons!9834 (c!154847 (regTwo!5753 r!15766)) Nil!9834)))))

(declare-fun b!951519 () Bool)

(assert (=> b!951519 (= e!615892 call!59713)))

(declare-fun b!951521 () Bool)

(assert (=> b!951521 (= e!615895 (matchRSpec!421 (regTwo!5753 (regTwo!5753 r!15766)) s!10566))))

(declare-fun b!951522 () Bool)

(declare-fun e!615889 () Bool)

(assert (=> b!951522 (= e!615890 e!615889)))

(declare-fun c!154962 () Bool)

(assert (=> b!951522 (= c!154962 (is-Star!2620 (regTwo!5753 r!15766)))))

(declare-fun bm!59708 () Bool)

(declare-fun call!59712 () Bool)

(assert (=> bm!59708 (= call!59712 (Exists!371 (ite c!154962 lambda!32708 lambda!32709)))))

(declare-fun b!951523 () Bool)

(declare-fun c!154964 () Bool)

(assert (=> b!951523 (= c!154964 (is-Union!2620 (regTwo!5753 r!15766)))))

(assert (=> b!951523 (= e!615893 e!615890)))

(declare-fun e!615891 () Bool)

(assert (=> b!951524 (= e!615891 call!59712)))

(declare-fun b!951525 () Bool)

(declare-fun res!432426 () Bool)

(assert (=> b!951525 (=> res!432426 e!615891)))

(assert (=> b!951525 (= res!432426 call!59713)))

(assert (=> b!951525 (= e!615889 e!615891)))

(assert (=> b!951520 (= e!615889 call!59712)))

(declare-fun d!283932 () Bool)

(declare-fun c!154965 () Bool)

(assert (=> d!283932 (= c!154965 (is-EmptyExpr!2620 (regTwo!5753 r!15766)))))

(assert (=> d!283932 (= (matchRSpec!421 (regTwo!5753 r!15766) s!10566) e!615892)))

(assert (= (and d!283932 c!154965) b!951519))

(assert (= (and d!283932 (not c!154965)) b!951515))

(assert (= (and b!951515 res!432427) b!951516))

(assert (= (and b!951516 c!154963) b!951518))

(assert (= (and b!951516 (not c!154963)) b!951523))

(assert (= (and b!951523 c!154964) b!951517))

(assert (= (and b!951523 (not c!154964)) b!951522))

(assert (= (and b!951517 (not res!432428)) b!951521))

(assert (= (and b!951522 c!154962) b!951525))

(assert (= (and b!951522 (not c!154962)) b!951520))

(assert (= (and b!951525 (not res!432426)) b!951524))

(assert (= (or b!951524 b!951520) bm!59708))

(assert (= (or b!951519 b!951525) bm!59707))

(assert (=> bm!59707 m!1163809))

(declare-fun m!1164177 () Bool)

(assert (=> b!951517 m!1164177))

(declare-fun m!1164179 () Bool)

(assert (=> b!951521 m!1164179))

(declare-fun m!1164181 () Bool)

(assert (=> bm!59708 m!1164181))

(assert (=> b!951111 d!283932))

(assert (=> b!951173 d!283900))

(assert (=> b!951173 d!283902))

(declare-fun b!951526 () Bool)

(declare-fun e!615896 () Bool)

(assert (=> b!951526 (= e!615896 tp_is_empty!4883)))

(assert (=> b!951230 (= tp!293118 e!615896)))

(declare-fun b!951528 () Bool)

(declare-fun tp!293167 () Bool)

(assert (=> b!951528 (= e!615896 tp!293167)))

(declare-fun b!951529 () Bool)

(declare-fun tp!293166 () Bool)

(declare-fun tp!293165 () Bool)

(assert (=> b!951529 (= e!615896 (and tp!293166 tp!293165))))

(declare-fun b!951527 () Bool)

(declare-fun tp!293168 () Bool)

(declare-fun tp!293169 () Bool)

(assert (=> b!951527 (= e!615896 (and tp!293168 tp!293169))))

(assert (= (and b!951230 (is-ElementMatch!2620 (regOne!5753 (regOne!5752 r!15766)))) b!951526))

(assert (= (and b!951230 (is-Concat!4453 (regOne!5753 (regOne!5752 r!15766)))) b!951527))

(assert (= (and b!951230 (is-Star!2620 (regOne!5753 (regOne!5752 r!15766)))) b!951528))

(assert (= (and b!951230 (is-Union!2620 (regOne!5753 (regOne!5752 r!15766)))) b!951529))

(declare-fun b!951530 () Bool)

(declare-fun e!615897 () Bool)

(assert (=> b!951530 (= e!615897 tp_is_empty!4883)))

(assert (=> b!951230 (= tp!293117 e!615897)))

(declare-fun b!951532 () Bool)

(declare-fun tp!293172 () Bool)

(assert (=> b!951532 (= e!615897 tp!293172)))

(declare-fun b!951533 () Bool)

(declare-fun tp!293171 () Bool)

(declare-fun tp!293170 () Bool)

(assert (=> b!951533 (= e!615897 (and tp!293171 tp!293170))))

(declare-fun b!951531 () Bool)

(declare-fun tp!293173 () Bool)

(declare-fun tp!293174 () Bool)

(assert (=> b!951531 (= e!615897 (and tp!293173 tp!293174))))

(assert (= (and b!951230 (is-ElementMatch!2620 (regTwo!5753 (regOne!5752 r!15766)))) b!951530))

(assert (= (and b!951230 (is-Concat!4453 (regTwo!5753 (regOne!5752 r!15766)))) b!951531))

(assert (= (and b!951230 (is-Star!2620 (regTwo!5753 (regOne!5752 r!15766)))) b!951532))

(assert (= (and b!951230 (is-Union!2620 (regTwo!5753 (regOne!5752 r!15766)))) b!951533))

(declare-fun b!951534 () Bool)

(declare-fun e!615898 () Bool)

(assert (=> b!951534 (= e!615898 tp_is_empty!4883)))

(assert (=> b!951225 (= tp!293114 e!615898)))

(declare-fun b!951536 () Bool)

(declare-fun tp!293177 () Bool)

(assert (=> b!951536 (= e!615898 tp!293177)))

(declare-fun b!951537 () Bool)

(declare-fun tp!293176 () Bool)

(declare-fun tp!293175 () Bool)

(assert (=> b!951537 (= e!615898 (and tp!293176 tp!293175))))

(declare-fun b!951535 () Bool)

(declare-fun tp!293178 () Bool)

(declare-fun tp!293179 () Bool)

(assert (=> b!951535 (= e!615898 (and tp!293178 tp!293179))))

(assert (= (and b!951225 (is-ElementMatch!2620 (reg!2949 (regTwo!5753 r!15766)))) b!951534))

(assert (= (and b!951225 (is-Concat!4453 (reg!2949 (regTwo!5753 r!15766)))) b!951535))

(assert (= (and b!951225 (is-Star!2620 (reg!2949 (regTwo!5753 r!15766)))) b!951536))

(assert (= (and b!951225 (is-Union!2620 (reg!2949 (regTwo!5753 r!15766)))) b!951537))

(declare-fun b!951538 () Bool)

(declare-fun e!615899 () Bool)

(assert (=> b!951538 (= e!615899 tp_is_empty!4883)))

(assert (=> b!951226 (= tp!293113 e!615899)))

(declare-fun b!951540 () Bool)

(declare-fun tp!293182 () Bool)

(assert (=> b!951540 (= e!615899 tp!293182)))

(declare-fun b!951541 () Bool)

(declare-fun tp!293181 () Bool)

(declare-fun tp!293180 () Bool)

(assert (=> b!951541 (= e!615899 (and tp!293181 tp!293180))))

(declare-fun b!951539 () Bool)

(declare-fun tp!293183 () Bool)

(declare-fun tp!293184 () Bool)

(assert (=> b!951539 (= e!615899 (and tp!293183 tp!293184))))

(assert (= (and b!951226 (is-ElementMatch!2620 (regOne!5753 (regTwo!5753 r!15766)))) b!951538))

(assert (= (and b!951226 (is-Concat!4453 (regOne!5753 (regTwo!5753 r!15766)))) b!951539))

(assert (= (and b!951226 (is-Star!2620 (regOne!5753 (regTwo!5753 r!15766)))) b!951540))

(assert (= (and b!951226 (is-Union!2620 (regOne!5753 (regTwo!5753 r!15766)))) b!951541))

(declare-fun b!951542 () Bool)

(declare-fun e!615900 () Bool)

(assert (=> b!951542 (= e!615900 tp_is_empty!4883)))

(assert (=> b!951226 (= tp!293112 e!615900)))

(declare-fun b!951544 () Bool)

(declare-fun tp!293187 () Bool)

(assert (=> b!951544 (= e!615900 tp!293187)))

(declare-fun b!951545 () Bool)

(declare-fun tp!293186 () Bool)

(declare-fun tp!293185 () Bool)

(assert (=> b!951545 (= e!615900 (and tp!293186 tp!293185))))

(declare-fun b!951543 () Bool)

(declare-fun tp!293188 () Bool)

(declare-fun tp!293189 () Bool)

(assert (=> b!951543 (= e!615900 (and tp!293188 tp!293189))))

(assert (= (and b!951226 (is-ElementMatch!2620 (regTwo!5753 (regTwo!5753 r!15766)))) b!951542))

(assert (= (and b!951226 (is-Concat!4453 (regTwo!5753 (regTwo!5753 r!15766)))) b!951543))

(assert (= (and b!951226 (is-Star!2620 (regTwo!5753 (regTwo!5753 r!15766)))) b!951544))

(assert (= (and b!951226 (is-Union!2620 (regTwo!5753 (regTwo!5753 r!15766)))) b!951545))

(declare-fun b!951546 () Bool)

(declare-fun e!615901 () Bool)

(assert (=> b!951546 (= e!615901 tp_is_empty!4883)))

(assert (=> b!951221 (= tp!293109 e!615901)))

(declare-fun b!951548 () Bool)

(declare-fun tp!293192 () Bool)

(assert (=> b!951548 (= e!615901 tp!293192)))

(declare-fun b!951549 () Bool)

(declare-fun tp!293191 () Bool)

(declare-fun tp!293190 () Bool)

(assert (=> b!951549 (= e!615901 (and tp!293191 tp!293190))))

(declare-fun b!951547 () Bool)

(declare-fun tp!293193 () Bool)

(declare-fun tp!293194 () Bool)

(assert (=> b!951547 (= e!615901 (and tp!293193 tp!293194))))

(assert (= (and b!951221 (is-ElementMatch!2620 (reg!2949 (regOne!5753 r!15766)))) b!951546))

(assert (= (and b!951221 (is-Concat!4453 (reg!2949 (regOne!5753 r!15766)))) b!951547))

(assert (= (and b!951221 (is-Star!2620 (reg!2949 (regOne!5753 r!15766)))) b!951548))

(assert (= (and b!951221 (is-Union!2620 (reg!2949 (regOne!5753 r!15766)))) b!951549))

(declare-fun b!951550 () Bool)

(declare-fun e!615902 () Bool)

(assert (=> b!951550 (= e!615902 tp_is_empty!4883)))

(assert (=> b!951222 (= tp!293108 e!615902)))

(declare-fun b!951552 () Bool)

(declare-fun tp!293197 () Bool)

(assert (=> b!951552 (= e!615902 tp!293197)))

(declare-fun b!951553 () Bool)

(declare-fun tp!293196 () Bool)

(declare-fun tp!293195 () Bool)

(assert (=> b!951553 (= e!615902 (and tp!293196 tp!293195))))

(declare-fun b!951551 () Bool)

(declare-fun tp!293198 () Bool)

(declare-fun tp!293199 () Bool)

(assert (=> b!951551 (= e!615902 (and tp!293198 tp!293199))))

(assert (= (and b!951222 (is-ElementMatch!2620 (regOne!5753 (regOne!5753 r!15766)))) b!951550))

(assert (= (and b!951222 (is-Concat!4453 (regOne!5753 (regOne!5753 r!15766)))) b!951551))

(assert (= (and b!951222 (is-Star!2620 (regOne!5753 (regOne!5753 r!15766)))) b!951552))

(assert (= (and b!951222 (is-Union!2620 (regOne!5753 (regOne!5753 r!15766)))) b!951553))

(declare-fun b!951554 () Bool)

(declare-fun e!615903 () Bool)

(assert (=> b!951554 (= e!615903 tp_is_empty!4883)))

(assert (=> b!951222 (= tp!293107 e!615903)))

(declare-fun b!951556 () Bool)

(declare-fun tp!293202 () Bool)

(assert (=> b!951556 (= e!615903 tp!293202)))

(declare-fun b!951557 () Bool)

(declare-fun tp!293201 () Bool)

(declare-fun tp!293200 () Bool)

(assert (=> b!951557 (= e!615903 (and tp!293201 tp!293200))))

(declare-fun b!951555 () Bool)

(declare-fun tp!293203 () Bool)

(declare-fun tp!293204 () Bool)

(assert (=> b!951555 (= e!615903 (and tp!293203 tp!293204))))

(assert (= (and b!951222 (is-ElementMatch!2620 (regTwo!5753 (regOne!5753 r!15766)))) b!951554))

(assert (= (and b!951222 (is-Concat!4453 (regTwo!5753 (regOne!5753 r!15766)))) b!951555))

(assert (= (and b!951222 (is-Star!2620 (regTwo!5753 (regOne!5753 r!15766)))) b!951556))

(assert (= (and b!951222 (is-Union!2620 (regTwo!5753 (regOne!5753 r!15766)))) b!951557))

(declare-fun b!951558 () Bool)

(declare-fun e!615904 () Bool)

(declare-fun tp!293205 () Bool)

(assert (=> b!951558 (= e!615904 (and tp_is_empty!4883 tp!293205))))

(assert (=> b!951218 (= tp!293106 e!615904)))

(assert (= (and b!951218 (is-Cons!9834 (t!100896 (t!100896 s!10566)))) b!951558))

(declare-fun b!951559 () Bool)

(declare-fun e!615905 () Bool)

(assert (=> b!951559 (= e!615905 tp_is_empty!4883)))

(assert (=> b!951232 (= tp!293125 e!615905)))

(declare-fun b!951561 () Bool)

(declare-fun tp!293208 () Bool)

(assert (=> b!951561 (= e!615905 tp!293208)))

(declare-fun b!951562 () Bool)

(declare-fun tp!293207 () Bool)

(declare-fun tp!293206 () Bool)

(assert (=> b!951562 (= e!615905 (and tp!293207 tp!293206))))

(declare-fun b!951560 () Bool)

(declare-fun tp!293209 () Bool)

(declare-fun tp!293210 () Bool)

(assert (=> b!951560 (= e!615905 (and tp!293209 tp!293210))))

(assert (= (and b!951232 (is-ElementMatch!2620 (regOne!5752 (regTwo!5752 r!15766)))) b!951559))

(assert (= (and b!951232 (is-Concat!4453 (regOne!5752 (regTwo!5752 r!15766)))) b!951560))

(assert (= (and b!951232 (is-Star!2620 (regOne!5752 (regTwo!5752 r!15766)))) b!951561))

(assert (= (and b!951232 (is-Union!2620 (regOne!5752 (regTwo!5752 r!15766)))) b!951562))

(declare-fun b!951563 () Bool)

(declare-fun e!615906 () Bool)

(assert (=> b!951563 (= e!615906 tp_is_empty!4883)))

(assert (=> b!951232 (= tp!293126 e!615906)))

(declare-fun b!951565 () Bool)

(declare-fun tp!293213 () Bool)

(assert (=> b!951565 (= e!615906 tp!293213)))

(declare-fun b!951566 () Bool)

(declare-fun tp!293212 () Bool)

(declare-fun tp!293211 () Bool)

(assert (=> b!951566 (= e!615906 (and tp!293212 tp!293211))))

(declare-fun b!951564 () Bool)

(declare-fun tp!293214 () Bool)

(declare-fun tp!293215 () Bool)

(assert (=> b!951564 (= e!615906 (and tp!293214 tp!293215))))

(assert (= (and b!951232 (is-ElementMatch!2620 (regTwo!5752 (regTwo!5752 r!15766)))) b!951563))

(assert (= (and b!951232 (is-Concat!4453 (regTwo!5752 (regTwo!5752 r!15766)))) b!951564))

(assert (= (and b!951232 (is-Star!2620 (regTwo!5752 (regTwo!5752 r!15766)))) b!951565))

(assert (= (and b!951232 (is-Union!2620 (regTwo!5752 (regTwo!5752 r!15766)))) b!951566))

(declare-fun b!951567 () Bool)

(declare-fun e!615907 () Bool)

(assert (=> b!951567 (= e!615907 tp_is_empty!4883)))

(assert (=> b!951228 (= tp!293120 e!615907)))

(declare-fun b!951569 () Bool)

(declare-fun tp!293218 () Bool)

(assert (=> b!951569 (= e!615907 tp!293218)))

(declare-fun b!951570 () Bool)

(declare-fun tp!293217 () Bool)

(declare-fun tp!293216 () Bool)

(assert (=> b!951570 (= e!615907 (and tp!293217 tp!293216))))

(declare-fun b!951568 () Bool)

(declare-fun tp!293219 () Bool)

(declare-fun tp!293220 () Bool)

(assert (=> b!951568 (= e!615907 (and tp!293219 tp!293220))))

(assert (= (and b!951228 (is-ElementMatch!2620 (regOne!5752 (regOne!5752 r!15766)))) b!951567))

(assert (= (and b!951228 (is-Concat!4453 (regOne!5752 (regOne!5752 r!15766)))) b!951568))

(assert (= (and b!951228 (is-Star!2620 (regOne!5752 (regOne!5752 r!15766)))) b!951569))

(assert (= (and b!951228 (is-Union!2620 (regOne!5752 (regOne!5752 r!15766)))) b!951570))

(declare-fun b!951571 () Bool)

(declare-fun e!615908 () Bool)

(assert (=> b!951571 (= e!615908 tp_is_empty!4883)))

(assert (=> b!951228 (= tp!293121 e!615908)))

(declare-fun b!951573 () Bool)

(declare-fun tp!293223 () Bool)

(assert (=> b!951573 (= e!615908 tp!293223)))

(declare-fun b!951574 () Bool)

(declare-fun tp!293222 () Bool)

(declare-fun tp!293221 () Bool)

(assert (=> b!951574 (= e!615908 (and tp!293222 tp!293221))))

(declare-fun b!951572 () Bool)

(declare-fun tp!293224 () Bool)

(declare-fun tp!293225 () Bool)

(assert (=> b!951572 (= e!615908 (and tp!293224 tp!293225))))

(assert (= (and b!951228 (is-ElementMatch!2620 (regTwo!5752 (regOne!5752 r!15766)))) b!951571))

(assert (= (and b!951228 (is-Concat!4453 (regTwo!5752 (regOne!5752 r!15766)))) b!951572))

(assert (= (and b!951228 (is-Star!2620 (regTwo!5752 (regOne!5752 r!15766)))) b!951573))

(assert (= (and b!951228 (is-Union!2620 (regTwo!5752 (regOne!5752 r!15766)))) b!951574))

(declare-fun b!951575 () Bool)

(declare-fun e!615909 () Bool)

(assert (=> b!951575 (= e!615909 tp_is_empty!4883)))

(assert (=> b!951213 (= tp!293100 e!615909)))

(declare-fun b!951577 () Bool)

(declare-fun tp!293228 () Bool)

(assert (=> b!951577 (= e!615909 tp!293228)))

(declare-fun b!951578 () Bool)

(declare-fun tp!293227 () Bool)

(declare-fun tp!293226 () Bool)

(assert (=> b!951578 (= e!615909 (and tp!293227 tp!293226))))

(declare-fun b!951576 () Bool)

(declare-fun tp!293229 () Bool)

(declare-fun tp!293230 () Bool)

(assert (=> b!951576 (= e!615909 (and tp!293229 tp!293230))))

(assert (= (and b!951213 (is-ElementMatch!2620 (regOne!5753 (reg!2949 r!15766)))) b!951575))

(assert (= (and b!951213 (is-Concat!4453 (regOne!5753 (reg!2949 r!15766)))) b!951576))

(assert (= (and b!951213 (is-Star!2620 (regOne!5753 (reg!2949 r!15766)))) b!951577))

(assert (= (and b!951213 (is-Union!2620 (regOne!5753 (reg!2949 r!15766)))) b!951578))

(declare-fun b!951579 () Bool)

(declare-fun e!615910 () Bool)

(assert (=> b!951579 (= e!615910 tp_is_empty!4883)))

(assert (=> b!951213 (= tp!293099 e!615910)))

(declare-fun b!951581 () Bool)

(declare-fun tp!293233 () Bool)

(assert (=> b!951581 (= e!615910 tp!293233)))

(declare-fun b!951582 () Bool)

(declare-fun tp!293232 () Bool)

(declare-fun tp!293231 () Bool)

(assert (=> b!951582 (= e!615910 (and tp!293232 tp!293231))))

(declare-fun b!951580 () Bool)

(declare-fun tp!293234 () Bool)

(declare-fun tp!293235 () Bool)

(assert (=> b!951580 (= e!615910 (and tp!293234 tp!293235))))

(assert (= (and b!951213 (is-ElementMatch!2620 (regTwo!5753 (reg!2949 r!15766)))) b!951579))

(assert (= (and b!951213 (is-Concat!4453 (regTwo!5753 (reg!2949 r!15766)))) b!951580))

(assert (= (and b!951213 (is-Star!2620 (regTwo!5753 (reg!2949 r!15766)))) b!951581))

(assert (= (and b!951213 (is-Union!2620 (regTwo!5753 (reg!2949 r!15766)))) b!951582))

(declare-fun b!951583 () Bool)

(declare-fun e!615911 () Bool)

(assert (=> b!951583 (= e!615911 tp_is_empty!4883)))

(assert (=> b!951224 (= tp!293115 e!615911)))

(declare-fun b!951585 () Bool)

(declare-fun tp!293238 () Bool)

(assert (=> b!951585 (= e!615911 tp!293238)))

(declare-fun b!951586 () Bool)

(declare-fun tp!293237 () Bool)

(declare-fun tp!293236 () Bool)

(assert (=> b!951586 (= e!615911 (and tp!293237 tp!293236))))

(declare-fun b!951584 () Bool)

(declare-fun tp!293239 () Bool)

(declare-fun tp!293240 () Bool)

(assert (=> b!951584 (= e!615911 (and tp!293239 tp!293240))))

(assert (= (and b!951224 (is-ElementMatch!2620 (regOne!5752 (regTwo!5753 r!15766)))) b!951583))

(assert (= (and b!951224 (is-Concat!4453 (regOne!5752 (regTwo!5753 r!15766)))) b!951584))

(assert (= (and b!951224 (is-Star!2620 (regOne!5752 (regTwo!5753 r!15766)))) b!951585))

(assert (= (and b!951224 (is-Union!2620 (regOne!5752 (regTwo!5753 r!15766)))) b!951586))

(declare-fun b!951587 () Bool)

(declare-fun e!615912 () Bool)

(assert (=> b!951587 (= e!615912 tp_is_empty!4883)))

(assert (=> b!951224 (= tp!293116 e!615912)))

(declare-fun b!951589 () Bool)

(declare-fun tp!293243 () Bool)

(assert (=> b!951589 (= e!615912 tp!293243)))

(declare-fun b!951590 () Bool)

(declare-fun tp!293242 () Bool)

(declare-fun tp!293241 () Bool)

(assert (=> b!951590 (= e!615912 (and tp!293242 tp!293241))))

(declare-fun b!951588 () Bool)

(declare-fun tp!293244 () Bool)

(declare-fun tp!293245 () Bool)

(assert (=> b!951588 (= e!615912 (and tp!293244 tp!293245))))

(assert (= (and b!951224 (is-ElementMatch!2620 (regTwo!5752 (regTwo!5753 r!15766)))) b!951587))

(assert (= (and b!951224 (is-Concat!4453 (regTwo!5752 (regTwo!5753 r!15766)))) b!951588))

(assert (= (and b!951224 (is-Star!2620 (regTwo!5752 (regTwo!5753 r!15766)))) b!951589))

(assert (= (and b!951224 (is-Union!2620 (regTwo!5752 (regTwo!5753 r!15766)))) b!951590))

(declare-fun b!951591 () Bool)

(declare-fun e!615913 () Bool)

(assert (=> b!951591 (= e!615913 tp_is_empty!4883)))

(assert (=> b!951233 (= tp!293124 e!615913)))

(declare-fun b!951593 () Bool)

(declare-fun tp!293248 () Bool)

(assert (=> b!951593 (= e!615913 tp!293248)))

(declare-fun b!951594 () Bool)

(declare-fun tp!293247 () Bool)

(declare-fun tp!293246 () Bool)

(assert (=> b!951594 (= e!615913 (and tp!293247 tp!293246))))

(declare-fun b!951592 () Bool)

(declare-fun tp!293249 () Bool)

(declare-fun tp!293250 () Bool)

(assert (=> b!951592 (= e!615913 (and tp!293249 tp!293250))))

(assert (= (and b!951233 (is-ElementMatch!2620 (reg!2949 (regTwo!5752 r!15766)))) b!951591))

(assert (= (and b!951233 (is-Concat!4453 (reg!2949 (regTwo!5752 r!15766)))) b!951592))

(assert (= (and b!951233 (is-Star!2620 (reg!2949 (regTwo!5752 r!15766)))) b!951593))

(assert (= (and b!951233 (is-Union!2620 (reg!2949 (regTwo!5752 r!15766)))) b!951594))

(declare-fun b!951595 () Bool)

(declare-fun e!615914 () Bool)

(assert (=> b!951595 (= e!615914 tp_is_empty!4883)))

(assert (=> b!951220 (= tp!293110 e!615914)))

(declare-fun b!951597 () Bool)

(declare-fun tp!293253 () Bool)

(assert (=> b!951597 (= e!615914 tp!293253)))

(declare-fun b!951598 () Bool)

(declare-fun tp!293252 () Bool)

(declare-fun tp!293251 () Bool)

(assert (=> b!951598 (= e!615914 (and tp!293252 tp!293251))))

(declare-fun b!951596 () Bool)

(declare-fun tp!293254 () Bool)

(declare-fun tp!293255 () Bool)

(assert (=> b!951596 (= e!615914 (and tp!293254 tp!293255))))

(assert (= (and b!951220 (is-ElementMatch!2620 (regOne!5752 (regOne!5753 r!15766)))) b!951595))

(assert (= (and b!951220 (is-Concat!4453 (regOne!5752 (regOne!5753 r!15766)))) b!951596))

(assert (= (and b!951220 (is-Star!2620 (regOne!5752 (regOne!5753 r!15766)))) b!951597))

(assert (= (and b!951220 (is-Union!2620 (regOne!5752 (regOne!5753 r!15766)))) b!951598))

(declare-fun b!951599 () Bool)

(declare-fun e!615915 () Bool)

(assert (=> b!951599 (= e!615915 tp_is_empty!4883)))

(assert (=> b!951220 (= tp!293111 e!615915)))

(declare-fun b!951601 () Bool)

(declare-fun tp!293258 () Bool)

(assert (=> b!951601 (= e!615915 tp!293258)))

(declare-fun b!951602 () Bool)

(declare-fun tp!293257 () Bool)

(declare-fun tp!293256 () Bool)

(assert (=> b!951602 (= e!615915 (and tp!293257 tp!293256))))

(declare-fun b!951600 () Bool)

(declare-fun tp!293259 () Bool)

(declare-fun tp!293260 () Bool)

(assert (=> b!951600 (= e!615915 (and tp!293259 tp!293260))))

(assert (= (and b!951220 (is-ElementMatch!2620 (regTwo!5752 (regOne!5753 r!15766)))) b!951599))

(assert (= (and b!951220 (is-Concat!4453 (regTwo!5752 (regOne!5753 r!15766)))) b!951600))

(assert (= (and b!951220 (is-Star!2620 (regTwo!5752 (regOne!5753 r!15766)))) b!951601))

(assert (= (and b!951220 (is-Union!2620 (regTwo!5752 (regOne!5753 r!15766)))) b!951602))

(declare-fun b!951603 () Bool)

(declare-fun e!615916 () Bool)

(assert (=> b!951603 (= e!615916 tp_is_empty!4883)))

(assert (=> b!951234 (= tp!293123 e!615916)))

(declare-fun b!951605 () Bool)

(declare-fun tp!293263 () Bool)

(assert (=> b!951605 (= e!615916 tp!293263)))

(declare-fun b!951606 () Bool)

(declare-fun tp!293262 () Bool)

(declare-fun tp!293261 () Bool)

(assert (=> b!951606 (= e!615916 (and tp!293262 tp!293261))))

(declare-fun b!951604 () Bool)

(declare-fun tp!293264 () Bool)

(declare-fun tp!293265 () Bool)

(assert (=> b!951604 (= e!615916 (and tp!293264 tp!293265))))

(assert (= (and b!951234 (is-ElementMatch!2620 (regOne!5753 (regTwo!5752 r!15766)))) b!951603))

(assert (= (and b!951234 (is-Concat!4453 (regOne!5753 (regTwo!5752 r!15766)))) b!951604))

(assert (= (and b!951234 (is-Star!2620 (regOne!5753 (regTwo!5752 r!15766)))) b!951605))

(assert (= (and b!951234 (is-Union!2620 (regOne!5753 (regTwo!5752 r!15766)))) b!951606))

(declare-fun b!951607 () Bool)

(declare-fun e!615917 () Bool)

(assert (=> b!951607 (= e!615917 tp_is_empty!4883)))

(assert (=> b!951234 (= tp!293122 e!615917)))

(declare-fun b!951609 () Bool)

(declare-fun tp!293268 () Bool)

(assert (=> b!951609 (= e!615917 tp!293268)))

(declare-fun b!951610 () Bool)

(declare-fun tp!293267 () Bool)

(declare-fun tp!293266 () Bool)

(assert (=> b!951610 (= e!615917 (and tp!293267 tp!293266))))

(declare-fun b!951608 () Bool)

(declare-fun tp!293269 () Bool)

(declare-fun tp!293270 () Bool)

(assert (=> b!951608 (= e!615917 (and tp!293269 tp!293270))))

(assert (= (and b!951234 (is-ElementMatch!2620 (regTwo!5753 (regTwo!5752 r!15766)))) b!951607))

(assert (= (and b!951234 (is-Concat!4453 (regTwo!5753 (regTwo!5752 r!15766)))) b!951608))

(assert (= (and b!951234 (is-Star!2620 (regTwo!5753 (regTwo!5752 r!15766)))) b!951609))

(assert (= (and b!951234 (is-Union!2620 (regTwo!5753 (regTwo!5752 r!15766)))) b!951610))

(declare-fun b!951611 () Bool)

(declare-fun e!615918 () Bool)

(assert (=> b!951611 (= e!615918 tp_is_empty!4883)))

(assert (=> b!951229 (= tp!293119 e!615918)))

(declare-fun b!951613 () Bool)

(declare-fun tp!293273 () Bool)

(assert (=> b!951613 (= e!615918 tp!293273)))

(declare-fun b!951614 () Bool)

(declare-fun tp!293272 () Bool)

(declare-fun tp!293271 () Bool)

(assert (=> b!951614 (= e!615918 (and tp!293272 tp!293271))))

(declare-fun b!951612 () Bool)

(declare-fun tp!293274 () Bool)

(declare-fun tp!293275 () Bool)

(assert (=> b!951612 (= e!615918 (and tp!293274 tp!293275))))

(assert (= (and b!951229 (is-ElementMatch!2620 (reg!2949 (regOne!5752 r!15766)))) b!951611))

(assert (= (and b!951229 (is-Concat!4453 (reg!2949 (regOne!5752 r!15766)))) b!951612))

(assert (= (and b!951229 (is-Star!2620 (reg!2949 (regOne!5752 r!15766)))) b!951613))

(assert (= (and b!951229 (is-Union!2620 (reg!2949 (regOne!5752 r!15766)))) b!951614))

(declare-fun b!951615 () Bool)

(declare-fun e!615919 () Bool)

(assert (=> b!951615 (= e!615919 tp_is_empty!4883)))

(assert (=> b!951211 (= tp!293102 e!615919)))

(declare-fun b!951617 () Bool)

(declare-fun tp!293278 () Bool)

(assert (=> b!951617 (= e!615919 tp!293278)))

(declare-fun b!951618 () Bool)

(declare-fun tp!293277 () Bool)

(declare-fun tp!293276 () Bool)

(assert (=> b!951618 (= e!615919 (and tp!293277 tp!293276))))

(declare-fun b!951616 () Bool)

(declare-fun tp!293279 () Bool)

(declare-fun tp!293280 () Bool)

(assert (=> b!951616 (= e!615919 (and tp!293279 tp!293280))))

(assert (= (and b!951211 (is-ElementMatch!2620 (regOne!5752 (reg!2949 r!15766)))) b!951615))

(assert (= (and b!951211 (is-Concat!4453 (regOne!5752 (reg!2949 r!15766)))) b!951616))

(assert (= (and b!951211 (is-Star!2620 (regOne!5752 (reg!2949 r!15766)))) b!951617))

(assert (= (and b!951211 (is-Union!2620 (regOne!5752 (reg!2949 r!15766)))) b!951618))

(declare-fun b!951619 () Bool)

(declare-fun e!615920 () Bool)

(assert (=> b!951619 (= e!615920 tp_is_empty!4883)))

(assert (=> b!951211 (= tp!293103 e!615920)))

(declare-fun b!951621 () Bool)

(declare-fun tp!293283 () Bool)

(assert (=> b!951621 (= e!615920 tp!293283)))

(declare-fun b!951622 () Bool)

(declare-fun tp!293282 () Bool)

(declare-fun tp!293281 () Bool)

(assert (=> b!951622 (= e!615920 (and tp!293282 tp!293281))))

(declare-fun b!951620 () Bool)

(declare-fun tp!293284 () Bool)

(declare-fun tp!293285 () Bool)

(assert (=> b!951620 (= e!615920 (and tp!293284 tp!293285))))

(assert (= (and b!951211 (is-ElementMatch!2620 (regTwo!5752 (reg!2949 r!15766)))) b!951619))

(assert (= (and b!951211 (is-Concat!4453 (regTwo!5752 (reg!2949 r!15766)))) b!951620))

(assert (= (and b!951211 (is-Star!2620 (regTwo!5752 (reg!2949 r!15766)))) b!951621))

(assert (= (and b!951211 (is-Union!2620 (regTwo!5752 (reg!2949 r!15766)))) b!951622))

(declare-fun b!951623 () Bool)

(declare-fun e!615921 () Bool)

(assert (=> b!951623 (= e!615921 tp_is_empty!4883)))

(assert (=> b!951212 (= tp!293101 e!615921)))

(declare-fun b!951625 () Bool)

(declare-fun tp!293288 () Bool)

(assert (=> b!951625 (= e!615921 tp!293288)))

(declare-fun b!951626 () Bool)

(declare-fun tp!293287 () Bool)

(declare-fun tp!293286 () Bool)

(assert (=> b!951626 (= e!615921 (and tp!293287 tp!293286))))

(declare-fun b!951624 () Bool)

(declare-fun tp!293289 () Bool)

(declare-fun tp!293290 () Bool)

(assert (=> b!951624 (= e!615921 (and tp!293289 tp!293290))))

(assert (= (and b!951212 (is-ElementMatch!2620 (reg!2949 (reg!2949 r!15766)))) b!951623))

(assert (= (and b!951212 (is-Concat!4453 (reg!2949 (reg!2949 r!15766)))) b!951624))

(assert (= (and b!951212 (is-Star!2620 (reg!2949 (reg!2949 r!15766)))) b!951625))

(assert (= (and b!951212 (is-Union!2620 (reg!2949 (reg!2949 r!15766)))) b!951626))

(push 1)

(assert (not bm!59705))

(assert (not b!951368))

(assert (not b!951373))

(assert (not b!951377))

(assert (not b!951560))

(assert (not b!951564))

(assert (not b!951404))

(assert (not b!951531))

(assert (not b!951617))

(assert (not b!951585))

(assert (not b!951589))

(assert (not b!951547))

(assert (not d!283906))

(assert (not d!283898))

(assert (not b!951557))

(assert (not b!951616))

(assert (not d!283928))

(assert (not b!951552))

(assert (not b!951569))

(assert (not b!951549))

(assert (not d!283866))

(assert (not b!951624))

(assert (not b!951540))

(assert (not b!951592))

(assert (not b!951372))

(assert (not b!951593))

(assert (not d!283892))

(assert (not bm!59687))

(assert (not d!283886))

(assert (not b!951582))

(assert (not b!951435))

(assert (not b!951590))

(assert (not d!283912))

(assert (not bm!59706))

(assert (not d!283926))

(assert (not b!951613))

(assert (not b!951601))

(assert (not b!951584))

(assert (not b!951412))

(assert (not b!951565))

(assert (not b!951469))

(assert (not b!951576))

(assert (not b!951543))

(assert (not b!951439))

(assert (not b!951532))

(assert (not b!951529))

(assert (not b!951453))

(assert (not b!951471))

(assert (not b!951437))

(assert (not b!951556))

(assert (not b!951460))

(assert (not b!951586))

(assert (not b!951509))

(assert (not d!283876))

(assert (not b!951445))

(assert (not b!951455))

(assert (not b!951389))

(assert (not b!951359))

(assert (not b!951622))

(assert (not b!951427))

(assert (not b!951517))

(assert (not b!951381))

(assert (not b!951458))

(assert (not b!951605))

(assert (not d!283920))

(assert (not b!951551))

(assert (not b!951492))

(assert (not b!951521))

(assert (not bm!59707))

(assert (not b!951606))

(assert (not b!951544))

(assert (not b!951369))

(assert (not b!951548))

(assert (not d!283904))

(assert (not b!951345))

(assert (not b!951600))

(assert (not b!951566))

(assert (not d!283872))

(assert (not bm!59691))

(assert (not b!951349))

(assert (not b!951612))

(assert (not b!951604))

(assert (not b!951408))

(assert (not b!951363))

(assert (not b!951561))

(assert (not b!951625))

(assert (not bm!59683))

(assert (not b!951570))

(assert (not bm!59685))

(assert (not b!951338))

(assert (not b!951395))

(assert (not bm!59680))

(assert (not d!283910))

(assert (not d!283922))

(assert (not b!951539))

(assert (not d!283896))

(assert (not d!283924))

(assert (not b!951562))

(assert (not b!951364))

(assert (not bm!59708))

(assert (not d!283914))

(assert (not b!951360))

(assert (not b!951337))

(assert (not b!951580))

(assert (not b!951596))

(assert (not b!951609))

(assert (not b!951545))

(assert (not b!951336))

(assert (not b!951621))

(assert (not b!951578))

(assert (not bm!59679))

(assert (not b!951347))

(assert (not b!951406))

(assert (not b!951581))

(assert (not b!951594))

(assert (not b!951598))

(assert (not d!283894))

(assert (not bm!59681))

(assert (not b!951574))

(assert (not b!951614))

(assert (not b!951602))

(assert (not b!951597))

(assert (not b!951553))

(assert (not bm!59684))

(assert (not b!951533))

(assert (not b!951428))

(assert (not b!951527))

(assert (not b!951536))

(assert (not b!951568))

(assert (not bm!59690))

(assert (not b!951396))

(assert (not b!951572))

(assert (not b!951608))

(assert (not bm!59689))

(assert (not b!951457))

(assert (not b!951535))

(assert (not b!951610))

(assert (not b!951441))

(assert (not d!283882))

(assert (not bm!59688))

(assert (not b!951555))

(assert (not b!951426))

(assert (not b!951367))

(assert (not b!951446))

(assert (not b!951588))

(assert (not d!283870))

(assert (not b!951467))

(assert (not bm!59700))

(assert (not b!951618))

(assert (not b!951444))

(assert (not b!951442))

(assert (not b!951366))

(assert (not b!951620))

(assert (not b!951626))

(assert (not b!951537))

(assert (not d!283884))

(assert (not b!951573))

(assert (not b!951558))

(assert (not b!951397))

(assert (not d!283874))

(assert tp_is_empty!4883)

(assert (not b!951577))

(assert (not b!951541))

(assert (not b!951459))

(assert (not b!951528))

(assert (not bm!59702))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

