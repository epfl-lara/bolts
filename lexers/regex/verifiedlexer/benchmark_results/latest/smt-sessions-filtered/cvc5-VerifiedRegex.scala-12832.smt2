; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!708768 () Bool)

(assert start!708768)

(declare-fun b!7266831 () Bool)

(assert (=> b!7266831 true))

(declare-fun b!7266820 () Bool)

(declare-fun e!4357743 () Bool)

(declare-fun e!4357742 () Bool)

(assert (=> b!7266820 (= e!4357743 e!4357742)))

(declare-fun res!2946089 () Bool)

(assert (=> b!7266820 (=> res!2946089 e!4357742)))

(declare-datatypes ((C!37818 0))(
  ( (C!37819 (val!28857 Int)) )
))
(declare-datatypes ((Regex!18772 0))(
  ( (ElementMatch!18772 (c!1352232 C!37818)) (Concat!27617 (regOne!38056 Regex!18772) (regTwo!38056 Regex!18772)) (EmptyExpr!18772) (Star!18772 (reg!19101 Regex!18772)) (EmptyLang!18772) (Union!18772 (regOne!38057 Regex!18772) (regTwo!38057 Regex!18772)) )
))
(declare-datatypes ((List!70859 0))(
  ( (Nil!70735) (Cons!70735 (h!77183 Regex!18772) (t!384929 List!70859)) )
))
(declare-datatypes ((Context!15424 0))(
  ( (Context!15425 (exprs!8212 List!70859)) )
))
(declare-fun ct1!250 () Context!15424)

(declare-fun nullable!7972 (Regex!18772) Bool)

(assert (=> b!7266820 (= res!2946089 (not (nullable!7972 (h!77183 (exprs!8212 ct1!250)))))))

(declare-fun lt!2592653 () (Set Context!15424))

(declare-datatypes ((List!70860 0))(
  ( (Nil!70736) (Cons!70736 (h!77184 C!37818) (t!384930 List!70860)) )
))
(declare-fun s!7854 () List!70860)

(declare-fun derivationStepZipperUp!2542 (Context!15424 C!37818) (Set Context!15424))

(assert (=> b!7266820 (= lt!2592653 (derivationStepZipperUp!2542 ct1!250 (h!77184 s!7854)))))

(declare-fun lt!2592667 () Context!15424)

(declare-fun lt!2592665 () List!70859)

(assert (=> b!7266820 (= lt!2592667 (Context!15425 lt!2592665))))

(declare-fun tail!14451 (List!70859) List!70859)

(assert (=> b!7266820 (= lt!2592665 (tail!14451 (exprs!8212 ct1!250)))))

(declare-fun res!2946088 () Bool)

(declare-fun e!4357744 () Bool)

(assert (=> start!708768 (=> (not res!2946088) (not e!4357744))))

(declare-fun ct2!346 () Context!15424)

(declare-fun matchZipper!3676 ((Set Context!15424) List!70860) Bool)

(assert (=> start!708768 (= res!2946088 (matchZipper!3676 (set.insert ct2!346 (as set.empty (Set Context!15424))) s!7854))))

(assert (=> start!708768 e!4357744))

(declare-fun e!4357741 () Bool)

(declare-fun inv!89941 (Context!15424) Bool)

(assert (=> start!708768 (and (inv!89941 ct2!346) e!4357741)))

(declare-fun e!4357745 () Bool)

(assert (=> start!708768 e!4357745))

(declare-fun e!4357740 () Bool)

(assert (=> start!708768 (and (inv!89941 ct1!250) e!4357740)))

(declare-fun b!7266821 () Bool)

(declare-fun e!4357746 () Bool)

(declare-fun lambda!447574 () Int)

(declare-fun forall!17603 (List!70859 Int) Bool)

(assert (=> b!7266821 (= e!4357746 (forall!17603 lt!2592665 lambda!447574))))

(declare-fun lt!2592666 () Context!15424)

(assert (=> b!7266821 (matchZipper!3676 (set.insert lt!2592666 (as set.empty (Set Context!15424))) s!7854)))

(declare-datatypes ((Unit!164162 0))(
  ( (Unit!164163) )
))
(declare-fun lt!2592656 () Unit!164162)

(declare-fun lemmaConcatPreservesForall!1529 (List!70859 List!70859 Int) Unit!164162)

(assert (=> b!7266821 (= lt!2592656 (lemmaConcatPreservesForall!1529 lt!2592665 (exprs!8212 ct2!346) lambda!447574))))

(declare-fun lt!2592669 () Unit!164162)

(declare-fun lemmaPrependingNullableCtxStillMatches!9 (Context!15424 Context!15424 List!70860) Unit!164162)

(assert (=> b!7266821 (= lt!2592669 (lemmaPrependingNullableCtxStillMatches!9 lt!2592667 ct2!346 s!7854))))

(declare-fun b!7266822 () Bool)

(declare-fun res!2946083 () Bool)

(assert (=> b!7266822 (=> res!2946083 e!4357742)))

(declare-fun derivationStepZipperDown!2706 (Regex!18772 Context!15424 C!37818) (Set Context!15424))

(assert (=> b!7266822 (= res!2946083 (not (= lt!2592653 (set.union (derivationStepZipperDown!2706 (h!77183 (exprs!8212 ct1!250)) lt!2592667 (h!77184 s!7854)) (derivationStepZipperUp!2542 lt!2592667 (h!77184 s!7854))))))))

(declare-fun b!7266823 () Bool)

(declare-fun tp!2040585 () Bool)

(assert (=> b!7266823 (= e!4357740 tp!2040585)))

(declare-fun b!7266824 () Bool)

(assert (=> b!7266824 (= e!4357742 e!4357746)))

(declare-fun res!2946086 () Bool)

(assert (=> b!7266824 (=> res!2946086 e!4357746)))

(declare-fun lt!2592663 () (Set Context!15424))

(assert (=> b!7266824 (= res!2946086 (not (= lt!2592663 (set.union (derivationStepZipperDown!2706 (h!77183 (exprs!8212 ct1!250)) lt!2592666 (h!77184 s!7854)) (derivationStepZipperUp!2542 lt!2592666 (h!77184 s!7854))))))))

(declare-fun ++!16672 (List!70859 List!70859) List!70859)

(assert (=> b!7266824 (= lt!2592666 (Context!15425 (++!16672 lt!2592665 (exprs!8212 ct2!346))))))

(declare-fun lt!2592661 () Unit!164162)

(assert (=> b!7266824 (= lt!2592661 (lemmaConcatPreservesForall!1529 lt!2592665 (exprs!8212 ct2!346) lambda!447574))))

(declare-fun lt!2592659 () Unit!164162)

(assert (=> b!7266824 (= lt!2592659 (lemmaConcatPreservesForall!1529 lt!2592665 (exprs!8212 ct2!346) lambda!447574))))

(declare-fun b!7266825 () Bool)

(declare-fun tp!2040586 () Bool)

(assert (=> b!7266825 (= e!4357741 tp!2040586)))

(declare-fun b!7266826 () Bool)

(declare-fun res!2946084 () Bool)

(assert (=> b!7266826 (=> (not res!2946084) (not e!4357744))))

(assert (=> b!7266826 (= res!2946084 (is-Cons!70736 s!7854))))

(declare-fun b!7266827 () Bool)

(declare-fun res!2946085 () Bool)

(assert (=> b!7266827 (=> res!2946085 e!4357743)))

(assert (=> b!7266827 (= res!2946085 (not (is-Cons!70735 (exprs!8212 ct1!250))))))

(declare-fun b!7266828 () Bool)

(declare-fun tp_is_empty!47009 () Bool)

(declare-fun tp!2040587 () Bool)

(assert (=> b!7266828 (= e!4357745 (and tp_is_empty!47009 tp!2040587))))

(declare-fun b!7266829 () Bool)

(declare-fun res!2946087 () Bool)

(assert (=> b!7266829 (=> res!2946087 e!4357743)))

(declare-fun isEmpty!40663 (List!70859) Bool)

(assert (=> b!7266829 (= res!2946087 (isEmpty!40663 (exprs!8212 ct1!250)))))

(declare-fun b!7266830 () Bool)

(declare-fun res!2946090 () Bool)

(assert (=> b!7266830 (=> (not res!2946090) (not e!4357744))))

(declare-fun nullableContext!262 (Context!15424) Bool)

(assert (=> b!7266830 (= res!2946090 (nullableContext!262 ct1!250))))

(assert (=> b!7266831 (= e!4357744 (not e!4357743))))

(declare-fun res!2946082 () Bool)

(assert (=> b!7266831 (=> res!2946082 e!4357743)))

(declare-fun lt!2592652 () (Set Context!15424))

