; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!79508 () Bool)

(assert start!79508)

(declare-fun b!879805 () Bool)

(assert (=> b!879805 true))

(assert (=> b!879805 true))

(declare-fun lambda!26844 () Int)

(declare-fun lambda!26843 () Int)

(assert (=> b!879805 (not (= lambda!26844 lambda!26843))))

(assert (=> b!879805 true))

(assert (=> b!879805 true))

(declare-fun res!400121 () Bool)

(declare-fun e!577719 () Bool)

(assert (=> start!79508 (=> (not res!400121) (not e!577719))))

(declare-datatypes ((C!5070 0))(
  ( (C!5071 (val!2783 Int)) )
))
(declare-datatypes ((Regex!2250 0))(
  ( (ElementMatch!2250 (c!142197 C!5070)) (Concat!4083 (regOne!5012 Regex!2250) (regTwo!5012 Regex!2250)) (EmptyExpr!2250) (Star!2250 (reg!2579 Regex!2250)) (EmptyLang!2250) (Union!2250 (regOne!5013 Regex!2250) (regTwo!5013 Regex!2250)) )
))
(declare-fun r!15766 () Regex!2250)

(declare-fun validRegex!719 (Regex!2250) Bool)

(assert (=> start!79508 (= res!400121 (validRegex!719 r!15766))))

(assert (=> start!79508 e!577719))

(declare-fun e!577715 () Bool)

(assert (=> start!79508 e!577715))

(declare-fun e!577716 () Bool)

(assert (=> start!79508 e!577716))

(declare-fun b!879798 () Bool)

(declare-fun tp_is_empty!4143 () Bool)

(assert (=> b!879798 (= e!577715 tp_is_empty!4143)))

(declare-fun b!879799 () Bool)

(declare-fun e!577718 () Bool)

(declare-fun e!577717 () Bool)

(assert (=> b!879799 (= e!577718 e!577717)))

(declare-fun res!400124 () Bool)

(assert (=> b!879799 (=> res!400124 e!577717)))

(assert (=> b!879799 (= res!400124 (not (validRegex!719 (regOne!5012 r!15766))))))

(declare-datatypes ((List!9480 0))(
  ( (Nil!9464) (Cons!9464 (h!14865 C!5070) (t!100526 List!9480)) )
))
(declare-datatypes ((tuple2!10590 0))(
  ( (tuple2!10591 (_1!6121 List!9480) (_2!6121 List!9480)) )
))
(declare-fun lt!330483 () tuple2!10590)

(declare-fun matchRSpec!51 (Regex!2250 List!9480) Bool)

(assert (=> b!879799 (matchRSpec!51 (regOne!5012 r!15766) (_1!6121 lt!330483))))

(declare-datatypes ((Unit!14079 0))(
  ( (Unit!14080) )
))
(declare-fun lt!330480 () Unit!14079)

(declare-fun mainMatchTheorem!51 (Regex!2250 List!9480) Unit!14079)

(assert (=> b!879799 (= lt!330480 (mainMatchTheorem!51 (regOne!5012 r!15766) (_1!6121 lt!330483)))))

(declare-fun b!879800 () Bool)

(declare-fun e!577714 () Bool)

(assert (=> b!879800 (= e!577719 (not e!577714))))

(declare-fun res!400120 () Bool)

(assert (=> b!879800 (=> res!400120 e!577714)))

(declare-fun lt!330484 () Bool)

(assert (=> b!879800 (= res!400120 (or (not lt!330484) (and (is-Concat!4083 r!15766) (is-EmptyExpr!2250 (regOne!5012 r!15766))) (not (is-Concat!4083 r!15766)) (not (is-EmptyExpr!2250 (regTwo!5012 r!15766)))))))

(declare-fun s!10566 () List!9480)

(assert (=> b!879800 (= lt!330484 (matchRSpec!51 r!15766 s!10566))))

(declare-fun matchR!788 (Regex!2250 List!9480) Bool)

(assert (=> b!879800 (= lt!330484 (matchR!788 r!15766 s!10566))))

(declare-fun lt!330481 () Unit!14079)

(assert (=> b!879800 (= lt!330481 (mainMatchTheorem!51 r!15766 s!10566))))

(declare-fun b!879801 () Bool)

(declare-fun tp!278024 () Bool)

(declare-fun tp!278021 () Bool)

(assert (=> b!879801 (= e!577715 (and tp!278024 tp!278021))))

(declare-fun b!879802 () Bool)

(declare-fun tp!278023 () Bool)

(declare-fun tp!278026 () Bool)

(assert (=> b!879802 (= e!577715 (and tp!278023 tp!278026))))

(declare-fun b!879803 () Bool)

(declare-fun removeUselessConcat!11 (Regex!2250) Regex!2250)

(assert (=> b!879803 (= e!577717 (validRegex!719 (removeUselessConcat!11 r!15766)))))

(assert (=> b!879803 (matchR!788 (removeUselessConcat!11 (regOne!5012 r!15766)) (_1!6121 lt!330483))))

(declare-fun lt!330479 () Unit!14079)

(declare-fun lemmaRemoveUselessConcatSound!7 (Regex!2250 List!9480) Unit!14079)

(assert (=> b!879803 (= lt!330479 (lemmaRemoveUselessConcatSound!7 (regOne!5012 r!15766) (_1!6121 lt!330483)))))

(declare-fun b!879804 () Bool)

(declare-fun tp!278022 () Bool)

(assert (=> b!879804 (= e!577715 tp!278022)))

(assert (=> b!879805 (= e!577714 e!577718)))

(declare-fun res!400119 () Bool)

(assert (=> b!879805 (=> res!400119 e!577718)))

(declare-fun isEmpty!5660 (List!9480) Bool)

(assert (=> b!879805 (= res!400119 (not (isEmpty!5660 (_2!6121 lt!330483))))))

(declare-datatypes ((Option!1937 0))(
  ( (None!1936) (Some!1936 (v!19353 tuple2!10590)) )
))
(declare-fun lt!330478 () Option!1937)

(declare-fun get!2933 (Option!1937) tuple2!10590)

(assert (=> b!879805 (= lt!330483 (get!2933 lt!330478))))

(declare-fun Exists!47 (Int) Bool)

(assert (=> b!879805 (= (Exists!47 lambda!26843) (Exists!47 lambda!26844))))

(declare-fun lt!330485 () Unit!14079)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!39 (Regex!2250 Regex!2250 List!9480) Unit!14079)

(assert (=> b!879805 (= lt!330485 (lemmaExistCutMatchRandMatchRSpecEquivalent!39 (regOne!5012 r!15766) EmptyExpr!2250 s!10566))))

(declare-fun isDefined!1579 (Option!1937) Bool)

(assert (=> b!879805 (= (isDefined!1579 lt!330478) (Exists!47 lambda!26843))))

(declare-fun findConcatSeparation!43 (Regex!2250 Regex!2250 List!9480 List!9480 List!9480) Option!1937)

(assert (=> b!879805 (= lt!330478 (findConcatSeparation!43 (regOne!5012 r!15766) EmptyExpr!2250 Nil!9464 s!10566 s!10566))))

(declare-fun lt!330482 () Unit!14079)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!43 (Regex!2250 Regex!2250 List!9480) Unit!14079)

(assert (=> b!879805 (= lt!330482 (lemmaFindConcatSeparationEquivalentToExists!43 (regOne!5012 r!15766) EmptyExpr!2250 s!10566))))

(declare-fun b!879806 () Bool)

(declare-fun res!400122 () Bool)

(assert (=> b!879806 (=> res!400122 e!577714)))

(assert (=> b!879806 (= res!400122 (isEmpty!5660 s!10566))))

(declare-fun b!879807 () Bool)

(declare-fun res!400123 () Bool)

(assert (=> b!879807 (=> res!400123 e!577718)))

(assert (=> b!879807 (= res!400123 (not (matchR!788 (regOne!5012 r!15766) (_1!6121 lt!330483))))))

(declare-fun b!879808 () Bool)

(declare-fun tp!278025 () Bool)

(assert (=> b!879808 (= e!577716 (and tp_is_empty!4143 tp!278025))))

(assert (= (and start!79508 res!400121) b!879800))

(assert (= (and b!879800 (not res!400120)) b!879806))

(assert (= (and b!879806 (not res!400122)) b!879805))

(assert (= (and b!879805 (not res!400119)) b!879807))

(assert (= (and b!879807 (not res!400123)) b!879799))

(assert (= (and b!879799 (not res!400124)) b!879803))

(assert (= (and start!79508 (is-ElementMatch!2250 r!15766)) b!879798))

(assert (= (and start!79508 (is-Concat!4083 r!15766)) b!879802))

(assert (= (and start!79508 (is-Star!2250 r!15766)) b!879804))

(assert (= (and start!79508 (is-Union!2250 r!15766)) b!879801))

(assert (= (and start!79508 (is-Cons!9464 s!10566)) b!879808))

(declare-fun m!1128751 () Bool)

(assert (=> b!879803 m!1128751))

(declare-fun m!1128753 () Bool)

(assert (=> b!879803 m!1128753))

(declare-fun m!1128755 () Bool)

(assert (=> b!879803 m!1128755))

(assert (=> b!879803 m!1128753))

(assert (=> b!879803 m!1128751))

(declare-fun m!1128757 () Bool)

(assert (=> b!879803 m!1128757))

(declare-fun m!1128759 () Bool)

(assert (=> b!879803 m!1128759))

(declare-fun m!1128761 () Bool)

(assert (=> b!879805 m!1128761))

(declare-fun m!1128763 () Bool)

(assert (=> b!879805 m!1128763))

(declare-fun m!1128765 () Bool)

(assert (=> b!879805 m!1128765))

(declare-fun m!1128767 () Bool)

(assert (=> b!879805 m!1128767))

(declare-fun m!1128769 () Bool)

(assert (=> b!879805 m!1128769))

(declare-fun m!1128771 () Bool)

(assert (=> b!879805 m!1128771))

(declare-fun m!1128773 () Bool)

(assert (=> b!879805 m!1128773))

(declare-fun m!1128775 () Bool)

(assert (=> b!879805 m!1128775))

(assert (=> b!879805 m!1128765))

(declare-fun m!1128777 () Bool)

(assert (=> b!879807 m!1128777))

(declare-fun m!1128779 () Bool)

(assert (=> start!79508 m!1128779))

(declare-fun m!1128781 () Bool)

(assert (=> b!879800 m!1128781))

(declare-fun m!1128783 () Bool)

(assert (=> b!879800 m!1128783))

(declare-fun m!1128785 () Bool)

(assert (=> b!879800 m!1128785))

(declare-fun m!1128787 () Bool)

(assert (=> b!879806 m!1128787))

(declare-fun m!1128789 () Bool)

(assert (=> b!879799 m!1128789))

(declare-fun m!1128791 () Bool)

(assert (=> b!879799 m!1128791))

(declare-fun m!1128793 () Bool)

(assert (=> b!879799 m!1128793))

(push 1)

(assert (not b!879806))

(assert (not b!879799))

(assert (not b!879807))

(assert (not b!879803))

(assert (not b!879808))

(assert (not b!879801))

(assert (not b!879800))

(assert (not b!879804))

(assert (not b!879805))

(assert (not start!79508))

(assert (not b!879802))

(assert tp_is_empty!4143)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!879890 () Bool)

(declare-fun e!577760 () Bool)

(declare-fun e!577762 () Bool)

(assert (=> b!879890 (= e!577760 e!577762)))

(declare-fun res!400177 () Bool)

(assert (=> b!879890 (=> res!400177 e!577762)))

(declare-fun call!51276 () Bool)

(assert (=> b!879890 (= res!400177 call!51276)))

(declare-fun b!879891 () Bool)

(declare-fun e!577758 () Bool)

(declare-fun lt!330512 () Bool)

