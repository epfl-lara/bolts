; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!716018 () Bool)

(assert start!716018)

(declare-fun b!7331710 () Bool)

(declare-fun res!2962938 () Bool)

(declare-fun e!4390240 () Bool)

(assert (=> b!7331710 (=> (not res!2962938) (not e!4390240))))

(declare-datatypes ((C!38374 0))(
  ( (C!38375 (val!29547 Int)) )
))
(declare-datatypes ((Regex!19050 0))(
  ( (ElementMatch!19050 (c!1361360 C!38374)) (Concat!27895 (regOne!38612 Regex!19050) (regTwo!38612 Regex!19050)) (EmptyExpr!19050) (Star!19050 (reg!19379 Regex!19050)) (EmptyLang!19050) (Union!19050 (regOne!38613 Regex!19050) (regTwo!38613 Regex!19050)) )
))
(declare-datatypes ((List!71546 0))(
  ( (Nil!71422) (Cons!71422 (h!77870 Regex!19050) (t!385935 List!71546)) )
))
(declare-fun lt!2608050 () List!71546)

(declare-fun isEmpty!40962 (List!71546) Bool)

(assert (=> b!7331710 (= res!2962938 (not (isEmpty!40962 lt!2608050)))))

(declare-fun res!2962942 () Bool)

(declare-fun e!4390243 () Bool)

(assert (=> start!716018 (=> (not res!2962942) (not e!4390243))))

(declare-datatypes ((Context!15980 0))(
  ( (Context!15981 (exprs!8490 List!71546)) )
))
(declare-fun cWitness!35 () Context!15980)

(declare-fun lt!2608049 () (Set Context!15980))

(assert (=> start!716018 (= res!2962942 (set.member cWitness!35 lt!2608049))))

(declare-fun ct1!256 () Context!15980)

(declare-fun c!10305 () C!38374)

(declare-fun derivationStepZipperUp!2730 (Context!15980 C!38374) (Set Context!15980))

(assert (=> start!716018 (= lt!2608049 (derivationStepZipperUp!2730 ct1!256 c!10305))))

(assert (=> start!716018 e!4390243))

(declare-fun tp_is_empty!48345 () Bool)

(assert (=> start!716018 tp_is_empty!48345))

(declare-fun e!4390241 () Bool)

(declare-fun inv!90966 (Context!15980) Bool)

(assert (=> start!716018 (and (inv!90966 cWitness!35) e!4390241)))

(declare-fun e!4390242 () Bool)

(assert (=> start!716018 (and (inv!90966 ct1!256) e!4390242)))

(declare-fun ct2!352 () Context!15980)

(declare-fun e!4390237 () Bool)

(assert (=> start!716018 (and (inv!90966 ct2!352) e!4390237)))

(declare-fun b!7331711 () Bool)

(declare-fun tp!2081625 () Bool)

(assert (=> b!7331711 (= e!4390241 tp!2081625)))

(declare-fun b!7331712 () Bool)

(declare-fun e!4390239 () Bool)

(assert (=> b!7331712 (= e!4390243 e!4390239)))

(declare-fun res!2962941 () Bool)

(assert (=> b!7331712 (=> (not res!2962941) (not e!4390239))))

(assert (=> b!7331712 (= res!2962941 (is-Cons!71422 (exprs!8490 ct1!256)))))

(declare-fun ++!16872 (List!71546 List!71546) List!71546)

(assert (=> b!7331712 (= lt!2608050 (++!16872 (exprs!8490 ct1!256) (exprs!8490 ct2!352)))))

(declare-datatypes ((Unit!165061 0))(
  ( (Unit!165062) )
))
(declare-fun lt!2608053 () Unit!165061)

(declare-fun lambda!454762 () Int)

(declare-fun lemmaConcatPreservesForall!1729 (List!71546 List!71546 Int) Unit!165061)

(assert (=> b!7331712 (= lt!2608053 (lemmaConcatPreservesForall!1729 (exprs!8490 ct1!256) (exprs!8490 ct2!352) lambda!454762))))

(declare-fun b!7331713 () Bool)

(declare-fun tp!2081624 () Bool)

(assert (=> b!7331713 (= e!4390242 tp!2081624)))

(declare-fun b!7331714 () Bool)

(declare-fun e!4390238 () Bool)

(assert (=> b!7331714 (= e!4390238 e!4390240)))

(declare-fun res!2962937 () Bool)

(assert (=> b!7331714 (=> (not res!2962937) (not e!4390240))))

(declare-fun lt!2608054 () (Set Context!15980))

(declare-fun lt!2608048 () (Set Context!15980))

(assert (=> b!7331714 (= res!2962937 (and (= lt!2608049 (set.union lt!2608054 lt!2608048)) (or (set.member cWitness!35 lt!2608054) (set.member cWitness!35 lt!2608048)) (not (set.member cWitness!35 lt!2608048))))))

(declare-fun lt!2608051 () Context!15980)

(assert (=> b!7331714 (= lt!2608048 (derivationStepZipperUp!2730 lt!2608051 c!10305))))

(declare-fun b!7331715 () Bool)

(declare-fun validRegex!9654 (Regex!19050) Bool)

(assert (=> b!7331715 (= e!4390240 (not (validRegex!9654 (h!77870 (exprs!8490 ct1!256)))))))

(declare-fun lt!2608052 () (Set Context!15980))

(declare-fun derivationStepZipperDown!2877 (Regex!19050 Context!15980 C!38374) (Set Context!15980))

(declare-fun tail!14731 (List!71546) List!71546)

(assert (=> b!7331715 (= lt!2608052 (derivationStepZipperDown!2877 (h!77870 (exprs!8490 ct1!256)) (Context!15981 (tail!14731 lt!2608050)) c!10305))))

(declare-fun b!7331716 () Bool)

(assert (=> b!7331716 (= e!4390239 e!4390238)))

(declare-fun res!2962940 () Bool)

(assert (=> b!7331716 (=> (not res!2962940) (not e!4390238))))

(declare-fun nullable!8151 (Regex!19050) Bool)

(assert (=> b!7331716 (= res!2962940 (nullable!8151 (h!77870 (exprs!8490 ct1!256))))))

(assert (=> b!7331716 (= lt!2608054 (derivationStepZipperDown!2877 (h!77870 (exprs!8490 ct1!256)) lt!2608051 c!10305))))

(assert (=> b!7331716 (= lt!2608051 (Context!15981 (tail!14731 (exprs!8490 ct1!256))))))

(declare-fun b!7331717 () Bool)

(declare-fun tp!2081626 () Bool)

(assert (=> b!7331717 (= e!4390237 tp!2081626)))

(declare-fun b!7331718 () Bool)

(declare-fun res!2962939 () Bool)

(assert (=> b!7331718 (=> (not res!2962939) (not e!4390239))))

(assert (=> b!7331718 (= res!2962939 (not (isEmpty!40962 (exprs!8490 ct1!256))))))

(assert (= (and start!716018 res!2962942) b!7331712))

(assert (= (and b!7331712 res!2962941) b!7331718))

(assert (= (and b!7331718 res!2962939) b!7331716))

(assert (= (and b!7331716 res!2962940) b!7331714))

(assert (= (and b!7331714 res!2962937) b!7331710))

(assert (= (and b!7331710 res!2962938) b!7331715))

(assert (= start!716018 b!7331711))

(assert (= start!716018 b!7331713))

(assert (= start!716018 b!7331717))

(declare-fun m!7997734 () Bool)

(assert (=> b!7331718 m!7997734))

(declare-fun m!7997736 () Bool)

(assert (=> b!7331712 m!7997736))

(declare-fun m!7997738 () Bool)

(assert (=> b!7331712 m!7997738))

(declare-fun m!7997740 () Bool)

(assert (=> b!7331710 m!7997740))

(declare-fun m!7997742 () Bool)

(assert (=> b!7331716 m!7997742))

(declare-fun m!7997744 () Bool)

(assert (=> b!7331716 m!7997744))

(declare-fun m!7997746 () Bool)

(assert (=> b!7331716 m!7997746))

(declare-fun m!7997748 () Bool)

(assert (=> b!7331715 m!7997748))

(declare-fun m!7997750 () Bool)

(assert (=> b!7331715 m!7997750))

(declare-fun m!7997752 () Bool)

(assert (=> b!7331715 m!7997752))

(declare-fun m!7997754 () Bool)

(assert (=> b!7331714 m!7997754))

(declare-fun m!7997756 () Bool)

(assert (=> b!7331714 m!7997756))

(declare-fun m!7997758 () Bool)

(assert (=> b!7331714 m!7997758))

(declare-fun m!7997760 () Bool)

(assert (=> start!716018 m!7997760))

(declare-fun m!7997762 () Bool)

(assert (=> start!716018 m!7997762))

(declare-fun m!7997764 () Bool)

(assert (=> start!716018 m!7997764))

(declare-fun m!7997766 () Bool)

(assert (=> start!716018 m!7997766))

(declare-fun m!7997768 () Bool)

(assert (=> start!716018 m!7997768))

(push 1)

(assert (not b!7331717))

(assert (not b!7331710))

(assert (not b!7331715))

(assert (not b!7331718))

(assert (not start!716018))

(assert (not b!7331712))

(assert (not b!7331716))

(assert (not b!7331711))

(assert (not b!7331713))

(assert (not b!7331714))

(assert tp_is_empty!48345)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2276782 () Bool)

(assert (=> d!2276782 (= (isEmpty!40962 lt!2608050) (is-Nil!71422 lt!2608050))))

(assert (=> b!7331710 d!2276782))

(declare-fun d!2276784 () Bool)

(declare-fun nullableFct!3245 (Regex!19050) Bool)

(assert (=> d!2276784 (= (nullable!8151 (h!77870 (exprs!8490 ct1!256))) (nullableFct!3245 (h!77870 (exprs!8490 ct1!256))))))

(declare-fun bs!1917482 () Bool)

(assert (= bs!1917482 d!2276784))

(declare-fun m!7997806 () Bool)

(assert (=> bs!1917482 m!7997806))

(assert (=> b!7331716 d!2276784))

(declare-fun b!7331768 () Bool)

(declare-fun c!1361376 () Bool)

(declare-fun e!4390278 () Bool)

(assert (=> b!7331768 (= c!1361376 e!4390278)))

(declare-fun res!2962963 () Bool)

(assert (=> b!7331768 (=> (not res!2962963) (not e!4390278))))

(assert (=> b!7331768 (= res!2962963 (is-Concat!27895 (h!77870 (exprs!8490 ct1!256))))))

(declare-fun e!4390281 () (Set Context!15980))

(declare-fun e!4390277 () (Set Context!15980))

(assert (=> b!7331768 (= e!4390281 e!4390277)))

(declare-fun bm!667917 () Bool)

(declare-fun call!667924 () (Set Context!15980))

(declare-fun call!667923 () (Set Context!15980))

(assert (=> bm!667917 (= call!667924 call!667923)))

(declare-fun bm!667918 () Bool)

(declare-fun call!667925 () List!71546)

(declare-fun call!667926 () List!71546)

(assert (=> bm!667918 (= call!667925 call!667926)))

(declare-fun b!7331769 () Bool)

(declare-fun call!667927 () (Set Context!15980))

(declare-fun call!667922 () (Set Context!15980))

(assert (=> b!7331769 (= e!4390281 (set.union call!667927 call!667922))))

(declare-fun d!2276786 () Bool)

(declare-fun c!1361374 () Bool)

(assert (=> d!2276786 (= c!1361374 (and (is-ElementMatch!19050 (h!77870 (exprs!8490 ct1!256))) (= (c!1361360 (h!77870 (exprs!8490 ct1!256))) c!10305)))))

(declare-fun e!4390279 () (Set Context!15980))

(assert (=> d!2276786 (= (derivationStepZipperDown!2877 (h!77870 (exprs!8490 ct1!256)) lt!2608051 c!10305) e!4390279)))

(declare-fun b!7331770 () Bool)

(assert (=> b!7331770 (= e!4390279 e!4390281)))

(declare-fun c!1361375 () Bool)

(assert (=> b!7331770 (= c!1361375 (is-Union!19050 (h!77870 (exprs!8490 ct1!256))))))

(declare-fun bm!667919 () Bool)

(assert (=> bm!667919 (= call!667922 (derivationStepZipperDown!2877 (ite c!1361375 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256)))) (ite c!1361375 lt!2608051 (Context!15981 call!667926)) c!10305))))

(declare-fun bm!667920 () Bool)

(declare-fun c!1361373 () Bool)

(assert (=> bm!667920 (= call!667927 (derivationStepZipperDown!2877 (ite c!1361375 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361376 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361373 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256)))))) (ite (or c!1361375 c!1361376) lt!2608051 (Context!15981 call!667925)) c!10305))))

(declare-fun b!7331771 () Bool)

(declare-fun e!4390282 () (Set Context!15980))

(assert (=> b!7331771 (= e!4390282 (as set.empty (Set Context!15980)))))

(declare-fun bm!667921 () Bool)

(assert (=> bm!667921 (= call!667923 call!667927)))

(declare-fun b!7331772 () Bool)

(assert (=> b!7331772 (= e!4390277 (set.union call!667922 call!667923))))

(declare-fun bm!667922 () Bool)

(declare-fun $colon$colon!3062 (List!71546 Regex!19050) List!71546)

