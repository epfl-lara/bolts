; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!706812 () Bool)

(assert start!706812)

(declare-fun b!7256959 () Bool)

(assert (=> b!7256959 true))

(declare-fun b!7256961 () Bool)

(assert (=> b!7256961 true))

(declare-fun b!7256954 () Bool)

(declare-fun e!4351463 () Bool)

(declare-fun e!4351470 () Bool)

(assert (=> b!7256954 (= e!4351463 e!4351470)))

(declare-fun res!2942770 () Bool)

(assert (=> b!7256954 (=> res!2942770 e!4351470)))

(declare-datatypes ((C!37610 0))(
  ( (C!37611 (val!28753 Int)) )
))
(declare-datatypes ((Regex!18668 0))(
  ( (ElementMatch!18668 (c!1349469 C!37610)) (Concat!27513 (regOne!37848 Regex!18668) (regTwo!37848 Regex!18668)) (EmptyExpr!18668) (Star!18668 (reg!18997 Regex!18668)) (EmptyLang!18668) (Union!18668 (regOne!37849 Regex!18668) (regTwo!37849 Regex!18668)) )
))
(declare-datatypes ((List!70584 0))(
  ( (Nil!70460) (Cons!70460 (h!76908 Regex!18668) (t!384648 List!70584)) )
))
(declare-fun lt!2587799 () List!70584)

(declare-fun isEmpty!40577 (List!70584) Bool)

(assert (=> b!7256954 (= res!2942770 (isEmpty!40577 lt!2587799))))

(declare-fun lambda!445362 () Int)

(declare-datatypes ((Unit!163940 0))(
  ( (Unit!163941) )
))
(declare-fun lt!2587809 () Unit!163940)

(declare-datatypes ((Context!15216 0))(
  ( (Context!15217 (exprs!8108 List!70584)) )
))
(declare-fun ct1!232 () Context!15216)

(declare-fun ct2!328 () Context!15216)

(declare-fun lemmaConcatPreservesForall!1475 (List!70584 List!70584 Int) Unit!163940)

(assert (=> b!7256954 (= lt!2587809 (lemmaConcatPreservesForall!1475 (exprs!8108 ct1!232) (exprs!8108 ct2!328) lambda!445362))))

(declare-fun lt!2587825 () (Set Context!15216))

(declare-fun lt!2587823 () Context!15216)

(declare-datatypes ((List!70585 0))(
  ( (Nil!70461) (Cons!70461 (h!76909 C!37610) (t!384649 List!70585)) )
))
(declare-fun s1!1971 () List!70585)

(declare-fun derivationStepZipperUp!2492 (Context!15216 C!37610) (Set Context!15216))

(assert (=> b!7256954 (= lt!2587825 (derivationStepZipperUp!2492 lt!2587823 (h!76909 s1!1971)))))

(declare-fun lt!2587821 () Unit!163940)

(assert (=> b!7256954 (= lt!2587821 (lemmaConcatPreservesForall!1475 (exprs!8108 ct1!232) (exprs!8108 ct2!328) lambda!445362))))

(declare-fun lt!2587813 () Context!15216)

(declare-fun lt!2587801 () (Set Context!15216))

(declare-fun derivationStepZipperDown!2662 (Regex!18668 Context!15216 C!37610) (Set Context!15216))

(assert (=> b!7256954 (= lt!2587801 (derivationStepZipperDown!2662 (h!76908 (exprs!8108 ct1!232)) lt!2587813 (h!76909 s1!1971)))))

(declare-fun tail!14360 (List!70584) List!70584)

(assert (=> b!7256954 (= lt!2587813 (Context!15217 (tail!14360 (exprs!8108 ct1!232))))))

(declare-fun b!7256955 () Bool)

(declare-fun e!4351461 () Bool)

(declare-fun tp!2038302 () Bool)

(assert (=> b!7256955 (= e!4351461 tp!2038302)))

(declare-fun b!7256956 () Bool)

(declare-fun e!4351471 () Bool)

(assert (=> b!7256956 (= e!4351471 e!4351463)))

(declare-fun res!2942771 () Bool)

(assert (=> b!7256956 (=> res!2942771 e!4351463)))

(assert (=> b!7256956 (= res!2942771 (isEmpty!40577 (exprs!8108 ct1!232)))))

(declare-fun lt!2587803 () (Set Context!15216))

(assert (=> b!7256956 (= lt!2587803 (derivationStepZipperUp!2492 ct1!232 (h!76909 s1!1971)))))

(declare-fun lt!2587829 () Unit!163940)

(declare-fun lt!2587797 () Context!15216)

(assert (=> b!7256956 (= lt!2587829 (lemmaConcatPreservesForall!1475 (exprs!8108 lt!2587797) (exprs!8108 ct2!328) lambda!445362))))

(declare-fun lt!2587811 () Context!15216)

(declare-fun lt!2587819 () List!70585)

(declare-fun matchZipper!3578 ((Set Context!15216) List!70585) Bool)

(assert (=> b!7256956 (matchZipper!3578 (set.insert lt!2587811 (as set.empty (Set Context!15216))) lt!2587819)))

(declare-fun s2!1849 () List!70585)

(declare-fun ++!16598 (List!70585 List!70585) List!70585)

(assert (=> b!7256956 (= lt!2587819 (++!16598 (t!384649 s1!1971) s2!1849))))

(declare-fun ++!16599 (List!70584 List!70584) List!70584)

(assert (=> b!7256956 (= lt!2587811 (Context!15217 (++!16599 (exprs!8108 lt!2587797) (exprs!8108 ct2!328))))))

(declare-fun lt!2587812 () Unit!163940)

(assert (=> b!7256956 (= lt!2587812 (lemmaConcatPreservesForall!1475 (exprs!8108 lt!2587797) (exprs!8108 ct2!328) lambda!445362))))

(declare-fun lt!2587800 () Unit!163940)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!413 (Context!15216 Context!15216 List!70585 List!70585) Unit!163940)

(assert (=> b!7256956 (= lt!2587800 (lemmaConcatenateContextMatchesConcatOfStrings!413 lt!2587797 ct2!328 (t!384649 s1!1971) s2!1849))))

(declare-fun lt!2587802 () (Set Context!15216))

(declare-fun lambda!445363 () Int)

(declare-fun getWitness!2241 ((Set Context!15216) Int) Context!15216)

(assert (=> b!7256956 (= lt!2587797 (getWitness!2241 lt!2587802 lambda!445363))))

(declare-fun b!7256957 () Bool)

(declare-fun e!4351472 () Bool)

(declare-fun tp_is_empty!46801 () Bool)

(declare-fun tp!2038299 () Bool)

(assert (=> b!7256957 (= e!4351472 (and tp_is_empty!46801 tp!2038299))))

(declare-fun b!7256958 () Bool)

(declare-fun e!4351465 () Bool)

(declare-fun tp!2038301 () Bool)

(assert (=> b!7256958 (= e!4351465 (and tp_is_empty!46801 tp!2038301))))

(declare-fun e!4351468 () Bool)

(assert (=> b!7256959 (= e!4351468 (not e!4351471))))

(declare-fun res!2942769 () Bool)

(assert (=> b!7256959 (=> res!2942769 e!4351471)))

(declare-fun exists!4414 ((Set Context!15216) Int) Bool)

(assert (=> b!7256959 (= res!2942769 (not (exists!4414 lt!2587802 lambda!445363)))))

(declare-datatypes ((List!70586 0))(
  ( (Nil!70462) (Cons!70462 (h!76910 Context!15216) (t!384650 List!70586)) )
))
(declare-fun lt!2587827 () List!70586)

(declare-fun exists!4415 (List!70586 Int) Bool)

(assert (=> b!7256959 (exists!4415 lt!2587827 lambda!445363)))

(declare-fun lt!2587804 () Unit!163940)

(declare-fun lemmaZipperMatchesExistsMatchingContext!771 (List!70586 List!70585) Unit!163940)

(assert (=> b!7256959 (= lt!2587804 (lemmaZipperMatchesExistsMatchingContext!771 lt!2587827 (t!384649 s1!1971)))))

(declare-fun toList!11497 ((Set Context!15216)) List!70586)

(assert (=> b!7256959 (= lt!2587827 (toList!11497 lt!2587802))))

(declare-fun b!7256960 () Bool)

(declare-fun res!2942768 () Bool)

(declare-fun e!4351462 () Bool)

(assert (=> b!7256960 (=> (not res!2942768) (not e!4351462))))

(assert (=> b!7256960 (= res!2942768 (matchZipper!3578 (set.insert ct2!328 (as set.empty (Set Context!15216))) s2!1849))))

(declare-fun res!2942766 () Bool)

(assert (=> start!706812 (=> (not res!2942766) (not e!4351462))))

(declare-fun lt!2587818 () (Set Context!15216))

(assert (=> start!706812 (= res!2942766 (matchZipper!3578 lt!2587818 s1!1971))))

(assert (=> start!706812 (= lt!2587818 (set.insert ct1!232 (as set.empty (Set Context!15216))))))

(assert (=> start!706812 e!4351462))

(declare-fun e!4351467 () Bool)

(declare-fun inv!89681 (Context!15216) Bool)

(assert (=> start!706812 (and (inv!89681 ct1!232) e!4351467)))

(assert (=> start!706812 e!4351465))

(assert (=> start!706812 e!4351472))

(assert (=> start!706812 (and (inv!89681 ct2!328) e!4351461)))

(declare-fun b!7256953 () Bool)

(declare-fun e!4351473 () Bool)

(declare-fun lt!2587810 () (Set Context!15216))

(assert (=> b!7256953 (= e!4351473 (matchZipper!3578 lt!2587810 (t!384649 s1!1971)))))

(declare-fun lt!2587805 () (Set Context!15216))

(declare-fun derivationStepZipper!3446 ((Set Context!15216) C!37610) (Set Context!15216))

(assert (=> b!7256961 (= e!4351470 (set.member lt!2587811 (derivationStepZipper!3446 lt!2587805 (h!76909 s1!1971))))))

(declare-fun lt!2587795 () Unit!163940)

(assert (=> b!7256961 (= lt!2587795 (lemmaConcatPreservesForall!1475 (exprs!8108 lt!2587797) (exprs!8108 ct2!328) lambda!445362))))

(assert (=> b!7256961 (set.member lt!2587811 lt!2587825)))

(declare-fun lt!2587828 () Unit!163940)

(assert (=> b!7256961 (= lt!2587828 (lemmaConcatPreservesForall!1475 (exprs!8108 ct1!232) (exprs!8108 ct2!328) lambda!445362))))

(declare-fun lt!2587806 () Unit!163940)

(assert (=> b!7256961 (= lt!2587806 (lemmaConcatPreservesForall!1475 (exprs!8108 lt!2587797) (exprs!8108 ct2!328) lambda!445362))))

(declare-fun lt!2587794 () Unit!163940)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!23 (Context!15216 Context!15216 Context!15216 C!37610) Unit!163940)

(assert (=> b!7256961 (= lt!2587794 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!23 ct1!232 ct2!328 lt!2587797 (h!76909 s1!1971)))))

(declare-fun tail!14361 (List!70585) List!70585)

(assert (=> b!7256961 (= (tail!14361 (++!16598 s1!1971 s2!1849)) lt!2587819)))

(declare-fun lt!2587817 () Unit!163940)

(declare-fun e!4351464 () Unit!163940)

(assert (=> b!7256961 (= lt!2587817 e!4351464)))

(declare-fun c!1349468 () Bool)

(declare-fun nullable!7928 (Regex!18668) Bool)

(assert (=> b!7256961 (= c!1349468 (nullable!7928 (h!76908 (exprs!8108 ct1!232))))))

(declare-fun lambda!445364 () Int)

(declare-fun flatMap!2833 ((Set Context!15216) Int) (Set Context!15216))

(assert (=> b!7256961 (= (flatMap!2833 lt!2587805 lambda!445364) (derivationStepZipperUp!2492 lt!2587823 (h!76909 s1!1971)))))

(declare-fun lt!2587816 () Unit!163940)

(declare-fun lemmaFlatMapOnSingletonSet!2237 ((Set Context!15216) Context!15216 Int) Unit!163940)

(assert (=> b!7256961 (= lt!2587816 (lemmaFlatMapOnSingletonSet!2237 lt!2587805 lt!2587823 lambda!445364))))

(declare-fun lt!2587822 () Unit!163940)

(assert (=> b!7256961 (= lt!2587822 (lemmaConcatPreservesForall!1475 (exprs!8108 ct1!232) (exprs!8108 ct2!328) lambda!445362))))

(assert (=> b!7256961 (= (flatMap!2833 lt!2587818 lambda!445364) (derivationStepZipperUp!2492 ct1!232 (h!76909 s1!1971)))))

(declare-fun lt!2587820 () Unit!163940)

(assert (=> b!7256961 (= lt!2587820 (lemmaFlatMapOnSingletonSet!2237 lt!2587818 ct1!232 lambda!445364))))

(declare-fun lt!2587808 () (Set Context!15216))

(declare-fun lt!2587798 () Context!15216)

(assert (=> b!7256961 (= lt!2587808 (derivationStepZipperDown!2662 (h!76908 (exprs!8108 ct1!232)) lt!2587798 (h!76909 s1!1971)))))

(assert (=> b!7256961 (= lt!2587798 (Context!15217 (tail!14360 lt!2587799)))))

(declare-fun b!7256962 () Bool)

(declare-fun e!4351469 () Bool)

(assert (=> b!7256962 (= e!4351462 e!4351469)))

(declare-fun res!2942773 () Bool)

(assert (=> b!7256962 (=> (not res!2942773) (not e!4351469))))

