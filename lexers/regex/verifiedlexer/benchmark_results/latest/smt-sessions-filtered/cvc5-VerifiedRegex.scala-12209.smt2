; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!687738 () Bool)

(assert start!687738)

(declare-fun b!7075953 () Bool)

(assert (=> b!7075953 true))

(declare-fun b!7075958 () Bool)

(assert (=> b!7075958 true))

(declare-fun b!7075954 () Bool)

(assert (=> b!7075954 true))

(declare-fun b!7075945 () Bool)

(declare-fun e!4254115 () Bool)

(declare-fun tp!1942848 () Bool)

(assert (=> b!7075945 (= e!4254115 tp!1942848)))

(declare-fun b!7075946 () Bool)

(declare-fun res!2890217 () Bool)

(declare-fun e!4254122 () Bool)

(assert (=> b!7075946 (=> res!2890217 e!4254122)))

(declare-datatypes ((C!35598 0))(
  ( (C!35599 (val!27501 Int)) )
))
(declare-datatypes ((Regex!17664 0))(
  ( (ElementMatch!17664 (c!1320181 C!35598)) (Concat!26509 (regOne!35840 Regex!17664) (regTwo!35840 Regex!17664)) (EmptyExpr!17664) (Star!17664 (reg!17993 Regex!17664)) (EmptyLang!17664) (Union!17664 (regOne!35841 Regex!17664) (regTwo!35841 Regex!17664)) )
))
(declare-datatypes ((List!68518 0))(
  ( (Nil!68394) (Cons!68394 (h!74842 Regex!17664) (t!382303 List!68518)) )
))
(declare-datatypes ((Context!13320 0))(
  ( (Context!13321 (exprs!7160 List!68518)) )
))
(declare-fun lt!2548961 () Context!13320)

(declare-fun lt!2548959 () (Set Context!13320))

(assert (=> b!7075946 (= res!2890217 (not (set.member lt!2548961 lt!2548959)))))

(declare-fun b!7075947 () Bool)

(declare-fun res!2890213 () Bool)

(declare-fun e!4254114 () Bool)

(assert (=> b!7075947 (=> res!2890213 e!4254114)))

(declare-fun lt!2548949 () Context!13320)

(assert (=> b!7075947 (= res!2890213 (not (is-Cons!68394 (exprs!7160 lt!2548949))))))

(declare-fun res!2890219 () Bool)

(declare-fun e!4254121 () Bool)

(assert (=> start!687738 (=> (not res!2890219) (not e!4254121))))

(declare-datatypes ((List!68519 0))(
  ( (Nil!68395) (Cons!68395 (h!74843 C!35598) (t!382304 List!68519)) )
))
(declare-fun s!7408 () List!68519)

(declare-fun matchZipper!3204 ((Set Context!13320) List!68519) Bool)

(assert (=> start!687738 (= res!2890219 (matchZipper!3204 lt!2548959 s!7408))))

(declare-fun z1!570 () (Set Context!13320))

(declare-fun ct2!306 () Context!13320)

(declare-fun appendTo!785 ((Set Context!13320) Context!13320) (Set Context!13320))

(assert (=> start!687738 (= lt!2548959 (appendTo!785 z1!570 ct2!306))))

(assert (=> start!687738 e!4254121))

(declare-fun condSetEmpty!50362 () Bool)

(assert (=> start!687738 (= condSetEmpty!50362 (= z1!570 (as set.empty (Set Context!13320))))))

(declare-fun setRes!50362 () Bool)

(assert (=> start!687738 setRes!50362))

(declare-fun e!4254120 () Bool)

(declare-fun inv!87020 (Context!13320) Bool)

(assert (=> start!687738 (and (inv!87020 ct2!306) e!4254120)))

(declare-fun e!4254117 () Bool)

(assert (=> start!687738 e!4254117))

(declare-fun b!7075948 () Bool)

(declare-fun e!4254118 () Bool)

(declare-fun e!4254119 () Bool)

(assert (=> b!7075948 (= e!4254118 e!4254119)))

(declare-fun res!2890220 () Bool)

(assert (=> b!7075948 (=> res!2890220 e!4254119)))

(declare-fun lt!2548948 () (Set Context!13320))

(declare-fun lt!2548966 () (Set Context!13320))

(assert (=> b!7075948 (= res!2890220 (not (= lt!2548948 lt!2548966)))))

(declare-fun lt!2548946 () Context!13320)

(assert (=> b!7075948 (= lt!2548948 (set.insert lt!2548946 (as set.empty (Set Context!13320))))))

(declare-datatypes ((Unit!162039 0))(
  ( (Unit!162040) )
))
(declare-fun lt!2548964 () Unit!162039)

(declare-fun lambda!426634 () Int)

(declare-fun lemmaConcatPreservesForall!975 (List!68518 List!68518 Int) Unit!162039)

(assert (=> b!7075948 (= lt!2548964 (lemmaConcatPreservesForall!975 (exprs!7160 lt!2548949) (exprs!7160 ct2!306) lambda!426634))))

(declare-fun b!7075949 () Bool)

(declare-fun e!4254123 () Bool)

(declare-fun e!4254116 () Bool)

(assert (=> b!7075949 (= e!4254123 e!4254116)))

(declare-fun res!2890224 () Bool)

(assert (=> b!7075949 (=> res!2890224 e!4254116)))

(declare-fun lt!2548965 () (Set Context!13320))

(assert (=> b!7075949 (= res!2890224 (not (matchZipper!3204 lt!2548965 (t!382304 s!7408))))))

(declare-fun lt!2548944 () (Set Context!13320))

(assert (=> b!7075949 (= lt!2548944 lt!2548965)))

(declare-fun lt!2548943 () (Set Context!13320))

(assert (=> b!7075949 (= lt!2548965 (appendTo!785 lt!2548943 ct2!306))))

(declare-fun lt!2548956 () Context!13320)

(declare-fun derivationStepZipperDown!2298 (Regex!17664 Context!13320 C!35598) (Set Context!13320))

(assert (=> b!7075949 (= lt!2548943 (derivationStepZipperDown!2298 (h!74842 (exprs!7160 lt!2548949)) lt!2548956 (h!74843 s!7408)))))

(declare-fun lt!2548962 () List!68518)

(declare-fun lt!2548947 () Unit!162039)

(assert (=> b!7075949 (= lt!2548947 (lemmaConcatPreservesForall!975 lt!2548962 (exprs!7160 ct2!306) lambda!426634))))

(declare-fun lt!2548963 () Unit!162039)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!131 (Context!13320 Regex!17664 C!35598 Context!13320) Unit!162039)

(assert (=> b!7075949 (= lt!2548963 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!131 lt!2548956 (h!74842 (exprs!7160 lt!2548949)) (h!74843 s!7408) ct2!306))))

(declare-fun b!7075950 () Bool)

(declare-fun tp_is_empty!44553 () Bool)

(declare-fun tp!1942846 () Bool)

(assert (=> b!7075950 (= e!4254117 (and tp_is_empty!44553 tp!1942846))))

(declare-fun tp!1942847 () Bool)

(declare-fun setNonEmpty!50362 () Bool)

(declare-fun setElem!50362 () Context!13320)

(assert (=> setNonEmpty!50362 (= setRes!50362 (and tp!1942847 (inv!87020 setElem!50362) e!4254115))))

(declare-fun setRest!50362 () (Set Context!13320))

(assert (=> setNonEmpty!50362 (= z1!570 (set.union (set.insert setElem!50362 (as set.empty (Set Context!13320))) setRest!50362))))

(declare-fun setIsEmpty!50362 () Bool)

(assert (=> setIsEmpty!50362 setRes!50362))

(declare-fun b!7075951 () Bool)

(declare-fun res!2890223 () Bool)

(assert (=> b!7075951 (=> res!2890223 e!4254114)))

(declare-fun isEmpty!39917 (List!68518) Bool)

(assert (=> b!7075951 (= res!2890223 (isEmpty!39917 (exprs!7160 lt!2548949)))))

(declare-fun lt!2548953 () Int)

(declare-fun lt!2548960 () Int)

(declare-fun lt!2548950 () Int)

(declare-fun b!7075952 () Bool)

(declare-fun lt!2548967 () Int)

(assert (=> b!7075952 (= e!4254116 (or (< lt!2548967 lt!2548950) (and (= lt!2548967 lt!2548950) (< lt!2548960 lt!2548953))))))

(declare-datatypes ((List!68520 0))(
  ( (Nil!68396) (Cons!68396 (h!74844 Context!13320) (t!382305 List!68520)) )
))
(declare-fun zipperDepthTotal!587 (List!68520) Int)

(declare-fun toList!11005 ((Set Context!13320)) List!68520)

(assert (=> b!7075952 (= lt!2548953 (zipperDepthTotal!587 (toList!11005 z1!570)))))

(declare-fun ListPrimitiveSize!409 (List!68519) Int)

(assert (=> b!7075952 (= lt!2548950 (ListPrimitiveSize!409 s!7408))))

(assert (=> b!7075952 (= lt!2548960 (zipperDepthTotal!587 (toList!11005 lt!2548943)))))

(assert (=> b!7075952 (= lt!2548967 (ListPrimitiveSize!409 (t!382304 s!7408)))))

(assert (=> b!7075953 (= e!4254121 (not e!4254122))))

(declare-fun res!2890218 () Bool)

(assert (=> b!7075953 (=> res!2890218 e!4254122)))

(assert (=> b!7075953 (= res!2890218 (not (matchZipper!3204 lt!2548966 s!7408)))))

(assert (=> b!7075953 (= lt!2548966 (set.insert lt!2548961 (as set.empty (Set Context!13320))))))

(declare-fun lambda!426632 () Int)

(declare-fun getWitness!1776 ((Set Context!13320) Int) Context!13320)

(assert (=> b!7075953 (= lt!2548961 (getWitness!1776 lt!2548959 lambda!426632))))

(declare-fun lt!2548958 () List!68520)

(declare-fun exists!3726 (List!68520 Int) Bool)

(assert (=> b!7075953 (exists!3726 lt!2548958 lambda!426632)))

(declare-fun lt!2548945 () Unit!162039)

(declare-fun lemmaZipperMatchesExistsMatchingContext!585 (List!68520 List!68519) Unit!162039)

(assert (=> b!7075953 (= lt!2548945 (lemmaZipperMatchesExistsMatchingContext!585 lt!2548958 s!7408))))

(assert (=> b!7075953 (= lt!2548958 (toList!11005 lt!2548959))))

