; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!79860 () Bool)

(assert start!79860)

(declare-fun b!883805 () Bool)

(assert (=> b!883805 true))

(assert (=> b!883805 true))

(declare-fun lambda!27224 () Int)

(declare-fun lambda!27223 () Int)

(assert (=> b!883805 (not (= lambda!27224 lambda!27223))))

(assert (=> b!883805 true))

(assert (=> b!883805 true))

(declare-fun b!883800 () Bool)

(declare-fun e!579847 () Bool)

(declare-fun tp!278987 () Bool)

(declare-fun tp!278988 () Bool)

(assert (=> b!883800 (= e!579847 (and tp!278987 tp!278988))))

(declare-fun b!883801 () Bool)

(declare-fun e!579842 () Bool)

(declare-fun e!579843 () Bool)

(assert (=> b!883801 (= e!579842 (not e!579843))))

(declare-fun res!401984 () Bool)

(assert (=> b!883801 (=> res!401984 e!579843)))

(declare-fun lt!331137 () Bool)

(declare-datatypes ((C!5118 0))(
  ( (C!5119 (val!2807 Int)) )
))
(declare-datatypes ((Regex!2274 0))(
  ( (ElementMatch!2274 (c!142821 C!5118)) (Concat!4107 (regOne!5060 Regex!2274) (regTwo!5060 Regex!2274)) (EmptyExpr!2274) (Star!2274 (reg!2603 Regex!2274)) (EmptyLang!2274) (Union!2274 (regOne!5061 Regex!2274) (regTwo!5061 Regex!2274)) )
))
(declare-fun r!15766 () Regex!2274)

(assert (=> b!883801 (= res!401984 (or (not lt!331137) (and (is-Concat!4107 r!15766) (is-EmptyExpr!2274 (regOne!5060 r!15766))) (and (is-Concat!4107 r!15766) (is-EmptyExpr!2274 (regTwo!5060 r!15766))) (not (is-Concat!4107 r!15766))))))

(declare-datatypes ((List!9504 0))(
  ( (Nil!9488) (Cons!9488 (h!14889 C!5118) (t!100550 List!9504)) )
))
(declare-fun s!10566 () List!9504)

(declare-fun matchRSpec!75 (Regex!2274 List!9504) Bool)

(assert (=> b!883801 (= lt!331137 (matchRSpec!75 r!15766 s!10566))))

(declare-fun matchR!812 (Regex!2274 List!9504) Bool)

(assert (=> b!883801 (= lt!331137 (matchR!812 r!15766 s!10566))))

(declare-datatypes ((Unit!14127 0))(
  ( (Unit!14128) )
))
(declare-fun lt!331142 () Unit!14127)

(declare-fun mainMatchTheorem!75 (Regex!2274 List!9504) Unit!14127)

(assert (=> b!883801 (= lt!331142 (mainMatchTheorem!75 r!15766 s!10566))))

(declare-fun b!883802 () Bool)

(declare-fun res!401985 () Bool)

(declare-fun e!579846 () Bool)

(assert (=> b!883802 (=> res!401985 e!579846)))

(declare-datatypes ((tuple2!10634 0))(
  ( (tuple2!10635 (_1!6143 List!9504) (_2!6143 List!9504)) )
))
(declare-fun lt!331139 () tuple2!10634)

(assert (=> b!883802 (= res!401985 (not (matchR!812 (regTwo!5060 r!15766) (_2!6143 lt!331139))))))

(declare-fun b!883803 () Bool)

(declare-fun tp_is_empty!4191 () Bool)

(assert (=> b!883803 (= e!579847 tp_is_empty!4191)))

(declare-fun b!883804 () Bool)

(declare-fun e!579844 () Bool)

(assert (=> b!883804 (= e!579844 e!579846)))

(declare-fun res!401986 () Bool)

(assert (=> b!883804 (=> res!401986 e!579846)))

(assert (=> b!883804 (= res!401986 (not (matchR!812 (regOne!5060 r!15766) (_1!6143 lt!331139))))))

(declare-datatypes ((Option!1959 0))(
  ( (None!1958) (Some!1958 (v!19375 tuple2!10634)) )
))
(declare-fun lt!331136 () Option!1959)

(declare-fun get!2961 (Option!1959) tuple2!10634)

(assert (=> b!883804 (= lt!331139 (get!2961 lt!331136))))

(assert (=> b!883805 (= e!579843 e!579844)))

(declare-fun res!401983 () Bool)

(assert (=> b!883805 (=> res!401983 e!579844)))

(declare-fun isEmpty!5689 (List!9504) Bool)

(assert (=> b!883805 (= res!401983 (isEmpty!5689 s!10566))))

(declare-fun Exists!69 (Int) Bool)

(assert (=> b!883805 (= (Exists!69 lambda!27223) (Exists!69 lambda!27224))))

(declare-fun lt!331143 () Unit!14127)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!59 (Regex!2274 Regex!2274 List!9504) Unit!14127)

(assert (=> b!883805 (= lt!331143 (lemmaExistCutMatchRandMatchRSpecEquivalent!59 (regOne!5060 r!15766) (regTwo!5060 r!15766) s!10566))))

(declare-fun isDefined!1601 (Option!1959) Bool)

(assert (=> b!883805 (= (isDefined!1601 lt!331136) (Exists!69 lambda!27223))))

(declare-fun findConcatSeparation!65 (Regex!2274 Regex!2274 List!9504 List!9504 List!9504) Option!1959)

(assert (=> b!883805 (= lt!331136 (findConcatSeparation!65 (regOne!5060 r!15766) (regTwo!5060 r!15766) Nil!9488 s!10566 s!10566))))

(declare-fun lt!331138 () Unit!14127)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!65 (Regex!2274 Regex!2274 List!9504) Unit!14127)

(assert (=> b!883805 (= lt!331138 (lemmaFindConcatSeparationEquivalentToExists!65 (regOne!5060 r!15766) (regTwo!5060 r!15766) s!10566))))

(declare-fun b!883806 () Bool)

(declare-fun tp!278986 () Bool)

(assert (=> b!883806 (= e!579847 tp!278986)))

(declare-fun b!883807 () Bool)

(declare-fun e!579845 () Bool)

(declare-fun tp!278989 () Bool)

(assert (=> b!883807 (= e!579845 (and tp_is_empty!4191 tp!278989))))

(declare-fun res!401987 () Bool)

(assert (=> start!79860 (=> (not res!401987) (not e!579842))))

(declare-fun validRegex!743 (Regex!2274) Bool)

(assert (=> start!79860 (= res!401987 (validRegex!743 r!15766))))

(assert (=> start!79860 e!579842))

(assert (=> start!79860 e!579847))

(assert (=> start!79860 e!579845))

(declare-fun b!883808 () Bool)

(assert (=> b!883808 (= e!579846 (validRegex!743 (regOne!5060 r!15766)))))

(declare-fun removeUselessConcat!17 (Regex!2274) Regex!2274)

(assert (=> b!883808 (matchR!812 (removeUselessConcat!17 (regTwo!5060 r!15766)) (_2!6143 lt!331139))))

(declare-fun lt!331140 () Unit!14127)

(declare-fun lemmaRemoveUselessConcatSound!11 (Regex!2274 List!9504) Unit!14127)

(assert (=> b!883808 (= lt!331140 (lemmaRemoveUselessConcatSound!11 (regTwo!5060 r!15766) (_2!6143 lt!331139)))))

(assert (=> b!883808 (matchR!812 (removeUselessConcat!17 (regOne!5060 r!15766)) (_1!6143 lt!331139))))

(declare-fun lt!331141 () Unit!14127)

(assert (=> b!883808 (= lt!331141 (lemmaRemoveUselessConcatSound!11 (regOne!5060 r!15766) (_1!6143 lt!331139)))))

(declare-fun b!883809 () Bool)

(declare-fun tp!278985 () Bool)

(declare-fun tp!278990 () Bool)

(assert (=> b!883809 (= e!579847 (and tp!278985 tp!278990))))

(assert (= (and start!79860 res!401987) b!883801))

(assert (= (and b!883801 (not res!401984)) b!883805))

(assert (= (and b!883805 (not res!401983)) b!883804))

(assert (= (and b!883804 (not res!401986)) b!883802))

(assert (= (and b!883802 (not res!401985)) b!883808))

(assert (= (and start!79860 (is-ElementMatch!2274 r!15766)) b!883803))

(assert (= (and start!79860 (is-Concat!4107 r!15766)) b!883809))

(assert (= (and start!79860 (is-Star!2274 r!15766)) b!883806))

(assert (= (and start!79860 (is-Union!2274 r!15766)) b!883800))

(assert (= (and start!79860 (is-Cons!9488 s!10566)) b!883807))

(declare-fun m!1130545 () Bool)

(assert (=> b!883802 m!1130545))

(declare-fun m!1130547 () Bool)

(assert (=> b!883804 m!1130547))

(declare-fun m!1130549 () Bool)

(assert (=> b!883804 m!1130549))

(declare-fun m!1130551 () Bool)

(assert (=> start!79860 m!1130551))

(declare-fun m!1130553 () Bool)

(assert (=> b!883801 m!1130553))

(declare-fun m!1130555 () Bool)

(assert (=> b!883801 m!1130555))

(declare-fun m!1130557 () Bool)

(assert (=> b!883801 m!1130557))

(declare-fun m!1130559 () Bool)

(assert (=> b!883808 m!1130559))

(declare-fun m!1130561 () Bool)

(assert (=> b!883808 m!1130561))

(assert (=> b!883808 m!1130559))

(declare-fun m!1130563 () Bool)

(assert (=> b!883808 m!1130563))

(declare-fun m!1130565 () Bool)

(assert (=> b!883808 m!1130565))

(declare-fun m!1130567 () Bool)

(assert (=> b!883808 m!1130567))

(declare-fun m!1130569 () Bool)

(assert (=> b!883808 m!1130569))

(assert (=> b!883808 m!1130563))

(declare-fun m!1130571 () Bool)

(assert (=> b!883808 m!1130571))

(declare-fun m!1130573 () Bool)

(assert (=> b!883805 m!1130573))

(declare-fun m!1130575 () Bool)

(assert (=> b!883805 m!1130575))

(declare-fun m!1130577 () Bool)

(assert (=> b!883805 m!1130577))

(declare-fun m!1130579 () Bool)

(assert (=> b!883805 m!1130579))

(declare-fun m!1130581 () Bool)

(assert (=> b!883805 m!1130581))

(assert (=> b!883805 m!1130575))

(declare-fun m!1130583 () Bool)

(assert (=> b!883805 m!1130583))

(declare-fun m!1130585 () Bool)

(assert (=> b!883805 m!1130585))

(push 1)

(assert (not b!883804))

(assert (not b!883808))

(assert (not b!883801))

(assert (not b!883809))

(assert (not start!79860))

(assert (not b!883800))

(assert tp_is_empty!4191)

(assert (not b!883802))

(assert (not b!883807))

(assert (not b!883805))

(assert (not b!883806))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!883878 () Bool)

(declare-fun res!402029 () Bool)

(declare-fun e!579889 () Bool)

(assert (=> b!883878 (=> (not res!402029) (not e!579889))))

(declare-fun call!51667 () Bool)

(assert (=> b!883878 (= res!402029 call!51667)))

(declare-fun e!579888 () Bool)

(assert (=> b!883878 (= e!579888 e!579889)))

(declare-fun b!883879 () Bool)

(declare-fun e!579891 () Bool)

(assert (=> b!883879 (= e!579891 e!579888)))

(declare-fun c!142828 () Bool)

(assert (=> b!883879 (= c!142828 (is-Union!2274 (regOne!5060 r!15766)))))

(declare-fun b!883880 () Bool)

(declare-fun e!579890 () Bool)

(declare-fun call!51666 () Bool)

(assert (=> b!883880 (= e!579890 call!51666)))

(declare-fun bm!51662 () Bool)

