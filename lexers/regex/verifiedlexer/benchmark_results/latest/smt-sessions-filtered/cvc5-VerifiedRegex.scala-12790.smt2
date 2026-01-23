; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!707538 () Bool)

(assert start!707538)

(declare-fun b!7260593 () Bool)

(declare-fun e!4353794 () Bool)

(declare-fun tp!2038806 () Bool)

(assert (=> b!7260593 (= e!4353794 tp!2038806)))

(declare-fun b!7260594 () Bool)

(declare-fun res!2943985 () Bool)

(declare-fun e!4353792 () Bool)

(assert (=> b!7260594 (=> (not res!2943985) (not e!4353792))))

(declare-datatypes ((C!37650 0))(
  ( (C!37651 (val!28773 Int)) )
))
(declare-datatypes ((Regex!18688 0))(
  ( (ElementMatch!18688 (c!1350740 C!37650)) (Concat!27533 (regOne!37888 Regex!18688) (regTwo!37888 Regex!18688)) (EmptyExpr!18688) (Star!18688 (reg!19017 Regex!18688)) (EmptyLang!18688) (Union!18688 (regOne!37889 Regex!18688) (regTwo!37889 Regex!18688)) )
))
(declare-datatypes ((List!70643 0))(
  ( (Nil!70519) (Cons!70519 (h!76967 Regex!18688) (t!384709 List!70643)) )
))
(declare-datatypes ((Context!15256 0))(
  ( (Context!15257 (exprs!8128 List!70643)) )
))
(declare-fun ct1!232 () Context!15256)

(declare-fun lt!2590661 () (Set Context!15256))

(declare-fun lambda!446505 () Int)

(declare-fun getWitness!2271 ((Set Context!15256) Int) Context!15256)

(assert (=> b!7260594 (= res!2943985 (= ct1!232 (getWitness!2271 lt!2590661 lambda!446505)))))

(declare-fun b!7260595 () Bool)

(declare-fun e!4353791 () Bool)

(assert (=> b!7260595 (= e!4353791 e!4353792)))

(declare-fun res!2943989 () Bool)

(assert (=> b!7260595 (=> (not res!2943989) (not e!4353792))))

(declare-datatypes ((List!70644 0))(
  ( (Nil!70520) (Cons!70520 (h!76968 C!37650) (t!384710 List!70644)) )
))
(declare-fun s1!1971 () List!70644)

(assert (=> b!7260595 (= res!2943989 (and (not (is-Nil!70519 (exprs!8128 ct1!232))) (not (is-Cons!70520 s1!1971))))))

(declare-fun lt!2590660 () (Set Context!15256))

(declare-fun ct2!328 () Context!15256)

(declare-fun ++!16636 (List!70643 List!70643) List!70643)

(assert (=> b!7260595 (= lt!2590660 (set.insert (Context!15257 (++!16636 (exprs!8128 ct1!232) (exprs!8128 ct2!328))) (as set.empty (Set Context!15256))))))

(declare-fun lambda!446504 () Int)

(declare-datatypes ((Unit!164018 0))(
  ( (Unit!164019) )
))
(declare-fun lt!2590663 () Unit!164018)

(declare-fun lemmaConcatPreservesForall!1495 (List!70643 List!70643 Int) Unit!164018)

(assert (=> b!7260595 (= lt!2590663 (lemmaConcatPreservesForall!1495 (exprs!8128 ct1!232) (exprs!8128 ct2!328) lambda!446504))))

(declare-fun b!7260596 () Bool)

(declare-fun e!4353789 () Bool)

(declare-fun tp_is_empty!46841 () Bool)

(declare-fun tp!2038803 () Bool)

(assert (=> b!7260596 (= e!4353789 (and tp_is_empty!46841 tp!2038803))))

(declare-fun res!2943986 () Bool)

(assert (=> start!707538 (=> (not res!2943986) (not e!4353791))))

(declare-fun matchZipper!3598 ((Set Context!15256) List!70644) Bool)

(assert (=> start!707538 (= res!2943986 (matchZipper!3598 lt!2590661 s1!1971))))

(assert (=> start!707538 (= lt!2590661 (set.insert ct1!232 (as set.empty (Set Context!15256))))))

(assert (=> start!707538 e!4353791))

(declare-fun inv!89731 (Context!15256) Bool)

(assert (=> start!707538 (and (inv!89731 ct1!232) e!4353794)))

(declare-fun e!4353793 () Bool)

(assert (=> start!707538 e!4353793))

