; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!83692 () Bool)

(assert start!83692)

(declare-fun b!936680 () Bool)

(assert (=> b!936680 true))

(assert (=> b!936680 true))

(assert (=> b!936680 true))

(declare-fun lambda!31200 () Int)

(declare-fun lambda!31199 () Int)

(assert (=> b!936680 (not (= lambda!31200 lambda!31199))))

(assert (=> b!936680 true))

(assert (=> b!936680 true))

(assert (=> b!936680 true))

(declare-fun bs!238024 () Bool)

(declare-fun b!936678 () Bool)

(assert (= bs!238024 (and b!936678 b!936680)))

(declare-datatypes ((C!5706 0))(
  ( (C!5707 (val!3101 Int)) )
))
(declare-datatypes ((Regex!2568 0))(
  ( (ElementMatch!2568 (c!152325 C!5706)) (Concat!4401 (regOne!5648 Regex!2568) (regTwo!5648 Regex!2568)) (EmptyExpr!2568) (Star!2568 (reg!2897 Regex!2568)) (EmptyLang!2568) (Union!2568 (regOne!5649 Regex!2568) (regTwo!5649 Regex!2568)) )
))
(declare-fun lt!341489 () Regex!2568)

(declare-fun lt!341487 () Regex!2568)

(declare-fun lambda!31201 () Int)

(declare-fun lt!341491 () Regex!2568)

(declare-fun r!15766 () Regex!2568)

(assert (=> bs!238024 (= (and (= lt!341491 (reg!2897 r!15766)) (= lt!341489 lt!341487)) (= lambda!31201 lambda!31199))))

(assert (=> bs!238024 (not (= lambda!31201 lambda!31200))))

(assert (=> b!936678 true))

(assert (=> b!936678 true))

(assert (=> b!936678 true))

(declare-fun lambda!31202 () Int)

(assert (=> bs!238024 (not (= lambda!31202 lambda!31199))))

(assert (=> bs!238024 (= (and (= lt!341491 (reg!2897 r!15766)) (= lt!341489 lt!341487)) (= lambda!31202 lambda!31200))))

(assert (=> b!936678 (not (= lambda!31202 lambda!31201))))

(assert (=> b!936678 true))

(assert (=> b!936678 true))

(assert (=> b!936678 true))

(declare-fun b!936676 () Bool)

(declare-fun e!608158 () Bool)

(declare-fun validRegex!1037 (Regex!2568) Bool)

(declare-fun removeUselessConcat!237 (Regex!2568) Regex!2568)

(assert (=> b!936676 (= e!608158 (validRegex!1037 (removeUselessConcat!237 r!15766)))))

(declare-fun b!936677 () Bool)

(declare-fun e!608154 () Bool)

(declare-fun tp!290433 () Bool)

(assert (=> b!936677 (= e!608154 tp!290433)))

(declare-fun e!608155 () Bool)

(assert (=> b!936678 (= e!608155 e!608158)))

(declare-fun res!425362 () Bool)

(assert (=> b!936678 (=> res!425362 e!608158)))

(declare-datatypes ((List!9798 0))(
  ( (Nil!9782) (Cons!9782 (h!15183 C!5706) (t!100844 List!9798)) )
))
(declare-fun s!10566 () List!9798)

(declare-fun isEmpty!6017 (List!9798) Bool)

(assert (=> b!936678 (= res!425362 (not (isEmpty!6017 s!10566)))))

(declare-fun Exists!319 (Int) Bool)

(assert (=> b!936678 (= (Exists!319 lambda!31201) (Exists!319 lambda!31202))))

(declare-datatypes ((Unit!14755 0))(
  ( (Unit!14756) )
))
(declare-fun lt!341490 () Unit!14755)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!63 (Regex!2568 List!9798) Unit!14755)

(assert (=> b!936678 (= lt!341490 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!63 lt!341491 s!10566))))

(declare-datatypes ((tuple2!11034 0))(
  ( (tuple2!11035 (_1!6343 List!9798) (_2!6343 List!9798)) )
))
(declare-datatypes ((Option!2159 0))(
  ( (None!2158) (Some!2158 (v!19575 tuple2!11034)) )
))
(declare-fun isDefined!1801 (Option!2159) Bool)

(declare-fun findConcatSeparation!265 (Regex!2568 Regex!2568 List!9798 List!9798 List!9798) Option!2159)

(assert (=> b!936678 (= (isDefined!1801 (findConcatSeparation!265 lt!341491 lt!341489 Nil!9782 s!10566 s!10566)) (Exists!319 lambda!31201))))

(declare-fun lt!341494 () Unit!14755)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!265 (Regex!2568 Regex!2568 List!9798) Unit!14755)

(assert (=> b!936678 (= lt!341494 (lemmaFindConcatSeparationEquivalentToExists!265 lt!341491 lt!341489 s!10566))))

(declare-fun matchRSpec!369 (Regex!2568 List!9798) Bool)

(assert (=> b!936678 (matchRSpec!369 lt!341489 s!10566)))

(declare-fun lt!341486 () Unit!14755)

(declare-fun mainMatchTheorem!369 (Regex!2568 List!9798) Unit!14755)

(assert (=> b!936678 (= lt!341486 (mainMatchTheorem!369 lt!341489 s!10566))))

(declare-fun b!936679 () Bool)

(declare-fun e!608157 () Bool)

(declare-fun tp_is_empty!4779 () Bool)

(declare-fun tp!290437 () Bool)

(assert (=> b!936679 (= e!608157 (and tp_is_empty!4779 tp!290437))))

(declare-fun e!608159 () Bool)

(assert (=> b!936680 (= e!608159 e!608155)))

(declare-fun res!425361 () Bool)

(assert (=> b!936680 (=> res!425361 e!608155)))

(declare-fun matchR!1106 (Regex!2568 List!9798) Bool)

(assert (=> b!936680 (= res!425361 (not (matchR!1106 lt!341489 s!10566)))))

(assert (=> b!936680 (= lt!341489 (Star!2568 lt!341491))))

(assert (=> b!936680 (= lt!341491 (removeUselessConcat!237 (reg!2897 r!15766)))))

(assert (=> b!936680 (= (Exists!319 lambda!31199) (Exists!319 lambda!31200))))

(declare-fun lt!341488 () Unit!14755)

(assert (=> b!936680 (= lt!341488 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!63 (reg!2897 r!15766) s!10566))))

(assert (=> b!936680 (= (isDefined!1801 (findConcatSeparation!265 (reg!2897 r!15766) lt!341487 Nil!9782 s!10566 s!10566)) (Exists!319 lambda!31199))))

(declare-fun lt!341492 () Unit!14755)

(assert (=> b!936680 (= lt!341492 (lemmaFindConcatSeparationEquivalentToExists!265 (reg!2897 r!15766) lt!341487 s!10566))))

(assert (=> b!936680 (= lt!341487 (Star!2568 (reg!2897 r!15766)))))

(declare-fun b!936681 () Bool)

(declare-fun e!608156 () Bool)

(assert (=> b!936681 (= e!608156 (not e!608159))))

(declare-fun res!425360 () Bool)

(assert (=> b!936681 (=> res!425360 e!608159)))

(declare-fun lt!341495 () Bool)

(assert (=> b!936681 (= res!425360 (or lt!341495 (and (is-Concat!4401 r!15766) (is-EmptyExpr!2568 (regOne!5648 r!15766))) (and (is-Concat!4401 r!15766) (is-EmptyExpr!2568 (regTwo!5648 r!15766))) (is-Concat!4401 r!15766) (is-Union!2568 r!15766) (not (is-Star!2568 r!15766))))))

(assert (=> b!936681 (= lt!341495 (matchRSpec!369 r!15766 s!10566))))

(assert (=> b!936681 (= lt!341495 (matchR!1106 r!15766 s!10566))))

(declare-fun lt!341493 () Unit!14755)

(assert (=> b!936681 (= lt!341493 (mainMatchTheorem!369 r!15766 s!10566))))

(declare-fun b!936682 () Bool)

(assert (=> b!936682 (= e!608154 tp_is_empty!4779)))

(declare-fun res!425359 () Bool)

(assert (=> start!83692 (=> (not res!425359) (not e!608156))))

(assert (=> start!83692 (= res!425359 (validRegex!1037 r!15766))))

(assert (=> start!83692 e!608156))

(assert (=> start!83692 e!608154))

(assert (=> start!83692 e!608157))

(declare-fun b!936683 () Bool)

(declare-fun tp!290436 () Bool)

(declare-fun tp!290434 () Bool)

(assert (=> b!936683 (= e!608154 (and tp!290436 tp!290434))))

(declare-fun b!936684 () Bool)

(declare-fun tp!290438 () Bool)

(declare-fun tp!290435 () Bool)

(assert (=> b!936684 (= e!608154 (and tp!290438 tp!290435))))

(assert (= (and start!83692 res!425359) b!936681))

(assert (= (and b!936681 (not res!425360)) b!936680))

(assert (= (and b!936680 (not res!425361)) b!936678))

(assert (= (and b!936678 (not res!425362)) b!936676))

(assert (= (and start!83692 (is-ElementMatch!2568 r!15766)) b!936682))

(assert (= (and start!83692 (is-Concat!4401 r!15766)) b!936684))

(assert (= (and start!83692 (is-Star!2568 r!15766)) b!936677))

(assert (= (and start!83692 (is-Union!2568 r!15766)) b!936683))

(assert (= (and start!83692 (is-Cons!9782 s!10566)) b!936679))

(declare-fun m!1155841 () Bool)

(assert (=> b!936681 m!1155841))

(declare-fun m!1155843 () Bool)

(assert (=> b!936681 m!1155843))

(declare-fun m!1155845 () Bool)

(assert (=> b!936681 m!1155845))

(declare-fun m!1155847 () Bool)

(assert (=> b!936678 m!1155847))

(declare-fun m!1155849 () Bool)

(assert (=> b!936678 m!1155849))

(declare-fun m!1155851 () Bool)

(assert (=> b!936678 m!1155851))

(declare-fun m!1155853 () Bool)

(assert (=> b!936678 m!1155853))

(declare-fun m!1155855 () Bool)

(assert (=> b!936678 m!1155855))

(declare-fun m!1155857 () Bool)

(assert (=> b!936678 m!1155857))

(assert (=> b!936678 m!1155849))

(declare-fun m!1155859 () Bool)

(assert (=> b!936678 m!1155859))

(declare-fun m!1155861 () Bool)

(assert (=> b!936678 m!1155861))

(declare-fun m!1155863 () Bool)

(assert (=> b!936678 m!1155863))

(assert (=> b!936678 m!1155861))

(declare-fun m!1155865 () Bool)

(assert (=> b!936676 m!1155865))

(assert (=> b!936676 m!1155865))

(declare-fun m!1155867 () Bool)

(assert (=> b!936676 m!1155867))

(declare-fun m!1155869 () Bool)

(assert (=> b!936680 m!1155869))

(declare-fun m!1155871 () Bool)

(assert (=> b!936680 m!1155871))

(assert (=> b!936680 m!1155869))

(declare-fun m!1155873 () Bool)

(assert (=> b!936680 m!1155873))

(declare-fun m!1155875 () Bool)

(assert (=> b!936680 m!1155875))

(declare-fun m!1155877 () Bool)

(assert (=> b!936680 m!1155877))

(declare-fun m!1155879 () Bool)

(assert (=> b!936680 m!1155879))

(declare-fun m!1155881 () Bool)

(assert (=> b!936680 m!1155881))

(assert (=> b!936680 m!1155875))

(declare-fun m!1155883 () Bool)

(assert (=> b!936680 m!1155883))

(declare-fun m!1155885 () Bool)

(assert (=> start!83692 m!1155885))

(push 1)

(assert (not b!936680))

(assert (not b!936676))

(assert tp_is_empty!4779)

(assert (not b!936677))

(assert (not b!936684))

(assert (not start!83692))

(assert (not b!936679))

(assert (not b!936681))

(assert (not b!936678))

(assert (not b!936683))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!281924 () Bool)

(declare-fun choose!5773 (Int) Bool)

(assert (=> d!281924 (= (Exists!319 lambda!31201) (choose!5773 lambda!31201))))

(declare-fun bs!238026 () Bool)

(assert (= bs!238026 d!281924))