(assert (=> b!879891 (= e!577758 (not lt!330512))))

(declare-fun b!879892 () Bool)

(declare-fun res!400173 () Bool)

(declare-fun e!577759 () Bool)

(assert (=> b!879892 (=> (not res!400173) (not e!577759))))

(assert (=> b!879892 (= res!400173 (not call!51276))))

(declare-fun bm!51271 () Bool)

(assert (=> bm!51271 (= call!51276 (isEmpty!5660 (_1!6121 lt!330483)))))

(declare-fun b!879893 () Bool)

(declare-fun res!400178 () Bool)

(declare-fun e!577763 () Bool)

(assert (=> b!879893 (=> res!400178 e!577763)))

(assert (=> b!879893 (= res!400178 e!577759)))

(declare-fun res!400174 () Bool)

(assert (=> b!879893 (=> (not res!400174) (not e!577759))))

(assert (=> b!879893 (= res!400174 lt!330512)))

(declare-fun d!276217 () Bool)

(declare-fun e!577764 () Bool)

(assert (=> d!276217 e!577764))

(declare-fun c!142205 () Bool)

(assert (=> d!276217 (= c!142205 (is-EmptyExpr!2250 (regOne!5012 r!15766)))))

(declare-fun e!577761 () Bool)

(assert (=> d!276217 (= lt!330512 e!577761)))

(declare-fun c!142207 () Bool)

(assert (=> d!276217 (= c!142207 (isEmpty!5660 (_1!6121 lt!330483)))))

(assert (=> d!276217 (validRegex!719 (regOne!5012 r!15766))))

(assert (=> d!276217 (= (matchR!788 (regOne!5012 r!15766) (_1!6121 lt!330483)) lt!330512)))

(declare-fun b!879894 () Bool)

(declare-fun nullable!568 (Regex!2250) Bool)

(assert (=> b!879894 (= e!577761 (nullable!568 (regOne!5012 r!15766)))))

(declare-fun b!879895 () Bool)

(assert (=> b!879895 (= e!577764 e!577758)))

(declare-fun c!142206 () Bool)

(assert (=> b!879895 (= c!142206 (is-EmptyLang!2250 (regOne!5012 r!15766)))))

(declare-fun b!879896 () Bool)

(declare-fun head!1534 (List!9480) C!5070)

(assert (=> b!879896 (= e!577762 (not (= (head!1534 (_1!6121 lt!330483)) (c!142197 (regOne!5012 r!15766)))))))

(declare-fun b!879897 () Bool)

(assert (=> b!879897 (= e!577763 e!577760)))

(declare-fun res!400172 () Bool)

(assert (=> b!879897 (=> (not res!400172) (not e!577760))))

(assert (=> b!879897 (= res!400172 (not lt!330512))))

(declare-fun b!879898 () Bool)

(assert (=> b!879898 (= e!577759 (= (head!1534 (_1!6121 lt!330483)) (c!142197 (regOne!5012 r!15766))))))

(declare-fun b!879899 () Bool)

(assert (=> b!879899 (= e!577764 (= lt!330512 call!51276))))

(declare-fun b!879900 () Bool)

(declare-fun res!400171 () Bool)

(assert (=> b!879900 (=> res!400171 e!577762)))

(declare-fun tail!1096 (List!9480) List!9480)

(assert (=> b!879900 (= res!400171 (not (isEmpty!5660 (tail!1096 (_1!6121 lt!330483)))))))

(declare-fun b!879901 () Bool)

(declare-fun res!400175 () Bool)

(assert (=> b!879901 (=> res!400175 e!577763)))

(assert (=> b!879901 (= res!400175 (not (is-ElementMatch!2250 (regOne!5012 r!15766))))))

(assert (=> b!879901 (= e!577758 e!577763)))

(declare-fun b!879902 () Bool)

(declare-fun res!400176 () Bool)

(assert (=> b!879902 (=> (not res!400176) (not e!577759))))

(assert (=> b!879902 (= res!400176 (isEmpty!5660 (tail!1096 (_1!6121 lt!330483))))))

(declare-fun b!879903 () Bool)

(declare-fun derivativeStep!381 (Regex!2250 C!5070) Regex!2250)

(assert (=> b!879903 (= e!577761 (matchR!788 (derivativeStep!381 (regOne!5012 r!15766) (head!1534 (_1!6121 lt!330483))) (tail!1096 (_1!6121 lt!330483))))))

(assert (= (and d!276217 c!142207) b!879894))

(assert (= (and d!276217 (not c!142207)) b!879903))

(assert (= (and d!276217 c!142205) b!879899))

(assert (= (and d!276217 (not c!142205)) b!879895))

(assert (= (and b!879895 c!142206) b!879891))

(assert (= (and b!879895 (not c!142206)) b!879901))

(assert (= (and b!879901 (not res!400175)) b!879893))

(assert (= (and b!879893 res!400174) b!879892))

(assert (= (and b!879892 res!400173) b!879902))

(assert (= (and b!879902 res!400176) b!879898))

(assert (= (and b!879893 (not res!400178)) b!879897))

(assert (= (and b!879897 res!400172) b!879890))

(assert (= (and b!879890 (not res!400177)) b!879900))

(assert (= (and b!879900 (not res!400171)) b!879896))

(assert (= (or b!879899 b!879890 b!879892) bm!51271))

(declare-fun m!1128839 () Bool)

(assert (=> b!879900 m!1128839))

(assert (=> b!879900 m!1128839))

(declare-fun m!1128841 () Bool)

(assert (=> b!879900 m!1128841))

(declare-fun m!1128843 () Bool)

(assert (=> b!879894 m!1128843))

(declare-fun m!1128845 () Bool)

(assert (=> d!276217 m!1128845))

(assert (=> d!276217 m!1128789))

(declare-fun m!1128847 () Bool)

(assert (=> b!879903 m!1128847))

(assert (=> b!879903 m!1128847))

(declare-fun m!1128849 () Bool)

(assert (=> b!879903 m!1128849))

(assert (=> b!879903 m!1128839))

(assert (=> b!879903 m!1128849))

(assert (=> b!879903 m!1128839))

(declare-fun m!1128851 () Bool)

(assert (=> b!879903 m!1128851))

(assert (=> b!879902 m!1128839))

(assert (=> b!879902 m!1128839))

(assert (=> b!879902 m!1128841))

(assert (=> b!879898 m!1128847))

(assert (=> bm!51271 m!1128845))

(assert (=> b!879896 m!1128847))

(assert (=> b!879807 d!276217))

(declare-fun d!276221 () Bool)

(assert (=> d!276221 (= (isEmpty!5660 s!10566) (is-Nil!9464 s!10566))))

(assert (=> b!879806 d!276221))

(declare-fun bs!234311 () Bool)

(declare-fun b!879970 () Bool)

(assert (= bs!234311 (and b!879970 b!879805)))

(declare-fun lambda!26857 () Int)

(assert (=> bs!234311 (not (= lambda!26857 lambda!26843))))

(assert (=> bs!234311 (not (= lambda!26857 lambda!26844))))

(assert (=> b!879970 true))

(assert (=> b!879970 true))

(declare-fun bs!234312 () Bool)

(declare-fun b!879971 () Bool)

(assert (= bs!234312 (and b!879971 b!879805)))

(declare-fun lambda!26858 () Int)

(assert (=> bs!234312 (not (= lambda!26858 lambda!26843))))

(assert (=> bs!234312 (= (= (regTwo!5012 r!15766) EmptyExpr!2250) (= lambda!26858 lambda!26844))))

(declare-fun bs!234313 () Bool)

(assert (= bs!234313 (and b!879971 b!879970)))

(assert (=> bs!234313 (not (= lambda!26858 lambda!26857))))

(assert (=> b!879971 true))

(assert (=> b!879971 true))

(declare-fun b!879963 () Bool)

(declare-fun e!577808 () Bool)

(declare-fun e!577810 () Bool)

(assert (=> b!879963 (= e!577808 e!577810)))

(declare-fun res!400211 () Bool)

(assert (=> b!879963 (= res!400211 (matchRSpec!51 (regOne!5013 r!15766) s!10566))))

(assert (=> b!879963 (=> res!400211 e!577810)))

(declare-fun d!276223 () Bool)

(declare-fun c!142224 () Bool)

(assert (=> d!276223 (= c!142224 (is-EmptyExpr!2250 r!15766))))

(declare-fun e!577806 () Bool)

(assert (=> d!276223 (= (matchRSpec!51 r!15766 s!10566) e!577806)))

(declare-fun b!879964 () Bool)

(declare-fun e!577804 () Bool)

(assert (=> b!879964 (= e!577806 e!577804)))

(declare-fun res!400210 () Bool)

(assert (=> b!879964 (= res!400210 (not (is-EmptyLang!2250 r!15766)))))

(assert (=> b!879964 (=> (not res!400210) (not e!577804))))

(declare-fun b!879965 () Bool)

(declare-fun e!577807 () Bool)

(assert (=> b!879965 (= e!577807 (= s!10566 (Cons!9464 (c!142197 r!15766) Nil!9464)))))

(declare-fun b!879966 () Bool)

(declare-fun e!577809 () Bool)

(assert (=> b!879966 (= e!577808 e!577809)))

(declare-fun c!142225 () Bool)

(assert (=> b!879966 (= c!142225 (is-Star!2250 r!15766))))

(declare-fun bm!51285 () Bool)

(declare-fun call!51290 () Bool)

(assert (=> bm!51285 (= call!51290 (isEmpty!5660 s!10566))))

(declare-fun b!879967 () Bool)

(declare-fun c!142223 () Bool)

(assert (=> b!879967 (= c!142223 (is-Union!2250 r!15766))))

(assert (=> b!879967 (= e!577807 e!577808)))

(declare-fun b!879968 () Bool)

(assert (=> b!879968 (= e!577806 call!51290)))

(declare-fun b!879969 () Bool)

(declare-fun res!400212 () Bool)

(declare-fun e!577805 () Bool)

(assert (=> b!879969 (=> res!400212 e!577805)))

(assert (=> b!879969 (= res!400212 call!51290)))

(assert (=> b!879969 (= e!577809 e!577805)))

(declare-fun call!51291 () Bool)

(declare-fun bm!51286 () Bool)

(assert (=> bm!51286 (= call!51291 (Exists!47 (ite c!142225 lambda!26857 lambda!26858)))))

(assert (=> b!879970 (= e!577805 call!51291)))

(assert (=> b!879971 (= e!577809 call!51291)))

(declare-fun b!879972 () Bool)

(declare-fun c!142222 () Bool)

(assert (=> b!879972 (= c!142222 (is-ElementMatch!2250 r!15766))))

(assert (=> b!879972 (= e!577804 e!577807)))

(declare-fun b!879973 () Bool)

(assert (=> b!879973 (= e!577810 (matchRSpec!51 (regTwo!5013 r!15766) s!10566))))

(assert (= (and d!276223 c!142224) b!879968))

(assert (= (and d!276223 (not c!142224)) b!879964))

(assert (= (and b!879964 res!400210) b!879972))

(assert (= (and b!879972 c!142222) b!879965))

(assert (= (and b!879972 (not c!142222)) b!879967))

(assert (= (and b!879967 c!142223) b!879963))

(assert (= (and b!879967 (not c!142223)) b!879966))

(assert (= (and b!879963 (not res!400211)) b!879973))

(assert (= (and b!879966 c!142225) b!879969))

(assert (= (and b!879966 (not c!142225)) b!879971))

(assert (= (and b!879969 (not res!400212)) b!879970))

(assert (= (or b!879970 b!879971) bm!51286))

(assert (= (or b!879968 b!879969) bm!51285))

(declare-fun m!1128859 () Bool)

(assert (=> b!879963 m!1128859))

(assert (=> bm!51285 m!1128787))

(declare-fun m!1128861 () Bool)