(assert (=> start!707538 e!4353789))

(declare-fun e!4353790 () Bool)

(assert (=> start!707538 (and (inv!89731 ct2!328) e!4353790)))

(declare-fun b!7260597 () Bool)

(declare-fun res!2943990 () Bool)

(assert (=> b!7260597 (=> (not res!2943990) (not e!4353791))))

(declare-fun s2!1849 () List!70644)

(assert (=> b!7260597 (= res!2943990 (matchZipper!3598 (set.insert ct2!328 (as set.empty (Set Context!15256))) s2!1849))))

(declare-fun b!7260598 () Bool)

(declare-fun tp!2038804 () Bool)

(assert (=> b!7260598 (= e!4353790 tp!2038804)))

(declare-fun b!7260599 () Bool)

(declare-fun res!2943988 () Bool)

(assert (=> b!7260599 (=> (not res!2943988) (not e!4353792))))

(declare-fun nullableContext!224 (Context!15256) Bool)

(assert (=> b!7260599 (= res!2943988 (nullableContext!224 ct1!232))))

(declare-fun b!7260600 () Bool)

(declare-fun ++!16637 (List!70644 List!70644) List!70644)

(assert (=> b!7260600 (= e!4353792 (not (matchZipper!3598 lt!2590660 (++!16637 s1!1971 s2!1849))))))

(declare-fun lt!2590662 () Unit!164018)

(assert (=> b!7260600 (= lt!2590662 (lemmaConcatPreservesForall!1495 (exprs!8128 ct1!232) (exprs!8128 ct2!328) lambda!446504))))

(assert (=> b!7260600 (matchZipper!3598 lt!2590660 s2!1849)))

(declare-fun lt!2590659 () Unit!164018)

(assert (=> b!7260600 (= lt!2590659 (lemmaConcatPreservesForall!1495 (exprs!8128 ct1!232) (exprs!8128 ct2!328) lambda!446504))))

(declare-fun lt!2590664 () Unit!164018)

(declare-fun lemmaPrependingNullableCtxStillMatches!7 (Context!15256 Context!15256 List!70644) Unit!164018)

(assert (=> b!7260600 (= lt!2590664 (lemmaPrependingNullableCtxStillMatches!7 ct1!232 ct2!328 s2!1849))))

(declare-fun b!7260601 () Bool)

(declare-fun tp!2038805 () Bool)

(assert (=> b!7260601 (= e!4353793 (and tp_is_empty!46841 tp!2038805))))

(declare-fun b!7260602 () Bool)

(declare-fun res!2943987 () Bool)

(assert (=> b!7260602 (=> (not res!2943987) (not e!4353792))))

(declare-fun nullableZipper!2940 ((Set Context!15256)) Bool)

(assert (=> b!7260602 (= res!2943987 (nullableZipper!2940 lt!2590661))))

(assert (= (and start!707538 res!2943986) b!7260597))

(assert (= (and b!7260597 res!2943990) b!7260595))

(assert (= (and b!7260595 res!2943989) b!7260602))

(assert (= (and b!7260602 res!2943987) b!7260594))

(assert (= (and b!7260594 res!2943985) b!7260599))

(assert (= (and b!7260599 res!2943988) b!7260600))

(assert (= start!707538 b!7260593))

(assert (= (and start!707538 (is-Cons!70520 s1!1971)) b!7260601))

(assert (= (and start!707538 (is-Cons!70520 s2!1849)) b!7260596))

(assert (= start!707538 b!7260598))

(declare-fun m!7945276 () Bool)

(assert (=> b!7260594 m!7945276))

(declare-fun m!7945278 () Bool)

(assert (=> b!7260599 m!7945278))

(declare-fun m!7945280 () Bool)

(assert (=> b!7260602 m!7945280))

(declare-fun m!7945282 () Bool)

(assert (=> start!707538 m!7945282))

(declare-fun m!7945284 () Bool)

(assert (=> start!707538 m!7945284))

(declare-fun m!7945286 () Bool)

(assert (=> start!707538 m!7945286))

(declare-fun m!7945288 () Bool)

(assert (=> start!707538 m!7945288))

(declare-fun m!7945290 () Bool)

(assert (=> b!7260600 m!7945290))

(declare-fun m!7945292 () Bool)

(assert (=> b!7260600 m!7945292))

(declare-fun m!7945294 () Bool)

(assert (=> b!7260600 m!7945294))

(assert (=> b!7260600 m!7945292))

(declare-fun m!7945296 () Bool)

