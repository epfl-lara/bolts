; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!686928 () Bool)

(assert start!686928)

(declare-fun b!7071584 () Bool)

(assert (=> b!7071584 true))

(declare-fun b!7071571 () Bool)

(assert (=> b!7071571 true))

(declare-fun b!7071572 () Bool)

(assert (=> b!7071572 true))

(declare-fun res!2888041 () Bool)

(declare-fun e!4251434 () Bool)

(assert (=> start!686928 (=> (not res!2888041) (not e!4251434))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35556 0))(
  ( (C!35557 (val!27480 Int)) )
))
(declare-datatypes ((Regex!17643 0))(
  ( (ElementMatch!17643 (c!1319058 C!35556)) (Concat!26488 (regOne!35798 Regex!17643) (regTwo!35798 Regex!17643)) (EmptyExpr!17643) (Star!17643 (reg!17972 Regex!17643)) (EmptyLang!17643) (Union!17643 (regOne!35799 Regex!17643) (regTwo!35799 Regex!17643)) )
))
(declare-datatypes ((List!68455 0))(
  ( (Nil!68331) (Cons!68331 (h!74779 Regex!17643) (t!382238 List!68455)) )
))
(declare-datatypes ((Context!13278 0))(
  ( (Context!13279 (exprs!7139 List!68455)) )
))
(declare-fun lt!2545575 () (InoxSet Context!13278))

(declare-datatypes ((List!68456 0))(
  ( (Nil!68332) (Cons!68332 (h!74780 C!35556) (t!382239 List!68456)) )
))
(declare-fun s!7408 () List!68456)

(declare-fun matchZipper!3183 ((InoxSet Context!13278) List!68456) Bool)

(assert (=> start!686928 (= res!2888041 (matchZipper!3183 lt!2545575 s!7408))))

(declare-fun z1!570 () (InoxSet Context!13278))

(declare-fun ct2!306 () Context!13278)

(declare-fun appendTo!764 ((InoxSet Context!13278) Context!13278) (InoxSet Context!13278))

(assert (=> start!686928 (= lt!2545575 (appendTo!764 z1!570 ct2!306))))

(assert (=> start!686928 e!4251434))

(declare-fun condSetEmpty!50249 () Bool)

(assert (=> start!686928 (= condSetEmpty!50249 (= z1!570 ((as const (Array Context!13278 Bool)) false)))))

(declare-fun setRes!50249 () Bool)

(assert (=> start!686928 setRes!50249))

(declare-fun e!4251421 () Bool)

(declare-fun inv!86966 (Context!13278) Bool)

(assert (=> start!686928 (and (inv!86966 ct2!306) e!4251421)))

(declare-fun e!4251418 () Bool)

(assert (=> start!686928 e!4251418))

(declare-fun b!7071565 () Bool)

(declare-fun res!2888044 () Bool)

(declare-fun e!4251425 () Bool)

(assert (=> b!7071565 (=> res!2888044 e!4251425)))

(declare-fun lt!2545565 () Context!13278)

(declare-fun isEmpty!39879 (List!68455) Bool)

(assert (=> b!7071565 (= res!2888044 (isEmpty!39879 (exprs!7139 lt!2545565)))))

(declare-fun b!7071566 () Bool)

(declare-fun tp!1942269 () Bool)

(assert (=> b!7071566 (= e!4251421 tp!1942269)))

(declare-fun b!7071567 () Bool)

(declare-fun e!4251420 () Bool)

(declare-fun e!4251437 () Bool)

(assert (=> b!7071567 (= e!4251420 e!4251437)))

(declare-fun res!2888045 () Bool)

(assert (=> b!7071567 (=> res!2888045 e!4251437)))

(declare-fun e!4251430 () Bool)

(assert (=> b!7071567 (= res!2888045 e!4251430)))

(declare-fun res!2888051 () Bool)

(assert (=> b!7071567 (=> (not res!2888051) (not e!4251430))))

(declare-fun lt!2545603 () Bool)

(assert (=> b!7071567 (= res!2888051 (not lt!2545603))))

(declare-fun lt!2545592 () (InoxSet Context!13278))

(declare-fun lt!2545600 () List!68456)

(assert (=> b!7071567 (= lt!2545603 (matchZipper!3183 lt!2545592 lt!2545600))))

(declare-datatypes ((tuple2!68260 0))(
  ( (tuple2!68261 (_1!37433 List!68456) (_2!37433 List!68456)) )
))
(declare-fun lt!2545604 () tuple2!68260)

(assert (=> b!7071567 (= lt!2545600 (Cons!68332 (h!74780 s!7408) (_1!37433 lt!2545604)))))

