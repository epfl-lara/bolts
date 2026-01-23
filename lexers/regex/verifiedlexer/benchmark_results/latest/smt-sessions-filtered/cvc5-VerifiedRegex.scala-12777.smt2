; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!706570 () Bool)

(assert start!706570)

(declare-fun b!7255825 () Bool)

(assert (=> b!7255825 true))

(declare-fun b!7255823 () Bool)

(assert (=> b!7255823 true))

(declare-fun b!7255818 () Bool)

(declare-fun e!4350757 () Bool)

(declare-fun e!4350752 () Bool)

(assert (=> b!7255818 (= e!4350757 e!4350752)))

(declare-fun res!2942419 () Bool)

(assert (=> b!7255818 (=> res!2942419 e!4350752)))

(declare-datatypes ((C!37598 0))(
  ( (C!37599 (val!28747 Int)) )
))
(declare-datatypes ((Regex!18662 0))(
  ( (ElementMatch!18662 (c!1349083 C!37598)) (Concat!27507 (regOne!37836 Regex!18662) (regTwo!37836 Regex!18662)) (EmptyExpr!18662) (Star!18662 (reg!18991 Regex!18662)) (EmptyLang!18662) (Union!18662 (regOne!37837 Regex!18662) (regTwo!37837 Regex!18662)) )
))
(declare-datatypes ((List!70566 0))(
  ( (Nil!70442) (Cons!70442 (h!76890 Regex!18662) (t!384630 List!70566)) )
))
(declare-datatypes ((Context!15204 0))(
  ( (Context!15205 (exprs!8102 List!70566)) )
))
(declare-fun ct1!232 () Context!15204)

(declare-fun isEmpty!40566 (List!70566) Bool)

(assert (=> b!7255818 (= res!2942419 (isEmpty!40566 (exprs!8102 ct1!232)))))

(declare-fun lt!2586979 () (Set Context!15204))

(declare-datatypes ((List!70567 0))(
  ( (Nil!70443) (Cons!70443 (h!76891 C!37598) (t!384631 List!70567)) )
))
(declare-fun s1!1971 () List!70567)

(declare-fun derivationStepZipperUp!2486 (Context!15204 C!37598) (Set Context!15204))

(assert (=> b!7255818 (= lt!2586979 (derivationStepZipperUp!2486 ct1!232 (h!76891 s1!1971)))))

(declare-datatypes ((Unit!163916 0))(
  ( (Unit!163917) )
))
(declare-fun lt!2586969 () Unit!163916)

(declare-fun lt!2586976 () Context!15204)

(declare-fun lambda!445072 () Int)

(declare-fun ct2!328 () Context!15204)

(declare-fun lemmaConcatPreservesForall!1469 (List!70566 List!70566 Int) Unit!163916)

(assert (=> b!7255818 (= lt!2586969 (lemmaConcatPreservesForall!1469 (exprs!8102 lt!2586976) (exprs!8102 ct2!328) lambda!445072))))

(declare-fun lt!2586983 () List!70566)

(declare-fun lt!2586961 () List!70567)

(declare-fun matchZipper!3572 ((Set Context!15204) List!70567) Bool)

(assert (=> b!7255818 (matchZipper!3572 (set.insert (Context!15205 lt!2586983) (as set.empty (Set Context!15204))) lt!2586961)))

(declare-fun s2!1849 () List!70567)

(declare-fun ++!16586 (List!70567 List!70567) List!70567)

(assert (=> b!7255818 (= lt!2586961 (++!16586 (t!384631 s1!1971) s2!1849))))

(declare-fun ++!16587 (List!70566 List!70566) List!70566)

(assert (=> b!7255818 (= lt!2586983 (++!16587 (exprs!8102 lt!2586976) (exprs!8102 ct2!328)))))

(declare-fun lt!2586981 () Unit!163916)

(assert (=> b!7255818 (= lt!2586981 (lemmaConcatPreservesForall!1469 (exprs!8102 lt!2586976) (exprs!8102 ct2!328) lambda!445072))))

(declare-fun lt!2586977 () Unit!163916)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!407 (Context!15204 Context!15204 List!70567 List!70567) Unit!163916)

(assert (=> b!7255818 (= lt!2586977 (lemmaConcatenateContextMatchesConcatOfStrings!407 lt!2586976 ct2!328 (t!384631 s1!1971) s2!1849))))

(declare-fun lt!2586984 () (Set Context!15204))

(declare-fun lambda!445073 () Int)

(declare-fun getWitness!2231 ((Set Context!15204) Int) Context!15204)

(assert (=> b!7255818 (= lt!2586976 (getWitness!2231 lt!2586984 lambda!445073))))

(declare-fun b!7255819 () Bool)

(declare-fun e!4350750 () Bool)

(declare-fun e!4350756 () Bool)

(assert (=> b!7255819 (= e!4350750 e!4350756)))

(declare-fun res!2942416 () Bool)

(assert (=> b!7255819 (=> (not res!2942416) (not e!4350756))))

(assert (=> b!7255819 (= res!2942416 (matchZipper!3572 lt!2586984 (t!384631 s1!1971)))))

(declare-fun lt!2586982 () (Set Context!15204))

(declare-fun derivationStepZipper!3440 ((Set Context!15204) C!37598) (Set Context!15204))

(assert (=> b!7255819 (= lt!2586984 (derivationStepZipper!3440 lt!2586982 (h!76891 s1!1971)))))

(declare-fun b!7255820 () Bool)

(declare-fun e!4350758 () Bool)

(assert (=> b!7255820 (= e!4350758 e!4350750)))

(declare-fun res!2942415 () Bool)

(assert (=> b!7255820 (=> (not res!2942415) (not e!4350750))))

(assert (=> b!7255820 (= res!2942415 (and (not (is-Nil!70442 (exprs!8102 ct1!232))) (is-Cons!70443 s1!1971)))))

(declare-fun lt!2586987 () (Set Context!15204))

(declare-fun lt!2586973 () Context!15204)

(assert (=> b!7255820 (= lt!2586987 (set.insert lt!2586973 (as set.empty (Set Context!15204))))))

(declare-fun lt!2586967 () List!70566)

(assert (=> b!7255820 (= lt!2586973 (Context!15205 lt!2586967))))

(assert (=> b!7255820 (= lt!2586967 (++!16587 (exprs!8102 ct1!232) (exprs!8102 ct2!328)))))

(declare-fun lt!2586971 () Unit!163916)

(assert (=> b!7255820 (= lt!2586971 (lemmaConcatPreservesForall!1469 (exprs!8102 ct1!232) (exprs!8102 ct2!328) lambda!445072))))

(declare-fun b!7255821 () Bool)

(declare-fun e!4350754 () Bool)

(declare-fun tp!2038158 () Bool)

(assert (=> b!7255821 (= e!4350754 tp!2038158)))

(declare-fun b!7255822 () Bool)

(declare-fun e!4350760 () Unit!163916)

(declare-fun Unit!163918 () Unit!163916)

(assert (=> b!7255822 (= e!4350760 Unit!163918)))

(declare-fun e!4350759 () Bool)

(declare-fun tail!14348 (List!70567) List!70567)

(assert (=> b!7255823 (= e!4350759 (= (tail!14348 (++!16586 s1!1971 s2!1849)) lt!2586961))))

(declare-fun lt!2586991 () Unit!163916)

(assert (=> b!7255823 (= lt!2586991 e!4350760)))

(declare-fun c!1349082 () Bool)

(declare-fun nullable!7922 (Regex!18662) Bool)

(assert (=> b!7255823 (= c!1349082 (nullable!7922 (h!76890 (exprs!8102 ct1!232))))))

(declare-fun lambda!445074 () Int)

(declare-fun flatMap!2827 ((Set Context!15204) Int) (Set Context!15204))

(assert (=> b!7255823 (= (flatMap!2827 lt!2586987 lambda!445074) (derivationStepZipperUp!2486 lt!2586973 (h!76891 s1!1971)))))

(declare-fun lt!2586978 () Unit!163916)

(declare-fun lemmaFlatMapOnSingletonSet!2231 ((Set Context!15204) Context!15204 Int) Unit!163916)

(assert (=> b!7255823 (= lt!2586978 (lemmaFlatMapOnSingletonSet!2231 lt!2586987 lt!2586973 lambda!445074))))

(declare-fun lt!2586966 () Unit!163916)

(assert (=> b!7255823 (= lt!2586966 (lemmaConcatPreservesForall!1469 (exprs!8102 ct1!232) (exprs!8102 ct2!328) lambda!445072))))

(assert (=> b!7255823 (= (flatMap!2827 lt!2586982 lambda!445074) (derivationStepZipperUp!2486 ct1!232 (h!76891 s1!1971)))))

(declare-fun lt!2586985 () Unit!163916)

(assert (=> b!7255823 (= lt!2586985 (lemmaFlatMapOnSingletonSet!2231 lt!2586982 ct1!232 lambda!445074))))

(declare-fun lt!2586963 () Context!15204)

(declare-fun lt!2586990 () (Set Context!15204))

(declare-fun derivationStepZipperDown!2656 (Regex!18662 Context!15204 C!37598) (Set Context!15204))

(assert (=> b!7255823 (= lt!2586990 (derivationStepZipperDown!2656 (h!76890 (exprs!8102 ct1!232)) lt!2586963 (h!76891 s1!1971)))))

(declare-fun tail!14349 (List!70566) List!70566)

(assert (=> b!7255823 (= lt!2586963 (Context!15205 (tail!14349 lt!2586967)))))

(declare-fun b!7255824 () Bool)

(declare-fun e!4350751 () Bool)

(declare-fun lt!2586964 () (Set Context!15204))

(assert (=> b!7255824 (= e!4350751 (matchZipper!3572 lt!2586964 lt!2586961))))

(assert (=> b!7255825 (= e!4350756 (not e!4350757))))

(declare-fun res!2942414 () Bool)

(assert (=> b!7255825 (=> res!2942414 e!4350757)))

(declare-fun exists!4402 ((Set Context!15204) Int) Bool)

(assert (=> b!7255825 (= res!2942414 (not (exists!4402 lt!2586984 lambda!445073)))))

(declare-datatypes ((List!70568 0))(
  ( (Nil!70444) (Cons!70444 (h!76892 Context!15204) (t!384632 List!70568)) )
))
(declare-fun lt!2586986 () List!70568)

(declare-fun exists!4403 (List!70568 Int) Bool)

(assert (=> b!7255825 (exists!4403 lt!2586986 lambda!445073)))

(declare-fun lt!2586974 () Unit!163916)

(declare-fun lemmaZipperMatchesExistsMatchingContext!765 (List!70568 List!70567) Unit!163916)

(assert (=> b!7255825 (= lt!2586974 (lemmaZipperMatchesExistsMatchingContext!765 lt!2586986 (t!384631 s1!1971)))))

(declare-fun toList!11491 ((Set Context!15204)) List!70568)

(assert (=> b!7255825 (= lt!2586986 (toList!11491 lt!2586984))))

(declare-fun res!2942418 () Bool)

(assert (=> start!706570 (=> (not res!2942418) (not e!4350758))))

(assert (=> start!706570 (= res!2942418 (matchZipper!3572 lt!2586982 s1!1971))))

(assert (=> start!706570 (= lt!2586982 (set.insert ct1!232 (as set.empty (Set Context!15204))))))

(assert (=> start!706570 e!4350758))

(declare-fun inv!89666 (Context!15204) Bool)

(assert (=> start!706570 (and (inv!89666 ct1!232) e!4350754)))

(declare-fun e!4350762 () Bool)

(assert (=> start!706570 e!4350762))

(declare-fun e!4350755 () Bool)

(assert (=> start!706570 e!4350755))

(declare-fun e!4350761 () Bool)

(assert (=> start!706570 (and (inv!89666 ct2!328) e!4350761)))

(declare-fun b!7255826 () Bool)

(declare-fun e!4350753 () Bool)

(declare-fun lt!2586980 () (Set Context!15204))

(assert (=> b!7255826 (= e!4350753 (matchZipper!3572 lt!2586980 (t!384631 s1!1971)))))

(declare-fun b!7255827 () Bool)

(declare-fun res!2942420 () Bool)

(assert (=> b!7255827 (=> (not res!2942420) (not e!4350758))))

(assert (=> b!7255827 (= res!2942420 (matchZipper!3572 (set.insert ct2!328 (as set.empty (Set Context!15204))) s2!1849))))

(declare-fun b!7255828 () Bool)

(declare-fun Unit!163919 () Unit!163916)

(assert (=> b!7255828 (= e!4350760 Unit!163919)))

(declare-fun lt!2586975 () Unit!163916)

(assert (=> b!7255828 (= lt!2586975 (lemmaConcatPreservesForall!1469 (exprs!8102 ct1!232) (exprs!8102 ct2!328) lambda!445072))))

(declare-fun lt!2586965 () Context!15204)

(assert (=> b!7255828 (= lt!2586980 (derivationStepZipperUp!2486 lt!2586965 (h!76891 s1!1971)))))

