; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!674730 () Bool)

(assert start!674730)

(declare-fun b!7007828 () Bool)

(assert (=> b!7007828 true))

(declare-fun b!7007834 () Bool)

(assert (=> b!7007834 true))

(declare-fun b!7007824 () Bool)

(assert (=> b!7007824 true))

(declare-fun b!7007815 () Bool)

(declare-fun res!2859266 () Bool)

(declare-fun e!4212360 () Bool)

(assert (=> b!7007815 (=> (not res!2859266) (not e!4212360))))

(declare-datatypes ((C!34874 0))(
  ( (C!34875 (val!27139 Int)) )
))
(declare-datatypes ((List!67451 0))(
  ( (Nil!67327) (Cons!67327 (h!73775 C!34874) (t!381206 List!67451)) )
))
(declare-fun s!7408 () List!67451)

(assert (=> b!7007815 (= res!2859266 (is-Cons!67327 s!7408))))

(declare-fun b!7007816 () Bool)

(declare-fun e!4212354 () Bool)

(declare-datatypes ((Regex!17302 0))(
  ( (ElementMatch!17302 (c!1301532 C!34874)) (Concat!26147 (regOne!35116 Regex!17302) (regTwo!35116 Regex!17302)) (EmptyExpr!17302) (Star!17302 (reg!17631 Regex!17302)) (EmptyLang!17302) (Union!17302 (regOne!35117 Regex!17302) (regTwo!35117 Regex!17302)) )
))
(declare-datatypes ((List!67452 0))(
  ( (Nil!67328) (Cons!67328 (h!73776 Regex!17302) (t!381207 List!67452)) )
))
(declare-datatypes ((Context!12596 0))(
  ( (Context!12597 (exprs!6798 List!67452)) )
))
(declare-fun lt!2501928 () (Set Context!12596))

(declare-fun matchZipper!2842 ((Set Context!12596) List!67451) Bool)

(assert (=> b!7007816 (= e!4212354 (matchZipper!2842 lt!2501928 (t!381206 s!7408)))))

(declare-fun b!7007817 () Bool)

(declare-fun res!2859274 () Bool)

(declare-fun e!4212367 () Bool)

(assert (=> b!7007817 (=> res!2859274 e!4212367)))

(declare-fun lt!2501952 () Bool)

(assert (=> b!7007817 (= res!2859274 (not lt!2501952))))

(declare-fun b!7007818 () Bool)

(declare-fun e!4212357 () Bool)

(declare-fun lt!2501943 () List!67452)

(declare-fun lambda!407547 () Int)

(declare-fun forall!16217 (List!67452 Int) Bool)

(assert (=> b!7007818 (= e!4212357 (forall!16217 lt!2501943 lambda!407547))))

(declare-fun lt!2501932 () Context!12596)

(declare-fun lt!2501946 () Context!12596)

(declare-fun lt!2501940 () (Set Context!12596))

(declare-fun ct2!306 () Context!12596)

(declare-fun appendTo!423 ((Set Context!12596) Context!12596) (Set Context!12596))

(declare-fun derivationStepZipperDown!2020 (Regex!17302 Context!12596 C!34874) (Set Context!12596))

(assert (=> b!7007818 (= lt!2501940 (appendTo!423 (derivationStepZipperDown!2020 (h!73776 (exprs!6798 lt!2501932)) lt!2501946 (h!73775 s!7408)) ct2!306))))

(declare-datatypes ((Unit!161282 0))(
  ( (Unit!161283) )
))
(declare-fun lt!2501926 () Unit!161282)

(declare-fun lemmaConcatPreservesForall!638 (List!67452 List!67452 Int) Unit!161282)

(assert (=> b!7007818 (= lt!2501926 (lemmaConcatPreservesForall!638 lt!2501943 (exprs!6798 ct2!306) lambda!407547))))

(declare-fun lt!2501930 () Unit!161282)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!1 (Context!12596 Regex!17302 C!34874 Context!12596) Unit!161282)

(assert (=> b!7007818 (= lt!2501930 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!1 lt!2501946 (h!73776 (exprs!6798 lt!2501932)) (h!73775 s!7408) ct2!306))))

(declare-fun b!7007819 () Bool)

(declare-fun e!4212366 () Bool)

(declare-fun e!4212365 () Bool)

(assert (=> b!7007819 (= e!4212366 e!4212365)))

(declare-fun res!2859264 () Bool)

(assert (=> b!7007819 (=> res!2859264 e!4212365)))

(declare-fun lt!2501948 () (Set Context!12596))

(declare-fun lt!2501956 () (Set Context!12596))

(assert (=> b!7007819 (= res!2859264 (not (= lt!2501948 lt!2501956)))))

(assert (=> b!7007819 (= lt!2501956 (set.union lt!2501940 lt!2501928))))

(declare-fun lt!2501941 () Context!12596)

(declare-fun derivationStepZipperUp!1952 (Context!12596 C!34874) (Set Context!12596))

(assert (=> b!7007819 (= lt!2501928 (derivationStepZipperUp!1952 lt!2501941 (h!73775 s!7408)))))

(assert (=> b!7007819 (= lt!2501940 (derivationStepZipperDown!2020 (h!73776 (exprs!6798 lt!2501932)) lt!2501941 (h!73775 s!7408)))))

(declare-fun ++!15293 (List!67452 List!67452) List!67452)

(assert (=> b!7007819 (= lt!2501941 (Context!12597 (++!15293 lt!2501943 (exprs!6798 ct2!306))))))

(declare-fun lt!2501957 () Unit!161282)

(assert (=> b!7007819 (= lt!2501957 (lemmaConcatPreservesForall!638 lt!2501943 (exprs!6798 ct2!306) lambda!407547))))

(declare-fun lt!2501927 () Unit!161282)

(assert (=> b!7007819 (= lt!2501927 (lemmaConcatPreservesForall!638 lt!2501943 (exprs!6798 ct2!306) lambda!407547))))

(declare-fun b!7007820 () Bool)

(declare-fun res!2859270 () Bool)

(declare-fun e!4212359 () Bool)

(assert (=> b!7007820 (=> res!2859270 e!4212359)))

(declare-fun lt!2501933 () Context!12596)

(declare-fun lt!2501942 () (Set Context!12596))

(assert (=> b!7007820 (= res!2859270 (not (set.member lt!2501933 lt!2501942)))))

(declare-fun b!7007821 () Bool)

(declare-fun e!4212364 () Bool)

(assert (=> b!7007821 (= e!4212367 e!4212364)))

(declare-fun res!2859272 () Bool)

(assert (=> b!7007821 (=> res!2859272 e!4212364)))

(assert (=> b!7007821 (= res!2859272 (matchZipper!2842 lt!2501928 (t!381206 s!7408)))))

(declare-fun lt!2501934 () Unit!161282)

(assert (=> b!7007821 (= lt!2501934 (lemmaConcatPreservesForall!638 lt!2501943 (exprs!6798 ct2!306) lambda!407547))))

(declare-fun b!7007822 () Bool)

(declare-fun e!4212361 () Bool)

(declare-fun tp!1931994 () Bool)

(assert (=> b!7007822 (= e!4212361 tp!1931994)))

(declare-fun b!7007823 () Bool)

(assert (=> b!7007823 (= e!4212365 e!4212367)))

(declare-fun res!2859260 () Bool)

(assert (=> b!7007823 (=> res!2859260 e!4212367)))

(declare-fun e!4212358 () Bool)

(assert (=> b!7007823 (= res!2859260 e!4212358)))

(declare-fun res!2859259 () Bool)

(assert (=> b!7007823 (=> (not res!2859259) (not e!4212358))))

(declare-fun lt!2501949 () Bool)

(assert (=> b!7007823 (= res!2859259 (not (= lt!2501952 lt!2501949)))))

(assert (=> b!7007823 (= lt!2501952 (matchZipper!2842 lt!2501948 (t!381206 s!7408)))))

(declare-fun lt!2501944 () Unit!161282)

(assert (=> b!7007823 (= lt!2501944 (lemmaConcatPreservesForall!638 lt!2501943 (exprs!6798 ct2!306) lambda!407547))))

(assert (=> b!7007823 (= (matchZipper!2842 lt!2501956 (t!381206 s!7408)) e!4212354)))

(declare-fun res!2859271 () Bool)

(assert (=> b!7007823 (=> res!2859271 e!4212354)))

(assert (=> b!7007823 (= res!2859271 lt!2501949)))

(assert (=> b!7007823 (= lt!2501949 (matchZipper!2842 lt!2501940 (t!381206 s!7408)))))

(declare-fun lt!2501936 () Unit!161282)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1475 ((Set Context!12596) (Set Context!12596) List!67451) Unit!161282)

(assert (=> b!7007823 (= lt!2501936 (lemmaZipperConcatMatchesSameAsBothZippers!1475 lt!2501940 lt!2501928 (t!381206 s!7408)))))

(declare-fun lt!2501955 () Unit!161282)

(assert (=> b!7007823 (= lt!2501955 (lemmaConcatPreservesForall!638 lt!2501943 (exprs!6798 ct2!306) lambda!407547))))

(declare-fun lt!2501954 () Unit!161282)

(assert (=> b!7007823 (= lt!2501954 (lemmaConcatPreservesForall!638 lt!2501943 (exprs!6798 ct2!306) lambda!407547))))

(declare-fun e!4212363 () Bool)

(declare-fun e!4212353 () Bool)

(assert (=> b!7007824 (= e!4212363 e!4212353)))

(declare-fun res!2859261 () Bool)

(assert (=> b!7007824 (=> res!2859261 e!4212353)))

(declare-fun lt!2501939 () (Set Context!12596))

(declare-fun derivationStepZipper!2782 ((Set Context!12596) C!34874) (Set Context!12596))

(assert (=> b!7007824 (= res!2859261 (not (= (derivationStepZipper!2782 lt!2501939 (h!73775 s!7408)) lt!2501948)))))

(declare-fun lambda!407548 () Int)

(declare-fun lt!2501931 () Context!12596)

(declare-fun flatMap!2288 ((Set Context!12596) Int) (Set Context!12596))

(assert (=> b!7007824 (= (flatMap!2288 lt!2501939 lambda!407548) (derivationStepZipperUp!1952 lt!2501931 (h!73775 s!7408)))))

(declare-fun lt!2501935 () Unit!161282)

(declare-fun lemmaFlatMapOnSingletonSet!1803 ((Set Context!12596) Context!12596 Int) Unit!161282)

(assert (=> b!7007824 (= lt!2501935 (lemmaFlatMapOnSingletonSet!1803 lt!2501939 lt!2501931 lambda!407548))))

(assert (=> b!7007824 (= lt!2501948 (derivationStepZipperUp!1952 lt!2501931 (h!73775 s!7408)))))

(declare-fun lt!2501938 () Unit!161282)

(assert (=> b!7007824 (= lt!2501938 (lemmaConcatPreservesForall!638 (exprs!6798 lt!2501932) (exprs!6798 ct2!306) lambda!407547))))

(declare-fun b!7007825 () Bool)

(assert (=> b!7007825 (= e!4212353 e!4212366)))

(declare-fun res!2859275 () Bool)

(assert (=> b!7007825 (=> res!2859275 e!4212366)))

(declare-fun nullable!7062 (Regex!17302) Bool)