(assert (=> b!7075954 (= e!4254119 e!4254114)))

(declare-fun res!2890216 () Bool)

(assert (=> b!7075954 (=> res!2890216 e!4254114)))

(declare-fun lt!2548955 () (Set Context!13320))

(declare-fun derivationStepZipper!3114 ((Set Context!13320) C!35598) (Set Context!13320))

(assert (=> b!7075954 (= res!2890216 (not (= (derivationStepZipper!3114 lt!2548948 (h!74843 s!7408)) lt!2548955)))))

(declare-fun lambda!426635 () Int)

(declare-fun flatMap!2590 ((Set Context!13320) Int) (Set Context!13320))

(declare-fun derivationStepZipperUp!2248 (Context!13320 C!35598) (Set Context!13320))

(assert (=> b!7075954 (= (flatMap!2590 lt!2548948 lambda!426635) (derivationStepZipperUp!2248 lt!2548946 (h!74843 s!7408)))))

(declare-fun lt!2548954 () Unit!162039)

(declare-fun lemmaFlatMapOnSingletonSet!2099 ((Set Context!13320) Context!13320 Int) Unit!162039)

(assert (=> b!7075954 (= lt!2548954 (lemmaFlatMapOnSingletonSet!2099 lt!2548948 lt!2548946 lambda!426635))))

(assert (=> b!7075954 (= lt!2548955 (derivationStepZipperUp!2248 lt!2548946 (h!74843 s!7408)))))

(declare-fun lt!2548951 () Unit!162039)

(assert (=> b!7075954 (= lt!2548951 (lemmaConcatPreservesForall!975 (exprs!7160 lt!2548949) (exprs!7160 ct2!306) lambda!426634))))

(declare-fun b!7075955 () Bool)

(declare-fun e!4254113 () Bool)

(assert (=> b!7075955 (= e!4254114 e!4254113)))

(declare-fun res!2890221 () Bool)

(assert (=> b!7075955 (=> res!2890221 e!4254113)))

(declare-fun nullable!7347 (Regex!17664) Bool)

(assert (=> b!7075955 (= res!2890221 (nullable!7347 (h!74842 (exprs!7160 lt!2548949))))))

(assert (=> b!7075955 (= lt!2548956 (Context!13321 lt!2548962))))

(declare-fun tail!13858 (List!68518) List!68518)

(assert (=> b!7075955 (= lt!2548962 (tail!13858 (exprs!7160 lt!2548949)))))

(declare-fun b!7075956 () Bool)

(declare-fun tp!1942845 () Bool)

(assert (=> b!7075956 (= e!4254120 tp!1942845)))

(declare-fun b!7075957 () Bool)

(assert (=> b!7075957 (= e!4254113 e!4254123)))

(declare-fun res!2890215 () Bool)

(assert (=> b!7075957 (=> res!2890215 e!4254123)))

(assert (=> b!7075957 (= res!2890215 (not (matchZipper!3204 lt!2548944 (t!382304 s!7408))))))

(declare-fun ++!15805 (List!68518 List!68518) List!68518)

(assert (=> b!7075957 (= lt!2548944 (derivationStepZipperDown!2298 (h!74842 (exprs!7160 lt!2548949)) (Context!13321 (++!15805 lt!2548962 (exprs!7160 ct2!306))) (h!74843 s!7408)))))

(declare-fun lt!2548957 () Unit!162039)

(assert (=> b!7075957 (= lt!2548957 (lemmaConcatPreservesForall!975 lt!2548962 (exprs!7160 ct2!306) lambda!426634))))

(assert (=> b!7075958 (= e!4254122 e!4254118)))

(declare-fun res!2890222 () Bool)

(assert (=> b!7075958 (=> res!2890222 e!4254118)))

(assert (=> b!7075958 (= res!2890222 (or (not (= lt!2548946 lt!2548961)) (not (set.member lt!2548949 z1!570))))))

(assert (=> b!7075958 (= lt!2548946 (Context!13321 (++!15805 (exprs!7160 lt!2548949) (exprs!7160 ct2!306))))))

(declare-fun lt!2548952 () Unit!162039)

(assert (=> b!7075958 (= lt!2548952 (lemmaConcatPreservesForall!975 (exprs!7160 lt!2548949) (exprs!7160 ct2!306) lambda!426634))))

(declare-fun lambda!426633 () Int)

(declare-fun mapPost2!493 ((Set Context!13320) Int Context!13320) Context!13320)

(assert (=> b!7075958 (= lt!2548949 (mapPost2!493 z1!570 lambda!426633 lt!2548961))))

(declare-fun b!7075959 () Bool)

(declare-fun res!2890214 () Bool)

(assert (=> b!7075959 (=> (not res!2890214) (not e!4254121))))

(assert (=> b!7075959 (= res!2890214 (is-Cons!68395 s!7408))))

(assert (= (and start!687738 res!2890219) b!7075959))

(assert (= (and b!7075959 res!2890214) b!7075953))

(assert (= (and b!7075953 (not res!2890218)) b!7075946))

(assert (= (and b!7075946 (not res!2890217)) b!7075958))

(assert (= (and b!7075958 (not res!2890222)) b!7075948))

(assert (= (and b!7075948 (not res!2890220)) b!7075954))

(assert (= (and b!7075954 (not res!2890216)) b!7075947))

(assert (= (and b!7075947 (not res!2890213)) b!7075951))

(assert (= (and b!7075951 (not res!2890223)) b!7075955))

(assert (= (and b!7075955 (not res!2890221)) b!7075957))

(assert (= (and b!7075957 (not res!2890215)) b!7075949))

(assert (= (and b!7075949 (not res!2890224)) b!7075952))

(assert (= (and start!687738 condSetEmpty!50362) setIsEmpty!50362))

(assert (= (and start!687738 (not condSetEmpty!50362)) setNonEmpty!50362))

(assert (= setNonEmpty!50362 b!7075945))

(assert (= start!687738 b!7075956))

(assert (= (and start!687738 (is-Cons!68395 s!7408)) b!7075950))

(declare-fun m!7803824 () Bool)

(assert (=> b!7075952 m!7803824))

(declare-fun m!7803826 () Bool)

(assert (=> b!7075952 m!7803826))

(declare-fun m!7803828 () Bool)

(assert (=> b!7075952 m!7803828))

(assert (=> b!7075952 m!7803824))

(assert (=> b!7075952 m!7803828))

(declare-fun m!7803830 () Bool)

(assert (=> b!7075952 m!7803830))

(declare-fun m!7803832 () Bool)

(assert (=> b!7075952 m!7803832))

(declare-fun m!7803834 () Bool)

(assert (=> b!7075952 m!7803834))

(declare-fun m!7803836 () Bool)

(assert (=> b!7075946 m!7803836))

(declare-fun m!7803838 () Bool)

(assert (=> b!7075955 m!7803838))

(declare-fun m!7803840 () Bool)

(assert (=> b!7075955 m!7803840))

(declare-fun m!7803842 () Bool)

(assert (=> b!7075957 m!7803842))

(declare-fun m!7803844 () Bool)

(assert (=> b!7075957 m!7803844))

(declare-fun m!7803846 () Bool)

(assert (=> b!7075957 m!7803846))

(declare-fun m!7803848 () Bool)

(assert (=> b!7075957 m!7803848))

(declare-fun m!7803850 () Bool)

(assert (=> b!7075951 m!7803850))

(declare-fun m!7803852 () Bool)

(assert (=> b!7075954 m!7803852))

(declare-fun m!7803854 () Bool)

(assert (=> b!7075954 m!7803854))

(declare-fun m!7803856 () Bool)

(assert (=> b!7075954 m!7803856))

(declare-fun m!7803858 () Bool)

(assert (=> b!7075954 m!7803858))

(declare-fun m!7803860 () Bool)

(assert (=> b!7075954 m!7803860))

(declare-fun m!7803862 () Bool)

(assert (=> setNonEmpty!50362 m!7803862))

(declare-fun m!7803864 () Bool)

(assert (=> b!7075948 m!7803864))

(assert (=> b!7075948 m!7803858))

(declare-fun m!7803866 () Bool)

(assert (=> b!7075958 m!7803866))

(declare-fun m!7803868 () Bool)

(assert (=> b!7075958 m!7803868))

(assert (=> b!7075958 m!7803858))

(declare-fun m!7803870 () Bool)

(assert (=> b!7075958 m!7803870))

(declare-fun m!7803872 () Bool)

(assert (=> b!7075953 m!7803872))

(declare-fun m!7803874 () Bool)

(assert (=> b!7075953 m!7803874))

(declare-fun m!7803876 () Bool)

(assert (=> b!7075953 m!7803876))

(declare-fun m!7803878 () Bool)

(assert (=> b!7075953 m!7803878))

(declare-fun m!7803880 () Bool)

(assert (=> b!7075953 m!7803880))

(declare-fun m!7803882 () Bool)

(assert (=> b!7075953 m!7803882))

(declare-fun m!7803884 () Bool)

(assert (=> start!687738 m!7803884))

(declare-fun m!7803886 () Bool)

(assert (=> start!687738 m!7803886))

(declare-fun m!7803888 () Bool)

(assert (=> start!687738 m!7803888))

(declare-fun m!7803890 () Bool)

(assert (=> b!7075949 m!7803890))

(assert (=> b!7075949 m!7803848))

(declare-fun m!7803892 () Bool)

(assert (=> b!7075949 m!7803892))

(declare-fun m!7803894 () Bool)

(assert (=> b!7075949 m!7803894))

(declare-fun m!7803896 () Bool)

(assert (=> b!7075949 m!7803896))

(push 1)

(assert tp_is_empty!44553)

(assert (not b!7075953))

(assert (not setNonEmpty!50362))

(assert (not b!7075951))

(assert (not b!7075955))

(assert (not b!7075957))

(assert (not b!7075945))

(assert (not start!687738))

(assert (not b!7075949))

(assert (not b!7075950))

(assert (not b!7075952))

(assert (not b!7075948))

(assert (not b!7075958))

(assert (not b!7075954))

(assert (not b!7075956))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2212980 () Bool)

(declare-fun nullableFct!2822 (Regex!17664) Bool)

(assert (=> d!2212980 (= (nullable!7347 (h!74842 (exprs!7160 lt!2548949))) (nullableFct!2822 (h!74842 (exprs!7160 lt!2548949))))))

(declare-fun bs!1881295 () Bool)

(assert (= bs!1881295 d!2212980))

