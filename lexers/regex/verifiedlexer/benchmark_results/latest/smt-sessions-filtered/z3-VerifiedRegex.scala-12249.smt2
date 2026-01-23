; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!689664 () Bool)

(assert start!689664)

(declare-fun b!7085512 () Bool)

(declare-fun e!4259755 () Bool)

(declare-fun tp!1945247 () Bool)

(declare-fun tp!1945243 () Bool)

(assert (=> b!7085512 (= e!4259755 (and tp!1945247 tp!1945243))))

(declare-fun b!7085513 () Bool)

(declare-fun e!4259754 () Bool)

(declare-fun tp!1945246 () Bool)

(assert (=> b!7085513 (= e!4259754 tp!1945246)))

(declare-fun b!7085514 () Bool)

(declare-fun tp_is_empty!44715 () Bool)

(assert (=> b!7085514 (= e!4259755 tp_is_empty!44715)))

(declare-fun b!7085515 () Bool)

(declare-fun e!4259756 () Bool)

(declare-fun tp!1945244 () Bool)

(assert (=> b!7085515 (= e!4259756 tp!1945244)))

(declare-fun b!7085516 () Bool)

(declare-fun e!4259753 () Bool)

(declare-datatypes ((C!35752 0))(
  ( (C!35753 (val!27582 Int)) )
))
(declare-datatypes ((Regex!17741 0))(
  ( (ElementMatch!17741 (c!1322444 C!35752)) (Concat!26586 (regOne!35994 Regex!17741) (regTwo!35994 Regex!17741)) (EmptyExpr!17741) (Star!17741 (reg!18070 Regex!17741)) (EmptyLang!17741) (Union!17741 (regOne!35995 Regex!17741) (regTwo!35995 Regex!17741)) )
))
(declare-datatypes ((List!68704 0))(
  ( (Nil!68580) (Cons!68580 (h!75028 Regex!17741) (t!382489 List!68704)) )
))
(declare-datatypes ((Context!13474 0))(
  ( (Context!13475 (exprs!7237 List!68704)) )
))
(declare-fun auxCtx!45 () Context!13474)

(declare-fun lambda!429013 () Int)

(declare-fun forall!16691 (List!68704 Int) Bool)

(assert (=> b!7085516 (= e!4259753 (not (forall!16691 (exprs!7237 auxCtx!45) lambda!429013)))))

(declare-fun b!7085517 () Bool)

(declare-fun tp!1945242 () Bool)

(assert (=> b!7085517 (= e!4259755 tp!1945242)))

(declare-fun b!7085518 () Bool)

(declare-fun tp!1945248 () Bool)

(declare-fun tp!1945245 () Bool)

(assert (=> b!7085518 (= e!4259755 (and tp!1945248 tp!1945245))))

(declare-fun b!7085519 () Bool)

(declare-fun e!4259752 () Bool)

(assert (=> b!7085519 (= e!4259752 e!4259753)))

(declare-fun res!2894488 () Bool)

(assert (=> b!7085519 (=> (not res!2894488) (not e!4259753))))

(declare-fun c!9994 () Context!13474)

(assert (=> b!7085519 (= res!2894488 (forall!16691 (exprs!7237 c!9994) lambda!429013))))

(declare-fun b!7085520 () Bool)

(declare-fun res!2894489 () Bool)

(assert (=> b!7085520 (=> (not res!2894489) (not e!4259752))))

(declare-fun r!11554 () Regex!17741)

(declare-fun a!1901 () C!35752)

(get-info :version)

(assert (=> b!7085520 (= res!2894489 (and (or (not ((_ is ElementMatch!17741) r!11554)) (not (= (c!1322444 r!11554) a!1901))) ((_ is Union!17741) r!11554)))))

(declare-fun res!2894490 () Bool)

(assert (=> start!689664 (=> (not res!2894490) (not e!4259752))))

(declare-fun validRegex!9016 (Regex!17741) Bool)

(assert (=> start!689664 (= res!2894490 (validRegex!9016 r!11554))))

(assert (=> start!689664 e!4259752))

(assert (=> start!689664 e!4259755))

(assert (=> start!689664 tp_is_empty!44715))

