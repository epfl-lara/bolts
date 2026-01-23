; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!681664 () Bool)

(assert start!681664)

(declare-fun b!7043800 () Bool)

(assert (=> b!7043800 true))

(declare-fun b!7043804 () Bool)

(assert (=> b!7043804 true))

(declare-fun b!7043806 () Bool)

(assert (=> b!7043806 true))

(declare-fun b!7043794 () Bool)

(declare-fun e!4234470 () Bool)

(declare-fun tp!1937712 () Bool)

(assert (=> b!7043794 (= e!4234470 tp!1937712)))

(declare-fun b!7043795 () Bool)

(declare-fun res!2875599 () Bool)

(declare-fun e!4234472 () Bool)

(assert (=> b!7043795 (=> res!2875599 e!4234472)))

(declare-datatypes ((C!35266 0))(
  ( (C!35267 (val!27335 Int)) )
))
(declare-datatypes ((List!68022 0))(
  ( (Nil!67898) (Cons!67898 (h!74346 C!35266) (t!381795 List!68022)) )
))
(declare-datatypes ((tuple2!68134 0))(
  ( (tuple2!68135 (_1!37370 List!68022) (_2!37370 List!68022)) )
))
(declare-fun lt!2525920 () tuple2!68134)

(declare-fun s!7408 () List!68022)

(declare-fun ++!15571 (List!68022 List!68022) List!68022)

(assert (=> b!7043795 (= res!2875599 (not (= (++!15571 (_1!37370 lt!2525920) (_2!37370 lt!2525920)) (t!381795 s!7408))))))

(declare-fun b!7043796 () Bool)

(declare-fun e!4234480 () Bool)

(declare-fun e!4234468 () Bool)

(assert (=> b!7043796 (= e!4234480 e!4234468)))

(declare-fun res!2875591 () Bool)

(assert (=> b!7043796 (=> res!2875591 e!4234468)))

(declare-fun e!4234475 () Bool)

(assert (=> b!7043796 (= res!2875591 e!4234475)))

(declare-fun res!2875586 () Bool)

(assert (=> b!7043796 (=> (not res!2875586) (not e!4234475))))

(declare-fun lt!2525913 () Bool)

(assert (=> b!7043796 (= res!2875586 (not lt!2525913))))

(declare-datatypes ((Regex!17498 0))(
  ( (ElementMatch!17498 (c!1311360 C!35266)) (Concat!26343 (regOne!35508 Regex!17498) (regTwo!35508 Regex!17498)) (EmptyExpr!17498) (Star!17498 (reg!17827 Regex!17498)) (EmptyLang!17498) (Union!17498 (regOne!35509 Regex!17498) (regTwo!35509 Regex!17498)) )
))
(declare-datatypes ((List!68023 0))(
  ( (Nil!67899) (Cons!67899 (h!74347 Regex!17498) (t!381796 List!68023)) )
))
(declare-datatypes ((Context!12988 0))(
  ( (Context!12989 (exprs!6994 List!68023)) )
))
(declare-fun lt!2525891 () (Set Context!12988))

(declare-fun matchZipper!3038 ((Set Context!12988) List!68022) Bool)

(assert (=> b!7043796 (= lt!2525913 (matchZipper!3038 lt!2525891 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920))))))

(declare-fun lt!2525884 () (Set Context!12988))

(assert (=> b!7043796 (matchZipper!3038 lt!2525884 (_1!37370 lt!2525920))))

(declare-fun lt!2525878 () (Set Context!12988))

(declare-datatypes ((Unit!161678 0))(
  ( (Unit!161679) )
))
(declare-fun lt!2525917 () Unit!161678)

(declare-fun lt!2525918 () (Set Context!12988))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1571 ((Set Context!12988) (Set Context!12988) List!68022) Unit!161678)

(assert (=> b!7043796 (= lt!2525917 (lemmaZipperConcatMatchesSameAsBothZippers!1571 lt!2525878 lt!2525918 (_1!37370 lt!2525920)))))

(declare-fun b!7043797 () Bool)

(declare-fun res!2875578 () Bool)

(declare-fun e!4234484 () Bool)

(assert (=> b!7043797 (=> res!2875578 e!4234484)))

(declare-fun lt!2525892 () Context!12988)

(assert (=> b!7043797 (= res!2875578 (not (is-Cons!67899 (exprs!6994 lt!2525892))))))

(declare-fun b!7043798 () Bool)

(declare-fun res!2875584 () Bool)

(declare-fun e!4234482 () Bool)

(assert (=> b!7043798 (=> (not res!2875584) (not e!4234482))))

(assert (=> b!7043798 (= res!2875584 (is-Cons!67898 s!7408))))

(declare-fun b!7043799 () Bool)

(declare-fun res!2875587 () Bool)

(declare-fun e!4234467 () Bool)

(assert (=> b!7043799 (=> res!2875587 e!4234467)))

(declare-fun lt!2525886 () Bool)

(assert (=> b!7043799 (= res!2875587 (not lt!2525886))))

(declare-fun e!4234474 () Bool)

(assert (=> b!7043800 (= e!4234482 (not e!4234474))))

(declare-fun res!2875596 () Bool)

(assert (=> b!7043800 (=> res!2875596 e!4234474)))

(declare-fun lt!2525883 () (Set Context!12988))

(assert (=> b!7043800 (= res!2875596 (not (matchZipper!3038 lt!2525883 s!7408)))))

(declare-fun lt!2525879 () Context!12988)

(assert (=> b!7043800 (= lt!2525883 (set.insert lt!2525879 (as set.empty (Set Context!12988))))))

(declare-fun lt!2525914 () (Set Context!12988))

(declare-fun lambda!417383 () Int)

(declare-fun getWitness!1527 ((Set Context!12988) Int) Context!12988)

(assert (=> b!7043800 (= lt!2525879 (getWitness!1527 lt!2525914 lambda!417383))))

(declare-datatypes ((List!68024 0))(
  ( (Nil!67900) (Cons!67900 (h!74348 Context!12988) (t!381797 List!68024)) )
))
(declare-fun lt!2525922 () List!68024)

(declare-fun exists!3448 (List!68024 Int) Bool)

(assert (=> b!7043800 (exists!3448 lt!2525922 lambda!417383)))

(declare-fun lt!2525898 () Unit!161678)

(declare-fun lemmaZipperMatchesExistsMatchingContext!437 (List!68024 List!68022) Unit!161678)

(assert (=> b!7043800 (= lt!2525898 (lemmaZipperMatchesExistsMatchingContext!437 lt!2525922 s!7408))))

(declare-fun toList!10841 ((Set Context!12988)) List!68024)

(assert (=> b!7043800 (= lt!2525922 (toList!10841 lt!2525914))))

(declare-fun b!7043801 () Bool)

(declare-fun e!4234477 () Bool)

(assert (=> b!7043801 (= e!4234477 e!4234480)))

(declare-fun res!2875579 () Bool)

(assert (=> b!7043801 (=> res!2875579 e!4234480)))

(declare-fun lt!2525888 () (Set Context!12988))

(assert (=> b!7043801 (= res!2875579 (not (= lt!2525888 lt!2525884)))))

(assert (=> b!7043801 (= lt!2525884 (set.union lt!2525878 lt!2525918))))

(declare-fun lt!2525916 () Context!12988)

(declare-fun derivationStepZipperUp!2108 (Context!12988 C!35266) (Set Context!12988))

(assert (=> b!7043801 (= lt!2525918 (derivationStepZipperUp!2108 lt!2525916 (h!74346 s!7408)))))

(declare-fun b!7043802 () Bool)

(declare-fun e!4234473 () Bool)

(assert (=> b!7043802 (= e!4234467 e!4234473)))

(declare-fun res!2875581 () Bool)

(assert (=> b!7043802 (=> res!2875581 e!4234473)))

(declare-fun lt!2525902 () (Set Context!12988))

(assert (=> b!7043802 (= res!2875581 (matchZipper!3038 lt!2525902 (t!381795 s!7408)))))

(declare-fun lt!2525921 () List!68023)

(declare-fun lambda!417385 () Int)

(declare-fun lt!2525877 () Unit!161678)

(declare-fun ct2!306 () Context!12988)

(declare-fun lemmaConcatPreservesForall!819 (List!68023 List!68023 Int) Unit!161678)

(assert (=> b!7043802 (= lt!2525877 (lemmaConcatPreservesForall!819 lt!2525921 (exprs!6994 ct2!306) lambda!417385))))

(declare-fun b!7043803 () Bool)

(declare-fun e!4234465 () Bool)

(declare-fun e!4234483 () Bool)

(assert (=> b!7043803 (= e!4234465 e!4234483)))

(declare-fun res!2875598 () Bool)

(assert (=> b!7043803 (=> res!2875598 e!4234483)))

(declare-fun lt!2525909 () (Set Context!12988))

(assert (=> b!7043803 (= res!2875598 (not (= lt!2525909 lt!2525883)))))

(declare-fun lt!2525923 () Context!12988)

(assert (=> b!7043803 (= lt!2525909 (set.insert lt!2525923 (as set.empty (Set Context!12988))))))

(declare-fun lt!2525893 () Unit!161678)

(assert (=> b!7043803 (= lt!2525893 (lemmaConcatPreservesForall!819 (exprs!6994 lt!2525892) (exprs!6994 ct2!306) lambda!417385))))

(assert (=> b!7043804 (= e!4234474 e!4234465)))

(declare-fun res!2875590 () Bool)

(assert (=> b!7043804 (=> res!2875590 e!4234465)))

(declare-fun z1!570 () (Set Context!12988))

(assert (=> b!7043804 (= res!2875590 (or (not (= lt!2525923 lt!2525879)) (not (set.member lt!2525892 z1!570))))))

(declare-fun ++!15572 (List!68023 List!68023) List!68023)

(assert (=> b!7043804 (= lt!2525923 (Context!12989 (++!15572 (exprs!6994 lt!2525892) (exprs!6994 ct2!306))))))

(declare-fun lt!2525881 () Unit!161678)

(assert (=> b!7043804 (= lt!2525881 (lemmaConcatPreservesForall!819 (exprs!6994 lt!2525892) (exprs!6994 ct2!306) lambda!417385))))

(declare-fun lambda!417384 () Int)

(declare-fun mapPost2!339 ((Set Context!12988) Int Context!12988) Context!12988)

(assert (=> b!7043804 (= lt!2525892 (mapPost2!339 z1!570 lambda!417384 lt!2525879))))

(declare-fun b!7043805 () Bool)

(declare-fun e!4234479 () Bool)

(assert (=> b!7043805 (= e!4234479 e!4234467)))

(declare-fun res!2875577 () Bool)

(assert (=> b!7043805 (=> res!2875577 e!4234467)))

(declare-fun e!4234476 () Bool)

(assert (=> b!7043805 (= res!2875577 e!4234476)))

(declare-fun res!2875589 () Bool)

(assert (=> b!7043805 (=> (not res!2875589) (not e!4234476))))

(declare-fun lt!2525910 () Bool)

(assert (=> b!7043805 (= res!2875589 (not (= lt!2525886 lt!2525910)))))

(declare-fun lt!2525906 () (Set Context!12988))

(assert (=> b!7043805 (= lt!2525886 (matchZipper!3038 lt!2525906 (t!381795 s!7408)))))

(declare-fun lt!2525899 () Unit!161678)

(assert (=> b!7043805 (= lt!2525899 (lemmaConcatPreservesForall!819 lt!2525921 (exprs!6994 ct2!306) lambda!417385))))

(declare-fun lt!2525896 () (Set Context!12988))

(declare-fun e!4234471 () Bool)

(assert (=> b!7043805 (= (matchZipper!3038 lt!2525896 (t!381795 s!7408)) e!4234471)))

(declare-fun res!2875585 () Bool)

(assert (=> b!7043805 (=> res!2875585 e!4234471)))

(assert (=> b!7043805 (= res!2875585 lt!2525910)))

(declare-fun lt!2525889 () (Set Context!12988))

(assert (=> b!7043805 (= lt!2525910 (matchZipper!3038 lt!2525889 (t!381795 s!7408)))))

(declare-fun lt!2525897 () Unit!161678)

(assert (=> b!7043805 (= lt!2525897 (lemmaZipperConcatMatchesSameAsBothZippers!1571 lt!2525889 lt!2525902 (t!381795 s!7408)))))

(declare-fun lt!2525880 () Unit!161678)

(assert (=> b!7043805 (= lt!2525880 (lemmaConcatPreservesForall!819 lt!2525921 (exprs!6994 ct2!306) lambda!417385))))

(declare-fun lt!2525911 () Unit!161678)

(assert (=> b!7043805 (= lt!2525911 (lemmaConcatPreservesForall!819 lt!2525921 (exprs!6994 ct2!306) lambda!417385))))

(assert (=> b!7043806 (= e!4234483 e!4234484)))

(declare-fun res!2875597 () Bool)

(assert (=> b!7043806 (=> res!2875597 e!4234484)))

(declare-fun derivationStepZipper!2954 ((Set Context!12988) C!35266) (Set Context!12988))

(assert (=> b!7043806 (= res!2875597 (not (= (derivationStepZipper!2954 lt!2525909 (h!74346 s!7408)) lt!2525906)))))

(declare-fun lambda!417386 () Int)

(declare-fun flatMap!2445 ((Set Context!12988) Int) (Set Context!12988))

(assert (=> b!7043806 (= (flatMap!2445 lt!2525909 lambda!417386) (derivationStepZipperUp!2108 lt!2525923 (h!74346 s!7408)))))

(declare-fun lt!2525915 () Unit!161678)

(declare-fun lemmaFlatMapOnSingletonSet!1959 ((Set Context!12988) Context!12988 Int) Unit!161678)

(assert (=> b!7043806 (= lt!2525915 (lemmaFlatMapOnSingletonSet!1959 lt!2525909 lt!2525923 lambda!417386))))

(assert (=> b!7043806 (= lt!2525906 (derivationStepZipperUp!2108 lt!2525923 (h!74346 s!7408)))))

(declare-fun lt!2525887 () Unit!161678)

(assert (=> b!7043806 (= lt!2525887 (lemmaConcatPreservesForall!819 (exprs!6994 lt!2525892) (exprs!6994 ct2!306) lambda!417385))))

(declare-fun b!7043807 () Bool)

(declare-fun res!2875582 () Bool)

(assert (=> b!7043807 (=> res!2875582 e!4234474)))

(assert (=> b!7043807 (= res!2875582 (not (set.member lt!2525879 lt!2525914)))))

(declare-fun b!7043808 () Bool)

(assert (=> b!7043808 (= e!4234476 (not (matchZipper!3038 lt!2525902 (t!381795 s!7408))))))

(declare-fun lt!2525919 () Unit!161678)

(assert (=> b!7043808 (= lt!2525919 (lemmaConcatPreservesForall!819 lt!2525921 (exprs!6994 ct2!306) lambda!417385))))

(declare-fun b!7043809 () Bool)

(declare-fun e!4234466 () Bool)

(assert (=> b!7043809 (= e!4234473 e!4234466)))

(declare-fun res!2875588 () Bool)

(assert (=> b!7043809 (=> res!2875588 e!4234466)))

(assert (=> b!7043809 (= res!2875588 (not lt!2525910))))

(declare-fun lt!2525894 () Unit!161678)

(assert (=> b!7043809 (= lt!2525894 (lemmaConcatPreservesForall!819 lt!2525921 (exprs!6994 ct2!306) lambda!417385))))

(declare-fun lt!2525882 () Unit!161678)

(assert (=> b!7043809 (= lt!2525882 (lemmaConcatPreservesForall!819 lt!2525921 (exprs!6994 ct2!306) lambda!417385))))

(declare-fun res!2875583 () Bool)

(assert (=> start!681664 (=> (not res!2875583) (not e!4234482))))

(assert (=> start!681664 (= res!2875583 (matchZipper!3038 lt!2525914 s!7408))))

(declare-fun appendTo!619 ((Set Context!12988) Context!12988) (Set Context!12988))

(assert (=> start!681664 (= lt!2525914 (appendTo!619 z1!570 ct2!306))))

(assert (=> start!681664 e!4234482))

(declare-fun condSetEmpty!49403 () Bool)

(assert (=> start!681664 (= condSetEmpty!49403 (= z1!570 (as set.empty (Set Context!12988))))))

(declare-fun setRes!49403 () Bool)

(assert (=> start!681664 setRes!49403))

(declare-fun e!4234481 () Bool)

(declare-fun inv!86605 (Context!12988) Bool)

(assert (=> start!681664 (and (inv!86605 ct2!306) e!4234481)))

(declare-fun e!4234478 () Bool)

(assert (=> start!681664 e!4234478))

(declare-fun b!7043810 () Bool)

(declare-fun res!2875600 () Bool)

(assert (=> b!7043810 (=> res!2875600 e!4234484)))

(declare-fun isEmpty!39626 (List!68023) Bool)

(assert (=> b!7043810 (= res!2875600 (isEmpty!39626 (exprs!6994 lt!2525892)))))

(declare-fun b!7043811 () Bool)

(declare-fun tp!1937711 () Bool)

(assert (=> b!7043811 (= e!4234481 tp!1937711)))

(declare-fun b!7043812 () Bool)

(assert (=> b!7043812 (= e!4234472 e!4234477)))

(declare-fun res!2875594 () Bool)

(assert (=> b!7043812 (=> res!2875594 e!4234477)))

(declare-fun lt!2525912 () (Set Context!12988))

(assert (=> b!7043812 (= res!2875594 (not (= lt!2525888 lt!2525912)))))

(assert (=> b!7043812 (= (flatMap!2445 lt!2525891 lambda!417386) (derivationStepZipperUp!2108 lt!2525892 (h!74346 s!7408)))))

(declare-fun lt!2525901 () Unit!161678)

(assert (=> b!7043812 (= lt!2525901 (lemmaFlatMapOnSingletonSet!1959 lt!2525891 lt!2525892 lambda!417386))))

(assert (=> b!7043812 (= lt!2525912 (derivationStepZipperUp!2108 lt!2525892 (h!74346 s!7408)))))

(assert (=> b!7043812 (= lt!2525888 (derivationStepZipper!2954 lt!2525891 (h!74346 s!7408)))))

(assert (=> b!7043812 (= lt!2525891 (set.insert lt!2525892 (as set.empty (Set Context!12988))))))

(declare-fun b!7043813 () Bool)

(declare-fun tp_is_empty!44221 () Bool)

(declare-fun tp!1937710 () Bool)

(assert (=> b!7043813 (= e!4234478 (and tp_is_empty!44221 tp!1937710))))

(declare-fun b!7043814 () Bool)

(assert (=> b!7043814 (= e!4234475 (not (matchZipper!3038 lt!2525918 (_1!37370 lt!2525920))))))

(declare-fun setIsEmpty!49403 () Bool)

(assert (=> setIsEmpty!49403 setRes!49403))

(declare-fun b!7043815 () Bool)

(assert (=> b!7043815 (= e!4234466 e!4234472)))

(declare-fun res!2875580 () Bool)

(assert (=> b!7043815 (=> res!2875580 e!4234472)))

(assert (=> b!7043815 (= res!2875580 (not (matchZipper!3038 lt!2525878 (_1!37370 lt!2525920))))))

(declare-datatypes ((Option!16899 0))(
  ( (None!16898) (Some!16898 (v!53188 tuple2!68134)) )
))
(declare-fun lt!2525908 () Option!16899)

(declare-fun get!23799 (Option!16899) tuple2!68134)

(assert (=> b!7043815 (= lt!2525920 (get!23799 lt!2525908))))

(declare-fun isDefined!13600 (Option!16899) Bool)

(assert (=> b!7043815 (isDefined!13600 lt!2525908)))

(declare-fun lt!2525907 () (Set Context!12988))

(declare-fun findConcatSeparationZippers!415 ((Set Context!12988) (Set Context!12988) List!68022 List!68022 List!68022) Option!16899)

(assert (=> b!7043815 (= lt!2525908 (findConcatSeparationZippers!415 lt!2525878 lt!2525907 Nil!67898 (t!381795 s!7408) (t!381795 s!7408)))))

(assert (=> b!7043815 (= lt!2525907 (set.insert ct2!306 (as set.empty (Set Context!12988))))))

(declare-fun lt!2525905 () Unit!161678)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!403 ((Set Context!12988) Context!12988 List!68022) Unit!161678)

(assert (=> b!7043815 (= lt!2525905 (lemmaConcatZipperMatchesStringThenFindConcatDefined!403 lt!2525878 ct2!306 (t!381795 s!7408)))))

(declare-fun lt!2525895 () Unit!161678)

(assert (=> b!7043815 (= lt!2525895 (lemmaConcatPreservesForall!819 lt!2525921 (exprs!6994 ct2!306) lambda!417385))))

(assert (=> b!7043815 (= lt!2525889 (appendTo!619 lt!2525878 ct2!306))))

(declare-fun derivationStepZipperDown!2162 (Regex!17498 Context!12988 C!35266) (Set Context!12988))

(assert (=> b!7043815 (= lt!2525878 (derivationStepZipperDown!2162 (h!74347 (exprs!6994 lt!2525892)) lt!2525916 (h!74346 s!7408)))))

(declare-fun lt!2525903 () Unit!161678)

(assert (=> b!7043815 (= lt!2525903 (lemmaConcatPreservesForall!819 lt!2525921 (exprs!6994 ct2!306) lambda!417385))))

(declare-fun lt!2525900 () Unit!161678)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!77 (Context!12988 Regex!17498 C!35266 Context!12988) Unit!161678)

(assert (=> b!7043815 (= lt!2525900 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!77 lt!2525916 (h!74347 (exprs!6994 lt!2525892)) (h!74346 s!7408) ct2!306))))

(declare-fun b!7043816 () Bool)

(assert (=> b!7043816 (= e!4234471 (matchZipper!3038 lt!2525902 (t!381795 s!7408)))))

(declare-fun b!7043817 () Bool)

(assert (=> b!7043817 (= e!4234468 lt!2525913)))

(declare-fun b!7043818 () Bool)

(declare-fun e!4234469 () Bool)

(assert (=> b!7043818 (= e!4234484 e!4234469)))

(declare-fun res!2875593 () Bool)

(assert (=> b!7043818 (=> res!2875593 e!4234469)))

(declare-fun nullable!7209 (Regex!17498) Bool)

(assert (=> b!7043818 (= res!2875593 (not (nullable!7209 (h!74347 (exprs!6994 lt!2525892)))))))

(assert (=> b!7043818 (= lt!2525916 (Context!12989 lt!2525921))))

(declare-fun tail!13612 (List!68023) List!68023)

(assert (=> b!7043818 (= lt!2525921 (tail!13612 (exprs!6994 lt!2525892)))))

(declare-fun setElem!49403 () Context!12988)

(declare-fun setNonEmpty!49403 () Bool)

(declare-fun tp!1937713 () Bool)

(assert (=> setNonEmpty!49403 (= setRes!49403 (and tp!1937713 (inv!86605 setElem!49403) e!4234470))))

(declare-fun setRest!49403 () (Set Context!12988))

(assert (=> setNonEmpty!49403 (= z1!570 (set.union (set.insert setElem!49403 (as set.empty (Set Context!12988))) setRest!49403))))

(declare-fun b!7043819 () Bool)

(declare-fun res!2875595 () Bool)

(assert (=> b!7043819 (=> res!2875595 e!4234472)))

(assert (=> b!7043819 (= res!2875595 (not (matchZipper!3038 lt!2525907 (_2!37370 lt!2525920))))))

(declare-fun b!7043820 () Bool)

(assert (=> b!7043820 (= e!4234469 e!4234479)))

(declare-fun res!2875592 () Bool)

(assert (=> b!7043820 (=> res!2875592 e!4234479)))

(assert (=> b!7043820 (= res!2875592 (not (= lt!2525906 lt!2525896)))))

(assert (=> b!7043820 (= lt!2525896 (set.union lt!2525889 lt!2525902))))

(declare-fun lt!2525890 () Context!12988)

(assert (=> b!7043820 (= lt!2525902 (derivationStepZipperUp!2108 lt!2525890 (h!74346 s!7408)))))

(assert (=> b!7043820 (= lt!2525889 (derivationStepZipperDown!2162 (h!74347 (exprs!6994 lt!2525892)) lt!2525890 (h!74346 s!7408)))))

(assert (=> b!7043820 (= lt!2525890 (Context!12989 (++!15572 lt!2525921 (exprs!6994 ct2!306))))))

(declare-fun lt!2525885 () Unit!161678)

(assert (=> b!7043820 (= lt!2525885 (lemmaConcatPreservesForall!819 lt!2525921 (exprs!6994 ct2!306) lambda!417385))))

(declare-fun lt!2525904 () Unit!161678)

(assert (=> b!7043820 (= lt!2525904 (lemmaConcatPreservesForall!819 lt!2525921 (exprs!6994 ct2!306) lambda!417385))))

(assert (= (and start!681664 res!2875583) b!7043798))

(assert (= (and b!7043798 res!2875584) b!7043800))

(assert (= (and b!7043800 (not res!2875596)) b!7043807))

(assert (= (and b!7043807 (not res!2875582)) b!7043804))

(assert (= (and b!7043804 (not res!2875590)) b!7043803))

(assert (= (and b!7043803 (not res!2875598)) b!7043806))

(assert (= (and b!7043806 (not res!2875597)) b!7043797))

(assert (= (and b!7043797 (not res!2875578)) b!7043810))

(assert (= (and b!7043810 (not res!2875600)) b!7043818))

(assert (= (and b!7043818 (not res!2875593)) b!7043820))

(assert (= (and b!7043820 (not res!2875592)) b!7043805))

(assert (= (and b!7043805 (not res!2875585)) b!7043816))

(assert (= (and b!7043805 res!2875589) b!7043808))

(assert (= (and b!7043805 (not res!2875577)) b!7043799))

(assert (= (and b!7043799 (not res!2875587)) b!7043802))

(assert (= (and b!7043802 (not res!2875581)) b!7043809))

(assert (= (and b!7043809 (not res!2875588)) b!7043815))

(assert (= (and b!7043815 (not res!2875580)) b!7043819))

(assert (= (and b!7043819 (not res!2875595)) b!7043795))

(assert (= (and b!7043795 (not res!2875599)) b!7043812))

(assert (= (and b!7043812 (not res!2875594)) b!7043801))

(assert (= (and b!7043801 (not res!2875579)) b!7043796))

(assert (= (and b!7043796 res!2875586) b!7043814))

(assert (= (and b!7043796 (not res!2875591)) b!7043817))

(assert (= (and start!681664 condSetEmpty!49403) setIsEmpty!49403))

(assert (= (and start!681664 (not condSetEmpty!49403)) setNonEmpty!49403))

(assert (= setNonEmpty!49403 b!7043794))

(assert (= start!681664 b!7043811))

(assert (= (and start!681664 (is-Cons!67898 s!7408)) b!7043813))

(declare-fun m!7756530 () Bool)

(assert (=> b!7043808 m!7756530))

(declare-fun m!7756532 () Bool)

(assert (=> b!7043808 m!7756532))

(declare-fun m!7756534 () Bool)

(assert (=> b!7043807 m!7756534))

(assert (=> b!7043815 m!7756532))

(declare-fun m!7756536 () Bool)

(assert (=> b!7043815 m!7756536))

(declare-fun m!7756538 () Bool)

(assert (=> b!7043815 m!7756538))

(declare-fun m!7756540 () Bool)

(assert (=> b!7043815 m!7756540))

(assert (=> b!7043815 m!7756532))

(declare-fun m!7756542 () Bool)

(assert (=> b!7043815 m!7756542))

(declare-fun m!7756544 () Bool)

(assert (=> b!7043815 m!7756544))

(declare-fun m!7756546 () Bool)

(assert (=> b!7043815 m!7756546))

(declare-fun m!7756548 () Bool)

(assert (=> b!7043815 m!7756548))

(declare-fun m!7756550 () Bool)

(assert (=> b!7043815 m!7756550))

(declare-fun m!7756552 () Bool)

(assert (=> b!7043815 m!7756552))

(declare-fun m!7756554 () Bool)

(assert (=> start!681664 m!7756554))

(declare-fun m!7756556 () Bool)

(assert (=> start!681664 m!7756556))

(declare-fun m!7756558 () Bool)

(assert (=> start!681664 m!7756558))

(declare-fun m!7756560 () Bool)

(assert (=> setNonEmpty!49403 m!7756560))

(declare-fun m!7756562 () Bool)

(assert (=> b!7043810 m!7756562))

(declare-fun m!7756564 () Bool)

(assert (=> b!7043795 m!7756564))

(assert (=> b!7043802 m!7756530))

(assert (=> b!7043802 m!7756532))

(declare-fun m!7756566 () Bool)

(assert (=> b!7043812 m!7756566))

(declare-fun m!7756568 () Bool)

(assert (=> b!7043812 m!7756568))

(declare-fun m!7756570 () Bool)

(assert (=> b!7043812 m!7756570))

(declare-fun m!7756572 () Bool)

(assert (=> b!7043812 m!7756572))

(declare-fun m!7756574 () Bool)

(assert (=> b!7043812 m!7756574))

(declare-fun m!7756576 () Bool)

(assert (=> b!7043814 m!7756576))

(assert (=> b!7043805 m!7756532))

(declare-fun m!7756578 () Bool)

(assert (=> b!7043805 m!7756578))

(declare-fun m!7756580 () Bool)

(assert (=> b!7043805 m!7756580))

(assert (=> b!7043805 m!7756532))

(assert (=> b!7043805 m!7756532))

(declare-fun m!7756582 () Bool)

(assert (=> b!7043805 m!7756582))

(declare-fun m!7756584 () Bool)

(assert (=> b!7043805 m!7756584))

(declare-fun m!7756586 () Bool)

(assert (=> b!7043796 m!7756586))

(declare-fun m!7756588 () Bool)

(assert (=> b!7043796 m!7756588))

(declare-fun m!7756590 () Bool)

(assert (=> b!7043796 m!7756590))

(declare-fun m!7756592 () Bool)

(assert (=> b!7043818 m!7756592))

(declare-fun m!7756594 () Bool)

(assert (=> b!7043818 m!7756594))

(declare-fun m!7756596 () Bool)

(assert (=> b!7043801 m!7756596))

(declare-fun m!7756598 () Bool)

(assert (=> b!7043819 m!7756598))

(assert (=> b!7043816 m!7756530))

(declare-fun m!7756600 () Bool)

(assert (=> b!7043804 m!7756600))

(declare-fun m!7756602 () Bool)

(assert (=> b!7043804 m!7756602))

(declare-fun m!7756604 () Bool)

(assert (=> b!7043804 m!7756604))

(declare-fun m!7756606 () Bool)

(assert (=> b!7043804 m!7756606))

(assert (=> b!7043809 m!7756532))

(assert (=> b!7043809 m!7756532))

(declare-fun m!7756608 () Bool)

(assert (=> b!7043800 m!7756608))

(declare-fun m!7756610 () Bool)

(assert (=> b!7043800 m!7756610))

(declare-fun m!7756612 () Bool)

(assert (=> b!7043800 m!7756612))

(declare-fun m!7756614 () Bool)

(assert (=> b!7043800 m!7756614))

(declare-fun m!7756616 () Bool)

(assert (=> b!7043800 m!7756616))

(declare-fun m!7756618 () Bool)

(assert (=> b!7043800 m!7756618))

(declare-fun m!7756620 () Bool)

(assert (=> b!7043820 m!7756620))

(assert (=> b!7043820 m!7756532))

(declare-fun m!7756622 () Bool)

(assert (=> b!7043820 m!7756622))

(assert (=> b!7043820 m!7756532))

(declare-fun m!7756624 () Bool)

(assert (=> b!7043820 m!7756624))

(declare-fun m!7756626 () Bool)

(assert (=> b!7043803 m!7756626))

(assert (=> b!7043803 m!7756604))

(declare-fun m!7756628 () Bool)

(assert (=> b!7043806 m!7756628))

(declare-fun m!7756630 () Bool)

(assert (=> b!7043806 m!7756630))

(declare-fun m!7756632 () Bool)

(assert (=> b!7043806 m!7756632))

(assert (=> b!7043806 m!7756604))

(declare-fun m!7756634 () Bool)

(assert (=> b!7043806 m!7756634))

(push 1)

(assert (not b!7043818))

(assert (not b!7043794))

(assert (not b!7043816))

(assert (not b!7043808))

(assert (not b!7043810))

(assert (not start!681664))

(assert (not b!7043800))

(assert (not b!7043819))

(assert (not b!7043811))

(assert (not b!7043802))

(assert (not b!7043814))

(assert tp_is_empty!44221)

(assert (not b!7043820))

(assert (not setNonEmpty!49403))

(assert (not b!7043795))

(assert (not b!7043815))

(assert (not b!7043813))

(assert (not b!7043805))

(assert (not b!7043801))

(assert (not b!7043809))

(assert (not b!7043804))

(assert (not b!7043812))

(assert (not b!7043803))

(assert (not b!7043806))

(assert (not b!7043796))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2199589 () Bool)

(declare-fun e!4234549 () Bool)

(assert (=> d!2199589 e!4234549))

(declare-fun res!2875678 () Bool)

(assert (=> d!2199589 (=> (not res!2875678) (not e!4234549))))

(declare-fun lt!2526069 () List!68023)

(declare-fun content!13597 (List!68023) (Set Regex!17498))

(assert (=> d!2199589 (= res!2875678 (= (content!13597 lt!2526069) (set.union (content!13597 (exprs!6994 lt!2525892)) (content!13597 (exprs!6994 ct2!306)))))))

(declare-fun e!4234550 () List!68023)

(assert (=> d!2199589 (= lt!2526069 e!4234550)))

(declare-fun c!1311374 () Bool)

(assert (=> d!2199589 (= c!1311374 (is-Nil!67899 (exprs!6994 lt!2525892)))))

(assert (=> d!2199589 (= (++!15572 (exprs!6994 lt!2525892) (exprs!6994 ct2!306)) lt!2526069)))

(declare-fun b!7043925 () Bool)

(assert (=> b!7043925 (= e!4234549 (or (not (= (exprs!6994 ct2!306) Nil!67899)) (= lt!2526069 (exprs!6994 lt!2525892))))))

(declare-fun b!7043924 () Bool)

(declare-fun res!2875679 () Bool)

(assert (=> b!7043924 (=> (not res!2875679) (not e!4234549))))

(declare-fun size!41104 (List!68023) Int)

(assert (=> b!7043924 (= res!2875679 (= (size!41104 lt!2526069) (+ (size!41104 (exprs!6994 lt!2525892)) (size!41104 (exprs!6994 ct2!306)))))))

(declare-fun b!7043922 () Bool)

(assert (=> b!7043922 (= e!4234550 (exprs!6994 ct2!306))))

(declare-fun b!7043923 () Bool)

(assert (=> b!7043923 (= e!4234550 (Cons!67899 (h!74347 (exprs!6994 lt!2525892)) (++!15572 (t!381796 (exprs!6994 lt!2525892)) (exprs!6994 ct2!306))))))

(assert (= (and d!2199589 c!1311374) b!7043922))

(assert (= (and d!2199589 (not c!1311374)) b!7043923))

(assert (= (and d!2199589 res!2875678) b!7043924))

(assert (= (and b!7043924 res!2875679) b!7043925))

(declare-fun m!7756742 () Bool)

(assert (=> d!2199589 m!7756742))

(declare-fun m!7756744 () Bool)

(assert (=> d!2199589 m!7756744))

(declare-fun m!7756746 () Bool)

(assert (=> d!2199589 m!7756746))

(declare-fun m!7756748 () Bool)

(assert (=> b!7043924 m!7756748))

(declare-fun m!7756750 () Bool)

(assert (=> b!7043924 m!7756750))

(declare-fun m!7756752 () Bool)

(assert (=> b!7043924 m!7756752))

(declare-fun m!7756754 () Bool)

(assert (=> b!7043923 m!7756754))

(assert (=> b!7043804 d!2199589))

(declare-fun d!2199591 () Bool)

(declare-fun forall!16426 (List!68023 Int) Bool)

(assert (=> d!2199591 (forall!16426 (++!15572 (exprs!6994 lt!2525892) (exprs!6994 ct2!306)) lambda!417385)))

(declare-fun lt!2526072 () Unit!161678)

(declare-fun choose!53504 (List!68023 List!68023 Int) Unit!161678)

(assert (=> d!2199591 (= lt!2526072 (choose!53504 (exprs!6994 lt!2525892) (exprs!6994 ct2!306) lambda!417385))))

(assert (=> d!2199591 (forall!16426 (exprs!6994 lt!2525892) lambda!417385)))

(assert (=> d!2199591 (= (lemmaConcatPreservesForall!819 (exprs!6994 lt!2525892) (exprs!6994 ct2!306) lambda!417385) lt!2526072)))

(declare-fun bs!1874092 () Bool)

(assert (= bs!1874092 d!2199591))

(assert (=> bs!1874092 m!7756602))

(assert (=> bs!1874092 m!7756602))

(declare-fun m!7756756 () Bool)

(assert (=> bs!1874092 m!7756756))

(declare-fun m!7756758 () Bool)

(assert (=> bs!1874092 m!7756758))

(declare-fun m!7756760 () Bool)

(assert (=> bs!1874092 m!7756760))

(assert (=> b!7043804 d!2199591))

(declare-fun d!2199593 () Bool)

(declare-fun e!4234553 () Bool)

(assert (=> d!2199593 e!4234553))

(declare-fun res!2875682 () Bool)

(assert (=> d!2199593 (=> (not res!2875682) (not e!4234553))))

(declare-fun lt!2526075 () Context!12988)

(declare-fun dynLambda!27477 (Int Context!12988) Context!12988)

(assert (=> d!2199593 (= res!2875682 (= lt!2525879 (dynLambda!27477 lambda!417384 lt!2526075)))))

(declare-fun choose!53505 ((Set Context!12988) Int Context!12988) Context!12988)

(assert (=> d!2199593 (= lt!2526075 (choose!53505 z1!570 lambda!417384 lt!2525879))))

(declare-fun map!15809 ((Set Context!12988) Int) (Set Context!12988))

(assert (=> d!2199593 (set.member lt!2525879 (map!15809 z1!570 lambda!417384))))

(assert (=> d!2199593 (= (mapPost2!339 z1!570 lambda!417384 lt!2525879) lt!2526075)))

(declare-fun b!7043929 () Bool)

(assert (=> b!7043929 (= e!4234553 (set.member lt!2526075 z1!570))))

(assert (= (and d!2199593 res!2875682) b!7043929))

(declare-fun b_lambda!267507 () Bool)

(assert (=> (not b_lambda!267507) (not d!2199593)))

(declare-fun m!7756762 () Bool)

(assert (=> d!2199593 m!7756762))

(declare-fun m!7756764 () Bool)

(assert (=> d!2199593 m!7756764))

(declare-fun m!7756766 () Bool)

(assert (=> d!2199593 m!7756766))

(declare-fun m!7756768 () Bool)

(assert (=> d!2199593 m!7756768))

(declare-fun m!7756770 () Bool)

(assert (=> b!7043929 m!7756770))

(assert (=> b!7043804 d!2199593))

(declare-fun e!4234556 () Bool)

(declare-fun d!2199595 () Bool)

(assert (=> d!2199595 (= (matchZipper!3038 (set.union lt!2525889 lt!2525902) (t!381795 s!7408)) e!4234556)))

(declare-fun res!2875685 () Bool)

(assert (=> d!2199595 (=> res!2875685 e!4234556)))

(assert (=> d!2199595 (= res!2875685 (matchZipper!3038 lt!2525889 (t!381795 s!7408)))))

(declare-fun lt!2526078 () Unit!161678)

(declare-fun choose!53506 ((Set Context!12988) (Set Context!12988) List!68022) Unit!161678)

(assert (=> d!2199595 (= lt!2526078 (choose!53506 lt!2525889 lt!2525902 (t!381795 s!7408)))))

(assert (=> d!2199595 (= (lemmaZipperConcatMatchesSameAsBothZippers!1571 lt!2525889 lt!2525902 (t!381795 s!7408)) lt!2526078)))

(declare-fun b!7043932 () Bool)

(assert (=> b!7043932 (= e!4234556 (matchZipper!3038 lt!2525902 (t!381795 s!7408)))))

(assert (= (and d!2199595 (not res!2875685)) b!7043932))

(declare-fun m!7756772 () Bool)

(assert (=> d!2199595 m!7756772))

(assert (=> d!2199595 m!7756582))

(declare-fun m!7756774 () Bool)

(assert (=> d!2199595 m!7756774))

(assert (=> b!7043932 m!7756530))

(assert (=> b!7043805 d!2199595))

(declare-fun d!2199597 () Bool)

(declare-fun c!1311377 () Bool)

(declare-fun isEmpty!39628 (List!68022) Bool)

(assert (=> d!2199597 (= c!1311377 (isEmpty!39628 (t!381795 s!7408)))))

(declare-fun e!4234559 () Bool)

(assert (=> d!2199597 (= (matchZipper!3038 lt!2525889 (t!381795 s!7408)) e!4234559)))

(declare-fun b!7043937 () Bool)

(declare-fun nullableZipper!2604 ((Set Context!12988)) Bool)

(assert (=> b!7043937 (= e!4234559 (nullableZipper!2604 lt!2525889))))

(declare-fun b!7043938 () Bool)

(declare-fun head!14297 (List!68022) C!35266)

(declare-fun tail!13614 (List!68022) List!68022)

(assert (=> b!7043938 (= e!4234559 (matchZipper!3038 (derivationStepZipper!2954 lt!2525889 (head!14297 (t!381795 s!7408))) (tail!13614 (t!381795 s!7408))))))

(assert (= (and d!2199597 c!1311377) b!7043937))

(assert (= (and d!2199597 (not c!1311377)) b!7043938))

(declare-fun m!7756776 () Bool)

(assert (=> d!2199597 m!7756776))

(declare-fun m!7756778 () Bool)

(assert (=> b!7043937 m!7756778))

(declare-fun m!7756780 () Bool)

(assert (=> b!7043938 m!7756780))

(assert (=> b!7043938 m!7756780))

(declare-fun m!7756782 () Bool)

(assert (=> b!7043938 m!7756782))

(declare-fun m!7756784 () Bool)

(assert (=> b!7043938 m!7756784))

(assert (=> b!7043938 m!7756782))

(assert (=> b!7043938 m!7756784))

(declare-fun m!7756786 () Bool)

(assert (=> b!7043938 m!7756786))

(assert (=> b!7043805 d!2199597))

(declare-fun d!2199599 () Bool)

(declare-fun c!1311378 () Bool)

(assert (=> d!2199599 (= c!1311378 (isEmpty!39628 (t!381795 s!7408)))))

(declare-fun e!4234560 () Bool)

(assert (=> d!2199599 (= (matchZipper!3038 lt!2525906 (t!381795 s!7408)) e!4234560)))

(declare-fun b!7043939 () Bool)

(assert (=> b!7043939 (= e!4234560 (nullableZipper!2604 lt!2525906))))

(declare-fun b!7043940 () Bool)

(assert (=> b!7043940 (= e!4234560 (matchZipper!3038 (derivationStepZipper!2954 lt!2525906 (head!14297 (t!381795 s!7408))) (tail!13614 (t!381795 s!7408))))))

(assert (= (and d!2199599 c!1311378) b!7043939))

(assert (= (and d!2199599 (not c!1311378)) b!7043940))

(assert (=> d!2199599 m!7756776))

(declare-fun m!7756788 () Bool)

(assert (=> b!7043939 m!7756788))

(assert (=> b!7043940 m!7756780))

(assert (=> b!7043940 m!7756780))

(declare-fun m!7756790 () Bool)

(assert (=> b!7043940 m!7756790))

(assert (=> b!7043940 m!7756784))

(assert (=> b!7043940 m!7756790))

(assert (=> b!7043940 m!7756784))

(declare-fun m!7756792 () Bool)

(assert (=> b!7043940 m!7756792))

(assert (=> b!7043805 d!2199599))

(declare-fun d!2199601 () Bool)

(declare-fun c!1311379 () Bool)

(assert (=> d!2199601 (= c!1311379 (isEmpty!39628 (t!381795 s!7408)))))

(declare-fun e!4234561 () Bool)

(assert (=> d!2199601 (= (matchZipper!3038 lt!2525896 (t!381795 s!7408)) e!4234561)))

(declare-fun b!7043941 () Bool)

(assert (=> b!7043941 (= e!4234561 (nullableZipper!2604 lt!2525896))))

(declare-fun b!7043942 () Bool)

(assert (=> b!7043942 (= e!4234561 (matchZipper!3038 (derivationStepZipper!2954 lt!2525896 (head!14297 (t!381795 s!7408))) (tail!13614 (t!381795 s!7408))))))

(assert (= (and d!2199601 c!1311379) b!7043941))

(assert (= (and d!2199601 (not c!1311379)) b!7043942))

(assert (=> d!2199601 m!7756776))

(declare-fun m!7756794 () Bool)

(assert (=> b!7043941 m!7756794))

(assert (=> b!7043942 m!7756780))

(assert (=> b!7043942 m!7756780))

(declare-fun m!7756796 () Bool)

(assert (=> b!7043942 m!7756796))

(assert (=> b!7043942 m!7756784))

(assert (=> b!7043942 m!7756796))

(assert (=> b!7043942 m!7756784))

(declare-fun m!7756798 () Bool)

(assert (=> b!7043942 m!7756798))

(assert (=> b!7043805 d!2199601))

(declare-fun d!2199603 () Bool)

(assert (=> d!2199603 (forall!16426 (++!15572 lt!2525921 (exprs!6994 ct2!306)) lambda!417385)))

(declare-fun lt!2526079 () Unit!161678)

(assert (=> d!2199603 (= lt!2526079 (choose!53504 lt!2525921 (exprs!6994 ct2!306) lambda!417385))))

(assert (=> d!2199603 (forall!16426 lt!2525921 lambda!417385)))

(assert (=> d!2199603 (= (lemmaConcatPreservesForall!819 lt!2525921 (exprs!6994 ct2!306) lambda!417385) lt!2526079)))

(declare-fun bs!1874093 () Bool)

(assert (= bs!1874093 d!2199603))

(assert (=> bs!1874093 m!7756622))

(assert (=> bs!1874093 m!7756622))

(declare-fun m!7756800 () Bool)

(assert (=> bs!1874093 m!7756800))

(declare-fun m!7756802 () Bool)

(assert (=> bs!1874093 m!7756802))

(declare-fun m!7756804 () Bool)

(assert (=> bs!1874093 m!7756804))

(assert (=> b!7043805 d!2199603))

(assert (=> b!7043803 d!2199591))

(declare-fun d!2199605 () Bool)

(declare-fun c!1311380 () Bool)

(assert (=> d!2199605 (= c!1311380 (isEmpty!39628 (_1!37370 lt!2525920)))))

(declare-fun e!4234562 () Bool)

(assert (=> d!2199605 (= (matchZipper!3038 lt!2525918 (_1!37370 lt!2525920)) e!4234562)))

(declare-fun b!7043943 () Bool)

(assert (=> b!7043943 (= e!4234562 (nullableZipper!2604 lt!2525918))))

(declare-fun b!7043944 () Bool)

(assert (=> b!7043944 (= e!4234562 (matchZipper!3038 (derivationStepZipper!2954 lt!2525918 (head!14297 (_1!37370 lt!2525920))) (tail!13614 (_1!37370 lt!2525920))))))

(assert (= (and d!2199605 c!1311380) b!7043943))

(assert (= (and d!2199605 (not c!1311380)) b!7043944))

(declare-fun m!7756806 () Bool)

(assert (=> d!2199605 m!7756806))

(declare-fun m!7756808 () Bool)

(assert (=> b!7043943 m!7756808))

(declare-fun m!7756810 () Bool)

(assert (=> b!7043944 m!7756810))

(assert (=> b!7043944 m!7756810))

(declare-fun m!7756812 () Bool)

(assert (=> b!7043944 m!7756812))

(declare-fun m!7756814 () Bool)

(assert (=> b!7043944 m!7756814))

(assert (=> b!7043944 m!7756812))

(assert (=> b!7043944 m!7756814))

(declare-fun m!7756816 () Bool)

(assert (=> b!7043944 m!7756816))

(assert (=> b!7043814 d!2199605))

(declare-fun d!2199607 () Bool)

(declare-fun choose!53507 ((Set Context!12988) Int) (Set Context!12988))

(assert (=> d!2199607 (= (flatMap!2445 lt!2525891 lambda!417386) (choose!53507 lt!2525891 lambda!417386))))

(declare-fun bs!1874094 () Bool)

(assert (= bs!1874094 d!2199607))

(declare-fun m!7756818 () Bool)

(assert (=> bs!1874094 m!7756818))

(assert (=> b!7043812 d!2199607))

(declare-fun b!7043955 () Bool)

(declare-fun e!4234570 () Bool)

(assert (=> b!7043955 (= e!4234570 (nullable!7209 (h!74347 (exprs!6994 lt!2525892))))))

(declare-fun d!2199609 () Bool)

(declare-fun c!1311385 () Bool)

(assert (=> d!2199609 (= c!1311385 e!4234570)))

(declare-fun res!2875688 () Bool)

(assert (=> d!2199609 (=> (not res!2875688) (not e!4234570))))

(assert (=> d!2199609 (= res!2875688 (is-Cons!67899 (exprs!6994 lt!2525892)))))

(declare-fun e!4234571 () (Set Context!12988))

(assert (=> d!2199609 (= (derivationStepZipperUp!2108 lt!2525892 (h!74346 s!7408)) e!4234571)))

(declare-fun bm!639861 () Bool)

(declare-fun call!639866 () (Set Context!12988))

(assert (=> bm!639861 (= call!639866 (derivationStepZipperDown!2162 (h!74347 (exprs!6994 lt!2525892)) (Context!12989 (t!381796 (exprs!6994 lt!2525892))) (h!74346 s!7408)))))

(declare-fun b!7043956 () Bool)

(assert (=> b!7043956 (= e!4234571 (set.union call!639866 (derivationStepZipperUp!2108 (Context!12989 (t!381796 (exprs!6994 lt!2525892))) (h!74346 s!7408))))))

(declare-fun b!7043957 () Bool)

(declare-fun e!4234569 () (Set Context!12988))

(assert (=> b!7043957 (= e!4234571 e!4234569)))

(declare-fun c!1311386 () Bool)

(assert (=> b!7043957 (= c!1311386 (is-Cons!67899 (exprs!6994 lt!2525892)))))

(declare-fun b!7043958 () Bool)

(assert (=> b!7043958 (= e!4234569 call!639866)))

(declare-fun b!7043959 () Bool)

(assert (=> b!7043959 (= e!4234569 (as set.empty (Set Context!12988)))))

(assert (= (and d!2199609 res!2875688) b!7043955))

(assert (= (and d!2199609 c!1311385) b!7043956))

(assert (= (and d!2199609 (not c!1311385)) b!7043957))

(assert (= (and b!7043957 c!1311386) b!7043958))

(assert (= (and b!7043957 (not c!1311386)) b!7043959))

(assert (= (or b!7043956 b!7043958) bm!639861))

(assert (=> b!7043955 m!7756592))

(declare-fun m!7756820 () Bool)

(assert (=> bm!639861 m!7756820))

(declare-fun m!7756822 () Bool)

(assert (=> b!7043956 m!7756822))

(assert (=> b!7043812 d!2199609))

(declare-fun d!2199611 () Bool)

(declare-fun dynLambda!27478 (Int Context!12988) (Set Context!12988))

(assert (=> d!2199611 (= (flatMap!2445 lt!2525891 lambda!417386) (dynLambda!27478 lambda!417386 lt!2525892))))

(declare-fun lt!2526082 () Unit!161678)

(declare-fun choose!53508 ((Set Context!12988) Context!12988 Int) Unit!161678)

(assert (=> d!2199611 (= lt!2526082 (choose!53508 lt!2525891 lt!2525892 lambda!417386))))

(assert (=> d!2199611 (= lt!2525891 (set.insert lt!2525892 (as set.empty (Set Context!12988))))))

(assert (=> d!2199611 (= (lemmaFlatMapOnSingletonSet!1959 lt!2525891 lt!2525892 lambda!417386) lt!2526082)))

(declare-fun b_lambda!267509 () Bool)

(assert (=> (not b_lambda!267509) (not d!2199611)))

(declare-fun bs!1874095 () Bool)

(assert (= bs!1874095 d!2199611))

(assert (=> bs!1874095 m!7756572))

(declare-fun m!7756824 () Bool)

(assert (=> bs!1874095 m!7756824))

(declare-fun m!7756826 () Bool)

(assert (=> bs!1874095 m!7756826))

(assert (=> bs!1874095 m!7756566))

(assert (=> b!7043812 d!2199611))

(declare-fun bs!1874096 () Bool)

(declare-fun d!2199613 () Bool)

(assert (= bs!1874096 (and d!2199613 b!7043806)))

(declare-fun lambda!417433 () Int)

(assert (=> bs!1874096 (= lambda!417433 lambda!417386)))

(assert (=> d!2199613 true))

(assert (=> d!2199613 (= (derivationStepZipper!2954 lt!2525891 (h!74346 s!7408)) (flatMap!2445 lt!2525891 lambda!417433))))

(declare-fun bs!1874097 () Bool)

(assert (= bs!1874097 d!2199613))

(declare-fun m!7756828 () Bool)

(assert (=> bs!1874097 m!7756828))

(assert (=> b!7043812 d!2199613))

(declare-fun d!2199615 () Bool)

(declare-fun c!1311389 () Bool)

(assert (=> d!2199615 (= c!1311389 (isEmpty!39628 (t!381795 s!7408)))))

(declare-fun e!4234572 () Bool)

(assert (=> d!2199615 (= (matchZipper!3038 lt!2525902 (t!381795 s!7408)) e!4234572)))

(declare-fun b!7043962 () Bool)

(assert (=> b!7043962 (= e!4234572 (nullableZipper!2604 lt!2525902))))

(declare-fun b!7043963 () Bool)

(assert (=> b!7043963 (= e!4234572 (matchZipper!3038 (derivationStepZipper!2954 lt!2525902 (head!14297 (t!381795 s!7408))) (tail!13614 (t!381795 s!7408))))))

(assert (= (and d!2199615 c!1311389) b!7043962))

(assert (= (and d!2199615 (not c!1311389)) b!7043963))

(assert (=> d!2199615 m!7756776))

(declare-fun m!7756830 () Bool)

(assert (=> b!7043962 m!7756830))

(assert (=> b!7043963 m!7756780))

(assert (=> b!7043963 m!7756780))

(declare-fun m!7756832 () Bool)

(assert (=> b!7043963 m!7756832))

(assert (=> b!7043963 m!7756784))

(assert (=> b!7043963 m!7756832))

(assert (=> b!7043963 m!7756784))

(declare-fun m!7756834 () Bool)

(assert (=> b!7043963 m!7756834))

(assert (=> b!7043802 d!2199615))

(assert (=> b!7043802 d!2199603))

(declare-fun d!2199617 () Bool)

(declare-fun e!4234575 () Bool)

(assert (=> d!2199617 e!4234575))

(declare-fun res!2875691 () Bool)

(assert (=> d!2199617 (=> (not res!2875691) (not e!4234575))))

(declare-fun lt!2526085 () List!68024)

(declare-fun noDuplicate!2650 (List!68024) Bool)

(assert (=> d!2199617 (= res!2875691 (noDuplicate!2650 lt!2526085))))

(declare-fun choose!53509 ((Set Context!12988)) List!68024)

(assert (=> d!2199617 (= lt!2526085 (choose!53509 lt!2525914))))

(assert (=> d!2199617 (= (toList!10841 lt!2525914) lt!2526085)))

(declare-fun b!7043966 () Bool)

(declare-fun content!13598 (List!68024) (Set Context!12988))

(assert (=> b!7043966 (= e!4234575 (= (content!13598 lt!2526085) lt!2525914))))

(assert (= (and d!2199617 res!2875691) b!7043966))

(declare-fun m!7756836 () Bool)

(assert (=> d!2199617 m!7756836))

(declare-fun m!7756838 () Bool)

(assert (=> d!2199617 m!7756838))

(declare-fun m!7756840 () Bool)

(assert (=> b!7043966 m!7756840))

(assert (=> b!7043800 d!2199617))

(declare-fun d!2199619 () Bool)

(declare-fun c!1311390 () Bool)

(assert (=> d!2199619 (= c!1311390 (isEmpty!39628 s!7408))))

(declare-fun e!4234576 () Bool)

(assert (=> d!2199619 (= (matchZipper!3038 lt!2525883 s!7408) e!4234576)))

(declare-fun b!7043967 () Bool)

(assert (=> b!7043967 (= e!4234576 (nullableZipper!2604 lt!2525883))))

(declare-fun b!7043968 () Bool)

(assert (=> b!7043968 (= e!4234576 (matchZipper!3038 (derivationStepZipper!2954 lt!2525883 (head!14297 s!7408)) (tail!13614 s!7408)))))

(assert (= (and d!2199619 c!1311390) b!7043967))

(assert (= (and d!2199619 (not c!1311390)) b!7043968))

(declare-fun m!7756842 () Bool)

(assert (=> d!2199619 m!7756842))

(declare-fun m!7756844 () Bool)

(assert (=> b!7043967 m!7756844))

(declare-fun m!7756846 () Bool)

(assert (=> b!7043968 m!7756846))

(assert (=> b!7043968 m!7756846))

(declare-fun m!7756848 () Bool)

(assert (=> b!7043968 m!7756848))

(declare-fun m!7756850 () Bool)

(assert (=> b!7043968 m!7756850))

(assert (=> b!7043968 m!7756848))

(assert (=> b!7043968 m!7756850))

(declare-fun m!7756852 () Bool)

(assert (=> b!7043968 m!7756852))

(assert (=> b!7043800 d!2199619))

(declare-fun d!2199621 () Bool)

(declare-fun e!4234579 () Bool)

(assert (=> d!2199621 e!4234579))

(declare-fun res!2875694 () Bool)

(assert (=> d!2199621 (=> (not res!2875694) (not e!4234579))))

(declare-fun lt!2526088 () Context!12988)

(declare-fun dynLambda!27479 (Int Context!12988) Bool)

(assert (=> d!2199621 (= res!2875694 (dynLambda!27479 lambda!417383 lt!2526088))))

(declare-fun getWitness!1529 (List!68024 Int) Context!12988)

(assert (=> d!2199621 (= lt!2526088 (getWitness!1529 (toList!10841 lt!2525914) lambda!417383))))

(declare-fun exists!3450 ((Set Context!12988) Int) Bool)

(assert (=> d!2199621 (exists!3450 lt!2525914 lambda!417383)))

(assert (=> d!2199621 (= (getWitness!1527 lt!2525914 lambda!417383) lt!2526088)))

(declare-fun b!7043971 () Bool)

(assert (=> b!7043971 (= e!4234579 (set.member lt!2526088 lt!2525914))))

(assert (= (and d!2199621 res!2875694) b!7043971))

(declare-fun b_lambda!267511 () Bool)

(assert (=> (not b_lambda!267511) (not d!2199621)))

(declare-fun m!7756854 () Bool)

(assert (=> d!2199621 m!7756854))

(assert (=> d!2199621 m!7756612))

(assert (=> d!2199621 m!7756612))

(declare-fun m!7756856 () Bool)

(assert (=> d!2199621 m!7756856))

(declare-fun m!7756858 () Bool)

(assert (=> d!2199621 m!7756858))

(declare-fun m!7756860 () Bool)

(assert (=> b!7043971 m!7756860))

(assert (=> b!7043800 d!2199621))

(declare-fun bs!1874098 () Bool)

(declare-fun d!2199623 () Bool)

(assert (= bs!1874098 (and d!2199623 b!7043800)))

(declare-fun lambda!417436 () Int)

(assert (=> bs!1874098 (not (= lambda!417436 lambda!417383))))

(assert (=> d!2199623 true))

(declare-fun order!28225 () Int)

(declare-fun dynLambda!27480 (Int Int) Int)

(assert (=> d!2199623 (< (dynLambda!27480 order!28225 lambda!417383) (dynLambda!27480 order!28225 lambda!417436))))

(declare-fun forall!16427 (List!68024 Int) Bool)

(assert (=> d!2199623 (= (exists!3448 lt!2525922 lambda!417383) (not (forall!16427 lt!2525922 lambda!417436)))))

(declare-fun bs!1874099 () Bool)

(assert (= bs!1874099 d!2199623))

(declare-fun m!7756862 () Bool)

(assert (=> bs!1874099 m!7756862))

(assert (=> b!7043800 d!2199623))

(declare-fun bs!1874100 () Bool)

(declare-fun d!2199625 () Bool)

(assert (= bs!1874100 (and d!2199625 b!7043800)))

(declare-fun lambda!417439 () Int)

(assert (=> bs!1874100 (= lambda!417439 lambda!417383)))

(declare-fun bs!1874101 () Bool)

(assert (= bs!1874101 (and d!2199625 d!2199623)))

(assert (=> bs!1874101 (not (= lambda!417439 lambda!417436))))

(assert (=> d!2199625 true))

(assert (=> d!2199625 (exists!3448 lt!2525922 lambda!417439)))

(declare-fun lt!2526091 () Unit!161678)

(declare-fun choose!53510 (List!68024 List!68022) Unit!161678)

(assert (=> d!2199625 (= lt!2526091 (choose!53510 lt!2525922 s!7408))))

(assert (=> d!2199625 (matchZipper!3038 (content!13598 lt!2525922) s!7408)))

(assert (=> d!2199625 (= (lemmaZipperMatchesExistsMatchingContext!437 lt!2525922 s!7408) lt!2526091)))

(declare-fun bs!1874102 () Bool)

(assert (= bs!1874102 d!2199625))

(declare-fun m!7756864 () Bool)

(assert (=> bs!1874102 m!7756864))

(declare-fun m!7756866 () Bool)

(assert (=> bs!1874102 m!7756866))

(declare-fun m!7756868 () Bool)

(assert (=> bs!1874102 m!7756868))

(assert (=> bs!1874102 m!7756868))

(declare-fun m!7756870 () Bool)

(assert (=> bs!1874102 m!7756870))

(assert (=> b!7043800 d!2199625))

(assert (=> b!7043820 d!2199603))

(declare-fun b!7043974 () Bool)

(declare-fun e!4234581 () Bool)

(assert (=> b!7043974 (= e!4234581 (nullable!7209 (h!74347 (exprs!6994 lt!2525890))))))

(declare-fun d!2199627 () Bool)

(declare-fun c!1311393 () Bool)

(assert (=> d!2199627 (= c!1311393 e!4234581)))

(declare-fun res!2875695 () Bool)

(assert (=> d!2199627 (=> (not res!2875695) (not e!4234581))))

(assert (=> d!2199627 (= res!2875695 (is-Cons!67899 (exprs!6994 lt!2525890)))))

(declare-fun e!4234582 () (Set Context!12988))

(assert (=> d!2199627 (= (derivationStepZipperUp!2108 lt!2525890 (h!74346 s!7408)) e!4234582)))

(declare-fun bm!639862 () Bool)

(declare-fun call!639867 () (Set Context!12988))

(assert (=> bm!639862 (= call!639867 (derivationStepZipperDown!2162 (h!74347 (exprs!6994 lt!2525890)) (Context!12989 (t!381796 (exprs!6994 lt!2525890))) (h!74346 s!7408)))))

(declare-fun b!7043975 () Bool)

(assert (=> b!7043975 (= e!4234582 (set.union call!639867 (derivationStepZipperUp!2108 (Context!12989 (t!381796 (exprs!6994 lt!2525890))) (h!74346 s!7408))))))

(declare-fun b!7043976 () Bool)

(declare-fun e!4234580 () (Set Context!12988))

(assert (=> b!7043976 (= e!4234582 e!4234580)))

(declare-fun c!1311394 () Bool)

(assert (=> b!7043976 (= c!1311394 (is-Cons!67899 (exprs!6994 lt!2525890)))))

(declare-fun b!7043977 () Bool)

(assert (=> b!7043977 (= e!4234580 call!639867)))

(declare-fun b!7043978 () Bool)

(assert (=> b!7043978 (= e!4234580 (as set.empty (Set Context!12988)))))

(assert (= (and d!2199627 res!2875695) b!7043974))

(assert (= (and d!2199627 c!1311393) b!7043975))

(assert (= (and d!2199627 (not c!1311393)) b!7043976))

(assert (= (and b!7043976 c!1311394) b!7043977))

(assert (= (and b!7043976 (not c!1311394)) b!7043978))

(assert (= (or b!7043975 b!7043977) bm!639862))

(declare-fun m!7756872 () Bool)

(assert (=> b!7043974 m!7756872))

(declare-fun m!7756874 () Bool)

(assert (=> bm!639862 m!7756874))

(declare-fun m!7756876 () Bool)

(assert (=> b!7043975 m!7756876))

(assert (=> b!7043820 d!2199627))

(declare-fun d!2199629 () Bool)

(declare-fun e!4234583 () Bool)

(assert (=> d!2199629 e!4234583))

(declare-fun res!2875696 () Bool)

(assert (=> d!2199629 (=> (not res!2875696) (not e!4234583))))

(declare-fun lt!2526092 () List!68023)

(assert (=> d!2199629 (= res!2875696 (= (content!13597 lt!2526092) (set.union (content!13597 lt!2525921) (content!13597 (exprs!6994 ct2!306)))))))

(declare-fun e!4234584 () List!68023)

(assert (=> d!2199629 (= lt!2526092 e!4234584)))

(declare-fun c!1311395 () Bool)

(assert (=> d!2199629 (= c!1311395 (is-Nil!67899 lt!2525921))))

(assert (=> d!2199629 (= (++!15572 lt!2525921 (exprs!6994 ct2!306)) lt!2526092)))

(declare-fun b!7043982 () Bool)

(assert (=> b!7043982 (= e!4234583 (or (not (= (exprs!6994 ct2!306) Nil!67899)) (= lt!2526092 lt!2525921)))))

(declare-fun b!7043981 () Bool)

(declare-fun res!2875697 () Bool)

(assert (=> b!7043981 (=> (not res!2875697) (not e!4234583))))

(assert (=> b!7043981 (= res!2875697 (= (size!41104 lt!2526092) (+ (size!41104 lt!2525921) (size!41104 (exprs!6994 ct2!306)))))))

(declare-fun b!7043979 () Bool)

(assert (=> b!7043979 (= e!4234584 (exprs!6994 ct2!306))))

(declare-fun b!7043980 () Bool)

(assert (=> b!7043980 (= e!4234584 (Cons!67899 (h!74347 lt!2525921) (++!15572 (t!381796 lt!2525921) (exprs!6994 ct2!306))))))

(assert (= (and d!2199629 c!1311395) b!7043979))

(assert (= (and d!2199629 (not c!1311395)) b!7043980))

(assert (= (and d!2199629 res!2875696) b!7043981))

(assert (= (and b!7043981 res!2875697) b!7043982))

(declare-fun m!7756878 () Bool)

(assert (=> d!2199629 m!7756878))

(declare-fun m!7756880 () Bool)

(assert (=> d!2199629 m!7756880))

(assert (=> d!2199629 m!7756746))

(declare-fun m!7756882 () Bool)

(assert (=> b!7043981 m!7756882))

(declare-fun m!7756884 () Bool)

(assert (=> b!7043981 m!7756884))

(assert (=> b!7043981 m!7756752))

(declare-fun m!7756886 () Bool)

(assert (=> b!7043980 m!7756886))

(assert (=> b!7043820 d!2199629))

(declare-fun d!2199631 () Bool)

(declare-fun c!1311410 () Bool)

(assert (=> d!2199631 (= c!1311410 (and (is-ElementMatch!17498 (h!74347 (exprs!6994 lt!2525892))) (= (c!1311360 (h!74347 (exprs!6994 lt!2525892))) (h!74346 s!7408))))))

(declare-fun e!4234598 () (Set Context!12988))

(assert (=> d!2199631 (= (derivationStepZipperDown!2162 (h!74347 (exprs!6994 lt!2525892)) lt!2525890 (h!74346 s!7408)) e!4234598)))

(declare-fun b!7044005 () Bool)

(declare-fun e!4234599 () (Set Context!12988))

(declare-fun call!639882 () (Set Context!12988))

(assert (=> b!7044005 (= e!4234599 call!639882)))

(declare-fun bm!639875 () Bool)

(declare-fun call!639885 () (Set Context!12988))

(declare-fun call!639884 () (Set Context!12988))

(assert (=> bm!639875 (= call!639885 call!639884)))

(declare-fun b!7044006 () Bool)

(declare-fun e!4234600 () (Set Context!12988))

(declare-fun call!639883 () (Set Context!12988))

(assert (=> b!7044006 (= e!4234600 (set.union call!639884 call!639883))))

(declare-fun b!7044007 () Bool)

(declare-fun e!4234597 () (Set Context!12988))

(assert (=> b!7044007 (= e!4234597 (as set.empty (Set Context!12988)))))

(declare-fun b!7044008 () Bool)

(declare-fun e!4234602 () (Set Context!12988))

(assert (=> b!7044008 (= e!4234602 e!4234599)))

(declare-fun c!1311408 () Bool)

(assert (=> b!7044008 (= c!1311408 (is-Concat!26343 (h!74347 (exprs!6994 lt!2525892))))))

(declare-fun b!7044009 () Bool)

(assert (=> b!7044009 (= e!4234598 (set.insert lt!2525890 (as set.empty (Set Context!12988))))))

(declare-fun b!7044010 () Bool)

(declare-fun c!1311406 () Bool)

(declare-fun e!4234601 () Bool)

(assert (=> b!7044010 (= c!1311406 e!4234601)))

(declare-fun res!2875700 () Bool)

(assert (=> b!7044010 (=> (not res!2875700) (not e!4234601))))

(assert (=> b!7044010 (= res!2875700 (is-Concat!26343 (h!74347 (exprs!6994 lt!2525892))))))

(assert (=> b!7044010 (= e!4234600 e!4234602)))

(declare-fun b!7044011 () Bool)

(declare-fun c!1311409 () Bool)

(assert (=> b!7044011 (= c!1311409 (is-Star!17498 (h!74347 (exprs!6994 lt!2525892))))))

(assert (=> b!7044011 (= e!4234599 e!4234597)))

(declare-fun b!7044012 () Bool)

(assert (=> b!7044012 (= e!4234598 e!4234600)))

(declare-fun c!1311407 () Bool)

(assert (=> b!7044012 (= c!1311407 (is-Union!17498 (h!74347 (exprs!6994 lt!2525892))))))

(declare-fun bm!639876 () Bool)

(declare-fun call!639880 () List!68023)

(assert (=> bm!639876 (= call!639883 (derivationStepZipperDown!2162 (ite c!1311407 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892)))) (ite c!1311407 lt!2525890 (Context!12989 call!639880)) (h!74346 s!7408)))))

(declare-fun bm!639877 () Bool)

(assert (=> bm!639877 (= call!639882 call!639885)))

(declare-fun b!7044013 () Bool)

(assert (=> b!7044013 (= e!4234602 (set.union call!639883 call!639885))))

(declare-fun bm!639878 () Bool)

(declare-fun $colon$colon!2597 (List!68023 Regex!17498) List!68023)

(assert (=> bm!639878 (= call!639880 ($colon$colon!2597 (exprs!6994 lt!2525890) (ite (or c!1311406 c!1311408) (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (h!74347 (exprs!6994 lt!2525892)))))))

(declare-fun b!7044014 () Bool)

(assert (=> b!7044014 (= e!4234597 call!639882)))

(declare-fun call!639881 () List!68023)

(declare-fun bm!639879 () Bool)

(assert (=> bm!639879 (= call!639884 (derivationStepZipperDown!2162 (ite c!1311407 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311406 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311408 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892)))))) (ite (or c!1311407 c!1311406) lt!2525890 (Context!12989 call!639881)) (h!74346 s!7408)))))

(declare-fun bm!639880 () Bool)

(assert (=> bm!639880 (= call!639881 call!639880)))

(declare-fun b!7044015 () Bool)

(assert (=> b!7044015 (= e!4234601 (nullable!7209 (regOne!35508 (h!74347 (exprs!6994 lt!2525892)))))))

(assert (= (and d!2199631 c!1311410) b!7044009))

(assert (= (and d!2199631 (not c!1311410)) b!7044012))

(assert (= (and b!7044012 c!1311407) b!7044006))

(assert (= (and b!7044012 (not c!1311407)) b!7044010))

(assert (= (and b!7044010 res!2875700) b!7044015))

(assert (= (and b!7044010 c!1311406) b!7044013))

(assert (= (and b!7044010 (not c!1311406)) b!7044008))

(assert (= (and b!7044008 c!1311408) b!7044005))

(assert (= (and b!7044008 (not c!1311408)) b!7044011))

(assert (= (and b!7044011 c!1311409) b!7044014))

(assert (= (and b!7044011 (not c!1311409)) b!7044007))

(assert (= (or b!7044005 b!7044014) bm!639880))

(assert (= (or b!7044005 b!7044014) bm!639877))

(assert (= (or b!7044013 bm!639877) bm!639875))

(assert (= (or b!7044013 bm!639880) bm!639878))

(assert (= (or b!7044006 bm!639875) bm!639879))

(assert (= (or b!7044006 b!7044013) bm!639876))

(declare-fun m!7756888 () Bool)

(assert (=> b!7044015 m!7756888))

(declare-fun m!7756890 () Bool)

(assert (=> bm!639878 m!7756890))

(declare-fun m!7756892 () Bool)

(assert (=> b!7044009 m!7756892))

(declare-fun m!7756894 () Bool)

(assert (=> bm!639879 m!7756894))

(declare-fun m!7756896 () Bool)

(assert (=> bm!639876 m!7756896))

(assert (=> b!7043820 d!2199631))

(declare-fun b!7044016 () Bool)

(declare-fun e!4234604 () Bool)

(assert (=> b!7044016 (= e!4234604 (nullable!7209 (h!74347 (exprs!6994 lt!2525916))))))

(declare-fun d!2199633 () Bool)

(declare-fun c!1311411 () Bool)

(assert (=> d!2199633 (= c!1311411 e!4234604)))

(declare-fun res!2875701 () Bool)

(assert (=> d!2199633 (=> (not res!2875701) (not e!4234604))))

(assert (=> d!2199633 (= res!2875701 (is-Cons!67899 (exprs!6994 lt!2525916)))))

(declare-fun e!4234605 () (Set Context!12988))

(assert (=> d!2199633 (= (derivationStepZipperUp!2108 lt!2525916 (h!74346 s!7408)) e!4234605)))

(declare-fun bm!639881 () Bool)

(declare-fun call!639886 () (Set Context!12988))

(assert (=> bm!639881 (= call!639886 (derivationStepZipperDown!2162 (h!74347 (exprs!6994 lt!2525916)) (Context!12989 (t!381796 (exprs!6994 lt!2525916))) (h!74346 s!7408)))))

(declare-fun b!7044017 () Bool)

(assert (=> b!7044017 (= e!4234605 (set.union call!639886 (derivationStepZipperUp!2108 (Context!12989 (t!381796 (exprs!6994 lt!2525916))) (h!74346 s!7408))))))

(declare-fun b!7044018 () Bool)

(declare-fun e!4234603 () (Set Context!12988))

(assert (=> b!7044018 (= e!4234605 e!4234603)))

(declare-fun c!1311412 () Bool)

(assert (=> b!7044018 (= c!1311412 (is-Cons!67899 (exprs!6994 lt!2525916)))))

(declare-fun b!7044019 () Bool)

(assert (=> b!7044019 (= e!4234603 call!639886)))

(declare-fun b!7044020 () Bool)

(assert (=> b!7044020 (= e!4234603 (as set.empty (Set Context!12988)))))

(assert (= (and d!2199633 res!2875701) b!7044016))

(assert (= (and d!2199633 c!1311411) b!7044017))

(assert (= (and d!2199633 (not c!1311411)) b!7044018))

(assert (= (and b!7044018 c!1311412) b!7044019))

(assert (= (and b!7044018 (not c!1311412)) b!7044020))

(assert (= (or b!7044017 b!7044019) bm!639881))

(declare-fun m!7756898 () Bool)

(assert (=> b!7044016 m!7756898))

(declare-fun m!7756900 () Bool)

(assert (=> bm!639881 m!7756900))

(declare-fun m!7756902 () Bool)

(assert (=> b!7044017 m!7756902))

(assert (=> b!7043801 d!2199633))

(declare-fun bs!1874103 () Bool)

(declare-fun d!2199635 () Bool)

(assert (= bs!1874103 (and d!2199635 b!7043804)))

(declare-fun lambda!417442 () Int)

(assert (=> bs!1874103 (= lambda!417442 lambda!417385)))

(assert (=> d!2199635 (= (inv!86605 setElem!49403) (forall!16426 (exprs!6994 setElem!49403) lambda!417442))))

(declare-fun bs!1874104 () Bool)

(assert (= bs!1874104 d!2199635))

(declare-fun m!7756904 () Bool)

(assert (=> bs!1874104 m!7756904))

(assert (=> setNonEmpty!49403 d!2199635))

(declare-fun d!2199637 () Bool)

(assert (=> d!2199637 (= (isEmpty!39626 (exprs!6994 lt!2525892)) (is-Nil!67899 (exprs!6994 lt!2525892)))))

(assert (=> b!7043810 d!2199637))

(declare-fun d!2199639 () Bool)

(declare-fun c!1311413 () Bool)

(assert (=> d!2199639 (= c!1311413 (isEmpty!39628 (_2!37370 lt!2525920)))))

(declare-fun e!4234606 () Bool)

(assert (=> d!2199639 (= (matchZipper!3038 lt!2525907 (_2!37370 lt!2525920)) e!4234606)))

(declare-fun b!7044021 () Bool)

(assert (=> b!7044021 (= e!4234606 (nullableZipper!2604 lt!2525907))))

(declare-fun b!7044022 () Bool)

(assert (=> b!7044022 (= e!4234606 (matchZipper!3038 (derivationStepZipper!2954 lt!2525907 (head!14297 (_2!37370 lt!2525920))) (tail!13614 (_2!37370 lt!2525920))))))

(assert (= (and d!2199639 c!1311413) b!7044021))

(assert (= (and d!2199639 (not c!1311413)) b!7044022))

(declare-fun m!7756906 () Bool)

(assert (=> d!2199639 m!7756906))

(declare-fun m!7756908 () Bool)

(assert (=> b!7044021 m!7756908))

(declare-fun m!7756910 () Bool)

(assert (=> b!7044022 m!7756910))

(assert (=> b!7044022 m!7756910))

(declare-fun m!7756912 () Bool)

(assert (=> b!7044022 m!7756912))

(declare-fun m!7756914 () Bool)

(assert (=> b!7044022 m!7756914))

(assert (=> b!7044022 m!7756912))

(assert (=> b!7044022 m!7756914))

(declare-fun m!7756916 () Bool)

(assert (=> b!7044022 m!7756916))

(assert (=> b!7043819 d!2199639))

(assert (=> b!7043808 d!2199615))

(assert (=> b!7043808 d!2199603))

(declare-fun d!2199641 () Bool)

(declare-fun c!1311414 () Bool)

(assert (=> d!2199641 (= c!1311414 (isEmpty!39628 s!7408))))

(declare-fun e!4234607 () Bool)

(assert (=> d!2199641 (= (matchZipper!3038 lt!2525914 s!7408) e!4234607)))

(declare-fun b!7044023 () Bool)

(assert (=> b!7044023 (= e!4234607 (nullableZipper!2604 lt!2525914))))

(declare-fun b!7044024 () Bool)

(assert (=> b!7044024 (= e!4234607 (matchZipper!3038 (derivationStepZipper!2954 lt!2525914 (head!14297 s!7408)) (tail!13614 s!7408)))))

(assert (= (and d!2199641 c!1311414) b!7044023))

(assert (= (and d!2199641 (not c!1311414)) b!7044024))

(assert (=> d!2199641 m!7756842))

(declare-fun m!7756918 () Bool)

(assert (=> b!7044023 m!7756918))

(assert (=> b!7044024 m!7756846))

(assert (=> b!7044024 m!7756846))

(declare-fun m!7756920 () Bool)

(assert (=> b!7044024 m!7756920))

(assert (=> b!7044024 m!7756850))

(assert (=> b!7044024 m!7756920))

(assert (=> b!7044024 m!7756850))

(declare-fun m!7756922 () Bool)

(assert (=> b!7044024 m!7756922))

(assert (=> start!681664 d!2199641))

(declare-fun bs!1874105 () Bool)

(declare-fun d!2199643 () Bool)

(assert (= bs!1874105 (and d!2199643 b!7043804)))

(declare-fun lambda!417447 () Int)

(assert (=> bs!1874105 (= lambda!417447 lambda!417384)))

(assert (=> d!2199643 true))

(assert (=> d!2199643 (= (appendTo!619 z1!570 ct2!306) (map!15809 z1!570 lambda!417447))))

(declare-fun bs!1874106 () Bool)

(assert (= bs!1874106 d!2199643))

(declare-fun m!7756924 () Bool)

(assert (=> bs!1874106 m!7756924))

(assert (=> start!681664 d!2199643))

(declare-fun bs!1874107 () Bool)

(declare-fun d!2199645 () Bool)

(assert (= bs!1874107 (and d!2199645 b!7043804)))

(declare-fun lambda!417448 () Int)

(assert (=> bs!1874107 (= lambda!417448 lambda!417385)))

(declare-fun bs!1874108 () Bool)

(assert (= bs!1874108 (and d!2199645 d!2199635)))

(assert (=> bs!1874108 (= lambda!417448 lambda!417442)))

(assert (=> d!2199645 (= (inv!86605 ct2!306) (forall!16426 (exprs!6994 ct2!306) lambda!417448))))

(declare-fun bs!1874109 () Bool)

(assert (= bs!1874109 d!2199645))

(declare-fun m!7756926 () Bool)

(assert (=> bs!1874109 m!7756926))

(assert (=> start!681664 d!2199645))

(declare-fun d!2199647 () Bool)

(declare-fun nullableFct!2749 (Regex!17498) Bool)

(assert (=> d!2199647 (= (nullable!7209 (h!74347 (exprs!6994 lt!2525892))) (nullableFct!2749 (h!74347 (exprs!6994 lt!2525892))))))

(declare-fun bs!1874110 () Bool)

(assert (= bs!1874110 d!2199647))

(declare-fun m!7756928 () Bool)

(assert (=> bs!1874110 m!7756928))

(assert (=> b!7043818 d!2199647))

(declare-fun d!2199649 () Bool)

(assert (=> d!2199649 (= (tail!13612 (exprs!6994 lt!2525892)) (t!381796 (exprs!6994 lt!2525892)))))

(assert (=> b!7043818 d!2199649))

(assert (=> b!7043809 d!2199603))

(declare-fun d!2199651 () Bool)

(declare-fun c!1311416 () Bool)

(assert (=> d!2199651 (= c!1311416 (isEmpty!39628 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920))))))

(declare-fun e!4234608 () Bool)

(assert (=> d!2199651 (= (matchZipper!3038 lt!2525891 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920))) e!4234608)))

(declare-fun b!7044025 () Bool)

(assert (=> b!7044025 (= e!4234608 (nullableZipper!2604 lt!2525891))))

(declare-fun b!7044026 () Bool)

(assert (=> b!7044026 (= e!4234608 (matchZipper!3038 (derivationStepZipper!2954 lt!2525891 (head!14297 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920)))) (tail!13614 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920)))))))

(assert (= (and d!2199651 c!1311416) b!7044025))

(assert (= (and d!2199651 (not c!1311416)) b!7044026))

(declare-fun m!7756930 () Bool)

(assert (=> d!2199651 m!7756930))

(declare-fun m!7756932 () Bool)

(assert (=> b!7044025 m!7756932))

(declare-fun m!7756934 () Bool)

(assert (=> b!7044026 m!7756934))

(assert (=> b!7044026 m!7756934))

(declare-fun m!7756936 () Bool)

(assert (=> b!7044026 m!7756936))

(declare-fun m!7756938 () Bool)

(assert (=> b!7044026 m!7756938))

(assert (=> b!7044026 m!7756936))

(assert (=> b!7044026 m!7756938))

(declare-fun m!7756940 () Bool)

(assert (=> b!7044026 m!7756940))

(assert (=> b!7043796 d!2199651))

(declare-fun d!2199653 () Bool)

(declare-fun c!1311417 () Bool)

(assert (=> d!2199653 (= c!1311417 (isEmpty!39628 (_1!37370 lt!2525920)))))

(declare-fun e!4234609 () Bool)

(assert (=> d!2199653 (= (matchZipper!3038 lt!2525884 (_1!37370 lt!2525920)) e!4234609)))

(declare-fun b!7044027 () Bool)

(assert (=> b!7044027 (= e!4234609 (nullableZipper!2604 lt!2525884))))

(declare-fun b!7044028 () Bool)

(assert (=> b!7044028 (= e!4234609 (matchZipper!3038 (derivationStepZipper!2954 lt!2525884 (head!14297 (_1!37370 lt!2525920))) (tail!13614 (_1!37370 lt!2525920))))))

(assert (= (and d!2199653 c!1311417) b!7044027))

(assert (= (and d!2199653 (not c!1311417)) b!7044028))

(assert (=> d!2199653 m!7756806))

(declare-fun m!7756942 () Bool)

(assert (=> b!7044027 m!7756942))

(assert (=> b!7044028 m!7756810))

(assert (=> b!7044028 m!7756810))

(declare-fun m!7756944 () Bool)

(assert (=> b!7044028 m!7756944))

(assert (=> b!7044028 m!7756814))

(assert (=> b!7044028 m!7756944))

(assert (=> b!7044028 m!7756814))

(declare-fun m!7756946 () Bool)

(assert (=> b!7044028 m!7756946))

(assert (=> b!7043796 d!2199653))

(declare-fun d!2199655 () Bool)

(declare-fun e!4234610 () Bool)

(assert (=> d!2199655 (= (matchZipper!3038 (set.union lt!2525878 lt!2525918) (_1!37370 lt!2525920)) e!4234610)))

(declare-fun res!2875702 () Bool)

(assert (=> d!2199655 (=> res!2875702 e!4234610)))

(assert (=> d!2199655 (= res!2875702 (matchZipper!3038 lt!2525878 (_1!37370 lt!2525920)))))

(declare-fun lt!2526095 () Unit!161678)

(assert (=> d!2199655 (= lt!2526095 (choose!53506 lt!2525878 lt!2525918 (_1!37370 lt!2525920)))))

(assert (=> d!2199655 (= (lemmaZipperConcatMatchesSameAsBothZippers!1571 lt!2525878 lt!2525918 (_1!37370 lt!2525920)) lt!2526095)))

(declare-fun b!7044029 () Bool)

(assert (=> b!7044029 (= e!4234610 (matchZipper!3038 lt!2525918 (_1!37370 lt!2525920)))))

(assert (= (and d!2199655 (not res!2875702)) b!7044029))

(declare-fun m!7756948 () Bool)

(assert (=> d!2199655 m!7756948))

(assert (=> d!2199655 m!7756550))

(declare-fun m!7756950 () Bool)

(assert (=> d!2199655 m!7756950))

(assert (=> b!7044029 m!7756576))

(assert (=> b!7043796 d!2199655))

(declare-fun bs!1874111 () Bool)

(declare-fun d!2199657 () Bool)

(assert (= bs!1874111 (and d!2199657 b!7043804)))

(declare-fun lambda!417449 () Int)

(assert (=> bs!1874111 (= lambda!417449 lambda!417384)))

(declare-fun bs!1874112 () Bool)

(assert (= bs!1874112 (and d!2199657 d!2199643)))

(assert (=> bs!1874112 (= lambda!417449 lambda!417447)))

(assert (=> d!2199657 true))

(assert (=> d!2199657 (= (appendTo!619 lt!2525878 ct2!306) (map!15809 lt!2525878 lambda!417449))))

(declare-fun bs!1874113 () Bool)

(assert (= bs!1874113 d!2199657))

(declare-fun m!7756952 () Bool)

(assert (=> bs!1874113 m!7756952))

(assert (=> b!7043815 d!2199657))

(declare-fun d!2199659 () Bool)

(declare-fun isEmpty!39629 (Option!16899) Bool)

(assert (=> d!2199659 (= (isDefined!13600 lt!2525908) (not (isEmpty!39629 lt!2525908)))))

(declare-fun bs!1874114 () Bool)

(assert (= bs!1874114 d!2199659))

(declare-fun m!7756954 () Bool)

(assert (=> bs!1874114 m!7756954))

(assert (=> b!7043815 d!2199659))

(declare-fun bs!1874115 () Bool)

(declare-fun d!2199661 () Bool)

(assert (= bs!1874115 (and d!2199661 b!7043804)))

(declare-fun lambda!417452 () Int)

(assert (=> bs!1874115 (= lambda!417452 lambda!417385)))

(declare-fun bs!1874116 () Bool)

(assert (= bs!1874116 (and d!2199661 d!2199635)))

(assert (=> bs!1874116 (= lambda!417452 lambda!417442)))

(declare-fun bs!1874117 () Bool)

(assert (= bs!1874117 (and d!2199661 d!2199645)))

(assert (=> bs!1874117 (= lambda!417452 lambda!417448)))

(assert (=> d!2199661 (= (derivationStepZipperDown!2162 (h!74347 (exprs!6994 lt!2525892)) (Context!12989 (++!15572 (exprs!6994 lt!2525916) (exprs!6994 ct2!306))) (h!74346 s!7408)) (appendTo!619 (derivationStepZipperDown!2162 (h!74347 (exprs!6994 lt!2525892)) lt!2525916 (h!74346 s!7408)) ct2!306))))

(declare-fun lt!2526101 () Unit!161678)

(assert (=> d!2199661 (= lt!2526101 (lemmaConcatPreservesForall!819 (exprs!6994 lt!2525916) (exprs!6994 ct2!306) lambda!417452))))

(declare-fun lt!2526100 () Unit!161678)

(declare-fun choose!53511 (Context!12988 Regex!17498 C!35266 Context!12988) Unit!161678)

(assert (=> d!2199661 (= lt!2526100 (choose!53511 lt!2525916 (h!74347 (exprs!6994 lt!2525892)) (h!74346 s!7408) ct2!306))))

(declare-fun validRegex!8942 (Regex!17498) Bool)

(assert (=> d!2199661 (validRegex!8942 (h!74347 (exprs!6994 lt!2525892)))))

(assert (=> d!2199661 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!77 lt!2525916 (h!74347 (exprs!6994 lt!2525892)) (h!74346 s!7408) ct2!306) lt!2526100)))

(declare-fun bs!1874118 () Bool)

(assert (= bs!1874118 d!2199661))

(declare-fun m!7756956 () Bool)

(assert (=> bs!1874118 m!7756956))

(declare-fun m!7756958 () Bool)

(assert (=> bs!1874118 m!7756958))

(declare-fun m!7756960 () Bool)

(assert (=> bs!1874118 m!7756960))

(declare-fun m!7756962 () Bool)

(assert (=> bs!1874118 m!7756962))

(assert (=> bs!1874118 m!7756540))

(declare-fun m!7756964 () Bool)

(assert (=> bs!1874118 m!7756964))

(assert (=> bs!1874118 m!7756540))

(declare-fun m!7756966 () Bool)

(assert (=> bs!1874118 m!7756966))

(assert (=> b!7043815 d!2199661))

(declare-fun d!2199663 () Bool)

(declare-fun c!1311419 () Bool)

(assert (=> d!2199663 (= c!1311419 (isEmpty!39628 (_1!37370 lt!2525920)))))

(declare-fun e!4234611 () Bool)

(assert (=> d!2199663 (= (matchZipper!3038 lt!2525878 (_1!37370 lt!2525920)) e!4234611)))

(declare-fun b!7044030 () Bool)

(assert (=> b!7044030 (= e!4234611 (nullableZipper!2604 lt!2525878))))

(declare-fun b!7044031 () Bool)

(assert (=> b!7044031 (= e!4234611 (matchZipper!3038 (derivationStepZipper!2954 lt!2525878 (head!14297 (_1!37370 lt!2525920))) (tail!13614 (_1!37370 lt!2525920))))))

(assert (= (and d!2199663 c!1311419) b!7044030))

(assert (= (and d!2199663 (not c!1311419)) b!7044031))

(assert (=> d!2199663 m!7756806))

(declare-fun m!7756968 () Bool)

(assert (=> b!7044030 m!7756968))

(assert (=> b!7044031 m!7756810))

(assert (=> b!7044031 m!7756810))

(declare-fun m!7756970 () Bool)

(assert (=> b!7044031 m!7756970))

(assert (=> b!7044031 m!7756814))

(assert (=> b!7044031 m!7756970))

(assert (=> b!7044031 m!7756814))

(declare-fun m!7756972 () Bool)

(assert (=> b!7044031 m!7756972))

(assert (=> b!7043815 d!2199663))

(declare-fun d!2199665 () Bool)

(assert (=> d!2199665 (isDefined!13600 (findConcatSeparationZippers!415 lt!2525878 (set.insert ct2!306 (as set.empty (Set Context!12988))) Nil!67898 (t!381795 s!7408) (t!381795 s!7408)))))

(declare-fun lt!2526104 () Unit!161678)

(declare-fun choose!53512 ((Set Context!12988) Context!12988 List!68022) Unit!161678)

(assert (=> d!2199665 (= lt!2526104 (choose!53512 lt!2525878 ct2!306 (t!381795 s!7408)))))

(assert (=> d!2199665 (matchZipper!3038 (appendTo!619 lt!2525878 ct2!306) (t!381795 s!7408))))

(assert (=> d!2199665 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!403 lt!2525878 ct2!306 (t!381795 s!7408)) lt!2526104)))

(declare-fun bs!1874119 () Bool)

(assert (= bs!1874119 d!2199665))

(declare-fun m!7756974 () Bool)

(assert (=> bs!1874119 m!7756974))

(assert (=> bs!1874119 m!7756552))

(declare-fun m!7756976 () Bool)

(assert (=> bs!1874119 m!7756976))

(declare-fun m!7756978 () Bool)

(assert (=> bs!1874119 m!7756978))

(assert (=> bs!1874119 m!7756538))

(assert (=> bs!1874119 m!7756552))

(declare-fun m!7756980 () Bool)

(assert (=> bs!1874119 m!7756980))

(assert (=> bs!1874119 m!7756538))

(assert (=> bs!1874119 m!7756976))

(assert (=> b!7043815 d!2199665))

(declare-fun d!2199667 () Bool)

(assert (=> d!2199667 (= (get!23799 lt!2525908) (v!53188 lt!2525908))))

(assert (=> b!7043815 d!2199667))

(assert (=> b!7043815 d!2199603))

(declare-fun b!7044050 () Bool)

(declare-fun e!4234626 () Option!16899)

(assert (=> b!7044050 (= e!4234626 (Some!16898 (tuple2!68135 Nil!67898 (t!381795 s!7408))))))

(declare-fun b!7044051 () Bool)

(declare-fun res!2875714 () Bool)

(declare-fun e!4234624 () Bool)

(assert (=> b!7044051 (=> (not res!2875714) (not e!4234624))))

(declare-fun lt!2526112 () Option!16899)

(assert (=> b!7044051 (= res!2875714 (matchZipper!3038 lt!2525907 (_2!37370 (get!23799 lt!2526112))))))

(declare-fun b!7044052 () Bool)

(declare-fun e!4234622 () Option!16899)

(assert (=> b!7044052 (= e!4234626 e!4234622)))

(declare-fun c!1311425 () Bool)

(assert (=> b!7044052 (= c!1311425 (is-Nil!67898 (t!381795 s!7408)))))

(declare-fun d!2199669 () Bool)

(declare-fun e!4234625 () Bool)

(assert (=> d!2199669 e!4234625))

(declare-fun res!2875717 () Bool)

(assert (=> d!2199669 (=> res!2875717 e!4234625)))

(assert (=> d!2199669 (= res!2875717 e!4234624)))

(declare-fun res!2875715 () Bool)

(assert (=> d!2199669 (=> (not res!2875715) (not e!4234624))))

(assert (=> d!2199669 (= res!2875715 (isDefined!13600 lt!2526112))))

(assert (=> d!2199669 (= lt!2526112 e!4234626)))

(declare-fun c!1311424 () Bool)

(declare-fun e!4234623 () Bool)

(assert (=> d!2199669 (= c!1311424 e!4234623)))

(declare-fun res!2875716 () Bool)

(assert (=> d!2199669 (=> (not res!2875716) (not e!4234623))))

(assert (=> d!2199669 (= res!2875716 (matchZipper!3038 lt!2525878 Nil!67898))))

(assert (=> d!2199669 (= (++!15571 Nil!67898 (t!381795 s!7408)) (t!381795 s!7408))))

(assert (=> d!2199669 (= (findConcatSeparationZippers!415 lt!2525878 lt!2525907 Nil!67898 (t!381795 s!7408) (t!381795 s!7408)) lt!2526112)))

(declare-fun b!7044053 () Bool)

(declare-fun lt!2526113 () Unit!161678)

(declare-fun lt!2526111 () Unit!161678)

(assert (=> b!7044053 (= lt!2526113 lt!2526111)))

(assert (=> b!7044053 (= (++!15571 (++!15571 Nil!67898 (Cons!67898 (h!74346 (t!381795 s!7408)) Nil!67898)) (t!381795 (t!381795 s!7408))) (t!381795 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2944 (List!68022 C!35266 List!68022 List!68022) Unit!161678)

(assert (=> b!7044053 (= lt!2526111 (lemmaMoveElementToOtherListKeepsConcatEq!2944 Nil!67898 (h!74346 (t!381795 s!7408)) (t!381795 (t!381795 s!7408)) (t!381795 s!7408)))))

(assert (=> b!7044053 (= e!4234622 (findConcatSeparationZippers!415 lt!2525878 lt!2525907 (++!15571 Nil!67898 (Cons!67898 (h!74346 (t!381795 s!7408)) Nil!67898)) (t!381795 (t!381795 s!7408)) (t!381795 s!7408)))))

(declare-fun b!7044054 () Bool)

(assert (=> b!7044054 (= e!4234622 None!16898)))

(declare-fun b!7044055 () Bool)

(assert (=> b!7044055 (= e!4234624 (= (++!15571 (_1!37370 (get!23799 lt!2526112)) (_2!37370 (get!23799 lt!2526112))) (t!381795 s!7408)))))

(declare-fun b!7044056 () Bool)

(assert (=> b!7044056 (= e!4234623 (matchZipper!3038 lt!2525907 (t!381795 s!7408)))))

(declare-fun b!7044057 () Bool)

(assert (=> b!7044057 (= e!4234625 (not (isDefined!13600 lt!2526112)))))

(declare-fun b!7044058 () Bool)

(declare-fun res!2875718 () Bool)

(assert (=> b!7044058 (=> (not res!2875718) (not e!4234624))))

(assert (=> b!7044058 (= res!2875718 (matchZipper!3038 lt!2525878 (_1!37370 (get!23799 lt!2526112))))))

(assert (= (and d!2199669 res!2875716) b!7044056))

(assert (= (and d!2199669 c!1311424) b!7044050))

(assert (= (and d!2199669 (not c!1311424)) b!7044052))

(assert (= (and b!7044052 c!1311425) b!7044054))

(assert (= (and b!7044052 (not c!1311425)) b!7044053))

(assert (= (and d!2199669 res!2875715) b!7044058))

(assert (= (and b!7044058 res!2875718) b!7044051))

(assert (= (and b!7044051 res!2875714) b!7044055))

(assert (= (and d!2199669 (not res!2875717)) b!7044057))

(declare-fun m!7756982 () Bool)

(assert (=> b!7044058 m!7756982))

(declare-fun m!7756984 () Bool)

(assert (=> b!7044058 m!7756984))

(declare-fun m!7756986 () Bool)

(assert (=> b!7044056 m!7756986))

(assert (=> b!7044051 m!7756982))

(declare-fun m!7756988 () Bool)

(assert (=> b!7044051 m!7756988))

(declare-fun m!7756990 () Bool)

(assert (=> b!7044053 m!7756990))

(assert (=> b!7044053 m!7756990))

(declare-fun m!7756992 () Bool)

(assert (=> b!7044053 m!7756992))

(declare-fun m!7756994 () Bool)

(assert (=> b!7044053 m!7756994))

(assert (=> b!7044053 m!7756990))

(declare-fun m!7756996 () Bool)

(assert (=> b!7044053 m!7756996))

(assert (=> b!7044055 m!7756982))

(declare-fun m!7756998 () Bool)

(assert (=> b!7044055 m!7756998))

(declare-fun m!7757000 () Bool)

(assert (=> b!7044057 m!7757000))

(assert (=> d!2199669 m!7757000))

(declare-fun m!7757002 () Bool)

(assert (=> d!2199669 m!7757002))

(declare-fun m!7757004 () Bool)

(assert (=> d!2199669 m!7757004))

(assert (=> b!7043815 d!2199669))

(declare-fun d!2199671 () Bool)

(declare-fun c!1311430 () Bool)

(assert (=> d!2199671 (= c!1311430 (and (is-ElementMatch!17498 (h!74347 (exprs!6994 lt!2525892))) (= (c!1311360 (h!74347 (exprs!6994 lt!2525892))) (h!74346 s!7408))))))

(declare-fun e!4234628 () (Set Context!12988))

(assert (=> d!2199671 (= (derivationStepZipperDown!2162 (h!74347 (exprs!6994 lt!2525892)) lt!2525916 (h!74346 s!7408)) e!4234628)))

(declare-fun b!7044059 () Bool)

(declare-fun e!4234629 () (Set Context!12988))

(declare-fun call!639889 () (Set Context!12988))

(assert (=> b!7044059 (= e!4234629 call!639889)))

(declare-fun bm!639882 () Bool)

(declare-fun call!639892 () (Set Context!12988))

(declare-fun call!639891 () (Set Context!12988))

(assert (=> bm!639882 (= call!639892 call!639891)))

(declare-fun b!7044060 () Bool)

(declare-fun e!4234630 () (Set Context!12988))

(declare-fun call!639890 () (Set Context!12988))

(assert (=> b!7044060 (= e!4234630 (set.union call!639891 call!639890))))

(declare-fun b!7044061 () Bool)

(declare-fun e!4234627 () (Set Context!12988))

(assert (=> b!7044061 (= e!4234627 (as set.empty (Set Context!12988)))))

(declare-fun b!7044062 () Bool)

(declare-fun e!4234632 () (Set Context!12988))

(assert (=> b!7044062 (= e!4234632 e!4234629)))

(declare-fun c!1311428 () Bool)

(assert (=> b!7044062 (= c!1311428 (is-Concat!26343 (h!74347 (exprs!6994 lt!2525892))))))

(declare-fun b!7044063 () Bool)

(assert (=> b!7044063 (= e!4234628 (set.insert lt!2525916 (as set.empty (Set Context!12988))))))

(declare-fun b!7044064 () Bool)

(declare-fun c!1311426 () Bool)

(declare-fun e!4234631 () Bool)

(assert (=> b!7044064 (= c!1311426 e!4234631)))

(declare-fun res!2875719 () Bool)

(assert (=> b!7044064 (=> (not res!2875719) (not e!4234631))))

(assert (=> b!7044064 (= res!2875719 (is-Concat!26343 (h!74347 (exprs!6994 lt!2525892))))))

(assert (=> b!7044064 (= e!4234630 e!4234632)))

(declare-fun b!7044065 () Bool)

(declare-fun c!1311429 () Bool)

(assert (=> b!7044065 (= c!1311429 (is-Star!17498 (h!74347 (exprs!6994 lt!2525892))))))

(assert (=> b!7044065 (= e!4234629 e!4234627)))

(declare-fun b!7044066 () Bool)

(assert (=> b!7044066 (= e!4234628 e!4234630)))

(declare-fun c!1311427 () Bool)

(assert (=> b!7044066 (= c!1311427 (is-Union!17498 (h!74347 (exprs!6994 lt!2525892))))))

(declare-fun bm!639883 () Bool)

(declare-fun call!639887 () List!68023)

(assert (=> bm!639883 (= call!639890 (derivationStepZipperDown!2162 (ite c!1311427 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892)))) (ite c!1311427 lt!2525916 (Context!12989 call!639887)) (h!74346 s!7408)))))

(declare-fun bm!639884 () Bool)

(assert (=> bm!639884 (= call!639889 call!639892)))

(declare-fun b!7044067 () Bool)

(assert (=> b!7044067 (= e!4234632 (set.union call!639890 call!639892))))

(declare-fun bm!639885 () Bool)

(assert (=> bm!639885 (= call!639887 ($colon$colon!2597 (exprs!6994 lt!2525916) (ite (or c!1311426 c!1311428) (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (h!74347 (exprs!6994 lt!2525892)))))))

(declare-fun b!7044068 () Bool)

(assert (=> b!7044068 (= e!4234627 call!639889)))

(declare-fun bm!639886 () Bool)

(declare-fun call!639888 () List!68023)

(assert (=> bm!639886 (= call!639891 (derivationStepZipperDown!2162 (ite c!1311427 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311426 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311428 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892)))))) (ite (or c!1311427 c!1311426) lt!2525916 (Context!12989 call!639888)) (h!74346 s!7408)))))

(declare-fun bm!639887 () Bool)

(assert (=> bm!639887 (= call!639888 call!639887)))

(declare-fun b!7044069 () Bool)

(assert (=> b!7044069 (= e!4234631 (nullable!7209 (regOne!35508 (h!74347 (exprs!6994 lt!2525892)))))))

(assert (= (and d!2199671 c!1311430) b!7044063))

(assert (= (and d!2199671 (not c!1311430)) b!7044066))

(assert (= (and b!7044066 c!1311427) b!7044060))

(assert (= (and b!7044066 (not c!1311427)) b!7044064))

(assert (= (and b!7044064 res!2875719) b!7044069))

(assert (= (and b!7044064 c!1311426) b!7044067))

(assert (= (and b!7044064 (not c!1311426)) b!7044062))

(assert (= (and b!7044062 c!1311428) b!7044059))

(assert (= (and b!7044062 (not c!1311428)) b!7044065))

(assert (= (and b!7044065 c!1311429) b!7044068))

(assert (= (and b!7044065 (not c!1311429)) b!7044061))

(assert (= (or b!7044059 b!7044068) bm!639887))

(assert (= (or b!7044059 b!7044068) bm!639884))

(assert (= (or b!7044067 bm!639884) bm!639882))

(assert (= (or b!7044067 bm!639887) bm!639885))

(assert (= (or b!7044060 bm!639882) bm!639886))

(assert (= (or b!7044060 b!7044067) bm!639883))

(assert (=> b!7044069 m!7756888))

(declare-fun m!7757006 () Bool)

(assert (=> bm!639885 m!7757006))

(declare-fun m!7757008 () Bool)

(assert (=> b!7044063 m!7757008))

(declare-fun m!7757010 () Bool)

(assert (=> bm!639886 m!7757010))

(declare-fun m!7757012 () Bool)

(assert (=> bm!639883 m!7757012))

(assert (=> b!7043815 d!2199671))

(declare-fun b!7044080 () Bool)

(declare-fun res!2875725 () Bool)

(declare-fun e!4234637 () Bool)

(assert (=> b!7044080 (=> (not res!2875725) (not e!4234637))))

(declare-fun lt!2526116 () List!68022)

(declare-fun size!41105 (List!68022) Int)

(assert (=> b!7044080 (= res!2875725 (= (size!41105 lt!2526116) (+ (size!41105 (_1!37370 lt!2525920)) (size!41105 (_2!37370 lt!2525920)))))))

(declare-fun b!7044081 () Bool)

(assert (=> b!7044081 (= e!4234637 (or (not (= (_2!37370 lt!2525920) Nil!67898)) (= lt!2526116 (_1!37370 lt!2525920))))))

(declare-fun b!7044078 () Bool)

(declare-fun e!4234638 () List!68022)

(assert (=> b!7044078 (= e!4234638 (_2!37370 lt!2525920))))

(declare-fun b!7044079 () Bool)

(assert (=> b!7044079 (= e!4234638 (Cons!67898 (h!74346 (_1!37370 lt!2525920)) (++!15571 (t!381795 (_1!37370 lt!2525920)) (_2!37370 lt!2525920))))))

(declare-fun d!2199673 () Bool)

(assert (=> d!2199673 e!4234637))

(declare-fun res!2875724 () Bool)

(assert (=> d!2199673 (=> (not res!2875724) (not e!4234637))))

(declare-fun content!13599 (List!68022) (Set C!35266))

(assert (=> d!2199673 (= res!2875724 (= (content!13599 lt!2526116) (set.union (content!13599 (_1!37370 lt!2525920)) (content!13599 (_2!37370 lt!2525920)))))))

(assert (=> d!2199673 (= lt!2526116 e!4234638)))

(declare-fun c!1311433 () Bool)

(assert (=> d!2199673 (= c!1311433 (is-Nil!67898 (_1!37370 lt!2525920)))))

(assert (=> d!2199673 (= (++!15571 (_1!37370 lt!2525920) (_2!37370 lt!2525920)) lt!2526116)))

(assert (= (and d!2199673 c!1311433) b!7044078))

(assert (= (and d!2199673 (not c!1311433)) b!7044079))

(assert (= (and d!2199673 res!2875724) b!7044080))

(assert (= (and b!7044080 res!2875725) b!7044081))

(declare-fun m!7757014 () Bool)

(assert (=> b!7044080 m!7757014))

(declare-fun m!7757016 () Bool)

(assert (=> b!7044080 m!7757016))

(declare-fun m!7757018 () Bool)

(assert (=> b!7044080 m!7757018))

(declare-fun m!7757020 () Bool)

(assert (=> b!7044079 m!7757020))

(declare-fun m!7757022 () Bool)

(assert (=> d!2199673 m!7757022))

(declare-fun m!7757024 () Bool)

(assert (=> d!2199673 m!7757024))

(declare-fun m!7757026 () Bool)

(assert (=> d!2199673 m!7757026))

(assert (=> b!7043795 d!2199673))

(assert (=> b!7043806 d!2199591))

(declare-fun b!7044082 () Bool)

(declare-fun e!4234640 () Bool)

(assert (=> b!7044082 (= e!4234640 (nullable!7209 (h!74347 (exprs!6994 lt!2525923))))))

(declare-fun d!2199675 () Bool)

(declare-fun c!1311434 () Bool)

(assert (=> d!2199675 (= c!1311434 e!4234640)))

(declare-fun res!2875726 () Bool)

(assert (=> d!2199675 (=> (not res!2875726) (not e!4234640))))

(assert (=> d!2199675 (= res!2875726 (is-Cons!67899 (exprs!6994 lt!2525923)))))

(declare-fun e!4234641 () (Set Context!12988))

(assert (=> d!2199675 (= (derivationStepZipperUp!2108 lt!2525923 (h!74346 s!7408)) e!4234641)))

(declare-fun bm!639888 () Bool)

(declare-fun call!639893 () (Set Context!12988))

(assert (=> bm!639888 (= call!639893 (derivationStepZipperDown!2162 (h!74347 (exprs!6994 lt!2525923)) (Context!12989 (t!381796 (exprs!6994 lt!2525923))) (h!74346 s!7408)))))

(declare-fun b!7044083 () Bool)

(assert (=> b!7044083 (= e!4234641 (set.union call!639893 (derivationStepZipperUp!2108 (Context!12989 (t!381796 (exprs!6994 lt!2525923))) (h!74346 s!7408))))))

(declare-fun b!7044084 () Bool)

(declare-fun e!4234639 () (Set Context!12988))

(assert (=> b!7044084 (= e!4234641 e!4234639)))

(declare-fun c!1311435 () Bool)

(assert (=> b!7044084 (= c!1311435 (is-Cons!67899 (exprs!6994 lt!2525923)))))

(declare-fun b!7044085 () Bool)

(assert (=> b!7044085 (= e!4234639 call!639893)))

(declare-fun b!7044086 () Bool)

(assert (=> b!7044086 (= e!4234639 (as set.empty (Set Context!12988)))))

(assert (= (and d!2199675 res!2875726) b!7044082))

(assert (= (and d!2199675 c!1311434) b!7044083))

(assert (= (and d!2199675 (not c!1311434)) b!7044084))

(assert (= (and b!7044084 c!1311435) b!7044085))

(assert (= (and b!7044084 (not c!1311435)) b!7044086))

(assert (= (or b!7044083 b!7044085) bm!639888))

(declare-fun m!7757028 () Bool)

(assert (=> b!7044082 m!7757028))

(declare-fun m!7757030 () Bool)

(assert (=> bm!639888 m!7757030))

(declare-fun m!7757032 () Bool)

(assert (=> b!7044083 m!7757032))

(assert (=> b!7043806 d!2199675))

(declare-fun bs!1874120 () Bool)

(declare-fun d!2199677 () Bool)

(assert (= bs!1874120 (and d!2199677 b!7043806)))

(declare-fun lambda!417453 () Int)

(assert (=> bs!1874120 (= lambda!417453 lambda!417386)))

(declare-fun bs!1874121 () Bool)

(assert (= bs!1874121 (and d!2199677 d!2199613)))

(assert (=> bs!1874121 (= lambda!417453 lambda!417433)))

(assert (=> d!2199677 true))

(assert (=> d!2199677 (= (derivationStepZipper!2954 lt!2525909 (h!74346 s!7408)) (flatMap!2445 lt!2525909 lambda!417453))))

(declare-fun bs!1874122 () Bool)

(assert (= bs!1874122 d!2199677))

(declare-fun m!7757034 () Bool)

(assert (=> bs!1874122 m!7757034))

(assert (=> b!7043806 d!2199677))

(declare-fun d!2199679 () Bool)

(assert (=> d!2199679 (= (flatMap!2445 lt!2525909 lambda!417386) (dynLambda!27478 lambda!417386 lt!2525923))))

(declare-fun lt!2526117 () Unit!161678)

(assert (=> d!2199679 (= lt!2526117 (choose!53508 lt!2525909 lt!2525923 lambda!417386))))

(assert (=> d!2199679 (= lt!2525909 (set.insert lt!2525923 (as set.empty (Set Context!12988))))))

(assert (=> d!2199679 (= (lemmaFlatMapOnSingletonSet!1959 lt!2525909 lt!2525923 lambda!417386) lt!2526117)))

(declare-fun b_lambda!267513 () Bool)

(assert (=> (not b_lambda!267513) (not d!2199679)))

(declare-fun bs!1874123 () Bool)

(assert (= bs!1874123 d!2199679))

(assert (=> bs!1874123 m!7756630))

(declare-fun m!7757036 () Bool)

(assert (=> bs!1874123 m!7757036))

(declare-fun m!7757038 () Bool)

(assert (=> bs!1874123 m!7757038))

(assert (=> bs!1874123 m!7756626))

(assert (=> b!7043806 d!2199679))

(declare-fun d!2199681 () Bool)

(assert (=> d!2199681 (= (flatMap!2445 lt!2525909 lambda!417386) (choose!53507 lt!2525909 lambda!417386))))

(declare-fun bs!1874124 () Bool)

(assert (= bs!1874124 d!2199681))

(declare-fun m!7757040 () Bool)

(assert (=> bs!1874124 m!7757040))

(assert (=> b!7043806 d!2199681))

(assert (=> b!7043816 d!2199615))

(declare-fun condSetEmpty!49409 () Bool)

(assert (=> setNonEmpty!49403 (= condSetEmpty!49409 (= setRest!49403 (as set.empty (Set Context!12988))))))

(declare-fun setRes!49409 () Bool)

(assert (=> setNonEmpty!49403 (= tp!1937713 setRes!49409)))

(declare-fun setIsEmpty!49409 () Bool)

(assert (=> setIsEmpty!49409 setRes!49409))

(declare-fun e!4234644 () Bool)

(declare-fun setElem!49409 () Context!12988)

(declare-fun setNonEmpty!49409 () Bool)

(declare-fun tp!1937730 () Bool)

(assert (=> setNonEmpty!49409 (= setRes!49409 (and tp!1937730 (inv!86605 setElem!49409) e!4234644))))

(declare-fun setRest!49409 () (Set Context!12988))

(assert (=> setNonEmpty!49409 (= setRest!49403 (set.union (set.insert setElem!49409 (as set.empty (Set Context!12988))) setRest!49409))))

(declare-fun b!7044091 () Bool)

(declare-fun tp!1937731 () Bool)

(assert (=> b!7044091 (= e!4234644 tp!1937731)))

(assert (= (and setNonEmpty!49403 condSetEmpty!49409) setIsEmpty!49409))

(assert (= (and setNonEmpty!49403 (not condSetEmpty!49409)) setNonEmpty!49409))

(assert (= setNonEmpty!49409 b!7044091))

(declare-fun m!7757042 () Bool)

(assert (=> setNonEmpty!49409 m!7757042))

(declare-fun b!7044096 () Bool)

(declare-fun e!4234647 () Bool)

(declare-fun tp!1937736 () Bool)

(declare-fun tp!1937737 () Bool)

(assert (=> b!7044096 (= e!4234647 (and tp!1937736 tp!1937737))))

(assert (=> b!7043794 (= tp!1937712 e!4234647)))

(assert (= (and b!7043794 (is-Cons!67899 (exprs!6994 setElem!49403))) b!7044096))

(declare-fun b!7044101 () Bool)

(declare-fun e!4234650 () Bool)

(declare-fun tp!1937740 () Bool)

(assert (=> b!7044101 (= e!4234650 (and tp_is_empty!44221 tp!1937740))))

(assert (=> b!7043813 (= tp!1937710 e!4234650)))

(assert (= (and b!7043813 (is-Cons!67898 (t!381795 s!7408))) b!7044101))

(declare-fun b!7044102 () Bool)

(declare-fun e!4234651 () Bool)

(declare-fun tp!1937741 () Bool)

(declare-fun tp!1937742 () Bool)

(assert (=> b!7044102 (= e!4234651 (and tp!1937741 tp!1937742))))

(assert (=> b!7043811 (= tp!1937711 e!4234651)))

(assert (= (and b!7043811 (is-Cons!67899 (exprs!6994 ct2!306))) b!7044102))

(declare-fun b_lambda!267515 () Bool)

(assert (= b_lambda!267509 (or b!7043806 b_lambda!267515)))

(declare-fun bs!1874125 () Bool)

(declare-fun d!2199683 () Bool)

(assert (= bs!1874125 (and d!2199683 b!7043806)))

(assert (=> bs!1874125 (= (dynLambda!27478 lambda!417386 lt!2525892) (derivationStepZipperUp!2108 lt!2525892 (h!74346 s!7408)))))

(assert (=> bs!1874125 m!7756574))

(assert (=> d!2199611 d!2199683))

(declare-fun b_lambda!267517 () Bool)

(assert (= b_lambda!267511 (or b!7043800 b_lambda!267517)))

(declare-fun bs!1874126 () Bool)

(declare-fun d!2199685 () Bool)

(assert (= bs!1874126 (and d!2199685 b!7043800)))

(assert (=> bs!1874126 (= (dynLambda!27479 lambda!417383 lt!2526088) (matchZipper!3038 (set.insert lt!2526088 (as set.empty (Set Context!12988))) s!7408))))

(declare-fun m!7757044 () Bool)

(assert (=> bs!1874126 m!7757044))

(assert (=> bs!1874126 m!7757044))

(declare-fun m!7757046 () Bool)

(assert (=> bs!1874126 m!7757046))

(assert (=> d!2199621 d!2199685))

(declare-fun b_lambda!267519 () Bool)

(assert (= b_lambda!267513 (or b!7043806 b_lambda!267519)))

(declare-fun bs!1874127 () Bool)

(declare-fun d!2199687 () Bool)

(assert (= bs!1874127 (and d!2199687 b!7043806)))

(assert (=> bs!1874127 (= (dynLambda!27478 lambda!417386 lt!2525923) (derivationStepZipperUp!2108 lt!2525923 (h!74346 s!7408)))))

(assert (=> bs!1874127 m!7756632))

(assert (=> d!2199679 d!2199687))

(declare-fun b_lambda!267521 () Bool)

(assert (= b_lambda!267507 (or b!7043804 b_lambda!267521)))

(declare-fun bs!1874128 () Bool)

(declare-fun d!2199689 () Bool)

(assert (= bs!1874128 (and d!2199689 b!7043804)))

(declare-fun lt!2526118 () Unit!161678)

(assert (=> bs!1874128 (= lt!2526118 (lemmaConcatPreservesForall!819 (exprs!6994 lt!2526075) (exprs!6994 ct2!306) lambda!417385))))

(assert (=> bs!1874128 (= (dynLambda!27477 lambda!417384 lt!2526075) (Context!12989 (++!15572 (exprs!6994 lt!2526075) (exprs!6994 ct2!306))))))

(declare-fun m!7757048 () Bool)

(assert (=> bs!1874128 m!7757048))

(declare-fun m!7757050 () Bool)

(assert (=> bs!1874128 m!7757050))

(assert (=> d!2199593 d!2199689))

(push 1)

(assert (not b!7043944))

(assert (not d!2199681))

(assert (not b!7044053))

(assert (not d!2199603))

(assert (not b!7043956))

(assert (not b!7043980))

(assert (not d!2199595))

(assert (not b!7044102))

(assert (not b!7044027))

(assert (not b!7044016))

(assert (not d!2199601))

(assert (not b_lambda!267515))

(assert (not b_lambda!267517))

(assert (not b!7044101))

(assert (not d!2199597))

(assert (not d!2199655))

(assert (not bm!639879))

(assert (not b!7044079))

(assert (not setNonEmpty!49409))

(assert (not b!7044082))

(assert (not b!7044058))

(assert (not b!7043963))

(assert (not d!2199651))

(assert (not d!2199653))

(assert (not d!2199615))

(assert (not d!2199659))

(assert (not d!2199589))

(assert (not b!7043923))

(assert (not b!7043932))

(assert (not b!7043938))

(assert (not b!7044023))

(assert (not b!7044015))

(assert (not d!2199607))

(assert (not bm!639881))

(assert (not d!2199621))

(assert (not bm!639878))

(assert (not b!7044080))

(assert (not b!7043943))

(assert (not b!7044069))

(assert (not b!7044024))

(assert (not d!2199605))

(assert (not b!7044055))

(assert (not d!2199673))

(assert (not d!2199645))

(assert (not d!2199679))

(assert (not b!7043966))

(assert (not bs!1874126))

(assert (not bm!639888))

(assert (not d!2199663))

(assert (not d!2199619))

(assert (not b!7044091))

(assert (not d!2199669))

(assert (not b!7044021))

(assert (not b_lambda!267519))

(assert (not b!7044022))

(assert (not d!2199677))

(assert (not d!2199617))

(assert (not bs!1874127))

(assert (not b!7044030))

(assert (not d!2199591))

(assert (not b!7044031))

(assert (not b!7043924))

(assert (not bm!639883))

(assert (not b!7043975))

(assert (not b!7044057))

(assert (not d!2199613))

(assert (not b!7043942))

(assert (not d!2199593))

(assert (not d!2199639))

(assert (not b!7043968))

(assert (not bm!639886))

(assert (not b!7043937))

(assert (not bm!639876))

(assert (not b!7043974))

(assert (not d!2199643))

(assert (not bm!639862))

(assert (not d!2199665))

(assert (not d!2199661))

(assert tp_is_empty!44221)

(assert (not b!7044026))

(assert (not d!2199641))

(assert (not d!2199647))

(assert (not b!7043941))

(assert (not b!7043955))

(assert (not b!7044017))

(assert (not b!7044028))

(assert (not b!7044029))

(assert (not d!2199629))

(assert (not bm!639861))

(assert (not b!7043981))

(assert (not d!2199611))

(assert (not b!7044056))

(assert (not d!2199623))

(assert (not b_lambda!267521))

(assert (not bm!639885))

(assert (not b!7043962))

(assert (not b!7043940))

(assert (not b!7043939))

(assert (not b!7044083))

(assert (not b!7044051))

(assert (not d!2199635))

(assert (not d!2199657))

(assert (not b!7044025))

(assert (not b!7044096))

(assert (not b!7043967))

(assert (not bs!1874128))

(assert (not d!2199599))

(assert (not d!2199625))

(assert (not bs!1874125))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2199793 () Bool)

(declare-fun c!1311504 () Bool)

(assert (=> d!2199793 (= c!1311504 (and (is-ElementMatch!17498 (ite c!1311427 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311426 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311428 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892))))))) (= (c!1311360 (ite c!1311427 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311426 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311428 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892))))))) (h!74346 s!7408))))))

(declare-fun e!4234760 () (Set Context!12988))

(assert (=> d!2199793 (= (derivationStepZipperDown!2162 (ite c!1311427 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311426 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311428 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892)))))) (ite (or c!1311427 c!1311426) lt!2525916 (Context!12989 call!639888)) (h!74346 s!7408)) e!4234760)))

(declare-fun b!7044292 () Bool)

(declare-fun e!4234761 () (Set Context!12988))

(declare-fun call!639926 () (Set Context!12988))

(assert (=> b!7044292 (= e!4234761 call!639926)))

(declare-fun bm!639919 () Bool)

(declare-fun call!639929 () (Set Context!12988))

(declare-fun call!639928 () (Set Context!12988))

(assert (=> bm!639919 (= call!639929 call!639928)))

(declare-fun b!7044293 () Bool)

(declare-fun e!4234762 () (Set Context!12988))

(declare-fun call!639927 () (Set Context!12988))

(assert (=> b!7044293 (= e!4234762 (set.union call!639928 call!639927))))

(declare-fun b!7044294 () Bool)

(declare-fun e!4234759 () (Set Context!12988))

(assert (=> b!7044294 (= e!4234759 (as set.empty (Set Context!12988)))))

(declare-fun b!7044295 () Bool)

(declare-fun e!4234764 () (Set Context!12988))

(assert (=> b!7044295 (= e!4234764 e!4234761)))

(declare-fun c!1311502 () Bool)

(assert (=> b!7044295 (= c!1311502 (is-Concat!26343 (ite c!1311427 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311426 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311428 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892))))))))))

(declare-fun b!7044296 () Bool)

(assert (=> b!7044296 (= e!4234760 (set.insert (ite (or c!1311427 c!1311426) lt!2525916 (Context!12989 call!639888)) (as set.empty (Set Context!12988))))))

(declare-fun b!7044297 () Bool)

(declare-fun c!1311500 () Bool)

(declare-fun e!4234763 () Bool)

(assert (=> b!7044297 (= c!1311500 e!4234763)))

(declare-fun res!2875779 () Bool)

(assert (=> b!7044297 (=> (not res!2875779) (not e!4234763))))

(assert (=> b!7044297 (= res!2875779 (is-Concat!26343 (ite c!1311427 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311426 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311428 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892))))))))))

(assert (=> b!7044297 (= e!4234762 e!4234764)))

(declare-fun c!1311503 () Bool)

(declare-fun b!7044298 () Bool)

(assert (=> b!7044298 (= c!1311503 (is-Star!17498 (ite c!1311427 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311426 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311428 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892))))))))))

(assert (=> b!7044298 (= e!4234761 e!4234759)))

(declare-fun b!7044299 () Bool)

(assert (=> b!7044299 (= e!4234760 e!4234762)))

(declare-fun c!1311501 () Bool)

(assert (=> b!7044299 (= c!1311501 (is-Union!17498 (ite c!1311427 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311426 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311428 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892))))))))))

(declare-fun call!639924 () List!68023)

(declare-fun bm!639920 () Bool)

(assert (=> bm!639920 (= call!639927 (derivationStepZipperDown!2162 (ite c!1311501 (regTwo!35509 (ite c!1311427 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311426 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311428 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892))))))) (regOne!35508 (ite c!1311427 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311426 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311428 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892)))))))) (ite c!1311501 (ite (or c!1311427 c!1311426) lt!2525916 (Context!12989 call!639888)) (Context!12989 call!639924)) (h!74346 s!7408)))))

(declare-fun bm!639921 () Bool)

(assert (=> bm!639921 (= call!639926 call!639929)))

(declare-fun b!7044300 () Bool)

(assert (=> b!7044300 (= e!4234764 (set.union call!639927 call!639929))))

(declare-fun bm!639922 () Bool)

(assert (=> bm!639922 (= call!639924 ($colon$colon!2597 (exprs!6994 (ite (or c!1311427 c!1311426) lt!2525916 (Context!12989 call!639888))) (ite (or c!1311500 c!1311502) (regTwo!35508 (ite c!1311427 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311426 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311428 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892))))))) (ite c!1311427 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311426 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311428 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892)))))))))))

(declare-fun b!7044301 () Bool)

(assert (=> b!7044301 (= e!4234759 call!639926)))

(declare-fun call!639925 () List!68023)

(declare-fun bm!639923 () Bool)

(assert (=> bm!639923 (= call!639928 (derivationStepZipperDown!2162 (ite c!1311501 (regOne!35509 (ite c!1311427 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311426 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311428 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892))))))) (ite c!1311500 (regTwo!35508 (ite c!1311427 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311426 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311428 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892))))))) (ite c!1311502 (regOne!35508 (ite c!1311427 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311426 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311428 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892))))))) (reg!17827 (ite c!1311427 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311426 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311428 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892)))))))))) (ite (or c!1311501 c!1311500) (ite (or c!1311427 c!1311426) lt!2525916 (Context!12989 call!639888)) (Context!12989 call!639925)) (h!74346 s!7408)))))

(declare-fun bm!639924 () Bool)

(assert (=> bm!639924 (= call!639925 call!639924)))

(declare-fun b!7044302 () Bool)

(assert (=> b!7044302 (= e!4234763 (nullable!7209 (regOne!35508 (ite c!1311427 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311426 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311428 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892)))))))))))

(assert (= (and d!2199793 c!1311504) b!7044296))

(assert (= (and d!2199793 (not c!1311504)) b!7044299))

(assert (= (and b!7044299 c!1311501) b!7044293))

(assert (= (and b!7044299 (not c!1311501)) b!7044297))

(assert (= (and b!7044297 res!2875779) b!7044302))

(assert (= (and b!7044297 c!1311500) b!7044300))

(assert (= (and b!7044297 (not c!1311500)) b!7044295))

(assert (= (and b!7044295 c!1311502) b!7044292))

(assert (= (and b!7044295 (not c!1311502)) b!7044298))

(assert (= (and b!7044298 c!1311503) b!7044301))

(assert (= (and b!7044298 (not c!1311503)) b!7044294))

(assert (= (or b!7044292 b!7044301) bm!639924))

(assert (= (or b!7044292 b!7044301) bm!639921))

(assert (= (or b!7044300 bm!639921) bm!639919))

(assert (= (or b!7044300 bm!639924) bm!639922))

(assert (= (or b!7044293 bm!639919) bm!639923))

(assert (= (or b!7044293 b!7044300) bm!639920))

(declare-fun m!7757362 () Bool)

(assert (=> b!7044302 m!7757362))

(declare-fun m!7757364 () Bool)

(assert (=> bm!639922 m!7757364))

(declare-fun m!7757366 () Bool)

(assert (=> b!7044296 m!7757366))

(declare-fun m!7757368 () Bool)

(assert (=> bm!639923 m!7757368))

(declare-fun m!7757370 () Bool)

(assert (=> bm!639920 m!7757370))

(assert (=> bm!639886 d!2199793))

(declare-fun d!2199795 () Bool)

(assert (=> d!2199795 (= (isEmpty!39628 (t!381795 s!7408)) (is-Nil!67898 (t!381795 s!7408)))))

(assert (=> d!2199597 d!2199795))

(declare-fun b!7044305 () Bool)

(declare-fun res!2875781 () Bool)

(declare-fun e!4234765 () Bool)

(assert (=> b!7044305 (=> (not res!2875781) (not e!4234765))))

(declare-fun lt!2526171 () List!68022)

(assert (=> b!7044305 (= res!2875781 (= (size!41105 lt!2526171) (+ (size!41105 (_1!37370 (get!23799 lt!2526112))) (size!41105 (_2!37370 (get!23799 lt!2526112))))))))

(declare-fun b!7044306 () Bool)

(assert (=> b!7044306 (= e!4234765 (or (not (= (_2!37370 (get!23799 lt!2526112)) Nil!67898)) (= lt!2526171 (_1!37370 (get!23799 lt!2526112)))))))

(declare-fun b!7044303 () Bool)

(declare-fun e!4234766 () List!68022)

(assert (=> b!7044303 (= e!4234766 (_2!37370 (get!23799 lt!2526112)))))

(declare-fun b!7044304 () Bool)

(assert (=> b!7044304 (= e!4234766 (Cons!67898 (h!74346 (_1!37370 (get!23799 lt!2526112))) (++!15571 (t!381795 (_1!37370 (get!23799 lt!2526112))) (_2!37370 (get!23799 lt!2526112)))))))

(declare-fun d!2199797 () Bool)

(assert (=> d!2199797 e!4234765))

(declare-fun res!2875780 () Bool)

(assert (=> d!2199797 (=> (not res!2875780) (not e!4234765))))

(assert (=> d!2199797 (= res!2875780 (= (content!13599 lt!2526171) (set.union (content!13599 (_1!37370 (get!23799 lt!2526112))) (content!13599 (_2!37370 (get!23799 lt!2526112))))))))

(assert (=> d!2199797 (= lt!2526171 e!4234766)))

(declare-fun c!1311505 () Bool)

(assert (=> d!2199797 (= c!1311505 (is-Nil!67898 (_1!37370 (get!23799 lt!2526112))))))

(assert (=> d!2199797 (= (++!15571 (_1!37370 (get!23799 lt!2526112)) (_2!37370 (get!23799 lt!2526112))) lt!2526171)))

(assert (= (and d!2199797 c!1311505) b!7044303))

(assert (= (and d!2199797 (not c!1311505)) b!7044304))

(assert (= (and d!2199797 res!2875780) b!7044305))

(assert (= (and b!7044305 res!2875781) b!7044306))

(declare-fun m!7757372 () Bool)

(assert (=> b!7044305 m!7757372))

(declare-fun m!7757374 () Bool)

(assert (=> b!7044305 m!7757374))

(declare-fun m!7757376 () Bool)

(assert (=> b!7044305 m!7757376))

(declare-fun m!7757378 () Bool)

(assert (=> b!7044304 m!7757378))

(declare-fun m!7757380 () Bool)

(assert (=> d!2199797 m!7757380))

(declare-fun m!7757382 () Bool)

(assert (=> d!2199797 m!7757382))

(declare-fun m!7757384 () Bool)

(assert (=> d!2199797 m!7757384))

(assert (=> b!7044055 d!2199797))

(declare-fun d!2199799 () Bool)

(assert (=> d!2199799 (= (get!23799 lt!2526112) (v!53188 lt!2526112))))

(assert (=> b!7044055 d!2199799))

(assert (=> d!2199601 d!2199795))

(declare-fun d!2199801 () Bool)

(declare-fun c!1311506 () Bool)

(assert (=> d!2199801 (= c!1311506 (isEmpty!39628 (_2!37370 (get!23799 lt!2526112))))))

(declare-fun e!4234767 () Bool)

(assert (=> d!2199801 (= (matchZipper!3038 lt!2525907 (_2!37370 (get!23799 lt!2526112))) e!4234767)))

(declare-fun b!7044307 () Bool)

(assert (=> b!7044307 (= e!4234767 (nullableZipper!2604 lt!2525907))))

(declare-fun b!7044308 () Bool)

(assert (=> b!7044308 (= e!4234767 (matchZipper!3038 (derivationStepZipper!2954 lt!2525907 (head!14297 (_2!37370 (get!23799 lt!2526112)))) (tail!13614 (_2!37370 (get!23799 lt!2526112)))))))

(assert (= (and d!2199801 c!1311506) b!7044307))

(assert (= (and d!2199801 (not c!1311506)) b!7044308))

(declare-fun m!7757386 () Bool)

(assert (=> d!2199801 m!7757386))

(assert (=> b!7044307 m!7756908))

(declare-fun m!7757388 () Bool)

(assert (=> b!7044308 m!7757388))

(assert (=> b!7044308 m!7757388))

(declare-fun m!7757390 () Bool)

(assert (=> b!7044308 m!7757390))

(declare-fun m!7757392 () Bool)

(assert (=> b!7044308 m!7757392))

(assert (=> b!7044308 m!7757390))

(assert (=> b!7044308 m!7757392))

(declare-fun m!7757394 () Bool)

(assert (=> b!7044308 m!7757394))

(assert (=> b!7044051 d!2199801))

(assert (=> b!7044051 d!2199799))

(declare-fun d!2199803 () Bool)

(declare-fun lt!2526174 () Int)

(assert (=> d!2199803 (>= lt!2526174 0)))

(declare-fun e!4234770 () Int)

(assert (=> d!2199803 (= lt!2526174 e!4234770)))

(declare-fun c!1311509 () Bool)

(assert (=> d!2199803 (= c!1311509 (is-Nil!67899 lt!2526069))))

(assert (=> d!2199803 (= (size!41104 lt!2526069) lt!2526174)))

(declare-fun b!7044313 () Bool)

(assert (=> b!7044313 (= e!4234770 0)))

(declare-fun b!7044314 () Bool)

(assert (=> b!7044314 (= e!4234770 (+ 1 (size!41104 (t!381796 lt!2526069))))))

(assert (= (and d!2199803 c!1311509) b!7044313))

(assert (= (and d!2199803 (not c!1311509)) b!7044314))

(declare-fun m!7757396 () Bool)

(assert (=> b!7044314 m!7757396))

(assert (=> b!7043924 d!2199803))

(declare-fun d!2199805 () Bool)

(declare-fun lt!2526175 () Int)

(assert (=> d!2199805 (>= lt!2526175 0)))

(declare-fun e!4234771 () Int)

(assert (=> d!2199805 (= lt!2526175 e!4234771)))

(declare-fun c!1311510 () Bool)

(assert (=> d!2199805 (= c!1311510 (is-Nil!67899 (exprs!6994 lt!2525892)))))

(assert (=> d!2199805 (= (size!41104 (exprs!6994 lt!2525892)) lt!2526175)))

(declare-fun b!7044315 () Bool)

(assert (=> b!7044315 (= e!4234771 0)))

(declare-fun b!7044316 () Bool)

(assert (=> b!7044316 (= e!4234771 (+ 1 (size!41104 (t!381796 (exprs!6994 lt!2525892)))))))

(assert (= (and d!2199805 c!1311510) b!7044315))

(assert (= (and d!2199805 (not c!1311510)) b!7044316))

(declare-fun m!7757398 () Bool)

(assert (=> b!7044316 m!7757398))

(assert (=> b!7043924 d!2199805))

(declare-fun d!2199807 () Bool)

(declare-fun lt!2526176 () Int)

(assert (=> d!2199807 (>= lt!2526176 0)))

(declare-fun e!4234772 () Int)

(assert (=> d!2199807 (= lt!2526176 e!4234772)))

(declare-fun c!1311511 () Bool)

(assert (=> d!2199807 (= c!1311511 (is-Nil!67899 (exprs!6994 ct2!306)))))

(assert (=> d!2199807 (= (size!41104 (exprs!6994 ct2!306)) lt!2526176)))

(declare-fun b!7044317 () Bool)

(assert (=> b!7044317 (= e!4234772 0)))

(declare-fun b!7044318 () Bool)

(assert (=> b!7044318 (= e!4234772 (+ 1 (size!41104 (t!381796 (exprs!6994 ct2!306)))))))

(assert (= (and d!2199807 c!1311511) b!7044317))

(assert (= (and d!2199807 (not c!1311511)) b!7044318))

(declare-fun m!7757400 () Bool)

(assert (=> b!7044318 m!7757400))

(assert (=> b!7043924 d!2199807))

(declare-fun d!2199809 () Bool)

(assert (=> d!2199809 (= (flatMap!2445 lt!2525909 lambda!417453) (choose!53507 lt!2525909 lambda!417453))))

(declare-fun bs!1874166 () Bool)

(assert (= bs!1874166 d!2199809))

(declare-fun m!7757402 () Bool)

(assert (=> bs!1874166 m!7757402))

(assert (=> d!2199677 d!2199809))

(declare-fun d!2199811 () Bool)

(assert (=> d!2199811 (= (nullable!7209 (regOne!35508 (h!74347 (exprs!6994 lt!2525892)))) (nullableFct!2749 (regOne!35508 (h!74347 (exprs!6994 lt!2525892)))))))

(declare-fun bs!1874167 () Bool)

(assert (= bs!1874167 d!2199811))

(declare-fun m!7757404 () Bool)

(assert (=> bs!1874167 m!7757404))

(assert (=> b!7044015 d!2199811))

(declare-fun d!2199813 () Bool)

(assert (=> d!2199813 (= (isDefined!13600 lt!2526112) (not (isEmpty!39629 lt!2526112)))))

(declare-fun bs!1874168 () Bool)

(assert (= bs!1874168 d!2199813))

(declare-fun m!7757406 () Bool)

(assert (=> bs!1874168 m!7757406))

(assert (=> d!2199669 d!2199813))

(declare-fun d!2199815 () Bool)

(declare-fun c!1311512 () Bool)

(assert (=> d!2199815 (= c!1311512 (isEmpty!39628 Nil!67898))))

(declare-fun e!4234773 () Bool)

(assert (=> d!2199815 (= (matchZipper!3038 lt!2525878 Nil!67898) e!4234773)))

(declare-fun b!7044319 () Bool)

(assert (=> b!7044319 (= e!4234773 (nullableZipper!2604 lt!2525878))))

(declare-fun b!7044320 () Bool)

(assert (=> b!7044320 (= e!4234773 (matchZipper!3038 (derivationStepZipper!2954 lt!2525878 (head!14297 Nil!67898)) (tail!13614 Nil!67898)))))

(assert (= (and d!2199815 c!1311512) b!7044319))

(assert (= (and d!2199815 (not c!1311512)) b!7044320))

(declare-fun m!7757408 () Bool)

(assert (=> d!2199815 m!7757408))

(assert (=> b!7044319 m!7756968))

(declare-fun m!7757410 () Bool)

(assert (=> b!7044320 m!7757410))

(assert (=> b!7044320 m!7757410))

(declare-fun m!7757412 () Bool)

(assert (=> b!7044320 m!7757412))

(declare-fun m!7757414 () Bool)

(assert (=> b!7044320 m!7757414))

(assert (=> b!7044320 m!7757412))

(assert (=> b!7044320 m!7757414))

(declare-fun m!7757416 () Bool)

(assert (=> b!7044320 m!7757416))

(assert (=> d!2199669 d!2199815))

(declare-fun b!7044323 () Bool)

(declare-fun res!2875783 () Bool)

(declare-fun e!4234774 () Bool)

(assert (=> b!7044323 (=> (not res!2875783) (not e!4234774))))

(declare-fun lt!2526177 () List!68022)

(assert (=> b!7044323 (= res!2875783 (= (size!41105 lt!2526177) (+ (size!41105 Nil!67898) (size!41105 (t!381795 s!7408)))))))

(declare-fun b!7044324 () Bool)

(assert (=> b!7044324 (= e!4234774 (or (not (= (t!381795 s!7408) Nil!67898)) (= lt!2526177 Nil!67898)))))

(declare-fun b!7044321 () Bool)

(declare-fun e!4234775 () List!68022)

(assert (=> b!7044321 (= e!4234775 (t!381795 s!7408))))

(declare-fun b!7044322 () Bool)

(assert (=> b!7044322 (= e!4234775 (Cons!67898 (h!74346 Nil!67898) (++!15571 (t!381795 Nil!67898) (t!381795 s!7408))))))

(declare-fun d!2199817 () Bool)

(assert (=> d!2199817 e!4234774))

(declare-fun res!2875782 () Bool)

(assert (=> d!2199817 (=> (not res!2875782) (not e!4234774))))

(assert (=> d!2199817 (= res!2875782 (= (content!13599 lt!2526177) (set.union (content!13599 Nil!67898) (content!13599 (t!381795 s!7408)))))))

(assert (=> d!2199817 (= lt!2526177 e!4234775)))

(declare-fun c!1311513 () Bool)

(assert (=> d!2199817 (= c!1311513 (is-Nil!67898 Nil!67898))))

(assert (=> d!2199817 (= (++!15571 Nil!67898 (t!381795 s!7408)) lt!2526177)))

(assert (= (and d!2199817 c!1311513) b!7044321))

(assert (= (and d!2199817 (not c!1311513)) b!7044322))

(assert (= (and d!2199817 res!2875782) b!7044323))

(assert (= (and b!7044323 res!2875783) b!7044324))

(declare-fun m!7757418 () Bool)

(assert (=> b!7044323 m!7757418))

(declare-fun m!7757420 () Bool)

(assert (=> b!7044323 m!7757420))

(declare-fun m!7757422 () Bool)

(assert (=> b!7044323 m!7757422))

(declare-fun m!7757424 () Bool)

(assert (=> b!7044322 m!7757424))

(declare-fun m!7757426 () Bool)

(assert (=> d!2199817 m!7757426))

(declare-fun m!7757428 () Bool)

(assert (=> d!2199817 m!7757428))

(declare-fun m!7757430 () Bool)

(assert (=> d!2199817 m!7757430))

(assert (=> d!2199669 d!2199817))

(declare-fun d!2199819 () Bool)

(declare-fun c!1311518 () Bool)

(assert (=> d!2199819 (= c!1311518 (and (is-ElementMatch!17498 (h!74347 (exprs!6994 lt!2525916))) (= (c!1311360 (h!74347 (exprs!6994 lt!2525916))) (h!74346 s!7408))))))

(declare-fun e!4234777 () (Set Context!12988))

(assert (=> d!2199819 (= (derivationStepZipperDown!2162 (h!74347 (exprs!6994 lt!2525916)) (Context!12989 (t!381796 (exprs!6994 lt!2525916))) (h!74346 s!7408)) e!4234777)))

(declare-fun b!7044325 () Bool)

(declare-fun e!4234778 () (Set Context!12988))

(declare-fun call!639932 () (Set Context!12988))

(assert (=> b!7044325 (= e!4234778 call!639932)))

(declare-fun bm!639925 () Bool)

(declare-fun call!639935 () (Set Context!12988))

(declare-fun call!639934 () (Set Context!12988))

(assert (=> bm!639925 (= call!639935 call!639934)))

(declare-fun b!7044326 () Bool)

(declare-fun e!4234779 () (Set Context!12988))

(declare-fun call!639933 () (Set Context!12988))

(assert (=> b!7044326 (= e!4234779 (set.union call!639934 call!639933))))

(declare-fun b!7044327 () Bool)

(declare-fun e!4234776 () (Set Context!12988))

(assert (=> b!7044327 (= e!4234776 (as set.empty (Set Context!12988)))))

(declare-fun b!7044328 () Bool)

(declare-fun e!4234781 () (Set Context!12988))

(assert (=> b!7044328 (= e!4234781 e!4234778)))

(declare-fun c!1311516 () Bool)

(assert (=> b!7044328 (= c!1311516 (is-Concat!26343 (h!74347 (exprs!6994 lt!2525916))))))

(declare-fun b!7044329 () Bool)

(assert (=> b!7044329 (= e!4234777 (set.insert (Context!12989 (t!381796 (exprs!6994 lt!2525916))) (as set.empty (Set Context!12988))))))

(declare-fun b!7044330 () Bool)

(declare-fun c!1311514 () Bool)

(declare-fun e!4234780 () Bool)

(assert (=> b!7044330 (= c!1311514 e!4234780)))

(declare-fun res!2875784 () Bool)

(assert (=> b!7044330 (=> (not res!2875784) (not e!4234780))))

(assert (=> b!7044330 (= res!2875784 (is-Concat!26343 (h!74347 (exprs!6994 lt!2525916))))))

(assert (=> b!7044330 (= e!4234779 e!4234781)))

(declare-fun b!7044331 () Bool)

(declare-fun c!1311517 () Bool)

(assert (=> b!7044331 (= c!1311517 (is-Star!17498 (h!74347 (exprs!6994 lt!2525916))))))

(assert (=> b!7044331 (= e!4234778 e!4234776)))

(declare-fun b!7044332 () Bool)

(assert (=> b!7044332 (= e!4234777 e!4234779)))

(declare-fun c!1311515 () Bool)

(assert (=> b!7044332 (= c!1311515 (is-Union!17498 (h!74347 (exprs!6994 lt!2525916))))))

(declare-fun bm!639926 () Bool)

(declare-fun call!639930 () List!68023)

(assert (=> bm!639926 (= call!639933 (derivationStepZipperDown!2162 (ite c!1311515 (regTwo!35509 (h!74347 (exprs!6994 lt!2525916))) (regOne!35508 (h!74347 (exprs!6994 lt!2525916)))) (ite c!1311515 (Context!12989 (t!381796 (exprs!6994 lt!2525916))) (Context!12989 call!639930)) (h!74346 s!7408)))))

(declare-fun bm!639927 () Bool)

(assert (=> bm!639927 (= call!639932 call!639935)))

(declare-fun b!7044333 () Bool)

(assert (=> b!7044333 (= e!4234781 (set.union call!639933 call!639935))))

(declare-fun bm!639928 () Bool)

(assert (=> bm!639928 (= call!639930 ($colon$colon!2597 (exprs!6994 (Context!12989 (t!381796 (exprs!6994 lt!2525916)))) (ite (or c!1311514 c!1311516) (regTwo!35508 (h!74347 (exprs!6994 lt!2525916))) (h!74347 (exprs!6994 lt!2525916)))))))

(declare-fun b!7044334 () Bool)

(assert (=> b!7044334 (= e!4234776 call!639932)))

(declare-fun call!639931 () List!68023)

(declare-fun bm!639929 () Bool)

(assert (=> bm!639929 (= call!639934 (derivationStepZipperDown!2162 (ite c!1311515 (regOne!35509 (h!74347 (exprs!6994 lt!2525916))) (ite c!1311514 (regTwo!35508 (h!74347 (exprs!6994 lt!2525916))) (ite c!1311516 (regOne!35508 (h!74347 (exprs!6994 lt!2525916))) (reg!17827 (h!74347 (exprs!6994 lt!2525916)))))) (ite (or c!1311515 c!1311514) (Context!12989 (t!381796 (exprs!6994 lt!2525916))) (Context!12989 call!639931)) (h!74346 s!7408)))))

(declare-fun bm!639930 () Bool)

(assert (=> bm!639930 (= call!639931 call!639930)))

(declare-fun b!7044335 () Bool)

(assert (=> b!7044335 (= e!4234780 (nullable!7209 (regOne!35508 (h!74347 (exprs!6994 lt!2525916)))))))

(assert (= (and d!2199819 c!1311518) b!7044329))

(assert (= (and d!2199819 (not c!1311518)) b!7044332))

(assert (= (and b!7044332 c!1311515) b!7044326))

(assert (= (and b!7044332 (not c!1311515)) b!7044330))

(assert (= (and b!7044330 res!2875784) b!7044335))

(assert (= (and b!7044330 c!1311514) b!7044333))

(assert (= (and b!7044330 (not c!1311514)) b!7044328))

(assert (= (and b!7044328 c!1311516) b!7044325))

(assert (= (and b!7044328 (not c!1311516)) b!7044331))

(assert (= (and b!7044331 c!1311517) b!7044334))

(assert (= (and b!7044331 (not c!1311517)) b!7044327))

(assert (= (or b!7044325 b!7044334) bm!639930))

(assert (= (or b!7044325 b!7044334) bm!639927))

(assert (= (or b!7044333 bm!639927) bm!639925))

(assert (= (or b!7044333 bm!639930) bm!639928))

(assert (= (or b!7044326 bm!639925) bm!639929))

(assert (= (or b!7044326 b!7044333) bm!639926))

(declare-fun m!7757432 () Bool)

(assert (=> b!7044335 m!7757432))

(declare-fun m!7757434 () Bool)

(assert (=> bm!639928 m!7757434))

(declare-fun m!7757436 () Bool)

(assert (=> b!7044329 m!7757436))

(declare-fun m!7757438 () Bool)

(assert (=> bm!639929 m!7757438))

(declare-fun m!7757440 () Bool)

(assert (=> bm!639926 m!7757440))

(assert (=> bm!639881 d!2199819))

(assert (=> d!2199665 d!2199657))

(declare-fun b!7044336 () Bool)

(declare-fun e!4234786 () Option!16899)

(assert (=> b!7044336 (= e!4234786 (Some!16898 (tuple2!68135 Nil!67898 (t!381795 s!7408))))))

(declare-fun b!7044337 () Bool)

(declare-fun res!2875785 () Bool)

(declare-fun e!4234784 () Bool)

(assert (=> b!7044337 (=> (not res!2875785) (not e!4234784))))

(declare-fun lt!2526179 () Option!16899)

(assert (=> b!7044337 (= res!2875785 (matchZipper!3038 (set.insert ct2!306 (as set.empty (Set Context!12988))) (_2!37370 (get!23799 lt!2526179))))))

(declare-fun b!7044338 () Bool)

(declare-fun e!4234782 () Option!16899)

(assert (=> b!7044338 (= e!4234786 e!4234782)))

(declare-fun c!1311520 () Bool)

(assert (=> b!7044338 (= c!1311520 (is-Nil!67898 (t!381795 s!7408)))))

(declare-fun d!2199821 () Bool)

(declare-fun e!4234785 () Bool)

(assert (=> d!2199821 e!4234785))

(declare-fun res!2875788 () Bool)

(assert (=> d!2199821 (=> res!2875788 e!4234785)))

(assert (=> d!2199821 (= res!2875788 e!4234784)))

(declare-fun res!2875786 () Bool)

(assert (=> d!2199821 (=> (not res!2875786) (not e!4234784))))

(assert (=> d!2199821 (= res!2875786 (isDefined!13600 lt!2526179))))

(assert (=> d!2199821 (= lt!2526179 e!4234786)))

(declare-fun c!1311519 () Bool)

(declare-fun e!4234783 () Bool)

(assert (=> d!2199821 (= c!1311519 e!4234783)))

(declare-fun res!2875787 () Bool)

(assert (=> d!2199821 (=> (not res!2875787) (not e!4234783))))

(assert (=> d!2199821 (= res!2875787 (matchZipper!3038 lt!2525878 Nil!67898))))

(assert (=> d!2199821 (= (++!15571 Nil!67898 (t!381795 s!7408)) (t!381795 s!7408))))

(assert (=> d!2199821 (= (findConcatSeparationZippers!415 lt!2525878 (set.insert ct2!306 (as set.empty (Set Context!12988))) Nil!67898 (t!381795 s!7408) (t!381795 s!7408)) lt!2526179)))

(declare-fun b!7044339 () Bool)

(declare-fun lt!2526180 () Unit!161678)

(declare-fun lt!2526178 () Unit!161678)

(assert (=> b!7044339 (= lt!2526180 lt!2526178)))

(assert (=> b!7044339 (= (++!15571 (++!15571 Nil!67898 (Cons!67898 (h!74346 (t!381795 s!7408)) Nil!67898)) (t!381795 (t!381795 s!7408))) (t!381795 s!7408))))

(assert (=> b!7044339 (= lt!2526178 (lemmaMoveElementToOtherListKeepsConcatEq!2944 Nil!67898 (h!74346 (t!381795 s!7408)) (t!381795 (t!381795 s!7408)) (t!381795 s!7408)))))

(assert (=> b!7044339 (= e!4234782 (findConcatSeparationZippers!415 lt!2525878 (set.insert ct2!306 (as set.empty (Set Context!12988))) (++!15571 Nil!67898 (Cons!67898 (h!74346 (t!381795 s!7408)) Nil!67898)) (t!381795 (t!381795 s!7408)) (t!381795 s!7408)))))

(declare-fun b!7044340 () Bool)

(assert (=> b!7044340 (= e!4234782 None!16898)))

(declare-fun b!7044341 () Bool)

(assert (=> b!7044341 (= e!4234784 (= (++!15571 (_1!37370 (get!23799 lt!2526179)) (_2!37370 (get!23799 lt!2526179))) (t!381795 s!7408)))))

(declare-fun b!7044342 () Bool)

(assert (=> b!7044342 (= e!4234783 (matchZipper!3038 (set.insert ct2!306 (as set.empty (Set Context!12988))) (t!381795 s!7408)))))

(declare-fun b!7044343 () Bool)

(assert (=> b!7044343 (= e!4234785 (not (isDefined!13600 lt!2526179)))))

(declare-fun b!7044344 () Bool)

(declare-fun res!2875789 () Bool)

(assert (=> b!7044344 (=> (not res!2875789) (not e!4234784))))

(assert (=> b!7044344 (= res!2875789 (matchZipper!3038 lt!2525878 (_1!37370 (get!23799 lt!2526179))))))

(assert (= (and d!2199821 res!2875787) b!7044342))

(assert (= (and d!2199821 c!1311519) b!7044336))

(assert (= (and d!2199821 (not c!1311519)) b!7044338))

(assert (= (and b!7044338 c!1311520) b!7044340))

(assert (= (and b!7044338 (not c!1311520)) b!7044339))

(assert (= (and d!2199821 res!2875786) b!7044344))

(assert (= (and b!7044344 res!2875789) b!7044337))

(assert (= (and b!7044337 res!2875785) b!7044341))

(assert (= (and d!2199821 (not res!2875788)) b!7044343))

(declare-fun m!7757442 () Bool)

(assert (=> b!7044344 m!7757442))

(declare-fun m!7757444 () Bool)

(assert (=> b!7044344 m!7757444))

(assert (=> b!7044342 m!7756538))

(declare-fun m!7757446 () Bool)

(assert (=> b!7044342 m!7757446))

(assert (=> b!7044337 m!7757442))

(assert (=> b!7044337 m!7756538))

(declare-fun m!7757448 () Bool)

(assert (=> b!7044337 m!7757448))

(assert (=> b!7044339 m!7756990))

(assert (=> b!7044339 m!7756990))

(assert (=> b!7044339 m!7756992))

(assert (=> b!7044339 m!7756994))

(assert (=> b!7044339 m!7756538))

(assert (=> b!7044339 m!7756990))

(declare-fun m!7757450 () Bool)

(assert (=> b!7044339 m!7757450))

(assert (=> b!7044341 m!7757442))

(declare-fun m!7757452 () Bool)

(assert (=> b!7044341 m!7757452))

(declare-fun m!7757454 () Bool)

(assert (=> b!7044343 m!7757454))

(assert (=> d!2199821 m!7757454))

(assert (=> d!2199821 m!7757002))

(assert (=> d!2199821 m!7757004))

(assert (=> d!2199665 d!2199821))

(declare-fun d!2199823 () Bool)

(assert (=> d!2199823 (= (isDefined!13600 (findConcatSeparationZippers!415 lt!2525878 (set.insert ct2!306 (as set.empty (Set Context!12988))) Nil!67898 (t!381795 s!7408) (t!381795 s!7408))) (not (isEmpty!39629 (findConcatSeparationZippers!415 lt!2525878 (set.insert ct2!306 (as set.empty (Set Context!12988))) Nil!67898 (t!381795 s!7408) (t!381795 s!7408)))))))

(declare-fun bs!1874169 () Bool)

(assert (= bs!1874169 d!2199823))

(assert (=> bs!1874169 m!7756976))

(declare-fun m!7757456 () Bool)

(assert (=> bs!1874169 m!7757456))

(assert (=> d!2199665 d!2199823))

(declare-fun d!2199825 () Bool)

(assert (=> d!2199825 (isDefined!13600 (findConcatSeparationZippers!415 lt!2525878 (set.insert ct2!306 (as set.empty (Set Context!12988))) Nil!67898 (t!381795 s!7408) (t!381795 s!7408)))))

(assert (=> d!2199825 true))

(declare-fun _$50!593 () Unit!161678)

(assert (=> d!2199825 (= (choose!53512 lt!2525878 ct2!306 (t!381795 s!7408)) _$50!593)))

(declare-fun bs!1874170 () Bool)

(assert (= bs!1874170 d!2199825))

(assert (=> bs!1874170 m!7756538))

(assert (=> bs!1874170 m!7756538))

(assert (=> bs!1874170 m!7756976))

(assert (=> bs!1874170 m!7756976))

(assert (=> bs!1874170 m!7756978))

(assert (=> d!2199665 d!2199825))

(declare-fun d!2199827 () Bool)

(declare-fun c!1311521 () Bool)

(assert (=> d!2199827 (= c!1311521 (isEmpty!39628 (t!381795 s!7408)))))

(declare-fun e!4234787 () Bool)

(assert (=> d!2199827 (= (matchZipper!3038 (appendTo!619 lt!2525878 ct2!306) (t!381795 s!7408)) e!4234787)))

(declare-fun b!7044345 () Bool)

(assert (=> b!7044345 (= e!4234787 (nullableZipper!2604 (appendTo!619 lt!2525878 ct2!306)))))

(declare-fun b!7044346 () Bool)

(assert (=> b!7044346 (= e!4234787 (matchZipper!3038 (derivationStepZipper!2954 (appendTo!619 lt!2525878 ct2!306) (head!14297 (t!381795 s!7408))) (tail!13614 (t!381795 s!7408))))))

(assert (= (and d!2199827 c!1311521) b!7044345))

(assert (= (and d!2199827 (not c!1311521)) b!7044346))

(assert (=> d!2199827 m!7756776))

(assert (=> b!7044345 m!7756552))

(declare-fun m!7757458 () Bool)

(assert (=> b!7044345 m!7757458))

(assert (=> b!7044346 m!7756780))

(assert (=> b!7044346 m!7756552))

(assert (=> b!7044346 m!7756780))

(declare-fun m!7757460 () Bool)

(assert (=> b!7044346 m!7757460))

(assert (=> b!7044346 m!7756784))

(assert (=> b!7044346 m!7757460))

(assert (=> b!7044346 m!7756784))

(declare-fun m!7757462 () Bool)

(assert (=> b!7044346 m!7757462))

(assert (=> d!2199665 d!2199827))

(declare-fun d!2199829 () Bool)

(declare-fun res!2875794 () Bool)

(declare-fun e!4234792 () Bool)

(assert (=> d!2199829 (=> res!2875794 e!4234792)))

(assert (=> d!2199829 (= res!2875794 (is-Nil!67899 (++!15572 (exprs!6994 lt!2525892) (exprs!6994 ct2!306))))))

(assert (=> d!2199829 (= (forall!16426 (++!15572 (exprs!6994 lt!2525892) (exprs!6994 ct2!306)) lambda!417385) e!4234792)))

(declare-fun b!7044351 () Bool)

(declare-fun e!4234793 () Bool)

(assert (=> b!7044351 (= e!4234792 e!4234793)))

(declare-fun res!2875795 () Bool)

(assert (=> b!7044351 (=> (not res!2875795) (not e!4234793))))

(declare-fun dynLambda!27485 (Int Regex!17498) Bool)

(assert (=> b!7044351 (= res!2875795 (dynLambda!27485 lambda!417385 (h!74347 (++!15572 (exprs!6994 lt!2525892) (exprs!6994 ct2!306)))))))

(declare-fun b!7044352 () Bool)

(assert (=> b!7044352 (= e!4234793 (forall!16426 (t!381796 (++!15572 (exprs!6994 lt!2525892) (exprs!6994 ct2!306))) lambda!417385))))

(assert (= (and d!2199829 (not res!2875794)) b!7044351))

(assert (= (and b!7044351 res!2875795) b!7044352))

(declare-fun b_lambda!267539 () Bool)

(assert (=> (not b_lambda!267539) (not b!7044351)))

(declare-fun m!7757464 () Bool)

(assert (=> b!7044351 m!7757464))

(declare-fun m!7757466 () Bool)

(assert (=> b!7044352 m!7757466))

(assert (=> d!2199591 d!2199829))

(assert (=> d!2199591 d!2199589))

(declare-fun d!2199831 () Bool)

(assert (=> d!2199831 (forall!16426 (++!15572 (exprs!6994 lt!2525892) (exprs!6994 ct2!306)) lambda!417385)))

(assert (=> d!2199831 true))

(declare-fun _$78!613 () Unit!161678)

(assert (=> d!2199831 (= (choose!53504 (exprs!6994 lt!2525892) (exprs!6994 ct2!306) lambda!417385) _$78!613)))

(declare-fun bs!1874171 () Bool)

(assert (= bs!1874171 d!2199831))

(assert (=> bs!1874171 m!7756602))

(assert (=> bs!1874171 m!7756602))

(assert (=> bs!1874171 m!7756756))

(assert (=> d!2199591 d!2199831))

(declare-fun d!2199833 () Bool)

(declare-fun res!2875796 () Bool)

(declare-fun e!4234794 () Bool)

(assert (=> d!2199833 (=> res!2875796 e!4234794)))

(assert (=> d!2199833 (= res!2875796 (is-Nil!67899 (exprs!6994 lt!2525892)))))

(assert (=> d!2199833 (= (forall!16426 (exprs!6994 lt!2525892) lambda!417385) e!4234794)))

(declare-fun b!7044353 () Bool)

(declare-fun e!4234795 () Bool)

(assert (=> b!7044353 (= e!4234794 e!4234795)))

(declare-fun res!2875797 () Bool)

(assert (=> b!7044353 (=> (not res!2875797) (not e!4234795))))

(assert (=> b!7044353 (= res!2875797 (dynLambda!27485 lambda!417385 (h!74347 (exprs!6994 lt!2525892))))))

(declare-fun b!7044354 () Bool)

(assert (=> b!7044354 (= e!4234795 (forall!16426 (t!381796 (exprs!6994 lt!2525892)) lambda!417385))))

(assert (= (and d!2199833 (not res!2875796)) b!7044353))

(assert (= (and b!7044353 res!2875797) b!7044354))

(declare-fun b_lambda!267541 () Bool)

(assert (=> (not b_lambda!267541) (not b!7044353)))

(declare-fun m!7757468 () Bool)

(assert (=> b!7044353 m!7757468))

(declare-fun m!7757470 () Bool)

(assert (=> b!7044354 m!7757470))

(assert (=> d!2199591 d!2199833))

(declare-fun d!2199835 () Bool)

(assert (=> d!2199835 (= ($colon$colon!2597 (exprs!6994 lt!2525890) (ite (or c!1311406 c!1311408) (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (h!74347 (exprs!6994 lt!2525892)))) (Cons!67899 (ite (or c!1311406 c!1311408) (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (h!74347 (exprs!6994 lt!2525892))) (exprs!6994 lt!2525890)))))

(assert (=> bm!639878 d!2199835))

(declare-fun d!2199837 () Bool)

(declare-fun c!1311524 () Bool)

(assert (=> d!2199837 (= c!1311524 (is-Nil!67900 lt!2526085))))

(declare-fun e!4234798 () (Set Context!12988))

(assert (=> d!2199837 (= (content!13598 lt!2526085) e!4234798)))

(declare-fun b!7044359 () Bool)

(assert (=> b!7044359 (= e!4234798 (as set.empty (Set Context!12988)))))

(declare-fun b!7044360 () Bool)

(assert (=> b!7044360 (= e!4234798 (set.union (set.insert (h!74348 lt!2526085) (as set.empty (Set Context!12988))) (content!13598 (t!381797 lt!2526085))))))

(assert (= (and d!2199837 c!1311524) b!7044359))

(assert (= (and d!2199837 (not c!1311524)) b!7044360))

(declare-fun m!7757472 () Bool)

(assert (=> b!7044360 m!7757472))

(declare-fun m!7757474 () Bool)

(assert (=> b!7044360 m!7757474))

(assert (=> b!7043966 d!2199837))

(declare-fun d!2199839 () Bool)

(declare-fun choose!53522 ((Set Context!12988) Int) (Set Context!12988))

(assert (=> d!2199839 (= (map!15809 lt!2525878 lambda!417449) (choose!53522 lt!2525878 lambda!417449))))

(declare-fun bs!1874172 () Bool)

(assert (= bs!1874172 d!2199839))

(declare-fun m!7757476 () Bool)

(assert (=> bs!1874172 m!7757476))

(assert (=> d!2199657 d!2199839))

(declare-fun d!2199841 () Bool)

(declare-fun c!1311525 () Bool)

(assert (=> d!2199841 (= c!1311525 (isEmpty!39628 (tail!13614 (t!381795 s!7408))))))

(declare-fun e!4234799 () Bool)

(assert (=> d!2199841 (= (matchZipper!3038 (derivationStepZipper!2954 lt!2525906 (head!14297 (t!381795 s!7408))) (tail!13614 (t!381795 s!7408))) e!4234799)))

(declare-fun b!7044361 () Bool)

(assert (=> b!7044361 (= e!4234799 (nullableZipper!2604 (derivationStepZipper!2954 lt!2525906 (head!14297 (t!381795 s!7408)))))))

(declare-fun b!7044362 () Bool)

(assert (=> b!7044362 (= e!4234799 (matchZipper!3038 (derivationStepZipper!2954 (derivationStepZipper!2954 lt!2525906 (head!14297 (t!381795 s!7408))) (head!14297 (tail!13614 (t!381795 s!7408)))) (tail!13614 (tail!13614 (t!381795 s!7408)))))))

(assert (= (and d!2199841 c!1311525) b!7044361))

(assert (= (and d!2199841 (not c!1311525)) b!7044362))

(assert (=> d!2199841 m!7756784))

(declare-fun m!7757478 () Bool)

(assert (=> d!2199841 m!7757478))

(assert (=> b!7044361 m!7756790))

(declare-fun m!7757480 () Bool)

(assert (=> b!7044361 m!7757480))

(assert (=> b!7044362 m!7756784))

(declare-fun m!7757482 () Bool)

(assert (=> b!7044362 m!7757482))

(assert (=> b!7044362 m!7756790))

(assert (=> b!7044362 m!7757482))

(declare-fun m!7757484 () Bool)

(assert (=> b!7044362 m!7757484))

(assert (=> b!7044362 m!7756784))

(declare-fun m!7757486 () Bool)

(assert (=> b!7044362 m!7757486))

(assert (=> b!7044362 m!7757484))

(assert (=> b!7044362 m!7757486))

(declare-fun m!7757488 () Bool)

(assert (=> b!7044362 m!7757488))

(assert (=> b!7043940 d!2199841))

(declare-fun bs!1874173 () Bool)

(declare-fun d!2199843 () Bool)

(assert (= bs!1874173 (and d!2199843 b!7043806)))

(declare-fun lambda!417477 () Int)

(assert (=> bs!1874173 (= (= (head!14297 (t!381795 s!7408)) (h!74346 s!7408)) (= lambda!417477 lambda!417386))))

(declare-fun bs!1874174 () Bool)

(assert (= bs!1874174 (and d!2199843 d!2199613)))

(assert (=> bs!1874174 (= (= (head!14297 (t!381795 s!7408)) (h!74346 s!7408)) (= lambda!417477 lambda!417433))))

(declare-fun bs!1874175 () Bool)

(assert (= bs!1874175 (and d!2199843 d!2199677)))

(assert (=> bs!1874175 (= (= (head!14297 (t!381795 s!7408)) (h!74346 s!7408)) (= lambda!417477 lambda!417453))))

(assert (=> d!2199843 true))

(assert (=> d!2199843 (= (derivationStepZipper!2954 lt!2525906 (head!14297 (t!381795 s!7408))) (flatMap!2445 lt!2525906 lambda!417477))))

(declare-fun bs!1874176 () Bool)

(assert (= bs!1874176 d!2199843))

(declare-fun m!7757490 () Bool)

(assert (=> bs!1874176 m!7757490))

(assert (=> b!7043940 d!2199843))

(declare-fun d!2199845 () Bool)

(assert (=> d!2199845 (= (head!14297 (t!381795 s!7408)) (h!74346 (t!381795 s!7408)))))

(assert (=> b!7043940 d!2199845))

(declare-fun d!2199847 () Bool)

(assert (=> d!2199847 (= (tail!13614 (t!381795 s!7408)) (t!381795 (t!381795 s!7408)))))

(assert (=> b!7043940 d!2199847))

(declare-fun bs!1874177 () Bool)

(declare-fun d!2199849 () Bool)

(assert (= bs!1874177 (and d!2199849 b!7043800)))

(declare-fun lambda!417480 () Int)

(assert (=> bs!1874177 (not (= lambda!417480 lambda!417383))))

(declare-fun bs!1874178 () Bool)

(assert (= bs!1874178 (and d!2199849 d!2199623)))

(assert (=> bs!1874178 (not (= lambda!417480 lambda!417436))))

(declare-fun bs!1874179 () Bool)

(assert (= bs!1874179 (and d!2199849 d!2199625)))

(assert (=> bs!1874179 (not (= lambda!417480 lambda!417439))))

(assert (=> d!2199849 (= (nullableZipper!2604 lt!2525907) (exists!3450 lt!2525907 lambda!417480))))

(declare-fun bs!1874180 () Bool)

(assert (= bs!1874180 d!2199849))

(declare-fun m!7757492 () Bool)

(assert (=> bs!1874180 m!7757492))

(assert (=> b!7044021 d!2199849))

(assert (=> d!2199599 d!2199795))

(declare-fun bs!1874181 () Bool)

(declare-fun d!2199851 () Bool)

(assert (= bs!1874181 (and d!2199851 b!7043800)))

(declare-fun lambda!417481 () Int)

(assert (=> bs!1874181 (not (= lambda!417481 lambda!417383))))

(declare-fun bs!1874182 () Bool)

(assert (= bs!1874182 (and d!2199851 d!2199623)))

(assert (=> bs!1874182 (= (= lambda!417439 lambda!417383) (= lambda!417481 lambda!417436))))

(declare-fun bs!1874183 () Bool)

(assert (= bs!1874183 (and d!2199851 d!2199625)))

(assert (=> bs!1874183 (not (= lambda!417481 lambda!417439))))

(declare-fun bs!1874184 () Bool)

(assert (= bs!1874184 (and d!2199851 d!2199849)))

(assert (=> bs!1874184 (not (= lambda!417481 lambda!417480))))

(assert (=> d!2199851 true))

(assert (=> d!2199851 (< (dynLambda!27480 order!28225 lambda!417439) (dynLambda!27480 order!28225 lambda!417481))))

(assert (=> d!2199851 (= (exists!3448 lt!2525922 lambda!417439) (not (forall!16427 lt!2525922 lambda!417481)))))

(declare-fun bs!1874185 () Bool)

(assert (= bs!1874185 d!2199851))

(declare-fun m!7757494 () Bool)

(assert (=> bs!1874185 m!7757494))

(assert (=> d!2199625 d!2199851))

(declare-fun bs!1874186 () Bool)

(declare-fun d!2199853 () Bool)

(assert (= bs!1874186 (and d!2199853 d!2199851)))

(declare-fun lambda!417484 () Int)

(assert (=> bs!1874186 (not (= lambda!417484 lambda!417481))))

(declare-fun bs!1874187 () Bool)

(assert (= bs!1874187 (and d!2199853 d!2199849)))

(assert (=> bs!1874187 (not (= lambda!417484 lambda!417480))))

(declare-fun bs!1874188 () Bool)

(assert (= bs!1874188 (and d!2199853 b!7043800)))

(assert (=> bs!1874188 (= lambda!417484 lambda!417383)))

(declare-fun bs!1874189 () Bool)

(assert (= bs!1874189 (and d!2199853 d!2199623)))

(assert (=> bs!1874189 (not (= lambda!417484 lambda!417436))))

(declare-fun bs!1874190 () Bool)

(assert (= bs!1874190 (and d!2199853 d!2199625)))

(assert (=> bs!1874190 (= lambda!417484 lambda!417439)))

(assert (=> d!2199853 true))

(assert (=> d!2199853 (exists!3448 lt!2525922 lambda!417484)))

(assert (=> d!2199853 true))

(declare-fun _$60!1147 () Unit!161678)

(assert (=> d!2199853 (= (choose!53510 lt!2525922 s!7408) _$60!1147)))

(declare-fun bs!1874191 () Bool)

(assert (= bs!1874191 d!2199853))

(declare-fun m!7757496 () Bool)

(assert (=> bs!1874191 m!7757496))

(assert (=> d!2199625 d!2199853))

(declare-fun d!2199855 () Bool)

(declare-fun c!1311530 () Bool)

(assert (=> d!2199855 (= c!1311530 (isEmpty!39628 s!7408))))

(declare-fun e!4234800 () Bool)

(assert (=> d!2199855 (= (matchZipper!3038 (content!13598 lt!2525922) s!7408) e!4234800)))

(declare-fun b!7044363 () Bool)

(assert (=> b!7044363 (= e!4234800 (nullableZipper!2604 (content!13598 lt!2525922)))))

(declare-fun b!7044364 () Bool)

(assert (=> b!7044364 (= e!4234800 (matchZipper!3038 (derivationStepZipper!2954 (content!13598 lt!2525922) (head!14297 s!7408)) (tail!13614 s!7408)))))

(assert (= (and d!2199855 c!1311530) b!7044363))

(assert (= (and d!2199855 (not c!1311530)) b!7044364))

(assert (=> d!2199855 m!7756842))

(assert (=> b!7044363 m!7756868))

(declare-fun m!7757498 () Bool)

(assert (=> b!7044363 m!7757498))

(assert (=> b!7044364 m!7756846))

(assert (=> b!7044364 m!7756868))

(assert (=> b!7044364 m!7756846))

(declare-fun m!7757500 () Bool)

(assert (=> b!7044364 m!7757500))

(assert (=> b!7044364 m!7756850))

(assert (=> b!7044364 m!7757500))

(assert (=> b!7044364 m!7756850))

(declare-fun m!7757502 () Bool)

(assert (=> b!7044364 m!7757502))

(assert (=> d!2199625 d!2199855))

(declare-fun d!2199857 () Bool)

(declare-fun c!1311531 () Bool)

(assert (=> d!2199857 (= c!1311531 (is-Nil!67900 lt!2525922))))

(declare-fun e!4234801 () (Set Context!12988))

(assert (=> d!2199857 (= (content!13598 lt!2525922) e!4234801)))

(declare-fun b!7044365 () Bool)

(assert (=> b!7044365 (= e!4234801 (as set.empty (Set Context!12988)))))

(declare-fun b!7044366 () Bool)

(assert (=> b!7044366 (= e!4234801 (set.union (set.insert (h!74348 lt!2525922) (as set.empty (Set Context!12988))) (content!13598 (t!381797 lt!2525922))))))

(assert (= (and d!2199857 c!1311531) b!7044365))

(assert (= (and d!2199857 (not c!1311531)) b!7044366))

(declare-fun m!7757504 () Bool)

(assert (=> b!7044366 m!7757504))

(declare-fun m!7757506 () Bool)

(assert (=> b!7044366 m!7757506))

(assert (=> d!2199625 d!2199857))

(assert (=> bs!1874127 d!2199675))

(declare-fun d!2199859 () Bool)

(declare-fun e!4234807 () Bool)

(assert (=> d!2199859 e!4234807))

(declare-fun res!2875800 () Bool)

(assert (=> d!2199859 (=> (not res!2875800) (not e!4234807))))

(declare-fun a!13326 () Context!12988)

(assert (=> d!2199859 (= res!2875800 (= lt!2525879 (dynLambda!27477 lambda!417384 a!13326)))))

(declare-fun e!4234806 () Bool)

(assert (=> d!2199859 (and (inv!86605 a!13326) e!4234806)))

(assert (=> d!2199859 (= (choose!53505 z1!570 lambda!417384 lt!2525879) a!13326)))

(declare-fun b!7044372 () Bool)

(declare-fun tp!1937762 () Bool)

(assert (=> b!7044372 (= e!4234806 tp!1937762)))

(declare-fun b!7044373 () Bool)

(assert (=> b!7044373 (= e!4234807 (set.member a!13326 z1!570))))

(assert (= d!2199859 b!7044372))

(assert (= (and d!2199859 res!2875800) b!7044373))

(declare-fun b_lambda!267543 () Bool)

(assert (=> (not b_lambda!267543) (not d!2199859)))

(declare-fun m!7757508 () Bool)

(assert (=> d!2199859 m!7757508))

(declare-fun m!7757510 () Bool)

(assert (=> d!2199859 m!7757510))

(declare-fun m!7757512 () Bool)

(assert (=> b!7044373 m!7757512))

(assert (=> d!2199593 d!2199859))

(declare-fun d!2199861 () Bool)

(assert (=> d!2199861 (= (map!15809 z1!570 lambda!417384) (choose!53522 z1!570 lambda!417384))))

(declare-fun bs!1874192 () Bool)

(assert (= bs!1874192 d!2199861))

(declare-fun m!7757514 () Bool)

(assert (=> bs!1874192 m!7757514))

(assert (=> d!2199593 d!2199861))

(declare-fun d!2199863 () Bool)

(declare-fun c!1311536 () Bool)

(assert (=> d!2199863 (= c!1311536 (and (is-ElementMatch!17498 (h!74347 (exprs!6994 lt!2525923))) (= (c!1311360 (h!74347 (exprs!6994 lt!2525923))) (h!74346 s!7408))))))

(declare-fun e!4234809 () (Set Context!12988))

(assert (=> d!2199863 (= (derivationStepZipperDown!2162 (h!74347 (exprs!6994 lt!2525923)) (Context!12989 (t!381796 (exprs!6994 lt!2525923))) (h!74346 s!7408)) e!4234809)))

(declare-fun b!7044374 () Bool)

(declare-fun e!4234810 () (Set Context!12988))

(declare-fun call!639938 () (Set Context!12988))

(assert (=> b!7044374 (= e!4234810 call!639938)))

(declare-fun bm!639931 () Bool)

(declare-fun call!639941 () (Set Context!12988))

(declare-fun call!639940 () (Set Context!12988))

(assert (=> bm!639931 (= call!639941 call!639940)))

(declare-fun b!7044375 () Bool)

(declare-fun e!4234811 () (Set Context!12988))

(declare-fun call!639939 () (Set Context!12988))

(assert (=> b!7044375 (= e!4234811 (set.union call!639940 call!639939))))

(declare-fun b!7044376 () Bool)

(declare-fun e!4234808 () (Set Context!12988))

(assert (=> b!7044376 (= e!4234808 (as set.empty (Set Context!12988)))))

(declare-fun b!7044377 () Bool)

(declare-fun e!4234813 () (Set Context!12988))

(assert (=> b!7044377 (= e!4234813 e!4234810)))

(declare-fun c!1311534 () Bool)

(assert (=> b!7044377 (= c!1311534 (is-Concat!26343 (h!74347 (exprs!6994 lt!2525923))))))

(declare-fun b!7044378 () Bool)

(assert (=> b!7044378 (= e!4234809 (set.insert (Context!12989 (t!381796 (exprs!6994 lt!2525923))) (as set.empty (Set Context!12988))))))

(declare-fun b!7044379 () Bool)

(declare-fun c!1311532 () Bool)

(declare-fun e!4234812 () Bool)

(assert (=> b!7044379 (= c!1311532 e!4234812)))

(declare-fun res!2875801 () Bool)

(assert (=> b!7044379 (=> (not res!2875801) (not e!4234812))))

(assert (=> b!7044379 (= res!2875801 (is-Concat!26343 (h!74347 (exprs!6994 lt!2525923))))))

(assert (=> b!7044379 (= e!4234811 e!4234813)))

(declare-fun b!7044380 () Bool)

(declare-fun c!1311535 () Bool)

(assert (=> b!7044380 (= c!1311535 (is-Star!17498 (h!74347 (exprs!6994 lt!2525923))))))

(assert (=> b!7044380 (= e!4234810 e!4234808)))

(declare-fun b!7044381 () Bool)

(assert (=> b!7044381 (= e!4234809 e!4234811)))

(declare-fun c!1311533 () Bool)

(assert (=> b!7044381 (= c!1311533 (is-Union!17498 (h!74347 (exprs!6994 lt!2525923))))))

(declare-fun call!639936 () List!68023)

(declare-fun bm!639932 () Bool)

(assert (=> bm!639932 (= call!639939 (derivationStepZipperDown!2162 (ite c!1311533 (regTwo!35509 (h!74347 (exprs!6994 lt!2525923))) (regOne!35508 (h!74347 (exprs!6994 lt!2525923)))) (ite c!1311533 (Context!12989 (t!381796 (exprs!6994 lt!2525923))) (Context!12989 call!639936)) (h!74346 s!7408)))))

(declare-fun bm!639933 () Bool)

(assert (=> bm!639933 (= call!639938 call!639941)))

(declare-fun b!7044382 () Bool)

(assert (=> b!7044382 (= e!4234813 (set.union call!639939 call!639941))))

(declare-fun bm!639934 () Bool)

(assert (=> bm!639934 (= call!639936 ($colon$colon!2597 (exprs!6994 (Context!12989 (t!381796 (exprs!6994 lt!2525923)))) (ite (or c!1311532 c!1311534) (regTwo!35508 (h!74347 (exprs!6994 lt!2525923))) (h!74347 (exprs!6994 lt!2525923)))))))

(declare-fun b!7044383 () Bool)

(assert (=> b!7044383 (= e!4234808 call!639938)))

(declare-fun bm!639935 () Bool)

(declare-fun call!639937 () List!68023)

(assert (=> bm!639935 (= call!639940 (derivationStepZipperDown!2162 (ite c!1311533 (regOne!35509 (h!74347 (exprs!6994 lt!2525923))) (ite c!1311532 (regTwo!35508 (h!74347 (exprs!6994 lt!2525923))) (ite c!1311534 (regOne!35508 (h!74347 (exprs!6994 lt!2525923))) (reg!17827 (h!74347 (exprs!6994 lt!2525923)))))) (ite (or c!1311533 c!1311532) (Context!12989 (t!381796 (exprs!6994 lt!2525923))) (Context!12989 call!639937)) (h!74346 s!7408)))))

(declare-fun bm!639936 () Bool)

(assert (=> bm!639936 (= call!639937 call!639936)))

(declare-fun b!7044384 () Bool)

(assert (=> b!7044384 (= e!4234812 (nullable!7209 (regOne!35508 (h!74347 (exprs!6994 lt!2525923)))))))

(assert (= (and d!2199863 c!1311536) b!7044378))

(assert (= (and d!2199863 (not c!1311536)) b!7044381))

(assert (= (and b!7044381 c!1311533) b!7044375))

(assert (= (and b!7044381 (not c!1311533)) b!7044379))

(assert (= (and b!7044379 res!2875801) b!7044384))

(assert (= (and b!7044379 c!1311532) b!7044382))

(assert (= (and b!7044379 (not c!1311532)) b!7044377))

(assert (= (and b!7044377 c!1311534) b!7044374))

(assert (= (and b!7044377 (not c!1311534)) b!7044380))

(assert (= (and b!7044380 c!1311535) b!7044383))

(assert (= (and b!7044380 (not c!1311535)) b!7044376))

(assert (= (or b!7044374 b!7044383) bm!639936))

(assert (= (or b!7044374 b!7044383) bm!639933))

(assert (= (or b!7044382 bm!639933) bm!639931))

(assert (= (or b!7044382 bm!639936) bm!639934))

(assert (= (or b!7044375 bm!639931) bm!639935))

(assert (= (or b!7044375 b!7044382) bm!639932))

(declare-fun m!7757516 () Bool)

(assert (=> b!7044384 m!7757516))

(declare-fun m!7757518 () Bool)

(assert (=> bm!639934 m!7757518))

(declare-fun m!7757520 () Bool)

(assert (=> b!7044378 m!7757520))

(declare-fun m!7757522 () Bool)

(assert (=> bm!639935 m!7757522))

(declare-fun m!7757524 () Bool)

(assert (=> bm!639932 m!7757524))

(assert (=> bm!639888 d!2199863))

(declare-fun d!2199865 () Bool)

(declare-fun c!1311537 () Bool)

(assert (=> d!2199865 (= c!1311537 (isEmpty!39628 (tail!13614 (_1!37370 lt!2525920))))))

(declare-fun e!4234814 () Bool)

(assert (=> d!2199865 (= (matchZipper!3038 (derivationStepZipper!2954 lt!2525878 (head!14297 (_1!37370 lt!2525920))) (tail!13614 (_1!37370 lt!2525920))) e!4234814)))

(declare-fun b!7044385 () Bool)

(assert (=> b!7044385 (= e!4234814 (nullableZipper!2604 (derivationStepZipper!2954 lt!2525878 (head!14297 (_1!37370 lt!2525920)))))))

(declare-fun b!7044386 () Bool)

(assert (=> b!7044386 (= e!4234814 (matchZipper!3038 (derivationStepZipper!2954 (derivationStepZipper!2954 lt!2525878 (head!14297 (_1!37370 lt!2525920))) (head!14297 (tail!13614 (_1!37370 lt!2525920)))) (tail!13614 (tail!13614 (_1!37370 lt!2525920)))))))

(assert (= (and d!2199865 c!1311537) b!7044385))

(assert (= (and d!2199865 (not c!1311537)) b!7044386))

(assert (=> d!2199865 m!7756814))

(declare-fun m!7757526 () Bool)

(assert (=> d!2199865 m!7757526))

(assert (=> b!7044385 m!7756970))

(declare-fun m!7757528 () Bool)

(assert (=> b!7044385 m!7757528))

(assert (=> b!7044386 m!7756814))

(declare-fun m!7757530 () Bool)

(assert (=> b!7044386 m!7757530))

(assert (=> b!7044386 m!7756970))

(assert (=> b!7044386 m!7757530))

(declare-fun m!7757532 () Bool)

(assert (=> b!7044386 m!7757532))

(assert (=> b!7044386 m!7756814))

(declare-fun m!7757534 () Bool)

(assert (=> b!7044386 m!7757534))

(assert (=> b!7044386 m!7757532))

(assert (=> b!7044386 m!7757534))

(declare-fun m!7757536 () Bool)

(assert (=> b!7044386 m!7757536))

(assert (=> b!7044031 d!2199865))

(declare-fun bs!1874193 () Bool)

(declare-fun d!2199867 () Bool)

(assert (= bs!1874193 (and d!2199867 b!7043806)))

(declare-fun lambda!417485 () Int)

(assert (=> bs!1874193 (= (= (head!14297 (_1!37370 lt!2525920)) (h!74346 s!7408)) (= lambda!417485 lambda!417386))))

(declare-fun bs!1874194 () Bool)

(assert (= bs!1874194 (and d!2199867 d!2199613)))

(assert (=> bs!1874194 (= (= (head!14297 (_1!37370 lt!2525920)) (h!74346 s!7408)) (= lambda!417485 lambda!417433))))

(declare-fun bs!1874195 () Bool)

(assert (= bs!1874195 (and d!2199867 d!2199677)))

(assert (=> bs!1874195 (= (= (head!14297 (_1!37370 lt!2525920)) (h!74346 s!7408)) (= lambda!417485 lambda!417453))))

(declare-fun bs!1874196 () Bool)

(assert (= bs!1874196 (and d!2199867 d!2199843)))

(assert (=> bs!1874196 (= (= (head!14297 (_1!37370 lt!2525920)) (head!14297 (t!381795 s!7408))) (= lambda!417485 lambda!417477))))

(assert (=> d!2199867 true))

(assert (=> d!2199867 (= (derivationStepZipper!2954 lt!2525878 (head!14297 (_1!37370 lt!2525920))) (flatMap!2445 lt!2525878 lambda!417485))))

(declare-fun bs!1874197 () Bool)

(assert (= bs!1874197 d!2199867))

(declare-fun m!7757538 () Bool)

(assert (=> bs!1874197 m!7757538))

(assert (=> b!7044031 d!2199867))

(declare-fun d!2199869 () Bool)

(assert (=> d!2199869 (= (head!14297 (_1!37370 lt!2525920)) (h!74346 (_1!37370 lt!2525920)))))

(assert (=> b!7044031 d!2199869))

(declare-fun d!2199871 () Bool)

(assert (=> d!2199871 (= (tail!13614 (_1!37370 lt!2525920)) (t!381795 (_1!37370 lt!2525920)))))

(assert (=> b!7044031 d!2199871))

(declare-fun d!2199873 () Bool)

(declare-fun c!1311540 () Bool)

(assert (=> d!2199873 (= c!1311540 (is-Nil!67899 lt!2526069))))

(declare-fun e!4234817 () (Set Regex!17498))

(assert (=> d!2199873 (= (content!13597 lt!2526069) e!4234817)))

(declare-fun b!7044391 () Bool)

(assert (=> b!7044391 (= e!4234817 (as set.empty (Set Regex!17498)))))

(declare-fun b!7044392 () Bool)

(assert (=> b!7044392 (= e!4234817 (set.union (set.insert (h!74347 lt!2526069) (as set.empty (Set Regex!17498))) (content!13597 (t!381796 lt!2526069))))))

(assert (= (and d!2199873 c!1311540) b!7044391))

(assert (= (and d!2199873 (not c!1311540)) b!7044392))

(declare-fun m!7757540 () Bool)

(assert (=> b!7044392 m!7757540))

(declare-fun m!7757542 () Bool)

(assert (=> b!7044392 m!7757542))

(assert (=> d!2199589 d!2199873))

(declare-fun d!2199875 () Bool)

(declare-fun c!1311541 () Bool)

(assert (=> d!2199875 (= c!1311541 (is-Nil!67899 (exprs!6994 lt!2525892)))))

(declare-fun e!4234818 () (Set Regex!17498))

(assert (=> d!2199875 (= (content!13597 (exprs!6994 lt!2525892)) e!4234818)))

(declare-fun b!7044393 () Bool)

(assert (=> b!7044393 (= e!4234818 (as set.empty (Set Regex!17498)))))

(declare-fun b!7044394 () Bool)

(assert (=> b!7044394 (= e!4234818 (set.union (set.insert (h!74347 (exprs!6994 lt!2525892)) (as set.empty (Set Regex!17498))) (content!13597 (t!381796 (exprs!6994 lt!2525892)))))))

(assert (= (and d!2199875 c!1311541) b!7044393))

(assert (= (and d!2199875 (not c!1311541)) b!7044394))

(declare-fun m!7757544 () Bool)

(assert (=> b!7044394 m!7757544))

(declare-fun m!7757546 () Bool)

(assert (=> b!7044394 m!7757546))

(assert (=> d!2199589 d!2199875))

(declare-fun d!2199877 () Bool)

(declare-fun c!1311542 () Bool)

(assert (=> d!2199877 (= c!1311542 (is-Nil!67899 (exprs!6994 ct2!306)))))

(declare-fun e!4234819 () (Set Regex!17498))

(assert (=> d!2199877 (= (content!13597 (exprs!6994 ct2!306)) e!4234819)))

(declare-fun b!7044395 () Bool)

(assert (=> b!7044395 (= e!4234819 (as set.empty (Set Regex!17498)))))

(declare-fun b!7044396 () Bool)

(assert (=> b!7044396 (= e!4234819 (set.union (set.insert (h!74347 (exprs!6994 ct2!306)) (as set.empty (Set Regex!17498))) (content!13597 (t!381796 (exprs!6994 ct2!306)))))))

(assert (= (and d!2199877 c!1311542) b!7044395))

(assert (= (and d!2199877 (not c!1311542)) b!7044396))

(declare-fun m!7757548 () Bool)

(assert (=> b!7044396 m!7757548))

(declare-fun m!7757550 () Bool)

(assert (=> b!7044396 m!7757550))

(assert (=> d!2199589 d!2199877))

(declare-fun d!2199879 () Bool)

(declare-fun c!1311543 () Bool)

(assert (=> d!2199879 (= c!1311543 (isEmpty!39628 (tail!13614 (_1!37370 lt!2525920))))))

(declare-fun e!4234820 () Bool)

(assert (=> d!2199879 (= (matchZipper!3038 (derivationStepZipper!2954 lt!2525918 (head!14297 (_1!37370 lt!2525920))) (tail!13614 (_1!37370 lt!2525920))) e!4234820)))

(declare-fun b!7044397 () Bool)

(assert (=> b!7044397 (= e!4234820 (nullableZipper!2604 (derivationStepZipper!2954 lt!2525918 (head!14297 (_1!37370 lt!2525920)))))))

(declare-fun b!7044398 () Bool)

(assert (=> b!7044398 (= e!4234820 (matchZipper!3038 (derivationStepZipper!2954 (derivationStepZipper!2954 lt!2525918 (head!14297 (_1!37370 lt!2525920))) (head!14297 (tail!13614 (_1!37370 lt!2525920)))) (tail!13614 (tail!13614 (_1!37370 lt!2525920)))))))

(assert (= (and d!2199879 c!1311543) b!7044397))

(assert (= (and d!2199879 (not c!1311543)) b!7044398))

(assert (=> d!2199879 m!7756814))

(assert (=> d!2199879 m!7757526))

(assert (=> b!7044397 m!7756812))

(declare-fun m!7757552 () Bool)

(assert (=> b!7044397 m!7757552))

(assert (=> b!7044398 m!7756814))

(assert (=> b!7044398 m!7757530))

(assert (=> b!7044398 m!7756812))

(assert (=> b!7044398 m!7757530))

(declare-fun m!7757554 () Bool)

(assert (=> b!7044398 m!7757554))

(assert (=> b!7044398 m!7756814))

(assert (=> b!7044398 m!7757534))

(assert (=> b!7044398 m!7757554))

(assert (=> b!7044398 m!7757534))

(declare-fun m!7757556 () Bool)

(assert (=> b!7044398 m!7757556))

(assert (=> b!7043944 d!2199879))

(declare-fun bs!1874198 () Bool)

(declare-fun d!2199881 () Bool)

(assert (= bs!1874198 (and d!2199881 d!2199677)))

(declare-fun lambda!417486 () Int)

(assert (=> bs!1874198 (= (= (head!14297 (_1!37370 lt!2525920)) (h!74346 s!7408)) (= lambda!417486 lambda!417453))))

(declare-fun bs!1874199 () Bool)

(assert (= bs!1874199 (and d!2199881 d!2199843)))

(assert (=> bs!1874199 (= (= (head!14297 (_1!37370 lt!2525920)) (head!14297 (t!381795 s!7408))) (= lambda!417486 lambda!417477))))

(declare-fun bs!1874200 () Bool)

(assert (= bs!1874200 (and d!2199881 d!2199613)))

(assert (=> bs!1874200 (= (= (head!14297 (_1!37370 lt!2525920)) (h!74346 s!7408)) (= lambda!417486 lambda!417433))))

(declare-fun bs!1874201 () Bool)

(assert (= bs!1874201 (and d!2199881 d!2199867)))

(assert (=> bs!1874201 (= lambda!417486 lambda!417485)))

(declare-fun bs!1874202 () Bool)

(assert (= bs!1874202 (and d!2199881 b!7043806)))

(assert (=> bs!1874202 (= (= (head!14297 (_1!37370 lt!2525920)) (h!74346 s!7408)) (= lambda!417486 lambda!417386))))

(assert (=> d!2199881 true))

(assert (=> d!2199881 (= (derivationStepZipper!2954 lt!2525918 (head!14297 (_1!37370 lt!2525920))) (flatMap!2445 lt!2525918 lambda!417486))))

(declare-fun bs!1874203 () Bool)

(assert (= bs!1874203 d!2199881))

(declare-fun m!7757558 () Bool)

(assert (=> bs!1874203 m!7757558))

(assert (=> b!7043944 d!2199881))

(assert (=> b!7043944 d!2199869))

(assert (=> b!7043944 d!2199871))

(declare-fun b!7044399 () Bool)

(declare-fun e!4234822 () Bool)

(assert (=> b!7044399 (= e!4234822 (nullable!7209 (h!74347 (exprs!6994 (Context!12989 (t!381796 (exprs!6994 lt!2525892)))))))))

(declare-fun d!2199883 () Bool)

(declare-fun c!1311544 () Bool)

(assert (=> d!2199883 (= c!1311544 e!4234822)))

(declare-fun res!2875802 () Bool)

(assert (=> d!2199883 (=> (not res!2875802) (not e!4234822))))

(assert (=> d!2199883 (= res!2875802 (is-Cons!67899 (exprs!6994 (Context!12989 (t!381796 (exprs!6994 lt!2525892))))))))

(declare-fun e!4234823 () (Set Context!12988))

(assert (=> d!2199883 (= (derivationStepZipperUp!2108 (Context!12989 (t!381796 (exprs!6994 lt!2525892))) (h!74346 s!7408)) e!4234823)))

(declare-fun bm!639937 () Bool)

(declare-fun call!639942 () (Set Context!12988))

(assert (=> bm!639937 (= call!639942 (derivationStepZipperDown!2162 (h!74347 (exprs!6994 (Context!12989 (t!381796 (exprs!6994 lt!2525892))))) (Context!12989 (t!381796 (exprs!6994 (Context!12989 (t!381796 (exprs!6994 lt!2525892)))))) (h!74346 s!7408)))))

(declare-fun b!7044400 () Bool)

(assert (=> b!7044400 (= e!4234823 (set.union call!639942 (derivationStepZipperUp!2108 (Context!12989 (t!381796 (exprs!6994 (Context!12989 (t!381796 (exprs!6994 lt!2525892)))))) (h!74346 s!7408))))))

(declare-fun b!7044401 () Bool)

(declare-fun e!4234821 () (Set Context!12988))

(assert (=> b!7044401 (= e!4234823 e!4234821)))

(declare-fun c!1311545 () Bool)

(assert (=> b!7044401 (= c!1311545 (is-Cons!67899 (exprs!6994 (Context!12989 (t!381796 (exprs!6994 lt!2525892))))))))

(declare-fun b!7044402 () Bool)

(assert (=> b!7044402 (= e!4234821 call!639942)))

(declare-fun b!7044403 () Bool)

(assert (=> b!7044403 (= e!4234821 (as set.empty (Set Context!12988)))))

(assert (= (and d!2199883 res!2875802) b!7044399))

(assert (= (and d!2199883 c!1311544) b!7044400))

(assert (= (and d!2199883 (not c!1311544)) b!7044401))

(assert (= (and b!7044401 c!1311545) b!7044402))

(assert (= (and b!7044401 (not c!1311545)) b!7044403))

(assert (= (or b!7044400 b!7044402) bm!639937))

(declare-fun m!7757560 () Bool)

(assert (=> b!7044399 m!7757560))

(declare-fun m!7757562 () Bool)

(assert (=> bm!639937 m!7757562))

(declare-fun m!7757564 () Bool)

(assert (=> b!7044400 m!7757564))

(assert (=> b!7043956 d!2199883))

(declare-fun d!2199885 () Bool)

(declare-fun c!1311546 () Bool)

(assert (=> d!2199885 (= c!1311546 (isEmpty!39628 (t!381795 s!7408)))))

(declare-fun e!4234824 () Bool)

(assert (=> d!2199885 (= (matchZipper!3038 lt!2525907 (t!381795 s!7408)) e!4234824)))

(declare-fun b!7044404 () Bool)

(assert (=> b!7044404 (= e!4234824 (nullableZipper!2604 lt!2525907))))

(declare-fun b!7044405 () Bool)

(assert (=> b!7044405 (= e!4234824 (matchZipper!3038 (derivationStepZipper!2954 lt!2525907 (head!14297 (t!381795 s!7408))) (tail!13614 (t!381795 s!7408))))))

(assert (= (and d!2199885 c!1311546) b!7044404))

(assert (= (and d!2199885 (not c!1311546)) b!7044405))

(assert (=> d!2199885 m!7756776))

(assert (=> b!7044404 m!7756908))

(assert (=> b!7044405 m!7756780))

(assert (=> b!7044405 m!7756780))

(declare-fun m!7757566 () Bool)

(assert (=> b!7044405 m!7757566))

(assert (=> b!7044405 m!7756784))

(assert (=> b!7044405 m!7757566))

(assert (=> b!7044405 m!7756784))

(declare-fun m!7757568 () Bool)

(assert (=> b!7044405 m!7757568))

(assert (=> b!7044056 d!2199885))

(declare-fun d!2199887 () Bool)

(assert (=> d!2199887 (= (isEmpty!39628 (_1!37370 lt!2525920)) (is-Nil!67898 (_1!37370 lt!2525920)))))

(assert (=> d!2199663 d!2199887))

(assert (=> d!2199605 d!2199887))

(declare-fun bs!1874204 () Bool)

(declare-fun d!2199889 () Bool)

(assert (= bs!1874204 (and d!2199889 d!2199851)))

(declare-fun lambda!417487 () Int)

(assert (=> bs!1874204 (not (= lambda!417487 lambda!417481))))

(declare-fun bs!1874205 () Bool)

(assert (= bs!1874205 (and d!2199889 d!2199849)))

(assert (=> bs!1874205 (= lambda!417487 lambda!417480)))

(declare-fun bs!1874206 () Bool)

(assert (= bs!1874206 (and d!2199889 d!2199853)))

(assert (=> bs!1874206 (not (= lambda!417487 lambda!417484))))

(declare-fun bs!1874207 () Bool)

(assert (= bs!1874207 (and d!2199889 b!7043800)))

(assert (=> bs!1874207 (not (= lambda!417487 lambda!417383))))

(declare-fun bs!1874208 () Bool)

(assert (= bs!1874208 (and d!2199889 d!2199623)))

(assert (=> bs!1874208 (not (= lambda!417487 lambda!417436))))

(declare-fun bs!1874209 () Bool)

(assert (= bs!1874209 (and d!2199889 d!2199625)))

(assert (=> bs!1874209 (not (= lambda!417487 lambda!417439))))

(assert (=> d!2199889 (= (nullableZipper!2604 lt!2525891) (exists!3450 lt!2525891 lambda!417487))))

(declare-fun bs!1874210 () Bool)

(assert (= bs!1874210 d!2199889))

(declare-fun m!7757570 () Bool)

(assert (=> bs!1874210 m!7757570))

(assert (=> b!7044025 d!2199889))

(declare-fun b!7044406 () Bool)

(declare-fun e!4234826 () Bool)

(assert (=> b!7044406 (= e!4234826 (nullable!7209 (h!74347 (exprs!6994 (Context!12989 (t!381796 (exprs!6994 lt!2525916)))))))))

(declare-fun d!2199891 () Bool)

(declare-fun c!1311547 () Bool)

(assert (=> d!2199891 (= c!1311547 e!4234826)))

(declare-fun res!2875803 () Bool)

(assert (=> d!2199891 (=> (not res!2875803) (not e!4234826))))

(assert (=> d!2199891 (= res!2875803 (is-Cons!67899 (exprs!6994 (Context!12989 (t!381796 (exprs!6994 lt!2525916))))))))

(declare-fun e!4234827 () (Set Context!12988))

(assert (=> d!2199891 (= (derivationStepZipperUp!2108 (Context!12989 (t!381796 (exprs!6994 lt!2525916))) (h!74346 s!7408)) e!4234827)))

(declare-fun bm!639938 () Bool)

(declare-fun call!639943 () (Set Context!12988))

(assert (=> bm!639938 (= call!639943 (derivationStepZipperDown!2162 (h!74347 (exprs!6994 (Context!12989 (t!381796 (exprs!6994 lt!2525916))))) (Context!12989 (t!381796 (exprs!6994 (Context!12989 (t!381796 (exprs!6994 lt!2525916)))))) (h!74346 s!7408)))))

(declare-fun b!7044407 () Bool)

(assert (=> b!7044407 (= e!4234827 (set.union call!639943 (derivationStepZipperUp!2108 (Context!12989 (t!381796 (exprs!6994 (Context!12989 (t!381796 (exprs!6994 lt!2525916)))))) (h!74346 s!7408))))))

(declare-fun b!7044408 () Bool)

(declare-fun e!4234825 () (Set Context!12988))

(assert (=> b!7044408 (= e!4234827 e!4234825)))

(declare-fun c!1311548 () Bool)

(assert (=> b!7044408 (= c!1311548 (is-Cons!67899 (exprs!6994 (Context!12989 (t!381796 (exprs!6994 lt!2525916))))))))

(declare-fun b!7044409 () Bool)

(assert (=> b!7044409 (= e!4234825 call!639943)))

(declare-fun b!7044410 () Bool)

(assert (=> b!7044410 (= e!4234825 (as set.empty (Set Context!12988)))))

(assert (= (and d!2199891 res!2875803) b!7044406))

(assert (= (and d!2199891 c!1311547) b!7044407))

(assert (= (and d!2199891 (not c!1311547)) b!7044408))

(assert (= (and b!7044408 c!1311548) b!7044409))

(assert (= (and b!7044408 (not c!1311548)) b!7044410))

(assert (= (or b!7044407 b!7044409) bm!639938))

(declare-fun m!7757572 () Bool)

(assert (=> b!7044406 m!7757572))

(declare-fun m!7757574 () Bool)

(assert (=> bm!639938 m!7757574))

(declare-fun m!7757576 () Bool)

(assert (=> b!7044407 m!7757576))

(assert (=> b!7044017 d!2199891))

(declare-fun b!7044423 () Bool)

(declare-fun e!4234838 () Context!12988)

(assert (=> b!7044423 (= e!4234838 (getWitness!1529 (t!381797 (toList!10841 lt!2525914)) lambda!417383))))

(declare-fun b!7044424 () Bool)

(declare-fun e!4234839 () Context!12988)

(assert (=> b!7044424 (= e!4234839 (h!74348 (toList!10841 lt!2525914)))))

(declare-fun b!7044425 () Bool)

(declare-fun e!4234836 () Bool)

(declare-fun lt!2526186 () Context!12988)

(declare-fun contains!20471 (List!68024 Context!12988) Bool)

(assert (=> b!7044425 (= e!4234836 (contains!20471 (toList!10841 lt!2525914) lt!2526186))))

(declare-fun b!7044426 () Bool)

(assert (=> b!7044426 (= e!4234839 e!4234838)))

(declare-fun c!1311554 () Bool)

(assert (=> b!7044426 (= c!1311554 (is-Cons!67900 (toList!10841 lt!2525914)))))

(declare-fun d!2199893 () Bool)

(assert (=> d!2199893 e!4234836))

(declare-fun res!2875809 () Bool)

(assert (=> d!2199893 (=> (not res!2875809) (not e!4234836))))

(assert (=> d!2199893 (= res!2875809 (dynLambda!27479 lambda!417383 lt!2526186))))

(assert (=> d!2199893 (= lt!2526186 e!4234839)))

(declare-fun c!1311553 () Bool)

(declare-fun e!4234837 () Bool)

(assert (=> d!2199893 (= c!1311553 e!4234837)))

(declare-fun res!2875808 () Bool)

(assert (=> d!2199893 (=> (not res!2875808) (not e!4234837))))

(assert (=> d!2199893 (= res!2875808 (is-Cons!67900 (toList!10841 lt!2525914)))))

(assert (=> d!2199893 (exists!3448 (toList!10841 lt!2525914) lambda!417383)))

(assert (=> d!2199893 (= (getWitness!1529 (toList!10841 lt!2525914) lambda!417383) lt!2526186)))

(declare-fun b!7044427 () Bool)

(assert (=> b!7044427 (= e!4234837 (dynLambda!27479 lambda!417383 (h!74348 (toList!10841 lt!2525914))))))

(declare-fun b!7044428 () Bool)

(declare-fun lt!2526185 () Unit!161678)

(declare-fun Unit!161682 () Unit!161678)

(assert (=> b!7044428 (= lt!2526185 Unit!161682)))

(assert (=> b!7044428 false))

(declare-fun head!14299 (List!68024) Context!12988)

(assert (=> b!7044428 (= e!4234838 (head!14299 (toList!10841 lt!2525914)))))

(assert (= (and d!2199893 res!2875808) b!7044427))

(assert (= (and d!2199893 c!1311553) b!7044424))

(assert (= (and d!2199893 (not c!1311553)) b!7044426))

(assert (= (and b!7044426 c!1311554) b!7044423))

(assert (= (and b!7044426 (not c!1311554)) b!7044428))

(assert (= (and d!2199893 res!2875809) b!7044425))

(declare-fun b_lambda!267545 () Bool)

(assert (=> (not b_lambda!267545) (not d!2199893)))

(declare-fun b_lambda!267547 () Bool)

(assert (=> (not b_lambda!267547) (not b!7044427)))

(declare-fun m!7757578 () Bool)

(assert (=> b!7044427 m!7757578))

(declare-fun m!7757580 () Bool)

(assert (=> b!7044423 m!7757580))

(assert (=> b!7044428 m!7756612))

(declare-fun m!7757582 () Bool)

(assert (=> b!7044428 m!7757582))

(assert (=> b!7044425 m!7756612))

(declare-fun m!7757584 () Bool)

(assert (=> b!7044425 m!7757584))

(declare-fun m!7757586 () Bool)

(assert (=> d!2199893 m!7757586))

(assert (=> d!2199893 m!7756612))

(declare-fun m!7757588 () Bool)

(assert (=> d!2199893 m!7757588))

(assert (=> d!2199621 d!2199893))

(assert (=> d!2199621 d!2199617))

(declare-fun d!2199895 () Bool)

(declare-fun lt!2526189 () Bool)

(assert (=> d!2199895 (= lt!2526189 (exists!3448 (toList!10841 lt!2525914) lambda!417383))))

(declare-fun choose!53523 ((Set Context!12988) Int) Bool)

(assert (=> d!2199895 (= lt!2526189 (choose!53523 lt!2525914 lambda!417383))))

(assert (=> d!2199895 (= (exists!3450 lt!2525914 lambda!417383) lt!2526189)))

(declare-fun bs!1874211 () Bool)

(assert (= bs!1874211 d!2199895))

(assert (=> bs!1874211 m!7756612))

(assert (=> bs!1874211 m!7756612))

(assert (=> bs!1874211 m!7757588))

(declare-fun m!7757590 () Bool)

(assert (=> bs!1874211 m!7757590))

(assert (=> d!2199621 d!2199895))

(declare-fun d!2199897 () Bool)

(assert (=> d!2199897 true))

(declare-fun setRes!49415 () Bool)

(assert (=> d!2199897 setRes!49415))

(declare-fun condSetEmpty!49415 () Bool)

(declare-fun res!2875812 () (Set Context!12988))

(assert (=> d!2199897 (= condSetEmpty!49415 (= res!2875812 (as set.empty (Set Context!12988))))))

(assert (=> d!2199897 (= (choose!53507 lt!2525909 lambda!417386) res!2875812)))

(declare-fun setIsEmpty!49415 () Bool)

(assert (=> setIsEmpty!49415 setRes!49415))

(declare-fun setElem!49415 () Context!12988)

(declare-fun setNonEmpty!49415 () Bool)

(declare-fun tp!1937768 () Bool)

(declare-fun e!4234842 () Bool)

(assert (=> setNonEmpty!49415 (= setRes!49415 (and tp!1937768 (inv!86605 setElem!49415) e!4234842))))

(declare-fun setRest!49415 () (Set Context!12988))

(assert (=> setNonEmpty!49415 (= res!2875812 (set.union (set.insert setElem!49415 (as set.empty (Set Context!12988))) setRest!49415))))

(declare-fun b!7044431 () Bool)

(declare-fun tp!1937767 () Bool)

(assert (=> b!7044431 (= e!4234842 tp!1937767)))

(assert (= (and d!2199897 condSetEmpty!49415) setIsEmpty!49415))

(assert (= (and d!2199897 (not condSetEmpty!49415)) setNonEmpty!49415))

(assert (= setNonEmpty!49415 b!7044431))

(declare-fun m!7757592 () Bool)

(assert (=> setNonEmpty!49415 m!7757592))

(assert (=> d!2199681 d!2199897))

(assert (=> d!2199611 d!2199607))

(declare-fun d!2199899 () Bool)

(assert (=> d!2199899 (= (flatMap!2445 lt!2525891 lambda!417386) (dynLambda!27478 lambda!417386 lt!2525892))))

(assert (=> d!2199899 true))

(declare-fun _$13!4514 () Unit!161678)

(assert (=> d!2199899 (= (choose!53508 lt!2525891 lt!2525892 lambda!417386) _$13!4514)))

(declare-fun b_lambda!267549 () Bool)

(assert (=> (not b_lambda!267549) (not d!2199899)))

(declare-fun bs!1874212 () Bool)

(assert (= bs!1874212 d!2199899))

(assert (=> bs!1874212 m!7756572))

(assert (=> bs!1874212 m!7756824))

(assert (=> d!2199611 d!2199899))

(declare-fun bs!1874213 () Bool)

(declare-fun d!2199901 () Bool)

(assert (= bs!1874213 (and d!2199901 d!2199851)))

(declare-fun lambda!417488 () Int)

(assert (=> bs!1874213 (not (= lambda!417488 lambda!417481))))

(declare-fun bs!1874214 () Bool)

(assert (= bs!1874214 (and d!2199901 d!2199849)))

(assert (=> bs!1874214 (= lambda!417488 lambda!417480)))

(declare-fun bs!1874215 () Bool)

(assert (= bs!1874215 (and d!2199901 d!2199889)))

(assert (=> bs!1874215 (= lambda!417488 lambda!417487)))

(declare-fun bs!1874216 () Bool)

(assert (= bs!1874216 (and d!2199901 d!2199853)))

(assert (=> bs!1874216 (not (= lambda!417488 lambda!417484))))

(declare-fun bs!1874217 () Bool)

(assert (= bs!1874217 (and d!2199901 b!7043800)))

(assert (=> bs!1874217 (not (= lambda!417488 lambda!417383))))

(declare-fun bs!1874218 () Bool)

(assert (= bs!1874218 (and d!2199901 d!2199623)))

(assert (=> bs!1874218 (not (= lambda!417488 lambda!417436))))

(declare-fun bs!1874219 () Bool)

(assert (= bs!1874219 (and d!2199901 d!2199625)))

(assert (=> bs!1874219 (not (= lambda!417488 lambda!417439))))

(assert (=> d!2199901 (= (nullableZipper!2604 lt!2525902) (exists!3450 lt!2525902 lambda!417488))))

(declare-fun bs!1874220 () Bool)

(assert (= bs!1874220 d!2199901))

(declare-fun m!7757594 () Bool)

(assert (=> bs!1874220 m!7757594))

(assert (=> b!7043962 d!2199901))

(declare-fun c!1311559 () Bool)

(declare-fun d!2199903 () Bool)

(assert (=> d!2199903 (= c!1311559 (and (is-ElementMatch!17498 (ite c!1311407 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892))))) (= (c!1311360 (ite c!1311407 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892))))) (h!74346 s!7408))))))

(declare-fun e!4234844 () (Set Context!12988))

(assert (=> d!2199903 (= (derivationStepZipperDown!2162 (ite c!1311407 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892)))) (ite c!1311407 lt!2525890 (Context!12989 call!639880)) (h!74346 s!7408)) e!4234844)))

(declare-fun b!7044432 () Bool)

(declare-fun e!4234845 () (Set Context!12988))

(declare-fun call!639946 () (Set Context!12988))

(assert (=> b!7044432 (= e!4234845 call!639946)))

(declare-fun bm!639939 () Bool)

(declare-fun call!639949 () (Set Context!12988))

(declare-fun call!639948 () (Set Context!12988))

(assert (=> bm!639939 (= call!639949 call!639948)))

(declare-fun b!7044433 () Bool)

(declare-fun e!4234846 () (Set Context!12988))

(declare-fun call!639947 () (Set Context!12988))

(assert (=> b!7044433 (= e!4234846 (set.union call!639948 call!639947))))

(declare-fun b!7044434 () Bool)

(declare-fun e!4234843 () (Set Context!12988))

(assert (=> b!7044434 (= e!4234843 (as set.empty (Set Context!12988)))))

(declare-fun b!7044435 () Bool)

(declare-fun e!4234848 () (Set Context!12988))

(assert (=> b!7044435 (= e!4234848 e!4234845)))

(declare-fun c!1311557 () Bool)

(assert (=> b!7044435 (= c!1311557 (is-Concat!26343 (ite c!1311407 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892))))))))

(declare-fun b!7044436 () Bool)

(assert (=> b!7044436 (= e!4234844 (set.insert (ite c!1311407 lt!2525890 (Context!12989 call!639880)) (as set.empty (Set Context!12988))))))

(declare-fun b!7044437 () Bool)

(declare-fun c!1311555 () Bool)

(declare-fun e!4234847 () Bool)

(assert (=> b!7044437 (= c!1311555 e!4234847)))

(declare-fun res!2875813 () Bool)

(assert (=> b!7044437 (=> (not res!2875813) (not e!4234847))))

(assert (=> b!7044437 (= res!2875813 (is-Concat!26343 (ite c!1311407 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892))))))))

(assert (=> b!7044437 (= e!4234846 e!4234848)))

(declare-fun b!7044438 () Bool)

(declare-fun c!1311558 () Bool)

(assert (=> b!7044438 (= c!1311558 (is-Star!17498 (ite c!1311407 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892))))))))

(assert (=> b!7044438 (= e!4234845 e!4234843)))

(declare-fun b!7044439 () Bool)

(assert (=> b!7044439 (= e!4234844 e!4234846)))

(declare-fun c!1311556 () Bool)

(assert (=> b!7044439 (= c!1311556 (is-Union!17498 (ite c!1311407 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892))))))))

(declare-fun bm!639940 () Bool)

(declare-fun call!639944 () List!68023)

(assert (=> bm!639940 (= call!639947 (derivationStepZipperDown!2162 (ite c!1311556 (regTwo!35509 (ite c!1311407 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892))))) (regOne!35508 (ite c!1311407 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892)))))) (ite c!1311556 (ite c!1311407 lt!2525890 (Context!12989 call!639880)) (Context!12989 call!639944)) (h!74346 s!7408)))))

(declare-fun bm!639941 () Bool)

(assert (=> bm!639941 (= call!639946 call!639949)))

(declare-fun b!7044440 () Bool)

(assert (=> b!7044440 (= e!4234848 (set.union call!639947 call!639949))))

(declare-fun bm!639942 () Bool)

(assert (=> bm!639942 (= call!639944 ($colon$colon!2597 (exprs!6994 (ite c!1311407 lt!2525890 (Context!12989 call!639880))) (ite (or c!1311555 c!1311557) (regTwo!35508 (ite c!1311407 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892))))) (ite c!1311407 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892)))))))))

(declare-fun b!7044441 () Bool)

(assert (=> b!7044441 (= e!4234843 call!639946)))

(declare-fun bm!639943 () Bool)

(declare-fun call!639945 () List!68023)

(assert (=> bm!639943 (= call!639948 (derivationStepZipperDown!2162 (ite c!1311556 (regOne!35509 (ite c!1311407 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892))))) (ite c!1311555 (regTwo!35508 (ite c!1311407 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892))))) (ite c!1311557 (regOne!35508 (ite c!1311407 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892))))) (reg!17827 (ite c!1311407 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892)))))))) (ite (or c!1311556 c!1311555) (ite c!1311407 lt!2525890 (Context!12989 call!639880)) (Context!12989 call!639945)) (h!74346 s!7408)))))

(declare-fun bm!639944 () Bool)

(assert (=> bm!639944 (= call!639945 call!639944)))

(declare-fun b!7044442 () Bool)

(assert (=> b!7044442 (= e!4234847 (nullable!7209 (regOne!35508 (ite c!1311407 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892)))))))))

(assert (= (and d!2199903 c!1311559) b!7044436))

(assert (= (and d!2199903 (not c!1311559)) b!7044439))

(assert (= (and b!7044439 c!1311556) b!7044433))

(assert (= (and b!7044439 (not c!1311556)) b!7044437))

(assert (= (and b!7044437 res!2875813) b!7044442))

(assert (= (and b!7044437 c!1311555) b!7044440))

(assert (= (and b!7044437 (not c!1311555)) b!7044435))

(assert (= (and b!7044435 c!1311557) b!7044432))

(assert (= (and b!7044435 (not c!1311557)) b!7044438))

(assert (= (and b!7044438 c!1311558) b!7044441))

(assert (= (and b!7044438 (not c!1311558)) b!7044434))

(assert (= (or b!7044432 b!7044441) bm!639944))

(assert (= (or b!7044432 b!7044441) bm!639941))

(assert (= (or b!7044440 bm!639941) bm!639939))

(assert (= (or b!7044440 bm!639944) bm!639942))

(assert (= (or b!7044433 bm!639939) bm!639943))

(assert (= (or b!7044433 b!7044440) bm!639940))

(declare-fun m!7757596 () Bool)

(assert (=> b!7044442 m!7757596))

(declare-fun m!7757598 () Bool)

(assert (=> bm!639942 m!7757598))

(declare-fun m!7757600 () Bool)

(assert (=> b!7044436 m!7757600))

(declare-fun m!7757602 () Bool)

(assert (=> bm!639943 m!7757602))

(declare-fun m!7757604 () Bool)

(assert (=> bm!639940 m!7757604))

(assert (=> bm!639876 d!2199903))

(declare-fun d!2199905 () Bool)

(declare-fun c!1311560 () Bool)

(assert (=> d!2199905 (= c!1311560 (isEmpty!39628 (tail!13614 (_2!37370 lt!2525920))))))

(declare-fun e!4234849 () Bool)

(assert (=> d!2199905 (= (matchZipper!3038 (derivationStepZipper!2954 lt!2525907 (head!14297 (_2!37370 lt!2525920))) (tail!13614 (_2!37370 lt!2525920))) e!4234849)))

(declare-fun b!7044443 () Bool)

(assert (=> b!7044443 (= e!4234849 (nullableZipper!2604 (derivationStepZipper!2954 lt!2525907 (head!14297 (_2!37370 lt!2525920)))))))

(declare-fun b!7044444 () Bool)

(assert (=> b!7044444 (= e!4234849 (matchZipper!3038 (derivationStepZipper!2954 (derivationStepZipper!2954 lt!2525907 (head!14297 (_2!37370 lt!2525920))) (head!14297 (tail!13614 (_2!37370 lt!2525920)))) (tail!13614 (tail!13614 (_2!37370 lt!2525920)))))))

(assert (= (and d!2199905 c!1311560) b!7044443))

(assert (= (and d!2199905 (not c!1311560)) b!7044444))

(assert (=> d!2199905 m!7756914))

(declare-fun m!7757606 () Bool)

(assert (=> d!2199905 m!7757606))

(assert (=> b!7044443 m!7756912))

(declare-fun m!7757608 () Bool)

(assert (=> b!7044443 m!7757608))

(assert (=> b!7044444 m!7756914))

(declare-fun m!7757610 () Bool)

(assert (=> b!7044444 m!7757610))

(assert (=> b!7044444 m!7756912))

(assert (=> b!7044444 m!7757610))

(declare-fun m!7757612 () Bool)

(assert (=> b!7044444 m!7757612))

(assert (=> b!7044444 m!7756914))

(declare-fun m!7757614 () Bool)

(assert (=> b!7044444 m!7757614))

(assert (=> b!7044444 m!7757612))

(assert (=> b!7044444 m!7757614))

(declare-fun m!7757616 () Bool)

(assert (=> b!7044444 m!7757616))

(assert (=> b!7044022 d!2199905))

(declare-fun bs!1874221 () Bool)

(declare-fun d!2199907 () Bool)

(assert (= bs!1874221 (and d!2199907 d!2199677)))

(declare-fun lambda!417489 () Int)

(assert (=> bs!1874221 (= (= (head!14297 (_2!37370 lt!2525920)) (h!74346 s!7408)) (= lambda!417489 lambda!417453))))

(declare-fun bs!1874222 () Bool)

(assert (= bs!1874222 (and d!2199907 d!2199881)))

(assert (=> bs!1874222 (= (= (head!14297 (_2!37370 lt!2525920)) (head!14297 (_1!37370 lt!2525920))) (= lambda!417489 lambda!417486))))

(declare-fun bs!1874223 () Bool)

(assert (= bs!1874223 (and d!2199907 d!2199843)))

(assert (=> bs!1874223 (= (= (head!14297 (_2!37370 lt!2525920)) (head!14297 (t!381795 s!7408))) (= lambda!417489 lambda!417477))))

(declare-fun bs!1874224 () Bool)

(assert (= bs!1874224 (and d!2199907 d!2199613)))

(assert (=> bs!1874224 (= (= (head!14297 (_2!37370 lt!2525920)) (h!74346 s!7408)) (= lambda!417489 lambda!417433))))

(declare-fun bs!1874225 () Bool)

(assert (= bs!1874225 (and d!2199907 d!2199867)))

(assert (=> bs!1874225 (= (= (head!14297 (_2!37370 lt!2525920)) (head!14297 (_1!37370 lt!2525920))) (= lambda!417489 lambda!417485))))

(declare-fun bs!1874226 () Bool)

(assert (= bs!1874226 (and d!2199907 b!7043806)))

(assert (=> bs!1874226 (= (= (head!14297 (_2!37370 lt!2525920)) (h!74346 s!7408)) (= lambda!417489 lambda!417386))))

(assert (=> d!2199907 true))

(assert (=> d!2199907 (= (derivationStepZipper!2954 lt!2525907 (head!14297 (_2!37370 lt!2525920))) (flatMap!2445 lt!2525907 lambda!417489))))

(declare-fun bs!1874227 () Bool)

(assert (= bs!1874227 d!2199907))

(declare-fun m!7757618 () Bool)

(assert (=> bs!1874227 m!7757618))

(assert (=> b!7044022 d!2199907))

(declare-fun d!2199909 () Bool)

(assert (=> d!2199909 (= (head!14297 (_2!37370 lt!2525920)) (h!74346 (_2!37370 lt!2525920)))))

(assert (=> b!7044022 d!2199909))

(declare-fun d!2199911 () Bool)

(assert (=> d!2199911 (= (tail!13614 (_2!37370 lt!2525920)) (t!381795 (_2!37370 lt!2525920)))))

(assert (=> b!7044022 d!2199911))

(declare-fun d!2199913 () Bool)

(assert (=> d!2199913 (= (isEmpty!39628 (_2!37370 lt!2525920)) (is-Nil!67898 (_2!37370 lt!2525920)))))

(assert (=> d!2199639 d!2199913))

(declare-fun bs!1874228 () Bool)

(declare-fun d!2199915 () Bool)

(assert (= bs!1874228 (and d!2199915 d!2199851)))

(declare-fun lambda!417490 () Int)

(assert (=> bs!1874228 (not (= lambda!417490 lambda!417481))))

(declare-fun bs!1874229 () Bool)

(assert (= bs!1874229 (and d!2199915 d!2199849)))

(assert (=> bs!1874229 (= lambda!417490 lambda!417480)))

(declare-fun bs!1874230 () Bool)

(assert (= bs!1874230 (and d!2199915 d!2199889)))

(assert (=> bs!1874230 (= lambda!417490 lambda!417487)))

(declare-fun bs!1874231 () Bool)

(assert (= bs!1874231 (and d!2199915 d!2199853)))

(assert (=> bs!1874231 (not (= lambda!417490 lambda!417484))))

(declare-fun bs!1874232 () Bool)

(assert (= bs!1874232 (and d!2199915 b!7043800)))

(assert (=> bs!1874232 (not (= lambda!417490 lambda!417383))))

(declare-fun bs!1874233 () Bool)

(assert (= bs!1874233 (and d!2199915 d!2199623)))

(assert (=> bs!1874233 (not (= lambda!417490 lambda!417436))))

(declare-fun bs!1874234 () Bool)

(assert (= bs!1874234 (and d!2199915 d!2199625)))

(assert (=> bs!1874234 (not (= lambda!417490 lambda!417439))))

(declare-fun bs!1874235 () Bool)

(assert (= bs!1874235 (and d!2199915 d!2199901)))

(assert (=> bs!1874235 (= lambda!417490 lambda!417488)))

(assert (=> d!2199915 (= (nullableZipper!2604 lt!2525914) (exists!3450 lt!2525914 lambda!417490))))

(declare-fun bs!1874236 () Bool)

(assert (= bs!1874236 d!2199915))

(declare-fun m!7757620 () Bool)

(assert (=> bs!1874236 m!7757620))

(assert (=> b!7044023 d!2199915))

(declare-fun d!2199917 () Bool)

(assert (=> d!2199917 (= (flatMap!2445 lt!2525891 lambda!417433) (choose!53507 lt!2525891 lambda!417433))))

(declare-fun bs!1874237 () Bool)

(assert (= bs!1874237 d!2199917))

(declare-fun m!7757622 () Bool)

(assert (=> bs!1874237 m!7757622))

(assert (=> d!2199613 d!2199917))

(declare-fun b!7044445 () Bool)

(declare-fun e!4234851 () Bool)

(assert (=> b!7044445 (= e!4234851 (nullable!7209 (h!74347 (exprs!6994 (Context!12989 (t!381796 (exprs!6994 lt!2525923)))))))))

(declare-fun d!2199919 () Bool)

(declare-fun c!1311561 () Bool)

(assert (=> d!2199919 (= c!1311561 e!4234851)))

(declare-fun res!2875814 () Bool)

(assert (=> d!2199919 (=> (not res!2875814) (not e!4234851))))

(assert (=> d!2199919 (= res!2875814 (is-Cons!67899 (exprs!6994 (Context!12989 (t!381796 (exprs!6994 lt!2525923))))))))

(declare-fun e!4234852 () (Set Context!12988))

(assert (=> d!2199919 (= (derivationStepZipperUp!2108 (Context!12989 (t!381796 (exprs!6994 lt!2525923))) (h!74346 s!7408)) e!4234852)))

(declare-fun bm!639945 () Bool)

(declare-fun call!639950 () (Set Context!12988))

(assert (=> bm!639945 (= call!639950 (derivationStepZipperDown!2162 (h!74347 (exprs!6994 (Context!12989 (t!381796 (exprs!6994 lt!2525923))))) (Context!12989 (t!381796 (exprs!6994 (Context!12989 (t!381796 (exprs!6994 lt!2525923)))))) (h!74346 s!7408)))))

(declare-fun b!7044446 () Bool)

(assert (=> b!7044446 (= e!4234852 (set.union call!639950 (derivationStepZipperUp!2108 (Context!12989 (t!381796 (exprs!6994 (Context!12989 (t!381796 (exprs!6994 lt!2525923)))))) (h!74346 s!7408))))))

(declare-fun b!7044447 () Bool)

(declare-fun e!4234850 () (Set Context!12988))

(assert (=> b!7044447 (= e!4234852 e!4234850)))

(declare-fun c!1311562 () Bool)

(assert (=> b!7044447 (= c!1311562 (is-Cons!67899 (exprs!6994 (Context!12989 (t!381796 (exprs!6994 lt!2525923))))))))

(declare-fun b!7044448 () Bool)

(assert (=> b!7044448 (= e!4234850 call!639950)))

(declare-fun b!7044449 () Bool)

(assert (=> b!7044449 (= e!4234850 (as set.empty (Set Context!12988)))))

(assert (= (and d!2199919 res!2875814) b!7044445))

(assert (= (and d!2199919 c!1311561) b!7044446))

(assert (= (and d!2199919 (not c!1311561)) b!7044447))

(assert (= (and b!7044447 c!1311562) b!7044448))

(assert (= (and b!7044447 (not c!1311562)) b!7044449))

(assert (= (or b!7044446 b!7044448) bm!639945))

(declare-fun m!7757624 () Bool)

(assert (=> b!7044445 m!7757624))

(declare-fun m!7757626 () Bool)

(assert (=> bm!639945 m!7757626))

(declare-fun m!7757628 () Bool)

(assert (=> b!7044446 m!7757628))

(assert (=> b!7044083 d!2199919))

(declare-fun b!7044464 () Bool)

(declare-fun e!4234867 () Bool)

(declare-fun e!4234868 () Bool)

(assert (=> b!7044464 (= e!4234867 e!4234868)))

(declare-fun c!1311565 () Bool)

(assert (=> b!7044464 (= c!1311565 (is-Union!17498 (h!74347 (exprs!6994 lt!2525892))))))

(declare-fun b!7044465 () Bool)

(declare-fun e!4234865 () Bool)

(declare-fun call!639956 () Bool)

(assert (=> b!7044465 (= e!4234865 call!639956)))

(declare-fun bm!639950 () Bool)

(declare-fun call!639955 () Bool)

(assert (=> bm!639950 (= call!639955 (nullable!7209 (ite c!1311565 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))))))))

(declare-fun b!7044466 () Bool)

(declare-fun e!4234870 () Bool)

(declare-fun e!4234866 () Bool)

(assert (=> b!7044466 (= e!4234870 e!4234866)))

(declare-fun res!2875827 () Bool)

(assert (=> b!7044466 (=> (not res!2875827) (not e!4234866))))

(assert (=> b!7044466 (= res!2875827 (and (not (is-EmptyLang!17498 (h!74347 (exprs!6994 lt!2525892)))) (not (is-ElementMatch!17498 (h!74347 (exprs!6994 lt!2525892))))))))

(declare-fun bm!639951 () Bool)

(assert (=> bm!639951 (= call!639956 (nullable!7209 (ite c!1311565 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892))))))))

(declare-fun b!7044467 () Bool)

(declare-fun e!4234869 () Bool)

(assert (=> b!7044467 (= e!4234869 call!639955)))

(declare-fun b!7044469 () Bool)

(assert (=> b!7044469 (= e!4234868 e!4234865)))

(declare-fun res!2875826 () Bool)

(assert (=> b!7044469 (= res!2875826 call!639955)))

(assert (=> b!7044469 (=> res!2875826 e!4234865)))

(declare-fun b!7044470 () Bool)

(assert (=> b!7044470 (= e!4234868 e!4234869)))

(declare-fun res!2875828 () Bool)

(assert (=> b!7044470 (= res!2875828 call!639956)))

(assert (=> b!7044470 (=> (not res!2875828) (not e!4234869))))

(declare-fun d!2199921 () Bool)

(declare-fun res!2875829 () Bool)

(assert (=> d!2199921 (=> res!2875829 e!4234870)))

(assert (=> d!2199921 (= res!2875829 (is-EmptyExpr!17498 (h!74347 (exprs!6994 lt!2525892))))))

(assert (=> d!2199921 (= (nullableFct!2749 (h!74347 (exprs!6994 lt!2525892))) e!4234870)))

(declare-fun b!7044468 () Bool)

(assert (=> b!7044468 (= e!4234866 e!4234867)))

(declare-fun res!2875825 () Bool)

(assert (=> b!7044468 (=> res!2875825 e!4234867)))

(assert (=> b!7044468 (= res!2875825 (is-Star!17498 (h!74347 (exprs!6994 lt!2525892))))))

(assert (= (and d!2199921 (not res!2875829)) b!7044466))

(assert (= (and b!7044466 res!2875827) b!7044468))

(assert (= (and b!7044468 (not res!2875825)) b!7044464))

(assert (= (and b!7044464 c!1311565) b!7044469))

(assert (= (and b!7044464 (not c!1311565)) b!7044470))

(assert (= (and b!7044469 (not res!2875826)) b!7044465))

(assert (= (and b!7044470 res!2875828) b!7044467))

(assert (= (or b!7044465 b!7044470) bm!639951))

(assert (= (or b!7044469 b!7044467) bm!639950))

(declare-fun m!7757630 () Bool)

(assert (=> bm!639950 m!7757630))

(declare-fun m!7757632 () Bool)

(assert (=> bm!639951 m!7757632))

(assert (=> d!2199647 d!2199921))

(assert (=> b!7044057 d!2199813))

(declare-fun d!2199923 () Bool)

(assert (=> d!2199923 (= (nullable!7209 (h!74347 (exprs!6994 lt!2525890))) (nullableFct!2749 (h!74347 (exprs!6994 lt!2525890))))))

(declare-fun bs!1874238 () Bool)

(assert (= bs!1874238 d!2199923))

(declare-fun m!7757634 () Bool)

(assert (=> bs!1874238 m!7757634))

(assert (=> b!7043974 d!2199923))

(declare-fun d!2199925 () Bool)

(declare-fun c!1311566 () Bool)

(assert (=> d!2199925 (= c!1311566 (isEmpty!39628 s!7408))))

(declare-fun e!4234871 () Bool)

(assert (=> d!2199925 (= (matchZipper!3038 (set.insert lt!2526088 (as set.empty (Set Context!12988))) s!7408) e!4234871)))

(declare-fun b!7044471 () Bool)

(assert (=> b!7044471 (= e!4234871 (nullableZipper!2604 (set.insert lt!2526088 (as set.empty (Set Context!12988)))))))

(declare-fun b!7044472 () Bool)

(assert (=> b!7044472 (= e!4234871 (matchZipper!3038 (derivationStepZipper!2954 (set.insert lt!2526088 (as set.empty (Set Context!12988))) (head!14297 s!7408)) (tail!13614 s!7408)))))

(assert (= (and d!2199925 c!1311566) b!7044471))

(assert (= (and d!2199925 (not c!1311566)) b!7044472))

(assert (=> d!2199925 m!7756842))

(assert (=> b!7044471 m!7757044))

(declare-fun m!7757636 () Bool)

(assert (=> b!7044471 m!7757636))

(assert (=> b!7044472 m!7756846))

(assert (=> b!7044472 m!7757044))

(assert (=> b!7044472 m!7756846))

(declare-fun m!7757638 () Bool)

(assert (=> b!7044472 m!7757638))

(assert (=> b!7044472 m!7756850))

(assert (=> b!7044472 m!7757638))

(assert (=> b!7044472 m!7756850))

(declare-fun m!7757640 () Bool)

(assert (=> b!7044472 m!7757640))

(assert (=> bs!1874126 d!2199925))

(declare-fun d!2199927 () Bool)

(declare-fun c!1311567 () Bool)

(assert (=> d!2199927 (= c!1311567 (isEmpty!39628 (tail!13614 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920)))))))

(declare-fun e!4234872 () Bool)

(assert (=> d!2199927 (= (matchZipper!3038 (derivationStepZipper!2954 lt!2525891 (head!14297 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920)))) (tail!13614 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920)))) e!4234872)))

(declare-fun b!7044473 () Bool)

(assert (=> b!7044473 (= e!4234872 (nullableZipper!2604 (derivationStepZipper!2954 lt!2525891 (head!14297 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920))))))))

(declare-fun b!7044474 () Bool)

(assert (=> b!7044474 (= e!4234872 (matchZipper!3038 (derivationStepZipper!2954 (derivationStepZipper!2954 lt!2525891 (head!14297 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920)))) (head!14297 (tail!13614 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920))))) (tail!13614 (tail!13614 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920))))))))

(assert (= (and d!2199927 c!1311567) b!7044473))

(assert (= (and d!2199927 (not c!1311567)) b!7044474))

(assert (=> d!2199927 m!7756938))

(declare-fun m!7757642 () Bool)

(assert (=> d!2199927 m!7757642))

(assert (=> b!7044473 m!7756936))

(declare-fun m!7757644 () Bool)

(assert (=> b!7044473 m!7757644))

(assert (=> b!7044474 m!7756938))

(declare-fun m!7757646 () Bool)

(assert (=> b!7044474 m!7757646))

(assert (=> b!7044474 m!7756936))

(assert (=> b!7044474 m!7757646))

(declare-fun m!7757648 () Bool)

(assert (=> b!7044474 m!7757648))

(assert (=> b!7044474 m!7756938))

(declare-fun m!7757650 () Bool)

(assert (=> b!7044474 m!7757650))

(assert (=> b!7044474 m!7757648))

(assert (=> b!7044474 m!7757650))

(declare-fun m!7757652 () Bool)

(assert (=> b!7044474 m!7757652))

(assert (=> b!7044026 d!2199927))

(declare-fun bs!1874239 () Bool)

(declare-fun d!2199929 () Bool)

(assert (= bs!1874239 (and d!2199929 d!2199677)))

(declare-fun lambda!417491 () Int)

(assert (=> bs!1874239 (= (= (head!14297 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920))) (h!74346 s!7408)) (= lambda!417491 lambda!417453))))

(declare-fun bs!1874240 () Bool)

(assert (= bs!1874240 (and d!2199929 d!2199881)))

(assert (=> bs!1874240 (= (= (head!14297 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920))) (head!14297 (_1!37370 lt!2525920))) (= lambda!417491 lambda!417486))))

(declare-fun bs!1874241 () Bool)

(assert (= bs!1874241 (and d!2199929 d!2199613)))

(assert (=> bs!1874241 (= (= (head!14297 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920))) (h!74346 s!7408)) (= lambda!417491 lambda!417433))))

(declare-fun bs!1874242 () Bool)

(assert (= bs!1874242 (and d!2199929 d!2199867)))

(assert (=> bs!1874242 (= (= (head!14297 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920))) (head!14297 (_1!37370 lt!2525920))) (= lambda!417491 lambda!417485))))

(declare-fun bs!1874243 () Bool)

(assert (= bs!1874243 (and d!2199929 b!7043806)))

(assert (=> bs!1874243 (= (= (head!14297 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920))) (h!74346 s!7408)) (= lambda!417491 lambda!417386))))

(declare-fun bs!1874244 () Bool)

(assert (= bs!1874244 (and d!2199929 d!2199843)))

(assert (=> bs!1874244 (= (= (head!14297 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920))) (head!14297 (t!381795 s!7408))) (= lambda!417491 lambda!417477))))

(declare-fun bs!1874245 () Bool)

(assert (= bs!1874245 (and d!2199929 d!2199907)))

(assert (=> bs!1874245 (= (= (head!14297 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920))) (head!14297 (_2!37370 lt!2525920))) (= lambda!417491 lambda!417489))))

(assert (=> d!2199929 true))

(assert (=> d!2199929 (= (derivationStepZipper!2954 lt!2525891 (head!14297 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920)))) (flatMap!2445 lt!2525891 lambda!417491))))

(declare-fun bs!1874246 () Bool)

(assert (= bs!1874246 d!2199929))

(declare-fun m!7757654 () Bool)

(assert (=> bs!1874246 m!7757654))

(assert (=> b!7044026 d!2199929))

(declare-fun d!2199931 () Bool)

(assert (=> d!2199931 (= (head!14297 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920))) (h!74346 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920))))))

(assert (=> b!7044026 d!2199931))

(declare-fun d!2199933 () Bool)

(assert (=> d!2199933 (= (tail!13614 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920))) (t!381795 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920))))))

(assert (=> b!7044026 d!2199933))

(declare-fun d!2199935 () Bool)

(declare-fun e!4234873 () Bool)

(assert (=> d!2199935 e!4234873))

(declare-fun res!2875830 () Bool)

(assert (=> d!2199935 (=> (not res!2875830) (not e!4234873))))

(declare-fun lt!2526190 () List!68023)

(assert (=> d!2199935 (= res!2875830 (= (content!13597 lt!2526190) (set.union (content!13597 (t!381796 lt!2525921)) (content!13597 (exprs!6994 ct2!306)))))))

(declare-fun e!4234874 () List!68023)

(assert (=> d!2199935 (= lt!2526190 e!4234874)))

(declare-fun c!1311568 () Bool)

(assert (=> d!2199935 (= c!1311568 (is-Nil!67899 (t!381796 lt!2525921)))))

(assert (=> d!2199935 (= (++!15572 (t!381796 lt!2525921) (exprs!6994 ct2!306)) lt!2526190)))

(declare-fun b!7044478 () Bool)

(assert (=> b!7044478 (= e!4234873 (or (not (= (exprs!6994 ct2!306) Nil!67899)) (= lt!2526190 (t!381796 lt!2525921))))))

(declare-fun b!7044477 () Bool)

(declare-fun res!2875831 () Bool)

(assert (=> b!7044477 (=> (not res!2875831) (not e!4234873))))

(assert (=> b!7044477 (= res!2875831 (= (size!41104 lt!2526190) (+ (size!41104 (t!381796 lt!2525921)) (size!41104 (exprs!6994 ct2!306)))))))

(declare-fun b!7044475 () Bool)

(assert (=> b!7044475 (= e!4234874 (exprs!6994 ct2!306))))

(declare-fun b!7044476 () Bool)

(assert (=> b!7044476 (= e!4234874 (Cons!67899 (h!74347 (t!381796 lt!2525921)) (++!15572 (t!381796 (t!381796 lt!2525921)) (exprs!6994 ct2!306))))))

(assert (= (and d!2199935 c!1311568) b!7044475))

(assert (= (and d!2199935 (not c!1311568)) b!7044476))

(assert (= (and d!2199935 res!2875830) b!7044477))

(assert (= (and b!7044477 res!2875831) b!7044478))

(declare-fun m!7757656 () Bool)

(assert (=> d!2199935 m!7757656))

(declare-fun m!7757658 () Bool)

(assert (=> d!2199935 m!7757658))

(assert (=> d!2199935 m!7756746))

(declare-fun m!7757660 () Bool)

(assert (=> b!7044477 m!7757660))

(declare-fun m!7757662 () Bool)

(assert (=> b!7044477 m!7757662))

(assert (=> b!7044477 m!7756752))

(declare-fun m!7757664 () Bool)

(assert (=> b!7044476 m!7757664))

(assert (=> b!7043980 d!2199935))

(assert (=> b!7044069 d!2199811))

(declare-fun d!2199937 () Bool)

(declare-fun c!1311569 () Bool)

(assert (=> d!2199937 (= c!1311569 (isEmpty!39628 (t!381795 s!7408)))))

(declare-fun e!4234875 () Bool)

(assert (=> d!2199937 (= (matchZipper!3038 (set.union lt!2525889 lt!2525902) (t!381795 s!7408)) e!4234875)))

(declare-fun b!7044479 () Bool)

(assert (=> b!7044479 (= e!4234875 (nullableZipper!2604 (set.union lt!2525889 lt!2525902)))))

(declare-fun b!7044480 () Bool)

(assert (=> b!7044480 (= e!4234875 (matchZipper!3038 (derivationStepZipper!2954 (set.union lt!2525889 lt!2525902) (head!14297 (t!381795 s!7408))) (tail!13614 (t!381795 s!7408))))))

(assert (= (and d!2199937 c!1311569) b!7044479))

(assert (= (and d!2199937 (not c!1311569)) b!7044480))

(assert (=> d!2199937 m!7756776))

(declare-fun m!7757666 () Bool)

(assert (=> b!7044479 m!7757666))

(assert (=> b!7044480 m!7756780))

(assert (=> b!7044480 m!7756780))

(declare-fun m!7757668 () Bool)

(assert (=> b!7044480 m!7757668))

(assert (=> b!7044480 m!7756784))

(assert (=> b!7044480 m!7757668))

(assert (=> b!7044480 m!7756784))

(declare-fun m!7757670 () Bool)

(assert (=> b!7044480 m!7757670))

(assert (=> d!2199595 d!2199937))

(assert (=> d!2199595 d!2199597))

(declare-fun d!2199939 () Bool)

(declare-fun e!4234878 () Bool)

(assert (=> d!2199939 (= (matchZipper!3038 (set.union lt!2525889 lt!2525902) (t!381795 s!7408)) e!4234878)))

(declare-fun res!2875834 () Bool)

(assert (=> d!2199939 (=> res!2875834 e!4234878)))

(assert (=> d!2199939 (= res!2875834 (matchZipper!3038 lt!2525889 (t!381795 s!7408)))))

(assert (=> d!2199939 true))

(declare-fun _$48!2513 () Unit!161678)

(assert (=> d!2199939 (= (choose!53506 lt!2525889 lt!2525902 (t!381795 s!7408)) _$48!2513)))

(declare-fun b!7044483 () Bool)

(assert (=> b!7044483 (= e!4234878 (matchZipper!3038 lt!2525902 (t!381795 s!7408)))))

(assert (= (and d!2199939 (not res!2875834)) b!7044483))

(assert (=> d!2199939 m!7756772))

(assert (=> d!2199939 m!7756582))

(assert (=> b!7044483 m!7756530))

(assert (=> d!2199595 d!2199939))

(declare-fun d!2199941 () Bool)

(declare-fun res!2875839 () Bool)

(declare-fun e!4234883 () Bool)

(assert (=> d!2199941 (=> res!2875839 e!4234883)))

(assert (=> d!2199941 (= res!2875839 (is-Nil!67900 lt!2526085))))

(assert (=> d!2199941 (= (noDuplicate!2650 lt!2526085) e!4234883)))

(declare-fun b!7044488 () Bool)

(declare-fun e!4234884 () Bool)

(assert (=> b!7044488 (= e!4234883 e!4234884)))

(declare-fun res!2875840 () Bool)

(assert (=> b!7044488 (=> (not res!2875840) (not e!4234884))))

(assert (=> b!7044488 (= res!2875840 (not (contains!20471 (t!381797 lt!2526085) (h!74348 lt!2526085))))))

(declare-fun b!7044489 () Bool)

(assert (=> b!7044489 (= e!4234884 (noDuplicate!2650 (t!381797 lt!2526085)))))

(assert (= (and d!2199941 (not res!2875839)) b!7044488))

(assert (= (and b!7044488 res!2875840) b!7044489))

(declare-fun m!7757672 () Bool)

(assert (=> b!7044488 m!7757672))

(declare-fun m!7757674 () Bool)

(assert (=> b!7044489 m!7757674))

(assert (=> d!2199617 d!2199941))

(declare-fun d!2199943 () Bool)

(declare-fun e!4234891 () Bool)

(assert (=> d!2199943 e!4234891))

(declare-fun res!2875845 () Bool)

(assert (=> d!2199943 (=> (not res!2875845) (not e!4234891))))

(declare-fun res!2875846 () List!68024)

(assert (=> d!2199943 (= res!2875845 (noDuplicate!2650 res!2875846))))

(declare-fun e!4234893 () Bool)

(assert (=> d!2199943 e!4234893))

(assert (=> d!2199943 (= (choose!53509 lt!2525914) res!2875846)))

(declare-fun b!7044497 () Bool)

(declare-fun e!4234892 () Bool)

(declare-fun tp!1937773 () Bool)

(assert (=> b!7044497 (= e!4234892 tp!1937773)))

(declare-fun tp!1937774 () Bool)

(declare-fun b!7044496 () Bool)

(assert (=> b!7044496 (= e!4234893 (and (inv!86605 (h!74348 res!2875846)) e!4234892 tp!1937774))))

(declare-fun b!7044498 () Bool)

(assert (=> b!7044498 (= e!4234891 (= (content!13598 res!2875846) lt!2525914))))

(assert (= b!7044496 b!7044497))

(assert (= (and d!2199943 (is-Cons!67900 res!2875846)) b!7044496))

(assert (= (and d!2199943 res!2875845) b!7044498))

(declare-fun m!7757676 () Bool)

(assert (=> d!2199943 m!7757676))

(declare-fun m!7757678 () Bool)

(assert (=> b!7044496 m!7757678))

(declare-fun m!7757680 () Bool)

(assert (=> b!7044498 m!7757680))

(assert (=> d!2199617 d!2199943))

(declare-fun b!7044501 () Bool)

(declare-fun res!2875848 () Bool)

(declare-fun e!4234894 () Bool)

(assert (=> b!7044501 (=> (not res!2875848) (not e!4234894))))

(declare-fun lt!2526191 () List!68022)

(assert (=> b!7044501 (= res!2875848 (= (size!41105 lt!2526191) (+ (size!41105 (++!15571 Nil!67898 (Cons!67898 (h!74346 (t!381795 s!7408)) Nil!67898))) (size!41105 (t!381795 (t!381795 s!7408))))))))

(declare-fun b!7044502 () Bool)

(assert (=> b!7044502 (= e!4234894 (or (not (= (t!381795 (t!381795 s!7408)) Nil!67898)) (= lt!2526191 (++!15571 Nil!67898 (Cons!67898 (h!74346 (t!381795 s!7408)) Nil!67898)))))))

(declare-fun b!7044499 () Bool)

(declare-fun e!4234895 () List!68022)

(assert (=> b!7044499 (= e!4234895 (t!381795 (t!381795 s!7408)))))

(declare-fun b!7044500 () Bool)

(assert (=> b!7044500 (= e!4234895 (Cons!67898 (h!74346 (++!15571 Nil!67898 (Cons!67898 (h!74346 (t!381795 s!7408)) Nil!67898))) (++!15571 (t!381795 (++!15571 Nil!67898 (Cons!67898 (h!74346 (t!381795 s!7408)) Nil!67898))) (t!381795 (t!381795 s!7408)))))))

(declare-fun d!2199945 () Bool)

(assert (=> d!2199945 e!4234894))

(declare-fun res!2875847 () Bool)

(assert (=> d!2199945 (=> (not res!2875847) (not e!4234894))))

(assert (=> d!2199945 (= res!2875847 (= (content!13599 lt!2526191) (set.union (content!13599 (++!15571 Nil!67898 (Cons!67898 (h!74346 (t!381795 s!7408)) Nil!67898))) (content!13599 (t!381795 (t!381795 s!7408))))))))

(assert (=> d!2199945 (= lt!2526191 e!4234895)))

(declare-fun c!1311570 () Bool)

(assert (=> d!2199945 (= c!1311570 (is-Nil!67898 (++!15571 Nil!67898 (Cons!67898 (h!74346 (t!381795 s!7408)) Nil!67898))))))

(assert (=> d!2199945 (= (++!15571 (++!15571 Nil!67898 (Cons!67898 (h!74346 (t!381795 s!7408)) Nil!67898)) (t!381795 (t!381795 s!7408))) lt!2526191)))

(assert (= (and d!2199945 c!1311570) b!7044499))

(assert (= (and d!2199945 (not c!1311570)) b!7044500))

(assert (= (and d!2199945 res!2875847) b!7044501))

(assert (= (and b!7044501 res!2875848) b!7044502))

(declare-fun m!7757682 () Bool)

(assert (=> b!7044501 m!7757682))

(assert (=> b!7044501 m!7756990))

(declare-fun m!7757684 () Bool)

(assert (=> b!7044501 m!7757684))

(declare-fun m!7757686 () Bool)

(assert (=> b!7044501 m!7757686))

(declare-fun m!7757688 () Bool)

(assert (=> b!7044500 m!7757688))

(declare-fun m!7757690 () Bool)

(assert (=> d!2199945 m!7757690))

(assert (=> d!2199945 m!7756990))

(declare-fun m!7757692 () Bool)

(assert (=> d!2199945 m!7757692))

(declare-fun m!7757694 () Bool)

(assert (=> d!2199945 m!7757694))

(assert (=> b!7044053 d!2199945))

(declare-fun b!7044505 () Bool)

(declare-fun res!2875850 () Bool)

(declare-fun e!4234896 () Bool)

(assert (=> b!7044505 (=> (not res!2875850) (not e!4234896))))

(declare-fun lt!2526192 () List!68022)

(assert (=> b!7044505 (= res!2875850 (= (size!41105 lt!2526192) (+ (size!41105 Nil!67898) (size!41105 (Cons!67898 (h!74346 (t!381795 s!7408)) Nil!67898)))))))

(declare-fun b!7044506 () Bool)

(assert (=> b!7044506 (= e!4234896 (or (not (= (Cons!67898 (h!74346 (t!381795 s!7408)) Nil!67898) Nil!67898)) (= lt!2526192 Nil!67898)))))

(declare-fun b!7044503 () Bool)

(declare-fun e!4234897 () List!68022)

(assert (=> b!7044503 (= e!4234897 (Cons!67898 (h!74346 (t!381795 s!7408)) Nil!67898))))

(declare-fun b!7044504 () Bool)

(assert (=> b!7044504 (= e!4234897 (Cons!67898 (h!74346 Nil!67898) (++!15571 (t!381795 Nil!67898) (Cons!67898 (h!74346 (t!381795 s!7408)) Nil!67898))))))

(declare-fun d!2199947 () Bool)

(assert (=> d!2199947 e!4234896))

(declare-fun res!2875849 () Bool)

(assert (=> d!2199947 (=> (not res!2875849) (not e!4234896))))

(assert (=> d!2199947 (= res!2875849 (= (content!13599 lt!2526192) (set.union (content!13599 Nil!67898) (content!13599 (Cons!67898 (h!74346 (t!381795 s!7408)) Nil!67898)))))))

(assert (=> d!2199947 (= lt!2526192 e!4234897)))

(declare-fun c!1311571 () Bool)

(assert (=> d!2199947 (= c!1311571 (is-Nil!67898 Nil!67898))))

(assert (=> d!2199947 (= (++!15571 Nil!67898 (Cons!67898 (h!74346 (t!381795 s!7408)) Nil!67898)) lt!2526192)))

(assert (= (and d!2199947 c!1311571) b!7044503))

(assert (= (and d!2199947 (not c!1311571)) b!7044504))

(assert (= (and d!2199947 res!2875849) b!7044505))

(assert (= (and b!7044505 res!2875850) b!7044506))

(declare-fun m!7757696 () Bool)

(assert (=> b!7044505 m!7757696))

(assert (=> b!7044505 m!7757420))

(declare-fun m!7757698 () Bool)

(assert (=> b!7044505 m!7757698))

(declare-fun m!7757700 () Bool)

(assert (=> b!7044504 m!7757700))

(declare-fun m!7757702 () Bool)

(assert (=> d!2199947 m!7757702))

(assert (=> d!2199947 m!7757428))

(declare-fun m!7757704 () Bool)

(assert (=> d!2199947 m!7757704))

(assert (=> b!7044053 d!2199947))

(declare-fun d!2199949 () Bool)

(assert (=> d!2199949 (= (++!15571 (++!15571 Nil!67898 (Cons!67898 (h!74346 (t!381795 s!7408)) Nil!67898)) (t!381795 (t!381795 s!7408))) (t!381795 s!7408))))

(declare-fun lt!2526195 () Unit!161678)

(declare-fun choose!53524 (List!68022 C!35266 List!68022 List!68022) Unit!161678)

(assert (=> d!2199949 (= lt!2526195 (choose!53524 Nil!67898 (h!74346 (t!381795 s!7408)) (t!381795 (t!381795 s!7408)) (t!381795 s!7408)))))

(assert (=> d!2199949 (= (++!15571 Nil!67898 (Cons!67898 (h!74346 (t!381795 s!7408)) (t!381795 (t!381795 s!7408)))) (t!381795 s!7408))))

(assert (=> d!2199949 (= (lemmaMoveElementToOtherListKeepsConcatEq!2944 Nil!67898 (h!74346 (t!381795 s!7408)) (t!381795 (t!381795 s!7408)) (t!381795 s!7408)) lt!2526195)))

(declare-fun bs!1874247 () Bool)

(assert (= bs!1874247 d!2199949))

(assert (=> bs!1874247 m!7756990))

(assert (=> bs!1874247 m!7756990))

(assert (=> bs!1874247 m!7756992))

(declare-fun m!7757706 () Bool)

(assert (=> bs!1874247 m!7757706))

(declare-fun m!7757708 () Bool)

(assert (=> bs!1874247 m!7757708))

(assert (=> b!7044053 d!2199949))

(declare-fun b!7044507 () Bool)

(declare-fun e!4234902 () Option!16899)

(assert (=> b!7044507 (= e!4234902 (Some!16898 (tuple2!68135 (++!15571 Nil!67898 (Cons!67898 (h!74346 (t!381795 s!7408)) Nil!67898)) (t!381795 (t!381795 s!7408)))))))

(declare-fun b!7044508 () Bool)

(declare-fun res!2875851 () Bool)

(declare-fun e!4234900 () Bool)

(assert (=> b!7044508 (=> (not res!2875851) (not e!4234900))))

(declare-fun lt!2526197 () Option!16899)

(assert (=> b!7044508 (= res!2875851 (matchZipper!3038 lt!2525907 (_2!37370 (get!23799 lt!2526197))))))

(declare-fun b!7044509 () Bool)

(declare-fun e!4234898 () Option!16899)

(assert (=> b!7044509 (= e!4234902 e!4234898)))

(declare-fun c!1311573 () Bool)

(assert (=> b!7044509 (= c!1311573 (is-Nil!67898 (t!381795 (t!381795 s!7408))))))

(declare-fun d!2199951 () Bool)

(declare-fun e!4234901 () Bool)

(assert (=> d!2199951 e!4234901))

(declare-fun res!2875854 () Bool)

(assert (=> d!2199951 (=> res!2875854 e!4234901)))

(assert (=> d!2199951 (= res!2875854 e!4234900)))

(declare-fun res!2875852 () Bool)

(assert (=> d!2199951 (=> (not res!2875852) (not e!4234900))))

(assert (=> d!2199951 (= res!2875852 (isDefined!13600 lt!2526197))))

(assert (=> d!2199951 (= lt!2526197 e!4234902)))

(declare-fun c!1311572 () Bool)

(declare-fun e!4234899 () Bool)

(assert (=> d!2199951 (= c!1311572 e!4234899)))

(declare-fun res!2875853 () Bool)

(assert (=> d!2199951 (=> (not res!2875853) (not e!4234899))))

(assert (=> d!2199951 (= res!2875853 (matchZipper!3038 lt!2525878 (++!15571 Nil!67898 (Cons!67898 (h!74346 (t!381795 s!7408)) Nil!67898))))))

(assert (=> d!2199951 (= (++!15571 (++!15571 Nil!67898 (Cons!67898 (h!74346 (t!381795 s!7408)) Nil!67898)) (t!381795 (t!381795 s!7408))) (t!381795 s!7408))))

(assert (=> d!2199951 (= (findConcatSeparationZippers!415 lt!2525878 lt!2525907 (++!15571 Nil!67898 (Cons!67898 (h!74346 (t!381795 s!7408)) Nil!67898)) (t!381795 (t!381795 s!7408)) (t!381795 s!7408)) lt!2526197)))

(declare-fun b!7044510 () Bool)

(declare-fun lt!2526198 () Unit!161678)

(declare-fun lt!2526196 () Unit!161678)

(assert (=> b!7044510 (= lt!2526198 lt!2526196)))

(assert (=> b!7044510 (= (++!15571 (++!15571 (++!15571 Nil!67898 (Cons!67898 (h!74346 (t!381795 s!7408)) Nil!67898)) (Cons!67898 (h!74346 (t!381795 (t!381795 s!7408))) Nil!67898)) (t!381795 (t!381795 (t!381795 s!7408)))) (t!381795 s!7408))))

(assert (=> b!7044510 (= lt!2526196 (lemmaMoveElementToOtherListKeepsConcatEq!2944 (++!15571 Nil!67898 (Cons!67898 (h!74346 (t!381795 s!7408)) Nil!67898)) (h!74346 (t!381795 (t!381795 s!7408))) (t!381795 (t!381795 (t!381795 s!7408))) (t!381795 s!7408)))))

(assert (=> b!7044510 (= e!4234898 (findConcatSeparationZippers!415 lt!2525878 lt!2525907 (++!15571 (++!15571 Nil!67898 (Cons!67898 (h!74346 (t!381795 s!7408)) Nil!67898)) (Cons!67898 (h!74346 (t!381795 (t!381795 s!7408))) Nil!67898)) (t!381795 (t!381795 (t!381795 s!7408))) (t!381795 s!7408)))))

(declare-fun b!7044511 () Bool)

(assert (=> b!7044511 (= e!4234898 None!16898)))

(declare-fun b!7044512 () Bool)

(assert (=> b!7044512 (= e!4234900 (= (++!15571 (_1!37370 (get!23799 lt!2526197)) (_2!37370 (get!23799 lt!2526197))) (t!381795 s!7408)))))

(declare-fun b!7044513 () Bool)

(assert (=> b!7044513 (= e!4234899 (matchZipper!3038 lt!2525907 (t!381795 (t!381795 s!7408))))))

(declare-fun b!7044514 () Bool)

(assert (=> b!7044514 (= e!4234901 (not (isDefined!13600 lt!2526197)))))

(declare-fun b!7044515 () Bool)

(declare-fun res!2875855 () Bool)

(assert (=> b!7044515 (=> (not res!2875855) (not e!4234900))))

(assert (=> b!7044515 (= res!2875855 (matchZipper!3038 lt!2525878 (_1!37370 (get!23799 lt!2526197))))))

(assert (= (and d!2199951 res!2875853) b!7044513))

(assert (= (and d!2199951 c!1311572) b!7044507))

(assert (= (and d!2199951 (not c!1311572)) b!7044509))

(assert (= (and b!7044509 c!1311573) b!7044511))

(assert (= (and b!7044509 (not c!1311573)) b!7044510))

(assert (= (and d!2199951 res!2875852) b!7044515))

(assert (= (and b!7044515 res!2875855) b!7044508))

(assert (= (and b!7044508 res!2875851) b!7044512))

(assert (= (and d!2199951 (not res!2875854)) b!7044514))

(declare-fun m!7757710 () Bool)

(assert (=> b!7044515 m!7757710))

(declare-fun m!7757712 () Bool)

(assert (=> b!7044515 m!7757712))

(declare-fun m!7757714 () Bool)

(assert (=> b!7044513 m!7757714))

(assert (=> b!7044508 m!7757710))

(declare-fun m!7757716 () Bool)

(assert (=> b!7044508 m!7757716))

(assert (=> b!7044510 m!7756990))

(declare-fun m!7757718 () Bool)

(assert (=> b!7044510 m!7757718))

(assert (=> b!7044510 m!7757718))

(declare-fun m!7757720 () Bool)

(assert (=> b!7044510 m!7757720))

(assert (=> b!7044510 m!7756990))

(declare-fun m!7757722 () Bool)

(assert (=> b!7044510 m!7757722))

(assert (=> b!7044510 m!7757718))

(declare-fun m!7757724 () Bool)

(assert (=> b!7044510 m!7757724))

(assert (=> b!7044512 m!7757710))

(declare-fun m!7757726 () Bool)

(assert (=> b!7044512 m!7757726))

(declare-fun m!7757728 () Bool)

(assert (=> b!7044514 m!7757728))

(assert (=> d!2199951 m!7757728))

(assert (=> d!2199951 m!7756990))

(declare-fun m!7757730 () Bool)

(assert (=> d!2199951 m!7757730))

(assert (=> d!2199951 m!7756990))

(assert (=> d!2199951 m!7756992))

(assert (=> b!7044053 d!2199951))

(declare-fun d!2199953 () Bool)

(declare-fun res!2875856 () Bool)

(declare-fun e!4234903 () Bool)

(assert (=> d!2199953 (=> res!2875856 e!4234903)))

(assert (=> d!2199953 (= res!2875856 (is-Nil!67899 (exprs!6994 ct2!306)))))

(assert (=> d!2199953 (= (forall!16426 (exprs!6994 ct2!306) lambda!417448) e!4234903)))

(declare-fun b!7044516 () Bool)

(declare-fun e!4234904 () Bool)

(assert (=> b!7044516 (= e!4234903 e!4234904)))

(declare-fun res!2875857 () Bool)

(assert (=> b!7044516 (=> (not res!2875857) (not e!4234904))))

(assert (=> b!7044516 (= res!2875857 (dynLambda!27485 lambda!417448 (h!74347 (exprs!6994 ct2!306))))))

(declare-fun b!7044517 () Bool)

(assert (=> b!7044517 (= e!4234904 (forall!16426 (t!381796 (exprs!6994 ct2!306)) lambda!417448))))

(assert (= (and d!2199953 (not res!2875856)) b!7044516))

(assert (= (and b!7044516 res!2875857) b!7044517))

(declare-fun b_lambda!267551 () Bool)

(assert (=> (not b_lambda!267551) (not b!7044516)))

(declare-fun m!7757732 () Bool)

(assert (=> b!7044516 m!7757732))

(declare-fun m!7757734 () Bool)

(assert (=> b!7044517 m!7757734))

(assert (=> d!2199645 d!2199953))

(declare-fun d!2199955 () Bool)

(assert (=> d!2199955 (= (isEmpty!39628 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920))) (is-Nil!67898 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920))))))

(assert (=> d!2199651 d!2199955))

(declare-fun d!2199957 () Bool)

(assert (=> d!2199957 true))

(declare-fun setRes!49416 () Bool)

(assert (=> d!2199957 setRes!49416))

(declare-fun condSetEmpty!49416 () Bool)

(declare-fun res!2875858 () (Set Context!12988))

(assert (=> d!2199957 (= condSetEmpty!49416 (= res!2875858 (as set.empty (Set Context!12988))))))

(assert (=> d!2199957 (= (choose!53507 lt!2525891 lambda!417386) res!2875858)))

(declare-fun setIsEmpty!49416 () Bool)

(assert (=> setIsEmpty!49416 setRes!49416))

(declare-fun setNonEmpty!49416 () Bool)

(declare-fun e!4234905 () Bool)

(declare-fun setElem!49416 () Context!12988)

(declare-fun tp!1937776 () Bool)

(assert (=> setNonEmpty!49416 (= setRes!49416 (and tp!1937776 (inv!86605 setElem!49416) e!4234905))))

(declare-fun setRest!49416 () (Set Context!12988))

(assert (=> setNonEmpty!49416 (= res!2875858 (set.union (set.insert setElem!49416 (as set.empty (Set Context!12988))) setRest!49416))))

(declare-fun b!7044518 () Bool)

(declare-fun tp!1937775 () Bool)

(assert (=> b!7044518 (= e!4234905 tp!1937775)))

(assert (= (and d!2199957 condSetEmpty!49416) setIsEmpty!49416))

(assert (= (and d!2199957 (not condSetEmpty!49416)) setNonEmpty!49416))

(assert (= setNonEmpty!49416 b!7044518))

(declare-fun m!7757736 () Bool)

(assert (=> setNonEmpty!49416 m!7757736))

(assert (=> d!2199607 d!2199957))

(declare-fun bs!1874248 () Bool)

(declare-fun d!2199959 () Bool)

(assert (= bs!1874248 (and d!2199959 d!2199851)))

(declare-fun lambda!417492 () Int)

(assert (=> bs!1874248 (not (= lambda!417492 lambda!417481))))

(declare-fun bs!1874249 () Bool)

(assert (= bs!1874249 (and d!2199959 d!2199849)))

(assert (=> bs!1874249 (= lambda!417492 lambda!417480)))

(declare-fun bs!1874250 () Bool)

(assert (= bs!1874250 (and d!2199959 d!2199889)))

(assert (=> bs!1874250 (= lambda!417492 lambda!417487)))

(declare-fun bs!1874251 () Bool)

(assert (= bs!1874251 (and d!2199959 b!7043800)))

(assert (=> bs!1874251 (not (= lambda!417492 lambda!417383))))

(declare-fun bs!1874252 () Bool)

(assert (= bs!1874252 (and d!2199959 d!2199623)))

(assert (=> bs!1874252 (not (= lambda!417492 lambda!417436))))

(declare-fun bs!1874253 () Bool)

(assert (= bs!1874253 (and d!2199959 d!2199625)))

(assert (=> bs!1874253 (not (= lambda!417492 lambda!417439))))

(declare-fun bs!1874254 () Bool)

(assert (= bs!1874254 (and d!2199959 d!2199901)))

(assert (=> bs!1874254 (= lambda!417492 lambda!417488)))

(declare-fun bs!1874255 () Bool)

(assert (= bs!1874255 (and d!2199959 d!2199915)))

(assert (=> bs!1874255 (= lambda!417492 lambda!417490)))

(declare-fun bs!1874256 () Bool)

(assert (= bs!1874256 (and d!2199959 d!2199853)))

(assert (=> bs!1874256 (not (= lambda!417492 lambda!417484))))

(assert (=> d!2199959 (= (nullableZipper!2604 lt!2525884) (exists!3450 lt!2525884 lambda!417492))))

(declare-fun bs!1874257 () Bool)

(assert (= bs!1874257 d!2199959))

(declare-fun m!7757738 () Bool)

(assert (=> bs!1874257 m!7757738))

(assert (=> b!7044027 d!2199959))

(declare-fun d!2199961 () Bool)

(assert (=> d!2199961 (= ($colon$colon!2597 (exprs!6994 lt!2525916) (ite (or c!1311426 c!1311428) (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (h!74347 (exprs!6994 lt!2525892)))) (Cons!67899 (ite (or c!1311426 c!1311428) (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (h!74347 (exprs!6994 lt!2525892))) (exprs!6994 lt!2525916)))))

(assert (=> bm!639885 d!2199961))

(declare-fun d!2199963 () Bool)

(assert (=> d!2199963 (= (map!15809 z1!570 lambda!417447) (choose!53522 z1!570 lambda!417447))))

(declare-fun bs!1874258 () Bool)

(assert (= bs!1874258 d!2199963))

(declare-fun m!7757740 () Bool)

(assert (=> bs!1874258 m!7757740))

(assert (=> d!2199643 d!2199963))

(declare-fun d!2199965 () Bool)

(declare-fun c!1311574 () Bool)

(assert (=> d!2199965 (= c!1311574 (is-Nil!67899 lt!2526092))))

(declare-fun e!4234906 () (Set Regex!17498))

(assert (=> d!2199965 (= (content!13597 lt!2526092) e!4234906)))

(declare-fun b!7044519 () Bool)

(assert (=> b!7044519 (= e!4234906 (as set.empty (Set Regex!17498)))))

(declare-fun b!7044520 () Bool)

(assert (=> b!7044520 (= e!4234906 (set.union (set.insert (h!74347 lt!2526092) (as set.empty (Set Regex!17498))) (content!13597 (t!381796 lt!2526092))))))

(assert (= (and d!2199965 c!1311574) b!7044519))

(assert (= (and d!2199965 (not c!1311574)) b!7044520))

(declare-fun m!7757742 () Bool)

(assert (=> b!7044520 m!7757742))

(declare-fun m!7757744 () Bool)

(assert (=> b!7044520 m!7757744))

(assert (=> d!2199629 d!2199965))

(declare-fun d!2199967 () Bool)

(declare-fun c!1311575 () Bool)

(assert (=> d!2199967 (= c!1311575 (is-Nil!67899 lt!2525921))))

(declare-fun e!4234907 () (Set Regex!17498))

(assert (=> d!2199967 (= (content!13597 lt!2525921) e!4234907)))

(declare-fun b!7044521 () Bool)

(assert (=> b!7044521 (= e!4234907 (as set.empty (Set Regex!17498)))))

(declare-fun b!7044522 () Bool)

(assert (=> b!7044522 (= e!4234907 (set.union (set.insert (h!74347 lt!2525921) (as set.empty (Set Regex!17498))) (content!13597 (t!381796 lt!2525921))))))

(assert (= (and d!2199967 c!1311575) b!7044521))

(assert (= (and d!2199967 (not c!1311575)) b!7044522))

(declare-fun m!7757746 () Bool)

(assert (=> b!7044522 m!7757746))

(assert (=> b!7044522 m!7757658))

(assert (=> d!2199629 d!2199967))

(assert (=> d!2199629 d!2199877))

(declare-fun c!1311580 () Bool)

(declare-fun d!2199969 () Bool)

(assert (=> d!2199969 (= c!1311580 (and (is-ElementMatch!17498 (ite c!1311407 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311406 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311408 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892))))))) (= (c!1311360 (ite c!1311407 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311406 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311408 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892))))))) (h!74346 s!7408))))))

(declare-fun e!4234909 () (Set Context!12988))

(assert (=> d!2199969 (= (derivationStepZipperDown!2162 (ite c!1311407 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311406 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311408 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892)))))) (ite (or c!1311407 c!1311406) lt!2525890 (Context!12989 call!639881)) (h!74346 s!7408)) e!4234909)))

(declare-fun b!7044523 () Bool)

(declare-fun e!4234910 () (Set Context!12988))

(declare-fun call!639959 () (Set Context!12988))

(assert (=> b!7044523 (= e!4234910 call!639959)))

(declare-fun bm!639952 () Bool)

(declare-fun call!639962 () (Set Context!12988))

(declare-fun call!639961 () (Set Context!12988))

(assert (=> bm!639952 (= call!639962 call!639961)))

(declare-fun b!7044524 () Bool)

(declare-fun e!4234911 () (Set Context!12988))

(declare-fun call!639960 () (Set Context!12988))

(assert (=> b!7044524 (= e!4234911 (set.union call!639961 call!639960))))

(declare-fun b!7044525 () Bool)

(declare-fun e!4234908 () (Set Context!12988))

(assert (=> b!7044525 (= e!4234908 (as set.empty (Set Context!12988)))))

(declare-fun b!7044526 () Bool)

(declare-fun e!4234913 () (Set Context!12988))

(assert (=> b!7044526 (= e!4234913 e!4234910)))

(declare-fun c!1311578 () Bool)

(assert (=> b!7044526 (= c!1311578 (is-Concat!26343 (ite c!1311407 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311406 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311408 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892))))))))))

(declare-fun b!7044527 () Bool)

(assert (=> b!7044527 (= e!4234909 (set.insert (ite (or c!1311407 c!1311406) lt!2525890 (Context!12989 call!639881)) (as set.empty (Set Context!12988))))))

(declare-fun b!7044528 () Bool)

(declare-fun c!1311576 () Bool)

(declare-fun e!4234912 () Bool)

(assert (=> b!7044528 (= c!1311576 e!4234912)))

(declare-fun res!2875859 () Bool)

(assert (=> b!7044528 (=> (not res!2875859) (not e!4234912))))

(assert (=> b!7044528 (= res!2875859 (is-Concat!26343 (ite c!1311407 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311406 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311408 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892))))))))))

(assert (=> b!7044528 (= e!4234911 e!4234913)))

(declare-fun b!7044529 () Bool)

(declare-fun c!1311579 () Bool)

(assert (=> b!7044529 (= c!1311579 (is-Star!17498 (ite c!1311407 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311406 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311408 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892))))))))))

(assert (=> b!7044529 (= e!4234910 e!4234908)))

(declare-fun b!7044530 () Bool)

(assert (=> b!7044530 (= e!4234909 e!4234911)))

(declare-fun c!1311577 () Bool)

(assert (=> b!7044530 (= c!1311577 (is-Union!17498 (ite c!1311407 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311406 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311408 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892))))))))))

(declare-fun bm!639953 () Bool)

(declare-fun call!639957 () List!68023)

(assert (=> bm!639953 (= call!639960 (derivationStepZipperDown!2162 (ite c!1311577 (regTwo!35509 (ite c!1311407 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311406 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311408 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892))))))) (regOne!35508 (ite c!1311407 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311406 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311408 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892)))))))) (ite c!1311577 (ite (or c!1311407 c!1311406) lt!2525890 (Context!12989 call!639881)) (Context!12989 call!639957)) (h!74346 s!7408)))))

(declare-fun bm!639954 () Bool)

(assert (=> bm!639954 (= call!639959 call!639962)))

(declare-fun b!7044531 () Bool)

(assert (=> b!7044531 (= e!4234913 (set.union call!639960 call!639962))))

(declare-fun bm!639955 () Bool)

(assert (=> bm!639955 (= call!639957 ($colon$colon!2597 (exprs!6994 (ite (or c!1311407 c!1311406) lt!2525890 (Context!12989 call!639881))) (ite (or c!1311576 c!1311578) (regTwo!35508 (ite c!1311407 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311406 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311408 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892))))))) (ite c!1311407 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311406 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311408 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892)))))))))))

(declare-fun b!7044532 () Bool)

(assert (=> b!7044532 (= e!4234908 call!639959)))

(declare-fun call!639958 () List!68023)

(declare-fun bm!639956 () Bool)

(assert (=> bm!639956 (= call!639961 (derivationStepZipperDown!2162 (ite c!1311577 (regOne!35509 (ite c!1311407 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311406 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311408 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892))))))) (ite c!1311576 (regTwo!35508 (ite c!1311407 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311406 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311408 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892))))))) (ite c!1311578 (regOne!35508 (ite c!1311407 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311406 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311408 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892))))))) (reg!17827 (ite c!1311407 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311406 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311408 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892)))))))))) (ite (or c!1311577 c!1311576) (ite (or c!1311407 c!1311406) lt!2525890 (Context!12989 call!639881)) (Context!12989 call!639958)) (h!74346 s!7408)))))

(declare-fun bm!639957 () Bool)

(assert (=> bm!639957 (= call!639958 call!639957)))

(declare-fun b!7044533 () Bool)

(assert (=> b!7044533 (= e!4234912 (nullable!7209 (regOne!35508 (ite c!1311407 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311406 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311408 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892)))))))))))

(assert (= (and d!2199969 c!1311580) b!7044527))

(assert (= (and d!2199969 (not c!1311580)) b!7044530))

(assert (= (and b!7044530 c!1311577) b!7044524))

(assert (= (and b!7044530 (not c!1311577)) b!7044528))

(assert (= (and b!7044528 res!2875859) b!7044533))

(assert (= (and b!7044528 c!1311576) b!7044531))

(assert (= (and b!7044528 (not c!1311576)) b!7044526))

(assert (= (and b!7044526 c!1311578) b!7044523))

(assert (= (and b!7044526 (not c!1311578)) b!7044529))

(assert (= (and b!7044529 c!1311579) b!7044532))

(assert (= (and b!7044529 (not c!1311579)) b!7044525))

(assert (= (or b!7044523 b!7044532) bm!639957))

(assert (= (or b!7044523 b!7044532) bm!639954))

(assert (= (or b!7044531 bm!639954) bm!639952))

(assert (= (or b!7044531 bm!639957) bm!639955))

(assert (= (or b!7044524 bm!639952) bm!639956))

(assert (= (or b!7044524 b!7044531) bm!639953))

(declare-fun m!7757748 () Bool)

(assert (=> b!7044533 m!7757748))

(declare-fun m!7757750 () Bool)

(assert (=> bm!639955 m!7757750))

(declare-fun m!7757752 () Bool)

(assert (=> b!7044527 m!7757752))

(declare-fun m!7757754 () Bool)

(assert (=> bm!639956 m!7757754))

(declare-fun m!7757756 () Bool)

(assert (=> bm!639953 m!7757756))

(assert (=> bm!639879 d!2199969))

(assert (=> b!7043932 d!2199615))

(declare-fun bs!1874259 () Bool)

(declare-fun d!2199971 () Bool)

(assert (= bs!1874259 (and d!2199971 d!2199851)))

(declare-fun lambda!417493 () Int)

(assert (=> bs!1874259 (not (= lambda!417493 lambda!417481))))

(declare-fun bs!1874260 () Bool)

(assert (= bs!1874260 (and d!2199971 d!2199849)))

(assert (=> bs!1874260 (= lambda!417493 lambda!417480)))

(declare-fun bs!1874261 () Bool)

(assert (= bs!1874261 (and d!2199971 d!2199889)))

(assert (=> bs!1874261 (= lambda!417493 lambda!417487)))

(declare-fun bs!1874262 () Bool)

(assert (= bs!1874262 (and d!2199971 b!7043800)))

(assert (=> bs!1874262 (not (= lambda!417493 lambda!417383))))

(declare-fun bs!1874263 () Bool)

(assert (= bs!1874263 (and d!2199971 d!2199623)))

(assert (=> bs!1874263 (not (= lambda!417493 lambda!417436))))

(declare-fun bs!1874264 () Bool)

(assert (= bs!1874264 (and d!2199971 d!2199625)))

(assert (=> bs!1874264 (not (= lambda!417493 lambda!417439))))

(declare-fun bs!1874265 () Bool)

(assert (= bs!1874265 (and d!2199971 d!2199915)))

(assert (=> bs!1874265 (= lambda!417493 lambda!417490)))

(declare-fun bs!1874266 () Bool)

(assert (= bs!1874266 (and d!2199971 d!2199853)))

(assert (=> bs!1874266 (not (= lambda!417493 lambda!417484))))

(declare-fun bs!1874267 () Bool)

(assert (= bs!1874267 (and d!2199971 d!2199901)))

(assert (=> bs!1874267 (= lambda!417493 lambda!417488)))

(declare-fun bs!1874268 () Bool)

(assert (= bs!1874268 (and d!2199971 d!2199959)))

(assert (=> bs!1874268 (= lambda!417493 lambda!417492)))

(assert (=> d!2199971 (= (nullableZipper!2604 lt!2525889) (exists!3450 lt!2525889 lambda!417493))))

(declare-fun bs!1874269 () Bool)

(assert (= bs!1874269 d!2199971))

(declare-fun m!7757758 () Bool)

(assert (=> bs!1874269 m!7757758))

(assert (=> b!7043937 d!2199971))

(declare-fun bs!1874270 () Bool)

(declare-fun d!2199973 () Bool)

(assert (= bs!1874270 (and d!2199973 b!7043804)))

(declare-fun lambda!417494 () Int)

(assert (=> bs!1874270 (= lambda!417494 lambda!417385)))

(declare-fun bs!1874271 () Bool)

(assert (= bs!1874271 (and d!2199973 d!2199635)))

(assert (=> bs!1874271 (= lambda!417494 lambda!417442)))

(declare-fun bs!1874272 () Bool)

(assert (= bs!1874272 (and d!2199973 d!2199645)))

(assert (=> bs!1874272 (= lambda!417494 lambda!417448)))

(declare-fun bs!1874273 () Bool)

(assert (= bs!1874273 (and d!2199973 d!2199661)))

(assert (=> bs!1874273 (= lambda!417494 lambda!417452)))

(assert (=> d!2199973 (= (inv!86605 setElem!49409) (forall!16426 (exprs!6994 setElem!49409) lambda!417494))))

(declare-fun bs!1874274 () Bool)

(assert (= bs!1874274 d!2199973))

(declare-fun m!7757760 () Bool)

(assert (=> bs!1874274 m!7757760))

(assert (=> setNonEmpty!49409 d!2199973))

(declare-fun d!2199975 () Bool)

(declare-fun c!1311581 () Bool)

(assert (=> d!2199975 (= c!1311581 (isEmpty!39628 (tail!13614 (t!381795 s!7408))))))

(declare-fun e!4234914 () Bool)

(assert (=> d!2199975 (= (matchZipper!3038 (derivationStepZipper!2954 lt!2525902 (head!14297 (t!381795 s!7408))) (tail!13614 (t!381795 s!7408))) e!4234914)))

(declare-fun b!7044534 () Bool)

(assert (=> b!7044534 (= e!4234914 (nullableZipper!2604 (derivationStepZipper!2954 lt!2525902 (head!14297 (t!381795 s!7408)))))))

(declare-fun b!7044535 () Bool)

(assert (=> b!7044535 (= e!4234914 (matchZipper!3038 (derivationStepZipper!2954 (derivationStepZipper!2954 lt!2525902 (head!14297 (t!381795 s!7408))) (head!14297 (tail!13614 (t!381795 s!7408)))) (tail!13614 (tail!13614 (t!381795 s!7408)))))))

(assert (= (and d!2199975 c!1311581) b!7044534))

(assert (= (and d!2199975 (not c!1311581)) b!7044535))

(assert (=> d!2199975 m!7756784))

(assert (=> d!2199975 m!7757478))

(assert (=> b!7044534 m!7756832))

(declare-fun m!7757762 () Bool)

(assert (=> b!7044534 m!7757762))

(assert (=> b!7044535 m!7756784))

(assert (=> b!7044535 m!7757482))

(assert (=> b!7044535 m!7756832))

(assert (=> b!7044535 m!7757482))

(declare-fun m!7757764 () Bool)

(assert (=> b!7044535 m!7757764))

(assert (=> b!7044535 m!7756784))

(assert (=> b!7044535 m!7757486))

(assert (=> b!7044535 m!7757764))

(assert (=> b!7044535 m!7757486))

(declare-fun m!7757766 () Bool)

(assert (=> b!7044535 m!7757766))

(assert (=> b!7043963 d!2199975))

(declare-fun bs!1874275 () Bool)

(declare-fun d!2199977 () Bool)

(assert (= bs!1874275 (and d!2199977 d!2199677)))

(declare-fun lambda!417495 () Int)

(assert (=> bs!1874275 (= (= (head!14297 (t!381795 s!7408)) (h!74346 s!7408)) (= lambda!417495 lambda!417453))))

(declare-fun bs!1874276 () Bool)

(assert (= bs!1874276 (and d!2199977 d!2199881)))

(assert (=> bs!1874276 (= (= (head!14297 (t!381795 s!7408)) (head!14297 (_1!37370 lt!2525920))) (= lambda!417495 lambda!417486))))

(declare-fun bs!1874277 () Bool)

(assert (= bs!1874277 (and d!2199977 d!2199929)))

(assert (=> bs!1874277 (= (= (head!14297 (t!381795 s!7408)) (head!14297 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920)))) (= lambda!417495 lambda!417491))))

(declare-fun bs!1874278 () Bool)

(assert (= bs!1874278 (and d!2199977 d!2199613)))

(assert (=> bs!1874278 (= (= (head!14297 (t!381795 s!7408)) (h!74346 s!7408)) (= lambda!417495 lambda!417433))))

(declare-fun bs!1874279 () Bool)

(assert (= bs!1874279 (and d!2199977 d!2199867)))

(assert (=> bs!1874279 (= (= (head!14297 (t!381795 s!7408)) (head!14297 (_1!37370 lt!2525920))) (= lambda!417495 lambda!417485))))

(declare-fun bs!1874280 () Bool)

(assert (= bs!1874280 (and d!2199977 b!7043806)))

(assert (=> bs!1874280 (= (= (head!14297 (t!381795 s!7408)) (h!74346 s!7408)) (= lambda!417495 lambda!417386))))

(declare-fun bs!1874281 () Bool)

(assert (= bs!1874281 (and d!2199977 d!2199843)))

(assert (=> bs!1874281 (= lambda!417495 lambda!417477)))

(declare-fun bs!1874282 () Bool)

(assert (= bs!1874282 (and d!2199977 d!2199907)))

(assert (=> bs!1874282 (= (= (head!14297 (t!381795 s!7408)) (head!14297 (_2!37370 lt!2525920))) (= lambda!417495 lambda!417489))))

(assert (=> d!2199977 true))

(assert (=> d!2199977 (= (derivationStepZipper!2954 lt!2525902 (head!14297 (t!381795 s!7408))) (flatMap!2445 lt!2525902 lambda!417495))))

(declare-fun bs!1874283 () Bool)

(assert (= bs!1874283 d!2199977))

(declare-fun m!7757768 () Bool)

(assert (=> bs!1874283 m!7757768))

(assert (=> b!7043963 d!2199977))

(assert (=> b!7043963 d!2199845))

(assert (=> b!7043963 d!2199847))

(assert (=> b!7044029 d!2199605))

(assert (=> d!2199615 d!2199795))

(declare-fun d!2199979 () Bool)

(declare-fun c!1311582 () Bool)

(assert (=> d!2199979 (= c!1311582 (isEmpty!39628 (tail!13614 s!7408)))))

(declare-fun e!4234915 () Bool)

(assert (=> d!2199979 (= (matchZipper!3038 (derivationStepZipper!2954 lt!2525914 (head!14297 s!7408)) (tail!13614 s!7408)) e!4234915)))

(declare-fun b!7044536 () Bool)

(assert (=> b!7044536 (= e!4234915 (nullableZipper!2604 (derivationStepZipper!2954 lt!2525914 (head!14297 s!7408))))))

(declare-fun b!7044537 () Bool)

(assert (=> b!7044537 (= e!4234915 (matchZipper!3038 (derivationStepZipper!2954 (derivationStepZipper!2954 lt!2525914 (head!14297 s!7408)) (head!14297 (tail!13614 s!7408))) (tail!13614 (tail!13614 s!7408))))))

(assert (= (and d!2199979 c!1311582) b!7044536))

(assert (= (and d!2199979 (not c!1311582)) b!7044537))

(assert (=> d!2199979 m!7756850))

(declare-fun m!7757770 () Bool)

(assert (=> d!2199979 m!7757770))

(assert (=> b!7044536 m!7756920))

(declare-fun m!7757772 () Bool)

(assert (=> b!7044536 m!7757772))

(assert (=> b!7044537 m!7756850))

(declare-fun m!7757774 () Bool)

(assert (=> b!7044537 m!7757774))

(assert (=> b!7044537 m!7756920))

(assert (=> b!7044537 m!7757774))

(declare-fun m!7757776 () Bool)

(assert (=> b!7044537 m!7757776))

(assert (=> b!7044537 m!7756850))

(declare-fun m!7757778 () Bool)

(assert (=> b!7044537 m!7757778))

(assert (=> b!7044537 m!7757776))

(assert (=> b!7044537 m!7757778))

(declare-fun m!7757780 () Bool)

(assert (=> b!7044537 m!7757780))

(assert (=> b!7044024 d!2199979))

(declare-fun bs!1874284 () Bool)

(declare-fun d!2199981 () Bool)

(assert (= bs!1874284 (and d!2199981 d!2199677)))

(declare-fun lambda!417496 () Int)

(assert (=> bs!1874284 (= (= (head!14297 s!7408) (h!74346 s!7408)) (= lambda!417496 lambda!417453))))

(declare-fun bs!1874285 () Bool)

(assert (= bs!1874285 (and d!2199981 d!2199881)))

(assert (=> bs!1874285 (= (= (head!14297 s!7408) (head!14297 (_1!37370 lt!2525920))) (= lambda!417496 lambda!417486))))

(declare-fun bs!1874286 () Bool)

(assert (= bs!1874286 (and d!2199981 d!2199929)))

(assert (=> bs!1874286 (= (= (head!14297 s!7408) (head!14297 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920)))) (= lambda!417496 lambda!417491))))

(declare-fun bs!1874287 () Bool)

(assert (= bs!1874287 (and d!2199981 d!2199613)))

(assert (=> bs!1874287 (= (= (head!14297 s!7408) (h!74346 s!7408)) (= lambda!417496 lambda!417433))))

(declare-fun bs!1874288 () Bool)

(assert (= bs!1874288 (and d!2199981 d!2199977)))

(assert (=> bs!1874288 (= (= (head!14297 s!7408) (head!14297 (t!381795 s!7408))) (= lambda!417496 lambda!417495))))

(declare-fun bs!1874289 () Bool)

(assert (= bs!1874289 (and d!2199981 d!2199867)))

(assert (=> bs!1874289 (= (= (head!14297 s!7408) (head!14297 (_1!37370 lt!2525920))) (= lambda!417496 lambda!417485))))

(declare-fun bs!1874290 () Bool)

(assert (= bs!1874290 (and d!2199981 b!7043806)))

(assert (=> bs!1874290 (= (= (head!14297 s!7408) (h!74346 s!7408)) (= lambda!417496 lambda!417386))))

(declare-fun bs!1874291 () Bool)

(assert (= bs!1874291 (and d!2199981 d!2199843)))

(assert (=> bs!1874291 (= (= (head!14297 s!7408) (head!14297 (t!381795 s!7408))) (= lambda!417496 lambda!417477))))

(declare-fun bs!1874292 () Bool)

(assert (= bs!1874292 (and d!2199981 d!2199907)))

(assert (=> bs!1874292 (= (= (head!14297 s!7408) (head!14297 (_2!37370 lt!2525920))) (= lambda!417496 lambda!417489))))

(assert (=> d!2199981 true))

(assert (=> d!2199981 (= (derivationStepZipper!2954 lt!2525914 (head!14297 s!7408)) (flatMap!2445 lt!2525914 lambda!417496))))

(declare-fun bs!1874293 () Bool)

(assert (= bs!1874293 d!2199981))

(declare-fun m!7757782 () Bool)

(assert (=> bs!1874293 m!7757782))

(assert (=> b!7044024 d!2199981))

(declare-fun d!2199983 () Bool)

(assert (=> d!2199983 (= (head!14297 s!7408) (h!74346 s!7408))))

(assert (=> b!7044024 d!2199983))

(declare-fun d!2199985 () Bool)

(assert (=> d!2199985 (= (tail!13614 s!7408) (t!381795 s!7408))))

(assert (=> b!7044024 d!2199985))

(declare-fun bs!1874294 () Bool)

(declare-fun d!2199987 () Bool)

(assert (= bs!1874294 (and d!2199987 d!2199851)))

(declare-fun lambda!417497 () Int)

(assert (=> bs!1874294 (not (= lambda!417497 lambda!417481))))

(declare-fun bs!1874295 () Bool)

(assert (= bs!1874295 (and d!2199987 d!2199849)))

(assert (=> bs!1874295 (= lambda!417497 lambda!417480)))

(declare-fun bs!1874296 () Bool)

(assert (= bs!1874296 (and d!2199987 d!2199889)))

(assert (=> bs!1874296 (= lambda!417497 lambda!417487)))

(declare-fun bs!1874297 () Bool)

(assert (= bs!1874297 (and d!2199987 b!7043800)))

(assert (=> bs!1874297 (not (= lambda!417497 lambda!417383))))

(declare-fun bs!1874298 () Bool)

(assert (= bs!1874298 (and d!2199987 d!2199623)))

(assert (=> bs!1874298 (not (= lambda!417497 lambda!417436))))

(declare-fun bs!1874299 () Bool)

(assert (= bs!1874299 (and d!2199987 d!2199971)))

(assert (=> bs!1874299 (= lambda!417497 lambda!417493)))

(declare-fun bs!1874300 () Bool)

(assert (= bs!1874300 (and d!2199987 d!2199625)))

(assert (=> bs!1874300 (not (= lambda!417497 lambda!417439))))

(declare-fun bs!1874301 () Bool)

(assert (= bs!1874301 (and d!2199987 d!2199915)))

(assert (=> bs!1874301 (= lambda!417497 lambda!417490)))

(declare-fun bs!1874302 () Bool)

(assert (= bs!1874302 (and d!2199987 d!2199853)))

(assert (=> bs!1874302 (not (= lambda!417497 lambda!417484))))

(declare-fun bs!1874303 () Bool)

(assert (= bs!1874303 (and d!2199987 d!2199901)))

(assert (=> bs!1874303 (= lambda!417497 lambda!417488)))

(declare-fun bs!1874304 () Bool)

(assert (= bs!1874304 (and d!2199987 d!2199959)))

(assert (=> bs!1874304 (= lambda!417497 lambda!417492)))

(assert (=> d!2199987 (= (nullableZipper!2604 lt!2525883) (exists!3450 lt!2525883 lambda!417497))))

(declare-fun bs!1874305 () Bool)

(assert (= bs!1874305 d!2199987))

(declare-fun m!7757784 () Bool)

(assert (=> bs!1874305 m!7757784))

(assert (=> b!7043967 d!2199987))

(declare-fun d!2199989 () Bool)

(declare-fun c!1311583 () Bool)

(assert (=> d!2199989 (= c!1311583 (isEmpty!39628 (_1!37370 lt!2525920)))))

(declare-fun e!4234916 () Bool)

(assert (=> d!2199989 (= (matchZipper!3038 (set.union lt!2525878 lt!2525918) (_1!37370 lt!2525920)) e!4234916)))

(declare-fun b!7044538 () Bool)

(assert (=> b!7044538 (= e!4234916 (nullableZipper!2604 (set.union lt!2525878 lt!2525918)))))

(declare-fun b!7044539 () Bool)

(assert (=> b!7044539 (= e!4234916 (matchZipper!3038 (derivationStepZipper!2954 (set.union lt!2525878 lt!2525918) (head!14297 (_1!37370 lt!2525920))) (tail!13614 (_1!37370 lt!2525920))))))

(assert (= (and d!2199989 c!1311583) b!7044538))

(assert (= (and d!2199989 (not c!1311583)) b!7044539))

(assert (=> d!2199989 m!7756806))

(declare-fun m!7757786 () Bool)

(assert (=> b!7044538 m!7757786))

(assert (=> b!7044539 m!7756810))

(assert (=> b!7044539 m!7756810))

(declare-fun m!7757788 () Bool)

(assert (=> b!7044539 m!7757788))

(assert (=> b!7044539 m!7756814))

(assert (=> b!7044539 m!7757788))

(assert (=> b!7044539 m!7756814))

(declare-fun m!7757790 () Bool)

(assert (=> b!7044539 m!7757790))

(assert (=> d!2199655 d!2199989))

(assert (=> d!2199655 d!2199663))

(declare-fun d!2199991 () Bool)

(declare-fun e!4234917 () Bool)

(assert (=> d!2199991 (= (matchZipper!3038 (set.union lt!2525878 lt!2525918) (_1!37370 lt!2525920)) e!4234917)))

(declare-fun res!2875860 () Bool)

(assert (=> d!2199991 (=> res!2875860 e!4234917)))

(assert (=> d!2199991 (= res!2875860 (matchZipper!3038 lt!2525878 (_1!37370 lt!2525920)))))

(assert (=> d!2199991 true))

(declare-fun _$48!2514 () Unit!161678)

(assert (=> d!2199991 (= (choose!53506 lt!2525878 lt!2525918 (_1!37370 lt!2525920)) _$48!2514)))

(declare-fun b!7044540 () Bool)

(assert (=> b!7044540 (= e!4234917 (matchZipper!3038 lt!2525918 (_1!37370 lt!2525920)))))

(assert (= (and d!2199991 (not res!2875860)) b!7044540))

(assert (=> d!2199991 m!7756948))

(assert (=> d!2199991 m!7756550))

(assert (=> b!7044540 m!7756576))

(assert (=> d!2199655 d!2199991))

(assert (=> b!7043955 d!2199647))

(declare-fun b!7044543 () Bool)

(declare-fun res!2875862 () Bool)

(declare-fun e!4234918 () Bool)

(assert (=> b!7044543 (=> (not res!2875862) (not e!4234918))))

(declare-fun lt!2526199 () List!68022)

(assert (=> b!7044543 (= res!2875862 (= (size!41105 lt!2526199) (+ (size!41105 (t!381795 (_1!37370 lt!2525920))) (size!41105 (_2!37370 lt!2525920)))))))

(declare-fun b!7044544 () Bool)

(assert (=> b!7044544 (= e!4234918 (or (not (= (_2!37370 lt!2525920) Nil!67898)) (= lt!2526199 (t!381795 (_1!37370 lt!2525920)))))))

(declare-fun b!7044541 () Bool)

(declare-fun e!4234919 () List!68022)

(assert (=> b!7044541 (= e!4234919 (_2!37370 lt!2525920))))

(declare-fun b!7044542 () Bool)

(assert (=> b!7044542 (= e!4234919 (Cons!67898 (h!74346 (t!381795 (_1!37370 lt!2525920))) (++!15571 (t!381795 (t!381795 (_1!37370 lt!2525920))) (_2!37370 lt!2525920))))))

(declare-fun d!2199993 () Bool)

(assert (=> d!2199993 e!4234918))

(declare-fun res!2875861 () Bool)

(assert (=> d!2199993 (=> (not res!2875861) (not e!4234918))))

(assert (=> d!2199993 (= res!2875861 (= (content!13599 lt!2526199) (set.union (content!13599 (t!381795 (_1!37370 lt!2525920))) (content!13599 (_2!37370 lt!2525920)))))))

(assert (=> d!2199993 (= lt!2526199 e!4234919)))

(declare-fun c!1311584 () Bool)

(assert (=> d!2199993 (= c!1311584 (is-Nil!67898 (t!381795 (_1!37370 lt!2525920))))))

(assert (=> d!2199993 (= (++!15571 (t!381795 (_1!37370 lt!2525920)) (_2!37370 lt!2525920)) lt!2526199)))

(assert (= (and d!2199993 c!1311584) b!7044541))

(assert (= (and d!2199993 (not c!1311584)) b!7044542))

(assert (= (and d!2199993 res!2875861) b!7044543))

(assert (= (and b!7044543 res!2875862) b!7044544))

(declare-fun m!7757792 () Bool)

(assert (=> b!7044543 m!7757792))

(declare-fun m!7757794 () Bool)

(assert (=> b!7044543 m!7757794))

(assert (=> b!7044543 m!7757018))

(declare-fun m!7757796 () Bool)

(assert (=> b!7044542 m!7757796))

(declare-fun m!7757798 () Bool)

(assert (=> d!2199993 m!7757798))

(declare-fun m!7757800 () Bool)

(assert (=> d!2199993 m!7757800))

(assert (=> d!2199993 m!7757026))

(assert (=> b!7044079 d!2199993))

(declare-fun d!2199995 () Bool)

(assert (=> d!2199995 (= (isEmpty!39628 s!7408) (is-Nil!67898 s!7408))))

(assert (=> d!2199641 d!2199995))

(declare-fun d!2199997 () Bool)

(declare-fun c!1311585 () Bool)

(assert (=> d!2199997 (= c!1311585 (isEmpty!39628 (_1!37370 (get!23799 lt!2526112))))))

(declare-fun e!4234920 () Bool)

(assert (=> d!2199997 (= (matchZipper!3038 lt!2525878 (_1!37370 (get!23799 lt!2526112))) e!4234920)))

(declare-fun b!7044545 () Bool)

(assert (=> b!7044545 (= e!4234920 (nullableZipper!2604 lt!2525878))))

(declare-fun b!7044546 () Bool)

(assert (=> b!7044546 (= e!4234920 (matchZipper!3038 (derivationStepZipper!2954 lt!2525878 (head!14297 (_1!37370 (get!23799 lt!2526112)))) (tail!13614 (_1!37370 (get!23799 lt!2526112)))))))

(assert (= (and d!2199997 c!1311585) b!7044545))

(assert (= (and d!2199997 (not c!1311585)) b!7044546))

(declare-fun m!7757802 () Bool)

(assert (=> d!2199997 m!7757802))

(assert (=> b!7044545 m!7756968))

(declare-fun m!7757804 () Bool)

(assert (=> b!7044546 m!7757804))

(assert (=> b!7044546 m!7757804))

(declare-fun m!7757806 () Bool)

(assert (=> b!7044546 m!7757806))

(declare-fun m!7757808 () Bool)

(assert (=> b!7044546 m!7757808))

(assert (=> b!7044546 m!7757806))

(assert (=> b!7044546 m!7757808))

(declare-fun m!7757810 () Bool)

(assert (=> b!7044546 m!7757810))

(assert (=> b!7044058 d!2199997))

(assert (=> b!7044058 d!2199799))

(declare-fun bs!1874306 () Bool)

(declare-fun d!2199999 () Bool)

(assert (= bs!1874306 (and d!2199999 d!2199851)))

(declare-fun lambda!417498 () Int)

(assert (=> bs!1874306 (not (= lambda!417498 lambda!417481))))

(declare-fun bs!1874307 () Bool)

(assert (= bs!1874307 (and d!2199999 d!2199849)))

(assert (=> bs!1874307 (= lambda!417498 lambda!417480)))

(declare-fun bs!1874308 () Bool)

(assert (= bs!1874308 (and d!2199999 d!2199889)))

(assert (=> bs!1874308 (= lambda!417498 lambda!417487)))

(declare-fun bs!1874309 () Bool)

(assert (= bs!1874309 (and d!2199999 d!2199987)))

(assert (=> bs!1874309 (= lambda!417498 lambda!417497)))

(declare-fun bs!1874310 () Bool)

(assert (= bs!1874310 (and d!2199999 b!7043800)))

(assert (=> bs!1874310 (not (= lambda!417498 lambda!417383))))

(declare-fun bs!1874311 () Bool)

(assert (= bs!1874311 (and d!2199999 d!2199623)))

(assert (=> bs!1874311 (not (= lambda!417498 lambda!417436))))

(declare-fun bs!1874312 () Bool)

(assert (= bs!1874312 (and d!2199999 d!2199971)))

(assert (=> bs!1874312 (= lambda!417498 lambda!417493)))

(declare-fun bs!1874313 () Bool)

(assert (= bs!1874313 (and d!2199999 d!2199625)))

(assert (=> bs!1874313 (not (= lambda!417498 lambda!417439))))

(declare-fun bs!1874314 () Bool)

(assert (= bs!1874314 (and d!2199999 d!2199915)))

(assert (=> bs!1874314 (= lambda!417498 lambda!417490)))

(declare-fun bs!1874315 () Bool)

(assert (= bs!1874315 (and d!2199999 d!2199853)))

(assert (=> bs!1874315 (not (= lambda!417498 lambda!417484))))

(declare-fun bs!1874316 () Bool)

(assert (= bs!1874316 (and d!2199999 d!2199901)))

(assert (=> bs!1874316 (= lambda!417498 lambda!417488)))

(declare-fun bs!1874317 () Bool)

(assert (= bs!1874317 (and d!2199999 d!2199959)))

(assert (=> bs!1874317 (= lambda!417498 lambda!417492)))

(assert (=> d!2199999 (= (nullableZipper!2604 lt!2525896) (exists!3450 lt!2525896 lambda!417498))))

(declare-fun bs!1874318 () Bool)

(assert (= bs!1874318 d!2199999))

(declare-fun m!7757812 () Bool)

(assert (=> bs!1874318 m!7757812))

(assert (=> b!7043941 d!2199999))

(declare-fun d!2200001 () Bool)

(declare-fun c!1311590 () Bool)

(assert (=> d!2200001 (= c!1311590 (and (is-ElementMatch!17498 (h!74347 (exprs!6994 lt!2525890))) (= (c!1311360 (h!74347 (exprs!6994 lt!2525890))) (h!74346 s!7408))))))

(declare-fun e!4234922 () (Set Context!12988))

(assert (=> d!2200001 (= (derivationStepZipperDown!2162 (h!74347 (exprs!6994 lt!2525890)) (Context!12989 (t!381796 (exprs!6994 lt!2525890))) (h!74346 s!7408)) e!4234922)))

(declare-fun b!7044547 () Bool)

(declare-fun e!4234923 () (Set Context!12988))

(declare-fun call!639965 () (Set Context!12988))

(assert (=> b!7044547 (= e!4234923 call!639965)))

(declare-fun bm!639958 () Bool)

(declare-fun call!639968 () (Set Context!12988))

(declare-fun call!639967 () (Set Context!12988))

(assert (=> bm!639958 (= call!639968 call!639967)))

(declare-fun b!7044548 () Bool)

(declare-fun e!4234924 () (Set Context!12988))

(declare-fun call!639966 () (Set Context!12988))

(assert (=> b!7044548 (= e!4234924 (set.union call!639967 call!639966))))

(declare-fun b!7044549 () Bool)

(declare-fun e!4234921 () (Set Context!12988))

(assert (=> b!7044549 (= e!4234921 (as set.empty (Set Context!12988)))))

(declare-fun b!7044550 () Bool)

(declare-fun e!4234926 () (Set Context!12988))

(assert (=> b!7044550 (= e!4234926 e!4234923)))

(declare-fun c!1311588 () Bool)

(assert (=> b!7044550 (= c!1311588 (is-Concat!26343 (h!74347 (exprs!6994 lt!2525890))))))

(declare-fun b!7044551 () Bool)

(assert (=> b!7044551 (= e!4234922 (set.insert (Context!12989 (t!381796 (exprs!6994 lt!2525890))) (as set.empty (Set Context!12988))))))

(declare-fun b!7044552 () Bool)

(declare-fun c!1311586 () Bool)

(declare-fun e!4234925 () Bool)

(assert (=> b!7044552 (= c!1311586 e!4234925)))

(declare-fun res!2875863 () Bool)

(assert (=> b!7044552 (=> (not res!2875863) (not e!4234925))))

(assert (=> b!7044552 (= res!2875863 (is-Concat!26343 (h!74347 (exprs!6994 lt!2525890))))))

(assert (=> b!7044552 (= e!4234924 e!4234926)))

(declare-fun b!7044553 () Bool)

(declare-fun c!1311589 () Bool)

(assert (=> b!7044553 (= c!1311589 (is-Star!17498 (h!74347 (exprs!6994 lt!2525890))))))

(assert (=> b!7044553 (= e!4234923 e!4234921)))

(declare-fun b!7044554 () Bool)

(assert (=> b!7044554 (= e!4234922 e!4234924)))

(declare-fun c!1311587 () Bool)

(assert (=> b!7044554 (= c!1311587 (is-Union!17498 (h!74347 (exprs!6994 lt!2525890))))))

(declare-fun call!639963 () List!68023)

(declare-fun bm!639959 () Bool)

(assert (=> bm!639959 (= call!639966 (derivationStepZipperDown!2162 (ite c!1311587 (regTwo!35509 (h!74347 (exprs!6994 lt!2525890))) (regOne!35508 (h!74347 (exprs!6994 lt!2525890)))) (ite c!1311587 (Context!12989 (t!381796 (exprs!6994 lt!2525890))) (Context!12989 call!639963)) (h!74346 s!7408)))))

(declare-fun bm!639960 () Bool)

(assert (=> bm!639960 (= call!639965 call!639968)))

(declare-fun b!7044555 () Bool)

(assert (=> b!7044555 (= e!4234926 (set.union call!639966 call!639968))))

(declare-fun bm!639961 () Bool)

(assert (=> bm!639961 (= call!639963 ($colon$colon!2597 (exprs!6994 (Context!12989 (t!381796 (exprs!6994 lt!2525890)))) (ite (or c!1311586 c!1311588) (regTwo!35508 (h!74347 (exprs!6994 lt!2525890))) (h!74347 (exprs!6994 lt!2525890)))))))

(declare-fun b!7044556 () Bool)

(assert (=> b!7044556 (= e!4234921 call!639965)))

(declare-fun bm!639962 () Bool)

(declare-fun call!639964 () List!68023)

(assert (=> bm!639962 (= call!639967 (derivationStepZipperDown!2162 (ite c!1311587 (regOne!35509 (h!74347 (exprs!6994 lt!2525890))) (ite c!1311586 (regTwo!35508 (h!74347 (exprs!6994 lt!2525890))) (ite c!1311588 (regOne!35508 (h!74347 (exprs!6994 lt!2525890))) (reg!17827 (h!74347 (exprs!6994 lt!2525890)))))) (ite (or c!1311587 c!1311586) (Context!12989 (t!381796 (exprs!6994 lt!2525890))) (Context!12989 call!639964)) (h!74346 s!7408)))))

(declare-fun bm!639963 () Bool)

(assert (=> bm!639963 (= call!639964 call!639963)))

(declare-fun b!7044557 () Bool)

(assert (=> b!7044557 (= e!4234925 (nullable!7209 (regOne!35508 (h!74347 (exprs!6994 lt!2525890)))))))

(assert (= (and d!2200001 c!1311590) b!7044551))

(assert (= (and d!2200001 (not c!1311590)) b!7044554))

(assert (= (and b!7044554 c!1311587) b!7044548))

(assert (= (and b!7044554 (not c!1311587)) b!7044552))

(assert (= (and b!7044552 res!2875863) b!7044557))

(assert (= (and b!7044552 c!1311586) b!7044555))

(assert (= (and b!7044552 (not c!1311586)) b!7044550))

(assert (= (and b!7044550 c!1311588) b!7044547))

(assert (= (and b!7044550 (not c!1311588)) b!7044553))

(assert (= (and b!7044553 c!1311589) b!7044556))

(assert (= (and b!7044553 (not c!1311589)) b!7044549))

(assert (= (or b!7044547 b!7044556) bm!639963))

(assert (= (or b!7044547 b!7044556) bm!639960))

(assert (= (or b!7044555 bm!639960) bm!639958))

(assert (= (or b!7044555 bm!639963) bm!639961))

(assert (= (or b!7044548 bm!639958) bm!639962))

(assert (= (or b!7044548 b!7044555) bm!639959))

(declare-fun m!7757814 () Bool)

(assert (=> b!7044557 m!7757814))

(declare-fun m!7757816 () Bool)

(assert (=> bm!639961 m!7757816))

(declare-fun m!7757818 () Bool)

(assert (=> b!7044551 m!7757818))

(declare-fun m!7757820 () Bool)

(assert (=> bm!639962 m!7757820))

(declare-fun m!7757822 () Bool)

(assert (=> bm!639959 m!7757822))

(assert (=> bm!639862 d!2200001))

(declare-fun d!2200003 () Bool)

(declare-fun lt!2526200 () Int)

(assert (=> d!2200003 (>= lt!2526200 0)))

(declare-fun e!4234927 () Int)

(assert (=> d!2200003 (= lt!2526200 e!4234927)))

(declare-fun c!1311591 () Bool)

(assert (=> d!2200003 (= c!1311591 (is-Nil!67899 lt!2526092))))

(assert (=> d!2200003 (= (size!41104 lt!2526092) lt!2526200)))

(declare-fun b!7044558 () Bool)

(assert (=> b!7044558 (= e!4234927 0)))

(declare-fun b!7044559 () Bool)

(assert (=> b!7044559 (= e!4234927 (+ 1 (size!41104 (t!381796 lt!2526092))))))

(assert (= (and d!2200003 c!1311591) b!7044558))

(assert (= (and d!2200003 (not c!1311591)) b!7044559))

(declare-fun m!7757824 () Bool)

(assert (=> b!7044559 m!7757824))

(assert (=> b!7043981 d!2200003))

(declare-fun d!2200005 () Bool)

(declare-fun lt!2526201 () Int)

(assert (=> d!2200005 (>= lt!2526201 0)))

(declare-fun e!4234928 () Int)

(assert (=> d!2200005 (= lt!2526201 e!4234928)))

(declare-fun c!1311592 () Bool)

(assert (=> d!2200005 (= c!1311592 (is-Nil!67899 lt!2525921))))

(assert (=> d!2200005 (= (size!41104 lt!2525921) lt!2526201)))

(declare-fun b!7044560 () Bool)

(assert (=> b!7044560 (= e!4234928 0)))

(declare-fun b!7044561 () Bool)

(assert (=> b!7044561 (= e!4234928 (+ 1 (size!41104 (t!381796 lt!2525921))))))

(assert (= (and d!2200005 c!1311592) b!7044560))

(assert (= (and d!2200005 (not c!1311592)) b!7044561))

(assert (=> b!7044561 m!7757662))

(assert (=> b!7043981 d!2200005))

(assert (=> b!7043981 d!2199807))

(assert (=> bs!1874125 d!2199609))

(declare-fun d!2200007 () Bool)

(assert (=> d!2200007 (= (nullable!7209 (h!74347 (exprs!6994 lt!2525916))) (nullableFct!2749 (h!74347 (exprs!6994 lt!2525916))))))

(declare-fun bs!1874319 () Bool)

(assert (= bs!1874319 d!2200007))

(declare-fun m!7757826 () Bool)

(assert (=> bs!1874319 m!7757826))

(assert (=> b!7044016 d!2200007))

(declare-fun d!2200009 () Bool)

(declare-fun c!1311593 () Bool)

(assert (=> d!2200009 (= c!1311593 (isEmpty!39628 (tail!13614 (_1!37370 lt!2525920))))))

(declare-fun e!4234929 () Bool)

(assert (=> d!2200009 (= (matchZipper!3038 (derivationStepZipper!2954 lt!2525884 (head!14297 (_1!37370 lt!2525920))) (tail!13614 (_1!37370 lt!2525920))) e!4234929)))

(declare-fun b!7044562 () Bool)

(assert (=> b!7044562 (= e!4234929 (nullableZipper!2604 (derivationStepZipper!2954 lt!2525884 (head!14297 (_1!37370 lt!2525920)))))))

(declare-fun b!7044563 () Bool)

(assert (=> b!7044563 (= e!4234929 (matchZipper!3038 (derivationStepZipper!2954 (derivationStepZipper!2954 lt!2525884 (head!14297 (_1!37370 lt!2525920))) (head!14297 (tail!13614 (_1!37370 lt!2525920)))) (tail!13614 (tail!13614 (_1!37370 lt!2525920)))))))

(assert (= (and d!2200009 c!1311593) b!7044562))

(assert (= (and d!2200009 (not c!1311593)) b!7044563))

(assert (=> d!2200009 m!7756814))

(assert (=> d!2200009 m!7757526))

(assert (=> b!7044562 m!7756944))

(declare-fun m!7757828 () Bool)

(assert (=> b!7044562 m!7757828))

(assert (=> b!7044563 m!7756814))

(assert (=> b!7044563 m!7757530))

(assert (=> b!7044563 m!7756944))

(assert (=> b!7044563 m!7757530))

(declare-fun m!7757830 () Bool)

(assert (=> b!7044563 m!7757830))

(assert (=> b!7044563 m!7756814))

(assert (=> b!7044563 m!7757534))

(assert (=> b!7044563 m!7757830))

(assert (=> b!7044563 m!7757534))

(declare-fun m!7757832 () Bool)

(assert (=> b!7044563 m!7757832))

(assert (=> b!7044028 d!2200009))

(declare-fun bs!1874320 () Bool)

(declare-fun d!2200011 () Bool)

(assert (= bs!1874320 (and d!2200011 d!2199677)))

(declare-fun lambda!417499 () Int)

(assert (=> bs!1874320 (= (= (head!14297 (_1!37370 lt!2525920)) (h!74346 s!7408)) (= lambda!417499 lambda!417453))))

(declare-fun bs!1874321 () Bool)

(assert (= bs!1874321 (and d!2200011 d!2199929)))

(assert (=> bs!1874321 (= (= (head!14297 (_1!37370 lt!2525920)) (head!14297 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920)))) (= lambda!417499 lambda!417491))))

(declare-fun bs!1874322 () Bool)

(assert (= bs!1874322 (and d!2200011 d!2199613)))

(assert (=> bs!1874322 (= (= (head!14297 (_1!37370 lt!2525920)) (h!74346 s!7408)) (= lambda!417499 lambda!417433))))

(declare-fun bs!1874323 () Bool)

(assert (= bs!1874323 (and d!2200011 d!2199977)))

(assert (=> bs!1874323 (= (= (head!14297 (_1!37370 lt!2525920)) (head!14297 (t!381795 s!7408))) (= lambda!417499 lambda!417495))))

(declare-fun bs!1874324 () Bool)

(assert (= bs!1874324 (and d!2200011 d!2199881)))

(assert (=> bs!1874324 (= lambda!417499 lambda!417486)))

(declare-fun bs!1874325 () Bool)

(assert (= bs!1874325 (and d!2200011 d!2199981)))

(assert (=> bs!1874325 (= (= (head!14297 (_1!37370 lt!2525920)) (head!14297 s!7408)) (= lambda!417499 lambda!417496))))

(declare-fun bs!1874326 () Bool)

(assert (= bs!1874326 (and d!2200011 d!2199867)))

(assert (=> bs!1874326 (= lambda!417499 lambda!417485)))

(declare-fun bs!1874327 () Bool)

(assert (= bs!1874327 (and d!2200011 b!7043806)))

(assert (=> bs!1874327 (= (= (head!14297 (_1!37370 lt!2525920)) (h!74346 s!7408)) (= lambda!417499 lambda!417386))))

(declare-fun bs!1874328 () Bool)

(assert (= bs!1874328 (and d!2200011 d!2199843)))

(assert (=> bs!1874328 (= (= (head!14297 (_1!37370 lt!2525920)) (head!14297 (t!381795 s!7408))) (= lambda!417499 lambda!417477))))

(declare-fun bs!1874329 () Bool)

(assert (= bs!1874329 (and d!2200011 d!2199907)))

(assert (=> bs!1874329 (= (= (head!14297 (_1!37370 lt!2525920)) (head!14297 (_2!37370 lt!2525920))) (= lambda!417499 lambda!417489))))

(assert (=> d!2200011 true))

(assert (=> d!2200011 (= (derivationStepZipper!2954 lt!2525884 (head!14297 (_1!37370 lt!2525920))) (flatMap!2445 lt!2525884 lambda!417499))))

(declare-fun bs!1874330 () Bool)

(assert (= bs!1874330 d!2200011))

(declare-fun m!7757834 () Bool)

(assert (=> bs!1874330 m!7757834))

(assert (=> b!7044028 d!2200011))

(assert (=> b!7044028 d!2199869))

(assert (=> b!7044028 d!2199871))

(declare-fun d!2200013 () Bool)

(declare-fun e!4234930 () Bool)

(assert (=> d!2200013 e!4234930))

(declare-fun res!2875864 () Bool)

(assert (=> d!2200013 (=> (not res!2875864) (not e!4234930))))

(declare-fun lt!2526202 () List!68023)

(assert (=> d!2200013 (= res!2875864 (= (content!13597 lt!2526202) (set.union (content!13597 (t!381796 (exprs!6994 lt!2525892))) (content!13597 (exprs!6994 ct2!306)))))))

(declare-fun e!4234931 () List!68023)

(assert (=> d!2200013 (= lt!2526202 e!4234931)))

(declare-fun c!1311594 () Bool)

(assert (=> d!2200013 (= c!1311594 (is-Nil!67899 (t!381796 (exprs!6994 lt!2525892))))))

(assert (=> d!2200013 (= (++!15572 (t!381796 (exprs!6994 lt!2525892)) (exprs!6994 ct2!306)) lt!2526202)))

(declare-fun b!7044567 () Bool)

(assert (=> b!7044567 (= e!4234930 (or (not (= (exprs!6994 ct2!306) Nil!67899)) (= lt!2526202 (t!381796 (exprs!6994 lt!2525892)))))))

(declare-fun b!7044566 () Bool)

(declare-fun res!2875865 () Bool)

(assert (=> b!7044566 (=> (not res!2875865) (not e!4234930))))

(assert (=> b!7044566 (= res!2875865 (= (size!41104 lt!2526202) (+ (size!41104 (t!381796 (exprs!6994 lt!2525892))) (size!41104 (exprs!6994 ct2!306)))))))

(declare-fun b!7044564 () Bool)

(assert (=> b!7044564 (= e!4234931 (exprs!6994 ct2!306))))

(declare-fun b!7044565 () Bool)

(assert (=> b!7044565 (= e!4234931 (Cons!67899 (h!74347 (t!381796 (exprs!6994 lt!2525892))) (++!15572 (t!381796 (t!381796 (exprs!6994 lt!2525892))) (exprs!6994 ct2!306))))))

(assert (= (and d!2200013 c!1311594) b!7044564))

(assert (= (and d!2200013 (not c!1311594)) b!7044565))

(assert (= (and d!2200013 res!2875864) b!7044566))

(assert (= (and b!7044566 res!2875865) b!7044567))

(declare-fun m!7757836 () Bool)

(assert (=> d!2200013 m!7757836))

(assert (=> d!2200013 m!7757546))

(assert (=> d!2200013 m!7756746))

(declare-fun m!7757838 () Bool)

(assert (=> b!7044566 m!7757838))

(assert (=> b!7044566 m!7757398))

(assert (=> b!7044566 m!7756752))

(declare-fun m!7757840 () Bool)

(assert (=> b!7044565 m!7757840))

(assert (=> b!7043923 d!2200013))

(assert (=> d!2199653 d!2199887))

(declare-fun d!2200015 () Bool)

(declare-fun c!1311599 () Bool)

(assert (=> d!2200015 (= c!1311599 (and (is-ElementMatch!17498 (ite c!1311427 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892))))) (= (c!1311360 (ite c!1311427 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892))))) (h!74346 s!7408))))))

(declare-fun e!4234933 () (Set Context!12988))

(assert (=> d!2200015 (= (derivationStepZipperDown!2162 (ite c!1311427 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892)))) (ite c!1311427 lt!2525916 (Context!12989 call!639887)) (h!74346 s!7408)) e!4234933)))

(declare-fun b!7044568 () Bool)

(declare-fun e!4234934 () (Set Context!12988))

(declare-fun call!639971 () (Set Context!12988))

(assert (=> b!7044568 (= e!4234934 call!639971)))

(declare-fun bm!639964 () Bool)

(declare-fun call!639974 () (Set Context!12988))

(declare-fun call!639973 () (Set Context!12988))

(assert (=> bm!639964 (= call!639974 call!639973)))

(declare-fun b!7044569 () Bool)

(declare-fun e!4234935 () (Set Context!12988))

(declare-fun call!639972 () (Set Context!12988))

(assert (=> b!7044569 (= e!4234935 (set.union call!639973 call!639972))))

(declare-fun b!7044570 () Bool)

(declare-fun e!4234932 () (Set Context!12988))

(assert (=> b!7044570 (= e!4234932 (as set.empty (Set Context!12988)))))

(declare-fun b!7044571 () Bool)

(declare-fun e!4234937 () (Set Context!12988))

(assert (=> b!7044571 (= e!4234937 e!4234934)))

(declare-fun c!1311597 () Bool)

(assert (=> b!7044571 (= c!1311597 (is-Concat!26343 (ite c!1311427 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892))))))))

(declare-fun b!7044572 () Bool)

(assert (=> b!7044572 (= e!4234933 (set.insert (ite c!1311427 lt!2525916 (Context!12989 call!639887)) (as set.empty (Set Context!12988))))))

(declare-fun b!7044573 () Bool)

(declare-fun c!1311595 () Bool)

(declare-fun e!4234936 () Bool)

(assert (=> b!7044573 (= c!1311595 e!4234936)))

(declare-fun res!2875866 () Bool)

(assert (=> b!7044573 (=> (not res!2875866) (not e!4234936))))

(assert (=> b!7044573 (= res!2875866 (is-Concat!26343 (ite c!1311427 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892))))))))

(assert (=> b!7044573 (= e!4234935 e!4234937)))

(declare-fun b!7044574 () Bool)

(declare-fun c!1311598 () Bool)

(assert (=> b!7044574 (= c!1311598 (is-Star!17498 (ite c!1311427 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892))))))))

(assert (=> b!7044574 (= e!4234934 e!4234932)))

(declare-fun b!7044575 () Bool)

(assert (=> b!7044575 (= e!4234933 e!4234935)))

(declare-fun c!1311596 () Bool)

(assert (=> b!7044575 (= c!1311596 (is-Union!17498 (ite c!1311427 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892))))))))

(declare-fun call!639969 () List!68023)

(declare-fun bm!639965 () Bool)

(assert (=> bm!639965 (= call!639972 (derivationStepZipperDown!2162 (ite c!1311596 (regTwo!35509 (ite c!1311427 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892))))) (regOne!35508 (ite c!1311427 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892)))))) (ite c!1311596 (ite c!1311427 lt!2525916 (Context!12989 call!639887)) (Context!12989 call!639969)) (h!74346 s!7408)))))

(declare-fun bm!639966 () Bool)

(assert (=> bm!639966 (= call!639971 call!639974)))

(declare-fun b!7044576 () Bool)

(assert (=> b!7044576 (= e!4234937 (set.union call!639972 call!639974))))

(declare-fun bm!639967 () Bool)

(assert (=> bm!639967 (= call!639969 ($colon$colon!2597 (exprs!6994 (ite c!1311427 lt!2525916 (Context!12989 call!639887))) (ite (or c!1311595 c!1311597) (regTwo!35508 (ite c!1311427 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892))))) (ite c!1311427 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892)))))))))

(declare-fun b!7044577 () Bool)

(assert (=> b!7044577 (= e!4234932 call!639971)))

(declare-fun call!639970 () List!68023)

(declare-fun bm!639968 () Bool)

(assert (=> bm!639968 (= call!639973 (derivationStepZipperDown!2162 (ite c!1311596 (regOne!35509 (ite c!1311427 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892))))) (ite c!1311595 (regTwo!35508 (ite c!1311427 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892))))) (ite c!1311597 (regOne!35508 (ite c!1311427 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892))))) (reg!17827 (ite c!1311427 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892)))))))) (ite (or c!1311596 c!1311595) (ite c!1311427 lt!2525916 (Context!12989 call!639887)) (Context!12989 call!639970)) (h!74346 s!7408)))))

(declare-fun bm!639969 () Bool)

(assert (=> bm!639969 (= call!639970 call!639969)))

(declare-fun b!7044578 () Bool)

(assert (=> b!7044578 (= e!4234936 (nullable!7209 (regOne!35508 (ite c!1311427 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892)))))))))

(assert (= (and d!2200015 c!1311599) b!7044572))

(assert (= (and d!2200015 (not c!1311599)) b!7044575))

(assert (= (and b!7044575 c!1311596) b!7044569))

(assert (= (and b!7044575 (not c!1311596)) b!7044573))

(assert (= (and b!7044573 res!2875866) b!7044578))

(assert (= (and b!7044573 c!1311595) b!7044576))

(assert (= (and b!7044573 (not c!1311595)) b!7044571))

(assert (= (and b!7044571 c!1311597) b!7044568))

(assert (= (and b!7044571 (not c!1311597)) b!7044574))

(assert (= (and b!7044574 c!1311598) b!7044577))

(assert (= (and b!7044574 (not c!1311598)) b!7044570))

(assert (= (or b!7044568 b!7044577) bm!639969))

(assert (= (or b!7044568 b!7044577) bm!639966))

(assert (= (or b!7044576 bm!639966) bm!639964))

(assert (= (or b!7044576 bm!639969) bm!639967))

(assert (= (or b!7044569 bm!639964) bm!639968))

(assert (= (or b!7044569 b!7044576) bm!639965))

(declare-fun m!7757842 () Bool)

(assert (=> b!7044578 m!7757842))

(declare-fun m!7757844 () Bool)

(assert (=> bm!639967 m!7757844))

(declare-fun m!7757846 () Bool)

(assert (=> b!7044572 m!7757846))

(declare-fun m!7757848 () Bool)

(assert (=> bm!639968 m!7757848))

(declare-fun m!7757850 () Bool)

(assert (=> bm!639965 m!7757850))

(assert (=> bm!639883 d!2200015))

(declare-fun d!2200017 () Bool)

(declare-fun c!1311600 () Bool)

(assert (=> d!2200017 (= c!1311600 (isEmpty!39628 (tail!13614 (t!381795 s!7408))))))

(declare-fun e!4234938 () Bool)

(assert (=> d!2200017 (= (matchZipper!3038 (derivationStepZipper!2954 lt!2525889 (head!14297 (t!381795 s!7408))) (tail!13614 (t!381795 s!7408))) e!4234938)))

(declare-fun b!7044579 () Bool)

(assert (=> b!7044579 (= e!4234938 (nullableZipper!2604 (derivationStepZipper!2954 lt!2525889 (head!14297 (t!381795 s!7408)))))))

(declare-fun b!7044580 () Bool)

(assert (=> b!7044580 (= e!4234938 (matchZipper!3038 (derivationStepZipper!2954 (derivationStepZipper!2954 lt!2525889 (head!14297 (t!381795 s!7408))) (head!14297 (tail!13614 (t!381795 s!7408)))) (tail!13614 (tail!13614 (t!381795 s!7408)))))))

(assert (= (and d!2200017 c!1311600) b!7044579))

(assert (= (and d!2200017 (not c!1311600)) b!7044580))

(assert (=> d!2200017 m!7756784))

(assert (=> d!2200017 m!7757478))

(assert (=> b!7044579 m!7756782))

(declare-fun m!7757852 () Bool)

(assert (=> b!7044579 m!7757852))

(assert (=> b!7044580 m!7756784))

(assert (=> b!7044580 m!7757482))

(assert (=> b!7044580 m!7756782))

(assert (=> b!7044580 m!7757482))

(declare-fun m!7757854 () Bool)

(assert (=> b!7044580 m!7757854))

(assert (=> b!7044580 m!7756784))

(assert (=> b!7044580 m!7757486))

(assert (=> b!7044580 m!7757854))

(assert (=> b!7044580 m!7757486))

(declare-fun m!7757856 () Bool)

(assert (=> b!7044580 m!7757856))

(assert (=> b!7043938 d!2200017))

(declare-fun bs!1874331 () Bool)

(declare-fun d!2200019 () Bool)

(assert (= bs!1874331 (and d!2200019 d!2199677)))

(declare-fun lambda!417500 () Int)

(assert (=> bs!1874331 (= (= (head!14297 (t!381795 s!7408)) (h!74346 s!7408)) (= lambda!417500 lambda!417453))))

(declare-fun bs!1874332 () Bool)

(assert (= bs!1874332 (and d!2200019 d!2200011)))

(assert (=> bs!1874332 (= (= (head!14297 (t!381795 s!7408)) (head!14297 (_1!37370 lt!2525920))) (= lambda!417500 lambda!417499))))

(declare-fun bs!1874333 () Bool)

(assert (= bs!1874333 (and d!2200019 d!2199929)))

(assert (=> bs!1874333 (= (= (head!14297 (t!381795 s!7408)) (head!14297 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920)))) (= lambda!417500 lambda!417491))))

(declare-fun bs!1874334 () Bool)

(assert (= bs!1874334 (and d!2200019 d!2199613)))

(assert (=> bs!1874334 (= (= (head!14297 (t!381795 s!7408)) (h!74346 s!7408)) (= lambda!417500 lambda!417433))))

(declare-fun bs!1874335 () Bool)

(assert (= bs!1874335 (and d!2200019 d!2199977)))

(assert (=> bs!1874335 (= lambda!417500 lambda!417495)))

(declare-fun bs!1874336 () Bool)

(assert (= bs!1874336 (and d!2200019 d!2199881)))

(assert (=> bs!1874336 (= (= (head!14297 (t!381795 s!7408)) (head!14297 (_1!37370 lt!2525920))) (= lambda!417500 lambda!417486))))

(declare-fun bs!1874337 () Bool)

(assert (= bs!1874337 (and d!2200019 d!2199981)))

(assert (=> bs!1874337 (= (= (head!14297 (t!381795 s!7408)) (head!14297 s!7408)) (= lambda!417500 lambda!417496))))

(declare-fun bs!1874338 () Bool)

(assert (= bs!1874338 (and d!2200019 d!2199867)))

(assert (=> bs!1874338 (= (= (head!14297 (t!381795 s!7408)) (head!14297 (_1!37370 lt!2525920))) (= lambda!417500 lambda!417485))))

(declare-fun bs!1874339 () Bool)

(assert (= bs!1874339 (and d!2200019 b!7043806)))

(assert (=> bs!1874339 (= (= (head!14297 (t!381795 s!7408)) (h!74346 s!7408)) (= lambda!417500 lambda!417386))))

(declare-fun bs!1874340 () Bool)

(assert (= bs!1874340 (and d!2200019 d!2199843)))

(assert (=> bs!1874340 (= lambda!417500 lambda!417477)))

(declare-fun bs!1874341 () Bool)

(assert (= bs!1874341 (and d!2200019 d!2199907)))

(assert (=> bs!1874341 (= (= (head!14297 (t!381795 s!7408)) (head!14297 (_2!37370 lt!2525920))) (= lambda!417500 lambda!417489))))

(assert (=> d!2200019 true))

(assert (=> d!2200019 (= (derivationStepZipper!2954 lt!2525889 (head!14297 (t!381795 s!7408))) (flatMap!2445 lt!2525889 lambda!417500))))

(declare-fun bs!1874342 () Bool)

(assert (= bs!1874342 d!2200019))

(declare-fun m!7757858 () Bool)

(assert (=> bs!1874342 m!7757858))

(assert (=> b!7043938 d!2200019))

(assert (=> b!7043938 d!2199845))

(assert (=> b!7043938 d!2199847))

(declare-fun bs!1874343 () Bool)

(declare-fun d!2200021 () Bool)

(assert (= bs!1874343 (and d!2200021 d!2199849)))

(declare-fun lambda!417501 () Int)

(assert (=> bs!1874343 (= lambda!417501 lambda!417480)))

(declare-fun bs!1874344 () Bool)

(assert (= bs!1874344 (and d!2200021 d!2199889)))

(assert (=> bs!1874344 (= lambda!417501 lambda!417487)))

(declare-fun bs!1874345 () Bool)

(assert (= bs!1874345 (and d!2200021 d!2199987)))

(assert (=> bs!1874345 (= lambda!417501 lambda!417497)))

(declare-fun bs!1874346 () Bool)

(assert (= bs!1874346 (and d!2200021 b!7043800)))

(assert (=> bs!1874346 (not (= lambda!417501 lambda!417383))))

(declare-fun bs!1874347 () Bool)

(assert (= bs!1874347 (and d!2200021 d!2199623)))

(assert (=> bs!1874347 (not (= lambda!417501 lambda!417436))))

(declare-fun bs!1874348 () Bool)

(assert (= bs!1874348 (and d!2200021 d!2199971)))

(assert (=> bs!1874348 (= lambda!417501 lambda!417493)))

(declare-fun bs!1874349 () Bool)

(assert (= bs!1874349 (and d!2200021 d!2199625)))

(assert (=> bs!1874349 (not (= lambda!417501 lambda!417439))))

(declare-fun bs!1874350 () Bool)

(assert (= bs!1874350 (and d!2200021 d!2199999)))

(assert (=> bs!1874350 (= lambda!417501 lambda!417498)))

(declare-fun bs!1874351 () Bool)

(assert (= bs!1874351 (and d!2200021 d!2199851)))

(assert (=> bs!1874351 (not (= lambda!417501 lambda!417481))))

(declare-fun bs!1874352 () Bool)

(assert (= bs!1874352 (and d!2200021 d!2199915)))

(assert (=> bs!1874352 (= lambda!417501 lambda!417490)))

(declare-fun bs!1874353 () Bool)

(assert (= bs!1874353 (and d!2200021 d!2199853)))

(assert (=> bs!1874353 (not (= lambda!417501 lambda!417484))))

(declare-fun bs!1874354 () Bool)

(assert (= bs!1874354 (and d!2200021 d!2199901)))

(assert (=> bs!1874354 (= lambda!417501 lambda!417488)))

(declare-fun bs!1874355 () Bool)

(assert (= bs!1874355 (and d!2200021 d!2199959)))

(assert (=> bs!1874355 (= lambda!417501 lambda!417492)))

(assert (=> d!2200021 (= (nullableZipper!2604 lt!2525906) (exists!3450 lt!2525906 lambda!417501))))

(declare-fun bs!1874356 () Bool)

(assert (= bs!1874356 d!2200021))

(declare-fun m!7757860 () Bool)

(assert (=> bs!1874356 m!7757860))

(assert (=> b!7043939 d!2200021))

(declare-fun d!2200023 () Bool)

(declare-fun res!2875867 () Bool)

(declare-fun e!4234939 () Bool)

(assert (=> d!2200023 (=> res!2875867 e!4234939)))

(assert (=> d!2200023 (= res!2875867 (is-Nil!67899 (++!15572 lt!2525921 (exprs!6994 ct2!306))))))

(assert (=> d!2200023 (= (forall!16426 (++!15572 lt!2525921 (exprs!6994 ct2!306)) lambda!417385) e!4234939)))

(declare-fun b!7044581 () Bool)

(declare-fun e!4234940 () Bool)

(assert (=> b!7044581 (= e!4234939 e!4234940)))

(declare-fun res!2875868 () Bool)

(assert (=> b!7044581 (=> (not res!2875868) (not e!4234940))))

(assert (=> b!7044581 (= res!2875868 (dynLambda!27485 lambda!417385 (h!74347 (++!15572 lt!2525921 (exprs!6994 ct2!306)))))))

(declare-fun b!7044582 () Bool)

(assert (=> b!7044582 (= e!4234940 (forall!16426 (t!381796 (++!15572 lt!2525921 (exprs!6994 ct2!306))) lambda!417385))))

(assert (= (and d!2200023 (not res!2875867)) b!7044581))

(assert (= (and b!7044581 res!2875868) b!7044582))

(declare-fun b_lambda!267553 () Bool)

(assert (=> (not b_lambda!267553) (not b!7044581)))

(declare-fun m!7757862 () Bool)

(assert (=> b!7044581 m!7757862))

(declare-fun m!7757864 () Bool)

(assert (=> b!7044582 m!7757864))

(assert (=> d!2199603 d!2200023))

(assert (=> d!2199603 d!2199629))

(declare-fun d!2200025 () Bool)

(assert (=> d!2200025 (forall!16426 (++!15572 lt!2525921 (exprs!6994 ct2!306)) lambda!417385)))

(assert (=> d!2200025 true))

(declare-fun _$78!614 () Unit!161678)

(assert (=> d!2200025 (= (choose!53504 lt!2525921 (exprs!6994 ct2!306) lambda!417385) _$78!614)))

(declare-fun bs!1874357 () Bool)

(assert (= bs!1874357 d!2200025))

(assert (=> bs!1874357 m!7756622))

(assert (=> bs!1874357 m!7756622))

(assert (=> bs!1874357 m!7756800))

(assert (=> d!2199603 d!2200025))

(declare-fun d!2200027 () Bool)

(declare-fun res!2875869 () Bool)

(declare-fun e!4234941 () Bool)

(assert (=> d!2200027 (=> res!2875869 e!4234941)))

(assert (=> d!2200027 (= res!2875869 (is-Nil!67899 lt!2525921))))

(assert (=> d!2200027 (= (forall!16426 lt!2525921 lambda!417385) e!4234941)))

(declare-fun b!7044583 () Bool)

(declare-fun e!4234942 () Bool)

(assert (=> b!7044583 (= e!4234941 e!4234942)))

(declare-fun res!2875870 () Bool)

(assert (=> b!7044583 (=> (not res!2875870) (not e!4234942))))

(assert (=> b!7044583 (= res!2875870 (dynLambda!27485 lambda!417385 (h!74347 lt!2525921)))))

(declare-fun b!7044584 () Bool)

(assert (=> b!7044584 (= e!4234942 (forall!16426 (t!381796 lt!2525921) lambda!417385))))

(assert (= (and d!2200027 (not res!2875869)) b!7044583))

(assert (= (and b!7044583 res!2875870) b!7044584))

(declare-fun b_lambda!267555 () Bool)

(assert (=> (not b_lambda!267555) (not b!7044583)))

(declare-fun m!7757866 () Bool)

(assert (=> b!7044583 m!7757866))

(declare-fun m!7757868 () Bool)

(assert (=> b!7044584 m!7757868))

(assert (=> d!2199603 d!2200027))

(declare-fun d!2200029 () Bool)

(assert (=> d!2200029 (forall!16426 (++!15572 (exprs!6994 lt!2526075) (exprs!6994 ct2!306)) lambda!417385)))

(declare-fun lt!2526203 () Unit!161678)

(assert (=> d!2200029 (= lt!2526203 (choose!53504 (exprs!6994 lt!2526075) (exprs!6994 ct2!306) lambda!417385))))

(assert (=> d!2200029 (forall!16426 (exprs!6994 lt!2526075) lambda!417385)))

(assert (=> d!2200029 (= (lemmaConcatPreservesForall!819 (exprs!6994 lt!2526075) (exprs!6994 ct2!306) lambda!417385) lt!2526203)))

(declare-fun bs!1874358 () Bool)

(assert (= bs!1874358 d!2200029))

(assert (=> bs!1874358 m!7757050))

(assert (=> bs!1874358 m!7757050))

(declare-fun m!7757870 () Bool)

(assert (=> bs!1874358 m!7757870))

(declare-fun m!7757872 () Bool)

(assert (=> bs!1874358 m!7757872))

(declare-fun m!7757874 () Bool)

(assert (=> bs!1874358 m!7757874))

(assert (=> bs!1874128 d!2200029))

(declare-fun d!2200031 () Bool)

(declare-fun e!4234943 () Bool)

(assert (=> d!2200031 e!4234943))

(declare-fun res!2875871 () Bool)

(assert (=> d!2200031 (=> (not res!2875871) (not e!4234943))))

(declare-fun lt!2526204 () List!68023)

(assert (=> d!2200031 (= res!2875871 (= (content!13597 lt!2526204) (set.union (content!13597 (exprs!6994 lt!2526075)) (content!13597 (exprs!6994 ct2!306)))))))

(declare-fun e!4234944 () List!68023)

(assert (=> d!2200031 (= lt!2526204 e!4234944)))

(declare-fun c!1311601 () Bool)

(assert (=> d!2200031 (= c!1311601 (is-Nil!67899 (exprs!6994 lt!2526075)))))

(assert (=> d!2200031 (= (++!15572 (exprs!6994 lt!2526075) (exprs!6994 ct2!306)) lt!2526204)))

(declare-fun b!7044588 () Bool)

(assert (=> b!7044588 (= e!4234943 (or (not (= (exprs!6994 ct2!306) Nil!67899)) (= lt!2526204 (exprs!6994 lt!2526075))))))

(declare-fun b!7044587 () Bool)

(declare-fun res!2875872 () Bool)

(assert (=> b!7044587 (=> (not res!2875872) (not e!4234943))))

(assert (=> b!7044587 (= res!2875872 (= (size!41104 lt!2526204) (+ (size!41104 (exprs!6994 lt!2526075)) (size!41104 (exprs!6994 ct2!306)))))))

(declare-fun b!7044585 () Bool)

(assert (=> b!7044585 (= e!4234944 (exprs!6994 ct2!306))))

(declare-fun b!7044586 () Bool)

(assert (=> b!7044586 (= e!4234944 (Cons!67899 (h!74347 (exprs!6994 lt!2526075)) (++!15572 (t!381796 (exprs!6994 lt!2526075)) (exprs!6994 ct2!306))))))

(assert (= (and d!2200031 c!1311601) b!7044585))

(assert (= (and d!2200031 (not c!1311601)) b!7044586))

(assert (= (and d!2200031 res!2875871) b!7044587))

(assert (= (and b!7044587 res!2875872) b!7044588))

(declare-fun m!7757876 () Bool)

(assert (=> d!2200031 m!7757876))

(declare-fun m!7757878 () Bool)

(assert (=> d!2200031 m!7757878))

(assert (=> d!2200031 m!7756746))

(declare-fun m!7757880 () Bool)

(assert (=> b!7044587 m!7757880))

(declare-fun m!7757882 () Bool)

(assert (=> b!7044587 m!7757882))

(assert (=> b!7044587 m!7756752))

(declare-fun m!7757884 () Bool)

(assert (=> b!7044586 m!7757884))

(assert (=> bs!1874128 d!2200031))

(declare-fun d!2200033 () Bool)

(declare-fun res!2875873 () Bool)

(declare-fun e!4234945 () Bool)

(assert (=> d!2200033 (=> res!2875873 e!4234945)))

(assert (=> d!2200033 (= res!2875873 (is-Nil!67899 (exprs!6994 setElem!49403)))))

(assert (=> d!2200033 (= (forall!16426 (exprs!6994 setElem!49403) lambda!417442) e!4234945)))

(declare-fun b!7044589 () Bool)

(declare-fun e!4234946 () Bool)

(assert (=> b!7044589 (= e!4234945 e!4234946)))

(declare-fun res!2875874 () Bool)

(assert (=> b!7044589 (=> (not res!2875874) (not e!4234946))))

(assert (=> b!7044589 (= res!2875874 (dynLambda!27485 lambda!417442 (h!74347 (exprs!6994 setElem!49403))))))

(declare-fun b!7044590 () Bool)

(assert (=> b!7044590 (= e!4234946 (forall!16426 (t!381796 (exprs!6994 setElem!49403)) lambda!417442))))

(assert (= (and d!2200033 (not res!2875873)) b!7044589))

(assert (= (and b!7044589 res!2875874) b!7044590))

(declare-fun b_lambda!267557 () Bool)

(assert (=> (not b_lambda!267557) (not b!7044589)))

(declare-fun m!7757886 () Bool)

(assert (=> b!7044589 m!7757886))

(declare-fun m!7757888 () Bool)

(assert (=> b!7044590 m!7757888))

(assert (=> d!2199635 d!2200033))

(declare-fun d!2200035 () Bool)

(declare-fun c!1311604 () Bool)

(assert (=> d!2200035 (= c!1311604 (is-Nil!67898 lt!2526116))))

(declare-fun e!4234949 () (Set C!35266))

(assert (=> d!2200035 (= (content!13599 lt!2526116) e!4234949)))

(declare-fun b!7044595 () Bool)

(assert (=> b!7044595 (= e!4234949 (as set.empty (Set C!35266)))))

(declare-fun b!7044596 () Bool)

(assert (=> b!7044596 (= e!4234949 (set.union (set.insert (h!74346 lt!2526116) (as set.empty (Set C!35266))) (content!13599 (t!381795 lt!2526116))))))

(assert (= (and d!2200035 c!1311604) b!7044595))

(assert (= (and d!2200035 (not c!1311604)) b!7044596))

(declare-fun m!7757890 () Bool)

(assert (=> b!7044596 m!7757890))

(declare-fun m!7757892 () Bool)

(assert (=> b!7044596 m!7757892))

(assert (=> d!2199673 d!2200035))

(declare-fun d!2200037 () Bool)

(declare-fun c!1311605 () Bool)

(assert (=> d!2200037 (= c!1311605 (is-Nil!67898 (_1!37370 lt!2525920)))))

(declare-fun e!4234950 () (Set C!35266))

(assert (=> d!2200037 (= (content!13599 (_1!37370 lt!2525920)) e!4234950)))

(declare-fun b!7044597 () Bool)

(assert (=> b!7044597 (= e!4234950 (as set.empty (Set C!35266)))))

(declare-fun b!7044598 () Bool)

(assert (=> b!7044598 (= e!4234950 (set.union (set.insert (h!74346 (_1!37370 lt!2525920)) (as set.empty (Set C!35266))) (content!13599 (t!381795 (_1!37370 lt!2525920)))))))

(assert (= (and d!2200037 c!1311605) b!7044597))

(assert (= (and d!2200037 (not c!1311605)) b!7044598))

(declare-fun m!7757894 () Bool)

(assert (=> b!7044598 m!7757894))

(assert (=> b!7044598 m!7757800))

(assert (=> d!2199673 d!2200037))

(declare-fun d!2200039 () Bool)

(declare-fun c!1311606 () Bool)

(assert (=> d!2200039 (= c!1311606 (is-Nil!67898 (_2!37370 lt!2525920)))))

(declare-fun e!4234951 () (Set C!35266))

(assert (=> d!2200039 (= (content!13599 (_2!37370 lt!2525920)) e!4234951)))

(declare-fun b!7044599 () Bool)

(assert (=> b!7044599 (= e!4234951 (as set.empty (Set C!35266)))))

(declare-fun b!7044600 () Bool)

(assert (=> b!7044600 (= e!4234951 (set.union (set.insert (h!74346 (_2!37370 lt!2525920)) (as set.empty (Set C!35266))) (content!13599 (t!381795 (_2!37370 lt!2525920)))))))

(assert (= (and d!2200039 c!1311606) b!7044599))

(assert (= (and d!2200039 (not c!1311606)) b!7044600))

(declare-fun m!7757896 () Bool)

(assert (=> b!7044600 m!7757896))

(declare-fun m!7757898 () Bool)

(assert (=> b!7044600 m!7757898))

(assert (=> d!2199673 d!2200039))

(declare-fun bs!1874359 () Bool)

(declare-fun d!2200041 () Bool)

(assert (= bs!1874359 (and d!2200041 b!7043804)))

(declare-fun lambda!417504 () Int)

(assert (=> bs!1874359 (= lambda!417504 lambda!417385)))

(declare-fun bs!1874360 () Bool)

(assert (= bs!1874360 (and d!2200041 d!2199635)))

(assert (=> bs!1874360 (= lambda!417504 lambda!417442)))

(declare-fun bs!1874361 () Bool)

(assert (= bs!1874361 (and d!2200041 d!2199645)))

(assert (=> bs!1874361 (= lambda!417504 lambda!417448)))

(declare-fun bs!1874362 () Bool)

(assert (= bs!1874362 (and d!2200041 d!2199661)))

(assert (=> bs!1874362 (= lambda!417504 lambda!417452)))

(declare-fun bs!1874363 () Bool)

(assert (= bs!1874363 (and d!2200041 d!2199973)))

(assert (=> bs!1874363 (= lambda!417504 lambda!417494)))

(assert (=> d!2200041 (= (derivationStepZipperDown!2162 (h!74347 (exprs!6994 lt!2525892)) (Context!12989 (++!15572 (exprs!6994 lt!2525916) (exprs!6994 ct2!306))) (h!74346 s!7408)) (appendTo!619 (derivationStepZipperDown!2162 (h!74347 (exprs!6994 lt!2525892)) lt!2525916 (h!74346 s!7408)) ct2!306))))

(declare-fun lt!2526207 () Unit!161678)

(assert (=> d!2200041 (= lt!2526207 (lemmaConcatPreservesForall!819 (exprs!6994 lt!2525916) (exprs!6994 ct2!306) lambda!417504))))

(assert (=> d!2200041 true))

(declare-fun _$55!123 () Unit!161678)

(assert (=> d!2200041 (= (choose!53511 lt!2525916 (h!74347 (exprs!6994 lt!2525892)) (h!74346 s!7408) ct2!306) _$55!123)))

(declare-fun bs!1874364 () Bool)

(assert (= bs!1874364 d!2200041))

(assert (=> bs!1874364 m!7756540))

(declare-fun m!7757900 () Bool)

(assert (=> bs!1874364 m!7757900))

(assert (=> bs!1874364 m!7756540))

(assert (=> bs!1874364 m!7756966))

(assert (=> bs!1874364 m!7756960))

(assert (=> bs!1874364 m!7756956))

(assert (=> d!2199661 d!2200041))

(declare-fun d!2200043 () Bool)

(declare-fun e!4234952 () Bool)

(assert (=> d!2200043 e!4234952))

(declare-fun res!2875875 () Bool)

(assert (=> d!2200043 (=> (not res!2875875) (not e!4234952))))

(declare-fun lt!2526208 () List!68023)

(assert (=> d!2200043 (= res!2875875 (= (content!13597 lt!2526208) (set.union (content!13597 (exprs!6994 lt!2525916)) (content!13597 (exprs!6994 ct2!306)))))))

(declare-fun e!4234953 () List!68023)

(assert (=> d!2200043 (= lt!2526208 e!4234953)))

(declare-fun c!1311608 () Bool)

(assert (=> d!2200043 (= c!1311608 (is-Nil!67899 (exprs!6994 lt!2525916)))))

(assert (=> d!2200043 (= (++!15572 (exprs!6994 lt!2525916) (exprs!6994 ct2!306)) lt!2526208)))

(declare-fun b!7044604 () Bool)

(assert (=> b!7044604 (= e!4234952 (or (not (= (exprs!6994 ct2!306) Nil!67899)) (= lt!2526208 (exprs!6994 lt!2525916))))))

(declare-fun b!7044603 () Bool)

(declare-fun res!2875876 () Bool)

(assert (=> b!7044603 (=> (not res!2875876) (not e!4234952))))

(assert (=> b!7044603 (= res!2875876 (= (size!41104 lt!2526208) (+ (size!41104 (exprs!6994 lt!2525916)) (size!41104 (exprs!6994 ct2!306)))))))

(declare-fun b!7044601 () Bool)

(assert (=> b!7044601 (= e!4234953 (exprs!6994 ct2!306))))

(declare-fun b!7044602 () Bool)

(assert (=> b!7044602 (= e!4234953 (Cons!67899 (h!74347 (exprs!6994 lt!2525916)) (++!15572 (t!381796 (exprs!6994 lt!2525916)) (exprs!6994 ct2!306))))))

(assert (= (and d!2200043 c!1311608) b!7044601))

(assert (= (and d!2200043 (not c!1311608)) b!7044602))

(assert (= (and d!2200043 res!2875875) b!7044603))

(assert (= (and b!7044603 res!2875876) b!7044604))

(declare-fun m!7757902 () Bool)

(assert (=> d!2200043 m!7757902))

(declare-fun m!7757904 () Bool)

(assert (=> d!2200043 m!7757904))

(assert (=> d!2200043 m!7756746))

(declare-fun m!7757906 () Bool)

(assert (=> b!7044603 m!7757906))

(declare-fun m!7757908 () Bool)

(assert (=> b!7044603 m!7757908))

(assert (=> b!7044603 m!7756752))

(declare-fun m!7757910 () Bool)

(assert (=> b!7044602 m!7757910))

(assert (=> d!2199661 d!2200043))

(declare-fun bs!1874365 () Bool)

(declare-fun d!2200045 () Bool)

(assert (= bs!1874365 (and d!2200045 b!7043804)))

(declare-fun lambda!417505 () Int)

(assert (=> bs!1874365 (= lambda!417505 lambda!417384)))

(declare-fun bs!1874366 () Bool)

(assert (= bs!1874366 (and d!2200045 d!2199643)))

(assert (=> bs!1874366 (= lambda!417505 lambda!417447)))

(declare-fun bs!1874367 () Bool)

(assert (= bs!1874367 (and d!2200045 d!2199657)))

(assert (=> bs!1874367 (= lambda!417505 lambda!417449)))

(assert (=> d!2200045 true))

(assert (=> d!2200045 (= (appendTo!619 (derivationStepZipperDown!2162 (h!74347 (exprs!6994 lt!2525892)) lt!2525916 (h!74346 s!7408)) ct2!306) (map!15809 (derivationStepZipperDown!2162 (h!74347 (exprs!6994 lt!2525892)) lt!2525916 (h!74346 s!7408)) lambda!417505))))

(declare-fun bs!1874368 () Bool)

(assert (= bs!1874368 d!2200045))

(assert (=> bs!1874368 m!7756540))

(declare-fun m!7757912 () Bool)

(assert (=> bs!1874368 m!7757912))

(assert (=> d!2199661 d!2200045))

(declare-fun b!7044623 () Bool)

(declare-fun e!4234974 () Bool)

(declare-fun e!4234973 () Bool)

(assert (=> b!7044623 (= e!4234974 e!4234973)))

(declare-fun c!1311613 () Bool)

(assert (=> b!7044623 (= c!1311613 (is-Star!17498 (h!74347 (exprs!6994 lt!2525892))))))

(declare-fun b!7044624 () Bool)

(declare-fun res!2875891 () Bool)

(declare-fun e!4234968 () Bool)

(assert (=> b!7044624 (=> (not res!2875891) (not e!4234968))))

(declare-fun call!639981 () Bool)

(assert (=> b!7044624 (= res!2875891 call!639981)))

(declare-fun e!4234969 () Bool)

(assert (=> b!7044624 (= e!4234969 e!4234968)))

(declare-fun d!2200047 () Bool)

(declare-fun res!2875889 () Bool)

(assert (=> d!2200047 (=> res!2875889 e!4234974)))

(assert (=> d!2200047 (= res!2875889 (is-ElementMatch!17498 (h!74347 (exprs!6994 lt!2525892))))))

(assert (=> d!2200047 (= (validRegex!8942 (h!74347 (exprs!6994 lt!2525892))) e!4234974)))

(declare-fun b!7044625 () Bool)

(declare-fun e!4234971 () Bool)

(declare-fun e!4234970 () Bool)

(assert (=> b!7044625 (= e!4234971 e!4234970)))

(declare-fun res!2875890 () Bool)

(assert (=> b!7044625 (=> (not res!2875890) (not e!4234970))))

(assert (=> b!7044625 (= res!2875890 call!639981)))

(declare-fun b!7044626 () Bool)

(declare-fun res!2875887 () Bool)

(assert (=> b!7044626 (=> res!2875887 e!4234971)))

(assert (=> b!7044626 (= res!2875887 (not (is-Concat!26343 (h!74347 (exprs!6994 lt!2525892)))))))

(assert (=> b!7044626 (= e!4234969 e!4234971)))

(declare-fun b!7044627 () Bool)

(declare-fun call!639983 () Bool)

(assert (=> b!7044627 (= e!4234970 call!639983)))

(declare-fun b!7044628 () Bool)

(assert (=> b!7044628 (= e!4234968 call!639983)))

(declare-fun b!7044629 () Bool)

(declare-fun e!4234972 () Bool)

(declare-fun call!639982 () Bool)

(assert (=> b!7044629 (= e!4234972 call!639982)))

(declare-fun bm!639976 () Bool)

(assert (=> bm!639976 (= call!639981 call!639982)))

(declare-fun b!7044630 () Bool)

(assert (=> b!7044630 (= e!4234973 e!4234972)))

(declare-fun res!2875888 () Bool)

(assert (=> b!7044630 (= res!2875888 (not (nullable!7209 (reg!17827 (h!74347 (exprs!6994 lt!2525892))))))))

(assert (=> b!7044630 (=> (not res!2875888) (not e!4234972))))

(declare-fun bm!639977 () Bool)

(declare-fun c!1311614 () Bool)

(assert (=> bm!639977 (= call!639983 (validRegex!8942 (ite c!1311614 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))))))))

(declare-fun bm!639978 () Bool)

(assert (=> bm!639978 (= call!639982 (validRegex!8942 (ite c!1311613 (reg!17827 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311614 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892)))))))))

(declare-fun b!7044631 () Bool)

(assert (=> b!7044631 (= e!4234973 e!4234969)))

(assert (=> b!7044631 (= c!1311614 (is-Union!17498 (h!74347 (exprs!6994 lt!2525892))))))

(assert (= (and d!2200047 (not res!2875889)) b!7044623))

(assert (= (and b!7044623 c!1311613) b!7044630))

(assert (= (and b!7044623 (not c!1311613)) b!7044631))

(assert (= (and b!7044630 res!2875888) b!7044629))

(assert (= (and b!7044631 c!1311614) b!7044624))

(assert (= (and b!7044631 (not c!1311614)) b!7044626))

(assert (= (and b!7044624 res!2875891) b!7044628))

(assert (= (and b!7044626 (not res!2875887)) b!7044625))

(assert (= (and b!7044625 res!2875890) b!7044627))

(assert (= (or b!7044628 b!7044627) bm!639977))

(assert (= (or b!7044624 b!7044625) bm!639976))

(assert (= (or b!7044629 bm!639976) bm!639978))

(declare-fun m!7757914 () Bool)

(assert (=> b!7044630 m!7757914))

(declare-fun m!7757916 () Bool)

(assert (=> bm!639977 m!7757916))

(declare-fun m!7757918 () Bool)

(assert (=> bm!639978 m!7757918))

(assert (=> d!2199661 d!2200047))

(declare-fun d!2200049 () Bool)

(assert (=> d!2200049 (forall!16426 (++!15572 (exprs!6994 lt!2525916) (exprs!6994 ct2!306)) lambda!417452)))

(declare-fun lt!2526209 () Unit!161678)

(assert (=> d!2200049 (= lt!2526209 (choose!53504 (exprs!6994 lt!2525916) (exprs!6994 ct2!306) lambda!417452))))

(assert (=> d!2200049 (forall!16426 (exprs!6994 lt!2525916) lambda!417452)))

(assert (=> d!2200049 (= (lemmaConcatPreservesForall!819 (exprs!6994 lt!2525916) (exprs!6994 ct2!306) lambda!417452) lt!2526209)))

(declare-fun bs!1874369 () Bool)

(assert (= bs!1874369 d!2200049))

(assert (=> bs!1874369 m!7756960))

(assert (=> bs!1874369 m!7756960))

(declare-fun m!7757920 () Bool)

(assert (=> bs!1874369 m!7757920))

(declare-fun m!7757922 () Bool)

(assert (=> bs!1874369 m!7757922))

(declare-fun m!7757924 () Bool)

(assert (=> bs!1874369 m!7757924))

(assert (=> d!2199661 d!2200049))

(declare-fun d!2200051 () Bool)

(declare-fun c!1311619 () Bool)

(assert (=> d!2200051 (= c!1311619 (and (is-ElementMatch!17498 (h!74347 (exprs!6994 lt!2525892))) (= (c!1311360 (h!74347 (exprs!6994 lt!2525892))) (h!74346 s!7408))))))

(declare-fun e!4234976 () (Set Context!12988))

(assert (=> d!2200051 (= (derivationStepZipperDown!2162 (h!74347 (exprs!6994 lt!2525892)) (Context!12989 (++!15572 (exprs!6994 lt!2525916) (exprs!6994 ct2!306))) (h!74346 s!7408)) e!4234976)))

(declare-fun b!7044632 () Bool)

(declare-fun e!4234977 () (Set Context!12988))

(declare-fun call!639986 () (Set Context!12988))

(assert (=> b!7044632 (= e!4234977 call!639986)))

(declare-fun bm!639979 () Bool)

(declare-fun call!639989 () (Set Context!12988))

(declare-fun call!639988 () (Set Context!12988))

(assert (=> bm!639979 (= call!639989 call!639988)))

(declare-fun b!7044633 () Bool)

(declare-fun e!4234978 () (Set Context!12988))

(declare-fun call!639987 () (Set Context!12988))

(assert (=> b!7044633 (= e!4234978 (set.union call!639988 call!639987))))

(declare-fun b!7044634 () Bool)

(declare-fun e!4234975 () (Set Context!12988))

(assert (=> b!7044634 (= e!4234975 (as set.empty (Set Context!12988)))))

(declare-fun b!7044635 () Bool)

(declare-fun e!4234980 () (Set Context!12988))

(assert (=> b!7044635 (= e!4234980 e!4234977)))

(declare-fun c!1311617 () Bool)

(assert (=> b!7044635 (= c!1311617 (is-Concat!26343 (h!74347 (exprs!6994 lt!2525892))))))

(declare-fun b!7044636 () Bool)

(assert (=> b!7044636 (= e!4234976 (set.insert (Context!12989 (++!15572 (exprs!6994 lt!2525916) (exprs!6994 ct2!306))) (as set.empty (Set Context!12988))))))

(declare-fun b!7044637 () Bool)

(declare-fun c!1311615 () Bool)

(declare-fun e!4234979 () Bool)

(assert (=> b!7044637 (= c!1311615 e!4234979)))

(declare-fun res!2875892 () Bool)

(assert (=> b!7044637 (=> (not res!2875892) (not e!4234979))))

(assert (=> b!7044637 (= res!2875892 (is-Concat!26343 (h!74347 (exprs!6994 lt!2525892))))))

(assert (=> b!7044637 (= e!4234978 e!4234980)))

(declare-fun b!7044638 () Bool)

(declare-fun c!1311618 () Bool)

(assert (=> b!7044638 (= c!1311618 (is-Star!17498 (h!74347 (exprs!6994 lt!2525892))))))

(assert (=> b!7044638 (= e!4234977 e!4234975)))

(declare-fun b!7044639 () Bool)

(assert (=> b!7044639 (= e!4234976 e!4234978)))

(declare-fun c!1311616 () Bool)

(assert (=> b!7044639 (= c!1311616 (is-Union!17498 (h!74347 (exprs!6994 lt!2525892))))))

(declare-fun call!639984 () List!68023)

(declare-fun bm!639980 () Bool)

(assert (=> bm!639980 (= call!639987 (derivationStepZipperDown!2162 (ite c!1311616 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892)))) (ite c!1311616 (Context!12989 (++!15572 (exprs!6994 lt!2525916) (exprs!6994 ct2!306))) (Context!12989 call!639984)) (h!74346 s!7408)))))

(declare-fun bm!639981 () Bool)

(assert (=> bm!639981 (= call!639986 call!639989)))

(declare-fun b!7044640 () Bool)

(assert (=> b!7044640 (= e!4234980 (set.union call!639987 call!639989))))

(declare-fun bm!639982 () Bool)

(assert (=> bm!639982 (= call!639984 ($colon$colon!2597 (exprs!6994 (Context!12989 (++!15572 (exprs!6994 lt!2525916) (exprs!6994 ct2!306)))) (ite (or c!1311615 c!1311617) (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (h!74347 (exprs!6994 lt!2525892)))))))

(declare-fun b!7044641 () Bool)

(assert (=> b!7044641 (= e!4234975 call!639986)))

(declare-fun bm!639983 () Bool)

(declare-fun call!639985 () List!68023)

(assert (=> bm!639983 (= call!639988 (derivationStepZipperDown!2162 (ite c!1311616 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311615 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311617 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892)))))) (ite (or c!1311616 c!1311615) (Context!12989 (++!15572 (exprs!6994 lt!2525916) (exprs!6994 ct2!306))) (Context!12989 call!639985)) (h!74346 s!7408)))))

(declare-fun bm!639984 () Bool)

(assert (=> bm!639984 (= call!639985 call!639984)))

(declare-fun b!7044642 () Bool)

(assert (=> b!7044642 (= e!4234979 (nullable!7209 (regOne!35508 (h!74347 (exprs!6994 lt!2525892)))))))

(assert (= (and d!2200051 c!1311619) b!7044636))

(assert (= (and d!2200051 (not c!1311619)) b!7044639))

(assert (= (and b!7044639 c!1311616) b!7044633))

(assert (= (and b!7044639 (not c!1311616)) b!7044637))

(assert (= (and b!7044637 res!2875892) b!7044642))

(assert (= (and b!7044637 c!1311615) b!7044640))

(assert (= (and b!7044637 (not c!1311615)) b!7044635))

(assert (= (and b!7044635 c!1311617) b!7044632))

(assert (= (and b!7044635 (not c!1311617)) b!7044638))

(assert (= (and b!7044638 c!1311618) b!7044641))

(assert (= (and b!7044638 (not c!1311618)) b!7044634))

(assert (= (or b!7044632 b!7044641) bm!639984))

(assert (= (or b!7044632 b!7044641) bm!639981))

(assert (= (or b!7044640 bm!639981) bm!639979))

(assert (= (or b!7044640 bm!639984) bm!639982))

(assert (= (or b!7044633 bm!639979) bm!639983))

(assert (= (or b!7044633 b!7044640) bm!639980))

(assert (=> b!7044642 m!7756888))

(declare-fun m!7757926 () Bool)

(assert (=> bm!639982 m!7757926))

(declare-fun m!7757928 () Bool)

(assert (=> b!7044636 m!7757928))

(declare-fun m!7757930 () Bool)

(assert (=> bm!639983 m!7757930))

(declare-fun m!7757932 () Bool)

(assert (=> bm!639980 m!7757932))

(assert (=> d!2199661 d!2200051))

(assert (=> d!2199661 d!2199671))

(declare-fun d!2200053 () Bool)

(declare-fun res!2875897 () Bool)

(declare-fun e!4234985 () Bool)

(assert (=> d!2200053 (=> res!2875897 e!4234985)))

(assert (=> d!2200053 (= res!2875897 (is-Nil!67900 lt!2525922))))

(assert (=> d!2200053 (= (forall!16427 lt!2525922 lambda!417436) e!4234985)))

(declare-fun b!7044647 () Bool)

(declare-fun e!4234986 () Bool)

(assert (=> b!7044647 (= e!4234985 e!4234986)))

(declare-fun res!2875898 () Bool)

(assert (=> b!7044647 (=> (not res!2875898) (not e!4234986))))

(assert (=> b!7044647 (= res!2875898 (dynLambda!27479 lambda!417436 (h!74348 lt!2525922)))))

(declare-fun b!7044648 () Bool)

(assert (=> b!7044648 (= e!4234986 (forall!16427 (t!381797 lt!2525922) lambda!417436))))

(assert (= (and d!2200053 (not res!2875897)) b!7044647))

(assert (= (and b!7044647 res!2875898) b!7044648))

(declare-fun b_lambda!267559 () Bool)

(assert (=> (not b_lambda!267559) (not b!7044647)))

(declare-fun m!7757934 () Bool)

(assert (=> b!7044647 m!7757934))

(declare-fun m!7757936 () Bool)

(assert (=> b!7044648 m!7757936))

(assert (=> d!2199623 d!2200053))

(declare-fun d!2200055 () Bool)

(declare-fun c!1311620 () Bool)

(assert (=> d!2200055 (= c!1311620 (isEmpty!39628 (tail!13614 (t!381795 s!7408))))))

(declare-fun e!4234987 () Bool)

(assert (=> d!2200055 (= (matchZipper!3038 (derivationStepZipper!2954 lt!2525896 (head!14297 (t!381795 s!7408))) (tail!13614 (t!381795 s!7408))) e!4234987)))

(declare-fun b!7044649 () Bool)

(assert (=> b!7044649 (= e!4234987 (nullableZipper!2604 (derivationStepZipper!2954 lt!2525896 (head!14297 (t!381795 s!7408)))))))

(declare-fun b!7044650 () Bool)

(assert (=> b!7044650 (= e!4234987 (matchZipper!3038 (derivationStepZipper!2954 (derivationStepZipper!2954 lt!2525896 (head!14297 (t!381795 s!7408))) (head!14297 (tail!13614 (t!381795 s!7408)))) (tail!13614 (tail!13614 (t!381795 s!7408)))))))

(assert (= (and d!2200055 c!1311620) b!7044649))

(assert (= (and d!2200055 (not c!1311620)) b!7044650))

(assert (=> d!2200055 m!7756784))

(assert (=> d!2200055 m!7757478))

(assert (=> b!7044649 m!7756796))

(declare-fun m!7757938 () Bool)

(assert (=> b!7044649 m!7757938))

(assert (=> b!7044650 m!7756784))

(assert (=> b!7044650 m!7757482))

(assert (=> b!7044650 m!7756796))

(assert (=> b!7044650 m!7757482))

(declare-fun m!7757940 () Bool)

(assert (=> b!7044650 m!7757940))

(assert (=> b!7044650 m!7756784))

(assert (=> b!7044650 m!7757486))

(assert (=> b!7044650 m!7757940))

(assert (=> b!7044650 m!7757486))

(declare-fun m!7757942 () Bool)

(assert (=> b!7044650 m!7757942))

(assert (=> b!7043942 d!2200055))

(declare-fun bs!1874370 () Bool)

(declare-fun d!2200057 () Bool)

(assert (= bs!1874370 (and d!2200057 d!2199677)))

(declare-fun lambda!417506 () Int)

(assert (=> bs!1874370 (= (= (head!14297 (t!381795 s!7408)) (h!74346 s!7408)) (= lambda!417506 lambda!417453))))

(declare-fun bs!1874371 () Bool)

(assert (= bs!1874371 (and d!2200057 d!2200011)))

(assert (=> bs!1874371 (= (= (head!14297 (t!381795 s!7408)) (head!14297 (_1!37370 lt!2525920))) (= lambda!417506 lambda!417499))))

(declare-fun bs!1874372 () Bool)

(assert (= bs!1874372 (and d!2200057 d!2199929)))

(assert (=> bs!1874372 (= (= (head!14297 (t!381795 s!7408)) (head!14297 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920)))) (= lambda!417506 lambda!417491))))

(declare-fun bs!1874373 () Bool)

(assert (= bs!1874373 (and d!2200057 d!2199613)))

(assert (=> bs!1874373 (= (= (head!14297 (t!381795 s!7408)) (h!74346 s!7408)) (= lambda!417506 lambda!417433))))

(declare-fun bs!1874374 () Bool)

(assert (= bs!1874374 (and d!2200057 d!2199977)))

(assert (=> bs!1874374 (= lambda!417506 lambda!417495)))

(declare-fun bs!1874375 () Bool)

(assert (= bs!1874375 (and d!2200057 d!2200019)))

(assert (=> bs!1874375 (= lambda!417506 lambda!417500)))

(declare-fun bs!1874376 () Bool)

(assert (= bs!1874376 (and d!2200057 d!2199881)))

(assert (=> bs!1874376 (= (= (head!14297 (t!381795 s!7408)) (head!14297 (_1!37370 lt!2525920))) (= lambda!417506 lambda!417486))))

(declare-fun bs!1874377 () Bool)

(assert (= bs!1874377 (and d!2200057 d!2199981)))

(assert (=> bs!1874377 (= (= (head!14297 (t!381795 s!7408)) (head!14297 s!7408)) (= lambda!417506 lambda!417496))))

(declare-fun bs!1874378 () Bool)

(assert (= bs!1874378 (and d!2200057 d!2199867)))

(assert (=> bs!1874378 (= (= (head!14297 (t!381795 s!7408)) (head!14297 (_1!37370 lt!2525920))) (= lambda!417506 lambda!417485))))

(declare-fun bs!1874379 () Bool)

(assert (= bs!1874379 (and d!2200057 b!7043806)))

(assert (=> bs!1874379 (= (= (head!14297 (t!381795 s!7408)) (h!74346 s!7408)) (= lambda!417506 lambda!417386))))

(declare-fun bs!1874380 () Bool)

(assert (= bs!1874380 (and d!2200057 d!2199843)))

(assert (=> bs!1874380 (= lambda!417506 lambda!417477)))

(declare-fun bs!1874381 () Bool)

(assert (= bs!1874381 (and d!2200057 d!2199907)))

(assert (=> bs!1874381 (= (= (head!14297 (t!381795 s!7408)) (head!14297 (_2!37370 lt!2525920))) (= lambda!417506 lambda!417489))))

(assert (=> d!2200057 true))

(assert (=> d!2200057 (= (derivationStepZipper!2954 lt!2525896 (head!14297 (t!381795 s!7408))) (flatMap!2445 lt!2525896 lambda!417506))))

(declare-fun bs!1874382 () Bool)

(assert (= bs!1874382 d!2200057))

(declare-fun m!7757944 () Bool)

(assert (=> bs!1874382 m!7757944))

(assert (=> b!7043942 d!2200057))

(assert (=> b!7043942 d!2199845))

(assert (=> b!7043942 d!2199847))

(declare-fun bs!1874383 () Bool)

(declare-fun d!2200059 () Bool)

(assert (= bs!1874383 (and d!2200059 d!2199849)))

(declare-fun lambda!417507 () Int)

(assert (=> bs!1874383 (= lambda!417507 lambda!417480)))

(declare-fun bs!1874384 () Bool)

(assert (= bs!1874384 (and d!2200059 d!2199889)))

(assert (=> bs!1874384 (= lambda!417507 lambda!417487)))

(declare-fun bs!1874385 () Bool)

(assert (= bs!1874385 (and d!2200059 d!2200021)))

(assert (=> bs!1874385 (= lambda!417507 lambda!417501)))

(declare-fun bs!1874386 () Bool)

(assert (= bs!1874386 (and d!2200059 d!2199987)))

(assert (=> bs!1874386 (= lambda!417507 lambda!417497)))

(declare-fun bs!1874387 () Bool)

(assert (= bs!1874387 (and d!2200059 b!7043800)))

(assert (=> bs!1874387 (not (= lambda!417507 lambda!417383))))

(declare-fun bs!1874388 () Bool)

(assert (= bs!1874388 (and d!2200059 d!2199623)))

(assert (=> bs!1874388 (not (= lambda!417507 lambda!417436))))

(declare-fun bs!1874389 () Bool)

(assert (= bs!1874389 (and d!2200059 d!2199971)))

(assert (=> bs!1874389 (= lambda!417507 lambda!417493)))

(declare-fun bs!1874390 () Bool)

(assert (= bs!1874390 (and d!2200059 d!2199625)))

(assert (=> bs!1874390 (not (= lambda!417507 lambda!417439))))

(declare-fun bs!1874391 () Bool)

(assert (= bs!1874391 (and d!2200059 d!2199999)))

(assert (=> bs!1874391 (= lambda!417507 lambda!417498)))

(declare-fun bs!1874392 () Bool)

(assert (= bs!1874392 (and d!2200059 d!2199851)))

(assert (=> bs!1874392 (not (= lambda!417507 lambda!417481))))

(declare-fun bs!1874393 () Bool)

(assert (= bs!1874393 (and d!2200059 d!2199915)))

(assert (=> bs!1874393 (= lambda!417507 lambda!417490)))

(declare-fun bs!1874394 () Bool)

(assert (= bs!1874394 (and d!2200059 d!2199853)))

(assert (=> bs!1874394 (not (= lambda!417507 lambda!417484))))

(declare-fun bs!1874395 () Bool)

(assert (= bs!1874395 (and d!2200059 d!2199901)))

(assert (=> bs!1874395 (= lambda!417507 lambda!417488)))

(declare-fun bs!1874396 () Bool)

(assert (= bs!1874396 (and d!2200059 d!2199959)))

(assert (=> bs!1874396 (= lambda!417507 lambda!417492)))

(assert (=> d!2200059 (= (nullableZipper!2604 lt!2525918) (exists!3450 lt!2525918 lambda!417507))))

(declare-fun bs!1874397 () Bool)

(assert (= bs!1874397 d!2200059))

(declare-fun m!7757946 () Bool)

(assert (=> bs!1874397 m!7757946))

(assert (=> b!7043943 d!2200059))

(declare-fun b!7044651 () Bool)

(declare-fun e!4234989 () Bool)

(assert (=> b!7044651 (= e!4234989 (nullable!7209 (h!74347 (exprs!6994 (Context!12989 (t!381796 (exprs!6994 lt!2525890)))))))))

(declare-fun d!2200061 () Bool)

(declare-fun c!1311621 () Bool)

(assert (=> d!2200061 (= c!1311621 e!4234989)))

(declare-fun res!2875899 () Bool)

(assert (=> d!2200061 (=> (not res!2875899) (not e!4234989))))

(assert (=> d!2200061 (= res!2875899 (is-Cons!67899 (exprs!6994 (Context!12989 (t!381796 (exprs!6994 lt!2525890))))))))

(declare-fun e!4234990 () (Set Context!12988))

(assert (=> d!2200061 (= (derivationStepZipperUp!2108 (Context!12989 (t!381796 (exprs!6994 lt!2525890))) (h!74346 s!7408)) e!4234990)))

(declare-fun bm!639985 () Bool)

(declare-fun call!639990 () (Set Context!12988))

(assert (=> bm!639985 (= call!639990 (derivationStepZipperDown!2162 (h!74347 (exprs!6994 (Context!12989 (t!381796 (exprs!6994 lt!2525890))))) (Context!12989 (t!381796 (exprs!6994 (Context!12989 (t!381796 (exprs!6994 lt!2525890)))))) (h!74346 s!7408)))))

(declare-fun b!7044652 () Bool)

(assert (=> b!7044652 (= e!4234990 (set.union call!639990 (derivationStepZipperUp!2108 (Context!12989 (t!381796 (exprs!6994 (Context!12989 (t!381796 (exprs!6994 lt!2525890)))))) (h!74346 s!7408))))))

(declare-fun b!7044653 () Bool)

(declare-fun e!4234988 () (Set Context!12988))

(assert (=> b!7044653 (= e!4234990 e!4234988)))

(declare-fun c!1311622 () Bool)

(assert (=> b!7044653 (= c!1311622 (is-Cons!67899 (exprs!6994 (Context!12989 (t!381796 (exprs!6994 lt!2525890))))))))

(declare-fun b!7044654 () Bool)

(assert (=> b!7044654 (= e!4234988 call!639990)))

(declare-fun b!7044655 () Bool)

(assert (=> b!7044655 (= e!4234988 (as set.empty (Set Context!12988)))))

(assert (= (and d!2200061 res!2875899) b!7044651))

(assert (= (and d!2200061 c!1311621) b!7044652))

(assert (= (and d!2200061 (not c!1311621)) b!7044653))

(assert (= (and b!7044653 c!1311622) b!7044654))

(assert (= (and b!7044653 (not c!1311622)) b!7044655))

(assert (= (or b!7044652 b!7044654) bm!639985))

(declare-fun m!7757948 () Bool)

(assert (=> b!7044651 m!7757948))

(declare-fun m!7757950 () Bool)

(assert (=> bm!639985 m!7757950))

(declare-fun m!7757952 () Bool)

(assert (=> b!7044652 m!7757952))

(assert (=> b!7043975 d!2200061))

(declare-fun bs!1874398 () Bool)

(declare-fun d!2200063 () Bool)

(assert (= bs!1874398 (and d!2200063 d!2199849)))

(declare-fun lambda!417508 () Int)

(assert (=> bs!1874398 (= lambda!417508 lambda!417480)))

(declare-fun bs!1874399 () Bool)

(assert (= bs!1874399 (and d!2200063 d!2199889)))

(assert (=> bs!1874399 (= lambda!417508 lambda!417487)))

(declare-fun bs!1874400 () Bool)

(assert (= bs!1874400 (and d!2200063 d!2200021)))

(assert (=> bs!1874400 (= lambda!417508 lambda!417501)))

(declare-fun bs!1874401 () Bool)

(assert (= bs!1874401 (and d!2200063 d!2199987)))

(assert (=> bs!1874401 (= lambda!417508 lambda!417497)))

(declare-fun bs!1874402 () Bool)

(assert (= bs!1874402 (and d!2200063 b!7043800)))

(assert (=> bs!1874402 (not (= lambda!417508 lambda!417383))))

(declare-fun bs!1874403 () Bool)

(assert (= bs!1874403 (and d!2200063 d!2199623)))

(assert (=> bs!1874403 (not (= lambda!417508 lambda!417436))))

(declare-fun bs!1874404 () Bool)

(assert (= bs!1874404 (and d!2200063 d!2199971)))

(assert (=> bs!1874404 (= lambda!417508 lambda!417493)))

(declare-fun bs!1874405 () Bool)

(assert (= bs!1874405 (and d!2200063 d!2199625)))

(assert (=> bs!1874405 (not (= lambda!417508 lambda!417439))))

(declare-fun bs!1874406 () Bool)

(assert (= bs!1874406 (and d!2200063 d!2200059)))

(assert (=> bs!1874406 (= lambda!417508 lambda!417507)))

(declare-fun bs!1874407 () Bool)

(assert (= bs!1874407 (and d!2200063 d!2199999)))

(assert (=> bs!1874407 (= lambda!417508 lambda!417498)))

(declare-fun bs!1874408 () Bool)

(assert (= bs!1874408 (and d!2200063 d!2199851)))

(assert (=> bs!1874408 (not (= lambda!417508 lambda!417481))))

(declare-fun bs!1874409 () Bool)

(assert (= bs!1874409 (and d!2200063 d!2199915)))

(assert (=> bs!1874409 (= lambda!417508 lambda!417490)))

(declare-fun bs!1874410 () Bool)

(assert (= bs!1874410 (and d!2200063 d!2199853)))

(assert (=> bs!1874410 (not (= lambda!417508 lambda!417484))))

(declare-fun bs!1874411 () Bool)

(assert (= bs!1874411 (and d!2200063 d!2199901)))

(assert (=> bs!1874411 (= lambda!417508 lambda!417488)))

(declare-fun bs!1874412 () Bool)

(assert (= bs!1874412 (and d!2200063 d!2199959)))

(assert (=> bs!1874412 (= lambda!417508 lambda!417492)))

(assert (=> d!2200063 (= (nullableZipper!2604 lt!2525878) (exists!3450 lt!2525878 lambda!417508))))

(declare-fun bs!1874413 () Bool)

(assert (= bs!1874413 d!2200063))

(declare-fun m!7757954 () Bool)

(assert (=> bs!1874413 m!7757954))

(assert (=> b!7044030 d!2200063))

(assert (=> d!2199679 d!2199681))

(declare-fun d!2200065 () Bool)

(assert (=> d!2200065 (= (flatMap!2445 lt!2525909 lambda!417386) (dynLambda!27478 lambda!417386 lt!2525923))))

(assert (=> d!2200065 true))

(declare-fun _$13!4515 () Unit!161678)

(assert (=> d!2200065 (= (choose!53508 lt!2525909 lt!2525923 lambda!417386) _$13!4515)))

(declare-fun b_lambda!267561 () Bool)

(assert (=> (not b_lambda!267561) (not d!2200065)))

(declare-fun bs!1874414 () Bool)

(assert (= bs!1874414 d!2200065))

(assert (=> bs!1874414 m!7756630))

(assert (=> bs!1874414 m!7757036))

(assert (=> d!2199679 d!2200065))

(declare-fun d!2200067 () Bool)

(assert (=> d!2200067 (= (nullable!7209 (h!74347 (exprs!6994 lt!2525923))) (nullableFct!2749 (h!74347 (exprs!6994 lt!2525923))))))

(declare-fun bs!1874415 () Bool)

(assert (= bs!1874415 d!2200067))

(declare-fun m!7757956 () Bool)

(assert (=> bs!1874415 m!7757956))

(assert (=> b!7044082 d!2200067))

(declare-fun d!2200069 () Bool)

(declare-fun c!1311623 () Bool)

(assert (=> d!2200069 (= c!1311623 (isEmpty!39628 (tail!13614 s!7408)))))

(declare-fun e!4234991 () Bool)

(assert (=> d!2200069 (= (matchZipper!3038 (derivationStepZipper!2954 lt!2525883 (head!14297 s!7408)) (tail!13614 s!7408)) e!4234991)))

(declare-fun b!7044656 () Bool)

(assert (=> b!7044656 (= e!4234991 (nullableZipper!2604 (derivationStepZipper!2954 lt!2525883 (head!14297 s!7408))))))

(declare-fun b!7044657 () Bool)

(assert (=> b!7044657 (= e!4234991 (matchZipper!3038 (derivationStepZipper!2954 (derivationStepZipper!2954 lt!2525883 (head!14297 s!7408)) (head!14297 (tail!13614 s!7408))) (tail!13614 (tail!13614 s!7408))))))

(assert (= (and d!2200069 c!1311623) b!7044656))

(assert (= (and d!2200069 (not c!1311623)) b!7044657))

(assert (=> d!2200069 m!7756850))

(assert (=> d!2200069 m!7757770))

(assert (=> b!7044656 m!7756848))

(declare-fun m!7757958 () Bool)

(assert (=> b!7044656 m!7757958))

(assert (=> b!7044657 m!7756850))

(assert (=> b!7044657 m!7757774))

(assert (=> b!7044657 m!7756848))

(assert (=> b!7044657 m!7757774))

(declare-fun m!7757960 () Bool)

(assert (=> b!7044657 m!7757960))

(assert (=> b!7044657 m!7756850))

(assert (=> b!7044657 m!7757778))

(assert (=> b!7044657 m!7757960))

(assert (=> b!7044657 m!7757778))

(declare-fun m!7757962 () Bool)

(assert (=> b!7044657 m!7757962))

(assert (=> b!7043968 d!2200069))

(declare-fun bs!1874416 () Bool)

(declare-fun d!2200071 () Bool)

(assert (= bs!1874416 (and d!2200071 d!2199677)))

(declare-fun lambda!417509 () Int)

(assert (=> bs!1874416 (= (= (head!14297 s!7408) (h!74346 s!7408)) (= lambda!417509 lambda!417453))))

(declare-fun bs!1874417 () Bool)

(assert (= bs!1874417 (and d!2200071 d!2200011)))

(assert (=> bs!1874417 (= (= (head!14297 s!7408) (head!14297 (_1!37370 lt!2525920))) (= lambda!417509 lambda!417499))))

(declare-fun bs!1874418 () Bool)

(assert (= bs!1874418 (and d!2200071 d!2199613)))

(assert (=> bs!1874418 (= (= (head!14297 s!7408) (h!74346 s!7408)) (= lambda!417509 lambda!417433))))

(declare-fun bs!1874419 () Bool)

(assert (= bs!1874419 (and d!2200071 d!2199977)))

(assert (=> bs!1874419 (= (= (head!14297 s!7408) (head!14297 (t!381795 s!7408))) (= lambda!417509 lambda!417495))))

(declare-fun bs!1874420 () Bool)

(assert (= bs!1874420 (and d!2200071 d!2200019)))

(assert (=> bs!1874420 (= (= (head!14297 s!7408) (head!14297 (t!381795 s!7408))) (= lambda!417509 lambda!417500))))

(declare-fun bs!1874421 () Bool)

(assert (= bs!1874421 (and d!2200071 d!2199881)))

(assert (=> bs!1874421 (= (= (head!14297 s!7408) (head!14297 (_1!37370 lt!2525920))) (= lambda!417509 lambda!417486))))

(declare-fun bs!1874422 () Bool)

(assert (= bs!1874422 (and d!2200071 d!2199981)))

(assert (=> bs!1874422 (= lambda!417509 lambda!417496)))

(declare-fun bs!1874423 () Bool)

(assert (= bs!1874423 (and d!2200071 d!2199867)))

(assert (=> bs!1874423 (= (= (head!14297 s!7408) (head!14297 (_1!37370 lt!2525920))) (= lambda!417509 lambda!417485))))

(declare-fun bs!1874424 () Bool)

(assert (= bs!1874424 (and d!2200071 b!7043806)))

(assert (=> bs!1874424 (= (= (head!14297 s!7408) (h!74346 s!7408)) (= lambda!417509 lambda!417386))))

(declare-fun bs!1874425 () Bool)

(assert (= bs!1874425 (and d!2200071 d!2199843)))

(assert (=> bs!1874425 (= (= (head!14297 s!7408) (head!14297 (t!381795 s!7408))) (= lambda!417509 lambda!417477))))

(declare-fun bs!1874426 () Bool)

(assert (= bs!1874426 (and d!2200071 d!2199907)))

(assert (=> bs!1874426 (= (= (head!14297 s!7408) (head!14297 (_2!37370 lt!2525920))) (= lambda!417509 lambda!417489))))

(declare-fun bs!1874427 () Bool)

(assert (= bs!1874427 (and d!2200071 d!2199929)))

(assert (=> bs!1874427 (= (= (head!14297 s!7408) (head!14297 (Cons!67898 (h!74346 s!7408) (_1!37370 lt!2525920)))) (= lambda!417509 lambda!417491))))

(declare-fun bs!1874428 () Bool)

(assert (= bs!1874428 (and d!2200071 d!2200057)))

(assert (=> bs!1874428 (= (= (head!14297 s!7408) (head!14297 (t!381795 s!7408))) (= lambda!417509 lambda!417506))))

(assert (=> d!2200071 true))

(assert (=> d!2200071 (= (derivationStepZipper!2954 lt!2525883 (head!14297 s!7408)) (flatMap!2445 lt!2525883 lambda!417509))))

(declare-fun bs!1874429 () Bool)

(assert (= bs!1874429 d!2200071))

(declare-fun m!7757964 () Bool)

(assert (=> bs!1874429 m!7757964))

(assert (=> b!7043968 d!2200071))

(assert (=> b!7043968 d!2199983))

(assert (=> b!7043968 d!2199985))

(assert (=> d!2199619 d!2199995))

(declare-fun d!2200073 () Bool)

(assert (=> d!2200073 (= (isEmpty!39629 lt!2525908) (not (is-Some!16898 lt!2525908)))))

(assert (=> d!2199659 d!2200073))

(declare-fun d!2200075 () Bool)

(declare-fun c!1311628 () Bool)

(assert (=> d!2200075 (= c!1311628 (and (is-ElementMatch!17498 (h!74347 (exprs!6994 lt!2525892))) (= (c!1311360 (h!74347 (exprs!6994 lt!2525892))) (h!74346 s!7408))))))

(declare-fun e!4234993 () (Set Context!12988))

(assert (=> d!2200075 (= (derivationStepZipperDown!2162 (h!74347 (exprs!6994 lt!2525892)) (Context!12989 (t!381796 (exprs!6994 lt!2525892))) (h!74346 s!7408)) e!4234993)))

(declare-fun b!7044658 () Bool)

(declare-fun e!4234994 () (Set Context!12988))

(declare-fun call!639993 () (Set Context!12988))

(assert (=> b!7044658 (= e!4234994 call!639993)))

(declare-fun bm!639986 () Bool)

(declare-fun call!639996 () (Set Context!12988))

(declare-fun call!639995 () (Set Context!12988))

(assert (=> bm!639986 (= call!639996 call!639995)))

(declare-fun b!7044659 () Bool)

(declare-fun e!4234995 () (Set Context!12988))

(declare-fun call!639994 () (Set Context!12988))

(assert (=> b!7044659 (= e!4234995 (set.union call!639995 call!639994))))

(declare-fun b!7044660 () Bool)

(declare-fun e!4234992 () (Set Context!12988))

(assert (=> b!7044660 (= e!4234992 (as set.empty (Set Context!12988)))))

(declare-fun b!7044661 () Bool)

(declare-fun e!4234997 () (Set Context!12988))

(assert (=> b!7044661 (= e!4234997 e!4234994)))

(declare-fun c!1311626 () Bool)

(assert (=> b!7044661 (= c!1311626 (is-Concat!26343 (h!74347 (exprs!6994 lt!2525892))))))

(declare-fun b!7044662 () Bool)

(assert (=> b!7044662 (= e!4234993 (set.insert (Context!12989 (t!381796 (exprs!6994 lt!2525892))) (as set.empty (Set Context!12988))))))

(declare-fun b!7044663 () Bool)

(declare-fun c!1311624 () Bool)

(declare-fun e!4234996 () Bool)

(assert (=> b!7044663 (= c!1311624 e!4234996)))

(declare-fun res!2875900 () Bool)

(assert (=> b!7044663 (=> (not res!2875900) (not e!4234996))))

(assert (=> b!7044663 (= res!2875900 (is-Concat!26343 (h!74347 (exprs!6994 lt!2525892))))))

(assert (=> b!7044663 (= e!4234995 e!4234997)))

(declare-fun b!7044664 () Bool)

(declare-fun c!1311627 () Bool)

(assert (=> b!7044664 (= c!1311627 (is-Star!17498 (h!74347 (exprs!6994 lt!2525892))))))

(assert (=> b!7044664 (= e!4234994 e!4234992)))

(declare-fun b!7044665 () Bool)

(assert (=> b!7044665 (= e!4234993 e!4234995)))

(declare-fun c!1311625 () Bool)

(assert (=> b!7044665 (= c!1311625 (is-Union!17498 (h!74347 (exprs!6994 lt!2525892))))))

(declare-fun bm!639987 () Bool)

(declare-fun call!639991 () List!68023)

(assert (=> bm!639987 (= call!639994 (derivationStepZipperDown!2162 (ite c!1311625 (regTwo!35509 (h!74347 (exprs!6994 lt!2525892))) (regOne!35508 (h!74347 (exprs!6994 lt!2525892)))) (ite c!1311625 (Context!12989 (t!381796 (exprs!6994 lt!2525892))) (Context!12989 call!639991)) (h!74346 s!7408)))))

(declare-fun bm!639988 () Bool)

(assert (=> bm!639988 (= call!639993 call!639996)))

(declare-fun b!7044666 () Bool)

(assert (=> b!7044666 (= e!4234997 (set.union call!639994 call!639996))))

(declare-fun bm!639989 () Bool)

(assert (=> bm!639989 (= call!639991 ($colon$colon!2597 (exprs!6994 (Context!12989 (t!381796 (exprs!6994 lt!2525892)))) (ite (or c!1311624 c!1311626) (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (h!74347 (exprs!6994 lt!2525892)))))))

(declare-fun b!7044667 () Bool)

(assert (=> b!7044667 (= e!4234992 call!639993)))

(declare-fun bm!639990 () Bool)

(declare-fun call!639992 () List!68023)

(assert (=> bm!639990 (= call!639995 (derivationStepZipperDown!2162 (ite c!1311625 (regOne!35509 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311624 (regTwo!35508 (h!74347 (exprs!6994 lt!2525892))) (ite c!1311626 (regOne!35508 (h!74347 (exprs!6994 lt!2525892))) (reg!17827 (h!74347 (exprs!6994 lt!2525892)))))) (ite (or c!1311625 c!1311624) (Context!12989 (t!381796 (exprs!6994 lt!2525892))) (Context!12989 call!639992)) (h!74346 s!7408)))))

(declare-fun bm!639991 () Bool)

(assert (=> bm!639991 (= call!639992 call!639991)))

(declare-fun b!7044668 () Bool)

(assert (=> b!7044668 (= e!4234996 (nullable!7209 (regOne!35508 (h!74347 (exprs!6994 lt!2525892)))))))

(assert (= (and d!2200075 c!1311628) b!7044662))

(assert (= (and d!2200075 (not c!1311628)) b!7044665))

(assert (= (and b!7044665 c!1311625) b!7044659))

(assert (= (and b!7044665 (not c!1311625)) b!7044663))

(assert (= (and b!7044663 res!2875900) b!7044668))

(assert (= (and b!7044663 c!1311624) b!7044666))

(assert (= (and b!7044663 (not c!1311624)) b!7044661))

(assert (= (and b!7044661 c!1311626) b!7044658))

(assert (= (and b!7044661 (not c!1311626)) b!7044664))

(assert (= (and b!7044664 c!1311627) b!7044667))

(assert (= (and b!7044664 (not c!1311627)) b!7044660))

(assert (= (or b!7044658 b!7044667) bm!639991))

(assert (= (or b!7044658 b!7044667) bm!639988))

(assert (= (or b!7044666 bm!639988) bm!639986))

(assert (= (or b!7044666 bm!639991) bm!639989))

(assert (= (or b!7044659 bm!639986) bm!639990))

(assert (= (or b!7044659 b!7044666) bm!639987))

(assert (=> b!7044668 m!7756888))

(declare-fun m!7757966 () Bool)

(assert (=> bm!639989 m!7757966))

(declare-fun m!7757968 () Bool)

(assert (=> b!7044662 m!7757968))

(declare-fun m!7757970 () Bool)

(assert (=> bm!639990 m!7757970))

(declare-fun m!7757972 () Bool)

(assert (=> bm!639987 m!7757972))

(assert (=> bm!639861 d!2200075))

(declare-fun d!2200077 () Bool)

(declare-fun lt!2526212 () Int)

(assert (=> d!2200077 (>= lt!2526212 0)))

(declare-fun e!4235000 () Int)

(assert (=> d!2200077 (= lt!2526212 e!4235000)))

(declare-fun c!1311631 () Bool)

(assert (=> d!2200077 (= c!1311631 (is-Nil!67898 lt!2526116))))

(assert (=> d!2200077 (= (size!41105 lt!2526116) lt!2526212)))

(declare-fun b!7044673 () Bool)

(assert (=> b!7044673 (= e!4235000 0)))

(declare-fun b!7044674 () Bool)

(assert (=> b!7044674 (= e!4235000 (+ 1 (size!41105 (t!381795 lt!2526116))))))

(assert (= (and d!2200077 c!1311631) b!7044673))

(assert (= (and d!2200077 (not c!1311631)) b!7044674))

(declare-fun m!7757974 () Bool)

(assert (=> b!7044674 m!7757974))

(assert (=> b!7044080 d!2200077))

(declare-fun d!2200079 () Bool)

(declare-fun lt!2526213 () Int)

(assert (=> d!2200079 (>= lt!2526213 0)))

(declare-fun e!4235001 () Int)

(assert (=> d!2200079 (= lt!2526213 e!4235001)))

(declare-fun c!1311632 () Bool)

(assert (=> d!2200079 (= c!1311632 (is-Nil!67898 (_1!37370 lt!2525920)))))

(assert (=> d!2200079 (= (size!41105 (_1!37370 lt!2525920)) lt!2526213)))

(declare-fun b!7044675 () Bool)

(assert (=> b!7044675 (= e!4235001 0)))

(declare-fun b!7044676 () Bool)

(assert (=> b!7044676 (= e!4235001 (+ 1 (size!41105 (t!381795 (_1!37370 lt!2525920)))))))

(assert (= (and d!2200079 c!1311632) b!7044675))

(assert (= (and d!2200079 (not c!1311632)) b!7044676))

(assert (=> b!7044676 m!7757794))

(assert (=> b!7044080 d!2200079))

(declare-fun d!2200081 () Bool)

(declare-fun lt!2526214 () Int)

(assert (=> d!2200081 (>= lt!2526214 0)))

(declare-fun e!4235002 () Int)

(assert (=> d!2200081 (= lt!2526214 e!4235002)))

(declare-fun c!1311633 () Bool)

(assert (=> d!2200081 (= c!1311633 (is-Nil!67898 (_2!37370 lt!2525920)))))

(assert (=> d!2200081 (= (size!41105 (_2!37370 lt!2525920)) lt!2526214)))

(declare-fun b!7044677 () Bool)

(assert (=> b!7044677 (= e!4235002 0)))

(declare-fun b!7044678 () Bool)

(assert (=> b!7044678 (= e!4235002 (+ 1 (size!41105 (t!381795 (_2!37370 lt!2525920)))))))

(assert (= (and d!2200081 c!1311633) b!7044677))

(assert (= (and d!2200081 (not c!1311633)) b!7044678))

(declare-fun m!7757976 () Bool)

(assert (=> b!7044678 m!7757976))

(assert (=> b!7044080 d!2200081))

(declare-fun b!7044690 () Bool)

(declare-fun e!4235005 () Bool)

(declare-fun tp!1937789 () Bool)

(declare-fun tp!1937791 () Bool)

(assert (=> b!7044690 (= e!4235005 (and tp!1937789 tp!1937791))))

(assert (=> b!7044102 (= tp!1937741 e!4235005)))

(declare-fun b!7044692 () Bool)

(declare-fun tp!1937787 () Bool)

(declare-fun tp!1937790 () Bool)

(assert (=> b!7044692 (= e!4235005 (and tp!1937787 tp!1937790))))

(declare-fun b!7044691 () Bool)

(declare-fun tp!1937788 () Bool)

(assert (=> b!7044691 (= e!4235005 tp!1937788)))

(declare-fun b!7044689 () Bool)

(assert (=> b!7044689 (= e!4235005 tp_is_empty!44221)))

(assert (= (and b!7044102 (is-ElementMatch!17498 (h!74347 (exprs!6994 ct2!306)))) b!7044689))

(assert (= (and b!7044102 (is-Concat!26343 (h!74347 (exprs!6994 ct2!306)))) b!7044690))

(assert (= (and b!7044102 (is-Star!17498 (h!74347 (exprs!6994 ct2!306)))) b!7044691))

(assert (= (and b!7044102 (is-Union!17498 (h!74347 (exprs!6994 ct2!306)))) b!7044692))

(declare-fun b!7044693 () Bool)

(declare-fun e!4235006 () Bool)

(declare-fun tp!1937792 () Bool)

(declare-fun tp!1937793 () Bool)

(assert (=> b!7044693 (= e!4235006 (and tp!1937792 tp!1937793))))

(assert (=> b!7044102 (= tp!1937742 e!4235006)))

(assert (= (and b!7044102 (is-Cons!67899 (t!381796 (exprs!6994 ct2!306)))) b!7044693))

(declare-fun b!7044694 () Bool)

(declare-fun e!4235007 () Bool)

(declare-fun tp!1937794 () Bool)

(assert (=> b!7044694 (= e!4235007 (and tp_is_empty!44221 tp!1937794))))

(assert (=> b!7044101 (= tp!1937740 e!4235007)))

(assert (= (and b!7044101 (is-Cons!67898 (t!381795 (t!381795 s!7408)))) b!7044694))

(declare-fun b!7044696 () Bool)

(declare-fun e!4235008 () Bool)

(declare-fun tp!1937797 () Bool)

(declare-fun tp!1937799 () Bool)

(assert (=> b!7044696 (= e!4235008 (and tp!1937797 tp!1937799))))

(assert (=> b!7044096 (= tp!1937736 e!4235008)))

(declare-fun b!7044698 () Bool)

(declare-fun tp!1937795 () Bool)

(declare-fun tp!1937798 () Bool)

(assert (=> b!7044698 (= e!4235008 (and tp!1937795 tp!1937798))))

(declare-fun b!7044697 () Bool)

(declare-fun tp!1937796 () Bool)

(assert (=> b!7044697 (= e!4235008 tp!1937796)))

(declare-fun b!7044695 () Bool)

(assert (=> b!7044695 (= e!4235008 tp_is_empty!44221)))

(assert (= (and b!7044096 (is-ElementMatch!17498 (h!74347 (exprs!6994 setElem!49403)))) b!7044695))

(assert (= (and b!7044096 (is-Concat!26343 (h!74347 (exprs!6994 setElem!49403)))) b!7044696))

(assert (= (and b!7044096 (is-Star!17498 (h!74347 (exprs!6994 setElem!49403)))) b!7044697))

(assert (= (and b!7044096 (is-Union!17498 (h!74347 (exprs!6994 setElem!49403)))) b!7044698))

(declare-fun b!7044699 () Bool)

(declare-fun e!4235009 () Bool)

(declare-fun tp!1937800 () Bool)

(declare-fun tp!1937801 () Bool)

(assert (=> b!7044699 (= e!4235009 (and tp!1937800 tp!1937801))))

(assert (=> b!7044096 (= tp!1937737 e!4235009)))

(assert (= (and b!7044096 (is-Cons!67899 (t!381796 (exprs!6994 setElem!49403)))) b!7044699))

(declare-fun condSetEmpty!49417 () Bool)

(assert (=> setNonEmpty!49409 (= condSetEmpty!49417 (= setRest!49409 (as set.empty (Set Context!12988))))))

(declare-fun setRes!49417 () Bool)

(assert (=> setNonEmpty!49409 (= tp!1937730 setRes!49417)))

(declare-fun setIsEmpty!49417 () Bool)

(assert (=> setIsEmpty!49417 setRes!49417))

(declare-fun e!4235010 () Bool)

(declare-fun setElem!49417 () Context!12988)

(declare-fun setNonEmpty!49417 () Bool)

(declare-fun tp!1937802 () Bool)

(assert (=> setNonEmpty!49417 (= setRes!49417 (and tp!1937802 (inv!86605 setElem!49417) e!4235010))))

(declare-fun setRest!49417 () (Set Context!12988))

(assert (=> setNonEmpty!49417 (= setRest!49409 (set.union (set.insert setElem!49417 (as set.empty (Set Context!12988))) setRest!49417))))

(declare-fun b!7044700 () Bool)

(declare-fun tp!1937803 () Bool)

(assert (=> b!7044700 (= e!4235010 tp!1937803)))

(assert (= (and setNonEmpty!49409 condSetEmpty!49417) setIsEmpty!49417))

(assert (= (and setNonEmpty!49409 (not condSetEmpty!49417)) setNonEmpty!49417))

(assert (= setNonEmpty!49417 b!7044700))

(declare-fun m!7757978 () Bool)

(assert (=> setNonEmpty!49417 m!7757978))

(declare-fun b!7044701 () Bool)

(declare-fun e!4235011 () Bool)

(declare-fun tp!1937804 () Bool)

(declare-fun tp!1937805 () Bool)

(assert (=> b!7044701 (= e!4235011 (and tp!1937804 tp!1937805))))

(assert (=> b!7044091 (= tp!1937731 e!4235011)))

(assert (= (and b!7044091 (is-Cons!67899 (exprs!6994 setElem!49409))) b!7044701))

(declare-fun b_lambda!267563 () Bool)

(assert (= b_lambda!267543 (or b!7043804 b_lambda!267563)))

(declare-fun bs!1874430 () Bool)

(declare-fun d!2200083 () Bool)

(assert (= bs!1874430 (and d!2200083 b!7043804)))

(declare-fun lt!2526215 () Unit!161678)

(assert (=> bs!1874430 (= lt!2526215 (lemmaConcatPreservesForall!819 (exprs!6994 a!13326) (exprs!6994 ct2!306) lambda!417385))))

(assert (=> bs!1874430 (= (dynLambda!27477 lambda!417384 a!13326) (Context!12989 (++!15572 (exprs!6994 a!13326) (exprs!6994 ct2!306))))))

(declare-fun m!7757980 () Bool)

(assert (=> bs!1874430 m!7757980))

(declare-fun m!7757982 () Bool)

(assert (=> bs!1874430 m!7757982))

(assert (=> d!2199859 d!2200083))

(declare-fun b_lambda!267565 () Bool)

(assert (= b_lambda!267557 (or d!2199635 b_lambda!267565)))

(declare-fun bs!1874431 () Bool)

(declare-fun d!2200085 () Bool)

(assert (= bs!1874431 (and d!2200085 d!2199635)))

(assert (=> bs!1874431 (= (dynLambda!27485 lambda!417442 (h!74347 (exprs!6994 setElem!49403))) (validRegex!8942 (h!74347 (exprs!6994 setElem!49403))))))

(declare-fun m!7757984 () Bool)

(assert (=> bs!1874431 m!7757984))

(assert (=> b!7044589 d!2200085))

(declare-fun b_lambda!267567 () Bool)

(assert (= b_lambda!267559 (or d!2199623 b_lambda!267567)))

(declare-fun bs!1874432 () Bool)

(declare-fun d!2200087 () Bool)

(assert (= bs!1874432 (and d!2200087 d!2199623)))

(assert (=> bs!1874432 (= (dynLambda!27479 lambda!417436 (h!74348 lt!2525922)) (not (dynLambda!27479 lambda!417383 (h!74348 lt!2525922))))))

(declare-fun b_lambda!267587 () Bool)

(assert (=> (not b_lambda!267587) (not bs!1874432)))

(declare-fun m!7757986 () Bool)

(assert (=> bs!1874432 m!7757986))

(assert (=> b!7044647 d!2200087))

(declare-fun b_lambda!267569 () Bool)

(assert (= b_lambda!267541 (or b!7043804 b_lambda!267569)))

(declare-fun bs!1874433 () Bool)

(declare-fun d!2200089 () Bool)

(assert (= bs!1874433 (and d!2200089 b!7043804)))

(assert (=> bs!1874433 (= (dynLambda!27485 lambda!417385 (h!74347 (exprs!6994 lt!2525892))) (validRegex!8942 (h!74347 (exprs!6994 lt!2525892))))))

(assert (=> bs!1874433 m!7756958))

(assert (=> b!7044353 d!2200089))

(declare-fun b_lambda!267571 () Bool)

(assert (= b_lambda!267549 (or b!7043806 b_lambda!267571)))

(assert (=> d!2199899 d!2199683))

(declare-fun b_lambda!267573 () Bool)

(assert (= b_lambda!267545 (or b!7043800 b_lambda!267573)))

(declare-fun bs!1874434 () Bool)

(declare-fun d!2200091 () Bool)

(assert (= bs!1874434 (and d!2200091 b!7043800)))

(assert (=> bs!1874434 (= (dynLambda!27479 lambda!417383 lt!2526186) (matchZipper!3038 (set.insert lt!2526186 (as set.empty (Set Context!12988))) s!7408))))

(declare-fun m!7757988 () Bool)

(assert (=> bs!1874434 m!7757988))

(assert (=> bs!1874434 m!7757988))

(declare-fun m!7757990 () Bool)

(assert (=> bs!1874434 m!7757990))

(assert (=> d!2199893 d!2200091))

(declare-fun b_lambda!267575 () Bool)

(assert (= b_lambda!267547 (or b!7043800 b_lambda!267575)))

(declare-fun bs!1874435 () Bool)

(declare-fun d!2200093 () Bool)

(assert (= bs!1874435 (and d!2200093 b!7043800)))

(assert (=> bs!1874435 (= (dynLambda!27479 lambda!417383 (h!74348 (toList!10841 lt!2525914))) (matchZipper!3038 (set.insert (h!74348 (toList!10841 lt!2525914)) (as set.empty (Set Context!12988))) s!7408))))

(declare-fun m!7757992 () Bool)

(assert (=> bs!1874435 m!7757992))

(assert (=> bs!1874435 m!7757992))

(declare-fun m!7757994 () Bool)

(assert (=> bs!1874435 m!7757994))

(assert (=> b!7044427 d!2200093))

(declare-fun b_lambda!267577 () Bool)

(assert (= b_lambda!267555 (or b!7043804 b_lambda!267577)))

(declare-fun bs!1874436 () Bool)

(declare-fun d!2200095 () Bool)

(assert (= bs!1874436 (and d!2200095 b!7043804)))

(assert (=> bs!1874436 (= (dynLambda!27485 lambda!417385 (h!74347 lt!2525921)) (validRegex!8942 (h!74347 lt!2525921)))))

(declare-fun m!7757996 () Bool)

(assert (=> bs!1874436 m!7757996))

(assert (=> b!7044583 d!2200095))

(declare-fun b_lambda!267579 () Bool)

(assert (= b_lambda!267551 (or d!2199645 b_lambda!267579)))

(declare-fun bs!1874437 () Bool)

(declare-fun d!2200097 () Bool)

(assert (= bs!1874437 (and d!2200097 d!2199645)))

(assert (=> bs!1874437 (= (dynLambda!27485 lambda!417448 (h!74347 (exprs!6994 ct2!306))) (validRegex!8942 (h!74347 (exprs!6994 ct2!306))))))

(declare-fun m!7757998 () Bool)

(assert (=> bs!1874437 m!7757998))

(assert (=> b!7044516 d!2200097))

(declare-fun b_lambda!267581 () Bool)

(assert (= b_lambda!267539 (or b!7043804 b_lambda!267581)))

(declare-fun bs!1874438 () Bool)

(declare-fun d!2200099 () Bool)

(assert (= bs!1874438 (and d!2200099 b!7043804)))

(assert (=> bs!1874438 (= (dynLambda!27485 lambda!417385 (h!74347 (++!15572 (exprs!6994 lt!2525892) (exprs!6994 ct2!306)))) (validRegex!8942 (h!74347 (++!15572 (exprs!6994 lt!2525892) (exprs!6994 ct2!306)))))))

(declare-fun m!7758000 () Bool)

(assert (=> bs!1874438 m!7758000))

(assert (=> b!7044351 d!2200099))

(declare-fun b_lambda!267583 () Bool)

(assert (= b_lambda!267561 (or b!7043806 b_lambda!267583)))

(assert (=> d!2200065 d!2199687))

(declare-fun b_lambda!267585 () Bool)

(assert (= b_lambda!267553 (or b!7043804 b_lambda!267585)))

(declare-fun bs!1874439 () Bool)

(declare-fun d!2200101 () Bool)

(assert (= bs!1874439 (and d!2200101 b!7043804)))

(assert (=> bs!1874439 (= (dynLambda!27485 lambda!417385 (h!74347 (++!15572 lt!2525921 (exprs!6994 ct2!306)))) (validRegex!8942 (h!74347 (++!15572 lt!2525921 (exprs!6994 ct2!306)))))))

(declare-fun m!7758002 () Bool)

(assert (=> bs!1874439 m!7758002))

(assert (=> b!7044581 d!2200101))

(push 1)

(assert (not d!2199939))

(assert (not b!7044497))

(assert (not d!2199973))

(assert (not d!2199997))

(assert (not d!2200069))

(assert (not b!7044533))

(assert (not b!7044372))

(assert (not bm!639935))

(assert (not b!7044323))

(assert (not b!7044364))

(assert (not d!2199865))

(assert (not b!7044542))

(assert (not b!7044505))

(assert (not b!7044578))

(assert (not d!2199841))

(assert (not b!7044302))

(assert (not b!7044360))

(assert (not b!7044678))

(assert (not d!2199815))

(assert (not d!2199821))

(assert (not d!2199907))

(assert (not d!2199823))

(assert (not b!7044445))

(assert (not b!7044396))

(assert (not bm!639938))

(assert (not b!7044510))

(assert (not bm!639942))

(assert (not b!7044582))

(assert (not b!7044322))

(assert (not bm!639945))

(assert (not b!7044697))

(assert (not d!2199959))

(assert (not d!2199867))

(assert (not b_lambda!267517))

(assert (not b!7044344))

(assert (not b_lambda!267579))

(assert (not d!2199925))

(assert (not b!7044308))

(assert (not b_lambda!267515))

(assert (not b!7044698))

(assert (not b!7044496))

(assert (not d!2199861))

(assert (not b!7044362))

(assert (not b!7044648))

(assert (not d!2199923))

(assert (not bm!639959))

(assert (not bs!1874436))

(assert (not bm!639926))

(assert (not b!7044701))

(assert (not b_lambda!267581))

(assert (not d!2200045))

(assert (not bm!639953))

(assert (not d!2199989))

(assert (not b!7044498))

(assert (not b!7044428))

(assert (not d!2200021))

(assert (not bm!639940))

(assert (not b!7044512))

(assert (not b!7044405))

(assert (not d!2200059))

(assert (not bm!639932))

(assert (not bm!639950))

(assert (not b!7044443))

(assert (not d!2199859))

(assert (not b!7044406))

(assert (not d!2199825))

(assert (not d!2199839))

(assert (not b!7044563))

(assert (not bm!639929))

(assert (not b!7044400))

(assert (not b!7044520))

(assert (not b!7044361))

(assert (not d!2199905))

(assert (not d!2199881))

(assert (not d!2199797))

(assert (not b!7044508))

(assert (not b!7044514))

(assert (not b!7044515))

(assert (not b!7044397))

(assert (not d!2199831))

(assert (not d!2199929))

(assert (not bm!639977))

(assert (not d!2199977))

(assert (not b!7044444))

(assert (not b!7044535))

(assert (not d!2200065))

(assert (not d!2199987))

(assert (not b!7044446))

(assert (not bm!639943))

(assert (not d!2200031))

(assert (not d!2199885))

(assert (not d!2199993))

(assert (not b!7044566))

(assert (not d!2200057))

(assert (not bm!639965))

(assert (not b!7044335))

(assert (not b!7044600))

(assert (not b!7044352))

(assert (not b_lambda!267567))

(assert (not d!2199811))

(assert (not d!2200011))

(assert (not bs!1874430))

(assert (not setNonEmpty!49416))

(assert (not d!2199895))

(assert (not b!7044651))

(assert (not b!7044546))

(assert (not b!7044354))

(assert (not b!7044392))

(assert (not d!2199915))

(assert (not b!7044540))

(assert (not d!2199817))

(assert (not b!7044425))

(assert (not d!2200013))

(assert (not b!7044407))

(assert (not b!7044561))

(assert (not d!2199901))

(assert (not b!7044539))

(assert (not b_lambda!267587))

(assert (not b!7044642))

(assert (not d!2199945))

(assert (not d!2199843))

(assert (not b_lambda!267575))

(assert (not b_lambda!267569))

(assert (not b!7044501))

(assert (not b!7044404))

(assert (not b!7044590))

(assert (not b!7044442))

(assert (not d!2200009))

(assert (not d!2199889))

(assert (not b!7044650))

(assert (not bm!639934))

(assert (not b_lambda!267573))

(assert (not b!7044676))

(assert (not setNonEmpty!49415))

(assert (not d!2199899))

(assert (not d!2200029))

(assert (not d!2199947))

(assert (not b!7044489))

(assert (not b_lambda!267577))

(assert (not b!7044314))

(assert (not b!7044423))

(assert (not b!7044316))

(assert (not d!2200041))

(assert (not bs!1874431))

(assert (not b!7044345))

(assert (not b!7044602))

(assert (not b!7044473))

(assert (not b!7044630))

(assert (not b_lambda!267519))

(assert (not b!7044471))

(assert (not b!7044692))

(assert (not d!2199801))

(assert (not b!7044700))

(assert (not d!2199855))

(assert (not bm!639985))

(assert (not b!7044304))

(assert (not b!7044538))

(assert (not b_lambda!267583))

(assert (not b!7044603))

(assert (not b!7044586))

(assert (not b!7044319))

(assert (not b!7044543))

(assert (not b!7044343))

(assert (not bm!639951))

(assert (not bm!639956))

(assert (not b!7044320))

(assert (not d!2199849))

(assert (not b_lambda!267565))

(assert (not d!2200055))

(assert (not b_lambda!267585))

(assert (not d!2199853))

(assert (not d!2199927))

(assert (not d!2199935))

(assert (not bm!639923))

(assert (not d!2199963))

(assert (not b!7044649))

(assert (not b!7044674))

(assert (not d!2199893))

(assert (not d!2199813))

(assert (not b!7044476))

(assert (not bs!1874438))

(assert (not d!2200049))

(assert (not b!7044690))

(assert (not b!7044483))

(assert (not b!7044565))

(assert (not bs!1874437))

(assert (not bm!639962))

(assert (not b!7044579))

(assert (not bm!639967))

(assert (not bm!639968))

(assert (not b!7044696))

(assert (not d!2200071))

(assert (not d!2199951))

(assert (not b!7044559))

(assert (not b!7044307))

(assert (not b!7044557))

(assert (not b!7044522))

(assert (not b_lambda!267571))

(assert (not b!7044477))

(assert (not d!2199999))

(assert tp_is_empty!44221)

(assert (not d!2200017))

(assert (not b!7044657))

(assert (not d!2200063))

(assert (not bm!639961))

(assert (not b!7044562))

(assert (not b!7044536))

(assert (not bm!639989))

(assert (not bm!639990))

(assert (not b!7044500))

(assert (not b!7044398))

(assert (not bm!639922))

(assert (not b!7044346))

(assert (not d!2199979))

(assert (not b!7044399))

(assert (not b!7044652))

(assert (not d!2199827))

(assert (not b_lambda!267563))

(assert (not b!7044584))

(assert (not d!2200067))

(assert (not bm!639937))

(assert (not d!2199981))

(assert (not b!7044596))

(assert (not bm!639920))

(assert (not bs!1874439))

(assert (not b!7044339))

(assert (not b!7044386))

(assert (not b!7044363))

(assert (not d!2200043))

(assert (not bm!639980))

(assert (not bm!639928))

(assert (not b!7044480))

(assert (not d!2200019))

(assert (not d!2199917))

(assert (not b!7044699))

(assert (not bm!639982))

(assert (not d!2199991))

(assert (not b!7044366))

(assert (not b!7044537))

(assert (not b_lambda!267521))

(assert (not b!7044318))

(assert (not b!7044394))

(assert (not d!2199879))

(assert (not b!7044342))

(assert (not b!7044513))

(assert (not d!2199809))

(assert (not b!7044518))

(assert (not bm!639987))

(assert (not b!7044691))

(assert (not b!7044587))

(assert (not b!7044598))

(assert (not b!7044305))

(assert (not b!7044504))

(assert (not d!2200007))

(assert (not b!7044385))

(assert (not b!7044384))

(assert (not b!7044474))

(assert (not bs!1874435))

(assert (not b!7044479))

(assert (not d!2199971))

(assert (not bm!639978))

(assert (not b!7044545))

(assert (not d!2199937))

(assert (not b!7044668))

(assert (not b!7044337))

(assert (not d!2199851))

(assert (not bm!639983))

(assert (not d!2200025))

(assert (not b!7044534))

(assert (not bm!639955))

(assert (not b!7044580))

(assert (not bs!1874434))

(assert (not b!7044341))

(assert (not b!7044693))

(assert (not b!7044517))

(assert (not setNonEmpty!49417))

(assert (not b!7044656))

(assert (not bs!1874433))

(assert (not b!7044694))

(assert (not b!7044488))

(assert (not b!7044472))

(assert (not d!2199943))

(assert (not b!7044431))

(assert (not d!2199949))

(assert (not d!2199975))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

