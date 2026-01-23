; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!676836 () Bool)

(assert start!676836)

(declare-fun b!7019570 () Bool)

(assert (=> b!7019570 true))

(declare-fun b!7019569 () Bool)

(assert (=> b!7019569 true))

(declare-fun b!7019562 () Bool)

(assert (=> b!7019562 true))

(declare-fun b!7019560 () Bool)

(declare-fun e!4219576 () Bool)

(declare-datatypes ((C!35018 0))(
  ( (C!35019 (val!27211 Int)) )
))
(declare-datatypes ((Regex!17374 0))(
  ( (ElementMatch!17374 (c!1304477 C!35018)) (Concat!26219 (regOne!35260 Regex!17374) (regTwo!35260 Regex!17374)) (EmptyExpr!17374) (Star!17374 (reg!17703 Regex!17374)) (EmptyLang!17374) (Union!17374 (regOne!35261 Regex!17374) (regTwo!35261 Regex!17374)) )
))
(declare-datatypes ((List!67667 0))(
  ( (Nil!67543) (Cons!67543 (h!73991 Regex!17374) (t!381422 List!67667)) )
))
(declare-datatypes ((Context!12740 0))(
  ( (Context!12741 (exprs!6870 List!67667)) )
))
(declare-fun ct2!306 () Context!12740)

(declare-fun lambda!410902 () Int)

(declare-fun forall!16288 (List!67667 Int) Bool)

(assert (=> b!7019560 (= e!4219576 (forall!16288 (exprs!6870 ct2!306) lambda!410902))))

(declare-fun b!7019561 () Bool)

(declare-fun e!4219574 () Bool)

(declare-fun e!4219575 () Bool)

(assert (=> b!7019561 (= e!4219574 e!4219575)))

(declare-fun res!2865149 () Bool)

(assert (=> b!7019561 (=> res!2865149 e!4219575)))

(declare-fun lt!2510803 () (Set Context!12740))

(declare-fun lt!2510807 () (Set Context!12740))

(assert (=> b!7019561 (= res!2865149 (not (= lt!2510803 lt!2510807)))))

(declare-fun lt!2510802 () Context!12740)

(assert (=> b!7019561 (= lt!2510803 (set.insert lt!2510802 (as set.empty (Set Context!12740))))))

(declare-datatypes ((Unit!161430 0))(
  ( (Unit!161431) )
))
(declare-fun lt!2510801 () Unit!161430)

(declare-fun lt!2510808 () Context!12740)

(declare-fun lemmaConcatPreservesForall!710 (List!67667 List!67667 Int) Unit!161430)

(assert (=> b!7019561 (= lt!2510801 (lemmaConcatPreservesForall!710 (exprs!6870 lt!2510808) (exprs!6870 ct2!306) lambda!410902))))

(declare-fun e!4219579 () Bool)

(assert (=> b!7019562 (= e!4219575 e!4219579)))

(declare-fun res!2865144 () Bool)

(assert (=> b!7019562 (=> res!2865144 e!4219579)))

(declare-fun lt!2510809 () (Set Context!12740))

(declare-datatypes ((List!67668 0))(
  ( (Nil!67544) (Cons!67544 (h!73992 C!35018) (t!381423 List!67668)) )
))
(declare-fun s!7408 () List!67668)

(declare-fun derivationStepZipper!2854 ((Set Context!12740) C!35018) (Set Context!12740))

(assert (=> b!7019562 (= res!2865144 (not (= (derivationStepZipper!2854 lt!2510803 (h!73992 s!7408)) lt!2510809)))))

(declare-fun lambda!410903 () Int)

(declare-fun flatMap!2360 ((Set Context!12740) Int) (Set Context!12740))

(declare-fun derivationStepZipperUp!2024 (Context!12740 C!35018) (Set Context!12740))

(assert (=> b!7019562 (= (flatMap!2360 lt!2510803 lambda!410903) (derivationStepZipperUp!2024 lt!2510802 (h!73992 s!7408)))))

(declare-fun lt!2510812 () Unit!161430)

(declare-fun lemmaFlatMapOnSingletonSet!1875 ((Set Context!12740) Context!12740 Int) Unit!161430)

(assert (=> b!7019562 (= lt!2510812 (lemmaFlatMapOnSingletonSet!1875 lt!2510803 lt!2510802 lambda!410903))))

(assert (=> b!7019562 (= lt!2510809 (derivationStepZipperUp!2024 lt!2510802 (h!73992 s!7408)))))

(declare-fun lt!2510813 () Unit!161430)

(assert (=> b!7019562 (= lt!2510813 (lemmaConcatPreservesForall!710 (exprs!6870 lt!2510808) (exprs!6870 ct2!306) lambda!410902))))

(declare-fun b!7019563 () Bool)

(assert (=> b!7019563 (= e!4219579 e!4219576)))

(declare-fun res!2865152 () Bool)

(assert (=> b!7019563 (=> res!2865152 e!4219576)))

(assert (=> b!7019563 (= res!2865152 (not (forall!16288 (exprs!6870 lt!2510808) lambda!410902)))))

(declare-fun setIsEmpty!48633 () Bool)

(declare-fun setRes!48633 () Bool)

(assert (=> setIsEmpty!48633 setRes!48633))

(declare-fun b!7019564 () Bool)

(declare-fun e!4219580 () Bool)

(declare-fun tp!1933729 () Bool)

(assert (=> b!7019564 (= e!4219580 tp!1933729)))

(declare-fun b!7019565 () Bool)

(declare-fun e!4219578 () Bool)

(declare-fun tp!1933728 () Bool)

(assert (=> b!7019565 (= e!4219578 tp!1933728)))

(declare-fun b!7019566 () Bool)

(declare-fun res!2865146 () Bool)

(declare-fun e!4219573 () Bool)

(assert (=> b!7019566 (=> res!2865146 e!4219573)))

(declare-fun lt!2510811 () Context!12740)

(declare-fun lt!2510810 () (Set Context!12740))

(assert (=> b!7019566 (= res!2865146 (not (set.member lt!2510811 lt!2510810)))))

(declare-fun b!7019567 () Bool)

(declare-fun res!2865151 () Bool)

