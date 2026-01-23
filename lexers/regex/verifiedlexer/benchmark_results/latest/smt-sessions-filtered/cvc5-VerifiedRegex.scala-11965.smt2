; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!669930 () Bool)

(assert start!669930)

(declare-fun b!6981255 () Bool)

(assert (=> b!6981255 true))

(declare-fun b!6981249 () Bool)

(assert (=> b!6981249 true))

(declare-fun b!6981252 () Bool)

(assert (=> b!6981252 true))

(declare-fun e!4195836 () Bool)

(declare-fun e!4195839 () Bool)

(assert (=> b!6981249 (= e!4195836 e!4195839)))

(declare-fun res!2846828 () Bool)

(assert (=> b!6981249 (=> res!2846828 e!4195839)))

(declare-datatypes ((C!34622 0))(
  ( (C!34623 (val!27013 Int)) )
))
(declare-datatypes ((Regex!17176 0))(
  ( (ElementMatch!17176 (c!1294171 C!34622)) (Concat!26021 (regOne!34864 Regex!17176) (regTwo!34864 Regex!17176)) (EmptyExpr!17176) (Star!17176 (reg!17505 Regex!17176)) (EmptyLang!17176) (Union!17176 (regOne!34865 Regex!17176) (regTwo!34865 Regex!17176)) )
))
(declare-datatypes ((List!67073 0))(
  ( (Nil!66949) (Cons!66949 (h!73397 Regex!17176) (t!380816 List!67073)) )
))
(declare-datatypes ((Context!12344 0))(
  ( (Context!12345 (exprs!6672 List!67073)) )
))
(declare-fun lt!2481929 () Context!12344)

(declare-fun lt!2481922 () Context!12344)

(declare-fun z1!570 () (Set Context!12344))

(declare-fun lt!2481924 () Context!12344)

(assert (=> b!6981249 (= res!2846828 (or (not (= lt!2481924 lt!2481922)) (not (set.member lt!2481929 z1!570))))))

(declare-fun ct2!306 () Context!12344)

(declare-fun ++!15121 (List!67073 List!67073) List!67073)

(assert (=> b!6981249 (= lt!2481924 (Context!12345 (++!15121 (exprs!6672 lt!2481929) (exprs!6672 ct2!306))))))

(declare-datatypes ((Unit!161004 0))(
  ( (Unit!161005) )
))
(declare-fun lt!2481926 () Unit!161004)

(declare-fun lambda!399250 () Int)

(declare-fun lemmaConcatPreservesForall!512 (List!67073 List!67073 Int) Unit!161004)

(assert (=> b!6981249 (= lt!2481926 (lemmaConcatPreservesForall!512 (exprs!6672 lt!2481929) (exprs!6672 ct2!306) lambda!399250))))

(declare-fun lambda!399249 () Int)

(declare-fun mapPost2!31 ((Set Context!12344) Int Context!12344) Context!12344)

(assert (=> b!6981249 (= lt!2481929 (mapPost2!31 z1!570 lambda!399249 lt!2481922))))

(declare-fun b!6981250 () Bool)

(declare-fun res!2846835 () Bool)

(declare-fun e!4195843 () Bool)

(assert (=> b!6981250 (=> res!2846835 e!4195843)))

(declare-fun isEmpty!39078 (List!67073) Bool)

(assert (=> b!6981250 (= res!2846835 (isEmpty!39078 (exprs!6672 lt!2481929)))))

(declare-fun setIsEmpty!47546 () Bool)

(declare-fun setRes!47546 () Bool)

(assert (=> setIsEmpty!47546 setRes!47546))

(declare-fun b!6981251 () Bool)

(declare-fun e!4195842 () Bool)

(assert (=> b!6981251 (= e!4195843 e!4195842)))

(declare-fun res!2846832 () Bool)

(assert (=> b!6981251 (=> res!2846832 e!4195842)))

(declare-fun nullable!6936 (Regex!17176) Bool)

(assert (=> b!6981251 (= res!2846832 (not (nullable!6936 (h!73397 (exprs!6672 lt!2481929)))))))

(declare-fun lt!2481930 () List!67073)

(declare-fun tail!13154 (List!67073) List!67073)

(assert (=> b!6981251 (= lt!2481930 (tail!13154 (exprs!6672 lt!2481929)))))

(declare-fun e!4195841 () Bool)

(assert (=> b!6981252 (= e!4195841 e!4195843)))

(declare-fun res!2846826 () Bool)

(assert (=> b!6981252 (=> res!2846826 e!4195843)))

(declare-fun lt!2481923 () (Set Context!12344))

(declare-datatypes ((List!67074 0))(
  ( (Nil!66950) (Cons!66950 (h!73398 C!34622) (t!380817 List!67074)) )
))
(declare-fun s!7408 () List!67074)

(declare-fun lt!2481934 () (Set Context!12344))

(declare-fun derivationStepZipper!2656 ((Set Context!12344) C!34622) (Set Context!12344))

(assert (=> b!6981252 (= res!2846826 (not (= (derivationStepZipper!2656 lt!2481934 (h!73398 s!7408)) lt!2481923)))))

(declare-fun lambda!399251 () Int)

(declare-fun flatMap!2162 ((Set Context!12344) Int) (Set Context!12344))

(declare-fun derivationStepZipperUp!1826 (Context!12344 C!34622) (Set Context!12344))

(assert (=> b!6981252 (= (flatMap!2162 lt!2481934 lambda!399251) (derivationStepZipperUp!1826 lt!2481924 (h!73398 s!7408)))))

(declare-fun lt!2481932 () Unit!161004)

(declare-fun lemmaFlatMapOnSingletonSet!1677 ((Set Context!12344) Context!12344 Int) Unit!161004)

(assert (=> b!6981252 (= lt!2481932 (lemmaFlatMapOnSingletonSet!1677 lt!2481934 lt!2481924 lambda!399251))))

(assert (=> b!6981252 (= lt!2481923 (derivationStepZipperUp!1826 lt!2481924 (h!73398 s!7408)))))

(declare-fun lt!2481933 () Unit!161004)

(assert (=> b!6981252 (= lt!2481933 (lemmaConcatPreservesForall!512 (exprs!6672 lt!2481929) (exprs!6672 ct2!306) lambda!399250))))

(declare-fun b!6981253 () Bool)

(declare-fun e!4195837 () Bool)

(declare-fun tp!1928318 () Bool)

(assert (=> b!6981253 (= e!4195837 tp!1928318)))

(declare-fun b!6981254 () Bool)

(declare-fun res!2846829 () Bool)

(assert (=> b!6981254 (=> res!2846829 e!4195843)))

(assert (=> b!6981254 (= res!2846829 (not (is-Cons!66949 (exprs!6672 lt!2481929))))))

(declare-fun e!4195838 () Bool)

(assert (=> b!6981255 (= e!4195838 (not e!4195836))))

(declare-fun res!2846825 () Bool)

(assert (=> b!6981255 (=> res!2846825 e!4195836)))

(declare-fun lt!2481927 () (Set Context!12344))

(declare-fun matchZipper!2716 ((Set Context!12344) List!67074) Bool)

(assert (=> b!6981255 (= res!2846825 (not (matchZipper!2716 lt!2481927 s!7408)))))

(assert (=> b!6981255 (= lt!2481927 (set.insert lt!2481922 (as set.empty (Set Context!12344))))))

(declare-fun lt!2481938 () (Set Context!12344))

(declare-fun lambda!399248 () Int)

(declare-fun getWitness!1048 ((Set Context!12344) Int) Context!12344)

(assert (=> b!6981255 (= lt!2481922 (getWitness!1048 lt!2481938 lambda!399248))))

(declare-datatypes ((List!67075 0))(
  ( (Nil!66951) (Cons!66951 (h!73399 Context!12344) (t!380818 List!67075)) )
))
(declare-fun lt!2481925 () List!67075)

(declare-fun exists!2937 (List!67075 Int) Bool)

(assert (=> b!6981255 (exists!2937 lt!2481925 lambda!399248)))

(declare-fun lt!2481931 () Unit!161004)

