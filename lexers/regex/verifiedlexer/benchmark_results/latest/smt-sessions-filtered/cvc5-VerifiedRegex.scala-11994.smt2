; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!672144 () Bool)

(assert start!672144)

(declare-fun b!6991937 () Bool)

(assert (=> b!6991937 true))

(declare-fun b!6991931 () Bool)

(assert (=> b!6991931 true))

(declare-fun b!6991932 () Bool)

(assert (=> b!6991932 true))

(declare-fun e!4202603 () Bool)

(declare-fun e!4202595 () Bool)

(assert (=> b!6991931 (= e!4202603 e!4202595)))

(declare-fun res!2851609 () Bool)

(assert (=> b!6991931 (=> res!2851609 e!4202595)))

(declare-datatypes ((C!34738 0))(
  ( (C!34739 (val!27071 Int)) )
))
(declare-datatypes ((Regex!17234 0))(
  ( (ElementMatch!17234 (c!1297003 C!34738)) (Concat!26079 (regOne!34980 Regex!17234) (regTwo!34980 Regex!17234)) (EmptyExpr!17234) (Star!17234 (reg!17563 Regex!17234)) (EmptyLang!17234) (Union!17234 (regOne!34981 Regex!17234) (regTwo!34981 Regex!17234)) )
))
(declare-datatypes ((List!67247 0))(
  ( (Nil!67123) (Cons!67123 (h!73571 Regex!17234) (t!380994 List!67247)) )
))
(declare-datatypes ((Context!12460 0))(
  ( (Context!12461 (exprs!6730 List!67247)) )
))
(declare-fun lt!2488910 () Context!12460)

(declare-fun lt!2488901 () Context!12460)

(declare-fun lt!2488922 () Context!12460)

(declare-fun z1!570 () (Set Context!12460))

(assert (=> b!6991931 (= res!2851609 (or (not (= lt!2488910 lt!2488922)) (not (set.member lt!2488901 z1!570))))))

(declare-fun ct2!306 () Context!12460)

(declare-fun ++!15179 (List!67247 List!67247) List!67247)

(assert (=> b!6991931 (= lt!2488910 (Context!12461 (++!15179 (exprs!6730 lt!2488901) (exprs!6730 ct2!306))))))

(declare-fun lambda!402571 () Int)

(declare-datatypes ((Unit!161123 0))(
  ( (Unit!161124) )
))
(declare-fun lt!2488899 () Unit!161123)

(declare-fun lemmaConcatPreservesForall!570 (List!67247 List!67247 Int) Unit!161123)

(assert (=> b!6991931 (= lt!2488899 (lemmaConcatPreservesForall!570 (exprs!6730 lt!2488901) (exprs!6730 ct2!306) lambda!402571))))

(declare-fun lambda!402570 () Int)

(declare-fun mapPost2!89 ((Set Context!12460) Int Context!12460) Context!12460)

(assert (=> b!6991931 (= lt!2488901 (mapPost2!89 z1!570 lambda!402570 lt!2488922))))

(declare-fun e!4202598 () Bool)

(declare-fun e!4202601 () Bool)

(assert (=> b!6991932 (= e!4202598 e!4202601)))

(declare-fun res!2851618 () Bool)

(assert (=> b!6991932 (=> res!2851618 e!4202601)))

(declare-fun lt!2488903 () (Set Context!12460))

(declare-fun lt!2488892 () (Set Context!12460))

(declare-datatypes ((List!67248 0))(
  ( (Nil!67124) (Cons!67124 (h!73572 C!34738) (t!380995 List!67248)) )
))
(declare-fun s!7408 () List!67248)

(declare-fun derivationStepZipper!2714 ((Set Context!12460) C!34738) (Set Context!12460))

(assert (=> b!6991932 (= res!2851618 (not (= (derivationStepZipper!2714 lt!2488892 (h!73572 s!7408)) lt!2488903)))))

(declare-fun lambda!402572 () Int)

(declare-fun flatMap!2220 ((Set Context!12460) Int) (Set Context!12460))

(declare-fun derivationStepZipperUp!1884 (Context!12460 C!34738) (Set Context!12460))

(assert (=> b!6991932 (= (flatMap!2220 lt!2488892 lambda!402572) (derivationStepZipperUp!1884 lt!2488910 (h!73572 s!7408)))))

(declare-fun lt!2488897 () Unit!161123)

(declare-fun lemmaFlatMapOnSingletonSet!1735 ((Set Context!12460) Context!12460 Int) Unit!161123)

(assert (=> b!6991932 (= lt!2488897 (lemmaFlatMapOnSingletonSet!1735 lt!2488892 lt!2488910 lambda!402572))))

(assert (=> b!6991932 (= lt!2488903 (derivationStepZipperUp!1884 lt!2488910 (h!73572 s!7408)))))

(declare-fun lt!2488890 () Unit!161123)

(assert (=> b!6991932 (= lt!2488890 (lemmaConcatPreservesForall!570 (exprs!6730 lt!2488901) (exprs!6730 ct2!306) lambda!402571))))

(declare-fun b!6991933 () Bool)

(declare-fun res!2851623 () Bool)

(assert (=> b!6991933 (=> res!2851623 e!4202601)))

(assert (=> b!6991933 (= res!2851623 (not (is-Cons!67123 (exprs!6730 lt!2488901))))))

(declare-fun b!6991934 () Bool)

(declare-fun e!4202596 () Bool)

(declare-fun lt!2488921 () (Set Context!12460))

(declare-fun matchZipper!2774 ((Set Context!12460) List!67248) Bool)

(assert (=> b!6991934 (= e!4202596 (not (matchZipper!2774 lt!2488921 (t!380995 s!7408))))))

(declare-fun lt!2488894 () List!67247)

(declare-fun lt!2488889 () Unit!161123)

(assert (=> b!6991934 (= lt!2488889 (lemmaConcatPreservesForall!570 lt!2488894 (exprs!6730 ct2!306) lambda!402571))))

(declare-fun b!6991935 () Bool)

(declare-fun res!2851622 () Bool)

(assert (=> b!6991935 (=> res!2851622 e!4202601)))

(declare-fun isEmpty!39176 (List!67247) Bool)

(assert (=> b!6991935 (= res!2851622 (isEmpty!39176 (exprs!6730 lt!2488901)))))

(declare-fun setIsEmpty!47886 () Bool)

(declare-fun setRes!47886 () Bool)

(assert (=> setIsEmpty!47886 setRes!47886))

(declare-fun b!6991936 () Bool)

(declare-fun e!4202606 () Bool)

(declare-fun e!4202599 () Bool)

(assert (=> b!6991936 (= e!4202606 e!4202599)))

(declare-fun res!2851619 () Bool)

(assert (=> b!6991936 (=> res!2851619 e!4202599)))

(declare-fun lt!2488885 () (Set Context!12460))

(assert (=> b!6991936 (= res!2851619 (not (matchZipper!2774 lt!2488885 s!7408)))))

(declare-fun lt!2488923 () Unit!161123)

(assert (=> b!6991936 (= lt!2488923 (lemmaConcatPreservesForall!570 lt!2488894 (exprs!6730 ct2!306) lambda!402571))))

(declare-fun e!4202607 () Bool)

(assert (=> b!6991937 (= e!4202607 (not e!4202603))))

(declare-fun res!2851613 () Bool)

(assert (=> b!6991937 (=> res!2851613 e!4202603)))

(declare-fun lt!2488919 () (Set Context!12460))

(assert (=> b!6991937 (= res!2851613 (not (matchZipper!2774 lt!2488919 s!7408)))))

(assert (=> b!6991937 (= lt!2488919 (set.insert lt!2488922 (as set.empty (Set Context!12460))))))

(declare-fun lt!2488900 () (Set Context!12460))

(declare-fun lambda!402569 () Int)

(declare-fun getWitness!1140 ((Set Context!12460) Int) Context!12460)

(assert (=> b!6991937 (= lt!2488922 (getWitness!1140 lt!2488900 lambda!402569))))

(declare-datatypes ((List!67249 0))(
  ( (Nil!67125) (Cons!67125 (h!73573 Context!12460) (t!380996 List!67249)) )
))
(declare-fun lt!2488918 () List!67249)

(declare-fun exists!3028 (List!67249 Int) Bool)

(assert (=> b!6991937 (exists!3028 lt!2488918 lambda!402569)))

(declare-fun lt!2488904 () Unit!161123)

(declare-fun lemmaZipperMatchesExistsMatchingContext!203 (List!67249 List!67248) Unit!161123)

(assert (=> b!6991937 (= lt!2488904 (lemmaZipperMatchesExistsMatchingContext!203 lt!2488918 s!7408))))

(declare-fun toList!10594 ((Set Context!12460)) List!67249)

(assert (=> b!6991937 (= lt!2488918 (toList!10594 lt!2488900))))

(declare-fun b!6991938 () Bool)

(declare-fun e!4202597 () Bool)

(declare-fun tp!1930062 () Bool)

(assert (=> b!6991938 (= e!4202597 tp!1930062)))

(declare-fun b!6991939 () Bool)

(declare-fun e!4202609 () Bool)

(declare-fun tp!1930059 () Bool)

(assert (=> b!6991939 (= e!4202609 tp!1930059)))

(declare-fun b!6991940 () Bool)

(declare-fun e!4202610 () Bool)

(assert (=> b!6991940 (= e!4202601 e!4202610)))

(declare-fun res!2851607 () Bool)

(assert (=> b!6991940 (=> res!2851607 e!4202610)))

(declare-fun nullable!6994 (Regex!17234) Bool)

(assert (=> b!6991940 (= res!2851607 (not (nullable!6994 (h!73571 (exprs!6730 lt!2488901)))))))

(declare-fun lt!2488906 () Context!12460)

(assert (=> b!6991940 (= lt!2488906 (Context!12461 lt!2488894))))

(declare-fun tail!13252 (List!67247) List!67247)

(assert (=> b!6991940 (= lt!2488894 (tail!13252 (exprs!6730 lt!2488901)))))

(declare-fun b!6991941 () Bool)

(declare-fun forall!16153 (List!67247 Int) Bool)

(assert (=> b!6991941 (= e!4202599 (forall!16153 lt!2488894 lambda!402571))))

(declare-fun lt!2488888 () Unit!161123)

(assert (=> b!6991941 (= lt!2488888 (lemmaConcatPreservesForall!570 lt!2488894 (exprs!6730 ct2!306) lambda!402571))))

(declare-fun lt!2488893 () Unit!161123)

(assert (=> b!6991941 (= lt!2488893 (lemmaConcatPreservesForall!570 lt!2488894 (exprs!6730 ct2!306) lambda!402571))))

(declare-fun lt!2488898 () (Set Context!12460))

(assert (=> b!6991941 (= (flatMap!2220 lt!2488898 lambda!402572) (derivationStepZipperUp!1884 lt!2488906 (h!73572 s!7408)))))

(declare-fun lt!2488891 () Unit!161123)

(assert (=> b!6991941 (= lt!2488891 (lemmaFlatMapOnSingletonSet!1735 lt!2488898 lt!2488906 lambda!402572))))

(declare-fun map!15498 ((Set Context!12460) Int) (Set Context!12460))

(assert (=> b!6991941 (= (map!15498 lt!2488898 lambda!402570) (set.insert (Context!12461 (++!15179 lt!2488894 (exprs!6730 ct2!306))) (as set.empty (Set Context!12460))))))

(declare-fun lt!2488925 () Unit!161123)

(assert (=> b!6991941 (= lt!2488925 (lemmaConcatPreservesForall!570 lt!2488894 (exprs!6730 ct2!306) lambda!402571))))

(declare-fun lt!2488920 () Unit!161123)

(declare-fun lemmaMapOnSingletonSet!299 ((Set Context!12460) Context!12460 Int) Unit!161123)

(assert (=> b!6991941 (= lt!2488920 (lemmaMapOnSingletonSet!299 lt!2488898 lt!2488906 lambda!402570))))

(assert (=> b!6991941 (= lt!2488898 (set.insert lt!2488906 (as set.empty (Set Context!12460))))))

(declare-fun setNonEmpty!47886 () Bool)