(declare-fun inv!87217 (Context!13474) Bool)

(assert (=> start!689664 (and (inv!87217 c!9994) e!4259756)))

(assert (=> start!689664 (and (inv!87217 auxCtx!45) e!4259754)))

(assert (= (and start!689664 res!2894490) b!7085520))

(assert (= (and b!7085520 res!2894489) b!7085519))

(assert (= (and b!7085519 res!2894488) b!7085516))

(assert (= (and start!689664 ((_ is ElementMatch!17741) r!11554)) b!7085514))

(assert (= (and start!689664 ((_ is Concat!26586) r!11554)) b!7085512))

(assert (= (and start!689664 ((_ is Star!17741) r!11554)) b!7085517))

(assert (= (and start!689664 ((_ is Union!17741) r!11554)) b!7085518))

(assert (= start!689664 b!7085515))

(assert (= start!689664 b!7085513))

(declare-fun m!7816762 () Bool)

(assert (=> b!7085516 m!7816762))

(declare-fun m!7816764 () Bool)

(assert (=> b!7085519 m!7816764))

(declare-fun m!7816766 () Bool)

(assert (=> start!689664 m!7816766))

(declare-fun m!7816768 () Bool)

(assert (=> start!689664 m!7816768))

(declare-fun m!7816770 () Bool)

(assert (=> start!689664 m!7816770))

(check-sat (not start!689664) (not b!7085515) (not b!7085517) (not b!7085512) (not b!7085519) (not b!7085516) (not b!7085518) (not b!7085513) tp_is_empty!44715)
(check-sat)
(get-model)

(declare-fun d!2215968 () Bool)

(declare-fun res!2894499 () Bool)

(declare-fun e!4259765 () Bool)

(assert (=> d!2215968 (=> res!2894499 e!4259765)))

(assert (=> d!2215968 (= res!2894499 ((_ is Nil!68580) (exprs!7237 auxCtx!45)))))

(assert (=> d!2215968 (= (forall!16691 (exprs!7237 auxCtx!45) lambda!429013) e!4259765)))

(declare-fun b!7085529 () Bool)

(declare-fun e!4259766 () Bool)

(assert (=> b!7085529 (= e!4259765 e!4259766)))

(declare-fun res!2894500 () Bool)

(assert (=> b!7085529 (=> (not res!2894500) (not e!4259766))))

(declare-fun dynLambda!27971 (Int Regex!17741) Bool)

(assert (=> b!7085529 (= res!2894500 (dynLambda!27971 lambda!429013 (h!75028 (exprs!7237 auxCtx!45))))))

(declare-fun b!7085530 () Bool)

(assert (=> b!7085530 (= e!4259766 (forall!16691 (t!382489 (exprs!7237 auxCtx!45)) lambda!429013))))

(assert (= (and d!2215968 (not res!2894499)) b!7085529))

(assert (= (and b!7085529 res!2894500) b!7085530))

(declare-fun b_lambda!270841 () Bool)

(assert (=> (not b_lambda!270841) (not b!7085529)))

(declare-fun m!7816772 () Bool)

(assert (=> b!7085529 m!7816772))

(declare-fun m!7816774 () Bool)

(assert (=> b!7085530 m!7816774))

(assert (=> b!7085516 d!2215968))

(declare-fun c!1322455 () Bool)

(declare-fun bm!643852 () Bool)

(declare-fun c!1322456 () Bool)

(declare-fun call!643858 () Bool)

(assert (=> bm!643852 (= call!643858 (validRegex!9016 (ite c!1322456 (reg!18070 r!11554) (ite c!1322455 (regTwo!35995 r!11554) (regOne!35994 r!11554)))))))

(declare-fun b!7085578 () Bool)

(declare-fun res!2894528 () Bool)

(declare-fun e!4259810 () Bool)

(assert (=> b!7085578 (=> res!2894528 e!4259810)))

(assert (=> b!7085578 (= res!2894528 (not ((_ is Concat!26586) r!11554)))))

(declare-fun e!4259807 () Bool)

(assert (=> b!7085578 (= e!4259807 e!4259810)))

(declare-fun b!7085579 () Bool)

(declare-fun e!4259808 () Bool)