(declare-fun lemmaZipperMatchesExistsMatchingContext!145 (List!67075 List!67074) Unit!161004)

(assert (=> b!6981255 (= lt!2481931 (lemmaZipperMatchesExistsMatchingContext!145 lt!2481925 s!7408))))

(declare-fun toList!10536 ((Set Context!12344)) List!67075)

(assert (=> b!6981255 (= lt!2481925 (toList!10536 lt!2481938))))

(declare-fun b!6981256 () Bool)

(assert (=> b!6981256 (= e!4195839 e!4195841)))

(declare-fun res!2846827 () Bool)

(assert (=> b!6981256 (=> res!2846827 e!4195841)))

(assert (=> b!6981256 (= res!2846827 (not (= lt!2481934 lt!2481927)))))

(assert (=> b!6981256 (= lt!2481934 (set.insert lt!2481924 (as set.empty (Set Context!12344))))))

(declare-fun lt!2481937 () Unit!161004)

(assert (=> b!6981256 (= lt!2481937 (lemmaConcatPreservesForall!512 (exprs!6672 lt!2481929) (exprs!6672 ct2!306) lambda!399250))))

(declare-fun b!6981257 () Bool)

(declare-fun e!4195840 () Bool)

(declare-fun tp!1928317 () Bool)

(assert (=> b!6981257 (= e!4195840 tp!1928317)))

(declare-fun b!6981258 () Bool)

(declare-fun e!4195845 () Bool)

(declare-fun tp_is_empty!43577 () Bool)

(declare-fun tp!1928319 () Bool)

(assert (=> b!6981258 (= e!4195845 (and tp_is_empty!43577 tp!1928319))))

(declare-fun res!2846831 () Bool)

(assert (=> start!669930 (=> (not res!2846831) (not e!4195838))))

(assert (=> start!669930 (= res!2846831 (matchZipper!2716 lt!2481938 s!7408))))

(declare-fun appendTo!297 ((Set Context!12344) Context!12344) (Set Context!12344))

(assert (=> start!669930 (= lt!2481938 (appendTo!297 z1!570 ct2!306))))

(assert (=> start!669930 e!4195838))

(declare-fun condSetEmpty!47546 () Bool)

(assert (=> start!669930 (= condSetEmpty!47546 (= z1!570 (as set.empty (Set Context!12344))))))

(assert (=> start!669930 setRes!47546))

(declare-fun inv!85800 (Context!12344) Bool)

(assert (=> start!669930 (and (inv!85800 ct2!306) e!4195840)))

(assert (=> start!669930 e!4195845))

(declare-fun b!6981259 () Bool)

(declare-fun res!2846830 () Bool)

(assert (=> b!6981259 (=> (not res!2846830) (not e!4195838))))

(assert (=> b!6981259 (= res!2846830 (is-Cons!66950 s!7408))))

(declare-fun b!6981260 () Bool)

(declare-fun e!4195844 () Bool)

(assert (=> b!6981260 (= e!4195842 e!4195844)))

(declare-fun res!2846833 () Bool)

(assert (=> b!6981260 (=> res!2846833 e!4195844)))

(declare-fun lt!2481928 () Context!12344)

(declare-fun derivationStepZipperDown!1894 (Regex!17176 Context!12344 C!34622) (Set Context!12344))

(assert (=> b!6981260 (= res!2846833 (not (= lt!2481923 (set.union (derivationStepZipperDown!1894 (h!73397 (exprs!6672 lt!2481929)) lt!2481928 (h!73398 s!7408)) (derivationStepZipperUp!1826 lt!2481928 (h!73398 s!7408))))))))

(assert (=> b!6981260 (= lt!2481928 (Context!12345 (++!15121 lt!2481930 (exprs!6672 ct2!306))))))

(declare-fun lt!2481936 () Unit!161004)

(assert (=> b!6981260 (= lt!2481936 (lemmaConcatPreservesForall!512 lt!2481930 (exprs!6672 ct2!306) lambda!399250))))

(declare-fun lt!2481939 () Unit!161004)

(assert (=> b!6981260 (= lt!2481939 (lemmaConcatPreservesForall!512 lt!2481930 (exprs!6672 ct2!306) lambda!399250))))

(declare-fun b!6981261 () Bool)

(declare-fun forall!16066 (List!67073 Int) Bool)

(assert (=> b!6981261 (= e!4195844 (forall!16066 lt!2481930 lambda!399250))))

(declare-fun lt!2481935 () Unit!161004)

(assert (=> b!6981261 (= lt!2481935 (lemmaConcatPreservesForall!512 lt!2481930 (exprs!6672 ct2!306) lambda!399250))))

(declare-fun setElem!47546 () Context!12344)

(declare-fun setNonEmpty!47546 () Bool)

(declare-fun tp!1928320 () Bool)

(assert (=> setNonEmpty!47546 (= setRes!47546 (and tp!1928320 (inv!85800 setElem!47546) e!4195837))))

(declare-fun setRest!47546 () (Set Context!12344))

(assert (=> setNonEmpty!47546 (= z1!570 (set.union (set.insert setElem!47546 (as set.empty (Set Context!12344))) setRest!47546))))

(declare-fun b!6981262 () Bool)

(declare-fun res!2846834 () Bool)

(assert (=> b!6981262 (=> res!2846834 e!4195836)))

(assert (=> b!6981262 (= res!2846834 (not (set.member lt!2481922 lt!2481938)))))

(assert (= (and start!669930 res!2846831) b!6981259))

(assert (= (and b!6981259 res!2846830) b!6981255))

(assert (= (and b!6981255 (not res!2846825)) b!6981262))

(assert (= (and b!6981262 (not res!2846834)) b!6981249))

(assert (= (and b!6981249 (not res!2846828)) b!6981256))

(assert (= (and b!6981256 (not res!2846827)) b!6981252))

(assert (= (and b!6981252 (not res!2846826)) b!6981254))

(assert (= (and b!6981254 (not res!2846829)) b!6981250))

(assert (= (and b!6981250 (not res!2846835)) b!6981251))

(assert (= (and b!6981251 (not res!2846832)) b!6981260))

(assert (= (and b!6981260 (not res!2846833)) b!6981261))

(assert (= (and start!669930 condSetEmpty!47546) setIsEmpty!47546))

(assert (= (and start!669930 (not condSetEmpty!47546)) setNonEmpty!47546))

(assert (= setNonEmpty!47546 b!6981253))

(assert (= start!669930 b!6981257))

(assert (= (and start!669930 (is-Cons!66950 s!7408)) b!6981258))

(declare-fun m!7667714 () Bool)

(assert (=> b!6981261 m!7667714))

(declare-fun m!7667716 () Bool)

(assert (=> b!6981261 m!7667716))

(declare-fun m!7667718 () Bool)

(assert (=> b!6981260 m!7667718))

(declare-fun m!7667720 () Bool)

(assert (=> b!6981260 m!7667720))

(assert (=> b!6981260 m!7667716))

(assert (=> b!6981260 m!7667716))

(declare-fun m!7667722 () Bool)

(assert (=> b!6981260 m!7667722))

(declare-fun m!7667724 () Bool)

(assert (=> b!6981256 m!7667724))

(declare-fun m!7667726 () Bool)

(assert (=> b!6981256 m!7667726))

(declare-fun m!7667728 () Bool)

(assert (=> b!6981252 m!7667728))

(declare-fun m!7667730 () Bool)

(assert (=> b!6981252 m!7667730))

(declare-fun m!7667732 () Bool)

(assert (=> b!6981252 m!7667732))

(declare-fun m!7667734 () Bool)

(assert (=> b!6981252 m!7667734))

(assert (=> b!6981252 m!7667726))

(declare-fun m!7667736 () Bool)

(assert (=> b!6981262 m!7667736))

(declare-fun m!7667738 () Bool)

(assert (=> b!6981251 m!7667738))

(declare-fun m!7667740 () Bool)

(assert (=> b!6981251 m!7667740))

(declare-fun m!7667742 () Bool)

(assert (=> b!6981250 m!7667742))

(declare-fun m!7667744 () Bool)