(declare-fun m!1155933 () Bool)

(assert (=> bs!238026 m!1155933))

(assert (=> b!936678 d!281924))

(declare-fun d!281926 () Bool)

(declare-fun isEmpty!6019 (Option!2159) Bool)

(assert (=> d!281926 (= (isDefined!1801 (findConcatSeparation!265 lt!341491 lt!341489 Nil!9782 s!10566 s!10566)) (not (isEmpty!6019 (findConcatSeparation!265 lt!341491 lt!341489 Nil!9782 s!10566 s!10566))))))

(declare-fun bs!238027 () Bool)

(assert (= bs!238027 d!281926))

(assert (=> bs!238027 m!1155849))

(declare-fun m!1155935 () Bool)

(assert (=> bs!238027 m!1155935))

(assert (=> b!936678 d!281926))

(declare-fun b!936766 () Bool)

(declare-fun res!425415 () Bool)

(declare-fun e!608201 () Bool)

(assert (=> b!936766 (=> (not res!425415) (not e!608201))))

(declare-fun lt!341532 () Option!2159)

(declare-fun get!3234 (Option!2159) tuple2!11034)

(assert (=> b!936766 (= res!425415 (matchR!1106 lt!341489 (_2!6343 (get!3234 lt!341532))))))

(declare-fun b!936767 () Bool)

(declare-fun lt!341533 () Unit!14755)

(declare-fun lt!341534 () Unit!14755)

(assert (=> b!936767 (= lt!341533 lt!341534)))

(declare-fun ++!2590 (List!9798 List!9798) List!9798)