(declare-fun derivationStepZipper!3512 ((Set Context!15424) C!37818) (Set Context!15424))

(assert (=> b!7266831 (= res!2946082 (not (= lt!2592663 (derivationStepZipper!3512 lt!2592652 (h!77184 s!7854)))))))

(declare-fun lt!2592658 () Unit!164162)

(assert (=> b!7266831 (= lt!2592658 (lemmaConcatPreservesForall!1529 (exprs!8212 ct1!250) (exprs!8212 ct2!346) lambda!447574))))

(declare-fun lambda!447575 () Int)

(declare-fun lt!2592654 () Context!15424)

(declare-fun flatMap!2885 ((Set Context!15424) Int) (Set Context!15424))

(assert (=> b!7266831 (= (flatMap!2885 lt!2592652 lambda!447575) (derivationStepZipperUp!2542 lt!2592654 (h!77184 s!7854)))))

(declare-fun lt!2592655 () Unit!164162)

(declare-fun lemmaFlatMapOnSingletonSet!2285 ((Set Context!15424) Context!15424 Int) Unit!164162)

(assert (=> b!7266831 (= lt!2592655 (lemmaFlatMapOnSingletonSet!2285 lt!2592652 lt!2592654 lambda!447575))))

(assert (=> b!7266831 (= lt!2592652 (set.insert lt!2592654 (as set.empty (Set Context!15424))))))

(declare-fun lt!2592664 () Unit!164162)

(assert (=> b!7266831 (= lt!2592664 (lemmaConcatPreservesForall!1529 (exprs!8212 ct1!250) (exprs!8212 ct2!346) lambda!447574))))

(declare-fun lt!2592662 () Unit!164162)

(assert (=> b!7266831 (= lt!2592662 (lemmaConcatPreservesForall!1529 (exprs!8212 ct1!250) (exprs!8212 ct2!346) lambda!447574))))

(declare-fun lt!2592657 () (Set Context!15424))

(assert (=> b!7266831 (= (flatMap!2885 lt!2592657 lambda!447575) (derivationStepZipperUp!2542 ct1!250 (h!77184 s!7854)))))

(declare-fun lt!2592660 () Unit!164162)

(assert (=> b!7266831 (= lt!2592660 (lemmaFlatMapOnSingletonSet!2285 lt!2592657 ct1!250 lambda!447575))))

(assert (=> b!7266831 (= lt!2592657 (set.insert ct1!250 (as set.empty (Set Context!15424))))))

(assert (=> b!7266831 (= lt!2592663 (derivationStepZipperUp!2542 lt!2592654 (h!77184 s!7854)))))

(assert (=> b!7266831 (= lt!2592654 (Context!15425 (++!16672 (exprs!8212 ct1!250) (exprs!8212 ct2!346))))))

(declare-fun lt!2592668 () Unit!164162)

(assert (=> b!7266831 (= lt!2592668 (lemmaConcatPreservesForall!1529 (exprs!8212 ct1!250) (exprs!8212 ct2!346) lambda!447574))))

(assert (= (and start!708768 res!2946088) b!7266830))

(assert (= (and b!7266830 res!2946090) b!7266826))

(assert (= (and b!7266826 res!2946084) b!7266831))

(assert (= (and b!7266831 (not res!2946082)) b!7266827))

(assert (= (and b!7266827 (not res!2946085)) b!7266829))

(assert (= (and b!7266829 (not res!2946087)) b!7266820))

(assert (= (and b!7266820 (not res!2946089)) b!7266822))

(assert (= (and b!7266822 (not res!2946083)) b!7266824))

(assert (= (and b!7266824 (not res!2946086)) b!7266821))

(assert (= start!708768 b!7266825))

(assert (= (and start!708768 (is-Cons!70736 s!7854)) b!7266828))

(assert (= start!708768 b!7266823))

(declare-fun m!7951510 () Bool)

(assert (=> start!708768 m!7951510))

(assert (=> start!708768 m!7951510))

(declare-fun m!7951512 () Bool)

(assert (=> start!708768 m!7951512))

(declare-fun m!7951514 () Bool)

(assert (=> start!708768 m!7951514))

(declare-fun m!7951516 () Bool)

(assert (=> start!708768 m!7951516))

(declare-fun m!7951518 () Bool)

(assert (=> b!7266821 m!7951518))

(declare-fun m!7951520 () Bool)

(assert (=> b!7266821 m!7951520))

(assert (=> b!7266821 m!7951518))

(declare-fun m!7951522 () Bool)

(assert (=> b!7266821 m!7951522))

(declare-fun m!7951524 () Bool)

(assert (=> b!7266821 m!7951524))

(declare-fun m!7951526 () Bool)

(assert (=> b!7266821 m!7951526))

(declare-fun m!7951528 () Bool)

(assert (=> b!7266822 m!7951528))

(declare-fun m!7951530 () Bool)

(assert (=> b!7266822 m!7951530))

(declare-fun m!7951532 () Bool)

(assert (=> b!7266824 m!7951532))

(assert (=> b!7266824 m!7951526))

(declare-fun m!7951534 () Bool)

(assert (=> b!7266824 m!7951534))

(declare-fun m!7951536 () Bool)

(assert (=> b!7266824 m!7951536))

(assert (=> b!7266824 m!7951526))

(declare-fun m!7951538 () Bool)

(assert (=> b!7266829 m!7951538))

(declare-fun m!7951540 () Bool)

(assert (=> b!7266820 m!7951540))

(declare-fun m!7951542 () Bool)

(assert (=> b!7266820 m!7951542))

(declare-fun m!7951544 () Bool)

(assert (=> b!7266820 m!7951544))

(declare-fun m!7951546 () Bool)

(assert (=> b!7266831 m!7951546))

(declare-fun m!7951548 () Bool)

(assert (=> b!7266831 m!7951548))

(assert (=> b!7266831 m!7951542))

(assert (=> b!7266831 m!7951548))

(assert (=> b!7266831 m!7951548))

(declare-fun m!7951550 () Bool)

(assert (=> b!7266831 m!7951550))

(declare-fun m!7951552 () Bool)

(assert (=> b!7266831 m!7951552))

(declare-fun m!7951554 () Bool)

(assert (=> b!7266831 m!7951554))

(declare-fun m!7951556 () Bool)

(assert (=> b!7266831 m!7951556))

(declare-fun m!7951558 () Bool)

(assert (=> b!7266831 m!7951558))

(declare-fun m!7951560 () Bool)

(assert (=> b!7266831 m!7951560))

(declare-fun m!7951562 () Bool)

(assert (=> b!7266831 m!7951562))

(declare-fun m!7951564 () Bool)

(assert (=> b!7266831 m!7951564))

(assert (=> b!7266831 m!7951548))

(declare-fun m!7951566 () Bool)

(assert (=> b!7266830 m!7951566))

(push 1)

(assert (not b!7266828))

(assert (not b!7266822))

(assert (not b!7266824))

(assert (not b!7266823))

(assert (not b!7266825))

(assert (not b!7266830))

(assert (not b!7266821))

(assert (not b!7266831))

(assert (not b!7266820))

(assert (not start!708768))

(assert (not b!7266829))

(assert tp_is_empty!47009)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2261045 () Bool)

(assert (=> d!2261045 (forall!17603 (++!16672 lt!2592665 (exprs!8212 ct2!346)) lambda!447574)))

(declare-fun lt!2592726 () Unit!164162)

(declare-fun choose!56320 (List!70859 List!70859 Int) Unit!164162)

(assert (=> d!2261045 (= lt!2592726 (choose!56320 lt!2592665 (exprs!8212 ct2!346) lambda!447574))))

(assert (=> d!2261045 (forall!17603 lt!2592665 lambda!447574)))

(assert (=> d!2261045 (= (lemmaConcatPreservesForall!1529 lt!2592665 (exprs!8212 ct2!346) lambda!447574) lt!2592726)))

(declare-fun bs!1910355 () Bool)

(assert (= bs!1910355 d!2261045))

(assert (=> bs!1910355 m!7951536))

(assert (=> bs!1910355 m!7951536))

(declare-fun m!7951626 () Bool)

(assert (=> bs!1910355 m!7951626))

(declare-fun m!7951628 () Bool)

(assert (=> bs!1910355 m!7951628))

(assert (=> bs!1910355 m!7951522))

(assert (=> b!7266824 d!2261045))

(declare-fun b!7266882 () Bool)

(declare-fun e!4357774 () (Set Context!15424))

(declare-fun call!662384 () (Set Context!15424))

(assert (=> b!7266882 (= e!4357774 call!662384)))

(declare-fun b!7266883 () Bool)

(assert (=> b!7266883 (= e!4357774 (as set.empty (Set Context!15424)))))