(assert (=> b!6981255 m!7667744))

(declare-fun m!7667746 () Bool)

(assert (=> b!6981255 m!7667746))

(declare-fun m!7667748 () Bool)

(assert (=> b!6981255 m!7667748))

(declare-fun m!7667750 () Bool)

(assert (=> b!6981255 m!7667750))

(declare-fun m!7667752 () Bool)

(assert (=> b!6981255 m!7667752))

(declare-fun m!7667754 () Bool)

(assert (=> b!6981255 m!7667754))

(declare-fun m!7667756 () Bool)

(assert (=> setNonEmpty!47546 m!7667756))

(declare-fun m!7667758 () Bool)

(assert (=> b!6981249 m!7667758))

(declare-fun m!7667760 () Bool)

(assert (=> b!6981249 m!7667760))

(assert (=> b!6981249 m!7667726))

(declare-fun m!7667762 () Bool)

(assert (=> b!6981249 m!7667762))

(declare-fun m!7667764 () Bool)

(assert (=> start!669930 m!7667764))

(declare-fun m!7667766 () Bool)

(assert (=> start!669930 m!7667766))

(declare-fun m!7667768 () Bool)

(assert (=> start!669930 m!7667768))

(push 1)

(assert (not b!6981250))

(assert (not b!6981261))

(assert (not setNonEmpty!47546))

(assert (not b!6981253))

(assert (not b!6981260))

(assert (not b!6981258))

(assert tp_is_empty!43577)

(assert (not b!6981256))

(assert (not b!6981257))

(assert (not start!669930))

(assert (not b!6981255))

(assert (not b!6981251))

(assert (not b!6981249))

(assert (not b!6981252))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1860897 () Bool)

(declare-fun d!2174052 () Bool)

(assert (= bs!1860897 (and d!2174052 b!6981249)))

(declare-fun lambda!399282 () Int)

(assert (=> bs!1860897 (= lambda!399282 lambda!399250)))

(assert (=> d!2174052 (= (inv!85800 setElem!47546) (forall!16066 (exprs!6672 setElem!47546) lambda!399282))))

(declare-fun bs!1860898 () Bool)

(assert (= bs!1860898 d!2174052))

(declare-fun m!7667826 () Bool)

(assert (=> bs!1860898 m!7667826))

(assert (=> setNonEmpty!47546 d!2174052))

(declare-fun d!2174054 () Bool)

(declare-fun nullableFct!2608 (Regex!17176) Bool)

(assert (=> d!2174054 (= (nullable!6936 (h!73397 (exprs!6672 lt!2481929))) (nullableFct!2608 (h!73397 (exprs!6672 lt!2481929))))))

(declare-fun bs!1860899 () Bool)

(assert (= bs!1860899 d!2174054))

(declare-fun m!7667828 () Bool)

(assert (=> bs!1860899 m!7667828))

(assert (=> b!6981251 d!2174054))

(declare-fun d!2174056 () Bool)

(assert (=> d!2174056 (= (tail!13154 (exprs!6672 lt!2481929)) (t!380816 (exprs!6672 lt!2481929)))))

(assert (=> b!6981251 d!2174056))

(declare-fun d!2174058 () Bool)

(declare-fun dynLambda!26763 (Int Context!12344) (Set Context!12344))

(assert (=> d!2174058 (= (flatMap!2162 lt!2481934 lambda!399251) (dynLambda!26763 lambda!399251 lt!2481924))))

(declare-fun lt!2481998 () Unit!161004)

(declare-fun choose!52054 ((Set Context!12344) Context!12344 Int) Unit!161004)

(assert (=> d!2174058 (= lt!2481998 (choose!52054 lt!2481934 lt!2481924 lambda!399251))))

(assert (=> d!2174058 (= lt!2481934 (set.insert lt!2481924 (as set.empty (Set Context!12344))))))

(assert (=> d!2174058 (= (lemmaFlatMapOnSingletonSet!1677 lt!2481934 lt!2481924 lambda!399251) lt!2481998)))

(declare-fun b_lambda!261679 () Bool)

(assert (=> (not b_lambda!261679) (not d!2174058)))

(declare-fun bs!1860900 () Bool)

(assert (= bs!1860900 d!2174058))

(assert (=> bs!1860900 m!7667728))

(declare-fun m!7667830 () Bool)

(assert (=> bs!1860900 m!7667830))

(declare-fun m!7667832 () Bool)

(assert (=> bs!1860900 m!7667832))

(assert (=> bs!1860900 m!7667724))

(assert (=> b!6981252 d!2174058))

(declare-fun d!2174060 () Bool)

(assert (=> d!2174060 (forall!16066 (++!15121 (exprs!6672 lt!2481929) (exprs!6672 ct2!306)) lambda!399250)))

(declare-fun lt!2482001 () Unit!161004)

(declare-fun choose!52055 (List!67073 List!67073 Int) Unit!161004)

(assert (=> d!2174060 (= lt!2482001 (choose!52055 (exprs!6672 lt!2481929) (exprs!6672 ct2!306) lambda!399250))))

(assert (=> d!2174060 (forall!16066 (exprs!6672 lt!2481929) lambda!399250)))

(assert (=> d!2174060 (= (lemmaConcatPreservesForall!512 (exprs!6672 lt!2481929) (exprs!6672 ct2!306) lambda!399250) lt!2482001)))

(declare-fun bs!1860901 () Bool)

(assert (= bs!1860901 d!2174060))

(assert (=> bs!1860901 m!7667760))

(assert (=> bs!1860901 m!7667760))

(declare-fun m!7667834 () Bool)

(assert (=> bs!1860901 m!7667834))

(declare-fun m!7667836 () Bool)

(assert (=> bs!1860901 m!7667836))

(declare-fun m!7667838 () Bool)

(assert (=> bs!1860901 m!7667838))

(assert (=> b!6981252 d!2174060))

(declare-fun b!6981331 () Bool)

(declare-fun e!4195886 () (Set Context!12344))

(declare-fun e!4195887 () (Set Context!12344))

(assert (=> b!6981331 (= e!4195886 e!4195887)))

(declare-fun c!1294185 () Bool)

(assert (=> b!6981331 (= c!1294185 (is-Cons!66949 (exprs!6672 lt!2481924)))))

(declare-fun b!6981332 () Bool)

(assert (=> b!6981332 (= e!4195887 (as set.empty (Set Context!12344)))))

(declare-fun d!2174062 () Bool)

(declare-fun c!1294186 () Bool)

(declare-fun e!4195888 () Bool)

(assert (=> d!2174062 (= c!1294186 e!4195888)))

(declare-fun res!2846877 () Bool)

(assert (=> d!2174062 (=> (not res!2846877) (not e!4195888))))

(assert (=> d!2174062 (= res!2846877 (is-Cons!66949 (exprs!6672 lt!2481924)))))

(assert (=> d!2174062 (= (derivationStepZipperUp!1826 lt!2481924 (h!73398 s!7408)) e!4195886)))

(declare-fun b!6981333 () Bool)

(declare-fun call!633509 () (Set Context!12344))

(assert (=> b!6981333 (= e!4195887 call!633509)))

(declare-fun bm!633504 () Bool)

(assert (=> bm!633504 (= call!633509 (derivationStepZipperDown!1894 (h!73397 (exprs!6672 lt!2481924)) (Context!12345 (t!380816 (exprs!6672 lt!2481924))) (h!73398 s!7408)))))

(declare-fun b!6981334 () Bool)

(assert (=> b!6981334 (= e!4195888 (nullable!6936 (h!73397 (exprs!6672 lt!2481924))))))

(declare-fun b!6981335 () Bool)

(assert (=> b!6981335 (= e!4195886 (set.union call!633509 (derivationStepZipperUp!1826 (Context!12345 (t!380816 (exprs!6672 lt!2481924))) (h!73398 s!7408))))))

(assert (= (and d!2174062 res!2846877) b!6981334))

(assert (= (and d!2174062 c!1294186) b!6981335))

(assert (= (and d!2174062 (not c!1294186)) b!6981331))

(assert (= (and b!6981331 c!1294185) b!6981333))