(declare-fun setElem!47886 () Context!12460)

(declare-fun tp!1930060 () Bool)

(declare-fun inv!85945 (Context!12460) Bool)

(assert (=> setNonEmpty!47886 (= setRes!47886 (and tp!1930060 (inv!85945 setElem!47886) e!4202597))))

(declare-fun setRest!47886 () (Set Context!12460))

(assert (=> setNonEmpty!47886 (= z1!570 (set.union (set.insert setElem!47886 (as set.empty (Set Context!12460))) setRest!47886))))

(declare-fun b!6991942 () Bool)

(declare-fun res!2851610 () Bool)

(declare-fun e!4202608 () Bool)

(assert (=> b!6991942 (=> res!2851610 e!4202608)))

(declare-fun lt!2488884 () Bool)

(assert (=> b!6991942 (= res!2851610 (not lt!2488884))))

(declare-fun b!6991943 () Bool)

(declare-fun res!2851608 () Bool)

(assert (=> b!6991943 (=> res!2851608 e!4202603)))

(assert (=> b!6991943 (= res!2851608 (not (set.member lt!2488922 lt!2488900)))))

(declare-fun b!6991944 () Bool)

(declare-fun res!2851611 () Bool)

(assert (=> b!6991944 (=> (not res!2851611) (not e!4202607))))

(assert (=> b!6991944 (= res!2851611 (is-Cons!67124 s!7408))))

(declare-fun res!2851620 () Bool)

(assert (=> start!672144 (=> (not res!2851620) (not e!4202607))))

(assert (=> start!672144 (= res!2851620 (matchZipper!2774 lt!2488900 s!7408))))

(declare-fun appendTo!355 ((Set Context!12460) Context!12460) (Set Context!12460))

(assert (=> start!672144 (= lt!2488900 (appendTo!355 z1!570 ct2!306))))

(assert (=> start!672144 e!4202607))

(declare-fun condSetEmpty!47886 () Bool)

(assert (=> start!672144 (= condSetEmpty!47886 (= z1!570 (as set.empty (Set Context!12460))))))

(assert (=> start!672144 setRes!47886))

(assert (=> start!672144 (and (inv!85945 ct2!306) e!4202609)))

(declare-fun e!4202605 () Bool)

(assert (=> start!672144 e!4202605))

(declare-fun b!6991945 () Bool)

(declare-fun e!4202604 () Bool)

(assert (=> b!6991945 (= e!4202604 (matchZipper!2774 lt!2488921 (t!380995 s!7408)))))

(declare-fun b!6991946 () Bool)

(assert (=> b!6991946 (= e!4202595 e!4202598)))

(declare-fun res!2851616 () Bool)

(assert (=> b!6991946 (=> res!2851616 e!4202598)))

(assert (=> b!6991946 (= res!2851616 (not (= lt!2488892 lt!2488919)))))

(assert (=> b!6991946 (= lt!2488892 (set.insert lt!2488910 (as set.empty (Set Context!12460))))))

(declare-fun lt!2488905 () Unit!161123)

(assert (=> b!6991946 (= lt!2488905 (lemmaConcatPreservesForall!570 (exprs!6730 lt!2488901) (exprs!6730 ct2!306) lambda!402571))))

(declare-fun b!6991947 () Bool)

(declare-fun e!4202602 () Bool)

(assert (=> b!6991947 (= e!4202608 e!4202602)))

(declare-fun res!2851614 () Bool)

(assert (=> b!6991947 (=> res!2851614 e!4202602)))

(assert (=> b!6991947 (= res!2851614 (not (matchZipper!2774 lt!2488921 (t!380995 s!7408))))))

(declare-fun lt!2488909 () Unit!161123)

(assert (=> b!6991947 (= lt!2488909 (lemmaConcatPreservesForall!570 lt!2488894 (exprs!6730 ct2!306) lambda!402571))))

(declare-fun b!6991948 () Bool)

(declare-fun e!4202600 () Bool)

(assert (=> b!6991948 (= e!4202610 e!4202600)))

(declare-fun res!2851624 () Bool)

(assert (=> b!6991948 (=> res!2851624 e!4202600)))

(declare-fun lt!2488924 () (Set Context!12460))

(assert (=> b!6991948 (= res!2851624 (not (= lt!2488903 lt!2488924)))))

(declare-fun lt!2488902 () (Set Context!12460))

(assert (=> b!6991948 (= lt!2488924 (set.union lt!2488902 lt!2488921))))

(declare-fun lt!2488917 () Context!12460)

(assert (=> b!6991948 (= lt!2488921 (derivationStepZipperUp!1884 lt!2488917 (h!73572 s!7408)))))

(declare-fun derivationStepZipperDown!1952 (Regex!17234 Context!12460 C!34738) (Set Context!12460))

(assert (=> b!6991948 (= lt!2488902 (derivationStepZipperDown!1952 (h!73571 (exprs!6730 lt!2488901)) lt!2488917 (h!73572 s!7408)))))

(assert (=> b!6991948 (= lt!2488917 (Context!12461 (++!15179 lt!2488894 (exprs!6730 ct2!306))))))

(declare-fun lt!2488908 () Unit!161123)

(assert (=> b!6991948 (= lt!2488908 (lemmaConcatPreservesForall!570 lt!2488894 (exprs!6730 ct2!306) lambda!402571))))

(declare-fun lt!2488916 () Unit!161123)

(assert (=> b!6991948 (= lt!2488916 (lemmaConcatPreservesForall!570 lt!2488894 (exprs!6730 ct2!306) lambda!402571))))

(declare-fun b!6991949 () Bool)

(assert (=> b!6991949 (= e!4202600 e!4202608)))

(declare-fun res!2851615 () Bool)

(assert (=> b!6991949 (=> res!2851615 e!4202608)))

(assert (=> b!6991949 (= res!2851615 e!4202596)))

(declare-fun res!2851617 () Bool)

(assert (=> b!6991949 (=> (not res!2851617) (not e!4202596))))

(declare-fun lt!2488912 () Bool)

(assert (=> b!6991949 (= res!2851617 (not (= lt!2488884 lt!2488912)))))

(assert (=> b!6991949 (= lt!2488884 (matchZipper!2774 lt!2488903 (t!380995 s!7408)))))

(declare-fun lt!2488913 () Unit!161123)

(assert (=> b!6991949 (= lt!2488913 (lemmaConcatPreservesForall!570 lt!2488894 (exprs!6730 ct2!306) lambda!402571))))

(assert (=> b!6991949 (= (matchZipper!2774 lt!2488924 (t!380995 s!7408)) e!4202604)))

(declare-fun res!2851621 () Bool)

(assert (=> b!6991949 (=> res!2851621 e!4202604)))

(assert (=> b!6991949 (= res!2851621 lt!2488912)))

(assert (=> b!6991949 (= lt!2488912 (matchZipper!2774 lt!2488902 (t!380995 s!7408)))))

(declare-fun lt!2488907 () Unit!161123)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1407 ((Set Context!12460) (Set Context!12460) List!67248) Unit!161123)

(assert (=> b!6991949 (= lt!2488907 (lemmaZipperConcatMatchesSameAsBothZippers!1407 lt!2488902 lt!2488921 (t!380995 s!7408)))))

(declare-fun lt!2488886 () Unit!161123)

(assert (=> b!6991949 (= lt!2488886 (lemmaConcatPreservesForall!570 lt!2488894 (exprs!6730 ct2!306) lambda!402571))))

(declare-fun lt!2488895 () Unit!161123)

(assert (=> b!6991949 (= lt!2488895 (lemmaConcatPreservesForall!570 lt!2488894 (exprs!6730 ct2!306) lambda!402571))))

(declare-fun b!6991950 () Bool)

(declare-fun tp_is_empty!43693 () Bool)

(declare-fun tp!1930061 () Bool)

(assert (=> b!6991950 (= e!4202605 (and tp_is_empty!43693 tp!1930061))))

(declare-fun b!6991951 () Bool)

(assert (=> b!6991951 (= e!4202602 e!4202606)))

(declare-fun res!2851612 () Bool)

(assert (=> b!6991951 (=> res!2851612 e!4202606)))

(assert (=> b!6991951 (= res!2851612 (not (= (derivationStepZipper!2714 lt!2488885 (h!73572 s!7408)) lt!2488921)))))

(declare-fun lt!2488887 () Unit!161123)

(assert (=> b!6991951 (= lt!2488887 (lemmaConcatPreservesForall!570 lt!2488894 (exprs!6730 ct2!306) lambda!402571))))

(declare-fun lt!2488911 () Unit!161123)

(assert (=> b!6991951 (= lt!2488911 (lemmaConcatPreservesForall!570 lt!2488894 (exprs!6730 ct2!306) lambda!402571))))

(assert (=> b!6991951 (= (flatMap!2220 lt!2488885 lambda!402572) (derivationStepZipperUp!1884 lt!2488917 (h!73572 s!7408)))))

(declare-fun lt!2488896 () Unit!161123)

(assert (=> b!6991951 (= lt!2488896 (lemmaFlatMapOnSingletonSet!1735 lt!2488885 lt!2488917 lambda!402572))))

(assert (=> b!6991951 (= lt!2488885 (set.insert lt!2488917 (as set.empty (Set Context!12460))))))

(declare-fun lt!2488914 () Unit!161123)

(assert (=> b!6991951 (= lt!2488914 (lemmaConcatPreservesForall!570 lt!2488894 (exprs!6730 ct2!306) lambda!402571))))

(declare-fun lt!2488915 () Unit!161123)

(assert (=> b!6991951 (= lt!2488915 (lemmaConcatPreservesForall!570 lt!2488894 (exprs!6730 ct2!306) lambda!402571))))

(assert (= (and start!672144 res!2851620) b!6991944))

(assert (= (and b!6991944 res!2851611) b!6991937))

(assert (= (and b!6991937 (not res!2851613)) b!6991943))

(assert (= (and b!6991943 (not res!2851608)) b!6991931))

(assert (= (and b!6991931 (not res!2851609)) b!6991946))

(assert (= (and b!6991946 (not res!2851616)) b!6991932))

(assert (= (and b!6991932 (not res!2851618)) b!6991933))

(assert (= (and b!6991933 (not res!2851623)) b!6991935))

(assert (= (and b!6991935 (not res!2851622)) b!6991940))

(assert (= (and b!6991940 (not res!2851607)) b!6991948))

(assert (= (and b!6991948 (not res!2851624)) b!6991949))

(assert (= (and b!6991949 (not res!2851621)) b!6991945))

(assert (= (and b!6991949 res!2851617) b!6991934))

(assert (= (and b!6991949 (not res!2851615)) b!6991942))

(assert (= (and b!6991942 (not res!2851610)) b!6991947))

(assert (= (and b!6991947 (not res!2851614)) b!6991951))

(assert (= (and b!6991951 (not res!2851612)) b!6991936))

(assert (= (and b!6991936 (not res!2851619)) b!6991941))

(assert (= (and start!672144 condSetEmpty!47886) setIsEmpty!47886))

(assert (= (and start!672144 (not condSetEmpty!47886)) setNonEmpty!47886))

(assert (= setNonEmpty!47886 b!6991938))

(assert (= start!672144 b!6991939))

(assert (= (and start!672144 (is-Cons!67124 s!7408)) b!6991950))

(declare-fun m!7681528 () Bool)

(assert (=> b!6991936 m!7681528))

(declare-fun m!7681530 () Bool)

(assert (=> b!6991936 m!7681530))

(declare-fun m!7681532 () Bool)

(assert (=> start!672144 m!7681532))

(declare-fun m!7681534 () Bool)

(assert (=> start!672144 m!7681534))

(declare-fun m!7681536 () Bool)

(assert (=> start!672144 m!7681536))

(declare-fun m!7681538 () Bool)

(assert (=> b!6991943 m!7681538))

(declare-fun m!7681540 () Bool)

(assert (=> b!6991941 m!7681540))

(declare-fun m!7681542 () Bool)

(assert (=> b!6991941 m!7681542))

(declare-fun m!7681544 () Bool)

(assert (=> b!6991941 m!7681544))

(declare-fun m!7681546 () Bool)