(assert (=> b!7256962 (= res!2942773 (and (not (is-Nil!70460 (exprs!8108 ct1!232))) (is-Cons!70461 s1!1971)))))

(assert (=> b!7256962 (= lt!2587805 (set.insert lt!2587823 (as set.empty (Set Context!15216))))))

(assert (=> b!7256962 (= lt!2587823 (Context!15217 lt!2587799))))

(assert (=> b!7256962 (= lt!2587799 (++!16599 (exprs!8108 ct1!232) (exprs!8108 ct2!328)))))

(declare-fun lt!2587807 () Unit!163940)

(assert (=> b!7256962 (= lt!2587807 (lemmaConcatPreservesForall!1475 (exprs!8108 ct1!232) (exprs!8108 ct2!328) lambda!445362))))

(declare-fun b!7256963 () Bool)

(assert (=> b!7256963 (= e!4351469 e!4351468)))

(declare-fun res!2942765 () Bool)

(assert (=> b!7256963 (=> (not res!2942765) (not e!4351468))))

(assert (=> b!7256963 (= res!2942765 (matchZipper!3578 lt!2587802 (t!384649 s1!1971)))))

(assert (=> b!7256963 (= lt!2587802 (derivationStepZipper!3446 lt!2587818 (h!76909 s1!1971)))))

(declare-fun b!7256964 () Bool)

(declare-fun e!4351466 () Bool)

(declare-fun lt!2587796 () (Set Context!15216))

(assert (=> b!7256964 (= e!4351466 (matchZipper!3578 lt!2587796 lt!2587819))))

(declare-fun b!7256965 () Bool)

(declare-fun tp!2038300 () Bool)

(assert (=> b!7256965 (= e!4351467 tp!2038300)))

(declare-fun b!7256966 () Bool)

(declare-fun Unit!163942 () Unit!163940)

(assert (=> b!7256966 (= e!4351464 Unit!163942)))

(declare-fun b!7256967 () Bool)

(declare-fun Unit!163943 () Unit!163940)

(assert (=> b!7256967 (= e!4351464 Unit!163943)))

(declare-fun lt!2587815 () Unit!163940)

(assert (=> b!7256967 (= lt!2587815 (lemmaConcatPreservesForall!1475 (exprs!8108 ct1!232) (exprs!8108 ct2!328) lambda!445362))))

(assert (=> b!7256967 (= lt!2587810 (derivationStepZipperUp!2492 lt!2587813 (h!76909 s1!1971)))))

(declare-fun lt!2587814 () Unit!163940)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1723 ((Set Context!15216) (Set Context!15216) List!70585) Unit!163940)

(assert (=> b!7256967 (= lt!2587814 (lemmaZipperConcatMatchesSameAsBothZippers!1723 lt!2587801 lt!2587810 (t!384649 s1!1971)))))

(declare-fun res!2942772 () Bool)

(assert (=> b!7256967 (= res!2942772 (matchZipper!3578 lt!2587801 (t!384649 s1!1971)))))

(assert (=> b!7256967 (=> res!2942772 e!4351473)))

(assert (=> b!7256967 (= (matchZipper!3578 (set.union lt!2587801 lt!2587810) (t!384649 s1!1971)) e!4351473)))

(declare-fun lt!2587824 () Unit!163940)

(assert (=> b!7256967 (= lt!2587824 (lemmaConcatPreservesForall!1475 (exprs!8108 ct1!232) (exprs!8108 ct2!328) lambda!445362))))

(assert (=> b!7256967 (= lt!2587796 (derivationStepZipperUp!2492 lt!2587798 (h!76909 s1!1971)))))

(declare-fun lt!2587826 () Unit!163940)

(assert (=> b!7256967 (= lt!2587826 (lemmaZipperConcatMatchesSameAsBothZippers!1723 lt!2587808 lt!2587796 lt!2587819))))

(declare-fun res!2942767 () Bool)

(assert (=> b!7256967 (= res!2942767 (matchZipper!3578 lt!2587808 lt!2587819))))

(assert (=> b!7256967 (=> res!2942767 e!4351466)))

(assert (=> b!7256967 (= (matchZipper!3578 (set.union lt!2587808 lt!2587796) lt!2587819) e!4351466)))

(assert (= (and start!706812 res!2942766) b!7256960))

(assert (= (and b!7256960 res!2942768) b!7256962))

(assert (= (and b!7256962 res!2942773) b!7256963))

(assert (= (and b!7256963 res!2942765) b!7256959))

(assert (= (and b!7256959 (not res!2942769)) b!7256956))

(assert (= (and b!7256956 (not res!2942771)) b!7256954))

(assert (= (and b!7256954 (not res!2942770)) b!7256961))

(assert (= (and b!7256961 c!1349468) b!7256967))

(assert (= (and b!7256961 (not c!1349468)) b!7256966))

(assert (= (and b!7256967 (not res!2942772)) b!7256953))

(assert (= (and b!7256967 (not res!2942767)) b!7256964))

(assert (= start!706812 b!7256965))

(assert (= (and start!706812 (is-Cons!70461 s1!1971)) b!7256958))

(assert (= (and start!706812 (is-Cons!70461 s2!1849)) b!7256957))

(assert (= start!706812 b!7256955))

(declare-fun m!7938812 () Bool)

(assert (=> b!7256959 m!7938812))

(declare-fun m!7938814 () Bool)

(assert (=> b!7256959 m!7938814))

(declare-fun m!7938816 () Bool)

(assert (=> b!7256959 m!7938816))

(declare-fun m!7938818 () Bool)

(assert (=> b!7256959 m!7938818))

(declare-fun m!7938820 () Bool)

(assert (=> b!7256962 m!7938820))

(declare-fun m!7938822 () Bool)

(assert (=> b!7256962 m!7938822))

(declare-fun m!7938824 () Bool)

(assert (=> b!7256962 m!7938824))

(assert (=> b!7256954 m!7938824))

(declare-fun m!7938826 () Bool)

(assert (=> b!7256954 m!7938826))

(assert (=> b!7256954 m!7938824))

(declare-fun m!7938828 () Bool)

(assert (=> b!7256954 m!7938828))

(declare-fun m!7938830 () Bool)

(assert (=> b!7256954 m!7938830))

(declare-fun m!7938832 () Bool)

(assert (=> b!7256954 m!7938832))

(declare-fun m!7938834 () Bool)

(assert (=> b!7256956 m!7938834))

(declare-fun m!7938836 () Bool)

(assert (=> b!7256956 m!7938836))

(declare-fun m!7938838 () Bool)

(assert (=> b!7256956 m!7938838))

(declare-fun m!7938840 () Bool)

(assert (=> b!7256956 m!7938840))

(declare-fun m!7938842 () Bool)

(assert (=> b!7256956 m!7938842))

(declare-fun m!7938844 () Bool)

(assert (=> b!7256956 m!7938844))

(declare-fun m!7938846 () Bool)

(assert (=> b!7256956 m!7938846))

(declare-fun m!7938848 () Bool)

(assert (=> b!7256956 m!7938848))

(assert (=> b!7256956 m!7938836))

(declare-fun m!7938850 () Bool)

(assert (=> b!7256956 m!7938850))

(assert (=> b!7256956 m!7938848))

(declare-fun m!7938852 () Bool)

(assert (=> b!7256960 m!7938852))

(assert (=> b!7256960 m!7938852))

(declare-fun m!7938854 () Bool)

(assert (=> b!7256960 m!7938854))

(declare-fun m!7938856 () Bool)

(assert (=> b!7256964 m!7938856))

(assert (=> b!7256961 m!7938848))

(declare-fun m!7938858 () Bool)

(assert (=> b!7256961 m!7938858))

(declare-fun m!7938860 () Bool)

(assert (=> b!7256961 m!7938860))

(declare-fun m!7938862 () Bool)

(assert (=> b!7256961 m!7938862))

(assert (=> b!7256961 m!7938848))

(declare-fun m!7938864 () Bool)

(assert (=> b!7256961 m!7938864))

(declare-fun m!7938866 () Bool)

(assert (=> b!7256961 m!7938866))

(assert (=> b!7256961 m!7938830))

(declare-fun m!7938868 () Bool)

(assert (=> b!7256961 m!7938868))

(assert (=> b!7256961 m!7938824))

(declare-fun m!7938870 () Bool)

(assert (=> b!7256961 m!7938870))

(declare-fun m!7938872 () Bool)

(assert (=> b!7256961 m!7938872))

(declare-fun m!7938874 () Bool)

(assert (=> b!7256961 m!7938874))

(declare-fun m!7938876 () Bool)

(assert (=> b!7256961 m!7938876))

(assert (=> b!7256961 m!7938864))

(declare-fun m!7938878 () Bool)

(assert (=> b!7256961 m!7938878))

(assert (=> b!7256961 m!7938824))

(declare-fun m!7938880 () Bool)

(assert (=> b!7256961 m!7938880))

(assert (=> b!7256961 m!7938844))

(declare-fun m!7938882 () Bool)

(assert (=> b!7256961 m!7938882))

(declare-fun m!7938884 () Bool)

(assert (=> start!706812 m!7938884))

(declare-fun m!7938886 () Bool)

(assert (=> start!706812 m!7938886))

(declare-fun m!7938888 () Bool)

(assert (=> start!706812 m!7938888))

(declare-fun m!7938890 () Bool)

(assert (=> start!706812 m!7938890))

(declare-fun m!7938892 () Bool)

(assert (=> b!7256953 m!7938892))

(declare-fun m!7938894 () Bool)

(assert (=> b!7256967 m!7938894))

(declare-fun m!7938896 () Bool)

(assert (=> b!7256967 m!7938896))

(assert (=> b!7256967 m!7938824))

(declare-fun m!7938898 () Bool)

(assert (=> b!7256967 m!7938898))

(declare-fun m!7938900 () Bool)

(assert (=> b!7256967 m!7938900))

(declare-fun m!7938902 () Bool)

(assert (=> b!7256967 m!7938902))

(declare-fun m!7938904 () Bool)

(assert (=> b!7256967 m!7938904))

(declare-fun m!7938906 () Bool)

(assert (=> b!7256967 m!7938906))

(assert (=> b!7256967 m!7938824))

(declare-fun m!7938908 () Bool)

(assert (=> b!7256967 m!7938908))

(declare-fun m!7938910 () Bool)

(assert (=> b!7256963 m!7938910))

(declare-fun m!7938912 () Bool)

(assert (=> b!7256963 m!7938912))

(push 1)

(assert (not start!706812))

(assert (not b!7256956))

(assert (not b!7256965))

(assert (not b!7256962))

(assert (not b!7256959))

(assert (not b!7256964))

(assert (not b!7256963))

(assert (not b!7256955))

(assert (not b!7256953))

(assert (not b!7256954))

(assert (not b!7256958))

(assert (not b!7256961))

(assert tp_is_empty!46801)

(assert (not b!7256967))

(assert (not b!7256960))

(assert (not b!7256957))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2257039 () Bool)

(declare-fun c!1349486 () Bool)

(declare-fun isEmpty!40579 (List!70585) Bool)

(assert (=> d!2257039 (= c!1349486 (isEmpty!40579 s1!1971))))

(declare-fun e!4351515 () Bool)

(assert (=> d!2257039 (= (matchZipper!3578 lt!2587818 s1!1971) e!4351515)))

(declare-fun b!7257025 () Bool)

(declare-fun nullableZipper!2929 ((Set Context!15216)) Bool)

(assert (=> b!7257025 (= e!4351515 (nullableZipper!2929 lt!2587818))))

(declare-fun b!7257026 () Bool)

(declare-fun head!14926 (List!70585) C!37610)

(assert (=> b!7257026 (= e!4351515 (matchZipper!3578 (derivationStepZipper!3446 lt!2587818 (head!14926 s1!1971)) (tail!14361 s1!1971)))))

(assert (= (and d!2257039 c!1349486) b!7257025))

(assert (= (and d!2257039 (not c!1349486)) b!7257026))

(declare-fun m!7939016 () Bool)

(assert (=> d!2257039 m!7939016))

(declare-fun m!7939018 () Bool)

(assert (=> b!7257025 m!7939018))

(declare-fun m!7939020 () Bool)

(assert (=> b!7257026 m!7939020))

(assert (=> b!7257026 m!7939020))

(declare-fun m!7939022 () Bool)

(assert (=> b!7257026 m!7939022))

(declare-fun m!7939024 () Bool)

(assert (=> b!7257026 m!7939024))

(assert (=> b!7257026 m!7939022))

(assert (=> b!7257026 m!7939024))

(declare-fun m!7939026 () Bool)

(assert (=> b!7257026 m!7939026))

(assert (=> start!706812 d!2257039))

(declare-fun bs!1907912 () Bool)

(declare-fun d!2257041 () Bool)

(assert (= bs!1907912 (and d!2257041 b!7256962)))

(declare-fun lambda!445402 () Int)

(assert (=> bs!1907912 (= lambda!445402 lambda!445362)))

(declare-fun forall!17523 (List!70584 Int) Bool)

(assert (=> d!2257041 (= (inv!89681 ct1!232) (forall!17523 (exprs!8108 ct1!232) lambda!445402))))

(declare-fun bs!1907913 () Bool)

(assert (= bs!1907913 d!2257041))

(declare-fun m!7939028 () Bool)

(assert (=> bs!1907913 m!7939028))

(assert (=> start!706812 d!2257041))

(declare-fun bs!1907914 () Bool)

(declare-fun d!2257043 () Bool)

(assert (= bs!1907914 (and d!2257043 b!7256962)))

(declare-fun lambda!445403 () Int)

(assert (=> bs!1907914 (= lambda!445403 lambda!445362)))

(declare-fun bs!1907915 () Bool)

