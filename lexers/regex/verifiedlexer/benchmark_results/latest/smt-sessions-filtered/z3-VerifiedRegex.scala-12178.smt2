; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!685492 () Bool)

(assert start!685492)

(declare-fun b!7063403 () Bool)

(assert (=> b!7063403 true))

(declare-fun b!7063400 () Bool)

(assert (=> b!7063400 true))

(declare-fun b!7063393 () Bool)

(assert (=> b!7063393 true))

(declare-fun b!7063373 () Bool)

(declare-fun e!4246433 () Bool)

(declare-fun e!4246429 () Bool)

(assert (=> b!7063373 (= e!4246433 e!4246429)))

(declare-fun res!2884032 () Bool)

(assert (=> b!7063373 (=> res!2884032 e!4246429)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35476 0))(
  ( (C!35477 (val!27440 Int)) )
))
(declare-datatypes ((Regex!17603 0))(
  ( (ElementMatch!17603 (c!1316721 C!35476)) (Concat!26448 (regOne!35718 Regex!17603) (regTwo!35718 Regex!17603)) (EmptyExpr!17603) (Star!17603 (reg!17932 Regex!17603)) (EmptyLang!17603) (Union!17603 (regOne!35719 Regex!17603) (regTwo!35719 Regex!17603)) )
))
(declare-datatypes ((List!68335 0))(
  ( (Nil!68211) (Cons!68211 (h!74659 Regex!17603) (t!382116 List!68335)) )
))
(declare-datatypes ((Context!13198 0))(
  ( (Context!13199 (exprs!7099 List!68335)) )
))
(declare-fun lt!2538063 () (InoxSet Context!13198))

(declare-fun lt!2538046 () (InoxSet Context!13198))

(declare-fun lt!2538041 () C!35476)

(declare-fun derivationStepZipper!3053 ((InoxSet Context!13198) C!35476) (InoxSet Context!13198))

(assert (=> b!7063373 (= res!2884032 (not (= (derivationStepZipper!3053 lt!2538046 lt!2538041) lt!2538063)))))

(declare-fun lt!2538043 () Context!13198)

(declare-fun derivationStepZipperUp!2187 (Context!13198 C!35476) (InoxSet Context!13198))

(assert (=> b!7063373 (= lt!2538063 (derivationStepZipperUp!2187 lt!2538043 lt!2538041))))

(declare-datatypes ((List!68336 0))(
  ( (Nil!68212) (Cons!68212 (h!74660 C!35476) (t!382117 List!68336)) )
))
(declare-datatypes ((tuple2!68208 0))(
  ( (tuple2!68209 (_1!37407 List!68336) (_2!37407 List!68336)) )
))
(declare-fun lt!2538038 () tuple2!68208)

(declare-fun head!14381 (List!68336) C!35476)

(assert (=> b!7063373 (= lt!2538041 (head!14381 (_1!37407 lt!2538038)))))

(declare-fun s!7408 () List!68336)

(declare-fun lambda!422766 () Int)

(declare-fun flatMap!2529 ((InoxSet Context!13198) Int) (InoxSet Context!13198))

(assert (=> b!7063373 (= (flatMap!2529 lt!2538046 lambda!422766) (derivationStepZipperUp!2187 lt!2538043 (h!74660 s!7408)))))

(declare-datatypes ((Unit!161882 0))(
  ( (Unit!161883) )
))
(declare-fun lt!2538090 () Unit!161882)

(declare-fun lemmaFlatMapOnSingletonSet!2038 ((InoxSet Context!13198) Context!13198 Int) Unit!161882)

(assert (=> b!7063373 (= lt!2538090 (lemmaFlatMapOnSingletonSet!2038 lt!2538046 lt!2538043 lambda!422766))))

(declare-fun b!7063374 () Bool)

(declare-fun e!4246411 () Bool)

(declare-fun e!4246426 () Bool)

(assert (=> b!7063374 (= e!4246411 e!4246426)))

(declare-fun res!2884007 () Bool)

(assert (=> b!7063374 (=> res!2884007 e!4246426)))

(declare-fun lt!2538088 () (InoxSet Context!13198))

(declare-fun lt!2538079 () (InoxSet Context!13198))

(assert (=> b!7063374 (= res!2884007 (not (= lt!2538088 lt!2538079)))))

(declare-fun lt!2538092 () (InoxSet Context!13198))

(declare-fun lt!2538082 () (InoxSet Context!13198))

(assert (=> b!7063374 (= lt!2538079 ((_ map or) lt!2538092 lt!2538082))))

(declare-fun lt!2538098 () Context!13198)

(assert (=> b!7063374 (= lt!2538082 (derivationStepZipperUp!2187 lt!2538098 (h!74660 s!7408)))))

(declare-fun lt!2538048 () Context!13198)

(declare-fun derivationStepZipperDown!2237 (Regex!17603 Context!13198 C!35476) (InoxSet Context!13198))

(assert (=> b!7063374 (= lt!2538092 (derivationStepZipperDown!2237 (h!74659 (exprs!7099 lt!2538048)) lt!2538098 (h!74660 s!7408)))))

(declare-fun lt!2538056 () List!68335)

(declare-fun ct2!306 () Context!13198)

(declare-fun ++!15703 (List!68335 List!68335) List!68335)

(assert (=> b!7063374 (= lt!2538098 (Context!13199 (++!15703 lt!2538056 (exprs!7099 ct2!306))))))

(declare-fun lt!2538058 () Unit!161882)

(declare-fun lambda!422765 () Int)

(declare-fun lemmaConcatPreservesForall!914 (List!68335 List!68335 Int) Unit!161882)

(assert (=> b!7063374 (= lt!2538058 (lemmaConcatPreservesForall!914 lt!2538056 (exprs!7099 ct2!306) lambda!422765))))

