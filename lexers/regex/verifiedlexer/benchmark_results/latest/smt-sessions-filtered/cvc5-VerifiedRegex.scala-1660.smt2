; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!83936 () Bool)

(assert start!83936)

(declare-fun b!940017 () Bool)

(assert (=> b!940017 true))

(assert (=> b!940017 true))

(assert (=> b!940017 true))

(declare-fun lambda!31560 () Int)

(declare-fun lambda!31559 () Int)

(assert (=> b!940017 (not (= lambda!31560 lambda!31559))))

(assert (=> b!940017 true))

(assert (=> b!940017 true))

(assert (=> b!940017 true))

(declare-fun bs!238604 () Bool)

(declare-fun b!940012 () Bool)

(assert (= bs!238604 (and b!940012 b!940017)))

(declare-datatypes ((C!5726 0))(
  ( (C!5727 (val!3111 Int)) )
))
(declare-datatypes ((Regex!2578 0))(
  ( (ElementMatch!2578 (c!152949 C!5726)) (Concat!4411 (regOne!5668 Regex!2578) (regTwo!5668 Regex!2578)) (EmptyExpr!2578) (Star!2578 (reg!2907 Regex!2578)) (EmptyLang!2578) (Union!2578 (regOne!5669 Regex!2578) (regTwo!5669 Regex!2578)) )
))
(declare-fun lt!342115 () Regex!2578)

(declare-fun lambda!31561 () Int)

(declare-fun r!15766 () Regex!2578)

(declare-fun lt!342111 () Regex!2578)

(declare-fun lt!342110 () Regex!2578)

(assert (=> bs!238604 (= (and (= lt!342111 (reg!2907 r!15766)) (= lt!342110 lt!342115)) (= lambda!31561 lambda!31559))))

(assert (=> bs!238604 (not (= lambda!31561 lambda!31560))))

(assert (=> b!940012 true))

(assert (=> b!940012 true))

(assert (=> b!940012 true))

(declare-fun lambda!31562 () Int)

(assert (=> bs!238604 (not (= lambda!31562 lambda!31559))))

(assert (=> bs!238604 (= (and (= lt!342111 (reg!2907 r!15766)) (= lt!342110 lt!342115)) (= lambda!31562 lambda!31560))))

(assert (=> b!940012 (not (= lambda!31562 lambda!31561))))

(assert (=> b!940012 true))

(assert (=> b!940012 true))

(assert (=> b!940012 true))

(declare-fun b!940008 () Bool)

(declare-fun e!609931 () Bool)

(declare-fun tp!290994 () Bool)

(assert (=> b!940008 (= e!609931 tp!290994)))

(declare-fun b!940009 () Bool)

(declare-fun e!609929 () Bool)

(declare-fun e!609930 () Bool)

(assert (=> b!940009 (= e!609929 (not e!609930))))

(declare-fun res!426926 () Bool)

(assert (=> b!940009 (=> res!426926 e!609930)))

(declare-fun lt!342112 () Bool)

(assert (=> b!940009 (= res!426926 (or lt!342112 (and (is-Concat!4411 r!15766) (is-EmptyExpr!2578 (regOne!5668 r!15766))) (and (is-Concat!4411 r!15766) (is-EmptyExpr!2578 (regTwo!5668 r!15766))) (is-Concat!4411 r!15766) (is-Union!2578 r!15766) (not (is-Star!2578 r!15766))))))

(declare-datatypes ((List!9808 0))(
  ( (Nil!9792) (Cons!9792 (h!15193 C!5726) (t!100854 List!9808)) )
))
(declare-fun s!10566 () List!9808)

(declare-fun matchRSpec!379 (Regex!2578 List!9808) Bool)

(assert (=> b!940009 (= lt!342112 (matchRSpec!379 r!15766 s!10566))))

(declare-fun matchR!1116 (Regex!2578 List!9808) Bool)

(assert (=> b!940009 (= lt!342112 (matchR!1116 r!15766 s!10566))))

(declare-datatypes ((Unit!14775 0))(
  ( (Unit!14776) )
))
(declare-fun lt!342116 () Unit!14775)

(declare-fun mainMatchTheorem!379 (Regex!2578 List!9808) Unit!14775)

(assert (=> b!940009 (= lt!342116 (mainMatchTheorem!379 r!15766 s!10566))))

(declare-fun b!940010 () Bool)

(declare-fun tp_is_empty!4799 () Bool)

(assert (=> b!940010 (= e!609931 tp_is_empty!4799)))

(declare-fun b!940011 () Bool)

(declare-fun tp!290995 () Bool)

(declare-fun tp!290996 () Bool)

(assert (=> b!940011 (= e!609931 (and tp!290995 tp!290996))))

(declare-fun e!609928 () Bool)

(declare-fun e!609926 () Bool)

(assert (=> b!940012 (= e!609928 e!609926)))

(declare-fun res!426925 () Bool)

(assert (=> b!940012 (=> res!426925 e!609926)))

(declare-fun isEmpty!6037 (List!9808) Bool)

(assert (=> b!940012 (= res!426925 (isEmpty!6037 s!10566))))

(declare-fun Exists!329 (Int) Bool)

(assert (=> b!940012 (= (Exists!329 lambda!31561) (Exists!329 lambda!31562))))

(declare-fun lt!342114 () Unit!14775)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!73 (Regex!2578 List!9808) Unit!14775)

(assert (=> b!940012 (= lt!342114 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!73 lt!342111 s!10566))))

(declare-fun lt!342109 () Bool)

(assert (=> b!940012 (= lt!342109 (Exists!329 lambda!31561))))

(declare-datatypes ((tuple2!11054 0))(
  ( (tuple2!11055 (_1!6353 List!9808) (_2!6353 List!9808)) )
))
(declare-datatypes ((Option!2169 0))(
  ( (None!2168) (Some!2168 (v!19585 tuple2!11054)) )
))
(declare-fun isDefined!1811 (Option!2169) Bool)

(declare-fun findConcatSeparation!275 (Regex!2578 Regex!2578 List!9808 List!9808 List!9808) Option!2169)

(assert (=> b!940012 (= lt!342109 (isDefined!1811 (findConcatSeparation!275 lt!342111 lt!342110 Nil!9792 s!10566 s!10566)))))

(declare-fun lt!342106 () Unit!14775)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!275 (Regex!2578 Regex!2578 List!9808) Unit!14775)

(assert (=> b!940012 (= lt!342106 (lemmaFindConcatSeparationEquivalentToExists!275 lt!342111 lt!342110 s!10566))))

(assert (=> b!940012 (matchRSpec!379 lt!342110 s!10566)))

(declare-fun lt!342113 () Unit!14775)

(assert (=> b!940012 (= lt!342113 (mainMatchTheorem!379 lt!342110 s!10566))))

(declare-fun b!940013 () Bool)

(declare-fun tp!290993 () Bool)

(declare-fun tp!290997 () Bool)

(assert (=> b!940013 (= e!609931 (and tp!290993 tp!290997))))

(declare-fun b!940014 () Bool)

(declare-fun validRegex!1047 (Regex!2578) Bool)

(assert (=> b!940014 (= e!609926 (validRegex!1047 (reg!2907 r!15766)))))

(declare-fun b!940015 () Bool)

(declare-fun e!609927 () Bool)

(declare-fun tp!290998 () Bool)

(assert (=> b!940015 (= e!609927 (and tp_is_empty!4799 tp!290998))))

(declare-fun res!426923 () Bool)

(assert (=> start!83936 (=> (not res!426923) (not e!609929))))

(assert (=> start!83936 (= res!426923 (validRegex!1047 r!15766))))

(assert (=> start!83936 e!609929))

(assert (=> start!83936 e!609931))

(assert (=> start!83936 e!609927))

(declare-fun b!940016 () Bool)

(declare-fun res!426927 () Bool)

(assert (=> b!940016 (=> res!426927 e!609926)))

(assert (=> b!940016 (= res!426927 (not lt!342109))))

(assert (=> b!940017 (= e!609930 e!609928)))

(declare-fun res!426924 () Bool)

(assert (=> b!940017 (=> res!426924 e!609928)))

(assert (=> b!940017 (= res!426924 (not (matchR!1116 lt!342110 s!10566)))))

(assert (=> b!940017 (= lt!342110 (Star!2578 lt!342111))))

(declare-fun removeUselessConcat!247 (Regex!2578) Regex!2578)

(assert (=> b!940017 (= lt!342111 (removeUselessConcat!247 (reg!2907 r!15766)))))

(assert (=> b!940017 (= (Exists!329 lambda!31559) (Exists!329 lambda!31560))))

(declare-fun lt!342108 () Unit!14775)

(assert (=> b!940017 (= lt!342108 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!73 (reg!2907 r!15766) s!10566))))

(assert (=> b!940017 (= (isDefined!1811 (findConcatSeparation!275 (reg!2907 r!15766) lt!342115 Nil!9792 s!10566 s!10566)) (Exists!329 lambda!31559))))

(declare-fun lt!342107 () Unit!14775)

(assert (=> b!940017 (= lt!342107 (lemmaFindConcatSeparationEquivalentToExists!275 (reg!2907 r!15766) lt!342115 s!10566))))

(assert (=> b!940017 (= lt!342115 (Star!2578 (reg!2907 r!15766)))))

(assert (= (and start!83936 res!426923) b!940009))

(assert (= (and b!940009 (not res!426926)) b!940017))

(assert (= (and b!940017 (not res!426924)) b!940012))

(assert (= (and b!940012 (not res!426925)) b!940016))

(assert (= (and b!940016 (not res!426927)) b!940014))

(assert (= (and start!83936 (is-ElementMatch!2578 r!15766)) b!940010))

(assert (= (and start!83936 (is-Concat!4411 r!15766)) b!940011))

(assert (= (and start!83936 (is-Star!2578 r!15766)) b!940008))

(assert (= (and start!83936 (is-Union!2578 r!15766)) b!940013))

(assert (= (and start!83936 (is-Cons!9792 s!10566)) b!940015))

(declare-fun m!1157621 () Bool)

(assert (=> b!940014 m!1157621))

(declare-fun m!1157623 () Bool)

(assert (=> b!940012 m!1157623))

(declare-fun m!1157625 () Bool)

(assert (=> b!940012 m!1157625))

(declare-fun m!1157627 () Bool)

(assert (=> b!940012 m!1157627))

(declare-fun m!1157629 () Bool)

(assert (=> b!940012 m!1157629))

(declare-fun m!1157631 () Bool)

(assert (=> b!940012 m!1157631))

(declare-fun m!1157633 () Bool)

(assert (=> b!940012 m!1157633))

(assert (=> b!940012 m!1157623))

(declare-fun m!1157635 () Bool)

(assert (=> b!940012 m!1157635))

(declare-fun m!1157637 () Bool)

(assert (=> b!940012 m!1157637))

(declare-fun m!1157639 () Bool)

(assert (=> b!940012 m!1157639))

(assert (=> b!940012 m!1157629))

(declare-fun m!1157641 () Bool)

(assert (=> start!83936 m!1157641))

(declare-fun m!1157643 () Bool)

(assert (=> b!940009 m!1157643))

(declare-fun m!1157645 () Bool)

(assert (=> b!940009 m!1157645))

(declare-fun m!1157647 () Bool)

(assert (=> b!940009 m!1157647))

(declare-fun m!1157649 () Bool)

(assert (=> b!940017 m!1157649))

(declare-fun m!1157651 () Bool)

(assert (=> b!940017 m!1157651))

(declare-fun m!1157653 () Bool)

(assert (=> b!940017 m!1157653))

(declare-fun m!1157655 () Bool)

