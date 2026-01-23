; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!677092 () Bool)

(assert start!677092)

(declare-fun b!7020828 () Bool)

(assert (=> b!7020828 true))

(declare-fun b!7020829 () Bool)

(assert (=> b!7020829 true))

(declare-fun b!7020822 () Bool)

(assert (=> b!7020822 true))

(declare-fun bs!1867517 () Bool)

(declare-fun b!7020832 () Bool)

(assert (= bs!1867517 (and b!7020832 b!7020828)))

(declare-datatypes ((C!35046 0))(
  ( (C!35047 (val!27225 Int)) )
))
(declare-datatypes ((List!67709 0))(
  ( (Nil!67585) (Cons!67585 (h!74033 C!35046) (t!381464 List!67709)) )
))
(declare-fun s!7408 () List!67709)

(declare-fun lambda!411348 () Int)

(declare-fun lambda!411344 () Int)

(assert (=> bs!1867517 (= (= Nil!67585 s!7408) (= lambda!411348 lambda!411344))))

(declare-fun e!4220374 () Bool)

(declare-fun e!4220365 () Bool)

(assert (=> b!7020822 (= e!4220374 e!4220365)))

(declare-fun res!2865820 () Bool)

(assert (=> b!7020822 (=> res!2865820 e!4220365)))

(declare-datatypes ((Regex!17388 0))(
  ( (ElementMatch!17388 (c!1304785 C!35046)) (Concat!26233 (regOne!35288 Regex!17388) (regTwo!35288 Regex!17388)) (EmptyExpr!17388) (Star!17388 (reg!17717 Regex!17388)) (EmptyLang!17388) (Union!17388 (regOne!35289 Regex!17388) (regTwo!35289 Regex!17388)) )
))
(declare-datatypes ((List!67710 0))(
  ( (Nil!67586) (Cons!67586 (h!74034 Regex!17388) (t!381465 List!67710)) )
))
(declare-datatypes ((Context!12768 0))(
  ( (Context!12769 (exprs!6884 List!67710)) )
))
(declare-fun lt!2511859 () (Set Context!12768))

(declare-fun lt!2511863 () (Set Context!12768))

(declare-fun derivationStepZipper!2868 ((Set Context!12768) C!35046) (Set Context!12768))

(assert (=> b!7020822 (= res!2865820 (not (= (derivationStepZipper!2868 lt!2511859 (h!74033 s!7408)) lt!2511863)))))

(declare-fun lambda!411347 () Int)

(declare-fun lt!2511853 () Context!12768)

(declare-fun flatMap!2374 ((Set Context!12768) Int) (Set Context!12768))

(declare-fun derivationStepZipperUp!2038 (Context!12768 C!35046) (Set Context!12768))

(assert (=> b!7020822 (= (flatMap!2374 lt!2511859 lambda!411347) (derivationStepZipperUp!2038 lt!2511853 (h!74033 s!7408)))))

(declare-datatypes ((Unit!161458 0))(
  ( (Unit!161459) )
))
(declare-fun lt!2511857 () Unit!161458)

(declare-fun lemmaFlatMapOnSingletonSet!1889 ((Set Context!12768) Context!12768 Int) Unit!161458)

(assert (=> b!7020822 (= lt!2511857 (lemmaFlatMapOnSingletonSet!1889 lt!2511859 lt!2511853 lambda!411347))))

(assert (=> b!7020822 (= lt!2511863 (derivationStepZipperUp!2038 lt!2511853 (h!74033 s!7408)))))

(declare-fun lt!2511850 () Unit!161458)

(declare-fun lambda!411346 () Int)

(declare-fun lt!2511865 () Context!12768)

(declare-fun ct2!306 () Context!12768)

(declare-fun lemmaConcatPreservesForall!724 (List!67710 List!67710 Int) Unit!161458)

(assert (=> b!7020822 (= lt!2511850 (lemmaConcatPreservesForall!724 (exprs!6884 lt!2511865) (exprs!6884 ct2!306) lambda!411346))))

(declare-fun b!7020823 () Bool)

(declare-fun e!4220370 () Bool)

(declare-fun e!4220375 () Bool)

(assert (=> b!7020823 (= e!4220370 e!4220375)))

(declare-fun res!2865819 () Bool)

(assert (=> b!7020823 (=> res!2865819 e!4220375)))

(declare-fun lt!2511852 () Bool)

(assert (=> b!7020823 (= res!2865819 (not lt!2511852))))

(assert (=> b!7020823 (= lt!2511852 true)))

(declare-fun lt!2511845 () (Set Context!12768))

(declare-fun matchZipper!2928 ((Set Context!12768) List!67709) Bool)

(assert (=> b!7020823 (= lt!2511852 (matchZipper!2928 lt!2511845 Nil!67585))))

(declare-fun lt!2511855 () Unit!161458)

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!19 ((Set Context!12768) List!67709) Unit!161458)

(assert (=> b!7020823 (= lt!2511855 (lemmaZipperOfEmptyContextMatchesEmptyString!19 lt!2511845 Nil!67585))))

(assert (=> b!7020823 (= lt!2511845 (set.insert lt!2511865 (as set.empty (Set Context!12768))))))

(declare-fun b!7020824 () Bool)

(declare-fun e!4220371 () Bool)

(declare-fun tp!1934001 () Bool)

(assert (=> b!7020824 (= e!4220371 tp!1934001)))

(declare-fun setIsEmpty!48693 () Bool)

(declare-fun setRes!48693 () Bool)

(assert (=> setIsEmpty!48693 setRes!48693))

(declare-fun b!7020825 () Bool)

(declare-fun e!4220368 () Bool)

(declare-fun tp!1933999 () Bool)

(assert (=> b!7020825 (= e!4220368 tp!1933999)))

(declare-fun b!7020826 () Bool)

(declare-fun e!4220372 () Bool)

(declare-fun ++!15430 (List!67709 List!67709) List!67709)

(assert (=> b!7020826 (= e!4220372 (= (++!15430 Nil!67585 s!7408) s!7408))))

(declare-fun b!7020827 () Bool)

(declare-fun e!4220366 () Bool)

(assert (=> b!7020827 (= e!4220366 e!4220370)))

(declare-fun res!2865822 () Bool)

(assert (=> b!7020827 (=> res!2865822 e!4220370)))

(declare-fun lt!2511847 () (Set Context!12768))

(assert (=> b!7020827 (= res!2865822 (not (matchZipper!2928 lt!2511847 s!7408)))))

(assert (=> b!7020827 (= lt!2511847 (set.insert ct2!306 (as set.empty (Set Context!12768))))))

(declare-fun e!4220376 () Bool)

(declare-fun e!4220373 () Bool)

(assert (=> b!7020828 (= e!4220376 (not e!4220373))))

(declare-fun res!2865823 () Bool)

(assert (=> b!7020828 (=> res!2865823 e!4220373)))

(declare-fun lt!2511858 () (Set Context!12768))

(assert (=> b!7020828 (= res!2865823 (not (matchZipper!2928 lt!2511858 s!7408)))))

(declare-fun lt!2511861 () Context!12768)

(assert (=> b!7020828 (= lt!2511858 (set.insert lt!2511861 (as set.empty (Set Context!12768))))))

(declare-fun lt!2511849 () (Set Context!12768))

(declare-fun getWitness!1358 ((Set Context!12768) Int) Context!12768)

(assert (=> b!7020828 (= lt!2511861 (getWitness!1358 lt!2511849 lambda!411344))))

(declare-datatypes ((List!67711 0))(
  ( (Nil!67587) (Cons!67587 (h!74035 Context!12768) (t!381466 List!67711)) )
))
(declare-fun lt!2511854 () List!67711)

(declare-fun exists!3272 (List!67711 Int) Bool)

(assert (=> b!7020828 (exists!3272 lt!2511854 lambda!411344)))

(declare-fun lt!2511848 () Unit!161458)

(declare-fun lemmaZipperMatchesExistsMatchingContext!357 (List!67711 List!67709) Unit!161458)

(assert (=> b!7020828 (= lt!2511848 (lemmaZipperMatchesExistsMatchingContext!357 lt!2511854 s!7408))))

(declare-fun toList!10748 ((Set Context!12768)) List!67711)

(assert (=> b!7020828 (= lt!2511854 (toList!10748 lt!2511849))))

(declare-fun setNonEmpty!48693 () Bool)

(declare-fun tp!1933998 () Bool)

(declare-fun setElem!48693 () Context!12768)

(declare-fun inv!86330 (Context!12768) Bool)

(assert (=> setNonEmpty!48693 (= setRes!48693 (and tp!1933998 (inv!86330 setElem!48693) e!4220368))))

(declare-fun z1!570 () (Set Context!12768))

(declare-fun setRest!48693 () (Set Context!12768))

(assert (=> setNonEmpty!48693 (= z1!570 (set.union (set.insert setElem!48693 (as set.empty (Set Context!12768))) setRest!48693))))

(declare-fun b!7020830 () Bool)

(declare-fun res!2865818 () Bool)

(assert (=> b!7020830 (=> res!2865818 e!4220365)))

(assert (=> b!7020830 (= res!2865818 (is-Cons!67586 (exprs!6884 lt!2511865)))))

(declare-fun b!7020831 () Bool)

(declare-fun e!4220369 () Bool)

(declare-fun tp_is_empty!44001 () Bool)

(declare-fun tp!1934000 () Bool)

(assert (=> b!7020831 (= e!4220369 (and tp_is_empty!44001 tp!1934000))))

(assert (=> b!7020832 (= e!4220375 e!4220372)))

(declare-fun res!2865826 () Bool)

(assert (=> b!7020832 (=> res!2865826 e!4220372)))

(declare-datatypes ((tuple2!68042 0))(
  ( (tuple2!68043 (_1!37324 List!67709) (_2!37324 List!67709)) )
))
(declare-datatypes ((Option!16853 0))(
  ( (None!16852) (Some!16852 (v!53130 tuple2!68042)) )
))
(declare-fun isDefined!13554 (Option!16853) Bool)

(declare-fun findConcatSeparationZippers!369 ((Set Context!12768) (Set Context!12768) List!67709 List!67709 List!67709) Option!16853)