(assert (= (and b!6981331 (not c!1294185)) b!6981332))

(assert (= (or b!6981335 b!6981333) bm!633504))

(declare-fun m!7667840 () Bool)

(assert (=> bm!633504 m!7667840))

(declare-fun m!7667842 () Bool)

(assert (=> b!6981334 m!7667842))

(declare-fun m!7667844 () Bool)

(assert (=> b!6981335 m!7667844))

(assert (=> b!6981252 d!2174062))

(declare-fun bs!1860902 () Bool)

(declare-fun d!2174066 () Bool)

(assert (= bs!1860902 (and d!2174066 b!6981252)))

(declare-fun lambda!399285 () Int)

(assert (=> bs!1860902 (= lambda!399285 lambda!399251)))

(assert (=> d!2174066 true))

(assert (=> d!2174066 (= (derivationStepZipper!2656 lt!2481934 (h!73398 s!7408)) (flatMap!2162 lt!2481934 lambda!399285))))

(declare-fun bs!1860903 () Bool)

(assert (= bs!1860903 d!2174066))

(declare-fun m!7667846 () Bool)

(assert (=> bs!1860903 m!7667846))

(assert (=> b!6981252 d!2174066))

(declare-fun d!2174068 () Bool)

(declare-fun choose!52056 ((Set Context!12344) Int) (Set Context!12344))

(assert (=> d!2174068 (= (flatMap!2162 lt!2481934 lambda!399251) (choose!52056 lt!2481934 lambda!399251))))

(declare-fun bs!1860904 () Bool)

(assert (= bs!1860904 d!2174068))

(declare-fun m!7667852 () Bool)

(assert (=> bs!1860904 m!7667852))

(assert (=> b!6981252 d!2174068))

(declare-fun bs!1860906 () Bool)

(declare-fun d!2174072 () Bool)

(assert (= bs!1860906 (and d!2174072 b!6981255)))

(declare-fun lambda!399288 () Int)

(assert (=> bs!1860906 (= lambda!399288 lambda!399248)))

(assert (=> d!2174072 true))

(assert (=> d!2174072 (exists!2937 lt!2481925 lambda!399288)))

(declare-fun lt!2482007 () Unit!161004)

(declare-fun choose!52057 (List!67075 List!67074) Unit!161004)

(assert (=> d!2174072 (= lt!2482007 (choose!52057 lt!2481925 s!7408))))

(declare-fun content!13204 (List!67075) (Set Context!12344))

(assert (=> d!2174072 (matchZipper!2716 (content!13204 lt!2481925) s!7408)))

(assert (=> d!2174072 (= (lemmaZipperMatchesExistsMatchingContext!145 lt!2481925 s!7408) lt!2482007)))

(declare-fun bs!1860907 () Bool)

(assert (= bs!1860907 d!2174072))

(declare-fun m!7667858 () Bool)

(assert (=> bs!1860907 m!7667858))

(declare-fun m!7667860 () Bool)

(assert (=> bs!1860907 m!7667860))

(declare-fun m!7667862 () Bool)

(assert (=> bs!1860907 m!7667862))

(assert (=> bs!1860907 m!7667862))

(declare-fun m!7667864 () Bool)

(assert (=> bs!1860907 m!7667864))

(assert (=> b!6981255 d!2174072))

(declare-fun d!2174076 () Bool)

(declare-fun e!4195893 () Bool)

(assert (=> d!2174076 e!4195893))

(declare-fun res!2846882 () Bool)

(assert (=> d!2174076 (=> (not res!2846882) (not e!4195893))))

(declare-fun lt!2482010 () Context!12344)

(declare-fun dynLambda!26764 (Int Context!12344) Bool)

(assert (=> d!2174076 (= res!2846882 (dynLambda!26764 lambda!399248 lt!2482010))))

(declare-fun getWitness!1050 (List!67075 Int) Context!12344)

(assert (=> d!2174076 (= lt!2482010 (getWitness!1050 (toList!10536 lt!2481938) lambda!399248))))

(declare-fun exists!2939 ((Set Context!12344) Int) Bool)

(assert (=> d!2174076 (exists!2939 lt!2481938 lambda!399248)))

(assert (=> d!2174076 (= (getWitness!1048 lt!2481938 lambda!399248) lt!2482010)))

(declare-fun b!6981342 () Bool)

(assert (=> b!6981342 (= e!4195893 (set.member lt!2482010 lt!2481938))))

(assert (= (and d!2174076 res!2846882) b!6981342))

(declare-fun b_lambda!261683 () Bool)

(assert (=> (not b_lambda!261683) (not d!2174076)))

(declare-fun m!7667866 () Bool)

(assert (=> d!2174076 m!7667866))

(assert (=> d!2174076 m!7667748))

(assert (=> d!2174076 m!7667748))

(declare-fun m!7667868 () Bool)

(assert (=> d!2174076 m!7667868))

(declare-fun m!7667870 () Bool)

(assert (=> d!2174076 m!7667870))

(declare-fun m!7667872 () Bool)

(assert (=> b!6981342 m!7667872))

(assert (=> b!6981255 d!2174076))

(declare-fun bs!1860908 () Bool)

(declare-fun d!2174080 () Bool)

(assert (= bs!1860908 (and d!2174080 b!6981255)))

(declare-fun lambda!399291 () Int)

(assert (=> bs!1860908 (not (= lambda!399291 lambda!399248))))

(declare-fun bs!1860909 () Bool)

(assert (= bs!1860909 (and d!2174080 d!2174072)))

(assert (=> bs!1860909 (not (= lambda!399291 lambda!399288))))

(assert (=> d!2174080 true))

(declare-fun order!27849 () Int)

(declare-fun dynLambda!26765 (Int Int) Int)

(assert (=> d!2174080 (< (dynLambda!26765 order!27849 lambda!399248) (dynLambda!26765 order!27849 lambda!399291))))

(declare-fun forall!16068 (List!67075 Int) Bool)

(assert (=> d!2174080 (= (exists!2937 lt!2481925 lambda!399248) (not (forall!16068 lt!2481925 lambda!399291)))))

(declare-fun bs!1860910 () Bool)

(assert (= bs!1860910 d!2174080))

(declare-fun m!7667874 () Bool)

(assert (=> bs!1860910 m!7667874))

(assert (=> b!6981255 d!2174080))

(declare-fun d!2174082 () Bool)

(declare-fun e!4195899 () Bool)

(assert (=> d!2174082 e!4195899))

(declare-fun res!2846888 () Bool)

(assert (=> d!2174082 (=> (not res!2846888) (not e!4195899))))

(declare-fun lt!2482016 () List!67075)

(declare-fun noDuplicate!2496 (List!67075) Bool)

(assert (=> d!2174082 (= res!2846888 (noDuplicate!2496 lt!2482016))))

(declare-fun choose!52058 ((Set Context!12344)) List!67075)

(assert (=> d!2174082 (= lt!2482016 (choose!52058 lt!2481938))))

(assert (=> d!2174082 (= (toList!10536 lt!2481938) lt!2482016)))

(declare-fun b!6981350 () Bool)

(assert (=> b!6981350 (= e!4195899 (= (content!13204 lt!2482016) lt!2481938))))

(assert (= (and d!2174082 res!2846888) b!6981350))

(declare-fun m!7667884 () Bool)

(assert (=> d!2174082 m!7667884))

(declare-fun m!7667886 () Bool)

(assert (=> d!2174082 m!7667886))

(declare-fun m!7667888 () Bool)

(assert (=> b!6981350 m!7667888))

(assert (=> b!6981255 d!2174082))

(declare-fun d!2174086 () Bool)

(declare-fun c!1294193 () Bool)

(declare-fun isEmpty!39080 (List!67074) Bool)

(assert (=> d!2174086 (= c!1294193 (isEmpty!39080 s!7408))))

(declare-fun e!4195902 () Bool)

(assert (=> d!2174086 (= (matchZipper!2716 lt!2481927 s!7408) e!4195902)))

(declare-fun b!6981355 () Bool)

(declare-fun nullableZipper!2405 ((Set Context!12344)) Bool)