(declare-fun b!7266884 () Bool)

(declare-fun e!4357776 () (Set Context!15424))

(assert (=> b!7266884 (= e!4357776 e!4357774)))

(declare-fun c!1352242 () Bool)

(assert (=> b!7266884 (= c!1352242 (is-Cons!70735 (exprs!8212 lt!2592666)))))

(declare-fun bm!662379 () Bool)

(assert (=> bm!662379 (= call!662384 (derivationStepZipperDown!2706 (h!77183 (exprs!8212 lt!2592666)) (Context!15425 (t!384929 (exprs!8212 lt!2592666))) (h!77184 s!7854)))))

(declare-fun b!7266885 () Bool)

(declare-fun e!4357775 () Bool)

(assert (=> b!7266885 (= e!4357775 (nullable!7972 (h!77183 (exprs!8212 lt!2592666))))))

(declare-fun d!2261047 () Bool)

(declare-fun c!1352243 () Bool)

(assert (=> d!2261047 (= c!1352243 e!4357775)))

(declare-fun res!2946120 () Bool)

(assert (=> d!2261047 (=> (not res!2946120) (not e!4357775))))

(assert (=> d!2261047 (= res!2946120 (is-Cons!70735 (exprs!8212 lt!2592666)))))

(assert (=> d!2261047 (= (derivationStepZipperUp!2542 lt!2592666 (h!77184 s!7854)) e!4357776)))

(declare-fun b!7266886 () Bool)

(assert (=> b!7266886 (= e!4357776 (set.union call!662384 (derivationStepZipperUp!2542 (Context!15425 (t!384929 (exprs!8212 lt!2592666))) (h!77184 s!7854))))))

(assert (= (and d!2261047 res!2946120) b!7266885))

(assert (= (and d!2261047 c!1352243) b!7266886))

(assert (= (and d!2261047 (not c!1352243)) b!7266884))

(assert (= (and b!7266884 c!1352242) b!7266882))

(assert (= (and b!7266884 (not c!1352242)) b!7266883))

(assert (= (or b!7266886 b!7266882) bm!662379))

(declare-fun m!7951630 () Bool)

(assert (=> bm!662379 m!7951630))

(declare-fun m!7951632 () Bool)

(assert (=> b!7266885 m!7951632))

(declare-fun m!7951634 () Bool)

(assert (=> b!7266886 m!7951634))

(assert (=> b!7266824 d!2261047))

(declare-fun b!7266896 () Bool)

(declare-fun e!4357782 () List!70859)

(assert (=> b!7266896 (= e!4357782 (Cons!70735 (h!77183 lt!2592665) (++!16672 (t!384929 lt!2592665) (exprs!8212 ct2!346))))))

(declare-fun b!7266895 () Bool)

(assert (=> b!7266895 (= e!4357782 (exprs!8212 ct2!346))))

(declare-fun lt!2592729 () List!70859)

(declare-fun b!7266898 () Bool)

(declare-fun e!4357781 () Bool)

(assert (=> b!7266898 (= e!4357781 (or (not (= (exprs!8212 ct2!346) Nil!70735)) (= lt!2592729 lt!2592665)))))

(declare-fun d!2261049 () Bool)

(assert (=> d!2261049 e!4357781))

(declare-fun res!2946126 () Bool)

(assert (=> d!2261049 (=> (not res!2946126) (not e!4357781))))

(declare-fun content!14753 (List!70859) (Set Regex!18772))

(assert (=> d!2261049 (= res!2946126 (= (content!14753 lt!2592729) (set.union (content!14753 lt!2592665) (content!14753 (exprs!8212 ct2!346)))))))

(assert (=> d!2261049 (= lt!2592729 e!4357782)))

(declare-fun c!1352246 () Bool)

(assert (=> d!2261049 (= c!1352246 (is-Nil!70735 lt!2592665))))

(assert (=> d!2261049 (= (++!16672 lt!2592665 (exprs!8212 ct2!346)) lt!2592729)))

(declare-fun b!7266897 () Bool)

(declare-fun res!2946125 () Bool)

(assert (=> b!7266897 (=> (not res!2946125) (not e!4357781))))

(declare-fun size!41801 (List!70859) Int)

(assert (=> b!7266897 (= res!2946125 (= (size!41801 lt!2592729) (+ (size!41801 lt!2592665) (size!41801 (exprs!8212 ct2!346)))))))

(assert (= (and d!2261049 c!1352246) b!7266895))

(assert (= (and d!2261049 (not c!1352246)) b!7266896))

(assert (= (and d!2261049 res!2946126) b!7266897))

(assert (= (and b!7266897 res!2946125) b!7266898))

(declare-fun m!7951636 () Bool)

(assert (=> b!7266896 m!7951636))

(declare-fun m!7951638 () Bool)

(assert (=> d!2261049 m!7951638))

(declare-fun m!7951640 () Bool)

(assert (=> d!2261049 m!7951640))

(declare-fun m!7951642 () Bool)

(assert (=> d!2261049 m!7951642))

(declare-fun m!7951644 () Bool)

(assert (=> b!7266897 m!7951644))

(declare-fun m!7951646 () Bool)

(assert (=> b!7266897 m!7951646))

(declare-fun m!7951648 () Bool)

(assert (=> b!7266897 m!7951648))

(assert (=> b!7266824 d!2261049))

(declare-fun bm!662392 () Bool)

(declare-fun call!662401 () (Set Context!15424))

(declare-fun call!662397 () (Set Context!15424))

(assert (=> bm!662392 (= call!662401 call!662397)))

(declare-fun b!7266921 () Bool)

(declare-fun e!4357795 () (Set Context!15424))

(assert (=> b!7266921 (= e!4357795 (as set.empty (Set Context!15424)))))

(declare-fun b!7266922 () Bool)

(declare-fun e!4357800 () (Set Context!15424))

(assert (=> b!7266922 (= e!4357800 (set.insert lt!2592666 (as set.empty (Set Context!15424))))))

(declare-fun bm!662393 () Bool)

(declare-fun call!662399 () List!70859)

(declare-fun call!662402 () List!70859)

(assert (=> bm!662393 (= call!662399 call!662402)))

(declare-fun b!7266923 () Bool)

(declare-fun c!1352261 () Bool)

(assert (=> b!7266923 (= c!1352261 (is-Star!18772 (h!77183 (exprs!8212 ct1!250))))))

(declare-fun e!4357798 () (Set Context!15424))

(assert (=> b!7266923 (= e!4357798 e!4357795)))

(declare-fun c!1352257 () Bool)

(declare-fun c!1352260 () Bool)

(declare-fun bm!662394 () Bool)

(declare-fun c!1352258 () Bool)

(assert (=> bm!662394 (= call!662397 (derivationStepZipperDown!2706 (ite c!1352257 (regOne!38057 (h!77183 (exprs!8212 ct1!250))) (ite c!1352258 (regTwo!38056 (h!77183 (exprs!8212 ct1!250))) (ite c!1352260 (regOne!38056 (h!77183 (exprs!8212 ct1!250))) (reg!19101 (h!77183 (exprs!8212 ct1!250)))))) (ite (or c!1352257 c!1352258) lt!2592666 (Context!15425 call!662399)) (h!77184 s!7854)))))

(declare-fun bm!662395 () Bool)

(declare-fun call!662400 () (Set Context!15424))

(assert (=> bm!662395 (= call!662400 call!662401)))

(declare-fun b!7266925 () Bool)

(declare-fun e!4357799 () (Set Context!15424))

(assert (=> b!7266925 (= e!4357800 e!4357799)))

(assert (=> b!7266925 (= c!1352257 (is-Union!18772 (h!77183 (exprs!8212 ct1!250))))))

(declare-fun b!7266926 () Bool)

(assert (=> b!7266926 (= e!4357798 call!662400)))

(declare-fun d!2261051 () Bool)

(declare-fun c!1352259 () Bool)

(assert (=> d!2261051 (= c!1352259 (and (is-ElementMatch!18772 (h!77183 (exprs!8212 ct1!250))) (= (c!1352232 (h!77183 (exprs!8212 ct1!250))) (h!77184 s!7854))))))

(assert (=> d!2261051 (= (derivationStepZipperDown!2706 (h!77183 (exprs!8212 ct1!250)) lt!2592666 (h!77184 s!7854)) e!4357800)))

(declare-fun b!7266924 () Bool)

(declare-fun e!4357796 () Bool)

(assert (=> b!7266924 (= c!1352258 e!4357796)))

(declare-fun res!2946129 () Bool)

(assert (=> b!7266924 (=> (not res!2946129) (not e!4357796))))