(assert (=> b!940017 m!1157655))

(declare-fun m!1157657 () Bool)

(assert (=> b!940017 m!1157657))

(declare-fun m!1157659 () Bool)

(assert (=> b!940017 m!1157659))

(assert (=> b!940017 m!1157649))

(assert (=> b!940017 m!1157657))

(declare-fun m!1157661 () Bool)

(assert (=> b!940017 m!1157661))

(declare-fun m!1157663 () Bool)

(assert (=> b!940017 m!1157663))

(push 1)

(assert (not b!940017))

(assert (not start!83936))

(assert (not b!940012))

(assert (not b!940014))

(assert (not b!940009))

(assert (not b!940015))

(assert (not b!940008))

(assert (not b!940011))

(assert (not b!940013))

(assert tp_is_empty!4799)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!238606 () Bool)

(declare-fun b!940124 () Bool)

(assert (= bs!238606 (and b!940124 b!940017)))

(declare-fun lambda!31583 () Int)

(assert (=> bs!238606 (not (= lambda!31583 lambda!31559))))

(assert (=> bs!238606 (= (= r!15766 lt!342115) (= lambda!31583 lambda!31560))))

(declare-fun bs!238607 () Bool)

(assert (= bs!238607 (and b!940124 b!940012)))

(assert (=> bs!238607 (not (= lambda!31583 lambda!31561))))

(assert (=> bs!238607 (= (and (= (reg!2907 r!15766) lt!342111) (= r!15766 lt!342110)) (= lambda!31583 lambda!31562))))

(assert (=> b!940124 true))

(assert (=> b!940124 true))

(declare-fun bs!238608 () Bool)

(declare-fun b!940120 () Bool)

(assert (= bs!238608 (and b!940120 b!940017)))

(declare-fun lambda!31584 () Int)

(assert (=> bs!238608 (not (= lambda!31584 lambda!31560))))

(declare-fun bs!238609 () Bool)

(assert (= bs!238609 (and b!940120 b!940012)))

(assert (=> bs!238609 (not (= lambda!31584 lambda!31561))))

(declare-fun bs!238610 () Bool)

(assert (= bs!238610 (and b!940120 b!940124)))

(assert (=> bs!238610 (not (= lambda!31584 lambda!31583))))

(assert (=> bs!238608 (not (= lambda!31584 lambda!31559))))

(assert (=> bs!238609 (not (= lambda!31584 lambda!31562))))

(assert (=> b!940120 true))

(assert (=> b!940120 true))

(declare-fun b!940116 () Bool)

(declare-fun e!609980 () Bool)

(declare-fun e!609986 () Bool)

(assert (=> b!940116 (= e!609980 e!609986)))

(declare-fun res!426989 () Bool)

(assert (=> b!940116 (= res!426989 (matchRSpec!379 (regOne!5669 r!15766) s!10566))))

(assert (=> b!940116 (=> res!426989 e!609986)))

(declare-fun bm!58497 () Bool)

(declare-fun call!58502 () Bool)

(declare-fun c!152962 () Bool)

(assert (=> bm!58497 (= call!58502 (Exists!329 (ite c!152962 lambda!31583 lambda!31584)))))

(declare-fun d!282385 () Bool)

(declare-fun c!152959 () Bool)

(assert (=> d!282385 (= c!152959 (is-EmptyExpr!2578 r!15766))))

(declare-fun e!609983 () Bool)

(assert (=> d!282385 (= (matchRSpec!379 r!15766 s!10566) e!609983)))

(declare-fun b!940117 () Bool)

(declare-fun c!152961 () Bool)

(assert (=> b!940117 (= c!152961 (is-ElementMatch!2578 r!15766))))

(declare-fun e!609982 () Bool)

(declare-fun e!609984 () Bool)

(assert (=> b!940117 (= e!609982 e!609984)))

(declare-fun b!940118 () Bool)

(declare-fun c!152960 () Bool)

(assert (=> b!940118 (= c!152960 (is-Union!2578 r!15766))))

(assert (=> b!940118 (= e!609984 e!609980)))

(declare-fun b!940119 () Bool)

(declare-fun call!58503 () Bool)

(assert (=> b!940119 (= e!609983 call!58503)))

(declare-fun e!609985 () Bool)

(assert (=> b!940120 (= e!609985 call!58502)))

(declare-fun bm!58498 () Bool)

(assert (=> bm!58498 (= call!58503 (isEmpty!6037 s!10566))))

(declare-fun b!940121 () Bool)

(assert (=> b!940121 (= e!609984 (= s!10566 (Cons!9792 (c!152949 r!15766) Nil!9792)))))

(declare-fun b!940122 () Bool)

(assert (=> b!940122 (= e!609986 (matchRSpec!379 (regTwo!5669 r!15766) s!10566))))

(declare-fun b!940123 () Bool)

(declare-fun res!426988 () Bool)

(declare-fun e!609981 () Bool)

(assert (=> b!940123 (=> res!426988 e!609981)))

(assert (=> b!940123 (= res!426988 call!58503)))

(assert (=> b!940123 (= e!609985 e!609981)))

(assert (=> b!940124 (= e!609981 call!58502)))

(declare-fun b!940125 () Bool)

(assert (=> b!940125 (= e!609983 e!609982)))

(declare-fun res!426987 () Bool)

(assert (=> b!940125 (= res!426987 (not (is-EmptyLang!2578 r!15766)))))

(assert (=> b!940125 (=> (not res!426987) (not e!609982))))

(declare-fun b!940126 () Bool)

(assert (=> b!940126 (= e!609980 e!609985)))

(assert (=> b!940126 (= c!152962 (is-Star!2578 r!15766))))

(assert (= (and d!282385 c!152959) b!940119))

(assert (= (and d!282385 (not c!152959)) b!940125))

(assert (= (and b!940125 res!426987) b!940117))

(assert (= (and b!940117 c!152961) b!940121))

(assert (= (and b!940117 (not c!152961)) b!940118))

(assert (= (and b!940118 c!152960) b!940116))

(assert (= (and b!940118 (not c!152960)) b!940126))

(assert (= (and b!940116 (not res!426989)) b!940122))

(assert (= (and b!940126 c!152962) b!940123))

(assert (= (and b!940126 (not c!152962)) b!940120))

(assert (= (and b!940123 (not res!426988)) b!940124))

(assert (= (or b!940124 b!940120) bm!58497))

(assert (= (or b!940119 b!940123) bm!58498))

(declare-fun m!1157709 () Bool)

(assert (=> b!940116 m!1157709))

(declare-fun m!1157711 () Bool)

(assert (=> bm!58497 m!1157711))

(assert (=> bm!58498 m!1157631))

(declare-fun m!1157713 () Bool)

(assert (=> b!940122 m!1157713))

(assert (=> b!940009 d!282385))

(declare-fun b!940155 () Bool)

(declare-fun res!427006 () Bool)

(declare-fun e!610004 () Bool)

(assert (=> b!940155 (=> (not res!427006) (not e!610004))))

(declare-fun tail!1272 (List!9808) List!9808)

(assert (=> b!940155 (= res!427006 (isEmpty!6037 (tail!1272 s!10566)))))

(declare-fun b!940156 () Bool)

(declare-fun e!610003 () Bool)

(declare-fun e!610001 () Bool)

(assert (=> b!940156 (= e!610003 e!610001)))

(declare-fun res!427007 () Bool)

(assert (=> b!940156 (=> res!427007 e!610001)))

(declare-fun call!58506 () Bool)

(assert (=> b!940156 (= res!427007 call!58506)))

(declare-fun b!940157 () Bool)

(declare-fun e!610005 () Bool)

(declare-fun lt!342152 () Bool)

(assert (=> b!940157 (= e!610005 (not lt!342152))))

(declare-fun d!282387 () Bool)

(declare-fun e!610007 () Bool)

(assert (=> d!282387 e!610007))

(declare-fun c!152970 () Bool)

(assert (=> d!282387 (= c!152970 (is-EmptyExpr!2578 r!15766))))

(declare-fun e!610002 () Bool)

(assert (=> d!282387 (= lt!342152 e!610002)))

(declare-fun c!152969 () Bool)

(assert (=> d!282387 (= c!152969 (isEmpty!6037 s!10566))))

(assert (=> d!282387 (validRegex!1047 r!15766)))

(assert (=> d!282387 (= (matchR!1116 r!15766 s!10566) lt!342152)))

(declare-fun b!940158 () Bool)

(declare-fun e!610006 () Bool)

(assert (=> b!940158 (= e!610006 e!610003)))

(declare-fun res!427009 () Bool)

(assert (=> b!940158 (=> (not res!427009) (not e!610003))))

(assert (=> b!940158 (= res!427009 (not lt!342152))))

(declare-fun b!940159 () Bool)

(declare-fun head!1710 (List!9808) C!5726)

(assert (=> b!940159 (= e!610001 (not (= (head!1710 s!10566) (c!152949 r!15766))))))

(declare-fun b!940160 () Bool)

(declare-fun derivativeStep!557 (Regex!2578 C!5726) Regex!2578)

(assert (=> b!940160 (= e!610002 (matchR!1116 (derivativeStep!557 r!15766 (head!1710 s!10566)) (tail!1272 s!10566)))))

(declare-fun bm!58501 () Bool)

(assert (=> bm!58501 (= call!58506 (isEmpty!6037 s!10566))))

(declare-fun b!940161 () Bool)

(assert (=> b!940161 (= e!610007 e!610005)))

(declare-fun c!152971 () Bool)

(assert (=> b!940161 (= c!152971 (is-EmptyLang!2578 r!15766))))

(declare-fun b!940162 () Bool)

(declare-fun res!427012 () Bool)

(assert (=> b!940162 (=> res!427012 e!610001)))

(assert (=> b!940162 (= res!427012 (not (isEmpty!6037 (tail!1272 s!10566))))))

(declare-fun b!940163 () Bool)

(assert (=> b!940163 (= e!610007 (= lt!342152 call!58506))))

(declare-fun b!940164 () Bool)

(declare-fun res!427013 () Bool)

(assert (=> b!940164 (=> (not res!427013) (not e!610004))))

(assert (=> b!940164 (= res!427013 (not call!58506))))

(declare-fun b!940165 () Bool)

(declare-fun res!427010 () Bool)

(assert (=> b!940165 (=> res!427010 e!610006)))

(assert (=> b!940165 (= res!427010 (not (is-ElementMatch!2578 r!15766)))))

(assert (=> b!940165 (= e!610005 e!610006)))

(declare-fun b!940166 () Bool)

(assert (=> b!940166 (= e!610004 (= (head!1710 s!10566) (c!152949 r!15766)))))

(declare-fun b!940167 () Bool)

(declare-fun nullable!748 (Regex!2578) Bool)

(assert (=> b!940167 (= e!610002 (nullable!748 r!15766))))

(declare-fun b!940168 () Bool)

(declare-fun res!427011 () Bool)

(assert (=> b!940168 (=> res!427011 e!610006)))

(assert (=> b!940168 (= res!427011 e!610004)))

(declare-fun res!427008 () Bool)

(assert (=> b!940168 (=> (not res!427008) (not e!610004))))

(assert (=> b!940168 (= res!427008 lt!342152)))

(assert (= (and d!282387 c!152969) b!940167))

(assert (= (and d!282387 (not c!152969)) b!940160))

(assert (= (and d!282387 c!152970) b!940163))

(assert (= (and d!282387 (not c!152970)) b!940161))

(assert (= (and b!940161 c!152971) b!940157))

(assert (= (and b!940161 (not c!152971)) b!940165))