(declare-fun lt!2538066 () Unit!161882)

(assert (=> b!7063374 (= lt!2538066 (lemmaConcatPreservesForall!914 lt!2538056 (exprs!7099 ct2!306) lambda!422765))))

(declare-fun b!7063375 () Bool)

(declare-fun e!4246413 () Bool)

(assert (=> b!7063375 (= e!4246413 e!4246433)))

(declare-fun res!2884027 () Bool)

(assert (=> b!7063375 (=> res!2884027 e!4246433)))

(declare-fun e!4246419 () Bool)

(assert (=> b!7063375 (= res!2884027 e!4246419)))

(declare-fun res!2884023 () Bool)

(assert (=> b!7063375 (=> (not res!2884023) (not e!4246419))))

(declare-fun lt!2538071 () Bool)

(declare-fun lt!2538062 () Bool)

(assert (=> b!7063375 (= res!2884023 (not (= lt!2538071 lt!2538062)))))

(declare-fun lt!2538044 () (InoxSet Context!13198))

(declare-fun matchZipper!3143 ((InoxSet Context!13198) List!68336) Bool)

(assert (=> b!7063375 (= lt!2538071 (matchZipper!3143 lt!2538044 (_1!37407 lt!2538038)))))

(declare-fun lt!2538067 () (InoxSet Context!13198))

(declare-fun lt!2538099 () List!68336)

(declare-fun e!4246418 () Bool)

(assert (=> b!7063375 (= (matchZipper!3143 lt!2538067 lt!2538099) e!4246418)))

(declare-fun res!2884016 () Bool)

(assert (=> b!7063375 (=> res!2884016 e!4246418)))

(assert (=> b!7063375 (= res!2884016 lt!2538062)))

(declare-fun lt!2538081 () (InoxSet Context!13198))

(assert (=> b!7063375 (= lt!2538062 (matchZipper!3143 lt!2538081 lt!2538099))))

(declare-fun lt!2538057 () (InoxSet Context!13198))

(declare-fun lt!2538078 () Unit!161882)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1616 ((InoxSet Context!13198) (InoxSet Context!13198) List!68336) Unit!161882)

(assert (=> b!7063375 (= lt!2538078 (lemmaZipperConcatMatchesSameAsBothZippers!1616 lt!2538081 lt!2538057 lt!2538099))))

(declare-fun tail!13754 (List!68336) List!68336)

(assert (=> b!7063375 (= lt!2538099 (tail!13754 (_1!37407 lt!2538038)))))

(declare-fun b!7063376 () Bool)

(declare-fun e!4246432 () Bool)

(declare-fun e!4246417 () Bool)

(assert (=> b!7063376 (= e!4246432 e!4246417)))

(declare-fun res!2884035 () Bool)

(assert (=> b!7063376 (=> res!2884035 e!4246417)))

(declare-fun lt!2538097 () (InoxSet Context!13198))

(assert (=> b!7063376 (= res!2884035 (not (= (derivationStepZipper!3053 lt!2538097 (h!74660 s!7408)) lt!2538082)))))

(declare-fun lt!2538093 () Unit!161882)

(assert (=> b!7063376 (= lt!2538093 (lemmaConcatPreservesForall!914 lt!2538056 (exprs!7099 ct2!306) lambda!422765))))

(declare-fun lt!2538095 () Unit!161882)

(assert (=> b!7063376 (= lt!2538095 (lemmaConcatPreservesForall!914 lt!2538056 (exprs!7099 ct2!306) lambda!422765))))

(assert (=> b!7063376 (= (flatMap!2529 lt!2538097 lambda!422766) (derivationStepZipperUp!2187 lt!2538098 (h!74660 s!7408)))))

(declare-fun lt!2538084 () Unit!161882)

(assert (=> b!7063376 (= lt!2538084 (lemmaFlatMapOnSingletonSet!2038 lt!2538097 lt!2538098 lambda!422766))))

(assert (=> b!7063376 (= lt!2538097 (store ((as const (Array Context!13198 Bool)) false) lt!2538098 true))))

(declare-fun lt!2538102 () Unit!161882)

(assert (=> b!7063376 (= lt!2538102 (lemmaConcatPreservesForall!914 lt!2538056 (exprs!7099 ct2!306) lambda!422765))))

(declare-fun lt!2538096 () Unit!161882)

(assert (=> b!7063376 (= lt!2538096 (lemmaConcatPreservesForall!914 lt!2538056 (exprs!7099 ct2!306) lambda!422765))))

(declare-fun b!7063377 () Bool)

(declare-fun e!4246416 () Bool)

(declare-fun e!4246421 () Bool)

(assert (=> b!7063377 (= e!4246416 e!4246421)))

(declare-fun res!2884033 () Bool)

(assert (=> b!7063377 (=> res!2884033 e!4246421)))

(declare-fun lt!2538051 () Int)

(declare-fun contextDepthTotal!539 (Context!13198) Int)

(assert (=> b!7063377 (= res!2884033 (<= lt!2538051 (contextDepthTotal!539 lt!2538043)))))

(declare-fun lt!2538075 () Int)

(assert (=> b!7063377 (<= lt!2538051 lt!2538075)))

(declare-datatypes ((List!68337 0))(
  ( (Nil!68213) (Cons!68213 (h!74661 Context!13198) (t!382118 List!68337)) )
))
(declare-fun lt!2538083 () List!68337)

(declare-fun zipperDepthTotal!568 (List!68337) Int)

(assert (=> b!7063377 (= lt!2538075 (zipperDepthTotal!568 lt!2538083))))

(assert (=> b!7063377 (= lt!2538051 (contextDepthTotal!539 lt!2538048))))

