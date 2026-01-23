; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!716742 () Bool)

(assert start!716742)

(declare-fun b!7337661 () Bool)

(declare-fun e!4393830 () Bool)

(declare-fun tp!2083203 () Bool)

(assert (=> b!7337661 (= e!4393830 tp!2083203)))

(declare-fun b!7337662 () Bool)

(declare-fun e!4393826 () Bool)

(declare-fun tp!2083199 () Bool)

(assert (=> b!7337662 (= e!4393826 tp!2083199)))

(declare-fun b!7337663 () Bool)

(declare-fun e!4393825 () Bool)

(declare-fun tp!2083202 () Bool)

(assert (=> b!7337663 (= e!4393825 tp!2083202)))

(declare-fun b!7337664 () Bool)

(declare-fun e!4393827 () Bool)

(declare-datatypes ((C!38458 0))(
  ( (C!38459 (val!29589 Int)) )
))
(declare-datatypes ((Regex!19092 0))(
  ( (ElementMatch!19092 (c!1362848 C!38458)) (Concat!27937 (regOne!38696 Regex!19092) (regTwo!38696 Regex!19092)) (EmptyExpr!19092) (Star!19092 (reg!19421 Regex!19092)) (EmptyLang!19092) (Union!19092 (regOne!38697 Regex!19092) (regTwo!38697 Regex!19092)) )
))
(declare-datatypes ((List!71588 0))(
  ( (Nil!71464) (Cons!71464 (h!77912 Regex!19092) (t!385983 List!71588)) )
))
(declare-datatypes ((Context!16064 0))(
  ( (Context!16065 (exprs!8532 List!71588)) )
))
(declare-fun cWitness!61 () Context!16064)

(declare-fun lambda!455324 () Int)

(declare-fun forall!17926 (List!71588 Int) Bool)

(assert (=> b!7337664 (= e!4393827 (not (forall!17926 (exprs!8532 cWitness!61) lambda!455324)))))

(declare-fun b!7337665 () Bool)

(declare-fun e!4393833 () Bool)

(declare-fun e!4393829 () Bool)

(assert (=> b!7337665 (= e!4393833 e!4393829)))

(declare-fun res!2964706 () Bool)

(assert (=> b!7337665 (=> (not res!2964706) (not e!4393829))))

(declare-fun lt!2609462 () (Set Context!16064))

(declare-fun lt!2609458 () Context!16064)

(assert (=> b!7337665 (= res!2964706 (= lt!2609462 (set.insert lt!2609458 (as set.empty (Set Context!16064)))))))

(declare-fun ct2!378 () Context!16064)

(declare-datatypes ((Unit!165137 0))(
  ( (Unit!165138) )
))
(declare-fun lt!2609460 () Unit!165137)

(declare-fun ct1!282 () Context!16064)

(declare-fun lemmaConcatPreservesForall!1767 (List!71588 List!71588 Int) Unit!165137)

(assert (=> b!7337665 (= lt!2609460 (lemmaConcatPreservesForall!1767 (exprs!8532 ct1!282) (exprs!8532 ct2!378) lambda!455324))))

(declare-fun b!7337666 () Bool)

(declare-fun e!4393831 () Bool)

(declare-fun tp!2083200 () Bool)

(assert (=> b!7337666 (= e!4393831 tp!2083200)))

(declare-fun b!7337667 () Bool)

(declare-fun tp!2083205 () Bool)

(declare-fun tp!2083201 () Bool)

(assert (=> b!7337667 (= e!4393826 (and tp!2083205 tp!2083201))))

(declare-fun b!7337668 () Bool)

(declare-fun e!4393828 () Bool)

(assert (=> b!7337668 (= e!4393828 e!4393833)))

(declare-fun res!2964705 () Bool)

(assert (=> b!7337668 (=> (not res!2964705) (not e!4393833))))

(declare-fun lt!2609457 () (Set Context!16064))

(declare-fun lt!2609459 () (Set Context!16064))

(assert (=> b!7337668 (= res!2964705 (and (= lt!2609459 lt!2609457) (set.member cWitness!61 lt!2609457) (= cWitness!61 ct1!282)))))

(assert (=> b!7337668 (= lt!2609457 (set.insert ct1!282 (as set.empty (Set Context!16064))))))

(declare-fun b!7337669 () Bool)

(declare-fun tp_is_empty!48429 () Bool)

(assert (=> b!7337669 (= e!4393826 tp_is_empty!48429)))

(declare-fun b!7337670 () Bool)

(declare-fun e!4393832 () Bool)

(assert (=> b!7337670 (= e!4393832 e!4393828)))

(declare-fun res!2964707 () Bool)

(assert (=> b!7337670 (=> (not res!2964707) (not e!4393828))))

(declare-fun r1!2370 () Regex!19092)

(declare-fun c!10362 () C!38458)

(assert (=> b!7337670 (= res!2964707 (and (is-ElementMatch!19092 r1!2370) (= c!10362 (c!1362848 r1!2370))))))

(declare-fun derivationStepZipperDown!2918 (Regex!19092 Context!16064 C!38458) (Set Context!16064))

(assert (=> b!7337670 (= lt!2609462 (derivationStepZipperDown!2918 r1!2370 lt!2609458 c!10362))))

(declare-fun ++!16910 (List!71588 List!71588) List!71588)

(assert (=> b!7337670 (= lt!2609458 (Context!16065 (++!16910 (exprs!8532 ct1!282) (exprs!8532 ct2!378))))))

(declare-fun lt!2609456 () Unit!165137)

(assert (=> b!7337670 (= lt!2609456 (lemmaConcatPreservesForall!1767 (exprs!8532 ct1!282) (exprs!8532 ct2!378) lambda!455324))))

(declare-fun res!2964709 () Bool)

(declare-fun e!4393834 () Bool)

(assert (=> start!716742 (=> (not res!2964709) (not e!4393834))))

(declare-fun validRegex!9688 (Regex!19092) Bool)

(assert (=> start!716742 (= res!2964709 (validRegex!9688 r1!2370))))

(assert (=> start!716742 e!4393834))

(assert (=> start!716742 tp_is_empty!48429))

(declare-fun inv!91071 (Context!16064) Bool)

(assert (=> start!716742 (and (inv!91071 cWitness!61) e!4393825)))

(assert (=> start!716742 (and (inv!91071 ct1!282) e!4393830)))

