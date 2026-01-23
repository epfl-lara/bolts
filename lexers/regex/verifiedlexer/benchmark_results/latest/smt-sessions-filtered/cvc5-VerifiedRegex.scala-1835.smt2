; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!91276 () Bool)

(assert start!91276)

(declare-fun b!1062775 () Bool)

(assert (=> b!1062775 true))

(assert (=> b!1062775 true))

(assert (=> b!1062775 true))

(declare-fun b!1062770 () Bool)

(declare-fun e!674276 () Bool)

(declare-fun tp!319177 () Bool)

(assert (=> b!1062770 (= e!674276 tp!319177)))

(declare-fun b!1062771 () Bool)

(declare-fun e!674278 () Bool)

(declare-fun tp_is_empty!5499 () Bool)

(declare-fun tp!319173 () Bool)

(assert (=> b!1062771 (= e!674278 (and tp_is_empty!5499 tp!319173))))

(declare-fun b!1062772 () Bool)

(declare-fun e!674279 () Bool)

(declare-fun e!674277 () Bool)

(assert (=> b!1062772 (= e!674279 (not e!674277))))

(declare-fun res!474816 () Bool)

(assert (=> b!1062772 (=> res!474816 e!674277)))

(declare-fun lt!360041 () Bool)

(declare-datatypes ((C!6426 0))(
  ( (C!6427 (val!3461 Int)) )
))
(declare-datatypes ((Regex!2928 0))(
  ( (ElementMatch!2928 (c!178173 C!6426)) (Concat!4761 (regOne!6368 Regex!2928) (regTwo!6368 Regex!2928)) (EmptyExpr!2928) (Star!2928 (reg!3257 Regex!2928)) (EmptyLang!2928) (Union!2928 (regOne!6369 Regex!2928) (regTwo!6369 Regex!2928)) )
))
(declare-fun r!15766 () Regex!2928)

(assert (=> b!1062772 (= res!474816 (or lt!360041 (and (is-Concat!4761 r!15766) (is-EmptyExpr!2928 (regOne!6368 r!15766))) (and (is-Concat!4761 r!15766) (is-EmptyExpr!2928 (regTwo!6368 r!15766))) (is-Concat!4761 r!15766) (is-Union!2928 r!15766) (not (is-Star!2928 r!15766))))))

(declare-datatypes ((List!10158 0))(
  ( (Nil!10142) (Cons!10142 (h!15543 C!6426) (t!101204 List!10158)) )
))
(declare-fun s!10566 () List!10158)

(declare-fun matchRSpec!727 (Regex!2928 List!10158) Bool)

(assert (=> b!1062772 (= lt!360041 (matchRSpec!727 r!15766 s!10566))))

(declare-fun matchR!1464 (Regex!2928 List!10158) Bool)

(assert (=> b!1062772 (= lt!360041 (matchR!1464 r!15766 s!10566))))

(declare-datatypes ((Unit!15531 0))(
  ( (Unit!15532) )
))
(declare-fun lt!360040 () Unit!15531)

(declare-fun mainMatchTheorem!727 (Regex!2928 List!10158) Unit!15531)

(assert (=> b!1062772 (= lt!360040 (mainMatchTheorem!727 r!15766 s!10566))))

(declare-fun b!1062773 () Bool)

(assert (=> b!1062773 (= e!674276 tp_is_empty!5499)))

(declare-fun b!1062774 () Bool)

(declare-fun tp!319178 () Bool)

(declare-fun tp!319174 () Bool)

(assert (=> b!1062774 (= e!674276 (and tp!319178 tp!319174))))

(declare-fun validRegex!1397 (Regex!2928) Bool)

(assert (=> b!1062775 (= e!674277 (validRegex!1397 (reg!3257 r!15766)))))

(declare-fun lambda!38375 () Int)

(declare-fun lt!360042 () Regex!2928)

(declare-datatypes ((tuple2!11570 0))(
  ( (tuple2!11571 (_1!6611 List!10158) (_2!6611 List!10158)) )
))
(declare-datatypes ((Option!2427 0))(
  ( (None!2426) (Some!2426 (v!19843 tuple2!11570)) )
))
(declare-fun isDefined!2069 (Option!2427) Bool)

(declare-fun findConcatSeparation!533 (Regex!2928 Regex!2928 List!10158 List!10158 List!10158) Option!2427)

(declare-fun Exists!651 (Int) Bool)

(assert (=> b!1062775 (= (isDefined!2069 (findConcatSeparation!533 (reg!3257 r!15766) lt!360042 Nil!10142 s!10566 s!10566)) (Exists!651 lambda!38375))))

(declare-fun lt!360043 () Unit!15531)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!533 (Regex!2928 Regex!2928 List!10158) Unit!15531)

(assert (=> b!1062775 (= lt!360043 (lemmaFindConcatSeparationEquivalentToExists!533 (reg!3257 r!15766) lt!360042 s!10566))))

(assert (=> b!1062775 (= lt!360042 (Star!2928 (reg!3257 r!15766)))))

(declare-fun res!474815 () Bool)

(assert (=> start!91276 (=> (not res!474815) (not e!674279))))

(assert (=> start!91276 (= res!474815 (validRegex!1397 r!15766))))

(assert (=> start!91276 e!674279))

(assert (=> start!91276 e!674276))

(assert (=> start!91276 e!674278))

(declare-fun b!1062776 () Bool)

(declare-fun tp!319176 () Bool)

(declare-fun tp!319175 () Bool)

(assert (=> b!1062776 (= e!674276 (and tp!319176 tp!319175))))

(assert (= (and start!91276 res!474815) b!1062772))

(assert (= (and b!1062772 (not res!474816)) b!1062775))

(assert (= (and start!91276 (is-ElementMatch!2928 r!15766)) b!1062773))

(assert (= (and start!91276 (is-Concat!4761 r!15766)) b!1062776))