(assert (=> bm!51662 (= call!51666 (validRegex!743 (ite c!142828 (regTwo!5061 (regOne!5060 r!15766)) (regTwo!5060 (regOne!5060 r!15766)))))))

(declare-fun b!883881 () Bool)

(declare-fun e!579887 () Bool)

(declare-fun call!51668 () Bool)

(assert (=> b!883881 (= e!579887 call!51668)))

(declare-fun bm!51663 () Bool)

(assert (=> bm!51663 (= call!51667 call!51668)))

(declare-fun b!883882 () Bool)

(declare-fun e!579892 () Bool)

(assert (=> b!883882 (= e!579892 e!579891)))

(declare-fun c!142827 () Bool)

(assert (=> b!883882 (= c!142827 (is-Star!2274 (regOne!5060 r!15766)))))

(declare-fun b!883883 () Bool)

(declare-fun e!579886 () Bool)

(assert (=> b!883883 (= e!579886 e!579890)))

(declare-fun res!402025 () Bool)

(assert (=> b!883883 (=> (not res!402025) (not e!579890))))

(assert (=> b!883883 (= res!402025 call!51667)))

(declare-fun b!883884 () Bool)

(assert (=> b!883884 (= e!579889 call!51666)))

(declare-fun b!883885 () Bool)

(assert (=> b!883885 (= e!579891 e!579887)))

(declare-fun res!402027 () Bool)

(declare-fun nullable!580 (Regex!2274) Bool)

(assert (=> b!883885 (= res!402027 (not (nullable!580 (reg!2603 (regOne!5060 r!15766)))))))

(assert (=> b!883885 (=> (not res!402027) (not e!579887))))

(declare-fun b!883886 () Bool)

(declare-fun res!402026 () Bool)

(assert (=> b!883886 (=> res!402026 e!579886)))

(assert (=> b!883886 (= res!402026 (not (is-Concat!4107 (regOne!5060 r!15766))))))

(assert (=> b!883886 (= e!579888 e!579886)))

(declare-fun bm!51661 () Bool)

(assert (=> bm!51661 (= call!51668 (validRegex!743 (ite c!142827 (reg!2603 (regOne!5060 r!15766)) (ite c!142828 (regOne!5061 (regOne!5060 r!15766)) (regOne!5060 (regOne!5060 r!15766))))))))

(declare-fun d!276625 () Bool)

(declare-fun res!402028 () Bool)

(assert (=> d!276625 (=> res!402028 e!579892)))

(assert (=> d!276625 (= res!402028 (is-ElementMatch!2274 (regOne!5060 r!15766)))))

(assert (=> d!276625 (= (validRegex!743 (regOne!5060 r!15766)) e!579892)))

(assert (= (and d!276625 (not res!402028)) b!883882))

(assert (= (and b!883882 c!142827) b!883885))

(assert (= (and b!883882 (not c!142827)) b!883879))

(assert (= (and b!883885 res!402027) b!883881))

(assert (= (and b!883879 c!142828) b!883878))

(assert (= (and b!883879 (not c!142828)) b!883886))

(assert (= (and b!883878 res!402029) b!883884))

(assert (= (and b!883886 (not res!402026)) b!883883))

(assert (= (and b!883883 res!402025) b!883880))

(assert (= (or b!883884 b!883880) bm!51662))

(assert (= (or b!883878 b!883883) bm!51663))

(assert (= (or b!883881 bm!51663) bm!51661))

(declare-fun m!1130629 () Bool)

(assert (=> bm!51662 m!1130629))

(declare-fun m!1130631 () Bool)

(assert (=> b!883885 m!1130631))

(declare-fun m!1130633 () Bool)

(assert (=> bm!51661 m!1130633))

(assert (=> b!883808 d!276625))

(declare-fun d!276627 () Bool)

(assert (=> d!276627 (= (matchR!812 (regTwo!5060 r!15766) (_2!6143 lt!331139)) (matchR!812 (removeUselessConcat!17 (regTwo!5060 r!15766)) (_2!6143 lt!331139)))))

(declare-fun lt!331170 () Unit!14127)

(declare-fun choose!5243 (Regex!2274 List!9504) Unit!14127)

(assert (=> d!276627 (= lt!331170 (choose!5243 (regTwo!5060 r!15766) (_2!6143 lt!331139)))))

(assert (=> d!276627 (validRegex!743 (regTwo!5060 r!15766))))

(assert (=> d!276627 (= (lemmaRemoveUselessConcatSound!11 (regTwo!5060 r!15766) (_2!6143 lt!331139)) lt!331170)))

(declare-fun bs!234585 () Bool)

(assert (= bs!234585 d!276627))

(declare-fun m!1130635 () Bool)

(assert (=> bs!234585 m!1130635))

(assert (=> bs!234585 m!1130545))

(assert (=> bs!234585 m!1130559))

(assert (=> bs!234585 m!1130561))

(declare-fun m!1130637 () Bool)

(assert (=> bs!234585 m!1130637))

(assert (=> bs!234585 m!1130559))

(assert (=> b!883808 d!276627))

(declare-fun b!883934 () Bool)

(declare-fun res!402057 () Bool)

(declare-fun e!579921 () Bool)

(assert (=> b!883934 (=> res!402057 e!579921)))

(declare-fun tail!1107 (List!9504) List!9504)

(assert (=> b!883934 (= res!402057 (not (isEmpty!5689 (tail!1107 (_1!6143 lt!331139)))))))

(declare-fun b!883935 () Bool)

(declare-fun e!579923 () Bool)

(assert (=> b!883935 (= e!579923 e!579921)))

(declare-fun res!402061 () Bool)

(assert (=> b!883935 (=> res!402061 e!579921)))

(declare-fun call!51677 () Bool)

(assert (=> b!883935 (= res!402061 call!51677)))

(declare-fun b!883936 () Bool)

(declare-fun res!402060 () Bool)

(declare-fun e!579927 () Bool)

(assert (=> b!883936 (=> res!402060 e!579927)))

(assert (=> b!883936 (= res!402060 (not (is-ElementMatch!2274 (removeUselessConcat!17 (regOne!5060 r!15766)))))))

(declare-fun e!579922 () Bool)

(assert (=> b!883936 (= e!579922 e!579927)))

(declare-fun b!883937 () Bool)

(declare-fun e!579925 () Bool)

(declare-fun head!1545 (List!9504) C!5118)

(assert (=> b!883937 (= e!579925 (= (head!1545 (_1!6143 lt!331139)) (c!142821 (removeUselessConcat!17 (regOne!5060 r!15766)))))))

(declare-fun b!883938 () Bool)

(assert (=> b!883938 (= e!579927 e!579923)))

(declare-fun res!402059 () Bool)

(assert (=> b!883938 (=> (not res!402059) (not e!579923))))

(declare-fun lt!331173 () Bool)

(assert (=> b!883938 (= res!402059 (not lt!331173))))

(declare-fun b!883939 () Bool)

(declare-fun e!579924 () Bool)

(declare-fun derivativeStep!392 (Regex!2274 C!5118) Regex!2274)

(assert (=> b!883939 (= e!579924 (matchR!812 (derivativeStep!392 (removeUselessConcat!17 (regOne!5060 r!15766)) (head!1545 (_1!6143 lt!331139))) (tail!1107 (_1!6143 lt!331139))))))

(declare-fun bm!51672 () Bool)

(assert (=> bm!51672 (= call!51677 (isEmpty!5689 (_1!6143 lt!331139)))))

(declare-fun b!883940 () Bool)

(declare-fun res!402056 () Bool)

(assert (=> b!883940 (=> (not res!402056) (not e!579925))))

(assert (=> b!883940 (= res!402056 (isEmpty!5689 (tail!1107 (_1!6143 lt!331139))))))

(declare-fun b!883941 () Bool)

(declare-fun res!402063 () Bool)

(assert (=> b!883941 (=> res!402063 e!579927)))

(assert (=> b!883941 (= res!402063 e!579925)))

(declare-fun res!402058 () Bool)

(assert (=> b!883941 (=> (not res!402058) (not e!579925))))

(assert (=> b!883941 (= res!402058 lt!331173)))

(declare-fun b!883942 () Bool)

(declare-fun e!579926 () Bool)

(assert (=> b!883942 (= e!579926 (= lt!331173 call!51677))))

(declare-fun d!276631 () Bool)

(assert (=> d!276631 e!579926))

(declare-fun c!142839 () Bool)

(assert (=> d!276631 (= c!142839 (is-EmptyExpr!2274 (removeUselessConcat!17 (regOne!5060 r!15766))))))

(assert (=> d!276631 (= lt!331173 e!579924)))

(declare-fun c!142840 () Bool)

(assert (=> d!276631 (= c!142840 (isEmpty!5689 (_1!6143 lt!331139)))))

(assert (=> d!276631 (validRegex!743 (removeUselessConcat!17 (regOne!5060 r!15766)))))

(assert (=> d!276631 (= (matchR!812 (removeUselessConcat!17 (regOne!5060 r!15766)) (_1!6143 lt!331139)) lt!331173)))

(declare-fun b!883933 () Bool)

(assert (=> b!883933 (= e!579924 (nullable!580 (removeUselessConcat!17 (regOne!5060 r!15766))))))

(declare-fun b!883943 () Bool)

(assert (=> b!883943 (= e!579922 (not lt!331173))))

(declare-fun b!883944 () Bool)

(declare-fun res!402062 () Bool)

(assert (=> b!883944 (=> (not res!402062) (not e!579925))))

(assert (=> b!883944 (= res!402062 (not call!51677))))

(declare-fun b!883945 () Bool)

(assert (=> b!883945 (= e!579926 e!579922)))

(declare-fun c!142841 () Bool)

(assert (=> b!883945 (= c!142841 (is-EmptyLang!2274 (removeUselessConcat!17 (regOne!5060 r!15766))))))

(declare-fun b!883946 () Bool)

(assert (=> b!883946 (= e!579921 (not (= (head!1545 (_1!6143 lt!331139)) (c!142821 (removeUselessConcat!17 (regOne!5060 r!15766))))))))

(assert (= (and d!276631 c!142840) b!883933))

(assert (= (and d!276631 (not c!142840)) b!883939))

(assert (= (and d!276631 c!142839) b!883942))

(assert (= (and d!276631 (not c!142839)) b!883945))

(assert (= (and b!883945 c!142841) b!883943))

(assert (= (and b!883945 (not c!142841)) b!883936))

(assert (= (and b!883936 (not res!402060)) b!883941))

(assert (= (and b!883941 res!402058) b!883944))

(assert (= (and b!883944 res!402062) b!883940))

(assert (= (and b!883940 res!402056) b!883937))

(assert (= (and b!883941 (not res!402063)) b!883938))

(assert (= (and b!883938 res!402059) b!883935))

(assert (= (and b!883935 (not res!402061)) b!883934))

(assert (= (and b!883934 (not res!402057)) b!883946))

(assert (= (or b!883942 b!883935 b!883944) bm!51672))

(declare-fun m!1130639 () Bool)

(assert (=> b!883937 m!1130639))

(assert (=> b!883933 m!1130563))

(declare-fun m!1130641 () Bool)

(assert (=> b!883933 m!1130641))

(declare-fun m!1130643 () Bool)

(assert (=> b!883940 m!1130643))

(assert (=> b!883940 m!1130643))

(declare-fun m!1130645 () Bool)

(assert (=> b!883940 m!1130645))

(declare-fun m!1130647 () Bool)

(assert (=> d!276631 m!1130647))

(assert (=> d!276631 m!1130563))

(declare-fun m!1130649 () Bool)

(assert (=> d!276631 m!1130649))

(assert (=> b!883939 m!1130639))

(assert (=> b!883939 m!1130563))

(assert (=> b!883939 m!1130639))

(declare-fun m!1130651 () Bool)

(assert (=> b!883939 m!1130651))

(assert (=> b!883939 m!1130643))

(assert (=> b!883939 m!1130651))

(assert (=> b!883939 m!1130643))

(declare-fun m!1130653 () Bool)

