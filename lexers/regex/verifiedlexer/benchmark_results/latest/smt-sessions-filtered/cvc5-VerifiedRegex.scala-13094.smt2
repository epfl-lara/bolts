; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!716566 () Bool)

(assert start!716566)

(declare-fun res!2964153 () Bool)

(declare-fun e!4392654 () Bool)

(assert (=> start!716566 (=> (not res!2964153) (not e!4392654))))

(declare-datatypes ((C!38426 0))(
  ( (C!38427 (val!29573 Int)) )
))
(declare-fun c!10305 () C!38426)

(declare-datatypes ((Regex!19076 0))(
  ( (ElementMatch!19076 (c!1362498 C!38426)) (Concat!27921 (regOne!38664 Regex!19076) (regTwo!38664 Regex!19076)) (EmptyExpr!19076) (Star!19076 (reg!19405 Regex!19076)) (EmptyLang!19076) (Union!19076 (regOne!38665 Regex!19076) (regTwo!38665 Regex!19076)) )
))
(declare-datatypes ((List!71572 0))(
  ( (Nil!71448) (Cons!71448 (h!77896 Regex!19076) (t!385967 List!71572)) )
))
(declare-datatypes ((Context!16032 0))(
  ( (Context!16033 (exprs!8516 List!71572)) )
))
(declare-fun cWitness!35 () Context!16032)

(declare-fun ct1!256 () Context!16032)

(declare-fun derivationStepZipperUp!2756 (Context!16032 C!38426) (Set Context!16032))

(assert (=> start!716566 (= res!2964153 (set.member cWitness!35 (derivationStepZipperUp!2756 ct1!256 c!10305)))))

(assert (=> start!716566 e!4392654))

(declare-fun e!4392656 () Bool)

(declare-fun inv!91031 (Context!16032) Bool)

(assert (=> start!716566 (and (inv!91031 cWitness!35) e!4392656)))

(declare-fun e!4392653 () Bool)

(assert (=> start!716566 (and (inv!91031 ct1!256) e!4392653)))

(declare-fun tp_is_empty!48397 () Bool)

(assert (=> start!716566 tp_is_empty!48397))

(declare-fun ct2!352 () Context!16032)

(declare-fun e!4392655 () Bool)

(assert (=> start!716566 (and (inv!91031 ct2!352) e!4392655)))

(declare-fun b!7335673 () Bool)

(declare-fun tp!2082284 () Bool)

(assert (=> b!7335673 (= e!4392655 tp!2082284)))

(declare-fun b!7335670 () Bool)

(assert (=> b!7335670 (= e!4392654 (not (is-Cons!71448 (exprs!8516 ct1!256))))))

(declare-fun lt!2609243 () List!71572)

(declare-fun ++!16898 (List!71572 List!71572) List!71572)

(assert (=> b!7335670 (= lt!2609243 (++!16898 (exprs!8516 ct1!256) (exprs!8516 ct2!352)))))

(declare-datatypes ((Unit!165113 0))(
  ( (Unit!165114) )
))
(declare-fun lt!2609242 () Unit!165113)

(declare-fun lambda!455178 () Int)

(declare-fun lemmaConcatPreservesForall!1755 (List!71572 List!71572 Int) Unit!165113)

(assert (=> b!7335670 (= lt!2609242 (lemmaConcatPreservesForall!1755 (exprs!8516 ct1!256) (exprs!8516 ct2!352) lambda!455178))))

(declare-fun b!7335672 () Bool)

(declare-fun tp!2082286 () Bool)

(assert (=> b!7335672 (= e!4392653 tp!2082286)))

(declare-fun b!7335671 () Bool)

(declare-fun tp!2082285 () Bool)

(assert (=> b!7335671 (= e!4392656 tp!2082285)))

(assert (= (and start!716566 res!2964153) b!7335670))

(assert (= start!716566 b!7335671))

(assert (= start!716566 b!7335672))

(assert (= start!716566 b!7335673))

(declare-fun m!8001734 () Bool)

(assert (=> start!716566 m!8001734))

(declare-fun m!8001736 () Bool)

(assert (=> start!716566 m!8001736))