(assert (= (and start!91276 (is-Star!2928 r!15766)) b!1062770))

(assert (= (and start!91276 (is-Union!2928 r!15766)) b!1062774))

(assert (= (and start!91276 (is-Cons!10142 s!10566)) b!1062771))

(declare-fun m!1221719 () Bool)

(assert (=> b!1062772 m!1221719))

(declare-fun m!1221721 () Bool)

(assert (=> b!1062772 m!1221721))

(declare-fun m!1221723 () Bool)

(assert (=> b!1062772 m!1221723))

(declare-fun m!1221725 () Bool)

(assert (=> b!1062775 m!1221725))

(declare-fun m!1221727 () Bool)

(assert (=> b!1062775 m!1221727))

(declare-fun m!1221729 () Bool)

(assert (=> b!1062775 m!1221729))

(declare-fun m!1221731 () Bool)

(assert (=> b!1062775 m!1221731))

(declare-fun m!1221733 () Bool)

(assert (=> b!1062775 m!1221733))

(assert (=> b!1062775 m!1221729))

(declare-fun m!1221735 () Bool)

(assert (=> start!91276 m!1221735))

(push 1)

(assert tp_is_empty!5499)

(assert (not b!1062775))

(assert (not start!91276))

(assert (not b!1062772))

(assert (not b!1062771))

(assert (not b!1062776))

(assert (not b!1062770))

(assert (not b!1062774))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!251874 () Bool)

(declare-fun d!300804 () Bool)

(assert (= bs!251874 (and d!300804 b!1062775)))

(declare-fun lambda!38381 () Int)

(assert (=> bs!251874 (= lambda!38381 lambda!38375)))

(assert (=> d!300804 true))

(assert (=> d!300804 true))

(assert (=> d!300804 true))

(assert (=> d!300804 (= (isDefined!2069 (findConcatSeparation!533 (reg!3257 r!15766) lt!360042 Nil!10142 s!10566 s!10566)) (Exists!651 lambda!38381))))

(declare-fun lt!360058 () Unit!15531)

(declare-fun choose!6770 (Regex!2928 Regex!2928 List!10158) Unit!15531)

(assert (=> d!300804 (= lt!360058 (choose!6770 (reg!3257 r!15766) lt!360042 s!10566))))

(assert (=> d!300804 (validRegex!1397 (reg!3257 r!15766))))

(assert (=> d!300804 (= (lemmaFindConcatSeparationEquivalentToExists!533 (reg!3257 r!15766) lt!360042 s!10566) lt!360058)))

(declare-fun bs!251875 () Bool)

(assert (= bs!251875 d!300804))

(declare-fun m!1221755 () Bool)

(assert (=> bs!251875 m!1221755))

(assert (=> bs!251875 m!1221729))

(assert (=> bs!251875 m!1221733))

(declare-fun m!1221757 () Bool)

(assert (=> bs!251875 m!1221757))

(assert (=> bs!251875 m!1221729))

(assert (=> bs!251875 m!1221731))

(assert (=> b!1062775 d!300804))

(declare-fun d!300808 () Bool)

(declare-fun isEmpty!6556 (Option!2427) Bool)

(assert (=> d!300808 (= (isDefined!2069 (findConcatSeparation!533 (reg!3257 r!15766) lt!360042 Nil!10142 s!10566 s!10566)) (not (isEmpty!6556 (findConcatSeparation!533 (reg!3257 r!15766) lt!360042 Nil!10142 s!10566 s!10566))))))

(declare-fun bs!251876 () Bool)

(assert (= bs!251876 d!300808))

(assert (=> bs!251876 m!1221729))

(declare-fun m!1221759 () Bool)

(assert (=> bs!251876 m!1221759))

(assert (=> b!1062775 d!300808))

(declare-fun b!1062850 () Bool)

(declare-fun e!674329 () Bool)

(declare-fun call!76552 () Bool)

(assert (=> b!1062850 (= e!674329 call!76552)))

(declare-fun call!76553 () Bool)

(declare-fun bm!76547 () Bool)

(declare-fun c!178184 () Bool)

(declare-fun c!178183 () Bool)

(assert (=> bm!76547 (= call!76553 (validRegex!1397 (ite c!178184 (reg!3257 (reg!3257 r!15766)) (ite c!178183 (regTwo!6369 (reg!3257 r!15766)) (regTwo!6368 (reg!3257 r!15766))))))))

(declare-fun b!1062851 () Bool)

(declare-fun e!674324 () Bool)

(declare-fun e!674327 () Bool)

(assert (=> b!1062851 (= e!674324 e!674327)))

(assert (=> b!1062851 (= c!178183 (is-Union!2928 (reg!3257 r!15766)))))

(declare-fun b!1062852 () Bool)

(declare-fun e!674328 () Bool)

(assert (=> b!1062852 (= e!674324 e!674328)))

(declare-fun res!474853 () Bool)

(declare-fun nullable!1016 (Regex!2928) Bool)

(assert (=> b!1062852 (= res!474853 (not (nullable!1016 (reg!3257 (reg!3257 r!15766)))))))

(assert (=> b!1062852 (=> (not res!474853) (not e!674328))))

(declare-fun b!1062854 () Bool)

(assert (=> b!1062854 (= e!674328 call!76553)))

(declare-fun b!1062855 () Bool)

(declare-fun res!474855 () Bool)

(declare-fun e!674325 () Bool)

(assert (=> b!1062855 (=> (not res!474855) (not e!674325))))

(declare-fun call!76554 () Bool)

(assert (=> b!1062855 (= res!474855 call!76554)))

(assert (=> b!1062855 (= e!674327 e!674325)))

(declare-fun bm!76548 () Bool)

(assert (=> bm!76548 (= call!76554 (validRegex!1397 (ite c!178183 (regOne!6369 (reg!3257 r!15766)) (regOne!6368 (reg!3257 r!15766)))))))

(declare-fun b!1062856 () Bool)