(declare-fun e!4219577 () Bool)

(assert (=> b!7019567 (=> (not res!2865151) (not e!4219577))))

(assert (=> b!7019567 (= res!2865151 (is-Cons!67544 s!7408))))

(declare-fun b!7019568 () Bool)

(declare-fun res!2865148 () Bool)

(assert (=> b!7019568 (=> res!2865148 e!4219579)))

(assert (=> b!7019568 (= res!2865148 (is-Cons!67543 (exprs!6870 lt!2510808)))))

(assert (=> b!7019569 (= e!4219573 e!4219574)))

(declare-fun res!2865150 () Bool)

(assert (=> b!7019569 (=> res!2865150 e!4219574)))

(declare-fun z1!570 () (Set Context!12740))

(assert (=> b!7019569 (= res!2865150 (or (not (= lt!2510802 lt!2510811)) (not (set.member lt!2510808 z1!570))))))

(declare-fun ++!15410 (List!67667 List!67667) List!67667)

(assert (=> b!7019569 (= lt!2510802 (Context!12741 (++!15410 (exprs!6870 lt!2510808) (exprs!6870 ct2!306))))))

(declare-fun lt!2510805 () Unit!161430)

(assert (=> b!7019569 (= lt!2510805 (lemmaConcatPreservesForall!710 (exprs!6870 lt!2510808) (exprs!6870 ct2!306) lambda!410902))))

(declare-fun lambda!410901 () Int)

(declare-fun mapPost2!229 ((Set Context!12740) Int Context!12740) Context!12740)

(assert (=> b!7019569 (= lt!2510808 (mapPost2!229 z1!570 lambda!410901 lt!2510811))))

(assert (=> b!7019570 (= e!4219577 (not e!4219573))))

(declare-fun res!2865147 () Bool)

(assert (=> b!7019570 (=> res!2865147 e!4219573)))

(declare-fun matchZipper!2914 ((Set Context!12740) List!67668) Bool)

(assert (=> b!7019570 (= res!2865147 (not (matchZipper!2914 lt!2510807 s!7408)))))

(assert (=> b!7019570 (= lt!2510807 (set.insert lt!2510811 (as set.empty (Set Context!12740))))))

(declare-fun lambda!410900 () Int)

(declare-fun getWitness!1341 ((Set Context!12740) Int) Context!12740)

(assert (=> b!7019570 (= lt!2510811 (getWitness!1341 lt!2510810 lambda!410900))))

(declare-datatypes ((List!67669 0))(
  ( (Nil!67545) (Cons!67545 (h!73993 Context!12740) (t!381424 List!67669)) )
))
(declare-fun lt!2510806 () List!67669)

(declare-fun exists!3252 (List!67669 Int) Bool)

(assert (=> b!7019570 (exists!3252 lt!2510806 lambda!410900)))

(declare-fun lt!2510804 () Unit!161430)

(declare-fun lemmaZipperMatchesExistsMatchingContext!343 (List!67669 List!67668) Unit!161430)

(assert (=> b!7019570 (= lt!2510804 (lemmaZipperMatchesExistsMatchingContext!343 lt!2510806 s!7408))))

(declare-fun toList!10734 ((Set Context!12740)) List!67669)

(assert (=> b!7019570 (= lt!2510806 (toList!10734 lt!2510810))))

(declare-fun res!2865145 () Bool)

(assert (=> start!676836 (=> (not res!2865145) (not e!4219577))))

(assert (=> start!676836 (= res!2865145 (matchZipper!2914 lt!2510810 s!7408))))

(declare-fun appendTo!495 ((Set Context!12740) Context!12740) (Set Context!12740))

(assert (=> start!676836 (= lt!2510810 (appendTo!495 z1!570 ct2!306))))

(assert (=> start!676836 e!4219577))

(declare-fun condSetEmpty!48633 () Bool)

(assert (=> start!676836 (= condSetEmpty!48633 (= z1!570 (as set.empty (Set Context!12740))))))

(assert (=> start!676836 setRes!48633))

(declare-fun inv!86295 (Context!12740) Bool)

(assert (=> start!676836 (and (inv!86295 ct2!306) e!4219578)))

(declare-fun e!4219581 () Bool)

(assert (=> start!676836 e!4219581))

(declare-fun setNonEmpty!48633 () Bool)

(declare-fun tp!1933730 () Bool)

(declare-fun setElem!48633 () Context!12740)

(assert (=> setNonEmpty!48633 (= setRes!48633 (and tp!1933730 (inv!86295 setElem!48633) e!4219580))))

(declare-fun setRest!48633 () (Set Context!12740))

(assert (=> setNonEmpty!48633 (= z1!570 (set.union (set.insert setElem!48633 (as set.empty (Set Context!12740))) setRest!48633))))

(declare-fun b!7019571 () Bool)

(declare-fun tp_is_empty!43973 () Bool)

(declare-fun tp!1933731 () Bool)

(assert (=> b!7019571 (= e!4219581 (and tp_is_empty!43973 tp!1933731))))

(assert (= (and start!676836 res!2865145) b!7019567))

(assert (= (and b!7019567 res!2865151) b!7019570))

(assert (= (and b!7019570 (not res!2865147)) b!7019566))

(assert (= (and b!7019566 (not res!2865146)) b!7019569))

(assert (= (and b!7019569 (not res!2865150)) b!7019561))

(assert (= (and b!7019561 (not res!2865149)) b!7019562))

(assert (= (and b!7019562 (not res!2865144)) b!7019568))

(assert (= (and b!7019568 (not res!2865148)) b!7019563))

(assert (= (and b!7019563 (not res!2865152)) b!7019560))

(assert (= (and start!676836 condSetEmpty!48633) setIsEmpty!48633))

(assert (= (and start!676836 (not condSetEmpty!48633)) setNonEmpty!48633))

(assert (= setNonEmpty!48633 b!7019564))

(assert (= start!676836 b!7019565))

(assert (= (and start!676836 (is-Cons!67544 s!7408)) b!7019571))

(declare-fun m!7720840 () Bool)

(assert (=> setNonEmpty!48633 m!7720840))

(declare-fun m!7720842 () Bool)

(assert (=> b!7019566 m!7720842))

