; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!703696 () Bool)

(assert start!703696)

(declare-fun b!7241656 () Bool)

(declare-fun res!2937663 () Bool)

(declare-fun e!4341758 () Bool)

(assert (=> b!7241656 (=> (not res!2937663) (not e!4341758))))

(declare-datatypes ((C!37394 0))(
  ( (C!37395 (val!28645 Int)) )
))
(declare-datatypes ((Regex!18560 0))(
  ( (ElementMatch!18560 (c!1344878 C!37394)) (Concat!27405 (regOne!37632 Regex!18560) (regTwo!37632 Regex!18560)) (EmptyExpr!18560) (Star!18560 (reg!18889 Regex!18560)) (EmptyLang!18560) (Union!18560 (regOne!37633 Regex!18560) (regTwo!37633 Regex!18560)) )
))
(declare-datatypes ((List!70285 0))(
  ( (Nil!70161) (Cons!70161 (h!76609 Regex!18560) (t!384336 List!70285)) )
))
(declare-datatypes ((Context!15000 0))(
  ( (Context!15001 (exprs!8000 List!70285)) )
))
(declare-fun ct1!232 () Context!15000)

(declare-fun nullableContext!215 (Context!15000) Bool)

(assert (=> b!7241656 (= res!2937663 (nullableContext!215 ct1!232))))

(declare-fun res!2937666 () Bool)

(declare-fun e!4341759 () Bool)

(assert (=> start!703696 (=> (not res!2937666) (not e!4341759))))

(declare-fun lt!2580223 () (Set Context!15000))

(declare-datatypes ((List!70286 0))(
  ( (Nil!70162) (Cons!70162 (h!76610 C!37394) (t!384337 List!70286)) )
))
(declare-fun s1!1971 () List!70286)

(declare-fun matchZipper!3470 ((Set Context!15000) List!70286) Bool)

(assert (=> start!703696 (= res!2937666 (matchZipper!3470 lt!2580223 s1!1971))))

(assert (=> start!703696 (= lt!2580223 (set.insert ct1!232 (as set.empty (Set Context!15000))))))

(assert (=> start!703696 e!4341759))

(declare-fun e!4341756 () Bool)

(declare-fun inv!89411 (Context!15000) Bool)

(assert (=> start!703696 (and (inv!89411 ct1!232) e!4341756)))

(declare-fun e!4341755 () Bool)

(assert (=> start!703696 e!4341755))

(declare-fun e!4341754 () Bool)

(assert (=> start!703696 e!4341754))

(declare-fun ct2!328 () Context!15000)

(declare-fun e!4341757 () Bool)

(assert (=> start!703696 (and (inv!89411 ct2!328) e!4341757)))

(declare-fun b!7241657 () Bool)

(declare-fun res!2937662 () Bool)

(assert (=> b!7241657 (=> (not res!2937662) (not e!4341758))))

(declare-fun nullableZipper!2854 ((Set Context!15000)) Bool)

(assert (=> b!7241657 (= res!2937662 (nullableZipper!2854 lt!2580223))))

(declare-fun b!7241658 () Bool)

(declare-fun tp_is_empty!46585 () Bool)

(declare-fun tp!2035356 () Bool)

(assert (=> b!7241658 (= e!4341754 (and tp_is_empty!46585 tp!2035356))))

(declare-fun b!7241659 () Bool)

(declare-fun tp!2035354 () Bool)

(assert (=> b!7241659 (= e!4341757 tp!2035354)))

(declare-fun b!7241660 () Bool)

(declare-fun res!2937664 () Bool)

(assert (=> b!7241660 (=> (not res!2937664) (not e!4341758))))

(declare-fun lambda!442058 () Int)

(declare-fun getWitness!2110 ((Set Context!15000) Int) Context!15000)

(assert (=> b!7241660 (= res!2937664 (= ct1!232 (getWitness!2110 lt!2580223 lambda!442058)))))

(declare-fun b!7241661 () Bool)

(assert (=> b!7241661 (= e!4341759 e!4341758)))

(declare-fun res!2937665 () Bool)

(assert (=> b!7241661 (=> (not res!2937665) (not e!4341758))))

