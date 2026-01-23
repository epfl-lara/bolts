; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!704950 () Bool)

(assert start!704950)

(declare-fun b!7247559 () Bool)

(assert (=> b!7247559 true))

(declare-fun b!7247554 () Bool)

(declare-fun res!2939732 () Bool)

(declare-fun e!4345601 () Bool)

(assert (=> b!7247554 (=> (not res!2939732) (not e!4345601))))

(declare-datatypes ((C!37528 0))(
  ( (C!37529 (val!28712 Int)) )
))
(declare-datatypes ((Regex!18627 0))(
  ( (ElementMatch!18627 (c!1346432 C!37528)) (Concat!27472 (regOne!37766 Regex!18627) (regTwo!37766 Regex!18627)) (EmptyExpr!18627) (Star!18627 (reg!18956 Regex!18627)) (EmptyLang!18627) (Union!18627 (regOne!37767 Regex!18627) (regTwo!37767 Regex!18627)) )
))
(declare-datatypes ((List!70461 0))(
  ( (Nil!70337) (Cons!70337 (h!76785 Regex!18627) (t!384513 List!70461)) )
))
(declare-datatypes ((Context!15134 0))(
  ( (Context!15135 (exprs!8067 List!70461)) )
))
(declare-fun ct2!328 () Context!15134)

(declare-datatypes ((List!70462 0))(
  ( (Nil!70338) (Cons!70338 (h!76786 C!37528) (t!384514 List!70462)) )
))
(declare-fun s2!1849 () List!70462)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun matchZipper!3537 ((InoxSet Context!15134) List!70462) Bool)