(declare-fun e!4259806 () Bool)

(assert (=> b!7085579 (= e!4259808 e!4259806)))

(assert (=> b!7085579 (= c!1322456 ((_ is Star!17741) r!11554))))

(declare-fun b!7085580 () Bool)

(declare-fun e!4259805 () Bool)

(declare-fun call!643859 () Bool)

(assert (=> b!7085580 (= e!4259805 call!643859)))

(declare-fun b!7085581 () Bool)

(declare-fun e!4259804 () Bool)

(assert (=> b!7085581 (= e!4259810 e!4259804)))

(declare-fun res!2894532 () Bool)

(assert (=> b!7085581 (=> (not res!2894532) (not e!4259804))))

(assert (=> b!7085581 (= res!2894532 call!643859)))

(declare-fun b!7085582 () Bool)

(declare-fun call!643857 () Bool)

(assert (=> b!7085582 (= e!4259804 call!643857)))

(declare-fun b!7085584 () Bool)

(assert (=> b!7085584 (= e!4259806 e!4259807)))

(assert (=> b!7085584 (= c!1322455 ((_ is Union!17741) r!11554))))

(declare-fun bm!643853 () Bool)

(assert (=> bm!643853 (= call!643859 call!643858)))

(declare-fun bm!643854 () Bool)

(assert (=> bm!643854 (= call!643857 (validRegex!9016 (ite c!1322455 (regOne!35995 r!11554) (regTwo!35994 r!11554))))))

(declare-fun b!7085583 () Bool)

(declare-fun e!4259809 () Bool)

(assert (=> b!7085583 (= e!4259806 e!4259809)))

(declare-fun res!2894530 () Bool)

(declare-fun nullable!7392 (Regex!17741) Bool)

(assert (=> b!7085583 (= res!2894530 (not (nullable!7392 (reg!18070 r!11554))))))

(assert (=> b!7085583 (=> (not res!2894530) (not e!4259809))))

(declare-fun d!2215972 () Bool)

(declare-fun res!2894529 () Bool)

(assert (=> d!2215972 (=> res!2894529 e!4259808)))

(assert (=> d!2215972 (= res!2894529 ((_ is ElementMatch!17741) r!11554))))

(assert (=> d!2215972 (= (validRegex!9016 r!11554) e!4259808)))

(declare-fun b!7085585 () Bool)

(declare-fun res!2894531 () Bool)

(assert (=> b!7085585 (=> (not res!2894531) (not e!4259805))))

(assert (=> b!7085585 (= res!2894531 call!643857)))

(assert (=> b!7085585 (= e!4259807 e!4259805)))

(declare-fun b!7085586 () Bool)

(assert (=> b!7085586 (= e!4259809 call!643858)))

(assert (= (and d!2215972 (not res!2894529)) b!7085579))

(assert (= (and b!7085579 c!1322456) b!7085583))

(assert (= (and b!7085579 (not c!1322456)) b!7085584))

(assert (= (and b!7085583 res!2894530) b!7085586))

(assert (= (and b!7085584 c!1322455) b!7085585))

(assert (= (and b!7085584 (not c!1322455)) b!7085578))

(assert (= (and b!7085585 res!2894531) b!7085580))

(assert (= (and b!7085578 (not res!2894528)) b!7085581))

(assert (= (and b!7085581 res!2894532) b!7085582))

(assert (= (or b!7085585 b!7085582) bm!643854))

(assert (= (or b!7085580 b!7085581) bm!643853))

(assert (= (or b!7085586 bm!643853) bm!643852))

(declare-fun m!7816786 () Bool)

(assert (=> bm!643852 m!7816786))

(declare-fun m!7816788 () Bool)

(assert (=> bm!643854 m!7816788))

(declare-fun m!7816790 () Bool)

(assert (=> b!7085583 m!7816790))

(assert (=> start!689664 d!2215972))

(declare-fun bs!1882907 () Bool)

(declare-fun d!2215978 () Bool)

(assert (= bs!1882907 (and d!2215978 b!7085519)))

(declare-fun lambda!429018 () Int)

(assert (=> bs!1882907 (= lambda!429018 lambda!429013)))

