; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!689680 () Bool)

(assert start!689680)

(declare-fun b!7085703 () Bool)

(declare-fun res!2894547 () Bool)

(declare-fun e!4259859 () Bool)

(assert (=> b!7085703 (=> (not res!2894547) (not e!4259859))))

(declare-datatypes ((C!35756 0))(
  ( (C!35757 (val!27584 Int)) )
))
(declare-datatypes ((Regex!17743 0))(
  ( (ElementMatch!17743 (c!1322458 C!35756)) (Concat!26588 (regOne!35998 Regex!17743) (regTwo!35998 Regex!17743)) (EmptyExpr!17743) (Star!17743 (reg!18072 Regex!17743)) (EmptyLang!17743) (Union!17743 (regOne!35999 Regex!17743) (regTwo!35999 Regex!17743)) )
))
(declare-fun r!11554 () Regex!17743)

(declare-fun a!1901 () C!35756)

(get-info :version)

(assert (=> b!7085703 (= res!2894547 (and (or (not ((_ is ElementMatch!17743) r!11554)) (not (= (c!1322458 r!11554) a!1901))) ((_ is Union!17743) r!11554)))))

(declare-fun b!7085704 () Bool)

(declare-fun e!4259858 () Bool)

(declare-fun tp!1945375 () Bool)

(declare-fun tp!1945371 () Bool)

(assert (=> b!7085704 (= e!4259858 (and tp!1945375 tp!1945371))))

(declare-fun b!7085705 () Bool)

(declare-datatypes ((List!68706 0))(
  ( (Nil!68582) (Cons!68582 (h!75030 Regex!17743) (t!382491 List!68706)) )
))
(declare-datatypes ((Context!13478 0))(
  ( (Context!13479 (exprs!7239 List!68706)) )
))
(declare-fun c!9994 () Context!13478)

(declare-fun lambda!429031 () Int)

(declare-fun forall!16693 (List!68706 Int) Bool)

(assert (=> b!7085705 (= e!4259859 (not (forall!16693 (exprs!7239 c!9994) lambda!429031)))))

(declare-datatypes ((Unit!162185 0))(
  ( (Unit!162186) )
))
(declare-fun lt!2554558 () Unit!162185)

(declare-fun auxCtx!45 () Context!13478)

(declare-fun lemmaConcatPreservesForall!1046 (List!68706 List!68706 Int) Unit!162185)

(assert (=> b!7085705 (= lt!2554558 (lemmaConcatPreservesForall!1046 (exprs!7239 c!9994) (exprs!7239 auxCtx!45) lambda!429031))))

(declare-fun b!7085706 () Bool)

(declare-fun e!4259860 () Bool)

(declare-fun tp!1945372 () Bool)

(assert (=> b!7085706 (= e!4259860 tp!1945372)))

(declare-fun res!2894548 () Bool)

(assert (=> start!689680 (=> (not res!2894548) (not e!4259859))))

(declare-fun validRegex!9018 (Regex!17743) Bool)

(assert (=> start!689680 (= res!2894548 (validRegex!9018 r!11554))))

(assert (=> start!689680 e!4259859))

(assert (=> start!689680 e!4259858))

(declare-fun tp_is_empty!44719 () Bool)

(assert (=> start!689680 tp_is_empty!44719))

(declare-fun inv!87222 (Context!13478) Bool)

(assert (=> start!689680 (and (inv!87222 c!9994) e!4259860)))

(declare-fun e!4259857 () Bool)

(assert (=> start!689680 (and (inv!87222 auxCtx!45) e!4259857)))

(declare-fun b!7085707 () Bool)

(assert (=> b!7085707 (= e!4259858 tp_is_empty!44719)))

(declare-fun b!7085708 () Bool)

(declare-fun tp!1945370 () Bool)

(assert (=> b!7085708 (= e!4259857 tp!1945370)))

(declare-fun b!7085709 () Bool)

(declare-fun tp!1945374 () Bool)

(declare-fun tp!1945373 () Bool)

