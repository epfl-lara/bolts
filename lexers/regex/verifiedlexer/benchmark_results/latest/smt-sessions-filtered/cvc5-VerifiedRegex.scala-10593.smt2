; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!544598 () Bool)

(assert start!544598)

(declare-fun b!5144817 () Bool)

(declare-fun e!3208120 () Bool)

(declare-datatypes ((C!29218 0))(
  ( (C!29219 (val!24261 Int)) )
))
(declare-datatypes ((Regex!14476 0))(
  ( (ElementMatch!14476 (c!885767 C!29218)) (Concat!23321 (regOne!29464 Regex!14476) (regTwo!29464 Regex!14476)) (EmptyExpr!14476) (Star!14476 (reg!14805 Regex!14476)) (EmptyLang!14476) (Union!14476 (regOne!29465 Regex!14476) (regTwo!29465 Regex!14476)) )
))
(declare-datatypes ((List!59868 0))(
  ( (Nil!59744) (Cons!59744 (h!66192 Regex!14476) (t!372905 List!59868)) )
))
(declare-datatypes ((Context!7720 0))(
  ( (Context!7721 (exprs!4360 List!59868)) )
))
(declare-fun lt!2120744 () (Set Context!7720))

(declare-fun lambda!256695 () Int)

(declare-fun forall!13941 ((Set Context!7720) Int) Bool)

(assert (=> b!5144817 (= e!3208120 (not (forall!13941 lt!2120744 lambda!256695)))))

(declare-fun expr!117 () Regex!14476)

(declare-fun ctx!100 () Context!7720)

(declare-fun a!1296 () C!29218)

(declare-fun lostCauseZipper!1274 ((Set Context!7720)) Bool)

(declare-fun derivationStepZipperDown!155 (Regex!14476 Context!7720 C!29218) (Set Context!7720))

(assert (=> b!5144817 (lostCauseZipper!1274 (derivationStepZipperDown!155 (regTwo!29465 expr!117) ctx!100 a!1296))))

(declare-datatypes ((Unit!151131 0))(
  ( (Unit!151132) )
))
(declare-fun lt!2120742 () Unit!151131)

(declare-fun lemmaLostCauseFixPointDerivDown!45 (Regex!14476 Context!7720 C!29218) Unit!151131)

(assert (=> b!5144817 (= lt!2120742 (lemmaLostCauseFixPointDerivDown!45 (regTwo!29465 expr!117) ctx!100 a!1296))))

(assert (=> b!5144817 (lostCauseZipper!1274 lt!2120744)))

(assert (=> b!5144817 (= lt!2120744 (derivationStepZipperDown!155 (regOne!29465 expr!117) ctx!100 a!1296))))

(declare-fun lt!2120743 () Unit!151131)

(assert (=> b!5144817 (= lt!2120743 (lemmaLostCauseFixPointDerivDown!45 (regOne!29465 expr!117) ctx!100 a!1296))))

(declare-fun b!5144818 () Bool)

(declare-fun e!3208121 () Bool)

(declare-fun tp!1436833 () Bool)

(declare-fun tp!1436836 () Bool)

(assert (=> b!5144818 (= e!3208121 (and tp!1436833 tp!1436836))))

(declare-fun b!5144819 () Bool)

(declare-fun tp!1436834 () Bool)

(assert (=> b!5144819 (= e!3208121 tp!1436834)))

(declare-fun b!5144820 () Bool)

(declare-fun e!3208118 () Bool)

(declare-fun lostCause!1504 (Context!7720) Bool)

(assert (=> b!5144820 (= e!3208118 (lostCause!1504 ctx!100))))

(declare-fun b!5144821 () Bool)

(declare-fun res!2190247 () Bool)

(assert (=> b!5144821 (=> (not res!2190247) (not e!3208120))))

(assert (=> b!5144821 (= res!2190247 e!3208118)))

(declare-fun res!2190249 () Bool)

(assert (=> b!5144821 (=> res!2190249 e!3208118)))

(declare-fun lostCause!1505 (Regex!14476) Bool)

(assert (=> b!5144821 (= res!2190249 (lostCause!1505 expr!117))))

(declare-fun res!2190248 () Bool)

(assert (=> start!544598 (=> (not res!2190248) (not e!3208120))))

(declare-fun validRegex!6331 (Regex!14476) Bool)

(assert (=> start!544598 (= res!2190248 (validRegex!6331 expr!117))))

(assert (=> start!544598 e!3208120))

(assert (=> start!544598 e!3208121))

(declare-fun e!3208119 () Bool)

(declare-fun inv!79372 (Context!7720) Bool)

(assert (=> start!544598 (and (inv!79372 ctx!100) e!3208119)))

(declare-fun tp_is_empty!38101 () Bool)

(assert (=> start!544598 tp_is_empty!38101))

(declare-fun b!5144822 () Bool)

(declare-fun res!2190246 () Bool)

(assert (=> b!5144822 (=> (not res!2190246) (not e!3208120))))

(assert (=> b!5144822 (= res!2190246 (and (or (not (is-ElementMatch!14476 expr!117)) (not (= (c!885767 expr!117) a!1296))) (is-Union!14476 expr!117)))))

(declare-fun b!5144823 () Bool)

(declare-fun tp!1436832 () Bool)

(declare-fun tp!1436835 () Bool)

(assert (=> b!5144823 (= e!3208121 (and tp!1436832 tp!1436835))))

(declare-fun b!5144824 () Bool)

(declare-fun tp!1436837 () Bool)

(assert (=> b!5144824 (= e!3208119 tp!1436837)))

(declare-fun b!5144825 () Bool)

(assert (=> b!5144825 (= e!3208121 tp_is_empty!38101)))

(assert (= (and start!544598 res!2190248) b!5144821))

(assert (= (and b!5144821 (not res!2190249)) b!5144820))

(assert (= (and b!5144821 res!2190247) b!5144822))

(assert (= (and b!5144822 res!2190246) b!5144817))

(assert (= (and start!544598 (is-ElementMatch!14476 expr!117)) b!5144825))

(assert (= (and start!544598 (is-Concat!23321 expr!117)) b!5144818))

(assert (= (and start!544598 (is-Star!14476 expr!117)) b!5144819))

(assert (= (and start!544598 (is-Union!14476 expr!117)) b!5144823))

(assert (= start!544598 b!5144824))

(declare-fun m!6205894 () Bool)

(assert (=> b!5144817 m!6205894))

(declare-fun m!6205896 () Bool)

(assert (=> b!5144817 m!6205896))