(assert (=> bm!667922 (= call!667926 ($colon$colon!3062 (exprs!8490 lt!2608051) (ite (or c!1361376 c!1361373) (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (h!77870 (exprs!8490 ct1!256)))))))

(declare-fun b!7331773 () Bool)

(declare-fun e!4390280 () (Set Context!15980))

(assert (=> b!7331773 (= e!4390277 e!4390280)))

(assert (=> b!7331773 (= c!1361373 (is-Concat!27895 (h!77870 (exprs!8490 ct1!256))))))

(declare-fun b!7331774 () Bool)

(assert (=> b!7331774 (= e!4390282 call!667924)))

(declare-fun b!7331775 () Bool)

(declare-fun c!1361372 () Bool)

(assert (=> b!7331775 (= c!1361372 (is-Star!19050 (h!77870 (exprs!8490 ct1!256))))))

(assert (=> b!7331775 (= e!4390280 e!4390282)))

(declare-fun b!7331776 () Bool)

(assert (=> b!7331776 (= e!4390279 (set.insert lt!2608051 (as set.empty (Set Context!15980))))))

(declare-fun b!7331777 () Bool)

(assert (=> b!7331777 (= e!4390280 call!667924)))

(declare-fun b!7331778 () Bool)

(assert (=> b!7331778 (= e!4390278 (nullable!8151 (regOne!38612 (h!77870 (exprs!8490 ct1!256)))))))

(assert (= (and d!2276786 c!1361374) b!7331776))

(assert (= (and d!2276786 (not c!1361374)) b!7331770))

(assert (= (and b!7331770 c!1361375) b!7331769))

(assert (= (and b!7331770 (not c!1361375)) b!7331768))

(assert (= (and b!7331768 res!2962963) b!7331778))

(assert (= (and b!7331768 c!1361376) b!7331772))

(assert (= (and b!7331768 (not c!1361376)) b!7331773))

(assert (= (and b!7331773 c!1361373) b!7331777))

(assert (= (and b!7331773 (not c!1361373)) b!7331775))

(assert (= (and b!7331775 c!1361372) b!7331774))

(assert (= (and b!7331775 (not c!1361372)) b!7331771))

(assert (= (or b!7331777 b!7331774) bm!667918))

(assert (= (or b!7331777 b!7331774) bm!667917))

(assert (= (or b!7331772 bm!667917) bm!667921))

(assert (= (or b!7331772 bm!667918) bm!667922))

(assert (= (or b!7331769 b!7331772) bm!667919))

(assert (= (or b!7331769 bm!667921) bm!667920))

(declare-fun m!7997808 () Bool)

(assert (=> bm!667922 m!7997808))

(declare-fun m!7997810 () Bool)

(assert (=> b!7331776 m!7997810))

(declare-fun m!7997812 () Bool)

(assert (=> bm!667919 m!7997812))

(declare-fun m!7997814 () Bool)

(assert (=> b!7331778 m!7997814))

(declare-fun m!7997816 () Bool)

(assert (=> bm!667920 m!7997816))

(assert (=> b!7331716 d!2276786))

(declare-fun d!2276790 () Bool)

(assert (=> d!2276790 (= (tail!14731 (exprs!8490 ct1!256)) (t!385935 (exprs!8490 ct1!256)))))

(assert (=> b!7331716 d!2276790))

(declare-fun d!2276792 () Bool)

(declare-fun e!4390294 () Bool)

(assert (=> d!2276792 e!4390294))

(declare-fun res!2962971 () Bool)

(assert (=> d!2276792 (=> (not res!2962971) (not e!4390294))))

(declare-fun lt!2608078 () List!71546)

(declare-fun content!14980 (List!71546) (Set Regex!19050))

(assert (=> d!2276792 (= res!2962971 (= (content!14980 lt!2608078) (set.union (content!14980 (exprs!8490 ct1!256)) (content!14980 (exprs!8490 ct2!352)))))))

(declare-fun e!4390293 () List!71546)

(assert (=> d!2276792 (= lt!2608078 e!4390293)))

(declare-fun c!1361383 () Bool)

(assert (=> d!2276792 (= c!1361383 (is-Nil!71422 (exprs!8490 ct1!256)))))

(assert (=> d!2276792 (= (++!16872 (exprs!8490 ct1!256) (exprs!8490 ct2!352)) lt!2608078)))

(declare-fun b!7331798 () Bool)

(assert (=> b!7331798 (= e!4390293 (Cons!71422 (h!77870 (exprs!8490 ct1!256)) (++!16872 (t!385935 (exprs!8490 ct1!256)) (exprs!8490 ct2!352))))))

(declare-fun b!7331799 () Bool)

(declare-fun res!2962970 () Bool)

(assert (=> b!7331799 (=> (not res!2962970) (not e!4390294))))

(declare-fun size!41959 (List!71546) Int)

(assert (=> b!7331799 (= res!2962970 (= (size!41959 lt!2608078) (+ (size!41959 (exprs!8490 ct1!256)) (size!41959 (exprs!8490 ct2!352)))))))

(declare-fun b!7331797 () Bool)

(assert (=> b!7331797 (= e!4390293 (exprs!8490 ct2!352))))

(declare-fun b!7331800 () Bool)

(assert (=> b!7331800 (= e!4390294 (or (not (= (exprs!8490 ct2!352) Nil!71422)) (= lt!2608078 (exprs!8490 ct1!256))))))

(assert (= (and d!2276792 c!1361383) b!7331797))

(assert (= (and d!2276792 (not c!1361383)) b!7331798))

(assert (= (and d!2276792 res!2962971) b!7331799))

(assert (= (and b!7331799 res!2962970) b!7331800))

(declare-fun m!7997818 () Bool)

(assert (=> d!2276792 m!7997818))

(declare-fun m!7997820 () Bool)

(assert (=> d!2276792 m!7997820))

(declare-fun m!7997822 () Bool)

(assert (=> d!2276792 m!7997822))

(declare-fun m!7997824 () Bool)

(assert (=> b!7331798 m!7997824))

(declare-fun m!7997826 () Bool)

(assert (=> b!7331799 m!7997826))

(declare-fun m!7997828 () Bool)

(assert (=> b!7331799 m!7997828))

(declare-fun m!7997830 () Bool)

(assert (=> b!7331799 m!7997830))

(assert (=> b!7331712 d!2276792))

(declare-fun d!2276794 () Bool)

(declare-fun forall!17889 (List!71546 Int) Bool)

(assert (=> d!2276794 (forall!17889 (++!16872 (exprs!8490 ct1!256) (exprs!8490 ct2!352)) lambda!454762)))

(declare-fun lt!2608081 () Unit!165061)

(declare-fun choose!57028 (List!71546 List!71546 Int) Unit!165061)

(assert (=> d!2276794 (= lt!2608081 (choose!57028 (exprs!8490 ct1!256) (exprs!8490 ct2!352) lambda!454762))))

(assert (=> d!2276794 (forall!17889 (exprs!8490 ct1!256) lambda!454762)))

(assert (=> d!2276794 (= (lemmaConcatPreservesForall!1729 (exprs!8490 ct1!256) (exprs!8490 ct2!352) lambda!454762) lt!2608081)))

(declare-fun bs!1917483 () Bool)

(assert (= bs!1917483 d!2276794))

(assert (=> bs!1917483 m!7997736))

(assert (=> bs!1917483 m!7997736))

(declare-fun m!7997838 () Bool)

(assert (=> bs!1917483 m!7997838))

(declare-fun m!7997840 () Bool)

(assert (=> bs!1917483 m!7997840))

(declare-fun m!7997842 () Bool)

(assert (=> bs!1917483 m!7997842))

(assert (=> b!7331712 d!2276794))

(declare-fun d!2276798 () Bool)

(assert (=> d!2276798 (= (isEmpty!40962 (exprs!8490 ct1!256)) (is-Nil!71422 (exprs!8490 ct1!256)))))

(assert (=> b!7331718 d!2276798))

(declare-fun b!7331835 () Bool)

(declare-fun e!4390319 () (Set Context!15980))

(declare-fun e!4390320 () (Set Context!15980))

(assert (=> b!7331835 (= e!4390319 e!4390320)))

(declare-fun c!1361395 () Bool)

(assert (=> b!7331835 (= c!1361395 (is-Cons!71422 (exprs!8490 ct1!256)))))

(declare-fun b!7331836 () Bool)

(assert (=> b!7331836 (= e!4390320 (as set.empty (Set Context!15980)))))

(declare-fun b!7331837 () Bool)

(declare-fun e!4390318 () Bool)

(assert (=> b!7331837 (= e!4390318 (nullable!8151 (h!77870 (exprs!8490 ct1!256))))))

(declare-fun bm!667930 () Bool)

(declare-fun call!667935 () (Set Context!15980))

(assert (=> bm!667930 (= call!667935 (derivationStepZipperDown!2877 (h!77870 (exprs!8490 ct1!256)) (Context!15981 (t!385935 (exprs!8490 ct1!256))) c!10305))))

(declare-fun b!7331838 () Bool)

(assert (=> b!7331838 (= e!4390319 (set.union call!667935 (derivationStepZipperUp!2730 (Context!15981 (t!385935 (exprs!8490 ct1!256))) c!10305)))))

(declare-fun b!7331834 () Bool)

(assert (=> b!7331834 (= e!4390320 call!667935)))

(declare-fun d!2276800 () Bool)

(declare-fun c!1361394 () Bool)

(assert (=> d!2276800 (= c!1361394 e!4390318)))

(declare-fun res!2962985 () Bool)

(assert (=> d!2276800 (=> (not res!2962985) (not e!4390318))))

(assert (=> d!2276800 (= res!2962985 (is-Cons!71422 (exprs!8490 ct1!256)))))

(assert (=> d!2276800 (= (derivationStepZipperUp!2730 ct1!256 c!10305) e!4390319)))

(assert (= (and d!2276800 res!2962985) b!7331837))

(assert (= (and d!2276800 c!1361394) b!7331838))

(assert (= (and d!2276800 (not c!1361394)) b!7331835))

(assert (= (and b!7331835 c!1361395) b!7331834))

(assert (= (and b!7331835 (not c!1361395)) b!7331836))

(assert (= (or b!7331838 b!7331834) bm!667930))

(assert (=> b!7331837 m!7997742))

(declare-fun m!7997844 () Bool)

(assert (=> bm!667930 m!7997844))

(declare-fun m!7997846 () Bool)

(assert (=> b!7331838 m!7997846))

(assert (=> start!716018 d!2276800))

(declare-fun bs!1917484 () Bool)

(declare-fun d!2276802 () Bool)

(assert (= bs!1917484 (and d!2276802 b!7331712)))

(declare-fun lambda!454768 () Int)

(assert (=> bs!1917484 (= lambda!454768 lambda!454762)))

(assert (=> d!2276802 (= (inv!90966 cWitness!35) (forall!17889 (exprs!8490 cWitness!35) lambda!454768))))

(declare-fun bs!1917485 () Bool)

(assert (= bs!1917485 d!2276802))

(declare-fun m!7997848 () Bool)

(assert (=> bs!1917485 m!7997848))

(assert (=> start!716018 d!2276802))

(declare-fun bs!1917486 () Bool)

(declare-fun d!2276804 () Bool)

(assert (= bs!1917486 (and d!2276804 b!7331712)))

(declare-fun lambda!454769 () Int)

(assert (=> bs!1917486 (= lambda!454769 lambda!454762)))

(declare-fun bs!1917487 () Bool)

(assert (= bs!1917487 (and d!2276804 d!2276802)))

(assert (=> bs!1917487 (= lambda!454769 lambda!454768)))

(assert (=> d!2276804 (= (inv!90966 ct1!256) (forall!17889 (exprs!8490 ct1!256) lambda!454769))))

(declare-fun bs!1917488 () Bool)

(assert (= bs!1917488 d!2276804))

(declare-fun m!7997850 () Bool)

(assert (=> bs!1917488 m!7997850))

(assert (=> start!716018 d!2276804))

(declare-fun bs!1917489 () Bool)

(declare-fun d!2276806 () Bool)

(assert (= bs!1917489 (and d!2276806 b!7331712)))

(declare-fun lambda!454770 () Int)

(assert (=> bs!1917489 (= lambda!454770 lambda!454762)))

(declare-fun bs!1917490 () Bool)

(assert (= bs!1917490 (and d!2276806 d!2276802)))

(assert (=> bs!1917490 (= lambda!454770 lambda!454768)))

(declare-fun bs!1917491 () Bool)

(assert (= bs!1917491 (and d!2276806 d!2276804)))

(assert (=> bs!1917491 (= lambda!454770 lambda!454769)))

(assert (=> d!2276806 (= (inv!90966 ct2!352) (forall!17889 (exprs!8490 ct2!352) lambda!454770))))

(declare-fun bs!1917492 () Bool)

(assert (= bs!1917492 d!2276806))

(declare-fun m!7997852 () Bool)

(assert (=> bs!1917492 m!7997852))

(assert (=> start!716018 d!2276806))

(declare-fun b!7331840 () Bool)

(declare-fun e!4390322 () (Set Context!15980))

(declare-fun e!4390323 () (Set Context!15980))

(assert (=> b!7331840 (= e!4390322 e!4390323)))

(declare-fun c!1361397 () Bool)

(assert (=> b!7331840 (= c!1361397 (is-Cons!71422 (exprs!8490 lt!2608051)))))

(declare-fun b!7331841 () Bool)

(assert (=> b!7331841 (= e!4390323 (as set.empty (Set Context!15980)))))

(declare-fun b!7331842 () Bool)

(declare-fun e!4390321 () Bool)

(assert (=> b!7331842 (= e!4390321 (nullable!8151 (h!77870 (exprs!8490 lt!2608051))))))

(declare-fun bm!667935 () Bool)

(declare-fun call!667940 () (Set Context!15980))

(assert (=> bm!667935 (= call!667940 (derivationStepZipperDown!2877 (h!77870 (exprs!8490 lt!2608051)) (Context!15981 (t!385935 (exprs!8490 lt!2608051))) c!10305))))

(declare-fun b!7331843 () Bool)

(assert (=> b!7331843 (= e!4390322 (set.union call!667940 (derivationStepZipperUp!2730 (Context!15981 (t!385935 (exprs!8490 lt!2608051))) c!10305)))))

(declare-fun b!7331839 () Bool)

(assert (=> b!7331839 (= e!4390323 call!667940)))

(declare-fun d!2276808 () Bool)

(declare-fun c!1361396 () Bool)

(assert (=> d!2276808 (= c!1361396 e!4390321)))

(declare-fun res!2962986 () Bool)

(assert (=> d!2276808 (=> (not res!2962986) (not e!4390321))))

(assert (=> d!2276808 (= res!2962986 (is-Cons!71422 (exprs!8490 lt!2608051)))))

(assert (=> d!2276808 (= (derivationStepZipperUp!2730 lt!2608051 c!10305) e!4390322)))

(assert (= (and d!2276808 res!2962986) b!7331842))

(assert (= (and d!2276808 c!1361396) b!7331843))

(assert (= (and d!2276808 (not c!1361396)) b!7331840))

(assert (= (and b!7331840 c!1361397) b!7331839))

(assert (= (and b!7331840 (not c!1361397)) b!7331841))

(assert (= (or b!7331843 b!7331839) bm!667935))

(declare-fun m!7997854 () Bool)

(assert (=> b!7331842 m!7997854))

(declare-fun m!7997856 () Bool)

(assert (=> bm!667935 m!7997856))

(declare-fun m!7997858 () Bool)

(assert (=> b!7331843 m!7997858))

(assert (=> b!7331714 d!2276808))

(declare-fun bm!667945 () Bool)

(declare-fun c!1361404 () Bool)

(declare-fun c!1361405 () Bool)

(declare-fun call!667951 () Bool)

(assert (=> bm!667945 (= call!667951 (validRegex!9654 (ite c!1361404 (reg!19379 (h!77870 (exprs!8490 ct1!256))) (ite c!1361405 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (regTwo!38612 (h!77870 (exprs!8490 ct1!256)))))))))

(declare-fun b!7331871 () Bool)

(declare-fun e!4390350 () Bool)

(declare-fun e!4390347 () Bool)

(assert (=> b!7331871 (= e!4390350 e!4390347)))

(declare-fun res!2963006 () Bool)

(assert (=> b!7331871 (= res!2963006 (not (nullable!8151 (reg!19379 (h!77870 (exprs!8490 ct1!256))))))))

(assert (=> b!7331871 (=> (not res!2963006) (not e!4390347))))

(declare-fun b!7331872 () Bool)

(declare-fun e!4390346 () Bool)

(declare-fun call!667950 () Bool)

(assert (=> b!7331872 (= e!4390346 call!667950)))

(declare-fun bm!667946 () Bool)

(declare-fun call!667952 () Bool)

(assert (=> bm!667946 (= call!667952 (validRegex!9654 (ite c!1361405 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))))))

(declare-fun b!7331873 () Bool)

(declare-fun res!2963002 () Bool)

(declare-fun e!4390345 () Bool)

(assert (=> b!7331873 (=> (not res!2963002) (not e!4390345))))

(assert (=> b!7331873 (= res!2963002 call!667950)))

(declare-fun e!4390348 () Bool)

(assert (=> b!7331873 (= e!4390348 e!4390345)))

(declare-fun b!7331874 () Bool)

(declare-fun e!4390349 () Bool)

(assert (=> b!7331874 (= e!4390349 e!4390350)))

(assert (=> b!7331874 (= c!1361404 (is-Star!19050 (h!77870 (exprs!8490 ct1!256))))))

(declare-fun b!7331875 () Bool)

(declare-fun res!2963005 () Bool)

(declare-fun e!4390351 () Bool)

(assert (=> b!7331875 (=> res!2963005 e!4390351)))

(assert (=> b!7331875 (= res!2963005 (not (is-Concat!27895 (h!77870 (exprs!8490 ct1!256)))))))

(assert (=> b!7331875 (= e!4390348 e!4390351)))

(declare-fun b!7331876 () Bool)

(assert (=> b!7331876 (= e!4390345 call!667952)))

(declare-fun b!7331877 () Bool)

(assert (=> b!7331877 (= e!4390351 e!4390346)))

(declare-fun res!2963003 () Bool)

(assert (=> b!7331877 (=> (not res!2963003) (not e!4390346))))

(assert (=> b!7331877 (= res!2963003 call!667952)))

(declare-fun b!7331878 () Bool)

(assert (=> b!7331878 (= e!4390347 call!667951)))

(declare-fun b!7331879 () Bool)

(assert (=> b!7331879 (= e!4390350 e!4390348)))

(assert (=> b!7331879 (= c!1361405 (is-Union!19050 (h!77870 (exprs!8490 ct1!256))))))

(declare-fun bm!667947 () Bool)

(assert (=> bm!667947 (= call!667950 call!667951)))

(declare-fun d!2276810 () Bool)

(declare-fun res!2963004 () Bool)

(assert (=> d!2276810 (=> res!2963004 e!4390349)))

(assert (=> d!2276810 (= res!2963004 (is-ElementMatch!19050 (h!77870 (exprs!8490 ct1!256))))))

(assert (=> d!2276810 (= (validRegex!9654 (h!77870 (exprs!8490 ct1!256))) e!4390349)))

(assert (= (and d!2276810 (not res!2963004)) b!7331874))

(assert (= (and b!7331874 c!1361404) b!7331871))

(assert (= (and b!7331874 (not c!1361404)) b!7331879))

(assert (= (and b!7331871 res!2963006) b!7331878))

(assert (= (and b!7331879 c!1361405) b!7331873))

(assert (= (and b!7331879 (not c!1361405)) b!7331875))

(assert (= (and b!7331873 res!2963002) b!7331876))

(assert (= (and b!7331875 (not res!2963005)) b!7331877))

(assert (= (and b!7331877 res!2963003) b!7331872))

(assert (= (or b!7331876 b!7331877) bm!667946))

(assert (= (or b!7331873 b!7331872) bm!667947))

(assert (= (or b!7331878 bm!667947) bm!667945))

(declare-fun m!7997866 () Bool)

(assert (=> bm!667945 m!7997866))

(declare-fun m!7997868 () Bool)

(assert (=> b!7331871 m!7997868))

(declare-fun m!7997870 () Bool)

(assert (=> bm!667946 m!7997870))

(assert (=> b!7331715 d!2276810))

(declare-fun b!7331880 () Bool)

(declare-fun c!1361410 () Bool)

(declare-fun e!4390353 () Bool)

(assert (=> b!7331880 (= c!1361410 e!4390353)))

(declare-fun res!2963007 () Bool)

(assert (=> b!7331880 (=> (not res!2963007) (not e!4390353))))

(assert (=> b!7331880 (= res!2963007 (is-Concat!27895 (h!77870 (exprs!8490 ct1!256))))))

(declare-fun e!4390356 () (Set Context!15980))

(declare-fun e!4390352 () (Set Context!15980))

(assert (=> b!7331880 (= e!4390356 e!4390352)))