(assert (=> b!6991941 m!7681546))

(assert (=> b!6991941 m!7681530))

(declare-fun m!7681548 () Bool)

(assert (=> b!6991941 m!7681548))

(declare-fun m!7681550 () Bool)

(assert (=> b!6991941 m!7681550))

(declare-fun m!7681552 () Bool)

(assert (=> b!6991941 m!7681552))

(assert (=> b!6991941 m!7681530))

(declare-fun m!7681554 () Bool)

(assert (=> b!6991941 m!7681554))

(assert (=> b!6991941 m!7681530))

(declare-fun m!7681556 () Bool)

(assert (=> b!6991941 m!7681556))

(declare-fun m!7681558 () Bool)

(assert (=> b!6991948 m!7681558))

(assert (=> b!6991948 m!7681530))

(assert (=> b!6991948 m!7681556))

(declare-fun m!7681560 () Bool)

(assert (=> b!6991948 m!7681560))

(assert (=> b!6991948 m!7681530))

(declare-fun m!7681562 () Bool)

(assert (=> b!6991937 m!7681562))

(declare-fun m!7681564 () Bool)

(assert (=> b!6991937 m!7681564))

(declare-fun m!7681566 () Bool)

(assert (=> b!6991937 m!7681566))

(declare-fun m!7681568 () Bool)

(assert (=> b!6991937 m!7681568))

(declare-fun m!7681570 () Bool)

(assert (=> b!6991937 m!7681570))

(declare-fun m!7681572 () Bool)

(assert (=> b!6991937 m!7681572))

(declare-fun m!7681574 () Bool)

(assert (=> b!6991934 m!7681574))

(assert (=> b!6991934 m!7681530))

(declare-fun m!7681576 () Bool)

(assert (=> b!6991932 m!7681576))

(declare-fun m!7681578 () Bool)

(assert (=> b!6991932 m!7681578))

(declare-fun m!7681580 () Bool)

(assert (=> b!6991932 m!7681580))

(declare-fun m!7681582 () Bool)

(assert (=> b!6991932 m!7681582))

(declare-fun m!7681584 () Bool)

(assert (=> b!6991932 m!7681584))

(declare-fun m!7681586 () Bool)

(assert (=> b!6991931 m!7681586))

(declare-fun m!7681588 () Bool)

(assert (=> b!6991931 m!7681588))

(assert (=> b!6991931 m!7681578))

(declare-fun m!7681590 () Bool)

(assert (=> b!6991931 m!7681590))

(assert (=> b!6991947 m!7681574))

(assert (=> b!6991947 m!7681530))

(declare-fun m!7681592 () Bool)

(assert (=> setNonEmpty!47886 m!7681592))

(declare-fun m!7681594 () Bool)

(assert (=> b!6991940 m!7681594))

(declare-fun m!7681596 () Bool)

(assert (=> b!6991940 m!7681596))

(assert (=> b!6991945 m!7681574))

(declare-fun m!7681598 () Bool)

(assert (=> b!6991946 m!7681598))

(assert (=> b!6991946 m!7681578))

(declare-fun m!7681600 () Bool)

(assert (=> b!6991951 m!7681600))

(declare-fun m!7681602 () Bool)

(assert (=> b!6991951 m!7681602))

(assert (=> b!6991951 m!7681560))

(assert (=> b!6991951 m!7681530))

(declare-fun m!7681604 () Bool)

(assert (=> b!6991951 m!7681604))

(assert (=> b!6991951 m!7681530))

(assert (=> b!6991951 m!7681530))

(declare-fun m!7681606 () Bool)

(assert (=> b!6991951 m!7681606))

(assert (=> b!6991951 m!7681530))

(assert (=> b!6991949 m!7681530))

(assert (=> b!6991949 m!7681530))

(declare-fun m!7681608 () Bool)

(assert (=> b!6991949 m!7681608))

(declare-fun m!7681610 () Bool)

(assert (=> b!6991949 m!7681610))

(declare-fun m!7681612 () Bool)

(assert (=> b!6991949 m!7681612))

(declare-fun m!7681614 () Bool)

(assert (=> b!6991949 m!7681614))

(assert (=> b!6991949 m!7681530))

(declare-fun m!7681616 () Bool)

(assert (=> b!6991935 m!7681616))

(push 1)

(assert (not b!6991940))

(assert (not b!6991935))

(assert (not b!6991932))

(assert (not b!6991934))

(assert (not b!6991949))

(assert (not b!6991951))

(assert (not b!6991946))

(assert (not b!6991939))

(assert (not b!6991941))

(assert (not setNonEmpty!47886))

(assert (not b!6991937))

(assert (not b!6991945))

(assert (not b!6991948))

(assert (not b!6991936))

(assert tp_is_empty!43693)

(assert (not b!6991931))

(assert (not b!6991947))

(assert (not start!672144))

(assert (not b!6991938))

(assert (not b!6991950))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6992035 () Bool)

(declare-fun e!4202663 () List!67247)

(assert (=> b!6992035 (= e!4202663 (exprs!6730 ct2!306))))

(declare-fun lt!2489058 () List!67247)

(declare-fun b!6992038 () Bool)

(declare-fun e!4202664 () Bool)

(assert (=> b!6992038 (= e!4202664 (or (not (= (exprs!6730 ct2!306) Nil!67123)) (= lt!2489058 (exprs!6730 lt!2488901))))))

(declare-fun d!2178111 () Bool)

(assert (=> d!2178111 e!4202664))

(declare-fun res!2851684 () Bool)

(assert (=> d!2178111 (=> (not res!2851684) (not e!4202664))))

(declare-fun content!13273 (List!67247) (Set Regex!17234))

(assert (=> d!2178111 (= res!2851684 (= (content!13273 lt!2489058) (set.union (content!13273 (exprs!6730 lt!2488901)) (content!13273 (exprs!6730 ct2!306)))))))

(assert (=> d!2178111 (= lt!2489058 e!4202663)))

(declare-fun c!1297021 () Bool)

(assert (=> d!2178111 (= c!1297021 (is-Nil!67123 (exprs!6730 lt!2488901)))))

(assert (=> d!2178111 (= (++!15179 (exprs!6730 lt!2488901) (exprs!6730 ct2!306)) lt!2489058)))

(declare-fun b!6992036 () Bool)

(assert (=> b!6992036 (= e!4202663 (Cons!67123 (h!73571 (exprs!6730 lt!2488901)) (++!15179 (t!380994 (exprs!6730 lt!2488901)) (exprs!6730 ct2!306))))))

(declare-fun b!6992037 () Bool)

(declare-fun res!2851685 () Bool)

(assert (=> b!6992037 (=> (not res!2851685) (not e!4202664))))

(declare-fun size!40912 (List!67247) Int)

(assert (=> b!6992037 (= res!2851685 (= (size!40912 lt!2489058) (+ (size!40912 (exprs!6730 lt!2488901)) (size!40912 (exprs!6730 ct2!306)))))))

(assert (= (and d!2178111 c!1297021) b!6992035))

(assert (= (and d!2178111 (not c!1297021)) b!6992036))

(assert (= (and d!2178111 res!2851684) b!6992037))

(assert (= (and b!6992037 res!2851685) b!6992038))

(declare-fun m!7681708 () Bool)

(assert (=> d!2178111 m!7681708))

(declare-fun m!7681710 () Bool)

(assert (=> d!2178111 m!7681710))

(declare-fun m!7681712 () Bool)

(assert (=> d!2178111 m!7681712))

(declare-fun m!7681714 () Bool)

(assert (=> b!6992036 m!7681714))

(declare-fun m!7681716 () Bool)

(assert (=> b!6992037 m!7681716))

(declare-fun m!7681718 () Bool)

(assert (=> b!6992037 m!7681718))

(declare-fun m!7681720 () Bool)

(assert (=> b!6992037 m!7681720))

(assert (=> b!6991931 d!2178111))

(declare-fun d!2178113 () Bool)

(assert (=> d!2178113 (forall!16153 (++!15179 (exprs!6730 lt!2488901) (exprs!6730 ct2!306)) lambda!402571)))

(declare-fun lt!2489061 () Unit!161123)

(declare-fun choose!52316 (List!67247 List!67247 Int) Unit!161123)

(assert (=> d!2178113 (= lt!2489061 (choose!52316 (exprs!6730 lt!2488901) (exprs!6730 ct2!306) lambda!402571))))

(assert (=> d!2178113 (forall!16153 (exprs!6730 lt!2488901) lambda!402571)))

(assert (=> d!2178113 (= (lemmaConcatPreservesForall!570 (exprs!6730 lt!2488901) (exprs!6730 ct2!306) lambda!402571) lt!2489061)))

(declare-fun bs!1862523 () Bool)

(assert (= bs!1862523 d!2178113))

(assert (=> bs!1862523 m!7681588))

(assert (=> bs!1862523 m!7681588))

(declare-fun m!7681722 () Bool)

(assert (=> bs!1862523 m!7681722))

(declare-fun m!7681724 () Bool)

(assert (=> bs!1862523 m!7681724))

(declare-fun m!7681726 () Bool)

(assert (=> bs!1862523 m!7681726))

(assert (=> b!6991931 d!2178113))

(declare-fun d!2178115 () Bool)

(declare-fun e!4202667 () Bool)

(assert (=> d!2178115 e!4202667))

(declare-fun res!2851688 () Bool)

(assert (=> d!2178115 (=> (not res!2851688) (not e!4202667))))

(declare-fun lt!2489064 () Context!12460)

(declare-fun dynLambda!26937 (Int Context!12460) Context!12460)

(assert (=> d!2178115 (= res!2851688 (= lt!2488922 (dynLambda!26937 lambda!402570 lt!2489064)))))

(declare-fun choose!52317 ((Set Context!12460) Int Context!12460) Context!12460)

(assert (=> d!2178115 (= lt!2489064 (choose!52317 z1!570 lambda!402570 lt!2488922))))

(assert (=> d!2178115 (set.member lt!2488922 (map!15498 z1!570 lambda!402570))))

(assert (=> d!2178115 (= (mapPost2!89 z1!570 lambda!402570 lt!2488922) lt!2489064)))

(declare-fun b!6992042 () Bool)

(assert (=> b!6992042 (= e!4202667 (set.member lt!2489064 z1!570))))

(assert (= (and d!2178115 res!2851688) b!6992042))

(declare-fun b_lambda!262835 () Bool)

(assert (=> (not b_lambda!262835) (not d!2178115)))

(declare-fun m!7681728 () Bool)

(assert (=> d!2178115 m!7681728))

(declare-fun m!7681730 () Bool)

(assert (=> d!2178115 m!7681730))

(declare-fun m!7681732 () Bool)

(assert (=> d!2178115 m!7681732))

(declare-fun m!7681734 () Bool)

(assert (=> d!2178115 m!7681734))

(declare-fun m!7681736 () Bool)

(assert (=> b!6992042 m!7681736))

(assert (=> b!6991931 d!2178115))

(declare-fun d!2178117 () Bool)

(declare-fun c!1297024 () Bool)

(declare-fun isEmpty!39178 (List!67248) Bool)

(assert (=> d!2178117 (= c!1297024 (isEmpty!39178 s!7408))))

(declare-fun e!4202670 () Bool)

(assert (=> d!2178117 (= (matchZipper!2774 lt!2488900 s!7408) e!4202670)))

(declare-fun b!6992047 () Bool)

(declare-fun nullableZipper!2445 ((Set Context!12460)) Bool)

(assert (=> b!6992047 (= e!4202670 (nullableZipper!2445 lt!2488900))))

(declare-fun b!6992048 () Bool)

(declare-fun head!14120 (List!67248) C!34738)

(declare-fun tail!13254 (List!67248) List!67248)

(assert (=> b!6992048 (= e!4202670 (matchZipper!2774 (derivationStepZipper!2714 lt!2488900 (head!14120 s!7408)) (tail!13254 s!7408)))))

(assert (= (and d!2178117 c!1297024) b!6992047))

(assert (= (and d!2178117 (not c!1297024)) b!6992048))

(declare-fun m!7681738 () Bool)

(assert (=> d!2178117 m!7681738))