(assert (=> b!5144817 m!6205894))

(declare-fun m!6205898 () Bool)

(assert (=> b!5144817 m!6205898))

(declare-fun m!6205900 () Bool)

(assert (=> b!5144817 m!6205900))

(declare-fun m!6205902 () Bool)

(assert (=> b!5144817 m!6205902))

(declare-fun m!6205904 () Bool)

(assert (=> b!5144817 m!6205904))

(declare-fun m!6205906 () Bool)

(assert (=> b!5144817 m!6205906))

(declare-fun m!6205908 () Bool)

(assert (=> b!5144820 m!6205908))

(declare-fun m!6205910 () Bool)

(assert (=> b!5144821 m!6205910))

(declare-fun m!6205912 () Bool)

(assert (=> start!544598 m!6205912))

(declare-fun m!6205914 () Bool)

(assert (=> start!544598 m!6205914))

(push 1)

(assert (not b!5144818))

(assert (not b!5144821))

(assert (not start!544598))

(assert (not b!5144823))

(assert (not b!5144819))

(assert (not b!5144824))

(assert tp_is_empty!38101)

(assert (not b!5144820))

(assert (not b!5144817))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1663252 () Bool)

(declare-fun lostCauseFct!358 (Regex!14476) Bool)

(assert (=> d!1663252 (= (lostCause!1505 expr!117) (lostCauseFct!358 expr!117))))

(declare-fun bs!1201017 () Bool)

(assert (= bs!1201017 d!1663252))

(declare-fun m!6205938 () Bool)

(assert (=> bs!1201017 m!6205938))

(assert (=> b!5144821 d!1663252))

(declare-fun d!1663254 () Bool)

(declare-fun lambda!256701 () Int)

(declare-fun exists!1802 (List!59868 Int) Bool)

(assert (=> d!1663254 (= (lostCause!1504 ctx!100) (exists!1802 (exprs!4360 ctx!100) lambda!256701))))

(declare-fun bs!1201018 () Bool)

(assert (= bs!1201018 d!1663254))

(declare-fun m!6205940 () Bool)

(assert (=> bs!1201018 m!6205940))

(assert (=> b!5144820 d!1663254))

(declare-fun b!5144889 () Bool)

(declare-fun e!3208162 () Bool)

(declare-fun e!3208167 () Bool)

(assert (=> b!5144889 (= e!3208162 e!3208167)))

(declare-fun c!885780 () Bool)

(assert (=> b!5144889 (= c!885780 (is-Star!14476 expr!117))))

(declare-fun b!5144890 () Bool)

(declare-fun e!3208164 () Bool)

(declare-fun call!359445 () Bool)

(assert (=> b!5144890 (= e!3208164 call!359445)))

(declare-fun b!5144891 () Bool)

(declare-fun e!3208165 () Bool)

(assert (=> b!5144891 (= e!3208165 e!3208164)))

(declare-fun res!2190283 () Bool)

(assert (=> b!5144891 (=> (not res!2190283) (not e!3208164))))

(declare-fun call!359446 () Bool)

(assert (=> b!5144891 (= res!2190283 call!359446)))

(declare-fun b!5144892 () Bool)

(declare-fun res!2190286 () Bool)

(assert (=> b!5144892 (=> res!2190286 e!3208165)))

(assert (=> b!5144892 (= res!2190286 (not (is-Concat!23321 expr!117)))))

(declare-fun e!3208163 () Bool)

(assert (=> b!5144892 (= e!3208163 e!3208165)))

(declare-fun b!5144893 () Bool)

(declare-fun e!3208166 () Bool)

(assert (=> b!5144893 (= e!3208167 e!3208166)))

(declare-fun res!2190282 () Bool)

(declare-fun nullable!4832 (Regex!14476) Bool)

(assert (=> b!5144893 (= res!2190282 (not (nullable!4832 (reg!14805 expr!117))))))

(assert (=> b!5144893 (=> (not res!2190282) (not e!3208166))))

(declare-fun d!1663258 () Bool)

(declare-fun res!2190284 () Bool)

(assert (=> d!1663258 (=> res!2190284 e!3208162)))

(assert (=> d!1663258 (= res!2190284 (is-ElementMatch!14476 expr!117))))

(assert (=> d!1663258 (= (validRegex!6331 expr!117) e!3208162)))

(declare-fun b!5144894 () Bool)

(declare-fun call!359447 () Bool)

(assert (=> b!5144894 (= e!3208166 call!359447)))

(declare-fun b!5144895 () Bool)

(declare-fun res!2190285 () Bool)

(declare-fun e!3208168 () Bool)

(assert (=> b!5144895 (=> (not res!2190285) (not e!3208168))))

(assert (=> b!5144895 (= res!2190285 call!359446)))

(assert (=> b!5144895 (= e!3208163 e!3208168)))

(declare-fun bm!359440 () Bool)

(assert (=> bm!359440 (= call!359446 call!359447)))

(declare-fun b!5144896 () Bool)

(assert (=> b!5144896 (= e!3208167 e!3208163)))

(declare-fun c!885779 () Bool)

(assert (=> b!5144896 (= c!885779 (is-Union!14476 expr!117))))

(declare-fun b!5144897 () Bool)

(assert (=> b!5144897 (= e!3208168 call!359445)))

(declare-fun bm!359441 () Bool)

(assert (=> bm!359441 (= call!359447 (validRegex!6331 (ite c!885780 (reg!14805 expr!117) (ite c!885779 (regOne!29465 expr!117) (regOne!29464 expr!117)))))))

(declare-fun bm!359442 () Bool)

(assert (=> bm!359442 (= call!359445 (validRegex!6331 (ite c!885779 (regTwo!29465 expr!117) (regTwo!29464 expr!117))))))

(assert (= (and d!1663258 (not res!2190284)) b!5144889))

(assert (= (and b!5144889 c!885780) b!5144893))

(assert (= (and b!5144889 (not c!885780)) b!5144896))

(assert (= (and b!5144893 res!2190282) b!5144894))

(assert (= (and b!5144896 c!885779) b!5144895))

(assert (= (and b!5144896 (not c!885779)) b!5144892))

(assert (= (and b!5144895 res!2190285) b!5144897))

(assert (= (and b!5144892 (not res!2190286)) b!5144891))

(assert (= (and b!5144891 res!2190283) b!5144890))

(assert (= (or b!5144897 b!5144890) bm!359442))

(assert (= (or b!5144895 b!5144891) bm!359440))

