; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!84860 () Bool)

(assert start!84860)

(declare-fun b!952439 () Bool)

(assert (=> b!952439 true))

(assert (=> b!952439 true))

(declare-fun lambda!32776 () Int)

(declare-fun lambda!32775 () Int)

(assert (=> b!952439 (not (= lambda!32776 lambda!32775))))

(assert (=> b!952439 true))

(assert (=> b!952439 true))

(declare-fun b!952432 () Bool)

(declare-fun e!616324 () Bool)

(declare-fun e!616322 () Bool)

(assert (=> b!952432 (= e!616324 (not e!616322))))

(declare-fun res!432774 () Bool)

(assert (=> b!952432 (=> res!432774 e!616322)))

(declare-fun lt!344773 () Bool)

(declare-datatypes ((C!5818 0))(
  ( (C!5819 (val!3157 Int)) )
))
(declare-datatypes ((Regex!2624 0))(
  ( (ElementMatch!2624 (c!155091 C!5818)) (Concat!4457 (regOne!5760 Regex!2624) (regTwo!5760 Regex!2624)) (EmptyExpr!2624) (Star!2624 (reg!2953 Regex!2624)) (EmptyLang!2624) (Union!2624 (regOne!5761 Regex!2624) (regTwo!5761 Regex!2624)) )
))
(declare-fun r!15766 () Regex!2624)

(assert (=> b!952432 (= res!432774 (or (not lt!344773) (and (is-Concat!4457 r!15766) (is-EmptyExpr!2624 (regOne!5760 r!15766))) (and (is-Concat!4457 r!15766) (is-EmptyExpr!2624 (regTwo!5760 r!15766))) (not (is-Concat!4457 r!15766))))))

(declare-datatypes ((List!9854 0))(
  ( (Nil!9838) (Cons!9838 (h!15239 C!5818) (t!100900 List!9854)) )
))
(declare-fun s!10566 () List!9854)

(declare-fun matchRSpec!425 (Regex!2624 List!9854) Bool)

(assert (=> b!952432 (= lt!344773 (matchRSpec!425 r!15766 s!10566))))

(declare-fun matchR!1162 (Regex!2624 List!9854) Bool)

(assert (=> b!952432 (= lt!344773 (matchR!1162 r!15766 s!10566))))

(declare-datatypes ((Unit!14891 0))(
  ( (Unit!14892) )
))
(declare-fun lt!344772 () Unit!14891)

(declare-fun mainMatchTheorem!425 (Regex!2624 List!9854) Unit!14891)

(assert (=> b!952432 (= lt!344772 (mainMatchTheorem!425 r!15766 s!10566))))

(declare-fun b!952433 () Bool)

(declare-fun e!616323 () Bool)

(declare-fun tp!293544 () Bool)

(declare-fun tp!293545 () Bool)

(assert (=> b!952433 (= e!616323 (and tp!293544 tp!293545))))

(declare-fun b!952434 () Bool)

(declare-fun e!616325 () Bool)

(declare-fun tp_is_empty!4891 () Bool)

(declare-fun tp!293541 () Bool)

(assert (=> b!952434 (= e!616325 (and tp_is_empty!4891 tp!293541))))

(declare-fun b!952435 () Bool)

(assert (=> b!952435 (= e!616323 tp_is_empty!4891)))

(declare-fun b!952436 () Bool)

(declare-fun tp!293546 () Bool)

(declare-fun tp!293543 () Bool)

(assert (=> b!952436 (= e!616323 (and tp!293546 tp!293543))))

(declare-fun b!952437 () Bool)

(declare-fun e!616326 () Bool)

(declare-datatypes ((tuple2!11142 0))(
  ( (tuple2!11143 (_1!6397 List!9854) (_2!6397 List!9854)) )
))
(declare-datatypes ((Option!2213 0))(
  ( (None!2212) (Some!2212 (v!19629 tuple2!11142)) )
))
(declare-fun lt!344774 () Option!2213)

(declare-fun get!3314 (Option!2213) tuple2!11142)

(assert (=> b!952437 (= e!616326 (matchR!1162 (regOne!5760 r!15766) (_1!6397 (get!3314 lt!344774))))))

(declare-fun res!432773 () Bool)

(assert (=> start!84860 (=> (not res!432773) (not e!616324))))

(declare-fun validRegex!1093 (Regex!2624) Bool)

(assert (=> start!84860 (= res!432773 (validRegex!1093 r!15766))))

(assert (=> start!84860 e!616324))

(assert (=> start!84860 e!616323))

(assert (=> start!84860 e!616325))

(declare-fun b!952438 () Bool)

(declare-fun tp!293542 () Bool)

(assert (=> b!952438 (= e!616323 tp!293542)))

(assert (=> b!952439 (= e!616322 e!616326)))

(declare-fun res!432775 () Bool)

(assert (=> b!952439 (=> res!432775 e!616326)))

(declare-fun isEmpty!6111 (List!9854) Bool)

(assert (=> b!952439 (= res!432775 (isEmpty!6111 s!10566))))

(declare-fun Exists!375 (Int) Bool)

(assert (=> b!952439 (= (Exists!375 lambda!32775) (Exists!375 lambda!32776))))

(declare-fun lt!344775 () Unit!14891)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!195 (Regex!2624 Regex!2624 List!9854) Unit!14891)

(assert (=> b!952439 (= lt!344775 (lemmaExistCutMatchRandMatchRSpecEquivalent!195 (regOne!5760 r!15766) (regTwo!5760 r!15766) s!10566))))

(declare-fun isDefined!1855 (Option!2213) Bool)

(assert (=> b!952439 (= (isDefined!1855 lt!344774) (Exists!375 lambda!32775))))

(declare-fun findConcatSeparation!319 (Regex!2624 Regex!2624 List!9854 List!9854 List!9854) Option!2213)

(assert (=> b!952439 (= lt!344774 (findConcatSeparation!319 (regOne!5760 r!15766) (regTwo!5760 r!15766) Nil!9838 s!10566 s!10566))))

(declare-fun lt!344776 () Unit!14891)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!319 (Regex!2624 Regex!2624 List!9854) Unit!14891)

(assert (=> b!952439 (= lt!344776 (lemmaFindConcatSeparationEquivalentToExists!319 (regOne!5760 r!15766) (regTwo!5760 r!15766) s!10566))))

(assert (= (and start!84860 res!432773) b!952432))

(assert (= (and b!952432 (not res!432774)) b!952439))

(assert (= (and b!952439 (not res!432775)) b!952437))

(assert (= (and start!84860 (is-ElementMatch!2624 r!15766)) b!952435))

(assert (= (and start!84860 (is-Concat!4457 r!15766)) b!952433))