(declare-fun lt!2545572 () (InoxSet Context!13278))

(assert (=> b!7071567 (matchZipper!3183 lt!2545572 (_1!37433 lt!2545604))))

(declare-datatypes ((Unit!161996 0))(
  ( (Unit!161997) )
))
(declare-fun lt!2545611 () Unit!161996)

(declare-fun lt!2545590 () (InoxSet Context!13278))

(declare-fun lt!2545601 () (InoxSet Context!13278))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1656 ((InoxSet Context!13278) (InoxSet Context!13278) List!68456) Unit!161996)

(assert (=> b!7071567 (= lt!2545611 (lemmaZipperConcatMatchesSameAsBothZippers!1656 lt!2545590 lt!2545601 (_1!37433 lt!2545604)))))

(declare-fun b!7071568 () Bool)

(assert (=> b!7071568 (= e!4251430 (not (matchZipper!3183 lt!2545601 (_1!37433 lt!2545604))))))

(declare-fun b!7071569 () Bool)

(declare-fun e!4251432 () Bool)

(declare-fun e!4251429 () Bool)

(assert (=> b!7071569 (= e!4251432 e!4251429)))

(declare-fun res!2888040 () Bool)

(assert (=> b!7071569 (=> res!2888040 e!4251429)))

(declare-fun lt!2545587 () (InoxSet Context!13278))

(declare-fun lt!2545595 () (InoxSet Context!13278))

(assert (=> b!7071569 (= res!2888040 (not (= lt!2545587 lt!2545595)))))

(declare-fun lt!2545569 () (InoxSet Context!13278))

(declare-fun lt!2545568 () (InoxSet Context!13278))

(assert (=> b!7071569 (= lt!2545595 ((_ map or) lt!2545569 lt!2545568))))

(declare-fun lt!2545574 () Context!13278)

(declare-fun derivationStepZipperUp!2227 (Context!13278 C!35556) (InoxSet Context!13278))

(assert (=> b!7071569 (= lt!2545568 (derivationStepZipperUp!2227 lt!2545574 (h!74780 s!7408)))))

(declare-fun derivationStepZipperDown!2277 (Regex!17643 Context!13278 C!35556) (InoxSet Context!13278))

(assert (=> b!7071569 (= lt!2545569 (derivationStepZipperDown!2277 (h!74779 (exprs!7139 lt!2545565)) lt!2545574 (h!74780 s!7408)))))

(declare-fun lt!2545584 () List!68455)

(declare-fun ++!15769 (List!68455 List!68455) List!68455)

(assert (=> b!7071569 (= lt!2545574 (Context!13279 (++!15769 lt!2545584 (exprs!7139 ct2!306))))))

(declare-fun lambda!425478 () Int)

(declare-fun lt!2545598 () Unit!161996)

(declare-fun lemmaConcatPreservesForall!954 (List!68455 List!68455 Int) Unit!161996)

(assert (=> b!7071569 (= lt!2545598 (lemmaConcatPreservesForall!954 lt!2545584 (exprs!7139 ct2!306) lambda!425478))))

(declare-fun lt!2545571 () Unit!161996)

(assert (=> b!7071569 (= lt!2545571 (lemmaConcatPreservesForall!954 lt!2545584 (exprs!7139 ct2!306) lambda!425478))))

(declare-fun tp!1942268 () Bool)

(declare-fun setNonEmpty!50249 () Bool)

(declare-fun setElem!50249 () Context!13278)

(declare-fun e!4251433 () Bool)

(assert (=> setNonEmpty!50249 (= setRes!50249 (and tp!1942268 (inv!86966 setElem!50249) e!4251433))))

(declare-fun setRest!50249 () (InoxSet Context!13278))

(assert (=> setNonEmpty!50249 (= z1!570 ((_ map or) (store ((as const (Array Context!13278 Bool)) false) setElem!50249 true) setRest!50249))))

(declare-fun b!7071570 () Bool)

(declare-fun res!2888038 () Bool)

(assert (=> b!7071570 (=> res!2888038 e!4251425)))

(get-info :version)

(assert (=> b!7071570 (= res!2888038 (not ((_ is Cons!68331) (exprs!7139 lt!2545565))))))

(declare-fun e!4251423 () Bool)

(declare-fun e!4251428 () Bool)

(assert (=> b!7071571 (= e!4251423 e!4251428)))

(declare-fun res!2888050 () Bool)

(assert (=> b!7071571 (=> res!2888050 e!4251428)))

(declare-fun lt!2545589 () Context!13278)

(declare-fun lt!2545597 () Context!13278)