(declare-fun bm!667948 () Bool)

(declare-fun call!667955 () (Set Context!15980))

(declare-fun call!667954 () (Set Context!15980))

(assert (=> bm!667948 (= call!667955 call!667954)))

(declare-fun bm!667949 () Bool)

(declare-fun call!667956 () List!71546)

(declare-fun call!667957 () List!71546)

(assert (=> bm!667949 (= call!667956 call!667957)))

(declare-fun b!7331881 () Bool)

(declare-fun call!667958 () (Set Context!15980))

(declare-fun call!667953 () (Set Context!15980))

(assert (=> b!7331881 (= e!4390356 (set.union call!667958 call!667953))))

(declare-fun d!2276814 () Bool)

(declare-fun c!1361408 () Bool)

(assert (=> d!2276814 (= c!1361408 (and (is-ElementMatch!19050 (h!77870 (exprs!8490 ct1!256))) (= (c!1361360 (h!77870 (exprs!8490 ct1!256))) c!10305)))))

(declare-fun e!4390354 () (Set Context!15980))

(assert (=> d!2276814 (= (derivationStepZipperDown!2877 (h!77870 (exprs!8490 ct1!256)) (Context!15981 (tail!14731 lt!2608050)) c!10305) e!4390354)))

(declare-fun b!7331882 () Bool)

(assert (=> b!7331882 (= e!4390354 e!4390356)))

(declare-fun c!1361409 () Bool)

(assert (=> b!7331882 (= c!1361409 (is-Union!19050 (h!77870 (exprs!8490 ct1!256))))))

(declare-fun bm!667950 () Bool)

(assert (=> bm!667950 (= call!667953 (derivationStepZipperDown!2877 (ite c!1361409 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256)))) (ite c!1361409 (Context!15981 (tail!14731 lt!2608050)) (Context!15981 call!667957)) c!10305))))

(declare-fun c!1361407 () Bool)

(declare-fun bm!667951 () Bool)

(assert (=> bm!667951 (= call!667958 (derivationStepZipperDown!2877 (ite c!1361409 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361410 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361407 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256)))))) (ite (or c!1361409 c!1361410) (Context!15981 (tail!14731 lt!2608050)) (Context!15981 call!667956)) c!10305))))

(declare-fun b!7331883 () Bool)

(declare-fun e!4390357 () (Set Context!15980))

(assert (=> b!7331883 (= e!4390357 (as set.empty (Set Context!15980)))))

(declare-fun bm!667952 () Bool)

(assert (=> bm!667952 (= call!667954 call!667958)))

(declare-fun b!7331884 () Bool)

(assert (=> b!7331884 (= e!4390352 (set.union call!667953 call!667954))))

(declare-fun bm!667953 () Bool)

(assert (=> bm!667953 (= call!667957 ($colon$colon!3062 (exprs!8490 (Context!15981 (tail!14731 lt!2608050))) (ite (or c!1361410 c!1361407) (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (h!77870 (exprs!8490 ct1!256)))))))

(declare-fun b!7331885 () Bool)

(declare-fun e!4390355 () (Set Context!15980))

(assert (=> b!7331885 (= e!4390352 e!4390355)))

(assert (=> b!7331885 (= c!1361407 (is-Concat!27895 (h!77870 (exprs!8490 ct1!256))))))

(declare-fun b!7331886 () Bool)

(assert (=> b!7331886 (= e!4390357 call!667955)))

(declare-fun b!7331887 () Bool)

(declare-fun c!1361406 () Bool)

(assert (=> b!7331887 (= c!1361406 (is-Star!19050 (h!77870 (exprs!8490 ct1!256))))))

(assert (=> b!7331887 (= e!4390355 e!4390357)))

(declare-fun b!7331888 () Bool)

(assert (=> b!7331888 (= e!4390354 (set.insert (Context!15981 (tail!14731 lt!2608050)) (as set.empty (Set Context!15980))))))

(declare-fun b!7331889 () Bool)

(assert (=> b!7331889 (= e!4390355 call!667955)))

(declare-fun b!7331890 () Bool)

(assert (=> b!7331890 (= e!4390353 (nullable!8151 (regOne!38612 (h!77870 (exprs!8490 ct1!256)))))))

(assert (= (and d!2276814 c!1361408) b!7331888))

(assert (= (and d!2276814 (not c!1361408)) b!7331882))

(assert (= (and b!7331882 c!1361409) b!7331881))

(assert (= (and b!7331882 (not c!1361409)) b!7331880))

(assert (= (and b!7331880 res!2963007) b!7331890))

(assert (= (and b!7331880 c!1361410) b!7331884))

(assert (= (and b!7331880 (not c!1361410)) b!7331885))

(assert (= (and b!7331885 c!1361407) b!7331889))

(assert (= (and b!7331885 (not c!1361407)) b!7331887))

(assert (= (and b!7331887 c!1361406) b!7331886))

(assert (= (and b!7331887 (not c!1361406)) b!7331883))

(assert (= (or b!7331889 b!7331886) bm!667949))

(assert (= (or b!7331889 b!7331886) bm!667948))

(assert (= (or b!7331884 bm!667948) bm!667952))

(assert (= (or b!7331884 bm!667949) bm!667953))

(assert (= (or b!7331881 b!7331884) bm!667950))

(assert (= (or b!7331881 bm!667952) bm!667951))

(declare-fun m!7997872 () Bool)

(assert (=> bm!667953 m!7997872))

(declare-fun m!7997874 () Bool)

(assert (=> b!7331888 m!7997874))

(declare-fun m!7997876 () Bool)

(assert (=> bm!667950 m!7997876))

(assert (=> b!7331890 m!7997814))

(declare-fun m!7997878 () Bool)

(assert (=> bm!667951 m!7997878))

(assert (=> b!7331715 d!2276814))

(declare-fun d!2276816 () Bool)

(assert (=> d!2276816 (= (tail!14731 lt!2608050) (t!385935 lt!2608050))))

(assert (=> b!7331715 d!2276816))

(declare-fun b!7331895 () Bool)

(declare-fun e!4390360 () Bool)

(declare-fun tp!2081640 () Bool)

(declare-fun tp!2081641 () Bool)

(assert (=> b!7331895 (= e!4390360 (and tp!2081640 tp!2081641))))

(assert (=> b!7331711 (= tp!2081625 e!4390360)))

(assert (= (and b!7331711 (is-Cons!71422 (exprs!8490 cWitness!35))) b!7331895))

(declare-fun b!7331896 () Bool)

(declare-fun e!4390361 () Bool)

(declare-fun tp!2081642 () Bool)

(declare-fun tp!2081643 () Bool)

(assert (=> b!7331896 (= e!4390361 (and tp!2081642 tp!2081643))))

(assert (=> b!7331717 (= tp!2081626 e!4390361)))

(assert (= (and b!7331717 (is-Cons!71422 (exprs!8490 ct2!352))) b!7331896))

(declare-fun b!7331897 () Bool)

(declare-fun e!4390362 () Bool)

(declare-fun tp!2081644 () Bool)

(declare-fun tp!2081645 () Bool)

(assert (=> b!7331897 (= e!4390362 (and tp!2081644 tp!2081645))))

(assert (=> b!7331713 (= tp!2081624 e!4390362)))

(assert (= (and b!7331713 (is-Cons!71422 (exprs!8490 ct1!256))) b!7331897))

(push 1)

(assert (not bm!667950))

(assert (not b!7331838))

(assert (not d!2276802))

(assert (not bm!667930))

(assert (not b!7331897))

(assert (not bm!667951))

(assert (not bm!667920))

(assert (not bm!667953))

(assert tp_is_empty!48345)

(assert (not b!7331895))

(assert (not bm!667935))

(assert (not bm!667919))

(assert (not b!7331798))

(assert (not b!7331778))

(assert (not d!2276794))

(assert (not b!7331842))

(assert (not b!7331896))

(assert (not b!7331799))

(assert (not b!7331871))

(assert (not bm!667922))

(assert (not d!2276784))

(assert (not d!2276804))

(assert (not b!7331890))

(assert (not bm!667946))

(assert (not d!2276806))

(assert (not bm!667945))

(assert (not b!7331837))

(assert (not b!7331843))

(assert (not d!2276792))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2276842 () Bool)

(assert (=> d!2276842 (= (nullable!8151 (h!77870 (exprs!8490 lt!2608051))) (nullableFct!3245 (h!77870 (exprs!8490 lt!2608051))))))

(declare-fun bs!1917504 () Bool)

(assert (= bs!1917504 d!2276842))

(declare-fun m!7997930 () Bool)

(assert (=> bs!1917504 m!7997930))

(assert (=> b!7331842 d!2276842))

(declare-fun b!7331966 () Bool)

(declare-fun c!1361440 () Bool)

(declare-fun e!4390402 () Bool)

(assert (=> b!7331966 (= c!1361440 e!4390402)))

(declare-fun res!2963019 () Bool)

(assert (=> b!7331966 (=> (not res!2963019) (not e!4390402))))

(assert (=> b!7331966 (= res!2963019 (is-Concat!27895 (h!77870 (exprs!8490 lt!2608051))))))

(declare-fun e!4390405 () (Set Context!15980))

(declare-fun e!4390401 () (Set Context!15980))

(assert (=> b!7331966 (= e!4390405 e!4390401)))

(declare-fun bm!667979 () Bool)

(declare-fun call!667986 () (Set Context!15980))

(declare-fun call!667985 () (Set Context!15980))

(assert (=> bm!667979 (= call!667986 call!667985)))

(declare-fun bm!667980 () Bool)

(declare-fun call!667987 () List!71546)

(declare-fun call!667988 () List!71546)

(assert (=> bm!667980 (= call!667987 call!667988)))

(declare-fun b!7331967 () Bool)

(declare-fun call!667989 () (Set Context!15980))

(declare-fun call!667984 () (Set Context!15980))

(assert (=> b!7331967 (= e!4390405 (set.union call!667989 call!667984))))

(declare-fun d!2276844 () Bool)

(declare-fun c!1361438 () Bool)

(assert (=> d!2276844 (= c!1361438 (and (is-ElementMatch!19050 (h!77870 (exprs!8490 lt!2608051))) (= (c!1361360 (h!77870 (exprs!8490 lt!2608051))) c!10305)))))

(declare-fun e!4390403 () (Set Context!15980))

(assert (=> d!2276844 (= (derivationStepZipperDown!2877 (h!77870 (exprs!8490 lt!2608051)) (Context!15981 (t!385935 (exprs!8490 lt!2608051))) c!10305) e!4390403)))

(declare-fun b!7331968 () Bool)

(assert (=> b!7331968 (= e!4390403 e!4390405)))

(declare-fun c!1361439 () Bool)

(assert (=> b!7331968 (= c!1361439 (is-Union!19050 (h!77870 (exprs!8490 lt!2608051))))))

(declare-fun bm!667981 () Bool)

(assert (=> bm!667981 (= call!667984 (derivationStepZipperDown!2877 (ite c!1361439 (regTwo!38613 (h!77870 (exprs!8490 lt!2608051))) (regOne!38612 (h!77870 (exprs!8490 lt!2608051)))) (ite c!1361439 (Context!15981 (t!385935 (exprs!8490 lt!2608051))) (Context!15981 call!667988)) c!10305))))

(declare-fun c!1361437 () Bool)

(declare-fun bm!667982 () Bool)

(assert (=> bm!667982 (= call!667989 (derivationStepZipperDown!2877 (ite c!1361439 (regOne!38613 (h!77870 (exprs!8490 lt!2608051))) (ite c!1361440 (regTwo!38612 (h!77870 (exprs!8490 lt!2608051))) (ite c!1361437 (regOne!38612 (h!77870 (exprs!8490 lt!2608051))) (reg!19379 (h!77870 (exprs!8490 lt!2608051)))))) (ite (or c!1361439 c!1361440) (Context!15981 (t!385935 (exprs!8490 lt!2608051))) (Context!15981 call!667987)) c!10305))))

(declare-fun b!7331969 () Bool)

(declare-fun e!4390406 () (Set Context!15980))

(assert (=> b!7331969 (= e!4390406 (as set.empty (Set Context!15980)))))

(declare-fun bm!667983 () Bool)

(assert (=> bm!667983 (= call!667985 call!667989)))

(declare-fun b!7331970 () Bool)

(assert (=> b!7331970 (= e!4390401 (set.union call!667984 call!667985))))

(declare-fun bm!667984 () Bool)

(assert (=> bm!667984 (= call!667988 ($colon$colon!3062 (exprs!8490 (Context!15981 (t!385935 (exprs!8490 lt!2608051)))) (ite (or c!1361440 c!1361437) (regTwo!38612 (h!77870 (exprs!8490 lt!2608051))) (h!77870 (exprs!8490 lt!2608051)))))))

(declare-fun b!7331971 () Bool)

(declare-fun e!4390404 () (Set Context!15980))

(assert (=> b!7331971 (= e!4390401 e!4390404)))

(assert (=> b!7331971 (= c!1361437 (is-Concat!27895 (h!77870 (exprs!8490 lt!2608051))))))

(declare-fun b!7331972 () Bool)

(assert (=> b!7331972 (= e!4390406 call!667986)))

(declare-fun b!7331973 () Bool)

(declare-fun c!1361436 () Bool)

(assert (=> b!7331973 (= c!1361436 (is-Star!19050 (h!77870 (exprs!8490 lt!2608051))))))

(assert (=> b!7331973 (= e!4390404 e!4390406)))

(declare-fun b!7331974 () Bool)

(assert (=> b!7331974 (= e!4390403 (set.insert (Context!15981 (t!385935 (exprs!8490 lt!2608051))) (as set.empty (Set Context!15980))))))

(declare-fun b!7331975 () Bool)

(assert (=> b!7331975 (= e!4390404 call!667986)))

(declare-fun b!7331976 () Bool)

(assert (=> b!7331976 (= e!4390402 (nullable!8151 (regOne!38612 (h!77870 (exprs!8490 lt!2608051)))))))

(assert (= (and d!2276844 c!1361438) b!7331974))

(assert (= (and d!2276844 (not c!1361438)) b!7331968))

(assert (= (and b!7331968 c!1361439) b!7331967))

(assert (= (and b!7331968 (not c!1361439)) b!7331966))

(assert (= (and b!7331966 res!2963019) b!7331976))

(assert (= (and b!7331966 c!1361440) b!7331970))

(assert (= (and b!7331966 (not c!1361440)) b!7331971))

(assert (= (and b!7331971 c!1361437) b!7331975))

(assert (= (and b!7331971 (not c!1361437)) b!7331973))

(assert (= (and b!7331973 c!1361436) b!7331972))

(assert (= (and b!7331973 (not c!1361436)) b!7331969))

(assert (= (or b!7331975 b!7331972) bm!667980))

(assert (= (or b!7331975 b!7331972) bm!667979))

(assert (= (or b!7331970 bm!667979) bm!667983))

(assert (= (or b!7331970 bm!667980) bm!667984))

(assert (= (or b!7331967 b!7331970) bm!667981))

(assert (= (or b!7331967 bm!667983) bm!667982))

(declare-fun m!7997932 () Bool)

(assert (=> bm!667984 m!7997932))

(declare-fun m!7997934 () Bool)

(assert (=> b!7331974 m!7997934))

(declare-fun m!7997936 () Bool)

(assert (=> bm!667981 m!7997936))

(declare-fun m!7997938 () Bool)

(assert (=> b!7331976 m!7997938))

(declare-fun m!7997940 () Bool)

(assert (=> bm!667982 m!7997940))

(assert (=> bm!667935 d!2276844))

(declare-fun call!667991 () Bool)

(declare-fun c!1361442 () Bool)

(declare-fun bm!667985 () Bool)

(declare-fun c!1361441 () Bool)

(assert (=> bm!667985 (= call!667991 (validRegex!9654 (ite c!1361441 (reg!19379 (ite c!1361405 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))) (ite c!1361442 (regOne!38613 (ite c!1361405 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))) (regTwo!38612 (ite c!1361405 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256)))))))))))

(declare-fun b!7331977 () Bool)

(declare-fun e!4390412 () Bool)

(declare-fun e!4390409 () Bool)

(assert (=> b!7331977 (= e!4390412 e!4390409)))

(declare-fun res!2963024 () Bool)

(assert (=> b!7331977 (= res!2963024 (not (nullable!8151 (reg!19379 (ite c!1361405 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))))))))

(assert (=> b!7331977 (=> (not res!2963024) (not e!4390409))))

(declare-fun b!7331978 () Bool)

(declare-fun e!4390408 () Bool)

(declare-fun call!667990 () Bool)

(assert (=> b!7331978 (= e!4390408 call!667990)))

(declare-fun call!667992 () Bool)

(declare-fun bm!667986 () Bool)

(assert (=> bm!667986 (= call!667992 (validRegex!9654 (ite c!1361442 (regTwo!38613 (ite c!1361405 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))) (regOne!38612 (ite c!1361405 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))))))))

(declare-fun b!7331979 () Bool)

(declare-fun res!2963020 () Bool)

(declare-fun e!4390407 () Bool)

(assert (=> b!7331979 (=> (not res!2963020) (not e!4390407))))