(assert (= (and b!940165 (not res!427010)) b!940168))

(assert (= (and b!940168 res!427008) b!940164))

(assert (= (and b!940164 res!427013) b!940155))

(assert (= (and b!940155 res!427006) b!940166))

(assert (= (and b!940168 (not res!427011)) b!940158))

(assert (= (and b!940158 res!427009) b!940156))

(assert (= (and b!940156 (not res!427007)) b!940162))

(assert (= (and b!940162 (not res!427012)) b!940159))

(assert (= (or b!940163 b!940156 b!940164) bm!58501))

(declare-fun m!1157715 () Bool)

(assert (=> b!940162 m!1157715))

(assert (=> b!940162 m!1157715))

(declare-fun m!1157717 () Bool)

(assert (=> b!940162 m!1157717))

(declare-fun m!1157719 () Bool)

(assert (=> b!940160 m!1157719))

(assert (=> b!940160 m!1157719))

(declare-fun m!1157721 () Bool)

(assert (=> b!940160 m!1157721))

(assert (=> b!940160 m!1157715))

(assert (=> b!940160 m!1157721))

(assert (=> b!940160 m!1157715))

(declare-fun m!1157723 () Bool)

(assert (=> b!940160 m!1157723))

(assert (=> b!940155 m!1157715))

(assert (=> b!940155 m!1157715))

(assert (=> b!940155 m!1157717))

(assert (=> b!940166 m!1157719))

(assert (=> b!940159 m!1157719))

(assert (=> d!282387 m!1157631))

(assert (=> d!282387 m!1157641))

(assert (=> bm!58501 m!1157631))

(declare-fun m!1157725 () Bool)

(assert (=> b!940167 m!1157725))

(assert (=> b!940009 d!282387))

(declare-fun d!282389 () Bool)

(assert (=> d!282389 (= (matchR!1116 r!15766 s!10566) (matchRSpec!379 r!15766 s!10566))))

(declare-fun lt!342155 () Unit!14775)

(declare-fun choose!5813 (Regex!2578 List!9808) Unit!14775)

(assert (=> d!282389 (= lt!342155 (choose!5813 r!15766 s!10566))))

(assert (=> d!282389 (validRegex!1047 r!15766)))

(assert (=> d!282389 (= (mainMatchTheorem!379 r!15766 s!10566) lt!342155)))

(declare-fun bs!238611 () Bool)

(assert (= bs!238611 d!282389))

(assert (=> bs!238611 m!1157645))

(assert (=> bs!238611 m!1157643))

(declare-fun m!1157727 () Bool)

(assert (=> bs!238611 m!1157727))

(assert (=> bs!238611 m!1157641))

(assert (=> b!940009 d!282389))

(declare-fun b!940187 () Bool)

(declare-fun e!610023 () Bool)

(declare-fun e!610025 () Bool)

(assert (=> b!940187 (= e!610023 e!610025)))

(declare-fun c!152976 () Bool)

(assert (=> b!940187 (= c!152976 (is-Star!2578 (reg!2907 r!15766)))))

(declare-fun bm!58508 () Bool)

(declare-fun call!58513 () Bool)

(declare-fun call!58515 () Bool)

(assert (=> bm!58508 (= call!58513 call!58515)))

(declare-fun bm!58509 () Bool)

(declare-fun call!58514 () Bool)

(declare-fun c!152977 () Bool)

(assert (=> bm!58509 (= call!58514 (validRegex!1047 (ite c!152977 (regTwo!5669 (reg!2907 r!15766)) (regTwo!5668 (reg!2907 r!15766)))))))

(declare-fun b!940188 () Bool)

(declare-fun e!610022 () Bool)

(assert (=> b!940188 (= e!610022 call!58514)))

(declare-fun b!940189 () Bool)

(declare-fun e!610024 () Bool)

(assert (=> b!940189 (= e!610024 call!58515)))

(declare-fun b!940190 () Bool)

(declare-fun e!610027 () Bool)

(assert (=> b!940190 (= e!610027 call!58514)))

(declare-fun b!940191 () Bool)

(declare-fun e!610026 () Bool)

(assert (=> b!940191 (= e!610025 e!610026)))

(assert (=> b!940191 (= c!152977 (is-Union!2578 (reg!2907 r!15766)))))

(declare-fun b!940192 () Bool)

(assert (=> b!940192 (= e!610025 e!610024)))

(declare-fun res!427026 () Bool)

(assert (=> b!940192 (= res!427026 (not (nullable!748 (reg!2907 (reg!2907 r!15766)))))))

(assert (=> b!940192 (=> (not res!427026) (not e!610024))))

(declare-fun bm!58510 () Bool)

(assert (=> bm!58510 (= call!58515 (validRegex!1047 (ite c!152976 (reg!2907 (reg!2907 r!15766)) (ite c!152977 (regOne!5669 (reg!2907 r!15766)) (regOne!5668 (reg!2907 r!15766))))))))

(declare-fun d!282391 () Bool)

(declare-fun res!427024 () Bool)

(assert (=> d!282391 (=> res!427024 e!610023)))

(assert (=> d!282391 (= res!427024 (is-ElementMatch!2578 (reg!2907 r!15766)))))

(assert (=> d!282391 (= (validRegex!1047 (reg!2907 r!15766)) e!610023)))

(declare-fun b!940193 () Bool)

(declare-fun e!610028 () Bool)

(assert (=> b!940193 (= e!610028 e!610027)))

(declare-fun res!427025 () Bool)

(assert (=> b!940193 (=> (not res!427025) (not e!610027))))

(assert (=> b!940193 (= res!427025 call!58513)))

(declare-fun b!940194 () Bool)

(declare-fun res!427028 () Bool)

(assert (=> b!940194 (=> res!427028 e!610028)))

(assert (=> b!940194 (= res!427028 (not (is-Concat!4411 (reg!2907 r!15766))))))

(assert (=> b!940194 (= e!610026 e!610028)))

(declare-fun b!940195 () Bool)

(declare-fun res!427027 () Bool)

(assert (=> b!940195 (=> (not res!427027) (not e!610022))))

(assert (=> b!940195 (= res!427027 call!58513)))

(assert (=> b!940195 (= e!610026 e!610022)))

(assert (= (and d!282391 (not res!427024)) b!940187))

(assert (= (and b!940187 c!152976) b!940192))

(assert (= (and b!940187 (not c!152976)) b!940191))

(assert (= (and b!940192 res!427026) b!940189))

(assert (= (and b!940191 c!152977) b!940195))

(assert (= (and b!940191 (not c!152977)) b!940194))

(assert (= (and b!940195 res!427027) b!940188))

(assert (= (and b!940194 (not res!427028)) b!940193))

(assert (= (and b!940193 res!427025) b!940190))

(assert (= (or b!940188 b!940190) bm!58509))

(assert (= (or b!940195 b!940193) bm!58508))

(assert (= (or b!940189 bm!58508) bm!58510))

(declare-fun m!1157731 () Bool)

(assert (=> bm!58509 m!1157731))

(declare-fun m!1157733 () Bool)

(assert (=> b!940192 m!1157733))

(declare-fun m!1157735 () Bool)

(assert (=> bm!58510 m!1157735))

(assert (=> b!940014 d!282391))

(declare-fun b!940196 () Bool)

(declare-fun e!610030 () Bool)

(declare-fun e!610032 () Bool)

(assert (=> b!940196 (= e!610030 e!610032)))

(declare-fun c!152978 () Bool)

(assert (=> b!940196 (= c!152978 (is-Star!2578 r!15766))))

(declare-fun bm!58511 () Bool)

(declare-fun call!58516 () Bool)

(declare-fun call!58518 () Bool)

(assert (=> bm!58511 (= call!58516 call!58518)))

(declare-fun bm!58512 () Bool)

(declare-fun call!58517 () Bool)

(declare-fun c!152979 () Bool)

(assert (=> bm!58512 (= call!58517 (validRegex!1047 (ite c!152979 (regTwo!5669 r!15766) (regTwo!5668 r!15766))))))

(declare-fun b!940197 () Bool)

(declare-fun e!610029 () Bool)

(assert (=> b!940197 (= e!610029 call!58517)))

(declare-fun b!940198 () Bool)

(declare-fun e!610031 () Bool)

(assert (=> b!940198 (= e!610031 call!58518)))

(declare-fun b!940199 () Bool)

(declare-fun e!610034 () Bool)

(assert (=> b!940199 (= e!610034 call!58517)))

(declare-fun b!940200 () Bool)

(declare-fun e!610033 () Bool)

(assert (=> b!940200 (= e!610032 e!610033)))

(assert (=> b!940200 (= c!152979 (is-Union!2578 r!15766))))

(declare-fun b!940201 () Bool)

(assert (=> b!940201 (= e!610032 e!610031)))

(declare-fun res!427031 () Bool)

(assert (=> b!940201 (= res!427031 (not (nullable!748 (reg!2907 r!15766))))))

(assert (=> b!940201 (=> (not res!427031) (not e!610031))))

(declare-fun bm!58513 () Bool)

(assert (=> bm!58513 (= call!58518 (validRegex!1047 (ite c!152978 (reg!2907 r!15766) (ite c!152979 (regOne!5669 r!15766) (regOne!5668 r!15766)))))))

(declare-fun d!282397 () Bool)

(declare-fun res!427029 () Bool)

(assert (=> d!282397 (=> res!427029 e!610030)))

(assert (=> d!282397 (= res!427029 (is-ElementMatch!2578 r!15766))))

(assert (=> d!282397 (= (validRegex!1047 r!15766) e!610030)))

(declare-fun b!940202 () Bool)

(declare-fun e!610035 () Bool)

(assert (=> b!940202 (= e!610035 e!610034)))

(declare-fun res!427030 () Bool)

(assert (=> b!940202 (=> (not res!427030) (not e!610034))))

(assert (=> b!940202 (= res!427030 call!58516)))

(declare-fun b!940203 () Bool)

(declare-fun res!427033 () Bool)

(assert (=> b!940203 (=> res!427033 e!610035)))

(assert (=> b!940203 (= res!427033 (not (is-Concat!4411 r!15766)))))

(assert (=> b!940203 (= e!610033 e!610035)))

(declare-fun b!940204 () Bool)

(declare-fun res!427032 () Bool)

(assert (=> b!940204 (=> (not res!427032) (not e!610029))))

(assert (=> b!940204 (= res!427032 call!58516)))

(assert (=> b!940204 (= e!610033 e!610029)))

(assert (= (and d!282397 (not res!427029)) b!940196))

(assert (= (and b!940196 c!152978) b!940201))

(assert (= (and b!940196 (not c!152978)) b!940200))

(assert (= (and b!940201 res!427031) b!940198))

(assert (= (and b!940200 c!152979) b!940204))

(assert (= (and b!940200 (not c!152979)) b!940203))

(assert (= (and b!940204 res!427032) b!940197))

(assert (= (and b!940203 (not res!427033)) b!940202))

(assert (= (and b!940202 res!427030) b!940199))

(assert (= (or b!940197 b!940199) bm!58512))

(assert (= (or b!940204 b!940202) bm!58511))

(assert (= (or b!940198 bm!58511) bm!58513))

(declare-fun m!1157737 () Bool)

(assert (=> bm!58512 m!1157737))

(declare-fun m!1157739 () Bool)

(assert (=> b!940201 m!1157739))

(declare-fun m!1157741 () Bool)

(assert (=> bm!58513 m!1157741))

(assert (=> start!83936 d!282397))

(declare-fun b!940205 () Bool)

(declare-fun res!427034 () Bool)

(declare-fun e!610039 () Bool)

