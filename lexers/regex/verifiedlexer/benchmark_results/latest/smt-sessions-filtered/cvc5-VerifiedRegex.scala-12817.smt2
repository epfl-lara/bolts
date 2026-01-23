; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!708020 () Bool)

(assert start!708020)

(declare-fun b!7263058 () Bool)

(assert (=> b!7263058 true))

(declare-fun b!7263056 () Bool)

(declare-fun e!4355475 () Bool)

(declare-fun tp_is_empty!46949 () Bool)

(declare-fun tp!2039855 () Bool)

(assert (=> b!7263056 (= e!4355475 (and tp_is_empty!46949 tp!2039855))))

(declare-fun b!7263057 () Bool)

(declare-fun e!4355473 () Bool)

(declare-fun tp!2039853 () Bool)

(assert (=> b!7263057 (= e!4355473 tp!2039853)))

(declare-fun res!2944726 () Bool)

(declare-fun e!4355472 () Bool)

(assert (=> start!708020 (=> (not res!2944726) (not e!4355472))))

(declare-datatypes ((C!37758 0))(
  ( (C!37759 (val!28827 Int)) )
))
(declare-datatypes ((Regex!18742 0))(
  ( (ElementMatch!18742 (c!1351208 C!37758)) (Concat!27587 (regOne!37996 Regex!18742) (regTwo!37996 Regex!18742)) (EmptyExpr!18742) (Star!18742 (reg!19071 Regex!18742)) (EmptyLang!18742) (Union!18742 (regOne!37997 Regex!18742) (regTwo!37997 Regex!18742)) )
))
(declare-datatypes ((List!70799 0))(
  ( (Nil!70675) (Cons!70675 (h!77123 Regex!18742) (t!384865 List!70799)) )
))
(declare-datatypes ((Context!15364 0))(
  ( (Context!15365 (exprs!8182 List!70799)) )
))
(declare-fun ct2!346 () Context!15364)

(declare-datatypes ((List!70800 0))(
  ( (Nil!70676) (Cons!70676 (h!77124 C!37758) (t!384866 List!70800)) )
))
(declare-fun s!7854 () List!70800)

(declare-fun matchZipper!3646 ((Set Context!15364) List!70800) Bool)

(assert (=> start!708020 (= res!2944726 (matchZipper!3646 (set.insert ct2!346 (as set.empty (Set Context!15364))) s!7854))))

(assert (=> start!708020 e!4355472))

(declare-fun inv!89866 (Context!15364) Bool)

(assert (=> start!708020 (and (inv!89866 ct2!346) e!4355473)))

(assert (=> start!708020 e!4355475))

(declare-fun ct1!250 () Context!15364)

(declare-fun e!4355474 () Bool)

(assert (=> start!708020 (and (inv!89866 ct1!250) e!4355474)))

(declare-fun lambda!446920 () Int)

(declare-fun forall!17579 (List!70799 Int) Bool)

(assert (=> b!7263058 (= e!4355472 (not (forall!17579 (exprs!8182 ct1!250) lambda!446920)))))

(declare-fun lt!2591443 () (Set Context!15364))

(declare-fun lambda!446921 () Int)

(declare-fun flatMap!2855 ((Set Context!15364) Int) (Set Context!15364))

(declare-fun derivationStepZipperUp!2512 (Context!15364 C!37758) (Set Context!15364))

(assert (=> b!7263058 (= (flatMap!2855 lt!2591443 lambda!446921) (derivationStepZipperUp!2512 ct1!250 (h!77124 s!7854)))))

(declare-datatypes ((Unit!164102 0))(
  ( (Unit!164103) )
))
(declare-fun lt!2591445 () Unit!164102)

(declare-fun lemmaFlatMapOnSingletonSet!2255 ((Set Context!15364) Context!15364 Int) Unit!164102)

(assert (=> b!7263058 (= lt!2591445 (lemmaFlatMapOnSingletonSet!2255 lt!2591443 ct1!250 lambda!446921))))

(assert (=> b!7263058 (= lt!2591443 (set.insert ct1!250 (as set.empty (Set Context!15364))))))

(declare-fun lt!2591442 () (Set Context!15364))

(declare-fun ++!16642 (List!70799 List!70799) List!70799)