(assert (=> b!7007825 (= res!2859275 (not (nullable!7062 (h!73776 (exprs!6798 lt!2501932)))))))

(assert (=> b!7007825 (= lt!2501946 (Context!12597 lt!2501943))))

(declare-fun tail!13368 (List!67452) List!67452)

(assert (=> b!7007825 (= lt!2501943 (tail!13368 (exprs!6798 lt!2501932)))))

(declare-fun b!7007826 () Bool)

(declare-fun res!2859267 () Bool)

(assert (=> b!7007826 (=> res!2859267 e!4212353)))

(declare-fun isEmpty!39321 (List!67452) Bool)

(assert (=> b!7007826 (= res!2859267 (isEmpty!39321 (exprs!6798 lt!2501932)))))

(declare-fun res!2859265 () Bool)

(assert (=> start!674730 (=> (not res!2859265) (not e!4212360))))

(assert (=> start!674730 (= res!2859265 (matchZipper!2842 lt!2501942 s!7408))))

(declare-fun z1!570 () (Set Context!12596))

(assert (=> start!674730 (= lt!2501942 (appendTo!423 z1!570 ct2!306))))

(assert (=> start!674730 e!4212360))

(declare-fun condSetEmpty!48278 () Bool)

(assert (=> start!674730 (= condSetEmpty!48278 (= z1!570 (as set.empty (Set Context!12596))))))

(declare-fun setRes!48278 () Bool)

(assert (=> start!674730 setRes!48278))

(declare-fun e!4212362 () Bool)

(declare-fun inv!86115 (Context!12596) Bool)

(assert (=> start!674730 (and (inv!86115 ct2!306) e!4212362)))

(declare-fun e!4212356 () Bool)

(assert (=> start!674730 e!4212356))

(declare-fun b!7007827 () Bool)

(assert (=> b!7007827 (= e!4212364 e!4212357)))

(declare-fun res!2859263 () Bool)

(assert (=> b!7007827 (=> res!2859263 e!4212357)))

(assert (=> b!7007827 (= res!2859263 (not lt!2501949))))

(declare-fun lt!2501958 () Unit!161282)

(assert (=> b!7007827 (= lt!2501958 (lemmaConcatPreservesForall!638 lt!2501943 (exprs!6798 ct2!306) lambda!407547))))

(declare-fun lt!2501951 () Unit!161282)

(assert (=> b!7007827 (= lt!2501951 (lemmaConcatPreservesForall!638 lt!2501943 (exprs!6798 ct2!306) lambda!407547))))

(assert (=> b!7007828 (= e!4212360 (not e!4212359))))

(declare-fun res!2859269 () Bool)

(assert (=> b!7007828 (=> res!2859269 e!4212359)))

(declare-fun lt!2501953 () (Set Context!12596))

(assert (=> b!7007828 (= res!2859269 (not (matchZipper!2842 lt!2501953 s!7408)))))

(assert (=> b!7007828 (= lt!2501953 (set.insert lt!2501933 (as set.empty (Set Context!12596))))))

(declare-fun lambda!407545 () Int)

(declare-fun getWitness!1236 ((Set Context!12596) Int) Context!12596)

(assert (=> b!7007828 (= lt!2501933 (getWitness!1236 lt!2501942 lambda!407545))))

(declare-datatypes ((List!67453 0))(
  ( (Nil!67329) (Cons!67329 (h!73777 Context!12596) (t!381208 List!67453)) )
))
(declare-fun lt!2501947 () List!67453)

(declare-fun exists!3138 (List!67453 Int) Bool)

(assert (=> b!7007828 (exists!3138 lt!2501947 lambda!407545)))

(declare-fun lt!2501950 () Unit!161282)

(declare-fun lemmaZipperMatchesExistsMatchingContext!271 (List!67453 List!67451) Unit!161282)

(assert (=> b!7007828 (= lt!2501950 (lemmaZipperMatchesExistsMatchingContext!271 lt!2501947 s!7408))))

(declare-fun toList!10662 ((Set Context!12596)) List!67453)

(assert (=> b!7007828 (= lt!2501947 (toList!10662 lt!2501942))))

(declare-fun b!7007829 () Bool)

(declare-fun tp!1931991 () Bool)

(assert (=> b!7007829 (= e!4212362 tp!1931991)))

(declare-fun b!7007830 () Bool)

(declare-fun res!2859273 () Bool)

(assert (=> b!7007830 (=> res!2859273 e!4212353)))

(assert (=> b!7007830 (= res!2859273 (not (is-Cons!67328 (exprs!6798 lt!2501932))))))

(declare-fun b!7007831 () Bool)

(declare-fun e!4212355 () Bool)

(assert (=> b!7007831 (= e!4212355 e!4212363)))

(declare-fun res!2859268 () Bool)

(assert (=> b!7007831 (=> res!2859268 e!4212363)))

(assert (=> b!7007831 (= res!2859268 (not (= lt!2501939 lt!2501953)))))

(assert (=> b!7007831 (= lt!2501939 (set.insert lt!2501931 (as set.empty (Set Context!12596))))))

(declare-fun lt!2501945 () Unit!161282)

(assert (=> b!7007831 (= lt!2501945 (lemmaConcatPreservesForall!638 (exprs!6798 lt!2501932) (exprs!6798 ct2!306) lambda!407547))))

(declare-fun b!7007832 () Bool)

(assert (=> b!7007832 (= e!4212358 (not (matchZipper!2842 lt!2501928 (t!381206 s!7408))))))

(declare-fun lt!2501929 () Unit!161282)

(assert (=> b!7007832 (= lt!2501929 (lemmaConcatPreservesForall!638 lt!2501943 (exprs!6798 ct2!306) lambda!407547))))

(declare-fun setIsEmpty!48278 () Bool)

(assert (=> setIsEmpty!48278 setRes!48278))

(declare-fun b!7007833 () Bool)

(declare-fun tp_is_empty!43829 () Bool)

(declare-fun tp!1931993 () Bool)

(assert (=> b!7007833 (= e!4212356 (and tp_is_empty!43829 tp!1931993))))

(declare-fun tp!1931992 () Bool)

(declare-fun setElem!48278 () Context!12596)

(declare-fun setNonEmpty!48278 () Bool)

(assert (=> setNonEmpty!48278 (= setRes!48278 (and tp!1931992 (inv!86115 setElem!48278) e!4212361))))

(declare-fun setRest!48278 () (Set Context!12596))

(assert (=> setNonEmpty!48278 (= z1!570 (set.union (set.insert setElem!48278 (as set.empty (Set Context!12596))) setRest!48278))))

(assert (=> b!7007834 (= e!4212359 e!4212355)))

(declare-fun res!2859262 () Bool)

(assert (=> b!7007834 (=> res!2859262 e!4212355)))

(assert (=> b!7007834 (= res!2859262 (or (not (= lt!2501931 lt!2501933)) (not (set.member lt!2501932 z1!570))))))

(assert (=> b!7007834 (= lt!2501931 (Context!12597 (++!15293 (exprs!6798 lt!2501932) (exprs!6798 ct2!306))))))

(declare-fun lt!2501937 () Unit!161282)

(assert (=> b!7007834 (= lt!2501937 (lemmaConcatPreservesForall!638 (exprs!6798 lt!2501932) (exprs!6798 ct2!306) lambda!407547))))

(declare-fun lambda!407546 () Int)

(declare-fun mapPost2!157 ((Set Context!12596) Int Context!12596) Context!12596)

(assert (=> b!7007834 (= lt!2501932 (mapPost2!157 z1!570 lambda!407546 lt!2501933))))

(assert (= (and start!674730 res!2859265) b!7007815))

(assert (= (and b!7007815 res!2859266) b!7007828))

(assert (= (and b!7007828 (not res!2859269)) b!7007820))

(assert (= (and b!7007820 (not res!2859270)) b!7007834))

(assert (= (and b!7007834 (not res!2859262)) b!7007831))

(assert (= (and b!7007831 (not res!2859268)) b!7007824))

(assert (= (and b!7007824 (not res!2859261)) b!7007830))

(assert (= (and b!7007830 (not res!2859273)) b!7007826))

(assert (= (and b!7007826 (not res!2859267)) b!7007825))

(assert (= (and b!7007825 (not res!2859275)) b!7007819))

(assert (= (and b!7007819 (not res!2859264)) b!7007823))

(assert (= (and b!7007823 (not res!2859271)) b!7007816))

(assert (= (and b!7007823 res!2859259) b!7007832))

(assert (= (and b!7007823 (not res!2859260)) b!7007817))

(assert (= (and b!7007817 (not res!2859274)) b!7007821))

(assert (= (and b!7007821 (not res!2859272)) b!7007827))

(assert (= (and b!7007827 (not res!2859263)) b!7007818))

(assert (= (and start!674730 condSetEmpty!48278) setIsEmpty!48278))

(assert (= (and start!674730 (not condSetEmpty!48278)) setNonEmpty!48278))

(assert (= setNonEmpty!48278 b!7007822))

(assert (= start!674730 b!7007829))

(assert (= (and start!674730 (is-Cons!67327 s!7408)) b!7007833))

(declare-fun m!7705016 () Bool)

(assert (=> b!7007834 m!7705016))

(declare-fun m!7705018 () Bool)

(assert (=> b!7007834 m!7705018))

(declare-fun m!7705020 () Bool)

(assert (=> b!7007834 m!7705020))

(declare-fun m!7705022 () Bool)

(assert (=> b!7007834 m!7705022))

(declare-fun m!7705024 () Bool)

(assert (=> b!7007823 m!7705024))

(declare-fun m!7705026 () Bool)

(assert (=> b!7007823 m!7705026))

(declare-fun m!7705028 () Bool)

(assert (=> b!7007823 m!7705028))

(declare-fun m!7705030 () Bool)

(assert (=> b!7007823 m!7705030))

(declare-fun m!7705032 () Bool)

(assert (=> b!7007823 m!7705032))

(assert (=> b!7007823 m!7705026))

(assert (=> b!7007823 m!7705026))

(declare-fun m!7705034 () Bool)

(assert (=> b!7007820 m!7705034))

(declare-fun m!7705036 () Bool)

(assert (=> b!7007824 m!7705036))

(declare-fun m!7705038 () Bool)

(assert (=> b!7007824 m!7705038))

(assert (=> b!7007824 m!7705020))

(declare-fun m!7705040 () Bool)

(assert (=> b!7007824 m!7705040))

(declare-fun m!7705042 () Bool)

(assert (=> b!7007824 m!7705042))

(declare-fun m!7705044 () Bool)

(assert (=> b!7007826 m!7705044))

(declare-fun m!7705046 () Bool)

(assert (=> b!7007832 m!7705046))

(assert (=> b!7007832 m!7705026))

(declare-fun m!7705048 () Bool)

(assert (=> setNonEmpty!48278 m!7705048))

(declare-fun m!7705050 () Bool)

(assert (=> b!7007825 m!7705050))

(declare-fun m!7705052 () Bool)

(assert (=> b!7007825 m!7705052))

(declare-fun m!7705054 () Bool)

(assert (=> b!7007831 m!7705054))

(assert (=> b!7007831 m!7705020))

(assert (=> b!7007821 m!7705046))

(assert (=> b!7007821 m!7705026))

(assert (=> b!7007827 m!7705026))

(assert (=> b!7007827 m!7705026))

(declare-fun m!7705056 () Bool)

