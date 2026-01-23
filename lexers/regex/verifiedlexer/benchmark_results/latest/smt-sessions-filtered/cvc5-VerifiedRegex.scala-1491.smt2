; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!79404 () Bool)

(assert start!79404)

(declare-fun b!878586 () Bool)

(assert (=> b!878586 true))

(assert (=> b!878586 true))

(declare-fun lambda!26704 () Int)

(declare-fun lambda!26703 () Int)

(assert (=> b!878586 (not (= lambda!26704 lambda!26703))))

(assert (=> b!878586 true))

(assert (=> b!878586 true))

(declare-fun res!399505 () Bool)

(declare-fun e!577095 () Bool)

(assert (=> start!79404 (=> (not res!399505) (not e!577095))))

(declare-datatypes ((C!5050 0))(
  ( (C!5051 (val!2773 Int)) )
))
(declare-datatypes ((Regex!2240 0))(
  ( (ElementMatch!2240 (c!142051 C!5050)) (Concat!4073 (regOne!4992 Regex!2240) (regTwo!4992 Regex!2240)) (EmptyExpr!2240) (Star!2240 (reg!2569 Regex!2240)) (EmptyLang!2240) (Union!2240 (regOne!4993 Regex!2240) (regTwo!4993 Regex!2240)) )
))
(declare-fun r!15766 () Regex!2240)

(declare-fun validRegex!709 (Regex!2240) Bool)

(assert (=> start!79404 (= res!399505 (validRegex!709 r!15766))))

(assert (=> start!79404 e!577095))

(declare-fun e!577096 () Bool)

(assert (=> start!79404 e!577096))

(declare-fun e!577094 () Bool)

(assert (=> start!79404 e!577094))

(declare-fun b!878582 () Bool)

(declare-fun e!577097 () Bool)

(assert (=> b!878582 (= e!577095 (not e!577097))))

(declare-fun res!399507 () Bool)

(assert (=> b!878582 (=> res!399507 e!577097)))

(declare-fun lt!330203 () Bool)

(assert (=> b!878582 (= res!399507 (or (not lt!330203) (and (is-Concat!4073 r!15766) (is-EmptyExpr!2240 (regOne!4992 r!15766))) (not (is-Concat!4073 r!15766)) (not (is-EmptyExpr!2240 (regTwo!4992 r!15766)))))))

(declare-datatypes ((List!9470 0))(
  ( (Nil!9454) (Cons!9454 (h!14855 C!5050) (t!100516 List!9470)) )
))
(declare-fun s!10566 () List!9470)

(declare-fun matchRSpec!41 (Regex!2240 List!9470) Bool)

(assert (=> b!878582 (= lt!330203 (matchRSpec!41 r!15766 s!10566))))

(declare-fun matchR!778 (Regex!2240 List!9470) Bool)

(assert (=> b!878582 (= lt!330203 (matchR!778 r!15766 s!10566))))

(declare-datatypes ((Unit!14059 0))(
  ( (Unit!14060) )
))
(declare-fun lt!330206 () Unit!14059)

(declare-fun mainMatchTheorem!41 (Regex!2240 List!9470) Unit!14059)

(assert (=> b!878582 (= lt!330206 (mainMatchTheorem!41 r!15766 s!10566))))

(declare-fun b!878583 () Bool)

(declare-fun tp!277693 () Bool)

(declare-fun tp!277694 () Bool)

(assert (=> b!878583 (= e!577096 (and tp!277693 tp!277694))))

(declare-fun b!878584 () Bool)

(declare-fun tp_is_empty!4123 () Bool)

(assert (=> b!878584 (= e!577096 tp_is_empty!4123)))

(declare-fun b!878585 () Bool)

(declare-fun tp!277692 () Bool)

(assert (=> b!878585 (= e!577094 (and tp_is_empty!4123 tp!277692))))

(declare-fun lt!330202 () Bool)

(assert (=> b!878586 (= e!577097 lt!330202)))

(declare-fun Exists!37 (Int) Bool)

(assert (=> b!878586 (= (Exists!37 lambda!26703) (Exists!37 lambda!26704))))

(declare-fun lt!330204 () Unit!14059)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!29 (Regex!2240 Regex!2240 List!9470) Unit!14059)

(assert (=> b!878586 (= lt!330204 (lemmaExistCutMatchRandMatchRSpecEquivalent!29 (regOne!4992 r!15766) EmptyExpr!2240 s!10566))))

(assert (=> b!878586 (= lt!330202 (Exists!37 lambda!26703))))

(declare-datatypes ((tuple2!10570 0))(
  ( (tuple2!10571 (_1!6111 List!9470) (_2!6111 List!9470)) )
))
(declare-datatypes ((Option!1927 0))(
  ( (None!1926) (Some!1926 (v!19343 tuple2!10570)) )
))
(declare-fun isDefined!1569 (Option!1927) Bool)

(declare-fun findConcatSeparation!33 (Regex!2240 Regex!2240 List!9470 List!9470 List!9470) Option!1927)

(assert (=> b!878586 (= lt!330202 (isDefined!1569 (findConcatSeparation!33 (regOne!4992 r!15766) EmptyExpr!2240 Nil!9454 s!10566 s!10566)))))

(declare-fun lt!330205 () Unit!14059)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!33 (Regex!2240 Regex!2240 List!9470) Unit!14059)

(assert (=> b!878586 (= lt!330205 (lemmaFindConcatSeparationEquivalentToExists!33 (regOne!4992 r!15766) EmptyExpr!2240 s!10566))))

(declare-fun b!878587 () Bool)

(declare-fun tp!277691 () Bool)

(assert (=> b!878587 (= e!577096 tp!277691)))

(declare-fun b!878588 () Bool)

(declare-fun tp!277689 () Bool)

