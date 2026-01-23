; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!709156 () Bool)

(assert start!709156)

(declare-fun b!7268790 () Bool)

(assert (=> b!7268790 true))

(declare-fun b!7268786 () Bool)

(declare-fun res!2946784 () Bool)

(declare-fun e!4358870 () Bool)

(assert (=> b!7268786 (=> (not res!2946784) (not e!4358870))))

(declare-datatypes ((C!37846 0))(
  ( (C!37847 (val!28871 Int)) )
))
(declare-datatypes ((List!70887 0))(
  ( (Nil!70763) (Cons!70763 (h!77211 C!37846) (t!384957 List!70887)) )
))
(declare-fun s!7854 () List!70887)

(assert (=> b!7268786 (= res!2946784 (is-Cons!70763 s!7854))))

(declare-fun b!7268787 () Bool)

(declare-fun res!2946778 () Bool)

(assert (=> b!7268787 (=> (not res!2946778) (not e!4358870))))

(declare-datatypes ((Regex!18786 0))(
  ( (ElementMatch!18786 (c!1352820 C!37846)) (Concat!27631 (regOne!38084 Regex!18786) (regTwo!38084 Regex!18786)) (EmptyExpr!18786) (Star!18786 (reg!19115 Regex!18786)) (EmptyLang!18786) (Union!18786 (regOne!38085 Regex!18786) (regTwo!38085 Regex!18786)) )
))
(declare-datatypes ((List!70888 0))(
  ( (Nil!70764) (Cons!70764 (h!77212 Regex!18786) (t!384958 List!70888)) )
))
(declare-datatypes ((Context!15452 0))(
  ( (Context!15453 (exprs!8226 List!70888)) )
))
(declare-fun ct1!250 () Context!15452)

(declare-fun nullableContext!276 (Context!15452) Bool)

(assert (=> b!7268787 (= res!2946778 (nullableContext!276 ct1!250))))

(declare-fun res!2946779 () Bool)

(assert (=> start!709156 (=> (not res!2946779) (not e!4358870))))

(declare-fun ct2!346 () Context!15452)

(declare-fun matchZipper!3690 ((Set Context!15452) List!70887) Bool)

(assert (=> start!709156 (= res!2946779 (matchZipper!3690 (set.insert ct2!346 (as set.empty (Set Context!15452))) s!7854))))

(assert (=> start!709156 e!4358870))

(declare-fun e!4358871 () Bool)

(declare-fun inv!89976 (Context!15452) Bool)

(assert (=> start!709156 (and (inv!89976 ct2!346) e!4358871)))

(declare-fun e!4358874 () Bool)

(assert (=> start!709156 e!4358874))

(declare-fun e!4358868 () Bool)

(assert (=> start!709156 (and (inv!89976 ct1!250) e!4358868)))

(declare-fun b!7268788 () Bool)

(declare-fun e!4358873 () Bool)

(declare-fun e!4358869 () Bool)

(assert (=> b!7268788 (= e!4358873 e!4358869)))

(declare-fun res!2946786 () Bool)

(assert (=> b!7268788 (=> res!2946786 e!4358869)))

(declare-fun nullable!7986 (Regex!18786) Bool)

(assert (=> b!7268788 (= res!2946786 (not (nullable!7986 (h!77212 (exprs!8226 ct1!250)))))))

(declare-fun lt!2593690 () (Set Context!15452))

(declare-fun derivationStepZipperUp!2556 (Context!15452 C!37846) (Set Context!15452))

(assert (=> b!7268788 (= lt!2593690 (derivationStepZipperUp!2556 ct1!250 (h!77211 s!7854)))))

(declare-fun lt!2593696 () Context!15452)

(declare-fun lt!2593692 () List!70888)

(assert (=> b!7268788 (= lt!2593696 (Context!15453 lt!2593692))))

(declare-fun tail!14476 (List!70888) List!70888)

(assert (=> b!7268788 (= lt!2593692 (tail!14476 (exprs!8226 ct1!250)))))

(declare-fun b!7268789 () Bool)

(declare-fun res!2946785 () Bool)

(assert (=> b!7268789 (=> res!2946785 e!4358873)))

(assert (=> b!7268789 (= res!2946785 (not (is-Cons!70764 (exprs!8226 ct1!250))))))

(assert (=> b!7268790 (= e!4358870 (not e!4358873))))

(declare-fun res!2946780 () Bool)

(assert (=> b!7268790 (=> res!2946780 e!4358873)))

(declare-fun lt!2593695 () (Set Context!15452))

(declare-fun lt!2593708 () (Set Context!15452))

(declare-fun derivationStepZipper!3526 ((Set Context!15452) C!37846) (Set Context!15452))

(assert (=> b!7268790 (= res!2946780 (not (= lt!2593708 (derivationStepZipper!3526 lt!2593695 (h!77211 s!7854)))))))

(declare-datatypes ((Unit!164190 0))(
  ( (Unit!164191) )
))
(declare-fun lt!2593701 () Unit!164190)

(declare-fun lambda!448078 () Int)

(declare-fun lemmaConcatPreservesForall!1543 (List!70888 List!70888 Int) Unit!164190)

(assert (=> b!7268790 (= lt!2593701 (lemmaConcatPreservesForall!1543 (exprs!8226 ct1!250) (exprs!8226 ct2!346) lambda!448078))))

(declare-fun lambda!448079 () Int)

(declare-fun lt!2593707 () Context!15452)

(declare-fun flatMap!2899 ((Set Context!15452) Int) (Set Context!15452))

(assert (=> b!7268790 (= (flatMap!2899 lt!2593695 lambda!448079) (derivationStepZipperUp!2556 lt!2593707 (h!77211 s!7854)))))

(declare-fun lt!2593699 () Unit!164190)

(declare-fun lemmaFlatMapOnSingletonSet!2299 ((Set Context!15452) Context!15452 Int) Unit!164190)

(assert (=> b!7268790 (= lt!2593699 (lemmaFlatMapOnSingletonSet!2299 lt!2593695 lt!2593707 lambda!448079))))

(assert (=> b!7268790 (= lt!2593695 (set.insert lt!2593707 (as set.empty (Set Context!15452))))))

(declare-fun lt!2593706 () Unit!164190)

(assert (=> b!7268790 (= lt!2593706 (lemmaConcatPreservesForall!1543 (exprs!8226 ct1!250) (exprs!8226 ct2!346) lambda!448078))))

(declare-fun lt!2593705 () Unit!164190)

(assert (=> b!7268790 (= lt!2593705 (lemmaConcatPreservesForall!1543 (exprs!8226 ct1!250) (exprs!8226 ct2!346) lambda!448078))))

(declare-fun lt!2593698 () (Set Context!15452))

(assert (=> b!7268790 (= (flatMap!2899 lt!2593698 lambda!448079) (derivationStepZipperUp!2556 ct1!250 (h!77211 s!7854)))))

(declare-fun lt!2593709 () Unit!164190)

(assert (=> b!7268790 (= lt!2593709 (lemmaFlatMapOnSingletonSet!2299 lt!2593698 ct1!250 lambda!448079))))

(assert (=> b!7268790 (= lt!2593698 (set.insert ct1!250 (as set.empty (Set Context!15452))))))

(assert (=> b!7268790 (= lt!2593708 (derivationStepZipperUp!2556 lt!2593707 (h!77211 s!7854)))))

(declare-fun ++!16686 (List!70888 List!70888) List!70888)

(assert (=> b!7268790 (= lt!2593707 (Context!15453 (++!16686 (exprs!8226 ct1!250) (exprs!8226 ct2!346))))))

(declare-fun lt!2593703 () Unit!164190)

(assert (=> b!7268790 (= lt!2593703 (lemmaConcatPreservesForall!1543 (exprs!8226 ct1!250) (exprs!8226 ct2!346) lambda!448078))))

(declare-fun b!7268791 () Bool)

(declare-fun e!4358872 () Bool)

(declare-fun forall!17615 (List!70888 Int) Bool)

(assert (=> b!7268791 (= e!4358872 (forall!17615 lt!2593692 lambda!448078))))

(declare-fun lt!2593700 () Context!15452)

(declare-fun lt!2593697 () (Set Context!15452))

(assert (=> b!7268791 (= (flatMap!2899 lt!2593697 lambda!448079) (derivationStepZipperUp!2556 lt!2593700 (h!77211 s!7854)))))

(declare-fun lt!2593704 () Unit!164190)

(assert (=> b!7268791 (= lt!2593704 (lemmaFlatMapOnSingletonSet!2299 lt!2593697 lt!2593700 lambda!448079))))

(declare-fun lt!2593710 () Unit!164190)

(assert (=> b!7268791 (= lt!2593710 (lemmaConcatPreservesForall!1543 lt!2593692 (exprs!8226 ct2!346) lambda!448078))))

(declare-fun lt!2593694 () Unit!164190)

(assert (=> b!7268791 (= lt!2593694 (lemmaConcatPreservesForall!1543 lt!2593692 (exprs!8226 ct2!346) lambda!448078))))

(declare-fun lt!2593689 () Unit!164190)