(declare-fun m!7720844 () Bool)

(assert (=> start!676836 m!7720844))

(declare-fun m!7720846 () Bool)

(assert (=> start!676836 m!7720846))

(declare-fun m!7720848 () Bool)

(assert (=> start!676836 m!7720848))

(declare-fun m!7720850 () Bool)

(assert (=> b!7019569 m!7720850))

(declare-fun m!7720852 () Bool)

(assert (=> b!7019569 m!7720852))

(declare-fun m!7720854 () Bool)

(assert (=> b!7019569 m!7720854))

(declare-fun m!7720856 () Bool)

(assert (=> b!7019569 m!7720856))

(declare-fun m!7720858 () Bool)

(assert (=> b!7019563 m!7720858))

(assert (=> b!7019562 m!7720854))

(declare-fun m!7720860 () Bool)

(assert (=> b!7019562 m!7720860))

(declare-fun m!7720862 () Bool)

(assert (=> b!7019562 m!7720862))

(declare-fun m!7720864 () Bool)

(assert (=> b!7019562 m!7720864))

(declare-fun m!7720866 () Bool)

(assert (=> b!7019562 m!7720866))

(declare-fun m!7720868 () Bool)

(assert (=> b!7019560 m!7720868))

(declare-fun m!7720870 () Bool)

(assert (=> b!7019570 m!7720870))

(declare-fun m!7720872 () Bool)

(assert (=> b!7019570 m!7720872))

(declare-fun m!7720874 () Bool)

(assert (=> b!7019570 m!7720874))

(declare-fun m!7720876 () Bool)

(assert (=> b!7019570 m!7720876))

(declare-fun m!7720878 () Bool)

(assert (=> b!7019570 m!7720878))

(declare-fun m!7720880 () Bool)

(assert (=> b!7019570 m!7720880))

(declare-fun m!7720882 () Bool)

(assert (=> b!7019561 m!7720882))

(assert (=> b!7019561 m!7720854))

(push 1)

(assert (not b!7019571))

(assert (not b!7019564))

(assert (not b!7019560))

(assert tp_is_empty!43973)

(assert (not b!7019570))

(assert (not b!7019562))

(assert (not b!7019569))

(assert (not b!7019563))

(assert (not b!7019565))

(assert (not setNonEmpty!48633))

(assert (not start!676836))

(assert (not b!7019561))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2188105 () Bool)

(declare-fun res!2865186 () Bool)

(declare-fun e!4219613 () Bool)

(assert (=> d!2188105 (=> res!2865186 e!4219613)))

(assert (=> d!2188105 (= res!2865186 (is-Nil!67543 (exprs!6870 ct2!306)))))

(assert (=> d!2188105 (= (forall!16288 (exprs!6870 ct2!306) lambda!410902) e!4219613)))

(declare-fun b!7019624 () Bool)

(declare-fun e!4219614 () Bool)

(assert (=> b!7019624 (= e!4219613 e!4219614)))

(declare-fun res!2865187 () Bool)

(assert (=> b!7019624 (=> (not res!2865187) (not e!4219614))))

(declare-fun dynLambda!27211 (Int Regex!17374) Bool)

(assert (=> b!7019624 (= res!2865187 (dynLambda!27211 lambda!410902 (h!73991 (exprs!6870 ct2!306))))))

(declare-fun b!7019625 () Bool)

(assert (=> b!7019625 (= e!4219614 (forall!16288 (t!381422 (exprs!6870 ct2!306)) lambda!410902))))

(assert (= (and d!2188105 (not res!2865186)) b!7019624))

(assert (= (and b!7019624 res!2865187) b!7019625))

(declare-fun b_lambda!264979 () Bool)

(assert (=> (not b_lambda!264979) (not b!7019624)))

(declare-fun m!7720928 () Bool)

(assert (=> b!7019624 m!7720928))

(declare-fun m!7720930 () Bool)

(assert (=> b!7019625 m!7720930))

(assert (=> b!7019560 d!2188105))

(declare-fun bs!1867345 () Bool)

(declare-fun d!2188107 () Bool)

(assert (= bs!1867345 (and d!2188107 b!7019570)))

(declare-fun lambda!410928 () Int)

(assert (=> bs!1867345 (= lambda!410928 lambda!410900)))

(assert (=> d!2188107 true))

(assert (=> d!2188107 (exists!3252 lt!2510806 lambda!410928)))

(declare-fun lt!2510857 () Unit!161430)

(declare-fun choose!52921 (List!67669 List!67668) Unit!161430)

(assert (=> d!2188107 (= lt!2510857 (choose!52921 lt!2510806 s!7408))))

(declare-fun content!13447 (List!67669) (Set Context!12740))

(assert (=> d!2188107 (matchZipper!2914 (content!13447 lt!2510806) s!7408)))

(assert (=> d!2188107 (= (lemmaZipperMatchesExistsMatchingContext!343 lt!2510806 s!7408) lt!2510857)))

(declare-fun bs!1867346 () Bool)

(assert (= bs!1867346 d!2188107))

(declare-fun m!7720932 () Bool)

(assert (=> bs!1867346 m!7720932))

(declare-fun m!7720934 () Bool)

(assert (=> bs!1867346 m!7720934))

(declare-fun m!7720936 () Bool)

(assert (=> bs!1867346 m!7720936))

(assert (=> bs!1867346 m!7720936))

(declare-fun m!7720938 () Bool)

(assert (=> bs!1867346 m!7720938))

(assert (=> b!7019570 d!2188107))

(declare-fun d!2188109 () Bool)

(declare-fun c!1304491 () Bool)

(declare-fun isEmpty!39447 (List!67668) Bool)

(assert (=> d!2188109 (= c!1304491 (isEmpty!39447 s!7408))))

(declare-fun e!4219617 () Bool)

(assert (=> d!2188109 (= (matchZipper!2914 lt!2510807 s!7408) e!4219617)))

(declare-fun b!7019630 () Bool)

(declare-fun nullableZipper!2515 ((Set Context!12740)) Bool)

(assert (=> b!7019630 (= e!4219617 (nullableZipper!2515 lt!2510807))))

(declare-fun b!7019631 () Bool)