(declare-fun tp!277690 () Bool)

(assert (=> b!878588 (= e!577096 (and tp!277689 tp!277690))))

(declare-fun b!878589 () Bool)

(declare-fun res!399506 () Bool)

(assert (=> b!878589 (=> res!399506 e!577097)))

(declare-fun isEmpty!5646 (List!9470) Bool)

(assert (=> b!878589 (= res!399506 (isEmpty!5646 s!10566))))

(assert (= (and start!79404 res!399505) b!878582))

(assert (= (and b!878582 (not res!399507)) b!878589))

(assert (= (and b!878589 (not res!399506)) b!878586))

(assert (= (and start!79404 (is-ElementMatch!2240 r!15766)) b!878584))

(assert (= (and start!79404 (is-Concat!4073 r!15766)) b!878583))

(assert (= (and start!79404 (is-Star!2240 r!15766)) b!878587))

(assert (= (and start!79404 (is-Union!2240 r!15766)) b!878588))

(assert (= (and start!79404 (is-Cons!9454 s!10566)) b!878585))

(declare-fun m!1128175 () Bool)

(assert (=> start!79404 m!1128175))

(declare-fun m!1128177 () Bool)

(assert (=> b!878582 m!1128177))

(declare-fun m!1128179 () Bool)

(assert (=> b!878582 m!1128179))

(declare-fun m!1128181 () Bool)

(assert (=> b!878582 m!1128181))

(declare-fun m!1128183 () Bool)

(assert (=> b!878586 m!1128183))

(declare-fun m!1128185 () Bool)

(assert (=> b!878586 m!1128185))

(declare-fun m!1128187 () Bool)

(assert (=> b!878586 m!1128187))

(declare-fun m!1128189 () Bool)

(assert (=> b!878586 m!1128189))

(assert (=> b!878586 m!1128187))

(assert (=> b!878586 m!1128185))

(declare-fun m!1128191 () Bool)

(assert (=> b!878586 m!1128191))

(declare-fun m!1128193 () Bool)

(assert (=> b!878586 m!1128193))

(declare-fun m!1128195 () Bool)

(assert (=> b!878589 m!1128195))

(push 1)

(assert (not b!878586))

(assert tp_is_empty!4123)

(assert (not b!878588))

(assert (not b!878585))

(assert (not b!878583))

(assert (not start!79404))

(assert (not b!878587))

(assert (not b!878589))

(assert (not b!878582))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!276114 () Bool)

(declare-fun isEmpty!5648 (Option!1927) Bool)

(assert (=> d!276114 (= (isDefined!1569 (findConcatSeparation!33 (regOne!4992 r!15766) EmptyExpr!2240 Nil!9454 s!10566 s!10566)) (not (isEmpty!5648 (findConcatSeparation!33 (regOne!4992 r!15766) EmptyExpr!2240 Nil!9454 s!10566 s!10566))))))

(declare-fun bs!234237 () Bool)

(assert (= bs!234237 d!276114))

(assert (=> bs!234237 m!1128185))

(declare-fun m!1128219 () Bool)

(assert (=> bs!234237 m!1128219))

(assert (=> b!878586 d!276114))

(declare-fun b!878679 () Bool)

(declare-fun e!577147 () Bool)

(declare-fun lt!330230 () Option!1927)

(declare-fun ++!2459 (List!9470 List!9470) List!9470)

(declare-fun get!2918 (Option!1927) tuple2!10570)

(assert (=> b!878679 (= e!577147 (= (++!2459 (_1!6111 (get!2918 lt!330230)) (_2!6111 (get!2918 lt!330230))) s!10566))))

(declare-fun b!878680 () Bool)

(declare-fun e!577151 () Option!1927)

(declare-fun e!577150 () Option!1927)

(assert (=> b!878680 (= e!577151 e!577150)))

(declare-fun c!142063 () Bool)

(assert (=> b!878680 (= c!142063 (is-Nil!9454 s!10566))))

(declare-fun b!878681 () Bool)

(declare-fun res!399558 () Bool)

(assert (=> b!878681 (=> (not res!399558) (not e!577147))))

(assert (=> b!878681 (= res!399558 (matchR!778 EmptyExpr!2240 (_2!6111 (get!2918 lt!330230))))))

(declare-fun b!878682 () Bool)

(declare-fun res!399557 () Bool)

(assert (=> b!878682 (=> (not res!399557) (not e!577147))))

(assert (=> b!878682 (= res!399557 (matchR!778 (regOne!4992 r!15766) (_1!6111 (get!2918 lt!330230))))))

(declare-fun b!878684 () Bool)

(declare-fun e!577149 () Bool)

(assert (=> b!878684 (= e!577149 (not (isDefined!1569 lt!330230)))))

(declare-fun b!878685 () Bool)

(assert (=> b!878685 (= e!577151 (Some!1926 (tuple2!10571 Nil!9454 s!10566)))))

(declare-fun b!878686 () Bool)

(declare-fun lt!330228 () Unit!14059)

(declare-fun lt!330229 () Unit!14059)

(assert (=> b!878686 (= lt!330228 lt!330229)))