(assert (=> b!7268791 (= lt!2593689 (lemmaConcatPreservesForall!1543 lt!2593692 (exprs!8226 ct2!346) lambda!448078))))

(assert (=> b!7268791 (matchZipper!3690 lt!2593697 s!7854)))

(assert (=> b!7268791 (= lt!2593697 (set.insert lt!2593700 (as set.empty (Set Context!15452))))))

(declare-fun lt!2593693 () Unit!164190)

(assert (=> b!7268791 (= lt!2593693 (lemmaConcatPreservesForall!1543 lt!2593692 (exprs!8226 ct2!346) lambda!448078))))

(declare-fun lt!2593688 () Unit!164190)

(declare-fun lemmaPrependingNullableCtxStillMatches!23 (Context!15452 Context!15452 List!70887) Unit!164190)

(assert (=> b!7268791 (= lt!2593688 (lemmaPrependingNullableCtxStillMatches!23 lt!2593696 ct2!346 s!7854))))

(declare-fun b!7268792 () Bool)

(declare-fun res!2946781 () Bool)

(assert (=> b!7268792 (=> res!2946781 e!4358869)))

(declare-fun derivationStepZipperDown!2720 (Regex!18786 Context!15452 C!37846) (Set Context!15452))

(assert (=> b!7268792 (= res!2946781 (not (= lt!2593690 (set.union (derivationStepZipperDown!2720 (h!77212 (exprs!8226 ct1!250)) lt!2593696 (h!77211 s!7854)) (derivationStepZipperUp!2556 lt!2593696 (h!77211 s!7854))))))))

(declare-fun b!7268793 () Bool)

(declare-fun tp_is_empty!47037 () Bool)

(declare-fun tp!2040843 () Bool)

(assert (=> b!7268793 (= e!4358874 (and tp_is_empty!47037 tp!2040843))))

(declare-fun b!7268794 () Bool)

(assert (=> b!7268794 (= e!4358869 e!4358872)))

(declare-fun res!2946783 () Bool)

(assert (=> b!7268794 (=> res!2946783 e!4358872)))

(assert (=> b!7268794 (= res!2946783 (not (= lt!2593708 (set.union (derivationStepZipperDown!2720 (h!77212 (exprs!8226 ct1!250)) lt!2593700 (h!77211 s!7854)) (derivationStepZipperUp!2556 lt!2593700 (h!77211 s!7854))))))))

(assert (=> b!7268794 (= lt!2593700 (Context!15453 (++!16686 lt!2593692 (exprs!8226 ct2!346))))))

(declare-fun lt!2593691 () Unit!164190)

(assert (=> b!7268794 (= lt!2593691 (lemmaConcatPreservesForall!1543 lt!2593692 (exprs!8226 ct2!346) lambda!448078))))

(declare-fun lt!2593702 () Unit!164190)

(assert (=> b!7268794 (= lt!2593702 (lemmaConcatPreservesForall!1543 lt!2593692 (exprs!8226 ct2!346) lambda!448078))))

(declare-fun b!7268795 () Bool)

(declare-fun tp!2040844 () Bool)

(assert (=> b!7268795 (= e!4358871 tp!2040844)))

(declare-fun b!7268796 () Bool)

(declare-fun res!2946782 () Bool)

(assert (=> b!7268796 (=> res!2946782 e!4358873)))

(declare-fun isEmpty!40689 (List!70888) Bool)

(assert (=> b!7268796 (= res!2946782 (isEmpty!40689 (exprs!8226 ct1!250)))))

(declare-fun b!7268797 () Bool)

(declare-fun tp!2040845 () Bool)

(assert (=> b!7268797 (= e!4358868 tp!2040845)))

(assert (= (and start!709156 res!2946779) b!7268787))

(assert (= (and b!7268787 res!2946778) b!7268786))

(assert (= (and b!7268786 res!2946784) b!7268790))

(assert (= (and b!7268790 (not res!2946780)) b!7268789))

(assert (= (and b!7268789 (not res!2946785)) b!7268796))

(assert (= (and b!7268796 (not res!2946782)) b!7268788))

(assert (= (and b!7268788 (not res!2946786)) b!7268792))

(assert (= (and b!7268792 (not res!2946781)) b!7268794))

(assert (= (and b!7268794 (not res!2946783)) b!7268791))

(assert (= start!709156 b!7268795))

(assert (= (and start!709156 (is-Cons!70763 s!7854)) b!7268793))

(assert (= start!709156 b!7268797))

(declare-fun m!7953902 () Bool)

(assert (=> start!709156 m!7953902))

(assert (=> start!709156 m!7953902))

(declare-fun m!7953904 () Bool)

(assert (=> start!709156 m!7953904))

(declare-fun m!7953906 () Bool)

(assert (=> start!709156 m!7953906))

(declare-fun m!7953908 () Bool)

(assert (=> start!709156 m!7953908))

(declare-fun m!7953910 () Bool)

(assert (=> b!7268788 m!7953910))

(declare-fun m!7953912 () Bool)

(assert (=> b!7268788 m!7953912))

(declare-fun m!7953914 () Bool)

(assert (=> b!7268788 m!7953914))

(declare-fun m!7953916 () Bool)

(assert (=> b!7268791 m!7953916))

(declare-fun m!7953918 () Bool)

(assert (=> b!7268791 m!7953918))

(declare-fun m!7953920 () Bool)

(assert (=> b!7268791 m!7953920))

(declare-fun m!7953922 () Bool)

(assert (=> b!7268791 m!7953922))

(declare-fun m!7953924 () Bool)

(assert (=> b!7268791 m!7953924))

(declare-fun m!7953926 () Bool)

(assert (=> b!7268791 m!7953926))

(declare-fun m!7953928 () Bool)

(assert (=> b!7268791 m!7953928))

(assert (=> b!7268791 m!7953926))

(declare-fun m!7953930 () Bool)

(assert (=> b!7268791 m!7953930))

(assert (=> b!7268791 m!7953926))

(assert (=> b!7268791 m!7953926))

(declare-fun m!7953932 () Bool)

(assert (=> b!7268796 m!7953932))

(declare-fun m!7953934 () Bool)

(assert (=> b!7268787 m!7953934))

(declare-fun m!7953936 () Bool)

(assert (=> b!7268794 m!7953936))

(assert (=> b!7268794 m!7953926))

(declare-fun m!7953938 () Bool)

(assert (=> b!7268794 m!7953938))

(assert (=> b!7268794 m!7953926))

(assert (=> b!7268794 m!7953930))

(declare-fun m!7953940 () Bool)

(assert (=> b!7268792 m!7953940))

(declare-fun m!7953942 () Bool)

(assert (=> b!7268792 m!7953942))

(declare-fun m!7953944 () Bool)

(assert (=> b!7268790 m!7953944))

(declare-fun m!7953946 () Bool)

(assert (=> b!7268790 m!7953946))

(declare-fun m!7953948 () Bool)

(assert (=> b!7268790 m!7953948))

(assert (=> b!7268790 m!7953912))

(declare-fun m!7953950 () Bool)

(assert (=> b!7268790 m!7953950))

(declare-fun m!7953952 () Bool)

(assert (=> b!7268790 m!7953952))

(assert (=> b!7268790 m!7953946))

(declare-fun m!7953954 () Bool)

(assert (=> b!7268790 m!7953954))

(declare-fun m!7953956 () Bool)

(assert (=> b!7268790 m!7953956))

(declare-fun m!7953958 () Bool)

(assert (=> b!7268790 m!7953958))

(declare-fun m!7953960 () Bool)

(assert (=> b!7268790 m!7953960))

(declare-fun m!7953962 () Bool)

(assert (=> b!7268790 m!7953962))

(assert (=> b!7268790 m!7953946))

(assert (=> b!7268790 m!7953946))

(push 1)

(assert (not b!7268788))

(assert (not b!7268797))

(assert (not b!7268796))

(assert (not b!7268790))

(assert (not b!7268792))

(assert (not b!7268795))

(assert tp_is_empty!47037)

(assert (not start!709156))

(assert (not b!7268791))

(assert (not b!7268787))

(assert (not b!7268794))

(assert (not b!7268793))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2261748 () Bool)

(declare-fun c!1352840 () Bool)

(assert (=> d!2261748 (= c!1352840 (and (is-ElementMatch!18786 (h!77212 (exprs!8226 ct1!250))) (= (c!1352820 (h!77212 (exprs!8226 ct1!250))) (h!77211 s!7854))))))

(declare-fun e!4358913 () (Set Context!15452))

(assert (=> d!2261748 (= (derivationStepZipperDown!2720 (h!77212 (exprs!8226 ct1!250)) lt!2593696 (h!77211 s!7854)) e!4358913)))

(declare-fun bm!662749 () Bool)

(declare-fun call!662754 () (Set Context!15452))

(declare-fun call!662756 () (Set Context!15452))

(assert (=> bm!662749 (= call!662754 call!662756)))

(declare-fun b!7268860 () Bool)

(declare-fun e!4358912 () (Set Context!15452))

(declare-fun call!662757 () (Set Context!15452))

(assert (=> b!7268860 (= e!4358912 (set.union call!662757 call!662754))))