(declare-fun m!7681740 () Bool)

(assert (=> b!6992047 m!7681740))

(declare-fun m!7681742 () Bool)

(assert (=> b!6992048 m!7681742))

(assert (=> b!6992048 m!7681742))

(declare-fun m!7681744 () Bool)

(assert (=> b!6992048 m!7681744))

(declare-fun m!7681746 () Bool)

(assert (=> b!6992048 m!7681746))

(assert (=> b!6992048 m!7681744))

(assert (=> b!6992048 m!7681746))

(declare-fun m!7681748 () Bool)

(assert (=> b!6992048 m!7681748))

(assert (=> start!672144 d!2178117))

(declare-fun bs!1862524 () Bool)

(declare-fun d!2178119 () Bool)

(assert (= bs!1862524 (and d!2178119 b!6991931)))

(declare-fun lambda!402637 () Int)

(assert (=> bs!1862524 (= lambda!402637 lambda!402570)))

(assert (=> d!2178119 true))

(assert (=> d!2178119 (= (appendTo!355 z1!570 ct2!306) (map!15498 z1!570 lambda!402637))))

(declare-fun bs!1862525 () Bool)

(assert (= bs!1862525 d!2178119))

(declare-fun m!7681750 () Bool)

(assert (=> bs!1862525 m!7681750))

(assert (=> start!672144 d!2178119))

(declare-fun bs!1862526 () Bool)

(declare-fun d!2178121 () Bool)

(assert (= bs!1862526 (and d!2178121 b!6991931)))

(declare-fun lambda!402640 () Int)

(assert (=> bs!1862526 (= lambda!402640 lambda!402571)))

(assert (=> d!2178121 (= (inv!85945 ct2!306) (forall!16153 (exprs!6730 ct2!306) lambda!402640))))

(declare-fun bs!1862527 () Bool)

(assert (= bs!1862527 d!2178121))

(declare-fun m!7681752 () Bool)

(assert (=> bs!1862527 m!7681752))

(assert (=> start!672144 d!2178121))

(declare-fun d!2178123 () Bool)

(assert (=> d!2178123 (= (map!15498 lt!2488898 lambda!402570) (set.insert (dynLambda!26937 lambda!402570 lt!2488906) (as set.empty (Set Context!12460))))))

(declare-fun lt!2489069 () Unit!161123)

(declare-fun choose!52318 ((Set Context!12460) Context!12460 Int) Unit!161123)

(assert (=> d!2178123 (= lt!2489069 (choose!52318 lt!2488898 lt!2488906 lambda!402570))))

(assert (=> d!2178123 (= lt!2488898 (set.insert lt!2488906 (as set.empty (Set Context!12460))))))

(assert (=> d!2178123 (= (lemmaMapOnSingletonSet!299 lt!2488898 lt!2488906 lambda!402570) lt!2489069)))

(declare-fun b_lambda!262837 () Bool)

(assert (=> (not b_lambda!262837) (not d!2178123)))

(declare-fun bs!1862528 () Bool)

(assert (= bs!1862528 d!2178123))

(declare-fun m!7681754 () Bool)

(assert (=> bs!1862528 m!7681754))

(declare-fun m!7681756 () Bool)

(assert (=> bs!1862528 m!7681756))

(assert (=> bs!1862528 m!7681754))

(assert (=> bs!1862528 m!7681544))

(assert (=> bs!1862528 m!7681540))

(declare-fun m!7681758 () Bool)

(assert (=> bs!1862528 m!7681758))

(assert (=> b!6991941 d!2178123))

(declare-fun d!2178125 () Bool)

(declare-fun choose!52319 ((Set Context!12460) Int) (Set Context!12460))

(assert (=> d!2178125 (= (flatMap!2220 lt!2488898 lambda!402572) (choose!52319 lt!2488898 lambda!402572))))

(declare-fun bs!1862529 () Bool)

(assert (= bs!1862529 d!2178125))

(declare-fun m!7681760 () Bool)

(assert (=> bs!1862529 m!7681760))

(assert (=> b!6991941 d!2178125))

(declare-fun d!2178127 () Bool)

(assert (=> d!2178127 (forall!16153 (++!15179 lt!2488894 (exprs!6730 ct2!306)) lambda!402571)))

(declare-fun lt!2489070 () Unit!161123)

(assert (=> d!2178127 (= lt!2489070 (choose!52316 lt!2488894 (exprs!6730 ct2!306) lambda!402571))))

(assert (=> d!2178127 (forall!16153 lt!2488894 lambda!402571)))

(assert (=> d!2178127 (= (lemmaConcatPreservesForall!570 lt!2488894 (exprs!6730 ct2!306) lambda!402571) lt!2489070)))

(declare-fun bs!1862530 () Bool)

(assert (= bs!1862530 d!2178127))

(assert (=> bs!1862530 m!7681556))

(assert (=> bs!1862530 m!7681556))

(declare-fun m!7681762 () Bool)

(assert (=> bs!1862530 m!7681762))

(declare-fun m!7681764 () Bool)

(assert (=> bs!1862530 m!7681764))

(assert (=> bs!1862530 m!7681554))

(assert (=> b!6991941 d!2178127))

(declare-fun d!2178129 () Bool)

(declare-fun dynLambda!26938 (Int Context!12460) (Set Context!12460))

(assert (=> d!2178129 (= (flatMap!2220 lt!2488898 lambda!402572) (dynLambda!26938 lambda!402572 lt!2488906))))

(declare-fun lt!2489073 () Unit!161123)

(declare-fun choose!52320 ((Set Context!12460) Context!12460 Int) Unit!161123)

(assert (=> d!2178129 (= lt!2489073 (choose!52320 lt!2488898 lt!2488906 lambda!402572))))

(assert (=> d!2178129 (= lt!2488898 (set.insert lt!2488906 (as set.empty (Set Context!12460))))))

(assert (=> d!2178129 (= (lemmaFlatMapOnSingletonSet!1735 lt!2488898 lt!2488906 lambda!402572) lt!2489073)))

(declare-fun b_lambda!262839 () Bool)

(assert (=> (not b_lambda!262839) (not d!2178129)))

(declare-fun bs!1862531 () Bool)

(assert (= bs!1862531 d!2178129))

(assert (=> bs!1862531 m!7681546))

(declare-fun m!7681766 () Bool)

(assert (=> bs!1862531 m!7681766))

(declare-fun m!7681768 () Bool)

(assert (=> bs!1862531 m!7681768))

(assert (=> bs!1862531 m!7681540))

(assert (=> b!6991941 d!2178129))

(declare-fun d!2178131 () Bool)

(declare-fun res!2851694 () Bool)

(declare-fun e!4202675 () Bool)

(assert (=> d!2178131 (=> res!2851694 e!4202675)))

(assert (=> d!2178131 (= res!2851694 (is-Nil!67123 lt!2488894))))

(assert (=> d!2178131 (= (forall!16153 lt!2488894 lambda!402571) e!4202675)))

(declare-fun b!6992053 () Bool)

(declare-fun e!4202676 () Bool)

(assert (=> b!6992053 (= e!4202675 e!4202676)))

(declare-fun res!2851695 () Bool)

(assert (=> b!6992053 (=> (not res!2851695) (not e!4202676))))

(declare-fun dynLambda!26939 (Int Regex!17234) Bool)

(assert (=> b!6992053 (= res!2851695 (dynLambda!26939 lambda!402571 (h!73571 lt!2488894)))))

(declare-fun b!6992054 () Bool)

(assert (=> b!6992054 (= e!4202676 (forall!16153 (t!380994 lt!2488894) lambda!402571))))

(assert (= (and d!2178131 (not res!2851694)) b!6992053))

(assert (= (and b!6992053 res!2851695) b!6992054))

(declare-fun b_lambda!262841 () Bool)

(assert (=> (not b_lambda!262841) (not b!6992053)))

(declare-fun m!7681770 () Bool)

(assert (=> b!6992053 m!7681770))

(declare-fun m!7681772 () Bool)

(assert (=> b!6992054 m!7681772))

(assert (=> b!6991941 d!2178131))

(declare-fun b!6992065 () Bool)

(declare-fun e!4202685 () (Set Context!12460))

(declare-fun e!4202684 () (Set Context!12460))

(assert (=> b!6992065 (= e!4202685 e!4202684)))

(declare-fun c!1297030 () Bool)

(assert (=> b!6992065 (= c!1297030 (is-Cons!67123 (exprs!6730 lt!2488906)))))

(declare-fun bm!634757 () Bool)

(declare-fun call!634762 () (Set Context!12460))

(assert (=> bm!634757 (= call!634762 (derivationStepZipperDown!1952 (h!73571 (exprs!6730 lt!2488906)) (Context!12461 (t!380994 (exprs!6730 lt!2488906))) (h!73572 s!7408)))))

(declare-fun b!6992066 () Bool)

(assert (=> b!6992066 (= e!4202684 call!634762)))

(declare-fun d!2178133 () Bool)

(declare-fun c!1297031 () Bool)

(declare-fun e!4202683 () Bool)

(assert (=> d!2178133 (= c!1297031 e!4202683)))

(declare-fun res!2851698 () Bool)

(assert (=> d!2178133 (=> (not res!2851698) (not e!4202683))))

(assert (=> d!2178133 (= res!2851698 (is-Cons!67123 (exprs!6730 lt!2488906)))))

(assert (=> d!2178133 (= (derivationStepZipperUp!1884 lt!2488906 (h!73572 s!7408)) e!4202685)))

(declare-fun b!6992067 () Bool)

(assert (=> b!6992067 (= e!4202684 (as set.empty (Set Context!12460)))))

(declare-fun b!6992068 () Bool)

(assert (=> b!6992068 (= e!4202683 (nullable!6994 (h!73571 (exprs!6730 lt!2488906))))))

(declare-fun b!6992069 () Bool)

(assert (=> b!6992069 (= e!4202685 (set.union call!634762 (derivationStepZipperUp!1884 (Context!12461 (t!380994 (exprs!6730 lt!2488906))) (h!73572 s!7408))))))

(assert (= (and d!2178133 res!2851698) b!6992068))

(assert (= (and d!2178133 c!1297031) b!6992069))

(assert (= (and d!2178133 (not c!1297031)) b!6992065))

(assert (= (and b!6992065 c!1297030) b!6992066))

(assert (= (and b!6992065 (not c!1297030)) b!6992067))

(assert (= (or b!6992069 b!6992066) bm!634757))

(declare-fun m!7681774 () Bool)

(assert (=> bm!634757 m!7681774))

(declare-fun m!7681776 () Bool)

(assert (=> b!6992068 m!7681776))

(declare-fun m!7681778 () Bool)

(assert (=> b!6992069 m!7681778))

(assert (=> b!6991941 d!2178133))

(declare-fun d!2178135 () Bool)

(declare-fun choose!52321 ((Set Context!12460) Int) (Set Context!12460))

(assert (=> d!2178135 (= (map!15498 lt!2488898 lambda!402570) (choose!52321 lt!2488898 lambda!402570))))

(declare-fun bs!1862532 () Bool)

(assert (= bs!1862532 d!2178135))

(declare-fun m!7681780 () Bool)

(assert (=> bs!1862532 m!7681780))

(assert (=> b!6991941 d!2178135))

(declare-fun b!6992070 () Bool)

(declare-fun e!4202686 () List!67247)

(assert (=> b!6992070 (= e!4202686 (exprs!6730 ct2!306))))

(declare-fun b!6992073 () Bool)

(declare-fun lt!2489074 () List!67247)

(declare-fun e!4202687 () Bool)

(assert (=> b!6992073 (= e!4202687 (or (not (= (exprs!6730 ct2!306) Nil!67123)) (= lt!2489074 lt!2488894)))))

(declare-fun d!2178137 () Bool)

(assert (=> d!2178137 e!4202687))

(declare-fun res!2851699 () Bool)

(assert (=> d!2178137 (=> (not res!2851699) (not e!4202687))))

(assert (=> d!2178137 (= res!2851699 (= (content!13273 lt!2489074) (set.union (content!13273 lt!2488894) (content!13273 (exprs!6730 ct2!306)))))))

