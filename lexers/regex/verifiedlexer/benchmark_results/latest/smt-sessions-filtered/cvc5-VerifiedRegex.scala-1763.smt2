; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!88024 () Bool)

(assert start!88024)

(declare-fun b!1003009 () Bool)

(assert (=> b!1003009 true))

(assert (=> b!1003009 true))

(assert (=> b!1003009 true))

(declare-fun b!1003008 () Bool)

(declare-fun e!642776 () Bool)

(declare-fun tp_is_empty!5211 () Bool)

(assert (=> b!1003008 (= e!642776 tp_is_empty!5211)))

(declare-fun e!642775 () Bool)

(declare-fun e!642772 () Bool)

(assert (=> b!1003009 (= e!642775 e!642772)))

(declare-fun res!452777 () Bool)

(assert (=> b!1003009 (=> res!452777 e!642772)))

(declare-datatypes ((C!6138 0))(
  ( (C!6139 (val!3317 Int)) )
))
(declare-datatypes ((Regex!2784 0))(
  ( (ElementMatch!2784 (c!165217 C!6138)) (Concat!4617 (regOne!6080 Regex!2784) (regTwo!6080 Regex!2784)) (EmptyExpr!2784) (Star!2784 (reg!3113 Regex!2784)) (EmptyLang!2784) (Union!2784 (regOne!6081 Regex!2784) (regTwo!6081 Regex!2784)) )
))
(declare-fun r!15766 () Regex!2784)

(declare-fun validRegex!1253 (Regex!2784) Bool)

(assert (=> b!1003009 (= res!452777 (not (validRegex!1253 (reg!3113 r!15766))))))

(declare-datatypes ((List!10014 0))(
  ( (Nil!9998) (Cons!9998 (h!15399 C!6138) (t!101060 List!10014)) )
))
(declare-fun s!10566 () List!10014)

(declare-fun lt!352284 () Regex!2784)

(declare-fun lambda!35589 () Int)

(declare-datatypes ((tuple2!11362 0))(
  ( (tuple2!11363 (_1!6507 List!10014) (_2!6507 List!10014)) )
))
(declare-datatypes ((Option!2323 0))(
  ( (None!2322) (Some!2322 (v!19739 tuple2!11362)) )
))
(declare-fun isDefined!1965 (Option!2323) Bool)

(declare-fun findConcatSeparation!429 (Regex!2784 Regex!2784 List!10014 List!10014 List!10014) Option!2323)

(declare-fun Exists!517 (Int) Bool)

(assert (=> b!1003009 (= (isDefined!1965 (findConcatSeparation!429 (reg!3113 r!15766) lt!352284 Nil!9998 s!10566 s!10566)) (Exists!517 lambda!35589))))

(declare-datatypes ((Unit!15227 0))(
  ( (Unit!15228) )
))
(declare-fun lt!352287 () Unit!15227)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!429 (Regex!2784 Regex!2784 List!10014) Unit!15227)

(assert (=> b!1003009 (= lt!352287 (lemmaFindConcatSeparationEquivalentToExists!429 (reg!3113 r!15766) lt!352284 s!10566))))

(assert (=> b!1003009 (= lt!352284 (Star!2784 (reg!3113 r!15766)))))

(declare-fun b!1003010 () Bool)

(declare-fun e!642773 () Bool)

(declare-fun tp!305425 () Bool)

(assert (=> b!1003010 (= e!642773 (and tp_is_empty!5211 tp!305425))))

(declare-fun res!452776 () Bool)

(declare-fun e!642774 () Bool)

(assert (=> start!88024 (=> (not res!452776) (not e!642774))))

(assert (=> start!88024 (= res!452776 (validRegex!1253 r!15766))))

(assert (=> start!88024 e!642774))

(assert (=> start!88024 e!642776))

(assert (=> start!88024 e!642773))

(declare-fun b!1003011 () Bool)

(declare-fun tp!305428 () Bool)

(assert (=> b!1003011 (= e!642776 tp!305428)))

(declare-fun b!1003012 () Bool)

(declare-fun tp!305426 () Bool)

(declare-fun tp!305429 () Bool)

(assert (=> b!1003012 (= e!642776 (and tp!305426 tp!305429))))

(declare-fun b!1003013 () Bool)

(declare-fun tp!305427 () Bool)

(declare-fun tp!305430 () Bool)

(assert (=> b!1003013 (= e!642776 (and tp!305427 tp!305430))))

(declare-fun b!1003014 () Bool)

(declare-fun nullable!896 (Regex!2784) Bool)

(assert (=> b!1003014 (= e!642772 (not (nullable!896 (reg!3113 r!15766))))))

(declare-fun b!1003015 () Bool)

(assert (=> b!1003015 (= e!642774 (not e!642775))))

(declare-fun res!452775 () Bool)

(assert (=> b!1003015 (=> res!452775 e!642775)))

(declare-fun lt!352285 () Bool)

(assert (=> b!1003015 (= res!452775 (or (not lt!352285) (and (is-Concat!4617 r!15766) (is-EmptyExpr!2784 (regOne!6080 r!15766))) (and (is-Concat!4617 r!15766) (is-EmptyExpr!2784 (regTwo!6080 r!15766))) (is-Concat!4617 r!15766) (is-Union!2784 r!15766) (not (is-Star!2784 r!15766))))))

(declare-fun matchRSpec!583 (Regex!2784 List!10014) Bool)

(assert (=> b!1003015 (= lt!352285 (matchRSpec!583 r!15766 s!10566))))

(declare-fun matchR!1320 (Regex!2784 List!10014) Bool)

(assert (=> b!1003015 (= lt!352285 (matchR!1320 r!15766 s!10566))))

(declare-fun lt!352286 () Unit!15227)

(declare-fun mainMatchTheorem!583 (Regex!2784 List!10014) Unit!15227)

(assert (=> b!1003015 (= lt!352286 (mainMatchTheorem!583 r!15766 s!10566))))

(assert (= (and start!88024 res!452776) b!1003015))