(assert (= (or b!5144894 bm!359440) bm!359441))

(declare-fun m!6205942 () Bool)

(assert (=> b!5144893 m!6205942))

(declare-fun m!6205944 () Bool)

(assert (=> bm!359441 m!6205944))

(declare-fun m!6205946 () Bool)

(assert (=> bm!359442 m!6205946))

(assert (=> start!544598 d!1663258))

(declare-fun bs!1201019 () Bool)

(declare-fun d!1663260 () Bool)

(assert (= bs!1201019 (and d!1663260 d!1663254)))

(declare-fun lambda!256704 () Int)

(assert (=> bs!1201019 (not (= lambda!256704 lambda!256701))))

(declare-fun forall!13943 (List!59868 Int) Bool)

(assert (=> d!1663260 (= (inv!79372 ctx!100) (forall!13943 (exprs!4360 ctx!100) lambda!256704))))

(declare-fun bs!1201020 () Bool)

(assert (= bs!1201020 d!1663260))

(declare-fun m!6205948 () Bool)

(assert (=> bs!1201020 m!6205948))

(assert (=> start!544598 d!1663260))

(declare-fun d!1663262 () Bool)

(assert (=> d!1663262 (lostCauseZipper!1274 (derivationStepZipperDown!155 (regTwo!29465 expr!117) ctx!100 a!1296))))

(declare-fun lt!2120756 () Unit!151131)

(declare-fun choose!38063 (Regex!14476 Context!7720 C!29218) Unit!151131)

(assert (=> d!1663262 (= lt!2120756 (choose!38063 (regTwo!29465 expr!117) ctx!100 a!1296))))

(assert (=> d!1663262 (validRegex!6331 (regTwo!29465 expr!117))))

(assert (=> d!1663262 (= (lemmaLostCauseFixPointDerivDown!45 (regTwo!29465 expr!117) ctx!100 a!1296) lt!2120756)))

(declare-fun bs!1201021 () Bool)

(assert (= bs!1201021 d!1663262))

(assert (=> bs!1201021 m!6205894))

(assert (=> bs!1201021 m!6205894))

(assert (=> bs!1201021 m!6205896))

(declare-fun m!6205950 () Bool)

(assert (=> bs!1201021 m!6205950))

(declare-fun m!6205952 () Bool)

(assert (=> bs!1201021 m!6205952))

(assert (=> b!5144817 d!1663262))

(declare-fun d!1663264 () Bool)

(declare-fun lt!2120759 () Bool)

(declare-datatypes ((List!59870 0))(
  ( (Nil!59746) (Cons!59746 (h!66194 Context!7720) (t!372907 List!59870)) )
))
(declare-fun forall!13944 (List!59870 Int) Bool)

(declare-fun toList!8390 ((Set Context!7720)) List!59870)

(assert (=> d!1663264 (= lt!2120759 (forall!13944 (toList!8390 lt!2120744) lambda!256695))))

(declare-fun choose!38064 ((Set Context!7720) Int) Bool)

(assert (=> d!1663264 (= lt!2120759 (choose!38064 lt!2120744 lambda!256695))))

(assert (=> d!1663264 (= (forall!13941 lt!2120744 lambda!256695) lt!2120759)))

(declare-fun bs!1201022 () Bool)

(assert (= bs!1201022 d!1663264))

(declare-fun m!6205960 () Bool)

(assert (=> bs!1201022 m!6205960))

(assert (=> bs!1201022 m!6205960))

(declare-fun m!6205962 () Bool)

(assert (=> bs!1201022 m!6205962))

(declare-fun m!6205964 () Bool)

(assert (=> bs!1201022 m!6205964))

(assert (=> b!5144817 d!1663264))

(declare-fun bs!1201027 () Bool)

(declare-fun d!1663268 () Bool)

(assert (= bs!1201027 (and d!1663268 b!5144817)))

(declare-fun lambda!256723 () Int)

(assert (=> bs!1201027 (= lambda!256723 lambda!256695)))

(declare-fun bs!1201028 () Bool)

(declare-fun b!5144911 () Bool)

(assert (= bs!1201028 (and b!5144911 b!5144817)))

(declare-fun lambda!256724 () Int)

(assert (=> bs!1201028 (not (= lambda!256724 lambda!256695))))

(declare-fun bs!1201029 () Bool)

(assert (= bs!1201029 (and b!5144911 d!1663268)))

(assert (=> bs!1201029 (not (= lambda!256724 lambda!256723))))

(declare-fun bs!1201030 () Bool)

(declare-fun b!5144912 () Bool)

(assert (= bs!1201030 (and b!5144912 b!5144817)))

(declare-fun lambda!256725 () Int)

(assert (=> bs!1201030 (not (= lambda!256725 lambda!256695))))

(declare-fun bs!1201031 () Bool)

(assert (= bs!1201031 (and b!5144912 d!1663268)))

(assert (=> bs!1201031 (not (= lambda!256725 lambda!256723))))

(declare-fun bs!1201032 () Bool)

(assert (= bs!1201032 (and b!5144912 b!5144911)))

(assert (=> bs!1201032 (= lambda!256725 lambda!256724)))

(declare-fun e!3208182 () Unit!151131)

(declare-fun Unit!151135 () Unit!151131)

(assert (=> b!5144911 (= e!3208182 Unit!151135)))

(declare-fun lt!2120783 () List!59870)

(declare-fun call!359461 () List!59870)

(assert (=> b!5144911 (= lt!2120783 call!359461)))

(declare-fun lt!2120779 () Unit!151131)

(declare-fun lemmaNotForallThenExists!437 (List!59870 Int) Unit!151131)

(assert (=> b!5144911 (= lt!2120779 (lemmaNotForallThenExists!437 lt!2120783 lambda!256723))))

(declare-fun call!359462 () Bool)

(assert (=> b!5144911 call!359462))

(declare-fun lt!2120778 () Unit!151131)

(assert (=> b!5144911 (= lt!2120778 lt!2120779)))

(declare-fun Unit!151136 () Unit!151131)

(assert (=> b!5144912 (= e!3208182 Unit!151136)))

(declare-fun lt!2120780 () List!59870)

(assert (=> b!5144912 (= lt!2120780 call!359461)))

(declare-fun lt!2120776 () Unit!151131)

(declare-fun lemmaForallThenNotExists!404 (List!59870 Int) Unit!151131)

(assert (=> b!5144912 (= lt!2120776 (lemmaForallThenNotExists!404 lt!2120780 lambda!256723))))

(assert (=> b!5144912 (not call!359462)))