(declare-fun lt!2586968 () Unit!163916)

(declare-fun lt!2586970 () (Set Context!15204))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1717 ((Set Context!15204) (Set Context!15204) List!70567) Unit!163916)

(assert (=> b!7255828 (= lt!2586968 (lemmaZipperConcatMatchesSameAsBothZippers!1717 lt!2586970 lt!2586980 (t!384631 s1!1971)))))

(declare-fun res!2942413 () Bool)

(assert (=> b!7255828 (= res!2942413 (matchZipper!3572 lt!2586970 (t!384631 s1!1971)))))

(assert (=> b!7255828 (=> res!2942413 e!4350753)))

(assert (=> b!7255828 (= (matchZipper!3572 (set.union lt!2586970 lt!2586980) (t!384631 s1!1971)) e!4350753)))

(declare-fun lt!2586988 () Unit!163916)

(assert (=> b!7255828 (= lt!2586988 (lemmaConcatPreservesForall!1469 (exprs!8102 ct1!232) (exprs!8102 ct2!328) lambda!445072))))

(assert (=> b!7255828 (= lt!2586964 (derivationStepZipperUp!2486 lt!2586963 (h!76891 s1!1971)))))

(declare-fun lt!2586972 () Unit!163916)

(assert (=> b!7255828 (= lt!2586972 (lemmaZipperConcatMatchesSameAsBothZippers!1717 lt!2586990 lt!2586964 lt!2586961))))

(declare-fun res!2942417 () Bool)

(assert (=> b!7255828 (= res!2942417 (matchZipper!3572 lt!2586990 lt!2586961))))

(assert (=> b!7255828 (=> res!2942417 e!4350751)))

(assert (=> b!7255828 (= (matchZipper!3572 (set.union lt!2586990 lt!2586964) lt!2586961) e!4350751)))

(declare-fun b!7255829 () Bool)

(declare-fun tp_is_empty!46789 () Bool)

(declare-fun tp!2038157 () Bool)

(assert (=> b!7255829 (= e!4350755 (and tp_is_empty!46789 tp!2038157))))

(declare-fun b!7255830 () Bool)

(declare-fun tp!2038155 () Bool)

(assert (=> b!7255830 (= e!4350762 (and tp_is_empty!46789 tp!2038155))))

(declare-fun b!7255831 () Bool)

(declare-fun tp!2038156 () Bool)

(assert (=> b!7255831 (= e!4350761 tp!2038156)))

(declare-fun b!7255832 () Bool)

(assert (=> b!7255832 (= e!4350752 e!4350759)))

(declare-fun res!2942412 () Bool)

(assert (=> b!7255832 (=> res!2942412 e!4350759)))

(assert (=> b!7255832 (= res!2942412 (isEmpty!40566 lt!2586967))))

(declare-fun lt!2586962 () Unit!163916)

(assert (=> b!7255832 (= lt!2586962 (lemmaConcatPreservesForall!1469 (exprs!8102 ct1!232) (exprs!8102 ct2!328) lambda!445072))))

(declare-fun lt!2586992 () (Set Context!15204))

(assert (=> b!7255832 (= lt!2586992 (derivationStepZipperUp!2486 lt!2586973 (h!76891 s1!1971)))))

(declare-fun lt!2586989 () Unit!163916)

(assert (=> b!7255832 (= lt!2586989 (lemmaConcatPreservesForall!1469 (exprs!8102 ct1!232) (exprs!8102 ct2!328) lambda!445072))))

(assert (=> b!7255832 (= lt!2586970 (derivationStepZipperDown!2656 (h!76890 (exprs!8102 ct1!232)) lt!2586965 (h!76891 s1!1971)))))

(assert (=> b!7255832 (= lt!2586965 (Context!15205 (tail!14349 (exprs!8102 ct1!232))))))

(assert (= (and start!706570 res!2942418) b!7255827))

(assert (= (and b!7255827 res!2942420) b!7255820))

(assert (= (and b!7255820 res!2942415) b!7255819))

(assert (= (and b!7255819 res!2942416) b!7255825))

(assert (= (and b!7255825 (not res!2942414)) b!7255818))

(assert (= (and b!7255818 (not res!2942419)) b!7255832))

(assert (= (and b!7255832 (not res!2942412)) b!7255823))

(assert (= (and b!7255823 c!1349082) b!7255828))

(assert (= (and b!7255823 (not c!1349082)) b!7255822))

(assert (= (and b!7255828 (not res!2942413)) b!7255826))

(assert (= (and b!7255828 (not res!2942417)) b!7255824))

(assert (= start!706570 b!7255821))

(assert (= (and start!706570 (is-Cons!70443 s1!1971)) b!7255830))

(assert (= (and start!706570 (is-Cons!70443 s2!1849)) b!7255829))

(assert (= start!706570 b!7255831))

(declare-fun m!7936852 () Bool)

(assert (=> start!706570 m!7936852))

(declare-fun m!7936854 () Bool)

(assert (=> start!706570 m!7936854))

(declare-fun m!7936856 () Bool)

(assert (=> start!706570 m!7936856))

(declare-fun m!7936858 () Bool)

(assert (=> start!706570 m!7936858))

(declare-fun m!7936860 () Bool)

(assert (=> b!7255832 m!7936860))

(declare-fun m!7936862 () Bool)

(assert (=> b!7255832 m!7936862))

(declare-fun m!7936864 () Bool)

(assert (=> b!7255832 m!7936864))

(declare-fun m!7936866 () Bool)

(assert (=> b!7255832 m!7936866))

(assert (=> b!7255832 m!7936860))

(declare-fun m!7936868 () Bool)

(assert (=> b!7255832 m!7936868))

(declare-fun m!7936870 () Bool)

(assert (=> b!7255824 m!7936870))

(declare-fun m!7936872 () Bool)

(assert (=> b!7255825 m!7936872))

(declare-fun m!7936874 () Bool)

(assert (=> b!7255825 m!7936874))

(declare-fun m!7936876 () Bool)

(assert (=> b!7255825 m!7936876))

(declare-fun m!7936878 () Bool)

(assert (=> b!7255825 m!7936878))

(declare-fun m!7936880 () Bool)

(assert (=> b!7255826 m!7936880))

(declare-fun m!7936882 () Bool)

(assert (=> b!7255828 m!7936882))

(declare-fun m!7936884 () Bool)

(assert (=> b!7255828 m!7936884))

(declare-fun m!7936886 () Bool)

(assert (=> b!7255828 m!7936886))

(declare-fun m!7936888 () Bool)

(assert (=> b!7255828 m!7936888))

(declare-fun m!7936890 () Bool)

(assert (=> b!7255828 m!7936890))

(declare-fun m!7936892 () Bool)

(assert (=> b!7255828 m!7936892))

(declare-fun m!7936894 () Bool)

(assert (=> b!7255828 m!7936894))

(assert (=> b!7255828 m!7936860))

(declare-fun m!7936896 () Bool)

(assert (=> b!7255828 m!7936896))

(assert (=> b!7255828 m!7936860))

(declare-fun m!7936898 () Bool)

(assert (=> b!7255823 m!7936898))

(declare-fun m!7936900 () Bool)

(assert (=> b!7255823 m!7936900))

(assert (=> b!7255823 m!7936864))

(declare-fun m!7936902 () Bool)

(assert (=> b!7255823 m!7936902))

(declare-fun m!7936904 () Bool)

(assert (=> b!7255823 m!7936904))

(declare-fun m!7936906 () Bool)

(assert (=> b!7255823 m!7936906))

(declare-fun m!7936908 () Bool)

(assert (=> b!7255823 m!7936908))

(declare-fun m!7936910 () Bool)

(assert (=> b!7255823 m!7936910))

(assert (=> b!7255823 m!7936860))

(declare-fun m!7936912 () Bool)

(assert (=> b!7255823 m!7936912))

(declare-fun m!7936914 () Bool)

(assert (=> b!7255823 m!7936914))

(assert (=> b!7255823 m!7936908))

(declare-fun m!7936916 () Bool)

(assert (=> b!7255823 m!7936916))

(declare-fun m!7936918 () Bool)

(assert (=> b!7255819 m!7936918))

(declare-fun m!7936920 () Bool)

(assert (=> b!7255819 m!7936920))

(declare-fun m!7936922 () Bool)

(assert (=> b!7255820 m!7936922))

(declare-fun m!7936924 () Bool)

(assert (=> b!7255820 m!7936924))

(assert (=> b!7255820 m!7936860))

(declare-fun m!7936926 () Bool)

(assert (=> b!7255827 m!7936926))

(assert (=> b!7255827 m!7936926))

(declare-fun m!7936928 () Bool)

(assert (=> b!7255827 m!7936928))

(declare-fun m!7936930 () Bool)

(assert (=> b!7255818 m!7936930))

(assert (=> b!7255818 m!7936930))

(declare-fun m!7936932 () Bool)

(assert (=> b!7255818 m!7936932))

(declare-fun m!7936934 () Bool)

(assert (=> b!7255818 m!7936934))

(declare-fun m!7936936 () Bool)

(assert (=> b!7255818 m!7936936))

(declare-fun m!7936938 () Bool)

(assert (=> b!7255818 m!7936938))

(assert (=> b!7255818 m!7936906))

(declare-fun m!7936940 () Bool)

(assert (=> b!7255818 m!7936940))

(declare-fun m!7936942 () Bool)

(assert (=> b!7255818 m!7936942))

(declare-fun m!7936944 () Bool)

(assert (=> b!7255818 m!7936944))

(assert (=> b!7255818 m!7936940))

(push 1)

(assert (not b!7255823))

(assert (not b!7255818))

(assert (not b!7255827))

(assert (not b!7255831))

(assert (not b!7255826))

(assert (not b!7255830))

(assert (not b!7255824))

(assert (not b!7255828))

(assert (not b!7255820))

(assert (not b!7255819))

(assert (not b!7255825))

(assert (not start!706570))

(assert (not b!7255821))

(assert (not b!7255829))

(assert tp_is_empty!46789)

(assert (not b!7255832))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2256532 () Bool)

(assert (=> d!2256532 (= (tail!14349 (exprs!8102 ct1!232)) (t!384630 (exprs!8102 ct1!232)))))

(assert (=> b!7255832 d!2256532))

(declare-fun d!2256534 () Bool)

(declare-fun c!1349103 () Bool)

(declare-fun e!4350808 () Bool)

(assert (=> d!2256534 (= c!1349103 e!4350808)))

(declare-fun res!2942450 () Bool)

(assert (=> d!2256534 (=> (not res!2942450) (not e!4350808))))

(assert (=> d!2256534 (= res!2942450 (is-Cons!70442 (exprs!8102 lt!2586973)))))

(declare-fun e!4350810 () (Set Context!15204))

(assert (=> d!2256534 (= (derivationStepZipperUp!2486 lt!2586973 (h!76891 s1!1971)) e!4350810)))

(declare-fun b!7255896 () Bool)

(declare-fun e!4350809 () (Set Context!15204))

(assert (=> b!7255896 (= e!4350810 e!4350809)))

(declare-fun c!1349102 () Bool)

(assert (=> b!7255896 (= c!1349102 (is-Cons!70442 (exprs!8102 lt!2586973)))))

(declare-fun bm!661193 () Bool)

(declare-fun call!661198 () (Set Context!15204))

(assert (=> bm!661193 (= call!661198 (derivationStepZipperDown!2656 (h!76890 (exprs!8102 lt!2586973)) (Context!15205 (t!384630 (exprs!8102 lt!2586973))) (h!76891 s1!1971)))))

(declare-fun b!7255897 () Bool)

(assert (=> b!7255897 (= e!4350809 call!661198)))

(declare-fun b!7255898 () Bool)

(assert (=> b!7255898 (= e!4350809 (as set.empty (Set Context!15204)))))

(declare-fun b!7255899 () Bool)

(assert (=> b!7255899 (= e!4350808 (nullable!7922 (h!76890 (exprs!8102 lt!2586973))))))

(declare-fun b!7255900 () Bool)

(assert (=> b!7255900 (= e!4350810 (set.union call!661198 (derivationStepZipperUp!2486 (Context!15205 (t!384630 (exprs!8102 lt!2586973))) (h!76891 s1!1971))))))

(assert (= (and d!2256534 res!2942450) b!7255899))

(assert (= (and d!2256534 c!1349103) b!7255900))

(assert (= (and d!2256534 (not c!1349103)) b!7255896))

(assert (= (and b!7255896 c!1349102) b!7255897))

(assert (= (and b!7255896 (not c!1349102)) b!7255898))

(assert (= (or b!7255900 b!7255897) bm!661193))

(declare-fun m!7937040 () Bool)

(assert (=> bm!661193 m!7937040))

(declare-fun m!7937042 () Bool)

(assert (=> b!7255899 m!7937042))

(declare-fun m!7937044 () Bool)

(assert (=> b!7255900 m!7937044))

(assert (=> b!7255832 d!2256534))

(declare-fun d!2256536 () Bool)