(assert (=> b!7247554 (= res!2939732 (matchZipper!3537 (store ((as const (Array Context!15134 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7247555 () Bool)

(declare-fun e!4345603 () Bool)

(declare-fun tp!2036887 () Bool)

(assert (=> b!7247555 (= e!4345603 tp!2036887)))

(declare-fun b!7247556 () Bool)

(declare-fun e!4345600 () Bool)

(declare-fun tp_is_empty!46719 () Bool)

(declare-fun tp!2036885 () Bool)

(assert (=> b!7247556 (= e!4345600 (and tp_is_empty!46719 tp!2036885))))

(declare-fun b!7247557 () Bool)

(declare-fun e!4345597 () Bool)

(declare-fun tp!2036886 () Bool)

(assert (=> b!7247557 (= e!4345597 (and tp_is_empty!46719 tp!2036886))))

(declare-fun b!7247558 () Bool)

(declare-fun e!4345598 () Bool)

(assert (=> b!7247558 (= e!4345601 e!4345598)))

(declare-fun res!2939733 () Bool)

(assert (=> b!7247558 (=> (not res!2939733) (not e!4345598))))

(declare-fun ct1!232 () Context!15134)

(declare-fun s1!1971 () List!70462)

(get-info :version)

(assert (=> b!7247558 (= res!2939733 (and (not ((_ is Nil!70337) (exprs!8067 ct1!232))) ((_ is Cons!70338) s1!1971)))))

(declare-fun lt!2583473 () List!70461)

(declare-fun ++!16516 (List!70461 List!70461) List!70461)

(assert (=> b!7247558 (= lt!2583473 (++!16516 (exprs!8067 ct1!232) (exprs!8067 ct2!328)))))

(declare-fun lambda!443492 () Int)

(declare-datatypes ((Unit!163837 0))(
  ( (Unit!163838) )
))
(declare-fun lt!2583465 () Unit!163837)

(declare-fun lemmaConcatPreservesForall!1434 (List!70461 List!70461 Int) Unit!163837)

(assert (=> b!7247558 (= lt!2583465 (lemmaConcatPreservesForall!1434 (exprs!8067 ct1!232) (exprs!8067 ct2!328) lambda!443492))))

(declare-fun e!4345602 () Bool)

(declare-fun e!4345599 () Bool)

(assert (=> b!7247559 (= e!4345602 (not e!4345599))))

(declare-fun res!2939734 () Bool)

(assert (=> b!7247559 (=> res!2939734 e!4345599)))

(declare-fun lt!2583474 () (InoxSet Context!15134))

(declare-fun lambda!443493 () Int)

(declare-fun exists!4332 ((InoxSet Context!15134) Int) Bool)

(assert (=> b!7247559 (= res!2939734 (not (exists!4332 lt!2583474 lambda!443493)))))

(declare-datatypes ((List!70463 0))(
  ( (Nil!70339) (Cons!70339 (h!76787 Context!15134) (t!384515 List!70463)) )
))
(declare-fun lt!2583470 () List!70463)

(declare-fun exists!4333 (List!70463 Int) Bool)

(assert (=> b!7247559 (exists!4333 lt!2583470 lambda!443493)))

(declare-fun lt!2583467 () Unit!163837)

(declare-fun lemmaZipperMatchesExistsMatchingContext!730 (List!70463 List!70462) Unit!163837)

(assert (=> b!7247559 (= lt!2583467 (lemmaZipperMatchesExistsMatchingContext!730 lt!2583470 (t!384514 s1!1971)))))

(declare-fun toList!11456 ((InoxSet Context!15134)) List!70463)

(assert (=> b!7247559 (= lt!2583470 (toList!11456 lt!2583474))))

(declare-fun b!7247561 () Bool)

(declare-fun isEmpty!40504 (List!70461) Bool)

(assert (=> b!7247561 (= e!4345599 (not (isEmpty!40504 (exprs!8067 ct1!232))))))

(declare-fun lt!2583466 () (InoxSet Context!15134))

(declare-fun derivationStepZipperUp!2451 (Context!15134 C!37528) (InoxSet Context!15134))

(assert (=> b!7247561 (= lt!2583466 (derivationStepZipperUp!2451 ct1!232 (h!76786 s1!1971)))))

(declare-fun lt!2583472 () Context!15134)

(declare-fun lt!2583464 () Unit!163837)

(assert (=> b!7247561 (= lt!2583464 (lemmaConcatPreservesForall!1434 (exprs!8067 lt!2583472) (exprs!8067 ct2!328) lambda!443492))))

(declare-fun ++!16517 (List!70462 List!70462) List!70462)

(assert (=> b!7247561 (matchZipper!3537 (store ((as const (Array Context!15134 Bool)) false) (Context!15135 (++!16516 (exprs!8067 lt!2583472) (exprs!8067 ct2!328))) true) (++!16517 (t!384514 s1!1971) s2!1849))))

(declare-fun lt!2583471 () Unit!163837)

(assert (=> b!7247561 (= lt!2583471 (lemmaConcatPreservesForall!1434 (exprs!8067 lt!2583472) (exprs!8067 ct2!328) lambda!443492))))

(declare-fun lt!2583468 () Unit!163837)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!372 (Context!15134 Context!15134 List!70462 List!70462) Unit!163837)

(assert (=> b!7247561 (= lt!2583468 (lemmaConcatenateContextMatchesConcatOfStrings!372 lt!2583472 ct2!328 (t!384514 s1!1971) s2!1849))))

(declare-fun getWitness!2171 ((InoxSet Context!15134) Int) Context!15134)

(assert (=> b!7247561 (= lt!2583472 (getWitness!2171 lt!2583474 lambda!443493))))

(declare-fun b!7247562 () Bool)

(assert (=> b!7247562 (= e!4345598 e!4345602)))

(declare-fun res!2939736 () Bool)

(assert (=> b!7247562 (=> (not res!2939736) (not e!4345602))))

(assert (=> b!7247562 (= res!2939736 (matchZipper!3537 lt!2583474 (t!384514 s1!1971)))))

(declare-fun lt!2583469 () (InoxSet Context!15134))

(declare-fun derivationStepZipper!3405 ((InoxSet Context!15134) C!37528) (InoxSet Context!15134))

(assert (=> b!7247562 (= lt!2583474 (derivationStepZipper!3405 lt!2583469 (h!76786 s1!1971)))))

(declare-fun b!7247560 () Bool)

(declare-fun e!4345604 () Bool)

(declare-fun tp!2036888 () Bool)

(assert (=> b!7247560 (= e!4345604 tp!2036888)))

(declare-fun res!2939735 () Bool)

(assert (=> start!704950 (=> (not res!2939735) (not e!4345601))))

(assert (=> start!704950 (= res!2939735 (matchZipper!3537 lt!2583469 s1!1971))))

(assert (=> start!704950 (= lt!2583469 (store ((as const (Array Context!15134 Bool)) false) ct1!232 true))))

(assert (=> start!704950 e!4345601))

(declare-fun inv!89577 (Context!15134) Bool)

(assert (=> start!704950 (and (inv!89577 ct1!232) e!4345603)))

(assert (=> start!704950 e!4345597))

(assert (=> start!704950 e!4345600))

(assert (=> start!704950 (and (inv!89577 ct2!328) e!4345604)))

(assert (= (and start!704950 res!2939735) b!7247554))

(assert (= (and b!7247554 res!2939732) b!7247558))

(assert (= (and b!7247558 res!2939733) b!7247562))

(assert (= (and b!7247562 res!2939736) b!7247559))

(assert (= (and b!7247559 (not res!2939734)) b!7247561))

(assert (= start!704950 b!7247555))

(assert (= (and start!704950 ((_ is Cons!70338) s1!1971)) b!7247557))

(assert (= (and start!704950 ((_ is Cons!70338) s2!1849)) b!7247556))

(assert (= start!704950 b!7247560))

(declare-fun m!7924900 () Bool)

(assert (=> b!7247558 m!7924900))

(declare-fun m!7924902 () Bool)

(assert (=> b!7247558 m!7924902))

(declare-fun m!7924904 () Bool)

(assert (=> b!7247562 m!7924904))

(declare-fun m!7924906 () Bool)

(assert (=> b!7247562 m!7924906))

(declare-fun m!7924908 () Bool)

(assert (=> b!7247554 m!7924908))

(assert (=> b!7247554 m!7924908))

(declare-fun m!7924910 () Bool)

(assert (=> b!7247554 m!7924910))

(declare-fun m!7924912 () Bool)

(assert (=> b!7247561 m!7924912))

(declare-fun m!7924914 () Bool)

(assert (=> b!7247561 m!7924914))

(declare-fun m!7924916 () Bool)

(assert (=> b!7247561 m!7924916))

(declare-fun m!7924918 () Bool)

(assert (=> b!7247561 m!7924918))

(declare-fun m!7924920 () Bool)

(assert (=> b!7247561 m!7924920))

(declare-fun m!7924922 () Bool)

(assert (=> b!7247561 m!7924922))

(assert (=> b!7247561 m!7924918))

(assert (=> b!7247561 m!7924920))

(declare-fun m!7924924 () Bool)

(assert (=> b!7247561 m!7924924))

(declare-fun m!7924926 () Bool)

(assert (=> b!7247561 m!7924926))

(assert (=> b!7247561 m!7924924))

(declare-fun m!7924928 () Bool)

(assert (=> b!7247561 m!7924928))

(declare-fun m!7924930 () Bool)

(assert (=> start!704950 m!7924930))

(declare-fun m!7924932 () Bool)

(assert (=> start!704950 m!7924932))

(declare-fun m!7924934 () Bool)

(assert (=> start!704950 m!7924934))

(declare-fun m!7924936 () Bool)

(assert (=> start!704950 m!7924936))

(declare-fun m!7924938 () Bool)

(assert (=> b!7247559 m!7924938))

(declare-fun m!7924940 () Bool)

(assert (=> b!7247559 m!7924940))

(declare-fun m!7924942 () Bool)

(assert (=> b!7247559 m!7924942))

(declare-fun m!7924944 () Bool)

(assert (=> b!7247559 m!7924944))

(check-sat (not b!7247555) (not b!7247559) (not b!7247562) (not b!7247560) (not b!7247561) (not b!7247556) (not b!7247558) (not b!7247554) (not b!7247557) tp_is_empty!46719 (not start!704950))
(check-sat)
(get-model)

(declare-fun d!2252230 () Bool)

(declare-fun lt!2583477 () Bool)

(assert (=> d!2252230 (= lt!2583477 (exists!4333 (toList!11456 lt!2583474) lambda!443493))))

(declare-fun choose!55934 ((InoxSet Context!15134) Int) Bool)

(assert (=> d!2252230 (= lt!2583477 (choose!55934 lt!2583474 lambda!443493))))

(assert (=> d!2252230 (= (exists!4332 lt!2583474 lambda!443493) lt!2583477)))

(declare-fun bs!1905459 () Bool)

(assert (= bs!1905459 d!2252230))

(assert (=> bs!1905459 m!7924944))

(assert (=> bs!1905459 m!7924944))

(declare-fun m!7924946 () Bool)

(assert (=> bs!1905459 m!7924946))

(declare-fun m!7924948 () Bool)

(assert (=> bs!1905459 m!7924948))

(assert (=> b!7247559 d!2252230))

(declare-fun bs!1905460 () Bool)

(declare-fun d!2252232 () Bool)

(assert (= bs!1905460 (and d!2252232 b!7247559)))

(declare-fun lambda!443496 () Int)

(assert (=> bs!1905460 (not (= lambda!443496 lambda!443493))))

(assert (=> d!2252232 true))

(declare-fun order!28947 () Int)

(declare-fun dynLambda!28704 (Int Int) Int)

(assert (=> d!2252232 (< (dynLambda!28704 order!28947 lambda!443493) (dynLambda!28704 order!28947 lambda!443496))))

(declare-fun forall!17463 (List!70463 Int) Bool)

(assert (=> d!2252232 (= (exists!4333 lt!2583470 lambda!443493) (not (forall!17463 lt!2583470 lambda!443496)))))

(declare-fun bs!1905461 () Bool)

(assert (= bs!1905461 d!2252232))

(declare-fun m!7924950 () Bool)

(assert (=> bs!1905461 m!7924950))

(assert (=> b!7247559 d!2252232))

(declare-fun bs!1905462 () Bool)

(declare-fun d!2252234 () Bool)

(assert (= bs!1905462 (and d!2252234 b!7247559)))

(declare-fun lambda!443499 () Int)

(assert (=> bs!1905462 (= lambda!443499 lambda!443493)))

(declare-fun bs!1905463 () Bool)

(assert (= bs!1905463 (and d!2252234 d!2252232)))

(assert (=> bs!1905463 (not (= lambda!443499 lambda!443496))))

(assert (=> d!2252234 true))

(assert (=> d!2252234 (exists!4333 lt!2583470 lambda!443499)))

(declare-fun lt!2583480 () Unit!163837)

(declare-fun choose!55935 (List!70463 List!70462) Unit!163837)

(assert (=> d!2252234 (= lt!2583480 (choose!55935 lt!2583470 (t!384514 s1!1971)))))

(declare-fun content!14566 (List!70463) (InoxSet Context!15134))

(assert (=> d!2252234 (matchZipper!3537 (content!14566 lt!2583470) (t!384514 s1!1971))))

(assert (=> d!2252234 (= (lemmaZipperMatchesExistsMatchingContext!730 lt!2583470 (t!384514 s1!1971)) lt!2583480)))

(declare-fun bs!1905464 () Bool)

(assert (= bs!1905464 d!2252234))

(declare-fun m!7924952 () Bool)

(assert (=> bs!1905464 m!7924952))

(declare-fun m!7924954 () Bool)

(assert (=> bs!1905464 m!7924954))

(declare-fun m!7924956 () Bool)

(assert (=> bs!1905464 m!7924956))

(assert (=> bs!1905464 m!7924956))

(declare-fun m!7924958 () Bool)

(assert (=> bs!1905464 m!7924958))

(assert (=> b!7247559 d!2252234))

(declare-fun d!2252236 () Bool)

(declare-fun e!4345607 () Bool)

(assert (=> d!2252236 e!4345607))

(declare-fun res!2939739 () Bool)

(assert (=> d!2252236 (=> (not res!2939739) (not e!4345607))))

(declare-fun lt!2583483 () List!70463)

(declare-fun noDuplicate!2976 (List!70463) Bool)

(assert (=> d!2252236 (= res!2939739 (noDuplicate!2976 lt!2583483))))

(declare-fun choose!55936 ((InoxSet Context!15134)) List!70463)

(assert (=> d!2252236 (= lt!2583483 (choose!55936 lt!2583474))))

(assert (=> d!2252236 (= (toList!11456 lt!2583474) lt!2583483)))

(declare-fun b!7247569 () Bool)

(assert (=> b!7247569 (= e!4345607 (= (content!14566 lt!2583483) lt!2583474))))

(assert (= (and d!2252236 res!2939739) b!7247569))

(declare-fun m!7924960 () Bool)

(assert (=> d!2252236 m!7924960))

(declare-fun m!7924962 () Bool)

(assert (=> d!2252236 m!7924962))

(declare-fun m!7924964 () Bool)

(assert (=> b!7247569 m!7924964))

(assert (=> b!7247559 d!2252236))

(declare-fun d!2252238 () Bool)

(declare-fun c!1346437 () Bool)

(declare-fun isEmpty!40505 (List!70462) Bool)

(assert (=> d!2252238 (= c!1346437 (isEmpty!40505 s2!1849))))

(declare-fun e!4345610 () Bool)

(assert (=> d!2252238 (= (matchZipper!3537 (store ((as const (Array Context!15134 Bool)) false) ct2!328 true) s2!1849) e!4345610)))

(declare-fun b!7247574 () Bool)

(declare-fun nullableZipper!2898 ((InoxSet Context!15134)) Bool)

(assert (=> b!7247574 (= e!4345610 (nullableZipper!2898 (store ((as const (Array Context!15134 Bool)) false) ct2!328 true)))))

(declare-fun b!7247575 () Bool)

(declare-fun head!14886 (List!70462) C!37528)

(declare-fun tail!14288 (List!70462) List!70462)

(assert (=> b!7247575 (= e!4345610 (matchZipper!3537 (derivationStepZipper!3405 (store ((as const (Array Context!15134 Bool)) false) ct2!328 true) (head!14886 s2!1849)) (tail!14288 s2!1849)))))

(assert (= (and d!2252238 c!1346437) b!7247574))

(assert (= (and d!2252238 (not c!1346437)) b!7247575))

(declare-fun m!7924966 () Bool)

(assert (=> d!2252238 m!7924966))

(assert (=> b!7247574 m!7924908))

(declare-fun m!7924968 () Bool)

(assert (=> b!7247574 m!7924968))

(declare-fun m!7924970 () Bool)

(assert (=> b!7247575 m!7924970))

(assert (=> b!7247575 m!7924908))

(assert (=> b!7247575 m!7924970))

(declare-fun m!7924972 () Bool)

(assert (=> b!7247575 m!7924972))

(declare-fun m!7924974 () Bool)

(assert (=> b!7247575 m!7924974))

(assert (=> b!7247575 m!7924972))

(assert (=> b!7247575 m!7924974))

(declare-fun m!7924976 () Bool)

(assert (=> b!7247575 m!7924976))

(assert (=> b!7247554 d!2252238))

(declare-fun d!2252242 () Bool)

(declare-fun c!1346438 () Bool)

(assert (=> d!2252242 (= c!1346438 (isEmpty!40505 s1!1971))))

(declare-fun e!4345611 () Bool)

(assert (=> d!2252242 (= (matchZipper!3537 lt!2583469 s1!1971) e!4345611)))

(declare-fun b!7247576 () Bool)

(assert (=> b!7247576 (= e!4345611 (nullableZipper!2898 lt!2583469))))

(declare-fun b!7247577 () Bool)

(assert (=> b!7247577 (= e!4345611 (matchZipper!3537 (derivationStepZipper!3405 lt!2583469 (head!14886 s1!1971)) (tail!14288 s1!1971)))))

(assert (= (and d!2252242 c!1346438) b!7247576))

(assert (= (and d!2252242 (not c!1346438)) b!7247577))

(declare-fun m!7924978 () Bool)

(assert (=> d!2252242 m!7924978))

(declare-fun m!7924980 () Bool)

(assert (=> b!7247576 m!7924980))

(declare-fun m!7924982 () Bool)

(assert (=> b!7247577 m!7924982))

(assert (=> b!7247577 m!7924982))

(declare-fun m!7924984 () Bool)

(assert (=> b!7247577 m!7924984))

(declare-fun m!7924986 () Bool)

(assert (=> b!7247577 m!7924986))

(assert (=> b!7247577 m!7924984))

(assert (=> b!7247577 m!7924986))

(declare-fun m!7924988 () Bool)

(assert (=> b!7247577 m!7924988))

(assert (=> start!704950 d!2252242))

(declare-fun bs!1905465 () Bool)

(declare-fun d!2252244 () Bool)

(assert (= bs!1905465 (and d!2252244 b!7247558)))

(declare-fun lambda!443502 () Int)

(assert (=> bs!1905465 (= lambda!443502 lambda!443492)))

(declare-fun forall!17464 (List!70461 Int) Bool)

(assert (=> d!2252244 (= (inv!89577 ct1!232) (forall!17464 (exprs!8067 ct1!232) lambda!443502))))

(declare-fun bs!1905466 () Bool)

(assert (= bs!1905466 d!2252244))

(declare-fun m!7924990 () Bool)

(assert (=> bs!1905466 m!7924990))

(assert (=> start!704950 d!2252244))

(declare-fun bs!1905467 () Bool)

(declare-fun d!2252246 () Bool)

(assert (= bs!1905467 (and d!2252246 b!7247558)))

(declare-fun lambda!443503 () Int)

(assert (=> bs!1905467 (= lambda!443503 lambda!443492)))

(declare-fun bs!1905468 () Bool)

(assert (= bs!1905468 (and d!2252246 d!2252244)))

(assert (=> bs!1905468 (= lambda!443503 lambda!443502)))

(assert (=> d!2252246 (= (inv!89577 ct2!328) (forall!17464 (exprs!8067 ct2!328) lambda!443503))))

(declare-fun bs!1905469 () Bool)

(assert (= bs!1905469 d!2252246))

(declare-fun m!7925000 () Bool)

(assert (=> bs!1905469 m!7925000))

(assert (=> start!704950 d!2252246))

(declare-fun bs!1905476 () Bool)

(declare-fun d!2252248 () Bool)

(assert (= bs!1905476 (and d!2252248 b!7247558)))

(declare-fun lambda!443513 () Int)

(assert (=> bs!1905476 (= lambda!443513 lambda!443492)))

(declare-fun bs!1905477 () Bool)

(assert (= bs!1905477 (and d!2252248 d!2252244)))

(assert (=> bs!1905477 (= lambda!443513 lambda!443502)))

(declare-fun bs!1905478 () Bool)

(assert (= bs!1905478 (and d!2252248 d!2252246)))

(assert (=> bs!1905478 (= lambda!443513 lambda!443503)))

(assert (=> d!2252248 (matchZipper!3537 (store ((as const (Array Context!15134 Bool)) false) (Context!15135 (++!16516 (exprs!8067 lt!2583472) (exprs!8067 ct2!328))) true) (++!16517 (t!384514 s1!1971) s2!1849))))

(declare-fun lt!2583489 () Unit!163837)

(assert (=> d!2252248 (= lt!2583489 (lemmaConcatPreservesForall!1434 (exprs!8067 lt!2583472) (exprs!8067 ct2!328) lambda!443513))))

(declare-fun lt!2583488 () Unit!163837)

(declare-fun choose!55937 (Context!15134 Context!15134 List!70462 List!70462) Unit!163837)

(assert (=> d!2252248 (= lt!2583488 (choose!55937 lt!2583472 ct2!328 (t!384514 s1!1971) s2!1849))))

(assert (=> d!2252248 (matchZipper!3537 (store ((as const (Array Context!15134 Bool)) false) lt!2583472 true) (t!384514 s1!1971))))

(assert (=> d!2252248 (= (lemmaConcatenateContextMatchesConcatOfStrings!372 lt!2583472 ct2!328 (t!384514 s1!1971) s2!1849) lt!2583488)))

(declare-fun bs!1905479 () Bool)

(assert (= bs!1905479 d!2252248))

(assert (=> bs!1905479 m!7924928))

(assert (=> bs!1905479 m!7924920))

(declare-fun m!7925036 () Bool)

(assert (=> bs!1905479 m!7925036))

(declare-fun m!7925038 () Bool)

(assert (=> bs!1905479 m!7925038))

(assert (=> bs!1905479 m!7924924))

(declare-fun m!7925040 () Bool)

(assert (=> bs!1905479 m!7925040))

(declare-fun m!7925042 () Bool)

(assert (=> bs!1905479 m!7925042))

(assert (=> bs!1905479 m!7925040))

(assert (=> bs!1905479 m!7924920))

(assert (=> bs!1905479 m!7924924))

(assert (=> bs!1905479 m!7924926))

(assert (=> b!7247561 d!2252248))

(declare-fun d!2252262 () Bool)

(assert (=> d!2252262 (= (isEmpty!40504 (exprs!8067 ct1!232)) ((_ is Nil!70337) (exprs!8067 ct1!232)))))

(assert (=> b!7247561 d!2252262))

(declare-fun d!2252264 () Bool)

(assert (=> d!2252264 (forall!17464 (++!16516 (exprs!8067 lt!2583472) (exprs!8067 ct2!328)) lambda!443492)))

(declare-fun lt!2583495 () Unit!163837)

(declare-fun choose!55938 (List!70461 List!70461 Int) Unit!163837)

(assert (=> d!2252264 (= lt!2583495 (choose!55938 (exprs!8067 lt!2583472) (exprs!8067 ct2!328) lambda!443492))))

(assert (=> d!2252264 (forall!17464 (exprs!8067 lt!2583472) lambda!443492)))

(assert (=> d!2252264 (= (lemmaConcatPreservesForall!1434 (exprs!8067 lt!2583472) (exprs!8067 ct2!328) lambda!443492) lt!2583495)))

(declare-fun bs!1905480 () Bool)

(assert (= bs!1905480 d!2252264))

(assert (=> bs!1905480 m!7924928))

(assert (=> bs!1905480 m!7924928))

(declare-fun m!7925058 () Bool)

(assert (=> bs!1905480 m!7925058))

(declare-fun m!7925060 () Bool)

(assert (=> bs!1905480 m!7925060))

(declare-fun m!7925062 () Bool)

(assert (=> bs!1905480 m!7925062))

(assert (=> b!7247561 d!2252264))

(declare-fun d!2252268 () Bool)

(declare-fun c!1346449 () Bool)

(assert (=> d!2252268 (= c!1346449 (isEmpty!40505 (++!16517 (t!384514 s1!1971) s2!1849)))))

(declare-fun e!4345623 () Bool)

(assert (=> d!2252268 (= (matchZipper!3537 (store ((as const (Array Context!15134 Bool)) false) (Context!15135 (++!16516 (exprs!8067 lt!2583472) (exprs!8067 ct2!328))) true) (++!16517 (t!384514 s1!1971) s2!1849)) e!4345623)))

(declare-fun b!7247602 () Bool)

(assert (=> b!7247602 (= e!4345623 (nullableZipper!2898 (store ((as const (Array Context!15134 Bool)) false) (Context!15135 (++!16516 (exprs!8067 lt!2583472) (exprs!8067 ct2!328))) true)))))

(declare-fun b!7247603 () Bool)

(assert (=> b!7247603 (= e!4345623 (matchZipper!3537 (derivationStepZipper!3405 (store ((as const (Array Context!15134 Bool)) false) (Context!15135 (++!16516 (exprs!8067 lt!2583472) (exprs!8067 ct2!328))) true) (head!14886 (++!16517 (t!384514 s1!1971) s2!1849))) (tail!14288 (++!16517 (t!384514 s1!1971) s2!1849))))))

(assert (= (and d!2252268 c!1346449) b!7247602))

(assert (= (and d!2252268 (not c!1346449)) b!7247603))

(assert (=> d!2252268 m!7924924))

(declare-fun m!7925064 () Bool)

(assert (=> d!2252268 m!7925064))

(assert (=> b!7247602 m!7924920))

(declare-fun m!7925066 () Bool)

(assert (=> b!7247602 m!7925066))

(assert (=> b!7247603 m!7924924))

(declare-fun m!7925068 () Bool)

(assert (=> b!7247603 m!7925068))

(assert (=> b!7247603 m!7924920))

(assert (=> b!7247603 m!7925068))

(declare-fun m!7925070 () Bool)

(assert (=> b!7247603 m!7925070))

(assert (=> b!7247603 m!7924924))

(declare-fun m!7925072 () Bool)

(assert (=> b!7247603 m!7925072))

(assert (=> b!7247603 m!7925070))

(assert (=> b!7247603 m!7925072))

(declare-fun m!7925074 () Bool)

(assert (=> b!7247603 m!7925074))

(assert (=> b!7247561 d!2252268))

(declare-fun d!2252270 () Bool)

(declare-fun e!4345628 () Bool)

(assert (=> d!2252270 e!4345628))

(declare-fun res!2939751 () Bool)

(assert (=> d!2252270 (=> (not res!2939751) (not e!4345628))))

(declare-fun lt!2583504 () List!70461)

(declare-fun content!14568 (List!70461) (InoxSet Regex!18627))

(assert (=> d!2252270 (= res!2939751 (= (content!14568 lt!2583504) ((_ map or) (content!14568 (exprs!8067 lt!2583472)) (content!14568 (exprs!8067 ct2!328)))))))

(declare-fun e!4345629 () List!70461)

(assert (=> d!2252270 (= lt!2583504 e!4345629)))

(declare-fun c!1346452 () Bool)

(assert (=> d!2252270 (= c!1346452 ((_ is Nil!70337) (exprs!8067 lt!2583472)))))

(assert (=> d!2252270 (= (++!16516 (exprs!8067 lt!2583472) (exprs!8067 ct2!328)) lt!2583504)))

(declare-fun b!7247614 () Bool)

(assert (=> b!7247614 (= e!4345629 (exprs!8067 ct2!328))))

(declare-fun b!7247616 () Bool)

(declare-fun res!2939750 () Bool)

(assert (=> b!7247616 (=> (not res!2939750) (not e!4345628))))

(declare-fun size!41687 (List!70461) Int)

(assert (=> b!7247616 (= res!2939750 (= (size!41687 lt!2583504) (+ (size!41687 (exprs!8067 lt!2583472)) (size!41687 (exprs!8067 ct2!328)))))))

(declare-fun b!7247615 () Bool)

(assert (=> b!7247615 (= e!4345629 (Cons!70337 (h!76785 (exprs!8067 lt!2583472)) (++!16516 (t!384513 (exprs!8067 lt!2583472)) (exprs!8067 ct2!328))))))

(declare-fun b!7247617 () Bool)

(assert (=> b!7247617 (= e!4345628 (or (not (= (exprs!8067 ct2!328) Nil!70337)) (= lt!2583504 (exprs!8067 lt!2583472))))))

(assert (= (and d!2252270 c!1346452) b!7247614))

(assert (= (and d!2252270 (not c!1346452)) b!7247615))

(assert (= (and d!2252270 res!2939751) b!7247616))

(assert (= (and b!7247616 res!2939750) b!7247617))

(declare-fun m!7925088 () Bool)

(assert (=> d!2252270 m!7925088))

(declare-fun m!7925090 () Bool)

(assert (=> d!2252270 m!7925090))

(declare-fun m!7925092 () Bool)

(assert (=> d!2252270 m!7925092))

(declare-fun m!7925094 () Bool)

(assert (=> b!7247616 m!7925094))

(declare-fun m!7925096 () Bool)

(assert (=> b!7247616 m!7925096))

(declare-fun m!7925098 () Bool)

(assert (=> b!7247616 m!7925098))

(declare-fun m!7925100 () Bool)

(assert (=> b!7247615 m!7925100))

(assert (=> b!7247561 d!2252270))

(declare-fun b!7247628 () Bool)

(declare-fun res!2939757 () Bool)

(declare-fun e!4345635 () Bool)

(assert (=> b!7247628 (=> (not res!2939757) (not e!4345635))))

(declare-fun lt!2583509 () List!70462)

(declare-fun size!41688 (List!70462) Int)

(assert (=> b!7247628 (= res!2939757 (= (size!41688 lt!2583509) (+ (size!41688 (t!384514 s1!1971)) (size!41688 s2!1849))))))

(declare-fun b!7247626 () Bool)

(declare-fun e!4345634 () List!70462)

(assert (=> b!7247626 (= e!4345634 s2!1849)))

(declare-fun b!7247627 () Bool)

(assert (=> b!7247627 (= e!4345634 (Cons!70338 (h!76786 (t!384514 s1!1971)) (++!16517 (t!384514 (t!384514 s1!1971)) s2!1849)))))

(declare-fun b!7247629 () Bool)

(assert (=> b!7247629 (= e!4345635 (or (not (= s2!1849 Nil!70338)) (= lt!2583509 (t!384514 s1!1971))))))

(declare-fun d!2252278 () Bool)

(assert (=> d!2252278 e!4345635))

(declare-fun res!2939756 () Bool)

(assert (=> d!2252278 (=> (not res!2939756) (not e!4345635))))

(declare-fun content!14569 (List!70462) (InoxSet C!37528))

(assert (=> d!2252278 (= res!2939756 (= (content!14569 lt!2583509) ((_ map or) (content!14569 (t!384514 s1!1971)) (content!14569 s2!1849))))))

(assert (=> d!2252278 (= lt!2583509 e!4345634)))

(declare-fun c!1346457 () Bool)

(assert (=> d!2252278 (= c!1346457 ((_ is Nil!70338) (t!384514 s1!1971)))))

(assert (=> d!2252278 (= (++!16517 (t!384514 s1!1971) s2!1849) lt!2583509)))

(assert (= (and d!2252278 c!1346457) b!7247626))

(assert (= (and d!2252278 (not c!1346457)) b!7247627))

(assert (= (and d!2252278 res!2939756) b!7247628))

(assert (= (and b!7247628 res!2939757) b!7247629))

(declare-fun m!7925102 () Bool)

(assert (=> b!7247628 m!7925102))

(declare-fun m!7925104 () Bool)

(assert (=> b!7247628 m!7925104))

(declare-fun m!7925106 () Bool)

(assert (=> b!7247628 m!7925106))

(declare-fun m!7925108 () Bool)

(assert (=> b!7247627 m!7925108))

(declare-fun m!7925110 () Bool)

(assert (=> d!2252278 m!7925110))

(declare-fun m!7925112 () Bool)

(assert (=> d!2252278 m!7925112))

(declare-fun m!7925114 () Bool)

(assert (=> d!2252278 m!7925114))

(assert (=> b!7247561 d!2252278))

(declare-fun d!2252280 () Bool)

(declare-fun c!1346463 () Bool)

(declare-fun e!4345645 () Bool)

(assert (=> d!2252280 (= c!1346463 e!4345645)))

(declare-fun res!2939763 () Bool)

(assert (=> d!2252280 (=> (not res!2939763) (not e!4345645))))

(assert (=> d!2252280 (= res!2939763 ((_ is Cons!70337) (exprs!8067 ct1!232)))))

(declare-fun e!4345646 () (InoxSet Context!15134))

(assert (=> d!2252280 (= (derivationStepZipperUp!2451 ct1!232 (h!76786 s1!1971)) e!4345646)))

(declare-fun b!7247643 () Bool)

(declare-fun e!4345647 () (InoxSet Context!15134))

(declare-fun call!659981 () (InoxSet Context!15134))

(assert (=> b!7247643 (= e!4345647 call!659981)))

(declare-fun b!7247644 () Bool)

(assert (=> b!7247644 (= e!4345646 ((_ map or) call!659981 (derivationStepZipperUp!2451 (Context!15135 (t!384513 (exprs!8067 ct1!232))) (h!76786 s1!1971))))))

(declare-fun b!7247645 () Bool)

(assert (=> b!7247645 (= e!4345646 e!4345647)))

(declare-fun c!1346462 () Bool)

(assert (=> b!7247645 (= c!1346462 ((_ is Cons!70337) (exprs!8067 ct1!232)))))

(declare-fun bm!659976 () Bool)

(declare-fun derivationStepZipperDown!2620 (Regex!18627 Context!15134 C!37528) (InoxSet Context!15134))

(assert (=> bm!659976 (= call!659981 (derivationStepZipperDown!2620 (h!76785 (exprs!8067 ct1!232)) (Context!15135 (t!384513 (exprs!8067 ct1!232))) (h!76786 s1!1971)))))

(declare-fun b!7247646 () Bool)

(assert (=> b!7247646 (= e!4345647 ((as const (Array Context!15134 Bool)) false))))

(declare-fun b!7247647 () Bool)

(declare-fun nullable!7889 (Regex!18627) Bool)

(assert (=> b!7247647 (= e!4345645 (nullable!7889 (h!76785 (exprs!8067 ct1!232))))))

(assert (= (and d!2252280 res!2939763) b!7247647))

(assert (= (and d!2252280 c!1346463) b!7247644))

(assert (= (and d!2252280 (not c!1346463)) b!7247645))

(assert (= (and b!7247645 c!1346462) b!7247643))

(assert (= (and b!7247645 (not c!1346462)) b!7247646))

(assert (= (or b!7247644 b!7247643) bm!659976))

(declare-fun m!7925130 () Bool)

(assert (=> b!7247644 m!7925130))

(declare-fun m!7925132 () Bool)

(assert (=> bm!659976 m!7925132))

(declare-fun m!7925134 () Bool)

(assert (=> b!7247647 m!7925134))

(assert (=> b!7247561 d!2252280))

(declare-fun d!2252286 () Bool)

(declare-fun e!4345653 () Bool)

(assert (=> d!2252286 e!4345653))

(declare-fun res!2939769 () Bool)

(assert (=> d!2252286 (=> (not res!2939769) (not e!4345653))))

(declare-fun lt!2583519 () Context!15134)

(declare-fun dynLambda!28706 (Int Context!15134) Bool)

(assert (=> d!2252286 (= res!2939769 (dynLambda!28706 lambda!443493 lt!2583519))))

(declare-fun getWitness!2172 (List!70463 Int) Context!15134)

(assert (=> d!2252286 (= lt!2583519 (getWitness!2172 (toList!11456 lt!2583474) lambda!443493))))

(assert (=> d!2252286 (exists!4332 lt!2583474 lambda!443493)))

(assert (=> d!2252286 (= (getWitness!2171 lt!2583474 lambda!443493) lt!2583519)))

(declare-fun b!7247653 () Bool)

(assert (=> b!7247653 (= e!4345653 (select lt!2583474 lt!2583519))))

(assert (= (and d!2252286 res!2939769) b!7247653))

(declare-fun b_lambda!278163 () Bool)

(assert (=> (not b_lambda!278163) (not d!2252286)))

(declare-fun m!7925142 () Bool)

(assert (=> d!2252286 m!7925142))

(assert (=> d!2252286 m!7924944))

(assert (=> d!2252286 m!7924944))

(declare-fun m!7925144 () Bool)

(assert (=> d!2252286 m!7925144))

(assert (=> d!2252286 m!7924938))

(declare-fun m!7925146 () Bool)

(assert (=> b!7247653 m!7925146))

(assert (=> b!7247561 d!2252286))

(declare-fun d!2252290 () Bool)

(declare-fun c!1346464 () Bool)

(assert (=> d!2252290 (= c!1346464 (isEmpty!40505 (t!384514 s1!1971)))))

(declare-fun e!4345654 () Bool)

(assert (=> d!2252290 (= (matchZipper!3537 lt!2583474 (t!384514 s1!1971)) e!4345654)))

(declare-fun b!7247654 () Bool)

(assert (=> b!7247654 (= e!4345654 (nullableZipper!2898 lt!2583474))))

(declare-fun b!7247655 () Bool)

(assert (=> b!7247655 (= e!4345654 (matchZipper!3537 (derivationStepZipper!3405 lt!2583474 (head!14886 (t!384514 s1!1971))) (tail!14288 (t!384514 s1!1971))))))

(assert (= (and d!2252290 c!1346464) b!7247654))

(assert (= (and d!2252290 (not c!1346464)) b!7247655))

(declare-fun m!7925148 () Bool)

(assert (=> d!2252290 m!7925148))

(declare-fun m!7925150 () Bool)

(assert (=> b!7247654 m!7925150))

(declare-fun m!7925152 () Bool)

(assert (=> b!7247655 m!7925152))

(assert (=> b!7247655 m!7925152))

(declare-fun m!7925154 () Bool)

(assert (=> b!7247655 m!7925154))

(declare-fun m!7925156 () Bool)

(assert (=> b!7247655 m!7925156))

(assert (=> b!7247655 m!7925154))

(assert (=> b!7247655 m!7925156))

(declare-fun m!7925158 () Bool)

(assert (=> b!7247655 m!7925158))

(assert (=> b!7247562 d!2252290))

(declare-fun d!2252292 () Bool)

(assert (=> d!2252292 true))

(declare-fun lambda!443522 () Int)

(declare-fun flatMap!2793 ((InoxSet Context!15134) Int) (InoxSet Context!15134))

(assert (=> d!2252292 (= (derivationStepZipper!3405 lt!2583469 (h!76786 s1!1971)) (flatMap!2793 lt!2583469 lambda!443522))))

(declare-fun bs!1905488 () Bool)

(assert (= bs!1905488 d!2252292))

(declare-fun m!7925160 () Bool)

(assert (=> bs!1905488 m!7925160))

(assert (=> b!7247562 d!2252292))

(declare-fun d!2252294 () Bool)

(declare-fun e!4345655 () Bool)

(assert (=> d!2252294 e!4345655))

(declare-fun res!2939771 () Bool)

(assert (=> d!2252294 (=> (not res!2939771) (not e!4345655))))

(declare-fun lt!2583520 () List!70461)

(assert (=> d!2252294 (= res!2939771 (= (content!14568 lt!2583520) ((_ map or) (content!14568 (exprs!8067 ct1!232)) (content!14568 (exprs!8067 ct2!328)))))))

(declare-fun e!4345656 () List!70461)

(assert (=> d!2252294 (= lt!2583520 e!4345656)))

(declare-fun c!1346467 () Bool)

(assert (=> d!2252294 (= c!1346467 ((_ is Nil!70337) (exprs!8067 ct1!232)))))

(assert (=> d!2252294 (= (++!16516 (exprs!8067 ct1!232) (exprs!8067 ct2!328)) lt!2583520)))

(declare-fun b!7247658 () Bool)

(assert (=> b!7247658 (= e!4345656 (exprs!8067 ct2!328))))

(declare-fun b!7247660 () Bool)

(declare-fun res!2939770 () Bool)

(assert (=> b!7247660 (=> (not res!2939770) (not e!4345655))))

(assert (=> b!7247660 (= res!2939770 (= (size!41687 lt!2583520) (+ (size!41687 (exprs!8067 ct1!232)) (size!41687 (exprs!8067 ct2!328)))))))

(declare-fun b!7247659 () Bool)

(assert (=> b!7247659 (= e!4345656 (Cons!70337 (h!76785 (exprs!8067 ct1!232)) (++!16516 (t!384513 (exprs!8067 ct1!232)) (exprs!8067 ct2!328))))))

(declare-fun b!7247661 () Bool)

(assert (=> b!7247661 (= e!4345655 (or (not (= (exprs!8067 ct2!328) Nil!70337)) (= lt!2583520 (exprs!8067 ct1!232))))))

(assert (= (and d!2252294 c!1346467) b!7247658))

(assert (= (and d!2252294 (not c!1346467)) b!7247659))

(assert (= (and d!2252294 res!2939771) b!7247660))

(assert (= (and b!7247660 res!2939770) b!7247661))

(declare-fun m!7925162 () Bool)

(assert (=> d!2252294 m!7925162))

(declare-fun m!7925164 () Bool)

(assert (=> d!2252294 m!7925164))

(assert (=> d!2252294 m!7925092))

(declare-fun m!7925166 () Bool)

(assert (=> b!7247660 m!7925166))

(declare-fun m!7925168 () Bool)

(assert (=> b!7247660 m!7925168))

(assert (=> b!7247660 m!7925098))

(declare-fun m!7925170 () Bool)

(assert (=> b!7247659 m!7925170))

(assert (=> b!7247558 d!2252294))

(declare-fun d!2252296 () Bool)

(assert (=> d!2252296 (forall!17464 (++!16516 (exprs!8067 ct1!232) (exprs!8067 ct2!328)) lambda!443492)))

(declare-fun lt!2583523 () Unit!163837)

(assert (=> d!2252296 (= lt!2583523 (choose!55938 (exprs!8067 ct1!232) (exprs!8067 ct2!328) lambda!443492))))

(assert (=> d!2252296 (forall!17464 (exprs!8067 ct1!232) lambda!443492)))

(assert (=> d!2252296 (= (lemmaConcatPreservesForall!1434 (exprs!8067 ct1!232) (exprs!8067 ct2!328) lambda!443492) lt!2583523)))

(declare-fun bs!1905489 () Bool)

(assert (= bs!1905489 d!2252296))

(assert (=> bs!1905489 m!7924900))

(assert (=> bs!1905489 m!7924900))

(declare-fun m!7925172 () Bool)

(assert (=> bs!1905489 m!7925172))

(declare-fun m!7925174 () Bool)

(assert (=> bs!1905489 m!7925174))

(declare-fun m!7925176 () Bool)

(assert (=> bs!1905489 m!7925176))

(assert (=> b!7247558 d!2252296))

(declare-fun b!7247666 () Bool)

(declare-fun e!4345659 () Bool)

(declare-fun tp!2036893 () Bool)

(declare-fun tp!2036894 () Bool)

(assert (=> b!7247666 (= e!4345659 (and tp!2036893 tp!2036894))))

(assert (=> b!7247555 (= tp!2036887 e!4345659)))

(assert (= (and b!7247555 ((_ is Cons!70337) (exprs!8067 ct1!232))) b!7247666))

(declare-fun b!7247667 () Bool)

(declare-fun e!4345660 () Bool)

(declare-fun tp!2036895 () Bool)

(declare-fun tp!2036896 () Bool)

(assert (=> b!7247667 (= e!4345660 (and tp!2036895 tp!2036896))))

(assert (=> b!7247560 (= tp!2036888 e!4345660)))

(assert (= (and b!7247560 ((_ is Cons!70337) (exprs!8067 ct2!328))) b!7247667))

(declare-fun b!7247672 () Bool)

(declare-fun e!4345663 () Bool)

(declare-fun tp!2036899 () Bool)

(assert (=> b!7247672 (= e!4345663 (and tp_is_empty!46719 tp!2036899))))

(assert (=> b!7247556 (= tp!2036885 e!4345663)))

(assert (= (and b!7247556 ((_ is Cons!70338) (t!384514 s2!1849))) b!7247672))

(declare-fun b!7247673 () Bool)

(declare-fun e!4345664 () Bool)

(declare-fun tp!2036900 () Bool)

(assert (=> b!7247673 (= e!4345664 (and tp_is_empty!46719 tp!2036900))))

(assert (=> b!7247557 (= tp!2036886 e!4345664)))

(assert (= (and b!7247557 ((_ is Cons!70338) (t!384514 s1!1971))) b!7247673))

(declare-fun b_lambda!278165 () Bool)

(assert (= b_lambda!278163 (or b!7247559 b_lambda!278165)))

(declare-fun bs!1905490 () Bool)

(declare-fun d!2252298 () Bool)

(assert (= bs!1905490 (and d!2252298 b!7247559)))

(assert (=> bs!1905490 (= (dynLambda!28706 lambda!443493 lt!2583519) (matchZipper!3537 (store ((as const (Array Context!15134 Bool)) false) lt!2583519 true) (t!384514 s1!1971)))))

(declare-fun m!7925178 () Bool)

(assert (=> bs!1905490 m!7925178))

(assert (=> bs!1905490 m!7925178))

(declare-fun m!7925180 () Bool)

(assert (=> bs!1905490 m!7925180))

(assert (=> d!2252286 d!2252298))

(check-sat (not b!7247627) (not b_lambda!278165) (not b!7247616) (not d!2252294) (not b!7247603) (not d!2252236) (not d!2252234) (not b!7247628) (not b!7247602) (not b!7247660) (not d!2252248) (not b!7247576) (not d!2252230) (not d!2252246) (not d!2252268) (not b!7247667) (not b!7247654) (not b!7247655) (not b!7247575) (not b!7247574) (not d!2252278) (not b!7247666) (not b!7247577) (not d!2252270) (not b!7247644) (not d!2252290) (not b!7247659) tp_is_empty!46719 (not d!2252232) (not d!2252242) (not d!2252286) (not d!2252244) (not d!2252296) (not b!7247673) (not b!7247672) (not b!7247615) (not d!2252264) (not bm!659976) (not d!2252292) (not bs!1905490) (not b!7247569) (not b!7247647) (not d!2252238))
(check-sat)