(declare-fun b!7268861 () Bool)

(declare-fun e!4358908 () (Set Context!15452))

(declare-fun call!662759 () (Set Context!15452))

(assert (=> b!7268861 (= e!4358908 call!662759)))

(declare-fun bm!662750 () Bool)

(declare-fun call!662755 () List!70888)

(declare-fun call!662758 () List!70888)

(assert (=> bm!662750 (= call!662755 call!662758)))

(declare-fun b!7268862 () Bool)

(assert (=> b!7268862 (= e!4358913 (set.insert lt!2593696 (as set.empty (Set Context!15452))))))

(declare-fun b!7268863 () Bool)

(assert (=> b!7268863 (= e!4358908 (as set.empty (Set Context!15452)))))

(declare-fun bm!662751 () Bool)

(assert (=> bm!662751 (= call!662759 call!662754)))

(declare-fun b!7268864 () Bool)

(declare-fun c!1352838 () Bool)

(assert (=> b!7268864 (= c!1352838 (is-Star!18786 (h!77212 (exprs!8226 ct1!250))))))

(declare-fun e!4358911 () (Set Context!15452))

(assert (=> b!7268864 (= e!4358911 e!4358908)))

(declare-fun c!1352841 () Bool)

(declare-fun bm!662752 () Bool)

(declare-fun c!1352842 () Bool)

(declare-fun c!1352839 () Bool)

(assert (=> bm!662752 (= call!662756 (derivationStepZipperDown!2720 (ite c!1352842 (regOne!38085 (h!77212 (exprs!8226 ct1!250))) (ite c!1352839 (regTwo!38084 (h!77212 (exprs!8226 ct1!250))) (ite c!1352841 (regOne!38084 (h!77212 (exprs!8226 ct1!250))) (reg!19115 (h!77212 (exprs!8226 ct1!250)))))) (ite (or c!1352842 c!1352839) lt!2593696 (Context!15453 call!662755)) (h!77211 s!7854)))))

(declare-fun bm!662753 () Bool)

(declare-fun $colon$colon!2960 (List!70888 Regex!18786) List!70888)

(assert (=> bm!662753 (= call!662758 ($colon$colon!2960 (exprs!8226 lt!2593696) (ite (or c!1352839 c!1352841) (regTwo!38084 (h!77212 (exprs!8226 ct1!250))) (h!77212 (exprs!8226 ct1!250)))))))

(declare-fun b!7268865 () Bool)

(declare-fun e!4358910 () Bool)

(assert (=> b!7268865 (= e!4358910 (nullable!7986 (regOne!38084 (h!77212 (exprs!8226 ct1!250)))))))

(declare-fun b!7268866 () Bool)

(assert (=> b!7268866 (= c!1352839 e!4358910)))

(declare-fun res!2946816 () Bool)

(assert (=> b!7268866 (=> (not res!2946816) (not e!4358910))))

(assert (=> b!7268866 (= res!2946816 (is-Concat!27631 (h!77212 (exprs!8226 ct1!250))))))

(declare-fun e!4358909 () (Set Context!15452))

(assert (=> b!7268866 (= e!4358909 e!4358912)))

(declare-fun bm!662754 () Bool)

(assert (=> bm!662754 (= call!662757 (derivationStepZipperDown!2720 (ite c!1352842 (regTwo!38085 (h!77212 (exprs!8226 ct1!250))) (regOne!38084 (h!77212 (exprs!8226 ct1!250)))) (ite c!1352842 lt!2593696 (Context!15453 call!662758)) (h!77211 s!7854)))))

(declare-fun b!7268867 () Bool)

(assert (=> b!7268867 (= e!4358912 e!4358911)))

(assert (=> b!7268867 (= c!1352841 (is-Concat!27631 (h!77212 (exprs!8226 ct1!250))))))

(declare-fun b!7268868 () Bool)

(assert (=> b!7268868 (= e!4358911 call!662759)))

(declare-fun b!7268869 () Bool)

(assert (=> b!7268869 (= e!4358913 e!4358909)))

(assert (=> b!7268869 (= c!1352842 (is-Union!18786 (h!77212 (exprs!8226 ct1!250))))))

(declare-fun b!7268870 () Bool)

(assert (=> b!7268870 (= e!4358909 (set.union call!662756 call!662757))))

(assert (= (and d!2261748 c!1352840) b!7268862))

(assert (= (and d!2261748 (not c!1352840)) b!7268869))

(assert (= (and b!7268869 c!1352842) b!7268870))

(assert (= (and b!7268869 (not c!1352842)) b!7268866))

(assert (= (and b!7268866 res!2946816) b!7268865))

(assert (= (and b!7268866 c!1352839) b!7268860))

(assert (= (and b!7268866 (not c!1352839)) b!7268867))

(assert (= (and b!7268867 c!1352841) b!7268868))

(assert (= (and b!7268867 (not c!1352841)) b!7268864))

(assert (= (and b!7268864 c!1352838) b!7268861))

(assert (= (and b!7268864 (not c!1352838)) b!7268863))

(assert (= (or b!7268868 b!7268861) bm!662750))

(assert (= (or b!7268868 b!7268861) bm!662751))

(assert (= (or b!7268860 bm!662750) bm!662753))

(assert (= (or b!7268860 bm!662751) bm!662749))

(assert (= (or b!7268870 bm!662749) bm!662752))

(assert (= (or b!7268870 b!7268860) bm!662754))

(declare-fun m!7954026 () Bool)

(assert (=> b!7268865 m!7954026))

(declare-fun m!7954028 () Bool)

(assert (=> bm!662754 m!7954028))

(declare-fun m!7954030 () Bool)

(assert (=> bm!662752 m!7954030))

(declare-fun m!7954032 () Bool)

(assert (=> bm!662753 m!7954032))

(declare-fun m!7954034 () Bool)

(assert (=> b!7268862 m!7954034))

(assert (=> b!7268792 d!2261748))

(declare-fun b!7268882 () Bool)

(declare-fun e!4358922 () (Set Context!15452))

(declare-fun call!662762 () (Set Context!15452))

(assert (=> b!7268882 (= e!4358922 call!662762)))

(declare-fun b!7268883 () Bool)

(declare-fun e!4358920 () (Set Context!15452))

(assert (=> b!7268883 (= e!4358920 (set.union call!662762 (derivationStepZipperUp!2556 (Context!15453 (t!384958 (exprs!8226 lt!2593696))) (h!77211 s!7854))))))

(declare-fun b!7268884 () Bool)

(assert (=> b!7268884 (= e!4358922 (as set.empty (Set Context!15452)))))

(declare-fun d!2261750 () Bool)

(declare-fun c!1352847 () Bool)

(declare-fun e!4358921 () Bool)

(assert (=> d!2261750 (= c!1352847 e!4358921)))

(declare-fun res!2946819 () Bool)

(assert (=> d!2261750 (=> (not res!2946819) (not e!4358921))))

(assert (=> d!2261750 (= res!2946819 (is-Cons!70764 (exprs!8226 lt!2593696)))))

(assert (=> d!2261750 (= (derivationStepZipperUp!2556 lt!2593696 (h!77211 s!7854)) e!4358920)))

(declare-fun b!7268881 () Bool)

(assert (=> b!7268881 (= e!4358921 (nullable!7986 (h!77212 (exprs!8226 lt!2593696))))))

(declare-fun bm!662757 () Bool)

(assert (=> bm!662757 (= call!662762 (derivationStepZipperDown!2720 (h!77212 (exprs!8226 lt!2593696)) (Context!15453 (t!384958 (exprs!8226 lt!2593696))) (h!77211 s!7854)))))

(declare-fun b!7268885 () Bool)

(assert (=> b!7268885 (= e!4358920 e!4358922)))

(declare-fun c!1352848 () Bool)

(assert (=> b!7268885 (= c!1352848 (is-Cons!70764 (exprs!8226 lt!2593696)))))

(assert (= (and d!2261750 res!2946819) b!7268881))

(assert (= (and d!2261750 c!1352847) b!7268883))

(assert (= (and d!2261750 (not c!1352847)) b!7268885))

(assert (= (and b!7268885 c!1352848) b!7268882))

(assert (= (and b!7268885 (not c!1352848)) b!7268884))

(assert (= (or b!7268883 b!7268882) bm!662757))

(declare-fun m!7954036 () Bool)

(assert (=> b!7268883 m!7954036))

(declare-fun m!7954038 () Bool)

(assert (=> b!7268881 m!7954038))

(declare-fun m!7954040 () Bool)

(assert (=> bm!662757 m!7954040))

(assert (=> b!7268792 d!2261750))

(declare-fun bs!1910687 () Bool)

(declare-fun d!2261754 () Bool)

(assert (= bs!1910687 (and d!2261754 b!7268790)))

(declare-fun lambda!448112 () Int)

(assert (=> bs!1910687 (not (= lambda!448112 lambda!448078))))

(assert (=> d!2261754 (= (nullableContext!276 ct1!250) (forall!17615 (exprs!8226 ct1!250) lambda!448112))))

(declare-fun bs!1910688 () Bool)

(assert (= bs!1910688 d!2261754))