(declare-fun lt!2538052 () Unit!161882)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!106 (List!68337 Context!13198) Unit!161882)

(assert (=> b!7063377 (= lt!2538052 (lemmaTotalDepthZipperLargerThanOfAnyContext!106 lt!2538083 lt!2538048))))

(declare-fun z1!570 () (InoxSet Context!13198))

(declare-fun toList!10944 ((InoxSet Context!13198)) List!68337)

(assert (=> b!7063377 (= lt!2538083 (toList!10944 z1!570))))

(declare-fun lt!2538049 () Unit!161882)

(assert (=> b!7063377 (= lt!2538049 (lemmaConcatPreservesForall!914 lt!2538056 (exprs!7099 ct2!306) lambda!422765))))

(declare-fun lt!2538074 () Unit!161882)

(assert (=> b!7063377 (= lt!2538074 (lemmaConcatPreservesForall!914 lt!2538056 (exprs!7099 ct2!306) lambda!422765))))

(declare-fun lt!2538059 () Unit!161882)

(assert (=> b!7063377 (= lt!2538059 (lemmaConcatPreservesForall!914 lt!2538056 (exprs!7099 ct2!306) lambda!422765))))

(assert (=> b!7063377 (= (flatMap!2529 lt!2538046 lambda!422766) (derivationStepZipperUp!2187 lt!2538043 (h!74660 s!7408)))))

(declare-fun lt!2538060 () Unit!161882)

(assert (=> b!7063377 (= lt!2538060 (lemmaFlatMapOnSingletonSet!2038 lt!2538046 lt!2538043 lambda!422766))))

(declare-fun lambda!422764 () Int)

(declare-fun map!15937 ((InoxSet Context!13198) Int) (InoxSet Context!13198))

(assert (=> b!7063377 (= (map!15937 lt!2538046 lambda!422764) (store ((as const (Array Context!13198 Bool)) false) (Context!13199 (++!15703 lt!2538056 (exprs!7099 ct2!306))) true))))

(declare-fun lt!2538054 () Unit!161882)

(assert (=> b!7063377 (= lt!2538054 (lemmaConcatPreservesForall!914 lt!2538056 (exprs!7099 ct2!306) lambda!422765))))

(declare-fun lt!2538100 () Unit!161882)

(declare-fun lemmaMapOnSingletonSet!420 ((InoxSet Context!13198) Context!13198 Int) Unit!161882)

(assert (=> b!7063377 (= lt!2538100 (lemmaMapOnSingletonSet!420 lt!2538046 lt!2538043 lambda!422764))))

(assert (=> b!7063377 (= lt!2538046 (store ((as const (Array Context!13198 Bool)) false) lt!2538043 true))))

(declare-fun b!7063378 () Bool)

(assert (=> b!7063378 (= e!4246429 true)))

(declare-fun lt!2538040 () (InoxSet Context!13198))

(declare-datatypes ((Option!16936 0))(
  ( (None!16935) (Some!16935 (v!53229 tuple2!68208)) )
))
(declare-fun isDefined!13637 (Option!16936) Bool)

(declare-fun findConcatSeparationZippers!452 ((InoxSet Context!13198) (InoxSet Context!13198) List!68336 List!68336 List!68336) Option!16936)

(assert (=> b!7063378 (isDefined!13637 (findConcatSeparationZippers!452 lt!2538044 lt!2538040 Nil!68212 s!7408 s!7408))))

(declare-fun lt!2538087 () Unit!161882)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!52 ((InoxSet Context!13198) (InoxSet Context!13198) List!68336 List!68336 List!68336 List!68336 List!68336) Unit!161882)

(assert (=> b!7063378 (= lt!2538087 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!52 lt!2538044 lt!2538040 (_1!37407 lt!2538038) (_2!37407 lt!2538038) s!7408 Nil!68212 s!7408))))

(declare-fun b!7063379 () Bool)

(declare-fun res!2884024 () Bool)

(assert (=> b!7063379 (=> res!2884024 e!4246421)))

(assert (=> b!7063379 (= res!2884024 (>= (zipperDepthTotal!568 (Cons!68213 lt!2538043 Nil!68213)) lt!2538075))))

(declare-fun b!7063380 () Bool)

(declare-fun res!2884037 () Bool)

(assert (=> b!7063380 (=> res!2884037 e!4246429)))

(assert (=> b!7063380 (= res!2884037 (not lt!2538071))))

(declare-fun b!7063381 () Bool)

(assert (=> b!7063381 (= e!4246417 e!4246416)))

(declare-fun res!2884012 () Bool)

(assert (=> b!7063381 (=> res!2884012 e!4246416)))

(assert (=> b!7063381 (= res!2884012 (not (matchZipper!3143 lt!2538097 s!7408)))))

(declare-fun lt!2538077 () Unit!161882)

(assert (=> b!7063381 (= lt!2538077 (lemmaConcatPreservesForall!914 lt!2538056 (exprs!7099 ct2!306) lambda!422765))))

(declare-fun setIsEmpty!50049 () Bool)

(declare-fun setRes!50049 () Bool)

(assert (=> setIsEmpty!50049 setRes!50049))

(declare-fun b!7063382 () Bool)

(declare-fun e!4246412 () Bool)

(declare-fun tp_is_empty!44431 () Bool)

(declare-fun tp!1941292 () Bool)

(assert (=> b!7063382 (= e!4246412 (and tp_is_empty!44431 tp!1941292))))

(declare-fun b!7063383 () Bool)

(declare-fun res!2884018 () Bool)

(declare-fun e!4246427 () Bool)

(assert (=> b!7063383 (=> res!2884018 e!4246427)))

(declare-fun isEmpty!39796 (List!68335) Bool)