(declare-fun head!14205 (List!67668) C!35018)

(declare-fun tail!13474 (List!67668) List!67668)

(assert (=> b!7019631 (= e!4219617 (matchZipper!2914 (derivationStepZipper!2854 lt!2510807 (head!14205 s!7408)) (tail!13474 s!7408)))))

(assert (= (and d!2188109 c!1304491) b!7019630))

(assert (= (and d!2188109 (not c!1304491)) b!7019631))

(declare-fun m!7720940 () Bool)

(assert (=> d!2188109 m!7720940))

(declare-fun m!7720942 () Bool)

(assert (=> b!7019630 m!7720942))

(declare-fun m!7720944 () Bool)

(assert (=> b!7019631 m!7720944))

(assert (=> b!7019631 m!7720944))

(declare-fun m!7720946 () Bool)

(assert (=> b!7019631 m!7720946))

(declare-fun m!7720948 () Bool)

(assert (=> b!7019631 m!7720948))

(assert (=> b!7019631 m!7720946))

(assert (=> b!7019631 m!7720948))

(declare-fun m!7720950 () Bool)

(assert (=> b!7019631 m!7720950))

(assert (=> b!7019570 d!2188109))

(declare-fun d!2188113 () Bool)

(declare-fun e!4219624 () Bool)

(assert (=> d!2188113 e!4219624))

(declare-fun res!2865194 () Bool)

(assert (=> d!2188113 (=> (not res!2865194) (not e!4219624))))

(declare-fun lt!2510860 () Context!12740)

(declare-fun dynLambda!27212 (Int Context!12740) Bool)

(assert (=> d!2188113 (= res!2865194 (dynLambda!27212 lambda!410900 lt!2510860))))

(declare-fun getWitness!1343 (List!67669 Int) Context!12740)

(assert (=> d!2188113 (= lt!2510860 (getWitness!1343 (toList!10734 lt!2510810) lambda!410900))))

(declare-fun exists!3254 ((Set Context!12740) Int) Bool)

(assert (=> d!2188113 (exists!3254 lt!2510810 lambda!410900)))

(assert (=> d!2188113 (= (getWitness!1341 lt!2510810 lambda!410900) lt!2510860)))

(declare-fun b!7019638 () Bool)

(assert (=> b!7019638 (= e!4219624 (set.member lt!2510860 lt!2510810))))

(assert (= (and d!2188113 res!2865194) b!7019638))

(declare-fun b_lambda!264981 () Bool)

(assert (=> (not b_lambda!264981) (not d!2188113)))

(declare-fun m!7720952 () Bool)

(assert (=> d!2188113 m!7720952))

(assert (=> d!2188113 m!7720870))

(assert (=> d!2188113 m!7720870))

(declare-fun m!7720954 () Bool)

(assert (=> d!2188113 m!7720954))

(declare-fun m!7720956 () Bool)

(assert (=> d!2188113 m!7720956))

(declare-fun m!7720958 () Bool)

(assert (=> b!7019638 m!7720958))

(assert (=> b!7019570 d!2188113))

(declare-fun d!2188115 () Bool)

(declare-fun e!4219629 () Bool)

(assert (=> d!2188115 e!4219629))

(declare-fun res!2865199 () Bool)

(assert (=> d!2188115 (=> (not res!2865199) (not e!4219629))))

(declare-fun lt!2510863 () List!67669)

(declare-fun noDuplicate!2591 (List!67669) Bool)

(assert (=> d!2188115 (= res!2865199 (noDuplicate!2591 lt!2510863))))

(declare-fun choose!52922 ((Set Context!12740)) List!67669)

(assert (=> d!2188115 (= lt!2510863 (choose!52922 lt!2510810))))

(assert (=> d!2188115 (= (toList!10734 lt!2510810) lt!2510863)))

(declare-fun b!7019643 () Bool)

(assert (=> b!7019643 (= e!4219629 (= (content!13447 lt!2510863) lt!2510810))))

(assert (= (and d!2188115 res!2865199) b!7019643))

(declare-fun m!7720964 () Bool)

(assert (=> d!2188115 m!7720964))

(declare-fun m!7720966 () Bool)

(assert (=> d!2188115 m!7720966))

(declare-fun m!7720968 () Bool)

(assert (=> b!7019643 m!7720968))

(assert (=> b!7019570 d!2188115))

(declare-fun bs!1867347 () Bool)

(declare-fun d!2188119 () Bool)

(assert (= bs!1867347 (and d!2188119 b!7019570)))

(declare-fun lambda!410931 () Int)

(assert (=> bs!1867347 (not (= lambda!410931 lambda!410900))))

(declare-fun bs!1867348 () Bool)

(assert (= bs!1867348 (and d!2188119 d!2188107)))

(assert (=> bs!1867348 (not (= lambda!410931 lambda!410928))))

(assert (=> d!2188119 true))

(declare-fun order!28089 () Int)

(declare-fun dynLambda!27213 (Int Int) Int)

(assert (=> d!2188119 (< (dynLambda!27213 order!28089 lambda!410900) (dynLambda!27213 order!28089 lambda!410931))))

(declare-fun forall!16290 (List!67669 Int) Bool)

(assert (=> d!2188119 (= (exists!3252 lt!2510806 lambda!410900) (not (forall!16290 lt!2510806 lambda!410931)))))

(declare-fun bs!1867349 () Bool)

(assert (= bs!1867349 d!2188119))

(declare-fun m!7720970 () Bool)

(assert (=> bs!1867349 m!7720970))

(assert (=> b!7019570 d!2188119))

(declare-fun b!7019666 () Bool)

(declare-fun res!2865206 () Bool)

(declare-fun e!4219640 () Bool)

(assert (=> b!7019666 (=> (not res!2865206) (not e!4219640))))

(declare-fun lt!2510866 () List!67667)

(declare-fun size!41016 (List!67667) Int)

(assert (=> b!7019666 (= res!2865206 (= (size!41016 lt!2510866) (+ (size!41016 (exprs!6870 lt!2510808)) (size!41016 (exprs!6870 ct2!306)))))))

(declare-fun b!7019665 () Bool)

(declare-fun e!4219641 () List!67667)