(assert (= (and b!1003015 (not res!452775)) b!1003009))

(assert (= (and b!1003009 (not res!452777)) b!1003014))

(assert (= (and start!88024 (is-ElementMatch!2784 r!15766)) b!1003008))

(assert (= (and start!88024 (is-Concat!4617 r!15766)) b!1003013))

(assert (= (and start!88024 (is-Star!2784 r!15766)) b!1003011))

(assert (= (and start!88024 (is-Union!2784 r!15766)) b!1003012))

(assert (= (and start!88024 (is-Cons!9998 s!10566)) b!1003010))

(declare-fun m!1190757 () Bool)

(assert (=> b!1003009 m!1190757))

(declare-fun m!1190759 () Bool)

(assert (=> b!1003009 m!1190759))

(declare-fun m!1190761 () Bool)

(assert (=> b!1003009 m!1190761))

(declare-fun m!1190763 () Bool)

(assert (=> b!1003009 m!1190763))

(declare-fun m!1190765 () Bool)

(assert (=> b!1003009 m!1190765))

(assert (=> b!1003009 m!1190761))

(declare-fun m!1190767 () Bool)

(assert (=> start!88024 m!1190767))

(declare-fun m!1190769 () Bool)

(assert (=> b!1003014 m!1190769))

(declare-fun m!1190771 () Bool)

(assert (=> b!1003015 m!1190771))

(declare-fun m!1190773 () Bool)

(assert (=> b!1003015 m!1190773))

(declare-fun m!1190775 () Bool)

(assert (=> b!1003015 m!1190775))

(push 1)

(assert (not b!1003012))

(assert (not b!1003011))

(assert (not b!1003009))

(assert tp_is_empty!5211)

(assert (not b!1003010))

(assert (not start!88024))

(assert (not b!1003015))

(assert (not b!1003014))

(assert (not b!1003013))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!291484 () Bool)

(declare-fun nullableFct!209 (Regex!2784) Bool)

(assert (=> d!291484 (= (nullable!896 (reg!3113 r!15766)) (nullableFct!209 (reg!3113 r!15766)))))

(declare-fun bs!245144 () Bool)

(assert (= bs!245144 d!291484))

(declare-fun m!1190797 () Bool)

(assert (=> bs!245144 m!1190797))

(assert (=> b!1003014 d!291484))

(declare-fun b!1003070 () Bool)

(declare-fun e!642808 () Bool)

(assert (=> b!1003070 (= e!642808 (matchR!1320 lt!352284 s!10566))))

(declare-fun d!291486 () Bool)

(declare-fun e!642804 () Bool)

(assert (=> d!291486 e!642804))

(declare-fun res!452805 () Bool)

(assert (=> d!291486 (=> res!452805 e!642804)))

(declare-fun e!642806 () Bool)

(assert (=> d!291486 (= res!452805 e!642806)))

(declare-fun res!452802 () Bool)

(assert (=> d!291486 (=> (not res!452802) (not e!642806))))

(declare-fun lt!352307 () Option!2323)

(assert (=> d!291486 (= res!452802 (isDefined!1965 lt!352307))))

(declare-fun e!642807 () Option!2323)

(assert (=> d!291486 (= lt!352307 e!642807)))

(declare-fun c!165223 () Bool)

(assert (=> d!291486 (= c!165223 e!642808)))

(declare-fun res!452801 () Bool)

(assert (=> d!291486 (=> (not res!452801) (not e!642808))))

(assert (=> d!291486 (= res!452801 (matchR!1320 (reg!3113 r!15766) Nil!9998))))

(assert (=> d!291486 (validRegex!1253 (reg!3113 r!15766))))

(assert (=> d!291486 (= (findConcatSeparation!429 (reg!3113 r!15766) lt!352284 Nil!9998 s!10566 s!10566) lt!352307)))

(declare-fun b!1003071 () Bool)

(declare-fun res!452803 () Bool)

(assert (=> b!1003071 (=> (not res!452803) (not e!642806))))

(declare-fun get!3492 (Option!2323) tuple2!11362)

(assert (=> b!1003071 (= res!452803 (matchR!1320 (reg!3113 r!15766) (_1!6507 (get!3492 lt!352307))))))

(declare-fun b!1003072 () Bool)

(declare-fun ++!2718 (List!10014 List!10014) List!10014)

(assert (=> b!1003072 (= e!642806 (= (++!2718 (_1!6507 (get!3492 lt!352307)) (_2!6507 (get!3492 lt!352307))) s!10566))))

(declare-fun b!1003073 () Bool)

(assert (=> b!1003073 (= e!642804 (not (isDefined!1965 lt!352307)))))

(declare-fun b!1003074 () Bool)

(assert (=> b!1003074 (= e!642807 (Some!2322 (tuple2!11363 Nil!9998 s!10566)))))

(declare-fun b!1003075 () Bool)

(declare-fun lt!352306 () Unit!15227)

(declare-fun lt!352308 () Unit!15227)

(assert (=> b!1003075 (= lt!352306 lt!352308)))