(assert (=> b!940205 (=> (not res!427034) (not e!610039))))

(assert (=> b!940205 (= res!427034 (isEmpty!6037 (tail!1272 s!10566)))))

(declare-fun b!940206 () Bool)

(declare-fun e!610038 () Bool)

(declare-fun e!610036 () Bool)

(assert (=> b!940206 (= e!610038 e!610036)))

(declare-fun res!427035 () Bool)

(assert (=> b!940206 (=> res!427035 e!610036)))

(declare-fun call!58519 () Bool)

(assert (=> b!940206 (= res!427035 call!58519)))

(declare-fun b!940207 () Bool)

(declare-fun e!610040 () Bool)

(declare-fun lt!342156 () Bool)

(assert (=> b!940207 (= e!610040 (not lt!342156))))

(declare-fun d!282399 () Bool)

(declare-fun e!610042 () Bool)

(assert (=> d!282399 e!610042))

(declare-fun c!152981 () Bool)

(assert (=> d!282399 (= c!152981 (is-EmptyExpr!2578 lt!342110))))

(declare-fun e!610037 () Bool)

(assert (=> d!282399 (= lt!342156 e!610037)))

(declare-fun c!152980 () Bool)

(assert (=> d!282399 (= c!152980 (isEmpty!6037 s!10566))))

(assert (=> d!282399 (validRegex!1047 lt!342110)))

(assert (=> d!282399 (= (matchR!1116 lt!342110 s!10566) lt!342156)))

(declare-fun b!940208 () Bool)

(declare-fun e!610041 () Bool)

(assert (=> b!940208 (= e!610041 e!610038)))

(declare-fun res!427037 () Bool)

(assert (=> b!940208 (=> (not res!427037) (not e!610038))))

(assert (=> b!940208 (= res!427037 (not lt!342156))))

(declare-fun b!940209 () Bool)

(assert (=> b!940209 (= e!610036 (not (= (head!1710 s!10566) (c!152949 lt!342110))))))

(declare-fun b!940210 () Bool)

(assert (=> b!940210 (= e!610037 (matchR!1116 (derivativeStep!557 lt!342110 (head!1710 s!10566)) (tail!1272 s!10566)))))

(declare-fun bm!58514 () Bool)

(assert (=> bm!58514 (= call!58519 (isEmpty!6037 s!10566))))

(declare-fun b!940211 () Bool)

(assert (=> b!940211 (= e!610042 e!610040)))

(declare-fun c!152982 () Bool)

(assert (=> b!940211 (= c!152982 (is-EmptyLang!2578 lt!342110))))

(declare-fun b!940212 () Bool)

(declare-fun res!427040 () Bool)

(assert (=> b!940212 (=> res!427040 e!610036)))

(assert (=> b!940212 (= res!427040 (not (isEmpty!6037 (tail!1272 s!10566))))))

(declare-fun b!940213 () Bool)

(assert (=> b!940213 (= e!610042 (= lt!342156 call!58519))))

(declare-fun b!940214 () Bool)

(declare-fun res!427041 () Bool)

(assert (=> b!940214 (=> (not res!427041) (not e!610039))))

(assert (=> b!940214 (= res!427041 (not call!58519))))

(declare-fun b!940215 () Bool)

(declare-fun res!427038 () Bool)

(assert (=> b!940215 (=> res!427038 e!610041)))

(assert (=> b!940215 (= res!427038 (not (is-ElementMatch!2578 lt!342110)))))

(assert (=> b!940215 (= e!610040 e!610041)))

(declare-fun b!940216 () Bool)

(assert (=> b!940216 (= e!610039 (= (head!1710 s!10566) (c!152949 lt!342110)))))

(declare-fun b!940217 () Bool)

(assert (=> b!940217 (= e!610037 (nullable!748 lt!342110))))

(declare-fun b!940218 () Bool)

(declare-fun res!427039 () Bool)

(assert (=> b!940218 (=> res!427039 e!610041)))

(assert (=> b!940218 (= res!427039 e!610039)))

(declare-fun res!427036 () Bool)

(assert (=> b!940218 (=> (not res!427036) (not e!610039))))

(assert (=> b!940218 (= res!427036 lt!342156)))

(assert (= (and d!282399 c!152980) b!940217))

(assert (= (and d!282399 (not c!152980)) b!940210))

(assert (= (and d!282399 c!152981) b!940213))

(assert (= (and d!282399 (not c!152981)) b!940211))

(assert (= (and b!940211 c!152982) b!940207))

(assert (= (and b!940211 (not c!152982)) b!940215))

(assert (= (and b!940215 (not res!427038)) b!940218))

(assert (= (and b!940218 res!427036) b!940214))

(assert (= (and b!940214 res!427041) b!940205))

(assert (= (and b!940205 res!427034) b!940216))

(assert (= (and b!940218 (not res!427039)) b!940208))

(assert (= (and b!940208 res!427037) b!940206))

(assert (= (and b!940206 (not res!427035)) b!940212))

(assert (= (and b!940212 (not res!427040)) b!940209))

(assert (= (or b!940213 b!940206 b!940214) bm!58514))

(assert (=> b!940212 m!1157715))

(assert (=> b!940212 m!1157715))

(assert (=> b!940212 m!1157717))

(assert (=> b!940210 m!1157719))

(assert (=> b!940210 m!1157719))

(declare-fun m!1157743 () Bool)

(assert (=> b!940210 m!1157743))

(assert (=> b!940210 m!1157715))

(assert (=> b!940210 m!1157743))

(assert (=> b!940210 m!1157715))

(declare-fun m!1157745 () Bool)

(assert (=> b!940210 m!1157745))

(assert (=> b!940205 m!1157715))

(assert (=> b!940205 m!1157715))

(assert (=> b!940205 m!1157717))

(assert (=> b!940216 m!1157719))

(assert (=> b!940209 m!1157719))

(assert (=> d!282399 m!1157631))

(declare-fun m!1157747 () Bool)

(assert (=> d!282399 m!1157747))

(assert (=> bm!58514 m!1157631))

(declare-fun m!1157749 () Bool)

(assert (=> b!940217 m!1157749))

(assert (=> b!940017 d!282399))

(declare-fun b!940237 () Bool)

(declare-fun res!427056 () Bool)

(declare-fun e!610053 () Bool)

(assert (=> b!940237 (=> (not res!427056) (not e!610053))))

(declare-fun lt!342165 () Option!2169)

(declare-fun get!3249 (Option!2169) tuple2!11054)

(assert (=> b!940237 (= res!427056 (matchR!1116 lt!342115 (_2!6353 (get!3249 lt!342165))))))

(declare-fun b!940238 () Bool)

(declare-fun e!610056 () Option!2169)

(declare-fun e!610055 () Option!2169)

(assert (=> b!940238 (= e!610056 e!610055)))

(declare-fun c!152988 () Bool)

(assert (=> b!940238 (= c!152988 (is-Nil!9792 s!10566))))

(declare-fun b!940239 () Bool)

(declare-fun ++!2600 (List!9808 List!9808) List!9808)

(assert (=> b!940239 (= e!610053 (= (++!2600 (_1!6353 (get!3249 lt!342165)) (_2!6353 (get!3249 lt!342165))) s!10566))))

(declare-fun d!282401 () Bool)

(declare-fun e!610057 () Bool)

(assert (=> d!282401 e!610057))

(declare-fun res!427054 () Bool)

(assert (=> d!282401 (=> res!427054 e!610057)))

(assert (=> d!282401 (= res!427054 e!610053)))

(declare-fun res!427055 () Bool)

(assert (=> d!282401 (=> (not res!427055) (not e!610053))))

(assert (=> d!282401 (= res!427055 (isDefined!1811 lt!342165))))

(assert (=> d!282401 (= lt!342165 e!610056)))

(declare-fun c!152987 () Bool)

(declare-fun e!610054 () Bool)

(assert (=> d!282401 (= c!152987 e!610054)))

(declare-fun res!427053 () Bool)

(assert (=> d!282401 (=> (not res!427053) (not e!610054))))

(assert (=> d!282401 (= res!427053 (matchR!1116 (reg!2907 r!15766) Nil!9792))))

(assert (=> d!282401 (validRegex!1047 (reg!2907 r!15766))))

(assert (=> d!282401 (= (findConcatSeparation!275 (reg!2907 r!15766) lt!342115 Nil!9792 s!10566 s!10566) lt!342165)))

(declare-fun b!940240 () Bool)

(assert (=> b!940240 (= e!610055 None!2168)))

(declare-fun b!940241 () Bool)

(declare-fun res!427052 () Bool)

(assert (=> b!940241 (=> (not res!427052) (not e!610053))))

(assert (=> b!940241 (= res!427052 (matchR!1116 (reg!2907 r!15766) (_1!6353 (get!3249 lt!342165))))))

(declare-fun b!940242 () Bool)

(assert (=> b!940242 (= e!610057 (not (isDefined!1811 lt!342165)))))

(declare-fun b!940243 () Bool)

(assert (=> b!940243 (= e!610056 (Some!2168 (tuple2!11055 Nil!9792 s!10566)))))

(declare-fun b!940244 () Bool)

(declare-fun lt!342163 () Unit!14775)

(declare-fun lt!342164 () Unit!14775)

(assert (=> b!940244 (= lt!342163 lt!342164)))

