; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!714930 () Bool)

(assert start!714930)

(declare-fun res!2960745 () Bool)

(declare-fun e!4385992 () Bool)

(assert (=> start!714930 (=> (not res!2960745) (not e!4385992))))

(declare-datatypes ((C!38250 0))(
  ( (C!38251 (val!29485 Int)) )
))
(declare-datatypes ((Regex!18988 0))(
  ( (ElementMatch!18988 (c!1359541 C!38250)) (Concat!27833 (regOne!38488 Regex!18988) (regTwo!38488 Regex!18988)) (EmptyExpr!18988) (Star!18988 (reg!19317 Regex!18988)) (EmptyLang!18988) (Union!18988 (regOne!38489 Regex!18988) (regTwo!38489 Regex!18988)) )
))
(declare-datatypes ((List!71484 0))(
  ( (Nil!71360) (Cons!71360 (h!77808 Regex!18988) (t!385869 List!71484)) )
))
(declare-datatypes ((Context!15856 0))(
  ( (Context!15857 (exprs!8428 List!71484)) )
))
(declare-fun cWitness!35 () Context!15856)

(declare-fun lt!2605745 () (Set Context!15856))

(assert (=> start!714930 (= res!2960745 (set.member cWitness!35 lt!2605745))))

(declare-fun ct1!256 () Context!15856)

(declare-fun c!10305 () C!38250)

(declare-fun derivationStepZipperUp!2668 (Context!15856 C!38250) (Set Context!15856))

(assert (=> start!714930 (= lt!2605745 (derivationStepZipperUp!2668 ct1!256 c!10305))))

(assert (=> start!714930 e!4385992))

(declare-fun tp_is_empty!48221 () Bool)

(assert (=> start!714930 tp_is_empty!48221))

(declare-fun e!4385987 () Bool)

(declare-fun inv!90811 (Context!15856) Bool)

(assert (=> start!714930 (and (inv!90811 cWitness!35) e!4385987)))

(declare-fun e!4385986 () Bool)

(assert (=> start!714930 (and (inv!90811 ct1!256) e!4385986)))

(declare-fun ct2!352 () Context!15856)

(declare-fun e!4385991 () Bool)

(assert (=> start!714930 (and (inv!90811 ct2!352) e!4385991)))

(declare-fun b!7325002 () Bool)

(declare-fun e!4385990 () Bool)

(declare-fun e!4385988 () Bool)

(assert (=> b!7325002 (= e!4385990 e!4385988)))

(declare-fun res!2960744 () Bool)

(assert (=> b!7325002 (=> (not res!2960744) (not e!4385988))))

(declare-fun nullable!8092 (Regex!18988) Bool)

(assert (=> b!7325002 (= res!2960744 (nullable!8092 (h!77808 (exprs!8428 ct1!256))))))

(declare-fun lt!2605738 () Context!15856)

(declare-fun lt!2605747 () (Set Context!15856))

(declare-fun derivationStepZipperDown!2819 (Regex!18988 Context!15856 C!38250) (Set Context!15856))

(assert (=> b!7325002 (= lt!2605747 (derivationStepZipperDown!2819 (h!77808 (exprs!8428 ct1!256)) lt!2605738 c!10305))))

(declare-fun lt!2605739 () List!71484)

(assert (=> b!7325002 (= lt!2605738 (Context!15857 lt!2605739))))

(declare-fun tail!14677 (List!71484) List!71484)

(assert (=> b!7325002 (= lt!2605739 (tail!14677 (exprs!8428 ct1!256)))))

(declare-fun b!7325003 () Bool)

(declare-fun e!4385989 () Bool)

(declare-fun lambda!453915 () Int)

(declare-fun forall!17840 (List!71484 Int) Bool)

(assert (=> b!7325003 (= e!4385989 (not (forall!17840 (exprs!8428 cWitness!35) lambda!453915)))))

(declare-fun ++!16812 (List!71484 List!71484) List!71484)

(assert (=> b!7325003 (set.member (Context!15857 (++!16812 (exprs!8428 cWitness!35) (exprs!8428 ct2!352))) (derivationStepZipperDown!2819 (h!77808 (exprs!8428 ct1!256)) (Context!15857 (++!16812 lt!2605739 (exprs!8428 ct2!352))) c!10305))))

(declare-datatypes ((Unit!164941 0))(
  ( (Unit!164942) )
))
(declare-fun lt!2605737 () Unit!164941)

(declare-fun lemmaConcatPreservesForall!1669 (List!71484 List!71484 Int) Unit!164941)

(assert (=> b!7325003 (= lt!2605737 (lemmaConcatPreservesForall!1669 lt!2605739 (exprs!8428 ct2!352) lambda!453915))))

(declare-fun lt!2605740 () Unit!164941)

(assert (=> b!7325003 (= lt!2605740 (lemmaConcatPreservesForall!1669 (exprs!8428 cWitness!35) (exprs!8428 ct2!352) lambda!453915))))

(declare-fun lt!2605744 () Unit!164941)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!1 (Regex!18988 Context!15856 Context!15856 Context!15856 C!38250) Unit!164941)

(assert (=> b!7325003 (= lt!2605744 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!1 (h!77808 (exprs!8428 ct1!256)) lt!2605738 ct2!352 cWitness!35 c!10305))))

(declare-fun lt!2605742 () (Set Context!15856))

(declare-fun lt!2605741 () List!71484)

(assert (=> b!7325003 (= lt!2605742 (derivationStepZipperDown!2819 (h!77808 (exprs!8428 ct1!256)) (Context!15857 (tail!14677 lt!2605741)) c!10305))))

(declare-fun b!7325004 () Bool)

(assert (=> b!7325004 (= e!4385988 e!4385989)))

(declare-fun res!2960746 () Bool)

(assert (=> b!7325004 (=> (not res!2960746) (not e!4385989))))

(declare-fun lt!2605746 () (Set Context!15856))

(assert (=> b!7325004 (= res!2960746 (and (= lt!2605745 (set.union lt!2605747 lt!2605746)) (or (set.member cWitness!35 lt!2605747) (set.member cWitness!35 lt!2605746)) (not (set.member cWitness!35 lt!2605746))))))

(assert (=> b!7325004 (= lt!2605746 (derivationStepZipperUp!2668 lt!2605738 c!10305))))

(declare-fun b!7325005 () Bool)

(declare-fun tp!2080370 () Bool)

(assert (=> b!7325005 (= e!4385986 tp!2080370)))

(declare-fun b!7325006 () Bool)

(declare-fun tp!2080372 () Bool)

(assert (=> b!7325006 (= e!4385987 tp!2080372)))

(declare-fun b!7325007 () Bool)

(declare-fun res!2960741 () Bool)

(assert (=> b!7325007 (=> (not res!2960741) (not e!4385990))))

(declare-fun isEmpty!40906 (List!71484) Bool)

(assert (=> b!7325007 (= res!2960741 (not (isEmpty!40906 (exprs!8428 ct1!256))))))

(declare-fun b!7325008 () Bool)

(declare-fun tp!2080371 () Bool)

(assert (=> b!7325008 (= e!4385991 tp!2080371)))

(declare-fun b!7325009 () Bool)

(declare-fun res!2960743 () Bool)

(assert (=> b!7325009 (=> (not res!2960743) (not e!4385989))))

(assert (=> b!7325009 (= res!2960743 (not (isEmpty!40906 lt!2605741)))))

(declare-fun b!7325010 () Bool)

(assert (=> b!7325010 (= e!4385992 e!4385990)))

(declare-fun res!2960742 () Bool)

(assert (=> b!7325010 (=> (not res!2960742) (not e!4385990))))

(assert (=> b!7325010 (= res!2960742 (is-Cons!71360 (exprs!8428 ct1!256)))))