(declare-fun m!7803972 () Bool)

(assert (=> bs!1881295 m!7803972))

(assert (=> b!7075955 d!2212980))

(declare-fun d!2212982 () Bool)

(assert (=> d!2212982 (= (tail!13858 (exprs!7160 lt!2548949)) (t!382303 (exprs!7160 lt!2548949)))))

(assert (=> b!7075955 d!2212982))

(declare-fun bs!1881296 () Bool)

(declare-fun d!2212984 () Bool)

(assert (= bs!1881296 (and d!2212984 b!7075958)))

(declare-fun lambda!426662 () Int)

(assert (=> bs!1881296 (= lambda!426662 lambda!426634)))

(declare-fun forall!16618 (List!68518 Int) Bool)

(assert (=> d!2212984 (= (inv!87020 setElem!50362) (forall!16618 (exprs!7160 setElem!50362) lambda!426662))))

(declare-fun bs!1881297 () Bool)

(assert (= bs!1881297 d!2212984))

(declare-fun m!7803974 () Bool)

(assert (=> bs!1881297 m!7803974))

(assert (=> setNonEmpty!50362 d!2212984))

(declare-fun d!2212986 () Bool)

(assert (=> d!2212986 (forall!16618 (++!15805 (exprs!7160 lt!2548949) (exprs!7160 ct2!306)) lambda!426634)))

(declare-fun lt!2549047 () Unit!162039)

(declare-fun choose!54305 (List!68518 List!68518 Int) Unit!162039)

(assert (=> d!2212986 (= lt!2549047 (choose!54305 (exprs!7160 lt!2548949) (exprs!7160 ct2!306) lambda!426634))))

(assert (=> d!2212986 (forall!16618 (exprs!7160 lt!2548949) lambda!426634)))

(assert (=> d!2212986 (= (lemmaConcatPreservesForall!975 (exprs!7160 lt!2548949) (exprs!7160 ct2!306) lambda!426634) lt!2549047)))

(declare-fun bs!1881298 () Bool)

(assert (= bs!1881298 d!2212986))

(assert (=> bs!1881298 m!7803868))

(assert (=> bs!1881298 m!7803868))

(declare-fun m!7803976 () Bool)

(assert (=> bs!1881298 m!7803976))

(declare-fun m!7803978 () Bool)

(assert (=> bs!1881298 m!7803978))

(declare-fun m!7803980 () Bool)

(assert (=> bs!1881298 m!7803980))

(assert (=> b!7075948 d!2212986))

(declare-fun d!2212988 () Bool)

(assert (=> d!2212988 (= (isEmpty!39917 (exprs!7160 lt!2548949)) (is-Nil!68394 (exprs!7160 lt!2548949)))))

(assert (=> b!7075951 d!2212988))

(declare-fun b!7076025 () Bool)

(declare-fun e!4254161 () List!68518)

(assert (=> b!7076025 (= e!4254161 (exprs!7160 ct2!306))))

(declare-fun b!7076026 () Bool)

(assert (=> b!7076026 (= e!4254161 (Cons!68394 (h!74842 (exprs!7160 lt!2548949)) (++!15805 (t!382303 (exprs!7160 lt!2548949)) (exprs!7160 ct2!306))))))

(declare-fun e!4254162 () Bool)

(declare-fun lt!2549050 () List!68518)

(declare-fun b!7076028 () Bool)

(assert (=> b!7076028 (= e!4254162 (or (not (= (exprs!7160 ct2!306) Nil!68394)) (= lt!2549050 (exprs!7160 lt!2548949))))))

(declare-fun d!2212990 () Bool)

(assert (=> d!2212990 e!4254162))

(declare-fun res!2890266 () Bool)

(assert (=> d!2212990 (=> (not res!2890266) (not e!4254162))))

(declare-fun content!13822 (List!68518) (Set Regex!17664))

(assert (=> d!2212990 (= res!2890266 (= (content!13822 lt!2549050) (set.union (content!13822 (exprs!7160 lt!2548949)) (content!13822 (exprs!7160 ct2!306)))))))

(assert (=> d!2212990 (= lt!2549050 e!4254161)))

(declare-fun c!1320193 () Bool)

(assert (=> d!2212990 (= c!1320193 (is-Nil!68394 (exprs!7160 lt!2548949)))))

(assert (=> d!2212990 (= (++!15805 (exprs!7160 lt!2548949) (exprs!7160 ct2!306)) lt!2549050)))

(declare-fun b!7076027 () Bool)

(declare-fun res!2890267 () Bool)

(assert (=> b!7076027 (=> (not res!2890267) (not e!4254162))))

(declare-fun size!41228 (List!68518) Int)

(assert (=> b!7076027 (= res!2890267 (= (size!41228 lt!2549050) (+ (size!41228 (exprs!7160 lt!2548949)) (size!41228 (exprs!7160 ct2!306)))))))

(assert (= (and d!2212990 c!1320193) b!7076025))

(assert (= (and d!2212990 (not c!1320193)) b!7076026))

(assert (= (and d!2212990 res!2890266) b!7076027))

(assert (= (and b!7076027 res!2890267) b!7076028))

(declare-fun m!7803982 () Bool)

(assert (=> b!7076026 m!7803982))

(declare-fun m!7803984 () Bool)

(assert (=> d!2212990 m!7803984))

(declare-fun m!7803986 () Bool)

(assert (=> d!2212990 m!7803986))

(declare-fun m!7803988 () Bool)

(assert (=> d!2212990 m!7803988))

(declare-fun m!7803990 () Bool)

(assert (=> b!7076027 m!7803990))

(declare-fun m!7803992 () Bool)

(assert (=> b!7076027 m!7803992))

(declare-fun m!7803994 () Bool)

(assert (=> b!7076027 m!7803994))

(assert (=> b!7075958 d!2212990))

(assert (=> b!7075958 d!2212986))

(declare-fun d!2212992 () Bool)

(declare-fun e!4254165 () Bool)

(assert (=> d!2212992 e!4254165))

(declare-fun res!2890271 () Bool)

(assert (=> d!2212992 (=> (not res!2890271) (not e!4254165))))

(declare-fun lt!2549053 () Context!13320)

(declare-fun dynLambda!27840 (Int Context!13320) Context!13320)

(assert (=> d!2212992 (= res!2890271 (= lt!2548961 (dynLambda!27840 lambda!426633 lt!2549053)))))

(declare-fun choose!54306 ((Set Context!13320) Int Context!13320) Context!13320)

(assert (=> d!2212992 (= lt!2549053 (choose!54306 z1!570 lambda!426633 lt!2548961))))

(declare-fun map!16011 ((Set Context!13320) Int) (Set Context!13320))

(assert (=> d!2212992 (set.member lt!2548961 (map!16011 z1!570 lambda!426633))))

(assert (=> d!2212992 (= (mapPost2!493 z1!570 lambda!426633 lt!2548961) lt!2549053)))

(declare-fun b!7076032 () Bool)

(assert (=> b!7076032 (= e!4254165 (set.member lt!2549053 z1!570))))

(assert (= (and d!2212992 res!2890271) b!7076032))

(declare-fun b_lambda!270257 () Bool)

(assert (=> (not b_lambda!270257) (not d!2212992)))

(declare-fun m!7803996 () Bool)

(assert (=> d!2212992 m!7803996))

(declare-fun m!7803998 () Bool)

(assert (=> d!2212992 m!7803998))

(declare-fun m!7804000 () Bool)

(assert (=> d!2212992 m!7804000))

(declare-fun m!7804002 () Bool)

(assert (=> d!2212992 m!7804002))

(declare-fun m!7804004 () Bool)

(assert (=> b!7076032 m!7804004))

(assert (=> b!7075958 d!2212992))

(declare-fun d!2212994 () Bool)

(declare-fun c!1320196 () Bool)

(declare-fun isEmpty!39919 (List!68519) Bool)

(assert (=> d!2212994 (= c!1320196 (isEmpty!39919 (t!382304 s!7408)))))

(declare-fun e!4254168 () Bool)

(assert (=> d!2212994 (= (matchZipper!3204 lt!2548965 (t!382304 s!7408)) e!4254168)))

(declare-fun b!7076037 () Bool)

(declare-fun nullableZipper!2710 ((Set Context!13320)) Bool)

(assert (=> b!7076037 (= e!4254168 (nullableZipper!2710 lt!2548965))))

(declare-fun b!7076038 () Bool)

(declare-fun head!14419 (List!68519) C!35598)

(declare-fun tail!13860 (List!68519) List!68519)

(assert (=> b!7076038 (= e!4254168 (matchZipper!3204 (derivationStepZipper!3114 lt!2548965 (head!14419 (t!382304 s!7408))) (tail!13860 (t!382304 s!7408))))))

(assert (= (and d!2212994 c!1320196) b!7076037))

(assert (= (and d!2212994 (not c!1320196)) b!7076038))

(declare-fun m!7804006 () Bool)

(assert (=> d!2212994 m!7804006))

(declare-fun m!7804008 () Bool)

(assert (=> b!7076037 m!7804008))

(declare-fun m!7804010 () Bool)

(assert (=> b!7076038 m!7804010))

(assert (=> b!7076038 m!7804010))

(declare-fun m!7804012 () Bool)

(assert (=> b!7076038 m!7804012))

(declare-fun m!7804014 () Bool)

(assert (=> b!7076038 m!7804014))

(assert (=> b!7076038 m!7804012))

(assert (=> b!7076038 m!7804014))

(declare-fun m!7804016 () Bool)

(assert (=> b!7076038 m!7804016))

(assert (=> b!7075949 d!2212994))

(declare-fun bs!1881299 () Bool)

(declare-fun d!2212996 () Bool)

(assert (= bs!1881299 (and d!2212996 b!7075958)))

(declare-fun lambda!426667 () Int)

(assert (=> bs!1881299 (= lambda!426667 lambda!426633)))

(assert (=> d!2212996 true))

(assert (=> d!2212996 (= (appendTo!785 lt!2548943 ct2!306) (map!16011 lt!2548943 lambda!426667))))

(declare-fun bs!1881300 () Bool)

(assert (= bs!1881300 d!2212996))

(declare-fun m!7804018 () Bool)

(assert (=> bs!1881300 m!7804018))

(assert (=> b!7075949 d!2212996))

(declare-fun b!7076071 () Bool)

(declare-fun e!4254192 () (Set Context!13320))

(declare-fun e!4254189 () (Set Context!13320))

(assert (=> b!7076071 (= e!4254192 e!4254189)))

