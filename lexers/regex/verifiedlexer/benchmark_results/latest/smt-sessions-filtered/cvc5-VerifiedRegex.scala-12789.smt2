; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!707502 () Bool)

(assert start!707502)

(declare-fun b!7260459 () Bool)

(declare-fun e!4353710 () Bool)

(declare-fun tp_is_empty!46837 () Bool)

(declare-fun tp!2038758 () Bool)

(assert (=> b!7260459 (= e!4353710 (and tp_is_empty!46837 tp!2038758))))

(declare-fun b!7260460 () Bool)

(declare-fun res!2943933 () Bool)

(declare-fun e!4353709 () Bool)

(assert (=> b!7260460 (=> (not res!2943933) (not e!4353709))))

(declare-datatypes ((C!37646 0))(
  ( (C!37647 (val!28771 Int)) )
))
(declare-datatypes ((Regex!18686 0))(
  ( (ElementMatch!18686 (c!1350712 C!37646)) (Concat!27531 (regOne!37884 Regex!18686) (regTwo!37884 Regex!18686)) (EmptyExpr!18686) (Star!18686 (reg!19015 Regex!18686)) (EmptyLang!18686) (Union!18686 (regOne!37885 Regex!18686) (regTwo!37885 Regex!18686)) )
))
(declare-datatypes ((List!70638 0))(
  ( (Nil!70514) (Cons!70514 (h!76962 Regex!18686) (t!384704 List!70638)) )
))
(declare-datatypes ((Context!15252 0))(
  ( (Context!15253 (exprs!8126 List!70638)) )
))
(declare-fun lt!2590596 () (Set Context!15252))

(declare-fun nullableZipper!2938 ((Set Context!15252)) Bool)

(assert (=> b!7260460 (= res!2943933 (nullableZipper!2938 lt!2590596))))

(declare-fun b!7260461 () Bool)

(declare-fun e!4353712 () Bool)

(declare-fun tp!2038756 () Bool)

(assert (=> b!7260461 (= e!4353712 (and tp_is_empty!46837 tp!2038756))))

(declare-fun b!7260462 () Bool)

(declare-fun res!2943935 () Bool)

(declare-fun e!4353714 () Bool)

(assert (=> b!7260462 (=> (not res!2943935) (not e!4353714))))

(declare-fun ct2!328 () Context!15252)

(declare-datatypes ((List!70639 0))(
  ( (Nil!70515) (Cons!70515 (h!76963 C!37646) (t!384705 List!70639)) )
))
(declare-fun s2!1849 () List!70639)

(declare-fun matchZipper!3596 ((Set Context!15252) List!70639) Bool)

(assert (=> b!7260462 (= res!2943935 (matchZipper!3596 (set.insert ct2!328 (as set.empty (Set Context!15252))) s2!1849))))

(declare-fun b!7260463 () Bool)

(assert (=> b!7260463 (= e!4353714 e!4353709)))

(declare-fun res!2943934 () Bool)

(assert (=> b!7260463 (=> (not res!2943934) (not e!4353709))))

(declare-fun ct1!232 () Context!15252)

(declare-fun s1!1971 () List!70639)

(assert (=> b!7260463 (= res!2943934 (and (not (is-Nil!70514 (exprs!8126 ct1!232))) (not (is-Cons!70515 s1!1971))))))

(declare-fun lt!2590593 () Context!15252)

(declare-fun ++!16634 (List!70638 List!70638) List!70638)

(assert (=> b!7260463 (= lt!2590593 (Context!15253 (++!16634 (exprs!8126 ct1!232) (exprs!8126 ct2!328))))))

(declare-datatypes ((Unit!164014 0))(
  ( (Unit!164015) )
))
(declare-fun lt!2590595 () Unit!164014)

(declare-fun lambda!446456 () Int)

(declare-fun lemmaConcatPreservesForall!1493 (List!70638 List!70638 Int) Unit!164014)

(assert (=> b!7260463 (= lt!2590595 (lemmaConcatPreservesForall!1493 (exprs!8126 ct1!232) (exprs!8126 ct2!328) lambda!446456))))