(assert (=> b!7020832 (= res!2865826 (not (isDefined!13554 (findConcatSeparationZippers!369 z1!570 lt!2511847 Nil!67585 s!7408 s!7408))))))

(declare-fun lt!2511846 () List!67711)

(declare-fun content!13459 (List!67711) (Set Context!12768))

(assert (=> b!7020832 (matchZipper!2928 (content!13459 lt!2511846) Nil!67585)))

(declare-fun lt!2511864 () Unit!161458)

(declare-fun lemmaExistsMatchingContextThenMatchingString!37 (List!67711 List!67709) Unit!161458)

(assert (=> b!7020832 (= lt!2511864 (lemmaExistsMatchingContextThenMatchingString!37 lt!2511846 Nil!67585))))

(assert (=> b!7020832 (= lt!2511846 (toList!10748 z1!570))))

(declare-fun exists!3273 ((Set Context!12768) Int) Bool)

(assert (=> b!7020832 (exists!3273 z1!570 lambda!411348)))

(declare-fun lt!2511866 () Unit!161458)

(declare-fun lemmaContainsThenExists!110 ((Set Context!12768) Context!12768 Int) Unit!161458)

(assert (=> b!7020832 (= lt!2511866 (lemmaContainsThenExists!110 z1!570 lt!2511865 lambda!411348))))

(assert (=> b!7020832 (isDefined!13554 (findConcatSeparationZippers!369 lt!2511845 lt!2511847 Nil!67585 s!7408 s!7408))))

(declare-fun lt!2511860 () Unit!161458)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!41 ((Set Context!12768) (Set Context!12768) List!67709 List!67709 List!67709 List!67709 List!67709) Unit!161458)

(assert (=> b!7020832 (= lt!2511860 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!41 lt!2511845 lt!2511847 Nil!67585 s!7408 s!7408 Nil!67585 s!7408))))

(declare-fun b!7020833 () Bool)

(declare-fun res!2865817 () Bool)

(assert (=> b!7020833 (=> (not res!2865817) (not e!4220376))))

(assert (=> b!7020833 (= res!2865817 (is-Cons!67585 s!7408))))

(declare-fun res!2865825 () Bool)

(assert (=> start!677092 (=> (not res!2865825) (not e!4220376))))

(assert (=> start!677092 (= res!2865825 (matchZipper!2928 lt!2511849 s!7408))))

(declare-fun appendTo!509 ((Set Context!12768) Context!12768) (Set Context!12768))

(assert (=> start!677092 (= lt!2511849 (appendTo!509 z1!570 ct2!306))))

(assert (=> start!677092 e!4220376))

(declare-fun condSetEmpty!48693 () Bool)

(assert (=> start!677092 (= condSetEmpty!48693 (= z1!570 (as set.empty (Set Context!12768))))))

(assert (=> start!677092 setRes!48693))

(assert (=> start!677092 (and (inv!86330 ct2!306) e!4220371)))

(assert (=> start!677092 e!4220369))

(declare-fun e!4220367 () Bool)

(assert (=> b!7020829 (= e!4220373 e!4220367)))

(declare-fun res!2865827 () Bool)

(assert (=> b!7020829 (=> res!2865827 e!4220367)))

(assert (=> b!7020829 (= res!2865827 (or (not (= lt!2511853 lt!2511861)) (not (set.member lt!2511865 z1!570))))))

(declare-fun ++!15431 (List!67710 List!67710) List!67710)

(assert (=> b!7020829 (= lt!2511853 (Context!12769 (++!15431 (exprs!6884 lt!2511865) (exprs!6884 ct2!306))))))

(declare-fun lt!2511851 () Unit!161458)

(assert (=> b!7020829 (= lt!2511851 (lemmaConcatPreservesForall!724 (exprs!6884 lt!2511865) (exprs!6884 ct2!306) lambda!411346))))

(declare-fun lambda!411345 () Int)

(declare-fun mapPost2!243 ((Set Context!12768) Int Context!12768) Context!12768)

(assert (=> b!7020829 (= lt!2511865 (mapPost2!243 z1!570 lambda!411345 lt!2511861))))

(declare-fun b!7020834 () Bool)

(declare-fun res!2865816 () Bool)

(assert (=> b!7020834 (=> res!2865816 e!4220373)))

(assert (=> b!7020834 (= res!2865816 (not (set.member lt!2511861 lt!2511849)))))

(declare-fun b!7020835 () Bool)

(assert (=> b!7020835 (= e!4220365 e!4220366)))

(declare-fun res!2865824 () Bool)

(assert (=> b!7020835 (=> res!2865824 e!4220366)))

(assert (=> b!7020835 (= res!2865824 (not (= lt!2511853 ct2!306)))))

(declare-fun lt!2511862 () Unit!161458)

(assert (=> b!7020835 (= lt!2511862 (lemmaConcatPreservesForall!724 (exprs!6884 lt!2511865) (exprs!6884 ct2!306) lambda!411346))))

(declare-fun b!7020836 () Bool)

(assert (=> b!7020836 (= e!4220367 e!4220374)))

(declare-fun res!2865821 () Bool)

(assert (=> b!7020836 (=> res!2865821 e!4220374)))

(assert (=> b!7020836 (= res!2865821 (not (= lt!2511859 lt!2511858)))))

(assert (=> b!7020836 (= lt!2511859 (set.insert lt!2511853 (as set.empty (Set Context!12768))))))

(declare-fun lt!2511856 () Unit!161458)

(assert (=> b!7020836 (= lt!2511856 (lemmaConcatPreservesForall!724 (exprs!6884 lt!2511865) (exprs!6884 ct2!306) lambda!411346))))

(assert (= (and start!677092 res!2865825) b!7020833))

(assert (= (and b!7020833 res!2865817) b!7020828))

(assert (= (and b!7020828 (not res!2865823)) b!7020834))

(assert (= (and b!7020834 (not res!2865816)) b!7020829))

(assert (= (and b!7020829 (not res!2865827)) b!7020836))

(assert (= (and b!7020836 (not res!2865821)) b!7020822))

(assert (= (and b!7020822 (not res!2865820)) b!7020830))

(assert (= (and b!7020830 (not res!2865818)) b!7020835))

(assert (= (and b!7020835 (not res!2865824)) b!7020827))

(assert (= (and b!7020827 (not res!2865822)) b!7020823))

(assert (= (and b!7020823 (not res!2865819)) b!7020832))

(assert (= (and b!7020832 (not res!2865826)) b!7020826))

(assert (= (and start!677092 condSetEmpty!48693) setIsEmpty!48693))

(assert (= (and start!677092 (not condSetEmpty!48693)) setNonEmpty!48693))

(assert (= setNonEmpty!48693 b!7020825))

(assert (= start!677092 b!7020824))

(assert (= (and start!677092 (is-Cons!67585 s!7408)) b!7020831))

(declare-fun m!7722528 () Bool)

(assert (=> b!7020834 m!7722528))

(declare-fun m!7722530 () Bool)

(assert (=> b!7020822 m!7722530))

(declare-fun m!7722532 () Bool)

(assert (=> b!7020822 m!7722532))

(declare-fun m!7722534 () Bool)

(assert (=> b!7020822 m!7722534))

(declare-fun m!7722536 () Bool)

(assert (=> b!7020822 m!7722536))

(declare-fun m!7722538 () Bool)

(assert (=> b!7020822 m!7722538))

(declare-fun m!7722540 () Bool)

(assert (=> b!7020823 m!7722540))

(declare-fun m!7722542 () Bool)

(assert (=> b!7020823 m!7722542))

(declare-fun m!7722544 () Bool)

(assert (=> b!7020823 m!7722544))

(declare-fun m!7722546 () Bool)

(assert (=> b!7020832 m!7722546))

(declare-fun m!7722548 () Bool)

(assert (=> b!7020832 m!7722548))

(declare-fun m!7722550 () Bool)

(assert (=> b!7020832 m!7722550))

(declare-fun m!7722552 () Bool)

(assert (=> b!7020832 m!7722552))

(declare-fun m!7722554 () Bool)

(assert (=> b!7020832 m!7722554))

(declare-fun m!7722556 () Bool)

(assert (=> b!7020832 m!7722556))

(declare-fun m!7722558 () Bool)

(assert (=> b!7020832 m!7722558))

(declare-fun m!7722560 () Bool)

(assert (=> b!7020832 m!7722560))

(assert (=> b!7020832 m!7722554))

(assert (=> b!7020832 m!7722546))

(assert (=> b!7020832 m!7722560))

(declare-fun m!7722562 () Bool)

(assert (=> b!7020832 m!7722562))

(declare-fun m!7722564 () Bool)

(assert (=> b!7020832 m!7722564))

(declare-fun m!7722566 () Bool)

(assert (=> b!7020832 m!7722566))

(declare-fun m!7722568 () Bool)

(assert (=> b!7020827 m!7722568))

(declare-fun m!7722570 () Bool)

(assert (=> b!7020827 m!7722570))

(declare-fun m!7722572 () Bool)

(assert (=> start!677092 m!7722572))

(declare-fun m!7722574 () Bool)

(assert (=> start!677092 m!7722574))

(declare-fun m!7722576 () Bool)

(assert (=> start!677092 m!7722576))

(declare-fun m!7722578 () Bool)

(assert (=> b!7020826 m!7722578))

(declare-fun m!7722580 () Bool)

(assert (=> b!7020828 m!7722580))

(declare-fun m!7722582 () Bool)

(assert (=> b!7020828 m!7722582))

(declare-fun m!7722584 () Bool)

(assert (=> b!7020828 m!7722584))

(declare-fun m!7722586 () Bool)

(assert (=> b!7020828 m!7722586))

(declare-fun m!7722588 () Bool)

(assert (=> b!7020828 m!7722588))

(declare-fun m!7722590 () Bool)

(assert (=> b!7020828 m!7722590))

(declare-fun m!7722592 () Bool)

(assert (=> b!7020836 m!7722592))

(assert (=> b!7020836 m!7722536))

(declare-fun m!7722594 () Bool)

(assert (=> b!7020829 m!7722594))

(declare-fun m!7722596 () Bool)