(assert (=> b!7331979 (= res!2963020 call!667990)))

(declare-fun e!4390410 () Bool)

(assert (=> b!7331979 (= e!4390410 e!4390407)))

(declare-fun b!7331980 () Bool)

(declare-fun e!4390411 () Bool)

(assert (=> b!7331980 (= e!4390411 e!4390412)))

(assert (=> b!7331980 (= c!1361441 (is-Star!19050 (ite c!1361405 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))))))

(declare-fun b!7331981 () Bool)

(declare-fun res!2963023 () Bool)

(declare-fun e!4390413 () Bool)

(assert (=> b!7331981 (=> res!2963023 e!4390413)))

(assert (=> b!7331981 (= res!2963023 (not (is-Concat!27895 (ite c!1361405 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256)))))))))

(assert (=> b!7331981 (= e!4390410 e!4390413)))

(declare-fun b!7331982 () Bool)

(assert (=> b!7331982 (= e!4390407 call!667992)))

(declare-fun b!7331983 () Bool)

(assert (=> b!7331983 (= e!4390413 e!4390408)))

(declare-fun res!2963021 () Bool)

(assert (=> b!7331983 (=> (not res!2963021) (not e!4390408))))

(assert (=> b!7331983 (= res!2963021 call!667992)))

(declare-fun b!7331984 () Bool)

(assert (=> b!7331984 (= e!4390409 call!667991)))

(declare-fun b!7331985 () Bool)

(assert (=> b!7331985 (= e!4390412 e!4390410)))

(assert (=> b!7331985 (= c!1361442 (is-Union!19050 (ite c!1361405 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))))))

(declare-fun bm!667987 () Bool)

(assert (=> bm!667987 (= call!667990 call!667991)))

(declare-fun d!2276846 () Bool)

(declare-fun res!2963022 () Bool)

(assert (=> d!2276846 (=> res!2963022 e!4390411)))

(assert (=> d!2276846 (= res!2963022 (is-ElementMatch!19050 (ite c!1361405 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))))))

(assert (=> d!2276846 (= (validRegex!9654 (ite c!1361405 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))) e!4390411)))

(assert (= (and d!2276846 (not res!2963022)) b!7331980))

(assert (= (and b!7331980 c!1361441) b!7331977))

(assert (= (and b!7331980 (not c!1361441)) b!7331985))

(assert (= (and b!7331977 res!2963024) b!7331984))

(assert (= (and b!7331985 c!1361442) b!7331979))

(assert (= (and b!7331985 (not c!1361442)) b!7331981))

(assert (= (and b!7331979 res!2963020) b!7331982))

(assert (= (and b!7331981 (not res!2963023)) b!7331983))

(assert (= (and b!7331983 res!2963021) b!7331978))

(assert (= (or b!7331982 b!7331983) bm!667986))

(assert (= (or b!7331979 b!7331978) bm!667987))

(assert (= (or b!7331984 bm!667987) bm!667985))

(declare-fun m!7997942 () Bool)

(assert (=> bm!667985 m!7997942))

(declare-fun m!7997944 () Bool)

(assert (=> b!7331977 m!7997944))

(declare-fun m!7997946 () Bool)

(assert (=> bm!667986 m!7997946))

(assert (=> bm!667946 d!2276846))

(declare-fun d!2276848 () Bool)

(declare-fun res!2963029 () Bool)

(declare-fun e!4390418 () Bool)

(assert (=> d!2276848 (=> res!2963029 e!4390418)))

(assert (=> d!2276848 (= res!2963029 (is-Nil!71422 (exprs!8490 ct2!352)))))

(assert (=> d!2276848 (= (forall!17889 (exprs!8490 ct2!352) lambda!454770) e!4390418)))

(declare-fun b!7331990 () Bool)

(declare-fun e!4390419 () Bool)

(assert (=> b!7331990 (= e!4390418 e!4390419)))

(declare-fun res!2963030 () Bool)

(assert (=> b!7331990 (=> (not res!2963030) (not e!4390419))))

(declare-fun dynLambda!29425 (Int Regex!19050) Bool)

(assert (=> b!7331990 (= res!2963030 (dynLambda!29425 lambda!454770 (h!77870 (exprs!8490 ct2!352))))))

(declare-fun b!7331991 () Bool)

(assert (=> b!7331991 (= e!4390419 (forall!17889 (t!385935 (exprs!8490 ct2!352)) lambda!454770))))

(assert (= (and d!2276848 (not res!2963029)) b!7331990))

(assert (= (and b!7331990 res!2963030) b!7331991))

(declare-fun b_lambda!283587 () Bool)

(assert (=> (not b_lambda!283587) (not b!7331990)))

(declare-fun m!7997948 () Bool)

(assert (=> b!7331990 m!7997948))

(declare-fun m!7997950 () Bool)

(assert (=> b!7331991 m!7997950))

(assert (=> d!2276806 d!2276848))

(declare-fun b!7331993 () Bool)

(declare-fun e!4390421 () (Set Context!15980))

(declare-fun e!4390422 () (Set Context!15980))

(assert (=> b!7331993 (= e!4390421 e!4390422)))

(declare-fun c!1361444 () Bool)

(assert (=> b!7331993 (= c!1361444 (is-Cons!71422 (exprs!8490 (Context!15981 (t!385935 (exprs!8490 lt!2608051))))))))

(declare-fun b!7331994 () Bool)

(assert (=> b!7331994 (= e!4390422 (as set.empty (Set Context!15980)))))

(declare-fun b!7331995 () Bool)

(declare-fun e!4390420 () Bool)

(assert (=> b!7331995 (= e!4390420 (nullable!8151 (h!77870 (exprs!8490 (Context!15981 (t!385935 (exprs!8490 lt!2608051)))))))))

(declare-fun bm!667988 () Bool)

(declare-fun call!667993 () (Set Context!15980))

(assert (=> bm!667988 (= call!667993 (derivationStepZipperDown!2877 (h!77870 (exprs!8490 (Context!15981 (t!385935 (exprs!8490 lt!2608051))))) (Context!15981 (t!385935 (exprs!8490 (Context!15981 (t!385935 (exprs!8490 lt!2608051)))))) c!10305))))

(declare-fun b!7331996 () Bool)

(assert (=> b!7331996 (= e!4390421 (set.union call!667993 (derivationStepZipperUp!2730 (Context!15981 (t!385935 (exprs!8490 (Context!15981 (t!385935 (exprs!8490 lt!2608051)))))) c!10305)))))

(declare-fun b!7331992 () Bool)

(assert (=> b!7331992 (= e!4390422 call!667993)))

(declare-fun d!2276850 () Bool)

(declare-fun c!1361443 () Bool)

(assert (=> d!2276850 (= c!1361443 e!4390420)))

(declare-fun res!2963031 () Bool)

(assert (=> d!2276850 (=> (not res!2963031) (not e!4390420))))

(assert (=> d!2276850 (= res!2963031 (is-Cons!71422 (exprs!8490 (Context!15981 (t!385935 (exprs!8490 lt!2608051))))))))

(assert (=> d!2276850 (= (derivationStepZipperUp!2730 (Context!15981 (t!385935 (exprs!8490 lt!2608051))) c!10305) e!4390421)))

(assert (= (and d!2276850 res!2963031) b!7331995))

(assert (= (and d!2276850 c!1361443) b!7331996))

(assert (= (and d!2276850 (not c!1361443)) b!7331993))

(assert (= (and b!7331993 c!1361444) b!7331992))

(assert (= (and b!7331993 (not c!1361444)) b!7331994))

(assert (= (or b!7331996 b!7331992) bm!667988))

(declare-fun m!7997952 () Bool)

(assert (=> b!7331995 m!7997952))

(declare-fun m!7997954 () Bool)

(assert (=> bm!667988 m!7997954))

(declare-fun m!7997956 () Bool)

(assert (=> b!7331996 m!7997956))

(assert (=> b!7331843 d!2276850))

(declare-fun c!1361446 () Bool)

(declare-fun call!667995 () Bool)

(declare-fun c!1361445 () Bool)

(declare-fun bm!667989 () Bool)

(assert (=> bm!667989 (= call!667995 (validRegex!9654 (ite c!1361445 (reg!19379 (ite c!1361404 (reg!19379 (h!77870 (exprs!8490 ct1!256))) (ite c!1361405 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (regTwo!38612 (h!77870 (exprs!8490 ct1!256)))))) (ite c!1361446 (regOne!38613 (ite c!1361404 (reg!19379 (h!77870 (exprs!8490 ct1!256))) (ite c!1361405 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (regTwo!38612 (h!77870 (exprs!8490 ct1!256)))))) (regTwo!38612 (ite c!1361404 (reg!19379 (h!77870 (exprs!8490 ct1!256))) (ite c!1361405 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (regTwo!38612 (h!77870 (exprs!8490 ct1!256))))))))))))

(declare-fun b!7331997 () Bool)

(declare-fun e!4390428 () Bool)

(declare-fun e!4390425 () Bool)

(assert (=> b!7331997 (= e!4390428 e!4390425)))

(declare-fun res!2963036 () Bool)

(assert (=> b!7331997 (= res!2963036 (not (nullable!8151 (reg!19379 (ite c!1361404 (reg!19379 (h!77870 (exprs!8490 ct1!256))) (ite c!1361405 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (regTwo!38612 (h!77870 (exprs!8490 ct1!256)))))))))))

(assert (=> b!7331997 (=> (not res!2963036) (not e!4390425))))

(declare-fun b!7331998 () Bool)

(declare-fun e!4390424 () Bool)

(declare-fun call!667994 () Bool)

(assert (=> b!7331998 (= e!4390424 call!667994)))

(declare-fun bm!667990 () Bool)

(declare-fun call!667996 () Bool)

(assert (=> bm!667990 (= call!667996 (validRegex!9654 (ite c!1361446 (regTwo!38613 (ite c!1361404 (reg!19379 (h!77870 (exprs!8490 ct1!256))) (ite c!1361405 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (regTwo!38612 (h!77870 (exprs!8490 ct1!256)))))) (regOne!38612 (ite c!1361404 (reg!19379 (h!77870 (exprs!8490 ct1!256))) (ite c!1361405 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (regTwo!38612 (h!77870 (exprs!8490 ct1!256)))))))))))

(declare-fun b!7331999 () Bool)

(declare-fun res!2963032 () Bool)

(declare-fun e!4390423 () Bool)

(assert (=> b!7331999 (=> (not res!2963032) (not e!4390423))))

(assert (=> b!7331999 (= res!2963032 call!667994)))

(declare-fun e!4390426 () Bool)

(assert (=> b!7331999 (= e!4390426 e!4390423)))

(declare-fun b!7332000 () Bool)

(declare-fun e!4390427 () Bool)

(assert (=> b!7332000 (= e!4390427 e!4390428)))

(assert (=> b!7332000 (= c!1361445 (is-Star!19050 (ite c!1361404 (reg!19379 (h!77870 (exprs!8490 ct1!256))) (ite c!1361405 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (regTwo!38612 (h!77870 (exprs!8490 ct1!256)))))))))

(declare-fun b!7332001 () Bool)

(declare-fun res!2963035 () Bool)

(declare-fun e!4390429 () Bool)

(assert (=> b!7332001 (=> res!2963035 e!4390429)))

(assert (=> b!7332001 (= res!2963035 (not (is-Concat!27895 (ite c!1361404 (reg!19379 (h!77870 (exprs!8490 ct1!256))) (ite c!1361405 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (regTwo!38612 (h!77870 (exprs!8490 ct1!256))))))))))

(assert (=> b!7332001 (= e!4390426 e!4390429)))

(declare-fun b!7332002 () Bool)

(assert (=> b!7332002 (= e!4390423 call!667996)))

(declare-fun b!7332003 () Bool)

(assert (=> b!7332003 (= e!4390429 e!4390424)))

(declare-fun res!2963033 () Bool)

(assert (=> b!7332003 (=> (not res!2963033) (not e!4390424))))

(assert (=> b!7332003 (= res!2963033 call!667996)))

(declare-fun b!7332004 () Bool)

(assert (=> b!7332004 (= e!4390425 call!667995)))

(declare-fun b!7332005 () Bool)

(assert (=> b!7332005 (= e!4390428 e!4390426)))

(assert (=> b!7332005 (= c!1361446 (is-Union!19050 (ite c!1361404 (reg!19379 (h!77870 (exprs!8490 ct1!256))) (ite c!1361405 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (regTwo!38612 (h!77870 (exprs!8490 ct1!256)))))))))

(declare-fun bm!667991 () Bool)

(assert (=> bm!667991 (= call!667994 call!667995)))

(declare-fun d!2276852 () Bool)

(declare-fun res!2963034 () Bool)

(assert (=> d!2276852 (=> res!2963034 e!4390427)))

(assert (=> d!2276852 (= res!2963034 (is-ElementMatch!19050 (ite c!1361404 (reg!19379 (h!77870 (exprs!8490 ct1!256))) (ite c!1361405 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (regTwo!38612 (h!77870 (exprs!8490 ct1!256)))))))))

(assert (=> d!2276852 (= (validRegex!9654 (ite c!1361404 (reg!19379 (h!77870 (exprs!8490 ct1!256))) (ite c!1361405 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (regTwo!38612 (h!77870 (exprs!8490 ct1!256)))))) e!4390427)))

(assert (= (and d!2276852 (not res!2963034)) b!7332000))

(assert (= (and b!7332000 c!1361445) b!7331997))

(assert (= (and b!7332000 (not c!1361445)) b!7332005))

(assert (= (and b!7331997 res!2963036) b!7332004))

(assert (= (and b!7332005 c!1361446) b!7331999))

(assert (= (and b!7332005 (not c!1361446)) b!7332001))

(assert (= (and b!7331999 res!2963032) b!7332002))

(assert (= (and b!7332001 (not res!2963035)) b!7332003))

(assert (= (and b!7332003 res!2963033) b!7331998))

(assert (= (or b!7332002 b!7332003) bm!667990))

(assert (= (or b!7331999 b!7331998) bm!667991))

(assert (= (or b!7332004 bm!667991) bm!667989))

(declare-fun m!7997958 () Bool)

(assert (=> bm!667989 m!7997958))

(declare-fun m!7997960 () Bool)

(assert (=> b!7331997 m!7997960))

(declare-fun m!7997962 () Bool)

(assert (=> bm!667990 m!7997962))

(assert (=> bm!667945 d!2276852))

(declare-fun b!7332006 () Bool)

(declare-fun c!1361451 () Bool)

(declare-fun e!4390431 () Bool)

(assert (=> b!7332006 (= c!1361451 e!4390431)))

(declare-fun res!2963037 () Bool)

(assert (=> b!7332006 (=> (not res!2963037) (not e!4390431))))

(assert (=> b!7332006 (= res!2963037 (is-Concat!27895 (ite c!1361409 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))))))

(declare-fun e!4390434 () (Set Context!15980))

(declare-fun e!4390430 () (Set Context!15980))

(assert (=> b!7332006 (= e!4390434 e!4390430)))

(declare-fun bm!667992 () Bool)

(declare-fun call!667999 () (Set Context!15980))

(declare-fun call!667998 () (Set Context!15980))

(assert (=> bm!667992 (= call!667999 call!667998)))

(declare-fun bm!667993 () Bool)

(declare-fun call!668000 () List!71546)

(declare-fun call!668001 () List!71546)

(assert (=> bm!667993 (= call!668000 call!668001)))

(declare-fun b!7332007 () Bool)

(declare-fun call!668002 () (Set Context!15980))

(declare-fun call!667997 () (Set Context!15980))

(assert (=> b!7332007 (= e!4390434 (set.union call!668002 call!667997))))

(declare-fun c!1361449 () Bool)

(declare-fun d!2276854 () Bool)

(assert (=> d!2276854 (= c!1361449 (and (is-ElementMatch!19050 (ite c!1361409 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))) (= (c!1361360 (ite c!1361409 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))) c!10305)))))

(declare-fun e!4390432 () (Set Context!15980))

(assert (=> d!2276854 (= (derivationStepZipperDown!2877 (ite c!1361409 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256)))) (ite c!1361409 (Context!15981 (tail!14731 lt!2608050)) (Context!15981 call!667957)) c!10305) e!4390432)))

(declare-fun b!7332008 () Bool)

(assert (=> b!7332008 (= e!4390432 e!4390434)))

(declare-fun c!1361450 () Bool)

(assert (=> b!7332008 (= c!1361450 (is-Union!19050 (ite c!1361409 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))))))

(declare-fun bm!667994 () Bool)

(assert (=> bm!667994 (= call!667997 (derivationStepZipperDown!2877 (ite c!1361450 (regTwo!38613 (ite c!1361409 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))) (regOne!38612 (ite c!1361409 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256)))))) (ite c!1361450 (ite c!1361409 (Context!15981 (tail!14731 lt!2608050)) (Context!15981 call!667957)) (Context!15981 call!668001)) c!10305))))

(declare-fun bm!667995 () Bool)

(declare-fun c!1361448 () Bool)