(assert (=> b!7263058 (= lt!2591442 (derivationStepZipperUp!2512 (Context!15365 (++!16642 (exprs!8182 ct1!250) (exprs!8182 ct2!346))) (h!77124 s!7854)))))

(declare-fun lt!2591444 () Unit!164102)

(declare-fun lemmaConcatPreservesForall!1499 (List!70799 List!70799 Int) Unit!164102)

(assert (=> b!7263058 (= lt!2591444 (lemmaConcatPreservesForall!1499 (exprs!8182 ct1!250) (exprs!8182 ct2!346) lambda!446920))))

(declare-fun b!7263059 () Bool)

(declare-fun tp!2039854 () Bool)

(assert (=> b!7263059 (= e!4355474 tp!2039854)))

(declare-fun b!7263060 () Bool)

(declare-fun res!2944728 () Bool)

(assert (=> b!7263060 (=> (not res!2944728) (not e!4355472))))

(declare-fun nullableContext!232 (Context!15364) Bool)

(assert (=> b!7263060 (= res!2944728 (nullableContext!232 ct1!250))))

(declare-fun b!7263061 () Bool)

(declare-fun res!2944727 () Bool)

(assert (=> b!7263061 (=> (not res!2944727) (not e!4355472))))

(assert (=> b!7263061 (= res!2944727 (is-Cons!70676 s!7854))))

(assert (= (and start!708020 res!2944726) b!7263060))

(assert (= (and b!7263060 res!2944728) b!7263061))

(assert (= (and b!7263061 res!2944727) b!7263058))

(assert (= start!708020 b!7263057))

(assert (= (and start!708020 (is-Cons!70676 s!7854)) b!7263056))

(assert (= start!708020 b!7263059))

(declare-fun m!7947602 () Bool)

(assert (=> start!708020 m!7947602))

(assert (=> start!708020 m!7947602))

(declare-fun m!7947604 () Bool)

(assert (=> start!708020 m!7947604))

(declare-fun m!7947606 () Bool)

(assert (=> start!708020 m!7947606))

(declare-fun m!7947608 () Bool)

(assert (=> start!708020 m!7947608))

(declare-fun m!7947610 () Bool)

(assert (=> b!7263058 m!7947610))

(declare-fun m!7947612 () Bool)

(assert (=> b!7263058 m!7947612))

(declare-fun m!7947614 () Bool)

(assert (=> b!7263058 m!7947614))

(declare-fun m!7947616 () Bool)

(assert (=> b!7263058 m!7947616))

(declare-fun m!7947618 () Bool)

(assert (=> b!7263058 m!7947618))

(declare-fun m!7947620 () Bool)

(assert (=> b!7263058 m!7947620))

(declare-fun m!7947622 () Bool)

(assert (=> b!7263058 m!7947622))

(declare-fun m!7947624 () Bool)

(assert (=> b!7263058 m!7947624))

(declare-fun m!7947626 () Bool)

(assert (=> b!7263060 m!7947626))

(push 1)

(assert (not start!708020))

(assert tp_is_empty!46949)

(assert (not b!7263059))

(assert (not b!7263058))

(assert (not b!7263060))

(assert (not b!7263057))

(assert (not b!7263056))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2259586 () Bool)

(declare-fun c!1351214 () Bool)

(declare-fun isEmpty!40629 (List!70800) Bool)

(assert (=> d!2259586 (= c!1351214 (isEmpty!40629 s!7854))))

(declare-fun e!4355490 () Bool)

(assert (=> d!2259586 (= (matchZipper!3646 (set.insert ct2!346 (as set.empty (Set Context!15364))) s!7854) e!4355490)))

(declare-fun b!7263088 () Bool)

(declare-fun nullableZipper!2963 ((Set Context!15364)) Bool)

(assert (=> b!7263088 (= e!4355490 (nullableZipper!2963 (set.insert ct2!346 (as set.empty (Set Context!15364)))))))

(declare-fun b!7263089 () Bool)

(declare-fun derivationStepZipper!3489 ((Set Context!15364) C!37758) (Set Context!15364))

(declare-fun head!14962 (List!70800) C!37758)

(declare-fun tail!14421 (List!70800) List!70800)

(assert (=> b!7263089 (= e!4355490 (matchZipper!3646 (derivationStepZipper!3489 (set.insert ct2!346 (as set.empty (Set Context!15364))) (head!14962 s!7854)) (tail!14421 s!7854)))))