(assert (=> b!7241661 (= res!2937665 (and (not (is-Nil!70161 (exprs!8000 ct1!232))) (not (is-Cons!70162 s1!1971))))))

(declare-fun lt!2580219 () List!70285)

(declare-fun ++!16416 (List!70285 List!70285) List!70285)

(assert (=> b!7241661 (= lt!2580219 (++!16416 (exprs!8000 ct1!232) (exprs!8000 ct2!328)))))

(declare-fun lambda!442057 () Int)

(declare-datatypes ((Unit!163706 0))(
  ( (Unit!163707) )
))
(declare-fun lt!2580221 () Unit!163706)

(declare-fun lemmaConcatPreservesForall!1369 (List!70285 List!70285 Int) Unit!163706)

(assert (=> b!7241661 (= lt!2580221 (lemmaConcatPreservesForall!1369 (exprs!8000 ct1!232) (exprs!8000 ct2!328) lambda!442057))))

(declare-fun b!7241662 () Bool)

(declare-fun tp!2035355 () Bool)

(assert (=> b!7241662 (= e!4341756 tp!2035355)))

(declare-fun b!7241663 () Bool)

(declare-fun res!2937661 () Bool)

(assert (=> b!7241663 (=> (not res!2937661) (not e!4341759))))

(declare-fun s2!1849 () List!70286)

(assert (=> b!7241663 (= res!2937661 (matchZipper!3470 (set.insert ct2!328 (as set.empty (Set Context!15000))) s2!1849))))

(declare-fun b!7241664 () Bool)

(declare-fun tp!2035353 () Bool)

(assert (=> b!7241664 (= e!4341755 (and tp_is_empty!46585 tp!2035353))))

(declare-fun b!7241665 () Bool)

(declare-fun forall!17401 (List!70285 Int) Bool)

(assert (=> b!7241665 (= e!4341758 (not (forall!17401 (exprs!8000 ct1!232) lambda!442057)))))

(assert (=> b!7241665 (matchZipper!3470 (set.insert (Context!15001 lt!2580219) (as set.empty (Set Context!15000))) s2!1849)))

(declare-fun lt!2580222 () Unit!163706)

(assert (=> b!7241665 (= lt!2580222 (lemmaConcatPreservesForall!1369 (exprs!8000 ct1!232) (exprs!8000 ct2!328) lambda!442057))))

(declare-fun lt!2580220 () Unit!163706)

(declare-fun lemmaPrependingNullableCtxStillMatches!1 (Context!15000 Context!15000 List!70286) Unit!163706)

(assert (=> b!7241665 (= lt!2580220 (lemmaPrependingNullableCtxStillMatches!1 ct1!232 ct2!328 s2!1849))))

(assert (= (and start!703696 res!2937666) b!7241663))

(assert (= (and b!7241663 res!2937661) b!7241661))

(assert (= (and b!7241661 res!2937665) b!7241657))

(assert (= (and b!7241657 res!2937662) b!7241660))

(assert (= (and b!7241660 res!2937664) b!7241656))

(assert (= (and b!7241656 res!2937663) b!7241665))

(assert (= start!703696 b!7241662))

(assert (= (and start!703696 (is-Cons!70162 s1!1971)) b!7241664))

(assert (= (and start!703696 (is-Cons!70162 s2!1849)) b!7241658))

(assert (= start!703696 b!7241659))

(declare-fun m!7916204 () Bool)

(assert (=> b!7241660 m!7916204))

(declare-fun m!7916206 () Bool)

(assert (=> start!703696 m!7916206))

(declare-fun m!7916208 () Bool)

(assert (=> start!703696 m!7916208))

(declare-fun m!7916210 () Bool)

(assert (=> start!703696 m!7916210))

(declare-fun m!7916212 () Bool)

(assert (=> start!703696 m!7916212))

(declare-fun m!7916214 () Bool)

(assert (=> b!7241656 m!7916214))

(declare-fun m!7916216 () Bool)

(assert (=> b!7241665 m!7916216))

(declare-fun m!7916218 () Bool)

(assert (=> b!7241665 m!7916218))

(declare-fun m!7916220 () Bool)

