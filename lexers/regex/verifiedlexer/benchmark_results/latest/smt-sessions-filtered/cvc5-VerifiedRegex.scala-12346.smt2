; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!692142 () Bool)

(assert start!692142)

(declare-fun b!7110746 () Bool)

(assert (=> b!7110746 true))

(declare-fun b!7110745 () Bool)

(declare-fun res!2901868 () Bool)

(declare-fun e!4273350 () Bool)

(assert (=> b!7110745 (=> (not res!2901868) (not e!4273350))))

(declare-datatypes ((C!36138 0))(
  ( (C!36139 (val!27775 Int)) )
))
(declare-datatypes ((Regex!17934 0))(
  ( (ElementMatch!17934 (c!1327051 C!36138)) (Concat!26779 (regOne!36380 Regex!17934) (regTwo!36380 Regex!17934)) (EmptyExpr!17934) (Star!17934 (reg!18263 Regex!17934)) (EmptyLang!17934) (Union!17934 (regOne!36381 Regex!17934) (regTwo!36381 Regex!17934)) )
))
(declare-fun r!11554 () Regex!17934)

(declare-fun nullable!7571 (Regex!17934) Bool)

(assert (=> b!7110745 (= res!2901868 (nullable!7571 (regOne!36380 r!11554)))))

(declare-fun e!4273345 () Bool)

(assert (=> b!7110746 (= e!4273345 e!4273350)))

(declare-fun res!2901865 () Bool)

(assert (=> b!7110746 (=> (not res!2901865) (not e!4273350))))

(declare-fun a!1901 () C!36138)

(assert (=> b!7110746 (= res!2901865 (and (or (not (is-ElementMatch!17934 r!11554)) (not (= (c!1327051 r!11554) a!1901))) (not (is-Union!17934 r!11554)) (is-Concat!26779 r!11554)))))

(declare-fun b!7110747 () Bool)

(declare-fun e!4273351 () Bool)

(declare-fun tp_is_empty!45101 () Bool)

(assert (=> b!7110747 (= e!4273351 tp_is_empty!45101)))

(declare-fun b!7110748 () Bool)

(declare-datatypes ((List!68895 0))(
  ( (Nil!68771) (Cons!68771 (h!75219 Regex!17934) (t!382726 List!68895)) )
))
(declare-datatypes ((Context!13856 0))(
  ( (Context!13857 (exprs!7428 List!68895)) )
))
(declare-fun c!9994 () Context!13856)

(declare-fun auxCtx!45 () Context!13856)

(declare-fun e!4273347 () Bool)

(declare-fun lt!2559845 () (Set Context!13856))

(declare-fun appendTo!933 ((Set Context!13856) Context!13856) (Set Context!13856))

(declare-fun derivationStepZipperDown!2449 (Regex!17934 Context!13856 C!36138) (Set Context!13856))

(assert (=> b!7110748 (= e!4273347 (not (= lt!2559845 (appendTo!933 (derivationStepZipperDown!2449 r!11554 c!9994 a!1901) auxCtx!45))))))

(declare-datatypes ((Unit!162539 0))(
  ( (Unit!162540) )
))
(declare-fun lt!2559858 () Unit!162539)

(declare-fun lambda!431961 () Int)

(declare-fun lemmaConcatPreservesForall!1219 (List!68895 List!68895 Int) Unit!162539)

(assert (=> b!7110748 (= lt!2559858 (lemmaConcatPreservesForall!1219 (exprs!7428 c!9994) (exprs!7428 auxCtx!45) lambda!431961))))

(declare-fun lt!2559847 () (Set Context!13856))

(declare-fun lambda!431960 () Int)

(declare-fun lt!2559859 () (Set Context!13856))

(declare-fun map!16276 ((Set Context!13856) Int) (Set Context!13856))

(assert (=> b!7110748 (= (set.union (map!16276 lt!2559847 lambda!431960) (map!16276 lt!2559859 lambda!431960)) (map!16276 (set.union lt!2559847 lt!2559859) lambda!431960))))

(declare-fun lt!2559841 () Unit!162539)

(declare-fun lemmaMapAssociative!33 ((Set Context!13856) (Set Context!13856) Int) Unit!162539)

(assert (=> b!7110748 (= lt!2559841 (lemmaMapAssociative!33 lt!2559847 lt!2559859 lambda!431960))))

(declare-fun lt!2559852 () (Set Context!13856))

(assert (=> b!7110748 (= lt!2559852 (appendTo!933 lt!2559859 auxCtx!45))))

(assert (=> b!7110748 (= lt!2559859 (derivationStepZipperDown!2449 (regTwo!36380 r!11554) c!9994 a!1901))))

(declare-fun lt!2559849 () Unit!162539)

(assert (=> b!7110748 (= lt!2559849 (lemmaConcatPreservesForall!1219 (exprs!7428 c!9994) (exprs!7428 auxCtx!45) lambda!431961))))

(declare-fun lt!2559844 () Unit!162539)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!231 (Context!13856 Regex!17934 C!36138 Context!13856) Unit!162539)

(assert (=> b!7110748 (= lt!2559844 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!231 c!9994 (regTwo!36380 r!11554) a!1901 auxCtx!45))))

(declare-fun lt!2559848 () List!68895)

(assert (=> b!7110748 (= (derivationStepZipperDown!2449 (regOne!36380 r!11554) (Context!13857 lt!2559848) a!1901) (appendTo!933 lt!2559847 auxCtx!45))))

(declare-fun lt!2559850 () Context!13856)

(assert (=> b!7110748 (= lt!2559847 (derivationStepZipperDown!2449 (regOne!36380 r!11554) lt!2559850 a!1901))))

(declare-fun lt!2559853 () List!68895)

(declare-fun ++!16086 (List!68895 List!68895) List!68895)

(assert (=> b!7110748 (= lt!2559848 (++!16086 lt!2559853 (exprs!7428 auxCtx!45)))))

(declare-fun lt!2559854 () Unit!162539)

(assert (=> b!7110748 (= lt!2559854 (lemmaConcatPreservesForall!1219 lt!2559853 (exprs!7428 auxCtx!45) lambda!431961))))

(declare-fun lt!2559843 () Unit!162539)