(assert (=> b!6981355 (= e!4195902 (nullableZipper!2405 lt!2481927))))

(declare-fun b!6981356 () Bool)

(declare-fun head!14077 (List!67074) C!34622)

(declare-fun tail!13156 (List!67074) List!67074)

(assert (=> b!6981356 (= e!4195902 (matchZipper!2716 (derivationStepZipper!2656 lt!2481927 (head!14077 s!7408)) (tail!13156 s!7408)))))

(assert (= (and d!2174086 c!1294193) b!6981355))

(assert (= (and d!2174086 (not c!1294193)) b!6981356))

(declare-fun m!7667890 () Bool)

(assert (=> d!2174086 m!7667890))

(declare-fun m!7667892 () Bool)

(assert (=> b!6981355 m!7667892))

(declare-fun m!7667894 () Bool)

(assert (=> b!6981356 m!7667894))

(assert (=> b!6981356 m!7667894))

(declare-fun m!7667896 () Bool)

(assert (=> b!6981356 m!7667896))

(declare-fun m!7667898 () Bool)

(assert (=> b!6981356 m!7667898))

(assert (=> b!6981356 m!7667896))

(assert (=> b!6981356 m!7667898))

(declare-fun m!7667900 () Bool)

(assert (=> b!6981356 m!7667900))

(assert (=> b!6981255 d!2174086))

(assert (=> b!6981256 d!2174060))

(declare-fun d!2174088 () Bool)

(declare-fun res!2846893 () Bool)

(declare-fun e!4195907 () Bool)

(assert (=> d!2174088 (=> res!2846893 e!4195907)))

(assert (=> d!2174088 (= res!2846893 (is-Nil!66949 lt!2481930))))

(assert (=> d!2174088 (= (forall!16066 lt!2481930 lambda!399250) e!4195907)))

(declare-fun b!6981361 () Bool)

(declare-fun e!4195908 () Bool)

(assert (=> b!6981361 (= e!4195907 e!4195908)))

(declare-fun res!2846894 () Bool)

(assert (=> b!6981361 (=> (not res!2846894) (not e!4195908))))

(declare-fun dynLambda!26766 (Int Regex!17176) Bool)

(assert (=> b!6981361 (= res!2846894 (dynLambda!26766 lambda!399250 (h!73397 lt!2481930)))))

(declare-fun b!6981362 () Bool)

(assert (=> b!6981362 (= e!4195908 (forall!16066 (t!380816 lt!2481930) lambda!399250))))

(assert (= (and d!2174088 (not res!2846893)) b!6981361))

(assert (= (and b!6981361 res!2846894) b!6981362))

(declare-fun b_lambda!261687 () Bool)

(assert (=> (not b_lambda!261687) (not b!6981361)))

(declare-fun m!7667902 () Bool)

(assert (=> b!6981361 m!7667902))

(declare-fun m!7667904 () Bool)

(assert (=> b!6981362 m!7667904))

(assert (=> b!6981261 d!2174088))

(declare-fun d!2174090 () Bool)

(assert (=> d!2174090 (forall!16066 (++!15121 lt!2481930 (exprs!6672 ct2!306)) lambda!399250)))

(declare-fun lt!2482017 () Unit!161004)

(assert (=> d!2174090 (= lt!2482017 (choose!52055 lt!2481930 (exprs!6672 ct2!306) lambda!399250))))

(assert (=> d!2174090 (forall!16066 lt!2481930 lambda!399250)))

(assert (=> d!2174090 (= (lemmaConcatPreservesForall!512 lt!2481930 (exprs!6672 ct2!306) lambda!399250) lt!2482017)))

(declare-fun bs!1860911 () Bool)

(assert (= bs!1860911 d!2174090))

(assert (=> bs!1860911 m!7667718))

(assert (=> bs!1860911 m!7667718))

(declare-fun m!7667906 () Bool)

(assert (=> bs!1860911 m!7667906))

(declare-fun m!7667908 () Bool)

(assert (=> bs!1860911 m!7667908))

(assert (=> bs!1860911 m!7667714))

(assert (=> b!6981261 d!2174090))

(declare-fun b!6981363 () Bool)

(declare-fun e!4195909 () (Set Context!12344))

(declare-fun e!4195910 () (Set Context!12344))

(assert (=> b!6981363 (= e!4195909 e!4195910)))

(declare-fun c!1294194 () Bool)

(assert (=> b!6981363 (= c!1294194 (is-Cons!66949 (exprs!6672 lt!2481928)))))

(declare-fun b!6981364 () Bool)

(assert (=> b!6981364 (= e!4195910 (as set.empty (Set Context!12344)))))

(declare-fun d!2174092 () Bool)

(declare-fun c!1294195 () Bool)

(declare-fun e!4195911 () Bool)

(assert (=> d!2174092 (= c!1294195 e!4195911)))

(declare-fun res!2846895 () Bool)

(assert (=> d!2174092 (=> (not res!2846895) (not e!4195911))))

(assert (=> d!2174092 (= res!2846895 (is-Cons!66949 (exprs!6672 lt!2481928)))))

(assert (=> d!2174092 (= (derivationStepZipperUp!1826 lt!2481928 (h!73398 s!7408)) e!4195909)))

(declare-fun b!6981365 () Bool)

(declare-fun call!633510 () (Set Context!12344))

(assert (=> b!6981365 (= e!4195910 call!633510)))

(declare-fun bm!633505 () Bool)

(assert (=> bm!633505 (= call!633510 (derivationStepZipperDown!1894 (h!73397 (exprs!6672 lt!2481928)) (Context!12345 (t!380816 (exprs!6672 lt!2481928))) (h!73398 s!7408)))))

(declare-fun b!6981366 () Bool)

(assert (=> b!6981366 (= e!4195911 (nullable!6936 (h!73397 (exprs!6672 lt!2481928))))))

(declare-fun b!6981367 () Bool)

(assert (=> b!6981367 (= e!4195909 (set.union call!633510 (derivationStepZipperUp!1826 (Context!12345 (t!380816 (exprs!6672 lt!2481928))) (h!73398 s!7408))))))

(assert (= (and d!2174092 res!2846895) b!6981366))

(assert (= (and d!2174092 c!1294195) b!6981367))

(assert (= (and d!2174092 (not c!1294195)) b!6981363))

(assert (= (and b!6981363 c!1294194) b!6981365))

(assert (= (and b!6981363 (not c!1294194)) b!6981364))

(assert (= (or b!6981367 b!6981365) bm!633505))

(declare-fun m!7667910 () Bool)

(assert (=> bm!633505 m!7667910))

(declare-fun m!7667912 () Bool)

(assert (=> b!6981366 m!7667912))

(declare-fun m!7667914 () Bool)

(assert (=> b!6981367 m!7667914))

(assert (=> b!6981260 d!2174092))

(declare-fun b!6981393 () Bool)

(declare-fun e!4195931 () Bool)

(assert (=> b!6981393 (= e!4195931 (nullable!6936 (regOne!34864 (h!73397 (exprs!6672 lt!2481929)))))))

(declare-fun bm!633518 () Bool)

(declare-fun call!633523 () List!67073)

(declare-fun call!633525 () List!67073)

(assert (=> bm!633518 (= call!633523 call!633525)))

(declare-fun b!6981394 () Bool)

(declare-fun e!4195932 () (Set Context!12344))

(declare-fun e!4195927 () (Set Context!12344))

(assert (=> b!6981394 (= e!4195932 e!4195927)))

(declare-fun c!1294210 () Bool)

(assert (=> b!6981394 (= c!1294210 (is-Union!17176 (h!73397 (exprs!6672 lt!2481929))))))

(declare-fun call!633527 () (Set Context!12344))

(declare-fun bm!633519 () Bool)

(assert (=> bm!633519 (= call!633527 (derivationStepZipperDown!1894 (ite c!1294210 (regTwo!34865 (h!73397 (exprs!6672 lt!2481929))) (regOne!34864 (h!73397 (exprs!6672 lt!2481929)))) (ite c!1294210 lt!2481928 (Context!12345 call!633525)) (h!73398 s!7408)))))