(declare-fun res!2943931 () Bool)

(assert (=> start!707502 (=> (not res!2943931) (not e!4353714))))

(assert (=> start!707502 (= res!2943931 (matchZipper!3596 lt!2590596 s1!1971))))

(assert (=> start!707502 (= lt!2590596 (set.insert ct1!232 (as set.empty (Set Context!15252))))))

(assert (=> start!707502 e!4353714))

(declare-fun e!4353713 () Bool)

(declare-fun inv!89726 (Context!15252) Bool)

(assert (=> start!707502 (and (inv!89726 ct1!232) e!4353713)))

(assert (=> start!707502 e!4353712))

(assert (=> start!707502 e!4353710))

(declare-fun e!4353711 () Bool)

(assert (=> start!707502 (and (inv!89726 ct2!328) e!4353711)))

(declare-fun b!7260464 () Bool)

(assert (=> b!7260464 (= e!4353709 (not (inv!89726 lt!2590593)))))

(declare-fun lt!2590598 () Unit!164014)

(assert (=> b!7260464 (= lt!2590598 (lemmaConcatPreservesForall!1493 (exprs!8126 ct1!232) (exprs!8126 ct2!328) lambda!446456))))

(assert (=> b!7260464 (matchZipper!3596 (set.insert lt!2590593 (as set.empty (Set Context!15252))) s2!1849)))

(declare-fun lt!2590594 () Unit!164014)

(assert (=> b!7260464 (= lt!2590594 (lemmaConcatPreservesForall!1493 (exprs!8126 ct1!232) (exprs!8126 ct2!328) lambda!446456))))

(declare-fun lt!2590597 () Unit!164014)

(declare-fun lemmaPrependingNullableCtxStillMatches!5 (Context!15252 Context!15252 List!70639) Unit!164014)

(assert (=> b!7260464 (= lt!2590597 (lemmaPrependingNullableCtxStillMatches!5 ct1!232 ct2!328 s2!1849))))

(declare-fun b!7260465 () Bool)

(declare-fun res!2943932 () Bool)

(assert (=> b!7260465 (=> (not res!2943932) (not e!4353709))))

(declare-fun nullableContext!222 (Context!15252) Bool)

(assert (=> b!7260465 (= res!2943932 (nullableContext!222 ct1!232))))

(declare-fun b!7260466 () Bool)

(declare-fun tp!2038757 () Bool)

(assert (=> b!7260466 (= e!4353713 tp!2038757)))

(declare-fun b!7260467 () Bool)

(declare-fun tp!2038755 () Bool)

(assert (=> b!7260467 (= e!4353711 tp!2038755)))

(declare-fun b!7260468 () Bool)

(declare-fun res!2943936 () Bool)

(assert (=> b!7260468 (=> (not res!2943936) (not e!4353709))))

(declare-fun lambda!446457 () Int)

(declare-fun getWitness!2268 ((Set Context!15252) Int) Context!15252)

(assert (=> b!7260468 (= res!2943936 (= ct1!232 (getWitness!2268 lt!2590596 lambda!446457)))))

(assert (= (and start!707502 res!2943931) b!7260462))

(assert (= (and b!7260462 res!2943935) b!7260463))

(assert (= (and b!7260463 res!2943934) b!7260460))

(assert (= (and b!7260460 res!2943933) b!7260468))

(assert (= (and b!7260468 res!2943936) b!7260465))

(assert (= (and b!7260465 res!2943932) b!7260464))

(assert (= start!707502 b!7260466))

(assert (= (and start!707502 (is-Cons!70515 s1!1971)) b!7260461))

(assert (= (and start!707502 (is-Cons!70515 s2!1849)) b!7260459))

(assert (= start!707502 b!7260467))

(declare-fun m!7945060 () Bool)

(assert (=> b!7260460 m!7945060))

(declare-fun m!7945062 () Bool)

(assert (=> b!7260465 m!7945062))

(declare-fun m!7945064 () Bool)

(assert (=> start!707502 m!7945064))

(declare-fun m!7945066 () Bool)

