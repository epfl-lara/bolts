; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!712970 () Bool)

(assert start!712970)

(declare-fun b!7315709 () Bool)

(declare-fun e!4379458 () Bool)

(declare-fun e!4379457 () Bool)

(assert (=> b!7315709 (= e!4379458 e!4379457)))

(declare-fun res!2956222 () Bool)

(assert (=> b!7315709 (=> (not res!2956222) (not e!4379457))))

(declare-datatypes ((C!38114 0))(
  ( (C!38115 (val!29153 Int)) )
))
(declare-datatypes ((Regex!18920 0))(
  ( (ElementMatch!18920 (c!1358030 C!38114)) (Concat!27765 (regOne!38352 Regex!18920) (regTwo!38352 Regex!18920)) (EmptyExpr!18920) (Star!18920 (reg!19249 Regex!18920)) (EmptyLang!18920) (Union!18920 (regOne!38353 Regex!18920) (regTwo!38353 Regex!18920)) )
))
(declare-datatypes ((List!71256 0))(
  ( (Nil!71132) (Cons!71132 (h!77580 Regex!18920) (t!385488 List!71256)) )
))
(declare-datatypes ((Context!15720 0))(
  ( (Context!15721 (exprs!8360 List!71256)) )
))
(declare-fun lt!2601995 () (Set Context!15720))

(declare-fun nullableZipper!3101 ((Set Context!15720)) Bool)

(assert (=> b!7315709 (= res!2956222 (not (nullableZipper!3101 lt!2601995)))))

(declare-fun z1!542 () (Set Context!15720))

(declare-fun z2!461 () (Set Context!15720))

(assert (=> b!7315709 (= lt!2601995 (set.union z1!542 z2!461))))

(declare-fun b!7315710 () Bool)

(declare-fun e!4379460 () Bool)

(declare-fun tp!2076537 () Bool)

(assert (=> b!7315710 (= e!4379460 tp!2076537)))

(declare-fun setIsEmpty!54426 () Bool)

(declare-fun setRes!54426 () Bool)

(assert (=> setIsEmpty!54426 setRes!54426))

(declare-fun b!7315711 () Bool)

(declare-fun lambda!452170 () Int)

(declare-fun exists!4566 ((Set Context!15720) Int) Bool)

(assert (=> b!7315711 (= e!4379457 (exists!4566 lt!2601995 lambda!452170))))

(declare-fun tp!2076539 () Bool)

(declare-fun setElem!54427 () Context!15720)

(declare-fun setNonEmpty!54426 () Bool)

(declare-fun setRes!54427 () Bool)

(declare-fun inv!90422 (Context!15720) Bool)

(assert (=> setNonEmpty!54426 (= setRes!54427 (and tp!2076539 (inv!90422 setElem!54427) e!4379460))))

(declare-fun setRest!54426 () (Set Context!15720))

(assert (=> setNonEmpty!54426 (= z1!542 (set.union (set.insert setElem!54427 (as set.empty (Set Context!15720))) setRest!54426))))

(declare-fun b!7315712 () Bool)

(declare-fun e!4379461 () Bool)

(declare-fun tp!2076538 () Bool)

(assert (=> b!7315712 (= e!4379461 tp!2076538)))

(declare-fun setNonEmpty!54427 () Bool)

(declare-fun setElem!54426 () Context!15720)

(declare-fun tp!2076536 () Bool)

(assert (=> setNonEmpty!54427 (= setRes!54426 (and tp!2076536 (inv!90422 setElem!54426) e!4379461))))

(declare-fun setRest!54427 () (Set Context!15720))

(assert (=> setNonEmpty!54427 (= z2!461 (set.union (set.insert setElem!54426 (as set.empty (Set Context!15720))) setRest!54427))))

(declare-fun setIsEmpty!54427 () Bool)

(assert (=> setIsEmpty!54427 setRes!54427))

(declare-fun b!7315713 () Bool)

(declare-fun e!4379459 () Bool)

(declare-fun tp_is_empty!47585 () Bool)

(declare-fun tp!2076540 () Bool)

(assert (=> b!7315713 (= e!4379459 (and tp_is_empty!47585 tp!2076540))))

(declare-fun res!2956221 () Bool)

(assert (=> start!712970 (=> (not res!2956221) (not e!4379458))))

(declare-datatypes ((List!71257 0))(
  ( (Nil!71133) (Cons!71133 (h!77581 C!38114) (t!385489 List!71257)) )
))
(declare-fun s!7362 () List!71257)

(assert (=> start!712970 (= res!2956221 (not (is-Cons!71133 s!7362)))))

(assert (=> start!712970 e!4379458))

(assert (=> start!712970 e!4379459))

(declare-fun condSetEmpty!54427 () Bool)

(assert (=> start!712970 (= condSetEmpty!54427 (= z1!542 (as set.empty (Set Context!15720))))))