(assert (=> start!716742 e!4393826))

(assert (=> start!716742 (and (inv!91071 ct2!378) e!4393831)))

(declare-fun b!7337660 () Bool)

(declare-fun tp!2083198 () Bool)

(declare-fun tp!2083204 () Bool)

(assert (=> b!7337660 (= e!4393826 (and tp!2083198 tp!2083204))))

(declare-fun b!7337671 () Bool)

(assert (=> b!7337671 (= e!4393829 e!4393827)))

(declare-fun res!2964708 () Bool)

(assert (=> b!7337671 (=> (not res!2964708) (not e!4393827))))

(assert (=> b!7337671 (= res!2964708 (set.member (Context!16065 (++!16910 (exprs!8532 cWitness!61) (exprs!8532 ct2!378))) lt!2609462))))

(declare-fun lt!2609461 () Unit!165137)

(assert (=> b!7337671 (= lt!2609461 (lemmaConcatPreservesForall!1767 (exprs!8532 cWitness!61) (exprs!8532 ct2!378) lambda!455324))))

(declare-fun b!7337672 () Bool)

(assert (=> b!7337672 (= e!4393834 e!4393832)))

(declare-fun res!2964710 () Bool)

(assert (=> b!7337672 (=> (not res!2964710) (not e!4393832))))

(assert (=> b!7337672 (= res!2964710 (set.member cWitness!61 lt!2609459))))

(assert (=> b!7337672 (= lt!2609459 (derivationStepZipperDown!2918 r1!2370 ct1!282 c!10362))))

(assert (= (and start!716742 res!2964709) b!7337672))

(assert (= (and b!7337672 res!2964710) b!7337670))

(assert (= (and b!7337670 res!2964707) b!7337668))

(assert (= (and b!7337668 res!2964705) b!7337665))

(assert (= (and b!7337665 res!2964706) b!7337671))

(assert (= (and b!7337671 res!2964708) b!7337664))

(assert (= start!716742 b!7337663))

(assert (= start!716742 b!7337661))

(assert (= (and start!716742 (is-ElementMatch!19092 r1!2370)) b!7337669))

(assert (= (and start!716742 (is-Concat!27937 r1!2370)) b!7337667))

(assert (= (and start!716742 (is-Star!19092 r1!2370)) b!7337662))

(assert (= (and start!716742 (is-Union!19092 r1!2370)) b!7337660))

(assert (= start!716742 b!7337666))

(declare-fun m!8002682 () Bool)

(assert (=> b!7337665 m!8002682))

(declare-fun m!8002684 () Bool)

(assert (=> b!7337665 m!8002684))

(declare-fun m!8002686 () Bool)

(assert (=> b!7337670 m!8002686))

(declare-fun m!8002688 () Bool)

(assert (=> b!7337670 m!8002688))

(assert (=> b!7337670 m!8002684))

(declare-fun m!8002690 () Bool)

(assert (=> b!7337671 m!8002690))

(declare-fun m!8002692 () Bool)

(assert (=> b!7337671 m!8002692))

(declare-fun m!8002694 () Bool)

(assert (=> b!7337671 m!8002694))

(declare-fun m!8002696 () Bool)

(assert (=> b!7337672 m!8002696))

(declare-fun m!8002698 () Bool)

(assert (=> b!7337672 m!8002698))

(declare-fun m!8002700 () Bool)

(assert (=> b!7337664 m!8002700))

(declare-fun m!8002702 () Bool)

(assert (=> start!716742 m!8002702))

(declare-fun m!8002704 () Bool)

(assert (=> start!716742 m!8002704))

(declare-fun m!8002706 () Bool)

(assert (=> start!716742 m!8002706))

(declare-fun m!8002708 () Bool)

(assert (=> start!716742 m!8002708))

(declare-fun m!8002710 () Bool)

(assert (=> b!7337668 m!8002710))

(declare-fun m!8002712 () Bool)

(assert (=> b!7337668 m!8002712))

(push 1)

(assert (not b!7337662))

(assert (not b!7337670))

(assert (not start!716742))

(assert (not b!7337660))

(assert (not b!7337664))

(assert (not b!7337666))

(assert tp_is_empty!48429)

(assert (not b!7337671))

(assert (not b!7337665))

(assert (not b!7337667))

(assert (not b!7337672))

(assert (not b!7337663))

(assert (not b!7337661))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7337734 () Bool)

(declare-fun e!4393881 () (Set Context!16064))

(declare-fun e!4393879 () (Set Context!16064))

(assert (=> b!7337734 (= e!4393881 e!4393879)))

(declare-fun c!1362864 () Bool)

(assert (=> b!7337734 (= c!1362864 (is-Concat!27937 r1!2370))))

(declare-fun b!7337735 () Bool)

(declare-fun e!4393877 () (Set Context!16064))

(declare-fun call!669311 () (Set Context!16064))

(declare-fun call!669306 () (Set Context!16064))

(assert (=> b!7337735 (= e!4393877 (set.union call!669311 call!669306))))

(declare-fun c!1362861 () Bool)

(declare-fun bm!669301 () Bool)

(declare-fun call!669308 () List!71588)

(declare-fun $colon$colon!3096 (List!71588 Regex!19092) List!71588)

(assert (=> bm!669301 (= call!669308 ($colon$colon!3096 (exprs!8532 lt!2609458) (ite (or c!1362861 c!1362864) (regTwo!38696 r1!2370) r1!2370)))))

(declare-fun b!7337736 () Bool)

(declare-fun e!4393882 () (Set Context!16064))

(declare-fun call!669310 () (Set Context!16064))

(assert (=> b!7337736 (= e!4393882 call!669310)))

(declare-fun bm!669302 () Bool)

(declare-fun call!669307 () (Set Context!16064))

(assert (=> bm!669302 (= call!669310 call!669307)))

(declare-fun b!7337737 () Bool)

(declare-fun e!4393880 () Bool)

(declare-fun nullable!8189 (Regex!19092) Bool)

(assert (=> b!7337737 (= e!4393880 (nullable!8189 (regOne!38696 r1!2370)))))

(declare-fun call!669309 () List!71588)

(declare-fun c!1362862 () Bool)

(declare-fun bm!669303 () Bool)