(assert (=> start!707502 m!7945066))

(declare-fun m!7945068 () Bool)

(assert (=> start!707502 m!7945068))

(declare-fun m!7945070 () Bool)

(assert (=> start!707502 m!7945070))

(declare-fun m!7945072 () Bool)

(assert (=> b!7260463 m!7945072))

(declare-fun m!7945074 () Bool)

(assert (=> b!7260463 m!7945074))

(declare-fun m!7945076 () Bool)

(assert (=> b!7260468 m!7945076))

(declare-fun m!7945078 () Bool)

(assert (=> b!7260462 m!7945078))

(assert (=> b!7260462 m!7945078))

(declare-fun m!7945080 () Bool)

(assert (=> b!7260462 m!7945080))

(assert (=> b!7260464 m!7945074))

(declare-fun m!7945082 () Bool)

(assert (=> b!7260464 m!7945082))

(declare-fun m!7945084 () Bool)

(assert (=> b!7260464 m!7945084))

(assert (=> b!7260464 m!7945082))

(declare-fun m!7945086 () Bool)

(assert (=> b!7260464 m!7945086))

(assert (=> b!7260464 m!7945074))

(declare-fun m!7945088 () Bool)

(assert (=> b!7260464 m!7945088))

(push 1)

(assert (not b!7260466))

(assert (not start!707502))

(assert (not b!7260463))

(assert (not b!7260461))

(assert (not b!7260462))

(assert (not b!7260465))

(assert tp_is_empty!46837)

(assert (not b!7260464))

(assert (not b!7260460))

(assert (not b!7260468))

(assert (not b!7260467))

(assert (not b!7260459))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1909264 () Bool)

(declare-fun d!2258816 () Bool)

(assert (= bs!1909264 (and d!2258816 b!7260463)))

(declare-fun lambda!446470 () Int)

(assert (=> bs!1909264 (= lambda!446470 lambda!446456)))

(declare-fun forall!17541 (List!70638 Int) Bool)

(assert (=> d!2258816 (= (inv!89726 lt!2590593) (forall!17541 (exprs!8126 lt!2590593) lambda!446470))))

(declare-fun bs!1909265 () Bool)

(assert (= bs!1909265 d!2258816))

(declare-fun m!7945120 () Bool)

(assert (=> bs!1909265 m!7945120))

(assert (=> b!7260464 d!2258816))

(declare-fun d!2258818 () Bool)

(declare-fun c!1350718 () Bool)

(declare-fun isEmpty!40604 (List!70639) Bool)

(assert (=> d!2258818 (= c!1350718 (isEmpty!40604 s2!1849))))

(declare-fun e!4353735 () Bool)

(assert (=> d!2258818 (= (matchZipper!3596 (set.insert lt!2590593 (as set.empty (Set Context!15252))) s2!1849) e!4353735)))

(declare-fun b!7260503 () Bool)

(assert (=> b!7260503 (= e!4353735 (nullableZipper!2938 (set.insert lt!2590593 (as set.empty (Set Context!15252)))))))

(declare-fun b!7260504 () Bool)

(declare-fun derivationStepZipper!3464 ((Set Context!15252) C!37646) (Set Context!15252))

(declare-fun head!14937 (List!70639) C!37646)

(declare-fun tail!14396 (List!70639) List!70639)

(assert (=> b!7260504 (= e!4353735 (matchZipper!3596 (derivationStepZipper!3464 (set.insert lt!2590593 (as set.empty (Set Context!15252))) (head!14937 s2!1849)) (tail!14396 s2!1849)))))

(assert (= (and d!2258818 c!1350718) b!7260503))

(assert (= (and d!2258818 (not c!1350718)) b!7260504))

(declare-fun m!7945122 () Bool)

(assert (=> d!2258818 m!7945122))

(assert (=> b!7260503 m!7945082))

(declare-fun m!7945124 () Bool)

(assert (=> b!7260503 m!7945124))

(declare-fun m!7945126 () Bool)

(assert (=> b!7260504 m!7945126))

(assert (=> b!7260504 m!7945082))

(assert (=> b!7260504 m!7945126))