(declare-fun res!474851 () Bool)

(declare-fun e!674326 () Bool)

(assert (=> b!1062856 (=> res!474851 e!674326)))

(assert (=> b!1062856 (= res!474851 (not (is-Concat!4761 (reg!3257 r!15766))))))

(assert (=> b!1062856 (= e!674327 e!674326)))

(declare-fun b!1062857 () Bool)

(assert (=> b!1062857 (= e!674325 call!76552)))

(declare-fun b!1062853 () Bool)

(assert (=> b!1062853 (= e!674326 e!674329)))

(declare-fun res!474854 () Bool)

(assert (=> b!1062853 (=> (not res!474854) (not e!674329))))

(assert (=> b!1062853 (= res!474854 call!76554)))

(declare-fun d!300810 () Bool)

(declare-fun res!474852 () Bool)

(declare-fun e!674330 () Bool)

(assert (=> d!300810 (=> res!474852 e!674330)))

(assert (=> d!300810 (= res!474852 (is-ElementMatch!2928 (reg!3257 r!15766)))))

(assert (=> d!300810 (= (validRegex!1397 (reg!3257 r!15766)) e!674330)))

(declare-fun b!1062858 () Bool)

(assert (=> b!1062858 (= e!674330 e!674324)))

(assert (=> b!1062858 (= c!178184 (is-Star!2928 (reg!3257 r!15766)))))

(declare-fun bm!76549 () Bool)

(assert (=> bm!76549 (= call!76552 call!76553)))

(assert (= (and d!300810 (not res!474852)) b!1062858))

(assert (= (and b!1062858 c!178184) b!1062852))

(assert (= (and b!1062858 (not c!178184)) b!1062851))

(assert (= (and b!1062852 res!474853) b!1062854))

(assert (= (and b!1062851 c!178183) b!1062855))

(assert (= (and b!1062851 (not c!178183)) b!1062856))

(assert (= (and b!1062855 res!474855) b!1062857))

(assert (= (and b!1062856 (not res!474851)) b!1062853))

(assert (= (and b!1062853 res!474854) b!1062850))

(assert (= (or b!1062857 b!1062850) bm!76549))

(assert (= (or b!1062855 b!1062853) bm!76548))

(assert (= (or b!1062854 bm!76549) bm!76547))

(declare-fun m!1221761 () Bool)

(assert (=> bm!76547 m!1221761))

(declare-fun m!1221763 () Bool)

(assert (=> b!1062852 m!1221763))

(declare-fun m!1221765 () Bool)

(assert (=> bm!76548 m!1221765))

(assert (=> b!1062775 d!300810))

(declare-fun b!1062890 () Bool)

(declare-fun res!474875 () Bool)

(declare-fun e!674350 () Bool)

(assert (=> b!1062890 (=> (not res!474875) (not e!674350))))

(declare-fun lt!360067 () Option!2427)

(declare-fun get!3644 (Option!2427) tuple2!11570)

(assert (=> b!1062890 (= res!474875 (matchR!1464 (reg!3257 r!15766) (_1!6611 (get!3644 lt!360067))))))

(declare-fun b!1062891 () Bool)

(declare-fun e!674354 () Bool)

(assert (=> b!1062891 (= e!674354 (not (isDefined!2069 lt!360067)))))

(declare-fun b!1062892 () Bool)

(declare-fun e!674353 () Bool)

(assert (=> b!1062892 (= e!674353 (matchR!1464 lt!360042 s!10566))))

(declare-fun b!1062893 () Bool)

(declare-fun e!674351 () Option!2427)

(declare-fun e!674352 () Option!2427)

(assert (=> b!1062893 (= e!674351 e!674352)))

(declare-fun c!178194 () Bool)

(assert (=> b!1062893 (= c!178194 (is-Nil!10142 s!10566))))

(declare-fun d!300812 () Bool)

(assert (=> d!300812 e!674354))

(declare-fun res!474873 () Bool)

(assert (=> d!300812 (=> res!474873 e!674354)))

(assert (=> d!300812 (= res!474873 e!674350)))

(declare-fun res!474874 () Bool)

(assert (=> d!300812 (=> (not res!474874) (not e!674350))))

(assert (=> d!300812 (= res!474874 (isDefined!2069 lt!360067))))

(assert (=> d!300812 (= lt!360067 e!674351)))

(declare-fun c!178193 () Bool)

(assert (=> d!300812 (= c!178193 e!674353)))

(declare-fun res!474872 () Bool)

(assert (=> d!300812 (=> (not res!474872) (not e!674353))))

(assert (=> d!300812 (= res!474872 (matchR!1464 (reg!3257 r!15766) Nil!10142))))

(assert (=> d!300812 (validRegex!1397 (reg!3257 r!15766))))

(assert (=> d!300812 (= (findConcatSeparation!533 (reg!3257 r!15766) lt!360042 Nil!10142 s!10566 s!10566) lt!360067)))

(declare-fun b!1062894 () Bool)

(assert (=> b!1062894 (= e!674351 (Some!2426 (tuple2!11571 Nil!10142 s!10566)))))

(declare-fun b!1062895 () Bool)

(declare-fun ++!2802 (List!10158 List!10158) List!10158)

(assert (=> b!1062895 (= e!674350 (= (++!2802 (_1!6611 (get!3644 lt!360067)) (_2!6611 (get!3644 lt!360067))) s!10566))))

(declare-fun b!1062896 () Bool)

(declare-fun lt!360066 () Unit!15531)

(declare-fun lt!360065 () Unit!15531)

(assert (=> b!1062896 (= lt!360066 lt!360065)))