(assert (=> b!7071571 (= res!2888050 (or (not (= lt!2545589 lt!2545597)) (not (select z1!570 lt!2545565))))))

(assert (=> b!7071571 (= lt!2545589 (Context!13279 (++!15769 (exprs!7139 lt!2545565) (exprs!7139 ct2!306))))))

(declare-fun lt!2545599 () Unit!161996)

(assert (=> b!7071571 (= lt!2545599 (lemmaConcatPreservesForall!954 (exprs!7139 lt!2545565) (exprs!7139 ct2!306) lambda!425478))))

(declare-fun lambda!425477 () Int)

(declare-fun mapPost2!472 ((InoxSet Context!13278) Int Context!13278) Context!13278)

(assert (=> b!7071571 (= lt!2545565 (mapPost2!472 z1!570 lambda!425477 lt!2545597))))

(declare-fun e!4251435 () Bool)

(assert (=> b!7071572 (= e!4251435 e!4251425)))

(declare-fun res!2888052 () Bool)

(assert (=> b!7071572 (=> res!2888052 e!4251425)))

(declare-fun lt!2545576 () (InoxSet Context!13278))

(declare-fun derivationStepZipper!3093 ((InoxSet Context!13278) C!35556) (InoxSet Context!13278))

(assert (=> b!7071572 (= res!2888052 (not (= (derivationStepZipper!3093 lt!2545576 (h!74780 s!7408)) lt!2545587)))))

(declare-fun lambda!425479 () Int)

(declare-fun flatMap!2569 ((InoxSet Context!13278) Int) (InoxSet Context!13278))

(assert (=> b!7071572 (= (flatMap!2569 lt!2545576 lambda!425479) (derivationStepZipperUp!2227 lt!2545589 (h!74780 s!7408)))))

(declare-fun lt!2545606 () Unit!161996)

(declare-fun lemmaFlatMapOnSingletonSet!2078 ((InoxSet Context!13278) Context!13278 Int) Unit!161996)

(assert (=> b!7071572 (= lt!2545606 (lemmaFlatMapOnSingletonSet!2078 lt!2545576 lt!2545589 lambda!425479))))

(assert (=> b!7071572 (= lt!2545587 (derivationStepZipperUp!2227 lt!2545589 (h!74780 s!7408)))))

(declare-fun lt!2545609 () Unit!161996)

(assert (=> b!7071572 (= lt!2545609 (lemmaConcatPreservesForall!954 (exprs!7139 lt!2545565) (exprs!7139 ct2!306) lambda!425478))))

(declare-fun b!7071573 () Bool)

(declare-fun res!2888056 () Bool)

(declare-fun e!4251424 () Bool)

(assert (=> b!7071573 (=> res!2888056 e!4251424)))

(declare-fun lt!2545563 () (InoxSet Context!13278))

(assert (=> b!7071573 (= res!2888056 (not (matchZipper!3183 lt!2545563 (_2!37433 lt!2545604))))))

(declare-fun b!7071574 () Bool)

(declare-fun res!2888058 () Bool)

(assert (=> b!7071574 (=> (not res!2888058) (not e!4251434))))

(assert (=> b!7071574 (= res!2888058 ((_ is Cons!68332) s!7408))))

(declare-fun b!7071575 () Bool)

(declare-fun e!4251436 () Bool)

(assert (=> b!7071575 (= e!4251436 e!4251424)))

(declare-fun res!2888037 () Bool)

(assert (=> b!7071575 (=> res!2888037 e!4251424)))

(assert (=> b!7071575 (= res!2888037 (not (matchZipper!3183 lt!2545590 (_1!37433 lt!2545604))))))

(declare-datatypes ((Option!16962 0))(
  ( (None!16961) (Some!16961 (v!53255 tuple2!68260)) )
))
(declare-fun lt!2545602 () Option!16962)

(declare-fun get!23934 (Option!16962) tuple2!68260)

(assert (=> b!7071575 (= lt!2545604 (get!23934 lt!2545602))))

(declare-fun isDefined!13663 (Option!16962) Bool)

(assert (=> b!7071575 (isDefined!13663 lt!2545602)))

(declare-fun findConcatSeparationZippers!478 ((InoxSet Context!13278) (InoxSet Context!13278) List!68456 List!68456 List!68456) Option!16962)

(assert (=> b!7071575 (= lt!2545602 (findConcatSeparationZippers!478 lt!2545590 lt!2545563 Nil!68332 (t!382239 s!7408) (t!382239 s!7408)))))

(assert (=> b!7071575 (= lt!2545563 (store ((as const (Array Context!13278 Bool)) false) ct2!306 true))))

