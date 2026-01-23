; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!84968 () Bool)

(assert start!84968)

(declare-fun b!953634 () Bool)

(assert (=> b!953634 true))

(assert (=> b!953634 true))

(assert (=> b!953634 true))

(declare-fun lambda!32884 () Int)

(declare-fun lambda!32883 () Int)

(assert (=> b!953634 (not (= lambda!32884 lambda!32883))))

(assert (=> b!953634 true))

(assert (=> b!953634 true))

(assert (=> b!953634 true))

(declare-fun b!953628 () Bool)

(declare-fun e!616967 () Bool)

(declare-fun lt!345058 () Bool)

(assert (=> b!953628 (= e!616967 lt!345058)))

(declare-fun b!953629 () Bool)

(declare-fun e!616966 () Bool)

(declare-fun tp!293875 () Bool)

(declare-fun tp!293876 () Bool)

(assert (=> b!953629 (= e!616966 (and tp!293875 tp!293876))))

(declare-fun b!953630 () Bool)

(declare-fun e!616969 () Bool)

(declare-fun tp_is_empty!4911 () Bool)

(declare-fun tp!293873 () Bool)

(assert (=> b!953630 (= e!616969 (and tp_is_empty!4911 tp!293873))))

(declare-fun res!433356 () Bool)

(declare-fun e!616968 () Bool)

(assert (=> start!84968 (=> (not res!433356) (not e!616968))))

(declare-datatypes ((C!5838 0))(
  ( (C!5839 (val!3167 Int)) )
))
(declare-datatypes ((Regex!2634 0))(
  ( (ElementMatch!2634 (c!155251 C!5838)) (Concat!4467 (regOne!5780 Regex!2634) (regTwo!5780 Regex!2634)) (EmptyExpr!2634) (Star!2634 (reg!2963 Regex!2634)) (EmptyLang!2634) (Union!2634 (regOne!5781 Regex!2634) (regTwo!5781 Regex!2634)) )
))
(declare-fun r!15766 () Regex!2634)

(declare-fun validRegex!1103 (Regex!2634) Bool)

(assert (=> start!84968 (= res!433356 (validRegex!1103 r!15766))))

(assert (=> start!84968 e!616968))

(assert (=> start!84968 e!616966))

(assert (=> start!84968 e!616969))

(declare-fun b!953631 () Bool)

(declare-fun tp!293877 () Bool)

(declare-fun tp!293874 () Bool)

(assert (=> b!953631 (= e!616966 (and tp!293877 tp!293874))))

(declare-fun b!953632 () Bool)

(declare-fun tp!293878 () Bool)

(assert (=> b!953632 (= e!616966 tp!293878)))

(declare-fun b!953633 () Bool)

(assert (=> b!953633 (= e!616966 tp_is_empty!4911)))

(declare-fun e!616970 () Bool)

(assert (=> b!953634 (= e!616970 e!616967)))

(declare-fun res!433357 () Bool)

(assert (=> b!953634 (=> res!433357 e!616967)))

(declare-datatypes ((List!9864 0))(
  ( (Nil!9848) (Cons!9848 (h!15249 C!5838) (t!100910 List!9864)) )
))
(declare-fun s!10566 () List!9864)

(declare-fun isEmpty!6121 (List!9864) Bool)

(assert (=> b!953634 (= res!433357 (isEmpty!6121 s!10566))))

(declare-fun Exists!381 (Int) Bool)

(assert (=> b!953634 (= (Exists!381 lambda!32883) (Exists!381 lambda!32884))))

(declare-datatypes ((Unit!14911 0))(
  ( (Unit!14912) )
))
(declare-fun lt!345056 () Unit!14911)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!109 (Regex!2634 List!9864) Unit!14911)

(assert (=> b!953634 (= lt!345056 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!109 (reg!2963 r!15766) s!10566))))

(assert (=> b!953634 (= lt!345058 (Exists!381 lambda!32883))))

(declare-fun lt!345057 () Regex!2634)

(declare-datatypes ((tuple2!11154 0))(
  ( (tuple2!11155 (_1!6403 List!9864) (_2!6403 List!9864)) )
))
(declare-datatypes ((Option!2219 0))(
  ( (None!2218) (Some!2218 (v!19635 tuple2!11154)) )
))
(declare-fun isDefined!1861 (Option!2219) Bool)

(declare-fun findConcatSeparation!325 (Regex!2634 Regex!2634 List!9864 List!9864 List!9864) Option!2219)

(assert (=> b!953634 (= lt!345058 (isDefined!1861 (findConcatSeparation!325 (reg!2963 r!15766) lt!345057 Nil!9848 s!10566 s!10566)))))

(declare-fun lt!345060 () Unit!14911)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!325 (Regex!2634 Regex!2634 List!9864) Unit!14911)

(assert (=> b!953634 (= lt!345060 (lemmaFindConcatSeparationEquivalentToExists!325 (reg!2963 r!15766) lt!345057 s!10566))))

(assert (=> b!953634 (= lt!345057 (Star!2634 (reg!2963 r!15766)))))

(declare-fun b!953635 () Bool)

(assert (=> b!953635 (= e!616968 (not e!616970))))

(declare-fun res!433355 () Bool)

(assert (=> b!953635 (=> res!433355 e!616970)))

(declare-fun lt!345061 () Bool)

(assert (=> b!953635 (= res!433355 (or (not lt!345061) (and (is-Concat!4467 r!15766) (is-EmptyExpr!2634 (regOne!5780 r!15766))) (and (is-Concat!4467 r!15766) (is-EmptyExpr!2634 (regTwo!5780 r!15766))) (is-Concat!4467 r!15766) (is-Union!2634 r!15766) (not (is-Star!2634 r!15766))))))

(declare-fun matchRSpec!435 (Regex!2634 List!9864) Bool)