(declare-fun forall!17514 (List!70566 Int) Bool)

(assert (=> d!2256536 (forall!17514 (++!16587 (exprs!8102 ct1!232) (exprs!8102 ct2!328)) lambda!445072)))

(declare-fun lt!2587091 () Unit!163916)

(declare-fun choose!56096 (List!70566 List!70566 Int) Unit!163916)

(assert (=> d!2256536 (= lt!2587091 (choose!56096 (exprs!8102 ct1!232) (exprs!8102 ct2!328) lambda!445072))))

(assert (=> d!2256536 (forall!17514 (exprs!8102 ct1!232) lambda!445072)))

(assert (=> d!2256536 (= (lemmaConcatPreservesForall!1469 (exprs!8102 ct1!232) (exprs!8102 ct2!328) lambda!445072) lt!2587091)))

(declare-fun bs!1907743 () Bool)

(assert (= bs!1907743 d!2256536))

(assert (=> bs!1907743 m!7936924))

(assert (=> bs!1907743 m!7936924))

(declare-fun m!7937046 () Bool)

(assert (=> bs!1907743 m!7937046))

(declare-fun m!7937048 () Bool)

(assert (=> bs!1907743 m!7937048))

(declare-fun m!7937050 () Bool)

(assert (=> bs!1907743 m!7937050))

(assert (=> b!7255832 d!2256536))

(declare-fun d!2256538 () Bool)

(assert (=> d!2256538 (= (isEmpty!40566 lt!2586967) (is-Nil!70442 lt!2586967))))

(assert (=> b!7255832 d!2256538))

(declare-fun c!1349114 () Bool)

(declare-fun bm!661206 () Bool)

(declare-fun c!1349117 () Bool)

(declare-fun call!661211 () (Set Context!15204))

(declare-fun call!661213 () List!70566)

(declare-fun c!1349116 () Bool)

(assert (=> bm!661206 (= call!661211 (derivationStepZipperDown!2656 (ite c!1349114 (regOne!37837 (h!76890 (exprs!8102 ct1!232))) (ite c!1349116 (regTwo!37836 (h!76890 (exprs!8102 ct1!232))) (ite c!1349117 (regOne!37836 (h!76890 (exprs!8102 ct1!232))) (reg!18991 (h!76890 (exprs!8102 ct1!232)))))) (ite (or c!1349114 c!1349116) lt!2586965 (Context!15205 call!661213)) (h!76891 s1!1971)))))

(declare-fun b!7255923 () Bool)

(declare-fun e!4350824 () (Set Context!15204))

(declare-fun e!4350826 () (Set Context!15204))

(assert (=> b!7255923 (= e!4350824 e!4350826)))

(assert (=> b!7255923 (= c!1349117 (is-Concat!27507 (h!76890 (exprs!8102 ct1!232))))))

(declare-fun b!7255924 () Bool)

(declare-fun e!4350827 () (Set Context!15204))

(declare-fun call!661212 () (Set Context!15204))

(assert (=> b!7255924 (= e!4350827 (set.union call!661211 call!661212))))

(declare-fun b!7255925 () Bool)

(declare-fun e!4350823 () (Set Context!15204))

(assert (=> b!7255925 (= e!4350823 (set.insert lt!2586965 (as set.empty (Set Context!15204))))))

(declare-fun bm!661207 () Bool)

(declare-fun call!661215 () List!70566)

(assert (=> bm!661207 (= call!661213 call!661215)))

(declare-fun b!7255926 () Bool)

(declare-fun e!4350825 () Bool)

(assert (=> b!7255926 (= c!1349116 e!4350825)))

(declare-fun res!2942453 () Bool)

(assert (=> b!7255926 (=> (not res!2942453) (not e!4350825))))

(assert (=> b!7255926 (= res!2942453 (is-Concat!27507 (h!76890 (exprs!8102 ct1!232))))))

(assert (=> b!7255926 (= e!4350827 e!4350824)))

(declare-fun b!7255927 () Bool)

(declare-fun call!661216 () (Set Context!15204))

(assert (=> b!7255927 (= e!4350826 call!661216)))

(declare-fun b!7255928 () Bool)

(declare-fun call!661214 () (Set Context!15204))

(assert (=> b!7255928 (= e!4350824 (set.union call!661212 call!661214))))

(declare-fun b!7255929 () Bool)

(declare-fun e!4350828 () (Set Context!15204))

(assert (=> b!7255929 (= e!4350828 (as set.empty (Set Context!15204)))))

(declare-fun d!2256540 () Bool)

(declare-fun c!1349118 () Bool)

(assert (=> d!2256540 (= c!1349118 (and (is-ElementMatch!18662 (h!76890 (exprs!8102 ct1!232))) (= (c!1349083 (h!76890 (exprs!8102 ct1!232))) (h!76891 s1!1971))))))

(assert (=> d!2256540 (= (derivationStepZipperDown!2656 (h!76890 (exprs!8102 ct1!232)) lt!2586965 (h!76891 s1!1971)) e!4350823)))

(declare-fun bm!661208 () Bool)

(assert (=> bm!661208 (= call!661212 (derivationStepZipperDown!2656 (ite c!1349114 (regTwo!37837 (h!76890 (exprs!8102 ct1!232))) (regOne!37836 (h!76890 (exprs!8102 ct1!232)))) (ite c!1349114 lt!2586965 (Context!15205 call!661215)) (h!76891 s1!1971)))))

(declare-fun bm!661209 () Bool)

(assert (=> bm!661209 (= call!661216 call!661214)))

(declare-fun bm!661210 () Bool)

(assert (=> bm!661210 (= call!661214 call!661211)))

(declare-fun b!7255930 () Bool)

(assert (=> b!7255930 (= e!4350828 call!661216)))

(declare-fun b!7255931 () Bool)

(declare-fun c!1349115 () Bool)

(assert (=> b!7255931 (= c!1349115 (is-Star!18662 (h!76890 (exprs!8102 ct1!232))))))

(assert (=> b!7255931 (= e!4350826 e!4350828)))

(declare-fun b!7255932 () Bool)

(assert (=> b!7255932 (= e!4350825 (nullable!7922 (regOne!37836 (h!76890 (exprs!8102 ct1!232)))))))

(declare-fun b!7255933 () Bool)

(assert (=> b!7255933 (= e!4350823 e!4350827)))

(assert (=> b!7255933 (= c!1349114 (is-Union!18662 (h!76890 (exprs!8102 ct1!232))))))

(declare-fun bm!661211 () Bool)

(declare-fun $colon$colon!2928 (List!70566 Regex!18662) List!70566)

(assert (=> bm!661211 (= call!661215 ($colon$colon!2928 (exprs!8102 lt!2586965) (ite (or c!1349116 c!1349117) (regTwo!37836 (h!76890 (exprs!8102 ct1!232))) (h!76890 (exprs!8102 ct1!232)))))))

(assert (= (and d!2256540 c!1349118) b!7255925))

(assert (= (and d!2256540 (not c!1349118)) b!7255933))

(assert (= (and b!7255933 c!1349114) b!7255924))

(assert (= (and b!7255933 (not c!1349114)) b!7255926))

(assert (= (and b!7255926 res!2942453) b!7255932))

(assert (= (and b!7255926 c!1349116) b!7255928))

(assert (= (and b!7255926 (not c!1349116)) b!7255923))

(assert (= (and b!7255923 c!1349117) b!7255927))

(assert (= (and b!7255923 (not c!1349117)) b!7255931))

(assert (= (and b!7255931 c!1349115) b!7255930))

(assert (= (and b!7255931 (not c!1349115)) b!7255929))

(assert (= (or b!7255927 b!7255930) bm!661207))

(assert (= (or b!7255927 b!7255930) bm!661209))

(assert (= (or b!7255928 bm!661207) bm!661211))

(assert (= (or b!7255928 bm!661209) bm!661210))

(assert (= (or b!7255924 b!7255928) bm!661208))

(assert (= (or b!7255924 bm!661210) bm!661206))

(declare-fun m!7937052 () Bool)

(assert (=> bm!661208 m!7937052))

(declare-fun m!7937054 () Bool)

(assert (=> bm!661211 m!7937054))

(declare-fun m!7937056 () Bool)

(assert (=> b!7255932 m!7937056))

(declare-fun m!7937058 () Bool)

(assert (=> b!7255925 m!7937058))

(declare-fun m!7937060 () Bool)

(assert (=> bm!661206 m!7937060))

(assert (=> b!7255832 d!2256540))

(declare-fun d!2256542 () Bool)

(declare-fun dynLambda!28780 (Int Context!15204) (Set Context!15204))

(assert (=> d!2256542 (= (flatMap!2827 lt!2586987 lambda!445074) (dynLambda!28780 lambda!445074 lt!2586973))))

(declare-fun lt!2587094 () Unit!163916)

(declare-fun choose!56097 ((Set Context!15204) Context!15204 Int) Unit!163916)

(assert (=> d!2256542 (= lt!2587094 (choose!56097 lt!2586987 lt!2586973 lambda!445074))))

(assert (=> d!2256542 (= lt!2586987 (set.insert lt!2586973 (as set.empty (Set Context!15204))))))

(assert (=> d!2256542 (= (lemmaFlatMapOnSingletonSet!2231 lt!2586987 lt!2586973 lambda!445074) lt!2587094)))

(declare-fun b_lambda!278981 () Bool)

(assert (=> (not b_lambda!278981) (not d!2256542)))

(declare-fun bs!1907744 () Bool)

(assert (= bs!1907744 d!2256542))

(assert (=> bs!1907744 m!7936900))

(declare-fun m!7937062 () Bool)

(assert (=> bs!1907744 m!7937062))

(declare-fun m!7937064 () Bool)

(assert (=> bs!1907744 m!7937064))

(assert (=> bs!1907744 m!7936922))

(assert (=> b!7255823 d!2256542))

(assert (=> b!7255823 d!2256534))

(assert (=> b!7255823 d!2256536))

(declare-fun d!2256544 () Bool)

(declare-fun nullableFct!3113 (Regex!18662) Bool)

(assert (=> d!2256544 (= (nullable!7922 (h!76890 (exprs!8102 ct1!232))) (nullableFct!3113 (h!76890 (exprs!8102 ct1!232))))))

(declare-fun bs!1907745 () Bool)

(assert (= bs!1907745 d!2256544))

(declare-fun m!7937066 () Bool)

(assert (=> bs!1907745 m!7937066))

(assert (=> b!7255823 d!2256544))

(declare-fun b!7255945 () Bool)

(declare-fun e!4350833 () Bool)

(declare-fun lt!2587097 () List!70567)

(assert (=> b!7255945 (= e!4350833 (or (not (= s2!1849 Nil!70443)) (= lt!2587097 s1!1971)))))

(declare-fun b!7255942 () Bool)

(declare-fun e!4350834 () List!70567)

(assert (=> b!7255942 (= e!4350834 s2!1849)))

(declare-fun b!7255944 () Bool)

(declare-fun res!2942458 () Bool)

(assert (=> b!7255944 (=> (not res!2942458) (not e!4350833))))

(declare-fun size!41737 (List!70567) Int)

(assert (=> b!7255944 (= res!2942458 (= (size!41737 lt!2587097) (+ (size!41737 s1!1971) (size!41737 s2!1849))))))

(declare-fun d!2256546 () Bool)

(assert (=> d!2256546 e!4350833))

(declare-fun res!2942459 () Bool)

(assert (=> d!2256546 (=> (not res!2942459) (not e!4350833))))

(declare-fun content!14641 (List!70567) (Set C!37598))

(assert (=> d!2256546 (= res!2942459 (= (content!14641 lt!2587097) (set.union (content!14641 s1!1971) (content!14641 s2!1849))))))

(assert (=> d!2256546 (= lt!2587097 e!4350834)))

(declare-fun c!1349121 () Bool)

(assert (=> d!2256546 (= c!1349121 (is-Nil!70443 s1!1971))))

(assert (=> d!2256546 (= (++!16586 s1!1971 s2!1849) lt!2587097)))

(declare-fun b!7255943 () Bool)

(assert (=> b!7255943 (= e!4350834 (Cons!70443 (h!76891 s1!1971) (++!16586 (t!384631 s1!1971) s2!1849)))))

(assert (= (and d!2256546 c!1349121) b!7255942))

(assert (= (and d!2256546 (not c!1349121)) b!7255943))

(assert (= (and d!2256546 res!2942459) b!7255944))

(assert (= (and b!7255944 res!2942458) b!7255945))

(declare-fun m!7937068 () Bool)

(assert (=> b!7255944 m!7937068))

(declare-fun m!7937070 () Bool)

(assert (=> b!7255944 m!7937070))

(declare-fun m!7937072 () Bool)

(assert (=> b!7255944 m!7937072))

(declare-fun m!7937074 () Bool)

(assert (=> d!2256546 m!7937074))

(declare-fun m!7937076 () Bool)

(assert (=> d!2256546 m!7937076))

(declare-fun m!7937078 () Bool)