(assert (=> b!940244 (= (++!2600 (++!2600 Nil!9792 (Cons!9792 (h!15193 s!10566) Nil!9792)) (t!100854 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!213 (List!9808 C!5726 List!9808 List!9808) Unit!14775)

(assert (=> b!940244 (= lt!342164 (lemmaMoveElementToOtherListKeepsConcatEq!213 Nil!9792 (h!15193 s!10566) (t!100854 s!10566) s!10566))))

(assert (=> b!940244 (= e!610055 (findConcatSeparation!275 (reg!2907 r!15766) lt!342115 (++!2600 Nil!9792 (Cons!9792 (h!15193 s!10566) Nil!9792)) (t!100854 s!10566) s!10566))))

(declare-fun b!940245 () Bool)

(assert (=> b!940245 (= e!610054 (matchR!1116 lt!342115 s!10566))))

(assert (= (and d!282401 res!427053) b!940245))

(assert (= (and d!282401 c!152987) b!940243))

(assert (= (and d!282401 (not c!152987)) b!940238))

(assert (= (and b!940238 c!152988) b!940240))

(assert (= (and b!940238 (not c!152988)) b!940244))

(assert (= (and d!282401 res!427055) b!940241))

(assert (= (and b!940241 res!427052) b!940237))

(assert (= (and b!940237 res!427056) b!940239))

(assert (= (and d!282401 (not res!427054)) b!940242))

(declare-fun m!1157751 () Bool)

(assert (=> d!282401 m!1157751))

(declare-fun m!1157753 () Bool)

(assert (=> d!282401 m!1157753))

(assert (=> d!282401 m!1157621))

(declare-fun m!1157755 () Bool)

(assert (=> b!940237 m!1157755))

(declare-fun m!1157757 () Bool)

(assert (=> b!940237 m!1157757))

(assert (=> b!940239 m!1157755))

(declare-fun m!1157759 () Bool)

(assert (=> b!940239 m!1157759))

(assert (=> b!940242 m!1157751))

(assert (=> b!940241 m!1157755))

(declare-fun m!1157761 () Bool)

(assert (=> b!940241 m!1157761))

(declare-fun m!1157763 () Bool)

(assert (=> b!940244 m!1157763))

(assert (=> b!940244 m!1157763))

(declare-fun m!1157765 () Bool)

(assert (=> b!940244 m!1157765))

(declare-fun m!1157767 () Bool)

(assert (=> b!940244 m!1157767))

(assert (=> b!940244 m!1157763))

(declare-fun m!1157769 () Bool)

(assert (=> b!940244 m!1157769))

(declare-fun m!1157771 () Bool)

(assert (=> b!940245 m!1157771))

(assert (=> b!940017 d!282401))

(declare-fun bs!238613 () Bool)

(declare-fun d!282403 () Bool)

(assert (= bs!238613 (and d!282403 b!940017)))

(declare-fun lambda!31589 () Int)

(assert (=> bs!238613 (not (= lambda!31589 lambda!31560))))

(declare-fun bs!238614 () Bool)

(assert (= bs!238614 (and d!282403 b!940012)))

(assert (=> bs!238614 (= (and (= (reg!2907 r!15766) lt!342111) (= (Star!2578 (reg!2907 r!15766)) lt!342110)) (= lambda!31589 lambda!31561))))

(declare-fun bs!238615 () Bool)

(assert (= bs!238615 (and d!282403 b!940124)))

(assert (=> bs!238615 (not (= lambda!31589 lambda!31583))))

(assert (=> bs!238613 (= (= (Star!2578 (reg!2907 r!15766)) lt!342115) (= lambda!31589 lambda!31559))))

(assert (=> bs!238614 (not (= lambda!31589 lambda!31562))))

(declare-fun bs!238616 () Bool)

(assert (= bs!238616 (and d!282403 b!940120)))

(assert (=> bs!238616 (not (= lambda!31589 lambda!31584))))

(assert (=> d!282403 true))

(assert (=> d!282403 true))

(declare-fun lambda!31590 () Int)

(assert (=> bs!238613 (= (= (Star!2578 (reg!2907 r!15766)) lt!342115) (= lambda!31590 lambda!31560))))

(assert (=> bs!238614 (not (= lambda!31590 lambda!31561))))

(assert (=> bs!238615 (= (= (Star!2578 (reg!2907 r!15766)) r!15766) (= lambda!31590 lambda!31583))))

(assert (=> bs!238613 (not (= lambda!31590 lambda!31559))))

(assert (=> bs!238614 (= (and (= (reg!2907 r!15766) lt!342111) (= (Star!2578 (reg!2907 r!15766)) lt!342110)) (= lambda!31590 lambda!31562))))

(assert (=> bs!238616 (not (= lambda!31590 lambda!31584))))

(declare-fun bs!238617 () Bool)

(assert (= bs!238617 d!282403))

(assert (=> bs!238617 (not (= lambda!31590 lambda!31589))))

(assert (=> d!282403 true))

(assert (=> d!282403 true))

(assert (=> d!282403 (= (Exists!329 lambda!31589) (Exists!329 lambda!31590))))

(declare-fun lt!342174 () Unit!14775)

(declare-fun choose!5814 (Regex!2578 List!9808) Unit!14775)

(assert (=> d!282403 (= lt!342174 (choose!5814 (reg!2907 r!15766) s!10566))))

(assert (=> d!282403 (validRegex!1047 (reg!2907 r!15766))))

(assert (=> d!282403 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!73 (reg!2907 r!15766) s!10566) lt!342174)))

(declare-fun m!1157773 () Bool)

(assert (=> bs!238617 m!1157773))

(declare-fun m!1157775 () Bool)

(assert (=> bs!238617 m!1157775))

(declare-fun m!1157777 () Bool)

(assert (=> bs!238617 m!1157777))

(assert (=> bs!238617 m!1157621))

(assert (=> b!940017 d!282403))

(declare-fun d!282405 () Bool)

(declare-fun isEmpty!6039 (Option!2169) Bool)

(assert (=> d!282405 (= (isDefined!1811 (findConcatSeparation!275 (reg!2907 r!15766) lt!342115 Nil!9792 s!10566 s!10566)) (not (isEmpty!6039 (findConcatSeparation!275 (reg!2907 r!15766) lt!342115 Nil!9792 s!10566 s!10566))))))

(declare-fun bs!238618 () Bool)

(assert (= bs!238618 d!282405))

(assert (=> bs!238618 m!1157649))

(declare-fun m!1157779 () Bool)

(assert (=> bs!238618 m!1157779))

(assert (=> b!940017 d!282405))

(declare-fun bs!238621 () Bool)

(declare-fun d!282407 () Bool)

(assert (= bs!238621 (and d!282407 b!940017)))

(declare-fun lambda!31593 () Int)

(assert (=> bs!238621 (not (= lambda!31593 lambda!31560))))

(declare-fun bs!238622 () Bool)

(assert (= bs!238622 (and d!282407 b!940012)))

(assert (=> bs!238622 (= (and (= (reg!2907 r!15766) lt!342111) (= lt!342115 lt!342110)) (= lambda!31593 lambda!31561))))

(declare-fun bs!238623 () Bool)

(assert (= bs!238623 (and d!282407 d!282403)))

(assert (=> bs!238623 (not (= lambda!31593 lambda!31590))))

(declare-fun bs!238624 () Bool)

(assert (= bs!238624 (and d!282407 b!940124)))

(assert (=> bs!238624 (not (= lambda!31593 lambda!31583))))

(assert (=> bs!238621 (= lambda!31593 lambda!31559)))

(assert (=> bs!238622 (not (= lambda!31593 lambda!31562))))

(declare-fun bs!238625 () Bool)

(assert (= bs!238625 (and d!282407 b!940120)))

(assert (=> bs!238625 (not (= lambda!31593 lambda!31584))))

(assert (=> bs!238623 (= (= lt!342115 (Star!2578 (reg!2907 r!15766))) (= lambda!31593 lambda!31589))))

(assert (=> d!282407 true))

(assert (=> d!282407 true))

(assert (=> d!282407 true))

(assert (=> d!282407 (= (isDefined!1811 (findConcatSeparation!275 (reg!2907 r!15766) lt!342115 Nil!9792 s!10566 s!10566)) (Exists!329 lambda!31593))))

(declare-fun lt!342180 () Unit!14775)

(declare-fun choose!5815 (Regex!2578 Regex!2578 List!9808) Unit!14775)

(assert (=> d!282407 (= lt!342180 (choose!5815 (reg!2907 r!15766) lt!342115 s!10566))))

(assert (=> d!282407 (validRegex!1047 (reg!2907 r!15766))))

(assert (=> d!282407 (= (lemmaFindConcatSeparationEquivalentToExists!275 (reg!2907 r!15766) lt!342115 s!10566) lt!342180)))

(declare-fun bs!238626 () Bool)

(assert (= bs!238626 d!282407))

(assert (=> bs!238626 m!1157649))

(assert (=> bs!238626 m!1157651))

(declare-fun m!1157807 () Bool)

(assert (=> bs!238626 m!1157807))

(assert (=> bs!238626 m!1157621))

(declare-fun m!1157809 () Bool)

(assert (=> bs!238626 m!1157809))

(assert (=> bs!238626 m!1157649))

(assert (=> b!940017 d!282407))

(declare-fun d!282415 () Bool)

(declare-fun choose!5816 (Int) Bool)

(assert (=> d!282415 (= (Exists!329 lambda!31559) (choose!5816 lambda!31559))))

(declare-fun bs!238627 () Bool)

(assert (= bs!238627 d!282415))

(declare-fun m!1157811 () Bool)

(assert (=> bs!238627 m!1157811))

(assert (=> b!940017 d!282415))

(declare-fun d!282417 () Bool)

(assert (=> d!282417 (= (Exists!329 lambda!31560) (choose!5816 lambda!31560))))

(declare-fun bs!238628 () Bool)

(assert (= bs!238628 d!282417))

(declare-fun m!1157813 () Bool)

(assert (=> bs!238628 m!1157813))

(assert (=> b!940017 d!282417))

(declare-fun b!940309 () Bool)

(declare-fun c!153006 () Bool)

(assert (=> b!940309 (= c!153006 (is-Star!2578 (reg!2907 r!15766)))))

(declare-fun e!610095 () Regex!2578)

(declare-fun e!610094 () Regex!2578)

(assert (=> b!940309 (= e!610095 e!610094)))

(declare-fun bm!58526 () Bool)

(declare-fun call!58532 () Regex!2578)

(declare-fun call!58534 () Regex!2578)

(assert (=> bm!58526 (= call!58532 call!58534)))

(declare-fun b!940310 () Bool)

(declare-fun e!610093 () Regex!2578)

(assert (=> b!940310 (= e!610093 call!58534)))

(declare-fun b!940311 () Bool)

(declare-fun e!610092 () Regex!2578)

(declare-fun call!58533 () Regex!2578)

(assert (=> b!940311 (= e!610092 call!58533)))

(declare-fun b!940312 () Bool)

(declare-fun call!58531 () Regex!2578)

(assert (=> b!940312 (= e!610095 (Union!2578 call!58532 call!58531))))

(declare-fun b!940313 () Bool)

(assert (=> b!940313 (= e!610094 (Star!2578 call!58531))))

(declare-fun b!940314 () Bool)

(declare-fun c!153007 () Bool)

(assert (=> b!940314 (= c!153007 (is-Concat!4411 (reg!2907 r!15766)))))

(declare-fun e!610096 () Regex!2578)

(assert (=> b!940314 (= e!610093 e!610096)))

(declare-fun b!940315 () Bool)

(declare-fun call!58530 () Regex!2578)

(assert (=> b!940315 (= e!610096 (Concat!4411 call!58532 call!58530))))

(declare-fun bm!58527 () Bool)

(assert (=> bm!58527 (= call!58534 call!58533)))

(declare-fun bm!58528 () Bool)

(declare-fun c!153005 () Bool)

(declare-fun c!153009 () Bool)

(assert (=> bm!58528 (= call!58533 (removeUselessConcat!247 (ite c!153005 (regTwo!5668 (reg!2907 r!15766)) (ite (or c!153009 c!153007) (regOne!5668 (reg!2907 r!15766)) (regOne!5669 (reg!2907 r!15766))))))))

(declare-fun bm!58529 () Bool)

(declare-fun c!153008 () Bool)

(assert (=> bm!58529 (= call!58530 (removeUselessConcat!247 (ite c!153007 (regTwo!5668 (reg!2907 r!15766)) (ite c!153008 (regTwo!5669 (reg!2907 r!15766)) (reg!2907 (reg!2907 r!15766))))))))

(declare-fun b!940316 () Bool)

(declare-fun e!610091 () Bool)

(declare-fun lt!342183 () Regex!2578)

(assert (=> b!940316 (= e!610091 (= (nullable!748 lt!342183) (nullable!748 (reg!2907 r!15766))))))

(declare-fun b!940317 () Bool)

(assert (=> b!940317 (= e!610096 e!610095)))

(assert (=> b!940317 (= c!153008 (is-Union!2578 (reg!2907 r!15766)))))

(declare-fun bm!58525 () Bool)

(assert (=> bm!58525 (= call!58531 call!58530)))

(declare-fun d!282419 () Bool)

(assert (=> d!282419 e!610091))

(declare-fun res!427088 () Bool)

(assert (=> d!282419 (=> (not res!427088) (not e!610091))))

(assert (=> d!282419 (= res!427088 (validRegex!1047 lt!342183))))

(assert (=> d!282419 (= lt!342183 e!610092)))

(assert (=> d!282419 (= c!153005 (and (is-Concat!4411 (reg!2907 r!15766)) (is-EmptyExpr!2578 (regOne!5668 (reg!2907 r!15766)))))))

(assert (=> d!282419 (validRegex!1047 (reg!2907 r!15766))))

(assert (=> d!282419 (= (removeUselessConcat!247 (reg!2907 r!15766)) lt!342183)))

(declare-fun b!940318 () Bool)

(assert (=> b!940318 (= e!610094 (reg!2907 r!15766))))

(declare-fun b!940319 () Bool)

(assert (=> b!940319 (= e!610092 e!610093)))

(assert (=> b!940319 (= c!153009 (and (is-Concat!4411 (reg!2907 r!15766)) (is-EmptyExpr!2578 (regTwo!5668 (reg!2907 r!15766)))))))

(assert (= (and d!282419 c!153005) b!940311))

(assert (= (and d!282419 (not c!153005)) b!940319))

(assert (= (and b!940319 c!153009) b!940310))

(assert (= (and b!940319 (not c!153009)) b!940314))

(assert (= (and b!940314 c!153007) b!940315))

(assert (= (and b!940314 (not c!153007)) b!940317))

(assert (= (and b!940317 c!153008) b!940312))

(assert (= (and b!940317 (not c!153008)) b!940309))

(assert (= (and b!940309 c!153006) b!940313))

(assert (= (and b!940309 (not c!153006)) b!940318))

(assert (= (or b!940312 b!940313) bm!58525))

(assert (= (or b!940315 bm!58525) bm!58529))

(assert (= (or b!940315 b!940312) bm!58526))

(assert (= (or b!940310 bm!58526) bm!58527))

(assert (= (or b!940311 bm!58527) bm!58528))

(assert (= (and d!282419 res!427088) b!940316))

(declare-fun m!1157815 () Bool)

(assert (=> bm!58528 m!1157815))

(declare-fun m!1157817 () Bool)

(assert (=> bm!58529 m!1157817))

(declare-fun m!1157819 () Bool)

(assert (=> b!940316 m!1157819))

(assert (=> b!940316 m!1157739))

(declare-fun m!1157821 () Bool)

(assert (=> d!282419 m!1157821))

(assert (=> d!282419 m!1157621))

(assert (=> b!940017 d!282419))

(declare-fun d!282421 () Bool)

(assert (=> d!282421 (= (isEmpty!6037 s!10566) (is-Nil!9792 s!10566))))

(assert (=> b!940012 d!282421))

(declare-fun d!282423 () Bool)

(assert (=> d!282423 (= (Exists!329 lambda!31561) (choose!5816 lambda!31561))))

(declare-fun bs!238629 () Bool)

(assert (= bs!238629 d!282423))

(declare-fun m!1157823 () Bool)

(assert (=> bs!238629 m!1157823))

(assert (=> b!940012 d!282423))

(declare-fun bs!238630 () Bool)

(declare-fun d!282425 () Bool)

(assert (= bs!238630 (and d!282425 d!282407)))

(declare-fun lambda!31594 () Int)

(assert (=> bs!238630 (= (and (= lt!342111 (reg!2907 r!15766)) (= (Star!2578 lt!342111) lt!342115)) (= lambda!31594 lambda!31593))))

(declare-fun bs!238631 () Bool)

(assert (= bs!238631 (and d!282425 b!940017)))

(assert (=> bs!238631 (not (= lambda!31594 lambda!31560))))

(declare-fun bs!238632 () Bool)

(assert (= bs!238632 (and d!282425 b!940012)))

(assert (=> bs!238632 (= (= (Star!2578 lt!342111) lt!342110) (= lambda!31594 lambda!31561))))

(declare-fun bs!238633 () Bool)

(assert (= bs!238633 (and d!282425 d!282403)))

(assert (=> bs!238633 (not (= lambda!31594 lambda!31590))))

(declare-fun bs!238634 () Bool)

(assert (= bs!238634 (and d!282425 b!940124)))

(assert (=> bs!238634 (not (= lambda!31594 lambda!31583))))

(assert (=> bs!238631 (= (and (= lt!342111 (reg!2907 r!15766)) (= (Star!2578 lt!342111) lt!342115)) (= lambda!31594 lambda!31559))))

(assert (=> bs!238632 (not (= lambda!31594 lambda!31562))))

(declare-fun bs!238635 () Bool)

(assert (= bs!238635 (and d!282425 b!940120)))

(assert (=> bs!238635 (not (= lambda!31594 lambda!31584))))

(assert (=> bs!238633 (= (and (= lt!342111 (reg!2907 r!15766)) (= (Star!2578 lt!342111) (Star!2578 (reg!2907 r!15766)))) (= lambda!31594 lambda!31589))))

(assert (=> d!282425 true))

(assert (=> d!282425 true))

(declare-fun lambda!31597 () Int)

(assert (=> bs!238630 (not (= lambda!31597 lambda!31593))))

(assert (=> bs!238631 (= (and (= lt!342111 (reg!2907 r!15766)) (= (Star!2578 lt!342111) lt!342115)) (= lambda!31597 lambda!31560))))

(assert (=> bs!238632 (not (= lambda!31597 lambda!31561))))

(assert (=> bs!238634 (= (and (= lt!342111 (reg!2907 r!15766)) (= (Star!2578 lt!342111) r!15766)) (= lambda!31597 lambda!31583))))

(assert (=> bs!238631 (not (= lambda!31597 lambda!31559))))

(assert (=> bs!238632 (= (= (Star!2578 lt!342111) lt!342110) (= lambda!31597 lambda!31562))))

(assert (=> bs!238635 (not (= lambda!31597 lambda!31584))))

(assert (=> bs!238633 (not (= lambda!31597 lambda!31589))))

(assert (=> bs!238633 (= (and (= lt!342111 (reg!2907 r!15766)) (= (Star!2578 lt!342111) (Star!2578 (reg!2907 r!15766)))) (= lambda!31597 lambda!31590))))

(declare-fun bs!238636 () Bool)

(assert (= bs!238636 d!282425))

(assert (=> bs!238636 (not (= lambda!31597 lambda!31594))))

(assert (=> d!282425 true))

(assert (=> d!282425 true))

(assert (=> d!282425 (= (Exists!329 lambda!31594) (Exists!329 lambda!31597))))

(declare-fun lt!342186 () Unit!14775)

(assert (=> d!282425 (= lt!342186 (choose!5814 lt!342111 s!10566))))

(assert (=> d!282425 (validRegex!1047 lt!342111)))

(assert (=> d!282425 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!73 lt!342111 s!10566) lt!342186)))