(assert (=> d!2215978 (= (inv!87217 c!9994) (forall!16691 (exprs!7237 c!9994) lambda!429018))))

(declare-fun bs!1882910 () Bool)

(assert (= bs!1882910 d!2215978))

(declare-fun m!7816794 () Bool)

(assert (=> bs!1882910 m!7816794))

(assert (=> start!689664 d!2215978))

(declare-fun bs!1882912 () Bool)

(declare-fun d!2215982 () Bool)

(assert (= bs!1882912 (and d!2215982 b!7085519)))

(declare-fun lambda!429021 () Int)

(assert (=> bs!1882912 (= lambda!429021 lambda!429013)))

(declare-fun bs!1882914 () Bool)

(assert (= bs!1882914 (and d!2215982 d!2215978)))

(assert (=> bs!1882914 (= lambda!429021 lambda!429018)))

(assert (=> d!2215982 (= (inv!87217 auxCtx!45) (forall!16691 (exprs!7237 auxCtx!45) lambda!429021))))

(declare-fun bs!1882916 () Bool)

(assert (= bs!1882916 d!2215982))

(declare-fun m!7816798 () Bool)

(assert (=> bs!1882916 m!7816798))

(assert (=> start!689664 d!2215982))

(declare-fun d!2215986 () Bool)

(declare-fun res!2894534 () Bool)

(declare-fun e!4259812 () Bool)

(assert (=> d!2215986 (=> res!2894534 e!4259812)))

(assert (=> d!2215986 (= res!2894534 ((_ is Nil!68580) (exprs!7237 c!9994)))))

(assert (=> d!2215986 (= (forall!16691 (exprs!7237 c!9994) lambda!429013) e!4259812)))

(declare-fun b!7085588 () Bool)

(declare-fun e!4259814 () Bool)

(assert (=> b!7085588 (= e!4259812 e!4259814)))

(declare-fun res!2894536 () Bool)

(assert (=> b!7085588 (=> (not res!2894536) (not e!4259814))))

(assert (=> b!7085588 (= res!2894536 (dynLambda!27971 lambda!429013 (h!75028 (exprs!7237 c!9994))))))

(declare-fun b!7085590 () Bool)

(assert (=> b!7085590 (= e!4259814 (forall!16691 (t!382489 (exprs!7237 c!9994)) lambda!429013))))

(assert (= (and d!2215986 (not res!2894534)) b!7085588))

(assert (= (and b!7085588 res!2894536) b!7085590))

(declare-fun b_lambda!270847 () Bool)

(assert (=> (not b_lambda!270847) (not b!7085588)))

(declare-fun m!7816802 () Bool)

(assert (=> b!7085588 m!7816802))

(declare-fun m!7816806 () Bool)

(assert (=> b!7085590 m!7816806))

(assert (=> b!7085519 d!2215986))

(declare-fun b!7085617 () Bool)

(declare-fun e!4259819 () Bool)

(declare-fun tp!1945277 () Bool)

(declare-fun tp!1945271 () Bool)

(assert (=> b!7085617 (= e!4259819 (and tp!1945277 tp!1945271))))

(declare-fun b!7085611 () Bool)

(assert (=> b!7085611 (= e!4259819 tp_is_empty!44715)))

(declare-fun b!7085615 () Bool)

(declare-fun tp!1945269 () Bool)

(assert (=> b!7085615 (= e!4259819 tp!1945269)))

(assert (=> b!7085517 (= tp!1945242 e!4259819)))

(declare-fun b!7085613 () Bool)

(declare-fun tp!1945275 () Bool)

(declare-fun tp!1945273 () Bool)

(assert (=> b!7085613 (= e!4259819 (and tp!1945275 tp!1945273))))

(assert (= (and b!7085517 ((_ is ElementMatch!17741) (reg!18070 r!11554))) b!7085611))

(assert (= (and b!7085517 ((_ is Concat!26586) (reg!18070 r!11554))) b!7085613))

(assert (= (and b!7085517 ((_ is Star!17741) (reg!18070 r!11554))) b!7085615))

(assert (= (and b!7085517 ((_ is Union!17741) (reg!18070 r!11554))) b!7085617))