(assert (=> d!2178137 (= lt!2489074 e!4202686)))

(declare-fun c!1297032 () Bool)

(assert (=> d!2178137 (= c!1297032 (is-Nil!67123 lt!2488894))))

(assert (=> d!2178137 (= (++!15179 lt!2488894 (exprs!6730 ct2!306)) lt!2489074)))

(declare-fun b!6992071 () Bool)

(assert (=> b!6992071 (= e!4202686 (Cons!67123 (h!73571 lt!2488894) (++!15179 (t!380994 lt!2488894) (exprs!6730 ct2!306))))))

(declare-fun b!6992072 () Bool)

(declare-fun res!2851700 () Bool)

(assert (=> b!6992072 (=> (not res!2851700) (not e!4202687))))

(assert (=> b!6992072 (= res!2851700 (= (size!40912 lt!2489074) (+ (size!40912 lt!2488894) (size!40912 (exprs!6730 ct2!306)))))))

(assert (= (and d!2178137 c!1297032) b!6992070))

(assert (= (and d!2178137 (not c!1297032)) b!6992071))

(assert (= (and d!2178137 res!2851699) b!6992072))

(assert (= (and b!6992072 res!2851700) b!6992073))

(declare-fun m!7681782 () Bool)

(assert (=> d!2178137 m!7681782))

(declare-fun m!7681784 () Bool)

(assert (=> d!2178137 m!7681784))

(assert (=> d!2178137 m!7681712))

(declare-fun m!7681786 () Bool)

(assert (=> b!6992071 m!7681786))

(declare-fun m!7681788 () Bool)

(assert (=> b!6992072 m!7681788))

(declare-fun m!7681790 () Bool)

(assert (=> b!6992072 m!7681790))

(assert (=> b!6992072 m!7681720))

(assert (=> b!6991941 d!2178137))

(declare-fun d!2178139 () Bool)

(declare-fun nullableFct!2646 (Regex!17234) Bool)

(assert (=> d!2178139 (= (nullable!6994 (h!73571 (exprs!6730 lt!2488901))) (nullableFct!2646 (h!73571 (exprs!6730 lt!2488901))))))

(declare-fun bs!1862533 () Bool)

(assert (= bs!1862533 d!2178139))

(declare-fun m!7681792 () Bool)

(assert (=> bs!1862533 m!7681792))

(assert (=> b!6991940 d!2178139))

(declare-fun d!2178141 () Bool)

(assert (=> d!2178141 (= (tail!13252 (exprs!6730 lt!2488901)) (t!380994 (exprs!6730 lt!2488901)))))

(assert (=> b!6991940 d!2178141))

(declare-fun bs!1862534 () Bool)

(declare-fun d!2178143 () Bool)

(assert (= bs!1862534 (and d!2178143 b!6991931)))

(declare-fun lambda!402641 () Int)

(assert (=> bs!1862534 (= lambda!402641 lambda!402571)))

(declare-fun bs!1862535 () Bool)

(assert (= bs!1862535 (and d!2178143 d!2178121)))

(assert (=> bs!1862535 (= lambda!402641 lambda!402640)))

(assert (=> d!2178143 (= (inv!85945 setElem!47886) (forall!16153 (exprs!6730 setElem!47886) lambda!402641))))

(declare-fun bs!1862536 () Bool)

(assert (= bs!1862536 d!2178143))

(declare-fun m!7681794 () Bool)

(assert (=> bs!1862536 m!7681794))

(assert (=> setNonEmpty!47886 d!2178143))

(declare-fun bs!1862537 () Bool)

(declare-fun d!2178145 () Bool)

(assert (= bs!1862537 (and d!2178145 b!6991932)))

(declare-fun lambda!402644 () Int)

(assert (=> bs!1862537 (= lambda!402644 lambda!402572)))

(assert (=> d!2178145 true))

(assert (=> d!2178145 (= (derivationStepZipper!2714 lt!2488885 (h!73572 s!7408)) (flatMap!2220 lt!2488885 lambda!402644))))

(declare-fun bs!1862538 () Bool)

(assert (= bs!1862538 d!2178145))

(declare-fun m!7681796 () Bool)

(assert (=> bs!1862538 m!7681796))

(assert (=> b!6991951 d!2178145))

(declare-fun d!2178147 () Bool)

(assert (=> d!2178147 (= (flatMap!2220 lt!2488885 lambda!402572) (dynLambda!26938 lambda!402572 lt!2488917))))

(declare-fun lt!2489075 () Unit!161123)

(assert (=> d!2178147 (= lt!2489075 (choose!52320 lt!2488885 lt!2488917 lambda!402572))))

(assert (=> d!2178147 (= lt!2488885 (set.insert lt!2488917 (as set.empty (Set Context!12460))))))

(assert (=> d!2178147 (= (lemmaFlatMapOnSingletonSet!1735 lt!2488885 lt!2488917 lambda!402572) lt!2489075)))

(declare-fun b_lambda!262843 () Bool)

(assert (=> (not b_lambda!262843) (not d!2178147)))

(declare-fun bs!1862539 () Bool)

(assert (= bs!1862539 d!2178147))

(assert (=> bs!1862539 m!7681600))

(declare-fun m!7681798 () Bool)

(assert (=> bs!1862539 m!7681798))

(declare-fun m!7681800 () Bool)

(assert (=> bs!1862539 m!7681800))

(assert (=> bs!1862539 m!7681604))

(assert (=> b!6991951 d!2178147))

(declare-fun d!2178149 () Bool)

(assert (=> d!2178149 (= (flatMap!2220 lt!2488885 lambda!402572) (choose!52319 lt!2488885 lambda!402572))))

(declare-fun bs!1862540 () Bool)

(assert (= bs!1862540 d!2178149))

(declare-fun m!7681802 () Bool)

(assert (=> bs!1862540 m!7681802))

(assert (=> b!6991951 d!2178149))

(assert (=> b!6991951 d!2178127))

(declare-fun b!6992076 () Bool)

(declare-fun e!4202690 () (Set Context!12460))

(declare-fun e!4202689 () (Set Context!12460))

(assert (=> b!6992076 (= e!4202690 e!4202689)))

(declare-fun c!1297035 () Bool)

(assert (=> b!6992076 (= c!1297035 (is-Cons!67123 (exprs!6730 lt!2488917)))))

(declare-fun bm!634758 () Bool)

(declare-fun call!634763 () (Set Context!12460))

(assert (=> bm!634758 (= call!634763 (derivationStepZipperDown!1952 (h!73571 (exprs!6730 lt!2488917)) (Context!12461 (t!380994 (exprs!6730 lt!2488917))) (h!73572 s!7408)))))

(declare-fun b!6992077 () Bool)

(assert (=> b!6992077 (= e!4202689 call!634763)))

(declare-fun d!2178151 () Bool)

(declare-fun c!1297036 () Bool)

(declare-fun e!4202688 () Bool)

(assert (=> d!2178151 (= c!1297036 e!4202688)))

(declare-fun res!2851701 () Bool)

(assert (=> d!2178151 (=> (not res!2851701) (not e!4202688))))

(assert (=> d!2178151 (= res!2851701 (is-Cons!67123 (exprs!6730 lt!2488917)))))

(assert (=> d!2178151 (= (derivationStepZipperUp!1884 lt!2488917 (h!73572 s!7408)) e!4202690)))

(declare-fun b!6992078 () Bool)

(assert (=> b!6992078 (= e!4202689 (as set.empty (Set Context!12460)))))

(declare-fun b!6992079 () Bool)

(assert (=> b!6992079 (= e!4202688 (nullable!6994 (h!73571 (exprs!6730 lt!2488917))))))

(declare-fun b!6992080 () Bool)

(assert (=> b!6992080 (= e!4202690 (set.union call!634763 (derivationStepZipperUp!1884 (Context!12461 (t!380994 (exprs!6730 lt!2488917))) (h!73572 s!7408))))))

(assert (= (and d!2178151 res!2851701) b!6992079))

(assert (= (and d!2178151 c!1297036) b!6992080))

(assert (= (and d!2178151 (not c!1297036)) b!6992076))

(assert (= (and b!6992076 c!1297035) b!6992077))

(assert (= (and b!6992076 (not c!1297035)) b!6992078))

(assert (= (or b!6992080 b!6992077) bm!634758))

(declare-fun m!7681804 () Bool)

(assert (=> bm!634758 m!7681804))

(declare-fun m!7681806 () Bool)

(assert (=> b!6992079 m!7681806))

(declare-fun m!7681808 () Bool)

(assert (=> b!6992080 m!7681808))

(assert (=> b!6991951 d!2178151))

(declare-fun b!6992081 () Bool)

(declare-fun e!4202693 () (Set Context!12460))

(declare-fun e!4202692 () (Set Context!12460))

(assert (=> b!6992081 (= e!4202693 e!4202692)))

(declare-fun c!1297037 () Bool)

(assert (=> b!6992081 (= c!1297037 (is-Cons!67123 (exprs!6730 lt!2488910)))))

(declare-fun bm!634759 () Bool)

(declare-fun call!634764 () (Set Context!12460))

(assert (=> bm!634759 (= call!634764 (derivationStepZipperDown!1952 (h!73571 (exprs!6730 lt!2488910)) (Context!12461 (t!380994 (exprs!6730 lt!2488910))) (h!73572 s!7408)))))

(declare-fun b!6992082 () Bool)

(assert (=> b!6992082 (= e!4202692 call!634764)))

(declare-fun d!2178153 () Bool)

(declare-fun c!1297038 () Bool)

(declare-fun e!4202691 () Bool)

(assert (=> d!2178153 (= c!1297038 e!4202691)))

(declare-fun res!2851702 () Bool)

(assert (=> d!2178153 (=> (not res!2851702) (not e!4202691))))

(assert (=> d!2178153 (= res!2851702 (is-Cons!67123 (exprs!6730 lt!2488910)))))

(assert (=> d!2178153 (= (derivationStepZipperUp!1884 lt!2488910 (h!73572 s!7408)) e!4202693)))

(declare-fun b!6992083 () Bool)

(assert (=> b!6992083 (= e!4202692 (as set.empty (Set Context!12460)))))

(declare-fun b!6992084 () Bool)

(assert (=> b!6992084 (= e!4202691 (nullable!6994 (h!73571 (exprs!6730 lt!2488910))))))

(declare-fun b!6992085 () Bool)

(assert (=> b!6992085 (= e!4202693 (set.union call!634764 (derivationStepZipperUp!1884 (Context!12461 (t!380994 (exprs!6730 lt!2488910))) (h!73572 s!7408))))))

(assert (= (and d!2178153 res!2851702) b!6992084))

(assert (= (and d!2178153 c!1297038) b!6992085))

(assert (= (and d!2178153 (not c!1297038)) b!6992081))

(assert (= (and b!6992081 c!1297037) b!6992082))

(assert (= (and b!6992081 (not c!1297037)) b!6992083))

(assert (= (or b!6992085 b!6992082) bm!634759))

(declare-fun m!7681810 () Bool)

(assert (=> bm!634759 m!7681810))

(declare-fun m!7681812 () Bool)

(assert (=> b!6992084 m!7681812))

(declare-fun m!7681814 () Bool)

(assert (=> b!6992085 m!7681814))

(assert (=> b!6991932 d!2178153))

(declare-fun d!2178155 () Bool)

(assert (=> d!2178155 (= (flatMap!2220 lt!2488892 lambda!402572) (dynLambda!26938 lambda!402572 lt!2488910))))

(declare-fun lt!2489076 () Unit!161123)

(assert (=> d!2178155 (= lt!2489076 (choose!52320 lt!2488892 lt!2488910 lambda!402572))))

(assert (=> d!2178155 (= lt!2488892 (set.insert lt!2488910 (as set.empty (Set Context!12460))))))

(assert (=> d!2178155 (= (lemmaFlatMapOnSingletonSet!1735 lt!2488892 lt!2488910 lambda!402572) lt!2489076)))

(declare-fun b_lambda!262845 () Bool)

(assert (=> (not b_lambda!262845) (not d!2178155)))

(declare-fun bs!1862541 () Bool)