(assert (=> b!7325010 (= lt!2605741 (++!16812 (exprs!8428 ct1!256) (exprs!8428 ct2!352)))))

(declare-fun lt!2605743 () Unit!164941)

(assert (=> b!7325010 (= lt!2605743 (lemmaConcatPreservesForall!1669 (exprs!8428 ct1!256) (exprs!8428 ct2!352) lambda!453915))))

(assert (= (and start!714930 res!2960745) b!7325010))

(assert (= (and b!7325010 res!2960742) b!7325007))

(assert (= (and b!7325007 res!2960741) b!7325002))

(assert (= (and b!7325002 res!2960744) b!7325004))

(assert (= (and b!7325004 res!2960746) b!7325009))

(assert (= (and b!7325009 res!2960743) b!7325003))

(assert (= start!714930 b!7325006))

(assert (= start!714930 b!7325005))

(assert (= start!714930 b!7325008))

(declare-fun m!7990654 () Bool)

(assert (=> b!7325004 m!7990654))

(declare-fun m!7990656 () Bool)

(assert (=> b!7325004 m!7990656))

(declare-fun m!7990658 () Bool)

(assert (=> b!7325004 m!7990658))

(declare-fun m!7990660 () Bool)

(assert (=> b!7325002 m!7990660))

(declare-fun m!7990662 () Bool)

(assert (=> b!7325002 m!7990662))

(declare-fun m!7990664 () Bool)

(assert (=> b!7325002 m!7990664))

(declare-fun m!7990666 () Bool)

(assert (=> b!7325003 m!7990666))

(declare-fun m!7990668 () Bool)

(assert (=> b!7325003 m!7990668))

(declare-fun m!7990670 () Bool)

(assert (=> b!7325003 m!7990670))

(declare-fun m!7990672 () Bool)

(assert (=> b!7325003 m!7990672))

(declare-fun m!7990674 () Bool)

(assert (=> b!7325003 m!7990674))

(declare-fun m!7990676 () Bool)

(assert (=> b!7325003 m!7990676))

(declare-fun m!7990678 () Bool)

(assert (=> b!7325003 m!7990678))

(declare-fun m!7990680 () Bool)

(assert (=> b!7325003 m!7990680))

(declare-fun m!7990682 () Bool)

(assert (=> b!7325003 m!7990682))

(declare-fun m!7990684 () Bool)

(assert (=> b!7325003 m!7990684))

(declare-fun m!7990686 () Bool)

(assert (=> b!7325009 m!7990686))

(declare-fun m!7990688 () Bool)

(assert (=> b!7325010 m!7990688))

(declare-fun m!7990690 () Bool)

(assert (=> b!7325010 m!7990690))

(declare-fun m!7990692 () Bool)

(assert (=> b!7325007 m!7990692))

(declare-fun m!7990694 () Bool)

(assert (=> start!714930 m!7990694))

(declare-fun m!7990696 () Bool)

(assert (=> start!714930 m!7990696))

(declare-fun m!7990698 () Bool)

(assert (=> start!714930 m!7990698))

(declare-fun m!7990700 () Bool)

(assert (=> start!714930 m!7990700))

(declare-fun m!7990702 () Bool)

(assert (=> start!714930 m!7990702))

(push 1)

(assert tp_is_empty!48221)

(assert (not b!7325002))

(assert (not b!7325008))

(assert (not b!7325003))

(assert (not b!7325009))

(assert (not start!714930))

(assert (not b!7325007))

(assert (not b!7325006))

(assert (not b!7325005))

(assert (not b!7325004))

(assert (not b!7325010))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2274705 () Bool)

(declare-fun e!4386024 () Bool)

(assert (=> d!2274705 e!4386024))

(declare-fun res!2960771 () Bool)

(assert (=> d!2274705 (=> (not res!2960771) (not e!4386024))))

(declare-fun lt!2605783 () List!71484)

(declare-fun content!14932 (List!71484) (Set Regex!18988))

(assert (=> d!2274705 (= res!2960771 (= (content!14932 lt!2605783) (set.union (content!14932 (exprs!8428 ct1!256)) (content!14932 (exprs!8428 ct2!352)))))))

(declare-fun e!4386025 () List!71484)

(assert (=> d!2274705 (= lt!2605783 e!4386025)))

(declare-fun c!1359549 () Bool)

(assert (=> d!2274705 (= c!1359549 (is-Nil!71360 (exprs!8428 ct1!256)))))

(assert (=> d!2274705 (= (++!16812 (exprs!8428 ct1!256) (exprs!8428 ct2!352)) lt!2605783)))

(declare-fun b!7325058 () Bool)

(declare-fun res!2960772 () Bool)

(assert (=> b!7325058 (=> (not res!2960772) (not e!4386024))))

(declare-fun size!41909 (List!71484) Int)

(assert (=> b!7325058 (= res!2960772 (= (size!41909 lt!2605783) (+ (size!41909 (exprs!8428 ct1!256)) (size!41909 (exprs!8428 ct2!352)))))))

(declare-fun b!7325057 () Bool)

(assert (=> b!7325057 (= e!4386025 (Cons!71360 (h!77808 (exprs!8428 ct1!256)) (++!16812 (t!385869 (exprs!8428 ct1!256)) (exprs!8428 ct2!352))))))

(declare-fun b!7325056 () Bool)

(assert (=> b!7325056 (= e!4386025 (exprs!8428 ct2!352))))

(declare-fun b!7325059 () Bool)

(assert (=> b!7325059 (= e!4386024 (or (not (= (exprs!8428 ct2!352) Nil!71360)) (= lt!2605783 (exprs!8428 ct1!256))))))

(assert (= (and d!2274705 c!1359549) b!7325056))

(assert (= (and d!2274705 (not c!1359549)) b!7325057))

(assert (= (and d!2274705 res!2960771) b!7325058))

(assert (= (and b!7325058 res!2960772) b!7325059))

(declare-fun m!7990754 () Bool)

(assert (=> d!2274705 m!7990754))

(declare-fun m!7990756 () Bool)

(assert (=> d!2274705 m!7990756))

(declare-fun m!7990758 () Bool)

(assert (=> d!2274705 m!7990758))

(declare-fun m!7990760 () Bool)

(assert (=> b!7325058 m!7990760))

(declare-fun m!7990762 () Bool)

(assert (=> b!7325058 m!7990762))

(declare-fun m!7990764 () Bool)

(assert (=> b!7325058 m!7990764))

(declare-fun m!7990766 () Bool)

(assert (=> b!7325057 m!7990766))

(assert (=> b!7325010 d!2274705))

(declare-fun d!2274707 () Bool)

(assert (=> d!2274707 (forall!17840 (++!16812 (exprs!8428 ct1!256) (exprs!8428 ct2!352)) lambda!453915)))

(declare-fun lt!2605786 () Unit!164941)

(declare-fun choose!56958 (List!71484 List!71484 Int) Unit!164941)

(assert (=> d!2274707 (= lt!2605786 (choose!56958 (exprs!8428 ct1!256) (exprs!8428 ct2!352) lambda!453915))))

(assert (=> d!2274707 (forall!17840 (exprs!8428 ct1!256) lambda!453915)))

(assert (=> d!2274707 (= (lemmaConcatPreservesForall!1669 (exprs!8428 ct1!256) (exprs!8428 ct2!352) lambda!453915) lt!2605786)))

(declare-fun bs!1916530 () Bool)

(assert (= bs!1916530 d!2274707))

(assert (=> bs!1916530 m!7990688))

(assert (=> bs!1916530 m!7990688))

(declare-fun m!7990768 () Bool)

(assert (=> bs!1916530 m!7990768))

(declare-fun m!7990770 () Bool)

(assert (=> bs!1916530 m!7990770))