(declare-fun b!7085626 () Bool)

(declare-fun e!4259822 () Bool)

(declare-fun tp!1945288 () Bool)

(declare-fun tp!1945284 () Bool)

(assert (=> b!7085626 (= e!4259822 (and tp!1945288 tp!1945284))))

(declare-fun b!7085622 () Bool)

(assert (=> b!7085622 (= e!4259822 tp_is_empty!44715)))

(declare-fun b!7085625 () Bool)

(declare-fun tp!1945282 () Bool)

(assert (=> b!7085625 (= e!4259822 tp!1945282)))

(assert (=> b!7085512 (= tp!1945247 e!4259822)))

(declare-fun b!7085624 () Bool)

(declare-fun tp!1945287 () Bool)

(declare-fun tp!1945286 () Bool)

(assert (=> b!7085624 (= e!4259822 (and tp!1945287 tp!1945286))))

(assert (= (and b!7085512 ((_ is ElementMatch!17741) (regOne!35994 r!11554))) b!7085622))

(assert (= (and b!7085512 ((_ is Concat!26586) (regOne!35994 r!11554))) b!7085624))

(assert (= (and b!7085512 ((_ is Star!17741) (regOne!35994 r!11554))) b!7085625))

(assert (= (and b!7085512 ((_ is Union!17741) (regOne!35994 r!11554))) b!7085626))

(declare-fun b!7085632 () Bool)

(declare-fun e!4259823 () Bool)

(declare-fun tp!1945296 () Bool)

(declare-fun tp!1945290 () Bool)

(assert (=> b!7085632 (= e!4259823 (and tp!1945296 tp!1945290))))

(declare-fun b!7085627 () Bool)

(assert (=> b!7085627 (= e!4259823 tp_is_empty!44715)))

(declare-fun b!7085630 () Bool)

(declare-fun tp!1945289 () Bool)

(assert (=> b!7085630 (= e!4259823 tp!1945289)))

(assert (=> b!7085512 (= tp!1945243 e!4259823)))

(declare-fun b!7085628 () Bool)

(declare-fun tp!1945294 () Bool)

(declare-fun tp!1945292 () Bool)

(assert (=> b!7085628 (= e!4259823 (and tp!1945294 tp!1945292))))

(assert (= (and b!7085512 ((_ is ElementMatch!17741) (regTwo!35994 r!11554))) b!7085627))

(assert (= (and b!7085512 ((_ is Concat!26586) (regTwo!35994 r!11554))) b!7085628))

(assert (= (and b!7085512 ((_ is Star!17741) (regTwo!35994 r!11554))) b!7085630))

(assert (= (and b!7085512 ((_ is Union!17741) (regTwo!35994 r!11554))) b!7085632))

(declare-fun b!7085642 () Bool)

(declare-fun e!4259826 () Bool)

(declare-fun tp!1945308 () Bool)

(declare-fun tp!1945305 () Bool)

(assert (=> b!7085642 (= e!4259826 (and tp!1945308 tp!1945305))))

(declare-fun b!7085639 () Bool)

(assert (=> b!7085639 (= e!4259826 tp_is_empty!44715)))

(declare-fun b!7085641 () Bool)

(declare-fun tp!1945304 () Bool)

(assert (=> b!7085641 (= e!4259826 tp!1945304)))

(assert (=> b!7085518 (= tp!1945248 e!4259826)))

(declare-fun b!7085640 () Bool)

(declare-fun tp!1945307 () Bool)

(declare-fun tp!1945306 () Bool)

(assert (=> b!7085640 (= e!4259826 (and tp!1945307 tp!1945306))))

(assert (= (and b!7085518 ((_ is ElementMatch!17741) (regOne!35995 r!11554))) b!7085639))

(assert (= (and b!7085518 ((_ is Concat!26586) (regOne!35995 r!11554))) b!7085640))

(assert (= (and b!7085518 ((_ is Star!17741) (regOne!35995 r!11554))) b!7085641))

(assert (= (and b!7085518 ((_ is Union!17741) (regOne!35995 r!11554))) b!7085642))

(declare-fun b!7085648 () Bool)

(declare-fun e!4259827 () Bool)