(assert (= bs!1907915 (and d!2257043 d!2257041)))

(assert (=> bs!1907915 (= lambda!445403 lambda!445402)))

(assert (=> d!2257043 (= (inv!89681 ct2!328) (forall!17523 (exprs!8108 ct2!328) lambda!445403))))

(declare-fun bs!1907916 () Bool)

(assert (= bs!1907916 d!2257043))

(declare-fun m!7939030 () Bool)

(assert (=> bs!1907916 m!7939030))

(assert (=> start!706812 d!2257043))

(declare-fun d!2257045 () Bool)

(declare-fun e!4351518 () Bool)

(assert (=> d!2257045 (= (matchZipper!3578 (set.union lt!2587808 lt!2587796) lt!2587819) e!4351518)))

(declare-fun res!2942803 () Bool)

(assert (=> d!2257045 (=> res!2942803 e!4351518)))

(assert (=> d!2257045 (= res!2942803 (matchZipper!3578 lt!2587808 lt!2587819))))

(declare-fun lt!2587940 () Unit!163940)

(declare-fun choose!56129 ((Set Context!15216) (Set Context!15216) List!70585) Unit!163940)

(assert (=> d!2257045 (= lt!2587940 (choose!56129 lt!2587808 lt!2587796 lt!2587819))))

(assert (=> d!2257045 (= (lemmaZipperConcatMatchesSameAsBothZippers!1723 lt!2587808 lt!2587796 lt!2587819) lt!2587940)))

(declare-fun b!7257029 () Bool)

(assert (=> b!7257029 (= e!4351518 (matchZipper!3578 lt!2587796 lt!2587819))))

(assert (= (and d!2257045 (not res!2942803)) b!7257029))

(assert (=> d!2257045 m!7938900))

(assert (=> d!2257045 m!7938908))

(declare-fun m!7939032 () Bool)

(assert (=> d!2257045 m!7939032))

(assert (=> b!7257029 m!7938856))

(assert (=> b!7256967 d!2257045))

(declare-fun d!2257047 () Bool)

(declare-fun c!1349487 () Bool)

(assert (=> d!2257047 (= c!1349487 (isEmpty!40579 (t!384649 s1!1971)))))

(declare-fun e!4351519 () Bool)

(assert (=> d!2257047 (= (matchZipper!3578 lt!2587801 (t!384649 s1!1971)) e!4351519)))

(declare-fun b!7257030 () Bool)

(assert (=> b!7257030 (= e!4351519 (nullableZipper!2929 lt!2587801))))

(declare-fun b!7257031 () Bool)

(assert (=> b!7257031 (= e!4351519 (matchZipper!3578 (derivationStepZipper!3446 lt!2587801 (head!14926 (t!384649 s1!1971))) (tail!14361 (t!384649 s1!1971))))))

(assert (= (and d!2257047 c!1349487) b!7257030))

(assert (= (and d!2257047 (not c!1349487)) b!7257031))

(declare-fun m!7939034 () Bool)

(assert (=> d!2257047 m!7939034))

(declare-fun m!7939036 () Bool)

(assert (=> b!7257030 m!7939036))

(declare-fun m!7939038 () Bool)

(assert (=> b!7257031 m!7939038))

(assert (=> b!7257031 m!7939038))

(declare-fun m!7939040 () Bool)

(assert (=> b!7257031 m!7939040))

(declare-fun m!7939042 () Bool)

(assert (=> b!7257031 m!7939042))

(assert (=> b!7257031 m!7939040))

(assert (=> b!7257031 m!7939042))

(declare-fun m!7939044 () Bool)

(assert (=> b!7257031 m!7939044))

(assert (=> b!7256967 d!2257047))

(declare-fun e!4351520 () Bool)

(declare-fun d!2257049 () Bool)

(assert (=> d!2257049 (= (matchZipper!3578 (set.union lt!2587801 lt!2587810) (t!384649 s1!1971)) e!4351520)))

(declare-fun res!2942804 () Bool)

(assert (=> d!2257049 (=> res!2942804 e!4351520)))

(assert (=> d!2257049 (= res!2942804 (matchZipper!3578 lt!2587801 (t!384649 s1!1971)))))

(declare-fun lt!2587941 () Unit!163940)

(assert (=> d!2257049 (= lt!2587941 (choose!56129 lt!2587801 lt!2587810 (t!384649 s1!1971)))))

(assert (=> d!2257049 (= (lemmaZipperConcatMatchesSameAsBothZippers!1723 lt!2587801 lt!2587810 (t!384649 s1!1971)) lt!2587941)))

(declare-fun b!7257032 () Bool)

(assert (=> b!7257032 (= e!4351520 (matchZipper!3578 lt!2587810 (t!384649 s1!1971)))))

(assert (= (and d!2257049 (not res!2942804)) b!7257032))

(assert (=> d!2257049 m!7938898))

(assert (=> d!2257049 m!7938906))

(declare-fun m!7939046 () Bool)

(assert (=> d!2257049 m!7939046))

(assert (=> b!7257032 m!7938892))

(assert (=> b!7256967 d!2257049))

(declare-fun b!7257043 () Bool)

(declare-fun e!4351528 () (Set Context!15216))

(assert (=> b!7257043 (= e!4351528 (as set.empty (Set Context!15216)))))

(declare-fun d!2257051 () Bool)

(declare-fun c!1349492 () Bool)

(declare-fun e!4351527 () Bool)

(assert (=> d!2257051 (= c!1349492 e!4351527)))

(declare-fun res!2942807 () Bool)

(assert (=> d!2257051 (=> (not res!2942807) (not e!4351527))))

(assert (=> d!2257051 (= res!2942807 (is-Cons!70460 (exprs!8108 lt!2587813)))))

(declare-fun e!4351529 () (Set Context!15216))

(assert (=> d!2257051 (= (derivationStepZipperUp!2492 lt!2587813 (h!76909 s1!1971)) e!4351529)))

(declare-fun call!661352 () (Set Context!15216))

(declare-fun b!7257044 () Bool)

(assert (=> b!7257044 (= e!4351529 (set.union call!661352 (derivationStepZipperUp!2492 (Context!15217 (t!384648 (exprs!8108 lt!2587813))) (h!76909 s1!1971))))))

(declare-fun b!7257045 () Bool)

(assert (=> b!7257045 (= e!4351527 (nullable!7928 (h!76908 (exprs!8108 lt!2587813))))))

(declare-fun bm!661347 () Bool)

(assert (=> bm!661347 (= call!661352 (derivationStepZipperDown!2662 (h!76908 (exprs!8108 lt!2587813)) (Context!15217 (t!384648 (exprs!8108 lt!2587813))) (h!76909 s1!1971)))))

(declare-fun b!7257046 () Bool)

(assert (=> b!7257046 (= e!4351528 call!661352)))

(declare-fun b!7257047 () Bool)

(assert (=> b!7257047 (= e!4351529 e!4351528)))

(declare-fun c!1349493 () Bool)

(assert (=> b!7257047 (= c!1349493 (is-Cons!70460 (exprs!8108 lt!2587813)))))

(assert (= (and d!2257051 res!2942807) b!7257045))

(assert (= (and d!2257051 c!1349492) b!7257044))

(assert (= (and d!2257051 (not c!1349492)) b!7257047))

(assert (= (and b!7257047 c!1349493) b!7257046))

(assert (= (and b!7257047 (not c!1349493)) b!7257043))

(assert (= (or b!7257044 b!7257046) bm!661347))

(declare-fun m!7939048 () Bool)

(assert (=> b!7257044 m!7939048))

(declare-fun m!7939050 () Bool)

(assert (=> b!7257045 m!7939050))

(declare-fun m!7939052 () Bool)

(assert (=> bm!661347 m!7939052))

(assert (=> b!7256967 d!2257051))

(declare-fun d!2257053 () Bool)

(declare-fun c!1349494 () Bool)

(assert (=> d!2257053 (= c!1349494 (isEmpty!40579 lt!2587819))))

(declare-fun e!4351530 () Bool)

(assert (=> d!2257053 (= (matchZipper!3578 (set.union lt!2587808 lt!2587796) lt!2587819) e!4351530)))

(declare-fun b!7257048 () Bool)

(assert (=> b!7257048 (= e!4351530 (nullableZipper!2929 (set.union lt!2587808 lt!2587796)))))

(declare-fun b!7257049 () Bool)

(assert (=> b!7257049 (= e!4351530 (matchZipper!3578 (derivationStepZipper!3446 (set.union lt!2587808 lt!2587796) (head!14926 lt!2587819)) (tail!14361 lt!2587819)))))

(assert (= (and d!2257053 c!1349494) b!7257048))

(assert (= (and d!2257053 (not c!1349494)) b!7257049))

(declare-fun m!7939054 () Bool)

(assert (=> d!2257053 m!7939054))

(declare-fun m!7939056 () Bool)

(assert (=> b!7257048 m!7939056))

(declare-fun m!7939058 () Bool)

(assert (=> b!7257049 m!7939058))

(assert (=> b!7257049 m!7939058))

(declare-fun m!7939060 () Bool)

(assert (=> b!7257049 m!7939060))

(declare-fun m!7939062 () Bool)

(assert (=> b!7257049 m!7939062))

(assert (=> b!7257049 m!7939060))

(assert (=> b!7257049 m!7939062))

(declare-fun m!7939064 () Bool)

(assert (=> b!7257049 m!7939064))

(assert (=> b!7256967 d!2257053))

(declare-fun d!2257055 () Bool)

(declare-fun c!1349495 () Bool)

(assert (=> d!2257055 (= c!1349495 (isEmpty!40579 (t!384649 s1!1971)))))

(declare-fun e!4351531 () Bool)

(assert (=> d!2257055 (= (matchZipper!3578 (set.union lt!2587801 lt!2587810) (t!384649 s1!1971)) e!4351531)))

(declare-fun b!7257050 () Bool)

(assert (=> b!7257050 (= e!4351531 (nullableZipper!2929 (set.union lt!2587801 lt!2587810)))))

(declare-fun b!7257051 () Bool)

(assert (=> b!7257051 (= e!4351531 (matchZipper!3578 (derivationStepZipper!3446 (set.union lt!2587801 lt!2587810) (head!14926 (t!384649 s1!1971))) (tail!14361 (t!384649 s1!1971))))))

(assert (= (and d!2257055 c!1349495) b!7257050))

(assert (= (and d!2257055 (not c!1349495)) b!7257051))

(assert (=> d!2257055 m!7939034))

(declare-fun m!7939066 () Bool)

(assert (=> b!7257050 m!7939066))

(assert (=> b!7257051 m!7939038))

(assert (=> b!7257051 m!7939038))

(declare-fun m!7939068 () Bool)

(assert (=> b!7257051 m!7939068))

(assert (=> b!7257051 m!7939042))

(assert (=> b!7257051 m!7939068))

(assert (=> b!7257051 m!7939042))

(declare-fun m!7939070 () Bool)

(assert (=> b!7257051 m!7939070))

(assert (=> b!7256967 d!2257055))

(declare-fun d!2257057 () Bool)

(assert (=> d!2257057 (forall!17523 (++!16599 (exprs!8108 ct1!232) (exprs!8108 ct2!328)) lambda!445362)))

(declare-fun lt!2587944 () Unit!163940)

(declare-fun choose!56130 (List!70584 List!70584 Int) Unit!163940)

(assert (=> d!2257057 (= lt!2587944 (choose!56130 (exprs!8108 ct1!232) (exprs!8108 ct2!328) lambda!445362))))

(assert (=> d!2257057 (forall!17523 (exprs!8108 ct1!232) lambda!445362)))

(assert (=> d!2257057 (= (lemmaConcatPreservesForall!1475 (exprs!8108 ct1!232) (exprs!8108 ct2!328) lambda!445362) lt!2587944)))

(declare-fun bs!1907917 () Bool)

(assert (= bs!1907917 d!2257057))

(assert (=> bs!1907917 m!7938822))

(assert (=> bs!1907917 m!7938822))

(declare-fun m!7939072 () Bool)

(assert (=> bs!1907917 m!7939072))

(declare-fun m!7939074 () Bool)

(assert (=> bs!1907917 m!7939074))

(declare-fun m!7939076 () Bool)

(assert (=> bs!1907917 m!7939076))

(assert (=> b!7256967 d!2257057))

(declare-fun b!7257052 () Bool)

(declare-fun e!4351533 () (Set Context!15216))

(assert (=> b!7257052 (= e!4351533 (as set.empty (Set Context!15216)))))

(declare-fun d!2257059 () Bool)

(declare-fun c!1349496 () Bool)

(declare-fun e!4351532 () Bool)

(assert (=> d!2257059 (= c!1349496 e!4351532)))

(declare-fun res!2942808 () Bool)

(assert (=> d!2257059 (=> (not res!2942808) (not e!4351532))))

(assert (=> d!2257059 (= res!2942808 (is-Cons!70460 (exprs!8108 lt!2587798)))))

(declare-fun e!4351534 () (Set Context!15216))

(assert (=> d!2257059 (= (derivationStepZipperUp!2492 lt!2587798 (h!76909 s1!1971)) e!4351534)))

(declare-fun call!661353 () (Set Context!15216))

(declare-fun b!7257053 () Bool)

(assert (=> b!7257053 (= e!4351534 (set.union call!661353 (derivationStepZipperUp!2492 (Context!15217 (t!384648 (exprs!8108 lt!2587798))) (h!76909 s1!1971))))))

(declare-fun b!7257054 () Bool)

(assert (=> b!7257054 (= e!4351532 (nullable!7928 (h!76908 (exprs!8108 lt!2587798))))))

(declare-fun bm!661348 () Bool)