(assert (=> b!7085709 (= e!4259858 (and tp!1945374 tp!1945373))))

(declare-fun b!7085710 () Bool)

(declare-fun tp!1945376 () Bool)

(assert (=> b!7085710 (= e!4259858 tp!1945376)))

(assert (= (and start!689680 res!2894548) b!7085703))

(assert (= (and b!7085703 res!2894547) b!7085705))

(assert (= (and start!689680 ((_ is ElementMatch!17743) r!11554)) b!7085707))

(assert (= (and start!689680 ((_ is Concat!26588) r!11554)) b!7085709))

(assert (= (and start!689680 ((_ is Star!17743) r!11554)) b!7085710))

(assert (= (and start!689680 ((_ is Union!17743) r!11554)) b!7085704))

(assert (= start!689680 b!7085706))

(assert (= start!689680 b!7085708))

(declare-fun m!7816826 () Bool)

(assert (=> b!7085705 m!7816826))

(declare-fun m!7816828 () Bool)

(assert (=> b!7085705 m!7816828))

(declare-fun m!7816830 () Bool)

(assert (=> start!689680 m!7816830))

(declare-fun m!7816832 () Bool)

(assert (=> start!689680 m!7816832))

(declare-fun m!7816834 () Bool)

(assert (=> start!689680 m!7816834))

(check-sat (not b!7085710) (not b!7085709) (not start!689680) tp_is_empty!44719 (not b!7085704) (not b!7085708) (not b!7085706) (not b!7085705))
(check-sat)
(get-model)

(declare-fun d!2215997 () Bool)

(declare-fun res!2894555 () Bool)

(declare-fun e!4259867 () Bool)

(assert (=> d!2215997 (=> res!2894555 e!4259867)))

(assert (=> d!2215997 (= res!2894555 ((_ is Nil!68582) (exprs!7239 c!9994)))))

(assert (=> d!2215997 (= (forall!16693 (exprs!7239 c!9994) lambda!429031) e!4259867)))

(declare-fun b!7085719 () Bool)

(declare-fun e!4259868 () Bool)

(assert (=> b!7085719 (= e!4259867 e!4259868)))

(declare-fun res!2894556 () Bool)

(assert (=> b!7085719 (=> (not res!2894556) (not e!4259868))))

(declare-fun dynLambda!27972 (Int Regex!17743) Bool)

(assert (=> b!7085719 (= res!2894556 (dynLambda!27972 lambda!429031 (h!75030 (exprs!7239 c!9994))))))

(declare-fun b!7085720 () Bool)

(assert (=> b!7085720 (= e!4259868 (forall!16693 (t!382491 (exprs!7239 c!9994)) lambda!429031))))

(assert (= (and d!2215997 (not res!2894555)) b!7085719))

(assert (= (and b!7085719 res!2894556) b!7085720))

(declare-fun b_lambda!270857 () Bool)

(assert (=> (not b_lambda!270857) (not b!7085719)))

(declare-fun m!7816836 () Bool)

(assert (=> b!7085719 m!7816836))

(declare-fun m!7816838 () Bool)

(assert (=> b!7085720 m!7816838))

(assert (=> b!7085705 d!2215997))

(declare-fun d!2216001 () Bool)

(declare-fun ++!15915 (List!68706 List!68706) List!68706)

(assert (=> d!2216001 (forall!16693 (++!15915 (exprs!7239 c!9994) (exprs!7239 auxCtx!45)) lambda!429031)))

(declare-fun lt!2554561 () Unit!162185)

(declare-fun choose!54606 (List!68706 List!68706 Int) Unit!162185)

(assert (=> d!2216001 (= lt!2554561 (choose!54606 (exprs!7239 c!9994) (exprs!7239 auxCtx!45) lambda!429031))))

(assert (=> d!2216001 (forall!16693 (exprs!7239 c!9994) lambda!429031)))

(assert (=> d!2216001 (= (lemmaConcatPreservesForall!1046 (exprs!7239 c!9994) (exprs!7239 auxCtx!45) lambda!429031) lt!2554561)))