(assert (=> bm!669303 (= call!669306 (derivationStepZipperDown!2918 (ite c!1362862 (regTwo!38697 r1!2370) (ite c!1362861 (regTwo!38696 r1!2370) (ite c!1362864 (regOne!38696 r1!2370) (reg!19421 r1!2370)))) (ite (or c!1362862 c!1362861) lt!2609458 (Context!16065 call!669309)) c!10362))))

(declare-fun b!7337738 () Bool)

(declare-fun e!4393878 () (Set Context!16064))

(assert (=> b!7337738 (= e!4393878 (set.insert lt!2609458 (as set.empty (Set Context!16064))))))

(declare-fun d!2278289 () Bool)

(declare-fun c!1362863 () Bool)

(assert (=> d!2278289 (= c!1362863 (and (is-ElementMatch!19092 r1!2370) (= (c!1362848 r1!2370) c!10362)))))

(assert (=> d!2278289 (= (derivationStepZipperDown!2918 r1!2370 lt!2609458 c!10362) e!4393878)))

(declare-fun bm!669304 () Bool)

(assert (=> bm!669304 (= call!669309 call!669308)))

(declare-fun b!7337739 () Bool)

(assert (=> b!7337739 (= c!1362861 e!4393880)))

(declare-fun res!2964731 () Bool)

(assert (=> b!7337739 (=> (not res!2964731) (not e!4393880))))

(assert (=> b!7337739 (= res!2964731 (is-Concat!27937 r1!2370))))

(assert (=> b!7337739 (= e!4393877 e!4393881)))

(declare-fun bm!669305 () Bool)

(assert (=> bm!669305 (= call!669307 call!669306)))

(declare-fun b!7337740 () Bool)

(declare-fun c!1362860 () Bool)

(assert (=> b!7337740 (= c!1362860 (is-Star!19092 r1!2370))))

(assert (=> b!7337740 (= e!4393879 e!4393882)))

(declare-fun b!7337741 () Bool)

(assert (=> b!7337741 (= e!4393881 (set.union call!669311 call!669307))))

(declare-fun bm!669306 () Bool)

(assert (=> bm!669306 (= call!669311 (derivationStepZipperDown!2918 (ite c!1362862 (regOne!38697 r1!2370) (regOne!38696 r1!2370)) (ite c!1362862 lt!2609458 (Context!16065 call!669308)) c!10362))))

(declare-fun b!7337742 () Bool)

(assert (=> b!7337742 (= e!4393879 call!669310)))

(declare-fun b!7337743 () Bool)

(assert (=> b!7337743 (= e!4393878 e!4393877)))

(assert (=> b!7337743 (= c!1362862 (is-Union!19092 r1!2370))))

(declare-fun b!7337744 () Bool)

(assert (=> b!7337744 (= e!4393882 (as set.empty (Set Context!16064)))))

(assert (= (and d!2278289 c!1362863) b!7337738))

(assert (= (and d!2278289 (not c!1362863)) b!7337743))

(assert (= (and b!7337743 c!1362862) b!7337735))

(assert (= (and b!7337743 (not c!1362862)) b!7337739))

(assert (= (and b!7337739 res!2964731) b!7337737))

(assert (= (and b!7337739 c!1362861) b!7337741))

(assert (= (and b!7337739 (not c!1362861)) b!7337734))

(assert (= (and b!7337734 c!1362864) b!7337742))

(assert (= (and b!7337734 (not c!1362864)) b!7337740))

(assert (= (and b!7337740 c!1362860) b!7337736))

(assert (= (and b!7337740 (not c!1362860)) b!7337744))

(assert (= (or b!7337742 b!7337736) bm!669304))

(assert (= (or b!7337742 b!7337736) bm!669302))

(assert (= (or b!7337741 bm!669302) bm!669305))

(assert (= (or b!7337741 bm!669304) bm!669301))

(assert (= (or b!7337735 bm!669305) bm!669303))

(assert (= (or b!7337735 b!7337741) bm!669306))

(assert (=> b!7337738 m!8002682))

(declare-fun m!8002746 () Bool)

(assert (=> b!7337737 m!8002746))

(declare-fun m!8002748 () Bool)

(assert (=> bm!669301 m!8002748))

(declare-fun m!8002750 () Bool)

(assert (=> bm!669306 m!8002750))

(declare-fun m!8002752 () Bool)

(assert (=> bm!669303 m!8002752))

(assert (=> b!7337670 d!2278289))

(declare-fun b!7337778 () Bool)

(declare-fun lt!2609486 () List!71588)

(declare-fun e!4393900 () Bool)

(assert (=> b!7337778 (= e!4393900 (or (not (= (exprs!8532 ct2!378) Nil!71464)) (= lt!2609486 (exprs!8532 ct1!282))))))

(declare-fun b!7337775 () Bool)

(declare-fun e!4393899 () List!71588)

(assert (=> b!7337775 (= e!4393899 (exprs!8532 ct2!378))))

(declare-fun b!7337777 () Bool)

(declare-fun res!2964739 () Bool)

(assert (=> b!7337777 (=> (not res!2964739) (not e!4393900))))

(declare-fun size!41990 (List!71588) Int)

(assert (=> b!7337777 (= res!2964739 (= (size!41990 lt!2609486) (+ (size!41990 (exprs!8532 ct1!282)) (size!41990 (exprs!8532 ct2!378)))))))

(declare-fun d!2278293 () Bool)

(assert (=> d!2278293 e!4393900))

(declare-fun res!2964738 () Bool)

(assert (=> d!2278293 (=> (not res!2964738) (not e!4393900))))

(declare-fun content!15011 (List!71588) (Set Regex!19092))

(assert (=> d!2278293 (= res!2964738 (= (content!15011 lt!2609486) (set.union (content!15011 (exprs!8532 ct1!282)) (content!15011 (exprs!8532 ct2!378)))))))

(assert (=> d!2278293 (= lt!2609486 e!4393899)))

(declare-fun c!1362877 () Bool)

(assert (=> d!2278293 (= c!1362877 (is-Nil!71464 (exprs!8532 ct1!282)))))

(assert (=> d!2278293 (= (++!16910 (exprs!8532 ct1!282) (exprs!8532 ct2!378)) lt!2609486)))

(declare-fun b!7337776 () Bool)

(assert (=> b!7337776 (= e!4393899 (Cons!71464 (h!77912 (exprs!8532 ct1!282)) (++!16910 (t!385983 (exprs!8532 ct1!282)) (exprs!8532 ct2!378))))))