(declare-fun lt!2120781 () Unit!151131)

(assert (=> b!5144912 (= lt!2120781 lt!2120776)))

(declare-fun c!885793 () Bool)

(declare-fun bm!359456 () Bool)

(declare-fun exists!1803 (List!59870 Int) Bool)

(assert (=> bm!359456 (= call!359462 (exists!1803 (ite c!885793 lt!2120783 lt!2120780) (ite c!885793 lambda!256724 lambda!256725)))))

(declare-fun lt!2120777 () Bool)

(declare-datatypes ((List!59871 0))(
  ( (Nil!59747) (Cons!59747 (h!66195 C!29218) (t!372908 List!59871)) )
))
(declare-datatypes ((Option!14790 0))(
  ( (None!14789) (Some!14789 (v!50818 List!59871)) )
))
(declare-fun isEmpty!32051 (Option!14790) Bool)

(declare-fun getLanguageWitness!947 ((Set Context!7720)) Option!14790)

(assert (=> d!1663268 (= lt!2120777 (isEmpty!32051 (getLanguageWitness!947 lt!2120744)))))

(assert (=> d!1663268 (= lt!2120777 (forall!13941 lt!2120744 lambda!256723))))

(declare-fun lt!2120782 () Unit!151131)

(assert (=> d!1663268 (= lt!2120782 e!3208182)))

(assert (=> d!1663268 (= c!885793 (not (forall!13941 lt!2120744 lambda!256723)))))

(assert (=> d!1663268 (= (lostCauseZipper!1274 lt!2120744) lt!2120777)))

(declare-fun bm!359457 () Bool)

(assert (=> bm!359457 (= call!359461 (toList!8390 lt!2120744))))

(assert (= (and d!1663268 c!885793) b!5144911))

(assert (= (and d!1663268 (not c!885793)) b!5144912))

(assert (= (or b!5144911 b!5144912) bm!359456))

(assert (= (or b!5144911 b!5144912) bm!359457))

(assert (=> bm!359457 m!6205960))

(declare-fun m!6205972 () Bool)

(assert (=> d!1663268 m!6205972))

(assert (=> d!1663268 m!6205972))

(declare-fun m!6205974 () Bool)

(assert (=> d!1663268 m!6205974))

(declare-fun m!6205976 () Bool)

(assert (=> d!1663268 m!6205976))

(assert (=> d!1663268 m!6205976))

(declare-fun m!6205978 () Bool)

(assert (=> b!5144912 m!6205978))

(declare-fun m!6205980 () Bool)

(assert (=> bm!359456 m!6205980))

(declare-fun m!6205982 () Bool)

(assert (=> b!5144911 m!6205982))

(assert (=> b!5144817 d!1663268))

(declare-fun d!1663276 () Bool)

(assert (=> d!1663276 (lostCauseZipper!1274 (derivationStepZipperDown!155 (regOne!29465 expr!117) ctx!100 a!1296))))

(declare-fun lt!2120784 () Unit!151131)

(assert (=> d!1663276 (= lt!2120784 (choose!38063 (regOne!29465 expr!117) ctx!100 a!1296))))

(assert (=> d!1663276 (validRegex!6331 (regOne!29465 expr!117))))

(assert (=> d!1663276 (= (lemmaLostCauseFixPointDerivDown!45 (regOne!29465 expr!117) ctx!100 a!1296) lt!2120784)))

(declare-fun bs!1201033 () Bool)

(assert (= bs!1201033 d!1663276))

(assert (=> bs!1201033 m!6205902))

(assert (=> bs!1201033 m!6205902))

(declare-fun m!6205984 () Bool)

(assert (=> bs!1201033 m!6205984))

(declare-fun m!6205986 () Bool)

(assert (=> bs!1201033 m!6205986))

(declare-fun m!6205988 () Bool)

(assert (=> bs!1201033 m!6205988))

(assert (=> b!5144817 d!1663276))

(declare-fun bs!1201034 () Bool)

(declare-fun d!1663278 () Bool)

(assert (= bs!1201034 (and d!1663278 b!5144817)))

(declare-fun lambda!256726 () Int)

(assert (=> bs!1201034 (= lambda!256726 lambda!256695)))

(declare-fun bs!1201035 () Bool)

(assert (= bs!1201035 (and d!1663278 d!1663268)))

(assert (=> bs!1201035 (= lambda!256726 lambda!256723)))

(declare-fun bs!1201036 () Bool)

(assert (= bs!1201036 (and d!1663278 b!5144911)))

(assert (=> bs!1201036 (not (= lambda!256726 lambda!256724))))

(declare-fun bs!1201037 () Bool)

(assert (= bs!1201037 (and d!1663278 b!5144912)))

(assert (=> bs!1201037 (not (= lambda!256726 lambda!256725))))

(declare-fun bs!1201038 () Bool)

(declare-fun b!5144913 () Bool)

(assert (= bs!1201038 (and b!5144913 b!5144912)))

(declare-fun lambda!256727 () Int)

(assert (=> bs!1201038 (= lambda!256727 lambda!256725)))

(declare-fun bs!1201039 () Bool)

(assert (= bs!1201039 (and b!5144913 b!5144911)))

(assert (=> bs!1201039 (= lambda!256727 lambda!256724)))

(declare-fun bs!1201040 () Bool)

(assert (= bs!1201040 (and b!5144913 b!5144817)))

(assert (=> bs!1201040 (not (= lambda!256727 lambda!256695))))

(declare-fun bs!1201041 () Bool)

(assert (= bs!1201041 (and b!5144913 d!1663268)))

(assert (=> bs!1201041 (not (= lambda!256727 lambda!256723))))

(declare-fun bs!1201042 () Bool)

(assert (= bs!1201042 (and b!5144913 d!1663278)))

(assert (=> bs!1201042 (not (= lambda!256727 lambda!256726))))

(declare-fun bs!1201043 () Bool)

(declare-fun b!5144914 () Bool)

(assert (= bs!1201043 (and b!5144914 b!5144913)))

(declare-fun lambda!256728 () Int)

(assert (=> bs!1201043 (= lambda!256728 lambda!256727)))

(declare-fun bs!1201044 () Bool)

(assert (= bs!1201044 (and b!5144914 b!5144912)))

(assert (=> bs!1201044 (= lambda!256728 lambda!256725)))

(declare-fun bs!1201045 () Bool)

(assert (= bs!1201045 (and b!5144914 b!5144911)))

(assert (=> bs!1201045 (= lambda!256728 lambda!256724)))