(assert (=> b!7260600 m!7945296))

(declare-fun m!7945298 () Bool)

(assert (=> b!7260600 m!7945298))

(assert (=> b!7260600 m!7945296))

(declare-fun m!7945300 () Bool)

(assert (=> b!7260595 m!7945300))

(declare-fun m!7945302 () Bool)

(assert (=> b!7260595 m!7945302))

(assert (=> b!7260595 m!7945296))

(declare-fun m!7945304 () Bool)

(assert (=> b!7260597 m!7945304))

(assert (=> b!7260597 m!7945304))

(declare-fun m!7945306 () Bool)

(assert (=> b!7260597 m!7945306))

(push 1)

(assert (not b!7260596))

(assert (not b!7260602))

(assert (not b!7260598))

(assert (not b!7260599))

(assert (not b!7260595))

(assert (not b!7260601))

(assert tp_is_empty!46841)

(assert (not b!7260593))

(assert (not b!7260594))

(assert (not b!7260600))

(assert (not b!7260597))

(assert (not start!707538))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7260641 () Bool)

(declare-fun e!4353817 () List!70643)

(assert (=> b!7260641 (= e!4353817 (exprs!8128 ct2!328))))

(declare-fun b!7260642 () Bool)

(assert (=> b!7260642 (= e!4353817 (Cons!70519 (h!76967 (exprs!8128 ct1!232)) (++!16636 (t!384709 (exprs!8128 ct1!232)) (exprs!8128 ct2!328))))))

(declare-fun b!7260643 () Bool)

(declare-fun res!2944013 () Bool)

(declare-fun e!4353818 () Bool)

(assert (=> b!7260643 (=> (not res!2944013) (not e!4353818))))

(declare-fun lt!2590685 () List!70643)

(declare-fun size!41766 (List!70643) Int)

(assert (=> b!7260643 (= res!2944013 (= (size!41766 lt!2590685) (+ (size!41766 (exprs!8128 ct1!232)) (size!41766 (exprs!8128 ct2!328)))))))

(declare-fun b!7260644 () Bool)

(assert (=> b!7260644 (= e!4353818 (or (not (= (exprs!8128 ct2!328) Nil!70519)) (= lt!2590685 (exprs!8128 ct1!232))))))

(declare-fun d!2258869 () Bool)

(assert (=> d!2258869 e!4353818))

(declare-fun res!2944014 () Bool)

(assert (=> d!2258869 (=> (not res!2944014) (not e!4353818))))

(declare-fun content!14687 (List!70643) (Set Regex!18688))

(assert (=> d!2258869 (= res!2944014 (= (content!14687 lt!2590685) (set.union (content!14687 (exprs!8128 ct1!232)) (content!14687 (exprs!8128 ct2!328)))))))

(assert (=> d!2258869 (= lt!2590685 e!4353817)))

(declare-fun c!1350746 () Bool)

(assert (=> d!2258869 (= c!1350746 (is-Nil!70519 (exprs!8128 ct1!232)))))

(assert (=> d!2258869 (= (++!16636 (exprs!8128 ct1!232) (exprs!8128 ct2!328)) lt!2590685)))

(assert (= (and d!2258869 c!1350746) b!7260641))

(assert (= (and d!2258869 (not c!1350746)) b!7260642))

(assert (= (and d!2258869 res!2944014) b!7260643))

(assert (= (and b!7260643 res!2944013) b!7260644))

(declare-fun m!7945340 () Bool)

(assert (=> b!7260642 m!7945340))

(declare-fun m!7945342 () Bool)

(assert (=> b!7260643 m!7945342))

(declare-fun m!7945344 () Bool)

(assert (=> b!7260643 m!7945344))

(declare-fun m!7945346 () Bool)

(assert (=> b!7260643 m!7945346))

(declare-fun m!7945348 () Bool)

(assert (=> d!2258869 m!7945348))

(declare-fun m!7945350 () Bool)

(assert (=> d!2258869 m!7945350))

(declare-fun m!7945352 () Bool)

(assert (=> d!2258869 m!7945352))

(assert (=> b!7260595 d!2258869))

(declare-fun d!2258873 () Bool)

(declare-fun forall!17543 (List!70643 Int) Bool)

(assert (=> d!2258873 (forall!17543 (++!16636 (exprs!8128 ct1!232) (exprs!8128 ct2!328)) lambda!446504)))

(declare-fun lt!2590688 () Unit!164018)

