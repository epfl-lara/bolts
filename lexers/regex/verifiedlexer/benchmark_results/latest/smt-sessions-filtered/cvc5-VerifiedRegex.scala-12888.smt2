; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!711720 () Bool)

(assert start!711720)

(declare-fun b!7298734 () Bool)

(assert (=> b!7298734 true))

(declare-fun e!4371467 () Bool)

(declare-fun e!4371466 () Bool)

(assert (=> b!7298734 (= e!4371467 (not e!4371466))))

(declare-fun res!2951921 () Bool)

(assert (=> b!7298734 (=> res!2951921 e!4371466)))

(declare-datatypes ((C!38042 0))(
  ( (C!38043 (val!28969 Int)) )
))
(declare-datatypes ((Regex!18884 0))(
  ( (ElementMatch!18884 (c!1356904 C!38042)) (Concat!27729 (regOne!38280 Regex!18884) (regTwo!38280 Regex!18884)) (EmptyExpr!18884) (Star!18884 (reg!19213 Regex!18884)) (EmptyLang!18884) (Union!18884 (regOne!38281 Regex!18884) (regTwo!38281 Regex!18884)) )
))
(declare-datatypes ((List!71085 0))(
  ( (Nil!70961) (Cons!70961 (h!77409 Regex!18884) (t!385163 List!71085)) )
))
(declare-datatypes ((Context!15648 0))(
  ( (Context!15649 (exprs!8324 List!71085)) )
))
(declare-fun lt!2599741 () (Set Context!15648))

(declare-datatypes ((List!71086 0))(
  ( (Nil!70962) (Cons!70962 (h!77410 C!38042) (t!385164 List!71086)) )
))
(declare-fun s!7854 () List!71086)

(declare-fun lt!2599738 () (Set Context!15648))

(declare-fun derivationStepZipper!3617 ((Set Context!15648) C!38042) (Set Context!15648))

(assert (=> b!7298734 (= res!2951921 (not (= lt!2599738 (derivationStepZipper!3617 lt!2599741 (h!77410 s!7854)))))))

(declare-fun lambda!451184 () Int)

(declare-fun ct2!346 () Context!15648)

(declare-fun ct1!250 () Context!15648)

(declare-datatypes ((Unit!164366 0))(
  ( (Unit!164367) )
))
(declare-fun lt!2599742 () Unit!164366)

(declare-fun lemmaConcatPreservesForall!1631 (List!71085 List!71085 Int) Unit!164366)

(assert (=> b!7298734 (= lt!2599742 (lemmaConcatPreservesForall!1631 (exprs!8324 ct1!250) (exprs!8324 ct2!346) lambda!451184))))

(declare-fun lambda!451185 () Int)

(declare-fun lt!2599744 () Context!15648)

(declare-fun flatMap!2979 ((Set Context!15648) Int) (Set Context!15648))

(declare-fun derivationStepZipperUp!2634 (Context!15648 C!38042) (Set Context!15648))

(assert (=> b!7298734 (= (flatMap!2979 lt!2599741 lambda!451185) (derivationStepZipperUp!2634 lt!2599744 (h!77410 s!7854)))))

(declare-fun lt!2599736 () Unit!164366)

(declare-fun lemmaFlatMapOnSingletonSet!2377 ((Set Context!15648) Context!15648 Int) Unit!164366)

(assert (=> b!7298734 (= lt!2599736 (lemmaFlatMapOnSingletonSet!2377 lt!2599741 lt!2599744 lambda!451185))))

(assert (=> b!7298734 (= lt!2599741 (set.insert lt!2599744 (as set.empty (Set Context!15648))))))

(declare-fun lt!2599743 () Unit!164366)

(assert (=> b!7298734 (= lt!2599743 (lemmaConcatPreservesForall!1631 (exprs!8324 ct1!250) (exprs!8324 ct2!346) lambda!451184))))

(declare-fun lt!2599735 () Unit!164366)

(assert (=> b!7298734 (= lt!2599735 (lemmaConcatPreservesForall!1631 (exprs!8324 ct1!250) (exprs!8324 ct2!346) lambda!451184))))

(declare-fun lt!2599740 () (Set Context!15648))

(assert (=> b!7298734 (= (flatMap!2979 lt!2599740 lambda!451185) (derivationStepZipperUp!2634 ct1!250 (h!77410 s!7854)))))