(assert (=> b!936767 (= (++!2590 (++!2590 Nil!9782 (Cons!9782 (h!15183 s!10566) Nil!9782)) (t!100844 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!203 (List!9798 C!5706 List!9798 List!9798) Unit!14755)

(assert (=> b!936767 (= lt!341534 (lemmaMoveElementToOtherListKeepsConcatEq!203 Nil!9782 (h!15183 s!10566) (t!100844 s!10566) s!10566))))

(declare-fun e!608200 () Option!2159)

(assert (=> b!936767 (= e!608200 (findConcatSeparation!265 lt!341491 lt!341489 (++!2590 Nil!9782 (Cons!9782 (h!15183 s!10566) Nil!9782)) (t!100844 s!10566) s!10566))))

(declare-fun b!936769 () Bool)

(assert (=> b!936769 (= e!608200 None!2158)))

(declare-fun b!936770 () Bool)

(declare-fun e!608202 () Bool)

(assert (=> b!936770 (= e!608202 (matchR!1106 lt!341489 s!10566))))

(declare-fun b!936771 () Bool)

(declare-fun e!608204 () Option!2159)

(assert (=> b!936771 (= e!608204 e!608200)))

(declare-fun c!152332 () Bool)

(assert (=> b!936771 (= c!152332 (is-Nil!9782 s!10566))))

(declare-fun b!936772 () Bool)

(assert (=> b!936772 (= e!608204 (Some!2158 (tuple2!11035 Nil!9782 s!10566)))))

(declare-fun b!936773 () Bool)

(assert (=> b!936773 (= e!608201 (= (++!2590 (_1!6343 (get!3234 lt!341532)) (_2!6343 (get!3234 lt!341532))) s!10566))))

(declare-fun b!936774 () Bool)

(declare-fun e!608203 () Bool)

(assert (=> b!936774 (= e!608203 (not (isDefined!1801 lt!341532)))))

(declare-fun b!936768 () Bool)

(declare-fun res!425413 () Bool)

(assert (=> b!936768 (=> (not res!425413) (not e!608201))))

(assert (=> b!936768 (= res!425413 (matchR!1106 lt!341491 (_1!6343 (get!3234 lt!341532))))))

(declare-fun d!281928 () Bool)

(assert (=> d!281928 e!608203))

(declare-fun res!425416 () Bool)

(assert (=> d!281928 (=> res!425416 e!608203)))

(assert (=> d!281928 (= res!425416 e!608201)))

(declare-fun res!425414 () Bool)

(assert (=> d!281928 (=> (not res!425414) (not e!608201))))

(assert (=> d!281928 (= res!425414 (isDefined!1801 lt!341532))))

(assert (=> d!281928 (= lt!341532 e!608204)))

(declare-fun c!152331 () Bool)

(assert (=> d!281928 (= c!152331 e!608202)))

(declare-fun res!425417 () Bool)

(assert (=> d!281928 (=> (not res!425417) (not e!608202))))

(assert (=> d!281928 (= res!425417 (matchR!1106 lt!341491 Nil!9782))))

(assert (=> d!281928 (validRegex!1037 lt!341491)))

(assert (=> d!281928 (= (findConcatSeparation!265 lt!341491 lt!341489 Nil!9782 s!10566 s!10566) lt!341532)))

(assert (= (and d!281928 res!425417) b!936770))

(assert (= (and d!281928 c!152331) b!936772))

(assert (= (and d!281928 (not c!152331)) b!936771))

(assert (= (and b!936771 c!152332) b!936769))

(assert (= (and b!936771 (not c!152332)) b!936767))

(assert (= (and d!281928 res!425414) b!936768))

(assert (= (and b!936768 res!425413) b!936766))

(assert (= (and b!936766 res!425415) b!936773))

(assert (= (and d!281928 (not res!425416)) b!936774))

(declare-fun m!1155937 () Bool)

(assert (=> b!936767 m!1155937))

(assert (=> b!936767 m!1155937))

(declare-fun m!1155939 () Bool)

(assert (=> b!936767 m!1155939))

(declare-fun m!1155941 () Bool)

(assert (=> b!936767 m!1155941))

(assert (=> b!936767 m!1155937))

(declare-fun m!1155943 () Bool)

(assert (=> b!936767 m!1155943))

(declare-fun m!1155945 () Bool)

(assert (=> d!281928 m!1155945))

(declare-fun m!1155947 () Bool)

(assert (=> d!281928 m!1155947))

(declare-fun m!1155949 () Bool)

(assert (=> d!281928 m!1155949))

(declare-fun m!1155951 () Bool)

(assert (=> b!936773 m!1155951))

(declare-fun m!1155953 () Bool)

(assert (=> b!936773 m!1155953))

(assert (=> b!936770 m!1155879))

(assert (=> b!936774 m!1155945))

(assert (=> b!936766 m!1155951))

(declare-fun m!1155955 () Bool)

(assert (=> b!936766 m!1155955))

(assert (=> b!936768 m!1155951))

(declare-fun m!1155957 () Bool)

(assert (=> b!936768 m!1155957))

(assert (=> b!936678 d!281928))

(declare-fun bs!238028 () Bool)

(declare-fun b!936811 () Bool)

(assert (= bs!238028 (and b!936811 b!936680)))

(declare-fun lambda!31223 () Int)

(assert (=> bs!238028 (not (= lambda!31223 lambda!31199))))

(assert (=> bs!238028 (= (and (= (reg!2897 lt!341489) (reg!2897 r!15766)) (= lt!341489 lt!341487)) (= lambda!31223 lambda!31200))))

(declare-fun bs!238029 () Bool)

(assert (= bs!238029 (and b!936811 b!936678)))

(assert (=> bs!238029 (not (= lambda!31223 lambda!31201))))

(assert (=> bs!238029 (= (= (reg!2897 lt!341489) lt!341491) (= lambda!31223 lambda!31202))))

(assert (=> b!936811 true))

(assert (=> b!936811 true))

(declare-fun bs!238030 () Bool)

(declare-fun b!936815 () Bool)

(assert (= bs!238030 (and b!936815 b!936680)))

(declare-fun lambda!31224 () Int)

(assert (=> bs!238030 (not (= lambda!31224 lambda!31200))))

(declare-fun bs!238031 () Bool)

(assert (= bs!238031 (and b!936815 b!936678)))

(assert (=> bs!238031 (not (= lambda!31224 lambda!31201))))

(assert (=> bs!238030 (not (= lambda!31224 lambda!31199))))

(declare-fun bs!238032 () Bool)

(assert (= bs!238032 (and b!936815 b!936811)))

(assert (=> bs!238032 (not (= lambda!31224 lambda!31223))))

(assert (=> bs!238031 (not (= lambda!31224 lambda!31202))))

(assert (=> b!936815 true))

(assert (=> b!936815 true))

(declare-fun d!281930 () Bool)

(declare-fun c!152341 () Bool)

(assert (=> d!281930 (= c!152341 (is-EmptyExpr!2568 lt!341489))))

(declare-fun e!608224 () Bool)

(assert (=> d!281930 (= (matchRSpec!369 lt!341489 s!10566) e!608224)))

(declare-fun b!936807 () Bool)

(declare-fun c!152344 () Bool)

(assert (=> b!936807 (= c!152344 (is-Union!2568 lt!341489))))

(declare-fun e!608227 () Bool)

(declare-fun e!608229 () Bool)

(assert (=> b!936807 (= e!608227 e!608229)))

(declare-fun b!936808 () Bool)

(declare-fun e!608223 () Bool)

(assert (=> b!936808 (= e!608229 e!608223)))

(declare-fun res!425434 () Bool)

(assert (=> b!936808 (= res!425434 (matchRSpec!369 (regOne!5649 lt!341489) s!10566))))

(assert (=> b!936808 (=> res!425434 e!608223)))

(declare-fun b!936809 () Bool)

(declare-fun c!152342 () Bool)

(assert (=> b!936809 (= c!152342 (is-ElementMatch!2568 lt!341489))))

(declare-fun e!608225 () Bool)

(assert (=> b!936809 (= e!608225 e!608227)))

(declare-fun b!936810 () Bool)

(assert (=> b!936810 (= e!608224 e!608225)))

(declare-fun res!425435 () Bool)

(assert (=> b!936810 (= res!425435 (not (is-EmptyLang!2568 lt!341489)))))

(assert (=> b!936810 (=> (not res!425435) (not e!608225))))

(declare-fun e!608228 () Bool)

(declare-fun call!58090 () Bool)

(assert (=> b!936811 (= e!608228 call!58090)))

(declare-fun b!936812 () Bool)

(assert (=> b!936812 (= e!608223 (matchRSpec!369 (regTwo!5649 lt!341489) s!10566))))

(declare-fun b!936813 () Bool)

(assert (=> b!936813 (= e!608227 (= s!10566 (Cons!9782 (c!152325 lt!341489) Nil!9782)))))

(declare-fun b!936814 () Bool)

(declare-fun call!58091 () Bool)

(assert (=> b!936814 (= e!608224 call!58091)))

(declare-fun bm!58085 () Bool)

(declare-fun c!152343 () Bool)

(assert (=> bm!58085 (= call!58090 (Exists!319 (ite c!152343 lambda!31223 lambda!31224)))))

(declare-fun e!608226 () Bool)

(assert (=> b!936815 (= e!608226 call!58090)))

(declare-fun b!936816 () Bool)

(assert (=> b!936816 (= e!608229 e!608226)))

(assert (=> b!936816 (= c!152343 (is-Star!2568 lt!341489))))

(declare-fun bm!58086 () Bool)

(assert (=> bm!58086 (= call!58091 (isEmpty!6017 s!10566))))

(declare-fun b!936817 () Bool)

(declare-fun res!425436 () Bool)

(assert (=> b!936817 (=> res!425436 e!608228)))

(assert (=> b!936817 (= res!425436 call!58091)))

(assert (=> b!936817 (= e!608226 e!608228)))

(assert (= (and d!281930 c!152341) b!936814))

(assert (= (and d!281930 (not c!152341)) b!936810))

(assert (= (and b!936810 res!425435) b!936809))

(assert (= (and b!936809 c!152342) b!936813))

(assert (= (and b!936809 (not c!152342)) b!936807))

(assert (= (and b!936807 c!152344) b!936808))

(assert (= (and b!936807 (not c!152344)) b!936816))

(assert (= (and b!936808 (not res!425434)) b!936812))

(assert (= (and b!936816 c!152343) b!936817))

(assert (= (and b!936816 (not c!152343)) b!936815))

(assert (= (and b!936817 (not res!425436)) b!936811))

(assert (= (or b!936811 b!936815) bm!58085))

(assert (= (or b!936814 b!936817) bm!58086))

(declare-fun m!1155959 () Bool)

(assert (=> b!936808 m!1155959))

(declare-fun m!1155961 () Bool)

(assert (=> b!936812 m!1155961))

(declare-fun m!1155963 () Bool)

(assert (=> bm!58085 m!1155963))

(assert (=> bm!58086 m!1155857))

(assert (=> b!936678 d!281930))

(declare-fun d!281932 () Bool)

(assert (=> d!281932 (= (Exists!319 lambda!31202) (choose!5773 lambda!31202))))

(declare-fun bs!238033 () Bool)

(assert (= bs!238033 d!281932))

(declare-fun m!1155965 () Bool)

(assert (=> bs!238033 m!1155965))

(assert (=> b!936678 d!281932))

(declare-fun d!281934 () Bool)

(assert (=> d!281934 (= (isEmpty!6017 s!10566) (is-Nil!9782 s!10566))))

(assert (=> b!936678 d!281934))

(declare-fun d!281936 () Bool)

(assert (=> d!281936 (= (matchR!1106 lt!341489 s!10566) (matchRSpec!369 lt!341489 s!10566))))

(declare-fun lt!341537 () Unit!14755)

(declare-fun choose!5774 (Regex!2568 List!9798) Unit!14755)

(assert (=> d!281936 (= lt!341537 (choose!5774 lt!341489 s!10566))))

(assert (=> d!281936 (validRegex!1037 lt!341489)))

(assert (=> d!281936 (= (mainMatchTheorem!369 lt!341489 s!10566) lt!341537)))

(declare-fun bs!238034 () Bool)

(assert (= bs!238034 d!281936))

(assert (=> bs!238034 m!1155879))

(assert (=> bs!238034 m!1155853))

(declare-fun m!1155967 () Bool)

(assert (=> bs!238034 m!1155967))

(declare-fun m!1155969 () Bool)

(assert (=> bs!238034 m!1155969))

(assert (=> b!936678 d!281936))

(declare-fun bs!238035 () Bool)

(declare-fun d!281938 () Bool)

(assert (= bs!238035 (and d!281938 b!936680)))

(declare-fun lambda!31229 () Int)

(assert (=> bs!238035 (not (= lambda!31229 lambda!31200))))

(declare-fun bs!238036 () Bool)

(assert (= bs!238036 (and d!281938 b!936678)))

(assert (=> bs!238036 (= (= (Star!2568 lt!341491) lt!341489) (= lambda!31229 lambda!31201))))

(assert (=> bs!238035 (= (and (= lt!341491 (reg!2897 r!15766)) (= (Star!2568 lt!341491) lt!341487)) (= lambda!31229 lambda!31199))))

(declare-fun bs!238037 () Bool)

(assert (= bs!238037 (and d!281938 b!936815)))

(assert (=> bs!238037 (not (= lambda!31229 lambda!31224))))

(declare-fun bs!238038 () Bool)

(assert (= bs!238038 (and d!281938 b!936811)))

(assert (=> bs!238038 (not (= lambda!31229 lambda!31223))))

(assert (=> bs!238036 (not (= lambda!31229 lambda!31202))))

(assert (=> d!281938 true))

(assert (=> d!281938 true))

(declare-fun lambda!31230 () Int)

(assert (=> bs!238035 (= (and (= lt!341491 (reg!2897 r!15766)) (= (Star!2568 lt!341491) lt!341487)) (= lambda!31230 lambda!31200))))

(declare-fun bs!238039 () Bool)

(assert (= bs!238039 d!281938))

(assert (=> bs!238039 (not (= lambda!31230 lambda!31229))))

(assert (=> bs!238036 (not (= lambda!31230 lambda!31201))))

(assert (=> bs!238035 (not (= lambda!31230 lambda!31199))))

(assert (=> bs!238037 (not (= lambda!31230 lambda!31224))))

(assert (=> bs!238038 (= (and (= lt!341491 (reg!2897 lt!341489)) (= (Star!2568 lt!341491) lt!341489)) (= lambda!31230 lambda!31223))))

(assert (=> bs!238036 (= (= (Star!2568 lt!341491) lt!341489) (= lambda!31230 lambda!31202))))

(assert (=> d!281938 true))

(assert (=> d!281938 true))

(assert (=> d!281938 (= (Exists!319 lambda!31229) (Exists!319 lambda!31230))))

(declare-fun lt!341540 () Unit!14755)

(declare-fun choose!5775 (Regex!2568 List!9798) Unit!14755)

(assert (=> d!281938 (= lt!341540 (choose!5775 lt!341491 s!10566))))

(assert (=> d!281938 (validRegex!1037 lt!341491)))

(assert (=> d!281938 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!63 lt!341491 s!10566) lt!341540)))

(declare-fun m!1155971 () Bool)

(assert (=> bs!238039 m!1155971))

(declare-fun m!1155973 () Bool)

(assert (=> bs!238039 m!1155973))

(declare-fun m!1155975 () Bool)

(assert (=> bs!238039 m!1155975))

(assert (=> bs!238039 m!1155949))

(assert (=> b!936678 d!281938))

(declare-fun bs!238040 () Bool)

(declare-fun d!281942 () Bool)

(assert (= bs!238040 (and d!281942 b!936680)))

(declare-fun lambda!31233 () Int)

(assert (=> bs!238040 (not (= lambda!31233 lambda!31200))))

(declare-fun bs!238041 () Bool)

(assert (= bs!238041 (and d!281942 d!281938)))

(assert (=> bs!238041 (= (= lt!341489 (Star!2568 lt!341491)) (= lambda!31233 lambda!31229))))

(declare-fun bs!238042 () Bool)

(assert (= bs!238042 (and d!281942 b!936678)))

(assert (=> bs!238042 (= lambda!31233 lambda!31201)))

(assert (=> bs!238040 (= (and (= lt!341491 (reg!2897 r!15766)) (= lt!341489 lt!341487)) (= lambda!31233 lambda!31199))))

(declare-fun bs!238043 () Bool)

(assert (= bs!238043 (and d!281942 b!936815)))

(assert (=> bs!238043 (not (= lambda!31233 lambda!31224))))

(declare-fun bs!238044 () Bool)

(assert (= bs!238044 (and d!281942 b!936811)))

(assert (=> bs!238044 (not (= lambda!31233 lambda!31223))))

(assert (=> bs!238041 (not (= lambda!31233 lambda!31230))))

(assert (=> bs!238042 (not (= lambda!31233 lambda!31202))))

(assert (=> d!281942 true))

(assert (=> d!281942 true))

(assert (=> d!281942 true))

(assert (=> d!281942 (= (isDefined!1801 (findConcatSeparation!265 lt!341491 lt!341489 Nil!9782 s!10566 s!10566)) (Exists!319 lambda!31233))))

(declare-fun lt!341543 () Unit!14755)

(declare-fun choose!5776 (Regex!2568 Regex!2568 List!9798) Unit!14755)

(assert (=> d!281942 (= lt!341543 (choose!5776 lt!341491 lt!341489 s!10566))))

(assert (=> d!281942 (validRegex!1037 lt!341491)))

(assert (=> d!281942 (= (lemmaFindConcatSeparationEquivalentToExists!265 lt!341491 lt!341489 s!10566) lt!341543)))

(declare-fun bs!238045 () Bool)

(assert (= bs!238045 d!281942))

(assert (=> bs!238045 m!1155849))

(assert (=> bs!238045 m!1155851))

(declare-fun m!1155977 () Bool)

(assert (=> bs!238045 m!1155977))

(assert (=> bs!238045 m!1155849))

(assert (=> bs!238045 m!1155949))

(declare-fun m!1155979 () Bool)

(assert (=> bs!238045 m!1155979))

(assert (=> b!936678 d!281942))

(declare-fun bm!58093 () Bool)

(declare-fun call!58098 () Bool)

(declare-fun c!152350 () Bool)

(declare-fun c!152349 () Bool)

(assert (=> bm!58093 (= call!58098 (validRegex!1037 (ite c!152350 (reg!2897 r!15766) (ite c!152349 (regTwo!5649 r!15766) (regTwo!5648 r!15766)))))))

(declare-fun b!936854 () Bool)

(declare-fun res!425466 () Bool)

(declare-fun e!608253 () Bool)

(assert (=> b!936854 (=> (not res!425466) (not e!608253))))

(declare-fun call!58099 () Bool)

(assert (=> b!936854 (= res!425466 call!58099)))

(declare-fun e!608252 () Bool)

(assert (=> b!936854 (= e!608252 e!608253)))

(declare-fun b!936855 () Bool)

(declare-fun e!608255 () Bool)

(assert (=> b!936855 (= e!608255 e!608252)))

(assert (=> b!936855 (= c!152349 (is-Union!2568 r!15766))))

(declare-fun b!936856 () Bool)

(declare-fun call!58100 () Bool)

(assert (=> b!936856 (= e!608253 call!58100)))

(declare-fun b!936857 () Bool)

(declare-fun e!608257 () Bool)

(assert (=> b!936857 (= e!608255 e!608257)))

(declare-fun res!425469 () Bool)

(declare-fun nullable!738 (Regex!2568) Bool)

(assert (=> b!936857 (= res!425469 (not (nullable!738 (reg!2897 r!15766))))))

(assert (=> b!936857 (=> (not res!425469) (not e!608257))))

(declare-fun b!936859 () Bool)

(declare-fun e!608256 () Bool)

(declare-fun e!608258 () Bool)

(assert (=> b!936859 (= e!608256 e!608258)))

(declare-fun res!425468 () Bool)

(assert (=> b!936859 (=> (not res!425468) (not e!608258))))

(assert (=> b!936859 (= res!425468 call!58099)))

(declare-fun b!936860 () Bool)

(declare-fun res!425467 () Bool)

(assert (=> b!936860 (=> res!425467 e!608256)))

(assert (=> b!936860 (= res!425467 (not (is-Concat!4401 r!15766)))))

(assert (=> b!936860 (= e!608252 e!608256)))

(declare-fun b!936861 () Bool)

(assert (=> b!936861 (= e!608257 call!58098)))

(declare-fun b!936862 () Bool)

(declare-fun e!608254 () Bool)

(assert (=> b!936862 (= e!608254 e!608255)))

(assert (=> b!936862 (= c!152350 (is-Star!2568 r!15766))))

(declare-fun bm!58094 () Bool)

(assert (=> bm!58094 (= call!58099 (validRegex!1037 (ite c!152349 (regOne!5649 r!15766) (regOne!5648 r!15766))))))

(declare-fun bm!58095 () Bool)

(assert (=> bm!58095 (= call!58100 call!58098)))

(declare-fun d!281944 () Bool)

(declare-fun res!425465 () Bool)

(assert (=> d!281944 (=> res!425465 e!608254)))

(assert (=> d!281944 (= res!425465 (is-ElementMatch!2568 r!15766))))

(assert (=> d!281944 (= (validRegex!1037 r!15766) e!608254)))

(declare-fun b!936858 () Bool)

(assert (=> b!936858 (= e!608258 call!58100)))

(assert (= (and d!281944 (not res!425465)) b!936862))

(assert (= (and b!936862 c!152350) b!936857))

(assert (= (and b!936862 (not c!152350)) b!936855))

(assert (= (and b!936857 res!425469) b!936861))

(assert (= (and b!936855 c!152349) b!936854))

(assert (= (and b!936855 (not c!152349)) b!936860))

(assert (= (and b!936854 res!425466) b!936856))

(assert (= (and b!936860 (not res!425467)) b!936859))

(assert (= (and b!936859 res!425468) b!936858))

(assert (= (or b!936856 b!936858) bm!58095))

(assert (= (or b!936854 b!936859) bm!58094))

(assert (= (or b!936861 bm!58095) bm!58093))

(declare-fun m!1155981 () Bool)

(assert (=> bm!58093 m!1155981))

(declare-fun m!1155983 () Bool)

(assert (=> b!936857 m!1155983))

(declare-fun m!1155985 () Bool)

(assert (=> bm!58094 m!1155985))

(assert (=> start!83692 d!281944))

(declare-fun c!152352 () Bool)

(declare-fun call!58101 () Bool)

(declare-fun c!152351 () Bool)

(declare-fun bm!58096 () Bool)

(assert (=> bm!58096 (= call!58101 (validRegex!1037 (ite c!152352 (reg!2897 (removeUselessConcat!237 r!15766)) (ite c!152351 (regTwo!5649 (removeUselessConcat!237 r!15766)) (regTwo!5648 (removeUselessConcat!237 r!15766))))))))

(declare-fun b!936863 () Bool)

(declare-fun res!425471 () Bool)

(declare-fun e!608260 () Bool)

(assert (=> b!936863 (=> (not res!425471) (not e!608260))))

(declare-fun call!58102 () Bool)

(assert (=> b!936863 (= res!425471 call!58102)))

(declare-fun e!608259 () Bool)

(assert (=> b!936863 (= e!608259 e!608260)))

(declare-fun b!936864 () Bool)

(declare-fun e!608262 () Bool)

(assert (=> b!936864 (= e!608262 e!608259)))

(assert (=> b!936864 (= c!152351 (is-Union!2568 (removeUselessConcat!237 r!15766)))))

(declare-fun b!936865 () Bool)

(declare-fun call!58103 () Bool)

(assert (=> b!936865 (= e!608260 call!58103)))

(declare-fun b!936866 () Bool)

(declare-fun e!608264 () Bool)

(assert (=> b!936866 (= e!608262 e!608264)))

(declare-fun res!425474 () Bool)

(assert (=> b!936866 (= res!425474 (not (nullable!738 (reg!2897 (removeUselessConcat!237 r!15766)))))))

(assert (=> b!936866 (=> (not res!425474) (not e!608264))))

(declare-fun b!936868 () Bool)

(declare-fun e!608263 () Bool)

(declare-fun e!608265 () Bool)

(assert (=> b!936868 (= e!608263 e!608265)))

(declare-fun res!425473 () Bool)

(assert (=> b!936868 (=> (not res!425473) (not e!608265))))

(assert (=> b!936868 (= res!425473 call!58102)))

(declare-fun b!936869 () Bool)

(declare-fun res!425472 () Bool)

(assert (=> b!936869 (=> res!425472 e!608263)))

(assert (=> b!936869 (= res!425472 (not (is-Concat!4401 (removeUselessConcat!237 r!15766))))))

(assert (=> b!936869 (= e!608259 e!608263)))

(declare-fun b!936870 () Bool)

(assert (=> b!936870 (= e!608264 call!58101)))

(declare-fun b!936871 () Bool)

(declare-fun e!608261 () Bool)

(assert (=> b!936871 (= e!608261 e!608262)))

(assert (=> b!936871 (= c!152352 (is-Star!2568 (removeUselessConcat!237 r!15766)))))

(declare-fun bm!58097 () Bool)

(assert (=> bm!58097 (= call!58102 (validRegex!1037 (ite c!152351 (regOne!5649 (removeUselessConcat!237 r!15766)) (regOne!5648 (removeUselessConcat!237 r!15766)))))))

(declare-fun bm!58098 () Bool)

(assert (=> bm!58098 (= call!58103 call!58101)))

(declare-fun d!281946 () Bool)

(declare-fun res!425470 () Bool)

(assert (=> d!281946 (=> res!425470 e!608261)))

(assert (=> d!281946 (= res!425470 (is-ElementMatch!2568 (removeUselessConcat!237 r!15766)))))

(assert (=> d!281946 (= (validRegex!1037 (removeUselessConcat!237 r!15766)) e!608261)))

(declare-fun b!936867 () Bool)

(assert (=> b!936867 (= e!608265 call!58103)))

(assert (= (and d!281946 (not res!425470)) b!936871))

(assert (= (and b!936871 c!152352) b!936866))

(assert (= (and b!936871 (not c!152352)) b!936864))

(assert (= (and b!936866 res!425474) b!936870))

(assert (= (and b!936864 c!152351) b!936863))

(assert (= (and b!936864 (not c!152351)) b!936869))

(assert (= (and b!936863 res!425471) b!936865))

(assert (= (and b!936869 (not res!425472)) b!936868))

(assert (= (and b!936868 res!425473) b!936867))

(assert (= (or b!936865 b!936867) bm!58098))

(assert (= (or b!936863 b!936868) bm!58097))

(assert (= (or b!936870 bm!58098) bm!58096))

(declare-fun m!1155987 () Bool)

(assert (=> bm!58096 m!1155987))

(declare-fun m!1155989 () Bool)

(assert (=> b!936866 m!1155989))

(declare-fun m!1155991 () Bool)

(assert (=> bm!58097 m!1155991))

(assert (=> b!936676 d!281946))

(declare-fun b!936894 () Bool)

(declare-fun e!608283 () Regex!2568)

(declare-fun call!58114 () Regex!2568)

(assert (=> b!936894 (= e!608283 call!58114)))

(declare-fun call!58115 () Regex!2568)

(declare-fun bm!58110 () Bool)

(declare-fun c!152366 () Bool)

(declare-fun c!152367 () Bool)

(assert (=> bm!58110 (= call!58115 (removeUselessConcat!237 (ite c!152367 (regTwo!5648 r!15766) (ite c!152366 (regOne!5648 r!15766) (regOne!5649 r!15766)))))))

(declare-fun bm!58111 () Bool)

(declare-fun call!58118 () Regex!2568)

(assert (=> bm!58111 (= call!58118 call!58114)))

(declare-fun b!936895 () Bool)

(declare-fun e!608278 () Regex!2568)

(declare-fun call!58116 () Regex!2568)

(assert (=> b!936895 (= e!608278 (Star!2568 call!58116))))

(declare-fun b!936896 () Bool)

(declare-fun e!608282 () Regex!2568)

(assert (=> b!936896 (= e!608282 e!608283)))

(declare-fun c!152364 () Bool)

(assert (=> b!936896 (= c!152364 (and (is-Concat!4401 r!15766) (is-EmptyExpr!2568 (regTwo!5648 r!15766))))))

(declare-fun bm!58112 () Bool)

(assert (=> bm!58112 (= call!58116 call!58118)))

(declare-fun b!936897 () Bool)

(assert (=> b!936897 (= e!608278 r!15766)))

(declare-fun b!936898 () Bool)

(declare-fun c!152363 () Bool)

(assert (=> b!936898 (= c!152363 (is-Star!2568 r!15766))))

(declare-fun e!608281 () Regex!2568)

(assert (=> b!936898 (= e!608281 e!608278)))

(declare-fun b!936899 () Bool)

(assert (=> b!936899 (= c!152366 (is-Concat!4401 r!15766))))

(declare-fun e!608279 () Regex!2568)

(assert (=> b!936899 (= e!608283 e!608279)))

(declare-fun b!936900 () Bool)

(assert (=> b!936900 (= e!608282 call!58115)))

(declare-fun b!936901 () Bool)

(declare-fun call!58117 () Regex!2568)

(assert (=> b!936901 (= e!608281 (Union!2568 call!58117 call!58116))))

(declare-fun b!936902 () Bool)

(assert (=> b!936902 (= e!608279 (Concat!4401 call!58117 call!58118))))

(declare-fun bm!58113 () Bool)

(assert (=> bm!58113 (= call!58117 call!58115)))

(declare-fun bm!58109 () Bool)

(declare-fun c!152365 () Bool)

(assert (=> bm!58109 (= call!58114 (removeUselessConcat!237 (ite c!152364 (regOne!5648 r!15766) (ite c!152366 (regTwo!5648 r!15766) (ite c!152365 (regTwo!5649 r!15766) (reg!2897 r!15766))))))))

(declare-fun d!281948 () Bool)

(declare-fun e!608280 () Bool)

(assert (=> d!281948 e!608280))

(declare-fun res!425477 () Bool)

(assert (=> d!281948 (=> (not res!425477) (not e!608280))))

(declare-fun lt!341549 () Regex!2568)

(assert (=> d!281948 (= res!425477 (validRegex!1037 lt!341549))))

(assert (=> d!281948 (= lt!341549 e!608282)))

(assert (=> d!281948 (= c!152367 (and (is-Concat!4401 r!15766) (is-EmptyExpr!2568 (regOne!5648 r!15766))))))

(assert (=> d!281948 (validRegex!1037 r!15766)))

(assert (=> d!281948 (= (removeUselessConcat!237 r!15766) lt!341549)))

(declare-fun b!936903 () Bool)

(assert (=> b!936903 (= e!608279 e!608281)))

(assert (=> b!936903 (= c!152365 (is-Union!2568 r!15766))))

(declare-fun b!936904 () Bool)

(assert (=> b!936904 (= e!608280 (= (nullable!738 lt!341549) (nullable!738 r!15766)))))

(assert (= (and d!281948 c!152367) b!936900))

(assert (= (and d!281948 (not c!152367)) b!936896))

(assert (= (and b!936896 c!152364) b!936894))

(assert (= (and b!936896 (not c!152364)) b!936899))

(assert (= (and b!936899 c!152366) b!936902))

(assert (= (and b!936899 (not c!152366)) b!936903))

(assert (= (and b!936903 c!152365) b!936901))

(assert (= (and b!936903 (not c!152365)) b!936898))

(assert (= (and b!936898 c!152363) b!936895))

(assert (= (and b!936898 (not c!152363)) b!936897))

(assert (= (or b!936901 b!936895) bm!58112))

(assert (= (or b!936902 bm!58112) bm!58111))

(assert (= (or b!936902 b!936901) bm!58113))

(assert (= (or b!936894 bm!58111) bm!58109))

(assert (= (or b!936900 bm!58113) bm!58110))

(assert (= (and d!281948 res!425477) b!936904))

(declare-fun m!1155999 () Bool)

(assert (=> bm!58110 m!1155999))

(declare-fun m!1156001 () Bool)

(assert (=> bm!58109 m!1156001))

(declare-fun m!1156003 () Bool)

(assert (=> d!281948 m!1156003))

(assert (=> d!281948 m!1155885))

(declare-fun m!1156005 () Bool)

(assert (=> b!936904 m!1156005))

(declare-fun m!1156007 () Bool)

(assert (=> b!936904 m!1156007))

(assert (=> b!936676 d!281948))

(declare-fun bs!238049 () Bool)

(declare-fun b!936909 () Bool)

(assert (= bs!238049 (and b!936909 b!936680)))

(declare-fun lambda!31237 () Int)

(assert (=> bs!238049 (= (= r!15766 lt!341487) (= lambda!31237 lambda!31200))))

(declare-fun bs!238050 () Bool)

(assert (= bs!238050 (and b!936909 d!281942)))

(assert (=> bs!238050 (not (= lambda!31237 lambda!31233))))

(declare-fun bs!238051 () Bool)

(assert (= bs!238051 (and b!936909 d!281938)))

(assert (=> bs!238051 (not (= lambda!31237 lambda!31229))))

(declare-fun bs!238052 () Bool)

(assert (= bs!238052 (and b!936909 b!936678)))

(assert (=> bs!238052 (not (= lambda!31237 lambda!31201))))

(assert (=> bs!238049 (not (= lambda!31237 lambda!31199))))

(declare-fun bs!238053 () Bool)

(assert (= bs!238053 (and b!936909 b!936815)))

(assert (=> bs!238053 (not (= lambda!31237 lambda!31224))))

(declare-fun bs!238054 () Bool)

(assert (= bs!238054 (and b!936909 b!936811)))

(assert (=> bs!238054 (= (and (= (reg!2897 r!15766) (reg!2897 lt!341489)) (= r!15766 lt!341489)) (= lambda!31237 lambda!31223))))

(assert (=> bs!238051 (= (and (= (reg!2897 r!15766) lt!341491) (= r!15766 (Star!2568 lt!341491))) (= lambda!31237 lambda!31230))))

(assert (=> bs!238052 (= (and (= (reg!2897 r!15766) lt!341491) (= r!15766 lt!341489)) (= lambda!31237 lambda!31202))))

(assert (=> b!936909 true))

(assert (=> b!936909 true))

(declare-fun bs!238055 () Bool)

(declare-fun b!936913 () Bool)

(assert (= bs!238055 (and b!936913 b!936909)))

(declare-fun lambda!31238 () Int)

(assert (=> bs!238055 (not (= lambda!31238 lambda!31237))))

(declare-fun bs!238056 () Bool)

(assert (= bs!238056 (and b!936913 b!936680)))

(assert (=> bs!238056 (not (= lambda!31238 lambda!31200))))

(declare-fun bs!238057 () Bool)

(assert (= bs!238057 (and b!936913 d!281942)))

(assert (=> bs!238057 (not (= lambda!31238 lambda!31233))))

(declare-fun bs!238058 () Bool)

(assert (= bs!238058 (and b!936913 d!281938)))

(assert (=> bs!238058 (not (= lambda!31238 lambda!31229))))

(declare-fun bs!238059 () Bool)

(assert (= bs!238059 (and b!936913 b!936678)))

(assert (=> bs!238059 (not (= lambda!31238 lambda!31201))))

(assert (=> bs!238056 (not (= lambda!31238 lambda!31199))))

(declare-fun bs!238060 () Bool)

(assert (= bs!238060 (and b!936913 b!936815)))

(assert (=> bs!238060 (= (and (= (regOne!5648 r!15766) (regOne!5648 lt!341489)) (= (regTwo!5648 r!15766) (regTwo!5648 lt!341489))) (= lambda!31238 lambda!31224))))

(declare-fun bs!238061 () Bool)

(assert (= bs!238061 (and b!936913 b!936811)))

(assert (=> bs!238061 (not (= lambda!31238 lambda!31223))))

(assert (=> bs!238058 (not (= lambda!31238 lambda!31230))))

(assert (=> bs!238059 (not (= lambda!31238 lambda!31202))))

(assert (=> b!936913 true))

(assert (=> b!936913 true))

(declare-fun d!281952 () Bool)

(declare-fun c!152368 () Bool)

(assert (=> d!281952 (= c!152368 (is-EmptyExpr!2568 r!15766))))

(declare-fun e!608285 () Bool)

(assert (=> d!281952 (= (matchRSpec!369 r!15766 s!10566) e!608285)))

(declare-fun b!936905 () Bool)

(declare-fun c!152371 () Bool)

(assert (=> b!936905 (= c!152371 (is-Union!2568 r!15766))))

(declare-fun e!608288 () Bool)

(declare-fun e!608290 () Bool)

(assert (=> b!936905 (= e!608288 e!608290)))

(declare-fun b!936906 () Bool)

(declare-fun e!608284 () Bool)

(assert (=> b!936906 (= e!608290 e!608284)))

(declare-fun res!425478 () Bool)

(assert (=> b!936906 (= res!425478 (matchRSpec!369 (regOne!5649 r!15766) s!10566))))

(assert (=> b!936906 (=> res!425478 e!608284)))

(declare-fun b!936907 () Bool)

(declare-fun c!152369 () Bool)

(assert (=> b!936907 (= c!152369 (is-ElementMatch!2568 r!15766))))

(declare-fun e!608286 () Bool)

(assert (=> b!936907 (= e!608286 e!608288)))

(declare-fun b!936908 () Bool)

(assert (=> b!936908 (= e!608285 e!608286)))

(declare-fun res!425479 () Bool)

(assert (=> b!936908 (= res!425479 (not (is-EmptyLang!2568 r!15766)))))

(assert (=> b!936908 (=> (not res!425479) (not e!608286))))

(declare-fun e!608289 () Bool)

(declare-fun call!58119 () Bool)

(assert (=> b!936909 (= e!608289 call!58119)))

(declare-fun b!936910 () Bool)

(assert (=> b!936910 (= e!608284 (matchRSpec!369 (regTwo!5649 r!15766) s!10566))))

(declare-fun b!936911 () Bool)

(assert (=> b!936911 (= e!608288 (= s!10566 (Cons!9782 (c!152325 r!15766) Nil!9782)))))

(declare-fun b!936912 () Bool)

(declare-fun call!58120 () Bool)

(assert (=> b!936912 (= e!608285 call!58120)))

(declare-fun c!152370 () Bool)

(declare-fun bm!58114 () Bool)

(assert (=> bm!58114 (= call!58119 (Exists!319 (ite c!152370 lambda!31237 lambda!31238)))))

(declare-fun e!608287 () Bool)

(assert (=> b!936913 (= e!608287 call!58119)))

(declare-fun b!936914 () Bool)

(assert (=> b!936914 (= e!608290 e!608287)))

(assert (=> b!936914 (= c!152370 (is-Star!2568 r!15766))))

(declare-fun bm!58115 () Bool)

(assert (=> bm!58115 (= call!58120 (isEmpty!6017 s!10566))))

(declare-fun b!936915 () Bool)

(declare-fun res!425480 () Bool)

(assert (=> b!936915 (=> res!425480 e!608289)))

(assert (=> b!936915 (= res!425480 call!58120)))

(assert (=> b!936915 (= e!608287 e!608289)))

(assert (= (and d!281952 c!152368) b!936912))

(assert (= (and d!281952 (not c!152368)) b!936908))

(assert (= (and b!936908 res!425479) b!936907))

(assert (= (and b!936907 c!152369) b!936911))

(assert (= (and b!936907 (not c!152369)) b!936905))

(assert (= (and b!936905 c!152371) b!936906))

(assert (= (and b!936905 (not c!152371)) b!936914))

(assert (= (and b!936906 (not res!425478)) b!936910))

(assert (= (and b!936914 c!152370) b!936915))

(assert (= (and b!936914 (not c!152370)) b!936913))

(assert (= (and b!936915 (not res!425480)) b!936909))

(assert (= (or b!936909 b!936913) bm!58114))

(assert (= (or b!936912 b!936915) bm!58115))

(declare-fun m!1156009 () Bool)

(assert (=> b!936906 m!1156009))

(declare-fun m!1156011 () Bool)

(assert (=> b!936910 m!1156011))

(declare-fun m!1156013 () Bool)

(assert (=> bm!58114 m!1156013))

(assert (=> bm!58115 m!1155857))

(assert (=> b!936681 d!281952))

(declare-fun b!936944 () Bool)

(declare-fun res!425497 () Bool)

(declare-fun e!608307 () Bool)

(assert (=> b!936944 (=> (not res!425497) (not e!608307))))

(declare-fun tail!1262 (List!9798) List!9798)

(assert (=> b!936944 (= res!425497 (isEmpty!6017 (tail!1262 s!10566)))))

(declare-fun b!936945 () Bool)

(declare-fun e!608308 () Bool)

(declare-fun derivativeStep!547 (Regex!2568 C!5706) Regex!2568)

(declare-fun head!1700 (List!9798) C!5706)

(assert (=> b!936945 (= e!608308 (matchR!1106 (derivativeStep!547 r!15766 (head!1700 s!10566)) (tail!1262 s!10566)))))

(declare-fun b!936946 () Bool)

(declare-fun e!608311 () Bool)

(declare-fun lt!341552 () Bool)

(assert (=> b!936946 (= e!608311 (not lt!341552))))

(declare-fun bm!58118 () Bool)

(declare-fun call!58123 () Bool)

(assert (=> bm!58118 (= call!58123 (isEmpty!6017 s!10566))))

(declare-fun b!936947 () Bool)

(assert (=> b!936947 (= e!608307 (= (head!1700 s!10566) (c!152325 r!15766)))))

(declare-fun d!281954 () Bool)

(declare-fun e!608310 () Bool)

(assert (=> d!281954 e!608310))

(declare-fun c!152380 () Bool)

(assert (=> d!281954 (= c!152380 (is-EmptyExpr!2568 r!15766))))

(assert (=> d!281954 (= lt!341552 e!608308)))

(declare-fun c!152378 () Bool)

(assert (=> d!281954 (= c!152378 (isEmpty!6017 s!10566))))

(assert (=> d!281954 (validRegex!1037 r!15766)))

(assert (=> d!281954 (= (matchR!1106 r!15766 s!10566) lt!341552)))

(declare-fun b!936948 () Bool)

(declare-fun e!608305 () Bool)

(declare-fun e!608306 () Bool)

(assert (=> b!936948 (= e!608305 e!608306)))

(declare-fun res!425498 () Bool)

(assert (=> b!936948 (=> (not res!425498) (not e!608306))))

(assert (=> b!936948 (= res!425498 (not lt!341552))))

(declare-fun b!936949 () Bool)

(assert (=> b!936949 (= e!608310 (= lt!341552 call!58123))))

(declare-fun b!936950 () Bool)

(assert (=> b!936950 (= e!608310 e!608311)))

(declare-fun c!152379 () Bool)

(assert (=> b!936950 (= c!152379 (is-EmptyLang!2568 r!15766))))

(declare-fun b!936951 () Bool)

(declare-fun res!425499 () Bool)

(assert (=> b!936951 (=> (not res!425499) (not e!608307))))

(assert (=> b!936951 (= res!425499 (not call!58123))))

(declare-fun b!936952 () Bool)

(declare-fun e!608309 () Bool)

(assert (=> b!936952 (= e!608309 (not (= (head!1700 s!10566) (c!152325 r!15766))))))

(declare-fun b!936953 () Bool)

(assert (=> b!936953 (= e!608308 (nullable!738 r!15766))))

(declare-fun b!936954 () Bool)

(assert (=> b!936954 (= e!608306 e!608309)))

(declare-fun res!425502 () Bool)

(assert (=> b!936954 (=> res!425502 e!608309)))

(assert (=> b!936954 (= res!425502 call!58123)))

(declare-fun b!936955 () Bool)

(declare-fun res!425504 () Bool)

(assert (=> b!936955 (=> res!425504 e!608309)))

(assert (=> b!936955 (= res!425504 (not (isEmpty!6017 (tail!1262 s!10566))))))

(declare-fun b!936956 () Bool)

(declare-fun res!425501 () Bool)

(assert (=> b!936956 (=> res!425501 e!608305)))

(assert (=> b!936956 (= res!425501 e!608307)))

(declare-fun res!425503 () Bool)

(assert (=> b!936956 (=> (not res!425503) (not e!608307))))

(assert (=> b!936956 (= res!425503 lt!341552)))

(declare-fun b!936957 () Bool)

(declare-fun res!425500 () Bool)

(assert (=> b!936957 (=> res!425500 e!608305)))

(assert (=> b!936957 (= res!425500 (not (is-ElementMatch!2568 r!15766)))))

(assert (=> b!936957 (= e!608311 e!608305)))

(assert (= (and d!281954 c!152378) b!936953))

(assert (= (and d!281954 (not c!152378)) b!936945))

(assert (= (and d!281954 c!152380) b!936949))

(assert (= (and d!281954 (not c!152380)) b!936950))

(assert (= (and b!936950 c!152379) b!936946))

(assert (= (and b!936950 (not c!152379)) b!936957))

(assert (= (and b!936957 (not res!425500)) b!936956))

(assert (= (and b!936956 res!425503) b!936951))

(assert (= (and b!936951 res!425499) b!936944))

(assert (= (and b!936944 res!425497) b!936947))

(assert (= (and b!936956 (not res!425501)) b!936948))

(assert (= (and b!936948 res!425498) b!936954))

(assert (= (and b!936954 (not res!425502)) b!936955))

(assert (= (and b!936955 (not res!425504)) b!936952))

(assert (= (or b!936949 b!936951 b!936954) bm!58118))

(declare-fun m!1156015 () Bool)

(assert (=> b!936952 m!1156015))

(declare-fun m!1156017 () Bool)

(assert (=> b!936955 m!1156017))

(assert (=> b!936955 m!1156017))

(declare-fun m!1156019 () Bool)

(assert (=> b!936955 m!1156019))

(assert (=> b!936945 m!1156015))

(assert (=> b!936945 m!1156015))

(declare-fun m!1156021 () Bool)

(assert (=> b!936945 m!1156021))

(assert (=> b!936945 m!1156017))

(assert (=> b!936945 m!1156021))

(assert (=> b!936945 m!1156017))

(declare-fun m!1156023 () Bool)

(assert (=> b!936945 m!1156023))

(assert (=> bm!58118 m!1155857))

(assert (=> b!936944 m!1156017))

(assert (=> b!936944 m!1156017))

(assert (=> b!936944 m!1156019))

(assert (=> b!936947 m!1156015))

(assert (=> b!936953 m!1156007))

(assert (=> d!281954 m!1155857))

(assert (=> d!281954 m!1155885))

(assert (=> b!936681 d!281954))

(declare-fun d!281956 () Bool)

(assert (=> d!281956 (= (matchR!1106 r!15766 s!10566) (matchRSpec!369 r!15766 s!10566))))

(declare-fun lt!341553 () Unit!14755)

(assert (=> d!281956 (= lt!341553 (choose!5774 r!15766 s!10566))))

(assert (=> d!281956 (validRegex!1037 r!15766)))

(assert (=> d!281956 (= (mainMatchTheorem!369 r!15766 s!10566) lt!341553)))

(declare-fun bs!238062 () Bool)

(assert (= bs!238062 d!281956))

(assert (=> bs!238062 m!1155843))

(assert (=> bs!238062 m!1155841))

(declare-fun m!1156025 () Bool)

(assert (=> bs!238062 m!1156025))

(assert (=> bs!238062 m!1155885))

(assert (=> b!936681 d!281956))

(declare-fun d!281958 () Bool)

(assert (=> d!281958 (= (Exists!319 lambda!31199) (choose!5773 lambda!31199))))

(declare-fun bs!238063 () Bool)

(assert (= bs!238063 d!281958))

(declare-fun m!1156027 () Bool)

(assert (=> bs!238063 m!1156027))

(assert (=> b!936680 d!281958))

(declare-fun d!281960 () Bool)

(assert (=> d!281960 (= (Exists!319 lambda!31200) (choose!5773 lambda!31200))))

(declare-fun bs!238064 () Bool)

(assert (= bs!238064 d!281960))

(declare-fun m!1156029 () Bool)

(assert (=> bs!238064 m!1156029))

(assert (=> b!936680 d!281960))

(declare-fun b!936958 () Bool)

(declare-fun res!425505 () Bool)

(declare-fun e!608314 () Bool)

(assert (=> b!936958 (=> (not res!425505) (not e!608314))))

(assert (=> b!936958 (= res!425505 (isEmpty!6017 (tail!1262 s!10566)))))

(declare-fun b!936959 () Bool)

(declare-fun e!608315 () Bool)

(assert (=> b!936959 (= e!608315 (matchR!1106 (derivativeStep!547 lt!341489 (head!1700 s!10566)) (tail!1262 s!10566)))))

(declare-fun b!936960 () Bool)

(declare-fun e!608318 () Bool)

(declare-fun lt!341554 () Bool)

(assert (=> b!936960 (= e!608318 (not lt!341554))))

(declare-fun bm!58119 () Bool)

(declare-fun call!58124 () Bool)

(assert (=> bm!58119 (= call!58124 (isEmpty!6017 s!10566))))

(declare-fun b!936961 () Bool)

(assert (=> b!936961 (= e!608314 (= (head!1700 s!10566) (c!152325 lt!341489)))))

(declare-fun d!281962 () Bool)

(declare-fun e!608317 () Bool)

(assert (=> d!281962 e!608317))

(declare-fun c!152383 () Bool)

(assert (=> d!281962 (= c!152383 (is-EmptyExpr!2568 lt!341489))))

(assert (=> d!281962 (= lt!341554 e!608315)))

(declare-fun c!152381 () Bool)

(assert (=> d!281962 (= c!152381 (isEmpty!6017 s!10566))))

(assert (=> d!281962 (validRegex!1037 lt!341489)))

(assert (=> d!281962 (= (matchR!1106 lt!341489 s!10566) lt!341554)))

(declare-fun b!936962 () Bool)

(declare-fun e!608312 () Bool)

(declare-fun e!608313 () Bool)

(assert (=> b!936962 (= e!608312 e!608313)))

(declare-fun res!425506 () Bool)

(assert (=> b!936962 (=> (not res!425506) (not e!608313))))

(assert (=> b!936962 (= res!425506 (not lt!341554))))

(declare-fun b!936963 () Bool)

(assert (=> b!936963 (= e!608317 (= lt!341554 call!58124))))

(declare-fun b!936964 () Bool)

(assert (=> b!936964 (= e!608317 e!608318)))

(declare-fun c!152382 () Bool)

(assert (=> b!936964 (= c!152382 (is-EmptyLang!2568 lt!341489))))

(declare-fun b!936965 () Bool)

(declare-fun res!425507 () Bool)

(assert (=> b!936965 (=> (not res!425507) (not e!608314))))

(assert (=> b!936965 (= res!425507 (not call!58124))))

(declare-fun b!936966 () Bool)

(declare-fun e!608316 () Bool)

(assert (=> b!936966 (= e!608316 (not (= (head!1700 s!10566) (c!152325 lt!341489))))))

(declare-fun b!936967 () Bool)

(assert (=> b!936967 (= e!608315 (nullable!738 lt!341489))))

(declare-fun b!936968 () Bool)

(assert (=> b!936968 (= e!608313 e!608316)))

(declare-fun res!425510 () Bool)

(assert (=> b!936968 (=> res!425510 e!608316)))

(assert (=> b!936968 (= res!425510 call!58124)))

(declare-fun b!936969 () Bool)

(declare-fun res!425512 () Bool)

(assert (=> b!936969 (=> res!425512 e!608316)))

(assert (=> b!936969 (= res!425512 (not (isEmpty!6017 (tail!1262 s!10566))))))

(declare-fun b!936970 () Bool)

(declare-fun res!425509 () Bool)

(assert (=> b!936970 (=> res!425509 e!608312)))

(assert (=> b!936970 (= res!425509 e!608314)))

(declare-fun res!425511 () Bool)

(assert (=> b!936970 (=> (not res!425511) (not e!608314))))

(assert (=> b!936970 (= res!425511 lt!341554)))

(declare-fun b!936971 () Bool)

(declare-fun res!425508 () Bool)

(assert (=> b!936971 (=> res!425508 e!608312)))

(assert (=> b!936971 (= res!425508 (not (is-ElementMatch!2568 lt!341489)))))

(assert (=> b!936971 (= e!608318 e!608312)))

(assert (= (and d!281962 c!152381) b!936967))

(assert (= (and d!281962 (not c!152381)) b!936959))

(assert (= (and d!281962 c!152383) b!936963))

(assert (= (and d!281962 (not c!152383)) b!936964))

(assert (= (and b!936964 c!152382) b!936960))

(assert (= (and b!936964 (not c!152382)) b!936971))

(assert (= (and b!936971 (not res!425508)) b!936970))

(assert (= (and b!936970 res!425511) b!936965))

(assert (= (and b!936965 res!425507) b!936958))

(assert (= (and b!936958 res!425505) b!936961))

(assert (= (and b!936970 (not res!425509)) b!936962))

(assert (= (and b!936962 res!425506) b!936968))

(assert (= (and b!936968 (not res!425510)) b!936969))

(assert (= (and b!936969 (not res!425512)) b!936966))

(assert (= (or b!936963 b!936965 b!936968) bm!58119))

(assert (=> b!936966 m!1156015))

(assert (=> b!936969 m!1156017))

(assert (=> b!936969 m!1156017))

(assert (=> b!936969 m!1156019))

(assert (=> b!936959 m!1156015))

(assert (=> b!936959 m!1156015))

(declare-fun m!1156031 () Bool)

(assert (=> b!936959 m!1156031))

(assert (=> b!936959 m!1156017))

(assert (=> b!936959 m!1156031))

(assert (=> b!936959 m!1156017))

(declare-fun m!1156033 () Bool)

(assert (=> b!936959 m!1156033))

(assert (=> bm!58119 m!1155857))

(assert (=> b!936958 m!1156017))

(assert (=> b!936958 m!1156017))

(assert (=> b!936958 m!1156019))

(assert (=> b!936961 m!1156015))

(declare-fun m!1156035 () Bool)

(assert (=> b!936967 m!1156035))

(assert (=> d!281962 m!1155857))

(assert (=> d!281962 m!1155969))

(assert (=> b!936680 d!281962))

(declare-fun bs!238065 () Bool)

(declare-fun d!281964 () Bool)

(assert (= bs!238065 (and d!281964 b!936909)))

(declare-fun lambda!31239 () Int)

(assert (=> bs!238065 (not (= lambda!31239 lambda!31237))))

(declare-fun bs!238066 () Bool)

(assert (= bs!238066 (and d!281964 b!936680)))

(assert (=> bs!238066 (not (= lambda!31239 lambda!31200))))

(declare-fun bs!238067 () Bool)

(assert (= bs!238067 (and d!281964 d!281942)))

(assert (=> bs!238067 (= (and (= (reg!2897 r!15766) lt!341491) (= (Star!2568 (reg!2897 r!15766)) lt!341489)) (= lambda!31239 lambda!31233))))

(declare-fun bs!238068 () Bool)

(assert (= bs!238068 (and d!281964 d!281938)))

(assert (=> bs!238068 (= (and (= (reg!2897 r!15766) lt!341491) (= (Star!2568 (reg!2897 r!15766)) (Star!2568 lt!341491))) (= lambda!31239 lambda!31229))))

(declare-fun bs!238069 () Bool)

(assert (= bs!238069 (and d!281964 b!936678)))

(assert (=> bs!238069 (= (and (= (reg!2897 r!15766) lt!341491) (= (Star!2568 (reg!2897 r!15766)) lt!341489)) (= lambda!31239 lambda!31201))))

(declare-fun bs!238070 () Bool)

(assert (= bs!238070 (and d!281964 b!936815)))

(assert (=> bs!238070 (not (= lambda!31239 lambda!31224))))

(declare-fun bs!238071 () Bool)

(assert (= bs!238071 (and d!281964 b!936811)))

(assert (=> bs!238071 (not (= lambda!31239 lambda!31223))))

(assert (=> bs!238068 (not (= lambda!31239 lambda!31230))))

(assert (=> bs!238069 (not (= lambda!31239 lambda!31202))))

(assert (=> bs!238066 (= (= (Star!2568 (reg!2897 r!15766)) lt!341487) (= lambda!31239 lambda!31199))))

(declare-fun bs!238072 () Bool)

(assert (= bs!238072 (and d!281964 b!936913)))

(assert (=> bs!238072 (not (= lambda!31239 lambda!31238))))

(assert (=> d!281964 true))

(assert (=> d!281964 true))

(declare-fun lambda!31240 () Int)

(assert (=> bs!238065 (= (= (Star!2568 (reg!2897 r!15766)) r!15766) (= lambda!31240 lambda!31237))))

(assert (=> bs!238066 (= (= (Star!2568 (reg!2897 r!15766)) lt!341487) (= lambda!31240 lambda!31200))))

(assert (=> bs!238067 (not (= lambda!31240 lambda!31233))))

(assert (=> bs!238068 (not (= lambda!31240 lambda!31229))))

(assert (=> bs!238069 (not (= lambda!31240 lambda!31201))))

(declare-fun bs!238073 () Bool)

(assert (= bs!238073 d!281964))

(assert (=> bs!238073 (not (= lambda!31240 lambda!31239))))

(assert (=> bs!238070 (not (= lambda!31240 lambda!31224))))

(assert (=> bs!238071 (= (and (= (reg!2897 r!15766) (reg!2897 lt!341489)) (= (Star!2568 (reg!2897 r!15766)) lt!341489)) (= lambda!31240 lambda!31223))))

(assert (=> bs!238068 (= (and (= (reg!2897 r!15766) lt!341491) (= (Star!2568 (reg!2897 r!15766)) (Star!2568 lt!341491))) (= lambda!31240 lambda!31230))))

(assert (=> bs!238069 (= (and (= (reg!2897 r!15766) lt!341491) (= (Star!2568 (reg!2897 r!15766)) lt!341489)) (= lambda!31240 lambda!31202))))

(assert (=> bs!238066 (not (= lambda!31240 lambda!31199))))

(assert (=> bs!238072 (not (= lambda!31240 lambda!31238))))

(assert (=> d!281964 true))

(assert (=> d!281964 true))

(assert (=> d!281964 (= (Exists!319 lambda!31239) (Exists!319 lambda!31240))))

(declare-fun lt!341555 () Unit!14755)

(assert (=> d!281964 (= lt!341555 (choose!5775 (reg!2897 r!15766) s!10566))))

(assert (=> d!281964 (validRegex!1037 (reg!2897 r!15766))))

(assert (=> d!281964 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!63 (reg!2897 r!15766) s!10566) lt!341555)))