(assert (=> b!953635 (= lt!345061 (matchRSpec!435 r!15766 s!10566))))

(declare-fun matchR!1172 (Regex!2634 List!9864) Bool)

(assert (=> b!953635 (= lt!345061 (matchR!1172 r!15766 s!10566))))

(declare-fun lt!345059 () Unit!14911)

(declare-fun mainMatchTheorem!435 (Regex!2634 List!9864) Unit!14911)

(assert (=> b!953635 (= lt!345059 (mainMatchTheorem!435 r!15766 s!10566))))

(assert (= (and start!84968 res!433356) b!953635))

(assert (= (and b!953635 (not res!433355)) b!953634))

(assert (= (and b!953634 (not res!433357)) b!953628))

(assert (= (and start!84968 (is-ElementMatch!2634 r!15766)) b!953633))

(assert (= (and start!84968 (is-Concat!4467 r!15766)) b!953631))

(assert (= (and start!84968 (is-Star!2634 r!15766)) b!953632))

(assert (= (and start!84968 (is-Union!2634 r!15766)) b!953629))

(assert (= (and start!84968 (is-Cons!9848 s!10566)) b!953630))

(declare-fun m!1165217 () Bool)

(assert (=> start!84968 m!1165217))

(declare-fun m!1165219 () Bool)

(assert (=> b!953634 m!1165219))

(declare-fun m!1165221 () Bool)

(assert (=> b!953634 m!1165221))

(declare-fun m!1165223 () Bool)

(assert (=> b!953634 m!1165223))

(declare-fun m!1165225 () Bool)

(assert (=> b!953634 m!1165225))

(declare-fun m!1165227 () Bool)

(assert (=> b!953634 m!1165227))

(declare-fun m!1165229 () Bool)

(assert (=> b!953634 m!1165229))

(assert (=> b!953634 m!1165225))

(declare-fun m!1165231 () Bool)

(assert (=> b!953634 m!1165231))

(assert (=> b!953634 m!1165219))

(declare-fun m!1165233 () Bool)

(assert (=> b!953635 m!1165233))

(declare-fun m!1165235 () Bool)

(assert (=> b!953635 m!1165235))

(declare-fun m!1165237 () Bool)

(assert (=> b!953635 m!1165237))

(push 1)

(assert (not b!953631))

(assert (not b!953635))

(assert (not b!953629))

(assert (not b!953634))

(assert (not b!953630))

(assert (not b!953632))

(assert (not start!84968))

(assert tp_is_empty!4911)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!240287 () Bool)

(declare-fun b!953722 () Bool)

(assert (= bs!240287 (and b!953722 b!953634)))

(declare-fun lambda!32897 () Int)

(assert (=> bs!240287 (not (= lambda!32897 lambda!32883))))

(assert (=> bs!240287 (= (= r!15766 lt!345057) (= lambda!32897 lambda!32884))))

(assert (=> b!953722 true))

(assert (=> b!953722 true))

(declare-fun bs!240288 () Bool)

(declare-fun b!953715 () Bool)

(assert (= bs!240288 (and b!953715 b!953634)))

(declare-fun lambda!32898 () Int)

(assert (=> bs!240288 (not (= lambda!32898 lambda!32883))))

(assert (=> bs!240288 (not (= lambda!32898 lambda!32884))))

(declare-fun bs!240289 () Bool)

(assert (= bs!240289 (and b!953715 b!953722)))

(assert (=> bs!240289 (not (= lambda!32898 lambda!32897))))

(assert (=> b!953715 true))

(assert (=> b!953715 true))

(declare-fun b!953714 () Bool)

(declare-fun e!617013 () Bool)

(declare-fun e!617012 () Bool)

(assert (=> b!953714 (= e!617013 e!617012)))

(declare-fun c!155264 () Bool)

(assert (=> b!953714 (= c!155264 (is-Star!2634 r!15766))))

(declare-fun call!59864 () Bool)

(assert (=> b!953715 (= e!617012 call!59864)))

(declare-fun b!953716 () Bool)

(declare-fun c!155262 () Bool)

(assert (=> b!953716 (= c!155262 (is-ElementMatch!2634 r!15766))))

(declare-fun e!617010 () Bool)

(declare-fun e!617015 () Bool)

(assert (=> b!953716 (= e!617010 e!617015)))

(declare-fun b!953717 () Bool)

(declare-fun c!155263 () Bool)

(assert (=> b!953717 (= c!155263 (is-Union!2634 r!15766))))

(assert (=> b!953717 (= e!617015 e!617013)))

(declare-fun d!284173 () Bool)

(declare-fun c!155261 () Bool)

(assert (=> d!284173 (= c!155261 (is-EmptyExpr!2634 r!15766))))

(declare-fun e!617016 () Bool)

(assert (=> d!284173 (= (matchRSpec!435 r!15766 s!10566) e!617016)))

(declare-fun b!953718 () Bool)

(declare-fun call!59865 () Bool)

(assert (=> b!953718 (= e!617016 call!59865)))

(declare-fun b!953719 () Bool)

(declare-fun res!433399 () Bool)

(declare-fun e!617011 () Bool)

(assert (=> b!953719 (=> res!433399 e!617011)))

(assert (=> b!953719 (= res!433399 call!59865)))

(assert (=> b!953719 (= e!617012 e!617011)))

(declare-fun b!953720 () Bool)

(assert (=> b!953720 (= e!617016 e!617010)))

(declare-fun res!433398 () Bool)

(assert (=> b!953720 (= res!433398 (not (is-EmptyLang!2634 r!15766)))))

(assert (=> b!953720 (=> (not res!433398) (not e!617010))))

(declare-fun bm!59859 () Bool)