(declare-fun lt!2599734 () Unit!164366)

(assert (=> b!7298734 (= lt!2599734 (lemmaFlatMapOnSingletonSet!2377 lt!2599740 ct1!250 lambda!451185))))

(assert (=> b!7298734 (= lt!2599740 (set.insert ct1!250 (as set.empty (Set Context!15648))))))

(assert (=> b!7298734 (= lt!2599738 (derivationStepZipperUp!2634 lt!2599744 (h!77410 s!7854)))))

(declare-fun ++!16774 (List!71085 List!71085) List!71085)

(assert (=> b!7298734 (= lt!2599744 (Context!15649 (++!16774 (exprs!8324 ct1!250) (exprs!8324 ct2!346))))))

(declare-fun lt!2599737 () Unit!164366)

(assert (=> b!7298734 (= lt!2599737 (lemmaConcatPreservesForall!1631 (exprs!8324 ct1!250) (exprs!8324 ct2!346) lambda!451184))))

(declare-fun b!7298735 () Bool)

(declare-fun e!4371470 () Bool)

(declare-fun tp_is_empty!47233 () Bool)

(declare-fun tp!2062770 () Bool)

(assert (=> b!7298735 (= e!4371470 (and tp_is_empty!47233 tp!2062770))))

(declare-fun b!7298736 () Bool)

(declare-fun e!4371469 () Bool)

(declare-fun tp!2062769 () Bool)

(assert (=> b!7298736 (= e!4371469 tp!2062769)))

(declare-fun b!7298737 () Bool)

(declare-fun res!2951918 () Bool)

(assert (=> b!7298737 (=> res!2951918 e!4371466)))

(assert (=> b!7298737 (= res!2951918 (is-Cons!70961 (exprs!8324 ct1!250)))))

(declare-fun b!7298738 () Bool)

(declare-fun e!4371468 () Bool)

(declare-fun tp!2062771 () Bool)

(assert (=> b!7298738 (= e!4371468 tp!2062771)))

(declare-fun b!7298739 () Bool)

(declare-fun matchZipper!3788 ((Set Context!15648) List!71086) Bool)

(assert (=> b!7298739 (= e!4371466 (matchZipper!3788 lt!2599741 s!7854))))

(declare-fun lt!2599739 () Unit!164366)

(assert (=> b!7298739 (= lt!2599739 (lemmaConcatPreservesForall!1631 (exprs!8324 ct1!250) (exprs!8324 ct2!346) lambda!451184))))

(declare-fun b!7298740 () Bool)

(declare-fun res!2951919 () Bool)

(assert (=> b!7298740 (=> (not res!2951919) (not e!4371467))))

(assert (=> b!7298740 (= res!2951919 (is-Cons!70962 s!7854))))

(declare-fun b!7298741 () Bool)

(declare-fun res!2951920 () Bool)

(assert (=> b!7298741 (=> (not res!2951920) (not e!4371467))))

(declare-fun nullableContext!374 (Context!15648) Bool)

(assert (=> b!7298741 (= res!2951920 (nullableContext!374 ct1!250))))

(declare-fun res!2951922 () Bool)

(assert (=> start!711720 (=> (not res!2951922) (not e!4371467))))

(assert (=> start!711720 (= res!2951922 (matchZipper!3788 (set.insert ct2!346 (as set.empty (Set Context!15648))) s!7854))))

(assert (=> start!711720 e!4371467))

(declare-fun inv!90221 (Context!15648) Bool)

(assert (=> start!711720 (and (inv!90221 ct2!346) e!4371468)))

(assert (=> start!711720 e!4371470))

(assert (=> start!711720 (and (inv!90221 ct1!250) e!4371469)))

(assert (= (and start!711720 res!2951922) b!7298741))

(assert (= (and b!7298741 res!2951920) b!7298740))

(assert (= (and b!7298740 res!2951919) b!7298734))

(assert (= (and b!7298734 (not res!2951921)) b!7298737))

(assert (= (and b!7298737 (not res!2951918)) b!7298739))

(assert (= start!711720 b!7298738))

(assert (= (and start!711720 (is-Cons!70962 s!7854)) b!7298735))

(assert (= start!711720 b!7298736))

(declare-fun m!7971402 () Bool)

(assert (=> b!7298734 m!7971402))

(declare-fun m!7971404 () Bool)

(assert (=> b!7298734 m!7971404))