(declare-fun c!1320210 () Bool)

(assert (=> b!7076071 (= c!1320210 (is-Concat!26509 (h!74842 (exprs!7160 lt!2548949))))))

(declare-fun b!7076072 () Bool)

(declare-fun e!4254187 () Bool)

(assert (=> b!7076072 (= e!4254187 (nullable!7347 (regOne!35840 (h!74842 (exprs!7160 lt!2548949)))))))

(declare-fun c!1320209 () Bool)

(declare-fun bm!643095 () Bool)

(declare-fun call!643102 () List!68518)

(declare-fun $colon$colon!2667 (List!68518 Regex!17664) List!68518)

(assert (=> bm!643095 (= call!643102 ($colon$colon!2667 (exprs!7160 lt!2548956) (ite (or c!1320209 c!1320210) (regTwo!35840 (h!74842 (exprs!7160 lt!2548949))) (h!74842 (exprs!7160 lt!2548949)))))))

(declare-fun b!7076073 () Bool)

(declare-fun call!643104 () (Set Context!13320))

(declare-fun call!643105 () (Set Context!13320))

(assert (=> b!7076073 (= e!4254192 (set.union call!643104 call!643105))))

(declare-fun c!1320212 () Bool)

(declare-fun bm!643096 () Bool)

(assert (=> bm!643096 (= call!643104 (derivationStepZipperDown!2298 (ite c!1320212 (regOne!35841 (h!74842 (exprs!7160 lt!2548949))) (regOne!35840 (h!74842 (exprs!7160 lt!2548949)))) (ite c!1320212 lt!2548956 (Context!13321 call!643102)) (h!74843 s!7408)))))

(declare-fun b!7076074 () Bool)

(declare-fun e!4254188 () (Set Context!13320))

(assert (=> b!7076074 (= e!4254188 (set.insert lt!2548956 (as set.empty (Set Context!13320))))))

(declare-fun call!643103 () List!68518)

(declare-fun bm!643097 () Bool)

(declare-fun call!643100 () (Set Context!13320))

(assert (=> bm!643097 (= call!643100 (derivationStepZipperDown!2298 (ite c!1320212 (regTwo!35841 (h!74842 (exprs!7160 lt!2548949))) (ite c!1320209 (regTwo!35840 (h!74842 (exprs!7160 lt!2548949))) (ite c!1320210 (regOne!35840 (h!74842 (exprs!7160 lt!2548949))) (reg!17993 (h!74842 (exprs!7160 lt!2548949)))))) (ite (or c!1320212 c!1320209) lt!2548956 (Context!13321 call!643103)) (h!74843 s!7408)))))

(declare-fun d!2213002 () Bool)

(declare-fun c!1320208 () Bool)

(assert (=> d!2213002 (= c!1320208 (and (is-ElementMatch!17664 (h!74842 (exprs!7160 lt!2548949))) (= (c!1320181 (h!74842 (exprs!7160 lt!2548949))) (h!74843 s!7408))))))

(assert (=> d!2213002 (= (derivationStepZipperDown!2298 (h!74842 (exprs!7160 lt!2548949)) lt!2548956 (h!74843 s!7408)) e!4254188)))

(declare-fun b!7076075 () Bool)

(assert (=> b!7076075 (= c!1320209 e!4254187)))

(declare-fun res!2890280 () Bool)

(assert (=> b!7076075 (=> (not res!2890280) (not e!4254187))))

(assert (=> b!7076075 (= res!2890280 (is-Concat!26509 (h!74842 (exprs!7160 lt!2548949))))))

(declare-fun e!4254191 () (Set Context!13320))

(assert (=> b!7076075 (= e!4254191 e!4254192)))

(declare-fun b!7076076 () Bool)

(declare-fun call!643101 () (Set Context!13320))

(assert (=> b!7076076 (= e!4254189 call!643101)))

(declare-fun b!7076078 () Bool)

(declare-fun c!1320211 () Bool)

(assert (=> b!7076078 (= c!1320211 (is-Star!17664 (h!74842 (exprs!7160 lt!2548949))))))

(declare-fun e!4254190 () (Set Context!13320))

(assert (=> b!7076078 (= e!4254189 e!4254190)))

(declare-fun bm!643098 () Bool)

(assert (=> bm!643098 (= call!643103 call!643102)))

(declare-fun bm!643099 () Bool)

(assert (=> bm!643099 (= call!643105 call!643100)))

(declare-fun b!7076080 () Bool)

(assert (=> b!7076080 (= e!4254191 (set.union call!643104 call!643100))))

(declare-fun b!7076081 () Bool)

(assert (=> b!7076081 (= e!4254190 call!643101)))

(declare-fun b!7076082 () Bool)

(assert (=> b!7076082 (= e!4254188 e!4254191)))

(assert (=> b!7076082 (= c!1320212 (is-Union!17664 (h!74842 (exprs!7160 lt!2548949))))))

(declare-fun b!7076083 () Bool)

(assert (=> b!7076083 (= e!4254190 (as set.empty (Set Context!13320)))))

(declare-fun bm!643100 () Bool)

(assert (=> bm!643100 (= call!643101 call!643105)))

(assert (= (and d!2213002 c!1320208) b!7076074))

(assert (= (and d!2213002 (not c!1320208)) b!7076082))

(assert (= (and b!7076082 c!1320212) b!7076080))

(assert (= (and b!7076082 (not c!1320212)) b!7076075))

(assert (= (and b!7076075 res!2890280) b!7076072))

(assert (= (and b!7076075 c!1320209) b!7076073))

(assert (= (and b!7076075 (not c!1320209)) b!7076071))

(assert (= (and b!7076071 c!1320210) b!7076076))

(assert (= (and b!7076071 (not c!1320210)) b!7076078))

(assert (= (and b!7076078 c!1320211) b!7076081))

(assert (= (and b!7076078 (not c!1320211)) b!7076083))

(assert (= (or b!7076076 b!7076081) bm!643098))

(assert (= (or b!7076076 b!7076081) bm!643100))

(assert (= (or b!7076073 bm!643100) bm!643099))

(assert (= (or b!7076073 bm!643098) bm!643095))

(assert (= (or b!7076080 b!7076073) bm!643096))

(assert (= (or b!7076080 bm!643099) bm!643097))

(declare-fun m!7804036 () Bool)

(assert (=> b!7076074 m!7804036))

(declare-fun m!7804038 () Bool)

(assert (=> bm!643095 m!7804038))

(declare-fun m!7804040 () Bool)

(assert (=> bm!643097 m!7804040))

(declare-fun m!7804042 () Bool)

(assert (=> b!7076072 m!7804042))

(declare-fun m!7804044 () Bool)

(assert (=> bm!643096 m!7804044))

(assert (=> b!7075949 d!2213002))

(declare-fun d!2213010 () Bool)

(assert (=> d!2213010 (forall!16618 (++!15805 lt!2548962 (exprs!7160 ct2!306)) lambda!426634)))

(declare-fun lt!2549062 () Unit!162039)

(assert (=> d!2213010 (= lt!2549062 (choose!54305 lt!2548962 (exprs!7160 ct2!306) lambda!426634))))

(assert (=> d!2213010 (forall!16618 lt!2548962 lambda!426634)))

(assert (=> d!2213010 (= (lemmaConcatPreservesForall!975 lt!2548962 (exprs!7160 ct2!306) lambda!426634) lt!2549062)))

(declare-fun bs!1881303 () Bool)

(assert (= bs!1881303 d!2213010))

(assert (=> bs!1881303 m!7803844))

(assert (=> bs!1881303 m!7803844))

(declare-fun m!7804058 () Bool)

(assert (=> bs!1881303 m!7804058))

(declare-fun m!7804060 () Bool)

(assert (=> bs!1881303 m!7804060))

(declare-fun m!7804062 () Bool)

(assert (=> bs!1881303 m!7804062))

(assert (=> b!7075949 d!2213010))

(declare-fun bs!1881307 () Bool)

(declare-fun d!2213014 () Bool)

(assert (= bs!1881307 (and d!2213014 b!7075958)))

(declare-fun lambda!426676 () Int)

(assert (=> bs!1881307 (= lambda!426676 lambda!426634)))

(declare-fun bs!1881309 () Bool)

(assert (= bs!1881309 (and d!2213014 d!2212984)))

(assert (=> bs!1881309 (= lambda!426676 lambda!426662)))

(assert (=> d!2213014 (= (derivationStepZipperDown!2298 (h!74842 (exprs!7160 lt!2548949)) (Context!13321 (++!15805 (exprs!7160 lt!2548956) (exprs!7160 ct2!306))) (h!74843 s!7408)) (appendTo!785 (derivationStepZipperDown!2298 (h!74842 (exprs!7160 lt!2548949)) lt!2548956 (h!74843 s!7408)) ct2!306))))

(declare-fun lt!2549071 () Unit!162039)

(assert (=> d!2213014 (= lt!2549071 (lemmaConcatPreservesForall!975 (exprs!7160 lt!2548956) (exprs!7160 ct2!306) lambda!426676))))

(declare-fun lt!2549070 () Unit!162039)

(declare-fun choose!54307 (Context!13320 Regex!17664 C!35598 Context!13320) Unit!162039)

(assert (=> d!2213014 (= lt!2549070 (choose!54307 lt!2548956 (h!74842 (exprs!7160 lt!2548949)) (h!74843 s!7408) ct2!306))))

(declare-fun validRegex!8979 (Regex!17664) Bool)

(assert (=> d!2213014 (validRegex!8979 (h!74842 (exprs!7160 lt!2548949)))))

(assert (=> d!2213014 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!131 lt!2548956 (h!74842 (exprs!7160 lt!2548949)) (h!74843 s!7408) ct2!306) lt!2549070)))

(declare-fun bs!1881310 () Bool)

(assert (= bs!1881310 d!2213014))

(declare-fun m!7804074 () Bool)

(assert (=> bs!1881310 m!7804074))

(assert (=> bs!1881310 m!7803894))

(declare-fun m!7804076 () Bool)

(assert (=> bs!1881310 m!7804076))

(assert (=> bs!1881310 m!7803894))

(declare-fun m!7804078 () Bool)

(assert (=> bs!1881310 m!7804078))

(declare-fun m!7804080 () Bool)

(assert (=> bs!1881310 m!7804080))

(declare-fun m!7804082 () Bool)

(assert (=> bs!1881310 m!7804082))

(declare-fun m!7804084 () Bool)

(assert (=> bs!1881310 m!7804084))