(assert (=> bm!59859 (= call!59864 (Exists!381 (ite c!155264 lambda!32897 lambda!32898)))))

(declare-fun bm!59860 () Bool)

(assert (=> bm!59860 (= call!59865 (isEmpty!6121 s!10566))))

(declare-fun b!953721 () Bool)

(assert (=> b!953721 (= e!617015 (= s!10566 (Cons!9848 (c!155251 r!15766) Nil!9848)))))

(assert (=> b!953722 (= e!617011 call!59864)))

(declare-fun b!953723 () Bool)

(declare-fun e!617014 () Bool)

(assert (=> b!953723 (= e!617013 e!617014)))

(declare-fun res!433397 () Bool)

(assert (=> b!953723 (= res!433397 (matchRSpec!435 (regOne!5781 r!15766) s!10566))))

(assert (=> b!953723 (=> res!433397 e!617014)))

(declare-fun b!953724 () Bool)

(assert (=> b!953724 (= e!617014 (matchRSpec!435 (regTwo!5781 r!15766) s!10566))))

(assert (= (and d!284173 c!155261) b!953718))

(assert (= (and d!284173 (not c!155261)) b!953720))

(assert (= (and b!953720 res!433398) b!953716))

(assert (= (and b!953716 c!155262) b!953721))

(assert (= (and b!953716 (not c!155262)) b!953717))

(assert (= (and b!953717 c!155263) b!953723))

(assert (= (and b!953717 (not c!155263)) b!953714))

(assert (= (and b!953723 (not res!433397)) b!953724))

(assert (= (and b!953714 c!155264) b!953719))

(assert (= (and b!953714 (not c!155264)) b!953715))

(assert (= (and b!953719 (not res!433399)) b!953722))

(assert (= (or b!953722 b!953715) bm!59859))

(assert (= (or b!953718 b!953719) bm!59860))

(declare-fun m!1165263 () Bool)

(assert (=> bm!59859 m!1165263))

(assert (=> bm!59860 m!1165227))

(declare-fun m!1165265 () Bool)

(assert (=> b!953723 m!1165265))

(declare-fun m!1165267 () Bool)

(assert (=> b!953724 m!1165267))

(assert (=> b!953635 d!284173))

(declare-fun b!953757 () Bool)

(declare-fun e!617038 () Bool)

(declare-fun head!1745 (List!9864) C!5838)

(assert (=> b!953757 (= e!617038 (= (head!1745 s!10566) (c!155251 r!15766)))))

(declare-fun b!953758 () Bool)

(declare-fun e!617036 () Bool)

(declare-fun lt!345085 () Bool)

(assert (=> b!953758 (= e!617036 (not lt!345085))))

(declare-fun b!953759 () Bool)

(declare-fun e!617034 () Bool)

(assert (=> b!953759 (= e!617034 (not (= (head!1745 s!10566) (c!155251 r!15766))))))

(declare-fun b!953760 () Bool)

(declare-fun e!617035 () Bool)

(declare-fun call!59868 () Bool)

(assert (=> b!953760 (= e!617035 (= lt!345085 call!59868))))

(declare-fun b!953761 () Bool)

(declare-fun e!617039 () Bool)

(declare-fun nullable!783 (Regex!2634) Bool)

(assert (=> b!953761 (= e!617039 (nullable!783 r!15766))))

(declare-fun b!953762 () Bool)

(declare-fun res!433426 () Bool)

(declare-fun e!617037 () Bool)

(assert (=> b!953762 (=> res!433426 e!617037)))

(assert (=> b!953762 (= res!433426 e!617038)))

(declare-fun res!433427 () Bool)

(assert (=> b!953762 (=> (not res!433427) (not e!617038))))

(assert (=> b!953762 (= res!433427 lt!345085)))

(declare-fun b!953763 () Bool)

(declare-fun res!433422 () Bool)

(assert (=> b!953763 (=> (not res!433422) (not e!617038))))

(assert (=> b!953763 (= res!433422 (not call!59868))))

(declare-fun b!953764 () Bool)

(declare-fun e!617033 () Bool)

(assert (=> b!953764 (= e!617033 e!617034)))

(declare-fun res!433421 () Bool)

(assert (=> b!953764 (=> res!433421 e!617034)))

(assert (=> b!953764 (= res!433421 call!59868)))

(declare-fun b!953765 () Bool)

(declare-fun res!433420 () Bool)

(assert (=> b!953765 (=> res!433420 e!617034)))

(declare-fun tail!1307 (List!9864) List!9864)

(assert (=> b!953765 (= res!433420 (not (isEmpty!6121 (tail!1307 s!10566))))))

(declare-fun b!953766 () Bool)

(assert (=> b!953766 (= e!617035 e!617036)))

(declare-fun c!155272 () Bool)

(assert (=> b!953766 (= c!155272 (is-EmptyLang!2634 r!15766))))

(declare-fun b!953767 () Bool)

(assert (=> b!953767 (= e!617037 e!617033)))

(declare-fun res!433424 () Bool)

(assert (=> b!953767 (=> (not res!433424) (not e!617033))))

(assert (=> b!953767 (= res!433424 (not lt!345085))))

(declare-fun b!953768 () Bool)

(declare-fun res!433423 () Bool)

(assert (=> b!953768 (=> (not res!433423) (not e!617038))))

(assert (=> b!953768 (= res!433423 (isEmpty!6121 (tail!1307 s!10566)))))

(declare-fun b!953769 () Bool)

(declare-fun res!433425 () Bool)

(assert (=> b!953769 (=> res!433425 e!617037)))

(assert (=> b!953769 (= res!433425 (not (is-ElementMatch!2634 r!15766)))))

(assert (=> b!953769 (= e!617036 e!617037)))

(declare-fun b!953770 () Bool)

(declare-fun derivativeStep!592 (Regex!2634 C!5838) Regex!2634)