(declare-fun m!7990772 () Bool)

(assert (=> bs!1916530 m!7990772))

(assert (=> b!7325010 d!2274707))

(declare-fun b!7325075 () Bool)

(declare-fun call!666461 () (Set Context!15856))

(declare-fun e!4386035 () (Set Context!15856))

(assert (=> b!7325075 (= e!4386035 (set.union call!666461 (derivationStepZipperUp!2668 (Context!15857 (t!385869 (exprs!8428 lt!2605738))) c!10305)))))

(declare-fun b!7325076 () Bool)

(declare-fun e!4386036 () (Set Context!15856))

(assert (=> b!7325076 (= e!4386036 call!666461)))

(declare-fun d!2274709 () Bool)

(declare-fun c!1359556 () Bool)

(declare-fun e!4386037 () Bool)

(assert (=> d!2274709 (= c!1359556 e!4386037)))

(declare-fun res!2960776 () Bool)

(assert (=> d!2274709 (=> (not res!2960776) (not e!4386037))))

(assert (=> d!2274709 (= res!2960776 (is-Cons!71360 (exprs!8428 lt!2605738)))))

(assert (=> d!2274709 (= (derivationStepZipperUp!2668 lt!2605738 c!10305) e!4386035)))

(declare-fun b!7325077 () Bool)

(assert (=> b!7325077 (= e!4386037 (nullable!8092 (h!77808 (exprs!8428 lt!2605738))))))

(declare-fun b!7325078 () Bool)

(assert (=> b!7325078 (= e!4386036 (as set.empty (Set Context!15856)))))

(declare-fun b!7325079 () Bool)

(assert (=> b!7325079 (= e!4386035 e!4386036)))

(declare-fun c!1359557 () Bool)

(assert (=> b!7325079 (= c!1359557 (is-Cons!71360 (exprs!8428 lt!2605738)))))

(declare-fun bm!666456 () Bool)

(assert (=> bm!666456 (= call!666461 (derivationStepZipperDown!2819 (h!77808 (exprs!8428 lt!2605738)) (Context!15857 (t!385869 (exprs!8428 lt!2605738))) c!10305))))

(assert (= (and d!2274709 res!2960776) b!7325077))

(assert (= (and d!2274709 c!1359556) b!7325075))

(assert (= (and d!2274709 (not c!1359556)) b!7325079))

(assert (= (and b!7325079 c!1359557) b!7325076))

(assert (= (and b!7325079 (not c!1359557)) b!7325078))

(assert (= (or b!7325075 b!7325076) bm!666456))

(declare-fun m!7990782 () Bool)

(assert (=> b!7325075 m!7990782))

(declare-fun m!7990784 () Bool)

(assert (=> b!7325077 m!7990784))

(declare-fun m!7990786 () Bool)

(assert (=> bm!666456 m!7990786))

(assert (=> b!7325004 d!2274709))

(declare-fun d!2274717 () Bool)

(assert (=> d!2274717 (= (isEmpty!40906 lt!2605741) (is-Nil!71360 lt!2605741))))

(assert (=> b!7325009 d!2274717))

(declare-fun d!2274719 () Bool)

(assert (=> d!2274719 (forall!17840 (++!16812 (exprs!8428 cWitness!35) (exprs!8428 ct2!352)) lambda!453915)))

(declare-fun lt!2605787 () Unit!164941)

(assert (=> d!2274719 (= lt!2605787 (choose!56958 (exprs!8428 cWitness!35) (exprs!8428 ct2!352) lambda!453915))))

(assert (=> d!2274719 (forall!17840 (exprs!8428 cWitness!35) lambda!453915)))

(assert (=> d!2274719 (= (lemmaConcatPreservesForall!1669 (exprs!8428 cWitness!35) (exprs!8428 ct2!352) lambda!453915) lt!2605787)))

(declare-fun bs!1916532 () Bool)

(assert (= bs!1916532 d!2274719))

(assert (=> bs!1916532 m!7990670))

(assert (=> bs!1916532 m!7990670))

(declare-fun m!7990788 () Bool)

(assert (=> bs!1916532 m!7990788))

(declare-fun m!7990790 () Bool)

(assert (=> bs!1916532 m!7990790))

(assert (=> bs!1916532 m!7990676))

(assert (=> b!7325003 d!2274719))

(declare-fun d!2274721 () Bool)

(declare-fun res!2960781 () Bool)

(declare-fun e!4386042 () Bool)

(assert (=> d!2274721 (=> res!2960781 e!4386042)))

(assert (=> d!2274721 (= res!2960781 (is-Nil!71360 (exprs!8428 cWitness!35)))))

(assert (=> d!2274721 (= (forall!17840 (exprs!8428 cWitness!35) lambda!453915) e!4386042)))

(declare-fun b!7325084 () Bool)

(declare-fun e!4386043 () Bool)

(assert (=> b!7325084 (= e!4386042 e!4386043)))

(declare-fun res!2960782 () Bool)

(assert (=> b!7325084 (=> (not res!2960782) (not e!4386043))))

(declare-fun dynLambda!29399 (Int Regex!18988) Bool)

(assert (=> b!7325084 (= res!2960782 (dynLambda!29399 lambda!453915 (h!77808 (exprs!8428 cWitness!35))))))

(declare-fun b!7325085 () Bool)

(assert (=> b!7325085 (= e!4386043 (forall!17840 (t!385869 (exprs!8428 cWitness!35)) lambda!453915))))

(assert (= (and d!2274721 (not res!2960781)) b!7325084))

(assert (= (and b!7325084 res!2960782) b!7325085))

(declare-fun b_lambda!283307 () Bool)

(assert (=> (not b_lambda!283307) (not b!7325084)))

(declare-fun m!7990792 () Bool)

(assert (=> b!7325084 m!7990792))

(declare-fun m!7990794 () Bool)

(assert (=> b!7325085 m!7990794))

(assert (=> b!7325003 d!2274721))

(declare-fun b!7325130 () Bool)

(declare-fun e!4386068 () (Set Context!15856))

(declare-fun e!4386070 () (Set Context!15856))

(assert (=> b!7325130 (= e!4386068 e!4386070)))

(declare-fun c!1359580 () Bool)

(assert (=> b!7325130 (= c!1359580 (is-Concat!27833 (h!77808 (exprs!8428 ct1!256))))))

(declare-fun bm!666477 () Bool)

(declare-fun call!666484 () (Set Context!15856))

(declare-fun call!666486 () List!71484)

(declare-fun c!1359582 () Bool)

(assert (=> bm!666477 (= call!666484 (derivationStepZipperDown!2819 (ite c!1359582 (regOne!38489 (h!77808 (exprs!8428 ct1!256))) (regOne!38488 (h!77808 (exprs!8428 ct1!256)))) (ite c!1359582 (Context!15857 (tail!14677 lt!2605741)) (Context!15857 call!666486)) c!10305))))

(declare-fun b!7325132 () Bool)

(declare-fun e!4386073 () Bool)

(assert (=> b!7325132 (= e!4386073 (nullable!8092 (regOne!38488 (h!77808 (exprs!8428 ct1!256)))))))

(declare-fun b!7325133 () Bool)

(declare-fun e!4386069 () (Set Context!15856))

(declare-fun e!4386072 () (Set Context!15856))

(assert (=> b!7325133 (= e!4386069 e!4386072)))

(assert (=> b!7325133 (= c!1359582 (is-Union!18988 (h!77808 (exprs!8428 ct1!256))))))

(declare-fun b!7325134 () Bool)

(declare-fun call!666483 () (Set Context!15856))

(assert (=> b!7325134 (= e!4386072 (set.union call!666484 call!666483))))

(declare-fun bm!666478 () Bool)

(declare-fun call!666487 () List!71484)