(assert (=> bm!51286 m!1128861))

(declare-fun m!1128863 () Bool)

(assert (=> b!879973 m!1128863))

(assert (=> b!879800 d!276223))

(declare-fun b!879974 () Bool)

(declare-fun e!577813 () Bool)

(declare-fun e!577815 () Bool)

(assert (=> b!879974 (= e!577813 e!577815)))

(declare-fun res!400219 () Bool)

(assert (=> b!879974 (=> res!400219 e!577815)))

(declare-fun call!51292 () Bool)

(assert (=> b!879974 (= res!400219 call!51292)))

(declare-fun b!879975 () Bool)

(declare-fun e!577811 () Bool)

(declare-fun lt!330513 () Bool)

(assert (=> b!879975 (= e!577811 (not lt!330513))))

(declare-fun b!879976 () Bool)

(declare-fun res!400215 () Bool)

(declare-fun e!577812 () Bool)

(assert (=> b!879976 (=> (not res!400215) (not e!577812))))

(assert (=> b!879976 (= res!400215 (not call!51292))))

(declare-fun bm!51287 () Bool)

(assert (=> bm!51287 (= call!51292 (isEmpty!5660 s!10566))))

(declare-fun b!879977 () Bool)

(declare-fun res!400220 () Bool)

(declare-fun e!577816 () Bool)

(assert (=> b!879977 (=> res!400220 e!577816)))

(assert (=> b!879977 (= res!400220 e!577812)))

(declare-fun res!400216 () Bool)

(assert (=> b!879977 (=> (not res!400216) (not e!577812))))

(assert (=> b!879977 (= res!400216 lt!330513)))

(declare-fun d!276227 () Bool)

(declare-fun e!577817 () Bool)

(assert (=> d!276227 e!577817))

(declare-fun c!142226 () Bool)

(assert (=> d!276227 (= c!142226 (is-EmptyExpr!2250 r!15766))))

(declare-fun e!577814 () Bool)

(assert (=> d!276227 (= lt!330513 e!577814)))

(declare-fun c!142228 () Bool)

(assert (=> d!276227 (= c!142228 (isEmpty!5660 s!10566))))

(assert (=> d!276227 (validRegex!719 r!15766)))

(assert (=> d!276227 (= (matchR!788 r!15766 s!10566) lt!330513)))

(declare-fun b!879978 () Bool)

(assert (=> b!879978 (= e!577814 (nullable!568 r!15766))))

(declare-fun b!879979 () Bool)

(assert (=> b!879979 (= e!577817 e!577811)))

(declare-fun c!142227 () Bool)

(assert (=> b!879979 (= c!142227 (is-EmptyLang!2250 r!15766))))

(declare-fun b!879980 () Bool)

(assert (=> b!879980 (= e!577815 (not (= (head!1534 s!10566) (c!142197 r!15766))))))

(declare-fun b!879981 () Bool)

(assert (=> b!879981 (= e!577816 e!577813)))

(declare-fun res!400214 () Bool)

(assert (=> b!879981 (=> (not res!400214) (not e!577813))))

(assert (=> b!879981 (= res!400214 (not lt!330513))))

(declare-fun b!879982 () Bool)

(assert (=> b!879982 (= e!577812 (= (head!1534 s!10566) (c!142197 r!15766)))))

(declare-fun b!879983 () Bool)

(assert (=> b!879983 (= e!577817 (= lt!330513 call!51292))))

(declare-fun b!879984 () Bool)

(declare-fun res!400213 () Bool)

(assert (=> b!879984 (=> res!400213 e!577815)))

(assert (=> b!879984 (= res!400213 (not (isEmpty!5660 (tail!1096 s!10566))))))

(declare-fun b!879985 () Bool)

(declare-fun res!400217 () Bool)

(assert (=> b!879985 (=> res!400217 e!577816)))

(assert (=> b!879985 (= res!400217 (not (is-ElementMatch!2250 r!15766)))))

(assert (=> b!879985 (= e!577811 e!577816)))

(declare-fun b!879986 () Bool)

(declare-fun res!400218 () Bool)

(assert (=> b!879986 (=> (not res!400218) (not e!577812))))

(assert (=> b!879986 (= res!400218 (isEmpty!5660 (tail!1096 s!10566)))))

(declare-fun b!879987 () Bool)

(assert (=> b!879987 (= e!577814 (matchR!788 (derivativeStep!381 r!15766 (head!1534 s!10566)) (tail!1096 s!10566)))))

(assert (= (and d!276227 c!142228) b!879978))

(assert (= (and d!276227 (not c!142228)) b!879987))

(assert (= (and d!276227 c!142226) b!879983))

(assert (= (and d!276227 (not c!142226)) b!879979))

(assert (= (and b!879979 c!142227) b!879975))

(assert (= (and b!879979 (not c!142227)) b!879985))

(assert (= (and b!879985 (not res!400217)) b!879977))

(assert (= (and b!879977 res!400216) b!879976))

(assert (= (and b!879976 res!400215) b!879986))

(assert (= (and b!879986 res!400218) b!879982))

(assert (= (and b!879977 (not res!400220)) b!879981))

(assert (= (and b!879981 res!400214) b!879974))

(assert (= (and b!879974 (not res!400219)) b!879984))

(assert (= (and b!879984 (not res!400213)) b!879980))

(assert (= (or b!879983 b!879974 b!879976) bm!51287))

(declare-fun m!1128865 () Bool)

(assert (=> b!879984 m!1128865))

(assert (=> b!879984 m!1128865))

(declare-fun m!1128867 () Bool)

(assert (=> b!879984 m!1128867))

(declare-fun m!1128869 () Bool)

(assert (=> b!879978 m!1128869))

(assert (=> d!276227 m!1128787))

(assert (=> d!276227 m!1128779))

(declare-fun m!1128871 () Bool)

(assert (=> b!879987 m!1128871))

(assert (=> b!879987 m!1128871))

(declare-fun m!1128873 () Bool)

(assert (=> b!879987 m!1128873))

(assert (=> b!879987 m!1128865))

(assert (=> b!879987 m!1128873))

(assert (=> b!879987 m!1128865))

(declare-fun m!1128875 () Bool)

(assert (=> b!879987 m!1128875))

(assert (=> b!879986 m!1128865))

(assert (=> b!879986 m!1128865))

(assert (=> b!879986 m!1128867))

(assert (=> b!879982 m!1128871))

(assert (=> bm!51287 m!1128787))

(assert (=> b!879980 m!1128871))

(assert (=> b!879800 d!276227))

(declare-fun d!276229 () Bool)

(assert (=> d!276229 (= (matchR!788 r!15766 s!10566) (matchRSpec!51 r!15766 s!10566))))

(declare-fun lt!330516 () Unit!14079)

(declare-fun choose!5198 (Regex!2250 List!9480) Unit!14079)

(assert (=> d!276229 (= lt!330516 (choose!5198 r!15766 s!10566))))

(assert (=> d!276229 (validRegex!719 r!15766)))

(assert (=> d!276229 (= (mainMatchTheorem!51 r!15766 s!10566) lt!330516)))

(declare-fun bs!234314 () Bool)

(assert (= bs!234314 d!276229))

(assert (=> bs!234314 m!1128783))

(assert (=> bs!234314 m!1128781))

(declare-fun m!1128877 () Bool)

(assert (=> bs!234314 m!1128877))

(assert (=> bs!234314 m!1128779))

(assert (=> b!879800 d!276229))

(declare-fun b!880028 () Bool)

(declare-fun e!577847 () Bool)

(declare-fun call!51301 () Bool)

(assert (=> b!880028 (= e!577847 call!51301)))

(declare-fun b!880029 () Bool)

(declare-fun e!577850 () Bool)

(declare-fun call!51299 () Bool)

(assert (=> b!880029 (= e!577850 call!51299)))

(declare-fun b!880030 () Bool)

(declare-fun e!577846 () Bool)

(assert (=> b!880030 (= e!577846 call!51299)))

(declare-fun b!880031 () Bool)

(declare-fun e!577849 () Bool)

(declare-fun e!577848 () Bool)

(assert (=> b!880031 (= e!577849 e!577848)))

(declare-fun c!142242 () Bool)

(assert (=> b!880031 (= c!142242 (is-Star!2250 r!15766))))

(declare-fun b!880032 () Bool)

(declare-fun res!400241 () Bool)

(assert (=> b!880032 (=> (not res!400241) (not e!577846))))

(declare-fun call!51300 () Bool)

(assert (=> b!880032 (= res!400241 call!51300)))

(declare-fun e!577851 () Bool)

(assert (=> b!880032 (= e!577851 e!577846)))

(declare-fun d!276231 () Bool)

(declare-fun res!400240 () Bool)

(assert (=> d!276231 (=> res!400240 e!577849)))

(assert (=> d!276231 (= res!400240 (is-ElementMatch!2250 r!15766))))

(assert (=> d!276231 (= (validRegex!719 r!15766) e!577849)))

(declare-fun b!880033 () Bool)

(assert (=> b!880033 (= e!577848 e!577847)))

(declare-fun res!400238 () Bool)

(assert (=> b!880033 (= res!400238 (not (nullable!568 (reg!2579 r!15766))))))

(assert (=> b!880033 (=> (not res!400238) (not e!577847))))

(declare-fun b!880034 () Bool)

(assert (=> b!880034 (= e!577848 e!577851)))

(declare-fun c!142241 () Bool)

(assert (=> b!880034 (= c!142241 (is-Union!2250 r!15766))))

(declare-fun b!880035 () Bool)

(declare-fun res!400237 () Bool)

(declare-fun e!577852 () Bool)

(assert (=> b!880035 (=> res!400237 e!577852)))

(assert (=> b!880035 (= res!400237 (not (is-Concat!4083 r!15766)))))

(assert (=> b!880035 (= e!577851 e!577852)))

(declare-fun bm!51294 () Bool)

(assert (=> bm!51294 (= call!51299 call!51301)))

(declare-fun bm!51295 () Bool)

(assert (=> bm!51295 (= call!51301 (validRegex!719 (ite c!142242 (reg!2579 r!15766) (ite c!142241 (regTwo!5013 r!15766) (regTwo!5012 r!15766)))))))

(declare-fun bm!51296 () Bool)

(assert (=> bm!51296 (= call!51300 (validRegex!719 (ite c!142241 (regOne!5013 r!15766) (regOne!5012 r!15766))))))

(declare-fun b!880036 () Bool)

(assert (=> b!880036 (= e!577852 e!577850)))

(declare-fun res!400239 () Bool)

(assert (=> b!880036 (=> (not res!400239) (not e!577850))))

(assert (=> b!880036 (= res!400239 call!51300)))

(assert (= (and d!276231 (not res!400240)) b!880031))

(assert (= (and b!880031 c!142242) b!880033))

(assert (= (and b!880031 (not c!142242)) b!880034))

(assert (= (and b!880033 res!400238) b!880028))

(assert (= (and b!880034 c!142241) b!880032))

(assert (= (and b!880034 (not c!142241)) b!880035))

(assert (= (and b!880032 res!400241) b!880030))

(assert (= (and b!880035 (not res!400237)) b!880036))

(assert (= (and b!880036 res!400239) b!880029))

(assert (= (or b!880030 b!880029) bm!51294))

(assert (= (or b!880032 b!880036) bm!51296))

(assert (= (or b!880028 bm!51294) bm!51295))

(declare-fun m!1128879 () Bool)

(assert (=> b!880033 m!1128879))

(declare-fun m!1128881 () Bool)

(assert (=> bm!51295 m!1128881))

(declare-fun m!1128883 () Bool)

(assert (=> bm!51296 m!1128883))

(assert (=> start!79508 d!276231))

(declare-fun b!880065 () Bool)

(declare-fun e!577868 () Bool)