(declare-fun m!1157825 () Bool)

(assert (=> bs!238636 m!1157825))

(declare-fun m!1157827 () Bool)

(assert (=> bs!238636 m!1157827))

(declare-fun m!1157829 () Bool)

(assert (=> bs!238636 m!1157829))

(declare-fun m!1157831 () Bool)

(assert (=> bs!238636 m!1157831))

(assert (=> b!940012 d!282425))

(declare-fun d!282427 () Bool)

(assert (=> d!282427 (= (isDefined!1811 (findConcatSeparation!275 lt!342111 lt!342110 Nil!9792 s!10566 s!10566)) (not (isEmpty!6039 (findConcatSeparation!275 lt!342111 lt!342110 Nil!9792 s!10566 s!10566))))))

(declare-fun bs!238637 () Bool)

(assert (= bs!238637 d!282427))

(assert (=> bs!238637 m!1157623))

(declare-fun m!1157833 () Bool)

(assert (=> bs!238637 m!1157833))

(assert (=> b!940012 d!282427))

(declare-fun d!282429 () Bool)

(assert (=> d!282429 (= (Exists!329 lambda!31562) (choose!5816 lambda!31562))))

(declare-fun bs!238638 () Bool)

(assert (= bs!238638 d!282429))

(declare-fun m!1157835 () Bool)

(assert (=> bs!238638 m!1157835))

(assert (=> b!940012 d!282429))

(declare-fun bs!238639 () Bool)

(declare-fun d!282431 () Bool)

(assert (= bs!238639 (and d!282431 d!282407)))

(declare-fun lambda!31598 () Int)

(assert (=> bs!238639 (= (and (= lt!342111 (reg!2907 r!15766)) (= lt!342110 lt!342115)) (= lambda!31598 lambda!31593))))

(declare-fun bs!238640 () Bool)

(assert (= bs!238640 (and d!282431 b!940017)))

(assert (=> bs!238640 (not (= lambda!31598 lambda!31560))))

(declare-fun bs!238641 () Bool)

(assert (= bs!238641 (and d!282431 b!940012)))

(assert (=> bs!238641 (= lambda!31598 lambda!31561)))

(declare-fun bs!238642 () Bool)

(assert (= bs!238642 (and d!282431 b!940124)))

(assert (=> bs!238642 (not (= lambda!31598 lambda!31583))))

(assert (=> bs!238640 (= (and (= lt!342111 (reg!2907 r!15766)) (= lt!342110 lt!342115)) (= lambda!31598 lambda!31559))))

(assert (=> bs!238641 (not (= lambda!31598 lambda!31562))))

(declare-fun bs!238643 () Bool)

(assert (= bs!238643 (and d!282431 b!940120)))

(assert (=> bs!238643 (not (= lambda!31598 lambda!31584))))

(declare-fun bs!238644 () Bool)

(assert (= bs!238644 (and d!282431 d!282403)))

(assert (=> bs!238644 (not (= lambda!31598 lambda!31590))))

(declare-fun bs!238645 () Bool)

(assert (= bs!238645 (and d!282431 d!282425)))

(assert (=> bs!238645 (= (= lt!342110 (Star!2578 lt!342111)) (= lambda!31598 lambda!31594))))

(assert (=> bs!238644 (= (and (= lt!342111 (reg!2907 r!15766)) (= lt!342110 (Star!2578 (reg!2907 r!15766)))) (= lambda!31598 lambda!31589))))

(assert (=> bs!238645 (not (= lambda!31598 lambda!31597))))

(assert (=> d!282431 true))

(assert (=> d!282431 true))

(assert (=> d!282431 true))

(assert (=> d!282431 (= (isDefined!1811 (findConcatSeparation!275 lt!342111 lt!342110 Nil!9792 s!10566 s!10566)) (Exists!329 lambda!31598))))

(declare-fun lt!342187 () Unit!14775)

(assert (=> d!282431 (= lt!342187 (choose!5815 lt!342111 lt!342110 s!10566))))

(assert (=> d!282431 (validRegex!1047 lt!342111)))

(assert (=> d!282431 (= (lemmaFindConcatSeparationEquivalentToExists!275 lt!342111 lt!342110 s!10566) lt!342187)))

(declare-fun bs!238646 () Bool)

(assert (= bs!238646 d!282431))

(assert (=> bs!238646 m!1157623))

(assert (=> bs!238646 m!1157635))

(declare-fun m!1157837 () Bool)

(assert (=> bs!238646 m!1157837))

(assert (=> bs!238646 m!1157831))

(declare-fun m!1157839 () Bool)

(assert (=> bs!238646 m!1157839))

(assert (=> bs!238646 m!1157623))

(assert (=> b!940012 d!282431))

(declare-fun d!282433 () Bool)

(assert (=> d!282433 (= (matchR!1116 lt!342110 s!10566) (matchRSpec!379 lt!342110 s!10566))))

(declare-fun lt!342188 () Unit!14775)

(assert (=> d!282433 (= lt!342188 (choose!5813 lt!342110 s!10566))))

(assert (=> d!282433 (validRegex!1047 lt!342110)))

(assert (=> d!282433 (= (mainMatchTheorem!379 lt!342110 s!10566) lt!342188)))

(declare-fun bs!238647 () Bool)

(assert (= bs!238647 d!282433))

(assert (=> bs!238647 m!1157661))

(assert (=> bs!238647 m!1157639))

(declare-fun m!1157841 () Bool)

(assert (=> bs!238647 m!1157841))