(declare-fun m!7971406 () Bool)

(assert (=> b!7298734 m!7971406))

(declare-fun m!7971408 () Bool)

(assert (=> b!7298734 m!7971408))

(declare-fun m!7971410 () Bool)

(assert (=> b!7298734 m!7971410))

(assert (=> b!7298734 m!7971408))

(declare-fun m!7971412 () Bool)

(assert (=> b!7298734 m!7971412))

(declare-fun m!7971414 () Bool)

(assert (=> b!7298734 m!7971414))

(declare-fun m!7971416 () Bool)

(assert (=> b!7298734 m!7971416))

(declare-fun m!7971418 () Bool)

(assert (=> b!7298734 m!7971418))

(assert (=> b!7298734 m!7971408))

(declare-fun m!7971420 () Bool)

(assert (=> b!7298734 m!7971420))

(assert (=> b!7298734 m!7971408))

(declare-fun m!7971422 () Bool)

(assert (=> b!7298734 m!7971422))

(declare-fun m!7971424 () Bool)

(assert (=> b!7298739 m!7971424))

(assert (=> b!7298739 m!7971408))

(declare-fun m!7971426 () Bool)

(assert (=> b!7298741 m!7971426))

(declare-fun m!7971428 () Bool)

(assert (=> start!711720 m!7971428))

(assert (=> start!711720 m!7971428))

(declare-fun m!7971430 () Bool)

(assert (=> start!711720 m!7971430))

(declare-fun m!7971432 () Bool)

(assert (=> start!711720 m!7971432))

(declare-fun m!7971434 () Bool)

(assert (=> start!711720 m!7971434))

(push 1)

(assert (not b!7298738))

(assert (not start!711720))

(assert tp_is_empty!47233)

(assert (not b!7298736))

(assert (not b!7298734))

(assert (not b!7298741))

(assert (not b!7298739))

(assert (not b!7298735))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2268111 () Bool)

(declare-fun c!1356912 () Bool)

(declare-fun isEmpty!40827 (List!71086) Bool)

(assert (=> d!2268111 (= c!1356912 (isEmpty!40827 s!7854))))

(declare-fun e!4371488 () Bool)

(assert (=> d!2268111 (= (matchZipper!3788 lt!2599741 s!7854) e!4371488)))

(declare-fun b!7298774 () Bool)

(declare-fun nullableZipper!3071 ((Set Context!15648)) Bool)

(assert (=> b!7298774 (= e!4371488 (nullableZipper!3071 lt!2599741))))

(declare-fun b!7298775 () Bool)

(declare-fun head!15069 (List!71086) C!38042)

(declare-fun tail!14610 (List!71086) List!71086)

(assert (=> b!7298775 (= e!4371488 (matchZipper!3788 (derivationStepZipper!3617 lt!2599741 (head!15069 s!7854)) (tail!14610 s!7854)))))

(assert (= (and d!2268111 c!1356912) b!7298774))

(assert (= (and d!2268111 (not c!1356912)) b!7298775))

(declare-fun m!7971470 () Bool)

(assert (=> d!2268111 m!7971470))

(declare-fun m!7971472 () Bool)

(assert (=> b!7298774 m!7971472))

(declare-fun m!7971474 () Bool)

(assert (=> b!7298775 m!7971474))

(assert (=> b!7298775 m!7971474))

(declare-fun m!7971476 () Bool)

(assert (=> b!7298775 m!7971476))

(declare-fun m!7971478 () Bool)

(assert (=> b!7298775 m!7971478))

(assert (=> b!7298775 m!7971476))

(assert (=> b!7298775 m!7971478))

(declare-fun m!7971480 () Bool)

(assert (=> b!7298775 m!7971480))

(assert (=> b!7298739 d!2268111))

(declare-fun d!2268115 () Bool)

(declare-fun forall!17702 (List!71085 Int) Bool)

(assert (=> d!2268115 (forall!17702 (++!16774 (exprs!8324 ct1!250) (exprs!8324 ct2!346)) lambda!451184)))

(declare-fun lt!2599780 () Unit!164366)

(declare-fun choose!56584 (List!71085 List!71085 Int) Unit!164366)

(assert (=> d!2268115 (= lt!2599780 (choose!56584 (exprs!8324 ct1!250) (exprs!8324 ct2!346) lambda!451184))))

(assert (=> d!2268115 (forall!17702 (exprs!8324 ct1!250) lambda!451184)))