(declare-fun m!1156037 () Bool)

(assert (=> bs!238073 m!1156037))

(declare-fun m!1156039 () Bool)

(assert (=> bs!238073 m!1156039))

(declare-fun m!1156041 () Bool)

(assert (=> bs!238073 m!1156041))

(declare-fun m!1156043 () Bool)

(assert (=> bs!238073 m!1156043))

(assert (=> b!936680 d!281964))

(declare-fun b!936990 () Bool)

(declare-fun e!608334 () Regex!2568)

(declare-fun call!58125 () Regex!2568)

(assert (=> b!936990 (= e!608334 call!58125)))

(declare-fun call!58126 () Regex!2568)

(declare-fun c!152392 () Bool)

(declare-fun c!152391 () Bool)

(declare-fun bm!58121 () Bool)

(assert (=> bm!58121 (= call!58126 (removeUselessConcat!237 (ite c!152392 (regTwo!5648 (reg!2897 r!15766)) (ite c!152391 (regOne!5648 (reg!2897 r!15766)) (regOne!5649 (reg!2897 r!15766))))))))

(declare-fun bm!58122 () Bool)

(declare-fun call!58129 () Regex!2568)

(assert (=> bm!58122 (= call!58129 call!58125)))

(declare-fun b!936991 () Bool)