(declare-fun bs!1201046 () Bool)

(assert (= bs!1201046 (and b!5144914 b!5144817)))

(assert (=> bs!1201046 (not (= lambda!256728 lambda!256695))))

(declare-fun bs!1201047 () Bool)

(assert (= bs!1201047 (and b!5144914 d!1663268)))

(assert (=> bs!1201047 (not (= lambda!256728 lambda!256723))))

(declare-fun bs!1201048 () Bool)

(assert (= bs!1201048 (and b!5144914 d!1663278)))

(assert (=> bs!1201048 (not (= lambda!256728 lambda!256726))))

(declare-fun e!3208183 () Unit!151131)

(declare-fun Unit!151137 () Unit!151131)

(assert (=> b!5144913 (= e!3208183 Unit!151137)))

(declare-fun lt!2120792 () List!59870)

(declare-fun call!359463 () List!59870)

(assert (=> b!5144913 (= lt!2120792 call!359463)))

(declare-fun lt!2120788 () Unit!151131)

(assert (=> b!5144913 (= lt!2120788 (lemmaNotForallThenExists!437 lt!2120792 lambda!256726))))

(declare-fun call!359464 () Bool)

(assert (=> b!5144913 call!359464))

(declare-fun lt!2120787 () Unit!151131)

(assert (=> b!5144913 (= lt!2120787 lt!2120788)))

(declare-fun Unit!151138 () Unit!151131)

(assert (=> b!5144914 (= e!3208183 Unit!151138)))

(declare-fun lt!2120789 () List!59870)

(assert (=> b!5144914 (= lt!2120789 call!359463)))

(declare-fun lt!2120785 () Unit!151131)

(assert (=> b!5144914 (= lt!2120785 (lemmaForallThenNotExists!404 lt!2120789 lambda!256726))))

(assert (=> b!5144914 (not call!359464)))

(declare-fun lt!2120790 () Unit!151131)

(assert (=> b!5144914 (= lt!2120790 lt!2120785)))

(declare-fun c!885794 () Bool)

(declare-fun bm!359458 () Bool)

(assert (=> bm!359458 (= call!359464 (exists!1803 (ite c!885794 lt!2120792 lt!2120789) (ite c!885794 lambda!256727 lambda!256728)))))

(declare-fun lt!2120786 () Bool)

(assert (=> d!1663278 (= lt!2120786 (isEmpty!32051 (getLanguageWitness!947 (derivationStepZipperDown!155 (regTwo!29465 expr!117) ctx!100 a!1296))))))

(assert (=> d!1663278 (= lt!2120786 (forall!13941 (derivationStepZipperDown!155 (regTwo!29465 expr!117) ctx!100 a!1296) lambda!256726))))

(declare-fun lt!2120791 () Unit!151131)

(assert (=> d!1663278 (= lt!2120791 e!3208183)))

(assert (=> d!1663278 (= c!885794 (not (forall!13941 (derivationStepZipperDown!155 (regTwo!29465 expr!117) ctx!100 a!1296) lambda!256726)))))

(assert (=> d!1663278 (= (lostCauseZipper!1274 (derivationStepZipperDown!155 (regTwo!29465 expr!117) ctx!100 a!1296)) lt!2120786)))

(declare-fun bm!359459 () Bool)

(assert (=> bm!359459 (= call!359463 (toList!8390 (derivationStepZipperDown!155 (regTwo!29465 expr!117) ctx!100 a!1296)))))

(assert (= (and d!1663278 c!885794) b!5144913))

(assert (= (and d!1663278 (not c!885794)) b!5144914))

(assert (= (or b!5144913 b!5144914) bm!359458))

(assert (= (or b!5144913 b!5144914) bm!359459))

(assert (=> bm!359459 m!6205894))

(declare-fun m!6205990 () Bool)

(assert (=> bm!359459 m!6205990))

(assert (=> d!1663278 m!6205894))

(declare-fun m!6205992 () Bool)

(assert (=> d!1663278 m!6205992))

(assert (=> d!1663278 m!6205992))

(declare-fun m!6205994 () Bool)

(assert (=> d!1663278 m!6205994))

(assert (=> d!1663278 m!6205894))

(declare-fun m!6205996 () Bool)

(assert (=> d!1663278 m!6205996))

(assert (=> d!1663278 m!6205894))

(assert (=> d!1663278 m!6205996))

(declare-fun m!6205998 () Bool)

(assert (=> b!5144914 m!6205998))

(declare-fun m!6206000 () Bool)

(assert (=> bm!359458 m!6206000))

(declare-fun m!6206002 () Bool)

(assert (=> b!5144913 m!6206002))

(assert (=> b!5144817 d!1663278))

(declare-fun c!885807 () Bool)

(declare-fun call!359477 () (Set Context!7720))

(declare-fun bm!359472 () Bool)

(declare-fun call!359482 () List!59868)

(assert (=> bm!359472 (= call!359477 (derivationStepZipperDown!155 (ite c!885807 (regTwo!29465 (regTwo!29465 expr!117)) (regOne!29464 (regTwo!29465 expr!117))) (ite c!885807 ctx!100 (Context!7721 call!359482)) a!1296))))

(declare-fun bm!359473 () Bool)

(declare-fun call!359481 () (Set Context!7720))

(declare-fun call!359479 () (Set Context!7720))

(assert (=> bm!359473 (= call!359481 call!359479)))

(declare-fun b!5144937 () Bool)

(declare-fun e!3208201 () (Set Context!7720))

(assert (=> b!5144937 (= e!3208201 (as set.empty (Set Context!7720)))))

(declare-fun bm!359474 () Bool)

(declare-fun call!359478 () (Set Context!7720))

(assert (=> bm!359474 (= call!359478 call!359481)))

(declare-fun bm!359475 () Bool)

(declare-fun c!885809 () Bool)

(declare-fun call!359480 () List!59868)

(declare-fun c!885805 () Bool)

(assert (=> bm!359475 (= call!359479 (derivationStepZipperDown!155 (ite c!885807 (regOne!29465 (regTwo!29465 expr!117)) (ite c!885805 (regTwo!29464 (regTwo!29465 expr!117)) (ite c!885809 (regOne!29464 (regTwo!29465 expr!117)) (reg!14805 (regTwo!29465 expr!117))))) (ite (or c!885807 c!885805) ctx!100 (Context!7721 call!359480)) a!1296))))

(declare-fun d!1663280 () Bool)

(declare-fun c!885806 () Bool)