(assert (=> b!883939 m!1130653))

(assert (=> b!883934 m!1130643))

(assert (=> b!883934 m!1130643))

(assert (=> b!883934 m!1130645))

(assert (=> b!883946 m!1130639))

(assert (=> bm!51672 m!1130647))

(assert (=> b!883808 d!276631))

(declare-fun d!276633 () Bool)

(assert (=> d!276633 (= (matchR!812 (regOne!5060 r!15766) (_1!6143 lt!331139)) (matchR!812 (removeUselessConcat!17 (regOne!5060 r!15766)) (_1!6143 lt!331139)))))

(declare-fun lt!331174 () Unit!14127)

(assert (=> d!276633 (= lt!331174 (choose!5243 (regOne!5060 r!15766) (_1!6143 lt!331139)))))

(assert (=> d!276633 (validRegex!743 (regOne!5060 r!15766))))

(assert (=> d!276633 (= (lemmaRemoveUselessConcatSound!11 (regOne!5060 r!15766) (_1!6143 lt!331139)) lt!331174)))

(declare-fun bs!234586 () Bool)

(assert (= bs!234586 d!276633))

(declare-fun m!1130655 () Bool)

(assert (=> bs!234586 m!1130655))

(assert (=> bs!234586 m!1130547))

(assert (=> bs!234586 m!1130563))

(assert (=> bs!234586 m!1130571))

(assert (=> bs!234586 m!1130569))

(assert (=> bs!234586 m!1130563))

(assert (=> b!883808 d!276633))

(declare-fun b!883978 () Bool)

(declare-fun e!579951 () Regex!2274)

(declare-fun call!51694 () Regex!2274)

(declare-fun call!51693 () Regex!2274)

(assert (=> b!883978 (= e!579951 (Concat!4107 call!51694 call!51693))))

(declare-fun d!276635 () Bool)

(declare-fun e!579952 () Bool)

(assert (=> d!276635 e!579952))

(declare-fun res!402071 () Bool)

(assert (=> d!276635 (=> (not res!402071) (not e!579952))))

(declare-fun lt!331177 () Regex!2274)

(assert (=> d!276635 (= res!402071 (validRegex!743 lt!331177))))

(declare-fun e!579947 () Regex!2274)

(assert (=> d!276635 (= lt!331177 e!579947)))

(declare-fun c!142856 () Bool)

(assert (=> d!276635 (= c!142856 (and (is-Concat!4107 (regOne!5060 r!15766)) (is-EmptyExpr!2274 (regOne!5060 (regOne!5060 r!15766)))))))

(assert (=> d!276635 (validRegex!743 (regOne!5060 r!15766))))

(assert (=> d!276635 (= (removeUselessConcat!17 (regOne!5060 r!15766)) lt!331177)))

(declare-fun bm!51686 () Bool)

(declare-fun call!51691 () Regex!2274)

(assert (=> bm!51686 (= call!51694 call!51691)))

(declare-fun b!883979 () Bool)

(declare-fun e!579948 () Regex!2274)

(declare-fun call!51692 () Regex!2274)

(assert (=> b!883979 (= e!579948 (Union!2274 call!51694 call!51692))))

(declare-fun b!883980 () Bool)

(declare-fun c!142855 () Bool)

(assert (=> b!883980 (= c!142855 (is-Concat!4107 (regOne!5060 r!15766)))))

(declare-fun e!579950 () Regex!2274)

(assert (=> b!883980 (= e!579950 e!579951)))

(declare-fun b!883981 () Bool)

(declare-fun e!579949 () Regex!2274)

(assert (=> b!883981 (= e!579949 (Star!2274 call!51692))))

(declare-fun b!883982 () Bool)

(assert (=> b!883982 (= e!579949 (regOne!5060 r!15766))))

(declare-fun bm!51687 () Bool)

(assert (=> bm!51687 (= call!51691 (removeUselessConcat!17 (ite c!142856 (regTwo!5060 (regOne!5060 r!15766)) (ite c!142855 (regOne!5060 (regOne!5060 r!15766)) (regOne!5061 (regOne!5060 r!15766))))))))

(declare-fun b!883983 () Bool)

(assert (=> b!883983 (= e!579947 call!51691)))

(declare-fun b!883984 () Bool)

(assert (=> b!883984 (= e!579947 e!579950)))

(declare-fun c!142857 () Bool)

(assert (=> b!883984 (= c!142857 (and (is-Concat!4107 (regOne!5060 r!15766)) (is-EmptyExpr!2274 (regTwo!5060 (regOne!5060 r!15766)))))))

(declare-fun bm!51688 () Bool)

(assert (=> bm!51688 (= call!51692 call!51693)))

(declare-fun b!883985 () Bool)

(assert (=> b!883985 (= e!579952 (= (nullable!580 lt!331177) (nullable!580 (regOne!5060 r!15766))))))

(declare-fun b!883986 () Bool)

(assert (=> b!883986 (= e!579951 e!579948)))

(declare-fun c!142854 () Bool)

(assert (=> b!883986 (= c!142854 (is-Union!2274 (regOne!5060 r!15766)))))

(declare-fun bm!51689 () Bool)

(declare-fun call!51695 () Regex!2274)

(assert (=> bm!51689 (= call!51695 (removeUselessConcat!17 (ite c!142857 (regOne!5060 (regOne!5060 r!15766)) (ite c!142855 (regTwo!5060 (regOne!5060 r!15766)) (ite c!142854 (regTwo!5061 (regOne!5060 r!15766)) (reg!2603 (regOne!5060 r!15766)))))))))

(declare-fun b!883987 () Bool)

(assert (=> b!883987 (= e!579950 call!51695)))

(declare-fun bm!51690 () Bool)

(assert (=> bm!51690 (= call!51693 call!51695)))

(declare-fun b!883988 () Bool)

(declare-fun c!142858 () Bool)

(assert (=> b!883988 (= c!142858 (is-Star!2274 (regOne!5060 r!15766)))))

(assert (=> b!883988 (= e!579948 e!579949)))

(assert (= (and d!276635 c!142856) b!883983))

(assert (= (and d!276635 (not c!142856)) b!883984))

(assert (= (and b!883984 c!142857) b!883987))

(assert (= (and b!883984 (not c!142857)) b!883980))

(assert (= (and b!883980 c!142855) b!883978))

(assert (= (and b!883980 (not c!142855)) b!883986))

(assert (= (and b!883986 c!142854) b!883979))

(assert (= (and b!883986 (not c!142854)) b!883988))

(assert (= (and b!883988 c!142858) b!883981))

(assert (= (and b!883988 (not c!142858)) b!883982))

(assert (= (or b!883979 b!883981) bm!51688))

(assert (= (or b!883978 bm!51688) bm!51690))

(assert (= (or b!883978 b!883979) bm!51686))

(assert (= (or b!883987 bm!51690) bm!51689))

(assert (= (or b!883983 bm!51686) bm!51687))

(assert (= (and d!276635 res!402071) b!883985))

(declare-fun m!1130663 () Bool)

(assert (=> d!276635 m!1130663))

(assert (=> d!276635 m!1130569))

(declare-fun m!1130665 () Bool)

(assert (=> bm!51687 m!1130665))

(declare-fun m!1130667 () Bool)

(assert (=> b!883985 m!1130667))

(declare-fun m!1130669 () Bool)

(assert (=> b!883985 m!1130669))

(declare-fun m!1130671 () Bool)

(assert (=> bm!51689 m!1130671))

(assert (=> b!883808 d!276635))

(declare-fun b!883989 () Bool)

(declare-fun e!579957 () Regex!2274)

(declare-fun call!51699 () Regex!2274)

(declare-fun call!51698 () Regex!2274)

(assert (=> b!883989 (= e!579957 (Concat!4107 call!51699 call!51698))))

(declare-fun d!276639 () Bool)

(declare-fun e!579958 () Bool)

(assert (=> d!276639 e!579958))

(declare-fun res!402072 () Bool)

(assert (=> d!276639 (=> (not res!402072) (not e!579958))))

(declare-fun lt!331178 () Regex!2274)

(assert (=> d!276639 (= res!402072 (validRegex!743 lt!331178))))

(declare-fun e!579953 () Regex!2274)

(assert (=> d!276639 (= lt!331178 e!579953)))

(declare-fun c!142861 () Bool)

(assert (=> d!276639 (= c!142861 (and (is-Concat!4107 (regTwo!5060 r!15766)) (is-EmptyExpr!2274 (regOne!5060 (regTwo!5060 r!15766)))))))

(assert (=> d!276639 (validRegex!743 (regTwo!5060 r!15766))))

(assert (=> d!276639 (= (removeUselessConcat!17 (regTwo!5060 r!15766)) lt!331178)))

(declare-fun bm!51691 () Bool)

(declare-fun call!51696 () Regex!2274)

(assert (=> bm!51691 (= call!51699 call!51696)))

(declare-fun b!883990 () Bool)

(declare-fun e!579954 () Regex!2274)

(declare-fun call!51697 () Regex!2274)

(assert (=> b!883990 (= e!579954 (Union!2274 call!51699 call!51697))))

(declare-fun b!883991 () Bool)

(declare-fun c!142860 () Bool)

(assert (=> b!883991 (= c!142860 (is-Concat!4107 (regTwo!5060 r!15766)))))

(declare-fun e!579956 () Regex!2274)

(assert (=> b!883991 (= e!579956 e!579957)))

(declare-fun b!883992 () Bool)

(declare-fun e!579955 () Regex!2274)

(assert (=> b!883992 (= e!579955 (Star!2274 call!51697))))

(declare-fun b!883993 () Bool)

(assert (=> b!883993 (= e!579955 (regTwo!5060 r!15766))))

(declare-fun bm!51692 () Bool)

(assert (=> bm!51692 (= call!51696 (removeUselessConcat!17 (ite c!142861 (regTwo!5060 (regTwo!5060 r!15766)) (ite c!142860 (regOne!5060 (regTwo!5060 r!15766)) (regOne!5061 (regTwo!5060 r!15766))))))))

(declare-fun b!883994 () Bool)

(assert (=> b!883994 (= e!579953 call!51696)))

(declare-fun b!883995 () Bool)

(assert (=> b!883995 (= e!579953 e!579956)))

(declare-fun c!142862 () Bool)

(assert (=> b!883995 (= c!142862 (and (is-Concat!4107 (regTwo!5060 r!15766)) (is-EmptyExpr!2274 (regTwo!5060 (regTwo!5060 r!15766)))))))

(declare-fun bm!51693 () Bool)

(assert (=> bm!51693 (= call!51697 call!51698)))

(declare-fun b!883996 () Bool)

(assert (=> b!883996 (= e!579958 (= (nullable!580 lt!331178) (nullable!580 (regTwo!5060 r!15766))))))

(declare-fun b!883997 () Bool)

(assert (=> b!883997 (= e!579957 e!579954)))

(declare-fun c!142859 () Bool)

(assert (=> b!883997 (= c!142859 (is-Union!2274 (regTwo!5060 r!15766)))))

(declare-fun call!51700 () Regex!2274)

(declare-fun bm!51694 () Bool)

(assert (=> bm!51694 (= call!51700 (removeUselessConcat!17 (ite c!142862 (regOne!5060 (regTwo!5060 r!15766)) (ite c!142860 (regTwo!5060 (regTwo!5060 r!15766)) (ite c!142859 (regTwo!5061 (regTwo!5060 r!15766)) (reg!2603 (regTwo!5060 r!15766)))))))))

(declare-fun b!883998 () Bool)

(assert (=> b!883998 (= e!579956 call!51700)))

(declare-fun bm!51695 () Bool)

(assert (=> bm!51695 (= call!51698 call!51700)))

(declare-fun b!883999 () Bool)

(declare-fun c!142863 () Bool)

(assert (=> b!883999 (= c!142863 (is-Star!2274 (regTwo!5060 r!15766)))))

(assert (=> b!883999 (= e!579954 e!579955)))