(assert (=> b!7266924 (= res!2946129 (is-Concat!27617 (h!77183 (exprs!8212 ct1!250))))))

(declare-fun e!4357797 () (Set Context!15424))

(assert (=> b!7266924 (= e!4357799 e!4357797)))

(declare-fun bm!662396 () Bool)

(declare-fun $colon$colon!2950 (List!70859 Regex!18772) List!70859)

(assert (=> bm!662396 (= call!662402 ($colon$colon!2950 (exprs!8212 lt!2592666) (ite (or c!1352258 c!1352260) (regTwo!38056 (h!77183 (exprs!8212 ct1!250))) (h!77183 (exprs!8212 ct1!250)))))))

(declare-fun b!7266927 () Bool)

(declare-fun call!662398 () (Set Context!15424))

(assert (=> b!7266927 (= e!4357797 (set.union call!662398 call!662401))))

(declare-fun b!7266928 () Bool)

(assert (=> b!7266928 (= e!4357797 e!4357798)))

(assert (=> b!7266928 (= c!1352260 (is-Concat!27617 (h!77183 (exprs!8212 ct1!250))))))

(declare-fun b!7266929 () Bool)

(assert (=> b!7266929 (= e!4357799 (set.union call!662397 call!662398))))

(declare-fun b!7266930 () Bool)

(assert (=> b!7266930 (= e!4357796 (nullable!7972 (regOne!38056 (h!77183 (exprs!8212 ct1!250)))))))

(declare-fun b!7266931 () Bool)

(assert (=> b!7266931 (= e!4357795 call!662400)))

(declare-fun bm!662397 () Bool)

(assert (=> bm!662397 (= call!662398 (derivationStepZipperDown!2706 (ite c!1352257 (regTwo!38057 (h!77183 (exprs!8212 ct1!250))) (regOne!38056 (h!77183 (exprs!8212 ct1!250)))) (ite c!1352257 lt!2592666 (Context!15425 call!662402)) (h!77184 s!7854)))))

(assert (= (and d!2261051 c!1352259) b!7266922))

(assert (= (and d!2261051 (not c!1352259)) b!7266925))

(assert (= (and b!7266925 c!1352257) b!7266929))

(assert (= (and b!7266925 (not c!1352257)) b!7266924))

(assert (= (and b!7266924 res!2946129) b!7266930))

(assert (= (and b!7266924 c!1352258) b!7266927))

(assert (= (and b!7266924 (not c!1352258)) b!7266928))

(assert (= (and b!7266928 c!1352260) b!7266926))

(assert (= (and b!7266928 (not c!1352260)) b!7266923))

(assert (= (and b!7266923 c!1352261) b!7266931))

(assert (= (and b!7266923 (not c!1352261)) b!7266921))

(assert (= (or b!7266926 b!7266931) bm!662393))

(assert (= (or b!7266926 b!7266931) bm!662395))

(assert (= (or b!7266927 bm!662393) bm!662396))

(assert (= (or b!7266927 bm!662395) bm!662392))

(assert (= (or b!7266929 bm!662392) bm!662394))

(assert (= (or b!7266929 b!7266927) bm!662397))

(assert (=> b!7266922 m!7951518))

(declare-fun m!7951650 () Bool)

(assert (=> bm!662396 m!7951650))

(declare-fun m!7951652 () Bool)

(assert (=> b!7266930 m!7951652))

(declare-fun m!7951654 () Bool)

(assert (=> bm!662394 m!7951654))

(declare-fun m!7951656 () Bool)

(assert (=> bm!662397 m!7951656))

(assert (=> b!7266824 d!2261051))

(declare-fun d!2261055 () Bool)

(declare-fun c!1352274 () Bool)

(declare-fun isEmpty!40665 (List!70860) Bool)

(assert (=> d!2261055 (= c!1352274 (isEmpty!40665 s!7854))))

(declare-fun e!4357815 () Bool)

(assert (=> d!2261055 (= (matchZipper!3676 (set.insert ct2!346 (as set.empty (Set Context!15424))) s!7854) e!4357815)))

(declare-fun b!7266958 () Bool)

(declare-fun nullableZipper!2981 ((Set Context!15424)) Bool)

(assert (=> b!7266958 (= e!4357815 (nullableZipper!2981 (set.insert ct2!346 (as set.empty (Set Context!15424)))))))

(declare-fun b!7266959 () Bool)

(declare-fun head!14980 (List!70860) C!37818)

(declare-fun tail!14453 (List!70860) List!70860)

(assert (=> b!7266959 (= e!4357815 (matchZipper!3676 (derivationStepZipper!3512 (set.insert ct2!346 (as set.empty (Set Context!15424))) (head!14980 s!7854)) (tail!14453 s!7854)))))

(assert (= (and d!2261055 c!1352274) b!7266958))

(assert (= (and d!2261055 (not c!1352274)) b!7266959))

(declare-fun m!7951658 () Bool)

(assert (=> d!2261055 m!7951658))

(assert (=> b!7266958 m!7951510))

(declare-fun m!7951660 () Bool)

(assert (=> b!7266958 m!7951660))

(declare-fun m!7951662 () Bool)

(assert (=> b!7266959 m!7951662))

(assert (=> b!7266959 m!7951510))

(assert (=> b!7266959 m!7951662))

(declare-fun m!7951664 () Bool)

(assert (=> b!7266959 m!7951664))

(declare-fun m!7951666 () Bool)

(assert (=> b!7266959 m!7951666))

(assert (=> b!7266959 m!7951664))

(assert (=> b!7266959 m!7951666))

(declare-fun m!7951668 () Bool)

(assert (=> b!7266959 m!7951668))

(assert (=> start!708768 d!2261055))

(declare-fun bs!1910356 () Bool)

(declare-fun d!2261057 () Bool)

(assert (= bs!1910356 (and d!2261057 b!7266831)))

(declare-fun lambda!447600 () Int)

(assert (=> bs!1910356 (= lambda!447600 lambda!447574)))

(assert (=> d!2261057 (= (inv!89941 ct2!346) (forall!17603 (exprs!8212 ct2!346) lambda!447600))))

(declare-fun bs!1910357 () Bool)

(assert (= bs!1910357 d!2261057))

(declare-fun m!7951670 () Bool)

(assert (=> bs!1910357 m!7951670))

(assert (=> start!708768 d!2261057))

(declare-fun bs!1910358 () Bool)

(declare-fun d!2261059 () Bool)

(assert (= bs!1910358 (and d!2261059 b!7266831)))

(declare-fun lambda!447601 () Int)

(assert (=> bs!1910358 (= lambda!447601 lambda!447574)))

(declare-fun bs!1910359 () Bool)

(assert (= bs!1910359 (and d!2261059 d!2261057)))

(assert (=> bs!1910359 (= lambda!447601 lambda!447600)))

(assert (=> d!2261059 (= (inv!89941 ct1!250) (forall!17603 (exprs!8212 ct1!250) lambda!447601))))

(declare-fun bs!1910360 () Bool)

(assert (= bs!1910360 d!2261059))

(declare-fun m!7951672 () Bool)

(assert (=> bs!1910360 m!7951672))

(assert (=> start!708768 d!2261059))

(declare-fun d!2261061 () Bool)

(assert (=> d!2261061 (= (isEmpty!40663 (exprs!8212 ct1!250)) (is-Nil!70735 (exprs!8212 ct1!250)))))

(assert (=> b!7266829 d!2261061))

(declare-fun bm!662406 () Bool)

(declare-fun call!662415 () (Set Context!15424))

(declare-fun call!662411 () (Set Context!15424))

(assert (=> bm!662406 (= call!662415 call!662411)))

(declare-fun b!7266960 () Bool)

(declare-fun e!4357816 () (Set Context!15424))

(assert (=> b!7266960 (= e!4357816 (as set.empty (Set Context!15424)))))

(declare-fun b!7266961 () Bool)

(declare-fun e!4357821 () (Set Context!15424))

(assert (=> b!7266961 (= e!4357821 (set.insert lt!2592667 (as set.empty (Set Context!15424))))))

(declare-fun bm!662407 () Bool)

(declare-fun call!662413 () List!70859)

(declare-fun call!662416 () List!70859)

(assert (=> bm!662407 (= call!662413 call!662416)))

(declare-fun b!7266962 () Bool)

(declare-fun c!1352279 () Bool)

(assert (=> b!7266962 (= c!1352279 (is-Star!18772 (h!77183 (exprs!8212 ct1!250))))))

(declare-fun e!4357819 () (Set Context!15424))

(assert (=> b!7266962 (= e!4357819 e!4357816)))

(declare-fun c!1352276 () Bool)

(declare-fun c!1352275 () Bool)

(declare-fun c!1352278 () Bool)