(declare-fun m!7945128 () Bool)

(assert (=> b!7260504 m!7945128))

(declare-fun m!7945130 () Bool)

(assert (=> b!7260504 m!7945130))

(assert (=> b!7260504 m!7945128))

(assert (=> b!7260504 m!7945130))

(declare-fun m!7945132 () Bool)

(assert (=> b!7260504 m!7945132))

(assert (=> b!7260464 d!2258818))

(declare-fun d!2258822 () Bool)

(assert (=> d!2258822 (forall!17541 (++!16634 (exprs!8126 ct1!232) (exprs!8126 ct2!328)) lambda!446456)))

(declare-fun lt!2590619 () Unit!164014)

(declare-fun choose!56223 (List!70638 List!70638 Int) Unit!164014)

(assert (=> d!2258822 (= lt!2590619 (choose!56223 (exprs!8126 ct1!232) (exprs!8126 ct2!328) lambda!446456))))

(assert (=> d!2258822 (forall!17541 (exprs!8126 ct1!232) lambda!446456)))

(assert (=> d!2258822 (= (lemmaConcatPreservesForall!1493 (exprs!8126 ct1!232) (exprs!8126 ct2!328) lambda!446456) lt!2590619)))

(declare-fun bs!1909266 () Bool)

(assert (= bs!1909266 d!2258822))

(assert (=> bs!1909266 m!7945072))

(assert (=> bs!1909266 m!7945072))

(declare-fun m!7945134 () Bool)

(assert (=> bs!1909266 m!7945134))

(declare-fun m!7945136 () Bool)

(assert (=> bs!1909266 m!7945136))

(declare-fun m!7945138 () Bool)

(assert (=> bs!1909266 m!7945138))

(assert (=> b!7260464 d!2258822))

(declare-fun bs!1909267 () Bool)

(declare-fun d!2258824 () Bool)

(assert (= bs!1909267 (and d!2258824 b!7260463)))

(declare-fun lambda!446473 () Int)

(assert (=> bs!1909267 (= lambda!446473 lambda!446456)))

(declare-fun bs!1909268 () Bool)

(assert (= bs!1909268 (and d!2258824 d!2258816)))

(assert (=> bs!1909268 (= lambda!446473 lambda!446470)))

(assert (=> d!2258824 (matchZipper!3596 (set.insert (Context!15253 (++!16634 (exprs!8126 ct1!232) (exprs!8126 ct2!328))) (as set.empty (Set Context!15252))) s2!1849)))

(declare-fun lt!2590627 () Unit!164014)

(assert (=> d!2258824 (= lt!2590627 (lemmaConcatPreservesForall!1493 (exprs!8126 ct1!232) (exprs!8126 ct2!328) lambda!446473))))

(declare-fun lt!2590626 () Unit!164014)

(declare-fun choose!56224 (Context!15252 Context!15252 List!70639) Unit!164014)

(assert (=> d!2258824 (= lt!2590626 (choose!56224 ct1!232 ct2!328 s2!1849))))

(assert (=> d!2258824 (matchZipper!3596 (set.insert ct2!328 (as set.empty (Set Context!15252))) s2!1849)))

(assert (=> d!2258824 (= (lemmaPrependingNullableCtxStillMatches!5 ct1!232 ct2!328 s2!1849) lt!2590626)))

(declare-fun bs!1909269 () Bool)

(assert (= bs!1909269 d!2258824))

(declare-fun m!7945140 () Bool)

(assert (=> bs!1909269 m!7945140))

(declare-fun m!7945142 () Bool)

(assert (=> bs!1909269 m!7945142))

(assert (=> bs!1909269 m!7945140))

(declare-fun m!7945144 () Bool)

(assert (=> bs!1909269 m!7945144))

(assert (=> bs!1909269 m!7945078))

(assert (=> bs!1909269 m!7945080))

(assert (=> bs!1909269 m!7945072))

(declare-fun m!7945146 () Bool)

(assert (=> bs!1909269 m!7945146))

(assert (=> bs!1909269 m!7945078))