(declare-fun m!7954042 () Bool)

(assert (=> bs!1910688 m!7954042))

(assert (=> b!7268787 d!2261754))

(declare-fun d!2261756 () Bool)

(declare-fun nullableFct!3146 (Regex!18786) Bool)

(assert (=> d!2261756 (= (nullable!7986 (h!77212 (exprs!8226 ct1!250))) (nullableFct!3146 (h!77212 (exprs!8226 ct1!250))))))

(declare-fun bs!1910689 () Bool)

(assert (= bs!1910689 d!2261756))

(declare-fun m!7954044 () Bool)

(assert (=> bs!1910689 m!7954044))

(assert (=> b!7268788 d!2261756))

(declare-fun b!7268887 () Bool)

(declare-fun e!4358925 () (Set Context!15452))

(declare-fun call!662763 () (Set Context!15452))

(assert (=> b!7268887 (= e!4358925 call!662763)))

(declare-fun b!7268888 () Bool)

(declare-fun e!4358923 () (Set Context!15452))

(assert (=> b!7268888 (= e!4358923 (set.union call!662763 (derivationStepZipperUp!2556 (Context!15453 (t!384958 (exprs!8226 ct1!250))) (h!77211 s!7854))))))

(declare-fun b!7268889 () Bool)

(assert (=> b!7268889 (= e!4358925 (as set.empty (Set Context!15452)))))

(declare-fun d!2261758 () Bool)

(declare-fun c!1352850 () Bool)

(declare-fun e!4358924 () Bool)

(assert (=> d!2261758 (= c!1352850 e!4358924)))

(declare-fun res!2946820 () Bool)

(assert (=> d!2261758 (=> (not res!2946820) (not e!4358924))))

(assert (=> d!2261758 (= res!2946820 (is-Cons!70764 (exprs!8226 ct1!250)))))

(assert (=> d!2261758 (= (derivationStepZipperUp!2556 ct1!250 (h!77211 s!7854)) e!4358923)))

(declare-fun b!7268886 () Bool)

(assert (=> b!7268886 (= e!4358924 (nullable!7986 (h!77212 (exprs!8226 ct1!250))))))

(declare-fun bm!662758 () Bool)

(assert (=> bm!662758 (= call!662763 (derivationStepZipperDown!2720 (h!77212 (exprs!8226 ct1!250)) (Context!15453 (t!384958 (exprs!8226 ct1!250))) (h!77211 s!7854)))))

(declare-fun b!7268890 () Bool)

(assert (=> b!7268890 (= e!4358923 e!4358925)))

(declare-fun c!1352851 () Bool)

(assert (=> b!7268890 (= c!1352851 (is-Cons!70764 (exprs!8226 ct1!250)))))

(assert (= (and d!2261758 res!2946820) b!7268886))

(assert (= (and d!2261758 c!1352850) b!7268888))

(assert (= (and d!2261758 (not c!1352850)) b!7268890))

(assert (= (and b!7268890 c!1352851) b!7268887))

(assert (= (and b!7268890 (not c!1352851)) b!7268889))

(assert (= (or b!7268888 b!7268887) bm!662758))

(declare-fun m!7954046 () Bool)

(assert (=> b!7268888 m!7954046))

(assert (=> b!7268886 m!7953910))

(declare-fun m!7954048 () Bool)

(assert (=> bm!662758 m!7954048))

(assert (=> b!7268788 d!2261758))

(declare-fun d!2261760 () Bool)

(assert (=> d!2261760 (= (tail!14476 (exprs!8226 ct1!250)) (t!384958 (exprs!8226 ct1!250)))))

(assert (=> b!7268788 d!2261760))

(declare-fun d!2261762 () Bool)

(assert (=> d!2261762 (forall!17615 (++!16686 lt!2593692 (exprs!8226 ct2!346)) lambda!448078)))

(declare-fun lt!2593785 () Unit!164190)

(declare-fun choose!56362 (List!70888 List!70888 Int) Unit!164190)

(assert (=> d!2261762 (= lt!2593785 (choose!56362 lt!2593692 (exprs!8226 ct2!346) lambda!448078))))

(assert (=> d!2261762 (forall!17615 lt!2593692 lambda!448078)))

(assert (=> d!2261762 (= (lemmaConcatPreservesForall!1543 lt!2593692 (exprs!8226 ct2!346) lambda!448078) lt!2593785)))

(declare-fun bs!1910691 () Bool)

(assert (= bs!1910691 d!2261762))

(assert (=> bs!1910691 m!7953936))

(assert (=> bs!1910691 m!7953936))

(declare-fun m!7954054 () Bool)

(assert (=> bs!1910691 m!7954054))

(declare-fun m!7954056 () Bool)

(assert (=> bs!1910691 m!7954056))

(assert (=> bs!1910691 m!7953918))

(assert (=> b!7268794 d!2261762))

(declare-fun b!7268892 () Bool)

(declare-fun e!4358928 () (Set Context!15452))

(declare-fun call!662764 () (Set Context!15452))

(assert (=> b!7268892 (= e!4358928 call!662764)))

(declare-fun e!4358926 () (Set Context!15452))

(declare-fun b!7268893 () Bool)

(assert (=> b!7268893 (= e!4358926 (set.union call!662764 (derivationStepZipperUp!2556 (Context!15453 (t!384958 (exprs!8226 lt!2593700))) (h!77211 s!7854))))))

(declare-fun b!7268894 () Bool)

(assert (=> b!7268894 (= e!4358928 (as set.empty (Set Context!15452)))))

(declare-fun d!2261766 () Bool)

(declare-fun c!1352852 () Bool)

(declare-fun e!4358927 () Bool)

(assert (=> d!2261766 (= c!1352852 e!4358927)))

(declare-fun res!2946821 () Bool)

(assert (=> d!2261766 (=> (not res!2946821) (not e!4358927))))

(assert (=> d!2261766 (= res!2946821 (is-Cons!70764 (exprs!8226 lt!2593700)))))

(assert (=> d!2261766 (= (derivationStepZipperUp!2556 lt!2593700 (h!77211 s!7854)) e!4358926)))

(declare-fun b!7268891 () Bool)

(assert (=> b!7268891 (= e!4358927 (nullable!7986 (h!77212 (exprs!8226 lt!2593700))))))

(declare-fun bm!662759 () Bool)

(assert (=> bm!662759 (= call!662764 (derivationStepZipperDown!2720 (h!77212 (exprs!8226 lt!2593700)) (Context!15453 (t!384958 (exprs!8226 lt!2593700))) (h!77211 s!7854)))))

(declare-fun b!7268895 () Bool)

(assert (=> b!7268895 (= e!4358926 e!4358928)))

(declare-fun c!1352853 () Bool)

(assert (=> b!7268895 (= c!1352853 (is-Cons!70764 (exprs!8226 lt!2593700)))))

(assert (= (and d!2261766 res!2946821) b!7268891))

(assert (= (and d!2261766 c!1352852) b!7268893))

(assert (= (and d!2261766 (not c!1352852)) b!7268895))

(assert (= (and b!7268895 c!1352853) b!7268892))

(assert (= (and b!7268895 (not c!1352853)) b!7268894))

(assert (= (or b!7268893 b!7268892) bm!662759))

(declare-fun m!7954058 () Bool)

(assert (=> b!7268893 m!7954058))

(declare-fun m!7954060 () Bool)

(assert (=> b!7268891 m!7954060))

(declare-fun m!7954062 () Bool)

(assert (=> bm!662759 m!7954062))

(assert (=> b!7268794 d!2261766))

(declare-fun lt!2593788 () List!70888)

(declare-fun e!4358934 () Bool)

(declare-fun b!7268907 () Bool)

(assert (=> b!7268907 (= e!4358934 (or (not (= (exprs!8226 ct2!346) Nil!70764)) (= lt!2593788 lt!2593692)))))

(declare-fun b!7268904 () Bool)

(declare-fun e!4358933 () List!70888)

(assert (=> b!7268904 (= e!4358933 (exprs!8226 ct2!346))))

(declare-fun d!2261768 () Bool)

(assert (=> d!2261768 e!4358934))

(declare-fun res!2946826 () Bool)

(assert (=> d!2261768 (=> (not res!2946826) (not e!4358934))))

(declare-fun content!14764 (List!70888) (Set Regex!18786))

(assert (=> d!2261768 (= res!2946826 (= (content!14764 lt!2593788) (set.union (content!14764 lt!2593692) (content!14764 (exprs!8226 ct2!346)))))))

(assert (=> d!2261768 (= lt!2593788 e!4358933)))

(declare-fun c!1352856 () Bool)

(assert (=> d!2261768 (= c!1352856 (is-Nil!70764 lt!2593692))))

(assert (=> d!2261768 (= (++!16686 lt!2593692 (exprs!8226 ct2!346)) lt!2593788)))

(declare-fun b!7268905 () Bool)

(assert (=> b!7268905 (= e!4358933 (Cons!70764 (h!77212 lt!2593692) (++!16686 (t!384958 lt!2593692) (exprs!8226 ct2!346))))))

(declare-fun b!7268906 () Bool)