(assert (= (and d!2278293 c!1362877) b!7337775))

(assert (= (and d!2278293 (not c!1362877)) b!7337776))

(assert (= (and d!2278293 res!2964738) b!7337777))

(assert (= (and b!7337777 res!2964739) b!7337778))

(declare-fun m!8002754 () Bool)

(assert (=> b!7337777 m!8002754))

(declare-fun m!8002756 () Bool)

(assert (=> b!7337777 m!8002756))

(declare-fun m!8002758 () Bool)

(assert (=> b!7337777 m!8002758))

(declare-fun m!8002760 () Bool)

(assert (=> d!2278293 m!8002760))

(declare-fun m!8002762 () Bool)

(assert (=> d!2278293 m!8002762))

(declare-fun m!8002764 () Bool)

(assert (=> d!2278293 m!8002764))

(declare-fun m!8002766 () Bool)

(assert (=> b!7337776 m!8002766))

(assert (=> b!7337670 d!2278293))

(declare-fun d!2278295 () Bool)

(assert (=> d!2278295 (forall!17926 (++!16910 (exprs!8532 ct1!282) (exprs!8532 ct2!378)) lambda!455324)))

(declare-fun lt!2609489 () Unit!165137)

(declare-fun choose!57073 (List!71588 List!71588 Int) Unit!165137)

(assert (=> d!2278295 (= lt!2609489 (choose!57073 (exprs!8532 ct1!282) (exprs!8532 ct2!378) lambda!455324))))

(assert (=> d!2278295 (forall!17926 (exprs!8532 ct1!282) lambda!455324)))

(assert (=> d!2278295 (= (lemmaConcatPreservesForall!1767 (exprs!8532 ct1!282) (exprs!8532 ct2!378) lambda!455324) lt!2609489)))

(declare-fun bs!1918154 () Bool)

(assert (= bs!1918154 d!2278295))

(assert (=> bs!1918154 m!8002688))

(assert (=> bs!1918154 m!8002688))

(declare-fun m!8002768 () Bool)

(assert (=> bs!1918154 m!8002768))

(declare-fun m!8002770 () Bool)

(assert (=> bs!1918154 m!8002770))

(declare-fun m!8002772 () Bool)

(assert (=> bs!1918154 m!8002772))

(assert (=> b!7337670 d!2278295))

(declare-fun d!2278297 () Bool)

(declare-fun res!2964744 () Bool)

(declare-fun e!4393905 () Bool)

(assert (=> d!2278297 (=> res!2964744 e!4393905)))

(assert (=> d!2278297 (= res!2964744 (is-Nil!71464 (exprs!8532 cWitness!61)))))

(assert (=> d!2278297 (= (forall!17926 (exprs!8532 cWitness!61) lambda!455324) e!4393905)))

(declare-fun b!7337783 () Bool)

(declare-fun e!4393906 () Bool)

(assert (=> b!7337783 (= e!4393905 e!4393906)))

(declare-fun res!2964745 () Bool)

(assert (=> b!7337783 (=> (not res!2964745) (not e!4393906))))

(declare-fun dynLambda!29440 (Int Regex!19092) Bool)

(assert (=> b!7337783 (= res!2964745 (dynLambda!29440 lambda!455324 (h!77912 (exprs!8532 cWitness!61))))))

(declare-fun b!7337784 () Bool)

(assert (=> b!7337784 (= e!4393906 (forall!17926 (t!385983 (exprs!8532 cWitness!61)) lambda!455324))))

(assert (= (and d!2278297 (not res!2964744)) b!7337783))

(assert (= (and b!7337783 res!2964745) b!7337784))

(declare-fun b_lambda!283787 () Bool)

(assert (=> (not b_lambda!283787) (not b!7337783)))

(declare-fun m!8002774 () Bool)

(assert (=> b!7337783 m!8002774))

(declare-fun m!8002776 () Bool)

(assert (=> b!7337784 m!8002776))

(assert (=> b!7337664 d!2278297))

(declare-fun b!7337788 () Bool)

(declare-fun lt!2609490 () List!71588)

(declare-fun e!4393908 () Bool)

(assert (=> b!7337788 (= e!4393908 (or (not (= (exprs!8532 ct2!378) Nil!71464)) (= lt!2609490 (exprs!8532 cWitness!61))))))

(declare-fun b!7337785 () Bool)

(declare-fun e!4393907 () List!71588)

(assert (=> b!7337785 (= e!4393907 (exprs!8532 ct2!378))))

(declare-fun b!7337787 () Bool)

(declare-fun res!2964747 () Bool)

(assert (=> b!7337787 (=> (not res!2964747) (not e!4393908))))

(assert (=> b!7337787 (= res!2964747 (= (size!41990 lt!2609490) (+ (size!41990 (exprs!8532 cWitness!61)) (size!41990 (exprs!8532 ct2!378)))))))

(declare-fun d!2278299 () Bool)

(assert (=> d!2278299 e!4393908))

(declare-fun res!2964746 () Bool)

(assert (=> d!2278299 (=> (not res!2964746) (not e!4393908))))

(assert (=> d!2278299 (= res!2964746 (= (content!15011 lt!2609490) (set.union (content!15011 (exprs!8532 cWitness!61)) (content!15011 (exprs!8532 ct2!378)))))))

(assert (=> d!2278299 (= lt!2609490 e!4393907)))

(declare-fun c!1362878 () Bool)

(assert (=> d!2278299 (= c!1362878 (is-Nil!71464 (exprs!8532 cWitness!61)))))

(assert (=> d!2278299 (= (++!16910 (exprs!8532 cWitness!61) (exprs!8532 ct2!378)) lt!2609490)))

(declare-fun b!7337786 () Bool)

(assert (=> b!7337786 (= e!4393907 (Cons!71464 (h!77912 (exprs!8532 cWitness!61)) (++!16910 (t!385983 (exprs!8532 cWitness!61)) (exprs!8532 ct2!378))))))

(assert (= (and d!2278299 c!1362878) b!7337785))

(assert (= (and d!2278299 (not c!1362878)) b!7337786))

(assert (= (and d!2278299 res!2964746) b!7337787))

(assert (= (and b!7337787 res!2964747) b!7337788))