(declare-fun b!6981395 () Bool)

(declare-fun e!4195929 () (Set Context!12344))

(declare-fun e!4195930 () (Set Context!12344))

(assert (=> b!6981395 (= e!4195929 e!4195930)))

(declare-fun c!1294209 () Bool)

(assert (=> b!6981395 (= c!1294209 (is-Concat!26021 (h!73397 (exprs!6672 lt!2481929))))))

(declare-fun d!2174094 () Bool)

(declare-fun c!1294211 () Bool)

(assert (=> d!2174094 (= c!1294211 (and (is-ElementMatch!17176 (h!73397 (exprs!6672 lt!2481929))) (= (c!1294171 (h!73397 (exprs!6672 lt!2481929))) (h!73398 s!7408))))))

(assert (=> d!2174094 (= (derivationStepZipperDown!1894 (h!73397 (exprs!6672 lt!2481929)) lt!2481928 (h!73398 s!7408)) e!4195932)))

(declare-fun bm!633520 () Bool)

(declare-fun call!633524 () (Set Context!12344))

(declare-fun call!633526 () (Set Context!12344))

(assert (=> bm!633520 (= call!633524 call!633526)))

(declare-fun b!6981396 () Bool)

(assert (=> b!6981396 (= e!4195932 (set.insert lt!2481928 (as set.empty (Set Context!12344))))))

(declare-fun b!6981397 () Bool)

(assert (=> b!6981397 (= e!4195929 (set.union call!633527 call!633524))))

(declare-fun b!6981398 () Bool)

(declare-fun c!1294212 () Bool)

(assert (=> b!6981398 (= c!1294212 (is-Star!17176 (h!73397 (exprs!6672 lt!2481929))))))

(declare-fun e!4195928 () (Set Context!12344))

(assert (=> b!6981398 (= e!4195930 e!4195928)))

(declare-fun b!6981399 () Bool)

(declare-fun call!633528 () (Set Context!12344))

(assert (=> b!6981399 (= e!4195928 call!633528)))

(declare-fun b!6981400 () Bool)

(assert (=> b!6981400 (= e!4195930 call!633528)))

(declare-fun bm!633521 () Bool)

(declare-fun c!1294208 () Bool)

(assert (=> bm!633521 (= call!633526 (derivationStepZipperDown!1894 (ite c!1294210 (regOne!34865 (h!73397 (exprs!6672 lt!2481929))) (ite c!1294208 (regTwo!34864 (h!73397 (exprs!6672 lt!2481929))) (ite c!1294209 (regOne!34864 (h!73397 (exprs!6672 lt!2481929))) (reg!17505 (h!73397 (exprs!6672 lt!2481929)))))) (ite (or c!1294210 c!1294208) lt!2481928 (Context!12345 call!633523)) (h!73398 s!7408)))))

(declare-fun b!6981401 () Bool)

(assert (=> b!6981401 (= e!4195928 (as set.empty (Set Context!12344)))))

(declare-fun b!6981402 () Bool)

(assert (=> b!6981402 (= e!4195927 (set.union call!633526 call!633527))))

(declare-fun bm!633522 () Bool)

(declare-fun $colon$colon!2457 (List!67073 Regex!17176) List!67073)

(assert (=> bm!633522 (= call!633525 ($colon$colon!2457 (exprs!6672 lt!2481928) (ite (or c!1294208 c!1294209) (regTwo!34864 (h!73397 (exprs!6672 lt!2481929))) (h!73397 (exprs!6672 lt!2481929)))))))

(declare-fun b!6981403 () Bool)

(assert (=> b!6981403 (= c!1294208 e!4195931)))

(declare-fun res!2846901 () Bool)

(assert (=> b!6981403 (=> (not res!2846901) (not e!4195931))))

(assert (=> b!6981403 (= res!2846901 (is-Concat!26021 (h!73397 (exprs!6672 lt!2481929))))))

(assert (=> b!6981403 (= e!4195927 e!4195929)))

(declare-fun bm!633523 () Bool)

(assert (=> bm!633523 (= call!633528 call!633524)))

(assert (= (and d!2174094 c!1294211) b!6981396))

(assert (= (and d!2174094 (not c!1294211)) b!6981394))

(assert (= (and b!6981394 c!1294210) b!6981402))

(assert (= (and b!6981394 (not c!1294210)) b!6981403))

(assert (= (and b!6981403 res!2846901) b!6981393))

(assert (= (and b!6981403 c!1294208) b!6981397))

(assert (= (and b!6981403 (not c!1294208)) b!6981395))

(assert (= (and b!6981395 c!1294209) b!6981400))

(assert (= (and b!6981395 (not c!1294209)) b!6981398))

(assert (= (and b!6981398 c!1294212) b!6981399))

(assert (= (and b!6981398 (not c!1294212)) b!6981401))

(assert (= (or b!6981400 b!6981399) bm!633518))

(assert (= (or b!6981400 b!6981399) bm!633523))

(assert (= (or b!6981397 bm!633523) bm!633520))

(assert (= (or b!6981397 bm!633518) bm!633522))

(assert (= (or b!6981402 bm!633520) bm!633521))

(assert (= (or b!6981402 b!6981397) bm!633519))

(declare-fun m!7667930 () Bool)

(assert (=> b!6981396 m!7667930))

(declare-fun m!7667932 () Bool)

(assert (=> b!6981393 m!7667932))

(declare-fun m!7667934 () Bool)

(assert (=> bm!633522 m!7667934))

(declare-fun m!7667936 () Bool)

(assert (=> bm!633519 m!7667936))

(declare-fun m!7667938 () Bool)

(assert (=> bm!633521 m!7667938))

(assert (=> b!6981260 d!2174094))

(assert (=> b!6981260 d!2174090))

(declare-fun b!6981417 () Bool)

(declare-fun lt!2482026 () List!67073)

(declare-fun e!4195937 () Bool)

(assert (=> b!6981417 (= e!4195937 (or (not (= (exprs!6672 ct2!306) Nil!66949)) (= lt!2482026 lt!2481930)))))

(declare-fun d!2174100 () Bool)

(assert (=> d!2174100 e!4195937))

(declare-fun res!2846906 () Bool)

(assert (=> d!2174100 (=> (not res!2846906) (not e!4195937))))

(declare-fun content!13205 (List!67073) (Set Regex!17176))

(assert (=> d!2174100 (= res!2846906 (= (content!13205 lt!2482026) (set.union (content!13205 lt!2481930) (content!13205 (exprs!6672 ct2!306)))))))

(declare-fun e!4195938 () List!67073)

(assert (=> d!2174100 (= lt!2482026 e!4195938)))

(declare-fun c!1294215 () Bool)

(assert (=> d!2174100 (= c!1294215 (is-Nil!66949 lt!2481930))))

(assert (=> d!2174100 (= (++!15121 lt!2481930 (exprs!6672 ct2!306)) lt!2482026)))

(declare-fun b!6981414 () Bool)

(assert (=> b!6981414 (= e!4195938 (exprs!6672 ct2!306))))

(declare-fun b!6981416 () Bool)

(declare-fun res!2846907 () Bool)

(assert (=> b!6981416 (=> (not res!2846907) (not e!4195937))))

(declare-fun size!40876 (List!67073) Int)

(assert (=> b!6981416 (= res!2846907 (= (size!40876 lt!2482026) (+ (size!40876 lt!2481930) (size!40876 (exprs!6672 ct2!306)))))))

(declare-fun b!6981415 () Bool)

(assert (=> b!6981415 (= e!4195938 (Cons!66949 (h!73397 lt!2481930) (++!15121 (t!380816 lt!2481930) (exprs!6672 ct2!306))))))

(assert (= (and d!2174100 c!1294215) b!6981414))

(assert (= (and d!2174100 (not c!1294215)) b!6981415))

(assert (= (and d!2174100 res!2846906) b!6981416))

(assert (= (and b!6981416 res!2846907) b!6981417))

(declare-fun m!7667942 () Bool)

(assert (=> d!2174100 m!7667942))

(declare-fun m!7667944 () Bool)