(assert (= (and start!84860 (is-Star!2624 r!15766)) b!952438))

(assert (= (and start!84860 (is-Union!2624 r!15766)) b!952436))

(assert (= (and start!84860 (is-Cons!9838 s!10566)) b!952434))

(declare-fun m!1164589 () Bool)

(assert (=> b!952432 m!1164589))

(declare-fun m!1164591 () Bool)

(assert (=> b!952432 m!1164591))

(declare-fun m!1164593 () Bool)

(assert (=> b!952432 m!1164593))

(declare-fun m!1164595 () Bool)

(assert (=> b!952437 m!1164595))

(declare-fun m!1164597 () Bool)

(assert (=> b!952437 m!1164597))

(declare-fun m!1164599 () Bool)

(assert (=> start!84860 m!1164599))

(declare-fun m!1164601 () Bool)

(assert (=> b!952439 m!1164601))

(declare-fun m!1164603 () Bool)

(assert (=> b!952439 m!1164603))

(assert (=> b!952439 m!1164603))

(declare-fun m!1164605 () Bool)

(assert (=> b!952439 m!1164605))

(declare-fun m!1164607 () Bool)

(assert (=> b!952439 m!1164607))

(declare-fun m!1164609 () Bool)

(assert (=> b!952439 m!1164609))

(declare-fun m!1164611 () Bool)

(assert (=> b!952439 m!1164611))

(declare-fun m!1164613 () Bool)

(assert (=> b!952439 m!1164613))

(push 1)

(assert (not b!952434))

(assert tp_is_empty!4891)

(assert (not start!84860))

(assert (not b!952437))

(assert (not b!952432))

(assert (not b!952438))

(assert (not b!952439))

(assert (not b!952433))

(assert (not b!952436))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!284060 () Bool)

(declare-fun res!432807 () Bool)

(declare-fun e!616365 () Bool)

(assert (=> d!284060 (=> res!432807 e!616365)))

(assert (=> d!284060 (= res!432807 (is-ElementMatch!2624 r!15766))))

(assert (=> d!284060 (= (validRegex!1093 r!15766) e!616365)))

(declare-fun b!952502 () Bool)

(declare-fun res!432808 () Bool)

(declare-fun e!616366 () Bool)

(assert (=> b!952502 (=> (not res!432808) (not e!616366))))

(declare-fun call!59789 () Bool)

(assert (=> b!952502 (= res!432808 call!59789)))

(declare-fun e!616363 () Bool)

(assert (=> b!952502 (= e!616363 e!616366)))

(declare-fun b!952503 () Bool)

(declare-fun e!616368 () Bool)

(declare-fun call!59790 () Bool)

(assert (=> b!952503 (= e!616368 call!59790)))

(declare-fun bm!59783 () Bool)

(declare-fun c!155098 () Bool)

(declare-fun c!155097 () Bool)

(assert (=> bm!59783 (= call!59790 (validRegex!1093 (ite c!155098 (reg!2953 r!15766) (ite c!155097 (regOne!5761 r!15766) (regOne!5760 r!15766)))))))

(declare-fun b!952504 () Bool)

(declare-fun res!432810 () Bool)

(declare-fun e!616367 () Bool)

(assert (=> b!952504 (=> res!432810 e!616367)))

(assert (=> b!952504 (= res!432810 (not (is-Concat!4457 r!15766)))))

(assert (=> b!952504 (= e!616363 e!616367)))

(declare-fun bm!59784 () Bool)

(declare-fun call!59788 () Bool)

(assert (=> bm!59784 (= call!59788 (validRegex!1093 (ite c!155097 (regTwo!5761 r!15766) (regTwo!5760 r!15766))))))

(declare-fun bm!59785 () Bool)

(assert (=> bm!59785 (= call!59789 call!59790)))

(declare-fun b!952505 () Bool)

(declare-fun e!616362 () Bool)

(assert (=> b!952505 (= e!616362 e!616368)))

(declare-fun res!432811 () Bool)

(declare-fun nullable!779 (Regex!2624) Bool)

(assert (=> b!952505 (= res!432811 (not (nullable!779 (reg!2953 r!15766))))))

(assert (=> b!952505 (=> (not res!432811) (not e!616368))))

(declare-fun b!952506 () Bool)

(declare-fun e!616364 () Bool)

(assert (=> b!952506 (= e!616367 e!616364)))

(declare-fun res!432809 () Bool)

(assert (=> b!952506 (=> (not res!432809) (not e!616364))))

(assert (=> b!952506 (= res!432809 call!59789)))

(declare-fun b!952507 () Bool)

(assert (=> b!952507 (= e!616362 e!616363)))

(assert (=> b!952507 (= c!155097 (is-Union!2624 r!15766))))

(declare-fun b!952508 () Bool)

(assert (=> b!952508 (= e!616365 e!616362)))

(assert (=> b!952508 (= c!155098 (is-Star!2624 r!15766))))

(declare-fun b!952509 () Bool)

(assert (=> b!952509 (= e!616366 call!59788)))

(declare-fun b!952510 () Bool)

(assert (=> b!952510 (= e!616364 call!59788)))

(assert (= (and d!284060 (not res!432807)) b!952508))

(assert (= (and b!952508 c!155098) b!952505))

(assert (= (and b!952508 (not c!155098)) b!952507))

(assert (= (and b!952505 res!432811) b!952503))

(assert (= (and b!952507 c!155097) b!952502))

(assert (= (and b!952507 (not c!155097)) b!952504))

(assert (= (and b!952502 res!432808) b!952509))

(assert (= (and b!952504 (not res!432810)) b!952506))

(assert (= (and b!952506 res!432809) b!952510))

(assert (= (or b!952509 b!952510) bm!59784))

(assert (= (or b!952502 b!952506) bm!59785))

(assert (= (or b!952503 bm!59785) bm!59783))

(declare-fun m!1164641 () Bool)

(assert (=> bm!59783 m!1164641))

(declare-fun m!1164643 () Bool)

(assert (=> bm!59784 m!1164643))

(declare-fun m!1164645 () Bool)

(assert (=> b!952505 m!1164645))

(assert (=> start!84860 d!284060))

(declare-fun d!284064 () Bool)

(declare-fun choose!5947 (Int) Bool)

(assert (=> d!284064 (= (Exists!375 lambda!32776) (choose!5947 lambda!32776))))

(declare-fun bs!240212 () Bool)

(assert (= bs!240212 d!284064))

(declare-fun m!1164647 () Bool)

(assert (=> bs!240212 m!1164647))

(assert (=> b!952439 d!284064))

(declare-fun d!284066 () Bool)