(assert (= (and d!2259586 c!1351214) b!7263088))

(assert (= (and d!2259586 (not c!1351214)) b!7263089))

(declare-fun m!7947654 () Bool)

(assert (=> d!2259586 m!7947654))

(assert (=> b!7263088 m!7947602))

(declare-fun m!7947656 () Bool)

(assert (=> b!7263088 m!7947656))

(declare-fun m!7947658 () Bool)

(assert (=> b!7263089 m!7947658))

(assert (=> b!7263089 m!7947602))

(assert (=> b!7263089 m!7947658))

(declare-fun m!7947660 () Bool)

(assert (=> b!7263089 m!7947660))

(declare-fun m!7947662 () Bool)

(assert (=> b!7263089 m!7947662))

(assert (=> b!7263089 m!7947660))

(assert (=> b!7263089 m!7947662))

(declare-fun m!7947664 () Bool)

(assert (=> b!7263089 m!7947664))

(assert (=> start!708020 d!2259586))

(declare-fun bs!1909793 () Bool)

(declare-fun d!2259588 () Bool)

(assert (= bs!1909793 (and d!2259588 b!7263058)))

(declare-fun lambda!446932 () Int)

(assert (=> bs!1909793 (= lambda!446932 lambda!446920)))

(assert (=> d!2259588 (= (inv!89866 ct2!346) (forall!17579 (exprs!8182 ct2!346) lambda!446932))))

(declare-fun bs!1909794 () Bool)

(assert (= bs!1909794 d!2259588))

(declare-fun m!7947666 () Bool)

(assert (=> bs!1909794 m!7947666))

(assert (=> start!708020 d!2259588))

(declare-fun bs!1909795 () Bool)

(declare-fun d!2259590 () Bool)

(assert (= bs!1909795 (and d!2259590 b!7263058)))

(declare-fun lambda!446933 () Int)

(assert (=> bs!1909795 (= lambda!446933 lambda!446920)))

(declare-fun bs!1909796 () Bool)

(assert (= bs!1909796 (and d!2259590 d!2259588)))

(assert (=> bs!1909796 (= lambda!446933 lambda!446932)))

(assert (=> d!2259590 (= (inv!89866 ct1!250) (forall!17579 (exprs!8182 ct1!250) lambda!446933))))

(declare-fun bs!1909797 () Bool)

(assert (= bs!1909797 d!2259590))

(declare-fun m!7947668 () Bool)

(assert (=> bs!1909797 m!7947668))

(assert (=> start!708020 d!2259590))

(declare-fun d!2259592 () Bool)

(declare-fun res!2944742 () Bool)

(declare-fun e!4355495 () Bool)

(assert (=> d!2259592 (=> res!2944742 e!4355495)))

(assert (=> d!2259592 (= res!2944742 (is-Nil!70675 (exprs!8182 ct1!250)))))

(assert (=> d!2259592 (= (forall!17579 (exprs!8182 ct1!250) lambda!446920) e!4355495)))

(declare-fun b!7263094 () Bool)

(declare-fun e!4355496 () Bool)

(assert (=> b!7263094 (= e!4355495 e!4355496)))

(declare-fun res!2944743 () Bool)

(assert (=> b!7263094 (=> (not res!2944743) (not e!4355496))))

(declare-fun dynLambda!28847 (Int Regex!18742) Bool)

(assert (=> b!7263094 (= res!2944743 (dynLambda!28847 lambda!446920 (h!77123 (exprs!8182 ct1!250))))))

(declare-fun b!7263095 () Bool)

(assert (=> b!7263095 (= e!4355496 (forall!17579 (t!384865 (exprs!8182 ct1!250)) lambda!446920))))

(assert (= (and d!2259592 (not res!2944742)) b!7263094))

(assert (= (and b!7263094 res!2944743) b!7263095))

(declare-fun b_lambda!279405 () Bool)

(assert (=> (not b_lambda!279405) (not b!7263094)))

(declare-fun m!7947670 () Bool)

(assert (=> b!7263094 m!7947670))

(declare-fun m!7947672 () Bool)

(assert (=> b!7263095 m!7947672))

(assert (=> b!7263058 d!2259592))

(declare-fun b!7263106 () Bool)