(assert (=> b!7020829 m!7722596))

(assert (=> b!7020829 m!7722536))

(declare-fun m!7722598 () Bool)

(assert (=> b!7020829 m!7722598))

(declare-fun m!7722600 () Bool)

(assert (=> setNonEmpty!48693 m!7722600))

(assert (=> b!7020835 m!7722536))

(push 1)

(assert (not b!7020832))

(assert (not b!7020836))

(assert (not setNonEmpty!48693))

(assert (not b!7020825))

(assert (not b!7020831))

(assert (not b!7020823))

(assert tp_is_empty!44001)

(assert (not b!7020835))

(assert (not b!7020828))

(assert (not b!7020826))

(assert (not b!7020827))

(assert (not b!7020824))

(assert (not b!7020829))

(assert (not b!7020822))

(assert (not start!677092))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2188436 () Bool)

(declare-fun c!1304799 () Bool)

(declare-fun isEmpty!39454 (List!67709) Bool)

(assert (=> d!2188436 (= c!1304799 (isEmpty!39454 s!7408))))

(declare-fun e!4220415 () Bool)

(assert (=> d!2188436 (= (matchZipper!2928 lt!2511849 s!7408) e!4220415)))

(declare-fun b!7020898 () Bool)

(declare-fun nullableZipper!2519 ((Set Context!12768)) Bool)

(assert (=> b!7020898 (= e!4220415 (nullableZipper!2519 lt!2511849))))

(declare-fun b!7020899 () Bool)

(declare-fun head!14209 (List!67709) C!35046)

(declare-fun tail!13478 (List!67709) List!67709)

(assert (=> b!7020899 (= e!4220415 (matchZipper!2928 (derivationStepZipper!2868 lt!2511849 (head!14209 s!7408)) (tail!13478 s!7408)))))

(assert (= (and d!2188436 c!1304799) b!7020898))

(assert (= (and d!2188436 (not c!1304799)) b!7020899))

(declare-fun m!7722676 () Bool)

(assert (=> d!2188436 m!7722676))

(declare-fun m!7722678 () Bool)

(assert (=> b!7020898 m!7722678))

(declare-fun m!7722680 () Bool)

(assert (=> b!7020899 m!7722680))

(assert (=> b!7020899 m!7722680))

(declare-fun m!7722682 () Bool)

(assert (=> b!7020899 m!7722682))

(declare-fun m!7722684 () Bool)

(assert (=> b!7020899 m!7722684))

(assert (=> b!7020899 m!7722682))

(assert (=> b!7020899 m!7722684))

(declare-fun m!7722686 () Bool)

(assert (=> b!7020899 m!7722686))

(assert (=> start!677092 d!2188436))

(declare-fun bs!1867519 () Bool)

(declare-fun d!2188438 () Bool)

(assert (= bs!1867519 (and d!2188438 b!7020829)))

(declare-fun lambda!411378 () Int)

(assert (=> bs!1867519 (= lambda!411378 lambda!411345)))

(assert (=> d!2188438 true))

(declare-fun map!15678 ((Set Context!12768) Int) (Set Context!12768))

(assert (=> d!2188438 (= (appendTo!509 z1!570 ct2!306) (map!15678 z1!570 lambda!411378))))

(declare-fun bs!1867520 () Bool)

(assert (= bs!1867520 d!2188438))

(declare-fun m!7722688 () Bool)

(assert (=> bs!1867520 m!7722688))

(assert (=> start!677092 d!2188438))

(declare-fun bs!1867521 () Bool)

(declare-fun d!2188440 () Bool)

(assert (= bs!1867521 (and d!2188440 b!7020829)))

(declare-fun lambda!411381 () Int)

(assert (=> bs!1867521 (= lambda!411381 lambda!411346)))

(declare-fun forall!16297 (List!67710 Int) Bool)

(assert (=> d!2188440 (= (inv!86330 ct2!306) (forall!16297 (exprs!6884 ct2!306) lambda!411381))))

(declare-fun bs!1867522 () Bool)

(assert (= bs!1867522 d!2188440))

(declare-fun m!7722690 () Bool)

(assert (=> bs!1867522 m!7722690))

(assert (=> start!677092 d!2188440))

(declare-fun bs!1867523 () Bool)

(declare-fun d!2188442 () Bool)

(assert (= bs!1867523 (and d!2188442 b!7020829)))

(declare-fun lambda!411382 () Int)

(assert (=> bs!1867523 (= lambda!411382 lambda!411346)))

(declare-fun bs!1867524 () Bool)

(assert (= bs!1867524 (and d!2188442 d!2188440)))

(assert (=> bs!1867524 (= lambda!411382 lambda!411381)))

(assert (=> d!2188442 (= (inv!86330 setElem!48693) (forall!16297 (exprs!6884 setElem!48693) lambda!411382))))

(declare-fun bs!1867525 () Bool)

(assert (= bs!1867525 d!2188442))

(declare-fun m!7722692 () Bool)

(assert (=> bs!1867525 m!7722692))

(assert (=> setNonEmpty!48693 d!2188442))

(declare-fun d!2188444 () Bool)

(assert (=> d!2188444 (forall!16297 (++!15431 (exprs!6884 lt!2511865) (exprs!6884 ct2!306)) lambda!411346)))

(declare-fun lt!2511939 () Unit!161458)

(declare-fun choose!52956 (List!67710 List!67710 Int) Unit!161458)

(assert (=> d!2188444 (= lt!2511939 (choose!52956 (exprs!6884 lt!2511865) (exprs!6884 ct2!306) lambda!411346))))

(assert (=> d!2188444 (forall!16297 (exprs!6884 lt!2511865) lambda!411346)))

(assert (=> d!2188444 (= (lemmaConcatPreservesForall!724 (exprs!6884 lt!2511865) (exprs!6884 ct2!306) lambda!411346) lt!2511939)))

(declare-fun bs!1867526 () Bool)

(assert (= bs!1867526 d!2188444))

(assert (=> bs!1867526 m!7722596))

(assert (=> bs!1867526 m!7722596))

(declare-fun m!7722694 () Bool)

(assert (=> bs!1867526 m!7722694))

(declare-fun m!7722696 () Bool)

(assert (=> bs!1867526 m!7722696))

(declare-fun m!7722698 () Bool)

(assert (=> bs!1867526 m!7722698))

(assert (=> b!7020835 d!2188444))

(declare-fun b!7020909 () Bool)

(declare-fun e!4220421 () List!67709)

(assert (=> b!7020909 (= e!4220421 (Cons!67585 (h!74033 Nil!67585) (++!15430 (t!381464 Nil!67585) s!7408)))))

(declare-fun b!7020911 () Bool)

(declare-fun e!4220420 () Bool)

(declare-fun lt!2511942 () List!67709)

(assert (=> b!7020911 (= e!4220420 (or (not (= s!7408 Nil!67585)) (= lt!2511942 Nil!67585)))))

(declare-fun d!2188446 () Bool)

(assert (=> d!2188446 e!4220420))

(declare-fun res!2865870 () Bool)

(assert (=> d!2188446 (=> (not res!2865870) (not e!4220420))))

(declare-fun content!13461 (List!67709) (Set C!35046))

(assert (=> d!2188446 (= res!2865870 (= (content!13461 lt!2511942) (set.union (content!13461 Nil!67585) (content!13461 s!7408))))))

(assert (=> d!2188446 (= lt!2511942 e!4220421)))

(declare-fun c!1304803 () Bool)

(assert (=> d!2188446 (= c!1304803 (is-Nil!67585 Nil!67585))))

(assert (=> d!2188446 (= (++!15430 Nil!67585 s!7408) lt!2511942)))

(declare-fun b!7020910 () Bool)

(declare-fun res!2865869 () Bool)

(assert (=> b!7020910 (=> (not res!2865869) (not e!4220420))))

(declare-fun size!41023 (List!67709) Int)

(assert (=> b!7020910 (= res!2865869 (= (size!41023 lt!2511942) (+ (size!41023 Nil!67585) (size!41023 s!7408))))))

(declare-fun b!7020908 () Bool)

(assert (=> b!7020908 (= e!4220421 s!7408)))

(assert (= (and d!2188446 c!1304803) b!7020908))

(assert (= (and d!2188446 (not c!1304803)) b!7020909))

(assert (= (and d!2188446 res!2865870) b!7020910))

(assert (= (and b!7020910 res!2865869) b!7020911))

(declare-fun m!7722700 () Bool)

(assert (=> b!7020909 m!7722700))

(declare-fun m!7722702 () Bool)

(assert (=> d!2188446 m!7722702))

(declare-fun m!7722704 () Bool)

(assert (=> d!2188446 m!7722704))

(declare-fun m!7722706 () Bool)

(assert (=> d!2188446 m!7722706))

(declare-fun m!7722708 () Bool)

(assert (=> b!7020910 m!7722708))

(declare-fun m!7722710 () Bool)

(assert (=> b!7020910 m!7722710))

(declare-fun m!7722712 () Bool)

(assert (=> b!7020910 m!7722712))

(assert (=> b!7020826 d!2188446))

(declare-fun b!7020922 () Bool)

(declare-fun e!4220428 () Bool)

(declare-fun nullable!7138 (Regex!17388) Bool)

(assert (=> b!7020922 (= e!4220428 (nullable!7138 (h!74034 (exprs!6884 lt!2511853))))))

(declare-fun b!7020923 () Bool)

(declare-fun e!4220429 () (Set Context!12768))

(assert (=> b!7020923 (= e!4220429 (as set.empty (Set Context!12768)))))

(declare-fun b!7020924 () Bool)

(declare-fun e!4220430 () (Set Context!12768))

(assert (=> b!7020924 (= e!4220430 e!4220429)))

(declare-fun c!1304808 () Bool)

(assert (=> b!7020924 (= c!1304808 (is-Cons!67586 (exprs!6884 lt!2511853)))))

(declare-fun call!637625 () (Set Context!12768))

(declare-fun b!7020925 () Bool)

(assert (=> b!7020925 (= e!4220430 (set.union call!637625 (derivationStepZipperUp!2038 (Context!12769 (t!381465 (exprs!6884 lt!2511853))) (h!74033 s!7408))))))