(declare-fun bs!1882923 () Bool)

(assert (= bs!1882923 d!2216001))

(declare-fun m!7816840 () Bool)

(assert (=> bs!1882923 m!7816840))

(assert (=> bs!1882923 m!7816840))

(declare-fun m!7816842 () Bool)

(assert (=> bs!1882923 m!7816842))

(declare-fun m!7816844 () Bool)

(assert (=> bs!1882923 m!7816844))

(assert (=> bs!1882923 m!7816826))

(assert (=> b!7085705 d!2216001))

(declare-fun b!7085768 () Bool)

(declare-fun res!2894588 () Bool)

(declare-fun e!4259908 () Bool)

(assert (=> b!7085768 (=> (not res!2894588) (not e!4259908))))

(declare-fun call!643875 () Bool)

(assert (=> b!7085768 (= res!2894588 call!643875)))

(declare-fun e!4259910 () Bool)

(assert (=> b!7085768 (= e!4259910 e!4259908)))

(declare-fun b!7085769 () Bool)

(declare-fun call!643877 () Bool)

(assert (=> b!7085769 (= e!4259908 call!643877)))

(declare-fun call!643876 () Bool)

(declare-fun c!1322469 () Bool)

(declare-fun c!1322470 () Bool)

(declare-fun bm!643870 () Bool)

(assert (=> bm!643870 (= call!643876 (validRegex!9018 (ite c!1322469 (reg!18072 r!11554) (ite c!1322470 (regOne!35999 r!11554) (regTwo!35998 r!11554)))))))

(declare-fun b!7085770 () Bool)

(declare-fun e!4259911 () Bool)

(assert (=> b!7085770 (= e!4259911 call!643875)))

(declare-fun b!7085771 () Bool)

(declare-fun res!2894589 () Bool)

(declare-fun e!4259912 () Bool)

(assert (=> b!7085771 (=> res!2894589 e!4259912)))

(assert (=> b!7085771 (= res!2894589 (not ((_ is Concat!26588) r!11554)))))

(assert (=> b!7085771 (= e!4259910 e!4259912)))

(declare-fun b!7085772 () Bool)

(declare-fun e!4259913 () Bool)

(assert (=> b!7085772 (= e!4259913 e!4259910)))

(assert (=> b!7085772 (= c!1322470 ((_ is Union!17743) r!11554))))

(declare-fun b!7085773 () Bool)

(declare-fun e!4259914 () Bool)

(assert (=> b!7085773 (= e!4259913 e!4259914)))

(declare-fun res!2894587 () Bool)

(declare-fun nullable!7394 (Regex!17743) Bool)

(assert (=> b!7085773 (= res!2894587 (not (nullable!7394 (reg!18072 r!11554))))))

(assert (=> b!7085773 (=> (not res!2894587) (not e!4259914))))

(declare-fun bm!643871 () Bool)

(assert (=> bm!643871 (= call!643875 call!643876)))

(declare-fun d!2216003 () Bool)

(declare-fun res!2894590 () Bool)

(declare-fun e!4259909 () Bool)

(assert (=> d!2216003 (=> res!2894590 e!4259909)))

(assert (=> d!2216003 (= res!2894590 ((_ is ElementMatch!17743) r!11554))))

(assert (=> d!2216003 (= (validRegex!9018 r!11554) e!4259909)))

(declare-fun b!7085774 () Bool)

(assert (=> b!7085774 (= e!4259914 call!643876)))

(declare-fun b!7085775 () Bool)

(assert (=> b!7085775 (= e!4259912 e!4259911)))

(declare-fun res!2894586 () Bool)

(assert (=> b!7085775 (=> (not res!2894586) (not e!4259911))))

(assert (=> b!7085775 (= res!2894586 call!643877)))

(declare-fun bm!643872 () Bool)

(assert (=> bm!643872 (= call!643877 (validRegex!9018 (ite c!1322470 (regTwo!35999 r!11554) (regOne!35998 r!11554))))))