(assert (=> bm!667995 (= call!668002 (derivationStepZipperDown!2877 (ite c!1361450 (regOne!38613 (ite c!1361409 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))) (ite c!1361451 (regTwo!38612 (ite c!1361409 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))) (ite c!1361448 (regOne!38612 (ite c!1361409 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))) (reg!19379 (ite c!1361409 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256)))))))) (ite (or c!1361450 c!1361451) (ite c!1361409 (Context!15981 (tail!14731 lt!2608050)) (Context!15981 call!667957)) (Context!15981 call!668000)) c!10305))))

(declare-fun b!7332009 () Bool)

(declare-fun e!4390435 () (Set Context!15980))

(assert (=> b!7332009 (= e!4390435 (as set.empty (Set Context!15980)))))

(declare-fun bm!667996 () Bool)

(assert (=> bm!667996 (= call!667998 call!668002)))

(declare-fun b!7332010 () Bool)

(assert (=> b!7332010 (= e!4390430 (set.union call!667997 call!667998))))

(declare-fun bm!667997 () Bool)

(assert (=> bm!667997 (= call!668001 ($colon$colon!3062 (exprs!8490 (ite c!1361409 (Context!15981 (tail!14731 lt!2608050)) (Context!15981 call!667957))) (ite (or c!1361451 c!1361448) (regTwo!38612 (ite c!1361409 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))) (ite c!1361409 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256)))))))))

(declare-fun b!7332011 () Bool)

(declare-fun e!4390433 () (Set Context!15980))

(assert (=> b!7332011 (= e!4390430 e!4390433)))

(assert (=> b!7332011 (= c!1361448 (is-Concat!27895 (ite c!1361409 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))))))

(declare-fun b!7332012 () Bool)

(assert (=> b!7332012 (= e!4390435 call!667999)))

(declare-fun b!7332013 () Bool)

(declare-fun c!1361447 () Bool)

(assert (=> b!7332013 (= c!1361447 (is-Star!19050 (ite c!1361409 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))))))

(assert (=> b!7332013 (= e!4390433 e!4390435)))

(declare-fun b!7332014 () Bool)

(assert (=> b!7332014 (= e!4390432 (set.insert (ite c!1361409 (Context!15981 (tail!14731 lt!2608050)) (Context!15981 call!667957)) (as set.empty (Set Context!15980))))))

(declare-fun b!7332015 () Bool)

(assert (=> b!7332015 (= e!4390433 call!667999)))

(declare-fun b!7332016 () Bool)

(assert (=> b!7332016 (= e!4390431 (nullable!8151 (regOne!38612 (ite c!1361409 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256)))))))))

(assert (= (and d!2276854 c!1361449) b!7332014))

(assert (= (and d!2276854 (not c!1361449)) b!7332008))

(assert (= (and b!7332008 c!1361450) b!7332007))

(assert (= (and b!7332008 (not c!1361450)) b!7332006))

(assert (= (and b!7332006 res!2963037) b!7332016))

(assert (= (and b!7332006 c!1361451) b!7332010))

(assert (= (and b!7332006 (not c!1361451)) b!7332011))

(assert (= (and b!7332011 c!1361448) b!7332015))

(assert (= (and b!7332011 (not c!1361448)) b!7332013))

(assert (= (and b!7332013 c!1361447) b!7332012))

(assert (= (and b!7332013 (not c!1361447)) b!7332009))

(assert (= (or b!7332015 b!7332012) bm!667993))

(assert (= (or b!7332015 b!7332012) bm!667992))

(assert (= (or b!7332010 bm!667992) bm!667996))

(assert (= (or b!7332010 bm!667993) bm!667997))

(assert (= (or b!7332007 b!7332010) bm!667994))

(assert (= (or b!7332007 bm!667996) bm!667995))

(declare-fun m!7997964 () Bool)

(assert (=> bm!667997 m!7997964))

(declare-fun m!7997966 () Bool)

(assert (=> b!7332014 m!7997966))

(declare-fun m!7997968 () Bool)

(assert (=> bm!667994 m!7997968))

(declare-fun m!7997970 () Bool)

(assert (=> b!7332016 m!7997970))

(declare-fun m!7997972 () Bool)

(assert (=> bm!667995 m!7997972))

(assert (=> bm!667950 d!2276854))

(declare-fun b!7332017 () Bool)

(declare-fun c!1361456 () Bool)

(declare-fun e!4390437 () Bool)

(assert (=> b!7332017 (= c!1361456 e!4390437)))

(declare-fun res!2963038 () Bool)

(assert (=> b!7332017 (=> (not res!2963038) (not e!4390437))))

(assert (=> b!7332017 (= res!2963038 (is-Concat!27895 (ite c!1361375 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))))))

(declare-fun e!4390440 () (Set Context!15980))

(declare-fun e!4390436 () (Set Context!15980))

(assert (=> b!7332017 (= e!4390440 e!4390436)))

(declare-fun bm!667998 () Bool)

(declare-fun call!668005 () (Set Context!15980))

(declare-fun call!668004 () (Set Context!15980))

(assert (=> bm!667998 (= call!668005 call!668004)))

(declare-fun bm!667999 () Bool)

(declare-fun call!668006 () List!71546)

(declare-fun call!668007 () List!71546)

(assert (=> bm!667999 (= call!668006 call!668007)))

(declare-fun b!7332018 () Bool)

(declare-fun call!668008 () (Set Context!15980))

(declare-fun call!668003 () (Set Context!15980))

(assert (=> b!7332018 (= e!4390440 (set.union call!668008 call!668003))))

(declare-fun d!2276856 () Bool)

(declare-fun c!1361454 () Bool)

(assert (=> d!2276856 (= c!1361454 (and (is-ElementMatch!19050 (ite c!1361375 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))) (= (c!1361360 (ite c!1361375 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))) c!10305)))))

(declare-fun e!4390438 () (Set Context!15980))

(assert (=> d!2276856 (= (derivationStepZipperDown!2877 (ite c!1361375 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256)))) (ite c!1361375 lt!2608051 (Context!15981 call!667926)) c!10305) e!4390438)))

(declare-fun b!7332019 () Bool)

(assert (=> b!7332019 (= e!4390438 e!4390440)))

(declare-fun c!1361455 () Bool)

(assert (=> b!7332019 (= c!1361455 (is-Union!19050 (ite c!1361375 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))))))

(declare-fun bm!668000 () Bool)

(assert (=> bm!668000 (= call!668003 (derivationStepZipperDown!2877 (ite c!1361455 (regTwo!38613 (ite c!1361375 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))) (regOne!38612 (ite c!1361375 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256)))))) (ite c!1361455 (ite c!1361375 lt!2608051 (Context!15981 call!667926)) (Context!15981 call!668007)) c!10305))))

(declare-fun bm!668001 () Bool)

(declare-fun c!1361453 () Bool)

(assert (=> bm!668001 (= call!668008 (derivationStepZipperDown!2877 (ite c!1361455 (regOne!38613 (ite c!1361375 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))) (ite c!1361456 (regTwo!38612 (ite c!1361375 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))) (ite c!1361453 (regOne!38612 (ite c!1361375 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))) (reg!19379 (ite c!1361375 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256)))))))) (ite (or c!1361455 c!1361456) (ite c!1361375 lt!2608051 (Context!15981 call!667926)) (Context!15981 call!668006)) c!10305))))

(declare-fun b!7332020 () Bool)

(declare-fun e!4390441 () (Set Context!15980))

(assert (=> b!7332020 (= e!4390441 (as set.empty (Set Context!15980)))))

(declare-fun bm!668002 () Bool)

(assert (=> bm!668002 (= call!668004 call!668008)))

(declare-fun b!7332021 () Bool)

(assert (=> b!7332021 (= e!4390436 (set.union call!668003 call!668004))))

(declare-fun bm!668003 () Bool)

(assert (=> bm!668003 (= call!668007 ($colon$colon!3062 (exprs!8490 (ite c!1361375 lt!2608051 (Context!15981 call!667926))) (ite (or c!1361456 c!1361453) (regTwo!38612 (ite c!1361375 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))) (ite c!1361375 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256)))))))))

(declare-fun b!7332022 () Bool)

(declare-fun e!4390439 () (Set Context!15980))

(assert (=> b!7332022 (= e!4390436 e!4390439)))

(assert (=> b!7332022 (= c!1361453 (is-Concat!27895 (ite c!1361375 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))))))

(declare-fun b!7332023 () Bool)

(assert (=> b!7332023 (= e!4390441 call!668005)))

(declare-fun b!7332024 () Bool)

(declare-fun c!1361452 () Bool)

(assert (=> b!7332024 (= c!1361452 (is-Star!19050 (ite c!1361375 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))))))

(assert (=> b!7332024 (= e!4390439 e!4390441)))

(declare-fun b!7332025 () Bool)

(assert (=> b!7332025 (= e!4390438 (set.insert (ite c!1361375 lt!2608051 (Context!15981 call!667926)) (as set.empty (Set Context!15980))))))

(declare-fun b!7332026 () Bool)

(assert (=> b!7332026 (= e!4390439 call!668005)))

(declare-fun b!7332027 () Bool)

(assert (=> b!7332027 (= e!4390437 (nullable!8151 (regOne!38612 (ite c!1361375 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256)))))))))

(assert (= (and d!2276856 c!1361454) b!7332025))

(assert (= (and d!2276856 (not c!1361454)) b!7332019))

(assert (= (and b!7332019 c!1361455) b!7332018))

(assert (= (and b!7332019 (not c!1361455)) b!7332017))

(assert (= (and b!7332017 res!2963038) b!7332027))

(assert (= (and b!7332017 c!1361456) b!7332021))

(assert (= (and b!7332017 (not c!1361456)) b!7332022))

(assert (= (and b!7332022 c!1361453) b!7332026))

(assert (= (and b!7332022 (not c!1361453)) b!7332024))

(assert (= (and b!7332024 c!1361452) b!7332023))

(assert (= (and b!7332024 (not c!1361452)) b!7332020))

(assert (= (or b!7332026 b!7332023) bm!667999))

(assert (= (or b!7332026 b!7332023) bm!667998))

(assert (= (or b!7332021 bm!667998) bm!668002))

(assert (= (or b!7332021 bm!667999) bm!668003))

(assert (= (or b!7332018 b!7332021) bm!668000))

(assert (= (or b!7332018 bm!668002) bm!668001))

(declare-fun m!7997974 () Bool)

(assert (=> bm!668003 m!7997974))

(declare-fun m!7997976 () Bool)

(assert (=> b!7332025 m!7997976))

(declare-fun m!7997978 () Bool)

(assert (=> bm!668000 m!7997978))

(declare-fun m!7997980 () Bool)

(assert (=> b!7332027 m!7997980))

(declare-fun m!7997982 () Bool)

(assert (=> bm!668001 m!7997982))

(assert (=> bm!667919 d!2276856))

(declare-fun d!2276858 () Bool)

(assert (=> d!2276858 (= (nullable!8151 (reg!19379 (h!77870 (exprs!8490 ct1!256)))) (nullableFct!3245 (reg!19379 (h!77870 (exprs!8490 ct1!256)))))))

(declare-fun bs!1917505 () Bool)

(assert (= bs!1917505 d!2276858))

(declare-fun m!7997984 () Bool)

(assert (=> bs!1917505 m!7997984))

(assert (=> b!7331871 d!2276858))

(declare-fun b!7332028 () Bool)

(declare-fun c!1361461 () Bool)

(declare-fun e!4390443 () Bool)

(assert (=> b!7332028 (= c!1361461 e!4390443)))

(declare-fun res!2963039 () Bool)

(assert (=> b!7332028 (=> (not res!2963039) (not e!4390443))))

(assert (=> b!7332028 (= res!2963039 (is-Concat!27895 (ite c!1361409 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361410 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361407 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256))))))))))

(declare-fun e!4390446 () (Set Context!15980))

(declare-fun e!4390442 () (Set Context!15980))

(assert (=> b!7332028 (= e!4390446 e!4390442)))

(declare-fun bm!668004 () Bool)

(declare-fun call!668011 () (Set Context!15980))

(declare-fun call!668010 () (Set Context!15980))

(assert (=> bm!668004 (= call!668011 call!668010)))

(declare-fun bm!668005 () Bool)

(declare-fun call!668012 () List!71546)

(declare-fun call!668013 () List!71546)

(assert (=> bm!668005 (= call!668012 call!668013)))

(declare-fun b!7332029 () Bool)

(declare-fun call!668014 () (Set Context!15980))

(declare-fun call!668009 () (Set Context!15980))

(assert (=> b!7332029 (= e!4390446 (set.union call!668014 call!668009))))

(declare-fun d!2276860 () Bool)

(declare-fun c!1361459 () Bool)

(assert (=> d!2276860 (= c!1361459 (and (is-ElementMatch!19050 (ite c!1361409 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361410 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361407 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256))))))) (= (c!1361360 (ite c!1361409 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361410 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361407 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256))))))) c!10305)))))

(declare-fun e!4390444 () (Set Context!15980))

(assert (=> d!2276860 (= (derivationStepZipperDown!2877 (ite c!1361409 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361410 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361407 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256)))))) (ite (or c!1361409 c!1361410) (Context!15981 (tail!14731 lt!2608050)) (Context!15981 call!667956)) c!10305) e!4390444)))

(declare-fun b!7332030 () Bool)

(assert (=> b!7332030 (= e!4390444 e!4390446)))

(declare-fun c!1361460 () Bool)

(assert (=> b!7332030 (= c!1361460 (is-Union!19050 (ite c!1361409 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361410 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361407 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256))))))))))

(declare-fun bm!668006 () Bool)

(assert (=> bm!668006 (= call!668009 (derivationStepZipperDown!2877 (ite c!1361460 (regTwo!38613 (ite c!1361409 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361410 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361407 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256))))))) (regOne!38612 (ite c!1361409 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361410 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361407 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256)))))))) (ite c!1361460 (ite (or c!1361409 c!1361410) (Context!15981 (tail!14731 lt!2608050)) (Context!15981 call!667956)) (Context!15981 call!668013)) c!10305))))

(declare-fun c!1361458 () Bool)

(declare-fun bm!668007 () Bool)

(assert (=> bm!668007 (= call!668014 (derivationStepZipperDown!2877 (ite c!1361460 (regOne!38613 (ite c!1361409 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361410 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361407 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256))))))) (ite c!1361461 (regTwo!38612 (ite c!1361409 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361410 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361407 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256))))))) (ite c!1361458 (regOne!38612 (ite c!1361409 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361410 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361407 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256))))))) (reg!19379 (ite c!1361409 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361410 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361407 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256)))))))))) (ite (or c!1361460 c!1361461) (ite (or c!1361409 c!1361410) (Context!15981 (tail!14731 lt!2608050)) (Context!15981 call!667956)) (Context!15981 call!668012)) c!10305))))

(declare-fun b!7332031 () Bool)

(declare-fun e!4390447 () (Set Context!15980))

(assert (=> b!7332031 (= e!4390447 (as set.empty (Set Context!15980)))))

(declare-fun bm!668008 () Bool)

(assert (=> bm!668008 (= call!668010 call!668014)))

(declare-fun b!7332032 () Bool)

(assert (=> b!7332032 (= e!4390442 (set.union call!668009 call!668010))))

(declare-fun bm!668009 () Bool)

(assert (=> bm!668009 (= call!668013 ($colon$colon!3062 (exprs!8490 (ite (or c!1361409 c!1361410) (Context!15981 (tail!14731 lt!2608050)) (Context!15981 call!667956))) (ite (or c!1361461 c!1361458) (regTwo!38612 (ite c!1361409 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361410 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361407 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256))))))) (ite c!1361409 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361410 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361407 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256)))))))))))

(declare-fun b!7332033 () Bool)

(declare-fun e!4390445 () (Set Context!15980))

(assert (=> b!7332033 (= e!4390442 e!4390445)))

(assert (=> b!7332033 (= c!1361458 (is-Concat!27895 (ite c!1361409 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361410 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361407 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256))))))))))

(declare-fun b!7332034 () Bool)

(assert (=> b!7332034 (= e!4390447 call!668011)))

(declare-fun b!7332035 () Bool)

(declare-fun c!1361457 () Bool)

(assert (=> b!7332035 (= c!1361457 (is-Star!19050 (ite c!1361409 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361410 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361407 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256))))))))))

(assert (=> b!7332035 (= e!4390445 e!4390447)))

(declare-fun b!7332036 () Bool)

(assert (=> b!7332036 (= e!4390444 (set.insert (ite (or c!1361409 c!1361410) (Context!15981 (tail!14731 lt!2608050)) (Context!15981 call!667956)) (as set.empty (Set Context!15980))))))

(declare-fun b!7332037 () Bool)

(assert (=> b!7332037 (= e!4390445 call!668011)))

(declare-fun b!7332038 () Bool)

(assert (=> b!7332038 (= e!4390443 (nullable!8151 (regOne!38612 (ite c!1361409 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361410 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361407 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256)))))))))))

(assert (= (and d!2276860 c!1361459) b!7332036))

(assert (= (and d!2276860 (not c!1361459)) b!7332030))

(assert (= (and b!7332030 c!1361460) b!7332029))

(assert (= (and b!7332030 (not c!1361460)) b!7332028))