(assert (=> b!7007828 m!7705056))

(declare-fun m!7705058 () Bool)

(assert (=> b!7007828 m!7705058))

(declare-fun m!7705060 () Bool)

(assert (=> b!7007828 m!7705060))

(declare-fun m!7705062 () Bool)

(assert (=> b!7007828 m!7705062))

(declare-fun m!7705064 () Bool)

(assert (=> b!7007828 m!7705064))

(declare-fun m!7705066 () Bool)

(assert (=> b!7007828 m!7705066))

(assert (=> b!7007819 m!7705026))

(declare-fun m!7705068 () Bool)

(assert (=> b!7007819 m!7705068))

(declare-fun m!7705070 () Bool)

(assert (=> b!7007819 m!7705070))

(assert (=> b!7007819 m!7705026))

(declare-fun m!7705072 () Bool)

(assert (=> b!7007819 m!7705072))

(declare-fun m!7705074 () Bool)

(assert (=> b!7007818 m!7705074))

(assert (=> b!7007818 m!7705026))

(declare-fun m!7705076 () Bool)

(assert (=> b!7007818 m!7705076))

(assert (=> b!7007818 m!7705076))

(declare-fun m!7705078 () Bool)

(assert (=> b!7007818 m!7705078))

(declare-fun m!7705080 () Bool)

(assert (=> b!7007818 m!7705080))

(declare-fun m!7705082 () Bool)

(assert (=> start!674730 m!7705082))

(declare-fun m!7705084 () Bool)

(assert (=> start!674730 m!7705084))

(declare-fun m!7705086 () Bool)

(assert (=> start!674730 m!7705086))

(assert (=> b!7007816 m!7705046))

(push 1)

(assert (not setNonEmpty!48278))

(assert (not b!7007826))

(assert (not b!7007827))

(assert (not b!7007822))

(assert (not b!7007828))

(assert (not b!7007823))

(assert (not b!7007816))

(assert (not b!7007821))

(assert tp_is_empty!43829)

(assert (not start!674730))

(assert (not b!7007832))

(assert (not b!7007825))

(assert (not b!7007824))

(assert (not b!7007818))

(assert (not b!7007819))

(assert (not b!7007833))

(assert (not b!7007831))

(assert (not b!7007829))

(assert (not b!7007834))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2184591 () Bool)

(assert (=> d!2184591 (forall!16217 (++!15293 lt!2501943 (exprs!6798 ct2!306)) lambda!407547)))

(declare-fun lt!2502062 () Unit!161282)

(declare-fun choose!52633 (List!67452 List!67452 Int) Unit!161282)

(assert (=> d!2184591 (= lt!2502062 (choose!52633 lt!2501943 (exprs!6798 ct2!306) lambda!407547))))

(assert (=> d!2184591 (forall!16217 lt!2501943 lambda!407547)))

(assert (=> d!2184591 (= (lemmaConcatPreservesForall!638 lt!2501943 (exprs!6798 ct2!306) lambda!407547) lt!2502062)))

(declare-fun bs!1865792 () Bool)

(assert (= bs!1865792 d!2184591))

(assert (=> bs!1865792 m!7705070))

(assert (=> bs!1865792 m!7705070))

(declare-fun m!7705160 () Bool)

(assert (=> bs!1865792 m!7705160))

(declare-fun m!7705162 () Bool)

(assert (=> bs!1865792 m!7705162))

(assert (=> bs!1865792 m!7705074))

(assert (=> b!7007823 d!2184591))

(declare-fun d!2184593 () Bool)

(declare-fun c!1301544 () Bool)

(declare-fun isEmpty!39323 (List!67451) Bool)

(assert (=> d!2184593 (= c!1301544 (isEmpty!39323 (t!381206 s!7408)))))

(declare-fun e!4212415 () Bool)

(assert (=> d!2184593 (= (matchZipper!2842 lt!2501956 (t!381206 s!7408)) e!4212415)))

(declare-fun b!7007911 () Bool)

(declare-fun nullableZipper!2479 ((Set Context!12596)) Bool)

(assert (=> b!7007911 (= e!4212415 (nullableZipper!2479 lt!2501956))))

(declare-fun b!7007912 () Bool)

(declare-fun head!14165 (List!67451) C!34874)

(declare-fun tail!13370 (List!67451) List!67451)

(assert (=> b!7007912 (= e!4212415 (matchZipper!2842 (derivationStepZipper!2782 lt!2501956 (head!14165 (t!381206 s!7408))) (tail!13370 (t!381206 s!7408))))))

(assert (= (and d!2184593 c!1301544) b!7007911))

(assert (= (and d!2184593 (not c!1301544)) b!7007912))

(declare-fun m!7705164 () Bool)

(assert (=> d!2184593 m!7705164))

(declare-fun m!7705166 () Bool)

(assert (=> b!7007911 m!7705166))

(declare-fun m!7705168 () Bool)

(assert (=> b!7007912 m!7705168))

(assert (=> b!7007912 m!7705168))

(declare-fun m!7705170 () Bool)

(assert (=> b!7007912 m!7705170))

(declare-fun m!7705172 () Bool)

(assert (=> b!7007912 m!7705172))

(assert (=> b!7007912 m!7705170))

(assert (=> b!7007912 m!7705172))

(declare-fun m!7705174 () Bool)

(assert (=> b!7007912 m!7705174))

(assert (=> b!7007823 d!2184593))

(declare-fun d!2184595 () Bool)

(declare-fun c!1301545 () Bool)

(assert (=> d!2184595 (= c!1301545 (isEmpty!39323 (t!381206 s!7408)))))

(declare-fun e!4212416 () Bool)

(assert (=> d!2184595 (= (matchZipper!2842 lt!2501940 (t!381206 s!7408)) e!4212416)))

(declare-fun b!7007913 () Bool)

(assert (=> b!7007913 (= e!4212416 (nullableZipper!2479 lt!2501940))))

(declare-fun b!7007914 () Bool)

(assert (=> b!7007914 (= e!4212416 (matchZipper!2842 (derivationStepZipper!2782 lt!2501940 (head!14165 (t!381206 s!7408))) (tail!13370 (t!381206 s!7408))))))

(assert (= (and d!2184595 c!1301545) b!7007913))

(assert (= (and d!2184595 (not c!1301545)) b!7007914))

(assert (=> d!2184595 m!7705164))

(declare-fun m!7705176 () Bool)

(assert (=> b!7007913 m!7705176))

(assert (=> b!7007914 m!7705168))

(assert (=> b!7007914 m!7705168))

(declare-fun m!7705178 () Bool)

(assert (=> b!7007914 m!7705178))

(assert (=> b!7007914 m!7705172))

(assert (=> b!7007914 m!7705178))

(assert (=> b!7007914 m!7705172))

(declare-fun m!7705180 () Bool)

(assert (=> b!7007914 m!7705180))

(assert (=> b!7007823 d!2184595))

(declare-fun d!2184597 () Bool)

(declare-fun c!1301546 () Bool)

(assert (=> d!2184597 (= c!1301546 (isEmpty!39323 (t!381206 s!7408)))))

(declare-fun e!4212417 () Bool)

(assert (=> d!2184597 (= (matchZipper!2842 lt!2501948 (t!381206 s!7408)) e!4212417)))

(declare-fun b!7007915 () Bool)

(assert (=> b!7007915 (= e!4212417 (nullableZipper!2479 lt!2501948))))

(declare-fun b!7007916 () Bool)

(assert (=> b!7007916 (= e!4212417 (matchZipper!2842 (derivationStepZipper!2782 lt!2501948 (head!14165 (t!381206 s!7408))) (tail!13370 (t!381206 s!7408))))))

(assert (= (and d!2184597 c!1301546) b!7007915))

(assert (= (and d!2184597 (not c!1301546)) b!7007916))

(assert (=> d!2184597 m!7705164))

(declare-fun m!7705182 () Bool)

(assert (=> b!7007915 m!7705182))

(assert (=> b!7007916 m!7705168))

(assert (=> b!7007916 m!7705168))

(declare-fun m!7705184 () Bool)

(assert (=> b!7007916 m!7705184))

(assert (=> b!7007916 m!7705172))

(assert (=> b!7007916 m!7705184))

(assert (=> b!7007916 m!7705172))

(declare-fun m!7705186 () Bool)

(assert (=> b!7007916 m!7705186))

(assert (=> b!7007823 d!2184597))

(declare-fun d!2184599 () Bool)

(declare-fun e!4212420 () Bool)

(assert (=> d!2184599 (= (matchZipper!2842 (set.union lt!2501940 lt!2501928) (t!381206 s!7408)) e!4212420)))

(declare-fun res!2859330 () Bool)

(assert (=> d!2184599 (=> res!2859330 e!4212420)))

(assert (=> d!2184599 (= res!2859330 (matchZipper!2842 lt!2501940 (t!381206 s!7408)))))

(declare-fun lt!2502065 () Unit!161282)

(declare-fun choose!52634 ((Set Context!12596) (Set Context!12596) List!67451) Unit!161282)

(assert (=> d!2184599 (= lt!2502065 (choose!52634 lt!2501940 lt!2501928 (t!381206 s!7408)))))

(assert (=> d!2184599 (= (lemmaZipperConcatMatchesSameAsBothZippers!1475 lt!2501940 lt!2501928 (t!381206 s!7408)) lt!2502065)))

(declare-fun b!7007919 () Bool)

(assert (=> b!7007919 (= e!4212420 (matchZipper!2842 lt!2501928 (t!381206 s!7408)))))

(assert (= (and d!2184599 (not res!2859330)) b!7007919))

(declare-fun m!7705188 () Bool)

(assert (=> d!2184599 m!7705188))

(assert (=> d!2184599 m!7705032))

(declare-fun m!7705190 () Bool)

(assert (=> d!2184599 m!7705190))

(assert (=> b!7007919 m!7705046))

(assert (=> b!7007823 d!2184599))

(declare-fun d!2184601 () Bool)

(declare-fun c!1301547 () Bool)

(assert (=> d!2184601 (= c!1301547 (isEmpty!39323 (t!381206 s!7408)))))

(declare-fun e!4212421 () Bool)

(assert (=> d!2184601 (= (matchZipper!2842 lt!2501928 (t!381206 s!7408)) e!4212421)))

(declare-fun b!7007920 () Bool)

(assert (=> b!7007920 (= e!4212421 (nullableZipper!2479 lt!2501928))))

(declare-fun b!7007921 () Bool)

(assert (=> b!7007921 (= e!4212421 (matchZipper!2842 (derivationStepZipper!2782 lt!2501928 (head!14165 (t!381206 s!7408))) (tail!13370 (t!381206 s!7408))))))

(assert (= (and d!2184601 c!1301547) b!7007920))

(assert (= (and d!2184601 (not c!1301547)) b!7007921))

(assert (=> d!2184601 m!7705164))

(declare-fun m!7705192 () Bool)

(assert (=> b!7007920 m!7705192))

(assert (=> b!7007921 m!7705168))

(assert (=> b!7007921 m!7705168))

(declare-fun m!7705194 () Bool)

(assert (=> b!7007921 m!7705194))

(assert (=> b!7007921 m!7705172))

(assert (=> b!7007921 m!7705194))

(assert (=> b!7007921 m!7705172))

(declare-fun m!7705196 () Bool)

(assert (=> b!7007921 m!7705196))