(declare-fun e!608329 () Regex!2568)

(declare-fun call!58127 () Regex!2568)

(assert (=> b!936991 (= e!608329 (Star!2568 call!58127))))

(declare-fun b!936992 () Bool)

(declare-fun e!608333 () Regex!2568)

(assert (=> b!936992 (= e!608333 e!608334)))

(declare-fun c!152389 () Bool)

(assert (=> b!936992 (= c!152389 (and (is-Concat!4401 (reg!2897 r!15766)) (is-EmptyExpr!2568 (regTwo!5648 (reg!2897 r!15766)))))))

(declare-fun bm!58123 () Bool)

(assert (=> bm!58123 (= call!58127 call!58129)))

(declare-fun b!936993 () Bool)

(assert (=> b!936993 (= e!608329 (reg!2897 r!15766))))

(declare-fun b!936994 () Bool)

(declare-fun c!152388 () Bool)

(assert (=> b!936994 (= c!152388 (is-Star!2568 (reg!2897 r!15766)))))

(declare-fun e!608332 () Regex!2568)

(assert (=> b!936994 (= e!608332 e!608329)))

(declare-fun b!936995 () Bool)

(assert (=> b!936995 (= c!152391 (is-Concat!4401 (reg!2897 r!15766)))))

(declare-fun e!608330 () Regex!2568)