(declare-fun e!4355504 () (Set Context!15364))

(declare-fun e!4355505 () (Set Context!15364))

(assert (=> b!7263106 (= e!4355504 e!4355505)))

(declare-fun c!1351219 () Bool)

(assert (=> b!7263106 (= c!1351219 (is-Cons!70675 (exprs!8182 ct1!250)))))

(declare-fun d!2259594 () Bool)

(declare-fun c!1351220 () Bool)

(declare-fun e!4355503 () Bool)

(assert (=> d!2259594 (= c!1351220 e!4355503)))

(declare-fun res!2944746 () Bool)

(assert (=> d!2259594 (=> (not res!2944746) (not e!4355503))))

(assert (=> d!2259594 (= res!2944746 (is-Cons!70675 (exprs!8182 ct1!250)))))

(assert (=> d!2259594 (= (derivationStepZipperUp!2512 ct1!250 (h!77124 s!7854)) e!4355504)))

(declare-fun b!7263107 () Bool)

(assert (=> b!7263107 (= e!4355505 (as set.empty (Set Context!15364)))))

(declare-fun bm!661795 () Bool)

(declare-fun call!661800 () (Set Context!15364))

(declare-fun derivationStepZipperDown!2680 (Regex!18742 Context!15364 C!37758) (Set Context!15364))

(assert (=> bm!661795 (= call!661800 (derivationStepZipperDown!2680 (h!77123 (exprs!8182 ct1!250)) (Context!15365 (t!384865 (exprs!8182 ct1!250))) (h!77124 s!7854)))))

(declare-fun b!7263108 () Bool)

(declare-fun nullable!7946 (Regex!18742) Bool)

(assert (=> b!7263108 (= e!4355503 (nullable!7946 (h!77123 (exprs!8182 ct1!250))))))

(declare-fun b!7263109 () Bool)

(assert (=> b!7263109 (= e!4355505 call!661800)))

(declare-fun b!7263110 () Bool)

(assert (=> b!7263110 (= e!4355504 (set.union call!661800 (derivationStepZipperUp!2512 (Context!15365 (t!384865 (exprs!8182 ct1!250))) (h!77124 s!7854))))))

(assert (= (and d!2259594 res!2944746) b!7263108))

(assert (= (and d!2259594 c!1351220) b!7263110))

(assert (= (and d!2259594 (not c!1351220)) b!7263106))

(assert (= (and b!7263106 c!1351219) b!7263109))

(assert (= (and b!7263106 (not c!1351219)) b!7263107))

(assert (= (or b!7263110 b!7263109) bm!661795))

(declare-fun m!7947674 () Bool)

(assert (=> bm!661795 m!7947674))

(declare-fun m!7947676 () Bool)

(assert (=> b!7263108 m!7947676))

(declare-fun m!7947678 () Bool)

(assert (=> b!7263110 m!7947678))

(assert (=> b!7263058 d!2259594))

(declare-fun d!2259598 () Bool)

(declare-fun dynLambda!28848 (Int Context!15364) (Set Context!15364))

(assert (=> d!2259598 (= (flatMap!2855 lt!2591443 lambda!446921) (dynLambda!28848 lambda!446921 ct1!250))))

(declare-fun lt!2591463 () Unit!164102)

(declare-fun choose!56253 ((Set Context!15364) Context!15364 Int) Unit!164102)

(assert (=> d!2259598 (= lt!2591463 (choose!56253 lt!2591443 ct1!250 lambda!446921))))

(assert (=> d!2259598 (= lt!2591443 (set.insert ct1!250 (as set.empty (Set Context!15364))))))

(assert (=> d!2259598 (= (lemmaFlatMapOnSingletonSet!2255 lt!2591443 ct1!250 lambda!446921) lt!2591463)))

(declare-fun b_lambda!279407 () Bool)

(assert (=> (not b_lambda!279407) (not d!2259598)))

(declare-fun bs!1909799 () Bool)

(assert (= bs!1909799 d!2259598))

(assert (=> bs!1909799 m!7947612))

(declare-fun m!7947684 () Bool)

(assert (=> bs!1909799 m!7947684))

(declare-fun m!7947686 () Bool)

(assert (=> bs!1909799 m!7947686))

(assert (=> bs!1909799 m!7947618))

(assert (=> b!7263058 d!2259598))