(assert (=> d!2256546 m!7937078))

(assert (=> b!7255943 m!7936942))

(assert (=> b!7255823 d!2256546))

(declare-fun c!1349122 () Bool)

(declare-fun bm!661212 () Bool)

(declare-fun c!1349124 () Bool)

(declare-fun call!661217 () (Set Context!15204))

(declare-fun call!661219 () List!70566)

(declare-fun c!1349125 () Bool)

(assert (=> bm!661212 (= call!661217 (derivationStepZipperDown!2656 (ite c!1349122 (regOne!37837 (h!76890 (exprs!8102 ct1!232))) (ite c!1349124 (regTwo!37836 (h!76890 (exprs!8102 ct1!232))) (ite c!1349125 (regOne!37836 (h!76890 (exprs!8102 ct1!232))) (reg!18991 (h!76890 (exprs!8102 ct1!232)))))) (ite (or c!1349122 c!1349124) lt!2586963 (Context!15205 call!661219)) (h!76891 s1!1971)))))

(declare-fun b!7255946 () Bool)

(declare-fun e!4350836 () (Set Context!15204))

(declare-fun e!4350838 () (Set Context!15204))

(assert (=> b!7255946 (= e!4350836 e!4350838)))

(assert (=> b!7255946 (= c!1349125 (is-Concat!27507 (h!76890 (exprs!8102 ct1!232))))))

(declare-fun b!7255947 () Bool)

(declare-fun e!4350839 () (Set Context!15204))

(declare-fun call!661218 () (Set Context!15204))

(assert (=> b!7255947 (= e!4350839 (set.union call!661217 call!661218))))

(declare-fun b!7255948 () Bool)

(declare-fun e!4350835 () (Set Context!15204))

(assert (=> b!7255948 (= e!4350835 (set.insert lt!2586963 (as set.empty (Set Context!15204))))))

(declare-fun bm!661213 () Bool)

(declare-fun call!661221 () List!70566)

(assert (=> bm!661213 (= call!661219 call!661221)))

(declare-fun b!7255949 () Bool)

(declare-fun e!4350837 () Bool)

(assert (=> b!7255949 (= c!1349124 e!4350837)))

(declare-fun res!2942460 () Bool)

(assert (=> b!7255949 (=> (not res!2942460) (not e!4350837))))

(assert (=> b!7255949 (= res!2942460 (is-Concat!27507 (h!76890 (exprs!8102 ct1!232))))))

(assert (=> b!7255949 (= e!4350839 e!4350836)))

(declare-fun b!7255950 () Bool)

(declare-fun call!661222 () (Set Context!15204))

(assert (=> b!7255950 (= e!4350838 call!661222)))

(declare-fun b!7255951 () Bool)

(declare-fun call!661220 () (Set Context!15204))

(assert (=> b!7255951 (= e!4350836 (set.union call!661218 call!661220))))

(declare-fun b!7255952 () Bool)

(declare-fun e!4350840 () (Set Context!15204))

(assert (=> b!7255952 (= e!4350840 (as set.empty (Set Context!15204)))))

(declare-fun d!2256548 () Bool)

(declare-fun c!1349126 () Bool)

(assert (=> d!2256548 (= c!1349126 (and (is-ElementMatch!18662 (h!76890 (exprs!8102 ct1!232))) (= (c!1349083 (h!76890 (exprs!8102 ct1!232))) (h!76891 s1!1971))))))

(assert (=> d!2256548 (= (derivationStepZipperDown!2656 (h!76890 (exprs!8102 ct1!232)) lt!2586963 (h!76891 s1!1971)) e!4350835)))

(declare-fun bm!661214 () Bool)

(assert (=> bm!661214 (= call!661218 (derivationStepZipperDown!2656 (ite c!1349122 (regTwo!37837 (h!76890 (exprs!8102 ct1!232))) (regOne!37836 (h!76890 (exprs!8102 ct1!232)))) (ite c!1349122 lt!2586963 (Context!15205 call!661221)) (h!76891 s1!1971)))))

(declare-fun bm!661215 () Bool)

(assert (=> bm!661215 (= call!661222 call!661220)))

(declare-fun bm!661216 () Bool)

(assert (=> bm!661216 (= call!661220 call!661217)))

(declare-fun b!7255953 () Bool)

(assert (=> b!7255953 (= e!4350840 call!661222)))

(declare-fun b!7255954 () Bool)

(declare-fun c!1349123 () Bool)

(assert (=> b!7255954 (= c!1349123 (is-Star!18662 (h!76890 (exprs!8102 ct1!232))))))

(assert (=> b!7255954 (= e!4350838 e!4350840)))

(declare-fun b!7255955 () Bool)

(assert (=> b!7255955 (= e!4350837 (nullable!7922 (regOne!37836 (h!76890 (exprs!8102 ct1!232)))))))

(declare-fun b!7255956 () Bool)

(assert (=> b!7255956 (= e!4350835 e!4350839)))

(assert (=> b!7255956 (= c!1349122 (is-Union!18662 (h!76890 (exprs!8102 ct1!232))))))

(declare-fun bm!661217 () Bool)

(assert (=> bm!661217 (= call!661221 ($colon$colon!2928 (exprs!8102 lt!2586963) (ite (or c!1349124 c!1349125) (regTwo!37836 (h!76890 (exprs!8102 ct1!232))) (h!76890 (exprs!8102 ct1!232)))))))

(assert (= (and d!2256548 c!1349126) b!7255948))

(assert (= (and d!2256548 (not c!1349126)) b!7255956))

(assert (= (and b!7255956 c!1349122) b!7255947))

(assert (= (and b!7255956 (not c!1349122)) b!7255949))

(assert (= (and b!7255949 res!2942460) b!7255955))

(assert (= (and b!7255949 c!1349124) b!7255951))

(assert (= (and b!7255949 (not c!1349124)) b!7255946))

(assert (= (and b!7255946 c!1349125) b!7255950))

(assert (= (and b!7255946 (not c!1349125)) b!7255954))

(assert (= (and b!7255954 c!1349123) b!7255953))

(assert (= (and b!7255954 (not c!1349123)) b!7255952))

(assert (= (or b!7255950 b!7255953) bm!661213))

(assert (= (or b!7255950 b!7255953) bm!661215))

(assert (= (or b!7255951 bm!661213) bm!661217))

(assert (= (or b!7255951 bm!661215) bm!661216))

(assert (= (or b!7255947 b!7255951) bm!661214))

(assert (= (or b!7255947 bm!661216) bm!661212))

(declare-fun m!7937080 () Bool)

(assert (=> bm!661214 m!7937080))

(declare-fun m!7937082 () Bool)

(assert (=> bm!661217 m!7937082))

(assert (=> b!7255955 m!7937056))

(declare-fun m!7937084 () Bool)

(assert (=> b!7255948 m!7937084))

(declare-fun m!7937086 () Bool)

(assert (=> bm!661212 m!7937086))

(assert (=> b!7255823 d!2256548))

(declare-fun d!2256550 () Bool)

(declare-fun c!1349128 () Bool)

(declare-fun e!4350841 () Bool)

(assert (=> d!2256550 (= c!1349128 e!4350841)))

(declare-fun res!2942461 () Bool)

(assert (=> d!2256550 (=> (not res!2942461) (not e!4350841))))

(assert (=> d!2256550 (= res!2942461 (is-Cons!70442 (exprs!8102 ct1!232)))))

(declare-fun e!4350843 () (Set Context!15204))

(assert (=> d!2256550 (= (derivationStepZipperUp!2486 ct1!232 (h!76891 s1!1971)) e!4350843)))

(declare-fun b!7255957 () Bool)

(declare-fun e!4350842 () (Set Context!15204))

(assert (=> b!7255957 (= e!4350843 e!4350842)))

(declare-fun c!1349127 () Bool)

(assert (=> b!7255957 (= c!1349127 (is-Cons!70442 (exprs!8102 ct1!232)))))

(declare-fun bm!661218 () Bool)

(declare-fun call!661223 () (Set Context!15204))

(assert (=> bm!661218 (= call!661223 (derivationStepZipperDown!2656 (h!76890 (exprs!8102 ct1!232)) (Context!15205 (t!384630 (exprs!8102 ct1!232))) (h!76891 s1!1971)))))

(declare-fun b!7255958 () Bool)

(assert (=> b!7255958 (= e!4350842 call!661223)))

(declare-fun b!7255959 () Bool)

(assert (=> b!7255959 (= e!4350842 (as set.empty (Set Context!15204)))))

(declare-fun b!7255960 () Bool)

(assert (=> b!7255960 (= e!4350841 (nullable!7922 (h!76890 (exprs!8102 ct1!232))))))

(declare-fun b!7255961 () Bool)

(assert (=> b!7255961 (= e!4350843 (set.union call!661223 (derivationStepZipperUp!2486 (Context!15205 (t!384630 (exprs!8102 ct1!232))) (h!76891 s1!1971))))))

(assert (= (and d!2256550 res!2942461) b!7255960))

(assert (= (and d!2256550 c!1349128) b!7255961))

(assert (= (and d!2256550 (not c!1349128)) b!7255957))

(assert (= (and b!7255957 c!1349127) b!7255958))

(assert (= (and b!7255957 (not c!1349127)) b!7255959))

(assert (= (or b!7255961 b!7255958) bm!661218))

(declare-fun m!7937088 () Bool)

(assert (=> bm!661218 m!7937088))

(assert (=> b!7255960 m!7936914))

(declare-fun m!7937090 () Bool)

(assert (=> b!7255961 m!7937090))

(assert (=> b!7255823 d!2256550))

(declare-fun d!2256552 () Bool)

(assert (=> d!2256552 (= (tail!14348 (++!16586 s1!1971 s2!1849)) (t!384631 (++!16586 s1!1971 s2!1849)))))

(assert (=> b!7255823 d!2256552))

(declare-fun d!2256554 () Bool)

(declare-fun choose!56098 ((Set Context!15204) Int) (Set Context!15204))

(assert (=> d!2256554 (= (flatMap!2827 lt!2586987 lambda!445074) (choose!56098 lt!2586987 lambda!445074))))

(declare-fun bs!1907746 () Bool)

(assert (= bs!1907746 d!2256554))

(declare-fun m!7937092 () Bool)

(assert (=> bs!1907746 m!7937092))

(assert (=> b!7255823 d!2256554))

(declare-fun d!2256556 () Bool)

(assert (=> d!2256556 (= (flatMap!2827 lt!2586982 lambda!445074) (choose!56098 lt!2586982 lambda!445074))))

(declare-fun bs!1907747 () Bool)

(assert (= bs!1907747 d!2256556))

(declare-fun m!7937094 () Bool)

(assert (=> bs!1907747 m!7937094))

(assert (=> b!7255823 d!2256556))

(declare-fun d!2256558 () Bool)

(assert (=> d!2256558 (= (flatMap!2827 lt!2586982 lambda!445074) (dynLambda!28780 lambda!445074 ct1!232))))

(declare-fun lt!2587098 () Unit!163916)

(assert (=> d!2256558 (= lt!2587098 (choose!56097 lt!2586982 ct1!232 lambda!445074))))

(assert (=> d!2256558 (= lt!2586982 (set.insert ct1!232 (as set.empty (Set Context!15204))))))

(assert (=> d!2256558 (= (lemmaFlatMapOnSingletonSet!2231 lt!2586982 ct1!232 lambda!445074) lt!2587098)))

(declare-fun b_lambda!278983 () Bool)

(assert (=> (not b_lambda!278983) (not d!2256558)))

(declare-fun bs!1907748 () Bool)

(assert (= bs!1907748 d!2256558))

(assert (=> bs!1907748 m!7936904))

(declare-fun m!7937096 () Bool)

(assert (=> bs!1907748 m!7937096))

(declare-fun m!7937098 () Bool)

(assert (=> bs!1907748 m!7937098))

(assert (=> bs!1907748 m!7936854))

(assert (=> b!7255823 d!2256558))

(declare-fun d!2256560 () Bool)

(assert (=> d!2256560 (= (tail!14349 lt!2586967) (t!384630 lt!2586967))))

(assert (=> b!7255823 d!2256560))

(declare-fun d!2256562 () Bool)

(declare-fun lt!2587101 () Bool)

(assert (=> d!2256562 (= lt!2587101 (exists!4403 (toList!11491 lt!2586984) lambda!445073))))

(declare-fun choose!56099 ((Set Context!15204) Int) Bool)

(assert (=> d!2256562 (= lt!2587101 (choose!56099 lt!2586984 lambda!445073))))

(assert (=> d!2256562 (= (exists!4402 lt!2586984 lambda!445073) lt!2587101)))

(declare-fun bs!1907749 () Bool)

(assert (= bs!1907749 d!2256562))

(assert (=> bs!1907749 m!7936878))

(assert (=> bs!1907749 m!7936878))

(declare-fun m!7937100 () Bool)

(assert (=> bs!1907749 m!7937100))

(declare-fun m!7937102 () Bool)

(assert (=> bs!1907749 m!7937102))