(declare-fun m!8001738 () Bool)

(assert (=> start!716566 m!8001738))

(declare-fun m!8001740 () Bool)

(assert (=> start!716566 m!8001740))

(declare-fun m!8001742 () Bool)

(assert (=> start!716566 m!8001742))

(declare-fun m!8001744 () Bool)

(assert (=> b!7335670 m!8001744))

(declare-fun m!8001746 () Bool)

(assert (=> b!7335670 m!8001746))

(push 1)

(assert (not b!7335672))

(assert (not start!716566))

(assert (not b!7335671))

(assert tp_is_empty!48397)

(assert (not b!7335670))

(assert (not b!7335673))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7335696 () Bool)

(declare-fun e!4392677 () Bool)

(declare-fun nullable!8177 (Regex!19076) Bool)

(assert (=> b!7335696 (= e!4392677 (nullable!8177 (h!77896 (exprs!8516 ct1!256))))))

(declare-fun b!7335697 () Bool)

(declare-fun e!4392675 () (Set Context!16032))

(declare-fun e!4392676 () (Set Context!16032))

(assert (=> b!7335697 (= e!4392675 e!4392676)))

(declare-fun c!1362505 () Bool)

(assert (=> b!7335697 (= c!1362505 (is-Cons!71448 (exprs!8516 ct1!256)))))

(declare-fun b!7335698 () Bool)

(declare-fun call!668918 () (Set Context!16032))

(assert (=> b!7335698 (= e!4392675 (set.union call!668918 (derivationStepZipperUp!2756 (Context!16033 (t!385967 (exprs!8516 ct1!256))) c!10305)))))

(declare-fun b!7335699 () Bool)

(assert (=> b!7335699 (= e!4392676 call!668918)))

(declare-fun d!2278021 () Bool)

(declare-fun c!1362504 () Bool)

(assert (=> d!2278021 (= c!1362504 e!4392677)))

(declare-fun res!2964159 () Bool)

(assert (=> d!2278021 (=> (not res!2964159) (not e!4392677))))

(assert (=> d!2278021 (= res!2964159 (is-Cons!71448 (exprs!8516 ct1!256)))))

(assert (=> d!2278021 (= (derivationStepZipperUp!2756 ct1!256 c!10305) e!4392675)))

(declare-fun b!7335700 () Bool)

(assert (=> b!7335700 (= e!4392676 (as set.empty (Set Context!16032)))))

(declare-fun bm!668913 () Bool)

(declare-fun derivationStepZipperDown!2903 (Regex!19076 Context!16032 C!38426) (Set Context!16032))

(assert (=> bm!668913 (= call!668918 (derivationStepZipperDown!2903 (h!77896 (exprs!8516 ct1!256)) (Context!16033 (t!385967 (exprs!8516 ct1!256))) c!10305))))

(assert (= (and d!2278021 res!2964159) b!7335696))

(assert (= (and d!2278021 c!1362504) b!7335698))

(assert (= (and d!2278021 (not c!1362504)) b!7335697))

(assert (= (and b!7335697 c!1362505) b!7335699))

(assert (= (and b!7335697 (not c!1362505)) b!7335700))

(assert (= (or b!7335698 b!7335699) bm!668913))

(declare-fun m!8001762 () Bool)

(assert (=> b!7335696 m!8001762))

(declare-fun m!8001764 () Bool)

(assert (=> b!7335698 m!8001764))

(declare-fun m!8001766 () Bool)

(assert (=> bm!668913 m!8001766))

(assert (=> start!716566 d!2278021))

(declare-fun bs!1917992 () Bool)

(declare-fun d!2278023 () Bool)

(assert (= bs!1917992 (and d!2278023 b!7335670)))

(declare-fun lambda!455184 () Int)

(assert (=> bs!1917992 (= lambda!455184 lambda!455178)))

(declare-fun forall!17912 (List!71572 Int) Bool)

(assert (=> d!2278023 (= (inv!91031 cWitness!35) (forall!17912 (exprs!8516 cWitness!35) lambda!455184))))

(declare-fun bs!1917993 () Bool)

(assert (= bs!1917993 d!2278023))

(declare-fun m!8001768 () Bool)