(assert (= (and b!7332028 res!2963039) b!7332038))

(assert (= (and b!7332028 c!1361461) b!7332032))

(assert (= (and b!7332028 (not c!1361461)) b!7332033))

(assert (= (and b!7332033 c!1361458) b!7332037))

(assert (= (and b!7332033 (not c!1361458)) b!7332035))

(assert (= (and b!7332035 c!1361457) b!7332034))

(assert (= (and b!7332035 (not c!1361457)) b!7332031))

(assert (= (or b!7332037 b!7332034) bm!668005))

(assert (= (or b!7332037 b!7332034) bm!668004))

(assert (= (or b!7332032 bm!668004) bm!668008))

(assert (= (or b!7332032 bm!668005) bm!668009))

(assert (= (or b!7332029 b!7332032) bm!668006))

(assert (= (or b!7332029 bm!668008) bm!668007))

(declare-fun m!7997986 () Bool)

(assert (=> bm!668009 m!7997986))

(declare-fun m!7997988 () Bool)

(assert (=> b!7332036 m!7997988))

(declare-fun m!7997990 () Bool)

(assert (=> bm!668006 m!7997990))

(declare-fun m!7997992 () Bool)

(assert (=> b!7332038 m!7997992))

(declare-fun m!7997994 () Bool)

(assert (=> bm!668007 m!7997994))

(assert (=> bm!667951 d!2276860))

(declare-fun b!7332039 () Bool)

(declare-fun c!1361466 () Bool)

(declare-fun e!4390449 () Bool)

(assert (=> b!7332039 (= c!1361466 e!4390449)))

(declare-fun res!2963040 () Bool)

(assert (=> b!7332039 (=> (not res!2963040) (not e!4390449))))

(assert (=> b!7332039 (= res!2963040 (is-Concat!27895 (ite c!1361375 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361376 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361373 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256))))))))))

(declare-fun e!4390452 () (Set Context!15980))

(declare-fun e!4390448 () (Set Context!15980))

(assert (=> b!7332039 (= e!4390452 e!4390448)))

(declare-fun bm!668010 () Bool)

(declare-fun call!668017 () (Set Context!15980))

(declare-fun call!668016 () (Set Context!15980))

(assert (=> bm!668010 (= call!668017 call!668016)))

(declare-fun bm!668011 () Bool)

(declare-fun call!668018 () List!71546)

(declare-fun call!668019 () List!71546)

(assert (=> bm!668011 (= call!668018 call!668019)))

(declare-fun b!7332040 () Bool)

(declare-fun call!668020 () (Set Context!15980))

(declare-fun call!668015 () (Set Context!15980))

(assert (=> b!7332040 (= e!4390452 (set.union call!668020 call!668015))))

(declare-fun d!2276862 () Bool)

(declare-fun c!1361464 () Bool)

(assert (=> d!2276862 (= c!1361464 (and (is-ElementMatch!19050 (ite c!1361375 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361376 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361373 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256))))))) (= (c!1361360 (ite c!1361375 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361376 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361373 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256))))))) c!10305)))))

(declare-fun e!4390450 () (Set Context!15980))

(assert (=> d!2276862 (= (derivationStepZipperDown!2877 (ite c!1361375 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361376 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361373 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256)))))) (ite (or c!1361375 c!1361376) lt!2608051 (Context!15981 call!667925)) c!10305) e!4390450)))

(declare-fun b!7332041 () Bool)

(assert (=> b!7332041 (= e!4390450 e!4390452)))

(declare-fun c!1361465 () Bool)

(assert (=> b!7332041 (= c!1361465 (is-Union!19050 (ite c!1361375 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361376 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361373 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256))))))))))

(declare-fun bm!668012 () Bool)

(assert (=> bm!668012 (= call!668015 (derivationStepZipperDown!2877 (ite c!1361465 (regTwo!38613 (ite c!1361375 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361376 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361373 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256))))))) (regOne!38612 (ite c!1361375 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361376 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361373 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256)))))))) (ite c!1361465 (ite (or c!1361375 c!1361376) lt!2608051 (Context!15981 call!667925)) (Context!15981 call!668019)) c!10305))))

(declare-fun c!1361463 () Bool)

(declare-fun bm!668013 () Bool)

(assert (=> bm!668013 (= call!668020 (derivationStepZipperDown!2877 (ite c!1361465 (regOne!38613 (ite c!1361375 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361376 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361373 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256))))))) (ite c!1361466 (regTwo!38612 (ite c!1361375 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361376 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361373 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256))))))) (ite c!1361463 (regOne!38612 (ite c!1361375 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361376 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361373 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256))))))) (reg!19379 (ite c!1361375 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361376 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361373 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256)))))))))) (ite (or c!1361465 c!1361466) (ite (or c!1361375 c!1361376) lt!2608051 (Context!15981 call!667925)) (Context!15981 call!668018)) c!10305))))

(declare-fun b!7332042 () Bool)

(declare-fun e!4390453 () (Set Context!15980))

(assert (=> b!7332042 (= e!4390453 (as set.empty (Set Context!15980)))))

(declare-fun bm!668014 () Bool)

(assert (=> bm!668014 (= call!668016 call!668020)))

(declare-fun b!7332043 () Bool)

(assert (=> b!7332043 (= e!4390448 (set.union call!668015 call!668016))))

(declare-fun bm!668015 () Bool)

(assert (=> bm!668015 (= call!668019 ($colon$colon!3062 (exprs!8490 (ite (or c!1361375 c!1361376) lt!2608051 (Context!15981 call!667925))) (ite (or c!1361466 c!1361463) (regTwo!38612 (ite c!1361375 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361376 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361373 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256))))))) (ite c!1361375 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361376 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361373 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256)))))))))))

(declare-fun b!7332044 () Bool)

(declare-fun e!4390451 () (Set Context!15980))

(assert (=> b!7332044 (= e!4390448 e!4390451)))

(assert (=> b!7332044 (= c!1361463 (is-Concat!27895 (ite c!1361375 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361376 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361373 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256))))))))))

(declare-fun b!7332045 () Bool)

(assert (=> b!7332045 (= e!4390453 call!668017)))

(declare-fun b!7332046 () Bool)

(declare-fun c!1361462 () Bool)

(assert (=> b!7332046 (= c!1361462 (is-Star!19050 (ite c!1361375 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361376 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361373 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256))))))))))

(assert (=> b!7332046 (= e!4390451 e!4390453)))

(declare-fun b!7332047 () Bool)

(assert (=> b!7332047 (= e!4390450 (set.insert (ite (or c!1361375 c!1361376) lt!2608051 (Context!15981 call!667925)) (as set.empty (Set Context!15980))))))

(declare-fun b!7332048 () Bool)

(assert (=> b!7332048 (= e!4390451 call!668017)))

(declare-fun b!7332049 () Bool)

(assert (=> b!7332049 (= e!4390449 (nullable!8151 (regOne!38612 (ite c!1361375 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361376 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361373 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256)))))))))))

(assert (= (and d!2276862 c!1361464) b!7332047))

(assert (= (and d!2276862 (not c!1361464)) b!7332041))

(assert (= (and b!7332041 c!1361465) b!7332040))

(assert (= (and b!7332041 (not c!1361465)) b!7332039))

(assert (= (and b!7332039 res!2963040) b!7332049))

(assert (= (and b!7332039 c!1361466) b!7332043))

(assert (= (and b!7332039 (not c!1361466)) b!7332044))

(assert (= (and b!7332044 c!1361463) b!7332048))

(assert (= (and b!7332044 (not c!1361463)) b!7332046))

(assert (= (and b!7332046 c!1361462) b!7332045))

(assert (= (and b!7332046 (not c!1361462)) b!7332042))

(assert (= (or b!7332048 b!7332045) bm!668011))

(assert (= (or b!7332048 b!7332045) bm!668010))

(assert (= (or b!7332043 bm!668010) bm!668014))

(assert (= (or b!7332043 bm!668011) bm!668015))

(assert (= (or b!7332040 b!7332043) bm!668012))

(assert (= (or b!7332040 bm!668014) bm!668013))

(declare-fun m!7997996 () Bool)

(assert (=> bm!668015 m!7997996))

(declare-fun m!7997998 () Bool)

(assert (=> b!7332047 m!7997998))

(declare-fun m!7998000 () Bool)

(assert (=> bm!668012 m!7998000))

(declare-fun m!7998002 () Bool)

(assert (=> b!7332049 m!7998002))

(declare-fun m!7998004 () Bool)

(assert (=> bm!668013 m!7998004))

(assert (=> bm!667920 d!2276862))

(declare-fun d!2276864 () Bool)

(declare-fun res!2963041 () Bool)

(declare-fun e!4390454 () Bool)

(assert (=> d!2276864 (=> res!2963041 e!4390454)))

(assert (=> d!2276864 (= res!2963041 (is-Nil!71422 (exprs!8490 cWitness!35)))))

(assert (=> d!2276864 (= (forall!17889 (exprs!8490 cWitness!35) lambda!454768) e!4390454)))

(declare-fun b!7332050 () Bool)

(declare-fun e!4390455 () Bool)

(assert (=> b!7332050 (= e!4390454 e!4390455)))

(declare-fun res!2963042 () Bool)

(assert (=> b!7332050 (=> (not res!2963042) (not e!4390455))))

(assert (=> b!7332050 (= res!2963042 (dynLambda!29425 lambda!454768 (h!77870 (exprs!8490 cWitness!35))))))

(declare-fun b!7332051 () Bool)

(assert (=> b!7332051 (= e!4390455 (forall!17889 (t!385935 (exprs!8490 cWitness!35)) lambda!454768))))

(assert (= (and d!2276864 (not res!2963041)) b!7332050))

(assert (= (and b!7332050 res!2963042) b!7332051))

(declare-fun b_lambda!283589 () Bool)

(assert (=> (not b_lambda!283589) (not b!7332050)))

(declare-fun m!7998006 () Bool)

(assert (=> b!7332050 m!7998006))

(declare-fun m!7998008 () Bool)

(assert (=> b!7332051 m!7998008))

(assert (=> d!2276802 d!2276864))

(declare-fun d!2276866 () Bool)

(declare-fun res!2963043 () Bool)

(declare-fun e!4390456 () Bool)

(assert (=> d!2276866 (=> res!2963043 e!4390456)))

(assert (=> d!2276866 (= res!2963043 (is-Nil!71422 (exprs!8490 ct1!256)))))

(assert (=> d!2276866 (= (forall!17889 (exprs!8490 ct1!256) lambda!454769) e!4390456)))

(declare-fun b!7332052 () Bool)

(declare-fun e!4390457 () Bool)

(assert (=> b!7332052 (= e!4390456 e!4390457)))

(declare-fun res!2963044 () Bool)

(assert (=> b!7332052 (=> (not res!2963044) (not e!4390457))))

(assert (=> b!7332052 (= res!2963044 (dynLambda!29425 lambda!454769 (h!77870 (exprs!8490 ct1!256))))))

(declare-fun b!7332053 () Bool)

(assert (=> b!7332053 (= e!4390457 (forall!17889 (t!385935 (exprs!8490 ct1!256)) lambda!454769))))

(assert (= (and d!2276866 (not res!2963043)) b!7332052))

(assert (= (and b!7332052 res!2963044) b!7332053))

(declare-fun b_lambda!283591 () Bool)

(assert (=> (not b_lambda!283591) (not b!7332052)))

(declare-fun m!7998010 () Bool)

(assert (=> b!7332052 m!7998010))

(declare-fun m!7998012 () Bool)

(assert (=> b!7332053 m!7998012))

(assert (=> d!2276804 d!2276866))

(declare-fun b!7332068 () Bool)

(declare-fun e!4390473 () Bool)

(declare-fun e!4390470 () Bool)

(assert (=> b!7332068 (= e!4390473 e!4390470)))

(declare-fun res!2963056 () Bool)

(assert (=> b!7332068 (=> (not res!2963056) (not e!4390470))))

(assert (=> b!7332068 (= res!2963056 (and (not (is-EmptyLang!19050 (h!77870 (exprs!8490 ct1!256)))) (not (is-ElementMatch!19050 (h!77870 (exprs!8490 ct1!256))))))))

(declare-fun bm!668020 () Bool)

(declare-fun call!668025 () Bool)

(declare-fun c!1361469 () Bool)

(assert (=> bm!668020 (= call!668025 (nullable!8151 (ite c!1361469 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (regTwo!38612 (h!77870 (exprs!8490 ct1!256))))))))

(declare-fun d!2276868 () Bool)

(declare-fun res!2963055 () Bool)

(assert (=> d!2276868 (=> res!2963055 e!4390473)))

(assert (=> d!2276868 (= res!2963055 (is-EmptyExpr!19050 (h!77870 (exprs!8490 ct1!256))))))

(assert (=> d!2276868 (= (nullableFct!3245 (h!77870 (exprs!8490 ct1!256))) e!4390473)))

(declare-fun b!7332069 () Bool)

(declare-fun e!4390475 () Bool)

(assert (=> b!7332069 (= e!4390475 call!668025)))

(declare-fun b!7332070 () Bool)

(declare-fun e!4390472 () Bool)

(declare-fun e!4390474 () Bool)

(assert (=> b!7332070 (= e!4390472 e!4390474)))

(assert (=> b!7332070 (= c!1361469 (is-Union!19050 (h!77870 (exprs!8490 ct1!256))))))

(declare-fun b!7332071 () Bool)

(assert (=> b!7332071 (= e!4390474 e!4390475)))

(declare-fun res!2963058 () Bool)

(declare-fun call!668026 () Bool)

(assert (=> b!7332071 (= res!2963058 call!668026)))

(assert (=> b!7332071 (=> (not res!2963058) (not e!4390475))))

(declare-fun b!7332072 () Bool)

(declare-fun e!4390471 () Bool)

(assert (=> b!7332072 (= e!4390474 e!4390471)))

(declare-fun res!2963057 () Bool)

(assert (=> b!7332072 (= res!2963057 call!668025)))

(assert (=> b!7332072 (=> res!2963057 e!4390471)))

(declare-fun b!7332073 () Bool)

(assert (=> b!7332073 (= e!4390471 call!668026)))

(declare-fun b!7332074 () Bool)

(assert (=> b!7332074 (= e!4390470 e!4390472)))

(declare-fun res!2963059 () Bool)

(assert (=> b!7332074 (=> res!2963059 e!4390472)))

(assert (=> b!7332074 (= res!2963059 (is-Star!19050 (h!77870 (exprs!8490 ct1!256))))))

(declare-fun bm!668021 () Bool)

(assert (=> bm!668021 (= call!668026 (nullable!8151 (ite c!1361469 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256))))))))

(assert (= (and d!2276868 (not res!2963055)) b!7332068))

(assert (= (and b!7332068 res!2963056) b!7332074))

(assert (= (and b!7332074 (not res!2963059)) b!7332070))

(assert (= (and b!7332070 c!1361469) b!7332072))

(assert (= (and b!7332070 (not c!1361469)) b!7332071))

(assert (= (and b!7332072 (not res!2963057)) b!7332073))

(assert (= (and b!7332071 res!2963058) b!7332069))

(assert (= (or b!7332072 b!7332069) bm!668020))

(assert (= (or b!7332073 b!7332071) bm!668021))

(declare-fun m!7998014 () Bool)

(assert (=> bm!668020 m!7998014))

(declare-fun m!7998016 () Bool)

(assert (=> bm!668021 m!7998016))

(assert (=> d!2276784 d!2276868))

(declare-fun d!2276870 () Bool)

(declare-fun res!2963060 () Bool)

(declare-fun e!4390476 () Bool)

(assert (=> d!2276870 (=> res!2963060 e!4390476)))

(assert (=> d!2276870 (= res!2963060 (is-Nil!71422 (++!16872 (exprs!8490 ct1!256) (exprs!8490 ct2!352))))))

(assert (=> d!2276870 (= (forall!17889 (++!16872 (exprs!8490 ct1!256) (exprs!8490 ct2!352)) lambda!454762) e!4390476)))

(declare-fun b!7332075 () Bool)

(declare-fun e!4390477 () Bool)

(assert (=> b!7332075 (= e!4390476 e!4390477)))

(declare-fun res!2963061 () Bool)

(assert (=> b!7332075 (=> (not res!2963061) (not e!4390477))))

(assert (=> b!7332075 (= res!2963061 (dynLambda!29425 lambda!454762 (h!77870 (++!16872 (exprs!8490 ct1!256) (exprs!8490 ct2!352)))))))

(declare-fun b!7332076 () Bool)

(assert (=> b!7332076 (= e!4390477 (forall!17889 (t!385935 (++!16872 (exprs!8490 ct1!256) (exprs!8490 ct2!352))) lambda!454762))))

(assert (= (and d!2276870 (not res!2963060)) b!7332075))

(assert (= (and b!7332075 res!2963061) b!7332076))

(declare-fun b_lambda!283593 () Bool)

(assert (=> (not b_lambda!283593) (not b!7332075)))

(declare-fun m!7998018 () Bool)

(assert (=> b!7332075 m!7998018))

(declare-fun m!7998020 () Bool)

(assert (=> b!7332076 m!7998020))

(assert (=> d!2276794 d!2276870))