(assert (=> b!7241665 m!7916220))

(assert (=> b!7241665 m!7916220))

(declare-fun m!7916222 () Bool)

(assert (=> b!7241665 m!7916222))

(declare-fun m!7916224 () Bool)

(assert (=> b!7241665 m!7916224))

(declare-fun m!7916226 () Bool)

(assert (=> b!7241657 m!7916226))

(declare-fun m!7916228 () Bool)

(assert (=> b!7241663 m!7916228))

(assert (=> b!7241663 m!7916228))

(declare-fun m!7916230 () Bool)

(assert (=> b!7241663 m!7916230))

(declare-fun m!7916232 () Bool)

(assert (=> b!7241661 m!7916232))

(assert (=> b!7241661 m!7916216))

(push 1)

(assert (not b!7241661))

(assert (not b!7241663))

(assert (not b!7241660))

(assert (not b!7241658))

(assert (not b!7241664))

(assert (not b!7241662))

(assert (not b!7241665))

(assert (not b!7241656))

(assert (not start!703696))

(assert tp_is_empty!46585)

(assert (not b!7241657))

(assert (not b!7241659))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2249957 () Bool)

(declare-fun c!1344884 () Bool)

(declare-fun isEmpty!40429 (List!70286) Bool)

(assert (=> d!2249957 (= c!1344884 (isEmpty!40429 s1!1971))))

(declare-fun e!4341780 () Bool)

(assert (=> d!2249957 (= (matchZipper!3470 lt!2580223 s1!1971) e!4341780)))

(declare-fun b!7241700 () Bool)

(assert (=> b!7241700 (= e!4341780 (nullableZipper!2854 lt!2580223))))

(declare-fun b!7241701 () Bool)

(declare-fun derivationStepZipper!3350 ((Set Context!15000) C!37394) (Set Context!15000))

(declare-fun head!14841 (List!70286) C!37394)

(declare-fun tail!14224 (List!70286) List!70286)

(assert (=> b!7241701 (= e!4341780 (matchZipper!3470 (derivationStepZipper!3350 lt!2580223 (head!14841 s1!1971)) (tail!14224 s1!1971)))))

(assert (= (and d!2249957 c!1344884) b!7241700))

(assert (= (and d!2249957 (not c!1344884)) b!7241701))

(declare-fun m!7916264 () Bool)

(assert (=> d!2249957 m!7916264))

(assert (=> b!7241700 m!7916226))

(declare-fun m!7916266 () Bool)

(assert (=> b!7241701 m!7916266))

(assert (=> b!7241701 m!7916266))

(declare-fun m!7916268 () Bool)

(assert (=> b!7241701 m!7916268))

(declare-fun m!7916270 () Bool)

(assert (=> b!7241701 m!7916270))

(assert (=> b!7241701 m!7916268))

(assert (=> b!7241701 m!7916270))

(declare-fun m!7916272 () Bool)

(assert (=> b!7241701 m!7916272))

(assert (=> start!703696 d!2249957))

(declare-fun bs!1904258 () Bool)

(declare-fun d!2249961 () Bool)

(assert (= bs!1904258 (and d!2249961 b!7241661)))

(declare-fun lambda!442073 () Int)

(assert (=> bs!1904258 (= lambda!442073 lambda!442057)))

(assert (=> d!2249961 (= (inv!89411 ct1!232) (forall!17401 (exprs!8000 ct1!232) lambda!442073))))

(declare-fun bs!1904259 () Bool)

(assert (= bs!1904259 d!2249961))

(declare-fun m!7916274 () Bool)

(assert (=> bs!1904259 m!7916274))

(assert (=> start!703696 d!2249961))

(declare-fun bs!1904260 () Bool)

(declare-fun d!2249963 () Bool)

(assert (= bs!1904260 (and d!2249963 b!7241661)))

(declare-fun lambda!442074 () Int)

(assert (=> bs!1904260 (= lambda!442074 lambda!442057)))

(declare-fun bs!1904261 () Bool)

(assert (= bs!1904261 (and d!2249963 d!2249961)))

(assert (=> bs!1904261 (= lambda!442074 lambda!442073)))