(assert (=> b!7255825 d!2256562))

(declare-fun bs!1907750 () Bool)

(declare-fun d!2256564 () Bool)

(assert (= bs!1907750 (and d!2256564 b!7255825)))

(declare-fun lambda!445106 () Int)

(assert (=> bs!1907750 (not (= lambda!445106 lambda!445073))))

(assert (=> d!2256564 true))

(declare-fun order!29003 () Int)

(declare-fun dynLambda!28781 (Int Int) Int)

(assert (=> d!2256564 (< (dynLambda!28781 order!29003 lambda!445073) (dynLambda!28781 order!29003 lambda!445106))))

(declare-fun forall!17515 (List!70568 Int) Bool)

(assert (=> d!2256564 (= (exists!4403 lt!2586986 lambda!445073) (not (forall!17515 lt!2586986 lambda!445106)))))

(declare-fun bs!1907751 () Bool)

(assert (= bs!1907751 d!2256564))

(declare-fun m!7937104 () Bool)

(assert (=> bs!1907751 m!7937104))

(assert (=> b!7255825 d!2256564))

(declare-fun bs!1907752 () Bool)

(declare-fun d!2256566 () Bool)

(assert (= bs!1907752 (and d!2256566 b!7255825)))

(declare-fun lambda!445109 () Int)

(assert (=> bs!1907752 (= lambda!445109 lambda!445073)))

(declare-fun bs!1907753 () Bool)

(assert (= bs!1907753 (and d!2256566 d!2256564)))

(assert (=> bs!1907753 (not (= lambda!445109 lambda!445106))))

(assert (=> d!2256566 true))

(assert (=> d!2256566 (exists!4403 lt!2586986 lambda!445109)))

(declare-fun lt!2587104 () Unit!163916)

(declare-fun choose!56100 (List!70568 List!70567) Unit!163916)

(assert (=> d!2256566 (= lt!2587104 (choose!56100 lt!2586986 (t!384631 s1!1971)))))

(declare-fun content!14642 (List!70568) (Set Context!15204))

(assert (=> d!2256566 (matchZipper!3572 (content!14642 lt!2586986) (t!384631 s1!1971))))

(assert (=> d!2256566 (= (lemmaZipperMatchesExistsMatchingContext!765 lt!2586986 (t!384631 s1!1971)) lt!2587104)))

(declare-fun bs!1907754 () Bool)

(assert (= bs!1907754 d!2256566))

(declare-fun m!7937106 () Bool)

(assert (=> bs!1907754 m!7937106))

(declare-fun m!7937108 () Bool)

(assert (=> bs!1907754 m!7937108))

(declare-fun m!7937110 () Bool)

(assert (=> bs!1907754 m!7937110))

(assert (=> bs!1907754 m!7937110))

(declare-fun m!7937112 () Bool)

(assert (=> bs!1907754 m!7937112))

(assert (=> b!7255825 d!2256566))

(declare-fun d!2256568 () Bool)

(declare-fun e!4350846 () Bool)

(assert (=> d!2256568 e!4350846))

(declare-fun res!2942464 () Bool)

(assert (=> d!2256568 (=> (not res!2942464) (not e!4350846))))

(declare-fun lt!2587107 () List!70568)

(declare-fun noDuplicate!3000 (List!70568) Bool)

(assert (=> d!2256568 (= res!2942464 (noDuplicate!3000 lt!2587107))))

(declare-fun choose!56101 ((Set Context!15204)) List!70568)

(assert (=> d!2256568 (= lt!2587107 (choose!56101 lt!2586984))))

(assert (=> d!2256568 (= (toList!11491 lt!2586984) lt!2587107)))

(declare-fun b!7255966 () Bool)

(assert (=> b!7255966 (= e!4350846 (= (content!14642 lt!2587107) lt!2586984))))

(assert (= (and d!2256568 res!2942464) b!7255966))

(declare-fun m!7937114 () Bool)

(assert (=> d!2256568 m!7937114))

(declare-fun m!7937116 () Bool)

(assert (=> d!2256568 m!7937116))

(declare-fun m!7937118 () Bool)

(assert (=> b!7255966 m!7937118))

(assert (=> b!7255825 d!2256568))

(declare-fun d!2256570 () Bool)

(declare-fun c!1349133 () Bool)

(declare-fun isEmpty!40568 (List!70567) Bool)

(assert (=> d!2256570 (= c!1349133 (isEmpty!40568 lt!2586961))))

(declare-fun e!4350849 () Bool)

(assert (=> d!2256570 (= (matchZipper!3572 lt!2586964 lt!2586961) e!4350849)))

(declare-fun b!7255971 () Bool)

(declare-fun nullableZipper!2924 ((Set Context!15204)) Bool)

(assert (=> b!7255971 (= e!4350849 (nullableZipper!2924 lt!2586964))))

(declare-fun b!7255972 () Bool)

(declare-fun head!14921 (List!70567) C!37598)

(assert (=> b!7255972 (= e!4350849 (matchZipper!3572 (derivationStepZipper!3440 lt!2586964 (head!14921 lt!2586961)) (tail!14348 lt!2586961)))))

(assert (= (and d!2256570 c!1349133) b!7255971))

(assert (= (and d!2256570 (not c!1349133)) b!7255972))

(declare-fun m!7937120 () Bool)

(assert (=> d!2256570 m!7937120))

(declare-fun m!7937122 () Bool)

(assert (=> b!7255971 m!7937122))

(declare-fun m!7937124 () Bool)

(assert (=> b!7255972 m!7937124))

(assert (=> b!7255972 m!7937124))

(declare-fun m!7937126 () Bool)

(assert (=> b!7255972 m!7937126))

(declare-fun m!7937128 () Bool)

(assert (=> b!7255972 m!7937128))

(assert (=> b!7255972 m!7937126))

(assert (=> b!7255972 m!7937128))

(declare-fun m!7937130 () Bool)

(assert (=> b!7255972 m!7937130))

(assert (=> b!7255824 d!2256570))

(declare-fun d!2256572 () Bool)

(declare-fun c!1349134 () Bool)

(assert (=> d!2256572 (= c!1349134 (isEmpty!40568 s1!1971))))

(declare-fun e!4350850 () Bool)

(assert (=> d!2256572 (= (matchZipper!3572 lt!2586982 s1!1971) e!4350850)))

(declare-fun b!7255973 () Bool)

(assert (=> b!7255973 (= e!4350850 (nullableZipper!2924 lt!2586982))))

(declare-fun b!7255974 () Bool)

(assert (=> b!7255974 (= e!4350850 (matchZipper!3572 (derivationStepZipper!3440 lt!2586982 (head!14921 s1!1971)) (tail!14348 s1!1971)))))

(assert (= (and d!2256572 c!1349134) b!7255973))

(assert (= (and d!2256572 (not c!1349134)) b!7255974))

(declare-fun m!7937132 () Bool)

(assert (=> d!2256572 m!7937132))

(declare-fun m!7937134 () Bool)

(assert (=> b!7255973 m!7937134))

(declare-fun m!7937136 () Bool)

(assert (=> b!7255974 m!7937136))

(assert (=> b!7255974 m!7937136))

(declare-fun m!7937138 () Bool)

(assert (=> b!7255974 m!7937138))

(declare-fun m!7937140 () Bool)

(assert (=> b!7255974 m!7937140))

(assert (=> b!7255974 m!7937138))

(assert (=> b!7255974 m!7937140))

(declare-fun m!7937142 () Bool)

(assert (=> b!7255974 m!7937142))

(assert (=> start!706570 d!2256572))

(declare-fun bs!1907755 () Bool)

(declare-fun d!2256574 () Bool)

(assert (= bs!1907755 (and d!2256574 b!7255820)))

(declare-fun lambda!445112 () Int)

(assert (=> bs!1907755 (= lambda!445112 lambda!445072)))

(assert (=> d!2256574 (= (inv!89666 ct1!232) (forall!17514 (exprs!8102 ct1!232) lambda!445112))))

(declare-fun bs!1907756 () Bool)

(assert (= bs!1907756 d!2256574))

(declare-fun m!7937144 () Bool)

(assert (=> bs!1907756 m!7937144))

(assert (=> start!706570 d!2256574))

(declare-fun bs!1907757 () Bool)

(declare-fun d!2256576 () Bool)

(assert (= bs!1907757 (and d!2256576 b!7255820)))

(declare-fun lambda!445113 () Int)

(assert (=> bs!1907757 (= lambda!445113 lambda!445072)))

(declare-fun bs!1907758 () Bool)

(assert (= bs!1907758 (and d!2256576 d!2256574)))

(assert (=> bs!1907758 (= lambda!445113 lambda!445112)))

(assert (=> d!2256576 (= (inv!89666 ct2!328) (forall!17514 (exprs!8102 ct2!328) lambda!445113))))

(declare-fun bs!1907759 () Bool)

(assert (= bs!1907759 d!2256576))

(declare-fun m!7937146 () Bool)

(assert (=> bs!1907759 m!7937146))

(assert (=> start!706570 d!2256576))

(declare-fun d!2256578 () Bool)

(declare-fun c!1349135 () Bool)

(assert (=> d!2256578 (= c!1349135 (isEmpty!40568 (t!384631 s1!1971)))))

(declare-fun e!4350851 () Bool)

(assert (=> d!2256578 (= (matchZipper!3572 lt!2586980 (t!384631 s1!1971)) e!4350851)))

(declare-fun b!7255975 () Bool)

(assert (=> b!7255975 (= e!4350851 (nullableZipper!2924 lt!2586980))))

(declare-fun b!7255976 () Bool)

(assert (=> b!7255976 (= e!4350851 (matchZipper!3572 (derivationStepZipper!3440 lt!2586980 (head!14921 (t!384631 s1!1971))) (tail!14348 (t!384631 s1!1971))))))

(assert (= (and d!2256578 c!1349135) b!7255975))

(assert (= (and d!2256578 (not c!1349135)) b!7255976))

(declare-fun m!7937148 () Bool)

(assert (=> d!2256578 m!7937148))

(declare-fun m!7937150 () Bool)

(assert (=> b!7255975 m!7937150))

(declare-fun m!7937152 () Bool)

(assert (=> b!7255976 m!7937152))

(assert (=> b!7255976 m!7937152))

(declare-fun m!7937154 () Bool)

(assert (=> b!7255976 m!7937154))

(declare-fun m!7937156 () Bool)

(assert (=> b!7255976 m!7937156))

(assert (=> b!7255976 m!7937154))

(assert (=> b!7255976 m!7937156))

(declare-fun m!7937158 () Bool)

(assert (=> b!7255976 m!7937158))

(assert (=> b!7255826 d!2256578))

(declare-fun d!2256580 () Bool)

(declare-fun c!1349136 () Bool)

(assert (=> d!2256580 (= c!1349136 (isEmpty!40568 s2!1849))))

(declare-fun e!4350852 () Bool)

(assert (=> d!2256580 (= (matchZipper!3572 (set.insert ct2!328 (as set.empty (Set Context!15204))) s2!1849) e!4350852)))

(declare-fun b!7255977 () Bool)

(assert (=> b!7255977 (= e!4350852 (nullableZipper!2924 (set.insert ct2!328 (as set.empty (Set Context!15204)))))))

(declare-fun b!7255978 () Bool)

(assert (=> b!7255978 (= e!4350852 (matchZipper!3572 (derivationStepZipper!3440 (set.insert ct2!328 (as set.empty (Set Context!15204))) (head!14921 s2!1849)) (tail!14348 s2!1849)))))

(assert (= (and d!2256580 c!1349136) b!7255977))

(assert (= (and d!2256580 (not c!1349136)) b!7255978))

(declare-fun m!7937160 () Bool)

(assert (=> d!2256580 m!7937160))

(assert (=> b!7255977 m!7936926))

(declare-fun m!7937162 () Bool)

(assert (=> b!7255977 m!7937162))

(declare-fun m!7937164 () Bool)

(assert (=> b!7255978 m!7937164))

(assert (=> b!7255978 m!7936926))

(assert (=> b!7255978 m!7937164))

(declare-fun m!7937166 () Bool)

(assert (=> b!7255978 m!7937166))

(declare-fun m!7937168 () Bool)

(assert (=> b!7255978 m!7937168))

(assert (=> b!7255978 m!7937166))

(assert (=> b!7255978 m!7937168))

(declare-fun m!7937170 () Bool)

(assert (=> b!7255978 m!7937170))

(assert (=> b!7255827 d!2256580))

(declare-fun d!2256582 () Bool)

(assert (=> d!2256582 (forall!17514 (++!16587 (exprs!8102 lt!2586976) (exprs!8102 ct2!328)) lambda!445072)))

(declare-fun lt!2587108 () Unit!163916)

(assert (=> d!2256582 (= lt!2587108 (choose!56096 (exprs!8102 lt!2586976) (exprs!8102 ct2!328) lambda!445072))))

(assert (=> d!2256582 (forall!17514 (exprs!8102 lt!2586976) lambda!445072)))