(assert (=> d!284066 (= (isEmpty!6111 s!10566) (is-Nil!9838 s!10566))))

(assert (=> b!952439 d!284066))

(declare-fun d!284068 () Bool)

(declare-fun isEmpty!6113 (Option!2213) Bool)

(assert (=> d!284068 (= (isDefined!1855 lt!344774) (not (isEmpty!6113 lt!344774)))))

(declare-fun bs!240213 () Bool)

(assert (= bs!240213 d!284068))

(declare-fun m!1164649 () Bool)

(assert (=> bs!240213 m!1164649))

(assert (=> b!952439 d!284068))

(declare-fun b!952557 () Bool)

(declare-fun res!432835 () Bool)

(declare-fun e!616396 () Bool)

(assert (=> b!952557 (=> (not res!432835) (not e!616396))))

(declare-fun lt!344798 () Option!2213)

(assert (=> b!952557 (= res!432835 (matchR!1162 (regTwo!5760 r!15766) (_2!6397 (get!3314 lt!344798))))))

(declare-fun b!952558 () Bool)

(declare-fun e!616399 () Option!2213)

(declare-fun e!616398 () Option!2213)

(assert (=> b!952558 (= e!616399 e!616398)))

(declare-fun c!155111 () Bool)

(assert (=> b!952558 (= c!155111 (is-Nil!9838 s!10566))))

(declare-fun b!952559 () Bool)

(assert (=> b!952559 (= e!616398 None!2212)))

(declare-fun b!952560 () Bool)

(declare-fun res!432834 () Bool)

(assert (=> b!952560 (=> (not res!432834) (not e!616396))))

(assert (=> b!952560 (= res!432834 (matchR!1162 (regOne!5760 r!15766) (_1!6397 (get!3314 lt!344798))))))

(declare-fun b!952561 () Bool)

(declare-fun lt!344800 () Unit!14891)

(declare-fun lt!344799 () Unit!14891)

(assert (=> b!952561 (= lt!344800 lt!344799)))

(declare-fun ++!2634 (List!9854 List!9854) List!9854)