(declare-fun b!7085776 () Bool)

(assert (=> b!7085776 (= e!4259909 e!4259913)))

(assert (=> b!7085776 (= c!1322469 ((_ is Star!17743) r!11554))))

(assert (= (and d!2216003 (not res!2894590)) b!7085776))

(assert (= (and b!7085776 c!1322469) b!7085773))

(assert (= (and b!7085776 (not c!1322469)) b!7085772))

(assert (= (and b!7085773 res!2894587) b!7085774))

(assert (= (and b!7085772 c!1322470) b!7085768))

(assert (= (and b!7085772 (not c!1322470)) b!7085771))

(assert (= (and b!7085768 res!2894588) b!7085769))

(assert (= (and b!7085771 (not res!2894589)) b!7085775))

(assert (= (and b!7085775 res!2894586) b!7085770))

(assert (= (or b!7085768 b!7085770) bm!643871))

(assert (= (or b!7085769 b!7085775) bm!643872))

(assert (= (or b!7085774 bm!643871) bm!643870))

(declare-fun m!7816860 () Bool)

(assert (=> bm!643870 m!7816860))

(declare-fun m!7816862 () Bool)

(assert (=> b!7085773 m!7816862))

(declare-fun m!7816864 () Bool)

(assert (=> bm!643872 m!7816864))

(assert (=> start!689680 d!2216003))

(declare-fun bs!1882930 () Bool)

(declare-fun d!2216013 () Bool)

(assert (= bs!1882930 (and d!2216013 b!7085705)))

(declare-fun lambda!429038 () Int)

(assert (=> bs!1882930 (= lambda!429038 lambda!429031)))

(assert (=> d!2216013 (= (inv!87222 c!9994) (forall!16693 (exprs!7239 c!9994) lambda!429038))))

(declare-fun bs!1882931 () Bool)

(assert (= bs!1882931 d!2216013))

(declare-fun m!7816872 () Bool)

(assert (=> bs!1882931 m!7816872))

(assert (=> start!689680 d!2216013))

(declare-fun bs!1882932 () Bool)

(declare-fun d!2216015 () Bool)

(assert (= bs!1882932 (and d!2216015 b!7085705)))

(declare-fun lambda!429039 () Int)

(assert (=> bs!1882932 (= lambda!429039 lambda!429031)))

(declare-fun bs!1882933 () Bool)

(assert (= bs!1882933 (and d!2216015 d!2216013)))

(assert (=> bs!1882933 (= lambda!429039 lambda!429038)))

(assert (=> d!2216015 (= (inv!87222 auxCtx!45) (forall!16693 (exprs!7239 auxCtx!45) lambda!429039))))

(declare-fun bs!1882934 () Bool)

(assert (= bs!1882934 d!2216015))

(declare-fun m!7816874 () Bool)

(assert (=> bs!1882934 m!7816874))

(assert (=> start!689680 d!2216015))

(declare-fun b!7085796 () Bool)

(declare-fun e!4259922 () Bool)

(declare-fun tp!1945397 () Bool)

(declare-fun tp!1945398 () Bool)

(assert (=> b!7085796 (= e!4259922 (and tp!1945397 tp!1945398))))

(assert (=> b!7085706 (= tp!1945372 e!4259922)))

(assert (= (and b!7085706 ((_ is Cons!68582) (exprs!7239 c!9994))) b!7085796))

(declare-fun b!7085820 () Bool)

(declare-fun e!4259929 () Bool)

(assert (=> b!7085820 (= e!4259929 tp_is_empty!44719)))

(declare-fun b!7085821 () Bool)

(declare-fun tp!1945430 () Bool)

(declare-fun tp!1945428 () Bool)

(assert (=> b!7085821 (= e!4259929 (and tp!1945430 tp!1945428))))

(declare-fun b!7085822 () Bool)

(declare-fun tp!1945427 () Bool)

(assert (=> b!7085822 (= e!4259929 tp!1945427)))