(assert (=> d!1663280 (= c!885806 (and (is-ElementMatch!14476 (regTwo!29465 expr!117)) (= (c!885767 (regTwo!29465 expr!117)) a!1296)))))

(declare-fun e!3208197 () (Set Context!7720))

(assert (=> d!1663280 (= (derivationStepZipperDown!155 (regTwo!29465 expr!117) ctx!100 a!1296) e!3208197)))

(declare-fun b!5144938 () Bool)

(assert (=> b!5144938 (= e!3208197 (set.insert ctx!100 (as set.empty (Set Context!7720))))))

(declare-fun b!5144939 () Bool)

(declare-fun e!3208199 () (Set Context!7720))

(assert (=> b!5144939 (= e!3208197 e!3208199)))

(assert (=> b!5144939 (= c!885807 (is-Union!14476 (regTwo!29465 expr!117)))))

(declare-fun b!5144940 () Bool)

(declare-fun e!3208200 () Bool)

(assert (=> b!5144940 (= c!885805 e!3208200)))

(declare-fun res!2190294 () Bool)

(assert (=> b!5144940 (=> (not res!2190294) (not e!3208200))))

(assert (=> b!5144940 (= res!2190294 (is-Concat!23321 (regTwo!29465 expr!117)))))

(declare-fun e!3208198 () (Set Context!7720))

(assert (=> b!5144940 (= e!3208199 e!3208198)))

(declare-fun b!5144941 () Bool)

(declare-fun e!3208196 () (Set Context!7720))

(assert (=> b!5144941 (= e!3208196 call!359478)))

(declare-fun bm!359476 () Bool)

(assert (=> bm!359476 (= call!359480 call!359482)))

(declare-fun b!5144942 () Bool)

(assert (=> b!5144942 (= e!3208199 (set.union call!359479 call!359477))))

(declare-fun b!5144943 () Bool)

(assert (=> b!5144943 (= e!3208198 e!3208196)))

(assert (=> b!5144943 (= c!885809 (is-Concat!23321 (regTwo!29465 expr!117)))))

(declare-fun b!5144944 () Bool)

(assert (=> b!5144944 (= e!3208201 call!359478)))

(declare-fun b!5144945 () Bool)

(assert (=> b!5144945 (= e!3208200 (nullable!4832 (regOne!29464 (regTwo!29465 expr!117))))))

(declare-fun b!5144946 () Bool)

(assert (=> b!5144946 (= e!3208198 (set.union call!359477 call!359481))))

(declare-fun bm!359477 () Bool)

(declare-fun $colon$colon!1204 (List!59868 Regex!14476) List!59868)

(assert (=> bm!359477 (= call!359482 ($colon$colon!1204 (exprs!4360 ctx!100) (ite (or c!885805 c!885809) (regTwo!29464 (regTwo!29465 expr!117)) (regTwo!29465 expr!117))))))

(declare-fun b!5144947 () Bool)

(declare-fun c!885808 () Bool)

(assert (=> b!5144947 (= c!885808 (is-Star!14476 (regTwo!29465 expr!117)))))

(assert (=> b!5144947 (= e!3208196 e!3208201)))

(assert (= (and d!1663280 c!885806) b!5144938))

(assert (= (and d!1663280 (not c!885806)) b!5144939))

(assert (= (and b!5144939 c!885807) b!5144942))

(assert (= (and b!5144939 (not c!885807)) b!5144940))

(assert (= (and b!5144940 res!2190294) b!5144945))

(assert (= (and b!5144940 c!885805) b!5144946))

(assert (= (and b!5144940 (not c!885805)) b!5144943))

(assert (= (and b!5144943 c!885809) b!5144941))

(assert (= (and b!5144943 (not c!885809)) b!5144947))

(assert (= (and b!5144947 c!885808) b!5144944))

(assert (= (and b!5144947 (not c!885808)) b!5144937))

(assert (= (or b!5144941 b!5144944) bm!359476))

(assert (= (or b!5144941 b!5144944) bm!359474))

(assert (= (or b!5144946 bm!359476) bm!359477))

(assert (= (or b!5144946 bm!359474) bm!359473))

(assert (= (or b!5144942 b!5144946) bm!359472))

(assert (= (or b!5144942 bm!359473) bm!359475))

(declare-fun m!6206008 () Bool)

(assert (=> b!5144938 m!6206008))

(declare-fun m!6206010 () Bool)

(assert (=> bm!359475 m!6206010))

(declare-fun m!6206012 () Bool)

(assert (=> bm!359477 m!6206012))

(declare-fun m!6206014 () Bool)

(assert (=> bm!359472 m!6206014))

(declare-fun m!6206016 () Bool)

(assert (=> b!5144945 m!6206016))

(assert (=> b!5144817 d!1663280))

(declare-fun call!359483 () (Set Context!7720))

(declare-fun bm!359478 () Bool)

(declare-fun call!359488 () List!59868)

(declare-fun c!885812 () Bool)

(assert (=> bm!359478 (= call!359483 (derivationStepZipperDown!155 (ite c!885812 (regTwo!29465 (regOne!29465 expr!117)) (regOne!29464 (regOne!29465 expr!117))) (ite c!885812 ctx!100 (Context!7721 call!359488)) a!1296))))

(declare-fun bm!359479 () Bool)

(declare-fun call!359487 () (Set Context!7720))

(declare-fun call!359485 () (Set Context!7720))

(assert (=> bm!359479 (= call!359487 call!359485)))

(declare-fun b!5144948 () Bool)

(declare-fun e!3208207 () (Set Context!7720))

(assert (=> b!5144948 (= e!3208207 (as set.empty (Set Context!7720)))))

(declare-fun bm!359480 () Bool)

(declare-fun call!359484 () (Set Context!7720))

(assert (=> bm!359480 (= call!359484 call!359487)))

(declare-fun call!359486 () List!59868)

(declare-fun c!885810 () Bool)

(declare-fun bm!359481 () Bool)

(declare-fun c!885814 () Bool)

(assert (=> bm!359481 (= call!359485 (derivationStepZipperDown!155 (ite c!885812 (regOne!29465 (regOne!29465 expr!117)) (ite c!885810 (regTwo!29464 (regOne!29465 expr!117)) (ite c!885814 (regOne!29464 (regOne!29465 expr!117)) (reg!14805 (regOne!29465 expr!117))))) (ite (or c!885812 c!885810) ctx!100 (Context!7721 call!359486)) a!1296))))

(declare-fun d!1663284 () Bool)

(declare-fun c!885811 () Bool)