(assert (=> b!7110748 (= lt!2559843 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!231 lt!2559850 (regOne!36380 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7110748 (= lt!2559850 (Context!13857 lt!2559853))))

(declare-fun $colon$colon!2792 (List!68895 Regex!17934) List!68895)

(assert (=> b!7110748 (= lt!2559853 ($colon$colon!2792 (exprs!7428 c!9994) (regTwo!36380 r!11554)))))

(declare-fun b!7110749 () Bool)

(declare-fun e!4273348 () Bool)

(declare-fun tp!1956091 () Bool)

(assert (=> b!7110749 (= e!4273348 tp!1956091)))

(declare-fun b!7110750 () Bool)

(declare-fun e!4273346 () Bool)

(declare-fun tp!1956090 () Bool)

(assert (=> b!7110750 (= e!4273346 tp!1956090)))

(declare-fun b!7110751 () Bool)

(declare-fun tp!1956088 () Bool)

(assert (=> b!7110751 (= e!4273351 tp!1956088)))

(declare-fun res!2901866 () Bool)

(assert (=> start!692142 (=> (not res!2901866) (not e!4273345))))

(declare-fun validRegex!9207 (Regex!17934) Bool)

(assert (=> start!692142 (= res!2901866 (validRegex!9207 r!11554))))

(assert (=> start!692142 e!4273345))

(assert (=> start!692142 e!4273351))

(declare-fun inv!87699 (Context!13856) Bool)

(assert (=> start!692142 (and (inv!87699 c!9994) e!4273348)))

(assert (=> start!692142 tp_is_empty!45101))

(assert (=> start!692142 (and (inv!87699 auxCtx!45) e!4273346)))

(declare-fun b!7110752 () Bool)

(declare-fun e!4273349 () Bool)

(assert (=> b!7110752 (= e!4273349 e!4273347)))

(declare-fun res!2901869 () Bool)

(assert (=> b!7110752 (=> (not res!2901869) (not e!4273347))))

(declare-fun lt!2559856 () (Set Context!13856))

(assert (=> b!7110752 (= res!2901869 (= lt!2559845 (set.union lt!2559856 lt!2559852)))))

(declare-fun lt!2559842 () Context!13856)

(assert (=> b!7110752 (= lt!2559845 (derivationStepZipperDown!2449 r!11554 lt!2559842 a!1901))))

(assert (=> b!7110752 (= lt!2559852 (derivationStepZipperDown!2449 (regTwo!36380 r!11554) lt!2559842 a!1901))))

(declare-fun lt!2559855 () List!68895)

(assert (=> b!7110752 (= lt!2559856 (derivationStepZipperDown!2449 (regOne!36380 r!11554) (Context!13857 ($colon$colon!2792 lt!2559855 (regTwo!36380 r!11554))) a!1901))))

(declare-fun b!7110753 () Bool)

(declare-fun tp!1956087 () Bool)

(declare-fun tp!1956092 () Bool)

(assert (=> b!7110753 (= e!4273351 (and tp!1956087 tp!1956092))))

(declare-fun b!7110754 () Bool)

(assert (=> b!7110754 (= e!4273350 e!4273349)))

(declare-fun res!2901867 () Bool)

(assert (=> b!7110754 (=> (not res!2901867) (not e!4273349))))

(assert (=> b!7110754 (= res!2901867 (validRegex!9207 (regTwo!36380 r!11554)))))

(declare-fun lt!2559857 () Unit!162539)

(assert (=> b!7110754 (= lt!2559857 (lemmaConcatPreservesForall!1219 (exprs!7428 c!9994) (exprs!7428 auxCtx!45) lambda!431961))))

(assert (=> b!7110754 (= lt!2559842 (Context!13857 lt!2559855))))

(assert (=> b!7110754 (= lt!2559855 (++!16086 (exprs!7428 c!9994) (exprs!7428 auxCtx!45)))))

(declare-fun lt!2559851 () Unit!162539)

(assert (=> b!7110754 (= lt!2559851 (lemmaConcatPreservesForall!1219 (exprs!7428 c!9994) (exprs!7428 auxCtx!45) lambda!431961))))

(declare-fun lt!2559846 () Unit!162539)

(assert (=> b!7110754 (= lt!2559846 (lemmaConcatPreservesForall!1219 (exprs!7428 c!9994) (exprs!7428 auxCtx!45) lambda!431961))))

(declare-fun b!7110755 () Bool)

(declare-fun tp!1956093 () Bool)

(declare-fun tp!1956089 () Bool)

(assert (=> b!7110755 (= e!4273351 (and tp!1956093 tp!1956089))))

(assert (= (and start!692142 res!2901866) b!7110746))

(assert (= (and b!7110746 res!2901865) b!7110745))

(assert (= (and b!7110745 res!2901868) b!7110754))

(assert (= (and b!7110754 res!2901867) b!7110752))

(assert (= (and b!7110752 res!2901869) b!7110748))

(assert (= (and start!692142 (is-ElementMatch!17934 r!11554)) b!7110747))

(assert (= (and start!692142 (is-Concat!26779 r!11554)) b!7110753))

(assert (= (and start!692142 (is-Star!17934 r!11554)) b!7110751))

(assert (= (and start!692142 (is-Union!17934 r!11554)) b!7110755))

(assert (= start!692142 b!7110749))

(assert (= start!692142 b!7110750))

(declare-fun m!7831988 () Bool)

(assert (=> b!7110754 m!7831988))

(assert (=> b!7110754 m!7831988))

(assert (=> b!7110754 m!7831988))

(declare-fun m!7831990 () Bool)

(assert (=> b!7110754 m!7831990))

(declare-fun m!7831992 () Bool)

(assert (=> b!7110754 m!7831992))

(declare-fun m!7831994 () Bool)

(assert (=> b!7110752 m!7831994))

(declare-fun m!7831996 () Bool)

(assert (=> b!7110752 m!7831996))

(declare-fun m!7831998 () Bool)

(assert (=> b!7110752 m!7831998))

(declare-fun m!7832000 () Bool)

(assert (=> b!7110752 m!7832000))

(declare-fun m!7832002 () Bool)

(assert (=> start!692142 m!7832002))

(declare-fun m!7832004 () Bool)

(assert (=> start!692142 m!7832004))

(declare-fun m!7832006 () Bool)

(assert (=> start!692142 m!7832006))

(declare-fun m!7832008 () Bool)

(assert (=> b!7110745 m!7832008))

(declare-fun m!7832010 () Bool)

(assert (=> b!7110748 m!7832010))

(declare-fun m!7832012 () Bool)

(assert (=> b!7110748 m!7832012))

(declare-fun m!7832014 () Bool)

(assert (=> b!7110748 m!7832014))

(declare-fun m!7832016 () Bool)

(assert (=> b!7110748 m!7832016))

(declare-fun m!7832018 () Bool)

(assert (=> b!7110748 m!7832018))

(declare-fun m!7832020 () Bool)

(assert (=> b!7110748 m!7832020))

(declare-fun m!7832022 () Bool)

(assert (=> b!7110748 m!7832022))

(assert (=> b!7110748 m!7831988))

(declare-fun m!7832024 () Bool)

(assert (=> b!7110748 m!7832024))

(declare-fun m!7832026 () Bool)

(assert (=> b!7110748 m!7832026))

(declare-fun m!7832028 () Bool)

(assert (=> b!7110748 m!7832028))

(declare-fun m!7832030 () Bool)

(assert (=> b!7110748 m!7832030))

(declare-fun m!7832032 () Bool)

(assert (=> b!7110748 m!7832032))

(declare-fun m!7832034 () Bool)

(assert (=> b!7110748 m!7832034))

(declare-fun m!7832036 () Bool)

(assert (=> b!7110748 m!7832036))

(assert (=> b!7110748 m!7832032))

(declare-fun m!7832038 () Bool)

(assert (=> b!7110748 m!7832038))

(declare-fun m!7832040 () Bool)

(assert (=> b!7110748 m!7832040))

(assert (=> b!7110748 m!7831988))

(push 1)

(assert (not b!7110754))

(assert (not b!7110749))

(assert (not b!7110745))

(assert (not b!7110755))

(assert (not b!7110748))

(assert (not b!7110750))

(assert (not b!7110751))

(assert (not b!7110753))

(assert (not start!692142))

(assert (not b!7110752))

(assert tp_is_empty!45101)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7110811 () Bool)

(declare-fun e!4273388 () Bool)

(declare-fun call!648806 () Bool)

(assert (=> b!7110811 (= e!4273388 call!648806)))

(declare-fun bm!648801 () Bool)

(declare-fun call!648808 () Bool)

(assert (=> bm!648801 (= call!648806 call!648808)))

(declare-fun b!7110812 () Bool)

(declare-fun e!4273389 () Bool)

(assert (=> b!7110812 (= e!4273389 e!4273388)))

(declare-fun res!2901899 () Bool)

(assert (=> b!7110812 (=> (not res!2901899) (not e!4273388))))

(declare-fun call!648807 () Bool)

(assert (=> b!7110812 (= res!2901899 call!648807)))

(declare-fun d!2220177 () Bool)

(declare-fun res!2901896 () Bool)

(declare-fun e!4273391 () Bool)

(assert (=> d!2220177 (=> res!2901896 e!4273391)))

(assert (=> d!2220177 (= res!2901896 (is-ElementMatch!17934 r!11554))))

(assert (=> d!2220177 (= (validRegex!9207 r!11554) e!4273391)))

(declare-fun b!7110813 () Bool)

(declare-fun res!2901900 () Bool)

(declare-fun e!4273393 () Bool)

(assert (=> b!7110813 (=> (not res!2901900) (not e!4273393))))

(assert (=> b!7110813 (= res!2901900 call!648806)))

(declare-fun e!4273390 () Bool)

(assert (=> b!7110813 (= e!4273390 e!4273393)))

(declare-fun b!7110814 () Bool)

(declare-fun e!4273387 () Bool)

(assert (=> b!7110814 (= e!4273387 e!4273390)))

(declare-fun c!1327058 () Bool)

(assert (=> b!7110814 (= c!1327058 (is-Union!17934 r!11554))))

(declare-fun b!7110815 () Bool)

(assert (=> b!7110815 (= e!4273391 e!4273387)))

(declare-fun c!1327057 () Bool)

(assert (=> b!7110815 (= c!1327057 (is-Star!17934 r!11554))))

(declare-fun b!7110816 () Bool)

(assert (=> b!7110816 (= e!4273393 call!648807)))

(declare-fun bm!648802 () Bool)

(assert (=> bm!648802 (= call!648807 (validRegex!9207 (ite c!1327058 (regTwo!36381 r!11554) (regOne!36380 r!11554))))))

(declare-fun bm!648803 () Bool)

(assert (=> bm!648803 (= call!648808 (validRegex!9207 (ite c!1327057 (reg!18263 r!11554) (ite c!1327058 (regOne!36381 r!11554) (regTwo!36380 r!11554)))))))

(declare-fun b!7110817 () Bool)

(declare-fun e!4273392 () Bool)

(assert (=> b!7110817 (= e!4273387 e!4273392)))

(declare-fun res!2901898 () Bool)

(assert (=> b!7110817 (= res!2901898 (not (nullable!7571 (reg!18263 r!11554))))))

(assert (=> b!7110817 (=> (not res!2901898) (not e!4273392))))

(declare-fun b!7110818 () Bool)

(declare-fun res!2901897 () Bool)

(assert (=> b!7110818 (=> res!2901897 e!4273389)))

(assert (=> b!7110818 (= res!2901897 (not (is-Concat!26779 r!11554)))))

(assert (=> b!7110818 (= e!4273390 e!4273389)))

(declare-fun b!7110819 () Bool)

(assert (=> b!7110819 (= e!4273392 call!648808)))

(assert (= (and d!2220177 (not res!2901896)) b!7110815))

(assert (= (and b!7110815 c!1327057) b!7110817))

(assert (= (and b!7110815 (not c!1327057)) b!7110814))

(assert (= (and b!7110817 res!2901898) b!7110819))

(assert (= (and b!7110814 c!1327058) b!7110813))

(assert (= (and b!7110814 (not c!1327058)) b!7110818))

(assert (= (and b!7110813 res!2901900) b!7110816))

(assert (= (and b!7110818 (not res!2901897)) b!7110812))

(assert (= (and b!7110812 res!2901899) b!7110811))

(assert (= (or b!7110813 b!7110811) bm!648801))

(assert (= (or b!7110816 b!7110812) bm!648802))

(assert (= (or b!7110819 bm!648801) bm!648803))

(declare-fun m!7832096 () Bool)

(assert (=> bm!648802 m!7832096))

(declare-fun m!7832098 () Bool)

(assert (=> bm!648803 m!7832098))

(declare-fun m!7832100 () Bool)

(assert (=> b!7110817 m!7832100))

(assert (=> start!692142 d!2220177))

(declare-fun bs!1885107 () Bool)

(declare-fun d!2220179 () Bool)

(assert (= bs!1885107 (and d!2220179 b!7110754)))

(declare-fun lambda!431982 () Int)

(assert (=> bs!1885107 (= lambda!431982 lambda!431961)))

(declare-fun forall!16834 (List!68895 Int) Bool)

(assert (=> d!2220179 (= (inv!87699 c!9994) (forall!16834 (exprs!7428 c!9994) lambda!431982))))

(declare-fun bs!1885108 () Bool)

(assert (= bs!1885108 d!2220179))

(declare-fun m!7832102 () Bool)

(assert (=> bs!1885108 m!7832102))

(assert (=> start!692142 d!2220179))

(declare-fun bs!1885109 () Bool)

(declare-fun d!2220181 () Bool)

(assert (= bs!1885109 (and d!2220181 b!7110754)))

(declare-fun lambda!431983 () Int)

(assert (=> bs!1885109 (= lambda!431983 lambda!431961)))

(declare-fun bs!1885110 () Bool)

(assert (= bs!1885110 (and d!2220181 d!2220179)))

(assert (=> bs!1885110 (= lambda!431983 lambda!431982)))

(assert (=> d!2220181 (= (inv!87699 auxCtx!45) (forall!16834 (exprs!7428 auxCtx!45) lambda!431983))))

(declare-fun bs!1885111 () Bool)

(assert (= bs!1885111 d!2220181))

(declare-fun m!7832104 () Bool)

(assert (=> bs!1885111 m!7832104))

(assert (=> start!692142 d!2220181))

(declare-fun b!7110842 () Bool)

(declare-fun e!4273406 () (Set Context!13856))

(declare-fun call!648822 () (Set Context!13856))

(declare-fun call!648821 () (Set Context!13856))

(assert (=> b!7110842 (= e!4273406 (set.union call!648822 call!648821))))

(declare-fun b!7110843 () Bool)

(declare-fun e!4273408 () (Set Context!13856))

(declare-fun call!648823 () (Set Context!13856))

(assert (=> b!7110843 (= e!4273408 call!648823)))

(declare-fun bm!648816 () Bool)

(declare-fun call!648826 () (Set Context!13856))

(assert (=> bm!648816 (= call!648823 call!648826)))

(declare-fun b!7110844 () Bool)

(declare-fun e!4273407 () (Set Context!13856))

(assert (=> b!7110844 (= e!4273407 (as set.empty (Set Context!13856)))))

(declare-fun c!1327073 () Bool)

(declare-fun c!1327072 () Bool)

(declare-fun call!648825 () List!68895)

(declare-fun c!1327069 () Bool)

(declare-fun bm!648817 () Bool)

(assert (=> bm!648817 (= call!648821 (derivationStepZipperDown!2449 (ite c!1327072 (regTwo!36381 r!11554) (ite c!1327069 (regTwo!36380 r!11554) (ite c!1327073 (regOne!36380 r!11554) (reg!18263 r!11554)))) (ite (or c!1327072 c!1327069) lt!2559842 (Context!13857 call!648825)) a!1901))))

(declare-fun bm!648818 () Bool)

(declare-fun call!648824 () List!68895)

(assert (=> bm!648818 (= call!648825 call!648824)))

(declare-fun b!7110845 () Bool)

(declare-fun e!4273409 () (Set Context!13856))

(assert (=> b!7110845 (= e!4273409 e!4273406)))

(assert (=> b!7110845 (= c!1327072 (is-Union!17934 r!11554))))

(declare-fun bm!648819 () Bool)

(assert (=> bm!648819 (= call!648822 (derivationStepZipperDown!2449 (ite c!1327072 (regOne!36381 r!11554) (regOne!36380 r!11554)) (ite c!1327072 lt!2559842 (Context!13857 call!648824)) a!1901))))

(declare-fun b!7110847 () Bool)

(declare-fun e!4273410 () Bool)

(assert (=> b!7110847 (= e!4273410 (nullable!7571 (regOne!36380 r!11554)))))

(declare-fun bm!648820 () Bool)

(assert (=> bm!648820 (= call!648824 ($colon$colon!2792 (exprs!7428 lt!2559842) (ite (or c!1327069 c!1327073) (regTwo!36380 r!11554) r!11554)))))

(declare-fun b!7110848 () Bool)

(assert (=> b!7110848 (= c!1327069 e!4273410)))

(declare-fun res!2901903 () Bool)

(assert (=> b!7110848 (=> (not res!2901903) (not e!4273410))))

(assert (=> b!7110848 (= res!2901903 (is-Concat!26779 r!11554))))

(declare-fun e!4273411 () (Set Context!13856))

(assert (=> b!7110848 (= e!4273406 e!4273411)))

(declare-fun b!7110849 () Bool)

(assert (=> b!7110849 (= e!4273407 call!648823)))

(declare-fun b!7110850 () Bool)

(declare-fun c!1327071 () Bool)

(assert (=> b!7110850 (= c!1327071 (is-Star!17934 r!11554))))

(assert (=> b!7110850 (= e!4273408 e!4273407)))

(declare-fun b!7110851 () Bool)

(assert (=> b!7110851 (= e!4273411 e!4273408)))

(assert (=> b!7110851 (= c!1327073 (is-Concat!26779 r!11554))))

(declare-fun b!7110846 () Bool)

(assert (=> b!7110846 (= e!4273411 (set.union call!648822 call!648826))))

(declare-fun d!2220183 () Bool)

(declare-fun c!1327070 () Bool)

(assert (=> d!2220183 (= c!1327070 (and (is-ElementMatch!17934 r!11554) (= (c!1327051 r!11554) a!1901)))))

(assert (=> d!2220183 (= (derivationStepZipperDown!2449 r!11554 lt!2559842 a!1901) e!4273409)))

(declare-fun b!7110852 () Bool)

(assert (=> b!7110852 (= e!4273409 (set.insert lt!2559842 (as set.empty (Set Context!13856))))))

(declare-fun bm!648821 () Bool)

(assert (=> bm!648821 (= call!648826 call!648821)))

(assert (= (and d!2220183 c!1327070) b!7110852))

(assert (= (and d!2220183 (not c!1327070)) b!7110845))

(assert (= (and b!7110845 c!1327072) b!7110842))

(assert (= (and b!7110845 (not c!1327072)) b!7110848))

(assert (= (and b!7110848 res!2901903) b!7110847))

(assert (= (and b!7110848 c!1327069) b!7110846))

(assert (= (and b!7110848 (not c!1327069)) b!7110851))

(assert (= (and b!7110851 c!1327073) b!7110843))

(assert (= (and b!7110851 (not c!1327073)) b!7110850))

(assert (= (and b!7110850 c!1327071) b!7110849))

(assert (= (and b!7110850 (not c!1327071)) b!7110844))

(assert (= (or b!7110843 b!7110849) bm!648818))

(assert (= (or b!7110843 b!7110849) bm!648816))

(assert (= (or b!7110846 bm!648816) bm!648821))

(assert (= (or b!7110846 bm!648818) bm!648820))

(assert (= (or b!7110842 bm!648821) bm!648817))

(assert (= (or b!7110842 b!7110846) bm!648819))

(declare-fun m!7832106 () Bool)

(assert (=> bm!648820 m!7832106))

(declare-fun m!7832108 () Bool)

(assert (=> bm!648819 m!7832108))

(declare-fun m!7832110 () Bool)

(assert (=> bm!648817 m!7832110))

(declare-fun m!7832112 () Bool)

(assert (=> b!7110852 m!7832112))

(assert (=> b!7110847 m!7832008))

(assert (=> b!7110752 d!2220183))

(declare-fun b!7110853 () Bool)

(declare-fun e!4273412 () (Set Context!13856))

(declare-fun call!648828 () (Set Context!13856))

(declare-fun call!648827 () (Set Context!13856))

(assert (=> b!7110853 (= e!4273412 (set.union call!648828 call!648827))))

(declare-fun b!7110854 () Bool)

(declare-fun e!4273414 () (Set Context!13856))

(declare-fun call!648829 () (Set Context!13856))

(assert (=> b!7110854 (= e!4273414 call!648829)))

(declare-fun bm!648822 () Bool)

(declare-fun call!648832 () (Set Context!13856))

(assert (=> bm!648822 (= call!648829 call!648832)))

(declare-fun b!7110855 () Bool)

(declare-fun e!4273413 () (Set Context!13856))

(assert (=> b!7110855 (= e!4273413 (as set.empty (Set Context!13856)))))

(declare-fun bm!648823 () Bool)

(declare-fun c!1327077 () Bool)

(declare-fun c!1327074 () Bool)

(declare-fun c!1327078 () Bool)

(declare-fun call!648831 () List!68895)

(assert (=> bm!648823 (= call!648827 (derivationStepZipperDown!2449 (ite c!1327077 (regTwo!36381 (regTwo!36380 r!11554)) (ite c!1327074 (regTwo!36380 (regTwo!36380 r!11554)) (ite c!1327078 (regOne!36380 (regTwo!36380 r!11554)) (reg!18263 (regTwo!36380 r!11554))))) (ite (or c!1327077 c!1327074) lt!2559842 (Context!13857 call!648831)) a!1901))))

(declare-fun bm!648824 () Bool)

(declare-fun call!648830 () List!68895)

(assert (=> bm!648824 (= call!648831 call!648830)))

(declare-fun b!7110856 () Bool)

(declare-fun e!4273415 () (Set Context!13856))

(assert (=> b!7110856 (= e!4273415 e!4273412)))

(assert (=> b!7110856 (= c!1327077 (is-Union!17934 (regTwo!36380 r!11554)))))

(declare-fun bm!648825 () Bool)

(assert (=> bm!648825 (= call!648828 (derivationStepZipperDown!2449 (ite c!1327077 (regOne!36381 (regTwo!36380 r!11554)) (regOne!36380 (regTwo!36380 r!11554))) (ite c!1327077 lt!2559842 (Context!13857 call!648830)) a!1901))))

(declare-fun b!7110858 () Bool)

(declare-fun e!4273416 () Bool)

(assert (=> b!7110858 (= e!4273416 (nullable!7571 (regOne!36380 (regTwo!36380 r!11554))))))

(declare-fun bm!648826 () Bool)

(assert (=> bm!648826 (= call!648830 ($colon$colon!2792 (exprs!7428 lt!2559842) (ite (or c!1327074 c!1327078) (regTwo!36380 (regTwo!36380 r!11554)) (regTwo!36380 r!11554))))))

(declare-fun b!7110859 () Bool)

(assert (=> b!7110859 (= c!1327074 e!4273416)))

(declare-fun res!2901904 () Bool)

(assert (=> b!7110859 (=> (not res!2901904) (not e!4273416))))

(assert (=> b!7110859 (= res!2901904 (is-Concat!26779 (regTwo!36380 r!11554)))))

(declare-fun e!4273417 () (Set Context!13856))

(assert (=> b!7110859 (= e!4273412 e!4273417)))

(declare-fun b!7110860 () Bool)

(assert (=> b!7110860 (= e!4273413 call!648829)))

(declare-fun b!7110861 () Bool)

(declare-fun c!1327076 () Bool)

(assert (=> b!7110861 (= c!1327076 (is-Star!17934 (regTwo!36380 r!11554)))))

(assert (=> b!7110861 (= e!4273414 e!4273413)))

(declare-fun b!7110862 () Bool)

(assert (=> b!7110862 (= e!4273417 e!4273414)))

(assert (=> b!7110862 (= c!1327078 (is-Concat!26779 (regTwo!36380 r!11554)))))

(declare-fun b!7110857 () Bool)

(assert (=> b!7110857 (= e!4273417 (set.union call!648828 call!648832))))

(declare-fun d!2220185 () Bool)

(declare-fun c!1327075 () Bool)

(assert (=> d!2220185 (= c!1327075 (and (is-ElementMatch!17934 (regTwo!36380 r!11554)) (= (c!1327051 (regTwo!36380 r!11554)) a!1901)))))

(assert (=> d!2220185 (= (derivationStepZipperDown!2449 (regTwo!36380 r!11554) lt!2559842 a!1901) e!4273415)))

(declare-fun b!7110863 () Bool)

(assert (=> b!7110863 (= e!4273415 (set.insert lt!2559842 (as set.empty (Set Context!13856))))))

(declare-fun bm!648827 () Bool)

(assert (=> bm!648827 (= call!648832 call!648827)))

(assert (= (and d!2220185 c!1327075) b!7110863))

(assert (= (and d!2220185 (not c!1327075)) b!7110856))

(assert (= (and b!7110856 c!1327077) b!7110853))

(assert (= (and b!7110856 (not c!1327077)) b!7110859))

(assert (= (and b!7110859 res!2901904) b!7110858))

(assert (= (and b!7110859 c!1327074) b!7110857))

(assert (= (and b!7110859 (not c!1327074)) b!7110862))

(assert (= (and b!7110862 c!1327078) b!7110854))

(assert (= (and b!7110862 (not c!1327078)) b!7110861))

(assert (= (and b!7110861 c!1327076) b!7110860))

(assert (= (and b!7110861 (not c!1327076)) b!7110855))

(assert (= (or b!7110854 b!7110860) bm!648824))

(assert (= (or b!7110854 b!7110860) bm!648822))

(assert (= (or b!7110857 bm!648822) bm!648827))

(assert (= (or b!7110857 bm!648824) bm!648826))

(assert (= (or b!7110853 bm!648827) bm!648823))

(assert (= (or b!7110853 b!7110857) bm!648825))

(declare-fun m!7832114 () Bool)

(assert (=> bm!648826 m!7832114))

(declare-fun m!7832116 () Bool)

(assert (=> bm!648825 m!7832116))

(declare-fun m!7832118 () Bool)

(assert (=> bm!648823 m!7832118))

(assert (=> b!7110863 m!7832112))

(declare-fun m!7832120 () Bool)

(assert (=> b!7110858 m!7832120))

(assert (=> b!7110752 d!2220185))

(declare-fun b!7110864 () Bool)

(declare-fun e!4273418 () (Set Context!13856))

(declare-fun call!648834 () (Set Context!13856))

(declare-fun call!648833 () (Set Context!13856))

(assert (=> b!7110864 (= e!4273418 (set.union call!648834 call!648833))))

(declare-fun b!7110865 () Bool)

(declare-fun e!4273420 () (Set Context!13856))

(declare-fun call!648835 () (Set Context!13856))

(assert (=> b!7110865 (= e!4273420 call!648835)))

(declare-fun bm!648828 () Bool)

(declare-fun call!648838 () (Set Context!13856))

(assert (=> bm!648828 (= call!648835 call!648838)))

(declare-fun b!7110866 () Bool)

(declare-fun e!4273419 () (Set Context!13856))

(assert (=> b!7110866 (= e!4273419 (as set.empty (Set Context!13856)))))

(declare-fun bm!648829 () Bool)

(declare-fun c!1327083 () Bool)

(declare-fun c!1327082 () Bool)

(declare-fun c!1327079 () Bool)

(declare-fun call!648837 () List!68895)

(assert (=> bm!648829 (= call!648833 (derivationStepZipperDown!2449 (ite c!1327082 (regTwo!36381 (regOne!36380 r!11554)) (ite c!1327079 (regTwo!36380 (regOne!36380 r!11554)) (ite c!1327083 (regOne!36380 (regOne!36380 r!11554)) (reg!18263 (regOne!36380 r!11554))))) (ite (or c!1327082 c!1327079) (Context!13857 ($colon$colon!2792 lt!2559855 (regTwo!36380 r!11554))) (Context!13857 call!648837)) a!1901))))

(declare-fun bm!648830 () Bool)

(declare-fun call!648836 () List!68895)

(assert (=> bm!648830 (= call!648837 call!648836)))

(declare-fun b!7110867 () Bool)

(declare-fun e!4273421 () (Set Context!13856))

(assert (=> b!7110867 (= e!4273421 e!4273418)))

(assert (=> b!7110867 (= c!1327082 (is-Union!17934 (regOne!36380 r!11554)))))

(declare-fun bm!648831 () Bool)

(assert (=> bm!648831 (= call!648834 (derivationStepZipperDown!2449 (ite c!1327082 (regOne!36381 (regOne!36380 r!11554)) (regOne!36380 (regOne!36380 r!11554))) (ite c!1327082 (Context!13857 ($colon$colon!2792 lt!2559855 (regTwo!36380 r!11554))) (Context!13857 call!648836)) a!1901))))

(declare-fun b!7110869 () Bool)

(declare-fun e!4273422 () Bool)

(assert (=> b!7110869 (= e!4273422 (nullable!7571 (regOne!36380 (regOne!36380 r!11554))))))

(declare-fun bm!648832 () Bool)

(assert (=> bm!648832 (= call!648836 ($colon$colon!2792 (exprs!7428 (Context!13857 ($colon$colon!2792 lt!2559855 (regTwo!36380 r!11554)))) (ite (or c!1327079 c!1327083) (regTwo!36380 (regOne!36380 r!11554)) (regOne!36380 r!11554))))))

(declare-fun b!7110870 () Bool)

(assert (=> b!7110870 (= c!1327079 e!4273422)))

(declare-fun res!2901905 () Bool)

(assert (=> b!7110870 (=> (not res!2901905) (not e!4273422))))

(assert (=> b!7110870 (= res!2901905 (is-Concat!26779 (regOne!36380 r!11554)))))

(declare-fun e!4273423 () (Set Context!13856))

(assert (=> b!7110870 (= e!4273418 e!4273423)))

(declare-fun b!7110871 () Bool)

(assert (=> b!7110871 (= e!4273419 call!648835)))

(declare-fun b!7110872 () Bool)

(declare-fun c!1327081 () Bool)

(assert (=> b!7110872 (= c!1327081 (is-Star!17934 (regOne!36380 r!11554)))))

(assert (=> b!7110872 (= e!4273420 e!4273419)))

(declare-fun b!7110873 () Bool)

(assert (=> b!7110873 (= e!4273423 e!4273420)))

(assert (=> b!7110873 (= c!1327083 (is-Concat!26779 (regOne!36380 r!11554)))))

(declare-fun b!7110868 () Bool)

(assert (=> b!7110868 (= e!4273423 (set.union call!648834 call!648838))))

(declare-fun d!2220187 () Bool)

(declare-fun c!1327080 () Bool)

(assert (=> d!2220187 (= c!1327080 (and (is-ElementMatch!17934 (regOne!36380 r!11554)) (= (c!1327051 (regOne!36380 r!11554)) a!1901)))))

(assert (=> d!2220187 (= (derivationStepZipperDown!2449 (regOne!36380 r!11554) (Context!13857 ($colon$colon!2792 lt!2559855 (regTwo!36380 r!11554))) a!1901) e!4273421)))

(declare-fun b!7110874 () Bool)

(assert (=> b!7110874 (= e!4273421 (set.insert (Context!13857 ($colon$colon!2792 lt!2559855 (regTwo!36380 r!11554))) (as set.empty (Set Context!13856))))))

(declare-fun bm!648833 () Bool)

(assert (=> bm!648833 (= call!648838 call!648833)))

(assert (= (and d!2220187 c!1327080) b!7110874))

(assert (= (and d!2220187 (not c!1327080)) b!7110867))

(assert (= (and b!7110867 c!1327082) b!7110864))

(assert (= (and b!7110867 (not c!1327082)) b!7110870))

(assert (= (and b!7110870 res!2901905) b!7110869))

(assert (= (and b!7110870 c!1327079) b!7110868))

(assert (= (and b!7110870 (not c!1327079)) b!7110873))

(assert (= (and b!7110873 c!1327083) b!7110865))

(assert (= (and b!7110873 (not c!1327083)) b!7110872))

(assert (= (and b!7110872 c!1327081) b!7110871))

(assert (= (and b!7110872 (not c!1327081)) b!7110866))

(assert (= (or b!7110865 b!7110871) bm!648830))

(assert (= (or b!7110865 b!7110871) bm!648828))

(assert (= (or b!7110868 bm!648828) bm!648833))

(assert (= (or b!7110868 bm!648830) bm!648832))

(assert (= (or b!7110864 bm!648833) bm!648829))

(assert (= (or b!7110864 b!7110868) bm!648831))

(declare-fun m!7832122 () Bool)

(assert (=> bm!648832 m!7832122))

(declare-fun m!7832124 () Bool)

(assert (=> bm!648831 m!7832124))

(declare-fun m!7832126 () Bool)

(assert (=> bm!648829 m!7832126))

(declare-fun m!7832128 () Bool)

(assert (=> b!7110874 m!7832128))

(declare-fun m!7832130 () Bool)

(assert (=> b!7110869 m!7832130))

(assert (=> b!7110752 d!2220187))

(declare-fun d!2220189 () Bool)

(assert (=> d!2220189 (= ($colon$colon!2792 lt!2559855 (regTwo!36380 r!11554)) (Cons!68771 (regTwo!36380 r!11554) lt!2559855))))

(assert (=> b!7110752 d!2220189))

(declare-fun bs!1885112 () Bool)

(declare-fun d!2220191 () Bool)

(assert (= bs!1885112 (and d!2220191 b!7110746)))

(declare-fun lambda!431988 () Int)

(assert (=> bs!1885112 (= lambda!431988 lambda!431960)))

(assert (=> d!2220191 true))

(assert (=> d!2220191 (= (appendTo!933 (derivationStepZipperDown!2449 r!11554 c!9994 a!1901) auxCtx!45) (map!16276 (derivationStepZipperDown!2449 r!11554 c!9994 a!1901) lambda!431988))))

(declare-fun bs!1885113 () Bool)

(assert (= bs!1885113 d!2220191))

(assert (=> bs!1885113 m!7832032))

(declare-fun m!7832132 () Bool)

(assert (=> bs!1885113 m!7832132))

(assert (=> b!7110748 d!2220191))

(declare-fun b!7110875 () Bool)

(declare-fun e!4273424 () (Set Context!13856))

(declare-fun call!648840 () (Set Context!13856))

(declare-fun call!648839 () (Set Context!13856))

(assert (=> b!7110875 (= e!4273424 (set.union call!648840 call!648839))))

(declare-fun b!7110876 () Bool)

(declare-fun e!4273426 () (Set Context!13856))

(declare-fun call!648841 () (Set Context!13856))

(assert (=> b!7110876 (= e!4273426 call!648841)))

(declare-fun bm!648834 () Bool)

(declare-fun call!648844 () (Set Context!13856))

(assert (=> bm!648834 (= call!648841 call!648844)))

(declare-fun b!7110877 () Bool)

(declare-fun e!4273425 () (Set Context!13856))

(assert (=> b!7110877 (= e!4273425 (as set.empty (Set Context!13856)))))

(declare-fun c!1327089 () Bool)

(declare-fun c!1327085 () Bool)

(declare-fun bm!648835 () Bool)

(declare-fun call!648843 () List!68895)

(declare-fun c!1327088 () Bool)

(assert (=> bm!648835 (= call!648839 (derivationStepZipperDown!2449 (ite c!1327088 (regTwo!36381 (regOne!36380 r!11554)) (ite c!1327085 (regTwo!36380 (regOne!36380 r!11554)) (ite c!1327089 (regOne!36380 (regOne!36380 r!11554)) (reg!18263 (regOne!36380 r!11554))))) (ite (or c!1327088 c!1327085) (Context!13857 lt!2559848) (Context!13857 call!648843)) a!1901))))

(declare-fun bm!648836 () Bool)

(declare-fun call!648842 () List!68895)

(assert (=> bm!648836 (= call!648843 call!648842)))

(declare-fun b!7110878 () Bool)

(declare-fun e!4273427 () (Set Context!13856))

(assert (=> b!7110878 (= e!4273427 e!4273424)))

(assert (=> b!7110878 (= c!1327088 (is-Union!17934 (regOne!36380 r!11554)))))

(declare-fun bm!648837 () Bool)

(assert (=> bm!648837 (= call!648840 (derivationStepZipperDown!2449 (ite c!1327088 (regOne!36381 (regOne!36380 r!11554)) (regOne!36380 (regOne!36380 r!11554))) (ite c!1327088 (Context!13857 lt!2559848) (Context!13857 call!648842)) a!1901))))

(declare-fun b!7110880 () Bool)

(declare-fun e!4273428 () Bool)

(assert (=> b!7110880 (= e!4273428 (nullable!7571 (regOne!36380 (regOne!36380 r!11554))))))

(declare-fun bm!648838 () Bool)

(assert (=> bm!648838 (= call!648842 ($colon$colon!2792 (exprs!7428 (Context!13857 lt!2559848)) (ite (or c!1327085 c!1327089) (regTwo!36380 (regOne!36380 r!11554)) (regOne!36380 r!11554))))))

(declare-fun b!7110881 () Bool)

(assert (=> b!7110881 (= c!1327085 e!4273428)))

(declare-fun res!2901906 () Bool)

(assert (=> b!7110881 (=> (not res!2901906) (not e!4273428))))

(assert (=> b!7110881 (= res!2901906 (is-Concat!26779 (regOne!36380 r!11554)))))

(declare-fun e!4273429 () (Set Context!13856))

(assert (=> b!7110881 (= e!4273424 e!4273429)))

(declare-fun b!7110882 () Bool)

(assert (=> b!7110882 (= e!4273425 call!648841)))

(declare-fun b!7110883 () Bool)

(declare-fun c!1327087 () Bool)

(assert (=> b!7110883 (= c!1327087 (is-Star!17934 (regOne!36380 r!11554)))))

(assert (=> b!7110883 (= e!4273426 e!4273425)))

(declare-fun b!7110884 () Bool)

(assert (=> b!7110884 (= e!4273429 e!4273426)))

(assert (=> b!7110884 (= c!1327089 (is-Concat!26779 (regOne!36380 r!11554)))))

(declare-fun b!7110879 () Bool)

(assert (=> b!7110879 (= e!4273429 (set.union call!648840 call!648844))))

(declare-fun d!2220193 () Bool)

(declare-fun c!1327086 () Bool)

(assert (=> d!2220193 (= c!1327086 (and (is-ElementMatch!17934 (regOne!36380 r!11554)) (= (c!1327051 (regOne!36380 r!11554)) a!1901)))))

(assert (=> d!2220193 (= (derivationStepZipperDown!2449 (regOne!36380 r!11554) (Context!13857 lt!2559848) a!1901) e!4273427)))

(declare-fun b!7110885 () Bool)

(assert (=> b!7110885 (= e!4273427 (set.insert (Context!13857 lt!2559848) (as set.empty (Set Context!13856))))))

(declare-fun bm!648839 () Bool)

(assert (=> bm!648839 (= call!648844 call!648839)))

(assert (= (and d!2220193 c!1327086) b!7110885))

(assert (= (and d!2220193 (not c!1327086)) b!7110878))

(assert (= (and b!7110878 c!1327088) b!7110875))

(assert (= (and b!7110878 (not c!1327088)) b!7110881))

(assert (= (and b!7110881 res!2901906) b!7110880))

(assert (= (and b!7110881 c!1327085) b!7110879))

(assert (= (and b!7110881 (not c!1327085)) b!7110884))

(assert (= (and b!7110884 c!1327089) b!7110876))

(assert (= (and b!7110884 (not c!1327089)) b!7110883))

(assert (= (and b!7110883 c!1327087) b!7110882))

(assert (= (and b!7110883 (not c!1327087)) b!7110877))

(assert (= (or b!7110876 b!7110882) bm!648836))

(assert (= (or b!7110876 b!7110882) bm!648834))

(assert (= (or b!7110879 bm!648834) bm!648839))

(assert (= (or b!7110879 bm!648836) bm!648838))

(assert (= (or b!7110875 bm!648839) bm!648835))

(assert (= (or b!7110875 b!7110879) bm!648837))

(declare-fun m!7832134 () Bool)

(assert (=> bm!648838 m!7832134))

(declare-fun m!7832136 () Bool)

(assert (=> bm!648837 m!7832136))

(declare-fun m!7832138 () Bool)

(assert (=> bm!648835 m!7832138))

(declare-fun m!7832140 () Bool)

(assert (=> b!7110885 m!7832140))

(assert (=> b!7110880 m!7832130))

(assert (=> b!7110748 d!2220193))

(declare-fun d!2220195 () Bool)

(assert (=> d!2220195 (forall!16834 (++!16086 (exprs!7428 c!9994) (exprs!7428 auxCtx!45)) lambda!431961)))

(declare-fun lt!2559923 () Unit!162539)

(declare-fun choose!54852 (List!68895 List!68895 Int) Unit!162539)

(assert (=> d!2220195 (= lt!2559923 (choose!54852 (exprs!7428 c!9994) (exprs!7428 auxCtx!45) lambda!431961))))

(assert (=> d!2220195 (forall!16834 (exprs!7428 c!9994) lambda!431961)))

(assert (=> d!2220195 (= (lemmaConcatPreservesForall!1219 (exprs!7428 c!9994) (exprs!7428 auxCtx!45) lambda!431961) lt!2559923)))

(declare-fun bs!1885114 () Bool)

(assert (= bs!1885114 d!2220195))

(assert (=> bs!1885114 m!7831990))

(assert (=> bs!1885114 m!7831990))

(declare-fun m!7832142 () Bool)

(assert (=> bs!1885114 m!7832142))

(declare-fun m!7832144 () Bool)

(assert (=> bs!1885114 m!7832144))

(declare-fun m!7832146 () Bool)

(assert (=> bs!1885114 m!7832146))

(assert (=> b!7110748 d!2220195))

(declare-fun b!7110886 () Bool)

(declare-fun e!4273430 () (Set Context!13856))

(declare-fun call!648846 () (Set Context!13856))

(declare-fun call!648845 () (Set Context!13856))

(assert (=> b!7110886 (= e!4273430 (set.union call!648846 call!648845))))

(declare-fun b!7110887 () Bool)

(declare-fun e!4273432 () (Set Context!13856))

(declare-fun call!648847 () (Set Context!13856))

(assert (=> b!7110887 (= e!4273432 call!648847)))

(declare-fun bm!648840 () Bool)

(declare-fun call!648850 () (Set Context!13856))

(assert (=> bm!648840 (= call!648847 call!648850)))

(declare-fun b!7110888 () Bool)

(declare-fun e!4273431 () (Set Context!13856))

(assert (=> b!7110888 (= e!4273431 (as set.empty (Set Context!13856)))))

(declare-fun call!648849 () List!68895)

(declare-fun c!1327093 () Bool)

(declare-fun c!1327090 () Bool)

(declare-fun bm!648841 () Bool)

(declare-fun c!1327094 () Bool)

(assert (=> bm!648841 (= call!648845 (derivationStepZipperDown!2449 (ite c!1327093 (regTwo!36381 (regTwo!36380 r!11554)) (ite c!1327090 (regTwo!36380 (regTwo!36380 r!11554)) (ite c!1327094 (regOne!36380 (regTwo!36380 r!11554)) (reg!18263 (regTwo!36380 r!11554))))) (ite (or c!1327093 c!1327090) c!9994 (Context!13857 call!648849)) a!1901))))

(declare-fun bm!648842 () Bool)

(declare-fun call!648848 () List!68895)

(assert (=> bm!648842 (= call!648849 call!648848)))

(declare-fun b!7110889 () Bool)

(declare-fun e!4273433 () (Set Context!13856))

(assert (=> b!7110889 (= e!4273433 e!4273430)))

(assert (=> b!7110889 (= c!1327093 (is-Union!17934 (regTwo!36380 r!11554)))))

(declare-fun bm!648843 () Bool)

(assert (=> bm!648843 (= call!648846 (derivationStepZipperDown!2449 (ite c!1327093 (regOne!36381 (regTwo!36380 r!11554)) (regOne!36380 (regTwo!36380 r!11554))) (ite c!1327093 c!9994 (Context!13857 call!648848)) a!1901))))

(declare-fun b!7110891 () Bool)

(declare-fun e!4273434 () Bool)

(assert (=> b!7110891 (= e!4273434 (nullable!7571 (regOne!36380 (regTwo!36380 r!11554))))))

(declare-fun bm!648844 () Bool)

(assert (=> bm!648844 (= call!648848 ($colon$colon!2792 (exprs!7428 c!9994) (ite (or c!1327090 c!1327094) (regTwo!36380 (regTwo!36380 r!11554)) (regTwo!36380 r!11554))))))

(declare-fun b!7110892 () Bool)

(assert (=> b!7110892 (= c!1327090 e!4273434)))

(declare-fun res!2901907 () Bool)

(assert (=> b!7110892 (=> (not res!2901907) (not e!4273434))))

(assert (=> b!7110892 (= res!2901907 (is-Concat!26779 (regTwo!36380 r!11554)))))

(declare-fun e!4273435 () (Set Context!13856))

(assert (=> b!7110892 (= e!4273430 e!4273435)))

(declare-fun b!7110893 () Bool)

(assert (=> b!7110893 (= e!4273431 call!648847)))

(declare-fun b!7110894 () Bool)

(declare-fun c!1327092 () Bool)

(assert (=> b!7110894 (= c!1327092 (is-Star!17934 (regTwo!36380 r!11554)))))

(assert (=> b!7110894 (= e!4273432 e!4273431)))

(declare-fun b!7110895 () Bool)

(assert (=> b!7110895 (= e!4273435 e!4273432)))

(assert (=> b!7110895 (= c!1327094 (is-Concat!26779 (regTwo!36380 r!11554)))))

(declare-fun b!7110890 () Bool)

(assert (=> b!7110890 (= e!4273435 (set.union call!648846 call!648850))))

(declare-fun d!2220197 () Bool)

(declare-fun c!1327091 () Bool)

(assert (=> d!2220197 (= c!1327091 (and (is-ElementMatch!17934 (regTwo!36380 r!11554)) (= (c!1327051 (regTwo!36380 r!11554)) a!1901)))))

(assert (=> d!2220197 (= (derivationStepZipperDown!2449 (regTwo!36380 r!11554) c!9994 a!1901) e!4273433)))

(declare-fun b!7110896 () Bool)

(assert (=> b!7110896 (= e!4273433 (set.insert c!9994 (as set.empty (Set Context!13856))))))

(declare-fun bm!648845 () Bool)

(assert (=> bm!648845 (= call!648850 call!648845)))

(assert (= (and d!2220197 c!1327091) b!7110896))

(assert (= (and d!2220197 (not c!1327091)) b!7110889))

(assert (= (and b!7110889 c!1327093) b!7110886))

(assert (= (and b!7110889 (not c!1327093)) b!7110892))

(assert (= (and b!7110892 res!2901907) b!7110891))

(assert (= (and b!7110892 c!1327090) b!7110890))

(assert (= (and b!7110892 (not c!1327090)) b!7110895))

(assert (= (and b!7110895 c!1327094) b!7110887))

(assert (= (and b!7110895 (not c!1327094)) b!7110894))

(assert (= (and b!7110894 c!1327092) b!7110893))

(assert (= (and b!7110894 (not c!1327092)) b!7110888))

(assert (= (or b!7110887 b!7110893) bm!648842))

(assert (= (or b!7110887 b!7110893) bm!648840))

(assert (= (or b!7110890 bm!648840) bm!648845))

(assert (= (or b!7110890 bm!648842) bm!648844))

(assert (= (or b!7110886 bm!648845) bm!648841))

(assert (= (or b!7110886 b!7110890) bm!648843))

(declare-fun m!7832148 () Bool)

(assert (=> bm!648844 m!7832148))

(declare-fun m!7832150 () Bool)

(assert (=> bm!648843 m!7832150))

(declare-fun m!7832152 () Bool)

(assert (=> bm!648841 m!7832152))

(declare-fun m!7832154 () Bool)

(assert (=> b!7110896 m!7832154))

(assert (=> b!7110891 m!7832120))

(assert (=> b!7110748 d!2220197))

(declare-fun bs!1885115 () Bool)

(declare-fun d!2220199 () Bool)

(assert (= bs!1885115 (and d!2220199 b!7110754)))

(declare-fun lambda!431991 () Int)

(assert (=> bs!1885115 (= lambda!431991 lambda!431961)))

(declare-fun bs!1885116 () Bool)

(assert (= bs!1885116 (and d!2220199 d!2220179)))

(assert (=> bs!1885116 (= lambda!431991 lambda!431982)))

(declare-fun bs!1885117 () Bool)

(assert (= bs!1885117 (and d!2220199 d!2220181)))

(assert (=> bs!1885117 (= lambda!431991 lambda!431983)))

(assert (=> d!2220199 (= (derivationStepZipperDown!2449 (regTwo!36380 r!11554) (Context!13857 (++!16086 (exprs!7428 c!9994) (exprs!7428 auxCtx!45))) a!1901) (appendTo!933 (derivationStepZipperDown!2449 (regTwo!36380 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2559929 () Unit!162539)

(assert (=> d!2220199 (= lt!2559929 (lemmaConcatPreservesForall!1219 (exprs!7428 c!9994) (exprs!7428 auxCtx!45) lambda!431991))))

(declare-fun lt!2559928 () Unit!162539)

(declare-fun choose!54853 (Context!13856 Regex!17934 C!36138 Context!13856) Unit!162539)

(assert (=> d!2220199 (= lt!2559928 (choose!54853 c!9994 (regTwo!36380 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2220199 (validRegex!9207 (regTwo!36380 r!11554))))

(assert (=> d!2220199 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!231 c!9994 (regTwo!36380 r!11554) a!1901 auxCtx!45) lt!2559928)))

(declare-fun bs!1885118 () Bool)

(assert (= bs!1885118 d!2220199))

(declare-fun m!7832156 () Bool)

(assert (=> bs!1885118 m!7832156))

(assert (=> bs!1885118 m!7831990))

(assert (=> bs!1885118 m!7832038))

(declare-fun m!7832158 () Bool)

(assert (=> bs!1885118 m!7832158))

(assert (=> bs!1885118 m!7831992))

(declare-fun m!7832160 () Bool)

(assert (=> bs!1885118 m!7832160))

(assert (=> bs!1885118 m!7832038))

(declare-fun m!7832162 () Bool)

(assert (=> bs!1885118 m!7832162))

(assert (=> b!7110748 d!2220199))

(declare-fun b!7110897 () Bool)

(declare-fun e!4273436 () (Set Context!13856))

(declare-fun call!648852 () (Set Context!13856))

(declare-fun call!648851 () (Set Context!13856))

(assert (=> b!7110897 (= e!4273436 (set.union call!648852 call!648851))))

(declare-fun b!7110898 () Bool)

(declare-fun e!4273438 () (Set Context!13856))

(declare-fun call!648853 () (Set Context!13856))

(assert (=> b!7110898 (= e!4273438 call!648853)))

(declare-fun bm!648846 () Bool)

(declare-fun call!648856 () (Set Context!13856))

(assert (=> bm!648846 (= call!648853 call!648856)))

(declare-fun b!7110899 () Bool)

(declare-fun e!4273437 () (Set Context!13856))

(assert (=> b!7110899 (= e!4273437 (as set.empty (Set Context!13856)))))

(declare-fun call!648855 () List!68895)

(declare-fun c!1327099 () Bool)

(declare-fun bm!648847 () Bool)

(declare-fun c!1327100 () Bool)

(declare-fun c!1327096 () Bool)

(assert (=> bm!648847 (= call!648851 (derivationStepZipperDown!2449 (ite c!1327099 (regTwo!36381 r!11554) (ite c!1327096 (regTwo!36380 r!11554) (ite c!1327100 (regOne!36380 r!11554) (reg!18263 r!11554)))) (ite (or c!1327099 c!1327096) c!9994 (Context!13857 call!648855)) a!1901))))

(declare-fun bm!648848 () Bool)

(declare-fun call!648854 () List!68895)

(assert (=> bm!648848 (= call!648855 call!648854)))

(declare-fun b!7110900 () Bool)

(declare-fun e!4273439 () (Set Context!13856))

(assert (=> b!7110900 (= e!4273439 e!4273436)))

(assert (=> b!7110900 (= c!1327099 (is-Union!17934 r!11554))))

(declare-fun bm!648849 () Bool)

(assert (=> bm!648849 (= call!648852 (derivationStepZipperDown!2449 (ite c!1327099 (regOne!36381 r!11554) (regOne!36380 r!11554)) (ite c!1327099 c!9994 (Context!13857 call!648854)) a!1901))))

(declare-fun b!7110902 () Bool)

(declare-fun e!4273440 () Bool)

(assert (=> b!7110902 (= e!4273440 (nullable!7571 (regOne!36380 r!11554)))))

(declare-fun bm!648850 () Bool)

(assert (=> bm!648850 (= call!648854 ($colon$colon!2792 (exprs!7428 c!9994) (ite (or c!1327096 c!1327100) (regTwo!36380 r!11554) r!11554)))))

(declare-fun b!7110903 () Bool)

(assert (=> b!7110903 (= c!1327096 e!4273440)))

(declare-fun res!2901909 () Bool)

(assert (=> b!7110903 (=> (not res!2901909) (not e!4273440))))

(assert (=> b!7110903 (= res!2901909 (is-Concat!26779 r!11554))))

(declare-fun e!4273441 () (Set Context!13856))

(assert (=> b!7110903 (= e!4273436 e!4273441)))

(declare-fun b!7110904 () Bool)

(assert (=> b!7110904 (= e!4273437 call!648853)))

(declare-fun b!7110905 () Bool)

(declare-fun c!1327098 () Bool)

(assert (=> b!7110905 (= c!1327098 (is-Star!17934 r!11554))))

(assert (=> b!7110905 (= e!4273438 e!4273437)))

(declare-fun b!7110906 () Bool)

(assert (=> b!7110906 (= e!4273441 e!4273438)))

(assert (=> b!7110906 (= c!1327100 (is-Concat!26779 r!11554))))

(declare-fun b!7110901 () Bool)

(assert (=> b!7110901 (= e!4273441 (set.union call!648852 call!648856))))

(declare-fun d!2220201 () Bool)

(declare-fun c!1327097 () Bool)

(assert (=> d!2220201 (= c!1327097 (and (is-ElementMatch!17934 r!11554) (= (c!1327051 r!11554) a!1901)))))

(assert (=> d!2220201 (= (derivationStepZipperDown!2449 r!11554 c!9994 a!1901) e!4273439)))

(declare-fun b!7110907 () Bool)

(assert (=> b!7110907 (= e!4273439 (set.insert c!9994 (as set.empty (Set Context!13856))))))

(declare-fun bm!648851 () Bool)

(assert (=> bm!648851 (= call!648856 call!648851)))

(assert (= (and d!2220201 c!1327097) b!7110907))

(assert (= (and d!2220201 (not c!1327097)) b!7110900))

(assert (= (and b!7110900 c!1327099) b!7110897))

(assert (= (and b!7110900 (not c!1327099)) b!7110903))

(assert (= (and b!7110903 res!2901909) b!7110902))

(assert (= (and b!7110903 c!1327096) b!7110901))

(assert (= (and b!7110903 (not c!1327096)) b!7110906))

(assert (= (and b!7110906 c!1327100) b!7110898))

(assert (= (and b!7110906 (not c!1327100)) b!7110905))

(assert (= (and b!7110905 c!1327098) b!7110904))

(assert (= (and b!7110905 (not c!1327098)) b!7110899))

(assert (= (or b!7110898 b!7110904) bm!648848))

(assert (= (or b!7110898 b!7110904) bm!648846))

(assert (= (or b!7110901 bm!648846) bm!648851))

(assert (= (or b!7110901 bm!648848) bm!648850))

(assert (= (or b!7110897 bm!648851) bm!648847))

(assert (= (or b!7110897 b!7110901) bm!648849))

(declare-fun m!7832164 () Bool)

(assert (=> bm!648850 m!7832164))

(declare-fun m!7832166 () Bool)

(assert (=> bm!648849 m!7832166))

(declare-fun m!7832168 () Bool)

(assert (=> bm!648847 m!7832168))

(assert (=> b!7110907 m!7832154))

(assert (=> b!7110902 m!7832008))

(assert (=> b!7110748 d!2220201))

(declare-fun bs!1885119 () Bool)

(declare-fun d!2220203 () Bool)

(assert (= bs!1885119 (and d!2220203 b!7110754)))

(declare-fun lambda!431992 () Int)

(assert (=> bs!1885119 (= lambda!431992 lambda!431961)))

(declare-fun bs!1885120 () Bool)

(assert (= bs!1885120 (and d!2220203 d!2220179)))

(assert (=> bs!1885120 (= lambda!431992 lambda!431982)))

(declare-fun bs!1885121 () Bool)

(assert (= bs!1885121 (and d!2220203 d!2220181)))

(assert (=> bs!1885121 (= lambda!431992 lambda!431983)))

(declare-fun bs!1885122 () Bool)

(assert (= bs!1885122 (and d!2220203 d!2220199)))

(assert (=> bs!1885122 (= lambda!431992 lambda!431991)))

(assert (=> d!2220203 (= (derivationStepZipperDown!2449 (regOne!36380 r!11554) (Context!13857 (++!16086 (exprs!7428 lt!2559850) (exprs!7428 auxCtx!45))) a!1901) (appendTo!933 (derivationStepZipperDown!2449 (regOne!36380 r!11554) lt!2559850 a!1901) auxCtx!45))))

(declare-fun lt!2559931 () Unit!162539)

(assert (=> d!2220203 (= lt!2559931 (lemmaConcatPreservesForall!1219 (exprs!7428 lt!2559850) (exprs!7428 auxCtx!45) lambda!431992))))

(declare-fun lt!2559930 () Unit!162539)

(assert (=> d!2220203 (= lt!2559930 (choose!54853 lt!2559850 (regOne!36380 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2220203 (validRegex!9207 (regOne!36380 r!11554))))

(assert (=> d!2220203 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!231 lt!2559850 (regOne!36380 r!11554) a!1901 auxCtx!45) lt!2559930)))

(declare-fun bs!1885123 () Bool)

(assert (= bs!1885123 d!2220203))

(declare-fun m!7832170 () Bool)

(assert (=> bs!1885123 m!7832170))

(declare-fun m!7832172 () Bool)

(assert (=> bs!1885123 m!7832172))

(assert (=> bs!1885123 m!7832036))

(declare-fun m!7832174 () Bool)

(assert (=> bs!1885123 m!7832174))

(declare-fun m!7832176 () Bool)

(assert (=> bs!1885123 m!7832176))

(declare-fun m!7832178 () Bool)

(assert (=> bs!1885123 m!7832178))

(assert (=> bs!1885123 m!7832036))

(declare-fun m!7832180 () Bool)

(assert (=> bs!1885123 m!7832180))

(assert (=> b!7110748 d!2220203))

(declare-fun d!2220205 () Bool)

(assert (=> d!2220205 (= (set.union (map!16276 lt!2559847 lambda!431960) (map!16276 lt!2559859 lambda!431960)) (map!16276 (set.union lt!2559847 lt!2559859) lambda!431960))))

(declare-fun lt!2559934 () Unit!162539)

(declare-fun choose!54854 ((Set Context!13856) (Set Context!13856) Int) Unit!162539)

(assert (=> d!2220205 (= lt!2559934 (choose!54854 lt!2559847 lt!2559859 lambda!431960))))

(assert (=> d!2220205 (= (lemmaMapAssociative!33 lt!2559847 lt!2559859 lambda!431960) lt!2559934)))

(declare-fun bs!1885124 () Bool)

(assert (= bs!1885124 d!2220205))

(assert (=> bs!1885124 m!7832012))

(assert (=> bs!1885124 m!7832026))

(assert (=> bs!1885124 m!7832024))

(declare-fun m!7832182 () Bool)

(assert (=> bs!1885124 m!7832182))

(assert (=> b!7110748 d!2220205))

(declare-fun b!7110917 () Bool)

(declare-fun e!4273446 () List!68895)

(assert (=> b!7110917 (= e!4273446 (Cons!68771 (h!75219 lt!2559853) (++!16086 (t!382726 lt!2559853) (exprs!7428 auxCtx!45))))))

(declare-fun d!2220207 () Bool)

(declare-fun e!4273447 () Bool)

(assert (=> d!2220207 e!4273447))

(declare-fun res!2901915 () Bool)

(assert (=> d!2220207 (=> (not res!2901915) (not e!4273447))))

(declare-fun lt!2559937 () List!68895)

(declare-fun content!14019 (List!68895) (Set Regex!17934))

(assert (=> d!2220207 (= res!2901915 (= (content!14019 lt!2559937) (set.union (content!14019 lt!2559853) (content!14019 (exprs!7428 auxCtx!45)))))))

(assert (=> d!2220207 (= lt!2559937 e!4273446)))

(declare-fun c!1327103 () Bool)

(assert (=> d!2220207 (= c!1327103 (is-Nil!68771 lt!2559853))))

(assert (=> d!2220207 (= (++!16086 lt!2559853 (exprs!7428 auxCtx!45)) lt!2559937)))

(declare-fun b!7110918 () Bool)

(declare-fun res!2901914 () Bool)

(assert (=> b!7110918 (=> (not res!2901914) (not e!4273447))))

(declare-fun size!41394 (List!68895) Int)

(assert (=> b!7110918 (= res!2901914 (= (size!41394 lt!2559937) (+ (size!41394 lt!2559853) (size!41394 (exprs!7428 auxCtx!45)))))))

(declare-fun b!7110916 () Bool)

(assert (=> b!7110916 (= e!4273446 (exprs!7428 auxCtx!45))))

(declare-fun b!7110919 () Bool)

(assert (=> b!7110919 (= e!4273447 (or (not (= (exprs!7428 auxCtx!45) Nil!68771)) (= lt!2559937 lt!2559853)))))

(assert (= (and d!2220207 c!1327103) b!7110916))

(assert (= (and d!2220207 (not c!1327103)) b!7110917))

(assert (= (and d!2220207 res!2901915) b!7110918))

(assert (= (and b!7110918 res!2901914) b!7110919))

(declare-fun m!7832184 () Bool)

(assert (=> b!7110917 m!7832184))

(declare-fun m!7832186 () Bool)

(assert (=> d!2220207 m!7832186))

(declare-fun m!7832188 () Bool)

(assert (=> d!2220207 m!7832188))

(declare-fun m!7832190 () Bool)

(assert (=> d!2220207 m!7832190))

(declare-fun m!7832192 () Bool)

(assert (=> b!7110918 m!7832192))

(declare-fun m!7832194 () Bool)

(assert (=> b!7110918 m!7832194))

(declare-fun m!7832196 () Bool)

(assert (=> b!7110918 m!7832196))

(assert (=> b!7110748 d!2220207))

(declare-fun d!2220209 () Bool)

(assert (=> d!2220209 (forall!16834 (++!16086 lt!2559853 (exprs!7428 auxCtx!45)) lambda!431961)))

(declare-fun lt!2559938 () Unit!162539)

(assert (=> d!2220209 (= lt!2559938 (choose!54852 lt!2559853 (exprs!7428 auxCtx!45) lambda!431961))))

(assert (=> d!2220209 (forall!16834 lt!2559853 lambda!431961)))

(assert (=> d!2220209 (= (lemmaConcatPreservesForall!1219 lt!2559853 (exprs!7428 auxCtx!45) lambda!431961) lt!2559938)))

(declare-fun bs!1885125 () Bool)

(assert (= bs!1885125 d!2220209))

(assert (=> bs!1885125 m!7832030))

(assert (=> bs!1885125 m!7832030))

(declare-fun m!7832198 () Bool)

(assert (=> bs!1885125 m!7832198))

(declare-fun m!7832200 () Bool)

(assert (=> bs!1885125 m!7832200))

(declare-fun m!7832202 () Bool)

(assert (=> bs!1885125 m!7832202))

(assert (=> b!7110748 d!2220209))

(declare-fun d!2220211 () Bool)

(declare-fun choose!54855 ((Set Context!13856) Int) (Set Context!13856))

(assert (=> d!2220211 (= (map!16276 (set.union lt!2559847 lt!2559859) lambda!431960) (choose!54855 (set.union lt!2559847 lt!2559859) lambda!431960))))

(declare-fun bs!1885126 () Bool)

(assert (= bs!1885126 d!2220211))

(declare-fun m!7832204 () Bool)

(assert (=> bs!1885126 m!7832204))

(assert (=> b!7110748 d!2220211))

(declare-fun bs!1885127 () Bool)

(declare-fun d!2220213 () Bool)

(assert (= bs!1885127 (and d!2220213 b!7110746)))

(declare-fun lambda!431993 () Int)

(assert (=> bs!1885127 (= lambda!431993 lambda!431960)))

(declare-fun bs!1885128 () Bool)

(assert (= bs!1885128 (and d!2220213 d!2220191)))

(assert (=> bs!1885128 (= lambda!431993 lambda!431988)))

(assert (=> d!2220213 true))

(assert (=> d!2220213 (= (appendTo!933 lt!2559859 auxCtx!45) (map!16276 lt!2559859 lambda!431993))))

(declare-fun bs!1885129 () Bool)

(assert (= bs!1885129 d!2220213))

(declare-fun m!7832206 () Bool)

(assert (=> bs!1885129 m!7832206))

(assert (=> b!7110748 d!2220213))

(declare-fun bs!1885130 () Bool)

(declare-fun d!2220215 () Bool)

(assert (= bs!1885130 (and d!2220215 b!7110746)))

(declare-fun lambda!431994 () Int)

(assert (=> bs!1885130 (= lambda!431994 lambda!431960)))

(declare-fun bs!1885131 () Bool)

(assert (= bs!1885131 (and d!2220215 d!2220191)))

(assert (=> bs!1885131 (= lambda!431994 lambda!431988)))

(declare-fun bs!1885132 () Bool)

(assert (= bs!1885132 (and d!2220215 d!2220213)))

(assert (=> bs!1885132 (= lambda!431994 lambda!431993)))

(assert (=> d!2220215 true))

(assert (=> d!2220215 (= (appendTo!933 lt!2559847 auxCtx!45) (map!16276 lt!2559847 lambda!431994))))

(declare-fun bs!1885133 () Bool)

(assert (= bs!1885133 d!2220215))

(declare-fun m!7832208 () Bool)

(assert (=> bs!1885133 m!7832208))

(assert (=> b!7110748 d!2220215))

(declare-fun d!2220217 () Bool)

(assert (=> d!2220217 (= (map!16276 lt!2559859 lambda!431960) (choose!54855 lt!2559859 lambda!431960))))

(declare-fun bs!1885134 () Bool)

(assert (= bs!1885134 d!2220217))

(declare-fun m!7832210 () Bool)

(assert (=> bs!1885134 m!7832210))

(assert (=> b!7110748 d!2220217))

(declare-fun d!2220219 () Bool)

(assert (=> d!2220219 (= ($colon$colon!2792 (exprs!7428 c!9994) (regTwo!36380 r!11554)) (Cons!68771 (regTwo!36380 r!11554) (exprs!7428 c!9994)))))

(assert (=> b!7110748 d!2220219))

(declare-fun b!7110920 () Bool)

(declare-fun e!4273448 () (Set Context!13856))

(declare-fun call!648858 () (Set Context!13856))

(declare-fun call!648857 () (Set Context!13856))

(assert (=> b!7110920 (= e!4273448 (set.union call!648858 call!648857))))

(declare-fun b!7110921 () Bool)

(declare-fun e!4273450 () (Set Context!13856))

(declare-fun call!648859 () (Set Context!13856))

(assert (=> b!7110921 (= e!4273450 call!648859)))

(declare-fun bm!648852 () Bool)

(declare-fun call!648862 () (Set Context!13856))

(assert (=> bm!648852 (= call!648859 call!648862)))

(declare-fun b!7110922 () Bool)

(declare-fun e!4273449 () (Set Context!13856))

(assert (=> b!7110922 (= e!4273449 (as set.empty (Set Context!13856)))))

(declare-fun c!1327108 () Bool)

(declare-fun c!1327104 () Bool)

(declare-fun c!1327107 () Bool)

(declare-fun bm!648853 () Bool)

(declare-fun call!648861 () List!68895)

(assert (=> bm!648853 (= call!648857 (derivationStepZipperDown!2449 (ite c!1327107 (regTwo!36381 (regOne!36380 r!11554)) (ite c!1327104 (regTwo!36380 (regOne!36380 r!11554)) (ite c!1327108 (regOne!36380 (regOne!36380 r!11554)) (reg!18263 (regOne!36380 r!11554))))) (ite (or c!1327107 c!1327104) lt!2559850 (Context!13857 call!648861)) a!1901))))

(declare-fun bm!648854 () Bool)

(declare-fun call!648860 () List!68895)

(assert (=> bm!648854 (= call!648861 call!648860)))

(declare-fun b!7110923 () Bool)

(declare-fun e!4273451 () (Set Context!13856))

(assert (=> b!7110923 (= e!4273451 e!4273448)))

(assert (=> b!7110923 (= c!1327107 (is-Union!17934 (regOne!36380 r!11554)))))

(declare-fun bm!648855 () Bool)

(assert (=> bm!648855 (= call!648858 (derivationStepZipperDown!2449 (ite c!1327107 (regOne!36381 (regOne!36380 r!11554)) (regOne!36380 (regOne!36380 r!11554))) (ite c!1327107 lt!2559850 (Context!13857 call!648860)) a!1901))))

(declare-fun b!7110925 () Bool)

(declare-fun e!4273452 () Bool)

(assert (=> b!7110925 (= e!4273452 (nullable!7571 (regOne!36380 (regOne!36380 r!11554))))))

(declare-fun bm!648856 () Bool)

(assert (=> bm!648856 (= call!648860 ($colon$colon!2792 (exprs!7428 lt!2559850) (ite (or c!1327104 c!1327108) (regTwo!36380 (regOne!36380 r!11554)) (regOne!36380 r!11554))))))

(declare-fun b!7110926 () Bool)

(assert (=> b!7110926 (= c!1327104 e!4273452)))

(declare-fun res!2901916 () Bool)

(assert (=> b!7110926 (=> (not res!2901916) (not e!4273452))))

(assert (=> b!7110926 (= res!2901916 (is-Concat!26779 (regOne!36380 r!11554)))))

(declare-fun e!4273453 () (Set Context!13856))

(assert (=> b!7110926 (= e!4273448 e!4273453)))

(declare-fun b!7110927 () Bool)

(assert (=> b!7110927 (= e!4273449 call!648859)))

(declare-fun b!7110928 () Bool)

(declare-fun c!1327106 () Bool)

(assert (=> b!7110928 (= c!1327106 (is-Star!17934 (regOne!36380 r!11554)))))

(assert (=> b!7110928 (= e!4273450 e!4273449)))

(declare-fun b!7110929 () Bool)

(assert (=> b!7110929 (= e!4273453 e!4273450)))

(assert (=> b!7110929 (= c!1327108 (is-Concat!26779 (regOne!36380 r!11554)))))

(declare-fun b!7110924 () Bool)

(assert (=> b!7110924 (= e!4273453 (set.union call!648858 call!648862))))

(declare-fun d!2220221 () Bool)

(declare-fun c!1327105 () Bool)

(assert (=> d!2220221 (= c!1327105 (and (is-ElementMatch!17934 (regOne!36380 r!11554)) (= (c!1327051 (regOne!36380 r!11554)) a!1901)))))

(assert (=> d!2220221 (= (derivationStepZipperDown!2449 (regOne!36380 r!11554) lt!2559850 a!1901) e!4273451)))

(declare-fun b!7110930 () Bool)

(assert (=> b!7110930 (= e!4273451 (set.insert lt!2559850 (as set.empty (Set Context!13856))))))

(declare-fun bm!648857 () Bool)

(assert (=> bm!648857 (= call!648862 call!648857)))

(assert (= (and d!2220221 c!1327105) b!7110930))

(assert (= (and d!2220221 (not c!1327105)) b!7110923))

(assert (= (and b!7110923 c!1327107) b!7110920))

(assert (= (and b!7110923 (not c!1327107)) b!7110926))

(assert (= (and b!7110926 res!2901916) b!7110925))

(assert (= (and b!7110926 c!1327104) b!7110924))

(assert (= (and b!7110926 (not c!1327104)) b!7110929))

(assert (= (and b!7110929 c!1327108) b!7110921))

(assert (= (and b!7110929 (not c!1327108)) b!7110928))

(assert (= (and b!7110928 c!1327106) b!7110927))

(assert (= (and b!7110928 (not c!1327106)) b!7110922))

(assert (= (or b!7110921 b!7110927) bm!648854))

(assert (= (or b!7110921 b!7110927) bm!648852))

(assert (= (or b!7110924 bm!648852) bm!648857))

(assert (= (or b!7110924 bm!648854) bm!648856))

(assert (= (or b!7110920 bm!648857) bm!648853))

(assert (= (or b!7110920 b!7110924) bm!648855))

(declare-fun m!7832212 () Bool)

(assert (=> bm!648856 m!7832212))

(declare-fun m!7832214 () Bool)

(assert (=> bm!648855 m!7832214))

(declare-fun m!7832216 () Bool)

(assert (=> bm!648853 m!7832216))

(declare-fun m!7832218 () Bool)

(assert (=> b!7110930 m!7832218))

(assert (=> b!7110925 m!7832130))

(assert (=> b!7110748 d!2220221))

(declare-fun d!2220223 () Bool)

(assert (=> d!2220223 (= (map!16276 lt!2559847 lambda!431960) (choose!54855 lt!2559847 lambda!431960))))

(declare-fun bs!1885135 () Bool)

(assert (= bs!1885135 d!2220223))

(declare-fun m!7832220 () Bool)

(assert (=> bs!1885135 m!7832220))

(assert (=> b!7110748 d!2220223))

(assert (=> b!7110754 d!2220195))

(declare-fun b!7110931 () Bool)

(declare-fun e!4273455 () Bool)

(declare-fun call!648863 () Bool)

(assert (=> b!7110931 (= e!4273455 call!648863)))

(declare-fun bm!648858 () Bool)

(declare-fun call!648865 () Bool)

(assert (=> bm!648858 (= call!648863 call!648865)))

(declare-fun b!7110932 () Bool)

(declare-fun e!4273456 () Bool)

(assert (=> b!7110932 (= e!4273456 e!4273455)))

(declare-fun res!2901920 () Bool)

(assert (=> b!7110932 (=> (not res!2901920) (not e!4273455))))

(declare-fun call!648864 () Bool)

(assert (=> b!7110932 (= res!2901920 call!648864)))

(declare-fun d!2220225 () Bool)

(declare-fun res!2901917 () Bool)

(declare-fun e!4273458 () Bool)

(assert (=> d!2220225 (=> res!2901917 e!4273458)))

(assert (=> d!2220225 (= res!2901917 (is-ElementMatch!17934 (regTwo!36380 r!11554)))))

(assert (=> d!2220225 (= (validRegex!9207 (regTwo!36380 r!11554)) e!4273458)))

(declare-fun b!7110933 () Bool)

(declare-fun res!2901921 () Bool)

(declare-fun e!4273460 () Bool)

(assert (=> b!7110933 (=> (not res!2901921) (not e!4273460))))

(assert (=> b!7110933 (= res!2901921 call!648863)))

(declare-fun e!4273457 () Bool)

(assert (=> b!7110933 (= e!4273457 e!4273460)))

(declare-fun b!7110934 () Bool)

(declare-fun e!4273454 () Bool)

(assert (=> b!7110934 (= e!4273454 e!4273457)))

(declare-fun c!1327110 () Bool)

(assert (=> b!7110934 (= c!1327110 (is-Union!17934 (regTwo!36380 r!11554)))))

(declare-fun b!7110935 () Bool)

(assert (=> b!7110935 (= e!4273458 e!4273454)))

(declare-fun c!1327109 () Bool)

(assert (=> b!7110935 (= c!1327109 (is-Star!17934 (regTwo!36380 r!11554)))))

(declare-fun b!7110936 () Bool)

(assert (=> b!7110936 (= e!4273460 call!648864)))

(declare-fun bm!648859 () Bool)

(assert (=> bm!648859 (= call!648864 (validRegex!9207 (ite c!1327110 (regTwo!36381 (regTwo!36380 r!11554)) (regOne!36380 (regTwo!36380 r!11554)))))))

(declare-fun bm!648860 () Bool)

(assert (=> bm!648860 (= call!648865 (validRegex!9207 (ite c!1327109 (reg!18263 (regTwo!36380 r!11554)) (ite c!1327110 (regOne!36381 (regTwo!36380 r!11554)) (regTwo!36380 (regTwo!36380 r!11554))))))))

(declare-fun b!7110937 () Bool)

(declare-fun e!4273459 () Bool)

(assert (=> b!7110937 (= e!4273454 e!4273459)))

(declare-fun res!2901919 () Bool)

(assert (=> b!7110937 (= res!2901919 (not (nullable!7571 (reg!18263 (regTwo!36380 r!11554)))))))

(assert (=> b!7110937 (=> (not res!2901919) (not e!4273459))))

(declare-fun b!7110938 () Bool)

(declare-fun res!2901918 () Bool)

(assert (=> b!7110938 (=> res!2901918 e!4273456)))

(assert (=> b!7110938 (= res!2901918 (not (is-Concat!26779 (regTwo!36380 r!11554))))))

(assert (=> b!7110938 (= e!4273457 e!4273456)))

(declare-fun b!7110939 () Bool)

(assert (=> b!7110939 (= e!4273459 call!648865)))

(assert (= (and d!2220225 (not res!2901917)) b!7110935))

(assert (= (and b!7110935 c!1327109) b!7110937))

(assert (= (and b!7110935 (not c!1327109)) b!7110934))

(assert (= (and b!7110937 res!2901919) b!7110939))

(assert (= (and b!7110934 c!1327110) b!7110933))

(assert (= (and b!7110934 (not c!1327110)) b!7110938))

(assert (= (and b!7110933 res!2901921) b!7110936))

(assert (= (and b!7110938 (not res!2901918)) b!7110932))

(assert (= (and b!7110932 res!2901920) b!7110931))

(assert (= (or b!7110933 b!7110931) bm!648858))

(assert (= (or b!7110936 b!7110932) bm!648859))

(assert (= (or b!7110939 bm!648858) bm!648860))

(declare-fun m!7832222 () Bool)

(assert (=> bm!648859 m!7832222))

(declare-fun m!7832224 () Bool)

(assert (=> bm!648860 m!7832224))

(declare-fun m!7832226 () Bool)

(assert (=> b!7110937 m!7832226))

(assert (=> b!7110754 d!2220225))

(declare-fun b!7110941 () Bool)

(declare-fun e!4273461 () List!68895)

(assert (=> b!7110941 (= e!4273461 (Cons!68771 (h!75219 (exprs!7428 c!9994)) (++!16086 (t!382726 (exprs!7428 c!9994)) (exprs!7428 auxCtx!45))))))

(declare-fun d!2220229 () Bool)

(declare-fun e!4273462 () Bool)

(assert (=> d!2220229 e!4273462))

(declare-fun res!2901923 () Bool)

(assert (=> d!2220229 (=> (not res!2901923) (not e!4273462))))

(declare-fun lt!2559939 () List!68895)

(assert (=> d!2220229 (= res!2901923 (= (content!14019 lt!2559939) (set.union (content!14019 (exprs!7428 c!9994)) (content!14019 (exprs!7428 auxCtx!45)))))))

(assert (=> d!2220229 (= lt!2559939 e!4273461)))

(declare-fun c!1327111 () Bool)

(assert (=> d!2220229 (= c!1327111 (is-Nil!68771 (exprs!7428 c!9994)))))

(assert (=> d!2220229 (= (++!16086 (exprs!7428 c!9994) (exprs!7428 auxCtx!45)) lt!2559939)))

(declare-fun b!7110942 () Bool)

(declare-fun res!2901922 () Bool)

(assert (=> b!7110942 (=> (not res!2901922) (not e!4273462))))

(assert (=> b!7110942 (= res!2901922 (= (size!41394 lt!2559939) (+ (size!41394 (exprs!7428 c!9994)) (size!41394 (exprs!7428 auxCtx!45)))))))

(declare-fun b!7110940 () Bool)

(assert (=> b!7110940 (= e!4273461 (exprs!7428 auxCtx!45))))

(declare-fun b!7110943 () Bool)

(assert (=> b!7110943 (= e!4273462 (or (not (= (exprs!7428 auxCtx!45) Nil!68771)) (= lt!2559939 (exprs!7428 c!9994))))))

(assert (= (and d!2220229 c!1327111) b!7110940))

(assert (= (and d!2220229 (not c!1327111)) b!7110941))

(assert (= (and d!2220229 res!2901923) b!7110942))

(assert (= (and b!7110942 res!2901922) b!7110943))

(declare-fun m!7832228 () Bool)

(assert (=> b!7110941 m!7832228))

(declare-fun m!7832230 () Bool)

(assert (=> d!2220229 m!7832230))

(declare-fun m!7832232 () Bool)

(assert (=> d!2220229 m!7832232))

(assert (=> d!2220229 m!7832190))

(declare-fun m!7832234 () Bool)

(assert (=> b!7110942 m!7832234))

(declare-fun m!7832236 () Bool)

(assert (=> b!7110942 m!7832236))

(assert (=> b!7110942 m!7832196))

(assert (=> b!7110754 d!2220229))

(declare-fun d!2220231 () Bool)

(declare-fun nullableFct!2925 (Regex!17934) Bool)

(assert (=> d!2220231 (= (nullable!7571 (regOne!36380 r!11554)) (nullableFct!2925 (regOne!36380 r!11554)))))

(declare-fun bs!1885136 () Bool)

(assert (= bs!1885136 d!2220231))

(declare-fun m!7832238 () Bool)

(assert (=> bs!1885136 m!7832238))

(assert (=> b!7110745 d!2220231))

(declare-fun b!7110954 () Bool)

(declare-fun e!4273465 () Bool)

(assert (=> b!7110954 (= e!4273465 tp_is_empty!45101)))

(declare-fun b!7110957 () Bool)

(declare-fun tp!1956126 () Bool)

(declare-fun tp!1956128 () Bool)

(assert (=> b!7110957 (= e!4273465 (and tp!1956126 tp!1956128))))

(assert (=> b!7110751 (= tp!1956088 e!4273465)))

(declare-fun b!7110956 () Bool)

(declare-fun tp!1956129 () Bool)

(assert (=> b!7110956 (= e!4273465 tp!1956129)))

(declare-fun b!7110955 () Bool)

(declare-fun tp!1956125 () Bool)

(declare-fun tp!1956127 () Bool)

(assert (=> b!7110955 (= e!4273465 (and tp!1956125 tp!1956127))))

(assert (= (and b!7110751 (is-ElementMatch!17934 (reg!18263 r!11554))) b!7110954))

(assert (= (and b!7110751 (is-Concat!26779 (reg!18263 r!11554))) b!7110955))

(assert (= (and b!7110751 (is-Star!17934 (reg!18263 r!11554))) b!7110956))

(assert (= (and b!7110751 (is-Union!17934 (reg!18263 r!11554))) b!7110957))

(declare-fun b!7110958 () Bool)

(declare-fun e!4273466 () Bool)

(assert (=> b!7110958 (= e!4273466 tp_is_empty!45101)))

(declare-fun b!7110961 () Bool)

(declare-fun tp!1956131 () Bool)

(declare-fun tp!1956133 () Bool)

(assert (=> b!7110961 (= e!4273466 (and tp!1956131 tp!1956133))))

(assert (=> b!7110753 (= tp!1956087 e!4273466)))

(declare-fun b!7110960 () Bool)

(declare-fun tp!1956134 () Bool)

(assert (=> b!7110960 (= e!4273466 tp!1956134)))

(declare-fun b!7110959 () Bool)

(declare-fun tp!1956130 () Bool)

(declare-fun tp!1956132 () Bool)

(assert (=> b!7110959 (= e!4273466 (and tp!1956130 tp!1956132))))

(assert (= (and b!7110753 (is-ElementMatch!17934 (regOne!36380 r!11554))) b!7110958))

(assert (= (and b!7110753 (is-Concat!26779 (regOne!36380 r!11554))) b!7110959))

(assert (= (and b!7110753 (is-Star!17934 (regOne!36380 r!11554))) b!7110960))

(assert (= (and b!7110753 (is-Union!17934 (regOne!36380 r!11554))) b!7110961))

(declare-fun b!7110962 () Bool)

(declare-fun e!4273467 () Bool)

(assert (=> b!7110962 (= e!4273467 tp_is_empty!45101)))

(declare-fun b!7110965 () Bool)

(declare-fun tp!1956136 () Bool)

(declare-fun tp!1956138 () Bool)

(assert (=> b!7110965 (= e!4273467 (and tp!1956136 tp!1956138))))

(assert (=> b!7110753 (= tp!1956092 e!4273467)))

(declare-fun b!7110964 () Bool)

(declare-fun tp!1956139 () Bool)

(assert (=> b!7110964 (= e!4273467 tp!1956139)))

(declare-fun b!7110963 () Bool)

(declare-fun tp!1956135 () Bool)

(declare-fun tp!1956137 () Bool)

(assert (=> b!7110963 (= e!4273467 (and tp!1956135 tp!1956137))))

(assert (= (and b!7110753 (is-ElementMatch!17934 (regTwo!36380 r!11554))) b!7110962))

(assert (= (and b!7110753 (is-Concat!26779 (regTwo!36380 r!11554))) b!7110963))

(assert (= (and b!7110753 (is-Star!17934 (regTwo!36380 r!11554))) b!7110964))

(assert (= (and b!7110753 (is-Union!17934 (regTwo!36380 r!11554))) b!7110965))

(declare-fun b!7110970 () Bool)

(declare-fun e!4273470 () Bool)

(declare-fun tp!1956144 () Bool)

(declare-fun tp!1956145 () Bool)

(assert (=> b!7110970 (= e!4273470 (and tp!1956144 tp!1956145))))

(assert (=> b!7110749 (= tp!1956091 e!4273470)))

(assert (= (and b!7110749 (is-Cons!68771 (exprs!7428 c!9994))) b!7110970))

(declare-fun b!7110971 () Bool)

(declare-fun e!4273471 () Bool)

(assert (=> b!7110971 (= e!4273471 tp_is_empty!45101)))

(declare-fun b!7110974 () Bool)

(declare-fun tp!1956147 () Bool)

(declare-fun tp!1956149 () Bool)

(assert (=> b!7110974 (= e!4273471 (and tp!1956147 tp!1956149))))

(assert (=> b!7110755 (= tp!1956093 e!4273471)))

(declare-fun b!7110973 () Bool)

(declare-fun tp!1956150 () Bool)

(assert (=> b!7110973 (= e!4273471 tp!1956150)))

(declare-fun b!7110972 () Bool)

(declare-fun tp!1956146 () Bool)

(declare-fun tp!1956148 () Bool)

(assert (=> b!7110972 (= e!4273471 (and tp!1956146 tp!1956148))))

(assert (= (and b!7110755 (is-ElementMatch!17934 (regOne!36381 r!11554))) b!7110971))

(assert (= (and b!7110755 (is-Concat!26779 (regOne!36381 r!11554))) b!7110972))

(assert (= (and b!7110755 (is-Star!17934 (regOne!36381 r!11554))) b!7110973))

(assert (= (and b!7110755 (is-Union!17934 (regOne!36381 r!11554))) b!7110974))

(declare-fun b!7110975 () Bool)

(declare-fun e!4273472 () Bool)

(assert (=> b!7110975 (= e!4273472 tp_is_empty!45101)))

(declare-fun b!7110978 () Bool)

(declare-fun tp!1956152 () Bool)

(declare-fun tp!1956154 () Bool)

(assert (=> b!7110978 (= e!4273472 (and tp!1956152 tp!1956154))))

(assert (=> b!7110755 (= tp!1956089 e!4273472)))

(declare-fun b!7110977 () Bool)

(declare-fun tp!1956155 () Bool)

(assert (=> b!7110977 (= e!4273472 tp!1956155)))

(declare-fun b!7110976 () Bool)

(declare-fun tp!1956151 () Bool)

(declare-fun tp!1956153 () Bool)

(assert (=> b!7110976 (= e!4273472 (and tp!1956151 tp!1956153))))

(assert (= (and b!7110755 (is-ElementMatch!17934 (regTwo!36381 r!11554))) b!7110975))

(assert (= (and b!7110755 (is-Concat!26779 (regTwo!36381 r!11554))) b!7110976))

(assert (= (and b!7110755 (is-Star!17934 (regTwo!36381 r!11554))) b!7110977))

(assert (= (and b!7110755 (is-Union!17934 (regTwo!36381 r!11554))) b!7110978))

(declare-fun b!7110979 () Bool)

(declare-fun e!4273473 () Bool)

(declare-fun tp!1956156 () Bool)

(declare-fun tp!1956157 () Bool)

(assert (=> b!7110979 (= e!4273473 (and tp!1956156 tp!1956157))))

(assert (=> b!7110750 (= tp!1956090 e!4273473)))

(assert (= (and b!7110750 (is-Cons!68771 (exprs!7428 auxCtx!45))) b!7110979))

(push 1)

(assert (not bm!648844))

(assert (not bm!648859))

(assert (not bm!648835))

(assert (not bm!648802))

(assert (not b!7110978))

(assert (not bm!648843))

(assert (not d!2220195))

(assert (not d!2220203))

(assert (not bm!648817))

(assert (not b!7110858))

(assert (not b!7110974))

(assert (not b!7110970))

(assert (not bm!648853))

(assert (not b!7110965))

(assert (not bm!648838))

(assert (not b!7110956))

(assert (not b!7110960))

(assert (not d!2220231))

(assert (not bm!648837))

(assert (not b!7110942))

(assert (not bm!648825))

(assert (not b!7110880))

(assert (not b!7110817))

(assert (not b!7110847))

(assert (not b!7110918))

(assert (not d!2220209))

(assert (not bm!648850))

(assert (not d!2220205))

(assert (not bm!648820))

(assert (not d!2220191))

(assert (not bm!648856))

(assert (not b!7110937))

(assert (not d!2220211))

(assert (not b!7110917))

(assert (not bm!648860))

(assert (not bm!648855))

(assert (not b!7110955))

(assert (not b!7110977))

(assert (not bm!648849))

(assert (not b!7110902))

(assert tp_is_empty!45101)

(assert (not b!7110891))

(assert (not b!7110957))

(assert (not bm!648832))

(assert (not bm!648826))

(assert (not b!7110973))

(assert (not b!7110941))

(assert (not bm!648823))

(assert (not d!2220179))

(assert (not bm!648831))

(assert (not b!7110869))

(assert (not bm!648819))

(assert (not bm!648829))

(assert (not bm!648803))

(assert (not b!7110961))

(assert (not b!7110964))

(assert (not b!7110963))

(assert (not b!7110972))

(assert (not bm!648841))

(assert (not d!2220217))

(assert (not d!2220213))

(assert (not d!2220215))

(assert (not d!2220181))

(assert (not d!2220199))

(assert (not d!2220229))

(assert (not b!7110976))

(assert (not b!7110979))

(assert (not b!7110925))

(assert (not d!2220223))

(assert (not bm!648847))

(assert (not d!2220207))

(assert (not b!7110959))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