(assert (=> b!1062896 (= (++!2802 (++!2802 Nil!10142 (Cons!10142 (h!15543 s!10566) Nil!10142)) (t!101204 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!395 (List!10158 C!6426 List!10158 List!10158) Unit!15531)

(assert (=> b!1062896 (= lt!360065 (lemmaMoveElementToOtherListKeepsConcatEq!395 Nil!10142 (h!15543 s!10566) (t!101204 s!10566) s!10566))))

(assert (=> b!1062896 (= e!674352 (findConcatSeparation!533 (reg!3257 r!15766) lt!360042 (++!2802 Nil!10142 (Cons!10142 (h!15543 s!10566) Nil!10142)) (t!101204 s!10566) s!10566))))

(declare-fun b!1062897 () Bool)

(assert (=> b!1062897 (= e!674352 None!2426)))

(declare-fun b!1062898 () Bool)

(declare-fun res!474871 () Bool)

(assert (=> b!1062898 (=> (not res!474871) (not e!674350))))

(assert (=> b!1062898 (= res!474871 (matchR!1464 lt!360042 (_2!6611 (get!3644 lt!360067))))))

(assert (= (and d!300812 res!474872) b!1062892))

(assert (= (and d!300812 c!178193) b!1062894))

(assert (= (and d!300812 (not c!178193)) b!1062893))

(assert (= (and b!1062893 c!178194) b!1062897))

(assert (= (and b!1062893 (not c!178194)) b!1062896))

(assert (= (and d!300812 res!474874) b!1062890))

(assert (= (and b!1062890 res!474875) b!1062898))

(assert (= (and b!1062898 res!474871) b!1062895))

(assert (= (and d!300812 (not res!474873)) b!1062891))

(declare-fun m!1221773 () Bool)

(assert (=> b!1062891 m!1221773))

(declare-fun m!1221775 () Bool)

(assert (=> b!1062896 m!1221775))

(assert (=> b!1062896 m!1221775))

(declare-fun m!1221777 () Bool)

(assert (=> b!1062896 m!1221777))

(declare-fun m!1221779 () Bool)

(assert (=> b!1062896 m!1221779))

(assert (=> b!1062896 m!1221775))

(declare-fun m!1221781 () Bool)

(assert (=> b!1062896 m!1221781))

(assert (=> d!300812 m!1221773))

(declare-fun m!1221783 () Bool)

(assert (=> d!300812 m!1221783))

(assert (=> d!300812 m!1221733))

(declare-fun m!1221785 () Bool)

(assert (=> b!1062890 m!1221785))

(declare-fun m!1221787 () Bool)

(assert (=> b!1062890 m!1221787))

(assert (=> b!1062895 m!1221785))

(declare-fun m!1221789 () Bool)

(assert (=> b!1062895 m!1221789))

(declare-fun m!1221791 () Bool)

(assert (=> b!1062892 m!1221791))

(assert (=> b!1062898 m!1221785))

(declare-fun m!1221793 () Bool)

(assert (=> b!1062898 m!1221793))

(assert (=> b!1062775 d!300812))

(declare-fun d!300816 () Bool)

(declare-fun choose!6771 (Int) Bool)

(assert (=> d!300816 (= (Exists!651 lambda!38375) (choose!6771 lambda!38375))))

(declare-fun bs!251877 () Bool)

(assert (= bs!251877 d!300816))

(declare-fun m!1221795 () Bool)

(assert (=> bs!251877 m!1221795))

(assert (=> b!1062775 d!300816))

(declare-fun bs!251878 () Bool)

(declare-fun b!1062969 () Bool)

(assert (= bs!251878 (and b!1062969 b!1062775)))

(declare-fun lambda!38390 () Int)

(assert (=> bs!251878 (not (= lambda!38390 lambda!38375))))

(declare-fun bs!251879 () Bool)

(assert (= bs!251879 (and b!1062969 d!300804)))

(assert (=> bs!251879 (not (= lambda!38390 lambda!38381))))

(assert (=> b!1062969 true))

(assert (=> b!1062969 true))

(declare-fun bs!251880 () Bool)

(declare-fun b!1062966 () Bool)

(assert (= bs!251880 (and b!1062966 b!1062775)))

(declare-fun lambda!38391 () Int)

(assert (=> bs!251880 (not (= lambda!38391 lambda!38375))))

(declare-fun bs!251881 () Bool)

(assert (= bs!251881 (and b!1062966 d!300804)))

(assert (=> bs!251881 (not (= lambda!38391 lambda!38381))))

(declare-fun bs!251882 () Bool)

(assert (= bs!251882 (and b!1062966 b!1062969)))

(assert (=> bs!251882 (not (= lambda!38391 lambda!38390))))

(assert (=> b!1062966 true))

(assert (=> b!1062966 true))

(declare-fun b!1062959 () Bool)

(declare-fun e!674392 () Bool)

(assert (=> b!1062959 (= e!674392 (= s!10566 (Cons!10142 (c!178173 r!15766) Nil!10142)))))

(declare-fun b!1062960 () Bool)

(declare-fun e!674394 () Bool)

(declare-fun call!76566 () Bool)

(assert (=> b!1062960 (= e!674394 call!76566)))

(declare-fun d!300818 () Bool)

(declare-fun c!178210 () Bool)

(assert (=> d!300818 (= c!178210 (is-EmptyExpr!2928 r!15766))))

(assert (=> d!300818 (= (matchRSpec!727 r!15766 s!10566) e!674394)))

(declare-fun b!1062961 () Bool)

(declare-fun c!178209 () Bool)

(assert (=> b!1062961 (= c!178209 (is-ElementMatch!2928 r!15766))))

(declare-fun e!674390 () Bool)

(assert (=> b!1062961 (= e!674390 e!674392)))

(declare-fun b!1062962 () Bool)

(assert (=> b!1062962 (= e!674394 e!674390)))

(declare-fun res!474908 () Bool)

(assert (=> b!1062962 (= res!474908 (not (is-EmptyLang!2928 r!15766)))))

(assert (=> b!1062962 (=> (not res!474908) (not e!674390))))

(declare-fun b!1062963 () Bool)

(declare-fun res!474910 () Bool)

(declare-fun e!674389 () Bool)

(assert (=> b!1062963 (=> res!474910 e!674389)))

(assert (=> b!1062963 (= res!474910 call!76566)))

(declare-fun e!674391 () Bool)

(assert (=> b!1062963 (= e!674391 e!674389)))

(declare-fun b!1062964 () Bool)

(declare-fun e!674393 () Bool)

(declare-fun e!674395 () Bool)

(assert (=> b!1062964 (= e!674393 e!674395)))

(declare-fun res!474909 () Bool)

(assert (=> b!1062964 (= res!474909 (matchRSpec!727 (regOne!6369 r!15766) s!10566))))

(assert (=> b!1062964 (=> res!474909 e!674395)))

(declare-fun b!1062965 () Bool)

(declare-fun c!178211 () Bool)

(assert (=> b!1062965 (= c!178211 (is-Union!2928 r!15766))))

(assert (=> b!1062965 (= e!674392 e!674393)))

(declare-fun call!76567 () Bool)

(assert (=> b!1062966 (= e!674391 call!76567)))

(declare-fun b!1062967 () Bool)

(assert (=> b!1062967 (= e!674395 (matchRSpec!727 (regTwo!6369 r!15766) s!10566))))

(declare-fun c!178212 () Bool)

(declare-fun bm!76561 () Bool)

(assert (=> bm!76561 (= call!76567 (Exists!651 (ite c!178212 lambda!38390 lambda!38391)))))

(declare-fun b!1062968 () Bool)

(assert (=> b!1062968 (= e!674393 e!674391)))

(assert (=> b!1062968 (= c!178212 (is-Star!2928 r!15766))))

(assert (=> b!1062969 (= e!674389 call!76567)))

(declare-fun bm!76562 () Bool)

(declare-fun isEmpty!6557 (List!10158) Bool)

(assert (=> bm!76562 (= call!76566 (isEmpty!6557 s!10566))))

(assert (= (and d!300818 c!178210) b!1062960))

(assert (= (and d!300818 (not c!178210)) b!1062962))

(assert (= (and b!1062962 res!474908) b!1062961))

(assert (= (and b!1062961 c!178209) b!1062959))

(assert (= (and b!1062961 (not c!178209)) b!1062965))

(assert (= (and b!1062965 c!178211) b!1062964))

(assert (= (and b!1062965 (not c!178211)) b!1062968))

(assert (= (and b!1062964 (not res!474909)) b!1062967))

(assert (= (and b!1062968 c!178212) b!1062963))

(assert (= (and b!1062968 (not c!178212)) b!1062966))

(assert (= (and b!1062963 (not res!474910)) b!1062969))

(assert (= (or b!1062969 b!1062966) bm!76561))

(assert (= (or b!1062960 b!1062963) bm!76562))

(declare-fun m!1221797 () Bool)

(assert (=> b!1062964 m!1221797))

(declare-fun m!1221799 () Bool)

(assert (=> b!1062967 m!1221799))

(declare-fun m!1221801 () Bool)

(assert (=> bm!76561 m!1221801))

(declare-fun m!1221803 () Bool)

(assert (=> bm!76562 m!1221803))

(assert (=> b!1062772 d!300818))

(declare-fun bm!76567 () Bool)

(declare-fun call!76572 () Bool)

(assert (=> bm!76567 (= call!76572 (isEmpty!6557 s!10566))))

(declare-fun b!1063009 () Bool)

(declare-fun res!474931 () Bool)

(declare-fun e!674422 () Bool)

(assert (=> b!1063009 (=> res!474931 e!674422)))

(declare-fun tail!1533 (List!10158) List!10158)

(assert (=> b!1063009 (= res!474931 (not (isEmpty!6557 (tail!1533 s!10566))))))

(declare-fun b!1063010 () Bool)

(declare-fun res!474935 () Bool)

(declare-fun e!674417 () Bool)

(assert (=> b!1063010 (=> (not res!474935) (not e!674417))))

(assert (=> b!1063010 (= res!474935 (not call!76572))))

(declare-fun b!1063011 () Bool)

(declare-fun head!1971 (List!10158) C!6426)

(assert (=> b!1063011 (= e!674417 (= (head!1971 s!10566) (c!178173 r!15766)))))

(declare-fun b!1063012 () Bool)

(declare-fun e!674418 () Bool)

(assert (=> b!1063012 (= e!674418 e!674422)))

(declare-fun res!474937 () Bool)

(assert (=> b!1063012 (=> res!474937 e!674422)))

(assert (=> b!1063012 (= res!474937 call!76572)))

(declare-fun b!1063013 () Bool)

(declare-fun res!474932 () Bool)

(declare-fun e!674421 () Bool)

(assert (=> b!1063013 (=> res!474932 e!674421)))

(assert (=> b!1063013 (= res!474932 (not (is-ElementMatch!2928 r!15766)))))

(declare-fun e!674420 () Bool)

(assert (=> b!1063013 (= e!674420 e!674421)))

(declare-fun b!1063014 () Bool)

(declare-fun e!674419 () Bool)

(declare-fun derivativeStep!816 (Regex!2928 C!6426) Regex!2928)

(assert (=> b!1063014 (= e!674419 (matchR!1464 (derivativeStep!816 r!15766 (head!1971 s!10566)) (tail!1533 s!10566)))))

(declare-fun b!1063015 () Bool)

(assert (=> b!1063015 (= e!674422 (not (= (head!1971 s!10566) (c!178173 r!15766))))))

(declare-fun d!300820 () Bool)

(declare-fun e!674423 () Bool)

(assert (=> d!300820 e!674423))

(declare-fun c!178223 () Bool)

(assert (=> d!300820 (= c!178223 (is-EmptyExpr!2928 r!15766))))

(declare-fun lt!360070 () Bool)

(assert (=> d!300820 (= lt!360070 e!674419)))

(declare-fun c!178225 () Bool)

(assert (=> d!300820 (= c!178225 (isEmpty!6557 s!10566))))

(assert (=> d!300820 (validRegex!1397 r!15766)))

(assert (=> d!300820 (= (matchR!1464 r!15766 s!10566) lt!360070)))

(declare-fun b!1063016 () Bool)

(assert (=> b!1063016 (= e!674423 e!674420)))

(declare-fun c!178224 () Bool)

(assert (=> b!1063016 (= c!178224 (is-EmptyLang!2928 r!15766))))

(declare-fun b!1063017 () Bool)

(declare-fun res!474930 () Bool)

(assert (=> b!1063017 (=> (not res!474930) (not e!674417))))

(assert (=> b!1063017 (= res!474930 (isEmpty!6557 (tail!1533 s!10566)))))

(declare-fun b!1063018 () Bool)

(declare-fun res!474933 () Bool)

(assert (=> b!1063018 (=> res!474933 e!674421)))

(assert (=> b!1063018 (= res!474933 e!674417)))

(declare-fun res!474936 () Bool)

(assert (=> b!1063018 (=> (not res!474936) (not e!674417))))

(assert (=> b!1063018 (= res!474936 lt!360070)))

(declare-fun b!1063019 () Bool)

(assert (=> b!1063019 (= e!674420 (not lt!360070))))

(declare-fun b!1063020 () Bool)

(assert (=> b!1063020 (= e!674421 e!674418)))

(declare-fun res!474934 () Bool)

(assert (=> b!1063020 (=> (not res!474934) (not e!674418))))

(assert (=> b!1063020 (= res!474934 (not lt!360070))))

(declare-fun b!1063021 () Bool)

(assert (=> b!1063021 (= e!674423 (= lt!360070 call!76572))))

(declare-fun b!1063022 () Bool)

(assert (=> b!1063022 (= e!674419 (nullable!1016 r!15766))))

(assert (= (and d!300820 c!178225) b!1063022))

(assert (= (and d!300820 (not c!178225)) b!1063014))

(assert (= (and d!300820 c!178223) b!1063021))

(assert (= (and d!300820 (not c!178223)) b!1063016))

(assert (= (and b!1063016 c!178224) b!1063019))

(assert (= (and b!1063016 (not c!178224)) b!1063013))

(assert (= (and b!1063013 (not res!474932)) b!1063018))

(assert (= (and b!1063018 res!474936) b!1063010))

(assert (= (and b!1063010 res!474935) b!1063017))

(assert (= (and b!1063017 res!474930) b!1063011))

(assert (= (and b!1063018 (not res!474933)) b!1063020))

(assert (= (and b!1063020 res!474934) b!1063012))

(assert (= (and b!1063012 (not res!474937)) b!1063009))

(assert (= (and b!1063009 (not res!474931)) b!1063015))

(assert (= (or b!1063021 b!1063010 b!1063012) bm!76567))

(declare-fun m!1221813 () Bool)

(assert (=> b!1063009 m!1221813))

(assert (=> b!1063009 m!1221813))

(declare-fun m!1221815 () Bool)

(assert (=> b!1063009 m!1221815))

(assert (=> d!300820 m!1221803))

(assert (=> d!300820 m!1221735))

(declare-fun m!1221817 () Bool)

(assert (=> b!1063022 m!1221817))

(declare-fun m!1221819 () Bool)

(assert (=> b!1063014 m!1221819))

(assert (=> b!1063014 m!1221819))

(declare-fun m!1221821 () Bool)

(assert (=> b!1063014 m!1221821))

(assert (=> b!1063014 m!1221813))

(assert (=> b!1063014 m!1221821))

(assert (=> b!1063014 m!1221813))

(declare-fun m!1221823 () Bool)

(assert (=> b!1063014 m!1221823))

(assert (=> bm!76567 m!1221803))

(assert (=> b!1063015 m!1221819))

(assert (=> b!1063011 m!1221819))

(assert (=> b!1063017 m!1221813))

(assert (=> b!1063017 m!1221813))

(assert (=> b!1063017 m!1221815))

(assert (=> b!1062772 d!300820))

(declare-fun d!300824 () Bool)

(assert (=> d!300824 (= (matchR!1464 r!15766 s!10566) (matchRSpec!727 r!15766 s!10566))))

(declare-fun lt!360073 () Unit!15531)

(declare-fun choose!6772 (Regex!2928 List!10158) Unit!15531)

(assert (=> d!300824 (= lt!360073 (choose!6772 r!15766 s!10566))))

(assert (=> d!300824 (validRegex!1397 r!15766)))

(assert (=> d!300824 (= (mainMatchTheorem!727 r!15766 s!10566) lt!360073)))

(declare-fun bs!251886 () Bool)

(assert (= bs!251886 d!300824))

(assert (=> bs!251886 m!1221721))

(assert (=> bs!251886 m!1221719))

(declare-fun m!1221825 () Bool)

(assert (=> bs!251886 m!1221825))

(assert (=> bs!251886 m!1221735))

(assert (=> b!1062772 d!300824))

(declare-fun b!1063023 () Bool)

(declare-fun e!674429 () Bool)

(declare-fun call!76573 () Bool)

(assert (=> b!1063023 (= e!674429 call!76573)))

(declare-fun call!76574 () Bool)

(declare-fun c!178226 () Bool)

(declare-fun c!178227 () Bool)

(declare-fun bm!76568 () Bool)

(assert (=> bm!76568 (= call!76574 (validRegex!1397 (ite c!178227 (reg!3257 r!15766) (ite c!178226 (regTwo!6369 r!15766) (regTwo!6368 r!15766)))))))

(declare-fun b!1063024 () Bool)

(declare-fun e!674424 () Bool)

(declare-fun e!674427 () Bool)

(assert (=> b!1063024 (= e!674424 e!674427)))

(assert (=> b!1063024 (= c!178226 (is-Union!2928 r!15766))))

(declare-fun b!1063025 () Bool)

(declare-fun e!674428 () Bool)

(assert (=> b!1063025 (= e!674424 e!674428)))

(declare-fun res!474940 () Bool)

(assert (=> b!1063025 (= res!474940 (not (nullable!1016 (reg!3257 r!15766))))))

(assert (=> b!1063025 (=> (not res!474940) (not e!674428))))

(declare-fun b!1063027 () Bool)

(assert (=> b!1063027 (= e!674428 call!76574)))

(declare-fun b!1063028 () Bool)

(declare-fun res!474942 () Bool)

(declare-fun e!674425 () Bool)

(assert (=> b!1063028 (=> (not res!474942) (not e!674425))))

(declare-fun call!76575 () Bool)

(assert (=> b!1063028 (= res!474942 call!76575)))

(assert (=> b!1063028 (= e!674427 e!674425)))

(declare-fun bm!76569 () Bool)

(assert (=> bm!76569 (= call!76575 (validRegex!1397 (ite c!178226 (regOne!6369 r!15766) (regOne!6368 r!15766))))))

(declare-fun b!1063029 () Bool)

(declare-fun res!474938 () Bool)

(declare-fun e!674426 () Bool)

(assert (=> b!1063029 (=> res!474938 e!674426)))

(assert (=> b!1063029 (= res!474938 (not (is-Concat!4761 r!15766)))))

(assert (=> b!1063029 (= e!674427 e!674426)))

(declare-fun b!1063030 () Bool)

(assert (=> b!1063030 (= e!674425 call!76573)))

(declare-fun b!1063026 () Bool)

(assert (=> b!1063026 (= e!674426 e!674429)))

(declare-fun res!474941 () Bool)

(assert (=> b!1063026 (=> (not res!474941) (not e!674429))))

(assert (=> b!1063026 (= res!474941 call!76575)))

(declare-fun d!300826 () Bool)

(declare-fun res!474939 () Bool)

(declare-fun e!674430 () Bool)

(assert (=> d!300826 (=> res!474939 e!674430)))

(assert (=> d!300826 (= res!474939 (is-ElementMatch!2928 r!15766))))

(assert (=> d!300826 (= (validRegex!1397 r!15766) e!674430)))

(declare-fun b!1063031 () Bool)

(assert (=> b!1063031 (= e!674430 e!674424)))

(assert (=> b!1063031 (= c!178227 (is-Star!2928 r!15766))))

(declare-fun bm!76570 () Bool)

(assert (=> bm!76570 (= call!76573 call!76574)))

(assert (= (and d!300826 (not res!474939)) b!1063031))

(assert (= (and b!1063031 c!178227) b!1063025))

(assert (= (and b!1063031 (not c!178227)) b!1063024))

(assert (= (and b!1063025 res!474940) b!1063027))

(assert (= (and b!1063024 c!178226) b!1063028))

(assert (= (and b!1063024 (not c!178226)) b!1063029))

(assert (= (and b!1063028 res!474942) b!1063030))

(assert (= (and b!1063029 (not res!474938)) b!1063026))

(assert (= (and b!1063026 res!474941) b!1063023))

(assert (= (or b!1063030 b!1063023) bm!76570))

(assert (= (or b!1063028 b!1063026) bm!76569))

(assert (= (or b!1063027 bm!76570) bm!76568))

(declare-fun m!1221827 () Bool)

(assert (=> bm!76568 m!1221827))

(declare-fun m!1221829 () Bool)

(assert (=> b!1063025 m!1221829))

(declare-fun m!1221831 () Bool)

(assert (=> bm!76569 m!1221831))

(assert (=> start!91276 d!300826))

(declare-fun b!1063042 () Bool)

(declare-fun e!674433 () Bool)

(assert (=> b!1063042 (= e!674433 tp_is_empty!5499)))

(declare-fun b!1063045 () Bool)

(declare-fun tp!319208 () Bool)

(declare-fun tp!319210 () Bool)

(assert (=> b!1063045 (= e!674433 (and tp!319208 tp!319210))))

(declare-fun b!1063044 () Bool)

(declare-fun tp!319211 () Bool)

(assert (=> b!1063044 (= e!674433 tp!319211)))

(assert (=> b!1062776 (= tp!319176 e!674433)))

(declare-fun b!1063043 () Bool)

(declare-fun tp!319209 () Bool)

(declare-fun tp!319207 () Bool)

(assert (=> b!1063043 (= e!674433 (and tp!319209 tp!319207))))

(assert (= (and b!1062776 (is-ElementMatch!2928 (regOne!6368 r!15766))) b!1063042))

(assert (= (and b!1062776 (is-Concat!4761 (regOne!6368 r!15766))) b!1063043))

(assert (= (and b!1062776 (is-Star!2928 (regOne!6368 r!15766))) b!1063044))

(assert (= (and b!1062776 (is-Union!2928 (regOne!6368 r!15766))) b!1063045))

(declare-fun b!1063046 () Bool)

(declare-fun e!674434 () Bool)

(assert (=> b!1063046 (= e!674434 tp_is_empty!5499)))

(declare-fun b!1063049 () Bool)

(declare-fun tp!319213 () Bool)

(declare-fun tp!319215 () Bool)

(assert (=> b!1063049 (= e!674434 (and tp!319213 tp!319215))))

(declare-fun b!1063048 () Bool)

(declare-fun tp!319216 () Bool)

(assert (=> b!1063048 (= e!674434 tp!319216)))

(assert (=> b!1062776 (= tp!319175 e!674434)))

(declare-fun b!1063047 () Bool)

(declare-fun tp!319214 () Bool)

(declare-fun tp!319212 () Bool)

(assert (=> b!1063047 (= e!674434 (and tp!319214 tp!319212))))

(assert (= (and b!1062776 (is-ElementMatch!2928 (regTwo!6368 r!15766))) b!1063046))

(assert (= (and b!1062776 (is-Concat!4761 (regTwo!6368 r!15766))) b!1063047))

(assert (= (and b!1062776 (is-Star!2928 (regTwo!6368 r!15766))) b!1063048))

(assert (= (and b!1062776 (is-Union!2928 (regTwo!6368 r!15766))) b!1063049))

(declare-fun b!1063052 () Bool)

(declare-fun e!674435 () Bool)

(assert (=> b!1063052 (= e!674435 tp_is_empty!5499)))

(declare-fun b!1063055 () Bool)

(declare-fun tp!319218 () Bool)

(declare-fun tp!319220 () Bool)

(assert (=> b!1063055 (= e!674435 (and tp!319218 tp!319220))))

(declare-fun b!1063054 () Bool)

(declare-fun tp!319221 () Bool)

(assert (=> b!1063054 (= e!674435 tp!319221)))

(assert (=> b!1062770 (= tp!319177 e!674435)))

(declare-fun b!1063053 () Bool)

(declare-fun tp!319219 () Bool)

(declare-fun tp!319217 () Bool)

(assert (=> b!1063053 (= e!674435 (and tp!319219 tp!319217))))

(assert (= (and b!1062770 (is-ElementMatch!2928 (reg!3257 r!15766))) b!1063052))

(assert (= (and b!1062770 (is-Concat!4761 (reg!3257 r!15766))) b!1063053))

(assert (= (and b!1062770 (is-Star!2928 (reg!3257 r!15766))) b!1063054))

(assert (= (and b!1062770 (is-Union!2928 (reg!3257 r!15766))) b!1063055))

(declare-fun b!1063062 () Bool)

(declare-fun e!674440 () Bool)

(declare-fun tp!319224 () Bool)

(assert (=> b!1063062 (= e!674440 (and tp_is_empty!5499 tp!319224))))

(assert (=> b!1062771 (= tp!319173 e!674440)))

(assert (= (and b!1062771 (is-Cons!10142 (t!101204 s!10566))) b!1063062))

(declare-fun b!1063063 () Bool)

(declare-fun e!674441 () Bool)

(assert (=> b!1063063 (= e!674441 tp_is_empty!5499)))

(declare-fun b!1063066 () Bool)

(declare-fun tp!319226 () Bool)

(declare-fun tp!319228 () Bool)

(assert (=> b!1063066 (= e!674441 (and tp!319226 tp!319228))))

(declare-fun b!1063065 () Bool)

(declare-fun tp!319229 () Bool)

(assert (=> b!1063065 (= e!674441 tp!319229)))

(assert (=> b!1062774 (= tp!319178 e!674441)))

(declare-fun b!1063064 () Bool)

(declare-fun tp!319227 () Bool)

(declare-fun tp!319225 () Bool)

(assert (=> b!1063064 (= e!674441 (and tp!319227 tp!319225))))

(assert (= (and b!1062774 (is-ElementMatch!2928 (regOne!6369 r!15766))) b!1063063))

(assert (= (and b!1062774 (is-Concat!4761 (regOne!6369 r!15766))) b!1063064))

(assert (= (and b!1062774 (is-Star!2928 (regOne!6369 r!15766))) b!1063065))

(assert (= (and b!1062774 (is-Union!2928 (regOne!6369 r!15766))) b!1063066))

(declare-fun b!1063069 () Bool)

(declare-fun e!674442 () Bool)

(assert (=> b!1063069 (= e!674442 tp_is_empty!5499)))

(declare-fun b!1063072 () Bool)

(declare-fun tp!319231 () Bool)

(declare-fun tp!319233 () Bool)

(assert (=> b!1063072 (= e!674442 (and tp!319231 tp!319233))))

(declare-fun b!1063071 () Bool)

(declare-fun tp!319234 () Bool)

(assert (=> b!1063071 (= e!674442 tp!319234)))

(assert (=> b!1062774 (= tp!319174 e!674442)))

(declare-fun b!1063070 () Bool)

(declare-fun tp!319232 () Bool)

(declare-fun tp!319230 () Bool)

(assert (=> b!1063070 (= e!674442 (and tp!319232 tp!319230))))

(assert (= (and b!1062774 (is-ElementMatch!2928 (regTwo!6369 r!15766))) b!1063069))

(assert (= (and b!1062774 (is-Concat!4761 (regTwo!6369 r!15766))) b!1063070))

(assert (= (and b!1062774 (is-Star!2928 (regTwo!6369 r!15766))) b!1063071))

(assert (= (and b!1062774 (is-Union!2928 (regTwo!6369 r!15766))) b!1063072))

(push 1)

(assert (not d!300804))

(assert (not b!1063025))

(assert (not d!300816))

(assert (not b!1063011))

(assert (not bm!76569))

(assert (not b!1063070))

(assert (not b!1063009))

(assert (not b!1062852))

(assert (not b!1063053))

(assert (not bm!76561))

(assert tp_is_empty!5499)

(assert (not b!1063043))

(assert (not b!1063044))

(assert (not b!1063015))

(assert (not b!1063047))

(assert (not b!1062891))

(assert (not bm!76547))

(assert (not b!1063048))

(assert (not bm!76568))

(assert (not b!1062898))

(assert (not b!1063045))

(assert (not b!1063066))

(assert (not b!1062890))

(assert (not d!300824))

(assert (not b!1063064))

(assert (not b!1063062))

(assert (not b!1063072))

(assert (not bm!76562))

(assert (not d!300812))

(assert (not b!1063071))

(assert (not b!1063065))

(assert (not bm!76567))

(assert (not b!1063054))

(assert (not b!1062967))

(assert (not b!1063022))

(assert (not b!1062964))

(assert (not b!1062895))

(assert (not b!1062896))

(assert (not b!1063017))

(assert (not b!1063055))

(assert (not d!300820))

(assert (not b!1063014))

(assert (not b!1062892))

(assert (not bm!76548))

(assert (not b!1063049))

(assert (not d!300808))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