(assert (=> b!953770 (= e!617039 (matchR!1172 (derivativeStep!592 r!15766 (head!1745 s!10566)) (tail!1307 s!10566)))))

(declare-fun bm!59863 () Bool)

(assert (=> bm!59863 (= call!59868 (isEmpty!6121 s!10566))))

(declare-fun d!284181 () Bool)

(assert (=> d!284181 e!617035))

(declare-fun c!155271 () Bool)

(assert (=> d!284181 (= c!155271 (is-EmptyExpr!2634 r!15766))))

(assert (=> d!284181 (= lt!345085 e!617039)))

(declare-fun c!155273 () Bool)

(assert (=> d!284181 (= c!155273 (isEmpty!6121 s!10566))))

(assert (=> d!284181 (validRegex!1103 r!15766)))

(assert (=> d!284181 (= (matchR!1172 r!15766 s!10566) lt!345085)))

(assert (= (and d!284181 c!155273) b!953761))

(assert (= (and d!284181 (not c!155273)) b!953770))

(assert (= (and d!284181 c!155271) b!953760))

(assert (= (and d!284181 (not c!155271)) b!953766))

(assert (= (and b!953766 c!155272) b!953758))

(assert (= (and b!953766 (not c!155272)) b!953769))

(assert (= (and b!953769 (not res!433425)) b!953762))

(assert (= (and b!953762 res!433427) b!953763))

(assert (= (and b!953763 res!433422) b!953768))

(assert (= (and b!953768 res!433423) b!953757))

(assert (= (and b!953762 (not res!433426)) b!953767))

(assert (= (and b!953767 res!433424) b!953764))

(assert (= (and b!953764 (not res!433421)) b!953765))

(assert (= (and b!953765 (not res!433420)) b!953759))

(assert (= (or b!953760 b!953763 b!953764) bm!59863))

(assert (=> d!284181 m!1165227))

(assert (=> d!284181 m!1165217))

(assert (=> bm!59863 m!1165227))

(declare-fun m!1165275 () Bool)

(assert (=> b!953768 m!1165275))

(assert (=> b!953768 m!1165275))

(declare-fun m!1165277 () Bool)

(assert (=> b!953768 m!1165277))

(declare-fun m!1165279 () Bool)

(assert (=> b!953761 m!1165279))

(declare-fun m!1165281 () Bool)

(assert (=> b!953759 m!1165281))

(assert (=> b!953757 m!1165281))

(assert (=> b!953770 m!1165281))

(assert (=> b!953770 m!1165281))

(declare-fun m!1165283 () Bool)

(assert (=> b!953770 m!1165283))

(assert (=> b!953770 m!1165275))

(assert (=> b!953770 m!1165283))

(assert (=> b!953770 m!1165275))

(declare-fun m!1165285 () Bool)

(assert (=> b!953770 m!1165285))

(assert (=> b!953765 m!1165275))

(assert (=> b!953765 m!1165275))

(assert (=> b!953765 m!1165277))

(assert (=> b!953635 d!284181))

(declare-fun d!284185 () Bool)

(assert (=> d!284185 (= (matchR!1172 r!15766 s!10566) (matchRSpec!435 r!15766 s!10566))))

(declare-fun lt!345088 () Unit!14911)

(declare-fun choose!5962 (Regex!2634 List!9864) Unit!14911)

(assert (=> d!284185 (= lt!345088 (choose!5962 r!15766 s!10566))))

(assert (=> d!284185 (validRegex!1103 r!15766)))

(assert (=> d!284185 (= (mainMatchTheorem!435 r!15766 s!10566) lt!345088)))

(declare-fun bs!240292 () Bool)

(assert (= bs!240292 d!284185))

(assert (=> bs!240292 m!1165235))

(assert (=> bs!240292 m!1165233))

(declare-fun m!1165287 () Bool)

(assert (=> bs!240292 m!1165287))

(assert (=> bs!240292 m!1165217))

(assert (=> b!953635 d!284185))

(declare-fun b!953789 () Bool)

(declare-fun e!617055 () Bool)

(declare-fun e!617056 () Bool)

(assert (=> b!953789 (= e!617055 e!617056)))

(declare-fun res!433439 () Bool)

(assert (=> b!953789 (=> (not res!433439) (not e!617056))))

(declare-fun call!59877 () Bool)

(assert (=> b!953789 (= res!433439 call!59877)))

(declare-fun b!953790 () Bool)

(declare-fun call!59876 () Bool)

(assert (=> b!953790 (= e!617056 call!59876)))

(declare-fun bm!59870 () Bool)

(declare-fun c!155278 () Bool)

(declare-fun c!155279 () Bool)

(declare-fun call!59875 () Bool)

(assert (=> bm!59870 (= call!59875 (validRegex!1103 (ite c!155279 (reg!2963 r!15766) (ite c!155278 (regTwo!5781 r!15766) (regTwo!5780 r!15766)))))))

(declare-fun b!953791 () Bool)

(declare-fun e!617059 () Bool)

(assert (=> b!953791 (= e!617059 call!59876)))

(declare-fun b!953792 () Bool)

(declare-fun res!433440 () Bool)

(assert (=> b!953792 (=> res!433440 e!617055)))

(assert (=> b!953792 (= res!433440 (not (is-Concat!4467 r!15766)))))

(declare-fun e!617057 () Bool)

(assert (=> b!953792 (= e!617057 e!617055)))

(declare-fun d!284187 () Bool)

(declare-fun res!433441 () Bool)

(declare-fun e!617058 () Bool)

(assert (=> d!284187 (=> res!433441 e!617058)))

(assert (=> d!284187 (= res!433441 (is-ElementMatch!2634 r!15766))))

(assert (=> d!284187 (= (validRegex!1103 r!15766) e!617058)))