(declare-fun bm!662408 () Bool)

(assert (=> bm!662408 (= call!662411 (derivationStepZipperDown!2706 (ite c!1352275 (regOne!38057 (h!77183 (exprs!8212 ct1!250))) (ite c!1352276 (regTwo!38056 (h!77183 (exprs!8212 ct1!250))) (ite c!1352278 (regOne!38056 (h!77183 (exprs!8212 ct1!250))) (reg!19101 (h!77183 (exprs!8212 ct1!250)))))) (ite (or c!1352275 c!1352276) lt!2592667 (Context!15425 call!662413)) (h!77184 s!7854)))))

(declare-fun bm!662409 () Bool)

(declare-fun call!662414 () (Set Context!15424))

(assert (=> bm!662409 (= call!662414 call!662415)))

(declare-fun b!7266964 () Bool)

(declare-fun e!4357820 () (Set Context!15424))

(assert (=> b!7266964 (= e!4357821 e!4357820)))

(assert (=> b!7266964 (= c!1352275 (is-Union!18772 (h!77183 (exprs!8212 ct1!250))))))

(declare-fun b!7266965 () Bool)

(assert (=> b!7266965 (= e!4357819 call!662414)))

(declare-fun d!2261063 () Bool)

(declare-fun c!1352277 () Bool)

(assert (=> d!2261063 (= c!1352277 (and (is-ElementMatch!18772 (h!77183 (exprs!8212 ct1!250))) (= (c!1352232 (h!77183 (exprs!8212 ct1!250))) (h!77184 s!7854))))))

(assert (=> d!2261063 (= (derivationStepZipperDown!2706 (h!77183 (exprs!8212 ct1!250)) lt!2592667 (h!77184 s!7854)) e!4357821)))

(declare-fun b!7266963 () Bool)

(declare-fun e!4357817 () Bool)

(assert (=> b!7266963 (= c!1352276 e!4357817)))

(declare-fun res!2946132 () Bool)

(assert (=> b!7266963 (=> (not res!2946132) (not e!4357817))))

(assert (=> b!7266963 (= res!2946132 (is-Concat!27617 (h!77183 (exprs!8212 ct1!250))))))

(declare-fun e!4357818 () (Set Context!15424))

(assert (=> b!7266963 (= e!4357820 e!4357818)))

(declare-fun bm!662410 () Bool)

(assert (=> bm!662410 (= call!662416 ($colon$colon!2950 (exprs!8212 lt!2592667) (ite (or c!1352276 c!1352278) (regTwo!38056 (h!77183 (exprs!8212 ct1!250))) (h!77183 (exprs!8212 ct1!250)))))))

(declare-fun b!7266966 () Bool)

(declare-fun call!662412 () (Set Context!15424))

(assert (=> b!7266966 (= e!4357818 (set.union call!662412 call!662415))))

(declare-fun b!7266967 () Bool)

(assert (=> b!7266967 (= e!4357818 e!4357819)))

(assert (=> b!7266967 (= c!1352278 (is-Concat!27617 (h!77183 (exprs!8212 ct1!250))))))

(declare-fun b!7266968 () Bool)

(assert (=> b!7266968 (= e!4357820 (set.union call!662411 call!662412))))

(declare-fun b!7266969 () Bool)

(assert (=> b!7266969 (= e!4357817 (nullable!7972 (regOne!38056 (h!77183 (exprs!8212 ct1!250)))))))

(declare-fun b!7266970 () Bool)

(assert (=> b!7266970 (= e!4357816 call!662414)))

(declare-fun bm!662411 () Bool)

(assert (=> bm!662411 (= call!662412 (derivationStepZipperDown!2706 (ite c!1352275 (regTwo!38057 (h!77183 (exprs!8212 ct1!250))) (regOne!38056 (h!77183 (exprs!8212 ct1!250)))) (ite c!1352275 lt!2592667 (Context!15425 call!662416)) (h!77184 s!7854)))))

(assert (= (and d!2261063 c!1352277) b!7266961))

(assert (= (and d!2261063 (not c!1352277)) b!7266964))

(assert (= (and b!7266964 c!1352275) b!7266968))

(assert (= (and b!7266964 (not c!1352275)) b!7266963))

(assert (= (and b!7266963 res!2946132) b!7266969))

(assert (= (and b!7266963 c!1352276) b!7266966))

(assert (= (and b!7266963 (not c!1352276)) b!7266967))

(assert (= (and b!7266967 c!1352278) b!7266965))

(assert (= (and b!7266967 (not c!1352278)) b!7266962))

(assert (= (and b!7266962 c!1352279) b!7266970))

(assert (= (and b!7266962 (not c!1352279)) b!7266960))

(assert (= (or b!7266965 b!7266970) bm!662407))

(assert (= (or b!7266965 b!7266970) bm!662409))

(assert (= (or b!7266966 bm!662407) bm!662410))

(assert (= (or b!7266966 bm!662409) bm!662406))

(assert (= (or b!7266968 bm!662406) bm!662408))

(assert (= (or b!7266968 b!7266966) bm!662411))

(declare-fun m!7951674 () Bool)

(assert (=> b!7266961 m!7951674))

(declare-fun m!7951676 () Bool)

(assert (=> bm!662410 m!7951676))

(assert (=> b!7266969 m!7951652))

(declare-fun m!7951678 () Bool)

(assert (=> bm!662408 m!7951678))

(declare-fun m!7951680 () Bool)

(assert (=> bm!662411 m!7951680))

(assert (=> b!7266822 d!2261063))

(declare-fun b!7266971 () Bool)

(declare-fun e!4357822 () (Set Context!15424))

(declare-fun call!662419 () (Set Context!15424))

(assert (=> b!7266971 (= e!4357822 call!662419)))

(declare-fun b!7266972 () Bool)

(assert (=> b!7266972 (= e!4357822 (as set.empty (Set Context!15424)))))

(declare-fun b!7266973 () Bool)

(declare-fun e!4357824 () (Set Context!15424))

(assert (=> b!7266973 (= e!4357824 e!4357822)))

(declare-fun c!1352280 () Bool)

(assert (=> b!7266973 (= c!1352280 (is-Cons!70735 (exprs!8212 lt!2592667)))))

(declare-fun bm!662412 () Bool)

(assert (=> bm!662412 (= call!662419 (derivationStepZipperDown!2706 (h!77183 (exprs!8212 lt!2592667)) (Context!15425 (t!384929 (exprs!8212 lt!2592667))) (h!77184 s!7854)))))

(declare-fun b!7266974 () Bool)

(declare-fun e!4357823 () Bool)

(assert (=> b!7266974 (= e!4357823 (nullable!7972 (h!77183 (exprs!8212 lt!2592667))))))

(declare-fun d!2261065 () Bool)

(declare-fun c!1352281 () Bool)

(assert (=> d!2261065 (= c!1352281 e!4357823)))

(declare-fun res!2946133 () Bool)

(assert (=> d!2261065 (=> (not res!2946133) (not e!4357823))))

(assert (=> d!2261065 (= res!2946133 (is-Cons!70735 (exprs!8212 lt!2592667)))))

(assert (=> d!2261065 (= (derivationStepZipperUp!2542 lt!2592667 (h!77184 s!7854)) e!4357824)))

(declare-fun b!7266975 () Bool)

(assert (=> b!7266975 (= e!4357824 (set.union call!662419 (derivationStepZipperUp!2542 (Context!15425 (t!384929 (exprs!8212 lt!2592667))) (h!77184 s!7854))))))

(assert (= (and d!2261065 res!2946133) b!7266974))

(assert (= (and d!2261065 c!1352281) b!7266975))

(assert (= (and d!2261065 (not c!1352281)) b!7266973))

(assert (= (and b!7266973 c!1352280) b!7266971))

(assert (= (and b!7266973 (not c!1352280)) b!7266972))

(assert (= (or b!7266975 b!7266971) bm!662412))

(declare-fun m!7951682 () Bool)

(assert (=> bm!662412 m!7951682))

(declare-fun m!7951684 () Bool)

(assert (=> b!7266974 m!7951684))

(declare-fun m!7951686 () Bool)

(assert (=> b!7266975 m!7951686))

(assert (=> b!7266822 d!2261065))

(declare-fun d!2261067 () Bool)

(declare-fun res!2946138 () Bool)

(declare-fun e!4357829 () Bool)

(assert (=> d!2261067 (=> res!2946138 e!4357829)))

(assert (=> d!2261067 (= res!2946138 (is-Nil!70735 lt!2592665))))

(assert (=> d!2261067 (= (forall!17603 lt!2592665 lambda!447574) e!4357829)))

(declare-fun b!7266980 () Bool)

(declare-fun e!4357830 () Bool)