(assert (=> b!7075949 d!2213014))

(declare-fun d!2213022 () Bool)

(declare-fun e!4254199 () Bool)

(assert (=> d!2213022 e!4254199))

(declare-fun res!2890283 () Bool)

(assert (=> d!2213022 (=> (not res!2890283) (not e!4254199))))

(declare-fun lt!2549074 () List!68520)

(declare-fun noDuplicate!2738 (List!68520) Bool)

(assert (=> d!2213022 (= res!2890283 (noDuplicate!2738 lt!2549074))))

(declare-fun choose!54308 ((Set Context!13320)) List!68520)

(assert (=> d!2213022 (= lt!2549074 (choose!54308 z1!570))))

(assert (=> d!2213022 (= (toList!11005 z1!570) lt!2549074)))

(declare-fun b!7076090 () Bool)

(declare-fun content!13823 (List!68520) (Set Context!13320))

(assert (=> b!7076090 (= e!4254199 (= (content!13823 lt!2549074) z1!570))))

(assert (= (and d!2213022 res!2890283) b!7076090))

(declare-fun m!7804098 () Bool)

(assert (=> d!2213022 m!7804098))

(declare-fun m!7804100 () Bool)

(assert (=> d!2213022 m!7804100))

(declare-fun m!7804102 () Bool)

(assert (=> b!7076090 m!7804102))

(assert (=> b!7075952 d!2213022))

(declare-fun d!2213026 () Bool)

(declare-fun lt!2549077 () Int)

(assert (=> d!2213026 (>= lt!2549077 0)))

(declare-fun e!4254202 () Int)

(assert (=> d!2213026 (= lt!2549077 e!4254202)))

(declare-fun c!1320222 () Bool)

(assert (=> d!2213026 (= c!1320222 (is-Nil!68395 s!7408))))

(assert (=> d!2213026 (= (ListPrimitiveSize!409 s!7408) lt!2549077)))

(declare-fun b!7076097 () Bool)

(assert (=> b!7076097 (= e!4254202 0)))

(declare-fun b!7076098 () Bool)

(assert (=> b!7076098 (= e!4254202 (+ 1 (ListPrimitiveSize!409 (t!382304 s!7408))))))

(assert (= (and d!2213026 c!1320222) b!7076097))

(assert (= (and d!2213026 (not c!1320222)) b!7076098))

(assert (=> b!7076098 m!7803834))

(assert (=> b!7075952 d!2213026))

(declare-fun d!2213028 () Bool)

(declare-fun lt!2549080 () Int)

(assert (=> d!2213028 (>= lt!2549080 0)))

(declare-fun e!4254217 () Int)

(assert (=> d!2213028 (= lt!2549080 e!4254217)))

(declare-fun c!1320235 () Bool)

(assert (=> d!2213028 (= c!1320235 (is-Cons!68396 (toList!11005 z1!570)))))

(assert (=> d!2213028 (= (zipperDepthTotal!587 (toList!11005 z1!570)) lt!2549080)))

(declare-fun b!7076123 () Bool)

(declare-fun contextDepthTotal!558 (Context!13320) Int)

(assert (=> b!7076123 (= e!4254217 (+ (contextDepthTotal!558 (h!74844 (toList!11005 z1!570))) (zipperDepthTotal!587 (t!382305 (toList!11005 z1!570)))))))

(declare-fun b!7076124 () Bool)

(assert (=> b!7076124 (= e!4254217 0)))

(assert (= (and d!2213028 c!1320235) b!7076123))

(assert (= (and d!2213028 (not c!1320235)) b!7076124))

(declare-fun m!7804104 () Bool)

(assert (=> b!7076123 m!7804104))

(declare-fun m!7804106 () Bool)

(assert (=> b!7076123 m!7804106))

(assert (=> b!7075952 d!2213028))

(declare-fun d!2213030 () Bool)

(declare-fun lt!2549081 () Int)

(assert (=> d!2213030 (>= lt!2549081 0)))

(declare-fun e!4254218 () Int)

(assert (=> d!2213030 (= lt!2549081 e!4254218)))

(declare-fun c!1320236 () Bool)

(assert (=> d!2213030 (= c!1320236 (is-Cons!68396 (toList!11005 lt!2548943)))))

(assert (=> d!2213030 (= (zipperDepthTotal!587 (toList!11005 lt!2548943)) lt!2549081)))

(declare-fun b!7076125 () Bool)

(assert (=> b!7076125 (= e!4254218 (+ (contextDepthTotal!558 (h!74844 (toList!11005 lt!2548943))) (zipperDepthTotal!587 (t!382305 (toList!11005 lt!2548943)))))))

(declare-fun b!7076126 () Bool)

(assert (=> b!7076126 (= e!4254218 0)))

(assert (= (and d!2213030 c!1320236) b!7076125))

(assert (= (and d!2213030 (not c!1320236)) b!7076126))

(declare-fun m!7804108 () Bool)

(assert (=> b!7076125 m!7804108))

(declare-fun m!7804110 () Bool)

(assert (=> b!7076125 m!7804110))

(assert (=> b!7075952 d!2213030))

(declare-fun d!2213032 () Bool)

(declare-fun lt!2549082 () Int)

(assert (=> d!2213032 (>= lt!2549082 0)))

(declare-fun e!4254219 () Int)

(assert (=> d!2213032 (= lt!2549082 e!4254219)))

(declare-fun c!1320237 () Bool)

(assert (=> d!2213032 (= c!1320237 (is-Nil!68395 (t!382304 s!7408)))))

(assert (=> d!2213032 (= (ListPrimitiveSize!409 (t!382304 s!7408)) lt!2549082)))

(declare-fun b!7076127 () Bool)

(assert (=> b!7076127 (= e!4254219 0)))

(declare-fun b!7076128 () Bool)

(assert (=> b!7076128 (= e!4254219 (+ 1 (ListPrimitiveSize!409 (t!382304 (t!382304 s!7408)))))))

(assert (= (and d!2213032 c!1320237) b!7076127))

(assert (= (and d!2213032 (not c!1320237)) b!7076128))

(declare-fun m!7804112 () Bool)

(assert (=> b!7076128 m!7804112))

(assert (=> b!7075952 d!2213032))

(declare-fun d!2213034 () Bool)

(declare-fun e!4254220 () Bool)

(assert (=> d!2213034 e!4254220))

(declare-fun res!2890286 () Bool)

(assert (=> d!2213034 (=> (not res!2890286) (not e!4254220))))

(declare-fun lt!2549083 () List!68520)

(assert (=> d!2213034 (= res!2890286 (noDuplicate!2738 lt!2549083))))

(assert (=> d!2213034 (= lt!2549083 (choose!54308 lt!2548943))))

(assert (=> d!2213034 (= (toList!11005 lt!2548943) lt!2549083)))

(declare-fun b!7076129 () Bool)

(assert (=> b!7076129 (= e!4254220 (= (content!13823 lt!2549083) lt!2548943))))

(assert (= (and d!2213034 res!2890286) b!7076129))

(declare-fun m!7804114 () Bool)

(assert (=> d!2213034 m!7804114))

(declare-fun m!7804116 () Bool)

(assert (=> d!2213034 m!7804116))

(declare-fun m!7804118 () Bool)

(assert (=> b!7076129 m!7804118))

(assert (=> b!7075952 d!2213034))

(declare-fun d!2213036 () Bool)

(declare-fun c!1320238 () Bool)

(assert (=> d!2213036 (= c!1320238 (isEmpty!39919 (t!382304 s!7408)))))

(declare-fun e!4254221 () Bool)

(assert (=> d!2213036 (= (matchZipper!3204 lt!2548944 (t!382304 s!7408)) e!4254221)))

(declare-fun b!7076130 () Bool)

(assert (=> b!7076130 (= e!4254221 (nullableZipper!2710 lt!2548944))))

(declare-fun b!7076131 () Bool)

(assert (=> b!7076131 (= e!4254221 (matchZipper!3204 (derivationStepZipper!3114 lt!2548944 (head!14419 (t!382304 s!7408))) (tail!13860 (t!382304 s!7408))))))

(assert (= (and d!2213036 c!1320238) b!7076130))

(assert (= (and d!2213036 (not c!1320238)) b!7076131))

(assert (=> d!2213036 m!7804006))

(declare-fun m!7804120 () Bool)

(assert (=> b!7076130 m!7804120))

(assert (=> b!7076131 m!7804010))

(assert (=> b!7076131 m!7804010))

(declare-fun m!7804122 () Bool)

(assert (=> b!7076131 m!7804122))

(assert (=> b!7076131 m!7804014))

(assert (=> b!7076131 m!7804122))

(assert (=> b!7076131 m!7804014))

(declare-fun m!7804124 () Bool)

(assert (=> b!7076131 m!7804124))

(assert (=> b!7075957 d!2213036))

(declare-fun b!7076132 () Bool)

(declare-fun e!4254227 () (Set Context!13320))

(declare-fun e!4254224 () (Set Context!13320))

(assert (=> b!7076132 (= e!4254227 e!4254224)))

(declare-fun c!1320241 () Bool)

(assert (=> b!7076132 (= c!1320241 (is-Concat!26509 (h!74842 (exprs!7160 lt!2548949))))))

(declare-fun b!7076133 () Bool)

(declare-fun e!4254222 () Bool)

(assert (=> b!7076133 (= e!4254222 (nullable!7347 (regOne!35840 (h!74842 (exprs!7160 lt!2548949)))))))

(declare-fun bm!643113 () Bool)

(declare-fun call!643120 () List!68518)

(declare-fun c!1320240 () Bool)

(assert (=> bm!643113 (= call!643120 ($colon$colon!2667 (exprs!7160 (Context!13321 (++!15805 lt!2548962 (exprs!7160 ct2!306)))) (ite (or c!1320240 c!1320241) (regTwo!35840 (h!74842 (exprs!7160 lt!2548949))) (h!74842 (exprs!7160 lt!2548949)))))))

(declare-fun b!7076134 () Bool)

(declare-fun call!643122 () (Set Context!13320))

(declare-fun call!643123 () (Set Context!13320))

(assert (=> b!7076134 (= e!4254227 (set.union call!643122 call!643123))))

(declare-fun bm!643114 () Bool)

(declare-fun c!1320243 () Bool)