(assert (=> b!7019665 (= e!4219641 (Cons!67543 (h!73991 (exprs!6870 lt!2510808)) (++!15410 (t!381422 (exprs!6870 lt!2510808)) (exprs!6870 ct2!306))))))

(declare-fun b!7019664 () Bool)

(assert (=> b!7019664 (= e!4219641 (exprs!6870 ct2!306))))

(declare-fun d!2188121 () Bool)

(assert (=> d!2188121 e!4219640))

(declare-fun res!2865207 () Bool)

(assert (=> d!2188121 (=> (not res!2865207) (not e!4219640))))

(declare-fun content!13448 (List!67667) (Set Regex!17374))

(assert (=> d!2188121 (= res!2865207 (= (content!13448 lt!2510866) (set.union (content!13448 (exprs!6870 lt!2510808)) (content!13448 (exprs!6870 ct2!306)))))))

(assert (=> d!2188121 (= lt!2510866 e!4219641)))

(declare-fun c!1304498 () Bool)

(assert (=> d!2188121 (= c!1304498 (is-Nil!67543 (exprs!6870 lt!2510808)))))

(assert (=> d!2188121 (= (++!15410 (exprs!6870 lt!2510808) (exprs!6870 ct2!306)) lt!2510866)))

(declare-fun b!7019667 () Bool)

(assert (=> b!7019667 (= e!4219640 (or (not (= (exprs!6870 ct2!306) Nil!67543)) (= lt!2510866 (exprs!6870 lt!2510808))))))

(assert (= (and d!2188121 c!1304498) b!7019664))

(assert (= (and d!2188121 (not c!1304498)) b!7019665))

(assert (= (and d!2188121 res!2865207) b!7019666))

(assert (= (and b!7019666 res!2865206) b!7019667))

(declare-fun m!7720972 () Bool)

(assert (=> b!7019666 m!7720972))

(declare-fun m!7720974 () Bool)

(assert (=> b!7019666 m!7720974))

(declare-fun m!7720976 () Bool)

(assert (=> b!7019666 m!7720976))

(declare-fun m!7720978 () Bool)

(assert (=> b!7019665 m!7720978))

(declare-fun m!7720980 () Bool)

(assert (=> d!2188121 m!7720980))

(declare-fun m!7720982 () Bool)

(assert (=> d!2188121 m!7720982))

(declare-fun m!7720984 () Bool)

(assert (=> d!2188121 m!7720984))

(assert (=> b!7019569 d!2188121))

(declare-fun d!2188123 () Bool)

(assert (=> d!2188123 (forall!16288 (++!15410 (exprs!6870 lt!2510808) (exprs!6870 ct2!306)) lambda!410902)))

(declare-fun lt!2510869 () Unit!161430)

(declare-fun choose!52923 (List!67667 List!67667 Int) Unit!161430)

(assert (=> d!2188123 (= lt!2510869 (choose!52923 (exprs!6870 lt!2510808) (exprs!6870 ct2!306) lambda!410902))))

(assert (=> d!2188123 (forall!16288 (exprs!6870 lt!2510808) lambda!410902)))

(assert (=> d!2188123 (= (lemmaConcatPreservesForall!710 (exprs!6870 lt!2510808) (exprs!6870 ct2!306) lambda!410902) lt!2510869)))

(declare-fun bs!1867350 () Bool)

(assert (= bs!1867350 d!2188123))

(assert (=> bs!1867350 m!7720852))

(assert (=> bs!1867350 m!7720852))

(declare-fun m!7720986 () Bool)

(assert (=> bs!1867350 m!7720986))

(declare-fun m!7720988 () Bool)

(assert (=> bs!1867350 m!7720988))

(assert (=> bs!1867350 m!7720858))

(assert (=> b!7019569 d!2188123))

(declare-fun d!2188125 () Bool)

(declare-fun e!4219647 () Bool)

(assert (=> d!2188125 e!4219647))

(declare-fun res!2865211 () Bool)

(assert (=> d!2188125 (=> (not res!2865211) (not e!4219647))))

(declare-fun lt!2510872 () Context!12740)

(declare-fun dynLambda!27214 (Int Context!12740) Context!12740)

(assert (=> d!2188125 (= res!2865211 (= lt!2510811 (dynLambda!27214 lambda!410901 lt!2510872)))))

(declare-fun choose!52924 ((Set Context!12740) Int Context!12740) Context!12740)

(assert (=> d!2188125 (= lt!2510872 (choose!52924 z1!570 lambda!410901 lt!2510811))))

(declare-fun map!15667 ((Set Context!12740) Int) (Set Context!12740))

(assert (=> d!2188125 (set.member lt!2510811 (map!15667 z1!570 lambda!410901))))

(assert (=> d!2188125 (= (mapPost2!229 z1!570 lambda!410901 lt!2510811) lt!2510872)))

(declare-fun b!7019676 () Bool)

(assert (=> b!7019676 (= e!4219647 (set.member lt!2510872 z1!570))))

(assert (= (and d!2188125 res!2865211) b!7019676))

(declare-fun b_lambda!264985 () Bool)

(assert (=> (not b_lambda!264985) (not d!2188125)))

(declare-fun m!7720998 () Bool)

(assert (=> d!2188125 m!7720998))

(declare-fun m!7721000 () Bool)

(assert (=> d!2188125 m!7721000))

(declare-fun m!7721002 () Bool)

(assert (=> d!2188125 m!7721002))

(declare-fun m!7721004 () Bool)

(assert (=> d!2188125 m!7721004))

(declare-fun m!7721006 () Bool)

(assert (=> b!7019676 m!7721006))

(assert (=> b!7019569 d!2188125))

(declare-fun bs!1867352 () Bool)

(declare-fun d!2188131 () Bool)

(assert (= bs!1867352 (and d!2188131 b!7019569)))

(declare-fun lambda!410936 () Int)

(assert (=> bs!1867352 (= lambda!410936 lambda!410902)))

(assert (=> d!2188131 (= (inv!86295 setElem!48633) (forall!16288 (exprs!6870 setElem!48633) lambda!410936))))

(declare-fun bs!1867353 () Bool)

(assert (= bs!1867353 d!2188131))