(assert (= (and d!276639 c!142861) b!883994))

(assert (= (and d!276639 (not c!142861)) b!883995))

(assert (= (and b!883995 c!142862) b!883998))

(assert (= (and b!883995 (not c!142862)) b!883991))

(assert (= (and b!883991 c!142860) b!883989))

(assert (= (and b!883991 (not c!142860)) b!883997))

(assert (= (and b!883997 c!142859) b!883990))

(assert (= (and b!883997 (not c!142859)) b!883999))

(assert (= (and b!883999 c!142863) b!883992))

(assert (= (and b!883999 (not c!142863)) b!883993))

(assert (= (or b!883990 b!883992) bm!51693))

(assert (= (or b!883989 bm!51693) bm!51695))

(assert (= (or b!883989 b!883990) bm!51691))

(assert (= (or b!883998 bm!51695) bm!51694))

(assert (= (or b!883994 bm!51691) bm!51692))

(assert (= (and d!276639 res!402072) b!883996))

(declare-fun m!1130673 () Bool)

(assert (=> d!276639 m!1130673))

(assert (=> d!276639 m!1130637))

(declare-fun m!1130675 () Bool)

(assert (=> bm!51692 m!1130675))

(declare-fun m!1130677 () Bool)

(assert (=> b!883996 m!1130677))

(declare-fun m!1130679 () Bool)

(assert (=> b!883996 m!1130679))

(declare-fun m!1130681 () Bool)

(assert (=> bm!51694 m!1130681))

(assert (=> b!883808 d!276639))

(declare-fun b!884001 () Bool)

(declare-fun res!402074 () Bool)

(declare-fun e!579959 () Bool)

(assert (=> b!884001 (=> res!402074 e!579959)))

(assert (=> b!884001 (= res!402074 (not (isEmpty!5689 (tail!1107 (_2!6143 lt!331139)))))))

(declare-fun b!884002 () Bool)

(declare-fun e!579961 () Bool)

(assert (=> b!884002 (= e!579961 e!579959)))

(declare-fun res!402078 () Bool)

(assert (=> b!884002 (=> res!402078 e!579959)))

(declare-fun call!51701 () Bool)

(assert (=> b!884002 (= res!402078 call!51701)))

(declare-fun b!884003 () Bool)

(declare-fun res!402077 () Bool)

(declare-fun e!579965 () Bool)

(assert (=> b!884003 (=> res!402077 e!579965)))

(assert (=> b!884003 (= res!402077 (not (is-ElementMatch!2274 (removeUselessConcat!17 (regTwo!5060 r!15766)))))))

(declare-fun e!579960 () Bool)

(assert (=> b!884003 (= e!579960 e!579965)))

(declare-fun b!884004 () Bool)

(declare-fun e!579963 () Bool)

(assert (=> b!884004 (= e!579963 (= (head!1545 (_2!6143 lt!331139)) (c!142821 (removeUselessConcat!17 (regTwo!5060 r!15766)))))))

(declare-fun b!884005 () Bool)

(assert (=> b!884005 (= e!579965 e!579961)))

(declare-fun res!402076 () Bool)

(assert (=> b!884005 (=> (not res!402076) (not e!579961))))

(declare-fun lt!331179 () Bool)

(assert (=> b!884005 (= res!402076 (not lt!331179))))

(declare-fun b!884006 () Bool)

(declare-fun e!579962 () Bool)

(assert (=> b!884006 (= e!579962 (matchR!812 (derivativeStep!392 (removeUselessConcat!17 (regTwo!5060 r!15766)) (head!1545 (_2!6143 lt!331139))) (tail!1107 (_2!6143 lt!331139))))))

(declare-fun bm!51696 () Bool)

(assert (=> bm!51696 (= call!51701 (isEmpty!5689 (_2!6143 lt!331139)))))

(declare-fun b!884007 () Bool)

(declare-fun res!402073 () Bool)

(assert (=> b!884007 (=> (not res!402073) (not e!579963))))

(assert (=> b!884007 (= res!402073 (isEmpty!5689 (tail!1107 (_2!6143 lt!331139))))))

(declare-fun b!884008 () Bool)

(declare-fun res!402080 () Bool)

(assert (=> b!884008 (=> res!402080 e!579965)))

(assert (=> b!884008 (= res!402080 e!579963)))

(declare-fun res!402075 () Bool)

(assert (=> b!884008 (=> (not res!402075) (not e!579963))))

(assert (=> b!884008 (= res!402075 lt!331179)))

(declare-fun b!884009 () Bool)

(declare-fun e!579964 () Bool)

(assert (=> b!884009 (= e!579964 (= lt!331179 call!51701))))

(declare-fun d!276641 () Bool)

(assert (=> d!276641 e!579964))

(declare-fun c!142864 () Bool)

(assert (=> d!276641 (= c!142864 (is-EmptyExpr!2274 (removeUselessConcat!17 (regTwo!5060 r!15766))))))

(assert (=> d!276641 (= lt!331179 e!579962)))

(declare-fun c!142865 () Bool)

(assert (=> d!276641 (= c!142865 (isEmpty!5689 (_2!6143 lt!331139)))))

(assert (=> d!276641 (validRegex!743 (removeUselessConcat!17 (regTwo!5060 r!15766)))))

(assert (=> d!276641 (= (matchR!812 (removeUselessConcat!17 (regTwo!5060 r!15766)) (_2!6143 lt!331139)) lt!331179)))

(declare-fun b!884000 () Bool)

(assert (=> b!884000 (= e!579962 (nullable!580 (removeUselessConcat!17 (regTwo!5060 r!15766))))))

(declare-fun b!884010 () Bool)

(assert (=> b!884010 (= e!579960 (not lt!331179))))

(declare-fun b!884011 () Bool)

(declare-fun res!402079 () Bool)

(assert (=> b!884011 (=> (not res!402079) (not e!579963))))

(assert (=> b!884011 (= res!402079 (not call!51701))))

(declare-fun b!884012 () Bool)

(assert (=> b!884012 (= e!579964 e!579960)))

(declare-fun c!142866 () Bool)

(assert (=> b!884012 (= c!142866 (is-EmptyLang!2274 (removeUselessConcat!17 (regTwo!5060 r!15766))))))

(declare-fun b!884013 () Bool)

(assert (=> b!884013 (= e!579959 (not (= (head!1545 (_2!6143 lt!331139)) (c!142821 (removeUselessConcat!17 (regTwo!5060 r!15766))))))))

(assert (= (and d!276641 c!142865) b!884000))

(assert (= (and d!276641 (not c!142865)) b!884006))

(assert (= (and d!276641 c!142864) b!884009))

(assert (= (and d!276641 (not c!142864)) b!884012))

(assert (= (and b!884012 c!142866) b!884010))

(assert (= (and b!884012 (not c!142866)) b!884003))

(assert (= (and b!884003 (not res!402077)) b!884008))

(assert (= (and b!884008 res!402075) b!884011))

(assert (= (and b!884011 res!402079) b!884007))

(assert (= (and b!884007 res!402073) b!884004))

(assert (= (and b!884008 (not res!402080)) b!884005))

(assert (= (and b!884005 res!402076) b!884002))

(assert (= (and b!884002 (not res!402078)) b!884001))

(assert (= (and b!884001 (not res!402074)) b!884013))

(assert (= (or b!884009 b!884002 b!884011) bm!51696))

(declare-fun m!1130683 () Bool)

(assert (=> b!884004 m!1130683))

(assert (=> b!884000 m!1130559))

(declare-fun m!1130685 () Bool)

(assert (=> b!884000 m!1130685))

(declare-fun m!1130687 () Bool)

(assert (=> b!884007 m!1130687))

(assert (=> b!884007 m!1130687))

(declare-fun m!1130689 () Bool)

(assert (=> b!884007 m!1130689))

(declare-fun m!1130691 () Bool)

(assert (=> d!276641 m!1130691))

(assert (=> d!276641 m!1130559))

(declare-fun m!1130693 () Bool)

(assert (=> d!276641 m!1130693))

(assert (=> b!884006 m!1130683))

(assert (=> b!884006 m!1130559))

(assert (=> b!884006 m!1130683))

(declare-fun m!1130695 () Bool)

(assert (=> b!884006 m!1130695))

(assert (=> b!884006 m!1130687))

(assert (=> b!884006 m!1130695))

(assert (=> b!884006 m!1130687))

(declare-fun m!1130697 () Bool)

(assert (=> b!884006 m!1130697))

(assert (=> b!884001 m!1130687))

(assert (=> b!884001 m!1130687))

(assert (=> b!884001 m!1130689))

(assert (=> b!884013 m!1130683))

(assert (=> bm!51696 m!1130691))

(assert (=> b!883808 d!276641))

(declare-fun b!884015 () Bool)

(declare-fun res!402082 () Bool)

(declare-fun e!579966 () Bool)

(assert (=> b!884015 (=> res!402082 e!579966)))

(assert (=> b!884015 (= res!402082 (not (isEmpty!5689 (tail!1107 (_2!6143 lt!331139)))))))

(declare-fun b!884016 () Bool)

(declare-fun e!579968 () Bool)

(assert (=> b!884016 (= e!579968 e!579966)))

(declare-fun res!402086 () Bool)

(assert (=> b!884016 (=> res!402086 e!579966)))

(declare-fun call!51702 () Bool)

(assert (=> b!884016 (= res!402086 call!51702)))

(declare-fun b!884017 () Bool)

(declare-fun res!402085 () Bool)

(declare-fun e!579972 () Bool)

(assert (=> b!884017 (=> res!402085 e!579972)))

(assert (=> b!884017 (= res!402085 (not (is-ElementMatch!2274 (regTwo!5060 r!15766))))))

(declare-fun e!579967 () Bool)

(assert (=> b!884017 (= e!579967 e!579972)))

(declare-fun b!884018 () Bool)

(declare-fun e!579970 () Bool)

(assert (=> b!884018 (= e!579970 (= (head!1545 (_2!6143 lt!331139)) (c!142821 (regTwo!5060 r!15766))))))

(declare-fun b!884019 () Bool)

(assert (=> b!884019 (= e!579972 e!579968)))

(declare-fun res!402084 () Bool)

(assert (=> b!884019 (=> (not res!402084) (not e!579968))))

(declare-fun lt!331180 () Bool)

(assert (=> b!884019 (= res!402084 (not lt!331180))))

(declare-fun b!884020 () Bool)

(declare-fun e!579969 () Bool)

(assert (=> b!884020 (= e!579969 (matchR!812 (derivativeStep!392 (regTwo!5060 r!15766) (head!1545 (_2!6143 lt!331139))) (tail!1107 (_2!6143 lt!331139))))))

(declare-fun bm!51697 () Bool)

(assert (=> bm!51697 (= call!51702 (isEmpty!5689 (_2!6143 lt!331139)))))

(declare-fun b!884021 () Bool)

(declare-fun res!402081 () Bool)

(assert (=> b!884021 (=> (not res!402081) (not e!579970))))

(assert (=> b!884021 (= res!402081 (isEmpty!5689 (tail!1107 (_2!6143 lt!331139))))))

(declare-fun b!884022 () Bool)

(declare-fun res!402088 () Bool)

(assert (=> b!884022 (=> res!402088 e!579972)))

(assert (=> b!884022 (= res!402088 e!579970)))

(declare-fun res!402083 () Bool)

(assert (=> b!884022 (=> (not res!402083) (not e!579970))))

(assert (=> b!884022 (= res!402083 lt!331180)))

(declare-fun b!884023 () Bool)

(declare-fun e!579971 () Bool)

(assert (=> b!884023 (= e!579971 (= lt!331180 call!51702))))

(declare-fun d!276643 () Bool)

(assert (=> d!276643 e!579971))

(declare-fun c!142867 () Bool)

(assert (=> d!276643 (= c!142867 (is-EmptyExpr!2274 (regTwo!5060 r!15766)))))

(assert (=> d!276643 (= lt!331180 e!579969)))