(assert (=> d!2256582 (= (lemmaConcatPreservesForall!1469 (exprs!8102 lt!2586976) (exprs!8102 ct2!328) lambda!445072) lt!2587108)))

(declare-fun bs!1907760 () Bool)

(assert (= bs!1907760 d!2256582))

(assert (=> bs!1907760 m!7936936))

(assert (=> bs!1907760 m!7936936))

(declare-fun m!7937172 () Bool)

(assert (=> bs!1907760 m!7937172))

(declare-fun m!7937174 () Bool)

(assert (=> bs!1907760 m!7937174))

(declare-fun m!7937176 () Bool)

(assert (=> bs!1907760 m!7937176))

(assert (=> b!7255818 d!2256582))

(declare-fun d!2256584 () Bool)

(assert (=> d!2256584 (= (isEmpty!40566 (exprs!8102 ct1!232)) (is-Nil!70442 (exprs!8102 ct1!232)))))

(assert (=> b!7255818 d!2256584))

(declare-fun e!4350857 () Bool)

(declare-fun b!7255990 () Bool)

(declare-fun lt!2587111 () List!70566)

(assert (=> b!7255990 (= e!4350857 (or (not (= (exprs!8102 ct2!328) Nil!70442)) (= lt!2587111 (exprs!8102 lt!2586976))))))

(declare-fun d!2256586 () Bool)

(assert (=> d!2256586 e!4350857))

(declare-fun res!2942470 () Bool)

(assert (=> d!2256586 (=> (not res!2942470) (not e!4350857))))

(declare-fun content!14643 (List!70566) (Set Regex!18662))

(assert (=> d!2256586 (= res!2942470 (= (content!14643 lt!2587111) (set.union (content!14643 (exprs!8102 lt!2586976)) (content!14643 (exprs!8102 ct2!328)))))))

(declare-fun e!4350858 () List!70566)

(assert (=> d!2256586 (= lt!2587111 e!4350858)))

(declare-fun c!1349139 () Bool)

(assert (=> d!2256586 (= c!1349139 (is-Nil!70442 (exprs!8102 lt!2586976)))))

(assert (=> d!2256586 (= (++!16587 (exprs!8102 lt!2586976) (exprs!8102 ct2!328)) lt!2587111)))

(declare-fun b!7255987 () Bool)

(assert (=> b!7255987 (= e!4350858 (exprs!8102 ct2!328))))

(declare-fun b!7255989 () Bool)

(declare-fun res!2942469 () Bool)

(assert (=> b!7255989 (=> (not res!2942469) (not e!4350857))))

(declare-fun size!41738 (List!70566) Int)

(assert (=> b!7255989 (= res!2942469 (= (size!41738 lt!2587111) (+ (size!41738 (exprs!8102 lt!2586976)) (size!41738 (exprs!8102 ct2!328)))))))

(declare-fun b!7255988 () Bool)

(assert (=> b!7255988 (= e!4350858 (Cons!70442 (h!76890 (exprs!8102 lt!2586976)) (++!16587 (t!384630 (exprs!8102 lt!2586976)) (exprs!8102 ct2!328))))))

(assert (= (and d!2256586 c!1349139) b!7255987))

(assert (= (and d!2256586 (not c!1349139)) b!7255988))

(assert (= (and d!2256586 res!2942470) b!7255989))

(assert (= (and b!7255989 res!2942469) b!7255990))

(declare-fun m!7937178 () Bool)

(assert (=> d!2256586 m!7937178))

(declare-fun m!7937180 () Bool)

(assert (=> d!2256586 m!7937180))

(declare-fun m!7937182 () Bool)

(assert (=> d!2256586 m!7937182))

(declare-fun m!7937184 () Bool)

(assert (=> b!7255989 m!7937184))

(declare-fun m!7937186 () Bool)

(assert (=> b!7255989 m!7937186))

(declare-fun m!7937188 () Bool)

(assert (=> b!7255989 m!7937188))

(declare-fun m!7937190 () Bool)

(assert (=> b!7255988 m!7937190))

(assert (=> b!7255818 d!2256586))

(declare-fun b!7255994 () Bool)

(declare-fun lt!2587112 () List!70567)

(declare-fun e!4350859 () Bool)

(assert (=> b!7255994 (= e!4350859 (or (not (= s2!1849 Nil!70443)) (= lt!2587112 (t!384631 s1!1971))))))

(declare-fun b!7255991 () Bool)

(declare-fun e!4350860 () List!70567)

(assert (=> b!7255991 (= e!4350860 s2!1849)))

(declare-fun b!7255993 () Bool)

(declare-fun res!2942471 () Bool)

(assert (=> b!7255993 (=> (not res!2942471) (not e!4350859))))

(assert (=> b!7255993 (= res!2942471 (= (size!41737 lt!2587112) (+ (size!41737 (t!384631 s1!1971)) (size!41737 s2!1849))))))

(declare-fun d!2256588 () Bool)

(assert (=> d!2256588 e!4350859))

(declare-fun res!2942472 () Bool)

(assert (=> d!2256588 (=> (not res!2942472) (not e!4350859))))

(assert (=> d!2256588 (= res!2942472 (= (content!14641 lt!2587112) (set.union (content!14641 (t!384631 s1!1971)) (content!14641 s2!1849))))))

(assert (=> d!2256588 (= lt!2587112 e!4350860)))

(declare-fun c!1349140 () Bool)

(assert (=> d!2256588 (= c!1349140 (is-Nil!70443 (t!384631 s1!1971)))))

(assert (=> d!2256588 (= (++!16586 (t!384631 s1!1971) s2!1849) lt!2587112)))

(declare-fun b!7255992 () Bool)

(assert (=> b!7255992 (= e!4350860 (Cons!70443 (h!76891 (t!384631 s1!1971)) (++!16586 (t!384631 (t!384631 s1!1971)) s2!1849)))))

(assert (= (and d!2256588 c!1349140) b!7255991))

(assert (= (and d!2256588 (not c!1349140)) b!7255992))

(assert (= (and d!2256588 res!2942472) b!7255993))

(assert (= (and b!7255993 res!2942471) b!7255994))

(declare-fun m!7937192 () Bool)

(assert (=> b!7255993 m!7937192))

(declare-fun m!7937194 () Bool)

(assert (=> b!7255993 m!7937194))

(assert (=> b!7255993 m!7937072))

(declare-fun m!7937196 () Bool)

(assert (=> d!2256588 m!7937196))

(declare-fun m!7937198 () Bool)

(assert (=> d!2256588 m!7937198))

(assert (=> d!2256588 m!7937078))

(declare-fun m!7937200 () Bool)

(assert (=> b!7255992 m!7937200))

(assert (=> b!7255818 d!2256588))

(assert (=> b!7255818 d!2256550))

(declare-fun d!2256590 () Bool)

(declare-fun c!1349141 () Bool)

(assert (=> d!2256590 (= c!1349141 (isEmpty!40568 lt!2586961))))

(declare-fun e!4350861 () Bool)

(assert (=> d!2256590 (= (matchZipper!3572 (set.insert (Context!15205 lt!2586983) (as set.empty (Set Context!15204))) lt!2586961) e!4350861)))

(declare-fun b!7255995 () Bool)

(assert (=> b!7255995 (= e!4350861 (nullableZipper!2924 (set.insert (Context!15205 lt!2586983) (as set.empty (Set Context!15204)))))))

(declare-fun b!7255996 () Bool)

(assert (=> b!7255996 (= e!4350861 (matchZipper!3572 (derivationStepZipper!3440 (set.insert (Context!15205 lt!2586983) (as set.empty (Set Context!15204))) (head!14921 lt!2586961)) (tail!14348 lt!2586961)))))

(assert (= (and d!2256590 c!1349141) b!7255995))

(assert (= (and d!2256590 (not c!1349141)) b!7255996))

(assert (=> d!2256590 m!7937120))

(assert (=> b!7255995 m!7936930))

(declare-fun m!7937202 () Bool)

(assert (=> b!7255995 m!7937202))

(assert (=> b!7255996 m!7937124))

(assert (=> b!7255996 m!7936930))

(assert (=> b!7255996 m!7937124))

(declare-fun m!7937204 () Bool)

(assert (=> b!7255996 m!7937204))

(assert (=> b!7255996 m!7937128))

(assert (=> b!7255996 m!7937204))

(assert (=> b!7255996 m!7937128))

(declare-fun m!7937206 () Bool)

(assert (=> b!7255996 m!7937206))

(assert (=> b!7255818 d!2256590))

(declare-fun bs!1907761 () Bool)

(declare-fun d!2256592 () Bool)

(assert (= bs!1907761 (and d!2256592 b!7255820)))

(declare-fun lambda!445116 () Int)

(assert (=> bs!1907761 (= lambda!445116 lambda!445072)))

(declare-fun bs!1907762 () Bool)

(assert (= bs!1907762 (and d!2256592 d!2256574)))

(assert (=> bs!1907762 (= lambda!445116 lambda!445112)))

(declare-fun bs!1907763 () Bool)

(assert (= bs!1907763 (and d!2256592 d!2256576)))

(assert (=> bs!1907763 (= lambda!445116 lambda!445113)))

(assert (=> d!2256592 (matchZipper!3572 (set.insert (Context!15205 (++!16587 (exprs!8102 lt!2586976) (exprs!8102 ct2!328))) (as set.empty (Set Context!15204))) (++!16586 (t!384631 s1!1971) s2!1849))))

(declare-fun lt!2587118 () Unit!163916)

(assert (=> d!2256592 (= lt!2587118 (lemmaConcatPreservesForall!1469 (exprs!8102 lt!2586976) (exprs!8102 ct2!328) lambda!445116))))

(declare-fun lt!2587117 () Unit!163916)

(declare-fun choose!56102 (Context!15204 Context!15204 List!70567 List!70567) Unit!163916)

(assert (=> d!2256592 (= lt!2587117 (choose!56102 lt!2586976 ct2!328 (t!384631 s1!1971) s2!1849))))

(assert (=> d!2256592 (matchZipper!3572 (set.insert lt!2586976 (as set.empty (Set Context!15204))) (t!384631 s1!1971))))

(assert (=> d!2256592 (= (lemmaConcatenateContextMatchesConcatOfStrings!407 lt!2586976 ct2!328 (t!384631 s1!1971) s2!1849) lt!2587117)))

(declare-fun bs!1907764 () Bool)

(assert (= bs!1907764 d!2256592))

(assert (=> bs!1907764 m!7936942))

(declare-fun m!7937208 () Bool)

(assert (=> bs!1907764 m!7937208))

(declare-fun m!7937210 () Bool)

(assert (=> bs!1907764 m!7937210))

(assert (=> bs!1907764 m!7936936))

(assert (=> bs!1907764 m!7937210))

(declare-fun m!7937212 () Bool)

(assert (=> bs!1907764 m!7937212))

(declare-fun m!7937214 () Bool)

(assert (=> bs!1907764 m!7937214))

(declare-fun m!7937216 () Bool)

(assert (=> bs!1907764 m!7937216))

(assert (=> bs!1907764 m!7936942))

(declare-fun m!7937218 () Bool)

(assert (=> bs!1907764 m!7937218))

(assert (=> bs!1907764 m!7937216))

(assert (=> b!7255818 d!2256592))

(declare-fun d!2256594 () Bool)

(declare-fun e!4350864 () Bool)

(assert (=> d!2256594 e!4350864))

(declare-fun res!2942475 () Bool)

(assert (=> d!2256594 (=> (not res!2942475) (not e!4350864))))

(declare-fun lt!2587121 () Context!15204)

(declare-fun dynLambda!28782 (Int Context!15204) Bool)

(assert (=> d!2256594 (= res!2942475 (dynLambda!28782 lambda!445073 lt!2587121))))

(declare-fun getWitness!2233 (List!70568 Int) Context!15204)

(assert (=> d!2256594 (= lt!2587121 (getWitness!2233 (toList!11491 lt!2586984) lambda!445073))))

(assert (=> d!2256594 (exists!4402 lt!2586984 lambda!445073)))

(assert (=> d!2256594 (= (getWitness!2231 lt!2586984 lambda!445073) lt!2587121)))

(declare-fun b!7255999 () Bool)

(assert (=> b!7255999 (= e!4350864 (set.member lt!2587121 lt!2586984))))

(assert (= (and d!2256594 res!2942475) b!7255999))

(declare-fun b_lambda!278985 () Bool)

(assert (=> (not b_lambda!278985) (not d!2256594)))

(declare-fun m!7937220 () Bool)

(assert (=> d!2256594 m!7937220))

(assert (=> d!2256594 m!7936878))

(assert (=> d!2256594 m!7936878))

(declare-fun m!7937222 () Bool)

(assert (=> d!2256594 m!7937222))

(assert (=> d!2256594 m!7936872))

(declare-fun m!7937224 () Bool)

(assert (=> b!7255999 m!7937224))

(assert (=> b!7255818 d!2256594))

(declare-fun d!2256596 () Bool)

(declare-fun c!1349143 () Bool)