(assert (=> bm!666478 (= call!666487 call!666486)))

(declare-fun b!7325135 () Bool)

(declare-fun c!1359578 () Bool)

(assert (=> b!7325135 (= c!1359578 (is-Star!18988 (h!77808 (exprs!8428 ct1!256))))))

(declare-fun e!4386071 () (Set Context!15856))

(assert (=> b!7325135 (= e!4386070 e!4386071)))

(declare-fun b!7325136 () Bool)

(assert (=> b!7325136 (= e!4386069 (set.insert (Context!15857 (tail!14677 lt!2605741)) (as set.empty (Set Context!15856))))))

(declare-fun b!7325137 () Bool)

(declare-fun call!666482 () (Set Context!15856))

(assert (=> b!7325137 (= e!4386071 call!666482)))

(declare-fun b!7325138 () Bool)

(assert (=> b!7325138 (= e!4386070 call!666482)))

(declare-fun bm!666479 () Bool)

(declare-fun call!666485 () (Set Context!15856))

(assert (=> bm!666479 (= call!666482 call!666485)))

(declare-fun bm!666480 () Bool)

(declare-fun c!1359579 () Bool)

(assert (=> bm!666480 (= call!666483 (derivationStepZipperDown!2819 (ite c!1359582 (regTwo!38489 (h!77808 (exprs!8428 ct1!256))) (ite c!1359579 (regTwo!38488 (h!77808 (exprs!8428 ct1!256))) (ite c!1359580 (regOne!38488 (h!77808 (exprs!8428 ct1!256))) (reg!19317 (h!77808 (exprs!8428 ct1!256)))))) (ite (or c!1359582 c!1359579) (Context!15857 (tail!14677 lt!2605741)) (Context!15857 call!666487)) c!10305))))

(declare-fun bm!666481 () Bool)

(assert (=> bm!666481 (= call!666485 call!666483)))

(declare-fun b!7325139 () Bool)

(assert (=> b!7325139 (= c!1359579 e!4386073)))

(declare-fun res!2960787 () Bool)

(assert (=> b!7325139 (=> (not res!2960787) (not e!4386073))))

(assert (=> b!7325139 (= res!2960787 (is-Concat!27833 (h!77808 (exprs!8428 ct1!256))))))

(assert (=> b!7325139 (= e!4386072 e!4386068)))

(declare-fun d!2274723 () Bool)

(declare-fun c!1359581 () Bool)

(assert (=> d!2274723 (= c!1359581 (and (is-ElementMatch!18988 (h!77808 (exprs!8428 ct1!256))) (= (c!1359541 (h!77808 (exprs!8428 ct1!256))) c!10305)))))

(assert (=> d!2274723 (= (derivationStepZipperDown!2819 (h!77808 (exprs!8428 ct1!256)) (Context!15857 (tail!14677 lt!2605741)) c!10305) e!4386069)))

(declare-fun b!7325131 () Bool)

(assert (=> b!7325131 (= e!4386071 (as set.empty (Set Context!15856)))))

(declare-fun bm!666482 () Bool)

(declare-fun $colon$colon!3022 (List!71484 Regex!18988) List!71484)

(assert (=> bm!666482 (= call!666486 ($colon$colon!3022 (exprs!8428 (Context!15857 (tail!14677 lt!2605741))) (ite (or c!1359579 c!1359580) (regTwo!38488 (h!77808 (exprs!8428 ct1!256))) (h!77808 (exprs!8428 ct1!256)))))))

(declare-fun b!7325140 () Bool)

(assert (=> b!7325140 (= e!4386068 (set.union call!666484 call!666485))))

(assert (= (and d!2274723 c!1359581) b!7325136))

(assert (= (and d!2274723 (not c!1359581)) b!7325133))

(assert (= (and b!7325133 c!1359582) b!7325134))

(assert (= (and b!7325133 (not c!1359582)) b!7325139))

(assert (= (and b!7325139 res!2960787) b!7325132))

(assert (= (and b!7325139 c!1359579) b!7325140))

(assert (= (and b!7325139 (not c!1359579)) b!7325130))

(assert (= (and b!7325130 c!1359580) b!7325138))

(assert (= (and b!7325130 (not c!1359580)) b!7325135))

(assert (= (and b!7325135 c!1359578) b!7325137))

(assert (= (and b!7325135 (not c!1359578)) b!7325131))

(assert (= (or b!7325138 b!7325137) bm!666478))

(assert (= (or b!7325138 b!7325137) bm!666479))

(assert (= (or b!7325140 bm!666479) bm!666481))

(assert (= (or b!7325140 bm!666478) bm!666482))

(assert (= (or b!7325134 bm!666481) bm!666480))

(assert (= (or b!7325134 b!7325140) bm!666477))

(declare-fun m!7990796 () Bool)

(assert (=> b!7325132 m!7990796))

(declare-fun m!7990798 () Bool)

(assert (=> bm!666477 m!7990798))

(declare-fun m!7990800 () Bool)

(assert (=> b!7325136 m!7990800))

(declare-fun m!7990802 () Bool)

(assert (=> bm!666480 m!7990802))

(declare-fun m!7990804 () Bool)

(assert (=> bm!666482 m!7990804))

(assert (=> b!7325003 d!2274723))

(declare-fun d!2274725 () Bool)

(declare-fun e!4386074 () Bool)

(assert (=> d!2274725 e!4386074))

(declare-fun res!2960788 () Bool)

(assert (=> d!2274725 (=> (not res!2960788) (not e!4386074))))

(declare-fun lt!2605788 () List!71484)

(assert (=> d!2274725 (= res!2960788 (= (content!14932 lt!2605788) (set.union (content!14932 lt!2605739) (content!14932 (exprs!8428 ct2!352)))))))

(declare-fun e!4386075 () List!71484)

(assert (=> d!2274725 (= lt!2605788 e!4386075)))

(declare-fun c!1359583 () Bool)

(assert (=> d!2274725 (= c!1359583 (is-Nil!71360 lt!2605739))))

(assert (=> d!2274725 (= (++!16812 lt!2605739 (exprs!8428 ct2!352)) lt!2605788)))

(declare-fun b!7325143 () Bool)

(declare-fun res!2960789 () Bool)

(assert (=> b!7325143 (=> (not res!2960789) (not e!4386074))))

(assert (=> b!7325143 (= res!2960789 (= (size!41909 lt!2605788) (+ (size!41909 lt!2605739) (size!41909 (exprs!8428 ct2!352)))))))

(declare-fun b!7325142 () Bool)

(assert (=> b!7325142 (= e!4386075 (Cons!71360 (h!77808 lt!2605739) (++!16812 (t!385869 lt!2605739) (exprs!8428 ct2!352))))))

(declare-fun b!7325141 () Bool)

(assert (=> b!7325141 (= e!4386075 (exprs!8428 ct2!352))))

(declare-fun b!7325144 () Bool)

(assert (=> b!7325144 (= e!4386074 (or (not (= (exprs!8428 ct2!352) Nil!71360)) (= lt!2605788 lt!2605739)))))

(assert (= (and d!2274725 c!1359583) b!7325141))

(assert (= (and d!2274725 (not c!1359583)) b!7325142))

(assert (= (and d!2274725 res!2960788) b!7325143))

(assert (= (and b!7325143 res!2960789) b!7325144))

(declare-fun m!7990806 () Bool)

(assert (=> d!2274725 m!7990806))

(declare-fun m!7990808 () Bool)

(assert (=> d!2274725 m!7990808))

(assert (=> d!2274725 m!7990758))

(declare-fun m!7990810 () Bool)

(assert (=> b!7325143 m!7990810))

(declare-fun m!7990812 () Bool)

(assert (=> b!7325143 m!7990812))

(assert (=> b!7325143 m!7990764))