(declare-fun choose!56227 (List!70643 List!70643 Int) Unit!164018)

(assert (=> d!2258873 (= lt!2590688 (choose!56227 (exprs!8128 ct1!232) (exprs!8128 ct2!328) lambda!446504))))

(assert (=> d!2258873 (forall!17543 (exprs!8128 ct1!232) lambda!446504)))

(assert (=> d!2258873 (= (lemmaConcatPreservesForall!1495 (exprs!8128 ct1!232) (exprs!8128 ct2!328) lambda!446504) lt!2590688)))

(declare-fun bs!1909315 () Bool)

(assert (= bs!1909315 d!2258873))

(assert (=> bs!1909315 m!7945300))

(assert (=> bs!1909315 m!7945300))

(declare-fun m!7945354 () Bool)

(assert (=> bs!1909315 m!7945354))

(declare-fun m!7945356 () Bool)

(assert (=> bs!1909315 m!7945356))

(declare-fun m!7945358 () Bool)

(assert (=> bs!1909315 m!7945358))

(assert (=> b!7260595 d!2258873))

(declare-fun bs!1909317 () Bool)

(declare-fun d!2258875 () Bool)

(assert (= bs!1909317 (and d!2258875 b!7260595)))

(declare-fun lambda!446521 () Int)

(assert (=> bs!1909317 (= lambda!446521 lambda!446504)))

(assert (=> d!2258875 (matchZipper!3598 (set.insert (Context!15257 (++!16636 (exprs!8128 ct1!232) (exprs!8128 ct2!328))) (as set.empty (Set Context!15256))) s2!1849)))

(declare-fun lt!2590696 () Unit!164018)

(assert (=> d!2258875 (= lt!2590696 (lemmaConcatPreservesForall!1495 (exprs!8128 ct1!232) (exprs!8128 ct2!328) lambda!446521))))

(declare-fun lt!2590695 () Unit!164018)

(declare-fun choose!56228 (Context!15256 Context!15256 List!70644) Unit!164018)

(assert (=> d!2258875 (= lt!2590695 (choose!56228 ct1!232 ct2!328 s2!1849))))

(assert (=> d!2258875 (matchZipper!3598 (set.insert ct2!328 (as set.empty (Set Context!15256))) s2!1849)))

(assert (=> d!2258875 (= (lemmaPrependingNullableCtxStillMatches!7 ct1!232 ct2!328 s2!1849) lt!2590695)))

(declare-fun bs!1909318 () Bool)

(assert (= bs!1909318 d!2258875))

(declare-fun m!7945362 () Bool)

(assert (=> bs!1909318 m!7945362))

(assert (=> bs!1909318 m!7945304))

(declare-fun m!7945364 () Bool)

(assert (=> bs!1909318 m!7945364))

(assert (=> bs!1909318 m!7945300))

(assert (=> bs!1909318 m!7945302))

(declare-fun m!7945366 () Bool)

(assert (=> bs!1909318 m!7945366))

(assert (=> bs!1909318 m!7945302))

(assert (=> bs!1909318 m!7945304))

(assert (=> bs!1909318 m!7945306))

(assert (=> b!7260600 d!2258875))

(declare-fun d!2258879 () Bool)

(declare-fun c!1350753 () Bool)

(declare-fun isEmpty!40606 (List!70644) Bool)

(assert (=> d!2258879 (= c!1350753 (isEmpty!40606 s2!1849))))

(declare-fun e!4353827 () Bool)

(assert (=> d!2258879 (= (matchZipper!3598 lt!2590660 s2!1849) e!4353827)))

(declare-fun b!7260661 () Bool)

(assert (=> b!7260661 (= e!4353827 (nullableZipper!2940 lt!2590660))))

(declare-fun b!7260662 () Bool)

(declare-fun derivationStepZipper!3466 ((Set Context!15256) C!37650) (Set Context!15256))

(declare-fun head!14939 (List!70644) C!37650)

(declare-fun tail!14398 (List!70644) List!70644)

(assert (=> b!7260662 (= e!4353827 (matchZipper!3598 (derivationStepZipper!3466 lt!2590660 (head!14939 s2!1849)) (tail!14398 s2!1849)))))

(assert (= (and d!2258879 c!1350753) b!7260661))

(assert (= (and d!2258879 (not c!1350753)) b!7260662))

(declare-fun m!7945368 () Bool)

(assert (=> d!2258879 m!7945368))

(declare-fun m!7945370 () Bool)

(assert (=> b!7260661 m!7945370))