(assert (=> d!2174100 m!7667944))

(declare-fun m!7667946 () Bool)

(assert (=> d!2174100 m!7667946))

(declare-fun m!7667948 () Bool)

(assert (=> b!6981416 m!7667948))

(declare-fun m!7667950 () Bool)

(assert (=> b!6981416 m!7667950))

(declare-fun m!7667952 () Bool)

(assert (=> b!6981416 m!7667952))

(declare-fun m!7667954 () Bool)

(assert (=> b!6981415 m!7667954))

(assert (=> b!6981260 d!2174100))

(declare-fun d!2174104 () Bool)

(assert (=> d!2174104 (= (isEmpty!39078 (exprs!6672 lt!2481929)) (is-Nil!66949 (exprs!6672 lt!2481929)))))

(assert (=> b!6981250 d!2174104))

(declare-fun d!2174106 () Bool)

(declare-fun c!1294218 () Bool)

(assert (=> d!2174106 (= c!1294218 (isEmpty!39080 s!7408))))

(declare-fun e!4195941 () Bool)

(assert (=> d!2174106 (= (matchZipper!2716 lt!2481938 s!7408) e!4195941)))

(declare-fun b!6981422 () Bool)

(assert (=> b!6981422 (= e!4195941 (nullableZipper!2405 lt!2481938))))

(declare-fun b!6981423 () Bool)

(assert (=> b!6981423 (= e!4195941 (matchZipper!2716 (derivationStepZipper!2656 lt!2481938 (head!14077 s!7408)) (tail!13156 s!7408)))))

(assert (= (and d!2174106 c!1294218) b!6981422))

(assert (= (and d!2174106 (not c!1294218)) b!6981423))

(assert (=> d!2174106 m!7667890))

(declare-fun m!7667956 () Bool)

(assert (=> b!6981422 m!7667956))

(assert (=> b!6981423 m!7667894))

(assert (=> b!6981423 m!7667894))

(declare-fun m!7667958 () Bool)

(assert (=> b!6981423 m!7667958))

(assert (=> b!6981423 m!7667898))

(assert (=> b!6981423 m!7667958))

(assert (=> b!6981423 m!7667898))

(declare-fun m!7667960 () Bool)

(assert (=> b!6981423 m!7667960))

(assert (=> start!669930 d!2174106))

(declare-fun bs!1860917 () Bool)

(declare-fun d!2174108 () Bool)

(assert (= bs!1860917 (and d!2174108 b!6981249)))

(declare-fun lambda!399304 () Int)

(assert (=> bs!1860917 (= lambda!399304 lambda!399249)))

(assert (=> d!2174108 true))

(declare-fun map!15430 ((Set Context!12344) Int) (Set Context!12344))

(assert (=> d!2174108 (= (appendTo!297 z1!570 ct2!306) (map!15430 z1!570 lambda!399304))))

(declare-fun bs!1860918 () Bool)

(assert (= bs!1860918 d!2174108))

(declare-fun m!7667974 () Bool)

(assert (=> bs!1860918 m!7667974))

(assert (=> start!669930 d!2174108))

(declare-fun bs!1860920 () Bool)

(declare-fun d!2174112 () Bool)

(assert (= bs!1860920 (and d!2174112 b!6981249)))

(declare-fun lambda!399306 () Int)

(assert (=> bs!1860920 (= lambda!399306 lambda!399250)))

(declare-fun bs!1860921 () Bool)

(assert (= bs!1860921 (and d!2174112 d!2174052)))

(assert (=> bs!1860921 (= lambda!399306 lambda!399282)))

(assert (=> d!2174112 (= (inv!85800 ct2!306) (forall!16066 (exprs!6672 ct2!306) lambda!399306))))

(declare-fun bs!1860922 () Bool)

(assert (= bs!1860922 d!2174112))

(declare-fun m!7667976 () Bool)

(assert (=> bs!1860922 m!7667976))

(assert (=> start!669930 d!2174112))

(declare-fun lt!2482029 () List!67073)

(declare-fun b!6981429 () Bool)

(declare-fun e!4195943 () Bool)

(assert (=> b!6981429 (= e!4195943 (or (not (= (exprs!6672 ct2!306) Nil!66949)) (= lt!2482029 (exprs!6672 lt!2481929))))))

(declare-fun d!2174114 () Bool)

(assert (=> d!2174114 e!4195943))

(declare-fun res!2846908 () Bool)

(assert (=> d!2174114 (=> (not res!2846908) (not e!4195943))))

(assert (=> d!2174114 (= res!2846908 (= (content!13205 lt!2482029) (set.union (content!13205 (exprs!6672 lt!2481929)) (content!13205 (exprs!6672 ct2!306)))))))

(declare-fun e!4195944 () List!67073)

(assert (=> d!2174114 (= lt!2482029 e!4195944)))

(declare-fun c!1294221 () Bool)

(assert (=> d!2174114 (= c!1294221 (is-Nil!66949 (exprs!6672 lt!2481929)))))

(assert (=> d!2174114 (= (++!15121 (exprs!6672 lt!2481929) (exprs!6672 ct2!306)) lt!2482029)))

(declare-fun b!6981426 () Bool)

(assert (=> b!6981426 (= e!4195944 (exprs!6672 ct2!306))))

(declare-fun b!6981428 () Bool)

(declare-fun res!2846909 () Bool)

(assert (=> b!6981428 (=> (not res!2846909) (not e!4195943))))

(assert (=> b!6981428 (= res!2846909 (= (size!40876 lt!2482029) (+ (size!40876 (exprs!6672 lt!2481929)) (size!40876 (exprs!6672 ct2!306)))))))

(declare-fun b!6981427 () Bool)

(assert (=> b!6981427 (= e!4195944 (Cons!66949 (h!73397 (exprs!6672 lt!2481929)) (++!15121 (t!380816 (exprs!6672 lt!2481929)) (exprs!6672 ct2!306))))))

(assert (= (and d!2174114 c!1294221) b!6981426))

(assert (= (and d!2174114 (not c!1294221)) b!6981427))

(assert (= (and d!2174114 res!2846908) b!6981428))

(assert (= (and b!6981428 res!2846909) b!6981429))

(declare-fun m!7667980 () Bool)

(assert (=> d!2174114 m!7667980))

(declare-fun m!7667982 () Bool)

(assert (=> d!2174114 m!7667982))

(assert (=> d!2174114 m!7667946))

(declare-fun m!7667984 () Bool)

(assert (=> b!6981428 m!7667984))

(declare-fun m!7667986 () Bool)

(assert (=> b!6981428 m!7667986))

(assert (=> b!6981428 m!7667952))

(declare-fun m!7667988 () Bool)

(assert (=> b!6981427 m!7667988))

(assert (=> b!6981249 d!2174114))

(assert (=> b!6981249 d!2174060))

(declare-fun d!2174118 () Bool)

(declare-fun e!4195947 () Bool)

(assert (=> d!2174118 e!4195947))

(declare-fun res!2846912 () Bool)

(assert (=> d!2174118 (=> (not res!2846912) (not e!4195947))))

(declare-fun lt!2482032 () Context!12344)

(declare-fun dynLambda!26767 (Int Context!12344) Context!12344)

(assert (=> d!2174118 (= res!2846912 (= lt!2481922 (dynLambda!26767 lambda!399249 lt!2482032)))))

(declare-fun choose!52059 ((Set Context!12344) Int Context!12344) Context!12344)

(assert (=> d!2174118 (= lt!2482032 (choose!52059 z1!570 lambda!399249 lt!2481922))))

(assert (=> d!2174118 (set.member lt!2481922 (map!15430 z1!570 lambda!399249))))

(assert (=> d!2174118 (= (mapPost2!31 z1!570 lambda!399249 lt!2481922) lt!2482032)))

(declare-fun b!6981433 () Bool)

(assert (=> b!6981433 (= e!4195947 (set.member lt!2482032 z1!570))))

(assert (= (and d!2174118 res!2846912) b!6981433))

(declare-fun b_lambda!261689 () Bool)

(assert (=> (not b_lambda!261689) (not d!2174118)))