(declare-fun res!2946827 () Bool)

(assert (=> b!7268906 (=> (not res!2946827) (not e!4358934))))

(declare-fun size!41812 (List!70888) Int)

(assert (=> b!7268906 (= res!2946827 (= (size!41812 lt!2593788) (+ (size!41812 lt!2593692) (size!41812 (exprs!8226 ct2!346)))))))

(assert (= (and d!2261768 c!1352856) b!7268904))

(assert (= (and d!2261768 (not c!1352856)) b!7268905))

(assert (= (and d!2261768 res!2946826) b!7268906))

(assert (= (and b!7268906 res!2946827) b!7268907))

(declare-fun m!7954064 () Bool)

(assert (=> d!2261768 m!7954064))

(declare-fun m!7954066 () Bool)

(assert (=> d!2261768 m!7954066))

(declare-fun m!7954068 () Bool)

(assert (=> d!2261768 m!7954068))

(declare-fun m!7954070 () Bool)

(assert (=> b!7268905 m!7954070))

(declare-fun m!7954072 () Bool)

(assert (=> b!7268906 m!7954072))

(declare-fun m!7954074 () Bool)

(assert (=> b!7268906 m!7954074))

(declare-fun m!7954076 () Bool)

(assert (=> b!7268906 m!7954076))

(assert (=> b!7268794 d!2261768))

(declare-fun d!2261770 () Bool)

(declare-fun c!1352859 () Bool)

(assert (=> d!2261770 (= c!1352859 (and (is-ElementMatch!18786 (h!77212 (exprs!8226 ct1!250))) (= (c!1352820 (h!77212 (exprs!8226 ct1!250))) (h!77211 s!7854))))))

(declare-fun e!4358940 () (Set Context!15452))

(assert (=> d!2261770 (= (derivationStepZipperDown!2720 (h!77212 (exprs!8226 ct1!250)) lt!2593700 (h!77211 s!7854)) e!4358940)))

(declare-fun bm!662760 () Bool)

(declare-fun call!662765 () (Set Context!15452))

(declare-fun call!662767 () (Set Context!15452))

(assert (=> bm!662760 (= call!662765 call!662767)))

(declare-fun b!7268908 () Bool)

(declare-fun e!4358939 () (Set Context!15452))

(declare-fun call!662768 () (Set Context!15452))

(assert (=> b!7268908 (= e!4358939 (set.union call!662768 call!662765))))

(declare-fun b!7268909 () Bool)

(declare-fun e!4358935 () (Set Context!15452))

(declare-fun call!662770 () (Set Context!15452))

(assert (=> b!7268909 (= e!4358935 call!662770)))

(declare-fun bm!662761 () Bool)

(declare-fun call!662766 () List!70888)

(declare-fun call!662769 () List!70888)

(assert (=> bm!662761 (= call!662766 call!662769)))

(declare-fun b!7268910 () Bool)

(assert (=> b!7268910 (= e!4358940 (set.insert lt!2593700 (as set.empty (Set Context!15452))))))

(declare-fun b!7268911 () Bool)

(assert (=> b!7268911 (= e!4358935 (as set.empty (Set Context!15452)))))

(declare-fun bm!662762 () Bool)

(assert (=> bm!662762 (= call!662770 call!662765)))

(declare-fun b!7268912 () Bool)

(declare-fun c!1352857 () Bool)

(assert (=> b!7268912 (= c!1352857 (is-Star!18786 (h!77212 (exprs!8226 ct1!250))))))

(declare-fun e!4358938 () (Set Context!15452))

(assert (=> b!7268912 (= e!4358938 e!4358935)))

(declare-fun c!1352860 () Bool)

(declare-fun c!1352858 () Bool)

(declare-fun bm!662763 () Bool)

(declare-fun c!1352861 () Bool)

(assert (=> bm!662763 (= call!662767 (derivationStepZipperDown!2720 (ite c!1352861 (regOne!38085 (h!77212 (exprs!8226 ct1!250))) (ite c!1352858 (regTwo!38084 (h!77212 (exprs!8226 ct1!250))) (ite c!1352860 (regOne!38084 (h!77212 (exprs!8226 ct1!250))) (reg!19115 (h!77212 (exprs!8226 ct1!250)))))) (ite (or c!1352861 c!1352858) lt!2593700 (Context!15453 call!662766)) (h!77211 s!7854)))))

(declare-fun bm!662764 () Bool)

(assert (=> bm!662764 (= call!662769 ($colon$colon!2960 (exprs!8226 lt!2593700) (ite (or c!1352858 c!1352860) (regTwo!38084 (h!77212 (exprs!8226 ct1!250))) (h!77212 (exprs!8226 ct1!250)))))))

(declare-fun b!7268913 () Bool)

(declare-fun e!4358937 () Bool)

(assert (=> b!7268913 (= e!4358937 (nullable!7986 (regOne!38084 (h!77212 (exprs!8226 ct1!250)))))))

(declare-fun b!7268914 () Bool)

(assert (=> b!7268914 (= c!1352858 e!4358937)))

(declare-fun res!2946828 () Bool)

(assert (=> b!7268914 (=> (not res!2946828) (not e!4358937))))

(assert (=> b!7268914 (= res!2946828 (is-Concat!27631 (h!77212 (exprs!8226 ct1!250))))))

(declare-fun e!4358936 () (Set Context!15452))

(assert (=> b!7268914 (= e!4358936 e!4358939)))

(declare-fun bm!662765 () Bool)

(assert (=> bm!662765 (= call!662768 (derivationStepZipperDown!2720 (ite c!1352861 (regTwo!38085 (h!77212 (exprs!8226 ct1!250))) (regOne!38084 (h!77212 (exprs!8226 ct1!250)))) (ite c!1352861 lt!2593700 (Context!15453 call!662769)) (h!77211 s!7854)))))

(declare-fun b!7268915 () Bool)

(assert (=> b!7268915 (= e!4358939 e!4358938)))

(assert (=> b!7268915 (= c!1352860 (is-Concat!27631 (h!77212 (exprs!8226 ct1!250))))))

(declare-fun b!7268916 () Bool)

(assert (=> b!7268916 (= e!4358938 call!662770)))

(declare-fun b!7268917 () Bool)

(assert (=> b!7268917 (= e!4358940 e!4358936)))

(assert (=> b!7268917 (= c!1352861 (is-Union!18786 (h!77212 (exprs!8226 ct1!250))))))

(declare-fun b!7268918 () Bool)

(assert (=> b!7268918 (= e!4358936 (set.union call!662767 call!662768))))

(assert (= (and d!2261770 c!1352859) b!7268910))

(assert (= (and d!2261770 (not c!1352859)) b!7268917))

(assert (= (and b!7268917 c!1352861) b!7268918))

(assert (= (and b!7268917 (not c!1352861)) b!7268914))

(assert (= (and b!7268914 res!2946828) b!7268913))

(assert (= (and b!7268914 c!1352858) b!7268908))

(assert (= (and b!7268914 (not c!1352858)) b!7268915))

(assert (= (and b!7268915 c!1352860) b!7268916))

(assert (= (and b!7268915 (not c!1352860)) b!7268912))

(assert (= (and b!7268912 c!1352857) b!7268909))

(assert (= (and b!7268912 (not c!1352857)) b!7268911))

(assert (= (or b!7268916 b!7268909) bm!662761))

(assert (= (or b!7268916 b!7268909) bm!662762))

(assert (= (or b!7268908 bm!662761) bm!662764))

(assert (= (or b!7268908 bm!662762) bm!662760))

(assert (= (or b!7268918 bm!662760) bm!662763))

(assert (= (or b!7268918 b!7268908) bm!662765))

(assert (=> b!7268913 m!7954026))

(declare-fun m!7954078 () Bool)

(assert (=> bm!662765 m!7954078))

(declare-fun m!7954080 () Bool)

(assert (=> bm!662763 m!7954080))

(declare-fun m!7954082 () Bool)

(assert (=> bm!662764 m!7954082))

(assert (=> b!7268910 m!7953922))

(assert (=> b!7268794 d!2261770))

(declare-fun d!2261772 () Bool)

(assert (=> d!2261772 (= (isEmpty!40689 (exprs!8226 ct1!250)) (is-Nil!70764 (exprs!8226 ct1!250)))))

(assert (=> b!7268796 d!2261772))

(declare-fun d!2261774 () Bool)

(declare-fun choose!56363 ((Set Context!15452) Int) (Set Context!15452))

(assert (=> d!2261774 (= (flatMap!2899 lt!2593697 lambda!448079) (choose!56363 lt!2593697 lambda!448079))))

(declare-fun bs!1910692 () Bool)

(assert (= bs!1910692 d!2261774))

(declare-fun m!7954084 () Bool)

(assert (=> bs!1910692 m!7954084))

(assert (=> b!7268791 d!2261774))

(declare-fun d!2261776 () Bool)

(declare-fun res!2946833 () Bool)

(declare-fun e!4358945 () Bool)

(assert (=> d!2261776 (=> res!2946833 e!4358945)))

(assert (=> d!2261776 (= res!2946833 (is-Nil!70764 lt!2593692))))