(assert (=> b!7260464 d!2258824))

(declare-fun d!2258826 () Bool)

(declare-fun c!1350722 () Bool)

(assert (=> d!2258826 (= c!1350722 (isEmpty!40604 s1!1971))))

(declare-fun e!4353742 () Bool)

(assert (=> d!2258826 (= (matchZipper!3596 lt!2590596 s1!1971) e!4353742)))

(declare-fun b!7260517 () Bool)

(assert (=> b!7260517 (= e!4353742 (nullableZipper!2938 lt!2590596))))

(declare-fun b!7260518 () Bool)

(assert (=> b!7260518 (= e!4353742 (matchZipper!3596 (derivationStepZipper!3464 lt!2590596 (head!14937 s1!1971)) (tail!14396 s1!1971)))))

(assert (= (and d!2258826 c!1350722) b!7260517))

(assert (= (and d!2258826 (not c!1350722)) b!7260518))

(declare-fun m!7945148 () Bool)

(assert (=> d!2258826 m!7945148))

(assert (=> b!7260517 m!7945060))

(declare-fun m!7945150 () Bool)

(assert (=> b!7260518 m!7945150))

(assert (=> b!7260518 m!7945150))

(declare-fun m!7945152 () Bool)

(assert (=> b!7260518 m!7945152))

(declare-fun m!7945154 () Bool)

(assert (=> b!7260518 m!7945154))

(assert (=> b!7260518 m!7945152))

(assert (=> b!7260518 m!7945154))

(declare-fun m!7945156 () Bool)

(assert (=> b!7260518 m!7945156))

(assert (=> start!707502 d!2258826))

(declare-fun bs!1909270 () Bool)

(declare-fun d!2258828 () Bool)

(assert (= bs!1909270 (and d!2258828 b!7260463)))

(declare-fun lambda!446474 () Int)

(assert (=> bs!1909270 (= lambda!446474 lambda!446456)))

(declare-fun bs!1909271 () Bool)

(assert (= bs!1909271 (and d!2258828 d!2258816)))

(assert (=> bs!1909271 (= lambda!446474 lambda!446470)))

(declare-fun bs!1909272 () Bool)

(assert (= bs!1909272 (and d!2258828 d!2258824)))

(assert (=> bs!1909272 (= lambda!446474 lambda!446473)))

(assert (=> d!2258828 (= (inv!89726 ct1!232) (forall!17541 (exprs!8126 ct1!232) lambda!446474))))

(declare-fun bs!1909273 () Bool)

(assert (= bs!1909273 d!2258828))

(declare-fun m!7945164 () Bool)

(assert (=> bs!1909273 m!7945164))

(assert (=> start!707502 d!2258828))

(declare-fun bs!1909274 () Bool)

(declare-fun d!2258830 () Bool)

(assert (= bs!1909274 (and d!2258830 b!7260463)))

(declare-fun lambda!446475 () Int)

(assert (=> bs!1909274 (= lambda!446475 lambda!446456)))

(declare-fun bs!1909275 () Bool)

(assert (= bs!1909275 (and d!2258830 d!2258816)))

(assert (=> bs!1909275 (= lambda!446475 lambda!446470)))

(declare-fun bs!1909276 () Bool)

(assert (= bs!1909276 (and d!2258830 d!2258824)))

(assert (=> bs!1909276 (= lambda!446475 lambda!446473)))

(declare-fun bs!1909277 () Bool)

(assert (= bs!1909277 (and d!2258830 d!2258828)))

(assert (=> bs!1909277 (= lambda!446475 lambda!446474)))

(assert (=> d!2258830 (= (inv!89726 ct2!328) (forall!17541 (exprs!8126 ct2!328) lambda!446475))))

(declare-fun bs!1909278 () Bool)

(assert (= bs!1909278 d!2258830))

(declare-fun m!7945174 () Bool)

(assert (=> bs!1909278 m!7945174))

(assert (=> start!707502 d!2258830))

(declare-fun d!2258834 () Bool)

(declare-fun e!4353748 () Bool)

(assert (=> d!2258834 e!4353748))