(assert (=> b!7085710 (= tp!1945376 e!4259929)))

(declare-fun b!7085823 () Bool)

(declare-fun tp!1945429 () Bool)

(declare-fun tp!1945426 () Bool)

(assert (=> b!7085823 (= e!4259929 (and tp!1945429 tp!1945426))))

(assert (= (and b!7085710 ((_ is ElementMatch!17743) (reg!18072 r!11554))) b!7085820))

(assert (= (and b!7085710 ((_ is Concat!26588) (reg!18072 r!11554))) b!7085821))

(assert (= (and b!7085710 ((_ is Star!17743) (reg!18072 r!11554))) b!7085822))

(assert (= (and b!7085710 ((_ is Union!17743) (reg!18072 r!11554))) b!7085823))

(declare-fun b!7085828 () Bool)

(declare-fun e!4259931 () Bool)

(assert (=> b!7085828 (= e!4259931 tp_is_empty!44719)))

(declare-fun b!7085829 () Bool)

(declare-fun tp!1945440 () Bool)

(declare-fun tp!1945438 () Bool)

(assert (=> b!7085829 (= e!4259931 (and tp!1945440 tp!1945438))))

(declare-fun b!7085830 () Bool)

(declare-fun tp!1945437 () Bool)

(assert (=> b!7085830 (= e!4259931 tp!1945437)))

(assert (=> b!7085704 (= tp!1945375 e!4259931)))

(declare-fun b!7085831 () Bool)

(declare-fun tp!1945439 () Bool)

(declare-fun tp!1945436 () Bool)

(assert (=> b!7085831 (= e!4259931 (and tp!1945439 tp!1945436))))

(assert (= (and b!7085704 ((_ is ElementMatch!17743) (regOne!35999 r!11554))) b!7085828))

(assert (= (and b!7085704 ((_ is Concat!26588) (regOne!35999 r!11554))) b!7085829))

(assert (= (and b!7085704 ((_ is Star!17743) (regOne!35999 r!11554))) b!7085830))

(assert (= (and b!7085704 ((_ is Union!17743) (regOne!35999 r!11554))) b!7085831))

(declare-fun b!7085836 () Bool)

(declare-fun e!4259933 () Bool)

(assert (=> b!7085836 (= e!4259933 tp_is_empty!44719)))

(declare-fun b!7085837 () Bool)

(declare-fun tp!1945450 () Bool)

(declare-fun tp!1945448 () Bool)

(assert (=> b!7085837 (= e!4259933 (and tp!1945450 tp!1945448))))

(declare-fun b!7085838 () Bool)

(declare-fun tp!1945447 () Bool)

(assert (=> b!7085838 (= e!4259933 tp!1945447)))

(assert (=> b!7085704 (= tp!1945371 e!4259933)))

(declare-fun b!7085839 () Bool)

(declare-fun tp!1945449 () Bool)

(declare-fun tp!1945446 () Bool)

(assert (=> b!7085839 (= e!4259933 (and tp!1945449 tp!1945446))))

(assert (= (and b!7085704 ((_ is ElementMatch!17743) (regTwo!35999 r!11554))) b!7085836))

(assert (= (and b!7085704 ((_ is Concat!26588) (regTwo!35999 r!11554))) b!7085837))

(assert (= (and b!7085704 ((_ is Star!17743) (regTwo!35999 r!11554))) b!7085838))

(assert (= (and b!7085704 ((_ is Union!17743) (regTwo!35999 r!11554))) b!7085839))

(declare-fun b!7085840 () Bool)

(declare-fun e!4259934 () Bool)

(assert (=> b!7085840 (= e!4259934 tp_is_empty!44719)))

(declare-fun b!7085841 () Bool)

(declare-fun tp!1945455 () Bool)

(declare-fun tp!1945453 () Bool)

(assert (=> b!7085841 (= e!4259934 (and tp!1945455 tp!1945453))))

(declare-fun b!7085842 () Bool)