(assert (=> b!878686 (= (++!2459 (++!2459 Nil!9454 (Cons!9454 (h!14855 s!10566) Nil!9454)) (t!100516 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!89 (List!9470 C!5050 List!9470 List!9470) Unit!14059)

(assert (=> b!878686 (= lt!330229 (lemmaMoveElementToOtherListKeepsConcatEq!89 Nil!9454 (h!14855 s!10566) (t!100516 s!10566) s!10566))))

(assert (=> b!878686 (= e!577150 (findConcatSeparation!33 (regOne!4992 r!15766) EmptyExpr!2240 (++!2459 Nil!9454 (Cons!9454 (h!14855 s!10566) Nil!9454)) (t!100516 s!10566) s!10566))))

(declare-fun b!878687 () Bool)

(declare-fun e!577148 () Bool)

(assert (=> b!878687 (= e!577148 (matchR!778 EmptyExpr!2240 s!10566))))

(declare-fun b!878683 () Bool)

(assert (=> b!878683 (= e!577150 None!1926)))

(declare-fun d!276116 () Bool)

(assert (=> d!276116 e!577149))

(declare-fun res!399554 () Bool)

(assert (=> d!276116 (=> res!399554 e!577149)))

(assert (=> d!276116 (= res!399554 e!577147)))

(declare-fun res!399555 () Bool)

(assert (=> d!276116 (=> (not res!399555) (not e!577147))))

(assert (=> d!276116 (= res!399555 (isDefined!1569 lt!330230))))

(assert (=> d!276116 (= lt!330230 e!577151)))

(declare-fun c!142064 () Bool)

(assert (=> d!276116 (= c!142064 e!577148)))

(declare-fun res!399556 () Bool)

(assert (=> d!276116 (=> (not res!399556) (not e!577148))))

(assert (=> d!276116 (= res!399556 (matchR!778 (regOne!4992 r!15766) Nil!9454))))

(assert (=> d!276116 (validRegex!709 (regOne!4992 r!15766))))

(assert (=> d!276116 (= (findConcatSeparation!33 (regOne!4992 r!15766) EmptyExpr!2240 Nil!9454 s!10566 s!10566) lt!330230)))

(assert (= (and d!276116 res!399556) b!878687))

(assert (= (and d!276116 c!142064) b!878685))

(assert (= (and d!276116 (not c!142064)) b!878680))

(assert (= (and b!878680 c!142063) b!878683))

(assert (= (and b!878680 (not c!142063)) b!878686))

(assert (= (and d!276116 res!399555) b!878682))

(assert (= (and b!878682 res!399557) b!878681))

(assert (= (and b!878681 res!399558) b!878679))

(assert (= (and d!276116 (not res!399554)) b!878684))

(declare-fun m!1128227 () Bool)

(assert (=> b!878682 m!1128227))

(declare-fun m!1128229 () Bool)

(assert (=> b!878682 m!1128229))

(assert (=> b!878681 m!1128227))

(declare-fun m!1128231 () Bool)

(assert (=> b!878681 m!1128231))

(declare-fun m!1128233 () Bool)

(assert (=> b!878684 m!1128233))

(declare-fun m!1128235 () Bool)

(assert (=> b!878687 m!1128235))

(assert (=> b!878679 m!1128227))

(declare-fun m!1128237 () Bool)

(assert (=> b!878679 m!1128237))

(declare-fun m!1128239 () Bool)

(assert (=> b!878686 m!1128239))

(assert (=> b!878686 m!1128239))

(declare-fun m!1128241 () Bool)

(assert (=> b!878686 m!1128241))

(declare-fun m!1128243 () Bool)

(assert (=> b!878686 m!1128243))

(assert (=> b!878686 m!1128239))

(declare-fun m!1128245 () Bool)

(assert (=> b!878686 m!1128245))

(assert (=> d!276116 m!1128233))

(declare-fun m!1128247 () Bool)

(assert (=> d!276116 m!1128247))

(declare-fun m!1128249 () Bool)

(assert (=> d!276116 m!1128249))

(assert (=> b!878586 d!276116))

(declare-fun d!276120 () Bool)

(declare-fun choose!5183 (Int) Bool)

(assert (=> d!276120 (= (Exists!37 lambda!26703) (choose!5183 lambda!26703))))

(declare-fun bs!234238 () Bool)

(assert (= bs!234238 d!276120))

(declare-fun m!1128251 () Bool)

(assert (=> bs!234238 m!1128251))

(assert (=> b!878586 d!276120))

(declare-fun bs!234239 () Bool)

(declare-fun d!276122 () Bool)

(assert (= bs!234239 (and d!276122 b!878586)))

(declare-fun lambda!26715 () Int)

(assert (=> bs!234239 (= lambda!26715 lambda!26703)))

(assert (=> bs!234239 (not (= lambda!26715 lambda!26704))))

(assert (=> d!276122 true))

(assert (=> d!276122 true))

(assert (=> d!276122 true))

(assert (=> d!276122 (= (isDefined!1569 (findConcatSeparation!33 (regOne!4992 r!15766) EmptyExpr!2240 Nil!9454 s!10566 s!10566)) (Exists!37 lambda!26715))))

(declare-fun lt!330233 () Unit!14059)

(declare-fun choose!5184 (Regex!2240 Regex!2240 List!9470) Unit!14059)

(assert (=> d!276122 (= lt!330233 (choose!5184 (regOne!4992 r!15766) EmptyExpr!2240 s!10566))))

(assert (=> d!276122 (validRegex!709 (regOne!4992 r!15766))))

(assert (=> d!276122 (= (lemmaFindConcatSeparationEquivalentToExists!33 (regOne!4992 r!15766) EmptyExpr!2240 s!10566) lt!330233)))

(declare-fun bs!234240 () Bool)

(assert (= bs!234240 d!276122))

(declare-fun m!1128253 () Bool)

(assert (=> bs!234240 m!1128253))

(assert (=> bs!234240 m!1128185))

(assert (=> bs!234240 m!1128191))

(assert (=> bs!234240 m!1128185))

(declare-fun m!1128255 () Bool)

(assert (=> bs!234240 m!1128255))

(assert (=> bs!234240 m!1128249))

(assert (=> b!878586 d!276122))

(declare-fun bs!234241 () Bool)

(declare-fun d!276124 () Bool)

(assert (= bs!234241 (and d!276124 b!878586)))

(declare-fun lambda!26720 () Int)

(assert (=> bs!234241 (= lambda!26720 lambda!26703)))

(assert (=> bs!234241 (not (= lambda!26720 lambda!26704))))

(declare-fun bs!234242 () Bool)

(assert (= bs!234242 (and d!276124 d!276122)))

(assert (=> bs!234242 (= lambda!26720 lambda!26715)))

(assert (=> d!276124 true))

(assert (=> d!276124 true))

(assert (=> d!276124 true))

(declare-fun lambda!26721 () Int)

(assert (=> bs!234241 (not (= lambda!26721 lambda!26703))))

(assert (=> bs!234241 (= lambda!26721 lambda!26704)))

(assert (=> bs!234242 (not (= lambda!26721 lambda!26715))))

(declare-fun bs!234243 () Bool)

(assert (= bs!234243 d!276124))

(assert (=> bs!234243 (not (= lambda!26721 lambda!26720))))

(assert (=> d!276124 true))

(assert (=> d!276124 true))

(assert (=> d!276124 true))

(assert (=> d!276124 (= (Exists!37 lambda!26720) (Exists!37 lambda!26721))))

(declare-fun lt!330236 () Unit!14059)

(declare-fun choose!5185 (Regex!2240 Regex!2240 List!9470) Unit!14059)

(assert (=> d!276124 (= lt!330236 (choose!5185 (regOne!4992 r!15766) EmptyExpr!2240 s!10566))))

(assert (=> d!276124 (validRegex!709 (regOne!4992 r!15766))))

(assert (=> d!276124 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!29 (regOne!4992 r!15766) EmptyExpr!2240 s!10566) lt!330236)))

(declare-fun m!1128257 () Bool)

(assert (=> bs!234243 m!1128257))

(declare-fun m!1128259 () Bool)

(assert (=> bs!234243 m!1128259))

(declare-fun m!1128261 () Bool)

(assert (=> bs!234243 m!1128261))

(assert (=> bs!234243 m!1128249))

(assert (=> b!878586 d!276124))

(declare-fun d!276126 () Bool)

(assert (=> d!276126 (= (Exists!37 lambda!26704) (choose!5183 lambda!26704))))

(declare-fun bs!234244 () Bool)

(assert (= bs!234244 d!276126))

(declare-fun m!1128263 () Bool)

(assert (=> bs!234244 m!1128263))

(assert (=> b!878586 d!276126))

(declare-fun d!276128 () Bool)

(assert (=> d!276128 (= (isEmpty!5646 s!10566) (is-Nil!9454 s!10566))))

(assert (=> b!878589 d!276128))

(declare-fun d!276130 () Bool)

(declare-fun res!399595 () Bool)

(declare-fun e!577186 () Bool)

(assert (=> d!276130 (=> res!399595 e!577186)))

(assert (=> d!276130 (= res!399595 (is-ElementMatch!2240 r!15766))))

(assert (=> d!276130 (= (validRegex!709 r!15766) e!577186)))

(declare-fun b!878736 () Bool)

(declare-fun e!577185 () Bool)

(assert (=> b!878736 (= e!577186 e!577185)))

(declare-fun c!142074 () Bool)

(assert (=> b!878736 (= c!142074 (is-Star!2240 r!15766))))

(declare-fun b!878737 () Bool)

(declare-fun e!577182 () Bool)

(declare-fun e!577188 () Bool)

(assert (=> b!878737 (= e!577182 e!577188)))

(declare-fun res!399594 () Bool)

(assert (=> b!878737 (=> (not res!399594) (not e!577188))))

(declare-fun call!51212 () Bool)

(assert (=> b!878737 (= res!399594 call!51212)))

(declare-fun b!878738 () Bool)

(declare-fun e!577187 () Bool)

(assert (=> b!878738 (= e!577185 e!577187)))

(declare-fun res!399591 () Bool)

(declare-fun nullable!564 (Regex!2240) Bool)

(assert (=> b!878738 (= res!399591 (not (nullable!564 (reg!2569 r!15766))))))

(assert (=> b!878738 (=> (not res!399591) (not e!577187))))

(declare-fun bm!51206 () Bool)

(declare-fun call!51211 () Bool)

(assert (=> bm!51206 (= call!51212 call!51211)))

(declare-fun bm!51207 () Bool)

(declare-fun call!51213 () Bool)

(declare-fun c!142073 () Bool)

(assert (=> bm!51207 (= call!51213 (validRegex!709 (ite c!142073 (regTwo!4993 r!15766) (regTwo!4992 r!15766))))))

(declare-fun b!878739 () Bool)

(assert (=> b!878739 (= e!577187 call!51211)))

(declare-fun b!878740 () Bool)

(assert (=> b!878740 (= e!577188 call!51213)))

(declare-fun b!878741 () Bool)

(declare-fun res!399593 () Bool)

(assert (=> b!878741 (=> res!399593 e!577182)))

(assert (=> b!878741 (= res!399593 (not (is-Concat!4073 r!15766)))))

(declare-fun e!577184 () Bool)

(assert (=> b!878741 (= e!577184 e!577182)))

(declare-fun b!878742 () Bool)

(assert (=> b!878742 (= e!577185 e!577184)))

(assert (=> b!878742 (= c!142073 (is-Union!2240 r!15766))))

(declare-fun b!878743 () Bool)

(declare-fun res!399592 () Bool)

(declare-fun e!577183 () Bool)

(assert (=> b!878743 (=> (not res!399592) (not e!577183))))

(assert (=> b!878743 (= res!399592 call!51212)))

(assert (=> b!878743 (= e!577184 e!577183)))

(declare-fun b!878744 () Bool)

(assert (=> b!878744 (= e!577183 call!51213)))

(declare-fun bm!51208 () Bool)

(assert (=> bm!51208 (= call!51211 (validRegex!709 (ite c!142074 (reg!2569 r!15766) (ite c!142073 (regOne!4993 r!15766) (regOne!4992 r!15766)))))))

(assert (= (and d!276130 (not res!399595)) b!878736))

(assert (= (and b!878736 c!142074) b!878738))

(assert (= (and b!878736 (not c!142074)) b!878742))

(assert (= (and b!878738 res!399591) b!878739))

(assert (= (and b!878742 c!142073) b!878743))

(assert (= (and b!878742 (not c!142073)) b!878741))

(assert (= (and b!878743 res!399592) b!878744))

(assert (= (and b!878741 (not res!399593)) b!878737))

(assert (= (and b!878737 res!399594) b!878740))

(assert (= (or b!878744 b!878740) bm!51207))

(assert (= (or b!878743 b!878737) bm!51206))

(assert (= (or b!878739 bm!51206) bm!51208))

(declare-fun m!1128265 () Bool)

(assert (=> b!878738 m!1128265))

(declare-fun m!1128267 () Bool)

(assert (=> bm!51207 m!1128267))

(declare-fun m!1128269 () Bool)

(assert (=> bm!51208 m!1128269))

(assert (=> start!79404 d!276130))

(declare-fun bs!234245 () Bool)

(declare-fun b!878789 () Bool)

(assert (= bs!234245 (and b!878789 d!276124)))

(declare-fun lambda!26726 () Int)

(assert (=> bs!234245 (not (= lambda!26726 lambda!26720))))

(declare-fun bs!234246 () Bool)

(assert (= bs!234246 (and b!878789 d!276122)))

(assert (=> bs!234246 (not (= lambda!26726 lambda!26715))))

(declare-fun bs!234247 () Bool)

(assert (= bs!234247 (and b!878789 b!878586)))

(assert (=> bs!234247 (not (= lambda!26726 lambda!26704))))

(assert (=> bs!234245 (not (= lambda!26726 lambda!26721))))

(assert (=> bs!234247 (not (= lambda!26726 lambda!26703))))

(assert (=> b!878789 true))

(assert (=> b!878789 true))

(declare-fun bs!234248 () Bool)

(declare-fun b!878794 () Bool)

(assert (= bs!234248 (and b!878794 d!276124)))

(declare-fun lambda!26727 () Int)

(assert (=> bs!234248 (not (= lambda!26727 lambda!26720))))

(declare-fun bs!234249 () Bool)

(assert (= bs!234249 (and b!878794 d!276122)))

(assert (=> bs!234249 (not (= lambda!26727 lambda!26715))))

(declare-fun bs!234250 () Bool)

(assert (= bs!234250 (and b!878794 b!878789)))

(assert (=> bs!234250 (not (= lambda!26727 lambda!26726))))

(declare-fun bs!234251 () Bool)

(assert (= bs!234251 (and b!878794 b!878586)))

(assert (=> bs!234251 (= (= (regTwo!4992 r!15766) EmptyExpr!2240) (= lambda!26727 lambda!26704))))

(assert (=> bs!234248 (= (= (regTwo!4992 r!15766) EmptyExpr!2240) (= lambda!26727 lambda!26721))))

(assert (=> bs!234251 (not (= lambda!26727 lambda!26703))))

(assert (=> b!878794 true))

(assert (=> b!878794 true))

(declare-fun d!276132 () Bool)

(declare-fun c!142088 () Bool)

(assert (=> d!276132 (= c!142088 (is-EmptyExpr!2240 r!15766))))

(declare-fun e!577216 () Bool)

(assert (=> d!276132 (= (matchRSpec!41 r!15766 s!10566) e!577216)))

(declare-fun b!878786 () Bool)

(declare-fun res!399617 () Bool)

(declare-fun e!577217 () Bool)

(assert (=> b!878786 (=> res!399617 e!577217)))

(declare-fun call!51218 () Bool)

(assert (=> b!878786 (= res!399617 call!51218)))

(declare-fun e!577214 () Bool)

(assert (=> b!878786 (= e!577214 e!577217)))

(declare-fun b!878787 () Bool)

(declare-fun e!577213 () Bool)

(assert (=> b!878787 (= e!577213 e!577214)))

(declare-fun c!142085 () Bool)

(assert (=> b!878787 (= c!142085 (is-Star!2240 r!15766))))

(declare-fun b!878788 () Bool)

(declare-fun e!577218 () Bool)

(assert (=> b!878788 (= e!577218 (= s!10566 (Cons!9454 (c!142051 r!15766) Nil!9454)))))

(declare-fun call!51219 () Bool)

(assert (=> b!878789 (= e!577217 call!51219)))

(declare-fun b!878790 () Bool)

(declare-fun e!577215 () Bool)

(assert (=> b!878790 (= e!577213 e!577215)))

(declare-fun res!399619 () Bool)

(assert (=> b!878790 (= res!399619 (matchRSpec!41 (regOne!4993 r!15766) s!10566))))

(assert (=> b!878790 (=> res!399619 e!577215)))

(declare-fun b!878791 () Bool)

(assert (=> b!878791 (= e!577216 call!51218)))

(declare-fun b!878792 () Bool)

(declare-fun c!142086 () Bool)

(assert (=> b!878792 (= c!142086 (is-ElementMatch!2240 r!15766))))

(declare-fun e!577212 () Bool)

(assert (=> b!878792 (= e!577212 e!577218)))

(declare-fun b!878793 () Bool)

(declare-fun c!142087 () Bool)

(assert (=> b!878793 (= c!142087 (is-Union!2240 r!15766))))

(assert (=> b!878793 (= e!577218 e!577213)))

(assert (=> b!878794 (= e!577214 call!51219)))

(declare-fun bm!51213 () Bool)

(assert (=> bm!51213 (= call!51218 (isEmpty!5646 s!10566))))

(declare-fun b!878795 () Bool)

(assert (=> b!878795 (= e!577215 (matchRSpec!41 (regTwo!4993 r!15766) s!10566))))

(declare-fun bm!51214 () Bool)

(assert (=> bm!51214 (= call!51219 (Exists!37 (ite c!142085 lambda!26726 lambda!26727)))))

(declare-fun b!878796 () Bool)

(assert (=> b!878796 (= e!577216 e!577212)))

(declare-fun res!399618 () Bool)

(assert (=> b!878796 (= res!399618 (not (is-EmptyLang!2240 r!15766)))))

(assert (=> b!878796 (=> (not res!399618) (not e!577212))))

(assert (= (and d!276132 c!142088) b!878791))

(assert (= (and d!276132 (not c!142088)) b!878796))

(assert (= (and b!878796 res!399618) b!878792))

(assert (= (and b!878792 c!142086) b!878788))

(assert (= (and b!878792 (not c!142086)) b!878793))

(assert (= (and b!878793 c!142087) b!878790))

(assert (= (and b!878793 (not c!142087)) b!878787))

(assert (= (and b!878790 (not res!399619)) b!878795))

(assert (= (and b!878787 c!142085) b!878786))

(assert (= (and b!878787 (not c!142085)) b!878794))

(assert (= (and b!878786 (not res!399617)) b!878789))

(assert (= (or b!878789 b!878794) bm!51214))

(assert (= (or b!878791 b!878786) bm!51213))

(declare-fun m!1128295 () Bool)

(assert (=> b!878790 m!1128295))

(assert (=> bm!51213 m!1128195))

(declare-fun m!1128297 () Bool)

(assert (=> b!878795 m!1128297))

(declare-fun m!1128299 () Bool)

(assert (=> bm!51214 m!1128299))

(assert (=> b!878582 d!276132))

(declare-fun b!878829 () Bool)

(declare-fun e!577241 () Bool)

(declare-fun derivativeStep!378 (Regex!2240 C!5050) Regex!2240)

(declare-fun head!1531 (List!9470) C!5050)

(declare-fun tail!1093 (List!9470) List!9470)

(assert (=> b!878829 (= e!577241 (matchR!778 (derivativeStep!378 r!15766 (head!1531 s!10566)) (tail!1093 s!10566)))))

(declare-fun b!878830 () Bool)

(declare-fun e!577237 () Bool)

(declare-fun lt!330251 () Bool)

(assert (=> b!878830 (= e!577237 (not lt!330251))))

(declare-fun b!878831 () Bool)

(declare-fun e!577239 () Bool)

(assert (=> b!878831 (= e!577239 (= (head!1531 s!10566) (c!142051 r!15766)))))

(declare-fun b!878832 () Bool)

(declare-fun res!399646 () Bool)

(assert (=> b!878832 (=> (not res!399646) (not e!577239))))

(declare-fun call!51222 () Bool)

(assert (=> b!878832 (= res!399646 (not call!51222))))

(declare-fun b!878833 () Bool)

(declare-fun e!577236 () Bool)

(assert (=> b!878833 (= e!577236 (= lt!330251 call!51222))))

(declare-fun b!878834 () Bool)

(assert (=> b!878834 (= e!577241 (nullable!564 r!15766))))

(declare-fun d!276136 () Bool)

(assert (=> d!276136 e!577236))

(declare-fun c!142096 () Bool)

(assert (=> d!276136 (= c!142096 (is-EmptyExpr!2240 r!15766))))

(assert (=> d!276136 (= lt!330251 e!577241)))

(declare-fun c!142095 () Bool)

(assert (=> d!276136 (= c!142095 (isEmpty!5646 s!10566))))

(assert (=> d!276136 (validRegex!709 r!15766)))

(assert (=> d!276136 (= (matchR!778 r!15766 s!10566) lt!330251)))

(declare-fun bm!51217 () Bool)

(assert (=> bm!51217 (= call!51222 (isEmpty!5646 s!10566))))

(declare-fun b!878835 () Bool)

(declare-fun res!399641 () Bool)

(declare-fun e!577240 () Bool)

(assert (=> b!878835 (=> res!399641 e!577240)))

(assert (=> b!878835 (= res!399641 (not (is-ElementMatch!2240 r!15766)))))

(assert (=> b!878835 (= e!577237 e!577240)))

(declare-fun b!878836 () Bool)

(assert (=> b!878836 (= e!577236 e!577237)))

(declare-fun c!142097 () Bool)

(assert (=> b!878836 (= c!142097 (is-EmptyLang!2240 r!15766))))

(declare-fun b!878837 () Bool)

(declare-fun e!577235 () Bool)

(declare-fun e!577238 () Bool)

(assert (=> b!878837 (= e!577235 e!577238)))

(declare-fun res!399640 () Bool)

(assert (=> b!878837 (=> res!399640 e!577238)))

(assert (=> b!878837 (= res!399640 call!51222)))

(declare-fun b!878838 () Bool)

(assert (=> b!878838 (= e!577240 e!577235)))

(declare-fun res!399644 () Bool)

(assert (=> b!878838 (=> (not res!399644) (not e!577235))))

(assert (=> b!878838 (= res!399644 (not lt!330251))))

(declare-fun b!878839 () Bool)

(declare-fun res!399643 () Bool)

(assert (=> b!878839 (=> (not res!399643) (not e!577239))))

(assert (=> b!878839 (= res!399643 (isEmpty!5646 (tail!1093 s!10566)))))

(declare-fun b!878840 () Bool)

(assert (=> b!878840 (= e!577238 (not (= (head!1531 s!10566) (c!142051 r!15766))))))

(declare-fun b!878841 () Bool)

(declare-fun res!399642 () Bool)

(assert (=> b!878841 (=> res!399642 e!577238)))

(assert (=> b!878841 (= res!399642 (not (isEmpty!5646 (tail!1093 s!10566))))))

(declare-fun b!878842 () Bool)

(declare-fun res!399645 () Bool)

(assert (=> b!878842 (=> res!399645 e!577240)))

(assert (=> b!878842 (= res!399645 e!577239)))

(declare-fun res!399647 () Bool)

(assert (=> b!878842 (=> (not res!399647) (not e!577239))))

(assert (=> b!878842 (= res!399647 lt!330251)))

(assert (= (and d!276136 c!142095) b!878834))

(assert (= (and d!276136 (not c!142095)) b!878829))

(assert (= (and d!276136 c!142096) b!878833))

(assert (= (and d!276136 (not c!142096)) b!878836))

(assert (= (and b!878836 c!142097) b!878830))

(assert (= (and b!878836 (not c!142097)) b!878835))

(assert (= (and b!878835 (not res!399641)) b!878842))

(assert (= (and b!878842 res!399647) b!878832))

(assert (= (and b!878832 res!399646) b!878839))

(assert (= (and b!878839 res!399643) b!878831))

(assert (= (and b!878842 (not res!399645)) b!878838))

(assert (= (and b!878838 res!399644) b!878837))

(assert (= (and b!878837 (not res!399640)) b!878841))

(assert (= (and b!878841 (not res!399642)) b!878840))

(assert (= (or b!878833 b!878832 b!878837) bm!51217))

(assert (=> bm!51217 m!1128195))

(assert (=> d!276136 m!1128195))

(assert (=> d!276136 m!1128175))

(declare-fun m!1128301 () Bool)

(assert (=> b!878841 m!1128301))

(assert (=> b!878841 m!1128301))

(declare-fun m!1128303 () Bool)

(assert (=> b!878841 m!1128303))

(declare-fun m!1128305 () Bool)

(assert (=> b!878840 m!1128305))

(assert (=> b!878839 m!1128301))

(assert (=> b!878839 m!1128301))

(assert (=> b!878839 m!1128303))

(assert (=> b!878829 m!1128305))

(assert (=> b!878829 m!1128305))

(declare-fun m!1128307 () Bool)

(assert (=> b!878829 m!1128307))

(assert (=> b!878829 m!1128301))

(assert (=> b!878829 m!1128307))

(assert (=> b!878829 m!1128301))

(declare-fun m!1128309 () Bool)

(assert (=> b!878829 m!1128309))

(assert (=> b!878831 m!1128305))

(declare-fun m!1128311 () Bool)

(assert (=> b!878834 m!1128311))

(assert (=> b!878582 d!276136))

(declare-fun d!276138 () Bool)

(assert (=> d!276138 (= (matchR!778 r!15766 s!10566) (matchRSpec!41 r!15766 s!10566))))

(declare-fun lt!330254 () Unit!14059)

(declare-fun choose!5186 (Regex!2240 List!9470) Unit!14059)

(assert (=> d!276138 (= lt!330254 (choose!5186 r!15766 s!10566))))

(assert (=> d!276138 (validRegex!709 r!15766)))

(assert (=> d!276138 (= (mainMatchTheorem!41 r!15766 s!10566) lt!330254)))

(declare-fun bs!234255 () Bool)

(assert (= bs!234255 d!276138))

(assert (=> bs!234255 m!1128179))

(assert (=> bs!234255 m!1128177))

(declare-fun m!1128319 () Bool)

(assert (=> bs!234255 m!1128319))

(assert (=> bs!234255 m!1128175))

(assert (=> b!878582 d!276138))

(declare-fun e!577244 () Bool)

(assert (=> b!878587 (= tp!277691 e!577244)))

(declare-fun b!878853 () Bool)

(assert (=> b!878853 (= e!577244 tp_is_empty!4123)))

(declare-fun b!878856 () Bool)

(declare-fun tp!277723 () Bool)

(declare-fun tp!277724 () Bool)

(assert (=> b!878856 (= e!577244 (and tp!277723 tp!277724))))

(declare-fun b!878854 () Bool)

(declare-fun tp!277726 () Bool)

(declare-fun tp!277727 () Bool)

(assert (=> b!878854 (= e!577244 (and tp!277726 tp!277727))))

(declare-fun b!878855 () Bool)

(declare-fun tp!277725 () Bool)

(assert (=> b!878855 (= e!577244 tp!277725)))

(assert (= (and b!878587 (is-ElementMatch!2240 (reg!2569 r!15766))) b!878853))

(assert (= (and b!878587 (is-Concat!4073 (reg!2569 r!15766))) b!878854))

(assert (= (and b!878587 (is-Star!2240 (reg!2569 r!15766))) b!878855))

(assert (= (and b!878587 (is-Union!2240 (reg!2569 r!15766))) b!878856))

(declare-fun b!878861 () Bool)

(declare-fun e!577247 () Bool)

(declare-fun tp!277730 () Bool)

(assert (=> b!878861 (= e!577247 (and tp_is_empty!4123 tp!277730))))

(assert (=> b!878585 (= tp!277692 e!577247)))

(assert (= (and b!878585 (is-Cons!9454 (t!100516 s!10566))) b!878861))

(declare-fun e!577248 () Bool)

(assert (=> b!878583 (= tp!277693 e!577248)))

(declare-fun b!878862 () Bool)

(assert (=> b!878862 (= e!577248 tp_is_empty!4123)))

(declare-fun b!878865 () Bool)

(declare-fun tp!277731 () Bool)

(declare-fun tp!277732 () Bool)

(assert (=> b!878865 (= e!577248 (and tp!277731 tp!277732))))

(declare-fun b!878863 () Bool)

(declare-fun tp!277734 () Bool)

(declare-fun tp!277735 () Bool)

(assert (=> b!878863 (= e!577248 (and tp!277734 tp!277735))))

(declare-fun b!878864 () Bool)

(declare-fun tp!277733 () Bool)

(assert (=> b!878864 (= e!577248 tp!277733)))

(assert (= (and b!878583 (is-ElementMatch!2240 (regOne!4992 r!15766))) b!878862))

(assert (= (and b!878583 (is-Concat!4073 (regOne!4992 r!15766))) b!878863))

(assert (= (and b!878583 (is-Star!2240 (regOne!4992 r!15766))) b!878864))

(assert (= (and b!878583 (is-Union!2240 (regOne!4992 r!15766))) b!878865))

(declare-fun e!577249 () Bool)

(assert (=> b!878583 (= tp!277694 e!577249)))

(declare-fun b!878866 () Bool)

(assert (=> b!878866 (= e!577249 tp_is_empty!4123)))

(declare-fun b!878869 () Bool)

(declare-fun tp!277736 () Bool)

(declare-fun tp!277737 () Bool)

(assert (=> b!878869 (= e!577249 (and tp!277736 tp!277737))))

(declare-fun b!878867 () Bool)

(declare-fun tp!277739 () Bool)

(declare-fun tp!277740 () Bool)

(assert (=> b!878867 (= e!577249 (and tp!277739 tp!277740))))

(declare-fun b!878868 () Bool)

(declare-fun tp!277738 () Bool)

(assert (=> b!878868 (= e!577249 tp!277738)))

(assert (= (and b!878583 (is-ElementMatch!2240 (regTwo!4992 r!15766))) b!878866))

(assert (= (and b!878583 (is-Concat!4073 (regTwo!4992 r!15766))) b!878867))

(assert (= (and b!878583 (is-Star!2240 (regTwo!4992 r!15766))) b!878868))

(assert (= (and b!878583 (is-Union!2240 (regTwo!4992 r!15766))) b!878869))

(declare-fun e!577250 () Bool)

(assert (=> b!878588 (= tp!277689 e!577250)))

(declare-fun b!878870 () Bool)

(assert (=> b!878870 (= e!577250 tp_is_empty!4123)))

(declare-fun b!878873 () Bool)

(declare-fun tp!277741 () Bool)

(declare-fun tp!277742 () Bool)

(assert (=> b!878873 (= e!577250 (and tp!277741 tp!277742))))

(declare-fun b!878871 () Bool)

(declare-fun tp!277744 () Bool)

(declare-fun tp!277745 () Bool)

(assert (=> b!878871 (= e!577250 (and tp!277744 tp!277745))))

(declare-fun b!878872 () Bool)

(declare-fun tp!277743 () Bool)

(assert (=> b!878872 (= e!577250 tp!277743)))

(assert (= (and b!878588 (is-ElementMatch!2240 (regOne!4993 r!15766))) b!878870))

(assert (= (and b!878588 (is-Concat!4073 (regOne!4993 r!15766))) b!878871))

(assert (= (and b!878588 (is-Star!2240 (regOne!4993 r!15766))) b!878872))

(assert (= (and b!878588 (is-Union!2240 (regOne!4993 r!15766))) b!878873))

(declare-fun e!577251 () Bool)

(assert (=> b!878588 (= tp!277690 e!577251)))

(declare-fun b!878874 () Bool)

(assert (=> b!878874 (= e!577251 tp_is_empty!4123)))

(declare-fun b!878877 () Bool)

(declare-fun tp!277746 () Bool)

(declare-fun tp!277747 () Bool)

(assert (=> b!878877 (= e!577251 (and tp!277746 tp!277747))))

(declare-fun b!878875 () Bool)

(declare-fun tp!277749 () Bool)

(declare-fun tp!277750 () Bool)

(assert (=> b!878875 (= e!577251 (and tp!277749 tp!277750))))

(declare-fun b!878876 () Bool)

(declare-fun tp!277748 () Bool)

(assert (=> b!878876 (= e!577251 tp!277748)))

(assert (= (and b!878588 (is-ElementMatch!2240 (regTwo!4993 r!15766))) b!878874))

(assert (= (and b!878588 (is-Concat!4073 (regTwo!4993 r!15766))) b!878875))

(assert (= (and b!878588 (is-Star!2240 (regTwo!4993 r!15766))) b!878876))

(assert (= (and b!878588 (is-Union!2240 (regTwo!4993 r!15766))) b!878877))

(push 1)

(assert (not b!878873))

(assert (not d!276126))

(assert (not b!878831))

(assert (not b!878876))

(assert (not b!878795))

(assert (not d!276138))

(assert (not b!878840))

(assert tp_is_empty!4123)

(assert (not bm!51213))

(assert (not b!878679))

(assert (not d!276122))

(assert (not d!276120))

(assert (not b!878875))

(assert (not b!878855))

(assert (not b!878790))

(assert (not bm!51208))

(assert (not b!878854))

(assert (not b!878872))

(assert (not b!878868))

(assert (not d!276116))

(assert (not b!878829))

(assert (not b!878841))

(assert (not b!878871))

(assert (not b!878687))

(assert (not b!878686))

(assert (not b!878864))

(assert (not d!276136))

(assert (not b!878839))

(assert (not b!878861))

(assert (not b!878869))

(assert (not b!878867))

(assert (not b!878865))

(assert (not bm!51217))

(assert (not bm!51214))

(assert (not b!878834))

(assert (not bm!51207))

(assert (not b!878877))

(assert (not b!878856))

(assert (not b!878682))

(assert (not b!878738))

(assert (not b!878681))

(assert (not b!878863))

(assert (not b!878684))

(assert (not d!276124))

(assert (not d!276114))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