(declare-fun e!4355516 () Bool)

(declare-fun b!7263132 () Bool)

(declare-fun lt!2591466 () List!70799)

(assert (=> b!7263132 (= e!4355516 (or (not (= (exprs!8182 ct2!346) Nil!70675)) (= lt!2591466 (exprs!8182 ct1!250))))))

(declare-fun d!2259602 () Bool)

(assert (=> d!2259602 e!4355516))

(declare-fun res!2944754 () Bool)

(assert (=> d!2259602 (=> (not res!2944754) (not e!4355516))))

(declare-fun content!14730 (List!70799) (Set Regex!18742))

(assert (=> d!2259602 (= res!2944754 (= (content!14730 lt!2591466) (set.union (content!14730 (exprs!8182 ct1!250)) (content!14730 (exprs!8182 ct2!346)))))))

(declare-fun e!4355517 () List!70799)

(assert (=> d!2259602 (= lt!2591466 e!4355517)))

(declare-fun c!1351227 () Bool)

(assert (=> d!2259602 (= c!1351227 (is-Nil!70675 (exprs!8182 ct1!250)))))

(assert (=> d!2259602 (= (++!16642 (exprs!8182 ct1!250) (exprs!8182 ct2!346)) lt!2591466)))

(declare-fun b!7263129 () Bool)

(assert (=> b!7263129 (= e!4355517 (exprs!8182 ct2!346))))

(declare-fun b!7263130 () Bool)

(assert (=> b!7263130 (= e!4355517 (Cons!70675 (h!77123 (exprs!8182 ct1!250)) (++!16642 (t!384865 (exprs!8182 ct1!250)) (exprs!8182 ct2!346))))))

(declare-fun b!7263131 () Bool)

(declare-fun res!2944753 () Bool)

(assert (=> b!7263131 (=> (not res!2944753) (not e!4355516))))

(declare-fun size!41778 (List!70799) Int)

(assert (=> b!7263131 (= res!2944753 (= (size!41778 lt!2591466) (+ (size!41778 (exprs!8182 ct1!250)) (size!41778 (exprs!8182 ct2!346)))))))

(assert (= (and d!2259602 c!1351227) b!7263129))

(assert (= (and d!2259602 (not c!1351227)) b!7263130))

(assert (= (and d!2259602 res!2944754) b!7263131))

(assert (= (and b!7263131 res!2944753) b!7263132))

(declare-fun m!7947688 () Bool)

(assert (=> d!2259602 m!7947688))

(declare-fun m!7947690 () Bool)

(assert (=> d!2259602 m!7947690))

(declare-fun m!7947692 () Bool)

(assert (=> d!2259602 m!7947692))

(declare-fun m!7947694 () Bool)

(assert (=> b!7263130 m!7947694))

(declare-fun m!7947696 () Bool)

(assert (=> b!7263131 m!7947696))

(declare-fun m!7947698 () Bool)

(assert (=> b!7263131 m!7947698))

(declare-fun m!7947700 () Bool)

(assert (=> b!7263131 m!7947700))

(assert (=> b!7263058 d!2259602))

(declare-fun b!7263133 () Bool)

(declare-fun e!4355519 () (Set Context!15364))

(declare-fun e!4355520 () (Set Context!15364))

(assert (=> b!7263133 (= e!4355519 e!4355520)))

(declare-fun c!1351228 () Bool)

(assert (=> b!7263133 (= c!1351228 (is-Cons!70675 (exprs!8182 (Context!15365 (++!16642 (exprs!8182 ct1!250) (exprs!8182 ct2!346))))))))

(declare-fun d!2259604 () Bool)

(declare-fun c!1351229 () Bool)

(declare-fun e!4355518 () Bool)

(assert (=> d!2259604 (= c!1351229 e!4355518)))

(declare-fun res!2944755 () Bool)

(assert (=> d!2259604 (=> (not res!2944755) (not e!4355518))))

(assert (=> d!2259604 (= res!2944755 (is-Cons!70675 (exprs!8182 (Context!15365 (++!16642 (exprs!8182 ct1!250) (exprs!8182 ct2!346))))))))

(assert (=> d!2259604 (= (derivationStepZipperUp!2512 (Context!15365 (++!16642 (exprs!8182 ct1!250) (exprs!8182 ct2!346))) (h!77124 s!7854)) e!4355519)))