(declare-fun m!7945372 () Bool)

(assert (=> b!7260662 m!7945372))

(assert (=> b!7260662 m!7945372))

(declare-fun m!7945374 () Bool)

(assert (=> b!7260662 m!7945374))

(declare-fun m!7945376 () Bool)

(assert (=> b!7260662 m!7945376))

(assert (=> b!7260662 m!7945374))

(assert (=> b!7260662 m!7945376))

(declare-fun m!7945378 () Bool)

(assert (=> b!7260662 m!7945378))

(assert (=> b!7260600 d!2258879))

(assert (=> b!7260600 d!2258873))

(declare-fun b!7260671 () Bool)

(declare-fun e!4353832 () List!70644)

(assert (=> b!7260671 (= e!4353832 s2!1849)))

(declare-fun b!7260674 () Bool)

(declare-fun e!4353833 () Bool)

(declare-fun lt!2590700 () List!70644)

(assert (=> b!7260674 (= e!4353833 (or (not (= s2!1849 Nil!70520)) (= lt!2590700 s1!1971)))))

(declare-fun b!7260672 () Bool)

(assert (=> b!7260672 (= e!4353832 (Cons!70520 (h!76968 s1!1971) (++!16637 (t!384710 s1!1971) s2!1849)))))

(declare-fun d!2258881 () Bool)

(assert (=> d!2258881 e!4353833))

(declare-fun res!2944025 () Bool)

(assert (=> d!2258881 (=> (not res!2944025) (not e!4353833))))

(declare-fun content!14688 (List!70644) (Set C!37650))

(assert (=> d!2258881 (= res!2944025 (= (content!14688 lt!2590700) (set.union (content!14688 s1!1971) (content!14688 s2!1849))))))

(assert (=> d!2258881 (= lt!2590700 e!4353832)))

(declare-fun c!1350756 () Bool)

(assert (=> d!2258881 (= c!1350756 (is-Nil!70520 s1!1971))))

(assert (=> d!2258881 (= (++!16637 s1!1971 s2!1849) lt!2590700)))

(declare-fun b!7260673 () Bool)

(declare-fun res!2944026 () Bool)

(assert (=> b!7260673 (=> (not res!2944026) (not e!4353833))))

(declare-fun size!41767 (List!70644) Int)

(assert (=> b!7260673 (= res!2944026 (= (size!41767 lt!2590700) (+ (size!41767 s1!1971) (size!41767 s2!1849))))))

(assert (= (and d!2258881 c!1350756) b!7260671))

(assert (= (and d!2258881 (not c!1350756)) b!7260672))

(assert (= (and d!2258881 res!2944025) b!7260673))

(assert (= (and b!7260673 res!2944026) b!7260674))

(declare-fun m!7945394 () Bool)

(assert (=> b!7260672 m!7945394))

(declare-fun m!7945396 () Bool)

(assert (=> d!2258881 m!7945396))

(declare-fun m!7945398 () Bool)

(assert (=> d!2258881 m!7945398))

(declare-fun m!7945400 () Bool)

(assert (=> d!2258881 m!7945400))

(declare-fun m!7945402 () Bool)

(assert (=> b!7260673 m!7945402))

(declare-fun m!7945404 () Bool)

(assert (=> b!7260673 m!7945404))

(declare-fun m!7945406 () Bool)

(assert (=> b!7260673 m!7945406))

(assert (=> b!7260600 d!2258881))

(declare-fun d!2258885 () Bool)

(declare-fun c!1350757 () Bool)

(assert (=> d!2258885 (= c!1350757 (isEmpty!40606 (++!16637 s1!1971 s2!1849)))))

(declare-fun e!4353834 () Bool)

(assert (=> d!2258885 (= (matchZipper!3598 lt!2590660 (++!16637 s1!1971 s2!1849)) e!4353834)))

(declare-fun b!7260675 () Bool)

(assert (=> b!7260675 (= e!4353834 (nullableZipper!2940 lt!2590660))))

(declare-fun b!7260676 () Bool)

(assert (=> b!7260676 (= e!4353834 (matchZipper!3598 (derivationStepZipper!3466 lt!2590660 (head!14939 (++!16637 s1!1971 s2!1849))) (tail!14398 (++!16637 s1!1971 s2!1849))))))

(assert (= (and d!2258885 c!1350757) b!7260675))

(assert (= (and d!2258885 (not c!1350757)) b!7260676))

(assert (=> d!2258885 m!7945292))

(declare-fun m!7945408 () Bool)