(declare-fun m!8002778 () Bool)

(assert (=> b!7337787 m!8002778))

(declare-fun m!8002780 () Bool)

(assert (=> b!7337787 m!8002780))

(assert (=> b!7337787 m!8002758))

(declare-fun m!8002782 () Bool)

(assert (=> d!2278299 m!8002782))

(declare-fun m!8002784 () Bool)

(assert (=> d!2278299 m!8002784))

(assert (=> d!2278299 m!8002764))

(declare-fun m!8002786 () Bool)

(assert (=> b!7337786 m!8002786))

(assert (=> b!7337671 d!2278299))

(declare-fun d!2278301 () Bool)

(assert (=> d!2278301 (forall!17926 (++!16910 (exprs!8532 cWitness!61) (exprs!8532 ct2!378)) lambda!455324)))

(declare-fun lt!2609491 () Unit!165137)

(assert (=> d!2278301 (= lt!2609491 (choose!57073 (exprs!8532 cWitness!61) (exprs!8532 ct2!378) lambda!455324))))

(assert (=> d!2278301 (forall!17926 (exprs!8532 cWitness!61) lambda!455324)))

(assert (=> d!2278301 (= (lemmaConcatPreservesForall!1767 (exprs!8532 cWitness!61) (exprs!8532 ct2!378) lambda!455324) lt!2609491)))

(declare-fun bs!1918155 () Bool)

(assert (= bs!1918155 d!2278301))

(assert (=> bs!1918155 m!8002690))

(assert (=> bs!1918155 m!8002690))

(declare-fun m!8002788 () Bool)

(assert (=> bs!1918155 m!8002788))

(declare-fun m!8002790 () Bool)

(assert (=> bs!1918155 m!8002790))

(assert (=> bs!1918155 m!8002700))

(assert (=> b!7337671 d!2278301))

(assert (=> b!7337665 d!2278295))

(declare-fun b!7337807 () Bool)

(declare-fun e!4393926 () Bool)

(declare-fun e!4393925 () Bool)

(assert (=> b!7337807 (= e!4393926 e!4393925)))

(declare-fun res!2964762 () Bool)

(assert (=> b!7337807 (= res!2964762 (not (nullable!8189 (reg!19421 r1!2370))))))

(assert (=> b!7337807 (=> (not res!2964762) (not e!4393925))))

(declare-fun b!7337808 () Bool)

(declare-fun e!4393927 () Bool)

(assert (=> b!7337808 (= e!4393927 e!4393926)))

(declare-fun c!1362883 () Bool)

(assert (=> b!7337808 (= c!1362883 (is-Star!19092 r1!2370))))

(declare-fun bm!669325 () Bool)

(declare-fun call!669332 () Bool)

(declare-fun c!1362884 () Bool)

(assert (=> bm!669325 (= call!669332 (validRegex!9688 (ite c!1362884 (regTwo!38697 r1!2370) (regOne!38696 r1!2370))))))

(declare-fun d!2278303 () Bool)

(declare-fun res!2964759 () Bool)

(assert (=> d!2278303 (=> res!2964759 e!4393927)))

(assert (=> d!2278303 (= res!2964759 (is-ElementMatch!19092 r1!2370))))

(assert (=> d!2278303 (= (validRegex!9688 r1!2370) e!4393927)))

(declare-fun b!7337809 () Bool)

(declare-fun res!2964758 () Bool)

(declare-fun e!4393923 () Bool)

(assert (=> b!7337809 (=> res!2964758 e!4393923)))

(assert (=> b!7337809 (= res!2964758 (not (is-Concat!27937 r1!2370)))))

(declare-fun e!4393928 () Bool)

(assert (=> b!7337809 (= e!4393928 e!4393923)))

(declare-fun b!7337810 () Bool)

(declare-fun e!4393929 () Bool)

(assert (=> b!7337810 (= e!4393929 call!669332)))

(declare-fun b!7337811 () Bool)

(declare-fun res!2964761 () Bool)

(assert (=> b!7337811 (=> (not res!2964761) (not e!4393929))))

(declare-fun call!669331 () Bool)

(assert (=> b!7337811 (= res!2964761 call!669331)))

(assert (=> b!7337811 (= e!4393928 e!4393929)))

(declare-fun b!7337812 () Bool)

(assert (=> b!7337812 (= e!4393926 e!4393928)))

(assert (=> b!7337812 (= c!1362884 (is-Union!19092 r1!2370))))

(declare-fun bm!669326 () Bool)

(declare-fun call!669330 () Bool)

(assert (=> bm!669326 (= call!669331 call!669330)))

(declare-fun b!7337813 () Bool)

(assert (=> b!7337813 (= e!4393925 call!669330)))

(declare-fun b!7337814 () Bool)

(declare-fun e!4393924 () Bool)

(assert (=> b!7337814 (= e!4393923 e!4393924)))

(declare-fun res!2964760 () Bool)

(assert (=> b!7337814 (=> (not res!2964760) (not e!4393924))))

(assert (=> b!7337814 (= res!2964760 call!669332)))

(declare-fun bm!669327 () Bool)

(assert (=> bm!669327 (= call!669330 (validRegex!9688 (ite c!1362883 (reg!19421 r1!2370) (ite c!1362884 (regOne!38697 r1!2370) (regTwo!38696 r1!2370)))))))

(declare-fun b!7337815 () Bool)

(assert (=> b!7337815 (= e!4393924 call!669331)))

(assert (= (and d!2278303 (not res!2964759)) b!7337808))

(assert (= (and b!7337808 c!1362883) b!7337807))

(assert (= (and b!7337808 (not c!1362883)) b!7337812))

(assert (= (and b!7337807 res!2964762) b!7337813))

(assert (= (and b!7337812 c!1362884) b!7337811))

(assert (= (and b!7337812 (not c!1362884)) b!7337809))

(assert (= (and b!7337811 res!2964761) b!7337810))

(assert (= (and b!7337809 (not res!2964758)) b!7337814))

(assert (= (and b!7337814 res!2964760) b!7337815))

(assert (= (or b!7337811 b!7337815) bm!669326))

(assert (= (or b!7337810 b!7337814) bm!669325))

(assert (= (or b!7337813 bm!669326) bm!669327))

(declare-fun m!8002792 () Bool)

(assert (=> b!7337807 m!8002792))