(assert (=> b!7007832 d!2184601))

(assert (=> b!7007832 d!2184591))

(assert (=> b!7007821 d!2184601))

(assert (=> b!7007821 d!2184591))

(declare-fun d!2184603 () Bool)

(assert (=> d!2184603 (forall!16217 (++!15293 (exprs!6798 lt!2501932) (exprs!6798 ct2!306)) lambda!407547)))

(declare-fun lt!2502066 () Unit!161282)

(assert (=> d!2184603 (= lt!2502066 (choose!52633 (exprs!6798 lt!2501932) (exprs!6798 ct2!306) lambda!407547))))

(assert (=> d!2184603 (forall!16217 (exprs!6798 lt!2501932) lambda!407547)))

(assert (=> d!2184603 (= (lemmaConcatPreservesForall!638 (exprs!6798 lt!2501932) (exprs!6798 ct2!306) lambda!407547) lt!2502066)))

(declare-fun bs!1865793 () Bool)

(assert (= bs!1865793 d!2184603))

(assert (=> bs!1865793 m!7705018))

(assert (=> bs!1865793 m!7705018))

(declare-fun m!7705198 () Bool)

(assert (=> bs!1865793 m!7705198))

(declare-fun m!7705200 () Bool)

(assert (=> bs!1865793 m!7705200))

(declare-fun m!7705202 () Bool)

(assert (=> bs!1865793 m!7705202))

(assert (=> b!7007831 d!2184603))

(declare-fun d!2184605 () Bool)

(declare-fun c!1301548 () Bool)

(assert (=> d!2184605 (= c!1301548 (isEmpty!39323 s!7408))))

(declare-fun e!4212422 () Bool)

(assert (=> d!2184605 (= (matchZipper!2842 lt!2501942 s!7408) e!4212422)))

(declare-fun b!7007922 () Bool)

(assert (=> b!7007922 (= e!4212422 (nullableZipper!2479 lt!2501942))))

(declare-fun b!7007923 () Bool)

(assert (=> b!7007923 (= e!4212422 (matchZipper!2842 (derivationStepZipper!2782 lt!2501942 (head!14165 s!7408)) (tail!13370 s!7408)))))

(assert (= (and d!2184605 c!1301548) b!7007922))

(assert (= (and d!2184605 (not c!1301548)) b!7007923))

(declare-fun m!7705204 () Bool)

(assert (=> d!2184605 m!7705204))

(declare-fun m!7705206 () Bool)

(assert (=> b!7007922 m!7705206))

(declare-fun m!7705208 () Bool)

(assert (=> b!7007923 m!7705208))

(assert (=> b!7007923 m!7705208))

(declare-fun m!7705210 () Bool)

(assert (=> b!7007923 m!7705210))

(declare-fun m!7705212 () Bool)

(assert (=> b!7007923 m!7705212))

(assert (=> b!7007923 m!7705210))

(assert (=> b!7007923 m!7705212))

(declare-fun m!7705214 () Bool)

(assert (=> b!7007923 m!7705214))

(assert (=> start!674730 d!2184605))

(declare-fun bs!1865794 () Bool)

(declare-fun d!2184607 () Bool)

(assert (= bs!1865794 (and d!2184607 b!7007834)))

(declare-fun lambda!407595 () Int)

(assert (=> bs!1865794 (= lambda!407595 lambda!407546)))

(assert (=> d!2184607 true))

(declare-fun map!15595 ((Set Context!12596) Int) (Set Context!12596))

(assert (=> d!2184607 (= (appendTo!423 z1!570 ct2!306) (map!15595 z1!570 lambda!407595))))

(declare-fun bs!1865795 () Bool)

(assert (= bs!1865795 d!2184607))

(declare-fun m!7705216 () Bool)

(assert (=> bs!1865795 m!7705216))

(assert (=> start!674730 d!2184607))

(declare-fun bs!1865796 () Bool)

(declare-fun d!2184609 () Bool)

(assert (= bs!1865796 (and d!2184609 b!7007834)))

(declare-fun lambda!407598 () Int)

(assert (=> bs!1865796 (= lambda!407598 lambda!407547)))

(assert (=> d!2184609 (= (inv!86115 ct2!306) (forall!16217 (exprs!6798 ct2!306) lambda!407598))))

(declare-fun bs!1865797 () Bool)

(assert (= bs!1865797 d!2184609))

(declare-fun m!7705218 () Bool)

(assert (=> bs!1865797 m!7705218))

(assert (=> start!674730 d!2184609))

(declare-fun c!1301561 () Bool)

(declare-fun call!636430 () List!67452)

(declare-fun bm!636421 () Bool)

(declare-fun c!1301560 () Bool)

(declare-fun c!1301564 () Bool)

(declare-fun call!636429 () (Set Context!12596))

(assert (=> bm!636421 (= call!636429 (derivationStepZipperDown!2020 (ite c!1301561 (regOne!35117 (h!73776 (exprs!6798 lt!2501932))) (ite c!1301560 (regTwo!35116 (h!73776 (exprs!6798 lt!2501932))) (ite c!1301564 (regOne!35116 (h!73776 (exprs!6798 lt!2501932))) (reg!17631 (h!73776 (exprs!6798 lt!2501932)))))) (ite (or c!1301561 c!1301560) lt!2501941 (Context!12597 call!636430)) (h!73775 s!7408)))))

(declare-fun bm!636422 () Bool)

(declare-fun call!636428 () (Set Context!12596))

(declare-fun call!636431 () (Set Context!12596))

(assert (=> bm!636422 (= call!636428 call!636431)))

(declare-fun b!7007946 () Bool)

(declare-fun e!4212437 () (Set Context!12596))

(assert (=> b!7007946 (= e!4212437 (as set.empty (Set Context!12596)))))

(declare-fun bm!636423 () Bool)

(declare-fun call!636426 () List!67452)

(declare-fun $colon$colon!2521 (List!67452 Regex!17302) List!67452)

(assert (=> bm!636423 (= call!636426 ($colon$colon!2521 (exprs!6798 lt!2501941) (ite (or c!1301560 c!1301564) (regTwo!35116 (h!73776 (exprs!6798 lt!2501932))) (h!73776 (exprs!6798 lt!2501932)))))))

(declare-fun b!7007947 () Bool)

(declare-fun e!4212435 () Bool)

(assert (=> b!7007947 (= e!4212435 (nullable!7062 (regOne!35116 (h!73776 (exprs!6798 lt!2501932)))))))

(declare-fun d!2184611 () Bool)

(declare-fun c!1301562 () Bool)

(assert (=> d!2184611 (= c!1301562 (and (is-ElementMatch!17302 (h!73776 (exprs!6798 lt!2501932))) (= (c!1301532 (h!73776 (exprs!6798 lt!2501932))) (h!73775 s!7408))))))

(declare-fun e!4212438 () (Set Context!12596))

(assert (=> d!2184611 (= (derivationStepZipperDown!2020 (h!73776 (exprs!6798 lt!2501932)) lt!2501941 (h!73775 s!7408)) e!4212438)))

(declare-fun bm!636424 () Bool)

(assert (=> bm!636424 (= call!636430 call!636426)))

(declare-fun b!7007948 () Bool)

(declare-fun e!4212436 () (Set Context!12596))

(declare-fun e!4212440 () (Set Context!12596))

(assert (=> b!7007948 (= e!4212436 e!4212440)))

(assert (=> b!7007948 (= c!1301564 (is-Concat!26147 (h!73776 (exprs!6798 lt!2501932))))))

(declare-fun bm!636425 () Bool)

(assert (=> bm!636425 (= call!636431 call!636429)))

(declare-fun b!7007949 () Bool)

(assert (=> b!7007949 (= c!1301560 e!4212435)))

(declare-fun res!2859333 () Bool)

(assert (=> b!7007949 (=> (not res!2859333) (not e!4212435))))

(assert (=> b!7007949 (= res!2859333 (is-Concat!26147 (h!73776 (exprs!6798 lt!2501932))))))

(declare-fun e!4212439 () (Set Context!12596))

(assert (=> b!7007949 (= e!4212439 e!4212436)))

(declare-fun b!7007950 () Bool)

(assert (=> b!7007950 (= e!4212438 e!4212439)))

(assert (=> b!7007950 (= c!1301561 (is-Union!17302 (h!73776 (exprs!6798 lt!2501932))))))

(declare-fun b!7007951 () Bool)

(assert (=> b!7007951 (= e!4212438 (set.insert lt!2501941 (as set.empty (Set Context!12596))))))

(declare-fun b!7007952 () Bool)

(assert (=> b!7007952 (= e!4212437 call!636428)))

(declare-fun b!7007953 () Bool)

(declare-fun c!1301563 () Bool)

(assert (=> b!7007953 (= c!1301563 (is-Star!17302 (h!73776 (exprs!6798 lt!2501932))))))

(assert (=> b!7007953 (= e!4212440 e!4212437)))

(declare-fun b!7007954 () Bool)

(declare-fun call!636427 () (Set Context!12596))

(assert (=> b!7007954 (= e!4212439 (set.union call!636429 call!636427))))

(declare-fun b!7007955 () Bool)

(assert (=> b!7007955 (= e!4212440 call!636428)))

(declare-fun bm!636426 () Bool)

(assert (=> bm!636426 (= call!636427 (derivationStepZipperDown!2020 (ite c!1301561 (regTwo!35117 (h!73776 (exprs!6798 lt!2501932))) (regOne!35116 (h!73776 (exprs!6798 lt!2501932)))) (ite c!1301561 lt!2501941 (Context!12597 call!636426)) (h!73775 s!7408)))))

(declare-fun b!7007956 () Bool)

(assert (=> b!7007956 (= e!4212436 (set.union call!636427 call!636431))))

(assert (= (and d!2184611 c!1301562) b!7007951))

(assert (= (and d!2184611 (not c!1301562)) b!7007950))

(assert (= (and b!7007950 c!1301561) b!7007954))

(assert (= (and b!7007950 (not c!1301561)) b!7007949))

(assert (= (and b!7007949 res!2859333) b!7007947))

(assert (= (and b!7007949 c!1301560) b!7007956))

(assert (= (and b!7007949 (not c!1301560)) b!7007948))

(assert (= (and b!7007948 c!1301564) b!7007955))

(assert (= (and b!7007948 (not c!1301564)) b!7007953))

(assert (= (and b!7007953 c!1301563) b!7007952))

(assert (= (and b!7007953 (not c!1301563)) b!7007946))

(assert (= (or b!7007955 b!7007952) bm!636424))

(assert (= (or b!7007955 b!7007952) bm!636422))

(assert (= (or b!7007956 bm!636422) bm!636425))

(assert (= (or b!7007956 bm!636424) bm!636423))

(assert (= (or b!7007954 bm!636425) bm!636421))

(assert (= (or b!7007954 b!7007956) bm!636426))

(declare-fun m!7705220 () Bool)

(assert (=> b!7007951 m!7705220))

(declare-fun m!7705222 () Bool)

(assert (=> bm!636423 m!7705222))

(declare-fun m!7705224 () Bool)

(assert (=> b!7007947 m!7705224))

(declare-fun m!7705226 () Bool)

(assert (=> bm!636421 m!7705226))

(declare-fun m!7705228 () Bool)

(assert (=> bm!636426 m!7705228))

(assert (=> b!7007819 d!2184611))