(declare-fun e!4350865 () Bool)

(assert (=> d!2256596 (= c!1349143 e!4350865)))

(declare-fun res!2942476 () Bool)

(assert (=> d!2256596 (=> (not res!2942476) (not e!4350865))))

(assert (=> d!2256596 (= res!2942476 (is-Cons!70442 (exprs!8102 lt!2586963)))))

(declare-fun e!4350867 () (Set Context!15204))

(assert (=> d!2256596 (= (derivationStepZipperUp!2486 lt!2586963 (h!76891 s1!1971)) e!4350867)))

(declare-fun b!7256000 () Bool)

(declare-fun e!4350866 () (Set Context!15204))

(assert (=> b!7256000 (= e!4350867 e!4350866)))

(declare-fun c!1349142 () Bool)

(assert (=> b!7256000 (= c!1349142 (is-Cons!70442 (exprs!8102 lt!2586963)))))

(declare-fun bm!661219 () Bool)

(declare-fun call!661224 () (Set Context!15204))

(assert (=> bm!661219 (= call!661224 (derivationStepZipperDown!2656 (h!76890 (exprs!8102 lt!2586963)) (Context!15205 (t!384630 (exprs!8102 lt!2586963))) (h!76891 s1!1971)))))

(declare-fun b!7256001 () Bool)

(assert (=> b!7256001 (= e!4350866 call!661224)))

(declare-fun b!7256002 () Bool)

(assert (=> b!7256002 (= e!4350866 (as set.empty (Set Context!15204)))))

(declare-fun b!7256003 () Bool)

(assert (=> b!7256003 (= e!4350865 (nullable!7922 (h!76890 (exprs!8102 lt!2586963))))))

(declare-fun b!7256004 () Bool)

(assert (=> b!7256004 (= e!4350867 (set.union call!661224 (derivationStepZipperUp!2486 (Context!15205 (t!384630 (exprs!8102 lt!2586963))) (h!76891 s1!1971))))))

(assert (= (and d!2256596 res!2942476) b!7256003))

(assert (= (and d!2256596 c!1349143) b!7256004))

(assert (= (and d!2256596 (not c!1349143)) b!7256000))

(assert (= (and b!7256000 c!1349142) b!7256001))

(assert (= (and b!7256000 (not c!1349142)) b!7256002))

(assert (= (or b!7256004 b!7256001) bm!661219))

(declare-fun m!7937226 () Bool)

(assert (=> bm!661219 m!7937226))

(declare-fun m!7937228 () Bool)

(assert (=> b!7256003 m!7937228))

(declare-fun m!7937230 () Bool)

(assert (=> b!7256004 m!7937230))

(assert (=> b!7255828 d!2256596))

(declare-fun d!2256598 () Bool)

(declare-fun c!1349145 () Bool)

(declare-fun e!4350868 () Bool)

(assert (=> d!2256598 (= c!1349145 e!4350868)))

(declare-fun res!2942477 () Bool)

(assert (=> d!2256598 (=> (not res!2942477) (not e!4350868))))

(assert (=> d!2256598 (= res!2942477 (is-Cons!70442 (exprs!8102 lt!2586965)))))

(declare-fun e!4350870 () (Set Context!15204))

(assert (=> d!2256598 (= (derivationStepZipperUp!2486 lt!2586965 (h!76891 s1!1971)) e!4350870)))

(declare-fun b!7256005 () Bool)

(declare-fun e!4350869 () (Set Context!15204))

(assert (=> b!7256005 (= e!4350870 e!4350869)))

(declare-fun c!1349144 () Bool)

(assert (=> b!7256005 (= c!1349144 (is-Cons!70442 (exprs!8102 lt!2586965)))))

(declare-fun bm!661220 () Bool)

(declare-fun call!661225 () (Set Context!15204))

(assert (=> bm!661220 (= call!661225 (derivationStepZipperDown!2656 (h!76890 (exprs!8102 lt!2586965)) (Context!15205 (t!384630 (exprs!8102 lt!2586965))) (h!76891 s1!1971)))))

(declare-fun b!7256006 () Bool)

(assert (=> b!7256006 (= e!4350869 call!661225)))

(declare-fun b!7256007 () Bool)

(assert (=> b!7256007 (= e!4350869 (as set.empty (Set Context!15204)))))

(declare-fun b!7256008 () Bool)

(assert (=> b!7256008 (= e!4350868 (nullable!7922 (h!76890 (exprs!8102 lt!2586965))))))

(declare-fun b!7256009 () Bool)

(assert (=> b!7256009 (= e!4350870 (set.union call!661225 (derivationStepZipperUp!2486 (Context!15205 (t!384630 (exprs!8102 lt!2586965))) (h!76891 s1!1971))))))

(assert (= (and d!2256598 res!2942477) b!7256008))

(assert (= (and d!2256598 c!1349145) b!7256009))

(assert (= (and d!2256598 (not c!1349145)) b!7256005))

(assert (= (and b!7256005 c!1349144) b!7256006))

(assert (= (and b!7256005 (not c!1349144)) b!7256007))

(assert (= (or b!7256009 b!7256006) bm!661220))

(declare-fun m!7937232 () Bool)

(assert (=> bm!661220 m!7937232))

(declare-fun m!7937234 () Bool)

(assert (=> b!7256008 m!7937234))

(declare-fun m!7937236 () Bool)

(assert (=> b!7256009 m!7937236))

(assert (=> b!7255828 d!2256598))

(assert (=> b!7255828 d!2256536))

(declare-fun d!2256600 () Bool)

(declare-fun c!1349146 () Bool)

(assert (=> d!2256600 (= c!1349146 (isEmpty!40568 lt!2586961))))

(declare-fun e!4350871 () Bool)

(assert (=> d!2256600 (= (matchZipper!3572 lt!2586990 lt!2586961) e!4350871)))

(declare-fun b!7256010 () Bool)

(assert (=> b!7256010 (= e!4350871 (nullableZipper!2924 lt!2586990))))

(declare-fun b!7256011 () Bool)

(assert (=> b!7256011 (= e!4350871 (matchZipper!3572 (derivationStepZipper!3440 lt!2586990 (head!14921 lt!2586961)) (tail!14348 lt!2586961)))))

(assert (= (and d!2256600 c!1349146) b!7256010))

(assert (= (and d!2256600 (not c!1349146)) b!7256011))

(assert (=> d!2256600 m!7937120))

(declare-fun m!7937238 () Bool)

(assert (=> b!7256010 m!7937238))

(assert (=> b!7256011 m!7937124))

(assert (=> b!7256011 m!7937124))

(declare-fun m!7937240 () Bool)

(assert (=> b!7256011 m!7937240))

(assert (=> b!7256011 m!7937128))

(assert (=> b!7256011 m!7937240))

(assert (=> b!7256011 m!7937128))

(declare-fun m!7937242 () Bool)

(assert (=> b!7256011 m!7937242))

(assert (=> b!7255828 d!2256600))

(declare-fun d!2256602 () Bool)

(declare-fun c!1349147 () Bool)

(assert (=> d!2256602 (= c!1349147 (isEmpty!40568 (t!384631 s1!1971)))))

(declare-fun e!4350872 () Bool)

(assert (=> d!2256602 (= (matchZipper!3572 (set.union lt!2586970 lt!2586980) (t!384631 s1!1971)) e!4350872)))

(declare-fun b!7256012 () Bool)

(assert (=> b!7256012 (= e!4350872 (nullableZipper!2924 (set.union lt!2586970 lt!2586980)))))

(declare-fun b!7256013 () Bool)

(assert (=> b!7256013 (= e!4350872 (matchZipper!3572 (derivationStepZipper!3440 (set.union lt!2586970 lt!2586980) (head!14921 (t!384631 s1!1971))) (tail!14348 (t!384631 s1!1971))))))

(assert (= (and d!2256602 c!1349147) b!7256012))

(assert (= (and d!2256602 (not c!1349147)) b!7256013))

(assert (=> d!2256602 m!7937148))

(declare-fun m!7937244 () Bool)

(assert (=> b!7256012 m!7937244))

(assert (=> b!7256013 m!7937152))

(assert (=> b!7256013 m!7937152))

(declare-fun m!7937246 () Bool)

(assert (=> b!7256013 m!7937246))

(assert (=> b!7256013 m!7937156))

(assert (=> b!7256013 m!7937246))

(assert (=> b!7256013 m!7937156))

(declare-fun m!7937248 () Bool)

(assert (=> b!7256013 m!7937248))

(assert (=> b!7255828 d!2256602))

(declare-fun e!4350875 () Bool)

(declare-fun d!2256604 () Bool)

(assert (=> d!2256604 (= (matchZipper!3572 (set.union lt!2586990 lt!2586964) lt!2586961) e!4350875)))

(declare-fun res!2942480 () Bool)

(assert (=> d!2256604 (=> res!2942480 e!4350875)))

(assert (=> d!2256604 (= res!2942480 (matchZipper!3572 lt!2586990 lt!2586961))))

(declare-fun lt!2587124 () Unit!163916)

(declare-fun choose!56103 ((Set Context!15204) (Set Context!15204) List!70567) Unit!163916)

(assert (=> d!2256604 (= lt!2587124 (choose!56103 lt!2586990 lt!2586964 lt!2586961))))

(assert (=> d!2256604 (= (lemmaZipperConcatMatchesSameAsBothZippers!1717 lt!2586990 lt!2586964 lt!2586961) lt!2587124)))

(declare-fun b!7256016 () Bool)

(assert (=> b!7256016 (= e!4350875 (matchZipper!3572 lt!2586964 lt!2586961))))

(assert (= (and d!2256604 (not res!2942480)) b!7256016))

(assert (=> d!2256604 m!7936882))

(assert (=> d!2256604 m!7936894))

(declare-fun m!7937250 () Bool)

(assert (=> d!2256604 m!7937250))

(assert (=> b!7256016 m!7936870))

(assert (=> b!7255828 d!2256604))

(declare-fun e!4350876 () Bool)

(declare-fun d!2256606 () Bool)

(assert (=> d!2256606 (= (matchZipper!3572 (set.union lt!2586970 lt!2586980) (t!384631 s1!1971)) e!4350876)))

(declare-fun res!2942481 () Bool)

(assert (=> d!2256606 (=> res!2942481 e!4350876)))

(assert (=> d!2256606 (= res!2942481 (matchZipper!3572 lt!2586970 (t!384631 s1!1971)))))

(declare-fun lt!2587125 () Unit!163916)

(assert (=> d!2256606 (= lt!2587125 (choose!56103 lt!2586970 lt!2586980 (t!384631 s1!1971)))))

(assert (=> d!2256606 (= (lemmaZipperConcatMatchesSameAsBothZippers!1717 lt!2586970 lt!2586980 (t!384631 s1!1971)) lt!2587125)))

(declare-fun b!7256017 () Bool)

(assert (=> b!7256017 (= e!4350876 (matchZipper!3572 lt!2586980 (t!384631 s1!1971)))))

(assert (= (and d!2256606 (not res!2942481)) b!7256017))

(assert (=> d!2256606 m!7936896))

(assert (=> d!2256606 m!7936886))

(declare-fun m!7937252 () Bool)

(assert (=> d!2256606 m!7937252))

(assert (=> b!7256017 m!7936880))

(assert (=> b!7255828 d!2256606))

(declare-fun d!2256608 () Bool)

(declare-fun c!1349148 () Bool)

(assert (=> d!2256608 (= c!1349148 (isEmpty!40568 (t!384631 s1!1971)))))

(declare-fun e!4350877 () Bool)

(assert (=> d!2256608 (= (matchZipper!3572 lt!2586970 (t!384631 s1!1971)) e!4350877)))

(declare-fun b!7256018 () Bool)

(assert (=> b!7256018 (= e!4350877 (nullableZipper!2924 lt!2586970))))

(declare-fun b!7256019 () Bool)

(assert (=> b!7256019 (= e!4350877 (matchZipper!3572 (derivationStepZipper!3440 lt!2586970 (head!14921 (t!384631 s1!1971))) (tail!14348 (t!384631 s1!1971))))))

(assert (= (and d!2256608 c!1349148) b!7256018))

(assert (= (and d!2256608 (not c!1349148)) b!7256019))

(assert (=> d!2256608 m!7937148))

(declare-fun m!7937254 () Bool)

(assert (=> b!7256018 m!7937254))

(assert (=> b!7256019 m!7937152))

(assert (=> b!7256019 m!7937152))

(declare-fun m!7937256 () Bool)

(assert (=> b!7256019 m!7937256))

(assert (=> b!7256019 m!7937156))

(assert (=> b!7256019 m!7937256))

(assert (=> b!7256019 m!7937156))

(declare-fun m!7937258 () Bool)

(assert (=> b!7256019 m!7937258))

(assert (=> b!7255828 d!2256608))

(declare-fun d!2256610 () Bool)

(declare-fun c!1349149 () Bool)

(assert (=> d!2256610 (= c!1349149 (isEmpty!40568 lt!2586961))))