(declare-fun m!8002794 () Bool)

(assert (=> bm!669325 m!8002794))

(declare-fun m!8002796 () Bool)

(assert (=> bm!669327 m!8002796))

(assert (=> start!716742 d!2278303))

(declare-fun bs!1918156 () Bool)

(declare-fun d!2278305 () Bool)

(assert (= bs!1918156 (and d!2278305 b!7337670)))

(declare-fun lambda!455336 () Int)

(assert (=> bs!1918156 (= lambda!455336 lambda!455324)))

(assert (=> d!2278305 (= (inv!91071 cWitness!61) (forall!17926 (exprs!8532 cWitness!61) lambda!455336))))

(declare-fun bs!1918157 () Bool)

(assert (= bs!1918157 d!2278305))

(declare-fun m!8002798 () Bool)

(assert (=> bs!1918157 m!8002798))

(assert (=> start!716742 d!2278305))

(declare-fun bs!1918158 () Bool)

(declare-fun d!2278307 () Bool)

(assert (= bs!1918158 (and d!2278307 b!7337670)))

(declare-fun lambda!455337 () Int)

(assert (=> bs!1918158 (= lambda!455337 lambda!455324)))

(declare-fun bs!1918159 () Bool)

(assert (= bs!1918159 (and d!2278307 d!2278305)))

(assert (=> bs!1918159 (= lambda!455337 lambda!455336)))

(assert (=> d!2278307 (= (inv!91071 ct1!282) (forall!17926 (exprs!8532 ct1!282) lambda!455337))))

(declare-fun bs!1918160 () Bool)

(assert (= bs!1918160 d!2278307))

(declare-fun m!8002800 () Bool)

(assert (=> bs!1918160 m!8002800))

(assert (=> start!716742 d!2278307))

(declare-fun bs!1918161 () Bool)

(declare-fun d!2278309 () Bool)

(assert (= bs!1918161 (and d!2278309 b!7337670)))

(declare-fun lambda!455338 () Int)

(assert (=> bs!1918161 (= lambda!455338 lambda!455324)))

(declare-fun bs!1918162 () Bool)

(assert (= bs!1918162 (and d!2278309 d!2278305)))

(assert (=> bs!1918162 (= lambda!455338 lambda!455336)))

(declare-fun bs!1918163 () Bool)

(assert (= bs!1918163 (and d!2278309 d!2278307)))

(assert (=> bs!1918163 (= lambda!455338 lambda!455337)))

(assert (=> d!2278309 (= (inv!91071 ct2!378) (forall!17926 (exprs!8532 ct2!378) lambda!455338))))

(declare-fun bs!1918164 () Bool)

(assert (= bs!1918164 d!2278309))

(declare-fun m!8002802 () Bool)

(assert (=> bs!1918164 m!8002802))

(assert (=> start!716742 d!2278309))

(declare-fun b!7337827 () Bool)

(declare-fun e!4393940 () (Set Context!16064))

(declare-fun e!4393938 () (Set Context!16064))

(assert (=> b!7337827 (= e!4393940 e!4393938)))

(declare-fun c!1362894 () Bool)

(assert (=> b!7337827 (= c!1362894 (is-Concat!27937 r1!2370))))

(declare-fun b!7337828 () Bool)

(declare-fun e!4393936 () (Set Context!16064))

(declare-fun call!669344 () (Set Context!16064))

(declare-fun call!669339 () (Set Context!16064))

(assert (=> b!7337828 (= e!4393936 (set.union call!669344 call!669339))))

(declare-fun bm!669334 () Bool)

(declare-fun call!669341 () List!71588)

(declare-fun c!1362891 () Bool)

(assert (=> bm!669334 (= call!669341 ($colon$colon!3096 (exprs!8532 ct1!282) (ite (or c!1362891 c!1362894) (regTwo!38696 r1!2370) r1!2370)))))

(declare-fun b!7337829 () Bool)

(declare-fun e!4393941 () (Set Context!16064))

(declare-fun call!669343 () (Set Context!16064))

(assert (=> b!7337829 (= e!4393941 call!669343)))

(declare-fun bm!669335 () Bool)

(declare-fun call!669340 () (Set Context!16064))

(assert (=> bm!669335 (= call!669343 call!669340)))

(declare-fun b!7337830 () Bool)

(declare-fun e!4393939 () Bool)

(assert (=> b!7337830 (= e!4393939 (nullable!8189 (regOne!38696 r1!2370)))))

(declare-fun call!669342 () List!71588)

(declare-fun c!1362892 () Bool)

(declare-fun bm!669336 () Bool)

(assert (=> bm!669336 (= call!669339 (derivationStepZipperDown!2918 (ite c!1362892 (regTwo!38697 r1!2370) (ite c!1362891 (regTwo!38696 r1!2370) (ite c!1362894 (regOne!38696 r1!2370) (reg!19421 r1!2370)))) (ite (or c!1362892 c!1362891) ct1!282 (Context!16065 call!669342)) c!10362))))

(declare-fun b!7337831 () Bool)

(declare-fun e!4393937 () (Set Context!16064))

(assert (=> b!7337831 (= e!4393937 (set.insert ct1!282 (as set.empty (Set Context!16064))))))

(declare-fun d!2278311 () Bool)

(declare-fun c!1362893 () Bool)

(assert (=> d!2278311 (= c!1362893 (and (is-ElementMatch!19092 r1!2370) (= (c!1362848 r1!2370) c!10362)))))

(assert (=> d!2278311 (= (derivationStepZipperDown!2918 r1!2370 ct1!282 c!10362) e!4393937)))

(declare-fun bm!669337 () Bool)

(assert (=> bm!669337 (= call!669342 call!669341)))

(declare-fun b!7337832 () Bool)

(assert (=> b!7337832 (= c!1362891 e!4393939)))

(declare-fun res!2964764 () Bool)

(assert (=> b!7337832 (=> (not res!2964764) (not e!4393939))))

(assert (=> b!7337832 (= res!2964764 (is-Concat!27937 r1!2370))))

(assert (=> b!7337832 (= e!4393936 e!4393940)))

(declare-fun bm!669338 () Bool)

(assert (=> bm!669338 (= call!669340 call!669339)))

(declare-fun b!7337833 () Bool)

(declare-fun c!1362890 () Bool)

(assert (=> b!7337833 (= c!1362890 (is-Star!19092 r1!2370))))