(declare-fun m!7990814 () Bool)

(assert (=> b!7325142 m!7990814))

(assert (=> b!7325003 d!2274725))

(declare-fun d!2274727 () Bool)

(declare-fun e!4386076 () Bool)

(assert (=> d!2274727 e!4386076))

(declare-fun res!2960790 () Bool)

(assert (=> d!2274727 (=> (not res!2960790) (not e!4386076))))

(declare-fun lt!2605789 () List!71484)

(assert (=> d!2274727 (= res!2960790 (= (content!14932 lt!2605789) (set.union (content!14932 (exprs!8428 cWitness!35)) (content!14932 (exprs!8428 ct2!352)))))))

(declare-fun e!4386077 () List!71484)

(assert (=> d!2274727 (= lt!2605789 e!4386077)))

(declare-fun c!1359584 () Bool)

(assert (=> d!2274727 (= c!1359584 (is-Nil!71360 (exprs!8428 cWitness!35)))))

(assert (=> d!2274727 (= (++!16812 (exprs!8428 cWitness!35) (exprs!8428 ct2!352)) lt!2605789)))

(declare-fun b!7325147 () Bool)

(declare-fun res!2960791 () Bool)

(assert (=> b!7325147 (=> (not res!2960791) (not e!4386076))))

(assert (=> b!7325147 (= res!2960791 (= (size!41909 lt!2605789) (+ (size!41909 (exprs!8428 cWitness!35)) (size!41909 (exprs!8428 ct2!352)))))))

(declare-fun b!7325146 () Bool)

(assert (=> b!7325146 (= e!4386077 (Cons!71360 (h!77808 (exprs!8428 cWitness!35)) (++!16812 (t!385869 (exprs!8428 cWitness!35)) (exprs!8428 ct2!352))))))

(declare-fun b!7325145 () Bool)

(assert (=> b!7325145 (= e!4386077 (exprs!8428 ct2!352))))

(declare-fun b!7325148 () Bool)

(assert (=> b!7325148 (= e!4386076 (or (not (= (exprs!8428 ct2!352) Nil!71360)) (= lt!2605789 (exprs!8428 cWitness!35))))))

(assert (= (and d!2274727 c!1359584) b!7325145))

(assert (= (and d!2274727 (not c!1359584)) b!7325146))

(assert (= (and d!2274727 res!2960790) b!7325147))

(assert (= (and b!7325147 res!2960791) b!7325148))

(declare-fun m!7990816 () Bool)

(assert (=> d!2274727 m!7990816))

(declare-fun m!7990818 () Bool)

(assert (=> d!2274727 m!7990818))

(assert (=> d!2274727 m!7990758))

(declare-fun m!7990820 () Bool)

(assert (=> b!7325147 m!7990820))

(declare-fun m!7990822 () Bool)

(assert (=> b!7325147 m!7990822))

(assert (=> b!7325147 m!7990764))

(declare-fun m!7990824 () Bool)

(assert (=> b!7325146 m!7990824))

(assert (=> b!7325003 d!2274727))

(declare-fun d!2274729 () Bool)

(assert (=> d!2274729 (= (tail!14677 lt!2605741) (t!385869 lt!2605741))))

(assert (=> b!7325003 d!2274729))

(declare-fun bs!1916533 () Bool)

(declare-fun d!2274731 () Bool)

(assert (= bs!1916533 (and d!2274731 b!7325010)))

(declare-fun lambda!453929 () Int)

(assert (=> bs!1916533 (= lambda!453929 lambda!453915)))

(assert (=> d!2274731 (set.member (Context!15857 (++!16812 (exprs!8428 cWitness!35) (exprs!8428 ct2!352))) (derivationStepZipperDown!2819 (h!77808 (exprs!8428 ct1!256)) (Context!15857 (++!16812 (exprs!8428 lt!2605738) (exprs!8428 ct2!352))) c!10305))))

(declare-fun lt!2605798 () Unit!164941)

(assert (=> d!2274731 (= lt!2605798 (lemmaConcatPreservesForall!1669 (exprs!8428 lt!2605738) (exprs!8428 ct2!352) lambda!453929))))

(declare-fun lt!2605797 () Unit!164941)

(assert (=> d!2274731 (= lt!2605797 (lemmaConcatPreservesForall!1669 (exprs!8428 cWitness!35) (exprs!8428 ct2!352) lambda!453929))))

(declare-fun lt!2605796 () Unit!164941)

(declare-fun choose!56959 (Regex!18988 Context!15856 Context!15856 Context!15856 C!38250) Unit!164941)

(assert (=> d!2274731 (= lt!2605796 (choose!56959 (h!77808 (exprs!8428 ct1!256)) lt!2605738 ct2!352 cWitness!35 c!10305))))

(declare-fun validRegex!9628 (Regex!18988) Bool)

(assert (=> d!2274731 (validRegex!9628 (h!77808 (exprs!8428 ct1!256)))))

(assert (=> d!2274731 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!1 (h!77808 (exprs!8428 ct1!256)) lt!2605738 ct2!352 cWitness!35 c!10305) lt!2605796)))

(declare-fun bs!1916534 () Bool)

(assert (= bs!1916534 d!2274731))

(declare-fun m!7990826 () Bool)

(assert (=> bs!1916534 m!7990826))

(declare-fun m!7990828 () Bool)

(assert (=> bs!1916534 m!7990828))

(declare-fun m!7990830 () Bool)

(assert (=> bs!1916534 m!7990830))

(declare-fun m!7990832 () Bool)

(assert (=> bs!1916534 m!7990832))

(declare-fun m!7990834 () Bool)

(assert (=> bs!1916534 m!7990834))

(assert (=> bs!1916534 m!7990670))

(declare-fun m!7990836 () Bool)

(assert (=> bs!1916534 m!7990836))

(declare-fun m!7990838 () Bool)

(assert (=> bs!1916534 m!7990838))

(assert (=> b!7325003 d!2274731))

(declare-fun b!7325160 () Bool)

(declare-fun e!4386084 () (Set Context!15856))

(declare-fun e!4386086 () (Set Context!15856))

(assert (=> b!7325160 (= e!4386084 e!4386086)))

(declare-fun c!1359593 () Bool)

(assert (=> b!7325160 (= c!1359593 (is-Concat!27833 (h!77808 (exprs!8428 ct1!256))))))

(declare-fun call!666500 () (Set Context!15856))

(declare-fun c!1359595 () Bool)

(declare-fun call!666502 () List!71484)

(declare-fun bm!666493 () Bool)

(assert (=> bm!666493 (= call!666500 (derivationStepZipperDown!2819 (ite c!1359595 (regOne!38489 (h!77808 (exprs!8428 ct1!256))) (regOne!38488 (h!77808 (exprs!8428 ct1!256)))) (ite c!1359595 (Context!15857 (++!16812 lt!2605739 (exprs!8428 ct2!352))) (Context!15857 call!666502)) c!10305))))

(declare-fun b!7325162 () Bool)

(declare-fun e!4386089 () Bool)

(assert (=> b!7325162 (= e!4386089 (nullable!8092 (regOne!38488 (h!77808 (exprs!8428 ct1!256)))))))

(declare-fun b!7325163 () Bool)

(declare-fun e!4386085 () (Set Context!15856))

(declare-fun e!4386088 () (Set Context!15856))

(assert (=> b!7325163 (= e!4386085 e!4386088)))

(assert (=> b!7325163 (= c!1359595 (is-Union!18988 (h!77808 (exprs!8428 ct1!256))))))

(declare-fun b!7325164 () Bool)

(declare-fun call!666499 () (Set Context!15856))

(assert (=> b!7325164 (= e!4386088 (set.union call!666500 call!666499))))

(declare-fun bm!666494 () Bool)

(declare-fun call!666503 () List!71484)