(assert (=> bs!238647 m!1157747))

(assert (=> b!940012 d!282433))

(declare-fun b!940324 () Bool)

(declare-fun res!427097 () Bool)

(declare-fun e!610099 () Bool)

(assert (=> b!940324 (=> (not res!427097) (not e!610099))))

(declare-fun lt!342191 () Option!2169)

(assert (=> b!940324 (= res!427097 (matchR!1116 lt!342110 (_2!6353 (get!3249 lt!342191))))))

(declare-fun b!940325 () Bool)

(declare-fun e!610102 () Option!2169)

(declare-fun e!610101 () Option!2169)

(assert (=> b!940325 (= e!610102 e!610101)))

(declare-fun c!153011 () Bool)

(assert (=> b!940325 (= c!153011 (is-Nil!9792 s!10566))))

(declare-fun b!940326 () Bool)

(assert (=> b!940326 (= e!610099 (= (++!2600 (_1!6353 (get!3249 lt!342191)) (_2!6353 (get!3249 lt!342191))) s!10566))))

(declare-fun d!282435 () Bool)

(declare-fun e!610103 () Bool)

(assert (=> d!282435 e!610103))

(declare-fun res!427095 () Bool)

(assert (=> d!282435 (=> res!427095 e!610103)))

(assert (=> d!282435 (= res!427095 e!610099)))

(declare-fun res!427096 () Bool)

(assert (=> d!282435 (=> (not res!427096) (not e!610099))))

(assert (=> d!282435 (= res!427096 (isDefined!1811 lt!342191))))

(assert (=> d!282435 (= lt!342191 e!610102)))

(declare-fun c!153010 () Bool)

(declare-fun e!610100 () Bool)

(assert (=> d!282435 (= c!153010 e!610100)))

(declare-fun res!427094 () Bool)

(assert (=> d!282435 (=> (not res!427094) (not e!610100))))

(assert (=> d!282435 (= res!427094 (matchR!1116 lt!342111 Nil!9792))))

(assert (=> d!282435 (validRegex!1047 lt!342111)))

(assert (=> d!282435 (= (findConcatSeparation!275 lt!342111 lt!342110 Nil!9792 s!10566 s!10566) lt!342191)))

(declare-fun b!940327 () Bool)

(assert (=> b!940327 (= e!610101 None!2168)))

(declare-fun b!940328 () Bool)

(declare-fun res!427093 () Bool)

(assert (=> b!940328 (=> (not res!427093) (not e!610099))))

(assert (=> b!940328 (= res!427093 (matchR!1116 lt!342111 (_1!6353 (get!3249 lt!342191))))))

(declare-fun b!940329 () Bool)

(assert (=> b!940329 (= e!610103 (not (isDefined!1811 lt!342191)))))

(declare-fun b!940330 () Bool)

(assert (=> b!940330 (= e!610102 (Some!2168 (tuple2!11055 Nil!9792 s!10566)))))

(declare-fun b!940331 () Bool)

(declare-fun lt!342189 () Unit!14775)

(declare-fun lt!342190 () Unit!14775)

(assert (=> b!940331 (= lt!342189 lt!342190)))

(assert (=> b!940331 (= (++!2600 (++!2600 Nil!9792 (Cons!9792 (h!15193 s!10566) Nil!9792)) (t!100854 s!10566)) s!10566)))

(assert (=> b!940331 (= lt!342190 (lemmaMoveElementToOtherListKeepsConcatEq!213 Nil!9792 (h!15193 s!10566) (t!100854 s!10566) s!10566))))

(assert (=> b!940331 (= e!610101 (findConcatSeparation!275 lt!342111 lt!342110 (++!2600 Nil!9792 (Cons!9792 (h!15193 s!10566) Nil!9792)) (t!100854 s!10566) s!10566))))

(declare-fun b!940332 () Bool)

(assert (=> b!940332 (= e!610100 (matchR!1116 lt!342110 s!10566))))

(assert (= (and d!282435 res!427094) b!940332))

(assert (= (and d!282435 c!153010) b!940330))

(assert (= (and d!282435 (not c!153010)) b!940325))

(assert (= (and b!940325 c!153011) b!940327))

(assert (= (and b!940325 (not c!153011)) b!940331))

(assert (= (and d!282435 res!427096) b!940328))

(assert (= (and b!940328 res!427093) b!940324))

(assert (= (and b!940324 res!427097) b!940326))

(assert (= (and d!282435 (not res!427095)) b!940329))

(declare-fun m!1157843 () Bool)

(assert (=> d!282435 m!1157843))

(declare-fun m!1157845 () Bool)

(assert (=> d!282435 m!1157845))

(assert (=> d!282435 m!1157831))

(declare-fun m!1157847 () Bool)

(assert (=> b!940324 m!1157847))

(declare-fun m!1157849 () Bool)

(assert (=> b!940324 m!1157849))

(assert (=> b!940326 m!1157847))

(declare-fun m!1157851 () Bool)

(assert (=> b!940326 m!1157851))

(assert (=> b!940329 m!1157843))

(assert (=> b!940328 m!1157847))

(declare-fun m!1157853 () Bool)

(assert (=> b!940328 m!1157853))

(assert (=> b!940331 m!1157763))

(assert (=> b!940331 m!1157763))

(assert (=> b!940331 m!1157765))

(assert (=> b!940331 m!1157767))

(assert (=> b!940331 m!1157763))

(declare-fun m!1157855 () Bool)

(assert (=> b!940331 m!1157855))

(assert (=> b!940332 m!1157661))

(assert (=> b!940012 d!282435))

(declare-fun bs!238648 () Bool)

(declare-fun b!940347 () Bool)

(assert (= bs!238648 (and b!940347 d!282407)))

(declare-fun lambda!31601 () Int)

(assert (=> bs!238648 (not (= lambda!31601 lambda!31593))))

(declare-fun bs!238649 () Bool)

(assert (= bs!238649 (and b!940347 b!940017)))

(assert (=> bs!238649 (= (and (= (reg!2907 lt!342110) (reg!2907 r!15766)) (= lt!342110 lt!342115)) (= lambda!31601 lambda!31560))))

(declare-fun bs!238650 () Bool)

(assert (= bs!238650 (and b!940347 b!940012)))

(assert (=> bs!238650 (not (= lambda!31601 lambda!31561))))

(declare-fun bs!238651 () Bool)

(assert (= bs!238651 (and b!940347 b!940124)))

(assert (=> bs!238651 (= (and (= (reg!2907 lt!342110) (reg!2907 r!15766)) (= lt!342110 r!15766)) (= lambda!31601 lambda!31583))))

(assert (=> bs!238649 (not (= lambda!31601 lambda!31559))))

(declare-fun bs!238652 () Bool)

(assert (= bs!238652 (and b!940347 d!282431)))

(assert (=> bs!238652 (not (= lambda!31601 lambda!31598))))

(assert (=> bs!238650 (= (= (reg!2907 lt!342110) lt!342111) (= lambda!31601 lambda!31562))))

(declare-fun bs!238653 () Bool)

(assert (= bs!238653 (and b!940347 b!940120)))

(assert (=> bs!238653 (not (= lambda!31601 lambda!31584))))

(declare-fun bs!238654 () Bool)

(assert (= bs!238654 (and b!940347 d!282403)))

(assert (=> bs!238654 (= (and (= (reg!2907 lt!342110) (reg!2907 r!15766)) (= lt!342110 (Star!2578 (reg!2907 r!15766)))) (= lambda!31601 lambda!31590))))

(declare-fun bs!238655 () Bool)

(assert (= bs!238655 (and b!940347 d!282425)))

(assert (=> bs!238655 (not (= lambda!31601 lambda!31594))))

(assert (=> bs!238654 (not (= lambda!31601 lambda!31589))))

(assert (=> bs!238655 (= (and (= (reg!2907 lt!342110) lt!342111) (= lt!342110 (Star!2578 lt!342111))) (= lambda!31601 lambda!31597))))

(assert (=> b!940347 true))

(assert (=> b!940347 true))

(declare-fun bs!238656 () Bool)

(declare-fun b!940343 () Bool)

(assert (= bs!238656 (and b!940343 d!282407)))

(declare-fun lambda!31602 () Int)

(assert (=> bs!238656 (not (= lambda!31602 lambda!31593))))

(declare-fun bs!238657 () Bool)

(assert (= bs!238657 (and b!940343 b!940017)))

(assert (=> bs!238657 (not (= lambda!31602 lambda!31560))))

(declare-fun bs!238658 () Bool)

(assert (= bs!238658 (and b!940343 b!940012)))

(assert (=> bs!238658 (not (= lambda!31602 lambda!31561))))

(declare-fun bs!238659 () Bool)

(assert (= bs!238659 (and b!940343 b!940124)))

(assert (=> bs!238659 (not (= lambda!31602 lambda!31583))))

(assert (=> bs!238657 (not (= lambda!31602 lambda!31559))))

(declare-fun bs!238660 () Bool)

(assert (= bs!238660 (and b!940343 d!282431)))

(assert (=> bs!238660 (not (= lambda!31602 lambda!31598))))

(declare-fun bs!238661 () Bool)

(assert (= bs!238661 (and b!940343 b!940120)))

(assert (=> bs!238661 (= (and (= (regOne!5668 lt!342110) (regOne!5668 r!15766)) (= (regTwo!5668 lt!342110) (regTwo!5668 r!15766))) (= lambda!31602 lambda!31584))))

(declare-fun bs!238662 () Bool)

(assert (= bs!238662 (and b!940343 d!282403)))

(assert (=> bs!238662 (not (= lambda!31602 lambda!31590))))

(declare-fun bs!238663 () Bool)

(assert (= bs!238663 (and b!940343 d!282425)))

(assert (=> bs!238663 (not (= lambda!31602 lambda!31594))))

(assert (=> bs!238658 (not (= lambda!31602 lambda!31562))))

(declare-fun bs!238664 () Bool)

(assert (= bs!238664 (and b!940343 b!940347)))

(assert (=> bs!238664 (not (= lambda!31602 lambda!31601))))

(assert (=> bs!238662 (not (= lambda!31602 lambda!31589))))

(assert (=> bs!238663 (not (= lambda!31602 lambda!31597))))

(assert (=> b!940343 true))

(assert (=> b!940343 true))

(declare-fun b!940339 () Bool)

(declare-fun e!610106 () Bool)

(declare-fun e!610112 () Bool)

(assert (=> b!940339 (= e!610106 e!610112)))

(declare-fun res!427106 () Bool)

(assert (=> b!940339 (= res!427106 (matchRSpec!379 (regOne!5669 lt!342110) s!10566))))

(assert (=> b!940339 (=> res!427106 e!610112)))

(declare-fun bm!58530 () Bool)

(declare-fun call!58535 () Bool)

(declare-fun c!153015 () Bool)

(assert (=> bm!58530 (= call!58535 (Exists!329 (ite c!153015 lambda!31601 lambda!31602)))))

(declare-fun d!282437 () Bool)

(declare-fun c!153012 () Bool)

(assert (=> d!282437 (= c!153012 (is-EmptyExpr!2578 lt!342110))))

(declare-fun e!610109 () Bool)

(assert (=> d!282437 (= (matchRSpec!379 lt!342110 s!10566) e!610109)))

(declare-fun b!940340 () Bool)

(declare-fun c!153014 () Bool)

(assert (=> b!940340 (= c!153014 (is-ElementMatch!2578 lt!342110))))

(declare-fun e!610108 () Bool)

(declare-fun e!610110 () Bool)

(assert (=> b!940340 (= e!610108 e!610110)))

(declare-fun b!940341 () Bool)