(declare-fun res!2943966 () Bool)

(assert (=> d!2258834 (=> (not res!2943966) (not e!4353748))))

(declare-fun lt!2590633 () List!70638)

(declare-fun content!14685 (List!70638) (Set Regex!18686))

(assert (=> d!2258834 (= res!2943966 (= (content!14685 lt!2590633) (set.union (content!14685 (exprs!8126 ct1!232)) (content!14685 (exprs!8126 ct2!328)))))))

(declare-fun e!4353747 () List!70638)

(assert (=> d!2258834 (= lt!2590633 e!4353747)))

(declare-fun c!1350725 () Bool)

(assert (=> d!2258834 (= c!1350725 (is-Nil!70514 (exprs!8126 ct1!232)))))

(assert (=> d!2258834 (= (++!16634 (exprs!8126 ct1!232) (exprs!8126 ct2!328)) lt!2590633)))

(declare-fun b!7260527 () Bool)

(assert (=> b!7260527 (= e!4353747 (exprs!8126 ct2!328))))

(declare-fun b!7260529 () Bool)

(declare-fun res!2943965 () Bool)

(assert (=> b!7260529 (=> (not res!2943965) (not e!4353748))))

(declare-fun size!41764 (List!70638) Int)

(assert (=> b!7260529 (= res!2943965 (= (size!41764 lt!2590633) (+ (size!41764 (exprs!8126 ct1!232)) (size!41764 (exprs!8126 ct2!328)))))))

(declare-fun b!7260528 () Bool)

(assert (=> b!7260528 (= e!4353747 (Cons!70514 (h!76962 (exprs!8126 ct1!232)) (++!16634 (t!384704 (exprs!8126 ct1!232)) (exprs!8126 ct2!328))))))

(declare-fun b!7260530 () Bool)

(assert (=> b!7260530 (= e!4353748 (or (not (= (exprs!8126 ct2!328) Nil!70514)) (= lt!2590633 (exprs!8126 ct1!232))))))

(assert (= (and d!2258834 c!1350725) b!7260527))

(assert (= (and d!2258834 (not c!1350725)) b!7260528))

(assert (= (and d!2258834 res!2943966) b!7260529))

(assert (= (and b!7260529 res!2943965) b!7260530))

(declare-fun m!7945176 () Bool)

(assert (=> d!2258834 m!7945176))

(declare-fun m!7945178 () Bool)

(assert (=> d!2258834 m!7945178))

(declare-fun m!7945180 () Bool)

(assert (=> d!2258834 m!7945180))

(declare-fun m!7945182 () Bool)

(assert (=> b!7260529 m!7945182))

(declare-fun m!7945184 () Bool)

(assert (=> b!7260529 m!7945184))

(declare-fun m!7945186 () Bool)

(assert (=> b!7260529 m!7945186))

(declare-fun m!7945188 () Bool)

(assert (=> b!7260528 m!7945188))

(assert (=> b!7260463 d!2258834))

(assert (=> b!7260463 d!2258822))

(declare-fun d!2258836 () Bool)

(declare-fun e!4353751 () Bool)

(assert (=> d!2258836 e!4353751))

(declare-fun res!2943969 () Bool)

(assert (=> d!2258836 (=> (not res!2943969) (not e!4353751))))

(declare-fun lt!2590637 () Context!15252)

(declare-fun dynLambda!28820 (Int Context!15252) Bool)

(assert (=> d!2258836 (= res!2943969 (dynLambda!28820 lambda!446457 lt!2590637))))

(declare-datatypes ((List!70642 0))(
  ( (Nil!70518) (Cons!70518 (h!76966 Context!15252) (t!384708 List!70642)) )
))
(declare-fun getWitness!2270 (List!70642 Int) Context!15252)

(declare-fun toList!11515 ((Set Context!15252)) List!70642)

(assert (=> d!2258836 (= lt!2590637 (getWitness!2270 (toList!11515 lt!2590596) lambda!446457))))

(declare-fun exists!4450 ((Set Context!15252) Int) Bool)

(assert (=> d!2258836 (exists!4450 lt!2590596 lambda!446457)))