(declare-fun b!7263134 () Bool)

(assert (=> b!7263134 (= e!4355520 (as set.empty (Set Context!15364)))))

(declare-fun call!661801 () (Set Context!15364))

(declare-fun bm!661796 () Bool)

(assert (=> bm!661796 (= call!661801 (derivationStepZipperDown!2680 (h!77123 (exprs!8182 (Context!15365 (++!16642 (exprs!8182 ct1!250) (exprs!8182 ct2!346))))) (Context!15365 (t!384865 (exprs!8182 (Context!15365 (++!16642 (exprs!8182 ct1!250) (exprs!8182 ct2!346)))))) (h!77124 s!7854)))))

(declare-fun b!7263135 () Bool)

(assert (=> b!7263135 (= e!4355518 (nullable!7946 (h!77123 (exprs!8182 (Context!15365 (++!16642 (exprs!8182 ct1!250) (exprs!8182 ct2!346)))))))))

(declare-fun b!7263136 () Bool)

(assert (=> b!7263136 (= e!4355520 call!661801)))

(declare-fun b!7263137 () Bool)

(assert (=> b!7263137 (= e!4355519 (set.union call!661801 (derivationStepZipperUp!2512 (Context!15365 (t!384865 (exprs!8182 (Context!15365 (++!16642 (exprs!8182 ct1!250) (exprs!8182 ct2!346)))))) (h!77124 s!7854))))))

(assert (= (and d!2259604 res!2944755) b!7263135))

(assert (= (and d!2259604 c!1351229) b!7263137))

(assert (= (and d!2259604 (not c!1351229)) b!7263133))

(assert (= (and b!7263133 c!1351228) b!7263136))

(assert (= (and b!7263133 (not c!1351228)) b!7263134))

(assert (= (or b!7263137 b!7263136) bm!661796))

(declare-fun m!7947702 () Bool)

(assert (=> bm!661796 m!7947702))

(declare-fun m!7947704 () Bool)

(assert (=> b!7263135 m!7947704))

(declare-fun m!7947706 () Bool)

(assert (=> b!7263137 m!7947706))

(assert (=> b!7263058 d!2259604))

(declare-fun d!2259606 () Bool)

(declare-fun choose!56254 ((Set Context!15364) Int) (Set Context!15364))

(assert (=> d!2259606 (= (flatMap!2855 lt!2591443 lambda!446921) (choose!56254 lt!2591443 lambda!446921))))

(declare-fun bs!1909800 () Bool)

(assert (= bs!1909800 d!2259606))

(declare-fun m!7947708 () Bool)

(assert (=> bs!1909800 m!7947708))

(assert (=> b!7263058 d!2259606))

(declare-fun d!2259608 () Bool)

(assert (=> d!2259608 (forall!17579 (++!16642 (exprs!8182 ct1!250) (exprs!8182 ct2!346)) lambda!446920)))

(declare-fun lt!2591469 () Unit!164102)

(declare-fun choose!56255 (List!70799 List!70799 Int) Unit!164102)

(assert (=> d!2259608 (= lt!2591469 (choose!56255 (exprs!8182 ct1!250) (exprs!8182 ct2!346) lambda!446920))))

(assert (=> d!2259608 (forall!17579 (exprs!8182 ct1!250) lambda!446920)))

(assert (=> d!2259608 (= (lemmaConcatPreservesForall!1499 (exprs!8182 ct1!250) (exprs!8182 ct2!346) lambda!446920) lt!2591469)))

(declare-fun bs!1909801 () Bool)

(assert (= bs!1909801 d!2259608))

(assert (=> bs!1909801 m!7947620))

(assert (=> bs!1909801 m!7947620))

(declare-fun m!7947710 () Bool)

(assert (=> bs!1909801 m!7947710))

(declare-fun m!7947712 () Bool)

(assert (=> bs!1909801 m!7947712))

(assert (=> bs!1909801 m!7947622))

(assert (=> b!7263058 d!2259608))

(declare-fun bs!1909802 () Bool)

(declare-fun d!2259610 () Bool)

(assert (= bs!1909802 (and d!2259610 b!7263058)))

(declare-fun lambda!446936 () Int)

(assert (=> bs!1909802 (not (= lambda!446936 lambda!446920))))