(assert (=> b!7266980 (= e!4357829 e!4357830)))

(declare-fun res!2946139 () Bool)

(assert (=> b!7266980 (=> (not res!2946139) (not e!4357830))))

(declare-fun dynLambda!28889 (Int Regex!18772) Bool)

(assert (=> b!7266980 (= res!2946139 (dynLambda!28889 lambda!447574 (h!77183 lt!2592665)))))

(declare-fun b!7266981 () Bool)

(assert (=> b!7266981 (= e!4357830 (forall!17603 (t!384929 lt!2592665) lambda!447574))))

(assert (= (and d!2261067 (not res!2946138)) b!7266980))

(assert (= (and b!7266980 res!2946139) b!7266981))

(declare-fun b_lambda!279877 () Bool)

(assert (=> (not b_lambda!279877) (not b!7266980)))

(declare-fun m!7951688 () Bool)

(assert (=> b!7266980 m!7951688))

(declare-fun m!7951690 () Bool)

(assert (=> b!7266981 m!7951690))

(assert (=> b!7266821 d!2261067))

(declare-fun d!2261069 () Bool)

(declare-fun c!1352282 () Bool)

(assert (=> d!2261069 (= c!1352282 (isEmpty!40665 s!7854))))

(declare-fun e!4357831 () Bool)

(assert (=> d!2261069 (= (matchZipper!3676 (set.insert lt!2592666 (as set.empty (Set Context!15424))) s!7854) e!4357831)))

(declare-fun b!7266982 () Bool)

(assert (=> b!7266982 (= e!4357831 (nullableZipper!2981 (set.insert lt!2592666 (as set.empty (Set Context!15424)))))))

(declare-fun b!7266983 () Bool)

(assert (=> b!7266983 (= e!4357831 (matchZipper!3676 (derivationStepZipper!3512 (set.insert lt!2592666 (as set.empty (Set Context!15424))) (head!14980 s!7854)) (tail!14453 s!7854)))))

(assert (= (and d!2261069 c!1352282) b!7266982))

(assert (= (and d!2261069 (not c!1352282)) b!7266983))

(assert (=> d!2261069 m!7951658))

(assert (=> b!7266982 m!7951518))

(declare-fun m!7951692 () Bool)

(assert (=> b!7266982 m!7951692))

(assert (=> b!7266983 m!7951662))

(assert (=> b!7266983 m!7951518))

(assert (=> b!7266983 m!7951662))

(declare-fun m!7951694 () Bool)

(assert (=> b!7266983 m!7951694))

(assert (=> b!7266983 m!7951666))

(assert (=> b!7266983 m!7951694))

(assert (=> b!7266983 m!7951666))

(declare-fun m!7951696 () Bool)

(assert (=> b!7266983 m!7951696))

(assert (=> b!7266821 d!2261069))

(assert (=> b!7266821 d!2261045))

(declare-fun bs!1910361 () Bool)

(declare-fun d!2261071 () Bool)

(assert (= bs!1910361 (and d!2261071 b!7266831)))

(declare-fun lambda!447604 () Int)

(assert (=> bs!1910361 (= lambda!447604 lambda!447574)))

(declare-fun bs!1910362 () Bool)

(assert (= bs!1910362 (and d!2261071 d!2261057)))

(assert (=> bs!1910362 (= lambda!447604 lambda!447600)))

(declare-fun bs!1910363 () Bool)

(assert (= bs!1910363 (and d!2261071 d!2261059)))

(assert (=> bs!1910363 (= lambda!447604 lambda!447601)))

(assert (=> d!2261071 (matchZipper!3676 (set.insert (Context!15425 (++!16672 (exprs!8212 lt!2592667) (exprs!8212 ct2!346))) (as set.empty (Set Context!15424))) s!7854)))

(declare-fun lt!2592735 () Unit!164162)

(assert (=> d!2261071 (= lt!2592735 (lemmaConcatPreservesForall!1529 (exprs!8212 lt!2592667) (exprs!8212 ct2!346) lambda!447604))))

(declare-fun lt!2592734 () Unit!164162)

(declare-fun choose!56321 (Context!15424 Context!15424 List!70860) Unit!164162)

(assert (=> d!2261071 (= lt!2592734 (choose!56321 lt!2592667 ct2!346 s!7854))))

(assert (=> d!2261071 (matchZipper!3676 (set.insert ct2!346 (as set.empty (Set Context!15424))) s!7854)))

(assert (=> d!2261071 (= (lemmaPrependingNullableCtxStillMatches!9 lt!2592667 ct2!346 s!7854) lt!2592734)))

(declare-fun bs!1910364 () Bool)

(assert (= bs!1910364 d!2261071))

(assert (=> bs!1910364 m!7951510))

(declare-fun m!7951698 () Bool)

(assert (=> bs!1910364 m!7951698))

(declare-fun m!7951700 () Bool)

(assert (=> bs!1910364 m!7951700))

(declare-fun m!7951702 () Bool)

(assert (=> bs!1910364 m!7951702))

(assert (=> bs!1910364 m!7951700))

(declare-fun m!7951704 () Bool)

(assert (=> bs!1910364 m!7951704))

(assert (=> bs!1910364 m!7951510))

(assert (=> bs!1910364 m!7951512))

(declare-fun m!7951706 () Bool)

(assert (=> bs!1910364 m!7951706))

(assert (=> b!7266821 d!2261071))

(declare-fun d!2261073 () Bool)

(declare-fun nullableFct!3136 (Regex!18772) Bool)

(assert (=> d!2261073 (= (nullable!7972 (h!77183 (exprs!8212 ct1!250))) (nullableFct!3136 (h!77183 (exprs!8212 ct1!250))))))

(declare-fun bs!1910365 () Bool)

(assert (= bs!1910365 d!2261073))

(declare-fun m!7951708 () Bool)

(assert (=> bs!1910365 m!7951708))

(assert (=> b!7266820 d!2261073))

(declare-fun b!7266995 () Bool)

(declare-fun e!4357838 () (Set Context!15424))

(declare-fun call!662428 () (Set Context!15424))

(assert (=> b!7266995 (= e!4357838 call!662428)))

(declare-fun b!7266996 () Bool)

(assert (=> b!7266996 (= e!4357838 (as set.empty (Set Context!15424)))))

(declare-fun b!7266997 () Bool)

(declare-fun e!4357840 () (Set Context!15424))

(assert (=> b!7266997 (= e!4357840 e!4357838)))

(declare-fun c!1352288 () Bool)

(assert (=> b!7266997 (= c!1352288 (is-Cons!70735 (exprs!8212 ct1!250)))))

(declare-fun bm!662423 () Bool)

(assert (=> bm!662423 (= call!662428 (derivationStepZipperDown!2706 (h!77183 (exprs!8212 ct1!250)) (Context!15425 (t!384929 (exprs!8212 ct1!250))) (h!77184 s!7854)))))

(declare-fun b!7266998 () Bool)

(declare-fun e!4357839 () Bool)

(assert (=> b!7266998 (= e!4357839 (nullable!7972 (h!77183 (exprs!8212 ct1!250))))))

(declare-fun d!2261075 () Bool)

(declare-fun c!1352289 () Bool)

(assert (=> d!2261075 (= c!1352289 e!4357839)))

(declare-fun res!2946141 () Bool)

(assert (=> d!2261075 (=> (not res!2946141) (not e!4357839))))

(assert (=> d!2261075 (= res!2946141 (is-Cons!70735 (exprs!8212 ct1!250)))))

(assert (=> d!2261075 (= (derivationStepZipperUp!2542 ct1!250 (h!77184 s!7854)) e!4357840)))

(declare-fun b!7266999 () Bool)

(assert (=> b!7266999 (= e!4357840 (set.union call!662428 (derivationStepZipperUp!2542 (Context!15425 (t!384929 (exprs!8212 ct1!250))) (h!77184 s!7854))))))

(assert (= (and d!2261075 res!2946141) b!7266998))

(assert (= (and d!2261075 c!1352289) b!7266999))

(assert (= (and d!2261075 (not c!1352289)) b!7266997))

(assert (= (and b!7266997 c!1352288) b!7266995))

(assert (= (and b!7266997 (not c!1352288)) b!7266996))

(assert (= (or b!7266999 b!7266995) bm!662423))

(declare-fun m!7951710 () Bool)

(assert (=> bm!662423 m!7951710))

(assert (=> b!7266998 m!7951540))

(declare-fun m!7951712 () Bool)

(assert (=> b!7266999 m!7951712))

(assert (=> b!7266820 d!2261075))

(declare-fun d!2261077 () Bool)

(assert (=> d!2261077 (= (tail!14451 (exprs!8212 ct1!250)) (t!384929 (exprs!8212 ct1!250)))))