(assert (=> d!2258836 (= (getWitness!2268 lt!2590596 lambda!446457) lt!2590637)))

(declare-fun b!7260533 () Bool)

(assert (=> b!7260533 (= e!4353751 (set.member lt!2590637 lt!2590596))))

(assert (= (and d!2258836 res!2943969) b!7260533))

(declare-fun b_lambda!279273 () Bool)

(assert (=> (not b_lambda!279273) (not d!2258836)))

(declare-fun m!7945196 () Bool)

(assert (=> d!2258836 m!7945196))

(declare-fun m!7945198 () Bool)

(assert (=> d!2258836 m!7945198))

(assert (=> d!2258836 m!7945198))

(declare-fun m!7945200 () Bool)

(assert (=> d!2258836 m!7945200))

(declare-fun m!7945202 () Bool)

(assert (=> d!2258836 m!7945202))

(declare-fun m!7945204 () Bool)

(assert (=> b!7260533 m!7945204))

(assert (=> b!7260468 d!2258836))

(declare-fun d!2258840 () Bool)

(declare-fun c!1350728 () Bool)

(assert (=> d!2258840 (= c!1350728 (isEmpty!40604 s2!1849))))

(declare-fun e!4353752 () Bool)

(assert (=> d!2258840 (= (matchZipper!3596 (set.insert ct2!328 (as set.empty (Set Context!15252))) s2!1849) e!4353752)))

(declare-fun b!7260534 () Bool)

(assert (=> b!7260534 (= e!4353752 (nullableZipper!2938 (set.insert ct2!328 (as set.empty (Set Context!15252)))))))

(declare-fun b!7260535 () Bool)

(assert (=> b!7260535 (= e!4353752 (matchZipper!3596 (derivationStepZipper!3464 (set.insert ct2!328 (as set.empty (Set Context!15252))) (head!14937 s2!1849)) (tail!14396 s2!1849)))))

(assert (= (and d!2258840 c!1350728) b!7260534))

(assert (= (and d!2258840 (not c!1350728)) b!7260535))

(assert (=> d!2258840 m!7945122))

(assert (=> b!7260534 m!7945078))

(declare-fun m!7945206 () Bool)

(assert (=> b!7260534 m!7945206))

(assert (=> b!7260535 m!7945126))

(assert (=> b!7260535 m!7945078))

(assert (=> b!7260535 m!7945126))

(declare-fun m!7945208 () Bool)

(assert (=> b!7260535 m!7945208))

(assert (=> b!7260535 m!7945130))

(assert (=> b!7260535 m!7945208))

(assert (=> b!7260535 m!7945130))

(declare-fun m!7945210 () Bool)

(assert (=> b!7260535 m!7945210))

(assert (=> b!7260462 d!2258840))

(declare-fun bs!1909282 () Bool)

(declare-fun d!2258842 () Bool)

(assert (= bs!1909282 (and d!2258842 b!7260468)))

(declare-fun lambda!446481 () Int)

(assert (=> bs!1909282 (= lambda!446481 lambda!446457)))

(assert (=> d!2258842 (= (nullableZipper!2938 lt!2590596) (exists!4450 lt!2590596 lambda!446481))))

(declare-fun bs!1909283 () Bool)

(assert (= bs!1909283 d!2258842))

(declare-fun m!7945214 () Bool)

(assert (=> bs!1909283 m!7945214))

(assert (=> b!7260460 d!2258842))

(declare-fun bs!1909284 () Bool)

(declare-fun d!2258846 () Bool)

(assert (= bs!1909284 (and d!2258846 d!2258824)))

(declare-fun lambda!446486 () Int)

(assert (=> bs!1909284 (not (= lambda!446486 lambda!446473))))

(declare-fun bs!1909285 () Bool)

(assert (= bs!1909285 (and d!2258846 d!2258830)))

(assert (=> bs!1909285 (not (= lambda!446486 lambda!446475))))

(declare-fun bs!1909286 () Bool)

(assert (= bs!1909286 (and d!2258846 d!2258828)))