(assert (=> d!2276794 d!2276792))

(declare-fun d!2276872 () Bool)

(assert (=> d!2276872 (forall!17889 (++!16872 (exprs!8490 ct1!256) (exprs!8490 ct2!352)) lambda!454762)))

(assert (=> d!2276872 true))

(declare-fun _$78!906 () Unit!165061)

(assert (=> d!2276872 (= (choose!57028 (exprs!8490 ct1!256) (exprs!8490 ct2!352) lambda!454762) _$78!906)))

(declare-fun bs!1917506 () Bool)

(assert (= bs!1917506 d!2276872))

(assert (=> bs!1917506 m!7997736))

(assert (=> bs!1917506 m!7997736))

(assert (=> bs!1917506 m!7997838))

(assert (=> d!2276794 d!2276872))

(declare-fun d!2276874 () Bool)

(declare-fun res!2963062 () Bool)

(declare-fun e!4390478 () Bool)

(assert (=> d!2276874 (=> res!2963062 e!4390478)))

(assert (=> d!2276874 (= res!2963062 (is-Nil!71422 (exprs!8490 ct1!256)))))

(assert (=> d!2276874 (= (forall!17889 (exprs!8490 ct1!256) lambda!454762) e!4390478)))

(declare-fun b!7332077 () Bool)

(declare-fun e!4390479 () Bool)

(assert (=> b!7332077 (= e!4390478 e!4390479)))

(declare-fun res!2963063 () Bool)

(assert (=> b!7332077 (=> (not res!2963063) (not e!4390479))))

(assert (=> b!7332077 (= res!2963063 (dynLambda!29425 lambda!454762 (h!77870 (exprs!8490 ct1!256))))))

(declare-fun b!7332078 () Bool)

(assert (=> b!7332078 (= e!4390479 (forall!17889 (t!385935 (exprs!8490 ct1!256)) lambda!454762))))

(assert (= (and d!2276874 (not res!2963062)) b!7332077))

(assert (= (and b!7332077 res!2963063) b!7332078))

(declare-fun b_lambda!283595 () Bool)

(assert (=> (not b_lambda!283595) (not b!7332077)))

(declare-fun m!7998022 () Bool)

(assert (=> b!7332077 m!7998022))

(declare-fun m!7998024 () Bool)

(assert (=> b!7332078 m!7998024))

(assert (=> d!2276794 d!2276874))

(declare-fun b!7332080 () Bool)

(declare-fun e!4390481 () (Set Context!15980))

(declare-fun e!4390482 () (Set Context!15980))

(assert (=> b!7332080 (= e!4390481 e!4390482)))

(declare-fun c!1361471 () Bool)

(assert (=> b!7332080 (= c!1361471 (is-Cons!71422 (exprs!8490 (Context!15981 (t!385935 (exprs!8490 ct1!256))))))))

(declare-fun b!7332081 () Bool)

(assert (=> b!7332081 (= e!4390482 (as set.empty (Set Context!15980)))))

(declare-fun b!7332082 () Bool)

(declare-fun e!4390480 () Bool)

(assert (=> b!7332082 (= e!4390480 (nullable!8151 (h!77870 (exprs!8490 (Context!15981 (t!385935 (exprs!8490 ct1!256)))))))))

(declare-fun bm!668022 () Bool)

(declare-fun call!668027 () (Set Context!15980))

(assert (=> bm!668022 (= call!668027 (derivationStepZipperDown!2877 (h!77870 (exprs!8490 (Context!15981 (t!385935 (exprs!8490 ct1!256))))) (Context!15981 (t!385935 (exprs!8490 (Context!15981 (t!385935 (exprs!8490 ct1!256)))))) c!10305))))

(declare-fun b!7332083 () Bool)

(assert (=> b!7332083 (= e!4390481 (set.union call!668027 (derivationStepZipperUp!2730 (Context!15981 (t!385935 (exprs!8490 (Context!15981 (t!385935 (exprs!8490 ct1!256)))))) c!10305)))))

(declare-fun b!7332079 () Bool)

(assert (=> b!7332079 (= e!4390482 call!668027)))

(declare-fun d!2276876 () Bool)

(declare-fun c!1361470 () Bool)

(assert (=> d!2276876 (= c!1361470 e!4390480)))

(declare-fun res!2963064 () Bool)

(assert (=> d!2276876 (=> (not res!2963064) (not e!4390480))))

(assert (=> d!2276876 (= res!2963064 (is-Cons!71422 (exprs!8490 (Context!15981 (t!385935 (exprs!8490 ct1!256))))))))

(assert (=> d!2276876 (= (derivationStepZipperUp!2730 (Context!15981 (t!385935 (exprs!8490 ct1!256))) c!10305) e!4390481)))

(assert (= (and d!2276876 res!2963064) b!7332082))

(assert (= (and d!2276876 c!1361470) b!7332083))

(assert (= (and d!2276876 (not c!1361470)) b!7332080))

(assert (= (and b!7332080 c!1361471) b!7332079))

(assert (= (and b!7332080 (not c!1361471)) b!7332081))

(assert (= (or b!7332083 b!7332079) bm!668022))

(declare-fun m!7998026 () Bool)

(assert (=> b!7332082 m!7998026))

(declare-fun m!7998028 () Bool)

(assert (=> bm!668022 m!7998028))

(declare-fun m!7998030 () Bool)

(assert (=> b!7332083 m!7998030))

(assert (=> b!7331838 d!2276876))

(declare-fun d!2276878 () Bool)

(assert (=> d!2276878 (= (nullable!8151 (regOne!38612 (h!77870 (exprs!8490 ct1!256)))) (nullableFct!3245 (regOne!38612 (h!77870 (exprs!8490 ct1!256)))))))

(declare-fun bs!1917507 () Bool)

(assert (= bs!1917507 d!2276878))

(declare-fun m!7998032 () Bool)

(assert (=> bs!1917507 m!7998032))

(assert (=> b!7331890 d!2276878))

(assert (=> b!7331778 d!2276878))

(declare-fun d!2276880 () Bool)

(declare-fun c!1361474 () Bool)

(assert (=> d!2276880 (= c!1361474 (is-Nil!71422 lt!2608078))))

(declare-fun e!4390485 () (Set Regex!19050))

(assert (=> d!2276880 (= (content!14980 lt!2608078) e!4390485)))

(declare-fun b!7332088 () Bool)

(assert (=> b!7332088 (= e!4390485 (as set.empty (Set Regex!19050)))))

(declare-fun b!7332089 () Bool)

(assert (=> b!7332089 (= e!4390485 (set.union (set.insert (h!77870 lt!2608078) (as set.empty (Set Regex!19050))) (content!14980 (t!385935 lt!2608078))))))

(assert (= (and d!2276880 c!1361474) b!7332088))

(assert (= (and d!2276880 (not c!1361474)) b!7332089))

(declare-fun m!7998034 () Bool)

(assert (=> b!7332089 m!7998034))

(declare-fun m!7998036 () Bool)

(assert (=> b!7332089 m!7998036))

(assert (=> d!2276792 d!2276880))

(declare-fun d!2276882 () Bool)

(declare-fun c!1361475 () Bool)

(assert (=> d!2276882 (= c!1361475 (is-Nil!71422 (exprs!8490 ct1!256)))))

(declare-fun e!4390486 () (Set Regex!19050))

(assert (=> d!2276882 (= (content!14980 (exprs!8490 ct1!256)) e!4390486)))

(declare-fun b!7332090 () Bool)

(assert (=> b!7332090 (= e!4390486 (as set.empty (Set Regex!19050)))))

(declare-fun b!7332091 () Bool)

(assert (=> b!7332091 (= e!4390486 (set.union (set.insert (h!77870 (exprs!8490 ct1!256)) (as set.empty (Set Regex!19050))) (content!14980 (t!385935 (exprs!8490 ct1!256)))))))

(assert (= (and d!2276882 c!1361475) b!7332090))

(assert (= (and d!2276882 (not c!1361475)) b!7332091))

(declare-fun m!7998038 () Bool)

(assert (=> b!7332091 m!7998038))

(declare-fun m!7998040 () Bool)

(assert (=> b!7332091 m!7998040))

(assert (=> d!2276792 d!2276882))

(declare-fun d!2276884 () Bool)

(declare-fun c!1361476 () Bool)

(assert (=> d!2276884 (= c!1361476 (is-Nil!71422 (exprs!8490 ct2!352)))))

(declare-fun e!4390487 () (Set Regex!19050))

(assert (=> d!2276884 (= (content!14980 (exprs!8490 ct2!352)) e!4390487)))

(declare-fun b!7332092 () Bool)

(assert (=> b!7332092 (= e!4390487 (as set.empty (Set Regex!19050)))))

(declare-fun b!7332093 () Bool)

(assert (=> b!7332093 (= e!4390487 (set.union (set.insert (h!77870 (exprs!8490 ct2!352)) (as set.empty (Set Regex!19050))) (content!14980 (t!385935 (exprs!8490 ct2!352)))))))

(assert (= (and d!2276884 c!1361476) b!7332092))

(assert (= (and d!2276884 (not c!1361476)) b!7332093))

(declare-fun m!7998042 () Bool)

(assert (=> b!7332093 m!7998042))

(declare-fun m!7998044 () Bool)

(assert (=> b!7332093 m!7998044))

(assert (=> d!2276792 d!2276884))

(assert (=> b!7331837 d!2276784))

(declare-fun b!7332094 () Bool)

(declare-fun c!1361481 () Bool)

(declare-fun e!4390489 () Bool)

(assert (=> b!7332094 (= c!1361481 e!4390489)))

(declare-fun res!2963065 () Bool)

(assert (=> b!7332094 (=> (not res!2963065) (not e!4390489))))

(assert (=> b!7332094 (= res!2963065 (is-Concat!27895 (h!77870 (exprs!8490 ct1!256))))))

(declare-fun e!4390492 () (Set Context!15980))

(declare-fun e!4390488 () (Set Context!15980))

(assert (=> b!7332094 (= e!4390492 e!4390488)))

(declare-fun bm!668023 () Bool)

(declare-fun call!668030 () (Set Context!15980))

(declare-fun call!668029 () (Set Context!15980))

(assert (=> bm!668023 (= call!668030 call!668029)))

(declare-fun bm!668024 () Bool)

(declare-fun call!668031 () List!71546)

(declare-fun call!668032 () List!71546)

(assert (=> bm!668024 (= call!668031 call!668032)))

(declare-fun b!7332095 () Bool)

(declare-fun call!668033 () (Set Context!15980))

(declare-fun call!668028 () (Set Context!15980))

(assert (=> b!7332095 (= e!4390492 (set.union call!668033 call!668028))))

(declare-fun d!2276886 () Bool)

(declare-fun c!1361479 () Bool)

(assert (=> d!2276886 (= c!1361479 (and (is-ElementMatch!19050 (h!77870 (exprs!8490 ct1!256))) (= (c!1361360 (h!77870 (exprs!8490 ct1!256))) c!10305)))))

(declare-fun e!4390490 () (Set Context!15980))

(assert (=> d!2276886 (= (derivationStepZipperDown!2877 (h!77870 (exprs!8490 ct1!256)) (Context!15981 (t!385935 (exprs!8490 ct1!256))) c!10305) e!4390490)))

(declare-fun b!7332096 () Bool)

(assert (=> b!7332096 (= e!4390490 e!4390492)))

(declare-fun c!1361480 () Bool)

(assert (=> b!7332096 (= c!1361480 (is-Union!19050 (h!77870 (exprs!8490 ct1!256))))))

(declare-fun bm!668025 () Bool)

(assert (=> bm!668025 (= call!668028 (derivationStepZipperDown!2877 (ite c!1361480 (regTwo!38613 (h!77870 (exprs!8490 ct1!256))) (regOne!38612 (h!77870 (exprs!8490 ct1!256)))) (ite c!1361480 (Context!15981 (t!385935 (exprs!8490 ct1!256))) (Context!15981 call!668032)) c!10305))))

(declare-fun c!1361478 () Bool)

(declare-fun bm!668026 () Bool)