(assert (=> bm!661348 (= call!661353 (derivationStepZipperDown!2662 (h!76908 (exprs!8108 lt!2587798)) (Context!15217 (t!384648 (exprs!8108 lt!2587798))) (h!76909 s1!1971)))))

(declare-fun b!7257055 () Bool)

(assert (=> b!7257055 (= e!4351533 call!661353)))

(declare-fun b!7257056 () Bool)

(assert (=> b!7257056 (= e!4351534 e!4351533)))

(declare-fun c!1349497 () Bool)

(assert (=> b!7257056 (= c!1349497 (is-Cons!70460 (exprs!8108 lt!2587798)))))

(assert (= (and d!2257059 res!2942808) b!7257054))

(assert (= (and d!2257059 c!1349496) b!7257053))

(assert (= (and d!2257059 (not c!1349496)) b!7257056))

(assert (= (and b!7257056 c!1349497) b!7257055))

(assert (= (and b!7257056 (not c!1349497)) b!7257052))

(assert (= (or b!7257053 b!7257055) bm!661348))

(declare-fun m!7939078 () Bool)

(assert (=> b!7257053 m!7939078))

(declare-fun m!7939080 () Bool)

(assert (=> b!7257054 m!7939080))

(declare-fun m!7939082 () Bool)

(assert (=> bm!661348 m!7939082))

(assert (=> b!7256967 d!2257059))

(declare-fun d!2257061 () Bool)

(declare-fun c!1349498 () Bool)

(assert (=> d!2257061 (= c!1349498 (isEmpty!40579 lt!2587819))))

(declare-fun e!4351535 () Bool)

(assert (=> d!2257061 (= (matchZipper!3578 lt!2587808 lt!2587819) e!4351535)))

(declare-fun b!7257057 () Bool)

(assert (=> b!7257057 (= e!4351535 (nullableZipper!2929 lt!2587808))))

(declare-fun b!7257058 () Bool)

(assert (=> b!7257058 (= e!4351535 (matchZipper!3578 (derivationStepZipper!3446 lt!2587808 (head!14926 lt!2587819)) (tail!14361 lt!2587819)))))

(assert (= (and d!2257061 c!1349498) b!7257057))

(assert (= (and d!2257061 (not c!1349498)) b!7257058))

(assert (=> d!2257061 m!7939054))

(declare-fun m!7939084 () Bool)

(assert (=> b!7257057 m!7939084))

(assert (=> b!7257058 m!7939058))

(assert (=> b!7257058 m!7939058))

(declare-fun m!7939086 () Bool)

(assert (=> b!7257058 m!7939086))

(assert (=> b!7257058 m!7939062))

(assert (=> b!7257058 m!7939086))

(assert (=> b!7257058 m!7939062))

(declare-fun m!7939088 () Bool)

(assert (=> b!7257058 m!7939088))

(assert (=> b!7256967 d!2257061))

(declare-fun d!2257063 () Bool)

(assert (=> d!2257063 (= (isEmpty!40577 (exprs!8108 ct1!232)) (is-Nil!70460 (exprs!8108 ct1!232)))))

(assert (=> b!7256956 d!2257063))

(declare-fun bs!1907918 () Bool)

(declare-fun d!2257065 () Bool)

(assert (= bs!1907918 (and d!2257065 b!7256962)))

(declare-fun lambda!445406 () Int)

(assert (=> bs!1907918 (= lambda!445406 lambda!445362)))

(declare-fun bs!1907919 () Bool)

(assert (= bs!1907919 (and d!2257065 d!2257041)))

(assert (=> bs!1907919 (= lambda!445406 lambda!445402)))

(declare-fun bs!1907920 () Bool)

(assert (= bs!1907920 (and d!2257065 d!2257043)))

(assert (=> bs!1907920 (= lambda!445406 lambda!445403)))

(assert (=> d!2257065 (matchZipper!3578 (set.insert (Context!15217 (++!16599 (exprs!8108 lt!2587797) (exprs!8108 ct2!328))) (as set.empty (Set Context!15216))) (++!16598 (t!384649 s1!1971) s2!1849))))

(declare-fun lt!2587950 () Unit!163940)

(assert (=> d!2257065 (= lt!2587950 (lemmaConcatPreservesForall!1475 (exprs!8108 lt!2587797) (exprs!8108 ct2!328) lambda!445406))))

(declare-fun lt!2587949 () Unit!163940)

(declare-fun choose!56131 (Context!15216 Context!15216 List!70585 List!70585) Unit!163940)

(assert (=> d!2257065 (= lt!2587949 (choose!56131 lt!2587797 ct2!328 (t!384649 s1!1971) s2!1849))))

(assert (=> d!2257065 (matchZipper!3578 (set.insert lt!2587797 (as set.empty (Set Context!15216))) (t!384649 s1!1971))))

(assert (=> d!2257065 (= (lemmaConcatenateContextMatchesConcatOfStrings!413 lt!2587797 ct2!328 (t!384649 s1!1971) s2!1849) lt!2587949)))

(declare-fun bs!1907921 () Bool)

(assert (= bs!1907921 d!2257065))

(declare-fun m!7939090 () Bool)

(assert (=> bs!1907921 m!7939090))

(assert (=> bs!1907921 m!7938846))

(declare-fun m!7939092 () Bool)

(assert (=> bs!1907921 m!7939092))

(assert (=> bs!1907921 m!7938846))

(declare-fun m!7939094 () Bool)

(assert (=> bs!1907921 m!7939094))

(assert (=> bs!1907921 m!7938840))

(assert (=> bs!1907921 m!7939090))

(declare-fun m!7939096 () Bool)

(assert (=> bs!1907921 m!7939096))

(declare-fun m!7939098 () Bool)

(assert (=> bs!1907921 m!7939098))

(assert (=> bs!1907921 m!7939098))

(declare-fun m!7939100 () Bool)

(assert (=> bs!1907921 m!7939100))

(assert (=> b!7256956 d!2257065))

(declare-fun b!7257069 () Bool)

(declare-fun res!2942813 () Bool)

(declare-fun e!4351541 () Bool)

(assert (=> b!7257069 (=> (not res!2942813) (not e!4351541))))

(declare-fun lt!2587953 () List!70585)

(declare-fun size!41746 (List!70585) Int)

(assert (=> b!7257069 (= res!2942813 (= (size!41746 lt!2587953) (+ (size!41746 (t!384649 s1!1971)) (size!41746 s2!1849))))))

(declare-fun b!7257070 () Bool)

(assert (=> b!7257070 (= e!4351541 (or (not (= s2!1849 Nil!70461)) (= lt!2587953 (t!384649 s1!1971))))))

(declare-fun b!7257068 () Bool)

(declare-fun e!4351540 () List!70585)

(assert (=> b!7257068 (= e!4351540 (Cons!70461 (h!76909 (t!384649 s1!1971)) (++!16598 (t!384649 (t!384649 s1!1971)) s2!1849)))))

(declare-fun b!7257067 () Bool)

(assert (=> b!7257067 (= e!4351540 s2!1849)))

(declare-fun d!2257067 () Bool)

(assert (=> d!2257067 e!4351541))

(declare-fun res!2942814 () Bool)

(assert (=> d!2257067 (=> (not res!2942814) (not e!4351541))))

(declare-fun content!14654 (List!70585) (Set C!37610))

(assert (=> d!2257067 (= res!2942814 (= (content!14654 lt!2587953) (set.union (content!14654 (t!384649 s1!1971)) (content!14654 s2!1849))))))

(assert (=> d!2257067 (= lt!2587953 e!4351540)))

(declare-fun c!1349501 () Bool)

(assert (=> d!2257067 (= c!1349501 (is-Nil!70461 (t!384649 s1!1971)))))

(assert (=> d!2257067 (= (++!16598 (t!384649 s1!1971) s2!1849) lt!2587953)))

(assert (= (and d!2257067 c!1349501) b!7257067))

(assert (= (and d!2257067 (not c!1349501)) b!7257068))

(assert (= (and d!2257067 res!2942814) b!7257069))

(assert (= (and b!7257069 res!2942813) b!7257070))

(declare-fun m!7939102 () Bool)

(assert (=> b!7257069 m!7939102))

(declare-fun m!7939104 () Bool)

(assert (=> b!7257069 m!7939104))

(declare-fun m!7939106 () Bool)

(assert (=> b!7257069 m!7939106))

(declare-fun m!7939108 () Bool)

(assert (=> b!7257068 m!7939108))

(declare-fun m!7939110 () Bool)

(assert (=> d!2257067 m!7939110))

(declare-fun m!7939112 () Bool)

(assert (=> d!2257067 m!7939112))

(declare-fun m!7939114 () Bool)

(assert (=> d!2257067 m!7939114))

(assert (=> b!7256956 d!2257067))

(declare-fun b!7257071 () Bool)

(declare-fun e!4351543 () (Set Context!15216))

(assert (=> b!7257071 (= e!4351543 (as set.empty (Set Context!15216)))))

(declare-fun d!2257069 () Bool)

(declare-fun c!1349502 () Bool)

(declare-fun e!4351542 () Bool)

(assert (=> d!2257069 (= c!1349502 e!4351542)))

(declare-fun res!2942815 () Bool)

(assert (=> d!2257069 (=> (not res!2942815) (not e!4351542))))

(assert (=> d!2257069 (= res!2942815 (is-Cons!70460 (exprs!8108 ct1!232)))))

(declare-fun e!4351544 () (Set Context!15216))

(assert (=> d!2257069 (= (derivationStepZipperUp!2492 ct1!232 (h!76909 s1!1971)) e!4351544)))

(declare-fun call!661354 () (Set Context!15216))

(declare-fun b!7257072 () Bool)

(assert (=> b!7257072 (= e!4351544 (set.union call!661354 (derivationStepZipperUp!2492 (Context!15217 (t!384648 (exprs!8108 ct1!232))) (h!76909 s1!1971))))))

(declare-fun b!7257073 () Bool)

(assert (=> b!7257073 (= e!4351542 (nullable!7928 (h!76908 (exprs!8108 ct1!232))))))

(declare-fun bm!661349 () Bool)

(assert (=> bm!661349 (= call!661354 (derivationStepZipperDown!2662 (h!76908 (exprs!8108 ct1!232)) (Context!15217 (t!384648 (exprs!8108 ct1!232))) (h!76909 s1!1971)))))

(declare-fun b!7257074 () Bool)

(assert (=> b!7257074 (= e!4351543 call!661354)))

(declare-fun b!7257075 () Bool)

(assert (=> b!7257075 (= e!4351544 e!4351543)))

(declare-fun c!1349503 () Bool)

(assert (=> b!7257075 (= c!1349503 (is-Cons!70460 (exprs!8108 ct1!232)))))

(assert (= (and d!2257069 res!2942815) b!7257073))

(assert (= (and d!2257069 c!1349502) b!7257072))

(assert (= (and d!2257069 (not c!1349502)) b!7257075))

(assert (= (and b!7257075 c!1349503) b!7257074))

(assert (= (and b!7257075 (not c!1349503)) b!7257071))

(assert (= (or b!7257072 b!7257074) bm!661349))

(declare-fun m!7939116 () Bool)

(assert (=> b!7257072 m!7939116))

(assert (=> b!7257073 m!7938874))

(declare-fun m!7939118 () Bool)

(assert (=> bm!661349 m!7939118))

(assert (=> b!7256956 d!2257069))

(declare-fun d!2257071 () Bool)

(declare-fun c!1349504 () Bool)

(assert (=> d!2257071 (= c!1349504 (isEmpty!40579 lt!2587819))))

(declare-fun e!4351545 () Bool)

(assert (=> d!2257071 (= (matchZipper!3578 (set.insert lt!2587811 (as set.empty (Set Context!15216))) lt!2587819) e!4351545)))

(declare-fun b!7257076 () Bool)

(assert (=> b!7257076 (= e!4351545 (nullableZipper!2929 (set.insert lt!2587811 (as set.empty (Set Context!15216)))))))

(declare-fun b!7257077 () Bool)

(assert (=> b!7257077 (= e!4351545 (matchZipper!3578 (derivationStepZipper!3446 (set.insert lt!2587811 (as set.empty (Set Context!15216))) (head!14926 lt!2587819)) (tail!14361 lt!2587819)))))

(assert (= (and d!2257071 c!1349504) b!7257076))

(assert (= (and d!2257071 (not c!1349504)) b!7257077))

(assert (=> d!2257071 m!7939054))

(assert (=> b!7257076 m!7938836))

(declare-fun m!7939120 () Bool)

(assert (=> b!7257076 m!7939120))

(assert (=> b!7257077 m!7939058))

(assert (=> b!7257077 m!7938836))

(assert (=> b!7257077 m!7939058))

(declare-fun m!7939122 () Bool)

(assert (=> b!7257077 m!7939122))

(assert (=> b!7257077 m!7939062))

(assert (=> b!7257077 m!7939122))

(assert (=> b!7257077 m!7939062))

(declare-fun m!7939124 () Bool)

(assert (=> b!7257077 m!7939124))

(assert (=> b!7256956 d!2257071))

(declare-fun d!2257073 () Bool)

(declare-fun e!4351548 () Bool)

(assert (=> d!2257073 e!4351548))

(declare-fun res!2942818 () Bool)

(assert (=> d!2257073 (=> (not res!2942818) (not e!4351548))))

(declare-fun lt!2587956 () Context!15216)

(declare-fun dynLambda!28791 (Int Context!15216) Bool)

(assert (=> d!2257073 (= res!2942818 (dynLambda!28791 lambda!445363 lt!2587956))))

(declare-fun getWitness!2243 (List!70586 Int) Context!15216)

(assert (=> d!2257073 (= lt!2587956 (getWitness!2243 (toList!11497 lt!2587802) lambda!445363))))