(assert (=> b!7266820 d!2261077))

(declare-fun b!7267000 () Bool)

(declare-fun e!4357841 () (Set Context!15424))

(declare-fun call!662429 () (Set Context!15424))

(assert (=> b!7267000 (= e!4357841 call!662429)))

(declare-fun b!7267001 () Bool)

(assert (=> b!7267001 (= e!4357841 (as set.empty (Set Context!15424)))))

(declare-fun b!7267002 () Bool)

(declare-fun e!4357843 () (Set Context!15424))

(assert (=> b!7267002 (= e!4357843 e!4357841)))

(declare-fun c!1352290 () Bool)

(assert (=> b!7267002 (= c!1352290 (is-Cons!70735 (exprs!8212 lt!2592654)))))

(declare-fun bm!662424 () Bool)

(assert (=> bm!662424 (= call!662429 (derivationStepZipperDown!2706 (h!77183 (exprs!8212 lt!2592654)) (Context!15425 (t!384929 (exprs!8212 lt!2592654))) (h!77184 s!7854)))))

(declare-fun b!7267003 () Bool)

(declare-fun e!4357842 () Bool)

(assert (=> b!7267003 (= e!4357842 (nullable!7972 (h!77183 (exprs!8212 lt!2592654))))))

(declare-fun d!2261079 () Bool)

(declare-fun c!1352291 () Bool)

(assert (=> d!2261079 (= c!1352291 e!4357842)))

(declare-fun res!2946142 () Bool)

(assert (=> d!2261079 (=> (not res!2946142) (not e!4357842))))

(assert (=> d!2261079 (= res!2946142 (is-Cons!70735 (exprs!8212 lt!2592654)))))

(assert (=> d!2261079 (= (derivationStepZipperUp!2542 lt!2592654 (h!77184 s!7854)) e!4357843)))

(declare-fun b!7267004 () Bool)

(assert (=> b!7267004 (= e!4357843 (set.union call!662429 (derivationStepZipperUp!2542 (Context!15425 (t!384929 (exprs!8212 lt!2592654))) (h!77184 s!7854))))))

(assert (= (and d!2261079 res!2946142) b!7267003))

(assert (= (and d!2261079 c!1352291) b!7267004))

(assert (= (and d!2261079 (not c!1352291)) b!7267002))

(assert (= (and b!7267002 c!1352290) b!7267000))

(assert (= (and b!7267002 (not c!1352290)) b!7267001))

(assert (= (or b!7267004 b!7267000) bm!662424))

(declare-fun m!7951714 () Bool)

(assert (=> bm!662424 m!7951714))

(declare-fun m!7951716 () Bool)

(assert (=> b!7267003 m!7951716))

(declare-fun m!7951718 () Bool)

(assert (=> b!7267004 m!7951718))

(assert (=> b!7266831 d!2261079))

(declare-fun d!2261081 () Bool)

(declare-fun dynLambda!28890 (Int Context!15424) (Set Context!15424))

(assert (=> d!2261081 (= (flatMap!2885 lt!2592652 lambda!447575) (dynLambda!28890 lambda!447575 lt!2592654))))

(declare-fun lt!2592738 () Unit!164162)

(declare-fun choose!56322 ((Set Context!15424) Context!15424 Int) Unit!164162)

(assert (=> d!2261081 (= lt!2592738 (choose!56322 lt!2592652 lt!2592654 lambda!447575))))

(assert (=> d!2261081 (= lt!2592652 (set.insert lt!2592654 (as set.empty (Set Context!15424))))))

(assert (=> d!2261081 (= (lemmaFlatMapOnSingletonSet!2285 lt!2592652 lt!2592654 lambda!447575) lt!2592738)))

(declare-fun b_lambda!279879 () Bool)

(assert (=> (not b_lambda!279879) (not d!2261081)))

(declare-fun bs!1910366 () Bool)

(assert (= bs!1910366 d!2261081))

(assert (=> bs!1910366 m!7951558))

(declare-fun m!7951730 () Bool)

(assert (=> bs!1910366 m!7951730))

(declare-fun m!7951732 () Bool)

(assert (=> bs!1910366 m!7951732))

(assert (=> bs!1910366 m!7951550))

(assert (=> b!7266831 d!2261081))

(assert (=> b!7266831 d!2261075))

(declare-fun d!2261085 () Bool)

(declare-fun choose!56323 ((Set Context!15424) Int) (Set Context!15424))

(assert (=> d!2261085 (= (flatMap!2885 lt!2592657 lambda!447575) (choose!56323 lt!2592657 lambda!447575))))

(declare-fun bs!1910367 () Bool)

(assert (= bs!1910367 d!2261085))

(declare-fun m!7951734 () Bool)

(assert (=> bs!1910367 m!7951734))

(assert (=> b!7266831 d!2261085))

(declare-fun d!2261087 () Bool)

(assert (=> d!2261087 (forall!17603 (++!16672 (exprs!8212 ct1!250) (exprs!8212 ct2!346)) lambda!447574)))

(declare-fun lt!2592739 () Unit!164162)

(assert (=> d!2261087 (= lt!2592739 (choose!56320 (exprs!8212 ct1!250) (exprs!8212 ct2!346) lambda!447574))))

(assert (=> d!2261087 (forall!17603 (exprs!8212 ct1!250) lambda!447574)))

(assert (=> d!2261087 (= (lemmaConcatPreservesForall!1529 (exprs!8212 ct1!250) (exprs!8212 ct2!346) lambda!447574) lt!2592739)))

(declare-fun bs!1910368 () Bool)

(assert (= bs!1910368 d!2261087))

(assert (=> bs!1910368 m!7951556))

(assert (=> bs!1910368 m!7951556))

(declare-fun m!7951736 () Bool)

(assert (=> bs!1910368 m!7951736))

(declare-fun m!7951738 () Bool)

(assert (=> bs!1910368 m!7951738))

(declare-fun m!7951740 () Bool)

(assert (=> bs!1910368 m!7951740))

(assert (=> b!7266831 d!2261087))

(declare-fun d!2261089 () Bool)

(assert (=> d!2261089 (= (flatMap!2885 lt!2592652 lambda!447575) (choose!56323 lt!2592652 lambda!447575))))

(declare-fun bs!1910369 () Bool)

(assert (= bs!1910369 d!2261089))

(declare-fun m!7951742 () Bool)

(assert (=> bs!1910369 m!7951742))

(assert (=> b!7266831 d!2261089))

(declare-fun bs!1910370 () Bool)

(declare-fun d!2261091 () Bool)

(assert (= bs!1910370 (and d!2261091 b!7266831)))

(declare-fun lambda!447607 () Int)

(assert (=> bs!1910370 (= lambda!447607 lambda!447575)))

(assert (=> d!2261091 true))

(assert (=> d!2261091 (= (derivationStepZipper!3512 lt!2592652 (h!77184 s!7854)) (flatMap!2885 lt!2592652 lambda!447607))))

(declare-fun bs!1910371 () Bool)

(assert (= bs!1910371 d!2261091))

(declare-fun m!7951744 () Bool)

(assert (=> bs!1910371 m!7951744))

(assert (=> b!7266831 d!2261091))

(declare-fun b!7267014 () Bool)

(declare-fun e!4357849 () List!70859)

(assert (=> b!7267014 (= e!4357849 (Cons!70735 (h!77183 (exprs!8212 ct1!250)) (++!16672 (t!384929 (exprs!8212 ct1!250)) (exprs!8212 ct2!346))))))

(declare-fun b!7267013 () Bool)

(assert (=> b!7267013 (= e!4357849 (exprs!8212 ct2!346))))

(declare-fun e!4357848 () Bool)

(declare-fun lt!2592740 () List!70859)

(declare-fun b!7267016 () Bool)

(assert (=> b!7267016 (= e!4357848 (or (not (= (exprs!8212 ct2!346) Nil!70735)) (= lt!2592740 (exprs!8212 ct1!250))))))

(declare-fun d!2261093 () Bool)

(assert (=> d!2261093 e!4357848))

(declare-fun res!2946146 () Bool)

(assert (=> d!2261093 (=> (not res!2946146) (not e!4357848))))

(assert (=> d!2261093 (= res!2946146 (= (content!14753 lt!2592740) (set.union (content!14753 (exprs!8212 ct1!250)) (content!14753 (exprs!8212 ct2!346)))))))

(assert (=> d!2261093 (= lt!2592740 e!4357849)))

(declare-fun c!1352296 () Bool)

(assert (=> d!2261093 (= c!1352296 (is-Nil!70735 (exprs!8212 ct1!250)))))