(declare-fun m!7721008 () Bool)

(assert (=> bs!1867353 m!7721008))

(assert (=> setNonEmpty!48633 d!2188131))

(assert (=> b!7019561 d!2188123))

(declare-fun d!2188133 () Bool)

(declare-fun res!2865212 () Bool)

(declare-fun e!4219648 () Bool)

(assert (=> d!2188133 (=> res!2865212 e!4219648)))

(assert (=> d!2188133 (= res!2865212 (is-Nil!67543 (exprs!6870 lt!2510808)))))

(assert (=> d!2188133 (= (forall!16288 (exprs!6870 lt!2510808) lambda!410902) e!4219648)))

(declare-fun b!7019677 () Bool)

(declare-fun e!4219649 () Bool)

(assert (=> b!7019677 (= e!4219648 e!4219649)))

(declare-fun res!2865213 () Bool)

(assert (=> b!7019677 (=> (not res!2865213) (not e!4219649))))

(assert (=> b!7019677 (= res!2865213 (dynLambda!27211 lambda!410902 (h!73991 (exprs!6870 lt!2510808))))))

(declare-fun b!7019678 () Bool)

(assert (=> b!7019678 (= e!4219649 (forall!16288 (t!381422 (exprs!6870 lt!2510808)) lambda!410902))))

(assert (= (and d!2188133 (not res!2865212)) b!7019677))

(assert (= (and b!7019677 res!2865213) b!7019678))

(declare-fun b_lambda!264987 () Bool)

(assert (=> (not b_lambda!264987) (not b!7019677)))

(declare-fun m!7721010 () Bool)

(assert (=> b!7019677 m!7721010))

(declare-fun m!7721012 () Bool)

(assert (=> b!7019678 m!7721012))

(assert (=> b!7019563 d!2188133))

(declare-fun d!2188135 () Bool)

(declare-fun c!1304503 () Bool)

(assert (=> d!2188135 (= c!1304503 (isEmpty!39447 s!7408))))

(declare-fun e!4219650 () Bool)

(assert (=> d!2188135 (= (matchZipper!2914 lt!2510810 s!7408) e!4219650)))

(declare-fun b!7019679 () Bool)

(assert (=> b!7019679 (= e!4219650 (nullableZipper!2515 lt!2510810))))

(declare-fun b!7019680 () Bool)

(assert (=> b!7019680 (= e!4219650 (matchZipper!2914 (derivationStepZipper!2854 lt!2510810 (head!14205 s!7408)) (tail!13474 s!7408)))))

(assert (= (and d!2188135 c!1304503) b!7019679))

(assert (= (and d!2188135 (not c!1304503)) b!7019680))

(assert (=> d!2188135 m!7720940))

(declare-fun m!7721014 () Bool)

(assert (=> b!7019679 m!7721014))

(assert (=> b!7019680 m!7720944))

(assert (=> b!7019680 m!7720944))

(declare-fun m!7721016 () Bool)

(assert (=> b!7019680 m!7721016))

(assert (=> b!7019680 m!7720948))

(assert (=> b!7019680 m!7721016))

(assert (=> b!7019680 m!7720948))

(declare-fun m!7721018 () Bool)

(assert (=> b!7019680 m!7721018))

(assert (=> start!676836 d!2188135))

(declare-fun bs!1867356 () Bool)

(declare-fun d!2188137 () Bool)

(assert (= bs!1867356 (and d!2188137 b!7019569)))

(declare-fun lambda!410942 () Int)

(assert (=> bs!1867356 (= lambda!410942 lambda!410901)))

(assert (=> d!2188137 true))

(assert (=> d!2188137 (= (appendTo!495 z1!570 ct2!306) (map!15667 z1!570 lambda!410942))))

(declare-fun bs!1867357 () Bool)

(assert (= bs!1867357 d!2188137))

(declare-fun m!7721022 () Bool)

(assert (=> bs!1867357 m!7721022))

(assert (=> start!676836 d!2188137))

(declare-fun bs!1867358 () Bool)

(declare-fun d!2188141 () Bool)

(assert (= bs!1867358 (and d!2188141 b!7019569)))

(declare-fun lambda!410943 () Int)

(assert (=> bs!1867358 (= lambda!410943 lambda!410902)))

(declare-fun bs!1867359 () Bool)

(assert (= bs!1867359 (and d!2188141 d!2188131)))

(assert (=> bs!1867359 (= lambda!410943 lambda!410936)))

(assert (=> d!2188141 (= (inv!86295 ct2!306) (forall!16288 (exprs!6870 ct2!306) lambda!410943))))

(declare-fun bs!1867360 () Bool)

(assert (= bs!1867360 d!2188141))

(declare-fun m!7721024 () Bool)

(assert (=> bs!1867360 m!7721024))

(assert (=> start!676836 d!2188141))

(declare-fun d!2188143 () Bool)

(declare-fun dynLambda!27215 (Int Context!12740) (Set Context!12740))

(assert (=> d!2188143 (= (flatMap!2360 lt!2510803 lambda!410903) (dynLambda!27215 lambda!410903 lt!2510802))))

(declare-fun lt!2510880 () Unit!161430)

(declare-fun choose!52925 ((Set Context!12740) Context!12740 Int) Unit!161430)

(assert (=> d!2188143 (= lt!2510880 (choose!52925 lt!2510803 lt!2510802 lambda!410903))))

(assert (=> d!2188143 (= lt!2510803 (set.insert lt!2510802 (as set.empty (Set Context!12740))))))

(assert (=> d!2188143 (= (lemmaFlatMapOnSingletonSet!1875 lt!2510803 lt!2510802 lambda!410903) lt!2510880)))

(declare-fun b_lambda!264991 () Bool)

(assert (=> (not b_lambda!264991) (not d!2188143)))

(declare-fun bs!1867362 () Bool)

(assert (= bs!1867362 d!2188143))

(assert (=> bs!1867362 m!7720864))

(declare-fun m!7721030 () Bool)

(assert (=> bs!1867362 m!7721030))

(declare-fun m!7721032 () Bool)

(assert (=> bs!1867362 m!7721032))

(assert (=> bs!1867362 m!7720882))