(assert (=> d!2257073 (exists!4414 lt!2587802 lambda!445363)))

(assert (=> d!2257073 (= (getWitness!2241 lt!2587802 lambda!445363) lt!2587956)))

(declare-fun b!7257080 () Bool)

(assert (=> b!7257080 (= e!4351548 (set.member lt!2587956 lt!2587802))))

(assert (= (and d!2257073 res!2942818) b!7257080))

(declare-fun b_lambda!279045 () Bool)

(assert (=> (not b_lambda!279045) (not d!2257073)))

(declare-fun m!7939126 () Bool)

(assert (=> d!2257073 m!7939126))

(assert (=> d!2257073 m!7938818))

(assert (=> d!2257073 m!7938818))

(declare-fun m!7939128 () Bool)

(assert (=> d!2257073 m!7939128))

(assert (=> d!2257073 m!7938812))

(declare-fun m!7939130 () Bool)

(assert (=> b!7257080 m!7939130))

(assert (=> b!7256956 d!2257073))

(declare-fun d!2257075 () Bool)

(assert (=> d!2257075 (forall!17523 (++!16599 (exprs!8108 lt!2587797) (exprs!8108 ct2!328)) lambda!445362)))

(declare-fun lt!2587957 () Unit!163940)

(assert (=> d!2257075 (= lt!2587957 (choose!56130 (exprs!8108 lt!2587797) (exprs!8108 ct2!328) lambda!445362))))

(assert (=> d!2257075 (forall!17523 (exprs!8108 lt!2587797) lambda!445362)))

(assert (=> d!2257075 (= (lemmaConcatPreservesForall!1475 (exprs!8108 lt!2587797) (exprs!8108 ct2!328) lambda!445362) lt!2587957)))

(declare-fun bs!1907922 () Bool)

(assert (= bs!1907922 d!2257075))

(assert (=> bs!1907922 m!7938840))

(assert (=> bs!1907922 m!7938840))

(declare-fun m!7939132 () Bool)

(assert (=> bs!1907922 m!7939132))

(declare-fun m!7939134 () Bool)

(assert (=> bs!1907922 m!7939134))

(declare-fun m!7939136 () Bool)

(assert (=> bs!1907922 m!7939136))

(assert (=> b!7256956 d!2257075))

(declare-fun b!7257091 () Bool)

(declare-fun res!2942823 () Bool)

(declare-fun e!4351553 () Bool)

(assert (=> b!7257091 (=> (not res!2942823) (not e!4351553))))

(declare-fun lt!2587960 () List!70584)

(declare-fun size!41747 (List!70584) Int)

(assert (=> b!7257091 (= res!2942823 (= (size!41747 lt!2587960) (+ (size!41747 (exprs!8108 lt!2587797)) (size!41747 (exprs!8108 ct2!328)))))))

(declare-fun b!7257089 () Bool)

(declare-fun e!4351554 () List!70584)

(assert (=> b!7257089 (= e!4351554 (exprs!8108 ct2!328))))

(declare-fun b!7257090 () Bool)

(assert (=> b!7257090 (= e!4351554 (Cons!70460 (h!76908 (exprs!8108 lt!2587797)) (++!16599 (t!384648 (exprs!8108 lt!2587797)) (exprs!8108 ct2!328))))))

(declare-fun b!7257092 () Bool)

(assert (=> b!7257092 (= e!4351553 (or (not (= (exprs!8108 ct2!328) Nil!70460)) (= lt!2587960 (exprs!8108 lt!2587797))))))

(declare-fun d!2257077 () Bool)

(assert (=> d!2257077 e!4351553))

(declare-fun res!2942824 () Bool)

(assert (=> d!2257077 (=> (not res!2942824) (not e!4351553))))

(declare-fun content!14655 (List!70584) (Set Regex!18668))

(assert (=> d!2257077 (= res!2942824 (= (content!14655 lt!2587960) (set.union (content!14655 (exprs!8108 lt!2587797)) (content!14655 (exprs!8108 ct2!328)))))))

(assert (=> d!2257077 (= lt!2587960 e!4351554)))

(declare-fun c!1349507 () Bool)

(assert (=> d!2257077 (= c!1349507 (is-Nil!70460 (exprs!8108 lt!2587797)))))

(assert (=> d!2257077 (= (++!16599 (exprs!8108 lt!2587797) (exprs!8108 ct2!328)) lt!2587960)))

(assert (= (and d!2257077 c!1349507) b!7257089))

(assert (= (and d!2257077 (not c!1349507)) b!7257090))

(assert (= (and d!2257077 res!2942824) b!7257091))

(assert (= (and b!7257091 res!2942823) b!7257092))

(declare-fun m!7939138 () Bool)

(assert (=> b!7257091 m!7939138))

(declare-fun m!7939140 () Bool)

(assert (=> b!7257091 m!7939140))

(declare-fun m!7939142 () Bool)

(assert (=> b!7257091 m!7939142))

(declare-fun m!7939144 () Bool)

(assert (=> b!7257090 m!7939144))

(declare-fun m!7939146 () Bool)

(assert (=> d!2257077 m!7939146))

(declare-fun m!7939148 () Bool)

(assert (=> d!2257077 m!7939148))

(declare-fun m!7939150 () Bool)

(assert (=> d!2257077 m!7939150))

(assert (=> b!7256956 d!2257077))

(declare-fun d!2257079 () Bool)

(declare-fun c!1349508 () Bool)

(assert (=> d!2257079 (= c!1349508 (isEmpty!40579 (t!384649 s1!1971)))))

(declare-fun e!4351555 () Bool)

(assert (=> d!2257079 (= (matchZipper!3578 lt!2587802 (t!384649 s1!1971)) e!4351555)))

(declare-fun b!7257093 () Bool)

(assert (=> b!7257093 (= e!4351555 (nullableZipper!2929 lt!2587802))))

(declare-fun b!7257094 () Bool)

(assert (=> b!7257094 (= e!4351555 (matchZipper!3578 (derivationStepZipper!3446 lt!2587802 (head!14926 (t!384649 s1!1971))) (tail!14361 (t!384649 s1!1971))))))

(assert (= (and d!2257079 c!1349508) b!7257093))

(assert (= (and d!2257079 (not c!1349508)) b!7257094))

(assert (=> d!2257079 m!7939034))

(declare-fun m!7939152 () Bool)

(assert (=> b!7257093 m!7939152))

(assert (=> b!7257094 m!7939038))

(assert (=> b!7257094 m!7939038))

(declare-fun m!7939154 () Bool)

(assert (=> b!7257094 m!7939154))

(assert (=> b!7257094 m!7939042))

(assert (=> b!7257094 m!7939154))

(assert (=> b!7257094 m!7939042))

(declare-fun m!7939156 () Bool)

(assert (=> b!7257094 m!7939156))

(assert (=> b!7256963 d!2257079))

(declare-fun bs!1907923 () Bool)

(declare-fun d!2257081 () Bool)

(assert (= bs!1907923 (and d!2257081 b!7256961)))

(declare-fun lambda!445409 () Int)

(assert (=> bs!1907923 (= lambda!445409 lambda!445364)))

(assert (=> d!2257081 true))

(assert (=> d!2257081 (= (derivationStepZipper!3446 lt!2587818 (h!76909 s1!1971)) (flatMap!2833 lt!2587818 lambda!445409))))

(declare-fun bs!1907924 () Bool)

(assert (= bs!1907924 d!2257081))

(declare-fun m!7939158 () Bool)

(assert (=> bs!1907924 m!7939158))

(assert (=> b!7256963 d!2257081))

(declare-fun d!2257083 () Bool)

(assert (=> d!2257083 (= (tail!14360 (exprs!8108 ct1!232)) (t!384648 (exprs!8108 ct1!232)))))

(assert (=> b!7256954 d!2257083))

(assert (=> b!7256954 d!2257057))

(declare-fun d!2257085 () Bool)

(assert (=> d!2257085 (= (isEmpty!40577 lt!2587799) (is-Nil!70460 lt!2587799))))

(assert (=> b!7256954 d!2257085))

(declare-fun b!7257097 () Bool)

(declare-fun e!4351557 () (Set Context!15216))

(assert (=> b!7257097 (= e!4351557 (as set.empty (Set Context!15216)))))

(declare-fun d!2257087 () Bool)

(declare-fun c!1349511 () Bool)

(declare-fun e!4351556 () Bool)

(assert (=> d!2257087 (= c!1349511 e!4351556)))

(declare-fun res!2942825 () Bool)

(assert (=> d!2257087 (=> (not res!2942825) (not e!4351556))))

(assert (=> d!2257087 (= res!2942825 (is-Cons!70460 (exprs!8108 lt!2587823)))))

(declare-fun e!4351558 () (Set Context!15216))

(assert (=> d!2257087 (= (derivationStepZipperUp!2492 lt!2587823 (h!76909 s1!1971)) e!4351558)))

(declare-fun call!661355 () (Set Context!15216))

(declare-fun b!7257098 () Bool)

(assert (=> b!7257098 (= e!4351558 (set.union call!661355 (derivationStepZipperUp!2492 (Context!15217 (t!384648 (exprs!8108 lt!2587823))) (h!76909 s1!1971))))))

(declare-fun b!7257099 () Bool)

(assert (=> b!7257099 (= e!4351556 (nullable!7928 (h!76908 (exprs!8108 lt!2587823))))))

(declare-fun bm!661350 () Bool)

(assert (=> bm!661350 (= call!661355 (derivationStepZipperDown!2662 (h!76908 (exprs!8108 lt!2587823)) (Context!15217 (t!384648 (exprs!8108 lt!2587823))) (h!76909 s1!1971)))))

(declare-fun b!7257100 () Bool)

(assert (=> b!7257100 (= e!4351557 call!661355)))

(declare-fun b!7257101 () Bool)

(assert (=> b!7257101 (= e!4351558 e!4351557)))

(declare-fun c!1349512 () Bool)

(assert (=> b!7257101 (= c!1349512 (is-Cons!70460 (exprs!8108 lt!2587823)))))

(assert (= (and d!2257087 res!2942825) b!7257099))

(assert (= (and d!2257087 c!1349511) b!7257098))

(assert (= (and d!2257087 (not c!1349511)) b!7257101))

(assert (= (and b!7257101 c!1349512) b!7257100))

(assert (= (and b!7257101 (not c!1349512)) b!7257097))

(assert (= (or b!7257098 b!7257100) bm!661350))

(declare-fun m!7939160 () Bool)

(assert (=> b!7257098 m!7939160))

(declare-fun m!7939162 () Bool)

(assert (=> b!7257099 m!7939162))

(declare-fun m!7939164 () Bool)

(assert (=> bm!661350 m!7939164))

(assert (=> b!7256954 d!2257087))

(declare-fun b!7257124 () Bool)

(declare-fun e!4351572 () (Set Context!15216))

(declare-fun call!661370 () (Set Context!15216))

(assert (=> b!7257124 (= e!4351572 call!661370)))

(declare-fun b!7257125 () Bool)

(declare-fun c!1349526 () Bool)

(assert (=> b!7257125 (= c!1349526 (is-Star!18668 (h!76908 (exprs!8108 ct1!232))))))

(declare-fun e!4351576 () (Set Context!15216))

(assert (=> b!7257125 (= e!4351576 e!4351572)))

(declare-fun b!7257126 () Bool)

(declare-fun e!4351571 () (Set Context!15216))

(declare-fun call!661372 () (Set Context!15216))

(declare-fun call!661368 () (Set Context!15216))

(assert (=> b!7257126 (= e!4351571 (set.union call!661372 call!661368))))

(declare-fun bm!661363 () Bool)

(declare-fun call!661373 () List!70584)

(declare-fun c!1349524 () Bool)

(assert (=> bm!661363 (= call!661368 (derivationStepZipperDown!2662 (ite c!1349524 (regTwo!37849 (h!76908 (exprs!8108 ct1!232))) (regOne!37848 (h!76908 (exprs!8108 ct1!232)))) (ite c!1349524 lt!2587813 (Context!15217 call!661373)) (h!76909 s1!1971)))))

(declare-fun bm!661364 () Bool)

(declare-fun call!661369 () (Set Context!15216))

(assert (=> bm!661364 (= call!661370 call!661369)))

(declare-fun b!7257127 () Bool)

(declare-fun e!4351574 () (Set Context!15216))

(assert (=> b!7257127 (= e!4351574 e!4351576)))

(declare-fun c!1349527 () Bool)

(assert (=> b!7257127 (= c!1349527 (is-Concat!27513 (h!76908 (exprs!8108 ct1!232))))))

(declare-fun c!1349523 () Bool)

(declare-fun bm!661365 () Bool)

(declare-fun $colon$colon!2931 (List!70584 Regex!18668) List!70584)

(assert (=> bm!661365 (= call!661373 ($colon$colon!2931 (exprs!8108 lt!2587813) (ite (or c!1349523 c!1349527) (regTwo!37848 (h!76908 (exprs!8108 ct1!232))) (h!76908 (exprs!8108 ct1!232)))))))

(declare-fun b!7257128 () Bool)

(assert (=> b!7257128 (= e!4351574 (set.union call!661368 call!661369))))

(declare-fun b!7257130 () Bool)

(declare-fun e!4351575 () (Set Context!15216))

(assert (=> b!7257130 (= e!4351575 e!4351571)))

(assert (=> b!7257130 (= c!1349524 (is-Union!18668 (h!76908 (exprs!8108 ct1!232))))))

(declare-fun b!7257131 () Bool)

(assert (=> b!7257131 (= e!4351572 (as set.empty (Set Context!15216)))))

(declare-fun b!7257132 () Bool)