(assert (= bs!1862541 d!2178155))

(assert (=> bs!1862541 m!7681576))

(declare-fun m!7681816 () Bool)

(assert (=> bs!1862541 m!7681816))

(declare-fun m!7681818 () Bool)

(assert (=> bs!1862541 m!7681818))

(assert (=> bs!1862541 m!7681598))

(assert (=> b!6991932 d!2178155))

(assert (=> b!6991932 d!2178113))

(declare-fun d!2178157 () Bool)

(assert (=> d!2178157 (= (flatMap!2220 lt!2488892 lambda!402572) (choose!52319 lt!2488892 lambda!402572))))

(declare-fun bs!1862542 () Bool)

(assert (= bs!1862542 d!2178157))

(declare-fun m!7681820 () Bool)

(assert (=> bs!1862542 m!7681820))

(assert (=> b!6991932 d!2178157))

(declare-fun bs!1862543 () Bool)

(declare-fun d!2178159 () Bool)

(assert (= bs!1862543 (and d!2178159 b!6991932)))

(declare-fun lambda!402645 () Int)

(assert (=> bs!1862543 (= lambda!402645 lambda!402572)))

(declare-fun bs!1862544 () Bool)

(assert (= bs!1862544 (and d!2178159 d!2178145)))

(assert (=> bs!1862544 (= lambda!402645 lambda!402644)))

(assert (=> d!2178159 true))

(assert (=> d!2178159 (= (derivationStepZipper!2714 lt!2488892 (h!73572 s!7408)) (flatMap!2220 lt!2488892 lambda!402645))))

(declare-fun bs!1862545 () Bool)

(assert (= bs!1862545 d!2178159))

(declare-fun m!7681822 () Bool)

(assert (=> bs!1862545 m!7681822))

(assert (=> b!6991932 d!2178159))

(declare-fun d!2178161 () Bool)

(declare-fun c!1297039 () Bool)

(assert (=> d!2178161 (= c!1297039 (isEmpty!39178 (t!380995 s!7408)))))

(declare-fun e!4202694 () Bool)

(assert (=> d!2178161 (= (matchZipper!2774 lt!2488921 (t!380995 s!7408)) e!4202694)))

(declare-fun b!6992086 () Bool)

(assert (=> b!6992086 (= e!4202694 (nullableZipper!2445 lt!2488921))))

(declare-fun b!6992087 () Bool)

(assert (=> b!6992087 (= e!4202694 (matchZipper!2774 (derivationStepZipper!2714 lt!2488921 (head!14120 (t!380995 s!7408))) (tail!13254 (t!380995 s!7408))))))

(assert (= (and d!2178161 c!1297039) b!6992086))

(assert (= (and d!2178161 (not c!1297039)) b!6992087))

(declare-fun m!7681824 () Bool)

(assert (=> d!2178161 m!7681824))

(declare-fun m!7681826 () Bool)

(assert (=> b!6992086 m!7681826))

(declare-fun m!7681828 () Bool)

(assert (=> b!6992087 m!7681828))

(assert (=> b!6992087 m!7681828))

(declare-fun m!7681830 () Bool)

(assert (=> b!6992087 m!7681830))

(declare-fun m!7681832 () Bool)

(assert (=> b!6992087 m!7681832))

(assert (=> b!6992087 m!7681830))

(assert (=> b!6992087 m!7681832))

(declare-fun m!7681834 () Bool)

(assert (=> b!6992087 m!7681834))

(assert (=> b!6991934 d!2178161))

(assert (=> b!6991934 d!2178127))

(declare-fun d!2178163 () Bool)

(assert (=> d!2178163 (= (isEmpty!39176 (exprs!6730 lt!2488901)) (is-Nil!67123 (exprs!6730 lt!2488901)))))

(assert (=> b!6991935 d!2178163))

(assert (=> b!6991945 d!2178161))

(declare-fun d!2178165 () Bool)

(declare-fun c!1297040 () Bool)

(assert (=> d!2178165 (= c!1297040 (isEmpty!39178 s!7408))))

(declare-fun e!4202695 () Bool)

(assert (=> d!2178165 (= (matchZipper!2774 lt!2488919 s!7408) e!4202695)))

(declare-fun b!6992088 () Bool)

(assert (=> b!6992088 (= e!4202695 (nullableZipper!2445 lt!2488919))))

(declare-fun b!6992089 () Bool)

(assert (=> b!6992089 (= e!4202695 (matchZipper!2774 (derivationStepZipper!2714 lt!2488919 (head!14120 s!7408)) (tail!13254 s!7408)))))

(assert (= (and d!2178165 c!1297040) b!6992088))

(assert (= (and d!2178165 (not c!1297040)) b!6992089))

(assert (=> d!2178165 m!7681738))

(declare-fun m!7681836 () Bool)

(assert (=> b!6992088 m!7681836))

(assert (=> b!6992089 m!7681742))

(assert (=> b!6992089 m!7681742))

(declare-fun m!7681838 () Bool)

(assert (=> b!6992089 m!7681838))

(assert (=> b!6992089 m!7681746))

(assert (=> b!6992089 m!7681838))

(assert (=> b!6992089 m!7681746))

(declare-fun m!7681840 () Bool)

(assert (=> b!6992089 m!7681840))

(assert (=> b!6991937 d!2178165))

(declare-fun bs!1862546 () Bool)

(declare-fun d!2178167 () Bool)

(assert (= bs!1862546 (and d!2178167 b!6991937)))

(declare-fun lambda!402648 () Int)

(assert (=> bs!1862546 (= lambda!402648 lambda!402569)))

(assert (=> d!2178167 true))

(assert (=> d!2178167 (exists!3028 lt!2488918 lambda!402648)))

(declare-fun lt!2489079 () Unit!161123)

(declare-fun choose!52322 (List!67249 List!67248) Unit!161123)

(assert (=> d!2178167 (= lt!2489079 (choose!52322 lt!2488918 s!7408))))

(declare-fun content!13274 (List!67249) (Set Context!12460))

(assert (=> d!2178167 (matchZipper!2774 (content!13274 lt!2488918) s!7408)))

(assert (=> d!2178167 (= (lemmaZipperMatchesExistsMatchingContext!203 lt!2488918 s!7408) lt!2489079)))

(declare-fun bs!1862547 () Bool)

(assert (= bs!1862547 d!2178167))

(declare-fun m!7681842 () Bool)

(assert (=> bs!1862547 m!7681842))

(declare-fun m!7681844 () Bool)

(assert (=> bs!1862547 m!7681844))

(declare-fun m!7681846 () Bool)

(assert (=> bs!1862547 m!7681846))

(assert (=> bs!1862547 m!7681846))

(declare-fun m!7681848 () Bool)

(assert (=> bs!1862547 m!7681848))

(assert (=> b!6991937 d!2178167))

(declare-fun d!2178169 () Bool)

(declare-fun e!4202698 () Bool)

(assert (=> d!2178169 e!4202698))

(declare-fun res!2851705 () Bool)

(assert (=> d!2178169 (=> (not res!2851705) (not e!4202698))))

(declare-fun lt!2489082 () List!67249)

(declare-fun noDuplicate!2530 (List!67249) Bool)

(assert (=> d!2178169 (= res!2851705 (noDuplicate!2530 lt!2489082))))

(declare-fun choose!52323 ((Set Context!12460)) List!67249)

(assert (=> d!2178169 (= lt!2489082 (choose!52323 lt!2488900))))

(assert (=> d!2178169 (= (toList!10594 lt!2488900) lt!2489082)))

(declare-fun b!6992092 () Bool)

(assert (=> b!6992092 (= e!4202698 (= (content!13274 lt!2489082) lt!2488900))))

(assert (= (and d!2178169 res!2851705) b!6992092))

(declare-fun m!7681850 () Bool)

(assert (=> d!2178169 m!7681850))

(declare-fun m!7681852 () Bool)

(assert (=> d!2178169 m!7681852))

(declare-fun m!7681854 () Bool)

(assert (=> b!6992092 m!7681854))

(assert (=> b!6991937 d!2178169))

(declare-fun d!2178171 () Bool)

(declare-fun e!4202701 () Bool)

(assert (=> d!2178171 e!4202701))

(declare-fun res!2851708 () Bool)

(assert (=> d!2178171 (=> (not res!2851708) (not e!4202701))))

(declare-fun lt!2489085 () Context!12460)

(declare-fun dynLambda!26940 (Int Context!12460) Bool)

(assert (=> d!2178171 (= res!2851708 (dynLambda!26940 lambda!402569 lt!2489085))))

(declare-fun getWitness!1142 (List!67249 Int) Context!12460)

(assert (=> d!2178171 (= lt!2489085 (getWitness!1142 (toList!10594 lt!2488900) lambda!402569))))

(declare-fun exists!3030 ((Set Context!12460) Int) Bool)

(assert (=> d!2178171 (exists!3030 lt!2488900 lambda!402569)))

(assert (=> d!2178171 (= (getWitness!1140 lt!2488900 lambda!402569) lt!2489085)))

(declare-fun b!6992095 () Bool)

(assert (=> b!6992095 (= e!4202701 (set.member lt!2489085 lt!2488900))))

(assert (= (and d!2178171 res!2851708) b!6992095))

(declare-fun b_lambda!262847 () Bool)

(assert (=> (not b_lambda!262847) (not d!2178171)))

(declare-fun m!7681856 () Bool)

(assert (=> d!2178171 m!7681856))

(assert (=> d!2178171 m!7681566))

(assert (=> d!2178171 m!7681566))

(declare-fun m!7681858 () Bool)

(assert (=> d!2178171 m!7681858))

(declare-fun m!7681860 () Bool)

(assert (=> d!2178171 m!7681860))

(declare-fun m!7681862 () Bool)

(assert (=> b!6992095 m!7681862))

(assert (=> b!6991937 d!2178171))

(declare-fun bs!1862548 () Bool)

(declare-fun d!2178173 () Bool)

(assert (= bs!1862548 (and d!2178173 b!6991937)))

(declare-fun lambda!402651 () Int)

(assert (=> bs!1862548 (not (= lambda!402651 lambda!402569))))

(declare-fun bs!1862549 () Bool)

(assert (= bs!1862549 (and d!2178173 d!2178167)))

(assert (=> bs!1862549 (not (= lambda!402651 lambda!402648))))

(assert (=> d!2178173 true))

(declare-fun order!27941 () Int)

(declare-fun dynLambda!26941 (Int Int) Int)

(assert (=> d!2178173 (< (dynLambda!26941 order!27941 lambda!402569) (dynLambda!26941 order!27941 lambda!402651))))

(declare-fun forall!16155 (List!67249 Int) Bool)

(assert (=> d!2178173 (= (exists!3028 lt!2488918 lambda!402569) (not (forall!16155 lt!2488918 lambda!402651)))))

(declare-fun bs!1862550 () Bool)

(assert (= bs!1862550 d!2178173))

(declare-fun m!7681864 () Bool)

(assert (=> bs!1862550 m!7681864))

(assert (=> b!6991937 d!2178173))

(declare-fun d!2178175 () Bool)

(declare-fun c!1297043 () Bool)

(assert (=> d!2178175 (= c!1297043 (isEmpty!39178 s!7408))))

(declare-fun e!4202702 () Bool)

(assert (=> d!2178175 (= (matchZipper!2774 lt!2488885 s!7408) e!4202702)))

(declare-fun b!6992098 () Bool)

(assert (=> b!6992098 (= e!4202702 (nullableZipper!2445 lt!2488885))))

(declare-fun b!6992099 () Bool)

(assert (=> b!6992099 (= e!4202702 (matchZipper!2774 (derivationStepZipper!2714 lt!2488885 (head!14120 s!7408)) (tail!13254 s!7408)))))

(assert (= (and d!2178175 c!1297043) b!6992098))

(assert (= (and d!2178175 (not c!1297043)) b!6992099))

(assert (=> d!2178175 m!7681738))

(declare-fun m!7681866 () Bool)

(assert (=> b!6992098 m!7681866))

(assert (=> b!6992099 m!7681742))

(assert (=> b!6992099 m!7681742))

(declare-fun m!7681868 () Bool)