(assert (=> b!7063383 (= res!2884018 (isEmpty!39796 (exprs!7099 lt!2538048)))))

(declare-fun b!7063385 () Bool)

(declare-fun e!4246428 () Bool)

(declare-fun tp!1941291 () Bool)

(assert (=> b!7063385 (= e!4246428 tp!1941291)))

(declare-fun b!7063386 () Bool)

(assert (=> b!7063386 (= e!4246419 (not (matchZipper!3143 lt!2538057 lt!2538099)))))

(declare-fun b!7063387 () Bool)

(assert (=> b!7063387 (= e!4246418 (matchZipper!3143 lt!2538057 lt!2538099))))

(declare-fun b!7063388 () Bool)

(declare-fun e!4246414 () Bool)

(assert (=> b!7063388 (= e!4246426 e!4246414)))

(declare-fun res!2884026 () Bool)

(assert (=> b!7063388 (=> res!2884026 e!4246414)))

(declare-fun e!4246424 () Bool)

(assert (=> b!7063388 (= res!2884026 e!4246424)))

(declare-fun res!2884036 () Bool)

(assert (=> b!7063388 (=> (not res!2884036) (not e!4246424))))

(declare-fun lt!2538061 () Bool)

(declare-fun lt!2538073 () Bool)

(assert (=> b!7063388 (= res!2884036 (not (= lt!2538061 lt!2538073)))))

(assert (=> b!7063388 (= lt!2538061 (matchZipper!3143 lt!2538088 (t!382117 s!7408)))))

(declare-fun lt!2538053 () Unit!161882)

(assert (=> b!7063388 (= lt!2538053 (lemmaConcatPreservesForall!914 lt!2538056 (exprs!7099 ct2!306) lambda!422765))))

(declare-fun e!4246423 () Bool)

(assert (=> b!7063388 (= (matchZipper!3143 lt!2538079 (t!382117 s!7408)) e!4246423)))

(declare-fun res!2884010 () Bool)

(assert (=> b!7063388 (=> res!2884010 e!4246423)))

(assert (=> b!7063388 (= res!2884010 lt!2538073)))

(assert (=> b!7063388 (= lt!2538073 (matchZipper!3143 lt!2538092 (t!382117 s!7408)))))

(declare-fun lt!2538039 () Unit!161882)

(assert (=> b!7063388 (= lt!2538039 (lemmaZipperConcatMatchesSameAsBothZippers!1616 lt!2538092 lt!2538082 (t!382117 s!7408)))))

(declare-fun lt!2538080 () Unit!161882)

(assert (=> b!7063388 (= lt!2538080 (lemmaConcatPreservesForall!914 lt!2538056 (exprs!7099 ct2!306) lambda!422765))))

(declare-fun lt!2538094 () Unit!161882)

(assert (=> b!7063388 (= lt!2538094 (lemmaConcatPreservesForall!914 lt!2538056 (exprs!7099 ct2!306) lambda!422765))))

(declare-fun b!7063389 () Bool)

(declare-fun res!2884030 () Bool)

(declare-fun e!4246431 () Bool)

(assert (=> b!7063389 (=> (not res!2884030) (not e!4246431))))

(get-info :version)

(assert (=> b!7063389 (= res!2884030 ((_ is Cons!68212) s!7408))))

(declare-fun b!7063390 () Bool)

(declare-fun res!2884013 () Bool)

(declare-fun e!4246420 () Bool)

(assert (=> b!7063390 (=> res!2884013 e!4246420)))

(declare-fun lt!2538047 () Context!13198)

(declare-fun lt!2538091 () (InoxSet Context!13198))

(assert (=> b!7063390 (= res!2884013 (not (select lt!2538091 lt!2538047)))))

(declare-fun tp!1941294 () Bool)

(declare-fun setNonEmpty!50049 () Bool)

(declare-fun setElem!50049 () Context!13198)

(declare-fun inv!86866 (Context!13198) Bool)

(assert (=> setNonEmpty!50049 (= setRes!50049 (and tp!1941294 (inv!86866 setElem!50049) e!4246428))))

(declare-fun setRest!50049 () (InoxSet Context!13198))

(assert (=> setNonEmpty!50049 (= z1!570 ((_ map or) (store ((as const (Array Context!13198 Bool)) false) setElem!50049 true) setRest!50049))))

(declare-fun b!7063391 () Bool)

(declare-fun res!2884031 () Bool)

(assert (=> b!7063391 (=> res!2884031 e!4246429)))

(assert (=> b!7063391 (= res!2884031 (not (matchZipper!3143 lt!2538063 lt!2538099)))))

(declare-fun b!7063392 () Bool)

(declare-fun res!2884017 () Bool)

(declare-fun e!4246415 () Bool)

(assert (=> b!7063392 (=> res!2884017 e!4246415)))

(declare-fun ++!15704 (List!68336 List!68336) List!68336)

(assert (=> b!7063392 (= res!2884017 (not (= (++!15704 (_1!37407 lt!2538038) (_2!37407 lt!2538038)) s!7408)))))

(declare-fun e!4246422 () Bool)

(assert (=> b!7063393 (= e!4246422 e!4246427)))

(declare-fun res!2884038 () Bool)

(assert (=> b!7063393 (=> res!2884038 e!4246427)))

(declare-fun lt!2538072 () (InoxSet Context!13198))

(assert (=> b!7063393 (= res!2884038 (not (= (derivationStepZipper!3053 lt!2538072 (h!74660 s!7408)) lt!2538088)))))

(declare-fun lt!2538055 () Context!13198)

(assert (=> b!7063393 (= (flatMap!2529 lt!2538072 lambda!422766) (derivationStepZipperUp!2187 lt!2538055 (h!74660 s!7408)))))

(declare-fun lt!2538045 () Unit!161882)