(assert (=> bm!666494 (= call!666503 call!666502)))

(declare-fun b!7325165 () Bool)

(declare-fun c!1359591 () Bool)

(assert (=> b!7325165 (= c!1359591 (is-Star!18988 (h!77808 (exprs!8428 ct1!256))))))

(declare-fun e!4386087 () (Set Context!15856))

(assert (=> b!7325165 (= e!4386086 e!4386087)))

(declare-fun b!7325166 () Bool)

(assert (=> b!7325166 (= e!4386085 (set.insert (Context!15857 (++!16812 lt!2605739 (exprs!8428 ct2!352))) (as set.empty (Set Context!15856))))))

(declare-fun b!7325167 () Bool)

(declare-fun call!666498 () (Set Context!15856))

(assert (=> b!7325167 (= e!4386087 call!666498)))

(declare-fun b!7325168 () Bool)

(assert (=> b!7325168 (= e!4386086 call!666498)))

(declare-fun bm!666495 () Bool)

(declare-fun call!666501 () (Set Context!15856))

(assert (=> bm!666495 (= call!666498 call!666501)))

(declare-fun c!1359592 () Bool)

(declare-fun bm!666496 () Bool)

(assert (=> bm!666496 (= call!666499 (derivationStepZipperDown!2819 (ite c!1359595 (regTwo!38489 (h!77808 (exprs!8428 ct1!256))) (ite c!1359592 (regTwo!38488 (h!77808 (exprs!8428 ct1!256))) (ite c!1359593 (regOne!38488 (h!77808 (exprs!8428 ct1!256))) (reg!19317 (h!77808 (exprs!8428 ct1!256)))))) (ite (or c!1359595 c!1359592) (Context!15857 (++!16812 lt!2605739 (exprs!8428 ct2!352))) (Context!15857 call!666503)) c!10305))))

(declare-fun bm!666497 () Bool)

(assert (=> bm!666497 (= call!666501 call!666499)))

(declare-fun b!7325169 () Bool)

(assert (=> b!7325169 (= c!1359592 e!4386089)))

(declare-fun res!2960793 () Bool)

(assert (=> b!7325169 (=> (not res!2960793) (not e!4386089))))

(assert (=> b!7325169 (= res!2960793 (is-Concat!27833 (h!77808 (exprs!8428 ct1!256))))))

(assert (=> b!7325169 (= e!4386088 e!4386084)))

(declare-fun d!2274733 () Bool)

(declare-fun c!1359594 () Bool)

(assert (=> d!2274733 (= c!1359594 (and (is-ElementMatch!18988 (h!77808 (exprs!8428 ct1!256))) (= (c!1359541 (h!77808 (exprs!8428 ct1!256))) c!10305)))))

(assert (=> d!2274733 (= (derivationStepZipperDown!2819 (h!77808 (exprs!8428 ct1!256)) (Context!15857 (++!16812 lt!2605739 (exprs!8428 ct2!352))) c!10305) e!4386085)))

(declare-fun b!7325161 () Bool)

(assert (=> b!7325161 (= e!4386087 (as set.empty (Set Context!15856)))))

(declare-fun bm!666498 () Bool)

(assert (=> bm!666498 (= call!666502 ($colon$colon!3022 (exprs!8428 (Context!15857 (++!16812 lt!2605739 (exprs!8428 ct2!352)))) (ite (or c!1359592 c!1359593) (regTwo!38488 (h!77808 (exprs!8428 ct1!256))) (h!77808 (exprs!8428 ct1!256)))))))

(declare-fun b!7325170 () Bool)

(assert (=> b!7325170 (= e!4386084 (set.union call!666500 call!666501))))

(assert (= (and d!2274733 c!1359594) b!7325166))

(assert (= (and d!2274733 (not c!1359594)) b!7325163))

(assert (= (and b!7325163 c!1359595) b!7325164))

(assert (= (and b!7325163 (not c!1359595)) b!7325169))

(assert (= (and b!7325169 res!2960793) b!7325162))

(assert (= (and b!7325169 c!1359592) b!7325170))

(assert (= (and b!7325169 (not c!1359592)) b!7325160))

(assert (= (and b!7325160 c!1359593) b!7325168))

(assert (= (and b!7325160 (not c!1359593)) b!7325165))

(assert (= (and b!7325165 c!1359591) b!7325167))

(assert (= (and b!7325165 (not c!1359591)) b!7325161))

(assert (= (or b!7325168 b!7325167) bm!666494))

(assert (= (or b!7325168 b!7325167) bm!666495))

(assert (= (or b!7325170 bm!666495) bm!666497))

(assert (= (or b!7325170 bm!666494) bm!666498))

(assert (= (or b!7325164 bm!666497) bm!666496))

(assert (= (or b!7325164 b!7325170) bm!666493))

(assert (=> b!7325162 m!7990796))

(declare-fun m!7990840 () Bool)

(assert (=> bm!666493 m!7990840))

(declare-fun m!7990842 () Bool)

(assert (=> b!7325166 m!7990842))

(declare-fun m!7990844 () Bool)

(assert (=> bm!666496 m!7990844))

(declare-fun m!7990846 () Bool)

(assert (=> bm!666498 m!7990846))

(assert (=> b!7325003 d!2274733))

(declare-fun d!2274735 () Bool)

(assert (=> d!2274735 (forall!17840 (++!16812 lt!2605739 (exprs!8428 ct2!352)) lambda!453915)))

(declare-fun lt!2605799 () Unit!164941)

(assert (=> d!2274735 (= lt!2605799 (choose!56958 lt!2605739 (exprs!8428 ct2!352) lambda!453915))))

(assert (=> d!2274735 (forall!17840 lt!2605739 lambda!453915)))

(assert (=> d!2274735 (= (lemmaConcatPreservesForall!1669 lt!2605739 (exprs!8428 ct2!352) lambda!453915) lt!2605799)))

(declare-fun bs!1916535 () Bool)

(assert (= bs!1916535 d!2274735))

(assert (=> bs!1916535 m!7990674))

(assert (=> bs!1916535 m!7990674))

(declare-fun m!7990848 () Bool)

(assert (=> bs!1916535 m!7990848))

(declare-fun m!7990850 () Bool)

(assert (=> bs!1916535 m!7990850))

(declare-fun m!7990852 () Bool)

(assert (=> bs!1916535 m!7990852))

(assert (=> b!7325003 d!2274735))

(declare-fun e!4386090 () (Set Context!15856))

(declare-fun b!7325171 () Bool)

(declare-fun call!666504 () (Set Context!15856))

(assert (=> b!7325171 (= e!4386090 (set.union call!666504 (derivationStepZipperUp!2668 (Context!15857 (t!385869 (exprs!8428 ct1!256))) c!10305)))))

(declare-fun b!7325172 () Bool)

(declare-fun e!4386091 () (Set Context!15856))

(assert (=> b!7325172 (= e!4386091 call!666504)))

(declare-fun d!2274737 () Bool)

(declare-fun c!1359596 () Bool)

(declare-fun e!4386092 () Bool)

(assert (=> d!2274737 (= c!1359596 e!4386092)))

(declare-fun res!2960794 () Bool)

(assert (=> d!2274737 (=> (not res!2960794) (not e!4386092))))

(assert (=> d!2274737 (= res!2960794 (is-Cons!71360 (exprs!8428 ct1!256)))))

(assert (=> d!2274737 (= (derivationStepZipperUp!2668 ct1!256 c!10305) e!4386090)))

(declare-fun b!7325173 () Bool)

(assert (=> b!7325173 (= e!4386092 (nullable!8092 (h!77808 (exprs!8428 ct1!256))))))

(declare-fun b!7325174 () Bool)

(assert (=> b!7325174 (= e!4386091 (as set.empty (Set Context!15856)))))