(assert (=> b!7257132 (= e!4351576 call!661370)))

(declare-fun bm!661366 () Bool)

(declare-fun call!661371 () List!70584)

(assert (=> bm!661366 (= call!661371 call!661373)))

(declare-fun bm!661367 () Bool)

(assert (=> bm!661367 (= call!661369 call!661372)))

(declare-fun bm!661368 () Bool)

(assert (=> bm!661368 (= call!661372 (derivationStepZipperDown!2662 (ite c!1349524 (regOne!37849 (h!76908 (exprs!8108 ct1!232))) (ite c!1349523 (regTwo!37848 (h!76908 (exprs!8108 ct1!232))) (ite c!1349527 (regOne!37848 (h!76908 (exprs!8108 ct1!232))) (reg!18997 (h!76908 (exprs!8108 ct1!232)))))) (ite (or c!1349524 c!1349523) lt!2587813 (Context!15217 call!661371)) (h!76909 s1!1971)))))

(declare-fun d!2257089 () Bool)

(declare-fun c!1349525 () Bool)

(assert (=> d!2257089 (= c!1349525 (and (is-ElementMatch!18668 (h!76908 (exprs!8108 ct1!232))) (= (c!1349469 (h!76908 (exprs!8108 ct1!232))) (h!76909 s1!1971))))))

(assert (=> d!2257089 (= (derivationStepZipperDown!2662 (h!76908 (exprs!8108 ct1!232)) lt!2587813 (h!76909 s1!1971)) e!4351575)))

(declare-fun b!7257129 () Bool)

(declare-fun e!4351573 () Bool)

(assert (=> b!7257129 (= c!1349523 e!4351573)))

(declare-fun res!2942828 () Bool)

(assert (=> b!7257129 (=> (not res!2942828) (not e!4351573))))

(assert (=> b!7257129 (= res!2942828 (is-Concat!27513 (h!76908 (exprs!8108 ct1!232))))))

(assert (=> b!7257129 (= e!4351571 e!4351574)))

(declare-fun b!7257133 () Bool)

(assert (=> b!7257133 (= e!4351575 (set.insert lt!2587813 (as set.empty (Set Context!15216))))))

(declare-fun b!7257134 () Bool)

(assert (=> b!7257134 (= e!4351573 (nullable!7928 (regOne!37848 (h!76908 (exprs!8108 ct1!232)))))))

(assert (= (and d!2257089 c!1349525) b!7257133))

(assert (= (and d!2257089 (not c!1349525)) b!7257130))

(assert (= (and b!7257130 c!1349524) b!7257126))

(assert (= (and b!7257130 (not c!1349524)) b!7257129))

(assert (= (and b!7257129 res!2942828) b!7257134))

(assert (= (and b!7257129 c!1349523) b!7257128))

(assert (= (and b!7257129 (not c!1349523)) b!7257127))

(assert (= (and b!7257127 c!1349527) b!7257132))

(assert (= (and b!7257127 (not c!1349527)) b!7257125))

(assert (= (and b!7257125 c!1349526) b!7257124))

(assert (= (and b!7257125 (not c!1349526)) b!7257131))

(assert (= (or b!7257132 b!7257124) bm!661366))

(assert (= (or b!7257132 b!7257124) bm!661364))

(assert (= (or b!7257128 bm!661366) bm!661365))

(assert (= (or b!7257128 bm!661364) bm!661367))

(assert (= (or b!7257126 b!7257128) bm!661363))

(assert (= (or b!7257126 bm!661367) bm!661368))

(declare-fun m!7939166 () Bool)

(assert (=> bm!661368 m!7939166))

(declare-fun m!7939168 () Bool)

(assert (=> b!7257134 m!7939168))

(declare-fun m!7939170 () Bool)

(assert (=> bm!661363 m!7939170))

(declare-fun m!7939172 () Bool)

(assert (=> bm!661365 m!7939172))

(declare-fun m!7939174 () Bool)

(assert (=> b!7257133 m!7939174))

(assert (=> b!7256954 d!2257089))

(declare-fun d!2257091 () Bool)

(declare-fun c!1349528 () Bool)

(assert (=> d!2257091 (= c!1349528 (isEmpty!40579 (t!384649 s1!1971)))))

(declare-fun e!4351577 () Bool)

(assert (=> d!2257091 (= (matchZipper!3578 lt!2587810 (t!384649 s1!1971)) e!4351577)))

(declare-fun b!7257135 () Bool)

(assert (=> b!7257135 (= e!4351577 (nullableZipper!2929 lt!2587810))))

(declare-fun b!7257136 () Bool)

(assert (=> b!7257136 (= e!4351577 (matchZipper!3578 (derivationStepZipper!3446 lt!2587810 (head!14926 (t!384649 s1!1971))) (tail!14361 (t!384649 s1!1971))))))

(assert (= (and d!2257091 c!1349528) b!7257135))

(assert (= (and d!2257091 (not c!1349528)) b!7257136))

(assert (=> d!2257091 m!7939034))

(declare-fun m!7939176 () Bool)

(assert (=> b!7257135 m!7939176))

(assert (=> b!7257136 m!7939038))

(assert (=> b!7257136 m!7939038))

(declare-fun m!7939178 () Bool)

(assert (=> b!7257136 m!7939178))

(assert (=> b!7257136 m!7939042))

(assert (=> b!7257136 m!7939178))

(assert (=> b!7257136 m!7939042))

(declare-fun m!7939180 () Bool)

(assert (=> b!7257136 m!7939180))

(assert (=> b!7256953 d!2257091))

(declare-fun d!2257093 () Bool)

(declare-fun c!1349529 () Bool)

(assert (=> d!2257093 (= c!1349529 (isEmpty!40579 lt!2587819))))

(declare-fun e!4351578 () Bool)

(assert (=> d!2257093 (= (matchZipper!3578 lt!2587796 lt!2587819) e!4351578)))

(declare-fun b!7257137 () Bool)

(assert (=> b!7257137 (= e!4351578 (nullableZipper!2929 lt!2587796))))

(declare-fun b!7257138 () Bool)

(assert (=> b!7257138 (= e!4351578 (matchZipper!3578 (derivationStepZipper!3446 lt!2587796 (head!14926 lt!2587819)) (tail!14361 lt!2587819)))))

(assert (= (and d!2257093 c!1349529) b!7257137))

(assert (= (and d!2257093 (not c!1349529)) b!7257138))

(assert (=> d!2257093 m!7939054))

(declare-fun m!7939182 () Bool)

(assert (=> b!7257137 m!7939182))

(assert (=> b!7257138 m!7939058))

(assert (=> b!7257138 m!7939058))

(declare-fun m!7939184 () Bool)

(assert (=> b!7257138 m!7939184))

(assert (=> b!7257138 m!7939062))

(assert (=> b!7257138 m!7939184))

(assert (=> b!7257138 m!7939062))

(declare-fun m!7939186 () Bool)

(assert (=> b!7257138 m!7939186))

(assert (=> b!7256964 d!2257093))

(declare-fun d!2257095 () Bool)

(declare-fun c!1349530 () Bool)

(assert (=> d!2257095 (= c!1349530 (isEmpty!40579 s2!1849))))

(declare-fun e!4351579 () Bool)

(assert (=> d!2257095 (= (matchZipper!3578 (set.insert ct2!328 (as set.empty (Set Context!15216))) s2!1849) e!4351579)))

(declare-fun b!7257139 () Bool)

(assert (=> b!7257139 (= e!4351579 (nullableZipper!2929 (set.insert ct2!328 (as set.empty (Set Context!15216)))))))

(declare-fun b!7257140 () Bool)

(assert (=> b!7257140 (= e!4351579 (matchZipper!3578 (derivationStepZipper!3446 (set.insert ct2!328 (as set.empty (Set Context!15216))) (head!14926 s2!1849)) (tail!14361 s2!1849)))))

(assert (= (and d!2257095 c!1349530) b!7257139))

(assert (= (and d!2257095 (not c!1349530)) b!7257140))

(declare-fun m!7939188 () Bool)

(assert (=> d!2257095 m!7939188))

(assert (=> b!7257139 m!7938852))

(declare-fun m!7939190 () Bool)

(assert (=> b!7257139 m!7939190))

(declare-fun m!7939192 () Bool)

(assert (=> b!7257140 m!7939192))

(assert (=> b!7257140 m!7938852))

(assert (=> b!7257140 m!7939192))

(declare-fun m!7939194 () Bool)

(assert (=> b!7257140 m!7939194))

(declare-fun m!7939196 () Bool)

(assert (=> b!7257140 m!7939196))

(assert (=> b!7257140 m!7939194))

(assert (=> b!7257140 m!7939196))

(declare-fun m!7939198 () Bool)

(assert (=> b!7257140 m!7939198))

(assert (=> b!7256960 d!2257095))

(declare-fun b!7257143 () Bool)

(declare-fun res!2942829 () Bool)

(declare-fun e!4351580 () Bool)

(assert (=> b!7257143 (=> (not res!2942829) (not e!4351580))))

(declare-fun lt!2587961 () List!70584)

(assert (=> b!7257143 (= res!2942829 (= (size!41747 lt!2587961) (+ (size!41747 (exprs!8108 ct1!232)) (size!41747 (exprs!8108 ct2!328)))))))

(declare-fun b!7257141 () Bool)

(declare-fun e!4351581 () List!70584)

(assert (=> b!7257141 (= e!4351581 (exprs!8108 ct2!328))))

(declare-fun b!7257142 () Bool)

(assert (=> b!7257142 (= e!4351581 (Cons!70460 (h!76908 (exprs!8108 ct1!232)) (++!16599 (t!384648 (exprs!8108 ct1!232)) (exprs!8108 ct2!328))))))

(declare-fun b!7257144 () Bool)

(assert (=> b!7257144 (= e!4351580 (or (not (= (exprs!8108 ct2!328) Nil!70460)) (= lt!2587961 (exprs!8108 ct1!232))))))

(declare-fun d!2257097 () Bool)

(assert (=> d!2257097 e!4351580))

(declare-fun res!2942830 () Bool)

(assert (=> d!2257097 (=> (not res!2942830) (not e!4351580))))

(assert (=> d!2257097 (= res!2942830 (= (content!14655 lt!2587961) (set.union (content!14655 (exprs!8108 ct1!232)) (content!14655 (exprs!8108 ct2!328)))))))

(assert (=> d!2257097 (= lt!2587961 e!4351581)))

(declare-fun c!1349531 () Bool)

(assert (=> d!2257097 (= c!1349531 (is-Nil!70460 (exprs!8108 ct1!232)))))

(assert (=> d!2257097 (= (++!16599 (exprs!8108 ct1!232) (exprs!8108 ct2!328)) lt!2587961)))

(assert (= (and d!2257097 c!1349531) b!7257141))

(assert (= (and d!2257097 (not c!1349531)) b!7257142))

(assert (= (and d!2257097 res!2942830) b!7257143))

(assert (= (and b!7257143 res!2942829) b!7257144))

(declare-fun m!7939200 () Bool)

(assert (=> b!7257143 m!7939200))

(declare-fun m!7939202 () Bool)

(assert (=> b!7257143 m!7939202))

(assert (=> b!7257143 m!7939142))

(declare-fun m!7939204 () Bool)

(assert (=> b!7257142 m!7939204))

(declare-fun m!7939206 () Bool)

(assert (=> d!2257097 m!7939206))

(declare-fun m!7939208 () Bool)

(assert (=> d!2257097 m!7939208))

(assert (=> d!2257097 m!7939150))

(assert (=> b!7256962 d!2257097))

(assert (=> b!7256962 d!2257057))

(declare-fun d!2257099 () Bool)

(declare-fun choose!56132 ((Set Context!15216) Int) (Set Context!15216))

(assert (=> d!2257099 (= (flatMap!2833 lt!2587805 lambda!445364) (choose!56132 lt!2587805 lambda!445364))))

(declare-fun bs!1907925 () Bool)

(assert (= bs!1907925 d!2257099))

(declare-fun m!7939210 () Bool)

(assert (=> bs!1907925 m!7939210))

(assert (=> b!7256961 d!2257099))

(declare-fun d!2257101 () Bool)

(declare-fun dynLambda!28792 (Int Context!15216) (Set Context!15216))

(assert (=> d!2257101 (= (flatMap!2833 lt!2587805 lambda!445364) (dynLambda!28792 lambda!445364 lt!2587823))))

(declare-fun lt!2587964 () Unit!163940)

(declare-fun choose!56133 ((Set Context!15216) Context!15216 Int) Unit!163940)

(assert (=> d!2257101 (= lt!2587964 (choose!56133 lt!2587805 lt!2587823 lambda!445364))))

(assert (=> d!2257101 (= lt!2587805 (set.insert lt!2587823 (as set.empty (Set Context!15216))))))

(assert (=> d!2257101 (= (lemmaFlatMapOnSingletonSet!2237 lt!2587805 lt!2587823 lambda!445364) lt!2587964)))

(declare-fun b_lambda!279047 () Bool)

(assert (=> (not b_lambda!279047) (not d!2257101)))

(declare-fun bs!1907926 () Bool)

(assert (= bs!1907926 d!2257101))

(assert (=> bs!1907926 m!7938858))

(declare-fun m!7939212 () Bool)

(assert (=> bs!1907926 m!7939212))

(declare-fun m!7939214 () Bool)

(assert (=> bs!1907926 m!7939214))

(assert (=> bs!1907926 m!7938820))

(assert (=> b!7256961 d!2257101))

(declare-fun bs!1907927 () Bool)

(declare-fun d!2257103 () Bool)

(assert (= bs!1907927 (and d!2257103 b!7256962)))

(declare-fun lambda!445414 () Int)