(declare-fun bm!59871 () Bool)

(assert (=> bm!59871 (= call!59876 call!59875)))

(declare-fun b!953793 () Bool)

(declare-fun e!617054 () Bool)

(assert (=> b!953793 (= e!617058 e!617054)))

(assert (=> b!953793 (= c!155279 (is-Star!2634 r!15766))))

(declare-fun b!953794 () Bool)

(assert (=> b!953794 (= e!617054 e!617057)))

(assert (=> b!953794 (= c!155278 (is-Union!2634 r!15766))))

(declare-fun bm!59872 () Bool)

(assert (=> bm!59872 (= call!59877 (validRegex!1103 (ite c!155278 (regOne!5781 r!15766) (regOne!5780 r!15766))))))

(declare-fun b!953795 () Bool)

(declare-fun e!617060 () Bool)

(assert (=> b!953795 (= e!617054 e!617060)))

(declare-fun res!433442 () Bool)

(assert (=> b!953795 (= res!433442 (not (nullable!783 (reg!2963 r!15766))))))

(assert (=> b!953795 (=> (not res!433442) (not e!617060))))

(declare-fun b!953796 () Bool)

(declare-fun res!433438 () Bool)

(assert (=> b!953796 (=> (not res!433438) (not e!617059))))

(assert (=> b!953796 (= res!433438 call!59877)))

(assert (=> b!953796 (= e!617057 e!617059)))

(declare-fun b!953797 () Bool)

(assert (=> b!953797 (= e!617060 call!59875)))

(assert (= (and d!284187 (not res!433441)) b!953793))

(assert (= (and b!953793 c!155279) b!953795))

(assert (= (and b!953793 (not c!155279)) b!953794))

(assert (= (and b!953795 res!433442) b!953797))

(assert (= (and b!953794 c!155278) b!953796))

(assert (= (and b!953794 (not c!155278)) b!953792))

(assert (= (and b!953796 res!433438) b!953791))

(assert (= (and b!953792 (not res!433440)) b!953789))

(assert (= (and b!953789 res!433439) b!953790))

(assert (= (or b!953791 b!953790) bm!59871))

(assert (= (or b!953796 b!953789) bm!59872))

(assert (= (or b!953797 bm!59871) bm!59870))

(declare-fun m!1165289 () Bool)

(assert (=> bm!59870 m!1165289))

(declare-fun m!1165291 () Bool)

(assert (=> bm!59872 m!1165291))

(declare-fun m!1165293 () Bool)

(assert (=> b!953795 m!1165293))

(assert (=> start!84968 d!284187))

(declare-fun d!284189 () Bool)

(declare-fun choose!5963 (Int) Bool)

(assert (=> d!284189 (= (Exists!381 lambda!32883) (choose!5963 lambda!32883))))

(declare-fun bs!240293 () Bool)

(assert (= bs!240293 d!284189))

(declare-fun m!1165295 () Bool)

(assert (=> bs!240293 m!1165295))

(assert (=> b!953634 d!284189))

(declare-fun d!284191 () Bool)

(assert (=> d!284191 (= (isEmpty!6121 s!10566) (is-Nil!9848 s!10566))))

(assert (=> b!953634 d!284191))

(declare-fun bs!240294 () Bool)

(declare-fun d!284193 () Bool)

(assert (= bs!240294 (and d!284193 b!953634)))

(declare-fun lambda!32906 () Int)

(assert (=> bs!240294 (= (= (Star!2634 (reg!2963 r!15766)) lt!345057) (= lambda!32906 lambda!32883))))

(assert (=> bs!240294 (not (= lambda!32906 lambda!32884))))

(declare-fun bs!240295 () Bool)

(assert (= bs!240295 (and d!284193 b!953722)))

(assert (=> bs!240295 (not (= lambda!32906 lambda!32897))))

(declare-fun bs!240296 () Bool)

(assert (= bs!240296 (and d!284193 b!953715)))

(assert (=> bs!240296 (not (= lambda!32906 lambda!32898))))

(assert (=> d!284193 true))

(assert (=> d!284193 true))

(declare-fun lambda!32907 () Int)

(assert (=> bs!240296 (not (= lambda!32907 lambda!32898))))

(assert (=> bs!240295 (= (= (Star!2634 (reg!2963 r!15766)) r!15766) (= lambda!32907 lambda!32897))))

(declare-fun bs!240297 () Bool)

(assert (= bs!240297 d!284193))

(assert (=> bs!240297 (not (= lambda!32907 lambda!32906))))

(assert (=> bs!240294 (= (= (Star!2634 (reg!2963 r!15766)) lt!345057) (= lambda!32907 lambda!32884))))

(assert (=> bs!240294 (not (= lambda!32907 lambda!32883))))

(assert (=> d!284193 true))

(assert (=> d!284193 true))

(assert (=> d!284193 (= (Exists!381 lambda!32906) (Exists!381 lambda!32907))))

(declare-fun lt!345097 () Unit!14911)

(declare-fun choose!5964 (Regex!2634 List!9864) Unit!14911)

(assert (=> d!284193 (= lt!345097 (choose!5964 (reg!2963 r!15766) s!10566))))

(assert (=> d!284193 (validRegex!1103 (reg!2963 r!15766))))

(assert (=> d!284193 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!109 (reg!2963 r!15766) s!10566) lt!345097)))

(declare-fun m!1165297 () Bool)

(assert (=> bs!240297 m!1165297))

(declare-fun m!1165299 () Bool)

(assert (=> bs!240297 m!1165299))

(declare-fun m!1165301 () Bool)

(assert (=> bs!240297 m!1165301))

(declare-fun m!1165303 () Bool)

(assert (=> bs!240297 m!1165303))

(assert (=> b!953634 d!284193))