(assert (=> b!7337833 (= e!4393938 e!4393941)))

(declare-fun b!7337834 () Bool)

(assert (=> b!7337834 (= e!4393940 (set.union call!669344 call!669340))))

(declare-fun bm!669339 () Bool)

(assert (=> bm!669339 (= call!669344 (derivationStepZipperDown!2918 (ite c!1362892 (regOne!38697 r1!2370) (regOne!38696 r1!2370)) (ite c!1362892 ct1!282 (Context!16065 call!669341)) c!10362))))

(declare-fun b!7337835 () Bool)

(assert (=> b!7337835 (= e!4393938 call!669343)))

(declare-fun b!7337836 () Bool)

(assert (=> b!7337836 (= e!4393937 e!4393936)))

(assert (=> b!7337836 (= c!1362892 (is-Union!19092 r1!2370))))

(declare-fun b!7337837 () Bool)

(assert (=> b!7337837 (= e!4393941 (as set.empty (Set Context!16064)))))

(assert (= (and d!2278311 c!1362893) b!7337831))

(assert (= (and d!2278311 (not c!1362893)) b!7337836))

(assert (= (and b!7337836 c!1362892) b!7337828))

(assert (= (and b!7337836 (not c!1362892)) b!7337832))

(assert (= (and b!7337832 res!2964764) b!7337830))

(assert (= (and b!7337832 c!1362891) b!7337834))

(assert (= (and b!7337832 (not c!1362891)) b!7337827))

(assert (= (and b!7337827 c!1362894) b!7337835))

(assert (= (and b!7337827 (not c!1362894)) b!7337833))

(assert (= (and b!7337833 c!1362890) b!7337829))

(assert (= (and b!7337833 (not c!1362890)) b!7337837))

(assert (= (or b!7337835 b!7337829) bm!669337))

(assert (= (or b!7337835 b!7337829) bm!669335))

(assert (= (or b!7337834 bm!669335) bm!669338))

(assert (= (or b!7337834 bm!669337) bm!669334))

(assert (= (or b!7337828 bm!669338) bm!669336))

(assert (= (or b!7337828 b!7337834) bm!669339))

(assert (=> b!7337831 m!8002712))

(assert (=> b!7337830 m!8002746))

(declare-fun m!8002806 () Bool)

(assert (=> bm!669334 m!8002806))

(declare-fun m!8002808 () Bool)

(assert (=> bm!669339 m!8002808))

(declare-fun m!8002812 () Bool)

(assert (=> bm!669336 m!8002812))

(assert (=> b!7337672 d!2278311))

(declare-fun b!7337842 () Bool)

(declare-fun e!4393944 () Bool)

(declare-fun tp!2083234 () Bool)

(declare-fun tp!2083235 () Bool)

(assert (=> b!7337842 (= e!4393944 (and tp!2083234 tp!2083235))))

(assert (=> b!7337663 (= tp!2083202 e!4393944)))

(assert (= (and b!7337663 (is-Cons!71464 (exprs!8532 cWitness!61))) b!7337842))

(declare-fun b!7337843 () Bool)

(declare-fun e!4393945 () Bool)

(declare-fun tp!2083236 () Bool)

(declare-fun tp!2083237 () Bool)

(assert (=> b!7337843 (= e!4393945 (and tp!2083236 tp!2083237))))

(assert (=> b!7337666 (= tp!2083200 e!4393945)))

(assert (= (and b!7337666 (is-Cons!71464 (exprs!8532 ct2!378))) b!7337843))

(declare-fun b!7337855 () Bool)

(declare-fun e!4393948 () Bool)

(declare-fun tp!2083249 () Bool)

(declare-fun tp!2083248 () Bool)

(assert (=> b!7337855 (= e!4393948 (and tp!2083249 tp!2083248))))

(declare-fun b!7337856 () Bool)

(declare-fun tp!2083250 () Bool)

(assert (=> b!7337856 (= e!4393948 tp!2083250)))

(assert (=> b!7337660 (= tp!2083198 e!4393948)))

(declare-fun b!7337854 () Bool)

(assert (=> b!7337854 (= e!4393948 tp_is_empty!48429)))

(declare-fun b!7337857 () Bool)

(declare-fun tp!2083251 () Bool)

(declare-fun tp!2083252 () Bool)

(assert (=> b!7337857 (= e!4393948 (and tp!2083251 tp!2083252))))

(assert (= (and b!7337660 (is-ElementMatch!19092 (regOne!38697 r1!2370))) b!7337854))

(assert (= (and b!7337660 (is-Concat!27937 (regOne!38697 r1!2370))) b!7337855))

(assert (= (and b!7337660 (is-Star!19092 (regOne!38697 r1!2370))) b!7337856))

(assert (= (and b!7337660 (is-Union!19092 (regOne!38697 r1!2370))) b!7337857))

(declare-fun b!7337859 () Bool)

(declare-fun e!4393949 () Bool)

(declare-fun tp!2083254 () Bool)

(declare-fun tp!2083253 () Bool)

(assert (=> b!7337859 (= e!4393949 (and tp!2083254 tp!2083253))))

(declare-fun b!7337860 () Bool)

(declare-fun tp!2083255 () Bool)

(assert (=> b!7337860 (= e!4393949 tp!2083255)))

(assert (=> b!7337660 (= tp!2083204 e!4393949)))

(declare-fun b!7337858 () Bool)

(assert (=> b!7337858 (= e!4393949 tp_is_empty!48429)))

(declare-fun b!7337861 () Bool)

(declare-fun tp!2083256 () Bool)

(declare-fun tp!2083257 () Bool)

(assert (=> b!7337861 (= e!4393949 (and tp!2083256 tp!2083257))))

(assert (= (and b!7337660 (is-ElementMatch!19092 (regTwo!38697 r1!2370))) b!7337858))

(assert (= (and b!7337660 (is-Concat!27937 (regTwo!38697 r1!2370))) b!7337859))

(assert (= (and b!7337660 (is-Star!19092 (regTwo!38697 r1!2370))) b!7337860))

(assert (= (and b!7337660 (is-Union!19092 (regTwo!38697 r1!2370))) b!7337861))

(declare-fun b!7337863 () Bool)

(declare-fun e!4393950 () Bool)

(declare-fun tp!2083259 () Bool)