(assert (=> d!2258885 m!7945408))

(assert (=> b!7260675 m!7945370))

(assert (=> b!7260676 m!7945292))

(declare-fun m!7945410 () Bool)

(assert (=> b!7260676 m!7945410))

(assert (=> b!7260676 m!7945410))

(declare-fun m!7945412 () Bool)

(assert (=> b!7260676 m!7945412))

(assert (=> b!7260676 m!7945292))

(declare-fun m!7945414 () Bool)

(assert (=> b!7260676 m!7945414))

(assert (=> b!7260676 m!7945412))

(assert (=> b!7260676 m!7945414))

(declare-fun m!7945416 () Bool)

(assert (=> b!7260676 m!7945416))

(assert (=> b!7260600 d!2258885))

(declare-fun bs!1909320 () Bool)

(declare-fun d!2258887 () Bool)

(assert (= bs!1909320 (and d!2258887 b!7260595)))

(declare-fun lambda!446524 () Int)

(assert (=> bs!1909320 (not (= lambda!446524 lambda!446504))))

(declare-fun bs!1909321 () Bool)

(assert (= bs!1909321 (and d!2258887 d!2258875)))

(assert (=> bs!1909321 (not (= lambda!446524 lambda!446521))))

(assert (=> d!2258887 (= (nullableContext!224 ct1!232) (forall!17543 (exprs!8128 ct1!232) lambda!446524))))

(declare-fun bs!1909322 () Bool)

(assert (= bs!1909322 d!2258887))

(declare-fun m!7945424 () Bool)

(assert (=> bs!1909322 m!7945424))

(assert (=> b!7260599 d!2258887))

(declare-fun d!2258891 () Bool)

(declare-fun e!4353837 () Bool)

(assert (=> d!2258891 e!4353837))

(declare-fun res!2944029 () Bool)

(assert (=> d!2258891 (=> (not res!2944029) (not e!4353837))))

(declare-fun lt!2590706 () Context!15256)

(declare-fun dynLambda!28821 (Int Context!15256) Bool)

(assert (=> d!2258891 (= res!2944029 (dynLambda!28821 lambda!446505 lt!2590706))))

(declare-datatypes ((List!70647 0))(
  ( (Nil!70523) (Cons!70523 (h!76971 Context!15256) (t!384713 List!70647)) )
))
(declare-fun getWitness!2273 (List!70647 Int) Context!15256)

(declare-fun toList!11516 ((Set Context!15256)) List!70647)

(assert (=> d!2258891 (= lt!2590706 (getWitness!2273 (toList!11516 lt!2590661) lambda!446505))))

(declare-fun exists!4452 ((Set Context!15256) Int) Bool)

(assert (=> d!2258891 (exists!4452 lt!2590661 lambda!446505)))

(assert (=> d!2258891 (= (getWitness!2271 lt!2590661 lambda!446505) lt!2590706)))

(declare-fun b!7260679 () Bool)

(assert (=> b!7260679 (= e!4353837 (set.member lt!2590706 lt!2590661))))

(assert (= (and d!2258891 res!2944029) b!7260679))

(declare-fun b_lambda!279281 () Bool)

(assert (=> (not b_lambda!279281) (not d!2258891)))

(declare-fun m!7945426 () Bool)

(assert (=> d!2258891 m!7945426))

(declare-fun m!7945428 () Bool)

(assert (=> d!2258891 m!7945428))

(assert (=> d!2258891 m!7945428))

(declare-fun m!7945430 () Bool)

(assert (=> d!2258891 m!7945430))

(declare-fun m!7945432 () Bool)

(assert (=> d!2258891 m!7945432))

(declare-fun m!7945434 () Bool)

(assert (=> b!7260679 m!7945434))

(assert (=> b!7260594 d!2258891))

(declare-fun d!2258893 () Bool)

(declare-fun c!1350759 () Bool)

(assert (=> d!2258893 (= c!1350759 (isEmpty!40606 s2!1849))))

(declare-fun e!4353838 () Bool)

(assert (=> d!2258893 (= (matchZipper!3598 (set.insert ct2!328 (as set.empty (Set Context!15256))) s2!1849) e!4353838)))

(declare-fun b!7260680 () Bool)

(assert (=> b!7260680 (= e!4353838 (nullableZipper!2940 (set.insert ct2!328 (as set.empty (Set Context!15256)))))))

(declare-fun b!7260681 () Bool)