(assert (=> d!2268115 (= (lemmaConcatPreservesForall!1631 (exprs!8324 ct1!250) (exprs!8324 ct2!346) lambda!451184) lt!2599780)))

(declare-fun bs!1913577 () Bool)

(assert (= bs!1913577 d!2268115))

(assert (=> bs!1913577 m!7971416))

(assert (=> bs!1913577 m!7971416))

(declare-fun m!7971482 () Bool)

(assert (=> bs!1913577 m!7971482))

(declare-fun m!7971484 () Bool)

(assert (=> bs!1913577 m!7971484))

(declare-fun m!7971486 () Bool)

(assert (=> bs!1913577 m!7971486))

(assert (=> b!7298739 d!2268115))

(declare-fun d!2268117 () Bool)

(declare-fun c!1356913 () Bool)

(assert (=> d!2268117 (= c!1356913 (isEmpty!40827 s!7854))))

(declare-fun e!4371489 () Bool)

(assert (=> d!2268117 (= (matchZipper!3788 (set.insert ct2!346 (as set.empty (Set Context!15648))) s!7854) e!4371489)))

(declare-fun b!7298776 () Bool)

(assert (=> b!7298776 (= e!4371489 (nullableZipper!3071 (set.insert ct2!346 (as set.empty (Set Context!15648)))))))

(declare-fun b!7298777 () Bool)

(assert (=> b!7298777 (= e!4371489 (matchZipper!3788 (derivationStepZipper!3617 (set.insert ct2!346 (as set.empty (Set Context!15648))) (head!15069 s!7854)) (tail!14610 s!7854)))))

(assert (= (and d!2268117 c!1356913) b!7298776))

(assert (= (and d!2268117 (not c!1356913)) b!7298777))

(assert (=> d!2268117 m!7971470))

(assert (=> b!7298776 m!7971428))

(declare-fun m!7971488 () Bool)

(assert (=> b!7298776 m!7971488))

(assert (=> b!7298777 m!7971474))

(assert (=> b!7298777 m!7971428))

(assert (=> b!7298777 m!7971474))

(declare-fun m!7971490 () Bool)

(assert (=> b!7298777 m!7971490))

(assert (=> b!7298777 m!7971478))

(assert (=> b!7298777 m!7971490))

(assert (=> b!7298777 m!7971478))

(declare-fun m!7971492 () Bool)

(assert (=> b!7298777 m!7971492))

(assert (=> start!711720 d!2268117))

(declare-fun bs!1913578 () Bool)

(declare-fun d!2268119 () Bool)

(assert (= bs!1913578 (and d!2268119 b!7298734)))

(declare-fun lambda!451204 () Int)

(assert (=> bs!1913578 (= lambda!451204 lambda!451184)))

(assert (=> d!2268119 (= (inv!90221 ct2!346) (forall!17702 (exprs!8324 ct2!346) lambda!451204))))

(declare-fun bs!1913579 () Bool)

(assert (= bs!1913579 d!2268119))

(declare-fun m!7971494 () Bool)

(assert (=> bs!1913579 m!7971494))

(assert (=> start!711720 d!2268119))

(declare-fun bs!1913580 () Bool)

(declare-fun d!2268121 () Bool)

(assert (= bs!1913580 (and d!2268121 b!7298734)))

(declare-fun lambda!451205 () Int)

(assert (=> bs!1913580 (= lambda!451205 lambda!451184)))

(declare-fun bs!1913581 () Bool)

(assert (= bs!1913581 (and d!2268121 d!2268119)))

(assert (=> bs!1913581 (= lambda!451205 lambda!451204)))

(assert (=> d!2268121 (= (inv!90221 ct1!250) (forall!17702 (exprs!8324 ct1!250) lambda!451205))))

(declare-fun bs!1913582 () Bool)

(assert (= bs!1913582 d!2268121))

(declare-fun m!7971496 () Bool)

(assert (=> bs!1913582 m!7971496))

(assert (=> start!711720 d!2268121))

(declare-fun d!2268123 () Bool)

(declare-fun choose!56585 ((Set Context!15648) Int) (Set Context!15648))

(assert (=> d!2268123 (= (flatMap!2979 lt!2599741 lambda!451185) (choose!56585 lt!2599741 lambda!451185))))

(declare-fun bs!1913583 () Bool)