(assert (=> d!2249963 (= (inv!89411 ct2!328) (forall!17401 (exprs!8000 ct2!328) lambda!442074))))

(declare-fun bs!1904263 () Bool)

(assert (= bs!1904263 d!2249963))

(declare-fun m!7916276 () Bool)

(assert (=> bs!1904263 m!7916276))

(assert (=> start!703696 d!2249963))

(declare-fun d!2249965 () Bool)

(declare-fun c!1344887 () Bool)

(assert (=> d!2249965 (= c!1344887 (isEmpty!40429 s2!1849))))

(declare-fun e!4341781 () Bool)

(assert (=> d!2249965 (= (matchZipper!3470 (set.insert ct2!328 (as set.empty (Set Context!15000))) s2!1849) e!4341781)))

(declare-fun b!7241702 () Bool)

(assert (=> b!7241702 (= e!4341781 (nullableZipper!2854 (set.insert ct2!328 (as set.empty (Set Context!15000)))))))

(declare-fun b!7241703 () Bool)

(assert (=> b!7241703 (= e!4341781 (matchZipper!3470 (derivationStepZipper!3350 (set.insert ct2!328 (as set.empty (Set Context!15000))) (head!14841 s2!1849)) (tail!14224 s2!1849)))))

(assert (= (and d!2249965 c!1344887) b!7241702))

(assert (= (and d!2249965 (not c!1344887)) b!7241703))

(declare-fun m!7916278 () Bool)

(assert (=> d!2249965 m!7916278))

(assert (=> b!7241702 m!7916228))

(declare-fun m!7916280 () Bool)

(assert (=> b!7241702 m!7916280))

(declare-fun m!7916284 () Bool)

(assert (=> b!7241703 m!7916284))

(assert (=> b!7241703 m!7916228))

(assert (=> b!7241703 m!7916284))

(declare-fun m!7916286 () Bool)

(assert (=> b!7241703 m!7916286))

(declare-fun m!7916288 () Bool)

(assert (=> b!7241703 m!7916288))

(assert (=> b!7241703 m!7916286))

(assert (=> b!7241703 m!7916288))

(declare-fun m!7916290 () Bool)

(assert (=> b!7241703 m!7916290))

(assert (=> b!7241663 d!2249965))

(declare-fun bs!1904265 () Bool)

(declare-fun d!2249969 () Bool)

(assert (= bs!1904265 (and d!2249969 b!7241660)))

(declare-fun lambda!442078 () Int)

(assert (=> bs!1904265 (= lambda!442078 lambda!442058)))

(declare-fun exists!4258 ((Set Context!15000) Int) Bool)

(assert (=> d!2249969 (= (nullableZipper!2854 lt!2580223) (exists!4258 lt!2580223 lambda!442078))))

(declare-fun bs!1904266 () Bool)

(assert (= bs!1904266 d!2249969))

(declare-fun m!7916292 () Bool)

(assert (=> bs!1904266 m!7916292))

(assert (=> b!7241657 d!2249969))

(declare-fun d!2249971 () Bool)

(declare-fun e!4341784 () Bool)

(assert (=> d!2249971 e!4341784))

(declare-fun res!2937687 () Bool)

(assert (=> d!2249971 (=> (not res!2937687) (not e!4341784))))

(declare-fun lt!2580241 () Context!15000)

(declare-fun dynLambda!28642 (Int Context!15000) Bool)

(assert (=> d!2249971 (= res!2937687 (dynLambda!28642 lambda!442058 lt!2580241))))

(declare-datatypes ((List!70289 0))(
  ( (Nil!70165) (Cons!70165 (h!76613 Context!15000) (t!384340 List!70289)) )
))
(declare-fun getWitness!2112 (List!70289 Int) Context!15000)

(declare-fun toList!11414 ((Set Context!15000)) List!70289)

(assert (=> d!2249971 (= lt!2580241 (getWitness!2112 (toList!11414 lt!2580223) lambda!442058))))

(assert (=> d!2249971 (exists!4258 lt!2580223 lambda!442058)))

(assert (=> d!2249971 (= (getWitness!2110 lt!2580223 lambda!442058) lt!2580241)))