(declare-fun d!284195 () Bool)

(declare-fun isEmpty!6123 (Option!2219) Bool)

(assert (=> d!284195 (= (isDefined!1861 (findConcatSeparation!325 (reg!2963 r!15766) lt!345057 Nil!9848 s!10566 s!10566)) (not (isEmpty!6123 (findConcatSeparation!325 (reg!2963 r!15766) lt!345057 Nil!9848 s!10566 s!10566))))))

(declare-fun bs!240298 () Bool)

(assert (= bs!240298 d!284195))

(assert (=> bs!240298 m!1165225))

(declare-fun m!1165305 () Bool)

(assert (=> bs!240298 m!1165305))

(assert (=> b!953634 d!284195))

(declare-fun d!284197 () Bool)

(assert (=> d!284197 (= (Exists!381 lambda!32884) (choose!5963 lambda!32884))))

(declare-fun bs!240299 () Bool)

(assert (= bs!240299 d!284197))

(declare-fun m!1165307 () Bool)

(assert (=> bs!240299 m!1165307))

(assert (=> b!953634 d!284197))

(declare-fun bs!240300 () Bool)

(declare-fun d!284199 () Bool)

(assert (= bs!240300 (and d!284199 b!953715)))

(declare-fun lambda!32910 () Int)

(assert (=> bs!240300 (not (= lambda!32910 lambda!32898))))

(declare-fun bs!240301 () Bool)

(assert (= bs!240301 (and d!284199 b!953722)))

(assert (=> bs!240301 (not (= lambda!32910 lambda!32897))))

(declare-fun bs!240302 () Bool)

(assert (= bs!240302 (and d!284199 d!284193)))

(assert (=> bs!240302 (= (= lt!345057 (Star!2634 (reg!2963 r!15766))) (= lambda!32910 lambda!32906))))

(declare-fun bs!240303 () Bool)

(assert (= bs!240303 (and d!284199 b!953634)))

(assert (=> bs!240303 (= lambda!32910 lambda!32883)))

(assert (=> bs!240302 (not (= lambda!32910 lambda!32907))))

(assert (=> bs!240303 (not (= lambda!32910 lambda!32884))))

(assert (=> d!284199 true))

(assert (=> d!284199 true))

(assert (=> d!284199 true))

(assert (=> d!284199 (= (isDefined!1861 (findConcatSeparation!325 (reg!2963 r!15766) lt!345057 Nil!9848 s!10566 s!10566)) (Exists!381 lambda!32910))))

(declare-fun lt!345103 () Unit!14911)

(declare-fun choose!5965 (Regex!2634 Regex!2634 List!9864) Unit!14911)

(assert (=> d!284199 (= lt!345103 (choose!5965 (reg!2963 r!15766) lt!345057 s!10566))))

(assert (=> d!284199 (validRegex!1103 (reg!2963 r!15766))))

(assert (=> d!284199 (= (lemmaFindConcatSeparationEquivalentToExists!325 (reg!2963 r!15766) lt!345057 s!10566) lt!345103)))

(declare-fun bs!240305 () Bool)

(assert (= bs!240305 d!284199))

(assert (=> bs!240305 m!1165225))

(declare-fun m!1165333 () Bool)

(assert (=> bs!240305 m!1165333))

(assert (=> bs!240305 m!1165303))

(assert (=> bs!240305 m!1165225))

(assert (=> bs!240305 m!1165231))

(declare-fun m!1165335 () Bool)

(assert (=> bs!240305 m!1165335))

(assert (=> b!953634 d!284199))

(declare-fun b!953857 () Bool)

(declare-fun e!617093 () Bool)

(assert (=> b!953857 (= e!617093 (matchR!1172 lt!345057 s!10566))))

(declare-fun b!953858 () Bool)

(declare-fun res!433486 () Bool)

(declare-fun e!617095 () Bool)

(assert (=> b!953858 (=> (not res!433486) (not e!617095))))

(declare-fun lt!345113 () Option!2219)

(declare-fun get!3325 (Option!2219) tuple2!11154)

(assert (=> b!953858 (= res!433486 (matchR!1172 (reg!2963 r!15766) (_1!6403 (get!3325 lt!345113))))))

(declare-fun d!284205 () Bool)

(declare-fun e!617094 () Bool)

(assert (=> d!284205 e!617094))

(declare-fun res!433485 () Bool)

(assert (=> d!284205 (=> res!433485 e!617094)))

(assert (=> d!284205 (= res!433485 e!617095)))

(declare-fun res!433484 () Bool)

(assert (=> d!284205 (=> (not res!433484) (not e!617095))))

(assert (=> d!284205 (= res!433484 (isDefined!1861 lt!345113))))

(declare-fun e!617096 () Option!2219)

(assert (=> d!284205 (= lt!345113 e!617096)))

(declare-fun c!155290 () Bool)

(assert (=> d!284205 (= c!155290 e!617093)))

(declare-fun res!433483 () Bool)

(assert (=> d!284205 (=> (not res!433483) (not e!617093))))

(assert (=> d!284205 (= res!433483 (matchR!1172 (reg!2963 r!15766) Nil!9848))))

(assert (=> d!284205 (validRegex!1103 (reg!2963 r!15766))))

(assert (=> d!284205 (= (findConcatSeparation!325 (reg!2963 r!15766) lt!345057 Nil!9848 s!10566 s!10566) lt!345113)))

(declare-fun b!953859 () Bool)

(assert (=> b!953859 (= e!617096 (Some!2218 (tuple2!11155 Nil!9848 s!10566)))))

(declare-fun b!953860 () Bool)

(declare-fun ++!2638 (List!9864 List!9864) List!9864)

(assert (=> b!953860 (= e!617095 (= (++!2638 (_1!6403 (get!3325 lt!345113)) (_2!6403 (get!3325 lt!345113))) s!10566))))