(declare-fun c!142868 () Bool)

(assert (=> d!276643 (= c!142868 (isEmpty!5689 (_2!6143 lt!331139)))))

(assert (=> d!276643 (validRegex!743 (regTwo!5060 r!15766))))

(assert (=> d!276643 (= (matchR!812 (regTwo!5060 r!15766) (_2!6143 lt!331139)) lt!331180)))

(declare-fun b!884014 () Bool)

(assert (=> b!884014 (= e!579969 (nullable!580 (regTwo!5060 r!15766)))))

(declare-fun b!884024 () Bool)

(assert (=> b!884024 (= e!579967 (not lt!331180))))

(declare-fun b!884025 () Bool)

(declare-fun res!402087 () Bool)

(assert (=> b!884025 (=> (not res!402087) (not e!579970))))

(assert (=> b!884025 (= res!402087 (not call!51702))))

(declare-fun b!884026 () Bool)

(assert (=> b!884026 (= e!579971 e!579967)))

(declare-fun c!142869 () Bool)

(assert (=> b!884026 (= c!142869 (is-EmptyLang!2274 (regTwo!5060 r!15766)))))

(declare-fun b!884027 () Bool)

(assert (=> b!884027 (= e!579966 (not (= (head!1545 (_2!6143 lt!331139)) (c!142821 (regTwo!5060 r!15766)))))))

(assert (= (and d!276643 c!142868) b!884014))

(assert (= (and d!276643 (not c!142868)) b!884020))

(assert (= (and d!276643 c!142867) b!884023))

(assert (= (and d!276643 (not c!142867)) b!884026))

(assert (= (and b!884026 c!142869) b!884024))

(assert (= (and b!884026 (not c!142869)) b!884017))

(assert (= (and b!884017 (not res!402085)) b!884022))

(assert (= (and b!884022 res!402083) b!884025))

(assert (= (and b!884025 res!402087) b!884021))

(assert (= (and b!884021 res!402081) b!884018))

(assert (= (and b!884022 (not res!402088)) b!884019))

(assert (= (and b!884019 res!402084) b!884016))

(assert (= (and b!884016 (not res!402086)) b!884015))

(assert (= (and b!884015 (not res!402082)) b!884027))

(assert (= (or b!884023 b!884016 b!884025) bm!51697))

(assert (=> b!884018 m!1130683))

(assert (=> b!884014 m!1130679))

(assert (=> b!884021 m!1130687))

(assert (=> b!884021 m!1130687))

(assert (=> b!884021 m!1130689))

(assert (=> d!276643 m!1130691))

(assert (=> d!276643 m!1130637))

(assert (=> b!884020 m!1130683))

(assert (=> b!884020 m!1130683))

(declare-fun m!1130699 () Bool)

(assert (=> b!884020 m!1130699))

(assert (=> b!884020 m!1130687))

(assert (=> b!884020 m!1130699))

(assert (=> b!884020 m!1130687))

(declare-fun m!1130701 () Bool)

(assert (=> b!884020 m!1130701))

(assert (=> b!884015 m!1130687))

(assert (=> b!884015 m!1130687))

(assert (=> b!884015 m!1130689))

(assert (=> b!884027 m!1130683))

(assert (=> bm!51697 m!1130691))

(assert (=> b!883802 d!276643))

(declare-fun b!884028 () Bool)

(declare-fun res!402093 () Bool)

(declare-fun e!579976 () Bool)

(assert (=> b!884028 (=> (not res!402093) (not e!579976))))

(declare-fun call!51704 () Bool)

(assert (=> b!884028 (= res!402093 call!51704)))

(declare-fun e!579975 () Bool)

(assert (=> b!884028 (= e!579975 e!579976)))

(declare-fun b!884029 () Bool)

(declare-fun e!579978 () Bool)

(assert (=> b!884029 (= e!579978 e!579975)))

(declare-fun c!142871 () Bool)

(assert (=> b!884029 (= c!142871 (is-Union!2274 r!15766))))

(declare-fun b!884030 () Bool)

(declare-fun e!579977 () Bool)

(declare-fun call!51703 () Bool)

(assert (=> b!884030 (= e!579977 call!51703)))

(declare-fun bm!51699 () Bool)

(assert (=> bm!51699 (= call!51703 (validRegex!743 (ite c!142871 (regTwo!5061 r!15766) (regTwo!5060 r!15766))))))

(declare-fun b!884031 () Bool)

(declare-fun e!579974 () Bool)

(declare-fun call!51705 () Bool)

(assert (=> b!884031 (= e!579974 call!51705)))

(declare-fun bm!51700 () Bool)

(assert (=> bm!51700 (= call!51704 call!51705)))

(declare-fun b!884032 () Bool)

(declare-fun e!579979 () Bool)

(assert (=> b!884032 (= e!579979 e!579978)))

(declare-fun c!142870 () Bool)

(assert (=> b!884032 (= c!142870 (is-Star!2274 r!15766))))

(declare-fun b!884033 () Bool)

(declare-fun e!579973 () Bool)

(assert (=> b!884033 (= e!579973 e!579977)))

(declare-fun res!402089 () Bool)

(assert (=> b!884033 (=> (not res!402089) (not e!579977))))

(assert (=> b!884033 (= res!402089 call!51704)))

(declare-fun b!884034 () Bool)

(assert (=> b!884034 (= e!579976 call!51703)))

(declare-fun b!884035 () Bool)

(assert (=> b!884035 (= e!579978 e!579974)))

(declare-fun res!402091 () Bool)

(assert (=> b!884035 (= res!402091 (not (nullable!580 (reg!2603 r!15766))))))

(assert (=> b!884035 (=> (not res!402091) (not e!579974))))

(declare-fun b!884036 () Bool)

(declare-fun res!402090 () Bool)

(assert (=> b!884036 (=> res!402090 e!579973)))

(assert (=> b!884036 (= res!402090 (not (is-Concat!4107 r!15766)))))

(assert (=> b!884036 (= e!579975 e!579973)))

(declare-fun bm!51698 () Bool)

(assert (=> bm!51698 (= call!51705 (validRegex!743 (ite c!142870 (reg!2603 r!15766) (ite c!142871 (regOne!5061 r!15766) (regOne!5060 r!15766)))))))

(declare-fun d!276645 () Bool)

(declare-fun res!402092 () Bool)

(assert (=> d!276645 (=> res!402092 e!579979)))

(assert (=> d!276645 (= res!402092 (is-ElementMatch!2274 r!15766))))

(assert (=> d!276645 (= (validRegex!743 r!15766) e!579979)))

(assert (= (and d!276645 (not res!402092)) b!884032))

(assert (= (and b!884032 c!142870) b!884035))

(assert (= (and b!884032 (not c!142870)) b!884029))

(assert (= (and b!884035 res!402091) b!884031))

(assert (= (and b!884029 c!142871) b!884028))

(assert (= (and b!884029 (not c!142871)) b!884036))

(assert (= (and b!884028 res!402093) b!884034))

(assert (= (and b!884036 (not res!402090)) b!884033))

(assert (= (and b!884033 res!402089) b!884030))

(assert (= (or b!884034 b!884030) bm!51699))

(assert (= (or b!884028 b!884033) bm!51700))

(assert (= (or b!884031 bm!51700) bm!51698))

(declare-fun m!1130703 () Bool)

(assert (=> bm!51699 m!1130703))

(declare-fun m!1130705 () Bool)

(assert (=> b!884035 m!1130705))

(declare-fun m!1130707 () Bool)

(assert (=> bm!51698 m!1130707))

(assert (=> start!79860 d!276645))

(declare-fun bs!234587 () Bool)

(declare-fun b!884102 () Bool)

(assert (= bs!234587 (and b!884102 b!883805)))

(declare-fun lambda!27241 () Int)

(assert (=> bs!234587 (not (= lambda!27241 lambda!27223))))

(assert (=> bs!234587 (not (= lambda!27241 lambda!27224))))

(assert (=> b!884102 true))

(assert (=> b!884102 true))

(declare-fun bs!234588 () Bool)

(declare-fun b!884109 () Bool)

(assert (= bs!234588 (and b!884109 b!883805)))

(declare-fun lambda!27242 () Int)

(assert (=> bs!234588 (not (= lambda!27242 lambda!27223))))

(assert (=> bs!234588 (= lambda!27242 lambda!27224)))

(declare-fun bs!234589 () Bool)

(assert (= bs!234589 (and b!884109 b!884102)))

(assert (=> bs!234589 (not (= lambda!27242 lambda!27241))))

(assert (=> b!884109 true))

(assert (=> b!884109 true))

(declare-fun b!884101 () Bool)

(declare-fun c!142889 () Bool)

(assert (=> b!884101 (= c!142889 (is-ElementMatch!2274 r!15766))))

(declare-fun e!580017 () Bool)

(declare-fun e!580016 () Bool)

(assert (=> b!884101 (= e!580017 e!580016)))

(declare-fun e!580022 () Bool)

(declare-fun call!51712 () Bool)

(assert (=> b!884102 (= e!580022 call!51712)))

(declare-fun b!884103 () Bool)

(declare-fun e!580021 () Bool)

(assert (=> b!884103 (= e!580021 e!580017)))

(declare-fun res!402128 () Bool)

(assert (=> b!884103 (= res!402128 (not (is-EmptyLang!2274 r!15766)))))

(assert (=> b!884103 (=> (not res!402128) (not e!580017))))

(declare-fun b!884104 () Bool)

(declare-fun e!580019 () Bool)

(assert (=> b!884104 (= e!580019 (matchRSpec!75 (regTwo!5061 r!15766) s!10566))))

(declare-fun b!884105 () Bool)

(declare-fun res!402126 () Bool)

(assert (=> b!884105 (=> res!402126 e!580022)))

(declare-fun call!51713 () Bool)

(assert (=> b!884105 (= res!402126 call!51713)))

(declare-fun e!580018 () Bool)

(assert (=> b!884105 (= e!580018 e!580022)))

(declare-fun b!884106 () Bool)

(declare-fun e!580020 () Bool)

(assert (=> b!884106 (= e!580020 e!580019)))

(declare-fun res!402127 () Bool)

(assert (=> b!884106 (= res!402127 (matchRSpec!75 (regOne!5061 r!15766) s!10566))))

(assert (=> b!884106 (=> res!402127 e!580019)))

(declare-fun b!884107 () Bool)

(assert (=> b!884107 (= e!580021 call!51713)))

(declare-fun b!884108 () Bool)

(declare-fun c!142890 () Bool)

(assert (=> b!884108 (= c!142890 (is-Union!2274 r!15766))))

(assert (=> b!884108 (= e!580016 e!580020)))

(declare-fun bm!51707 () Bool)

(assert (=> bm!51707 (= call!51713 (isEmpty!5689 s!10566))))

(declare-fun d!276647 () Bool)

(declare-fun c!142888 () Bool)

(assert (=> d!276647 (= c!142888 (is-EmptyExpr!2274 r!15766))))

(assert (=> d!276647 (= (matchRSpec!75 r!15766 s!10566) e!580021)))

(declare-fun c!142891 () Bool)

(declare-fun bm!51708 () Bool)

(assert (=> bm!51708 (= call!51712 (Exists!69 (ite c!142891 lambda!27241 lambda!27242)))))

(assert (=> b!884109 (= e!580018 call!51712)))

(declare-fun b!884110 () Bool)

(assert (=> b!884110 (= e!580020 e!580018)))

(assert (=> b!884110 (= c!142891 (is-Star!2274 r!15766))))

(declare-fun b!884111 () Bool)

(assert (=> b!884111 (= e!580016 (= s!10566 (Cons!9488 (c!142821 r!15766) Nil!9488)))))

(assert (= (and d!276647 c!142888) b!884107))

(assert (= (and d!276647 (not c!142888)) b!884103))

(assert (= (and b!884103 res!402128) b!884101))

(assert (= (and b!884101 c!142889) b!884111))

(assert (= (and b!884101 (not c!142889)) b!884108))