(declare-fun b!7241706 () Bool)

(assert (=> b!7241706 (= e!4341784 (set.member lt!2580241 lt!2580223))))

(assert (= (and d!2249971 res!2937687) b!7241706))

(declare-fun b_lambda!277831 () Bool)

(assert (=> (not b_lambda!277831) (not d!2249971)))

(declare-fun m!7916294 () Bool)

(assert (=> d!2249971 m!7916294))

(declare-fun m!7916296 () Bool)

(assert (=> d!2249971 m!7916296))

(assert (=> d!2249971 m!7916296))

(declare-fun m!7916298 () Bool)

(assert (=> d!2249971 m!7916298))

(declare-fun m!7916300 () Bool)

(assert (=> d!2249971 m!7916300))

(declare-fun m!7916302 () Bool)

(assert (=> b!7241706 m!7916302))

(assert (=> b!7241660 d!2249971))

(declare-fun d!2249973 () Bool)

(declare-fun res!2937692 () Bool)

(declare-fun e!4341791 () Bool)

(assert (=> d!2249973 (=> res!2937692 e!4341791)))

(assert (=> d!2249973 (= res!2937692 (is-Nil!70161 (exprs!8000 ct1!232)))))

(assert (=> d!2249973 (= (forall!17401 (exprs!8000 ct1!232) lambda!442057) e!4341791)))

(declare-fun b!7241715 () Bool)

(declare-fun e!4341792 () Bool)

(assert (=> b!7241715 (= e!4341791 e!4341792)))

(declare-fun res!2937693 () Bool)

(assert (=> b!7241715 (=> (not res!2937693) (not e!4341792))))

(declare-fun dynLambda!28643 (Int Regex!18560) Bool)

(assert (=> b!7241715 (= res!2937693 (dynLambda!28643 lambda!442057 (h!76609 (exprs!8000 ct1!232))))))

(declare-fun b!7241716 () Bool)

(assert (=> b!7241716 (= e!4341792 (forall!17401 (t!384336 (exprs!8000 ct1!232)) lambda!442057))))

(assert (= (and d!2249973 (not res!2937692)) b!7241715))

(assert (= (and b!7241715 res!2937693) b!7241716))

(declare-fun b_lambda!277833 () Bool)

(assert (=> (not b_lambda!277833) (not b!7241715)))

(declare-fun m!7916304 () Bool)

(assert (=> b!7241715 m!7916304))

(declare-fun m!7916306 () Bool)

(assert (=> b!7241716 m!7916306))

(assert (=> b!7241665 d!2249973))

(declare-fun d!2249975 () Bool)

(declare-fun c!1344892 () Bool)

(assert (=> d!2249975 (= c!1344892 (isEmpty!40429 s2!1849))))

(declare-fun e!4341793 () Bool)

(assert (=> d!2249975 (= (matchZipper!3470 (set.insert (Context!15001 lt!2580219) (as set.empty (Set Context!15000))) s2!1849) e!4341793)))

(declare-fun b!7241717 () Bool)

(assert (=> b!7241717 (= e!4341793 (nullableZipper!2854 (set.insert (Context!15001 lt!2580219) (as set.empty (Set Context!15000)))))))

(declare-fun b!7241718 () Bool)

(assert (=> b!7241718 (= e!4341793 (matchZipper!3470 (derivationStepZipper!3350 (set.insert (Context!15001 lt!2580219) (as set.empty (Set Context!15000))) (head!14841 s2!1849)) (tail!14224 s2!1849)))))

(assert (= (and d!2249975 c!1344892) b!7241717))

(assert (= (and d!2249975 (not c!1344892)) b!7241718))

(assert (=> d!2249975 m!7916278))

(assert (=> b!7241717 m!7916220))

(declare-fun m!7916308 () Bool)

(assert (=> b!7241717 m!7916308))

(assert (=> b!7241718 m!7916284))

(assert (=> b!7241718 m!7916220))

(assert (=> b!7241718 m!7916284))

(declare-fun m!7916310 () Bool)

(assert (=> b!7241718 m!7916310))

(assert (=> b!7241718 m!7916288))

(assert (=> b!7241718 m!7916310))