(assert (=> b!7019562 d!2188143))

(declare-fun b!7019693 () Bool)

(declare-fun e!4219658 () (Set Context!12740))

(assert (=> b!7019693 (= e!4219658 (as set.empty (Set Context!12740)))))

(declare-fun bm!637605 () Bool)

(declare-fun call!637610 () (Set Context!12740))

(declare-fun derivationStepZipperDown!2091 (Regex!17374 Context!12740 C!35018) (Set Context!12740))

(assert (=> bm!637605 (= call!637610 (derivationStepZipperDown!2091 (h!73991 (exprs!6870 lt!2510802)) (Context!12741 (t!381422 (exprs!6870 lt!2510802))) (h!73992 s!7408)))))

(declare-fun b!7019694 () Bool)

(declare-fun e!4219659 () Bool)

(declare-fun nullable!7133 (Regex!17374) Bool)

(assert (=> b!7019694 (= e!4219659 (nullable!7133 (h!73991 (exprs!6870 lt!2510802))))))

(declare-fun d!2188147 () Bool)

(declare-fun c!1304510 () Bool)

(assert (=> d!2188147 (= c!1304510 e!4219659)))

(declare-fun res!2865216 () Bool)

(assert (=> d!2188147 (=> (not res!2865216) (not e!4219659))))

(assert (=> d!2188147 (= res!2865216 (is-Cons!67543 (exprs!6870 lt!2510802)))))

(declare-fun e!4219657 () (Set Context!12740))

(assert (=> d!2188147 (= (derivationStepZipperUp!2024 lt!2510802 (h!73992 s!7408)) e!4219657)))

(declare-fun b!7019695 () Bool)

(assert (=> b!7019695 (= e!4219657 e!4219658)))

(declare-fun c!1304509 () Bool)

(assert (=> b!7019695 (= c!1304509 (is-Cons!67543 (exprs!6870 lt!2510802)))))

(declare-fun b!7019696 () Bool)

(assert (=> b!7019696 (= e!4219658 call!637610)))

(declare-fun b!7019697 () Bool)

(assert (=> b!7019697 (= e!4219657 (set.union call!637610 (derivationStepZipperUp!2024 (Context!12741 (t!381422 (exprs!6870 lt!2510802))) (h!73992 s!7408))))))

(assert (= (and d!2188147 res!2865216) b!7019694))

(assert (= (and d!2188147 c!1304510) b!7019697))

(assert (= (and d!2188147 (not c!1304510)) b!7019695))

(assert (= (and b!7019695 c!1304509) b!7019696))

(assert (= (and b!7019695 (not c!1304509)) b!7019693))

(assert (= (or b!7019697 b!7019696) bm!637605))

(declare-fun m!7721038 () Bool)

(assert (=> bm!637605 m!7721038))

(declare-fun m!7721040 () Bool)

(assert (=> b!7019694 m!7721040))

(declare-fun m!7721042 () Bool)

(assert (=> b!7019697 m!7721042))

(assert (=> b!7019562 d!2188147))

(declare-fun d!2188151 () Bool)

(declare-fun choose!52926 ((Set Context!12740) Int) (Set Context!12740))

(assert (=> d!2188151 (= (flatMap!2360 lt!2510803 lambda!410903) (choose!52926 lt!2510803 lambda!410903))))

(declare-fun bs!1867364 () Bool)

(assert (= bs!1867364 d!2188151))

(declare-fun m!7721044 () Bool)

(assert (=> bs!1867364 m!7721044))

(assert (=> b!7019562 d!2188151))

(declare-fun bs!1867365 () Bool)

(declare-fun d!2188153 () Bool)

(assert (= bs!1867365 (and d!2188153 b!7019562)))

(declare-fun lambda!410948 () Int)

(assert (=> bs!1867365 (= lambda!410948 lambda!410903)))

(assert (=> d!2188153 true))

(assert (=> d!2188153 (= (derivationStepZipper!2854 lt!2510803 (h!73992 s!7408)) (flatMap!2360 lt!2510803 lambda!410948))))

(declare-fun bs!1867366 () Bool)

(assert (= bs!1867366 d!2188153))

(declare-fun m!7721046 () Bool)

(assert (=> bs!1867366 m!7721046))

(assert (=> b!7019562 d!2188153))

(assert (=> b!7019562 d!2188123))

(declare-fun b!7019704 () Bool)

(declare-fun e!4219662 () Bool)

(declare-fun tp!1933748 () Bool)

(declare-fun tp!1933749 () Bool)

(assert (=> b!7019704 (= e!4219662 (and tp!1933748 tp!1933749))))

(assert (=> b!7019564 (= tp!1933729 e!4219662)))

(assert (= (and b!7019564 (is-Cons!67543 (exprs!6870 setElem!48633))) b!7019704))

(declare-fun condSetEmpty!48639 () Bool)

(assert (=> setNonEmpty!48633 (= condSetEmpty!48639 (= setRest!48633 (as set.empty (Set Context!12740))))))

(declare-fun setRes!48639 () Bool)

(assert (=> setNonEmpty!48633 (= tp!1933730 setRes!48639)))

(declare-fun setIsEmpty!48639 () Bool)

(assert (=> setIsEmpty!48639 setRes!48639))

(declare-fun setElem!48639 () Context!12740)

(declare-fun tp!1933755 () Bool)

(declare-fun e!4219665 () Bool)

(declare-fun setNonEmpty!48639 () Bool)

(assert (=> setNonEmpty!48639 (= setRes!48639 (and tp!1933755 (inv!86295 setElem!48639) e!4219665))))

(declare-fun setRest!48639 () (Set Context!12740))

(assert (=> setNonEmpty!48639 (= setRest!48633 (set.union (set.insert setElem!48639 (as set.empty (Set Context!12740))) setRest!48639))))

(declare-fun b!7019709 () Bool)

(declare-fun tp!1933754 () Bool)

(assert (=> b!7019709 (= e!4219665 tp!1933754)))

(assert (= (and setNonEmpty!48633 condSetEmpty!48639) setIsEmpty!48639))

(assert (= (and setNonEmpty!48633 (not condSetEmpty!48639)) setNonEmpty!48639))