(assert (=> d!2261093 (= (++!16672 (exprs!8212 ct1!250) (exprs!8212 ct2!346)) lt!2592740)))

(declare-fun b!7267015 () Bool)

(declare-fun res!2946145 () Bool)

(assert (=> b!7267015 (=> (not res!2946145) (not e!4357848))))

(assert (=> b!7267015 (= res!2946145 (= (size!41801 lt!2592740) (+ (size!41801 (exprs!8212 ct1!250)) (size!41801 (exprs!8212 ct2!346)))))))

(assert (= (and d!2261093 c!1352296) b!7267013))

(assert (= (and d!2261093 (not c!1352296)) b!7267014))

(assert (= (and d!2261093 res!2946146) b!7267015))

(assert (= (and b!7267015 res!2946145) b!7267016))

(declare-fun m!7951746 () Bool)

(assert (=> b!7267014 m!7951746))

(declare-fun m!7951748 () Bool)

(assert (=> d!2261093 m!7951748))

(declare-fun m!7951750 () Bool)

(assert (=> d!2261093 m!7951750))

(assert (=> d!2261093 m!7951642))

(declare-fun m!7951752 () Bool)

(assert (=> b!7267015 m!7951752))

(declare-fun m!7951754 () Bool)

(assert (=> b!7267015 m!7951754))

(assert (=> b!7267015 m!7951648))

(assert (=> b!7266831 d!2261093))

(declare-fun d!2261095 () Bool)

(assert (=> d!2261095 (= (flatMap!2885 lt!2592657 lambda!447575) (dynLambda!28890 lambda!447575 ct1!250))))

(declare-fun lt!2592741 () Unit!164162)

(assert (=> d!2261095 (= lt!2592741 (choose!56322 lt!2592657 ct1!250 lambda!447575))))

(assert (=> d!2261095 (= lt!2592657 (set.insert ct1!250 (as set.empty (Set Context!15424))))))

(assert (=> d!2261095 (= (lemmaFlatMapOnSingletonSet!2285 lt!2592657 ct1!250 lambda!447575) lt!2592741)))

(declare-fun b_lambda!279881 () Bool)

(assert (=> (not b_lambda!279881) (not d!2261095)))

(declare-fun bs!1910372 () Bool)

(assert (= bs!1910372 d!2261095))

(assert (=> bs!1910372 m!7951546))

(declare-fun m!7951756 () Bool)

(assert (=> bs!1910372 m!7951756))

(declare-fun m!7951758 () Bool)

(assert (=> bs!1910372 m!7951758))

(assert (=> bs!1910372 m!7951554))

(assert (=> b!7266831 d!2261095))

(declare-fun bs!1910373 () Bool)

(declare-fun d!2261097 () Bool)

(assert (= bs!1910373 (and d!2261097 b!7266831)))

(declare-fun lambda!447610 () Int)

(assert (=> bs!1910373 (not (= lambda!447610 lambda!447574))))

(declare-fun bs!1910374 () Bool)

(assert (= bs!1910374 (and d!2261097 d!2261057)))

(assert (=> bs!1910374 (not (= lambda!447610 lambda!447600))))

(declare-fun bs!1910375 () Bool)

(assert (= bs!1910375 (and d!2261097 d!2261059)))

(assert (=> bs!1910375 (not (= lambda!447610 lambda!447601))))

(declare-fun bs!1910376 () Bool)

(assert (= bs!1910376 (and d!2261097 d!2261071)))

(assert (=> bs!1910376 (not (= lambda!447610 lambda!447604))))

(assert (=> d!2261097 (= (nullableContext!262 ct1!250) (forall!17603 (exprs!8212 ct1!250) lambda!447610))))

(declare-fun bs!1910377 () Bool)

(assert (= bs!1910377 d!2261097))

(declare-fun m!7951760 () Bool)

(assert (=> bs!1910377 m!7951760))

(assert (=> b!7266830 d!2261097))

(declare-fun b!7267025 () Bool)

(declare-fun e!4357854 () Bool)

(declare-fun tp!2040599 () Bool)

(assert (=> b!7267025 (= e!4357854 (and tp_is_empty!47009 tp!2040599))))

(assert (=> b!7266828 (= tp!2040587 e!4357854)))

(assert (= (and b!7266828 (is-Cons!70736 (t!384930 s!7854))) b!7267025))

(declare-fun b!7267030 () Bool)

(declare-fun e!4357857 () Bool)

(declare-fun tp!2040604 () Bool)

(declare-fun tp!2040605 () Bool)

(assert (=> b!7267030 (= e!4357857 (and tp!2040604 tp!2040605))))

(assert (=> b!7266823 (= tp!2040585 e!4357857)))

(assert (= (and b!7266823 (is-Cons!70735 (exprs!8212 ct1!250))) b!7267030))

(declare-fun b!7267031 () Bool)

(declare-fun e!4357858 () Bool)

(declare-fun tp!2040606 () Bool)

(declare-fun tp!2040607 () Bool)

(assert (=> b!7267031 (= e!4357858 (and tp!2040606 tp!2040607))))

(assert (=> b!7266825 (= tp!2040586 e!4357858)))

(assert (= (and b!7266825 (is-Cons!70735 (exprs!8212 ct2!346))) b!7267031))

(declare-fun b_lambda!279883 () Bool)

(assert (= b_lambda!279877 (or b!7266831 b_lambda!279883)))

(declare-fun bs!1910378 () Bool)

(declare-fun d!2261099 () Bool)

(assert (= bs!1910378 (and d!2261099 b!7266831)))

(declare-fun validRegex!9573 (Regex!18772) Bool)

(assert (=> bs!1910378 (= (dynLambda!28889 lambda!447574 (h!77183 lt!2592665)) (validRegex!9573 (h!77183 lt!2592665)))))

(declare-fun m!7951762 () Bool)

(assert (=> bs!1910378 m!7951762))

(assert (=> b!7266980 d!2261099))

(declare-fun b_lambda!279885 () Bool)

(assert (= b_lambda!279879 (or b!7266831 b_lambda!279885)))

(declare-fun bs!1910379 () Bool)

(declare-fun d!2261101 () Bool)

(assert (= bs!1910379 (and d!2261101 b!7266831)))

(assert (=> bs!1910379 (= (dynLambda!28890 lambda!447575 lt!2592654) (derivationStepZipperUp!2542 lt!2592654 (h!77184 s!7854)))))

(assert (=> bs!1910379 m!7951564))

(assert (=> d!2261081 d!2261101))

(declare-fun b_lambda!279887 () Bool)

(assert (= b_lambda!279881 (or b!7266831 b_lambda!279887)))

(declare-fun bs!1910380 () Bool)

(declare-fun d!2261103 () Bool)

(assert (= bs!1910380 (and d!2261103 b!7266831)))

(assert (=> bs!1910380 (= (dynLambda!28890 lambda!447575 ct1!250) (derivationStepZipperUp!2542 ct1!250 (h!77184 s!7854)))))

(assert (=> bs!1910380 m!7951542))

(assert (=> d!2261095 d!2261103))

(push 1)

(assert (not b!7266999))

(assert (not d!2261069))

(assert (not b!7266897))

(assert (not b!7267025))

(assert (not d!2261071))

(assert (not bm!662379))

(assert (not b!7266981))

(assert (not b!7267003))

(assert (not b!7267015))

(assert (not b!7266998))

(assert (not d!2261085))

(assert (not b!7266982))

(assert (not b!7266969))

(assert (not d!2261095))

(assert (not b!7267031))

(assert (not d!2261093))

(assert (not d!2261059))

(assert (not d!2261057))

(assert (not bm!662410))

(assert (not d!2261091))

(assert (not d!2261049))

(assert (not b!7266983))

(assert (not b!7266885))

(assert (not bs!1910380))

(assert (not b_lambda!279885))

(assert (not bm!662411))

(assert (not d!2261073))

(assert (not d!2261097))

(assert (not d!2261081))

(assert (not bs!1910378))

(assert (not b_lambda!279883))

(assert (not b_lambda!279887))

(assert (not b!7266974))

(assert (not d!2261045))

(assert tp_is_empty!47009)

(assert (not bm!662408))

(assert (not bm!662412))

(assert (not b!7266886))

(assert (not d!2261055))

(assert (not b!7267004))

(assert (not b!7266959))

(assert (not b!7266958))

(assert (not b!7267014))

(assert (not b!7266930))

(assert (not bm!662394))

(assert (not b!7267030))

(assert (not bm!662423))

(assert (not bs!1910379))

(assert (not d!2261087))

(assert (not bm!662424))

(assert (not bm!662396))

(assert (not b!7266975))

(assert (not d!2261089))

(assert (not b!7266896))

(assert (not bm!662397))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