(declare-fun m!7667992 () Bool)

(assert (=> d!2174118 m!7667992))

(declare-fun m!7667994 () Bool)

(assert (=> d!2174118 m!7667994))

(declare-fun m!7667996 () Bool)

(assert (=> d!2174118 m!7667996))

(declare-fun m!7667998 () Bool)

(assert (=> d!2174118 m!7667998))

(declare-fun m!7668000 () Bool)

(assert (=> b!6981433 m!7668000))

(assert (=> b!6981249 d!2174118))

(declare-fun condSetEmpty!47552 () Bool)

(assert (=> setNonEmpty!47546 (= condSetEmpty!47552 (= setRest!47546 (as set.empty (Set Context!12344))))))

(declare-fun setRes!47552 () Bool)

(assert (=> setNonEmpty!47546 (= tp!1928320 setRes!47552)))

(declare-fun setIsEmpty!47552 () Bool)

(assert (=> setIsEmpty!47552 setRes!47552))

(declare-fun setNonEmpty!47552 () Bool)

(declare-fun setElem!47552 () Context!12344)

(declare-fun e!4195950 () Bool)

(declare-fun tp!1928337 () Bool)

(assert (=> setNonEmpty!47552 (= setRes!47552 (and tp!1928337 (inv!85800 setElem!47552) e!4195950))))

(declare-fun setRest!47552 () (Set Context!12344))

(assert (=> setNonEmpty!47552 (= setRest!47546 (set.union (set.insert setElem!47552 (as set.empty (Set Context!12344))) setRest!47552))))

(declare-fun b!6981438 () Bool)

(declare-fun tp!1928338 () Bool)

(assert (=> b!6981438 (= e!4195950 tp!1928338)))

(assert (= (and setNonEmpty!47546 condSetEmpty!47552) setIsEmpty!47552))

(assert (= (and setNonEmpty!47546 (not condSetEmpty!47552)) setNonEmpty!47552))

(assert (= setNonEmpty!47552 b!6981438))

(declare-fun m!7668002 () Bool)

(assert (=> setNonEmpty!47552 m!7668002))

(declare-fun b!6981443 () Bool)

(declare-fun e!4195953 () Bool)

(declare-fun tp!1928343 () Bool)

(declare-fun tp!1928344 () Bool)

(assert (=> b!6981443 (= e!4195953 (and tp!1928343 tp!1928344))))

(assert (=> b!6981257 (= tp!1928317 e!4195953)))

(assert (= (and b!6981257 (is-Cons!66949 (exprs!6672 ct2!306))) b!6981443))

(declare-fun b!6981448 () Bool)

(declare-fun e!4195956 () Bool)

(declare-fun tp!1928347 () Bool)

(assert (=> b!6981448 (= e!4195956 (and tp_is_empty!43577 tp!1928347))))

(assert (=> b!6981258 (= tp!1928319 e!4195956)))

(assert (= (and b!6981258 (is-Cons!66950 (t!380817 s!7408))) b!6981448))

(declare-fun b!6981449 () Bool)

(declare-fun e!4195957 () Bool)

(declare-fun tp!1928348 () Bool)

(declare-fun tp!1928349 () Bool)

(assert (=> b!6981449 (= e!4195957 (and tp!1928348 tp!1928349))))

(assert (=> b!6981253 (= tp!1928318 e!4195957)))

(assert (= (and b!6981253 (is-Cons!66949 (exprs!6672 setElem!47546))) b!6981449))

(declare-fun b_lambda!261691 () Bool)

(assert (= b_lambda!261679 (or b!6981252 b_lambda!261691)))

(declare-fun bs!1860925 () Bool)

(declare-fun d!2174124 () Bool)

(assert (= bs!1860925 (and d!2174124 b!6981252)))

(assert (=> bs!1860925 (= (dynLambda!26763 lambda!399251 lt!2481924) (derivationStepZipperUp!1826 lt!2481924 (h!73398 s!7408)))))

(assert (=> bs!1860925 m!7667732))

(assert (=> d!2174058 d!2174124))

(declare-fun b_lambda!261693 () Bool)

(assert (= b_lambda!261687 (or b!6981249 b_lambda!261693)))

(declare-fun bs!1860926 () Bool)

(declare-fun d!2174126 () Bool)

(assert (= bs!1860926 (and d!2174126 b!6981249)))

(declare-fun validRegex!8838 (Regex!17176) Bool)

(assert (=> bs!1860926 (= (dynLambda!26766 lambda!399250 (h!73397 lt!2481930)) (validRegex!8838 (h!73397 lt!2481930)))))

(declare-fun m!7668004 () Bool)

(assert (=> bs!1860926 m!7668004))

(assert (=> b!6981361 d!2174126))

(declare-fun b_lambda!261695 () Bool)

(assert (= b_lambda!261689 (or b!6981249 b_lambda!261695)))

(declare-fun bs!1860927 () Bool)

(declare-fun d!2174128 () Bool)

(assert (= bs!1860927 (and d!2174128 b!6981249)))

(declare-fun lt!2482033 () Unit!161004)

(assert (=> bs!1860927 (= lt!2482033 (lemmaConcatPreservesForall!512 (exprs!6672 lt!2482032) (exprs!6672 ct2!306) lambda!399250))))

(assert (=> bs!1860927 (= (dynLambda!26767 lambda!399249 lt!2482032) (Context!12345 (++!15121 (exprs!6672 lt!2482032) (exprs!6672 ct2!306))))))

(declare-fun m!7668006 () Bool)

(assert (=> bs!1860927 m!7668006))

(declare-fun m!7668008 () Bool)

(assert (=> bs!1860927 m!7668008))

(assert (=> d!2174118 d!2174128))

(declare-fun b_lambda!261697 () Bool)

(assert (= b_lambda!261683 (or b!6981255 b_lambda!261697)))

(declare-fun bs!1860928 () Bool)

(declare-fun d!2174130 () Bool)

(assert (= bs!1860928 (and d!2174130 b!6981255)))

(assert (=> bs!1860928 (= (dynLambda!26764 lambda!399248 lt!2482010) (matchZipper!2716 (set.insert lt!2482010 (as set.empty (Set Context!12344))) s!7408))))

(declare-fun m!7668010 () Bool)

(assert (=> bs!1860928 m!7668010))

(assert (=> bs!1860928 m!7668010))

(declare-fun m!7668012 () Bool)

(assert (=> bs!1860928 m!7668012))

(assert (=> d!2174076 d!2174130))

(push 1)

(assert (not b!6981334))

(assert (not bm!633522))

(assert (not bs!1860926))

(assert (not b!6981449))

(assert (not b!6981422))

(assert (not b_lambda!261693))

(assert (not b!6981356))

(assert (not d!2174076))

(assert (not d!2174106))

(assert (not b!6981393))

(assert (not d!2174090))

(assert (not b!6981428))

(assert (not b_lambda!261691))

(assert (not bs!1860925))

(assert (not d!2174068))

(assert (not d!2174082))

(assert (not b!6981350))

(assert (not d!2174060))

(assert (not d!2174066))

(assert (not bm!633505))

(assert (not d!2174118))

(assert (not bs!1860927))

(assert (not b!6981443))

(assert (not bm!633519))

(assert (not b!6981367))

(assert (not b!6981448))

(assert (not d!2174086))

(assert (not d!2174052))

(assert (not b!6981415))

(assert (not d!2174058))

(assert (not b!6981416))

(assert (not bm!633521))

(assert (not d!2174114))

(assert (not b!6981438))

(assert (not b_lambda!261695))

(assert (not b!6981427))

(assert (not d!2174054))

(assert (not d!2174112))

(assert (not d!2174100))

(assert (not b_lambda!261697))

(assert tp_is_empty!43577)

(assert (not b!6981362))

(assert (not d!2174080))

(assert (not bs!1860928))

(assert (not b!6981355))

(assert (not setNonEmpty!47552))

(assert (not bm!633504))

(assert (not d!2174108))

(assert (not b!6981423))

(assert (not b!6981335))

(assert (not b!6981366))

(assert (not d!2174072))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