(assert (=> b!936995 (= e!608334 e!608330)))

(declare-fun b!936996 () Bool)

(assert (=> b!936996 (= e!608333 call!58126)))

(declare-fun b!936997 () Bool)

(declare-fun call!58128 () Regex!2568)

(assert (=> b!936997 (= e!608332 (Union!2568 call!58128 call!58127))))

(declare-fun b!936998 () Bool)

(assert (=> b!936998 (= e!608330 (Concat!4401 call!58128 call!58129))))

(declare-fun bm!58124 () Bool)

(assert (=> bm!58124 (= call!58128 call!58126)))

(declare-fun c!152390 () Bool)

(declare-fun bm!58120 () Bool)

(assert (=> bm!58120 (= call!58125 (removeUselessConcat!237 (ite c!152389 (regOne!5648 (reg!2897 r!15766)) (ite c!152391 (regTwo!5648 (reg!2897 r!15766)) (ite c!152390 (regTwo!5649 (reg!2897 r!15766)) (reg!2897 (reg!2897 r!15766)))))))))

(declare-fun d!281966 () Bool)

(declare-fun e!608331 () Bool)

(assert (=> d!281966 e!608331))

(declare-fun res!425523 () Bool)

(assert (=> d!281966 (=> (not res!425523) (not e!608331))))