(assert (=> b!7063393 (= lt!2538045 (lemmaFlatMapOnSingletonSet!2038 lt!2538072 lt!2538055 lambda!422766))))

(assert (=> b!7063393 (= lt!2538088 (derivationStepZipperUp!2187 lt!2538055 (h!74660 s!7408)))))

(declare-fun lt!2538076 () Unit!161882)

(assert (=> b!7063393 (= lt!2538076 (lemmaConcatPreservesForall!914 (exprs!7099 lt!2538048) (exprs!7099 ct2!306) lambda!422765))))

(declare-fun b!7063394 () Bool)

(declare-fun res!2884028 () Bool)

(assert (=> b!7063394 (=> res!2884028 e!4246414)))

(assert (=> b!7063394 (= res!2884028 (not lt!2538061))))

(declare-fun b!7063395 () Bool)

(assert (=> b!7063395 (= e!4246423 (matchZipper!3143 lt!2538082 (t!382117 s!7408)))))

(declare-fun b!7063396 () Bool)

(declare-fun e!4246425 () Bool)

(assert (=> b!7063396 (= e!4246415 e!4246425)))

(declare-fun res!2884029 () Bool)

(assert (=> b!7063396 (=> res!2884029 e!4246425)))

(declare-fun lt!2538089 () (InoxSet Context!13198))

(assert (=> b!7063396 (= res!2884029 (not (= (derivationStepZipper!3053 lt!2538044 (h!74660 s!7408)) lt!2538089)))))

(assert (=> b!7063396 (= lt!2538089 (derivationStepZipperUp!2187 lt!2538048 (h!74660 s!7408)))))

(assert (=> b!7063396 (= (flatMap!2529 lt!2538044 lambda!422766) (derivationStepZipperUp!2187 lt!2538048 (h!74660 s!7408)))))

(declare-fun lt!2538050 () Unit!161882)

(assert (=> b!7063396 (= lt!2538050 (lemmaFlatMapOnSingletonSet!2038 lt!2538044 lt!2538048 lambda!422766))))

(assert (=> b!7063396 (= lt!2538044 (store ((as const (Array Context!13198 Bool)) false) lt!2538048 true))))

(declare-fun b!7063397 () Bool)

(declare-fun res!2884020 () Bool)

(assert (=> b!7063397 (=> res!2884020 e!4246427)))

(assert (=> b!7063397 (= res!2884020 (not ((_ is Cons!68211) (exprs!7099 lt!2538048))))))

(declare-fun b!7063398 () Bool)

(assert (=> b!7063398 (= e!4246414 e!4246432)))

(declare-fun res!2884019 () Bool)

(assert (=> b!7063398 (=> res!2884019 e!4246432)))

(assert (=> b!7063398 (= res!2884019 (not (matchZipper!3143 lt!2538082 (t!382117 s!7408))))))

(declare-fun lt!2538065 () Unit!161882)

(assert (=> b!7063398 (= lt!2538065 (lemmaConcatPreservesForall!914 lt!2538056 (exprs!7099 ct2!306) lambda!422765))))

(declare-fun b!7063399 () Bool)

(assert (=> b!7063399 (= e!4246424 (not (matchZipper!3143 lt!2538082 (t!382117 s!7408))))))

(declare-fun lt!2538069 () Unit!161882)

(assert (=> b!7063399 (= lt!2538069 (lemmaConcatPreservesForall!914 lt!2538056 (exprs!7099 ct2!306) lambda!422765))))

(declare-fun e!4246410 () Bool)

(assert (=> b!7063400 (= e!4246420 e!4246410)))

(declare-fun res!2884009 () Bool)

(assert (=> b!7063400 (=> res!2884009 e!4246410)))

(assert (=> b!7063400 (= res!2884009 (or (not (= lt!2538055 lt!2538047)) (not (select z1!570 lt!2538048))))))

(assert (=> b!7063400 (= lt!2538055 (Context!13199 (++!15703 (exprs!7099 lt!2538048) (exprs!7099 ct2!306))))))

(declare-fun lt!2538085 () Unit!161882)

(assert (=> b!7063400 (= lt!2538085 (lemmaConcatPreservesForall!914 (exprs!7099 lt!2538048) (exprs!7099 ct2!306) lambda!422765))))

(declare-fun mapPost2!432 ((InoxSet Context!13198) Int Context!13198) Context!13198)

(assert (=> b!7063400 (= lt!2538048 (mapPost2!432 z1!570 lambda!422764 lt!2538047))))

(declare-fun b!7063401 () Bool)

(declare-fun res!2884022 () Bool)

(assert (=> b!7063401 (=> res!2884022 e!4246415)))

(declare-fun isEmpty!39797 (List!68336) Bool)

(assert (=> b!7063401 (= res!2884022 (isEmpty!39797 (_1!37407 lt!2538038)))))

(declare-fun b!7063402 () Bool)

(declare-fun e!4246430 () Bool)

(declare-fun tp!1941293 () Bool)

(assert (=> b!7063402 (= e!4246430 tp!1941293)))

(declare-fun b!7063384 () Bool)

(declare-fun res!2884014 () Bool)

(assert (=> b!7063384 (=> res!2884014 e!4246415)))

(assert (=> b!7063384 (= res!2884014 (not (matchZipper!3143 lt!2538040 (_2!37407 lt!2538038))))))

(declare-fun res!2884008 () Bool)

(assert (=> start!685492 (=> (not res!2884008) (not e!4246431))))

(assert (=> start!685492 (= res!2884008 (matchZipper!3143 lt!2538091 s!7408))))

(declare-fun appendTo!724 ((InoxSet Context!13198) Context!13198) (InoxSet Context!13198))

(assert (=> start!685492 (= lt!2538091 (appendTo!724 z1!570 ct2!306))))