(assert (=> b!1003075 (= (++!2718 (++!2718 Nil!9998 (Cons!9998 (h!15399 s!10566) Nil!9998)) (t!101060 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!318 (List!10014 C!6138 List!10014 List!10014) Unit!15227)

(assert (=> b!1003075 (= lt!352308 (lemmaMoveElementToOtherListKeepsConcatEq!318 Nil!9998 (h!15399 s!10566) (t!101060 s!10566) s!10566))))

(declare-fun e!642805 () Option!2323)

(assert (=> b!1003075 (= e!642805 (findConcatSeparation!429 (reg!3113 r!15766) lt!352284 (++!2718 Nil!9998 (Cons!9998 (h!15399 s!10566) Nil!9998)) (t!101060 s!10566) s!10566))))

(declare-fun b!1003076 () Bool)

(assert (=> b!1003076 (= e!642807 e!642805)))

(declare-fun c!165224 () Bool)

(assert (=> b!1003076 (= c!165224 (is-Nil!9998 s!10566))))

(declare-fun b!1003077 () Bool)

(declare-fun res!452804 () Bool)

(assert (=> b!1003077 (=> (not res!452804) (not e!642806))))

(assert (=> b!1003077 (= res!452804 (matchR!1320 lt!352284 (_2!6507 (get!3492 lt!352307))))))

(declare-fun b!1003078 () Bool)

(assert (=> b!1003078 (= e!642805 None!2322)))

(assert (= (and d!291486 res!452801) b!1003070))

(assert (= (and d!291486 c!165223) b!1003074))

(assert (= (and d!291486 (not c!165223)) b!1003076))

(assert (= (and b!1003076 c!165224) b!1003078))

(assert (= (and b!1003076 (not c!165224)) b!1003075))

(assert (= (and d!291486 res!452802) b!1003071))

(assert (= (and b!1003071 res!452803) b!1003077))

(assert (= (and b!1003077 res!452804) b!1003072))

(assert (= (and d!291486 (not res!452805)) b!1003073))

(declare-fun m!1190801 () Bool)

(assert (=> b!1003070 m!1190801))

(declare-fun m!1190803 () Bool)

(assert (=> d!291486 m!1190803))

(declare-fun m!1190805 () Bool)

(assert (=> d!291486 m!1190805))

(assert (=> d!291486 m!1190765))

(assert (=> b!1003073 m!1190803))

(declare-fun m!1190807 () Bool)

(assert (=> b!1003077 m!1190807))

(declare-fun m!1190809 () Bool)

(assert (=> b!1003077 m!1190809))

(assert (=> b!1003071 m!1190807))

(declare-fun m!1190811 () Bool)

(assert (=> b!1003071 m!1190811))

(assert (=> b!1003072 m!1190807))

(declare-fun m!1190813 () Bool)

(assert (=> b!1003072 m!1190813))

(declare-fun m!1190815 () Bool)

(assert (=> b!1003075 m!1190815))

(assert (=> b!1003075 m!1190815))

(declare-fun m!1190817 () Bool)

(assert (=> b!1003075 m!1190817))

(declare-fun m!1190819 () Bool)

(assert (=> b!1003075 m!1190819))

(assert (=> b!1003075 m!1190815))

(declare-fun m!1190821 () Bool)

(assert (=> b!1003075 m!1190821))

(assert (=> b!1003009 d!291486))

(declare-fun bs!245146 () Bool)

(declare-fun d!291492 () Bool)

(assert (= bs!245146 (and d!291492 b!1003009)))

(declare-fun lambda!35597 () Int)

(assert (=> bs!245146 (= lambda!35597 lambda!35589)))

(assert (=> d!291492 true))

(assert (=> d!291492 true))

(assert (=> d!291492 true))

(assert (=> d!291492 (= (isDefined!1965 (findConcatSeparation!429 (reg!3113 r!15766) lt!352284 Nil!9998 s!10566 s!10566)) (Exists!517 lambda!35597))))

(declare-fun lt!352313 () Unit!15227)

(declare-fun choose!6360 (Regex!2784 Regex!2784 List!10014) Unit!15227)

(assert (=> d!291492 (= lt!352313 (choose!6360 (reg!3113 r!15766) lt!352284 s!10566))))

(assert (=> d!291492 (validRegex!1253 (reg!3113 r!15766))))

(assert (=> d!291492 (= (lemmaFindConcatSeparationEquivalentToExists!429 (reg!3113 r!15766) lt!352284 s!10566) lt!352313)))

(declare-fun bs!245147 () Bool)

(assert (= bs!245147 d!291492))

(assert (=> bs!245147 m!1190761))

(assert (=> bs!245147 m!1190763))

(declare-fun m!1190823 () Bool)

(assert (=> bs!245147 m!1190823))

(assert (=> bs!245147 m!1190761))

(assert (=> bs!245147 m!1190765))

(declare-fun m!1190825 () Bool)

(assert (=> bs!245147 m!1190825))

(assert (=> b!1003009 d!291492))

(declare-fun d!291494 () Bool)

(declare-fun choose!6361 (Int) Bool)

(assert (=> d!291494 (= (Exists!517 lambda!35589) (choose!6361 lambda!35589))))

(declare-fun bs!245148 () Bool)

(assert (= bs!245148 d!291494))

(declare-fun m!1190827 () Bool)

(assert (=> bs!245148 m!1190827))

(assert (=> b!1003009 d!291494))

(declare-fun d!291496 () Bool)

(declare-fun isEmpty!6335 (Option!2323) Bool)

(assert (=> d!291496 (= (isDefined!1965 (findConcatSeparation!429 (reg!3113 r!15766) lt!352284 Nil!9998 s!10566 s!10566)) (not (isEmpty!6335 (findConcatSeparation!429 (reg!3113 r!15766) lt!352284 Nil!9998 s!10566 s!10566))))))

(declare-fun bs!245149 () Bool)

(assert (= bs!245149 d!291496))

(assert (=> bs!245149 m!1190761))

(declare-fun m!1190829 () Bool)

(assert (=> bs!245149 m!1190829))

(assert (=> b!1003009 d!291496))

(declare-fun bm!66821 () Bool)

(declare-fun call!66828 () Bool)

(declare-fun c!165230 () Bool)

(assert (=> bm!66821 (= call!66828 (validRegex!1253 (ite c!165230 (regTwo!6081 (reg!3113 r!15766)) (regTwo!6080 (reg!3113 r!15766)))))))

(declare-fun c!165229 () Bool)

(declare-fun bm!66822 () Bool)

(declare-fun call!66827 () Bool)

(assert (=> bm!66822 (= call!66827 (validRegex!1253 (ite c!165229 (reg!3113 (reg!3113 r!15766)) (ite c!165230 (regOne!6081 (reg!3113 r!15766)) (regOne!6080 (reg!3113 r!15766))))))))

(declare-fun b!1003106 () Bool)

(declare-fun e!642829 () Bool)

(declare-fun e!642833 () Bool)

(assert (=> b!1003106 (= e!642829 e!642833)))

(assert (=> b!1003106 (= c!165229 (is-Star!2784 (reg!3113 r!15766)))))

(declare-fun b!1003107 () Bool)

(declare-fun e!642830 () Bool)

(assert (=> b!1003107 (= e!642830 call!66827)))

(declare-fun b!1003108 () Bool)

(declare-fun e!642832 () Bool)

(assert (=> b!1003108 (= e!642832 call!66828)))

(declare-fun b!1003109 () Bool)

(declare-fun res!452828 () Bool)

(declare-fun e!642831 () Bool)

(assert (=> b!1003109 (=> (not res!452828) (not e!642831))))

(declare-fun call!66826 () Bool)

(assert (=> b!1003109 (= res!452828 call!66826)))

(declare-fun e!642827 () Bool)

(assert (=> b!1003109 (= e!642827 e!642831)))

(declare-fun b!1003110 () Bool)

(declare-fun e!642828 () Bool)

(assert (=> b!1003110 (= e!642828 e!642832)))

(declare-fun res!452826 () Bool)

(assert (=> b!1003110 (=> (not res!452826) (not e!642832))))

(assert (=> b!1003110 (= res!452826 call!66826)))

(declare-fun bm!66823 () Bool)

(assert (=> bm!66823 (= call!66826 call!66827)))

(declare-fun b!1003111 () Bool)

(assert (=> b!1003111 (= e!642831 call!66828)))

(declare-fun b!1003112 () Bool)

(assert (=> b!1003112 (= e!642833 e!642827)))

(assert (=> b!1003112 (= c!165230 (is-Union!2784 (reg!3113 r!15766)))))

(declare-fun b!1003113 () Bool)

(declare-fun res!452827 () Bool)

(assert (=> b!1003113 (=> res!452827 e!642828)))

(assert (=> b!1003113 (= res!452827 (not (is-Concat!4617 (reg!3113 r!15766))))))

(assert (=> b!1003113 (= e!642827 e!642828)))

(declare-fun b!1003105 () Bool)

(assert (=> b!1003105 (= e!642833 e!642830)))

(declare-fun res!452825 () Bool)

(assert (=> b!1003105 (= res!452825 (not (nullable!896 (reg!3113 (reg!3113 r!15766)))))))

(assert (=> b!1003105 (=> (not res!452825) (not e!642830))))

(declare-fun d!291498 () Bool)

(declare-fun res!452824 () Bool)

(assert (=> d!291498 (=> res!452824 e!642829)))

(assert (=> d!291498 (= res!452824 (is-ElementMatch!2784 (reg!3113 r!15766)))))

(assert (=> d!291498 (= (validRegex!1253 (reg!3113 r!15766)) e!642829)))

(assert (= (and d!291498 (not res!452824)) b!1003106))

(assert (= (and b!1003106 c!165229) b!1003105))

(assert (= (and b!1003106 (not c!165229)) b!1003112))

(assert (= (and b!1003105 res!452825) b!1003107))

(assert (= (and b!1003112 c!165230) b!1003109))

(assert (= (and b!1003112 (not c!165230)) b!1003113))

(assert (= (and b!1003109 res!452828) b!1003111))

(assert (= (and b!1003113 (not res!452827)) b!1003110))

(assert (= (and b!1003110 res!452826) b!1003108))

(assert (= (or b!1003111 b!1003108) bm!66821))

(assert (= (or b!1003109 b!1003110) bm!66823))

(assert (= (or b!1003107 bm!66823) bm!66822))

(declare-fun m!1190835 () Bool)

(assert (=> bm!66821 m!1190835))

(declare-fun m!1190837 () Bool)

(assert (=> bm!66822 m!1190837))

(declare-fun m!1190839 () Bool)

(assert (=> b!1003105 m!1190839))

(assert (=> b!1003009 d!291498))

(declare-fun bs!245152 () Bool)

(declare-fun b!1003147 () Bool)

(assert (= bs!245152 (and b!1003147 b!1003009)))

(declare-fun lambda!35603 () Int)

(assert (=> bs!245152 (not (= lambda!35603 lambda!35589))))

(declare-fun bs!245153 () Bool)

(assert (= bs!245153 (and b!1003147 d!291492)))

(assert (=> bs!245153 (not (= lambda!35603 lambda!35597))))

(assert (=> b!1003147 true))

(assert (=> b!1003147 true))

(declare-fun bs!245154 () Bool)

(declare-fun b!1003156 () Bool)

(assert (= bs!245154 (and b!1003156 b!1003009)))

(declare-fun lambda!35604 () Int)

(assert (=> bs!245154 (not (= lambda!35604 lambda!35589))))

(declare-fun bs!245155 () Bool)

(assert (= bs!245155 (and b!1003156 d!291492)))

(assert (=> bs!245155 (not (= lambda!35604 lambda!35597))))

(declare-fun bs!245156 () Bool)

(assert (= bs!245156 (and b!1003156 b!1003147)))

(assert (=> bs!245156 (not (= lambda!35604 lambda!35603))))

(assert (=> b!1003156 true))

(assert (=> b!1003156 true))

(declare-fun b!1003146 () Bool)

(declare-fun c!165240 () Bool)

(assert (=> b!1003146 (= c!165240 (is-Union!2784 r!15766))))

(declare-fun e!642854 () Bool)

(declare-fun e!642856 () Bool)

(assert (=> b!1003146 (= e!642854 e!642856)))

(declare-fun e!642855 () Bool)

(declare-fun call!66834 () Bool)

(assert (=> b!1003147 (= e!642855 call!66834)))

(declare-fun d!291502 () Bool)

(declare-fun c!165241 () Bool)

(assert (=> d!291502 (= c!165241 (is-EmptyExpr!2784 r!15766))))

(declare-fun e!642852 () Bool)

(assert (=> d!291502 (= (matchRSpec!583 r!15766 s!10566) e!642852)))

(declare-fun b!1003148 () Bool)

(declare-fun c!165242 () Bool)

(assert (=> b!1003148 (= c!165242 (is-ElementMatch!2784 r!15766))))

(declare-fun e!642857 () Bool)

(assert (=> b!1003148 (= e!642857 e!642854)))

(declare-fun bm!66828 () Bool)

(declare-fun c!165239 () Bool)

(assert (=> bm!66828 (= call!66834 (Exists!517 (ite c!165239 lambda!35603 lambda!35604)))))

(declare-fun b!1003149 () Bool)

(assert (=> b!1003149 (= e!642852 e!642857)))

(declare-fun res!452846 () Bool)

(assert (=> b!1003149 (= res!452846 (not (is-EmptyLang!2784 r!15766)))))

(assert (=> b!1003149 (=> (not res!452846) (not e!642857))))

(declare-fun b!1003150 () Bool)

(declare-fun e!642853 () Bool)

(assert (=> b!1003150 (= e!642856 e!642853)))

(assert (=> b!1003150 (= c!165239 (is-Star!2784 r!15766))))

(declare-fun b!1003151 () Bool)

(declare-fun call!66833 () Bool)

(assert (=> b!1003151 (= e!642852 call!66833)))

(declare-fun b!1003152 () Bool)

(declare-fun res!452845 () Bool)

(assert (=> b!1003152 (=> res!452845 e!642855)))

(assert (=> b!1003152 (= res!452845 call!66833)))

(assert (=> b!1003152 (= e!642853 e!642855)))

(declare-fun b!1003153 () Bool)

(assert (=> b!1003153 (= e!642854 (= s!10566 (Cons!9998 (c!165217 r!15766) Nil!9998)))))

(declare-fun b!1003154 () Bool)

(declare-fun e!642858 () Bool)

(assert (=> b!1003154 (= e!642858 (matchRSpec!583 (regTwo!6081 r!15766) s!10566))))

(declare-fun b!1003155 () Bool)

(assert (=> b!1003155 (= e!642856 e!642858)))

(declare-fun res!452847 () Bool)

(assert (=> b!1003155 (= res!452847 (matchRSpec!583 (regOne!6081 r!15766) s!10566))))

(assert (=> b!1003155 (=> res!452847 e!642858)))

(assert (=> b!1003156 (= e!642853 call!66834)))

(declare-fun bm!66829 () Bool)

(declare-fun isEmpty!6336 (List!10014) Bool)

(assert (=> bm!66829 (= call!66833 (isEmpty!6336 s!10566))))

(assert (= (and d!291502 c!165241) b!1003151))

(assert (= (and d!291502 (not c!165241)) b!1003149))

(assert (= (and b!1003149 res!452846) b!1003148))

(assert (= (and b!1003148 c!165242) b!1003153))

(assert (= (and b!1003148 (not c!165242)) b!1003146))

(assert (= (and b!1003146 c!165240) b!1003155))

(assert (= (and b!1003146 (not c!165240)) b!1003150))

(assert (= (and b!1003155 (not res!452847)) b!1003154))

(assert (= (and b!1003150 c!165239) b!1003152))

(assert (= (and b!1003150 (not c!165239)) b!1003156))

(assert (= (and b!1003152 (not res!452845)) b!1003147))

(assert (= (or b!1003147 b!1003156) bm!66828))

(assert (= (or b!1003151 b!1003152) bm!66829))

(declare-fun m!1190841 () Bool)

(assert (=> bm!66828 m!1190841))

(declare-fun m!1190843 () Bool)

(assert (=> b!1003154 m!1190843))

(declare-fun m!1190845 () Bool)

(assert (=> b!1003155 m!1190845))

(declare-fun m!1190847 () Bool)

(assert (=> bm!66829 m!1190847))

(assert (=> b!1003015 d!291502))

(declare-fun b!1003203 () Bool)

(declare-fun res!452881 () Bool)

(declare-fun e!642885 () Bool)

(assert (=> b!1003203 (=> res!452881 e!642885)))

(declare-fun tail!1417 (List!10014) List!10014)

(assert (=> b!1003203 (= res!452881 (not (isEmpty!6336 (tail!1417 s!10566))))))

(declare-fun b!1003204 () Bool)

(declare-fun e!642887 () Bool)

(declare-fun e!642883 () Bool)

(assert (=> b!1003204 (= e!642887 e!642883)))

(declare-fun res!452879 () Bool)

(assert (=> b!1003204 (=> (not res!452879) (not e!642883))))

(declare-fun lt!352323 () Bool)

(assert (=> b!1003204 (= res!452879 (not lt!352323))))

(declare-fun b!1003205 () Bool)

(assert (=> b!1003205 (= e!642883 e!642885)))

(declare-fun res!452880 () Bool)

(assert (=> b!1003205 (=> res!452880 e!642885)))

(declare-fun call!66837 () Bool)

(assert (=> b!1003205 (= res!452880 call!66837)))

(declare-fun b!1003206 () Bool)

(declare-fun e!642886 () Bool)

(assert (=> b!1003206 (= e!642886 (not lt!352323))))

(declare-fun bm!66832 () Bool)

(assert (=> bm!66832 (= call!66837 (isEmpty!6336 s!10566))))

(declare-fun d!291504 () Bool)

(declare-fun e!642888 () Bool)

(assert (=> d!291504 e!642888))

(declare-fun c!165253 () Bool)

(assert (=> d!291504 (= c!165253 (is-EmptyExpr!2784 r!15766))))

(declare-fun e!642889 () Bool)

(assert (=> d!291504 (= lt!352323 e!642889)))

(declare-fun c!165254 () Bool)

(assert (=> d!291504 (= c!165254 (isEmpty!6336 s!10566))))

(assert (=> d!291504 (validRegex!1253 r!15766)))

(assert (=> d!291504 (= (matchR!1320 r!15766 s!10566) lt!352323)))

(declare-fun b!1003207 () Bool)

(declare-fun res!452875 () Bool)

(assert (=> b!1003207 (=> res!452875 e!642887)))

(declare-fun e!642884 () Bool)

(assert (=> b!1003207 (= res!452875 e!642884)))

(declare-fun res!452874 () Bool)

(assert (=> b!1003207 (=> (not res!452874) (not e!642884))))

(assert (=> b!1003207 (= res!452874 lt!352323)))

(declare-fun b!1003208 () Bool)

(assert (=> b!1003208 (= e!642889 (nullable!896 r!15766))))

(declare-fun b!1003209 () Bool)

(assert (=> b!1003209 (= e!642888 e!642886)))

(declare-fun c!165255 () Bool)

(assert (=> b!1003209 (= c!165255 (is-EmptyLang!2784 r!15766))))

(declare-fun b!1003210 () Bool)

(declare-fun res!452876 () Bool)

(assert (=> b!1003210 (=> (not res!452876) (not e!642884))))

(assert (=> b!1003210 (= res!452876 (not call!66837))))

(declare-fun b!1003211 () Bool)

(declare-fun head!1855 (List!10014) C!6138)

(assert (=> b!1003211 (= e!642884 (= (head!1855 s!10566) (c!165217 r!15766)))))

(declare-fun b!1003212 () Bool)

(assert (=> b!1003212 (= e!642885 (not (= (head!1855 s!10566) (c!165217 r!15766))))))

(declare-fun b!1003213 () Bool)

(declare-fun res!452878 () Bool)

(assert (=> b!1003213 (=> (not res!452878) (not e!642884))))

(assert (=> b!1003213 (= res!452878 (isEmpty!6336 (tail!1417 s!10566)))))

(declare-fun b!1003214 () Bool)

(assert (=> b!1003214 (= e!642888 (= lt!352323 call!66837))))

(declare-fun b!1003215 () Bool)

(declare-fun derivativeStep!701 (Regex!2784 C!6138) Regex!2784)

(assert (=> b!1003215 (= e!642889 (matchR!1320 (derivativeStep!701 r!15766 (head!1855 s!10566)) (tail!1417 s!10566)))))

(declare-fun b!1003216 () Bool)

(declare-fun res!452877 () Bool)

(assert (=> b!1003216 (=> res!452877 e!642887)))

(assert (=> b!1003216 (= res!452877 (not (is-ElementMatch!2784 r!15766)))))

(assert (=> b!1003216 (= e!642886 e!642887)))

(assert (= (and d!291504 c!165254) b!1003208))

(assert (= (and d!291504 (not c!165254)) b!1003215))

(assert (= (and d!291504 c!165253) b!1003214))

(assert (= (and d!291504 (not c!165253)) b!1003209))

(assert (= (and b!1003209 c!165255) b!1003206))

(assert (= (and b!1003209 (not c!165255)) b!1003216))

(assert (= (and b!1003216 (not res!452877)) b!1003207))

(assert (= (and b!1003207 res!452874) b!1003210))

(assert (= (and b!1003210 res!452876) b!1003213))

(assert (= (and b!1003213 res!452878) b!1003211))

(assert (= (and b!1003207 (not res!452875)) b!1003204))

(assert (= (and b!1003204 res!452879) b!1003205))

(assert (= (and b!1003205 (not res!452880)) b!1003203))

(assert (= (and b!1003203 (not res!452881)) b!1003212))

(assert (= (or b!1003214 b!1003205 b!1003210) bm!66832))

(assert (=> bm!66832 m!1190847))

(declare-fun m!1190849 () Bool)

(assert (=> b!1003213 m!1190849))

(assert (=> b!1003213 m!1190849))

(declare-fun m!1190851 () Bool)

(assert (=> b!1003213 m!1190851))

(assert (=> b!1003203 m!1190849))

(assert (=> b!1003203 m!1190849))

(assert (=> b!1003203 m!1190851))

(declare-fun m!1190853 () Bool)

(assert (=> b!1003211 m!1190853))

(assert (=> b!1003212 m!1190853))

(assert (=> b!1003215 m!1190853))

(assert (=> b!1003215 m!1190853))

(declare-fun m!1190855 () Bool)

(assert (=> b!1003215 m!1190855))

(assert (=> b!1003215 m!1190849))

(assert (=> b!1003215 m!1190855))

(assert (=> b!1003215 m!1190849))

(declare-fun m!1190857 () Bool)

(assert (=> b!1003215 m!1190857))

(assert (=> d!291504 m!1190847))

(assert (=> d!291504 m!1190767))

(declare-fun m!1190859 () Bool)

(assert (=> b!1003208 m!1190859))

(assert (=> b!1003015 d!291504))

(declare-fun d!291506 () Bool)

(assert (=> d!291506 (= (matchR!1320 r!15766 s!10566) (matchRSpec!583 r!15766 s!10566))))

(declare-fun lt!352326 () Unit!15227)

(declare-fun choose!6362 (Regex!2784 List!10014) Unit!15227)

(assert (=> d!291506 (= lt!352326 (choose!6362 r!15766 s!10566))))

(assert (=> d!291506 (validRegex!1253 r!15766)))

(assert (=> d!291506 (= (mainMatchTheorem!583 r!15766 s!10566) lt!352326)))

(declare-fun bs!245157 () Bool)

(assert (= bs!245157 d!291506))

(assert (=> bs!245157 m!1190773))

(assert (=> bs!245157 m!1190771))

(declare-fun m!1190861 () Bool)

(assert (=> bs!245157 m!1190861))

(assert (=> bs!245157 m!1190767))

(assert (=> b!1003015 d!291506))

(declare-fun bm!66833 () Bool)

(declare-fun call!66840 () Bool)

(declare-fun c!165257 () Bool)

(assert (=> bm!66833 (= call!66840 (validRegex!1253 (ite c!165257 (regTwo!6081 r!15766) (regTwo!6080 r!15766))))))

(declare-fun c!165256 () Bool)

(declare-fun call!66839 () Bool)

(declare-fun bm!66834 () Bool)

(assert (=> bm!66834 (= call!66839 (validRegex!1253 (ite c!165256 (reg!3113 r!15766) (ite c!165257 (regOne!6081 r!15766) (regOne!6080 r!15766)))))))

(declare-fun b!1003218 () Bool)

(declare-fun e!642892 () Bool)

(declare-fun e!642896 () Bool)

(assert (=> b!1003218 (= e!642892 e!642896)))

(assert (=> b!1003218 (= c!165256 (is-Star!2784 r!15766))))

(declare-fun b!1003219 () Bool)

(declare-fun e!642893 () Bool)

(assert (=> b!1003219 (= e!642893 call!66839)))

(declare-fun b!1003220 () Bool)

(declare-fun e!642895 () Bool)

(assert (=> b!1003220 (= e!642895 call!66840)))

(declare-fun b!1003221 () Bool)

(declare-fun res!452886 () Bool)

(declare-fun e!642894 () Bool)

(assert (=> b!1003221 (=> (not res!452886) (not e!642894))))

(declare-fun call!66838 () Bool)

(assert (=> b!1003221 (= res!452886 call!66838)))

(declare-fun e!642890 () Bool)

(assert (=> b!1003221 (= e!642890 e!642894)))

(declare-fun b!1003222 () Bool)

(declare-fun e!642891 () Bool)

(assert (=> b!1003222 (= e!642891 e!642895)))

(declare-fun res!452884 () Bool)

(assert (=> b!1003222 (=> (not res!452884) (not e!642895))))

(assert (=> b!1003222 (= res!452884 call!66838)))

(declare-fun bm!66835 () Bool)

(assert (=> bm!66835 (= call!66838 call!66839)))

(declare-fun b!1003223 () Bool)

(assert (=> b!1003223 (= e!642894 call!66840)))

(declare-fun b!1003224 () Bool)

(assert (=> b!1003224 (= e!642896 e!642890)))

(assert (=> b!1003224 (= c!165257 (is-Union!2784 r!15766))))

(declare-fun b!1003225 () Bool)

(declare-fun res!452885 () Bool)

(assert (=> b!1003225 (=> res!452885 e!642891)))

(assert (=> b!1003225 (= res!452885 (not (is-Concat!4617 r!15766)))))

(assert (=> b!1003225 (= e!642890 e!642891)))

(declare-fun b!1003217 () Bool)

(assert (=> b!1003217 (= e!642896 e!642893)))

(declare-fun res!452883 () Bool)

(assert (=> b!1003217 (= res!452883 (not (nullable!896 (reg!3113 r!15766))))))

(assert (=> b!1003217 (=> (not res!452883) (not e!642893))))

(declare-fun d!291508 () Bool)

(declare-fun res!452882 () Bool)

(assert (=> d!291508 (=> res!452882 e!642892)))

(assert (=> d!291508 (= res!452882 (is-ElementMatch!2784 r!15766))))

(assert (=> d!291508 (= (validRegex!1253 r!15766) e!642892)))

(assert (= (and d!291508 (not res!452882)) b!1003218))

(assert (= (and b!1003218 c!165256) b!1003217))

(assert (= (and b!1003218 (not c!165256)) b!1003224))

(assert (= (and b!1003217 res!452883) b!1003219))

(assert (= (and b!1003224 c!165257) b!1003221))

(assert (= (and b!1003224 (not c!165257)) b!1003225))

(assert (= (and b!1003221 res!452886) b!1003223))

(assert (= (and b!1003225 (not res!452885)) b!1003222))

(assert (= (and b!1003222 res!452884) b!1003220))

(assert (= (or b!1003223 b!1003220) bm!66833))

(assert (= (or b!1003221 b!1003222) bm!66835))

(assert (= (or b!1003219 bm!66835) bm!66834))

(declare-fun m!1190863 () Bool)

(assert (=> bm!66833 m!1190863))

(declare-fun m!1190865 () Bool)

(assert (=> bm!66834 m!1190865))

(assert (=> b!1003217 m!1190769))

(assert (=> start!88024 d!291508))

(declare-fun b!1003246 () Bool)

(declare-fun e!642904 () Bool)

(declare-fun tp!305461 () Bool)

(declare-fun tp!305462 () Bool)

(assert (=> b!1003246 (= e!642904 (and tp!305461 tp!305462))))

(declare-fun b!1003245 () Bool)

(assert (=> b!1003245 (= e!642904 tp_is_empty!5211)))

(assert (=> b!1003011 (= tp!305428 e!642904)))

(declare-fun b!1003247 () Bool)

(declare-fun tp!305459 () Bool)

(assert (=> b!1003247 (= e!642904 tp!305459)))

(declare-fun b!1003248 () Bool)

(declare-fun tp!305463 () Bool)

(declare-fun tp!305460 () Bool)

(assert (=> b!1003248 (= e!642904 (and tp!305463 tp!305460))))

(assert (= (and b!1003011 (is-ElementMatch!2784 (reg!3113 r!15766))) b!1003245))

(assert (= (and b!1003011 (is-Concat!4617 (reg!3113 r!15766))) b!1003246))

(assert (= (and b!1003011 (is-Star!2784 (reg!3113 r!15766))) b!1003247))

(assert (= (and b!1003011 (is-Union!2784 (reg!3113 r!15766))) b!1003248))

(declare-fun b!1003250 () Bool)

(declare-fun e!642905 () Bool)

(declare-fun tp!305466 () Bool)

(declare-fun tp!305467 () Bool)

(assert (=> b!1003250 (= e!642905 (and tp!305466 tp!305467))))

(declare-fun b!1003249 () Bool)

(assert (=> b!1003249 (= e!642905 tp_is_empty!5211)))

(assert (=> b!1003012 (= tp!305426 e!642905)))

(declare-fun b!1003251 () Bool)

(declare-fun tp!305464 () Bool)

(assert (=> b!1003251 (= e!642905 tp!305464)))

(declare-fun b!1003252 () Bool)

(declare-fun tp!305468 () Bool)

(declare-fun tp!305465 () Bool)

(assert (=> b!1003252 (= e!642905 (and tp!305468 tp!305465))))

(assert (= (and b!1003012 (is-ElementMatch!2784 (regOne!6081 r!15766))) b!1003249))

(assert (= (and b!1003012 (is-Concat!4617 (regOne!6081 r!15766))) b!1003250))

(assert (= (and b!1003012 (is-Star!2784 (regOne!6081 r!15766))) b!1003251))

(assert (= (and b!1003012 (is-Union!2784 (regOne!6081 r!15766))) b!1003252))

(declare-fun b!1003254 () Bool)

(declare-fun e!642906 () Bool)

(declare-fun tp!305471 () Bool)

(declare-fun tp!305472 () Bool)

(assert (=> b!1003254 (= e!642906 (and tp!305471 tp!305472))))

(declare-fun b!1003253 () Bool)

(assert (=> b!1003253 (= e!642906 tp_is_empty!5211)))

(assert (=> b!1003012 (= tp!305429 e!642906)))

(declare-fun b!1003255 () Bool)

(declare-fun tp!305469 () Bool)

(assert (=> b!1003255 (= e!642906 tp!305469)))

(declare-fun b!1003256 () Bool)

(declare-fun tp!305473 () Bool)

(declare-fun tp!305470 () Bool)

(assert (=> b!1003256 (= e!642906 (and tp!305473 tp!305470))))

(assert (= (and b!1003012 (is-ElementMatch!2784 (regTwo!6081 r!15766))) b!1003253))

(assert (= (and b!1003012 (is-Concat!4617 (regTwo!6081 r!15766))) b!1003254))

(assert (= (and b!1003012 (is-Star!2784 (regTwo!6081 r!15766))) b!1003255))

(assert (= (and b!1003012 (is-Union!2784 (regTwo!6081 r!15766))) b!1003256))

(declare-fun b!1003258 () Bool)

(declare-fun e!642907 () Bool)

(declare-fun tp!305476 () Bool)

(declare-fun tp!305477 () Bool)

(assert (=> b!1003258 (= e!642907 (and tp!305476 tp!305477))))

(declare-fun b!1003257 () Bool)

(assert (=> b!1003257 (= e!642907 tp_is_empty!5211)))

(assert (=> b!1003013 (= tp!305427 e!642907)))

(declare-fun b!1003259 () Bool)

(declare-fun tp!305474 () Bool)

(assert (=> b!1003259 (= e!642907 tp!305474)))

(declare-fun b!1003260 () Bool)

(declare-fun tp!305478 () Bool)

(declare-fun tp!305475 () Bool)

(assert (=> b!1003260 (= e!642907 (and tp!305478 tp!305475))))

(assert (= (and b!1003013 (is-ElementMatch!2784 (regOne!6080 r!15766))) b!1003257))

(assert (= (and b!1003013 (is-Concat!4617 (regOne!6080 r!15766))) b!1003258))

(assert (= (and b!1003013 (is-Star!2784 (regOne!6080 r!15766))) b!1003259))

(assert (= (and b!1003013 (is-Union!2784 (regOne!6080 r!15766))) b!1003260))

(declare-fun b!1003262 () Bool)

(declare-fun e!642908 () Bool)

(declare-fun tp!305481 () Bool)

(declare-fun tp!305482 () Bool)

(assert (=> b!1003262 (= e!642908 (and tp!305481 tp!305482))))

(declare-fun b!1003261 () Bool)

(assert (=> b!1003261 (= e!642908 tp_is_empty!5211)))

(assert (=> b!1003013 (= tp!305430 e!642908)))

(declare-fun b!1003263 () Bool)

(declare-fun tp!305479 () Bool)

(assert (=> b!1003263 (= e!642908 tp!305479)))

(declare-fun b!1003264 () Bool)

(declare-fun tp!305483 () Bool)

(declare-fun tp!305480 () Bool)

(assert (=> b!1003264 (= e!642908 (and tp!305483 tp!305480))))

(assert (= (and b!1003013 (is-ElementMatch!2784 (regTwo!6080 r!15766))) b!1003261))

(assert (= (and b!1003013 (is-Concat!4617 (regTwo!6080 r!15766))) b!1003262))

(assert (= (and b!1003013 (is-Star!2784 (regTwo!6080 r!15766))) b!1003263))

(assert (= (and b!1003013 (is-Union!2784 (regTwo!6080 r!15766))) b!1003264))

(declare-fun b!1003269 () Bool)

(declare-fun e!642911 () Bool)

(declare-fun tp!305486 () Bool)

(assert (=> b!1003269 (= e!642911 (and tp_is_empty!5211 tp!305486))))

(assert (=> b!1003010 (= tp!305425 e!642911)))

(assert (= (and b!1003010 (is-Cons!9998 (t!101060 s!10566))) b!1003269))

(push 1)

(assert (not b!1003258))

(assert (not b!1003255))

(assert (not bm!66822))

(assert (not b!1003212))

(assert (not b!1003154))

(assert (not bm!66821))

(assert (not b!1003217))

(assert (not b!1003105))

(assert (not b!1003254))

(assert (not b!1003250))

(assert (not b!1003213))

(assert (not b!1003256))

(assert (not b!1003071))

(assert (not b!1003248))

(assert (not b!1003247))

(assert (not b!1003251))

(assert (not d!291496))

(assert (not bm!66834))

(assert (not b!1003211))

(assert (not b!1003269))

(assert (not b!1003072))

(assert (not bm!66829))

(assert (not d!291484))

(assert (not b!1003262))

(assert (not b!1003070))

(assert (not d!291494))

(assert (not b!1003263))

(assert (not b!1003075))

(assert (not bm!66832))

(assert (not b!1003155))

(assert (not b!1003208))

(assert (not b!1003215))

(assert (not d!291506))

(assert (not b!1003073))

(assert (not b!1003259))

(assert (not b!1003264))

(assert (not b!1003203))

(assert (not d!291504))

(assert (not b!1003260))

(assert (not bm!66833))

(assert (not b!1003077))

(assert tp_is_empty!5211)

(assert (not bm!66828))

(assert (not b!1003246))

(assert (not d!291486))

(assert (not d!291492))

(assert (not b!1003252))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