(assert (=> b!7007819 d!2184591))

(declare-fun b!7007967 () Bool)

(declare-fun e!4212449 () (Set Context!12596))

(declare-fun e!4212447 () (Set Context!12596))

(assert (=> b!7007967 (= e!4212449 e!4212447)))

(declare-fun c!1301570 () Bool)

(assert (=> b!7007967 (= c!1301570 (is-Cons!67328 (exprs!6798 lt!2501941)))))

(declare-fun b!7007968 () Bool)

(declare-fun e!4212448 () Bool)

(assert (=> b!7007968 (= e!4212448 (nullable!7062 (h!73776 (exprs!6798 lt!2501941))))))

(declare-fun d!2184613 () Bool)

(declare-fun c!1301569 () Bool)

(assert (=> d!2184613 (= c!1301569 e!4212448)))

(declare-fun res!2859336 () Bool)

(assert (=> d!2184613 (=> (not res!2859336) (not e!4212448))))

(assert (=> d!2184613 (= res!2859336 (is-Cons!67328 (exprs!6798 lt!2501941)))))

(assert (=> d!2184613 (= (derivationStepZipperUp!1952 lt!2501941 (h!73775 s!7408)) e!4212449)))

(declare-fun call!636434 () (Set Context!12596))

(declare-fun b!7007969 () Bool)

(assert (=> b!7007969 (= e!4212449 (set.union call!636434 (derivationStepZipperUp!1952 (Context!12597 (t!381207 (exprs!6798 lt!2501941))) (h!73775 s!7408))))))

(declare-fun b!7007970 () Bool)

(assert (=> b!7007970 (= e!4212447 (as set.empty (Set Context!12596)))))

(declare-fun bm!636429 () Bool)

(assert (=> bm!636429 (= call!636434 (derivationStepZipperDown!2020 (h!73776 (exprs!6798 lt!2501941)) (Context!12597 (t!381207 (exprs!6798 lt!2501941))) (h!73775 s!7408)))))

(declare-fun b!7007971 () Bool)

(assert (=> b!7007971 (= e!4212447 call!636434)))

(assert (= (and d!2184613 res!2859336) b!7007968))

(assert (= (and d!2184613 c!1301569) b!7007969))

(assert (= (and d!2184613 (not c!1301569)) b!7007967))

(assert (= (and b!7007967 c!1301570) b!7007971))

(assert (= (and b!7007967 (not c!1301570)) b!7007970))

(assert (= (or b!7007969 b!7007971) bm!636429))

(declare-fun m!7705230 () Bool)

(assert (=> b!7007968 m!7705230))

(declare-fun m!7705232 () Bool)

(assert (=> b!7007969 m!7705232))

(declare-fun m!7705234 () Bool)

(assert (=> bm!636429 m!7705234))

(assert (=> b!7007819 d!2184613))

(declare-fun b!7007983 () Bool)

(declare-fun lt!2502071 () List!67452)

(declare-fun e!4212455 () Bool)

(assert (=> b!7007983 (= e!4212455 (or (not (= (exprs!6798 ct2!306) Nil!67328)) (= lt!2502071 lt!2501943)))))

(declare-fun b!7007980 () Bool)

(declare-fun e!4212454 () List!67452)

(assert (=> b!7007980 (= e!4212454 (exprs!6798 ct2!306))))

(declare-fun d!2184615 () Bool)

(assert (=> d!2184615 e!4212455))

(declare-fun res!2859342 () Bool)

(assert (=> d!2184615 (=> (not res!2859342) (not e!4212455))))

(declare-fun content!13355 (List!67452) (Set Regex!17302))

(assert (=> d!2184615 (= res!2859342 (= (content!13355 lt!2502071) (set.union (content!13355 lt!2501943) (content!13355 (exprs!6798 ct2!306)))))))

(assert (=> d!2184615 (= lt!2502071 e!4212454)))

(declare-fun c!1301573 () Bool)

(assert (=> d!2184615 (= c!1301573 (is-Nil!67328 lt!2501943))))

(assert (=> d!2184615 (= (++!15293 lt!2501943 (exprs!6798 ct2!306)) lt!2502071)))

(declare-fun b!7007982 () Bool)

(declare-fun res!2859341 () Bool)

(assert (=> b!7007982 (=> (not res!2859341) (not e!4212455))))

(declare-fun size!40963 (List!67452) Int)

(assert (=> b!7007982 (= res!2859341 (= (size!40963 lt!2502071) (+ (size!40963 lt!2501943) (size!40963 (exprs!6798 ct2!306)))))))

(declare-fun b!7007981 () Bool)

(assert (=> b!7007981 (= e!4212454 (Cons!67328 (h!73776 lt!2501943) (++!15293 (t!381207 lt!2501943) (exprs!6798 ct2!306))))))

(assert (= (and d!2184615 c!1301573) b!7007980))

(assert (= (and d!2184615 (not c!1301573)) b!7007981))

(assert (= (and d!2184615 res!2859342) b!7007982))

(assert (= (and b!7007982 res!2859341) b!7007983))

(declare-fun m!7705236 () Bool)

(assert (=> d!2184615 m!7705236))

(declare-fun m!7705238 () Bool)

(assert (=> d!2184615 m!7705238))

(declare-fun m!7705240 () Bool)

(assert (=> d!2184615 m!7705240))

(declare-fun m!7705242 () Bool)

(assert (=> b!7007982 m!7705242))

(declare-fun m!7705244 () Bool)

(assert (=> b!7007982 m!7705244))

(declare-fun m!7705246 () Bool)

(assert (=> b!7007982 m!7705246))

(declare-fun m!7705248 () Bool)

(assert (=> b!7007981 m!7705248))

(assert (=> b!7007819 d!2184615))

(assert (=> b!7007818 d!2184591))

(declare-fun call!636438 () (Set Context!12596))

(declare-fun call!636439 () List!67452)

(declare-fun c!1301574 () Bool)

(declare-fun c!1301578 () Bool)

(declare-fun bm!636430 () Bool)

(declare-fun c!1301575 () Bool)

(assert (=> bm!636430 (= call!636438 (derivationStepZipperDown!2020 (ite c!1301575 (regOne!35117 (h!73776 (exprs!6798 lt!2501932))) (ite c!1301574 (regTwo!35116 (h!73776 (exprs!6798 lt!2501932))) (ite c!1301578 (regOne!35116 (h!73776 (exprs!6798 lt!2501932))) (reg!17631 (h!73776 (exprs!6798 lt!2501932)))))) (ite (or c!1301575 c!1301574) lt!2501946 (Context!12597 call!636439)) (h!73775 s!7408)))))

(declare-fun bm!636431 () Bool)

(declare-fun call!636437 () (Set Context!12596))

(declare-fun call!636440 () (Set Context!12596))

(assert (=> bm!636431 (= call!636437 call!636440)))

(declare-fun b!7007984 () Bool)

(declare-fun e!4212458 () (Set Context!12596))

(assert (=> b!7007984 (= e!4212458 (as set.empty (Set Context!12596)))))

(declare-fun bm!636432 () Bool)

(declare-fun call!636435 () List!67452)

(assert (=> bm!636432 (= call!636435 ($colon$colon!2521 (exprs!6798 lt!2501946) (ite (or c!1301574 c!1301578) (regTwo!35116 (h!73776 (exprs!6798 lt!2501932))) (h!73776 (exprs!6798 lt!2501932)))))))

(declare-fun b!7007985 () Bool)

(declare-fun e!4212456 () Bool)

(assert (=> b!7007985 (= e!4212456 (nullable!7062 (regOne!35116 (h!73776 (exprs!6798 lt!2501932)))))))

(declare-fun d!2184617 () Bool)

(declare-fun c!1301576 () Bool)

(assert (=> d!2184617 (= c!1301576 (and (is-ElementMatch!17302 (h!73776 (exprs!6798 lt!2501932))) (= (c!1301532 (h!73776 (exprs!6798 lt!2501932))) (h!73775 s!7408))))))

(declare-fun e!4212459 () (Set Context!12596))

(assert (=> d!2184617 (= (derivationStepZipperDown!2020 (h!73776 (exprs!6798 lt!2501932)) lt!2501946 (h!73775 s!7408)) e!4212459)))

(declare-fun bm!636433 () Bool)

(assert (=> bm!636433 (= call!636439 call!636435)))

(declare-fun b!7007986 () Bool)

(declare-fun e!4212457 () (Set Context!12596))

(declare-fun e!4212461 () (Set Context!12596))

(assert (=> b!7007986 (= e!4212457 e!4212461)))

(assert (=> b!7007986 (= c!1301578 (is-Concat!26147 (h!73776 (exprs!6798 lt!2501932))))))

(declare-fun bm!636434 () Bool)

(assert (=> bm!636434 (= call!636440 call!636438)))

(declare-fun b!7007987 () Bool)

(assert (=> b!7007987 (= c!1301574 e!4212456)))

(declare-fun res!2859343 () Bool)

(assert (=> b!7007987 (=> (not res!2859343) (not e!4212456))))

(assert (=> b!7007987 (= res!2859343 (is-Concat!26147 (h!73776 (exprs!6798 lt!2501932))))))

(declare-fun e!4212460 () (Set Context!12596))

(assert (=> b!7007987 (= e!4212460 e!4212457)))

(declare-fun b!7007988 () Bool)

(assert (=> b!7007988 (= e!4212459 e!4212460)))

(assert (=> b!7007988 (= c!1301575 (is-Union!17302 (h!73776 (exprs!6798 lt!2501932))))))

(declare-fun b!7007989 () Bool)

(assert (=> b!7007989 (= e!4212459 (set.insert lt!2501946 (as set.empty (Set Context!12596))))))

(declare-fun b!7007990 () Bool)

(assert (=> b!7007990 (= e!4212458 call!636437)))

(declare-fun b!7007991 () Bool)

(declare-fun c!1301577 () Bool)

(assert (=> b!7007991 (= c!1301577 (is-Star!17302 (h!73776 (exprs!6798 lt!2501932))))))

(assert (=> b!7007991 (= e!4212461 e!4212458)))

(declare-fun b!7007992 () Bool)

(declare-fun call!636436 () (Set Context!12596))

(assert (=> b!7007992 (= e!4212460 (set.union call!636438 call!636436))))

(declare-fun b!7007993 () Bool)

(assert (=> b!7007993 (= e!4212461 call!636437)))

(declare-fun bm!636435 () Bool)

(assert (=> bm!636435 (= call!636436 (derivationStepZipperDown!2020 (ite c!1301575 (regTwo!35117 (h!73776 (exprs!6798 lt!2501932))) (regOne!35116 (h!73776 (exprs!6798 lt!2501932)))) (ite c!1301575 lt!2501946 (Context!12597 call!636435)) (h!73775 s!7408)))))

(declare-fun b!7007994 () Bool)

(assert (=> b!7007994 (= e!4212457 (set.union call!636436 call!636440))))

(assert (= (and d!2184617 c!1301576) b!7007989))

(assert (= (and d!2184617 (not c!1301576)) b!7007988))

(assert (= (and b!7007988 c!1301575) b!7007992))

(assert (= (and b!7007988 (not c!1301575)) b!7007987))

(assert (= (and b!7007987 res!2859343) b!7007985))

(assert (= (and b!7007987 c!1301574) b!7007994))

(assert (= (and b!7007987 (not c!1301574)) b!7007986))