(assert (= (and b!884108 c!142890) b!884106))

(assert (= (and b!884108 (not c!142890)) b!884110))

(assert (= (and b!884106 (not res!402127)) b!884104))

(assert (= (and b!884110 c!142891) b!884105))

(assert (= (and b!884110 (not c!142891)) b!884109))

(assert (= (and b!884105 (not res!402126)) b!884102))

(assert (= (or b!884102 b!884109) bm!51708))

(assert (= (or b!884107 b!884105) bm!51707))

(declare-fun m!1130709 () Bool)

(assert (=> b!884104 m!1130709))

(declare-fun m!1130711 () Bool)

(assert (=> b!884106 m!1130711))

(assert (=> bm!51707 m!1130581))

(declare-fun m!1130713 () Bool)

(assert (=> bm!51708 m!1130713))

(assert (=> b!883801 d!276647))

(declare-fun b!884113 () Bool)

(declare-fun res!402130 () Bool)

(declare-fun e!580023 () Bool)

(assert (=> b!884113 (=> res!402130 e!580023)))

(assert (=> b!884113 (= res!402130 (not (isEmpty!5689 (tail!1107 s!10566))))))

(declare-fun b!884114 () Bool)

(declare-fun e!580025 () Bool)

(assert (=> b!884114 (= e!580025 e!580023)))

(declare-fun res!402134 () Bool)

(assert (=> b!884114 (=> res!402134 e!580023)))

(declare-fun call!51716 () Bool)

(assert (=> b!884114 (= res!402134 call!51716)))

(declare-fun b!884115 () Bool)

(declare-fun res!402133 () Bool)

(declare-fun e!580029 () Bool)

(assert (=> b!884115 (=> res!402133 e!580029)))

(assert (=> b!884115 (= res!402133 (not (is-ElementMatch!2274 r!15766)))))

(declare-fun e!580024 () Bool)

(assert (=> b!884115 (= e!580024 e!580029)))

(declare-fun b!884116 () Bool)

(declare-fun e!580027 () Bool)

(assert (=> b!884116 (= e!580027 (= (head!1545 s!10566) (c!142821 r!15766)))))

(declare-fun b!884117 () Bool)

(assert (=> b!884117 (= e!580029 e!580025)))

(declare-fun res!402132 () Bool)

(assert (=> b!884117 (=> (not res!402132) (not e!580025))))

(declare-fun lt!331181 () Bool)

(assert (=> b!884117 (= res!402132 (not lt!331181))))

(declare-fun b!884118 () Bool)

(declare-fun e!580026 () Bool)

(assert (=> b!884118 (= e!580026 (matchR!812 (derivativeStep!392 r!15766 (head!1545 s!10566)) (tail!1107 s!10566)))))

(declare-fun bm!51711 () Bool)

(assert (=> bm!51711 (= call!51716 (isEmpty!5689 s!10566))))

(declare-fun b!884119 () Bool)

(declare-fun res!402129 () Bool)

(assert (=> b!884119 (=> (not res!402129) (not e!580027))))

(assert (=> b!884119 (= res!402129 (isEmpty!5689 (tail!1107 s!10566)))))

(declare-fun b!884120 () Bool)

(declare-fun res!402136 () Bool)

(assert (=> b!884120 (=> res!402136 e!580029)))

(assert (=> b!884120 (= res!402136 e!580027)))

(declare-fun res!402131 () Bool)

(assert (=> b!884120 (=> (not res!402131) (not e!580027))))

(assert (=> b!884120 (= res!402131 lt!331181)))

(declare-fun b!884121 () Bool)

(declare-fun e!580028 () Bool)

(assert (=> b!884121 (= e!580028 (= lt!331181 call!51716))))

(declare-fun d!276649 () Bool)

(assert (=> d!276649 e!580028))

(declare-fun c!142892 () Bool)

(assert (=> d!276649 (= c!142892 (is-EmptyExpr!2274 r!15766))))

(assert (=> d!276649 (= lt!331181 e!580026)))

(declare-fun c!142893 () Bool)

(assert (=> d!276649 (= c!142893 (isEmpty!5689 s!10566))))

(assert (=> d!276649 (validRegex!743 r!15766)))

(assert (=> d!276649 (= (matchR!812 r!15766 s!10566) lt!331181)))

(declare-fun b!884112 () Bool)

(assert (=> b!884112 (= e!580026 (nullable!580 r!15766))))

(declare-fun b!884122 () Bool)

(assert (=> b!884122 (= e!580024 (not lt!331181))))

(declare-fun b!884123 () Bool)

(declare-fun res!402135 () Bool)

(assert (=> b!884123 (=> (not res!402135) (not e!580027))))

(assert (=> b!884123 (= res!402135 (not call!51716))))

(declare-fun b!884124 () Bool)

(assert (=> b!884124 (= e!580028 e!580024)))

(declare-fun c!142894 () Bool)

(assert (=> b!884124 (= c!142894 (is-EmptyLang!2274 r!15766))))

(declare-fun b!884125 () Bool)

(assert (=> b!884125 (= e!580023 (not (= (head!1545 s!10566) (c!142821 r!15766))))))

(assert (= (and d!276649 c!142893) b!884112))

(assert (= (and d!276649 (not c!142893)) b!884118))

(assert (= (and d!276649 c!142892) b!884121))

(assert (= (and d!276649 (not c!142892)) b!884124))

(assert (= (and b!884124 c!142894) b!884122))

(assert (= (and b!884124 (not c!142894)) b!884115))

(assert (= (and b!884115 (not res!402133)) b!884120))

(assert (= (and b!884120 res!402131) b!884123))

(assert (= (and b!884123 res!402135) b!884119))

(assert (= (and b!884119 res!402129) b!884116))

(assert (= (and b!884120 (not res!402136)) b!884117))

(assert (= (and b!884117 res!402132) b!884114))

(assert (= (and b!884114 (not res!402134)) b!884113))

(assert (= (and b!884113 (not res!402130)) b!884125))

(assert (= (or b!884121 b!884114 b!884123) bm!51711))

(declare-fun m!1130715 () Bool)

(assert (=> b!884116 m!1130715))

(declare-fun m!1130717 () Bool)

(assert (=> b!884112 m!1130717))

(declare-fun m!1130719 () Bool)

(assert (=> b!884119 m!1130719))

(assert (=> b!884119 m!1130719))

(declare-fun m!1130721 () Bool)

(assert (=> b!884119 m!1130721))

(assert (=> d!276649 m!1130581))

(assert (=> d!276649 m!1130551))

(assert (=> b!884118 m!1130715))

(assert (=> b!884118 m!1130715))

(declare-fun m!1130723 () Bool)

(assert (=> b!884118 m!1130723))

(assert (=> b!884118 m!1130719))

(assert (=> b!884118 m!1130723))

(assert (=> b!884118 m!1130719))

(declare-fun m!1130725 () Bool)

(assert (=> b!884118 m!1130725))

(assert (=> b!884113 m!1130719))

(assert (=> b!884113 m!1130719))

(assert (=> b!884113 m!1130721))

(assert (=> b!884125 m!1130715))

(assert (=> bm!51711 m!1130581))

(assert (=> b!883801 d!276649))

(declare-fun d!276651 () Bool)

(assert (=> d!276651 (= (matchR!812 r!15766 s!10566) (matchRSpec!75 r!15766 s!10566))))

(declare-fun lt!331184 () Unit!14127)

(declare-fun choose!5244 (Regex!2274 List!9504) Unit!14127)

(assert (=> d!276651 (= lt!331184 (choose!5244 r!15766 s!10566))))

(assert (=> d!276651 (validRegex!743 r!15766)))

(assert (=> d!276651 (= (mainMatchTheorem!75 r!15766 s!10566) lt!331184)))

(declare-fun bs!234590 () Bool)

(assert (= bs!234590 d!276651))

(assert (=> bs!234590 m!1130555))

(assert (=> bs!234590 m!1130553))

(declare-fun m!1130727 () Bool)

(assert (=> bs!234590 m!1130727))

(assert (=> bs!234590 m!1130551))

(assert (=> b!883801 d!276651))

(declare-fun d!276653 () Bool)

(assert (=> d!276653 (= (isEmpty!5689 s!10566) (is-Nil!9488 s!10566))))

(assert (=> b!883805 d!276653))

(declare-fun d!276655 () Bool)

(declare-fun choose!5245 (Int) Bool)

(assert (=> d!276655 (= (Exists!69 lambda!27224) (choose!5245 lambda!27224))))

(declare-fun bs!234591 () Bool)

(assert (= bs!234591 d!276655))

(declare-fun m!1130729 () Bool)

(assert (=> bs!234591 m!1130729))

(assert (=> b!883805 d!276655))

(declare-fun bs!234595 () Bool)

(declare-fun d!276657 () Bool)

(assert (= bs!234595 (and d!276657 b!883805)))

(declare-fun lambda!27247 () Int)

(assert (=> bs!234595 (= lambda!27247 lambda!27223)))

(assert (=> bs!234595 (not (= lambda!27247 lambda!27224))))

(declare-fun bs!234596 () Bool)

(assert (= bs!234596 (and d!276657 b!884102)))

(assert (=> bs!234596 (not (= lambda!27247 lambda!27241))))

(declare-fun bs!234597 () Bool)

(assert (= bs!234597 (and d!276657 b!884109)))

(assert (=> bs!234597 (not (= lambda!27247 lambda!27242))))

(assert (=> d!276657 true))

(assert (=> d!276657 true))

(assert (=> d!276657 true))

(assert (=> d!276657 (= (isDefined!1601 (findConcatSeparation!65 (regOne!5060 r!15766) (regTwo!5060 r!15766) Nil!9488 s!10566 s!10566)) (Exists!69 lambda!27247))))

(declare-fun lt!331187 () Unit!14127)

(declare-fun choose!5246 (Regex!2274 Regex!2274 List!9504) Unit!14127)

(assert (=> d!276657 (= lt!331187 (choose!5246 (regOne!5060 r!15766) (regTwo!5060 r!15766) s!10566))))

(assert (=> d!276657 (validRegex!743 (regOne!5060 r!15766))))

(assert (=> d!276657 (= (lemmaFindConcatSeparationEquivalentToExists!65 (regOne!5060 r!15766) (regTwo!5060 r!15766) s!10566) lt!331187)))

(declare-fun bs!234598 () Bool)

(assert (= bs!234598 d!276657))

(declare-fun m!1130737 () Bool)

(assert (=> bs!234598 m!1130737))

(declare-fun m!1130739 () Bool)

(assert (=> bs!234598 m!1130739))

(assert (=> bs!234598 m!1130585))

(assert (=> bs!234598 m!1130569))

(assert (=> bs!234598 m!1130585))

(declare-fun m!1130741 () Bool)

(assert (=> bs!234598 m!1130741))

(assert (=> b!883805 d!276657))

(declare-fun b!884187 () Bool)

(declare-fun e!580063 () Option!1959)

(declare-fun e!580065 () Option!1959)

(assert (=> b!884187 (= e!580063 e!580065)))

(declare-fun c!142910 () Bool)

(assert (=> b!884187 (= c!142910 (is-Nil!9488 s!10566))))

(declare-fun b!884188 () Bool)

(declare-fun res!402174 () Bool)

(declare-fun e!580066 () Bool)

(assert (=> b!884188 (=> (not res!402174) (not e!580066))))

(declare-fun lt!331198 () Option!1959)

(assert (=> b!884188 (= res!402174 (matchR!812 (regTwo!5060 r!15766) (_2!6143 (get!2961 lt!331198))))))

(declare-fun b!884189 () Bool)

(declare-fun e!580064 () Bool)

(assert (=> b!884189 (= e!580064 (matchR!812 (regTwo!5060 r!15766) s!10566))))

(declare-fun b!884190 () Bool)

(declare-fun lt!331197 () Unit!14127)

(declare-fun lt!331196 () Unit!14127)