(assert (=> d!2261776 (= (forall!17615 lt!2593692 lambda!448078) e!4358945)))

(declare-fun b!7268923 () Bool)

(declare-fun e!4358946 () Bool)

(assert (=> b!7268923 (= e!4358945 e!4358946)))

(declare-fun res!2946834 () Bool)

(assert (=> b!7268923 (=> (not res!2946834) (not e!4358946))))

(declare-fun dynLambda!28911 (Int Regex!18786) Bool)

(assert (=> b!7268923 (= res!2946834 (dynLambda!28911 lambda!448078 (h!77212 lt!2593692)))))

(declare-fun b!7268924 () Bool)

(assert (=> b!7268924 (= e!4358946 (forall!17615 (t!384958 lt!2593692) lambda!448078))))

(assert (= (and d!2261776 (not res!2946833)) b!7268923))

(assert (= (and b!7268923 res!2946834) b!7268924))

(declare-fun b_lambda!280045 () Bool)

(assert (=> (not b_lambda!280045) (not b!7268923)))

(declare-fun m!7954086 () Bool)

(assert (=> b!7268923 m!7954086))

(declare-fun m!7954088 () Bool)

(assert (=> b!7268924 m!7954088))

(assert (=> b!7268791 d!2261776))

(declare-fun d!2261778 () Bool)

(declare-fun dynLambda!28912 (Int Context!15452) (Set Context!15452))

(assert (=> d!2261778 (= (flatMap!2899 lt!2593697 lambda!448079) (dynLambda!28912 lambda!448079 lt!2593700))))

(declare-fun lt!2593791 () Unit!164190)

(declare-fun choose!56364 ((Set Context!15452) Context!15452 Int) Unit!164190)

(assert (=> d!2261778 (= lt!2593791 (choose!56364 lt!2593697 lt!2593700 lambda!448079))))

(assert (=> d!2261778 (= lt!2593697 (set.insert lt!2593700 (as set.empty (Set Context!15452))))))

(assert (=> d!2261778 (= (lemmaFlatMapOnSingletonSet!2299 lt!2593697 lt!2593700 lambda!448079) lt!2593791)))

(declare-fun b_lambda!280047 () Bool)

(assert (=> (not b_lambda!280047) (not d!2261778)))

(declare-fun bs!1910693 () Bool)

(assert (= bs!1910693 d!2261778))

(assert (=> bs!1910693 m!7953924))

(declare-fun m!7954090 () Bool)

(assert (=> bs!1910693 m!7954090))

(declare-fun m!7954092 () Bool)

(assert (=> bs!1910693 m!7954092))

(assert (=> bs!1910693 m!7953922))

(assert (=> b!7268791 d!2261778))

(assert (=> b!7268791 d!2261766))

(declare-fun bs!1910696 () Bool)

(declare-fun d!2261780 () Bool)

(assert (= bs!1910696 (and d!2261780 b!7268790)))

(declare-fun lambda!448118 () Int)

(assert (=> bs!1910696 (= lambda!448118 lambda!448078)))

(declare-fun bs!1910697 () Bool)

(assert (= bs!1910697 (and d!2261780 d!2261754)))

(assert (=> bs!1910697 (not (= lambda!448118 lambda!448112))))

(assert (=> d!2261780 (matchZipper!3690 (set.insert (Context!15453 (++!16686 (exprs!8226 lt!2593696) (exprs!8226 ct2!346))) (as set.empty (Set Context!15452))) s!7854)))

(declare-fun lt!2593803 () Unit!164190)

(assert (=> d!2261780 (= lt!2593803 (lemmaConcatPreservesForall!1543 (exprs!8226 lt!2593696) (exprs!8226 ct2!346) lambda!448118))))

(declare-fun lt!2593802 () Unit!164190)

(declare-fun choose!56365 (Context!15452 Context!15452 List!70887) Unit!164190)

(assert (=> d!2261780 (= lt!2593802 (choose!56365 lt!2593696 ct2!346 s!7854))))

(assert (=> d!2261780 (matchZipper!3690 (set.insert ct2!346 (as set.empty (Set Context!15452))) s!7854)))

(assert (=> d!2261780 (= (lemmaPrependingNullableCtxStillMatches!23 lt!2593696 ct2!346 s!7854) lt!2593802)))

(declare-fun bs!1910698 () Bool)

(assert (= bs!1910698 d!2261780))

(declare-fun m!7954104 () Bool)

(assert (=> bs!1910698 m!7954104))

(declare-fun m!7954106 () Bool)

(assert (=> bs!1910698 m!7954106))

(declare-fun m!7954108 () Bool)

(assert (=> bs!1910698 m!7954108))

(declare-fun m!7954110 () Bool)

(assert (=> bs!1910698 m!7954110))

(assert (=> bs!1910698 m!7954108))

(declare-fun m!7954112 () Bool)

(assert (=> bs!1910698 m!7954112))

(assert (=> bs!1910698 m!7953902))

(assert (=> bs!1910698 m!7953902))

(assert (=> bs!1910698 m!7953904))

(assert (=> b!7268791 d!2261780))

(assert (=> b!7268791 d!2261762))

(declare-fun d!2261784 () Bool)

(declare-fun c!1352864 () Bool)

(declare-fun isEmpty!40691 (List!70887) Bool)

(assert (=> d!2261784 (= c!1352864 (isEmpty!40691 s!7854))))

(declare-fun e!4358955 () Bool)

(assert (=> d!2261784 (= (matchZipper!3690 lt!2593697 s!7854) e!4358955)))

(declare-fun b!7268935 () Bool)

(declare-fun nullableZipper!2993 ((Set Context!15452)) Bool)

(assert (=> b!7268935 (= e!4358955 (nullableZipper!2993 lt!2593697))))

(declare-fun b!7268936 () Bool)

(declare-fun head!14991 (List!70887) C!37846)

(declare-fun tail!14478 (List!70887) List!70887)

(assert (=> b!7268936 (= e!4358955 (matchZipper!3690 (derivationStepZipper!3526 lt!2593697 (head!14991 s!7854)) (tail!14478 s!7854)))))

(assert (= (and d!2261784 c!1352864) b!7268935))

(assert (= (and d!2261784 (not c!1352864)) b!7268936))

(declare-fun m!7954118 () Bool)

(assert (=> d!2261784 m!7954118))

(declare-fun m!7954120 () Bool)

(assert (=> b!7268935 m!7954120))

(declare-fun m!7954122 () Bool)

(assert (=> b!7268936 m!7954122))

(assert (=> b!7268936 m!7954122))

(declare-fun m!7954124 () Bool)

(assert (=> b!7268936 m!7954124))

(declare-fun m!7954126 () Bool)

(assert (=> b!7268936 m!7954126))

(assert (=> b!7268936 m!7954124))

(assert (=> b!7268936 m!7954126))

(declare-fun m!7954128 () Bool)

(assert (=> b!7268936 m!7954128))

(assert (=> b!7268791 d!2261784))

(declare-fun d!2261788 () Bool)

(assert (=> d!2261788 (= (flatMap!2899 lt!2593695 lambda!448079) (choose!56363 lt!2593695 lambda!448079))))

(declare-fun bs!1910699 () Bool)

(assert (= bs!1910699 d!2261788))

(declare-fun m!7954130 () Bool)

(assert (=> bs!1910699 m!7954130))

(assert (=> b!7268790 d!2261788))

(declare-fun d!2261790 () Bool)

(assert (=> d!2261790 (= (flatMap!2899 lt!2593698 lambda!448079) (choose!56363 lt!2593698 lambda!448079))))

(declare-fun bs!1910700 () Bool)

(assert (= bs!1910700 d!2261790))

(declare-fun m!7954132 () Bool)

(assert (=> bs!1910700 m!7954132))

(assert (=> b!7268790 d!2261790))

(assert (=> b!7268790 d!2261758))

(declare-fun bs!1910701 () Bool)

(declare-fun d!2261792 () Bool)

(assert (= bs!1910701 (and d!2261792 b!7268790)))

(declare-fun lambda!448121 () Int)

(assert (=> bs!1910701 (= lambda!448121 lambda!448079)))

(assert (=> d!2261792 true))

(assert (=> d!2261792 (= (derivationStepZipper!3526 lt!2593695 (h!77211 s!7854)) (flatMap!2899 lt!2593695 lambda!448121))))

(declare-fun bs!1910702 () Bool)

(assert (= bs!1910702 d!2261792))

(declare-fun m!7954134 () Bool)

(assert (=> bs!1910702 m!7954134))

(assert (=> b!7268790 d!2261792))

(declare-fun lt!2593804 () List!70888)

(declare-fun e!4358957 () Bool)

(declare-fun b!7268942 () Bool)

(assert (=> b!7268942 (= e!4358957 (or (not (= (exprs!8226 ct2!346) Nil!70764)) (= lt!2593804 (exprs!8226 ct1!250))))))

(declare-fun b!7268939 () Bool)

(declare-fun e!4358956 () List!70888)

(assert (=> b!7268939 (= e!4358956 (exprs!8226 ct2!346))))

(declare-fun d!2261794 () Bool)