(assert (=> d!1663284 (= c!885811 (and (is-ElementMatch!14476 (regOne!29465 expr!117)) (= (c!885767 (regOne!29465 expr!117)) a!1296)))))

(declare-fun e!3208203 () (Set Context!7720))

(assert (=> d!1663284 (= (derivationStepZipperDown!155 (regOne!29465 expr!117) ctx!100 a!1296) e!3208203)))

(declare-fun b!5144949 () Bool)

(assert (=> b!5144949 (= e!3208203 (set.insert ctx!100 (as set.empty (Set Context!7720))))))

(declare-fun b!5144950 () Bool)

(declare-fun e!3208205 () (Set Context!7720))

(assert (=> b!5144950 (= e!3208203 e!3208205)))

(assert (=> b!5144950 (= c!885812 (is-Union!14476 (regOne!29465 expr!117)))))

(declare-fun b!5144951 () Bool)

(declare-fun e!3208206 () Bool)

(assert (=> b!5144951 (= c!885810 e!3208206)))

(declare-fun res!2190295 () Bool)

(assert (=> b!5144951 (=> (not res!2190295) (not e!3208206))))

(assert (=> b!5144951 (= res!2190295 (is-Concat!23321 (regOne!29465 expr!117)))))

(declare-fun e!3208204 () (Set Context!7720))

(assert (=> b!5144951 (= e!3208205 e!3208204)))

(declare-fun b!5144952 () Bool)

(declare-fun e!3208202 () (Set Context!7720))

(assert (=> b!5144952 (= e!3208202 call!359484)))

(declare-fun bm!359482 () Bool)

(assert (=> bm!359482 (= call!359486 call!359488)))

(declare-fun b!5144953 () Bool)

(assert (=> b!5144953 (= e!3208205 (set.union call!359485 call!359483))))

(declare-fun b!5144954 () Bool)

(assert (=> b!5144954 (= e!3208204 e!3208202)))

(assert (=> b!5144954 (= c!885814 (is-Concat!23321 (regOne!29465 expr!117)))))

(declare-fun b!5144955 () Bool)

(assert (=> b!5144955 (= e!3208207 call!359484)))

(declare-fun b!5144956 () Bool)

(assert (=> b!5144956 (= e!3208206 (nullable!4832 (regOne!29464 (regOne!29465 expr!117))))))

(declare-fun b!5144957 () Bool)

(assert (=> b!5144957 (= e!3208204 (set.union call!359483 call!359487))))

(declare-fun bm!359483 () Bool)

(assert (=> bm!359483 (= call!359488 ($colon$colon!1204 (exprs!4360 ctx!100) (ite (or c!885810 c!885814) (regTwo!29464 (regOne!29465 expr!117)) (regOne!29465 expr!117))))))

(declare-fun b!5144958 () Bool)

(declare-fun c!885813 () Bool)

(assert (=> b!5144958 (= c!885813 (is-Star!14476 (regOne!29465 expr!117)))))

(assert (=> b!5144958 (= e!3208202 e!3208207)))

(assert (= (and d!1663284 c!885811) b!5144949))

(assert (= (and d!1663284 (not c!885811)) b!5144950))

(assert (= (and b!5144950 c!885812) b!5144953))

(assert (= (and b!5144950 (not c!885812)) b!5144951))

(assert (= (and b!5144951 res!2190295) b!5144956))

(assert (= (and b!5144951 c!885810) b!5144957))

(assert (= (and b!5144951 (not c!885810)) b!5144954))

(assert (= (and b!5144954 c!885814) b!5144952))

(assert (= (and b!5144954 (not c!885814)) b!5144958))

(assert (= (and b!5144958 c!885813) b!5144955))

(assert (= (and b!5144958 (not c!885813)) b!5144948))

(assert (= (or b!5144952 b!5144955) bm!359482))

(assert (= (or b!5144952 b!5144955) bm!359480))

(assert (= (or b!5144957 bm!359482) bm!359483))

(assert (= (or b!5144957 bm!359480) bm!359479))

(assert (= (or b!5144953 b!5144957) bm!359478))

(assert (= (or b!5144953 bm!359479) bm!359481))

(assert (=> b!5144949 m!6206008))

(declare-fun m!6206018 () Bool)

(assert (=> bm!359481 m!6206018))

(declare-fun m!6206020 () Bool)

(assert (=> bm!359483 m!6206020))

(declare-fun m!6206022 () Bool)

(assert (=> bm!359478 m!6206022))

(declare-fun m!6206024 () Bool)

(assert (=> b!5144956 m!6206024))

(assert (=> b!5144817 d!1663284))

(declare-fun e!3208210 () Bool)

(assert (=> b!5144819 (= tp!1436834 e!3208210)))

(declare-fun b!5144972 () Bool)

(declare-fun tp!1436866 () Bool)

(declare-fun tp!1436868 () Bool)

(assert (=> b!5144972 (= e!3208210 (and tp!1436866 tp!1436868))))

(declare-fun b!5144969 () Bool)

(assert (=> b!5144969 (= e!3208210 tp_is_empty!38101)))

(declare-fun b!5144970 () Bool)

(declare-fun tp!1436867 () Bool)

(declare-fun tp!1436869 () Bool)

(assert (=> b!5144970 (= e!3208210 (and tp!1436867 tp!1436869))))

(declare-fun b!5144971 () Bool)

(declare-fun tp!1436870 () Bool)

(assert (=> b!5144971 (= e!3208210 tp!1436870)))

(assert (= (and b!5144819 (is-ElementMatch!14476 (reg!14805 expr!117))) b!5144969))

(assert (= (and b!5144819 (is-Concat!23321 (reg!14805 expr!117))) b!5144970))

(assert (= (and b!5144819 (is-Star!14476 (reg!14805 expr!117))) b!5144971))

(assert (= (and b!5144819 (is-Union!14476 (reg!14805 expr!117))) b!5144972))

(declare-fun b!5144977 () Bool)

(declare-fun e!3208213 () Bool)

(declare-fun tp!1436875 () Bool)

(declare-fun tp!1436876 () Bool)

(assert (=> b!5144977 (= e!3208213 (and tp!1436875 tp!1436876))))

(assert (=> b!5144824 (= tp!1436837 e!3208213)))

(assert (= (and b!5144824 (is-Cons!59744 (exprs!4360 ctx!100))) b!5144977))

(declare-fun e!3208214 () Bool)

(assert (=> b!5144818 (= tp!1436833 e!3208214)))

(declare-fun b!5144981 () Bool)