(assert (=> bm!668026 (= call!668033 (derivationStepZipperDown!2877 (ite c!1361480 (regOne!38613 (h!77870 (exprs!8490 ct1!256))) (ite c!1361481 (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (ite c!1361478 (regOne!38612 (h!77870 (exprs!8490 ct1!256))) (reg!19379 (h!77870 (exprs!8490 ct1!256)))))) (ite (or c!1361480 c!1361481) (Context!15981 (t!385935 (exprs!8490 ct1!256))) (Context!15981 call!668031)) c!10305))))

(declare-fun b!7332097 () Bool)

(declare-fun e!4390493 () (Set Context!15980))

(assert (=> b!7332097 (= e!4390493 (as set.empty (Set Context!15980)))))

(declare-fun bm!668027 () Bool)

(assert (=> bm!668027 (= call!668029 call!668033)))

(declare-fun b!7332098 () Bool)

(assert (=> b!7332098 (= e!4390488 (set.union call!668028 call!668029))))

(declare-fun bm!668028 () Bool)

(assert (=> bm!668028 (= call!668032 ($colon$colon!3062 (exprs!8490 (Context!15981 (t!385935 (exprs!8490 ct1!256)))) (ite (or c!1361481 c!1361478) (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (h!77870 (exprs!8490 ct1!256)))))))

(declare-fun b!7332099 () Bool)

(declare-fun e!4390491 () (Set Context!15980))

(assert (=> b!7332099 (= e!4390488 e!4390491)))

(assert (=> b!7332099 (= c!1361478 (is-Concat!27895 (h!77870 (exprs!8490 ct1!256))))))

(declare-fun b!7332100 () Bool)

(assert (=> b!7332100 (= e!4390493 call!668030)))

(declare-fun b!7332101 () Bool)

(declare-fun c!1361477 () Bool)

(assert (=> b!7332101 (= c!1361477 (is-Star!19050 (h!77870 (exprs!8490 ct1!256))))))

(assert (=> b!7332101 (= e!4390491 e!4390493)))

(declare-fun b!7332102 () Bool)

(assert (=> b!7332102 (= e!4390490 (set.insert (Context!15981 (t!385935 (exprs!8490 ct1!256))) (as set.empty (Set Context!15980))))))

(declare-fun b!7332103 () Bool)

(assert (=> b!7332103 (= e!4390491 call!668030)))

(declare-fun b!7332104 () Bool)

(assert (=> b!7332104 (= e!4390489 (nullable!8151 (regOne!38612 (h!77870 (exprs!8490 ct1!256)))))))

(assert (= (and d!2276886 c!1361479) b!7332102))

(assert (= (and d!2276886 (not c!1361479)) b!7332096))

(assert (= (and b!7332096 c!1361480) b!7332095))

(assert (= (and b!7332096 (not c!1361480)) b!7332094))

(assert (= (and b!7332094 res!2963065) b!7332104))

(assert (= (and b!7332094 c!1361481) b!7332098))

(assert (= (and b!7332094 (not c!1361481)) b!7332099))

(assert (= (and b!7332099 c!1361478) b!7332103))

(assert (= (and b!7332099 (not c!1361478)) b!7332101))

(assert (= (and b!7332101 c!1361477) b!7332100))

(assert (= (and b!7332101 (not c!1361477)) b!7332097))

(assert (= (or b!7332103 b!7332100) bm!668024))

(assert (= (or b!7332103 b!7332100) bm!668023))

(assert (= (or b!7332098 bm!668023) bm!668027))

(assert (= (or b!7332098 bm!668024) bm!668028))

(assert (= (or b!7332095 b!7332098) bm!668025))

(assert (= (or b!7332095 bm!668027) bm!668026))

(declare-fun m!7998046 () Bool)

(assert (=> bm!668028 m!7998046))

(declare-fun m!7998048 () Bool)

(assert (=> b!7332102 m!7998048))

(declare-fun m!7998050 () Bool)

(assert (=> bm!668025 m!7998050))

(assert (=> b!7332104 m!7997814))

(declare-fun m!7998052 () Bool)

(assert (=> bm!668026 m!7998052))

(assert (=> bm!667930 d!2276886))

(declare-fun d!2276888 () Bool)

(assert (=> d!2276888 (= ($colon$colon!3062 (exprs!8490 (Context!15981 (tail!14731 lt!2608050))) (ite (or c!1361410 c!1361407) (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (h!77870 (exprs!8490 ct1!256)))) (Cons!71422 (ite (or c!1361410 c!1361407) (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (h!77870 (exprs!8490 ct1!256))) (exprs!8490 (Context!15981 (tail!14731 lt!2608050)))))))

(assert (=> bm!667953 d!2276888))

(declare-fun d!2276890 () Bool)

(declare-fun e!4390495 () Bool)

(assert (=> d!2276890 e!4390495))

(declare-fun res!2963067 () Bool)

(assert (=> d!2276890 (=> (not res!2963067) (not e!4390495))))

(declare-fun lt!2608088 () List!71546)

(assert (=> d!2276890 (= res!2963067 (= (content!14980 lt!2608088) (set.union (content!14980 (t!385935 (exprs!8490 ct1!256))) (content!14980 (exprs!8490 ct2!352)))))))

(declare-fun e!4390494 () List!71546)

(assert (=> d!2276890 (= lt!2608088 e!4390494)))

(declare-fun c!1361482 () Bool)

(assert (=> d!2276890 (= c!1361482 (is-Nil!71422 (t!385935 (exprs!8490 ct1!256))))))

(assert (=> d!2276890 (= (++!16872 (t!385935 (exprs!8490 ct1!256)) (exprs!8490 ct2!352)) lt!2608088)))

(declare-fun b!7332106 () Bool)

(assert (=> b!7332106 (= e!4390494 (Cons!71422 (h!77870 (t!385935 (exprs!8490 ct1!256))) (++!16872 (t!385935 (t!385935 (exprs!8490 ct1!256))) (exprs!8490 ct2!352))))))

(declare-fun b!7332107 () Bool)

(declare-fun res!2963066 () Bool)

(assert (=> b!7332107 (=> (not res!2963066) (not e!4390495))))

(assert (=> b!7332107 (= res!2963066 (= (size!41959 lt!2608088) (+ (size!41959 (t!385935 (exprs!8490 ct1!256))) (size!41959 (exprs!8490 ct2!352)))))))

(declare-fun b!7332105 () Bool)

(assert (=> b!7332105 (= e!4390494 (exprs!8490 ct2!352))))

(declare-fun b!7332108 () Bool)

(assert (=> b!7332108 (= e!4390495 (or (not (= (exprs!8490 ct2!352) Nil!71422)) (= lt!2608088 (t!385935 (exprs!8490 ct1!256)))))))

(assert (= (and d!2276890 c!1361482) b!7332105))

(assert (= (and d!2276890 (not c!1361482)) b!7332106))

(assert (= (and d!2276890 res!2963067) b!7332107))

(assert (= (and b!7332107 res!2963066) b!7332108))

(declare-fun m!7998054 () Bool)

(assert (=> d!2276890 m!7998054))

(assert (=> d!2276890 m!7998040))

(assert (=> d!2276890 m!7997822))

(declare-fun m!7998056 () Bool)

(assert (=> b!7332106 m!7998056))

(declare-fun m!7998058 () Bool)

(assert (=> b!7332107 m!7998058))

(declare-fun m!7998060 () Bool)

(assert (=> b!7332107 m!7998060))

(assert (=> b!7332107 m!7997830))

(assert (=> b!7331798 d!2276890))

(declare-fun d!2276892 () Bool)

(assert (=> d!2276892 (= ($colon$colon!3062 (exprs!8490 lt!2608051) (ite (or c!1361376 c!1361373) (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (h!77870 (exprs!8490 ct1!256)))) (Cons!71422 (ite (or c!1361376 c!1361373) (regTwo!38612 (h!77870 (exprs!8490 ct1!256))) (h!77870 (exprs!8490 ct1!256))) (exprs!8490 lt!2608051)))))

(assert (=> bm!667922 d!2276892))

(declare-fun d!2276894 () Bool)

(declare-fun lt!2608091 () Int)

(assert (=> d!2276894 (>= lt!2608091 0)))

(declare-fun e!4390498 () Int)

(assert (=> d!2276894 (= lt!2608091 e!4390498)))

(declare-fun c!1361485 () Bool)

(assert (=> d!2276894 (= c!1361485 (is-Nil!71422 lt!2608078))))

(assert (=> d!2276894 (= (size!41959 lt!2608078) lt!2608091)))

(declare-fun b!7332113 () Bool)

(assert (=> b!7332113 (= e!4390498 0)))

(declare-fun b!7332114 () Bool)

(assert (=> b!7332114 (= e!4390498 (+ 1 (size!41959 (t!385935 lt!2608078))))))

(assert (= (and d!2276894 c!1361485) b!7332113))

(assert (= (and d!2276894 (not c!1361485)) b!7332114))

(declare-fun m!7998062 () Bool)

(assert (=> b!7332114 m!7998062))

(assert (=> b!7331799 d!2276894))

(declare-fun d!2276896 () Bool)

(declare-fun lt!2608092 () Int)

(assert (=> d!2276896 (>= lt!2608092 0)))

(declare-fun e!4390499 () Int)

(assert (=> d!2276896 (= lt!2608092 e!4390499)))

(declare-fun c!1361486 () Bool)

(assert (=> d!2276896 (= c!1361486 (is-Nil!71422 (exprs!8490 ct1!256)))))

(assert (=> d!2276896 (= (size!41959 (exprs!8490 ct1!256)) lt!2608092)))

(declare-fun b!7332115 () Bool)

(assert (=> b!7332115 (= e!4390499 0)))

(declare-fun b!7332116 () Bool)

(assert (=> b!7332116 (= e!4390499 (+ 1 (size!41959 (t!385935 (exprs!8490 ct1!256)))))))

(assert (= (and d!2276896 c!1361486) b!7332115))

(assert (= (and d!2276896 (not c!1361486)) b!7332116))

(assert (=> b!7332116 m!7998060))

(assert (=> b!7331799 d!2276896))

(declare-fun d!2276898 () Bool)

(declare-fun lt!2608093 () Int)

(assert (=> d!2276898 (>= lt!2608093 0)))

(declare-fun e!4390500 () Int)

(assert (=> d!2276898 (= lt!2608093 e!4390500)))

(declare-fun c!1361487 () Bool)

(assert (=> d!2276898 (= c!1361487 (is-Nil!71422 (exprs!8490 ct2!352)))))

(assert (=> d!2276898 (= (size!41959 (exprs!8490 ct2!352)) lt!2608093)))

(declare-fun b!7332117 () Bool)

(assert (=> b!7332117 (= e!4390500 0)))

(declare-fun b!7332118 () Bool)

(assert (=> b!7332118 (= e!4390500 (+ 1 (size!41959 (t!385935 (exprs!8490 ct2!352)))))))

(assert (= (and d!2276898 c!1361487) b!7332117))

(assert (= (and d!2276898 (not c!1361487)) b!7332118))

(declare-fun m!7998064 () Bool)

(assert (=> b!7332118 m!7998064))

(assert (=> b!7331799 d!2276898))

(declare-fun b!7332130 () Bool)

(declare-fun e!4390503 () Bool)

(declare-fun tp!2081668 () Bool)

(declare-fun tp!2081667 () Bool)

(assert (=> b!7332130 (= e!4390503 (and tp!2081668 tp!2081667))))

(assert (=> b!7331895 (= tp!2081640 e!4390503)))

(declare-fun b!7332131 () Bool)

(declare-fun tp!2081670 () Bool)

(assert (=> b!7332131 (= e!4390503 tp!2081670)))

(declare-fun b!7332129 () Bool)

(assert (=> b!7332129 (= e!4390503 tp_is_empty!48345)))

(declare-fun b!7332132 () Bool)

(declare-fun tp!2081666 () Bool)

(declare-fun tp!2081669 () Bool)

(assert (=> b!7332132 (= e!4390503 (and tp!2081666 tp!2081669))))

(assert (= (and b!7331895 (is-ElementMatch!19050 (h!77870 (exprs!8490 cWitness!35)))) b!7332129))

(assert (= (and b!7331895 (is-Concat!27895 (h!77870 (exprs!8490 cWitness!35)))) b!7332130))

(assert (= (and b!7331895 (is-Star!19050 (h!77870 (exprs!8490 cWitness!35)))) b!7332131))

(assert (= (and b!7331895 (is-Union!19050 (h!77870 (exprs!8490 cWitness!35)))) b!7332132))

(declare-fun b!7332133 () Bool)

(declare-fun e!4390504 () Bool)

(declare-fun tp!2081671 () Bool)

(declare-fun tp!2081672 () Bool)

(assert (=> b!7332133 (= e!4390504 (and tp!2081671 tp!2081672))))

(assert (=> b!7331895 (= tp!2081641 e!4390504)))

(assert (= (and b!7331895 (is-Cons!71422 (t!385935 (exprs!8490 cWitness!35)))) b!7332133))

(declare-fun b!7332135 () Bool)

(declare-fun e!4390505 () Bool)

(declare-fun tp!2081675 () Bool)

(declare-fun tp!2081674 () Bool)

(assert (=> b!7332135 (= e!4390505 (and tp!2081675 tp!2081674))))

(assert (=> b!7331897 (= tp!2081644 e!4390505)))

(declare-fun b!7332136 () Bool)

(declare-fun tp!2081677 () Bool)

(assert (=> b!7332136 (= e!4390505 tp!2081677)))

(declare-fun b!7332134 () Bool)

(assert (=> b!7332134 (= e!4390505 tp_is_empty!48345)))

(declare-fun b!7332137 () Bool)

(declare-fun tp!2081673 () Bool)

(declare-fun tp!2081676 () Bool)

(assert (=> b!7332137 (= e!4390505 (and tp!2081673 tp!2081676))))

(assert (= (and b!7331897 (is-ElementMatch!19050 (h!77870 (exprs!8490 ct1!256)))) b!7332134))

(assert (= (and b!7331897 (is-Concat!27895 (h!77870 (exprs!8490 ct1!256)))) b!7332135))

(assert (= (and b!7331897 (is-Star!19050 (h!77870 (exprs!8490 ct1!256)))) b!7332136))

(assert (= (and b!7331897 (is-Union!19050 (h!77870 (exprs!8490 ct1!256)))) b!7332137))

(declare-fun b!7332138 () Bool)

(declare-fun e!4390506 () Bool)

(declare-fun tp!2081678 () Bool)

(declare-fun tp!2081679 () Bool)

(assert (=> b!7332138 (= e!4390506 (and tp!2081678 tp!2081679))))

(assert (=> b!7331897 (= tp!2081645 e!4390506)))

(assert (= (and b!7331897 (is-Cons!71422 (t!385935 (exprs!8490 ct1!256)))) b!7332138))

(declare-fun b!7332140 () Bool)

(declare-fun e!4390507 () Bool)

(declare-fun tp!2081682 () Bool)

(declare-fun tp!2081681 () Bool)

(assert (=> b!7332140 (= e!4390507 (and tp!2081682 tp!2081681))))

(assert (=> b!7331896 (= tp!2081642 e!4390507)))

(declare-fun b!7332141 () Bool)

(declare-fun tp!2081684 () Bool)

(assert (=> b!7332141 (= e!4390507 tp!2081684)))

(declare-fun b!7332139 () Bool)

(assert (=> b!7332139 (= e!4390507 tp_is_empty!48345)))

(declare-fun b!7332142 () Bool)

(declare-fun tp!2081680 () Bool)

(declare-fun tp!2081683 () Bool)

(assert (=> b!7332142 (= e!4390507 (and tp!2081680 tp!2081683))))

(assert (= (and b!7331896 (is-ElementMatch!19050 (h!77870 (exprs!8490 ct2!352)))) b!7332139))

(assert (= (and b!7331896 (is-Concat!27895 (h!77870 (exprs!8490 ct2!352)))) b!7332140))

(assert (= (and b!7331896 (is-Star!19050 (h!77870 (exprs!8490 ct2!352)))) b!7332141))

(assert (= (and b!7331896 (is-Union!19050 (h!77870 (exprs!8490 ct2!352)))) b!7332142))

(declare-fun b!7332143 () Bool)

(declare-fun e!4390508 () Bool)

(declare-fun tp!2081685 () Bool)

(declare-fun tp!2081686 () Bool)

(assert (=> b!7332143 (= e!4390508 (and tp!2081685 tp!2081686))))

(assert (=> b!7331896 (= tp!2081643 e!4390508)))

(assert (= (and b!7331896 (is-Cons!71422 (t!385935 (exprs!8490 ct2!352)))) b!7332143))

(declare-fun b_lambda!283597 () Bool)

(assert (= b_lambda!283591 (or d!2276804 b_lambda!283597)))

(declare-fun bs!1917508 () Bool)

(declare-fun d!2276900 () Bool)

(assert (= bs!1917508 (and d!2276900 d!2276804)))

(assert (=> bs!1917508 (= (dynLambda!29425 lambda!454769 (h!77870 (exprs!8490 ct1!256))) (validRegex!9654 (h!77870 (exprs!8490 ct1!256))))))

(assert (=> bs!1917508 m!7997748))

(assert (=> b!7332052 d!2276900))

(declare-fun b_lambda!283599 () Bool)

(assert (= b_lambda!283595 (or b!7331712 b_lambda!283599)))

(declare-fun bs!1917509 () Bool)

(declare-fun d!2276902 () Bool)

(assert (= bs!1917509 (and d!2276902 b!7331712)))

(assert (=> bs!1917509 (= (dynLambda!29425 lambda!454762 (h!77870 (exprs!8490 ct1!256))) (validRegex!9654 (h!77870 (exprs!8490 ct1!256))))))

(assert (=> bs!1917509 m!7997748))

(assert (=> b!7332077 d!2276902))

(declare-fun b_lambda!283601 () Bool)

(assert (= b_lambda!283587 (or d!2276806 b_lambda!283601)))

(declare-fun bs!1917510 () Bool)

(declare-fun d!2276904 () Bool)

(assert (= bs!1917510 (and d!2276904 d!2276806)))

(assert (=> bs!1917510 (= (dynLambda!29425 lambda!454770 (h!77870 (exprs!8490 ct2!352))) (validRegex!9654 (h!77870 (exprs!8490 ct2!352))))))

(declare-fun m!7998066 () Bool)

(assert (=> bs!1917510 m!7998066))

(assert (=> b!7331990 d!2276904))

(declare-fun b_lambda!283603 () Bool)

(assert (= b_lambda!283593 (or b!7331712 b_lambda!283603)))

(declare-fun bs!1917511 () Bool)

(declare-fun d!2276906 () Bool)

(assert (= bs!1917511 (and d!2276906 b!7331712)))

(assert (=> bs!1917511 (= (dynLambda!29425 lambda!454762 (h!77870 (++!16872 (exprs!8490 ct1!256) (exprs!8490 ct2!352)))) (validRegex!9654 (h!77870 (++!16872 (exprs!8490 ct1!256) (exprs!8490 ct2!352)))))))

(declare-fun m!7998068 () Bool)

(assert (=> bs!1917511 m!7998068))

(assert (=> b!7332075 d!2276906))

(declare-fun b_lambda!283605 () Bool)

(assert (= b_lambda!283589 (or d!2276802 b_lambda!283605)))

(declare-fun bs!1917512 () Bool)

(declare-fun d!2276908 () Bool)

(assert (= bs!1917512 (and d!2276908 d!2276802)))

(assert (=> bs!1917512 (= (dynLambda!29425 lambda!454768 (h!77870 (exprs!8490 cWitness!35))) (validRegex!9654 (h!77870 (exprs!8490 cWitness!35))))))

(declare-fun m!7998070 () Bool)

(assert (=> bs!1917512 m!7998070))

(assert (=> b!7332050 d!2276908))

(push 1)

(assert (not b_lambda!283603))

(assert (not b!7331997))

(assert (not bm!667985))

(assert (not d!2276878))

(assert (not bm!668007))

(assert (not bm!668006))

(assert (not b!7332138))

(assert (not bs!1917509))

(assert (not b!7332027))

(assert (not b!7332051))

(assert (not b!7332089))

(assert (not b_lambda!283599))

(assert (not bm!667994))

(assert (not bm!668022))

(assert (not bm!668009))

(assert (not b!7332132))

(assert (not bm!667982))

(assert (not b!7332053))

(assert (not b!7331996))

(assert (not b_lambda!283605))

(assert (not bm!667995))

(assert (not bm!667986))

(assert (not b!7332114))

(assert (not bm!668028))

(assert (not d!2276842))

(assert (not b!7332091))

(assert (not b!7332016))

(assert (not bs!1917512))

(assert (not bm!668021))

(assert (not b!7332049))

(assert (not b!7331976))

(assert (not d!2276858))

(assert (not b!7332142))

(assert (not bm!668013))

(assert (not bm!668000))

(assert (not b!7332136))

(assert (not b_lambda!283601))

(assert (not b!7332131))

(assert (not b!7332076))

(assert (not d!2276872))

(assert (not bm!667997))

(assert (not b!7331977))

(assert (not b!7331995))

(assert (not b!7332038))

(assert (not d!2276890))

(assert (not b!7332118))

(assert (not bm!668015))

(assert (not b!7332137))

(assert (not b!7332140))

(assert (not b!7331991))

(assert (not bm!668026))

(assert (not bm!668020))

(assert (not b!7332130))

(assert (not b!7332106))

(assert (not bs!1917511))

(assert (not bm!668012))

(assert (not bs!1917510))

(assert (not bm!667981))

(assert (not b!7332135))

(assert (not bm!667989))

(assert (not bs!1917508))

(assert (not b!7332107))

(assert (not bm!668001))

(assert (not b!7332116))

(assert (not b!7332141))

(assert (not bm!667984))

(assert (not bm!668003))

(assert (not b!7332078))

(assert (not b!7332093))

(assert (not b!7332104))

(assert (not bm!667988))

(assert (not b!7332143))

(assert (not bm!668025))

(assert (not bm!667990))

(assert (not b!7332083))

(assert tp_is_empty!48345)

(assert (not b_lambda!283597))

(assert (not b!7332133))

(assert (not b!7332082))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