(assert (= (and b!7007986 c!1301578) b!7007993))

(assert (= (and b!7007986 (not c!1301578)) b!7007991))

(assert (= (and b!7007991 c!1301577) b!7007990))

(assert (= (and b!7007991 (not c!1301577)) b!7007984))

(assert (= (or b!7007993 b!7007990) bm!636433))

(assert (= (or b!7007993 b!7007990) bm!636431))

(assert (= (or b!7007994 bm!636431) bm!636434))

(assert (= (or b!7007994 bm!636433) bm!636432))

(assert (= (or b!7007992 bm!636434) bm!636430))

(assert (= (or b!7007992 b!7007994) bm!636435))

(declare-fun m!7705250 () Bool)

(assert (=> b!7007989 m!7705250))

(declare-fun m!7705252 () Bool)

(assert (=> bm!636432 m!7705252))

(assert (=> b!7007985 m!7705224))

(declare-fun m!7705254 () Bool)

(assert (=> bm!636430 m!7705254))

(declare-fun m!7705256 () Bool)

(assert (=> bm!636435 m!7705256))

(assert (=> b!7007818 d!2184617))

(declare-fun bs!1865798 () Bool)

(declare-fun d!2184619 () Bool)

(assert (= bs!1865798 (and d!2184619 b!7007834)))

(declare-fun lambda!407601 () Int)

(assert (=> bs!1865798 (= lambda!407601 lambda!407547)))

(declare-fun bs!1865799 () Bool)

(assert (= bs!1865799 (and d!2184619 d!2184609)))

(assert (=> bs!1865799 (= lambda!407601 lambda!407598)))

(assert (=> d!2184619 (= (derivationStepZipperDown!2020 (h!73776 (exprs!6798 lt!2501932)) (Context!12597 (++!15293 (exprs!6798 lt!2501946) (exprs!6798 ct2!306))) (h!73775 s!7408)) (appendTo!423 (derivationStepZipperDown!2020 (h!73776 (exprs!6798 lt!2501932)) lt!2501946 (h!73775 s!7408)) ct2!306))))

(declare-fun lt!2502077 () Unit!161282)

(assert (=> d!2184619 (= lt!2502077 (lemmaConcatPreservesForall!638 (exprs!6798 lt!2501946) (exprs!6798 ct2!306) lambda!407601))))

(declare-fun lt!2502076 () Unit!161282)

(declare-fun choose!52635 (Context!12596 Regex!17302 C!34874 Context!12596) Unit!161282)

(assert (=> d!2184619 (= lt!2502076 (choose!52635 lt!2501946 (h!73776 (exprs!6798 lt!2501932)) (h!73775 s!7408) ct2!306))))

(declare-fun validRegex!8880 (Regex!17302) Bool)

(assert (=> d!2184619 (validRegex!8880 (h!73776 (exprs!6798 lt!2501932)))))

(assert (=> d!2184619 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!1 lt!2501946 (h!73776 (exprs!6798 lt!2501932)) (h!73775 s!7408) ct2!306) lt!2502076)))

(declare-fun bs!1865800 () Bool)

(assert (= bs!1865800 d!2184619))

(declare-fun m!7705258 () Bool)

(assert (=> bs!1865800 m!7705258))

(assert (=> bs!1865800 m!7705076))

(assert (=> bs!1865800 m!7705078))

(declare-fun m!7705260 () Bool)

(assert (=> bs!1865800 m!7705260))

(declare-fun m!7705262 () Bool)

(assert (=> bs!1865800 m!7705262))

(declare-fun m!7705264 () Bool)

(assert (=> bs!1865800 m!7705264))

(declare-fun m!7705266 () Bool)

(assert (=> bs!1865800 m!7705266))

(assert (=> bs!1865800 m!7705076))

(assert (=> b!7007818 d!2184619))

(declare-fun bs!1865801 () Bool)

(declare-fun d!2184621 () Bool)

(assert (= bs!1865801 (and d!2184621 b!7007834)))

(declare-fun lambda!407602 () Int)

(assert (=> bs!1865801 (= lambda!407602 lambda!407546)))

(declare-fun bs!1865802 () Bool)

(assert (= bs!1865802 (and d!2184621 d!2184607)))

(assert (=> bs!1865802 (= lambda!407602 lambda!407595)))

(assert (=> d!2184621 true))

(assert (=> d!2184621 (= (appendTo!423 (derivationStepZipperDown!2020 (h!73776 (exprs!6798 lt!2501932)) lt!2501946 (h!73775 s!7408)) ct2!306) (map!15595 (derivationStepZipperDown!2020 (h!73776 (exprs!6798 lt!2501932)) lt!2501946 (h!73775 s!7408)) lambda!407602))))

(declare-fun bs!1865803 () Bool)

(assert (= bs!1865803 d!2184621))

(assert (=> bs!1865803 m!7705076))

(declare-fun m!7705268 () Bool)

(assert (=> bs!1865803 m!7705268))

(assert (=> b!7007818 d!2184621))

(declare-fun d!2184623 () Bool)

(declare-fun res!2859348 () Bool)

(declare-fun e!4212466 () Bool)

(assert (=> d!2184623 (=> res!2859348 e!4212466)))

(assert (=> d!2184623 (= res!2859348 (is-Nil!67328 lt!2501943))))

(assert (=> d!2184623 (= (forall!16217 lt!2501943 lambda!407547) e!4212466)))

(declare-fun b!7007999 () Bool)

(declare-fun e!4212467 () Bool)

(assert (=> b!7007999 (= e!4212466 e!4212467)))

(declare-fun res!2859349 () Bool)

(assert (=> b!7007999 (=> (not res!2859349) (not e!4212467))))

(declare-fun dynLambda!27067 (Int Regex!17302) Bool)

(assert (=> b!7007999 (= res!2859349 (dynLambda!27067 lambda!407547 (h!73776 lt!2501943)))))

(declare-fun b!7008000 () Bool)

(assert (=> b!7008000 (= e!4212467 (forall!16217 (t!381207 lt!2501943) lambda!407547))))

(assert (= (and d!2184623 (not res!2859348)) b!7007999))

(assert (= (and b!7007999 res!2859349) b!7008000))

(declare-fun b_lambda!264215 () Bool)

(assert (=> (not b_lambda!264215) (not b!7007999)))

(declare-fun m!7705270 () Bool)

(assert (=> b!7007999 m!7705270))

(declare-fun m!7705272 () Bool)

(assert (=> b!7008000 m!7705272))

(assert (=> b!7007818 d!2184623))

(declare-fun d!2184625 () Bool)

(declare-fun e!4212470 () Bool)

(assert (=> d!2184625 e!4212470))

(declare-fun res!2859352 () Bool)

(assert (=> d!2184625 (=> (not res!2859352) (not e!4212470))))

(declare-fun lt!2502080 () List!67453)

(declare-fun noDuplicate!2558 (List!67453) Bool)

(assert (=> d!2184625 (= res!2859352 (noDuplicate!2558 lt!2502080))))

(declare-fun choose!52636 ((Set Context!12596)) List!67453)

(assert (=> d!2184625 (= lt!2502080 (choose!52636 lt!2501942))))

(assert (=> d!2184625 (= (toList!10662 lt!2501942) lt!2502080)))

(declare-fun b!7008003 () Bool)

(declare-fun content!13356 (List!67453) (Set Context!12596))

(assert (=> b!7008003 (= e!4212470 (= (content!13356 lt!2502080) lt!2501942))))

(assert (= (and d!2184625 res!2859352) b!7008003))

(declare-fun m!7705274 () Bool)

(assert (=> d!2184625 m!7705274))

(declare-fun m!7705276 () Bool)

(assert (=> d!2184625 m!7705276))

(declare-fun m!7705278 () Bool)

(assert (=> b!7008003 m!7705278))

(assert (=> b!7007828 d!2184625))

(declare-fun d!2184627 () Bool)

(declare-fun e!4212473 () Bool)

(assert (=> d!2184627 e!4212473))

(declare-fun res!2859355 () Bool)

(assert (=> d!2184627 (=> (not res!2859355) (not e!4212473))))

(declare-fun lt!2502083 () Context!12596)

(declare-fun dynLambda!27068 (Int Context!12596) Bool)

(assert (=> d!2184627 (= res!2859355 (dynLambda!27068 lambda!407545 lt!2502083))))

(declare-fun getWitness!1238 (List!67453 Int) Context!12596)

(assert (=> d!2184627 (= lt!2502083 (getWitness!1238 (toList!10662 lt!2501942) lambda!407545))))

(declare-fun exists!3140 ((Set Context!12596) Int) Bool)

(assert (=> d!2184627 (exists!3140 lt!2501942 lambda!407545)))

(assert (=> d!2184627 (= (getWitness!1236 lt!2501942 lambda!407545) lt!2502083)))

(declare-fun b!7008006 () Bool)

(assert (=> b!7008006 (= e!4212473 (set.member lt!2502083 lt!2501942))))

(assert (= (and d!2184627 res!2859355) b!7008006))

(declare-fun b_lambda!264217 () Bool)

(assert (=> (not b_lambda!264217) (not d!2184627)))

(declare-fun m!7705280 () Bool)

(assert (=> d!2184627 m!7705280))

(assert (=> d!2184627 m!7705056))

(assert (=> d!2184627 m!7705056))

(declare-fun m!7705282 () Bool)

(assert (=> d!2184627 m!7705282))

(declare-fun m!7705284 () Bool)

(assert (=> d!2184627 m!7705284))

(declare-fun m!7705286 () Bool)

(assert (=> b!7008006 m!7705286))

(assert (=> b!7007828 d!2184627))

(declare-fun bs!1865804 () Bool)

(declare-fun d!2184629 () Bool)

(assert (= bs!1865804 (and d!2184629 b!7007828)))

(declare-fun lambda!407605 () Int)

(assert (=> bs!1865804 (= lambda!407605 lambda!407545)))

(assert (=> d!2184629 true))

(assert (=> d!2184629 (exists!3138 lt!2501947 lambda!407605)))

(declare-fun lt!2502086 () Unit!161282)

(declare-fun choose!52637 (List!67453 List!67451) Unit!161282)

(assert (=> d!2184629 (= lt!2502086 (choose!52637 lt!2501947 s!7408))))

(assert (=> d!2184629 (matchZipper!2842 (content!13356 lt!2501947) s!7408)))

(assert (=> d!2184629 (= (lemmaZipperMatchesExistsMatchingContext!271 lt!2501947 s!7408) lt!2502086)))

(declare-fun bs!1865805 () Bool)

(assert (= bs!1865805 d!2184629))

(declare-fun m!7705288 () Bool)

(assert (=> bs!1865805 m!7705288))

(declare-fun m!7705290 () Bool)

(assert (=> bs!1865805 m!7705290))

(declare-fun m!7705292 () Bool)

(assert (=> bs!1865805 m!7705292))

(assert (=> bs!1865805 m!7705292))

(declare-fun m!7705294 () Bool)

(assert (=> bs!1865805 m!7705294))

(assert (=> b!7007828 d!2184629))

(declare-fun d!2184631 () Bool)

(declare-fun c!1301582 () Bool)

(assert (=> d!2184631 (= c!1301582 (isEmpty!39323 s!7408))))

(declare-fun e!4212474 () Bool)

(assert (=> d!2184631 (= (matchZipper!2842 lt!2501953 s!7408) e!4212474)))