(assert (=> b!7260681 (= e!4353838 (matchZipper!3598 (derivationStepZipper!3466 (set.insert ct2!328 (as set.empty (Set Context!15256))) (head!14939 s2!1849)) (tail!14398 s2!1849)))))

(assert (= (and d!2258893 c!1350759) b!7260680))

(assert (= (and d!2258893 (not c!1350759)) b!7260681))

(assert (=> d!2258893 m!7945368))

(assert (=> b!7260680 m!7945304))

(declare-fun m!7945436 () Bool)

(assert (=> b!7260680 m!7945436))

(assert (=> b!7260681 m!7945372))

(assert (=> b!7260681 m!7945304))

(assert (=> b!7260681 m!7945372))

(declare-fun m!7945438 () Bool)

(assert (=> b!7260681 m!7945438))

(assert (=> b!7260681 m!7945376))

(assert (=> b!7260681 m!7945438))

(assert (=> b!7260681 m!7945376))

(declare-fun m!7945440 () Bool)

(assert (=> b!7260681 m!7945440))

(assert (=> b!7260597 d!2258893))

(declare-fun d!2258895 () Bool)

(declare-fun c!1350760 () Bool)

(assert (=> d!2258895 (= c!1350760 (isEmpty!40606 s1!1971))))

(declare-fun e!4353839 () Bool)

(assert (=> d!2258895 (= (matchZipper!3598 lt!2590661 s1!1971) e!4353839)))

(declare-fun b!7260682 () Bool)

(assert (=> b!7260682 (= e!4353839 (nullableZipper!2940 lt!2590661))))

(declare-fun b!7260683 () Bool)

(assert (=> b!7260683 (= e!4353839 (matchZipper!3598 (derivationStepZipper!3466 lt!2590661 (head!14939 s1!1971)) (tail!14398 s1!1971)))))

(assert (= (and d!2258895 c!1350760) b!7260682))

(assert (= (and d!2258895 (not c!1350760)) b!7260683))

(declare-fun m!7945442 () Bool)

(assert (=> d!2258895 m!7945442))

(assert (=> b!7260682 m!7945280))

(declare-fun m!7945444 () Bool)

(assert (=> b!7260683 m!7945444))

(assert (=> b!7260683 m!7945444))

(declare-fun m!7945446 () Bool)

(assert (=> b!7260683 m!7945446))

(declare-fun m!7945448 () Bool)

(assert (=> b!7260683 m!7945448))

(assert (=> b!7260683 m!7945446))

(assert (=> b!7260683 m!7945448))

(declare-fun m!7945450 () Bool)

(assert (=> b!7260683 m!7945450))

(assert (=> start!707538 d!2258895))

(declare-fun bs!1909323 () Bool)

(declare-fun d!2258897 () Bool)

(assert (= bs!1909323 (and d!2258897 b!7260595)))

(declare-fun lambda!446527 () Int)

(assert (=> bs!1909323 (= lambda!446527 lambda!446504)))

(declare-fun bs!1909324 () Bool)

(assert (= bs!1909324 (and d!2258897 d!2258875)))

(assert (=> bs!1909324 (= lambda!446527 lambda!446521)))

(declare-fun bs!1909325 () Bool)

(assert (= bs!1909325 (and d!2258897 d!2258887)))

(assert (=> bs!1909325 (not (= lambda!446527 lambda!446524))))

(assert (=> d!2258897 (= (inv!89731 ct1!232) (forall!17543 (exprs!8128 ct1!232) lambda!446527))))

(declare-fun bs!1909326 () Bool)

(assert (= bs!1909326 d!2258897))

(declare-fun m!7945452 () Bool)

(assert (=> bs!1909326 m!7945452))

(assert (=> start!707538 d!2258897))

(declare-fun bs!1909327 () Bool)

(declare-fun d!2258899 () Bool)

(assert (= bs!1909327 (and d!2258899 b!7260595)))

(declare-fun lambda!446528 () Int)

(assert (=> bs!1909327 (= lambda!446528 lambda!446504)))

(declare-fun bs!1909328 () Bool)

(assert (= bs!1909328 (and d!2258899 d!2258875)))

(assert (=> bs!1909328 (= lambda!446528 lambda!446521)))

(declare-fun bs!1909329 () Bool)

(assert (= bs!1909329 (and d!2258899 d!2258887)))

(assert (=> bs!1909329 (not (= lambda!446528 lambda!446524))))

(declare-fun bs!1909330 () Bool)

(assert (= bs!1909330 (and d!2258899 d!2258897)))