(assert (=> b!7241718 m!7916288))

(declare-fun m!7916312 () Bool)

(assert (=> b!7241718 m!7916312))

(assert (=> b!7241665 d!2249975))

(declare-fun d!2249977 () Bool)

(assert (=> d!2249977 (forall!17401 (++!16416 (exprs!8000 ct1!232) (exprs!8000 ct2!328)) lambda!442057)))

(declare-fun lt!2580244 () Unit!163706)

(declare-fun choose!55790 (List!70285 List!70285 Int) Unit!163706)

(assert (=> d!2249977 (= lt!2580244 (choose!55790 (exprs!8000 ct1!232) (exprs!8000 ct2!328) lambda!442057))))

(assert (=> d!2249977 (forall!17401 (exprs!8000 ct1!232) lambda!442057)))

(assert (=> d!2249977 (= (lemmaConcatPreservesForall!1369 (exprs!8000 ct1!232) (exprs!8000 ct2!328) lambda!442057) lt!2580244)))

(declare-fun bs!1904267 () Bool)

(assert (= bs!1904267 d!2249977))

(assert (=> bs!1904267 m!7916232))

(assert (=> bs!1904267 m!7916232))

(declare-fun m!7916324 () Bool)

(assert (=> bs!1904267 m!7916324))

(declare-fun m!7916326 () Bool)

(assert (=> bs!1904267 m!7916326))

(assert (=> bs!1904267 m!7916224))

(assert (=> b!7241665 d!2249977))

(declare-fun bs!1904273 () Bool)

(declare-fun d!2249981 () Bool)

(assert (= bs!1904273 (and d!2249981 b!7241661)))

(declare-fun lambda!442085 () Int)

(assert (=> bs!1904273 (= lambda!442085 lambda!442057)))

(declare-fun bs!1904274 () Bool)

(assert (= bs!1904274 (and d!2249981 d!2249961)))

(assert (=> bs!1904274 (= lambda!442085 lambda!442073)))

(declare-fun bs!1904275 () Bool)

(assert (= bs!1904275 (and d!2249981 d!2249963)))

(assert (=> bs!1904275 (= lambda!442085 lambda!442074)))

(assert (=> d!2249981 (matchZipper!3470 (set.insert (Context!15001 (++!16416 (exprs!8000 ct1!232) (exprs!8000 ct2!328))) (as set.empty (Set Context!15000))) s2!1849)))

(declare-fun lt!2580250 () Unit!163706)

(assert (=> d!2249981 (= lt!2580250 (lemmaConcatPreservesForall!1369 (exprs!8000 ct1!232) (exprs!8000 ct2!328) lambda!442085))))

(declare-fun lt!2580249 () Unit!163706)

(declare-fun choose!55791 (Context!15000 Context!15000 List!70286) Unit!163706)

(assert (=> d!2249981 (= lt!2580249 (choose!55791 ct1!232 ct2!328 s2!1849))))

(assert (=> d!2249981 (matchZipper!3470 (set.insert ct2!328 (as set.empty (Set Context!15000))) s2!1849)))

(assert (=> d!2249981 (= (lemmaPrependingNullableCtxStillMatches!1 ct1!232 ct2!328 s2!1849) lt!2580249)))

(declare-fun bs!1904276 () Bool)

(assert (= bs!1904276 d!2249981))

(declare-fun m!7916332 () Bool)

(assert (=> bs!1904276 m!7916332))

(declare-fun m!7916334 () Bool)

(assert (=> bs!1904276 m!7916334))

(assert (=> bs!1904276 m!7916232))

(declare-fun m!7916336 () Bool)

(assert (=> bs!1904276 m!7916336))

(assert (=> bs!1904276 m!7916332))

(assert (=> bs!1904276 m!7916228))

(assert (=> bs!1904276 m!7916228))

(assert (=> bs!1904276 m!7916230))

(declare-fun m!7916338 () Bool)

(assert (=> bs!1904276 m!7916338))

(assert (=> b!7241665 d!2249981))

(declare-fun bs!1904277 () Bool)

(declare-fun d!2249987 () Bool)

(assert (= bs!1904277 (and d!2249987 b!7241661)))