(declare-fun bs!1909803 () Bool)

(assert (= bs!1909803 (and d!2259610 d!2259588)))

(assert (=> bs!1909803 (not (= lambda!446936 lambda!446932))))

(declare-fun bs!1909804 () Bool)

(assert (= bs!1909804 (and d!2259610 d!2259590)))

(assert (=> bs!1909804 (not (= lambda!446936 lambda!446933))))

(assert (=> d!2259610 (= (nullableContext!232 ct1!250) (forall!17579 (exprs!8182 ct1!250) lambda!446936))))

(declare-fun bs!1909805 () Bool)

(assert (= bs!1909805 d!2259610))

(declare-fun m!7947716 () Bool)

(assert (=> bs!1909805 m!7947716))

(assert (=> b!7263060 d!2259610))

(declare-fun b!7263147 () Bool)

(declare-fun e!4355526 () Bool)

(declare-fun tp!2039869 () Bool)

(declare-fun tp!2039870 () Bool)

(assert (=> b!7263147 (= e!4355526 (and tp!2039869 tp!2039870))))

(assert (=> b!7263057 (= tp!2039853 e!4355526)))

(assert (= (and b!7263057 (is-Cons!70675 (exprs!8182 ct2!346))) b!7263147))

(declare-fun b!7263152 () Bool)

(declare-fun e!4355529 () Bool)

(declare-fun tp!2039873 () Bool)

(assert (=> b!7263152 (= e!4355529 (and tp_is_empty!46949 tp!2039873))))

(assert (=> b!7263056 (= tp!2039855 e!4355529)))

(assert (= (and b!7263056 (is-Cons!70676 (t!384866 s!7854))) b!7263152))

(declare-fun b!7263153 () Bool)

(declare-fun e!4355530 () Bool)

(declare-fun tp!2039874 () Bool)

(declare-fun tp!2039875 () Bool)

(assert (=> b!7263153 (= e!4355530 (and tp!2039874 tp!2039875))))

(assert (=> b!7263059 (= tp!2039854 e!4355530)))

(assert (= (and b!7263059 (is-Cons!70675 (exprs!8182 ct1!250))) b!7263153))

(declare-fun b_lambda!279409 () Bool)

(assert (= b_lambda!279407 (or b!7263058 b_lambda!279409)))

(declare-fun bs!1909806 () Bool)

(declare-fun d!2259614 () Bool)

(assert (= bs!1909806 (and d!2259614 b!7263058)))

(assert (=> bs!1909806 (= (dynLambda!28848 lambda!446921 ct1!250) (derivationStepZipperUp!2512 ct1!250 (h!77124 s!7854)))))

(assert (=> bs!1909806 m!7947614))

(assert (=> d!2259598 d!2259614))

(declare-fun b_lambda!279411 () Bool)

(assert (= b_lambda!279405 (or b!7263058 b_lambda!279411)))

(declare-fun bs!1909807 () Bool)

(declare-fun d!2259616 () Bool)

(assert (= bs!1909807 (and d!2259616 b!7263058)))

(declare-fun validRegex!9557 (Regex!18742) Bool)

(assert (=> bs!1909807 (= (dynLambda!28847 lambda!446920 (h!77123 (exprs!8182 ct1!250))) (validRegex!9557 (h!77123 (exprs!8182 ct1!250))))))

(declare-fun m!7947722 () Bool)

(assert (=> bs!1909807 m!7947722))

(assert (=> b!7263094 d!2259616))

(push 1)

(assert (not b!7263153))

(assert (not d!2259586))

(assert (not b!7263131))

(assert (not b!7263130))

(assert (not d!2259606))

(assert (not b!7263137))

(assert (not d!2259598))

(assert (not b!7263110))

(assert (not b!7263152))

(assert (not bs!1909806))

(assert (not bm!661796))

(assert (not b!7263089))

(assert (not d!2259588))

(assert (not b_lambda!279409))

(assert tp_is_empty!46949)

(assert (not b!7263108))

(assert (not b_lambda!279411))

(assert (not b!7263147))

(assert (not d!2259590))

(assert (not b!7263095))

(assert (not d!2259602))

(assert (not bs!1909807))

(assert (not d!2259608))

(assert (not bm!661795))

(assert (not b!7263088))

(assert (not d!2259610))

(assert (not b!7263135))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