(declare-fun lt!2545582 () Unit!161996)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!466 ((InoxSet Context!13278) Context!13278 List!68456) Unit!161996)

(assert (=> b!7071575 (= lt!2545582 (lemmaConcatZipperMatchesStringThenFindConcatDefined!466 lt!2545590 ct2!306 (t!382239 s!7408)))))

(declare-fun lt!2545610 () Unit!161996)

(assert (=> b!7071575 (= lt!2545610 (lemmaConcatPreservesForall!954 lt!2545584 (exprs!7139 ct2!306) lambda!425478))))

(assert (=> b!7071575 (= lt!2545569 (appendTo!764 lt!2545590 ct2!306))))

(declare-fun lt!2545566 () Context!13278)

(assert (=> b!7071575 (= lt!2545590 (derivationStepZipperDown!2277 (h!74779 (exprs!7139 lt!2545565)) lt!2545566 (h!74780 s!7408)))))

(declare-fun lt!2545581 () Unit!161996)

(assert (=> b!7071575 (= lt!2545581 (lemmaConcatPreservesForall!954 lt!2545584 (exprs!7139 ct2!306) lambda!425478))))

(declare-fun lt!2545594 () Unit!161996)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!114 (Context!13278 Regex!17643 C!35556 Context!13278) Unit!161996)

(assert (=> b!7071575 (= lt!2545594 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!114 lt!2545566 (h!74779 (exprs!7139 lt!2545565)) (h!74780 s!7408) ct2!306))))

(declare-fun b!7071576 () Bool)

(declare-fun res!2888043 () Bool)

(assert (=> b!7071576 (=> res!2888043 e!4251423)))

(assert (=> b!7071576 (= res!2888043 (not (select lt!2545575 lt!2545597)))))

(declare-fun b!7071577 () Bool)

(declare-fun res!2888053 () Bool)

(assert (=> b!7071577 (=> res!2888053 e!4251437)))

(assert (=> b!7071577 (= res!2888053 (not lt!2545603))))

(declare-fun b!7071578 () Bool)

(declare-fun res!2888060 () Bool)

(declare-fun e!4251426 () Bool)

(assert (=> b!7071578 (=> res!2888060 e!4251426)))

(declare-fun lt!2545585 () Bool)

(assert (=> b!7071578 (= res!2888060 (not lt!2545585))))

(declare-fun b!7071579 () Bool)

(declare-fun tail!13825 (List!68455) List!68455)

(assert (=> b!7071579 (= e!4251437 (matchZipper!3183 lt!2545592 (Cons!68332 (h!74780 s!7408) (_1!37433 (get!23934 (findConcatSeparationZippers!478 (derivationStepZipperDown!2277 (h!74779 (exprs!7139 (mapPost2!472 z1!570 lambda!425477 lt!2545597))) (Context!13279 (tail!13825 (exprs!7139 (mapPost2!472 z1!570 lambda!425477 lt!2545597)))) (h!74780 s!7408)) lt!2545563 Nil!68332 (t!382239 s!7408) (t!382239 s!7408)))))))))

(assert (=> b!7071579 (isDefined!13663 (findConcatSeparationZippers!478 lt!2545592 lt!2545563 Nil!68332 s!7408 s!7408))))

(declare-fun lt!2545591 () Unit!161996)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!70 ((InoxSet Context!13278) (InoxSet Context!13278) List!68456 List!68456 List!68456 List!68456 List!68456) Unit!161996)

(assert (=> b!7071579 (= lt!2545591 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!70 lt!2545592 lt!2545563 lt!2545600 (_2!37433 lt!2545604) s!7408 Nil!68332 s!7408))))

(declare-fun b!7071580 () Bool)

(declare-fun e!4251422 () Bool)

(assert (=> b!7071580 (= e!4251426 e!4251422)))

(declare-fun res!2888039 () Bool)

(assert (=> b!7071580 (=> res!2888039 e!4251422)))

(assert (=> b!7071580 (= res!2888039 (matchZipper!3183 lt!2545568 (t!382239 s!7408)))))

(declare-fun lt!2545608 () Unit!161996)

(assert (=> b!7071580 (= lt!2545608 (lemmaConcatPreservesForall!954 lt!2545584 (exprs!7139 ct2!306) lambda!425478))))

(declare-fun b!7071581 () Bool)

(declare-fun e!4251431 () Bool)

(assert (=> b!7071581 (= e!4251424 e!4251431)))

(declare-fun res!2888061 () Bool)

(assert (=> b!7071581 (=> res!2888061 e!4251431)))

(declare-fun lt!2545564 () (InoxSet Context!13278))