(assert (=> bs!1909330 (= lambda!446528 lambda!446527)))

(assert (=> d!2258899 (= (inv!89731 ct2!328) (forall!17543 (exprs!8128 ct2!328) lambda!446528))))

(declare-fun bs!1909331 () Bool)

(assert (= bs!1909331 d!2258899))

(declare-fun m!7945454 () Bool)

(assert (=> bs!1909331 m!7945454))

(assert (=> start!707538 d!2258899))

(declare-fun bs!1909332 () Bool)

(declare-fun d!2258901 () Bool)

(assert (= bs!1909332 (and d!2258901 b!7260594)))

(declare-fun lambda!446531 () Int)

(assert (=> bs!1909332 (= lambda!446531 lambda!446505)))

(assert (=> d!2258901 (= (nullableZipper!2940 lt!2590661) (exists!4452 lt!2590661 lambda!446531))))

(declare-fun bs!1909333 () Bool)

(assert (= bs!1909333 d!2258901))

(declare-fun m!7945466 () Bool)

(assert (=> bs!1909333 m!7945466))

(assert (=> b!7260602 d!2258901))

(declare-fun b!7260691 () Bool)

(declare-fun e!4353845 () Bool)

(declare-fun tp!2038821 () Bool)

(assert (=> b!7260691 (= e!4353845 (and tp_is_empty!46841 tp!2038821))))

(assert (=> b!7260601 (= tp!2038805 e!4353845)))

(assert (= (and b!7260601 (is-Cons!70520 (t!384710 s1!1971))) b!7260691))

(declare-fun b!7260692 () Bool)

(declare-fun e!4353846 () Bool)

(declare-fun tp!2038822 () Bool)

(assert (=> b!7260692 (= e!4353846 (and tp_is_empty!46841 tp!2038822))))

(assert (=> b!7260596 (= tp!2038803 e!4353846)))

(assert (= (and b!7260596 (is-Cons!70520 (t!384710 s2!1849))) b!7260692))

(declare-fun b!7260697 () Bool)

(declare-fun e!4353849 () Bool)

(declare-fun tp!2038827 () Bool)

(declare-fun tp!2038828 () Bool)

(assert (=> b!7260697 (= e!4353849 (and tp!2038827 tp!2038828))))

(assert (=> b!7260593 (= tp!2038806 e!4353849)))

(assert (= (and b!7260593 (is-Cons!70519 (exprs!8128 ct1!232))) b!7260697))

(declare-fun b!7260698 () Bool)

(declare-fun e!4353850 () Bool)

(declare-fun tp!2038829 () Bool)

(declare-fun tp!2038830 () Bool)

(assert (=> b!7260698 (= e!4353850 (and tp!2038829 tp!2038830))))

(assert (=> b!7260598 (= tp!2038804 e!4353850)))

(assert (= (and b!7260598 (is-Cons!70519 (exprs!8128 ct2!328))) b!7260698))

(declare-fun b_lambda!279285 () Bool)

(assert (= b_lambda!279281 (or b!7260594 b_lambda!279285)))

(declare-fun bs!1909334 () Bool)

(declare-fun d!2258905 () Bool)

(assert (= bs!1909334 (and d!2258905 b!7260594)))

(assert (=> bs!1909334 (= (dynLambda!28821 lambda!446505 lt!2590706) (nullableContext!224 lt!2590706))))

(declare-fun m!7945468 () Bool)

(assert (=> bs!1909334 m!7945468))

(assert (=> d!2258891 d!2258905))

(push 1)

(assert (not b!7260681))

(assert tp_is_empty!46841)

(assert (not b!7260673))

(assert (not d!2258881))

(assert (not b!7260698))

(assert (not b!7260680))

(assert (not b!7260643))

(assert (not b!7260697))

(assert (not d!2258891))

(assert (not d!2258873))

(assert (not d!2258879))

(assert (not bs!1909334))

(assert (not b!7260682))

(assert (not b!7260661))

(assert (not d!2258885))

(assert (not d!2258893))

(assert (not b!7260662))

(assert (not b!7260676))

(assert (not d!2258875))

(assert (not d!2258895))

(assert (not d!2258901))

(assert (not d!2258869))

(assert (not b!7260675))

(assert (not d!2258899))

(assert (not b!7260642))

(assert (not d!2258897))

(assert (not b!7260683))

(assert (not d!2258887))

(assert (not b!7260672))

(assert (not b_lambda!279285))

(assert (not b!7260691))

(assert (not b!7260692))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