(assert (=> bs!1907927 (= lambda!445414 lambda!445362)))

(declare-fun bs!1907928 () Bool)

(assert (= bs!1907928 (and d!2257103 d!2257041)))

(assert (=> bs!1907928 (= lambda!445414 lambda!445402)))

(declare-fun bs!1907929 () Bool)

(assert (= bs!1907929 (and d!2257103 d!2257043)))

(assert (=> bs!1907929 (= lambda!445414 lambda!445403)))

(declare-fun bs!1907930 () Bool)

(assert (= bs!1907930 (and d!2257103 d!2257065)))

(assert (=> bs!1907930 (= lambda!445414 lambda!445406)))

(assert (=> d!2257103 (set.member (Context!15217 (++!16599 (exprs!8108 lt!2587797) (exprs!8108 ct2!328))) (derivationStepZipperUp!2492 (Context!15217 (++!16599 (exprs!8108 ct1!232) (exprs!8108 ct2!328))) (h!76909 s1!1971)))))

(declare-fun lt!2587973 () Unit!163940)

(assert (=> d!2257103 (= lt!2587973 (lemmaConcatPreservesForall!1475 (exprs!8108 ct1!232) (exprs!8108 ct2!328) lambda!445414))))

(declare-fun lt!2587972 () Unit!163940)

(assert (=> d!2257103 (= lt!2587972 (lemmaConcatPreservesForall!1475 (exprs!8108 lt!2587797) (exprs!8108 ct2!328) lambda!445414))))

(declare-fun lt!2587971 () Unit!163940)

(declare-fun choose!56134 (Context!15216 Context!15216 Context!15216 C!37610) Unit!163940)

(assert (=> d!2257103 (= lt!2587971 (choose!56134 ct1!232 ct2!328 lt!2587797 (h!76909 s1!1971)))))

(assert (=> d!2257103 (set.member lt!2587797 (derivationStepZipperUp!2492 ct1!232 (h!76909 s1!1971)))))

(assert (=> d!2257103 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!23 ct1!232 ct2!328 lt!2587797 (h!76909 s1!1971)) lt!2587971)))

(declare-fun bs!1907931 () Bool)

(assert (= bs!1907931 d!2257103))

(assert (=> bs!1907931 m!7938840))

(declare-fun m!7939216 () Bool)

(assert (=> bs!1907931 m!7939216))

(assert (=> bs!1907931 m!7938822))

(declare-fun m!7939218 () Bool)

(assert (=> bs!1907931 m!7939218))

(declare-fun m!7939220 () Bool)

(assert (=> bs!1907931 m!7939220))

(declare-fun m!7939222 () Bool)

(assert (=> bs!1907931 m!7939222))

(assert (=> bs!1907931 m!7938844))

(declare-fun m!7939224 () Bool)

(assert (=> bs!1907931 m!7939224))

(declare-fun m!7939226 () Bool)

(assert (=> bs!1907931 m!7939226))

(assert (=> b!7256961 d!2257103))

(assert (=> b!7256961 d!2257075))

(declare-fun d!2257105 () Bool)

(declare-fun nullableFct!3116 (Regex!18668) Bool)

(assert (=> d!2257105 (= (nullable!7928 (h!76908 (exprs!8108 ct1!232))) (nullableFct!3116 (h!76908 (exprs!8108 ct1!232))))))

(declare-fun bs!1907932 () Bool)

(assert (= bs!1907932 d!2257105))

(declare-fun m!7939228 () Bool)

(assert (=> bs!1907932 m!7939228))

(assert (=> b!7256961 d!2257105))

(declare-fun b!7257147 () Bool)

(declare-fun res!2942831 () Bool)

(declare-fun e!4351583 () Bool)

(assert (=> b!7257147 (=> (not res!2942831) (not e!4351583))))

(declare-fun lt!2587974 () List!70585)

(assert (=> b!7257147 (= res!2942831 (= (size!41746 lt!2587974) (+ (size!41746 s1!1971) (size!41746 s2!1849))))))

(declare-fun b!7257148 () Bool)

(assert (=> b!7257148 (= e!4351583 (or (not (= s2!1849 Nil!70461)) (= lt!2587974 s1!1971)))))

(declare-fun b!7257146 () Bool)

(declare-fun e!4351582 () List!70585)

(assert (=> b!7257146 (= e!4351582 (Cons!70461 (h!76909 s1!1971) (++!16598 (t!384649 s1!1971) s2!1849)))))

(declare-fun b!7257145 () Bool)

(assert (=> b!7257145 (= e!4351582 s2!1849)))

(declare-fun d!2257107 () Bool)

(assert (=> d!2257107 e!4351583))

(declare-fun res!2942832 () Bool)

(assert (=> d!2257107 (=> (not res!2942832) (not e!4351583))))

(assert (=> d!2257107 (= res!2942832 (= (content!14654 lt!2587974) (set.union (content!14654 s1!1971) (content!14654 s2!1849))))))

(assert (=> d!2257107 (= lt!2587974 e!4351582)))

(declare-fun c!1349533 () Bool)

(assert (=> d!2257107 (= c!1349533 (is-Nil!70461 s1!1971))))

(assert (=> d!2257107 (= (++!16598 s1!1971 s2!1849) lt!2587974)))

(assert (= (and d!2257107 c!1349533) b!7257145))

(assert (= (and d!2257107 (not c!1349533)) b!7257146))

(assert (= (and d!2257107 res!2942832) b!7257147))

(assert (= (and b!7257147 res!2942831) b!7257148))

(declare-fun m!7939230 () Bool)

(assert (=> b!7257147 m!7939230))

(declare-fun m!7939232 () Bool)

(assert (=> b!7257147 m!7939232))

(assert (=> b!7257147 m!7939106))

(assert (=> b!7257146 m!7938846))

(declare-fun m!7939234 () Bool)

(assert (=> d!2257107 m!7939234))

(declare-fun m!7939236 () Bool)

(assert (=> d!2257107 m!7939236))

(assert (=> d!2257107 m!7939114))

(assert (=> b!7256961 d!2257107))

(declare-fun d!2257109 () Bool)

(assert (=> d!2257109 (= (flatMap!2833 lt!2587818 lambda!445364) (dynLambda!28792 lambda!445364 ct1!232))))

(declare-fun lt!2587975 () Unit!163940)

(assert (=> d!2257109 (= lt!2587975 (choose!56133 lt!2587818 ct1!232 lambda!445364))))

(assert (=> d!2257109 (= lt!2587818 (set.insert ct1!232 (as set.empty (Set Context!15216))))))

(assert (=> d!2257109 (= (lemmaFlatMapOnSingletonSet!2237 lt!2587818 ct1!232 lambda!445364) lt!2587975)))

(declare-fun b_lambda!279049 () Bool)

(assert (=> (not b_lambda!279049) (not d!2257109)))

(declare-fun bs!1907933 () Bool)

(assert (= bs!1907933 d!2257109))

(assert (=> bs!1907933 m!7938882))

(declare-fun m!7939238 () Bool)

(assert (=> bs!1907933 m!7939238))

(declare-fun m!7939240 () Bool)

(assert (=> bs!1907933 m!7939240))

(assert (=> bs!1907933 m!7938886))

(assert (=> b!7256961 d!2257109))

(assert (=> b!7256961 d!2257057))

(declare-fun d!2257111 () Bool)

(assert (=> d!2257111 (= (tail!14361 (++!16598 s1!1971 s2!1849)) (t!384649 (++!16598 s1!1971 s2!1849)))))

(assert (=> b!7256961 d!2257111))

(assert (=> b!7256961 d!2257087))

(declare-fun d!2257113 () Bool)

(assert (=> d!2257113 (= (flatMap!2833 lt!2587818 lambda!445364) (choose!56132 lt!2587818 lambda!445364))))

(declare-fun bs!1907934 () Bool)

(assert (= bs!1907934 d!2257113))

(declare-fun m!7939242 () Bool)

(assert (=> bs!1907934 m!7939242))

(assert (=> b!7256961 d!2257113))

(declare-fun b!7257149 () Bool)

(declare-fun e!4351585 () (Set Context!15216))

(declare-fun call!661376 () (Set Context!15216))

(assert (=> b!7257149 (= e!4351585 call!661376)))

(declare-fun b!7257150 () Bool)

(declare-fun c!1349537 () Bool)

(assert (=> b!7257150 (= c!1349537 (is-Star!18668 (h!76908 (exprs!8108 ct1!232))))))

(declare-fun e!4351589 () (Set Context!15216))

(assert (=> b!7257150 (= e!4351589 e!4351585)))

(declare-fun b!7257151 () Bool)

(declare-fun e!4351584 () (Set Context!15216))

(declare-fun call!661378 () (Set Context!15216))

(declare-fun call!661374 () (Set Context!15216))

(assert (=> b!7257151 (= e!4351584 (set.union call!661378 call!661374))))

(declare-fun bm!661369 () Bool)

(declare-fun c!1349535 () Bool)

(declare-fun call!661379 () List!70584)

(assert (=> bm!661369 (= call!661374 (derivationStepZipperDown!2662 (ite c!1349535 (regTwo!37849 (h!76908 (exprs!8108 ct1!232))) (regOne!37848 (h!76908 (exprs!8108 ct1!232)))) (ite c!1349535 lt!2587798 (Context!15217 call!661379)) (h!76909 s1!1971)))))

(declare-fun bm!661370 () Bool)

(declare-fun call!661375 () (Set Context!15216))

(assert (=> bm!661370 (= call!661376 call!661375)))

(declare-fun b!7257152 () Bool)

(declare-fun e!4351587 () (Set Context!15216))

(assert (=> b!7257152 (= e!4351587 e!4351589)))

(declare-fun c!1349538 () Bool)

(assert (=> b!7257152 (= c!1349538 (is-Concat!27513 (h!76908 (exprs!8108 ct1!232))))))

(declare-fun bm!661371 () Bool)

(declare-fun c!1349534 () Bool)

(assert (=> bm!661371 (= call!661379 ($colon$colon!2931 (exprs!8108 lt!2587798) (ite (or c!1349534 c!1349538) (regTwo!37848 (h!76908 (exprs!8108 ct1!232))) (h!76908 (exprs!8108 ct1!232)))))))

(declare-fun b!7257153 () Bool)

(assert (=> b!7257153 (= e!4351587 (set.union call!661374 call!661375))))

(declare-fun b!7257155 () Bool)

(declare-fun e!4351588 () (Set Context!15216))

(assert (=> b!7257155 (= e!4351588 e!4351584)))

(assert (=> b!7257155 (= c!1349535 (is-Union!18668 (h!76908 (exprs!8108 ct1!232))))))

(declare-fun b!7257156 () Bool)

(assert (=> b!7257156 (= e!4351585 (as set.empty (Set Context!15216)))))

(declare-fun b!7257157 () Bool)

(assert (=> b!7257157 (= e!4351589 call!661376)))

(declare-fun bm!661372 () Bool)

(declare-fun call!661377 () List!70584)

(assert (=> bm!661372 (= call!661377 call!661379)))

(declare-fun bm!661373 () Bool)

(assert (=> bm!661373 (= call!661375 call!661378)))

(declare-fun bm!661374 () Bool)

(assert (=> bm!661374 (= call!661378 (derivationStepZipperDown!2662 (ite c!1349535 (regOne!37849 (h!76908 (exprs!8108 ct1!232))) (ite c!1349534 (regTwo!37848 (h!76908 (exprs!8108 ct1!232))) (ite c!1349538 (regOne!37848 (h!76908 (exprs!8108 ct1!232))) (reg!18997 (h!76908 (exprs!8108 ct1!232)))))) (ite (or c!1349535 c!1349534) lt!2587798 (Context!15217 call!661377)) (h!76909 s1!1971)))))

(declare-fun d!2257115 () Bool)

(declare-fun c!1349536 () Bool)

(assert (=> d!2257115 (= c!1349536 (and (is-ElementMatch!18668 (h!76908 (exprs!8108 ct1!232))) (= (c!1349469 (h!76908 (exprs!8108 ct1!232))) (h!76909 s1!1971))))))

(assert (=> d!2257115 (= (derivationStepZipperDown!2662 (h!76908 (exprs!8108 ct1!232)) lt!2587798 (h!76909 s1!1971)) e!4351588)))

(declare-fun b!7257154 () Bool)

(declare-fun e!4351586 () Bool)

(assert (=> b!7257154 (= c!1349534 e!4351586)))

(declare-fun res!2942833 () Bool)

(assert (=> b!7257154 (=> (not res!2942833) (not e!4351586))))

(assert (=> b!7257154 (= res!2942833 (is-Concat!27513 (h!76908 (exprs!8108 ct1!232))))))

(assert (=> b!7257154 (= e!4351584 e!4351587)))

(declare-fun b!7257158 () Bool)

(assert (=> b!7257158 (= e!4351588 (set.insert lt!2587798 (as set.empty (Set Context!15216))))))

(declare-fun b!7257159 () Bool)

(assert (=> b!7257159 (= e!4351586 (nullable!7928 (regOne!37848 (h!76908 (exprs!8108 ct1!232)))))))

(assert (= (and d!2257115 c!1349536) b!7257158))

(assert (= (and d!2257115 (not c!1349536)) b!7257155))

(assert (= (and b!7257155 c!1349535) b!7257151))

(assert (= (and b!7257155 (not c!1349535)) b!7257154))

(assert (= (and b!7257154 res!2942833) b!7257159))

(assert (= (and b!7257154 c!1349534) b!7257153))

(assert (= (and b!7257154 (not c!1349534)) b!7257152))

(assert (= (and b!7257152 c!1349538) b!7257157))

(assert (= (and b!7257152 (not c!1349538)) b!7257150))