(declare-fun lambda!442088 () Int)

(assert (=> bs!1904277 (not (= lambda!442088 lambda!442057))))

(declare-fun bs!1904278 () Bool)

(assert (= bs!1904278 (and d!2249987 d!2249961)))

(assert (=> bs!1904278 (not (= lambda!442088 lambda!442073))))

(declare-fun bs!1904279 () Bool)

(assert (= bs!1904279 (and d!2249987 d!2249963)))

(assert (=> bs!1904279 (not (= lambda!442088 lambda!442074))))

(declare-fun bs!1904280 () Bool)

(assert (= bs!1904280 (and d!2249987 d!2249981)))

(assert (=> bs!1904280 (not (= lambda!442088 lambda!442085))))

(assert (=> d!2249987 (= (nullableContext!215 ct1!232) (forall!17401 (exprs!8000 ct1!232) lambda!442088))))

(declare-fun bs!1904281 () Bool)

(assert (= bs!1904281 d!2249987))

(declare-fun m!7916340 () Bool)

(assert (=> bs!1904281 m!7916340))

(assert (=> b!7241656 d!2249987))

(declare-fun b!7241733 () Bool)

(declare-fun e!4341803 () List!70285)

(assert (=> b!7241733 (= e!4341803 (Cons!70161 (h!76609 (exprs!8000 ct1!232)) (++!16416 (t!384336 (exprs!8000 ct1!232)) (exprs!8000 ct2!328))))))

(declare-fun d!2249989 () Bool)

(declare-fun e!4341802 () Bool)

(assert (=> d!2249989 e!4341802))

(declare-fun res!2937702 () Bool)

(assert (=> d!2249989 (=> (not res!2937702) (not e!4341802))))

(declare-fun lt!2580256 () List!70285)

(declare-fun content!14493 (List!70285) (Set Regex!18560))

(assert (=> d!2249989 (= res!2937702 (= (content!14493 lt!2580256) (set.union (content!14493 (exprs!8000 ct1!232)) (content!14493 (exprs!8000 ct2!328)))))))

(assert (=> d!2249989 (= lt!2580256 e!4341803)))

(declare-fun c!1344897 () Bool)

(assert (=> d!2249989 (= c!1344897 (is-Nil!70161 (exprs!8000 ct1!232)))))

(assert (=> d!2249989 (= (++!16416 (exprs!8000 ct1!232) (exprs!8000 ct2!328)) lt!2580256)))

(declare-fun b!7241734 () Bool)

(declare-fun res!2937701 () Bool)

(assert (=> b!7241734 (=> (not res!2937701) (not e!4341802))))

(declare-fun size!41629 (List!70285) Int)

(assert (=> b!7241734 (= res!2937701 (= (size!41629 lt!2580256) (+ (size!41629 (exprs!8000 ct1!232)) (size!41629 (exprs!8000 ct2!328)))))))

(declare-fun b!7241735 () Bool)

(assert (=> b!7241735 (= e!4341802 (or (not (= (exprs!8000 ct2!328) Nil!70161)) (= lt!2580256 (exprs!8000 ct1!232))))))

(declare-fun b!7241732 () Bool)

(assert (=> b!7241732 (= e!4341803 (exprs!8000 ct2!328))))

(assert (= (and d!2249989 c!1344897) b!7241732))

(assert (= (and d!2249989 (not c!1344897)) b!7241733))

(assert (= (and d!2249989 res!2937702) b!7241734))

(assert (= (and b!7241734 res!2937701) b!7241735))

(declare-fun m!7916352 () Bool)

(assert (=> b!7241733 m!7916352))

(declare-fun m!7916354 () Bool)

(assert (=> d!2249989 m!7916354))

(declare-fun m!7916356 () Bool)

(assert (=> d!2249989 m!7916356))

(declare-fun m!7916358 () Bool)

(assert (=> d!2249989 m!7916358))

(declare-fun m!7916360 () Bool)

(assert (=> b!7241734 m!7916360))

(declare-fun m!7916362 () Bool)

(assert (=> b!7241734 m!7916362))

(declare-fun m!7916364 () Bool)