(declare-fun tp!1945452 () Bool)

(assert (=> b!7085842 (= e!4259934 tp!1945452)))

(assert (=> b!7085709 (= tp!1945374 e!4259934)))

(declare-fun b!7085843 () Bool)

(declare-fun tp!1945454 () Bool)

(declare-fun tp!1945451 () Bool)

(assert (=> b!7085843 (= e!4259934 (and tp!1945454 tp!1945451))))

(assert (= (and b!7085709 ((_ is ElementMatch!17743) (regOne!35998 r!11554))) b!7085840))

(assert (= (and b!7085709 ((_ is Concat!26588) (regOne!35998 r!11554))) b!7085841))

(assert (= (and b!7085709 ((_ is Star!17743) (regOne!35998 r!11554))) b!7085842))

(assert (= (and b!7085709 ((_ is Union!17743) (regOne!35998 r!11554))) b!7085843))

(declare-fun b!7085844 () Bool)

(declare-fun e!4259935 () Bool)

(assert (=> b!7085844 (= e!4259935 tp_is_empty!44719)))

(declare-fun b!7085845 () Bool)

(declare-fun tp!1945460 () Bool)

(declare-fun tp!1945458 () Bool)

(assert (=> b!7085845 (= e!4259935 (and tp!1945460 tp!1945458))))

(declare-fun b!7085846 () Bool)

(declare-fun tp!1945457 () Bool)

(assert (=> b!7085846 (= e!4259935 tp!1945457)))

(assert (=> b!7085709 (= tp!1945373 e!4259935)))

(declare-fun b!7085847 () Bool)

(declare-fun tp!1945459 () Bool)

(declare-fun tp!1945456 () Bool)

(assert (=> b!7085847 (= e!4259935 (and tp!1945459 tp!1945456))))

(assert (= (and b!7085709 ((_ is ElementMatch!17743) (regTwo!35998 r!11554))) b!7085844))

(assert (= (and b!7085709 ((_ is Concat!26588) (regTwo!35998 r!11554))) b!7085845))

(assert (= (and b!7085709 ((_ is Star!17743) (regTwo!35998 r!11554))) b!7085846))

(assert (= (and b!7085709 ((_ is Union!17743) (regTwo!35998 r!11554))) b!7085847))

(declare-fun b!7085848 () Bool)

(declare-fun e!4259936 () Bool)

(declare-fun tp!1945461 () Bool)

(declare-fun tp!1945462 () Bool)

(assert (=> b!7085848 (= e!4259936 (and tp!1945461 tp!1945462))))

(assert (=> b!7085708 (= tp!1945370 e!4259936)))

(assert (= (and b!7085708 ((_ is Cons!68582) (exprs!7239 auxCtx!45))) b!7085848))

(declare-fun b_lambda!270863 () Bool)

(assert (= b_lambda!270857 (or b!7085705 b_lambda!270863)))

(declare-fun bs!1882936 () Bool)

(declare-fun d!2216019 () Bool)

(assert (= bs!1882936 (and d!2216019 b!7085705)))

(assert (=> bs!1882936 (= (dynLambda!27972 lambda!429031 (h!75030 (exprs!7239 c!9994))) (validRegex!9018 (h!75030 (exprs!7239 c!9994))))))

(declare-fun m!7816878 () Bool)

(assert (=> bs!1882936 m!7816878))

(assert (=> b!7085719 d!2216019))

(check-sat (not b!7085839) (not bs!1882936) (not b!7085830) (not d!2216001) (not b_lambda!270863) (not d!2216015) tp_is_empty!44719 (not bm!643870) (not b!7085838) (not b!7085822) (not b!7085846) (not b!7085843) (not b!7085837) (not b!7085847) (not b!7085829) (not b!7085841) (not b!7085823) (not b!7085720) (not b!7085845) (not b!7085821) (not bm!643872) (not b!7085831) (not b!7085842) (not b!7085848) (not b!7085796) (not b!7085773) (not d!2216013))
(check-sat)