(declare-fun d!2188448 () Bool)

(declare-fun c!1304809 () Bool)

(assert (=> d!2188448 (= c!1304809 e!4220428)))

(declare-fun res!2865873 () Bool)

(assert (=> d!2188448 (=> (not res!2865873) (not e!4220428))))

(assert (=> d!2188448 (= res!2865873 (is-Cons!67586 (exprs!6884 lt!2511853)))))

(assert (=> d!2188448 (= (derivationStepZipperUp!2038 lt!2511853 (h!74033 s!7408)) e!4220430)))

(declare-fun b!7020926 () Bool)

(assert (=> b!7020926 (= e!4220429 call!637625)))

(declare-fun bm!637620 () Bool)

(declare-fun derivationStepZipperDown!2096 (Regex!17388 Context!12768 C!35046) (Set Context!12768))

(assert (=> bm!637620 (= call!637625 (derivationStepZipperDown!2096 (h!74034 (exprs!6884 lt!2511853)) (Context!12769 (t!381465 (exprs!6884 lt!2511853))) (h!74033 s!7408)))))

(assert (= (and d!2188448 res!2865873) b!7020922))

(assert (= (and d!2188448 c!1304809) b!7020925))

(assert (= (and d!2188448 (not c!1304809)) b!7020924))

(assert (= (and b!7020924 c!1304808) b!7020926))

(assert (= (and b!7020924 (not c!1304808)) b!7020923))

(assert (= (or b!7020925 b!7020926) bm!637620))

(declare-fun m!7722714 () Bool)

(assert (=> b!7020922 m!7722714))

(declare-fun m!7722716 () Bool)

(assert (=> b!7020925 m!7722716))

(declare-fun m!7722718 () Bool)

(assert (=> bm!637620 m!7722718))

(assert (=> b!7020822 d!2188448))

(declare-fun d!2188450 () Bool)

(declare-fun dynLambda!27228 (Int Context!12768) (Set Context!12768))

(assert (=> d!2188450 (= (flatMap!2374 lt!2511859 lambda!411347) (dynLambda!27228 lambda!411347 lt!2511853))))

(declare-fun lt!2511945 () Unit!161458)

(declare-fun choose!52957 ((Set Context!12768) Context!12768 Int) Unit!161458)

(assert (=> d!2188450 (= lt!2511945 (choose!52957 lt!2511859 lt!2511853 lambda!411347))))

(assert (=> d!2188450 (= lt!2511859 (set.insert lt!2511853 (as set.empty (Set Context!12768))))))

(assert (=> d!2188450 (= (lemmaFlatMapOnSingletonSet!1889 lt!2511859 lt!2511853 lambda!411347) lt!2511945)))

(declare-fun b_lambda!265067 () Bool)

(assert (=> (not b_lambda!265067) (not d!2188450)))

(declare-fun bs!1867527 () Bool)

(assert (= bs!1867527 d!2188450))

(assert (=> bs!1867527 m!7722534))

(declare-fun m!7722720 () Bool)

(assert (=> bs!1867527 m!7722720))

(declare-fun m!7722722 () Bool)

(assert (=> bs!1867527 m!7722722))

(assert (=> bs!1867527 m!7722592))

(assert (=> b!7020822 d!2188450))

(declare-fun bs!1867528 () Bool)

(declare-fun d!2188452 () Bool)

(assert (= bs!1867528 (and d!2188452 b!7020822)))

(declare-fun lambda!411385 () Int)

(assert (=> bs!1867528 (= lambda!411385 lambda!411347)))

(assert (=> d!2188452 true))

(assert (=> d!2188452 (= (derivationStepZipper!2868 lt!2511859 (h!74033 s!7408)) (flatMap!2374 lt!2511859 lambda!411385))))

(declare-fun bs!1867529 () Bool)

(assert (= bs!1867529 d!2188452))

(declare-fun m!7722724 () Bool)

(assert (=> bs!1867529 m!7722724))

(assert (=> b!7020822 d!2188452))

(assert (=> b!7020822 d!2188444))

(declare-fun d!2188454 () Bool)

(declare-fun choose!52958 ((Set Context!12768) Int) (Set Context!12768))

(assert (=> d!2188454 (= (flatMap!2374 lt!2511859 lambda!411347) (choose!52958 lt!2511859 lambda!411347))))

(declare-fun bs!1867530 () Bool)

(assert (= bs!1867530 d!2188454))

(declare-fun m!7722726 () Bool)

(assert (=> bs!1867530 m!7722726))

(assert (=> b!7020822 d!2188454))

(assert (=> b!7020836 d!2188444))

(declare-fun d!2188456 () Bool)

(declare-fun c!1304812 () Bool)

(assert (=> d!2188456 (= c!1304812 (isEmpty!39454 s!7408))))

(declare-fun e!4220431 () Bool)

(assert (=> d!2188456 (= (matchZipper!2928 lt!2511847 s!7408) e!4220431)))

(declare-fun b!7020929 () Bool)

(assert (=> b!7020929 (= e!4220431 (nullableZipper!2519 lt!2511847))))

(declare-fun b!7020930 () Bool)

(assert (=> b!7020930 (= e!4220431 (matchZipper!2928 (derivationStepZipper!2868 lt!2511847 (head!14209 s!7408)) (tail!13478 s!7408)))))

(assert (= (and d!2188456 c!1304812) b!7020929))

(assert (= (and d!2188456 (not c!1304812)) b!7020930))

(assert (=> d!2188456 m!7722676))

(declare-fun m!7722728 () Bool)

(assert (=> b!7020929 m!7722728))

(assert (=> b!7020930 m!7722680))

(assert (=> b!7020930 m!7722680))

(declare-fun m!7722730 () Bool)

(assert (=> b!7020930 m!7722730))

(assert (=> b!7020930 m!7722684))

(assert (=> b!7020930 m!7722730))

(assert (=> b!7020930 m!7722684))

(declare-fun m!7722732 () Bool)

(assert (=> b!7020930 m!7722732))

(assert (=> b!7020827 d!2188456))

(declare-fun d!2188458 () Bool)

(declare-fun c!1304813 () Bool)

(assert (=> d!2188458 (= c!1304813 (isEmpty!39454 Nil!67585))))

(declare-fun e!4220432 () Bool)

(assert (=> d!2188458 (= (matchZipper!2928 lt!2511845 Nil!67585) e!4220432)))

(declare-fun b!7020931 () Bool)

(assert (=> b!7020931 (= e!4220432 (nullableZipper!2519 lt!2511845))))

(declare-fun b!7020932 () Bool)

(assert (=> b!7020932 (= e!4220432 (matchZipper!2928 (derivationStepZipper!2868 lt!2511845 (head!14209 Nil!67585)) (tail!13478 Nil!67585)))))

(assert (= (and d!2188458 c!1304813) b!7020931))

(assert (= (and d!2188458 (not c!1304813)) b!7020932))

(declare-fun m!7722734 () Bool)

(assert (=> d!2188458 m!7722734))

(declare-fun m!7722736 () Bool)

(assert (=> b!7020931 m!7722736))

(declare-fun m!7722738 () Bool)

(assert (=> b!7020932 m!7722738))

(assert (=> b!7020932 m!7722738))

(declare-fun m!7722740 () Bool)

(assert (=> b!7020932 m!7722740))

(declare-fun m!7722742 () Bool)

(assert (=> b!7020932 m!7722742))

(assert (=> b!7020932 m!7722740))

(assert (=> b!7020932 m!7722742))

(declare-fun m!7722744 () Bool)

(assert (=> b!7020932 m!7722744))

(assert (=> b!7020823 d!2188458))

(declare-fun d!2188460 () Bool)

(assert (=> d!2188460 (= (matchZipper!2928 lt!2511845 Nil!67585) (isEmpty!39454 Nil!67585))))

(declare-fun lt!2511948 () Unit!161458)

(declare-fun choose!52959 ((Set Context!12768) List!67709) Unit!161458)

(assert (=> d!2188460 (= lt!2511948 (choose!52959 lt!2511845 Nil!67585))))

(assert (=> d!2188460 (= lt!2511845 (set.singleton (Context!12769 Nil!67586)))))

(assert (=> d!2188460 (= (lemmaZipperOfEmptyContextMatchesEmptyString!19 lt!2511845 Nil!67585) lt!2511948)))

(declare-fun bs!1867531 () Bool)

(assert (= bs!1867531 d!2188460))

(assert (=> bs!1867531 m!7722540))

(assert (=> bs!1867531 m!7722734))

(declare-fun m!7722746 () Bool)

(assert (=> bs!1867531 m!7722746))

(assert (=> b!7020823 d!2188460))

(declare-fun d!2188462 () Bool)

(declare-fun c!1304814 () Bool)

(assert (=> d!2188462 (= c!1304814 (isEmpty!39454 Nil!67585))))

(declare-fun e!4220433 () Bool)

(assert (=> d!2188462 (= (matchZipper!2928 (content!13459 lt!2511846) Nil!67585) e!4220433)))

(declare-fun b!7020933 () Bool)

(assert (=> b!7020933 (= e!4220433 (nullableZipper!2519 (content!13459 lt!2511846)))))

(declare-fun b!7020934 () Bool)

(assert (=> b!7020934 (= e!4220433 (matchZipper!2928 (derivationStepZipper!2868 (content!13459 lt!2511846) (head!14209 Nil!67585)) (tail!13478 Nil!67585)))))

(assert (= (and d!2188462 c!1304814) b!7020933))

(assert (= (and d!2188462 (not c!1304814)) b!7020934))

(assert (=> d!2188462 m!7722734))

(assert (=> b!7020933 m!7722546))

(declare-fun m!7722748 () Bool)

(assert (=> b!7020933 m!7722748))

(assert (=> b!7020934 m!7722738))

(assert (=> b!7020934 m!7722546))

(assert (=> b!7020934 m!7722738))

(declare-fun m!7722750 () Bool)

(assert (=> b!7020934 m!7722750))

(assert (=> b!7020934 m!7722742))

(assert (=> b!7020934 m!7722750))

(assert (=> b!7020934 m!7722742))

(declare-fun m!7722752 () Bool)

