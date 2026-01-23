; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!684746 () Bool)

(assert start!684746)

(declare-fun b!7057676 () Bool)

(assert (=> b!7057676 true))

(declare-fun b!7057679 () Bool)

(assert (=> b!7057679 true))

(declare-fun b!7057661 () Bool)

(assert (=> b!7057661 true))

(declare-fun b!7057659 () Bool)

(declare-fun e!4242977 () Bool)

(declare-fun e!4242970 () Bool)

(assert (=> b!7057659 (= e!4242977 e!4242970)))

(declare-fun res!2881338 () Bool)

(assert (=> b!7057659 (=> res!2881338 e!4242970)))

(declare-fun e!4242966 () Bool)

(assert (=> b!7057659 (= res!2881338 e!4242966)))

(declare-fun res!2881349 () Bool)

(assert (=> b!7057659 (=> (not res!2881349) (not e!4242966))))

(declare-fun lt!2533943 () Bool)

(declare-fun lt!2533944 () Bool)

(assert (=> b!7057659 (= res!2881349 (not (= lt!2533943 lt!2533944)))))

(declare-datatypes ((C!35438 0))(
  ( (C!35439 (val!27421 Int)) )
))
(declare-datatypes ((Regex!17584 0))(
  ( (ElementMatch!17584 (c!1315081 C!35438)) (Concat!26429 (regOne!35680 Regex!17584) (regTwo!35680 Regex!17584)) (EmptyExpr!17584) (Star!17584 (reg!17913 Regex!17584)) (EmptyLang!17584) (Union!17584 (regOne!35681 Regex!17584) (regTwo!35681 Regex!17584)) )
))
(declare-datatypes ((List!68278 0))(
  ( (Nil!68154) (Cons!68154 (h!74602 Regex!17584) (t!382057 List!68278)) )
))
(declare-datatypes ((Context!13160 0))(
  ( (Context!13161 (exprs!7080 List!68278)) )
))
(declare-fun lt!2533954 () (Set Context!13160))

(declare-datatypes ((List!68279 0))(
  ( (Nil!68155) (Cons!68155 (h!74603 C!35438) (t!382058 List!68279)) )
))
(declare-fun s!7408 () List!68279)

(declare-fun matchZipper!3124 ((Set Context!13160) List!68279) Bool)

(assert (=> b!7057659 (= lt!2533943 (matchZipper!3124 lt!2533954 (t!382058 s!7408)))))

(declare-datatypes ((Unit!161841 0))(
  ( (Unit!161842) )
))
(declare-fun lt!2533945 () Unit!161841)

(declare-fun lambda!421195 () Int)

(declare-fun lt!2533935 () List!68278)

(declare-fun ct2!306 () Context!13160)

(declare-fun lemmaConcatPreservesForall!895 (List!68278 List!68278 Int) Unit!161841)

(assert (=> b!7057659 (= lt!2533945 (lemmaConcatPreservesForall!895 lt!2533935 (exprs!7080 ct2!306) lambda!421195))))

(declare-fun lt!2533929 () (Set Context!13160))

(declare-fun e!4242975 () Bool)

(assert (=> b!7057659 (= (matchZipper!3124 lt!2533929 (t!382058 s!7408)) e!4242975)))

(declare-fun res!2881355 () Bool)

(assert (=> b!7057659 (=> res!2881355 e!4242975)))

(assert (=> b!7057659 (= res!2881355 lt!2533944)))

(declare-fun lt!2533938 () (Set Context!13160))

(assert (=> b!7057659 (= lt!2533944 (matchZipper!3124 lt!2533938 (t!382058 s!7408)))))

(declare-fun lt!2533924 () Unit!161841)

(declare-fun lt!2533946 () (Set Context!13160))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1597 ((Set Context!13160) (Set Context!13160) List!68279) Unit!161841)

(assert (=> b!7057659 (= lt!2533924 (lemmaZipperConcatMatchesSameAsBothZippers!1597 lt!2533938 lt!2533946 (t!382058 s!7408)))))

(declare-fun lt!2533955 () Unit!161841)

(assert (=> b!7057659 (= lt!2533955 (lemmaConcatPreservesForall!895 lt!2533935 (exprs!7080 ct2!306) lambda!421195))))

(declare-fun lt!2533947 () Unit!161841)

(assert (=> b!7057659 (= lt!2533947 (lemmaConcatPreservesForall!895 lt!2533935 (exprs!7080 ct2!306) lambda!421195))))

(declare-fun b!7057660 () Bool)

(declare-fun e!4242967 () Bool)

(declare-fun e!4242969 () Bool)

(assert (=> b!7057660 (= e!4242967 e!4242969)))

(declare-fun res!2881335 () Bool)

(assert (=> b!7057660 (=> res!2881335 e!4242969)))

(declare-fun lt!2533953 () (Set Context!13160))

(declare-fun derivationStepZipper!3034 ((Set Context!13160) C!35438) (Set Context!13160))

(assert (=> b!7057660 (= res!2881335 (not (= (derivationStepZipper!3034 lt!2533953 (h!74603 s!7408)) lt!2533946)))))

(declare-fun lt!2533949 () Unit!161841)

(assert (=> b!7057660 (= lt!2533949 (lemmaConcatPreservesForall!895 lt!2533935 (exprs!7080 ct2!306) lambda!421195))))

(declare-fun lt!2533925 () Unit!161841)

(assert (=> b!7057660 (= lt!2533925 (lemmaConcatPreservesForall!895 lt!2533935 (exprs!7080 ct2!306) lambda!421195))))

(declare-fun lambda!421196 () Int)

(declare-fun lt!2533961 () Context!13160)

(declare-fun flatMap!2510 ((Set Context!13160) Int) (Set Context!13160))

(declare-fun derivationStepZipperUp!2168 (Context!13160 C!35438) (Set Context!13160))

(assert (=> b!7057660 (= (flatMap!2510 lt!2533953 lambda!421196) (derivationStepZipperUp!2168 lt!2533961 (h!74603 s!7408)))))

(declare-fun lt!2533917 () Unit!161841)

(declare-fun lemmaFlatMapOnSingletonSet!2019 ((Set Context!13160) Context!13160 Int) Unit!161841)

(assert (=> b!7057660 (= lt!2533917 (lemmaFlatMapOnSingletonSet!2019 lt!2533953 lt!2533961 lambda!421196))))

(assert (=> b!7057660 (= lt!2533953 (set.insert lt!2533961 (as set.empty (Set Context!13160))))))

(declare-fun lt!2533950 () Unit!161841)

(assert (=> b!7057660 (= lt!2533950 (lemmaConcatPreservesForall!895 lt!2533935 (exprs!7080 ct2!306) lambda!421195))))

(declare-fun lt!2533939 () Unit!161841)

(assert (=> b!7057660 (= lt!2533939 (lemmaConcatPreservesForall!895 lt!2533935 (exprs!7080 ct2!306) lambda!421195))))

(declare-fun e!4242965 () Bool)

(declare-fun e!4242979 () Bool)

(assert (=> b!7057661 (= e!4242965 e!4242979)))

(declare-fun res!2881352 () Bool)

(assert (=> b!7057661 (=> res!2881352 e!4242979)))

(declare-fun lt!2533956 () (Set Context!13160))

(assert (=> b!7057661 (= res!2881352 (not (= (derivationStepZipper!3034 lt!2533956 (h!74603 s!7408)) lt!2533954)))))

(declare-fun lt!2533928 () Context!13160)

(assert (=> b!7057661 (= (flatMap!2510 lt!2533956 lambda!421196) (derivationStepZipperUp!2168 lt!2533928 (h!74603 s!7408)))))

(declare-fun lt!2533921 () Unit!161841)

(assert (=> b!7057661 (= lt!2533921 (lemmaFlatMapOnSingletonSet!2019 lt!2533956 lt!2533928 lambda!421196))))

(assert (=> b!7057661 (= lt!2533954 (derivationStepZipperUp!2168 lt!2533928 (h!74603 s!7408)))))

(declare-fun lt!2533918 () Context!13160)

(declare-fun lt!2533942 () Unit!161841)

(assert (=> b!7057661 (= lt!2533942 (lemmaConcatPreservesForall!895 (exprs!7080 lt!2533918) (exprs!7080 ct2!306) lambda!421195))))

(declare-fun b!7057662 () Bool)

(assert (=> b!7057662 (= e!4242966 (not (matchZipper!3124 lt!2533946 (t!382058 s!7408))))))

(declare-fun lt!2533922 () Unit!161841)

(assert (=> b!7057662 (= lt!2533922 (lemmaConcatPreservesForall!895 lt!2533935 (exprs!7080 ct2!306) lambda!421195))))

(declare-fun b!7057663 () Bool)

(declare-fun e!4242974 () Bool)

(declare-fun tp!1940539 () Bool)

(assert (=> b!7057663 (= e!4242974 tp!1940539)))

(declare-fun b!7057664 () Bool)

(declare-fun e!4242963 () Bool)

(declare-fun tp!1940540 () Bool)

(assert (=> b!7057664 (= e!4242963 tp!1940540)))

(declare-fun setIsEmpty!49924 () Bool)

(declare-fun setRes!49924 () Bool)

(assert (=> setIsEmpty!49924 setRes!49924))

(declare-fun b!7057665 () Bool)

(declare-fun res!2881339 () Bool)

(assert (=> b!7057665 (=> res!2881339 e!4242970)))

(assert (=> b!7057665 (= res!2881339 (not lt!2533943))))

(declare-fun b!7057666 () Bool)

(declare-fun res!2881340 () Bool)

(declare-fun e!4242971 () Bool)

(assert (=> b!7057666 (=> res!2881340 e!4242971)))

(declare-fun lt!2533927 () (Set Context!13160))

(declare-fun appendTo!705 ((Set Context!13160) Context!13160) (Set Context!13160))

(assert (=> b!7057666 (= res!2881340 (not (matchZipper!3124 (appendTo!705 lt!2533927 ct2!306) s!7408)))))

(declare-fun b!7057667 () Bool)

(declare-fun e!4242976 () Bool)

(assert (=> b!7057667 (= e!4242976 e!4242965)))

(declare-fun res!2881351 () Bool)

(assert (=> b!7057667 (=> res!2881351 e!4242965)))

(declare-fun lt!2533952 () (Set Context!13160))

(assert (=> b!7057667 (= res!2881351 (not (= lt!2533956 lt!2533952)))))

(assert (=> b!7057667 (= lt!2533956 (set.insert lt!2533928 (as set.empty (Set Context!13160))))))

(declare-fun lt!2533920 () Unit!161841)

(assert (=> b!7057667 (= lt!2533920 (lemmaConcatPreservesForall!895 (exprs!7080 lt!2533918) (exprs!7080 ct2!306) lambda!421195))))

(declare-fun b!7057668 () Bool)

(declare-fun e!4242972 () Bool)

(assert (=> b!7057668 (= e!4242969 e!4242972)))

(declare-fun res!2881348 () Bool)

(assert (=> b!7057668 (=> res!2881348 e!4242972)))

(assert (=> b!7057668 (= res!2881348 (not (matchZipper!3124 lt!2533953 s!7408)))))

(declare-fun lt!2533931 () Unit!161841)

(assert (=> b!7057668 (= lt!2533931 (lemmaConcatPreservesForall!895 lt!2533935 (exprs!7080 ct2!306) lambda!421195))))

(declare-fun b!7057669 () Bool)

(declare-fun res!2881346 () Bool)

(assert (=> b!7057669 (=> res!2881346 e!4242979)))

(assert (=> b!7057669 (= res!2881346 (not (is-Cons!68154 (exprs!7080 lt!2533918))))))

(declare-fun b!7057670 () Bool)

(declare-fun e!4242968 () Bool)

(declare-fun tp_is_empty!44393 () Bool)

(declare-fun tp!1940538 () Bool)

(assert (=> b!7057670 (= e!4242968 (and tp_is_empty!44393 tp!1940538))))

(declare-fun b!7057671 () Bool)

(declare-fun res!2881354 () Bool)

(declare-fun e!4242973 () Bool)

(assert (=> b!7057671 (=> (not res!2881354) (not e!4242973))))

(assert (=> b!7057671 (= res!2881354 (is-Cons!68155 s!7408))))

(declare-fun b!7057672 () Bool)

(declare-fun res!2881342 () Bool)

(assert (=> b!7057672 (=> res!2881342 e!4242971)))

(declare-fun lt!2533926 () Context!13160)

(declare-fun lt!2533937 () Int)

(declare-datatypes ((List!68280 0))(
  ( (Nil!68156) (Cons!68156 (h!74604 Context!13160) (t!382059 List!68280)) )
))
(declare-fun zipperDepthTotal!549 (List!68280) Int)

(assert (=> b!7057672 (= res!2881342 (>= (zipperDepthTotal!549 (Cons!68156 lt!2533926 Nil!68156)) lt!2533937))))

(declare-fun b!7057673 () Bool)

(declare-fun res!2881343 () Bool)

(declare-fun e!4242978 () Bool)

(assert (=> b!7057673 (=> res!2881343 e!4242978)))

(declare-fun lt!2533957 () Context!13160)

(declare-fun lt!2533930 () (Set Context!13160))

(assert (=> b!7057673 (= res!2881343 (not (set.member lt!2533957 lt!2533930)))))

(declare-fun res!2881350 () Bool)

(assert (=> start!684746 (=> (not res!2881350) (not e!4242973))))

(assert (=> start!684746 (= res!2881350 (matchZipper!3124 lt!2533930 s!7408))))

(declare-fun z1!570 () (Set Context!13160))

(assert (=> start!684746 (= lt!2533930 (appendTo!705 z1!570 ct2!306))))

(assert (=> start!684746 e!4242973))

(declare-fun condSetEmpty!49924 () Bool)

(assert (=> start!684746 (= condSetEmpty!49924 (= z1!570 (as set.empty (Set Context!13160))))))

(assert (=> start!684746 setRes!49924))

(declare-fun inv!86820 (Context!13160) Bool)

(assert (=> start!684746 (and (inv!86820 ct2!306) e!4242974)))

(assert (=> start!684746 e!4242968))

(declare-fun b!7057674 () Bool)

(declare-fun toList!10925 ((Set Context!13160)) List!68280)

(assert (=> b!7057674 (= e!4242971 (< (zipperDepthTotal!549 (toList!10925 lt!2533927)) lt!2533937))))

(declare-fun lt!2533914 () Int)

(declare-fun ListPrimitiveSize!405 (List!68279) Int)

(assert (=> b!7057674 (= lt!2533914 (ListPrimitiveSize!405 s!7408))))

(declare-fun b!7057675 () Bool)

(assert (=> b!7057675 (= e!4242972 e!4242971)))

(declare-fun res!2881336 () Bool)

(assert (=> b!7057675 (=> res!2881336 e!4242971)))

(declare-fun lt!2533960 () Int)

(declare-fun contextDepthTotal!520 (Context!13160) Int)

(assert (=> b!7057675 (= res!2881336 (<= lt!2533960 (contextDepthTotal!520 lt!2533926)))))

(assert (=> b!7057675 (<= lt!2533960 lt!2533937)))

(declare-fun lt!2533936 () List!68280)

(assert (=> b!7057675 (= lt!2533937 (zipperDepthTotal!549 lt!2533936))))

(assert (=> b!7057675 (= lt!2533960 (contextDepthTotal!520 lt!2533918))))

(declare-fun lt!2533941 () Unit!161841)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!87 (List!68280 Context!13160) Unit!161841)

(assert (=> b!7057675 (= lt!2533941 (lemmaTotalDepthZipperLargerThanOfAnyContext!87 lt!2533936 lt!2533918))))

(assert (=> b!7057675 (= lt!2533936 (toList!10925 z1!570))))

(declare-fun lt!2533958 () Unit!161841)

(assert (=> b!7057675 (= lt!2533958 (lemmaConcatPreservesForall!895 lt!2533935 (exprs!7080 ct2!306) lambda!421195))))

(declare-fun lt!2533919 () Unit!161841)

(assert (=> b!7057675 (= lt!2533919 (lemmaConcatPreservesForall!895 lt!2533935 (exprs!7080 ct2!306) lambda!421195))))

(declare-fun lt!2533932 () Unit!161841)

(assert (=> b!7057675 (= lt!2533932 (lemmaConcatPreservesForall!895 lt!2533935 (exprs!7080 ct2!306) lambda!421195))))

(assert (=> b!7057675 (= (flatMap!2510 lt!2533927 lambda!421196) (derivationStepZipperUp!2168 lt!2533926 (h!74603 s!7408)))))

(declare-fun lt!2533951 () Unit!161841)

(assert (=> b!7057675 (= lt!2533951 (lemmaFlatMapOnSingletonSet!2019 lt!2533927 lt!2533926 lambda!421196))))

(declare-fun lambda!421194 () Int)

(declare-fun map!15909 ((Set Context!13160) Int) (Set Context!13160))

(declare-fun ++!15667 (List!68278 List!68278) List!68278)

(assert (=> b!7057675 (= (map!15909 lt!2533927 lambda!421194) (set.insert (Context!13161 (++!15667 lt!2533935 (exprs!7080 ct2!306))) (as set.empty (Set Context!13160))))))

(declare-fun lt!2533933 () Unit!161841)

(assert (=> b!7057675 (= lt!2533933 (lemmaConcatPreservesForall!895 lt!2533935 (exprs!7080 ct2!306) lambda!421195))))

(declare-fun lt!2533934 () Unit!161841)

(declare-fun lemmaMapOnSingletonSet!401 ((Set Context!13160) Context!13160 Int) Unit!161841)

(assert (=> b!7057675 (= lt!2533934 (lemmaMapOnSingletonSet!401 lt!2533927 lt!2533926 lambda!421194))))

(assert (=> b!7057675 (= lt!2533927 (set.insert lt!2533926 (as set.empty (Set Context!13160))))))

(assert (=> b!7057676 (= e!4242973 (not e!4242978))))

(declare-fun res!2881345 () Bool)

(assert (=> b!7057676 (=> res!2881345 e!4242978)))

(assert (=> b!7057676 (= res!2881345 (not (matchZipper!3124 lt!2533952 s!7408)))))

(assert (=> b!7057676 (= lt!2533952 (set.insert lt!2533957 (as set.empty (Set Context!13160))))))

(declare-fun lambda!421193 () Int)

(declare-fun getWitness!1656 ((Set Context!13160) Int) Context!13160)

(assert (=> b!7057676 (= lt!2533957 (getWitness!1656 lt!2533930 lambda!421193))))

(declare-fun lt!2533923 () List!68280)

(declare-fun exists!3582 (List!68280 Int) Bool)

(assert (=> b!7057676 (exists!3582 lt!2533923 lambda!421193)))

(declare-fun lt!2533948 () Unit!161841)

(declare-fun lemmaZipperMatchesExistsMatchingContext!505 (List!68280 List!68279) Unit!161841)

(assert (=> b!7057676 (= lt!2533948 (lemmaZipperMatchesExistsMatchingContext!505 lt!2533923 s!7408))))

(assert (=> b!7057676 (= lt!2533923 (toList!10925 lt!2533930))))

(declare-fun b!7057677 () Bool)

(declare-fun res!2881337 () Bool)

(assert (=> b!7057677 (=> res!2881337 e!4242979)))

(declare-fun isEmpty!39752 (List!68278) Bool)

(assert (=> b!7057677 (= res!2881337 (isEmpty!39752 (exprs!7080 lt!2533918)))))

(declare-fun b!7057678 () Bool)

(assert (=> b!7057678 (= e!4242970 e!4242967)))

(declare-fun res!2881347 () Bool)

(assert (=> b!7057678 (=> res!2881347 e!4242967)))

(assert (=> b!7057678 (= res!2881347 (not (matchZipper!3124 lt!2533946 (t!382058 s!7408))))))

(declare-fun lt!2533959 () Unit!161841)

(assert (=> b!7057678 (= lt!2533959 (lemmaConcatPreservesForall!895 lt!2533935 (exprs!7080 ct2!306) lambda!421195))))

(declare-fun setElem!49924 () Context!13160)

(declare-fun tp!1940537 () Bool)

(declare-fun setNonEmpty!49924 () Bool)

(assert (=> setNonEmpty!49924 (= setRes!49924 (and tp!1940537 (inv!86820 setElem!49924) e!4242963))))

(declare-fun setRest!49924 () (Set Context!13160))

(assert (=> setNonEmpty!49924 (= z1!570 (set.union (set.insert setElem!49924 (as set.empty (Set Context!13160))) setRest!49924))))

(assert (=> b!7057679 (= e!4242978 e!4242976)))

(declare-fun res!2881344 () Bool)

(assert (=> b!7057679 (=> res!2881344 e!4242976)))

(assert (=> b!7057679 (= res!2881344 (or (not (= lt!2533928 lt!2533957)) (not (set.member lt!2533918 z1!570))))))

(assert (=> b!7057679 (= lt!2533928 (Context!13161 (++!15667 (exprs!7080 lt!2533918) (exprs!7080 ct2!306))))))

(declare-fun lt!2533915 () Unit!161841)

(assert (=> b!7057679 (= lt!2533915 (lemmaConcatPreservesForall!895 (exprs!7080 lt!2533918) (exprs!7080 ct2!306) lambda!421195))))

(declare-fun mapPost2!413 ((Set Context!13160) Int Context!13160) Context!13160)

(assert (=> b!7057679 (= lt!2533918 (mapPost2!413 z1!570 lambda!421194 lt!2533957))))

(declare-fun b!7057680 () Bool)

(declare-fun e!4242964 () Bool)

(assert (=> b!7057680 (= e!4242979 e!4242964)))

(declare-fun res!2881341 () Bool)

(assert (=> b!7057680 (=> res!2881341 e!4242964)))

(declare-fun nullable!7267 (Regex!17584) Bool)

(assert (=> b!7057680 (= res!2881341 (not (nullable!7267 (h!74602 (exprs!7080 lt!2533918)))))))

(assert (=> b!7057680 (= lt!2533926 (Context!13161 lt!2533935))))

(declare-fun tail!13724 (List!68278) List!68278)

(assert (=> b!7057680 (= lt!2533935 (tail!13724 (exprs!7080 lt!2533918)))))

(declare-fun b!7057681 () Bool)

(assert (=> b!7057681 (= e!4242975 (matchZipper!3124 lt!2533946 (t!382058 s!7408)))))

(declare-fun b!7057682 () Bool)

(assert (=> b!7057682 (= e!4242964 e!4242977)))

(declare-fun res!2881353 () Bool)

(assert (=> b!7057682 (=> res!2881353 e!4242977)))

(assert (=> b!7057682 (= res!2881353 (not (= lt!2533954 lt!2533929)))))

(assert (=> b!7057682 (= lt!2533929 (set.union lt!2533938 lt!2533946))))

(assert (=> b!7057682 (= lt!2533946 (derivationStepZipperUp!2168 lt!2533961 (h!74603 s!7408)))))

(declare-fun derivationStepZipperDown!2218 (Regex!17584 Context!13160 C!35438) (Set Context!13160))

(assert (=> b!7057682 (= lt!2533938 (derivationStepZipperDown!2218 (h!74602 (exprs!7080 lt!2533918)) lt!2533961 (h!74603 s!7408)))))

(assert (=> b!7057682 (= lt!2533961 (Context!13161 (++!15667 lt!2533935 (exprs!7080 ct2!306))))))

(declare-fun lt!2533940 () Unit!161841)

(assert (=> b!7057682 (= lt!2533940 (lemmaConcatPreservesForall!895 lt!2533935 (exprs!7080 ct2!306) lambda!421195))))

(declare-fun lt!2533916 () Unit!161841)

(assert (=> b!7057682 (= lt!2533916 (lemmaConcatPreservesForall!895 lt!2533935 (exprs!7080 ct2!306) lambda!421195))))

(assert (= (and start!684746 res!2881350) b!7057671))

(assert (= (and b!7057671 res!2881354) b!7057676))

(assert (= (and b!7057676 (not res!2881345)) b!7057673))

(assert (= (and b!7057673 (not res!2881343)) b!7057679))

(assert (= (and b!7057679 (not res!2881344)) b!7057667))

(assert (= (and b!7057667 (not res!2881351)) b!7057661))

(assert (= (and b!7057661 (not res!2881352)) b!7057669))

(assert (= (and b!7057669 (not res!2881346)) b!7057677))

(assert (= (and b!7057677 (not res!2881337)) b!7057680))

(assert (= (and b!7057680 (not res!2881341)) b!7057682))

(assert (= (and b!7057682 (not res!2881353)) b!7057659))

(assert (= (and b!7057659 (not res!2881355)) b!7057681))

(assert (= (and b!7057659 res!2881349) b!7057662))

(assert (= (and b!7057659 (not res!2881338)) b!7057665))

(assert (= (and b!7057665 (not res!2881339)) b!7057678))

(assert (= (and b!7057678 (not res!2881347)) b!7057660))

(assert (= (and b!7057660 (not res!2881335)) b!7057668))

(assert (= (and b!7057668 (not res!2881348)) b!7057675))

(assert (= (and b!7057675 (not res!2881336)) b!7057672))

(assert (= (and b!7057672 (not res!2881342)) b!7057666))

(assert (= (and b!7057666 (not res!2881340)) b!7057674))

(assert (= (and start!684746 condSetEmpty!49924) setIsEmpty!49924))

(assert (= (and start!684746 (not condSetEmpty!49924)) setNonEmpty!49924))

(assert (= setNonEmpty!49924 b!7057664))

(assert (= start!684746 b!7057663))

(assert (= (and start!684746 (is-Cons!68155 s!7408)) b!7057670))

(declare-fun m!7776378 () Bool)

(assert (=> b!7057662 m!7776378))

(declare-fun m!7776380 () Bool)

(assert (=> b!7057662 m!7776380))

(assert (=> b!7057678 m!7776378))

(assert (=> b!7057678 m!7776380))

(assert (=> b!7057682 m!7776380))

(assert (=> b!7057682 m!7776380))

(declare-fun m!7776382 () Bool)

(assert (=> b!7057682 m!7776382))

(declare-fun m!7776384 () Bool)

(assert (=> b!7057682 m!7776384))

(declare-fun m!7776386 () Bool)

(assert (=> b!7057682 m!7776386))

(declare-fun m!7776388 () Bool)

(assert (=> b!7057676 m!7776388))

(declare-fun m!7776390 () Bool)

(assert (=> b!7057676 m!7776390))

(declare-fun m!7776392 () Bool)

(assert (=> b!7057676 m!7776392))

(declare-fun m!7776394 () Bool)

(assert (=> b!7057676 m!7776394))

(declare-fun m!7776396 () Bool)

(assert (=> b!7057676 m!7776396))

(declare-fun m!7776398 () Bool)

(assert (=> b!7057676 m!7776398))

(declare-fun m!7776400 () Bool)

(assert (=> b!7057680 m!7776400))

(declare-fun m!7776402 () Bool)

(assert (=> b!7057680 m!7776402))

(declare-fun m!7776404 () Bool)

(assert (=> b!7057673 m!7776404))

(declare-fun m!7776406 () Bool)

(assert (=> b!7057677 m!7776406))

(declare-fun m!7776408 () Bool)

(assert (=> setNonEmpty!49924 m!7776408))

(declare-fun m!7776410 () Bool)

(assert (=> b!7057666 m!7776410))

(assert (=> b!7057666 m!7776410))

(declare-fun m!7776412 () Bool)

(assert (=> b!7057666 m!7776412))

(declare-fun m!7776414 () Bool)

(assert (=> b!7057668 m!7776414))

(assert (=> b!7057668 m!7776380))

(assert (=> b!7057675 m!7776380))

(assert (=> b!7057675 m!7776380))

(assert (=> b!7057675 m!7776386))

(declare-fun m!7776416 () Bool)

(assert (=> b!7057675 m!7776416))

(declare-fun m!7776418 () Bool)

(assert (=> b!7057675 m!7776418))

(declare-fun m!7776420 () Bool)

(assert (=> b!7057675 m!7776420))

(declare-fun m!7776422 () Bool)

(assert (=> b!7057675 m!7776422))

(declare-fun m!7776424 () Bool)

(assert (=> b!7057675 m!7776424))

(declare-fun m!7776426 () Bool)

(assert (=> b!7057675 m!7776426))

(declare-fun m!7776428 () Bool)

(assert (=> b!7057675 m!7776428))

(declare-fun m!7776430 () Bool)

(assert (=> b!7057675 m!7776430))

(assert (=> b!7057675 m!7776380))

(declare-fun m!7776432 () Bool)

(assert (=> b!7057675 m!7776432))

(declare-fun m!7776434 () Bool)

(assert (=> b!7057675 m!7776434))

(assert (=> b!7057675 m!7776380))

(declare-fun m!7776436 () Bool)

(assert (=> b!7057675 m!7776436))

(declare-fun m!7776438 () Bool)

(assert (=> b!7057675 m!7776438))

(declare-fun m!7776440 () Bool)

(assert (=> b!7057667 m!7776440))

(declare-fun m!7776442 () Bool)

(assert (=> b!7057667 m!7776442))

(declare-fun m!7776444 () Bool)

(assert (=> b!7057660 m!7776444))

(assert (=> b!7057660 m!7776380))

(declare-fun m!7776446 () Bool)

(assert (=> b!7057660 m!7776446))

(declare-fun m!7776448 () Bool)

(assert (=> b!7057660 m!7776448))

(declare-fun m!7776450 () Bool)

(assert (=> b!7057660 m!7776450))

(assert (=> b!7057660 m!7776380))

(assert (=> b!7057660 m!7776382))

(assert (=> b!7057660 m!7776380))

(assert (=> b!7057660 m!7776380))

(declare-fun m!7776452 () Bool)

(assert (=> b!7057679 m!7776452))

(declare-fun m!7776454 () Bool)

(assert (=> b!7057679 m!7776454))

(assert (=> b!7057679 m!7776442))

(declare-fun m!7776456 () Bool)

(assert (=> b!7057679 m!7776456))

(declare-fun m!7776458 () Bool)

(assert (=> start!684746 m!7776458))

(declare-fun m!7776460 () Bool)

(assert (=> start!684746 m!7776460))

(declare-fun m!7776462 () Bool)

(assert (=> start!684746 m!7776462))

(declare-fun m!7776464 () Bool)

(assert (=> b!7057661 m!7776464))

(declare-fun m!7776466 () Bool)

(assert (=> b!7057661 m!7776466))

(assert (=> b!7057661 m!7776442))

(declare-fun m!7776468 () Bool)

(assert (=> b!7057661 m!7776468))

(declare-fun m!7776470 () Bool)

(assert (=> b!7057661 m!7776470))

(assert (=> b!7057681 m!7776378))

(declare-fun m!7776472 () Bool)

(assert (=> b!7057674 m!7776472))

(assert (=> b!7057674 m!7776472))

(declare-fun m!7776474 () Bool)

(assert (=> b!7057674 m!7776474))

(declare-fun m!7776476 () Bool)

(assert (=> b!7057674 m!7776476))

(declare-fun m!7776478 () Bool)

(assert (=> b!7057672 m!7776478))

(assert (=> b!7057659 m!7776380))

(declare-fun m!7776480 () Bool)

(assert (=> b!7057659 m!7776480))

(declare-fun m!7776482 () Bool)

(assert (=> b!7057659 m!7776482))

(declare-fun m!7776484 () Bool)

(assert (=> b!7057659 m!7776484))

(assert (=> b!7057659 m!7776380))

(declare-fun m!7776486 () Bool)

(assert (=> b!7057659 m!7776486))

(assert (=> b!7057659 m!7776380))

(push 1)

(assert (not start!684746))

(assert (not b!7057670))

(assert (not b!7057664))

(assert (not b!7057680))

(assert (not b!7057679))

(assert (not b!7057666))

(assert (not b!7057674))

(assert (not b!7057682))

(assert (not b!7057660))

(assert (not setNonEmpty!49924))

(assert (not b!7057663))

(assert (not b!7057676))

(assert (not b!7057659))

(assert (not b!7057661))

(assert (not b!7057662))

(assert (not b!7057677))

(assert (not b!7057675))

(assert (not b!7057668))

(assert (not b!7057672))

(assert tp_is_empty!44393)

(assert (not b!7057681))

(assert (not b!7057667))

(assert (not b!7057678))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2205826 () Bool)

(declare-fun c!1315099 () Bool)

(declare-fun isEmpty!39754 (List!68279) Bool)

(assert (=> d!2205826 (= c!1315099 (isEmpty!39754 s!7408))))

(declare-fun e!4243033 () Bool)

(assert (=> d!2205826 (= (matchZipper!3124 lt!2533930 s!7408) e!4243033)))

(declare-fun b!7057771 () Bool)

(declare-fun nullableZipper!2667 ((Set Context!13160)) Bool)

(assert (=> b!7057771 (= e!4243033 (nullableZipper!2667 lt!2533930))))

(declare-fun b!7057772 () Bool)

(declare-fun head!14368 (List!68279) C!35438)

(declare-fun tail!13726 (List!68279) List!68279)

(assert (=> b!7057772 (= e!4243033 (matchZipper!3124 (derivationStepZipper!3034 lt!2533930 (head!14368 s!7408)) (tail!13726 s!7408)))))

(assert (= (and d!2205826 c!1315099) b!7057771))

(assert (= (and d!2205826 (not c!1315099)) b!7057772))

(declare-fun m!7776598 () Bool)

(assert (=> d!2205826 m!7776598))

(declare-fun m!7776600 () Bool)

(assert (=> b!7057771 m!7776600))

(declare-fun m!7776602 () Bool)

(assert (=> b!7057772 m!7776602))

(assert (=> b!7057772 m!7776602))

(declare-fun m!7776604 () Bool)

(assert (=> b!7057772 m!7776604))

(declare-fun m!7776606 () Bool)

(assert (=> b!7057772 m!7776606))

(assert (=> b!7057772 m!7776604))

(assert (=> b!7057772 m!7776606))

(declare-fun m!7776608 () Bool)

(assert (=> b!7057772 m!7776608))

(assert (=> start!684746 d!2205826))

(declare-fun bs!1877404 () Bool)

(declare-fun d!2205828 () Bool)

(assert (= bs!1877404 (and d!2205828 b!7057679)))

(declare-fun lambda!421261 () Int)

(assert (=> bs!1877404 (= lambda!421261 lambda!421194)))

(assert (=> d!2205828 true))

(assert (=> d!2205828 (= (appendTo!705 z1!570 ct2!306) (map!15909 z1!570 lambda!421261))))

(declare-fun bs!1877405 () Bool)

(assert (= bs!1877405 d!2205828))

(declare-fun m!7776610 () Bool)

(assert (=> bs!1877405 m!7776610))

(assert (=> start!684746 d!2205828))

(declare-fun bs!1877406 () Bool)

(declare-fun d!2205830 () Bool)

(assert (= bs!1877406 (and d!2205830 b!7057679)))

(declare-fun lambda!421264 () Int)

(assert (=> bs!1877406 (= lambda!421264 lambda!421195)))

(declare-fun forall!16536 (List!68278 Int) Bool)

(assert (=> d!2205830 (= (inv!86820 ct2!306) (forall!16536 (exprs!7080 ct2!306) lambda!421264))))

(declare-fun bs!1877407 () Bool)

(assert (= bs!1877407 d!2205830))

(declare-fun m!7776612 () Bool)

(assert (=> bs!1877407 m!7776612))

(assert (=> start!684746 d!2205830))

(declare-fun d!2205832 () Bool)

(declare-fun dynLambda!27673 (Int Context!13160) (Set Context!13160))

(assert (=> d!2205832 (= (flatMap!2510 lt!2533927 lambda!421196) (dynLambda!27673 lambda!421196 lt!2533926))))

(declare-fun lt!2534114 () Unit!161841)

(declare-fun choose!53880 ((Set Context!13160) Context!13160 Int) Unit!161841)

(assert (=> d!2205832 (= lt!2534114 (choose!53880 lt!2533927 lt!2533926 lambda!421196))))

(assert (=> d!2205832 (= lt!2533927 (set.insert lt!2533926 (as set.empty (Set Context!13160))))))

(assert (=> d!2205832 (= (lemmaFlatMapOnSingletonSet!2019 lt!2533927 lt!2533926 lambda!421196) lt!2534114)))

(declare-fun b_lambda!268915 () Bool)

(assert (=> (not b_lambda!268915) (not d!2205832)))

(declare-fun bs!1877408 () Bool)

(assert (= bs!1877408 d!2205832))

(assert (=> bs!1877408 m!7776416))

(declare-fun m!7776614 () Bool)

(assert (=> bs!1877408 m!7776614))

(declare-fun m!7776616 () Bool)

(assert (=> bs!1877408 m!7776616))

(assert (=> bs!1877408 m!7776424))

(assert (=> b!7057675 d!2205832))

(declare-fun b!7057783 () Bool)

(declare-fun e!4243040 () (Set Context!13160))

(declare-fun call!641187 () (Set Context!13160))

(assert (=> b!7057783 (= e!4243040 call!641187)))

(declare-fun b!7057784 () Bool)

(declare-fun e!4243041 () Bool)

(assert (=> b!7057784 (= e!4243041 (nullable!7267 (h!74602 (exprs!7080 lt!2533926))))))

(declare-fun b!7057785 () Bool)

(declare-fun e!4243042 () (Set Context!13160))

(assert (=> b!7057785 (= e!4243042 (set.union call!641187 (derivationStepZipperUp!2168 (Context!13161 (t!382057 (exprs!7080 lt!2533926))) (h!74603 s!7408))))))

(declare-fun b!7057786 () Bool)

(assert (=> b!7057786 (= e!4243040 (as set.empty (Set Context!13160)))))

(declare-fun b!7057787 () Bool)

(assert (=> b!7057787 (= e!4243042 e!4243040)))

(declare-fun c!1315106 () Bool)

(assert (=> b!7057787 (= c!1315106 (is-Cons!68154 (exprs!7080 lt!2533926)))))

(declare-fun d!2205834 () Bool)

(declare-fun c!1315105 () Bool)

(assert (=> d!2205834 (= c!1315105 e!4243041)))

(declare-fun res!2881422 () Bool)

(assert (=> d!2205834 (=> (not res!2881422) (not e!4243041))))

(assert (=> d!2205834 (= res!2881422 (is-Cons!68154 (exprs!7080 lt!2533926)))))

(assert (=> d!2205834 (= (derivationStepZipperUp!2168 lt!2533926 (h!74603 s!7408)) e!4243042)))

(declare-fun bm!641182 () Bool)

(assert (=> bm!641182 (= call!641187 (derivationStepZipperDown!2218 (h!74602 (exprs!7080 lt!2533926)) (Context!13161 (t!382057 (exprs!7080 lt!2533926))) (h!74603 s!7408)))))

(assert (= (and d!2205834 res!2881422) b!7057784))

(assert (= (and d!2205834 c!1315105) b!7057785))

(assert (= (and d!2205834 (not c!1315105)) b!7057787))

(assert (= (and b!7057787 c!1315106) b!7057783))

(assert (= (and b!7057787 (not c!1315106)) b!7057786))

(assert (= (or b!7057785 b!7057783) bm!641182))

(declare-fun m!7776618 () Bool)

(assert (=> b!7057784 m!7776618))

(declare-fun m!7776620 () Bool)

(assert (=> b!7057785 m!7776620))

(declare-fun m!7776622 () Bool)

(assert (=> bm!641182 m!7776622))

(assert (=> b!7057675 d!2205834))

(declare-fun d!2205836 () Bool)

(assert (=> d!2205836 (<= (contextDepthTotal!520 lt!2533918) (zipperDepthTotal!549 lt!2533936))))

(declare-fun lt!2534117 () Unit!161841)

(declare-fun choose!53881 (List!68280 Context!13160) Unit!161841)

(assert (=> d!2205836 (= lt!2534117 (choose!53881 lt!2533936 lt!2533918))))

(declare-fun contains!20486 (List!68280 Context!13160) Bool)

(assert (=> d!2205836 (contains!20486 lt!2533936 lt!2533918)))

(assert (=> d!2205836 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!87 lt!2533936 lt!2533918) lt!2534117)))

(declare-fun bs!1877409 () Bool)

(assert (= bs!1877409 d!2205836))

(assert (=> bs!1877409 m!7776432))

(assert (=> bs!1877409 m!7776422))

(declare-fun m!7776624 () Bool)

(assert (=> bs!1877409 m!7776624))

(declare-fun m!7776626 () Bool)

(assert (=> bs!1877409 m!7776626))

(assert (=> b!7057675 d!2205836))

(declare-fun d!2205838 () Bool)

(declare-fun lt!2534120 () Int)

(assert (=> d!2205838 (>= lt!2534120 0)))

(declare-fun e!4243045 () Int)

(assert (=> d!2205838 (= lt!2534120 e!4243045)))

(declare-fun c!1315111 () Bool)

(assert (=> d!2205838 (= c!1315111 (is-Cons!68154 (exprs!7080 lt!2533918)))))

(assert (=> d!2205838 (= (contextDepthTotal!520 lt!2533918) lt!2534120)))

(declare-fun b!7057792 () Bool)

(declare-fun regexDepthTotal!316 (Regex!17584) Int)

(assert (=> b!7057792 (= e!4243045 (+ (regexDepthTotal!316 (h!74602 (exprs!7080 lt!2533918))) (contextDepthTotal!520 (Context!13161 (t!382057 (exprs!7080 lt!2533918))))))))

(declare-fun b!7057793 () Bool)

(assert (=> b!7057793 (= e!4243045 1)))

(assert (= (and d!2205838 c!1315111) b!7057792))

(assert (= (and d!2205838 (not c!1315111)) b!7057793))

(declare-fun m!7776628 () Bool)

(assert (=> b!7057792 m!7776628))

(declare-fun m!7776630 () Bool)

(assert (=> b!7057792 m!7776630))

(assert (=> b!7057675 d!2205838))

(declare-fun d!2205840 () Bool)

(declare-fun e!4243048 () Bool)

(assert (=> d!2205840 e!4243048))

(declare-fun res!2881425 () Bool)

(assert (=> d!2205840 (=> (not res!2881425) (not e!4243048))))

(declare-fun lt!2534123 () List!68280)

(declare-fun noDuplicate!2698 (List!68280) Bool)

(assert (=> d!2205840 (= res!2881425 (noDuplicate!2698 lt!2534123))))

(declare-fun choose!53882 ((Set Context!13160)) List!68280)

(assert (=> d!2205840 (= lt!2534123 (choose!53882 z1!570))))

(assert (=> d!2205840 (= (toList!10925 z1!570) lt!2534123)))

(declare-fun b!7057796 () Bool)

(declare-fun content!13703 (List!68280) (Set Context!13160))

(assert (=> b!7057796 (= e!4243048 (= (content!13703 lt!2534123) z1!570))))

(assert (= (and d!2205840 res!2881425) b!7057796))

(declare-fun m!7776632 () Bool)

(assert (=> d!2205840 m!7776632))

(declare-fun m!7776634 () Bool)

(assert (=> d!2205840 m!7776634))

(declare-fun m!7776636 () Bool)

(assert (=> b!7057796 m!7776636))

(assert (=> b!7057675 d!2205840))

(declare-fun d!2205842 () Bool)

(assert (=> d!2205842 (forall!16536 (++!15667 lt!2533935 (exprs!7080 ct2!306)) lambda!421195)))

(declare-fun lt!2534126 () Unit!161841)

(declare-fun choose!53883 (List!68278 List!68278 Int) Unit!161841)

(assert (=> d!2205842 (= lt!2534126 (choose!53883 lt!2533935 (exprs!7080 ct2!306) lambda!421195))))

(assert (=> d!2205842 (forall!16536 lt!2533935 lambda!421195)))

(assert (=> d!2205842 (= (lemmaConcatPreservesForall!895 lt!2533935 (exprs!7080 ct2!306) lambda!421195) lt!2534126)))

(declare-fun bs!1877410 () Bool)

(assert (= bs!1877410 d!2205842))

(assert (=> bs!1877410 m!7776386))

(assert (=> bs!1877410 m!7776386))

(declare-fun m!7776638 () Bool)

(assert (=> bs!1877410 m!7776638))

(declare-fun m!7776640 () Bool)

(assert (=> bs!1877410 m!7776640))

(declare-fun m!7776642 () Bool)

(assert (=> bs!1877410 m!7776642))

(assert (=> b!7057675 d!2205842))

(declare-fun b!7057805 () Bool)

(declare-fun e!4243053 () List!68278)

(assert (=> b!7057805 (= e!4243053 (exprs!7080 ct2!306))))

(declare-fun b!7057807 () Bool)

(declare-fun res!2881430 () Bool)

(declare-fun e!4243054 () Bool)

(assert (=> b!7057807 (=> (not res!2881430) (not e!4243054))))

(declare-fun lt!2534129 () List!68278)

(declare-fun size!41161 (List!68278) Int)

(assert (=> b!7057807 (= res!2881430 (= (size!41161 lt!2534129) (+ (size!41161 lt!2533935) (size!41161 (exprs!7080 ct2!306)))))))

(declare-fun b!7057806 () Bool)

(assert (=> b!7057806 (= e!4243053 (Cons!68154 (h!74602 lt!2533935) (++!15667 (t!382057 lt!2533935) (exprs!7080 ct2!306))))))

(declare-fun d!2205844 () Bool)

(assert (=> d!2205844 e!4243054))

(declare-fun res!2881431 () Bool)

(assert (=> d!2205844 (=> (not res!2881431) (not e!4243054))))

(declare-fun content!13704 (List!68278) (Set Regex!17584))

(assert (=> d!2205844 (= res!2881431 (= (content!13704 lt!2534129) (set.union (content!13704 lt!2533935) (content!13704 (exprs!7080 ct2!306)))))))

(assert (=> d!2205844 (= lt!2534129 e!4243053)))

(declare-fun c!1315114 () Bool)

(assert (=> d!2205844 (= c!1315114 (is-Nil!68154 lt!2533935))))

(assert (=> d!2205844 (= (++!15667 lt!2533935 (exprs!7080 ct2!306)) lt!2534129)))

(declare-fun b!7057808 () Bool)

(assert (=> b!7057808 (= e!4243054 (or (not (= (exprs!7080 ct2!306) Nil!68154)) (= lt!2534129 lt!2533935)))))

(assert (= (and d!2205844 c!1315114) b!7057805))

(assert (= (and d!2205844 (not c!1315114)) b!7057806))

(assert (= (and d!2205844 res!2881431) b!7057807))

(assert (= (and b!7057807 res!2881430) b!7057808))

(declare-fun m!7776644 () Bool)

(assert (=> b!7057807 m!7776644))

(declare-fun m!7776646 () Bool)

(assert (=> b!7057807 m!7776646))

(declare-fun m!7776648 () Bool)

(assert (=> b!7057807 m!7776648))

(declare-fun m!7776650 () Bool)

(assert (=> b!7057806 m!7776650))

(declare-fun m!7776652 () Bool)

(assert (=> d!2205844 m!7776652))

(declare-fun m!7776654 () Bool)

(assert (=> d!2205844 m!7776654))

(declare-fun m!7776656 () Bool)

(assert (=> d!2205844 m!7776656))

(assert (=> b!7057675 d!2205844))

(declare-fun d!2205846 () Bool)

(declare-fun choose!53884 ((Set Context!13160) Int) (Set Context!13160))

(assert (=> d!2205846 (= (map!15909 lt!2533927 lambda!421194) (choose!53884 lt!2533927 lambda!421194))))

(declare-fun bs!1877411 () Bool)

(assert (= bs!1877411 d!2205846))

(declare-fun m!7776658 () Bool)

(assert (=> bs!1877411 m!7776658))

(assert (=> b!7057675 d!2205846))

(declare-fun d!2205848 () Bool)

(declare-fun choose!53885 ((Set Context!13160) Int) (Set Context!13160))

(assert (=> d!2205848 (= (flatMap!2510 lt!2533927 lambda!421196) (choose!53885 lt!2533927 lambda!421196))))

(declare-fun bs!1877412 () Bool)

(assert (= bs!1877412 d!2205848))

(declare-fun m!7776660 () Bool)

(assert (=> bs!1877412 m!7776660))

(assert (=> b!7057675 d!2205848))

(declare-fun d!2205850 () Bool)

(declare-fun dynLambda!27674 (Int Context!13160) Context!13160)

(assert (=> d!2205850 (= (map!15909 lt!2533927 lambda!421194) (set.insert (dynLambda!27674 lambda!421194 lt!2533926) (as set.empty (Set Context!13160))))))

(declare-fun lt!2534132 () Unit!161841)

(declare-fun choose!53886 ((Set Context!13160) Context!13160 Int) Unit!161841)

(assert (=> d!2205850 (= lt!2534132 (choose!53886 lt!2533927 lt!2533926 lambda!421194))))

(assert (=> d!2205850 (= lt!2533927 (set.insert lt!2533926 (as set.empty (Set Context!13160))))))

(assert (=> d!2205850 (= (lemmaMapOnSingletonSet!401 lt!2533927 lt!2533926 lambda!421194) lt!2534132)))

(declare-fun b_lambda!268917 () Bool)

(assert (=> (not b_lambda!268917) (not d!2205850)))

(declare-fun bs!1877413 () Bool)

(assert (= bs!1877413 d!2205850))

(assert (=> bs!1877413 m!7776418))

(declare-fun m!7776662 () Bool)

(assert (=> bs!1877413 m!7776662))

(assert (=> bs!1877413 m!7776424))

(assert (=> bs!1877413 m!7776662))

(declare-fun m!7776664 () Bool)

(assert (=> bs!1877413 m!7776664))

(declare-fun m!7776666 () Bool)

(assert (=> bs!1877413 m!7776666))

(assert (=> b!7057675 d!2205850))

(declare-fun d!2205852 () Bool)

(declare-fun lt!2534133 () Int)

(assert (=> d!2205852 (>= lt!2534133 0)))

(declare-fun e!4243055 () Int)

(assert (=> d!2205852 (= lt!2534133 e!4243055)))

(declare-fun c!1315115 () Bool)

(assert (=> d!2205852 (= c!1315115 (is-Cons!68154 (exprs!7080 lt!2533926)))))

(assert (=> d!2205852 (= (contextDepthTotal!520 lt!2533926) lt!2534133)))

(declare-fun b!7057809 () Bool)

(assert (=> b!7057809 (= e!4243055 (+ (regexDepthTotal!316 (h!74602 (exprs!7080 lt!2533926))) (contextDepthTotal!520 (Context!13161 (t!382057 (exprs!7080 lt!2533926))))))))

(declare-fun b!7057810 () Bool)

(assert (=> b!7057810 (= e!4243055 1)))

(assert (= (and d!2205852 c!1315115) b!7057809))

(assert (= (and d!2205852 (not c!1315115)) b!7057810))

(declare-fun m!7776668 () Bool)

(assert (=> b!7057809 m!7776668))

(declare-fun m!7776670 () Bool)

(assert (=> b!7057809 m!7776670))

(assert (=> b!7057675 d!2205852))

(declare-fun d!2205854 () Bool)

(declare-fun lt!2534136 () Int)

(assert (=> d!2205854 (>= lt!2534136 0)))

(declare-fun e!4243058 () Int)

(assert (=> d!2205854 (= lt!2534136 e!4243058)))

(declare-fun c!1315118 () Bool)

(assert (=> d!2205854 (= c!1315118 (is-Cons!68156 lt!2533936))))

(assert (=> d!2205854 (= (zipperDepthTotal!549 lt!2533936) lt!2534136)))

(declare-fun b!7057815 () Bool)

(assert (=> b!7057815 (= e!4243058 (+ (contextDepthTotal!520 (h!74604 lt!2533936)) (zipperDepthTotal!549 (t!382059 lt!2533936))))))

(declare-fun b!7057816 () Bool)

(assert (=> b!7057816 (= e!4243058 0)))

(assert (= (and d!2205854 c!1315118) b!7057815))

(assert (= (and d!2205854 (not c!1315118)) b!7057816))

(declare-fun m!7776672 () Bool)

(assert (=> b!7057815 m!7776672))

(declare-fun m!7776674 () Bool)

(assert (=> b!7057815 m!7776674))

(assert (=> b!7057675 d!2205854))

(declare-fun d!2205856 () Bool)

(declare-fun lt!2534137 () Int)

(assert (=> d!2205856 (>= lt!2534137 0)))

(declare-fun e!4243059 () Int)

(assert (=> d!2205856 (= lt!2534137 e!4243059)))

(declare-fun c!1315119 () Bool)

(assert (=> d!2205856 (= c!1315119 (is-Cons!68156 (toList!10925 lt!2533927)))))

(assert (=> d!2205856 (= (zipperDepthTotal!549 (toList!10925 lt!2533927)) lt!2534137)))

(declare-fun b!7057817 () Bool)

(assert (=> b!7057817 (= e!4243059 (+ (contextDepthTotal!520 (h!74604 (toList!10925 lt!2533927))) (zipperDepthTotal!549 (t!382059 (toList!10925 lt!2533927)))))))

(declare-fun b!7057818 () Bool)

(assert (=> b!7057818 (= e!4243059 0)))

(assert (= (and d!2205856 c!1315119) b!7057817))

(assert (= (and d!2205856 (not c!1315119)) b!7057818))

(declare-fun m!7776676 () Bool)

(assert (=> b!7057817 m!7776676))

(declare-fun m!7776678 () Bool)

(assert (=> b!7057817 m!7776678))

(assert (=> b!7057674 d!2205856))

(declare-fun d!2205858 () Bool)

(declare-fun e!4243060 () Bool)

(assert (=> d!2205858 e!4243060))

(declare-fun res!2881432 () Bool)

(assert (=> d!2205858 (=> (not res!2881432) (not e!4243060))))

(declare-fun lt!2534138 () List!68280)

(assert (=> d!2205858 (= res!2881432 (noDuplicate!2698 lt!2534138))))

(assert (=> d!2205858 (= lt!2534138 (choose!53882 lt!2533927))))

(assert (=> d!2205858 (= (toList!10925 lt!2533927) lt!2534138)))

(declare-fun b!7057819 () Bool)

(assert (=> b!7057819 (= e!4243060 (= (content!13703 lt!2534138) lt!2533927))))

(assert (= (and d!2205858 res!2881432) b!7057819))

(declare-fun m!7776680 () Bool)

(assert (=> d!2205858 m!7776680))

(declare-fun m!7776682 () Bool)

(assert (=> d!2205858 m!7776682))

(declare-fun m!7776684 () Bool)

(assert (=> b!7057819 m!7776684))

(assert (=> b!7057674 d!2205858))

(declare-fun d!2205860 () Bool)

(declare-fun lt!2534141 () Int)

(assert (=> d!2205860 (>= lt!2534141 0)))

(declare-fun e!4243063 () Int)

(assert (=> d!2205860 (= lt!2534141 e!4243063)))

(declare-fun c!1315122 () Bool)

(assert (=> d!2205860 (= c!1315122 (is-Nil!68155 s!7408))))

(assert (=> d!2205860 (= (ListPrimitiveSize!405 s!7408) lt!2534141)))

(declare-fun b!7057824 () Bool)

(assert (=> b!7057824 (= e!4243063 0)))

(declare-fun b!7057825 () Bool)

(assert (=> b!7057825 (= e!4243063 (+ 1 (ListPrimitiveSize!405 (t!382058 s!7408))))))

(assert (= (and d!2205860 c!1315122) b!7057824))

(assert (= (and d!2205860 (not c!1315122)) b!7057825))

(declare-fun m!7776686 () Bool)

(assert (=> b!7057825 m!7776686))

(assert (=> b!7057674 d!2205860))

(declare-fun d!2205862 () Bool)

(declare-fun c!1315123 () Bool)

(assert (=> d!2205862 (= c!1315123 (isEmpty!39754 (t!382058 s!7408)))))

(declare-fun e!4243064 () Bool)

(assert (=> d!2205862 (= (matchZipper!3124 lt!2533946 (t!382058 s!7408)) e!4243064)))

(declare-fun b!7057826 () Bool)

(assert (=> b!7057826 (= e!4243064 (nullableZipper!2667 lt!2533946))))

(declare-fun b!7057827 () Bool)

(assert (=> b!7057827 (= e!4243064 (matchZipper!3124 (derivationStepZipper!3034 lt!2533946 (head!14368 (t!382058 s!7408))) (tail!13726 (t!382058 s!7408))))))

(assert (= (and d!2205862 c!1315123) b!7057826))

(assert (= (and d!2205862 (not c!1315123)) b!7057827))

(declare-fun m!7776688 () Bool)

(assert (=> d!2205862 m!7776688))

(declare-fun m!7776690 () Bool)

(assert (=> b!7057826 m!7776690))

(declare-fun m!7776692 () Bool)

(assert (=> b!7057827 m!7776692))

(assert (=> b!7057827 m!7776692))

(declare-fun m!7776694 () Bool)

(assert (=> b!7057827 m!7776694))

(declare-fun m!7776696 () Bool)

(assert (=> b!7057827 m!7776696))

(assert (=> b!7057827 m!7776694))

(assert (=> b!7057827 m!7776696))

(declare-fun m!7776698 () Bool)

(assert (=> b!7057827 m!7776698))

(assert (=> b!7057678 d!2205862))

(assert (=> b!7057678 d!2205842))

(declare-fun d!2205864 () Bool)

(assert (=> d!2205864 (forall!16536 (++!15667 (exprs!7080 lt!2533918) (exprs!7080 ct2!306)) lambda!421195)))

(declare-fun lt!2534142 () Unit!161841)

(assert (=> d!2205864 (= lt!2534142 (choose!53883 (exprs!7080 lt!2533918) (exprs!7080 ct2!306) lambda!421195))))

(assert (=> d!2205864 (forall!16536 (exprs!7080 lt!2533918) lambda!421195)))

(assert (=> d!2205864 (= (lemmaConcatPreservesForall!895 (exprs!7080 lt!2533918) (exprs!7080 ct2!306) lambda!421195) lt!2534142)))

(declare-fun bs!1877414 () Bool)

(assert (= bs!1877414 d!2205864))

(assert (=> bs!1877414 m!7776454))

(assert (=> bs!1877414 m!7776454))

(declare-fun m!7776700 () Bool)

(assert (=> bs!1877414 m!7776700))

(declare-fun m!7776702 () Bool)

(assert (=> bs!1877414 m!7776702))

(declare-fun m!7776704 () Bool)

(assert (=> bs!1877414 m!7776704))

(assert (=> b!7057667 d!2205864))

(declare-fun d!2205866 () Bool)

(assert (=> d!2205866 (= (isEmpty!39752 (exprs!7080 lt!2533918)) (is-Nil!68154 (exprs!7080 lt!2533918)))))

(assert (=> b!7057677 d!2205866))

(declare-fun d!2205868 () Bool)

(declare-fun c!1315124 () Bool)

(assert (=> d!2205868 (= c!1315124 (isEmpty!39754 s!7408))))

(declare-fun e!4243065 () Bool)

(assert (=> d!2205868 (= (matchZipper!3124 (appendTo!705 lt!2533927 ct2!306) s!7408) e!4243065)))

(declare-fun b!7057828 () Bool)

(assert (=> b!7057828 (= e!4243065 (nullableZipper!2667 (appendTo!705 lt!2533927 ct2!306)))))

(declare-fun b!7057829 () Bool)

(assert (=> b!7057829 (= e!4243065 (matchZipper!3124 (derivationStepZipper!3034 (appendTo!705 lt!2533927 ct2!306) (head!14368 s!7408)) (tail!13726 s!7408)))))

(assert (= (and d!2205868 c!1315124) b!7057828))

(assert (= (and d!2205868 (not c!1315124)) b!7057829))

(assert (=> d!2205868 m!7776598))

(assert (=> b!7057828 m!7776410))

(declare-fun m!7776706 () Bool)

(assert (=> b!7057828 m!7776706))

(assert (=> b!7057829 m!7776602))

(assert (=> b!7057829 m!7776410))

(assert (=> b!7057829 m!7776602))

(declare-fun m!7776708 () Bool)

(assert (=> b!7057829 m!7776708))

(assert (=> b!7057829 m!7776606))

(assert (=> b!7057829 m!7776708))

(assert (=> b!7057829 m!7776606))

(declare-fun m!7776710 () Bool)

(assert (=> b!7057829 m!7776710))

(assert (=> b!7057666 d!2205868))

(declare-fun bs!1877415 () Bool)

(declare-fun d!2205870 () Bool)

(assert (= bs!1877415 (and d!2205870 b!7057679)))

(declare-fun lambda!421265 () Int)

(assert (=> bs!1877415 (= lambda!421265 lambda!421194)))

(declare-fun bs!1877416 () Bool)

(assert (= bs!1877416 (and d!2205870 d!2205828)))

(assert (=> bs!1877416 (= lambda!421265 lambda!421261)))

(assert (=> d!2205870 true))

(assert (=> d!2205870 (= (appendTo!705 lt!2533927 ct2!306) (map!15909 lt!2533927 lambda!421265))))

(declare-fun bs!1877417 () Bool)

(assert (= bs!1877417 d!2205870))

(declare-fun m!7776712 () Bool)

(assert (=> bs!1877417 m!7776712))

(assert (=> b!7057666 d!2205870))

(declare-fun d!2205872 () Bool)

(declare-fun c!1315125 () Bool)

(assert (=> d!2205872 (= c!1315125 (isEmpty!39754 s!7408))))

(declare-fun e!4243066 () Bool)

(assert (=> d!2205872 (= (matchZipper!3124 lt!2533952 s!7408) e!4243066)))

(declare-fun b!7057830 () Bool)

(assert (=> b!7057830 (= e!4243066 (nullableZipper!2667 lt!2533952))))

(declare-fun b!7057831 () Bool)

(assert (=> b!7057831 (= e!4243066 (matchZipper!3124 (derivationStepZipper!3034 lt!2533952 (head!14368 s!7408)) (tail!13726 s!7408)))))

(assert (= (and d!2205872 c!1315125) b!7057830))

(assert (= (and d!2205872 (not c!1315125)) b!7057831))

(assert (=> d!2205872 m!7776598))

(declare-fun m!7776714 () Bool)

(assert (=> b!7057830 m!7776714))

(assert (=> b!7057831 m!7776602))

(assert (=> b!7057831 m!7776602))

(declare-fun m!7776716 () Bool)

(assert (=> b!7057831 m!7776716))

(assert (=> b!7057831 m!7776606))

(assert (=> b!7057831 m!7776716))

(assert (=> b!7057831 m!7776606))

(declare-fun m!7776718 () Bool)

(assert (=> b!7057831 m!7776718))

(assert (=> b!7057676 d!2205872))

(declare-fun bs!1877418 () Bool)

(declare-fun d!2205874 () Bool)

(assert (= bs!1877418 (and d!2205874 b!7057676)))

(declare-fun lambda!421268 () Int)

(assert (=> bs!1877418 (not (= lambda!421268 lambda!421193))))

(assert (=> d!2205874 true))

(declare-fun order!28341 () Int)

(declare-fun dynLambda!27675 (Int Int) Int)

(assert (=> d!2205874 (< (dynLambda!27675 order!28341 lambda!421193) (dynLambda!27675 order!28341 lambda!421268))))

(declare-fun forall!16537 (List!68280 Int) Bool)

(assert (=> d!2205874 (= (exists!3582 lt!2533923 lambda!421193) (not (forall!16537 lt!2533923 lambda!421268)))))

(declare-fun bs!1877419 () Bool)

(assert (= bs!1877419 d!2205874))

(declare-fun m!7776720 () Bool)

(assert (=> bs!1877419 m!7776720))

(assert (=> b!7057676 d!2205874))

(declare-fun bs!1877420 () Bool)

(declare-fun d!2205876 () Bool)

(assert (= bs!1877420 (and d!2205876 b!7057676)))

(declare-fun lambda!421271 () Int)

(assert (=> bs!1877420 (= lambda!421271 lambda!421193)))

(declare-fun bs!1877421 () Bool)

(assert (= bs!1877421 (and d!2205876 d!2205874)))

(assert (=> bs!1877421 (not (= lambda!421271 lambda!421268))))

(assert (=> d!2205876 true))

(assert (=> d!2205876 (exists!3582 lt!2533923 lambda!421271)))

(declare-fun lt!2534145 () Unit!161841)

(declare-fun choose!53887 (List!68280 List!68279) Unit!161841)

(assert (=> d!2205876 (= lt!2534145 (choose!53887 lt!2533923 s!7408))))

(assert (=> d!2205876 (matchZipper!3124 (content!13703 lt!2533923) s!7408)))

(assert (=> d!2205876 (= (lemmaZipperMatchesExistsMatchingContext!505 lt!2533923 s!7408) lt!2534145)))

(declare-fun bs!1877422 () Bool)

(assert (= bs!1877422 d!2205876))

(declare-fun m!7776722 () Bool)

(assert (=> bs!1877422 m!7776722))

(declare-fun m!7776724 () Bool)

(assert (=> bs!1877422 m!7776724))

(declare-fun m!7776726 () Bool)

(assert (=> bs!1877422 m!7776726))

(assert (=> bs!1877422 m!7776726))

(declare-fun m!7776728 () Bool)

(assert (=> bs!1877422 m!7776728))

(assert (=> b!7057676 d!2205876))

(declare-fun d!2205878 () Bool)

(declare-fun e!4243067 () Bool)

(assert (=> d!2205878 e!4243067))

(declare-fun res!2881433 () Bool)

(assert (=> d!2205878 (=> (not res!2881433) (not e!4243067))))

(declare-fun lt!2534146 () List!68280)

(assert (=> d!2205878 (= res!2881433 (noDuplicate!2698 lt!2534146))))

(assert (=> d!2205878 (= lt!2534146 (choose!53882 lt!2533930))))

(assert (=> d!2205878 (= (toList!10925 lt!2533930) lt!2534146)))

(declare-fun b!7057834 () Bool)

(assert (=> b!7057834 (= e!4243067 (= (content!13703 lt!2534146) lt!2533930))))

(assert (= (and d!2205878 res!2881433) b!7057834))

(declare-fun m!7776730 () Bool)

(assert (=> d!2205878 m!7776730))

(declare-fun m!7776732 () Bool)

(assert (=> d!2205878 m!7776732))

(declare-fun m!7776734 () Bool)

(assert (=> b!7057834 m!7776734))

(assert (=> b!7057676 d!2205878))

(declare-fun d!2205880 () Bool)

(declare-fun e!4243070 () Bool)

(assert (=> d!2205880 e!4243070))

(declare-fun res!2881436 () Bool)

(assert (=> d!2205880 (=> (not res!2881436) (not e!4243070))))

(declare-fun lt!2534149 () Context!13160)

(declare-fun dynLambda!27676 (Int Context!13160) Bool)

(assert (=> d!2205880 (= res!2881436 (dynLambda!27676 lambda!421193 lt!2534149))))

(declare-fun getWitness!1658 (List!68280 Int) Context!13160)

(assert (=> d!2205880 (= lt!2534149 (getWitness!1658 (toList!10925 lt!2533930) lambda!421193))))

(declare-fun exists!3584 ((Set Context!13160) Int) Bool)

(assert (=> d!2205880 (exists!3584 lt!2533930 lambda!421193)))

(assert (=> d!2205880 (= (getWitness!1656 lt!2533930 lambda!421193) lt!2534149)))

(declare-fun b!7057837 () Bool)

(assert (=> b!7057837 (= e!4243070 (set.member lt!2534149 lt!2533930))))

(assert (= (and d!2205880 res!2881436) b!7057837))

(declare-fun b_lambda!268919 () Bool)

(assert (=> (not b_lambda!268919) (not d!2205880)))

(declare-fun m!7776736 () Bool)

(assert (=> d!2205880 m!7776736))

(assert (=> d!2205880 m!7776398))

(assert (=> d!2205880 m!7776398))

(declare-fun m!7776738 () Bool)

(assert (=> d!2205880 m!7776738))

(declare-fun m!7776740 () Bool)

(assert (=> d!2205880 m!7776740))

(declare-fun m!7776742 () Bool)

(assert (=> b!7057837 m!7776742))

(assert (=> b!7057676 d!2205880))

(declare-fun bs!1877423 () Bool)

(declare-fun d!2205882 () Bool)

(assert (= bs!1877423 (and d!2205882 b!7057661)))

(declare-fun lambda!421274 () Int)

(assert (=> bs!1877423 (= lambda!421274 lambda!421196)))

(assert (=> d!2205882 true))

(assert (=> d!2205882 (= (derivationStepZipper!3034 lt!2533953 (h!74603 s!7408)) (flatMap!2510 lt!2533953 lambda!421274))))

(declare-fun bs!1877424 () Bool)

(assert (= bs!1877424 d!2205882))

(declare-fun m!7776744 () Bool)

(assert (=> bs!1877424 m!7776744))

(assert (=> b!7057660 d!2205882))

(declare-fun b!7057840 () Bool)

(declare-fun e!4243071 () (Set Context!13160))

(declare-fun call!641188 () (Set Context!13160))

(assert (=> b!7057840 (= e!4243071 call!641188)))

(declare-fun b!7057841 () Bool)

(declare-fun e!4243072 () Bool)

(assert (=> b!7057841 (= e!4243072 (nullable!7267 (h!74602 (exprs!7080 lt!2533961))))))

(declare-fun b!7057842 () Bool)

(declare-fun e!4243073 () (Set Context!13160))

(assert (=> b!7057842 (= e!4243073 (set.union call!641188 (derivationStepZipperUp!2168 (Context!13161 (t!382057 (exprs!7080 lt!2533961))) (h!74603 s!7408))))))

(declare-fun b!7057843 () Bool)

(assert (=> b!7057843 (= e!4243071 (as set.empty (Set Context!13160)))))

(declare-fun b!7057844 () Bool)

(assert (=> b!7057844 (= e!4243073 e!4243071)))

(declare-fun c!1315131 () Bool)

(assert (=> b!7057844 (= c!1315131 (is-Cons!68154 (exprs!7080 lt!2533961)))))

(declare-fun d!2205884 () Bool)

(declare-fun c!1315130 () Bool)

(assert (=> d!2205884 (= c!1315130 e!4243072)))

(declare-fun res!2881437 () Bool)

(assert (=> d!2205884 (=> (not res!2881437) (not e!4243072))))

(assert (=> d!2205884 (= res!2881437 (is-Cons!68154 (exprs!7080 lt!2533961)))))

(assert (=> d!2205884 (= (derivationStepZipperUp!2168 lt!2533961 (h!74603 s!7408)) e!4243073)))

(declare-fun bm!641183 () Bool)

(assert (=> bm!641183 (= call!641188 (derivationStepZipperDown!2218 (h!74602 (exprs!7080 lt!2533961)) (Context!13161 (t!382057 (exprs!7080 lt!2533961))) (h!74603 s!7408)))))

(assert (= (and d!2205884 res!2881437) b!7057841))

(assert (= (and d!2205884 c!1315130) b!7057842))

(assert (= (and d!2205884 (not c!1315130)) b!7057844))

(assert (= (and b!7057844 c!1315131) b!7057840))

(assert (= (and b!7057844 (not c!1315131)) b!7057843))

(assert (= (or b!7057842 b!7057840) bm!641183))

(declare-fun m!7776746 () Bool)

(assert (=> b!7057841 m!7776746))

(declare-fun m!7776748 () Bool)

(assert (=> b!7057842 m!7776748))

(declare-fun m!7776750 () Bool)

(assert (=> bm!641183 m!7776750))

(assert (=> b!7057660 d!2205884))

(assert (=> b!7057660 d!2205842))

(declare-fun d!2205886 () Bool)

(assert (=> d!2205886 (= (flatMap!2510 lt!2533953 lambda!421196) (dynLambda!27673 lambda!421196 lt!2533961))))

(declare-fun lt!2534150 () Unit!161841)

(assert (=> d!2205886 (= lt!2534150 (choose!53880 lt!2533953 lt!2533961 lambda!421196))))

(assert (=> d!2205886 (= lt!2533953 (set.insert lt!2533961 (as set.empty (Set Context!13160))))))

(assert (=> d!2205886 (= (lemmaFlatMapOnSingletonSet!2019 lt!2533953 lt!2533961 lambda!421196) lt!2534150)))

(declare-fun b_lambda!268921 () Bool)

(assert (=> (not b_lambda!268921) (not d!2205886)))

(declare-fun bs!1877425 () Bool)

(assert (= bs!1877425 d!2205886))

(assert (=> bs!1877425 m!7776444))

(declare-fun m!7776752 () Bool)

(assert (=> bs!1877425 m!7776752))

(declare-fun m!7776754 () Bool)

(assert (=> bs!1877425 m!7776754))

(assert (=> bs!1877425 m!7776448))

(assert (=> b!7057660 d!2205886))

(declare-fun d!2205888 () Bool)

(assert (=> d!2205888 (= (flatMap!2510 lt!2533953 lambda!421196) (choose!53885 lt!2533953 lambda!421196))))

(declare-fun bs!1877426 () Bool)

(assert (= bs!1877426 d!2205888))

(declare-fun m!7776756 () Bool)

(assert (=> bs!1877426 m!7776756))

(assert (=> b!7057660 d!2205888))

(declare-fun b!7057845 () Bool)

(declare-fun e!4243074 () List!68278)

(assert (=> b!7057845 (= e!4243074 (exprs!7080 ct2!306))))

(declare-fun b!7057847 () Bool)

(declare-fun res!2881438 () Bool)

(declare-fun e!4243075 () Bool)

(assert (=> b!7057847 (=> (not res!2881438) (not e!4243075))))

(declare-fun lt!2534151 () List!68278)

(assert (=> b!7057847 (= res!2881438 (= (size!41161 lt!2534151) (+ (size!41161 (exprs!7080 lt!2533918)) (size!41161 (exprs!7080 ct2!306)))))))

(declare-fun b!7057846 () Bool)

(assert (=> b!7057846 (= e!4243074 (Cons!68154 (h!74602 (exprs!7080 lt!2533918)) (++!15667 (t!382057 (exprs!7080 lt!2533918)) (exprs!7080 ct2!306))))))

(declare-fun d!2205890 () Bool)

(assert (=> d!2205890 e!4243075))

(declare-fun res!2881439 () Bool)

(assert (=> d!2205890 (=> (not res!2881439) (not e!4243075))))

(assert (=> d!2205890 (= res!2881439 (= (content!13704 lt!2534151) (set.union (content!13704 (exprs!7080 lt!2533918)) (content!13704 (exprs!7080 ct2!306)))))))

(assert (=> d!2205890 (= lt!2534151 e!4243074)))

(declare-fun c!1315132 () Bool)

(assert (=> d!2205890 (= c!1315132 (is-Nil!68154 (exprs!7080 lt!2533918)))))

(assert (=> d!2205890 (= (++!15667 (exprs!7080 lt!2533918) (exprs!7080 ct2!306)) lt!2534151)))

(declare-fun b!7057848 () Bool)

(assert (=> b!7057848 (= e!4243075 (or (not (= (exprs!7080 ct2!306) Nil!68154)) (= lt!2534151 (exprs!7080 lt!2533918))))))

(assert (= (and d!2205890 c!1315132) b!7057845))

(assert (= (and d!2205890 (not c!1315132)) b!7057846))

(assert (= (and d!2205890 res!2881439) b!7057847))

(assert (= (and b!7057847 res!2881438) b!7057848))

(declare-fun m!7776758 () Bool)

(assert (=> b!7057847 m!7776758))

(declare-fun m!7776760 () Bool)

(assert (=> b!7057847 m!7776760))

(assert (=> b!7057847 m!7776648))

(declare-fun m!7776762 () Bool)

(assert (=> b!7057846 m!7776762))

(declare-fun m!7776764 () Bool)

(assert (=> d!2205890 m!7776764))

(declare-fun m!7776766 () Bool)

(assert (=> d!2205890 m!7776766))

(assert (=> d!2205890 m!7776656))

(assert (=> b!7057679 d!2205890))

(assert (=> b!7057679 d!2205864))

(declare-fun d!2205892 () Bool)

(declare-fun e!4243078 () Bool)

(assert (=> d!2205892 e!4243078))

(declare-fun res!2881442 () Bool)

(assert (=> d!2205892 (=> (not res!2881442) (not e!4243078))))

(declare-fun lt!2534154 () Context!13160)

(assert (=> d!2205892 (= res!2881442 (= lt!2533957 (dynLambda!27674 lambda!421194 lt!2534154)))))

(declare-fun choose!53888 ((Set Context!13160) Int Context!13160) Context!13160)

(assert (=> d!2205892 (= lt!2534154 (choose!53888 z1!570 lambda!421194 lt!2533957))))

(assert (=> d!2205892 (set.member lt!2533957 (map!15909 z1!570 lambda!421194))))

(assert (=> d!2205892 (= (mapPost2!413 z1!570 lambda!421194 lt!2533957) lt!2534154)))

(declare-fun b!7057852 () Bool)

(assert (=> b!7057852 (= e!4243078 (set.member lt!2534154 z1!570))))

(assert (= (and d!2205892 res!2881442) b!7057852))

(declare-fun b_lambda!268923 () Bool)

(assert (=> (not b_lambda!268923) (not d!2205892)))

(declare-fun m!7776768 () Bool)

(assert (=> d!2205892 m!7776768))

(declare-fun m!7776770 () Bool)

(assert (=> d!2205892 m!7776770))

(declare-fun m!7776772 () Bool)

(assert (=> d!2205892 m!7776772))

(declare-fun m!7776774 () Bool)

(assert (=> d!2205892 m!7776774))

(declare-fun m!7776776 () Bool)

(assert (=> b!7057852 m!7776776))

(assert (=> b!7057679 d!2205892))

(assert (=> b!7057659 d!2205842))

(declare-fun d!2205894 () Bool)

(declare-fun e!4243081 () Bool)

(assert (=> d!2205894 (= (matchZipper!3124 (set.union lt!2533938 lt!2533946) (t!382058 s!7408)) e!4243081)))

(declare-fun res!2881445 () Bool)

(assert (=> d!2205894 (=> res!2881445 e!4243081)))

(assert (=> d!2205894 (= res!2881445 (matchZipper!3124 lt!2533938 (t!382058 s!7408)))))

(declare-fun lt!2534157 () Unit!161841)

(declare-fun choose!53889 ((Set Context!13160) (Set Context!13160) List!68279) Unit!161841)

(assert (=> d!2205894 (= lt!2534157 (choose!53889 lt!2533938 lt!2533946 (t!382058 s!7408)))))

(assert (=> d!2205894 (= (lemmaZipperConcatMatchesSameAsBothZippers!1597 lt!2533938 lt!2533946 (t!382058 s!7408)) lt!2534157)))

(declare-fun b!7057855 () Bool)

(assert (=> b!7057855 (= e!4243081 (matchZipper!3124 lt!2533946 (t!382058 s!7408)))))

(assert (= (and d!2205894 (not res!2881445)) b!7057855))

(declare-fun m!7776778 () Bool)

(assert (=> d!2205894 m!7776778))

(assert (=> d!2205894 m!7776482))

(declare-fun m!7776780 () Bool)

(assert (=> d!2205894 m!7776780))

(assert (=> b!7057855 m!7776378))

(assert (=> b!7057659 d!2205894))

(declare-fun d!2205896 () Bool)

(declare-fun c!1315133 () Bool)

(assert (=> d!2205896 (= c!1315133 (isEmpty!39754 (t!382058 s!7408)))))

(declare-fun e!4243082 () Bool)

(assert (=> d!2205896 (= (matchZipper!3124 lt!2533938 (t!382058 s!7408)) e!4243082)))

(declare-fun b!7057856 () Bool)

(assert (=> b!7057856 (= e!4243082 (nullableZipper!2667 lt!2533938))))

(declare-fun b!7057857 () Bool)

(assert (=> b!7057857 (= e!4243082 (matchZipper!3124 (derivationStepZipper!3034 lt!2533938 (head!14368 (t!382058 s!7408))) (tail!13726 (t!382058 s!7408))))))

(assert (= (and d!2205896 c!1315133) b!7057856))

(assert (= (and d!2205896 (not c!1315133)) b!7057857))

(assert (=> d!2205896 m!7776688))

(declare-fun m!7776782 () Bool)

(assert (=> b!7057856 m!7776782))

(assert (=> b!7057857 m!7776692))

(assert (=> b!7057857 m!7776692))

(declare-fun m!7776784 () Bool)

(assert (=> b!7057857 m!7776784))

(assert (=> b!7057857 m!7776696))

(assert (=> b!7057857 m!7776784))

(assert (=> b!7057857 m!7776696))

(declare-fun m!7776786 () Bool)

(assert (=> b!7057857 m!7776786))

(assert (=> b!7057659 d!2205896))

(declare-fun d!2205898 () Bool)

(declare-fun c!1315134 () Bool)

(assert (=> d!2205898 (= c!1315134 (isEmpty!39754 (t!382058 s!7408)))))

(declare-fun e!4243083 () Bool)

(assert (=> d!2205898 (= (matchZipper!3124 lt!2533954 (t!382058 s!7408)) e!4243083)))

(declare-fun b!7057858 () Bool)

(assert (=> b!7057858 (= e!4243083 (nullableZipper!2667 lt!2533954))))

(declare-fun b!7057859 () Bool)

(assert (=> b!7057859 (= e!4243083 (matchZipper!3124 (derivationStepZipper!3034 lt!2533954 (head!14368 (t!382058 s!7408))) (tail!13726 (t!382058 s!7408))))))

(assert (= (and d!2205898 c!1315134) b!7057858))

(assert (= (and d!2205898 (not c!1315134)) b!7057859))

(assert (=> d!2205898 m!7776688))

(declare-fun m!7776788 () Bool)

(assert (=> b!7057858 m!7776788))

(assert (=> b!7057859 m!7776692))

(assert (=> b!7057859 m!7776692))

(declare-fun m!7776790 () Bool)

(assert (=> b!7057859 m!7776790))

(assert (=> b!7057859 m!7776696))

(assert (=> b!7057859 m!7776790))

(assert (=> b!7057859 m!7776696))

(declare-fun m!7776792 () Bool)

(assert (=> b!7057859 m!7776792))

(assert (=> b!7057659 d!2205898))

(declare-fun d!2205900 () Bool)

(declare-fun c!1315135 () Bool)

(assert (=> d!2205900 (= c!1315135 (isEmpty!39754 (t!382058 s!7408)))))

(declare-fun e!4243084 () Bool)

(assert (=> d!2205900 (= (matchZipper!3124 lt!2533929 (t!382058 s!7408)) e!4243084)))

(declare-fun b!7057860 () Bool)

(assert (=> b!7057860 (= e!4243084 (nullableZipper!2667 lt!2533929))))

(declare-fun b!7057861 () Bool)

(assert (=> b!7057861 (= e!4243084 (matchZipper!3124 (derivationStepZipper!3034 lt!2533929 (head!14368 (t!382058 s!7408))) (tail!13726 (t!382058 s!7408))))))

(assert (= (and d!2205900 c!1315135) b!7057860))

(assert (= (and d!2205900 (not c!1315135)) b!7057861))

(assert (=> d!2205900 m!7776688))

(declare-fun m!7776794 () Bool)

(assert (=> b!7057860 m!7776794))

(assert (=> b!7057861 m!7776692))

(assert (=> b!7057861 m!7776692))

(declare-fun m!7776796 () Bool)

(assert (=> b!7057861 m!7776796))

(assert (=> b!7057861 m!7776696))

(assert (=> b!7057861 m!7776796))

(assert (=> b!7057861 m!7776696))

(declare-fun m!7776798 () Bool)

(assert (=> b!7057861 m!7776798))

(assert (=> b!7057659 d!2205900))

(declare-fun bs!1877427 () Bool)

(declare-fun d!2205902 () Bool)

(assert (= bs!1877427 (and d!2205902 b!7057679)))

(declare-fun lambda!421275 () Int)

(assert (=> bs!1877427 (= lambda!421275 lambda!421195)))

(declare-fun bs!1877428 () Bool)

(assert (= bs!1877428 (and d!2205902 d!2205830)))

(assert (=> bs!1877428 (= lambda!421275 lambda!421264)))

(assert (=> d!2205902 (= (inv!86820 setElem!49924) (forall!16536 (exprs!7080 setElem!49924) lambda!421275))))

(declare-fun bs!1877429 () Bool)

(assert (= bs!1877429 d!2205902))

(declare-fun m!7776800 () Bool)

(assert (=> bs!1877429 m!7776800))

(assert (=> setNonEmpty!49924 d!2205902))

(declare-fun d!2205904 () Bool)

(declare-fun c!1315136 () Bool)

(assert (=> d!2205904 (= c!1315136 (isEmpty!39754 s!7408))))

(declare-fun e!4243085 () Bool)

(assert (=> d!2205904 (= (matchZipper!3124 lt!2533953 s!7408) e!4243085)))

(declare-fun b!7057862 () Bool)

(assert (=> b!7057862 (= e!4243085 (nullableZipper!2667 lt!2533953))))

(declare-fun b!7057863 () Bool)

(assert (=> b!7057863 (= e!4243085 (matchZipper!3124 (derivationStepZipper!3034 lt!2533953 (head!14368 s!7408)) (tail!13726 s!7408)))))

(assert (= (and d!2205904 c!1315136) b!7057862))

(assert (= (and d!2205904 (not c!1315136)) b!7057863))

(assert (=> d!2205904 m!7776598))

(declare-fun m!7776802 () Bool)

(assert (=> b!7057862 m!7776802))

(assert (=> b!7057863 m!7776602))

(assert (=> b!7057863 m!7776602))

(declare-fun m!7776804 () Bool)

(assert (=> b!7057863 m!7776804))

(assert (=> b!7057863 m!7776606))

(assert (=> b!7057863 m!7776804))

(assert (=> b!7057863 m!7776606))

(declare-fun m!7776806 () Bool)

(assert (=> b!7057863 m!7776806))

(assert (=> b!7057668 d!2205904))

(assert (=> b!7057668 d!2205842))

(assert (=> b!7057682 d!2205842))

(assert (=> b!7057682 d!2205884))

(assert (=> b!7057682 d!2205844))

(declare-fun b!7057886 () Bool)

(declare-fun e!4243103 () (Set Context!13160))

(declare-fun call!641206 () (Set Context!13160))

(assert (=> b!7057886 (= e!4243103 call!641206)))

(declare-fun c!1315148 () Bool)

(declare-fun c!1315150 () Bool)

(declare-fun bm!641196 () Bool)

(declare-fun call!641205 () List!68278)

(declare-fun $colon$colon!2630 (List!68278 Regex!17584) List!68278)

(assert (=> bm!641196 (= call!641205 ($colon$colon!2630 (exprs!7080 lt!2533961) (ite (or c!1315150 c!1315148) (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (h!74602 (exprs!7080 lt!2533918)))))))

(declare-fun b!7057887 () Bool)

(declare-fun e!4243098 () Bool)

(assert (=> b!7057887 (= c!1315150 e!4243098)))

(declare-fun res!2881448 () Bool)

(assert (=> b!7057887 (=> (not res!2881448) (not e!4243098))))

(assert (=> b!7057887 (= res!2881448 (is-Concat!26429 (h!74602 (exprs!7080 lt!2533918))))))

(declare-fun e!4243101 () (Set Context!13160))

(declare-fun e!4243102 () (Set Context!13160))

(assert (=> b!7057887 (= e!4243101 e!4243102)))

(declare-fun b!7057888 () Bool)

(assert (=> b!7057888 (= e!4243098 (nullable!7267 (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))))

(declare-fun b!7057889 () Bool)

(declare-fun e!4243100 () (Set Context!13160))

(assert (=> b!7057889 (= e!4243102 e!4243100)))

(assert (=> b!7057889 (= c!1315148 (is-Concat!26429 (h!74602 (exprs!7080 lt!2533918))))))

(declare-fun b!7057890 () Bool)

(assert (=> b!7057890 (= e!4243103 (as set.empty (Set Context!13160)))))

(declare-fun bm!641197 () Bool)

(declare-fun call!641203 () (Set Context!13160))

(declare-fun call!641202 () (Set Context!13160))

(assert (=> bm!641197 (= call!641203 call!641202)))

(declare-fun b!7057891 () Bool)

(declare-fun call!641204 () (Set Context!13160))

(assert (=> b!7057891 (= e!4243101 (set.union call!641202 call!641204))))

(declare-fun b!7057892 () Bool)

(declare-fun c!1315149 () Bool)

(assert (=> b!7057892 (= c!1315149 (is-Star!17584 (h!74602 (exprs!7080 lt!2533918))))))

(assert (=> b!7057892 (= e!4243100 e!4243103)))

(declare-fun bm!641198 () Bool)

(assert (=> bm!641198 (= call!641206 call!641203)))

(declare-fun b!7057893 () Bool)

(declare-fun e!4243099 () (Set Context!13160))

(assert (=> b!7057893 (= e!4243099 (set.insert lt!2533961 (as set.empty (Set Context!13160))))))

(declare-fun call!641201 () List!68278)

(declare-fun c!1315151 () Bool)

(declare-fun bm!641200 () Bool)

(assert (=> bm!641200 (= call!641202 (derivationStepZipperDown!2218 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918)))))) (ite (or c!1315151 c!1315150) lt!2533961 (Context!13161 call!641201)) (h!74603 s!7408)))))

(declare-fun b!7057894 () Bool)

(assert (=> b!7057894 (= e!4243099 e!4243101)))

(assert (=> b!7057894 (= c!1315151 (is-Union!17584 (h!74602 (exprs!7080 lt!2533918))))))

(declare-fun bm!641201 () Bool)

(assert (=> bm!641201 (= call!641201 call!641205)))

(declare-fun b!7057895 () Bool)

(assert (=> b!7057895 (= e!4243100 call!641206)))

(declare-fun b!7057896 () Bool)

(assert (=> b!7057896 (= e!4243102 (set.union call!641204 call!641203))))

(declare-fun d!2205906 () Bool)

(declare-fun c!1315147 () Bool)

(assert (=> d!2205906 (= c!1315147 (and (is-ElementMatch!17584 (h!74602 (exprs!7080 lt!2533918))) (= (c!1315081 (h!74602 (exprs!7080 lt!2533918))) (h!74603 s!7408))))))

(assert (=> d!2205906 (= (derivationStepZipperDown!2218 (h!74602 (exprs!7080 lt!2533918)) lt!2533961 (h!74603 s!7408)) e!4243099)))

(declare-fun bm!641199 () Bool)

(assert (=> bm!641199 (= call!641204 (derivationStepZipperDown!2218 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))) (ite c!1315151 lt!2533961 (Context!13161 call!641205)) (h!74603 s!7408)))))

(assert (= (and d!2205906 c!1315147) b!7057893))

(assert (= (and d!2205906 (not c!1315147)) b!7057894))

(assert (= (and b!7057894 c!1315151) b!7057891))

(assert (= (and b!7057894 (not c!1315151)) b!7057887))

(assert (= (and b!7057887 res!2881448) b!7057888))

(assert (= (and b!7057887 c!1315150) b!7057896))

(assert (= (and b!7057887 (not c!1315150)) b!7057889))

(assert (= (and b!7057889 c!1315148) b!7057895))

(assert (= (and b!7057889 (not c!1315148)) b!7057892))

(assert (= (and b!7057892 c!1315149) b!7057886))

(assert (= (and b!7057892 (not c!1315149)) b!7057890))

(assert (= (or b!7057895 b!7057886) bm!641201))

(assert (= (or b!7057895 b!7057886) bm!641198))

(assert (= (or b!7057896 bm!641198) bm!641197))

(assert (= (or b!7057896 bm!641201) bm!641196))

(assert (= (or b!7057891 bm!641197) bm!641200))

(assert (= (or b!7057891 b!7057896) bm!641199))

(declare-fun m!7776808 () Bool)

(assert (=> bm!641200 m!7776808))

(declare-fun m!7776810 () Bool)

(assert (=> bm!641199 m!7776810))

(declare-fun m!7776812 () Bool)

(assert (=> bm!641196 m!7776812))

(assert (=> b!7057893 m!7776448))

(declare-fun m!7776814 () Bool)

(assert (=> b!7057888 m!7776814))

(assert (=> b!7057682 d!2205906))

(declare-fun d!2205908 () Bool)

(declare-fun lt!2534158 () Int)

(assert (=> d!2205908 (>= lt!2534158 0)))

(declare-fun e!4243104 () Int)

(assert (=> d!2205908 (= lt!2534158 e!4243104)))

(declare-fun c!1315152 () Bool)

(assert (=> d!2205908 (= c!1315152 (is-Cons!68156 (Cons!68156 lt!2533926 Nil!68156)))))

(assert (=> d!2205908 (= (zipperDepthTotal!549 (Cons!68156 lt!2533926 Nil!68156)) lt!2534158)))

(declare-fun b!7057897 () Bool)

(assert (=> b!7057897 (= e!4243104 (+ (contextDepthTotal!520 (h!74604 (Cons!68156 lt!2533926 Nil!68156))) (zipperDepthTotal!549 (t!382059 (Cons!68156 lt!2533926 Nil!68156)))))))

(declare-fun b!7057898 () Bool)

(assert (=> b!7057898 (= e!4243104 0)))

(assert (= (and d!2205908 c!1315152) b!7057897))

(assert (= (and d!2205908 (not c!1315152)) b!7057898))

(declare-fun m!7776816 () Bool)

(assert (=> b!7057897 m!7776816))

(declare-fun m!7776818 () Bool)

(assert (=> b!7057897 m!7776818))

(assert (=> b!7057672 d!2205908))

(assert (=> b!7057662 d!2205862))

(assert (=> b!7057662 d!2205842))

(assert (=> b!7057681 d!2205862))

(declare-fun d!2205910 () Bool)

(assert (=> d!2205910 (= (flatMap!2510 lt!2533956 lambda!421196) (dynLambda!27673 lambda!421196 lt!2533928))))

(declare-fun lt!2534159 () Unit!161841)

(assert (=> d!2205910 (= lt!2534159 (choose!53880 lt!2533956 lt!2533928 lambda!421196))))

(assert (=> d!2205910 (= lt!2533956 (set.insert lt!2533928 (as set.empty (Set Context!13160))))))

(assert (=> d!2205910 (= (lemmaFlatMapOnSingletonSet!2019 lt!2533956 lt!2533928 lambda!421196) lt!2534159)))

(declare-fun b_lambda!268925 () Bool)

(assert (=> (not b_lambda!268925) (not d!2205910)))

(declare-fun bs!1877430 () Bool)

(assert (= bs!1877430 d!2205910))

(assert (=> bs!1877430 m!7776464))

(declare-fun m!7776820 () Bool)

(assert (=> bs!1877430 m!7776820))

(declare-fun m!7776822 () Bool)

(assert (=> bs!1877430 m!7776822))

(assert (=> bs!1877430 m!7776440))

(assert (=> b!7057661 d!2205910))

(declare-fun d!2205912 () Bool)

(assert (=> d!2205912 (= (flatMap!2510 lt!2533956 lambda!421196) (choose!53885 lt!2533956 lambda!421196))))

(declare-fun bs!1877431 () Bool)

(assert (= bs!1877431 d!2205912))

(declare-fun m!7776824 () Bool)

(assert (=> bs!1877431 m!7776824))

(assert (=> b!7057661 d!2205912))

(assert (=> b!7057661 d!2205864))

(declare-fun bs!1877432 () Bool)

(declare-fun d!2205914 () Bool)

(assert (= bs!1877432 (and d!2205914 b!7057661)))

(declare-fun lambda!421276 () Int)

(assert (=> bs!1877432 (= lambda!421276 lambda!421196)))

(declare-fun bs!1877433 () Bool)

(assert (= bs!1877433 (and d!2205914 d!2205882)))

(assert (=> bs!1877433 (= lambda!421276 lambda!421274)))

(assert (=> d!2205914 true))

(assert (=> d!2205914 (= (derivationStepZipper!3034 lt!2533956 (h!74603 s!7408)) (flatMap!2510 lt!2533956 lambda!421276))))

(declare-fun bs!1877434 () Bool)

(assert (= bs!1877434 d!2205914))

(declare-fun m!7776826 () Bool)

(assert (=> bs!1877434 m!7776826))

(assert (=> b!7057661 d!2205914))

(declare-fun b!7057899 () Bool)

(declare-fun e!4243105 () (Set Context!13160))

(declare-fun call!641207 () (Set Context!13160))

(assert (=> b!7057899 (= e!4243105 call!641207)))

(declare-fun b!7057900 () Bool)

(declare-fun e!4243106 () Bool)

(assert (=> b!7057900 (= e!4243106 (nullable!7267 (h!74602 (exprs!7080 lt!2533928))))))

(declare-fun e!4243107 () (Set Context!13160))

(declare-fun b!7057901 () Bool)

(assert (=> b!7057901 (= e!4243107 (set.union call!641207 (derivationStepZipperUp!2168 (Context!13161 (t!382057 (exprs!7080 lt!2533928))) (h!74603 s!7408))))))

(declare-fun b!7057902 () Bool)

(assert (=> b!7057902 (= e!4243105 (as set.empty (Set Context!13160)))))

(declare-fun b!7057903 () Bool)

(assert (=> b!7057903 (= e!4243107 e!4243105)))

(declare-fun c!1315154 () Bool)

(assert (=> b!7057903 (= c!1315154 (is-Cons!68154 (exprs!7080 lt!2533928)))))

(declare-fun d!2205916 () Bool)

(declare-fun c!1315153 () Bool)

(assert (=> d!2205916 (= c!1315153 e!4243106)))

(declare-fun res!2881449 () Bool)

(assert (=> d!2205916 (=> (not res!2881449) (not e!4243106))))

(assert (=> d!2205916 (= res!2881449 (is-Cons!68154 (exprs!7080 lt!2533928)))))

(assert (=> d!2205916 (= (derivationStepZipperUp!2168 lt!2533928 (h!74603 s!7408)) e!4243107)))

(declare-fun bm!641202 () Bool)

(assert (=> bm!641202 (= call!641207 (derivationStepZipperDown!2218 (h!74602 (exprs!7080 lt!2533928)) (Context!13161 (t!382057 (exprs!7080 lt!2533928))) (h!74603 s!7408)))))

(assert (= (and d!2205916 res!2881449) b!7057900))

(assert (= (and d!2205916 c!1315153) b!7057901))

(assert (= (and d!2205916 (not c!1315153)) b!7057903))

(assert (= (and b!7057903 c!1315154) b!7057899))

(assert (= (and b!7057903 (not c!1315154)) b!7057902))

(assert (= (or b!7057901 b!7057899) bm!641202))

(declare-fun m!7776828 () Bool)

(assert (=> b!7057900 m!7776828))

(declare-fun m!7776830 () Bool)

(assert (=> b!7057901 m!7776830))

(declare-fun m!7776832 () Bool)

(assert (=> bm!641202 m!7776832))

(assert (=> b!7057661 d!2205916))

(declare-fun d!2205918 () Bool)

(declare-fun nullableFct!2783 (Regex!17584) Bool)

(assert (=> d!2205918 (= (nullable!7267 (h!74602 (exprs!7080 lt!2533918))) (nullableFct!2783 (h!74602 (exprs!7080 lt!2533918))))))

(declare-fun bs!1877435 () Bool)

(assert (= bs!1877435 d!2205918))

(declare-fun m!7776834 () Bool)

(assert (=> bs!1877435 m!7776834))

(assert (=> b!7057680 d!2205918))

(declare-fun d!2205920 () Bool)

(assert (=> d!2205920 (= (tail!13724 (exprs!7080 lt!2533918)) (t!382057 (exprs!7080 lt!2533918)))))

(assert (=> b!7057680 d!2205920))

(declare-fun b!7057908 () Bool)

(declare-fun e!4243110 () Bool)

(declare-fun tp!1940555 () Bool)

(assert (=> b!7057908 (= e!4243110 (and tp_is_empty!44393 tp!1940555))))

(assert (=> b!7057670 (= tp!1940538 e!4243110)))

(assert (= (and b!7057670 (is-Cons!68155 (t!382058 s!7408))) b!7057908))

(declare-fun b!7057913 () Bool)

(declare-fun e!4243113 () Bool)

(declare-fun tp!1940560 () Bool)

(declare-fun tp!1940561 () Bool)

(assert (=> b!7057913 (= e!4243113 (and tp!1940560 tp!1940561))))

(assert (=> b!7057664 (= tp!1940540 e!4243113)))

(assert (= (and b!7057664 (is-Cons!68154 (exprs!7080 setElem!49924))) b!7057913))

(declare-fun condSetEmpty!49930 () Bool)

(assert (=> setNonEmpty!49924 (= condSetEmpty!49930 (= setRest!49924 (as set.empty (Set Context!13160))))))

(declare-fun setRes!49930 () Bool)

(assert (=> setNonEmpty!49924 (= tp!1940537 setRes!49930)))

(declare-fun setIsEmpty!49930 () Bool)

(assert (=> setIsEmpty!49930 setRes!49930))

(declare-fun setElem!49930 () Context!13160)

(declare-fun tp!1940566 () Bool)

(declare-fun setNonEmpty!49930 () Bool)

(declare-fun e!4243116 () Bool)

(assert (=> setNonEmpty!49930 (= setRes!49930 (and tp!1940566 (inv!86820 setElem!49930) e!4243116))))

(declare-fun setRest!49930 () (Set Context!13160))

(assert (=> setNonEmpty!49930 (= setRest!49924 (set.union (set.insert setElem!49930 (as set.empty (Set Context!13160))) setRest!49930))))

(declare-fun b!7057918 () Bool)

(declare-fun tp!1940567 () Bool)

(assert (=> b!7057918 (= e!4243116 tp!1940567)))

(assert (= (and setNonEmpty!49924 condSetEmpty!49930) setIsEmpty!49930))

(assert (= (and setNonEmpty!49924 (not condSetEmpty!49930)) setNonEmpty!49930))

(assert (= setNonEmpty!49930 b!7057918))

(declare-fun m!7776836 () Bool)

(assert (=> setNonEmpty!49930 m!7776836))

(declare-fun b!7057919 () Bool)

(declare-fun e!4243117 () Bool)

(declare-fun tp!1940568 () Bool)

(declare-fun tp!1940569 () Bool)

(assert (=> b!7057919 (= e!4243117 (and tp!1940568 tp!1940569))))

(assert (=> b!7057663 (= tp!1940539 e!4243117)))

(assert (= (and b!7057663 (is-Cons!68154 (exprs!7080 ct2!306))) b!7057919))

(declare-fun b_lambda!268927 () Bool)

(assert (= b_lambda!268921 (or b!7057661 b_lambda!268927)))

(declare-fun bs!1877436 () Bool)

(declare-fun d!2205922 () Bool)

(assert (= bs!1877436 (and d!2205922 b!7057661)))

(assert (=> bs!1877436 (= (dynLambda!27673 lambda!421196 lt!2533961) (derivationStepZipperUp!2168 lt!2533961 (h!74603 s!7408)))))

(assert (=> bs!1877436 m!7776382))

(assert (=> d!2205886 d!2205922))

(declare-fun b_lambda!268929 () Bool)

(assert (= b_lambda!268919 (or b!7057676 b_lambda!268929)))

(declare-fun bs!1877437 () Bool)

(declare-fun d!2205924 () Bool)

(assert (= bs!1877437 (and d!2205924 b!7057676)))

(assert (=> bs!1877437 (= (dynLambda!27676 lambda!421193 lt!2534149) (matchZipper!3124 (set.insert lt!2534149 (as set.empty (Set Context!13160))) s!7408))))

(declare-fun m!7776838 () Bool)

(assert (=> bs!1877437 m!7776838))

(assert (=> bs!1877437 m!7776838))

(declare-fun m!7776840 () Bool)

(assert (=> bs!1877437 m!7776840))

(assert (=> d!2205880 d!2205924))

(declare-fun b_lambda!268931 () Bool)

(assert (= b_lambda!268917 (or b!7057679 b_lambda!268931)))

(declare-fun bs!1877438 () Bool)

(declare-fun d!2205926 () Bool)

(assert (= bs!1877438 (and d!2205926 b!7057679)))

(declare-fun lt!2534160 () Unit!161841)

(assert (=> bs!1877438 (= lt!2534160 (lemmaConcatPreservesForall!895 (exprs!7080 lt!2533926) (exprs!7080 ct2!306) lambda!421195))))

(assert (=> bs!1877438 (= (dynLambda!27674 lambda!421194 lt!2533926) (Context!13161 (++!15667 (exprs!7080 lt!2533926) (exprs!7080 ct2!306))))))

(declare-fun m!7776842 () Bool)

(assert (=> bs!1877438 m!7776842))

(declare-fun m!7776844 () Bool)

(assert (=> bs!1877438 m!7776844))

(assert (=> d!2205850 d!2205926))

(declare-fun b_lambda!268933 () Bool)

(assert (= b_lambda!268915 (or b!7057661 b_lambda!268933)))

(declare-fun bs!1877439 () Bool)

(declare-fun d!2205928 () Bool)

(assert (= bs!1877439 (and d!2205928 b!7057661)))

(assert (=> bs!1877439 (= (dynLambda!27673 lambda!421196 lt!2533926) (derivationStepZipperUp!2168 lt!2533926 (h!74603 s!7408)))))

(assert (=> bs!1877439 m!7776426))

(assert (=> d!2205832 d!2205928))

(declare-fun b_lambda!268935 () Bool)

(assert (= b_lambda!268923 (or b!7057679 b_lambda!268935)))

(declare-fun bs!1877440 () Bool)

(declare-fun d!2205930 () Bool)

(assert (= bs!1877440 (and d!2205930 b!7057679)))

(declare-fun lt!2534161 () Unit!161841)

(assert (=> bs!1877440 (= lt!2534161 (lemmaConcatPreservesForall!895 (exprs!7080 lt!2534154) (exprs!7080 ct2!306) lambda!421195))))

(assert (=> bs!1877440 (= (dynLambda!27674 lambda!421194 lt!2534154) (Context!13161 (++!15667 (exprs!7080 lt!2534154) (exprs!7080 ct2!306))))))

(declare-fun m!7776846 () Bool)

(assert (=> bs!1877440 m!7776846))

(declare-fun m!7776848 () Bool)

(assert (=> bs!1877440 m!7776848))

(assert (=> d!2205892 d!2205930))

(declare-fun b_lambda!268937 () Bool)

(assert (= b_lambda!268925 (or b!7057661 b_lambda!268937)))

(declare-fun bs!1877441 () Bool)

(declare-fun d!2205932 () Bool)

(assert (= bs!1877441 (and d!2205932 b!7057661)))

(assert (=> bs!1877441 (= (dynLambda!27673 lambda!421196 lt!2533928) (derivationStepZipperUp!2168 lt!2533928 (h!74603 s!7408)))))

(assert (=> bs!1877441 m!7776466))

(assert (=> d!2205910 d!2205932))

(push 1)

(assert (not b_lambda!268929))

(assert (not b!7057785))

(assert (not b!7057897))

(assert (not b!7057913))

(assert (not bm!641196))

(assert (not b!7057859))

(assert (not d!2205902))

(assert (not d!2205858))

(assert (not b!7057860))

(assert (not d!2205836))

(assert (not d!2205848))

(assert (not b!7057900))

(assert (not d!2205864))

(assert (not b!7057857))

(assert (not d!2205840))

(assert (not d!2205828))

(assert (not d!2205874))

(assert (not b!7057809))

(assert (not b!7057847))

(assert (not b!7057834))

(assert (not b!7057842))

(assert (not bs!1877436))

(assert (not b!7057831))

(assert (not b_lambda!268927))

(assert (not d!2205904))

(assert (not b!7057817))

(assert (not b!7057901))

(assert (not d!2205842))

(assert (not d!2205890))

(assert (not d!2205892))

(assert (not b!7057856))

(assert (not b_lambda!268937))

(assert (not d!2205918))

(assert (not b!7057826))

(assert (not b!7057819))

(assert (not d!2205830))

(assert (not d!2205872))

(assert (not b!7057918))

(assert (not b!7057815))

(assert (not b!7057830))

(assert (not b!7057806))

(assert (not d!2205912))

(assert (not b!7057863))

(assert (not b!7057828))

(assert tp_is_empty!44393)

(assert (not b_lambda!268931))

(assert (not bs!1877441))

(assert (not d!2205900))

(assert (not bm!641200))

(assert (not d!2205898))

(assert (not b!7057888))

(assert (not b!7057846))

(assert (not d!2205894))

(assert (not b!7057908))

(assert (not bs!1877437))

(assert (not bm!641202))

(assert (not b!7057829))

(assert (not b!7057796))

(assert (not d!2205862))

(assert (not d!2205878))

(assert (not d!2205882))

(assert (not d!2205910))

(assert (not bs!1877439))

(assert (not b!7057862))

(assert (not b!7057784))

(assert (not b!7057792))

(assert (not d!2205896))

(assert (not d!2205888))

(assert (not b!7057771))

(assert (not d!2205826))

(assert (not b!7057827))

(assert (not b!7057825))

(assert (not bm!641199))

(assert (not d!2205850))

(assert (not d!2205880))

(assert (not d!2205914))

(assert (not b!7057841))

(assert (not bm!641183))

(assert (not d!2205844))

(assert (not b!7057772))

(assert (not b_lambda!268935))

(assert (not d!2205870))

(assert (not bs!1877440))

(assert (not d!2205832))

(assert (not b!7057919))

(assert (not b!7057807))

(assert (not d!2205876))

(assert (not d!2205868))

(assert (not setNonEmpty!49930))

(assert (not d!2205886))

(assert (not b!7057861))

(assert (not bs!1877438))

(assert (not d!2205846))

(assert (not b!7057855))

(assert (not bm!641182))

(assert (not b!7057858))

(assert (not b_lambda!268933))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!2205850 d!2205846))

(declare-fun d!2206042 () Bool)

(assert (=> d!2206042 (= (map!15909 lt!2533927 lambda!421194) (set.insert (dynLambda!27674 lambda!421194 lt!2533926) (as set.empty (Set Context!13160))))))

(assert (=> d!2206042 true))

(declare-fun _$12!2534 () Unit!161841)

(assert (=> d!2206042 (= (choose!53886 lt!2533927 lt!2533926 lambda!421194) _$12!2534)))

(declare-fun b_lambda!268963 () Bool)

(assert (=> (not b_lambda!268963) (not d!2206042)))

(declare-fun bs!1877480 () Bool)

(assert (= bs!1877480 d!2206042))

(assert (=> bs!1877480 m!7776418))

(assert (=> bs!1877480 m!7776662))

(assert (=> bs!1877480 m!7776662))

(assert (=> bs!1877480 m!7776664))

(assert (=> d!2205850 d!2206042))

(assert (=> d!2205832 d!2205848))

(declare-fun d!2206044 () Bool)

(assert (=> d!2206044 (= (flatMap!2510 lt!2533927 lambda!421196) (dynLambda!27673 lambda!421196 lt!2533926))))

(assert (=> d!2206044 true))

(declare-fun _$13!4542 () Unit!161841)

(assert (=> d!2206044 (= (choose!53880 lt!2533927 lt!2533926 lambda!421196) _$13!4542)))

(declare-fun b_lambda!268965 () Bool)

(assert (=> (not b_lambda!268965) (not d!2206044)))

(declare-fun bs!1877481 () Bool)

(assert (= bs!1877481 d!2206044))

(assert (=> bs!1877481 m!7776416))

(assert (=> bs!1877481 m!7776614))

(assert (=> d!2205832 d!2206044))

(assert (=> bs!1877439 d!2205834))

(declare-fun b!7058073 () Bool)

(declare-fun e!4243205 () List!68278)

(assert (=> b!7058073 (= e!4243205 (exprs!7080 ct2!306))))

(declare-fun b!7058075 () Bool)

(declare-fun res!2881481 () Bool)

(declare-fun e!4243206 () Bool)

(assert (=> b!7058075 (=> (not res!2881481) (not e!4243206))))

(declare-fun lt!2534214 () List!68278)

(assert (=> b!7058075 (= res!2881481 (= (size!41161 lt!2534214) (+ (size!41161 (t!382057 (exprs!7080 lt!2533918))) (size!41161 (exprs!7080 ct2!306)))))))

(declare-fun b!7058074 () Bool)

(assert (=> b!7058074 (= e!4243205 (Cons!68154 (h!74602 (t!382057 (exprs!7080 lt!2533918))) (++!15667 (t!382057 (t!382057 (exprs!7080 lt!2533918))) (exprs!7080 ct2!306))))))

(declare-fun d!2206046 () Bool)

(assert (=> d!2206046 e!4243206))

(declare-fun res!2881482 () Bool)

(assert (=> d!2206046 (=> (not res!2881482) (not e!4243206))))

(assert (=> d!2206046 (= res!2881482 (= (content!13704 lt!2534214) (set.union (content!13704 (t!382057 (exprs!7080 lt!2533918))) (content!13704 (exprs!7080 ct2!306)))))))

(assert (=> d!2206046 (= lt!2534214 e!4243205)))

(declare-fun c!1315213 () Bool)

(assert (=> d!2206046 (= c!1315213 (is-Nil!68154 (t!382057 (exprs!7080 lt!2533918))))))

(assert (=> d!2206046 (= (++!15667 (t!382057 (exprs!7080 lt!2533918)) (exprs!7080 ct2!306)) lt!2534214)))

(declare-fun b!7058076 () Bool)

(assert (=> b!7058076 (= e!4243206 (or (not (= (exprs!7080 ct2!306) Nil!68154)) (= lt!2534214 (t!382057 (exprs!7080 lt!2533918)))))))

(assert (= (and d!2206046 c!1315213) b!7058073))

(assert (= (and d!2206046 (not c!1315213)) b!7058074))

(assert (= (and d!2206046 res!2881482) b!7058075))

(assert (= (and b!7058075 res!2881481) b!7058076))

(declare-fun m!7777102 () Bool)

(assert (=> b!7058075 m!7777102))

(declare-fun m!7777104 () Bool)

(assert (=> b!7058075 m!7777104))

(assert (=> b!7058075 m!7776648))

(declare-fun m!7777106 () Bool)

(assert (=> b!7058074 m!7777106))

(declare-fun m!7777108 () Bool)

(assert (=> d!2206046 m!7777108))

(declare-fun m!7777110 () Bool)

(assert (=> d!2206046 m!7777110))

(assert (=> d!2206046 m!7776656))

(assert (=> b!7057846 d!2206046))

(declare-fun bs!1877482 () Bool)

(declare-fun d!2206048 () Bool)

(assert (= bs!1877482 (and d!2206048 b!7057679)))

(declare-fun lambda!421297 () Int)

(assert (=> bs!1877482 (= lambda!421297 lambda!421195)))

(declare-fun bs!1877483 () Bool)

(assert (= bs!1877483 (and d!2206048 d!2205830)))

(assert (=> bs!1877483 (= lambda!421297 lambda!421264)))

(declare-fun bs!1877484 () Bool)

(assert (= bs!1877484 (and d!2206048 d!2205902)))

(assert (=> bs!1877484 (= lambda!421297 lambda!421275)))

(assert (=> d!2206048 (= (inv!86820 setElem!49930) (forall!16536 (exprs!7080 setElem!49930) lambda!421297))))

(declare-fun bs!1877485 () Bool)

(assert (= bs!1877485 d!2206048))

(declare-fun m!7777112 () Bool)

(assert (=> bs!1877485 m!7777112))

(assert (=> setNonEmpty!49930 d!2206048))

(declare-fun b!7058093 () Bool)

(declare-fun e!4243215 () Int)

(declare-fun e!4243216 () Int)

(assert (=> b!7058093 (= e!4243215 e!4243216)))

(declare-fun c!1315222 () Bool)

(assert (=> b!7058093 (= c!1315222 (is-Star!17584 (h!74602 (exprs!7080 lt!2533926))))))

(declare-fun b!7058094 () Bool)

(declare-fun e!4243218 () Int)

(declare-fun e!4243217 () Int)

(assert (=> b!7058094 (= e!4243218 e!4243217)))

(declare-fun c!1315225 () Bool)

(assert (=> b!7058094 (= c!1315225 (is-Concat!26429 (h!74602 (exprs!7080 lt!2533926))))))

(declare-fun b!7058095 () Bool)

(declare-fun c!1315223 () Bool)

(assert (=> b!7058095 (= c!1315223 (is-Union!17584 (h!74602 (exprs!7080 lt!2533926))))))

(assert (=> b!7058095 (= e!4243216 e!4243218)))

(declare-fun call!641239 () Int)

(declare-fun bm!641232 () Bool)

(assert (=> bm!641232 (= call!641239 (regexDepthTotal!316 (ite c!1315222 (reg!17913 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315223 (regTwo!35681 (h!74602 (exprs!7080 lt!2533926))) (regOne!35680 (h!74602 (exprs!7080 lt!2533926)))))))))

(declare-fun b!7058096 () Bool)

(assert (=> b!7058096 (= e!4243217 1)))

(declare-fun b!7058097 () Bool)

(declare-fun call!641237 () Int)

(declare-fun call!641238 () Int)

(assert (=> b!7058097 (= e!4243217 (+ 1 call!641237 call!641238))))

(declare-fun d!2206050 () Bool)

(declare-fun lt!2534217 () Int)

(assert (=> d!2206050 (> lt!2534217 0)))

(assert (=> d!2206050 (= lt!2534217 e!4243215)))

(declare-fun c!1315224 () Bool)

(assert (=> d!2206050 (= c!1315224 (is-ElementMatch!17584 (h!74602 (exprs!7080 lt!2533926))))))

(assert (=> d!2206050 (= (regexDepthTotal!316 (h!74602 (exprs!7080 lt!2533926))) lt!2534217)))

(declare-fun b!7058098 () Bool)

(assert (=> b!7058098 (= e!4243218 (+ 1 call!641238 call!641237))))

(declare-fun b!7058099 () Bool)

(assert (=> b!7058099 (= e!4243216 (+ 1 call!641239))))

(declare-fun bm!641233 () Bool)

(assert (=> bm!641233 (= call!641238 (regexDepthTotal!316 (ite c!1315223 (regOne!35681 (h!74602 (exprs!7080 lt!2533926))) (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))))))))

(declare-fun b!7058100 () Bool)

(assert (=> b!7058100 (= e!4243215 1)))

(declare-fun bm!641234 () Bool)

(assert (=> bm!641234 (= call!641237 call!641239)))

(assert (= (and d!2206050 c!1315224) b!7058100))

(assert (= (and d!2206050 (not c!1315224)) b!7058093))

(assert (= (and b!7058093 c!1315222) b!7058099))

(assert (= (and b!7058093 (not c!1315222)) b!7058095))

(assert (= (and b!7058095 c!1315223) b!7058098))

(assert (= (and b!7058095 (not c!1315223)) b!7058094))

(assert (= (and b!7058094 c!1315225) b!7058097))

(assert (= (and b!7058094 (not c!1315225)) b!7058096))

(assert (= (or b!7058098 b!7058097) bm!641234))

(assert (= (or b!7058098 b!7058097) bm!641233))

(assert (= (or b!7058099 bm!641234) bm!641232))

(declare-fun m!7777114 () Bool)

(assert (=> bm!641232 m!7777114))

(declare-fun m!7777116 () Bool)

(assert (=> bm!641233 m!7777116))

(assert (=> b!7057809 d!2206050))

(declare-fun d!2206052 () Bool)

(declare-fun lt!2534218 () Int)

(assert (=> d!2206052 (>= lt!2534218 0)))

(declare-fun e!4243219 () Int)

(assert (=> d!2206052 (= lt!2534218 e!4243219)))

(declare-fun c!1315226 () Bool)

(assert (=> d!2206052 (= c!1315226 (is-Cons!68154 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926))))))))

(assert (=> d!2206052 (= (contextDepthTotal!520 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))) lt!2534218)))

(declare-fun b!7058101 () Bool)

(assert (=> b!7058101 (= e!4243219 (+ (regexDepthTotal!316 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))) (contextDepthTotal!520 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))))))))

(declare-fun b!7058102 () Bool)

(assert (=> b!7058102 (= e!4243219 1)))

(assert (= (and d!2206052 c!1315226) b!7058101))

(assert (= (and d!2206052 (not c!1315226)) b!7058102))

(declare-fun m!7777118 () Bool)

(assert (=> b!7058101 m!7777118))

(declare-fun m!7777120 () Bool)

(assert (=> b!7058101 m!7777120))

(assert (=> b!7057809 d!2206052))

(declare-fun d!2206054 () Bool)

(declare-fun c!1315227 () Bool)

(assert (=> d!2206054 (= c!1315227 (isEmpty!39754 (tail!13726 (t!382058 s!7408))))))

(declare-fun e!4243220 () Bool)

(assert (=> d!2206054 (= (matchZipper!3124 (derivationStepZipper!3034 lt!2533954 (head!14368 (t!382058 s!7408))) (tail!13726 (t!382058 s!7408))) e!4243220)))

(declare-fun b!7058103 () Bool)

(assert (=> b!7058103 (= e!4243220 (nullableZipper!2667 (derivationStepZipper!3034 lt!2533954 (head!14368 (t!382058 s!7408)))))))

(declare-fun b!7058104 () Bool)

(assert (=> b!7058104 (= e!4243220 (matchZipper!3124 (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533954 (head!14368 (t!382058 s!7408))) (head!14368 (tail!13726 (t!382058 s!7408)))) (tail!13726 (tail!13726 (t!382058 s!7408)))))))

(assert (= (and d!2206054 c!1315227) b!7058103))

(assert (= (and d!2206054 (not c!1315227)) b!7058104))

(assert (=> d!2206054 m!7776696))

(declare-fun m!7777122 () Bool)

(assert (=> d!2206054 m!7777122))

(assert (=> b!7058103 m!7776790))

(declare-fun m!7777124 () Bool)

(assert (=> b!7058103 m!7777124))

(assert (=> b!7058104 m!7776696))

(declare-fun m!7777126 () Bool)

(assert (=> b!7058104 m!7777126))

(assert (=> b!7058104 m!7776790))

(assert (=> b!7058104 m!7777126))

(declare-fun m!7777128 () Bool)

(assert (=> b!7058104 m!7777128))

(assert (=> b!7058104 m!7776696))

(declare-fun m!7777130 () Bool)

(assert (=> b!7058104 m!7777130))

(assert (=> b!7058104 m!7777128))

(assert (=> b!7058104 m!7777130))

(declare-fun m!7777132 () Bool)

(assert (=> b!7058104 m!7777132))

(assert (=> b!7057859 d!2206054))

(declare-fun bs!1877486 () Bool)

(declare-fun d!2206056 () Bool)

(assert (= bs!1877486 (and d!2206056 b!7057661)))

(declare-fun lambda!421298 () Int)

(assert (=> bs!1877486 (= (= (head!14368 (t!382058 s!7408)) (h!74603 s!7408)) (= lambda!421298 lambda!421196))))

(declare-fun bs!1877487 () Bool)

(assert (= bs!1877487 (and d!2206056 d!2205882)))

(assert (=> bs!1877487 (= (= (head!14368 (t!382058 s!7408)) (h!74603 s!7408)) (= lambda!421298 lambda!421274))))

(declare-fun bs!1877488 () Bool)

(assert (= bs!1877488 (and d!2206056 d!2205914)))

(assert (=> bs!1877488 (= (= (head!14368 (t!382058 s!7408)) (h!74603 s!7408)) (= lambda!421298 lambda!421276))))

(assert (=> d!2206056 true))

(assert (=> d!2206056 (= (derivationStepZipper!3034 lt!2533954 (head!14368 (t!382058 s!7408))) (flatMap!2510 lt!2533954 lambda!421298))))

(declare-fun bs!1877489 () Bool)

(assert (= bs!1877489 d!2206056))

(declare-fun m!7777134 () Bool)

(assert (=> bs!1877489 m!7777134))

(assert (=> b!7057859 d!2206056))

(declare-fun d!2206058 () Bool)

(assert (=> d!2206058 (= (head!14368 (t!382058 s!7408)) (h!74603 (t!382058 s!7408)))))

(assert (=> b!7057859 d!2206058))

(declare-fun d!2206060 () Bool)

(assert (=> d!2206060 (= (tail!13726 (t!382058 s!7408)) (t!382058 (t!382058 s!7408)))))

(assert (=> b!7057859 d!2206060))

(declare-fun d!2206062 () Bool)

(declare-fun res!2881487 () Bool)

(declare-fun e!4243225 () Bool)

(assert (=> d!2206062 (=> res!2881487 e!4243225)))

(assert (=> d!2206062 (= res!2881487 (is-Nil!68156 lt!2534138))))

(assert (=> d!2206062 (= (noDuplicate!2698 lt!2534138) e!4243225)))

(declare-fun b!7058109 () Bool)

(declare-fun e!4243226 () Bool)

(assert (=> b!7058109 (= e!4243225 e!4243226)))

(declare-fun res!2881488 () Bool)

(assert (=> b!7058109 (=> (not res!2881488) (not e!4243226))))

(assert (=> b!7058109 (= res!2881488 (not (contains!20486 (t!382059 lt!2534138) (h!74604 lt!2534138))))))

(declare-fun b!7058110 () Bool)

(assert (=> b!7058110 (= e!4243226 (noDuplicate!2698 (t!382059 lt!2534138)))))

(assert (= (and d!2206062 (not res!2881487)) b!7058109))

(assert (= (and b!7058109 res!2881488) b!7058110))

(declare-fun m!7777136 () Bool)

(assert (=> b!7058109 m!7777136))

(declare-fun m!7777138 () Bool)

(assert (=> b!7058110 m!7777138))

(assert (=> d!2205858 d!2206062))

(declare-fun d!2206064 () Bool)

(declare-fun e!4243235 () Bool)

(assert (=> d!2206064 e!4243235))

(declare-fun res!2881494 () Bool)

(assert (=> d!2206064 (=> (not res!2881494) (not e!4243235))))

(declare-fun res!2881493 () List!68280)

(assert (=> d!2206064 (= res!2881494 (noDuplicate!2698 res!2881493))))

(declare-fun e!4243234 () Bool)

(assert (=> d!2206064 e!4243234))

(assert (=> d!2206064 (= (choose!53882 lt!2533927) res!2881493)))

(declare-fun b!7058118 () Bool)

(declare-fun e!4243233 () Bool)

(declare-fun tp!1940591 () Bool)

(assert (=> b!7058118 (= e!4243233 tp!1940591)))

(declare-fun b!7058117 () Bool)

(declare-fun tp!1940592 () Bool)

(assert (=> b!7058117 (= e!4243234 (and (inv!86820 (h!74604 res!2881493)) e!4243233 tp!1940592))))

(declare-fun b!7058119 () Bool)

(assert (=> b!7058119 (= e!4243235 (= (content!13703 res!2881493) lt!2533927))))

(assert (= b!7058117 b!7058118))

(assert (= (and d!2206064 (is-Cons!68156 res!2881493)) b!7058117))

(assert (= (and d!2206064 res!2881494) b!7058119))

(declare-fun m!7777140 () Bool)

(assert (=> d!2206064 m!7777140))

(declare-fun m!7777142 () Bool)

(assert (=> b!7058117 m!7777142))

(declare-fun m!7777144 () Bool)

(assert (=> b!7058119 m!7777144))

(assert (=> d!2205858 d!2206064))

(assert (=> d!2205886 d!2205888))

(declare-fun d!2206066 () Bool)

(assert (=> d!2206066 (= (flatMap!2510 lt!2533953 lambda!421196) (dynLambda!27673 lambda!421196 lt!2533961))))

(assert (=> d!2206066 true))

(declare-fun _$13!4543 () Unit!161841)

(assert (=> d!2206066 (= (choose!53880 lt!2533953 lt!2533961 lambda!421196) _$13!4543)))

(declare-fun b_lambda!268967 () Bool)

(assert (=> (not b_lambda!268967) (not d!2206066)))

(declare-fun bs!1877490 () Bool)

(assert (= bs!1877490 d!2206066))

(assert (=> bs!1877490 m!7776444))

(assert (=> bs!1877490 m!7776752))

(assert (=> d!2205886 d!2206066))

(declare-fun b!7058132 () Bool)

(declare-fun lt!2534223 () Unit!161841)

(declare-fun Unit!161845 () Unit!161841)

(assert (=> b!7058132 (= lt!2534223 Unit!161845)))

(assert (=> b!7058132 false))

(declare-fun e!4243245 () Context!13160)

(declare-fun head!14370 (List!68280) Context!13160)

(assert (=> b!7058132 (= e!4243245 (head!14370 (toList!10925 lt!2533930)))))

(declare-fun b!7058133 () Bool)

(declare-fun e!4243246 () Context!13160)

(assert (=> b!7058133 (= e!4243246 e!4243245)))

(declare-fun c!1315232 () Bool)

(assert (=> b!7058133 (= c!1315232 (is-Cons!68156 (toList!10925 lt!2533930)))))

(declare-fun b!7058134 () Bool)

(assert (=> b!7058134 (= e!4243245 (getWitness!1658 (t!382059 (toList!10925 lt!2533930)) lambda!421193))))

(declare-fun d!2206068 () Bool)

(declare-fun e!4243244 () Bool)

(assert (=> d!2206068 e!4243244))

(declare-fun res!2881500 () Bool)

(assert (=> d!2206068 (=> (not res!2881500) (not e!4243244))))

(declare-fun lt!2534224 () Context!13160)

(assert (=> d!2206068 (= res!2881500 (dynLambda!27676 lambda!421193 lt!2534224))))

(assert (=> d!2206068 (= lt!2534224 e!4243246)))

(declare-fun c!1315233 () Bool)

(declare-fun e!4243247 () Bool)

(assert (=> d!2206068 (= c!1315233 e!4243247)))

(declare-fun res!2881499 () Bool)

(assert (=> d!2206068 (=> (not res!2881499) (not e!4243247))))

(assert (=> d!2206068 (= res!2881499 (is-Cons!68156 (toList!10925 lt!2533930)))))

(assert (=> d!2206068 (exists!3582 (toList!10925 lt!2533930) lambda!421193)))

(assert (=> d!2206068 (= (getWitness!1658 (toList!10925 lt!2533930) lambda!421193) lt!2534224)))

(declare-fun b!7058135 () Bool)

(assert (=> b!7058135 (= e!4243247 (dynLambda!27676 lambda!421193 (h!74604 (toList!10925 lt!2533930))))))

(declare-fun b!7058136 () Bool)

(assert (=> b!7058136 (= e!4243244 (contains!20486 (toList!10925 lt!2533930) lt!2534224))))

(declare-fun b!7058137 () Bool)

(assert (=> b!7058137 (= e!4243246 (h!74604 (toList!10925 lt!2533930)))))

(assert (= (and d!2206068 res!2881499) b!7058135))

(assert (= (and d!2206068 c!1315233) b!7058137))

(assert (= (and d!2206068 (not c!1315233)) b!7058133))

(assert (= (and b!7058133 c!1315232) b!7058134))

(assert (= (and b!7058133 (not c!1315232)) b!7058132))

(assert (= (and d!2206068 res!2881500) b!7058136))

(declare-fun b_lambda!268969 () Bool)

(assert (=> (not b_lambda!268969) (not d!2206068)))

(declare-fun b_lambda!268971 () Bool)

(assert (=> (not b_lambda!268971) (not b!7058135)))

(assert (=> b!7058136 m!7776398))

(declare-fun m!7777146 () Bool)

(assert (=> b!7058136 m!7777146))

(declare-fun m!7777148 () Bool)

(assert (=> b!7058134 m!7777148))

(declare-fun m!7777150 () Bool)

(assert (=> d!2206068 m!7777150))

(assert (=> d!2206068 m!7776398))

(declare-fun m!7777152 () Bool)

(assert (=> d!2206068 m!7777152))

(assert (=> b!7058132 m!7776398))

(declare-fun m!7777154 () Bool)

(assert (=> b!7058132 m!7777154))

(declare-fun m!7777156 () Bool)

(assert (=> b!7058135 m!7777156))

(assert (=> d!2205880 d!2206068))

(assert (=> d!2205880 d!2205878))

(declare-fun d!2206070 () Bool)

(declare-fun lt!2534227 () Bool)

(assert (=> d!2206070 (= lt!2534227 (exists!3582 (toList!10925 lt!2533930) lambda!421193))))

(declare-fun choose!53900 ((Set Context!13160) Int) Bool)

(assert (=> d!2206070 (= lt!2534227 (choose!53900 lt!2533930 lambda!421193))))

(assert (=> d!2206070 (= (exists!3584 lt!2533930 lambda!421193) lt!2534227)))

(declare-fun bs!1877491 () Bool)

(assert (= bs!1877491 d!2206070))

(assert (=> bs!1877491 m!7776398))

(assert (=> bs!1877491 m!7776398))

(assert (=> bs!1877491 m!7777152))

(declare-fun m!7777158 () Bool)

(assert (=> bs!1877491 m!7777158))

(assert (=> d!2205880 d!2206070))

(declare-fun d!2206072 () Bool)

(declare-fun c!1315236 () Bool)

(assert (=> d!2206072 (= c!1315236 (is-Nil!68154 lt!2534151))))

(declare-fun e!4243250 () (Set Regex!17584))

(assert (=> d!2206072 (= (content!13704 lt!2534151) e!4243250)))

(declare-fun b!7058142 () Bool)

(assert (=> b!7058142 (= e!4243250 (as set.empty (Set Regex!17584)))))

(declare-fun b!7058143 () Bool)

(assert (=> b!7058143 (= e!4243250 (set.union (set.insert (h!74602 lt!2534151) (as set.empty (Set Regex!17584))) (content!13704 (t!382057 lt!2534151))))))

(assert (= (and d!2206072 c!1315236) b!7058142))

(assert (= (and d!2206072 (not c!1315236)) b!7058143))

(declare-fun m!7777160 () Bool)

(assert (=> b!7058143 m!7777160))

(declare-fun m!7777162 () Bool)

(assert (=> b!7058143 m!7777162))

(assert (=> d!2205890 d!2206072))

(declare-fun d!2206074 () Bool)

(declare-fun c!1315237 () Bool)

(assert (=> d!2206074 (= c!1315237 (is-Nil!68154 (exprs!7080 lt!2533918)))))

(declare-fun e!4243251 () (Set Regex!17584))

(assert (=> d!2206074 (= (content!13704 (exprs!7080 lt!2533918)) e!4243251)))

(declare-fun b!7058144 () Bool)

(assert (=> b!7058144 (= e!4243251 (as set.empty (Set Regex!17584)))))

(declare-fun b!7058145 () Bool)

(assert (=> b!7058145 (= e!4243251 (set.union (set.insert (h!74602 (exprs!7080 lt!2533918)) (as set.empty (Set Regex!17584))) (content!13704 (t!382057 (exprs!7080 lt!2533918)))))))

(assert (= (and d!2206074 c!1315237) b!7058144))

(assert (= (and d!2206074 (not c!1315237)) b!7058145))

(declare-fun m!7777164 () Bool)

(assert (=> b!7058145 m!7777164))

(assert (=> b!7058145 m!7777110))

(assert (=> d!2205890 d!2206074))

(declare-fun d!2206076 () Bool)

(declare-fun c!1315238 () Bool)

(assert (=> d!2206076 (= c!1315238 (is-Nil!68154 (exprs!7080 ct2!306)))))

(declare-fun e!4243252 () (Set Regex!17584))

(assert (=> d!2206076 (= (content!13704 (exprs!7080 ct2!306)) e!4243252)))

(declare-fun b!7058146 () Bool)

(assert (=> b!7058146 (= e!4243252 (as set.empty (Set Regex!17584)))))

(declare-fun b!7058147 () Bool)

(assert (=> b!7058147 (= e!4243252 (set.union (set.insert (h!74602 (exprs!7080 ct2!306)) (as set.empty (Set Regex!17584))) (content!13704 (t!382057 (exprs!7080 ct2!306)))))))

(assert (= (and d!2206076 c!1315238) b!7058146))

(assert (= (and d!2206076 (not c!1315238)) b!7058147))

(declare-fun m!7777166 () Bool)

(assert (=> b!7058147 m!7777166))

(declare-fun m!7777168 () Bool)

(assert (=> b!7058147 m!7777168))

(assert (=> d!2205890 d!2206076))

(declare-fun d!2206078 () Bool)

(declare-fun lt!2534228 () Int)

(assert (=> d!2206078 (>= lt!2534228 0)))

(declare-fun e!4243253 () Int)

(assert (=> d!2206078 (= lt!2534228 e!4243253)))

(declare-fun c!1315239 () Bool)

(assert (=> d!2206078 (= c!1315239 (is-Cons!68154 (exprs!7080 (h!74604 (Cons!68156 lt!2533926 Nil!68156)))))))

(assert (=> d!2206078 (= (contextDepthTotal!520 (h!74604 (Cons!68156 lt!2533926 Nil!68156))) lt!2534228)))

(declare-fun b!7058148 () Bool)

(assert (=> b!7058148 (= e!4243253 (+ (regexDepthTotal!316 (h!74602 (exprs!7080 (h!74604 (Cons!68156 lt!2533926 Nil!68156))))) (contextDepthTotal!520 (Context!13161 (t!382057 (exprs!7080 (h!74604 (Cons!68156 lt!2533926 Nil!68156))))))))))

(declare-fun b!7058149 () Bool)

(assert (=> b!7058149 (= e!4243253 1)))

(assert (= (and d!2206078 c!1315239) b!7058148))

(assert (= (and d!2206078 (not c!1315239)) b!7058149))

(declare-fun m!7777170 () Bool)

(assert (=> b!7058148 m!7777170))

(declare-fun m!7777172 () Bool)

(assert (=> b!7058148 m!7777172))

(assert (=> b!7057897 d!2206078))

(declare-fun d!2206080 () Bool)

(declare-fun lt!2534229 () Int)

(assert (=> d!2206080 (>= lt!2534229 0)))

(declare-fun e!4243254 () Int)

(assert (=> d!2206080 (= lt!2534229 e!4243254)))

(declare-fun c!1315240 () Bool)

(assert (=> d!2206080 (= c!1315240 (is-Cons!68156 (t!382059 (Cons!68156 lt!2533926 Nil!68156))))))

(assert (=> d!2206080 (= (zipperDepthTotal!549 (t!382059 (Cons!68156 lt!2533926 Nil!68156))) lt!2534229)))

(declare-fun b!7058150 () Bool)

(assert (=> b!7058150 (= e!4243254 (+ (contextDepthTotal!520 (h!74604 (t!382059 (Cons!68156 lt!2533926 Nil!68156)))) (zipperDepthTotal!549 (t!382059 (t!382059 (Cons!68156 lt!2533926 Nil!68156))))))))

(declare-fun b!7058151 () Bool)

(assert (=> b!7058151 (= e!4243254 0)))

(assert (= (and d!2206080 c!1315240) b!7058150))

(assert (= (and d!2206080 (not c!1315240)) b!7058151))

(declare-fun m!7777174 () Bool)

(assert (=> b!7058150 m!7777174))

(declare-fun m!7777176 () Bool)

(assert (=> b!7058150 m!7777176))

(assert (=> b!7057897 d!2206080))

(declare-fun d!2206082 () Bool)

(assert (=> d!2206082 (= (isEmpty!39754 s!7408) (is-Nil!68155 s!7408))))

(assert (=> d!2205826 d!2206082))

(declare-fun d!2206084 () Bool)

(declare-fun res!2881505 () Bool)

(declare-fun e!4243259 () Bool)

(assert (=> d!2206084 (=> res!2881505 e!4243259)))

(assert (=> d!2206084 (= res!2881505 (is-Nil!68156 lt!2533923))))

(assert (=> d!2206084 (= (forall!16537 lt!2533923 lambda!421268) e!4243259)))

(declare-fun b!7058156 () Bool)

(declare-fun e!4243260 () Bool)

(assert (=> b!7058156 (= e!4243259 e!4243260)))

(declare-fun res!2881506 () Bool)

(assert (=> b!7058156 (=> (not res!2881506) (not e!4243260))))

(assert (=> b!7058156 (= res!2881506 (dynLambda!27676 lambda!421268 (h!74604 lt!2533923)))))

(declare-fun b!7058157 () Bool)

(assert (=> b!7058157 (= e!4243260 (forall!16537 (t!382059 lt!2533923) lambda!421268))))

(assert (= (and d!2206084 (not res!2881505)) b!7058156))

(assert (= (and b!7058156 res!2881506) b!7058157))

(declare-fun b_lambda!268973 () Bool)

(assert (=> (not b_lambda!268973) (not b!7058156)))

(declare-fun m!7777178 () Bool)

(assert (=> b!7058156 m!7777178))

(declare-fun m!7777180 () Bool)

(assert (=> b!7058157 m!7777180))

(assert (=> d!2205874 d!2206084))

(declare-fun b!7058158 () Bool)

(declare-fun e!4243266 () (Set Context!13160))

(declare-fun call!641245 () (Set Context!13160))

(assert (=> b!7058158 (= e!4243266 call!641245)))

(declare-fun c!1315242 () Bool)

(declare-fun call!641244 () List!68278)

(declare-fun c!1315244 () Bool)

(declare-fun bm!641235 () Bool)

(assert (=> bm!641235 (= call!641244 ($colon$colon!2630 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961)))) (ite (or c!1315244 c!1315242) (regTwo!35680 (h!74602 (exprs!7080 lt!2533961))) (h!74602 (exprs!7080 lt!2533961)))))))

(declare-fun b!7058159 () Bool)

(declare-fun e!4243261 () Bool)

(assert (=> b!7058159 (= c!1315244 e!4243261)))

(declare-fun res!2881507 () Bool)

(assert (=> b!7058159 (=> (not res!2881507) (not e!4243261))))

(assert (=> b!7058159 (= res!2881507 (is-Concat!26429 (h!74602 (exprs!7080 lt!2533961))))))

(declare-fun e!4243264 () (Set Context!13160))

(declare-fun e!4243265 () (Set Context!13160))

(assert (=> b!7058159 (= e!4243264 e!4243265)))

(declare-fun b!7058160 () Bool)

(assert (=> b!7058160 (= e!4243261 (nullable!7267 (regOne!35680 (h!74602 (exprs!7080 lt!2533961)))))))

(declare-fun b!7058161 () Bool)

(declare-fun e!4243263 () (Set Context!13160))

(assert (=> b!7058161 (= e!4243265 e!4243263)))

(assert (=> b!7058161 (= c!1315242 (is-Concat!26429 (h!74602 (exprs!7080 lt!2533961))))))

(declare-fun b!7058162 () Bool)

(assert (=> b!7058162 (= e!4243266 (as set.empty (Set Context!13160)))))

(declare-fun bm!641236 () Bool)

(declare-fun call!641242 () (Set Context!13160))

(declare-fun call!641241 () (Set Context!13160))

(assert (=> bm!641236 (= call!641242 call!641241)))

(declare-fun b!7058163 () Bool)

(declare-fun call!641243 () (Set Context!13160))

(assert (=> b!7058163 (= e!4243264 (set.union call!641241 call!641243))))

(declare-fun b!7058164 () Bool)

(declare-fun c!1315243 () Bool)

(assert (=> b!7058164 (= c!1315243 (is-Star!17584 (h!74602 (exprs!7080 lt!2533961))))))

(assert (=> b!7058164 (= e!4243263 e!4243266)))

(declare-fun bm!641237 () Bool)

(assert (=> bm!641237 (= call!641245 call!641242)))

(declare-fun b!7058165 () Bool)

(declare-fun e!4243262 () (Set Context!13160))

(assert (=> b!7058165 (= e!4243262 (set.insert (Context!13161 (t!382057 (exprs!7080 lt!2533961))) (as set.empty (Set Context!13160))))))

(declare-fun c!1315245 () Bool)

(declare-fun call!641240 () List!68278)

(declare-fun bm!641239 () Bool)

(assert (=> bm!641239 (= call!641241 (derivationStepZipperDown!2218 (ite c!1315245 (regOne!35681 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315244 (regTwo!35680 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315242 (regOne!35680 (h!74602 (exprs!7080 lt!2533961))) (reg!17913 (h!74602 (exprs!7080 lt!2533961)))))) (ite (or c!1315245 c!1315244) (Context!13161 (t!382057 (exprs!7080 lt!2533961))) (Context!13161 call!641240)) (h!74603 s!7408)))))

(declare-fun b!7058166 () Bool)

(assert (=> b!7058166 (= e!4243262 e!4243264)))

(assert (=> b!7058166 (= c!1315245 (is-Union!17584 (h!74602 (exprs!7080 lt!2533961))))))

(declare-fun bm!641240 () Bool)

(assert (=> bm!641240 (= call!641240 call!641244)))

(declare-fun b!7058167 () Bool)

(assert (=> b!7058167 (= e!4243263 call!641245)))

(declare-fun b!7058168 () Bool)

(assert (=> b!7058168 (= e!4243265 (set.union call!641243 call!641242))))

(declare-fun d!2206086 () Bool)

(declare-fun c!1315241 () Bool)

(assert (=> d!2206086 (= c!1315241 (and (is-ElementMatch!17584 (h!74602 (exprs!7080 lt!2533961))) (= (c!1315081 (h!74602 (exprs!7080 lt!2533961))) (h!74603 s!7408))))))

(assert (=> d!2206086 (= (derivationStepZipperDown!2218 (h!74602 (exprs!7080 lt!2533961)) (Context!13161 (t!382057 (exprs!7080 lt!2533961))) (h!74603 s!7408)) e!4243262)))

(declare-fun bm!641238 () Bool)

(assert (=> bm!641238 (= call!641243 (derivationStepZipperDown!2218 (ite c!1315245 (regTwo!35681 (h!74602 (exprs!7080 lt!2533961))) (regOne!35680 (h!74602 (exprs!7080 lt!2533961)))) (ite c!1315245 (Context!13161 (t!382057 (exprs!7080 lt!2533961))) (Context!13161 call!641244)) (h!74603 s!7408)))))

(assert (= (and d!2206086 c!1315241) b!7058165))

(assert (= (and d!2206086 (not c!1315241)) b!7058166))

(assert (= (and b!7058166 c!1315245) b!7058163))

(assert (= (and b!7058166 (not c!1315245)) b!7058159))

(assert (= (and b!7058159 res!2881507) b!7058160))

(assert (= (and b!7058159 c!1315244) b!7058168))

(assert (= (and b!7058159 (not c!1315244)) b!7058161))

(assert (= (and b!7058161 c!1315242) b!7058167))

(assert (= (and b!7058161 (not c!1315242)) b!7058164))

(assert (= (and b!7058164 c!1315243) b!7058158))

(assert (= (and b!7058164 (not c!1315243)) b!7058162))

(assert (= (or b!7058167 b!7058158) bm!641240))

(assert (= (or b!7058167 b!7058158) bm!641237))

(assert (= (or b!7058168 bm!641237) bm!641236))

(assert (= (or b!7058168 bm!641240) bm!641235))

(assert (= (or b!7058163 bm!641236) bm!641239))

(assert (= (or b!7058163 b!7058168) bm!641238))

(declare-fun m!7777182 () Bool)

(assert (=> bm!641239 m!7777182))

(declare-fun m!7777184 () Bool)

(assert (=> bm!641238 m!7777184))

(declare-fun m!7777186 () Bool)

(assert (=> bm!641235 m!7777186))

(declare-fun m!7777188 () Bool)

(assert (=> b!7058165 m!7777188))

(declare-fun m!7777190 () Bool)

(assert (=> b!7058160 m!7777190))

(assert (=> bm!641183 d!2206086))

(declare-fun d!2206088 () Bool)

(assert (=> d!2206088 (= (isEmpty!39754 (t!382058 s!7408)) (is-Nil!68155 (t!382058 s!7408)))))

(assert (=> d!2205898 d!2206088))

(declare-fun b!7058169 () Bool)

(declare-fun e!4243272 () (Set Context!13160))

(declare-fun call!641251 () (Set Context!13160))

(assert (=> b!7058169 (= e!4243272 call!641251)))

(declare-fun bm!641241 () Bool)

(declare-fun call!641250 () List!68278)

(declare-fun c!1315249 () Bool)

(declare-fun c!1315247 () Bool)

(assert (=> bm!641241 (= call!641250 ($colon$colon!2630 (exprs!7080 (ite c!1315151 lt!2533961 (Context!13161 call!641205))) (ite (or c!1315249 c!1315247) (regTwo!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))))))

(declare-fun b!7058170 () Bool)

(declare-fun e!4243267 () Bool)

(assert (=> b!7058170 (= c!1315249 e!4243267)))

(declare-fun res!2881508 () Bool)

(assert (=> b!7058170 (=> (not res!2881508) (not e!4243267))))

(assert (=> b!7058170 (= res!2881508 (is-Concat!26429 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))))))

(declare-fun e!4243270 () (Set Context!13160))

(declare-fun e!4243271 () (Set Context!13160))

(assert (=> b!7058170 (= e!4243270 e!4243271)))

(declare-fun b!7058171 () Bool)

(assert (=> b!7058171 (= e!4243267 (nullable!7267 (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))))))

(declare-fun b!7058172 () Bool)

(declare-fun e!4243269 () (Set Context!13160))

(assert (=> b!7058172 (= e!4243271 e!4243269)))

(assert (=> b!7058172 (= c!1315247 (is-Concat!26429 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))))))

(declare-fun b!7058173 () Bool)

(assert (=> b!7058173 (= e!4243272 (as set.empty (Set Context!13160)))))

(declare-fun bm!641242 () Bool)

(declare-fun call!641248 () (Set Context!13160))

(declare-fun call!641247 () (Set Context!13160))

(assert (=> bm!641242 (= call!641248 call!641247)))

(declare-fun b!7058174 () Bool)

(declare-fun call!641249 () (Set Context!13160))

(assert (=> b!7058174 (= e!4243270 (set.union call!641247 call!641249))))

(declare-fun b!7058175 () Bool)

(declare-fun c!1315248 () Bool)

(assert (=> b!7058175 (= c!1315248 (is-Star!17584 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))))))

(assert (=> b!7058175 (= e!4243269 e!4243272)))

(declare-fun bm!641243 () Bool)

(assert (=> bm!641243 (= call!641251 call!641248)))

(declare-fun e!4243268 () (Set Context!13160))

(declare-fun b!7058176 () Bool)

(assert (=> b!7058176 (= e!4243268 (set.insert (ite c!1315151 lt!2533961 (Context!13161 call!641205)) (as set.empty (Set Context!13160))))))

(declare-fun call!641246 () List!68278)

(declare-fun bm!641245 () Bool)

(declare-fun c!1315250 () Bool)

(assert (=> bm!641245 (= call!641247 (derivationStepZipperDown!2218 (ite c!1315250 (regOne!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315249 (regTwo!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315247 (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (reg!17913 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))))) (ite (or c!1315250 c!1315249) (ite c!1315151 lt!2533961 (Context!13161 call!641205)) (Context!13161 call!641246)) (h!74603 s!7408)))))

(declare-fun b!7058177 () Bool)

(assert (=> b!7058177 (= e!4243268 e!4243270)))

(assert (=> b!7058177 (= c!1315250 (is-Union!17584 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))))))

(declare-fun bm!641246 () Bool)

(assert (=> bm!641246 (= call!641246 call!641250)))

(declare-fun b!7058178 () Bool)

(assert (=> b!7058178 (= e!4243269 call!641251)))

(declare-fun b!7058179 () Bool)

(assert (=> b!7058179 (= e!4243271 (set.union call!641249 call!641248))))

(declare-fun c!1315246 () Bool)

(declare-fun d!2206090 () Bool)

(assert (=> d!2206090 (= c!1315246 (and (is-ElementMatch!17584 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (= (c!1315081 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (h!74603 s!7408))))))

(assert (=> d!2206090 (= (derivationStepZipperDown!2218 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))) (ite c!1315151 lt!2533961 (Context!13161 call!641205)) (h!74603 s!7408)) e!4243268)))

(declare-fun bm!641244 () Bool)

(assert (=> bm!641244 (= call!641249 (derivationStepZipperDown!2218 (ite c!1315250 (regTwo!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))) (ite c!1315250 (ite c!1315151 lt!2533961 (Context!13161 call!641205)) (Context!13161 call!641250)) (h!74603 s!7408)))))

(assert (= (and d!2206090 c!1315246) b!7058176))

(assert (= (and d!2206090 (not c!1315246)) b!7058177))

(assert (= (and b!7058177 c!1315250) b!7058174))

(assert (= (and b!7058177 (not c!1315250)) b!7058170))

(assert (= (and b!7058170 res!2881508) b!7058171))

(assert (= (and b!7058170 c!1315249) b!7058179))

(assert (= (and b!7058170 (not c!1315249)) b!7058172))

(assert (= (and b!7058172 c!1315247) b!7058178))

(assert (= (and b!7058172 (not c!1315247)) b!7058175))

(assert (= (and b!7058175 c!1315248) b!7058169))

(assert (= (and b!7058175 (not c!1315248)) b!7058173))

(assert (= (or b!7058178 b!7058169) bm!641246))

(assert (= (or b!7058178 b!7058169) bm!641243))

(assert (= (or b!7058179 bm!641243) bm!641242))

(assert (= (or b!7058179 bm!641246) bm!641241))

(assert (= (or b!7058174 bm!641242) bm!641245))

(assert (= (or b!7058174 b!7058179) bm!641244))

(declare-fun m!7777192 () Bool)

(assert (=> bm!641245 m!7777192))

(declare-fun m!7777194 () Bool)

(assert (=> bm!641244 m!7777194))

(declare-fun m!7777196 () Bool)

(assert (=> bm!641241 m!7777196))

(declare-fun m!7777198 () Bool)

(assert (=> b!7058176 m!7777198))

(declare-fun m!7777200 () Bool)

(assert (=> b!7058171 m!7777200))

(assert (=> bm!641199 d!2206090))

(declare-fun d!2206092 () Bool)

(declare-fun c!1315251 () Bool)

(assert (=> d!2206092 (= c!1315251 (isEmpty!39754 (tail!13726 (t!382058 s!7408))))))

(declare-fun e!4243273 () Bool)

(assert (=> d!2206092 (= (matchZipper!3124 (derivationStepZipper!3034 lt!2533946 (head!14368 (t!382058 s!7408))) (tail!13726 (t!382058 s!7408))) e!4243273)))

(declare-fun b!7058180 () Bool)

(assert (=> b!7058180 (= e!4243273 (nullableZipper!2667 (derivationStepZipper!3034 lt!2533946 (head!14368 (t!382058 s!7408)))))))

(declare-fun b!7058181 () Bool)

(assert (=> b!7058181 (= e!4243273 (matchZipper!3124 (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533946 (head!14368 (t!382058 s!7408))) (head!14368 (tail!13726 (t!382058 s!7408)))) (tail!13726 (tail!13726 (t!382058 s!7408)))))))

(assert (= (and d!2206092 c!1315251) b!7058180))

(assert (= (and d!2206092 (not c!1315251)) b!7058181))

(assert (=> d!2206092 m!7776696))

(assert (=> d!2206092 m!7777122))

(assert (=> b!7058180 m!7776694))

(declare-fun m!7777202 () Bool)

(assert (=> b!7058180 m!7777202))

(assert (=> b!7058181 m!7776696))

(assert (=> b!7058181 m!7777126))

(assert (=> b!7058181 m!7776694))

(assert (=> b!7058181 m!7777126))

(declare-fun m!7777204 () Bool)

(assert (=> b!7058181 m!7777204))

(assert (=> b!7058181 m!7776696))

(assert (=> b!7058181 m!7777130))

(assert (=> b!7058181 m!7777204))

(assert (=> b!7058181 m!7777130))

(declare-fun m!7777206 () Bool)

(assert (=> b!7058181 m!7777206))

(assert (=> b!7057827 d!2206092))

(declare-fun bs!1877492 () Bool)

(declare-fun d!2206094 () Bool)

(assert (= bs!1877492 (and d!2206094 b!7057661)))

(declare-fun lambda!421299 () Int)

(assert (=> bs!1877492 (= (= (head!14368 (t!382058 s!7408)) (h!74603 s!7408)) (= lambda!421299 lambda!421196))))

(declare-fun bs!1877493 () Bool)

(assert (= bs!1877493 (and d!2206094 d!2205882)))

(assert (=> bs!1877493 (= (= (head!14368 (t!382058 s!7408)) (h!74603 s!7408)) (= lambda!421299 lambda!421274))))

(declare-fun bs!1877494 () Bool)

(assert (= bs!1877494 (and d!2206094 d!2205914)))

(assert (=> bs!1877494 (= (= (head!14368 (t!382058 s!7408)) (h!74603 s!7408)) (= lambda!421299 lambda!421276))))

(declare-fun bs!1877495 () Bool)

(assert (= bs!1877495 (and d!2206094 d!2206056)))

(assert (=> bs!1877495 (= lambda!421299 lambda!421298)))

(assert (=> d!2206094 true))

(assert (=> d!2206094 (= (derivationStepZipper!3034 lt!2533946 (head!14368 (t!382058 s!7408))) (flatMap!2510 lt!2533946 lambda!421299))))

(declare-fun bs!1877496 () Bool)

(assert (= bs!1877496 d!2206094))

(declare-fun m!7777208 () Bool)

(assert (=> bs!1877496 m!7777208))

(assert (=> b!7057827 d!2206094))

(assert (=> b!7057827 d!2206058))

(assert (=> b!7057827 d!2206060))

(declare-fun bs!1877497 () Bool)

(declare-fun d!2206096 () Bool)

(assert (= bs!1877497 (and d!2206096 b!7057676)))

(declare-fun lambda!421302 () Int)

(assert (=> bs!1877497 (not (= lambda!421302 lambda!421193))))

(declare-fun bs!1877498 () Bool)

(assert (= bs!1877498 (and d!2206096 d!2205874)))

(assert (=> bs!1877498 (not (= lambda!421302 lambda!421268))))

(declare-fun bs!1877499 () Bool)

(assert (= bs!1877499 (and d!2206096 d!2205876)))

(assert (=> bs!1877499 (not (= lambda!421302 lambda!421271))))

(assert (=> d!2206096 (= (nullableZipper!2667 lt!2533938) (exists!3584 lt!2533938 lambda!421302))))

(declare-fun bs!1877500 () Bool)

(assert (= bs!1877500 d!2206096))

(declare-fun m!7777210 () Bool)

(assert (=> bs!1877500 m!7777210))

(assert (=> b!7057856 d!2206096))

(declare-fun d!2206098 () Bool)

(declare-fun c!1315254 () Bool)

(assert (=> d!2206098 (= c!1315254 (isEmpty!39754 (tail!13726 s!7408)))))

(declare-fun e!4243274 () Bool)

(assert (=> d!2206098 (= (matchZipper!3124 (derivationStepZipper!3034 lt!2533930 (head!14368 s!7408)) (tail!13726 s!7408)) e!4243274)))

(declare-fun b!7058182 () Bool)

(assert (=> b!7058182 (= e!4243274 (nullableZipper!2667 (derivationStepZipper!3034 lt!2533930 (head!14368 s!7408))))))

(declare-fun b!7058183 () Bool)

(assert (=> b!7058183 (= e!4243274 (matchZipper!3124 (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533930 (head!14368 s!7408)) (head!14368 (tail!13726 s!7408))) (tail!13726 (tail!13726 s!7408))))))

(assert (= (and d!2206098 c!1315254) b!7058182))

(assert (= (and d!2206098 (not c!1315254)) b!7058183))

(assert (=> d!2206098 m!7776606))

(declare-fun m!7777212 () Bool)

(assert (=> d!2206098 m!7777212))

(assert (=> b!7058182 m!7776604))

(declare-fun m!7777214 () Bool)

(assert (=> b!7058182 m!7777214))

(assert (=> b!7058183 m!7776606))

(declare-fun m!7777216 () Bool)

(assert (=> b!7058183 m!7777216))

(assert (=> b!7058183 m!7776604))

(assert (=> b!7058183 m!7777216))

(declare-fun m!7777218 () Bool)

(assert (=> b!7058183 m!7777218))

(assert (=> b!7058183 m!7776606))

(declare-fun m!7777220 () Bool)

(assert (=> b!7058183 m!7777220))

(assert (=> b!7058183 m!7777218))

(assert (=> b!7058183 m!7777220))

(declare-fun m!7777222 () Bool)

(assert (=> b!7058183 m!7777222))

(assert (=> b!7057772 d!2206098))

(declare-fun bs!1877501 () Bool)

(declare-fun d!2206100 () Bool)

(assert (= bs!1877501 (and d!2206100 d!2206056)))

(declare-fun lambda!421303 () Int)

(assert (=> bs!1877501 (= (= (head!14368 s!7408) (head!14368 (t!382058 s!7408))) (= lambda!421303 lambda!421298))))

(declare-fun bs!1877502 () Bool)

(assert (= bs!1877502 (and d!2206100 d!2205914)))

(assert (=> bs!1877502 (= (= (head!14368 s!7408) (h!74603 s!7408)) (= lambda!421303 lambda!421276))))

(declare-fun bs!1877503 () Bool)

(assert (= bs!1877503 (and d!2206100 d!2206094)))

(assert (=> bs!1877503 (= (= (head!14368 s!7408) (head!14368 (t!382058 s!7408))) (= lambda!421303 lambda!421299))))

(declare-fun bs!1877504 () Bool)

(assert (= bs!1877504 (and d!2206100 b!7057661)))

(assert (=> bs!1877504 (= (= (head!14368 s!7408) (h!74603 s!7408)) (= lambda!421303 lambda!421196))))

(declare-fun bs!1877505 () Bool)

(assert (= bs!1877505 (and d!2206100 d!2205882)))

(assert (=> bs!1877505 (= (= (head!14368 s!7408) (h!74603 s!7408)) (= lambda!421303 lambda!421274))))

(assert (=> d!2206100 true))

(assert (=> d!2206100 (= (derivationStepZipper!3034 lt!2533930 (head!14368 s!7408)) (flatMap!2510 lt!2533930 lambda!421303))))

(declare-fun bs!1877506 () Bool)

(assert (= bs!1877506 d!2206100))

(declare-fun m!7777224 () Bool)

(assert (=> bs!1877506 m!7777224))

(assert (=> b!7057772 d!2206100))

(declare-fun d!2206102 () Bool)

(assert (=> d!2206102 (= (head!14368 s!7408) (h!74603 s!7408))))

(assert (=> b!7057772 d!2206102))

(declare-fun d!2206104 () Bool)

(assert (=> d!2206104 (= (tail!13726 s!7408) (t!382058 s!7408))))

(assert (=> b!7057772 d!2206104))

(declare-fun d!2206106 () Bool)

(declare-fun res!2881513 () Bool)

(declare-fun e!4243279 () Bool)

(assert (=> d!2206106 (=> res!2881513 e!4243279)))

(assert (=> d!2206106 (= res!2881513 (is-Nil!68154 (++!15667 (exprs!7080 lt!2533918) (exprs!7080 ct2!306))))))

(assert (=> d!2206106 (= (forall!16536 (++!15667 (exprs!7080 lt!2533918) (exprs!7080 ct2!306)) lambda!421195) e!4243279)))

(declare-fun b!7058188 () Bool)

(declare-fun e!4243280 () Bool)

(assert (=> b!7058188 (= e!4243279 e!4243280)))

(declare-fun res!2881514 () Bool)

(assert (=> b!7058188 (=> (not res!2881514) (not e!4243280))))

(declare-fun dynLambda!27681 (Int Regex!17584) Bool)

(assert (=> b!7058188 (= res!2881514 (dynLambda!27681 lambda!421195 (h!74602 (++!15667 (exprs!7080 lt!2533918) (exprs!7080 ct2!306)))))))

(declare-fun b!7058189 () Bool)

(assert (=> b!7058189 (= e!4243280 (forall!16536 (t!382057 (++!15667 (exprs!7080 lt!2533918) (exprs!7080 ct2!306))) lambda!421195))))

(assert (= (and d!2206106 (not res!2881513)) b!7058188))

(assert (= (and b!7058188 res!2881514) b!7058189))

(declare-fun b_lambda!268975 () Bool)

(assert (=> (not b_lambda!268975) (not b!7058188)))

(declare-fun m!7777226 () Bool)

(assert (=> b!7058188 m!7777226))

(declare-fun m!7777228 () Bool)

(assert (=> b!7058189 m!7777228))

(assert (=> d!2205864 d!2206106))

(assert (=> d!2205864 d!2205890))

(declare-fun d!2206108 () Bool)

(assert (=> d!2206108 (forall!16536 (++!15667 (exprs!7080 lt!2533918) (exprs!7080 ct2!306)) lambda!421195)))

(assert (=> d!2206108 true))

(declare-fun _$78!655 () Unit!161841)

(assert (=> d!2206108 (= (choose!53883 (exprs!7080 lt!2533918) (exprs!7080 ct2!306) lambda!421195) _$78!655)))

(declare-fun bs!1877507 () Bool)

(assert (= bs!1877507 d!2206108))

(assert (=> bs!1877507 m!7776454))

(assert (=> bs!1877507 m!7776454))

(assert (=> bs!1877507 m!7776700))

(assert (=> d!2205864 d!2206108))

(declare-fun d!2206110 () Bool)

(declare-fun res!2881515 () Bool)

(declare-fun e!4243281 () Bool)

(assert (=> d!2206110 (=> res!2881515 e!4243281)))

(assert (=> d!2206110 (= res!2881515 (is-Nil!68154 (exprs!7080 lt!2533918)))))

(assert (=> d!2206110 (= (forall!16536 (exprs!7080 lt!2533918) lambda!421195) e!4243281)))

(declare-fun b!7058190 () Bool)

(declare-fun e!4243282 () Bool)

(assert (=> b!7058190 (= e!4243281 e!4243282)))

(declare-fun res!2881516 () Bool)

(assert (=> b!7058190 (=> (not res!2881516) (not e!4243282))))

(assert (=> b!7058190 (= res!2881516 (dynLambda!27681 lambda!421195 (h!74602 (exprs!7080 lt!2533918))))))

(declare-fun b!7058191 () Bool)

(assert (=> b!7058191 (= e!4243282 (forall!16536 (t!382057 (exprs!7080 lt!2533918)) lambda!421195))))

(assert (= (and d!2206110 (not res!2881515)) b!7058190))

(assert (= (and b!7058190 res!2881516) b!7058191))

(declare-fun b_lambda!268977 () Bool)

(assert (=> (not b_lambda!268977) (not b!7058190)))

(declare-fun m!7777230 () Bool)

(assert (=> b!7058190 m!7777230))

(declare-fun m!7777232 () Bool)

(assert (=> b!7058191 m!7777232))

(assert (=> d!2205864 d!2206110))

(assert (=> d!2205900 d!2206088))

(declare-fun d!2206112 () Bool)

(declare-fun c!1315257 () Bool)

(assert (=> d!2206112 (= c!1315257 (is-Nil!68156 lt!2534123))))

(declare-fun e!4243285 () (Set Context!13160))

(assert (=> d!2206112 (= (content!13703 lt!2534123) e!4243285)))

(declare-fun b!7058196 () Bool)

(assert (=> b!7058196 (= e!4243285 (as set.empty (Set Context!13160)))))

(declare-fun b!7058197 () Bool)

(assert (=> b!7058197 (= e!4243285 (set.union (set.insert (h!74604 lt!2534123) (as set.empty (Set Context!13160))) (content!13703 (t!382059 lt!2534123))))))

(assert (= (and d!2206112 c!1315257) b!7058196))

(assert (= (and d!2206112 (not c!1315257)) b!7058197))

(declare-fun m!7777234 () Bool)

(assert (=> b!7058197 m!7777234))

(declare-fun m!7777236 () Bool)

(assert (=> b!7058197 m!7777236))

(assert (=> b!7057796 d!2206112))

(declare-fun d!2206114 () Bool)

(assert (=> d!2206114 (= (nullable!7267 (h!74602 (exprs!7080 lt!2533928))) (nullableFct!2783 (h!74602 (exprs!7080 lt!2533928))))))

(declare-fun bs!1877508 () Bool)

(assert (= bs!1877508 d!2206114))

(declare-fun m!7777238 () Bool)

(assert (=> bs!1877508 m!7777238))

(assert (=> b!7057900 d!2206114))

(declare-fun d!2206116 () Bool)

(assert (=> d!2206116 (= (nullable!7267 (h!74602 (exprs!7080 lt!2533926))) (nullableFct!2783 (h!74602 (exprs!7080 lt!2533926))))))

(declare-fun bs!1877509 () Bool)

(assert (= bs!1877509 d!2206116))

(declare-fun m!7777240 () Bool)

(assert (=> bs!1877509 m!7777240))

(assert (=> b!7057784 d!2206116))

(declare-fun d!2206118 () Bool)

(declare-fun c!1315258 () Bool)

(assert (=> d!2206118 (= c!1315258 (isEmpty!39754 (tail!13726 (t!382058 s!7408))))))

(declare-fun e!4243286 () Bool)

(assert (=> d!2206118 (= (matchZipper!3124 (derivationStepZipper!3034 lt!2533929 (head!14368 (t!382058 s!7408))) (tail!13726 (t!382058 s!7408))) e!4243286)))

(declare-fun b!7058198 () Bool)

(assert (=> b!7058198 (= e!4243286 (nullableZipper!2667 (derivationStepZipper!3034 lt!2533929 (head!14368 (t!382058 s!7408)))))))

(declare-fun b!7058199 () Bool)

(assert (=> b!7058199 (= e!4243286 (matchZipper!3124 (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533929 (head!14368 (t!382058 s!7408))) (head!14368 (tail!13726 (t!382058 s!7408)))) (tail!13726 (tail!13726 (t!382058 s!7408)))))))

(assert (= (and d!2206118 c!1315258) b!7058198))

(assert (= (and d!2206118 (not c!1315258)) b!7058199))

(assert (=> d!2206118 m!7776696))

(assert (=> d!2206118 m!7777122))

(assert (=> b!7058198 m!7776796))

(declare-fun m!7777242 () Bool)

(assert (=> b!7058198 m!7777242))

(assert (=> b!7058199 m!7776696))

(assert (=> b!7058199 m!7777126))

(assert (=> b!7058199 m!7776796))

(assert (=> b!7058199 m!7777126))

(declare-fun m!7777244 () Bool)

(assert (=> b!7058199 m!7777244))

(assert (=> b!7058199 m!7776696))

(assert (=> b!7058199 m!7777130))

(assert (=> b!7058199 m!7777244))

(assert (=> b!7058199 m!7777130))

(declare-fun m!7777246 () Bool)

(assert (=> b!7058199 m!7777246))

(assert (=> b!7057861 d!2206118))

(declare-fun bs!1877510 () Bool)

(declare-fun d!2206120 () Bool)

(assert (= bs!1877510 (and d!2206120 d!2206056)))

(declare-fun lambda!421304 () Int)

(assert (=> bs!1877510 (= lambda!421304 lambda!421298)))

(declare-fun bs!1877511 () Bool)

(assert (= bs!1877511 (and d!2206120 d!2205914)))

(assert (=> bs!1877511 (= (= (head!14368 (t!382058 s!7408)) (h!74603 s!7408)) (= lambda!421304 lambda!421276))))

(declare-fun bs!1877512 () Bool)

(assert (= bs!1877512 (and d!2206120 d!2206094)))

(assert (=> bs!1877512 (= lambda!421304 lambda!421299)))

(declare-fun bs!1877513 () Bool)

(assert (= bs!1877513 (and d!2206120 d!2206100)))

(assert (=> bs!1877513 (= (= (head!14368 (t!382058 s!7408)) (head!14368 s!7408)) (= lambda!421304 lambda!421303))))

(declare-fun bs!1877514 () Bool)

(assert (= bs!1877514 (and d!2206120 b!7057661)))

(assert (=> bs!1877514 (= (= (head!14368 (t!382058 s!7408)) (h!74603 s!7408)) (= lambda!421304 lambda!421196))))

(declare-fun bs!1877515 () Bool)

(assert (= bs!1877515 (and d!2206120 d!2205882)))

(assert (=> bs!1877515 (= (= (head!14368 (t!382058 s!7408)) (h!74603 s!7408)) (= lambda!421304 lambda!421274))))

(assert (=> d!2206120 true))

(assert (=> d!2206120 (= (derivationStepZipper!3034 lt!2533929 (head!14368 (t!382058 s!7408))) (flatMap!2510 lt!2533929 lambda!421304))))

(declare-fun bs!1877516 () Bool)

(assert (= bs!1877516 d!2206120))

(declare-fun m!7777248 () Bool)

(assert (=> bs!1877516 m!7777248))

(assert (=> b!7057861 d!2206120))

(assert (=> b!7057861 d!2206058))

(assert (=> b!7057861 d!2206060))

(declare-fun b!7058200 () Bool)

(declare-fun e!4243287 () (Set Context!13160))

(declare-fun call!641252 () (Set Context!13160))

(assert (=> b!7058200 (= e!4243287 call!641252)))

(declare-fun b!7058201 () Bool)

(declare-fun e!4243288 () Bool)

(assert (=> b!7058201 (= e!4243288 (nullable!7267 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961)))))))))

(declare-fun b!7058202 () Bool)

(declare-fun e!4243289 () (Set Context!13160))

(assert (=> b!7058202 (= e!4243289 (set.union call!641252 (derivationStepZipperUp!2168 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961)))))) (h!74603 s!7408))))))

(declare-fun b!7058203 () Bool)

(assert (=> b!7058203 (= e!4243287 (as set.empty (Set Context!13160)))))

(declare-fun b!7058204 () Bool)

(assert (=> b!7058204 (= e!4243289 e!4243287)))

(declare-fun c!1315260 () Bool)

(assert (=> b!7058204 (= c!1315260 (is-Cons!68154 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961))))))))

(declare-fun d!2206122 () Bool)

(declare-fun c!1315259 () Bool)

(assert (=> d!2206122 (= c!1315259 e!4243288)))

(declare-fun res!2881517 () Bool)

(assert (=> d!2206122 (=> (not res!2881517) (not e!4243288))))

(assert (=> d!2206122 (= res!2881517 (is-Cons!68154 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961))))))))

(assert (=> d!2206122 (= (derivationStepZipperUp!2168 (Context!13161 (t!382057 (exprs!7080 lt!2533961))) (h!74603 s!7408)) e!4243289)))

(declare-fun bm!641247 () Bool)

(assert (=> bm!641247 (= call!641252 (derivationStepZipperDown!2218 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961))))) (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961)))))) (h!74603 s!7408)))))

(assert (= (and d!2206122 res!2881517) b!7058201))

(assert (= (and d!2206122 c!1315259) b!7058202))

(assert (= (and d!2206122 (not c!1315259)) b!7058204))

(assert (= (and b!7058204 c!1315260) b!7058200))

(assert (= (and b!7058204 (not c!1315260)) b!7058203))

(assert (= (or b!7058202 b!7058200) bm!641247))

(declare-fun m!7777250 () Bool)

(assert (=> b!7058201 m!7777250))

(declare-fun m!7777252 () Bool)

(assert (=> b!7058202 m!7777252))

(declare-fun m!7777254 () Bool)

(assert (=> bm!641247 m!7777254))

(assert (=> b!7057842 d!2206122))

(declare-fun d!2206124 () Bool)

(assert (=> d!2206124 true))

(declare-fun setRes!49936 () Bool)

(assert (=> d!2206124 setRes!49936))

(declare-fun condSetEmpty!49936 () Bool)

(declare-fun res!2881520 () (Set Context!13160))

(assert (=> d!2206124 (= condSetEmpty!49936 (= res!2881520 (as set.empty (Set Context!13160))))))

(assert (=> d!2206124 (= (choose!53885 lt!2533927 lambda!421196) res!2881520)))

(declare-fun setIsEmpty!49936 () Bool)

(assert (=> setIsEmpty!49936 setRes!49936))

(declare-fun e!4243292 () Bool)

(declare-fun setElem!49936 () Context!13160)

(declare-fun tp!1940597 () Bool)

(declare-fun setNonEmpty!49936 () Bool)

(assert (=> setNonEmpty!49936 (= setRes!49936 (and tp!1940597 (inv!86820 setElem!49936) e!4243292))))

(declare-fun setRest!49936 () (Set Context!13160))

(assert (=> setNonEmpty!49936 (= res!2881520 (set.union (set.insert setElem!49936 (as set.empty (Set Context!13160))) setRest!49936))))

(declare-fun b!7058207 () Bool)

(declare-fun tp!1940598 () Bool)

(assert (=> b!7058207 (= e!4243292 tp!1940598)))

(assert (= (and d!2206124 condSetEmpty!49936) setIsEmpty!49936))

(assert (= (and d!2206124 (not condSetEmpty!49936)) setNonEmpty!49936))

(assert (= setNonEmpty!49936 b!7058207))

(declare-fun m!7777256 () Bool)

(assert (=> setNonEmpty!49936 m!7777256))

(assert (=> d!2205848 d!2206124))

(declare-fun d!2206126 () Bool)

(assert (=> d!2206126 true))

(declare-fun setRes!49937 () Bool)

(assert (=> d!2206126 setRes!49937))

(declare-fun condSetEmpty!49937 () Bool)

(declare-fun res!2881521 () (Set Context!13160))

(assert (=> d!2206126 (= condSetEmpty!49937 (= res!2881521 (as set.empty (Set Context!13160))))))

(assert (=> d!2206126 (= (choose!53885 lt!2533953 lambda!421196) res!2881521)))

(declare-fun setIsEmpty!49937 () Bool)

(assert (=> setIsEmpty!49937 setRes!49937))

(declare-fun tp!1940599 () Bool)

(declare-fun e!4243293 () Bool)

(declare-fun setElem!49937 () Context!13160)

(declare-fun setNonEmpty!49937 () Bool)

(assert (=> setNonEmpty!49937 (= setRes!49937 (and tp!1940599 (inv!86820 setElem!49937) e!4243293))))

(declare-fun setRest!49937 () (Set Context!13160))

(assert (=> setNonEmpty!49937 (= res!2881521 (set.union (set.insert setElem!49937 (as set.empty (Set Context!13160))) setRest!49937))))

(declare-fun b!7058208 () Bool)

(declare-fun tp!1940600 () Bool)

(assert (=> b!7058208 (= e!4243293 tp!1940600)))

(assert (= (and d!2206126 condSetEmpty!49937) setIsEmpty!49937))

(assert (= (and d!2206126 (not condSetEmpty!49937)) setNonEmpty!49937))

(assert (= setNonEmpty!49937 b!7058208))

(declare-fun m!7777258 () Bool)

(assert (=> setNonEmpty!49937 m!7777258))

(assert (=> d!2205888 d!2206126))

(declare-fun bs!1877517 () Bool)

(declare-fun d!2206128 () Bool)

(assert (= bs!1877517 (and d!2206128 b!7057676)))

(declare-fun lambda!421305 () Int)

(assert (=> bs!1877517 (not (= lambda!421305 lambda!421193))))

(declare-fun bs!1877518 () Bool)

(assert (= bs!1877518 (and d!2206128 d!2205874)))

(assert (=> bs!1877518 (not (= lambda!421305 lambda!421268))))

(declare-fun bs!1877519 () Bool)

(assert (= bs!1877519 (and d!2206128 d!2205876)))

(assert (=> bs!1877519 (not (= lambda!421305 lambda!421271))))

(declare-fun bs!1877520 () Bool)

(assert (= bs!1877520 (and d!2206128 d!2206096)))

(assert (=> bs!1877520 (= lambda!421305 lambda!421302)))

(assert (=> d!2206128 (= (nullableZipper!2667 lt!2533953) (exists!3584 lt!2533953 lambda!421305))))

(declare-fun bs!1877521 () Bool)

(assert (= bs!1877521 d!2206128))

(declare-fun m!7777260 () Bool)

(assert (=> bs!1877521 m!7777260))

(assert (=> b!7057862 d!2206128))

(declare-fun bs!1877522 () Bool)

(declare-fun d!2206130 () Bool)

(assert (= bs!1877522 (and d!2206130 d!2206096)))

(declare-fun lambda!421306 () Int)

(assert (=> bs!1877522 (= lambda!421306 lambda!421302)))

(declare-fun bs!1877523 () Bool)

(assert (= bs!1877523 (and d!2206130 d!2206128)))

(assert (=> bs!1877523 (= lambda!421306 lambda!421305)))

(declare-fun bs!1877524 () Bool)

(assert (= bs!1877524 (and d!2206130 d!2205874)))

(assert (=> bs!1877524 (not (= lambda!421306 lambda!421268))))

(declare-fun bs!1877525 () Bool)

(assert (= bs!1877525 (and d!2206130 b!7057676)))

(assert (=> bs!1877525 (not (= lambda!421306 lambda!421193))))

(declare-fun bs!1877526 () Bool)

(assert (= bs!1877526 (and d!2206130 d!2205876)))

(assert (=> bs!1877526 (not (= lambda!421306 lambda!421271))))

(assert (=> d!2206130 (= (nullableZipper!2667 lt!2533952) (exists!3584 lt!2533952 lambda!421306))))

(declare-fun bs!1877527 () Bool)

(assert (= bs!1877527 d!2206130))

(declare-fun m!7777262 () Bool)

(assert (=> bs!1877527 m!7777262))

(assert (=> b!7057830 d!2206130))

(declare-fun d!2206132 () Bool)

(declare-fun c!1315261 () Bool)

(assert (=> d!2206132 (= c!1315261 (isEmpty!39754 s!7408))))

(declare-fun e!4243294 () Bool)

(assert (=> d!2206132 (= (matchZipper!3124 (set.insert lt!2534149 (as set.empty (Set Context!13160))) s!7408) e!4243294)))

(declare-fun b!7058209 () Bool)

(assert (=> b!7058209 (= e!4243294 (nullableZipper!2667 (set.insert lt!2534149 (as set.empty (Set Context!13160)))))))

(declare-fun b!7058210 () Bool)

(assert (=> b!7058210 (= e!4243294 (matchZipper!3124 (derivationStepZipper!3034 (set.insert lt!2534149 (as set.empty (Set Context!13160))) (head!14368 s!7408)) (tail!13726 s!7408)))))

(assert (= (and d!2206132 c!1315261) b!7058209))

(assert (= (and d!2206132 (not c!1315261)) b!7058210))

(assert (=> d!2206132 m!7776598))

(assert (=> b!7058209 m!7776838))

(declare-fun m!7777264 () Bool)

(assert (=> b!7058209 m!7777264))

(assert (=> b!7058210 m!7776602))

(assert (=> b!7058210 m!7776838))

(assert (=> b!7058210 m!7776602))

(declare-fun m!7777266 () Bool)

(assert (=> b!7058210 m!7777266))

(assert (=> b!7058210 m!7776606))

(assert (=> b!7058210 m!7777266))

(assert (=> b!7058210 m!7776606))

(declare-fun m!7777268 () Bool)

(assert (=> b!7058210 m!7777268))

(assert (=> bs!1877437 d!2206132))

(declare-fun d!2206134 () Bool)

(declare-fun c!1315262 () Bool)

(assert (=> d!2206134 (= c!1315262 (is-Nil!68156 lt!2534138))))

(declare-fun e!4243295 () (Set Context!13160))

(assert (=> d!2206134 (= (content!13703 lt!2534138) e!4243295)))

(declare-fun b!7058211 () Bool)

(assert (=> b!7058211 (= e!4243295 (as set.empty (Set Context!13160)))))

(declare-fun b!7058212 () Bool)

(assert (=> b!7058212 (= e!4243295 (set.union (set.insert (h!74604 lt!2534138) (as set.empty (Set Context!13160))) (content!13703 (t!382059 lt!2534138))))))

(assert (= (and d!2206134 c!1315262) b!7058211))

(assert (= (and d!2206134 (not c!1315262)) b!7058212))

(declare-fun m!7777270 () Bool)

(assert (=> b!7058212 m!7777270))

(declare-fun m!7777272 () Bool)

(assert (=> b!7058212 m!7777272))

(assert (=> b!7057819 d!2206134))

(assert (=> d!2205868 d!2206082))

(declare-fun d!2206136 () Bool)

(declare-fun c!1315263 () Bool)

(assert (=> d!2206136 (= c!1315263 (isEmpty!39754 (tail!13726 s!7408)))))

(declare-fun e!4243296 () Bool)

(assert (=> d!2206136 (= (matchZipper!3124 (derivationStepZipper!3034 (appendTo!705 lt!2533927 ct2!306) (head!14368 s!7408)) (tail!13726 s!7408)) e!4243296)))

(declare-fun b!7058213 () Bool)

(assert (=> b!7058213 (= e!4243296 (nullableZipper!2667 (derivationStepZipper!3034 (appendTo!705 lt!2533927 ct2!306) (head!14368 s!7408))))))

(declare-fun b!7058214 () Bool)

(assert (=> b!7058214 (= e!4243296 (matchZipper!3124 (derivationStepZipper!3034 (derivationStepZipper!3034 (appendTo!705 lt!2533927 ct2!306) (head!14368 s!7408)) (head!14368 (tail!13726 s!7408))) (tail!13726 (tail!13726 s!7408))))))

(assert (= (and d!2206136 c!1315263) b!7058213))

(assert (= (and d!2206136 (not c!1315263)) b!7058214))

(assert (=> d!2206136 m!7776606))

(assert (=> d!2206136 m!7777212))

(assert (=> b!7058213 m!7776708))

(declare-fun m!7777274 () Bool)

(assert (=> b!7058213 m!7777274))

(assert (=> b!7058214 m!7776606))

(assert (=> b!7058214 m!7777216))

(assert (=> b!7058214 m!7776708))

(assert (=> b!7058214 m!7777216))

(declare-fun m!7777276 () Bool)

(assert (=> b!7058214 m!7777276))

(assert (=> b!7058214 m!7776606))

(assert (=> b!7058214 m!7777220))

(assert (=> b!7058214 m!7777276))

(assert (=> b!7058214 m!7777220))

(declare-fun m!7777278 () Bool)

(assert (=> b!7058214 m!7777278))

(assert (=> b!7057829 d!2206136))

(declare-fun bs!1877528 () Bool)

(declare-fun d!2206138 () Bool)

(assert (= bs!1877528 (and d!2206138 d!2206056)))

(declare-fun lambda!421307 () Int)

(assert (=> bs!1877528 (= (= (head!14368 s!7408) (head!14368 (t!382058 s!7408))) (= lambda!421307 lambda!421298))))

(declare-fun bs!1877529 () Bool)

(assert (= bs!1877529 (and d!2206138 d!2205914)))

(assert (=> bs!1877529 (= (= (head!14368 s!7408) (h!74603 s!7408)) (= lambda!421307 lambda!421276))))

(declare-fun bs!1877530 () Bool)

(assert (= bs!1877530 (and d!2206138 d!2206094)))

(assert (=> bs!1877530 (= (= (head!14368 s!7408) (head!14368 (t!382058 s!7408))) (= lambda!421307 lambda!421299))))

(declare-fun bs!1877531 () Bool)

(assert (= bs!1877531 (and d!2206138 d!2206100)))

(assert (=> bs!1877531 (= lambda!421307 lambda!421303)))

(declare-fun bs!1877532 () Bool)

(assert (= bs!1877532 (and d!2206138 d!2206120)))

(assert (=> bs!1877532 (= (= (head!14368 s!7408) (head!14368 (t!382058 s!7408))) (= lambda!421307 lambda!421304))))

(declare-fun bs!1877533 () Bool)

(assert (= bs!1877533 (and d!2206138 b!7057661)))

(assert (=> bs!1877533 (= (= (head!14368 s!7408) (h!74603 s!7408)) (= lambda!421307 lambda!421196))))

(declare-fun bs!1877534 () Bool)

(assert (= bs!1877534 (and d!2206138 d!2205882)))

(assert (=> bs!1877534 (= (= (head!14368 s!7408) (h!74603 s!7408)) (= lambda!421307 lambda!421274))))

(assert (=> d!2206138 true))

(assert (=> d!2206138 (= (derivationStepZipper!3034 (appendTo!705 lt!2533927 ct2!306) (head!14368 s!7408)) (flatMap!2510 (appendTo!705 lt!2533927 ct2!306) lambda!421307))))

(declare-fun bs!1877535 () Bool)

(assert (= bs!1877535 d!2206138))

(assert (=> bs!1877535 m!7776410))

(declare-fun m!7777280 () Bool)

(assert (=> bs!1877535 m!7777280))

(assert (=> b!7057829 d!2206138))

(assert (=> b!7057829 d!2206102))

(assert (=> b!7057829 d!2206104))

(declare-fun b!7058215 () Bool)

(declare-fun e!4243297 () List!68278)

(assert (=> b!7058215 (= e!4243297 (exprs!7080 ct2!306))))

(declare-fun b!7058217 () Bool)

(declare-fun res!2881522 () Bool)

(declare-fun e!4243298 () Bool)

(assert (=> b!7058217 (=> (not res!2881522) (not e!4243298))))

(declare-fun lt!2534230 () List!68278)

(assert (=> b!7058217 (= res!2881522 (= (size!41161 lt!2534230) (+ (size!41161 (t!382057 lt!2533935)) (size!41161 (exprs!7080 ct2!306)))))))

(declare-fun b!7058216 () Bool)

(assert (=> b!7058216 (= e!4243297 (Cons!68154 (h!74602 (t!382057 lt!2533935)) (++!15667 (t!382057 (t!382057 lt!2533935)) (exprs!7080 ct2!306))))))

(declare-fun d!2206140 () Bool)

(assert (=> d!2206140 e!4243298))

(declare-fun res!2881523 () Bool)

(assert (=> d!2206140 (=> (not res!2881523) (not e!4243298))))

(assert (=> d!2206140 (= res!2881523 (= (content!13704 lt!2534230) (set.union (content!13704 (t!382057 lt!2533935)) (content!13704 (exprs!7080 ct2!306)))))))

(assert (=> d!2206140 (= lt!2534230 e!4243297)))

(declare-fun c!1315264 () Bool)

(assert (=> d!2206140 (= c!1315264 (is-Nil!68154 (t!382057 lt!2533935)))))

(assert (=> d!2206140 (= (++!15667 (t!382057 lt!2533935) (exprs!7080 ct2!306)) lt!2534230)))

(declare-fun b!7058218 () Bool)

(assert (=> b!7058218 (= e!4243298 (or (not (= (exprs!7080 ct2!306) Nil!68154)) (= lt!2534230 (t!382057 lt!2533935))))))

(assert (= (and d!2206140 c!1315264) b!7058215))

(assert (= (and d!2206140 (not c!1315264)) b!7058216))

(assert (= (and d!2206140 res!2881523) b!7058217))

(assert (= (and b!7058217 res!2881522) b!7058218))

(declare-fun m!7777282 () Bool)

(assert (=> b!7058217 m!7777282))

(declare-fun m!7777284 () Bool)

(assert (=> b!7058217 m!7777284))

(assert (=> b!7058217 m!7776648))

(declare-fun m!7777286 () Bool)

(assert (=> b!7058216 m!7777286))

(declare-fun m!7777288 () Bool)

(assert (=> d!2206140 m!7777288))

(declare-fun m!7777290 () Bool)

(assert (=> d!2206140 m!7777290))

(assert (=> d!2206140 m!7776656))

(assert (=> b!7057806 d!2206140))

(declare-fun d!2206142 () Bool)

(declare-fun res!2881524 () Bool)

(declare-fun e!4243299 () Bool)

(assert (=> d!2206142 (=> res!2881524 e!4243299)))

(assert (=> d!2206142 (= res!2881524 (is-Nil!68154 (++!15667 lt!2533935 (exprs!7080 ct2!306))))))

(assert (=> d!2206142 (= (forall!16536 (++!15667 lt!2533935 (exprs!7080 ct2!306)) lambda!421195) e!4243299)))

(declare-fun b!7058219 () Bool)

(declare-fun e!4243300 () Bool)

(assert (=> b!7058219 (= e!4243299 e!4243300)))

(declare-fun res!2881525 () Bool)

(assert (=> b!7058219 (=> (not res!2881525) (not e!4243300))))

(assert (=> b!7058219 (= res!2881525 (dynLambda!27681 lambda!421195 (h!74602 (++!15667 lt!2533935 (exprs!7080 ct2!306)))))))

(declare-fun b!7058220 () Bool)

(assert (=> b!7058220 (= e!4243300 (forall!16536 (t!382057 (++!15667 lt!2533935 (exprs!7080 ct2!306))) lambda!421195))))

(assert (= (and d!2206142 (not res!2881524)) b!7058219))

(assert (= (and b!7058219 res!2881525) b!7058220))

(declare-fun b_lambda!268979 () Bool)

(assert (=> (not b_lambda!268979) (not b!7058219)))

(declare-fun m!7777292 () Bool)

(assert (=> b!7058219 m!7777292))

(declare-fun m!7777294 () Bool)

(assert (=> b!7058220 m!7777294))

(assert (=> d!2205842 d!2206142))

(assert (=> d!2205842 d!2205844))

(declare-fun d!2206144 () Bool)

(assert (=> d!2206144 (forall!16536 (++!15667 lt!2533935 (exprs!7080 ct2!306)) lambda!421195)))

(assert (=> d!2206144 true))

(declare-fun _$78!656 () Unit!161841)

(assert (=> d!2206144 (= (choose!53883 lt!2533935 (exprs!7080 ct2!306) lambda!421195) _$78!656)))

(declare-fun bs!1877536 () Bool)

(assert (= bs!1877536 d!2206144))

(assert (=> bs!1877536 m!7776386))

(assert (=> bs!1877536 m!7776386))

(assert (=> bs!1877536 m!7776638))

(assert (=> d!2205842 d!2206144))

(declare-fun d!2206146 () Bool)

(declare-fun res!2881526 () Bool)

(declare-fun e!4243301 () Bool)

(assert (=> d!2206146 (=> res!2881526 e!4243301)))

(assert (=> d!2206146 (= res!2881526 (is-Nil!68154 lt!2533935))))

(assert (=> d!2206146 (= (forall!16536 lt!2533935 lambda!421195) e!4243301)))

(declare-fun b!7058221 () Bool)

(declare-fun e!4243302 () Bool)

(assert (=> b!7058221 (= e!4243301 e!4243302)))

(declare-fun res!2881527 () Bool)

(assert (=> b!7058221 (=> (not res!2881527) (not e!4243302))))

(assert (=> b!7058221 (= res!2881527 (dynLambda!27681 lambda!421195 (h!74602 lt!2533935)))))

(declare-fun b!7058222 () Bool)

(assert (=> b!7058222 (= e!4243302 (forall!16536 (t!382057 lt!2533935) lambda!421195))))

(assert (= (and d!2206146 (not res!2881526)) b!7058221))

(assert (= (and b!7058221 res!2881527) b!7058222))

(declare-fun b_lambda!268981 () Bool)

(assert (=> (not b_lambda!268981) (not b!7058221)))

(declare-fun m!7777296 () Bool)

(assert (=> b!7058221 m!7777296))

(declare-fun m!7777298 () Bool)

(assert (=> b!7058222 m!7777298))

(assert (=> d!2205842 d!2206146))

(declare-fun d!2206148 () Bool)

(declare-fun res!2881528 () Bool)

(declare-fun e!4243303 () Bool)

(assert (=> d!2206148 (=> res!2881528 e!4243303)))

(assert (=> d!2206148 (= res!2881528 (is-Nil!68154 (exprs!7080 setElem!49924)))))

(assert (=> d!2206148 (= (forall!16536 (exprs!7080 setElem!49924) lambda!421275) e!4243303)))

(declare-fun b!7058223 () Bool)

(declare-fun e!4243304 () Bool)

(assert (=> b!7058223 (= e!4243303 e!4243304)))

(declare-fun res!2881529 () Bool)

(assert (=> b!7058223 (=> (not res!2881529) (not e!4243304))))

(assert (=> b!7058223 (= res!2881529 (dynLambda!27681 lambda!421275 (h!74602 (exprs!7080 setElem!49924))))))

(declare-fun b!7058224 () Bool)

(assert (=> b!7058224 (= e!4243304 (forall!16536 (t!382057 (exprs!7080 setElem!49924)) lambda!421275))))

(assert (= (and d!2206148 (not res!2881528)) b!7058223))

(assert (= (and b!7058223 res!2881529) b!7058224))

(declare-fun b_lambda!268983 () Bool)

(assert (=> (not b_lambda!268983) (not b!7058223)))

(declare-fun m!7777300 () Bool)

(assert (=> b!7058223 m!7777300))

(declare-fun m!7777302 () Bool)

(assert (=> b!7058224 m!7777302))

(assert (=> d!2205902 d!2206148))

(declare-fun d!2206150 () Bool)

(declare-fun res!2881530 () Bool)

(declare-fun e!4243305 () Bool)

(assert (=> d!2206150 (=> res!2881530 e!4243305)))

(assert (=> d!2206150 (= res!2881530 (is-Nil!68156 lt!2534123))))

(assert (=> d!2206150 (= (noDuplicate!2698 lt!2534123) e!4243305)))

(declare-fun b!7058225 () Bool)

(declare-fun e!4243306 () Bool)

(assert (=> b!7058225 (= e!4243305 e!4243306)))

(declare-fun res!2881531 () Bool)

(assert (=> b!7058225 (=> (not res!2881531) (not e!4243306))))

(assert (=> b!7058225 (= res!2881531 (not (contains!20486 (t!382059 lt!2534123) (h!74604 lt!2534123))))))

(declare-fun b!7058226 () Bool)

(assert (=> b!7058226 (= e!4243306 (noDuplicate!2698 (t!382059 lt!2534123)))))

(assert (= (and d!2206150 (not res!2881530)) b!7058225))

(assert (= (and b!7058225 res!2881531) b!7058226))

(declare-fun m!7777304 () Bool)

(assert (=> b!7058225 m!7777304))

(declare-fun m!7777306 () Bool)

(assert (=> b!7058226 m!7777306))

(assert (=> d!2205840 d!2206150))

(declare-fun d!2206152 () Bool)

(declare-fun e!4243309 () Bool)

(assert (=> d!2206152 e!4243309))

(declare-fun res!2881533 () Bool)

(assert (=> d!2206152 (=> (not res!2881533) (not e!4243309))))

(declare-fun res!2881532 () List!68280)

(assert (=> d!2206152 (= res!2881533 (noDuplicate!2698 res!2881532))))

(declare-fun e!4243308 () Bool)

(assert (=> d!2206152 e!4243308))

(assert (=> d!2206152 (= (choose!53882 z1!570) res!2881532)))

(declare-fun b!7058228 () Bool)

(declare-fun e!4243307 () Bool)

(declare-fun tp!1940601 () Bool)

(assert (=> b!7058228 (= e!4243307 tp!1940601)))

(declare-fun b!7058227 () Bool)

(declare-fun tp!1940602 () Bool)

(assert (=> b!7058227 (= e!4243308 (and (inv!86820 (h!74604 res!2881532)) e!4243307 tp!1940602))))

(declare-fun b!7058229 () Bool)

(assert (=> b!7058229 (= e!4243309 (= (content!13703 res!2881532) z1!570))))

(assert (= b!7058227 b!7058228))

(assert (= (and d!2206152 (is-Cons!68156 res!2881532)) b!7058227))

(assert (= (and d!2206152 res!2881533) b!7058229))

(declare-fun m!7777308 () Bool)

(assert (=> d!2206152 m!7777308))

(declare-fun m!7777310 () Bool)

(assert (=> b!7058227 m!7777310))

(declare-fun m!7777312 () Bool)

(assert (=> b!7058229 m!7777312))

(assert (=> d!2205840 d!2206152))

(declare-fun b!7058230 () Bool)

(declare-fun e!4243315 () (Set Context!13160))

(declare-fun call!641258 () (Set Context!13160))

(assert (=> b!7058230 (= e!4243315 call!641258)))

(declare-fun bm!641248 () Bool)

(declare-fun c!1315266 () Bool)

(declare-fun c!1315268 () Bool)

(declare-fun call!641257 () List!68278)

(assert (=> bm!641248 (= call!641257 ($colon$colon!2630 (exprs!7080 (ite (or c!1315151 c!1315150) lt!2533961 (Context!13161 call!641201))) (ite (or c!1315268 c!1315266) (regTwo!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918)))))))))))

(declare-fun b!7058231 () Bool)

(declare-fun e!4243310 () Bool)

(assert (=> b!7058231 (= c!1315268 e!4243310)))

(declare-fun res!2881534 () Bool)

(assert (=> b!7058231 (=> (not res!2881534) (not e!4243310))))

(assert (=> b!7058231 (= res!2881534 (is-Concat!26429 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))))))

(declare-fun e!4243313 () (Set Context!13160))

(declare-fun e!4243314 () (Set Context!13160))

(assert (=> b!7058231 (= e!4243313 e!4243314)))

(declare-fun b!7058232 () Bool)

(assert (=> b!7058232 (= e!4243310 (nullable!7267 (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918)))))))))))

(declare-fun b!7058233 () Bool)

(declare-fun e!4243312 () (Set Context!13160))

(assert (=> b!7058233 (= e!4243314 e!4243312)))

(assert (=> b!7058233 (= c!1315266 (is-Concat!26429 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))))))

(declare-fun b!7058234 () Bool)

(assert (=> b!7058234 (= e!4243315 (as set.empty (Set Context!13160)))))

(declare-fun bm!641249 () Bool)

(declare-fun call!641255 () (Set Context!13160))

(declare-fun call!641254 () (Set Context!13160))

(assert (=> bm!641249 (= call!641255 call!641254)))

(declare-fun b!7058235 () Bool)

(declare-fun call!641256 () (Set Context!13160))

(assert (=> b!7058235 (= e!4243313 (set.union call!641254 call!641256))))

(declare-fun c!1315267 () Bool)

(declare-fun b!7058236 () Bool)

(assert (=> b!7058236 (= c!1315267 (is-Star!17584 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))))))

(assert (=> b!7058236 (= e!4243312 e!4243315)))

(declare-fun bm!641250 () Bool)

(assert (=> bm!641250 (= call!641258 call!641255)))

(declare-fun e!4243311 () (Set Context!13160))

(declare-fun b!7058237 () Bool)

(assert (=> b!7058237 (= e!4243311 (set.insert (ite (or c!1315151 c!1315150) lt!2533961 (Context!13161 call!641201)) (as set.empty (Set Context!13160))))))

(declare-fun c!1315269 () Bool)

(declare-fun bm!641252 () Bool)

(declare-fun call!641253 () List!68278)

(assert (=> bm!641252 (= call!641254 (derivationStepZipperDown!2218 (ite c!1315269 (regOne!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315268 (regTwo!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315266 (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (reg!17913 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918)))))))))) (ite (or c!1315269 c!1315268) (ite (or c!1315151 c!1315150) lt!2533961 (Context!13161 call!641201)) (Context!13161 call!641253)) (h!74603 s!7408)))))

(declare-fun b!7058238 () Bool)

(assert (=> b!7058238 (= e!4243311 e!4243313)))

(assert (=> b!7058238 (= c!1315269 (is-Union!17584 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))))))

(declare-fun bm!641253 () Bool)

(assert (=> bm!641253 (= call!641253 call!641257)))

(declare-fun b!7058239 () Bool)

(assert (=> b!7058239 (= e!4243312 call!641258)))

(declare-fun b!7058240 () Bool)

(assert (=> b!7058240 (= e!4243314 (set.union call!641256 call!641255))))

(declare-fun c!1315265 () Bool)

(declare-fun d!2206154 () Bool)

(assert (=> d!2206154 (= c!1315265 (and (is-ElementMatch!17584 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (= (c!1315081 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (h!74603 s!7408))))))

(assert (=> d!2206154 (= (derivationStepZipperDown!2218 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918)))))) (ite (or c!1315151 c!1315150) lt!2533961 (Context!13161 call!641201)) (h!74603 s!7408)) e!4243311)))

(declare-fun bm!641251 () Bool)

(assert (=> bm!641251 (= call!641256 (derivationStepZipperDown!2218 (ite c!1315269 (regTwo!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918)))))))) (ite c!1315269 (ite (or c!1315151 c!1315150) lt!2533961 (Context!13161 call!641201)) (Context!13161 call!641257)) (h!74603 s!7408)))))

(assert (= (and d!2206154 c!1315265) b!7058237))

(assert (= (and d!2206154 (not c!1315265)) b!7058238))

(assert (= (and b!7058238 c!1315269) b!7058235))

(assert (= (and b!7058238 (not c!1315269)) b!7058231))

(assert (= (and b!7058231 res!2881534) b!7058232))

(assert (= (and b!7058231 c!1315268) b!7058240))

(assert (= (and b!7058231 (not c!1315268)) b!7058233))

(assert (= (and b!7058233 c!1315266) b!7058239))

(assert (= (and b!7058233 (not c!1315266)) b!7058236))

(assert (= (and b!7058236 c!1315267) b!7058230))

(assert (= (and b!7058236 (not c!1315267)) b!7058234))

(assert (= (or b!7058239 b!7058230) bm!641253))

(assert (= (or b!7058239 b!7058230) bm!641250))

(assert (= (or b!7058240 bm!641250) bm!641249))

(assert (= (or b!7058240 bm!641253) bm!641248))

(assert (= (or b!7058235 bm!641249) bm!641252))

(assert (= (or b!7058235 b!7058240) bm!641251))

(declare-fun m!7777314 () Bool)

(assert (=> bm!641252 m!7777314))

(declare-fun m!7777316 () Bool)

(assert (=> bm!641251 m!7777316))

(declare-fun m!7777318 () Bool)

(assert (=> bm!641248 m!7777318))

(declare-fun m!7777320 () Bool)

(assert (=> b!7058237 m!7777320))

(declare-fun m!7777322 () Bool)

(assert (=> b!7058232 m!7777322))

(assert (=> bm!641200 d!2206154))

(declare-fun bs!1877537 () Bool)

(declare-fun d!2206156 () Bool)

(assert (= bs!1877537 (and d!2206156 d!2206096)))

(declare-fun lambda!421308 () Int)

(assert (=> bs!1877537 (not (= lambda!421308 lambda!421302))))

(declare-fun bs!1877538 () Bool)

(assert (= bs!1877538 (and d!2206156 d!2206128)))

(assert (=> bs!1877538 (not (= lambda!421308 lambda!421305))))

(declare-fun bs!1877539 () Bool)

(assert (= bs!1877539 (and d!2206156 d!2205874)))

(assert (=> bs!1877539 (= (= lambda!421271 lambda!421193) (= lambda!421308 lambda!421268))))

(declare-fun bs!1877540 () Bool)

(assert (= bs!1877540 (and d!2206156 d!2206130)))

(assert (=> bs!1877540 (not (= lambda!421308 lambda!421306))))

(declare-fun bs!1877541 () Bool)

(assert (= bs!1877541 (and d!2206156 b!7057676)))

(assert (=> bs!1877541 (not (= lambda!421308 lambda!421193))))

(declare-fun bs!1877542 () Bool)

(assert (= bs!1877542 (and d!2206156 d!2205876)))

(assert (=> bs!1877542 (not (= lambda!421308 lambda!421271))))

(assert (=> d!2206156 true))

(assert (=> d!2206156 (< (dynLambda!27675 order!28341 lambda!421271) (dynLambda!27675 order!28341 lambda!421308))))

(assert (=> d!2206156 (= (exists!3582 lt!2533923 lambda!421271) (not (forall!16537 lt!2533923 lambda!421308)))))

(declare-fun bs!1877543 () Bool)

(assert (= bs!1877543 d!2206156))

(declare-fun m!7777324 () Bool)

(assert (=> bs!1877543 m!7777324))

(assert (=> d!2205876 d!2206156))

(declare-fun bs!1877544 () Bool)

(declare-fun d!2206158 () Bool)

(assert (= bs!1877544 (and d!2206158 d!2206096)))

(declare-fun lambda!421311 () Int)

(assert (=> bs!1877544 (not (= lambda!421311 lambda!421302))))

(declare-fun bs!1877545 () Bool)

(assert (= bs!1877545 (and d!2206158 d!2206128)))

(assert (=> bs!1877545 (not (= lambda!421311 lambda!421305))))

(declare-fun bs!1877546 () Bool)

(assert (= bs!1877546 (and d!2206158 d!2205874)))

(assert (=> bs!1877546 (not (= lambda!421311 lambda!421268))))

(declare-fun bs!1877547 () Bool)

(assert (= bs!1877547 (and d!2206158 d!2206130)))

(assert (=> bs!1877547 (not (= lambda!421311 lambda!421306))))

(declare-fun bs!1877548 () Bool)

(assert (= bs!1877548 (and d!2206158 b!7057676)))

(assert (=> bs!1877548 (= lambda!421311 lambda!421193)))

(declare-fun bs!1877549 () Bool)

(assert (= bs!1877549 (and d!2206158 d!2206156)))

(assert (=> bs!1877549 (not (= lambda!421311 lambda!421308))))

(declare-fun bs!1877550 () Bool)

(assert (= bs!1877550 (and d!2206158 d!2205876)))

(assert (=> bs!1877550 (= lambda!421311 lambda!421271)))

(assert (=> d!2206158 true))

(assert (=> d!2206158 (exists!3582 lt!2533923 lambda!421311)))

(assert (=> d!2206158 true))

(declare-fun _$60!1171 () Unit!161841)

(assert (=> d!2206158 (= (choose!53887 lt!2533923 s!7408) _$60!1171)))

(declare-fun bs!1877551 () Bool)

(assert (= bs!1877551 d!2206158))

(declare-fun m!7777326 () Bool)

(assert (=> bs!1877551 m!7777326))

(assert (=> d!2205876 d!2206158))

(declare-fun d!2206160 () Bool)

(declare-fun c!1315272 () Bool)

(assert (=> d!2206160 (= c!1315272 (isEmpty!39754 s!7408))))

(declare-fun e!4243316 () Bool)

(assert (=> d!2206160 (= (matchZipper!3124 (content!13703 lt!2533923) s!7408) e!4243316)))

(declare-fun b!7058241 () Bool)

(assert (=> b!7058241 (= e!4243316 (nullableZipper!2667 (content!13703 lt!2533923)))))

(declare-fun b!7058242 () Bool)

(assert (=> b!7058242 (= e!4243316 (matchZipper!3124 (derivationStepZipper!3034 (content!13703 lt!2533923) (head!14368 s!7408)) (tail!13726 s!7408)))))

(assert (= (and d!2206160 c!1315272) b!7058241))

(assert (= (and d!2206160 (not c!1315272)) b!7058242))

(assert (=> d!2206160 m!7776598))

(assert (=> b!7058241 m!7776726))

(declare-fun m!7777328 () Bool)

(assert (=> b!7058241 m!7777328))

(assert (=> b!7058242 m!7776602))

(assert (=> b!7058242 m!7776726))

(assert (=> b!7058242 m!7776602))

(declare-fun m!7777330 () Bool)

(assert (=> b!7058242 m!7777330))

(assert (=> b!7058242 m!7776606))

(assert (=> b!7058242 m!7777330))

(assert (=> b!7058242 m!7776606))

(declare-fun m!7777332 () Bool)

(assert (=> b!7058242 m!7777332))

(assert (=> d!2205876 d!2206160))

(declare-fun d!2206162 () Bool)

(declare-fun c!1315273 () Bool)

(assert (=> d!2206162 (= c!1315273 (is-Nil!68156 lt!2533923))))

(declare-fun e!4243317 () (Set Context!13160))

(assert (=> d!2206162 (= (content!13703 lt!2533923) e!4243317)))

(declare-fun b!7058243 () Bool)

(assert (=> b!7058243 (= e!4243317 (as set.empty (Set Context!13160)))))

(declare-fun b!7058244 () Bool)

(assert (=> b!7058244 (= e!4243317 (set.union (set.insert (h!74604 lt!2533923) (as set.empty (Set Context!13160))) (content!13703 (t!382059 lt!2533923))))))

(assert (= (and d!2206162 c!1315273) b!7058243))

(assert (= (and d!2206162 (not c!1315273)) b!7058244))

(declare-fun m!7777334 () Bool)

(assert (=> b!7058244 m!7777334))

(declare-fun m!7777336 () Bool)

(assert (=> b!7058244 m!7777336))

(assert (=> d!2205876 d!2206162))

(assert (=> d!2205872 d!2206082))

(declare-fun d!2206164 () Bool)

(assert (=> d!2206164 (= (map!15909 z1!570 lambda!421261) (choose!53884 z1!570 lambda!421261))))

(declare-fun bs!1877552 () Bool)

(assert (= bs!1877552 d!2206164))

(declare-fun m!7777338 () Bool)

(assert (=> bs!1877552 m!7777338))

(assert (=> d!2205828 d!2206164))

(assert (=> d!2205910 d!2205912))

(declare-fun d!2206166 () Bool)

(assert (=> d!2206166 (= (flatMap!2510 lt!2533956 lambda!421196) (dynLambda!27673 lambda!421196 lt!2533928))))

(assert (=> d!2206166 true))

(declare-fun _$13!4544 () Unit!161841)

(assert (=> d!2206166 (= (choose!53880 lt!2533956 lt!2533928 lambda!421196) _$13!4544)))

(declare-fun b_lambda!268985 () Bool)

(assert (=> (not b_lambda!268985) (not d!2206166)))

(declare-fun bs!1877553 () Bool)

(assert (= bs!1877553 d!2206166))

(assert (=> bs!1877553 m!7776464))

(assert (=> bs!1877553 m!7776820))

(assert (=> d!2205910 d!2206166))

(declare-fun d!2206168 () Bool)

(assert (=> d!2206168 (= (flatMap!2510 lt!2533953 lambda!421274) (choose!53885 lt!2533953 lambda!421274))))

(declare-fun bs!1877554 () Bool)

(assert (= bs!1877554 d!2206168))

(declare-fun m!7777340 () Bool)

(assert (=> bs!1877554 m!7777340))

(assert (=> d!2205882 d!2206168))

(assert (=> b!7057855 d!2205862))

(declare-fun bs!1877555 () Bool)

(declare-fun d!2206170 () Bool)

(assert (= bs!1877555 (and d!2206170 d!2206096)))

(declare-fun lambda!421312 () Int)

(assert (=> bs!1877555 (= lambda!421312 lambda!421302)))

(declare-fun bs!1877556 () Bool)

(assert (= bs!1877556 (and d!2206170 d!2206128)))

(assert (=> bs!1877556 (= lambda!421312 lambda!421305)))

(declare-fun bs!1877557 () Bool)

(assert (= bs!1877557 (and d!2206170 d!2205874)))

(assert (=> bs!1877557 (not (= lambda!421312 lambda!421268))))

(declare-fun bs!1877558 () Bool)

(assert (= bs!1877558 (and d!2206170 d!2206130)))

(assert (=> bs!1877558 (= lambda!421312 lambda!421306)))

(declare-fun bs!1877559 () Bool)

(assert (= bs!1877559 (and d!2206170 b!7057676)))

(assert (=> bs!1877559 (not (= lambda!421312 lambda!421193))))

(declare-fun bs!1877560 () Bool)

(assert (= bs!1877560 (and d!2206170 d!2205876)))

(assert (=> bs!1877560 (not (= lambda!421312 lambda!421271))))

(declare-fun bs!1877561 () Bool)

(assert (= bs!1877561 (and d!2206170 d!2206158)))

(assert (=> bs!1877561 (not (= lambda!421312 lambda!421311))))

(declare-fun bs!1877562 () Bool)

(assert (= bs!1877562 (and d!2206170 d!2206156)))

(assert (=> bs!1877562 (not (= lambda!421312 lambda!421308))))

(assert (=> d!2206170 (= (nullableZipper!2667 lt!2533954) (exists!3584 lt!2533954 lambda!421312))))

(declare-fun bs!1877563 () Bool)

(assert (= bs!1877563 d!2206170))

(declare-fun m!7777342 () Bool)

(assert (=> bs!1877563 m!7777342))

(assert (=> b!7057858 d!2206170))

(assert (=> bs!1877436 d!2205884))

(declare-fun d!2206172 () Bool)

(assert (=> d!2206172 (forall!16536 (++!15667 (exprs!7080 lt!2534154) (exprs!7080 ct2!306)) lambda!421195)))

(declare-fun lt!2534231 () Unit!161841)

(assert (=> d!2206172 (= lt!2534231 (choose!53883 (exprs!7080 lt!2534154) (exprs!7080 ct2!306) lambda!421195))))

(assert (=> d!2206172 (forall!16536 (exprs!7080 lt!2534154) lambda!421195)))

(assert (=> d!2206172 (= (lemmaConcatPreservesForall!895 (exprs!7080 lt!2534154) (exprs!7080 ct2!306) lambda!421195) lt!2534231)))

(declare-fun bs!1877564 () Bool)

(assert (= bs!1877564 d!2206172))

(assert (=> bs!1877564 m!7776848))

(assert (=> bs!1877564 m!7776848))

(declare-fun m!7777344 () Bool)

(assert (=> bs!1877564 m!7777344))

(declare-fun m!7777346 () Bool)

(assert (=> bs!1877564 m!7777346))

(declare-fun m!7777348 () Bool)

(assert (=> bs!1877564 m!7777348))

(assert (=> bs!1877440 d!2206172))

(declare-fun b!7058245 () Bool)

(declare-fun e!4243318 () List!68278)

(assert (=> b!7058245 (= e!4243318 (exprs!7080 ct2!306))))

(declare-fun b!7058247 () Bool)

(declare-fun res!2881535 () Bool)

(declare-fun e!4243319 () Bool)

(assert (=> b!7058247 (=> (not res!2881535) (not e!4243319))))

(declare-fun lt!2534232 () List!68278)

(assert (=> b!7058247 (= res!2881535 (= (size!41161 lt!2534232) (+ (size!41161 (exprs!7080 lt!2534154)) (size!41161 (exprs!7080 ct2!306)))))))

(declare-fun b!7058246 () Bool)

(assert (=> b!7058246 (= e!4243318 (Cons!68154 (h!74602 (exprs!7080 lt!2534154)) (++!15667 (t!382057 (exprs!7080 lt!2534154)) (exprs!7080 ct2!306))))))

(declare-fun d!2206174 () Bool)

(assert (=> d!2206174 e!4243319))

(declare-fun res!2881536 () Bool)

(assert (=> d!2206174 (=> (not res!2881536) (not e!4243319))))

(assert (=> d!2206174 (= res!2881536 (= (content!13704 lt!2534232) (set.union (content!13704 (exprs!7080 lt!2534154)) (content!13704 (exprs!7080 ct2!306)))))))

(assert (=> d!2206174 (= lt!2534232 e!4243318)))

(declare-fun c!1315274 () Bool)

(assert (=> d!2206174 (= c!1315274 (is-Nil!68154 (exprs!7080 lt!2534154)))))

(assert (=> d!2206174 (= (++!15667 (exprs!7080 lt!2534154) (exprs!7080 ct2!306)) lt!2534232)))

(declare-fun b!7058248 () Bool)

(assert (=> b!7058248 (= e!4243319 (or (not (= (exprs!7080 ct2!306) Nil!68154)) (= lt!2534232 (exprs!7080 lt!2534154))))))

(assert (= (and d!2206174 c!1315274) b!7058245))

(assert (= (and d!2206174 (not c!1315274)) b!7058246))

(assert (= (and d!2206174 res!2881536) b!7058247))

(assert (= (and b!7058247 res!2881535) b!7058248))

(declare-fun m!7777350 () Bool)

(assert (=> b!7058247 m!7777350))

(declare-fun m!7777352 () Bool)

(assert (=> b!7058247 m!7777352))

(assert (=> b!7058247 m!7776648))

(declare-fun m!7777354 () Bool)

(assert (=> b!7058246 m!7777354))

(declare-fun m!7777356 () Bool)

(assert (=> d!2206174 m!7777356))

(declare-fun m!7777358 () Bool)

(assert (=> d!2206174 m!7777358))

(assert (=> d!2206174 m!7776656))

(assert (=> bs!1877440 d!2206174))

(declare-fun d!2206176 () Bool)

(assert (=> d!2206176 (= (map!15909 lt!2533927 lambda!421265) (choose!53884 lt!2533927 lambda!421265))))

(declare-fun bs!1877565 () Bool)

(assert (= bs!1877565 d!2206176))

(declare-fun m!7777360 () Bool)

(assert (=> bs!1877565 m!7777360))

(assert (=> d!2205870 d!2206176))

(declare-fun d!2206178 () Bool)

(declare-fun lt!2534233 () Int)

(assert (=> d!2206178 (>= lt!2534233 0)))

(declare-fun e!4243320 () Int)

(assert (=> d!2206178 (= lt!2534233 e!4243320)))

(declare-fun c!1315275 () Bool)

(assert (=> d!2206178 (= c!1315275 (is-Cons!68154 (exprs!7080 (h!74604 (toList!10925 lt!2533927)))))))

(assert (=> d!2206178 (= (contextDepthTotal!520 (h!74604 (toList!10925 lt!2533927))) lt!2534233)))

(declare-fun b!7058249 () Bool)

(assert (=> b!7058249 (= e!4243320 (+ (regexDepthTotal!316 (h!74602 (exprs!7080 (h!74604 (toList!10925 lt!2533927))))) (contextDepthTotal!520 (Context!13161 (t!382057 (exprs!7080 (h!74604 (toList!10925 lt!2533927))))))))))

(declare-fun b!7058250 () Bool)

(assert (=> b!7058250 (= e!4243320 1)))

(assert (= (and d!2206178 c!1315275) b!7058249))

(assert (= (and d!2206178 (not c!1315275)) b!7058250))

(declare-fun m!7777362 () Bool)

(assert (=> b!7058249 m!7777362))

(declare-fun m!7777364 () Bool)

(assert (=> b!7058249 m!7777364))

(assert (=> b!7057817 d!2206178))

(declare-fun d!2206180 () Bool)

(declare-fun lt!2534234 () Int)

(assert (=> d!2206180 (>= lt!2534234 0)))

(declare-fun e!4243321 () Int)

(assert (=> d!2206180 (= lt!2534234 e!4243321)))

(declare-fun c!1315276 () Bool)

(assert (=> d!2206180 (= c!1315276 (is-Cons!68156 (t!382059 (toList!10925 lt!2533927))))))

(assert (=> d!2206180 (= (zipperDepthTotal!549 (t!382059 (toList!10925 lt!2533927))) lt!2534234)))

(declare-fun b!7058251 () Bool)

(assert (=> b!7058251 (= e!4243321 (+ (contextDepthTotal!520 (h!74604 (t!382059 (toList!10925 lt!2533927)))) (zipperDepthTotal!549 (t!382059 (t!382059 (toList!10925 lt!2533927))))))))

(declare-fun b!7058252 () Bool)

(assert (=> b!7058252 (= e!4243321 0)))

(assert (= (and d!2206180 c!1315276) b!7058251))

(assert (= (and d!2206180 (not c!1315276)) b!7058252))

(declare-fun m!7777366 () Bool)

(assert (=> b!7058251 m!7777366))

(declare-fun m!7777368 () Bool)

(assert (=> b!7058251 m!7777368))

(assert (=> b!7057817 d!2206180))

(declare-fun d!2206182 () Bool)

(declare-fun c!1315277 () Bool)

(assert (=> d!2206182 (= c!1315277 (is-Nil!68154 lt!2534129))))

(declare-fun e!4243322 () (Set Regex!17584))

(assert (=> d!2206182 (= (content!13704 lt!2534129) e!4243322)))

(declare-fun b!7058253 () Bool)

(assert (=> b!7058253 (= e!4243322 (as set.empty (Set Regex!17584)))))

(declare-fun b!7058254 () Bool)

(assert (=> b!7058254 (= e!4243322 (set.union (set.insert (h!74602 lt!2534129) (as set.empty (Set Regex!17584))) (content!13704 (t!382057 lt!2534129))))))

(assert (= (and d!2206182 c!1315277) b!7058253))

(assert (= (and d!2206182 (not c!1315277)) b!7058254))

(declare-fun m!7777370 () Bool)

(assert (=> b!7058254 m!7777370))

(declare-fun m!7777372 () Bool)

(assert (=> b!7058254 m!7777372))

(assert (=> d!2205844 d!2206182))

(declare-fun d!2206184 () Bool)

(declare-fun c!1315278 () Bool)

(assert (=> d!2206184 (= c!1315278 (is-Nil!68154 lt!2533935))))

(declare-fun e!4243323 () (Set Regex!17584))

(assert (=> d!2206184 (= (content!13704 lt!2533935) e!4243323)))

(declare-fun b!7058255 () Bool)

(assert (=> b!7058255 (= e!4243323 (as set.empty (Set Regex!17584)))))

(declare-fun b!7058256 () Bool)

(assert (=> b!7058256 (= e!4243323 (set.union (set.insert (h!74602 lt!2533935) (as set.empty (Set Regex!17584))) (content!13704 (t!382057 lt!2533935))))))

(assert (= (and d!2206184 c!1315278) b!7058255))

(assert (= (and d!2206184 (not c!1315278)) b!7058256))

(declare-fun m!7777374 () Bool)

(assert (=> b!7058256 m!7777374))

(assert (=> b!7058256 m!7777290))

(assert (=> d!2205844 d!2206184))

(assert (=> d!2205844 d!2206076))

(declare-fun d!2206186 () Bool)

(declare-fun e!4243329 () Bool)

(assert (=> d!2206186 e!4243329))

(declare-fun res!2881539 () Bool)

(assert (=> d!2206186 (=> (not res!2881539) (not e!4243329))))

(declare-fun a!13517 () Context!13160)

(assert (=> d!2206186 (= res!2881539 (= lt!2533957 (dynLambda!27674 lambda!421194 a!13517)))))

(declare-fun e!4243328 () Bool)

(assert (=> d!2206186 (and (inv!86820 a!13517) e!4243328)))

(assert (=> d!2206186 (= (choose!53888 z1!570 lambda!421194 lt!2533957) a!13517)))

(declare-fun b!7058262 () Bool)

(declare-fun tp!1940605 () Bool)

(assert (=> b!7058262 (= e!4243328 tp!1940605)))

(declare-fun b!7058263 () Bool)

(assert (=> b!7058263 (= e!4243329 (set.member a!13517 z1!570))))

(assert (= d!2206186 b!7058262))

(assert (= (and d!2206186 res!2881539) b!7058263))

(declare-fun b_lambda!268987 () Bool)

(assert (=> (not b_lambda!268987) (not d!2206186)))

(declare-fun m!7777376 () Bool)

(assert (=> d!2206186 m!7777376))

(declare-fun m!7777378 () Bool)

(assert (=> d!2206186 m!7777378))

(declare-fun m!7777380 () Bool)

(assert (=> b!7058263 m!7777380))

(assert (=> d!2205892 d!2206186))

(declare-fun d!2206188 () Bool)

(assert (=> d!2206188 (= (map!15909 z1!570 lambda!421194) (choose!53884 z1!570 lambda!421194))))

(declare-fun bs!1877566 () Bool)

(assert (= bs!1877566 d!2206188))

(declare-fun m!7777382 () Bool)

(assert (=> bs!1877566 m!7777382))

(assert (=> d!2205892 d!2206188))

(declare-fun d!2206190 () Bool)

(assert (=> d!2206190 (= (flatMap!2510 lt!2533956 lambda!421276) (choose!53885 lt!2533956 lambda!421276))))

(declare-fun bs!1877567 () Bool)

(assert (= bs!1877567 d!2206190))

(declare-fun m!7777384 () Bool)

(assert (=> bs!1877567 m!7777384))

(assert (=> d!2205914 d!2206190))

(declare-fun b!7058264 () Bool)

(declare-fun e!4243335 () (Set Context!13160))

(declare-fun call!641264 () (Set Context!13160))

(assert (=> b!7058264 (= e!4243335 call!641264)))

(declare-fun c!1315280 () Bool)

(declare-fun call!641263 () List!68278)

(declare-fun c!1315282 () Bool)

(declare-fun bm!641254 () Bool)

(assert (=> bm!641254 (= call!641263 ($colon$colon!2630 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928)))) (ite (or c!1315282 c!1315280) (regTwo!35680 (h!74602 (exprs!7080 lt!2533928))) (h!74602 (exprs!7080 lt!2533928)))))))

(declare-fun b!7058265 () Bool)

(declare-fun e!4243330 () Bool)

(assert (=> b!7058265 (= c!1315282 e!4243330)))

(declare-fun res!2881540 () Bool)

(assert (=> b!7058265 (=> (not res!2881540) (not e!4243330))))

(assert (=> b!7058265 (= res!2881540 (is-Concat!26429 (h!74602 (exprs!7080 lt!2533928))))))

(declare-fun e!4243333 () (Set Context!13160))

(declare-fun e!4243334 () (Set Context!13160))

(assert (=> b!7058265 (= e!4243333 e!4243334)))

(declare-fun b!7058266 () Bool)

(assert (=> b!7058266 (= e!4243330 (nullable!7267 (regOne!35680 (h!74602 (exprs!7080 lt!2533928)))))))

(declare-fun b!7058267 () Bool)

(declare-fun e!4243332 () (Set Context!13160))

(assert (=> b!7058267 (= e!4243334 e!4243332)))

(assert (=> b!7058267 (= c!1315280 (is-Concat!26429 (h!74602 (exprs!7080 lt!2533928))))))

(declare-fun b!7058268 () Bool)

(assert (=> b!7058268 (= e!4243335 (as set.empty (Set Context!13160)))))

(declare-fun bm!641255 () Bool)

(declare-fun call!641261 () (Set Context!13160))

(declare-fun call!641260 () (Set Context!13160))

(assert (=> bm!641255 (= call!641261 call!641260)))

(declare-fun b!7058269 () Bool)

(declare-fun call!641262 () (Set Context!13160))

(assert (=> b!7058269 (= e!4243333 (set.union call!641260 call!641262))))

(declare-fun b!7058270 () Bool)

(declare-fun c!1315281 () Bool)

(assert (=> b!7058270 (= c!1315281 (is-Star!17584 (h!74602 (exprs!7080 lt!2533928))))))

(assert (=> b!7058270 (= e!4243332 e!4243335)))

(declare-fun bm!641256 () Bool)

(assert (=> bm!641256 (= call!641264 call!641261)))

(declare-fun b!7058271 () Bool)

(declare-fun e!4243331 () (Set Context!13160))

(assert (=> b!7058271 (= e!4243331 (set.insert (Context!13161 (t!382057 (exprs!7080 lt!2533928))) (as set.empty (Set Context!13160))))))

(declare-fun call!641259 () List!68278)

(declare-fun c!1315283 () Bool)

(declare-fun bm!641258 () Bool)

(assert (=> bm!641258 (= call!641260 (derivationStepZipperDown!2218 (ite c!1315283 (regOne!35681 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315282 (regTwo!35680 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315280 (regOne!35680 (h!74602 (exprs!7080 lt!2533928))) (reg!17913 (h!74602 (exprs!7080 lt!2533928)))))) (ite (or c!1315283 c!1315282) (Context!13161 (t!382057 (exprs!7080 lt!2533928))) (Context!13161 call!641259)) (h!74603 s!7408)))))

(declare-fun b!7058272 () Bool)

(assert (=> b!7058272 (= e!4243331 e!4243333)))

(assert (=> b!7058272 (= c!1315283 (is-Union!17584 (h!74602 (exprs!7080 lt!2533928))))))

(declare-fun bm!641259 () Bool)

(assert (=> bm!641259 (= call!641259 call!641263)))

(declare-fun b!7058273 () Bool)

(assert (=> b!7058273 (= e!4243332 call!641264)))

(declare-fun b!7058274 () Bool)

(assert (=> b!7058274 (= e!4243334 (set.union call!641262 call!641261))))

(declare-fun d!2206192 () Bool)

(declare-fun c!1315279 () Bool)

(assert (=> d!2206192 (= c!1315279 (and (is-ElementMatch!17584 (h!74602 (exprs!7080 lt!2533928))) (= (c!1315081 (h!74602 (exprs!7080 lt!2533928))) (h!74603 s!7408))))))

(assert (=> d!2206192 (= (derivationStepZipperDown!2218 (h!74602 (exprs!7080 lt!2533928)) (Context!13161 (t!382057 (exprs!7080 lt!2533928))) (h!74603 s!7408)) e!4243331)))

(declare-fun bm!641257 () Bool)

(assert (=> bm!641257 (= call!641262 (derivationStepZipperDown!2218 (ite c!1315283 (regTwo!35681 (h!74602 (exprs!7080 lt!2533928))) (regOne!35680 (h!74602 (exprs!7080 lt!2533928)))) (ite c!1315283 (Context!13161 (t!382057 (exprs!7080 lt!2533928))) (Context!13161 call!641263)) (h!74603 s!7408)))))

(assert (= (and d!2206192 c!1315279) b!7058271))

(assert (= (and d!2206192 (not c!1315279)) b!7058272))

(assert (= (and b!7058272 c!1315283) b!7058269))

(assert (= (and b!7058272 (not c!1315283)) b!7058265))

(assert (= (and b!7058265 res!2881540) b!7058266))

(assert (= (and b!7058265 c!1315282) b!7058274))

(assert (= (and b!7058265 (not c!1315282)) b!7058267))

(assert (= (and b!7058267 c!1315280) b!7058273))

(assert (= (and b!7058267 (not c!1315280)) b!7058270))

(assert (= (and b!7058270 c!1315281) b!7058264))

(assert (= (and b!7058270 (not c!1315281)) b!7058268))

(assert (= (or b!7058273 b!7058264) bm!641259))

(assert (= (or b!7058273 b!7058264) bm!641256))

(assert (= (or b!7058274 bm!641256) bm!641255))

(assert (= (or b!7058274 bm!641259) bm!641254))

(assert (= (or b!7058269 bm!641255) bm!641258))

(assert (= (or b!7058269 b!7058274) bm!641257))

(declare-fun m!7777386 () Bool)

(assert (=> bm!641258 m!7777386))

(declare-fun m!7777388 () Bool)

(assert (=> bm!641257 m!7777388))

(declare-fun m!7777390 () Bool)

(assert (=> bm!641254 m!7777390))

(declare-fun m!7777392 () Bool)

(assert (=> b!7058271 m!7777392))

(declare-fun m!7777394 () Bool)

(assert (=> b!7058266 m!7777394))

(assert (=> bm!641202 d!2206192))

(declare-fun b!7058275 () Bool)

(declare-fun e!4243341 () (Set Context!13160))

(declare-fun call!641270 () (Set Context!13160))

(assert (=> b!7058275 (= e!4243341 call!641270)))

(declare-fun c!1315287 () Bool)

(declare-fun call!641269 () List!68278)

(declare-fun c!1315285 () Bool)

(declare-fun bm!641260 () Bool)

(assert (=> bm!641260 (= call!641269 ($colon$colon!2630 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))) (ite (or c!1315287 c!1315285) (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))) (h!74602 (exprs!7080 lt!2533926)))))))

(declare-fun b!7058276 () Bool)

(declare-fun e!4243336 () Bool)

(assert (=> b!7058276 (= c!1315287 e!4243336)))

(declare-fun res!2881541 () Bool)

(assert (=> b!7058276 (=> (not res!2881541) (not e!4243336))))

(assert (=> b!7058276 (= res!2881541 (is-Concat!26429 (h!74602 (exprs!7080 lt!2533926))))))

(declare-fun e!4243339 () (Set Context!13160))

(declare-fun e!4243340 () (Set Context!13160))

(assert (=> b!7058276 (= e!4243339 e!4243340)))

(declare-fun b!7058277 () Bool)

(assert (=> b!7058277 (= e!4243336 (nullable!7267 (regOne!35680 (h!74602 (exprs!7080 lt!2533926)))))))

(declare-fun b!7058278 () Bool)

(declare-fun e!4243338 () (Set Context!13160))

(assert (=> b!7058278 (= e!4243340 e!4243338)))

(assert (=> b!7058278 (= c!1315285 (is-Concat!26429 (h!74602 (exprs!7080 lt!2533926))))))

(declare-fun b!7058279 () Bool)

(assert (=> b!7058279 (= e!4243341 (as set.empty (Set Context!13160)))))

(declare-fun bm!641261 () Bool)

(declare-fun call!641267 () (Set Context!13160))

(declare-fun call!641266 () (Set Context!13160))

(assert (=> bm!641261 (= call!641267 call!641266)))

(declare-fun b!7058280 () Bool)

(declare-fun call!641268 () (Set Context!13160))

(assert (=> b!7058280 (= e!4243339 (set.union call!641266 call!641268))))

(declare-fun b!7058281 () Bool)

(declare-fun c!1315286 () Bool)

(assert (=> b!7058281 (= c!1315286 (is-Star!17584 (h!74602 (exprs!7080 lt!2533926))))))

(assert (=> b!7058281 (= e!4243338 e!4243341)))

(declare-fun bm!641262 () Bool)

(assert (=> bm!641262 (= call!641270 call!641267)))

(declare-fun b!7058282 () Bool)

(declare-fun e!4243337 () (Set Context!13160))

(assert (=> b!7058282 (= e!4243337 (set.insert (Context!13161 (t!382057 (exprs!7080 lt!2533926))) (as set.empty (Set Context!13160))))))

(declare-fun bm!641264 () Bool)

(declare-fun call!641265 () List!68278)

(declare-fun c!1315288 () Bool)

(assert (=> bm!641264 (= call!641266 (derivationStepZipperDown!2218 (ite c!1315288 (regOne!35681 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315287 (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315285 (regOne!35680 (h!74602 (exprs!7080 lt!2533926))) (reg!17913 (h!74602 (exprs!7080 lt!2533926)))))) (ite (or c!1315288 c!1315287) (Context!13161 (t!382057 (exprs!7080 lt!2533926))) (Context!13161 call!641265)) (h!74603 s!7408)))))

(declare-fun b!7058283 () Bool)

(assert (=> b!7058283 (= e!4243337 e!4243339)))

(assert (=> b!7058283 (= c!1315288 (is-Union!17584 (h!74602 (exprs!7080 lt!2533926))))))

(declare-fun bm!641265 () Bool)

(assert (=> bm!641265 (= call!641265 call!641269)))

(declare-fun b!7058284 () Bool)

(assert (=> b!7058284 (= e!4243338 call!641270)))

(declare-fun b!7058285 () Bool)

(assert (=> b!7058285 (= e!4243340 (set.union call!641268 call!641267))))

(declare-fun d!2206194 () Bool)

(declare-fun c!1315284 () Bool)

(assert (=> d!2206194 (= c!1315284 (and (is-ElementMatch!17584 (h!74602 (exprs!7080 lt!2533926))) (= (c!1315081 (h!74602 (exprs!7080 lt!2533926))) (h!74603 s!7408))))))

(assert (=> d!2206194 (= (derivationStepZipperDown!2218 (h!74602 (exprs!7080 lt!2533926)) (Context!13161 (t!382057 (exprs!7080 lt!2533926))) (h!74603 s!7408)) e!4243337)))

(declare-fun bm!641263 () Bool)

(assert (=> bm!641263 (= call!641268 (derivationStepZipperDown!2218 (ite c!1315288 (regTwo!35681 (h!74602 (exprs!7080 lt!2533926))) (regOne!35680 (h!74602 (exprs!7080 lt!2533926)))) (ite c!1315288 (Context!13161 (t!382057 (exprs!7080 lt!2533926))) (Context!13161 call!641269)) (h!74603 s!7408)))))

(assert (= (and d!2206194 c!1315284) b!7058282))

(assert (= (and d!2206194 (not c!1315284)) b!7058283))

(assert (= (and b!7058283 c!1315288) b!7058280))

(assert (= (and b!7058283 (not c!1315288)) b!7058276))

(assert (= (and b!7058276 res!2881541) b!7058277))

(assert (= (and b!7058276 c!1315287) b!7058285))

(assert (= (and b!7058276 (not c!1315287)) b!7058278))

(assert (= (and b!7058278 c!1315285) b!7058284))

(assert (= (and b!7058278 (not c!1315285)) b!7058281))

(assert (= (and b!7058281 c!1315286) b!7058275))

(assert (= (and b!7058281 (not c!1315286)) b!7058279))

(assert (= (or b!7058284 b!7058275) bm!641265))

(assert (= (or b!7058284 b!7058275) bm!641262))

(assert (= (or b!7058285 bm!641262) bm!641261))

(assert (= (or b!7058285 bm!641265) bm!641260))

(assert (= (or b!7058280 bm!641261) bm!641264))

(assert (= (or b!7058280 b!7058285) bm!641263))

(declare-fun m!7777396 () Bool)

(assert (=> bm!641264 m!7777396))

(declare-fun m!7777398 () Bool)

(assert (=> bm!641263 m!7777398))

(declare-fun m!7777400 () Bool)

(assert (=> bm!641260 m!7777400))

(declare-fun m!7777402 () Bool)

(assert (=> b!7058282 m!7777402))

(declare-fun m!7777404 () Bool)

(assert (=> b!7058277 m!7777404))

(assert (=> bm!641182 d!2206194))

(declare-fun bs!1877568 () Bool)

(declare-fun d!2206196 () Bool)

(assert (= bs!1877568 (and d!2206196 d!2206096)))

(declare-fun lambda!421313 () Int)

(assert (=> bs!1877568 (= lambda!421313 lambda!421302)))

(declare-fun bs!1877569 () Bool)

(assert (= bs!1877569 (and d!2206196 d!2206128)))

(assert (=> bs!1877569 (= lambda!421313 lambda!421305)))

(declare-fun bs!1877570 () Bool)

(assert (= bs!1877570 (and d!2206196 d!2205874)))

(assert (=> bs!1877570 (not (= lambda!421313 lambda!421268))))

(declare-fun bs!1877571 () Bool)

(assert (= bs!1877571 (and d!2206196 d!2206130)))

(assert (=> bs!1877571 (= lambda!421313 lambda!421306)))

(declare-fun bs!1877572 () Bool)

(assert (= bs!1877572 (and d!2206196 b!7057676)))

(assert (=> bs!1877572 (not (= lambda!421313 lambda!421193))))

(declare-fun bs!1877573 () Bool)

(assert (= bs!1877573 (and d!2206196 d!2206170)))

(assert (=> bs!1877573 (= lambda!421313 lambda!421312)))

(declare-fun bs!1877574 () Bool)

(assert (= bs!1877574 (and d!2206196 d!2205876)))

(assert (=> bs!1877574 (not (= lambda!421313 lambda!421271))))

(declare-fun bs!1877575 () Bool)

(assert (= bs!1877575 (and d!2206196 d!2206158)))

(assert (=> bs!1877575 (not (= lambda!421313 lambda!421311))))

(declare-fun bs!1877576 () Bool)

(assert (= bs!1877576 (and d!2206196 d!2206156)))

(assert (=> bs!1877576 (not (= lambda!421313 lambda!421308))))

(assert (=> d!2206196 (= (nullableZipper!2667 lt!2533946) (exists!3584 lt!2533946 lambda!421313))))

(declare-fun bs!1877577 () Bool)

(assert (= bs!1877577 d!2206196))

(declare-fun m!7777406 () Bool)

(assert (=> bs!1877577 m!7777406))

(assert (=> b!7057826 d!2206196))

(declare-fun d!2206198 () Bool)

(declare-fun c!1315289 () Bool)

(assert (=> d!2206198 (= c!1315289 (isEmpty!39754 (tail!13726 (t!382058 s!7408))))))

(declare-fun e!4243342 () Bool)

(assert (=> d!2206198 (= (matchZipper!3124 (derivationStepZipper!3034 lt!2533938 (head!14368 (t!382058 s!7408))) (tail!13726 (t!382058 s!7408))) e!4243342)))

(declare-fun b!7058286 () Bool)

(assert (=> b!7058286 (= e!4243342 (nullableZipper!2667 (derivationStepZipper!3034 lt!2533938 (head!14368 (t!382058 s!7408)))))))

(declare-fun b!7058287 () Bool)

(assert (=> b!7058287 (= e!4243342 (matchZipper!3124 (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533938 (head!14368 (t!382058 s!7408))) (head!14368 (tail!13726 (t!382058 s!7408)))) (tail!13726 (tail!13726 (t!382058 s!7408)))))))

(assert (= (and d!2206198 c!1315289) b!7058286))

(assert (= (and d!2206198 (not c!1315289)) b!7058287))

(assert (=> d!2206198 m!7776696))

(assert (=> d!2206198 m!7777122))

(assert (=> b!7058286 m!7776784))

(declare-fun m!7777408 () Bool)

(assert (=> b!7058286 m!7777408))

(assert (=> b!7058287 m!7776696))

(assert (=> b!7058287 m!7777126))

(assert (=> b!7058287 m!7776784))

(assert (=> b!7058287 m!7777126))

(declare-fun m!7777410 () Bool)

(assert (=> b!7058287 m!7777410))

(assert (=> b!7058287 m!7776696))

(assert (=> b!7058287 m!7777130))

(assert (=> b!7058287 m!7777410))

(assert (=> b!7058287 m!7777130))

(declare-fun m!7777412 () Bool)

(assert (=> b!7058287 m!7777412))

(assert (=> b!7057857 d!2206198))

(declare-fun bs!1877578 () Bool)

(declare-fun d!2206200 () Bool)

(assert (= bs!1877578 (and d!2206200 d!2206056)))

(declare-fun lambda!421314 () Int)

(assert (=> bs!1877578 (= lambda!421314 lambda!421298)))

(declare-fun bs!1877579 () Bool)

(assert (= bs!1877579 (and d!2206200 d!2205914)))

(assert (=> bs!1877579 (= (= (head!14368 (t!382058 s!7408)) (h!74603 s!7408)) (= lambda!421314 lambda!421276))))

(declare-fun bs!1877580 () Bool)

(assert (= bs!1877580 (and d!2206200 d!2206094)))

(assert (=> bs!1877580 (= lambda!421314 lambda!421299)))

(declare-fun bs!1877581 () Bool)

(assert (= bs!1877581 (and d!2206200 d!2206138)))

(assert (=> bs!1877581 (= (= (head!14368 (t!382058 s!7408)) (head!14368 s!7408)) (= lambda!421314 lambda!421307))))

(declare-fun bs!1877582 () Bool)

(assert (= bs!1877582 (and d!2206200 d!2206100)))

(assert (=> bs!1877582 (= (= (head!14368 (t!382058 s!7408)) (head!14368 s!7408)) (= lambda!421314 lambda!421303))))

(declare-fun bs!1877583 () Bool)

(assert (= bs!1877583 (and d!2206200 d!2206120)))

(assert (=> bs!1877583 (= lambda!421314 lambda!421304)))

(declare-fun bs!1877584 () Bool)

(assert (= bs!1877584 (and d!2206200 b!7057661)))

(assert (=> bs!1877584 (= (= (head!14368 (t!382058 s!7408)) (h!74603 s!7408)) (= lambda!421314 lambda!421196))))

(declare-fun bs!1877585 () Bool)

(assert (= bs!1877585 (and d!2206200 d!2205882)))

(assert (=> bs!1877585 (= (= (head!14368 (t!382058 s!7408)) (h!74603 s!7408)) (= lambda!421314 lambda!421274))))

(assert (=> d!2206200 true))

(assert (=> d!2206200 (= (derivationStepZipper!3034 lt!2533938 (head!14368 (t!382058 s!7408))) (flatMap!2510 lt!2533938 lambda!421314))))

(declare-fun bs!1877586 () Bool)

(assert (= bs!1877586 d!2206200))

(declare-fun m!7777414 () Bool)

(assert (=> bs!1877586 m!7777414))

(assert (=> b!7057857 d!2206200))

(assert (=> b!7057857 d!2206058))

(assert (=> b!7057857 d!2206060))

(declare-fun d!2206202 () Bool)

(assert (=> d!2206202 (= (nullable!7267 (h!74602 (exprs!7080 lt!2533961))) (nullableFct!2783 (h!74602 (exprs!7080 lt!2533961))))))

(declare-fun bs!1877587 () Bool)

(assert (= bs!1877587 d!2206202))

(declare-fun m!7777416 () Bool)

(assert (=> bs!1877587 m!7777416))

(assert (=> b!7057841 d!2206202))

(declare-fun d!2206204 () Bool)

(assert (=> d!2206204 (= (nullable!7267 (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))) (nullableFct!2783 (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))))

(declare-fun bs!1877588 () Bool)

(assert (= bs!1877588 d!2206204))

(declare-fun m!7777418 () Bool)

(assert (=> bs!1877588 m!7777418))

(assert (=> b!7057888 d!2206204))

(declare-fun bs!1877589 () Bool)

(declare-fun d!2206206 () Bool)

(assert (= bs!1877589 (and d!2206206 d!2206096)))

(declare-fun lambda!421315 () Int)

(assert (=> bs!1877589 (= lambda!421315 lambda!421302)))

(declare-fun bs!1877590 () Bool)

(assert (= bs!1877590 (and d!2206206 d!2206128)))

(assert (=> bs!1877590 (= lambda!421315 lambda!421305)))

(declare-fun bs!1877591 () Bool)

(assert (= bs!1877591 (and d!2206206 d!2205874)))

(assert (=> bs!1877591 (not (= lambda!421315 lambda!421268))))

(declare-fun bs!1877592 () Bool)

(assert (= bs!1877592 (and d!2206206 d!2206130)))

(assert (=> bs!1877592 (= lambda!421315 lambda!421306)))

(declare-fun bs!1877593 () Bool)

(assert (= bs!1877593 (and d!2206206 d!2206196)))

(assert (=> bs!1877593 (= lambda!421315 lambda!421313)))

(declare-fun bs!1877594 () Bool)

(assert (= bs!1877594 (and d!2206206 b!7057676)))

(assert (=> bs!1877594 (not (= lambda!421315 lambda!421193))))

(declare-fun bs!1877595 () Bool)

(assert (= bs!1877595 (and d!2206206 d!2206170)))

(assert (=> bs!1877595 (= lambda!421315 lambda!421312)))

(declare-fun bs!1877596 () Bool)

(assert (= bs!1877596 (and d!2206206 d!2205876)))

(assert (=> bs!1877596 (not (= lambda!421315 lambda!421271))))

(declare-fun bs!1877597 () Bool)

(assert (= bs!1877597 (and d!2206206 d!2206158)))

(assert (=> bs!1877597 (not (= lambda!421315 lambda!421311))))

(declare-fun bs!1877598 () Bool)

(assert (= bs!1877598 (and d!2206206 d!2206156)))

(assert (=> bs!1877598 (not (= lambda!421315 lambda!421308))))

(assert (=> d!2206206 (= (nullableZipper!2667 lt!2533930) (exists!3584 lt!2533930 lambda!421315))))

(declare-fun bs!1877599 () Bool)

(assert (= bs!1877599 d!2206206))

(declare-fun m!7777420 () Bool)

(assert (=> bs!1877599 m!7777420))

(assert (=> b!7057771 d!2206206))

(declare-fun d!2206208 () Bool)

(declare-fun lt!2534235 () Int)

(assert (=> d!2206208 (>= lt!2534235 0)))

(declare-fun e!4243343 () Int)

(assert (=> d!2206208 (= lt!2534235 e!4243343)))

(declare-fun c!1315290 () Bool)

(assert (=> d!2206208 (= c!1315290 (is-Nil!68155 (t!382058 s!7408)))))

(assert (=> d!2206208 (= (ListPrimitiveSize!405 (t!382058 s!7408)) lt!2534235)))

(declare-fun b!7058288 () Bool)

(assert (=> b!7058288 (= e!4243343 0)))

(declare-fun b!7058289 () Bool)

(assert (=> b!7058289 (= e!4243343 (+ 1 (ListPrimitiveSize!405 (t!382058 (t!382058 s!7408)))))))

(assert (= (and d!2206208 c!1315290) b!7058288))

(assert (= (and d!2206208 (not c!1315290)) b!7058289))

(declare-fun m!7777422 () Bool)

(assert (=> b!7058289 m!7777422))

(assert (=> b!7057825 d!2206208))

(declare-fun d!2206210 () Bool)

(assert (=> d!2206210 (= ($colon$colon!2630 (exprs!7080 lt!2533961) (ite (or c!1315150 c!1315148) (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (h!74602 (exprs!7080 lt!2533918)))) (Cons!68154 (ite (or c!1315150 c!1315148) (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (h!74602 (exprs!7080 lt!2533918))) (exprs!7080 lt!2533961)))))

(assert (=> bm!641196 d!2206210))

(assert (=> bs!1877441 d!2205916))

(declare-fun b!7058290 () Bool)

(declare-fun e!4243344 () (Set Context!13160))

(declare-fun call!641271 () (Set Context!13160))

(assert (=> b!7058290 (= e!4243344 call!641271)))

(declare-fun b!7058291 () Bool)

(declare-fun e!4243345 () Bool)

(assert (=> b!7058291 (= e!4243345 (nullable!7267 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))))))

(declare-fun e!4243346 () (Set Context!13160))

(declare-fun b!7058292 () Bool)

(assert (=> b!7058292 (= e!4243346 (set.union call!641271 (derivationStepZipperUp!2168 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))) (h!74603 s!7408))))))

(declare-fun b!7058293 () Bool)

(assert (=> b!7058293 (= e!4243344 (as set.empty (Set Context!13160)))))

(declare-fun b!7058294 () Bool)

(assert (=> b!7058294 (= e!4243346 e!4243344)))

(declare-fun c!1315292 () Bool)

(assert (=> b!7058294 (= c!1315292 (is-Cons!68154 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926))))))))

(declare-fun d!2206212 () Bool)

(declare-fun c!1315291 () Bool)

(assert (=> d!2206212 (= c!1315291 e!4243345)))

(declare-fun res!2881542 () Bool)

(assert (=> d!2206212 (=> (not res!2881542) (not e!4243345))))

(assert (=> d!2206212 (= res!2881542 (is-Cons!68154 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926))))))))

(assert (=> d!2206212 (= (derivationStepZipperUp!2168 (Context!13161 (t!382057 (exprs!7080 lt!2533926))) (h!74603 s!7408)) e!4243346)))

(declare-fun bm!641266 () Bool)

(assert (=> bm!641266 (= call!641271 (derivationStepZipperDown!2218 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926))))) (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))) (h!74603 s!7408)))))

(assert (= (and d!2206212 res!2881542) b!7058291))

(assert (= (and d!2206212 c!1315291) b!7058292))

(assert (= (and d!2206212 (not c!1315291)) b!7058294))

(assert (= (and b!7058294 c!1315292) b!7058290))

(assert (= (and b!7058294 (not c!1315292)) b!7058293))

(assert (= (or b!7058292 b!7058290) bm!641266))

(declare-fun m!7777424 () Bool)

(assert (=> b!7058291 m!7777424))

(declare-fun m!7777426 () Bool)

(assert (=> b!7058292 m!7777426))

(declare-fun m!7777428 () Bool)

(assert (=> bm!641266 m!7777428))

(assert (=> b!7057785 d!2206212))

(assert (=> d!2205862 d!2206088))

(declare-fun bs!1877600 () Bool)

(declare-fun d!2206214 () Bool)

(assert (= bs!1877600 (and d!2206214 d!2206096)))

(declare-fun lambda!421316 () Int)

(assert (=> bs!1877600 (= lambda!421316 lambda!421302)))

(declare-fun bs!1877601 () Bool)

(assert (= bs!1877601 (and d!2206214 d!2206206)))

(assert (=> bs!1877601 (= lambda!421316 lambda!421315)))

(declare-fun bs!1877602 () Bool)

(assert (= bs!1877602 (and d!2206214 d!2206128)))

(assert (=> bs!1877602 (= lambda!421316 lambda!421305)))

(declare-fun bs!1877603 () Bool)

(assert (= bs!1877603 (and d!2206214 d!2205874)))

(assert (=> bs!1877603 (not (= lambda!421316 lambda!421268))))

(declare-fun bs!1877604 () Bool)

(assert (= bs!1877604 (and d!2206214 d!2206130)))

(assert (=> bs!1877604 (= lambda!421316 lambda!421306)))

(declare-fun bs!1877605 () Bool)

(assert (= bs!1877605 (and d!2206214 d!2206196)))

(assert (=> bs!1877605 (= lambda!421316 lambda!421313)))

(declare-fun bs!1877606 () Bool)

(assert (= bs!1877606 (and d!2206214 b!7057676)))

(assert (=> bs!1877606 (not (= lambda!421316 lambda!421193))))

(declare-fun bs!1877607 () Bool)

(assert (= bs!1877607 (and d!2206214 d!2206170)))

(assert (=> bs!1877607 (= lambda!421316 lambda!421312)))

(declare-fun bs!1877608 () Bool)

(assert (= bs!1877608 (and d!2206214 d!2205876)))

(assert (=> bs!1877608 (not (= lambda!421316 lambda!421271))))

(declare-fun bs!1877609 () Bool)

(assert (= bs!1877609 (and d!2206214 d!2206158)))

(assert (=> bs!1877609 (not (= lambda!421316 lambda!421311))))

(declare-fun bs!1877610 () Bool)

(assert (= bs!1877610 (and d!2206214 d!2206156)))

(assert (=> bs!1877610 (not (= lambda!421316 lambda!421308))))

(assert (=> d!2206214 (= (nullableZipper!2667 lt!2533929) (exists!3584 lt!2533929 lambda!421316))))

(declare-fun bs!1877611 () Bool)

(assert (= bs!1877611 d!2206214))

(declare-fun m!7777430 () Bool)

(assert (=> bs!1877611 m!7777430))

(assert (=> b!7057860 d!2206214))

(declare-fun b!7058295 () Bool)

(declare-fun e!4243347 () (Set Context!13160))

(declare-fun call!641272 () (Set Context!13160))

(assert (=> b!7058295 (= e!4243347 call!641272)))

(declare-fun b!7058296 () Bool)

(declare-fun e!4243348 () Bool)

(assert (=> b!7058296 (= e!4243348 (nullable!7267 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928)))))))))

(declare-fun b!7058297 () Bool)

(declare-fun e!4243349 () (Set Context!13160))

(assert (=> b!7058297 (= e!4243349 (set.union call!641272 (derivationStepZipperUp!2168 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928)))))) (h!74603 s!7408))))))

(declare-fun b!7058298 () Bool)

(assert (=> b!7058298 (= e!4243347 (as set.empty (Set Context!13160)))))

(declare-fun b!7058299 () Bool)

(assert (=> b!7058299 (= e!4243349 e!4243347)))

(declare-fun c!1315294 () Bool)

(assert (=> b!7058299 (= c!1315294 (is-Cons!68154 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928))))))))

(declare-fun d!2206216 () Bool)

(declare-fun c!1315293 () Bool)

(assert (=> d!2206216 (= c!1315293 e!4243348)))

(declare-fun res!2881543 () Bool)

(assert (=> d!2206216 (=> (not res!2881543) (not e!4243348))))

(assert (=> d!2206216 (= res!2881543 (is-Cons!68154 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928))))))))

(assert (=> d!2206216 (= (derivationStepZipperUp!2168 (Context!13161 (t!382057 (exprs!7080 lt!2533928))) (h!74603 s!7408)) e!4243349)))

(declare-fun bm!641267 () Bool)

(assert (=> bm!641267 (= call!641272 (derivationStepZipperDown!2218 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928))))) (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928)))))) (h!74603 s!7408)))))

(assert (= (and d!2206216 res!2881543) b!7058296))

(assert (= (and d!2206216 c!1315293) b!7058297))

(assert (= (and d!2206216 (not c!1315293)) b!7058299))

(assert (= (and b!7058299 c!1315294) b!7058295))

(assert (= (and b!7058299 (not c!1315294)) b!7058298))

(assert (= (or b!7058297 b!7058295) bm!641267))

(declare-fun m!7777432 () Bool)

(assert (=> b!7058296 m!7777432))

(declare-fun m!7777434 () Bool)

(assert (=> b!7058297 m!7777434))

(declare-fun m!7777436 () Bool)

(assert (=> bm!641267 m!7777436))

(assert (=> b!7057901 d!2206216))

(declare-fun b!7058300 () Bool)

(declare-fun e!4243350 () Int)

(declare-fun e!4243351 () Int)

(assert (=> b!7058300 (= e!4243350 e!4243351)))

(declare-fun c!1315295 () Bool)

(assert (=> b!7058300 (= c!1315295 (is-Star!17584 (h!74602 (exprs!7080 lt!2533918))))))

(declare-fun b!7058301 () Bool)

(declare-fun e!4243353 () Int)

(declare-fun e!4243352 () Int)

(assert (=> b!7058301 (= e!4243353 e!4243352)))

(declare-fun c!1315298 () Bool)

(assert (=> b!7058301 (= c!1315298 (is-Concat!26429 (h!74602 (exprs!7080 lt!2533918))))))

(declare-fun b!7058302 () Bool)

(declare-fun c!1315296 () Bool)

(assert (=> b!7058302 (= c!1315296 (is-Union!17584 (h!74602 (exprs!7080 lt!2533918))))))

(assert (=> b!7058302 (= e!4243351 e!4243353)))

(declare-fun bm!641268 () Bool)

(declare-fun call!641275 () Int)

(assert (=> bm!641268 (= call!641275 (regexDepthTotal!316 (ite c!1315295 (reg!17913 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315296 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))))))

(declare-fun b!7058303 () Bool)

(assert (=> b!7058303 (= e!4243352 1)))

(declare-fun b!7058304 () Bool)

(declare-fun call!641273 () Int)

(declare-fun call!641274 () Int)

(assert (=> b!7058304 (= e!4243352 (+ 1 call!641273 call!641274))))

(declare-fun d!2206218 () Bool)

(declare-fun lt!2534236 () Int)

(assert (=> d!2206218 (> lt!2534236 0)))

(assert (=> d!2206218 (= lt!2534236 e!4243350)))

(declare-fun c!1315297 () Bool)

(assert (=> d!2206218 (= c!1315297 (is-ElementMatch!17584 (h!74602 (exprs!7080 lt!2533918))))))

(assert (=> d!2206218 (= (regexDepthTotal!316 (h!74602 (exprs!7080 lt!2533918))) lt!2534236)))

(declare-fun b!7058305 () Bool)

(assert (=> b!7058305 (= e!4243353 (+ 1 call!641274 call!641273))))

(declare-fun b!7058306 () Bool)

(assert (=> b!7058306 (= e!4243351 (+ 1 call!641275))))

(declare-fun bm!641269 () Bool)

(assert (=> bm!641269 (= call!641274 (regexDepthTotal!316 (ite c!1315296 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))))))))

(declare-fun b!7058307 () Bool)

(assert (=> b!7058307 (= e!4243350 1)))

(declare-fun bm!641270 () Bool)

(assert (=> bm!641270 (= call!641273 call!641275)))

(assert (= (and d!2206218 c!1315297) b!7058307))

(assert (= (and d!2206218 (not c!1315297)) b!7058300))

(assert (= (and b!7058300 c!1315295) b!7058306))

(assert (= (and b!7058300 (not c!1315295)) b!7058302))

(assert (= (and b!7058302 c!1315296) b!7058305))

(assert (= (and b!7058302 (not c!1315296)) b!7058301))

(assert (= (and b!7058301 c!1315298) b!7058304))

(assert (= (and b!7058301 (not c!1315298)) b!7058303))

(assert (= (or b!7058305 b!7058304) bm!641270))

(assert (= (or b!7058305 b!7058304) bm!641269))

(assert (= (or b!7058306 bm!641270) bm!641268))

(declare-fun m!7777438 () Bool)

(assert (=> bm!641268 m!7777438))

(declare-fun m!7777440 () Bool)

(assert (=> bm!641269 m!7777440))

(assert (=> b!7057792 d!2206218))

(declare-fun d!2206220 () Bool)

(declare-fun lt!2534237 () Int)

(assert (=> d!2206220 (>= lt!2534237 0)))

(declare-fun e!4243354 () Int)

(assert (=> d!2206220 (= lt!2534237 e!4243354)))

(declare-fun c!1315299 () Bool)

(assert (=> d!2206220 (= c!1315299 (is-Cons!68154 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533918))))))))

(assert (=> d!2206220 (= (contextDepthTotal!520 (Context!13161 (t!382057 (exprs!7080 lt!2533918)))) lt!2534237)))

(declare-fun b!7058308 () Bool)

(assert (=> b!7058308 (= e!4243354 (+ (regexDepthTotal!316 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533918)))))) (contextDepthTotal!520 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533918)))))))))))

(declare-fun b!7058309 () Bool)

(assert (=> b!7058309 (= e!4243354 1)))

(assert (= (and d!2206220 c!1315299) b!7058308))

(assert (= (and d!2206220 (not c!1315299)) b!7058309))

(declare-fun m!7777442 () Bool)

(assert (=> b!7058308 m!7777442))

(declare-fun m!7777444 () Bool)

(assert (=> b!7058308 m!7777444))

(assert (=> b!7057792 d!2206220))

(declare-fun d!2206222 () Bool)

(assert (=> d!2206222 (forall!16536 (++!15667 (exprs!7080 lt!2533926) (exprs!7080 ct2!306)) lambda!421195)))

(declare-fun lt!2534238 () Unit!161841)

(assert (=> d!2206222 (= lt!2534238 (choose!53883 (exprs!7080 lt!2533926) (exprs!7080 ct2!306) lambda!421195))))

(assert (=> d!2206222 (forall!16536 (exprs!7080 lt!2533926) lambda!421195)))

(assert (=> d!2206222 (= (lemmaConcatPreservesForall!895 (exprs!7080 lt!2533926) (exprs!7080 ct2!306) lambda!421195) lt!2534238)))

(declare-fun bs!1877612 () Bool)

(assert (= bs!1877612 d!2206222))

(assert (=> bs!1877612 m!7776844))

(assert (=> bs!1877612 m!7776844))

(declare-fun m!7777446 () Bool)

(assert (=> bs!1877612 m!7777446))

(declare-fun m!7777448 () Bool)

(assert (=> bs!1877612 m!7777448))

(declare-fun m!7777450 () Bool)

(assert (=> bs!1877612 m!7777450))

(assert (=> bs!1877438 d!2206222))

(declare-fun b!7058310 () Bool)

(declare-fun e!4243355 () List!68278)

(assert (=> b!7058310 (= e!4243355 (exprs!7080 ct2!306))))

(declare-fun b!7058312 () Bool)

(declare-fun res!2881544 () Bool)

(declare-fun e!4243356 () Bool)

(assert (=> b!7058312 (=> (not res!2881544) (not e!4243356))))

(declare-fun lt!2534239 () List!68278)

(assert (=> b!7058312 (= res!2881544 (= (size!41161 lt!2534239) (+ (size!41161 (exprs!7080 lt!2533926)) (size!41161 (exprs!7080 ct2!306)))))))

(declare-fun b!7058311 () Bool)

(assert (=> b!7058311 (= e!4243355 (Cons!68154 (h!74602 (exprs!7080 lt!2533926)) (++!15667 (t!382057 (exprs!7080 lt!2533926)) (exprs!7080 ct2!306))))))

(declare-fun d!2206224 () Bool)

(assert (=> d!2206224 e!4243356))

(declare-fun res!2881545 () Bool)

(assert (=> d!2206224 (=> (not res!2881545) (not e!4243356))))

(assert (=> d!2206224 (= res!2881545 (= (content!13704 lt!2534239) (set.union (content!13704 (exprs!7080 lt!2533926)) (content!13704 (exprs!7080 ct2!306)))))))

(assert (=> d!2206224 (= lt!2534239 e!4243355)))

(declare-fun c!1315300 () Bool)

(assert (=> d!2206224 (= c!1315300 (is-Nil!68154 (exprs!7080 lt!2533926)))))

(assert (=> d!2206224 (= (++!15667 (exprs!7080 lt!2533926) (exprs!7080 ct2!306)) lt!2534239)))

(declare-fun b!7058313 () Bool)

(assert (=> b!7058313 (= e!4243356 (or (not (= (exprs!7080 ct2!306) Nil!68154)) (= lt!2534239 (exprs!7080 lt!2533926))))))

(assert (= (and d!2206224 c!1315300) b!7058310))

(assert (= (and d!2206224 (not c!1315300)) b!7058311))

(assert (= (and d!2206224 res!2881545) b!7058312))

(assert (= (and b!7058312 res!2881544) b!7058313))

(declare-fun m!7777452 () Bool)

(assert (=> b!7058312 m!7777452))

(declare-fun m!7777454 () Bool)

(assert (=> b!7058312 m!7777454))

(assert (=> b!7058312 m!7776648))

(declare-fun m!7777456 () Bool)

(assert (=> b!7058311 m!7777456))

(declare-fun m!7777458 () Bool)

(assert (=> d!2206224 m!7777458))

(declare-fun m!7777460 () Bool)

(assert (=> d!2206224 m!7777460))

(assert (=> d!2206224 m!7776656))

(assert (=> bs!1877438 d!2206224))

(declare-fun d!2206226 () Bool)

(declare-fun c!1315301 () Bool)

(assert (=> d!2206226 (= c!1315301 (isEmpty!39754 (tail!13726 s!7408)))))

(declare-fun e!4243357 () Bool)

(assert (=> d!2206226 (= (matchZipper!3124 (derivationStepZipper!3034 lt!2533953 (head!14368 s!7408)) (tail!13726 s!7408)) e!4243357)))

(declare-fun b!7058314 () Bool)

(assert (=> b!7058314 (= e!4243357 (nullableZipper!2667 (derivationStepZipper!3034 lt!2533953 (head!14368 s!7408))))))

(declare-fun b!7058315 () Bool)

(assert (=> b!7058315 (= e!4243357 (matchZipper!3124 (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533953 (head!14368 s!7408)) (head!14368 (tail!13726 s!7408))) (tail!13726 (tail!13726 s!7408))))))

(assert (= (and d!2206226 c!1315301) b!7058314))

(assert (= (and d!2206226 (not c!1315301)) b!7058315))

(assert (=> d!2206226 m!7776606))

(assert (=> d!2206226 m!7777212))

(assert (=> b!7058314 m!7776804))

(declare-fun m!7777462 () Bool)

(assert (=> b!7058314 m!7777462))

(assert (=> b!7058315 m!7776606))

(assert (=> b!7058315 m!7777216))

(assert (=> b!7058315 m!7776804))

(assert (=> b!7058315 m!7777216))

(declare-fun m!7777464 () Bool)

(assert (=> b!7058315 m!7777464))

(assert (=> b!7058315 m!7776606))

(assert (=> b!7058315 m!7777220))

(assert (=> b!7058315 m!7777464))

(assert (=> b!7058315 m!7777220))

(declare-fun m!7777466 () Bool)

(assert (=> b!7058315 m!7777466))

(assert (=> b!7057863 d!2206226))

(declare-fun bs!1877613 () Bool)

(declare-fun d!2206228 () Bool)

(assert (= bs!1877613 (and d!2206228 d!2206056)))

(declare-fun lambda!421317 () Int)

(assert (=> bs!1877613 (= (= (head!14368 s!7408) (head!14368 (t!382058 s!7408))) (= lambda!421317 lambda!421298))))

(declare-fun bs!1877614 () Bool)

(assert (= bs!1877614 (and d!2206228 d!2205914)))

(assert (=> bs!1877614 (= (= (head!14368 s!7408) (h!74603 s!7408)) (= lambda!421317 lambda!421276))))

(declare-fun bs!1877615 () Bool)

(assert (= bs!1877615 (and d!2206228 d!2206094)))

(assert (=> bs!1877615 (= (= (head!14368 s!7408) (head!14368 (t!382058 s!7408))) (= lambda!421317 lambda!421299))))

(declare-fun bs!1877616 () Bool)

(assert (= bs!1877616 (and d!2206228 d!2206138)))

(assert (=> bs!1877616 (= lambda!421317 lambda!421307)))

(declare-fun bs!1877617 () Bool)

(assert (= bs!1877617 (and d!2206228 d!2206100)))

(assert (=> bs!1877617 (= lambda!421317 lambda!421303)))

(declare-fun bs!1877618 () Bool)

(assert (= bs!1877618 (and d!2206228 d!2206120)))

(assert (=> bs!1877618 (= (= (head!14368 s!7408) (head!14368 (t!382058 s!7408))) (= lambda!421317 lambda!421304))))

(declare-fun bs!1877619 () Bool)

(assert (= bs!1877619 (and d!2206228 d!2206200)))

(assert (=> bs!1877619 (= (= (head!14368 s!7408) (head!14368 (t!382058 s!7408))) (= lambda!421317 lambda!421314))))

(declare-fun bs!1877620 () Bool)

(assert (= bs!1877620 (and d!2206228 b!7057661)))

(assert (=> bs!1877620 (= (= (head!14368 s!7408) (h!74603 s!7408)) (= lambda!421317 lambda!421196))))

(declare-fun bs!1877621 () Bool)

(assert (= bs!1877621 (and d!2206228 d!2205882)))

(assert (=> bs!1877621 (= (= (head!14368 s!7408) (h!74603 s!7408)) (= lambda!421317 lambda!421274))))

(assert (=> d!2206228 true))

(assert (=> d!2206228 (= (derivationStepZipper!3034 lt!2533953 (head!14368 s!7408)) (flatMap!2510 lt!2533953 lambda!421317))))

(declare-fun bs!1877622 () Bool)

(assert (= bs!1877622 d!2206228))

(declare-fun m!7777468 () Bool)

(assert (=> bs!1877622 m!7777468))

(assert (=> b!7057863 d!2206228))

(assert (=> b!7057863 d!2206102))

(assert (=> b!7057863 d!2206104))

(declare-fun d!2206230 () Bool)

(assert (=> d!2206230 true))

(declare-fun setRes!49938 () Bool)

(assert (=> d!2206230 setRes!49938))

(declare-fun condSetEmpty!49938 () Bool)

(declare-fun res!2881546 () (Set Context!13160))

(assert (=> d!2206230 (= condSetEmpty!49938 (= res!2881546 (as set.empty (Set Context!13160))))))

(assert (=> d!2206230 (= (choose!53885 lt!2533956 lambda!421196) res!2881546)))

(declare-fun setIsEmpty!49938 () Bool)

(assert (=> setIsEmpty!49938 setRes!49938))

(declare-fun setElem!49938 () Context!13160)

(declare-fun e!4243358 () Bool)

(declare-fun tp!1940606 () Bool)

(declare-fun setNonEmpty!49938 () Bool)

(assert (=> setNonEmpty!49938 (= setRes!49938 (and tp!1940606 (inv!86820 setElem!49938) e!4243358))))

(declare-fun setRest!49938 () (Set Context!13160))

(assert (=> setNonEmpty!49938 (= res!2881546 (set.union (set.insert setElem!49938 (as set.empty (Set Context!13160))) setRest!49938))))

(declare-fun b!7058316 () Bool)

(declare-fun tp!1940607 () Bool)

(assert (=> b!7058316 (= e!4243358 tp!1940607)))

(assert (= (and d!2206230 condSetEmpty!49938) setIsEmpty!49938))

(assert (= (and d!2206230 (not condSetEmpty!49938)) setNonEmpty!49938))

(assert (= setNonEmpty!49938 b!7058316))

(declare-fun m!7777470 () Bool)

(assert (=> setNonEmpty!49938 m!7777470))

(assert (=> d!2205912 d!2206230))

(declare-fun d!2206232 () Bool)

(declare-fun c!1315302 () Bool)

(assert (=> d!2206232 (= c!1315302 (isEmpty!39754 (t!382058 s!7408)))))

(declare-fun e!4243359 () Bool)

(assert (=> d!2206232 (= (matchZipper!3124 (set.union lt!2533938 lt!2533946) (t!382058 s!7408)) e!4243359)))

(declare-fun b!7058317 () Bool)

(assert (=> b!7058317 (= e!4243359 (nullableZipper!2667 (set.union lt!2533938 lt!2533946)))))

(declare-fun b!7058318 () Bool)

(assert (=> b!7058318 (= e!4243359 (matchZipper!3124 (derivationStepZipper!3034 (set.union lt!2533938 lt!2533946) (head!14368 (t!382058 s!7408))) (tail!13726 (t!382058 s!7408))))))

(assert (= (and d!2206232 c!1315302) b!7058317))

(assert (= (and d!2206232 (not c!1315302)) b!7058318))

(assert (=> d!2206232 m!7776688))

(declare-fun m!7777472 () Bool)

(assert (=> b!7058317 m!7777472))

(assert (=> b!7058318 m!7776692))

(assert (=> b!7058318 m!7776692))

(declare-fun m!7777474 () Bool)

(assert (=> b!7058318 m!7777474))

(assert (=> b!7058318 m!7776696))

(assert (=> b!7058318 m!7777474))

(assert (=> b!7058318 m!7776696))

(declare-fun m!7777476 () Bool)

(assert (=> b!7058318 m!7777476))

(assert (=> d!2205894 d!2206232))

(assert (=> d!2205894 d!2205896))

(declare-fun e!4243362 () Bool)

(declare-fun d!2206234 () Bool)

(assert (=> d!2206234 (= (matchZipper!3124 (set.union lt!2533938 lt!2533946) (t!382058 s!7408)) e!4243362)))

(declare-fun res!2881549 () Bool)

(assert (=> d!2206234 (=> res!2881549 e!4243362)))

(assert (=> d!2206234 (= res!2881549 (matchZipper!3124 lt!2533938 (t!382058 s!7408)))))

(assert (=> d!2206234 true))

(declare-fun _$48!2521 () Unit!161841)

(assert (=> d!2206234 (= (choose!53889 lt!2533938 lt!2533946 (t!382058 s!7408)) _$48!2521)))

(declare-fun b!7058321 () Bool)

(assert (=> b!7058321 (= e!4243362 (matchZipper!3124 lt!2533946 (t!382058 s!7408)))))

(assert (= (and d!2206234 (not res!2881549)) b!7058321))

(assert (=> d!2206234 m!7776778))

(assert (=> d!2206234 m!7776482))

(assert (=> b!7058321 m!7776378))

(assert (=> d!2205894 d!2206234))

(declare-fun d!2206236 () Bool)

(declare-fun res!2881550 () Bool)

(declare-fun e!4243363 () Bool)

(assert (=> d!2206236 (=> res!2881550 e!4243363)))

(assert (=> d!2206236 (= res!2881550 (is-Nil!68156 lt!2534146))))

(assert (=> d!2206236 (= (noDuplicate!2698 lt!2534146) e!4243363)))

(declare-fun b!7058322 () Bool)

(declare-fun e!4243364 () Bool)

(assert (=> b!7058322 (= e!4243363 e!4243364)))

(declare-fun res!2881551 () Bool)

(assert (=> b!7058322 (=> (not res!2881551) (not e!4243364))))

(assert (=> b!7058322 (= res!2881551 (not (contains!20486 (t!382059 lt!2534146) (h!74604 lt!2534146))))))

(declare-fun b!7058323 () Bool)

(assert (=> b!7058323 (= e!4243364 (noDuplicate!2698 (t!382059 lt!2534146)))))

(assert (= (and d!2206236 (not res!2881550)) b!7058322))

(assert (= (and b!7058322 res!2881551) b!7058323))

(declare-fun m!7777478 () Bool)

(assert (=> b!7058322 m!7777478))

(declare-fun m!7777480 () Bool)

(assert (=> b!7058323 m!7777480))

(assert (=> d!2205878 d!2206236))

(declare-fun d!2206238 () Bool)

(declare-fun e!4243367 () Bool)

(assert (=> d!2206238 e!4243367))

(declare-fun res!2881553 () Bool)

(assert (=> d!2206238 (=> (not res!2881553) (not e!4243367))))

(declare-fun res!2881552 () List!68280)

(assert (=> d!2206238 (= res!2881553 (noDuplicate!2698 res!2881552))))

(declare-fun e!4243366 () Bool)

(assert (=> d!2206238 e!4243366))

(assert (=> d!2206238 (= (choose!53882 lt!2533930) res!2881552)))

(declare-fun b!7058325 () Bool)

(declare-fun e!4243365 () Bool)

(declare-fun tp!1940608 () Bool)

(assert (=> b!7058325 (= e!4243365 tp!1940608)))

(declare-fun b!7058324 () Bool)

(declare-fun tp!1940609 () Bool)

(assert (=> b!7058324 (= e!4243366 (and (inv!86820 (h!74604 res!2881552)) e!4243365 tp!1940609))))

(declare-fun b!7058326 () Bool)

(assert (=> b!7058326 (= e!4243367 (= (content!13703 res!2881552) lt!2533930))))

(assert (= b!7058324 b!7058325))

(assert (= (and d!2206238 (is-Cons!68156 res!2881552)) b!7058324))

(assert (= (and d!2206238 res!2881553) b!7058326))

(declare-fun m!7777482 () Bool)

(assert (=> d!2206238 m!7777482))

(declare-fun m!7777484 () Bool)

(assert (=> b!7058324 m!7777484))

(declare-fun m!7777486 () Bool)

(assert (=> b!7058326 m!7777486))

(assert (=> d!2205878 d!2206238))

(declare-fun d!2206240 () Bool)

(declare-fun lt!2534240 () Int)

(assert (=> d!2206240 (>= lt!2534240 0)))

(declare-fun e!4243368 () Int)

(assert (=> d!2206240 (= lt!2534240 e!4243368)))

(declare-fun c!1315303 () Bool)

(assert (=> d!2206240 (= c!1315303 (is-Cons!68154 (exprs!7080 (h!74604 lt!2533936))))))

(assert (=> d!2206240 (= (contextDepthTotal!520 (h!74604 lt!2533936)) lt!2534240)))

(declare-fun b!7058327 () Bool)

(assert (=> b!7058327 (= e!4243368 (+ (regexDepthTotal!316 (h!74602 (exprs!7080 (h!74604 lt!2533936)))) (contextDepthTotal!520 (Context!13161 (t!382057 (exprs!7080 (h!74604 lt!2533936)))))))))

(declare-fun b!7058328 () Bool)

(assert (=> b!7058328 (= e!4243368 1)))

(assert (= (and d!2206240 c!1315303) b!7058327))

(assert (= (and d!2206240 (not c!1315303)) b!7058328))

(declare-fun m!7777488 () Bool)

(assert (=> b!7058327 m!7777488))

(declare-fun m!7777490 () Bool)

(assert (=> b!7058327 m!7777490))

(assert (=> b!7057815 d!2206240))

(declare-fun d!2206242 () Bool)

(declare-fun lt!2534241 () Int)

(assert (=> d!2206242 (>= lt!2534241 0)))

(declare-fun e!4243369 () Int)

(assert (=> d!2206242 (= lt!2534241 e!4243369)))

(declare-fun c!1315304 () Bool)

(assert (=> d!2206242 (= c!1315304 (is-Cons!68156 (t!382059 lt!2533936)))))

(assert (=> d!2206242 (= (zipperDepthTotal!549 (t!382059 lt!2533936)) lt!2534241)))

(declare-fun b!7058329 () Bool)

(assert (=> b!7058329 (= e!4243369 (+ (contextDepthTotal!520 (h!74604 (t!382059 lt!2533936))) (zipperDepthTotal!549 (t!382059 (t!382059 lt!2533936)))))))

(declare-fun b!7058330 () Bool)

(assert (=> b!7058330 (= e!4243369 0)))

(assert (= (and d!2206242 c!1315304) b!7058329))

(assert (= (and d!2206242 (not c!1315304)) b!7058330))

(declare-fun m!7777492 () Bool)

(assert (=> b!7058329 m!7777492))

(declare-fun m!7777494 () Bool)

(assert (=> b!7058329 m!7777494))

(assert (=> b!7057815 d!2206242))

(declare-fun b!7058345 () Bool)

(declare-fun e!4243386 () Bool)

(declare-fun e!4243383 () Bool)

(assert (=> b!7058345 (= e!4243386 e!4243383)))

(declare-fun res!2881565 () Bool)

(declare-fun call!641280 () Bool)

(assert (=> b!7058345 (= res!2881565 call!641280)))

(assert (=> b!7058345 (=> (not res!2881565) (not e!4243383))))

(declare-fun b!7058346 () Bool)

(declare-fun e!4243385 () Bool)

(assert (=> b!7058346 (= e!4243386 e!4243385)))

(declare-fun res!2881567 () Bool)

(declare-fun call!641281 () Bool)

(assert (=> b!7058346 (= res!2881567 call!641281)))

(assert (=> b!7058346 (=> res!2881567 e!4243385)))

(declare-fun b!7058347 () Bool)

(declare-fun e!4243384 () Bool)

(declare-fun e!4243382 () Bool)

(assert (=> b!7058347 (= e!4243384 e!4243382)))

(declare-fun res!2881564 () Bool)

(assert (=> b!7058347 (=> (not res!2881564) (not e!4243382))))

(assert (=> b!7058347 (= res!2881564 (and (not (is-EmptyLang!17584 (h!74602 (exprs!7080 lt!2533918)))) (not (is-ElementMatch!17584 (h!74602 (exprs!7080 lt!2533918))))))))

(declare-fun b!7058348 () Bool)

(assert (=> b!7058348 (= e!4243383 call!641281)))

(declare-fun bm!641275 () Bool)

(declare-fun c!1315307 () Bool)

(assert (=> bm!641275 (= call!641280 (nullable!7267 (ite c!1315307 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))))))

(declare-fun b!7058349 () Bool)

(declare-fun e!4243387 () Bool)

(assert (=> b!7058349 (= e!4243382 e!4243387)))

(declare-fun res!2881566 () Bool)

(assert (=> b!7058349 (=> res!2881566 e!4243387)))

(assert (=> b!7058349 (= res!2881566 (is-Star!17584 (h!74602 (exprs!7080 lt!2533918))))))

(declare-fun b!7058350 () Bool)

(assert (=> b!7058350 (= e!4243387 e!4243386)))

(assert (=> b!7058350 (= c!1315307 (is-Union!17584 (h!74602 (exprs!7080 lt!2533918))))))

(declare-fun bm!641276 () Bool)

(assert (=> bm!641276 (= call!641281 (nullable!7267 (ite c!1315307 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))))))))

(declare-fun d!2206244 () Bool)

(declare-fun res!2881568 () Bool)

(assert (=> d!2206244 (=> res!2881568 e!4243384)))

(assert (=> d!2206244 (= res!2881568 (is-EmptyExpr!17584 (h!74602 (exprs!7080 lt!2533918))))))

(assert (=> d!2206244 (= (nullableFct!2783 (h!74602 (exprs!7080 lt!2533918))) e!4243384)))

(declare-fun b!7058351 () Bool)

(assert (=> b!7058351 (= e!4243385 call!641280)))

(assert (= (and d!2206244 (not res!2881568)) b!7058347))

(assert (= (and b!7058347 res!2881564) b!7058349))

(assert (= (and b!7058349 (not res!2881566)) b!7058350))

(assert (= (and b!7058350 c!1315307) b!7058346))

(assert (= (and b!7058350 (not c!1315307)) b!7058345))

(assert (= (and b!7058346 (not res!2881567)) b!7058351))

(assert (= (and b!7058345 res!2881565) b!7058348))

(assert (= (or b!7058351 b!7058345) bm!641275))

(assert (= (or b!7058346 b!7058348) bm!641276))

(declare-fun m!7777496 () Bool)

(assert (=> bm!641275 m!7777496))

(declare-fun m!7777498 () Bool)

(assert (=> bm!641276 m!7777498))

(assert (=> d!2205918 d!2206244))

(assert (=> d!2205836 d!2205838))

(assert (=> d!2205836 d!2205854))

(declare-fun d!2206246 () Bool)

(assert (=> d!2206246 (<= (contextDepthTotal!520 lt!2533918) (zipperDepthTotal!549 lt!2533936))))

(assert (=> d!2206246 true))

(declare-fun _$53!134 () Unit!161841)

(assert (=> d!2206246 (= (choose!53881 lt!2533936 lt!2533918) _$53!134)))

(declare-fun bs!1877623 () Bool)

(assert (= bs!1877623 d!2206246))

(assert (=> bs!1877623 m!7776432))

(assert (=> bs!1877623 m!7776422))

(assert (=> d!2205836 d!2206246))

(declare-fun d!2206248 () Bool)

(declare-fun lt!2534244 () Bool)

(assert (=> d!2206248 (= lt!2534244 (set.member lt!2533918 (content!13703 lt!2533936)))))

(declare-fun e!4243393 () Bool)

(assert (=> d!2206248 (= lt!2534244 e!4243393)))

(declare-fun res!2881574 () Bool)

(assert (=> d!2206248 (=> (not res!2881574) (not e!4243393))))

(assert (=> d!2206248 (= res!2881574 (is-Cons!68156 lt!2533936))))

(assert (=> d!2206248 (= (contains!20486 lt!2533936 lt!2533918) lt!2534244)))

(declare-fun b!7058356 () Bool)

(declare-fun e!4243392 () Bool)

(assert (=> b!7058356 (= e!4243393 e!4243392)))

(declare-fun res!2881573 () Bool)

(assert (=> b!7058356 (=> res!2881573 e!4243392)))

(assert (=> b!7058356 (= res!2881573 (= (h!74604 lt!2533936) lt!2533918))))

(declare-fun b!7058357 () Bool)

(assert (=> b!7058357 (= e!4243392 (contains!20486 (t!382059 lt!2533936) lt!2533918))))

(assert (= (and d!2206248 res!2881574) b!7058356))

(assert (= (and b!7058356 (not res!2881573)) b!7058357))

(declare-fun m!7777500 () Bool)

(assert (=> d!2206248 m!7777500))

(declare-fun m!7777502 () Bool)

(assert (=> d!2206248 m!7777502))

(declare-fun m!7777504 () Bool)

(assert (=> b!7058357 m!7777504))

(assert (=> d!2205836 d!2206248))

(declare-fun d!2206250 () Bool)

(assert (=> d!2206250 true))

(declare-fun setRes!49941 () Bool)

(assert (=> d!2206250 setRes!49941))

(declare-fun condSetEmpty!49941 () Bool)

(declare-fun res!2881577 () (Set Context!13160))

(assert (=> d!2206250 (= condSetEmpty!49941 (= res!2881577 (as set.empty (Set Context!13160))))))

(assert (=> d!2206250 (= (choose!53884 lt!2533927 lambda!421194) res!2881577)))

(declare-fun setIsEmpty!49941 () Bool)

(assert (=> setIsEmpty!49941 setRes!49941))

(declare-fun setElem!49941 () Context!13160)

(declare-fun e!4243396 () Bool)

(declare-fun tp!1940614 () Bool)

(declare-fun setNonEmpty!49941 () Bool)

(assert (=> setNonEmpty!49941 (= setRes!49941 (and tp!1940614 (inv!86820 setElem!49941) e!4243396))))

(declare-fun setRest!49941 () (Set Context!13160))

(assert (=> setNonEmpty!49941 (= res!2881577 (set.union (set.insert setElem!49941 (as set.empty (Set Context!13160))) setRest!49941))))

(declare-fun b!7058360 () Bool)

(declare-fun tp!1940615 () Bool)

(assert (=> b!7058360 (= e!4243396 tp!1940615)))

(assert (= (and d!2206250 condSetEmpty!49941) setIsEmpty!49941))

(assert (= (and d!2206250 (not condSetEmpty!49941)) setNonEmpty!49941))

(assert (= setNonEmpty!49941 b!7058360))

(declare-fun m!7777506 () Bool)

(assert (=> setNonEmpty!49941 m!7777506))

(assert (=> d!2205846 d!2206250))

(declare-fun d!2206252 () Bool)

(declare-fun lt!2534247 () Int)

(assert (=> d!2206252 (>= lt!2534247 0)))

(declare-fun e!4243399 () Int)

(assert (=> d!2206252 (= lt!2534247 e!4243399)))

(declare-fun c!1315311 () Bool)

(assert (=> d!2206252 (= c!1315311 (is-Nil!68154 lt!2534151))))

(assert (=> d!2206252 (= (size!41161 lt!2534151) lt!2534247)))

(declare-fun b!7058365 () Bool)

(assert (=> b!7058365 (= e!4243399 0)))

(declare-fun b!7058366 () Bool)

(assert (=> b!7058366 (= e!4243399 (+ 1 (size!41161 (t!382057 lt!2534151))))))

(assert (= (and d!2206252 c!1315311) b!7058365))

(assert (= (and d!2206252 (not c!1315311)) b!7058366))

(declare-fun m!7777508 () Bool)

(assert (=> b!7058366 m!7777508))

(assert (=> b!7057847 d!2206252))

(declare-fun d!2206254 () Bool)

(declare-fun lt!2534248 () Int)

(assert (=> d!2206254 (>= lt!2534248 0)))

(declare-fun e!4243400 () Int)

(assert (=> d!2206254 (= lt!2534248 e!4243400)))

(declare-fun c!1315312 () Bool)

(assert (=> d!2206254 (= c!1315312 (is-Nil!68154 (exprs!7080 lt!2533918)))))

(assert (=> d!2206254 (= (size!41161 (exprs!7080 lt!2533918)) lt!2534248)))

(declare-fun b!7058367 () Bool)

(assert (=> b!7058367 (= e!4243400 0)))

(declare-fun b!7058368 () Bool)

(assert (=> b!7058368 (= e!4243400 (+ 1 (size!41161 (t!382057 (exprs!7080 lt!2533918)))))))

(assert (= (and d!2206254 c!1315312) b!7058367))

(assert (= (and d!2206254 (not c!1315312)) b!7058368))

(assert (=> b!7058368 m!7777104))

(assert (=> b!7057847 d!2206254))

(declare-fun d!2206256 () Bool)

(declare-fun lt!2534249 () Int)

(assert (=> d!2206256 (>= lt!2534249 0)))

(declare-fun e!4243401 () Int)

(assert (=> d!2206256 (= lt!2534249 e!4243401)))

(declare-fun c!1315313 () Bool)

(assert (=> d!2206256 (= c!1315313 (is-Nil!68154 (exprs!7080 ct2!306)))))

(assert (=> d!2206256 (= (size!41161 (exprs!7080 ct2!306)) lt!2534249)))

(declare-fun b!7058369 () Bool)

(assert (=> b!7058369 (= e!4243401 0)))

(declare-fun b!7058370 () Bool)

(assert (=> b!7058370 (= e!4243401 (+ 1 (size!41161 (t!382057 (exprs!7080 ct2!306)))))))

(assert (= (and d!2206256 c!1315313) b!7058369))

(assert (= (and d!2206256 (not c!1315313)) b!7058370))

(declare-fun m!7777510 () Bool)

(assert (=> b!7058370 m!7777510))

(assert (=> b!7057847 d!2206256))

(declare-fun d!2206258 () Bool)

(declare-fun c!1315314 () Bool)

(assert (=> d!2206258 (= c!1315314 (is-Nil!68156 lt!2534146))))

(declare-fun e!4243402 () (Set Context!13160))

(assert (=> d!2206258 (= (content!13703 lt!2534146) e!4243402)))

(declare-fun b!7058371 () Bool)

(assert (=> b!7058371 (= e!4243402 (as set.empty (Set Context!13160)))))

(declare-fun b!7058372 () Bool)

(assert (=> b!7058372 (= e!4243402 (set.union (set.insert (h!74604 lt!2534146) (as set.empty (Set Context!13160))) (content!13703 (t!382059 lt!2534146))))))

(assert (= (and d!2206258 c!1315314) b!7058371))

(assert (= (and d!2206258 (not c!1315314)) b!7058372))

(declare-fun m!7777512 () Bool)

(assert (=> b!7058372 m!7777512))

(declare-fun m!7777514 () Bool)

(assert (=> b!7058372 m!7777514))

(assert (=> b!7057834 d!2206258))

(assert (=> d!2205904 d!2206082))

(declare-fun d!2206260 () Bool)

(declare-fun lt!2534250 () Int)

(assert (=> d!2206260 (>= lt!2534250 0)))

(declare-fun e!4243403 () Int)

(assert (=> d!2206260 (= lt!2534250 e!4243403)))

(declare-fun c!1315315 () Bool)

(assert (=> d!2206260 (= c!1315315 (is-Nil!68154 lt!2534129))))

(assert (=> d!2206260 (= (size!41161 lt!2534129) lt!2534250)))

(declare-fun b!7058373 () Bool)

(assert (=> b!7058373 (= e!4243403 0)))

(declare-fun b!7058374 () Bool)

(assert (=> b!7058374 (= e!4243403 (+ 1 (size!41161 (t!382057 lt!2534129))))))

(assert (= (and d!2206260 c!1315315) b!7058373))

(assert (= (and d!2206260 (not c!1315315)) b!7058374))

(declare-fun m!7777516 () Bool)

(assert (=> b!7058374 m!7777516))

(assert (=> b!7057807 d!2206260))

(declare-fun d!2206262 () Bool)

(declare-fun lt!2534251 () Int)

(assert (=> d!2206262 (>= lt!2534251 0)))

(declare-fun e!4243404 () Int)

(assert (=> d!2206262 (= lt!2534251 e!4243404)))

(declare-fun c!1315316 () Bool)

(assert (=> d!2206262 (= c!1315316 (is-Nil!68154 lt!2533935))))

(assert (=> d!2206262 (= (size!41161 lt!2533935) lt!2534251)))

(declare-fun b!7058375 () Bool)

(assert (=> b!7058375 (= e!4243404 0)))

(declare-fun b!7058376 () Bool)

(assert (=> b!7058376 (= e!4243404 (+ 1 (size!41161 (t!382057 lt!2533935))))))

(assert (= (and d!2206262 c!1315316) b!7058375))

(assert (= (and d!2206262 (not c!1315316)) b!7058376))

(assert (=> b!7058376 m!7777284))

(assert (=> b!7057807 d!2206262))

(assert (=> b!7057807 d!2206256))

(declare-fun d!2206264 () Bool)

(declare-fun res!2881578 () Bool)

(declare-fun e!4243405 () Bool)

(assert (=> d!2206264 (=> res!2881578 e!4243405)))

(assert (=> d!2206264 (= res!2881578 (is-Nil!68154 (exprs!7080 ct2!306)))))

(assert (=> d!2206264 (= (forall!16536 (exprs!7080 ct2!306) lambda!421264) e!4243405)))

(declare-fun b!7058377 () Bool)

(declare-fun e!4243406 () Bool)

(assert (=> b!7058377 (= e!4243405 e!4243406)))

(declare-fun res!2881579 () Bool)

(assert (=> b!7058377 (=> (not res!2881579) (not e!4243406))))

(assert (=> b!7058377 (= res!2881579 (dynLambda!27681 lambda!421264 (h!74602 (exprs!7080 ct2!306))))))

(declare-fun b!7058378 () Bool)

(assert (=> b!7058378 (= e!4243406 (forall!16536 (t!382057 (exprs!7080 ct2!306)) lambda!421264))))

(assert (= (and d!2206264 (not res!2881578)) b!7058377))

(assert (= (and b!7058377 res!2881579) b!7058378))

(declare-fun b_lambda!268989 () Bool)

(assert (=> (not b_lambda!268989) (not b!7058377)))

(declare-fun m!7777518 () Bool)

(assert (=> b!7058377 m!7777518))

(declare-fun m!7777520 () Bool)

(assert (=> b!7058378 m!7777520))

(assert (=> d!2205830 d!2206264))

(declare-fun d!2206266 () Bool)

(declare-fun c!1315317 () Bool)

(assert (=> d!2206266 (= c!1315317 (isEmpty!39754 (tail!13726 s!7408)))))

(declare-fun e!4243407 () Bool)

(assert (=> d!2206266 (= (matchZipper!3124 (derivationStepZipper!3034 lt!2533952 (head!14368 s!7408)) (tail!13726 s!7408)) e!4243407)))

(declare-fun b!7058379 () Bool)

(assert (=> b!7058379 (= e!4243407 (nullableZipper!2667 (derivationStepZipper!3034 lt!2533952 (head!14368 s!7408))))))

(declare-fun b!7058380 () Bool)

(assert (=> b!7058380 (= e!4243407 (matchZipper!3124 (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533952 (head!14368 s!7408)) (head!14368 (tail!13726 s!7408))) (tail!13726 (tail!13726 s!7408))))))

(assert (= (and d!2206266 c!1315317) b!7058379))

(assert (= (and d!2206266 (not c!1315317)) b!7058380))

(assert (=> d!2206266 m!7776606))

(assert (=> d!2206266 m!7777212))

(assert (=> b!7058379 m!7776716))

(declare-fun m!7777522 () Bool)

(assert (=> b!7058379 m!7777522))

(assert (=> b!7058380 m!7776606))

(assert (=> b!7058380 m!7777216))

(assert (=> b!7058380 m!7776716))

(assert (=> b!7058380 m!7777216))

(declare-fun m!7777524 () Bool)

(assert (=> b!7058380 m!7777524))

(assert (=> b!7058380 m!7776606))

(assert (=> b!7058380 m!7777220))

(assert (=> b!7058380 m!7777524))

(assert (=> b!7058380 m!7777220))

(declare-fun m!7777526 () Bool)

(assert (=> b!7058380 m!7777526))

(assert (=> b!7057831 d!2206266))

(declare-fun bs!1877624 () Bool)

(declare-fun d!2206268 () Bool)

(assert (= bs!1877624 (and d!2206268 d!2205914)))

(declare-fun lambda!421318 () Int)

(assert (=> bs!1877624 (= (= (head!14368 s!7408) (h!74603 s!7408)) (= lambda!421318 lambda!421276))))

(declare-fun bs!1877625 () Bool)

(assert (= bs!1877625 (and d!2206268 d!2206094)))

(assert (=> bs!1877625 (= (= (head!14368 s!7408) (head!14368 (t!382058 s!7408))) (= lambda!421318 lambda!421299))))

(declare-fun bs!1877626 () Bool)

(assert (= bs!1877626 (and d!2206268 d!2206138)))

(assert (=> bs!1877626 (= lambda!421318 lambda!421307)))

(declare-fun bs!1877627 () Bool)

(assert (= bs!1877627 (and d!2206268 d!2206100)))

(assert (=> bs!1877627 (= lambda!421318 lambda!421303)))

(declare-fun bs!1877628 () Bool)

(assert (= bs!1877628 (and d!2206268 d!2206120)))

(assert (=> bs!1877628 (= (= (head!14368 s!7408) (head!14368 (t!382058 s!7408))) (= lambda!421318 lambda!421304))))

(declare-fun bs!1877629 () Bool)

(assert (= bs!1877629 (and d!2206268 d!2206200)))

(assert (=> bs!1877629 (= (= (head!14368 s!7408) (head!14368 (t!382058 s!7408))) (= lambda!421318 lambda!421314))))

(declare-fun bs!1877630 () Bool)

(assert (= bs!1877630 (and d!2206268 d!2206056)))

(assert (=> bs!1877630 (= (= (head!14368 s!7408) (head!14368 (t!382058 s!7408))) (= lambda!421318 lambda!421298))))

(declare-fun bs!1877631 () Bool)

(assert (= bs!1877631 (and d!2206268 d!2206228)))

(assert (=> bs!1877631 (= lambda!421318 lambda!421317)))

(declare-fun bs!1877632 () Bool)

(assert (= bs!1877632 (and d!2206268 b!7057661)))

(assert (=> bs!1877632 (= (= (head!14368 s!7408) (h!74603 s!7408)) (= lambda!421318 lambda!421196))))

(declare-fun bs!1877633 () Bool)

(assert (= bs!1877633 (and d!2206268 d!2205882)))

(assert (=> bs!1877633 (= (= (head!14368 s!7408) (h!74603 s!7408)) (= lambda!421318 lambda!421274))))

(assert (=> d!2206268 true))

(assert (=> d!2206268 (= (derivationStepZipper!3034 lt!2533952 (head!14368 s!7408)) (flatMap!2510 lt!2533952 lambda!421318))))

(declare-fun bs!1877634 () Bool)

(assert (= bs!1877634 d!2206268))

(declare-fun m!7777528 () Bool)

(assert (=> bs!1877634 m!7777528))

(assert (=> b!7057831 d!2206268))

(assert (=> b!7057831 d!2206102))

(assert (=> b!7057831 d!2206104))

(declare-fun bs!1877635 () Bool)

(declare-fun d!2206270 () Bool)

(assert (= bs!1877635 (and d!2206270 d!2206096)))

(declare-fun lambda!421319 () Int)

(assert (=> bs!1877635 (= lambda!421319 lambda!421302)))

(declare-fun bs!1877636 () Bool)

(assert (= bs!1877636 (and d!2206270 d!2206206)))

(assert (=> bs!1877636 (= lambda!421319 lambda!421315)))

(declare-fun bs!1877637 () Bool)

(assert (= bs!1877637 (and d!2206270 d!2206128)))

(assert (=> bs!1877637 (= lambda!421319 lambda!421305)))

(declare-fun bs!1877638 () Bool)

(assert (= bs!1877638 (and d!2206270 d!2205874)))

(assert (=> bs!1877638 (not (= lambda!421319 lambda!421268))))

(declare-fun bs!1877639 () Bool)

(assert (= bs!1877639 (and d!2206270 d!2206130)))

(assert (=> bs!1877639 (= lambda!421319 lambda!421306)))

(declare-fun bs!1877640 () Bool)

(assert (= bs!1877640 (and d!2206270 d!2206196)))

(assert (=> bs!1877640 (= lambda!421319 lambda!421313)))

(declare-fun bs!1877641 () Bool)

(assert (= bs!1877641 (and d!2206270 d!2206170)))

(assert (=> bs!1877641 (= lambda!421319 lambda!421312)))

(declare-fun bs!1877642 () Bool)

(assert (= bs!1877642 (and d!2206270 d!2205876)))

(assert (=> bs!1877642 (not (= lambda!421319 lambda!421271))))

(declare-fun bs!1877643 () Bool)

(assert (= bs!1877643 (and d!2206270 b!7057676)))

(assert (=> bs!1877643 (not (= lambda!421319 lambda!421193))))

(declare-fun bs!1877644 () Bool)

(assert (= bs!1877644 (and d!2206270 d!2206214)))

(assert (=> bs!1877644 (= lambda!421319 lambda!421316)))

(declare-fun bs!1877645 () Bool)

(assert (= bs!1877645 (and d!2206270 d!2206158)))

(assert (=> bs!1877645 (not (= lambda!421319 lambda!421311))))

(declare-fun bs!1877646 () Bool)

(assert (= bs!1877646 (and d!2206270 d!2206156)))

(assert (=> bs!1877646 (not (= lambda!421319 lambda!421308))))

(assert (=> d!2206270 (= (nullableZipper!2667 (appendTo!705 lt!2533927 ct2!306)) (exists!3584 (appendTo!705 lt!2533927 ct2!306) lambda!421319))))

(declare-fun bs!1877647 () Bool)

(assert (= bs!1877647 d!2206270))

(assert (=> bs!1877647 m!7776410))

(declare-fun m!7777530 () Bool)

(assert (=> bs!1877647 m!7777530))

(assert (=> b!7057828 d!2206270))

(assert (=> d!2205896 d!2206088))

(declare-fun b!7058381 () Bool)

(declare-fun e!4243408 () Bool)

(declare-fun tp!1940616 () Bool)

(declare-fun tp!1940617 () Bool)

(assert (=> b!7058381 (= e!4243408 (and tp!1940616 tp!1940617))))

(assert (=> b!7057918 (= tp!1940567 e!4243408)))

(assert (= (and b!7057918 (is-Cons!68154 (exprs!7080 setElem!49930))) b!7058381))

(declare-fun condSetEmpty!49942 () Bool)

(assert (=> setNonEmpty!49930 (= condSetEmpty!49942 (= setRest!49930 (as set.empty (Set Context!13160))))))

(declare-fun setRes!49942 () Bool)

(assert (=> setNonEmpty!49930 (= tp!1940566 setRes!49942)))

(declare-fun setIsEmpty!49942 () Bool)

(assert (=> setIsEmpty!49942 setRes!49942))

(declare-fun e!4243409 () Bool)

(declare-fun setElem!49942 () Context!13160)

(declare-fun tp!1940618 () Bool)

(declare-fun setNonEmpty!49942 () Bool)

(assert (=> setNonEmpty!49942 (= setRes!49942 (and tp!1940618 (inv!86820 setElem!49942) e!4243409))))

(declare-fun setRest!49942 () (Set Context!13160))

(assert (=> setNonEmpty!49942 (= setRest!49930 (set.union (set.insert setElem!49942 (as set.empty (Set Context!13160))) setRest!49942))))

(declare-fun b!7058382 () Bool)

(declare-fun tp!1940619 () Bool)

(assert (=> b!7058382 (= e!4243409 tp!1940619)))

(assert (= (and setNonEmpty!49930 condSetEmpty!49942) setIsEmpty!49942))

(assert (= (and setNonEmpty!49930 (not condSetEmpty!49942)) setNonEmpty!49942))

(assert (= setNonEmpty!49942 b!7058382))

(declare-fun m!7777532 () Bool)

(assert (=> setNonEmpty!49942 m!7777532))

(declare-fun b!7058393 () Bool)

(declare-fun e!4243412 () Bool)

(assert (=> b!7058393 (= e!4243412 tp_is_empty!44393)))

(declare-fun b!7058395 () Bool)

(declare-fun tp!1940634 () Bool)

(assert (=> b!7058395 (= e!4243412 tp!1940634)))

(declare-fun b!7058396 () Bool)

(declare-fun tp!1940630 () Bool)

(declare-fun tp!1940633 () Bool)

(assert (=> b!7058396 (= e!4243412 (and tp!1940630 tp!1940633))))

(declare-fun b!7058394 () Bool)

(declare-fun tp!1940631 () Bool)

(declare-fun tp!1940632 () Bool)

(assert (=> b!7058394 (= e!4243412 (and tp!1940631 tp!1940632))))

(assert (=> b!7057913 (= tp!1940560 e!4243412)))

(assert (= (and b!7057913 (is-ElementMatch!17584 (h!74602 (exprs!7080 setElem!49924)))) b!7058393))

(assert (= (and b!7057913 (is-Concat!26429 (h!74602 (exprs!7080 setElem!49924)))) b!7058394))

(assert (= (and b!7057913 (is-Star!17584 (h!74602 (exprs!7080 setElem!49924)))) b!7058395))

(assert (= (and b!7057913 (is-Union!17584 (h!74602 (exprs!7080 setElem!49924)))) b!7058396))

(declare-fun b!7058397 () Bool)

(declare-fun e!4243413 () Bool)

(declare-fun tp!1940635 () Bool)

(declare-fun tp!1940636 () Bool)

(assert (=> b!7058397 (= e!4243413 (and tp!1940635 tp!1940636))))

(assert (=> b!7057913 (= tp!1940561 e!4243413)))

(assert (= (and b!7057913 (is-Cons!68154 (t!382057 (exprs!7080 setElem!49924)))) b!7058397))

(declare-fun b!7058398 () Bool)

(declare-fun e!4243414 () Bool)

(declare-fun tp!1940637 () Bool)

(assert (=> b!7058398 (= e!4243414 (and tp_is_empty!44393 tp!1940637))))

(assert (=> b!7057908 (= tp!1940555 e!4243414)))

(assert (= (and b!7057908 (is-Cons!68155 (t!382058 (t!382058 s!7408)))) b!7058398))

(declare-fun b!7058399 () Bool)

(declare-fun e!4243415 () Bool)

(assert (=> b!7058399 (= e!4243415 tp_is_empty!44393)))

(declare-fun b!7058401 () Bool)

(declare-fun tp!1940642 () Bool)

(assert (=> b!7058401 (= e!4243415 tp!1940642)))

(declare-fun b!7058402 () Bool)

(declare-fun tp!1940638 () Bool)

(declare-fun tp!1940641 () Bool)

(assert (=> b!7058402 (= e!4243415 (and tp!1940638 tp!1940641))))

(declare-fun b!7058400 () Bool)

(declare-fun tp!1940639 () Bool)

(declare-fun tp!1940640 () Bool)

(assert (=> b!7058400 (= e!4243415 (and tp!1940639 tp!1940640))))

(assert (=> b!7057919 (= tp!1940568 e!4243415)))

(assert (= (and b!7057919 (is-ElementMatch!17584 (h!74602 (exprs!7080 ct2!306)))) b!7058399))

(assert (= (and b!7057919 (is-Concat!26429 (h!74602 (exprs!7080 ct2!306)))) b!7058400))

(assert (= (and b!7057919 (is-Star!17584 (h!74602 (exprs!7080 ct2!306)))) b!7058401))

(assert (= (and b!7057919 (is-Union!17584 (h!74602 (exprs!7080 ct2!306)))) b!7058402))

(declare-fun b!7058403 () Bool)

(declare-fun e!4243416 () Bool)

(declare-fun tp!1940643 () Bool)

(declare-fun tp!1940644 () Bool)

(assert (=> b!7058403 (= e!4243416 (and tp!1940643 tp!1940644))))

(assert (=> b!7057919 (= tp!1940569 e!4243416)))

(assert (= (and b!7057919 (is-Cons!68154 (t!382057 (exprs!7080 ct2!306)))) b!7058403))

(declare-fun b_lambda!268991 () Bool)

(assert (= b_lambda!268989 (or d!2205830 b_lambda!268991)))

(declare-fun bs!1877648 () Bool)

(declare-fun d!2206272 () Bool)

(assert (= bs!1877648 (and d!2206272 d!2205830)))

(declare-fun validRegex!8960 (Regex!17584) Bool)

(assert (=> bs!1877648 (= (dynLambda!27681 lambda!421264 (h!74602 (exprs!7080 ct2!306))) (validRegex!8960 (h!74602 (exprs!7080 ct2!306))))))

(declare-fun m!7777534 () Bool)

(assert (=> bs!1877648 m!7777534))

(assert (=> b!7058377 d!2206272))

(declare-fun b_lambda!268993 () Bool)

(assert (= b_lambda!268987 (or b!7057679 b_lambda!268993)))

(declare-fun bs!1877649 () Bool)

(declare-fun d!2206274 () Bool)

(assert (= bs!1877649 (and d!2206274 b!7057679)))

(declare-fun lt!2534252 () Unit!161841)

(assert (=> bs!1877649 (= lt!2534252 (lemmaConcatPreservesForall!895 (exprs!7080 a!13517) (exprs!7080 ct2!306) lambda!421195))))

(assert (=> bs!1877649 (= (dynLambda!27674 lambda!421194 a!13517) (Context!13161 (++!15667 (exprs!7080 a!13517) (exprs!7080 ct2!306))))))

(declare-fun m!7777536 () Bool)

(assert (=> bs!1877649 m!7777536))

(declare-fun m!7777538 () Bool)

(assert (=> bs!1877649 m!7777538))

(assert (=> d!2206186 d!2206274))

(declare-fun b_lambda!268995 () Bool)

(assert (= b_lambda!268981 (or b!7057679 b_lambda!268995)))

(declare-fun bs!1877650 () Bool)

(declare-fun d!2206276 () Bool)

(assert (= bs!1877650 (and d!2206276 b!7057679)))

(assert (=> bs!1877650 (= (dynLambda!27681 lambda!421195 (h!74602 lt!2533935)) (validRegex!8960 (h!74602 lt!2533935)))))

(declare-fun m!7777540 () Bool)

(assert (=> bs!1877650 m!7777540))

(assert (=> b!7058221 d!2206276))

(declare-fun b_lambda!268997 () Bool)

(assert (= b_lambda!268985 (or b!7057661 b_lambda!268997)))

(assert (=> d!2206166 d!2205932))

(declare-fun b_lambda!268999 () Bool)

(assert (= b_lambda!268967 (or b!7057661 b_lambda!268999)))

(assert (=> d!2206066 d!2205922))

(declare-fun b_lambda!269001 () Bool)

(assert (= b_lambda!268977 (or b!7057679 b_lambda!269001)))

(declare-fun bs!1877651 () Bool)

(declare-fun d!2206278 () Bool)

(assert (= bs!1877651 (and d!2206278 b!7057679)))

(assert (=> bs!1877651 (= (dynLambda!27681 lambda!421195 (h!74602 (exprs!7080 lt!2533918))) (validRegex!8960 (h!74602 (exprs!7080 lt!2533918))))))

(declare-fun m!7777542 () Bool)

(assert (=> bs!1877651 m!7777542))

(assert (=> b!7058190 d!2206278))

(declare-fun b_lambda!269003 () Bool)

(assert (= b_lambda!268969 (or b!7057676 b_lambda!269003)))

(declare-fun bs!1877652 () Bool)

(declare-fun d!2206280 () Bool)

(assert (= bs!1877652 (and d!2206280 b!7057676)))

(assert (=> bs!1877652 (= (dynLambda!27676 lambda!421193 lt!2534224) (matchZipper!3124 (set.insert lt!2534224 (as set.empty (Set Context!13160))) s!7408))))

(declare-fun m!7777544 () Bool)

(assert (=> bs!1877652 m!7777544))

(assert (=> bs!1877652 m!7777544))

(declare-fun m!7777546 () Bool)

(assert (=> bs!1877652 m!7777546))

(assert (=> d!2206068 d!2206280))

(declare-fun b_lambda!269005 () Bool)

(assert (= b_lambda!268971 (or b!7057676 b_lambda!269005)))

(declare-fun bs!1877653 () Bool)

(declare-fun d!2206282 () Bool)

(assert (= bs!1877653 (and d!2206282 b!7057676)))

(assert (=> bs!1877653 (= (dynLambda!27676 lambda!421193 (h!74604 (toList!10925 lt!2533930))) (matchZipper!3124 (set.insert (h!74604 (toList!10925 lt!2533930)) (as set.empty (Set Context!13160))) s!7408))))

(declare-fun m!7777548 () Bool)

(assert (=> bs!1877653 m!7777548))

(assert (=> bs!1877653 m!7777548))

(declare-fun m!7777550 () Bool)

(assert (=> bs!1877653 m!7777550))

(assert (=> b!7058135 d!2206282))

(declare-fun b_lambda!269007 () Bool)

(assert (= b_lambda!268979 (or b!7057679 b_lambda!269007)))

(declare-fun bs!1877654 () Bool)

(declare-fun d!2206284 () Bool)

(assert (= bs!1877654 (and d!2206284 b!7057679)))

(assert (=> bs!1877654 (= (dynLambda!27681 lambda!421195 (h!74602 (++!15667 lt!2533935 (exprs!7080 ct2!306)))) (validRegex!8960 (h!74602 (++!15667 lt!2533935 (exprs!7080 ct2!306)))))))

(declare-fun m!7777552 () Bool)

(assert (=> bs!1877654 m!7777552))

(assert (=> b!7058219 d!2206284))

(declare-fun b_lambda!269009 () Bool)

(assert (= b_lambda!268973 (or d!2205874 b_lambda!269009)))

(declare-fun bs!1877655 () Bool)

(declare-fun d!2206286 () Bool)

(assert (= bs!1877655 (and d!2206286 d!2205874)))

(assert (=> bs!1877655 (= (dynLambda!27676 lambda!421268 (h!74604 lt!2533923)) (not (dynLambda!27676 lambda!421193 (h!74604 lt!2533923))))))

(declare-fun b_lambda!269019 () Bool)

(assert (=> (not b_lambda!269019) (not bs!1877655)))

(declare-fun m!7777554 () Bool)

(assert (=> bs!1877655 m!7777554))

(assert (=> b!7058156 d!2206286))

(declare-fun b_lambda!269011 () Bool)

(assert (= b_lambda!268983 (or d!2205902 b_lambda!269011)))

(declare-fun bs!1877656 () Bool)

(declare-fun d!2206288 () Bool)

(assert (= bs!1877656 (and d!2206288 d!2205902)))

(assert (=> bs!1877656 (= (dynLambda!27681 lambda!421275 (h!74602 (exprs!7080 setElem!49924))) (validRegex!8960 (h!74602 (exprs!7080 setElem!49924))))))

(declare-fun m!7777556 () Bool)

(assert (=> bs!1877656 m!7777556))

(assert (=> b!7058223 d!2206288))

(declare-fun b_lambda!269013 () Bool)

(assert (= b_lambda!268965 (or b!7057661 b_lambda!269013)))

(assert (=> d!2206044 d!2205928))

(declare-fun b_lambda!269015 () Bool)

(assert (= b_lambda!268963 (or b!7057679 b_lambda!269015)))

(assert (=> d!2206042 d!2205926))

(declare-fun b_lambda!269017 () Bool)

(assert (= b_lambda!268975 (or b!7057679 b_lambda!269017)))

(declare-fun bs!1877657 () Bool)

(declare-fun d!2206290 () Bool)

(assert (= bs!1877657 (and d!2206290 b!7057679)))

(assert (=> bs!1877657 (= (dynLambda!27681 lambda!421195 (h!74602 (++!15667 (exprs!7080 lt!2533918) (exprs!7080 ct2!306)))) (validRegex!8960 (h!74602 (++!15667 (exprs!7080 lt!2533918) (exprs!7080 ct2!306)))))))

(declare-fun m!7777558 () Bool)

(assert (=> bs!1877657 m!7777558))

(assert (=> b!7058188 d!2206290))

(push 1)

(assert (not bm!641268))

(assert (not b!7058297))

(assert (not b!7058145))

(assert (not b!7058324))

(assert (not b!7058147))

(assert (not b!7058201))

(assert (not b_lambda!269001))

(assert (not b_lambda!268929))

(assert (not b_lambda!268995))

(assert (not b!7058207))

(assert (not b_lambda!269011))

(assert (not b!7058291))

(assert (not d!2206136))

(assert (not b!7058360))

(assert (not b!7058398))

(assert (not b!7058213))

(assert (not b_lambda!269017))

(assert (not bm!641266))

(assert (not d!2206172))

(assert (not b!7058262))

(assert (not b!7058321))

(assert (not b!7058292))

(assert (not b!7058222))

(assert (not d!2206166))

(assert (not b!7058287))

(assert (not b!7058289))

(assert (not bm!641248))

(assert (not b!7058401))

(assert (not d!2206048))

(assert (not b!7058197))

(assert (not b_lambda!268927))

(assert (not d!2206170))

(assert (not d!2206202))

(assert (not b!7058232))

(assert (not b!7058315))

(assert (not d!2206144))

(assert (not d!2206160))

(assert (not d!2206196))

(assert (not b!7058229))

(assert (not bm!641244))

(assert (not b!7058366))

(assert (not b!7058316))

(assert (not d!2206158))

(assert (not d!2206064))

(assert (not b_lambda!268937))

(assert (not d!2206156))

(assert (not b!7058329))

(assert (not bs!1877649))

(assert (not b!7058382))

(assert (not b_lambda!268997))

(assert (not d!2206268))

(assert (not bs!1877653))

(assert (not b!7058183))

(assert (not b!7058311))

(assert (not bm!641251))

(assert (not b!7058103))

(assert (not b!7058308))

(assert (not d!2206042))

(assert (not b!7058189))

(assert (not d!2206270))

(assert (not bs!1877651))

(assert (not b!7058118))

(assert (not b!7058202))

(assert (not b!7058160))

(assert (not b!7058150))

(assert (not d!2206234))

(assert (not b_lambda!268993))

(assert tp_is_empty!44393)

(assert (not b_lambda!268931))

(assert (not d!2206206))

(assert (not d!2206198))

(assert (not b!7058394))

(assert (not b!7058380))

(assert (not b!7058400))

(assert (not d!2206068))

(assert (not d!2206066))

(assert (not setNonEmpty!49938))

(assert (not d!2206204))

(assert (not b!7058220))

(assert (not b!7058374))

(assert (not b!7058379))

(assert (not d!2206094))

(assert (not b!7058075))

(assert (not bm!641233))

(assert (not bm!641254))

(assert (not b_lambda!269009))

(assert (not d!2206098))

(assert (not b!7058251))

(assert (not d!2206174))

(assert (not b!7058249))

(assert (not bm!641245))

(assert (not d!2206248))

(assert (not b!7058372))

(assert (not bs!1877657))

(assert (not b!7058148))

(assert (not b!7058246))

(assert (not bs!1877654))

(assert (not bm!641257))

(assert (not b!7058368))

(assert (not d!2206120))

(assert (not b!7058208))

(assert (not b!7058198))

(assert (not b!7058244))

(assert (not d!2206246))

(assert (not d!2206100))

(assert (not d!2206214))

(assert (not d!2206188))

(assert (not b!7058136))

(assert (not bm!641269))

(assert (not d!2206238))

(assert (not d!2206114))

(assert (not bm!641258))

(assert (not d!2206108))

(assert (not b!7058217))

(assert (not d!2206130))

(assert (not bm!641247))

(assert (not b!7058157))

(assert (not d!2206118))

(assert (not setNonEmpty!49941))

(assert (not b!7058110))

(assert (not b!7058227))

(assert (not d!2206132))

(assert (not d!2206070))

(assert (not b!7058403))

(assert (not d!2206096))

(assert (not b!7058370))

(assert (not d!2206044))

(assert (not bm!641239))

(assert (not b_lambda!269019))

(assert (not d!2206222))

(assert (not d!2206200))

(assert (not b!7058209))

(assert (not d!2206228))

(assert (not d!2206152))

(assert (not b!7058242))

(assert (not b!7058395))

(assert (not b!7058381))

(assert (not b!7058134))

(assert (not b!7058357))

(assert (not b!7058323))

(assert (not b!7058396))

(assert (not b_lambda!269007))

(assert (not bs!1877648))

(assert (not b!7058117))

(assert (not b!7058181))

(assert (not b!7058314))

(assert (not b!7058191))

(assert (not bm!641276))

(assert (not b!7058104))

(assert (not d!2206232))

(assert (not b_lambda!269005))

(assert (not b!7058171))

(assert (not d!2206186))

(assert (not b!7058210))

(assert (not d!2206056))

(assert (not bm!641263))

(assert (not b!7058397))

(assert (not b!7058247))

(assert (not b!7058226))

(assert (not b!7058119))

(assert (not bm!641235))

(assert (not bs!1877656))

(assert (not bm!641264))

(assert (not b_lambda!268935))

(assert (not d!2206164))

(assert (not bm!641267))

(assert (not bs!1877652))

(assert (not b!7058228))

(assert (not b!7058225))

(assert (not b!7058109))

(assert (not b!7058402))

(assert (not b!7058326))

(assert (not b!7058224))

(assert (not d!2206116))

(assert (not bm!641238))

(assert (not setNonEmpty!49937))

(assert (not d!2206128))

(assert (not b!7058214))

(assert (not d!2206140))

(assert (not b!7058327))

(assert (not b!7058254))

(assert (not b!7058241))

(assert (not b!7058296))

(assert (not bm!641232))

(assert (not d!2206054))

(assert (not b!7058101))

(assert (not setNonEmpty!49936))

(assert (not bs!1877650))

(assert (not b!7058180))

(assert (not b!7058132))

(assert (not b_lambda!269015))

(assert (not b!7058318))

(assert (not b!7058182))

(assert (not d!2206224))

(assert (not b_lambda!268991))

(assert (not d!2206092))

(assert (not d!2206176))

(assert (not bm!641260))

(assert (not b!7058325))

(assert (not b_lambda!269003))

(assert (not b!7058312))

(assert (not b!7058212))

(assert (not b!7058317))

(assert (not d!2206168))

(assert (not bm!641275))

(assert (not d!2206190))

(assert (not bm!641241))

(assert (not b!7058322))

(assert (not b!7058286))

(assert (not b_lambda!269013))

(assert (not bm!641252))

(assert (not b!7058143))

(assert (not b!7058376))

(assert (not d!2206266))

(assert (not b!7058378))

(assert (not d!2206138))

(assert (not b!7058277))

(assert (not d!2206226))

(assert (not b_lambda!268999))

(assert (not b!7058074))

(assert (not setNonEmpty!49942))

(assert (not b!7058266))

(assert (not d!2206046))

(assert (not b_lambda!268933))

(assert (not b!7058199))

(assert (not b!7058256))

(assert (not b!7058216))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!269079 () Bool)

(assert (= b_lambda!269019 (or b!7057676 b_lambda!269079)))

(declare-fun bs!1877836 () Bool)

(declare-fun d!2206542 () Bool)

(assert (= bs!1877836 (and d!2206542 b!7057676)))

(assert (=> bs!1877836 (= (dynLambda!27676 lambda!421193 (h!74604 lt!2533923)) (matchZipper!3124 (set.insert (h!74604 lt!2533923) (as set.empty (Set Context!13160))) s!7408))))

(assert (=> bs!1877836 m!7777334))

(assert (=> bs!1877836 m!7777334))

(declare-fun m!7778018 () Bool)

(assert (=> bs!1877836 m!7778018))

(assert (=> bs!1877655 d!2206542))

(push 1)

(assert (not bm!641268))

(assert (not b!7058297))

(assert (not b!7058145))

(assert (not b!7058324))

(assert (not b!7058147))

(assert (not b!7058201))

(assert (not b_lambda!269001))

(assert (not b_lambda!268929))

(assert (not b_lambda!268995))

(assert (not b!7058207))

(assert (not b_lambda!269011))

(assert (not b!7058291))

(assert (not d!2206136))

(assert (not b!7058360))

(assert (not b!7058398))

(assert (not bs!1877836))

(assert (not b!7058213))

(assert (not b_lambda!269017))

(assert (not bm!641266))

(assert (not d!2206172))

(assert (not b!7058262))

(assert (not b!7058321))

(assert (not b!7058292))

(assert (not b!7058222))

(assert (not d!2206166))

(assert (not b!7058287))

(assert (not b!7058289))

(assert (not bm!641248))

(assert (not b!7058401))

(assert (not d!2206048))

(assert (not b!7058197))

(assert (not b_lambda!268927))

(assert (not d!2206170))

(assert (not d!2206202))

(assert (not b!7058232))

(assert (not b!7058315))

(assert (not d!2206144))

(assert (not d!2206160))

(assert (not d!2206196))

(assert (not b!7058229))

(assert (not bm!641244))

(assert (not b!7058366))

(assert (not b!7058316))

(assert (not d!2206158))

(assert (not d!2206064))

(assert (not b_lambda!268937))

(assert (not d!2206156))

(assert (not b!7058329))

(assert (not bs!1877649))

(assert (not b!7058382))

(assert (not b_lambda!268997))

(assert (not d!2206268))

(assert (not bs!1877653))

(assert (not b!7058183))

(assert (not b!7058311))

(assert (not bm!641251))

(assert (not b!7058103))

(assert (not b!7058308))

(assert (not d!2206042))

(assert (not b!7058189))

(assert (not d!2206270))

(assert (not bs!1877651))

(assert (not b!7058118))

(assert (not b!7058202))

(assert (not b!7058160))

(assert (not b!7058150))

(assert (not d!2206234))

(assert (not b_lambda!268993))

(assert tp_is_empty!44393)

(assert (not b_lambda!268931))

(assert (not d!2206206))

(assert (not d!2206198))

(assert (not b!7058394))

(assert (not b!7058380))

(assert (not b!7058400))

(assert (not d!2206068))

(assert (not d!2206066))

(assert (not setNonEmpty!49938))

(assert (not d!2206204))

(assert (not b!7058220))

(assert (not b!7058374))

(assert (not b!7058379))

(assert (not d!2206094))

(assert (not b!7058075))

(assert (not bm!641233))

(assert (not bm!641254))

(assert (not b_lambda!269009))

(assert (not d!2206098))

(assert (not b!7058251))

(assert (not d!2206174))

(assert (not b!7058249))

(assert (not bm!641245))

(assert (not d!2206248))

(assert (not b!7058372))

(assert (not bs!1877657))

(assert (not b!7058148))

(assert (not b!7058246))

(assert (not bs!1877654))

(assert (not bm!641257))

(assert (not d!2206120))

(assert (not b!7058208))

(assert (not b!7058198))

(assert (not b!7058244))

(assert (not b_lambda!269079))

(assert (not b!7058368))

(assert (not d!2206246))

(assert (not d!2206100))

(assert (not d!2206214))

(assert (not d!2206188))

(assert (not b!7058136))

(assert (not bm!641269))

(assert (not d!2206238))

(assert (not d!2206114))

(assert (not bm!641258))

(assert (not d!2206108))

(assert (not b!7058217))

(assert (not d!2206130))

(assert (not bm!641247))

(assert (not b!7058157))

(assert (not d!2206118))

(assert (not setNonEmpty!49941))

(assert (not b!7058110))

(assert (not bm!641239))

(assert (not b!7058227))

(assert (not d!2206132))

(assert (not d!2206070))

(assert (not b!7058403))

(assert (not d!2206096))

(assert (not b!7058370))

(assert (not d!2206044))

(assert (not d!2206222))

(assert (not d!2206200))

(assert (not b!7058209))

(assert (not d!2206228))

(assert (not d!2206152))

(assert (not b!7058242))

(assert (not b!7058395))

(assert (not b!7058381))

(assert (not b!7058134))

(assert (not b!7058357))

(assert (not b!7058323))

(assert (not b!7058396))

(assert (not b_lambda!269007))

(assert (not bs!1877648))

(assert (not b!7058117))

(assert (not b!7058181))

(assert (not b!7058314))

(assert (not b!7058191))

(assert (not bm!641276))

(assert (not b!7058104))

(assert (not d!2206232))

(assert (not b_lambda!269005))

(assert (not b!7058171))

(assert (not d!2206186))

(assert (not b!7058210))

(assert (not d!2206056))

(assert (not bm!641263))

(assert (not b!7058397))

(assert (not b!7058247))

(assert (not b!7058226))

(assert (not b!7058119))

(assert (not bm!641235))

(assert (not bs!1877656))

(assert (not bm!641264))

(assert (not b_lambda!268935))

(assert (not d!2206164))

(assert (not bm!641267))

(assert (not bs!1877652))

(assert (not b!7058228))

(assert (not b!7058225))

(assert (not b!7058109))

(assert (not b!7058402))

(assert (not b!7058326))

(assert (not b!7058224))

(assert (not d!2206116))

(assert (not bm!641238))

(assert (not setNonEmpty!49937))

(assert (not d!2206128))

(assert (not b!7058214))

(assert (not d!2206140))

(assert (not b!7058327))

(assert (not b!7058254))

(assert (not b!7058241))

(assert (not b!7058296))

(assert (not bm!641232))

(assert (not d!2206054))

(assert (not b!7058101))

(assert (not setNonEmpty!49936))

(assert (not bs!1877650))

(assert (not b!7058180))

(assert (not b!7058132))

(assert (not b_lambda!269015))

(assert (not b!7058318))

(assert (not b!7058182))

(assert (not d!2206224))

(assert (not b_lambda!268991))

(assert (not d!2206092))

(assert (not d!2206176))

(assert (not bm!641260))

(assert (not b!7058325))

(assert (not b_lambda!269003))

(assert (not b!7058312))

(assert (not b!7058212))

(assert (not b!7058317))

(assert (not d!2206168))

(assert (not bm!641275))

(assert (not d!2206190))

(assert (not bm!641241))

(assert (not b!7058322))

(assert (not b!7058286))

(assert (not b_lambda!269013))

(assert (not bm!641252))

(assert (not b!7058143))

(assert (not b!7058376))

(assert (not d!2206266))

(assert (not b!7058378))

(assert (not d!2206138))

(assert (not b!7058277))

(assert (not d!2206226))

(assert (not b_lambda!268999))

(assert (not b!7058074))

(assert (not setNonEmpty!49942))

(assert (not b!7058266))

(assert (not d!2206046))

(assert (not b_lambda!268933))

(assert (not b!7058199))

(assert (not b!7058256))

(assert (not b!7058216))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2206544 () Bool)

(declare-fun lt!2534292 () Int)

(assert (=> d!2206544 (>= lt!2534292 0)))

(declare-fun e!4243629 () Int)

(assert (=> d!2206544 (= lt!2534292 e!4243629)))

(declare-fun c!1315423 () Bool)

(assert (=> d!2206544 (= c!1315423 (is-Nil!68154 lt!2534239))))

(assert (=> d!2206544 (= (size!41161 lt!2534239) lt!2534292)))

(declare-fun b!7058735 () Bool)

(assert (=> b!7058735 (= e!4243629 0)))

(declare-fun b!7058736 () Bool)

(assert (=> b!7058736 (= e!4243629 (+ 1 (size!41161 (t!382057 lt!2534239))))))

(assert (= (and d!2206544 c!1315423) b!7058735))

(assert (= (and d!2206544 (not c!1315423)) b!7058736))

(declare-fun m!7778020 () Bool)

(assert (=> b!7058736 m!7778020))

(assert (=> b!7058312 d!2206544))

(declare-fun d!2206546 () Bool)

(declare-fun lt!2534293 () Int)

(assert (=> d!2206546 (>= lt!2534293 0)))

(declare-fun e!4243630 () Int)

(assert (=> d!2206546 (= lt!2534293 e!4243630)))

(declare-fun c!1315424 () Bool)

(assert (=> d!2206546 (= c!1315424 (is-Nil!68154 (exprs!7080 lt!2533926)))))

(assert (=> d!2206546 (= (size!41161 (exprs!7080 lt!2533926)) lt!2534293)))

(declare-fun b!7058737 () Bool)

(assert (=> b!7058737 (= e!4243630 0)))

(declare-fun b!7058738 () Bool)

(assert (=> b!7058738 (= e!4243630 (+ 1 (size!41161 (t!382057 (exprs!7080 lt!2533926)))))))

(assert (= (and d!2206546 c!1315424) b!7058737))

(assert (= (and d!2206546 (not c!1315424)) b!7058738))

(declare-fun m!7778022 () Bool)

(assert (=> b!7058738 m!7778022))

(assert (=> b!7058312 d!2206546))

(assert (=> b!7058312 d!2206256))

(declare-fun b!7058739 () Bool)

(declare-fun e!4243636 () (Set Context!13160))

(declare-fun call!641338 () (Set Context!13160))

(assert (=> b!7058739 (= e!4243636 call!641338)))

(declare-fun c!1315428 () Bool)

(declare-fun bm!641328 () Bool)

(declare-fun c!1315426 () Bool)

(declare-fun call!641337 () List!68278)

(assert (=> bm!641328 (= call!641337 ($colon$colon!2630 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926))))))) (ite (or c!1315428 c!1315426) (regTwo!35680 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))) (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926))))))))))

(declare-fun b!7058740 () Bool)

(declare-fun e!4243631 () Bool)

(assert (=> b!7058740 (= c!1315428 e!4243631)))

(declare-fun res!2881679 () Bool)

(assert (=> b!7058740 (=> (not res!2881679) (not e!4243631))))

(assert (=> b!7058740 (= res!2881679 (is-Concat!26429 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))))))

(declare-fun e!4243634 () (Set Context!13160))

(declare-fun e!4243635 () (Set Context!13160))

(assert (=> b!7058740 (= e!4243634 e!4243635)))

(declare-fun b!7058741 () Bool)

(assert (=> b!7058741 (= e!4243631 (nullable!7267 (regOne!35680 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926))))))))))

(declare-fun b!7058742 () Bool)

(declare-fun e!4243633 () (Set Context!13160))

(assert (=> b!7058742 (= e!4243635 e!4243633)))

(assert (=> b!7058742 (= c!1315426 (is-Concat!26429 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))))))

(declare-fun b!7058743 () Bool)

(assert (=> b!7058743 (= e!4243636 (as set.empty (Set Context!13160)))))

(declare-fun bm!641329 () Bool)

(declare-fun call!641335 () (Set Context!13160))

(declare-fun call!641334 () (Set Context!13160))

(assert (=> bm!641329 (= call!641335 call!641334)))

(declare-fun b!7058744 () Bool)

(declare-fun call!641336 () (Set Context!13160))

(assert (=> b!7058744 (= e!4243634 (set.union call!641334 call!641336))))

(declare-fun b!7058745 () Bool)

(declare-fun c!1315427 () Bool)

(assert (=> b!7058745 (= c!1315427 (is-Star!17584 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))))))

(assert (=> b!7058745 (= e!4243633 e!4243636)))

(declare-fun bm!641330 () Bool)

(assert (=> bm!641330 (= call!641338 call!641335)))

(declare-fun b!7058746 () Bool)

(declare-fun e!4243632 () (Set Context!13160))

(assert (=> b!7058746 (= e!4243632 (set.insert (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))) (as set.empty (Set Context!13160))))))

(declare-fun c!1315429 () Bool)

(declare-fun bm!641332 () Bool)

(declare-fun call!641333 () List!68278)

(assert (=> bm!641332 (= call!641334 (derivationStepZipperDown!2218 (ite c!1315429 (regOne!35681 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))) (ite c!1315428 (regTwo!35680 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))) (ite c!1315426 (regOne!35680 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))) (reg!17913 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926))))))))) (ite (or c!1315429 c!1315428) (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))) (Context!13161 call!641333)) (h!74603 s!7408)))))

(declare-fun b!7058747 () Bool)

(assert (=> b!7058747 (= e!4243632 e!4243634)))

(assert (=> b!7058747 (= c!1315429 (is-Union!17584 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))))))

(declare-fun bm!641333 () Bool)

(assert (=> bm!641333 (= call!641333 call!641337)))

(declare-fun b!7058748 () Bool)

(assert (=> b!7058748 (= e!4243633 call!641338)))

(declare-fun b!7058749 () Bool)

(assert (=> b!7058749 (= e!4243635 (set.union call!641336 call!641335))))

(declare-fun d!2206548 () Bool)

(declare-fun c!1315425 () Bool)

(assert (=> d!2206548 (= c!1315425 (and (is-ElementMatch!17584 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))) (= (c!1315081 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))) (h!74603 s!7408))))))

(assert (=> d!2206548 (= (derivationStepZipperDown!2218 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926))))) (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))) (h!74603 s!7408)) e!4243632)))

(declare-fun bm!641331 () Bool)

(assert (=> bm!641331 (= call!641336 (derivationStepZipperDown!2218 (ite c!1315429 (regTwo!35681 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))) (regOne!35680 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926))))))) (ite c!1315429 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))) (Context!13161 call!641337)) (h!74603 s!7408)))))

(assert (= (and d!2206548 c!1315425) b!7058746))

(assert (= (and d!2206548 (not c!1315425)) b!7058747))

(assert (= (and b!7058747 c!1315429) b!7058744))

(assert (= (and b!7058747 (not c!1315429)) b!7058740))

(assert (= (and b!7058740 res!2881679) b!7058741))

(assert (= (and b!7058740 c!1315428) b!7058749))

(assert (= (and b!7058740 (not c!1315428)) b!7058742))

(assert (= (and b!7058742 c!1315426) b!7058748))

(assert (= (and b!7058742 (not c!1315426)) b!7058745))

(assert (= (and b!7058745 c!1315427) b!7058739))

(assert (= (and b!7058745 (not c!1315427)) b!7058743))

(assert (= (or b!7058748 b!7058739) bm!641333))

(assert (= (or b!7058748 b!7058739) bm!641330))

(assert (= (or b!7058749 bm!641330) bm!641329))

(assert (= (or b!7058749 bm!641333) bm!641328))

(assert (= (or b!7058744 bm!641329) bm!641332))

(assert (= (or b!7058744 b!7058749) bm!641331))

(declare-fun m!7778024 () Bool)

(assert (=> bm!641332 m!7778024))

(declare-fun m!7778026 () Bool)

(assert (=> bm!641331 m!7778026))

(declare-fun m!7778028 () Bool)

(assert (=> bm!641328 m!7778028))

(declare-fun m!7778030 () Bool)

(assert (=> b!7058746 m!7778030))

(declare-fun m!7778032 () Bool)

(assert (=> b!7058741 m!7778032))

(assert (=> bm!641266 d!2206548))

(declare-fun d!2206550 () Bool)

(assert (=> d!2206550 (= (isEmpty!39754 (tail!13726 (t!382058 s!7408))) (is-Nil!68155 (tail!13726 (t!382058 s!7408))))))

(assert (=> d!2206118 d!2206550))

(declare-fun d!2206552 () Bool)

(declare-fun lt!2534294 () Bool)

(assert (=> d!2206552 (= lt!2534294 (exists!3582 (toList!10925 (appendTo!705 lt!2533927 ct2!306)) lambda!421319))))

(assert (=> d!2206552 (= lt!2534294 (choose!53900 (appendTo!705 lt!2533927 ct2!306) lambda!421319))))

(assert (=> d!2206552 (= (exists!3584 (appendTo!705 lt!2533927 ct2!306) lambda!421319) lt!2534294)))

(declare-fun bs!1877837 () Bool)

(assert (= bs!1877837 d!2206552))

(assert (=> bs!1877837 m!7776410))

(declare-fun m!7778034 () Bool)

(assert (=> bs!1877837 m!7778034))

(assert (=> bs!1877837 m!7778034))

(declare-fun m!7778036 () Bool)

(assert (=> bs!1877837 m!7778036))

(assert (=> bs!1877837 m!7776410))

(declare-fun m!7778038 () Bool)

(assert (=> bs!1877837 m!7778038))

(assert (=> d!2206270 d!2206552))

(declare-fun bs!1877838 () Bool)

(declare-fun d!2206554 () Bool)

(assert (= bs!1877838 (and d!2206554 d!2206096)))

(declare-fun lambda!421343 () Int)

(assert (=> bs!1877838 (= lambda!421343 lambda!421302)))

(declare-fun bs!1877839 () Bool)

(assert (= bs!1877839 (and d!2206554 d!2206206)))

(assert (=> bs!1877839 (= lambda!421343 lambda!421315)))

(declare-fun bs!1877840 () Bool)

(assert (= bs!1877840 (and d!2206554 d!2206128)))

(assert (=> bs!1877840 (= lambda!421343 lambda!421305)))

(declare-fun bs!1877841 () Bool)

(assert (= bs!1877841 (and d!2206554 d!2205874)))

(assert (=> bs!1877841 (not (= lambda!421343 lambda!421268))))

(declare-fun bs!1877842 () Bool)

(assert (= bs!1877842 (and d!2206554 d!2206130)))

(assert (=> bs!1877842 (= lambda!421343 lambda!421306)))

(declare-fun bs!1877843 () Bool)

(assert (= bs!1877843 (and d!2206554 d!2206196)))

(assert (=> bs!1877843 (= lambda!421343 lambda!421313)))

(declare-fun bs!1877844 () Bool)

(assert (= bs!1877844 (and d!2206554 d!2206270)))

(assert (=> bs!1877844 (= lambda!421343 lambda!421319)))

(declare-fun bs!1877845 () Bool)

(assert (= bs!1877845 (and d!2206554 d!2206170)))

(assert (=> bs!1877845 (= lambda!421343 lambda!421312)))

(declare-fun bs!1877846 () Bool)

(assert (= bs!1877846 (and d!2206554 d!2205876)))

(assert (=> bs!1877846 (not (= lambda!421343 lambda!421271))))

(declare-fun bs!1877847 () Bool)

(assert (= bs!1877847 (and d!2206554 b!7057676)))

(assert (=> bs!1877847 (not (= lambda!421343 lambda!421193))))

(declare-fun bs!1877848 () Bool)

(assert (= bs!1877848 (and d!2206554 d!2206214)))

(assert (=> bs!1877848 (= lambda!421343 lambda!421316)))

(declare-fun bs!1877849 () Bool)

(assert (= bs!1877849 (and d!2206554 d!2206158)))

(assert (=> bs!1877849 (not (= lambda!421343 lambda!421311))))

(declare-fun bs!1877850 () Bool)

(assert (= bs!1877850 (and d!2206554 d!2206156)))

(assert (=> bs!1877850 (not (= lambda!421343 lambda!421308))))

(assert (=> d!2206554 (= (nullableZipper!2667 (content!13703 lt!2533923)) (exists!3584 (content!13703 lt!2533923) lambda!421343))))

(declare-fun bs!1877851 () Bool)

(assert (= bs!1877851 d!2206554))

(assert (=> bs!1877851 m!7776726))

(declare-fun m!7778040 () Bool)

(assert (=> bs!1877851 m!7778040))

(assert (=> b!7058241 d!2206554))

(declare-fun d!2206556 () Bool)

(declare-fun c!1315430 () Bool)

(assert (=> d!2206556 (= c!1315430 (is-Nil!68156 res!2881493))))

(declare-fun e!4243637 () (Set Context!13160))

(assert (=> d!2206556 (= (content!13703 res!2881493) e!4243637)))

(declare-fun b!7058750 () Bool)

(assert (=> b!7058750 (= e!4243637 (as set.empty (Set Context!13160)))))

(declare-fun b!7058751 () Bool)

(assert (=> b!7058751 (= e!4243637 (set.union (set.insert (h!74604 res!2881493) (as set.empty (Set Context!13160))) (content!13703 (t!382059 res!2881493))))))

(assert (= (and d!2206556 c!1315430) b!7058750))

(assert (= (and d!2206556 (not c!1315430)) b!7058751))

(declare-fun m!7778042 () Bool)

(assert (=> b!7058751 m!7778042))

(declare-fun m!7778044 () Bool)

(assert (=> b!7058751 m!7778044))

(assert (=> b!7058119 d!2206556))

(declare-fun d!2206558 () Bool)

(assert (=> d!2206558 (= (flatMap!2510 lt!2533953 lambda!421317) (choose!53885 lt!2533953 lambda!421317))))

(declare-fun bs!1877852 () Bool)

(assert (= bs!1877852 d!2206558))

(declare-fun m!7778046 () Bool)

(assert (=> bs!1877852 m!7778046))

(assert (=> d!2206228 d!2206558))

(declare-fun bs!1877853 () Bool)

(declare-fun d!2206560 () Bool)

(assert (= bs!1877853 (and d!2206560 d!2206096)))

(declare-fun lambda!421344 () Int)

(assert (=> bs!1877853 (= lambda!421344 lambda!421302)))

(declare-fun bs!1877854 () Bool)

(assert (= bs!1877854 (and d!2206560 d!2206554)))

(assert (=> bs!1877854 (= lambda!421344 lambda!421343)))

(declare-fun bs!1877855 () Bool)

(assert (= bs!1877855 (and d!2206560 d!2206206)))

(assert (=> bs!1877855 (= lambda!421344 lambda!421315)))

(declare-fun bs!1877856 () Bool)

(assert (= bs!1877856 (and d!2206560 d!2206128)))

(assert (=> bs!1877856 (= lambda!421344 lambda!421305)))

(declare-fun bs!1877857 () Bool)

(assert (= bs!1877857 (and d!2206560 d!2205874)))

(assert (=> bs!1877857 (not (= lambda!421344 lambda!421268))))

(declare-fun bs!1877858 () Bool)

(assert (= bs!1877858 (and d!2206560 d!2206130)))

(assert (=> bs!1877858 (= lambda!421344 lambda!421306)))

(declare-fun bs!1877859 () Bool)

(assert (= bs!1877859 (and d!2206560 d!2206196)))

(assert (=> bs!1877859 (= lambda!421344 lambda!421313)))

(declare-fun bs!1877860 () Bool)

(assert (= bs!1877860 (and d!2206560 d!2206270)))

(assert (=> bs!1877860 (= lambda!421344 lambda!421319)))

(declare-fun bs!1877861 () Bool)

(assert (= bs!1877861 (and d!2206560 d!2206170)))

(assert (=> bs!1877861 (= lambda!421344 lambda!421312)))

(declare-fun bs!1877862 () Bool)

(assert (= bs!1877862 (and d!2206560 d!2205876)))

(assert (=> bs!1877862 (not (= lambda!421344 lambda!421271))))

(declare-fun bs!1877863 () Bool)

(assert (= bs!1877863 (and d!2206560 b!7057676)))

(assert (=> bs!1877863 (not (= lambda!421344 lambda!421193))))

(declare-fun bs!1877864 () Bool)

(assert (= bs!1877864 (and d!2206560 d!2206214)))

(assert (=> bs!1877864 (= lambda!421344 lambda!421316)))

(declare-fun bs!1877865 () Bool)

(assert (= bs!1877865 (and d!2206560 d!2206158)))

(assert (=> bs!1877865 (not (= lambda!421344 lambda!421311))))

(declare-fun bs!1877866 () Bool)

(assert (= bs!1877866 (and d!2206560 d!2206156)))

(assert (=> bs!1877866 (not (= lambda!421344 lambda!421308))))

(assert (=> d!2206560 (= (nullableZipper!2667 (derivationStepZipper!3034 lt!2533938 (head!14368 (t!382058 s!7408)))) (exists!3584 (derivationStepZipper!3034 lt!2533938 (head!14368 (t!382058 s!7408))) lambda!421344))))

(declare-fun bs!1877867 () Bool)

(assert (= bs!1877867 d!2206560))

(assert (=> bs!1877867 m!7776784))

(declare-fun m!7778048 () Bool)

(assert (=> bs!1877867 m!7778048))

(assert (=> b!7058286 d!2206560))

(assert (=> d!2206234 d!2206232))

(assert (=> d!2206234 d!2205896))

(declare-fun d!2206562 () Bool)

(assert (=> d!2206562 (= (nullable!7267 (regOne!35680 (h!74602 (exprs!7080 lt!2533961)))) (nullableFct!2783 (regOne!35680 (h!74602 (exprs!7080 lt!2533961)))))))

(declare-fun bs!1877868 () Bool)

(assert (= bs!1877868 d!2206562))

(declare-fun m!7778050 () Bool)

(assert (=> bs!1877868 m!7778050))

(assert (=> b!7058160 d!2206562))

(declare-fun bs!1877869 () Bool)

(declare-fun d!2206564 () Bool)

(assert (= bs!1877869 (and d!2206564 d!2206096)))

(declare-fun lambda!421345 () Int)

(assert (=> bs!1877869 (not (= lambda!421345 lambda!421302))))

(declare-fun bs!1877870 () Bool)

(assert (= bs!1877870 (and d!2206564 d!2206554)))

(assert (=> bs!1877870 (not (= lambda!421345 lambda!421343))))

(declare-fun bs!1877871 () Bool)

(assert (= bs!1877871 (and d!2206564 d!2206206)))

(assert (=> bs!1877871 (not (= lambda!421345 lambda!421315))))

(declare-fun bs!1877872 () Bool)

(assert (= bs!1877872 (and d!2206564 d!2206128)))

(assert (=> bs!1877872 (not (= lambda!421345 lambda!421305))))

(declare-fun bs!1877873 () Bool)

(assert (= bs!1877873 (and d!2206564 d!2205874)))

(assert (=> bs!1877873 (= lambda!421345 lambda!421268)))

(declare-fun bs!1877874 () Bool)

(assert (= bs!1877874 (and d!2206564 d!2206130)))

(assert (=> bs!1877874 (not (= lambda!421345 lambda!421306))))

(declare-fun bs!1877875 () Bool)

(assert (= bs!1877875 (and d!2206564 d!2206196)))

(assert (=> bs!1877875 (not (= lambda!421345 lambda!421313))))

(declare-fun bs!1877876 () Bool)

(assert (= bs!1877876 (and d!2206564 d!2206270)))

(assert (=> bs!1877876 (not (= lambda!421345 lambda!421319))))

(declare-fun bs!1877877 () Bool)

(assert (= bs!1877877 (and d!2206564 d!2206560)))

(assert (=> bs!1877877 (not (= lambda!421345 lambda!421344))))

(declare-fun bs!1877878 () Bool)

(assert (= bs!1877878 (and d!2206564 d!2206170)))

(assert (=> bs!1877878 (not (= lambda!421345 lambda!421312))))

(declare-fun bs!1877879 () Bool)

(assert (= bs!1877879 (and d!2206564 d!2205876)))

(assert (=> bs!1877879 (not (= lambda!421345 lambda!421271))))

(declare-fun bs!1877880 () Bool)

(assert (= bs!1877880 (and d!2206564 b!7057676)))

(assert (=> bs!1877880 (not (= lambda!421345 lambda!421193))))

(declare-fun bs!1877881 () Bool)

(assert (= bs!1877881 (and d!2206564 d!2206214)))

(assert (=> bs!1877881 (not (= lambda!421345 lambda!421316))))

(declare-fun bs!1877882 () Bool)

(assert (= bs!1877882 (and d!2206564 d!2206158)))

(assert (=> bs!1877882 (not (= lambda!421345 lambda!421311))))

(declare-fun bs!1877883 () Bool)

(assert (= bs!1877883 (and d!2206564 d!2206156)))

(assert (=> bs!1877883 (= (= lambda!421193 lambda!421271) (= lambda!421345 lambda!421308))))

(assert (=> d!2206564 true))

(assert (=> d!2206564 (< (dynLambda!27675 order!28341 lambda!421193) (dynLambda!27675 order!28341 lambda!421345))))

(assert (=> d!2206564 (= (exists!3582 (toList!10925 lt!2533930) lambda!421193) (not (forall!16537 (toList!10925 lt!2533930) lambda!421345)))))

(declare-fun bs!1877884 () Bool)

(assert (= bs!1877884 d!2206564))

(assert (=> bs!1877884 m!7776398))

(declare-fun m!7778052 () Bool)

(assert (=> bs!1877884 m!7778052))

(assert (=> d!2206070 d!2206564))

(assert (=> d!2206070 d!2205878))

(declare-fun d!2206566 () Bool)

(declare-fun res!2881682 () Bool)

(assert (=> d!2206566 (= res!2881682 (exists!3582 (toList!10925 lt!2533930) lambda!421193))))

(assert (=> d!2206566 true))

(assert (=> d!2206566 (= (choose!53900 lt!2533930 lambda!421193) res!2881682)))

(declare-fun bs!1877885 () Bool)

(assert (= bs!1877885 d!2206566))

(assert (=> bs!1877885 m!7776398))

(assert (=> bs!1877885 m!7776398))

(assert (=> bs!1877885 m!7777152))

(assert (=> d!2206070 d!2206566))

(declare-fun b!7058752 () Bool)

(declare-fun e!4243643 () (Set Context!13160))

(declare-fun call!641344 () (Set Context!13160))

(assert (=> b!7058752 (= e!4243643 call!641344)))

(declare-fun bm!641334 () Bool)

(declare-fun c!1315432 () Bool)

(declare-fun call!641343 () List!68278)

(declare-fun c!1315434 () Bool)

(assert (=> bm!641334 (= call!641343 ($colon$colon!2630 (exprs!7080 (ite c!1315269 (ite (or c!1315151 c!1315150) lt!2533961 (Context!13161 call!641201)) (Context!13161 call!641257))) (ite (or c!1315434 c!1315432) (regTwo!35680 (ite c!1315269 (regTwo!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))))) (ite c!1315269 (regTwo!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918)))))))))))))

(declare-fun b!7058753 () Bool)

(declare-fun e!4243638 () Bool)

(assert (=> b!7058753 (= c!1315434 e!4243638)))

(declare-fun res!2881683 () Bool)

(assert (=> b!7058753 (=> (not res!2881683) (not e!4243638))))

(assert (=> b!7058753 (= res!2881683 (is-Concat!26429 (ite c!1315269 (regTwo!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))))))))

(declare-fun e!4243641 () (Set Context!13160))

(declare-fun e!4243642 () (Set Context!13160))

(assert (=> b!7058753 (= e!4243641 e!4243642)))

(declare-fun b!7058754 () Bool)

(assert (=> b!7058754 (= e!4243638 (nullable!7267 (regOne!35680 (ite c!1315269 (regTwo!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918)))))))))))))

(declare-fun b!7058755 () Bool)

(declare-fun e!4243640 () (Set Context!13160))

(assert (=> b!7058755 (= e!4243642 e!4243640)))

(assert (=> b!7058755 (= c!1315432 (is-Concat!26429 (ite c!1315269 (regTwo!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))))))))

(declare-fun b!7058756 () Bool)

(assert (=> b!7058756 (= e!4243643 (as set.empty (Set Context!13160)))))

(declare-fun bm!641335 () Bool)

(declare-fun call!641341 () (Set Context!13160))

(declare-fun call!641340 () (Set Context!13160))

(assert (=> bm!641335 (= call!641341 call!641340)))

(declare-fun b!7058757 () Bool)

(declare-fun call!641342 () (Set Context!13160))

(assert (=> b!7058757 (= e!4243641 (set.union call!641340 call!641342))))

(declare-fun b!7058758 () Bool)

(declare-fun c!1315433 () Bool)

(assert (=> b!7058758 (= c!1315433 (is-Star!17584 (ite c!1315269 (regTwo!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))))))))

(assert (=> b!7058758 (= e!4243640 e!4243643)))

(declare-fun bm!641336 () Bool)

(assert (=> bm!641336 (= call!641344 call!641341)))

(declare-fun e!4243639 () (Set Context!13160))

(declare-fun b!7058759 () Bool)

(assert (=> b!7058759 (= e!4243639 (set.insert (ite c!1315269 (ite (or c!1315151 c!1315150) lt!2533961 (Context!13161 call!641201)) (Context!13161 call!641257)) (as set.empty (Set Context!13160))))))

(declare-fun call!641339 () List!68278)

(declare-fun c!1315435 () Bool)

(declare-fun bm!641338 () Bool)

(assert (=> bm!641338 (= call!641340 (derivationStepZipperDown!2218 (ite c!1315435 (regOne!35681 (ite c!1315269 (regTwo!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))))) (ite c!1315434 (regTwo!35680 (ite c!1315269 (regTwo!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))))) (ite c!1315432 (regOne!35680 (ite c!1315269 (regTwo!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))))) (reg!17913 (ite c!1315269 (regTwo!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918)))))))))))) (ite (or c!1315435 c!1315434) (ite c!1315269 (ite (or c!1315151 c!1315150) lt!2533961 (Context!13161 call!641201)) (Context!13161 call!641257)) (Context!13161 call!641339)) (h!74603 s!7408)))))

(declare-fun b!7058760 () Bool)

(assert (=> b!7058760 (= e!4243639 e!4243641)))

(assert (=> b!7058760 (= c!1315435 (is-Union!17584 (ite c!1315269 (regTwo!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))))))))

(declare-fun bm!641339 () Bool)

(assert (=> bm!641339 (= call!641339 call!641343)))

(declare-fun b!7058761 () Bool)

(assert (=> b!7058761 (= e!4243640 call!641344)))

(declare-fun b!7058762 () Bool)

(assert (=> b!7058762 (= e!4243642 (set.union call!641342 call!641341))))

(declare-fun d!2206568 () Bool)

(declare-fun c!1315431 () Bool)

(assert (=> d!2206568 (= c!1315431 (and (is-ElementMatch!17584 (ite c!1315269 (regTwo!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))))) (= (c!1315081 (ite c!1315269 (regTwo!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))))) (h!74603 s!7408))))))

(assert (=> d!2206568 (= (derivationStepZipperDown!2218 (ite c!1315269 (regTwo!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918)))))))) (ite c!1315269 (ite (or c!1315151 c!1315150) lt!2533961 (Context!13161 call!641201)) (Context!13161 call!641257)) (h!74603 s!7408)) e!4243639)))

(declare-fun bm!641337 () Bool)

(assert (=> bm!641337 (= call!641342 (derivationStepZipperDown!2218 (ite c!1315435 (regTwo!35681 (ite c!1315269 (regTwo!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))))) (regOne!35680 (ite c!1315269 (regTwo!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918)))))))))) (ite c!1315435 (ite c!1315269 (ite (or c!1315151 c!1315150) lt!2533961 (Context!13161 call!641201)) (Context!13161 call!641257)) (Context!13161 call!641343)) (h!74603 s!7408)))))

(assert (= (and d!2206568 c!1315431) b!7058759))

(assert (= (and d!2206568 (not c!1315431)) b!7058760))

(assert (= (and b!7058760 c!1315435) b!7058757))

(assert (= (and b!7058760 (not c!1315435)) b!7058753))

(assert (= (and b!7058753 res!2881683) b!7058754))

(assert (= (and b!7058753 c!1315434) b!7058762))

(assert (= (and b!7058753 (not c!1315434)) b!7058755))

(assert (= (and b!7058755 c!1315432) b!7058761))

(assert (= (and b!7058755 (not c!1315432)) b!7058758))

(assert (= (and b!7058758 c!1315433) b!7058752))

(assert (= (and b!7058758 (not c!1315433)) b!7058756))

(assert (= (or b!7058761 b!7058752) bm!641339))

(assert (= (or b!7058761 b!7058752) bm!641336))

(assert (= (or b!7058762 bm!641336) bm!641335))

(assert (= (or b!7058762 bm!641339) bm!641334))

(assert (= (or b!7058757 bm!641335) bm!641338))

(assert (= (or b!7058757 b!7058762) bm!641337))

(declare-fun m!7778054 () Bool)

(assert (=> bm!641338 m!7778054))

(declare-fun m!7778056 () Bool)

(assert (=> bm!641337 m!7778056))

(declare-fun m!7778058 () Bool)

(assert (=> bm!641334 m!7778058))

(declare-fun m!7778060 () Bool)

(assert (=> b!7058759 m!7778060))

(declare-fun m!7778062 () Bool)

(assert (=> b!7058754 m!7778062))

(assert (=> bm!641251 d!2206568))

(declare-fun b!7058763 () Bool)

(declare-fun e!4243644 () Int)

(declare-fun e!4243645 () Int)

(assert (=> b!7058763 (= e!4243644 e!4243645)))

(declare-fun c!1315436 () Bool)

(assert (=> b!7058763 (= c!1315436 (is-Star!17584 (ite c!1315296 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))))))))

(declare-fun b!7058764 () Bool)

(declare-fun e!4243647 () Int)

(declare-fun e!4243646 () Int)

(assert (=> b!7058764 (= e!4243647 e!4243646)))

(declare-fun c!1315439 () Bool)

(assert (=> b!7058764 (= c!1315439 (is-Concat!26429 (ite c!1315296 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))))))))

(declare-fun b!7058765 () Bool)

(declare-fun c!1315437 () Bool)

(assert (=> b!7058765 (= c!1315437 (is-Union!17584 (ite c!1315296 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))))))))

(assert (=> b!7058765 (= e!4243645 e!4243647)))

(declare-fun bm!641340 () Bool)

(declare-fun call!641347 () Int)

(assert (=> bm!641340 (= call!641347 (regexDepthTotal!316 (ite c!1315436 (reg!17913 (ite c!1315296 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315437 (regTwo!35681 (ite c!1315296 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))))) (regOne!35680 (ite c!1315296 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (regTwo!35680 (h!74602 (exprs!7080 lt!2533918)))))))))))

(declare-fun b!7058766 () Bool)

(assert (=> b!7058766 (= e!4243646 1)))

(declare-fun b!7058767 () Bool)

(declare-fun call!641345 () Int)

(declare-fun call!641346 () Int)

(assert (=> b!7058767 (= e!4243646 (+ 1 call!641345 call!641346))))

(declare-fun d!2206570 () Bool)

(declare-fun lt!2534295 () Int)

(assert (=> d!2206570 (> lt!2534295 0)))

(assert (=> d!2206570 (= lt!2534295 e!4243644)))

(declare-fun c!1315438 () Bool)

(assert (=> d!2206570 (= c!1315438 (is-ElementMatch!17584 (ite c!1315296 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))))))))

(assert (=> d!2206570 (= (regexDepthTotal!316 (ite c!1315296 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))))) lt!2534295)))

(declare-fun b!7058768 () Bool)

(assert (=> b!7058768 (= e!4243647 (+ 1 call!641346 call!641345))))

(declare-fun b!7058769 () Bool)

(assert (=> b!7058769 (= e!4243645 (+ 1 call!641347))))

(declare-fun bm!641341 () Bool)

(assert (=> bm!641341 (= call!641346 (regexDepthTotal!316 (ite c!1315437 (regOne!35681 (ite c!1315296 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))))) (regTwo!35680 (ite c!1315296 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))))))))))

(declare-fun b!7058770 () Bool)

(assert (=> b!7058770 (= e!4243644 1)))

(declare-fun bm!641342 () Bool)

(assert (=> bm!641342 (= call!641345 call!641347)))

(assert (= (and d!2206570 c!1315438) b!7058770))

(assert (= (and d!2206570 (not c!1315438)) b!7058763))

(assert (= (and b!7058763 c!1315436) b!7058769))

(assert (= (and b!7058763 (not c!1315436)) b!7058765))

(assert (= (and b!7058765 c!1315437) b!7058768))

(assert (= (and b!7058765 (not c!1315437)) b!7058764))

(assert (= (and b!7058764 c!1315439) b!7058767))

(assert (= (and b!7058764 (not c!1315439)) b!7058766))

(assert (= (or b!7058768 b!7058767) bm!641342))

(assert (= (or b!7058768 b!7058767) bm!641341))

(assert (= (or b!7058769 bm!641342) bm!641340))

(declare-fun m!7778064 () Bool)

(assert (=> bm!641340 m!7778064))

(declare-fun m!7778066 () Bool)

(assert (=> bm!641341 m!7778066))

(assert (=> bm!641269 d!2206570))

(declare-fun b!7058771 () Bool)

(declare-fun lt!2534296 () Unit!161841)

(declare-fun Unit!161847 () Unit!161841)

(assert (=> b!7058771 (= lt!2534296 Unit!161847)))

(assert (=> b!7058771 false))

(declare-fun e!4243649 () Context!13160)

(assert (=> b!7058771 (= e!4243649 (head!14370 (t!382059 (toList!10925 lt!2533930))))))

(declare-fun b!7058772 () Bool)

(declare-fun e!4243650 () Context!13160)

(assert (=> b!7058772 (= e!4243650 e!4243649)))

(declare-fun c!1315440 () Bool)

(assert (=> b!7058772 (= c!1315440 (is-Cons!68156 (t!382059 (toList!10925 lt!2533930))))))

(declare-fun b!7058773 () Bool)

(assert (=> b!7058773 (= e!4243649 (getWitness!1658 (t!382059 (t!382059 (toList!10925 lt!2533930))) lambda!421193))))

(declare-fun d!2206572 () Bool)

(declare-fun e!4243648 () Bool)

(assert (=> d!2206572 e!4243648))

(declare-fun res!2881685 () Bool)

(assert (=> d!2206572 (=> (not res!2881685) (not e!4243648))))

(declare-fun lt!2534297 () Context!13160)

(assert (=> d!2206572 (= res!2881685 (dynLambda!27676 lambda!421193 lt!2534297))))

(assert (=> d!2206572 (= lt!2534297 e!4243650)))

(declare-fun c!1315441 () Bool)

(declare-fun e!4243651 () Bool)

(assert (=> d!2206572 (= c!1315441 e!4243651)))

(declare-fun res!2881684 () Bool)

(assert (=> d!2206572 (=> (not res!2881684) (not e!4243651))))

(assert (=> d!2206572 (= res!2881684 (is-Cons!68156 (t!382059 (toList!10925 lt!2533930))))))

(assert (=> d!2206572 (exists!3582 (t!382059 (toList!10925 lt!2533930)) lambda!421193)))

(assert (=> d!2206572 (= (getWitness!1658 (t!382059 (toList!10925 lt!2533930)) lambda!421193) lt!2534297)))

(declare-fun b!7058774 () Bool)

(assert (=> b!7058774 (= e!4243651 (dynLambda!27676 lambda!421193 (h!74604 (t!382059 (toList!10925 lt!2533930)))))))

(declare-fun b!7058775 () Bool)

(assert (=> b!7058775 (= e!4243648 (contains!20486 (t!382059 (toList!10925 lt!2533930)) lt!2534297))))

(declare-fun b!7058776 () Bool)

(assert (=> b!7058776 (= e!4243650 (h!74604 (t!382059 (toList!10925 lt!2533930))))))

(assert (= (and d!2206572 res!2881684) b!7058774))

(assert (= (and d!2206572 c!1315441) b!7058776))

(assert (= (and d!2206572 (not c!1315441)) b!7058772))

(assert (= (and b!7058772 c!1315440) b!7058773))

(assert (= (and b!7058772 (not c!1315440)) b!7058771))

(assert (= (and d!2206572 res!2881685) b!7058775))

(declare-fun b_lambda!269081 () Bool)

(assert (=> (not b_lambda!269081) (not d!2206572)))

(declare-fun b_lambda!269083 () Bool)

(assert (=> (not b_lambda!269083) (not b!7058774)))

(declare-fun m!7778068 () Bool)

(assert (=> b!7058775 m!7778068))

(declare-fun m!7778070 () Bool)

(assert (=> b!7058773 m!7778070))

(declare-fun m!7778072 () Bool)

(assert (=> d!2206572 m!7778072))

(declare-fun m!7778074 () Bool)

(assert (=> d!2206572 m!7778074))

(declare-fun m!7778076 () Bool)

(assert (=> b!7058771 m!7778076))

(declare-fun m!7778078 () Bool)

(assert (=> b!7058774 m!7778078))

(assert (=> b!7058134 d!2206572))

(assert (=> d!2206042 d!2205846))

(declare-fun d!2206574 () Bool)

(declare-fun lt!2534298 () Bool)

(assert (=> d!2206574 (= lt!2534298 (exists!3582 (toList!10925 lt!2533953) lambda!421305))))

(assert (=> d!2206574 (= lt!2534298 (choose!53900 lt!2533953 lambda!421305))))

(assert (=> d!2206574 (= (exists!3584 lt!2533953 lambda!421305) lt!2534298)))

(declare-fun bs!1877886 () Bool)

(assert (= bs!1877886 d!2206574))

(declare-fun m!7778080 () Bool)

(assert (=> bs!1877886 m!7778080))

(assert (=> bs!1877886 m!7778080))

(declare-fun m!7778082 () Bool)

(assert (=> bs!1877886 m!7778082))

(declare-fun m!7778084 () Bool)

(assert (=> bs!1877886 m!7778084))

(assert (=> d!2206128 d!2206574))

(assert (=> d!2206132 d!2206082))

(declare-fun b!7058795 () Bool)

(declare-fun res!2881700 () Bool)

(declare-fun e!4243672 () Bool)

(assert (=> b!7058795 (=> (not res!2881700) (not e!4243672))))

(declare-fun call!641354 () Bool)

(assert (=> b!7058795 (= res!2881700 call!641354)))

(declare-fun e!4243671 () Bool)

(assert (=> b!7058795 (= e!4243671 e!4243672)))

(declare-fun b!7058796 () Bool)

(declare-fun e!4243669 () Bool)

(declare-fun call!641356 () Bool)

(assert (=> b!7058796 (= e!4243669 call!641356)))

(declare-fun bm!641349 () Bool)

(assert (=> bm!641349 (= call!641354 call!641356)))

(declare-fun b!7058797 () Bool)

(declare-fun res!2881696 () Bool)

(declare-fun e!4243667 () Bool)

(assert (=> b!7058797 (=> res!2881696 e!4243667)))

(assert (=> b!7058797 (= res!2881696 (not (is-Concat!26429 (h!74602 (exprs!7080 ct2!306)))))))

(assert (=> b!7058797 (= e!4243671 e!4243667)))

(declare-fun b!7058798 () Bool)

(declare-fun e!4243670 () Bool)

(declare-fun e!4243666 () Bool)

(assert (=> b!7058798 (= e!4243670 e!4243666)))

(declare-fun c!1315447 () Bool)

(assert (=> b!7058798 (= c!1315447 (is-Star!17584 (h!74602 (exprs!7080 ct2!306))))))

(declare-fun b!7058799 () Bool)

(declare-fun e!4243668 () Bool)

(assert (=> b!7058799 (= e!4243667 e!4243668)))

(declare-fun res!2881697 () Bool)

(assert (=> b!7058799 (=> (not res!2881697) (not e!4243668))))

(assert (=> b!7058799 (= res!2881697 call!641354)))

(declare-fun b!7058800 () Bool)

(assert (=> b!7058800 (= e!4243666 e!4243669)))

(declare-fun res!2881699 () Bool)

(assert (=> b!7058800 (= res!2881699 (not (nullable!7267 (reg!17913 (h!74602 (exprs!7080 ct2!306))))))))

(assert (=> b!7058800 (=> (not res!2881699) (not e!4243669))))

(declare-fun b!7058801 () Bool)

(declare-fun call!641355 () Bool)

(assert (=> b!7058801 (= e!4243668 call!641355)))

(declare-fun bm!641350 () Bool)

(declare-fun c!1315446 () Bool)

(assert (=> bm!641350 (= call!641355 (validRegex!8960 (ite c!1315446 (regTwo!35681 (h!74602 (exprs!7080 ct2!306))) (regTwo!35680 (h!74602 (exprs!7080 ct2!306))))))))

(declare-fun d!2206576 () Bool)

(declare-fun res!2881698 () Bool)

(assert (=> d!2206576 (=> res!2881698 e!4243670)))

(assert (=> d!2206576 (= res!2881698 (is-ElementMatch!17584 (h!74602 (exprs!7080 ct2!306))))))

(assert (=> d!2206576 (= (validRegex!8960 (h!74602 (exprs!7080 ct2!306))) e!4243670)))

(declare-fun b!7058802 () Bool)

(assert (=> b!7058802 (= e!4243672 call!641355)))

(declare-fun b!7058803 () Bool)

(assert (=> b!7058803 (= e!4243666 e!4243671)))

(assert (=> b!7058803 (= c!1315446 (is-Union!17584 (h!74602 (exprs!7080 ct2!306))))))

(declare-fun bm!641351 () Bool)

(assert (=> bm!641351 (= call!641356 (validRegex!8960 (ite c!1315447 (reg!17913 (h!74602 (exprs!7080 ct2!306))) (ite c!1315446 (regOne!35681 (h!74602 (exprs!7080 ct2!306))) (regOne!35680 (h!74602 (exprs!7080 ct2!306)))))))))

(assert (= (and d!2206576 (not res!2881698)) b!7058798))

(assert (= (and b!7058798 c!1315447) b!7058800))

(assert (= (and b!7058798 (not c!1315447)) b!7058803))

(assert (= (and b!7058800 res!2881699) b!7058796))

(assert (= (and b!7058803 c!1315446) b!7058795))

(assert (= (and b!7058803 (not c!1315446)) b!7058797))

(assert (= (and b!7058795 res!2881700) b!7058802))

(assert (= (and b!7058797 (not res!2881696)) b!7058799))

(assert (= (and b!7058799 res!2881697) b!7058801))

(assert (= (or b!7058802 b!7058801) bm!641350))

(assert (= (or b!7058795 b!7058799) bm!641349))

(assert (= (or b!7058796 bm!641349) bm!641351))

(declare-fun m!7778086 () Bool)

(assert (=> b!7058800 m!7778086))

(declare-fun m!7778088 () Bool)

(assert (=> bm!641350 m!7778088))

(declare-fun m!7778090 () Bool)

(assert (=> bm!641351 m!7778090))

(assert (=> bs!1877648 d!2206576))

(declare-fun d!2206578 () Bool)

(declare-fun c!1315448 () Bool)

(assert (=> d!2206578 (= c!1315448 (isEmpty!39754 (tail!13726 (tail!13726 s!7408))))))

(declare-fun e!4243673 () Bool)

(assert (=> d!2206578 (= (matchZipper!3124 (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533953 (head!14368 s!7408)) (head!14368 (tail!13726 s!7408))) (tail!13726 (tail!13726 s!7408))) e!4243673)))

(declare-fun b!7058804 () Bool)

(assert (=> b!7058804 (= e!4243673 (nullableZipper!2667 (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533953 (head!14368 s!7408)) (head!14368 (tail!13726 s!7408)))))))

(declare-fun b!7058805 () Bool)

(assert (=> b!7058805 (= e!4243673 (matchZipper!3124 (derivationStepZipper!3034 (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533953 (head!14368 s!7408)) (head!14368 (tail!13726 s!7408))) (head!14368 (tail!13726 (tail!13726 s!7408)))) (tail!13726 (tail!13726 (tail!13726 s!7408)))))))

(assert (= (and d!2206578 c!1315448) b!7058804))

(assert (= (and d!2206578 (not c!1315448)) b!7058805))

(assert (=> d!2206578 m!7777220))

(declare-fun m!7778092 () Bool)

(assert (=> d!2206578 m!7778092))

(assert (=> b!7058804 m!7777464))

(declare-fun m!7778094 () Bool)

(assert (=> b!7058804 m!7778094))

(assert (=> b!7058805 m!7777220))

(declare-fun m!7778096 () Bool)

(assert (=> b!7058805 m!7778096))

(assert (=> b!7058805 m!7777464))

(assert (=> b!7058805 m!7778096))

(declare-fun m!7778098 () Bool)

(assert (=> b!7058805 m!7778098))

(assert (=> b!7058805 m!7777220))

(declare-fun m!7778100 () Bool)

(assert (=> b!7058805 m!7778100))

(assert (=> b!7058805 m!7778098))

(assert (=> b!7058805 m!7778100))

(declare-fun m!7778102 () Bool)

(assert (=> b!7058805 m!7778102))

(assert (=> b!7058315 d!2206578))

(declare-fun bs!1877887 () Bool)

(declare-fun d!2206580 () Bool)

(assert (= bs!1877887 (and d!2206580 d!2205914)))

(declare-fun lambda!421346 () Int)

(assert (=> bs!1877887 (= (= (head!14368 (tail!13726 s!7408)) (h!74603 s!7408)) (= lambda!421346 lambda!421276))))

(declare-fun bs!1877888 () Bool)

(assert (= bs!1877888 (and d!2206580 d!2206094)))

(assert (=> bs!1877888 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 (t!382058 s!7408))) (= lambda!421346 lambda!421299))))

(declare-fun bs!1877889 () Bool)

(assert (= bs!1877889 (and d!2206580 d!2206138)))

(assert (=> bs!1877889 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 s!7408)) (= lambda!421346 lambda!421307))))

(declare-fun bs!1877890 () Bool)

(assert (= bs!1877890 (and d!2206580 d!2206120)))

(assert (=> bs!1877890 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 (t!382058 s!7408))) (= lambda!421346 lambda!421304))))

(declare-fun bs!1877891 () Bool)

(assert (= bs!1877891 (and d!2206580 d!2206200)))

(assert (=> bs!1877891 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 (t!382058 s!7408))) (= lambda!421346 lambda!421314))))

(declare-fun bs!1877892 () Bool)

(assert (= bs!1877892 (and d!2206580 d!2206056)))

(assert (=> bs!1877892 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 (t!382058 s!7408))) (= lambda!421346 lambda!421298))))

(declare-fun bs!1877893 () Bool)

(assert (= bs!1877893 (and d!2206580 d!2206228)))

(assert (=> bs!1877893 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 s!7408)) (= lambda!421346 lambda!421317))))

(declare-fun bs!1877894 () Bool)

(assert (= bs!1877894 (and d!2206580 d!2206268)))

(assert (=> bs!1877894 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 s!7408)) (= lambda!421346 lambda!421318))))

(declare-fun bs!1877895 () Bool)

(assert (= bs!1877895 (and d!2206580 d!2206100)))

(assert (=> bs!1877895 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 s!7408)) (= lambda!421346 lambda!421303))))

(declare-fun bs!1877896 () Bool)

(assert (= bs!1877896 (and d!2206580 b!7057661)))

(assert (=> bs!1877896 (= (= (head!14368 (tail!13726 s!7408)) (h!74603 s!7408)) (= lambda!421346 lambda!421196))))

(declare-fun bs!1877897 () Bool)

(assert (= bs!1877897 (and d!2206580 d!2205882)))

(assert (=> bs!1877897 (= (= (head!14368 (tail!13726 s!7408)) (h!74603 s!7408)) (= lambda!421346 lambda!421274))))

(assert (=> d!2206580 true))

(assert (=> d!2206580 (= (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533953 (head!14368 s!7408)) (head!14368 (tail!13726 s!7408))) (flatMap!2510 (derivationStepZipper!3034 lt!2533953 (head!14368 s!7408)) lambda!421346))))

(declare-fun bs!1877898 () Bool)

(assert (= bs!1877898 d!2206580))

(assert (=> bs!1877898 m!7776804))

(declare-fun m!7778104 () Bool)

(assert (=> bs!1877898 m!7778104))

(assert (=> b!7058315 d!2206580))

(declare-fun d!2206582 () Bool)

(assert (=> d!2206582 (= (head!14368 (tail!13726 s!7408)) (h!74603 (tail!13726 s!7408)))))

(assert (=> b!7058315 d!2206582))

(declare-fun d!2206584 () Bool)

(assert (=> d!2206584 (= (tail!13726 (tail!13726 s!7408)) (t!382058 (tail!13726 s!7408)))))

(assert (=> b!7058315 d!2206584))

(declare-fun d!2206586 () Bool)

(assert (=> d!2206586 true))

(declare-fun setRes!49952 () Bool)

(assert (=> d!2206586 setRes!49952))

(declare-fun condSetEmpty!49952 () Bool)

(declare-fun res!2881701 () (Set Context!13160))

(assert (=> d!2206586 (= condSetEmpty!49952 (= res!2881701 (as set.empty (Set Context!13160))))))

(assert (=> d!2206586 (= (choose!53885 lt!2533953 lambda!421274) res!2881701)))

(declare-fun setIsEmpty!49952 () Bool)

(assert (=> setIsEmpty!49952 setRes!49952))

(declare-fun setElem!49952 () Context!13160)

(declare-fun setNonEmpty!49952 () Bool)

(declare-fun tp!1940703 () Bool)

(declare-fun e!4243674 () Bool)

(assert (=> setNonEmpty!49952 (= setRes!49952 (and tp!1940703 (inv!86820 setElem!49952) e!4243674))))

(declare-fun setRest!49952 () (Set Context!13160))

(assert (=> setNonEmpty!49952 (= res!2881701 (set.union (set.insert setElem!49952 (as set.empty (Set Context!13160))) setRest!49952))))

(declare-fun b!7058806 () Bool)

(declare-fun tp!1940704 () Bool)

(assert (=> b!7058806 (= e!4243674 tp!1940704)))

(assert (= (and d!2206586 condSetEmpty!49952) setIsEmpty!49952))

(assert (= (and d!2206586 (not condSetEmpty!49952)) setNonEmpty!49952))

(assert (= setNonEmpty!49952 b!7058806))

(declare-fun m!7778106 () Bool)

(assert (=> setNonEmpty!49952 m!7778106))

(assert (=> d!2206168 d!2206586))

(declare-fun d!2206588 () Bool)

(declare-fun c!1315449 () Bool)

(assert (=> d!2206588 (= c!1315449 (isEmpty!39754 (tail!13726 (t!382058 s!7408))))))

(declare-fun e!4243675 () Bool)

(assert (=> d!2206588 (= (matchZipper!3124 (derivationStepZipper!3034 (set.union lt!2533938 lt!2533946) (head!14368 (t!382058 s!7408))) (tail!13726 (t!382058 s!7408))) e!4243675)))

(declare-fun b!7058807 () Bool)

(assert (=> b!7058807 (= e!4243675 (nullableZipper!2667 (derivationStepZipper!3034 (set.union lt!2533938 lt!2533946) (head!14368 (t!382058 s!7408)))))))

(declare-fun b!7058808 () Bool)

(assert (=> b!7058808 (= e!4243675 (matchZipper!3124 (derivationStepZipper!3034 (derivationStepZipper!3034 (set.union lt!2533938 lt!2533946) (head!14368 (t!382058 s!7408))) (head!14368 (tail!13726 (t!382058 s!7408)))) (tail!13726 (tail!13726 (t!382058 s!7408)))))))

(assert (= (and d!2206588 c!1315449) b!7058807))

(assert (= (and d!2206588 (not c!1315449)) b!7058808))

(assert (=> d!2206588 m!7776696))

(assert (=> d!2206588 m!7777122))

(assert (=> b!7058807 m!7777474))

(declare-fun m!7778108 () Bool)

(assert (=> b!7058807 m!7778108))

(assert (=> b!7058808 m!7776696))

(assert (=> b!7058808 m!7777126))

(assert (=> b!7058808 m!7777474))

(assert (=> b!7058808 m!7777126))

(declare-fun m!7778110 () Bool)

(assert (=> b!7058808 m!7778110))

(assert (=> b!7058808 m!7776696))

(assert (=> b!7058808 m!7777130))

(assert (=> b!7058808 m!7778110))

(assert (=> b!7058808 m!7777130))

(declare-fun m!7778112 () Bool)

(assert (=> b!7058808 m!7778112))

(assert (=> b!7058318 d!2206588))

(declare-fun bs!1877899 () Bool)

(declare-fun d!2206590 () Bool)

(assert (= bs!1877899 (and d!2206590 d!2205914)))

(declare-fun lambda!421347 () Int)

(assert (=> bs!1877899 (= (= (head!14368 (t!382058 s!7408)) (h!74603 s!7408)) (= lambda!421347 lambda!421276))))

(declare-fun bs!1877900 () Bool)

(assert (= bs!1877900 (and d!2206590 d!2206094)))

(assert (=> bs!1877900 (= lambda!421347 lambda!421299)))

(declare-fun bs!1877901 () Bool)

(assert (= bs!1877901 (and d!2206590 d!2206138)))

(assert (=> bs!1877901 (= (= (head!14368 (t!382058 s!7408)) (head!14368 s!7408)) (= lambda!421347 lambda!421307))))

(declare-fun bs!1877902 () Bool)

(assert (= bs!1877902 (and d!2206590 d!2206120)))

(assert (=> bs!1877902 (= lambda!421347 lambda!421304)))

(declare-fun bs!1877903 () Bool)

(assert (= bs!1877903 (and d!2206590 d!2206056)))

(assert (=> bs!1877903 (= lambda!421347 lambda!421298)))

(declare-fun bs!1877904 () Bool)

(assert (= bs!1877904 (and d!2206590 d!2206228)))

(assert (=> bs!1877904 (= (= (head!14368 (t!382058 s!7408)) (head!14368 s!7408)) (= lambda!421347 lambda!421317))))

(declare-fun bs!1877905 () Bool)

(assert (= bs!1877905 (and d!2206590 d!2206268)))

(assert (=> bs!1877905 (= (= (head!14368 (t!382058 s!7408)) (head!14368 s!7408)) (= lambda!421347 lambda!421318))))

(declare-fun bs!1877906 () Bool)

(assert (= bs!1877906 (and d!2206590 d!2206100)))

(assert (=> bs!1877906 (= (= (head!14368 (t!382058 s!7408)) (head!14368 s!7408)) (= lambda!421347 lambda!421303))))

(declare-fun bs!1877907 () Bool)

(assert (= bs!1877907 (and d!2206590 b!7057661)))

(assert (=> bs!1877907 (= (= (head!14368 (t!382058 s!7408)) (h!74603 s!7408)) (= lambda!421347 lambda!421196))))

(declare-fun bs!1877908 () Bool)

(assert (= bs!1877908 (and d!2206590 d!2205882)))

(assert (=> bs!1877908 (= (= (head!14368 (t!382058 s!7408)) (h!74603 s!7408)) (= lambda!421347 lambda!421274))))

(declare-fun bs!1877909 () Bool)

(assert (= bs!1877909 (and d!2206590 d!2206580)))

(assert (=> bs!1877909 (= (= (head!14368 (t!382058 s!7408)) (head!14368 (tail!13726 s!7408))) (= lambda!421347 lambda!421346))))

(declare-fun bs!1877910 () Bool)

(assert (= bs!1877910 (and d!2206590 d!2206200)))

(assert (=> bs!1877910 (= lambda!421347 lambda!421314)))

(assert (=> d!2206590 true))

(assert (=> d!2206590 (= (derivationStepZipper!3034 (set.union lt!2533938 lt!2533946) (head!14368 (t!382058 s!7408))) (flatMap!2510 (set.union lt!2533938 lt!2533946) lambda!421347))))

(declare-fun bs!1877911 () Bool)

(assert (= bs!1877911 d!2206590))

(declare-fun m!7778114 () Bool)

(assert (=> bs!1877911 m!7778114))

(assert (=> b!7058318 d!2206590))

(assert (=> b!7058318 d!2206058))

(assert (=> b!7058318 d!2206060))

(declare-fun b!7058809 () Bool)

(declare-fun e!4243681 () (Set Context!13160))

(declare-fun call!641362 () (Set Context!13160))

(assert (=> b!7058809 (= e!4243681 call!641362)))

(declare-fun bm!641352 () Bool)

(declare-fun c!1315453 () Bool)

(declare-fun call!641361 () List!68278)

(declare-fun c!1315451 () Bool)

(assert (=> bm!641352 (= call!641361 ($colon$colon!2630 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928))))))) (ite (or c!1315453 c!1315451) (regTwo!35680 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928)))))) (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928))))))))))

(declare-fun b!7058810 () Bool)

(declare-fun e!4243676 () Bool)

(assert (=> b!7058810 (= c!1315453 e!4243676)))

(declare-fun res!2881702 () Bool)

(assert (=> b!7058810 (=> (not res!2881702) (not e!4243676))))

(assert (=> b!7058810 (= res!2881702 (is-Concat!26429 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928)))))))))

(declare-fun e!4243679 () (Set Context!13160))

(declare-fun e!4243680 () (Set Context!13160))

(assert (=> b!7058810 (= e!4243679 e!4243680)))

(declare-fun b!7058811 () Bool)

(assert (=> b!7058811 (= e!4243676 (nullable!7267 (regOne!35680 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928))))))))))

(declare-fun b!7058812 () Bool)

(declare-fun e!4243678 () (Set Context!13160))

(assert (=> b!7058812 (= e!4243680 e!4243678)))

(assert (=> b!7058812 (= c!1315451 (is-Concat!26429 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928)))))))))

(declare-fun b!7058813 () Bool)

(assert (=> b!7058813 (= e!4243681 (as set.empty (Set Context!13160)))))

(declare-fun bm!641353 () Bool)

(declare-fun call!641359 () (Set Context!13160))

(declare-fun call!641358 () (Set Context!13160))

(assert (=> bm!641353 (= call!641359 call!641358)))

(declare-fun b!7058814 () Bool)

(declare-fun call!641360 () (Set Context!13160))

(assert (=> b!7058814 (= e!4243679 (set.union call!641358 call!641360))))

(declare-fun b!7058815 () Bool)

(declare-fun c!1315452 () Bool)

(assert (=> b!7058815 (= c!1315452 (is-Star!17584 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928)))))))))

(assert (=> b!7058815 (= e!4243678 e!4243681)))

(declare-fun bm!641354 () Bool)

(assert (=> bm!641354 (= call!641362 call!641359)))

(declare-fun b!7058816 () Bool)

(declare-fun e!4243677 () (Set Context!13160))

(assert (=> b!7058816 (= e!4243677 (set.insert (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928)))))) (as set.empty (Set Context!13160))))))

(declare-fun c!1315454 () Bool)

(declare-fun call!641357 () List!68278)

(declare-fun bm!641356 () Bool)

(assert (=> bm!641356 (= call!641358 (derivationStepZipperDown!2218 (ite c!1315454 (regOne!35681 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928)))))) (ite c!1315453 (regTwo!35680 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928)))))) (ite c!1315451 (regOne!35680 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928)))))) (reg!17913 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928))))))))) (ite (or c!1315454 c!1315453) (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928)))))) (Context!13161 call!641357)) (h!74603 s!7408)))))

(declare-fun b!7058817 () Bool)

(assert (=> b!7058817 (= e!4243677 e!4243679)))

(assert (=> b!7058817 (= c!1315454 (is-Union!17584 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928)))))))))

(declare-fun bm!641357 () Bool)

(assert (=> bm!641357 (= call!641357 call!641361)))

(declare-fun b!7058818 () Bool)

(assert (=> b!7058818 (= e!4243678 call!641362)))

(declare-fun b!7058819 () Bool)

(assert (=> b!7058819 (= e!4243680 (set.union call!641360 call!641359))))

(declare-fun d!2206592 () Bool)

(declare-fun c!1315450 () Bool)

(assert (=> d!2206592 (= c!1315450 (and (is-ElementMatch!17584 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928)))))) (= (c!1315081 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928)))))) (h!74603 s!7408))))))

(assert (=> d!2206592 (= (derivationStepZipperDown!2218 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928))))) (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928)))))) (h!74603 s!7408)) e!4243677)))

(declare-fun bm!641355 () Bool)

(assert (=> bm!641355 (= call!641360 (derivationStepZipperDown!2218 (ite c!1315454 (regTwo!35681 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928)))))) (regOne!35680 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928))))))) (ite c!1315454 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928)))))) (Context!13161 call!641361)) (h!74603 s!7408)))))

(assert (= (and d!2206592 c!1315450) b!7058816))

(assert (= (and d!2206592 (not c!1315450)) b!7058817))

(assert (= (and b!7058817 c!1315454) b!7058814))

(assert (= (and b!7058817 (not c!1315454)) b!7058810))

(assert (= (and b!7058810 res!2881702) b!7058811))

(assert (= (and b!7058810 c!1315453) b!7058819))

(assert (= (and b!7058810 (not c!1315453)) b!7058812))

(assert (= (and b!7058812 c!1315451) b!7058818))

(assert (= (and b!7058812 (not c!1315451)) b!7058815))

(assert (= (and b!7058815 c!1315452) b!7058809))

(assert (= (and b!7058815 (not c!1315452)) b!7058813))

(assert (= (or b!7058818 b!7058809) bm!641357))

(assert (= (or b!7058818 b!7058809) bm!641354))

(assert (= (or b!7058819 bm!641354) bm!641353))

(assert (= (or b!7058819 bm!641357) bm!641352))

(assert (= (or b!7058814 bm!641353) bm!641356))

(assert (= (or b!7058814 b!7058819) bm!641355))

(declare-fun m!7778116 () Bool)

(assert (=> bm!641356 m!7778116))

(declare-fun m!7778118 () Bool)

(assert (=> bm!641355 m!7778118))

(declare-fun m!7778120 () Bool)

(assert (=> bm!641352 m!7778120))

(declare-fun m!7778122 () Bool)

(assert (=> b!7058816 m!7778122))

(declare-fun m!7778124 () Bool)

(assert (=> b!7058811 m!7778124))

(assert (=> bm!641267 d!2206592))

(declare-fun d!2206594 () Bool)

(assert (=> d!2206594 (= (nullable!7267 (ite c!1315307 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))))) (nullableFct!2783 (ite c!1315307 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))))))))

(declare-fun bs!1877912 () Bool)

(assert (= bs!1877912 d!2206594))

(declare-fun m!7778126 () Bool)

(assert (=> bs!1877912 m!7778126))

(assert (=> bm!641276 d!2206594))

(declare-fun d!2206596 () Bool)

(assert (=> d!2206596 (= (nullable!7267 (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918)))))))) (nullableFct!2783 (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918)))))))))))

(declare-fun bs!1877913 () Bool)

(assert (= bs!1877913 d!2206596))

(declare-fun m!7778128 () Bool)

(assert (=> bs!1877913 m!7778128))

(assert (=> b!7058232 d!2206596))

(declare-fun d!2206598 () Bool)

(assert (=> d!2206598 (= ($colon$colon!2630 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928)))) (ite (or c!1315282 c!1315280) (regTwo!35680 (h!74602 (exprs!7080 lt!2533928))) (h!74602 (exprs!7080 lt!2533928)))) (Cons!68154 (ite (or c!1315282 c!1315280) (regTwo!35680 (h!74602 (exprs!7080 lt!2533928))) (h!74602 (exprs!7080 lt!2533928))) (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928))))))))

(assert (=> bm!641254 d!2206598))

(declare-fun bs!1877914 () Bool)

(declare-fun d!2206600 () Bool)

(assert (= bs!1877914 (and d!2206600 d!2206096)))

(declare-fun lambda!421348 () Int)

(assert (=> bs!1877914 (not (= lambda!421348 lambda!421302))))

(declare-fun bs!1877915 () Bool)

(assert (= bs!1877915 (and d!2206600 d!2206554)))

(assert (=> bs!1877915 (not (= lambda!421348 lambda!421343))))

(declare-fun bs!1877916 () Bool)

(assert (= bs!1877916 (and d!2206600 d!2206564)))

(assert (=> bs!1877916 (= (= lambda!421311 lambda!421193) (= lambda!421348 lambda!421345))))

(declare-fun bs!1877917 () Bool)

(assert (= bs!1877917 (and d!2206600 d!2206206)))

(assert (=> bs!1877917 (not (= lambda!421348 lambda!421315))))

(declare-fun bs!1877918 () Bool)

(assert (= bs!1877918 (and d!2206600 d!2206128)))

(assert (=> bs!1877918 (not (= lambda!421348 lambda!421305))))

(declare-fun bs!1877919 () Bool)

(assert (= bs!1877919 (and d!2206600 d!2205874)))

(assert (=> bs!1877919 (= (= lambda!421311 lambda!421193) (= lambda!421348 lambda!421268))))

(declare-fun bs!1877920 () Bool)

(assert (= bs!1877920 (and d!2206600 d!2206130)))

(assert (=> bs!1877920 (not (= lambda!421348 lambda!421306))))

(declare-fun bs!1877921 () Bool)

(assert (= bs!1877921 (and d!2206600 d!2206196)))

(assert (=> bs!1877921 (not (= lambda!421348 lambda!421313))))

(declare-fun bs!1877922 () Bool)

(assert (= bs!1877922 (and d!2206600 d!2206270)))

(assert (=> bs!1877922 (not (= lambda!421348 lambda!421319))))

(declare-fun bs!1877923 () Bool)

(assert (= bs!1877923 (and d!2206600 d!2206560)))

(assert (=> bs!1877923 (not (= lambda!421348 lambda!421344))))

(declare-fun bs!1877924 () Bool)

(assert (= bs!1877924 (and d!2206600 d!2206170)))

(assert (=> bs!1877924 (not (= lambda!421348 lambda!421312))))

(declare-fun bs!1877925 () Bool)

(assert (= bs!1877925 (and d!2206600 d!2205876)))

(assert (=> bs!1877925 (not (= lambda!421348 lambda!421271))))

(declare-fun bs!1877926 () Bool)

(assert (= bs!1877926 (and d!2206600 b!7057676)))

(assert (=> bs!1877926 (not (= lambda!421348 lambda!421193))))

(declare-fun bs!1877927 () Bool)

(assert (= bs!1877927 (and d!2206600 d!2206214)))

(assert (=> bs!1877927 (not (= lambda!421348 lambda!421316))))

(declare-fun bs!1877928 () Bool)

(assert (= bs!1877928 (and d!2206600 d!2206158)))

(assert (=> bs!1877928 (not (= lambda!421348 lambda!421311))))

(declare-fun bs!1877929 () Bool)

(assert (= bs!1877929 (and d!2206600 d!2206156)))

(assert (=> bs!1877929 (= (= lambda!421311 lambda!421271) (= lambda!421348 lambda!421308))))

(assert (=> d!2206600 true))

(assert (=> d!2206600 (< (dynLambda!27675 order!28341 lambda!421311) (dynLambda!27675 order!28341 lambda!421348))))

(assert (=> d!2206600 (= (exists!3582 lt!2533923 lambda!421311) (not (forall!16537 lt!2533923 lambda!421348)))))

(declare-fun bs!1877930 () Bool)

(assert (= bs!1877930 d!2206600))

(declare-fun m!7778130 () Bool)

(assert (=> bs!1877930 m!7778130))

(assert (=> d!2206158 d!2206600))

(declare-fun bs!1877931 () Bool)

(declare-fun d!2206602 () Bool)

(assert (= bs!1877931 (and d!2206602 d!2206096)))

(declare-fun lambda!421349 () Int)

(assert (=> bs!1877931 (= lambda!421349 lambda!421302)))

(declare-fun bs!1877932 () Bool)

(assert (= bs!1877932 (and d!2206602 d!2206554)))

(assert (=> bs!1877932 (= lambda!421349 lambda!421343)))

(declare-fun bs!1877933 () Bool)

(assert (= bs!1877933 (and d!2206602 d!2206564)))

(assert (=> bs!1877933 (not (= lambda!421349 lambda!421345))))

(declare-fun bs!1877934 () Bool)

(assert (= bs!1877934 (and d!2206602 d!2206206)))

(assert (=> bs!1877934 (= lambda!421349 lambda!421315)))

(declare-fun bs!1877935 () Bool)

(assert (= bs!1877935 (and d!2206602 d!2206128)))

(assert (=> bs!1877935 (= lambda!421349 lambda!421305)))

(declare-fun bs!1877936 () Bool)

(assert (= bs!1877936 (and d!2206602 d!2205874)))

(assert (=> bs!1877936 (not (= lambda!421349 lambda!421268))))

(declare-fun bs!1877937 () Bool)

(assert (= bs!1877937 (and d!2206602 d!2206130)))

(assert (=> bs!1877937 (= lambda!421349 lambda!421306)))

(declare-fun bs!1877938 () Bool)

(assert (= bs!1877938 (and d!2206602 d!2206196)))

(assert (=> bs!1877938 (= lambda!421349 lambda!421313)))

(declare-fun bs!1877939 () Bool)

(assert (= bs!1877939 (and d!2206602 d!2206270)))

(assert (=> bs!1877939 (= lambda!421349 lambda!421319)))

(declare-fun bs!1877940 () Bool)

(assert (= bs!1877940 (and d!2206602 d!2206170)))

(assert (=> bs!1877940 (= lambda!421349 lambda!421312)))

(declare-fun bs!1877941 () Bool)

(assert (= bs!1877941 (and d!2206602 d!2205876)))

(assert (=> bs!1877941 (not (= lambda!421349 lambda!421271))))

(declare-fun bs!1877942 () Bool)

(assert (= bs!1877942 (and d!2206602 d!2206600)))

(assert (=> bs!1877942 (not (= lambda!421349 lambda!421348))))

(declare-fun bs!1877943 () Bool)

(assert (= bs!1877943 (and d!2206602 d!2206560)))

(assert (=> bs!1877943 (= lambda!421349 lambda!421344)))

(declare-fun bs!1877944 () Bool)

(assert (= bs!1877944 (and d!2206602 b!7057676)))

(assert (=> bs!1877944 (not (= lambda!421349 lambda!421193))))

(declare-fun bs!1877945 () Bool)

(assert (= bs!1877945 (and d!2206602 d!2206214)))

(assert (=> bs!1877945 (= lambda!421349 lambda!421316)))

(declare-fun bs!1877946 () Bool)

(assert (= bs!1877946 (and d!2206602 d!2206158)))

(assert (=> bs!1877946 (not (= lambda!421349 lambda!421311))))

(declare-fun bs!1877947 () Bool)

(assert (= bs!1877947 (and d!2206602 d!2206156)))

(assert (=> bs!1877947 (not (= lambda!421349 lambda!421308))))

(assert (=> d!2206602 (= (nullableZipper!2667 (derivationStepZipper!3034 lt!2533952 (head!14368 s!7408))) (exists!3584 (derivationStepZipper!3034 lt!2533952 (head!14368 s!7408)) lambda!421349))))

(declare-fun bs!1877948 () Bool)

(assert (= bs!1877948 d!2206602))

(assert (=> bs!1877948 m!7776716))

(declare-fun m!7778132 () Bool)

(assert (=> bs!1877948 m!7778132))

(assert (=> b!7058379 d!2206602))

(declare-fun d!2206604 () Bool)

(declare-fun lt!2534299 () Int)

(assert (=> d!2206604 (>= lt!2534299 0)))

(declare-fun e!4243682 () Int)

(assert (=> d!2206604 (= lt!2534299 e!4243682)))

(declare-fun c!1315455 () Bool)

(assert (=> d!2206604 (= c!1315455 (is-Nil!68155 (t!382058 (t!382058 s!7408))))))

(assert (=> d!2206604 (= (ListPrimitiveSize!405 (t!382058 (t!382058 s!7408))) lt!2534299)))

(declare-fun b!7058820 () Bool)

(assert (=> b!7058820 (= e!4243682 0)))

(declare-fun b!7058821 () Bool)

(assert (=> b!7058821 (= e!4243682 (+ 1 (ListPrimitiveSize!405 (t!382058 (t!382058 (t!382058 s!7408))))))))

(assert (= (and d!2206604 c!1315455) b!7058820))

(assert (= (and d!2206604 (not c!1315455)) b!7058821))

(declare-fun m!7778134 () Bool)

(assert (=> b!7058821 m!7778134))

(assert (=> b!7058289 d!2206604))

(assert (=> d!2206144 d!2206142))

(assert (=> d!2206144 d!2205844))

(declare-fun d!2206606 () Bool)

(assert (=> d!2206606 (= (nullable!7267 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))) (nullableFct!2783 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))))))

(declare-fun bs!1877949 () Bool)

(assert (= bs!1877949 d!2206606))

(declare-fun m!7778136 () Bool)

(assert (=> bs!1877949 m!7778136))

(assert (=> b!7058291 d!2206606))

(declare-fun d!2206608 () Bool)

(declare-fun c!1315456 () Bool)

(assert (=> d!2206608 (= c!1315456 (isEmpty!39754 s!7408))))

(declare-fun e!4243683 () Bool)

(assert (=> d!2206608 (= (matchZipper!3124 (set.insert lt!2534224 (as set.empty (Set Context!13160))) s!7408) e!4243683)))

(declare-fun b!7058822 () Bool)

(assert (=> b!7058822 (= e!4243683 (nullableZipper!2667 (set.insert lt!2534224 (as set.empty (Set Context!13160)))))))

(declare-fun b!7058823 () Bool)

(assert (=> b!7058823 (= e!4243683 (matchZipper!3124 (derivationStepZipper!3034 (set.insert lt!2534224 (as set.empty (Set Context!13160))) (head!14368 s!7408)) (tail!13726 s!7408)))))

(assert (= (and d!2206608 c!1315456) b!7058822))

(assert (= (and d!2206608 (not c!1315456)) b!7058823))

(assert (=> d!2206608 m!7776598))

(assert (=> b!7058822 m!7777544))

(declare-fun m!7778138 () Bool)

(assert (=> b!7058822 m!7778138))

(assert (=> b!7058823 m!7776602))

(assert (=> b!7058823 m!7777544))

(assert (=> b!7058823 m!7776602))

(declare-fun m!7778140 () Bool)

(assert (=> b!7058823 m!7778140))

(assert (=> b!7058823 m!7776606))

(assert (=> b!7058823 m!7778140))

(assert (=> b!7058823 m!7776606))

(declare-fun m!7778142 () Bool)

(assert (=> b!7058823 m!7778142))

(assert (=> bs!1877652 d!2206608))

(declare-fun d!2206610 () Bool)

(declare-fun c!1315457 () Bool)

(assert (=> d!2206610 (= c!1315457 (is-Nil!68156 (t!382059 lt!2533923)))))

(declare-fun e!4243684 () (Set Context!13160))

(assert (=> d!2206610 (= (content!13703 (t!382059 lt!2533923)) e!4243684)))

(declare-fun b!7058824 () Bool)

(assert (=> b!7058824 (= e!4243684 (as set.empty (Set Context!13160)))))

(declare-fun b!7058825 () Bool)

(assert (=> b!7058825 (= e!4243684 (set.union (set.insert (h!74604 (t!382059 lt!2533923)) (as set.empty (Set Context!13160))) (content!13703 (t!382059 (t!382059 lt!2533923)))))))

(assert (= (and d!2206610 c!1315457) b!7058824))

(assert (= (and d!2206610 (not c!1315457)) b!7058825))

(declare-fun m!7778144 () Bool)

(assert (=> b!7058825 m!7778144))

(declare-fun m!7778146 () Bool)

(assert (=> b!7058825 m!7778146))

(assert (=> b!7058244 d!2206610))

(declare-fun d!2206612 () Bool)

(declare-fun c!1315458 () Bool)

(assert (=> d!2206612 (= c!1315458 (isEmpty!39754 (tail!13726 s!7408)))))

(declare-fun e!4243685 () Bool)

(assert (=> d!2206612 (= (matchZipper!3124 (derivationStepZipper!3034 (set.insert lt!2534149 (as set.empty (Set Context!13160))) (head!14368 s!7408)) (tail!13726 s!7408)) e!4243685)))

(declare-fun b!7058826 () Bool)

(assert (=> b!7058826 (= e!4243685 (nullableZipper!2667 (derivationStepZipper!3034 (set.insert lt!2534149 (as set.empty (Set Context!13160))) (head!14368 s!7408))))))

(declare-fun b!7058827 () Bool)

(assert (=> b!7058827 (= e!4243685 (matchZipper!3124 (derivationStepZipper!3034 (derivationStepZipper!3034 (set.insert lt!2534149 (as set.empty (Set Context!13160))) (head!14368 s!7408)) (head!14368 (tail!13726 s!7408))) (tail!13726 (tail!13726 s!7408))))))

(assert (= (and d!2206612 c!1315458) b!7058826))

(assert (= (and d!2206612 (not c!1315458)) b!7058827))

(assert (=> d!2206612 m!7776606))

(assert (=> d!2206612 m!7777212))

(assert (=> b!7058826 m!7777266))

(declare-fun m!7778148 () Bool)

(assert (=> b!7058826 m!7778148))

(assert (=> b!7058827 m!7776606))

(assert (=> b!7058827 m!7777216))

(assert (=> b!7058827 m!7777266))

(assert (=> b!7058827 m!7777216))

(declare-fun m!7778150 () Bool)

(assert (=> b!7058827 m!7778150))

(assert (=> b!7058827 m!7776606))

(assert (=> b!7058827 m!7777220))

(assert (=> b!7058827 m!7778150))

(assert (=> b!7058827 m!7777220))

(declare-fun m!7778152 () Bool)

(assert (=> b!7058827 m!7778152))

(assert (=> b!7058210 d!2206612))

(declare-fun bs!1877950 () Bool)

(declare-fun d!2206614 () Bool)

(assert (= bs!1877950 (and d!2206614 d!2205914)))

(declare-fun lambda!421350 () Int)

(assert (=> bs!1877950 (= (= (head!14368 s!7408) (h!74603 s!7408)) (= lambda!421350 lambda!421276))))

(declare-fun bs!1877951 () Bool)

(assert (= bs!1877951 (and d!2206614 d!2206094)))

(assert (=> bs!1877951 (= (= (head!14368 s!7408) (head!14368 (t!382058 s!7408))) (= lambda!421350 lambda!421299))))

(declare-fun bs!1877952 () Bool)

(assert (= bs!1877952 (and d!2206614 d!2206138)))

(assert (=> bs!1877952 (= lambda!421350 lambda!421307)))

(declare-fun bs!1877953 () Bool)

(assert (= bs!1877953 (and d!2206614 d!2206590)))

(assert (=> bs!1877953 (= (= (head!14368 s!7408) (head!14368 (t!382058 s!7408))) (= lambda!421350 lambda!421347))))

(declare-fun bs!1877954 () Bool)

(assert (= bs!1877954 (and d!2206614 d!2206120)))

(assert (=> bs!1877954 (= (= (head!14368 s!7408) (head!14368 (t!382058 s!7408))) (= lambda!421350 lambda!421304))))

(declare-fun bs!1877955 () Bool)

(assert (= bs!1877955 (and d!2206614 d!2206056)))

(assert (=> bs!1877955 (= (= (head!14368 s!7408) (head!14368 (t!382058 s!7408))) (= lambda!421350 lambda!421298))))

(declare-fun bs!1877956 () Bool)

(assert (= bs!1877956 (and d!2206614 d!2206228)))

(assert (=> bs!1877956 (= lambda!421350 lambda!421317)))

(declare-fun bs!1877957 () Bool)

(assert (= bs!1877957 (and d!2206614 d!2206268)))

(assert (=> bs!1877957 (= lambda!421350 lambda!421318)))

(declare-fun bs!1877958 () Bool)

(assert (= bs!1877958 (and d!2206614 d!2206100)))

(assert (=> bs!1877958 (= lambda!421350 lambda!421303)))

(declare-fun bs!1877959 () Bool)

(assert (= bs!1877959 (and d!2206614 b!7057661)))

(assert (=> bs!1877959 (= (= (head!14368 s!7408) (h!74603 s!7408)) (= lambda!421350 lambda!421196))))

(declare-fun bs!1877960 () Bool)

(assert (= bs!1877960 (and d!2206614 d!2205882)))

(assert (=> bs!1877960 (= (= (head!14368 s!7408) (h!74603 s!7408)) (= lambda!421350 lambda!421274))))

(declare-fun bs!1877961 () Bool)

(assert (= bs!1877961 (and d!2206614 d!2206580)))

(assert (=> bs!1877961 (= (= (head!14368 s!7408) (head!14368 (tail!13726 s!7408))) (= lambda!421350 lambda!421346))))

(declare-fun bs!1877962 () Bool)

(assert (= bs!1877962 (and d!2206614 d!2206200)))

(assert (=> bs!1877962 (= (= (head!14368 s!7408) (head!14368 (t!382058 s!7408))) (= lambda!421350 lambda!421314))))

(assert (=> d!2206614 true))

(assert (=> d!2206614 (= (derivationStepZipper!3034 (set.insert lt!2534149 (as set.empty (Set Context!13160))) (head!14368 s!7408)) (flatMap!2510 (set.insert lt!2534149 (as set.empty (Set Context!13160))) lambda!421350))))

(declare-fun bs!1877963 () Bool)

(assert (= bs!1877963 d!2206614))

(assert (=> bs!1877963 m!7776838))

(declare-fun m!7778154 () Bool)

(assert (=> bs!1877963 m!7778154))

(assert (=> b!7058210 d!2206614))

(assert (=> b!7058210 d!2206102))

(assert (=> b!7058210 d!2206104))

(declare-fun bs!1877964 () Bool)

(declare-fun d!2206616 () Bool)

(assert (= bs!1877964 (and d!2206616 d!2206096)))

(declare-fun lambda!421351 () Int)

(assert (=> bs!1877964 (= lambda!421351 lambda!421302)))

(declare-fun bs!1877965 () Bool)

(assert (= bs!1877965 (and d!2206616 d!2206554)))

(assert (=> bs!1877965 (= lambda!421351 lambda!421343)))

(declare-fun bs!1877966 () Bool)

(assert (= bs!1877966 (and d!2206616 d!2206564)))

(assert (=> bs!1877966 (not (= lambda!421351 lambda!421345))))

(declare-fun bs!1877967 () Bool)

(assert (= bs!1877967 (and d!2206616 d!2206206)))

(assert (=> bs!1877967 (= lambda!421351 lambda!421315)))

(declare-fun bs!1877968 () Bool)

(assert (= bs!1877968 (and d!2206616 d!2206128)))

(assert (=> bs!1877968 (= lambda!421351 lambda!421305)))

(declare-fun bs!1877969 () Bool)

(assert (= bs!1877969 (and d!2206616 d!2205874)))

(assert (=> bs!1877969 (not (= lambda!421351 lambda!421268))))

(declare-fun bs!1877970 () Bool)

(assert (= bs!1877970 (and d!2206616 d!2206130)))

(assert (=> bs!1877970 (= lambda!421351 lambda!421306)))

(declare-fun bs!1877971 () Bool)

(assert (= bs!1877971 (and d!2206616 d!2206196)))

(assert (=> bs!1877971 (= lambda!421351 lambda!421313)))

(declare-fun bs!1877972 () Bool)

(assert (= bs!1877972 (and d!2206616 d!2206270)))

(assert (=> bs!1877972 (= lambda!421351 lambda!421319)))

(declare-fun bs!1877973 () Bool)

(assert (= bs!1877973 (and d!2206616 d!2206170)))

(assert (=> bs!1877973 (= lambda!421351 lambda!421312)))

(declare-fun bs!1877974 () Bool)

(assert (= bs!1877974 (and d!2206616 d!2205876)))

(assert (=> bs!1877974 (not (= lambda!421351 lambda!421271))))

(declare-fun bs!1877975 () Bool)

(assert (= bs!1877975 (and d!2206616 d!2206602)))

(assert (=> bs!1877975 (= lambda!421351 lambda!421349)))

(declare-fun bs!1877976 () Bool)

(assert (= bs!1877976 (and d!2206616 d!2206600)))

(assert (=> bs!1877976 (not (= lambda!421351 lambda!421348))))

(declare-fun bs!1877977 () Bool)

(assert (= bs!1877977 (and d!2206616 d!2206560)))

(assert (=> bs!1877977 (= lambda!421351 lambda!421344)))

(declare-fun bs!1877978 () Bool)

(assert (= bs!1877978 (and d!2206616 b!7057676)))

(assert (=> bs!1877978 (not (= lambda!421351 lambda!421193))))

(declare-fun bs!1877979 () Bool)

(assert (= bs!1877979 (and d!2206616 d!2206214)))

(assert (=> bs!1877979 (= lambda!421351 lambda!421316)))

(declare-fun bs!1877980 () Bool)

(assert (= bs!1877980 (and d!2206616 d!2206158)))

(assert (=> bs!1877980 (not (= lambda!421351 lambda!421311))))

(declare-fun bs!1877981 () Bool)

(assert (= bs!1877981 (and d!2206616 d!2206156)))

(assert (=> bs!1877981 (not (= lambda!421351 lambda!421308))))

(assert (=> d!2206616 (= (nullableZipper!2667 (derivationStepZipper!3034 (appendTo!705 lt!2533927 ct2!306) (head!14368 s!7408))) (exists!3584 (derivationStepZipper!3034 (appendTo!705 lt!2533927 ct2!306) (head!14368 s!7408)) lambda!421351))))

(declare-fun bs!1877982 () Bool)

(assert (= bs!1877982 d!2206616))

(assert (=> bs!1877982 m!7776708))

(declare-fun m!7778156 () Bool)

(assert (=> bs!1877982 m!7778156))

(assert (=> b!7058213 d!2206616))

(assert (=> b!7058321 d!2205862))

(declare-fun d!2206618 () Bool)

(declare-fun lt!2534300 () Int)

(assert (=> d!2206618 (>= lt!2534300 0)))

(declare-fun e!4243686 () Int)

(assert (=> d!2206618 (= lt!2534300 e!4243686)))

(declare-fun c!1315459 () Bool)

(assert (=> d!2206618 (= c!1315459 (is-Nil!68154 (t!382057 lt!2534151)))))

(assert (=> d!2206618 (= (size!41161 (t!382057 lt!2534151)) lt!2534300)))

(declare-fun b!7058828 () Bool)

(assert (=> b!7058828 (= e!4243686 0)))

(declare-fun b!7058829 () Bool)

(assert (=> b!7058829 (= e!4243686 (+ 1 (size!41161 (t!382057 (t!382057 lt!2534151)))))))

(assert (= (and d!2206618 c!1315459) b!7058828))

(assert (= (and d!2206618 (not c!1315459)) b!7058829))

(declare-fun m!7778158 () Bool)

(assert (=> b!7058829 m!7778158))

(assert (=> b!7058366 d!2206618))

(declare-fun b!7058830 () Bool)

(declare-fun e!4243692 () (Set Context!13160))

(declare-fun call!641368 () (Set Context!13160))

(assert (=> b!7058830 (= e!4243692 call!641368)))

(declare-fun c!1315463 () Bool)

(declare-fun c!1315461 () Bool)

(declare-fun call!641367 () List!68278)

(declare-fun bm!641358 () Bool)

(assert (=> bm!641358 (= call!641367 ($colon$colon!2630 (exprs!7080 (ite (or c!1315288 c!1315287) (Context!13161 (t!382057 (exprs!7080 lt!2533926))) (Context!13161 call!641265))) (ite (or c!1315463 c!1315461) (regTwo!35680 (ite c!1315288 (regOne!35681 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315287 (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315285 (regOne!35680 (h!74602 (exprs!7080 lt!2533926))) (reg!17913 (h!74602 (exprs!7080 lt!2533926))))))) (ite c!1315288 (regOne!35681 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315287 (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315285 (regOne!35680 (h!74602 (exprs!7080 lt!2533926))) (reg!17913 (h!74602 (exprs!7080 lt!2533926)))))))))))

(declare-fun b!7058831 () Bool)

(declare-fun e!4243687 () Bool)

(assert (=> b!7058831 (= c!1315463 e!4243687)))

(declare-fun res!2881703 () Bool)

(assert (=> b!7058831 (=> (not res!2881703) (not e!4243687))))

(assert (=> b!7058831 (= res!2881703 (is-Concat!26429 (ite c!1315288 (regOne!35681 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315287 (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315285 (regOne!35680 (h!74602 (exprs!7080 lt!2533926))) (reg!17913 (h!74602 (exprs!7080 lt!2533926))))))))))

(declare-fun e!4243690 () (Set Context!13160))

(declare-fun e!4243691 () (Set Context!13160))

(assert (=> b!7058831 (= e!4243690 e!4243691)))

(declare-fun b!7058832 () Bool)

(assert (=> b!7058832 (= e!4243687 (nullable!7267 (regOne!35680 (ite c!1315288 (regOne!35681 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315287 (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315285 (regOne!35680 (h!74602 (exprs!7080 lt!2533926))) (reg!17913 (h!74602 (exprs!7080 lt!2533926)))))))))))

(declare-fun b!7058833 () Bool)

(declare-fun e!4243689 () (Set Context!13160))

(assert (=> b!7058833 (= e!4243691 e!4243689)))

(assert (=> b!7058833 (= c!1315461 (is-Concat!26429 (ite c!1315288 (regOne!35681 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315287 (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315285 (regOne!35680 (h!74602 (exprs!7080 lt!2533926))) (reg!17913 (h!74602 (exprs!7080 lt!2533926))))))))))

(declare-fun b!7058834 () Bool)

(assert (=> b!7058834 (= e!4243692 (as set.empty (Set Context!13160)))))

(declare-fun bm!641359 () Bool)

(declare-fun call!641365 () (Set Context!13160))

(declare-fun call!641364 () (Set Context!13160))

(assert (=> bm!641359 (= call!641365 call!641364)))

(declare-fun b!7058835 () Bool)

(declare-fun call!641366 () (Set Context!13160))

(assert (=> b!7058835 (= e!4243690 (set.union call!641364 call!641366))))

(declare-fun c!1315462 () Bool)

(declare-fun b!7058836 () Bool)

(assert (=> b!7058836 (= c!1315462 (is-Star!17584 (ite c!1315288 (regOne!35681 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315287 (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315285 (regOne!35680 (h!74602 (exprs!7080 lt!2533926))) (reg!17913 (h!74602 (exprs!7080 lt!2533926))))))))))

(assert (=> b!7058836 (= e!4243689 e!4243692)))

(declare-fun bm!641360 () Bool)

(assert (=> bm!641360 (= call!641368 call!641365)))

(declare-fun e!4243688 () (Set Context!13160))

(declare-fun b!7058837 () Bool)

(assert (=> b!7058837 (= e!4243688 (set.insert (ite (or c!1315288 c!1315287) (Context!13161 (t!382057 (exprs!7080 lt!2533926))) (Context!13161 call!641265)) (as set.empty (Set Context!13160))))))

(declare-fun bm!641362 () Bool)

(declare-fun call!641363 () List!68278)

(declare-fun c!1315464 () Bool)

(assert (=> bm!641362 (= call!641364 (derivationStepZipperDown!2218 (ite c!1315464 (regOne!35681 (ite c!1315288 (regOne!35681 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315287 (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315285 (regOne!35680 (h!74602 (exprs!7080 lt!2533926))) (reg!17913 (h!74602 (exprs!7080 lt!2533926))))))) (ite c!1315463 (regTwo!35680 (ite c!1315288 (regOne!35681 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315287 (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315285 (regOne!35680 (h!74602 (exprs!7080 lt!2533926))) (reg!17913 (h!74602 (exprs!7080 lt!2533926))))))) (ite c!1315461 (regOne!35680 (ite c!1315288 (regOne!35681 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315287 (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315285 (regOne!35680 (h!74602 (exprs!7080 lt!2533926))) (reg!17913 (h!74602 (exprs!7080 lt!2533926))))))) (reg!17913 (ite c!1315288 (regOne!35681 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315287 (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315285 (regOne!35680 (h!74602 (exprs!7080 lt!2533926))) (reg!17913 (h!74602 (exprs!7080 lt!2533926)))))))))) (ite (or c!1315464 c!1315463) (ite (or c!1315288 c!1315287) (Context!13161 (t!382057 (exprs!7080 lt!2533926))) (Context!13161 call!641265)) (Context!13161 call!641363)) (h!74603 s!7408)))))

(declare-fun b!7058838 () Bool)

(assert (=> b!7058838 (= e!4243688 e!4243690)))

(assert (=> b!7058838 (= c!1315464 (is-Union!17584 (ite c!1315288 (regOne!35681 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315287 (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315285 (regOne!35680 (h!74602 (exprs!7080 lt!2533926))) (reg!17913 (h!74602 (exprs!7080 lt!2533926))))))))))

(declare-fun bm!641363 () Bool)

(assert (=> bm!641363 (= call!641363 call!641367)))

(declare-fun b!7058839 () Bool)

(assert (=> b!7058839 (= e!4243689 call!641368)))

(declare-fun b!7058840 () Bool)

(assert (=> b!7058840 (= e!4243691 (set.union call!641366 call!641365))))

(declare-fun d!2206620 () Bool)

(declare-fun c!1315460 () Bool)

(assert (=> d!2206620 (= c!1315460 (and (is-ElementMatch!17584 (ite c!1315288 (regOne!35681 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315287 (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315285 (regOne!35680 (h!74602 (exprs!7080 lt!2533926))) (reg!17913 (h!74602 (exprs!7080 lt!2533926))))))) (= (c!1315081 (ite c!1315288 (regOne!35681 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315287 (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315285 (regOne!35680 (h!74602 (exprs!7080 lt!2533926))) (reg!17913 (h!74602 (exprs!7080 lt!2533926))))))) (h!74603 s!7408))))))

(assert (=> d!2206620 (= (derivationStepZipperDown!2218 (ite c!1315288 (regOne!35681 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315287 (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315285 (regOne!35680 (h!74602 (exprs!7080 lt!2533926))) (reg!17913 (h!74602 (exprs!7080 lt!2533926)))))) (ite (or c!1315288 c!1315287) (Context!13161 (t!382057 (exprs!7080 lt!2533926))) (Context!13161 call!641265)) (h!74603 s!7408)) e!4243688)))

(declare-fun bm!641361 () Bool)

(assert (=> bm!641361 (= call!641366 (derivationStepZipperDown!2218 (ite c!1315464 (regTwo!35681 (ite c!1315288 (regOne!35681 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315287 (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315285 (regOne!35680 (h!74602 (exprs!7080 lt!2533926))) (reg!17913 (h!74602 (exprs!7080 lt!2533926))))))) (regOne!35680 (ite c!1315288 (regOne!35681 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315287 (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315285 (regOne!35680 (h!74602 (exprs!7080 lt!2533926))) (reg!17913 (h!74602 (exprs!7080 lt!2533926)))))))) (ite c!1315464 (ite (or c!1315288 c!1315287) (Context!13161 (t!382057 (exprs!7080 lt!2533926))) (Context!13161 call!641265)) (Context!13161 call!641367)) (h!74603 s!7408)))))

(assert (= (and d!2206620 c!1315460) b!7058837))

(assert (= (and d!2206620 (not c!1315460)) b!7058838))

(assert (= (and b!7058838 c!1315464) b!7058835))

(assert (= (and b!7058838 (not c!1315464)) b!7058831))

(assert (= (and b!7058831 res!2881703) b!7058832))

(assert (= (and b!7058831 c!1315463) b!7058840))

(assert (= (and b!7058831 (not c!1315463)) b!7058833))

(assert (= (and b!7058833 c!1315461) b!7058839))

(assert (= (and b!7058833 (not c!1315461)) b!7058836))

(assert (= (and b!7058836 c!1315462) b!7058830))

(assert (= (and b!7058836 (not c!1315462)) b!7058834))

(assert (= (or b!7058839 b!7058830) bm!641363))

(assert (= (or b!7058839 b!7058830) bm!641360))

(assert (= (or b!7058840 bm!641360) bm!641359))

(assert (= (or b!7058840 bm!641363) bm!641358))

(assert (= (or b!7058835 bm!641359) bm!641362))

(assert (= (or b!7058835 b!7058840) bm!641361))

(declare-fun m!7778160 () Bool)

(assert (=> bm!641362 m!7778160))

(declare-fun m!7778162 () Bool)

(assert (=> bm!641361 m!7778162))

(declare-fun m!7778164 () Bool)

(assert (=> bm!641358 m!7778164))

(declare-fun m!7778166 () Bool)

(assert (=> b!7058837 m!7778166))

(declare-fun m!7778168 () Bool)

(assert (=> b!7058832 m!7778168))

(assert (=> bm!641264 d!2206620))

(assert (=> d!2206066 d!2205888))

(declare-fun d!2206622 () Bool)

(declare-fun c!1315465 () Bool)

(assert (=> d!2206622 (= c!1315465 (is-Nil!68156 (t!382059 lt!2534138)))))

(declare-fun e!4243693 () (Set Context!13160))

(assert (=> d!2206622 (= (content!13703 (t!382059 lt!2534138)) e!4243693)))

(declare-fun b!7058841 () Bool)

(assert (=> b!7058841 (= e!4243693 (as set.empty (Set Context!13160)))))

(declare-fun b!7058842 () Bool)

(assert (=> b!7058842 (= e!4243693 (set.union (set.insert (h!74604 (t!382059 lt!2534138)) (as set.empty (Set Context!13160))) (content!13703 (t!382059 (t!382059 lt!2534138)))))))

(assert (= (and d!2206622 c!1315465) b!7058841))

(assert (= (and d!2206622 (not c!1315465)) b!7058842))

(declare-fun m!7778170 () Bool)

(assert (=> b!7058842 m!7778170))

(declare-fun m!7778172 () Bool)

(assert (=> b!7058842 m!7778172))

(assert (=> b!7058212 d!2206622))

(declare-fun b!7058843 () Bool)

(declare-fun e!4243699 () (Set Context!13160))

(declare-fun call!641374 () (Set Context!13160))

(assert (=> b!7058843 (= e!4243699 call!641374)))

(declare-fun c!1315469 () Bool)

(declare-fun bm!641364 () Bool)

(declare-fun c!1315467 () Bool)

(declare-fun call!641373 () List!68278)

(assert (=> bm!641364 (= call!641373 ($colon$colon!2630 (exprs!7080 (ite c!1315245 (Context!13161 (t!382057 (exprs!7080 lt!2533961))) (Context!13161 call!641244))) (ite (or c!1315469 c!1315467) (regTwo!35680 (ite c!1315245 (regTwo!35681 (h!74602 (exprs!7080 lt!2533961))) (regOne!35680 (h!74602 (exprs!7080 lt!2533961))))) (ite c!1315245 (regTwo!35681 (h!74602 (exprs!7080 lt!2533961))) (regOne!35680 (h!74602 (exprs!7080 lt!2533961)))))))))

(declare-fun b!7058844 () Bool)

(declare-fun e!4243694 () Bool)

(assert (=> b!7058844 (= c!1315469 e!4243694)))

(declare-fun res!2881704 () Bool)

(assert (=> b!7058844 (=> (not res!2881704) (not e!4243694))))

(assert (=> b!7058844 (= res!2881704 (is-Concat!26429 (ite c!1315245 (regTwo!35681 (h!74602 (exprs!7080 lt!2533961))) (regOne!35680 (h!74602 (exprs!7080 lt!2533961))))))))

(declare-fun e!4243697 () (Set Context!13160))

(declare-fun e!4243698 () (Set Context!13160))

(assert (=> b!7058844 (= e!4243697 e!4243698)))

(declare-fun b!7058845 () Bool)

(assert (=> b!7058845 (= e!4243694 (nullable!7267 (regOne!35680 (ite c!1315245 (regTwo!35681 (h!74602 (exprs!7080 lt!2533961))) (regOne!35680 (h!74602 (exprs!7080 lt!2533961)))))))))

(declare-fun b!7058846 () Bool)

(declare-fun e!4243696 () (Set Context!13160))

(assert (=> b!7058846 (= e!4243698 e!4243696)))

(assert (=> b!7058846 (= c!1315467 (is-Concat!26429 (ite c!1315245 (regTwo!35681 (h!74602 (exprs!7080 lt!2533961))) (regOne!35680 (h!74602 (exprs!7080 lt!2533961))))))))

(declare-fun b!7058847 () Bool)

(assert (=> b!7058847 (= e!4243699 (as set.empty (Set Context!13160)))))

(declare-fun bm!641365 () Bool)

(declare-fun call!641371 () (Set Context!13160))

(declare-fun call!641370 () (Set Context!13160))

(assert (=> bm!641365 (= call!641371 call!641370)))

(declare-fun b!7058848 () Bool)

(declare-fun call!641372 () (Set Context!13160))

(assert (=> b!7058848 (= e!4243697 (set.union call!641370 call!641372))))

(declare-fun b!7058849 () Bool)

(declare-fun c!1315468 () Bool)

(assert (=> b!7058849 (= c!1315468 (is-Star!17584 (ite c!1315245 (regTwo!35681 (h!74602 (exprs!7080 lt!2533961))) (regOne!35680 (h!74602 (exprs!7080 lt!2533961))))))))

(assert (=> b!7058849 (= e!4243696 e!4243699)))

(declare-fun bm!641366 () Bool)

(assert (=> bm!641366 (= call!641374 call!641371)))

(declare-fun b!7058850 () Bool)

(declare-fun e!4243695 () (Set Context!13160))

(assert (=> b!7058850 (= e!4243695 (set.insert (ite c!1315245 (Context!13161 (t!382057 (exprs!7080 lt!2533961))) (Context!13161 call!641244)) (as set.empty (Set Context!13160))))))

(declare-fun bm!641368 () Bool)

(declare-fun call!641369 () List!68278)

(declare-fun c!1315470 () Bool)

(assert (=> bm!641368 (= call!641370 (derivationStepZipperDown!2218 (ite c!1315470 (regOne!35681 (ite c!1315245 (regTwo!35681 (h!74602 (exprs!7080 lt!2533961))) (regOne!35680 (h!74602 (exprs!7080 lt!2533961))))) (ite c!1315469 (regTwo!35680 (ite c!1315245 (regTwo!35681 (h!74602 (exprs!7080 lt!2533961))) (regOne!35680 (h!74602 (exprs!7080 lt!2533961))))) (ite c!1315467 (regOne!35680 (ite c!1315245 (regTwo!35681 (h!74602 (exprs!7080 lt!2533961))) (regOne!35680 (h!74602 (exprs!7080 lt!2533961))))) (reg!17913 (ite c!1315245 (regTwo!35681 (h!74602 (exprs!7080 lt!2533961))) (regOne!35680 (h!74602 (exprs!7080 lt!2533961)))))))) (ite (or c!1315470 c!1315469) (ite c!1315245 (Context!13161 (t!382057 (exprs!7080 lt!2533961))) (Context!13161 call!641244)) (Context!13161 call!641369)) (h!74603 s!7408)))))

(declare-fun b!7058851 () Bool)

(assert (=> b!7058851 (= e!4243695 e!4243697)))

(assert (=> b!7058851 (= c!1315470 (is-Union!17584 (ite c!1315245 (regTwo!35681 (h!74602 (exprs!7080 lt!2533961))) (regOne!35680 (h!74602 (exprs!7080 lt!2533961))))))))

(declare-fun bm!641369 () Bool)

(assert (=> bm!641369 (= call!641369 call!641373)))

(declare-fun b!7058852 () Bool)

(assert (=> b!7058852 (= e!4243696 call!641374)))

(declare-fun b!7058853 () Bool)

(assert (=> b!7058853 (= e!4243698 (set.union call!641372 call!641371))))

(declare-fun c!1315466 () Bool)

(declare-fun d!2206624 () Bool)

(assert (=> d!2206624 (= c!1315466 (and (is-ElementMatch!17584 (ite c!1315245 (regTwo!35681 (h!74602 (exprs!7080 lt!2533961))) (regOne!35680 (h!74602 (exprs!7080 lt!2533961))))) (= (c!1315081 (ite c!1315245 (regTwo!35681 (h!74602 (exprs!7080 lt!2533961))) (regOne!35680 (h!74602 (exprs!7080 lt!2533961))))) (h!74603 s!7408))))))

(assert (=> d!2206624 (= (derivationStepZipperDown!2218 (ite c!1315245 (regTwo!35681 (h!74602 (exprs!7080 lt!2533961))) (regOne!35680 (h!74602 (exprs!7080 lt!2533961)))) (ite c!1315245 (Context!13161 (t!382057 (exprs!7080 lt!2533961))) (Context!13161 call!641244)) (h!74603 s!7408)) e!4243695)))

(declare-fun bm!641367 () Bool)

(assert (=> bm!641367 (= call!641372 (derivationStepZipperDown!2218 (ite c!1315470 (regTwo!35681 (ite c!1315245 (regTwo!35681 (h!74602 (exprs!7080 lt!2533961))) (regOne!35680 (h!74602 (exprs!7080 lt!2533961))))) (regOne!35680 (ite c!1315245 (regTwo!35681 (h!74602 (exprs!7080 lt!2533961))) (regOne!35680 (h!74602 (exprs!7080 lt!2533961)))))) (ite c!1315470 (ite c!1315245 (Context!13161 (t!382057 (exprs!7080 lt!2533961))) (Context!13161 call!641244)) (Context!13161 call!641373)) (h!74603 s!7408)))))

(assert (= (and d!2206624 c!1315466) b!7058850))

(assert (= (and d!2206624 (not c!1315466)) b!7058851))

(assert (= (and b!7058851 c!1315470) b!7058848))

(assert (= (and b!7058851 (not c!1315470)) b!7058844))

(assert (= (and b!7058844 res!2881704) b!7058845))

(assert (= (and b!7058844 c!1315469) b!7058853))

(assert (= (and b!7058844 (not c!1315469)) b!7058846))

(assert (= (and b!7058846 c!1315467) b!7058852))

(assert (= (and b!7058846 (not c!1315467)) b!7058849))

(assert (= (and b!7058849 c!1315468) b!7058843))

(assert (= (and b!7058849 (not c!1315468)) b!7058847))

(assert (= (or b!7058852 b!7058843) bm!641369))

(assert (= (or b!7058852 b!7058843) bm!641366))

(assert (= (or b!7058853 bm!641366) bm!641365))

(assert (= (or b!7058853 bm!641369) bm!641364))

(assert (= (or b!7058848 bm!641365) bm!641368))

(assert (= (or b!7058848 b!7058853) bm!641367))

(declare-fun m!7778174 () Bool)

(assert (=> bm!641368 m!7778174))

(declare-fun m!7778176 () Bool)

(assert (=> bm!641367 m!7778176))

(declare-fun m!7778178 () Bool)

(assert (=> bm!641364 m!7778178))

(declare-fun m!7778180 () Bool)

(assert (=> b!7058850 m!7778180))

(declare-fun m!7778182 () Bool)

(assert (=> b!7058845 m!7778182))

(assert (=> bm!641238 d!2206624))

(declare-fun d!2206626 () Bool)

(assert (=> d!2206626 (= (nullable!7267 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961)))))) (nullableFct!2783 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961)))))))))

(declare-fun bs!1877983 () Bool)

(assert (= bs!1877983 d!2206626))

(declare-fun m!7778184 () Bool)

(assert (=> bs!1877983 m!7778184))

(assert (=> b!7058201 d!2206626))

(declare-fun d!2206628 () Bool)

(declare-fun c!1315471 () Bool)

(assert (=> d!2206628 (= c!1315471 (is-Nil!68156 lt!2533936))))

(declare-fun e!4243700 () (Set Context!13160))

(assert (=> d!2206628 (= (content!13703 lt!2533936) e!4243700)))

(declare-fun b!7058854 () Bool)

(assert (=> b!7058854 (= e!4243700 (as set.empty (Set Context!13160)))))

(declare-fun b!7058855 () Bool)

(assert (=> b!7058855 (= e!4243700 (set.union (set.insert (h!74604 lt!2533936) (as set.empty (Set Context!13160))) (content!13703 (t!382059 lt!2533936))))))

(assert (= (and d!2206628 c!1315471) b!7058854))

(assert (= (and d!2206628 (not c!1315471)) b!7058855))

(declare-fun m!7778186 () Bool)

(assert (=> b!7058855 m!7778186))

(declare-fun m!7778188 () Bool)

(assert (=> b!7058855 m!7778188))

(assert (=> d!2206248 d!2206628))

(declare-fun d!2206630 () Bool)

(declare-fun c!1315472 () Bool)

(assert (=> d!2206630 (= c!1315472 (isEmpty!39754 s!7408))))

(declare-fun e!4243701 () Bool)

(assert (=> d!2206630 (= (matchZipper!3124 (set.insert (h!74604 lt!2533923) (as set.empty (Set Context!13160))) s!7408) e!4243701)))

(declare-fun b!7058856 () Bool)

(assert (=> b!7058856 (= e!4243701 (nullableZipper!2667 (set.insert (h!74604 lt!2533923) (as set.empty (Set Context!13160)))))))

(declare-fun b!7058857 () Bool)

(assert (=> b!7058857 (= e!4243701 (matchZipper!3124 (derivationStepZipper!3034 (set.insert (h!74604 lt!2533923) (as set.empty (Set Context!13160))) (head!14368 s!7408)) (tail!13726 s!7408)))))

(assert (= (and d!2206630 c!1315472) b!7058856))

(assert (= (and d!2206630 (not c!1315472)) b!7058857))

(assert (=> d!2206630 m!7776598))

(assert (=> b!7058856 m!7777334))

(declare-fun m!7778190 () Bool)

(assert (=> b!7058856 m!7778190))

(assert (=> b!7058857 m!7776602))

(assert (=> b!7058857 m!7777334))

(assert (=> b!7058857 m!7776602))

(declare-fun m!7778192 () Bool)

(assert (=> b!7058857 m!7778192))

(assert (=> b!7058857 m!7776606))

(assert (=> b!7058857 m!7778192))

(assert (=> b!7058857 m!7776606))

(declare-fun m!7778194 () Bool)

(assert (=> b!7058857 m!7778194))

(assert (=> bs!1877836 d!2206630))

(declare-fun bs!1877984 () Bool)

(declare-fun d!2206632 () Bool)

(assert (= bs!1877984 (and d!2206632 b!7057679)))

(declare-fun lambda!421352 () Int)

(assert (=> bs!1877984 (= lambda!421352 lambda!421195)))

(declare-fun bs!1877985 () Bool)

(assert (= bs!1877985 (and d!2206632 d!2205830)))

(assert (=> bs!1877985 (= lambda!421352 lambda!421264)))

(declare-fun bs!1877986 () Bool)

(assert (= bs!1877986 (and d!2206632 d!2205902)))

(assert (=> bs!1877986 (= lambda!421352 lambda!421275)))

(declare-fun bs!1877987 () Bool)

(assert (= bs!1877987 (and d!2206632 d!2206048)))

(assert (=> bs!1877987 (= lambda!421352 lambda!421297)))

(assert (=> d!2206632 (= (inv!86820 setElem!49937) (forall!16536 (exprs!7080 setElem!49937) lambda!421352))))

(declare-fun bs!1877988 () Bool)

(assert (= bs!1877988 d!2206632))

(declare-fun m!7778196 () Bool)

(assert (=> bs!1877988 m!7778196))

(assert (=> setNonEmpty!49937 d!2206632))

(declare-fun d!2206634 () Bool)

(declare-fun c!1315473 () Bool)

(assert (=> d!2206634 (= c!1315473 (is-Nil!68154 lt!2534239))))

(declare-fun e!4243702 () (Set Regex!17584))

(assert (=> d!2206634 (= (content!13704 lt!2534239) e!4243702)))

(declare-fun b!7058858 () Bool)

(assert (=> b!7058858 (= e!4243702 (as set.empty (Set Regex!17584)))))

(declare-fun b!7058859 () Bool)

(assert (=> b!7058859 (= e!4243702 (set.union (set.insert (h!74602 lt!2534239) (as set.empty (Set Regex!17584))) (content!13704 (t!382057 lt!2534239))))))

(assert (= (and d!2206634 c!1315473) b!7058858))

(assert (= (and d!2206634 (not c!1315473)) b!7058859))

(declare-fun m!7778198 () Bool)

(assert (=> b!7058859 m!7778198))

(declare-fun m!7778200 () Bool)

(assert (=> b!7058859 m!7778200))

(assert (=> d!2206224 d!2206634))

(declare-fun d!2206636 () Bool)

(declare-fun c!1315474 () Bool)

(assert (=> d!2206636 (= c!1315474 (is-Nil!68154 (exprs!7080 lt!2533926)))))

(declare-fun e!4243703 () (Set Regex!17584))

(assert (=> d!2206636 (= (content!13704 (exprs!7080 lt!2533926)) e!4243703)))

(declare-fun b!7058860 () Bool)

(assert (=> b!7058860 (= e!4243703 (as set.empty (Set Regex!17584)))))

(declare-fun b!7058861 () Bool)

(assert (=> b!7058861 (= e!4243703 (set.union (set.insert (h!74602 (exprs!7080 lt!2533926)) (as set.empty (Set Regex!17584))) (content!13704 (t!382057 (exprs!7080 lt!2533926)))))))

(assert (= (and d!2206636 c!1315474) b!7058860))

(assert (= (and d!2206636 (not c!1315474)) b!7058861))

(declare-fun m!7778202 () Bool)

(assert (=> b!7058861 m!7778202))

(declare-fun m!7778204 () Bool)

(assert (=> b!7058861 m!7778204))

(assert (=> d!2206224 d!2206636))

(assert (=> d!2206224 d!2206076))

(declare-fun d!2206638 () Bool)

(declare-fun lt!2534301 () Bool)

(assert (=> d!2206638 (= lt!2534301 (set.member (h!74604 lt!2534123) (content!13703 (t!382059 lt!2534123))))))

(declare-fun e!4243705 () Bool)

(assert (=> d!2206638 (= lt!2534301 e!4243705)))

(declare-fun res!2881706 () Bool)

(assert (=> d!2206638 (=> (not res!2881706) (not e!4243705))))

(assert (=> d!2206638 (= res!2881706 (is-Cons!68156 (t!382059 lt!2534123)))))

(assert (=> d!2206638 (= (contains!20486 (t!382059 lt!2534123) (h!74604 lt!2534123)) lt!2534301)))

(declare-fun b!7058862 () Bool)

(declare-fun e!4243704 () Bool)

(assert (=> b!7058862 (= e!4243705 e!4243704)))

(declare-fun res!2881705 () Bool)

(assert (=> b!7058862 (=> res!2881705 e!4243704)))

(assert (=> b!7058862 (= res!2881705 (= (h!74604 (t!382059 lt!2534123)) (h!74604 lt!2534123)))))

(declare-fun b!7058863 () Bool)

(assert (=> b!7058863 (= e!4243704 (contains!20486 (t!382059 (t!382059 lt!2534123)) (h!74604 lt!2534123)))))

(assert (= (and d!2206638 res!2881706) b!7058862))

(assert (= (and b!7058862 (not res!2881705)) b!7058863))

(assert (=> d!2206638 m!7777236))

(declare-fun m!7778206 () Bool)

(assert (=> d!2206638 m!7778206))

(declare-fun m!7778208 () Bool)

(assert (=> b!7058863 m!7778208))

(assert (=> b!7058225 d!2206638))

(declare-fun d!2206640 () Bool)

(assert (=> d!2206640 (= (flatMap!2510 lt!2533929 lambda!421304) (choose!53885 lt!2533929 lambda!421304))))

(declare-fun bs!1877989 () Bool)

(assert (= bs!1877989 d!2206640))

(declare-fun m!7778210 () Bool)

(assert (=> bs!1877989 m!7778210))

(assert (=> d!2206120 d!2206640))

(declare-fun d!2206642 () Bool)

(declare-fun lt!2534302 () Bool)

(assert (=> d!2206642 (= lt!2534302 (exists!3582 (toList!10925 lt!2533938) lambda!421302))))

(assert (=> d!2206642 (= lt!2534302 (choose!53900 lt!2533938 lambda!421302))))

(assert (=> d!2206642 (= (exists!3584 lt!2533938 lambda!421302) lt!2534302)))

(declare-fun bs!1877990 () Bool)

(assert (= bs!1877990 d!2206642))

(declare-fun m!7778212 () Bool)

(assert (=> bs!1877990 m!7778212))

(assert (=> bs!1877990 m!7778212))

(declare-fun m!7778214 () Bool)

(assert (=> bs!1877990 m!7778214))

(declare-fun m!7778216 () Bool)

(assert (=> bs!1877990 m!7778216))

(assert (=> d!2206096 d!2206642))

(declare-fun bs!1877991 () Bool)

(declare-fun d!2206644 () Bool)

(assert (= bs!1877991 (and d!2206644 d!2206096)))

(declare-fun lambda!421353 () Int)

(assert (=> bs!1877991 (= lambda!421353 lambda!421302)))

(declare-fun bs!1877992 () Bool)

(assert (= bs!1877992 (and d!2206644 d!2206554)))

(assert (=> bs!1877992 (= lambda!421353 lambda!421343)))

(declare-fun bs!1877993 () Bool)

(assert (= bs!1877993 (and d!2206644 d!2206564)))

(assert (=> bs!1877993 (not (= lambda!421353 lambda!421345))))

(declare-fun bs!1877994 () Bool)

(assert (= bs!1877994 (and d!2206644 d!2206206)))

(assert (=> bs!1877994 (= lambda!421353 lambda!421315)))

(declare-fun bs!1877995 () Bool)

(assert (= bs!1877995 (and d!2206644 d!2206128)))

(assert (=> bs!1877995 (= lambda!421353 lambda!421305)))

(declare-fun bs!1877996 () Bool)

(assert (= bs!1877996 (and d!2206644 d!2205874)))

(assert (=> bs!1877996 (not (= lambda!421353 lambda!421268))))

(declare-fun bs!1877997 () Bool)

(assert (= bs!1877997 (and d!2206644 d!2206130)))

(assert (=> bs!1877997 (= lambda!421353 lambda!421306)))

(declare-fun bs!1877998 () Bool)

(assert (= bs!1877998 (and d!2206644 d!2206270)))

(assert (=> bs!1877998 (= lambda!421353 lambda!421319)))

(declare-fun bs!1877999 () Bool)

(assert (= bs!1877999 (and d!2206644 d!2206170)))

(assert (=> bs!1877999 (= lambda!421353 lambda!421312)))

(declare-fun bs!1878000 () Bool)

(assert (= bs!1878000 (and d!2206644 d!2205876)))

(assert (=> bs!1878000 (not (= lambda!421353 lambda!421271))))

(declare-fun bs!1878001 () Bool)

(assert (= bs!1878001 (and d!2206644 d!2206602)))

(assert (=> bs!1878001 (= lambda!421353 lambda!421349)))

(declare-fun bs!1878002 () Bool)

(assert (= bs!1878002 (and d!2206644 d!2206196)))

(assert (=> bs!1878002 (= lambda!421353 lambda!421313)))

(declare-fun bs!1878003 () Bool)

(assert (= bs!1878003 (and d!2206644 d!2206616)))

(assert (=> bs!1878003 (= lambda!421353 lambda!421351)))

(declare-fun bs!1878004 () Bool)

(assert (= bs!1878004 (and d!2206644 d!2206600)))

(assert (=> bs!1878004 (not (= lambda!421353 lambda!421348))))

(declare-fun bs!1878005 () Bool)

(assert (= bs!1878005 (and d!2206644 d!2206560)))

(assert (=> bs!1878005 (= lambda!421353 lambda!421344)))

(declare-fun bs!1878006 () Bool)

(assert (= bs!1878006 (and d!2206644 b!7057676)))

(assert (=> bs!1878006 (not (= lambda!421353 lambda!421193))))

(declare-fun bs!1878007 () Bool)

(assert (= bs!1878007 (and d!2206644 d!2206214)))

(assert (=> bs!1878007 (= lambda!421353 lambda!421316)))

(declare-fun bs!1878008 () Bool)

(assert (= bs!1878008 (and d!2206644 d!2206158)))

(assert (=> bs!1878008 (not (= lambda!421353 lambda!421311))))

(declare-fun bs!1878009 () Bool)

(assert (= bs!1878009 (and d!2206644 d!2206156)))

(assert (=> bs!1878009 (not (= lambda!421353 lambda!421308))))

(assert (=> d!2206644 (= (nullableZipper!2667 (set.union lt!2533938 lt!2533946)) (exists!3584 (set.union lt!2533938 lt!2533946) lambda!421353))))

(declare-fun bs!1878010 () Bool)

(assert (= bs!1878010 d!2206644))

(declare-fun m!7778218 () Bool)

(assert (=> bs!1878010 m!7778218))

(assert (=> b!7058317 d!2206644))

(declare-fun b!7058864 () Bool)

(declare-fun res!2881711 () Bool)

(declare-fun e!4243712 () Bool)

(assert (=> b!7058864 (=> (not res!2881711) (not e!4243712))))

(declare-fun call!641375 () Bool)

(assert (=> b!7058864 (= res!2881711 call!641375)))

(declare-fun e!4243711 () Bool)

(assert (=> b!7058864 (= e!4243711 e!4243712)))

(declare-fun b!7058865 () Bool)

(declare-fun e!4243709 () Bool)

(declare-fun call!641377 () Bool)

(assert (=> b!7058865 (= e!4243709 call!641377)))

(declare-fun bm!641370 () Bool)

(assert (=> bm!641370 (= call!641375 call!641377)))

(declare-fun b!7058866 () Bool)

(declare-fun res!2881707 () Bool)

(declare-fun e!4243707 () Bool)

(assert (=> b!7058866 (=> res!2881707 e!4243707)))

(assert (=> b!7058866 (= res!2881707 (not (is-Concat!26429 (h!74602 (exprs!7080 lt!2533918)))))))

(assert (=> b!7058866 (= e!4243711 e!4243707)))

(declare-fun b!7058867 () Bool)

(declare-fun e!4243710 () Bool)

(declare-fun e!4243706 () Bool)

(assert (=> b!7058867 (= e!4243710 e!4243706)))

(declare-fun c!1315476 () Bool)

(assert (=> b!7058867 (= c!1315476 (is-Star!17584 (h!74602 (exprs!7080 lt!2533918))))))

(declare-fun b!7058868 () Bool)

(declare-fun e!4243708 () Bool)

(assert (=> b!7058868 (= e!4243707 e!4243708)))

(declare-fun res!2881708 () Bool)

(assert (=> b!7058868 (=> (not res!2881708) (not e!4243708))))

(assert (=> b!7058868 (= res!2881708 call!641375)))

(declare-fun b!7058869 () Bool)

(assert (=> b!7058869 (= e!4243706 e!4243709)))

(declare-fun res!2881710 () Bool)

(assert (=> b!7058869 (= res!2881710 (not (nullable!7267 (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))))

(assert (=> b!7058869 (=> (not res!2881710) (not e!4243709))))

(declare-fun b!7058870 () Bool)

(declare-fun call!641376 () Bool)

(assert (=> b!7058870 (= e!4243708 call!641376)))

(declare-fun bm!641371 () Bool)

(declare-fun c!1315475 () Bool)

(assert (=> bm!641371 (= call!641376 (validRegex!8960 (ite c!1315475 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))))))))

(declare-fun d!2206646 () Bool)

(declare-fun res!2881709 () Bool)

(assert (=> d!2206646 (=> res!2881709 e!4243710)))

(assert (=> d!2206646 (= res!2881709 (is-ElementMatch!17584 (h!74602 (exprs!7080 lt!2533918))))))

(assert (=> d!2206646 (= (validRegex!8960 (h!74602 (exprs!7080 lt!2533918))) e!4243710)))

(declare-fun b!7058871 () Bool)

(assert (=> b!7058871 (= e!4243712 call!641376)))

(declare-fun b!7058872 () Bool)

(assert (=> b!7058872 (= e!4243706 e!4243711)))

(assert (=> b!7058872 (= c!1315475 (is-Union!17584 (h!74602 (exprs!7080 lt!2533918))))))

(declare-fun bm!641372 () Bool)

(assert (=> bm!641372 (= call!641377 (validRegex!8960 (ite c!1315476 (reg!17913 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315475 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))))))

(assert (= (and d!2206646 (not res!2881709)) b!7058867))

(assert (= (and b!7058867 c!1315476) b!7058869))

(assert (= (and b!7058867 (not c!1315476)) b!7058872))

(assert (= (and b!7058869 res!2881710) b!7058865))

(assert (= (and b!7058872 c!1315475) b!7058864))

(assert (= (and b!7058872 (not c!1315475)) b!7058866))

(assert (= (and b!7058864 res!2881711) b!7058871))

(assert (= (and b!7058866 (not res!2881707)) b!7058868))

(assert (= (and b!7058868 res!2881708) b!7058870))

(assert (= (or b!7058871 b!7058870) bm!641371))

(assert (= (or b!7058864 b!7058868) bm!641370))

(assert (= (or b!7058865 bm!641370) bm!641372))

(declare-fun m!7778220 () Bool)

(assert (=> b!7058869 m!7778220))

(declare-fun m!7778222 () Bool)

(assert (=> bm!641371 m!7778222))

(declare-fun m!7778224 () Bool)

(assert (=> bm!641372 m!7778224))

(assert (=> bs!1877651 d!2206646))

(assert (=> d!2206054 d!2206550))

(declare-fun d!2206648 () Bool)

(declare-fun lt!2534303 () Bool)

(assert (=> d!2206648 (= lt!2534303 (exists!3582 (toList!10925 lt!2533930) lambda!421315))))

(assert (=> d!2206648 (= lt!2534303 (choose!53900 lt!2533930 lambda!421315))))

(assert (=> d!2206648 (= (exists!3584 lt!2533930 lambda!421315) lt!2534303)))

(declare-fun bs!1878011 () Bool)

(assert (= bs!1878011 d!2206648))

(assert (=> bs!1878011 m!7776398))

(assert (=> bs!1878011 m!7776398))

(declare-fun m!7778226 () Bool)

(assert (=> bs!1878011 m!7778226))

(declare-fun m!7778228 () Bool)

(assert (=> bs!1878011 m!7778228))

(assert (=> d!2206206 d!2206648))

(declare-fun d!2206650 () Bool)

(declare-fun lt!2534304 () Int)

(assert (=> d!2206650 (>= lt!2534304 0)))

(declare-fun e!4243713 () Int)

(assert (=> d!2206650 (= lt!2534304 e!4243713)))

(declare-fun c!1315477 () Bool)

(assert (=> d!2206650 (= c!1315477 (is-Nil!68154 (t!382057 (exprs!7080 ct2!306))))))

(assert (=> d!2206650 (= (size!41161 (t!382057 (exprs!7080 ct2!306))) lt!2534304)))

(declare-fun b!7058873 () Bool)

(assert (=> b!7058873 (= e!4243713 0)))

(declare-fun b!7058874 () Bool)

(assert (=> b!7058874 (= e!4243713 (+ 1 (size!41161 (t!382057 (t!382057 (exprs!7080 ct2!306))))))))

(assert (= (and d!2206650 c!1315477) b!7058873))

(assert (= (and d!2206650 (not c!1315477)) b!7058874))

(declare-fun m!7778230 () Bool)

(assert (=> b!7058874 m!7778230))

(assert (=> b!7058370 d!2206650))

(declare-fun d!2206652 () Bool)

(declare-fun c!1315478 () Bool)

(assert (=> d!2206652 (= c!1315478 (isEmpty!39754 (tail!13726 (tail!13726 (t!382058 s!7408)))))))

(declare-fun e!4243714 () Bool)

(assert (=> d!2206652 (= (matchZipper!3124 (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533929 (head!14368 (t!382058 s!7408))) (head!14368 (tail!13726 (t!382058 s!7408)))) (tail!13726 (tail!13726 (t!382058 s!7408)))) e!4243714)))

(declare-fun b!7058875 () Bool)

(assert (=> b!7058875 (= e!4243714 (nullableZipper!2667 (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533929 (head!14368 (t!382058 s!7408))) (head!14368 (tail!13726 (t!382058 s!7408))))))))

(declare-fun b!7058876 () Bool)

(assert (=> b!7058876 (= e!4243714 (matchZipper!3124 (derivationStepZipper!3034 (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533929 (head!14368 (t!382058 s!7408))) (head!14368 (tail!13726 (t!382058 s!7408)))) (head!14368 (tail!13726 (tail!13726 (t!382058 s!7408))))) (tail!13726 (tail!13726 (tail!13726 (t!382058 s!7408))))))))

(assert (= (and d!2206652 c!1315478) b!7058875))

(assert (= (and d!2206652 (not c!1315478)) b!7058876))

(assert (=> d!2206652 m!7777130))

(declare-fun m!7778232 () Bool)

(assert (=> d!2206652 m!7778232))

(assert (=> b!7058875 m!7777244))

(declare-fun m!7778234 () Bool)

(assert (=> b!7058875 m!7778234))

(assert (=> b!7058876 m!7777130))

(declare-fun m!7778236 () Bool)

(assert (=> b!7058876 m!7778236))

(assert (=> b!7058876 m!7777244))

(assert (=> b!7058876 m!7778236))

(declare-fun m!7778238 () Bool)

(assert (=> b!7058876 m!7778238))

(assert (=> b!7058876 m!7777130))

(declare-fun m!7778240 () Bool)

(assert (=> b!7058876 m!7778240))

(assert (=> b!7058876 m!7778238))

(assert (=> b!7058876 m!7778240))

(declare-fun m!7778242 () Bool)

(assert (=> b!7058876 m!7778242))

(assert (=> b!7058199 d!2206652))

(declare-fun bs!1878012 () Bool)

(declare-fun d!2206654 () Bool)

(assert (= bs!1878012 (and d!2206654 d!2205914)))

(declare-fun lambda!421354 () Int)

(assert (=> bs!1878012 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (h!74603 s!7408)) (= lambda!421354 lambda!421276))))

(declare-fun bs!1878013 () Bool)

(assert (= bs!1878013 (and d!2206654 d!2206094)))

(assert (=> bs!1878013 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 (t!382058 s!7408))) (= lambda!421354 lambda!421299))))

(declare-fun bs!1878014 () Bool)

(assert (= bs!1878014 (and d!2206654 d!2206138)))

(assert (=> bs!1878014 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 s!7408)) (= lambda!421354 lambda!421307))))

(declare-fun bs!1878015 () Bool)

(assert (= bs!1878015 (and d!2206654 d!2206614)))

(assert (=> bs!1878015 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 s!7408)) (= lambda!421354 lambda!421350))))

(declare-fun bs!1878016 () Bool)

(assert (= bs!1878016 (and d!2206654 d!2206590)))

(assert (=> bs!1878016 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 (t!382058 s!7408))) (= lambda!421354 lambda!421347))))

(declare-fun bs!1878017 () Bool)

(assert (= bs!1878017 (and d!2206654 d!2206120)))

(assert (=> bs!1878017 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 (t!382058 s!7408))) (= lambda!421354 lambda!421304))))

(declare-fun bs!1878018 () Bool)

(assert (= bs!1878018 (and d!2206654 d!2206056)))

(assert (=> bs!1878018 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 (t!382058 s!7408))) (= lambda!421354 lambda!421298))))

(declare-fun bs!1878019 () Bool)

(assert (= bs!1878019 (and d!2206654 d!2206228)))

(assert (=> bs!1878019 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 s!7408)) (= lambda!421354 lambda!421317))))

(declare-fun bs!1878020 () Bool)

(assert (= bs!1878020 (and d!2206654 d!2206268)))

(assert (=> bs!1878020 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 s!7408)) (= lambda!421354 lambda!421318))))

(declare-fun bs!1878021 () Bool)

(assert (= bs!1878021 (and d!2206654 d!2206100)))

(assert (=> bs!1878021 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 s!7408)) (= lambda!421354 lambda!421303))))

(declare-fun bs!1878022 () Bool)

(assert (= bs!1878022 (and d!2206654 b!7057661)))

(assert (=> bs!1878022 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (h!74603 s!7408)) (= lambda!421354 lambda!421196))))

(declare-fun bs!1878023 () Bool)

(assert (= bs!1878023 (and d!2206654 d!2205882)))

(assert (=> bs!1878023 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (h!74603 s!7408)) (= lambda!421354 lambda!421274))))

(declare-fun bs!1878024 () Bool)

(assert (= bs!1878024 (and d!2206654 d!2206580)))

(assert (=> bs!1878024 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 (tail!13726 s!7408))) (= lambda!421354 lambda!421346))))

(declare-fun bs!1878025 () Bool)

(assert (= bs!1878025 (and d!2206654 d!2206200)))

(assert (=> bs!1878025 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 (t!382058 s!7408))) (= lambda!421354 lambda!421314))))

(assert (=> d!2206654 true))

(assert (=> d!2206654 (= (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533929 (head!14368 (t!382058 s!7408))) (head!14368 (tail!13726 (t!382058 s!7408)))) (flatMap!2510 (derivationStepZipper!3034 lt!2533929 (head!14368 (t!382058 s!7408))) lambda!421354))))

(declare-fun bs!1878026 () Bool)

(assert (= bs!1878026 d!2206654))

(assert (=> bs!1878026 m!7776796))

(declare-fun m!7778244 () Bool)

(assert (=> bs!1878026 m!7778244))

(assert (=> b!7058199 d!2206654))

(declare-fun d!2206656 () Bool)

(assert (=> d!2206656 (= (head!14368 (tail!13726 (t!382058 s!7408))) (h!74603 (tail!13726 (t!382058 s!7408))))))

(assert (=> b!7058199 d!2206656))

(declare-fun d!2206658 () Bool)

(assert (=> d!2206658 (= (tail!13726 (tail!13726 (t!382058 s!7408))) (t!382058 (tail!13726 (t!382058 s!7408))))))

(assert (=> b!7058199 d!2206658))

(declare-fun bs!1878027 () Bool)

(declare-fun d!2206660 () Bool)

(assert (= bs!1878027 (and d!2206660 d!2206048)))

(declare-fun lambda!421355 () Int)

(assert (=> bs!1878027 (= lambda!421355 lambda!421297)))

(declare-fun bs!1878028 () Bool)

(assert (= bs!1878028 (and d!2206660 b!7057679)))

(assert (=> bs!1878028 (= lambda!421355 lambda!421195)))

(declare-fun bs!1878029 () Bool)

(assert (= bs!1878029 (and d!2206660 d!2205902)))

(assert (=> bs!1878029 (= lambda!421355 lambda!421275)))

(declare-fun bs!1878030 () Bool)

(assert (= bs!1878030 (and d!2206660 d!2205830)))

(assert (=> bs!1878030 (= lambda!421355 lambda!421264)))

(declare-fun bs!1878031 () Bool)

(assert (= bs!1878031 (and d!2206660 d!2206632)))

(assert (=> bs!1878031 (= lambda!421355 lambda!421352)))

(assert (=> d!2206660 (= (inv!86820 setElem!49938) (forall!16536 (exprs!7080 setElem!49938) lambda!421355))))

(declare-fun bs!1878032 () Bool)

(assert (= bs!1878032 d!2206660))

(declare-fun m!7778246 () Bool)

(assert (=> bs!1878032 m!7778246))

(assert (=> setNonEmpty!49938 d!2206660))

(declare-fun d!2206662 () Bool)

(assert (=> d!2206662 (= (flatMap!2510 lt!2533930 lambda!421303) (choose!53885 lt!2533930 lambda!421303))))

(declare-fun bs!1878033 () Bool)

(assert (= bs!1878033 d!2206662))

(declare-fun m!7778248 () Bool)

(assert (=> bs!1878033 m!7778248))

(assert (=> d!2206100 d!2206662))

(declare-fun d!2206664 () Bool)

(declare-fun res!2881712 () Bool)

(declare-fun e!4243715 () Bool)

(assert (=> d!2206664 (=> res!2881712 e!4243715)))

(assert (=> d!2206664 (= res!2881712 (is-Nil!68156 (t!382059 lt!2534146)))))

(assert (=> d!2206664 (= (noDuplicate!2698 (t!382059 lt!2534146)) e!4243715)))

(declare-fun b!7058877 () Bool)

(declare-fun e!4243716 () Bool)

(assert (=> b!7058877 (= e!4243715 e!4243716)))

(declare-fun res!2881713 () Bool)

(assert (=> b!7058877 (=> (not res!2881713) (not e!4243716))))

(assert (=> b!7058877 (= res!2881713 (not (contains!20486 (t!382059 (t!382059 lt!2534146)) (h!74604 (t!382059 lt!2534146)))))))

(declare-fun b!7058878 () Bool)

(assert (=> b!7058878 (= e!4243716 (noDuplicate!2698 (t!382059 (t!382059 lt!2534146))))))

(assert (= (and d!2206664 (not res!2881712)) b!7058877))

(assert (= (and b!7058877 res!2881713) b!7058878))

(declare-fun m!7778250 () Bool)

(assert (=> b!7058877 m!7778250))

(declare-fun m!7778252 () Bool)

(assert (=> b!7058878 m!7778252))

(assert (=> b!7058323 d!2206664))

(declare-fun d!2206666 () Bool)

(assert (=> d!2206666 true))

(declare-fun setRes!49953 () Bool)

(assert (=> d!2206666 setRes!49953))

(declare-fun condSetEmpty!49953 () Bool)

(declare-fun res!2881714 () (Set Context!13160))

(assert (=> d!2206666 (= condSetEmpty!49953 (= res!2881714 (as set.empty (Set Context!13160))))))

(assert (=> d!2206666 (= (choose!53884 z1!570 lambda!421194) res!2881714)))

(declare-fun setIsEmpty!49953 () Bool)

(assert (=> setIsEmpty!49953 setRes!49953))

(declare-fun setElem!49953 () Context!13160)

(declare-fun e!4243717 () Bool)

(declare-fun setNonEmpty!49953 () Bool)

(declare-fun tp!1940705 () Bool)

(assert (=> setNonEmpty!49953 (= setRes!49953 (and tp!1940705 (inv!86820 setElem!49953) e!4243717))))

(declare-fun setRest!49953 () (Set Context!13160))

(assert (=> setNonEmpty!49953 (= res!2881714 (set.union (set.insert setElem!49953 (as set.empty (Set Context!13160))) setRest!49953))))

(declare-fun b!7058879 () Bool)

(declare-fun tp!1940706 () Bool)

(assert (=> b!7058879 (= e!4243717 tp!1940706)))

(assert (= (and d!2206666 condSetEmpty!49953) setIsEmpty!49953))

(assert (= (and d!2206666 (not condSetEmpty!49953)) setNonEmpty!49953))

(assert (= setNonEmpty!49953 b!7058879))

(declare-fun m!7778254 () Bool)

(assert (=> setNonEmpty!49953 m!7778254))

(assert (=> d!2206188 d!2206666))

(declare-fun d!2206668 () Bool)

(declare-fun res!2881715 () Bool)

(declare-fun e!4243718 () Bool)

(assert (=> d!2206668 (=> res!2881715 e!4243718)))

(assert (=> d!2206668 (= res!2881715 (is-Nil!68154 (t!382057 (++!15667 lt!2533935 (exprs!7080 ct2!306)))))))

(assert (=> d!2206668 (= (forall!16536 (t!382057 (++!15667 lt!2533935 (exprs!7080 ct2!306))) lambda!421195) e!4243718)))

(declare-fun b!7058880 () Bool)

(declare-fun e!4243719 () Bool)

(assert (=> b!7058880 (= e!4243718 e!4243719)))

(declare-fun res!2881716 () Bool)

(assert (=> b!7058880 (=> (not res!2881716) (not e!4243719))))

(assert (=> b!7058880 (= res!2881716 (dynLambda!27681 lambda!421195 (h!74602 (t!382057 (++!15667 lt!2533935 (exprs!7080 ct2!306))))))))

(declare-fun b!7058881 () Bool)

(assert (=> b!7058881 (= e!4243719 (forall!16536 (t!382057 (t!382057 (++!15667 lt!2533935 (exprs!7080 ct2!306)))) lambda!421195))))

(assert (= (and d!2206668 (not res!2881715)) b!7058880))

(assert (= (and b!7058880 res!2881716) b!7058881))

(declare-fun b_lambda!269085 () Bool)

(assert (=> (not b_lambda!269085) (not b!7058880)))

(declare-fun m!7778256 () Bool)

(assert (=> b!7058880 m!7778256))

(declare-fun m!7778258 () Bool)

(assert (=> b!7058881 m!7778258))

(assert (=> b!7058220 d!2206668))

(declare-fun d!2206670 () Bool)

(declare-fun lt!2534305 () Bool)

(assert (=> d!2206670 (= lt!2534305 (exists!3582 (toList!10925 lt!2533929) lambda!421316))))

(assert (=> d!2206670 (= lt!2534305 (choose!53900 lt!2533929 lambda!421316))))

(assert (=> d!2206670 (= (exists!3584 lt!2533929 lambda!421316) lt!2534305)))

(declare-fun bs!1878034 () Bool)

(assert (= bs!1878034 d!2206670))

(declare-fun m!7778260 () Bool)

(assert (=> bs!1878034 m!7778260))

(assert (=> bs!1878034 m!7778260))

(declare-fun m!7778262 () Bool)

(assert (=> bs!1878034 m!7778262))

(declare-fun m!7778264 () Bool)

(assert (=> bs!1878034 m!7778264))

(assert (=> d!2206214 d!2206670))

(declare-fun bs!1878035 () Bool)

(declare-fun d!2206672 () Bool)

(assert (= bs!1878035 (and d!2206672 d!2206048)))

(declare-fun lambda!421356 () Int)

(assert (=> bs!1878035 (= lambda!421356 lambda!421297)))

(declare-fun bs!1878036 () Bool)

(assert (= bs!1878036 (and d!2206672 b!7057679)))

(assert (=> bs!1878036 (= lambda!421356 lambda!421195)))

(declare-fun bs!1878037 () Bool)

(assert (= bs!1878037 (and d!2206672 d!2205902)))

(assert (=> bs!1878037 (= lambda!421356 lambda!421275)))

(declare-fun bs!1878038 () Bool)

(assert (= bs!1878038 (and d!2206672 d!2205830)))

(assert (=> bs!1878038 (= lambda!421356 lambda!421264)))

(declare-fun bs!1878039 () Bool)

(assert (= bs!1878039 (and d!2206672 d!2206660)))

(assert (=> bs!1878039 (= lambda!421356 lambda!421355)))

(declare-fun bs!1878040 () Bool)

(assert (= bs!1878040 (and d!2206672 d!2206632)))

(assert (=> bs!1878040 (= lambda!421356 lambda!421352)))

(assert (=> d!2206672 (= (inv!86820 setElem!49942) (forall!16536 (exprs!7080 setElem!49942) lambda!421356))))

(declare-fun bs!1878041 () Bool)

(assert (= bs!1878041 d!2206672))

(declare-fun m!7778266 () Bool)

(assert (=> bs!1878041 m!7778266))

(assert (=> setNonEmpty!49942 d!2206672))

(declare-fun d!2206674 () Bool)

(declare-fun c!1315479 () Bool)

(assert (=> d!2206674 (= c!1315479 (is-Nil!68156 res!2881532))))

(declare-fun e!4243720 () (Set Context!13160))

(assert (=> d!2206674 (= (content!13703 res!2881532) e!4243720)))

(declare-fun b!7058882 () Bool)

(assert (=> b!7058882 (= e!4243720 (as set.empty (Set Context!13160)))))

(declare-fun b!7058883 () Bool)

(assert (=> b!7058883 (= e!4243720 (set.union (set.insert (h!74604 res!2881532) (as set.empty (Set Context!13160))) (content!13703 (t!382059 res!2881532))))))

(assert (= (and d!2206674 c!1315479) b!7058882))

(assert (= (and d!2206674 (not c!1315479)) b!7058883))

(declare-fun m!7778268 () Bool)

(assert (=> b!7058883 m!7778268))

(declare-fun m!7778270 () Bool)

(assert (=> b!7058883 m!7778270))

(assert (=> b!7058229 d!2206674))

(declare-fun d!2206676 () Bool)

(declare-fun res!2881717 () Bool)

(declare-fun e!4243721 () Bool)

(assert (=> d!2206676 (=> res!2881717 e!4243721)))

(assert (=> d!2206676 (= res!2881717 (is-Nil!68154 (t!382057 (exprs!7080 setElem!49924))))))

(assert (=> d!2206676 (= (forall!16536 (t!382057 (exprs!7080 setElem!49924)) lambda!421275) e!4243721)))

(declare-fun b!7058884 () Bool)

(declare-fun e!4243722 () Bool)

(assert (=> b!7058884 (= e!4243721 e!4243722)))

(declare-fun res!2881718 () Bool)

(assert (=> b!7058884 (=> (not res!2881718) (not e!4243722))))

(assert (=> b!7058884 (= res!2881718 (dynLambda!27681 lambda!421275 (h!74602 (t!382057 (exprs!7080 setElem!49924)))))))

(declare-fun b!7058885 () Bool)

(assert (=> b!7058885 (= e!4243722 (forall!16536 (t!382057 (t!382057 (exprs!7080 setElem!49924))) lambda!421275))))

(assert (= (and d!2206676 (not res!2881717)) b!7058884))

(assert (= (and b!7058884 res!2881718) b!7058885))

(declare-fun b_lambda!269087 () Bool)

(assert (=> (not b_lambda!269087) (not b!7058884)))

(declare-fun m!7778272 () Bool)

(assert (=> b!7058884 m!7778272))

(declare-fun m!7778274 () Bool)

(assert (=> b!7058885 m!7778274))

(assert (=> b!7058224 d!2206676))

(declare-fun d!2206678 () Bool)

(declare-fun c!1315480 () Bool)

(assert (=> d!2206678 (= c!1315480 (is-Nil!68156 res!2881552))))

(declare-fun e!4243723 () (Set Context!13160))

(assert (=> d!2206678 (= (content!13703 res!2881552) e!4243723)))

(declare-fun b!7058886 () Bool)

(assert (=> b!7058886 (= e!4243723 (as set.empty (Set Context!13160)))))

(declare-fun b!7058887 () Bool)

(assert (=> b!7058887 (= e!4243723 (set.union (set.insert (h!74604 res!2881552) (as set.empty (Set Context!13160))) (content!13703 (t!382059 res!2881552))))))

(assert (= (and d!2206678 c!1315480) b!7058886))

(assert (= (and d!2206678 (not c!1315480)) b!7058887))

(declare-fun m!7778276 () Bool)

(assert (=> b!7058887 m!7778276))

(declare-fun m!7778278 () Bool)

(assert (=> b!7058887 m!7778278))

(assert (=> b!7058326 d!2206678))

(declare-fun d!2206680 () Bool)

(declare-fun res!2881719 () Bool)

(declare-fun e!4243724 () Bool)

(assert (=> d!2206680 (=> res!2881719 e!4243724)))

(assert (=> d!2206680 (= res!2881719 (is-Nil!68154 (t!382057 (++!15667 (exprs!7080 lt!2533918) (exprs!7080 ct2!306)))))))

(assert (=> d!2206680 (= (forall!16536 (t!382057 (++!15667 (exprs!7080 lt!2533918) (exprs!7080 ct2!306))) lambda!421195) e!4243724)))

(declare-fun b!7058888 () Bool)

(declare-fun e!4243725 () Bool)

(assert (=> b!7058888 (= e!4243724 e!4243725)))

(declare-fun res!2881720 () Bool)

(assert (=> b!7058888 (=> (not res!2881720) (not e!4243725))))

(assert (=> b!7058888 (= res!2881720 (dynLambda!27681 lambda!421195 (h!74602 (t!382057 (++!15667 (exprs!7080 lt!2533918) (exprs!7080 ct2!306))))))))

(declare-fun b!7058889 () Bool)

(assert (=> b!7058889 (= e!4243725 (forall!16536 (t!382057 (t!382057 (++!15667 (exprs!7080 lt!2533918) (exprs!7080 ct2!306)))) lambda!421195))))

(assert (= (and d!2206680 (not res!2881719)) b!7058888))

(assert (= (and b!7058888 res!2881720) b!7058889))

(declare-fun b_lambda!269089 () Bool)

(assert (=> (not b_lambda!269089) (not b!7058888)))

(declare-fun m!7778280 () Bool)

(assert (=> b!7058888 m!7778280))

(declare-fun m!7778282 () Bool)

(assert (=> b!7058889 m!7778282))

(assert (=> b!7058189 d!2206680))

(declare-fun d!2206682 () Bool)

(declare-fun c!1315481 () Bool)

(assert (=> d!2206682 (= c!1315481 (is-Nil!68156 (t!382059 lt!2534146)))))

(declare-fun e!4243726 () (Set Context!13160))

(assert (=> d!2206682 (= (content!13703 (t!382059 lt!2534146)) e!4243726)))

(declare-fun b!7058890 () Bool)

(assert (=> b!7058890 (= e!4243726 (as set.empty (Set Context!13160)))))

(declare-fun b!7058891 () Bool)

(assert (=> b!7058891 (= e!4243726 (set.union (set.insert (h!74604 (t!382059 lt!2534146)) (as set.empty (Set Context!13160))) (content!13703 (t!382059 (t!382059 lt!2534146)))))))

(assert (= (and d!2206682 c!1315481) b!7058890))

(assert (= (and d!2206682 (not c!1315481)) b!7058891))

(declare-fun m!7778284 () Bool)

(assert (=> b!7058891 m!7778284))

(declare-fun m!7778286 () Bool)

(assert (=> b!7058891 m!7778286))

(assert (=> b!7058372 d!2206682))

(declare-fun d!2206684 () Bool)

(declare-fun lt!2534306 () Int)

(assert (=> d!2206684 (>= lt!2534306 0)))

(declare-fun e!4243727 () Int)

(assert (=> d!2206684 (= lt!2534306 e!4243727)))

(declare-fun c!1315482 () Bool)

(assert (=> d!2206684 (= c!1315482 (is-Cons!68154 (exprs!7080 (h!74604 (t!382059 (Cons!68156 lt!2533926 Nil!68156))))))))

(assert (=> d!2206684 (= (contextDepthTotal!520 (h!74604 (t!382059 (Cons!68156 lt!2533926 Nil!68156)))) lt!2534306)))

(declare-fun b!7058892 () Bool)

(assert (=> b!7058892 (= e!4243727 (+ (regexDepthTotal!316 (h!74602 (exprs!7080 (h!74604 (t!382059 (Cons!68156 lt!2533926 Nil!68156)))))) (contextDepthTotal!520 (Context!13161 (t!382057 (exprs!7080 (h!74604 (t!382059 (Cons!68156 lt!2533926 Nil!68156)))))))))))

(declare-fun b!7058893 () Bool)

(assert (=> b!7058893 (= e!4243727 1)))

(assert (= (and d!2206684 c!1315482) b!7058892))

(assert (= (and d!2206684 (not c!1315482)) b!7058893))

(declare-fun m!7778288 () Bool)

(assert (=> b!7058892 m!7778288))

(declare-fun m!7778290 () Bool)

(assert (=> b!7058892 m!7778290))

(assert (=> b!7058150 d!2206684))

(declare-fun d!2206686 () Bool)

(declare-fun lt!2534307 () Int)

(assert (=> d!2206686 (>= lt!2534307 0)))

(declare-fun e!4243728 () Int)

(assert (=> d!2206686 (= lt!2534307 e!4243728)))

(declare-fun c!1315483 () Bool)

(assert (=> d!2206686 (= c!1315483 (is-Cons!68156 (t!382059 (t!382059 (Cons!68156 lt!2533926 Nil!68156)))))))

(assert (=> d!2206686 (= (zipperDepthTotal!549 (t!382059 (t!382059 (Cons!68156 lt!2533926 Nil!68156)))) lt!2534307)))

(declare-fun b!7058894 () Bool)

(assert (=> b!7058894 (= e!4243728 (+ (contextDepthTotal!520 (h!74604 (t!382059 (t!382059 (Cons!68156 lt!2533926 Nil!68156))))) (zipperDepthTotal!549 (t!382059 (t!382059 (t!382059 (Cons!68156 lt!2533926 Nil!68156)))))))))

(declare-fun b!7058895 () Bool)

(assert (=> b!7058895 (= e!4243728 0)))

(assert (= (and d!2206686 c!1315483) b!7058894))

(assert (= (and d!2206686 (not c!1315483)) b!7058895))

(declare-fun m!7778292 () Bool)

(assert (=> b!7058894 m!7778292))

(declare-fun m!7778294 () Bool)

(assert (=> b!7058894 m!7778294))

(assert (=> b!7058150 d!2206686))

(declare-fun d!2206688 () Bool)

(assert (=> d!2206688 (= (nullable!7267 (regOne!35680 (h!74602 (exprs!7080 lt!2533926)))) (nullableFct!2783 (regOne!35680 (h!74602 (exprs!7080 lt!2533926)))))))

(declare-fun bs!1878042 () Bool)

(assert (= bs!1878042 d!2206688))

(declare-fun m!7778296 () Bool)

(assert (=> bs!1878042 m!7778296))

(assert (=> b!7058277 d!2206688))

(declare-fun d!2206690 () Bool)

(declare-fun res!2881721 () Bool)

(declare-fun e!4243729 () Bool)

(assert (=> d!2206690 (=> res!2881721 e!4243729)))

(assert (=> d!2206690 (= res!2881721 (is-Nil!68154 (t!382057 (exprs!7080 lt!2533918))))))

(assert (=> d!2206690 (= (forall!16536 (t!382057 (exprs!7080 lt!2533918)) lambda!421195) e!4243729)))

(declare-fun b!7058896 () Bool)

(declare-fun e!4243730 () Bool)

(assert (=> b!7058896 (= e!4243729 e!4243730)))

(declare-fun res!2881722 () Bool)

(assert (=> b!7058896 (=> (not res!2881722) (not e!4243730))))

(assert (=> b!7058896 (= res!2881722 (dynLambda!27681 lambda!421195 (h!74602 (t!382057 (exprs!7080 lt!2533918)))))))

(declare-fun b!7058897 () Bool)

(assert (=> b!7058897 (= e!4243730 (forall!16536 (t!382057 (t!382057 (exprs!7080 lt!2533918))) lambda!421195))))

(assert (= (and d!2206690 (not res!2881721)) b!7058896))

(assert (= (and b!7058896 res!2881722) b!7058897))

(declare-fun b_lambda!269091 () Bool)

(assert (=> (not b_lambda!269091) (not b!7058896)))

(declare-fun m!7778298 () Bool)

(assert (=> b!7058896 m!7778298))

(declare-fun m!7778300 () Bool)

(assert (=> b!7058897 m!7778300))

(assert (=> b!7058191 d!2206690))

(declare-fun bs!1878043 () Bool)

(declare-fun d!2206692 () Bool)

(assert (= bs!1878043 (and d!2206692 d!2206096)))

(declare-fun lambda!421357 () Int)

(assert (=> bs!1878043 (= lambda!421357 lambda!421302)))

(declare-fun bs!1878044 () Bool)

(assert (= bs!1878044 (and d!2206692 d!2206564)))

(assert (=> bs!1878044 (not (= lambda!421357 lambda!421345))))

(declare-fun bs!1878045 () Bool)

(assert (= bs!1878045 (and d!2206692 d!2206206)))

(assert (=> bs!1878045 (= lambda!421357 lambda!421315)))

(declare-fun bs!1878046 () Bool)

(assert (= bs!1878046 (and d!2206692 d!2206128)))

(assert (=> bs!1878046 (= lambda!421357 lambda!421305)))

(declare-fun bs!1878047 () Bool)

(assert (= bs!1878047 (and d!2206692 d!2205874)))

(assert (=> bs!1878047 (not (= lambda!421357 lambda!421268))))

(declare-fun bs!1878048 () Bool)

(assert (= bs!1878048 (and d!2206692 d!2206130)))

(assert (=> bs!1878048 (= lambda!421357 lambda!421306)))

(declare-fun bs!1878049 () Bool)

(assert (= bs!1878049 (and d!2206692 d!2206270)))

(assert (=> bs!1878049 (= lambda!421357 lambda!421319)))

(declare-fun bs!1878050 () Bool)

(assert (= bs!1878050 (and d!2206692 d!2206170)))

(assert (=> bs!1878050 (= lambda!421357 lambda!421312)))

(declare-fun bs!1878051 () Bool)

(assert (= bs!1878051 (and d!2206692 d!2205876)))

(assert (=> bs!1878051 (not (= lambda!421357 lambda!421271))))

(declare-fun bs!1878052 () Bool)

(assert (= bs!1878052 (and d!2206692 d!2206602)))

(assert (=> bs!1878052 (= lambda!421357 lambda!421349)))

(declare-fun bs!1878053 () Bool)

(assert (= bs!1878053 (and d!2206692 d!2206644)))

(assert (=> bs!1878053 (= lambda!421357 lambda!421353)))

(declare-fun bs!1878054 () Bool)

(assert (= bs!1878054 (and d!2206692 d!2206554)))

(assert (=> bs!1878054 (= lambda!421357 lambda!421343)))

(declare-fun bs!1878055 () Bool)

(assert (= bs!1878055 (and d!2206692 d!2206196)))

(assert (=> bs!1878055 (= lambda!421357 lambda!421313)))

(declare-fun bs!1878056 () Bool)

(assert (= bs!1878056 (and d!2206692 d!2206616)))

(assert (=> bs!1878056 (= lambda!421357 lambda!421351)))

(declare-fun bs!1878057 () Bool)

(assert (= bs!1878057 (and d!2206692 d!2206600)))

(assert (=> bs!1878057 (not (= lambda!421357 lambda!421348))))

(declare-fun bs!1878058 () Bool)

(assert (= bs!1878058 (and d!2206692 d!2206560)))

(assert (=> bs!1878058 (= lambda!421357 lambda!421344)))

(declare-fun bs!1878059 () Bool)

(assert (= bs!1878059 (and d!2206692 b!7057676)))

(assert (=> bs!1878059 (not (= lambda!421357 lambda!421193))))

(declare-fun bs!1878060 () Bool)

(assert (= bs!1878060 (and d!2206692 d!2206214)))

(assert (=> bs!1878060 (= lambda!421357 lambda!421316)))

(declare-fun bs!1878061 () Bool)

(assert (= bs!1878061 (and d!2206692 d!2206158)))

(assert (=> bs!1878061 (not (= lambda!421357 lambda!421311))))

(declare-fun bs!1878062 () Bool)

(assert (= bs!1878062 (and d!2206692 d!2206156)))

(assert (=> bs!1878062 (not (= lambda!421357 lambda!421308))))

(assert (=> d!2206692 (= (nullableZipper!2667 (derivationStepZipper!3034 lt!2533929 (head!14368 (t!382058 s!7408)))) (exists!3584 (derivationStepZipper!3034 lt!2533929 (head!14368 (t!382058 s!7408))) lambda!421357))))

(declare-fun bs!1878063 () Bool)

(assert (= bs!1878063 d!2206692))

(assert (=> bs!1878063 m!7776796))

(declare-fun m!7778302 () Bool)

(assert (=> bs!1878063 m!7778302))

(assert (=> b!7058198 d!2206692))

(declare-fun b!7058898 () Bool)

(declare-fun e!4243736 () (Set Context!13160))

(declare-fun call!641383 () (Set Context!13160))

(assert (=> b!7058898 (= e!4243736 call!641383)))

(declare-fun c!1315485 () Bool)

(declare-fun bm!641373 () Bool)

(declare-fun call!641382 () List!68278)

(declare-fun c!1315487 () Bool)

(assert (=> bm!641373 (= call!641382 ($colon$colon!2630 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961))))))) (ite (or c!1315487 c!1315485) (regTwo!35680 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961)))))) (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961))))))))))

(declare-fun b!7058899 () Bool)

(declare-fun e!4243731 () Bool)

(assert (=> b!7058899 (= c!1315487 e!4243731)))

(declare-fun res!2881723 () Bool)

(assert (=> b!7058899 (=> (not res!2881723) (not e!4243731))))

(assert (=> b!7058899 (= res!2881723 (is-Concat!26429 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961)))))))))

(declare-fun e!4243734 () (Set Context!13160))

(declare-fun e!4243735 () (Set Context!13160))

(assert (=> b!7058899 (= e!4243734 e!4243735)))

(declare-fun b!7058900 () Bool)

(assert (=> b!7058900 (= e!4243731 (nullable!7267 (regOne!35680 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961))))))))))

(declare-fun b!7058901 () Bool)

(declare-fun e!4243733 () (Set Context!13160))

(assert (=> b!7058901 (= e!4243735 e!4243733)))

(assert (=> b!7058901 (= c!1315485 (is-Concat!26429 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961)))))))))

(declare-fun b!7058902 () Bool)

(assert (=> b!7058902 (= e!4243736 (as set.empty (Set Context!13160)))))

(declare-fun bm!641374 () Bool)

(declare-fun call!641380 () (Set Context!13160))

(declare-fun call!641379 () (Set Context!13160))

(assert (=> bm!641374 (= call!641380 call!641379)))

(declare-fun b!7058903 () Bool)

(declare-fun call!641381 () (Set Context!13160))

(assert (=> b!7058903 (= e!4243734 (set.union call!641379 call!641381))))

(declare-fun b!7058904 () Bool)

(declare-fun c!1315486 () Bool)

(assert (=> b!7058904 (= c!1315486 (is-Star!17584 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961)))))))))

(assert (=> b!7058904 (= e!4243733 e!4243736)))

(declare-fun bm!641375 () Bool)

(assert (=> bm!641375 (= call!641383 call!641380)))

(declare-fun b!7058905 () Bool)

(declare-fun e!4243732 () (Set Context!13160))

(assert (=> b!7058905 (= e!4243732 (set.insert (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961)))))) (as set.empty (Set Context!13160))))))

(declare-fun bm!641377 () Bool)

(declare-fun c!1315488 () Bool)

(declare-fun call!641378 () List!68278)

(assert (=> bm!641377 (= call!641379 (derivationStepZipperDown!2218 (ite c!1315488 (regOne!35681 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961)))))) (ite c!1315487 (regTwo!35680 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961)))))) (ite c!1315485 (regOne!35680 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961)))))) (reg!17913 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961))))))))) (ite (or c!1315488 c!1315487) (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961)))))) (Context!13161 call!641378)) (h!74603 s!7408)))))

(declare-fun b!7058906 () Bool)

(assert (=> b!7058906 (= e!4243732 e!4243734)))

(assert (=> b!7058906 (= c!1315488 (is-Union!17584 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961)))))))))

(declare-fun bm!641378 () Bool)

(assert (=> bm!641378 (= call!641378 call!641382)))

(declare-fun b!7058907 () Bool)

(assert (=> b!7058907 (= e!4243733 call!641383)))

(declare-fun b!7058908 () Bool)

(assert (=> b!7058908 (= e!4243735 (set.union call!641381 call!641380))))

(declare-fun d!2206694 () Bool)

(declare-fun c!1315484 () Bool)

(assert (=> d!2206694 (= c!1315484 (and (is-ElementMatch!17584 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961)))))) (= (c!1315081 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961)))))) (h!74603 s!7408))))))

(assert (=> d!2206694 (= (derivationStepZipperDown!2218 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961))))) (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961)))))) (h!74603 s!7408)) e!4243732)))

(declare-fun bm!641376 () Bool)

(assert (=> bm!641376 (= call!641381 (derivationStepZipperDown!2218 (ite c!1315488 (regTwo!35681 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961)))))) (regOne!35680 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961))))))) (ite c!1315488 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961)))))) (Context!13161 call!641382)) (h!74603 s!7408)))))

(assert (= (and d!2206694 c!1315484) b!7058905))

(assert (= (and d!2206694 (not c!1315484)) b!7058906))

(assert (= (and b!7058906 c!1315488) b!7058903))

(assert (= (and b!7058906 (not c!1315488)) b!7058899))

(assert (= (and b!7058899 res!2881723) b!7058900))

(assert (= (and b!7058899 c!1315487) b!7058908))

(assert (= (and b!7058899 (not c!1315487)) b!7058901))

(assert (= (and b!7058901 c!1315485) b!7058907))

(assert (= (and b!7058901 (not c!1315485)) b!7058904))

(assert (= (and b!7058904 c!1315486) b!7058898))

(assert (= (and b!7058904 (not c!1315486)) b!7058902))

(assert (= (or b!7058907 b!7058898) bm!641378))

(assert (= (or b!7058907 b!7058898) bm!641375))

(assert (= (or b!7058908 bm!641375) bm!641374))

(assert (= (or b!7058908 bm!641378) bm!641373))

(assert (= (or b!7058903 bm!641374) bm!641377))

(assert (= (or b!7058903 b!7058908) bm!641376))

(declare-fun m!7778304 () Bool)

(assert (=> bm!641377 m!7778304))

(declare-fun m!7778306 () Bool)

(assert (=> bm!641376 m!7778306))

(declare-fun m!7778308 () Bool)

(assert (=> bm!641373 m!7778308))

(declare-fun m!7778310 () Bool)

(assert (=> b!7058905 m!7778310))

(declare-fun m!7778312 () Bool)

(assert (=> b!7058900 m!7778312))

(assert (=> bm!641247 d!2206694))

(declare-fun d!2206696 () Bool)

(declare-fun res!2881724 () Bool)

(declare-fun e!4243737 () Bool)

(assert (=> d!2206696 (=> res!2881724 e!4243737)))

(assert (=> d!2206696 (= res!2881724 (is-Nil!68156 (t!382059 lt!2533923)))))

(assert (=> d!2206696 (= (forall!16537 (t!382059 lt!2533923) lambda!421268) e!4243737)))

(declare-fun b!7058909 () Bool)

(declare-fun e!4243738 () Bool)

(assert (=> b!7058909 (= e!4243737 e!4243738)))

(declare-fun res!2881725 () Bool)

(assert (=> b!7058909 (=> (not res!2881725) (not e!4243738))))

(assert (=> b!7058909 (= res!2881725 (dynLambda!27676 lambda!421268 (h!74604 (t!382059 lt!2533923))))))

(declare-fun b!7058910 () Bool)

(assert (=> b!7058910 (= e!4243738 (forall!16537 (t!382059 (t!382059 lt!2533923)) lambda!421268))))

(assert (= (and d!2206696 (not res!2881724)) b!7058909))

(assert (= (and b!7058909 res!2881725) b!7058910))

(declare-fun b_lambda!269093 () Bool)

(assert (=> (not b_lambda!269093) (not b!7058909)))

(declare-fun m!7778314 () Bool)

(assert (=> b!7058909 m!7778314))

(declare-fun m!7778316 () Bool)

(assert (=> b!7058910 m!7778316))

(assert (=> b!7058157 d!2206696))

(declare-fun b!7058911 () Bool)

(declare-fun e!4243739 () Int)

(declare-fun e!4243740 () Int)

(assert (=> b!7058911 (= e!4243739 e!4243740)))

(declare-fun c!1315489 () Bool)

(assert (=> b!7058911 (= c!1315489 (is-Star!17584 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533918)))))))))

(declare-fun b!7058912 () Bool)

(declare-fun e!4243742 () Int)

(declare-fun e!4243741 () Int)

(assert (=> b!7058912 (= e!4243742 e!4243741)))

(declare-fun c!1315492 () Bool)

(assert (=> b!7058912 (= c!1315492 (is-Concat!26429 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533918)))))))))

(declare-fun b!7058913 () Bool)

(declare-fun c!1315490 () Bool)

(assert (=> b!7058913 (= c!1315490 (is-Union!17584 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533918)))))))))

(assert (=> b!7058913 (= e!4243740 e!4243742)))

(declare-fun bm!641379 () Bool)

(declare-fun call!641386 () Int)

(assert (=> bm!641379 (= call!641386 (regexDepthTotal!316 (ite c!1315489 (reg!17913 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533918)))))) (ite c!1315490 (regTwo!35681 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533918)))))) (regOne!35680 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533918))))))))))))

(declare-fun b!7058914 () Bool)

(assert (=> b!7058914 (= e!4243741 1)))

(declare-fun b!7058915 () Bool)

(declare-fun call!641384 () Int)

(declare-fun call!641385 () Int)

(assert (=> b!7058915 (= e!4243741 (+ 1 call!641384 call!641385))))

(declare-fun d!2206698 () Bool)

(declare-fun lt!2534308 () Int)

(assert (=> d!2206698 (> lt!2534308 0)))

(assert (=> d!2206698 (= lt!2534308 e!4243739)))

(declare-fun c!1315491 () Bool)

(assert (=> d!2206698 (= c!1315491 (is-ElementMatch!17584 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533918)))))))))

(assert (=> d!2206698 (= (regexDepthTotal!316 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533918)))))) lt!2534308)))

(declare-fun b!7058916 () Bool)

(assert (=> b!7058916 (= e!4243742 (+ 1 call!641385 call!641384))))

(declare-fun b!7058917 () Bool)

(assert (=> b!7058917 (= e!4243740 (+ 1 call!641386))))

(declare-fun bm!641380 () Bool)

(assert (=> bm!641380 (= call!641385 (regexDepthTotal!316 (ite c!1315490 (regOne!35681 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533918)))))) (regTwo!35680 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533918)))))))))))

(declare-fun b!7058918 () Bool)

(assert (=> b!7058918 (= e!4243739 1)))

(declare-fun bm!641381 () Bool)

(assert (=> bm!641381 (= call!641384 call!641386)))

(assert (= (and d!2206698 c!1315491) b!7058918))

(assert (= (and d!2206698 (not c!1315491)) b!7058911))

(assert (= (and b!7058911 c!1315489) b!7058917))

(assert (= (and b!7058911 (not c!1315489)) b!7058913))

(assert (= (and b!7058913 c!1315490) b!7058916))

(assert (= (and b!7058913 (not c!1315490)) b!7058912))

(assert (= (and b!7058912 c!1315492) b!7058915))

(assert (= (and b!7058912 (not c!1315492)) b!7058914))

(assert (= (or b!7058916 b!7058915) bm!641381))

(assert (= (or b!7058916 b!7058915) bm!641380))

(assert (= (or b!7058917 bm!641381) bm!641379))

(declare-fun m!7778318 () Bool)

(assert (=> bm!641379 m!7778318))

(declare-fun m!7778320 () Bool)

(assert (=> bm!641380 m!7778320))

(assert (=> b!7058308 d!2206698))

(declare-fun d!2206700 () Bool)

(declare-fun lt!2534309 () Int)

(assert (=> d!2206700 (>= lt!2534309 0)))

(declare-fun e!4243743 () Int)

(assert (=> d!2206700 (= lt!2534309 e!4243743)))

(declare-fun c!1315493 () Bool)

(assert (=> d!2206700 (= c!1315493 (is-Cons!68154 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533918)))))))))))

(assert (=> d!2206700 (= (contextDepthTotal!520 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533918))))))) lt!2534309)))

(declare-fun b!7058919 () Bool)

(assert (=> b!7058919 (= e!4243743 (+ (regexDepthTotal!316 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533918))))))))) (contextDepthTotal!520 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533918))))))))))))))

(declare-fun b!7058920 () Bool)

(assert (=> b!7058920 (= e!4243743 1)))

(assert (= (and d!2206700 c!1315493) b!7058919))

(assert (= (and d!2206700 (not c!1315493)) b!7058920))

(declare-fun m!7778322 () Bool)

(assert (=> b!7058919 m!7778322))

(declare-fun m!7778324 () Bool)

(assert (=> b!7058919 m!7778324))

(assert (=> b!7058308 d!2206700))

(declare-fun d!2206702 () Bool)

(declare-fun c!1315494 () Bool)

(assert (=> d!2206702 (= c!1315494 (isEmpty!39754 (tail!13726 (tail!13726 (t!382058 s!7408)))))))

(declare-fun e!4243744 () Bool)

(assert (=> d!2206702 (= (matchZipper!3124 (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533954 (head!14368 (t!382058 s!7408))) (head!14368 (tail!13726 (t!382058 s!7408)))) (tail!13726 (tail!13726 (t!382058 s!7408)))) e!4243744)))

(declare-fun b!7058921 () Bool)

(assert (=> b!7058921 (= e!4243744 (nullableZipper!2667 (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533954 (head!14368 (t!382058 s!7408))) (head!14368 (tail!13726 (t!382058 s!7408))))))))

(declare-fun b!7058922 () Bool)

(assert (=> b!7058922 (= e!4243744 (matchZipper!3124 (derivationStepZipper!3034 (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533954 (head!14368 (t!382058 s!7408))) (head!14368 (tail!13726 (t!382058 s!7408)))) (head!14368 (tail!13726 (tail!13726 (t!382058 s!7408))))) (tail!13726 (tail!13726 (tail!13726 (t!382058 s!7408))))))))

(assert (= (and d!2206702 c!1315494) b!7058921))

(assert (= (and d!2206702 (not c!1315494)) b!7058922))

(assert (=> d!2206702 m!7777130))

(assert (=> d!2206702 m!7778232))

(assert (=> b!7058921 m!7777128))

(declare-fun m!7778326 () Bool)

(assert (=> b!7058921 m!7778326))

(assert (=> b!7058922 m!7777130))

(assert (=> b!7058922 m!7778236))

(assert (=> b!7058922 m!7777128))

(assert (=> b!7058922 m!7778236))

(declare-fun m!7778328 () Bool)

(assert (=> b!7058922 m!7778328))

(assert (=> b!7058922 m!7777130))

(assert (=> b!7058922 m!7778240))

(assert (=> b!7058922 m!7778328))

(assert (=> b!7058922 m!7778240))

(declare-fun m!7778330 () Bool)

(assert (=> b!7058922 m!7778330))

(assert (=> b!7058104 d!2206702))

(declare-fun bs!1878064 () Bool)

(declare-fun d!2206704 () Bool)

(assert (= bs!1878064 (and d!2206704 d!2205914)))

(declare-fun lambda!421358 () Int)

(assert (=> bs!1878064 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (h!74603 s!7408)) (= lambda!421358 lambda!421276))))

(declare-fun bs!1878065 () Bool)

(assert (= bs!1878065 (and d!2206704 d!2206654)))

(assert (=> bs!1878065 (= lambda!421358 lambda!421354)))

(declare-fun bs!1878066 () Bool)

(assert (= bs!1878066 (and d!2206704 d!2206094)))

(assert (=> bs!1878066 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 (t!382058 s!7408))) (= lambda!421358 lambda!421299))))

(declare-fun bs!1878067 () Bool)

(assert (= bs!1878067 (and d!2206704 d!2206138)))

(assert (=> bs!1878067 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 s!7408)) (= lambda!421358 lambda!421307))))

(declare-fun bs!1878068 () Bool)

(assert (= bs!1878068 (and d!2206704 d!2206614)))

(assert (=> bs!1878068 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 s!7408)) (= lambda!421358 lambda!421350))))

(declare-fun bs!1878069 () Bool)

(assert (= bs!1878069 (and d!2206704 d!2206590)))

(assert (=> bs!1878069 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 (t!382058 s!7408))) (= lambda!421358 lambda!421347))))

(declare-fun bs!1878070 () Bool)

(assert (= bs!1878070 (and d!2206704 d!2206120)))

(assert (=> bs!1878070 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 (t!382058 s!7408))) (= lambda!421358 lambda!421304))))

(declare-fun bs!1878071 () Bool)

(assert (= bs!1878071 (and d!2206704 d!2206056)))

(assert (=> bs!1878071 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 (t!382058 s!7408))) (= lambda!421358 lambda!421298))))

(declare-fun bs!1878072 () Bool)

(assert (= bs!1878072 (and d!2206704 d!2206228)))

(assert (=> bs!1878072 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 s!7408)) (= lambda!421358 lambda!421317))))

(declare-fun bs!1878073 () Bool)

(assert (= bs!1878073 (and d!2206704 d!2206268)))

(assert (=> bs!1878073 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 s!7408)) (= lambda!421358 lambda!421318))))

(declare-fun bs!1878074 () Bool)

(assert (= bs!1878074 (and d!2206704 d!2206100)))

(assert (=> bs!1878074 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 s!7408)) (= lambda!421358 lambda!421303))))

(declare-fun bs!1878075 () Bool)

(assert (= bs!1878075 (and d!2206704 b!7057661)))

(assert (=> bs!1878075 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (h!74603 s!7408)) (= lambda!421358 lambda!421196))))

(declare-fun bs!1878076 () Bool)

(assert (= bs!1878076 (and d!2206704 d!2205882)))

(assert (=> bs!1878076 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (h!74603 s!7408)) (= lambda!421358 lambda!421274))))

(declare-fun bs!1878077 () Bool)

(assert (= bs!1878077 (and d!2206704 d!2206580)))

(assert (=> bs!1878077 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 (tail!13726 s!7408))) (= lambda!421358 lambda!421346))))

(declare-fun bs!1878078 () Bool)

(assert (= bs!1878078 (and d!2206704 d!2206200)))

(assert (=> bs!1878078 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 (t!382058 s!7408))) (= lambda!421358 lambda!421314))))

(assert (=> d!2206704 true))

(assert (=> d!2206704 (= (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533954 (head!14368 (t!382058 s!7408))) (head!14368 (tail!13726 (t!382058 s!7408)))) (flatMap!2510 (derivationStepZipper!3034 lt!2533954 (head!14368 (t!382058 s!7408))) lambda!421358))))

(declare-fun bs!1878079 () Bool)

(assert (= bs!1878079 d!2206704))

(assert (=> bs!1878079 m!7776790))

(declare-fun m!7778332 () Bool)

(assert (=> bs!1878079 m!7778332))

(assert (=> b!7058104 d!2206704))

(assert (=> b!7058104 d!2206656))

(assert (=> b!7058104 d!2206658))

(declare-fun bs!1878080 () Bool)

(declare-fun d!2206706 () Bool)

(assert (= bs!1878080 (and d!2206706 d!2206096)))

(declare-fun lambda!421359 () Int)

(assert (=> bs!1878080 (= lambda!421359 lambda!421302)))

(declare-fun bs!1878081 () Bool)

(assert (= bs!1878081 (and d!2206706 d!2206564)))

(assert (=> bs!1878081 (not (= lambda!421359 lambda!421345))))

(declare-fun bs!1878082 () Bool)

(assert (= bs!1878082 (and d!2206706 d!2206206)))

(assert (=> bs!1878082 (= lambda!421359 lambda!421315)))

(declare-fun bs!1878083 () Bool)

(assert (= bs!1878083 (and d!2206706 d!2206128)))

(assert (=> bs!1878083 (= lambda!421359 lambda!421305)))

(declare-fun bs!1878084 () Bool)

(assert (= bs!1878084 (and d!2206706 d!2205874)))

(assert (=> bs!1878084 (not (= lambda!421359 lambda!421268))))

(declare-fun bs!1878085 () Bool)

(assert (= bs!1878085 (and d!2206706 d!2206130)))

(assert (=> bs!1878085 (= lambda!421359 lambda!421306)))

(declare-fun bs!1878086 () Bool)

(assert (= bs!1878086 (and d!2206706 d!2206270)))

(assert (=> bs!1878086 (= lambda!421359 lambda!421319)))

(declare-fun bs!1878087 () Bool)

(assert (= bs!1878087 (and d!2206706 d!2206170)))

(assert (=> bs!1878087 (= lambda!421359 lambda!421312)))

(declare-fun bs!1878088 () Bool)

(assert (= bs!1878088 (and d!2206706 d!2206602)))

(assert (=> bs!1878088 (= lambda!421359 lambda!421349)))

(declare-fun bs!1878089 () Bool)

(assert (= bs!1878089 (and d!2206706 d!2206644)))

(assert (=> bs!1878089 (= lambda!421359 lambda!421353)))

(declare-fun bs!1878090 () Bool)

(assert (= bs!1878090 (and d!2206706 d!2206554)))

(assert (=> bs!1878090 (= lambda!421359 lambda!421343)))

(declare-fun bs!1878091 () Bool)

(assert (= bs!1878091 (and d!2206706 d!2206196)))

(assert (=> bs!1878091 (= lambda!421359 lambda!421313)))

(declare-fun bs!1878092 () Bool)

(assert (= bs!1878092 (and d!2206706 d!2206616)))

(assert (=> bs!1878092 (= lambda!421359 lambda!421351)))

(declare-fun bs!1878093 () Bool)

(assert (= bs!1878093 (and d!2206706 d!2206600)))

(assert (=> bs!1878093 (not (= lambda!421359 lambda!421348))))

(declare-fun bs!1878094 () Bool)

(assert (= bs!1878094 (and d!2206706 d!2206560)))

(assert (=> bs!1878094 (= lambda!421359 lambda!421344)))

(declare-fun bs!1878095 () Bool)

(assert (= bs!1878095 (and d!2206706 b!7057676)))

(assert (=> bs!1878095 (not (= lambda!421359 lambda!421193))))

(declare-fun bs!1878096 () Bool)

(assert (= bs!1878096 (and d!2206706 d!2206214)))

(assert (=> bs!1878096 (= lambda!421359 lambda!421316)))

(declare-fun bs!1878097 () Bool)

(assert (= bs!1878097 (and d!2206706 d!2206158)))

(assert (=> bs!1878097 (not (= lambda!421359 lambda!421311))))

(declare-fun bs!1878098 () Bool)

(assert (= bs!1878098 (and d!2206706 d!2206156)))

(assert (=> bs!1878098 (not (= lambda!421359 lambda!421308))))

(declare-fun bs!1878099 () Bool)

(assert (= bs!1878099 (and d!2206706 d!2206692)))

(assert (=> bs!1878099 (= lambda!421359 lambda!421357)))

(declare-fun bs!1878100 () Bool)

(assert (= bs!1878100 (and d!2206706 d!2205876)))

(assert (=> bs!1878100 (not (= lambda!421359 lambda!421271))))

(assert (=> d!2206706 (= (nullableZipper!2667 (derivationStepZipper!3034 lt!2533953 (head!14368 s!7408))) (exists!3584 (derivationStepZipper!3034 lt!2533953 (head!14368 s!7408)) lambda!421359))))

(declare-fun bs!1878101 () Bool)

(assert (= bs!1878101 d!2206706))

(assert (=> bs!1878101 m!7776804))

(declare-fun m!7778334 () Bool)

(assert (=> bs!1878101 m!7778334))

(assert (=> b!7058314 d!2206706))

(declare-fun d!2206708 () Bool)

(declare-fun lt!2534310 () Bool)

(assert (=> d!2206708 (= lt!2534310 (set.member lt!2533918 (content!13703 (t!382059 lt!2533936))))))

(declare-fun e!4243746 () Bool)

(assert (=> d!2206708 (= lt!2534310 e!4243746)))

(declare-fun res!2881727 () Bool)

(assert (=> d!2206708 (=> (not res!2881727) (not e!4243746))))

(assert (=> d!2206708 (= res!2881727 (is-Cons!68156 (t!382059 lt!2533936)))))

(assert (=> d!2206708 (= (contains!20486 (t!382059 lt!2533936) lt!2533918) lt!2534310)))

(declare-fun b!7058923 () Bool)

(declare-fun e!4243745 () Bool)

(assert (=> b!7058923 (= e!4243746 e!4243745)))

(declare-fun res!2881726 () Bool)

(assert (=> b!7058923 (=> res!2881726 e!4243745)))

(assert (=> b!7058923 (= res!2881726 (= (h!74604 (t!382059 lt!2533936)) lt!2533918))))

(declare-fun b!7058924 () Bool)

(assert (=> b!7058924 (= e!4243745 (contains!20486 (t!382059 (t!382059 lt!2533936)) lt!2533918))))

(assert (= (and d!2206708 res!2881727) b!7058923))

(assert (= (and b!7058923 (not res!2881726)) b!7058924))

(assert (=> d!2206708 m!7778188))

(declare-fun m!7778336 () Bool)

(assert (=> d!2206708 m!7778336))

(declare-fun m!7778338 () Bool)

(assert (=> b!7058924 m!7778338))

(assert (=> b!7058357 d!2206708))

(declare-fun b!7058925 () Bool)

(declare-fun e!4243751 () Bool)

(declare-fun e!4243748 () Bool)

(assert (=> b!7058925 (= e!4243751 e!4243748)))

(declare-fun res!2881729 () Bool)

(declare-fun call!641387 () Bool)

(assert (=> b!7058925 (= res!2881729 call!641387)))

(assert (=> b!7058925 (=> (not res!2881729) (not e!4243748))))

(declare-fun b!7058926 () Bool)

(declare-fun e!4243750 () Bool)

(assert (=> b!7058926 (= e!4243751 e!4243750)))

(declare-fun res!2881731 () Bool)

(declare-fun call!641388 () Bool)

(assert (=> b!7058926 (= res!2881731 call!641388)))

(assert (=> b!7058926 (=> res!2881731 e!4243750)))

(declare-fun b!7058927 () Bool)

(declare-fun e!4243749 () Bool)

(declare-fun e!4243747 () Bool)

(assert (=> b!7058927 (= e!4243749 e!4243747)))

(declare-fun res!2881728 () Bool)

(assert (=> b!7058927 (=> (not res!2881728) (not e!4243747))))

(assert (=> b!7058927 (= res!2881728 (and (not (is-EmptyLang!17584 (h!74602 (exprs!7080 lt!2533926)))) (not (is-ElementMatch!17584 (h!74602 (exprs!7080 lt!2533926))))))))

(declare-fun b!7058928 () Bool)

(assert (=> b!7058928 (= e!4243748 call!641388)))

(declare-fun bm!641382 () Bool)

(declare-fun c!1315495 () Bool)

(assert (=> bm!641382 (= call!641387 (nullable!7267 (ite c!1315495 (regTwo!35681 (h!74602 (exprs!7080 lt!2533926))) (regOne!35680 (h!74602 (exprs!7080 lt!2533926))))))))

(declare-fun b!7058929 () Bool)

(declare-fun e!4243752 () Bool)

(assert (=> b!7058929 (= e!4243747 e!4243752)))

(declare-fun res!2881730 () Bool)

(assert (=> b!7058929 (=> res!2881730 e!4243752)))

(assert (=> b!7058929 (= res!2881730 (is-Star!17584 (h!74602 (exprs!7080 lt!2533926))))))

(declare-fun b!7058930 () Bool)

(assert (=> b!7058930 (= e!4243752 e!4243751)))

(assert (=> b!7058930 (= c!1315495 (is-Union!17584 (h!74602 (exprs!7080 lt!2533926))))))

(declare-fun bm!641383 () Bool)

(assert (=> bm!641383 (= call!641388 (nullable!7267 (ite c!1315495 (regOne!35681 (h!74602 (exprs!7080 lt!2533926))) (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))))))))

(declare-fun d!2206710 () Bool)

(declare-fun res!2881732 () Bool)

(assert (=> d!2206710 (=> res!2881732 e!4243749)))

(assert (=> d!2206710 (= res!2881732 (is-EmptyExpr!17584 (h!74602 (exprs!7080 lt!2533926))))))

(assert (=> d!2206710 (= (nullableFct!2783 (h!74602 (exprs!7080 lt!2533926))) e!4243749)))

(declare-fun b!7058931 () Bool)

(assert (=> b!7058931 (= e!4243750 call!641387)))

(assert (= (and d!2206710 (not res!2881732)) b!7058927))

(assert (= (and b!7058927 res!2881728) b!7058929))

(assert (= (and b!7058929 (not res!2881730)) b!7058930))

(assert (= (and b!7058930 c!1315495) b!7058926))

(assert (= (and b!7058930 (not c!1315495)) b!7058925))

(assert (= (and b!7058926 (not res!2881731)) b!7058931))

(assert (= (and b!7058925 res!2881729) b!7058928))

(assert (= (or b!7058931 b!7058925) bm!641382))

(assert (= (or b!7058926 b!7058928) bm!641383))

(declare-fun m!7778340 () Bool)

(assert (=> bm!641382 m!7778340))

(declare-fun m!7778342 () Bool)

(assert (=> bm!641383 m!7778342))

(assert (=> d!2206116 d!2206710))

(declare-fun bs!1878102 () Bool)

(declare-fun d!2206712 () Bool)

(assert (= bs!1878102 (and d!2206712 d!2206096)))

(declare-fun lambda!421360 () Int)

(assert (=> bs!1878102 (= lambda!421360 lambda!421302)))

(declare-fun bs!1878103 () Bool)

(assert (= bs!1878103 (and d!2206712 d!2206564)))

(assert (=> bs!1878103 (not (= lambda!421360 lambda!421345))))

(declare-fun bs!1878104 () Bool)

(assert (= bs!1878104 (and d!2206712 d!2206206)))

(assert (=> bs!1878104 (= lambda!421360 lambda!421315)))

(declare-fun bs!1878105 () Bool)

(assert (= bs!1878105 (and d!2206712 d!2206128)))

(assert (=> bs!1878105 (= lambda!421360 lambda!421305)))

(declare-fun bs!1878106 () Bool)

(assert (= bs!1878106 (and d!2206712 d!2205874)))

(assert (=> bs!1878106 (not (= lambda!421360 lambda!421268))))

(declare-fun bs!1878107 () Bool)

(assert (= bs!1878107 (and d!2206712 d!2206130)))

(assert (=> bs!1878107 (= lambda!421360 lambda!421306)))

(declare-fun bs!1878108 () Bool)

(assert (= bs!1878108 (and d!2206712 d!2206270)))

(assert (=> bs!1878108 (= lambda!421360 lambda!421319)))

(declare-fun bs!1878109 () Bool)

(assert (= bs!1878109 (and d!2206712 d!2206170)))

(assert (=> bs!1878109 (= lambda!421360 lambda!421312)))

(declare-fun bs!1878110 () Bool)

(assert (= bs!1878110 (and d!2206712 d!2206706)))

(assert (=> bs!1878110 (= lambda!421360 lambda!421359)))

(declare-fun bs!1878111 () Bool)

(assert (= bs!1878111 (and d!2206712 d!2206602)))

(assert (=> bs!1878111 (= lambda!421360 lambda!421349)))

(declare-fun bs!1878112 () Bool)

(assert (= bs!1878112 (and d!2206712 d!2206644)))

(assert (=> bs!1878112 (= lambda!421360 lambda!421353)))

(declare-fun bs!1878113 () Bool)

(assert (= bs!1878113 (and d!2206712 d!2206554)))

(assert (=> bs!1878113 (= lambda!421360 lambda!421343)))

(declare-fun bs!1878114 () Bool)

(assert (= bs!1878114 (and d!2206712 d!2206196)))

(assert (=> bs!1878114 (= lambda!421360 lambda!421313)))

(declare-fun bs!1878115 () Bool)

(assert (= bs!1878115 (and d!2206712 d!2206616)))

(assert (=> bs!1878115 (= lambda!421360 lambda!421351)))

(declare-fun bs!1878116 () Bool)

(assert (= bs!1878116 (and d!2206712 d!2206600)))

(assert (=> bs!1878116 (not (= lambda!421360 lambda!421348))))

(declare-fun bs!1878117 () Bool)

(assert (= bs!1878117 (and d!2206712 d!2206560)))

(assert (=> bs!1878117 (= lambda!421360 lambda!421344)))

(declare-fun bs!1878118 () Bool)

(assert (= bs!1878118 (and d!2206712 b!7057676)))

(assert (=> bs!1878118 (not (= lambda!421360 lambda!421193))))

(declare-fun bs!1878119 () Bool)

(assert (= bs!1878119 (and d!2206712 d!2206214)))

(assert (=> bs!1878119 (= lambda!421360 lambda!421316)))

(declare-fun bs!1878120 () Bool)

(assert (= bs!1878120 (and d!2206712 d!2206158)))

(assert (=> bs!1878120 (not (= lambda!421360 lambda!421311))))

(declare-fun bs!1878121 () Bool)

(assert (= bs!1878121 (and d!2206712 d!2206156)))

(assert (=> bs!1878121 (not (= lambda!421360 lambda!421308))))

(declare-fun bs!1878122 () Bool)

(assert (= bs!1878122 (and d!2206712 d!2206692)))

(assert (=> bs!1878122 (= lambda!421360 lambda!421357)))

(declare-fun bs!1878123 () Bool)

(assert (= bs!1878123 (and d!2206712 d!2205876)))

(assert (=> bs!1878123 (not (= lambda!421360 lambda!421271))))

(assert (=> d!2206712 (= (nullableZipper!2667 (set.insert lt!2534149 (as set.empty (Set Context!13160)))) (exists!3584 (set.insert lt!2534149 (as set.empty (Set Context!13160))) lambda!421360))))

(declare-fun bs!1878124 () Bool)

(assert (= bs!1878124 d!2206712))

(assert (=> bs!1878124 m!7776838))

(declare-fun m!7778344 () Bool)

(assert (=> bs!1878124 m!7778344))

(assert (=> b!7058209 d!2206712))

(declare-fun d!2206714 () Bool)

(declare-fun res!2881733 () Bool)

(declare-fun e!4243753 () Bool)

(assert (=> d!2206714 (=> res!2881733 e!4243753)))

(assert (=> d!2206714 (= res!2881733 (is-Nil!68154 (++!15667 (exprs!7080 lt!2534154) (exprs!7080 ct2!306))))))

(assert (=> d!2206714 (= (forall!16536 (++!15667 (exprs!7080 lt!2534154) (exprs!7080 ct2!306)) lambda!421195) e!4243753)))

(declare-fun b!7058932 () Bool)

(declare-fun e!4243754 () Bool)

(assert (=> b!7058932 (= e!4243753 e!4243754)))

(declare-fun res!2881734 () Bool)

(assert (=> b!7058932 (=> (not res!2881734) (not e!4243754))))

(assert (=> b!7058932 (= res!2881734 (dynLambda!27681 lambda!421195 (h!74602 (++!15667 (exprs!7080 lt!2534154) (exprs!7080 ct2!306)))))))

(declare-fun b!7058933 () Bool)

(assert (=> b!7058933 (= e!4243754 (forall!16536 (t!382057 (++!15667 (exprs!7080 lt!2534154) (exprs!7080 ct2!306))) lambda!421195))))

(assert (= (and d!2206714 (not res!2881733)) b!7058932))

(assert (= (and b!7058932 res!2881734) b!7058933))

(declare-fun b_lambda!269095 () Bool)

(assert (=> (not b_lambda!269095) (not b!7058932)))

(declare-fun m!7778346 () Bool)

(assert (=> b!7058932 m!7778346))

(declare-fun m!7778348 () Bool)

(assert (=> b!7058933 m!7778348))

(assert (=> d!2206172 d!2206714))

(assert (=> d!2206172 d!2206174))

(declare-fun d!2206716 () Bool)

(assert (=> d!2206716 (forall!16536 (++!15667 (exprs!7080 lt!2534154) (exprs!7080 ct2!306)) lambda!421195)))

(assert (=> d!2206716 true))

(declare-fun _$78!661 () Unit!161841)

(assert (=> d!2206716 (= (choose!53883 (exprs!7080 lt!2534154) (exprs!7080 ct2!306) lambda!421195) _$78!661)))

(declare-fun bs!1878125 () Bool)

(assert (= bs!1878125 d!2206716))

(assert (=> bs!1878125 m!7776848))

(assert (=> bs!1878125 m!7776848))

(assert (=> bs!1878125 m!7777344))

(assert (=> d!2206172 d!2206716))

(declare-fun d!2206718 () Bool)

(declare-fun res!2881735 () Bool)

(declare-fun e!4243755 () Bool)

(assert (=> d!2206718 (=> res!2881735 e!4243755)))

(assert (=> d!2206718 (= res!2881735 (is-Nil!68154 (exprs!7080 lt!2534154)))))

(assert (=> d!2206718 (= (forall!16536 (exprs!7080 lt!2534154) lambda!421195) e!4243755)))

(declare-fun b!7058934 () Bool)

(declare-fun e!4243756 () Bool)

(assert (=> b!7058934 (= e!4243755 e!4243756)))

(declare-fun res!2881736 () Bool)

(assert (=> b!7058934 (=> (not res!2881736) (not e!4243756))))

(assert (=> b!7058934 (= res!2881736 (dynLambda!27681 lambda!421195 (h!74602 (exprs!7080 lt!2534154))))))

(declare-fun b!7058935 () Bool)

(assert (=> b!7058935 (= e!4243756 (forall!16536 (t!382057 (exprs!7080 lt!2534154)) lambda!421195))))

(assert (= (and d!2206718 (not res!2881735)) b!7058934))

(assert (= (and b!7058934 res!2881736) b!7058935))

(declare-fun b_lambda!269097 () Bool)

(assert (=> (not b_lambda!269097) (not b!7058934)))

(declare-fun m!7778350 () Bool)

(assert (=> b!7058934 m!7778350))

(declare-fun m!7778352 () Bool)

(assert (=> b!7058935 m!7778352))

(assert (=> d!2206172 d!2206718))

(declare-fun d!2206720 () Bool)

(declare-fun c!1315496 () Bool)

(assert (=> d!2206720 (= c!1315496 (is-Nil!68154 (t!382057 (exprs!7080 lt!2533918))))))

(declare-fun e!4243757 () (Set Regex!17584))

(assert (=> d!2206720 (= (content!13704 (t!382057 (exprs!7080 lt!2533918))) e!4243757)))

(declare-fun b!7058936 () Bool)

(assert (=> b!7058936 (= e!4243757 (as set.empty (Set Regex!17584)))))

(declare-fun b!7058937 () Bool)

(assert (=> b!7058937 (= e!4243757 (set.union (set.insert (h!74602 (t!382057 (exprs!7080 lt!2533918))) (as set.empty (Set Regex!17584))) (content!13704 (t!382057 (t!382057 (exprs!7080 lt!2533918))))))))

(assert (= (and d!2206720 c!1315496) b!7058936))

(assert (= (and d!2206720 (not c!1315496)) b!7058937))

(declare-fun m!7778354 () Bool)

(assert (=> b!7058937 m!7778354))

(declare-fun m!7778356 () Bool)

(assert (=> b!7058937 m!7778356))

(assert (=> b!7058145 d!2206720))

(declare-fun b!7058938 () Bool)

(declare-fun e!4243758 () Int)

(declare-fun e!4243759 () Int)

(assert (=> b!7058938 (= e!4243758 e!4243759)))

(declare-fun c!1315497 () Bool)

(assert (=> b!7058938 (= c!1315497 (is-Star!17584 (ite c!1315295 (reg!17913 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315296 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))))))

(declare-fun b!7058939 () Bool)

(declare-fun e!4243761 () Int)

(declare-fun e!4243760 () Int)

(assert (=> b!7058939 (= e!4243761 e!4243760)))

(declare-fun c!1315500 () Bool)

(assert (=> b!7058939 (= c!1315500 (is-Concat!26429 (ite c!1315295 (reg!17913 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315296 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))))))

(declare-fun b!7058940 () Bool)

(declare-fun c!1315498 () Bool)

(assert (=> b!7058940 (= c!1315498 (is-Union!17584 (ite c!1315295 (reg!17913 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315296 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))))))

(assert (=> b!7058940 (= e!4243759 e!4243761)))

(declare-fun bm!641384 () Bool)

(declare-fun call!641391 () Int)

(assert (=> bm!641384 (= call!641391 (regexDepthTotal!316 (ite c!1315497 (reg!17913 (ite c!1315295 (reg!17913 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315296 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))) (ite c!1315498 (regTwo!35681 (ite c!1315295 (reg!17913 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315296 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))) (regOne!35680 (ite c!1315295 (reg!17913 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315296 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))))))))))

(declare-fun b!7058941 () Bool)

(assert (=> b!7058941 (= e!4243760 1)))

(declare-fun b!7058942 () Bool)

(declare-fun call!641389 () Int)

(declare-fun call!641390 () Int)

(assert (=> b!7058942 (= e!4243760 (+ 1 call!641389 call!641390))))

(declare-fun d!2206722 () Bool)

(declare-fun lt!2534311 () Int)

(assert (=> d!2206722 (> lt!2534311 0)))

(assert (=> d!2206722 (= lt!2534311 e!4243758)))

(declare-fun c!1315499 () Bool)

(assert (=> d!2206722 (= c!1315499 (is-ElementMatch!17584 (ite c!1315295 (reg!17913 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315296 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))))))

(assert (=> d!2206722 (= (regexDepthTotal!316 (ite c!1315295 (reg!17913 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315296 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))) lt!2534311)))

(declare-fun b!7058943 () Bool)

(assert (=> b!7058943 (= e!4243761 (+ 1 call!641390 call!641389))))

(declare-fun b!7058944 () Bool)

(assert (=> b!7058944 (= e!4243759 (+ 1 call!641391))))

(declare-fun bm!641385 () Bool)

(assert (=> bm!641385 (= call!641390 (regexDepthTotal!316 (ite c!1315498 (regOne!35681 (ite c!1315295 (reg!17913 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315296 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))) (regTwo!35680 (ite c!1315295 (reg!17913 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315296 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))))))))

(declare-fun b!7058945 () Bool)

(assert (=> b!7058945 (= e!4243758 1)))

(declare-fun bm!641386 () Bool)

(assert (=> bm!641386 (= call!641389 call!641391)))

(assert (= (and d!2206722 c!1315499) b!7058945))

(assert (= (and d!2206722 (not c!1315499)) b!7058938))

(assert (= (and b!7058938 c!1315497) b!7058944))

(assert (= (and b!7058938 (not c!1315497)) b!7058940))

(assert (= (and b!7058940 c!1315498) b!7058943))

(assert (= (and b!7058940 (not c!1315498)) b!7058939))

(assert (= (and b!7058939 c!1315500) b!7058942))

(assert (= (and b!7058939 (not c!1315500)) b!7058941))

(assert (= (or b!7058943 b!7058942) bm!641386))

(assert (= (or b!7058943 b!7058942) bm!641385))

(assert (= (or b!7058944 bm!641386) bm!641384))

(declare-fun m!7778358 () Bool)

(assert (=> bm!641384 m!7778358))

(declare-fun m!7778360 () Bool)

(assert (=> bm!641385 m!7778360))

(assert (=> bm!641268 d!2206722))

(declare-fun b!7058946 () Bool)

(declare-fun e!4243767 () (Set Context!13160))

(declare-fun call!641397 () (Set Context!13160))

(assert (=> b!7058946 (= e!4243767 call!641397)))

(declare-fun c!1315504 () Bool)

(declare-fun c!1315502 () Bool)

(declare-fun call!641396 () List!68278)

(declare-fun bm!641387 () Bool)

(assert (=> bm!641387 (= call!641396 ($colon$colon!2630 (exprs!7080 (ite (or c!1315250 c!1315249) (ite c!1315151 lt!2533961 (Context!13161 call!641205)) (Context!13161 call!641246))) (ite (or c!1315504 c!1315502) (regTwo!35680 (ite c!1315250 (regOne!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315249 (regTwo!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315247 (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (reg!17913 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))))))) (ite c!1315250 (regOne!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315249 (regTwo!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315247 (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (reg!17913 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))))))))))

(declare-fun b!7058947 () Bool)

(declare-fun e!4243762 () Bool)

(assert (=> b!7058947 (= c!1315504 e!4243762)))

(declare-fun res!2881737 () Bool)

(assert (=> b!7058947 (=> (not res!2881737) (not e!4243762))))

(assert (=> b!7058947 (= res!2881737 (is-Concat!26429 (ite c!1315250 (regOne!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315249 (regTwo!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315247 (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (reg!17913 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))))))))))

(declare-fun e!4243765 () (Set Context!13160))

(declare-fun e!4243766 () (Set Context!13160))

(assert (=> b!7058947 (= e!4243765 e!4243766)))

(declare-fun b!7058948 () Bool)

(assert (=> b!7058948 (= e!4243762 (nullable!7267 (regOne!35680 (ite c!1315250 (regOne!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315249 (regTwo!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315247 (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (reg!17913 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))))))))))

(declare-fun b!7058949 () Bool)

(declare-fun e!4243764 () (Set Context!13160))

(assert (=> b!7058949 (= e!4243766 e!4243764)))

(assert (=> b!7058949 (= c!1315502 (is-Concat!26429 (ite c!1315250 (regOne!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315249 (regTwo!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315247 (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (reg!17913 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))))))))))

(declare-fun b!7058950 () Bool)

(assert (=> b!7058950 (= e!4243767 (as set.empty (Set Context!13160)))))

(declare-fun bm!641388 () Bool)

(declare-fun call!641394 () (Set Context!13160))

(declare-fun call!641393 () (Set Context!13160))

(assert (=> bm!641388 (= call!641394 call!641393)))

(declare-fun b!7058951 () Bool)

(declare-fun call!641395 () (Set Context!13160))

(assert (=> b!7058951 (= e!4243765 (set.union call!641393 call!641395))))

(declare-fun c!1315503 () Bool)

(declare-fun b!7058952 () Bool)

(assert (=> b!7058952 (= c!1315503 (is-Star!17584 (ite c!1315250 (regOne!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315249 (regTwo!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315247 (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (reg!17913 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))))))))))

(assert (=> b!7058952 (= e!4243764 e!4243767)))

(declare-fun bm!641389 () Bool)

(assert (=> bm!641389 (= call!641397 call!641394)))

(declare-fun b!7058953 () Bool)

(declare-fun e!4243763 () (Set Context!13160))

(assert (=> b!7058953 (= e!4243763 (set.insert (ite (or c!1315250 c!1315249) (ite c!1315151 lt!2533961 (Context!13161 call!641205)) (Context!13161 call!641246)) (as set.empty (Set Context!13160))))))

(declare-fun call!641392 () List!68278)

(declare-fun c!1315505 () Bool)

(declare-fun bm!641391 () Bool)

(assert (=> bm!641391 (= call!641393 (derivationStepZipperDown!2218 (ite c!1315505 (regOne!35681 (ite c!1315250 (regOne!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315249 (regTwo!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315247 (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (reg!17913 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))))))) (ite c!1315504 (regTwo!35680 (ite c!1315250 (regOne!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315249 (regTwo!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315247 (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (reg!17913 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))))))) (ite c!1315502 (regOne!35680 (ite c!1315250 (regOne!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315249 (regTwo!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315247 (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (reg!17913 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))))))) (reg!17913 (ite c!1315250 (regOne!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315249 (regTwo!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315247 (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (reg!17913 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))))))))) (ite (or c!1315505 c!1315504) (ite (or c!1315250 c!1315249) (ite c!1315151 lt!2533961 (Context!13161 call!641205)) (Context!13161 call!641246)) (Context!13161 call!641392)) (h!74603 s!7408)))))

(declare-fun b!7058954 () Bool)

(assert (=> b!7058954 (= e!4243763 e!4243765)))

(assert (=> b!7058954 (= c!1315505 (is-Union!17584 (ite c!1315250 (regOne!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315249 (regTwo!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315247 (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (reg!17913 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))))))))))

(declare-fun bm!641392 () Bool)

(assert (=> bm!641392 (= call!641392 call!641396)))

(declare-fun b!7058955 () Bool)

(assert (=> b!7058955 (= e!4243764 call!641397)))

(declare-fun b!7058956 () Bool)

(assert (=> b!7058956 (= e!4243766 (set.union call!641395 call!641394))))

(declare-fun d!2206724 () Bool)

(declare-fun c!1315501 () Bool)

(assert (=> d!2206724 (= c!1315501 (and (is-ElementMatch!17584 (ite c!1315250 (regOne!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315249 (regTwo!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315247 (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (reg!17913 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))))))) (= (c!1315081 (ite c!1315250 (regOne!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315249 (regTwo!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315247 (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (reg!17913 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))))))) (h!74603 s!7408))))))

(assert (=> d!2206724 (= (derivationStepZipperDown!2218 (ite c!1315250 (regOne!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315249 (regTwo!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315247 (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (reg!17913 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))))) (ite (or c!1315250 c!1315249) (ite c!1315151 lt!2533961 (Context!13161 call!641205)) (Context!13161 call!641246)) (h!74603 s!7408)) e!4243763)))

(declare-fun bm!641390 () Bool)

(assert (=> bm!641390 (= call!641395 (derivationStepZipperDown!2218 (ite c!1315505 (regTwo!35681 (ite c!1315250 (regOne!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315249 (regTwo!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315247 (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (reg!17913 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))))))) (regOne!35680 (ite c!1315250 (regOne!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315249 (regTwo!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315247 (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (reg!17913 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))))))) (ite c!1315505 (ite (or c!1315250 c!1315249) (ite c!1315151 lt!2533961 (Context!13161 call!641205)) (Context!13161 call!641246)) (Context!13161 call!641396)) (h!74603 s!7408)))))

(assert (= (and d!2206724 c!1315501) b!7058953))

(assert (= (and d!2206724 (not c!1315501)) b!7058954))

(assert (= (and b!7058954 c!1315505) b!7058951))

(assert (= (and b!7058954 (not c!1315505)) b!7058947))

(assert (= (and b!7058947 res!2881737) b!7058948))

(assert (= (and b!7058947 c!1315504) b!7058956))

(assert (= (and b!7058947 (not c!1315504)) b!7058949))

(assert (= (and b!7058949 c!1315502) b!7058955))

(assert (= (and b!7058949 (not c!1315502)) b!7058952))

(assert (= (and b!7058952 c!1315503) b!7058946))

(assert (= (and b!7058952 (not c!1315503)) b!7058950))

(assert (= (or b!7058955 b!7058946) bm!641392))

(assert (= (or b!7058955 b!7058946) bm!641389))

(assert (= (or b!7058956 bm!641389) bm!641388))

(assert (= (or b!7058956 bm!641392) bm!641387))

(assert (= (or b!7058951 bm!641388) bm!641391))

(assert (= (or b!7058951 b!7058956) bm!641390))

(declare-fun m!7778362 () Bool)

(assert (=> bm!641391 m!7778362))

(declare-fun m!7778364 () Bool)

(assert (=> bm!641390 m!7778364))

(declare-fun m!7778366 () Bool)

(assert (=> bm!641387 m!7778366))

(declare-fun m!7778368 () Bool)

(assert (=> b!7058953 m!7778368))

(declare-fun m!7778370 () Bool)

(assert (=> b!7058948 m!7778370))

(assert (=> bm!641245 d!2206724))

(declare-fun b!7058957 () Bool)

(declare-fun e!4243768 () List!68278)

(assert (=> b!7058957 (= e!4243768 (exprs!7080 ct2!306))))

(declare-fun b!7058959 () Bool)

(declare-fun res!2881738 () Bool)

(declare-fun e!4243769 () Bool)

(assert (=> b!7058959 (=> (not res!2881738) (not e!4243769))))

(declare-fun lt!2534312 () List!68278)

(assert (=> b!7058959 (= res!2881738 (= (size!41161 lt!2534312) (+ (size!41161 (t!382057 (exprs!7080 lt!2533926))) (size!41161 (exprs!7080 ct2!306)))))))

(declare-fun b!7058958 () Bool)

(assert (=> b!7058958 (= e!4243768 (Cons!68154 (h!74602 (t!382057 (exprs!7080 lt!2533926))) (++!15667 (t!382057 (t!382057 (exprs!7080 lt!2533926))) (exprs!7080 ct2!306))))))

(declare-fun d!2206726 () Bool)

(assert (=> d!2206726 e!4243769))

(declare-fun res!2881739 () Bool)

(assert (=> d!2206726 (=> (not res!2881739) (not e!4243769))))

(assert (=> d!2206726 (= res!2881739 (= (content!13704 lt!2534312) (set.union (content!13704 (t!382057 (exprs!7080 lt!2533926))) (content!13704 (exprs!7080 ct2!306)))))))

(assert (=> d!2206726 (= lt!2534312 e!4243768)))

(declare-fun c!1315506 () Bool)

(assert (=> d!2206726 (= c!1315506 (is-Nil!68154 (t!382057 (exprs!7080 lt!2533926))))))

(assert (=> d!2206726 (= (++!15667 (t!382057 (exprs!7080 lt!2533926)) (exprs!7080 ct2!306)) lt!2534312)))

(declare-fun b!7058960 () Bool)

(assert (=> b!7058960 (= e!4243769 (or (not (= (exprs!7080 ct2!306) Nil!68154)) (= lt!2534312 (t!382057 (exprs!7080 lt!2533926)))))))

(assert (= (and d!2206726 c!1315506) b!7058957))

(assert (= (and d!2206726 (not c!1315506)) b!7058958))

(assert (= (and d!2206726 res!2881739) b!7058959))

(assert (= (and b!7058959 res!2881738) b!7058960))

(declare-fun m!7778372 () Bool)

(assert (=> b!7058959 m!7778372))

(assert (=> b!7058959 m!7778022))

(assert (=> b!7058959 m!7776648))

(declare-fun m!7778374 () Bool)

(assert (=> b!7058958 m!7778374))

(declare-fun m!7778376 () Bool)

(assert (=> d!2206726 m!7778376))

(assert (=> d!2206726 m!7778204))

(assert (=> d!2206726 m!7776656))

(assert (=> b!7058311 d!2206726))

(declare-fun d!2206728 () Bool)

(assert (=> d!2206728 (= (nullable!7267 (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))) (nullableFct!2783 (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))))))

(declare-fun bs!1878126 () Bool)

(assert (= bs!1878126 d!2206728))

(declare-fun m!7778378 () Bool)

(assert (=> bs!1878126 m!7778378))

(assert (=> b!7058171 d!2206728))

(declare-fun b!7058961 () Bool)

(declare-fun res!2881744 () Bool)

(declare-fun e!4243776 () Bool)

(assert (=> b!7058961 (=> (not res!2881744) (not e!4243776))))

(declare-fun call!641398 () Bool)

(assert (=> b!7058961 (= res!2881744 call!641398)))

(declare-fun e!4243775 () Bool)

(assert (=> b!7058961 (= e!4243775 e!4243776)))

(declare-fun b!7058962 () Bool)

(declare-fun e!4243773 () Bool)

(declare-fun call!641400 () Bool)

(assert (=> b!7058962 (= e!4243773 call!641400)))

(declare-fun bm!641393 () Bool)

(assert (=> bm!641393 (= call!641398 call!641400)))

(declare-fun b!7058963 () Bool)

(declare-fun res!2881740 () Bool)

(declare-fun e!4243771 () Bool)

(assert (=> b!7058963 (=> res!2881740 e!4243771)))

(assert (=> b!7058963 (= res!2881740 (not (is-Concat!26429 (h!74602 lt!2533935))))))

(assert (=> b!7058963 (= e!4243775 e!4243771)))

(declare-fun b!7058964 () Bool)

(declare-fun e!4243774 () Bool)

(declare-fun e!4243770 () Bool)

(assert (=> b!7058964 (= e!4243774 e!4243770)))

(declare-fun c!1315508 () Bool)

(assert (=> b!7058964 (= c!1315508 (is-Star!17584 (h!74602 lt!2533935)))))

(declare-fun b!7058965 () Bool)

(declare-fun e!4243772 () Bool)

(assert (=> b!7058965 (= e!4243771 e!4243772)))

(declare-fun res!2881741 () Bool)

(assert (=> b!7058965 (=> (not res!2881741) (not e!4243772))))

(assert (=> b!7058965 (= res!2881741 call!641398)))

(declare-fun b!7058966 () Bool)

(assert (=> b!7058966 (= e!4243770 e!4243773)))

(declare-fun res!2881743 () Bool)

(assert (=> b!7058966 (= res!2881743 (not (nullable!7267 (reg!17913 (h!74602 lt!2533935)))))))

(assert (=> b!7058966 (=> (not res!2881743) (not e!4243773))))

(declare-fun b!7058967 () Bool)

(declare-fun call!641399 () Bool)

(assert (=> b!7058967 (= e!4243772 call!641399)))

(declare-fun bm!641394 () Bool)

(declare-fun c!1315507 () Bool)

(assert (=> bm!641394 (= call!641399 (validRegex!8960 (ite c!1315507 (regTwo!35681 (h!74602 lt!2533935)) (regTwo!35680 (h!74602 lt!2533935)))))))

(declare-fun d!2206730 () Bool)

(declare-fun res!2881742 () Bool)

(assert (=> d!2206730 (=> res!2881742 e!4243774)))

(assert (=> d!2206730 (= res!2881742 (is-ElementMatch!17584 (h!74602 lt!2533935)))))

(assert (=> d!2206730 (= (validRegex!8960 (h!74602 lt!2533935)) e!4243774)))

(declare-fun b!7058968 () Bool)

(assert (=> b!7058968 (= e!4243776 call!641399)))

(declare-fun b!7058969 () Bool)

(assert (=> b!7058969 (= e!4243770 e!4243775)))

(assert (=> b!7058969 (= c!1315507 (is-Union!17584 (h!74602 lt!2533935)))))

(declare-fun bm!641395 () Bool)

(assert (=> bm!641395 (= call!641400 (validRegex!8960 (ite c!1315508 (reg!17913 (h!74602 lt!2533935)) (ite c!1315507 (regOne!35681 (h!74602 lt!2533935)) (regOne!35680 (h!74602 lt!2533935))))))))

(assert (= (and d!2206730 (not res!2881742)) b!7058964))

(assert (= (and b!7058964 c!1315508) b!7058966))

(assert (= (and b!7058964 (not c!1315508)) b!7058969))

(assert (= (and b!7058966 res!2881743) b!7058962))

(assert (= (and b!7058969 c!1315507) b!7058961))

(assert (= (and b!7058969 (not c!1315507)) b!7058963))

(assert (= (and b!7058961 res!2881744) b!7058968))

(assert (= (and b!7058963 (not res!2881740)) b!7058965))

(assert (= (and b!7058965 res!2881741) b!7058967))

(assert (= (or b!7058968 b!7058967) bm!641394))

(assert (= (or b!7058961 b!7058965) bm!641393))

(assert (= (or b!7058962 bm!641393) bm!641395))

(declare-fun m!7778380 () Bool)

(assert (=> b!7058966 m!7778380))

(declare-fun m!7778382 () Bool)

(assert (=> bm!641394 m!7778382))

(declare-fun m!7778384 () Bool)

(assert (=> bm!641395 m!7778384))

(assert (=> bs!1877650 d!2206730))

(declare-fun b!7058970 () Bool)

(declare-fun e!4243782 () (Set Context!13160))

(declare-fun call!641406 () (Set Context!13160))

(assert (=> b!7058970 (= e!4243782 call!641406)))

(declare-fun c!1315510 () Bool)

(declare-fun call!641405 () List!68278)

(declare-fun c!1315512 () Bool)

(declare-fun bm!641396 () Bool)

(assert (=> bm!641396 (= call!641405 ($colon$colon!2630 (exprs!7080 (ite c!1315288 (Context!13161 (t!382057 (exprs!7080 lt!2533926))) (Context!13161 call!641269))) (ite (or c!1315512 c!1315510) (regTwo!35680 (ite c!1315288 (regTwo!35681 (h!74602 (exprs!7080 lt!2533926))) (regOne!35680 (h!74602 (exprs!7080 lt!2533926))))) (ite c!1315288 (regTwo!35681 (h!74602 (exprs!7080 lt!2533926))) (regOne!35680 (h!74602 (exprs!7080 lt!2533926)))))))))

(declare-fun b!7058971 () Bool)

(declare-fun e!4243777 () Bool)

(assert (=> b!7058971 (= c!1315512 e!4243777)))

(declare-fun res!2881745 () Bool)

(assert (=> b!7058971 (=> (not res!2881745) (not e!4243777))))

(assert (=> b!7058971 (= res!2881745 (is-Concat!26429 (ite c!1315288 (regTwo!35681 (h!74602 (exprs!7080 lt!2533926))) (regOne!35680 (h!74602 (exprs!7080 lt!2533926))))))))

(declare-fun e!4243780 () (Set Context!13160))

(declare-fun e!4243781 () (Set Context!13160))

(assert (=> b!7058971 (= e!4243780 e!4243781)))

(declare-fun b!7058972 () Bool)

(assert (=> b!7058972 (= e!4243777 (nullable!7267 (regOne!35680 (ite c!1315288 (regTwo!35681 (h!74602 (exprs!7080 lt!2533926))) (regOne!35680 (h!74602 (exprs!7080 lt!2533926)))))))))

(declare-fun b!7058973 () Bool)

(declare-fun e!4243779 () (Set Context!13160))

(assert (=> b!7058973 (= e!4243781 e!4243779)))

(assert (=> b!7058973 (= c!1315510 (is-Concat!26429 (ite c!1315288 (regTwo!35681 (h!74602 (exprs!7080 lt!2533926))) (regOne!35680 (h!74602 (exprs!7080 lt!2533926))))))))

(declare-fun b!7058974 () Bool)

(assert (=> b!7058974 (= e!4243782 (as set.empty (Set Context!13160)))))

(declare-fun bm!641397 () Bool)

(declare-fun call!641403 () (Set Context!13160))

(declare-fun call!641402 () (Set Context!13160))

(assert (=> bm!641397 (= call!641403 call!641402)))

(declare-fun b!7058975 () Bool)

(declare-fun call!641404 () (Set Context!13160))

(assert (=> b!7058975 (= e!4243780 (set.union call!641402 call!641404))))

(declare-fun b!7058976 () Bool)

(declare-fun c!1315511 () Bool)

(assert (=> b!7058976 (= c!1315511 (is-Star!17584 (ite c!1315288 (regTwo!35681 (h!74602 (exprs!7080 lt!2533926))) (regOne!35680 (h!74602 (exprs!7080 lt!2533926))))))))

(assert (=> b!7058976 (= e!4243779 e!4243782)))

(declare-fun bm!641398 () Bool)

(assert (=> bm!641398 (= call!641406 call!641403)))

(declare-fun e!4243778 () (Set Context!13160))

(declare-fun b!7058977 () Bool)

(assert (=> b!7058977 (= e!4243778 (set.insert (ite c!1315288 (Context!13161 (t!382057 (exprs!7080 lt!2533926))) (Context!13161 call!641269)) (as set.empty (Set Context!13160))))))

(declare-fun bm!641400 () Bool)

(declare-fun c!1315513 () Bool)

(declare-fun call!641401 () List!68278)

(assert (=> bm!641400 (= call!641402 (derivationStepZipperDown!2218 (ite c!1315513 (regOne!35681 (ite c!1315288 (regTwo!35681 (h!74602 (exprs!7080 lt!2533926))) (regOne!35680 (h!74602 (exprs!7080 lt!2533926))))) (ite c!1315512 (regTwo!35680 (ite c!1315288 (regTwo!35681 (h!74602 (exprs!7080 lt!2533926))) (regOne!35680 (h!74602 (exprs!7080 lt!2533926))))) (ite c!1315510 (regOne!35680 (ite c!1315288 (regTwo!35681 (h!74602 (exprs!7080 lt!2533926))) (regOne!35680 (h!74602 (exprs!7080 lt!2533926))))) (reg!17913 (ite c!1315288 (regTwo!35681 (h!74602 (exprs!7080 lt!2533926))) (regOne!35680 (h!74602 (exprs!7080 lt!2533926)))))))) (ite (or c!1315513 c!1315512) (ite c!1315288 (Context!13161 (t!382057 (exprs!7080 lt!2533926))) (Context!13161 call!641269)) (Context!13161 call!641401)) (h!74603 s!7408)))))

(declare-fun b!7058978 () Bool)

(assert (=> b!7058978 (= e!4243778 e!4243780)))

(assert (=> b!7058978 (= c!1315513 (is-Union!17584 (ite c!1315288 (regTwo!35681 (h!74602 (exprs!7080 lt!2533926))) (regOne!35680 (h!74602 (exprs!7080 lt!2533926))))))))

(declare-fun bm!641401 () Bool)

(assert (=> bm!641401 (= call!641401 call!641405)))

(declare-fun b!7058979 () Bool)

(assert (=> b!7058979 (= e!4243779 call!641406)))

(declare-fun b!7058980 () Bool)

(assert (=> b!7058980 (= e!4243781 (set.union call!641404 call!641403))))

(declare-fun c!1315509 () Bool)

(declare-fun d!2206732 () Bool)

(assert (=> d!2206732 (= c!1315509 (and (is-ElementMatch!17584 (ite c!1315288 (regTwo!35681 (h!74602 (exprs!7080 lt!2533926))) (regOne!35680 (h!74602 (exprs!7080 lt!2533926))))) (= (c!1315081 (ite c!1315288 (regTwo!35681 (h!74602 (exprs!7080 lt!2533926))) (regOne!35680 (h!74602 (exprs!7080 lt!2533926))))) (h!74603 s!7408))))))

(assert (=> d!2206732 (= (derivationStepZipperDown!2218 (ite c!1315288 (regTwo!35681 (h!74602 (exprs!7080 lt!2533926))) (regOne!35680 (h!74602 (exprs!7080 lt!2533926)))) (ite c!1315288 (Context!13161 (t!382057 (exprs!7080 lt!2533926))) (Context!13161 call!641269)) (h!74603 s!7408)) e!4243778)))

(declare-fun bm!641399 () Bool)

(assert (=> bm!641399 (= call!641404 (derivationStepZipperDown!2218 (ite c!1315513 (regTwo!35681 (ite c!1315288 (regTwo!35681 (h!74602 (exprs!7080 lt!2533926))) (regOne!35680 (h!74602 (exprs!7080 lt!2533926))))) (regOne!35680 (ite c!1315288 (regTwo!35681 (h!74602 (exprs!7080 lt!2533926))) (regOne!35680 (h!74602 (exprs!7080 lt!2533926)))))) (ite c!1315513 (ite c!1315288 (Context!13161 (t!382057 (exprs!7080 lt!2533926))) (Context!13161 call!641269)) (Context!13161 call!641405)) (h!74603 s!7408)))))

(assert (= (and d!2206732 c!1315509) b!7058977))

(assert (= (and d!2206732 (not c!1315509)) b!7058978))

(assert (= (and b!7058978 c!1315513) b!7058975))

(assert (= (and b!7058978 (not c!1315513)) b!7058971))

(assert (= (and b!7058971 res!2881745) b!7058972))

(assert (= (and b!7058971 c!1315512) b!7058980))

(assert (= (and b!7058971 (not c!1315512)) b!7058973))

(assert (= (and b!7058973 c!1315510) b!7058979))

(assert (= (and b!7058973 (not c!1315510)) b!7058976))

(assert (= (and b!7058976 c!1315511) b!7058970))

(assert (= (and b!7058976 (not c!1315511)) b!7058974))

(assert (= (or b!7058979 b!7058970) bm!641401))

(assert (= (or b!7058979 b!7058970) bm!641398))

(assert (= (or b!7058980 bm!641398) bm!641397))

(assert (= (or b!7058980 bm!641401) bm!641396))

(assert (= (or b!7058975 bm!641397) bm!641400))

(assert (= (or b!7058975 b!7058980) bm!641399))

(declare-fun m!7778386 () Bool)

(assert (=> bm!641400 m!7778386))

(declare-fun m!7778388 () Bool)

(assert (=> bm!641399 m!7778388))

(declare-fun m!7778390 () Bool)

(assert (=> bm!641396 m!7778390))

(declare-fun m!7778392 () Bool)

(assert (=> b!7058977 m!7778392))

(declare-fun m!7778394 () Bool)

(assert (=> b!7058972 m!7778394))

(assert (=> bm!641263 d!2206732))

(declare-fun bs!1878127 () Bool)

(declare-fun d!2206734 () Bool)

(assert (= bs!1878127 (and d!2206734 d!2206048)))

(declare-fun lambda!421361 () Int)

(assert (=> bs!1878127 (= lambda!421361 lambda!421297)))

(declare-fun bs!1878128 () Bool)

(assert (= bs!1878128 (and d!2206734 b!7057679)))

(assert (=> bs!1878128 (= lambda!421361 lambda!421195)))

(declare-fun bs!1878129 () Bool)

(assert (= bs!1878129 (and d!2206734 d!2205902)))

(assert (=> bs!1878129 (= lambda!421361 lambda!421275)))

(declare-fun bs!1878130 () Bool)

(assert (= bs!1878130 (and d!2206734 d!2205830)))

(assert (=> bs!1878130 (= lambda!421361 lambda!421264)))

(declare-fun bs!1878131 () Bool)

(assert (= bs!1878131 (and d!2206734 d!2206672)))

(assert (=> bs!1878131 (= lambda!421361 lambda!421356)))

(declare-fun bs!1878132 () Bool)

(assert (= bs!1878132 (and d!2206734 d!2206660)))

(assert (=> bs!1878132 (= lambda!421361 lambda!421355)))

(declare-fun bs!1878133 () Bool)

(assert (= bs!1878133 (and d!2206734 d!2206632)))

(assert (=> bs!1878133 (= lambda!421361 lambda!421352)))

(assert (=> d!2206734 (= (inv!86820 a!13517) (forall!16536 (exprs!7080 a!13517) lambda!421361))))

(declare-fun bs!1878134 () Bool)

(assert (= bs!1878134 d!2206734))

(declare-fun m!7778396 () Bool)

(assert (=> bs!1878134 m!7778396))

(assert (=> d!2206186 d!2206734))

(declare-fun b!7058981 () Bool)

(declare-fun e!4243787 () Bool)

(declare-fun e!4243784 () Bool)

(assert (=> b!7058981 (= e!4243787 e!4243784)))

(declare-fun res!2881747 () Bool)

(declare-fun call!641407 () Bool)

(assert (=> b!7058981 (= res!2881747 call!641407)))

(assert (=> b!7058981 (=> (not res!2881747) (not e!4243784))))

(declare-fun b!7058982 () Bool)

(declare-fun e!4243786 () Bool)

(assert (=> b!7058982 (= e!4243787 e!4243786)))

(declare-fun res!2881749 () Bool)

(declare-fun call!641408 () Bool)

(assert (=> b!7058982 (= res!2881749 call!641408)))

(assert (=> b!7058982 (=> res!2881749 e!4243786)))

(declare-fun b!7058983 () Bool)

(declare-fun e!4243785 () Bool)

(declare-fun e!4243783 () Bool)

(assert (=> b!7058983 (= e!4243785 e!4243783)))

(declare-fun res!2881746 () Bool)

(assert (=> b!7058983 (=> (not res!2881746) (not e!4243783))))

(assert (=> b!7058983 (= res!2881746 (and (not (is-EmptyLang!17584 (h!74602 (exprs!7080 lt!2533928)))) (not (is-ElementMatch!17584 (h!74602 (exprs!7080 lt!2533928))))))))

(declare-fun b!7058984 () Bool)

(assert (=> b!7058984 (= e!4243784 call!641408)))

(declare-fun bm!641402 () Bool)

(declare-fun c!1315514 () Bool)

(assert (=> bm!641402 (= call!641407 (nullable!7267 (ite c!1315514 (regTwo!35681 (h!74602 (exprs!7080 lt!2533928))) (regOne!35680 (h!74602 (exprs!7080 lt!2533928))))))))

(declare-fun b!7058985 () Bool)

(declare-fun e!4243788 () Bool)

(assert (=> b!7058985 (= e!4243783 e!4243788)))

(declare-fun res!2881748 () Bool)

(assert (=> b!7058985 (=> res!2881748 e!4243788)))

(assert (=> b!7058985 (= res!2881748 (is-Star!17584 (h!74602 (exprs!7080 lt!2533928))))))

(declare-fun b!7058986 () Bool)

(assert (=> b!7058986 (= e!4243788 e!4243787)))

(assert (=> b!7058986 (= c!1315514 (is-Union!17584 (h!74602 (exprs!7080 lt!2533928))))))

(declare-fun bm!641403 () Bool)

(assert (=> bm!641403 (= call!641408 (nullable!7267 (ite c!1315514 (regOne!35681 (h!74602 (exprs!7080 lt!2533928))) (regTwo!35680 (h!74602 (exprs!7080 lt!2533928))))))))

(declare-fun d!2206736 () Bool)

(declare-fun res!2881750 () Bool)

(assert (=> d!2206736 (=> res!2881750 e!4243785)))

(assert (=> d!2206736 (= res!2881750 (is-EmptyExpr!17584 (h!74602 (exprs!7080 lt!2533928))))))

(assert (=> d!2206736 (= (nullableFct!2783 (h!74602 (exprs!7080 lt!2533928))) e!4243785)))

(declare-fun b!7058987 () Bool)

(assert (=> b!7058987 (= e!4243786 call!641407)))

(assert (= (and d!2206736 (not res!2881750)) b!7058983))

(assert (= (and b!7058983 res!2881746) b!7058985))

(assert (= (and b!7058985 (not res!2881748)) b!7058986))

(assert (= (and b!7058986 c!1315514) b!7058982))

(assert (= (and b!7058986 (not c!1315514)) b!7058981))

(assert (= (and b!7058982 (not res!2881749)) b!7058987))

(assert (= (and b!7058981 res!2881747) b!7058984))

(assert (= (or b!7058987 b!7058981) bm!641402))

(assert (= (or b!7058982 b!7058984) bm!641403))

(declare-fun m!7778398 () Bool)

(assert (=> bm!641402 m!7778398))

(declare-fun m!7778400 () Bool)

(assert (=> bm!641403 m!7778400))

(assert (=> d!2206114 d!2206736))

(declare-fun d!2206738 () Bool)

(declare-fun c!1315515 () Bool)

(assert (=> d!2206738 (= c!1315515 (isEmpty!39754 (tail!13726 (tail!13726 s!7408))))))

(declare-fun e!4243789 () Bool)

(assert (=> d!2206738 (= (matchZipper!3124 (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533930 (head!14368 s!7408)) (head!14368 (tail!13726 s!7408))) (tail!13726 (tail!13726 s!7408))) e!4243789)))

(declare-fun b!7058988 () Bool)

(assert (=> b!7058988 (= e!4243789 (nullableZipper!2667 (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533930 (head!14368 s!7408)) (head!14368 (tail!13726 s!7408)))))))

(declare-fun b!7058989 () Bool)

(assert (=> b!7058989 (= e!4243789 (matchZipper!3124 (derivationStepZipper!3034 (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533930 (head!14368 s!7408)) (head!14368 (tail!13726 s!7408))) (head!14368 (tail!13726 (tail!13726 s!7408)))) (tail!13726 (tail!13726 (tail!13726 s!7408)))))))

(assert (= (and d!2206738 c!1315515) b!7058988))

(assert (= (and d!2206738 (not c!1315515)) b!7058989))

(assert (=> d!2206738 m!7777220))

(assert (=> d!2206738 m!7778092))

(assert (=> b!7058988 m!7777218))

(declare-fun m!7778402 () Bool)

(assert (=> b!7058988 m!7778402))

(assert (=> b!7058989 m!7777220))

(assert (=> b!7058989 m!7778096))

(assert (=> b!7058989 m!7777218))

(assert (=> b!7058989 m!7778096))

(declare-fun m!7778404 () Bool)

(assert (=> b!7058989 m!7778404))

(assert (=> b!7058989 m!7777220))

(assert (=> b!7058989 m!7778100))

(assert (=> b!7058989 m!7778404))

(assert (=> b!7058989 m!7778100))

(declare-fun m!7778406 () Bool)

(assert (=> b!7058989 m!7778406))

(assert (=> b!7058183 d!2206738))

(declare-fun bs!1878135 () Bool)

(declare-fun d!2206740 () Bool)

(assert (= bs!1878135 (and d!2206740 d!2205914)))

(declare-fun lambda!421362 () Int)

(assert (=> bs!1878135 (= (= (head!14368 (tail!13726 s!7408)) (h!74603 s!7408)) (= lambda!421362 lambda!421276))))

(declare-fun bs!1878136 () Bool)

(assert (= bs!1878136 (and d!2206740 d!2206654)))

(assert (=> bs!1878136 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 (tail!13726 (t!382058 s!7408)))) (= lambda!421362 lambda!421354))))

(declare-fun bs!1878137 () Bool)

(assert (= bs!1878137 (and d!2206740 d!2206094)))

(assert (=> bs!1878137 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 (t!382058 s!7408))) (= lambda!421362 lambda!421299))))

(declare-fun bs!1878138 () Bool)

(assert (= bs!1878138 (and d!2206740 d!2206138)))

(assert (=> bs!1878138 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 s!7408)) (= lambda!421362 lambda!421307))))

(declare-fun bs!1878139 () Bool)

(assert (= bs!1878139 (and d!2206740 d!2206704)))

(assert (=> bs!1878139 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 (tail!13726 (t!382058 s!7408)))) (= lambda!421362 lambda!421358))))

(declare-fun bs!1878140 () Bool)

(assert (= bs!1878140 (and d!2206740 d!2206614)))

(assert (=> bs!1878140 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 s!7408)) (= lambda!421362 lambda!421350))))

(declare-fun bs!1878141 () Bool)

(assert (= bs!1878141 (and d!2206740 d!2206590)))

(assert (=> bs!1878141 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 (t!382058 s!7408))) (= lambda!421362 lambda!421347))))

(declare-fun bs!1878142 () Bool)

(assert (= bs!1878142 (and d!2206740 d!2206120)))

(assert (=> bs!1878142 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 (t!382058 s!7408))) (= lambda!421362 lambda!421304))))

(declare-fun bs!1878143 () Bool)

(assert (= bs!1878143 (and d!2206740 d!2206056)))

(assert (=> bs!1878143 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 (t!382058 s!7408))) (= lambda!421362 lambda!421298))))

(declare-fun bs!1878144 () Bool)

(assert (= bs!1878144 (and d!2206740 d!2206228)))

(assert (=> bs!1878144 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 s!7408)) (= lambda!421362 lambda!421317))))

(declare-fun bs!1878145 () Bool)

(assert (= bs!1878145 (and d!2206740 d!2206268)))

(assert (=> bs!1878145 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 s!7408)) (= lambda!421362 lambda!421318))))

(declare-fun bs!1878146 () Bool)

(assert (= bs!1878146 (and d!2206740 d!2206100)))

(assert (=> bs!1878146 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 s!7408)) (= lambda!421362 lambda!421303))))

(declare-fun bs!1878147 () Bool)

(assert (= bs!1878147 (and d!2206740 b!7057661)))

(assert (=> bs!1878147 (= (= (head!14368 (tail!13726 s!7408)) (h!74603 s!7408)) (= lambda!421362 lambda!421196))))

(declare-fun bs!1878148 () Bool)

(assert (= bs!1878148 (and d!2206740 d!2205882)))

(assert (=> bs!1878148 (= (= (head!14368 (tail!13726 s!7408)) (h!74603 s!7408)) (= lambda!421362 lambda!421274))))

(declare-fun bs!1878149 () Bool)

(assert (= bs!1878149 (and d!2206740 d!2206580)))

(assert (=> bs!1878149 (= lambda!421362 lambda!421346)))

(declare-fun bs!1878150 () Bool)

(assert (= bs!1878150 (and d!2206740 d!2206200)))

(assert (=> bs!1878150 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 (t!382058 s!7408))) (= lambda!421362 lambda!421314))))

(assert (=> d!2206740 true))

(assert (=> d!2206740 (= (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533930 (head!14368 s!7408)) (head!14368 (tail!13726 s!7408))) (flatMap!2510 (derivationStepZipper!3034 lt!2533930 (head!14368 s!7408)) lambda!421362))))

(declare-fun bs!1878151 () Bool)

(assert (= bs!1878151 d!2206740))

(assert (=> bs!1878151 m!7776604))

(declare-fun m!7778408 () Bool)

(assert (=> bs!1878151 m!7778408))

(assert (=> b!7058183 d!2206740))

(assert (=> b!7058183 d!2206582))

(assert (=> b!7058183 d!2206584))

(declare-fun b!7058990 () Bool)

(declare-fun e!4243790 () Int)

(declare-fun e!4243791 () Int)

(assert (=> b!7058990 (= e!4243790 e!4243791)))

(declare-fun c!1315516 () Bool)

(assert (=> b!7058990 (= c!1315516 (is-Star!17584 (h!74602 (exprs!7080 (h!74604 lt!2533936)))))))

(declare-fun b!7058991 () Bool)

(declare-fun e!4243793 () Int)

(declare-fun e!4243792 () Int)

(assert (=> b!7058991 (= e!4243793 e!4243792)))

(declare-fun c!1315519 () Bool)

(assert (=> b!7058991 (= c!1315519 (is-Concat!26429 (h!74602 (exprs!7080 (h!74604 lt!2533936)))))))

(declare-fun b!7058992 () Bool)

(declare-fun c!1315517 () Bool)

(assert (=> b!7058992 (= c!1315517 (is-Union!17584 (h!74602 (exprs!7080 (h!74604 lt!2533936)))))))

(assert (=> b!7058992 (= e!4243791 e!4243793)))

(declare-fun bm!641404 () Bool)

(declare-fun call!641411 () Int)

(assert (=> bm!641404 (= call!641411 (regexDepthTotal!316 (ite c!1315516 (reg!17913 (h!74602 (exprs!7080 (h!74604 lt!2533936)))) (ite c!1315517 (regTwo!35681 (h!74602 (exprs!7080 (h!74604 lt!2533936)))) (regOne!35680 (h!74602 (exprs!7080 (h!74604 lt!2533936))))))))))

(declare-fun b!7058993 () Bool)

(assert (=> b!7058993 (= e!4243792 1)))

(declare-fun b!7058994 () Bool)

(declare-fun call!641409 () Int)

(declare-fun call!641410 () Int)

(assert (=> b!7058994 (= e!4243792 (+ 1 call!641409 call!641410))))

(declare-fun d!2206742 () Bool)

(declare-fun lt!2534313 () Int)

(assert (=> d!2206742 (> lt!2534313 0)))

(assert (=> d!2206742 (= lt!2534313 e!4243790)))

(declare-fun c!1315518 () Bool)

(assert (=> d!2206742 (= c!1315518 (is-ElementMatch!17584 (h!74602 (exprs!7080 (h!74604 lt!2533936)))))))

(assert (=> d!2206742 (= (regexDepthTotal!316 (h!74602 (exprs!7080 (h!74604 lt!2533936)))) lt!2534313)))

(declare-fun b!7058995 () Bool)

(assert (=> b!7058995 (= e!4243793 (+ 1 call!641410 call!641409))))

(declare-fun b!7058996 () Bool)

(assert (=> b!7058996 (= e!4243791 (+ 1 call!641411))))

(declare-fun bm!641405 () Bool)

(assert (=> bm!641405 (= call!641410 (regexDepthTotal!316 (ite c!1315517 (regOne!35681 (h!74602 (exprs!7080 (h!74604 lt!2533936)))) (regTwo!35680 (h!74602 (exprs!7080 (h!74604 lt!2533936)))))))))

(declare-fun b!7058997 () Bool)

(assert (=> b!7058997 (= e!4243790 1)))

(declare-fun bm!641406 () Bool)

(assert (=> bm!641406 (= call!641409 call!641411)))

(assert (= (and d!2206742 c!1315518) b!7058997))

(assert (= (and d!2206742 (not c!1315518)) b!7058990))

(assert (= (and b!7058990 c!1315516) b!7058996))

(assert (= (and b!7058990 (not c!1315516)) b!7058992))

(assert (= (and b!7058992 c!1315517) b!7058995))

(assert (= (and b!7058992 (not c!1315517)) b!7058991))

(assert (= (and b!7058991 c!1315519) b!7058994))

(assert (= (and b!7058991 (not c!1315519)) b!7058993))

(assert (= (or b!7058995 b!7058994) bm!641406))

(assert (= (or b!7058995 b!7058994) bm!641405))

(assert (= (or b!7058996 bm!641406) bm!641404))

(declare-fun m!7778410 () Bool)

(assert (=> bm!641404 m!7778410))

(declare-fun m!7778412 () Bool)

(assert (=> bm!641405 m!7778412))

(assert (=> b!7058327 d!2206742))

(declare-fun d!2206744 () Bool)

(declare-fun lt!2534314 () Int)

(assert (=> d!2206744 (>= lt!2534314 0)))

(declare-fun e!4243794 () Int)

(assert (=> d!2206744 (= lt!2534314 e!4243794)))

(declare-fun c!1315520 () Bool)

(assert (=> d!2206744 (= c!1315520 (is-Cons!68154 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (h!74604 lt!2533936)))))))))

(assert (=> d!2206744 (= (contextDepthTotal!520 (Context!13161 (t!382057 (exprs!7080 (h!74604 lt!2533936))))) lt!2534314)))

(declare-fun b!7058998 () Bool)

(assert (=> b!7058998 (= e!4243794 (+ (regexDepthTotal!316 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (h!74604 lt!2533936))))))) (contextDepthTotal!520 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (h!74604 lt!2533936))))))))))))

(declare-fun b!7058999 () Bool)

(assert (=> b!7058999 (= e!4243794 1)))

(assert (= (and d!2206744 c!1315520) b!7058998))

(assert (= (and d!2206744 (not c!1315520)) b!7058999))

(declare-fun m!7778414 () Bool)

(assert (=> b!7058998 m!7778414))

(declare-fun m!7778416 () Bool)

(assert (=> b!7058998 m!7778416))

(assert (=> b!7058327 d!2206744))

(assert (=> d!2206092 d!2206550))

(declare-fun d!2206746 () Bool)

(declare-fun lt!2534315 () Bool)

(assert (=> d!2206746 (= lt!2534315 (exists!3582 (toList!10925 lt!2533946) lambda!421313))))

(assert (=> d!2206746 (= lt!2534315 (choose!53900 lt!2533946 lambda!421313))))

(assert (=> d!2206746 (= (exists!3584 lt!2533946 lambda!421313) lt!2534315)))

(declare-fun bs!1878152 () Bool)

(assert (= bs!1878152 d!2206746))

(declare-fun m!7778418 () Bool)

(assert (=> bs!1878152 m!7778418))

(assert (=> bs!1878152 m!7778418))

(declare-fun m!7778420 () Bool)

(assert (=> bs!1878152 m!7778420))

(declare-fun m!7778422 () Bool)

(assert (=> bs!1878152 m!7778422))

(assert (=> d!2206196 d!2206746))

(declare-fun d!2206748 () Bool)

(declare-fun c!1315521 () Bool)

(assert (=> d!2206748 (= c!1315521 (isEmpty!39754 s!7408))))

(declare-fun e!4243795 () Bool)

(assert (=> d!2206748 (= (matchZipper!3124 (set.insert (h!74604 (toList!10925 lt!2533930)) (as set.empty (Set Context!13160))) s!7408) e!4243795)))

(declare-fun b!7059000 () Bool)

(assert (=> b!7059000 (= e!4243795 (nullableZipper!2667 (set.insert (h!74604 (toList!10925 lt!2533930)) (as set.empty (Set Context!13160)))))))

(declare-fun b!7059001 () Bool)

(assert (=> b!7059001 (= e!4243795 (matchZipper!3124 (derivationStepZipper!3034 (set.insert (h!74604 (toList!10925 lt!2533930)) (as set.empty (Set Context!13160))) (head!14368 s!7408)) (tail!13726 s!7408)))))

(assert (= (and d!2206748 c!1315521) b!7059000))

(assert (= (and d!2206748 (not c!1315521)) b!7059001))

(assert (=> d!2206748 m!7776598))

(assert (=> b!7059000 m!7777548))

(declare-fun m!7778424 () Bool)

(assert (=> b!7059000 m!7778424))

(assert (=> b!7059001 m!7776602))

(assert (=> b!7059001 m!7777548))

(assert (=> b!7059001 m!7776602))

(declare-fun m!7778426 () Bool)

(assert (=> b!7059001 m!7778426))

(assert (=> b!7059001 m!7776606))

(assert (=> b!7059001 m!7778426))

(assert (=> b!7059001 m!7776606))

(declare-fun m!7778428 () Bool)

(assert (=> b!7059001 m!7778428))

(assert (=> bs!1877653 d!2206748))

(declare-fun d!2206750 () Bool)

(declare-fun lt!2534316 () Bool)

(assert (=> d!2206750 (= lt!2534316 (set.member (h!74604 lt!2534146) (content!13703 (t!382059 lt!2534146))))))

(declare-fun e!4243797 () Bool)

(assert (=> d!2206750 (= lt!2534316 e!4243797)))

(declare-fun res!2881752 () Bool)

(assert (=> d!2206750 (=> (not res!2881752) (not e!4243797))))

(assert (=> d!2206750 (= res!2881752 (is-Cons!68156 (t!382059 lt!2534146)))))

(assert (=> d!2206750 (= (contains!20486 (t!382059 lt!2534146) (h!74604 lt!2534146)) lt!2534316)))

(declare-fun b!7059002 () Bool)

(declare-fun e!4243796 () Bool)

(assert (=> b!7059002 (= e!4243797 e!4243796)))

(declare-fun res!2881751 () Bool)

(assert (=> b!7059002 (=> res!2881751 e!4243796)))

(assert (=> b!7059002 (= res!2881751 (= (h!74604 (t!382059 lt!2534146)) (h!74604 lt!2534146)))))

(declare-fun b!7059003 () Bool)

(assert (=> b!7059003 (= e!4243796 (contains!20486 (t!382059 (t!382059 lt!2534146)) (h!74604 lt!2534146)))))

(assert (= (and d!2206750 res!2881752) b!7059002))

(assert (= (and b!7059002 (not res!2881751)) b!7059003))

(assert (=> d!2206750 m!7777514))

(declare-fun m!7778430 () Bool)

(assert (=> d!2206750 m!7778430))

(declare-fun m!7778432 () Bool)

(assert (=> b!7059003 m!7778432))

(assert (=> b!7058322 d!2206750))

(declare-fun d!2206752 () Bool)

(declare-fun c!1315522 () Bool)

(assert (=> d!2206752 (= c!1315522 (is-Nil!68154 (t!382057 (exprs!7080 ct2!306))))))

(declare-fun e!4243798 () (Set Regex!17584))

(assert (=> d!2206752 (= (content!13704 (t!382057 (exprs!7080 ct2!306))) e!4243798)))

(declare-fun b!7059004 () Bool)

(assert (=> b!7059004 (= e!4243798 (as set.empty (Set Regex!17584)))))

(declare-fun b!7059005 () Bool)

(assert (=> b!7059005 (= e!4243798 (set.union (set.insert (h!74602 (t!382057 (exprs!7080 ct2!306))) (as set.empty (Set Regex!17584))) (content!13704 (t!382057 (t!382057 (exprs!7080 ct2!306))))))))

(assert (= (and d!2206752 c!1315522) b!7059004))

(assert (= (and d!2206752 (not c!1315522)) b!7059005))

(declare-fun m!7778434 () Bool)

(assert (=> b!7059005 m!7778434))

(declare-fun m!7778436 () Bool)

(assert (=> b!7059005 m!7778436))

(assert (=> b!7058147 d!2206752))

(declare-fun b!7059006 () Bool)

(declare-fun e!4243804 () (Set Context!13160))

(declare-fun call!641417 () (Set Context!13160))

(assert (=> b!7059006 (= e!4243804 call!641417)))

(declare-fun c!1315526 () Bool)

(declare-fun c!1315524 () Bool)

(declare-fun call!641416 () List!68278)

(declare-fun bm!641407 () Bool)

(assert (=> bm!641407 (= call!641416 ($colon$colon!2630 (exprs!7080 (ite (or c!1315283 c!1315282) (Context!13161 (t!382057 (exprs!7080 lt!2533928))) (Context!13161 call!641259))) (ite (or c!1315526 c!1315524) (regTwo!35680 (ite c!1315283 (regOne!35681 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315282 (regTwo!35680 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315280 (regOne!35680 (h!74602 (exprs!7080 lt!2533928))) (reg!17913 (h!74602 (exprs!7080 lt!2533928))))))) (ite c!1315283 (regOne!35681 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315282 (regTwo!35680 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315280 (regOne!35680 (h!74602 (exprs!7080 lt!2533928))) (reg!17913 (h!74602 (exprs!7080 lt!2533928)))))))))))

(declare-fun b!7059007 () Bool)

(declare-fun e!4243799 () Bool)

(assert (=> b!7059007 (= c!1315526 e!4243799)))

(declare-fun res!2881753 () Bool)

(assert (=> b!7059007 (=> (not res!2881753) (not e!4243799))))

(assert (=> b!7059007 (= res!2881753 (is-Concat!26429 (ite c!1315283 (regOne!35681 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315282 (regTwo!35680 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315280 (regOne!35680 (h!74602 (exprs!7080 lt!2533928))) (reg!17913 (h!74602 (exprs!7080 lt!2533928))))))))))

(declare-fun e!4243802 () (Set Context!13160))

(declare-fun e!4243803 () (Set Context!13160))

(assert (=> b!7059007 (= e!4243802 e!4243803)))

(declare-fun b!7059008 () Bool)

(assert (=> b!7059008 (= e!4243799 (nullable!7267 (regOne!35680 (ite c!1315283 (regOne!35681 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315282 (regTwo!35680 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315280 (regOne!35680 (h!74602 (exprs!7080 lt!2533928))) (reg!17913 (h!74602 (exprs!7080 lt!2533928)))))))))))

(declare-fun b!7059009 () Bool)

(declare-fun e!4243801 () (Set Context!13160))

(assert (=> b!7059009 (= e!4243803 e!4243801)))

(assert (=> b!7059009 (= c!1315524 (is-Concat!26429 (ite c!1315283 (regOne!35681 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315282 (regTwo!35680 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315280 (regOne!35680 (h!74602 (exprs!7080 lt!2533928))) (reg!17913 (h!74602 (exprs!7080 lt!2533928))))))))))

(declare-fun b!7059010 () Bool)

(assert (=> b!7059010 (= e!4243804 (as set.empty (Set Context!13160)))))

(declare-fun bm!641408 () Bool)

(declare-fun call!641414 () (Set Context!13160))

(declare-fun call!641413 () (Set Context!13160))

(assert (=> bm!641408 (= call!641414 call!641413)))

(declare-fun b!7059011 () Bool)

(declare-fun call!641415 () (Set Context!13160))

(assert (=> b!7059011 (= e!4243802 (set.union call!641413 call!641415))))

(declare-fun c!1315525 () Bool)

(declare-fun b!7059012 () Bool)

(assert (=> b!7059012 (= c!1315525 (is-Star!17584 (ite c!1315283 (regOne!35681 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315282 (regTwo!35680 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315280 (regOne!35680 (h!74602 (exprs!7080 lt!2533928))) (reg!17913 (h!74602 (exprs!7080 lt!2533928))))))))))

(assert (=> b!7059012 (= e!4243801 e!4243804)))

(declare-fun bm!641409 () Bool)

(assert (=> bm!641409 (= call!641417 call!641414)))

(declare-fun e!4243800 () (Set Context!13160))

(declare-fun b!7059013 () Bool)

(assert (=> b!7059013 (= e!4243800 (set.insert (ite (or c!1315283 c!1315282) (Context!13161 (t!382057 (exprs!7080 lt!2533928))) (Context!13161 call!641259)) (as set.empty (Set Context!13160))))))

(declare-fun c!1315527 () Bool)

(declare-fun call!641412 () List!68278)

(declare-fun bm!641411 () Bool)

(assert (=> bm!641411 (= call!641413 (derivationStepZipperDown!2218 (ite c!1315527 (regOne!35681 (ite c!1315283 (regOne!35681 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315282 (regTwo!35680 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315280 (regOne!35680 (h!74602 (exprs!7080 lt!2533928))) (reg!17913 (h!74602 (exprs!7080 lt!2533928))))))) (ite c!1315526 (regTwo!35680 (ite c!1315283 (regOne!35681 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315282 (regTwo!35680 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315280 (regOne!35680 (h!74602 (exprs!7080 lt!2533928))) (reg!17913 (h!74602 (exprs!7080 lt!2533928))))))) (ite c!1315524 (regOne!35680 (ite c!1315283 (regOne!35681 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315282 (regTwo!35680 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315280 (regOne!35680 (h!74602 (exprs!7080 lt!2533928))) (reg!17913 (h!74602 (exprs!7080 lt!2533928))))))) (reg!17913 (ite c!1315283 (regOne!35681 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315282 (regTwo!35680 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315280 (regOne!35680 (h!74602 (exprs!7080 lt!2533928))) (reg!17913 (h!74602 (exprs!7080 lt!2533928)))))))))) (ite (or c!1315527 c!1315526) (ite (or c!1315283 c!1315282) (Context!13161 (t!382057 (exprs!7080 lt!2533928))) (Context!13161 call!641259)) (Context!13161 call!641412)) (h!74603 s!7408)))))

(declare-fun b!7059014 () Bool)

(assert (=> b!7059014 (= e!4243800 e!4243802)))

(assert (=> b!7059014 (= c!1315527 (is-Union!17584 (ite c!1315283 (regOne!35681 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315282 (regTwo!35680 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315280 (regOne!35680 (h!74602 (exprs!7080 lt!2533928))) (reg!17913 (h!74602 (exprs!7080 lt!2533928))))))))))

(declare-fun bm!641412 () Bool)

(assert (=> bm!641412 (= call!641412 call!641416)))

(declare-fun b!7059015 () Bool)

(assert (=> b!7059015 (= e!4243801 call!641417)))

(declare-fun b!7059016 () Bool)

(assert (=> b!7059016 (= e!4243803 (set.union call!641415 call!641414))))

(declare-fun c!1315523 () Bool)

(declare-fun d!2206754 () Bool)

(assert (=> d!2206754 (= c!1315523 (and (is-ElementMatch!17584 (ite c!1315283 (regOne!35681 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315282 (regTwo!35680 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315280 (regOne!35680 (h!74602 (exprs!7080 lt!2533928))) (reg!17913 (h!74602 (exprs!7080 lt!2533928))))))) (= (c!1315081 (ite c!1315283 (regOne!35681 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315282 (regTwo!35680 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315280 (regOne!35680 (h!74602 (exprs!7080 lt!2533928))) (reg!17913 (h!74602 (exprs!7080 lt!2533928))))))) (h!74603 s!7408))))))

(assert (=> d!2206754 (= (derivationStepZipperDown!2218 (ite c!1315283 (regOne!35681 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315282 (regTwo!35680 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315280 (regOne!35680 (h!74602 (exprs!7080 lt!2533928))) (reg!17913 (h!74602 (exprs!7080 lt!2533928)))))) (ite (or c!1315283 c!1315282) (Context!13161 (t!382057 (exprs!7080 lt!2533928))) (Context!13161 call!641259)) (h!74603 s!7408)) e!4243800)))

(declare-fun bm!641410 () Bool)

(assert (=> bm!641410 (= call!641415 (derivationStepZipperDown!2218 (ite c!1315527 (regTwo!35681 (ite c!1315283 (regOne!35681 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315282 (regTwo!35680 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315280 (regOne!35680 (h!74602 (exprs!7080 lt!2533928))) (reg!17913 (h!74602 (exprs!7080 lt!2533928))))))) (regOne!35680 (ite c!1315283 (regOne!35681 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315282 (regTwo!35680 (h!74602 (exprs!7080 lt!2533928))) (ite c!1315280 (regOne!35680 (h!74602 (exprs!7080 lt!2533928))) (reg!17913 (h!74602 (exprs!7080 lt!2533928)))))))) (ite c!1315527 (ite (or c!1315283 c!1315282) (Context!13161 (t!382057 (exprs!7080 lt!2533928))) (Context!13161 call!641259)) (Context!13161 call!641416)) (h!74603 s!7408)))))

(assert (= (and d!2206754 c!1315523) b!7059013))

(assert (= (and d!2206754 (not c!1315523)) b!7059014))

(assert (= (and b!7059014 c!1315527) b!7059011))

(assert (= (and b!7059014 (not c!1315527)) b!7059007))

(assert (= (and b!7059007 res!2881753) b!7059008))

(assert (= (and b!7059007 c!1315526) b!7059016))

(assert (= (and b!7059007 (not c!1315526)) b!7059009))

(assert (= (and b!7059009 c!1315524) b!7059015))

(assert (= (and b!7059009 (not c!1315524)) b!7059012))

(assert (= (and b!7059012 c!1315525) b!7059006))

(assert (= (and b!7059012 (not c!1315525)) b!7059010))

(assert (= (or b!7059015 b!7059006) bm!641412))

(assert (= (or b!7059015 b!7059006) bm!641409))

(assert (= (or b!7059016 bm!641409) bm!641408))

(assert (= (or b!7059016 bm!641412) bm!641407))

(assert (= (or b!7059011 bm!641408) bm!641411))

(assert (= (or b!7059011 b!7059016) bm!641410))

(declare-fun m!7778438 () Bool)

(assert (=> bm!641411 m!7778438))

(declare-fun m!7778440 () Bool)

(assert (=> bm!641410 m!7778440))

(declare-fun m!7778442 () Bool)

(assert (=> bm!641407 m!7778442))

(declare-fun m!7778444 () Bool)

(assert (=> b!7059013 m!7778444))

(declare-fun m!7778446 () Bool)

(assert (=> b!7059008 m!7778446))

(assert (=> bm!641258 d!2206754))

(declare-fun d!2206756 () Bool)

(declare-fun lt!2534317 () Int)

(assert (=> d!2206756 (>= lt!2534317 0)))

(declare-fun e!4243805 () Int)

(assert (=> d!2206756 (= lt!2534317 e!4243805)))

(declare-fun c!1315528 () Bool)

(assert (=> d!2206756 (= c!1315528 (is-Cons!68154 (exprs!7080 (h!74604 (t!382059 (toList!10925 lt!2533927))))))))

(assert (=> d!2206756 (= (contextDepthTotal!520 (h!74604 (t!382059 (toList!10925 lt!2533927)))) lt!2534317)))

(declare-fun b!7059017 () Bool)

(assert (=> b!7059017 (= e!4243805 (+ (regexDepthTotal!316 (h!74602 (exprs!7080 (h!74604 (t!382059 (toList!10925 lt!2533927)))))) (contextDepthTotal!520 (Context!13161 (t!382057 (exprs!7080 (h!74604 (t!382059 (toList!10925 lt!2533927)))))))))))

(declare-fun b!7059018 () Bool)

(assert (=> b!7059018 (= e!4243805 1)))

(assert (= (and d!2206756 c!1315528) b!7059017))

(assert (= (and d!2206756 (not c!1315528)) b!7059018))

(declare-fun m!7778448 () Bool)

(assert (=> b!7059017 m!7778448))

(declare-fun m!7778450 () Bool)

(assert (=> b!7059017 m!7778450))

(assert (=> b!7058251 d!2206756))

(declare-fun d!2206758 () Bool)

(declare-fun lt!2534318 () Int)

(assert (=> d!2206758 (>= lt!2534318 0)))

(declare-fun e!4243806 () Int)

(assert (=> d!2206758 (= lt!2534318 e!4243806)))

(declare-fun c!1315529 () Bool)

(assert (=> d!2206758 (= c!1315529 (is-Cons!68156 (t!382059 (t!382059 (toList!10925 lt!2533927)))))))

(assert (=> d!2206758 (= (zipperDepthTotal!549 (t!382059 (t!382059 (toList!10925 lt!2533927)))) lt!2534318)))

(declare-fun b!7059019 () Bool)

(assert (=> b!7059019 (= e!4243806 (+ (contextDepthTotal!520 (h!74604 (t!382059 (t!382059 (toList!10925 lt!2533927))))) (zipperDepthTotal!549 (t!382059 (t!382059 (t!382059 (toList!10925 lt!2533927)))))))))

(declare-fun b!7059020 () Bool)

(assert (=> b!7059020 (= e!4243806 0)))

(assert (= (and d!2206758 c!1315529) b!7059019))

(assert (= (and d!2206758 (not c!1315529)) b!7059020))

(declare-fun m!7778452 () Bool)

(assert (=> b!7059019 m!7778452))

(declare-fun m!7778454 () Bool)

(assert (=> b!7059019 m!7778454))

(assert (=> b!7058251 d!2206758))

(declare-fun d!2206760 () Bool)

(declare-fun c!1315530 () Bool)

(assert (=> d!2206760 (= c!1315530 (is-Nil!68154 (t!382057 lt!2533935)))))

(declare-fun e!4243807 () (Set Regex!17584))

(assert (=> d!2206760 (= (content!13704 (t!382057 lt!2533935)) e!4243807)))

(declare-fun b!7059021 () Bool)

(assert (=> b!7059021 (= e!4243807 (as set.empty (Set Regex!17584)))))

(declare-fun b!7059022 () Bool)

(assert (=> b!7059022 (= e!4243807 (set.union (set.insert (h!74602 (t!382057 lt!2533935)) (as set.empty (Set Regex!17584))) (content!13704 (t!382057 (t!382057 lt!2533935)))))))

(assert (= (and d!2206760 c!1315530) b!7059021))

(assert (= (and d!2206760 (not c!1315530)) b!7059022))

(declare-fun m!7778456 () Bool)

(assert (=> b!7059022 m!7778456))

(declare-fun m!7778458 () Bool)

(assert (=> b!7059022 m!7778458))

(assert (=> b!7058256 d!2206760))

(declare-fun d!2206762 () Bool)

(declare-fun res!2881754 () Bool)

(declare-fun e!4243808 () Bool)

(assert (=> d!2206762 (=> res!2881754 e!4243808)))

(assert (=> d!2206762 (= res!2881754 (is-Nil!68156 (t!382059 lt!2534138)))))

(assert (=> d!2206762 (= (noDuplicate!2698 (t!382059 lt!2534138)) e!4243808)))

(declare-fun b!7059023 () Bool)

(declare-fun e!4243809 () Bool)

(assert (=> b!7059023 (= e!4243808 e!4243809)))

(declare-fun res!2881755 () Bool)

(assert (=> b!7059023 (=> (not res!2881755) (not e!4243809))))

(assert (=> b!7059023 (= res!2881755 (not (contains!20486 (t!382059 (t!382059 lt!2534138)) (h!74604 (t!382059 lt!2534138)))))))

(declare-fun b!7059024 () Bool)

(assert (=> b!7059024 (= e!4243809 (noDuplicate!2698 (t!382059 (t!382059 lt!2534138))))))

(assert (= (and d!2206762 (not res!2881754)) b!7059023))

(assert (= (and b!7059023 res!2881755) b!7059024))

(declare-fun m!7778460 () Bool)

(assert (=> b!7059023 m!7778460))

(declare-fun m!7778462 () Bool)

(assert (=> b!7059024 m!7778462))

(assert (=> b!7058110 d!2206762))

(assert (=> d!2206166 d!2205912))

(declare-fun d!2206764 () Bool)

(assert (=> d!2206764 (= (isEmpty!39754 (tail!13726 s!7408)) (is-Nil!68155 (tail!13726 s!7408)))))

(assert (=> d!2206098 d!2206764))

(declare-fun b!7059025 () Bool)

(declare-fun e!4243814 () Bool)

(declare-fun e!4243811 () Bool)

(assert (=> b!7059025 (= e!4243814 e!4243811)))

(declare-fun res!2881757 () Bool)

(declare-fun call!641418 () Bool)

(assert (=> b!7059025 (= res!2881757 call!641418)))

(assert (=> b!7059025 (=> (not res!2881757) (not e!4243811))))

(declare-fun b!7059026 () Bool)

(declare-fun e!4243813 () Bool)

(assert (=> b!7059026 (= e!4243814 e!4243813)))

(declare-fun res!2881759 () Bool)

(declare-fun call!641419 () Bool)

(assert (=> b!7059026 (= res!2881759 call!641419)))

(assert (=> b!7059026 (=> res!2881759 e!4243813)))

(declare-fun b!7059027 () Bool)

(declare-fun e!4243812 () Bool)

(declare-fun e!4243810 () Bool)

(assert (=> b!7059027 (= e!4243812 e!4243810)))

(declare-fun res!2881756 () Bool)

(assert (=> b!7059027 (=> (not res!2881756) (not e!4243810))))

(assert (=> b!7059027 (= res!2881756 (and (not (is-EmptyLang!17584 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (not (is-ElementMatch!17584 (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))))))

(declare-fun b!7059028 () Bool)

(assert (=> b!7059028 (= e!4243811 call!641419)))

(declare-fun bm!641413 () Bool)

(declare-fun c!1315531 () Bool)

(assert (=> bm!641413 (= call!641418 (nullable!7267 (ite c!1315531 (regTwo!35681 (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))) (regOne!35680 (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))))))

(declare-fun b!7059029 () Bool)

(declare-fun e!4243815 () Bool)

(assert (=> b!7059029 (= e!4243810 e!4243815)))

(declare-fun res!2881758 () Bool)

(assert (=> b!7059029 (=> res!2881758 e!4243815)))

(assert (=> b!7059029 (= res!2881758 (is-Star!17584 (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))))

(declare-fun b!7059030 () Bool)

(assert (=> b!7059030 (= e!4243815 e!4243814)))

(assert (=> b!7059030 (= c!1315531 (is-Union!17584 (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))))

(declare-fun bm!641414 () Bool)

(assert (=> bm!641414 (= call!641419 (nullable!7267 (ite c!1315531 (regOne!35681 (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))) (regTwo!35680 (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))))))

(declare-fun d!2206766 () Bool)

(declare-fun res!2881760 () Bool)

(assert (=> d!2206766 (=> res!2881760 e!4243812)))

(assert (=> d!2206766 (= res!2881760 (is-EmptyExpr!17584 (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))))

(assert (=> d!2206766 (= (nullableFct!2783 (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))) e!4243812)))

(declare-fun b!7059031 () Bool)

(assert (=> b!7059031 (= e!4243813 call!641418)))

(assert (= (and d!2206766 (not res!2881760)) b!7059027))

(assert (= (and b!7059027 res!2881756) b!7059029))

(assert (= (and b!7059029 (not res!2881758)) b!7059030))

(assert (= (and b!7059030 c!1315531) b!7059026))

(assert (= (and b!7059030 (not c!1315531)) b!7059025))

(assert (= (and b!7059026 (not res!2881759)) b!7059031))

(assert (= (and b!7059025 res!2881757) b!7059028))

(assert (= (or b!7059031 b!7059025) bm!641413))

(assert (= (or b!7059026 b!7059028) bm!641414))

(declare-fun m!7778464 () Bool)

(assert (=> bm!641413 m!7778464))

(declare-fun m!7778466 () Bool)

(assert (=> bm!641414 m!7778466))

(assert (=> d!2206204 d!2206766))

(assert (=> d!2206108 d!2206106))

(assert (=> d!2206108 d!2205890))

(declare-fun d!2206768 () Bool)

(declare-fun res!2881761 () Bool)

(declare-fun e!4243816 () Bool)

(assert (=> d!2206768 (=> res!2881761 e!4243816)))

(assert (=> d!2206768 (= res!2881761 (is-Nil!68154 (exprs!7080 setElem!49930)))))

(assert (=> d!2206768 (= (forall!16536 (exprs!7080 setElem!49930) lambda!421297) e!4243816)))

(declare-fun b!7059032 () Bool)

(declare-fun e!4243817 () Bool)

(assert (=> b!7059032 (= e!4243816 e!4243817)))

(declare-fun res!2881762 () Bool)

(assert (=> b!7059032 (=> (not res!2881762) (not e!4243817))))

(assert (=> b!7059032 (= res!2881762 (dynLambda!27681 lambda!421297 (h!74602 (exprs!7080 setElem!49930))))))

(declare-fun b!7059033 () Bool)

(assert (=> b!7059033 (= e!4243817 (forall!16536 (t!382057 (exprs!7080 setElem!49930)) lambda!421297))))

(assert (= (and d!2206768 (not res!2881761)) b!7059032))

(assert (= (and b!7059032 res!2881762) b!7059033))

(declare-fun b_lambda!269099 () Bool)

(assert (=> (not b_lambda!269099) (not b!7059032)))

(declare-fun m!7778468 () Bool)

(assert (=> b!7059032 m!7778468))

(declare-fun m!7778470 () Bool)

(assert (=> b!7059033 m!7778470))

(assert (=> d!2206048 d!2206768))

(declare-fun d!2206770 () Bool)

(assert (=> d!2206770 (= (head!14370 (toList!10925 lt!2533930)) (h!74604 (toList!10925 lt!2533930)))))

(assert (=> b!7058132 d!2206770))

(declare-fun bs!1878153 () Bool)

(declare-fun d!2206772 () Bool)

(assert (= bs!1878153 (and d!2206772 d!2206048)))

(declare-fun lambda!421363 () Int)

(assert (=> bs!1878153 (= lambda!421363 lambda!421297)))

(declare-fun bs!1878154 () Bool)

(assert (= bs!1878154 (and d!2206772 b!7057679)))

(assert (=> bs!1878154 (= lambda!421363 lambda!421195)))

(declare-fun bs!1878155 () Bool)

(assert (= bs!1878155 (and d!2206772 d!2205902)))

(assert (=> bs!1878155 (= lambda!421363 lambda!421275)))

(declare-fun bs!1878156 () Bool)

(assert (= bs!1878156 (and d!2206772 d!2205830)))

(assert (=> bs!1878156 (= lambda!421363 lambda!421264)))

(declare-fun bs!1878157 () Bool)

(assert (= bs!1878157 (and d!2206772 d!2206734)))

(assert (=> bs!1878157 (= lambda!421363 lambda!421361)))

(declare-fun bs!1878158 () Bool)

(assert (= bs!1878158 (and d!2206772 d!2206672)))

(assert (=> bs!1878158 (= lambda!421363 lambda!421356)))

(declare-fun bs!1878159 () Bool)

(assert (= bs!1878159 (and d!2206772 d!2206660)))

(assert (=> bs!1878159 (= lambda!421363 lambda!421355)))

(declare-fun bs!1878160 () Bool)

(assert (= bs!1878160 (and d!2206772 d!2206632)))

(assert (=> bs!1878160 (= lambda!421363 lambda!421352)))

(assert (=> d!2206772 (= (inv!86820 (h!74604 res!2881493)) (forall!16536 (exprs!7080 (h!74604 res!2881493)) lambda!421363))))

(declare-fun bs!1878161 () Bool)

(assert (= bs!1878161 d!2206772))

(declare-fun m!7778472 () Bool)

(assert (=> bs!1878161 m!7778472))

(assert (=> b!7058117 d!2206772))

(declare-fun d!2206774 () Bool)

(declare-fun lt!2534319 () Int)

(assert (=> d!2206774 (>= lt!2534319 0)))

(declare-fun e!4243818 () Int)

(assert (=> d!2206774 (= lt!2534319 e!4243818)))

(declare-fun c!1315532 () Bool)

(assert (=> d!2206774 (= c!1315532 (is-Nil!68154 (t!382057 lt!2533935)))))

(assert (=> d!2206774 (= (size!41161 (t!382057 lt!2533935)) lt!2534319)))

(declare-fun b!7059034 () Bool)

(assert (=> b!7059034 (= e!4243818 0)))

(declare-fun b!7059035 () Bool)

(assert (=> b!7059035 (= e!4243818 (+ 1 (size!41161 (t!382057 (t!382057 lt!2533935)))))))

(assert (= (and d!2206774 c!1315532) b!7059034))

(assert (= (and d!2206774 (not c!1315532)) b!7059035))

(declare-fun m!7778474 () Bool)

(assert (=> b!7059035 m!7778474))

(assert (=> b!7058376 d!2206774))

(declare-fun d!2206776 () Bool)

(declare-fun res!2881763 () Bool)

(declare-fun e!4243819 () Bool)

(assert (=> d!2206776 (=> res!2881763 e!4243819)))

(assert (=> d!2206776 (= res!2881763 (is-Nil!68154 (++!15667 (exprs!7080 lt!2533926) (exprs!7080 ct2!306))))))

(assert (=> d!2206776 (= (forall!16536 (++!15667 (exprs!7080 lt!2533926) (exprs!7080 ct2!306)) lambda!421195) e!4243819)))

(declare-fun b!7059036 () Bool)

(declare-fun e!4243820 () Bool)

(assert (=> b!7059036 (= e!4243819 e!4243820)))

(declare-fun res!2881764 () Bool)

(assert (=> b!7059036 (=> (not res!2881764) (not e!4243820))))

(assert (=> b!7059036 (= res!2881764 (dynLambda!27681 lambda!421195 (h!74602 (++!15667 (exprs!7080 lt!2533926) (exprs!7080 ct2!306)))))))

(declare-fun b!7059037 () Bool)

(assert (=> b!7059037 (= e!4243820 (forall!16536 (t!382057 (++!15667 (exprs!7080 lt!2533926) (exprs!7080 ct2!306))) lambda!421195))))

(assert (= (and d!2206776 (not res!2881763)) b!7059036))

(assert (= (and b!7059036 res!2881764) b!7059037))

(declare-fun b_lambda!269101 () Bool)

(assert (=> (not b_lambda!269101) (not b!7059036)))

(declare-fun m!7778476 () Bool)

(assert (=> b!7059036 m!7778476))

(declare-fun m!7778478 () Bool)

(assert (=> b!7059037 m!7778478))

(assert (=> d!2206222 d!2206776))

(assert (=> d!2206222 d!2206224))

(declare-fun d!2206778 () Bool)

(assert (=> d!2206778 (forall!16536 (++!15667 (exprs!7080 lt!2533926) (exprs!7080 ct2!306)) lambda!421195)))

(assert (=> d!2206778 true))

(declare-fun _$78!662 () Unit!161841)

(assert (=> d!2206778 (= (choose!53883 (exprs!7080 lt!2533926) (exprs!7080 ct2!306) lambda!421195) _$78!662)))

(declare-fun bs!1878162 () Bool)

(assert (= bs!1878162 d!2206778))

(assert (=> bs!1878162 m!7776844))

(assert (=> bs!1878162 m!7776844))

(assert (=> bs!1878162 m!7777446))

(assert (=> d!2206222 d!2206778))

(declare-fun d!2206780 () Bool)

(declare-fun res!2881765 () Bool)

(declare-fun e!4243821 () Bool)

(assert (=> d!2206780 (=> res!2881765 e!4243821)))

(assert (=> d!2206780 (= res!2881765 (is-Nil!68154 (exprs!7080 lt!2533926)))))

(assert (=> d!2206780 (= (forall!16536 (exprs!7080 lt!2533926) lambda!421195) e!4243821)))

(declare-fun b!7059038 () Bool)

(declare-fun e!4243822 () Bool)

(assert (=> b!7059038 (= e!4243821 e!4243822)))

(declare-fun res!2881766 () Bool)

(assert (=> b!7059038 (=> (not res!2881766) (not e!4243822))))

(assert (=> b!7059038 (= res!2881766 (dynLambda!27681 lambda!421195 (h!74602 (exprs!7080 lt!2533926))))))

(declare-fun b!7059039 () Bool)

(assert (=> b!7059039 (= e!4243822 (forall!16536 (t!382057 (exprs!7080 lt!2533926)) lambda!421195))))

(assert (= (and d!2206780 (not res!2881765)) b!7059038))

(assert (= (and b!7059038 res!2881766) b!7059039))

(declare-fun b_lambda!269103 () Bool)

(assert (=> (not b_lambda!269103) (not b!7059038)))

(declare-fun m!7778480 () Bool)

(assert (=> b!7059038 m!7778480))

(declare-fun m!7778482 () Bool)

(assert (=> b!7059039 m!7778482))

(assert (=> d!2206222 d!2206780))

(declare-fun d!2206782 () Bool)

(assert (=> d!2206782 (= ($colon$colon!2630 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961)))) (ite (or c!1315244 c!1315242) (regTwo!35680 (h!74602 (exprs!7080 lt!2533961))) (h!74602 (exprs!7080 lt!2533961)))) (Cons!68154 (ite (or c!1315244 c!1315242) (regTwo!35680 (h!74602 (exprs!7080 lt!2533961))) (h!74602 (exprs!7080 lt!2533961))) (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961))))))))

(assert (=> bm!641235 d!2206782))

(assert (=> d!2206246 d!2205838))

(assert (=> d!2206246 d!2205854))

(declare-fun b!7059040 () Bool)

(declare-fun e!4243827 () Bool)

(declare-fun e!4243824 () Bool)

(assert (=> b!7059040 (= e!4243827 e!4243824)))

(declare-fun res!2881768 () Bool)

(declare-fun call!641420 () Bool)

(assert (=> b!7059040 (= res!2881768 call!641420)))

(assert (=> b!7059040 (=> (not res!2881768) (not e!4243824))))

(declare-fun b!7059041 () Bool)

(declare-fun e!4243826 () Bool)

(assert (=> b!7059041 (= e!4243827 e!4243826)))

(declare-fun res!2881770 () Bool)

(declare-fun call!641421 () Bool)

(assert (=> b!7059041 (= res!2881770 call!641421)))

(assert (=> b!7059041 (=> res!2881770 e!4243826)))

(declare-fun b!7059042 () Bool)

(declare-fun e!4243825 () Bool)

(declare-fun e!4243823 () Bool)

(assert (=> b!7059042 (= e!4243825 e!4243823)))

(declare-fun res!2881767 () Bool)

(assert (=> b!7059042 (=> (not res!2881767) (not e!4243823))))

(assert (=> b!7059042 (= res!2881767 (and (not (is-EmptyLang!17584 (h!74602 (exprs!7080 lt!2533961)))) (not (is-ElementMatch!17584 (h!74602 (exprs!7080 lt!2533961))))))))

(declare-fun b!7059043 () Bool)

(assert (=> b!7059043 (= e!4243824 call!641421)))

(declare-fun bm!641415 () Bool)

(declare-fun c!1315533 () Bool)

(assert (=> bm!641415 (= call!641420 (nullable!7267 (ite c!1315533 (regTwo!35681 (h!74602 (exprs!7080 lt!2533961))) (regOne!35680 (h!74602 (exprs!7080 lt!2533961))))))))

(declare-fun b!7059044 () Bool)

(declare-fun e!4243828 () Bool)

(assert (=> b!7059044 (= e!4243823 e!4243828)))

(declare-fun res!2881769 () Bool)

(assert (=> b!7059044 (=> res!2881769 e!4243828)))

(assert (=> b!7059044 (= res!2881769 (is-Star!17584 (h!74602 (exprs!7080 lt!2533961))))))

(declare-fun b!7059045 () Bool)

(assert (=> b!7059045 (= e!4243828 e!4243827)))

(assert (=> b!7059045 (= c!1315533 (is-Union!17584 (h!74602 (exprs!7080 lt!2533961))))))

(declare-fun bm!641416 () Bool)

(assert (=> bm!641416 (= call!641421 (nullable!7267 (ite c!1315533 (regOne!35681 (h!74602 (exprs!7080 lt!2533961))) (regTwo!35680 (h!74602 (exprs!7080 lt!2533961))))))))

(declare-fun d!2206784 () Bool)

(declare-fun res!2881771 () Bool)

(assert (=> d!2206784 (=> res!2881771 e!4243825)))

(assert (=> d!2206784 (= res!2881771 (is-EmptyExpr!17584 (h!74602 (exprs!7080 lt!2533961))))))

(assert (=> d!2206784 (= (nullableFct!2783 (h!74602 (exprs!7080 lt!2533961))) e!4243825)))

(declare-fun b!7059046 () Bool)

(assert (=> b!7059046 (= e!4243826 call!641420)))

(assert (= (and d!2206784 (not res!2881771)) b!7059042))

(assert (= (and b!7059042 res!2881767) b!7059044))

(assert (= (and b!7059044 (not res!2881769)) b!7059045))

(assert (= (and b!7059045 c!1315533) b!7059041))

(assert (= (and b!7059045 (not c!1315533)) b!7059040))

(assert (= (and b!7059041 (not res!2881770)) b!7059046))

(assert (= (and b!7059040 res!2881768) b!7059043))

(assert (= (or b!7059046 b!7059040) bm!641415))

(assert (= (or b!7059041 b!7059043) bm!641416))

(declare-fun m!7778484 () Bool)

(assert (=> bm!641415 m!7778484))

(declare-fun m!7778486 () Bool)

(assert (=> bm!641416 m!7778486))

(assert (=> d!2206202 d!2206784))

(declare-fun d!2206786 () Bool)

(assert (=> d!2206786 (= ($colon$colon!2630 (exprs!7080 (ite (or c!1315151 c!1315150) lt!2533961 (Context!13161 call!641201))) (ite (or c!1315268 c!1315266) (regTwo!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918)))))))) (Cons!68154 (ite (or c!1315268 c!1315266) (regTwo!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (exprs!7080 (ite (or c!1315151 c!1315150) lt!2533961 (Context!13161 call!641201)))))))

(assert (=> bm!641248 d!2206786))

(declare-fun bs!1878163 () Bool)

(declare-fun d!2206788 () Bool)

(assert (= bs!1878163 (and d!2206788 d!2206712)))

(declare-fun lambda!421364 () Int)

(assert (=> bs!1878163 (= lambda!421364 lambda!421360)))

(declare-fun bs!1878164 () Bool)

(assert (= bs!1878164 (and d!2206788 d!2206096)))

(assert (=> bs!1878164 (= lambda!421364 lambda!421302)))

(declare-fun bs!1878165 () Bool)

(assert (= bs!1878165 (and d!2206788 d!2206564)))

(assert (=> bs!1878165 (not (= lambda!421364 lambda!421345))))

(declare-fun bs!1878166 () Bool)

(assert (= bs!1878166 (and d!2206788 d!2206206)))

(assert (=> bs!1878166 (= lambda!421364 lambda!421315)))

(declare-fun bs!1878167 () Bool)

(assert (= bs!1878167 (and d!2206788 d!2206128)))

(assert (=> bs!1878167 (= lambda!421364 lambda!421305)))

(declare-fun bs!1878168 () Bool)

(assert (= bs!1878168 (and d!2206788 d!2205874)))

(assert (=> bs!1878168 (not (= lambda!421364 lambda!421268))))

(declare-fun bs!1878169 () Bool)

(assert (= bs!1878169 (and d!2206788 d!2206130)))

(assert (=> bs!1878169 (= lambda!421364 lambda!421306)))

(declare-fun bs!1878170 () Bool)

(assert (= bs!1878170 (and d!2206788 d!2206270)))

(assert (=> bs!1878170 (= lambda!421364 lambda!421319)))

(declare-fun bs!1878171 () Bool)

(assert (= bs!1878171 (and d!2206788 d!2206170)))

(assert (=> bs!1878171 (= lambda!421364 lambda!421312)))

(declare-fun bs!1878172 () Bool)

(assert (= bs!1878172 (and d!2206788 d!2206706)))

(assert (=> bs!1878172 (= lambda!421364 lambda!421359)))

(declare-fun bs!1878173 () Bool)

(assert (= bs!1878173 (and d!2206788 d!2206602)))

(assert (=> bs!1878173 (= lambda!421364 lambda!421349)))

(declare-fun bs!1878174 () Bool)

(assert (= bs!1878174 (and d!2206788 d!2206644)))

(assert (=> bs!1878174 (= lambda!421364 lambda!421353)))

(declare-fun bs!1878175 () Bool)

(assert (= bs!1878175 (and d!2206788 d!2206554)))

(assert (=> bs!1878175 (= lambda!421364 lambda!421343)))

(declare-fun bs!1878176 () Bool)

(assert (= bs!1878176 (and d!2206788 d!2206196)))

(assert (=> bs!1878176 (= lambda!421364 lambda!421313)))

(declare-fun bs!1878177 () Bool)

(assert (= bs!1878177 (and d!2206788 d!2206616)))

(assert (=> bs!1878177 (= lambda!421364 lambda!421351)))

(declare-fun bs!1878178 () Bool)

(assert (= bs!1878178 (and d!2206788 d!2206600)))

(assert (=> bs!1878178 (not (= lambda!421364 lambda!421348))))

(declare-fun bs!1878179 () Bool)

(assert (= bs!1878179 (and d!2206788 d!2206560)))

(assert (=> bs!1878179 (= lambda!421364 lambda!421344)))

(declare-fun bs!1878180 () Bool)

(assert (= bs!1878180 (and d!2206788 b!7057676)))

(assert (=> bs!1878180 (not (= lambda!421364 lambda!421193))))

(declare-fun bs!1878181 () Bool)

(assert (= bs!1878181 (and d!2206788 d!2206214)))

(assert (=> bs!1878181 (= lambda!421364 lambda!421316)))

(declare-fun bs!1878182 () Bool)

(assert (= bs!1878182 (and d!2206788 d!2206158)))

(assert (=> bs!1878182 (not (= lambda!421364 lambda!421311))))

(declare-fun bs!1878183 () Bool)

(assert (= bs!1878183 (and d!2206788 d!2206156)))

(assert (=> bs!1878183 (not (= lambda!421364 lambda!421308))))

(declare-fun bs!1878184 () Bool)

(assert (= bs!1878184 (and d!2206788 d!2206692)))

(assert (=> bs!1878184 (= lambda!421364 lambda!421357)))

(declare-fun bs!1878185 () Bool)

(assert (= bs!1878185 (and d!2206788 d!2205876)))

(assert (=> bs!1878185 (not (= lambda!421364 lambda!421271))))

(assert (=> d!2206788 (= (nullableZipper!2667 (derivationStepZipper!3034 lt!2533954 (head!14368 (t!382058 s!7408)))) (exists!3584 (derivationStepZipper!3034 lt!2533954 (head!14368 (t!382058 s!7408))) lambda!421364))))

(declare-fun bs!1878186 () Bool)

(assert (= bs!1878186 d!2206788))

(assert (=> bs!1878186 m!7776790))

(declare-fun m!7778488 () Bool)

(assert (=> bs!1878186 m!7778488))

(assert (=> b!7058103 d!2206788))

(declare-fun b!7059047 () Bool)

(declare-fun e!4243829 () Int)

(declare-fun e!4243830 () Int)

(assert (=> b!7059047 (= e!4243829 e!4243830)))

(declare-fun c!1315534 () Bool)

(assert (=> b!7059047 (= c!1315534 (is-Star!17584 (h!74602 (exprs!7080 (h!74604 (toList!10925 lt!2533927))))))))

(declare-fun b!7059048 () Bool)

(declare-fun e!4243832 () Int)

(declare-fun e!4243831 () Int)

(assert (=> b!7059048 (= e!4243832 e!4243831)))

(declare-fun c!1315537 () Bool)

(assert (=> b!7059048 (= c!1315537 (is-Concat!26429 (h!74602 (exprs!7080 (h!74604 (toList!10925 lt!2533927))))))))

(declare-fun b!7059049 () Bool)

(declare-fun c!1315535 () Bool)

(assert (=> b!7059049 (= c!1315535 (is-Union!17584 (h!74602 (exprs!7080 (h!74604 (toList!10925 lt!2533927))))))))

(assert (=> b!7059049 (= e!4243830 e!4243832)))

(declare-fun call!641424 () Int)

(declare-fun bm!641417 () Bool)

(assert (=> bm!641417 (= call!641424 (regexDepthTotal!316 (ite c!1315534 (reg!17913 (h!74602 (exprs!7080 (h!74604 (toList!10925 lt!2533927))))) (ite c!1315535 (regTwo!35681 (h!74602 (exprs!7080 (h!74604 (toList!10925 lt!2533927))))) (regOne!35680 (h!74602 (exprs!7080 (h!74604 (toList!10925 lt!2533927)))))))))))

(declare-fun b!7059050 () Bool)

(assert (=> b!7059050 (= e!4243831 1)))

(declare-fun b!7059051 () Bool)

(declare-fun call!641422 () Int)

(declare-fun call!641423 () Int)

(assert (=> b!7059051 (= e!4243831 (+ 1 call!641422 call!641423))))

(declare-fun d!2206790 () Bool)

(declare-fun lt!2534320 () Int)

(assert (=> d!2206790 (> lt!2534320 0)))

(assert (=> d!2206790 (= lt!2534320 e!4243829)))

(declare-fun c!1315536 () Bool)

(assert (=> d!2206790 (= c!1315536 (is-ElementMatch!17584 (h!74602 (exprs!7080 (h!74604 (toList!10925 lt!2533927))))))))

(assert (=> d!2206790 (= (regexDepthTotal!316 (h!74602 (exprs!7080 (h!74604 (toList!10925 lt!2533927))))) lt!2534320)))

(declare-fun b!7059052 () Bool)

(assert (=> b!7059052 (= e!4243832 (+ 1 call!641423 call!641422))))

(declare-fun b!7059053 () Bool)

(assert (=> b!7059053 (= e!4243830 (+ 1 call!641424))))

(declare-fun bm!641418 () Bool)

(assert (=> bm!641418 (= call!641423 (regexDepthTotal!316 (ite c!1315535 (regOne!35681 (h!74602 (exprs!7080 (h!74604 (toList!10925 lt!2533927))))) (regTwo!35680 (h!74602 (exprs!7080 (h!74604 (toList!10925 lt!2533927))))))))))

(declare-fun b!7059054 () Bool)

(assert (=> b!7059054 (= e!4243829 1)))

(declare-fun bm!641419 () Bool)

(assert (=> bm!641419 (= call!641422 call!641424)))

(assert (= (and d!2206790 c!1315536) b!7059054))

(assert (= (and d!2206790 (not c!1315536)) b!7059047))

(assert (= (and b!7059047 c!1315534) b!7059053))

(assert (= (and b!7059047 (not c!1315534)) b!7059049))

(assert (= (and b!7059049 c!1315535) b!7059052))

(assert (= (and b!7059049 (not c!1315535)) b!7059048))

(assert (= (and b!7059048 c!1315537) b!7059051))

(assert (= (and b!7059048 (not c!1315537)) b!7059050))

(assert (= (or b!7059052 b!7059051) bm!641419))

(assert (= (or b!7059052 b!7059051) bm!641418))

(assert (= (or b!7059053 bm!641419) bm!641417))

(declare-fun m!7778490 () Bool)

(assert (=> bm!641417 m!7778490))

(declare-fun m!7778492 () Bool)

(assert (=> bm!641418 m!7778492))

(assert (=> b!7058249 d!2206790))

(declare-fun d!2206792 () Bool)

(declare-fun lt!2534321 () Int)

(assert (=> d!2206792 (>= lt!2534321 0)))

(declare-fun e!4243833 () Int)

(assert (=> d!2206792 (= lt!2534321 e!4243833)))

(declare-fun c!1315538 () Bool)

(assert (=> d!2206792 (= c!1315538 (is-Cons!68154 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (h!74604 (toList!10925 lt!2533927))))))))))

(assert (=> d!2206792 (= (contextDepthTotal!520 (Context!13161 (t!382057 (exprs!7080 (h!74604 (toList!10925 lt!2533927)))))) lt!2534321)))

(declare-fun b!7059055 () Bool)

(assert (=> b!7059055 (= e!4243833 (+ (regexDepthTotal!316 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (h!74604 (toList!10925 lt!2533927)))))))) (contextDepthTotal!520 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (h!74604 (toList!10925 lt!2533927)))))))))))))

(declare-fun b!7059056 () Bool)

(assert (=> b!7059056 (= e!4243833 1)))

(assert (= (and d!2206792 c!1315538) b!7059055))

(assert (= (and d!2206792 (not c!1315538)) b!7059056))

(declare-fun m!7778494 () Bool)

(assert (=> b!7059055 m!7778494))

(declare-fun m!7778496 () Bool)

(assert (=> b!7059055 m!7778496))

(assert (=> b!7058249 d!2206792))

(declare-fun d!2206794 () Bool)

(assert (=> d!2206794 (= (nullable!7267 (regOne!35680 (h!74602 (exprs!7080 lt!2533928)))) (nullableFct!2783 (regOne!35680 (h!74602 (exprs!7080 lt!2533928)))))))

(declare-fun bs!1878187 () Bool)

(assert (= bs!1878187 d!2206794))

(declare-fun m!7778498 () Bool)

(assert (=> bs!1878187 m!7778498))

(assert (=> b!7058266 d!2206794))

(declare-fun b!7059057 () Bool)

(declare-fun e!4243839 () (Set Context!13160))

(declare-fun call!641430 () (Set Context!13160))

(assert (=> b!7059057 (= e!4243839 call!641430)))

(declare-fun call!641429 () List!68278)

(declare-fun c!1315540 () Bool)

(declare-fun bm!641420 () Bool)

(declare-fun c!1315542 () Bool)

(assert (=> bm!641420 (= call!641429 ($colon$colon!2630 (exprs!7080 (ite c!1315250 (ite c!1315151 lt!2533961 (Context!13161 call!641205)) (Context!13161 call!641250))) (ite (or c!1315542 c!1315540) (regTwo!35680 (ite c!1315250 (regTwo!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315250 (regTwo!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))))))))

(declare-fun b!7059058 () Bool)

(declare-fun e!4243834 () Bool)

(assert (=> b!7059058 (= c!1315542 e!4243834)))

(declare-fun res!2881772 () Bool)

(assert (=> b!7059058 (=> (not res!2881772) (not e!4243834))))

(assert (=> b!7059058 (= res!2881772 (is-Concat!26429 (ite c!1315250 (regTwo!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))))))))

(declare-fun e!4243837 () (Set Context!13160))

(declare-fun e!4243838 () (Set Context!13160))

(assert (=> b!7059058 (= e!4243837 e!4243838)))

(declare-fun b!7059059 () Bool)

(assert (=> b!7059059 (= e!4243834 (nullable!7267 (regOne!35680 (ite c!1315250 (regTwo!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))))))))

(declare-fun b!7059060 () Bool)

(declare-fun e!4243836 () (Set Context!13160))

(assert (=> b!7059060 (= e!4243838 e!4243836)))

(assert (=> b!7059060 (= c!1315540 (is-Concat!26429 (ite c!1315250 (regTwo!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))))))))

(declare-fun b!7059061 () Bool)

(assert (=> b!7059061 (= e!4243839 (as set.empty (Set Context!13160)))))

(declare-fun bm!641421 () Bool)

(declare-fun call!641427 () (Set Context!13160))

(declare-fun call!641426 () (Set Context!13160))

(assert (=> bm!641421 (= call!641427 call!641426)))

(declare-fun b!7059062 () Bool)

(declare-fun call!641428 () (Set Context!13160))

(assert (=> b!7059062 (= e!4243837 (set.union call!641426 call!641428))))

(declare-fun b!7059063 () Bool)

(declare-fun c!1315541 () Bool)

(assert (=> b!7059063 (= c!1315541 (is-Star!17584 (ite c!1315250 (regTwo!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))))))))

(assert (=> b!7059063 (= e!4243836 e!4243839)))

(declare-fun bm!641422 () Bool)

(assert (=> bm!641422 (= call!641430 call!641427)))

(declare-fun e!4243835 () (Set Context!13160))

(declare-fun b!7059064 () Bool)

(assert (=> b!7059064 (= e!4243835 (set.insert (ite c!1315250 (ite c!1315151 lt!2533961 (Context!13161 call!641205)) (Context!13161 call!641250)) (as set.empty (Set Context!13160))))))

(declare-fun c!1315543 () Bool)

(declare-fun bm!641424 () Bool)

(declare-fun call!641425 () List!68278)

(assert (=> bm!641424 (= call!641426 (derivationStepZipperDown!2218 (ite c!1315543 (regOne!35681 (ite c!1315250 (regTwo!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315542 (regTwo!35680 (ite c!1315250 (regTwo!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315540 (regOne!35680 (ite c!1315250 (regTwo!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))))) (reg!17913 (ite c!1315250 (regTwo!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))))))) (ite (or c!1315543 c!1315542) (ite c!1315250 (ite c!1315151 lt!2533961 (Context!13161 call!641205)) (Context!13161 call!641250)) (Context!13161 call!641425)) (h!74603 s!7408)))))

(declare-fun b!7059065 () Bool)

(assert (=> b!7059065 (= e!4243835 e!4243837)))

(assert (=> b!7059065 (= c!1315543 (is-Union!17584 (ite c!1315250 (regTwo!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))))))))

(declare-fun bm!641425 () Bool)

(assert (=> bm!641425 (= call!641425 call!641429)))

(declare-fun b!7059066 () Bool)

(assert (=> b!7059066 (= e!4243836 call!641430)))

(declare-fun b!7059067 () Bool)

(assert (=> b!7059067 (= e!4243838 (set.union call!641428 call!641427))))

(declare-fun c!1315539 () Bool)

(declare-fun d!2206796 () Bool)

(assert (=> d!2206796 (= c!1315539 (and (is-ElementMatch!17584 (ite c!1315250 (regTwo!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))))) (= (c!1315081 (ite c!1315250 (regTwo!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))))) (h!74603 s!7408))))))

(assert (=> d!2206796 (= (derivationStepZipperDown!2218 (ite c!1315250 (regTwo!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))) (ite c!1315250 (ite c!1315151 lt!2533961 (Context!13161 call!641205)) (Context!13161 call!641250)) (h!74603 s!7408)) e!4243835)))

(declare-fun bm!641423 () Bool)

(assert (=> bm!641423 (= call!641428 (derivationStepZipperDown!2218 (ite c!1315543 (regTwo!35681 (ite c!1315250 (regTwo!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))))) (regOne!35680 (ite c!1315250 (regTwo!35681 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (regOne!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))))) (ite c!1315543 (ite c!1315250 (ite c!1315151 lt!2533961 (Context!13161 call!641205)) (Context!13161 call!641250)) (Context!13161 call!641429)) (h!74603 s!7408)))))

(assert (= (and d!2206796 c!1315539) b!7059064))

(assert (= (and d!2206796 (not c!1315539)) b!7059065))

(assert (= (and b!7059065 c!1315543) b!7059062))

(assert (= (and b!7059065 (not c!1315543)) b!7059058))

(assert (= (and b!7059058 res!2881772) b!7059059))

(assert (= (and b!7059058 c!1315542) b!7059067))

(assert (= (and b!7059058 (not c!1315542)) b!7059060))

(assert (= (and b!7059060 c!1315540) b!7059066))

(assert (= (and b!7059060 (not c!1315540)) b!7059063))

(assert (= (and b!7059063 c!1315541) b!7059057))

(assert (= (and b!7059063 (not c!1315541)) b!7059061))

(assert (= (or b!7059066 b!7059057) bm!641425))

(assert (= (or b!7059066 b!7059057) bm!641422))

(assert (= (or b!7059067 bm!641422) bm!641421))

(assert (= (or b!7059067 bm!641425) bm!641420))

(assert (= (or b!7059062 bm!641421) bm!641424))

(assert (= (or b!7059062 b!7059067) bm!641423))

(declare-fun m!7778500 () Bool)

(assert (=> bm!641424 m!7778500))

(declare-fun m!7778502 () Bool)

(assert (=> bm!641423 m!7778502))

(declare-fun m!7778504 () Bool)

(assert (=> bm!641420 m!7778504))

(declare-fun m!7778506 () Bool)

(assert (=> b!7059064 m!7778506))

(declare-fun m!7778508 () Bool)

(assert (=> b!7059059 m!7778508))

(assert (=> bm!641244 d!2206796))

(declare-fun d!2206798 () Bool)

(declare-fun c!1315544 () Bool)

(assert (=> d!2206798 (= c!1315544 (isEmpty!39754 (tail!13726 (tail!13726 (t!382058 s!7408)))))))

(declare-fun e!4243840 () Bool)

(assert (=> d!2206798 (= (matchZipper!3124 (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533946 (head!14368 (t!382058 s!7408))) (head!14368 (tail!13726 (t!382058 s!7408)))) (tail!13726 (tail!13726 (t!382058 s!7408)))) e!4243840)))

(declare-fun b!7059068 () Bool)

(assert (=> b!7059068 (= e!4243840 (nullableZipper!2667 (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533946 (head!14368 (t!382058 s!7408))) (head!14368 (tail!13726 (t!382058 s!7408))))))))

(declare-fun b!7059069 () Bool)

(assert (=> b!7059069 (= e!4243840 (matchZipper!3124 (derivationStepZipper!3034 (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533946 (head!14368 (t!382058 s!7408))) (head!14368 (tail!13726 (t!382058 s!7408)))) (head!14368 (tail!13726 (tail!13726 (t!382058 s!7408))))) (tail!13726 (tail!13726 (tail!13726 (t!382058 s!7408))))))))

(assert (= (and d!2206798 c!1315544) b!7059068))

(assert (= (and d!2206798 (not c!1315544)) b!7059069))

(assert (=> d!2206798 m!7777130))

(assert (=> d!2206798 m!7778232))

(assert (=> b!7059068 m!7777204))

(declare-fun m!7778510 () Bool)

(assert (=> b!7059068 m!7778510))

(assert (=> b!7059069 m!7777130))

(assert (=> b!7059069 m!7778236))

(assert (=> b!7059069 m!7777204))

(assert (=> b!7059069 m!7778236))

(declare-fun m!7778512 () Bool)

(assert (=> b!7059069 m!7778512))

(assert (=> b!7059069 m!7777130))

(assert (=> b!7059069 m!7778240))

(assert (=> b!7059069 m!7778512))

(assert (=> b!7059069 m!7778240))

(declare-fun m!7778514 () Bool)

(assert (=> b!7059069 m!7778514))

(assert (=> b!7058181 d!2206798))

(declare-fun bs!1878188 () Bool)

(declare-fun d!2206800 () Bool)

(assert (= bs!1878188 (and d!2206800 d!2205914)))

(declare-fun lambda!421365 () Int)

(assert (=> bs!1878188 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (h!74603 s!7408)) (= lambda!421365 lambda!421276))))

(declare-fun bs!1878189 () Bool)

(assert (= bs!1878189 (and d!2206800 d!2206654)))

(assert (=> bs!1878189 (= lambda!421365 lambda!421354)))

(declare-fun bs!1878190 () Bool)

(assert (= bs!1878190 (and d!2206800 d!2206094)))

(assert (=> bs!1878190 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 (t!382058 s!7408))) (= lambda!421365 lambda!421299))))

(declare-fun bs!1878191 () Bool)

(assert (= bs!1878191 (and d!2206800 d!2206138)))

(assert (=> bs!1878191 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 s!7408)) (= lambda!421365 lambda!421307))))

(declare-fun bs!1878192 () Bool)

(assert (= bs!1878192 (and d!2206800 d!2206614)))

(assert (=> bs!1878192 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 s!7408)) (= lambda!421365 lambda!421350))))

(declare-fun bs!1878193 () Bool)

(assert (= bs!1878193 (and d!2206800 d!2206590)))

(assert (=> bs!1878193 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 (t!382058 s!7408))) (= lambda!421365 lambda!421347))))

(declare-fun bs!1878194 () Bool)

(assert (= bs!1878194 (and d!2206800 d!2206120)))

(assert (=> bs!1878194 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 (t!382058 s!7408))) (= lambda!421365 lambda!421304))))

(declare-fun bs!1878195 () Bool)

(assert (= bs!1878195 (and d!2206800 d!2206056)))

(assert (=> bs!1878195 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 (t!382058 s!7408))) (= lambda!421365 lambda!421298))))

(declare-fun bs!1878196 () Bool)

(assert (= bs!1878196 (and d!2206800 d!2206228)))

(assert (=> bs!1878196 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 s!7408)) (= lambda!421365 lambda!421317))))

(declare-fun bs!1878197 () Bool)

(assert (= bs!1878197 (and d!2206800 d!2206268)))

(assert (=> bs!1878197 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 s!7408)) (= lambda!421365 lambda!421318))))

(declare-fun bs!1878198 () Bool)

(assert (= bs!1878198 (and d!2206800 d!2206100)))

(assert (=> bs!1878198 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 s!7408)) (= lambda!421365 lambda!421303))))

(declare-fun bs!1878199 () Bool)

(assert (= bs!1878199 (and d!2206800 d!2206704)))

(assert (=> bs!1878199 (= lambda!421365 lambda!421358)))

(declare-fun bs!1878200 () Bool)

(assert (= bs!1878200 (and d!2206800 d!2206740)))

(assert (=> bs!1878200 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 (tail!13726 s!7408))) (= lambda!421365 lambda!421362))))

(declare-fun bs!1878201 () Bool)

(assert (= bs!1878201 (and d!2206800 b!7057661)))

(assert (=> bs!1878201 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (h!74603 s!7408)) (= lambda!421365 lambda!421196))))

(declare-fun bs!1878202 () Bool)

(assert (= bs!1878202 (and d!2206800 d!2205882)))

(assert (=> bs!1878202 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (h!74603 s!7408)) (= lambda!421365 lambda!421274))))

(declare-fun bs!1878203 () Bool)

(assert (= bs!1878203 (and d!2206800 d!2206580)))

(assert (=> bs!1878203 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 (tail!13726 s!7408))) (= lambda!421365 lambda!421346))))

(declare-fun bs!1878204 () Bool)

(assert (= bs!1878204 (and d!2206800 d!2206200)))

(assert (=> bs!1878204 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 (t!382058 s!7408))) (= lambda!421365 lambda!421314))))

(assert (=> d!2206800 true))

(assert (=> d!2206800 (= (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533946 (head!14368 (t!382058 s!7408))) (head!14368 (tail!13726 (t!382058 s!7408)))) (flatMap!2510 (derivationStepZipper!3034 lt!2533946 (head!14368 (t!382058 s!7408))) lambda!421365))))

(declare-fun bs!1878205 () Bool)

(assert (= bs!1878205 d!2206800))

(assert (=> bs!1878205 m!7776694))

(declare-fun m!7778516 () Bool)

(assert (=> bs!1878205 m!7778516))

(assert (=> b!7058181 d!2206800))

(assert (=> b!7058181 d!2206656))

(assert (=> b!7058181 d!2206658))

(declare-fun d!2206802 () Bool)

(declare-fun res!2881773 () Bool)

(declare-fun e!4243841 () Bool)

(assert (=> d!2206802 (=> res!2881773 e!4243841)))

(assert (=> d!2206802 (= res!2881773 (is-Nil!68156 res!2881532))))

(assert (=> d!2206802 (= (noDuplicate!2698 res!2881532) e!4243841)))

(declare-fun b!7059070 () Bool)

(declare-fun e!4243842 () Bool)

(assert (=> b!7059070 (= e!4243841 e!4243842)))

(declare-fun res!2881774 () Bool)

(assert (=> b!7059070 (=> (not res!2881774) (not e!4243842))))

(assert (=> b!7059070 (= res!2881774 (not (contains!20486 (t!382059 res!2881532) (h!74604 res!2881532))))))

(declare-fun b!7059071 () Bool)

(assert (=> b!7059071 (= e!4243842 (noDuplicate!2698 (t!382059 res!2881532)))))

(assert (= (and d!2206802 (not res!2881773)) b!7059070))

(assert (= (and b!7059070 res!2881774) b!7059071))

(declare-fun m!7778518 () Bool)

(assert (=> b!7059070 m!7778518))

(declare-fun m!7778520 () Bool)

(assert (=> b!7059071 m!7778520))

(assert (=> d!2206152 d!2206802))

(declare-fun d!2206804 () Bool)

(declare-fun res!2881775 () Bool)

(declare-fun e!4243843 () Bool)

(assert (=> d!2206804 (=> res!2881775 e!4243843)))

(assert (=> d!2206804 (= res!2881775 (is-Nil!68156 res!2881552))))

(assert (=> d!2206804 (= (noDuplicate!2698 res!2881552) e!4243843)))

(declare-fun b!7059072 () Bool)

(declare-fun e!4243844 () Bool)

(assert (=> b!7059072 (= e!4243843 e!4243844)))

(declare-fun res!2881776 () Bool)

(assert (=> b!7059072 (=> (not res!2881776) (not e!4243844))))

(assert (=> b!7059072 (= res!2881776 (not (contains!20486 (t!382059 res!2881552) (h!74604 res!2881552))))))

(declare-fun b!7059073 () Bool)

(assert (=> b!7059073 (= e!4243844 (noDuplicate!2698 (t!382059 res!2881552)))))

(assert (= (and d!2206804 (not res!2881775)) b!7059072))

(assert (= (and b!7059072 res!2881776) b!7059073))

(declare-fun m!7778522 () Bool)

(assert (=> b!7059072 m!7778522))

(declare-fun m!7778524 () Bool)

(assert (=> b!7059073 m!7778524))

(assert (=> d!2206238 d!2206804))

(declare-fun d!2206806 () Bool)

(declare-fun lt!2534322 () Int)

(assert (=> d!2206806 (>= lt!2534322 0)))

(declare-fun e!4243845 () Int)

(assert (=> d!2206806 (= lt!2534322 e!4243845)))

(declare-fun c!1315545 () Bool)

(assert (=> d!2206806 (= c!1315545 (is-Nil!68154 (t!382057 lt!2534129)))))

(assert (=> d!2206806 (= (size!41161 (t!382057 lt!2534129)) lt!2534322)))

(declare-fun b!7059074 () Bool)

(assert (=> b!7059074 (= e!4243845 0)))

(declare-fun b!7059075 () Bool)

(assert (=> b!7059075 (= e!4243845 (+ 1 (size!41161 (t!382057 (t!382057 lt!2534129)))))))

(assert (= (and d!2206806 c!1315545) b!7059074))

(assert (= (and d!2206806 (not c!1315545)) b!7059075))

(declare-fun m!7778526 () Bool)

(assert (=> b!7059075 m!7778526))

(assert (=> b!7058374 d!2206806))

(declare-fun b!7059076 () Bool)

(declare-fun res!2881781 () Bool)

(declare-fun e!4243852 () Bool)

(assert (=> b!7059076 (=> (not res!2881781) (not e!4243852))))

(declare-fun call!641431 () Bool)

(assert (=> b!7059076 (= res!2881781 call!641431)))

(declare-fun e!4243851 () Bool)

(assert (=> b!7059076 (= e!4243851 e!4243852)))

(declare-fun b!7059077 () Bool)

(declare-fun e!4243849 () Bool)

(declare-fun call!641433 () Bool)

(assert (=> b!7059077 (= e!4243849 call!641433)))

(declare-fun bm!641426 () Bool)

(assert (=> bm!641426 (= call!641431 call!641433)))

(declare-fun b!7059078 () Bool)

(declare-fun res!2881777 () Bool)

(declare-fun e!4243847 () Bool)

(assert (=> b!7059078 (=> res!2881777 e!4243847)))

(assert (=> b!7059078 (= res!2881777 (not (is-Concat!26429 (h!74602 (++!15667 lt!2533935 (exprs!7080 ct2!306))))))))

(assert (=> b!7059078 (= e!4243851 e!4243847)))

(declare-fun b!7059079 () Bool)

(declare-fun e!4243850 () Bool)

(declare-fun e!4243846 () Bool)

(assert (=> b!7059079 (= e!4243850 e!4243846)))

(declare-fun c!1315547 () Bool)

(assert (=> b!7059079 (= c!1315547 (is-Star!17584 (h!74602 (++!15667 lt!2533935 (exprs!7080 ct2!306)))))))

(declare-fun b!7059080 () Bool)

(declare-fun e!4243848 () Bool)

(assert (=> b!7059080 (= e!4243847 e!4243848)))

(declare-fun res!2881778 () Bool)

(assert (=> b!7059080 (=> (not res!2881778) (not e!4243848))))

(assert (=> b!7059080 (= res!2881778 call!641431)))

(declare-fun b!7059081 () Bool)

(assert (=> b!7059081 (= e!4243846 e!4243849)))

(declare-fun res!2881780 () Bool)

(assert (=> b!7059081 (= res!2881780 (not (nullable!7267 (reg!17913 (h!74602 (++!15667 lt!2533935 (exprs!7080 ct2!306)))))))))

(assert (=> b!7059081 (=> (not res!2881780) (not e!4243849))))

(declare-fun b!7059082 () Bool)

(declare-fun call!641432 () Bool)

(assert (=> b!7059082 (= e!4243848 call!641432)))

(declare-fun bm!641427 () Bool)

(declare-fun c!1315546 () Bool)

(assert (=> bm!641427 (= call!641432 (validRegex!8960 (ite c!1315546 (regTwo!35681 (h!74602 (++!15667 lt!2533935 (exprs!7080 ct2!306)))) (regTwo!35680 (h!74602 (++!15667 lt!2533935 (exprs!7080 ct2!306)))))))))

(declare-fun d!2206808 () Bool)

(declare-fun res!2881779 () Bool)

(assert (=> d!2206808 (=> res!2881779 e!4243850)))

(assert (=> d!2206808 (= res!2881779 (is-ElementMatch!17584 (h!74602 (++!15667 lt!2533935 (exprs!7080 ct2!306)))))))

(assert (=> d!2206808 (= (validRegex!8960 (h!74602 (++!15667 lt!2533935 (exprs!7080 ct2!306)))) e!4243850)))

(declare-fun b!7059083 () Bool)

(assert (=> b!7059083 (= e!4243852 call!641432)))

(declare-fun b!7059084 () Bool)

(assert (=> b!7059084 (= e!4243846 e!4243851)))

(assert (=> b!7059084 (= c!1315546 (is-Union!17584 (h!74602 (++!15667 lt!2533935 (exprs!7080 ct2!306)))))))

(declare-fun bm!641428 () Bool)

(assert (=> bm!641428 (= call!641433 (validRegex!8960 (ite c!1315547 (reg!17913 (h!74602 (++!15667 lt!2533935 (exprs!7080 ct2!306)))) (ite c!1315546 (regOne!35681 (h!74602 (++!15667 lt!2533935 (exprs!7080 ct2!306)))) (regOne!35680 (h!74602 (++!15667 lt!2533935 (exprs!7080 ct2!306))))))))))

(assert (= (and d!2206808 (not res!2881779)) b!7059079))

(assert (= (and b!7059079 c!1315547) b!7059081))

(assert (= (and b!7059079 (not c!1315547)) b!7059084))

(assert (= (and b!7059081 res!2881780) b!7059077))

(assert (= (and b!7059084 c!1315546) b!7059076))

(assert (= (and b!7059084 (not c!1315546)) b!7059078))

(assert (= (and b!7059076 res!2881781) b!7059083))

(assert (= (and b!7059078 (not res!2881777)) b!7059080))

(assert (= (and b!7059080 res!2881778) b!7059082))

(assert (= (or b!7059083 b!7059082) bm!641427))

(assert (= (or b!7059076 b!7059080) bm!641426))

(assert (= (or b!7059077 bm!641426) bm!641428))

(declare-fun m!7778528 () Bool)

(assert (=> b!7059081 m!7778528))

(declare-fun m!7778530 () Bool)

(assert (=> bm!641427 m!7778530))

(declare-fun m!7778532 () Bool)

(assert (=> bm!641428 m!7778532))

(assert (=> bs!1877654 d!2206808))

(declare-fun bs!1878206 () Bool)

(declare-fun d!2206810 () Bool)

(assert (= bs!1878206 (and d!2206810 d!2206712)))

(declare-fun lambda!421366 () Int)

(assert (=> bs!1878206 (= lambda!421366 lambda!421360)))

(declare-fun bs!1878207 () Bool)

(assert (= bs!1878207 (and d!2206810 d!2206096)))

(assert (=> bs!1878207 (= lambda!421366 lambda!421302)))

(declare-fun bs!1878208 () Bool)

(assert (= bs!1878208 (and d!2206810 d!2206564)))

(assert (=> bs!1878208 (not (= lambda!421366 lambda!421345))))

(declare-fun bs!1878209 () Bool)

(assert (= bs!1878209 (and d!2206810 d!2206206)))

(assert (=> bs!1878209 (= lambda!421366 lambda!421315)))

(declare-fun bs!1878210 () Bool)

(assert (= bs!1878210 (and d!2206810 d!2206128)))

(assert (=> bs!1878210 (= lambda!421366 lambda!421305)))

(declare-fun bs!1878211 () Bool)

(assert (= bs!1878211 (and d!2206810 d!2205874)))

(assert (=> bs!1878211 (not (= lambda!421366 lambda!421268))))

(declare-fun bs!1878212 () Bool)

(assert (= bs!1878212 (and d!2206810 d!2206130)))

(assert (=> bs!1878212 (= lambda!421366 lambda!421306)))

(declare-fun bs!1878213 () Bool)

(assert (= bs!1878213 (and d!2206810 d!2206270)))

(assert (=> bs!1878213 (= lambda!421366 lambda!421319)))

(declare-fun bs!1878214 () Bool)

(assert (= bs!1878214 (and d!2206810 d!2206170)))

(assert (=> bs!1878214 (= lambda!421366 lambda!421312)))

(declare-fun bs!1878215 () Bool)

(assert (= bs!1878215 (and d!2206810 d!2206706)))

(assert (=> bs!1878215 (= lambda!421366 lambda!421359)))

(declare-fun bs!1878216 () Bool)

(assert (= bs!1878216 (and d!2206810 d!2206602)))

(assert (=> bs!1878216 (= lambda!421366 lambda!421349)))

(declare-fun bs!1878217 () Bool)

(assert (= bs!1878217 (and d!2206810 d!2206644)))

(assert (=> bs!1878217 (= lambda!421366 lambda!421353)))

(declare-fun bs!1878218 () Bool)

(assert (= bs!1878218 (and d!2206810 d!2206554)))

(assert (=> bs!1878218 (= lambda!421366 lambda!421343)))

(declare-fun bs!1878219 () Bool)

(assert (= bs!1878219 (and d!2206810 d!2206196)))

(assert (=> bs!1878219 (= lambda!421366 lambda!421313)))

(declare-fun bs!1878220 () Bool)

(assert (= bs!1878220 (and d!2206810 d!2206616)))

(assert (=> bs!1878220 (= lambda!421366 lambda!421351)))

(declare-fun bs!1878221 () Bool)

(assert (= bs!1878221 (and d!2206810 d!2206600)))

(assert (=> bs!1878221 (not (= lambda!421366 lambda!421348))))

(declare-fun bs!1878222 () Bool)

(assert (= bs!1878222 (and d!2206810 d!2206560)))

(assert (=> bs!1878222 (= lambda!421366 lambda!421344)))

(declare-fun bs!1878223 () Bool)

(assert (= bs!1878223 (and d!2206810 b!7057676)))

(assert (=> bs!1878223 (not (= lambda!421366 lambda!421193))))

(declare-fun bs!1878224 () Bool)

(assert (= bs!1878224 (and d!2206810 d!2206788)))

(assert (=> bs!1878224 (= lambda!421366 lambda!421364)))

(declare-fun bs!1878225 () Bool)

(assert (= bs!1878225 (and d!2206810 d!2206214)))

(assert (=> bs!1878225 (= lambda!421366 lambda!421316)))

(declare-fun bs!1878226 () Bool)

(assert (= bs!1878226 (and d!2206810 d!2206158)))

(assert (=> bs!1878226 (not (= lambda!421366 lambda!421311))))

(declare-fun bs!1878227 () Bool)

(assert (= bs!1878227 (and d!2206810 d!2206156)))

(assert (=> bs!1878227 (not (= lambda!421366 lambda!421308))))

(declare-fun bs!1878228 () Bool)

(assert (= bs!1878228 (and d!2206810 d!2206692)))

(assert (=> bs!1878228 (= lambda!421366 lambda!421357)))

(declare-fun bs!1878229 () Bool)

(assert (= bs!1878229 (and d!2206810 d!2205876)))

(assert (=> bs!1878229 (not (= lambda!421366 lambda!421271))))

(assert (=> d!2206810 (= (nullableZipper!2667 (derivationStepZipper!3034 lt!2533930 (head!14368 s!7408))) (exists!3584 (derivationStepZipper!3034 lt!2533930 (head!14368 s!7408)) lambda!421366))))

(declare-fun bs!1878230 () Bool)

(assert (= bs!1878230 d!2206810))

(assert (=> bs!1878230 m!7776604))

(declare-fun m!7778534 () Bool)

(assert (=> bs!1878230 m!7778534))

(assert (=> b!7058182 d!2206810))

(declare-fun b!7059085 () Bool)

(declare-fun e!4243853 () (Set Context!13160))

(declare-fun call!641434 () (Set Context!13160))

(assert (=> b!7059085 (= e!4243853 call!641434)))

(declare-fun b!7059086 () Bool)

(declare-fun e!4243854 () Bool)

(assert (=> b!7059086 (= e!4243854 (nullable!7267 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928))))))))))))

(declare-fun e!4243855 () (Set Context!13160))

(declare-fun b!7059087 () Bool)

(assert (=> b!7059087 (= e!4243855 (set.union call!641434 (derivationStepZipperUp!2168 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928))))))))) (h!74603 s!7408))))))

(declare-fun b!7059088 () Bool)

(assert (=> b!7059088 (= e!4243853 (as set.empty (Set Context!13160)))))

(declare-fun b!7059089 () Bool)

(assert (=> b!7059089 (= e!4243855 e!4243853)))

(declare-fun c!1315549 () Bool)

(assert (=> b!7059089 (= c!1315549 (is-Cons!68154 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928)))))))))))

(declare-fun d!2206812 () Bool)

(declare-fun c!1315548 () Bool)

(assert (=> d!2206812 (= c!1315548 e!4243854)))

(declare-fun res!2881782 () Bool)

(assert (=> d!2206812 (=> (not res!2881782) (not e!4243854))))

(assert (=> d!2206812 (= res!2881782 (is-Cons!68154 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928)))))))))))

(assert (=> d!2206812 (= (derivationStepZipperUp!2168 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928)))))) (h!74603 s!7408)) e!4243855)))

(declare-fun bm!641429 () Bool)

(assert (=> bm!641429 (= call!641434 (derivationStepZipperDown!2218 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928)))))))) (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928))))))))) (h!74603 s!7408)))))

(assert (= (and d!2206812 res!2881782) b!7059086))

(assert (= (and d!2206812 c!1315548) b!7059087))

(assert (= (and d!2206812 (not c!1315548)) b!7059089))

(assert (= (and b!7059089 c!1315549) b!7059085))

(assert (= (and b!7059089 (not c!1315549)) b!7059088))

(assert (= (or b!7059087 b!7059085) bm!641429))

(declare-fun m!7778536 () Bool)

(assert (=> b!7059086 m!7778536))

(declare-fun m!7778538 () Bool)

(assert (=> b!7059087 m!7778538))

(declare-fun m!7778540 () Bool)

(assert (=> bm!641429 m!7778540))

(assert (=> b!7058297 d!2206812))

(declare-fun b!7059090 () Bool)

(declare-fun e!4243861 () (Set Context!13160))

(declare-fun call!641440 () (Set Context!13160))

(assert (=> b!7059090 (= e!4243861 call!641440)))

(declare-fun c!1315551 () Bool)

(declare-fun bm!641430 () Bool)

(declare-fun c!1315553 () Bool)

(declare-fun call!641439 () List!68278)

(assert (=> bm!641430 (= call!641439 ($colon$colon!2630 (exprs!7080 (ite c!1315283 (Context!13161 (t!382057 (exprs!7080 lt!2533928))) (Context!13161 call!641263))) (ite (or c!1315553 c!1315551) (regTwo!35680 (ite c!1315283 (regTwo!35681 (h!74602 (exprs!7080 lt!2533928))) (regOne!35680 (h!74602 (exprs!7080 lt!2533928))))) (ite c!1315283 (regTwo!35681 (h!74602 (exprs!7080 lt!2533928))) (regOne!35680 (h!74602 (exprs!7080 lt!2533928)))))))))

(declare-fun b!7059091 () Bool)

(declare-fun e!4243856 () Bool)

(assert (=> b!7059091 (= c!1315553 e!4243856)))

(declare-fun res!2881783 () Bool)

(assert (=> b!7059091 (=> (not res!2881783) (not e!4243856))))

(assert (=> b!7059091 (= res!2881783 (is-Concat!26429 (ite c!1315283 (regTwo!35681 (h!74602 (exprs!7080 lt!2533928))) (regOne!35680 (h!74602 (exprs!7080 lt!2533928))))))))

(declare-fun e!4243859 () (Set Context!13160))

(declare-fun e!4243860 () (Set Context!13160))

(assert (=> b!7059091 (= e!4243859 e!4243860)))

(declare-fun b!7059092 () Bool)

(assert (=> b!7059092 (= e!4243856 (nullable!7267 (regOne!35680 (ite c!1315283 (regTwo!35681 (h!74602 (exprs!7080 lt!2533928))) (regOne!35680 (h!74602 (exprs!7080 lt!2533928)))))))))

(declare-fun b!7059093 () Bool)

(declare-fun e!4243858 () (Set Context!13160))

(assert (=> b!7059093 (= e!4243860 e!4243858)))

(assert (=> b!7059093 (= c!1315551 (is-Concat!26429 (ite c!1315283 (regTwo!35681 (h!74602 (exprs!7080 lt!2533928))) (regOne!35680 (h!74602 (exprs!7080 lt!2533928))))))))

(declare-fun b!7059094 () Bool)

(assert (=> b!7059094 (= e!4243861 (as set.empty (Set Context!13160)))))

(declare-fun bm!641431 () Bool)

(declare-fun call!641437 () (Set Context!13160))

(declare-fun call!641436 () (Set Context!13160))

(assert (=> bm!641431 (= call!641437 call!641436)))

(declare-fun b!7059095 () Bool)

(declare-fun call!641438 () (Set Context!13160))

(assert (=> b!7059095 (= e!4243859 (set.union call!641436 call!641438))))

(declare-fun b!7059096 () Bool)

(declare-fun c!1315552 () Bool)

(assert (=> b!7059096 (= c!1315552 (is-Star!17584 (ite c!1315283 (regTwo!35681 (h!74602 (exprs!7080 lt!2533928))) (regOne!35680 (h!74602 (exprs!7080 lt!2533928))))))))

(assert (=> b!7059096 (= e!4243858 e!4243861)))

(declare-fun bm!641432 () Bool)

(assert (=> bm!641432 (= call!641440 call!641437)))

(declare-fun e!4243857 () (Set Context!13160))

(declare-fun b!7059097 () Bool)

(assert (=> b!7059097 (= e!4243857 (set.insert (ite c!1315283 (Context!13161 (t!382057 (exprs!7080 lt!2533928))) (Context!13161 call!641263)) (as set.empty (Set Context!13160))))))

(declare-fun bm!641434 () Bool)

(declare-fun c!1315554 () Bool)

(declare-fun call!641435 () List!68278)

(assert (=> bm!641434 (= call!641436 (derivationStepZipperDown!2218 (ite c!1315554 (regOne!35681 (ite c!1315283 (regTwo!35681 (h!74602 (exprs!7080 lt!2533928))) (regOne!35680 (h!74602 (exprs!7080 lt!2533928))))) (ite c!1315553 (regTwo!35680 (ite c!1315283 (regTwo!35681 (h!74602 (exprs!7080 lt!2533928))) (regOne!35680 (h!74602 (exprs!7080 lt!2533928))))) (ite c!1315551 (regOne!35680 (ite c!1315283 (regTwo!35681 (h!74602 (exprs!7080 lt!2533928))) (regOne!35680 (h!74602 (exprs!7080 lt!2533928))))) (reg!17913 (ite c!1315283 (regTwo!35681 (h!74602 (exprs!7080 lt!2533928))) (regOne!35680 (h!74602 (exprs!7080 lt!2533928)))))))) (ite (or c!1315554 c!1315553) (ite c!1315283 (Context!13161 (t!382057 (exprs!7080 lt!2533928))) (Context!13161 call!641263)) (Context!13161 call!641435)) (h!74603 s!7408)))))

(declare-fun b!7059098 () Bool)

(assert (=> b!7059098 (= e!4243857 e!4243859)))

(assert (=> b!7059098 (= c!1315554 (is-Union!17584 (ite c!1315283 (regTwo!35681 (h!74602 (exprs!7080 lt!2533928))) (regOne!35680 (h!74602 (exprs!7080 lt!2533928))))))))

(declare-fun bm!641435 () Bool)

(assert (=> bm!641435 (= call!641435 call!641439)))

(declare-fun b!7059099 () Bool)

(assert (=> b!7059099 (= e!4243858 call!641440)))

(declare-fun b!7059100 () Bool)

(assert (=> b!7059100 (= e!4243860 (set.union call!641438 call!641437))))

(declare-fun c!1315550 () Bool)

(declare-fun d!2206814 () Bool)

(assert (=> d!2206814 (= c!1315550 (and (is-ElementMatch!17584 (ite c!1315283 (regTwo!35681 (h!74602 (exprs!7080 lt!2533928))) (regOne!35680 (h!74602 (exprs!7080 lt!2533928))))) (= (c!1315081 (ite c!1315283 (regTwo!35681 (h!74602 (exprs!7080 lt!2533928))) (regOne!35680 (h!74602 (exprs!7080 lt!2533928))))) (h!74603 s!7408))))))

(assert (=> d!2206814 (= (derivationStepZipperDown!2218 (ite c!1315283 (regTwo!35681 (h!74602 (exprs!7080 lt!2533928))) (regOne!35680 (h!74602 (exprs!7080 lt!2533928)))) (ite c!1315283 (Context!13161 (t!382057 (exprs!7080 lt!2533928))) (Context!13161 call!641263)) (h!74603 s!7408)) e!4243857)))

(declare-fun bm!641433 () Bool)

(assert (=> bm!641433 (= call!641438 (derivationStepZipperDown!2218 (ite c!1315554 (regTwo!35681 (ite c!1315283 (regTwo!35681 (h!74602 (exprs!7080 lt!2533928))) (regOne!35680 (h!74602 (exprs!7080 lt!2533928))))) (regOne!35680 (ite c!1315283 (regTwo!35681 (h!74602 (exprs!7080 lt!2533928))) (regOne!35680 (h!74602 (exprs!7080 lt!2533928)))))) (ite c!1315554 (ite c!1315283 (Context!13161 (t!382057 (exprs!7080 lt!2533928))) (Context!13161 call!641263)) (Context!13161 call!641439)) (h!74603 s!7408)))))

(assert (= (and d!2206814 c!1315550) b!7059097))

(assert (= (and d!2206814 (not c!1315550)) b!7059098))

(assert (= (and b!7059098 c!1315554) b!7059095))

(assert (= (and b!7059098 (not c!1315554)) b!7059091))

(assert (= (and b!7059091 res!2881783) b!7059092))

(assert (= (and b!7059091 c!1315553) b!7059100))

(assert (= (and b!7059091 (not c!1315553)) b!7059093))

(assert (= (and b!7059093 c!1315551) b!7059099))

(assert (= (and b!7059093 (not c!1315551)) b!7059096))

(assert (= (and b!7059096 c!1315552) b!7059090))

(assert (= (and b!7059096 (not c!1315552)) b!7059094))

(assert (= (or b!7059099 b!7059090) bm!641435))

(assert (= (or b!7059099 b!7059090) bm!641432))

(assert (= (or b!7059100 bm!641432) bm!641431))

(assert (= (or b!7059100 bm!641435) bm!641430))

(assert (= (or b!7059095 bm!641431) bm!641434))

(assert (= (or b!7059095 b!7059100) bm!641433))

(declare-fun m!7778542 () Bool)

(assert (=> bm!641434 m!7778542))

(declare-fun m!7778544 () Bool)

(assert (=> bm!641433 m!7778544))

(declare-fun m!7778546 () Bool)

(assert (=> bm!641430 m!7778546))

(declare-fun m!7778548 () Bool)

(assert (=> b!7059097 m!7778548))

(declare-fun m!7778550 () Bool)

(assert (=> b!7059092 m!7778550))

(assert (=> bm!641257 d!2206814))

(declare-fun d!2206816 () Bool)

(declare-fun lt!2534323 () Bool)

(assert (=> d!2206816 (= lt!2534323 (set.member (h!74604 lt!2534138) (content!13703 (t!382059 lt!2534138))))))

(declare-fun e!4243863 () Bool)

(assert (=> d!2206816 (= lt!2534323 e!4243863)))

(declare-fun res!2881785 () Bool)

(assert (=> d!2206816 (=> (not res!2881785) (not e!4243863))))

(assert (=> d!2206816 (= res!2881785 (is-Cons!68156 (t!382059 lt!2534138)))))

(assert (=> d!2206816 (= (contains!20486 (t!382059 lt!2534138) (h!74604 lt!2534138)) lt!2534323)))

(declare-fun b!7059101 () Bool)

(declare-fun e!4243862 () Bool)

(assert (=> b!7059101 (= e!4243863 e!4243862)))

(declare-fun res!2881784 () Bool)

(assert (=> b!7059101 (=> res!2881784 e!4243862)))

(assert (=> b!7059101 (= res!2881784 (= (h!74604 (t!382059 lt!2534138)) (h!74604 lt!2534138)))))

(declare-fun b!7059102 () Bool)

(assert (=> b!7059102 (= e!4243862 (contains!20486 (t!382059 (t!382059 lt!2534138)) (h!74604 lt!2534138)))))

(assert (= (and d!2206816 res!2881785) b!7059101))

(assert (= (and b!7059101 (not res!2881784)) b!7059102))

(assert (=> d!2206816 m!7777272))

(declare-fun m!7778552 () Bool)

(assert (=> d!2206816 m!7778552))

(declare-fun m!7778554 () Bool)

(assert (=> b!7059102 m!7778554))

(assert (=> b!7058109 d!2206816))

(declare-fun d!2206818 () Bool)

(assert (=> d!2206818 (= (flatMap!2510 lt!2533946 lambda!421299) (choose!53885 lt!2533946 lambda!421299))))

(declare-fun bs!1878231 () Bool)

(assert (= bs!1878231 d!2206818))

(declare-fun m!7778556 () Bool)

(assert (=> bs!1878231 m!7778556))

(assert (=> d!2206094 d!2206818))

(declare-fun d!2206820 () Bool)

(declare-fun lt!2534324 () Bool)

(assert (=> d!2206820 (= lt!2534324 (exists!3582 (toList!10925 lt!2533952) lambda!421306))))

(assert (=> d!2206820 (= lt!2534324 (choose!53900 lt!2533952 lambda!421306))))

(assert (=> d!2206820 (= (exists!3584 lt!2533952 lambda!421306) lt!2534324)))

(declare-fun bs!1878232 () Bool)

(assert (= bs!1878232 d!2206820))

(declare-fun m!7778558 () Bool)

(assert (=> bs!1878232 m!7778558))

(assert (=> bs!1878232 m!7778558))

(declare-fun m!7778560 () Bool)

(assert (=> bs!1878232 m!7778560))

(declare-fun m!7778562 () Bool)

(assert (=> bs!1878232 m!7778562))

(assert (=> d!2206130 d!2206820))

(declare-fun d!2206822 () Bool)

(assert (=> d!2206822 true))

(declare-fun setRes!49954 () Bool)

(assert (=> d!2206822 setRes!49954))

(declare-fun condSetEmpty!49954 () Bool)

(declare-fun res!2881786 () (Set Context!13160))

(assert (=> d!2206822 (= condSetEmpty!49954 (= res!2881786 (as set.empty (Set Context!13160))))))

(assert (=> d!2206822 (= (choose!53884 z1!570 lambda!421261) res!2881786)))

(declare-fun setIsEmpty!49954 () Bool)

(assert (=> setIsEmpty!49954 setRes!49954))

(declare-fun tp!1940707 () Bool)

(declare-fun setNonEmpty!49954 () Bool)

(declare-fun e!4243864 () Bool)

(declare-fun setElem!49954 () Context!13160)

(assert (=> setNonEmpty!49954 (= setRes!49954 (and tp!1940707 (inv!86820 setElem!49954) e!4243864))))

(declare-fun setRest!49954 () (Set Context!13160))

(assert (=> setNonEmpty!49954 (= res!2881786 (set.union (set.insert setElem!49954 (as set.empty (Set Context!13160))) setRest!49954))))

(declare-fun b!7059103 () Bool)

(declare-fun tp!1940708 () Bool)

(assert (=> b!7059103 (= e!4243864 tp!1940708)))

(assert (= (and d!2206822 condSetEmpty!49954) setIsEmpty!49954))

(assert (= (and d!2206822 (not condSetEmpty!49954)) setNonEmpty!49954))

(assert (= setNonEmpty!49954 b!7059103))

(declare-fun m!7778564 () Bool)

(assert (=> setNonEmpty!49954 m!7778564))

(assert (=> d!2206164 d!2206822))

(declare-fun d!2206824 () Bool)

(declare-fun lt!2534325 () Bool)

(assert (=> d!2206824 (= lt!2534325 (set.member lt!2534224 (content!13703 (toList!10925 lt!2533930))))))

(declare-fun e!4243866 () Bool)

(assert (=> d!2206824 (= lt!2534325 e!4243866)))

(declare-fun res!2881788 () Bool)

(assert (=> d!2206824 (=> (not res!2881788) (not e!4243866))))

(assert (=> d!2206824 (= res!2881788 (is-Cons!68156 (toList!10925 lt!2533930)))))

(assert (=> d!2206824 (= (contains!20486 (toList!10925 lt!2533930) lt!2534224) lt!2534325)))

(declare-fun b!7059104 () Bool)

(declare-fun e!4243865 () Bool)

(assert (=> b!7059104 (= e!4243866 e!4243865)))

(declare-fun res!2881787 () Bool)

(assert (=> b!7059104 (=> res!2881787 e!4243865)))

(assert (=> b!7059104 (= res!2881787 (= (h!74604 (toList!10925 lt!2533930)) lt!2534224))))

(declare-fun b!7059105 () Bool)

(assert (=> b!7059105 (= e!4243865 (contains!20486 (t!382059 (toList!10925 lt!2533930)) lt!2534224))))

(assert (= (and d!2206824 res!2881788) b!7059104))

(assert (= (and b!7059104 (not res!2881787)) b!7059105))

(assert (=> d!2206824 m!7776398))

(declare-fun m!7778566 () Bool)

(assert (=> d!2206824 m!7778566))

(declare-fun m!7778568 () Bool)

(assert (=> d!2206824 m!7778568))

(declare-fun m!7778570 () Bool)

(assert (=> b!7059105 m!7778570))

(assert (=> b!7058136 d!2206824))

(declare-fun bs!1878233 () Bool)

(declare-fun d!2206826 () Bool)

(assert (= bs!1878233 (and d!2206826 d!2206048)))

(declare-fun lambda!421367 () Int)

(assert (=> bs!1878233 (= lambda!421367 lambda!421297)))

(declare-fun bs!1878234 () Bool)

(assert (= bs!1878234 (and d!2206826 b!7057679)))

(assert (=> bs!1878234 (= lambda!421367 lambda!421195)))

(declare-fun bs!1878235 () Bool)

(assert (= bs!1878235 (and d!2206826 d!2206772)))

(assert (=> bs!1878235 (= lambda!421367 lambda!421363)))

(declare-fun bs!1878236 () Bool)

(assert (= bs!1878236 (and d!2206826 d!2205902)))

(assert (=> bs!1878236 (= lambda!421367 lambda!421275)))

(declare-fun bs!1878237 () Bool)

(assert (= bs!1878237 (and d!2206826 d!2205830)))

(assert (=> bs!1878237 (= lambda!421367 lambda!421264)))

(declare-fun bs!1878238 () Bool)

(assert (= bs!1878238 (and d!2206826 d!2206734)))

(assert (=> bs!1878238 (= lambda!421367 lambda!421361)))

(declare-fun bs!1878239 () Bool)

(assert (= bs!1878239 (and d!2206826 d!2206672)))

(assert (=> bs!1878239 (= lambda!421367 lambda!421356)))

(declare-fun bs!1878240 () Bool)

(assert (= bs!1878240 (and d!2206826 d!2206660)))

(assert (=> bs!1878240 (= lambda!421367 lambda!421355)))

(declare-fun bs!1878241 () Bool)

(assert (= bs!1878241 (and d!2206826 d!2206632)))

(assert (=> bs!1878241 (= lambda!421367 lambda!421352)))

(assert (=> d!2206826 (= (inv!86820 (h!74604 res!2881532)) (forall!16536 (exprs!7080 (h!74604 res!2881532)) lambda!421367))))

(declare-fun bs!1878242 () Bool)

(assert (= bs!1878242 d!2206826))

(declare-fun m!7778572 () Bool)

(assert (=> bs!1878242 m!7778572))

(assert (=> b!7058227 d!2206826))

(declare-fun d!2206828 () Bool)

(declare-fun lt!2534326 () Int)

(assert (=> d!2206828 (>= lt!2534326 0)))

(declare-fun e!4243867 () Int)

(assert (=> d!2206828 (= lt!2534326 e!4243867)))

(declare-fun c!1315555 () Bool)

(assert (=> d!2206828 (= c!1315555 (is-Nil!68154 lt!2534214))))

(assert (=> d!2206828 (= (size!41161 lt!2534214) lt!2534326)))

(declare-fun b!7059106 () Bool)

(assert (=> b!7059106 (= e!4243867 0)))

(declare-fun b!7059107 () Bool)

(assert (=> b!7059107 (= e!4243867 (+ 1 (size!41161 (t!382057 lt!2534214))))))

(assert (= (and d!2206828 c!1315555) b!7059106))

(assert (= (and d!2206828 (not c!1315555)) b!7059107))

(declare-fun m!7778574 () Bool)

(assert (=> b!7059107 m!7778574))

(assert (=> b!7058075 d!2206828))

(declare-fun d!2206830 () Bool)

(declare-fun lt!2534327 () Int)

(assert (=> d!2206830 (>= lt!2534327 0)))

(declare-fun e!4243868 () Int)

(assert (=> d!2206830 (= lt!2534327 e!4243868)))

(declare-fun c!1315556 () Bool)

(assert (=> d!2206830 (= c!1315556 (is-Nil!68154 (t!382057 (exprs!7080 lt!2533918))))))

(assert (=> d!2206830 (= (size!41161 (t!382057 (exprs!7080 lt!2533918))) lt!2534327)))

(declare-fun b!7059108 () Bool)

(assert (=> b!7059108 (= e!4243868 0)))

(declare-fun b!7059109 () Bool)

(assert (=> b!7059109 (= e!4243868 (+ 1 (size!41161 (t!382057 (t!382057 (exprs!7080 lt!2533918))))))))

(assert (= (and d!2206830 c!1315556) b!7059108))

(assert (= (and d!2206830 (not c!1315556)) b!7059109))

(declare-fun m!7778576 () Bool)

(assert (=> b!7059109 m!7778576))

(assert (=> b!7058075 d!2206830))

(assert (=> b!7058075 d!2206256))

(declare-fun d!2206832 () Bool)

(declare-fun lt!2534328 () Int)

(assert (=> d!2206832 (>= lt!2534328 0)))

(declare-fun e!4243869 () Int)

(assert (=> d!2206832 (= lt!2534328 e!4243869)))

(declare-fun c!1315557 () Bool)

(assert (=> d!2206832 (= c!1315557 (is-Nil!68154 lt!2534230))))

(assert (=> d!2206832 (= (size!41161 lt!2534230) lt!2534328)))

(declare-fun b!7059110 () Bool)

(assert (=> b!7059110 (= e!4243869 0)))

(declare-fun b!7059111 () Bool)

(assert (=> b!7059111 (= e!4243869 (+ 1 (size!41161 (t!382057 lt!2534230))))))

(assert (= (and d!2206832 c!1315557) b!7059110))

(assert (= (and d!2206832 (not c!1315557)) b!7059111))

(declare-fun m!7778578 () Bool)

(assert (=> b!7059111 m!7778578))

(assert (=> b!7058217 d!2206832))

(assert (=> b!7058217 d!2206774))

(assert (=> b!7058217 d!2206256))

(declare-fun b!7059112 () Bool)

(declare-fun res!2881793 () Bool)

(declare-fun e!4243876 () Bool)

(assert (=> b!7059112 (=> (not res!2881793) (not e!4243876))))

(declare-fun call!641441 () Bool)

(assert (=> b!7059112 (= res!2881793 call!641441)))

(declare-fun e!4243875 () Bool)

(assert (=> b!7059112 (= e!4243875 e!4243876)))

(declare-fun b!7059113 () Bool)

(declare-fun e!4243873 () Bool)

(declare-fun call!641443 () Bool)

(assert (=> b!7059113 (= e!4243873 call!641443)))

(declare-fun bm!641436 () Bool)

(assert (=> bm!641436 (= call!641441 call!641443)))

(declare-fun b!7059114 () Bool)

(declare-fun res!2881789 () Bool)

(declare-fun e!4243871 () Bool)

(assert (=> b!7059114 (=> res!2881789 e!4243871)))

(assert (=> b!7059114 (= res!2881789 (not (is-Concat!26429 (h!74602 (++!15667 (exprs!7080 lt!2533918) (exprs!7080 ct2!306))))))))

(assert (=> b!7059114 (= e!4243875 e!4243871)))

(declare-fun b!7059115 () Bool)

(declare-fun e!4243874 () Bool)

(declare-fun e!4243870 () Bool)

(assert (=> b!7059115 (= e!4243874 e!4243870)))

(declare-fun c!1315559 () Bool)

(assert (=> b!7059115 (= c!1315559 (is-Star!17584 (h!74602 (++!15667 (exprs!7080 lt!2533918) (exprs!7080 ct2!306)))))))

(declare-fun b!7059116 () Bool)

(declare-fun e!4243872 () Bool)

(assert (=> b!7059116 (= e!4243871 e!4243872)))

(declare-fun res!2881790 () Bool)

(assert (=> b!7059116 (=> (not res!2881790) (not e!4243872))))

(assert (=> b!7059116 (= res!2881790 call!641441)))

(declare-fun b!7059117 () Bool)

(assert (=> b!7059117 (= e!4243870 e!4243873)))

(declare-fun res!2881792 () Bool)

(assert (=> b!7059117 (= res!2881792 (not (nullable!7267 (reg!17913 (h!74602 (++!15667 (exprs!7080 lt!2533918) (exprs!7080 ct2!306)))))))))

(assert (=> b!7059117 (=> (not res!2881792) (not e!4243873))))

(declare-fun b!7059118 () Bool)

(declare-fun call!641442 () Bool)

(assert (=> b!7059118 (= e!4243872 call!641442)))

(declare-fun bm!641437 () Bool)

(declare-fun c!1315558 () Bool)

(assert (=> bm!641437 (= call!641442 (validRegex!8960 (ite c!1315558 (regTwo!35681 (h!74602 (++!15667 (exprs!7080 lt!2533918) (exprs!7080 ct2!306)))) (regTwo!35680 (h!74602 (++!15667 (exprs!7080 lt!2533918) (exprs!7080 ct2!306)))))))))

(declare-fun d!2206834 () Bool)

(declare-fun res!2881791 () Bool)

(assert (=> d!2206834 (=> res!2881791 e!4243874)))

(assert (=> d!2206834 (= res!2881791 (is-ElementMatch!17584 (h!74602 (++!15667 (exprs!7080 lt!2533918) (exprs!7080 ct2!306)))))))

(assert (=> d!2206834 (= (validRegex!8960 (h!74602 (++!15667 (exprs!7080 lt!2533918) (exprs!7080 ct2!306)))) e!4243874)))

(declare-fun b!7059119 () Bool)

(assert (=> b!7059119 (= e!4243876 call!641442)))

(declare-fun b!7059120 () Bool)

(assert (=> b!7059120 (= e!4243870 e!4243875)))

(assert (=> b!7059120 (= c!1315558 (is-Union!17584 (h!74602 (++!15667 (exprs!7080 lt!2533918) (exprs!7080 ct2!306)))))))

(declare-fun bm!641438 () Bool)

(assert (=> bm!641438 (= call!641443 (validRegex!8960 (ite c!1315559 (reg!17913 (h!74602 (++!15667 (exprs!7080 lt!2533918) (exprs!7080 ct2!306)))) (ite c!1315558 (regOne!35681 (h!74602 (++!15667 (exprs!7080 lt!2533918) (exprs!7080 ct2!306)))) (regOne!35680 (h!74602 (++!15667 (exprs!7080 lt!2533918) (exprs!7080 ct2!306))))))))))

(assert (= (and d!2206834 (not res!2881791)) b!7059115))

(assert (= (and b!7059115 c!1315559) b!7059117))

(assert (= (and b!7059115 (not c!1315559)) b!7059120))

(assert (= (and b!7059117 res!2881792) b!7059113))

(assert (= (and b!7059120 c!1315558) b!7059112))

(assert (= (and b!7059120 (not c!1315558)) b!7059114))

(assert (= (and b!7059112 res!2881793) b!7059119))

(assert (= (and b!7059114 (not res!2881789)) b!7059116))

(assert (= (and b!7059116 res!2881790) b!7059118))

(assert (= (or b!7059119 b!7059118) bm!641437))

(assert (= (or b!7059112 b!7059116) bm!641436))

(assert (= (or b!7059113 bm!641436) bm!641438))

(declare-fun m!7778580 () Bool)

(assert (=> b!7059117 m!7778580))

(declare-fun m!7778582 () Bool)

(assert (=> bm!641437 m!7778582))

(declare-fun m!7778584 () Bool)

(assert (=> bm!641438 m!7778584))

(assert (=> bs!1877657 d!2206834))

(declare-fun d!2206836 () Bool)

(assert (=> d!2206836 true))

(declare-fun setRes!49955 () Bool)

(assert (=> d!2206836 setRes!49955))

(declare-fun condSetEmpty!49955 () Bool)

(declare-fun res!2881794 () (Set Context!13160))

(assert (=> d!2206836 (= condSetEmpty!49955 (= res!2881794 (as set.empty (Set Context!13160))))))

(assert (=> d!2206836 (= (choose!53884 lt!2533927 lambda!421265) res!2881794)))

(declare-fun setIsEmpty!49955 () Bool)

(assert (=> setIsEmpty!49955 setRes!49955))

(declare-fun e!4243877 () Bool)

(declare-fun tp!1940709 () Bool)

(declare-fun setNonEmpty!49955 () Bool)

(declare-fun setElem!49955 () Context!13160)

(assert (=> setNonEmpty!49955 (= setRes!49955 (and tp!1940709 (inv!86820 setElem!49955) e!4243877))))

(declare-fun setRest!49955 () (Set Context!13160))

(assert (=> setNonEmpty!49955 (= res!2881794 (set.union (set.insert setElem!49955 (as set.empty (Set Context!13160))) setRest!49955))))

(declare-fun b!7059121 () Bool)

(declare-fun tp!1940710 () Bool)

(assert (=> b!7059121 (= e!4243877 tp!1940710)))

(assert (= (and d!2206836 condSetEmpty!49955) setIsEmpty!49955))

(assert (= (and d!2206836 (not condSetEmpty!49955)) setNonEmpty!49955))

(assert (= setNonEmpty!49955 b!7059121))

(declare-fun m!7778586 () Bool)

(assert (=> setNonEmpty!49955 m!7778586))

(assert (=> d!2206176 d!2206836))

(declare-fun d!2206838 () Bool)

(declare-fun res!2881795 () Bool)

(declare-fun e!4243878 () Bool)

(assert (=> d!2206838 (=> res!2881795 e!4243878)))

(assert (=> d!2206838 (= res!2881795 (is-Nil!68154 (t!382057 lt!2533935)))))

(assert (=> d!2206838 (= (forall!16536 (t!382057 lt!2533935) lambda!421195) e!4243878)))

(declare-fun b!7059122 () Bool)

(declare-fun e!4243879 () Bool)

(assert (=> b!7059122 (= e!4243878 e!4243879)))

(declare-fun res!2881796 () Bool)

(assert (=> b!7059122 (=> (not res!2881796) (not e!4243879))))

(assert (=> b!7059122 (= res!2881796 (dynLambda!27681 lambda!421195 (h!74602 (t!382057 lt!2533935))))))

(declare-fun b!7059123 () Bool)

(assert (=> b!7059123 (= e!4243879 (forall!16536 (t!382057 (t!382057 lt!2533935)) lambda!421195))))

(assert (= (and d!2206838 (not res!2881795)) b!7059122))

(assert (= (and b!7059122 res!2881796) b!7059123))

(declare-fun b_lambda!269105 () Bool)

(assert (=> (not b_lambda!269105) (not b!7059122)))

(declare-fun m!7778588 () Bool)

(assert (=> b!7059122 m!7778588))

(declare-fun m!7778590 () Bool)

(assert (=> b!7059123 m!7778590))

(assert (=> b!7058222 d!2206838))

(declare-fun d!2206840 () Bool)

(declare-fun res!2881797 () Bool)

(declare-fun e!4243880 () Bool)

(assert (=> d!2206840 (=> res!2881797 e!4243880)))

(assert (=> d!2206840 (= res!2881797 (is-Nil!68154 (t!382057 (exprs!7080 ct2!306))))))

(assert (=> d!2206840 (= (forall!16536 (t!382057 (exprs!7080 ct2!306)) lambda!421264) e!4243880)))

(declare-fun b!7059124 () Bool)

(declare-fun e!4243881 () Bool)

(assert (=> b!7059124 (= e!4243880 e!4243881)))

(declare-fun res!2881798 () Bool)

(assert (=> b!7059124 (=> (not res!2881798) (not e!4243881))))

(assert (=> b!7059124 (= res!2881798 (dynLambda!27681 lambda!421264 (h!74602 (t!382057 (exprs!7080 ct2!306)))))))

(declare-fun b!7059125 () Bool)

(assert (=> b!7059125 (= e!4243881 (forall!16536 (t!382057 (t!382057 (exprs!7080 ct2!306))) lambda!421264))))

(assert (= (and d!2206840 (not res!2881797)) b!7059124))

(assert (= (and b!7059124 res!2881798) b!7059125))

(declare-fun b_lambda!269107 () Bool)

(assert (=> (not b_lambda!269107) (not b!7059124)))

(declare-fun m!7778592 () Bool)

(assert (=> b!7059124 m!7778592))

(declare-fun m!7778594 () Bool)

(assert (=> b!7059125 m!7778594))

(assert (=> b!7058378 d!2206840))

(declare-fun d!2206842 () Bool)

(declare-fun c!1315560 () Bool)

(assert (=> d!2206842 (= c!1315560 (is-Nil!68154 (t!382057 lt!2534151)))))

(declare-fun e!4243882 () (Set Regex!17584))

(assert (=> d!2206842 (= (content!13704 (t!382057 lt!2534151)) e!4243882)))

(declare-fun b!7059126 () Bool)

(assert (=> b!7059126 (= e!4243882 (as set.empty (Set Regex!17584)))))

(declare-fun b!7059127 () Bool)

(assert (=> b!7059127 (= e!4243882 (set.union (set.insert (h!74602 (t!382057 lt!2534151)) (as set.empty (Set Regex!17584))) (content!13704 (t!382057 (t!382057 lt!2534151)))))))

(assert (= (and d!2206842 c!1315560) b!7059126))

(assert (= (and d!2206842 (not c!1315560)) b!7059127))

(declare-fun m!7778596 () Bool)

(assert (=> b!7059127 m!7778596))

(declare-fun m!7778598 () Bool)

(assert (=> b!7059127 m!7778598))

(assert (=> b!7058143 d!2206842))

(declare-fun d!2206844 () Bool)

(assert (=> d!2206844 (forall!16536 (++!15667 (exprs!7080 a!13517) (exprs!7080 ct2!306)) lambda!421195)))

(declare-fun lt!2534329 () Unit!161841)

(assert (=> d!2206844 (= lt!2534329 (choose!53883 (exprs!7080 a!13517) (exprs!7080 ct2!306) lambda!421195))))

(assert (=> d!2206844 (forall!16536 (exprs!7080 a!13517) lambda!421195)))

(assert (=> d!2206844 (= (lemmaConcatPreservesForall!895 (exprs!7080 a!13517) (exprs!7080 ct2!306) lambda!421195) lt!2534329)))

(declare-fun bs!1878243 () Bool)

(assert (= bs!1878243 d!2206844))

(assert (=> bs!1878243 m!7777538))

(assert (=> bs!1878243 m!7777538))

(declare-fun m!7778600 () Bool)

(assert (=> bs!1878243 m!7778600))

(declare-fun m!7778602 () Bool)

(assert (=> bs!1878243 m!7778602))

(declare-fun m!7778604 () Bool)

(assert (=> bs!1878243 m!7778604))

(assert (=> bs!1877649 d!2206844))

(declare-fun b!7059128 () Bool)

(declare-fun e!4243883 () List!68278)

(assert (=> b!7059128 (= e!4243883 (exprs!7080 ct2!306))))

(declare-fun b!7059130 () Bool)

(declare-fun res!2881799 () Bool)

(declare-fun e!4243884 () Bool)

(assert (=> b!7059130 (=> (not res!2881799) (not e!4243884))))

(declare-fun lt!2534330 () List!68278)

(assert (=> b!7059130 (= res!2881799 (= (size!41161 lt!2534330) (+ (size!41161 (exprs!7080 a!13517)) (size!41161 (exprs!7080 ct2!306)))))))

(declare-fun b!7059129 () Bool)

(assert (=> b!7059129 (= e!4243883 (Cons!68154 (h!74602 (exprs!7080 a!13517)) (++!15667 (t!382057 (exprs!7080 a!13517)) (exprs!7080 ct2!306))))))

(declare-fun d!2206846 () Bool)

(assert (=> d!2206846 e!4243884))

(declare-fun res!2881800 () Bool)

(assert (=> d!2206846 (=> (not res!2881800) (not e!4243884))))

(assert (=> d!2206846 (= res!2881800 (= (content!13704 lt!2534330) (set.union (content!13704 (exprs!7080 a!13517)) (content!13704 (exprs!7080 ct2!306)))))))

(assert (=> d!2206846 (= lt!2534330 e!4243883)))

(declare-fun c!1315561 () Bool)

(assert (=> d!2206846 (= c!1315561 (is-Nil!68154 (exprs!7080 a!13517)))))

(assert (=> d!2206846 (= (++!15667 (exprs!7080 a!13517) (exprs!7080 ct2!306)) lt!2534330)))

(declare-fun b!7059131 () Bool)

(assert (=> b!7059131 (= e!4243884 (or (not (= (exprs!7080 ct2!306) Nil!68154)) (= lt!2534330 (exprs!7080 a!13517))))))

(assert (= (and d!2206846 c!1315561) b!7059128))

(assert (= (and d!2206846 (not c!1315561)) b!7059129))

(assert (= (and d!2206846 res!2881800) b!7059130))

(assert (= (and b!7059130 res!2881799) b!7059131))

(declare-fun m!7778606 () Bool)

(assert (=> b!7059130 m!7778606))

(declare-fun m!7778608 () Bool)

(assert (=> b!7059130 m!7778608))

(assert (=> b!7059130 m!7776648))

(declare-fun m!7778610 () Bool)

(assert (=> b!7059129 m!7778610))

(declare-fun m!7778612 () Bool)

(assert (=> d!2206846 m!7778612))

(declare-fun m!7778614 () Bool)

(assert (=> d!2206846 m!7778614))

(assert (=> d!2206846 m!7776656))

(assert (=> bs!1877649 d!2206846))

(assert (=> d!2206160 d!2206082))

(declare-fun d!2206848 () Bool)

(assert (=> d!2206848 (= ($colon$colon!2630 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))) (ite (or c!1315287 c!1315285) (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))) (h!74602 (exprs!7080 lt!2533926)))) (Cons!68154 (ite (or c!1315287 c!1315285) (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))) (h!74602 (exprs!7080 lt!2533926))) (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926))))))))

(assert (=> bm!641260 d!2206848))

(declare-fun d!2206850 () Bool)

(declare-fun lt!2534331 () Bool)

(assert (=> d!2206850 (= lt!2534331 (exists!3582 (toList!10925 lt!2533954) lambda!421312))))

(assert (=> d!2206850 (= lt!2534331 (choose!53900 lt!2533954 lambda!421312))))

(assert (=> d!2206850 (= (exists!3584 lt!2533954 lambda!421312) lt!2534331)))

(declare-fun bs!1878244 () Bool)

(assert (= bs!1878244 d!2206850))

(declare-fun m!7778616 () Bool)

(assert (=> bs!1878244 m!7778616))

(assert (=> bs!1878244 m!7778616))

(declare-fun m!7778618 () Bool)

(assert (=> bs!1878244 m!7778618))

(declare-fun m!7778620 () Bool)

(assert (=> bs!1878244 m!7778620))

(assert (=> d!2206170 d!2206850))

(assert (=> d!2206198 d!2206550))

(declare-fun d!2206852 () Bool)

(declare-fun c!1315562 () Bool)

(assert (=> d!2206852 (= c!1315562 (isEmpty!39754 (tail!13726 (tail!13726 s!7408))))))

(declare-fun e!4243885 () Bool)

(assert (=> d!2206852 (= (matchZipper!3124 (derivationStepZipper!3034 (derivationStepZipper!3034 (appendTo!705 lt!2533927 ct2!306) (head!14368 s!7408)) (head!14368 (tail!13726 s!7408))) (tail!13726 (tail!13726 s!7408))) e!4243885)))

(declare-fun b!7059132 () Bool)

(assert (=> b!7059132 (= e!4243885 (nullableZipper!2667 (derivationStepZipper!3034 (derivationStepZipper!3034 (appendTo!705 lt!2533927 ct2!306) (head!14368 s!7408)) (head!14368 (tail!13726 s!7408)))))))

(declare-fun b!7059133 () Bool)

(assert (=> b!7059133 (= e!4243885 (matchZipper!3124 (derivationStepZipper!3034 (derivationStepZipper!3034 (derivationStepZipper!3034 (appendTo!705 lt!2533927 ct2!306) (head!14368 s!7408)) (head!14368 (tail!13726 s!7408))) (head!14368 (tail!13726 (tail!13726 s!7408)))) (tail!13726 (tail!13726 (tail!13726 s!7408)))))))

(assert (= (and d!2206852 c!1315562) b!7059132))

(assert (= (and d!2206852 (not c!1315562)) b!7059133))

(assert (=> d!2206852 m!7777220))

(assert (=> d!2206852 m!7778092))

(assert (=> b!7059132 m!7777276))

(declare-fun m!7778622 () Bool)

(assert (=> b!7059132 m!7778622))

(assert (=> b!7059133 m!7777220))

(assert (=> b!7059133 m!7778096))

(assert (=> b!7059133 m!7777276))

(assert (=> b!7059133 m!7778096))

(declare-fun m!7778624 () Bool)

(assert (=> b!7059133 m!7778624))

(assert (=> b!7059133 m!7777220))

(assert (=> b!7059133 m!7778100))

(assert (=> b!7059133 m!7778624))

(assert (=> b!7059133 m!7778100))

(declare-fun m!7778626 () Bool)

(assert (=> b!7059133 m!7778626))

(assert (=> b!7058214 d!2206852))

(declare-fun bs!1878245 () Bool)

(declare-fun d!2206854 () Bool)

(assert (= bs!1878245 (and d!2206854 d!2205914)))

(declare-fun lambda!421368 () Int)

(assert (=> bs!1878245 (= (= (head!14368 (tail!13726 s!7408)) (h!74603 s!7408)) (= lambda!421368 lambda!421276))))

(declare-fun bs!1878246 () Bool)

(assert (= bs!1878246 (and d!2206854 d!2206654)))

(assert (=> bs!1878246 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 (tail!13726 (t!382058 s!7408)))) (= lambda!421368 lambda!421354))))

(declare-fun bs!1878247 () Bool)

(assert (= bs!1878247 (and d!2206854 d!2206094)))

(assert (=> bs!1878247 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 (t!382058 s!7408))) (= lambda!421368 lambda!421299))))

(declare-fun bs!1878248 () Bool)

(assert (= bs!1878248 (and d!2206854 d!2206138)))

(assert (=> bs!1878248 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 s!7408)) (= lambda!421368 lambda!421307))))

(declare-fun bs!1878249 () Bool)

(assert (= bs!1878249 (and d!2206854 d!2206614)))

(assert (=> bs!1878249 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 s!7408)) (= lambda!421368 lambda!421350))))

(declare-fun bs!1878250 () Bool)

(assert (= bs!1878250 (and d!2206854 d!2206590)))

(assert (=> bs!1878250 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 (t!382058 s!7408))) (= lambda!421368 lambda!421347))))

(declare-fun bs!1878251 () Bool)

(assert (= bs!1878251 (and d!2206854 d!2206120)))

(assert (=> bs!1878251 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 (t!382058 s!7408))) (= lambda!421368 lambda!421304))))

(declare-fun bs!1878252 () Bool)

(assert (= bs!1878252 (and d!2206854 d!2206056)))

(assert (=> bs!1878252 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 (t!382058 s!7408))) (= lambda!421368 lambda!421298))))

(declare-fun bs!1878253 () Bool)

(assert (= bs!1878253 (and d!2206854 d!2206228)))

(assert (=> bs!1878253 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 s!7408)) (= lambda!421368 lambda!421317))))

(declare-fun bs!1878254 () Bool)

(assert (= bs!1878254 (and d!2206854 d!2206268)))

(assert (=> bs!1878254 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 s!7408)) (= lambda!421368 lambda!421318))))

(declare-fun bs!1878255 () Bool)

(assert (= bs!1878255 (and d!2206854 d!2206100)))

(assert (=> bs!1878255 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 s!7408)) (= lambda!421368 lambda!421303))))

(declare-fun bs!1878256 () Bool)

(assert (= bs!1878256 (and d!2206854 d!2206704)))

(assert (=> bs!1878256 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 (tail!13726 (t!382058 s!7408)))) (= lambda!421368 lambda!421358))))

(declare-fun bs!1878257 () Bool)

(assert (= bs!1878257 (and d!2206854 d!2206740)))

(assert (=> bs!1878257 (= lambda!421368 lambda!421362)))

(declare-fun bs!1878258 () Bool)

(assert (= bs!1878258 (and d!2206854 b!7057661)))

(assert (=> bs!1878258 (= (= (head!14368 (tail!13726 s!7408)) (h!74603 s!7408)) (= lambda!421368 lambda!421196))))

(declare-fun bs!1878259 () Bool)

(assert (= bs!1878259 (and d!2206854 d!2205882)))

(assert (=> bs!1878259 (= (= (head!14368 (tail!13726 s!7408)) (h!74603 s!7408)) (= lambda!421368 lambda!421274))))

(declare-fun bs!1878260 () Bool)

(assert (= bs!1878260 (and d!2206854 d!2206200)))

(assert (=> bs!1878260 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 (t!382058 s!7408))) (= lambda!421368 lambda!421314))))

(declare-fun bs!1878261 () Bool)

(assert (= bs!1878261 (and d!2206854 d!2206580)))

(assert (=> bs!1878261 (= lambda!421368 lambda!421346)))

(declare-fun bs!1878262 () Bool)

(assert (= bs!1878262 (and d!2206854 d!2206800)))

(assert (=> bs!1878262 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 (tail!13726 (t!382058 s!7408)))) (= lambda!421368 lambda!421365))))

(assert (=> d!2206854 true))

(assert (=> d!2206854 (= (derivationStepZipper!3034 (derivationStepZipper!3034 (appendTo!705 lt!2533927 ct2!306) (head!14368 s!7408)) (head!14368 (tail!13726 s!7408))) (flatMap!2510 (derivationStepZipper!3034 (appendTo!705 lt!2533927 ct2!306) (head!14368 s!7408)) lambda!421368))))

(declare-fun bs!1878263 () Bool)

(assert (= bs!1878263 d!2206854))

(assert (=> bs!1878263 m!7776708))

(declare-fun m!7778628 () Bool)

(assert (=> bs!1878263 m!7778628))

(assert (=> b!7058214 d!2206854))

(assert (=> b!7058214 d!2206582))

(assert (=> b!7058214 d!2206584))

(declare-fun d!2206856 () Bool)

(declare-fun c!1315563 () Bool)

(assert (=> d!2206856 (= c!1315563 (is-Nil!68154 lt!2534214))))

(declare-fun e!4243886 () (Set Regex!17584))

(assert (=> d!2206856 (= (content!13704 lt!2534214) e!4243886)))

(declare-fun b!7059134 () Bool)

(assert (=> b!7059134 (= e!4243886 (as set.empty (Set Regex!17584)))))

(declare-fun b!7059135 () Bool)

(assert (=> b!7059135 (= e!4243886 (set.union (set.insert (h!74602 lt!2534214) (as set.empty (Set Regex!17584))) (content!13704 (t!382057 lt!2534214))))))

(assert (= (and d!2206856 c!1315563) b!7059134))

(assert (= (and d!2206856 (not c!1315563)) b!7059135))

(declare-fun m!7778630 () Bool)

(assert (=> b!7059135 m!7778630))

(declare-fun m!7778632 () Bool)

(assert (=> b!7059135 m!7778632))

(assert (=> d!2206046 d!2206856))

(assert (=> d!2206046 d!2206720))

(assert (=> d!2206046 d!2206076))

(declare-fun d!2206858 () Bool)

(declare-fun lt!2534332 () Int)

(assert (=> d!2206858 (>= lt!2534332 0)))

(declare-fun e!4243887 () Int)

(assert (=> d!2206858 (= lt!2534332 e!4243887)))

(declare-fun c!1315564 () Bool)

(assert (=> d!2206858 (= c!1315564 (is-Cons!68154 (exprs!7080 (h!74604 (t!382059 lt!2533936)))))))

(assert (=> d!2206858 (= (contextDepthTotal!520 (h!74604 (t!382059 lt!2533936))) lt!2534332)))

(declare-fun b!7059136 () Bool)

(assert (=> b!7059136 (= e!4243887 (+ (regexDepthTotal!316 (h!74602 (exprs!7080 (h!74604 (t!382059 lt!2533936))))) (contextDepthTotal!520 (Context!13161 (t!382057 (exprs!7080 (h!74604 (t!382059 lt!2533936))))))))))

(declare-fun b!7059137 () Bool)

(assert (=> b!7059137 (= e!4243887 1)))

(assert (= (and d!2206858 c!1315564) b!7059136))

(assert (= (and d!2206858 (not c!1315564)) b!7059137))

(declare-fun m!7778634 () Bool)

(assert (=> b!7059136 m!7778634))

(declare-fun m!7778636 () Bool)

(assert (=> b!7059136 m!7778636))

(assert (=> b!7058329 d!2206858))

(declare-fun d!2206860 () Bool)

(declare-fun lt!2534333 () Int)

(assert (=> d!2206860 (>= lt!2534333 0)))

(declare-fun e!4243888 () Int)

(assert (=> d!2206860 (= lt!2534333 e!4243888)))

(declare-fun c!1315565 () Bool)

(assert (=> d!2206860 (= c!1315565 (is-Cons!68156 (t!382059 (t!382059 lt!2533936))))))

(assert (=> d!2206860 (= (zipperDepthTotal!549 (t!382059 (t!382059 lt!2533936))) lt!2534333)))

(declare-fun b!7059138 () Bool)

(assert (=> b!7059138 (= e!4243888 (+ (contextDepthTotal!520 (h!74604 (t!382059 (t!382059 lt!2533936)))) (zipperDepthTotal!549 (t!382059 (t!382059 (t!382059 lt!2533936))))))))

(declare-fun b!7059139 () Bool)

(assert (=> b!7059139 (= e!4243888 0)))

(assert (= (and d!2206860 c!1315565) b!7059138))

(assert (= (and d!2206860 (not c!1315565)) b!7059139))

(declare-fun m!7778638 () Bool)

(assert (=> b!7059138 m!7778638))

(declare-fun m!7778640 () Bool)

(assert (=> b!7059138 m!7778640))

(assert (=> b!7058329 d!2206860))

(declare-fun d!2206862 () Bool)

(declare-fun c!1315566 () Bool)

(assert (=> d!2206862 (= c!1315566 (isEmpty!39754 (tail!13726 s!7408)))))

(declare-fun e!4243889 () Bool)

(assert (=> d!2206862 (= (matchZipper!3124 (derivationStepZipper!3034 (content!13703 lt!2533923) (head!14368 s!7408)) (tail!13726 s!7408)) e!4243889)))

(declare-fun b!7059140 () Bool)

(assert (=> b!7059140 (= e!4243889 (nullableZipper!2667 (derivationStepZipper!3034 (content!13703 lt!2533923) (head!14368 s!7408))))))

(declare-fun b!7059141 () Bool)

(assert (=> b!7059141 (= e!4243889 (matchZipper!3124 (derivationStepZipper!3034 (derivationStepZipper!3034 (content!13703 lt!2533923) (head!14368 s!7408)) (head!14368 (tail!13726 s!7408))) (tail!13726 (tail!13726 s!7408))))))

(assert (= (and d!2206862 c!1315566) b!7059140))

(assert (= (and d!2206862 (not c!1315566)) b!7059141))

(assert (=> d!2206862 m!7776606))

(assert (=> d!2206862 m!7777212))

(assert (=> b!7059140 m!7777330))

(declare-fun m!7778642 () Bool)

(assert (=> b!7059140 m!7778642))

(assert (=> b!7059141 m!7776606))

(assert (=> b!7059141 m!7777216))

(assert (=> b!7059141 m!7777330))

(assert (=> b!7059141 m!7777216))

(declare-fun m!7778644 () Bool)

(assert (=> b!7059141 m!7778644))

(assert (=> b!7059141 m!7776606))

(assert (=> b!7059141 m!7777220))

(assert (=> b!7059141 m!7778644))

(assert (=> b!7059141 m!7777220))

(declare-fun m!7778646 () Bool)

(assert (=> b!7059141 m!7778646))

(assert (=> b!7058242 d!2206862))

(declare-fun bs!1878264 () Bool)

(declare-fun d!2206864 () Bool)

(assert (= bs!1878264 (and d!2206864 d!2205914)))

(declare-fun lambda!421369 () Int)

(assert (=> bs!1878264 (= (= (head!14368 s!7408) (h!74603 s!7408)) (= lambda!421369 lambda!421276))))

(declare-fun bs!1878265 () Bool)

(assert (= bs!1878265 (and d!2206864 d!2206654)))

(assert (=> bs!1878265 (= (= (head!14368 s!7408) (head!14368 (tail!13726 (t!382058 s!7408)))) (= lambda!421369 lambda!421354))))

(declare-fun bs!1878266 () Bool)

(assert (= bs!1878266 (and d!2206864 d!2206094)))

(assert (=> bs!1878266 (= (= (head!14368 s!7408) (head!14368 (t!382058 s!7408))) (= lambda!421369 lambda!421299))))

(declare-fun bs!1878267 () Bool)

(assert (= bs!1878267 (and d!2206864 d!2206138)))

(assert (=> bs!1878267 (= lambda!421369 lambda!421307)))

(declare-fun bs!1878268 () Bool)

(assert (= bs!1878268 (and d!2206864 d!2206614)))

(assert (=> bs!1878268 (= lambda!421369 lambda!421350)))

(declare-fun bs!1878269 () Bool)

(assert (= bs!1878269 (and d!2206864 d!2206854)))

(assert (=> bs!1878269 (= (= (head!14368 s!7408) (head!14368 (tail!13726 s!7408))) (= lambda!421369 lambda!421368))))

(declare-fun bs!1878270 () Bool)

(assert (= bs!1878270 (and d!2206864 d!2206590)))

(assert (=> bs!1878270 (= (= (head!14368 s!7408) (head!14368 (t!382058 s!7408))) (= lambda!421369 lambda!421347))))

(declare-fun bs!1878271 () Bool)

(assert (= bs!1878271 (and d!2206864 d!2206120)))

(assert (=> bs!1878271 (= (= (head!14368 s!7408) (head!14368 (t!382058 s!7408))) (= lambda!421369 lambda!421304))))

(declare-fun bs!1878272 () Bool)

(assert (= bs!1878272 (and d!2206864 d!2206056)))

(assert (=> bs!1878272 (= (= (head!14368 s!7408) (head!14368 (t!382058 s!7408))) (= lambda!421369 lambda!421298))))

(declare-fun bs!1878273 () Bool)

(assert (= bs!1878273 (and d!2206864 d!2206228)))

(assert (=> bs!1878273 (= lambda!421369 lambda!421317)))

(declare-fun bs!1878274 () Bool)

(assert (= bs!1878274 (and d!2206864 d!2206268)))

(assert (=> bs!1878274 (= lambda!421369 lambda!421318)))

(declare-fun bs!1878275 () Bool)

(assert (= bs!1878275 (and d!2206864 d!2206100)))

(assert (=> bs!1878275 (= lambda!421369 lambda!421303)))

(declare-fun bs!1878276 () Bool)

(assert (= bs!1878276 (and d!2206864 d!2206704)))

(assert (=> bs!1878276 (= (= (head!14368 s!7408) (head!14368 (tail!13726 (t!382058 s!7408)))) (= lambda!421369 lambda!421358))))

(declare-fun bs!1878277 () Bool)

(assert (= bs!1878277 (and d!2206864 d!2206740)))

(assert (=> bs!1878277 (= (= (head!14368 s!7408) (head!14368 (tail!13726 s!7408))) (= lambda!421369 lambda!421362))))

(declare-fun bs!1878278 () Bool)

(assert (= bs!1878278 (and d!2206864 b!7057661)))

(assert (=> bs!1878278 (= (= (head!14368 s!7408) (h!74603 s!7408)) (= lambda!421369 lambda!421196))))

(declare-fun bs!1878279 () Bool)

(assert (= bs!1878279 (and d!2206864 d!2205882)))

(assert (=> bs!1878279 (= (= (head!14368 s!7408) (h!74603 s!7408)) (= lambda!421369 lambda!421274))))

(declare-fun bs!1878280 () Bool)

(assert (= bs!1878280 (and d!2206864 d!2206200)))

(assert (=> bs!1878280 (= (= (head!14368 s!7408) (head!14368 (t!382058 s!7408))) (= lambda!421369 lambda!421314))))

(declare-fun bs!1878281 () Bool)

(assert (= bs!1878281 (and d!2206864 d!2206580)))

(assert (=> bs!1878281 (= (= (head!14368 s!7408) (head!14368 (tail!13726 s!7408))) (= lambda!421369 lambda!421346))))

(declare-fun bs!1878282 () Bool)

(assert (= bs!1878282 (and d!2206864 d!2206800)))

(assert (=> bs!1878282 (= (= (head!14368 s!7408) (head!14368 (tail!13726 (t!382058 s!7408)))) (= lambda!421369 lambda!421365))))

(assert (=> d!2206864 true))

(assert (=> d!2206864 (= (derivationStepZipper!3034 (content!13703 lt!2533923) (head!14368 s!7408)) (flatMap!2510 (content!13703 lt!2533923) lambda!421369))))

(declare-fun bs!1878283 () Bool)

(assert (= bs!1878283 d!2206864))

(assert (=> bs!1878283 m!7776726))

(declare-fun m!7778648 () Bool)

(assert (=> bs!1878283 m!7778648))

(assert (=> b!7058242 d!2206864))

(assert (=> b!7058242 d!2206102))

(assert (=> b!7058242 d!2206104))

(declare-fun b!7059142 () Bool)

(declare-fun res!2881805 () Bool)

(declare-fun e!4243896 () Bool)

(assert (=> b!7059142 (=> (not res!2881805) (not e!4243896))))

(declare-fun call!641444 () Bool)

(assert (=> b!7059142 (= res!2881805 call!641444)))

(declare-fun e!4243895 () Bool)

(assert (=> b!7059142 (= e!4243895 e!4243896)))

(declare-fun b!7059143 () Bool)

(declare-fun e!4243893 () Bool)

(declare-fun call!641446 () Bool)

(assert (=> b!7059143 (= e!4243893 call!641446)))

(declare-fun bm!641439 () Bool)

(assert (=> bm!641439 (= call!641444 call!641446)))

(declare-fun b!7059144 () Bool)

(declare-fun res!2881801 () Bool)

(declare-fun e!4243891 () Bool)

(assert (=> b!7059144 (=> res!2881801 e!4243891)))

(assert (=> b!7059144 (= res!2881801 (not (is-Concat!26429 (h!74602 (exprs!7080 setElem!49924)))))))

(assert (=> b!7059144 (= e!4243895 e!4243891)))

(declare-fun b!7059145 () Bool)

(declare-fun e!4243894 () Bool)

(declare-fun e!4243890 () Bool)

(assert (=> b!7059145 (= e!4243894 e!4243890)))

(declare-fun c!1315568 () Bool)

(assert (=> b!7059145 (= c!1315568 (is-Star!17584 (h!74602 (exprs!7080 setElem!49924))))))

(declare-fun b!7059146 () Bool)

(declare-fun e!4243892 () Bool)

(assert (=> b!7059146 (= e!4243891 e!4243892)))

(declare-fun res!2881802 () Bool)

(assert (=> b!7059146 (=> (not res!2881802) (not e!4243892))))

(assert (=> b!7059146 (= res!2881802 call!641444)))

(declare-fun b!7059147 () Bool)

(assert (=> b!7059147 (= e!4243890 e!4243893)))

(declare-fun res!2881804 () Bool)

(assert (=> b!7059147 (= res!2881804 (not (nullable!7267 (reg!17913 (h!74602 (exprs!7080 setElem!49924))))))))

(assert (=> b!7059147 (=> (not res!2881804) (not e!4243893))))

(declare-fun b!7059148 () Bool)

(declare-fun call!641445 () Bool)

(assert (=> b!7059148 (= e!4243892 call!641445)))

(declare-fun bm!641440 () Bool)

(declare-fun c!1315567 () Bool)

(assert (=> bm!641440 (= call!641445 (validRegex!8960 (ite c!1315567 (regTwo!35681 (h!74602 (exprs!7080 setElem!49924))) (regTwo!35680 (h!74602 (exprs!7080 setElem!49924))))))))

(declare-fun d!2206866 () Bool)

(declare-fun res!2881803 () Bool)

(assert (=> d!2206866 (=> res!2881803 e!4243894)))

(assert (=> d!2206866 (= res!2881803 (is-ElementMatch!17584 (h!74602 (exprs!7080 setElem!49924))))))

(assert (=> d!2206866 (= (validRegex!8960 (h!74602 (exprs!7080 setElem!49924))) e!4243894)))

(declare-fun b!7059149 () Bool)

(assert (=> b!7059149 (= e!4243896 call!641445)))

(declare-fun b!7059150 () Bool)

(assert (=> b!7059150 (= e!4243890 e!4243895)))

(assert (=> b!7059150 (= c!1315567 (is-Union!17584 (h!74602 (exprs!7080 setElem!49924))))))

(declare-fun bm!641441 () Bool)

(assert (=> bm!641441 (= call!641446 (validRegex!8960 (ite c!1315568 (reg!17913 (h!74602 (exprs!7080 setElem!49924))) (ite c!1315567 (regOne!35681 (h!74602 (exprs!7080 setElem!49924))) (regOne!35680 (h!74602 (exprs!7080 setElem!49924)))))))))

(assert (= (and d!2206866 (not res!2881803)) b!7059145))

(assert (= (and b!7059145 c!1315568) b!7059147))

(assert (= (and b!7059145 (not c!1315568)) b!7059150))

(assert (= (and b!7059147 res!2881804) b!7059143))

(assert (= (and b!7059150 c!1315567) b!7059142))

(assert (= (and b!7059150 (not c!1315567)) b!7059144))

(assert (= (and b!7059142 res!2881805) b!7059149))

(assert (= (and b!7059144 (not res!2881801)) b!7059146))

(assert (= (and b!7059146 res!2881802) b!7059148))

(assert (= (or b!7059149 b!7059148) bm!641440))

(assert (= (or b!7059142 b!7059146) bm!641439))

(assert (= (or b!7059143 bm!641439) bm!641441))

(declare-fun m!7778650 () Bool)

(assert (=> b!7059147 m!7778650))

(declare-fun m!7778652 () Bool)

(assert (=> bm!641440 m!7778652))

(declare-fun m!7778654 () Bool)

(assert (=> bm!641441 m!7778654))

(assert (=> bs!1877656 d!2206866))

(declare-fun d!2206868 () Bool)

(declare-fun c!1315569 () Bool)

(assert (=> d!2206868 (= c!1315569 (isEmpty!39754 (tail!13726 (tail!13726 (t!382058 s!7408)))))))

(declare-fun e!4243897 () Bool)

(assert (=> d!2206868 (= (matchZipper!3124 (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533938 (head!14368 (t!382058 s!7408))) (head!14368 (tail!13726 (t!382058 s!7408)))) (tail!13726 (tail!13726 (t!382058 s!7408)))) e!4243897)))

(declare-fun b!7059151 () Bool)

(assert (=> b!7059151 (= e!4243897 (nullableZipper!2667 (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533938 (head!14368 (t!382058 s!7408))) (head!14368 (tail!13726 (t!382058 s!7408))))))))

(declare-fun b!7059152 () Bool)

(assert (=> b!7059152 (= e!4243897 (matchZipper!3124 (derivationStepZipper!3034 (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533938 (head!14368 (t!382058 s!7408))) (head!14368 (tail!13726 (t!382058 s!7408)))) (head!14368 (tail!13726 (tail!13726 (t!382058 s!7408))))) (tail!13726 (tail!13726 (tail!13726 (t!382058 s!7408))))))))

(assert (= (and d!2206868 c!1315569) b!7059151))

(assert (= (and d!2206868 (not c!1315569)) b!7059152))

(assert (=> d!2206868 m!7777130))

(assert (=> d!2206868 m!7778232))

(assert (=> b!7059151 m!7777410))

(declare-fun m!7778656 () Bool)

(assert (=> b!7059151 m!7778656))

(assert (=> b!7059152 m!7777130))

(assert (=> b!7059152 m!7778236))

(assert (=> b!7059152 m!7777410))

(assert (=> b!7059152 m!7778236))

(declare-fun m!7778658 () Bool)

(assert (=> b!7059152 m!7778658))

(assert (=> b!7059152 m!7777130))

(assert (=> b!7059152 m!7778240))

(assert (=> b!7059152 m!7778658))

(assert (=> b!7059152 m!7778240))

(declare-fun m!7778660 () Bool)

(assert (=> b!7059152 m!7778660))

(assert (=> b!7058287 d!2206868))

(declare-fun bs!1878284 () Bool)

(declare-fun d!2206870 () Bool)

(assert (= bs!1878284 (and d!2206870 d!2205914)))

(declare-fun lambda!421370 () Int)

(assert (=> bs!1878284 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (h!74603 s!7408)) (= lambda!421370 lambda!421276))))

(declare-fun bs!1878285 () Bool)

(assert (= bs!1878285 (and d!2206870 d!2206654)))

(assert (=> bs!1878285 (= lambda!421370 lambda!421354)))

(declare-fun bs!1878286 () Bool)

(assert (= bs!1878286 (and d!2206870 d!2206094)))

(assert (=> bs!1878286 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 (t!382058 s!7408))) (= lambda!421370 lambda!421299))))

(declare-fun bs!1878287 () Bool)

(assert (= bs!1878287 (and d!2206870 d!2206614)))

(assert (=> bs!1878287 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 s!7408)) (= lambda!421370 lambda!421350))))

(declare-fun bs!1878288 () Bool)

(assert (= bs!1878288 (and d!2206870 d!2206854)))

(assert (=> bs!1878288 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 (tail!13726 s!7408))) (= lambda!421370 lambda!421368))))

(declare-fun bs!1878289 () Bool)

(assert (= bs!1878289 (and d!2206870 d!2206590)))

(assert (=> bs!1878289 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 (t!382058 s!7408))) (= lambda!421370 lambda!421347))))

(declare-fun bs!1878290 () Bool)

(assert (= bs!1878290 (and d!2206870 d!2206120)))

(assert (=> bs!1878290 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 (t!382058 s!7408))) (= lambda!421370 lambda!421304))))

(declare-fun bs!1878291 () Bool)

(assert (= bs!1878291 (and d!2206870 d!2206056)))

(assert (=> bs!1878291 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 (t!382058 s!7408))) (= lambda!421370 lambda!421298))))

(declare-fun bs!1878292 () Bool)

(assert (= bs!1878292 (and d!2206870 d!2206228)))

(assert (=> bs!1878292 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 s!7408)) (= lambda!421370 lambda!421317))))

(declare-fun bs!1878293 () Bool)

(assert (= bs!1878293 (and d!2206870 d!2206138)))

(assert (=> bs!1878293 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 s!7408)) (= lambda!421370 lambda!421307))))

(declare-fun bs!1878294 () Bool)

(assert (= bs!1878294 (and d!2206870 d!2206864)))

(assert (=> bs!1878294 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 s!7408)) (= lambda!421370 lambda!421369))))

(declare-fun bs!1878295 () Bool)

(assert (= bs!1878295 (and d!2206870 d!2206268)))

(assert (=> bs!1878295 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 s!7408)) (= lambda!421370 lambda!421318))))

(declare-fun bs!1878296 () Bool)

(assert (= bs!1878296 (and d!2206870 d!2206100)))

(assert (=> bs!1878296 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 s!7408)) (= lambda!421370 lambda!421303))))

(declare-fun bs!1878297 () Bool)

(assert (= bs!1878297 (and d!2206870 d!2206704)))

(assert (=> bs!1878297 (= lambda!421370 lambda!421358)))

(declare-fun bs!1878298 () Bool)

(assert (= bs!1878298 (and d!2206870 d!2206740)))

(assert (=> bs!1878298 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 (tail!13726 s!7408))) (= lambda!421370 lambda!421362))))

(declare-fun bs!1878299 () Bool)

(assert (= bs!1878299 (and d!2206870 b!7057661)))

(assert (=> bs!1878299 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (h!74603 s!7408)) (= lambda!421370 lambda!421196))))

(declare-fun bs!1878300 () Bool)

(assert (= bs!1878300 (and d!2206870 d!2205882)))

(assert (=> bs!1878300 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (h!74603 s!7408)) (= lambda!421370 lambda!421274))))

(declare-fun bs!1878301 () Bool)

(assert (= bs!1878301 (and d!2206870 d!2206200)))

(assert (=> bs!1878301 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 (t!382058 s!7408))) (= lambda!421370 lambda!421314))))

(declare-fun bs!1878302 () Bool)

(assert (= bs!1878302 (and d!2206870 d!2206580)))

(assert (=> bs!1878302 (= (= (head!14368 (tail!13726 (t!382058 s!7408))) (head!14368 (tail!13726 s!7408))) (= lambda!421370 lambda!421346))))

(declare-fun bs!1878303 () Bool)

(assert (= bs!1878303 (and d!2206870 d!2206800)))

(assert (=> bs!1878303 (= lambda!421370 lambda!421365)))

(assert (=> d!2206870 true))

(assert (=> d!2206870 (= (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533938 (head!14368 (t!382058 s!7408))) (head!14368 (tail!13726 (t!382058 s!7408)))) (flatMap!2510 (derivationStepZipper!3034 lt!2533938 (head!14368 (t!382058 s!7408))) lambda!421370))))

(declare-fun bs!1878304 () Bool)

(assert (= bs!1878304 d!2206870))

(assert (=> bs!1878304 m!7776784))

(declare-fun m!7778662 () Bool)

(assert (=> bs!1878304 m!7778662))

(assert (=> b!7058287 d!2206870))

(assert (=> b!7058287 d!2206656))

(assert (=> b!7058287 d!2206658))

(declare-fun d!2206872 () Bool)

(declare-fun lt!2534334 () Int)

(assert (=> d!2206872 (>= lt!2534334 0)))

(declare-fun e!4243898 () Int)

(assert (=> d!2206872 (= lt!2534334 e!4243898)))

(declare-fun c!1315570 () Bool)

(assert (=> d!2206872 (= c!1315570 (is-Nil!68154 lt!2534232))))

(assert (=> d!2206872 (= (size!41161 lt!2534232) lt!2534334)))

(declare-fun b!7059153 () Bool)

(assert (=> b!7059153 (= e!4243898 0)))

(declare-fun b!7059154 () Bool)

(assert (=> b!7059154 (= e!4243898 (+ 1 (size!41161 (t!382057 lt!2534232))))))

(assert (= (and d!2206872 c!1315570) b!7059153))

(assert (= (and d!2206872 (not c!1315570)) b!7059154))

(declare-fun m!7778664 () Bool)

(assert (=> b!7059154 m!7778664))

(assert (=> b!7058247 d!2206872))

(declare-fun d!2206874 () Bool)

(declare-fun lt!2534335 () Int)

(assert (=> d!2206874 (>= lt!2534335 0)))

(declare-fun e!4243899 () Int)

(assert (=> d!2206874 (= lt!2534335 e!4243899)))

(declare-fun c!1315571 () Bool)

(assert (=> d!2206874 (= c!1315571 (is-Nil!68154 (exprs!7080 lt!2534154)))))

(assert (=> d!2206874 (= (size!41161 (exprs!7080 lt!2534154)) lt!2534335)))

(declare-fun b!7059155 () Bool)

(assert (=> b!7059155 (= e!4243899 0)))

(declare-fun b!7059156 () Bool)

(assert (=> b!7059156 (= e!4243899 (+ 1 (size!41161 (t!382057 (exprs!7080 lt!2534154)))))))

(assert (= (and d!2206874 c!1315571) b!7059155))

(assert (= (and d!2206874 (not c!1315571)) b!7059156))

(declare-fun m!7778666 () Bool)

(assert (=> b!7059156 m!7778666))

(assert (=> b!7058247 d!2206874))

(assert (=> b!7058247 d!2206256))

(assert (=> d!2206068 d!2206564))

(assert (=> d!2206266 d!2206764))

(declare-fun bs!1878305 () Bool)

(declare-fun d!2206876 () Bool)

(assert (= bs!1878305 (and d!2206876 d!2206048)))

(declare-fun lambda!421371 () Int)

(assert (=> bs!1878305 (= lambda!421371 lambda!421297)))

(declare-fun bs!1878306 () Bool)

(assert (= bs!1878306 (and d!2206876 b!7057679)))

(assert (=> bs!1878306 (= lambda!421371 lambda!421195)))

(declare-fun bs!1878307 () Bool)

(assert (= bs!1878307 (and d!2206876 d!2206772)))

(assert (=> bs!1878307 (= lambda!421371 lambda!421363)))

(declare-fun bs!1878308 () Bool)

(assert (= bs!1878308 (and d!2206876 d!2205902)))

(assert (=> bs!1878308 (= lambda!421371 lambda!421275)))

(declare-fun bs!1878309 () Bool)

(assert (= bs!1878309 (and d!2206876 d!2205830)))

(assert (=> bs!1878309 (= lambda!421371 lambda!421264)))

(declare-fun bs!1878310 () Bool)

(assert (= bs!1878310 (and d!2206876 d!2206734)))

(assert (=> bs!1878310 (= lambda!421371 lambda!421361)))

(declare-fun bs!1878311 () Bool)

(assert (= bs!1878311 (and d!2206876 d!2206672)))

(assert (=> bs!1878311 (= lambda!421371 lambda!421356)))

(declare-fun bs!1878312 () Bool)

(assert (= bs!1878312 (and d!2206876 d!2206826)))

(assert (=> bs!1878312 (= lambda!421371 lambda!421367)))

(declare-fun bs!1878313 () Bool)

(assert (= bs!1878313 (and d!2206876 d!2206660)))

(assert (=> bs!1878313 (= lambda!421371 lambda!421355)))

(declare-fun bs!1878314 () Bool)

(assert (= bs!1878314 (and d!2206876 d!2206632)))

(assert (=> bs!1878314 (= lambda!421371 lambda!421352)))

(assert (=> d!2206876 (= (inv!86820 setElem!49936) (forall!16536 (exprs!7080 setElem!49936) lambda!421371))))

(declare-fun bs!1878315 () Bool)

(assert (= bs!1878315 d!2206876))

(declare-fun m!7778668 () Bool)

(assert (=> bs!1878315 m!7778668))

(assert (=> setNonEmpty!49936 d!2206876))

(declare-fun b!7059157 () Bool)

(declare-fun e!4243900 () Int)

(declare-fun e!4243901 () Int)

(assert (=> b!7059157 (= e!4243900 e!4243901)))

(declare-fun c!1315572 () Bool)

(assert (=> b!7059157 (= c!1315572 (is-Star!17584 (ite c!1315223 (regOne!35681 (h!74602 (exprs!7080 lt!2533926))) (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))))))))

(declare-fun b!7059158 () Bool)

(declare-fun e!4243903 () Int)

(declare-fun e!4243902 () Int)

(assert (=> b!7059158 (= e!4243903 e!4243902)))

(declare-fun c!1315575 () Bool)

(assert (=> b!7059158 (= c!1315575 (is-Concat!26429 (ite c!1315223 (regOne!35681 (h!74602 (exprs!7080 lt!2533926))) (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))))))))

(declare-fun b!7059159 () Bool)

(declare-fun c!1315573 () Bool)

(assert (=> b!7059159 (= c!1315573 (is-Union!17584 (ite c!1315223 (regOne!35681 (h!74602 (exprs!7080 lt!2533926))) (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))))))))

(assert (=> b!7059159 (= e!4243901 e!4243903)))

(declare-fun call!641449 () Int)

(declare-fun bm!641442 () Bool)

(assert (=> bm!641442 (= call!641449 (regexDepthTotal!316 (ite c!1315572 (reg!17913 (ite c!1315223 (regOne!35681 (h!74602 (exprs!7080 lt!2533926))) (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))))) (ite c!1315573 (regTwo!35681 (ite c!1315223 (regOne!35681 (h!74602 (exprs!7080 lt!2533926))) (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))))) (regOne!35680 (ite c!1315223 (regOne!35681 (h!74602 (exprs!7080 lt!2533926))) (regTwo!35680 (h!74602 (exprs!7080 lt!2533926)))))))))))

(declare-fun b!7059160 () Bool)

(assert (=> b!7059160 (= e!4243902 1)))

(declare-fun b!7059161 () Bool)

(declare-fun call!641447 () Int)

(declare-fun call!641448 () Int)

(assert (=> b!7059161 (= e!4243902 (+ 1 call!641447 call!641448))))

(declare-fun d!2206878 () Bool)

(declare-fun lt!2534336 () Int)

(assert (=> d!2206878 (> lt!2534336 0)))

(assert (=> d!2206878 (= lt!2534336 e!4243900)))

(declare-fun c!1315574 () Bool)

(assert (=> d!2206878 (= c!1315574 (is-ElementMatch!17584 (ite c!1315223 (regOne!35681 (h!74602 (exprs!7080 lt!2533926))) (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))))))))

(assert (=> d!2206878 (= (regexDepthTotal!316 (ite c!1315223 (regOne!35681 (h!74602 (exprs!7080 lt!2533926))) (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))))) lt!2534336)))

(declare-fun b!7059162 () Bool)

(assert (=> b!7059162 (= e!4243903 (+ 1 call!641448 call!641447))))

(declare-fun b!7059163 () Bool)

(assert (=> b!7059163 (= e!4243901 (+ 1 call!641449))))

(declare-fun bm!641443 () Bool)

(assert (=> bm!641443 (= call!641448 (regexDepthTotal!316 (ite c!1315573 (regOne!35681 (ite c!1315223 (regOne!35681 (h!74602 (exprs!7080 lt!2533926))) (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))))) (regTwo!35680 (ite c!1315223 (regOne!35681 (h!74602 (exprs!7080 lt!2533926))) (regTwo!35680 (h!74602 (exprs!7080 lt!2533926))))))))))

(declare-fun b!7059164 () Bool)

(assert (=> b!7059164 (= e!4243900 1)))

(declare-fun bm!641444 () Bool)

(assert (=> bm!641444 (= call!641447 call!641449)))

(assert (= (and d!2206878 c!1315574) b!7059164))

(assert (= (and d!2206878 (not c!1315574)) b!7059157))

(assert (= (and b!7059157 c!1315572) b!7059163))

(assert (= (and b!7059157 (not c!1315572)) b!7059159))

(assert (= (and b!7059159 c!1315573) b!7059162))

(assert (= (and b!7059159 (not c!1315573)) b!7059158))

(assert (= (and b!7059158 c!1315575) b!7059161))

(assert (= (and b!7059158 (not c!1315575)) b!7059160))

(assert (= (or b!7059162 b!7059161) bm!641444))

(assert (= (or b!7059162 b!7059161) bm!641443))

(assert (= (or b!7059163 bm!641444) bm!641442))

(declare-fun m!7778670 () Bool)

(assert (=> bm!641442 m!7778670))

(declare-fun m!7778672 () Bool)

(assert (=> bm!641443 m!7778672))

(assert (=> bm!641233 d!2206878))

(declare-fun bs!1878316 () Bool)

(declare-fun d!2206880 () Bool)

(assert (= bs!1878316 (and d!2206880 d!2206712)))

(declare-fun lambda!421372 () Int)

(assert (=> bs!1878316 (= lambda!421372 lambda!421360)))

(declare-fun bs!1878317 () Bool)

(assert (= bs!1878317 (and d!2206880 d!2206096)))

(assert (=> bs!1878317 (= lambda!421372 lambda!421302)))

(declare-fun bs!1878318 () Bool)

(assert (= bs!1878318 (and d!2206880 d!2206564)))

(assert (=> bs!1878318 (not (= lambda!421372 lambda!421345))))

(declare-fun bs!1878319 () Bool)

(assert (= bs!1878319 (and d!2206880 d!2206206)))

(assert (=> bs!1878319 (= lambda!421372 lambda!421315)))

(declare-fun bs!1878320 () Bool)

(assert (= bs!1878320 (and d!2206880 d!2206128)))

(assert (=> bs!1878320 (= lambda!421372 lambda!421305)))

(declare-fun bs!1878321 () Bool)

(assert (= bs!1878321 (and d!2206880 d!2205874)))

(assert (=> bs!1878321 (not (= lambda!421372 lambda!421268))))

(declare-fun bs!1878322 () Bool)

(assert (= bs!1878322 (and d!2206880 d!2206130)))

(assert (=> bs!1878322 (= lambda!421372 lambda!421306)))

(declare-fun bs!1878323 () Bool)

(assert (= bs!1878323 (and d!2206880 d!2206270)))

(assert (=> bs!1878323 (= lambda!421372 lambda!421319)))

(declare-fun bs!1878324 () Bool)

(assert (= bs!1878324 (and d!2206880 d!2206170)))

(assert (=> bs!1878324 (= lambda!421372 lambda!421312)))

(declare-fun bs!1878325 () Bool)

(assert (= bs!1878325 (and d!2206880 d!2206706)))

(assert (=> bs!1878325 (= lambda!421372 lambda!421359)))

(declare-fun bs!1878326 () Bool)

(assert (= bs!1878326 (and d!2206880 d!2206644)))

(assert (=> bs!1878326 (= lambda!421372 lambda!421353)))

(declare-fun bs!1878327 () Bool)

(assert (= bs!1878327 (and d!2206880 d!2206554)))

(assert (=> bs!1878327 (= lambda!421372 lambda!421343)))

(declare-fun bs!1878328 () Bool)

(assert (= bs!1878328 (and d!2206880 d!2206196)))

(assert (=> bs!1878328 (= lambda!421372 lambda!421313)))

(declare-fun bs!1878329 () Bool)

(assert (= bs!1878329 (and d!2206880 d!2206616)))

(assert (=> bs!1878329 (= lambda!421372 lambda!421351)))

(declare-fun bs!1878330 () Bool)

(assert (= bs!1878330 (and d!2206880 d!2206600)))

(assert (=> bs!1878330 (not (= lambda!421372 lambda!421348))))

(declare-fun bs!1878331 () Bool)

(assert (= bs!1878331 (and d!2206880 d!2206560)))

(assert (=> bs!1878331 (= lambda!421372 lambda!421344)))

(declare-fun bs!1878332 () Bool)

(assert (= bs!1878332 (and d!2206880 b!7057676)))

(assert (=> bs!1878332 (not (= lambda!421372 lambda!421193))))

(declare-fun bs!1878333 () Bool)

(assert (= bs!1878333 (and d!2206880 d!2206788)))

(assert (=> bs!1878333 (= lambda!421372 lambda!421364)))

(declare-fun bs!1878334 () Bool)

(assert (= bs!1878334 (and d!2206880 d!2206214)))

(assert (=> bs!1878334 (= lambda!421372 lambda!421316)))

(declare-fun bs!1878335 () Bool)

(assert (= bs!1878335 (and d!2206880 d!2206158)))

(assert (=> bs!1878335 (not (= lambda!421372 lambda!421311))))

(declare-fun bs!1878336 () Bool)

(assert (= bs!1878336 (and d!2206880 d!2206156)))

(assert (=> bs!1878336 (not (= lambda!421372 lambda!421308))))

(declare-fun bs!1878337 () Bool)

(assert (= bs!1878337 (and d!2206880 d!2206692)))

(assert (=> bs!1878337 (= lambda!421372 lambda!421357)))

(declare-fun bs!1878338 () Bool)

(assert (= bs!1878338 (and d!2206880 d!2205876)))

(assert (=> bs!1878338 (not (= lambda!421372 lambda!421271))))

(declare-fun bs!1878339 () Bool)

(assert (= bs!1878339 (and d!2206880 d!2206810)))

(assert (=> bs!1878339 (= lambda!421372 lambda!421366)))

(declare-fun bs!1878340 () Bool)

(assert (= bs!1878340 (and d!2206880 d!2206602)))

(assert (=> bs!1878340 (= lambda!421372 lambda!421349)))

(assert (=> d!2206880 (= (nullableZipper!2667 (derivationStepZipper!3034 lt!2533946 (head!14368 (t!382058 s!7408)))) (exists!3584 (derivationStepZipper!3034 lt!2533946 (head!14368 (t!382058 s!7408))) lambda!421372))))

(declare-fun bs!1878341 () Bool)

(assert (= bs!1878341 d!2206880))

(assert (=> bs!1878341 m!7776694))

(declare-fun m!7778674 () Bool)

(assert (=> bs!1878341 m!7778674))

(assert (=> b!7058180 d!2206880))

(assert (=> d!2206136 d!2206764))

(declare-fun bs!1878342 () Bool)

(declare-fun d!2206882 () Bool)

(assert (= bs!1878342 (and d!2206882 d!2206048)))

(declare-fun lambda!421373 () Int)

(assert (=> bs!1878342 (= lambda!421373 lambda!421297)))

(declare-fun bs!1878343 () Bool)

(assert (= bs!1878343 (and d!2206882 b!7057679)))

(assert (=> bs!1878343 (= lambda!421373 lambda!421195)))

(declare-fun bs!1878344 () Bool)

(assert (= bs!1878344 (and d!2206882 d!2206772)))

(assert (=> bs!1878344 (= lambda!421373 lambda!421363)))

(declare-fun bs!1878345 () Bool)

(assert (= bs!1878345 (and d!2206882 d!2205902)))

(assert (=> bs!1878345 (= lambda!421373 lambda!421275)))

(declare-fun bs!1878346 () Bool)

(assert (= bs!1878346 (and d!2206882 d!2205830)))

(assert (=> bs!1878346 (= lambda!421373 lambda!421264)))

(declare-fun bs!1878347 () Bool)

(assert (= bs!1878347 (and d!2206882 d!2206734)))

(assert (=> bs!1878347 (= lambda!421373 lambda!421361)))

(declare-fun bs!1878348 () Bool)

(assert (= bs!1878348 (and d!2206882 d!2206876)))

(assert (=> bs!1878348 (= lambda!421373 lambda!421371)))

(declare-fun bs!1878349 () Bool)

(assert (= bs!1878349 (and d!2206882 d!2206672)))

(assert (=> bs!1878349 (= lambda!421373 lambda!421356)))

(declare-fun bs!1878350 () Bool)

(assert (= bs!1878350 (and d!2206882 d!2206826)))

(assert (=> bs!1878350 (= lambda!421373 lambda!421367)))

(declare-fun bs!1878351 () Bool)

(assert (= bs!1878351 (and d!2206882 d!2206660)))

(assert (=> bs!1878351 (= lambda!421373 lambda!421355)))

(declare-fun bs!1878352 () Bool)

(assert (= bs!1878352 (and d!2206882 d!2206632)))

(assert (=> bs!1878352 (= lambda!421373 lambda!421352)))

(assert (=> d!2206882 (= (inv!86820 setElem!49941) (forall!16536 (exprs!7080 setElem!49941) lambda!421373))))

(declare-fun bs!1878353 () Bool)

(assert (= bs!1878353 d!2206882))

(declare-fun m!7778676 () Bool)

(assert (=> bs!1878353 m!7778676))

(assert (=> setNonEmpty!49941 d!2206882))

(declare-fun d!2206884 () Bool)

(declare-fun c!1315576 () Bool)

(assert (=> d!2206884 (= c!1315576 (is-Nil!68154 lt!2534230))))

(declare-fun e!4243904 () (Set Regex!17584))

(assert (=> d!2206884 (= (content!13704 lt!2534230) e!4243904)))

(declare-fun b!7059165 () Bool)

(assert (=> b!7059165 (= e!4243904 (as set.empty (Set Regex!17584)))))

(declare-fun b!7059166 () Bool)

(assert (=> b!7059166 (= e!4243904 (set.union (set.insert (h!74602 lt!2534230) (as set.empty (Set Regex!17584))) (content!13704 (t!382057 lt!2534230))))))

(assert (= (and d!2206884 c!1315576) b!7059165))

(assert (= (and d!2206884 (not c!1315576)) b!7059166))

(declare-fun m!7778678 () Bool)

(assert (=> b!7059166 m!7778678))

(declare-fun m!7778680 () Bool)

(assert (=> b!7059166 m!7778680))

(assert (=> d!2206140 d!2206884))

(assert (=> d!2206140 d!2206760))

(assert (=> d!2206140 d!2206076))

(declare-fun bs!1878354 () Bool)

(declare-fun d!2206886 () Bool)

(assert (= bs!1878354 (and d!2206886 d!2206048)))

(declare-fun lambda!421374 () Int)

(assert (=> bs!1878354 (= lambda!421374 lambda!421297)))

(declare-fun bs!1878355 () Bool)

(assert (= bs!1878355 (and d!2206886 b!7057679)))

(assert (=> bs!1878355 (= lambda!421374 lambda!421195)))

(declare-fun bs!1878356 () Bool)

(assert (= bs!1878356 (and d!2206886 d!2206772)))

(assert (=> bs!1878356 (= lambda!421374 lambda!421363)))

(declare-fun bs!1878357 () Bool)

(assert (= bs!1878357 (and d!2206886 d!2205902)))

(assert (=> bs!1878357 (= lambda!421374 lambda!421275)))

(declare-fun bs!1878358 () Bool)

(assert (= bs!1878358 (and d!2206886 d!2205830)))

(assert (=> bs!1878358 (= lambda!421374 lambda!421264)))

(declare-fun bs!1878359 () Bool)

(assert (= bs!1878359 (and d!2206886 d!2206734)))

(assert (=> bs!1878359 (= lambda!421374 lambda!421361)))

(declare-fun bs!1878360 () Bool)

(assert (= bs!1878360 (and d!2206886 d!2206876)))

(assert (=> bs!1878360 (= lambda!421374 lambda!421371)))

(declare-fun bs!1878361 () Bool)

(assert (= bs!1878361 (and d!2206886 d!2206672)))

(assert (=> bs!1878361 (= lambda!421374 lambda!421356)))

(declare-fun bs!1878362 () Bool)

(assert (= bs!1878362 (and d!2206886 d!2206882)))

(assert (=> bs!1878362 (= lambda!421374 lambda!421373)))

(declare-fun bs!1878363 () Bool)

(assert (= bs!1878363 (and d!2206886 d!2206826)))

(assert (=> bs!1878363 (= lambda!421374 lambda!421367)))

(declare-fun bs!1878364 () Bool)

(assert (= bs!1878364 (and d!2206886 d!2206660)))

(assert (=> bs!1878364 (= lambda!421374 lambda!421355)))

(declare-fun bs!1878365 () Bool)

(assert (= bs!1878365 (and d!2206886 d!2206632)))

(assert (=> bs!1878365 (= lambda!421374 lambda!421352)))

(assert (=> d!2206886 (= (inv!86820 (h!74604 res!2881552)) (forall!16536 (exprs!7080 (h!74604 res!2881552)) lambda!421374))))

(declare-fun bs!1878366 () Bool)

(assert (= bs!1878366 d!2206886))

(declare-fun m!7778682 () Bool)

(assert (=> bs!1878366 m!7778682))

(assert (=> b!7058324 d!2206886))

(declare-fun d!2206888 () Bool)

(declare-fun c!1315577 () Bool)

(assert (=> d!2206888 (= c!1315577 (is-Nil!68154 (t!382057 lt!2534129)))))

(declare-fun e!4243905 () (Set Regex!17584))

(assert (=> d!2206888 (= (content!13704 (t!382057 lt!2534129)) e!4243905)))

(declare-fun b!7059167 () Bool)

(assert (=> b!7059167 (= e!4243905 (as set.empty (Set Regex!17584)))))

(declare-fun b!7059168 () Bool)

(assert (=> b!7059168 (= e!4243905 (set.union (set.insert (h!74602 (t!382057 lt!2534129)) (as set.empty (Set Regex!17584))) (content!13704 (t!382057 (t!382057 lt!2534129)))))))

(assert (= (and d!2206888 c!1315577) b!7059167))

(assert (= (and d!2206888 (not c!1315577)) b!7059168))

(declare-fun m!7778684 () Bool)

(assert (=> b!7059168 m!7778684))

(declare-fun m!7778686 () Bool)

(assert (=> b!7059168 m!7778686))

(assert (=> b!7058254 d!2206888))

(declare-fun b!7059169 () Bool)

(declare-fun e!4243906 () (Set Context!13160))

(declare-fun call!641450 () (Set Context!13160))

(assert (=> b!7059169 (= e!4243906 call!641450)))

(declare-fun b!7059170 () Bool)

(declare-fun e!4243907 () Bool)

(assert (=> b!7059170 (= e!4243907 (nullable!7267 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926))))))))))))

(declare-fun e!4243908 () (Set Context!13160))

(declare-fun b!7059171 () Bool)

(assert (=> b!7059171 (= e!4243908 (set.union call!641450 (derivationStepZipperUp!2168 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926))))))))) (h!74603 s!7408))))))

(declare-fun b!7059172 () Bool)

(assert (=> b!7059172 (= e!4243906 (as set.empty (Set Context!13160)))))

(declare-fun b!7059173 () Bool)

(assert (=> b!7059173 (= e!4243908 e!4243906)))

(declare-fun c!1315579 () Bool)

(assert (=> b!7059173 (= c!1315579 (is-Cons!68154 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))))))))

(declare-fun d!2206890 () Bool)

(declare-fun c!1315578 () Bool)

(assert (=> d!2206890 (= c!1315578 e!4243907)))

(declare-fun res!2881806 () Bool)

(assert (=> d!2206890 (=> (not res!2881806) (not e!4243907))))

(assert (=> d!2206890 (= res!2881806 (is-Cons!68154 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))))))))

(assert (=> d!2206890 (= (derivationStepZipperUp!2168 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))) (h!74603 s!7408)) e!4243908)))

(declare-fun bm!641445 () Bool)

(assert (=> bm!641445 (= call!641450 (derivationStepZipperDown!2218 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))))) (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926))))))))) (h!74603 s!7408)))))

(assert (= (and d!2206890 res!2881806) b!7059170))

(assert (= (and d!2206890 c!1315578) b!7059171))

(assert (= (and d!2206890 (not c!1315578)) b!7059173))

(assert (= (and b!7059173 c!1315579) b!7059169))

(assert (= (and b!7059173 (not c!1315579)) b!7059172))

(assert (= (or b!7059171 b!7059169) bm!641445))

(declare-fun m!7778688 () Bool)

(assert (=> b!7059170 m!7778688))

(declare-fun m!7778690 () Bool)

(assert (=> b!7059171 m!7778690))

(declare-fun m!7778692 () Bool)

(assert (=> bm!641445 m!7778692))

(assert (=> b!7058292 d!2206890))

(declare-fun d!2206892 () Bool)

(declare-fun c!1315580 () Bool)

(assert (=> d!2206892 (= c!1315580 (isEmpty!39754 (tail!13726 (tail!13726 s!7408))))))

(declare-fun e!4243909 () Bool)

(assert (=> d!2206892 (= (matchZipper!3124 (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533952 (head!14368 s!7408)) (head!14368 (tail!13726 s!7408))) (tail!13726 (tail!13726 s!7408))) e!4243909)))

(declare-fun b!7059174 () Bool)

(assert (=> b!7059174 (= e!4243909 (nullableZipper!2667 (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533952 (head!14368 s!7408)) (head!14368 (tail!13726 s!7408)))))))

(declare-fun b!7059175 () Bool)

(assert (=> b!7059175 (= e!4243909 (matchZipper!3124 (derivationStepZipper!3034 (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533952 (head!14368 s!7408)) (head!14368 (tail!13726 s!7408))) (head!14368 (tail!13726 (tail!13726 s!7408)))) (tail!13726 (tail!13726 (tail!13726 s!7408)))))))

(assert (= (and d!2206892 c!1315580) b!7059174))

(assert (= (and d!2206892 (not c!1315580)) b!7059175))

(assert (=> d!2206892 m!7777220))

(assert (=> d!2206892 m!7778092))

(assert (=> b!7059174 m!7777524))

(declare-fun m!7778694 () Bool)

(assert (=> b!7059174 m!7778694))

(assert (=> b!7059175 m!7777220))

(assert (=> b!7059175 m!7778096))

(assert (=> b!7059175 m!7777524))

(assert (=> b!7059175 m!7778096))

(declare-fun m!7778696 () Bool)

(assert (=> b!7059175 m!7778696))

(assert (=> b!7059175 m!7777220))

(assert (=> b!7059175 m!7778100))

(assert (=> b!7059175 m!7778696))

(assert (=> b!7059175 m!7778100))

(declare-fun m!7778698 () Bool)

(assert (=> b!7059175 m!7778698))

(assert (=> b!7058380 d!2206892))

(declare-fun bs!1878367 () Bool)

(declare-fun d!2206894 () Bool)

(assert (= bs!1878367 (and d!2206894 d!2205914)))

(declare-fun lambda!421375 () Int)

(assert (=> bs!1878367 (= (= (head!14368 (tail!13726 s!7408)) (h!74603 s!7408)) (= lambda!421375 lambda!421276))))

(declare-fun bs!1878368 () Bool)

(assert (= bs!1878368 (and d!2206894 d!2206654)))

(assert (=> bs!1878368 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 (tail!13726 (t!382058 s!7408)))) (= lambda!421375 lambda!421354))))

(declare-fun bs!1878369 () Bool)

(assert (= bs!1878369 (and d!2206894 d!2206094)))

(assert (=> bs!1878369 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 (t!382058 s!7408))) (= lambda!421375 lambda!421299))))

(declare-fun bs!1878370 () Bool)

(assert (= bs!1878370 (and d!2206894 d!2206614)))

(assert (=> bs!1878370 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 s!7408)) (= lambda!421375 lambda!421350))))

(declare-fun bs!1878371 () Bool)

(assert (= bs!1878371 (and d!2206894 d!2206590)))

(assert (=> bs!1878371 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 (t!382058 s!7408))) (= lambda!421375 lambda!421347))))

(declare-fun bs!1878372 () Bool)

(assert (= bs!1878372 (and d!2206894 d!2206120)))

(assert (=> bs!1878372 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 (t!382058 s!7408))) (= lambda!421375 lambda!421304))))

(declare-fun bs!1878373 () Bool)

(assert (= bs!1878373 (and d!2206894 d!2206056)))

(assert (=> bs!1878373 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 (t!382058 s!7408))) (= lambda!421375 lambda!421298))))

(declare-fun bs!1878374 () Bool)

(assert (= bs!1878374 (and d!2206894 d!2206228)))

(assert (=> bs!1878374 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 s!7408)) (= lambda!421375 lambda!421317))))

(declare-fun bs!1878375 () Bool)

(assert (= bs!1878375 (and d!2206894 d!2206138)))

(assert (=> bs!1878375 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 s!7408)) (= lambda!421375 lambda!421307))))

(declare-fun bs!1878376 () Bool)

(assert (= bs!1878376 (and d!2206894 d!2206864)))

(assert (=> bs!1878376 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 s!7408)) (= lambda!421375 lambda!421369))))

(declare-fun bs!1878377 () Bool)

(assert (= bs!1878377 (and d!2206894 d!2206268)))

(assert (=> bs!1878377 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 s!7408)) (= lambda!421375 lambda!421318))))

(declare-fun bs!1878378 () Bool)

(assert (= bs!1878378 (and d!2206894 d!2206100)))

(assert (=> bs!1878378 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 s!7408)) (= lambda!421375 lambda!421303))))

(declare-fun bs!1878379 () Bool)

(assert (= bs!1878379 (and d!2206894 d!2206704)))

(assert (=> bs!1878379 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 (tail!13726 (t!382058 s!7408)))) (= lambda!421375 lambda!421358))))

(declare-fun bs!1878380 () Bool)

(assert (= bs!1878380 (and d!2206894 d!2206740)))

(assert (=> bs!1878380 (= lambda!421375 lambda!421362)))

(declare-fun bs!1878381 () Bool)

(assert (= bs!1878381 (and d!2206894 d!2206854)))

(assert (=> bs!1878381 (= lambda!421375 lambda!421368)))

(declare-fun bs!1878382 () Bool)

(assert (= bs!1878382 (and d!2206894 d!2206870)))

(assert (=> bs!1878382 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 (tail!13726 (t!382058 s!7408)))) (= lambda!421375 lambda!421370))))

(declare-fun bs!1878383 () Bool)

(assert (= bs!1878383 (and d!2206894 b!7057661)))

(assert (=> bs!1878383 (= (= (head!14368 (tail!13726 s!7408)) (h!74603 s!7408)) (= lambda!421375 lambda!421196))))

(declare-fun bs!1878384 () Bool)

(assert (= bs!1878384 (and d!2206894 d!2205882)))

(assert (=> bs!1878384 (= (= (head!14368 (tail!13726 s!7408)) (h!74603 s!7408)) (= lambda!421375 lambda!421274))))

(declare-fun bs!1878385 () Bool)

(assert (= bs!1878385 (and d!2206894 d!2206200)))

(assert (=> bs!1878385 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 (t!382058 s!7408))) (= lambda!421375 lambda!421314))))

(declare-fun bs!1878386 () Bool)

(assert (= bs!1878386 (and d!2206894 d!2206580)))

(assert (=> bs!1878386 (= lambda!421375 lambda!421346)))

(declare-fun bs!1878387 () Bool)

(assert (= bs!1878387 (and d!2206894 d!2206800)))

(assert (=> bs!1878387 (= (= (head!14368 (tail!13726 s!7408)) (head!14368 (tail!13726 (t!382058 s!7408)))) (= lambda!421375 lambda!421365))))

(assert (=> d!2206894 true))

(assert (=> d!2206894 (= (derivationStepZipper!3034 (derivationStepZipper!3034 lt!2533952 (head!14368 s!7408)) (head!14368 (tail!13726 s!7408))) (flatMap!2510 (derivationStepZipper!3034 lt!2533952 (head!14368 s!7408)) lambda!421375))))

(declare-fun bs!1878388 () Bool)

(assert (= bs!1878388 d!2206894))

(assert (=> bs!1878388 m!7776716))

(declare-fun m!7778700 () Bool)

(assert (=> bs!1878388 m!7778700))

(assert (=> b!7058380 d!2206894))

(assert (=> b!7058380 d!2206582))

(assert (=> b!7058380 d!2206584))

(declare-fun d!2206896 () Bool)

(assert (=> d!2206896 (= (flatMap!2510 lt!2533954 lambda!421298) (choose!53885 lt!2533954 lambda!421298))))

(declare-fun bs!1878389 () Bool)

(assert (= bs!1878389 d!2206896))

(declare-fun m!7778702 () Bool)

(assert (=> bs!1878389 m!7778702))

(assert (=> d!2206056 d!2206896))

(assert (=> d!2206226 d!2206764))

(declare-fun b!7059176 () Bool)

(declare-fun e!4243910 () Int)

(declare-fun e!4243911 () Int)

(assert (=> b!7059176 (= e!4243910 e!4243911)))

(declare-fun c!1315581 () Bool)

(assert (=> b!7059176 (= c!1315581 (is-Star!17584 (ite c!1315222 (reg!17913 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315223 (regTwo!35681 (h!74602 (exprs!7080 lt!2533926))) (regOne!35680 (h!74602 (exprs!7080 lt!2533926)))))))))

(declare-fun b!7059177 () Bool)

(declare-fun e!4243913 () Int)

(declare-fun e!4243912 () Int)

(assert (=> b!7059177 (= e!4243913 e!4243912)))

(declare-fun c!1315584 () Bool)

(assert (=> b!7059177 (= c!1315584 (is-Concat!26429 (ite c!1315222 (reg!17913 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315223 (regTwo!35681 (h!74602 (exprs!7080 lt!2533926))) (regOne!35680 (h!74602 (exprs!7080 lt!2533926)))))))))

(declare-fun c!1315582 () Bool)

(declare-fun b!7059178 () Bool)

(assert (=> b!7059178 (= c!1315582 (is-Union!17584 (ite c!1315222 (reg!17913 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315223 (regTwo!35681 (h!74602 (exprs!7080 lt!2533926))) (regOne!35680 (h!74602 (exprs!7080 lt!2533926)))))))))

(assert (=> b!7059178 (= e!4243911 e!4243913)))

(declare-fun bm!641446 () Bool)

(declare-fun call!641453 () Int)

(assert (=> bm!641446 (= call!641453 (regexDepthTotal!316 (ite c!1315581 (reg!17913 (ite c!1315222 (reg!17913 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315223 (regTwo!35681 (h!74602 (exprs!7080 lt!2533926))) (regOne!35680 (h!74602 (exprs!7080 lt!2533926)))))) (ite c!1315582 (regTwo!35681 (ite c!1315222 (reg!17913 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315223 (regTwo!35681 (h!74602 (exprs!7080 lt!2533926))) (regOne!35680 (h!74602 (exprs!7080 lt!2533926)))))) (regOne!35680 (ite c!1315222 (reg!17913 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315223 (regTwo!35681 (h!74602 (exprs!7080 lt!2533926))) (regOne!35680 (h!74602 (exprs!7080 lt!2533926))))))))))))

(declare-fun b!7059179 () Bool)

(assert (=> b!7059179 (= e!4243912 1)))

(declare-fun b!7059180 () Bool)

(declare-fun call!641451 () Int)

(declare-fun call!641452 () Int)

(assert (=> b!7059180 (= e!4243912 (+ 1 call!641451 call!641452))))

(declare-fun d!2206898 () Bool)

(declare-fun lt!2534337 () Int)

(assert (=> d!2206898 (> lt!2534337 0)))

(assert (=> d!2206898 (= lt!2534337 e!4243910)))

(declare-fun c!1315583 () Bool)

(assert (=> d!2206898 (= c!1315583 (is-ElementMatch!17584 (ite c!1315222 (reg!17913 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315223 (regTwo!35681 (h!74602 (exprs!7080 lt!2533926))) (regOne!35680 (h!74602 (exprs!7080 lt!2533926)))))))))

(assert (=> d!2206898 (= (regexDepthTotal!316 (ite c!1315222 (reg!17913 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315223 (regTwo!35681 (h!74602 (exprs!7080 lt!2533926))) (regOne!35680 (h!74602 (exprs!7080 lt!2533926)))))) lt!2534337)))

(declare-fun b!7059181 () Bool)

(assert (=> b!7059181 (= e!4243913 (+ 1 call!641452 call!641451))))

(declare-fun b!7059182 () Bool)

(assert (=> b!7059182 (= e!4243911 (+ 1 call!641453))))

(declare-fun bm!641447 () Bool)

(assert (=> bm!641447 (= call!641452 (regexDepthTotal!316 (ite c!1315582 (regOne!35681 (ite c!1315222 (reg!17913 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315223 (regTwo!35681 (h!74602 (exprs!7080 lt!2533926))) (regOne!35680 (h!74602 (exprs!7080 lt!2533926)))))) (regTwo!35680 (ite c!1315222 (reg!17913 (h!74602 (exprs!7080 lt!2533926))) (ite c!1315223 (regTwo!35681 (h!74602 (exprs!7080 lt!2533926))) (regOne!35680 (h!74602 (exprs!7080 lt!2533926)))))))))))

(declare-fun b!7059183 () Bool)

(assert (=> b!7059183 (= e!4243910 1)))

(declare-fun bm!641448 () Bool)

(assert (=> bm!641448 (= call!641451 call!641453)))

(assert (= (and d!2206898 c!1315583) b!7059183))

(assert (= (and d!2206898 (not c!1315583)) b!7059176))

(assert (= (and b!7059176 c!1315581) b!7059182))

(assert (= (and b!7059176 (not c!1315581)) b!7059178))

(assert (= (and b!7059178 c!1315582) b!7059181))

(assert (= (and b!7059178 (not c!1315582)) b!7059177))

(assert (= (and b!7059177 c!1315584) b!7059180))

(assert (= (and b!7059177 (not c!1315584)) b!7059179))

(assert (= (or b!7059181 b!7059180) bm!641448))

(assert (= (or b!7059181 b!7059180) bm!641447))

(assert (= (or b!7059182 bm!641448) bm!641446))

(declare-fun m!7778704 () Bool)

(assert (=> bm!641446 m!7778704))

(declare-fun m!7778706 () Bool)

(assert (=> bm!641447 m!7778706))

(assert (=> bm!641232 d!2206898))

(declare-fun d!2206900 () Bool)

(assert (=> d!2206900 (= (flatMap!2510 lt!2533938 lambda!421314) (choose!53885 lt!2533938 lambda!421314))))

(declare-fun bs!1878390 () Bool)

(assert (= bs!1878390 d!2206900))

(declare-fun m!7778708 () Bool)

(assert (=> bs!1878390 m!7778708))

(assert (=> d!2206200 d!2206900))

(assert (=> d!2206232 d!2206088))

(declare-fun d!2206902 () Bool)

(assert (=> d!2206902 (= (nullable!7267 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928)))))) (nullableFct!2783 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533928)))))))))

(declare-fun bs!1878391 () Bool)

(assert (= bs!1878391 d!2206902))

(declare-fun m!7778710 () Bool)

(assert (=> bs!1878391 m!7778710))

(assert (=> b!7058296 d!2206902))

(declare-fun d!2206904 () Bool)

(assert (=> d!2206904 (= (nullable!7267 (ite c!1315307 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (nullableFct!2783 (ite c!1315307 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))))))

(declare-fun bs!1878392 () Bool)

(assert (= bs!1878392 d!2206904))

(declare-fun m!7778712 () Bool)

(assert (=> bs!1878392 m!7778712))

(assert (=> bm!641275 d!2206904))

(declare-fun d!2206906 () Bool)

(assert (=> d!2206906 true))

(declare-fun setRes!49956 () Bool)

(assert (=> d!2206906 setRes!49956))

(declare-fun condSetEmpty!49956 () Bool)

(declare-fun res!2881807 () (Set Context!13160))

(assert (=> d!2206906 (= condSetEmpty!49956 (= res!2881807 (as set.empty (Set Context!13160))))))

(assert (=> d!2206906 (= (choose!53885 lt!2533956 lambda!421276) res!2881807)))

(declare-fun setIsEmpty!49956 () Bool)

(assert (=> setIsEmpty!49956 setRes!49956))

(declare-fun setElem!49956 () Context!13160)

(declare-fun setNonEmpty!49956 () Bool)

(declare-fun tp!1940711 () Bool)

(declare-fun e!4243914 () Bool)

(assert (=> setNonEmpty!49956 (= setRes!49956 (and tp!1940711 (inv!86820 setElem!49956) e!4243914))))

(declare-fun setRest!49956 () (Set Context!13160))

(assert (=> setNonEmpty!49956 (= res!2881807 (set.union (set.insert setElem!49956 (as set.empty (Set Context!13160))) setRest!49956))))

(declare-fun b!7059184 () Bool)

(declare-fun tp!1940712 () Bool)

(assert (=> b!7059184 (= e!4243914 tp!1940712)))

(assert (= (and d!2206906 condSetEmpty!49956) setIsEmpty!49956))

(assert (= (and d!2206906 (not condSetEmpty!49956)) setNonEmpty!49956))

(assert (= setNonEmpty!49956 b!7059184))

(declare-fun m!7778714 () Bool)

(assert (=> setNonEmpty!49956 m!7778714))

(assert (=> d!2206190 d!2206906))

(declare-fun b!7059185 () Bool)

(declare-fun e!4243920 () (Set Context!13160))

(declare-fun call!641459 () (Set Context!13160))

(assert (=> b!7059185 (= e!4243920 call!641459)))

(declare-fun c!1315586 () Bool)

(declare-fun bm!641449 () Bool)

(declare-fun call!641458 () List!68278)

(declare-fun c!1315588 () Bool)

(assert (=> bm!641449 (= call!641458 ($colon$colon!2630 (exprs!7080 (ite (or c!1315245 c!1315244) (Context!13161 (t!382057 (exprs!7080 lt!2533961))) (Context!13161 call!641240))) (ite (or c!1315588 c!1315586) (regTwo!35680 (ite c!1315245 (regOne!35681 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315244 (regTwo!35680 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315242 (regOne!35680 (h!74602 (exprs!7080 lt!2533961))) (reg!17913 (h!74602 (exprs!7080 lt!2533961))))))) (ite c!1315245 (regOne!35681 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315244 (regTwo!35680 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315242 (regOne!35680 (h!74602 (exprs!7080 lt!2533961))) (reg!17913 (h!74602 (exprs!7080 lt!2533961)))))))))))

(declare-fun b!7059186 () Bool)

(declare-fun e!4243915 () Bool)

(assert (=> b!7059186 (= c!1315588 e!4243915)))

(declare-fun res!2881808 () Bool)

(assert (=> b!7059186 (=> (not res!2881808) (not e!4243915))))

(assert (=> b!7059186 (= res!2881808 (is-Concat!26429 (ite c!1315245 (regOne!35681 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315244 (regTwo!35680 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315242 (regOne!35680 (h!74602 (exprs!7080 lt!2533961))) (reg!17913 (h!74602 (exprs!7080 lt!2533961))))))))))

(declare-fun e!4243918 () (Set Context!13160))

(declare-fun e!4243919 () (Set Context!13160))

(assert (=> b!7059186 (= e!4243918 e!4243919)))

(declare-fun b!7059187 () Bool)

(assert (=> b!7059187 (= e!4243915 (nullable!7267 (regOne!35680 (ite c!1315245 (regOne!35681 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315244 (regTwo!35680 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315242 (regOne!35680 (h!74602 (exprs!7080 lt!2533961))) (reg!17913 (h!74602 (exprs!7080 lt!2533961)))))))))))

(declare-fun b!7059188 () Bool)

(declare-fun e!4243917 () (Set Context!13160))

(assert (=> b!7059188 (= e!4243919 e!4243917)))

(assert (=> b!7059188 (= c!1315586 (is-Concat!26429 (ite c!1315245 (regOne!35681 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315244 (regTwo!35680 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315242 (regOne!35680 (h!74602 (exprs!7080 lt!2533961))) (reg!17913 (h!74602 (exprs!7080 lt!2533961))))))))))

(declare-fun b!7059189 () Bool)

(assert (=> b!7059189 (= e!4243920 (as set.empty (Set Context!13160)))))

(declare-fun bm!641450 () Bool)

(declare-fun call!641456 () (Set Context!13160))

(declare-fun call!641455 () (Set Context!13160))

(assert (=> bm!641450 (= call!641456 call!641455)))

(declare-fun b!7059190 () Bool)

(declare-fun call!641457 () (Set Context!13160))

(assert (=> b!7059190 (= e!4243918 (set.union call!641455 call!641457))))

(declare-fun c!1315587 () Bool)

(declare-fun b!7059191 () Bool)

(assert (=> b!7059191 (= c!1315587 (is-Star!17584 (ite c!1315245 (regOne!35681 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315244 (regTwo!35680 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315242 (regOne!35680 (h!74602 (exprs!7080 lt!2533961))) (reg!17913 (h!74602 (exprs!7080 lt!2533961))))))))))

(assert (=> b!7059191 (= e!4243917 e!4243920)))

(declare-fun bm!641451 () Bool)

(assert (=> bm!641451 (= call!641459 call!641456)))

(declare-fun e!4243916 () (Set Context!13160))

(declare-fun b!7059192 () Bool)

(assert (=> b!7059192 (= e!4243916 (set.insert (ite (or c!1315245 c!1315244) (Context!13161 (t!382057 (exprs!7080 lt!2533961))) (Context!13161 call!641240)) (as set.empty (Set Context!13160))))))

(declare-fun call!641454 () List!68278)

(declare-fun bm!641453 () Bool)

(declare-fun c!1315589 () Bool)

(assert (=> bm!641453 (= call!641455 (derivationStepZipperDown!2218 (ite c!1315589 (regOne!35681 (ite c!1315245 (regOne!35681 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315244 (regTwo!35680 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315242 (regOne!35680 (h!74602 (exprs!7080 lt!2533961))) (reg!17913 (h!74602 (exprs!7080 lt!2533961))))))) (ite c!1315588 (regTwo!35680 (ite c!1315245 (regOne!35681 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315244 (regTwo!35680 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315242 (regOne!35680 (h!74602 (exprs!7080 lt!2533961))) (reg!17913 (h!74602 (exprs!7080 lt!2533961))))))) (ite c!1315586 (regOne!35680 (ite c!1315245 (regOne!35681 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315244 (regTwo!35680 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315242 (regOne!35680 (h!74602 (exprs!7080 lt!2533961))) (reg!17913 (h!74602 (exprs!7080 lt!2533961))))))) (reg!17913 (ite c!1315245 (regOne!35681 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315244 (regTwo!35680 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315242 (regOne!35680 (h!74602 (exprs!7080 lt!2533961))) (reg!17913 (h!74602 (exprs!7080 lt!2533961)))))))))) (ite (or c!1315589 c!1315588) (ite (or c!1315245 c!1315244) (Context!13161 (t!382057 (exprs!7080 lt!2533961))) (Context!13161 call!641240)) (Context!13161 call!641454)) (h!74603 s!7408)))))

(declare-fun b!7059193 () Bool)

(assert (=> b!7059193 (= e!4243916 e!4243918)))

(assert (=> b!7059193 (= c!1315589 (is-Union!17584 (ite c!1315245 (regOne!35681 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315244 (regTwo!35680 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315242 (regOne!35680 (h!74602 (exprs!7080 lt!2533961))) (reg!17913 (h!74602 (exprs!7080 lt!2533961))))))))))

(declare-fun bm!641454 () Bool)

(assert (=> bm!641454 (= call!641454 call!641458)))

(declare-fun b!7059194 () Bool)

(assert (=> b!7059194 (= e!4243917 call!641459)))

(declare-fun b!7059195 () Bool)

(assert (=> b!7059195 (= e!4243919 (set.union call!641457 call!641456))))

(declare-fun c!1315585 () Bool)

(declare-fun d!2206908 () Bool)

(assert (=> d!2206908 (= c!1315585 (and (is-ElementMatch!17584 (ite c!1315245 (regOne!35681 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315244 (regTwo!35680 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315242 (regOne!35680 (h!74602 (exprs!7080 lt!2533961))) (reg!17913 (h!74602 (exprs!7080 lt!2533961))))))) (= (c!1315081 (ite c!1315245 (regOne!35681 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315244 (regTwo!35680 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315242 (regOne!35680 (h!74602 (exprs!7080 lt!2533961))) (reg!17913 (h!74602 (exprs!7080 lt!2533961))))))) (h!74603 s!7408))))))

(assert (=> d!2206908 (= (derivationStepZipperDown!2218 (ite c!1315245 (regOne!35681 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315244 (regTwo!35680 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315242 (regOne!35680 (h!74602 (exprs!7080 lt!2533961))) (reg!17913 (h!74602 (exprs!7080 lt!2533961)))))) (ite (or c!1315245 c!1315244) (Context!13161 (t!382057 (exprs!7080 lt!2533961))) (Context!13161 call!641240)) (h!74603 s!7408)) e!4243916)))

(declare-fun bm!641452 () Bool)

(assert (=> bm!641452 (= call!641457 (derivationStepZipperDown!2218 (ite c!1315589 (regTwo!35681 (ite c!1315245 (regOne!35681 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315244 (regTwo!35680 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315242 (regOne!35680 (h!74602 (exprs!7080 lt!2533961))) (reg!17913 (h!74602 (exprs!7080 lt!2533961))))))) (regOne!35680 (ite c!1315245 (regOne!35681 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315244 (regTwo!35680 (h!74602 (exprs!7080 lt!2533961))) (ite c!1315242 (regOne!35680 (h!74602 (exprs!7080 lt!2533961))) (reg!17913 (h!74602 (exprs!7080 lt!2533961)))))))) (ite c!1315589 (ite (or c!1315245 c!1315244) (Context!13161 (t!382057 (exprs!7080 lt!2533961))) (Context!13161 call!641240)) (Context!13161 call!641458)) (h!74603 s!7408)))))

(assert (= (and d!2206908 c!1315585) b!7059192))

(assert (= (and d!2206908 (not c!1315585)) b!7059193))

(assert (= (and b!7059193 c!1315589) b!7059190))

(assert (= (and b!7059193 (not c!1315589)) b!7059186))

(assert (= (and b!7059186 res!2881808) b!7059187))

(assert (= (and b!7059186 c!1315588) b!7059195))

(assert (= (and b!7059186 (not c!1315588)) b!7059188))

(assert (= (and b!7059188 c!1315586) b!7059194))

(assert (= (and b!7059188 (not c!1315586)) b!7059191))

(assert (= (and b!7059191 c!1315587) b!7059185))

(assert (= (and b!7059191 (not c!1315587)) b!7059189))

(assert (= (or b!7059194 b!7059185) bm!641454))

(assert (= (or b!7059194 b!7059185) bm!641451))

(assert (= (or b!7059195 bm!641451) bm!641450))

(assert (= (or b!7059195 bm!641454) bm!641449))

(assert (= (or b!7059190 bm!641450) bm!641453))

(assert (= (or b!7059190 b!7059195) bm!641452))

(declare-fun m!7778716 () Bool)

(assert (=> bm!641453 m!7778716))

(declare-fun m!7778718 () Bool)

(assert (=> bm!641452 m!7778718))

(declare-fun m!7778720 () Bool)

(assert (=> bm!641449 m!7778720))

(declare-fun m!7778722 () Bool)

(assert (=> b!7059192 m!7778722))

(declare-fun m!7778724 () Bool)

(assert (=> b!7059187 m!7778724))

(assert (=> bm!641239 d!2206908))

(declare-fun b!7059196 () Bool)

(declare-fun e!4243921 () (Set Context!13160))

(declare-fun call!641460 () (Set Context!13160))

(assert (=> b!7059196 (= e!4243921 call!641460)))

(declare-fun b!7059197 () Bool)

(declare-fun e!4243922 () Bool)

(assert (=> b!7059197 (= e!4243922 (nullable!7267 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961))))))))))))

(declare-fun e!4243923 () (Set Context!13160))

(declare-fun b!7059198 () Bool)

(assert (=> b!7059198 (= e!4243923 (set.union call!641460 (derivationStepZipperUp!2168 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961))))))))) (h!74603 s!7408))))))

(declare-fun b!7059199 () Bool)

(assert (=> b!7059199 (= e!4243921 (as set.empty (Set Context!13160)))))

(declare-fun b!7059200 () Bool)

(assert (=> b!7059200 (= e!4243923 e!4243921)))

(declare-fun c!1315591 () Bool)

(assert (=> b!7059200 (= c!1315591 (is-Cons!68154 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961)))))))))))

(declare-fun d!2206910 () Bool)

(declare-fun c!1315590 () Bool)

(assert (=> d!2206910 (= c!1315590 e!4243922)))

(declare-fun res!2881809 () Bool)

(assert (=> d!2206910 (=> (not res!2881809) (not e!4243922))))

(assert (=> d!2206910 (= res!2881809 (is-Cons!68154 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961)))))))))))

(assert (=> d!2206910 (= (derivationStepZipperUp!2168 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961)))))) (h!74603 s!7408)) e!4243923)))

(declare-fun bm!641455 () Bool)

(assert (=> bm!641455 (= call!641460 (derivationStepZipperDown!2218 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961)))))))) (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533961))))))))) (h!74603 s!7408)))))

(assert (= (and d!2206910 res!2881809) b!7059197))

(assert (= (and d!2206910 c!1315590) b!7059198))

(assert (= (and d!2206910 (not c!1315590)) b!7059200))

(assert (= (and b!7059200 c!1315591) b!7059196))

(assert (= (and b!7059200 (not c!1315591)) b!7059199))

(assert (= (or b!7059198 b!7059196) bm!641455))

(declare-fun m!7778726 () Bool)

(assert (=> b!7059197 m!7778726))

(declare-fun m!7778728 () Bool)

(assert (=> b!7059198 m!7778728))

(declare-fun m!7778730 () Bool)

(assert (=> bm!641455 m!7778730))

(assert (=> b!7058202 d!2206910))

(declare-fun b!7059201 () Bool)

(declare-fun e!4243924 () Int)

(declare-fun e!4243925 () Int)

(assert (=> b!7059201 (= e!4243924 e!4243925)))

(declare-fun c!1315592 () Bool)

(assert (=> b!7059201 (= c!1315592 (is-Star!17584 (h!74602 (exprs!7080 (h!74604 (Cons!68156 lt!2533926 Nil!68156))))))))

(declare-fun b!7059202 () Bool)

(declare-fun e!4243927 () Int)

(declare-fun e!4243926 () Int)

(assert (=> b!7059202 (= e!4243927 e!4243926)))

(declare-fun c!1315595 () Bool)

(assert (=> b!7059202 (= c!1315595 (is-Concat!26429 (h!74602 (exprs!7080 (h!74604 (Cons!68156 lt!2533926 Nil!68156))))))))

(declare-fun b!7059203 () Bool)

(declare-fun c!1315593 () Bool)

(assert (=> b!7059203 (= c!1315593 (is-Union!17584 (h!74602 (exprs!7080 (h!74604 (Cons!68156 lt!2533926 Nil!68156))))))))

(assert (=> b!7059203 (= e!4243925 e!4243927)))

(declare-fun bm!641456 () Bool)

(declare-fun call!641463 () Int)

(assert (=> bm!641456 (= call!641463 (regexDepthTotal!316 (ite c!1315592 (reg!17913 (h!74602 (exprs!7080 (h!74604 (Cons!68156 lt!2533926 Nil!68156))))) (ite c!1315593 (regTwo!35681 (h!74602 (exprs!7080 (h!74604 (Cons!68156 lt!2533926 Nil!68156))))) (regOne!35680 (h!74602 (exprs!7080 (h!74604 (Cons!68156 lt!2533926 Nil!68156)))))))))))

(declare-fun b!7059204 () Bool)

(assert (=> b!7059204 (= e!4243926 1)))

(declare-fun b!7059205 () Bool)

(declare-fun call!641461 () Int)

(declare-fun call!641462 () Int)

(assert (=> b!7059205 (= e!4243926 (+ 1 call!641461 call!641462))))

(declare-fun d!2206912 () Bool)

(declare-fun lt!2534338 () Int)

(assert (=> d!2206912 (> lt!2534338 0)))

(assert (=> d!2206912 (= lt!2534338 e!4243924)))

(declare-fun c!1315594 () Bool)

(assert (=> d!2206912 (= c!1315594 (is-ElementMatch!17584 (h!74602 (exprs!7080 (h!74604 (Cons!68156 lt!2533926 Nil!68156))))))))

(assert (=> d!2206912 (= (regexDepthTotal!316 (h!74602 (exprs!7080 (h!74604 (Cons!68156 lt!2533926 Nil!68156))))) lt!2534338)))

(declare-fun b!7059206 () Bool)

(assert (=> b!7059206 (= e!4243927 (+ 1 call!641462 call!641461))))

(declare-fun b!7059207 () Bool)

(assert (=> b!7059207 (= e!4243925 (+ 1 call!641463))))

(declare-fun bm!641457 () Bool)

(assert (=> bm!641457 (= call!641462 (regexDepthTotal!316 (ite c!1315593 (regOne!35681 (h!74602 (exprs!7080 (h!74604 (Cons!68156 lt!2533926 Nil!68156))))) (regTwo!35680 (h!74602 (exprs!7080 (h!74604 (Cons!68156 lt!2533926 Nil!68156))))))))))

(declare-fun b!7059208 () Bool)

(assert (=> b!7059208 (= e!4243924 1)))

(declare-fun bm!641458 () Bool)

(assert (=> bm!641458 (= call!641461 call!641463)))

(assert (= (and d!2206912 c!1315594) b!7059208))

(assert (= (and d!2206912 (not c!1315594)) b!7059201))

(assert (= (and b!7059201 c!1315592) b!7059207))

(assert (= (and b!7059201 (not c!1315592)) b!7059203))

(assert (= (and b!7059203 c!1315593) b!7059206))

(assert (= (and b!7059203 (not c!1315593)) b!7059202))

(assert (= (and b!7059202 c!1315595) b!7059205))

(assert (= (and b!7059202 (not c!1315595)) b!7059204))

(assert (= (or b!7059206 b!7059205) bm!641458))

(assert (= (or b!7059206 b!7059205) bm!641457))

(assert (= (or b!7059207 bm!641458) bm!641456))

(declare-fun m!7778732 () Bool)

(assert (=> bm!641456 m!7778732))

(declare-fun m!7778734 () Bool)

(assert (=> bm!641457 m!7778734))

(assert (=> b!7058148 d!2206912))

(declare-fun d!2206914 () Bool)

(declare-fun lt!2534339 () Int)

(assert (=> d!2206914 (>= lt!2534339 0)))

(declare-fun e!4243928 () Int)

(assert (=> d!2206914 (= lt!2534339 e!4243928)))

(declare-fun c!1315596 () Bool)

(assert (=> d!2206914 (= c!1315596 (is-Cons!68154 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (h!74604 (Cons!68156 lt!2533926 Nil!68156))))))))))

(assert (=> d!2206914 (= (contextDepthTotal!520 (Context!13161 (t!382057 (exprs!7080 (h!74604 (Cons!68156 lt!2533926 Nil!68156)))))) lt!2534339)))

(declare-fun b!7059209 () Bool)

(assert (=> b!7059209 (= e!4243928 (+ (regexDepthTotal!316 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (h!74604 (Cons!68156 lt!2533926 Nil!68156)))))))) (contextDepthTotal!520 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (h!74604 (Cons!68156 lt!2533926 Nil!68156)))))))))))))

(declare-fun b!7059210 () Bool)

(assert (=> b!7059210 (= e!4243928 1)))

(assert (= (and d!2206914 c!1315596) b!7059209))

(assert (= (and d!2206914 (not c!1315596)) b!7059210))

(declare-fun m!7778736 () Bool)

(assert (=> b!7059209 m!7778736))

(declare-fun m!7778738 () Bool)

(assert (=> b!7059209 m!7778738))

(assert (=> b!7058148 d!2206914))

(declare-fun b!7059211 () Bool)

(declare-fun e!4243929 () List!68278)

(assert (=> b!7059211 (= e!4243929 (exprs!7080 ct2!306))))

(declare-fun b!7059213 () Bool)

(declare-fun res!2881810 () Bool)

(declare-fun e!4243930 () Bool)

(assert (=> b!7059213 (=> (not res!2881810) (not e!4243930))))

(declare-fun lt!2534340 () List!68278)

(assert (=> b!7059213 (= res!2881810 (= (size!41161 lt!2534340) (+ (size!41161 (t!382057 (exprs!7080 lt!2534154))) (size!41161 (exprs!7080 ct2!306)))))))

(declare-fun b!7059212 () Bool)

(assert (=> b!7059212 (= e!4243929 (Cons!68154 (h!74602 (t!382057 (exprs!7080 lt!2534154))) (++!15667 (t!382057 (t!382057 (exprs!7080 lt!2534154))) (exprs!7080 ct2!306))))))

(declare-fun d!2206916 () Bool)

(assert (=> d!2206916 e!4243930))

(declare-fun res!2881811 () Bool)

(assert (=> d!2206916 (=> (not res!2881811) (not e!4243930))))

(assert (=> d!2206916 (= res!2881811 (= (content!13704 lt!2534340) (set.union (content!13704 (t!382057 (exprs!7080 lt!2534154))) (content!13704 (exprs!7080 ct2!306)))))))

(assert (=> d!2206916 (= lt!2534340 e!4243929)))

(declare-fun c!1315597 () Bool)

(assert (=> d!2206916 (= c!1315597 (is-Nil!68154 (t!382057 (exprs!7080 lt!2534154))))))

(assert (=> d!2206916 (= (++!15667 (t!382057 (exprs!7080 lt!2534154)) (exprs!7080 ct2!306)) lt!2534340)))

(declare-fun b!7059214 () Bool)

(assert (=> b!7059214 (= e!4243930 (or (not (= (exprs!7080 ct2!306) Nil!68154)) (= lt!2534340 (t!382057 (exprs!7080 lt!2534154)))))))

(assert (= (and d!2206916 c!1315597) b!7059211))

(assert (= (and d!2206916 (not c!1315597)) b!7059212))

(assert (= (and d!2206916 res!2881811) b!7059213))

(assert (= (and b!7059213 res!2881810) b!7059214))

(declare-fun m!7778740 () Bool)

(assert (=> b!7059213 m!7778740))

(assert (=> b!7059213 m!7778666))

(assert (=> b!7059213 m!7776648))

(declare-fun m!7778742 () Bool)

(assert (=> b!7059212 m!7778742))

(declare-fun m!7778744 () Bool)

(assert (=> d!2206916 m!7778744))

(declare-fun m!7778746 () Bool)

(assert (=> d!2206916 m!7778746))

(assert (=> d!2206916 m!7776656))

(assert (=> b!7058246 d!2206916))

(declare-fun d!2206918 () Bool)

(declare-fun res!2881812 () Bool)

(declare-fun e!4243931 () Bool)

(assert (=> d!2206918 (=> res!2881812 e!4243931)))

(assert (=> d!2206918 (= res!2881812 (is-Nil!68156 res!2881493))))

(assert (=> d!2206918 (= (noDuplicate!2698 res!2881493) e!4243931)))

(declare-fun b!7059215 () Bool)

(declare-fun e!4243932 () Bool)

(assert (=> b!7059215 (= e!4243931 e!4243932)))

(declare-fun res!2881813 () Bool)

(assert (=> b!7059215 (=> (not res!2881813) (not e!4243932))))

(assert (=> b!7059215 (= res!2881813 (not (contains!20486 (t!382059 res!2881493) (h!74604 res!2881493))))))

(declare-fun b!7059216 () Bool)

(assert (=> b!7059216 (= e!4243932 (noDuplicate!2698 (t!382059 res!2881493)))))

(assert (= (and d!2206918 (not res!2881812)) b!7059215))

(assert (= (and b!7059215 res!2881813) b!7059216))

(declare-fun m!7778748 () Bool)

(assert (=> b!7059215 m!7778748))

(declare-fun m!7778750 () Bool)

(assert (=> b!7059216 m!7778750))

(assert (=> d!2206064 d!2206918))

(declare-fun d!2206920 () Bool)

(declare-fun res!2881814 () Bool)

(declare-fun e!4243933 () Bool)

(assert (=> d!2206920 (=> res!2881814 e!4243933)))

(assert (=> d!2206920 (= res!2881814 (is-Nil!68156 (t!382059 lt!2534123)))))

(assert (=> d!2206920 (= (noDuplicate!2698 (t!382059 lt!2534123)) e!4243933)))

(declare-fun b!7059217 () Bool)

(declare-fun e!4243934 () Bool)

(assert (=> b!7059217 (= e!4243933 e!4243934)))

(declare-fun res!2881815 () Bool)

(assert (=> b!7059217 (=> (not res!2881815) (not e!4243934))))

(assert (=> b!7059217 (= res!2881815 (not (contains!20486 (t!382059 (t!382059 lt!2534123)) (h!74604 (t!382059 lt!2534123)))))))

(declare-fun b!7059218 () Bool)

(assert (=> b!7059218 (= e!4243934 (noDuplicate!2698 (t!382059 (t!382059 lt!2534123))))))

(assert (= (and d!2206920 (not res!2881814)) b!7059217))

(assert (= (and b!7059217 res!2881815) b!7059218))

(declare-fun m!7778752 () Bool)

(assert (=> b!7059217 m!7778752))

(declare-fun m!7778754 () Bool)

(assert (=> b!7059218 m!7778754))

(assert (=> b!7058226 d!2206920))

(declare-fun b!7059219 () Bool)

(declare-fun e!4243935 () Int)

(declare-fun e!4243936 () Int)

(assert (=> b!7059219 (= e!4243935 e!4243936)))

(declare-fun c!1315598 () Bool)

(assert (=> b!7059219 (= c!1315598 (is-Star!17584 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))))))

(declare-fun b!7059220 () Bool)

(declare-fun e!4243938 () Int)

(declare-fun e!4243937 () Int)

(assert (=> b!7059220 (= e!4243938 e!4243937)))

(declare-fun c!1315601 () Bool)

(assert (=> b!7059220 (= c!1315601 (is-Concat!26429 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))))))

(declare-fun b!7059221 () Bool)

(declare-fun c!1315599 () Bool)

(assert (=> b!7059221 (= c!1315599 (is-Union!17584 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))))))

(assert (=> b!7059221 (= e!4243936 e!4243938)))

(declare-fun bm!641459 () Bool)

(declare-fun call!641466 () Int)

(assert (=> bm!641459 (= call!641466 (regexDepthTotal!316 (ite c!1315598 (reg!17913 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))) (ite c!1315599 (regTwo!35681 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))) (regOne!35680 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926))))))))))))

(declare-fun b!7059222 () Bool)

(assert (=> b!7059222 (= e!4243937 1)))

(declare-fun b!7059223 () Bool)

(declare-fun call!641464 () Int)

(declare-fun call!641465 () Int)

(assert (=> b!7059223 (= e!4243937 (+ 1 call!641464 call!641465))))

(declare-fun d!2206922 () Bool)

(declare-fun lt!2534341 () Int)

(assert (=> d!2206922 (> lt!2534341 0)))

(assert (=> d!2206922 (= lt!2534341 e!4243935)))

(declare-fun c!1315600 () Bool)

(assert (=> d!2206922 (= c!1315600 (is-ElementMatch!17584 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))))))

(assert (=> d!2206922 (= (regexDepthTotal!316 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))) lt!2534341)))

(declare-fun b!7059224 () Bool)

(assert (=> b!7059224 (= e!4243938 (+ 1 call!641465 call!641464))))

(declare-fun b!7059225 () Bool)

(assert (=> b!7059225 (= e!4243936 (+ 1 call!641466))))

(declare-fun bm!641460 () Bool)

(assert (=> bm!641460 (= call!641465 (regexDepthTotal!316 (ite c!1315599 (regOne!35681 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))) (regTwo!35680 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))))))))

(declare-fun b!7059226 () Bool)

(assert (=> b!7059226 (= e!4243935 1)))

(declare-fun bm!641461 () Bool)

(assert (=> bm!641461 (= call!641464 call!641466)))

(assert (= (and d!2206922 c!1315600) b!7059226))

(assert (= (and d!2206922 (not c!1315600)) b!7059219))

(assert (= (and b!7059219 c!1315598) b!7059225))

(assert (= (and b!7059219 (not c!1315598)) b!7059221))

(assert (= (and b!7059221 c!1315599) b!7059224))

(assert (= (and b!7059221 (not c!1315599)) b!7059220))

(assert (= (and b!7059220 c!1315601) b!7059223))

(assert (= (and b!7059220 (not c!1315601)) b!7059222))

(assert (= (or b!7059224 b!7059223) bm!641461))

(assert (= (or b!7059224 b!7059223) bm!641460))

(assert (= (or b!7059225 bm!641461) bm!641459))

(declare-fun m!7778756 () Bool)

(assert (=> bm!641459 m!7778756))

(declare-fun m!7778758 () Bool)

(assert (=> bm!641460 m!7778758))

(assert (=> b!7058101 d!2206922))

(declare-fun d!2206924 () Bool)

(declare-fun lt!2534342 () Int)

(assert (=> d!2206924 (>= lt!2534342 0)))

(declare-fun e!4243939 () Int)

(assert (=> d!2206924 (= lt!2534342 e!4243939)))

(declare-fun c!1315602 () Bool)

(assert (=> d!2206924 (= c!1315602 (is-Cons!68154 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926)))))))))))

(assert (=> d!2206924 (= (contextDepthTotal!520 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926))))))) lt!2534342)))

(declare-fun b!7059227 () Bool)

(assert (=> b!7059227 (= e!4243939 (+ (regexDepthTotal!316 (h!74602 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926))))))))) (contextDepthTotal!520 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 (Context!13161 (t!382057 (exprs!7080 lt!2533926))))))))))))))

(declare-fun b!7059228 () Bool)

(assert (=> b!7059228 (= e!4243939 1)))

(assert (= (and d!2206924 c!1315602) b!7059227))

(assert (= (and d!2206924 (not c!1315602)) b!7059228))

(declare-fun m!7778760 () Bool)

(assert (=> b!7059227 m!7778760))

(declare-fun m!7778762 () Bool)

(assert (=> b!7059227 m!7778762))

(assert (=> b!7058101 d!2206924))

(declare-fun b!7059229 () Bool)

(declare-fun e!4243945 () (Set Context!13160))

(declare-fun call!641472 () (Set Context!13160))

(assert (=> b!7059229 (= e!4243945 call!641472)))

(declare-fun call!641471 () List!68278)

(declare-fun c!1315604 () Bool)

(declare-fun bm!641462 () Bool)

(declare-fun c!1315606 () Bool)

(assert (=> bm!641462 (= call!641471 ($colon$colon!2630 (exprs!7080 (ite (or c!1315269 c!1315268) (ite (or c!1315151 c!1315150) lt!2533961 (Context!13161 call!641201)) (Context!13161 call!641253))) (ite (or c!1315606 c!1315604) (regTwo!35680 (ite c!1315269 (regOne!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315268 (regTwo!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315266 (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (reg!17913 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))))))) (ite c!1315269 (regOne!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315268 (regTwo!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315266 (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (reg!17913 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918)))))))))))))))

(declare-fun b!7059230 () Bool)

(declare-fun e!4243940 () Bool)

(assert (=> b!7059230 (= c!1315606 e!4243940)))

(declare-fun res!2881816 () Bool)

(assert (=> b!7059230 (=> (not res!2881816) (not e!4243940))))

(assert (=> b!7059230 (= res!2881816 (is-Concat!26429 (ite c!1315269 (regOne!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315268 (regTwo!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315266 (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (reg!17913 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))))))))))

(declare-fun e!4243943 () (Set Context!13160))

(declare-fun e!4243944 () (Set Context!13160))

(assert (=> b!7059230 (= e!4243943 e!4243944)))

(declare-fun b!7059231 () Bool)

(assert (=> b!7059231 (= e!4243940 (nullable!7267 (regOne!35680 (ite c!1315269 (regOne!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315268 (regTwo!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315266 (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (reg!17913 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918)))))))))))))))

(declare-fun b!7059232 () Bool)

(declare-fun e!4243942 () (Set Context!13160))

(assert (=> b!7059232 (= e!4243944 e!4243942)))

(assert (=> b!7059232 (= c!1315604 (is-Concat!26429 (ite c!1315269 (regOne!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315268 (regTwo!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315266 (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (reg!17913 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))))))))))

(declare-fun b!7059233 () Bool)

(assert (=> b!7059233 (= e!4243945 (as set.empty (Set Context!13160)))))

(declare-fun bm!641463 () Bool)

(declare-fun call!641469 () (Set Context!13160))

(declare-fun call!641468 () (Set Context!13160))

(assert (=> bm!641463 (= call!641469 call!641468)))

(declare-fun b!7059234 () Bool)

(declare-fun call!641470 () (Set Context!13160))

(assert (=> b!7059234 (= e!4243943 (set.union call!641468 call!641470))))

(declare-fun c!1315605 () Bool)

(declare-fun b!7059235 () Bool)

(assert (=> b!7059235 (= c!1315605 (is-Star!17584 (ite c!1315269 (regOne!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315268 (regTwo!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315266 (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (reg!17913 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))))))))))

(assert (=> b!7059235 (= e!4243942 e!4243945)))

(declare-fun bm!641464 () Bool)

(assert (=> bm!641464 (= call!641472 call!641469)))

(declare-fun b!7059236 () Bool)

(declare-fun e!4243941 () (Set Context!13160))

(assert (=> b!7059236 (= e!4243941 (set.insert (ite (or c!1315269 c!1315268) (ite (or c!1315151 c!1315150) lt!2533961 (Context!13161 call!641201)) (Context!13161 call!641253)) (as set.empty (Set Context!13160))))))

(declare-fun c!1315607 () Bool)

(declare-fun bm!641466 () Bool)

(declare-fun call!641467 () List!68278)

(assert (=> bm!641466 (= call!641468 (derivationStepZipperDown!2218 (ite c!1315607 (regOne!35681 (ite c!1315269 (regOne!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315268 (regTwo!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315266 (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (reg!17913 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))))))) (ite c!1315606 (regTwo!35680 (ite c!1315269 (regOne!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315268 (regTwo!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315266 (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (reg!17913 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))))))) (ite c!1315604 (regOne!35680 (ite c!1315269 (regOne!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315268 (regTwo!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315266 (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (reg!17913 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))))))) (reg!17913 (ite c!1315269 (regOne!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315268 (regTwo!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315266 (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (reg!17913 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918)))))))))))))) (ite (or c!1315607 c!1315606) (ite (or c!1315269 c!1315268) (ite (or c!1315151 c!1315150) lt!2533961 (Context!13161 call!641201)) (Context!13161 call!641253)) (Context!13161 call!641467)) (h!74603 s!7408)))))

(declare-fun b!7059237 () Bool)

(assert (=> b!7059237 (= e!4243941 e!4243943)))

(assert (=> b!7059237 (= c!1315607 (is-Union!17584 (ite c!1315269 (regOne!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315268 (regTwo!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315266 (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (reg!17913 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))))))))))

(declare-fun bm!641467 () Bool)

(assert (=> bm!641467 (= call!641467 call!641471)))

(declare-fun b!7059238 () Bool)

(assert (=> b!7059238 (= e!4243942 call!641472)))

(declare-fun b!7059239 () Bool)

(assert (=> b!7059239 (= e!4243944 (set.union call!641470 call!641469))))

(declare-fun d!2206926 () Bool)

(declare-fun c!1315603 () Bool)

(assert (=> d!2206926 (= c!1315603 (and (is-ElementMatch!17584 (ite c!1315269 (regOne!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315268 (regTwo!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315266 (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (reg!17913 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))))))) (= (c!1315081 (ite c!1315269 (regOne!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315268 (regTwo!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315266 (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (reg!17913 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))))))) (h!74603 s!7408))))))

(assert (=> d!2206926 (= (derivationStepZipperDown!2218 (ite c!1315269 (regOne!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315268 (regTwo!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315266 (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (reg!17913 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918)))))))))) (ite (or c!1315269 c!1315268) (ite (or c!1315151 c!1315150) lt!2533961 (Context!13161 call!641201)) (Context!13161 call!641253)) (h!74603 s!7408)) e!4243941)))

(declare-fun bm!641465 () Bool)

(assert (=> bm!641465 (= call!641470 (derivationStepZipperDown!2218 (ite c!1315607 (regTwo!35681 (ite c!1315269 (regOne!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315268 (regTwo!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315266 (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (reg!17913 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))))))) (regOne!35680 (ite c!1315269 (regOne!35681 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315268 (regTwo!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (ite c!1315266 (regOne!35680 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918))))))) (reg!17913 (ite c!1315151 (regOne!35681 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315150 (regTwo!35680 (h!74602 (exprs!7080 lt!2533918))) (ite c!1315148 (regOne!35680 (h!74602 (exprs!7080 lt!2533918))) (reg!17913 (h!74602 (exprs!7080 lt!2533918)))))))))))) (ite c!1315607 (ite (or c!1315269 c!1315268) (ite (or c!1315151 c!1315150) lt!2533961 (Context!13161 call!641201)) (Context!13161 call!641253)) (Context!13161 call!641471)) (h!74603 s!7408)))))

(assert (= (and d!2206926 c!1315603) b!7059236))

(assert (= (and d!2206926 (not c!1315603)) b!7059237))

(assert (= (and b!7059237 c!1315607) b!7059234))

(assert (= (and b!7059237 (not c!1315607)) b!7059230))

(assert (= (and b!7059230 res!2881816) b!7059231))

(assert (= (and b!7059230 c!1315606) b!7059239))

(assert (= (and b!7059230 (not c!1315606)) b!7059232))

(assert (= (and b!7059232 c!1315604) b!7059238))

(assert (= (and b!7059232 (not c!1315604)) b!7059235))

(assert (= (and b!7059235 c!1315605) b!7059229))

(assert (= (and b!7059235 (not c!1315605)) b!7059233))

(assert (= (or b!7059238 b!7059229) bm!641467))

(assert (= (or b!7059238 b!7059229) bm!641464))

(assert (= (or b!7059239 bm!641464) bm!641463))

(assert (= (or b!7059239 bm!641467) bm!641462))

(assert (= (or b!7059234 bm!641463) bm!641466))

(assert (= (or b!7059234 b!7059239) bm!641465))

(declare-fun m!7778764 () Bool)

(assert (=> bm!641466 m!7778764))

(declare-fun m!7778766 () Bool)

(assert (=> bm!641465 m!7778766))

(declare-fun m!7778768 () Bool)

(assert (=> bm!641462 m!7778768))

(declare-fun m!7778770 () Bool)

(assert (=> b!7059236 m!7778770))

(declare-fun m!7778772 () Bool)

(assert (=> b!7059231 m!7778772))

(assert (=> bm!641252 d!2206926))

(declare-fun d!2206928 () Bool)

(declare-fun res!2881817 () Bool)

(declare-fun e!4243946 () Bool)

(assert (=> d!2206928 (=> res!2881817 e!4243946)))

(assert (=> d!2206928 (= res!2881817 (is-Nil!68156 lt!2533923))))

(assert (=> d!2206928 (= (forall!16537 lt!2533923 lambda!421308) e!4243946)))

(declare-fun b!7059240 () Bool)

(declare-fun e!4243947 () Bool)

(assert (=> b!7059240 (= e!4243946 e!4243947)))

(declare-fun res!2881818 () Bool)

(assert (=> b!7059240 (=> (not res!2881818) (not e!4243947))))

(assert (=> b!7059240 (= res!2881818 (dynLambda!27676 lambda!421308 (h!74604 lt!2533923)))))

(declare-fun b!7059241 () Bool)

(assert (=> b!7059241 (= e!4243947 (forall!16537 (t!382059 lt!2533923) lambda!421308))))

(assert (= (and d!2206928 (not res!2881817)) b!7059240))

(assert (= (and b!7059240 res!2881818) b!7059241))

(declare-fun b_lambda!269109 () Bool)

(assert (=> (not b_lambda!269109) (not b!7059240)))

(declare-fun m!7778774 () Bool)

(assert (=> b!7059240 m!7778774))

(declare-fun m!7778776 () Bool)

(assert (=> b!7059241 m!7778776))

(assert (=> d!2206156 d!2206928))

(declare-fun d!2206930 () Bool)

(declare-fun c!1315608 () Bool)

(assert (=> d!2206930 (= c!1315608 (is-Nil!68154 lt!2534232))))

(declare-fun e!4243948 () (Set Regex!17584))

(assert (=> d!2206930 (= (content!13704 lt!2534232) e!4243948)))

(declare-fun b!7059242 () Bool)

(assert (=> b!7059242 (= e!4243948 (as set.empty (Set Regex!17584)))))

(declare-fun b!7059243 () Bool)

(assert (=> b!7059243 (= e!4243948 (set.union (set.insert (h!74602 lt!2534232) (as set.empty (Set Regex!17584))) (content!13704 (t!382057 lt!2534232))))))

(assert (= (and d!2206930 c!1315608) b!7059242))

(assert (= (and d!2206930 (not c!1315608)) b!7059243))

(declare-fun m!7778778 () Bool)

(assert (=> b!7059243 m!7778778))

(declare-fun m!7778780 () Bool)

(assert (=> b!7059243 m!7778780))

(assert (=> d!2206174 d!2206930))

(declare-fun d!2206932 () Bool)

(declare-fun c!1315609 () Bool)

(assert (=> d!2206932 (= c!1315609 (is-Nil!68154 (exprs!7080 lt!2534154)))))

(declare-fun e!4243949 () (Set Regex!17584))

(assert (=> d!2206932 (= (content!13704 (exprs!7080 lt!2534154)) e!4243949)))

(declare-fun b!7059244 () Bool)

(assert (=> b!7059244 (= e!4243949 (as set.empty (Set Regex!17584)))))

(declare-fun b!7059245 () Bool)

(assert (=> b!7059245 (= e!4243949 (set.union (set.insert (h!74602 (exprs!7080 lt!2534154)) (as set.empty (Set Regex!17584))) (content!13704 (t!382057 (exprs!7080 lt!2534154)))))))

(assert (= (and d!2206932 c!1315609) b!7059244))

(assert (= (and d!2206932 (not c!1315609)) b!7059245))

(declare-fun m!7778782 () Bool)

(assert (=> b!7059245 m!7778782))

(assert (=> b!7059245 m!7778746))

(assert (=> d!2206174 d!2206932))

(assert (=> d!2206174 d!2206076))

(declare-fun b!7059246 () Bool)

(declare-fun e!4243950 () List!68278)

(assert (=> b!7059246 (= e!4243950 (exprs!7080 ct2!306))))

(declare-fun b!7059248 () Bool)

(declare-fun res!2881819 () Bool)

(declare-fun e!4243951 () Bool)

(assert (=> b!7059248 (=> (not res!2881819) (not e!4243951))))

(declare-fun lt!2534343 () List!68278)

(assert (=> b!7059248 (= res!2881819 (= (size!41161 lt!2534343) (+ (size!41161 (t!382057 (t!382057 lt!2533935))) (size!41161 (exprs!7080 ct2!306)))))))

(declare-fun b!7059247 () Bool)

(assert (=> b!7059247 (= e!4243950 (Cons!68154 (h!74602 (t!382057 (t!382057 lt!2533935))) (++!15667 (t!382057 (t!382057 (t!382057 lt!2533935))) (exprs!7080 ct2!306))))))

(declare-fun d!2206934 () Bool)

(assert (=> d!2206934 e!4243951))

(declare-fun res!2881820 () Bool)

(assert (=> d!2206934 (=> (not res!2881820) (not e!4243951))))

(assert (=> d!2206934 (= res!2881820 (= (content!13704 lt!2534343) (set.union (content!13704 (t!382057 (t!382057 lt!2533935))) (content!13704 (exprs!7080 ct2!306)))))))

(assert (=> d!2206934 (= lt!2534343 e!4243950)))

(declare-fun c!1315610 () Bool)

(assert (=> d!2206934 (= c!1315610 (is-Nil!68154 (t!382057 (t!382057 lt!2533935))))))

(assert (=> d!2206934 (= (++!15667 (t!382057 (t!382057 lt!2533935)) (exprs!7080 ct2!306)) lt!2534343)))

(declare-fun b!7059249 () Bool)

(assert (=> b!7059249 (= e!4243951 (or (not (= (exprs!7080 ct2!306) Nil!68154)) (= lt!2534343 (t!382057 (t!382057 lt!2533935)))))))

(assert (= (and d!2206934 c!1315610) b!7059246))

(assert (= (and d!2206934 (not c!1315610)) b!7059247))

(assert (= (and d!2206934 res!2881820) b!7059248))

(assert (= (and b!7059248 res!2881819) b!7059249))

(declare-fun m!7778784 () Bool)

(assert (=> b!7059248 m!7778784))

(assert (=> b!7059248 m!7778474))

(assert (=> b!7059248 m!7776648))

(declare-fun m!7778786 () Bool)

(assert (=> b!7059247 m!7778786))

(declare-fun m!7778788 () Bool)

(assert (=> d!2206934 m!7778788))

(assert (=> d!2206934 m!7778458))

(assert (=> d!2206934 m!7776656))

(assert (=> b!7058216 d!2206934))

(declare-fun d!2206936 () Bool)

(declare-fun c!1315611 () Bool)

(assert (=> d!2206936 (= c!1315611 (is-Nil!68156 (t!382059 lt!2534123)))))

(declare-fun e!4243952 () (Set Context!13160))

(assert (=> d!2206936 (= (content!13703 (t!382059 lt!2534123)) e!4243952)))

(declare-fun b!7059250 () Bool)

(assert (=> b!7059250 (= e!4243952 (as set.empty (Set Context!13160)))))

(declare-fun b!7059251 () Bool)

(assert (=> b!7059251 (= e!4243952 (set.union (set.insert (h!74604 (t!382059 lt!2534123)) (as set.empty (Set Context!13160))) (content!13703 (t!382059 (t!382059 lt!2534123)))))))

(assert (= (and d!2206936 c!1315611) b!7059250))

(assert (= (and d!2206936 (not c!1315611)) b!7059251))

(declare-fun m!7778790 () Bool)

(assert (=> b!7059251 m!7778790))

(declare-fun m!7778792 () Bool)

(assert (=> b!7059251 m!7778792))

(assert (=> b!7058197 d!2206936))

(declare-fun d!2206938 () Bool)

(assert (=> d!2206938 (= (flatMap!2510 lt!2533952 lambda!421318) (choose!53885 lt!2533952 lambda!421318))))

(declare-fun bs!1878393 () Bool)

(assert (= bs!1878393 d!2206938))

(declare-fun m!7778794 () Bool)

(assert (=> bs!1878393 m!7778794))

(assert (=> d!2206268 d!2206938))

(assert (=> b!7058368 d!2206830))

(declare-fun d!2206940 () Bool)

(assert (=> d!2206940 (= (flatMap!2510 (appendTo!705 lt!2533927 ct2!306) lambda!421307) (choose!53885 (appendTo!705 lt!2533927 ct2!306) lambda!421307))))

(declare-fun bs!1878394 () Bool)

(assert (= bs!1878394 d!2206940))

(assert (=> bs!1878394 m!7776410))

(declare-fun m!7778796 () Bool)

(assert (=> bs!1878394 m!7778796))

(assert (=> d!2206138 d!2206940))

(declare-fun b!7059252 () Bool)

(declare-fun e!4243953 () List!68278)

(assert (=> b!7059252 (= e!4243953 (exprs!7080 ct2!306))))

(declare-fun b!7059254 () Bool)

(declare-fun res!2881821 () Bool)

(declare-fun e!4243954 () Bool)

(assert (=> b!7059254 (=> (not res!2881821) (not e!4243954))))

(declare-fun lt!2534344 () List!68278)

(assert (=> b!7059254 (= res!2881821 (= (size!41161 lt!2534344) (+ (size!41161 (t!382057 (t!382057 (exprs!7080 lt!2533918)))) (size!41161 (exprs!7080 ct2!306)))))))

(declare-fun b!7059253 () Bool)

(assert (=> b!7059253 (= e!4243953 (Cons!68154 (h!74602 (t!382057 (t!382057 (exprs!7080 lt!2533918)))) (++!15667 (t!382057 (t!382057 (t!382057 (exprs!7080 lt!2533918)))) (exprs!7080 ct2!306))))))

(declare-fun d!2206942 () Bool)

(assert (=> d!2206942 e!4243954))

(declare-fun res!2881822 () Bool)

(assert (=> d!2206942 (=> (not res!2881822) (not e!4243954))))

(assert (=> d!2206942 (= res!2881822 (= (content!13704 lt!2534344) (set.union (content!13704 (t!382057 (t!382057 (exprs!7080 lt!2533918)))) (content!13704 (exprs!7080 ct2!306)))))))

(assert (=> d!2206942 (= lt!2534344 e!4243953)))

(declare-fun c!1315612 () Bool)

(assert (=> d!2206942 (= c!1315612 (is-Nil!68154 (t!382057 (t!382057 (exprs!7080 lt!2533918)))))))

(assert (=> d!2206942 (= (++!15667 (t!382057 (t!382057 (exprs!7080 lt!2533918))) (exprs!7080 ct2!306)) lt!2534344)))

(declare-fun b!7059255 () Bool)

(assert (=> b!7059255 (= e!4243954 (or (not (= (exprs!7080 ct2!306) Nil!68154)) (= lt!2534344 (t!382057 (t!382057 (exprs!7080 lt!2533918))))))))

(assert (= (and d!2206942 c!1315612) b!7059252))

(assert (= (and d!2206942 (not c!1315612)) b!7059253))

(assert (= (and d!2206942 res!2881822) b!7059254))

(assert (= (and b!7059254 res!2881821) b!7059255))

(declare-fun m!7778798 () Bool)

(assert (=> b!7059254 m!7778798))

(assert (=> b!7059254 m!7778576))

(assert (=> b!7059254 m!7776648))

(declare-fun m!7778800 () Bool)

(assert (=> b!7059253 m!7778800))

(declare-fun m!7778802 () Bool)

(assert (=> d!2206942 m!7778802))

(assert (=> d!2206942 m!7778356))

(assert (=> d!2206942 m!7776656))

(assert (=> b!7058074 d!2206942))

(assert (=> d!2206044 d!2205848))

(declare-fun d!2206944 () Bool)

(assert (=> d!2206944 (= ($colon$colon!2630 (exprs!7080 (ite c!1315151 lt!2533961 (Context!13161 call!641205))) (ite (or c!1315249 c!1315247) (regTwo!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918)))))) (Cons!68154 (ite (or c!1315249 c!1315247) (regTwo!35680 (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (ite c!1315151 (regTwo!35681 (h!74602 (exprs!7080 lt!2533918))) (regOne!35680 (h!74602 (exprs!7080 lt!2533918))))) (exprs!7080 (ite c!1315151 lt!2533961 (Context!13161 call!641205)))))))

(assert (=> bm!641241 d!2206944))

(declare-fun b!7059263 () Bool)

(declare-fun e!4243960 () Bool)

(declare-fun tp!1940717 () Bool)

(assert (=> b!7059263 (= e!4243960 tp!1940717)))

(declare-fun b!7059262 () Bool)

(declare-fun e!4243959 () Bool)

(declare-fun tp!1940718 () Bool)

(assert (=> b!7059262 (= e!4243959 (and (inv!86820 (h!74604 (t!382059 res!2881493))) e!4243960 tp!1940718))))

(assert (=> b!7058117 (= tp!1940592 e!4243959)))

(assert (= b!7059262 b!7059263))

(assert (= (and b!7058117 (is-Cons!68156 (t!382059 res!2881493))) b!7059262))

(declare-fun m!7778804 () Bool)

(assert (=> b!7059262 m!7778804))

(declare-fun b!7059264 () Bool)

(declare-fun e!4243961 () Bool)

(declare-fun tp!1940719 () Bool)

(declare-fun tp!1940720 () Bool)

(assert (=> b!7059264 (= e!4243961 (and tp!1940719 tp!1940720))))

(assert (=> b!7058325 (= tp!1940608 e!4243961)))

(assert (= (and b!7058325 (is-Cons!68154 (exprs!7080 (h!74604 res!2881552)))) b!7059264))

(declare-fun b!7059265 () Bool)

(declare-fun e!4243962 () Bool)

(assert (=> b!7059265 (= e!4243962 tp_is_empty!44393)))

(declare-fun b!7059267 () Bool)

(declare-fun tp!1940725 () Bool)

(assert (=> b!7059267 (= e!4243962 tp!1940725)))

(declare-fun b!7059268 () Bool)

(declare-fun tp!1940721 () Bool)

(declare-fun tp!1940724 () Bool)

(assert (=> b!7059268 (= e!4243962 (and tp!1940721 tp!1940724))))

(declare-fun b!7059266 () Bool)

(declare-fun tp!1940722 () Bool)

(declare-fun tp!1940723 () Bool)

(assert (=> b!7059266 (= e!4243962 (and tp!1940722 tp!1940723))))

(assert (=> b!7058381 (= tp!1940616 e!4243962)))

(assert (= (and b!7058381 (is-ElementMatch!17584 (h!74602 (exprs!7080 setElem!49930)))) b!7059265))

(assert (= (and b!7058381 (is-Concat!26429 (h!74602 (exprs!7080 setElem!49930)))) b!7059266))

(assert (= (and b!7058381 (is-Star!17584 (h!74602 (exprs!7080 setElem!49930)))) b!7059267))

(assert (= (and b!7058381 (is-Union!17584 (h!74602 (exprs!7080 setElem!49930)))) b!7059268))

(declare-fun b!7059269 () Bool)

(declare-fun e!4243963 () Bool)

(declare-fun tp!1940726 () Bool)

(declare-fun tp!1940727 () Bool)

(assert (=> b!7059269 (= e!4243963 (and tp!1940726 tp!1940727))))

(assert (=> b!7058381 (= tp!1940617 e!4243963)))

(assert (= (and b!7058381 (is-Cons!68154 (t!382057 (exprs!7080 setElem!49930)))) b!7059269))

(declare-fun b!7059270 () Bool)

(declare-fun e!4243964 () Bool)

(assert (=> b!7059270 (= e!4243964 tp_is_empty!44393)))

(declare-fun b!7059272 () Bool)

(declare-fun tp!1940732 () Bool)

(assert (=> b!7059272 (= e!4243964 tp!1940732)))

(declare-fun b!7059273 () Bool)

(declare-fun tp!1940728 () Bool)

(declare-fun tp!1940731 () Bool)

(assert (=> b!7059273 (= e!4243964 (and tp!1940728 tp!1940731))))

(declare-fun b!7059271 () Bool)

(declare-fun tp!1940729 () Bool)

(declare-fun tp!1940730 () Bool)

(assert (=> b!7059271 (= e!4243964 (and tp!1940729 tp!1940730))))

(assert (=> b!7058401 (= tp!1940642 e!4243964)))

(assert (= (and b!7058401 (is-ElementMatch!17584 (reg!17913 (h!74602 (exprs!7080 ct2!306))))) b!7059270))

(assert (= (and b!7058401 (is-Concat!26429 (reg!17913 (h!74602 (exprs!7080 ct2!306))))) b!7059271))

(assert (= (and b!7058401 (is-Star!17584 (reg!17913 (h!74602 (exprs!7080 ct2!306))))) b!7059272))

(assert (= (and b!7058401 (is-Union!17584 (reg!17913 (h!74602 (exprs!7080 ct2!306))))) b!7059273))

(declare-fun b!7059274 () Bool)

(declare-fun e!4243965 () Bool)

(assert (=> b!7059274 (= e!4243965 tp_is_empty!44393)))

(declare-fun b!7059276 () Bool)

(declare-fun tp!1940737 () Bool)

(assert (=> b!7059276 (= e!4243965 tp!1940737)))

(declare-fun b!7059277 () Bool)

(declare-fun tp!1940733 () Bool)

(declare-fun tp!1940736 () Bool)

(assert (=> b!7059277 (= e!4243965 (and tp!1940733 tp!1940736))))

(declare-fun b!7059275 () Bool)

(declare-fun tp!1940734 () Bool)

(declare-fun tp!1940735 () Bool)

(assert (=> b!7059275 (= e!4243965 (and tp!1940734 tp!1940735))))

(assert (=> b!7058402 (= tp!1940638 e!4243965)))

(assert (= (and b!7058402 (is-ElementMatch!17584 (regOne!35681 (h!74602 (exprs!7080 ct2!306))))) b!7059274))

(assert (= (and b!7058402 (is-Concat!26429 (regOne!35681 (h!74602 (exprs!7080 ct2!306))))) b!7059275))

(assert (= (and b!7058402 (is-Star!17584 (regOne!35681 (h!74602 (exprs!7080 ct2!306))))) b!7059276))

(assert (= (and b!7058402 (is-Union!17584 (regOne!35681 (h!74602 (exprs!7080 ct2!306))))) b!7059277))

(declare-fun b!7059278 () Bool)

(declare-fun e!4243966 () Bool)

(assert (=> b!7059278 (= e!4243966 tp_is_empty!44393)))

(declare-fun b!7059280 () Bool)

(declare-fun tp!1940742 () Bool)

(assert (=> b!7059280 (= e!4243966 tp!1940742)))

(declare-fun b!7059281 () Bool)

(declare-fun tp!1940738 () Bool)

(declare-fun tp!1940741 () Bool)

(assert (=> b!7059281 (= e!4243966 (and tp!1940738 tp!1940741))))

(declare-fun b!7059279 () Bool)

(declare-fun tp!1940739 () Bool)

(declare-fun tp!1940740 () Bool)

(assert (=> b!7059279 (= e!4243966 (and tp!1940739 tp!1940740))))

(assert (=> b!7058402 (= tp!1940641 e!4243966)))

(assert (= (and b!7058402 (is-ElementMatch!17584 (regTwo!35681 (h!74602 (exprs!7080 ct2!306))))) b!7059278))

(assert (= (and b!7058402 (is-Concat!26429 (regTwo!35681 (h!74602 (exprs!7080 ct2!306))))) b!7059279))

(assert (= (and b!7058402 (is-Star!17584 (regTwo!35681 (h!74602 (exprs!7080 ct2!306))))) b!7059280))

(assert (= (and b!7058402 (is-Union!17584 (regTwo!35681 (h!74602 (exprs!7080 ct2!306))))) b!7059281))

(declare-fun b!7059282 () Bool)

(declare-fun e!4243967 () Bool)

(assert (=> b!7059282 (= e!4243967 tp_is_empty!44393)))

(declare-fun b!7059284 () Bool)

(declare-fun tp!1940747 () Bool)

(assert (=> b!7059284 (= e!4243967 tp!1940747)))

(declare-fun b!7059285 () Bool)

(declare-fun tp!1940743 () Bool)

(declare-fun tp!1940746 () Bool)

(assert (=> b!7059285 (= e!4243967 (and tp!1940743 tp!1940746))))

(declare-fun b!7059283 () Bool)

(declare-fun tp!1940744 () Bool)

(declare-fun tp!1940745 () Bool)

(assert (=> b!7059283 (= e!4243967 (and tp!1940744 tp!1940745))))

(assert (=> b!7058394 (= tp!1940631 e!4243967)))

(assert (= (and b!7058394 (is-ElementMatch!17584 (regOne!35680 (h!74602 (exprs!7080 setElem!49924))))) b!7059282))

(assert (= (and b!7058394 (is-Concat!26429 (regOne!35680 (h!74602 (exprs!7080 setElem!49924))))) b!7059283))

(assert (= (and b!7058394 (is-Star!17584 (regOne!35680 (h!74602 (exprs!7080 setElem!49924))))) b!7059284))

(assert (= (and b!7058394 (is-Union!17584 (regOne!35680 (h!74602 (exprs!7080 setElem!49924))))) b!7059285))

(declare-fun b!7059286 () Bool)

(declare-fun e!4243968 () Bool)

(assert (=> b!7059286 (= e!4243968 tp_is_empty!44393)))

(declare-fun b!7059288 () Bool)

(declare-fun tp!1940752 () Bool)

(assert (=> b!7059288 (= e!4243968 tp!1940752)))

(declare-fun b!7059289 () Bool)

(declare-fun tp!1940748 () Bool)

(declare-fun tp!1940751 () Bool)

(assert (=> b!7059289 (= e!4243968 (and tp!1940748 tp!1940751))))

(declare-fun b!7059287 () Bool)

(declare-fun tp!1940749 () Bool)

(declare-fun tp!1940750 () Bool)

(assert (=> b!7059287 (= e!4243968 (and tp!1940749 tp!1940750))))

(assert (=> b!7058394 (= tp!1940632 e!4243968)))

(assert (= (and b!7058394 (is-ElementMatch!17584 (regTwo!35680 (h!74602 (exprs!7080 setElem!49924))))) b!7059286))

(assert (= (and b!7058394 (is-Concat!26429 (regTwo!35680 (h!74602 (exprs!7080 setElem!49924))))) b!7059287))

(assert (= (and b!7058394 (is-Star!17584 (regTwo!35680 (h!74602 (exprs!7080 setElem!49924))))) b!7059288))

(assert (= (and b!7058394 (is-Union!17584 (regTwo!35680 (h!74602 (exprs!7080 setElem!49924))))) b!7059289))

(declare-fun b!7059290 () Bool)

(declare-fun e!4243969 () Bool)

(assert (=> b!7059290 (= e!4243969 tp_is_empty!44393)))

(declare-fun b!7059292 () Bool)

(declare-fun tp!1940757 () Bool)

(assert (=> b!7059292 (= e!4243969 tp!1940757)))

(declare-fun b!7059293 () Bool)

(declare-fun tp!1940753 () Bool)

(declare-fun tp!1940756 () Bool)

(assert (=> b!7059293 (= e!4243969 (and tp!1940753 tp!1940756))))

(declare-fun b!7059291 () Bool)

(declare-fun tp!1940754 () Bool)

(declare-fun tp!1940755 () Bool)

(assert (=> b!7059291 (= e!4243969 (and tp!1940754 tp!1940755))))

(assert (=> b!7058395 (= tp!1940634 e!4243969)))

(assert (= (and b!7058395 (is-ElementMatch!17584 (reg!17913 (h!74602 (exprs!7080 setElem!49924))))) b!7059290))

(assert (= (and b!7058395 (is-Concat!26429 (reg!17913 (h!74602 (exprs!7080 setElem!49924))))) b!7059291))

(assert (= (and b!7058395 (is-Star!17584 (reg!17913 (h!74602 (exprs!7080 setElem!49924))))) b!7059292))

(assert (= (and b!7058395 (is-Union!17584 (reg!17913 (h!74602 (exprs!7080 setElem!49924))))) b!7059293))

(declare-fun b!7059294 () Bool)

(declare-fun e!4243970 () Bool)

(declare-fun tp!1940758 () Bool)

(declare-fun tp!1940759 () Bool)

(assert (=> b!7059294 (= e!4243970 (and tp!1940758 tp!1940759))))

(assert (=> b!7058118 (= tp!1940591 e!4243970)))

(assert (= (and b!7058118 (is-Cons!68154 (exprs!7080 (h!74604 res!2881493)))) b!7059294))

(declare-fun condSetEmpty!49957 () Bool)

(assert (=> setNonEmpty!49936 (= condSetEmpty!49957 (= setRest!49936 (as set.empty (Set Context!13160))))))

(declare-fun setRes!49957 () Bool)

(assert (=> setNonEmpty!49936 (= tp!1940597 setRes!49957)))

(declare-fun setIsEmpty!49957 () Bool)

(assert (=> setIsEmpty!49957 setRes!49957))

(declare-fun e!4243971 () Bool)

(declare-fun setNonEmpty!49957 () Bool)

(declare-fun setElem!49957 () Context!13160)

(declare-fun tp!1940760 () Bool)

(assert (=> setNonEmpty!49957 (= setRes!49957 (and tp!1940760 (inv!86820 setElem!49957) e!4243971))))

(declare-fun setRest!49957 () (Set Context!13160))

(assert (=> setNonEmpty!49957 (= setRest!49936 (set.union (set.insert setElem!49957 (as set.empty (Set Context!13160))) setRest!49957))))

(declare-fun b!7059295 () Bool)

(declare-fun tp!1940761 () Bool)

(assert (=> b!7059295 (= e!4243971 tp!1940761)))

(assert (= (and setNonEmpty!49936 condSetEmpty!49957) setIsEmpty!49957))

(assert (= (and setNonEmpty!49936 (not condSetEmpty!49957)) setNonEmpty!49957))

(assert (= setNonEmpty!49957 b!7059295))

(declare-fun m!7778806 () Bool)

(assert (=> setNonEmpty!49957 m!7778806))

(declare-fun condSetEmpty!49958 () Bool)

(assert (=> setNonEmpty!49941 (= condSetEmpty!49958 (= setRest!49941 (as set.empty (Set Context!13160))))))

(declare-fun setRes!49958 () Bool)

(assert (=> setNonEmpty!49941 (= tp!1940614 setRes!49958)))

(declare-fun setIsEmpty!49958 () Bool)

(assert (=> setIsEmpty!49958 setRes!49958))

(declare-fun tp!1940762 () Bool)

(declare-fun setElem!49958 () Context!13160)

(declare-fun e!4243972 () Bool)

(declare-fun setNonEmpty!49958 () Bool)

(assert (=> setNonEmpty!49958 (= setRes!49958 (and tp!1940762 (inv!86820 setElem!49958) e!4243972))))

(declare-fun setRest!49958 () (Set Context!13160))

(assert (=> setNonEmpty!49958 (= setRest!49941 (set.union (set.insert setElem!49958 (as set.empty (Set Context!13160))) setRest!49958))))

(declare-fun b!7059296 () Bool)

(declare-fun tp!1940763 () Bool)

(assert (=> b!7059296 (= e!4243972 tp!1940763)))

(assert (= (and setNonEmpty!49941 condSetEmpty!49958) setIsEmpty!49958))

(assert (= (and setNonEmpty!49941 (not condSetEmpty!49958)) setNonEmpty!49958))

(assert (= setNonEmpty!49958 b!7059296))

(declare-fun m!7778808 () Bool)

(assert (=> setNonEmpty!49958 m!7778808))

(declare-fun b!7059297 () Bool)

(declare-fun e!4243973 () Bool)

(declare-fun tp!1940764 () Bool)

(declare-fun tp!1940765 () Bool)

(assert (=> b!7059297 (= e!4243973 (and tp!1940764 tp!1940765))))

(assert (=> b!7058262 (= tp!1940605 e!4243973)))

(assert (= (and b!7058262 (is-Cons!68154 (exprs!7080 a!13517))) b!7059297))

(declare-fun b!7059298 () Bool)

(declare-fun e!4243974 () Bool)

(declare-fun tp!1940766 () Bool)

(declare-fun tp!1940767 () Bool)

(assert (=> b!7059298 (= e!4243974 (and tp!1940766 tp!1940767))))

(assert (=> b!7058207 (= tp!1940598 e!4243974)))

(assert (= (and b!7058207 (is-Cons!68154 (exprs!7080 setElem!49936))) b!7059298))

(declare-fun b!7059299 () Bool)

(declare-fun e!4243975 () Bool)

(declare-fun tp!1940768 () Bool)

(declare-fun tp!1940769 () Bool)

(assert (=> b!7059299 (= e!4243975 (and tp!1940768 tp!1940769))))

(assert (=> b!7058360 (= tp!1940615 e!4243975)))

(assert (= (and b!7058360 (is-Cons!68154 (exprs!7080 setElem!49941))) b!7059299))

(declare-fun b!7059301 () Bool)

(declare-fun e!4243977 () Bool)

(declare-fun tp!1940770 () Bool)

(assert (=> b!7059301 (= e!4243977 tp!1940770)))

(declare-fun tp!1940771 () Bool)

(declare-fun b!7059300 () Bool)

(declare-fun e!4243976 () Bool)

(assert (=> b!7059300 (= e!4243976 (and (inv!86820 (h!74604 (t!382059 res!2881552))) e!4243977 tp!1940771))))

(assert (=> b!7058324 (= tp!1940609 e!4243976)))

(assert (= b!7059300 b!7059301))

(assert (= (and b!7058324 (is-Cons!68156 (t!382059 res!2881552))) b!7059300))

(declare-fun m!7778810 () Bool)

(assert (=> b!7059300 m!7778810))

(declare-fun b!7059302 () Bool)

(declare-fun e!4243978 () Bool)

(assert (=> b!7059302 (= e!4243978 tp_is_empty!44393)))

(declare-fun b!7059304 () Bool)

(declare-fun tp!1940776 () Bool)

(assert (=> b!7059304 (= e!4243978 tp!1940776)))

(declare-fun b!7059305 () Bool)

(declare-fun tp!1940772 () Bool)

(declare-fun tp!1940775 () Bool)

(assert (=> b!7059305 (= e!4243978 (and tp!1940772 tp!1940775))))

(declare-fun b!7059303 () Bool)

(declare-fun tp!1940773 () Bool)

(declare-fun tp!1940774 () Bool)

(assert (=> b!7059303 (= e!4243978 (and tp!1940773 tp!1940774))))

(assert (=> b!7058400 (= tp!1940639 e!4243978)))

(assert (= (and b!7058400 (is-ElementMatch!17584 (regOne!35680 (h!74602 (exprs!7080 ct2!306))))) b!7059302))

(assert (= (and b!7058400 (is-Concat!26429 (regOne!35680 (h!74602 (exprs!7080 ct2!306))))) b!7059303))

(assert (= (and b!7058400 (is-Star!17584 (regOne!35680 (h!74602 (exprs!7080 ct2!306))))) b!7059304))

(assert (= (and b!7058400 (is-Union!17584 (regOne!35680 (h!74602 (exprs!7080 ct2!306))))) b!7059305))

(declare-fun b!7059306 () Bool)

(declare-fun e!4243979 () Bool)

(assert (=> b!7059306 (= e!4243979 tp_is_empty!44393)))

(declare-fun b!7059308 () Bool)

(declare-fun tp!1940781 () Bool)

(assert (=> b!7059308 (= e!4243979 tp!1940781)))

(declare-fun b!7059309 () Bool)

(declare-fun tp!1940777 () Bool)

(declare-fun tp!1940780 () Bool)

(assert (=> b!7059309 (= e!4243979 (and tp!1940777 tp!1940780))))

(declare-fun b!7059307 () Bool)

(declare-fun tp!1940778 () Bool)

(declare-fun tp!1940779 () Bool)

(assert (=> b!7059307 (= e!4243979 (and tp!1940778 tp!1940779))))

(assert (=> b!7058400 (= tp!1940640 e!4243979)))

(assert (= (and b!7058400 (is-ElementMatch!17584 (regTwo!35680 (h!74602 (exprs!7080 ct2!306))))) b!7059306))

(assert (= (and b!7058400 (is-Concat!26429 (regTwo!35680 (h!74602 (exprs!7080 ct2!306))))) b!7059307))

(assert (= (and b!7058400 (is-Star!17584 (regTwo!35680 (h!74602 (exprs!7080 ct2!306))))) b!7059308))

(assert (= (and b!7058400 (is-Union!17584 (regTwo!35680 (h!74602 (exprs!7080 ct2!306))))) b!7059309))

(declare-fun b!7059310 () Bool)

(declare-fun e!4243980 () Bool)

(declare-fun tp!1940782 () Bool)

(declare-fun tp!1940783 () Bool)

(assert (=> b!7059310 (= e!4243980 (and tp!1940782 tp!1940783))))

(assert (=> b!7058208 (= tp!1940600 e!4243980)))

(assert (= (and b!7058208 (is-Cons!68154 (exprs!7080 setElem!49937))) b!7059310))

(declare-fun b!7059311 () Bool)

(declare-fun e!4243981 () Bool)

(declare-fun tp!1940784 () Bool)

(assert (=> b!7059311 (= e!4243981 (and tp_is_empty!44393 tp!1940784))))

(assert (=> b!7058398 (= tp!1940637 e!4243981)))

(assert (= (and b!7058398 (is-Cons!68155 (t!382058 (t!382058 (t!382058 s!7408))))) b!7059311))

(declare-fun condSetEmpty!49959 () Bool)

(assert (=> setNonEmpty!49937 (= condSetEmpty!49959 (= setRest!49937 (as set.empty (Set Context!13160))))))

(declare-fun setRes!49959 () Bool)

(assert (=> setNonEmpty!49937 (= tp!1940599 setRes!49959)))

(declare-fun setIsEmpty!49959 () Bool)

(assert (=> setIsEmpty!49959 setRes!49959))

(declare-fun tp!1940785 () Bool)

(declare-fun e!4243982 () Bool)

(declare-fun setNonEmpty!49959 () Bool)

(declare-fun setElem!49959 () Context!13160)

(assert (=> setNonEmpty!49959 (= setRes!49959 (and tp!1940785 (inv!86820 setElem!49959) e!4243982))))

(declare-fun setRest!49959 () (Set Context!13160))

(assert (=> setNonEmpty!49959 (= setRest!49937 (set.union (set.insert setElem!49959 (as set.empty (Set Context!13160))) setRest!49959))))

(declare-fun b!7059312 () Bool)

(declare-fun tp!1940786 () Bool)

(assert (=> b!7059312 (= e!4243982 tp!1940786)))

(assert (= (and setNonEmpty!49937 condSetEmpty!49959) setIsEmpty!49959))

(assert (= (and setNonEmpty!49937 (not condSetEmpty!49959)) setNonEmpty!49959))

(assert (= setNonEmpty!49959 b!7059312))

(declare-fun m!7778812 () Bool)

(assert (=> setNonEmpty!49959 m!7778812))

(declare-fun b!7059313 () Bool)

(declare-fun e!4243983 () Bool)

(assert (=> b!7059313 (= e!4243983 tp_is_empty!44393)))

(declare-fun b!7059315 () Bool)

(declare-fun tp!1940791 () Bool)

(assert (=> b!7059315 (= e!4243983 tp!1940791)))

(declare-fun b!7059316 () Bool)

(declare-fun tp!1940787 () Bool)

(declare-fun tp!1940790 () Bool)

(assert (=> b!7059316 (= e!4243983 (and tp!1940787 tp!1940790))))

(declare-fun b!7059314 () Bool)

(declare-fun tp!1940788 () Bool)

(declare-fun tp!1940789 () Bool)

(assert (=> b!7059314 (= e!4243983 (and tp!1940788 tp!1940789))))

(assert (=> b!7058396 (= tp!1940630 e!4243983)))

(assert (= (and b!7058396 (is-ElementMatch!17584 (regOne!35681 (h!74602 (exprs!7080 setElem!49924))))) b!7059313))

(assert (= (and b!7058396 (is-Concat!26429 (regOne!35681 (h!74602 (exprs!7080 setElem!49924))))) b!7059314))

(assert (= (and b!7058396 (is-Star!17584 (regOne!35681 (h!74602 (exprs!7080 setElem!49924))))) b!7059315))

(assert (= (and b!7058396 (is-Union!17584 (regOne!35681 (h!74602 (exprs!7080 setElem!49924))))) b!7059316))

(declare-fun b!7059317 () Bool)

(declare-fun e!4243984 () Bool)

(assert (=> b!7059317 (= e!4243984 tp_is_empty!44393)))

(declare-fun b!7059319 () Bool)

(declare-fun tp!1940796 () Bool)

(assert (=> b!7059319 (= e!4243984 tp!1940796)))

(declare-fun b!7059320 () Bool)

(declare-fun tp!1940792 () Bool)

(declare-fun tp!1940795 () Bool)

(assert (=> b!7059320 (= e!4243984 (and tp!1940792 tp!1940795))))

(declare-fun b!7059318 () Bool)

(declare-fun tp!1940793 () Bool)

(declare-fun tp!1940794 () Bool)

(assert (=> b!7059318 (= e!4243984 (and tp!1940793 tp!1940794))))

(assert (=> b!7058396 (= tp!1940633 e!4243984)))

(assert (= (and b!7058396 (is-ElementMatch!17584 (regTwo!35681 (h!74602 (exprs!7080 setElem!49924))))) b!7059317))

(assert (= (and b!7058396 (is-Concat!26429 (regTwo!35681 (h!74602 (exprs!7080 setElem!49924))))) b!7059318))

(assert (= (and b!7058396 (is-Star!17584 (regTwo!35681 (h!74602 (exprs!7080 setElem!49924))))) b!7059319))

(assert (= (and b!7058396 (is-Union!17584 (regTwo!35681 (h!74602 (exprs!7080 setElem!49924))))) b!7059320))

(declare-fun condSetEmpty!49960 () Bool)

(assert (=> setNonEmpty!49938 (= condSetEmpty!49960 (= setRest!49938 (as set.empty (Set Context!13160))))))

(declare-fun setRes!49960 () Bool)

(assert (=> setNonEmpty!49938 (= tp!1940606 setRes!49960)))

(declare-fun setIsEmpty!49960 () Bool)

(assert (=> setIsEmpty!49960 setRes!49960))

(declare-fun setNonEmpty!49960 () Bool)

(declare-fun e!4243985 () Bool)

(declare-fun tp!1940797 () Bool)

(declare-fun setElem!49960 () Context!13160)

(assert (=> setNonEmpty!49960 (= setRes!49960 (and tp!1940797 (inv!86820 setElem!49960) e!4243985))))

(declare-fun setRest!49960 () (Set Context!13160))

(assert (=> setNonEmpty!49960 (= setRest!49938 (set.union (set.insert setElem!49960 (as set.empty (Set Context!13160))) setRest!49960))))

(declare-fun b!7059321 () Bool)

(declare-fun tp!1940798 () Bool)

(assert (=> b!7059321 (= e!4243985 tp!1940798)))

(assert (= (and setNonEmpty!49938 condSetEmpty!49960) setIsEmpty!49960))

(assert (= (and setNonEmpty!49938 (not condSetEmpty!49960)) setNonEmpty!49960))

(assert (= setNonEmpty!49960 b!7059321))

(declare-fun m!7778814 () Bool)

(assert (=> setNonEmpty!49960 m!7778814))

(declare-fun b!7059322 () Bool)

(declare-fun e!4243986 () Bool)

(assert (=> b!7059322 (= e!4243986 tp_is_empty!44393)))

(declare-fun b!7059324 () Bool)

(declare-fun tp!1940803 () Bool)

(assert (=> b!7059324 (= e!4243986 tp!1940803)))

(declare-fun b!7059325 () Bool)

(declare-fun tp!1940799 () Bool)

(declare-fun tp!1940802 () Bool)

(assert (=> b!7059325 (= e!4243986 (and tp!1940799 tp!1940802))))

(declare-fun b!7059323 () Bool)

(declare-fun tp!1940800 () Bool)

(declare-fun tp!1940801 () Bool)

(assert (=> b!7059323 (= e!4243986 (and tp!1940800 tp!1940801))))

(assert (=> b!7058403 (= tp!1940643 e!4243986)))

(assert (= (and b!7058403 (is-ElementMatch!17584 (h!74602 (t!382057 (exprs!7080 ct2!306))))) b!7059322))

(assert (= (and b!7058403 (is-Concat!26429 (h!74602 (t!382057 (exprs!7080 ct2!306))))) b!7059323))

(assert (= (and b!7058403 (is-Star!17584 (h!74602 (t!382057 (exprs!7080 ct2!306))))) b!7059324))

(assert (= (and b!7058403 (is-Union!17584 (h!74602 (t!382057 (exprs!7080 ct2!306))))) b!7059325))

(declare-fun b!7059326 () Bool)

(declare-fun e!4243987 () Bool)

(declare-fun tp!1940804 () Bool)

(declare-fun tp!1940805 () Bool)

(assert (=> b!7059326 (= e!4243987 (and tp!1940804 tp!1940805))))

(assert (=> b!7058403 (= tp!1940644 e!4243987)))

(assert (= (and b!7058403 (is-Cons!68154 (t!382057 (t!382057 (exprs!7080 ct2!306))))) b!7059326))

(declare-fun b!7059328 () Bool)

(declare-fun e!4243989 () Bool)

(declare-fun tp!1940806 () Bool)

(assert (=> b!7059328 (= e!4243989 tp!1940806)))

(declare-fun e!4243988 () Bool)

(declare-fun tp!1940807 () Bool)

(declare-fun b!7059327 () Bool)

(assert (=> b!7059327 (= e!4243988 (and (inv!86820 (h!74604 (t!382059 res!2881532))) e!4243989 tp!1940807))))

(assert (=> b!7058227 (= tp!1940602 e!4243988)))

(assert (= b!7059327 b!7059328))

(assert (= (and b!7058227 (is-Cons!68156 (t!382059 res!2881532))) b!7059327))

(declare-fun m!7778816 () Bool)

(assert (=> b!7059327 m!7778816))

(declare-fun b!7059329 () Bool)

(declare-fun e!4243990 () Bool)

(declare-fun tp!1940808 () Bool)

(declare-fun tp!1940809 () Bool)

(assert (=> b!7059329 (= e!4243990 (and tp!1940808 tp!1940809))))

(assert (=> b!7058228 (= tp!1940601 e!4243990)))

(assert (= (and b!7058228 (is-Cons!68154 (exprs!7080 (h!74604 res!2881532)))) b!7059329))

(declare-fun b!7059330 () Bool)

(declare-fun e!4243991 () Bool)

(declare-fun tp!1940810 () Bool)

(declare-fun tp!1940811 () Bool)

(assert (=> b!7059330 (= e!4243991 (and tp!1940810 tp!1940811))))

(assert (=> b!7058316 (= tp!1940607 e!4243991)))

(assert (= (and b!7058316 (is-Cons!68154 (exprs!7080 setElem!49938))) b!7059330))

(declare-fun b!7059331 () Bool)

(declare-fun e!4243992 () Bool)

(declare-fun tp!1940812 () Bool)

(declare-fun tp!1940813 () Bool)

(assert (=> b!7059331 (= e!4243992 (and tp!1940812 tp!1940813))))

(assert (=> b!7058382 (= tp!1940619 e!4243992)))

(assert (= (and b!7058382 (is-Cons!68154 (exprs!7080 setElem!49942))) b!7059331))

(declare-fun condSetEmpty!49961 () Bool)

(assert (=> setNonEmpty!49942 (= condSetEmpty!49961 (= setRest!49942 (as set.empty (Set Context!13160))))))

(declare-fun setRes!49961 () Bool)

(assert (=> setNonEmpty!49942 (= tp!1940618 setRes!49961)))

(declare-fun setIsEmpty!49961 () Bool)

(assert (=> setIsEmpty!49961 setRes!49961))

(declare-fun setElem!49961 () Context!13160)

(declare-fun setNonEmpty!49961 () Bool)

(declare-fun e!4243993 () Bool)

(declare-fun tp!1940814 () Bool)

(assert (=> setNonEmpty!49961 (= setRes!49961 (and tp!1940814 (inv!86820 setElem!49961) e!4243993))))

(declare-fun setRest!49961 () (Set Context!13160))

(assert (=> setNonEmpty!49961 (= setRest!49942 (set.union (set.insert setElem!49961 (as set.empty (Set Context!13160))) setRest!49961))))

(declare-fun b!7059332 () Bool)

(declare-fun tp!1940815 () Bool)

(assert (=> b!7059332 (= e!4243993 tp!1940815)))

(assert (= (and setNonEmpty!49942 condSetEmpty!49961) setIsEmpty!49961))

(assert (= (and setNonEmpty!49942 (not condSetEmpty!49961)) setNonEmpty!49961))

(assert (= setNonEmpty!49961 b!7059332))

(declare-fun m!7778818 () Bool)

(assert (=> setNonEmpty!49961 m!7778818))

(declare-fun b!7059333 () Bool)

(declare-fun e!4243994 () Bool)

(assert (=> b!7059333 (= e!4243994 tp_is_empty!44393)))

(declare-fun b!7059335 () Bool)

(declare-fun tp!1940820 () Bool)

(assert (=> b!7059335 (= e!4243994 tp!1940820)))

(declare-fun b!7059336 () Bool)

(declare-fun tp!1940816 () Bool)

(declare-fun tp!1940819 () Bool)

(assert (=> b!7059336 (= e!4243994 (and tp!1940816 tp!1940819))))

(declare-fun b!7059334 () Bool)

(declare-fun tp!1940817 () Bool)

(declare-fun tp!1940818 () Bool)

(assert (=> b!7059334 (= e!4243994 (and tp!1940817 tp!1940818))))

(assert (=> b!7058397 (= tp!1940635 e!4243994)))

(assert (= (and b!7058397 (is-ElementMatch!17584 (h!74602 (t!382057 (exprs!7080 setElem!49924))))) b!7059333))

(assert (= (and b!7058397 (is-Concat!26429 (h!74602 (t!382057 (exprs!7080 setElem!49924))))) b!7059334))

(assert (= (and b!7058397 (is-Star!17584 (h!74602 (t!382057 (exprs!7080 setElem!49924))))) b!7059335))

(assert (= (and b!7058397 (is-Union!17584 (h!74602 (t!382057 (exprs!7080 setElem!49924))))) b!7059336))

(declare-fun b!7059337 () Bool)

(declare-fun e!4243995 () Bool)

(declare-fun tp!1940821 () Bool)

(declare-fun tp!1940822 () Bool)

(assert (=> b!7059337 (= e!4243995 (and tp!1940821 tp!1940822))))

(assert (=> b!7058397 (= tp!1940636 e!4243995)))

(assert (= (and b!7058397 (is-Cons!68154 (t!382057 (t!382057 (exprs!7080 setElem!49924))))) b!7059337))

(declare-fun b_lambda!269111 () Bool)

(assert (= b_lambda!269107 (or d!2205830 b_lambda!269111)))

(declare-fun bs!1878395 () Bool)

(declare-fun d!2206946 () Bool)

(assert (= bs!1878395 (and d!2206946 d!2205830)))

(assert (=> bs!1878395 (= (dynLambda!27681 lambda!421264 (h!74602 (t!382057 (exprs!7080 ct2!306)))) (validRegex!8960 (h!74602 (t!382057 (exprs!7080 ct2!306)))))))

(declare-fun m!7778820 () Bool)

(assert (=> bs!1878395 m!7778820))

(assert (=> b!7059124 d!2206946))

(declare-fun b_lambda!269113 () Bool)

(assert (= b_lambda!269087 (or d!2205902 b_lambda!269113)))

(declare-fun bs!1878396 () Bool)

(declare-fun d!2206948 () Bool)

(assert (= bs!1878396 (and d!2206948 d!2205902)))

(assert (=> bs!1878396 (= (dynLambda!27681 lambda!421275 (h!74602 (t!382057 (exprs!7080 setElem!49924)))) (validRegex!8960 (h!74602 (t!382057 (exprs!7080 setElem!49924)))))))

(declare-fun m!7778822 () Bool)

(assert (=> bs!1878396 m!7778822))

(assert (=> b!7058884 d!2206948))

(declare-fun b_lambda!269115 () Bool)

(assert (= b_lambda!269083 (or b!7057676 b_lambda!269115)))

(declare-fun bs!1878397 () Bool)

(declare-fun d!2206950 () Bool)

(assert (= bs!1878397 (and d!2206950 b!7057676)))

(assert (=> bs!1878397 (= (dynLambda!27676 lambda!421193 (h!74604 (t!382059 (toList!10925 lt!2533930)))) (matchZipper!3124 (set.insert (h!74604 (t!382059 (toList!10925 lt!2533930))) (as set.empty (Set Context!13160))) s!7408))))

(declare-fun m!7778824 () Bool)

(assert (=> bs!1878397 m!7778824))

(assert (=> bs!1878397 m!7778824))

(declare-fun m!7778826 () Bool)

(assert (=> bs!1878397 m!7778826))

(assert (=> b!7058774 d!2206950))

(declare-fun b_lambda!269117 () Bool)

(assert (= b_lambda!269103 (or b!7057679 b_lambda!269117)))

(declare-fun bs!1878398 () Bool)

(declare-fun d!2206952 () Bool)

(assert (= bs!1878398 (and d!2206952 b!7057679)))

(assert (=> bs!1878398 (= (dynLambda!27681 lambda!421195 (h!74602 (exprs!7080 lt!2533926))) (validRegex!8960 (h!74602 (exprs!7080 lt!2533926))))))

(declare-fun m!7778828 () Bool)

(assert (=> bs!1878398 m!7778828))

(assert (=> b!7059038 d!2206952))

(declare-fun b_lambda!269119 () Bool)

(assert (= b_lambda!269085 (or b!7057679 b_lambda!269119)))

(declare-fun bs!1878399 () Bool)

(declare-fun d!2206954 () Bool)

(assert (= bs!1878399 (and d!2206954 b!7057679)))

(assert (=> bs!1878399 (= (dynLambda!27681 lambda!421195 (h!74602 (t!382057 (++!15667 lt!2533935 (exprs!7080 ct2!306))))) (validRegex!8960 (h!74602 (t!382057 (++!15667 lt!2533935 (exprs!7080 ct2!306))))))))

(declare-fun m!7778830 () Bool)

(assert (=> bs!1878399 m!7778830))

(assert (=> b!7058880 d!2206954))

(declare-fun b_lambda!269121 () Bool)

(assert (= b_lambda!269081 (or b!7057676 b_lambda!269121)))

(declare-fun bs!1878400 () Bool)

(declare-fun d!2206956 () Bool)

(assert (= bs!1878400 (and d!2206956 b!7057676)))

(assert (=> bs!1878400 (= (dynLambda!27676 lambda!421193 lt!2534297) (matchZipper!3124 (set.insert lt!2534297 (as set.empty (Set Context!13160))) s!7408))))

(declare-fun m!7778832 () Bool)

(assert (=> bs!1878400 m!7778832))

(assert (=> bs!1878400 m!7778832))

(declare-fun m!7778834 () Bool)

(assert (=> bs!1878400 m!7778834))

(assert (=> d!2206572 d!2206956))

(declare-fun b_lambda!269123 () Bool)

(assert (= b_lambda!269091 (or b!7057679 b_lambda!269123)))

(declare-fun bs!1878401 () Bool)

(declare-fun d!2206958 () Bool)

(assert (= bs!1878401 (and d!2206958 b!7057679)))

(assert (=> bs!1878401 (= (dynLambda!27681 lambda!421195 (h!74602 (t!382057 (exprs!7080 lt!2533918)))) (validRegex!8960 (h!74602 (t!382057 (exprs!7080 lt!2533918)))))))

(declare-fun m!7778836 () Bool)

(assert (=> bs!1878401 m!7778836))

(assert (=> b!7058896 d!2206958))

(declare-fun b_lambda!269125 () Bool)

(assert (= b_lambda!269099 (or d!2206048 b_lambda!269125)))

(declare-fun bs!1878402 () Bool)

(declare-fun d!2206960 () Bool)

(assert (= bs!1878402 (and d!2206960 d!2206048)))

(assert (=> bs!1878402 (= (dynLambda!27681 lambda!421297 (h!74602 (exprs!7080 setElem!49930))) (validRegex!8960 (h!74602 (exprs!7080 setElem!49930))))))

(declare-fun m!7778838 () Bool)

(assert (=> bs!1878402 m!7778838))

(assert (=> b!7059032 d!2206960))

(declare-fun b_lambda!269127 () Bool)

(assert (= b_lambda!269095 (or b!7057679 b_lambda!269127)))

(declare-fun bs!1878403 () Bool)

(declare-fun d!2206962 () Bool)

(assert (= bs!1878403 (and d!2206962 b!7057679)))

(assert (=> bs!1878403 (= (dynLambda!27681 lambda!421195 (h!74602 (++!15667 (exprs!7080 lt!2534154) (exprs!7080 ct2!306)))) (validRegex!8960 (h!74602 (++!15667 (exprs!7080 lt!2534154) (exprs!7080 ct2!306)))))))

(declare-fun m!7778840 () Bool)

(assert (=> bs!1878403 m!7778840))

(assert (=> b!7058932 d!2206962))

(declare-fun b_lambda!269129 () Bool)

(assert (= b_lambda!269093 (or d!2205874 b_lambda!269129)))

(declare-fun bs!1878404 () Bool)

(declare-fun d!2206964 () Bool)

(assert (= bs!1878404 (and d!2206964 d!2205874)))

(assert (=> bs!1878404 (= (dynLambda!27676 lambda!421268 (h!74604 (t!382059 lt!2533923))) (not (dynLambda!27676 lambda!421193 (h!74604 (t!382059 lt!2533923)))))))

(declare-fun b_lambda!269141 () Bool)

(assert (=> (not b_lambda!269141) (not bs!1878404)))

(declare-fun m!7778842 () Bool)

(assert (=> bs!1878404 m!7778842))

(assert (=> b!7058909 d!2206964))

(declare-fun b_lambda!269131 () Bool)

(assert (= b_lambda!269109 (or d!2206156 b_lambda!269131)))

(declare-fun bs!1878405 () Bool)

(declare-fun d!2206966 () Bool)

(assert (= bs!1878405 (and d!2206966 d!2206156)))

(assert (=> bs!1878405 (= (dynLambda!27676 lambda!421308 (h!74604 lt!2533923)) (not (dynLambda!27676 lambda!421271 (h!74604 lt!2533923))))))

(declare-fun b_lambda!269143 () Bool)

(assert (=> (not b_lambda!269143) (not bs!1878405)))

(declare-fun m!7778844 () Bool)

(assert (=> bs!1878405 m!7778844))

(assert (=> b!7059240 d!2206966))

(declare-fun b_lambda!269133 () Bool)

(assert (= b_lambda!269101 (or b!7057679 b_lambda!269133)))

(declare-fun bs!1878406 () Bool)

(declare-fun d!2206968 () Bool)

(assert (= bs!1878406 (and d!2206968 b!7057679)))

(assert (=> bs!1878406 (= (dynLambda!27681 lambda!421195 (h!74602 (++!15667 (exprs!7080 lt!2533926) (exprs!7080 ct2!306)))) (validRegex!8960 (h!74602 (++!15667 (exprs!7080 lt!2533926) (exprs!7080 ct2!306)))))))

(declare-fun m!7778846 () Bool)

(assert (=> bs!1878406 m!7778846))

(assert (=> b!7059036 d!2206968))

(declare-fun b_lambda!269135 () Bool)

(assert (= b_lambda!269105 (or b!7057679 b_lambda!269135)))

(declare-fun bs!1878407 () Bool)

(declare-fun d!2206970 () Bool)

(assert (= bs!1878407 (and d!2206970 b!7057679)))

(assert (=> bs!1878407 (= (dynLambda!27681 lambda!421195 (h!74602 (t!382057 lt!2533935))) (validRegex!8960 (h!74602 (t!382057 lt!2533935))))))

(declare-fun m!7778848 () Bool)

(assert (=> bs!1878407 m!7778848))

(assert (=> b!7059122 d!2206970))

(declare-fun b_lambda!269137 () Bool)

(assert (= b_lambda!269097 (or b!7057679 b_lambda!269137)))

(declare-fun bs!1878408 () Bool)

(declare-fun d!2206972 () Bool)

(assert (= bs!1878408 (and d!2206972 b!7057679)))

(assert (=> bs!1878408 (= (dynLambda!27681 lambda!421195 (h!74602 (exprs!7080 lt!2534154))) (validRegex!8960 (h!74602 (exprs!7080 lt!2534154))))))

(declare-fun m!7778850 () Bool)

(assert (=> bs!1878408 m!7778850))

(assert (=> b!7058934 d!2206972))

(declare-fun b_lambda!269139 () Bool)

(assert (= b_lambda!269089 (or b!7057679 b_lambda!269139)))

(declare-fun bs!1878409 () Bool)

(declare-fun d!2206974 () Bool)

(assert (= bs!1878409 (and d!2206974 b!7057679)))

(assert (=> bs!1878409 (= (dynLambda!27681 lambda!421195 (h!74602 (t!382057 (++!15667 (exprs!7080 lt!2533918) (exprs!7080 ct2!306))))) (validRegex!8960 (h!74602 (t!382057 (++!15667 (exprs!7080 lt!2533918) (exprs!7080 ct2!306))))))))

(declare-fun m!7778852 () Bool)

(assert (=> bs!1878409 m!7778852))

(assert (=> b!7058888 d!2206974))

(push 1)

(assert (not d!2206640))

(assert (not bm!641373))

(assert (not b_lambda!269123))

(assert (not b!7059117))

(assert (not d!2206566))

(assert (not b!7058877))

(assert (not b!7059129))

(assert (not b!7059075))

(assert (not b!7058845))

(assert (not bm!641447))

(assert (not b!7059130))

(assert (not d!2206644))

(assert (not b!7059300))

(assert (not b!7059170))

(assert (not bm!641382))

(assert (not b_lambda!269001))

(assert (not b_lambda!268929))

(assert (not b!7058754))

(assert (not b_lambda!268995))

(assert (not b!7058808))

(assert (not b_lambda!269011))

(assert (not bs!1878408))

(assert (not b!7059154))

(assert (not b!7059132))

(assert (not bm!641400))

(assert (not bs!1878398))

(assert (not b_lambda!269125))

(assert (not d!2206648))

(assert (not d!2206702))

(assert (not b!7058807))

(assert (not bm!641455))

(assert (not b!7059316))

(assert (not bm!641338))

(assert (not bm!641372))

(assert (not b!7059171))

(assert (not b!7058804))

(assert (not d!2206562))

(assert (not bm!641413))

(assert (not bm!641416))

(assert (not d!2206672))

(assert (not b!7059319))

(assert (not b_lambda!269017))

(assert (not bs!1878402))

(assert (not b!7059301))

(assert (not b_lambda!269139))

(assert (not b!7059291))

(assert (not b!7059216))

(assert (not d!2206810))

(assert (not b!7058875))

(assert (not b!7058856))

(assert (not bm!641399))

(assert (not setNonEmpty!49958))

(assert (not bm!641361))

(assert (not b!7059086))

(assert (not d!2206750))

(assert (not b!7058966))

(assert (not b!7059266))

(assert (not b!7059281))

(assert (not b!7059311))

(assert (not bm!641340))

(assert (not d!2206712))

(assert (not b_lambda!268927))

(assert (not d!2206652))

(assert (not d!2206626))

(assert (not b!7058775))

(assert (not b!7059305))

(assert (not d!2206868))

(assert (not b!7059243))

(assert (not b!7059310))

(assert (not b!7059277))

(assert (not b!7059267))

(assert (not b!7059254))

(assert (not bs!1878403))

(assert (not d!2206896))

(assert (not d!2206558))

(assert (not bs!1878400))

(assert (not b!7059331))

(assert (not b!7059241))

(assert (not b!7058948))

(assert (not b!7058811))

(assert (not b!7059033))

(assert (not b!7059001))

(assert (not bm!641457))

(assert (not d!2206662))

(assert (not bm!641395))

(assert (not b!7059262))

(assert (not b!7059335))

(assert (not b!7059253))

(assert (not b!7059273))

(assert (not b!7059087))

(assert (not b!7058805))

(assert (not d!2206876))

(assert (not b!7059309))

(assert (not b!7058988))

(assert (not b_lambda!268937))

(assert (not d!2206844))

(assert (not b!7058771))

(assert (not b!7059288))

(assert (not bm!641376))

(assert (not b!7059174))

(assert (not d!2206916))

(assert (not d!2206892))

(assert (not b!7059215))

(assert (not b!7058900))

(assert (not bm!641387))

(assert (not bm!641462))

(assert (not d!2206850))

(assert (not b_lambda!268997))

(assert (not b!7059068))

(assert (not b!7059293))

(assert (not b!7059105))

(assert (not bm!641402))

(assert (not b!7059314))

(assert (not b!7059073))

(assert (not d!2206612))

(assert (not bm!641440))

(assert (not b!7059318))

(assert (not b!7059336))

(assert (not d!2206642))

(assert (not b_lambda!269135))

(assert (not d!2206734))

(assert (not b!7059136))

(assert (not b!7059187))

(assert (not bs!1878407))

(assert (not b!7058958))

(assert (not d!2206902))

(assert (not bm!641417))

(assert (not b!7059184))

(assert (not b!7059227))

(assert (not setNonEmpty!49959))

(assert (not bm!641460))

(assert (not bm!641420))

(assert (not b!7059330))

(assert (not b_lambda!269141))

(assert (not b!7058881))

(assert (not b!7059008))

(assert (not b!7059298))

(assert (not bm!641377))

(assert (not d!2206716))

(assert (not b!7059275))

(assert (not d!2206614))

(assert tp_is_empty!44393)

(assert (not b!7059325))

(assert (not b_lambda!268931))

(assert (not bm!641442))

(assert (not b!7059218))

(assert (not b!7059147))

(assert (not b!7059107))

(assert (not b!7059297))

(assert (not bm!641441))

(assert (not b_lambda!268993))

(assert (not bm!641385))

(assert (not b!7059321))

(assert (not b!7059296))

(assert (not bm!641429))

(assert (not b!7059284))

(assert (not b!7059248))

(assert (not setNonEmpty!49953))

(assert (not bm!641418))

(assert (not b!7059135))

(assert (not bm!641384))

(assert (not bm!641356))

(assert (not d!2206940))

(assert (not b!7058989))

(assert (not setNonEmpty!49960))

(assert (not bm!641362))

(assert (not d!2206870))

(assert (not d!2206554))

(assert (not b!7059315))

(assert (not d!2206816))

(assert (not d!2206574))

(assert (not d!2206880))

(assert (not b!7059326))

(assert (not b!7059276))

(assert (not setNonEmpty!49955))

(assert (not setNonEmpty!49956))

(assert (not d!2206606))

(assert (not b!7058773))

(assert (not b_lambda!269119))

(assert (not b_lambda!269009))

(assert (not b!7059138))

(assert (not d!2206794))

(assert (not bm!641383))

(assert (not bm!641403))

(assert (not d!2206798))

(assert (not b!7059152))

(assert (not d!2206708))

(assert (not bm!641411))

(assert (not d!2206688))

(assert (not b!7058741))

(assert (not b!7058857))

(assert (not b_lambda!269079))

(assert (not b!7059109))

(assert (not b!7058736))

(assert (not b!7059037))

(assert (not b!7059292))

(assert (not setNonEmpty!49961))

(assert (not b!7058887))

(assert (not bm!641410))

(assert (not setNonEmpty!49957))

(assert (not bs!1878396))

(assert (not b!7058935))

(assert (not b!7058883))

(assert (not b!7059263))

(assert (not d!2206904))

(assert (not bm!641453))

(assert (not bm!641371))

(assert (not d!2206608))

(assert (not b!7059272))

(assert (not d!2206738))

(assert (not b!7058922))

(assert (not d!2206934))

(assert (not d!2206746))

(assert (not b!7059035))

(assert (not b_lambda!269115))

(assert (not b!7058821))

(assert (not d!2206740))

(assert (not d!2206820))

(assert (not bm!641394))

(assert (not d!2206788))

(assert (not b!7059127))

(assert (not b!7058855))

(assert (not b!7059121))

(assert (not b!7058874))

(assert (not b!7059123))

(assert (not b!7058891))

(assert (not b!7058885))

(assert (not b!7059081))

(assert (not b!7058879))

(assert (not bm!641415))

(assert (not bs!1878409))

(assert (not bm!641404))

(assert (not b!7059268))

(assert (not b!7059140))

(assert (not d!2206826))

(assert (not b!7059019))

(assert (not b_lambda!269131))

(assert (not bm!641427))

(assert (not bm!641438))

(assert (not d!2206894))

(assert (not b!7059217))

(assert (not d!2206900))

(assert (not b!7059279))

(assert (not d!2206778))

(assert (not b!7059304))

(assert (not b!7058933))

(assert (not bm!641414))

(assert (not bm!641405))

(assert (not b!7058897))

(assert (not d!2206594))

(assert (not b!7059287))

(assert (not bm!641331))

(assert (not b!7059312))

(assert (not b!7059071))

(assert (not d!2206564))

(assert (not b!7058894))

(assert (not bm!641456))

(assert (not d!2206726))

(assert (not b_lambda!269111))

(assert (not bs!1878395))

(assert (not bm!641459))

(assert (not b!7059022))

(assert (not b_lambda!269007))

(assert (not b!7058861))

(assert (not b!7059324))

(assert (not d!2206616))

(assert (not b!7059125))

(assert (not b!7058924))

(assert (not b!7059092))

(assert (not b!7059005))

(assert (not b!7059102))

(assert (not b!7058823))

(assert (not b_lambda!269117))

(assert (not b!7058889))

(assert (not bm!641391))

(assert (not d!2206638))

(assert (not bm!641430))

(assert (not b!7058822))

(assert (not d!2206854))

(assert (not b_lambda!269127))

(assert (not bm!641433))

(assert (not bm!641390))

(assert (not b!7059337))

(assert (not b_lambda!269005))

(assert (not d!2206862))

(assert (not b!7059072))

(assert (not d!2206824))

(assert (not d!2206630))

(assert (not b!7059307))

(assert (not d!2206660))

(assert (not d!2206560))

(assert (not b!7059000))

(assert (not d!2206572))

(assert (not b_lambda!269121))

(assert (not bm!641465))

(assert (not b!7058892))

(assert (not bm!641452))

(assert (not b!7059251))

(assert (not bm!641364))

(assert (not b!7058937))

(assert (not b!7059308))

(assert (not bm!641434))

(assert (not b!7059209))

(assert (not b!7059294))

(assert (not bs!1878406))

(assert (not b_lambda!269137))

(assert (not b!7058919))

(assert (not bm!641428))

(assert (not b!7059245))

(assert (not bm!641380))

(assert (not b!7058800))

(assert (not b!7059264))

(assert (not b!7059023))

(assert (not b!7058998))

(assert (not b!7058859))

(assert (not b_lambda!268935))

(assert (not bm!641337))

(assert (not bm!641466))

(assert (not bm!641379))

(assert (not b!7058806))

(assert (not bm!641396))

(assert (not bm!641445))

(assert (not d!2206882))

(assert (not b!7059141))

(assert (not d!2206886))

(assert (not b!7059212))

(assert (not b!7058876))

(assert (not b!7059329))

(assert (not b!7059197))

(assert (not bs!1878401))

(assert (not b!7059285))

(assert (not bm!641446))

(assert (not bm!641341))

(assert (not b!7058959))

(assert (not b!7058825))

(assert (not b!7058878))

(assert (not d!2206772))

(assert (not d!2206632))

(assert (not b_lambda!269129))

(assert (not bm!641332))

(assert (not d!2206588))

(assert (not b!7058869))

(assert (not d!2206800))

(assert (not bm!641350))

(assert (not bm!641443))

(assert (not d!2206670))

(assert (not b!7059151))

(assert (not b!7058863))

(assert (not bm!641368))

(assert (not bs!1878397))

(assert (not b!7059280))

(assert (not b!7059299))

(assert (not bm!641407))

(assert (not bm!641424))

(assert (not b!7059168))

(assert (not d!2206748))

(assert (not d!2206706))

(assert (not d!2206590))

(assert (not bm!641423))

(assert (not bm!641355))

(assert (not setNonEmpty!49954))

(assert (not bm!641352))

(assert (not bm!641328))

(assert (not b!7059069))

(assert (not d!2206942))

(assert (not bs!1878399))

(assert (not b!7058738))

(assert (not b!7058842))

(assert (not b!7059003))

(assert (not b!7058832))

(assert (not b_lambda!269113))

(assert (not b!7059111))

(assert (not b!7058972))

(assert (not b!7059213))

(assert (not b!7059323))

(assert (not b!7059303))

(assert (not b!7059166))

(assert (not b!7059320))

(assert (not b_lambda!269015))

(assert (not d!2206552))

(assert (not b_lambda!268991))

(assert (not b!7059334))

(assert (not d!2206578))

(assert (not b!7059017))

(assert (not b!7059156))

(assert (not b!7058829))

(assert (not b!7059024))

(assert (not b_lambda!269003))

(assert (not d!2206602))

(assert (not b!7059295))

(assert (not b!7058826))

(assert (not bm!641334))

(assert (not bm!641358))

(assert (not d!2206600))

(assert (not b!7059289))

(assert (not bm!641367))

(assert (not bm!641351))

(assert (not b!7059231))

(assert (not b!7059271))

(assert (not d!2206692))

(assert (not b!7059175))

(assert (not b!7058910))

(assert (not d!2206580))

(assert (not bm!641437))

(assert (not d!2206704))

(assert (not b!7059133))

(assert (not d!2206864))

(assert (not d!2206846))

(assert (not b!7059328))

(assert (not b_lambda!269013))

(assert (not b!7059327))

(assert (not d!2206728))

(assert (not b!7059198))

(assert (not b!7059283))

(assert (not b!7059332))

(assert (not d!2206818))

(assert (not d!2206938))

(assert (not b!7059055))

(assert (not b_lambda!268999))

(assert (not b!7058921))

(assert (not b!7059059))

(assert (not b!7059103))

(assert (not d!2206654))

(assert (not b!7058751))

(assert (not b!7059039))

(assert (not d!2206852))

(assert (not b_lambda!268933))

(assert (not d!2206596))

(assert (not b!7058827))

(assert (not b!7059247))

(assert (not b!7059070))

(assert (not b_lambda!269133))

(assert (not b!7059269))

(assert (not setNonEmpty!49952))

(assert (not b_lambda!269143))

(assert (not bm!641449))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