(assert (= (and b!7257150 c!1349537) b!7257149))

(assert (= (and b!7257150 (not c!1349537)) b!7257156))

(assert (= (or b!7257157 b!7257149) bm!661372))

(assert (= (or b!7257157 b!7257149) bm!661370))

(assert (= (or b!7257153 bm!661372) bm!661371))

(assert (= (or b!7257153 bm!661370) bm!661373))

(assert (= (or b!7257151 b!7257153) bm!661369))

(assert (= (or b!7257151 bm!661373) bm!661374))

(declare-fun m!7939244 () Bool)

(assert (=> bm!661374 m!7939244))

(assert (=> b!7257159 m!7939168))

(declare-fun m!7939246 () Bool)

(assert (=> bm!661369 m!7939246))

(declare-fun m!7939248 () Bool)

(assert (=> bm!661371 m!7939248))

(declare-fun m!7939250 () Bool)

(assert (=> b!7257158 m!7939250))

(assert (=> b!7256961 d!2257115))

(assert (=> b!7256961 d!2257069))

(declare-fun d!2257117 () Bool)

(assert (=> d!2257117 (= (tail!14360 lt!2587799) (t!384648 lt!2587799))))

(assert (=> b!7256961 d!2257117))

(declare-fun bs!1907935 () Bool)

(declare-fun d!2257119 () Bool)

(assert (= bs!1907935 (and d!2257119 b!7256961)))

(declare-fun lambda!445415 () Int)

(assert (=> bs!1907935 (= lambda!445415 lambda!445364)))

(declare-fun bs!1907936 () Bool)

(assert (= bs!1907936 (and d!2257119 d!2257081)))

(assert (=> bs!1907936 (= lambda!445415 lambda!445409)))

(assert (=> d!2257119 true))

(assert (=> d!2257119 (= (derivationStepZipper!3446 lt!2587805 (h!76909 s1!1971)) (flatMap!2833 lt!2587805 lambda!445415))))

(declare-fun bs!1907937 () Bool)

(assert (= bs!1907937 d!2257119))

(declare-fun m!7939252 () Bool)

(assert (=> bs!1907937 m!7939252))

(assert (=> b!7256961 d!2257119))

(declare-fun d!2257121 () Bool)

(declare-fun lt!2587978 () Bool)

(assert (=> d!2257121 (= lt!2587978 (exists!4415 (toList!11497 lt!2587802) lambda!445363))))

(declare-fun choose!56135 ((Set Context!15216) Int) Bool)

(assert (=> d!2257121 (= lt!2587978 (choose!56135 lt!2587802 lambda!445363))))

(assert (=> d!2257121 (= (exists!4414 lt!2587802 lambda!445363) lt!2587978)))

(declare-fun bs!1907938 () Bool)

(assert (= bs!1907938 d!2257121))

(assert (=> bs!1907938 m!7938818))

(assert (=> bs!1907938 m!7938818))

(declare-fun m!7939254 () Bool)

(assert (=> bs!1907938 m!7939254))

(declare-fun m!7939256 () Bool)

(assert (=> bs!1907938 m!7939256))

(assert (=> b!7256959 d!2257121))

(declare-fun bs!1907939 () Bool)

(declare-fun d!2257123 () Bool)

(assert (= bs!1907939 (and d!2257123 b!7256959)))

(declare-fun lambda!445418 () Int)

(assert (=> bs!1907939 (not (= lambda!445418 lambda!445363))))

(assert (=> d!2257123 true))

(declare-fun order!29013 () Int)

(declare-fun dynLambda!28793 (Int Int) Int)

(assert (=> d!2257123 (< (dynLambda!28793 order!29013 lambda!445363) (dynLambda!28793 order!29013 lambda!445418))))

(declare-fun forall!17524 (List!70586 Int) Bool)

(assert (=> d!2257123 (= (exists!4415 lt!2587827 lambda!445363) (not (forall!17524 lt!2587827 lambda!445418)))))

(declare-fun bs!1907940 () Bool)

(assert (= bs!1907940 d!2257123))

(declare-fun m!7939258 () Bool)

(assert (=> bs!1907940 m!7939258))

(assert (=> b!7256959 d!2257123))

(declare-fun bs!1907941 () Bool)

(declare-fun d!2257125 () Bool)

(assert (= bs!1907941 (and d!2257125 b!7256959)))

(declare-fun lambda!445421 () Int)

(assert (=> bs!1907941 (= lambda!445421 lambda!445363)))

(declare-fun bs!1907942 () Bool)

(assert (= bs!1907942 (and d!2257125 d!2257123)))

(assert (=> bs!1907942 (not (= lambda!445421 lambda!445418))))

(assert (=> d!2257125 true))

(assert (=> d!2257125 (exists!4415 lt!2587827 lambda!445421)))

(declare-fun lt!2587981 () Unit!163940)

(declare-fun choose!56136 (List!70586 List!70585) Unit!163940)

(assert (=> d!2257125 (= lt!2587981 (choose!56136 lt!2587827 (t!384649 s1!1971)))))

(declare-fun content!14656 (List!70586) (Set Context!15216))

(assert (=> d!2257125 (matchZipper!3578 (content!14656 lt!2587827) (t!384649 s1!1971))))

(assert (=> d!2257125 (= (lemmaZipperMatchesExistsMatchingContext!771 lt!2587827 (t!384649 s1!1971)) lt!2587981)))

(declare-fun bs!1907943 () Bool)

(assert (= bs!1907943 d!2257125))

(declare-fun m!7939260 () Bool)

(assert (=> bs!1907943 m!7939260))

(declare-fun m!7939262 () Bool)

(assert (=> bs!1907943 m!7939262))

(declare-fun m!7939264 () Bool)

(assert (=> bs!1907943 m!7939264))

(assert (=> bs!1907943 m!7939264))

(declare-fun m!7939266 () Bool)

(assert (=> bs!1907943 m!7939266))

(assert (=> b!7256959 d!2257125))

(declare-fun d!2257127 () Bool)

(declare-fun e!4351592 () Bool)

(assert (=> d!2257127 e!4351592))

(declare-fun res!2942836 () Bool)

(assert (=> d!2257127 (=> (not res!2942836) (not e!4351592))))

(declare-fun lt!2587984 () List!70586)

(declare-fun noDuplicate!3004 (List!70586) Bool)

(assert (=> d!2257127 (= res!2942836 (noDuplicate!3004 lt!2587984))))

(declare-fun choose!56137 ((Set Context!15216)) List!70586)

(assert (=> d!2257127 (= lt!2587984 (choose!56137 lt!2587802))))

(assert (=> d!2257127 (= (toList!11497 lt!2587802) lt!2587984)))

(declare-fun b!7257164 () Bool)

(assert (=> b!7257164 (= e!4351592 (= (content!14656 lt!2587984) lt!2587802))))

(assert (= (and d!2257127 res!2942836) b!7257164))

(declare-fun m!7939268 () Bool)

(assert (=> d!2257127 m!7939268))

(declare-fun m!7939270 () Bool)

(assert (=> d!2257127 m!7939270))

(declare-fun m!7939272 () Bool)

(assert (=> b!7257164 m!7939272))

(assert (=> b!7256959 d!2257127))

(declare-fun b!7257169 () Bool)

(declare-fun e!4351595 () Bool)

(declare-fun tp!2038319 () Bool)

(declare-fun tp!2038320 () Bool)

(assert (=> b!7257169 (= e!4351595 (and tp!2038319 tp!2038320))))

(assert (=> b!7256955 (= tp!2038302 e!4351595)))

(assert (= (and b!7256955 (is-Cons!70460 (exprs!8108 ct2!328))) b!7257169))

(declare-fun b!7257170 () Bool)

(declare-fun e!4351596 () Bool)

(declare-fun tp!2038321 () Bool)

(declare-fun tp!2038322 () Bool)

(assert (=> b!7257170 (= e!4351596 (and tp!2038321 tp!2038322))))

(assert (=> b!7256965 (= tp!2038300 e!4351596)))

(assert (= (and b!7256965 (is-Cons!70460 (exprs!8108 ct1!232))) b!7257170))

(declare-fun b!7257175 () Bool)

(declare-fun e!4351599 () Bool)

(declare-fun tp!2038325 () Bool)

(assert (=> b!7257175 (= e!4351599 (and tp_is_empty!46801 tp!2038325))))

(assert (=> b!7256958 (= tp!2038301 e!4351599)))

(assert (= (and b!7256958 (is-Cons!70461 (t!384649 s1!1971))) b!7257175))

(declare-fun b!7257176 () Bool)

(declare-fun e!4351600 () Bool)

(declare-fun tp!2038326 () Bool)

(assert (=> b!7257176 (= e!4351600 (and tp_is_empty!46801 tp!2038326))))

(assert (=> b!7256957 (= tp!2038299 e!4351600)))

(assert (= (and b!7256957 (is-Cons!70461 (t!384649 s2!1849))) b!7257176))

(declare-fun b_lambda!279051 () Bool)

(assert (= b_lambda!279047 (or b!7256961 b_lambda!279051)))

(declare-fun bs!1907944 () Bool)

(declare-fun d!2257129 () Bool)

(assert (= bs!1907944 (and d!2257129 b!7256961)))

(assert (=> bs!1907944 (= (dynLambda!28792 lambda!445364 lt!2587823) (derivationStepZipperUp!2492 lt!2587823 (h!76909 s1!1971)))))

(assert (=> bs!1907944 m!7938830))

(assert (=> d!2257101 d!2257129))

(declare-fun b_lambda!279053 () Bool)

(assert (= b_lambda!279049 (or b!7256961 b_lambda!279053)))

(declare-fun bs!1907945 () Bool)

(declare-fun d!2257131 () Bool)

(assert (= bs!1907945 (and d!2257131 b!7256961)))

(assert (=> bs!1907945 (= (dynLambda!28792 lambda!445364 ct1!232) (derivationStepZipperUp!2492 ct1!232 (h!76909 s1!1971)))))

(assert (=> bs!1907945 m!7938844))

(assert (=> d!2257109 d!2257131))

(declare-fun b_lambda!279055 () Bool)

(assert (= b_lambda!279045 (or b!7256959 b_lambda!279055)))

(declare-fun bs!1907946 () Bool)

(declare-fun d!2257133 () Bool)

(assert (= bs!1907946 (and d!2257133 b!7256959)))

(assert (=> bs!1907946 (= (dynLambda!28791 lambda!445363 lt!2587956) (matchZipper!3578 (set.insert lt!2587956 (as set.empty (Set Context!15216))) (t!384649 s1!1971)))))

(declare-fun m!7939274 () Bool)

(assert (=> bs!1907946 m!7939274))

(assert (=> bs!1907946 m!7939274))

(declare-fun m!7939276 () Bool)

(assert (=> bs!1907946 m!7939276))

(assert (=> d!2257073 d!2257133))

(push 1)

(assert (not bm!661374))

(assert (not bm!661363))

(assert (not b!7257135))

(assert (not d!2257125))

(assert (not bm!661349))

(assert (not d!2257081))

(assert (not bs!1907944))

(assert (not d!2257079))

(assert (not b!7257098))

(assert (not b!7257164))

(assert (not b!7257090))

(assert (not bs!1907946))

(assert tp_is_empty!46801)

(assert (not d!2257075))

(assert (not bm!661369))

(assert (not b_lambda!279053))

(assert (not d!2257113))

(assert (not d!2257097))

(assert (not d!2257055))

(assert (not d!2257057))

(assert (not b!7257029))

(assert (not d!2257123))

(assert (not d!2257073))

(assert (not d!2257077))

(assert (not d!2257095))

(assert (not d!2257091))

(assert (not bm!661347))

(assert (not b!7257051))

(assert (not d!2257047))

(assert (not d!2257039))

(assert (not d!2257067))

(assert (not d!2257043))

(assert (not b!7257137))

(assert (not b!7257032))

(assert (not d!2257121))

(assert (not b!7257025))

(assert (not b!7257169))

(assert (not bs!1907945))

(assert (not bm!661350))

(assert (not d!2257071))

(assert (not bm!661371))

(assert (not d!2257041))

(assert (not b!7257076))

(assert (not b!7257072))

(assert (not b!7257159))

(assert (not d!2257049))

(assert (not b!7257147))

(assert (not d!2257119))

(assert (not b!7257030))

(assert (not b!7257054))

(assert (not b!7257139))

(assert (not b!7257143))

(assert (not b!7257091))

(assert (not d!2257127))

(assert (not b!7257045))

(assert (not d!2257093))

(assert (not bm!661368))

(assert (not d!2257107))

(assert (not d!2257105))

(assert (not b!7257146))

(assert (not d!2257061))

(assert (not d!2257103))

(assert (not b!7257138))

(assert (not b!7257093))

(assert (not d!2257099))

(assert (not b!7257176))

(assert (not d!2257045))

(assert (not b!7257077))

(assert (not b!7257049))

(assert (not b!7257142))

(assert (not d!2257101))

(assert (not d!2257065))

(assert (not b!7257031))

(assert (not b!7257099))

(assert (not b!7257068))

(assert (not b_lambda!279055))

(assert (not b!7257048))

(assert (not b!7257026))

(assert (not b!7257050))

(assert (not b!7257073))

(assert (not b!7257136))

(assert (not b!7257170))

(assert (not b!7257058))

(assert (not bm!661365))

(assert (not d!2257053))

(assert (not b!7257069))

(assert (not b!7257140))

(assert (not b!7257094))

(assert (not b!7257134))

(assert (not d!2257109))

(assert (not b!7257057))

(assert (not bm!661348))

(assert (not b!7257053))

(assert (not b!7257175))

(assert (not b!7257044))

(assert (not b_lambda!279051))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