(assert (=> bs!1909286 (not (= lambda!446486 lambda!446474))))

(declare-fun bs!1909287 () Bool)

(assert (= bs!1909287 (and d!2258846 d!2258816)))

(assert (=> bs!1909287 (not (= lambda!446486 lambda!446470))))

(declare-fun bs!1909288 () Bool)

(assert (= bs!1909288 (and d!2258846 b!7260463)))

(assert (=> bs!1909288 (not (= lambda!446486 lambda!446456))))

(assert (=> d!2258846 (= (nullableContext!222 ct1!232) (forall!17541 (exprs!8126 ct1!232) lambda!446486))))

(declare-fun bs!1909289 () Bool)

(assert (= bs!1909289 d!2258846))

(declare-fun m!7945216 () Bool)

(assert (=> bs!1909289 m!7945216))

(assert (=> b!7260465 d!2258846))

(declare-fun b!7260540 () Bool)

(declare-fun e!4353755 () Bool)

(declare-fun tp!2038773 () Bool)

(assert (=> b!7260540 (= e!4353755 (and tp_is_empty!46837 tp!2038773))))

(assert (=> b!7260459 (= tp!2038758 e!4353755)))

(assert (= (and b!7260459 (is-Cons!70515 (t!384705 s2!1849))) b!7260540))

(declare-fun b!7260545 () Bool)

(declare-fun e!4353758 () Bool)

(declare-fun tp!2038778 () Bool)

(declare-fun tp!2038779 () Bool)

(assert (=> b!7260545 (= e!4353758 (and tp!2038778 tp!2038779))))

(assert (=> b!7260467 (= tp!2038755 e!4353758)))

(assert (= (and b!7260467 (is-Cons!70514 (exprs!8126 ct2!328))) b!7260545))

(declare-fun b!7260546 () Bool)

(declare-fun e!4353759 () Bool)

(declare-fun tp!2038780 () Bool)

(assert (=> b!7260546 (= e!4353759 (and tp_is_empty!46837 tp!2038780))))

(assert (=> b!7260461 (= tp!2038756 e!4353759)))

(assert (= (and b!7260461 (is-Cons!70515 (t!384705 s1!1971))) b!7260546))

(declare-fun b!7260547 () Bool)

(declare-fun e!4353760 () Bool)

(declare-fun tp!2038781 () Bool)

(declare-fun tp!2038782 () Bool)

(assert (=> b!7260547 (= e!4353760 (and tp!2038781 tp!2038782))))

(assert (=> b!7260466 (= tp!2038757 e!4353760)))

(assert (= (and b!7260466 (is-Cons!70514 (exprs!8126 ct1!232))) b!7260547))

(declare-fun b_lambda!279275 () Bool)

(assert (= b_lambda!279273 (or b!7260468 b_lambda!279275)))

(declare-fun bs!1909292 () Bool)

(declare-fun d!2258850 () Bool)

(assert (= bs!1909292 (and d!2258850 b!7260468)))

(assert (=> bs!1909292 (= (dynLambda!28820 lambda!446457 lt!2590637) (nullableContext!222 lt!2590637))))

(declare-fun m!7945220 () Bool)

(assert (=> bs!1909292 m!7945220))

(assert (=> d!2258836 d!2258850))

(push 1)

(assert (not b!7260529))

(assert (not b!7260540))

(assert (not d!2258846))

(assert (not b!7260546))

(assert (not b!7260517))

(assert (not d!2258822))

(assert (not d!2258834))

(assert (not b!7260535))

(assert (not b!7260547))

(assert (not d!2258842))

(assert (not d!2258828))

(assert tp_is_empty!46837)

(assert (not d!2258818))

(assert (not d!2258816))

(assert (not b!7260528))

(assert (not d!2258830))

(assert (not bs!1909292))

(assert (not b!7260504))

(assert (not b!7260518))

(assert (not b!7260503))

(assert (not b!7260534))

(assert (not d!2258836))

(assert (not b!7260545))

(assert (not b_lambda!279275))

(assert (not d!2258840))

(assert (not d!2258824))

(assert (not d!2258826))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