(assert (=> bs!1917993 m!8001768))

(assert (=> start!716566 d!2278023))

(declare-fun bs!1917994 () Bool)

(declare-fun d!2278027 () Bool)

(assert (= bs!1917994 (and d!2278027 b!7335670)))

(declare-fun lambda!455185 () Int)

(assert (=> bs!1917994 (= lambda!455185 lambda!455178)))

(declare-fun bs!1917995 () Bool)

(assert (= bs!1917995 (and d!2278027 d!2278023)))

(assert (=> bs!1917995 (= lambda!455185 lambda!455184)))

(assert (=> d!2278027 (= (inv!91031 ct1!256) (forall!17912 (exprs!8516 ct1!256) lambda!455185))))

(declare-fun bs!1917996 () Bool)

(assert (= bs!1917996 d!2278027))

(declare-fun m!8001770 () Bool)

(assert (=> bs!1917996 m!8001770))

(assert (=> start!716566 d!2278027))

(declare-fun bs!1917997 () Bool)

(declare-fun d!2278029 () Bool)

(assert (= bs!1917997 (and d!2278029 b!7335670)))

(declare-fun lambda!455186 () Int)

(assert (=> bs!1917997 (= lambda!455186 lambda!455178)))

(declare-fun bs!1917998 () Bool)

(assert (= bs!1917998 (and d!2278029 d!2278023)))

(assert (=> bs!1917998 (= lambda!455186 lambda!455184)))

(declare-fun bs!1917999 () Bool)

(assert (= bs!1917999 (and d!2278029 d!2278027)))

(assert (=> bs!1917999 (= lambda!455186 lambda!455185)))

(assert (=> d!2278029 (= (inv!91031 ct2!352) (forall!17912 (exprs!8516 ct2!352) lambda!455186))))

(declare-fun bs!1918000 () Bool)

(assert (= bs!1918000 d!2278029))

(declare-fun m!8001772 () Bool)

(assert (=> bs!1918000 m!8001772))

(assert (=> start!716566 d!2278029))

(declare-fun d!2278031 () Bool)

(declare-fun e!4392683 () Bool)

(assert (=> d!2278031 e!4392683))

(declare-fun res!2964164 () Bool)

(assert (=> d!2278031 (=> (not res!2964164) (not e!4392683))))

(declare-fun lt!2609252 () List!71572)

(declare-fun content!15003 (List!71572) (Set Regex!19076))

(assert (=> d!2278031 (= res!2964164 (= (content!15003 lt!2609252) (set.union (content!15003 (exprs!8516 ct1!256)) (content!15003 (exprs!8516 ct2!352)))))))

(declare-fun e!4392682 () List!71572)

(assert (=> d!2278031 (= lt!2609252 e!4392682)))

(declare-fun c!1362508 () Bool)

(assert (=> d!2278031 (= c!1362508 (is-Nil!71448 (exprs!8516 ct1!256)))))

(assert (=> d!2278031 (= (++!16898 (exprs!8516 ct1!256) (exprs!8516 ct2!352)) lt!2609252)))

(declare-fun b!7335711 () Bool)

(declare-fun res!2964165 () Bool)

(assert (=> b!7335711 (=> (not res!2964165) (not e!4392683))))

(declare-fun size!41982 (List!71572) Int)

(assert (=> b!7335711 (= res!2964165 (= (size!41982 lt!2609252) (+ (size!41982 (exprs!8516 ct1!256)) (size!41982 (exprs!8516 ct2!352)))))))

(declare-fun b!7335709 () Bool)

(assert (=> b!7335709 (= e!4392682 (exprs!8516 ct2!352))))

(declare-fun b!7335710 () Bool)

(assert (=> b!7335710 (= e!4392682 (Cons!71448 (h!77896 (exprs!8516 ct1!256)) (++!16898 (t!385967 (exprs!8516 ct1!256)) (exprs!8516 ct2!352))))))

(declare-fun b!7335712 () Bool)

(assert (=> b!7335712 (= e!4392683 (or (not (= (exprs!8516 ct2!352) Nil!71448)) (= lt!2609252 (exprs!8516 ct1!256))))))