(assert (=> b!880065 (= e!577868 (matchR!788 EmptyExpr!2250 s!10566))))

(declare-fun b!880066 () Bool)

(declare-fun lt!330523 () Unit!14079)

(declare-fun lt!330525 () Unit!14079)

(assert (=> b!880066 (= lt!330523 lt!330525)))

(declare-fun ++!2463 (List!9480 List!9480) List!9480)

(assert (=> b!880066 (= (++!2463 (++!2463 Nil!9464 (Cons!9464 (h!14865 s!10566) Nil!9464)) (t!100526 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!93 (List!9480 C!5070 List!9480 List!9480) Unit!14079)

(assert (=> b!880066 (= lt!330525 (lemmaMoveElementToOtherListKeepsConcatEq!93 Nil!9464 (h!14865 s!10566) (t!100526 s!10566) s!10566))))

(declare-fun e!577867 () Option!1937)

(assert (=> b!880066 (= e!577867 (findConcatSeparation!43 (regOne!5012 r!15766) EmptyExpr!2250 (++!2463 Nil!9464 (Cons!9464 (h!14865 s!10566) Nil!9464)) (t!100526 s!10566) s!10566))))

(declare-fun b!880067 () Bool)

(assert (=> b!880067 (= e!577867 None!1936)))

(declare-fun b!880068 () Bool)

(declare-fun res!400263 () Bool)

(declare-fun e!577871 () Bool)

(assert (=> b!880068 (=> (not res!400263) (not e!577871))))

(declare-fun lt!330524 () Option!1937)

(assert (=> b!880068 (= res!400263 (matchR!788 (regOne!5012 r!15766) (_1!6121 (get!2933 lt!330524))))))

(declare-fun b!880069 () Bool)

(declare-fun res!400265 () Bool)

(assert (=> b!880069 (=> (not res!400265) (not e!577871))))

(assert (=> b!880069 (= res!400265 (matchR!788 EmptyExpr!2250 (_2!6121 (get!2933 lt!330524))))))

(declare-fun b!880070 () Bool)

(declare-fun e!577870 () Bool)

(assert (=> b!880070 (= e!577870 (not (isDefined!1579 lt!330524)))))

(declare-fun b!880071 () Bool)

(declare-fun e!577869 () Option!1937)

(assert (=> b!880071 (= e!577869 e!577867)))

(declare-fun c!142247 () Bool)

(assert (=> b!880071 (= c!142247 (is-Nil!9464 s!10566))))

(declare-fun b!880073 () Bool)

(assert (=> b!880073 (= e!577869 (Some!1936 (tuple2!10591 Nil!9464 s!10566)))))

(declare-fun b!880072 () Bool)

(assert (=> b!880072 (= e!577871 (= (++!2463 (_1!6121 (get!2933 lt!330524)) (_2!6121 (get!2933 lt!330524))) s!10566))))

(declare-fun d!276233 () Bool)

(assert (=> d!276233 e!577870))

(declare-fun res!400264 () Bool)

(assert (=> d!276233 (=> res!400264 e!577870)))

(assert (=> d!276233 (= res!400264 e!577871)))

(declare-fun res!400262 () Bool)

(assert (=> d!276233 (=> (not res!400262) (not e!577871))))

(assert (=> d!276233 (= res!400262 (isDefined!1579 lt!330524))))

(assert (=> d!276233 (= lt!330524 e!577869)))

(declare-fun c!142248 () Bool)

(assert (=> d!276233 (= c!142248 e!577868)))

(declare-fun res!400266 () Bool)

(assert (=> d!276233 (=> (not res!400266) (not e!577868))))

(assert (=> d!276233 (= res!400266 (matchR!788 (regOne!5012 r!15766) Nil!9464))))

(assert (=> d!276233 (validRegex!719 (regOne!5012 r!15766))))

(assert (=> d!276233 (= (findConcatSeparation!43 (regOne!5012 r!15766) EmptyExpr!2250 Nil!9464 s!10566 s!10566) lt!330524)))

(assert (= (and d!276233 res!400266) b!880065))

(assert (= (and d!276233 c!142248) b!880073))

(assert (= (and d!276233 (not c!142248)) b!880071))

(assert (= (and b!880071 c!142247) b!880067))

(assert (= (and b!880071 (not c!142247)) b!880066))

(assert (= (and d!276233 res!400262) b!880068))

(assert (= (and b!880068 res!400263) b!880069))

(assert (= (and b!880069 res!400265) b!880072))

(assert (= (and d!276233 (not res!400264)) b!880070))

(declare-fun m!1128885 () Bool)

(assert (=> b!880066 m!1128885))

(assert (=> b!880066 m!1128885))

(declare-fun m!1128887 () Bool)

(assert (=> b!880066 m!1128887))

(declare-fun m!1128889 () Bool)

(assert (=> b!880066 m!1128889))

(assert (=> b!880066 m!1128885))

(declare-fun m!1128891 () Bool)

(assert (=> b!880066 m!1128891))

(declare-fun m!1128893 () Bool)

(assert (=> b!880072 m!1128893))

(declare-fun m!1128895 () Bool)

(assert (=> b!880072 m!1128895))

(assert (=> b!880068 m!1128893))

(declare-fun m!1128897 () Bool)

(assert (=> b!880068 m!1128897))

(declare-fun m!1128899 () Bool)

(assert (=> b!880070 m!1128899))

(declare-fun m!1128901 () Bool)

(assert (=> b!880065 m!1128901))

(assert (=> d!276233 m!1128899))

(declare-fun m!1128903 () Bool)

(assert (=> d!276233 m!1128903))

(assert (=> d!276233 m!1128789))

(assert (=> b!880069 m!1128893))

(declare-fun m!1128905 () Bool)

(assert (=> b!880069 m!1128905))

(assert (=> b!879805 d!276233))

(declare-fun d!276235 () Bool)

(assert (=> d!276235 (= (isEmpty!5660 (_2!6121 lt!330483)) (is-Nil!9464 (_2!6121 lt!330483)))))

(assert (=> b!879805 d!276235))

(declare-fun d!276237 () Bool)

(declare-fun choose!5199 (Int) Bool)

(assert (=> d!276237 (= (Exists!47 lambda!26843) (choose!5199 lambda!26843))))

(declare-fun bs!234315 () Bool)

(assert (= bs!234315 d!276237))

(declare-fun m!1128907 () Bool)

(assert (=> bs!234315 m!1128907))

(assert (=> b!879805 d!276237))

(declare-fun d!276239 () Bool)

(assert (=> d!276239 (= (Exists!47 lambda!26844) (choose!5199 lambda!26844))))

(declare-fun bs!234316 () Bool)

(assert (= bs!234316 d!276239))

(declare-fun m!1128909 () Bool)

(assert (=> bs!234316 m!1128909))

(assert (=> b!879805 d!276239))

(declare-fun bs!234318 () Bool)

(declare-fun d!276241 () Bool)

(assert (= bs!234318 (and d!276241 b!879805)))

(declare-fun lambda!26866 () Int)

(assert (=> bs!234318 (= lambda!26866 lambda!26843)))

(assert (=> bs!234318 (not (= lambda!26866 lambda!26844))))

(declare-fun bs!234320 () Bool)

(assert (= bs!234320 (and d!276241 b!879970)))

(assert (=> bs!234320 (not (= lambda!26866 lambda!26857))))

(declare-fun bs!234321 () Bool)

(assert (= bs!234321 (and d!276241 b!879971)))

(assert (=> bs!234321 (not (= lambda!26866 lambda!26858))))

(assert (=> d!276241 true))

(assert (=> d!276241 true))

(assert (=> d!276241 true))

(assert (=> d!276241 (= (isDefined!1579 (findConcatSeparation!43 (regOne!5012 r!15766) EmptyExpr!2250 Nil!9464 s!10566 s!10566)) (Exists!47 lambda!26866))))

(declare-fun lt!330528 () Unit!14079)

(declare-fun choose!5200 (Regex!2250 Regex!2250 List!9480) Unit!14079)

(assert (=> d!276241 (= lt!330528 (choose!5200 (regOne!5012 r!15766) EmptyExpr!2250 s!10566))))

(assert (=> d!276241 (validRegex!719 (regOne!5012 r!15766))))

(assert (=> d!276241 (= (lemmaFindConcatSeparationEquivalentToExists!43 (regOne!5012 r!15766) EmptyExpr!2250 s!10566) lt!330528)))

(declare-fun bs!234322 () Bool)

(assert (= bs!234322 d!276241))

(assert (=> bs!234322 m!1128763))

(declare-fun m!1128911 () Bool)

(assert (=> bs!234322 m!1128911))

(assert (=> bs!234322 m!1128789))

(assert (=> bs!234322 m!1128763))

(declare-fun m!1128913 () Bool)

(assert (=> bs!234322 m!1128913))

(declare-fun m!1128915 () Bool)

(assert (=> bs!234322 m!1128915))

(assert (=> b!879805 d!276241))

(declare-fun d!276243 () Bool)

(assert (=> d!276243 (= (get!2933 lt!330478) (v!19353 lt!330478))))

(assert (=> b!879805 d!276243))

(declare-fun bs!234325 () Bool)

(declare-fun d!276245 () Bool)

(assert (= bs!234325 (and d!276245 b!879971)))

(declare-fun lambda!26872 () Int)

(assert (=> bs!234325 (not (= lambda!26872 lambda!26858))))

(declare-fun bs!234326 () Bool)

(assert (= bs!234326 (and d!276245 d!276241)))

(assert (=> bs!234326 (= lambda!26872 lambda!26866)))

(declare-fun bs!234327 () Bool)

(assert (= bs!234327 (and d!276245 b!879805)))

(assert (=> bs!234327 (not (= lambda!26872 lambda!26844))))

(declare-fun bs!234328 () Bool)

(assert (= bs!234328 (and d!276245 b!879970)))

(assert (=> bs!234328 (not (= lambda!26872 lambda!26857))))

(assert (=> bs!234327 (= lambda!26872 lambda!26843)))

(assert (=> d!276245 true))

(assert (=> d!276245 true))

(assert (=> d!276245 true))

(declare-fun lambda!26873 () Int)

(assert (=> bs!234325 (= (= EmptyExpr!2250 (regTwo!5012 r!15766)) (= lambda!26873 lambda!26858))))

(assert (=> bs!234326 (not (= lambda!26873 lambda!26866))))

(assert (=> bs!234327 (= lambda!26873 lambda!26844)))

(declare-fun bs!234329 () Bool)

(assert (= bs!234329 d!276245))

(assert (=> bs!234329 (not (= lambda!26873 lambda!26872))))

(assert (=> bs!234328 (not (= lambda!26873 lambda!26857))))

(assert (=> bs!234327 (not (= lambda!26873 lambda!26843))))

(assert (=> d!276245 true))

(assert (=> d!276245 true))

(assert (=> d!276245 true))

(assert (=> d!276245 (= (Exists!47 lambda!26872) (Exists!47 lambda!26873))))

(declare-fun lt!330534 () Unit!14079)

(declare-fun choose!5201 (Regex!2250 Regex!2250 List!9480) Unit!14079)

(assert (=> d!276245 (= lt!330534 (choose!5201 (regOne!5012 r!15766) EmptyExpr!2250 s!10566))))

(assert (=> d!276245 (validRegex!719 (regOne!5012 r!15766))))

(assert (=> d!276245 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!39 (regOne!5012 r!15766) EmptyExpr!2250 s!10566) lt!330534)))

(declare-fun m!1128927 () Bool)

(assert (=> bs!234329 m!1128927))

(declare-fun m!1128929 () Bool)

(assert (=> bs!234329 m!1128929))

(declare-fun m!1128931 () Bool)

(assert (=> bs!234329 m!1128931))

(assert (=> bs!234329 m!1128789))

(assert (=> b!879805 d!276245))

(declare-fun d!276251 () Bool)

(declare-fun isEmpty!5662 (Option!1937) Bool)

(assert (=> d!276251 (= (isDefined!1579 lt!330478) (not (isEmpty!5662 lt!330478)))))

(declare-fun bs!234332 () Bool)

(assert (= bs!234332 d!276251))

(declare-fun m!1128933 () Bool)

(assert (=> bs!234332 m!1128933))

(assert (=> b!879805 d!276251))

(declare-fun b!880108 () Bool)

(declare-fun e!577893 () Bool)

(declare-fun call!51312 () Bool)

(assert (=> b!880108 (= e!577893 call!51312)))

(declare-fun b!880109 () Bool)

(declare-fun e!577896 () Bool)

(declare-fun call!51310 () Bool)

(assert (=> b!880109 (= e!577896 call!51310)))

(declare-fun b!880110 () Bool)

(declare-fun e!577892 () Bool)

(assert (=> b!880110 (= e!577892 call!51310)))

(declare-fun b!880111 () Bool)

(declare-fun e!577895 () Bool)

(declare-fun e!577894 () Bool)

(assert (=> b!880111 (= e!577895 e!577894)))

(declare-fun c!142258 () Bool)

(assert (=> b!880111 (= c!142258 (is-Star!2250 (regOne!5012 r!15766)))))

(declare-fun b!880112 () Bool)

(declare-fun res!400289 () Bool)

(assert (=> b!880112 (=> (not res!400289) (not e!577892))))

(declare-fun call!51311 () Bool)

(assert (=> b!880112 (= res!400289 call!51311)))

(declare-fun e!577897 () Bool)

(assert (=> b!880112 (= e!577897 e!577892)))

(declare-fun d!276253 () Bool)

(declare-fun res!400288 () Bool)

(assert (=> d!276253 (=> res!400288 e!577895)))

(assert (=> d!276253 (= res!400288 (is-ElementMatch!2250 (regOne!5012 r!15766)))))

(assert (=> d!276253 (= (validRegex!719 (regOne!5012 r!15766)) e!577895)))

(declare-fun b!880113 () Bool)

(assert (=> b!880113 (= e!577894 e!577893)))

(declare-fun res!400286 () Bool)

(assert (=> b!880113 (= res!400286 (not (nullable!568 (reg!2579 (regOne!5012 r!15766)))))))

(assert (=> b!880113 (=> (not res!400286) (not e!577893))))

(declare-fun b!880114 () Bool)

(assert (=> b!880114 (= e!577894 e!577897)))

(declare-fun c!142257 () Bool)

(assert (=> b!880114 (= c!142257 (is-Union!2250 (regOne!5012 r!15766)))))

(declare-fun b!880115 () Bool)

(declare-fun res!400285 () Bool)

(declare-fun e!577898 () Bool)

(assert (=> b!880115 (=> res!400285 e!577898)))

(assert (=> b!880115 (= res!400285 (not (is-Concat!4083 (regOne!5012 r!15766))))))

(assert (=> b!880115 (= e!577897 e!577898)))

(declare-fun bm!51305 () Bool)

(assert (=> bm!51305 (= call!51310 call!51312)))

(declare-fun bm!51306 () Bool)

(assert (=> bm!51306 (= call!51312 (validRegex!719 (ite c!142258 (reg!2579 (regOne!5012 r!15766)) (ite c!142257 (regTwo!5013 (regOne!5012 r!15766)) (regTwo!5012 (regOne!5012 r!15766))))))))

(declare-fun bm!51307 () Bool)

(assert (=> bm!51307 (= call!51311 (validRegex!719 (ite c!142257 (regOne!5013 (regOne!5012 r!15766)) (regOne!5012 (regOne!5012 r!15766)))))))

(declare-fun b!880116 () Bool)

(assert (=> b!880116 (= e!577898 e!577896)))

(declare-fun res!400287 () Bool)

(assert (=> b!880116 (=> (not res!400287) (not e!577896))))

(assert (=> b!880116 (= res!400287 call!51311)))

(assert (= (and d!276253 (not res!400288)) b!880111))

(assert (= (and b!880111 c!142258) b!880113))

(assert (= (and b!880111 (not c!142258)) b!880114))

(assert (= (and b!880113 res!400286) b!880108))

(assert (= (and b!880114 c!142257) b!880112))

(assert (= (and b!880114 (not c!142257)) b!880115))

(assert (= (and b!880112 res!400289) b!880110))

(assert (= (and b!880115 (not res!400285)) b!880116))

(assert (= (and b!880116 res!400287) b!880109))

(assert (= (or b!880110 b!880109) bm!51305))

(assert (= (or b!880112 b!880116) bm!51307))

(assert (= (or b!880108 bm!51305) bm!51306))

(declare-fun m!1128935 () Bool)

(assert (=> b!880113 m!1128935))

(declare-fun m!1128937 () Bool)

(assert (=> bm!51306 m!1128937))

(declare-fun m!1128939 () Bool)

(assert (=> bm!51307 m!1128939))

(assert (=> b!879799 d!276253))

(declare-fun bs!234334 () Bool)

(declare-fun b!880124 () Bool)

(assert (= bs!234334 (and b!880124 b!879971)))

(declare-fun lambda!26876 () Int)

(assert (=> bs!234334 (not (= lambda!26876 lambda!26858))))

(declare-fun bs!234335 () Bool)

(assert (= bs!234335 (and b!880124 d!276241)))

(assert (=> bs!234335 (not (= lambda!26876 lambda!26866))))

(declare-fun bs!234337 () Bool)

(assert (= bs!234337 (and b!880124 b!879805)))

(assert (=> bs!234337 (not (= lambda!26876 lambda!26844))))

(declare-fun bs!234338 () Bool)

(assert (= bs!234338 (and b!880124 d!276245)))

(assert (=> bs!234338 (not (= lambda!26876 lambda!26872))))

(declare-fun bs!234340 () Bool)

(assert (= bs!234340 (and b!880124 b!879970)))

(assert (=> bs!234340 (= (and (= (_1!6121 lt!330483) s!10566) (= (reg!2579 (regOne!5012 r!15766)) (reg!2579 r!15766)) (= (regOne!5012 r!15766) r!15766)) (= lambda!26876 lambda!26857))))

(assert (=> bs!234338 (not (= lambda!26876 lambda!26873))))

(assert (=> bs!234337 (not (= lambda!26876 lambda!26843))))

(assert (=> b!880124 true))

(assert (=> b!880124 true))

(declare-fun bs!234343 () Bool)

(declare-fun b!880125 () Bool)

(assert (= bs!234343 (and b!880125 b!880124)))

(declare-fun lambda!26877 () Int)

(assert (=> bs!234343 (not (= lambda!26877 lambda!26876))))

(declare-fun bs!234344 () Bool)

(assert (= bs!234344 (and b!880125 b!879971)))

(assert (=> bs!234344 (= (and (= (_1!6121 lt!330483) s!10566) (= (regOne!5012 (regOne!5012 r!15766)) (regOne!5012 r!15766)) (= (regTwo!5012 (regOne!5012 r!15766)) (regTwo!5012 r!15766))) (= lambda!26877 lambda!26858))))

(declare-fun bs!234345 () Bool)

(assert (= bs!234345 (and b!880125 d!276241)))

(assert (=> bs!234345 (not (= lambda!26877 lambda!26866))))

(declare-fun bs!234346 () Bool)

(assert (= bs!234346 (and b!880125 b!879805)))

(assert (=> bs!234346 (= (and (= (_1!6121 lt!330483) s!10566) (= (regOne!5012 (regOne!5012 r!15766)) (regOne!5012 r!15766)) (= (regTwo!5012 (regOne!5012 r!15766)) EmptyExpr!2250)) (= lambda!26877 lambda!26844))))

(declare-fun bs!234347 () Bool)

(assert (= bs!234347 (and b!880125 d!276245)))

(assert (=> bs!234347 (not (= lambda!26877 lambda!26872))))

(declare-fun bs!234348 () Bool)

(assert (= bs!234348 (and b!880125 b!879970)))

(assert (=> bs!234348 (not (= lambda!26877 lambda!26857))))

(assert (=> bs!234347 (= (and (= (_1!6121 lt!330483) s!10566) (= (regOne!5012 (regOne!5012 r!15766)) (regOne!5012 r!15766)) (= (regTwo!5012 (regOne!5012 r!15766)) EmptyExpr!2250)) (= lambda!26877 lambda!26873))))

(assert (=> bs!234346 (not (= lambda!26877 lambda!26843))))

(assert (=> b!880125 true))

(assert (=> b!880125 true))

(declare-fun b!880117 () Bool)

(declare-fun e!577903 () Bool)

(declare-fun e!577905 () Bool)

(assert (=> b!880117 (= e!577903 e!577905)))

(declare-fun res!400291 () Bool)

(assert (=> b!880117 (= res!400291 (matchRSpec!51 (regOne!5013 (regOne!5012 r!15766)) (_1!6121 lt!330483)))))

(assert (=> b!880117 (=> res!400291 e!577905)))

(declare-fun d!276255 () Bool)

(declare-fun c!142261 () Bool)

(assert (=> d!276255 (= c!142261 (is-EmptyExpr!2250 (regOne!5012 r!15766)))))

(declare-fun e!577901 () Bool)

(assert (=> d!276255 (= (matchRSpec!51 (regOne!5012 r!15766) (_1!6121 lt!330483)) e!577901)))

(declare-fun b!880118 () Bool)

(declare-fun e!577899 () Bool)

(assert (=> b!880118 (= e!577901 e!577899)))

(declare-fun res!400290 () Bool)

(assert (=> b!880118 (= res!400290 (not (is-EmptyLang!2250 (regOne!5012 r!15766))))))

(assert (=> b!880118 (=> (not res!400290) (not e!577899))))

(declare-fun b!880119 () Bool)

(declare-fun e!577902 () Bool)

(assert (=> b!880119 (= e!577902 (= (_1!6121 lt!330483) (Cons!9464 (c!142197 (regOne!5012 r!15766)) Nil!9464)))))

(declare-fun b!880120 () Bool)

(declare-fun e!577904 () Bool)

(assert (=> b!880120 (= e!577903 e!577904)))

(declare-fun c!142262 () Bool)

(assert (=> b!880120 (= c!142262 (is-Star!2250 (regOne!5012 r!15766)))))

(declare-fun bm!51308 () Bool)

(declare-fun call!51313 () Bool)

(assert (=> bm!51308 (= call!51313 (isEmpty!5660 (_1!6121 lt!330483)))))

(declare-fun b!880121 () Bool)

(declare-fun c!142260 () Bool)

(assert (=> b!880121 (= c!142260 (is-Union!2250 (regOne!5012 r!15766)))))

(assert (=> b!880121 (= e!577902 e!577903)))

(declare-fun b!880122 () Bool)

(assert (=> b!880122 (= e!577901 call!51313)))

(declare-fun b!880123 () Bool)

(declare-fun res!400292 () Bool)

(declare-fun e!577900 () Bool)

(assert (=> b!880123 (=> res!400292 e!577900)))

(assert (=> b!880123 (= res!400292 call!51313)))

(assert (=> b!880123 (= e!577904 e!577900)))

(declare-fun call!51314 () Bool)

(declare-fun bm!51309 () Bool)

(assert (=> bm!51309 (= call!51314 (Exists!47 (ite c!142262 lambda!26876 lambda!26877)))))

(assert (=> b!880124 (= e!577900 call!51314)))

(assert (=> b!880125 (= e!577904 call!51314)))

(declare-fun b!880126 () Bool)

(declare-fun c!142259 () Bool)

(assert (=> b!880126 (= c!142259 (is-ElementMatch!2250 (regOne!5012 r!15766)))))

(assert (=> b!880126 (= e!577899 e!577902)))

(declare-fun b!880127 () Bool)

(assert (=> b!880127 (= e!577905 (matchRSpec!51 (regTwo!5013 (regOne!5012 r!15766)) (_1!6121 lt!330483)))))

(assert (= (and d!276255 c!142261) b!880122))

(assert (= (and d!276255 (not c!142261)) b!880118))

(assert (= (and b!880118 res!400290) b!880126))

(assert (= (and b!880126 c!142259) b!880119))

(assert (= (and b!880126 (not c!142259)) b!880121))

(assert (= (and b!880121 c!142260) b!880117))

(assert (= (and b!880121 (not c!142260)) b!880120))

(assert (= (and b!880117 (not res!400291)) b!880127))

(assert (= (and b!880120 c!142262) b!880123))

(assert (= (and b!880120 (not c!142262)) b!880125))

(assert (= (and b!880123 (not res!400292)) b!880124))

(assert (= (or b!880124 b!880125) bm!51309))

(assert (= (or b!880122 b!880123) bm!51308))

(declare-fun m!1128945 () Bool)

(assert (=> b!880117 m!1128945))

(assert (=> bm!51308 m!1128845))

(declare-fun m!1128947 () Bool)

(assert (=> bm!51309 m!1128947))

(declare-fun m!1128949 () Bool)

(assert (=> b!880127 m!1128949))

(assert (=> b!879799 d!276255))

(declare-fun d!276257 () Bool)

(assert (=> d!276257 (= (matchR!788 (regOne!5012 r!15766) (_1!6121 lt!330483)) (matchRSpec!51 (regOne!5012 r!15766) (_1!6121 lt!330483)))))

(declare-fun lt!330535 () Unit!14079)

(assert (=> d!276257 (= lt!330535 (choose!5198 (regOne!5012 r!15766) (_1!6121 lt!330483)))))

(assert (=> d!276257 (validRegex!719 (regOne!5012 r!15766))))

(assert (=> d!276257 (= (mainMatchTheorem!51 (regOne!5012 r!15766) (_1!6121 lt!330483)) lt!330535)))

(declare-fun bs!234349 () Bool)

(assert (= bs!234349 d!276257))

(assert (=> bs!234349 m!1128777))

(assert (=> bs!234349 m!1128791))

(declare-fun m!1128953 () Bool)

(assert (=> bs!234349 m!1128953))

(assert (=> bs!234349 m!1128789))

(assert (=> b!879799 d!276257))

(declare-fun d!276261 () Bool)

(assert (=> d!276261 (= (matchR!788 (regOne!5012 r!15766) (_1!6121 lt!330483)) (matchR!788 (removeUselessConcat!11 (regOne!5012 r!15766)) (_1!6121 lt!330483)))))

(declare-fun lt!330538 () Unit!14079)

(declare-fun choose!5202 (Regex!2250 List!9480) Unit!14079)

(assert (=> d!276261 (= lt!330538 (choose!5202 (regOne!5012 r!15766) (_1!6121 lt!330483)))))

(assert (=> d!276261 (validRegex!719 (regOne!5012 r!15766))))

(assert (=> d!276261 (= (lemmaRemoveUselessConcatSound!7 (regOne!5012 r!15766) (_1!6121 lt!330483)) lt!330538)))

(declare-fun bs!234350 () Bool)

(assert (= bs!234350 d!276261))

(assert (=> bs!234350 m!1128777))

(assert (=> bs!234350 m!1128789))

(declare-fun m!1128955 () Bool)

(assert (=> bs!234350 m!1128955))

(assert (=> bs!234350 m!1128753))

(assert (=> bs!234350 m!1128755))

(assert (=> bs!234350 m!1128753))

(assert (=> b!879803 d!276261))

(declare-fun bm!51320 () Bool)

(declare-fun call!51329 () Regex!2250)

(declare-fun call!51325 () Regex!2250)

(assert (=> bm!51320 (= call!51329 call!51325)))

(declare-fun b!880154 () Bool)

(declare-fun e!577925 () Regex!2250)

(declare-fun call!51326 () Regex!2250)

(assert (=> b!880154 (= e!577925 (Union!2250 call!51326 call!51329))))

(declare-fun b!880155 () Bool)

(declare-fun e!577921 () Regex!2250)

(declare-fun call!51328 () Regex!2250)

(assert (=> b!880155 (= e!577921 call!51328)))

(declare-fun b!880156 () Bool)

(declare-fun e!577924 () Regex!2250)

(assert (=> b!880156 (= e!577924 (regOne!5012 r!15766))))

(declare-fun b!880157 () Bool)

(declare-fun e!577920 () Regex!2250)

(assert (=> b!880157 (= e!577920 (Concat!4083 call!51325 call!51326))))

(declare-fun bm!51321 () Bool)

(declare-fun call!51327 () Regex!2250)

(assert (=> bm!51321 (= call!51328 call!51327)))

(declare-fun d!276263 () Bool)

(declare-fun e!577922 () Bool)

(assert (=> d!276263 e!577922))

(declare-fun res!400295 () Bool)

(assert (=> d!276263 (=> (not res!400295) (not e!577922))))

(declare-fun lt!330543 () Regex!2250)

(assert (=> d!276263 (= res!400295 (validRegex!719 lt!330543))))

(declare-fun e!577923 () Regex!2250)

(assert (=> d!276263 (= lt!330543 e!577923)))

(declare-fun c!142277 () Bool)

(assert (=> d!276263 (= c!142277 (and (is-Concat!4083 (regOne!5012 r!15766)) (is-EmptyExpr!2250 (regOne!5012 (regOne!5012 r!15766)))))))

(assert (=> d!276263 (validRegex!719 (regOne!5012 r!15766))))

(assert (=> d!276263 (= (removeUselessConcat!11 (regOne!5012 r!15766)) lt!330543)))

(declare-fun b!880158 () Bool)

(assert (=> b!880158 (= e!577923 call!51327)))

(declare-fun b!880159 () Bool)

(assert (=> b!880159 (= e!577920 e!577925)))

(declare-fun c!142276 () Bool)

(assert (=> b!880159 (= c!142276 (is-Union!2250 (regOne!5012 r!15766)))))

(declare-fun bm!51322 () Bool)

(declare-fun c!142279 () Bool)

(declare-fun c!142278 () Bool)

(assert (=> bm!51322 (= call!51327 (removeUselessConcat!11 (ite c!142277 (regTwo!5012 (regOne!5012 r!15766)) (ite c!142278 (regOne!5012 (regOne!5012 r!15766)) (ite c!142279 (regTwo!5012 (regOne!5012 r!15766)) (regOne!5013 (regOne!5012 r!15766)))))))))

(declare-fun bm!51323 () Bool)

(assert (=> bm!51323 (= call!51326 call!51328)))

(declare-fun b!880160 () Bool)

(assert (=> b!880160 (= e!577924 (Star!2250 call!51329))))

(declare-fun b!880161 () Bool)

(assert (=> b!880161 (= e!577922 (= (nullable!568 lt!330543) (nullable!568 (regOne!5012 r!15766))))))

(declare-fun bm!51324 () Bool)

(assert (=> bm!51324 (= call!51325 (removeUselessConcat!11 (ite c!142279 (regOne!5012 (regOne!5012 r!15766)) (ite c!142276 (regTwo!5013 (regOne!5012 r!15766)) (reg!2579 (regOne!5012 r!15766))))))))

(declare-fun b!880162 () Bool)

(assert (=> b!880162 (= c!142279 (is-Concat!4083 (regOne!5012 r!15766)))))

(assert (=> b!880162 (= e!577921 e!577920)))

(declare-fun b!880163 () Bool)

(assert (=> b!880163 (= e!577923 e!577921)))

(assert (=> b!880163 (= c!142278 (and (is-Concat!4083 (regOne!5012 r!15766)) (is-EmptyExpr!2250 (regTwo!5012 (regOne!5012 r!15766)))))))

(declare-fun b!880164 () Bool)

(declare-fun c!142275 () Bool)

(assert (=> b!880164 (= c!142275 (is-Star!2250 (regOne!5012 r!15766)))))

(assert (=> b!880164 (= e!577925 e!577924)))

(assert (= (and d!276263 c!142277) b!880158))

(assert (= (and d!276263 (not c!142277)) b!880163))

(assert (= (and b!880163 c!142278) b!880155))

(assert (= (and b!880163 (not c!142278)) b!880162))

(assert (= (and b!880162 c!142279) b!880157))

(assert (= (and b!880162 (not c!142279)) b!880159))

(assert (= (and b!880159 c!142276) b!880154))

(assert (= (and b!880159 (not c!142276)) b!880164))

(assert (= (and b!880164 c!142275) b!880160))

(assert (= (and b!880164 (not c!142275)) b!880156))

(assert (= (or b!880154 b!880160) bm!51320))

(assert (= (or b!880157 b!880154) bm!51323))

(assert (= (or b!880157 bm!51320) bm!51324))

(assert (= (or b!880155 bm!51323) bm!51321))

(assert (= (or b!880158 bm!51321) bm!51322))

(assert (= (and d!276263 res!400295) b!880161))

(declare-fun m!1128957 () Bool)

(assert (=> d!276263 m!1128957))

(assert (=> d!276263 m!1128789))

(declare-fun m!1128959 () Bool)

(assert (=> bm!51322 m!1128959))

(declare-fun m!1128961 () Bool)

(assert (=> b!880161 m!1128961))

(assert (=> b!880161 m!1128843))

(declare-fun m!1128963 () Bool)

(assert (=> bm!51324 m!1128963))

(assert (=> b!879803 d!276263))

(declare-fun b!880176 () Bool)

(declare-fun e!577934 () Bool)

(declare-fun e!577938 () Bool)

(assert (=> b!880176 (= e!577934 e!577938)))

(declare-fun res!400308 () Bool)

(assert (=> b!880176 (=> res!400308 e!577938)))

(declare-fun call!51330 () Bool)

(assert (=> b!880176 (= res!400308 call!51330)))

(declare-fun b!880177 () Bool)

(declare-fun e!577932 () Bool)

(declare-fun lt!330544 () Bool)

(assert (=> b!880177 (= e!577932 (not lt!330544))))

(declare-fun b!880178 () Bool)

(declare-fun res!400302 () Bool)

(declare-fun e!577933 () Bool)

(assert (=> b!880178 (=> (not res!400302) (not e!577933))))

(assert (=> b!880178 (= res!400302 (not call!51330))))

(declare-fun bm!51325 () Bool)

(assert (=> bm!51325 (= call!51330 (isEmpty!5660 (_1!6121 lt!330483)))))

(declare-fun b!880180 () Bool)

(declare-fun res!400309 () Bool)

(declare-fun e!577939 () Bool)

(assert (=> b!880180 (=> res!400309 e!577939)))

(assert (=> b!880180 (= res!400309 e!577933)))

(declare-fun res!400303 () Bool)

(assert (=> b!880180 (=> (not res!400303) (not e!577933))))

(assert (=> b!880180 (= res!400303 lt!330544)))

(declare-fun d!276265 () Bool)

(declare-fun e!577940 () Bool)

(assert (=> d!276265 e!577940))

(declare-fun c!142284 () Bool)

(assert (=> d!276265 (= c!142284 (is-EmptyExpr!2250 (removeUselessConcat!11 (regOne!5012 r!15766))))))

(declare-fun e!577937 () Bool)

(assert (=> d!276265 (= lt!330544 e!577937)))

(declare-fun c!142286 () Bool)

(assert (=> d!276265 (= c!142286 (isEmpty!5660 (_1!6121 lt!330483)))))

(assert (=> d!276265 (validRegex!719 (removeUselessConcat!11 (regOne!5012 r!15766)))))

(assert (=> d!276265 (= (matchR!788 (removeUselessConcat!11 (regOne!5012 r!15766)) (_1!6121 lt!330483)) lt!330544)))

(declare-fun b!880181 () Bool)

(assert (=> b!880181 (= e!577937 (nullable!568 (removeUselessConcat!11 (regOne!5012 r!15766))))))

(declare-fun b!880182 () Bool)

(assert (=> b!880182 (= e!577940 e!577932)))

(declare-fun c!142285 () Bool)

(assert (=> b!880182 (= c!142285 (is-EmptyLang!2250 (removeUselessConcat!11 (regOne!5012 r!15766))))))

(declare-fun b!880183 () Bool)

(assert (=> b!880183 (= e!577938 (not (= (head!1534 (_1!6121 lt!330483)) (c!142197 (removeUselessConcat!11 (regOne!5012 r!15766))))))))

(declare-fun b!880184 () Bool)

(assert (=> b!880184 (= e!577939 e!577934)))

(declare-fun res!400301 () Bool)

(assert (=> b!880184 (=> (not res!400301) (not e!577934))))

(assert (=> b!880184 (= res!400301 (not lt!330544))))

(declare-fun b!880185 () Bool)

(assert (=> b!880185 (= e!577933 (= (head!1534 (_1!6121 lt!330483)) (c!142197 (removeUselessConcat!11 (regOne!5012 r!15766)))))))

(declare-fun b!880186 () Bool)

(assert (=> b!880186 (= e!577940 (= lt!330544 call!51330))))

(declare-fun b!880187 () Bool)

(declare-fun res!400300 () Bool)

(assert (=> b!880187 (=> res!400300 e!577938)))

(assert (=> b!880187 (= res!400300 (not (isEmpty!5660 (tail!1096 (_1!6121 lt!330483)))))))

(declare-fun b!880188 () Bool)

(declare-fun res!400304 () Bool)

(assert (=> b!880188 (=> res!400304 e!577939)))

(assert (=> b!880188 (= res!400304 (not (is-ElementMatch!2250 (removeUselessConcat!11 (regOne!5012 r!15766)))))))

(assert (=> b!880188 (= e!577932 e!577939)))

(declare-fun b!880189 () Bool)

(declare-fun res!400307 () Bool)

(assert (=> b!880189 (=> (not res!400307) (not e!577933))))

(assert (=> b!880189 (= res!400307 (isEmpty!5660 (tail!1096 (_1!6121 lt!330483))))))

(declare-fun b!880190 () Bool)

(assert (=> b!880190 (= e!577937 (matchR!788 (derivativeStep!381 (removeUselessConcat!11 (regOne!5012 r!15766)) (head!1534 (_1!6121 lt!330483))) (tail!1096 (_1!6121 lt!330483))))))

(assert (= (and d!276265 c!142286) b!880181))

(assert (= (and d!276265 (not c!142286)) b!880190))

(assert (= (and d!276265 c!142284) b!880186))

(assert (= (and d!276265 (not c!142284)) b!880182))

(assert (= (and b!880182 c!142285) b!880177))

(assert (= (and b!880182 (not c!142285)) b!880188))

(assert (= (and b!880188 (not res!400304)) b!880180))

(assert (= (and b!880180 res!400303) b!880178))

(assert (= (and b!880178 res!400302) b!880189))

(assert (= (and b!880189 res!400307) b!880185))

(assert (= (and b!880180 (not res!400309)) b!880184))

(assert (= (and b!880184 res!400301) b!880176))

(assert (= (and b!880176 (not res!400308)) b!880187))

(assert (= (and b!880187 (not res!400300)) b!880183))

(assert (= (or b!880186 b!880176 b!880178) bm!51325))

(assert (=> b!880187 m!1128839))

(assert (=> b!880187 m!1128839))

(assert (=> b!880187 m!1128841))

(assert (=> b!880181 m!1128753))

(declare-fun m!1128965 () Bool)

(assert (=> b!880181 m!1128965))

(assert (=> d!276265 m!1128845))

(assert (=> d!276265 m!1128753))

(declare-fun m!1128967 () Bool)

(assert (=> d!276265 m!1128967))

(assert (=> b!880190 m!1128847))

(assert (=> b!880190 m!1128753))

(assert (=> b!880190 m!1128847))

(declare-fun m!1128969 () Bool)

(assert (=> b!880190 m!1128969))

(assert (=> b!880190 m!1128839))

(assert (=> b!880190 m!1128969))

(assert (=> b!880190 m!1128839))

(declare-fun m!1128971 () Bool)

(assert (=> b!880190 m!1128971))

(assert (=> b!880189 m!1128839))

(assert (=> b!880189 m!1128839))

(assert (=> b!880189 m!1128841))

(assert (=> b!880185 m!1128847))

(assert (=> bm!51325 m!1128845))

(assert (=> b!880183 m!1128847))

(assert (=> b!879803 d!276265))

(declare-fun b!880203 () Bool)

(declare-fun e!577946 () Bool)

(declare-fun call!51333 () Bool)

(assert (=> b!880203 (= e!577946 call!51333)))

(declare-fun b!880204 () Bool)

(declare-fun e!577949 () Bool)

(declare-fun call!51331 () Bool)

(assert (=> b!880204 (= e!577949 call!51331)))

(declare-fun b!880205 () Bool)

(declare-fun e!577945 () Bool)

(assert (=> b!880205 (= e!577945 call!51331)))

(declare-fun b!880206 () Bool)

(declare-fun e!577948 () Bool)

(declare-fun e!577947 () Bool)

(assert (=> b!880206 (= e!577948 e!577947)))

(declare-fun c!142288 () Bool)

(assert (=> b!880206 (= c!142288 (is-Star!2250 (removeUselessConcat!11 r!15766)))))

(declare-fun b!880207 () Bool)

(declare-fun res!400324 () Bool)

(assert (=> b!880207 (=> (not res!400324) (not e!577945))))

(declare-fun call!51332 () Bool)

(assert (=> b!880207 (= res!400324 call!51332)))

(declare-fun e!577950 () Bool)

(assert (=> b!880207 (= e!577950 e!577945)))

(declare-fun d!276267 () Bool)

(declare-fun res!400323 () Bool)

(assert (=> d!276267 (=> res!400323 e!577948)))

(assert (=> d!276267 (= res!400323 (is-ElementMatch!2250 (removeUselessConcat!11 r!15766)))))

(assert (=> d!276267 (= (validRegex!719 (removeUselessConcat!11 r!15766)) e!577948)))

(declare-fun b!880208 () Bool)

(assert (=> b!880208 (= e!577947 e!577946)))

(declare-fun res!400321 () Bool)

(assert (=> b!880208 (= res!400321 (not (nullable!568 (reg!2579 (removeUselessConcat!11 r!15766)))))))

(assert (=> b!880208 (=> (not res!400321) (not e!577946))))

(declare-fun b!880209 () Bool)

(assert (=> b!880209 (= e!577947 e!577950)))

(declare-fun c!142287 () Bool)

(assert (=> b!880209 (= c!142287 (is-Union!2250 (removeUselessConcat!11 r!15766)))))

(declare-fun b!880210 () Bool)

(declare-fun res!400320 () Bool)

(declare-fun e!577951 () Bool)

(assert (=> b!880210 (=> res!400320 e!577951)))

(assert (=> b!880210 (= res!400320 (not (is-Concat!4083 (removeUselessConcat!11 r!15766))))))

(assert (=> b!880210 (= e!577950 e!577951)))

(declare-fun bm!51326 () Bool)

(assert (=> bm!51326 (= call!51331 call!51333)))

(declare-fun bm!51327 () Bool)

(assert (=> bm!51327 (= call!51333 (validRegex!719 (ite c!142288 (reg!2579 (removeUselessConcat!11 r!15766)) (ite c!142287 (regTwo!5013 (removeUselessConcat!11 r!15766)) (regTwo!5012 (removeUselessConcat!11 r!15766))))))))

(declare-fun bm!51328 () Bool)

(assert (=> bm!51328 (= call!51332 (validRegex!719 (ite c!142287 (regOne!5013 (removeUselessConcat!11 r!15766)) (regOne!5012 (removeUselessConcat!11 r!15766)))))))

(declare-fun b!880211 () Bool)

(assert (=> b!880211 (= e!577951 e!577949)))

(declare-fun res!400322 () Bool)

(assert (=> b!880211 (=> (not res!400322) (not e!577949))))

(assert (=> b!880211 (= res!400322 call!51332)))

(assert (= (and d!276267 (not res!400323)) b!880206))

(assert (= (and b!880206 c!142288) b!880208))

(assert (= (and b!880206 (not c!142288)) b!880209))

(assert (= (and b!880208 res!400321) b!880203))

(assert (= (and b!880209 c!142287) b!880207))

(assert (= (and b!880209 (not c!142287)) b!880210))

(assert (= (and b!880207 res!400324) b!880205))

(assert (= (and b!880210 (not res!400320)) b!880211))

(assert (= (and b!880211 res!400322) b!880204))

(assert (= (or b!880205 b!880204) bm!51326))

(assert (= (or b!880207 b!880211) bm!51328))

(assert (= (or b!880203 bm!51326) bm!51327))

(declare-fun m!1128973 () Bool)

(assert (=> b!880208 m!1128973))

(declare-fun m!1128975 () Bool)

(assert (=> bm!51327 m!1128975))

(declare-fun m!1128977 () Bool)

(assert (=> bm!51328 m!1128977))

(assert (=> b!879803 d!276267))

(declare-fun bm!51329 () Bool)

(declare-fun call!51338 () Regex!2250)

(declare-fun call!51334 () Regex!2250)

(assert (=> bm!51329 (= call!51338 call!51334)))

(declare-fun b!880212 () Bool)

(declare-fun e!577957 () Regex!2250)

(declare-fun call!51335 () Regex!2250)

(assert (=> b!880212 (= e!577957 (Union!2250 call!51335 call!51338))))

(declare-fun b!880213 () Bool)

(declare-fun e!577953 () Regex!2250)

(declare-fun call!51337 () Regex!2250)

(assert (=> b!880213 (= e!577953 call!51337)))

(declare-fun b!880214 () Bool)

(declare-fun e!577956 () Regex!2250)

(assert (=> b!880214 (= e!577956 r!15766)))

(declare-fun b!880215 () Bool)

(declare-fun e!577952 () Regex!2250)

(assert (=> b!880215 (= e!577952 (Concat!4083 call!51334 call!51335))))

(declare-fun bm!51330 () Bool)

(declare-fun call!51336 () Regex!2250)

(assert (=> bm!51330 (= call!51337 call!51336)))

(declare-fun d!276269 () Bool)

(declare-fun e!577954 () Bool)

(assert (=> d!276269 e!577954))

(declare-fun res!400325 () Bool)

(assert (=> d!276269 (=> (not res!400325) (not e!577954))))

(declare-fun lt!330545 () Regex!2250)

(assert (=> d!276269 (= res!400325 (validRegex!719 lt!330545))))

(declare-fun e!577955 () Regex!2250)

(assert (=> d!276269 (= lt!330545 e!577955)))

(declare-fun c!142291 () Bool)

(assert (=> d!276269 (= c!142291 (and (is-Concat!4083 r!15766) (is-EmptyExpr!2250 (regOne!5012 r!15766))))))

(assert (=> d!276269 (validRegex!719 r!15766)))

(assert (=> d!276269 (= (removeUselessConcat!11 r!15766) lt!330545)))

(declare-fun b!880216 () Bool)

(assert (=> b!880216 (= e!577955 call!51336)))

(declare-fun b!880217 () Bool)

(assert (=> b!880217 (= e!577952 e!577957)))

(declare-fun c!142290 () Bool)

(assert (=> b!880217 (= c!142290 (is-Union!2250 r!15766))))

(declare-fun c!142293 () Bool)

(declare-fun c!142292 () Bool)

(declare-fun bm!51331 () Bool)

(assert (=> bm!51331 (= call!51336 (removeUselessConcat!11 (ite c!142291 (regTwo!5012 r!15766) (ite c!142292 (regOne!5012 r!15766) (ite c!142293 (regTwo!5012 r!15766) (regOne!5013 r!15766))))))))

(declare-fun bm!51332 () Bool)

(assert (=> bm!51332 (= call!51335 call!51337)))

(declare-fun b!880218 () Bool)

(assert (=> b!880218 (= e!577956 (Star!2250 call!51338))))

(declare-fun b!880219 () Bool)

(assert (=> b!880219 (= e!577954 (= (nullable!568 lt!330545) (nullable!568 r!15766)))))

(declare-fun bm!51333 () Bool)

(assert (=> bm!51333 (= call!51334 (removeUselessConcat!11 (ite c!142293 (regOne!5012 r!15766) (ite c!142290 (regTwo!5013 r!15766) (reg!2579 r!15766)))))))

(declare-fun b!880220 () Bool)

(assert (=> b!880220 (= c!142293 (is-Concat!4083 r!15766))))

(assert (=> b!880220 (= e!577953 e!577952)))

(declare-fun b!880221 () Bool)

(assert (=> b!880221 (= e!577955 e!577953)))

(assert (=> b!880221 (= c!142292 (and (is-Concat!4083 r!15766) (is-EmptyExpr!2250 (regTwo!5012 r!15766))))))

(declare-fun b!880222 () Bool)

(declare-fun c!142289 () Bool)

(assert (=> b!880222 (= c!142289 (is-Star!2250 r!15766))))

(assert (=> b!880222 (= e!577957 e!577956)))

(assert (= (and d!276269 c!142291) b!880216))

(assert (= (and d!276269 (not c!142291)) b!880221))

(assert (= (and b!880221 c!142292) b!880213))

(assert (= (and b!880221 (not c!142292)) b!880220))

(assert (= (and b!880220 c!142293) b!880215))

(assert (= (and b!880220 (not c!142293)) b!880217))

(assert (= (and b!880217 c!142290) b!880212))

(assert (= (and b!880217 (not c!142290)) b!880222))

(assert (= (and b!880222 c!142289) b!880218))

(assert (= (and b!880222 (not c!142289)) b!880214))

(assert (= (or b!880212 b!880218) bm!51329))

(assert (= (or b!880215 b!880212) bm!51332))

(assert (= (or b!880215 bm!51329) bm!51333))

(assert (= (or b!880213 bm!51332) bm!51330))

(assert (= (or b!880216 bm!51330) bm!51331))

(assert (= (and d!276269 res!400325) b!880219))

(declare-fun m!1128979 () Bool)

(assert (=> d!276269 m!1128979))

(assert (=> d!276269 m!1128779))

(declare-fun m!1128981 () Bool)

(assert (=> bm!51331 m!1128981))

(declare-fun m!1128983 () Bool)

(assert (=> b!880219 m!1128983))

(assert (=> b!880219 m!1128869))

(declare-fun m!1128985 () Bool)

(assert (=> bm!51333 m!1128985))

(assert (=> b!879803 d!276269))

(declare-fun b!880234 () Bool)

(declare-fun e!577960 () Bool)

(declare-fun tp!278057 () Bool)

(declare-fun tp!278056 () Bool)

(assert (=> b!880234 (= e!577960 (and tp!278057 tp!278056))))

(declare-fun b!880236 () Bool)

(declare-fun tp!278058 () Bool)

(declare-fun tp!278059 () Bool)

(assert (=> b!880236 (= e!577960 (and tp!278058 tp!278059))))

(declare-fun b!880233 () Bool)

(assert (=> b!880233 (= e!577960 tp_is_empty!4143)))

(declare-fun b!880235 () Bool)

(declare-fun tp!278055 () Bool)

(assert (=> b!880235 (= e!577960 tp!278055)))

(assert (=> b!879802 (= tp!278023 e!577960)))

(assert (= (and b!879802 (is-ElementMatch!2250 (regOne!5012 r!15766))) b!880233))

(assert (= (and b!879802 (is-Concat!4083 (regOne!5012 r!15766))) b!880234))

(assert (= (and b!879802 (is-Star!2250 (regOne!5012 r!15766))) b!880235))

(assert (= (and b!879802 (is-Union!2250 (regOne!5012 r!15766))) b!880236))

(declare-fun b!880238 () Bool)

(declare-fun e!577961 () Bool)

(declare-fun tp!278062 () Bool)

(declare-fun tp!278061 () Bool)

(assert (=> b!880238 (= e!577961 (and tp!278062 tp!278061))))

(declare-fun b!880240 () Bool)

(declare-fun tp!278063 () Bool)

(declare-fun tp!278064 () Bool)

(assert (=> b!880240 (= e!577961 (and tp!278063 tp!278064))))

(declare-fun b!880237 () Bool)

(assert (=> b!880237 (= e!577961 tp_is_empty!4143)))

(declare-fun b!880239 () Bool)

(declare-fun tp!278060 () Bool)

(assert (=> b!880239 (= e!577961 tp!278060)))

(assert (=> b!879802 (= tp!278026 e!577961)))

(assert (= (and b!879802 (is-ElementMatch!2250 (regTwo!5012 r!15766))) b!880237))

(assert (= (and b!879802 (is-Concat!4083 (regTwo!5012 r!15766))) b!880238))

(assert (= (and b!879802 (is-Star!2250 (regTwo!5012 r!15766))) b!880239))

(assert (= (and b!879802 (is-Union!2250 (regTwo!5012 r!15766))) b!880240))

(declare-fun b!880242 () Bool)

(declare-fun e!577962 () Bool)

(declare-fun tp!278067 () Bool)

(declare-fun tp!278066 () Bool)

(assert (=> b!880242 (= e!577962 (and tp!278067 tp!278066))))

(declare-fun b!880244 () Bool)

(declare-fun tp!278068 () Bool)

(declare-fun tp!278069 () Bool)

(assert (=> b!880244 (= e!577962 (and tp!278068 tp!278069))))

(declare-fun b!880241 () Bool)

(assert (=> b!880241 (= e!577962 tp_is_empty!4143)))

(declare-fun b!880243 () Bool)

(declare-fun tp!278065 () Bool)

(assert (=> b!880243 (= e!577962 tp!278065)))

(assert (=> b!879801 (= tp!278024 e!577962)))

(assert (= (and b!879801 (is-ElementMatch!2250 (regOne!5013 r!15766))) b!880241))

(assert (= (and b!879801 (is-Concat!4083 (regOne!5013 r!15766))) b!880242))

(assert (= (and b!879801 (is-Star!2250 (regOne!5013 r!15766))) b!880243))

(assert (= (and b!879801 (is-Union!2250 (regOne!5013 r!15766))) b!880244))

(declare-fun b!880246 () Bool)

(declare-fun e!577963 () Bool)

(declare-fun tp!278072 () Bool)

(declare-fun tp!278071 () Bool)

(assert (=> b!880246 (= e!577963 (and tp!278072 tp!278071))))

(declare-fun b!880248 () Bool)

(declare-fun tp!278073 () Bool)

(declare-fun tp!278074 () Bool)

(assert (=> b!880248 (= e!577963 (and tp!278073 tp!278074))))

(declare-fun b!880245 () Bool)

(assert (=> b!880245 (= e!577963 tp_is_empty!4143)))

(declare-fun b!880247 () Bool)

(declare-fun tp!278070 () Bool)

(assert (=> b!880247 (= e!577963 tp!278070)))

(assert (=> b!879801 (= tp!278021 e!577963)))

(assert (= (and b!879801 (is-ElementMatch!2250 (regTwo!5013 r!15766))) b!880245))

(assert (= (and b!879801 (is-Concat!4083 (regTwo!5013 r!15766))) b!880246))

(assert (= (and b!879801 (is-Star!2250 (regTwo!5013 r!15766))) b!880247))

(assert (= (and b!879801 (is-Union!2250 (regTwo!5013 r!15766))) b!880248))

(declare-fun b!880250 () Bool)

(declare-fun e!577964 () Bool)

(declare-fun tp!278077 () Bool)

(declare-fun tp!278076 () Bool)

(assert (=> b!880250 (= e!577964 (and tp!278077 tp!278076))))

(declare-fun b!880252 () Bool)

(declare-fun tp!278078 () Bool)

(declare-fun tp!278079 () Bool)

(assert (=> b!880252 (= e!577964 (and tp!278078 tp!278079))))

(declare-fun b!880249 () Bool)

(assert (=> b!880249 (= e!577964 tp_is_empty!4143)))

(declare-fun b!880251 () Bool)

(declare-fun tp!278075 () Bool)

(assert (=> b!880251 (= e!577964 tp!278075)))

(assert (=> b!879804 (= tp!278022 e!577964)))

(assert (= (and b!879804 (is-ElementMatch!2250 (reg!2579 r!15766))) b!880249))

(assert (= (and b!879804 (is-Concat!4083 (reg!2579 r!15766))) b!880250))

(assert (= (and b!879804 (is-Star!2250 (reg!2579 r!15766))) b!880251))

(assert (= (and b!879804 (is-Union!2250 (reg!2579 r!15766))) b!880252))

(declare-fun b!880257 () Bool)

(declare-fun e!577967 () Bool)

(declare-fun tp!278082 () Bool)

(assert (=> b!880257 (= e!577967 (and tp_is_empty!4143 tp!278082))))

(assert (=> b!879808 (= tp!278025 e!577967)))

(assert (= (and b!879808 (is-Cons!9464 (t!100526 s!10566))) b!880257))

(push 1)

(assert (not b!880243))

(assert (not b!880251))

(assert (not b!880127))

(assert (not b!880239))

(assert (not d!276245))

(assert (not bm!51328))

(assert (not b!880252))

(assert (not d!276251))

(assert (not b!880244))

(assert (not b!879980))

(assert (not bm!51287))

(assert (not b!880240))

(assert (not bm!51327))

(assert (not d!276261))

(assert (not d!276263))

(assert (not d!276269))

(assert (not b!879986))

(assert (not b!880069))

(assert (not b!879982))

(assert (not b!880208))

(assert (not bm!51324))

(assert (not b!880033))

(assert (not b!879987))

(assert (not d!276257))

(assert (not bm!51306))

(assert (not b!880161))

(assert (not b!879900))

(assert (not b!880257))

(assert (not d!276239))

(assert (not bm!51295))

(assert (not bm!51307))

(assert (not d!276237))

(assert (not b!879894))

(assert (not d!276233))

(assert (not b!880117))

(assert (not d!276265))

(assert (not b!880238))

(assert (not bm!51296))

(assert (not bm!51285))

(assert (not b!879978))

(assert (not b!880068))

(assert (not bm!51271))

(assert (not b!880242))

(assert (not bm!51286))

(assert (not b!879896))

(assert (not b!880181))

(assert (not d!276229))

(assert (not b!880189))

(assert (not b!880065))

(assert (not b!880183))

(assert (not bm!51325))

(assert (not bm!51333))

(assert (not b!880250))

(assert (not b!880219))

(assert (not b!879898))

(assert (not b!880066))

(assert (not b!880236))

(assert (not b!880247))

(assert (not b!880187))

(assert (not b!879973))

(assert (not bm!51309))

(assert (not b!880234))

(assert (not b!880072))

(assert tp_is_empty!4143)

(assert (not b!880113))

(assert (not b!879902))

(assert (not b!880070))

(assert (not bm!51308))

(assert (not b!880248))

(assert (not bm!51322))

(assert (not b!879903))

(assert (not b!880235))

(assert (not bm!51331))

(assert (not b!880246))

(assert (not b!880190))

(assert (not d!276227))

(assert (not d!276217))

(assert (not d!276241))

(assert (not b!879963))

(assert (not b!880185))

(assert (not b!879984))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