(declare-fun b!7008007 () Bool)

(assert (=> b!7008007 (= e!4212474 (nullableZipper!2479 lt!2501953))))

(declare-fun b!7008008 () Bool)

(assert (=> b!7008008 (= e!4212474 (matchZipper!2842 (derivationStepZipper!2782 lt!2501953 (head!14165 s!7408)) (tail!13370 s!7408)))))

(assert (= (and d!2184631 c!1301582) b!7008007))

(assert (= (and d!2184631 (not c!1301582)) b!7008008))

(assert (=> d!2184631 m!7705204))

(declare-fun m!7705296 () Bool)

(assert (=> b!7008007 m!7705296))

(assert (=> b!7008008 m!7705208))

(assert (=> b!7008008 m!7705208))

(declare-fun m!7705298 () Bool)

(assert (=> b!7008008 m!7705298))

(assert (=> b!7008008 m!7705212))

(assert (=> b!7008008 m!7705298))

(assert (=> b!7008008 m!7705212))

(declare-fun m!7705300 () Bool)

(assert (=> b!7008008 m!7705300))

(assert (=> b!7007828 d!2184631))

(declare-fun bs!1865806 () Bool)

(declare-fun d!2184633 () Bool)

(assert (= bs!1865806 (and d!2184633 b!7007828)))

(declare-fun lambda!407608 () Int)

(assert (=> bs!1865806 (not (= lambda!407608 lambda!407545))))

(declare-fun bs!1865807 () Bool)

(assert (= bs!1865807 (and d!2184633 d!2184629)))

(assert (=> bs!1865807 (not (= lambda!407608 lambda!407605))))

(assert (=> d!2184633 true))

(declare-fun order!28011 () Int)

(declare-fun dynLambda!27069 (Int Int) Int)

(assert (=> d!2184633 (< (dynLambda!27069 order!28011 lambda!407545) (dynLambda!27069 order!28011 lambda!407608))))

(declare-fun forall!16219 (List!67453 Int) Bool)

(assert (=> d!2184633 (= (exists!3138 lt!2501947 lambda!407545) (not (forall!16219 lt!2501947 lambda!407608)))))

(declare-fun bs!1865808 () Bool)

(assert (= bs!1865808 d!2184633))

(declare-fun m!7705302 () Bool)

(assert (=> bs!1865808 m!7705302))

(assert (=> b!7007828 d!2184633))

(assert (=> b!7007816 d!2184601))

(assert (=> b!7007827 d!2184591))

(declare-fun d!2184635 () Bool)

(assert (=> d!2184635 (= (isEmpty!39321 (exprs!6798 lt!2501932)) (is-Nil!67328 (exprs!6798 lt!2501932)))))

(assert (=> b!7007826 d!2184635))

(declare-fun lt!2502087 () List!67452)

(declare-fun b!7008014 () Bool)

(declare-fun e!4212476 () Bool)

(assert (=> b!7008014 (= e!4212476 (or (not (= (exprs!6798 ct2!306) Nil!67328)) (= lt!2502087 (exprs!6798 lt!2501932))))))

(declare-fun b!7008011 () Bool)

(declare-fun e!4212475 () List!67452)

(assert (=> b!7008011 (= e!4212475 (exprs!6798 ct2!306))))

(declare-fun d!2184637 () Bool)

(assert (=> d!2184637 e!4212476))

(declare-fun res!2859357 () Bool)

(assert (=> d!2184637 (=> (not res!2859357) (not e!4212476))))

(assert (=> d!2184637 (= res!2859357 (= (content!13355 lt!2502087) (set.union (content!13355 (exprs!6798 lt!2501932)) (content!13355 (exprs!6798 ct2!306)))))))

(assert (=> d!2184637 (= lt!2502087 e!4212475)))

(declare-fun c!1301583 () Bool)

(assert (=> d!2184637 (= c!1301583 (is-Nil!67328 (exprs!6798 lt!2501932)))))

(assert (=> d!2184637 (= (++!15293 (exprs!6798 lt!2501932) (exprs!6798 ct2!306)) lt!2502087)))

(declare-fun b!7008013 () Bool)

(declare-fun res!2859356 () Bool)

(assert (=> b!7008013 (=> (not res!2859356) (not e!4212476))))

(assert (=> b!7008013 (= res!2859356 (= (size!40963 lt!2502087) (+ (size!40963 (exprs!6798 lt!2501932)) (size!40963 (exprs!6798 ct2!306)))))))

(declare-fun b!7008012 () Bool)

(assert (=> b!7008012 (= e!4212475 (Cons!67328 (h!73776 (exprs!6798 lt!2501932)) (++!15293 (t!381207 (exprs!6798 lt!2501932)) (exprs!6798 ct2!306))))))

(assert (= (and d!2184637 c!1301583) b!7008011))

(assert (= (and d!2184637 (not c!1301583)) b!7008012))

(assert (= (and d!2184637 res!2859357) b!7008013))

(assert (= (and b!7008013 res!2859356) b!7008014))

(declare-fun m!7705304 () Bool)

(assert (=> d!2184637 m!7705304))

(declare-fun m!7705306 () Bool)

(assert (=> d!2184637 m!7705306))

(assert (=> d!2184637 m!7705240))

(declare-fun m!7705308 () Bool)

(assert (=> b!7008013 m!7705308))

(declare-fun m!7705310 () Bool)

(assert (=> b!7008013 m!7705310))

(assert (=> b!7008013 m!7705246))

(declare-fun m!7705312 () Bool)

(assert (=> b!7008012 m!7705312))

(assert (=> b!7007834 d!2184637))

(assert (=> b!7007834 d!2184603))

(declare-fun d!2184639 () Bool)

(declare-fun e!4212479 () Bool)

(assert (=> d!2184639 e!4212479))

(declare-fun res!2859360 () Bool)

(assert (=> d!2184639 (=> (not res!2859360) (not e!4212479))))

(declare-fun lt!2502090 () Context!12596)

(declare-fun dynLambda!27070 (Int Context!12596) Context!12596)

(assert (=> d!2184639 (= res!2859360 (= lt!2501933 (dynLambda!27070 lambda!407546 lt!2502090)))))

(declare-fun choose!52638 ((Set Context!12596) Int Context!12596) Context!12596)

(assert (=> d!2184639 (= lt!2502090 (choose!52638 z1!570 lambda!407546 lt!2501933))))

(assert (=> d!2184639 (set.member lt!2501933 (map!15595 z1!570 lambda!407546))))

(assert (=> d!2184639 (= (mapPost2!157 z1!570 lambda!407546 lt!2501933) lt!2502090)))

(declare-fun b!7008018 () Bool)

(assert (=> b!7008018 (= e!4212479 (set.member lt!2502090 z1!570))))

(assert (= (and d!2184639 res!2859360) b!7008018))

(declare-fun b_lambda!264219 () Bool)

(assert (=> (not b_lambda!264219) (not d!2184639)))

(declare-fun m!7705314 () Bool)

(assert (=> d!2184639 m!7705314))

(declare-fun m!7705316 () Bool)

(assert (=> d!2184639 m!7705316))

(declare-fun m!7705318 () Bool)

(assert (=> d!2184639 m!7705318))

(declare-fun m!7705320 () Bool)

(assert (=> d!2184639 m!7705320))

(declare-fun m!7705322 () Bool)

(assert (=> b!7008018 m!7705322))

(assert (=> b!7007834 d!2184639))

(declare-fun d!2184641 () Bool)

(declare-fun nullableFct!2674 (Regex!17302) Bool)

(assert (=> d!2184641 (= (nullable!7062 (h!73776 (exprs!6798 lt!2501932))) (nullableFct!2674 (h!73776 (exprs!6798 lt!2501932))))))

(declare-fun bs!1865809 () Bool)

(assert (= bs!1865809 d!2184641))

(declare-fun m!7705324 () Bool)

(assert (=> bs!1865809 m!7705324))

(assert (=> b!7007825 d!2184641))

(declare-fun d!2184643 () Bool)

(assert (=> d!2184643 (= (tail!13368 (exprs!6798 lt!2501932)) (t!381207 (exprs!6798 lt!2501932)))))

(assert (=> b!7007825 d!2184643))

(declare-fun b!7008019 () Bool)

(declare-fun e!4212482 () (Set Context!12596))

(declare-fun e!4212480 () (Set Context!12596))

(assert (=> b!7008019 (= e!4212482 e!4212480)))

(declare-fun c!1301585 () Bool)

(assert (=> b!7008019 (= c!1301585 (is-Cons!67328 (exprs!6798 lt!2501931)))))

(declare-fun b!7008020 () Bool)

(declare-fun e!4212481 () Bool)

(assert (=> b!7008020 (= e!4212481 (nullable!7062 (h!73776 (exprs!6798 lt!2501931))))))

(declare-fun d!2184645 () Bool)

(declare-fun c!1301584 () Bool)

(assert (=> d!2184645 (= c!1301584 e!4212481)))

(declare-fun res!2859361 () Bool)

(assert (=> d!2184645 (=> (not res!2859361) (not e!4212481))))

(assert (=> d!2184645 (= res!2859361 (is-Cons!67328 (exprs!6798 lt!2501931)))))

(assert (=> d!2184645 (= (derivationStepZipperUp!1952 lt!2501931 (h!73775 s!7408)) e!4212482)))

(declare-fun call!636441 () (Set Context!12596))

(declare-fun b!7008021 () Bool)

(assert (=> b!7008021 (= e!4212482 (set.union call!636441 (derivationStepZipperUp!1952 (Context!12597 (t!381207 (exprs!6798 lt!2501931))) (h!73775 s!7408))))))

(declare-fun b!7008022 () Bool)

(assert (=> b!7008022 (= e!4212480 (as set.empty (Set Context!12596)))))

(declare-fun bm!636436 () Bool)

(assert (=> bm!636436 (= call!636441 (derivationStepZipperDown!2020 (h!73776 (exprs!6798 lt!2501931)) (Context!12597 (t!381207 (exprs!6798 lt!2501931))) (h!73775 s!7408)))))

(declare-fun b!7008023 () Bool)

(assert (=> b!7008023 (= e!4212480 call!636441)))

(assert (= (and d!2184645 res!2859361) b!7008020))

(assert (= (and d!2184645 c!1301584) b!7008021))

(assert (= (and d!2184645 (not c!1301584)) b!7008019))

(assert (= (and b!7008019 c!1301585) b!7008023))

(assert (= (and b!7008019 (not c!1301585)) b!7008022))

(assert (= (or b!7008021 b!7008023) bm!636436))

(declare-fun m!7705326 () Bool)

(assert (=> b!7008020 m!7705326))

(declare-fun m!7705328 () Bool)

(assert (=> b!7008021 m!7705328))

(declare-fun m!7705330 () Bool)

(assert (=> bm!636436 m!7705330))

(assert (=> b!7007824 d!2184645))

(declare-fun d!2184647 () Bool)

(declare-fun choose!52639 ((Set Context!12596) Int) (Set Context!12596))

(assert (=> d!2184647 (= (flatMap!2288 lt!2501939 lambda!407548) (choose!52639 lt!2501939 lambda!407548))))

(declare-fun bs!1865810 () Bool)

(assert (= bs!1865810 d!2184647))

(declare-fun m!7705332 () Bool)