(assert (=> b!6992099 m!7681868))

(assert (=> b!6992099 m!7681746))

(assert (=> b!6992099 m!7681868))

(assert (=> b!6992099 m!7681746))

(declare-fun m!7681870 () Bool)

(assert (=> b!6992099 m!7681870))

(assert (=> b!6991936 d!2178175))

(assert (=> b!6991936 d!2178127))

(assert (=> b!6991946 d!2178113))

(assert (=> b!6991948 d!2178151))

(assert (=> b!6991948 d!2178127))

(assert (=> b!6991948 d!2178137))

(declare-fun b!6992122 () Bool)

(declare-fun e!4202715 () Bool)

(assert (=> b!6992122 (= e!4202715 (nullable!6994 (regOne!34980 (h!73571 (exprs!6730 lt!2488901)))))))

(declare-fun b!6992123 () Bool)

(declare-fun e!4202718 () (Set Context!12460))

(declare-fun call!634779 () (Set Context!12460))

(assert (=> b!6992123 (= e!4202718 call!634779)))

(declare-fun bm!634772 () Bool)

(declare-fun call!634782 () (Set Context!12460))

(declare-fun call!634778 () (Set Context!12460))

(assert (=> bm!634772 (= call!634782 call!634778)))

(declare-fun b!6992124 () Bool)

(declare-fun e!4202719 () (Set Context!12460))

(declare-fun e!4202716 () (Set Context!12460))

(assert (=> b!6992124 (= e!4202719 e!4202716)))

(declare-fun c!1297058 () Bool)

(assert (=> b!6992124 (= c!1297058 (is-Union!17234 (h!73571 (exprs!6730 lt!2488901))))))

(declare-fun b!6992125 () Bool)

(declare-fun e!4202717 () (Set Context!12460))

(assert (=> b!6992125 (= e!4202717 call!634779)))

(declare-fun b!6992126 () Bool)

(assert (=> b!6992126 (= e!4202719 (set.insert lt!2488917 (as set.empty (Set Context!12460))))))

(declare-fun b!6992127 () Bool)

(declare-fun call!634780 () (Set Context!12460))

(assert (=> b!6992127 (= e!4202716 (set.union call!634778 call!634780))))

(declare-fun b!6992128 () Bool)

(declare-fun c!1297057 () Bool)

(assert (=> b!6992128 (= c!1297057 e!4202715)))

(declare-fun res!2851711 () Bool)

(assert (=> b!6992128 (=> (not res!2851711) (not e!4202715))))

(assert (=> b!6992128 (= res!2851711 (is-Concat!26079 (h!73571 (exprs!6730 lt!2488901))))))

(declare-fun e!4202720 () (Set Context!12460))

(assert (=> b!6992128 (= e!4202716 e!4202720)))

(declare-fun call!634781 () List!67247)

(declare-fun bm!634774 () Bool)

(declare-fun c!1297055 () Bool)

(declare-fun $colon$colon!2491 (List!67247 Regex!17234) List!67247)

(assert (=> bm!634774 (= call!634781 ($colon$colon!2491 (exprs!6730 lt!2488917) (ite (or c!1297057 c!1297055) (regTwo!34980 (h!73571 (exprs!6730 lt!2488901))) (h!73571 (exprs!6730 lt!2488901)))))))

(declare-fun b!6992129 () Bool)

(assert (=> b!6992129 (= e!4202720 (set.union call!634780 call!634782))))

(declare-fun b!6992130 () Bool)

(declare-fun c!1297054 () Bool)

(assert (=> b!6992130 (= c!1297054 (is-Star!17234 (h!73571 (exprs!6730 lt!2488901))))))

(assert (=> b!6992130 (= e!4202718 e!4202717)))

(declare-fun b!6992131 () Bool)

(assert (=> b!6992131 (= e!4202717 (as set.empty (Set Context!12460)))))

(declare-fun b!6992132 () Bool)

(assert (=> b!6992132 (= e!4202720 e!4202718)))

(assert (=> b!6992132 (= c!1297055 (is-Concat!26079 (h!73571 (exprs!6730 lt!2488901))))))

(declare-fun bm!634775 () Bool)

(assert (=> bm!634775 (= call!634780 (derivationStepZipperDown!1952 (ite c!1297058 (regTwo!34981 (h!73571 (exprs!6730 lt!2488901))) (regOne!34980 (h!73571 (exprs!6730 lt!2488901)))) (ite c!1297058 lt!2488917 (Context!12461 call!634781)) (h!73572 s!7408)))))

(declare-fun bm!634776 () Bool)

(assert (=> bm!634776 (= call!634779 call!634782)))

(declare-fun call!634777 () List!67247)

(declare-fun bm!634777 () Bool)

(assert (=> bm!634777 (= call!634778 (derivationStepZipperDown!1952 (ite c!1297058 (regOne!34981 (h!73571 (exprs!6730 lt!2488901))) (ite c!1297057 (regTwo!34980 (h!73571 (exprs!6730 lt!2488901))) (ite c!1297055 (regOne!34980 (h!73571 (exprs!6730 lt!2488901))) (reg!17563 (h!73571 (exprs!6730 lt!2488901)))))) (ite (or c!1297058 c!1297057) lt!2488917 (Context!12461 call!634777)) (h!73572 s!7408)))))

(declare-fun d!2178177 () Bool)

(declare-fun c!1297056 () Bool)

(assert (=> d!2178177 (= c!1297056 (and (is-ElementMatch!17234 (h!73571 (exprs!6730 lt!2488901))) (= (c!1297003 (h!73571 (exprs!6730 lt!2488901))) (h!73572 s!7408))))))

(assert (=> d!2178177 (= (derivationStepZipperDown!1952 (h!73571 (exprs!6730 lt!2488901)) lt!2488917 (h!73572 s!7408)) e!4202719)))

(declare-fun bm!634773 () Bool)

(assert (=> bm!634773 (= call!634777 call!634781)))

(assert (= (and d!2178177 c!1297056) b!6992126))

(assert (= (and d!2178177 (not c!1297056)) b!6992124))

(assert (= (and b!6992124 c!1297058) b!6992127))

(assert (= (and b!6992124 (not c!1297058)) b!6992128))

(assert (= (and b!6992128 res!2851711) b!6992122))

(assert (= (and b!6992128 c!1297057) b!6992129))

(assert (= (and b!6992128 (not c!1297057)) b!6992132))

(assert (= (and b!6992132 c!1297055) b!6992123))

(assert (= (and b!6992132 (not c!1297055)) b!6992130))

(assert (= (and b!6992130 c!1297054) b!6992125))

(assert (= (and b!6992130 (not c!1297054)) b!6992131))

(assert (= (or b!6992123 b!6992125) bm!634773))

(assert (= (or b!6992123 b!6992125) bm!634776))

(assert (= (or b!6992129 bm!634776) bm!634772))

(assert (= (or b!6992129 bm!634773) bm!634774))

(assert (= (or b!6992127 bm!634772) bm!634777))

(assert (= (or b!6992127 b!6992129) bm!634775))

(declare-fun m!7681872 () Bool)

(assert (=> bm!634775 m!7681872))

(declare-fun m!7681874 () Bool)

(assert (=> bm!634777 m!7681874))

(declare-fun m!7681876 () Bool)

(assert (=> bm!634774 m!7681876))

(assert (=> b!6992126 m!7681604))

(declare-fun m!7681878 () Bool)

(assert (=> b!6992122 m!7681878))

(assert (=> b!6991948 d!2178177))

(assert (=> b!6991947 d!2178161))

(assert (=> b!6991947 d!2178127))

(declare-fun d!2178179 () Bool)

(declare-fun c!1297059 () Bool)

(assert (=> d!2178179 (= c!1297059 (isEmpty!39178 (t!380995 s!7408)))))

(declare-fun e!4202721 () Bool)

(assert (=> d!2178179 (= (matchZipper!2774 lt!2488924 (t!380995 s!7408)) e!4202721)))

(declare-fun b!6992133 () Bool)

(assert (=> b!6992133 (= e!4202721 (nullableZipper!2445 lt!2488924))))

(declare-fun b!6992134 () Bool)

(assert (=> b!6992134 (= e!4202721 (matchZipper!2774 (derivationStepZipper!2714 lt!2488924 (head!14120 (t!380995 s!7408))) (tail!13254 (t!380995 s!7408))))))

(assert (= (and d!2178179 c!1297059) b!6992133))

(assert (= (and d!2178179 (not c!1297059)) b!6992134))

(assert (=> d!2178179 m!7681824))

(declare-fun m!7681880 () Bool)

(assert (=> b!6992133 m!7681880))

(assert (=> b!6992134 m!7681828))

(assert (=> b!6992134 m!7681828))

(declare-fun m!7681882 () Bool)

(assert (=> b!6992134 m!7681882))

(assert (=> b!6992134 m!7681832))

(assert (=> b!6992134 m!7681882))

(assert (=> b!6992134 m!7681832))

(declare-fun m!7681884 () Bool)

(assert (=> b!6992134 m!7681884))

(assert (=> b!6991949 d!2178179))

(assert (=> b!6991949 d!2178127))

(declare-fun d!2178181 () Bool)

(declare-fun e!4202724 () Bool)

(assert (=> d!2178181 (= (matchZipper!2774 (set.union lt!2488902 lt!2488921) (t!380995 s!7408)) e!4202724)))

(declare-fun res!2851714 () Bool)

(assert (=> d!2178181 (=> res!2851714 e!4202724)))

(assert (=> d!2178181 (= res!2851714 (matchZipper!2774 lt!2488902 (t!380995 s!7408)))))

(declare-fun lt!2489088 () Unit!161123)

(declare-fun choose!52324 ((Set Context!12460) (Set Context!12460) List!67248) Unit!161123)

(assert (=> d!2178181 (= lt!2489088 (choose!52324 lt!2488902 lt!2488921 (t!380995 s!7408)))))

(assert (=> d!2178181 (= (lemmaZipperConcatMatchesSameAsBothZippers!1407 lt!2488902 lt!2488921 (t!380995 s!7408)) lt!2489088)))

(declare-fun b!6992137 () Bool)

(assert (=> b!6992137 (= e!4202724 (matchZipper!2774 lt!2488921 (t!380995 s!7408)))))

(assert (= (and d!2178181 (not res!2851714)) b!6992137))

(declare-fun m!7681886 () Bool)

(assert (=> d!2178181 m!7681886))

(assert (=> d!2178181 m!7681612))

(declare-fun m!7681888 () Bool)

(assert (=> d!2178181 m!7681888))

(assert (=> b!6992137 m!7681574))

(assert (=> b!6991949 d!2178181))

(declare-fun d!2178183 () Bool)

(declare-fun c!1297060 () Bool)

(assert (=> d!2178183 (= c!1297060 (isEmpty!39178 (t!380995 s!7408)))))

(declare-fun e!4202725 () Bool)

(assert (=> d!2178183 (= (matchZipper!2774 lt!2488903 (t!380995 s!7408)) e!4202725)))

(declare-fun b!6992138 () Bool)

(assert (=> b!6992138 (= e!4202725 (nullableZipper!2445 lt!2488903))))

(declare-fun b!6992139 () Bool)

(assert (=> b!6992139 (= e!4202725 (matchZipper!2774 (derivationStepZipper!2714 lt!2488903 (head!14120 (t!380995 s!7408))) (tail!13254 (t!380995 s!7408))))))

(assert (= (and d!2178183 c!1297060) b!6992138))

(assert (= (and d!2178183 (not c!1297060)) b!6992139))

(assert (=> d!2178183 m!7681824))

(declare-fun m!7681890 () Bool)

(assert (=> b!6992138 m!7681890))

(assert (=> b!6992139 m!7681828))

(assert (=> b!6992139 m!7681828))

(declare-fun m!7681892 () Bool)

(assert (=> b!6992139 m!7681892))

(assert (=> b!6992139 m!7681832))

(assert (=> b!6992139 m!7681892))

(assert (=> b!6992139 m!7681832))

(declare-fun m!7681894 () Bool)

(assert (=> b!6992139 m!7681894))

(assert (=> b!6991949 d!2178183))