(assert (=> start!685492 e!4246431))

(declare-fun condSetEmpty!50049 () Bool)

(assert (=> start!685492 (= condSetEmpty!50049 (= z1!570 ((as const (Array Context!13198 Bool)) false)))))

(assert (=> start!685492 setRes!50049))

(assert (=> start!685492 (and (inv!86866 ct2!306) e!4246430)))

(assert (=> start!685492 e!4246412))

(assert (=> b!7063403 (= e!4246431 (not e!4246420))))

(declare-fun res!2884011 () Bool)

(assert (=> b!7063403 (=> res!2884011 e!4246420)))

(declare-fun lt!2538064 () (InoxSet Context!13198))

(assert (=> b!7063403 (= res!2884011 (not (matchZipper!3143 lt!2538064 s!7408)))))

(assert (=> b!7063403 (= lt!2538064 (store ((as const (Array Context!13198 Bool)) false) lt!2538047 true))))

(declare-fun lambda!422763 () Int)

(declare-fun getWitness!1682 ((InoxSet Context!13198) Int) Context!13198)

(assert (=> b!7063403 (= lt!2538047 (getWitness!1682 lt!2538091 lambda!422763))))

(declare-fun lt!2538070 () List!68337)

(declare-fun exists!3617 (List!68337 Int) Bool)

(assert (=> b!7063403 (exists!3617 lt!2538070 lambda!422763)))

(declare-fun lt!2538086 () Unit!161882)

(declare-fun lemmaZipperMatchesExistsMatchingContext!524 (List!68337 List!68336) Unit!161882)

(assert (=> b!7063403 (= lt!2538086 (lemmaZipperMatchesExistsMatchingContext!524 lt!2538070 s!7408))))

(assert (=> b!7063403 (= lt!2538070 (toList!10944 lt!2538091))))

(declare-fun b!7063404 () Bool)

(assert (=> b!7063404 (= e!4246410 e!4246422)))

(declare-fun res!2884034 () Bool)

(assert (=> b!7063404 (=> res!2884034 e!4246422)))

(assert (=> b!7063404 (= res!2884034 (not (= lt!2538072 lt!2538064)))))

(assert (=> b!7063404 (= lt!2538072 (store ((as const (Array Context!13198 Bool)) false) lt!2538055 true))))

(declare-fun lt!2538042 () Unit!161882)

(assert (=> b!7063404 (= lt!2538042 (lemmaConcatPreservesForall!914 (exprs!7099 lt!2538048) (exprs!7099 ct2!306) lambda!422765))))

(declare-fun b!7063405 () Bool)

(assert (=> b!7063405 (= e!4246421 e!4246415)))

(declare-fun res!2884021 () Bool)

(assert (=> b!7063405 (=> res!2884021 e!4246415)))

(assert (=> b!7063405 (= res!2884021 (not (matchZipper!3143 lt!2538046 (_1!37407 lt!2538038))))))

(declare-fun lt!2538101 () Option!16936)

(declare-fun get!23888 (Option!16936) tuple2!68208)

(assert (=> b!7063405 (= lt!2538038 (get!23888 lt!2538101))))

(assert (=> b!7063405 (isDefined!13637 lt!2538101)))

(assert (=> b!7063405 (= lt!2538101 (findConcatSeparationZippers!452 lt!2538046 lt!2538040 Nil!68212 s!7408 s!7408))))

(assert (=> b!7063405 (= lt!2538040 (store ((as const (Array Context!13198 Bool)) false) ct2!306 true))))

(declare-fun lt!2538068 () Unit!161882)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!440 ((InoxSet Context!13198) Context!13198 List!68336) Unit!161882)

(assert (=> b!7063405 (= lt!2538068 (lemmaConcatZipperMatchesStringThenFindConcatDefined!440 lt!2538046 ct2!306 s!7408))))

(declare-fun b!7063406 () Bool)

(assert (=> b!7063406 (= e!4246425 e!4246413)))

(declare-fun res!2884025 () Bool)

(assert (=> b!7063406 (=> res!2884025 e!4246413)))

(assert (=> b!7063406 (= res!2884025 (not (= lt!2538089 lt!2538067)))))

(assert (=> b!7063406 (= lt!2538067 ((_ map or) lt!2538081 lt!2538057))))

(assert (=> b!7063406 (= lt!2538057 (derivationStepZipperUp!2187 lt!2538043 (h!74660 s!7408)))))

(assert (=> b!7063406 (= lt!2538081 (derivationStepZipperDown!2237 (h!74659 (exprs!7099 lt!2538048)) lt!2538043 (h!74660 s!7408)))))

(declare-fun b!7063407 () Bool)

(assert (=> b!7063407 (= e!4246427 e!4246411)))

(declare-fun res!2884015 () Bool)

(assert (=> b!7063407 (=> res!2884015 e!4246411)))

(declare-fun nullable!7286 (Regex!17603) Bool)

(assert (=> b!7063407 (= res!2884015 (not (nullable!7286 (h!74659 (exprs!7099 lt!2538048)))))))

(assert (=> b!7063407 (= lt!2538043 (Context!13199 lt!2538056))))

(declare-fun tail!13755 (List!68335) List!68335)

(assert (=> b!7063407 (= lt!2538056 (tail!13755 (exprs!7099 lt!2538048)))))

(assert (= (and start!685492 res!2884008) b!7063389))

(assert (= (and b!7063389 res!2884030) b!7063403))

(assert (= (and b!7063403 (not res!2884011)) b!7063390))

(assert (= (and b!7063390 (not res!2884013)) b!7063400))

(assert (= (and b!7063400 (not res!2884009)) b!7063404))

(assert (= (and b!7063404 (not res!2884034)) b!7063393))