(declare-fun b!7325175 () Bool)

(assert (=> b!7325175 (= e!4386090 e!4386091)))

(declare-fun c!1359597 () Bool)

(assert (=> b!7325175 (= c!1359597 (is-Cons!71360 (exprs!8428 ct1!256)))))

(declare-fun bm!666499 () Bool)

(assert (=> bm!666499 (= call!666504 (derivationStepZipperDown!2819 (h!77808 (exprs!8428 ct1!256)) (Context!15857 (t!385869 (exprs!8428 ct1!256))) c!10305))))

(assert (= (and d!2274737 res!2960794) b!7325173))

(assert (= (and d!2274737 c!1359596) b!7325171))

(assert (= (and d!2274737 (not c!1359596)) b!7325175))

(assert (= (and b!7325175 c!1359597) b!7325172))

(assert (= (and b!7325175 (not c!1359597)) b!7325174))

(assert (= (or b!7325171 b!7325172) bm!666499))

(declare-fun m!7990854 () Bool)

(assert (=> b!7325171 m!7990854))

(assert (=> b!7325173 m!7990660))

(declare-fun m!7990856 () Bool)

(assert (=> bm!666499 m!7990856))

(assert (=> start!714930 d!2274737))

(declare-fun bs!1916536 () Bool)

(declare-fun d!2274739 () Bool)

(assert (= bs!1916536 (and d!2274739 b!7325010)))

(declare-fun lambda!453932 () Int)

(assert (=> bs!1916536 (= lambda!453932 lambda!453915)))

(declare-fun bs!1916537 () Bool)

(assert (= bs!1916537 (and d!2274739 d!2274731)))

(assert (=> bs!1916537 (= lambda!453932 lambda!453929)))

(assert (=> d!2274739 (= (inv!90811 cWitness!35) (forall!17840 (exprs!8428 cWitness!35) lambda!453932))))

(declare-fun bs!1916538 () Bool)

(assert (= bs!1916538 d!2274739))

(declare-fun m!7990868 () Bool)

(assert (=> bs!1916538 m!7990868))

(assert (=> start!714930 d!2274739))

(declare-fun bs!1916539 () Bool)

(declare-fun d!2274743 () Bool)

(assert (= bs!1916539 (and d!2274743 b!7325010)))

(declare-fun lambda!453933 () Int)

(assert (=> bs!1916539 (= lambda!453933 lambda!453915)))

(declare-fun bs!1916540 () Bool)

(assert (= bs!1916540 (and d!2274743 d!2274731)))

(assert (=> bs!1916540 (= lambda!453933 lambda!453929)))

(declare-fun bs!1916541 () Bool)

(assert (= bs!1916541 (and d!2274743 d!2274739)))

(assert (=> bs!1916541 (= lambda!453933 lambda!453932)))

(assert (=> d!2274743 (= (inv!90811 ct1!256) (forall!17840 (exprs!8428 ct1!256) lambda!453933))))

(declare-fun bs!1916542 () Bool)

(assert (= bs!1916542 d!2274743))

(declare-fun m!7990870 () Bool)

(assert (=> bs!1916542 m!7990870))

(assert (=> start!714930 d!2274743))

(declare-fun bs!1916543 () Bool)

(declare-fun d!2274749 () Bool)

(assert (= bs!1916543 (and d!2274749 b!7325010)))

(declare-fun lambda!453934 () Int)

(assert (=> bs!1916543 (= lambda!453934 lambda!453915)))

(declare-fun bs!1916544 () Bool)

(assert (= bs!1916544 (and d!2274749 d!2274731)))

(assert (=> bs!1916544 (= lambda!453934 lambda!453929)))

(declare-fun bs!1916545 () Bool)

(assert (= bs!1916545 (and d!2274749 d!2274739)))

(assert (=> bs!1916545 (= lambda!453934 lambda!453932)))

(declare-fun bs!1916546 () Bool)

(assert (= bs!1916546 (and d!2274749 d!2274743)))

(assert (=> bs!1916546 (= lambda!453934 lambda!453933)))

(assert (=> d!2274749 (= (inv!90811 ct2!352) (forall!17840 (exprs!8428 ct2!352) lambda!453934))))

(declare-fun bs!1916547 () Bool)

(assert (= bs!1916547 d!2274749))

(declare-fun m!7990872 () Bool)

(assert (=> bs!1916547 m!7990872))

(assert (=> start!714930 d!2274749))

(declare-fun d!2274751 () Bool)

(declare-fun nullableFct!3207 (Regex!18988) Bool)

(assert (=> d!2274751 (= (nullable!8092 (h!77808 (exprs!8428 ct1!256))) (nullableFct!3207 (h!77808 (exprs!8428 ct1!256))))))

(declare-fun bs!1916548 () Bool)

(assert (= bs!1916548 d!2274751))

(declare-fun m!7990878 () Bool)

(assert (=> bs!1916548 m!7990878))

(assert (=> b!7325002 d!2274751))

(declare-fun b!7325181 () Bool)

(declare-fun e!4386096 () (Set Context!15856))

(declare-fun e!4386098 () (Set Context!15856))

(assert (=> b!7325181 (= e!4386096 e!4386098)))

(declare-fun c!1359602 () Bool)

(assert (=> b!7325181 (= c!1359602 (is-Concat!27833 (h!77808 (exprs!8428 ct1!256))))))

(declare-fun call!666510 () List!71484)

(declare-fun bm!666501 () Bool)

(declare-fun c!1359604 () Bool)

(declare-fun call!666508 () (Set Context!15856))

(assert (=> bm!666501 (= call!666508 (derivationStepZipperDown!2819 (ite c!1359604 (regOne!38489 (h!77808 (exprs!8428 ct1!256))) (regOne!38488 (h!77808 (exprs!8428 ct1!256)))) (ite c!1359604 lt!2605738 (Context!15857 call!666510)) c!10305))))

(declare-fun b!7325183 () Bool)

(declare-fun e!4386101 () Bool)

(assert (=> b!7325183 (= e!4386101 (nullable!8092 (regOne!38488 (h!77808 (exprs!8428 ct1!256)))))))

(declare-fun b!7325184 () Bool)

(declare-fun e!4386097 () (Set Context!15856))

(declare-fun e!4386100 () (Set Context!15856))

(assert (=> b!7325184 (= e!4386097 e!4386100)))

(assert (=> b!7325184 (= c!1359604 (is-Union!18988 (h!77808 (exprs!8428 ct1!256))))))

(declare-fun b!7325185 () Bool)

(declare-fun call!666507 () (Set Context!15856))

(assert (=> b!7325185 (= e!4386100 (set.union call!666508 call!666507))))

(declare-fun bm!666502 () Bool)

(declare-fun call!666511 () List!71484)

(assert (=> bm!666502 (= call!666511 call!666510)))

(declare-fun b!7325186 () Bool)

(declare-fun c!1359600 () Bool)

(assert (=> b!7325186 (= c!1359600 (is-Star!18988 (h!77808 (exprs!8428 ct1!256))))))

(declare-fun e!4386099 () (Set Context!15856))

(assert (=> b!7325186 (= e!4386098 e!4386099)))

(declare-fun b!7325187 () Bool)

(assert (=> b!7325187 (= e!4386097 (set.insert lt!2605738 (as set.empty (Set Context!15856))))))

(declare-fun b!7325188 () Bool)

(declare-fun call!666506 () (Set Context!15856))

(assert (=> b!7325188 (= e!4386099 call!666506)))

(declare-fun b!7325189 () Bool)

(assert (=> b!7325189 (= e!4386098 call!666506)))

(declare-fun bm!666503 () Bool)

(declare-fun call!666509 () (Set Context!15856))

(assert (=> bm!666503 (= call!666506 call!666509)))