(assert (=> start!712970 setRes!54427))

(declare-fun condSetEmpty!54426 () Bool)

(assert (=> start!712970 (= condSetEmpty!54426 (= z2!461 (as set.empty (Set Context!15720))))))

(assert (=> start!712970 setRes!54426))

(assert (= (and start!712970 res!2956221) b!7315709))

(assert (= (and b!7315709 res!2956222) b!7315711))

(assert (= (and start!712970 (is-Cons!71133 s!7362)) b!7315713))

(assert (= (and start!712970 condSetEmpty!54427) setIsEmpty!54427))

(assert (= (and start!712970 (not condSetEmpty!54427)) setNonEmpty!54426))

(assert (= setNonEmpty!54426 b!7315710))

(assert (= (and start!712970 condSetEmpty!54426) setIsEmpty!54426))

(assert (= (and start!712970 (not condSetEmpty!54426)) setNonEmpty!54427))

(assert (= setNonEmpty!54427 b!7315712))

(declare-fun m!7979736 () Bool)

(assert (=> b!7315709 m!7979736))

(declare-fun m!7979738 () Bool)

(assert (=> b!7315711 m!7979738))

(declare-fun m!7979740 () Bool)

(assert (=> setNonEmpty!54426 m!7979740))

(declare-fun m!7979742 () Bool)

(assert (=> setNonEmpty!54427 m!7979742))

(push 1)

(assert (not setNonEmpty!54426))

(assert tp_is_empty!47585)

(assert (not b!7315710))

(assert (not b!7315709))

(assert (not b!7315712))

(assert (not b!7315711))

(assert (not b!7315713))

(assert (not setNonEmpty!54427))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2271378 () Bool)

(declare-fun lambda!452176 () Int)

(declare-fun forall!17767 (List!71256 Int) Bool)

(assert (=> d!2271378 (= (inv!90422 setElem!54427) (forall!17767 (exprs!8360 setElem!54427) lambda!452176))))

(declare-fun bs!1914859 () Bool)

(assert (= bs!1914859 d!2271378))

(declare-fun m!7979752 () Bool)

(assert (=> bs!1914859 m!7979752))

(assert (=> setNonEmpty!54426 d!2271378))

(declare-fun d!2271380 () Bool)

(declare-fun lt!2602001 () Bool)

(declare-datatypes ((List!71260 0))(
  ( (Nil!71136) (Cons!71136 (h!77584 Context!15720) (t!385492 List!71260)) )
))
(declare-fun exists!4568 (List!71260 Int) Bool)

(declare-fun toList!11621 ((Set Context!15720)) List!71260)

(assert (=> d!2271380 (= lt!2602001 (exists!4568 (toList!11621 lt!2601995) lambda!452170))))

(declare-fun choose!56731 ((Set Context!15720) Int) Bool)

(assert (=> d!2271380 (= lt!2602001 (choose!56731 lt!2601995 lambda!452170))))

(assert (=> d!2271380 (= (exists!4566 lt!2601995 lambda!452170) lt!2602001)))

(declare-fun bs!1914860 () Bool)

(assert (= bs!1914860 d!2271380))

(declare-fun m!7979754 () Bool)

(assert (=> bs!1914860 m!7979754))

(assert (=> bs!1914860 m!7979754))

(declare-fun m!7979756 () Bool)

(assert (=> bs!1914860 m!7979756))

(declare-fun m!7979758 () Bool)

(assert (=> bs!1914860 m!7979758))

(assert (=> b!7315711 d!2271380))

(declare-fun bs!1914861 () Bool)

(declare-fun d!2271382 () Bool)

(assert (= bs!1914861 (and d!2271382 b!7315711)))

(declare-fun lambda!452179 () Int)

(assert (=> bs!1914861 (= lambda!452179 lambda!452170)))

(assert (=> d!2271382 (= (nullableZipper!3101 lt!2601995) (exists!4566 lt!2601995 lambda!452179))))

(declare-fun bs!1914862 () Bool)

(assert (= bs!1914862 d!2271382))

(declare-fun m!7979760 () Bool)

(assert (=> bs!1914862 m!7979760))

(assert (=> b!7315709 d!2271382))

(declare-fun bs!1914863 () Bool)

(declare-fun d!2271386 () Bool)

(assert (= bs!1914863 (and d!2271386 d!2271378)))

(declare-fun lambda!452180 () Int)

(assert (=> bs!1914863 (= lambda!452180 lambda!452176)))

(assert (=> d!2271386 (= (inv!90422 setElem!54426) (forall!17767 (exprs!8360 setElem!54426) lambda!452180))))

(declare-fun bs!1914864 () Bool)

(assert (= bs!1914864 d!2271386))

(declare-fun m!7979762 () Bool)

(assert (=> bs!1914864 m!7979762))

(assert (=> setNonEmpty!54427 d!2271386))

(declare-fun condSetEmpty!54436 () Bool)