(declare-fun lt!341562 () Regex!2568)

(assert (=> d!281966 (= res!425523 (validRegex!1037 lt!341562))))

(assert (=> d!281966 (= lt!341562 e!608333)))

(assert (=> d!281966 (= c!152392 (and (is-Concat!4401 (reg!2897 r!15766)) (is-EmptyExpr!2568 (regOne!5648 (reg!2897 r!15766)))))))

(assert (=> d!281966 (validRegex!1037 (reg!2897 r!15766))))

(assert (=> d!281966 (= (removeUselessConcat!237 (reg!2897 r!15766)) lt!341562)))

(declare-fun b!936999 () Bool)

(assert (=> b!936999 (= e!608330 e!608332)))

(assert (=> b!936999 (= c!152390 (is-Union!2568 (reg!2897 r!15766)))))

(declare-fun b!937000 () Bool)

(assert (=> b!937000 (= e!608331 (= (nullable!738 lt!341562) (nullable!738 (reg!2897 r!15766))))))

(assert (= (and d!281966 c!152392) b!936996))

(assert (= (and d!281966 (not c!152392)) b!936992))

(assert (= (and b!936992 c!152389) b!936990))

(assert (= (and b!936992 (not c!152389)) b!936995))

(assert (= (and b!936995 c!152391) b!936998))

(assert (= (and b!936995 (not c!152391)) b!936999))

(assert (= (and b!936999 c!152390) b!936997))

(assert (= (and b!936999 (not c!152390)) b!936994))

(assert (= (and b!936994 c!152388) b!936991))

(assert (= (and b!936994 (not c!152388)) b!936993))

(assert (= (or b!936997 b!936991) bm!58123))

(assert (= (or b!936998 bm!58123) bm!58122))

(assert (= (or b!936998 b!936997) bm!58124))

(assert (= (or b!936990 bm!58122) bm!58120))

(assert (= (or b!936996 bm!58124) bm!58121))

(assert (= (and d!281966 res!425523) b!937000))

(declare-fun m!1156045 () Bool)

(assert (=> bm!58121 m!1156045))

(declare-fun m!1156047 () Bool)

(assert (=> bm!58120 m!1156047))

(declare-fun m!1156049 () Bool)

(assert (=> d!281966 m!1156049))

(assert (=> d!281966 m!1156043))

(declare-fun m!1156051 () Bool)

(assert (=> b!937000 m!1156051))

(assert (=> b!937000 m!1155983))

(assert (=> b!936680 d!281966))

(declare-fun bs!238074 () Bool)

(declare-fun d!281968 () Bool)

(assert (= bs!238074 (and d!281968 b!936909)))

(declare-fun lambda!31241 () Int)

(assert (=> bs!238074 (not (= lambda!31241 lambda!31237))))

(declare-fun bs!238075 () Bool)

(assert (= bs!238075 (and d!281968 b!936680)))

(assert (=> bs!238075 (not (= lambda!31241 lambda!31200))))

(declare-fun bs!238076 () Bool)

(assert (= bs!238076 (and d!281968 d!281942)))

(assert (=> bs!238076 (= (and (= (reg!2897 r!15766) lt!341491) (= lt!341487 lt!341489)) (= lambda!31241 lambda!31233))))

(declare-fun bs!238077 () Bool)

(assert (= bs!238077 (and d!281968 d!281938)))

(assert (=> bs!238077 (= (and (= (reg!2897 r!15766) lt!341491) (= lt!341487 (Star!2568 lt!341491))) (= lambda!31241 lambda!31229))))

(declare-fun bs!238078 () Bool)

(assert (= bs!238078 (and d!281968 b!936678)))

(assert (=> bs!238078 (= (and (= (reg!2897 r!15766) lt!341491) (= lt!341487 lt!341489)) (= lambda!31241 lambda!31201))))

(declare-fun bs!238079 () Bool)

(assert (= bs!238079 (and d!281968 d!281964)))

(assert (=> bs!238079 (= (= lt!341487 (Star!2568 (reg!2897 r!15766))) (= lambda!31241 lambda!31239))))

(declare-fun bs!238080 () Bool)

(assert (= bs!238080 (and d!281968 b!936815)))

(assert (=> bs!238080 (not (= lambda!31241 lambda!31224))))

(declare-fun bs!238081 () Bool)

(assert (= bs!238081 (and d!281968 b!936811)))

(assert (=> bs!238081 (not (= lambda!31241 lambda!31223))))

(assert (=> bs!238077 (not (= lambda!31241 lambda!31230))))

(assert (=> bs!238079 (not (= lambda!31241 lambda!31240))))

(assert (=> bs!238078 (not (= lambda!31241 lambda!31202))))

(assert (=> bs!238075 (= lambda!31241 lambda!31199)))

(declare-fun bs!238082 () Bool)

(assert (= bs!238082 (and d!281968 b!936913)))

(assert (=> bs!238082 (not (= lambda!31241 lambda!31238))))

(assert (=> d!281968 true))

(assert (=> d!281968 true))

(assert (=> d!281968 true))

(assert (=> d!281968 (= (isDefined!1801 (findConcatSeparation!265 (reg!2897 r!15766) lt!341487 Nil!9782 s!10566 s!10566)) (Exists!319 lambda!31241))))

(declare-fun lt!341563 () Unit!14755)

(assert (=> d!281968 (= lt!341563 (choose!5776 (reg!2897 r!15766) lt!341487 s!10566))))

(assert (=> d!281968 (validRegex!1037 (reg!2897 r!15766))))

(assert (=> d!281968 (= (lemmaFindConcatSeparationEquivalentToExists!265 (reg!2897 r!15766) lt!341487 s!10566) lt!341563)))

(declare-fun bs!238083 () Bool)

(assert (= bs!238083 d!281968))

(assert (=> bs!238083 m!1155875))

(assert (=> bs!238083 m!1155883))

(declare-fun m!1156053 () Bool)

(assert (=> bs!238083 m!1156053))

(assert (=> bs!238083 m!1155875))

(assert (=> bs!238083 m!1156043))

(declare-fun m!1156055 () Bool)

(assert (=> bs!238083 m!1156055))

(assert (=> b!936680 d!281968))

(declare-fun d!281970 () Bool)

(assert (=> d!281970 (= (isDefined!1801 (findConcatSeparation!265 (reg!2897 r!15766) lt!341487 Nil!9782 s!10566 s!10566)) (not (isEmpty!6019 (findConcatSeparation!265 (reg!2897 r!15766) lt!341487 Nil!9782 s!10566 s!10566))))))

(declare-fun bs!238084 () Bool)

(assert (= bs!238084 d!281970))

(assert (=> bs!238084 m!1155875))

(declare-fun m!1156057 () Bool)

(assert (=> bs!238084 m!1156057))

(assert (=> b!936680 d!281970))

(declare-fun b!937001 () Bool)

(declare-fun res!425526 () Bool)

(declare-fun e!608336 () Bool)

(assert (=> b!937001 (=> (not res!425526) (not e!608336))))

(declare-fun lt!341564 () Option!2159)

(assert (=> b!937001 (= res!425526 (matchR!1106 lt!341487 (_2!6343 (get!3234 lt!341564))))))

(declare-fun b!937002 () Bool)

(declare-fun lt!341565 () Unit!14755)

(declare-fun lt!341566 () Unit!14755)

(assert (=> b!937002 (= lt!341565 lt!341566)))

(assert (=> b!937002 (= (++!2590 (++!2590 Nil!9782 (Cons!9782 (h!15183 s!10566) Nil!9782)) (t!100844 s!10566)) s!10566)))

(assert (=> b!937002 (= lt!341566 (lemmaMoveElementToOtherListKeepsConcatEq!203 Nil!9782 (h!15183 s!10566) (t!100844 s!10566) s!10566))))

(declare-fun e!608335 () Option!2159)

(assert (=> b!937002 (= e!608335 (findConcatSeparation!265 (reg!2897 r!15766) lt!341487 (++!2590 Nil!9782 (Cons!9782 (h!15183 s!10566) Nil!9782)) (t!100844 s!10566) s!10566))))

(declare-fun b!937004 () Bool)

(assert (=> b!937004 (= e!608335 None!2158)))

(declare-fun b!937005 () Bool)

(declare-fun e!608337 () Bool)

(assert (=> b!937005 (= e!608337 (matchR!1106 lt!341487 s!10566))))

(declare-fun b!937006 () Bool)

(declare-fun e!608339 () Option!2159)

(assert (=> b!937006 (= e!608339 e!608335)))

(declare-fun c!152394 () Bool)

(assert (=> b!937006 (= c!152394 (is-Nil!9782 s!10566))))

(declare-fun b!937007 () Bool)

(assert (=> b!937007 (= e!608339 (Some!2158 (tuple2!11035 Nil!9782 s!10566)))))