(assert (=> b!952561 (= (++!2634 (++!2634 Nil!9838 (Cons!9838 (h!15239 s!10566) Nil!9838)) (t!100900 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!243 (List!9854 C!5818 List!9854 List!9854) Unit!14891)

(assert (=> b!952561 (= lt!344799 (lemmaMoveElementToOtherListKeepsConcatEq!243 Nil!9838 (h!15239 s!10566) (t!100900 s!10566) s!10566))))

(assert (=> b!952561 (= e!616398 (findConcatSeparation!319 (regOne!5760 r!15766) (regTwo!5760 r!15766) (++!2634 Nil!9838 (Cons!9838 (h!15239 s!10566) Nil!9838)) (t!100900 s!10566) s!10566))))

(declare-fun b!952562 () Bool)

(declare-fun e!616397 () Bool)

(assert (=> b!952562 (= e!616397 (not (isDefined!1855 lt!344798)))))

(declare-fun b!952563 () Bool)

(assert (=> b!952563 (= e!616399 (Some!2212 (tuple2!11143 Nil!9838 s!10566)))))

(declare-fun b!952564 () Bool)

(declare-fun e!616395 () Bool)

(assert (=> b!952564 (= e!616395 (matchR!1162 (regTwo!5760 r!15766) s!10566))))

(declare-fun b!952565 () Bool)

(assert (=> b!952565 (= e!616396 (= (++!2634 (_1!6397 (get!3314 lt!344798)) (_2!6397 (get!3314 lt!344798))) s!10566))))

(declare-fun d!284070 () Bool)

(assert (=> d!284070 e!616397))

(declare-fun res!432838 () Bool)

(assert (=> d!284070 (=> res!432838 e!616397)))

(assert (=> d!284070 (= res!432838 e!616396)))

(declare-fun res!432836 () Bool)

(assert (=> d!284070 (=> (not res!432836) (not e!616396))))

(assert (=> d!284070 (= res!432836 (isDefined!1855 lt!344798))))

(assert (=> d!284070 (= lt!344798 e!616399)))

(declare-fun c!155112 () Bool)

(assert (=> d!284070 (= c!155112 e!616395)))

(declare-fun res!432837 () Bool)

(assert (=> d!284070 (=> (not res!432837) (not e!616395))))

(assert (=> d!284070 (= res!432837 (matchR!1162 (regOne!5760 r!15766) Nil!9838))))

(assert (=> d!284070 (validRegex!1093 (regOne!5760 r!15766))))

(assert (=> d!284070 (= (findConcatSeparation!319 (regOne!5760 r!15766) (regTwo!5760 r!15766) Nil!9838 s!10566 s!10566) lt!344798)))

(assert (= (and d!284070 res!432837) b!952564))

(assert (= (and d!284070 c!155112) b!952563))

(assert (= (and d!284070 (not c!155112)) b!952558))

(assert (= (and b!952558 c!155111) b!952559))

(assert (= (and b!952558 (not c!155111)) b!952561))

(assert (= (and d!284070 res!432836) b!952560))

(assert (= (and b!952560 res!432834) b!952557))

(assert (= (and b!952557 res!432835) b!952565))

(assert (= (and d!284070 (not res!432838)) b!952562))

(declare-fun m!1164651 () Bool)

(assert (=> b!952561 m!1164651))

(assert (=> b!952561 m!1164651))

(declare-fun m!1164653 () Bool)

(assert (=> b!952561 m!1164653))

(declare-fun m!1164655 () Bool)

(assert (=> b!952561 m!1164655))

(assert (=> b!952561 m!1164651))

(declare-fun m!1164657 () Bool)

(assert (=> b!952561 m!1164657))

(declare-fun m!1164659 () Bool)

(assert (=> b!952560 m!1164659))

(declare-fun m!1164661 () Bool)

(assert (=> b!952560 m!1164661))

(assert (=> b!952565 m!1164659))

(declare-fun m!1164663 () Bool)

(assert (=> b!952565 m!1164663))

(assert (=> b!952557 m!1164659))

(declare-fun m!1164665 () Bool)

(assert (=> b!952557 m!1164665))

(declare-fun m!1164667 () Bool)

(assert (=> b!952564 m!1164667))

(declare-fun m!1164669 () Bool)

(assert (=> b!952562 m!1164669))

(assert (=> d!284070 m!1164669))

(declare-fun m!1164671 () Bool)

(assert (=> d!284070 m!1164671))

(declare-fun m!1164673 () Bool)

(assert (=> d!284070 m!1164673))

(assert (=> b!952439 d!284070))

(declare-fun bs!240214 () Bool)

(declare-fun d!284072 () Bool)

(assert (= bs!240214 (and d!284072 b!952439)))

(declare-fun lambda!32793 () Int)

(assert (=> bs!240214 (= lambda!32793 lambda!32775)))

(assert (=> bs!240214 (not (= lambda!32793 lambda!32776))))

(assert (=> d!284072 true))

(assert (=> d!284072 true))

(assert (=> d!284072 true))

(declare-fun lambda!32794 () Int)

(assert (=> bs!240214 (not (= lambda!32794 lambda!32775))))

(assert (=> bs!240214 (= lambda!32794 lambda!32776)))

(declare-fun bs!240215 () Bool)

(assert (= bs!240215 d!284072))

(assert (=> bs!240215 (not (= lambda!32794 lambda!32793))))

(assert (=> d!284072 true))

(assert (=> d!284072 true))

(assert (=> d!284072 true))

(assert (=> d!284072 (= (Exists!375 lambda!32793) (Exists!375 lambda!32794))))

(declare-fun lt!344803 () Unit!14891)

(declare-fun choose!5948 (Regex!2624 Regex!2624 List!9854) Unit!14891)

(assert (=> d!284072 (= lt!344803 (choose!5948 (regOne!5760 r!15766) (regTwo!5760 r!15766) s!10566))))

(assert (=> d!284072 (validRegex!1093 (regOne!5760 r!15766))))

(assert (=> d!284072 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!195 (regOne!5760 r!15766) (regTwo!5760 r!15766) s!10566) lt!344803)))

(declare-fun m!1164675 () Bool)

(assert (=> bs!240215 m!1164675))

(declare-fun m!1164677 () Bool)

(assert (=> bs!240215 m!1164677))

(declare-fun m!1164679 () Bool)

(assert (=> bs!240215 m!1164679))

(assert (=> bs!240215 m!1164673))

(assert (=> b!952439 d!284072))

(declare-fun bs!240219 () Bool)

(declare-fun d!284074 () Bool)

(assert (= bs!240219 (and d!284074 b!952439)))

(declare-fun lambda!32799 () Int)

(assert (=> bs!240219 (= lambda!32799 lambda!32775)))

(assert (=> bs!240219 (not (= lambda!32799 lambda!32776))))

(declare-fun bs!240220 () Bool)

(assert (= bs!240220 (and d!284074 d!284072)))

(assert (=> bs!240220 (= lambda!32799 lambda!32793)))

(assert (=> bs!240220 (not (= lambda!32799 lambda!32794))))

(assert (=> d!284074 true))

(assert (=> d!284074 true))

(assert (=> d!284074 true))

(assert (=> d!284074 (= (isDefined!1855 (findConcatSeparation!319 (regOne!5760 r!15766) (regTwo!5760 r!15766) Nil!9838 s!10566 s!10566)) (Exists!375 lambda!32799))))

(declare-fun lt!344806 () Unit!14891)

(declare-fun choose!5949 (Regex!2624 Regex!2624 List!9854) Unit!14891)

(assert (=> d!284074 (= lt!344806 (choose!5949 (regOne!5760 r!15766) (regTwo!5760 r!15766) s!10566))))

(assert (=> d!284074 (validRegex!1093 (regOne!5760 r!15766))))

(assert (=> d!284074 (= (lemmaFindConcatSeparationEquivalentToExists!319 (regOne!5760 r!15766) (regTwo!5760 r!15766) s!10566) lt!344806)))

(declare-fun bs!240221 () Bool)

(assert (= bs!240221 d!284074))

(assert (=> bs!240221 m!1164613))

(assert (=> bs!240221 m!1164613))

(declare-fun m!1164687 () Bool)

(assert (=> bs!240221 m!1164687))

(declare-fun m!1164689 () Bool)

(assert (=> bs!240221 m!1164689))

(declare-fun m!1164691 () Bool)

(assert (=> bs!240221 m!1164691))

(assert (=> bs!240221 m!1164673))

(assert (=> b!952439 d!284074))

(declare-fun d!284078 () Bool)

(assert (=> d!284078 (= (Exists!375 lambda!32775) (choose!5947 lambda!32775))))

(declare-fun bs!240222 () Bool)

(assert (= bs!240222 d!284078))

(declare-fun m!1164693 () Bool)

(assert (=> bs!240222 m!1164693))

(assert (=> b!952439 d!284078))

(declare-fun bs!240223 () Bool)

(declare-fun b!952655 () Bool)

(assert (= bs!240223 (and b!952655 b!952439)))

(declare-fun lambda!32804 () Int)

(assert (=> bs!240223 (not (= lambda!32804 lambda!32776))))

(declare-fun bs!240224 () Bool)

(assert (= bs!240224 (and b!952655 d!284072)))

(assert (=> bs!240224 (not (= lambda!32804 lambda!32794))))

(assert (=> bs!240223 (not (= lambda!32804 lambda!32775))))

(assert (=> bs!240224 (not (= lambda!32804 lambda!32793))))

(declare-fun bs!240225 () Bool)

(assert (= bs!240225 (and b!952655 d!284074)))

(assert (=> bs!240225 (not (= lambda!32804 lambda!32799))))

(assert (=> b!952655 true))

(assert (=> b!952655 true))

(declare-fun bs!240226 () Bool)

(declare-fun b!952654 () Bool)

(assert (= bs!240226 (and b!952654 b!952439)))

(declare-fun lambda!32805 () Int)

(assert (=> bs!240226 (= lambda!32805 lambda!32776)))

(declare-fun bs!240227 () Bool)

(assert (= bs!240227 (and b!952654 b!952655)))

(assert (=> bs!240227 (not (= lambda!32805 lambda!32804))))

(declare-fun bs!240228 () Bool)

(assert (= bs!240228 (and b!952654 d!284072)))

(assert (=> bs!240228 (= lambda!32805 lambda!32794)))

(assert (=> bs!240226 (not (= lambda!32805 lambda!32775))))

(assert (=> bs!240228 (not (= lambda!32805 lambda!32793))))

(declare-fun bs!240229 () Bool)

(assert (= bs!240229 (and b!952654 d!284074)))

(assert (=> bs!240229 (not (= lambda!32805 lambda!32799))))

(assert (=> b!952654 true))

(assert (=> b!952654 true))

(declare-fun c!155134 () Bool)

(declare-fun bm!59798 () Bool)

(declare-fun call!59803 () Bool)

(assert (=> bm!59798 (= call!59803 (Exists!375 (ite c!155134 lambda!32804 lambda!32805)))))

(declare-fun b!952653 () Bool)

(declare-fun e!616449 () Bool)

(assert (=> b!952653 (= e!616449 (= s!10566 (Cons!9838 (c!155091 r!15766) Nil!9838)))))

(declare-fun e!616451 () Bool)

(assert (=> b!952654 (= e!616451 call!59803)))

(declare-fun e!616447 () Bool)

(assert (=> b!952655 (= e!616447 call!59803)))

(declare-fun bm!59799 () Bool)

(declare-fun call!59804 () Bool)

(assert (=> bm!59799 (= call!59804 (isEmpty!6111 s!10566))))

(declare-fun b!952656 () Bool)

(declare-fun e!616452 () Bool)

(assert (=> b!952656 (= e!616452 call!59804)))

(declare-fun d!284080 () Bool)

(declare-fun c!155133 () Bool)

(assert (=> d!284080 (= c!155133 (is-EmptyExpr!2624 r!15766))))

(assert (=> d!284080 (= (matchRSpec!425 r!15766 s!10566) e!616452)))

(declare-fun b!952657 () Bool)

(declare-fun c!155131 () Bool)

(assert (=> b!952657 (= c!155131 (is-Union!2624 r!15766))))

(declare-fun e!616453 () Bool)

(assert (=> b!952657 (= e!616449 e!616453)))

(declare-fun b!952658 () Bool)

(declare-fun e!616448 () Bool)

(assert (=> b!952658 (= e!616448 (matchRSpec!425 (regTwo!5761 r!15766) s!10566))))

(declare-fun b!952659 () Bool)

(declare-fun e!616450 () Bool)

(assert (=> b!952659 (= e!616452 e!616450)))

(declare-fun res!432892 () Bool)

(assert (=> b!952659 (= res!432892 (not (is-EmptyLang!2624 r!15766)))))

(assert (=> b!952659 (=> (not res!432892) (not e!616450))))

(declare-fun b!952660 () Bool)

(declare-fun c!155132 () Bool)

(assert (=> b!952660 (= c!155132 (is-ElementMatch!2624 r!15766))))

(assert (=> b!952660 (= e!616450 e!616449)))

(declare-fun b!952661 () Bool)

(declare-fun res!432891 () Bool)

(assert (=> b!952661 (=> res!432891 e!616447)))

(assert (=> b!952661 (= res!432891 call!59804)))

(assert (=> b!952661 (= e!616451 e!616447)))

(declare-fun b!952662 () Bool)

(assert (=> b!952662 (= e!616453 e!616451)))

(assert (=> b!952662 (= c!155134 (is-Star!2624 r!15766))))

(declare-fun b!952663 () Bool)

(assert (=> b!952663 (= e!616453 e!616448)))

(declare-fun res!432890 () Bool)

(assert (=> b!952663 (= res!432890 (matchRSpec!425 (regOne!5761 r!15766) s!10566))))

(assert (=> b!952663 (=> res!432890 e!616448)))

(assert (= (and d!284080 c!155133) b!952656))

(assert (= (and d!284080 (not c!155133)) b!952659))

(assert (= (and b!952659 res!432892) b!952660))

(assert (= (and b!952660 c!155132) b!952653))

(assert (= (and b!952660 (not c!155132)) b!952657))

(assert (= (and b!952657 c!155131) b!952663))

(assert (= (and b!952657 (not c!155131)) b!952662))

(assert (= (and b!952663 (not res!432890)) b!952658))

(assert (= (and b!952662 c!155134) b!952661))

(assert (= (and b!952662 (not c!155134)) b!952654))

(assert (= (and b!952661 (not res!432891)) b!952655))

(assert (= (or b!952655 b!952654) bm!59798))

(assert (= (or b!952656 b!952661) bm!59799))

(declare-fun m!1164695 () Bool)

(assert (=> bm!59798 m!1164695))

(assert (=> bm!59799 m!1164609))

(declare-fun m!1164697 () Bool)

(assert (=> b!952658 m!1164697))

(declare-fun m!1164699 () Bool)

(assert (=> b!952663 m!1164699))

(assert (=> b!952432 d!284080))

(declare-fun b!952706 () Bool)

(declare-fun res!432922 () Bool)

(declare-fun e!616481 () Bool)

(assert (=> b!952706 (=> (not res!432922) (not e!616481))))

(declare-fun tail!1303 (List!9854) List!9854)

(assert (=> b!952706 (= res!432922 (isEmpty!6111 (tail!1303 s!10566)))))

(declare-fun b!952707 () Bool)

(declare-fun e!616477 () Bool)

(declare-fun lt!344812 () Bool)

(declare-fun call!59808 () Bool)

(assert (=> b!952707 (= e!616477 (= lt!344812 call!59808))))

(declare-fun b!952708 () Bool)

(declare-fun head!1741 (List!9854) C!5818)

(assert (=> b!952708 (= e!616481 (= (head!1741 s!10566) (c!155091 r!15766)))))

(declare-fun b!952709 () Bool)

(declare-fun res!432924 () Bool)

(declare-fun e!616479 () Bool)

(assert (=> b!952709 (=> res!432924 e!616479)))

(assert (=> b!952709 (= res!432924 e!616481)))

(declare-fun res!432918 () Bool)

(assert (=> b!952709 (=> (not res!432918) (not e!616481))))

(assert (=> b!952709 (= res!432918 lt!344812)))

(declare-fun b!952710 () Bool)

(declare-fun e!616480 () Bool)

(assert (=> b!952710 (= e!616480 (not (= (head!1741 s!10566) (c!155091 r!15766))))))

(declare-fun d!284082 () Bool)

(assert (=> d!284082 e!616477))

(declare-fun c!155144 () Bool)

(assert (=> d!284082 (= c!155144 (is-EmptyExpr!2624 r!15766))))

(declare-fun e!616478 () Bool)

(assert (=> d!284082 (= lt!344812 e!616478)))

(declare-fun c!155146 () Bool)

(assert (=> d!284082 (= c!155146 (isEmpty!6111 s!10566))))

(assert (=> d!284082 (validRegex!1093 r!15766)))

(assert (=> d!284082 (= (matchR!1162 r!15766 s!10566) lt!344812)))

(declare-fun b!952711 () Bool)

(declare-fun res!432921 () Bool)

(assert (=> b!952711 (=> res!432921 e!616480)))

(assert (=> b!952711 (= res!432921 (not (isEmpty!6111 (tail!1303 s!10566))))))

(declare-fun bm!59803 () Bool)

(assert (=> bm!59803 (= call!59808 (isEmpty!6111 s!10566))))

(declare-fun b!952712 () Bool)

(declare-fun res!432919 () Bool)

(assert (=> b!952712 (=> (not res!432919) (not e!616481))))

(assert (=> b!952712 (= res!432919 (not call!59808))))

(declare-fun b!952713 () Bool)

(declare-fun e!616475 () Bool)

(assert (=> b!952713 (= e!616475 (not lt!344812))))

(declare-fun b!952714 () Bool)

(declare-fun e!616476 () Bool)

(assert (=> b!952714 (= e!616479 e!616476)))

(declare-fun res!432917 () Bool)

(assert (=> b!952714 (=> (not res!432917) (not e!616476))))

(assert (=> b!952714 (= res!432917 (not lt!344812))))

(declare-fun b!952715 () Bool)

(assert (=> b!952715 (= e!616476 e!616480)))

(declare-fun res!432920 () Bool)

(assert (=> b!952715 (=> res!432920 e!616480)))

(assert (=> b!952715 (= res!432920 call!59808)))

(declare-fun b!952716 () Bool)

(declare-fun res!432923 () Bool)

(assert (=> b!952716 (=> res!432923 e!616479)))

(assert (=> b!952716 (= res!432923 (not (is-ElementMatch!2624 r!15766)))))

(assert (=> b!952716 (= e!616475 e!616479)))

(declare-fun b!952717 () Bool)

(assert (=> b!952717 (= e!616477 e!616475)))

(declare-fun c!155145 () Bool)

(assert (=> b!952717 (= c!155145 (is-EmptyLang!2624 r!15766))))

(declare-fun b!952718 () Bool)

(declare-fun derivativeStep!588 (Regex!2624 C!5818) Regex!2624)

(assert (=> b!952718 (= e!616478 (matchR!1162 (derivativeStep!588 r!15766 (head!1741 s!10566)) (tail!1303 s!10566)))))

(declare-fun b!952719 () Bool)

(assert (=> b!952719 (= e!616478 (nullable!779 r!15766))))

(assert (= (and d!284082 c!155146) b!952719))

(assert (= (and d!284082 (not c!155146)) b!952718))

(assert (= (and d!284082 c!155144) b!952707))

(assert (= (and d!284082 (not c!155144)) b!952717))

(assert (= (and b!952717 c!155145) b!952713))

(assert (= (and b!952717 (not c!155145)) b!952716))

(assert (= (and b!952716 (not res!432923)) b!952709))

(assert (= (and b!952709 res!432918) b!952712))

(assert (= (and b!952712 res!432919) b!952706))

(assert (= (and b!952706 res!432922) b!952708))

(assert (= (and b!952709 (not res!432924)) b!952714))

(assert (= (and b!952714 res!432917) b!952715))

(assert (= (and b!952715 (not res!432920)) b!952711))

(assert (= (and b!952711 (not res!432921)) b!952710))

(assert (= (or b!952707 b!952712 b!952715) bm!59803))

(declare-fun m!1164713 () Bool)

(assert (=> b!952706 m!1164713))

(assert (=> b!952706 m!1164713))

(declare-fun m!1164715 () Bool)

(assert (=> b!952706 m!1164715))

(declare-fun m!1164717 () Bool)

(assert (=> b!952708 m!1164717))

(assert (=> d!284082 m!1164609))

(assert (=> d!284082 m!1164599))

(assert (=> b!952711 m!1164713))

(assert (=> b!952711 m!1164713))

(assert (=> b!952711 m!1164715))

(declare-fun m!1164719 () Bool)

(assert (=> b!952719 m!1164719))

(assert (=> b!952718 m!1164717))

(assert (=> b!952718 m!1164717))

(declare-fun m!1164721 () Bool)

(assert (=> b!952718 m!1164721))

(assert (=> b!952718 m!1164713))

(assert (=> b!952718 m!1164721))

(assert (=> b!952718 m!1164713))

(declare-fun m!1164723 () Bool)

(assert (=> b!952718 m!1164723))

(assert (=> b!952710 m!1164717))

(assert (=> bm!59803 m!1164609))

(assert (=> b!952432 d!284082))

(declare-fun d!284086 () Bool)

(assert (=> d!284086 (= (matchR!1162 r!15766 s!10566) (matchRSpec!425 r!15766 s!10566))))

(declare-fun lt!344818 () Unit!14891)

(declare-fun choose!5950 (Regex!2624 List!9854) Unit!14891)

(assert (=> d!284086 (= lt!344818 (choose!5950 r!15766 s!10566))))

(assert (=> d!284086 (validRegex!1093 r!15766)))

(assert (=> d!284086 (= (mainMatchTheorem!425 r!15766 s!10566) lt!344818)))

(declare-fun bs!240231 () Bool)

(assert (= bs!240231 d!284086))

(assert (=> bs!240231 m!1164591))

(assert (=> bs!240231 m!1164589))

(declare-fun m!1164727 () Bool)

(assert (=> bs!240231 m!1164727))

(assert (=> bs!240231 m!1164599))

(assert (=> b!952432 d!284086))

(declare-fun b!952720 () Bool)

(declare-fun res!432930 () Bool)

(declare-fun e!616488 () Bool)

(assert (=> b!952720 (=> (not res!432930) (not e!616488))))

(assert (=> b!952720 (= res!432930 (isEmpty!6111 (tail!1303 (_1!6397 (get!3314 lt!344774)))))))

(declare-fun b!952721 () Bool)

(declare-fun e!616484 () Bool)

(declare-fun lt!344819 () Bool)

(declare-fun call!59809 () Bool)

(assert (=> b!952721 (= e!616484 (= lt!344819 call!59809))))

(declare-fun b!952722 () Bool)

(assert (=> b!952722 (= e!616488 (= (head!1741 (_1!6397 (get!3314 lt!344774))) (c!155091 (regOne!5760 r!15766))))))

(declare-fun b!952723 () Bool)

(declare-fun res!432932 () Bool)

(declare-fun e!616486 () Bool)

(assert (=> b!952723 (=> res!432932 e!616486)))

(assert (=> b!952723 (= res!432932 e!616488)))

(declare-fun res!432926 () Bool)

(assert (=> b!952723 (=> (not res!432926) (not e!616488))))

(assert (=> b!952723 (= res!432926 lt!344819)))

(declare-fun b!952724 () Bool)

(declare-fun e!616487 () Bool)

(assert (=> b!952724 (= e!616487 (not (= (head!1741 (_1!6397 (get!3314 lt!344774))) (c!155091 (regOne!5760 r!15766)))))))

(declare-fun d!284090 () Bool)

(assert (=> d!284090 e!616484))

(declare-fun c!155147 () Bool)

(assert (=> d!284090 (= c!155147 (is-EmptyExpr!2624 (regOne!5760 r!15766)))))

(declare-fun e!616485 () Bool)

(assert (=> d!284090 (= lt!344819 e!616485)))

(declare-fun c!155149 () Bool)

(assert (=> d!284090 (= c!155149 (isEmpty!6111 (_1!6397 (get!3314 lt!344774))))))

(assert (=> d!284090 (validRegex!1093 (regOne!5760 r!15766))))

(assert (=> d!284090 (= (matchR!1162 (regOne!5760 r!15766) (_1!6397 (get!3314 lt!344774))) lt!344819)))

(declare-fun b!952725 () Bool)

(declare-fun res!432929 () Bool)

(assert (=> b!952725 (=> res!432929 e!616487)))

(assert (=> b!952725 (= res!432929 (not (isEmpty!6111 (tail!1303 (_1!6397 (get!3314 lt!344774))))))))

(declare-fun bm!59804 () Bool)

(assert (=> bm!59804 (= call!59809 (isEmpty!6111 (_1!6397 (get!3314 lt!344774))))))

(declare-fun b!952726 () Bool)

(declare-fun res!432927 () Bool)

(assert (=> b!952726 (=> (not res!432927) (not e!616488))))

(assert (=> b!952726 (= res!432927 (not call!59809))))

(declare-fun b!952727 () Bool)

(declare-fun e!616482 () Bool)

(assert (=> b!952727 (= e!616482 (not lt!344819))))

(declare-fun b!952728 () Bool)

(declare-fun e!616483 () Bool)

(assert (=> b!952728 (= e!616486 e!616483)))

(declare-fun res!432925 () Bool)

(assert (=> b!952728 (=> (not res!432925) (not e!616483))))

(assert (=> b!952728 (= res!432925 (not lt!344819))))

(declare-fun b!952729 () Bool)

(assert (=> b!952729 (= e!616483 e!616487)))

(declare-fun res!432928 () Bool)

(assert (=> b!952729 (=> res!432928 e!616487)))

(assert (=> b!952729 (= res!432928 call!59809)))

(declare-fun b!952730 () Bool)

(declare-fun res!432931 () Bool)

(assert (=> b!952730 (=> res!432931 e!616486)))

(assert (=> b!952730 (= res!432931 (not (is-ElementMatch!2624 (regOne!5760 r!15766))))))

(assert (=> b!952730 (= e!616482 e!616486)))

(declare-fun b!952731 () Bool)

(assert (=> b!952731 (= e!616484 e!616482)))

(declare-fun c!155148 () Bool)

(assert (=> b!952731 (= c!155148 (is-EmptyLang!2624 (regOne!5760 r!15766)))))

(declare-fun b!952732 () Bool)

(assert (=> b!952732 (= e!616485 (matchR!1162 (derivativeStep!588 (regOne!5760 r!15766) (head!1741 (_1!6397 (get!3314 lt!344774)))) (tail!1303 (_1!6397 (get!3314 lt!344774)))))))

(declare-fun b!952733 () Bool)

(assert (=> b!952733 (= e!616485 (nullable!779 (regOne!5760 r!15766)))))

(assert (= (and d!284090 c!155149) b!952733))

(assert (= (and d!284090 (not c!155149)) b!952732))

(assert (= (and d!284090 c!155147) b!952721))

(assert (= (and d!284090 (not c!155147)) b!952731))

(assert (= (and b!952731 c!155148) b!952727))

(assert (= (and b!952731 (not c!155148)) b!952730))

(assert (= (and b!952730 (not res!432931)) b!952723))

(assert (= (and b!952723 res!432926) b!952726))

(assert (= (and b!952726 res!432927) b!952720))

(assert (= (and b!952720 res!432930) b!952722))

(assert (= (and b!952723 (not res!432932)) b!952728))

(assert (= (and b!952728 res!432925) b!952729))

(assert (= (and b!952729 (not res!432928)) b!952725))

(assert (= (and b!952725 (not res!432929)) b!952724))

(assert (= (or b!952721 b!952726 b!952729) bm!59804))

(declare-fun m!1164729 () Bool)

(assert (=> b!952720 m!1164729))

(assert (=> b!952720 m!1164729))

(declare-fun m!1164731 () Bool)

(assert (=> b!952720 m!1164731))

(declare-fun m!1164733 () Bool)

(assert (=> b!952722 m!1164733))

(declare-fun m!1164735 () Bool)

(assert (=> d!284090 m!1164735))

(assert (=> d!284090 m!1164673))

(assert (=> b!952725 m!1164729))

(assert (=> b!952725 m!1164729))

(assert (=> b!952725 m!1164731))

(declare-fun m!1164737 () Bool)

(assert (=> b!952733 m!1164737))

(assert (=> b!952732 m!1164733))

(assert (=> b!952732 m!1164733))

(declare-fun m!1164739 () Bool)

(assert (=> b!952732 m!1164739))

(assert (=> b!952732 m!1164729))

(assert (=> b!952732 m!1164739))

(assert (=> b!952732 m!1164729))

(declare-fun m!1164741 () Bool)

(assert (=> b!952732 m!1164741))

(assert (=> b!952724 m!1164733))

(assert (=> bm!59804 m!1164735))

(assert (=> b!952437 d!284090))

(declare-fun d!284092 () Bool)

(assert (=> d!284092 (= (get!3314 lt!344774) (v!19629 lt!344774))))

(assert (=> b!952437 d!284092))

(declare-fun b!952744 () Bool)

(declare-fun e!616491 () Bool)

(assert (=> b!952744 (= e!616491 tp_is_empty!4891)))

(declare-fun b!952747 () Bool)

(declare-fun tp!293576 () Bool)

(declare-fun tp!293577 () Bool)

(assert (=> b!952747 (= e!616491 (and tp!293576 tp!293577))))

(declare-fun b!952745 () Bool)

(declare-fun tp!293579 () Bool)

(declare-fun tp!293575 () Bool)

(assert (=> b!952745 (= e!616491 (and tp!293579 tp!293575))))

(declare-fun b!952746 () Bool)

(declare-fun tp!293578 () Bool)

(assert (=> b!952746 (= e!616491 tp!293578)))

(assert (=> b!952436 (= tp!293546 e!616491)))

(assert (= (and b!952436 (is-ElementMatch!2624 (regOne!5761 r!15766))) b!952744))

(assert (= (and b!952436 (is-Concat!4457 (regOne!5761 r!15766))) b!952745))

(assert (= (and b!952436 (is-Star!2624 (regOne!5761 r!15766))) b!952746))

(assert (= (and b!952436 (is-Union!2624 (regOne!5761 r!15766))) b!952747))

(declare-fun b!952748 () Bool)

(declare-fun e!616492 () Bool)

(assert (=> b!952748 (= e!616492 tp_is_empty!4891)))

(declare-fun b!952751 () Bool)

(declare-fun tp!293581 () Bool)

(declare-fun tp!293582 () Bool)

(assert (=> b!952751 (= e!616492 (and tp!293581 tp!293582))))

(declare-fun b!952749 () Bool)

(declare-fun tp!293584 () Bool)

(declare-fun tp!293580 () Bool)

(assert (=> b!952749 (= e!616492 (and tp!293584 tp!293580))))

(declare-fun b!952750 () Bool)

(declare-fun tp!293583 () Bool)

(assert (=> b!952750 (= e!616492 tp!293583)))

(assert (=> b!952436 (= tp!293543 e!616492)))

(assert (= (and b!952436 (is-ElementMatch!2624 (regTwo!5761 r!15766))) b!952748))

(assert (= (and b!952436 (is-Concat!4457 (regTwo!5761 r!15766))) b!952749))

(assert (= (and b!952436 (is-Star!2624 (regTwo!5761 r!15766))) b!952750))

(assert (= (and b!952436 (is-Union!2624 (regTwo!5761 r!15766))) b!952751))

(declare-fun b!952752 () Bool)

(declare-fun e!616493 () Bool)

(assert (=> b!952752 (= e!616493 tp_is_empty!4891)))

(declare-fun b!952755 () Bool)

(declare-fun tp!293586 () Bool)

(declare-fun tp!293587 () Bool)

(assert (=> b!952755 (= e!616493 (and tp!293586 tp!293587))))

(declare-fun b!952753 () Bool)

(declare-fun tp!293589 () Bool)

(declare-fun tp!293585 () Bool)

(assert (=> b!952753 (= e!616493 (and tp!293589 tp!293585))))

(declare-fun b!952754 () Bool)

(declare-fun tp!293588 () Bool)

(assert (=> b!952754 (= e!616493 tp!293588)))

(assert (=> b!952433 (= tp!293544 e!616493)))

(assert (= (and b!952433 (is-ElementMatch!2624 (regOne!5760 r!15766))) b!952752))

(assert (= (and b!952433 (is-Concat!4457 (regOne!5760 r!15766))) b!952753))

(assert (= (and b!952433 (is-Star!2624 (regOne!5760 r!15766))) b!952754))

(assert (= (and b!952433 (is-Union!2624 (regOne!5760 r!15766))) b!952755))

(declare-fun b!952756 () Bool)

(declare-fun e!616494 () Bool)

(assert (=> b!952756 (= e!616494 tp_is_empty!4891)))

(declare-fun b!952759 () Bool)

(declare-fun tp!293591 () Bool)

(declare-fun tp!293592 () Bool)

(assert (=> b!952759 (= e!616494 (and tp!293591 tp!293592))))

(declare-fun b!952757 () Bool)

(declare-fun tp!293594 () Bool)

(declare-fun tp!293590 () Bool)

(assert (=> b!952757 (= e!616494 (and tp!293594 tp!293590))))

(declare-fun b!952758 () Bool)

(declare-fun tp!293593 () Bool)

(assert (=> b!952758 (= e!616494 tp!293593)))

(assert (=> b!952433 (= tp!293545 e!616494)))

(assert (= (and b!952433 (is-ElementMatch!2624 (regTwo!5760 r!15766))) b!952756))

(assert (= (and b!952433 (is-Concat!4457 (regTwo!5760 r!15766))) b!952757))

(assert (= (and b!952433 (is-Star!2624 (regTwo!5760 r!15766))) b!952758))

(assert (= (and b!952433 (is-Union!2624 (regTwo!5760 r!15766))) b!952759))

(declare-fun b!952770 () Bool)

(declare-fun e!616501 () Bool)

(declare-fun tp!293597 () Bool)

(assert (=> b!952770 (= e!616501 (and tp_is_empty!4891 tp!293597))))

(assert (=> b!952434 (= tp!293541 e!616501)))

(assert (= (and b!952434 (is-Cons!9838 (t!100900 s!10566))) b!952770))

(declare-fun b!952773 () Bool)

(declare-fun e!616504 () Bool)

(assert (=> b!952773 (= e!616504 tp_is_empty!4891)))

(declare-fun b!952776 () Bool)

(declare-fun tp!293599 () Bool)

(declare-fun tp!293600 () Bool)

(assert (=> b!952776 (= e!616504 (and tp!293599 tp!293600))))

(declare-fun b!952774 () Bool)

(declare-fun tp!293602 () Bool)

(declare-fun tp!293598 () Bool)

(assert (=> b!952774 (= e!616504 (and tp!293602 tp!293598))))

(declare-fun b!952775 () Bool)

(declare-fun tp!293601 () Bool)

(assert (=> b!952775 (= e!616504 tp!293601)))

(assert (=> b!952438 (= tp!293542 e!616504)))

(assert (= (and b!952438 (is-ElementMatch!2624 (reg!2953 r!15766))) b!952773))

(assert (= (and b!952438 (is-Concat!4457 (reg!2953 r!15766))) b!952774))

(assert (= (and b!952438 (is-Star!2624 (reg!2953 r!15766))) b!952775))

(assert (= (and b!952438 (is-Union!2624 (reg!2953 r!15766))) b!952776))

(push 1)

(assert (not bm!59798))

(assert (not b!952663))

(assert (not b!952658))

(assert (not b!952720))

(assert (not b!952719))

(assert (not b!952505))

(assert (not d!284070))

(assert (not b!952708))

(assert (not b!952706))

(assert (not b!952745))

(assert (not d!284072))

(assert (not d!284082))

(assert (not d!284086))

(assert (not b!952718))

(assert (not b!952774))

(assert (not b!952562))

(assert (not b!952757))

(assert (not b!952770))

(assert (not b!952775))

(assert (not bm!59804))

(assert (not b!952753))

(assert tp_is_empty!4891)

(assert (not b!952749))

(assert (not b!952746))

(assert (not b!952564))

(assert (not d!284068))

(assert (not d!284090))

(assert (not b!952747))

(assert (not b!952759))

(assert (not b!952560))

(assert (not bm!59784))

(assert (not bm!59783))

(assert (not b!952724))

(assert (not b!952755))

(assert (not b!952776))

(assert (not b!952758))

(assert (not d!284074))

(assert (not b!952733))

(assert (not b!952750))

(assert (not d!284078))

(assert (not b!952710))

(assert (not b!952711))

(assert (not d!284064))

(assert (not b!952565))

(assert (not b!952751))

(assert (not b!952557))

(assert (not b!952725))

(assert (not bm!59803))

(assert (not b!952754))

(assert (not b!952722))

(assert (not b!952732))

(assert (not b!952561))

(assert (not bm!59799))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