(declare-fun tp!1945313 () Bool)

(declare-fun tp!1945310 () Bool)

(assert (=> b!7085648 (= e!4259827 (and tp!1945313 tp!1945310))))

(declare-fun b!7085645 () Bool)

(assert (=> b!7085645 (= e!4259827 tp_is_empty!44715)))

(declare-fun b!7085647 () Bool)

(declare-fun tp!1945309 () Bool)

(assert (=> b!7085647 (= e!4259827 tp!1945309)))

(assert (=> b!7085518 (= tp!1945245 e!4259827)))

(declare-fun b!7085646 () Bool)

(declare-fun tp!1945312 () Bool)

(declare-fun tp!1945311 () Bool)

(assert (=> b!7085646 (= e!4259827 (and tp!1945312 tp!1945311))))

(assert (= (and b!7085518 ((_ is ElementMatch!17741) (regTwo!35995 r!11554))) b!7085645))

(assert (= (and b!7085518 ((_ is Concat!26586) (regTwo!35995 r!11554))) b!7085646))

(assert (= (and b!7085518 ((_ is Star!17741) (regTwo!35995 r!11554))) b!7085647))

(assert (= (and b!7085518 ((_ is Union!17741) (regTwo!35995 r!11554))) b!7085648))

(declare-fun b!7085660 () Bool)

(declare-fun e!4259834 () Bool)

(declare-fun tp!1945329 () Bool)

(declare-fun tp!1945330 () Bool)

(assert (=> b!7085660 (= e!4259834 (and tp!1945329 tp!1945330))))

(assert (=> b!7085513 (= tp!1945246 e!4259834)))

(assert (= (and b!7085513 ((_ is Cons!68580) (exprs!7237 auxCtx!45))) b!7085660))

(declare-fun b!7085661 () Bool)

(declare-fun e!4259835 () Bool)

(declare-fun tp!1945331 () Bool)

(declare-fun tp!1945332 () Bool)

(assert (=> b!7085661 (= e!4259835 (and tp!1945331 tp!1945332))))

(assert (=> b!7085515 (= tp!1945244 e!4259835)))

(assert (= (and b!7085515 ((_ is Cons!68580) (exprs!7237 c!9994))) b!7085661))

(declare-fun b_lambda!270849 () Bool)

(assert (= b_lambda!270841 (or b!7085519 b_lambda!270849)))

(declare-fun bs!1882917 () Bool)

(declare-fun d!2215989 () Bool)

(assert (= bs!1882917 (and d!2215989 b!7085519)))

(assert (=> bs!1882917 (= (dynLambda!27971 lambda!429013 (h!75028 (exprs!7237 auxCtx!45))) (validRegex!9016 (h!75028 (exprs!7237 auxCtx!45))))))

(declare-fun m!7816808 () Bool)

(assert (=> bs!1882917 m!7816808))

(assert (=> b!7085529 d!2215989))

(declare-fun b_lambda!270851 () Bool)

(assert (= b_lambda!270847 (or b!7085519 b_lambda!270851)))

(declare-fun bs!1882919 () Bool)

(declare-fun d!2215992 () Bool)

(assert (= bs!1882919 (and d!2215992 b!7085519)))

(assert (=> bs!1882919 (= (dynLambda!27971 lambda!429013 (h!75028 (exprs!7237 c!9994))) (validRegex!9016 (h!75028 (exprs!7237 c!9994))))))

(declare-fun m!7816812 () Bool)

(assert (=> bs!1882919 m!7816812))

(assert (=> b!7085588 d!2215992))

(check-sat (not b!7085625) (not b!7085530) (not b!7085613) (not b!7085646) (not b!7085626) (not b!7085615) (not bm!643852) (not b!7085583) (not b!7085624) (not b_lambda!270851) (not b!7085660) (not bm!643854) (not d!2215982) (not b!7085642) (not b_lambda!270849) (not b!7085648) (not bs!1882919) (not d!2215978) (not b!7085617) (not b!7085590) (not b!7085630) (not b!7085661) (not b!7085640) (not b!7085641) tp_is_empty!44715 (not b!7085647) (not b!7085628) (not bs!1882917) (not b!7085632))
(check-sat)