(assert (= setNonEmpty!48639 b!7019709))

(declare-fun m!7721050 () Bool)

(assert (=> setNonEmpty!48639 m!7721050))

(declare-fun b!7019710 () Bool)

(declare-fun e!4219666 () Bool)

(declare-fun tp!1933756 () Bool)

(declare-fun tp!1933757 () Bool)

(assert (=> b!7019710 (= e!4219666 (and tp!1933756 tp!1933757))))

(assert (=> b!7019565 (= tp!1933728 e!4219666)))

(assert (= (and b!7019565 (is-Cons!67543 (exprs!6870 ct2!306))) b!7019710))

(declare-fun b!7019715 () Bool)

(declare-fun e!4219669 () Bool)

(declare-fun tp!1933760 () Bool)

(assert (=> b!7019715 (= e!4219669 (and tp_is_empty!43973 tp!1933760))))

(assert (=> b!7019571 (= tp!1933731 e!4219669)))

(assert (= (and b!7019571 (is-Cons!67544 (t!381423 s!7408))) b!7019715))

(declare-fun b_lambda!264993 () Bool)

(assert (= b_lambda!264979 (or b!7019569 b_lambda!264993)))

(declare-fun bs!1867369 () Bool)

(declare-fun d!2188157 () Bool)

(assert (= bs!1867369 (and d!2188157 b!7019569)))

(declare-fun validRegex!8916 (Regex!17374) Bool)

(assert (=> bs!1867369 (= (dynLambda!27211 lambda!410902 (h!73991 (exprs!6870 ct2!306))) (validRegex!8916 (h!73991 (exprs!6870 ct2!306))))))

(declare-fun m!7721052 () Bool)

(assert (=> bs!1867369 m!7721052))

(assert (=> b!7019624 d!2188157))

(declare-fun b_lambda!264995 () Bool)

(assert (= b_lambda!264991 (or b!7019562 b_lambda!264995)))

(declare-fun bs!1867370 () Bool)

(declare-fun d!2188159 () Bool)

(assert (= bs!1867370 (and d!2188159 b!7019562)))

(assert (=> bs!1867370 (= (dynLambda!27215 lambda!410903 lt!2510802) (derivationStepZipperUp!2024 lt!2510802 (h!73992 s!7408)))))

(assert (=> bs!1867370 m!7720860))

(assert (=> d!2188143 d!2188159))

(declare-fun b_lambda!264997 () Bool)

(assert (= b_lambda!264981 (or b!7019570 b_lambda!264997)))

(declare-fun bs!1867371 () Bool)

(declare-fun d!2188161 () Bool)

(assert (= bs!1867371 (and d!2188161 b!7019570)))

(assert (=> bs!1867371 (= (dynLambda!27212 lambda!410900 lt!2510860) (matchZipper!2914 (set.insert lt!2510860 (as set.empty (Set Context!12740))) s!7408))))

(declare-fun m!7721054 () Bool)

(assert (=> bs!1867371 m!7721054))

(assert (=> bs!1867371 m!7721054))

(declare-fun m!7721056 () Bool)

(assert (=> bs!1867371 m!7721056))

(assert (=> d!2188113 d!2188161))

(declare-fun b_lambda!264999 () Bool)

(assert (= b_lambda!264985 (or b!7019569 b_lambda!264999)))

(declare-fun bs!1867372 () Bool)

(declare-fun d!2188163 () Bool)

(assert (= bs!1867372 (and d!2188163 b!7019569)))

(declare-fun lt!2510884 () Unit!161430)

(assert (=> bs!1867372 (= lt!2510884 (lemmaConcatPreservesForall!710 (exprs!6870 lt!2510872) (exprs!6870 ct2!306) lambda!410902))))

(assert (=> bs!1867372 (= (dynLambda!27214 lambda!410901 lt!2510872) (Context!12741 (++!15410 (exprs!6870 lt!2510872) (exprs!6870 ct2!306))))))

(declare-fun m!7721058 () Bool)

(assert (=> bs!1867372 m!7721058))

(declare-fun m!7721060 () Bool)

(assert (=> bs!1867372 m!7721060))

(assert (=> d!2188125 d!2188163))

(declare-fun b_lambda!265001 () Bool)

(assert (= b_lambda!264987 (or b!7019569 b_lambda!265001)))

(declare-fun bs!1867373 () Bool)

(declare-fun d!2188165 () Bool)

(assert (= bs!1867373 (and d!2188165 b!7019569)))

(assert (=> bs!1867373 (= (dynLambda!27211 lambda!410902 (h!73991 (exprs!6870 lt!2510808))) (validRegex!8916 (h!73991 (exprs!6870 lt!2510808))))))

(declare-fun m!7721062 () Bool)

(assert (=> bs!1867373 m!7721062))

(assert (=> b!7019677 d!2188165))

(push 1)

(assert (not d!2188135))

(assert (not b!7019704))

(assert (not b!7019666))

(assert (not d!2188115))

(assert (not b!7019709))

(assert (not b!7019715))

(assert (not b!7019630))

(assert (not d!2188113))

(assert (not d!2188141))

(assert (not d!2188119))

(assert (not bs!1867371))

(assert (not setNonEmpty!48639))

(assert (not b!7019694))

(assert (not bs!1867373))

(assert (not d!2188107))

(assert (not d!2188123))

(assert (not b_lambda!265001))

(assert (not b!7019697))

(assert (not b!7019665))

(assert (not d!2188143))

(assert (not d!2188121))

(assert tp_is_empty!43973)

(assert (not d!2188109))

(assert (not b!7019710))

(assert (not b!7019679))

(assert (not b!7019631))

(assert (not b_lambda!264995))

(assert (not d!2188151))

(assert (not d!2188153))

(assert (not b!7019643))

(assert (not b!7019678))

(assert (not bs!1867370))

(assert (not b_lambda!264993))

(assert (not b!7019625))

(assert (not bm!637605))

(assert (not d!2188125))

(assert (not b_lambda!264997))

(assert (not b!7019680))

(assert (not d!2188137))

(assert (not d!2188131))

(assert (not bs!1867372))

(assert (not bs!1867369))

(assert (not b_lambda!264999))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