(assert (= bs!1913583 d!2268123))

(declare-fun m!7971498 () Bool)

(assert (=> bs!1913583 m!7971498))

(assert (=> b!7298734 d!2268123))

(declare-fun bm!665246 () Bool)

(declare-fun call!665251 () (Set Context!15648))

(declare-fun derivationStepZipperDown!2790 (Regex!18884 Context!15648 C!38042) (Set Context!15648))

(assert (=> bm!665246 (= call!665251 (derivationStepZipperDown!2790 (h!77409 (exprs!8324 lt!2599744)) (Context!15649 (t!385163 (exprs!8324 lt!2599744))) (h!77410 s!7854)))))

(declare-fun b!7298788 () Bool)

(declare-fun e!4371496 () (Set Context!15648))

(assert (=> b!7298788 (= e!4371496 call!665251)))

(declare-fun b!7298789 () Bool)

(assert (=> b!7298789 (= e!4371496 (as set.empty (Set Context!15648)))))

(declare-fun b!7298790 () Bool)

(declare-fun e!4371497 () Bool)

(declare-fun nullable!8061 (Regex!18884) Bool)

(assert (=> b!7298790 (= e!4371497 (nullable!8061 (h!77409 (exprs!8324 lt!2599744))))))

(declare-fun e!4371498 () (Set Context!15648))

(declare-fun b!7298791 () Bool)

(assert (=> b!7298791 (= e!4371498 (set.union call!665251 (derivationStepZipperUp!2634 (Context!15649 (t!385163 (exprs!8324 lt!2599744))) (h!77410 s!7854))))))

(declare-fun d!2268125 () Bool)

(declare-fun c!1356919 () Bool)

(assert (=> d!2268125 (= c!1356919 e!4371497)))

(declare-fun res!2951940 () Bool)

(assert (=> d!2268125 (=> (not res!2951940) (not e!4371497))))

(assert (=> d!2268125 (= res!2951940 (is-Cons!70961 (exprs!8324 lt!2599744)))))

(assert (=> d!2268125 (= (derivationStepZipperUp!2634 lt!2599744 (h!77410 s!7854)) e!4371498)))

(declare-fun b!7298792 () Bool)

(assert (=> b!7298792 (= e!4371498 e!4371496)))

(declare-fun c!1356918 () Bool)

(assert (=> b!7298792 (= c!1356918 (is-Cons!70961 (exprs!8324 lt!2599744)))))

(assert (= (and d!2268125 res!2951940) b!7298790))

(assert (= (and d!2268125 c!1356919) b!7298791))

(assert (= (and d!2268125 (not c!1356919)) b!7298792))

(assert (= (and b!7298792 c!1356918) b!7298788))

(assert (= (and b!7298792 (not c!1356918)) b!7298789))

(assert (= (or b!7298791 b!7298788) bm!665246))

(declare-fun m!7971506 () Bool)

(assert (=> bm!665246 m!7971506))

(declare-fun m!7971508 () Bool)

(assert (=> b!7298790 m!7971508))

(declare-fun m!7971510 () Bool)

(assert (=> b!7298791 m!7971510))

(assert (=> b!7298734 d!2268125))

(declare-fun b!7298811 () Bool)

(declare-fun e!4371510 () List!71085)

(assert (=> b!7298811 (= e!4371510 (exprs!8324 ct2!346))))

(declare-fun d!2268129 () Bool)

(declare-fun e!4371509 () Bool)

(assert (=> d!2268129 e!4371509))

(declare-fun res!2951948 () Bool)

(assert (=> d!2268129 (=> (not res!2951948) (not e!4371509))))

(declare-fun lt!2599786 () List!71085)

(declare-fun content!14828 (List!71085) (Set Regex!18884))

(assert (=> d!2268129 (= res!2951948 (= (content!14828 lt!2599786) (set.union (content!14828 (exprs!8324 ct1!250)) (content!14828 (exprs!8324 ct2!346)))))))

(assert (=> d!2268129 (= lt!2599786 e!4371510)))

(declare-fun c!1356926 () Bool)

(assert (=> d!2268129 (= c!1356926 (is-Nil!70961 (exprs!8324 ct1!250)))))

(assert (=> d!2268129 (= (++!16774 (exprs!8324 ct1!250) (exprs!8324 ct2!346)) lt!2599786)))

(declare-fun b!7298813 () Bool)