(declare-fun lt!2545573 () (InoxSet Context!13278))

(assert (=> b!7071581 (= res!2888061 (not (= lt!2545564 lt!2545573)))))

(assert (=> b!7071581 (= (flatMap!2569 lt!2545592 lambda!425479) (derivationStepZipperUp!2227 lt!2545565 (h!74780 s!7408)))))

(declare-fun lt!2545607 () Unit!161996)

(assert (=> b!7071581 (= lt!2545607 (lemmaFlatMapOnSingletonSet!2078 lt!2545592 lt!2545565 lambda!425479))))

(assert (=> b!7071581 (= lt!2545573 (derivationStepZipperUp!2227 lt!2545565 (h!74780 s!7408)))))

(assert (=> b!7071581 (= lt!2545564 (derivationStepZipper!3093 lt!2545592 (h!74780 s!7408)))))

(assert (=> b!7071581 (= lt!2545592 (store ((as const (Array Context!13278 Bool)) false) lt!2545565 true))))

(declare-fun b!7071582 () Bool)

(declare-fun e!4251427 () Bool)

(assert (=> b!7071582 (= e!4251427 (matchZipper!3183 lt!2545568 (t!382239 s!7408)))))

(declare-fun b!7071583 () Bool)

(declare-fun e!4251419 () Bool)

(assert (=> b!7071583 (= e!4251419 (not (matchZipper!3183 lt!2545568 (t!382239 s!7408))))))

(declare-fun lt!2545583 () Unit!161996)

(assert (=> b!7071583 (= lt!2545583 (lemmaConcatPreservesForall!954 lt!2545584 (exprs!7139 ct2!306) lambda!425478))))

(assert (=> b!7071584 (= e!4251434 (not e!4251423))))

(declare-fun res!2888055 () Bool)

(assert (=> b!7071584 (=> res!2888055 e!4251423)))

(declare-fun lt!2545605 () (InoxSet Context!13278))

(assert (=> b!7071584 (= res!2888055 (not (matchZipper!3183 lt!2545605 s!7408)))))

(assert (=> b!7071584 (= lt!2545605 (store ((as const (Array Context!13278 Bool)) false) lt!2545597 true))))

(declare-fun lambda!425476 () Int)

(declare-fun getWitness!1744 ((InoxSet Context!13278) Int) Context!13278)

(assert (=> b!7071584 (= lt!2545597 (getWitness!1744 lt!2545575 lambda!425476))))

(declare-datatypes ((List!68457 0))(
  ( (Nil!68333) (Cons!68333 (h!74781 Context!13278) (t!382240 List!68457)) )
))
(declare-fun lt!2545578 () List!68457)

(declare-fun exists!3687 (List!68457 Int) Bool)

(assert (=> b!7071584 (exists!3687 lt!2545578 lambda!425476)))

(declare-fun lt!2545593 () Unit!161996)

(declare-fun lemmaZipperMatchesExistsMatchingContext!564 (List!68457 List!68456) Unit!161996)

(assert (=> b!7071584 (= lt!2545593 (lemmaZipperMatchesExistsMatchingContext!564 lt!2545578 s!7408))))

(declare-fun toList!10984 ((InoxSet Context!13278)) List!68457)

(assert (=> b!7071584 (= lt!2545578 (toList!10984 lt!2545575))))

(declare-fun setIsEmpty!50249 () Bool)

(assert (=> setIsEmpty!50249 setRes!50249))

(declare-fun b!7071585 () Bool)

(assert (=> b!7071585 (= e!4251422 e!4251436)))

(declare-fun res!2888057 () Bool)

(assert (=> b!7071585 (=> res!2888057 e!4251436)))

(declare-fun lt!2545570 () Bool)

(assert (=> b!7071585 (= res!2888057 (not lt!2545570))))

(declare-fun lt!2545586 () Unit!161996)

(assert (=> b!7071585 (= lt!2545586 (lemmaConcatPreservesForall!954 lt!2545584 (exprs!7139 ct2!306) lambda!425478))))

(declare-fun lt!2545596 () Unit!161996)

(assert (=> b!7071585 (= lt!2545596 (lemmaConcatPreservesForall!954 lt!2545584 (exprs!7139 ct2!306) lambda!425478))))

(declare-fun b!7071586 () Bool)

(assert (=> b!7071586 (= e!4251425 e!4251432)))

(declare-fun res!2888047 () Bool)

(assert (=> b!7071586 (=> res!2888047 e!4251432)))

(declare-fun nullable!7326 (Regex!17643) Bool)