(declare-fun tp!2083258 () Bool)

(assert (=> b!7337863 (= e!4393950 (and tp!2083259 tp!2083258))))

(declare-fun b!7337864 () Bool)

(declare-fun tp!2083260 () Bool)

(assert (=> b!7337864 (= e!4393950 tp!2083260)))

(assert (=> b!7337662 (= tp!2083199 e!4393950)))

(declare-fun b!7337862 () Bool)

(assert (=> b!7337862 (= e!4393950 tp_is_empty!48429)))

(declare-fun b!7337865 () Bool)

(declare-fun tp!2083261 () Bool)

(declare-fun tp!2083262 () Bool)

(assert (=> b!7337865 (= e!4393950 (and tp!2083261 tp!2083262))))

(assert (= (and b!7337662 (is-ElementMatch!19092 (reg!19421 r1!2370))) b!7337862))

(assert (= (and b!7337662 (is-Concat!27937 (reg!19421 r1!2370))) b!7337863))

(assert (= (and b!7337662 (is-Star!19092 (reg!19421 r1!2370))) b!7337864))

(assert (= (and b!7337662 (is-Union!19092 (reg!19421 r1!2370))) b!7337865))

(declare-fun b!7337867 () Bool)

(declare-fun e!4393951 () Bool)

(declare-fun tp!2083264 () Bool)

(declare-fun tp!2083263 () Bool)

(assert (=> b!7337867 (= e!4393951 (and tp!2083264 tp!2083263))))

(declare-fun b!7337868 () Bool)

(declare-fun tp!2083265 () Bool)

(assert (=> b!7337868 (= e!4393951 tp!2083265)))

(assert (=> b!7337667 (= tp!2083205 e!4393951)))

(declare-fun b!7337866 () Bool)

(assert (=> b!7337866 (= e!4393951 tp_is_empty!48429)))

(declare-fun b!7337869 () Bool)

(declare-fun tp!2083266 () Bool)

(declare-fun tp!2083267 () Bool)

(assert (=> b!7337869 (= e!4393951 (and tp!2083266 tp!2083267))))

(assert (= (and b!7337667 (is-ElementMatch!19092 (regOne!38696 r1!2370))) b!7337866))

(assert (= (and b!7337667 (is-Concat!27937 (regOne!38696 r1!2370))) b!7337867))

(assert (= (and b!7337667 (is-Star!19092 (regOne!38696 r1!2370))) b!7337868))

(assert (= (and b!7337667 (is-Union!19092 (regOne!38696 r1!2370))) b!7337869))

(declare-fun b!7337871 () Bool)

(declare-fun e!4393952 () Bool)

(declare-fun tp!2083269 () Bool)

(declare-fun tp!2083268 () Bool)

(assert (=> b!7337871 (= e!4393952 (and tp!2083269 tp!2083268))))

(declare-fun b!7337872 () Bool)

(declare-fun tp!2083270 () Bool)

(assert (=> b!7337872 (= e!4393952 tp!2083270)))

(assert (=> b!7337667 (= tp!2083201 e!4393952)))

(declare-fun b!7337870 () Bool)

(assert (=> b!7337870 (= e!4393952 tp_is_empty!48429)))

(declare-fun b!7337873 () Bool)

(declare-fun tp!2083271 () Bool)

(declare-fun tp!2083272 () Bool)

(assert (=> b!7337873 (= e!4393952 (and tp!2083271 tp!2083272))))

(assert (= (and b!7337667 (is-ElementMatch!19092 (regTwo!38696 r1!2370))) b!7337870))

(assert (= (and b!7337667 (is-Concat!27937 (regTwo!38696 r1!2370))) b!7337871))

(assert (= (and b!7337667 (is-Star!19092 (regTwo!38696 r1!2370))) b!7337872))

(assert (= (and b!7337667 (is-Union!19092 (regTwo!38696 r1!2370))) b!7337873))

(declare-fun b!7337874 () Bool)

(declare-fun e!4393953 () Bool)

(declare-fun tp!2083273 () Bool)

(declare-fun tp!2083274 () Bool)

(assert (=> b!7337874 (= e!4393953 (and tp!2083273 tp!2083274))))

(assert (=> b!7337661 (= tp!2083203 e!4393953)))

(assert (= (and b!7337661 (is-Cons!71464 (exprs!8532 ct1!282))) b!7337874))

(declare-fun b_lambda!283789 () Bool)

(assert (= b_lambda!283787 (or b!7337670 b_lambda!283789)))

(declare-fun bs!1918165 () Bool)

(declare-fun d!2278315 () Bool)

(assert (= bs!1918165 (and d!2278315 b!7337670)))

(assert (=> bs!1918165 (= (dynLambda!29440 lambda!455324 (h!77912 (exprs!8532 cWitness!61))) (validRegex!9688 (h!77912 (exprs!8532 cWitness!61))))))

(declare-fun m!8002818 () Bool)

(assert (=> bs!1918165 m!8002818))

(assert (=> b!7337783 d!2278315))

(push 1)

(assert (not b!7337861))

(assert (not bm!669325))

(assert (not bm!669301))

(assert (not d!2278307))

(assert (not d!2278295))

(assert (not d!2278309))

(assert (not bm!669336))

(assert (not b!7337787))

(assert (not b!7337855))

(assert (not b!7337863))

(assert (not b!7337776))

(assert (not b!7337856))

(assert (not b!7337857))

(assert (not bs!1918165))

(assert (not b!7337830))

(assert (not b!7337777))

(assert (not b!7337872))

(assert (not b!7337874))

(assert (not b!7337865))

(assert (not bm!669303))

(assert (not b!7337807))

(assert (not b_lambda!283789))

(assert (not d!2278301))

(assert (not b!7337871))

(assert (not b!7337784))

(assert (not bm!669327))

(assert (not b!7337869))

(assert (not bm!669306))

(assert (not bm!669339))

(assert (not b!7337859))

(assert (not d!2278299))

(assert tp_is_empty!48429)

(assert (not d!2278305))

(assert (not b!7337860))

(assert (not b!7337842))

(assert (not d!2278293))

(assert (not bm!669334))

(assert (not b!7337867))

(assert (not b!7337868))

(assert (not b!7337737))

(assert (not b!7337786))

(assert (not b!7337873))

(assert (not b!7337864))

(assert (not b!7337843))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