(declare-fun res!2951947 () Bool)

(assert (=> b!7298813 (=> (not res!2951947) (not e!4371509))))

(declare-fun size!41874 (List!71085) Int)

(assert (=> b!7298813 (= res!2951947 (= (size!41874 lt!2599786) (+ (size!41874 (exprs!8324 ct1!250)) (size!41874 (exprs!8324 ct2!346)))))))

(declare-fun b!7298812 () Bool)

(assert (=> b!7298812 (= e!4371510 (Cons!70961 (h!77409 (exprs!8324 ct1!250)) (++!16774 (t!385163 (exprs!8324 ct1!250)) (exprs!8324 ct2!346))))))

(declare-fun b!7298814 () Bool)

(assert (=> b!7298814 (= e!4371509 (or (not (= (exprs!8324 ct2!346) Nil!70961)) (= lt!2599786 (exprs!8324 ct1!250))))))

(assert (= (and d!2268129 c!1356926) b!7298811))

(assert (= (and d!2268129 (not c!1356926)) b!7298812))

(assert (= (and d!2268129 res!2951948) b!7298813))

(assert (= (and b!7298813 res!2951947) b!7298814))

(declare-fun m!7971512 () Bool)

(assert (=> d!2268129 m!7971512))

(declare-fun m!7971514 () Bool)

(assert (=> d!2268129 m!7971514))

(declare-fun m!7971516 () Bool)

(assert (=> d!2268129 m!7971516))

(declare-fun m!7971518 () Bool)

(assert (=> b!7298813 m!7971518))

(declare-fun m!7971520 () Bool)

(assert (=> b!7298813 m!7971520))

(declare-fun m!7971522 () Bool)

(assert (=> b!7298813 m!7971522))

(declare-fun m!7971524 () Bool)

(assert (=> b!7298812 m!7971524))

(assert (=> b!7298734 d!2268129))

(assert (=> b!7298734 d!2268115))

(declare-fun bs!1913585 () Bool)

(declare-fun d!2268131 () Bool)

(assert (= bs!1913585 (and d!2268131 b!7298734)))

(declare-fun lambda!451208 () Int)

(assert (=> bs!1913585 (= lambda!451208 lambda!451185)))

(assert (=> d!2268131 true))

(assert (=> d!2268131 (= (derivationStepZipper!3617 lt!2599741 (h!77410 s!7854)) (flatMap!2979 lt!2599741 lambda!451208))))

(declare-fun bs!1913586 () Bool)

(assert (= bs!1913586 d!2268131))

(declare-fun m!7971532 () Bool)

(assert (=> bs!1913586 m!7971532))

(assert (=> b!7298734 d!2268131))

(declare-fun d!2268135 () Bool)

(declare-fun dynLambda!29019 (Int Context!15648) (Set Context!15648))

(assert (=> d!2268135 (= (flatMap!2979 lt!2599740 lambda!451185) (dynLambda!29019 lambda!451185 ct1!250))))

(declare-fun lt!2599789 () Unit!164366)

(declare-fun choose!56586 ((Set Context!15648) Context!15648 Int) Unit!164366)

(assert (=> d!2268135 (= lt!2599789 (choose!56586 lt!2599740 ct1!250 lambda!451185))))

(assert (=> d!2268135 (= lt!2599740 (set.insert ct1!250 (as set.empty (Set Context!15648))))))

(assert (=> d!2268135 (= (lemmaFlatMapOnSingletonSet!2377 lt!2599740 ct1!250 lambda!451185) lt!2599789)))

(declare-fun b_lambda!281617 () Bool)

(assert (=> (not b_lambda!281617) (not d!2268135)))

(declare-fun bs!1913587 () Bool)

(assert (= bs!1913587 d!2268135))

(assert (=> bs!1913587 m!7971420))

(declare-fun m!7971534 () Bool)

(assert (=> bs!1913587 m!7971534))

(declare-fun m!7971536 () Bool)

(assert (=> bs!1913587 m!7971536))

(assert (=> bs!1913587 m!7971412))

(assert (=> b!7298734 d!2268135))

(declare-fun d!2268137 () Bool)

(assert (=> d!2268137 (= (flatMap!2979 lt!2599741 lambda!451185) (dynLambda!29019 lambda!451185 lt!2599744))))

(declare-fun lt!2599790 () Unit!164366)