(assert (= (and d!2278031 c!1362508) b!7335709))

(assert (= (and d!2278031 (not c!1362508)) b!7335710))

(assert (= (and d!2278031 res!2964164) b!7335711))

(assert (= (and b!7335711 res!2964165) b!7335712))

(declare-fun m!8001774 () Bool)

(assert (=> d!2278031 m!8001774))

(declare-fun m!8001776 () Bool)

(assert (=> d!2278031 m!8001776))

(declare-fun m!8001778 () Bool)

(assert (=> d!2278031 m!8001778))

(declare-fun m!8001780 () Bool)

(assert (=> b!7335711 m!8001780))

(declare-fun m!8001782 () Bool)

(assert (=> b!7335711 m!8001782))

(declare-fun m!8001784 () Bool)

(assert (=> b!7335711 m!8001784))

(declare-fun m!8001786 () Bool)

(assert (=> b!7335710 m!8001786))

(assert (=> b!7335670 d!2278031))

(declare-fun d!2278033 () Bool)

(assert (=> d!2278033 (forall!17912 (++!16898 (exprs!8516 ct1!256) (exprs!8516 ct2!352)) lambda!455178)))

(declare-fun lt!2609257 () Unit!165113)

(declare-fun choose!57065 (List!71572 List!71572 Int) Unit!165113)

(assert (=> d!2278033 (= lt!2609257 (choose!57065 (exprs!8516 ct1!256) (exprs!8516 ct2!352) lambda!455178))))

(assert (=> d!2278033 (forall!17912 (exprs!8516 ct1!256) lambda!455178)))

(assert (=> d!2278033 (= (lemmaConcatPreservesForall!1755 (exprs!8516 ct1!256) (exprs!8516 ct2!352) lambda!455178) lt!2609257)))

(declare-fun bs!1918001 () Bool)

(assert (= bs!1918001 d!2278033))

(assert (=> bs!1918001 m!8001744))

(assert (=> bs!1918001 m!8001744))

(declare-fun m!8001788 () Bool)

(assert (=> bs!1918001 m!8001788))

(declare-fun m!8001790 () Bool)

(assert (=> bs!1918001 m!8001790))

(declare-fun m!8001792 () Bool)

(assert (=> bs!1918001 m!8001792))

(assert (=> b!7335670 d!2278033))

(declare-fun b!7335725 () Bool)

(declare-fun e!4392690 () Bool)

(declare-fun tp!2082300 () Bool)

(declare-fun tp!2082301 () Bool)

(assert (=> b!7335725 (= e!4392690 (and tp!2082300 tp!2082301))))

(assert (=> b!7335673 (= tp!2082284 e!4392690)))

(assert (= (and b!7335673 (is-Cons!71448 (exprs!8516 ct2!352))) b!7335725))

(declare-fun b!7335726 () Bool)

(declare-fun e!4392691 () Bool)

(declare-fun tp!2082302 () Bool)

(declare-fun tp!2082303 () Bool)

(assert (=> b!7335726 (= e!4392691 (and tp!2082302 tp!2082303))))

(assert (=> b!7335672 (= tp!2082286 e!4392691)))

(assert (= (and b!7335672 (is-Cons!71448 (exprs!8516 ct1!256))) b!7335726))

(declare-fun b!7335727 () Bool)

(declare-fun e!4392692 () Bool)

(declare-fun tp!2082304 () Bool)

(declare-fun tp!2082305 () Bool)

(assert (=> b!7335727 (= e!4392692 (and tp!2082304 tp!2082305))))

(assert (=> b!7335671 (= tp!2082285 e!4392692)))

(assert (= (and b!7335671 (is-Cons!71448 (exprs!8516 cWitness!35))) b!7335727))

(push 1)

(assert (not d!2278033))

(assert (not bm!668913))

(assert (not b!7335725))

(assert (not b!7335711))

(assert (not d!2278027))

(assert (not b!7335698))

(assert (not d!2278023))

(assert (not b!7335726))

(assert (not b!7335710))

(assert (not b!7335727))

(assert (not d!2278031))

(assert tp_is_empty!48397)

(assert (not b!7335696))

(assert (not d!2278029))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