(declare-fun c!153013 () Bool)

(assert (=> b!940341 (= c!153013 (is-Union!2578 lt!342110))))

(assert (=> b!940341 (= e!610110 e!610106)))

(declare-fun b!940342 () Bool)

(declare-fun call!58536 () Bool)

(assert (=> b!940342 (= e!610109 call!58536)))

(declare-fun e!610111 () Bool)

(assert (=> b!940343 (= e!610111 call!58535)))

(declare-fun bm!58531 () Bool)

(assert (=> bm!58531 (= call!58536 (isEmpty!6037 s!10566))))

(declare-fun b!940344 () Bool)

(assert (=> b!940344 (= e!610110 (= s!10566 (Cons!9792 (c!152949 lt!342110) Nil!9792)))))

(declare-fun b!940345 () Bool)

(assert (=> b!940345 (= e!610112 (matchRSpec!379 (regTwo!5669 lt!342110) s!10566))))

(declare-fun b!940346 () Bool)

(declare-fun res!427105 () Bool)

(declare-fun e!610107 () Bool)

(assert (=> b!940346 (=> res!427105 e!610107)))

(assert (=> b!940346 (= res!427105 call!58536)))

(assert (=> b!940346 (= e!610111 e!610107)))

(assert (=> b!940347 (= e!610107 call!58535)))

(declare-fun b!940348 () Bool)

(assert (=> b!940348 (= e!610109 e!610108)))

(declare-fun res!427104 () Bool)

(assert (=> b!940348 (= res!427104 (not (is-EmptyLang!2578 lt!342110)))))

(assert (=> b!940348 (=> (not res!427104) (not e!610108))))

(declare-fun b!940349 () Bool)

(assert (=> b!940349 (= e!610106 e!610111)))

(assert (=> b!940349 (= c!153015 (is-Star!2578 lt!342110))))

(assert (= (and d!282437 c!153012) b!940342))

(assert (= (and d!282437 (not c!153012)) b!940348))

(assert (= (and b!940348 res!427104) b!940340))

(assert (= (and b!940340 c!153014) b!940344))

(assert (= (and b!940340 (not c!153014)) b!940341))

(assert (= (and b!940341 c!153013) b!940339))

(assert (= (and b!940341 (not c!153013)) b!940349))

(assert (= (and b!940339 (not res!427106)) b!940345))

(assert (= (and b!940349 c!153015) b!940346))

(assert (= (and b!940349 (not c!153015)) b!940343))

(assert (= (and b!940346 (not res!427105)) b!940347))

(assert (= (or b!940347 b!940343) bm!58530))

(assert (= (or b!940342 b!940346) bm!58531))

(declare-fun m!1157857 () Bool)

(assert (=> b!940339 m!1157857))

(declare-fun m!1157859 () Bool)

(assert (=> bm!58530 m!1157859))

(assert (=> bm!58531 m!1157631))

(declare-fun m!1157861 () Bool)

(assert (=> b!940345 m!1157861))

(assert (=> b!940012 d!282437))

(declare-fun b!940361 () Bool)

(declare-fun e!610115 () Bool)

(declare-fun tp!291029 () Bool)

(declare-fun tp!291028 () Bool)

(assert (=> b!940361 (= e!610115 (and tp!291029 tp!291028))))

(declare-fun b!940360 () Bool)

(assert (=> b!940360 (= e!610115 tp_is_empty!4799)))

(assert (=> b!940013 (= tp!290993 e!610115)))

(declare-fun b!940363 () Bool)

(declare-fun tp!291027 () Bool)

(declare-fun tp!291030 () Bool)

(assert (=> b!940363 (= e!610115 (and tp!291027 tp!291030))))

(declare-fun b!940362 () Bool)

(declare-fun tp!291031 () Bool)

(assert (=> b!940362 (= e!610115 tp!291031)))

(assert (= (and b!940013 (is-ElementMatch!2578 (regOne!5669 r!15766))) b!940360))

(assert (= (and b!940013 (is-Concat!4411 (regOne!5669 r!15766))) b!940361))

(assert (= (and b!940013 (is-Star!2578 (regOne!5669 r!15766))) b!940362))

(assert (= (and b!940013 (is-Union!2578 (regOne!5669 r!15766))) b!940363))

(declare-fun b!940365 () Bool)

(declare-fun e!610116 () Bool)

(declare-fun tp!291034 () Bool)

(declare-fun tp!291033 () Bool)

(assert (=> b!940365 (= e!610116 (and tp!291034 tp!291033))))

(declare-fun b!940364 () Bool)

(assert (=> b!940364 (= e!610116 tp_is_empty!4799)))

(assert (=> b!940013 (= tp!290997 e!610116)))

(declare-fun b!940367 () Bool)

(declare-fun tp!291032 () Bool)

(declare-fun tp!291035 () Bool)

(assert (=> b!940367 (= e!610116 (and tp!291032 tp!291035))))

(declare-fun b!940366 () Bool)

(declare-fun tp!291036 () Bool)

(assert (=> b!940366 (= e!610116 tp!291036)))

(assert (= (and b!940013 (is-ElementMatch!2578 (regTwo!5669 r!15766))) b!940364))

(assert (= (and b!940013 (is-Concat!4411 (regTwo!5669 r!15766))) b!940365))

(assert (= (and b!940013 (is-Star!2578 (regTwo!5669 r!15766))) b!940366))

(assert (= (and b!940013 (is-Union!2578 (regTwo!5669 r!15766))) b!940367))

(declare-fun b!940369 () Bool)

(declare-fun e!610117 () Bool)

(declare-fun tp!291039 () Bool)

(declare-fun tp!291038 () Bool)

(assert (=> b!940369 (= e!610117 (and tp!291039 tp!291038))))

(declare-fun b!940368 () Bool)

(assert (=> b!940368 (= e!610117 tp_is_empty!4799)))

(assert (=> b!940008 (= tp!290994 e!610117)))

(declare-fun b!940371 () Bool)

(declare-fun tp!291037 () Bool)

(declare-fun tp!291040 () Bool)

(assert (=> b!940371 (= e!610117 (and tp!291037 tp!291040))))

(declare-fun b!940370 () Bool)

(declare-fun tp!291041 () Bool)

(assert (=> b!940370 (= e!610117 tp!291041)))

(assert (= (and b!940008 (is-ElementMatch!2578 (reg!2907 r!15766))) b!940368))

(assert (= (and b!940008 (is-Concat!4411 (reg!2907 r!15766))) b!940369))

(assert (= (and b!940008 (is-Star!2578 (reg!2907 r!15766))) b!940370))

(assert (= (and b!940008 (is-Union!2578 (reg!2907 r!15766))) b!940371))

(declare-fun b!940376 () Bool)

(declare-fun e!610120 () Bool)

(declare-fun tp!291044 () Bool)

(assert (=> b!940376 (= e!610120 (and tp_is_empty!4799 tp!291044))))

(assert (=> b!940015 (= tp!290998 e!610120)))

(assert (= (and b!940015 (is-Cons!9792 (t!100854 s!10566))) b!940376))

(declare-fun b!940378 () Bool)

(declare-fun e!610121 () Bool)

(declare-fun tp!291047 () Bool)

(declare-fun tp!291046 () Bool)

(assert (=> b!940378 (= e!610121 (and tp!291047 tp!291046))))

(declare-fun b!940377 () Bool)

(assert (=> b!940377 (= e!610121 tp_is_empty!4799)))

(assert (=> b!940011 (= tp!290995 e!610121)))

(declare-fun b!940380 () Bool)

(declare-fun tp!291045 () Bool)

(declare-fun tp!291048 () Bool)

(assert (=> b!940380 (= e!610121 (and tp!291045 tp!291048))))

(declare-fun b!940379 () Bool)

(declare-fun tp!291049 () Bool)

(assert (=> b!940379 (= e!610121 tp!291049)))

(assert (= (and b!940011 (is-ElementMatch!2578 (regOne!5668 r!15766))) b!940377))

(assert (= (and b!940011 (is-Concat!4411 (regOne!5668 r!15766))) b!940378))

(assert (= (and b!940011 (is-Star!2578 (regOne!5668 r!15766))) b!940379))

(assert (= (and b!940011 (is-Union!2578 (regOne!5668 r!15766))) b!940380))

(declare-fun b!940382 () Bool)

(declare-fun e!610122 () Bool)

(declare-fun tp!291052 () Bool)

(declare-fun tp!291051 () Bool)

(assert (=> b!940382 (= e!610122 (and tp!291052 tp!291051))))

(declare-fun b!940381 () Bool)

(assert (=> b!940381 (= e!610122 tp_is_empty!4799)))

(assert (=> b!940011 (= tp!290996 e!610122)))

(declare-fun b!940384 () Bool)

(declare-fun tp!291050 () Bool)

(declare-fun tp!291053 () Bool)

(assert (=> b!940384 (= e!610122 (and tp!291050 tp!291053))))

(declare-fun b!940383 () Bool)

(declare-fun tp!291054 () Bool)

(assert (=> b!940383 (= e!610122 tp!291054)))

(assert (= (and b!940011 (is-ElementMatch!2578 (regTwo!5668 r!15766))) b!940381))

(assert (= (and b!940011 (is-Concat!4411 (regTwo!5668 r!15766))) b!940382))

(assert (= (and b!940011 (is-Star!2578 (regTwo!5668 r!15766))) b!940383))

(assert (= (and b!940011 (is-Union!2578 (regTwo!5668 r!15766))) b!940384))

(push 1)

(assert (not d!282387))

(assert (not b!940370))

(assert (not d!282435))

(assert (not d!282419))

(assert (not b!940212))

(assert (not d!282401))

(assert (not d!282423))

(assert (not b!940331))

(assert (not bm!58512))

(assert (not bm!58528))

(assert (not b!940361))

(assert (not b!940201))

(assert (not b!940245))

(assert (not b!940380))

(assert (not d!282429))

(assert (not b!940205))

(assert (not bm!58529))

(assert (not b!940239))

(assert (not b!940329))

(assert (not d!282407))

(assert (not b!940326))

(assert (not d!282389))

(assert (not d!282399))

(assert (not bm!58513))

(assert (not b!940376))

(assert (not bm!58509))

(assert (not bm!58531))

(assert (not b!940382))

(assert (not d!282431))

(assert (not bm!58501))

(assert (not d!282403))

(assert (not bm!58498))

(assert (not b!940155))

(assert (not d!282405))

(assert (not b!940159))

(assert (not b!940237))

(assert (not d!282415))

(assert (not b!940371))

(assert (not d!282417))

(assert (not b!940210))

(assert (not b!940209))

(assert (not b!940369))

(assert (not b!940379))

(assert (not b!940366))

(assert (not b!940384))

(assert (not b!940332))

(assert (not b!940192))

(assert (not b!940241))

(assert (not b!940378))

(assert (not b!940116))

(assert (not b!940324))

(assert (not b!940383))

(assert (not b!940363))

(assert (not bm!58530))

(assert (not b!940122))

(assert (not bm!58510))

(assert (not b!940160))

(assert (not b!940328))

(assert (not d!282427))

(assert (not b!940339))

(assert (not b!940362))

(assert (not b!940345))

(assert (not d!282425))

(assert (not b!940365))

(assert (not bm!58514))

(assert (not d!282433))

(assert tp_is_empty!4799)

(assert (not b!940167))

(assert (not b!940217))

(assert (not b!940166))

(assert (not b!940162))

(assert (not b!940216))

(assert (not b!940244))

(assert (not b!940367))

(assert (not bm!58497))

(assert (not b!940316))

(assert (not b!940242))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