(assert (=> d!2268137 (= lt!2599790 (choose!56586 lt!2599741 lt!2599744 lambda!451185))))

(assert (=> d!2268137 (= lt!2599741 (set.insert lt!2599744 (as set.empty (Set Context!15648))))))

(assert (=> d!2268137 (= (lemmaFlatMapOnSingletonSet!2377 lt!2599741 lt!2599744 lambda!451185) lt!2599790)))

(declare-fun b_lambda!281619 () Bool)

(assert (=> (not b_lambda!281619) (not d!2268137)))

(declare-fun bs!1913588 () Bool)

(assert (= bs!1913588 d!2268137))

(assert (=> bs!1913588 m!7971402))

(declare-fun m!7971538 () Bool)

(assert (=> bs!1913588 m!7971538))

(declare-fun m!7971540 () Bool)

(assert (=> bs!1913588 m!7971540))

(assert (=> bs!1913588 m!7971404))

(assert (=> b!7298734 d!2268137))

(declare-fun d!2268139 () Bool)

(assert (=> d!2268139 (= (flatMap!2979 lt!2599740 lambda!451185) (choose!56585 lt!2599740 lambda!451185))))

(declare-fun bs!1913589 () Bool)

(assert (= bs!1913589 d!2268139))

(declare-fun m!7971542 () Bool)

(assert (=> bs!1913589 m!7971542))

(assert (=> b!7298734 d!2268139))

(declare-fun bm!665250 () Bool)

(declare-fun call!665255 () (Set Context!15648))

(assert (=> bm!665250 (= call!665255 (derivationStepZipperDown!2790 (h!77409 (exprs!8324 ct1!250)) (Context!15649 (t!385163 (exprs!8324 ct1!250))) (h!77410 s!7854)))))

(declare-fun b!7298822 () Bool)

(declare-fun e!4371514 () (Set Context!15648))

(assert (=> b!7298822 (= e!4371514 call!665255)))

(declare-fun b!7298823 () Bool)

(assert (=> b!7298823 (= e!4371514 (as set.empty (Set Context!15648)))))

(declare-fun b!7298824 () Bool)

(declare-fun e!4371515 () Bool)

(assert (=> b!7298824 (= e!4371515 (nullable!8061 (h!77409 (exprs!8324 ct1!250))))))

(declare-fun e!4371516 () (Set Context!15648))

(declare-fun b!7298825 () Bool)

(assert (=> b!7298825 (= e!4371516 (set.union call!665255 (derivationStepZipperUp!2634 (Context!15649 (t!385163 (exprs!8324 ct1!250))) (h!77410 s!7854))))))

(declare-fun d!2268141 () Bool)

(declare-fun c!1356934 () Bool)

(assert (=> d!2268141 (= c!1356934 e!4371515)))

(declare-fun res!2951950 () Bool)

(assert (=> d!2268141 (=> (not res!2951950) (not e!4371515))))

(assert (=> d!2268141 (= res!2951950 (is-Cons!70961 (exprs!8324 ct1!250)))))

(assert (=> d!2268141 (= (derivationStepZipperUp!2634 ct1!250 (h!77410 s!7854)) e!4371516)))

(declare-fun b!7298826 () Bool)

(assert (=> b!7298826 (= e!4371516 e!4371514)))

(declare-fun c!1356933 () Bool)

(assert (=> b!7298826 (= c!1356933 (is-Cons!70961 (exprs!8324 ct1!250)))))

(assert (= (and d!2268141 res!2951950) b!7298824))

(assert (= (and d!2268141 c!1356934) b!7298825))

(assert (= (and d!2268141 (not c!1356934)) b!7298826))

(assert (= (and b!7298826 c!1356933) b!7298822))

(assert (= (and b!7298826 (not c!1356933)) b!7298823))

(assert (= (or b!7298825 b!7298822) bm!665250))

(declare-fun m!7971544 () Bool)

(assert (=> bm!665250 m!7971544))

(declare-fun m!7971546 () Bool)

(assert (=> b!7298824 m!7971546))

(declare-fun m!7971548 () Bool)

(assert (=> b!7298825 m!7971548))

(assert (=> b!7298734 d!2268141))

(declare-fun bs!1913592 () Bool)

(declare-fun d!2268143 () Bool)

(assert (= bs!1913592 (and d!2268143 b!7298734)))

(declare-fun lambda!451214 () Int)

(assert (=> bs!1913592 (not (= lambda!451214 lambda!451184))))