(assert (=> d!2261794 e!4358957))

(declare-fun res!2946841 () Bool)

(assert (=> d!2261794 (=> (not res!2946841) (not e!4358957))))

(assert (=> d!2261794 (= res!2946841 (= (content!14764 lt!2593804) (set.union (content!14764 (exprs!8226 ct1!250)) (content!14764 (exprs!8226 ct2!346)))))))

(assert (=> d!2261794 (= lt!2593804 e!4358956)))

(declare-fun c!1352867 () Bool)

(assert (=> d!2261794 (= c!1352867 (is-Nil!70764 (exprs!8226 ct1!250)))))

(assert (=> d!2261794 (= (++!16686 (exprs!8226 ct1!250) (exprs!8226 ct2!346)) lt!2593804)))

(declare-fun b!7268940 () Bool)

(assert (=> b!7268940 (= e!4358956 (Cons!70764 (h!77212 (exprs!8226 ct1!250)) (++!16686 (t!384958 (exprs!8226 ct1!250)) (exprs!8226 ct2!346))))))

(declare-fun b!7268941 () Bool)

(declare-fun res!2946842 () Bool)

(assert (=> b!7268941 (=> (not res!2946842) (not e!4358957))))

(assert (=> b!7268941 (= res!2946842 (= (size!41812 lt!2593804) (+ (size!41812 (exprs!8226 ct1!250)) (size!41812 (exprs!8226 ct2!346)))))))

(assert (= (and d!2261794 c!1352867) b!7268939))

(assert (= (and d!2261794 (not c!1352867)) b!7268940))

(assert (= (and d!2261794 res!2946841) b!7268941))

(assert (= (and b!7268941 res!2946842) b!7268942))

(declare-fun m!7954136 () Bool)

(assert (=> d!2261794 m!7954136))

(declare-fun m!7954138 () Bool)

(assert (=> d!2261794 m!7954138))

(assert (=> d!2261794 m!7954068))

(declare-fun m!7954140 () Bool)

(assert (=> b!7268940 m!7954140))

(declare-fun m!7954142 () Bool)

(assert (=> b!7268941 m!7954142))

(declare-fun m!7954144 () Bool)

(assert (=> b!7268941 m!7954144))

(assert (=> b!7268941 m!7954076))

(assert (=> b!7268790 d!2261794))

(declare-fun b!7268944 () Bool)

(declare-fun e!4358960 () (Set Context!15452))

(declare-fun call!662771 () (Set Context!15452))

(assert (=> b!7268944 (= e!4358960 call!662771)))

(declare-fun e!4358958 () (Set Context!15452))

(declare-fun b!7268945 () Bool)

(assert (=> b!7268945 (= e!4358958 (set.union call!662771 (derivationStepZipperUp!2556 (Context!15453 (t!384958 (exprs!8226 lt!2593707))) (h!77211 s!7854))))))

(declare-fun b!7268946 () Bool)

(assert (=> b!7268946 (= e!4358960 (as set.empty (Set Context!15452)))))

(declare-fun d!2261796 () Bool)

(declare-fun c!1352868 () Bool)

(declare-fun e!4358959 () Bool)

(assert (=> d!2261796 (= c!1352868 e!4358959)))

(declare-fun res!2946843 () Bool)

(assert (=> d!2261796 (=> (not res!2946843) (not e!4358959))))

(assert (=> d!2261796 (= res!2946843 (is-Cons!70764 (exprs!8226 lt!2593707)))))

(assert (=> d!2261796 (= (derivationStepZipperUp!2556 lt!2593707 (h!77211 s!7854)) e!4358958)))

(declare-fun b!7268943 () Bool)

(assert (=> b!7268943 (= e!4358959 (nullable!7986 (h!77212 (exprs!8226 lt!2593707))))))

(declare-fun bm!662766 () Bool)

(assert (=> bm!662766 (= call!662771 (derivationStepZipperDown!2720 (h!77212 (exprs!8226 lt!2593707)) (Context!15453 (t!384958 (exprs!8226 lt!2593707))) (h!77211 s!7854)))))

(declare-fun b!7268947 () Bool)

(assert (=> b!7268947 (= e!4358958 e!4358960)))

(declare-fun c!1352869 () Bool)

(assert (=> b!7268947 (= c!1352869 (is-Cons!70764 (exprs!8226 lt!2593707)))))

(assert (= (and d!2261796 res!2946843) b!7268943))

(assert (= (and d!2261796 c!1352868) b!7268945))

(assert (= (and d!2261796 (not c!1352868)) b!7268947))

(assert (= (and b!7268947 c!1352869) b!7268944))

(assert (= (and b!7268947 (not c!1352869)) b!7268946))

(assert (= (or b!7268945 b!7268944) bm!662766))

(declare-fun m!7954146 () Bool)

(assert (=> b!7268945 m!7954146))

(declare-fun m!7954148 () Bool)

(assert (=> b!7268943 m!7954148))

(declare-fun m!7954150 () Bool)

(assert (=> bm!662766 m!7954150))

(assert (=> b!7268790 d!2261796))

(declare-fun d!2261798 () Bool)

(assert (=> d!2261798 (forall!17615 (++!16686 (exprs!8226 ct1!250) (exprs!8226 ct2!346)) lambda!448078)))

(declare-fun lt!2593805 () Unit!164190)

(assert (=> d!2261798 (= lt!2593805 (choose!56362 (exprs!8226 ct1!250) (exprs!8226 ct2!346) lambda!448078))))

(assert (=> d!2261798 (forall!17615 (exprs!8226 ct1!250) lambda!448078)))

(assert (=> d!2261798 (= (lemmaConcatPreservesForall!1543 (exprs!8226 ct1!250) (exprs!8226 ct2!346) lambda!448078) lt!2593805)))

(declare-fun bs!1910703 () Bool)

(assert (= bs!1910703 d!2261798))

(assert (=> bs!1910703 m!7953962))

(assert (=> bs!1910703 m!7953962))

(declare-fun m!7954152 () Bool)

(assert (=> bs!1910703 m!7954152))

(declare-fun m!7954154 () Bool)

(assert (=> bs!1910703 m!7954154))

(declare-fun m!7954156 () Bool)

(assert (=> bs!1910703 m!7954156))

(assert (=> b!7268790 d!2261798))

(declare-fun d!2261800 () Bool)

(assert (=> d!2261800 (= (flatMap!2899 lt!2593695 lambda!448079) (dynLambda!28912 lambda!448079 lt!2593707))))

(declare-fun lt!2593806 () Unit!164190)

(assert (=> d!2261800 (= lt!2593806 (choose!56364 lt!2593695 lt!2593707 lambda!448079))))

(assert (=> d!2261800 (= lt!2593695 (set.insert lt!2593707 (as set.empty (Set Context!15452))))))

(assert (=> d!2261800 (= (lemmaFlatMapOnSingletonSet!2299 lt!2593695 lt!2593707 lambda!448079) lt!2593806)))

(declare-fun b_lambda!280051 () Bool)

(assert (=> (not b_lambda!280051) (not d!2261800)))

(declare-fun bs!1910704 () Bool)

(assert (= bs!1910704 d!2261800))

(assert (=> bs!1910704 m!7953950))

(declare-fun m!7954158 () Bool)

(assert (=> bs!1910704 m!7954158))

(declare-fun m!7954160 () Bool)

(assert (=> bs!1910704 m!7954160))

(assert (=> bs!1910704 m!7953948))

(assert (=> b!7268790 d!2261800))

(declare-fun d!2261802 () Bool)

(assert (=> d!2261802 (= (flatMap!2899 lt!2593698 lambda!448079) (dynLambda!28912 lambda!448079 ct1!250))))

(declare-fun lt!2593807 () Unit!164190)

(assert (=> d!2261802 (= lt!2593807 (choose!56364 lt!2593698 ct1!250 lambda!448079))))

(assert (=> d!2261802 (= lt!2593698 (set.insert ct1!250 (as set.empty (Set Context!15452))))))

(assert (=> d!2261802 (= (lemmaFlatMapOnSingletonSet!2299 lt!2593698 ct1!250 lambda!448079) lt!2593807)))

(declare-fun b_lambda!280053 () Bool)

(assert (=> (not b_lambda!280053) (not d!2261802)))

(declare-fun bs!1910705 () Bool)

(assert (= bs!1910705 d!2261802))

(assert (=> bs!1910705 m!7953954))

(declare-fun m!7954162 () Bool)

(assert (=> bs!1910705 m!7954162))

(declare-fun m!7954164 () Bool)

(assert (=> bs!1910705 m!7954164))

(assert (=> bs!1910705 m!7953952))

(assert (=> b!7268790 d!2261802))

(declare-fun d!2261804 () Bool)

(declare-fun c!1352870 () Bool)

(assert (=> d!2261804 (= c!1352870 (isEmpty!40691 s!7854))))

(declare-fun e!4358961 () Bool)

(assert (=> d!2261804 (= (matchZipper!3690 (set.insert ct2!346 (as set.empty (Set Context!15452))) s!7854) e!4358961)))

(declare-fun b!7268948 () Bool)