(assert (=> b!884190 (= lt!331197 lt!331196)))

(declare-fun ++!2476 (List!9504 List!9504) List!9504)

(assert (=> b!884190 (= (++!2476 (++!2476 Nil!9488 (Cons!9488 (h!14889 s!10566) Nil!9488)) (t!100550 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!104 (List!9504 C!5118 List!9504 List!9504) Unit!14127)

(assert (=> b!884190 (= lt!331196 (lemmaMoveElementToOtherListKeepsConcatEq!104 Nil!9488 (h!14889 s!10566) (t!100550 s!10566) s!10566))))

(assert (=> b!884190 (= e!580065 (findConcatSeparation!65 (regOne!5060 r!15766) (regTwo!5060 r!15766) (++!2476 Nil!9488 (Cons!9488 (h!14889 s!10566) Nil!9488)) (t!100550 s!10566) s!10566))))

(declare-fun b!884191 () Bool)

(assert (=> b!884191 (= e!580066 (= (++!2476 (_1!6143 (get!2961 lt!331198)) (_2!6143 (get!2961 lt!331198))) s!10566))))

(declare-fun d!276661 () Bool)

(declare-fun e!580067 () Bool)

(assert (=> d!276661 e!580067))

(declare-fun res!402171 () Bool)

(assert (=> d!276661 (=> res!402171 e!580067)))

(assert (=> d!276661 (= res!402171 e!580066)))

(declare-fun res!402170 () Bool)

(assert (=> d!276661 (=> (not res!402170) (not e!580066))))

(assert (=> d!276661 (= res!402170 (isDefined!1601 lt!331198))))

(assert (=> d!276661 (= lt!331198 e!580063)))

(declare-fun c!142909 () Bool)

(assert (=> d!276661 (= c!142909 e!580064)))

(declare-fun res!402173 () Bool)

(assert (=> d!276661 (=> (not res!402173) (not e!580064))))

(assert (=> d!276661 (= res!402173 (matchR!812 (regOne!5060 r!15766) Nil!9488))))

(assert (=> d!276661 (validRegex!743 (regOne!5060 r!15766))))

(assert (=> d!276661 (= (findConcatSeparation!65 (regOne!5060 r!15766) (regTwo!5060 r!15766) Nil!9488 s!10566 s!10566) lt!331198)))

(declare-fun b!884192 () Bool)

(assert (=> b!884192 (= e!580067 (not (isDefined!1601 lt!331198)))))

(declare-fun b!884193 () Bool)

(assert (=> b!884193 (= e!580065 None!1958)))

(declare-fun b!884194 () Bool)

(assert (=> b!884194 (= e!580063 (Some!1958 (tuple2!10635 Nil!9488 s!10566)))))

(declare-fun b!884195 () Bool)

(declare-fun res!402172 () Bool)

(assert (=> b!884195 (=> (not res!402172) (not e!580066))))

(assert (=> b!884195 (= res!402172 (matchR!812 (regOne!5060 r!15766) (_1!6143 (get!2961 lt!331198))))))

(assert (= (and d!276661 res!402173) b!884189))

(assert (= (and d!276661 c!142909) b!884194))

(assert (= (and d!276661 (not c!142909)) b!884187))

(assert (= (and b!884187 c!142910) b!884193))

(assert (= (and b!884187 (not c!142910)) b!884190))

(assert (= (and d!276661 res!402170) b!884195))

(assert (= (and b!884195 res!402172) b!884188))

(assert (= (and b!884188 res!402174) b!884191))

(assert (= (and d!276661 (not res!402171)) b!884192))

(declare-fun m!1130743 () Bool)

(assert (=> b!884188 m!1130743))

(declare-fun m!1130745 () Bool)

(assert (=> b!884188 m!1130745))

(declare-fun m!1130747 () Bool)

(assert (=> b!884190 m!1130747))

(assert (=> b!884190 m!1130747))

(declare-fun m!1130749 () Bool)

(assert (=> b!884190 m!1130749))

(declare-fun m!1130751 () Bool)

(assert (=> b!884190 m!1130751))

(assert (=> b!884190 m!1130747))

(declare-fun m!1130753 () Bool)

(assert (=> b!884190 m!1130753))

(declare-fun m!1130755 () Bool)

(assert (=> d!276661 m!1130755))

(declare-fun m!1130757 () Bool)

(assert (=> d!276661 m!1130757))

(assert (=> d!276661 m!1130569))

(assert (=> b!884195 m!1130743))

(declare-fun m!1130759 () Bool)

(assert (=> b!884195 m!1130759))

(assert (=> b!884192 m!1130755))

(assert (=> b!884191 m!1130743))

(declare-fun m!1130761 () Bool)

(assert (=> b!884191 m!1130761))

(declare-fun m!1130763 () Bool)

(assert (=> b!884189 m!1130763))

(assert (=> b!883805 d!276661))

(declare-fun bs!234599 () Bool)

(declare-fun d!276663 () Bool)

(assert (= bs!234599 (and d!276663 d!276657)))

(declare-fun lambda!27252 () Int)

(assert (=> bs!234599 (= lambda!27252 lambda!27247)))

(declare-fun bs!234600 () Bool)

(assert (= bs!234600 (and d!276663 b!884102)))

(assert (=> bs!234600 (not (= lambda!27252 lambda!27241))))

(declare-fun bs!234601 () Bool)

(assert (= bs!234601 (and d!276663 b!883805)))

(assert (=> bs!234601 (= lambda!27252 lambda!27223)))

(declare-fun bs!234602 () Bool)

(assert (= bs!234602 (and d!276663 b!884109)))

(assert (=> bs!234602 (not (= lambda!27252 lambda!27242))))

(assert (=> bs!234601 (not (= lambda!27252 lambda!27224))))

(assert (=> d!276663 true))

(assert (=> d!276663 true))

(assert (=> d!276663 true))

(declare-fun lambda!27253 () Int)

(assert (=> bs!234599 (not (= lambda!27253 lambda!27247))))

(assert (=> bs!234600 (not (= lambda!27253 lambda!27241))))

(assert (=> bs!234601 (not (= lambda!27253 lambda!27223))))

(assert (=> bs!234602 (= lambda!27253 lambda!27242)))

(declare-fun bs!234603 () Bool)

(assert (= bs!234603 d!276663))

(assert (=> bs!234603 (not (= lambda!27253 lambda!27252))))

(assert (=> bs!234601 (= lambda!27253 lambda!27224)))

(assert (=> d!276663 true))

(assert (=> d!276663 true))

(assert (=> d!276663 true))

(assert (=> d!276663 (= (Exists!69 lambda!27252) (Exists!69 lambda!27253))))

(declare-fun lt!331202 () Unit!14127)

(declare-fun choose!5247 (Regex!2274 Regex!2274 List!9504) Unit!14127)

(assert (=> d!276663 (= lt!331202 (choose!5247 (regOne!5060 r!15766) (regTwo!5060 r!15766) s!10566))))

(assert (=> d!276663 (validRegex!743 (regOne!5060 r!15766))))

(assert (=> d!276663 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!59 (regOne!5060 r!15766) (regTwo!5060 r!15766) s!10566) lt!331202)))

(declare-fun m!1130777 () Bool)

(assert (=> bs!234603 m!1130777))

(declare-fun m!1130779 () Bool)

(assert (=> bs!234603 m!1130779))

(declare-fun m!1130781 () Bool)

(assert (=> bs!234603 m!1130781))

(assert (=> bs!234603 m!1130569))

(assert (=> b!883805 d!276663))

(declare-fun d!276667 () Bool)

(assert (=> d!276667 (= (Exists!69 lambda!27223) (choose!5245 lambda!27223))))

(declare-fun bs!234604 () Bool)

(assert (= bs!234604 d!276667))

(declare-fun m!1130783 () Bool)

(assert (=> bs!234604 m!1130783))

(assert (=> b!883805 d!276667))

(declare-fun d!276669 () Bool)

(declare-fun isEmpty!5691 (Option!1959) Bool)

(assert (=> d!276669 (= (isDefined!1601 lt!331136) (not (isEmpty!5691 lt!331136)))))

(declare-fun bs!234605 () Bool)

(assert (= bs!234605 d!276669))

(declare-fun m!1130785 () Bool)

(assert (=> bs!234605 m!1130785))

(assert (=> b!883805 d!276669))

(declare-fun b!884219 () Bool)

(declare-fun res!402192 () Bool)

(declare-fun e!580079 () Bool)

(assert (=> b!884219 (=> res!402192 e!580079)))

(assert (=> b!884219 (= res!402192 (not (isEmpty!5689 (tail!1107 (_1!6143 lt!331139)))))))

(declare-fun b!884220 () Bool)

(declare-fun e!580081 () Bool)

(assert (=> b!884220 (= e!580081 e!580079)))

(declare-fun res!402196 () Bool)

(assert (=> b!884220 (=> res!402196 e!580079)))

(declare-fun call!51722 () Bool)

(assert (=> b!884220 (= res!402196 call!51722)))

(declare-fun b!884221 () Bool)

(declare-fun res!402195 () Bool)

(declare-fun e!580085 () Bool)

(assert (=> b!884221 (=> res!402195 e!580085)))

(assert (=> b!884221 (= res!402195 (not (is-ElementMatch!2274 (regOne!5060 r!15766))))))

(declare-fun e!580080 () Bool)

(assert (=> b!884221 (= e!580080 e!580085)))

(declare-fun b!884222 () Bool)

(declare-fun e!580083 () Bool)

(assert (=> b!884222 (= e!580083 (= (head!1545 (_1!6143 lt!331139)) (c!142821 (regOne!5060 r!15766))))))

(declare-fun b!884223 () Bool)

(assert (=> b!884223 (= e!580085 e!580081)))

(declare-fun res!402194 () Bool)

(assert (=> b!884223 (=> (not res!402194) (not e!580081))))

(declare-fun lt!331203 () Bool)

(assert (=> b!884223 (= res!402194 (not lt!331203))))

(declare-fun b!884224 () Bool)

(declare-fun e!580082 () Bool)

(assert (=> b!884224 (= e!580082 (matchR!812 (derivativeStep!392 (regOne!5060 r!15766) (head!1545 (_1!6143 lt!331139))) (tail!1107 (_1!6143 lt!331139))))))

(declare-fun bm!51717 () Bool)

(assert (=> bm!51717 (= call!51722 (isEmpty!5689 (_1!6143 lt!331139)))))

(declare-fun b!884225 () Bool)

(declare-fun res!402191 () Bool)

(assert (=> b!884225 (=> (not res!402191) (not e!580083))))

(assert (=> b!884225 (= res!402191 (isEmpty!5689 (tail!1107 (_1!6143 lt!331139))))))

(declare-fun b!884226 () Bool)

(declare-fun res!402198 () Bool)

(assert (=> b!884226 (=> res!402198 e!580085)))

(assert (=> b!884226 (= res!402198 e!580083)))

(declare-fun res!402193 () Bool)

(assert (=> b!884226 (=> (not res!402193) (not e!580083))))

(assert (=> b!884226 (= res!402193 lt!331203)))

(declare-fun b!884227 () Bool)

(declare-fun e!580084 () Bool)

(assert (=> b!884227 (= e!580084 (= lt!331203 call!51722))))

(declare-fun d!276671 () Bool)

(assert (=> d!276671 e!580084))

(declare-fun c!142914 () Bool)

(assert (=> d!276671 (= c!142914 (is-EmptyExpr!2274 (regOne!5060 r!15766)))))

(assert (=> d!276671 (= lt!331203 e!580082)))

(declare-fun c!142915 () Bool)

(assert (=> d!276671 (= c!142915 (isEmpty!5689 (_1!6143 lt!331139)))))

(assert (=> d!276671 (validRegex!743 (regOne!5060 r!15766))))

(assert (=> d!276671 (= (matchR!812 (regOne!5060 r!15766) (_1!6143 lt!331139)) lt!331203)))

(declare-fun b!884218 () Bool)

(assert (=> b!884218 (= e!580082 (nullable!580 (regOne!5060 r!15766)))))

(declare-fun b!884228 () Bool)

(assert (=> b!884228 (= e!580080 (not lt!331203))))

(declare-fun b!884229 () Bool)

(declare-fun res!402197 () Bool)

(assert (=> b!884229 (=> (not res!402197) (not e!580083))))

(assert (=> b!884229 (= res!402197 (not call!51722))))

(declare-fun b!884230 () Bool)

(assert (=> b!884230 (= e!580084 e!580080)))

(declare-fun c!142916 () Bool)

(assert (=> b!884230 (= c!142916 (is-EmptyLang!2274 (regOne!5060 r!15766)))))

(declare-fun b!884231 () Bool)

(assert (=> b!884231 (= e!580079 (not (= (head!1545 (_1!6143 lt!331139)) (c!142821 (regOne!5060 r!15766)))))))

(assert (= (and d!276671 c!142915) b!884218))

(assert (= (and d!276671 (not c!142915)) b!884224))

(assert (= (and d!276671 c!142914) b!884227))

(assert (= (and d!276671 (not c!142914)) b!884230))

(assert (= (and b!884230 c!142916) b!884228))

(assert (= (and b!884230 (not c!142916)) b!884221))

(assert (= (and b!884221 (not res!402195)) b!884226))

(assert (= (and b!884226 res!402193) b!884229))

(assert (= (and b!884229 res!402197) b!884225))

(assert (= (and b!884225 res!402191) b!884222))

(assert (= (and b!884226 (not res!402198)) b!884223))

(assert (= (and b!884223 res!402194) b!884220))

(assert (= (and b!884220 (not res!402196)) b!884219))

(assert (= (and b!884219 (not res!402192)) b!884231))

(assert (= (or b!884227 b!884220 b!884229) bm!51717))

(assert (=> b!884222 m!1130639))

(assert (=> b!884218 m!1130669))

(assert (=> b!884225 m!1130643))

(assert (=> b!884225 m!1130643))

(assert (=> b!884225 m!1130645))

(assert (=> d!276671 m!1130647))

(assert (=> d!276671 m!1130569))

(assert (=> b!884224 m!1130639))

(assert (=> b!884224 m!1130639))

(declare-fun m!1130787 () Bool)

(assert (=> b!884224 m!1130787))

(assert (=> b!884224 m!1130643))

(assert (=> b!884224 m!1130787))

(assert (=> b!884224 m!1130643))

(declare-fun m!1130789 () Bool)

(assert (=> b!884224 m!1130789))

(assert (=> b!884219 m!1130643))

(assert (=> b!884219 m!1130643))

(assert (=> b!884219 m!1130645))

(assert (=> b!884231 m!1130639))

(assert (=> bm!51717 m!1130647))

(assert (=> b!883804 d!276671))

(declare-fun d!276673 () Bool)

(assert (=> d!276673 (= (get!2961 lt!331136) (v!19375 lt!331136))))

(assert (=> b!883804 d!276673))

(declare-fun b!884236 () Bool)

(declare-fun e!580088 () Bool)

(declare-fun tp!279011 () Bool)

(assert (=> b!884236 (= e!580088 (and tp_is_empty!4191 tp!279011))))

(assert (=> b!883807 (= tp!278989 e!580088)))

(assert (= (and b!883807 (is-Cons!9488 (t!100550 s!10566))) b!884236))

(declare-fun e!580091 () Bool)

(assert (=> b!883806 (= tp!278986 e!580091)))

(declare-fun b!884250 () Bool)

(declare-fun tp!279022 () Bool)

(declare-fun tp!279023 () Bool)

(assert (=> b!884250 (= e!580091 (and tp!279022 tp!279023))))

(declare-fun b!884247 () Bool)

(assert (=> b!884247 (= e!580091 tp_is_empty!4191)))

(declare-fun b!884249 () Bool)

(declare-fun tp!279025 () Bool)

(assert (=> b!884249 (= e!580091 tp!279025)))

(declare-fun b!884248 () Bool)

(declare-fun tp!279024 () Bool)

(declare-fun tp!279026 () Bool)

(assert (=> b!884248 (= e!580091 (and tp!279024 tp!279026))))

(assert (= (and b!883806 (is-ElementMatch!2274 (reg!2603 r!15766))) b!884247))

(assert (= (and b!883806 (is-Concat!4107 (reg!2603 r!15766))) b!884248))

(assert (= (and b!883806 (is-Star!2274 (reg!2603 r!15766))) b!884249))

(assert (= (and b!883806 (is-Union!2274 (reg!2603 r!15766))) b!884250))

(declare-fun e!580092 () Bool)

(assert (=> b!883800 (= tp!278987 e!580092)))

(declare-fun b!884254 () Bool)

(declare-fun tp!279027 () Bool)

(declare-fun tp!279028 () Bool)

(assert (=> b!884254 (= e!580092 (and tp!279027 tp!279028))))

(declare-fun b!884251 () Bool)

(assert (=> b!884251 (= e!580092 tp_is_empty!4191)))

(declare-fun b!884253 () Bool)

(declare-fun tp!279030 () Bool)

(assert (=> b!884253 (= e!580092 tp!279030)))

(declare-fun b!884252 () Bool)

(declare-fun tp!279029 () Bool)

(declare-fun tp!279031 () Bool)

(assert (=> b!884252 (= e!580092 (and tp!279029 tp!279031))))

(assert (= (and b!883800 (is-ElementMatch!2274 (regOne!5061 r!15766))) b!884251))

(assert (= (and b!883800 (is-Concat!4107 (regOne!5061 r!15766))) b!884252))

(assert (= (and b!883800 (is-Star!2274 (regOne!5061 r!15766))) b!884253))

(assert (= (and b!883800 (is-Union!2274 (regOne!5061 r!15766))) b!884254))

(declare-fun e!580093 () Bool)

(assert (=> b!883800 (= tp!278988 e!580093)))

(declare-fun b!884258 () Bool)

(declare-fun tp!279032 () Bool)

(declare-fun tp!279033 () Bool)

(assert (=> b!884258 (= e!580093 (and tp!279032 tp!279033))))

(declare-fun b!884255 () Bool)

(assert (=> b!884255 (= e!580093 tp_is_empty!4191)))

(declare-fun b!884257 () Bool)

(declare-fun tp!279035 () Bool)

(assert (=> b!884257 (= e!580093 tp!279035)))

(declare-fun b!884256 () Bool)

(declare-fun tp!279034 () Bool)

(declare-fun tp!279036 () Bool)

(assert (=> b!884256 (= e!580093 (and tp!279034 tp!279036))))

(assert (= (and b!883800 (is-ElementMatch!2274 (regTwo!5061 r!15766))) b!884255))

(assert (= (and b!883800 (is-Concat!4107 (regTwo!5061 r!15766))) b!884256))

(assert (= (and b!883800 (is-Star!2274 (regTwo!5061 r!15766))) b!884257))

(assert (= (and b!883800 (is-Union!2274 (regTwo!5061 r!15766))) b!884258))

(declare-fun e!580094 () Bool)

(assert (=> b!883809 (= tp!278985 e!580094)))

(declare-fun b!884262 () Bool)

(declare-fun tp!279037 () Bool)

(declare-fun tp!279038 () Bool)

(assert (=> b!884262 (= e!580094 (and tp!279037 tp!279038))))

(declare-fun b!884259 () Bool)

(assert (=> b!884259 (= e!580094 tp_is_empty!4191)))

(declare-fun b!884261 () Bool)

(declare-fun tp!279040 () Bool)

(assert (=> b!884261 (= e!580094 tp!279040)))

(declare-fun b!884260 () Bool)

(declare-fun tp!279039 () Bool)

(declare-fun tp!279041 () Bool)

(assert (=> b!884260 (= e!580094 (and tp!279039 tp!279041))))

(assert (= (and b!883809 (is-ElementMatch!2274 (regOne!5060 r!15766))) b!884259))

(assert (= (and b!883809 (is-Concat!4107 (regOne!5060 r!15766))) b!884260))

(assert (= (and b!883809 (is-Star!2274 (regOne!5060 r!15766))) b!884261))

(assert (= (and b!883809 (is-Union!2274 (regOne!5060 r!15766))) b!884262))

(declare-fun e!580095 () Bool)

(assert (=> b!883809 (= tp!278990 e!580095)))

(declare-fun b!884266 () Bool)

(declare-fun tp!279042 () Bool)

(declare-fun tp!279043 () Bool)

(assert (=> b!884266 (= e!580095 (and tp!279042 tp!279043))))

(declare-fun b!884263 () Bool)

(assert (=> b!884263 (= e!580095 tp_is_empty!4191)))

(declare-fun b!884265 () Bool)

(declare-fun tp!279045 () Bool)

(assert (=> b!884265 (= e!580095 tp!279045)))

(declare-fun b!884264 () Bool)

(declare-fun tp!279044 () Bool)

(declare-fun tp!279046 () Bool)

(assert (=> b!884264 (= e!580095 (and tp!279044 tp!279046))))

(assert (= (and b!883809 (is-ElementMatch!2274 (regTwo!5060 r!15766))) b!884263))

(assert (= (and b!883809 (is-Concat!4107 (regTwo!5060 r!15766))) b!884264))

(assert (= (and b!883809 (is-Star!2274 (regTwo!5060 r!15766))) b!884265))

(assert (= (and b!883809 (is-Union!2274 (regTwo!5060 r!15766))) b!884266))

(push 1)

(assert (not b!884265))

(assert (not b!884191))

(assert (not d!276643))

(assert (not b!884119))

(assert (not b!883996))

(assert (not bm!51694))

(assert (not bm!51662))

(assert (not b!884225))

(assert (not b!883934))

(assert (not b!884018))

(assert (not d!276641))

(assert (not b!884001))

(assert (not d!276633))

(assert (not b!884113))

(assert (not bm!51689))

(assert (not b!884189))

(assert (not bm!51707))

(assert (not b!884116))

(assert (not d!276649))

(assert (not bm!51661))

(assert (not b!884253))

(assert (not d!276631))

(assert (not b!884112))

(assert (not b!884125))

(assert (not b!884266))

(assert (not b!884224))

(assert (not b!884248))

(assert (not b!884106))

(assert (not d!276667))

(assert (not d!276671))

(assert (not b!884231))

(assert (not b!884013))

(assert (not d!276669))

(assert (not b!883946))

(assert (not b!884219))

(assert (not d!276663))

(assert (not d!276661))

(assert (not d!276657))

(assert (not b!884014))

(assert (not b!884007))

(assert (not b!884262))

(assert (not bm!51696))

(assert (not b!883939))

(assert (not bm!51717))

(assert (not d!276639))

(assert (not bm!51672))

(assert (not b!884190))

(assert (not b!884021))

(assert (not b!884104))

(assert (not b!884118))

(assert (not d!276655))

(assert (not b!883933))

(assert (not b!884015))

(assert (not d!276651))

(assert (not b!884218))

(assert (not b!884252))

(assert (not b!883937))

(assert (not b!884192))

(assert (not bm!51698))

(assert (not b!884236))

(assert (not b!884258))

(assert (not b!883940))

(assert (not b!883985))

(assert (not bm!51708))

(assert (not b!884188))

(assert (not b!884027))

(assert (not b!884000))

(assert (not d!276635))

(assert (not b!884257))

(assert (not bm!51697))

(assert (not b!884035))

(assert (not b!884004))

(assert (not b!884020))

(assert tp_is_empty!4191)

(assert (not b!884006))

(assert (not bm!51699))

(assert (not b!884264))

(assert (not b!884260))

(assert (not b!884261))

(assert (not b!884250))

(assert (not bm!51711))

(assert (not b!884249))

(assert (not b!884254))

(assert (not bm!51687))

(assert (not bm!51692))

(assert (not b!884222))

(assert (not b!884256))

(assert (not d!276627))

(assert (not b!884195))

(assert (not b!883885))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