(declare-fun b!937008 () Bool)

(assert (=> b!937008 (= e!608336 (= (++!2590 (_1!6343 (get!3234 lt!341564)) (_2!6343 (get!3234 lt!341564))) s!10566))))

(declare-fun b!937009 () Bool)

(declare-fun e!608338 () Bool)

(assert (=> b!937009 (= e!608338 (not (isDefined!1801 lt!341564)))))

(declare-fun b!937003 () Bool)

(declare-fun res!425524 () Bool)

(assert (=> b!937003 (=> (not res!425524) (not e!608336))))

(assert (=> b!937003 (= res!425524 (matchR!1106 (reg!2897 r!15766) (_1!6343 (get!3234 lt!341564))))))

(declare-fun d!281972 () Bool)

(assert (=> d!281972 e!608338))

(declare-fun res!425527 () Bool)

(assert (=> d!281972 (=> res!425527 e!608338)))

(assert (=> d!281972 (= res!425527 e!608336)))

(declare-fun res!425525 () Bool)

(assert (=> d!281972 (=> (not res!425525) (not e!608336))))

(assert (=> d!281972 (= res!425525 (isDefined!1801 lt!341564))))

(assert (=> d!281972 (= lt!341564 e!608339)))

(declare-fun c!152393 () Bool)

(assert (=> d!281972 (= c!152393 e!608337)))

(declare-fun res!425528 () Bool)

(assert (=> d!281972 (=> (not res!425528) (not e!608337))))

(assert (=> d!281972 (= res!425528 (matchR!1106 (reg!2897 r!15766) Nil!9782))))

(assert (=> d!281972 (validRegex!1037 (reg!2897 r!15766))))

(assert (=> d!281972 (= (findConcatSeparation!265 (reg!2897 r!15766) lt!341487 Nil!9782 s!10566 s!10566) lt!341564)))

(assert (= (and d!281972 res!425528) b!937005))

(assert (= (and d!281972 c!152393) b!937007))

(assert (= (and d!281972 (not c!152393)) b!937006))

(assert (= (and b!937006 c!152394) b!937004))

(assert (= (and b!937006 (not c!152394)) b!937002))

(assert (= (and d!281972 res!425525) b!937003))

(assert (= (and b!937003 res!425524) b!937001))

(assert (= (and b!937001 res!425526) b!937008))

(assert (= (and d!281972 (not res!425527)) b!937009))

(assert (=> b!937002 m!1155937))

(assert (=> b!937002 m!1155937))

(assert (=> b!937002 m!1155939))

(assert (=> b!937002 m!1155941))

(assert (=> b!937002 m!1155937))

(declare-fun m!1156059 () Bool)

(assert (=> b!937002 m!1156059))

(declare-fun m!1156061 () Bool)

(assert (=> d!281972 m!1156061))

(declare-fun m!1156063 () Bool)

(assert (=> d!281972 m!1156063))

(assert (=> d!281972 m!1156043))

(declare-fun m!1156065 () Bool)

(assert (=> b!937008 m!1156065))

(declare-fun m!1156067 () Bool)

(assert (=> b!937008 m!1156067))

(declare-fun m!1156069 () Bool)

(assert (=> b!937005 m!1156069))

(assert (=> b!937009 m!1156061))

(assert (=> b!937001 m!1156065))

(declare-fun m!1156071 () Bool)

(assert (=> b!937001 m!1156071))

(assert (=> b!937003 m!1156065))

(declare-fun m!1156073 () Bool)

(assert (=> b!937003 m!1156073))

(assert (=> b!936680 d!281972))

(declare-fun e!608342 () Bool)

(assert (=> b!936683 (= tp!290436 e!608342)))

(declare-fun b!937021 () Bool)

(declare-fun tp!290469 () Bool)

(declare-fun tp!290471 () Bool)

(assert (=> b!937021 (= e!608342 (and tp!290469 tp!290471))))

(declare-fun b!937023 () Bool)

(declare-fun tp!290470 () Bool)

(declare-fun tp!290468 () Bool)

(assert (=> b!937023 (= e!608342 (and tp!290470 tp!290468))))

(declare-fun b!937022 () Bool)

(declare-fun tp!290467 () Bool)

(assert (=> b!937022 (= e!608342 tp!290467)))

(declare-fun b!937020 () Bool)

(assert (=> b!937020 (= e!608342 tp_is_empty!4779)))

(assert (= (and b!936683 (is-ElementMatch!2568 (regOne!5649 r!15766))) b!937020))

(assert (= (and b!936683 (is-Concat!4401 (regOne!5649 r!15766))) b!937021))

(assert (= (and b!936683 (is-Star!2568 (regOne!5649 r!15766))) b!937022))

(assert (= (and b!936683 (is-Union!2568 (regOne!5649 r!15766))) b!937023))

(declare-fun e!608343 () Bool)

(assert (=> b!936683 (= tp!290434 e!608343)))

(declare-fun b!937025 () Bool)

(declare-fun tp!290474 () Bool)

(declare-fun tp!290476 () Bool)

(assert (=> b!937025 (= e!608343 (and tp!290474 tp!290476))))

(declare-fun b!937027 () Bool)

(declare-fun tp!290475 () Bool)

(declare-fun tp!290473 () Bool)

(assert (=> b!937027 (= e!608343 (and tp!290475 tp!290473))))

(declare-fun b!937026 () Bool)

(declare-fun tp!290472 () Bool)

(assert (=> b!937026 (= e!608343 tp!290472)))

(declare-fun b!937024 () Bool)

(assert (=> b!937024 (= e!608343 tp_is_empty!4779)))

(assert (= (and b!936683 (is-ElementMatch!2568 (regTwo!5649 r!15766))) b!937024))

(assert (= (and b!936683 (is-Concat!4401 (regTwo!5649 r!15766))) b!937025))

(assert (= (and b!936683 (is-Star!2568 (regTwo!5649 r!15766))) b!937026))

(assert (= (and b!936683 (is-Union!2568 (regTwo!5649 r!15766))) b!937027))

(declare-fun e!608344 () Bool)

(assert (=> b!936677 (= tp!290433 e!608344)))

(declare-fun b!937029 () Bool)

(declare-fun tp!290479 () Bool)

(declare-fun tp!290481 () Bool)

(assert (=> b!937029 (= e!608344 (and tp!290479 tp!290481))))

(declare-fun b!937031 () Bool)

(declare-fun tp!290480 () Bool)

(declare-fun tp!290478 () Bool)

(assert (=> b!937031 (= e!608344 (and tp!290480 tp!290478))))

(declare-fun b!937030 () Bool)

(declare-fun tp!290477 () Bool)

(assert (=> b!937030 (= e!608344 tp!290477)))

(declare-fun b!937028 () Bool)

(assert (=> b!937028 (= e!608344 tp_is_empty!4779)))

(assert (= (and b!936677 (is-ElementMatch!2568 (reg!2897 r!15766))) b!937028))

(assert (= (and b!936677 (is-Concat!4401 (reg!2897 r!15766))) b!937029))

(assert (= (and b!936677 (is-Star!2568 (reg!2897 r!15766))) b!937030))

(assert (= (and b!936677 (is-Union!2568 (reg!2897 r!15766))) b!937031))

(declare-fun e!608345 () Bool)

(assert (=> b!936684 (= tp!290438 e!608345)))

(declare-fun b!937033 () Bool)

(declare-fun tp!290484 () Bool)

(declare-fun tp!290486 () Bool)

(assert (=> b!937033 (= e!608345 (and tp!290484 tp!290486))))

(declare-fun b!937035 () Bool)

(declare-fun tp!290485 () Bool)

(declare-fun tp!290483 () Bool)

(assert (=> b!937035 (= e!608345 (and tp!290485 tp!290483))))

(declare-fun b!937034 () Bool)

(declare-fun tp!290482 () Bool)

(assert (=> b!937034 (= e!608345 tp!290482)))

(declare-fun b!937032 () Bool)

(assert (=> b!937032 (= e!608345 tp_is_empty!4779)))

(assert (= (and b!936684 (is-ElementMatch!2568 (regOne!5648 r!15766))) b!937032))

(assert (= (and b!936684 (is-Concat!4401 (regOne!5648 r!15766))) b!937033))

(assert (= (and b!936684 (is-Star!2568 (regOne!5648 r!15766))) b!937034))

(assert (= (and b!936684 (is-Union!2568 (regOne!5648 r!15766))) b!937035))

(declare-fun e!608346 () Bool)

(assert (=> b!936684 (= tp!290435 e!608346)))

(declare-fun b!937037 () Bool)

(declare-fun tp!290489 () Bool)

(declare-fun tp!290491 () Bool)

(assert (=> b!937037 (= e!608346 (and tp!290489 tp!290491))))

(declare-fun b!937039 () Bool)

(declare-fun tp!290490 () Bool)

(declare-fun tp!290488 () Bool)

(assert (=> b!937039 (= e!608346 (and tp!290490 tp!290488))))

(declare-fun b!937038 () Bool)

(declare-fun tp!290487 () Bool)

(assert (=> b!937038 (= e!608346 tp!290487)))

(declare-fun b!937036 () Bool)

(assert (=> b!937036 (= e!608346 tp_is_empty!4779)))

(assert (= (and b!936684 (is-ElementMatch!2568 (regTwo!5648 r!15766))) b!937036))

(assert (= (and b!936684 (is-Concat!4401 (regTwo!5648 r!15766))) b!937037))

(assert (= (and b!936684 (is-Star!2568 (regTwo!5648 r!15766))) b!937038))

(assert (= (and b!936684 (is-Union!2568 (regTwo!5648 r!15766))) b!937039))

(declare-fun b!937044 () Bool)

(declare-fun e!608349 () Bool)

(declare-fun tp!290494 () Bool)

(assert (=> b!937044 (= e!608349 (and tp_is_empty!4779 tp!290494))))

(assert (=> b!936679 (= tp!290437 e!608349)))

(assert (= (and b!936679 (is-Cons!9782 (t!100844 s!10566))) b!937044))

(push 1)

(assert (not bm!58094))

(assert (not bm!58115))

(assert (not b!937021))

(assert (not d!281966))

(assert (not d!281964))

(assert (not b!936958))

(assert (not d!281954))

(assert (not b!936808))

(assert (not b!937035))

(assert (not b!937000))

(assert (not b!937023))

(assert (not d!281942))

(assert (not b!937030))

(assert (not bm!58121))

(assert (not b!936945))

(assert (not d!281936))

(assert (not b!936766))

(assert (not d!281938))

(assert (not d!281970))

(assert tp_is_empty!4779)

(assert (not b!937003))

(assert (not b!936904))

(assert (not b!937008))

(assert (not b!936955))

(assert (not d!281928))

(assert (not b!937031))

(assert (not bm!58120))

(assert (not b!937034))

(assert (not b!936906))

(assert (not bm!58093))

(assert (not d!281958))

(assert (not b!936910))

(assert (not bm!58085))

(assert (not b!936774))

(assert (not b!937002))

(assert (not b!936866))

(assert (not d!281924))

(assert (not d!281972))

(assert (not b!936768))

(assert (not b!936812))

(assert (not b!937001))

(assert (not b!937044))

(assert (not d!281956))

(assert (not b!936966))

(assert (not b!937027))

(assert (not bm!58109))

(assert (not b!936967))

(assert (not bm!58110))

(assert (not b!936773))

(assert (not d!281932))

(assert (not b!936857))

(assert (not b!937022))

(assert (not b!936959))

(assert (not b!937005))

(assert (not b!936770))

(assert (not d!281948))

(assert (not b!936953))

(assert (not b!937033))

(assert (not b!936952))

(assert (not b!937009))

(assert (not bm!58096))

(assert (not bm!58114))

(assert (not d!281960))

(assert (not bm!58097))

(assert (not b!936947))

(assert (not d!281926))

(assert (not b!937039))

(assert (not d!281962))

(assert (not b!936767))

(assert (not b!936961))

(assert (not d!281968))

(assert (not b!936969))

(assert (not b!937026))

(assert (not b!936944))

(assert (not b!937029))

(assert (not bm!58086))

(assert (not b!937038))

(assert (not bm!58119))

(assert (not bm!58118))

(assert (not b!937037))

(assert (not b!937025))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