(assert (=> bm!643114 (= call!643122 (derivationStepZipperDown!2298 (ite c!1320243 (regOne!35841 (h!74842 (exprs!7160 lt!2548949))) (regOne!35840 (h!74842 (exprs!7160 lt!2548949)))) (ite c!1320243 (Context!13321 (++!15805 lt!2548962 (exprs!7160 ct2!306))) (Context!13321 call!643120)) (h!74843 s!7408)))))

(declare-fun b!7076135 () Bool)

(declare-fun e!4254223 () (Set Context!13320))

(assert (=> b!7076135 (= e!4254223 (set.insert (Context!13321 (++!15805 lt!2548962 (exprs!7160 ct2!306))) (as set.empty (Set Context!13320))))))

(declare-fun bm!643115 () Bool)

(declare-fun call!643118 () (Set Context!13320))

(declare-fun call!643121 () List!68518)

(assert (=> bm!643115 (= call!643118 (derivationStepZipperDown!2298 (ite c!1320243 (regTwo!35841 (h!74842 (exprs!7160 lt!2548949))) (ite c!1320240 (regTwo!35840 (h!74842 (exprs!7160 lt!2548949))) (ite c!1320241 (regOne!35840 (h!74842 (exprs!7160 lt!2548949))) (reg!17993 (h!74842 (exprs!7160 lt!2548949)))))) (ite (or c!1320243 c!1320240) (Context!13321 (++!15805 lt!2548962 (exprs!7160 ct2!306))) (Context!13321 call!643121)) (h!74843 s!7408)))))

(declare-fun d!2213038 () Bool)

(declare-fun c!1320239 () Bool)

(assert (=> d!2213038 (= c!1320239 (and (is-ElementMatch!17664 (h!74842 (exprs!7160 lt!2548949))) (= (c!1320181 (h!74842 (exprs!7160 lt!2548949))) (h!74843 s!7408))))))

(assert (=> d!2213038 (= (derivationStepZipperDown!2298 (h!74842 (exprs!7160 lt!2548949)) (Context!13321 (++!15805 lt!2548962 (exprs!7160 ct2!306))) (h!74843 s!7408)) e!4254223)))

(declare-fun b!7076136 () Bool)

(assert (=> b!7076136 (= c!1320240 e!4254222)))

(declare-fun res!2890287 () Bool)

(assert (=> b!7076136 (=> (not res!2890287) (not e!4254222))))

(assert (=> b!7076136 (= res!2890287 (is-Concat!26509 (h!74842 (exprs!7160 lt!2548949))))))

(declare-fun e!4254226 () (Set Context!13320))

(assert (=> b!7076136 (= e!4254226 e!4254227)))

(declare-fun b!7076137 () Bool)

(declare-fun call!643119 () (Set Context!13320))

(assert (=> b!7076137 (= e!4254224 call!643119)))

(declare-fun b!7076138 () Bool)

(declare-fun c!1320242 () Bool)

(assert (=> b!7076138 (= c!1320242 (is-Star!17664 (h!74842 (exprs!7160 lt!2548949))))))

(declare-fun e!4254225 () (Set Context!13320))

(assert (=> b!7076138 (= e!4254224 e!4254225)))

(declare-fun bm!643116 () Bool)

(assert (=> bm!643116 (= call!643121 call!643120)))

(declare-fun bm!643117 () Bool)

(assert (=> bm!643117 (= call!643123 call!643118)))

(declare-fun b!7076139 () Bool)

(assert (=> b!7076139 (= e!4254226 (set.union call!643122 call!643118))))

(declare-fun b!7076140 () Bool)

(assert (=> b!7076140 (= e!4254225 call!643119)))

(declare-fun b!7076141 () Bool)

(assert (=> b!7076141 (= e!4254223 e!4254226)))

(assert (=> b!7076141 (= c!1320243 (is-Union!17664 (h!74842 (exprs!7160 lt!2548949))))))

(declare-fun b!7076142 () Bool)

(assert (=> b!7076142 (= e!4254225 (as set.empty (Set Context!13320)))))

(declare-fun bm!643118 () Bool)

(assert (=> bm!643118 (= call!643119 call!643123)))

(assert (= (and d!2213038 c!1320239) b!7076135))

(assert (= (and d!2213038 (not c!1320239)) b!7076141))

(assert (= (and b!7076141 c!1320243) b!7076139))

(assert (= (and b!7076141 (not c!1320243)) b!7076136))

(assert (= (and b!7076136 res!2890287) b!7076133))

(assert (= (and b!7076136 c!1320240) b!7076134))

(assert (= (and b!7076136 (not c!1320240)) b!7076132))

(assert (= (and b!7076132 c!1320241) b!7076137))

(assert (= (and b!7076132 (not c!1320241)) b!7076138))

(assert (= (and b!7076138 c!1320242) b!7076140))

(assert (= (and b!7076138 (not c!1320242)) b!7076142))

(assert (= (or b!7076137 b!7076140) bm!643116))

(assert (= (or b!7076137 b!7076140) bm!643118))

(assert (= (or b!7076134 bm!643118) bm!643117))

(assert (= (or b!7076134 bm!643116) bm!643113))

(assert (= (or b!7076139 b!7076134) bm!643114))

(assert (= (or b!7076139 bm!643117) bm!643115))

(declare-fun m!7804126 () Bool)

(assert (=> b!7076135 m!7804126))

(declare-fun m!7804128 () Bool)

(assert (=> bm!643113 m!7804128))

(declare-fun m!7804130 () Bool)

(assert (=> bm!643115 m!7804130))

(assert (=> b!7076133 m!7804042))

(declare-fun m!7804132 () Bool)

(assert (=> bm!643114 m!7804132))

(assert (=> b!7075957 d!2213038))

(declare-fun b!7076143 () Bool)

(declare-fun e!4254228 () List!68518)

(assert (=> b!7076143 (= e!4254228 (exprs!7160 ct2!306))))

(declare-fun b!7076144 () Bool)

(assert (=> b!7076144 (= e!4254228 (Cons!68394 (h!74842 lt!2548962) (++!15805 (t!382303 lt!2548962) (exprs!7160 ct2!306))))))

(declare-fun e!4254229 () Bool)

(declare-fun lt!2549084 () List!68518)

(declare-fun b!7076146 () Bool)

(assert (=> b!7076146 (= e!4254229 (or (not (= (exprs!7160 ct2!306) Nil!68394)) (= lt!2549084 lt!2548962)))))

(declare-fun d!2213040 () Bool)

(assert (=> d!2213040 e!4254229))

(declare-fun res!2890288 () Bool)

(assert (=> d!2213040 (=> (not res!2890288) (not e!4254229))))

(assert (=> d!2213040 (= res!2890288 (= (content!13822 lt!2549084) (set.union (content!13822 lt!2548962) (content!13822 (exprs!7160 ct2!306)))))))

(assert (=> d!2213040 (= lt!2549084 e!4254228)))

(declare-fun c!1320244 () Bool)

(assert (=> d!2213040 (= c!1320244 (is-Nil!68394 lt!2548962))))

(assert (=> d!2213040 (= (++!15805 lt!2548962 (exprs!7160 ct2!306)) lt!2549084)))

(declare-fun b!7076145 () Bool)

(declare-fun res!2890289 () Bool)

(assert (=> b!7076145 (=> (not res!2890289) (not e!4254229))))

(assert (=> b!7076145 (= res!2890289 (= (size!41228 lt!2549084) (+ (size!41228 lt!2548962) (size!41228 (exprs!7160 ct2!306)))))))

(assert (= (and d!2213040 c!1320244) b!7076143))

(assert (= (and d!2213040 (not c!1320244)) b!7076144))

(assert (= (and d!2213040 res!2890288) b!7076145))

(assert (= (and b!7076145 res!2890289) b!7076146))

(declare-fun m!7804134 () Bool)

(assert (=> b!7076144 m!7804134))

(declare-fun m!7804136 () Bool)

(assert (=> d!2213040 m!7804136))

(declare-fun m!7804138 () Bool)

(assert (=> d!2213040 m!7804138))

(assert (=> d!2213040 m!7803988))

(declare-fun m!7804140 () Bool)

(assert (=> b!7076145 m!7804140))

(declare-fun m!7804142 () Bool)

(assert (=> b!7076145 m!7804142))

(assert (=> b!7076145 m!7803994))

(assert (=> b!7075957 d!2213040))

(assert (=> b!7075957 d!2213010))

(declare-fun d!2213042 () Bool)

(declare-fun dynLambda!27843 (Int Context!13320) (Set Context!13320))

(assert (=> d!2213042 (= (flatMap!2590 lt!2548948 lambda!426635) (dynLambda!27843 lambda!426635 lt!2548946))))

(declare-fun lt!2549087 () Unit!162039)

(declare-fun choose!54311 ((Set Context!13320) Context!13320 Int) Unit!162039)

(assert (=> d!2213042 (= lt!2549087 (choose!54311 lt!2548948 lt!2548946 lambda!426635))))

(assert (=> d!2213042 (= lt!2548948 (set.insert lt!2548946 (as set.empty (Set Context!13320))))))

(assert (=> d!2213042 (= (lemmaFlatMapOnSingletonSet!2099 lt!2548948 lt!2548946 lambda!426635) lt!2549087)))

(declare-fun b_lambda!270261 () Bool)

(assert (=> (not b_lambda!270261) (not d!2213042)))

(declare-fun bs!1881311 () Bool)

(assert (= bs!1881311 d!2213042))

(assert (=> bs!1881311 m!7803852))

(declare-fun m!7804144 () Bool)

(assert (=> bs!1881311 m!7804144))

(declare-fun m!7804146 () Bool)

(assert (=> bs!1881311 m!7804146))

(assert (=> bs!1881311 m!7803864))

(assert (=> b!7075954 d!2213042))

(assert (=> b!7075954 d!2212986))

(declare-fun b!7076176 () Bool)

(declare-fun e!4254247 () Bool)

(assert (=> b!7076176 (= e!4254247 (nullable!7347 (h!74842 (exprs!7160 lt!2548946))))))

(declare-fun call!643132 () (Set Context!13320))

(declare-fun e!4254248 () (Set Context!13320))

(declare-fun b!7076177 () Bool)

(assert (=> b!7076177 (= e!4254248 (set.union call!643132 (derivationStepZipperUp!2248 (Context!13321 (t!382303 (exprs!7160 lt!2548946))) (h!74843 s!7408))))))

(declare-fun b!7076178 () Bool)

(declare-fun e!4254246 () (Set Context!13320))

(assert (=> b!7076178 (= e!4254248 e!4254246)))

(declare-fun c!1320257 () Bool)