(declare-fun e!4350878 () Bool)

(assert (=> d!2256610 (= (matchZipper!3572 (set.union lt!2586990 lt!2586964) lt!2586961) e!4350878)))

(declare-fun b!7256020 () Bool)

(assert (=> b!7256020 (= e!4350878 (nullableZipper!2924 (set.union lt!2586990 lt!2586964)))))

(declare-fun b!7256021 () Bool)

(assert (=> b!7256021 (= e!4350878 (matchZipper!3572 (derivationStepZipper!3440 (set.union lt!2586990 lt!2586964) (head!14921 lt!2586961)) (tail!14348 lt!2586961)))))

(assert (= (and d!2256610 c!1349149) b!7256020))

(assert (= (and d!2256610 (not c!1349149)) b!7256021))

(assert (=> d!2256610 m!7937120))

(declare-fun m!7937260 () Bool)

(assert (=> b!7256020 m!7937260))

(assert (=> b!7256021 m!7937124))

(assert (=> b!7256021 m!7937124))

(declare-fun m!7937262 () Bool)

(assert (=> b!7256021 m!7937262))

(assert (=> b!7256021 m!7937128))

(assert (=> b!7256021 m!7937262))

(assert (=> b!7256021 m!7937128))

(declare-fun m!7937264 () Bool)

(assert (=> b!7256021 m!7937264))

(assert (=> b!7255828 d!2256610))

(declare-fun d!2256612 () Bool)

(declare-fun c!1349150 () Bool)

(assert (=> d!2256612 (= c!1349150 (isEmpty!40568 (t!384631 s1!1971)))))

(declare-fun e!4350879 () Bool)

(assert (=> d!2256612 (= (matchZipper!3572 lt!2586984 (t!384631 s1!1971)) e!4350879)))

(declare-fun b!7256022 () Bool)

(assert (=> b!7256022 (= e!4350879 (nullableZipper!2924 lt!2586984))))

(declare-fun b!7256023 () Bool)

(assert (=> b!7256023 (= e!4350879 (matchZipper!3572 (derivationStepZipper!3440 lt!2586984 (head!14921 (t!384631 s1!1971))) (tail!14348 (t!384631 s1!1971))))))

(assert (= (and d!2256612 c!1349150) b!7256022))

(assert (= (and d!2256612 (not c!1349150)) b!7256023))

(assert (=> d!2256612 m!7937148))

(declare-fun m!7937266 () Bool)

(assert (=> b!7256022 m!7937266))

(assert (=> b!7256023 m!7937152))

(assert (=> b!7256023 m!7937152))

(declare-fun m!7937268 () Bool)

(assert (=> b!7256023 m!7937268))

(assert (=> b!7256023 m!7937156))

(assert (=> b!7256023 m!7937268))

(assert (=> b!7256023 m!7937156))

(declare-fun m!7937270 () Bool)

(assert (=> b!7256023 m!7937270))

(assert (=> b!7255819 d!2256612))

(declare-fun bs!1907765 () Bool)

(declare-fun d!2256614 () Bool)

(assert (= bs!1907765 (and d!2256614 b!7255823)))

(declare-fun lambda!445119 () Int)

(assert (=> bs!1907765 (= lambda!445119 lambda!445074)))

(assert (=> d!2256614 true))

(assert (=> d!2256614 (= (derivationStepZipper!3440 lt!2586982 (h!76891 s1!1971)) (flatMap!2827 lt!2586982 lambda!445119))))

(declare-fun bs!1907766 () Bool)

(assert (= bs!1907766 d!2256614))

(declare-fun m!7937272 () Bool)

(assert (=> bs!1907766 m!7937272))

(assert (=> b!7255819 d!2256614))

(declare-fun lt!2587126 () List!70566)

(declare-fun e!4350880 () Bool)

(declare-fun b!7256029 () Bool)

(assert (=> b!7256029 (= e!4350880 (or (not (= (exprs!8102 ct2!328) Nil!70442)) (= lt!2587126 (exprs!8102 ct1!232))))))

(declare-fun d!2256616 () Bool)

(assert (=> d!2256616 e!4350880))

(declare-fun res!2942483 () Bool)

(assert (=> d!2256616 (=> (not res!2942483) (not e!4350880))))

(assert (=> d!2256616 (= res!2942483 (= (content!14643 lt!2587126) (set.union (content!14643 (exprs!8102 ct1!232)) (content!14643 (exprs!8102 ct2!328)))))))

(declare-fun e!4350881 () List!70566)

(assert (=> d!2256616 (= lt!2587126 e!4350881)))

(declare-fun c!1349153 () Bool)

(assert (=> d!2256616 (= c!1349153 (is-Nil!70442 (exprs!8102 ct1!232)))))

(assert (=> d!2256616 (= (++!16587 (exprs!8102 ct1!232) (exprs!8102 ct2!328)) lt!2587126)))

(declare-fun b!7256026 () Bool)

(assert (=> b!7256026 (= e!4350881 (exprs!8102 ct2!328))))

(declare-fun b!7256028 () Bool)

(declare-fun res!2942482 () Bool)

(assert (=> b!7256028 (=> (not res!2942482) (not e!4350880))))

(assert (=> b!7256028 (= res!2942482 (= (size!41738 lt!2587126) (+ (size!41738 (exprs!8102 ct1!232)) (size!41738 (exprs!8102 ct2!328)))))))

(declare-fun b!7256027 () Bool)

(assert (=> b!7256027 (= e!4350881 (Cons!70442 (h!76890 (exprs!8102 ct1!232)) (++!16587 (t!384630 (exprs!8102 ct1!232)) (exprs!8102 ct2!328))))))

(assert (= (and d!2256616 c!1349153) b!7256026))

(assert (= (and d!2256616 (not c!1349153)) b!7256027))

(assert (= (and d!2256616 res!2942483) b!7256028))

(assert (= (and b!7256028 res!2942482) b!7256029))

(declare-fun m!7937274 () Bool)

(assert (=> d!2256616 m!7937274))

(declare-fun m!7937276 () Bool)

(assert (=> d!2256616 m!7937276))

(assert (=> d!2256616 m!7937182))

(declare-fun m!7937278 () Bool)

(assert (=> b!7256028 m!7937278))

(declare-fun m!7937280 () Bool)

(assert (=> b!7256028 m!7937280))

(assert (=> b!7256028 m!7937188))

(declare-fun m!7937282 () Bool)

(assert (=> b!7256027 m!7937282))

(assert (=> b!7255820 d!2256616))

(assert (=> b!7255820 d!2256536))

(declare-fun b!7256034 () Bool)

(declare-fun e!4350884 () Bool)

(declare-fun tp!2038173 () Bool)

(assert (=> b!7256034 (= e!4350884 (and tp_is_empty!46789 tp!2038173))))

(assert (=> b!7255829 (= tp!2038157 e!4350884)))

(assert (= (and b!7255829 (is-Cons!70443 (t!384631 s2!1849))) b!7256034))

(declare-fun b!7256035 () Bool)

(declare-fun e!4350885 () Bool)

(declare-fun tp!2038174 () Bool)

(assert (=> b!7256035 (= e!4350885 (and tp_is_empty!46789 tp!2038174))))

(assert (=> b!7255830 (= tp!2038155 e!4350885)))

(assert (= (and b!7255830 (is-Cons!70443 (t!384631 s1!1971))) b!7256035))

(declare-fun b!7256040 () Bool)

(declare-fun e!4350888 () Bool)

(declare-fun tp!2038179 () Bool)

(declare-fun tp!2038180 () Bool)

(assert (=> b!7256040 (= e!4350888 (and tp!2038179 tp!2038180))))

(assert (=> b!7255821 (= tp!2038158 e!4350888)))

(assert (= (and b!7255821 (is-Cons!70442 (exprs!8102 ct1!232))) b!7256040))

(declare-fun b!7256041 () Bool)

(declare-fun e!4350889 () Bool)

(declare-fun tp!2038181 () Bool)

(declare-fun tp!2038182 () Bool)

(assert (=> b!7256041 (= e!4350889 (and tp!2038181 tp!2038182))))

(assert (=> b!7255831 (= tp!2038156 e!4350889)))

(assert (= (and b!7255831 (is-Cons!70442 (exprs!8102 ct2!328))) b!7256041))

(declare-fun b_lambda!278987 () Bool)

(assert (= b_lambda!278985 (or b!7255825 b_lambda!278987)))

(declare-fun bs!1907767 () Bool)

(declare-fun d!2256618 () Bool)

(assert (= bs!1907767 (and d!2256618 b!7255825)))

(assert (=> bs!1907767 (= (dynLambda!28782 lambda!445073 lt!2587121) (matchZipper!3572 (set.insert lt!2587121 (as set.empty (Set Context!15204))) (t!384631 s1!1971)))))

(declare-fun m!7937284 () Bool)

(assert (=> bs!1907767 m!7937284))

(assert (=> bs!1907767 m!7937284))

(declare-fun m!7937286 () Bool)

(assert (=> bs!1907767 m!7937286))

(assert (=> d!2256594 d!2256618))

(declare-fun b_lambda!278989 () Bool)

(assert (= b_lambda!278983 (or b!7255823 b_lambda!278989)))

(declare-fun bs!1907768 () Bool)

(declare-fun d!2256620 () Bool)

(assert (= bs!1907768 (and d!2256620 b!7255823)))

(assert (=> bs!1907768 (= (dynLambda!28780 lambda!445074 ct1!232) (derivationStepZipperUp!2486 ct1!232 (h!76891 s1!1971)))))

(assert (=> bs!1907768 m!7936906))

(assert (=> d!2256558 d!2256620))

(declare-fun b_lambda!278991 () Bool)

(assert (= b_lambda!278981 (or b!7255823 b_lambda!278991)))

(declare-fun bs!1907769 () Bool)

(declare-fun d!2256622 () Bool)

(assert (= bs!1907769 (and d!2256622 b!7255823)))

(assert (=> bs!1907769 (= (dynLambda!28780 lambda!445074 lt!2586973) (derivationStepZipperUp!2486 lt!2586973 (h!76891 s1!1971)))))

(assert (=> bs!1907769 m!7936864))

(assert (=> d!2256542 d!2256622))

(push 1)

(assert (not bm!661211))

(assert (not b!7256003))

(assert (not b!7256009))

(assert (not b!7256017))

(assert (not d!2256610))

(assert (not bs!1907767))

(assert (not b!7256012))

(assert (not bm!661219))

(assert (not b!7255974))

(assert (not bm!661206))

(assert (not d!2256562))

(assert (not d!2256578))

(assert (not d!2256582))

(assert (not d!2256576))

(assert (not b!7256020))

(assert (not d!2256546))

(assert (not b!7255975))

(assert (not b!7255944))

(assert (not d!2256558))

(assert (not b!7255978))

(assert (not b!7255900))

(assert (not bm!661208))

(assert (not bm!661218))

(assert (not d!2256594))

(assert (not b!7256010))

(assert (not b_lambda!278991))

(assert (not b!7255899))

(assert (not d!2256604))

(assert (not b!7255966))

(assert (not b!7255973))

(assert (not d!2256608))

(assert (not b!7255988))

(assert (not d!2256542))

(assert (not b!7256004))

(assert (not bm!661220))

(assert (not b!7255976))

(assert (not b!7256041))

(assert (not d!2256572))

(assert (not b_lambda!278987))

(assert (not b!7256021))

(assert (not b_lambda!278989))

(assert (not b!7255961))

(assert (not bm!661212))

(assert (not bs!1907769))

(assert (not b!7255993))

(assert (not b!7256008))

(assert (not b!7256035))

(assert (not d!2256556))

(assert (not b!7256016))

(assert (not d!2256570))

(assert (not b!7255992))

(assert (not b!7255932))

(assert (not bm!661217))

(assert (not b!7255972))

(assert (not b!7256023))

(assert (not b!7256028))

(assert (not bs!1907768))

(assert tp_is_empty!46789)

(assert (not b!7256018))

(assert (not d!2256602))

(assert (not d!2256600))

(assert (not b!7256013))

(assert (not b!7255971))

(assert (not d!2256564))

(assert (not d!2256590))

(assert (not b!7255977))

(assert (not b!7256027))

(assert (not b!7256034))

(assert (not d!2256592))

(assert (not b!7256040))

(assert (not b!7255943))

(assert (not b!7255989))

(assert (not d!2256616))

(assert (not d!2256580))

(assert (not b!7256019))

(assert (not b!7255995))

(assert (not d!2256536))

(assert (not d!2256614))

(assert (not d!2256588))

(assert (not b!7256022))

(assert (not b!7256011))

(assert (not b!7255960))

(assert (not b!7255955))

(assert (not d!2256544))

(assert (not d!2256606))

(assert (not d!2256612))

(assert (not b!7255996))

(assert (not d!2256586))

(assert (not d!2256554))

(assert (not bm!661214))

(assert (not bm!661193))

(assert (not d!2256568))

(assert (not d!2256574))

(assert (not d!2256566))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