(assert (=> b!7268948 (= e!4358961 (nullableZipper!2993 (set.insert ct2!346 (as set.empty (Set Context!15452)))))))

(declare-fun b!7268949 () Bool)

(assert (=> b!7268949 (= e!4358961 (matchZipper!3690 (derivationStepZipper!3526 (set.insert ct2!346 (as set.empty (Set Context!15452))) (head!14991 s!7854)) (tail!14478 s!7854)))))

(assert (= (and d!2261804 c!1352870) b!7268948))

(assert (= (and d!2261804 (not c!1352870)) b!7268949))

(assert (=> d!2261804 m!7954118))

(assert (=> b!7268948 m!7953902))

(declare-fun m!7954166 () Bool)

(assert (=> b!7268948 m!7954166))

(assert (=> b!7268949 m!7954122))

(assert (=> b!7268949 m!7953902))

(assert (=> b!7268949 m!7954122))

(declare-fun m!7954168 () Bool)

(assert (=> b!7268949 m!7954168))

(assert (=> b!7268949 m!7954126))

(assert (=> b!7268949 m!7954168))

(assert (=> b!7268949 m!7954126))

(declare-fun m!7954170 () Bool)

(assert (=> b!7268949 m!7954170))

(assert (=> start!709156 d!2261804))

(declare-fun bs!1910706 () Bool)

(declare-fun d!2261806 () Bool)

(assert (= bs!1910706 (and d!2261806 b!7268790)))

(declare-fun lambda!448124 () Int)

(assert (=> bs!1910706 (= lambda!448124 lambda!448078)))

(declare-fun bs!1910707 () Bool)

(assert (= bs!1910707 (and d!2261806 d!2261754)))

(assert (=> bs!1910707 (not (= lambda!448124 lambda!448112))))

(declare-fun bs!1910708 () Bool)

(assert (= bs!1910708 (and d!2261806 d!2261780)))

(assert (=> bs!1910708 (= lambda!448124 lambda!448118)))

(assert (=> d!2261806 (= (inv!89976 ct2!346) (forall!17615 (exprs!8226 ct2!346) lambda!448124))))

(declare-fun bs!1910709 () Bool)

(assert (= bs!1910709 d!2261806))

(declare-fun m!7954172 () Bool)

(assert (=> bs!1910709 m!7954172))

(assert (=> start!709156 d!2261806))

(declare-fun bs!1910710 () Bool)

(declare-fun d!2261808 () Bool)

(assert (= bs!1910710 (and d!2261808 b!7268790)))

(declare-fun lambda!448125 () Int)

(assert (=> bs!1910710 (= lambda!448125 lambda!448078)))

(declare-fun bs!1910711 () Bool)

(assert (= bs!1910711 (and d!2261808 d!2261754)))

(assert (=> bs!1910711 (not (= lambda!448125 lambda!448112))))

(declare-fun bs!1910712 () Bool)

(assert (= bs!1910712 (and d!2261808 d!2261780)))

(assert (=> bs!1910712 (= lambda!448125 lambda!448118)))

(declare-fun bs!1910713 () Bool)

(assert (= bs!1910713 (and d!2261808 d!2261806)))

(assert (=> bs!1910713 (= lambda!448125 lambda!448124)))

(assert (=> d!2261808 (= (inv!89976 ct1!250) (forall!17615 (exprs!8226 ct1!250) lambda!448125))))

(declare-fun bs!1910714 () Bool)

(assert (= bs!1910714 d!2261808))

(declare-fun m!7954174 () Bool)

(assert (=> bs!1910714 m!7954174))

(assert (=> start!709156 d!2261808))

(declare-fun b!7268960 () Bool)

(declare-fun e!4358967 () Bool)

(declare-fun tp!2040859 () Bool)

(declare-fun tp!2040860 () Bool)

(assert (=> b!7268960 (= e!4358967 (and tp!2040859 tp!2040860))))

(assert (=> b!7268797 (= tp!2040845 e!4358967)))

(assert (= (and b!7268797 (is-Cons!70764 (exprs!8226 ct1!250))) b!7268960))

(declare-fun b!7268965 () Bool)

(declare-fun e!4358970 () Bool)

(declare-fun tp!2040863 () Bool)

(assert (=> b!7268965 (= e!4358970 (and tp_is_empty!47037 tp!2040863))))

(assert (=> b!7268793 (= tp!2040843 e!4358970)))

(assert (= (and b!7268793 (is-Cons!70763 (t!384957 s!7854))) b!7268965))

(declare-fun b!7268966 () Bool)

(declare-fun e!4358971 () Bool)

(declare-fun tp!2040864 () Bool)

(declare-fun tp!2040865 () Bool)

(assert (=> b!7268966 (= e!4358971 (and tp!2040864 tp!2040865))))

(assert (=> b!7268795 (= tp!2040844 e!4358971)))

(assert (= (and b!7268795 (is-Cons!70764 (exprs!8226 ct2!346))) b!7268966))

(declare-fun b_lambda!280055 () Bool)

(assert (= b_lambda!280051 (or b!7268790 b_lambda!280055)))

(declare-fun bs!1910715 () Bool)

(declare-fun d!2261810 () Bool)

(assert (= bs!1910715 (and d!2261810 b!7268790)))

(assert (=> bs!1910715 (= (dynLambda!28912 lambda!448079 lt!2593707) (derivationStepZipperUp!2556 lt!2593707 (h!77211 s!7854)))))

(assert (=> bs!1910715 m!7953960))

(assert (=> d!2261800 d!2261810))

(declare-fun b_lambda!280057 () Bool)

(assert (= b_lambda!280047 (or b!7268790 b_lambda!280057)))

(declare-fun bs!1910716 () Bool)

(declare-fun d!2261814 () Bool)

(assert (= bs!1910716 (and d!2261814 b!7268790)))

(assert (=> bs!1910716 (= (dynLambda!28912 lambda!448079 lt!2593700) (derivationStepZipperUp!2556 lt!2593700 (h!77211 s!7854)))))

(assert (=> bs!1910716 m!7953930))

(assert (=> d!2261778 d!2261814))

(declare-fun b_lambda!280059 () Bool)

(assert (= b_lambda!280053 (or b!7268790 b_lambda!280059)))

(declare-fun bs!1910717 () Bool)

(declare-fun d!2261816 () Bool)

(assert (= bs!1910717 (and d!2261816 b!7268790)))

(assert (=> bs!1910717 (= (dynLambda!28912 lambda!448079 ct1!250) (derivationStepZipperUp!2556 ct1!250 (h!77211 s!7854)))))

(assert (=> bs!1910717 m!7953912))

(assert (=> d!2261802 d!2261816))

(declare-fun b_lambda!280061 () Bool)

(assert (= b_lambda!280045 (or b!7268790 b_lambda!280061)))

(declare-fun bs!1910718 () Bool)

(declare-fun d!2261818 () Bool)

(assert (= bs!1910718 (and d!2261818 b!7268790)))

(declare-fun validRegex!9579 (Regex!18786) Bool)

(assert (=> bs!1910718 (= (dynLambda!28911 lambda!448078 (h!77212 lt!2593692)) (validRegex!9579 (h!77212 lt!2593692)))))

(declare-fun m!7954188 () Bool)

(assert (=> bs!1910718 m!7954188))

(assert (=> b!7268923 d!2261818))

(push 1)

(assert (not b!7268906))

(assert (not d!2261754))

(assert (not b!7268936))

(assert (not bm!662766))

(assert (not b!7268893))

(assert (not d!2261802))

(assert (not b!7268949))

(assert (not d!2261800))

(assert (not b!7268905))

(assert (not bm!662754))

(assert (not b!7268945))

(assert (not d!2261784))

(assert (not b!7268865))

(assert (not d!2261798))

(assert (not bm!662759))

(assert (not bm!662757))

(assert (not d!2261774))

(assert (not d!2261804))

(assert (not b_lambda!280057))

(assert (not bm!662763))

(assert (not d!2261790))

(assert (not b!7268881))

(assert (not bs!1910715))

(assert (not b!7268888))

(assert (not b!7268891))

(assert (not d!2261756))

(assert (not d!2261762))

(assert (not b!7268966))

(assert (not b!7268941))

(assert (not d!2261792))

(assert (not d!2261808))

(assert (not b!7268940))

(assert (not bs!1910718))

(assert (not b!7268960))

(assert (not bs!1910717))

(assert (not d!2261778))

(assert (not b!7268883))

(assert (not d!2261806))

(assert (not bm!662752))

(assert (not b!7268913))

(assert (not b!7268943))

(assert (not b!7268948))

(assert (not d!2261768))

(assert tp_is_empty!47037)

(assert (not b_lambda!280061))

(assert (not b!7268965))

(assert (not d!2261788))

(assert (not bm!662764))

(assert (not d!2261780))

(assert (not d!2261794))

(assert (not b!7268886))

(assert (not bm!662758))

(assert (not bm!662753))

(assert (not b!7268924))

(assert (not b_lambda!280059))

(assert (not bm!662765))

(assert (not b_lambda!280055))

(assert (not b!7268935))

(assert (not bs!1910716))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