(declare-fun tp!1436877 () Bool)

(declare-fun tp!1436879 () Bool)

(assert (=> b!5144981 (= e!3208214 (and tp!1436877 tp!1436879))))

(declare-fun b!5144978 () Bool)

(assert (=> b!5144978 (= e!3208214 tp_is_empty!38101)))

(declare-fun b!5144979 () Bool)

(declare-fun tp!1436878 () Bool)

(declare-fun tp!1436880 () Bool)

(assert (=> b!5144979 (= e!3208214 (and tp!1436878 tp!1436880))))

(declare-fun b!5144980 () Bool)

(declare-fun tp!1436881 () Bool)

(assert (=> b!5144980 (= e!3208214 tp!1436881)))

(assert (= (and b!5144818 (is-ElementMatch!14476 (regOne!29464 expr!117))) b!5144978))

(assert (= (and b!5144818 (is-Concat!23321 (regOne!29464 expr!117))) b!5144979))

(assert (= (and b!5144818 (is-Star!14476 (regOne!29464 expr!117))) b!5144980))

(assert (= (and b!5144818 (is-Union!14476 (regOne!29464 expr!117))) b!5144981))

(declare-fun e!3208215 () Bool)

(assert (=> b!5144818 (= tp!1436836 e!3208215)))

(declare-fun b!5144985 () Bool)

(declare-fun tp!1436882 () Bool)

(declare-fun tp!1436884 () Bool)

(assert (=> b!5144985 (= e!3208215 (and tp!1436882 tp!1436884))))

(declare-fun b!5144982 () Bool)

(assert (=> b!5144982 (= e!3208215 tp_is_empty!38101)))

(declare-fun b!5144983 () Bool)

(declare-fun tp!1436883 () Bool)

(declare-fun tp!1436885 () Bool)

(assert (=> b!5144983 (= e!3208215 (and tp!1436883 tp!1436885))))

(declare-fun b!5144984 () Bool)

(declare-fun tp!1436886 () Bool)

(assert (=> b!5144984 (= e!3208215 tp!1436886)))

(assert (= (and b!5144818 (is-ElementMatch!14476 (regTwo!29464 expr!117))) b!5144982))

(assert (= (and b!5144818 (is-Concat!23321 (regTwo!29464 expr!117))) b!5144983))

(assert (= (and b!5144818 (is-Star!14476 (regTwo!29464 expr!117))) b!5144984))

(assert (= (and b!5144818 (is-Union!14476 (regTwo!29464 expr!117))) b!5144985))

(declare-fun e!3208216 () Bool)

(assert (=> b!5144823 (= tp!1436832 e!3208216)))

(declare-fun b!5144989 () Bool)

(declare-fun tp!1436887 () Bool)

(declare-fun tp!1436889 () Bool)

(assert (=> b!5144989 (= e!3208216 (and tp!1436887 tp!1436889))))

(declare-fun b!5144986 () Bool)

(assert (=> b!5144986 (= e!3208216 tp_is_empty!38101)))

(declare-fun b!5144987 () Bool)

(declare-fun tp!1436888 () Bool)

(declare-fun tp!1436890 () Bool)

(assert (=> b!5144987 (= e!3208216 (and tp!1436888 tp!1436890))))

(declare-fun b!5144988 () Bool)

(declare-fun tp!1436891 () Bool)

(assert (=> b!5144988 (= e!3208216 tp!1436891)))

(assert (= (and b!5144823 (is-ElementMatch!14476 (regOne!29465 expr!117))) b!5144986))

(assert (= (and b!5144823 (is-Concat!23321 (regOne!29465 expr!117))) b!5144987))

(assert (= (and b!5144823 (is-Star!14476 (regOne!29465 expr!117))) b!5144988))

(assert (= (and b!5144823 (is-Union!14476 (regOne!29465 expr!117))) b!5144989))

(declare-fun e!3208217 () Bool)

(assert (=> b!5144823 (= tp!1436835 e!3208217)))

(declare-fun b!5144993 () Bool)

(declare-fun tp!1436892 () Bool)

(declare-fun tp!1436894 () Bool)

(assert (=> b!5144993 (= e!3208217 (and tp!1436892 tp!1436894))))

(declare-fun b!5144990 () Bool)

(assert (=> b!5144990 (= e!3208217 tp_is_empty!38101)))

(declare-fun b!5144991 () Bool)

(declare-fun tp!1436893 () Bool)

(declare-fun tp!1436895 () Bool)

(assert (=> b!5144991 (= e!3208217 (and tp!1436893 tp!1436895))))

(declare-fun b!5144992 () Bool)

(declare-fun tp!1436896 () Bool)

(assert (=> b!5144992 (= e!3208217 tp!1436896)))

(assert (= (and b!5144823 (is-ElementMatch!14476 (regTwo!29465 expr!117))) b!5144990))

(assert (= (and b!5144823 (is-Concat!23321 (regTwo!29465 expr!117))) b!5144991))

(assert (= (and b!5144823 (is-Star!14476 (regTwo!29465 expr!117))) b!5144992))

(assert (= (and b!5144823 (is-Union!14476 (regTwo!29465 expr!117))) b!5144993))

(push 1)

(assert (not bm!359441))

(assert (not b!5144970))

(assert (not b!5144979))

(assert (not bm!359478))

(assert (not d!1663254))

(assert (not b!5144893))

(assert (not b!5144984))

(assert (not d!1663268))

(assert (not d!1663262))

(assert (not b!5144911))

(assert (not d!1663260))

(assert (not d!1663264))

(assert (not bm!359475))

(assert (not d!1663252))

(assert (not bm!359459))

(assert (not b!5144981))

(assert (not b!5144913))

(assert (not bm!359457))

(assert (not b!5144971))

(assert (not bm!359472))

(assert (not b!5144983))

(assert (not d!1663278))

(assert (not bm!359458))

(assert (not b!5144912))

(assert (not b!5144956))

(assert (not bm!359483))

(assert (not b!5144945))

(assert (not b!5144985))

(assert (not d!1663276))

(assert (not b!5144989))

(assert (not b!5144987))

(assert (not bm!359481))

(assert (not b!5144992))

(assert (not bm!359477))

(assert (not bm!359456))

(assert (not b!5144914))

(assert (not b!5144993))

(assert (not bm!359442))

(assert (not b!5144988))

(assert (not b!5144977))

(assert (not b!5144980))

(assert (not b!5144991))

(assert tp_is_empty!38101)

(assert (not b!5144972))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