(assert (=> b!7071586 (= res!2888047 (not (nullable!7326 (h!74779 (exprs!7139 lt!2545565)))))))

(assert (=> b!7071586 (= lt!2545566 (Context!13279 lt!2545584))))

(assert (=> b!7071586 (= lt!2545584 (tail!13825 (exprs!7139 lt!2545565)))))

(declare-fun b!7071587 () Bool)

(assert (=> b!7071587 (= e!4251429 e!4251426)))

(declare-fun res!2888042 () Bool)

(assert (=> b!7071587 (=> res!2888042 e!4251426)))

(assert (=> b!7071587 (= res!2888042 e!4251419)))

(declare-fun res!2888049 () Bool)

(assert (=> b!7071587 (=> (not res!2888049) (not e!4251419))))

(assert (=> b!7071587 (= res!2888049 (not (= lt!2545585 lt!2545570)))))

(assert (=> b!7071587 (= lt!2545585 (matchZipper!3183 lt!2545587 (t!382239 s!7408)))))

(declare-fun lt!2545577 () Unit!161996)

(assert (=> b!7071587 (= lt!2545577 (lemmaConcatPreservesForall!954 lt!2545584 (exprs!7139 ct2!306) lambda!425478))))

(assert (=> b!7071587 (= (matchZipper!3183 lt!2545595 (t!382239 s!7408)) e!4251427)))

(declare-fun res!2888059 () Bool)

(assert (=> b!7071587 (=> res!2888059 e!4251427)))

(assert (=> b!7071587 (= res!2888059 lt!2545570)))

(assert (=> b!7071587 (= lt!2545570 (matchZipper!3183 lt!2545569 (t!382239 s!7408)))))

(declare-fun lt!2545579 () Unit!161996)

(assert (=> b!7071587 (= lt!2545579 (lemmaZipperConcatMatchesSameAsBothZippers!1656 lt!2545569 lt!2545568 (t!382239 s!7408)))))

(declare-fun lt!2545580 () Unit!161996)

(assert (=> b!7071587 (= lt!2545580 (lemmaConcatPreservesForall!954 lt!2545584 (exprs!7139 ct2!306) lambda!425478))))

(declare-fun lt!2545567 () Unit!161996)

(assert (=> b!7071587 (= lt!2545567 (lemmaConcatPreservesForall!954 lt!2545584 (exprs!7139 ct2!306) lambda!425478))))

(declare-fun b!7071588 () Bool)

(assert (=> b!7071588 (= e!4251428 e!4251435)))

(declare-fun res!2888054 () Bool)

(assert (=> b!7071588 (=> res!2888054 e!4251435)))

(assert (=> b!7071588 (= res!2888054 (not (= lt!2545576 lt!2545605)))))

(assert (=> b!7071588 (= lt!2545576 (store ((as const (Array Context!13278 Bool)) false) lt!2545589 true))))

(declare-fun lt!2545588 () Unit!161996)

(assert (=> b!7071588 (= lt!2545588 (lemmaConcatPreservesForall!954 (exprs!7139 lt!2545565) (exprs!7139 ct2!306) lambda!425478))))

(declare-fun b!7071589 () Bool)

(assert (=> b!7071589 (= e!4251431 e!4251420)))

(declare-fun res!2888048 () Bool)

(assert (=> b!7071589 (=> res!2888048 e!4251420)))

(assert (=> b!7071589 (= res!2888048 (not (= lt!2545564 lt!2545572)))))

(assert (=> b!7071589 (= lt!2545572 ((_ map or) lt!2545590 lt!2545601))))

(assert (=> b!7071589 (= lt!2545601 (derivationStepZipperUp!2227 lt!2545566 (h!74780 s!7408)))))

(declare-fun b!7071590 () Bool)

(declare-fun res!2888046 () Bool)

(assert (=> b!7071590 (=> res!2888046 e!4251424)))

(declare-fun ++!15770 (List!68456 List!68456) List!68456)

(assert (=> b!7071590 (= res!2888046 (not (= (++!15770 (_1!37433 lt!2545604) (_2!37433 lt!2545604)) (t!382239 s!7408))))))

(declare-fun b!7071591 () Bool)

(declare-fun tp!1942267 () Bool)

(assert (=> b!7071591 (= e!4251433 tp!1942267)))

(declare-fun b!7071592 () Bool)

(declare-fun tp_is_empty!44511 () Bool)

(declare-fun tp!1942270 () Bool)

(assert (=> b!7071592 (= e!4251418 (and tp_is_empty!44511 tp!1942270))))

(assert (= (and start!686928 res!2888041) b!7071574))

(assert (= (and b!7071574 res!2888058) b!7071584))