(declare-fun c!1359601 () Bool)

(declare-fun bm!666504 () Bool)

(assert (=> bm!666504 (= call!666507 (derivationStepZipperDown!2819 (ite c!1359604 (regTwo!38489 (h!77808 (exprs!8428 ct1!256))) (ite c!1359601 (regTwo!38488 (h!77808 (exprs!8428 ct1!256))) (ite c!1359602 (regOne!38488 (h!77808 (exprs!8428 ct1!256))) (reg!19317 (h!77808 (exprs!8428 ct1!256)))))) (ite (or c!1359604 c!1359601) lt!2605738 (Context!15857 call!666511)) c!10305))))

(declare-fun bm!666505 () Bool)

(assert (=> bm!666505 (= call!666509 call!666507)))

(declare-fun b!7325190 () Bool)

(assert (=> b!7325190 (= c!1359601 e!4386101)))

(declare-fun res!2960796 () Bool)

(assert (=> b!7325190 (=> (not res!2960796) (not e!4386101))))

(assert (=> b!7325190 (= res!2960796 (is-Concat!27833 (h!77808 (exprs!8428 ct1!256))))))

(assert (=> b!7325190 (= e!4386100 e!4386096)))

(declare-fun d!2274755 () Bool)

(declare-fun c!1359603 () Bool)

(assert (=> d!2274755 (= c!1359603 (and (is-ElementMatch!18988 (h!77808 (exprs!8428 ct1!256))) (= (c!1359541 (h!77808 (exprs!8428 ct1!256))) c!10305)))))

(assert (=> d!2274755 (= (derivationStepZipperDown!2819 (h!77808 (exprs!8428 ct1!256)) lt!2605738 c!10305) e!4386097)))

(declare-fun b!7325182 () Bool)

(assert (=> b!7325182 (= e!4386099 (as set.empty (Set Context!15856)))))

(declare-fun bm!666506 () Bool)

(assert (=> bm!666506 (= call!666510 ($colon$colon!3022 (exprs!8428 lt!2605738) (ite (or c!1359601 c!1359602) (regTwo!38488 (h!77808 (exprs!8428 ct1!256))) (h!77808 (exprs!8428 ct1!256)))))))

(declare-fun b!7325191 () Bool)

(assert (=> b!7325191 (= e!4386096 (set.union call!666508 call!666509))))

(assert (= (and d!2274755 c!1359603) b!7325187))

(assert (= (and d!2274755 (not c!1359603)) b!7325184))

(assert (= (and b!7325184 c!1359604) b!7325185))

(assert (= (and b!7325184 (not c!1359604)) b!7325190))

(assert (= (and b!7325190 res!2960796) b!7325183))

(assert (= (and b!7325190 c!1359601) b!7325191))

(assert (= (and b!7325190 (not c!1359601)) b!7325181))

(assert (= (and b!7325181 c!1359602) b!7325189))

(assert (= (and b!7325181 (not c!1359602)) b!7325186))

(assert (= (and b!7325186 c!1359600) b!7325188))

(assert (= (and b!7325186 (not c!1359600)) b!7325182))

(assert (= (or b!7325189 b!7325188) bm!666502))

(assert (= (or b!7325189 b!7325188) bm!666503))

(assert (= (or b!7325191 bm!666503) bm!666505))

(assert (= (or b!7325191 bm!666502) bm!666506))

(assert (= (or b!7325185 bm!666505) bm!666504))

(assert (= (or b!7325185 b!7325191) bm!666501))

(assert (=> b!7325183 m!7990796))

(declare-fun m!7990880 () Bool)

(assert (=> bm!666501 m!7990880))

(declare-fun m!7990882 () Bool)

(assert (=> b!7325187 m!7990882))

(declare-fun m!7990884 () Bool)

(assert (=> bm!666504 m!7990884))

(declare-fun m!7990886 () Bool)

(assert (=> bm!666506 m!7990886))

(assert (=> b!7325002 d!2274755))

(declare-fun d!2274757 () Bool)

(assert (=> d!2274757 (= (tail!14677 (exprs!8428 ct1!256)) (t!385869 (exprs!8428 ct1!256)))))

(assert (=> b!7325002 d!2274757))

(declare-fun d!2274759 () Bool)

(assert (=> d!2274759 (= (isEmpty!40906 (exprs!8428 ct1!256)) (is-Nil!71360 (exprs!8428 ct1!256)))))

(assert (=> b!7325007 d!2274759))

(declare-fun b!7325196 () Bool)

(declare-fun e!4386104 () Bool)

(declare-fun tp!2080386 () Bool)

(declare-fun tp!2080387 () Bool)

(assert (=> b!7325196 (= e!4386104 (and tp!2080386 tp!2080387))))

(assert (=> b!7325005 (= tp!2080370 e!4386104)))

(assert (= (and b!7325005 (is-Cons!71360 (exprs!8428 ct1!256))) b!7325196))

(declare-fun b!7325197 () Bool)

(declare-fun e!4386105 () Bool)

(declare-fun tp!2080388 () Bool)

(declare-fun tp!2080389 () Bool)

(assert (=> b!7325197 (= e!4386105 (and tp!2080388 tp!2080389))))

(assert (=> b!7325008 (= tp!2080371 e!4386105)))

(assert (= (and b!7325008 (is-Cons!71360 (exprs!8428 ct2!352))) b!7325197))

(declare-fun b!7325198 () Bool)

(declare-fun e!4386106 () Bool)

(declare-fun tp!2080390 () Bool)

(declare-fun tp!2080391 () Bool)

(assert (=> b!7325198 (= e!4386106 (and tp!2080390 tp!2080391))))

(assert (=> b!7325006 (= tp!2080372 e!4386106)))

(assert (= (and b!7325006 (is-Cons!71360 (exprs!8428 cWitness!35))) b!7325198))

(declare-fun b_lambda!283309 () Bool)

(assert (= b_lambda!283307 (or b!7325010 b_lambda!283309)))

(declare-fun bs!1916549 () Bool)

(declare-fun d!2274761 () Bool)

(assert (= bs!1916549 (and d!2274761 b!7325010)))

(assert (=> bs!1916549 (= (dynLambda!29399 lambda!453915 (h!77808 (exprs!8428 cWitness!35))) (validRegex!9628 (h!77808 (exprs!8428 cWitness!35))))))

(declare-fun m!7990888 () Bool)

(assert (=> bs!1916549 m!7990888))

(assert (=> b!7325084 d!2274761))

(push 1)

(assert (not bm!666477))

(assert (not bm!666496))

(assert (not b!7325057))

(assert (not b!7325147))

(assert (not bm!666498))

(assert (not d!2274731))

(assert (not b!7325146))

(assert (not bm!666501))

(assert (not d!2274743))

(assert (not b!7325142))

(assert (not d!2274749))

(assert (not b!7325132))

(assert (not b!7325196))

(assert (not b!7325162))

(assert tp_is_empty!48221)

(assert (not bm!666504))

(assert (not b!7325077))

(assert (not b!7325075))

(assert (not b!7325058))

(assert (not b!7325198))

(assert (not bm!666480))

(assert (not d!2274727))

(assert (not d!2274719))

(assert (not b!7325197))

(assert (not d!2274705))

(assert (not bs!1916549))

(assert (not bm!666506))

(assert (not b!7325171))

(assert (not b_lambda!283309))

(assert (not bm!666482))

(assert (not bm!666456))

(assert (not b!7325085))

(assert (not d!2274735))

(assert (not bm!666493))

(assert (not d!2274751))

(assert (not b!7325183))

(assert (not b!7325143))

(assert (not d!2274707))

(assert (not bm!666499))

(assert (not d!2274739))

(assert (not d!2274725))

(assert (not b!7325173))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