(assert (=> b!7020934 m!7722752))

(assert (=> b!7020832 d!2188462))

(declare-fun d!2188464 () Bool)

(declare-fun isEmpty!39455 (Option!16853) Bool)

(assert (=> d!2188464 (= (isDefined!13554 (findConcatSeparationZippers!369 lt!2511845 lt!2511847 Nil!67585 s!7408 s!7408)) (not (isEmpty!39455 (findConcatSeparationZippers!369 lt!2511845 lt!2511847 Nil!67585 s!7408 s!7408))))))

(declare-fun bs!1867532 () Bool)

(assert (= bs!1867532 d!2188464))

(assert (=> bs!1867532 m!7722554))

(declare-fun m!7722754 () Bool)

(assert (=> bs!1867532 m!7722754))

(assert (=> b!7020832 d!2188464))

(declare-fun d!2188466 () Bool)

(declare-fun e!4220436 () Bool)

(assert (=> d!2188466 e!4220436))

(declare-fun res!2865877 () Bool)

(assert (=> d!2188466 (=> (not res!2865877) (not e!4220436))))

(declare-fun lt!2511951 () List!67711)

(declare-fun noDuplicate!2595 (List!67711) Bool)

(assert (=> d!2188466 (= res!2865877 (noDuplicate!2595 lt!2511951))))

(declare-fun choose!52960 ((Set Context!12768)) List!67711)

(assert (=> d!2188466 (= lt!2511951 (choose!52960 z1!570))))

(assert (=> d!2188466 (= (toList!10748 z1!570) lt!2511951)))

(declare-fun b!7020937 () Bool)

(assert (=> b!7020937 (= e!4220436 (= (content!13459 lt!2511951) z1!570))))

(assert (= (and d!2188466 res!2865877) b!7020937))

(declare-fun m!7722756 () Bool)

(assert (=> d!2188466 m!7722756))

(declare-fun m!7722758 () Bool)

(assert (=> d!2188466 m!7722758))

(declare-fun m!7722760 () Bool)

(assert (=> b!7020937 m!7722760))

(assert (=> b!7020832 d!2188466))

(declare-fun d!2188468 () Bool)

(assert (=> d!2188468 (isDefined!13554 (findConcatSeparationZippers!369 lt!2511845 lt!2511847 Nil!67585 s!7408 s!7408))))

(declare-fun lt!2511954 () Unit!161458)

(declare-fun choose!52961 ((Set Context!12768) (Set Context!12768) List!67709 List!67709 List!67709 List!67709 List!67709) Unit!161458)

(assert (=> d!2188468 (= lt!2511954 (choose!52961 lt!2511845 lt!2511847 Nil!67585 s!7408 s!7408 Nil!67585 s!7408))))

(assert (=> d!2188468 (matchZipper!2928 lt!2511845 Nil!67585)))

(assert (=> d!2188468 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!41 lt!2511845 lt!2511847 Nil!67585 s!7408 s!7408 Nil!67585 s!7408) lt!2511954)))

(declare-fun bs!1867533 () Bool)

(assert (= bs!1867533 d!2188468))

(assert (=> bs!1867533 m!7722554))

(assert (=> bs!1867533 m!7722554))

(assert (=> bs!1867533 m!7722556))

(declare-fun m!7722762 () Bool)

(assert (=> bs!1867533 m!7722762))

(assert (=> bs!1867533 m!7722540))

(assert (=> b!7020832 d!2188468))

(declare-fun b!7020956 () Bool)

(declare-fun e!4220447 () Bool)

(declare-fun lt!2511966 () Option!16853)

(assert (=> b!7020956 (= e!4220447 (not (isDefined!13554 lt!2511966)))))

(declare-fun d!2188470 () Bool)

(assert (=> d!2188470 e!4220447))

(declare-fun res!2865891 () Bool)

(assert (=> d!2188470 (=> res!2865891 e!4220447)))

(declare-fun e!4220450 () Bool)

(assert (=> d!2188470 (= res!2865891 e!4220450)))

(declare-fun res!2865888 () Bool)

(assert (=> d!2188470 (=> (not res!2865888) (not e!4220450))))

(assert (=> d!2188470 (= res!2865888 (isDefined!13554 lt!2511966))))

(declare-fun e!4220448 () Option!16853)

(assert (=> d!2188470 (= lt!2511966 e!4220448)))

(declare-fun c!1304821 () Bool)

(declare-fun e!4220449 () Bool)

(assert (=> d!2188470 (= c!1304821 e!4220449)))

(declare-fun res!2865892 () Bool)

(assert (=> d!2188470 (=> (not res!2865892) (not e!4220449))))

(assert (=> d!2188470 (= res!2865892 (matchZipper!2928 lt!2511845 Nil!67585))))

(assert (=> d!2188470 (= (++!15430 Nil!67585 s!7408) s!7408)))

(assert (=> d!2188470 (= (findConcatSeparationZippers!369 lt!2511845 lt!2511847 Nil!67585 s!7408 s!7408) lt!2511966)))

(declare-fun b!7020957 () Bool)

(declare-fun e!4220451 () Option!16853)

(assert (=> b!7020957 (= e!4220451 None!16852)))

(declare-fun b!7020958 () Bool)

(assert (=> b!7020958 (= e!4220448 e!4220451)))

(declare-fun c!1304822 () Bool)

(assert (=> b!7020958 (= c!1304822 (is-Nil!67585 s!7408))))

(declare-fun b!7020959 () Bool)

(declare-fun get!23700 (Option!16853) tuple2!68042)

(assert (=> b!7020959 (= e!4220450 (= (++!15430 (_1!37324 (get!23700 lt!2511966)) (_2!37324 (get!23700 lt!2511966))) s!7408))))

(declare-fun b!7020960 () Bool)

(declare-fun res!2865889 () Bool)

(assert (=> b!7020960 (=> (not res!2865889) (not e!4220450))))

(assert (=> b!7020960 (= res!2865889 (matchZipper!2928 lt!2511847 (_2!37324 (get!23700 lt!2511966))))))

(declare-fun b!7020961 () Bool)

(assert (=> b!7020961 (= e!4220449 (matchZipper!2928 lt!2511847 s!7408))))

(declare-fun b!7020962 () Bool)

(declare-fun lt!2511964 () Unit!161458)

(declare-fun lt!2511965 () Unit!161458)

(assert (=> b!7020962 (= lt!2511964 lt!2511965)))