(assert (= (and b!7063393 (not res!2884038)) b!7063397))

(assert (= (and b!7063397 (not res!2884020)) b!7063383))

(assert (= (and b!7063383 (not res!2884018)) b!7063407))

(assert (= (and b!7063407 (not res!2884015)) b!7063374))

(assert (= (and b!7063374 (not res!2884007)) b!7063388))

(assert (= (and b!7063388 (not res!2884010)) b!7063395))

(assert (= (and b!7063388 res!2884036) b!7063399))

(assert (= (and b!7063388 (not res!2884026)) b!7063394))

(assert (= (and b!7063394 (not res!2884028)) b!7063398))

(assert (= (and b!7063398 (not res!2884019)) b!7063376))

(assert (= (and b!7063376 (not res!2884035)) b!7063381))

(assert (= (and b!7063381 (not res!2884012)) b!7063377))

(assert (= (and b!7063377 (not res!2884033)) b!7063379))

(assert (= (and b!7063379 (not res!2884024)) b!7063405))

(assert (= (and b!7063405 (not res!2884021)) b!7063384))

(assert (= (and b!7063384 (not res!2884014)) b!7063392))

(assert (= (and b!7063392 (not res!2884017)) b!7063401))

(assert (= (and b!7063401 (not res!2884022)) b!7063396))

(assert (= (and b!7063396 (not res!2884029)) b!7063406))

(assert (= (and b!7063406 (not res!2884025)) b!7063375))

(assert (= (and b!7063375 (not res!2884016)) b!7063387))

(assert (= (and b!7063375 res!2884023) b!7063386))

(assert (= (and b!7063375 (not res!2884027)) b!7063373))

(assert (= (and b!7063373 (not res!2884032)) b!7063391))

(assert (= (and b!7063391 (not res!2884031)) b!7063380))

(assert (= (and b!7063380 (not res!2884037)) b!7063378))

(assert (= (and start!685492 condSetEmpty!50049) setIsEmpty!50049))

(assert (= (and start!685492 (not condSetEmpty!50049)) setNonEmpty!50049))

(assert (= setNonEmpty!50049 b!7063385))

(assert (= start!685492 b!7063402))

(assert (= (and start!685492 ((_ is Cons!68212) s!7408)) b!7063382))

(declare-fun m!7784748 () Bool)

(assert (=> b!7063401 m!7784748))

(declare-fun m!7784750 () Bool)

(assert (=> b!7063379 m!7784750))

(declare-fun m!7784752 () Bool)

(assert (=> b!7063376 m!7784752))

(declare-fun m!7784754 () Bool)

(assert (=> b!7063376 m!7784754))

(declare-fun m!7784756 () Bool)

(assert (=> b!7063376 m!7784756))

(declare-fun m!7784758 () Bool)

(assert (=> b!7063376 m!7784758))

(assert (=> b!7063376 m!7784756))

(declare-fun m!7784760 () Bool)

(assert (=> b!7063376 m!7784760))

(assert (=> b!7063376 m!7784756))

(assert (=> b!7063376 m!7784756))

(declare-fun m!7784762 () Bool)

(assert (=> b!7063376 m!7784762))

(declare-fun m!7784764 () Bool)

(assert (=> b!7063407 m!7784764))

(declare-fun m!7784766 () Bool)

(assert (=> b!7063407 m!7784766))

(declare-fun m!7784768 () Bool)

(assert (=> b!7063387 m!7784768))

(assert (=> b!7063386 m!7784768))

(declare-fun m!7784770 () Bool)

(assert (=> b!7063395 m!7784770))

(assert (=> b!7063388 m!7784756))

(assert (=> b!7063388 m!7784756))

(declare-fun m!7784772 () Bool)

(assert (=> b!7063388 m!7784772))

(declare-fun m!7784774 () Bool)

(assert (=> b!7063388 m!7784774))

(declare-fun m!7784776 () Bool)

(assert (=> b!7063388 m!7784776))

(declare-fun m!7784778 () Bool)

(assert (=> b!7063388 m!7784778))

(assert (=> b!7063388 m!7784756))

(assert (=> b!7063399 m!7784770))

(assert (=> b!7063399 m!7784756))

(assert (=> b!7063374 m!7784756))

(declare-fun m!7784780 () Bool)

(assert (=> b!7063374 m!7784780))

(declare-fun m!7784782 () Bool)

(assert (=> b!7063374 m!7784782))

(assert (=> b!7063374 m!7784756))

(assert (=> b!7063374 m!7784752))

(declare-fun m!7784784 () Bool)

(assert (=> b!7063377 m!7784784))

(declare-fun m!7784786 () Bool)

(assert (=> b!7063377 m!7784786))

(declare-fun m!7784788 () Bool)

(assert (=> b!7063377 m!7784788))

(assert (=> b!7063377 m!7784756))

(declare-fun m!7784790 () Bool)

(assert (=> b!7063377 m!7784790))

(declare-fun m!7784792 () Bool)

(assert (=> b!7063377 m!7784792))

(assert (=> b!7063377 m!7784756))

(declare-fun m!7784794 () Bool)

(assert (=> b!7063377 m!7784794))

(declare-fun m!7784796 () Bool)

(assert (=> b!7063377 m!7784796))

(declare-fun m!7784798 () Bool)

(assert (=> b!7063377 m!7784798))

(declare-fun m!7784800 () Bool)

(assert (=> b!7063377 m!7784800))

(declare-fun m!7784802 () Bool)

(assert (=> b!7063377 m!7784802))

(declare-fun m!7784804 () Bool)

(assert (=> b!7063377 m!7784804))

(assert (=> b!7063377 m!7784756))

(assert (=> b!7063377 m!7784780))

(declare-fun m!7784806 () Bool)