(declare-fun d!2178185 () Bool)

(declare-fun c!1297061 () Bool)

(assert (=> d!2178185 (= c!1297061 (isEmpty!39178 (t!380995 s!7408)))))

(declare-fun e!4202726 () Bool)

(assert (=> d!2178185 (= (matchZipper!2774 lt!2488902 (t!380995 s!7408)) e!4202726)))

(declare-fun b!6992140 () Bool)

(assert (=> b!6992140 (= e!4202726 (nullableZipper!2445 lt!2488902))))

(declare-fun b!6992141 () Bool)

(assert (=> b!6992141 (= e!4202726 (matchZipper!2774 (derivationStepZipper!2714 lt!2488902 (head!14120 (t!380995 s!7408))) (tail!13254 (t!380995 s!7408))))))

(assert (= (and d!2178185 c!1297061) b!6992140))

(assert (= (and d!2178185 (not c!1297061)) b!6992141))

(assert (=> d!2178185 m!7681824))

(declare-fun m!7681896 () Bool)

(assert (=> b!6992140 m!7681896))

(assert (=> b!6992141 m!7681828))

(assert (=> b!6992141 m!7681828))

(declare-fun m!7681898 () Bool)

(assert (=> b!6992141 m!7681898))

(assert (=> b!6992141 m!7681832))

(assert (=> b!6992141 m!7681898))

(assert (=> b!6992141 m!7681832))

(declare-fun m!7681900 () Bool)

(assert (=> b!6992141 m!7681900))

(assert (=> b!6991949 d!2178185))

(declare-fun b!6992146 () Bool)

(declare-fun e!4202729 () Bool)

(declare-fun tp!1930077 () Bool)

(assert (=> b!6992146 (= e!4202729 (and tp_is_empty!43693 tp!1930077))))

(assert (=> b!6991950 (= tp!1930061 e!4202729)))

(assert (= (and b!6991950 (is-Cons!67124 (t!380995 s!7408))) b!6992146))

(declare-fun condSetEmpty!47892 () Bool)

(assert (=> setNonEmpty!47886 (= condSetEmpty!47892 (= setRest!47886 (as set.empty (Set Context!12460))))))

(declare-fun setRes!47892 () Bool)

(assert (=> setNonEmpty!47886 (= tp!1930060 setRes!47892)))

(declare-fun setIsEmpty!47892 () Bool)

(assert (=> setIsEmpty!47892 setRes!47892))

(declare-fun setNonEmpty!47892 () Bool)

(declare-fun setElem!47892 () Context!12460)

(declare-fun e!4202732 () Bool)

(declare-fun tp!1930082 () Bool)

(assert (=> setNonEmpty!47892 (= setRes!47892 (and tp!1930082 (inv!85945 setElem!47892) e!4202732))))

(declare-fun setRest!47892 () (Set Context!12460))

(assert (=> setNonEmpty!47892 (= setRest!47886 (set.union (set.insert setElem!47892 (as set.empty (Set Context!12460))) setRest!47892))))

(declare-fun b!6992151 () Bool)

(declare-fun tp!1930083 () Bool)

(assert (=> b!6992151 (= e!4202732 tp!1930083)))

(assert (= (and setNonEmpty!47886 condSetEmpty!47892) setIsEmpty!47892))

(assert (= (and setNonEmpty!47886 (not condSetEmpty!47892)) setNonEmpty!47892))

(assert (= setNonEmpty!47892 b!6992151))

(declare-fun m!7681902 () Bool)

(assert (=> setNonEmpty!47892 m!7681902))

(declare-fun b!6992156 () Bool)

(declare-fun e!4202735 () Bool)

(declare-fun tp!1930088 () Bool)

(declare-fun tp!1930089 () Bool)

(assert (=> b!6992156 (= e!4202735 (and tp!1930088 tp!1930089))))

(assert (=> b!6991938 (= tp!1930062 e!4202735)))

(assert (= (and b!6991938 (is-Cons!67123 (exprs!6730 setElem!47886))) b!6992156))

(declare-fun b!6992157 () Bool)

(declare-fun e!4202736 () Bool)

(declare-fun tp!1930090 () Bool)

(declare-fun tp!1930091 () Bool)

(assert (=> b!6992157 (= e!4202736 (and tp!1930090 tp!1930091))))

(assert (=> b!6991939 (= tp!1930059 e!4202736)))

(assert (= (and b!6991939 (is-Cons!67123 (exprs!6730 ct2!306))) b!6992157))

(declare-fun b_lambda!262849 () Bool)

(assert (= b_lambda!262841 (or b!6991931 b_lambda!262849)))

(declare-fun bs!1862551 () Bool)

(declare-fun d!2178187 () Bool)

(assert (= bs!1862551 (and d!2178187 b!6991931)))

(declare-fun validRegex!8866 (Regex!17234) Bool)

(assert (=> bs!1862551 (= (dynLambda!26939 lambda!402571 (h!73571 lt!2488894)) (validRegex!8866 (h!73571 lt!2488894)))))

(declare-fun m!7681904 () Bool)

(assert (=> bs!1862551 m!7681904))

(assert (=> b!6992053 d!2178187))

(declare-fun b_lambda!262851 () Bool)

(assert (= b_lambda!262845 (or b!6991932 b_lambda!262851)))

(declare-fun bs!1862552 () Bool)

(declare-fun d!2178189 () Bool)

(assert (= bs!1862552 (and d!2178189 b!6991932)))

(assert (=> bs!1862552 (= (dynLambda!26938 lambda!402572 lt!2488910) (derivationStepZipperUp!1884 lt!2488910 (h!73572 s!7408)))))

(assert (=> bs!1862552 m!7681580))

(assert (=> d!2178155 d!2178189))

(declare-fun b_lambda!262853 () Bool)

(assert (= b_lambda!262839 (or b!6991932 b_lambda!262853)))

(declare-fun bs!1862553 () Bool)

(declare-fun d!2178191 () Bool)

(assert (= bs!1862553 (and d!2178191 b!6991932)))

(assert (=> bs!1862553 (= (dynLambda!26938 lambda!402572 lt!2488906) (derivationStepZipperUp!1884 lt!2488906 (h!73572 s!7408)))))

(assert (=> bs!1862553 m!7681550))

(assert (=> d!2178129 d!2178191))

(declare-fun b_lambda!262855 () Bool)

(assert (= b_lambda!262843 (or b!6991932 b_lambda!262855)))

(declare-fun bs!1862554 () Bool)

(declare-fun d!2178193 () Bool)

(assert (= bs!1862554 (and d!2178193 b!6991932)))

(assert (=> bs!1862554 (= (dynLambda!26938 lambda!402572 lt!2488917) (derivationStepZipperUp!1884 lt!2488917 (h!73572 s!7408)))))

(assert (=> bs!1862554 m!7681560))

(assert (=> d!2178147 d!2178193))

(declare-fun b_lambda!262857 () Bool)

(assert (= b_lambda!262835 (or b!6991931 b_lambda!262857)))

(declare-fun bs!1862555 () Bool)

(declare-fun d!2178195 () Bool)

(assert (= bs!1862555 (and d!2178195 b!6991931)))

(declare-fun lt!2489089 () Unit!161123)

(assert (=> bs!1862555 (= lt!2489089 (lemmaConcatPreservesForall!570 (exprs!6730 lt!2489064) (exprs!6730 ct2!306) lambda!402571))))

(assert (=> bs!1862555 (= (dynLambda!26937 lambda!402570 lt!2489064) (Context!12461 (++!15179 (exprs!6730 lt!2489064) (exprs!6730 ct2!306))))))

(declare-fun m!7681906 () Bool)

(assert (=> bs!1862555 m!7681906))

(declare-fun m!7681908 () Bool)

(assert (=> bs!1862555 m!7681908))

(assert (=> d!2178115 d!2178195))

(declare-fun b_lambda!262859 () Bool)

(assert (= b_lambda!262837 (or b!6991931 b_lambda!262859)))

(declare-fun bs!1862556 () Bool)

(declare-fun d!2178197 () Bool)

(assert (= bs!1862556 (and d!2178197 b!6991931)))

(declare-fun lt!2489090 () Unit!161123)

(assert (=> bs!1862556 (= lt!2489090 (lemmaConcatPreservesForall!570 (exprs!6730 lt!2488906) (exprs!6730 ct2!306) lambda!402571))))

(assert (=> bs!1862556 (= (dynLambda!26937 lambda!402570 lt!2488906) (Context!12461 (++!15179 (exprs!6730 lt!2488906) (exprs!6730 ct2!306))))))

(declare-fun m!7681910 () Bool)

(assert (=> bs!1862556 m!7681910))

(declare-fun m!7681912 () Bool)

(assert (=> bs!1862556 m!7681912))

(assert (=> d!2178123 d!2178197))

(declare-fun b_lambda!262861 () Bool)

(assert (= b_lambda!262847 (or b!6991937 b_lambda!262861)))

(declare-fun bs!1862557 () Bool)

(declare-fun d!2178199 () Bool)

(assert (= bs!1862557 (and d!2178199 b!6991937)))

(assert (=> bs!1862557 (= (dynLambda!26940 lambda!402569 lt!2489085) (matchZipper!2774 (set.insert lt!2489085 (as set.empty (Set Context!12460))) s!7408))))

(declare-fun m!7681914 () Bool)

(assert (=> bs!1862557 m!7681914))

(assert (=> bs!1862557 m!7681914))

(declare-fun m!7681916 () Bool)

(assert (=> bs!1862557 m!7681916))

(assert (=> d!2178171 d!2178199))

(push 1)

(assert (not b!6992069))

(assert (not d!2178155))

(assert (not d!2178149))

(assert (not b!6992139))

(assert (not b!6992133))

(assert (not b!6992146))

(assert (not d!2178117))

(assert (not bm!634758))

(assert (not bs!1862552))

(assert (not d!2178143))

(assert (not b!6992086))

(assert (not d!2178173))

(assert (not d!2178129))

(assert (not b!6992138))

(assert (not b!6992047))

(assert (not b_lambda!262855))

(assert (not bs!1862556))

(assert (not b!6992088))

(assert (not d!2178123))

(assert (not d!2178185))

(assert (not d!2178165))

(assert (not d!2178115))

(assert (not d!2178139))

(assert (not b!6992151))

(assert (not d!2178147))

(assert (not d!2178125))

(assert (not d!2178159))

(assert (not bs!1862551))

(assert (not b!6992157))

(assert (not bm!634775))

(assert (not b_lambda!262859))

(assert (not bs!1862555))

(assert (not b_lambda!262857))

(assert (not b_lambda!262861))

(assert (not bm!634757))

(assert (not d!2178169))

(assert (not bm!634774))

(assert (not d!2178127))

(assert (not b!6992156))

(assert (not setNonEmpty!47892))

(assert (not b!6992089))

(assert tp_is_empty!43693)

(assert (not d!2178161))

(assert (not d!2178111))

(assert (not b!6992054))

(assert (not d!2178171))

(assert (not b!6992087))

(assert (not b!6992071))

(assert (not b!6992134))

(assert (not bs!1862557))

(assert (not b_lambda!262853))

(assert (not d!2178137))

(assert (not b!6992140))

(assert (not b!6992079))

(assert (not bm!634759))

(assert (not b!6992092))

(assert (not d!2178119))

(assert (not bs!1862553))

(assert (not d!2178113))

(assert (not d!2178181))

(assert (not bs!1862554))

(assert (not b!6992036))

(assert (not b!6992137))

(assert (not b!6992099))

(assert (not d!2178121))

(assert (not b!6992098))

(assert (not b!6992072))

(assert (not d!2178179))

(assert (not bm!634777))

(assert (not d!2178167))

(assert (not b!6992080))

(assert (not d!2178183))

(assert (not b!6992122))

(assert (not d!2178135))

(assert (not b_lambda!262849))

(assert (not b!6992048))

(assert (not d!2178157))

(assert (not b!6992141))

(assert (not b!6992068))

(assert (not d!2178145))

(assert (not b!6992037))

(assert (not b!6992084))

(assert (not b_lambda!262851))

(assert (not d!2178175))

(assert (not b!6992085))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