(assert (=> bs!1865810 m!7705332))

(assert (=> b!7007824 d!2184647))

(assert (=> b!7007824 d!2184603))

(declare-fun bs!1865811 () Bool)

(declare-fun d!2184649 () Bool)

(assert (= bs!1865811 (and d!2184649 b!7007824)))

(declare-fun lambda!407611 () Int)

(assert (=> bs!1865811 (= lambda!407611 lambda!407548)))

(assert (=> d!2184649 true))

(assert (=> d!2184649 (= (derivationStepZipper!2782 lt!2501939 (h!73775 s!7408)) (flatMap!2288 lt!2501939 lambda!407611))))

(declare-fun bs!1865812 () Bool)

(assert (= bs!1865812 d!2184649))

(declare-fun m!7705334 () Bool)

(assert (=> bs!1865812 m!7705334))

(assert (=> b!7007824 d!2184649))

(declare-fun d!2184651 () Bool)

(declare-fun dynLambda!27071 (Int Context!12596) (Set Context!12596))

(assert (=> d!2184651 (= (flatMap!2288 lt!2501939 lambda!407548) (dynLambda!27071 lambda!407548 lt!2501931))))

(declare-fun lt!2502093 () Unit!161282)

(declare-fun choose!52640 ((Set Context!12596) Context!12596 Int) Unit!161282)

(assert (=> d!2184651 (= lt!2502093 (choose!52640 lt!2501939 lt!2501931 lambda!407548))))

(assert (=> d!2184651 (= lt!2501939 (set.insert lt!2501931 (as set.empty (Set Context!12596))))))

(assert (=> d!2184651 (= (lemmaFlatMapOnSingletonSet!1803 lt!2501939 lt!2501931 lambda!407548) lt!2502093)))

(declare-fun b_lambda!264221 () Bool)

(assert (=> (not b_lambda!264221) (not d!2184651)))

(declare-fun bs!1865813 () Bool)

(assert (= bs!1865813 d!2184651))

(assert (=> bs!1865813 m!7705040))

(declare-fun m!7705336 () Bool)

(assert (=> bs!1865813 m!7705336))

(declare-fun m!7705338 () Bool)

(assert (=> bs!1865813 m!7705338))

(assert (=> bs!1865813 m!7705054))

(assert (=> b!7007824 d!2184651))

(declare-fun bs!1865814 () Bool)

(declare-fun d!2184653 () Bool)

(assert (= bs!1865814 (and d!2184653 b!7007834)))

(declare-fun lambda!407612 () Int)

(assert (=> bs!1865814 (= lambda!407612 lambda!407547)))

(declare-fun bs!1865815 () Bool)

(assert (= bs!1865815 (and d!2184653 d!2184609)))

(assert (=> bs!1865815 (= lambda!407612 lambda!407598)))

(declare-fun bs!1865816 () Bool)

(assert (= bs!1865816 (and d!2184653 d!2184619)))

(assert (=> bs!1865816 (= lambda!407612 lambda!407601)))

(assert (=> d!2184653 (= (inv!86115 setElem!48278) (forall!16217 (exprs!6798 setElem!48278) lambda!407612))))

(declare-fun bs!1865817 () Bool)

(assert (= bs!1865817 d!2184653))

(declare-fun m!7705340 () Bool)

(assert (=> bs!1865817 m!7705340))

(assert (=> setNonEmpty!48278 d!2184653))

(declare-fun b!7008030 () Bool)

(declare-fun e!4212485 () Bool)

(declare-fun tp!1932009 () Bool)

(assert (=> b!7008030 (= e!4212485 (and tp_is_empty!43829 tp!1932009))))

(assert (=> b!7007833 (= tp!1931993 e!4212485)))

(assert (= (and b!7007833 (is-Cons!67327 (t!381206 s!7408))) b!7008030))

(declare-fun b!7008035 () Bool)

(declare-fun e!4212488 () Bool)

(declare-fun tp!1932014 () Bool)

(declare-fun tp!1932015 () Bool)

(assert (=> b!7008035 (= e!4212488 (and tp!1932014 tp!1932015))))

(assert (=> b!7007829 (= tp!1931991 e!4212488)))

(assert (= (and b!7007829 (is-Cons!67328 (exprs!6798 ct2!306))) b!7008035))

(declare-fun b!7008036 () Bool)

(declare-fun e!4212489 () Bool)

(declare-fun tp!1932016 () Bool)

(declare-fun tp!1932017 () Bool)

(assert (=> b!7008036 (= e!4212489 (and tp!1932016 tp!1932017))))

(assert (=> b!7007822 (= tp!1931994 e!4212489)))

(assert (= (and b!7007822 (is-Cons!67328 (exprs!6798 setElem!48278))) b!7008036))

(declare-fun condSetEmpty!48284 () Bool)

(assert (=> setNonEmpty!48278 (= condSetEmpty!48284 (= setRest!48278 (as set.empty (Set Context!12596))))))

(declare-fun setRes!48284 () Bool)

(assert (=> setNonEmpty!48278 (= tp!1931992 setRes!48284)))

(declare-fun setIsEmpty!48284 () Bool)

(assert (=> setIsEmpty!48284 setRes!48284))

(declare-fun tp!1932023 () Bool)

(declare-fun setElem!48284 () Context!12596)

(declare-fun setNonEmpty!48284 () Bool)

(declare-fun e!4212492 () Bool)

(assert (=> setNonEmpty!48284 (= setRes!48284 (and tp!1932023 (inv!86115 setElem!48284) e!4212492))))

(declare-fun setRest!48284 () (Set Context!12596))

(assert (=> setNonEmpty!48284 (= setRest!48278 (set.union (set.insert setElem!48284 (as set.empty (Set Context!12596))) setRest!48284))))

(declare-fun b!7008041 () Bool)

(declare-fun tp!1932022 () Bool)

(assert (=> b!7008041 (= e!4212492 tp!1932022)))

(assert (= (and setNonEmpty!48278 condSetEmpty!48284) setIsEmpty!48284))

(assert (= (and setNonEmpty!48278 (not condSetEmpty!48284)) setNonEmpty!48284))

(assert (= setNonEmpty!48284 b!7008041))

(declare-fun m!7705342 () Bool)

(assert (=> setNonEmpty!48284 m!7705342))

(declare-fun b_lambda!264223 () Bool)

(assert (= b_lambda!264219 (or b!7007834 b_lambda!264223)))

(declare-fun bs!1865818 () Bool)

(declare-fun d!2184655 () Bool)

(assert (= bs!1865818 (and d!2184655 b!7007834)))

(declare-fun lt!2502094 () Unit!161282)

(assert (=> bs!1865818 (= lt!2502094 (lemmaConcatPreservesForall!638 (exprs!6798 lt!2502090) (exprs!6798 ct2!306) lambda!407547))))

(assert (=> bs!1865818 (= (dynLambda!27070 lambda!407546 lt!2502090) (Context!12597 (++!15293 (exprs!6798 lt!2502090) (exprs!6798 ct2!306))))))

(declare-fun m!7705344 () Bool)

(assert (=> bs!1865818 m!7705344))

(declare-fun m!7705346 () Bool)

(assert (=> bs!1865818 m!7705346))

(assert (=> d!2184639 d!2184655))

(declare-fun b_lambda!264225 () Bool)

(assert (= b_lambda!264215 (or b!7007834 b_lambda!264225)))

(declare-fun bs!1865819 () Bool)

(declare-fun d!2184657 () Bool)

(assert (= bs!1865819 (and d!2184657 b!7007834)))

(assert (=> bs!1865819 (= (dynLambda!27067 lambda!407547 (h!73776 lt!2501943)) (validRegex!8880 (h!73776 lt!2501943)))))

(declare-fun m!7705348 () Bool)

(assert (=> bs!1865819 m!7705348))

(assert (=> b!7007999 d!2184657))

(declare-fun b_lambda!264227 () Bool)

(assert (= b_lambda!264217 (or b!7007828 b_lambda!264227)))

(declare-fun bs!1865820 () Bool)

(declare-fun d!2184659 () Bool)

(assert (= bs!1865820 (and d!2184659 b!7007828)))

(assert (=> bs!1865820 (= (dynLambda!27068 lambda!407545 lt!2502083) (matchZipper!2842 (set.insert lt!2502083 (as set.empty (Set Context!12596))) s!7408))))

(declare-fun m!7705350 () Bool)

(assert (=> bs!1865820 m!7705350))

(assert (=> bs!1865820 m!7705350))

(declare-fun m!7705352 () Bool)

(assert (=> bs!1865820 m!7705352))

(assert (=> d!2184627 d!2184659))

(declare-fun b_lambda!264229 () Bool)

(assert (= b_lambda!264221 (or b!7007824 b_lambda!264229)))

(declare-fun bs!1865821 () Bool)

(declare-fun d!2184661 () Bool)

(assert (= bs!1865821 (and d!2184661 b!7007824)))

(assert (=> bs!1865821 (= (dynLambda!27071 lambda!407548 lt!2501931) (derivationStepZipperUp!1952 lt!2501931 (h!73775 s!7408)))))

(assert (=> bs!1865821 m!7705036))

(assert (=> d!2184651 d!2184661))

(push 1)

(assert (not d!2184629))

(assert (not b!7007981))

(assert (not d!2184625))

(assert (not d!2184609))

(assert (not b!7007947))

(assert tp_is_empty!43829)

(assert (not b!7008036))

(assert (not d!2184619))

(assert (not d!2184631))

(assert (not b!7008003))

(assert (not bm!636423))

(assert (not d!2184607))

(assert (not b!7007985))

(assert (not bm!636436))

(assert (not bm!636426))

(assert (not b_lambda!264227))

(assert (not bm!636429))

(assert (not b!7007982))

(assert (not b!7008008))

(assert (not d!2184593))

(assert (not b!7007921))

(assert (not bm!636421))

(assert (not b!7007914))

(assert (not d!2184647))

(assert (not bs!1865821))

(assert (not b_lambda!264225))

(assert (not bs!1865819))

(assert (not d!2184633))

(assert (not d!2184649))

(assert (not b!7008007))

(assert (not d!2184651))

(assert (not b!7008013))

(assert (not b!7007916))

(assert (not b!7008030))

(assert (not d!2184639))

(assert (not setNonEmpty!48284))

(assert (not b_lambda!264229))

(assert (not b!7008035))

(assert (not b!7008012))

(assert (not d!2184605))

(assert (not bs!1865820))

(assert (not b!7008000))

(assert (not b!7007913))

(assert (not d!2184597))

(assert (not b!7007920))

(assert (not d!2184595))

(assert (not d!2184603))

(assert (not b!7008020))

(assert (not d!2184653))

(assert (not b!7008041))

(assert (not b!7007911))

(assert (not b!7007912))

(assert (not b!7007969))

(assert (not b!7007919))

(assert (not b!7007915))

(assert (not b!7007923))

(assert (not d!2184601))

(assert (not bs!1865818))

(assert (not bm!636435))

(assert (not d!2184621))

(assert (not d!2184591))

(assert (not b!7008021))

(assert (not d!2184641))

(assert (not d!2184637))

(assert (not d!2184627))

(assert (not b!7007968))

(assert (not d!2184599))

(assert (not bm!636432))

(assert (not b_lambda!264223))

(assert (not b!7007922))

(assert (not d!2184615))

(assert (not bm!636430))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