(assert (= (and b!7071584 (not res!2888055)) b!7071576))

(assert (= (and b!7071576 (not res!2888043)) b!7071571))

(assert (= (and b!7071571 (not res!2888050)) b!7071588))

(assert (= (and b!7071588 (not res!2888054)) b!7071572))

(assert (= (and b!7071572 (not res!2888052)) b!7071570))

(assert (= (and b!7071570 (not res!2888038)) b!7071565))

(assert (= (and b!7071565 (not res!2888044)) b!7071586))

(assert (= (and b!7071586 (not res!2888047)) b!7071569))

(assert (= (and b!7071569 (not res!2888040)) b!7071587))

(assert (= (and b!7071587 (not res!2888059)) b!7071582))

(assert (= (and b!7071587 res!2888049) b!7071583))

(assert (= (and b!7071587 (not res!2888042)) b!7071578))

(assert (= (and b!7071578 (not res!2888060)) b!7071580))

(assert (= (and b!7071580 (not res!2888039)) b!7071585))

(assert (= (and b!7071585 (not res!2888057)) b!7071575))

(assert (= (and b!7071575 (not res!2888037)) b!7071573))

(assert (= (and b!7071573 (not res!2888056)) b!7071590))

(assert (= (and b!7071590 (not res!2888046)) b!7071581))

(assert (= (and b!7071581 (not res!2888061)) b!7071589))

(assert (= (and b!7071589 (not res!2888048)) b!7071567))

(assert (= (and b!7071567 res!2888051) b!7071568))

(assert (= (and b!7071567 (not res!2888045)) b!7071577))

(assert (= (and b!7071577 (not res!2888053)) b!7071579))

(assert (= (and start!686928 condSetEmpty!50249) setIsEmpty!50249))

(assert (= (and start!686928 (not condSetEmpty!50249)) setNonEmpty!50249))

(assert (= setNonEmpty!50249 b!7071591))

(assert (= start!686928 b!7071566))

(assert (= (and start!686928 ((_ is Cons!68332) s!7408)) b!7071592))

(declare-fun m!7797232 () Bool)

(assert (=> b!7071573 m!7797232))

(declare-fun m!7797234 () Bool)

(assert (=> b!7071568 m!7797234))

(declare-fun m!7797236 () Bool)

(assert (=> b!7071567 m!7797236))

(declare-fun m!7797238 () Bool)

(assert (=> b!7071567 m!7797238))

(declare-fun m!7797240 () Bool)

(assert (=> b!7071567 m!7797240))

(declare-fun m!7797242 () Bool)

(assert (=> b!7071580 m!7797242))

(declare-fun m!7797244 () Bool)

(assert (=> b!7071580 m!7797244))

(declare-fun m!7797246 () Bool)

(assert (=> b!7071572 m!7797246))

(declare-fun m!7797248 () Bool)

(assert (=> b!7071572 m!7797248))

(declare-fun m!7797250 () Bool)

(assert (=> b!7071572 m!7797250))

(declare-fun m!7797252 () Bool)

(assert (=> b!7071572 m!7797252))

(declare-fun m!7797254 () Bool)

(assert (=> b!7071572 m!7797254))

(declare-fun m!7797256 () Bool)

(assert (=> b!7071588 m!7797256))

(assert (=> b!7071588 m!7797250))

(declare-fun m!7797258 () Bool)

(assert (=> b!7071587 m!7797258))

(assert (=> b!7071587 m!7797244))

(assert (=> b!7071587 m!7797244))

(declare-fun m!7797260 () Bool)

(assert (=> b!7071587 m!7797260))

(declare-fun m!7797262 () Bool)

(assert (=> b!7071587 m!7797262))

(assert (=> b!7071587 m!7797244))

(declare-fun m!7797264 () Bool)

(assert (=> b!7071587 m!7797264))

(declare-fun m!7797266 () Bool)

(assert (=> b!7071569 m!7797266))

(assert (=> b!7071569 m!7797244))

(declare-fun m!7797268 () Bool)

(assert (=> b!7071569 m!7797268))

(assert (=> b!7071569 m!7797244))

(declare-fun m!7797270 () Bool)

(assert (=> b!7071569 m!7797270))

(assert (=> b!7071583 m!7797242))

(assert (=> b!7071583 m!7797244))

(assert (=> b!7071582 m!7797242))

(declare-fun m!7797272 () Bool)

(assert (=> b!7071584 m!7797272))

(declare-fun m!7797274 () Bool)

(assert (=> b!7071584 m!7797274))

(declare-fun m!7797276 () Bool)

(assert (=> b!7071584 m!7797276))