(assert (=> b!7020962 (= (++!15430 (++!15430 Nil!67585 (Cons!67585 (h!74033 s!7408) Nil!67585)) (t!381464 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2911 (List!67709 C!35046 List!67709 List!67709) Unit!161458)

(assert (=> b!7020962 (= lt!2511965 (lemmaMoveElementToOtherListKeepsConcatEq!2911 Nil!67585 (h!74033 s!7408) (t!381464 s!7408) s!7408))))

(assert (=> b!7020962 (= e!4220451 (findConcatSeparationZippers!369 lt!2511845 lt!2511847 (++!15430 Nil!67585 (Cons!67585 (h!74033 s!7408) Nil!67585)) (t!381464 s!7408) s!7408))))

(declare-fun b!7020963 () Bool)

(declare-fun res!2865890 () Bool)

(assert (=> b!7020963 (=> (not res!2865890) (not e!4220450))))

(assert (=> b!7020963 (= res!2865890 (matchZipper!2928 lt!2511845 (_1!37324 (get!23700 lt!2511966))))))

(declare-fun b!7020964 () Bool)

(assert (=> b!7020964 (= e!4220448 (Some!16852 (tuple2!68043 Nil!67585 s!7408)))))

(assert (= (and d!2188470 res!2865892) b!7020961))

(assert (= (and d!2188470 c!1304821) b!7020964))

(assert (= (and d!2188470 (not c!1304821)) b!7020958))

(assert (= (and b!7020958 c!1304822) b!7020957))

(assert (= (and b!7020958 (not c!1304822)) b!7020962))

(assert (= (and d!2188470 res!2865888) b!7020963))

(assert (= (and b!7020963 res!2865890) b!7020960))

(assert (= (and b!7020960 res!2865889) b!7020959))

(assert (= (and d!2188470 (not res!2865891)) b!7020956))

(declare-fun m!7722768 () Bool)

(assert (=> d!2188470 m!7722768))

(assert (=> d!2188470 m!7722540))

(assert (=> d!2188470 m!7722578))

(assert (=> b!7020956 m!7722768))

(declare-fun m!7722770 () Bool)

(assert (=> b!7020962 m!7722770))

(assert (=> b!7020962 m!7722770))

(declare-fun m!7722772 () Bool)

(assert (=> b!7020962 m!7722772))

(declare-fun m!7722774 () Bool)

(assert (=> b!7020962 m!7722774))

(assert (=> b!7020962 m!7722770))

(declare-fun m!7722776 () Bool)

(assert (=> b!7020962 m!7722776))

(declare-fun m!7722778 () Bool)

(assert (=> b!7020963 m!7722778))

(declare-fun m!7722780 () Bool)

(assert (=> b!7020963 m!7722780))

(assert (=> b!7020960 m!7722778))

(declare-fun m!7722782 () Bool)

(assert (=> b!7020960 m!7722782))

(assert (=> b!7020961 m!7722568))

(assert (=> b!7020959 m!7722778))

(declare-fun m!7722784 () Bool)

(assert (=> b!7020959 m!7722784))

(assert (=> b!7020832 d!2188470))

(declare-fun b!7020965 () Bool)

(declare-fun e!4220452 () Bool)

(declare-fun lt!2511969 () Option!16853)

(assert (=> b!7020965 (= e!4220452 (not (isDefined!13554 lt!2511969)))))

(declare-fun d!2188476 () Bool)

(assert (=> d!2188476 e!4220452))

(declare-fun res!2865896 () Bool)

(assert (=> d!2188476 (=> res!2865896 e!4220452)))

(declare-fun e!4220455 () Bool)

(assert (=> d!2188476 (= res!2865896 e!4220455)))

(declare-fun res!2865893 () Bool)

(assert (=> d!2188476 (=> (not res!2865893) (not e!4220455))))

(assert (=> d!2188476 (= res!2865893 (isDefined!13554 lt!2511969))))

(declare-fun e!4220453 () Option!16853)

(assert (=> d!2188476 (= lt!2511969 e!4220453)))

(declare-fun c!1304823 () Bool)

(declare-fun e!4220454 () Bool)

(assert (=> d!2188476 (= c!1304823 e!4220454)))

(declare-fun res!2865897 () Bool)

(assert (=> d!2188476 (=> (not res!2865897) (not e!4220454))))

(assert (=> d!2188476 (= res!2865897 (matchZipper!2928 z1!570 Nil!67585))))

(assert (=> d!2188476 (= (++!15430 Nil!67585 s!7408) s!7408)))

(assert (=> d!2188476 (= (findConcatSeparationZippers!369 z1!570 lt!2511847 Nil!67585 s!7408 s!7408) lt!2511969)))

(declare-fun b!7020966 () Bool)

(declare-fun e!4220456 () Option!16853)

(assert (=> b!7020966 (= e!4220456 None!16852)))

(declare-fun b!7020967 () Bool)

(assert (=> b!7020967 (= e!4220453 e!4220456)))

(declare-fun c!1304824 () Bool)

(assert (=> b!7020967 (= c!1304824 (is-Nil!67585 s!7408))))

(declare-fun b!7020968 () Bool)

(assert (=> b!7020968 (= e!4220455 (= (++!15430 (_1!37324 (get!23700 lt!2511969)) (_2!37324 (get!23700 lt!2511969))) s!7408))))

(declare-fun b!7020969 () Bool)

(declare-fun res!2865894 () Bool)

(assert (=> b!7020969 (=> (not res!2865894) (not e!4220455))))

(assert (=> b!7020969 (= res!2865894 (matchZipper!2928 lt!2511847 (_2!37324 (get!23700 lt!2511969))))))

(declare-fun b!7020970 () Bool)

(assert (=> b!7020970 (= e!4220454 (matchZipper!2928 lt!2511847 s!7408))))

(declare-fun b!7020971 () Bool)

(declare-fun lt!2511967 () Unit!161458)

(declare-fun lt!2511968 () Unit!161458)

(assert (=> b!7020971 (= lt!2511967 lt!2511968)))

(assert (=> b!7020971 (= (++!15430 (++!15430 Nil!67585 (Cons!67585 (h!74033 s!7408) Nil!67585)) (t!381464 s!7408)) s!7408)))

(assert (=> b!7020971 (= lt!2511968 (lemmaMoveElementToOtherListKeepsConcatEq!2911 Nil!67585 (h!74033 s!7408) (t!381464 s!7408) s!7408))))

(assert (=> b!7020971 (= e!4220456 (findConcatSeparationZippers!369 z1!570 lt!2511847 (++!15430 Nil!67585 (Cons!67585 (h!74033 s!7408) Nil!67585)) (t!381464 s!7408) s!7408))))

(declare-fun b!7020972 () Bool)

(declare-fun res!2865895 () Bool)

(assert (=> b!7020972 (=> (not res!2865895) (not e!4220455))))

(assert (=> b!7020972 (= res!2865895 (matchZipper!2928 z1!570 (_1!37324 (get!23700 lt!2511969))))))

(declare-fun b!7020973 () Bool)

(assert (=> b!7020973 (= e!4220453 (Some!16852 (tuple2!68043 Nil!67585 s!7408)))))

(assert (= (and d!2188476 res!2865897) b!7020970))

(assert (= (and d!2188476 c!1304823) b!7020973))

(assert (= (and d!2188476 (not c!1304823)) b!7020967))

(assert (= (and b!7020967 c!1304824) b!7020966))

(assert (= (and b!7020967 (not c!1304824)) b!7020971))

(assert (= (and d!2188476 res!2865893) b!7020972))

(assert (= (and b!7020972 res!2865895) b!7020969))

(assert (= (and b!7020969 res!2865894) b!7020968))

(assert (= (and d!2188476 (not res!2865896)) b!7020965))

(declare-fun m!7722786 () Bool)

(assert (=> d!2188476 m!7722786))

(declare-fun m!7722788 () Bool)

(assert (=> d!2188476 m!7722788))

(assert (=> d!2188476 m!7722578))

(assert (=> b!7020965 m!7722786))

(assert (=> b!7020971 m!7722770))

(assert (=> b!7020971 m!7722770))

(assert (=> b!7020971 m!7722772))

(assert (=> b!7020971 m!7722774))

(assert (=> b!7020971 m!7722770))

(declare-fun m!7722790 () Bool)

(assert (=> b!7020971 m!7722790))

(declare-fun m!7722792 () Bool)

(assert (=> b!7020972 m!7722792))

(declare-fun m!7722794 () Bool)

(assert (=> b!7020972 m!7722794))

(assert (=> b!7020969 m!7722792))

(declare-fun m!7722796 () Bool)

(assert (=> b!7020969 m!7722796))

(assert (=> b!7020970 m!7722568))

(assert (=> b!7020968 m!7722792))

(declare-fun m!7722798 () Bool)

(assert (=> b!7020968 m!7722798))

(assert (=> b!7020832 d!2188476))

(declare-fun d!2188478 () Bool)

(assert (=> d!2188478 (exists!3273 z1!570 lambda!411348)))

(declare-fun lt!2511972 () Unit!161458)

(declare-fun choose!52962 ((Set Context!12768) Context!12768 Int) Unit!161458)

(assert (=> d!2188478 (= lt!2511972 (choose!52962 z1!570 lt!2511865 lambda!411348))))

(assert (=> d!2188478 (set.member lt!2511865 z1!570)))

(assert (=> d!2188478 (= (lemmaContainsThenExists!110 z1!570 lt!2511865 lambda!411348) lt!2511972)))

(declare-fun bs!1867537 () Bool)

(assert (= bs!1867537 d!2188478))

(assert (=> bs!1867537 m!7722550))

(declare-fun m!7722800 () Bool)

(assert (=> bs!1867537 m!7722800))

(assert (=> bs!1867537 m!7722594))

(assert (=> b!7020832 d!2188478))

(declare-fun d!2188480 () Bool)

(declare-fun c!1304827 () Bool)

(assert (=> d!2188480 (= c!1304827 (is-Nil!67587 lt!2511846))))

(declare-fun e!4220460 () (Set Context!12768))

(assert (=> d!2188480 (= (content!13459 lt!2511846) e!4220460)))

(declare-fun b!7020978 () Bool)

(assert (=> b!7020978 (= e!4220460 (as set.empty (Set Context!12768)))))

(declare-fun b!7020979 () Bool)

(assert (=> b!7020979 (= e!4220460 (set.union (set.insert (h!74035 lt!2511846) (as set.empty (Set Context!12768))) (content!13459 (t!381466 lt!2511846))))))

(assert (= (and d!2188480 c!1304827) b!7020978))

(assert (= (and d!2188480 (not c!1304827)) b!7020979))

(declare-fun m!7722802 () Bool)

(assert (=> b!7020979 m!7722802))

(declare-fun m!7722804 () Bool)

(assert (=> b!7020979 m!7722804))

(assert (=> b!7020832 d!2188480))

(declare-fun d!2188482 () Bool)

(assert (=> d!2188482 (= (isDefined!13554 (findConcatSeparationZippers!369 z1!570 lt!2511847 Nil!67585 s!7408 s!7408)) (not (isEmpty!39455 (findConcatSeparationZippers!369 z1!570 lt!2511847 Nil!67585 s!7408 s!7408))))))

(declare-fun bs!1867538 () Bool)

(assert (= bs!1867538 d!2188482))

(assert (=> bs!1867538 m!7722560))

(declare-fun m!7722806 () Bool)

(assert (=> bs!1867538 m!7722806))

(assert (=> b!7020832 d!2188482))

(declare-fun d!2188484 () Bool)

(declare-fun lt!2511975 () Bool)

(assert (=> d!2188484 (= lt!2511975 (exists!3272 (toList!10748 z1!570) lambda!411348))))

(declare-fun choose!52963 ((Set Context!12768) Int) Bool)

(assert (=> d!2188484 (= lt!2511975 (choose!52963 z1!570 lambda!411348))))

(assert (=> d!2188484 (= (exists!3273 z1!570 lambda!411348) lt!2511975)))

(declare-fun bs!1867539 () Bool)

(assert (= bs!1867539 d!2188484))

(assert (=> bs!1867539 m!7722552))

(assert (=> bs!1867539 m!7722552))

(declare-fun m!7722808 () Bool)

(assert (=> bs!1867539 m!7722808))

(declare-fun m!7722810 () Bool)

(assert (=> bs!1867539 m!7722810))

(assert (=> b!7020832 d!2188484))

(declare-fun bs!1867541 () Bool)

(declare-fun d!2188486 () Bool)

(assert (= bs!1867541 (and d!2188486 b!7020828)))

(declare-fun lambda!411391 () Int)

(assert (=> bs!1867541 (= (= Nil!67585 s!7408) (= lambda!411391 lambda!411344))))

(declare-fun bs!1867542 () Bool)

(assert (= bs!1867542 (and d!2188486 b!7020832)))

(assert (=> bs!1867542 (= lambda!411391 lambda!411348)))

(assert (=> d!2188486 true))

(assert (=> d!2188486 (matchZipper!2928 (content!13459 lt!2511846) Nil!67585)))

(declare-fun lt!2511981 () Unit!161458)

(declare-fun choose!52964 (List!67711 List!67709) Unit!161458)

(assert (=> d!2188486 (= lt!2511981 (choose!52964 lt!2511846 Nil!67585))))

(assert (=> d!2188486 (exists!3272 lt!2511846 lambda!411391)))

(assert (=> d!2188486 (= (lemmaExistsMatchingContextThenMatchingString!37 lt!2511846 Nil!67585) lt!2511981)))

(declare-fun bs!1867543 () Bool)

(assert (= bs!1867543 d!2188486))

(assert (=> bs!1867543 m!7722546))

(assert (=> bs!1867543 m!7722546))

(assert (=> bs!1867543 m!7722548))

(declare-fun m!7722814 () Bool)

(assert (=> bs!1867543 m!7722814))

(declare-fun m!7722816 () Bool)

(assert (=> bs!1867543 m!7722816))

(assert (=> b!7020832 d!2188486))

(declare-fun d!2188490 () Bool)

(declare-fun e!4220466 () Bool)

(assert (=> d!2188490 e!4220466))

(declare-fun res!2865903 () Bool)

(assert (=> d!2188490 (=> (not res!2865903) (not e!4220466))))

(declare-fun lt!2511987 () Context!12768)

(declare-fun dynLambda!27229 (Int Context!12768) Bool)

(assert (=> d!2188490 (= res!2865903 (dynLambda!27229 lambda!411344 lt!2511987))))

(declare-fun getWitness!1360 (List!67711 Int) Context!12768)

(assert (=> d!2188490 (= lt!2511987 (getWitness!1360 (toList!10748 lt!2511849) lambda!411344))))

(assert (=> d!2188490 (exists!3273 lt!2511849 lambda!411344)))

(assert (=> d!2188490 (= (getWitness!1358 lt!2511849 lambda!411344) lt!2511987)))

(declare-fun b!7020985 () Bool)

(assert (=> b!7020985 (= e!4220466 (set.member lt!2511987 lt!2511849))))

(assert (= (and d!2188490 res!2865903) b!7020985))

(declare-fun b_lambda!265069 () Bool)

(assert (=> (not b_lambda!265069) (not d!2188490)))

(declare-fun m!7722824 () Bool)

(assert (=> d!2188490 m!7722824))

(assert (=> d!2188490 m!7722586))

(assert (=> d!2188490 m!7722586))

(declare-fun m!7722826 () Bool)

(assert (=> d!2188490 m!7722826))

(declare-fun m!7722828 () Bool)

(assert (=> d!2188490 m!7722828))

(declare-fun m!7722830 () Bool)

(assert (=> b!7020985 m!7722830))

(assert (=> b!7020828 d!2188490))

(declare-fun d!2188494 () Bool)

(declare-fun c!1304830 () Bool)

(assert (=> d!2188494 (= c!1304830 (isEmpty!39454 s!7408))))

(declare-fun e!4220467 () Bool)

(assert (=> d!2188494 (= (matchZipper!2928 lt!2511858 s!7408) e!4220467)))

(declare-fun b!7020986 () Bool)

(assert (=> b!7020986 (= e!4220467 (nullableZipper!2519 lt!2511858))))

(declare-fun b!7020987 () Bool)

(assert (=> b!7020987 (= e!4220467 (matchZipper!2928 (derivationStepZipper!2868 lt!2511858 (head!14209 s!7408)) (tail!13478 s!7408)))))

(assert (= (and d!2188494 c!1304830) b!7020986))

(assert (= (and d!2188494 (not c!1304830)) b!7020987))

(assert (=> d!2188494 m!7722676))

(declare-fun m!7722832 () Bool)

(assert (=> b!7020986 m!7722832))

(assert (=> b!7020987 m!7722680))

(assert (=> b!7020987 m!7722680))

(declare-fun m!7722834 () Bool)

(assert (=> b!7020987 m!7722834))

(assert (=> b!7020987 m!7722684))

(assert (=> b!7020987 m!7722834))

(assert (=> b!7020987 m!7722684))

(declare-fun m!7722836 () Bool)

(assert (=> b!7020987 m!7722836))

(assert (=> b!7020828 d!2188494))

(declare-fun bs!1867544 () Bool)

(declare-fun d!2188496 () Bool)

(assert (= bs!1867544 (and d!2188496 b!7020828)))

(declare-fun lambda!411394 () Int)

(assert (=> bs!1867544 (not (= lambda!411394 lambda!411344))))

(declare-fun bs!1867545 () Bool)

(assert (= bs!1867545 (and d!2188496 b!7020832)))

(assert (=> bs!1867545 (not (= lambda!411394 lambda!411348))))

(declare-fun bs!1867546 () Bool)

(assert (= bs!1867546 (and d!2188496 d!2188486)))

(assert (=> bs!1867546 (not (= lambda!411394 lambda!411391))))

(assert (=> d!2188496 true))

(declare-fun order!28101 () Int)

(declare-fun dynLambda!27230 (Int Int) Int)

(assert (=> d!2188496 (< (dynLambda!27230 order!28101 lambda!411344) (dynLambda!27230 order!28101 lambda!411394))))

(declare-fun forall!16298 (List!67711 Int) Bool)

(assert (=> d!2188496 (= (exists!3272 lt!2511854 lambda!411344) (not (forall!16298 lt!2511854 lambda!411394)))))

(declare-fun bs!1867547 () Bool)

(assert (= bs!1867547 d!2188496))

(declare-fun m!7722838 () Bool)

(assert (=> bs!1867547 m!7722838))

(assert (=> b!7020828 d!2188496))

(declare-fun bs!1867549 () Bool)

(declare-fun d!2188498 () Bool)

(assert (= bs!1867549 (and d!2188498 b!7020828)))

(declare-fun lambda!411397 () Int)

(assert (=> bs!1867549 (= lambda!411397 lambda!411344)))

(declare-fun bs!1867550 () Bool)

(assert (= bs!1867550 (and d!2188498 b!7020832)))

(assert (=> bs!1867550 (= (= s!7408 Nil!67585) (= lambda!411397 lambda!411348))))

(declare-fun bs!1867551 () Bool)

(assert (= bs!1867551 (and d!2188498 d!2188486)))

(assert (=> bs!1867551 (= (= s!7408 Nil!67585) (= lambda!411397 lambda!411391))))

(declare-fun bs!1867552 () Bool)

(assert (= bs!1867552 (and d!2188498 d!2188496)))

(assert (=> bs!1867552 (not (= lambda!411397 lambda!411394))))

(assert (=> d!2188498 true))

(assert (=> d!2188498 (exists!3272 lt!2511854 lambda!411397)))

(declare-fun lt!2511993 () Unit!161458)

(declare-fun choose!52965 (List!67711 List!67709) Unit!161458)

(assert (=> d!2188498 (= lt!2511993 (choose!52965 lt!2511854 s!7408))))

(assert (=> d!2188498 (matchZipper!2928 (content!13459 lt!2511854) s!7408)))

(assert (=> d!2188498 (= (lemmaZipperMatchesExistsMatchingContext!357 lt!2511854 s!7408) lt!2511993)))

(declare-fun bs!1867553 () Bool)

(assert (= bs!1867553 d!2188498))

(declare-fun m!7722848 () Bool)

(assert (=> bs!1867553 m!7722848))

(declare-fun m!7722850 () Bool)

(assert (=> bs!1867553 m!7722850))

(declare-fun m!7722852 () Bool)

(assert (=> bs!1867553 m!7722852))

(assert (=> bs!1867553 m!7722852))

(declare-fun m!7722854 () Bool)

(assert (=> bs!1867553 m!7722854))

(assert (=> b!7020828 d!2188498))

(declare-fun d!2188504 () Bool)

(declare-fun e!4220471 () Bool)

(assert (=> d!2188504 e!4220471))

(declare-fun res!2865904 () Bool)

(assert (=> d!2188504 (=> (not res!2865904) (not e!4220471))))

(declare-fun lt!2511994 () List!67711)

(assert (=> d!2188504 (= res!2865904 (noDuplicate!2595 lt!2511994))))

(assert (=> d!2188504 (= lt!2511994 (choose!52960 lt!2511849))))

(assert (=> d!2188504 (= (toList!10748 lt!2511849) lt!2511994)))

(declare-fun b!7020996 () Bool)

(assert (=> b!7020996 (= e!4220471 (= (content!13459 lt!2511994) lt!2511849))))

(assert (= (and d!2188504 res!2865904) b!7020996))

(declare-fun m!7722856 () Bool)

(assert (=> d!2188504 m!7722856))

(declare-fun m!7722858 () Bool)

(assert (=> d!2188504 m!7722858))

(declare-fun m!7722860 () Bool)

(assert (=> b!7020996 m!7722860))

(assert (=> b!7020828 d!2188504))

(declare-fun d!2188506 () Bool)

(declare-fun e!4220477 () Bool)

(assert (=> d!2188506 e!4220477))

(declare-fun res!2865910 () Bool)

(assert (=> d!2188506 (=> (not res!2865910) (not e!4220477))))

(declare-fun lt!2511997 () List!67710)

(declare-fun content!13462 (List!67710) (Set Regex!17388))

(assert (=> d!2188506 (= res!2865910 (= (content!13462 lt!2511997) (set.union (content!13462 (exprs!6884 lt!2511865)) (content!13462 (exprs!6884 ct2!306)))))))

(declare-fun e!4220476 () List!67710)

(assert (=> d!2188506 (= lt!2511997 e!4220476)))

(declare-fun c!1304838 () Bool)

(assert (=> d!2188506 (= c!1304838 (is-Nil!67586 (exprs!6884 lt!2511865)))))

(assert (=> d!2188506 (= (++!15431 (exprs!6884 lt!2511865) (exprs!6884 ct2!306)) lt!2511997)))

(declare-fun b!7021007 () Bool)

(declare-fun res!2865909 () Bool)

(assert (=> b!7021007 (=> (not res!2865909) (not e!4220477))))

(declare-fun size!41024 (List!67710) Int)

(assert (=> b!7021007 (= res!2865909 (= (size!41024 lt!2511997) (+ (size!41024 (exprs!6884 lt!2511865)) (size!41024 (exprs!6884 ct2!306)))))))

(declare-fun b!7021005 () Bool)

(assert (=> b!7021005 (= e!4220476 (exprs!6884 ct2!306))))

(declare-fun b!7021008 () Bool)

(assert (=> b!7021008 (= e!4220477 (or (not (= (exprs!6884 ct2!306) Nil!67586)) (= lt!2511997 (exprs!6884 lt!2511865))))))

(declare-fun b!7021006 () Bool)

(assert (=> b!7021006 (= e!4220476 (Cons!67586 (h!74034 (exprs!6884 lt!2511865)) (++!15431 (t!381465 (exprs!6884 lt!2511865)) (exprs!6884 ct2!306))))))

(assert (= (and d!2188506 c!1304838) b!7021005))

(assert (= (and d!2188506 (not c!1304838)) b!7021006))

(assert (= (and d!2188506 res!2865910) b!7021007))

(assert (= (and b!7021007 res!2865909) b!7021008))

(declare-fun m!7722864 () Bool)

(assert (=> d!2188506 m!7722864))

(declare-fun m!7722866 () Bool)

(assert (=> d!2188506 m!7722866))

(declare-fun m!7722868 () Bool)

(assert (=> d!2188506 m!7722868))

(declare-fun m!7722870 () Bool)

(assert (=> b!7021007 m!7722870))

(declare-fun m!7722872 () Bool)

(assert (=> b!7021007 m!7722872))

(declare-fun m!7722874 () Bool)

(assert (=> b!7021007 m!7722874))

(declare-fun m!7722876 () Bool)

(assert (=> b!7021006 m!7722876))

(assert (=> b!7020829 d!2188506))

(assert (=> b!7020829 d!2188444))

(declare-fun d!2188510 () Bool)

(declare-fun e!4220482 () Bool)

(assert (=> d!2188510 e!4220482))

(declare-fun res!2865913 () Bool)

(assert (=> d!2188510 (=> (not res!2865913) (not e!4220482))))

(declare-fun lt!2512000 () Context!12768)

(declare-fun dynLambda!27231 (Int Context!12768) Context!12768)

(assert (=> d!2188510 (= res!2865913 (= lt!2511861 (dynLambda!27231 lambda!411345 lt!2512000)))))

(declare-fun choose!52966 ((Set Context!12768) Int Context!12768) Context!12768)

(assert (=> d!2188510 (= lt!2512000 (choose!52966 z1!570 lambda!411345 lt!2511861))))

(assert (=> d!2188510 (set.member lt!2511861 (map!15678 z1!570 lambda!411345))))

(assert (=> d!2188510 (= (mapPost2!243 z1!570 lambda!411345 lt!2511861) lt!2512000)))

(declare-fun b!7021016 () Bool)

(assert (=> b!7021016 (= e!4220482 (set.member lt!2512000 z1!570))))

(assert (= (and d!2188510 res!2865913) b!7021016))

(declare-fun b_lambda!265071 () Bool)

(assert (=> (not b_lambda!265071) (not d!2188510)))

(declare-fun m!7722878 () Bool)

(assert (=> d!2188510 m!7722878))

(declare-fun m!7722880 () Bool)

(assert (=> d!2188510 m!7722880))

(declare-fun m!7722882 () Bool)

(assert (=> d!2188510 m!7722882))

(declare-fun m!7722884 () Bool)

(assert (=> d!2188510 m!7722884))

(declare-fun m!7722886 () Bool)

(assert (=> b!7021016 m!7722886))

(assert (=> b!7020829 d!2188510))

(declare-fun condSetEmpty!48699 () Bool)

(assert (=> setNonEmpty!48693 (= condSetEmpty!48699 (= setRest!48693 (as set.empty (Set Context!12768))))))

(declare-fun setRes!48699 () Bool)

(assert (=> setNonEmpty!48693 (= tp!1933998 setRes!48699)))

(declare-fun setIsEmpty!48699 () Bool)

(assert (=> setIsEmpty!48699 setRes!48699))

(declare-fun e!4220486 () Bool)

(declare-fun tp!1934019 () Bool)

(declare-fun setNonEmpty!48699 () Bool)

(declare-fun setElem!48699 () Context!12768)

(assert (=> setNonEmpty!48699 (= setRes!48699 (and tp!1934019 (inv!86330 setElem!48699) e!4220486))))

(declare-fun setRest!48699 () (Set Context!12768))

(assert (=> setNonEmpty!48699 (= setRest!48693 (set.union (set.insert setElem!48699 (as set.empty (Set Context!12768))) setRest!48699))))

(declare-fun b!7021023 () Bool)

(declare-fun tp!1934018 () Bool)

(assert (=> b!7021023 (= e!4220486 tp!1934018)))

(assert (= (and setNonEmpty!48693 condSetEmpty!48699) setIsEmpty!48699))

(assert (= (and setNonEmpty!48693 (not condSetEmpty!48699)) setNonEmpty!48699))

(assert (= setNonEmpty!48699 b!7021023))

(declare-fun m!7722902 () Bool)

(assert (=> setNonEmpty!48699 m!7722902))

(declare-fun b!7021028 () Bool)

(declare-fun e!4220489 () Bool)

(declare-fun tp!1934024 () Bool)

(declare-fun tp!1934025 () Bool)

(assert (=> b!7021028 (= e!4220489 (and tp!1934024 tp!1934025))))

(assert (=> b!7020825 (= tp!1933999 e!4220489)))

(assert (= (and b!7020825 (is-Cons!67586 (exprs!6884 setElem!48693))) b!7021028))

(declare-fun b!7021033 () Bool)

(declare-fun e!4220492 () Bool)

(declare-fun tp!1934028 () Bool)

(assert (=> b!7021033 (= e!4220492 (and tp_is_empty!44001 tp!1934028))))

(assert (=> b!7020831 (= tp!1934000 e!4220492)))

(assert (= (and b!7020831 (is-Cons!67585 (t!381464 s!7408))) b!7021033))

(declare-fun b!7021034 () Bool)

(declare-fun e!4220493 () Bool)

(declare-fun tp!1934029 () Bool)

(declare-fun tp!1934030 () Bool)

(assert (=> b!7021034 (= e!4220493 (and tp!1934029 tp!1934030))))

(assert (=> b!7020824 (= tp!1934001 e!4220493)))

(assert (= (and b!7020824 (is-Cons!67586 (exprs!6884 ct2!306))) b!7021034))

(declare-fun b_lambda!265073 () Bool)

(assert (= b_lambda!265069 (or b!7020828 b_lambda!265073)))

(declare-fun bs!1867556 () Bool)

(declare-fun d!2188516 () Bool)

(assert (= bs!1867556 (and d!2188516 b!7020828)))

(assert (=> bs!1867556 (= (dynLambda!27229 lambda!411344 lt!2511987) (matchZipper!2928 (set.insert lt!2511987 (as set.empty (Set Context!12768))) s!7408))))

(declare-fun m!7722904 () Bool)

(assert (=> bs!1867556 m!7722904))

(assert (=> bs!1867556 m!7722904))

(declare-fun m!7722906 () Bool)

(assert (=> bs!1867556 m!7722906))

(assert (=> d!2188490 d!2188516))

(declare-fun b_lambda!265075 () Bool)

(assert (= b_lambda!265067 (or b!7020822 b_lambda!265075)))

(declare-fun bs!1867557 () Bool)

(declare-fun d!2188518 () Bool)

(assert (= bs!1867557 (and d!2188518 b!7020822)))

(assert (=> bs!1867557 (= (dynLambda!27228 lambda!411347 lt!2511853) (derivationStepZipperUp!2038 lt!2511853 (h!74033 s!7408)))))

(assert (=> bs!1867557 m!7722538))

(assert (=> d!2188450 d!2188518))

(declare-fun b_lambda!265077 () Bool)

(assert (= b_lambda!265071 (or b!7020829 b_lambda!265077)))

(declare-fun bs!1867558 () Bool)

(declare-fun d!2188520 () Bool)

(assert (= bs!1867558 (and d!2188520 b!7020829)))

(declare-fun lt!2512001 () Unit!161458)

(assert (=> bs!1867558 (= lt!2512001 (lemmaConcatPreservesForall!724 (exprs!6884 lt!2512000) (exprs!6884 ct2!306) lambda!411346))))

(assert (=> bs!1867558 (= (dynLambda!27231 lambda!411345 lt!2512000) (Context!12769 (++!15431 (exprs!6884 lt!2512000) (exprs!6884 ct2!306))))))

(declare-fun m!7722908 () Bool)

(assert (=> bs!1867558 m!7722908))

(declare-fun m!7722910 () Bool)

(assert (=> bs!1867558 m!7722910))

(assert (=> d!2188510 d!2188520))

(push 1)

(assert (not bs!1867556))

(assert (not b!7020970))

(assert (not d!2188468))

(assert (not b!7020972))

(assert (not d!2188486))

(assert (not d!2188450))

(assert (not d!2188464))

(assert (not b!7020996))

(assert (not bs!1867558))

(assert (not b!7020922))

(assert (not d!2188440))

(assert (not b!7020963))

(assert (not d!2188446))

(assert (not d!2188504))

(assert (not b!7021034))

(assert (not d!2188442))

(assert (not d!2188484))

(assert (not d!2188510))

(assert (not b!7020968))

(assert (not b!7021007))

(assert (not b!7020930))

(assert (not d!2188490))

(assert (not d!2188466))

(assert (not setNonEmpty!48699))

(assert (not b!7020934))

(assert (not b!7020937))

(assert (not b!7020931))

(assert (not b!7021006))

(assert (not b!7020969))

(assert (not d!2188436))

(assert (not d!2188482))

(assert (not b!7020960))

(assert (not b!7020986))

(assert (not b!7020965))

(assert (not bm!637620))

(assert (not d!2188494))

(assert (not d!2188496))

(assert (not b!7020961))

(assert (not b!7020987))

(assert (not b!7020956))

(assert (not b!7020959))

(assert (not b!7020979))

(assert (not b_lambda!265073))

(assert (not d!2188478))

(assert (not b!7020925))

(assert (not b!7020909))

(assert (not b!7020899))

(assert (not b!7021033))

(assert (not d!2188456))

(assert (not d!2188498))

(assert (not d!2188476))

(assert (not d!2188438))

(assert (not b!7021023))

(assert (not b!7021028))

(assert (not b!7020898))

(assert (not d!2188460))

(assert (not d!2188444))

(assert (not d!2188470))

(assert (not b!7020929))

(assert (not b!7020932))

(assert (not d!2188458))

(assert (not b!7020933))

(assert (not d!2188462))

(assert (not b!7020962))

(assert (not b!7020910))

(assert (not d!2188452))

(assert (not d!2188454))

(assert (not b_lambda!265077))

(assert (not b!7020971))

(assert (not d!2188506))

(assert tp_is_empty!44001)

(assert (not bs!1867557))

(assert (not b_lambda!265075))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