(assert (=> b!7241734 m!7916364))

(assert (=> b!7241661 d!2249989))

(assert (=> b!7241661 d!2249977))

(declare-fun b!7241740 () Bool)

(declare-fun e!4341806 () Bool)

(declare-fun tp!2035371 () Bool)

(assert (=> b!7241740 (= e!4341806 (and tp_is_empty!46585 tp!2035371))))

(assert (=> b!7241658 (= tp!2035356 e!4341806)))

(assert (= (and b!7241658 (is-Cons!70162 (t!384337 s2!1849))) b!7241740))

(declare-fun b!7241745 () Bool)

(declare-fun e!4341809 () Bool)

(declare-fun tp!2035376 () Bool)

(declare-fun tp!2035377 () Bool)

(assert (=> b!7241745 (= e!4341809 (and tp!2035376 tp!2035377))))

(assert (=> b!7241659 (= tp!2035354 e!4341809)))

(assert (= (and b!7241659 (is-Cons!70161 (exprs!8000 ct2!328))) b!7241745))

(declare-fun b!7241746 () Bool)

(declare-fun e!4341810 () Bool)

(declare-fun tp!2035378 () Bool)

(assert (=> b!7241746 (= e!4341810 (and tp_is_empty!46585 tp!2035378))))

(assert (=> b!7241664 (= tp!2035353 e!4341810)))

(assert (= (and b!7241664 (is-Cons!70162 (t!384337 s1!1971))) b!7241746))

(declare-fun b!7241747 () Bool)

(declare-fun e!4341811 () Bool)

(declare-fun tp!2035379 () Bool)

(declare-fun tp!2035380 () Bool)

(assert (=> b!7241747 (= e!4341811 (and tp!2035379 tp!2035380))))

(assert (=> b!7241662 (= tp!2035355 e!4341811)))

(assert (= (and b!7241662 (is-Cons!70161 (exprs!8000 ct1!232))) b!7241747))

(declare-fun b_lambda!277837 () Bool)

(assert (= b_lambda!277831 (or b!7241660 b_lambda!277837)))

(declare-fun bs!1904282 () Bool)

(declare-fun d!2249993 () Bool)

(assert (= bs!1904282 (and d!2249993 b!7241660)))

(assert (=> bs!1904282 (= (dynLambda!28642 lambda!442058 lt!2580241) (nullableContext!215 lt!2580241))))

(declare-fun m!7916366 () Bool)

(assert (=> bs!1904282 m!7916366))

(assert (=> d!2249971 d!2249993))

(declare-fun b_lambda!277839 () Bool)

(assert (= b_lambda!277833 (or b!7241661 b_lambda!277839)))

(declare-fun bs!1904283 () Bool)

(declare-fun d!2249995 () Bool)

(assert (= bs!1904283 (and d!2249995 b!7241661)))

(declare-fun validRegex!9533 (Regex!18560) Bool)

(assert (=> bs!1904283 (= (dynLambda!28643 lambda!442057 (h!76609 (exprs!8000 ct1!232))) (validRegex!9533 (h!76609 (exprs!8000 ct1!232))))))

(declare-fun m!7916368 () Bool)

(assert (=> bs!1904283 m!7916368))

(assert (=> b!7241715 d!2249995))

(push 1)

(assert (not b!7241716))

(assert (not b!7241717))

(assert (not b!7241740))

(assert (not d!2249989))

(assert (not b!7241718))

(assert (not b!7241734))

(assert (not d!2249965))

(assert (not d!2249975))

(assert (not d!2249961))

(assert (not d!2249971))

(assert (not b!7241746))

(assert (not b!7241703))

(assert (not d!2249977))

(assert (not bs!1904283))

(assert (not b!7241702))

(assert (not b!7241745))

(assert (not b!7241747))

(assert (not b!7241733))

(assert (not d!2249981))

(assert (not d!2249987))

(assert (not b!7241701))

(assert (not b_lambda!277839))

(assert (not bs!1904282))

(assert (not d!2249963))

(assert (not d!2249957))

(assert (not b_lambda!277837))

(assert tp_is_empty!46585)

(assert (not d!2249969))

(assert (not b!7241700))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