(assert (=> b!7063377 m!7784806))

(assert (=> b!7063377 m!7784756))

(declare-fun m!7784808 () Bool)

(assert (=> b!7063375 m!7784808))

(declare-fun m!7784810 () Bool)

(assert (=> b!7063375 m!7784810))

(declare-fun m!7784812 () Bool)

(assert (=> b!7063375 m!7784812))

(declare-fun m!7784814 () Bool)

(assert (=> b!7063375 m!7784814))

(declare-fun m!7784816 () Bool)

(assert (=> b!7063375 m!7784816))

(assert (=> b!7063406 m!7784794))

(declare-fun m!7784818 () Bool)

(assert (=> b!7063406 m!7784818))

(declare-fun m!7784820 () Bool)

(assert (=> b!7063383 m!7784820))

(declare-fun m!7784822 () Bool)

(assert (=> b!7063400 m!7784822))

(declare-fun m!7784824 () Bool)

(assert (=> b!7063400 m!7784824))

(declare-fun m!7784826 () Bool)

(assert (=> b!7063400 m!7784826))

(declare-fun m!7784828 () Bool)

(assert (=> b!7063400 m!7784828))

(assert (=> b!7063398 m!7784770))

(assert (=> b!7063398 m!7784756))

(declare-fun m!7784830 () Bool)

(assert (=> b!7063381 m!7784830))

(assert (=> b!7063381 m!7784756))

(declare-fun m!7784832 () Bool)

(assert (=> b!7063392 m!7784832))

(declare-fun m!7784834 () Bool)

(assert (=> b!7063391 m!7784834))

(declare-fun m!7784836 () Bool)

(assert (=> b!7063393 m!7784836))

(assert (=> b!7063393 m!7784826))

(declare-fun m!7784838 () Bool)

(assert (=> b!7063393 m!7784838))

(declare-fun m!7784840 () Bool)

(assert (=> b!7063393 m!7784840))

(declare-fun m!7784842 () Bool)

(assert (=> b!7063393 m!7784842))

(declare-fun m!7784844 () Bool)

(assert (=> setNonEmpty!50049 m!7784844))

(declare-fun m!7784846 () Bool)

(assert (=> b!7063384 m!7784846))

(declare-fun m!7784848 () Bool)

(assert (=> b!7063396 m!7784848))

(declare-fun m!7784850 () Bool)

(assert (=> b!7063396 m!7784850))

(declare-fun m!7784852 () Bool)

(assert (=> b!7063396 m!7784852))

(declare-fun m!7784854 () Bool)

(assert (=> b!7063396 m!7784854))

(declare-fun m!7784856 () Bool)

(assert (=> b!7063396 m!7784856))

(declare-fun m!7784858 () Bool)

(assert (=> b!7063405 m!7784858))

(declare-fun m!7784860 () Bool)

(assert (=> b!7063405 m!7784860))

(declare-fun m!7784862 () Bool)

(assert (=> b!7063405 m!7784862))

(declare-fun m!7784864 () Bool)

(assert (=> b!7063405 m!7784864))

(declare-fun m!7784866 () Bool)

(assert (=> b!7063405 m!7784866))

(declare-fun m!7784868 () Bool)

(assert (=> b!7063405 m!7784868))

(declare-fun m!7784870 () Bool)

(assert (=> start!685492 m!7784870))

(declare-fun m!7784872 () Bool)

(assert (=> start!685492 m!7784872))

(declare-fun m!7784874 () Bool)

(assert (=> start!685492 m!7784874))

(assert (=> b!7063373 m!7784794))

(assert (=> b!7063373 m!7784806))

(declare-fun m!7784876 () Bool)

(assert (=> b!7063373 m!7784876))

(declare-fun m!7784878 () Bool)

(assert (=> b!7063373 m!7784878))

(declare-fun m!7784880 () Bool)

(assert (=> b!7063373 m!7784880))

(assert (=> b!7063373 m!7784786))

(declare-fun m!7784882 () Bool)

(assert (=> b!7063403 m!7784882))

(declare-fun m!7784884 () Bool)

(assert (=> b!7063403 m!7784884))

(declare-fun m!7784886 () Bool)

(assert (=> b!7063403 m!7784886))

(declare-fun m!7784888 () Bool)

(assert (=> b!7063403 m!7784888))

(declare-fun m!7784890 () Bool)

(assert (=> b!7063403 m!7784890))

(declare-fun m!7784892 () Bool)

(assert (=> b!7063403 m!7784892))

(declare-fun m!7784894 () Bool)

(assert (=> b!7063404 m!7784894))

(assert (=> b!7063404 m!7784826))

(declare-fun m!7784896 () Bool)

(assert (=> b!7063390 m!7784896))

(declare-fun m!7784898 () Bool)

(assert (=> b!7063378 m!7784898))

(assert (=> b!7063378 m!7784898))

(declare-fun m!7784900 () Bool)

(assert (=> b!7063378 m!7784900))

(declare-fun m!7784902 () Bool)

(assert (=> b!7063378 m!7784902))

(check-sat (not b!7063404) (not b!7063395) (not b!7063401) (not b!7063388) (not b!7063379) (not b!7063392) (not b!7063399) (not b!7063407) (not b!7063405) (not b!7063391) (not b!7063376) (not b!7063377) (not b!7063402) (not b!7063383) (not b!7063400) (not setNonEmpty!50049) (not b!7063378) (not b!7063384) (not b!7063373) (not b!7063398) (not b!7063381) (not b!7063385) (not start!685492) tp_is_empty!44431 (not b!7063396) (not b!7063386) (not b!7063375) (not b!7063374) (not b!7063393) (not b!7063406) (not b!7063382) (not b!7063403) (not b!7063387))
(check-sat)