(declare-fun b!953861 () Bool)

(declare-fun lt!345112 () Unit!14911)

(declare-fun lt!345114 () Unit!14911)

(assert (=> b!953861 (= lt!345112 lt!345114)))

(assert (=> b!953861 (= (++!2638 (++!2638 Nil!9848 (Cons!9848 (h!15249 s!10566) Nil!9848)) (t!100910 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!247 (List!9864 C!5838 List!9864 List!9864) Unit!14911)

(assert (=> b!953861 (= lt!345114 (lemmaMoveElementToOtherListKeepsConcatEq!247 Nil!9848 (h!15249 s!10566) (t!100910 s!10566) s!10566))))

(declare-fun e!617092 () Option!2219)

(assert (=> b!953861 (= e!617092 (findConcatSeparation!325 (reg!2963 r!15766) lt!345057 (++!2638 Nil!9848 (Cons!9848 (h!15249 s!10566) Nil!9848)) (t!100910 s!10566) s!10566))))

(declare-fun b!953862 () Bool)

(assert (=> b!953862 (= e!617094 (not (isDefined!1861 lt!345113)))))

(declare-fun b!953863 () Bool)

(assert (=> b!953863 (= e!617092 None!2218)))

(declare-fun b!953864 () Bool)

(declare-fun res!433482 () Bool)

(assert (=> b!953864 (=> (not res!433482) (not e!617095))))

(assert (=> b!953864 (= res!433482 (matchR!1172 lt!345057 (_2!6403 (get!3325 lt!345113))))))

(declare-fun b!953865 () Bool)

(assert (=> b!953865 (= e!617096 e!617092)))

(declare-fun c!155291 () Bool)

(assert (=> b!953865 (= c!155291 (is-Nil!9848 s!10566))))

(assert (= (and d!284205 res!433483) b!953857))

(assert (= (and d!284205 c!155290) b!953859))

(assert (= (and d!284205 (not c!155290)) b!953865))

(assert (= (and b!953865 c!155291) b!953863))

(assert (= (and b!953865 (not c!155291)) b!953861))

(assert (= (and d!284205 res!433484) b!953858))

(assert (= (and b!953858 res!433486) b!953864))

(assert (= (and b!953864 res!433482) b!953860))

(assert (= (and d!284205 (not res!433485)) b!953862))

(declare-fun m!1165337 () Bool)

(assert (=> b!953860 m!1165337))

(declare-fun m!1165339 () Bool)

(assert (=> b!953860 m!1165339))

(declare-fun m!1165341 () Bool)

(assert (=> b!953861 m!1165341))

(assert (=> b!953861 m!1165341))

(declare-fun m!1165343 () Bool)

(assert (=> b!953861 m!1165343))

(declare-fun m!1165345 () Bool)

(assert (=> b!953861 m!1165345))

(assert (=> b!953861 m!1165341))

(declare-fun m!1165347 () Bool)

(assert (=> b!953861 m!1165347))

(declare-fun m!1165349 () Bool)

(assert (=> d!284205 m!1165349))

(declare-fun m!1165351 () Bool)

(assert (=> d!284205 m!1165351))

(assert (=> d!284205 m!1165303))

(assert (=> b!953858 m!1165337))

(declare-fun m!1165353 () Bool)

(assert (=> b!953858 m!1165353))

(assert (=> b!953864 m!1165337))

(declare-fun m!1165355 () Bool)

(assert (=> b!953864 m!1165355))

(declare-fun m!1165357 () Bool)

(assert (=> b!953857 m!1165357))

(assert (=> b!953862 m!1165349))

(assert (=> b!953634 d!284205))

(declare-fun b!953883 () Bool)

(declare-fun e!617101 () Bool)

(declare-fun tp!293909 () Bool)

(declare-fun tp!293908 () Bool)

(assert (=> b!953883 (= e!617101 (and tp!293909 tp!293908))))

(assert (=> b!953631 (= tp!293877 e!617101)))

(declare-fun b!953882 () Bool)

(declare-fun tp!293910 () Bool)

(assert (=> b!953882 (= e!617101 tp!293910)))

(declare-fun b!953880 () Bool)

(assert (=> b!953880 (= e!617101 tp_is_empty!4911)))

(declare-fun b!953881 () Bool)

(declare-fun tp!293907 () Bool)

(declare-fun tp!293911 () Bool)

(assert (=> b!953881 (= e!617101 (and tp!293907 tp!293911))))

(assert (= (and b!953631 (is-ElementMatch!2634 (regOne!5780 r!15766))) b!953880))

(assert (= (and b!953631 (is-Concat!4467 (regOne!5780 r!15766))) b!953881))

(assert (= (and b!953631 (is-Star!2634 (regOne!5780 r!15766))) b!953882))

(assert (= (and b!953631 (is-Union!2634 (regOne!5780 r!15766))) b!953883))

(declare-fun b!953887 () Bool)

(declare-fun e!617102 () Bool)

(declare-fun tp!293914 () Bool)

(declare-fun tp!293913 () Bool)

(assert (=> b!953887 (= e!617102 (and tp!293914 tp!293913))))

(assert (=> b!953631 (= tp!293874 e!617102)))

(declare-fun b!953886 () Bool)

(declare-fun tp!293915 () Bool)

(assert (=> b!953886 (= e!617102 tp!293915)))

(declare-fun b!953884 () Bool)

(assert (=> b!953884 (= e!617102 tp_is_empty!4911)))

(declare-fun b!953885 () Bool)

(declare-fun tp!293912 () Bool)

(declare-fun tp!293916 () Bool)

(assert (=> b!953885 (= e!617102 (and tp!293912 tp!293916))))

(assert (= (and b!953631 (is-ElementMatch!2634 (regTwo!5780 r!15766))) b!953884))

(assert (= (and b!953631 (is-Concat!4467 (regTwo!5780 r!15766))) b!953885))

(assert (= (and b!953631 (is-Star!2634 (regTwo!5780 r!15766))) b!953886))

(assert (= (and b!953631 (is-Union!2634 (regTwo!5780 r!15766))) b!953887))

(declare-fun b!953892 () Bool)

(declare-fun e!617105 () Bool)

(declare-fun tp!293919 () Bool)

(assert (=> b!953892 (= e!617105 (and tp_is_empty!4911 tp!293919))))

(assert (=> b!953630 (= tp!293873 e!617105)))

(assert (= (and b!953630 (is-Cons!9848 (t!100910 s!10566))) b!953892))

(declare-fun b!953896 () Bool)

(declare-fun e!617106 () Bool)

(declare-fun tp!293922 () Bool)

(declare-fun tp!293921 () Bool)

(assert (=> b!953896 (= e!617106 (and tp!293922 tp!293921))))

(assert (=> b!953629 (= tp!293875 e!617106)))

(declare-fun b!953895 () Bool)

(declare-fun tp!293923 () Bool)

(assert (=> b!953895 (= e!617106 tp!293923)))

(declare-fun b!953893 () Bool)

(assert (=> b!953893 (= e!617106 tp_is_empty!4911)))

(declare-fun b!953894 () Bool)

(declare-fun tp!293920 () Bool)

(declare-fun tp!293924 () Bool)

(assert (=> b!953894 (= e!617106 (and tp!293920 tp!293924))))

(assert (= (and b!953629 (is-ElementMatch!2634 (regOne!5781 r!15766))) b!953893))

(assert (= (and b!953629 (is-Concat!4467 (regOne!5781 r!15766))) b!953894))

(assert (= (and b!953629 (is-Star!2634 (regOne!5781 r!15766))) b!953895))

(assert (= (and b!953629 (is-Union!2634 (regOne!5781 r!15766))) b!953896))

(declare-fun b!953900 () Bool)

(declare-fun e!617107 () Bool)

(declare-fun tp!293927 () Bool)

(declare-fun tp!293926 () Bool)

(assert (=> b!953900 (= e!617107 (and tp!293927 tp!293926))))

(assert (=> b!953629 (= tp!293876 e!617107)))

(declare-fun b!953899 () Bool)

(declare-fun tp!293928 () Bool)

(assert (=> b!953899 (= e!617107 tp!293928)))

(declare-fun b!953897 () Bool)

(assert (=> b!953897 (= e!617107 tp_is_empty!4911)))

(declare-fun b!953898 () Bool)

(declare-fun tp!293925 () Bool)

(declare-fun tp!293929 () Bool)

(assert (=> b!953898 (= e!617107 (and tp!293925 tp!293929))))

(assert (= (and b!953629 (is-ElementMatch!2634 (regTwo!5781 r!15766))) b!953897))

(assert (= (and b!953629 (is-Concat!4467 (regTwo!5781 r!15766))) b!953898))

(assert (= (and b!953629 (is-Star!2634 (regTwo!5781 r!15766))) b!953899))

(assert (= (and b!953629 (is-Union!2634 (regTwo!5781 r!15766))) b!953900))

(declare-fun b!953904 () Bool)

(declare-fun e!617108 () Bool)

(declare-fun tp!293932 () Bool)

(declare-fun tp!293931 () Bool)

(assert (=> b!953904 (= e!617108 (and tp!293932 tp!293931))))

(assert (=> b!953632 (= tp!293878 e!617108)))

(declare-fun b!953903 () Bool)

(declare-fun tp!293933 () Bool)

(assert (=> b!953903 (= e!617108 tp!293933)))

(declare-fun b!953901 () Bool)

(assert (=> b!953901 (= e!617108 tp_is_empty!4911)))

(declare-fun b!953902 () Bool)

(declare-fun tp!293930 () Bool)

(declare-fun tp!293934 () Bool)

(assert (=> b!953902 (= e!617108 (and tp!293930 tp!293934))))

(assert (= (and b!953632 (is-ElementMatch!2634 (reg!2963 r!15766))) b!953901))

(assert (= (and b!953632 (is-Concat!4467 (reg!2963 r!15766))) b!953902))

(assert (= (and b!953632 (is-Star!2634 (reg!2963 r!15766))) b!953903))

(assert (= (and b!953632 (is-Union!2634 (reg!2963 r!15766))) b!953904))

(push 1)

(assert (not b!953898))

(assert tp_is_empty!4911)

(assert (not b!953724))

(assert (not bm!59860))

(assert (not b!953887))

(assert (not b!953757))

(assert (not b!953882))

(assert (not b!953894))

(assert (not b!953902))

(assert (not b!953768))

(assert (not b!953883))

(assert (not b!953862))

(assert (not b!953903))

(assert (not b!953761))

(assert (not b!953899))

(assert (not b!953900))

(assert (not b!953895))

(assert (not d!284205))

(assert (not b!953861))

(assert (not b!953885))

(assert (not bm!59870))

(assert (not b!953881))

(assert (not b!953864))

(assert (not b!953860))

(assert (not b!953858))

(assert (not b!953904))

(assert (not b!953795))

(assert (not d!284195))

(assert (not d!284185))

(assert (not b!953896))

(assert (not b!953723))

(assert (not b!953759))

(assert (not bm!59872))

(assert (not d!284189))

(assert (not d!284181))

(assert (not b!953892))

(assert (not d!284199))

(assert (not bm!59859))

(assert (not b!953886))

(assert (not b!953770))

(assert (not b!953765))

(assert (not d!284197))

(assert (not d!284193))

(assert (not bm!59863))

(assert (not b!953857))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