(assert (=> b!7076178 (= c!1320257 (is-Cons!68394 (exprs!7160 lt!2548946)))))

(declare-fun b!7076179 () Bool)

(assert (=> b!7076179 (= e!4254246 (as set.empty (Set Context!13320)))))

(declare-fun d!2213044 () Bool)

(declare-fun c!1320256 () Bool)

(assert (=> d!2213044 (= c!1320256 e!4254247)))

(declare-fun res!2890297 () Bool)

(assert (=> d!2213044 (=> (not res!2890297) (not e!4254247))))

(assert (=> d!2213044 (= res!2890297 (is-Cons!68394 (exprs!7160 lt!2548946)))))

(assert (=> d!2213044 (= (derivationStepZipperUp!2248 lt!2548946 (h!74843 s!7408)) e!4254248)))

(declare-fun b!7076180 () Bool)

(assert (=> b!7076180 (= e!4254246 call!643132)))

(declare-fun bm!643127 () Bool)

(assert (=> bm!643127 (= call!643132 (derivationStepZipperDown!2298 (h!74842 (exprs!7160 lt!2548946)) (Context!13321 (t!382303 (exprs!7160 lt!2548946))) (h!74843 s!7408)))))

(assert (= (and d!2213044 res!2890297) b!7076176))

(assert (= (and d!2213044 c!1320256) b!7076177))

(assert (= (and d!2213044 (not c!1320256)) b!7076178))

(assert (= (and b!7076178 c!1320257) b!7076180))

(assert (= (and b!7076178 (not c!1320257)) b!7076179))

(assert (= (or b!7076177 b!7076180) bm!643127))

(declare-fun m!7804158 () Bool)

(assert (=> b!7076176 m!7804158))

(declare-fun m!7804160 () Bool)

(assert (=> b!7076177 m!7804160))

(declare-fun m!7804162 () Bool)

(assert (=> bm!643127 m!7804162))

(assert (=> b!7075954 d!2213044))

(declare-fun d!2213048 () Bool)

(declare-fun choose!54312 ((Set Context!13320) Int) (Set Context!13320))

(assert (=> d!2213048 (= (flatMap!2590 lt!2548948 lambda!426635) (choose!54312 lt!2548948 lambda!426635))))

(declare-fun bs!1881312 () Bool)

(assert (= bs!1881312 d!2213048))

(declare-fun m!7804164 () Bool)

(assert (=> bs!1881312 m!7804164))

(assert (=> b!7075954 d!2213048))

(declare-fun bs!1881313 () Bool)

(declare-fun d!2213050 () Bool)

(assert (= bs!1881313 (and d!2213050 b!7075954)))

(declare-fun lambda!426679 () Int)

(assert (=> bs!1881313 (= lambda!426679 lambda!426635)))

(assert (=> d!2213050 true))

(assert (=> d!2213050 (= (derivationStepZipper!3114 lt!2548948 (h!74843 s!7408)) (flatMap!2590 lt!2548948 lambda!426679))))

(declare-fun bs!1881314 () Bool)

(assert (= bs!1881314 d!2213050))

(declare-fun m!7804180 () Bool)

(assert (=> bs!1881314 m!7804180))

(assert (=> b!7075954 d!2213050))

(declare-fun d!2213054 () Bool)

(declare-fun c!1320261 () Bool)

(assert (=> d!2213054 (= c!1320261 (isEmpty!39919 s!7408))))

(declare-fun e!4254251 () Bool)

(assert (=> d!2213054 (= (matchZipper!3204 lt!2548959 s!7408) e!4254251)))

(declare-fun b!7076187 () Bool)

(assert (=> b!7076187 (= e!4254251 (nullableZipper!2710 lt!2548959))))

(declare-fun b!7076188 () Bool)

(assert (=> b!7076188 (= e!4254251 (matchZipper!3204 (derivationStepZipper!3114 lt!2548959 (head!14419 s!7408)) (tail!13860 s!7408)))))

(assert (= (and d!2213054 c!1320261) b!7076187))

(assert (= (and d!2213054 (not c!1320261)) b!7076188))

(declare-fun m!7804182 () Bool)

(assert (=> d!2213054 m!7804182))

(declare-fun m!7804184 () Bool)

(assert (=> b!7076187 m!7804184))

(declare-fun m!7804186 () Bool)

(assert (=> b!7076188 m!7804186))

(assert (=> b!7076188 m!7804186))

(declare-fun m!7804188 () Bool)

(assert (=> b!7076188 m!7804188))

(declare-fun m!7804190 () Bool)

(assert (=> b!7076188 m!7804190))

(assert (=> b!7076188 m!7804188))

(assert (=> b!7076188 m!7804190))

(declare-fun m!7804192 () Bool)

(assert (=> b!7076188 m!7804192))

(assert (=> start!687738 d!2213054))

(declare-fun bs!1881316 () Bool)

(declare-fun d!2213056 () Bool)

(assert (= bs!1881316 (and d!2213056 b!7075958)))

(declare-fun lambda!426680 () Int)

(assert (=> bs!1881316 (= lambda!426680 lambda!426633)))

(declare-fun bs!1881317 () Bool)

(assert (= bs!1881317 (and d!2213056 d!2212996)))

(assert (=> bs!1881317 (= lambda!426680 lambda!426667)))

(assert (=> d!2213056 true))

(assert (=> d!2213056 (= (appendTo!785 z1!570 ct2!306) (map!16011 z1!570 lambda!426680))))

(declare-fun bs!1881318 () Bool)

(assert (= bs!1881318 d!2213056))

(declare-fun m!7804206 () Bool)

(assert (=> bs!1881318 m!7804206))

(assert (=> start!687738 d!2213056))

(declare-fun bs!1881319 () Bool)

(declare-fun d!2213062 () Bool)

(assert (= bs!1881319 (and d!2213062 b!7075958)))

(declare-fun lambda!426681 () Int)

(assert (=> bs!1881319 (= lambda!426681 lambda!426634)))

(declare-fun bs!1881320 () Bool)

(assert (= bs!1881320 (and d!2213062 d!2212984)))

(assert (=> bs!1881320 (= lambda!426681 lambda!426662)))

(declare-fun bs!1881321 () Bool)

(assert (= bs!1881321 (and d!2213062 d!2213014)))

(assert (=> bs!1881321 (= lambda!426681 lambda!426676)))

(assert (=> d!2213062 (= (inv!87020 ct2!306) (forall!16618 (exprs!7160 ct2!306) lambda!426681))))

(declare-fun bs!1881322 () Bool)

(assert (= bs!1881322 d!2213062))

(declare-fun m!7804208 () Bool)

(assert (=> bs!1881322 m!7804208))

(assert (=> start!687738 d!2213062))

(declare-fun d!2213064 () Bool)

(declare-fun c!1320262 () Bool)

(assert (=> d!2213064 (= c!1320262 (isEmpty!39919 s!7408))))

(declare-fun e!4254253 () Bool)

(assert (=> d!2213064 (= (matchZipper!3204 lt!2548966 s!7408) e!4254253)))

(declare-fun b!7076190 () Bool)

(assert (=> b!7076190 (= e!4254253 (nullableZipper!2710 lt!2548966))))

(declare-fun b!7076191 () Bool)

(assert (=> b!7076191 (= e!4254253 (matchZipper!3204 (derivationStepZipper!3114 lt!2548966 (head!14419 s!7408)) (tail!13860 s!7408)))))

(assert (= (and d!2213064 c!1320262) b!7076190))

(assert (= (and d!2213064 (not c!1320262)) b!7076191))

(assert (=> d!2213064 m!7804182))

(declare-fun m!7804210 () Bool)

(assert (=> b!7076190 m!7804210))

(assert (=> b!7076191 m!7804186))

(assert (=> b!7076191 m!7804186))

(declare-fun m!7804212 () Bool)

(assert (=> b!7076191 m!7804212))

(assert (=> b!7076191 m!7804190))

(assert (=> b!7076191 m!7804212))

(assert (=> b!7076191 m!7804190))

(declare-fun m!7804214 () Bool)

(assert (=> b!7076191 m!7804214))

(assert (=> b!7075953 d!2213064))

(declare-fun bs!1881324 () Bool)

(declare-fun d!2213066 () Bool)

(assert (= bs!1881324 (and d!2213066 b!7075953)))

(declare-fun lambda!426684 () Int)

(assert (=> bs!1881324 (= lambda!426684 lambda!426632)))

(assert (=> d!2213066 true))

(assert (=> d!2213066 (exists!3726 lt!2548958 lambda!426684)))

(declare-fun lt!2549108 () Unit!162039)

(declare-fun choose!54313 (List!68520 List!68519) Unit!162039)

(assert (=> d!2213066 (= lt!2549108 (choose!54313 lt!2548958 s!7408))))

(assert (=> d!2213066 (matchZipper!3204 (content!13823 lt!2548958) s!7408)))

(assert (=> d!2213066 (= (lemmaZipperMatchesExistsMatchingContext!585 lt!2548958 s!7408) lt!2549108)))

(declare-fun bs!1881325 () Bool)

(assert (= bs!1881325 d!2213066))

(declare-fun m!7804248 () Bool)

(assert (=> bs!1881325 m!7804248))

(declare-fun m!7804250 () Bool)

(assert (=> bs!1881325 m!7804250))

(declare-fun m!7804252 () Bool)

(assert (=> bs!1881325 m!7804252))

(assert (=> bs!1881325 m!7804252))

(declare-fun m!7804254 () Bool)

(assert (=> bs!1881325 m!7804254))

(assert (=> b!7075953 d!2213066))

(declare-fun bs!1881326 () Bool)

(declare-fun d!2213082 () Bool)

(assert (= bs!1881326 (and d!2213082 b!7075953)))

(declare-fun lambda!426687 () Int)

(assert (=> bs!1881326 (not (= lambda!426687 lambda!426632))))

(declare-fun bs!1881327 () Bool)

(assert (= bs!1881327 (and d!2213082 d!2213066)))

(assert (=> bs!1881327 (not (= lambda!426687 lambda!426684))))

(assert (=> d!2213082 true))

(declare-fun order!28433 () Int)

(declare-fun dynLambda!27844 (Int Int) Int)

(assert (=> d!2213082 (< (dynLambda!27844 order!28433 lambda!426632) (dynLambda!27844 order!28433 lambda!426687))))

(declare-fun forall!16620 (List!68520 Int) Bool)

(assert (=> d!2213082 (= (exists!3726 lt!2548958 lambda!426632) (not (forall!16620 lt!2548958 lambda!426687)))))