(declare-fun m!7797278 () Bool)

(assert (=> b!7071584 m!7797278))

(declare-fun m!7797280 () Bool)

(assert (=> b!7071584 m!7797280))

(declare-fun m!7797282 () Bool)

(assert (=> b!7071584 m!7797282))

(assert (=> b!7071585 m!7797244))

(assert (=> b!7071585 m!7797244))

(declare-fun m!7797284 () Bool)

(assert (=> b!7071589 m!7797284))

(declare-fun m!7797286 () Bool)

(assert (=> start!686928 m!7797286))

(declare-fun m!7797288 () Bool)

(assert (=> start!686928 m!7797288))

(declare-fun m!7797290 () Bool)

(assert (=> start!686928 m!7797290))

(declare-fun m!7797292 () Bool)

(assert (=> b!7071576 m!7797292))

(declare-fun m!7797294 () Bool)

(assert (=> setNonEmpty!50249 m!7797294))

(declare-fun m!7797296 () Bool)

(assert (=> b!7071586 m!7797296))

(declare-fun m!7797298 () Bool)

(assert (=> b!7071586 m!7797298))

(declare-fun m!7797300 () Bool)

(assert (=> b!7071571 m!7797300))

(declare-fun m!7797302 () Bool)

(assert (=> b!7071571 m!7797302))

(assert (=> b!7071571 m!7797250))

(declare-fun m!7797304 () Bool)

(assert (=> b!7071571 m!7797304))

(declare-fun m!7797306 () Bool)

(assert (=> b!7071565 m!7797306))

(declare-fun m!7797308 () Bool)

(assert (=> b!7071581 m!7797308))

(declare-fun m!7797310 () Bool)

(assert (=> b!7071581 m!7797310))

(declare-fun m!7797312 () Bool)

(assert (=> b!7071581 m!7797312))

(declare-fun m!7797314 () Bool)

(assert (=> b!7071581 m!7797314))

(declare-fun m!7797316 () Bool)

(assert (=> b!7071581 m!7797316))

(declare-fun m!7797318 () Bool)

(assert (=> b!7071579 m!7797318))

(declare-fun m!7797320 () Bool)

(assert (=> b!7071579 m!7797320))

(declare-fun m!7797322 () Bool)

(assert (=> b!7071579 m!7797322))

(declare-fun m!7797324 () Bool)

(assert (=> b!7071579 m!7797324))

(declare-fun m!7797326 () Bool)

(assert (=> b!7071579 m!7797326))

(declare-fun m!7797328 () Bool)

(assert (=> b!7071579 m!7797328))

(assert (=> b!7071579 m!7797328))

(declare-fun m!7797330 () Bool)

(assert (=> b!7071579 m!7797330))

(assert (=> b!7071579 m!7797304))

(assert (=> b!7071579 m!7797304))

(declare-fun m!7797332 () Bool)

(assert (=> b!7071579 m!7797332))

(assert (=> b!7071579 m!7797332))

(assert (=> b!7071579 m!7797322))

(declare-fun m!7797334 () Bool)

(assert (=> b!7071575 m!7797334))

(declare-fun m!7797336 () Bool)

(assert (=> b!7071575 m!7797336))

(declare-fun m!7797338 () Bool)

(assert (=> b!7071575 m!7797338))

(declare-fun m!7797340 () Bool)

(assert (=> b!7071575 m!7797340))

(declare-fun m!7797342 () Bool)

(assert (=> b!7071575 m!7797342))

(assert (=> b!7071575 m!7797244))

(declare-fun m!7797344 () Bool)

(assert (=> b!7071575 m!7797344))

(declare-fun m!7797346 () Bool)

(assert (=> b!7071575 m!7797346))

(declare-fun m!7797348 () Bool)

(assert (=> b!7071575 m!7797348))

(declare-fun m!7797350 () Bool)

(assert (=> b!7071575 m!7797350))

(assert (=> b!7071575 m!7797244))

(declare-fun m!7797352 () Bool)

(assert (=> b!7071590 m!7797352))

(check-sat tp_is_empty!44511 (not b!7071592) (not b!7071589) (not b!7071565) (not b!7071567) (not start!686928) (not b!7071591) (not b!7071583) (not b!7071571) (not b!7071584) (not b!7071566) (not b!7071590) (not b!7071573) (not b!7071580) (not b!7071569) (not b!7071582) (not b!7071572) (not b!7071581) (not b!7071568) (not b!7071585) (not b!7071579) (not b!7071587) (not b!7071588) (not b!7071586) (not b!7071575) (not setNonEmpty!50249))
(check-sat)