(declare-fun bs!1913593 () Bool)

(assert (= bs!1913593 (and d!2268143 d!2268119)))

(assert (=> bs!1913593 (not (= lambda!451214 lambda!451204))))

(declare-fun bs!1913594 () Bool)

(assert (= bs!1913594 (and d!2268143 d!2268121)))

(assert (=> bs!1913594 (not (= lambda!451214 lambda!451205))))

(assert (=> d!2268143 (= (nullableContext!374 ct1!250) (forall!17702 (exprs!8324 ct1!250) lambda!451214))))

(declare-fun bs!1913595 () Bool)

(assert (= bs!1913595 d!2268143))

(declare-fun m!7971552 () Bool)

(assert (=> bs!1913595 m!7971552))

(assert (=> b!7298741 d!2268143))

(declare-fun b!7298833 () Bool)

(declare-fun e!4371519 () Bool)

(declare-fun tp!2062785 () Bool)

(declare-fun tp!2062786 () Bool)

(assert (=> b!7298833 (= e!4371519 (and tp!2062785 tp!2062786))))

(assert (=> b!7298738 (= tp!2062771 e!4371519)))

(assert (= (and b!7298738 (is-Cons!70961 (exprs!8324 ct2!346))) b!7298833))

(declare-fun b!7298838 () Bool)

(declare-fun e!4371522 () Bool)

(declare-fun tp!2062789 () Bool)

(assert (=> b!7298838 (= e!4371522 (and tp_is_empty!47233 tp!2062789))))

(assert (=> b!7298735 (= tp!2062770 e!4371522)))

(assert (= (and b!7298735 (is-Cons!70962 (t!385164 s!7854))) b!7298838))

(declare-fun b!7298839 () Bool)

(declare-fun e!4371523 () Bool)

(declare-fun tp!2062790 () Bool)

(declare-fun tp!2062791 () Bool)

(assert (=> b!7298839 (= e!4371523 (and tp!2062790 tp!2062791))))

(assert (=> b!7298736 (= tp!2062769 e!4371523)))

(assert (= (and b!7298736 (is-Cons!70961 (exprs!8324 ct1!250))) b!7298839))

(declare-fun b_lambda!281621 () Bool)

(assert (= b_lambda!281617 (or b!7298734 b_lambda!281621)))

(declare-fun bs!1913596 () Bool)

(declare-fun d!2268147 () Bool)

(assert (= bs!1913596 (and d!2268147 b!7298734)))

(assert (=> bs!1913596 (= (dynLambda!29019 lambda!451185 ct1!250) (derivationStepZipperUp!2634 ct1!250 (h!77410 s!7854)))))

(assert (=> bs!1913596 m!7971422))

(assert (=> d!2268135 d!2268147))

(declare-fun b_lambda!281623 () Bool)

(assert (= b_lambda!281619 (or b!7298734 b_lambda!281623)))

(declare-fun bs!1913597 () Bool)

(declare-fun d!2268149 () Bool)

(assert (= bs!1913597 (and d!2268149 b!7298734)))

(assert (=> bs!1913597 (= (dynLambda!29019 lambda!451185 lt!2599744) (derivationStepZipperUp!2634 lt!2599744 (h!77410 s!7854)))))

(assert (=> bs!1913597 m!7971406))

(assert (=> d!2268137 d!2268149))

(push 1)

(assert (not b!7298833))

(assert (not bm!665250))

(assert (not b!7298776))

(assert (not b_lambda!281621))

(assert (not d!2268117))

(assert (not d!2268135))

(assert (not d!2268139))

(assert (not d!2268137))

(assert (not b!7298791))

(assert (not b!7298774))

(assert tp_is_empty!47233)

(assert (not bs!1913597))

(assert (not b!7298838))

(assert (not bm!665246))

(assert (not b!7298775))

(assert (not b!7298813))

(assert (not b!7298777))

(assert (not b_lambda!281623))

(assert (not d!2268143))

(assert (not b!7298790))

(assert (not b!7298839))

(assert (not d!2268129))

(assert (not d!2268123))

(assert (not bs!1913596))

(assert (not d!2268119))

(assert (not b!7298824))

(assert (not d!2268111))

(assert (not d!2268115))

(assert (not d!2268131))

(assert (not b!7298812))

(assert (not b!7298825))

(assert (not d!2268121))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