(declare-fun bs!1881328 () Bool)

(assert (= bs!1881328 d!2213082))

(declare-fun m!7804256 () Bool)

(assert (=> bs!1881328 m!7804256))

(assert (=> b!7075953 d!2213082))

(declare-fun d!2213084 () Bool)

(declare-fun e!4254267 () Bool)

(assert (=> d!2213084 e!4254267))

(declare-fun res!2890306 () Bool)

(assert (=> d!2213084 (=> (not res!2890306) (not e!4254267))))

(declare-fun lt!2549111 () List!68520)

(assert (=> d!2213084 (= res!2890306 (noDuplicate!2738 lt!2549111))))

(assert (=> d!2213084 (= lt!2549111 (choose!54308 lt!2548959))))

(assert (=> d!2213084 (= (toList!11005 lt!2548959) lt!2549111)))

(declare-fun b!7076218 () Bool)

(assert (=> b!7076218 (= e!4254267 (= (content!13823 lt!2549111) lt!2548959))))

(assert (= (and d!2213084 res!2890306) b!7076218))

(declare-fun m!7804258 () Bool)

(assert (=> d!2213084 m!7804258))

(declare-fun m!7804260 () Bool)

(assert (=> d!2213084 m!7804260))

(declare-fun m!7804262 () Bool)

(assert (=> b!7076218 m!7804262))

(assert (=> b!7075953 d!2213084))

(declare-fun d!2213086 () Bool)

(declare-fun e!4254272 () Bool)

(assert (=> d!2213086 e!4254272))

(declare-fun res!2890310 () Bool)

(assert (=> d!2213086 (=> (not res!2890310) (not e!4254272))))

(declare-fun lt!2549115 () Context!13320)

(declare-fun dynLambda!27845 (Int Context!13320) Bool)

(assert (=> d!2213086 (= res!2890310 (dynLambda!27845 lambda!426632 lt!2549115))))

(declare-fun getWitness!1779 (List!68520 Int) Context!13320)

(assert (=> d!2213086 (= lt!2549115 (getWitness!1779 (toList!11005 lt!2548959) lambda!426632))))

(declare-fun exists!3729 ((Set Context!13320) Int) Bool)

(assert (=> d!2213086 (exists!3729 lt!2548959 lambda!426632)))

(assert (=> d!2213086 (= (getWitness!1776 lt!2548959 lambda!426632) lt!2549115)))

(declare-fun b!7076224 () Bool)

(assert (=> b!7076224 (= e!4254272 (set.member lt!2549115 lt!2548959))))

(assert (= (and d!2213086 res!2890310) b!7076224))

(declare-fun b_lambda!270265 () Bool)

(assert (=> (not b_lambda!270265) (not d!2213086)))

(declare-fun m!7804280 () Bool)

(assert (=> d!2213086 m!7804280))

(assert (=> d!2213086 m!7803882))

(assert (=> d!2213086 m!7803882))

(declare-fun m!7804282 () Bool)

(assert (=> d!2213086 m!7804282))

(declare-fun m!7804284 () Bool)

(assert (=> d!2213086 m!7804284))

(declare-fun m!7804286 () Bool)

(assert (=> b!7076224 m!7804286))

(assert (=> b!7075953 d!2213086))

(declare-fun condSetEmpty!50368 () Bool)

(assert (=> setNonEmpty!50362 (= condSetEmpty!50368 (= setRest!50362 (as set.empty (Set Context!13320))))))

(declare-fun setRes!50368 () Bool)

(assert (=> setNonEmpty!50362 (= tp!1942847 setRes!50368)))

(declare-fun setIsEmpty!50368 () Bool)

(assert (=> setIsEmpty!50368 setRes!50368))

(declare-fun setElem!50368 () Context!13320)

(declare-fun setNonEmpty!50368 () Bool)

(declare-fun tp!1942865 () Bool)

(declare-fun e!4254275 () Bool)

(assert (=> setNonEmpty!50368 (= setRes!50368 (and tp!1942865 (inv!87020 setElem!50368) e!4254275))))

(declare-fun setRest!50368 () (Set Context!13320))

(assert (=> setNonEmpty!50368 (= setRest!50362 (set.union (set.insert setElem!50368 (as set.empty (Set Context!13320))) setRest!50368))))

(declare-fun b!7076229 () Bool)

(declare-fun tp!1942866 () Bool)

(assert (=> b!7076229 (= e!4254275 tp!1942866)))

(assert (= (and setNonEmpty!50362 condSetEmpty!50368) setIsEmpty!50368))

(assert (= (and setNonEmpty!50362 (not condSetEmpty!50368)) setNonEmpty!50368))

(assert (= setNonEmpty!50368 b!7076229))

(declare-fun m!7804288 () Bool)

(assert (=> setNonEmpty!50368 m!7804288))

(declare-fun b!7076234 () Bool)

(declare-fun e!4254278 () Bool)

(declare-fun tp!1942871 () Bool)

(declare-fun tp!1942872 () Bool)

(assert (=> b!7076234 (= e!4254278 (and tp!1942871 tp!1942872))))

(assert (=> b!7075956 (= tp!1942845 e!4254278)))

(assert (= (and b!7075956 (is-Cons!68394 (exprs!7160 ct2!306))) b!7076234))

(declare-fun b!7076235 () Bool)

(declare-fun e!4254279 () Bool)

(declare-fun tp!1942873 () Bool)

(declare-fun tp!1942874 () Bool)

(assert (=> b!7076235 (= e!4254279 (and tp!1942873 tp!1942874))))

(assert (=> b!7075945 (= tp!1942848 e!4254279)))

(assert (= (and b!7075945 (is-Cons!68394 (exprs!7160 setElem!50362))) b!7076235))

(declare-fun b!7076240 () Bool)

(declare-fun e!4254282 () Bool)

(declare-fun tp!1942877 () Bool)

(assert (=> b!7076240 (= e!4254282 (and tp_is_empty!44553 tp!1942877))))

(assert (=> b!7075950 (= tp!1942846 e!4254282)))

(assert (= (and b!7075950 (is-Cons!68395 (t!382304 s!7408))) b!7076240))

(declare-fun b_lambda!270267 () Bool)

(assert (= b_lambda!270261 (or b!7075954 b_lambda!270267)))

(declare-fun bs!1881331 () Bool)

(declare-fun d!2213094 () Bool)

(assert (= bs!1881331 (and d!2213094 b!7075954)))

(assert (=> bs!1881331 (= (dynLambda!27843 lambda!426635 lt!2548946) (derivationStepZipperUp!2248 lt!2548946 (h!74843 s!7408)))))

(assert (=> bs!1881331 m!7803856))

(assert (=> d!2213042 d!2213094))

(declare-fun b_lambda!270269 () Bool)

(assert (= b_lambda!270257 (or b!7075958 b_lambda!270269)))

(declare-fun bs!1881332 () Bool)

(declare-fun d!2213096 () Bool)

(assert (= bs!1881332 (and d!2213096 b!7075958)))

(declare-fun lt!2549118 () Unit!162039)

(assert (=> bs!1881332 (= lt!2549118 (lemmaConcatPreservesForall!975 (exprs!7160 lt!2549053) (exprs!7160 ct2!306) lambda!426634))))

(assert (=> bs!1881332 (= (dynLambda!27840 lambda!426633 lt!2549053) (Context!13321 (++!15805 (exprs!7160 lt!2549053) (exprs!7160 ct2!306))))))

(declare-fun m!7804292 () Bool)

(assert (=> bs!1881332 m!7804292))

(declare-fun m!7804294 () Bool)

(assert (=> bs!1881332 m!7804294))

(assert (=> d!2212992 d!2213096))

(declare-fun b_lambda!270271 () Bool)

(assert (= b_lambda!270265 (or b!7075953 b_lambda!270271)))

(declare-fun bs!1881333 () Bool)

(declare-fun d!2213098 () Bool)

(assert (= bs!1881333 (and d!2213098 b!7075953)))

(assert (=> bs!1881333 (= (dynLambda!27845 lambda!426632 lt!2549115) (matchZipper!3204 (set.insert lt!2549115 (as set.empty (Set Context!13320))) s!7408))))

(declare-fun m!7804296 () Bool)

(assert (=> bs!1881333 m!7804296))

(assert (=> bs!1881333 m!7804296))

(declare-fun m!7804298 () Bool)

(assert (=> bs!1881333 m!7804298))

(assert (=> d!2213086 d!2213098))

(push 1)

(assert (not d!2213066))

(assert (not b!7076038))

(assert (not b!7076187))

(assert (not b!7076240))

(assert (not b!7076128))

(assert (not b!7076072))

(assert (not b_lambda!270271))

(assert (not d!2212996))

(assert (not bm!643096))

(assert (not b!7076131))

(assert (not d!2213084))

(assert (not d!2213010))

(assert (not b!7076129))

(assert (not d!2212990))

(assert (not b!7076188))

(assert (not b!7076144))

(assert (not bs!1881333))

(assert (not d!2213054))

(assert (not bs!1881331))

(assert tp_is_empty!44553)

(assert (not d!2213040))

(assert (not b!7076027))

(assert (not b!7076133))

(assert (not d!2213014))

(assert (not d!2213086))

(assert (not b!7076218))

(assert (not b!7076176))

(assert (not bm!643115))

(assert (not setNonEmpty!50368))

(assert (not bm!643097))

(assert (not b!7076229))

(assert (not b_lambda!270267))

(assert (not d!2212984))

(assert (not bm!643127))

(assert (not b!7076130))

(assert (not bs!1881332))

(assert (not bm!643114))

(assert (not b!7076026))

(assert (not d!2213050))

(assert (not b!7076177))

(assert (not b!7076090))

(assert (not b!7076037))

(assert (not d!2213022))

(assert (not d!2212980))

(assert (not d!2213064))

(assert (not d!2213062))

(assert (not b!7076098))

(assert (not bm!643113))

(assert (not b!7076235))

(assert (not d!2212992))

(assert (not d!2213082))

(assert (not d!2213042))

(assert (not d!2212986))

(assert (not d!2213034))

(assert (not d!2213036))

(assert (not d!2212994))

(assert (not bm!643095))

(assert (not d!2213056))

(assert (not b!7076191))

(assert (not b!7076190))

(assert (not b!7076234))

(assert (not b!7076125))

(assert (not d!2213048))

(assert (not b!7076123))

(assert (not b!7076145))

(assert (not b_lambda!270269))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