(assert (=> setNonEmpty!54426 (= condSetEmpty!54436 (= setRest!54426 (as set.empty (Set Context!15720))))))

(declare-fun setRes!54436 () Bool)

(assert (=> setNonEmpty!54426 (= tp!2076539 setRes!54436)))

(declare-fun setIsEmpty!54436 () Bool)

(assert (=> setIsEmpty!54436 setRes!54436))

(declare-fun setElem!54436 () Context!15720)

(declare-fun e!4379479 () Bool)

(declare-fun setNonEmpty!54436 () Bool)

(declare-fun tp!2076560 () Bool)

(assert (=> setNonEmpty!54436 (= setRes!54436 (and tp!2076560 (inv!90422 setElem!54436) e!4379479))))

(declare-fun setRest!54436 () (Set Context!15720))

(assert (=> setNonEmpty!54436 (= setRest!54426 (set.union (set.insert setElem!54436 (as set.empty (Set Context!15720))) setRest!54436))))

(declare-fun b!7315733 () Bool)

(declare-fun tp!2076561 () Bool)

(assert (=> b!7315733 (= e!4379479 tp!2076561)))

(assert (= (and setNonEmpty!54426 condSetEmpty!54436) setIsEmpty!54436))

(assert (= (and setNonEmpty!54426 (not condSetEmpty!54436)) setNonEmpty!54436))

(assert (= setNonEmpty!54436 b!7315733))

(declare-fun m!7979764 () Bool)

(assert (=> setNonEmpty!54436 m!7979764))

(declare-fun b!7315738 () Bool)

(declare-fun e!4379482 () Bool)

(declare-fun tp!2076564 () Bool)

(assert (=> b!7315738 (= e!4379482 (and tp_is_empty!47585 tp!2076564))))

(assert (=> b!7315713 (= tp!2076540 e!4379482)))

(assert (= (and b!7315713 (is-Cons!71133 (t!385489 s!7362))) b!7315738))

(declare-fun b!7315743 () Bool)

(declare-fun e!4379485 () Bool)

(declare-fun tp!2076569 () Bool)

(declare-fun tp!2076570 () Bool)

(assert (=> b!7315743 (= e!4379485 (and tp!2076569 tp!2076570))))

(assert (=> b!7315710 (= tp!2076537 e!4379485)))

(assert (= (and b!7315710 (is-Cons!71132 (exprs!8360 setElem!54427))) b!7315743))

(declare-fun b!7315744 () Bool)

(declare-fun e!4379486 () Bool)

(declare-fun tp!2076571 () Bool)

(declare-fun tp!2076572 () Bool)

(assert (=> b!7315744 (= e!4379486 (and tp!2076571 tp!2076572))))

(assert (=> b!7315712 (= tp!2076538 e!4379486)))

(assert (= (and b!7315712 (is-Cons!71132 (exprs!8360 setElem!54426))) b!7315744))

(declare-fun condSetEmpty!54437 () Bool)

(assert (=> setNonEmpty!54427 (= condSetEmpty!54437 (= setRest!54427 (as set.empty (Set Context!15720))))))

(declare-fun setRes!54437 () Bool)

(assert (=> setNonEmpty!54427 (= tp!2076536 setRes!54437)))

(declare-fun setIsEmpty!54437 () Bool)

(assert (=> setIsEmpty!54437 setRes!54437))

(declare-fun e!4379487 () Bool)

(declare-fun setElem!54437 () Context!15720)

(declare-fun setNonEmpty!54437 () Bool)

(declare-fun tp!2076573 () Bool)

(assert (=> setNonEmpty!54437 (= setRes!54437 (and tp!2076573 (inv!90422 setElem!54437) e!4379487))))

(declare-fun setRest!54437 () (Set Context!15720))

(assert (=> setNonEmpty!54437 (= setRest!54427 (set.union (set.insert setElem!54437 (as set.empty (Set Context!15720))) setRest!54437))))

(declare-fun b!7315745 () Bool)

(declare-fun tp!2076574 () Bool)

(assert (=> b!7315745 (= e!4379487 tp!2076574)))

(assert (= (and setNonEmpty!54427 condSetEmpty!54437) setIsEmpty!54437))

(assert (= (and setNonEmpty!54427 (not condSetEmpty!54437)) setNonEmpty!54437))

(assert (= setNonEmpty!54437 b!7315745))

(declare-fun m!7979766 () Bool)

(assert (=> setNonEmpty!54437 m!7979766))

(push 1)

(assert (not b!7315743))

(assert (not b!7315745))

(assert (not setNonEmpty!54437))

(assert tp_is_empty!47585)

(assert (not setNonEmpty!54436))

(assert (not d!2271378))

(assert (not b!7315738))

(assert (not b!7315744))

(assert (not d!2271382))

(assert (not d!2271380))

(assert (not d!2271386))

(assert (not b!7315733))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

