; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!688744 () Bool)

(assert start!688744)

(declare-fun b!7080694 () Bool)

(assert (=> b!7080694 true))

(declare-fun b!7080696 () Bool)

(assert (=> b!7080696 true))

(declare-fun b!7080686 () Bool)

(assert (=> b!7080686 true))

(declare-fun bs!1882090 () Bool)

(declare-fun b!7080691 () Bool)

(assert (= bs!1882090 (and b!7080691 b!7080694)))

(declare-datatypes ((C!35644 0))(
  ( (C!35645 (val!27524 Int)) )
))
(declare-datatypes ((List!68587 0))(
  ( (Nil!68463) (Cons!68463 (h!74911 C!35644) (t!382372 List!68587)) )
))
(declare-fun lt!2552213 () List!68587)

(declare-fun lambda!427731 () Int)

(declare-fun s!7408 () List!68587)

(declare-fun lambda!427727 () Int)

(assert (=> bs!1882090 (= (= lt!2552213 s!7408) (= lambda!427731 lambda!427727))))

(assert (=> b!7080691 true))

(declare-fun res!2892359 () Bool)

(declare-fun e!4256858 () Bool)

(assert (=> start!688744 (=> (not res!2892359) (not e!4256858))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!17687 0))(
  ( (ElementMatch!17687 (c!1321544 C!35644)) (Concat!26532 (regOne!35886 Regex!17687) (regTwo!35886 Regex!17687)) (EmptyExpr!17687) (Star!17687 (reg!18016 Regex!17687)) (EmptyLang!17687) (Union!17687 (regOne!35887 Regex!17687) (regTwo!35887 Regex!17687)) )
))
(declare-datatypes ((List!68588 0))(
  ( (Nil!68464) (Cons!68464 (h!74912 Regex!17687) (t!382373 List!68588)) )
))
(declare-datatypes ((Context!13366 0))(
  ( (Context!13367 (exprs!7183 List!68588)) )
))
(declare-fun lt!2552223 () (InoxSet Context!13366))

(declare-fun matchZipper!3227 ((InoxSet Context!13366) List!68587) Bool)

(assert (=> start!688744 (= res!2892359 (matchZipper!3227 lt!2552223 s!7408))))

(declare-fun z1!570 () (InoxSet Context!13366))

(declare-fun ct2!306 () Context!13366)

(declare-fun appendTo!808 ((InoxSet Context!13366) Context!13366) (InoxSet Context!13366))

(assert (=> start!688744 (= lt!2552223 (appendTo!808 z1!570 ct2!306))))

(assert (=> start!688744 e!4256858))

(declare-fun condSetEmpty!50485 () Bool)

(assert (=> start!688744 (= condSetEmpty!50485 (= z1!570 ((as const (Array Context!13366 Bool)) false)))))

(declare-fun setRes!50485 () Bool)

(assert (=> start!688744 setRes!50485))

(declare-fun e!4256860 () Bool)

(declare-fun inv!87076 (Context!13366) Bool)

(assert (=> start!688744 (and (inv!87076 ct2!306) e!4256860)))

(declare-fun e!4256861 () Bool)

(assert (=> start!688744 e!4256861))

(declare-fun b!7080682 () Bool)

(declare-fun e!4256866 () Bool)

(declare-fun e!4256862 () Bool)

(assert (=> b!7080682 (= e!4256866 e!4256862)))

(declare-fun res!2892360 () Bool)

(assert (=> b!7080682 (=> res!2892360 e!4256862)))

(declare-fun lt!2552212 () (InoxSet Context!13366))

(declare-fun lt!2552228 () (InoxSet Context!13366))

(assert (=> b!7080682 (= res!2892360 (not (= lt!2552212 lt!2552228)))))

(declare-fun lt!2552218 () Context!13366)

(assert (=> b!7080682 (= lt!2552212 (store ((as const (Array Context!13366 Bool)) false) lt!2552218 true))))

(declare-datatypes ((Unit!162085 0))(
  ( (Unit!162086) )
))
(declare-fun lt!2552210 () Unit!162085)

(declare-fun lambda!427729 () Int)

(declare-fun lt!2552229 () Context!13366)

(declare-fun lemmaConcatPreservesForall!998 (List!68588 List!68588 Int) Unit!162085)

(assert (=> b!7080682 (= lt!2552210 (lemmaConcatPreservesForall!998 (exprs!7183 lt!2552229) (exprs!7183 ct2!306) lambda!427729))))

(declare-fun b!7080683 () Bool)

(declare-fun e!4256863 () Bool)

(declare-fun e!4256868 () Bool)

(assert (=> b!7080683 (= e!4256863 e!4256868)))

(declare-fun res!2892364 () Bool)

(assert (=> b!7080683 (=> res!2892364 e!4256868)))

(declare-fun lt!2552199 () (InoxSet Context!13366))

(assert (=> b!7080683 (= res!2892364 (not (matchZipper!3227 lt!2552199 (t!382372 s!7408))))))

(declare-fun lt!2552202 () List!68588)

(declare-fun derivationStepZipperDown!2321 (Regex!17687 Context!13366 C!35644) (InoxSet Context!13366))

(declare-fun ++!15849 (List!68588 List!68588) List!68588)

(assert (=> b!7080683 (= lt!2552199 (derivationStepZipperDown!2321 (h!74912 (exprs!7183 lt!2552229)) (Context!13367 (++!15849 lt!2552202 (exprs!7183 ct2!306))) (h!74911 s!7408)))))

(declare-fun lt!2552217 () Unit!162085)

(assert (=> b!7080683 (= lt!2552217 (lemmaConcatPreservesForall!998 lt!2552202 (exprs!7183 ct2!306) lambda!427729))))

(declare-fun b!7080684 () Bool)

(declare-fun res!2892357 () Bool)

(declare-fun e!4256867 () Bool)

(assert (=> b!7080684 (=> res!2892357 e!4256867)))

(declare-fun isEmpty!39972 (List!68588) Bool)

(assert (=> b!7080684 (= res!2892357 (isEmpty!39972 (exprs!7183 lt!2552229)))))

(declare-fun b!7080685 () Bool)

(declare-fun res!2892358 () Bool)

(assert (=> b!7080685 (=> (not res!2892358) (not e!4256858))))

(get-info :version)

(assert (=> b!7080685 (= res!2892358 ((_ is Cons!68463) s!7408))))

(assert (=> b!7080686 (= e!4256862 e!4256867)))

(declare-fun res!2892355 () Bool)

(assert (=> b!7080686 (=> res!2892355 e!4256867)))

(declare-fun lt!2552209 () (InoxSet Context!13366))

(declare-fun derivationStepZipper!3137 ((InoxSet Context!13366) C!35644) (InoxSet Context!13366))

(assert (=> b!7080686 (= res!2892355 (not (= (derivationStepZipper!3137 lt!2552212 (h!74911 s!7408)) lt!2552209)))))

(declare-fun lambda!427730 () Int)

(declare-fun flatMap!2613 ((InoxSet Context!13366) Int) (InoxSet Context!13366))

(declare-fun derivationStepZipperUp!2271 (Context!13366 C!35644) (InoxSet Context!13366))

(assert (=> b!7080686 (= (flatMap!2613 lt!2552212 lambda!427730) (derivationStepZipperUp!2271 lt!2552218 (h!74911 s!7408)))))

(declare-fun lt!2552205 () Unit!162085)

(declare-fun lemmaFlatMapOnSingletonSet!2122 ((InoxSet Context!13366) Context!13366 Int) Unit!162085)

(assert (=> b!7080686 (= lt!2552205 (lemmaFlatMapOnSingletonSet!2122 lt!2552212 lt!2552218 lambda!427730))))

(assert (=> b!7080686 (= lt!2552209 (derivationStepZipperUp!2271 lt!2552218 (h!74911 s!7408)))))

(declare-fun lt!2552225 () Unit!162085)

(assert (=> b!7080686 (= lt!2552225 (lemmaConcatPreservesForall!998 (exprs!7183 lt!2552229) (exprs!7183 ct2!306) lambda!427729))))

(declare-fun b!7080687 () Bool)

(assert (=> b!7080687 (= e!4256867 e!4256863)))

(declare-fun res!2892353 () Bool)

(assert (=> b!7080687 (=> res!2892353 e!4256863)))

(declare-fun nullable!7370 (Regex!17687) Bool)

(assert (=> b!7080687 (= res!2892353 (nullable!7370 (h!74912 (exprs!7183 lt!2552229))))))

(declare-fun lt!2552211 () Context!13366)

(assert (=> b!7080687 (= lt!2552211 (Context!13367 lt!2552202))))

(declare-fun tail!13898 (List!68588) List!68588)

(assert (=> b!7080687 (= lt!2552202 (tail!13898 (exprs!7183 lt!2552229)))))

(declare-fun b!7080688 () Bool)

(declare-fun res!2892349 () Bool)

(declare-fun e!4256864 () Bool)

(assert (=> b!7080688 (=> res!2892349 e!4256864)))

(declare-datatypes ((tuple2!68332 0))(
  ( (tuple2!68333 (_1!37469 List!68587) (_2!37469 List!68587)) )
))
(declare-fun lt!2552221 () tuple2!68332)

(declare-fun ++!15850 (List!68587 List!68587) List!68587)

(assert (=> b!7080688 (= res!2892349 (not (= (++!15850 (_1!37469 lt!2552221) (_2!37469 lt!2552221)) (t!382372 s!7408))))))

(declare-fun b!7080689 () Bool)

(declare-fun e!4256859 () Bool)

(declare-fun tp!1943427 () Bool)

(assert (=> b!7080689 (= e!4256859 tp!1943427)))

(declare-fun b!7080690 () Bool)

(declare-fun tp!1943430 () Bool)

(assert (=> b!7080690 (= e!4256860 tp!1943430)))

(declare-fun e!4256865 () Bool)

(assert (=> b!7080691 (= e!4256865 true)))

(declare-fun lt!2552227 () (InoxSet Context!13366))

(declare-datatypes ((Option!16998 0))(
  ( (None!16997) (Some!16997 (v!53291 tuple2!68332)) )
))
(declare-fun isDefined!13699 (Option!16998) Bool)

(declare-fun findConcatSeparationZippers!514 ((InoxSet Context!13366) (InoxSet Context!13366) List!68587 List!68587 List!68587) Option!16998)

(assert (=> b!7080691 (isDefined!13699 (findConcatSeparationZippers!514 z1!570 lt!2552227 Nil!68463 s!7408 s!7408))))

(declare-fun lt!2552219 () Unit!162085)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!100 ((InoxSet Context!13366) (InoxSet Context!13366) List!68587 List!68587 List!68587 List!68587 List!68587) Unit!162085)

(assert (=> b!7080691 (= lt!2552219 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!100 z1!570 lt!2552227 lt!2552213 (_2!37469 lt!2552221) s!7408 Nil!68463 s!7408))))

(declare-datatypes ((List!68589 0))(
  ( (Nil!68465) (Cons!68465 (h!74913 Context!13366) (t!382374 List!68589)) )
))
(declare-fun lt!2552222 () List!68589)

(declare-fun content!13875 (List!68589) (InoxSet Context!13366))

(assert (=> b!7080691 (matchZipper!3227 (content!13875 lt!2552222) lt!2552213)))

(declare-fun lt!2552226 () Unit!162085)

(declare-fun lemmaExistsMatchingContextThenMatchingString!72 (List!68589 List!68587) Unit!162085)

(assert (=> b!7080691 (= lt!2552226 (lemmaExistsMatchingContextThenMatchingString!72 lt!2552222 lt!2552213))))

(declare-fun toList!11028 ((InoxSet Context!13366)) List!68589)

(assert (=> b!7080691 (= lt!2552222 (toList!11028 z1!570))))

(declare-fun exists!3769 ((InoxSet Context!13366) Int) Bool)

(assert (=> b!7080691 (exists!3769 z1!570 lambda!427731)))

(declare-fun lt!2552208 () Unit!162085)

(declare-fun lemmaContainsThenExists!179 ((InoxSet Context!13366) Context!13366 Int) Unit!162085)

(assert (=> b!7080691 (= lt!2552208 (lemmaContainsThenExists!179 z1!570 lt!2552229 lambda!427731))))

(declare-fun lt!2552200 () (InoxSet Context!13366))

(assert (=> b!7080691 (isDefined!13699 (findConcatSeparationZippers!514 lt!2552200 lt!2552227 Nil!68463 s!7408 s!7408))))

(declare-fun lt!2552206 () Unit!162085)

(assert (=> b!7080691 (= lt!2552206 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!100 lt!2552200 lt!2552227 lt!2552213 (_2!37469 lt!2552221) s!7408 Nil!68463 s!7408))))

(declare-fun b!7080692 () Bool)

(declare-fun res!2892352 () Bool)

(declare-fun e!4256870 () Bool)

(assert (=> b!7080692 (=> res!2892352 e!4256870)))

(declare-fun lt!2552203 () Context!13366)

(assert (=> b!7080692 (= res!2892352 (not (select lt!2552223 lt!2552203)))))

(declare-fun b!7080693 () Bool)

(assert (=> b!7080693 (= e!4256868 e!4256864)))

(declare-fun res!2892354 () Bool)

(assert (=> b!7080693 (=> res!2892354 e!4256864)))

(declare-fun lt!2552197 () (InoxSet Context!13366))

(assert (=> b!7080693 (= res!2892354 (not (matchZipper!3227 lt!2552197 (_1!37469 lt!2552221))))))

(declare-fun lt!2552224 () Option!16998)

(declare-fun get!23992 (Option!16998) tuple2!68332)

(assert (=> b!7080693 (= lt!2552221 (get!23992 lt!2552224))))

(assert (=> b!7080693 (isDefined!13699 lt!2552224)))

(assert (=> b!7080693 (= lt!2552224 (findConcatSeparationZippers!514 lt!2552197 lt!2552227 Nil!68463 (t!382372 s!7408) (t!382372 s!7408)))))

(assert (=> b!7080693 (= lt!2552227 (store ((as const (Array Context!13366 Bool)) false) ct2!306 true))))

(declare-fun lt!2552198 () Unit!162085)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!502 ((InoxSet Context!13366) Context!13366 List!68587) Unit!162085)

(assert (=> b!7080693 (= lt!2552198 (lemmaConcatZipperMatchesStringThenFindConcatDefined!502 lt!2552197 ct2!306 (t!382372 s!7408)))))

(assert (=> b!7080693 (= lt!2552199 (appendTo!808 lt!2552197 ct2!306))))

(assert (=> b!7080693 (= lt!2552197 (derivationStepZipperDown!2321 (h!74912 (exprs!7183 lt!2552229)) lt!2552211 (h!74911 s!7408)))))

(declare-fun lt!2552207 () Unit!162085)

(assert (=> b!7080693 (= lt!2552207 (lemmaConcatPreservesForall!998 lt!2552202 (exprs!7183 ct2!306) lambda!427729))))

(declare-fun lt!2552214 () Unit!162085)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!154 (Context!13366 Regex!17687 C!35644 Context!13366) Unit!162085)

(assert (=> b!7080693 (= lt!2552214 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!154 lt!2552211 (h!74912 (exprs!7183 lt!2552229)) (h!74911 s!7408) ct2!306))))

(declare-fun setElem!50485 () Context!13366)

(declare-fun setNonEmpty!50485 () Bool)

(declare-fun tp!1943428 () Bool)

(assert (=> setNonEmpty!50485 (= setRes!50485 (and tp!1943428 (inv!87076 setElem!50485) e!4256859))))

(declare-fun setRest!50485 () (InoxSet Context!13366))

(assert (=> setNonEmpty!50485 (= z1!570 ((_ map or) (store ((as const (Array Context!13366 Bool)) false) setElem!50485 true) setRest!50485))))

(assert (=> b!7080694 (= e!4256858 (not e!4256870))))

(declare-fun res!2892351 () Bool)

(assert (=> b!7080694 (=> res!2892351 e!4256870)))

(assert (=> b!7080694 (= res!2892351 (not (matchZipper!3227 lt!2552228 s!7408)))))

(assert (=> b!7080694 (= lt!2552228 (store ((as const (Array Context!13366 Bool)) false) lt!2552203 true))))

(declare-fun getWitness!1815 ((InoxSet Context!13366) Int) Context!13366)

(assert (=> b!7080694 (= lt!2552203 (getWitness!1815 lt!2552223 lambda!427727))))

(declare-fun lt!2552215 () List!68589)

(declare-fun exists!3770 (List!68589 Int) Bool)

(assert (=> b!7080694 (exists!3770 lt!2552215 lambda!427727)))

(declare-fun lt!2552216 () Unit!162085)

(declare-fun lemmaZipperMatchesExistsMatchingContext!608 (List!68589 List!68587) Unit!162085)

(assert (=> b!7080694 (= lt!2552216 (lemmaZipperMatchesExistsMatchingContext!608 lt!2552215 s!7408))))

(assert (=> b!7080694 (= lt!2552215 (toList!11028 lt!2552223))))

(declare-fun b!7080695 () Bool)

(declare-fun e!4256869 () Bool)

(assert (=> b!7080695 (= e!4256864 e!4256869)))

(declare-fun res!2892361 () Bool)

(assert (=> b!7080695 (=> res!2892361 e!4256869)))

(declare-fun lt!2552201 () (InoxSet Context!13366))

(declare-fun lt!2552220 () (InoxSet Context!13366))

(assert (=> b!7080695 (= res!2892361 (or (not (= lt!2552220 lt!2552201)) (not (= lt!2552220 lt!2552197))))))

(assert (=> b!7080695 (= (flatMap!2613 lt!2552200 lambda!427730) (derivationStepZipperUp!2271 lt!2552229 (h!74911 s!7408)))))

(declare-fun lt!2552230 () Unit!162085)

(assert (=> b!7080695 (= lt!2552230 (lemmaFlatMapOnSingletonSet!2122 lt!2552200 lt!2552229 lambda!427730))))

(assert (=> b!7080695 (= lt!2552201 (derivationStepZipperUp!2271 lt!2552229 (h!74911 s!7408)))))

(assert (=> b!7080695 (= lt!2552220 (derivationStepZipper!3137 lt!2552200 (h!74911 s!7408)))))

(assert (=> b!7080695 (= lt!2552200 (store ((as const (Array Context!13366 Bool)) false) lt!2552229 true))))

(assert (=> b!7080696 (= e!4256870 e!4256866)))

(declare-fun res!2892356 () Bool)

(assert (=> b!7080696 (=> res!2892356 e!4256866)))

(assert (=> b!7080696 (= res!2892356 (or (not (= lt!2552218 lt!2552203)) (not (select z1!570 lt!2552229))))))

(assert (=> b!7080696 (= lt!2552218 (Context!13367 (++!15849 (exprs!7183 lt!2552229) (exprs!7183 ct2!306))))))

(declare-fun lt!2552204 () Unit!162085)

(assert (=> b!7080696 (= lt!2552204 (lemmaConcatPreservesForall!998 (exprs!7183 lt!2552229) (exprs!7183 ct2!306) lambda!427729))))

(declare-fun lambda!427728 () Int)

(declare-fun mapPost2!516 ((InoxSet Context!13366) Int Context!13366) Context!13366)

(assert (=> b!7080696 (= lt!2552229 (mapPost2!516 z1!570 lambda!427728 lt!2552203))))

(declare-fun b!7080697 () Bool)

(assert (=> b!7080697 (= e!4256869 e!4256865)))

(declare-fun res!2892362 () Bool)

(assert (=> b!7080697 (=> res!2892362 e!4256865)))

(assert (=> b!7080697 (= res!2892362 (not (matchZipper!3227 lt!2552200 lt!2552213)))))

(assert (=> b!7080697 (= lt!2552213 (Cons!68463 (h!74911 s!7408) (_1!37469 lt!2552221)))))

(declare-fun setIsEmpty!50485 () Bool)

(assert (=> setIsEmpty!50485 setRes!50485))

(declare-fun b!7080698 () Bool)

(declare-fun res!2892350 () Bool)

(assert (=> b!7080698 (=> res!2892350 e!4256867)))

(assert (=> b!7080698 (= res!2892350 (not ((_ is Cons!68464) (exprs!7183 lt!2552229))))))

(declare-fun b!7080699 () Bool)

(declare-fun res!2892363 () Bool)

(assert (=> b!7080699 (=> res!2892363 e!4256864)))

(assert (=> b!7080699 (= res!2892363 (not (matchZipper!3227 lt!2552227 (_2!37469 lt!2552221))))))

(declare-fun b!7080700 () Bool)

(declare-fun tp_is_empty!44599 () Bool)

(declare-fun tp!1943429 () Bool)

(assert (=> b!7080700 (= e!4256861 (and tp_is_empty!44599 tp!1943429))))

(assert (= (and start!688744 res!2892359) b!7080685))

(assert (= (and b!7080685 res!2892358) b!7080694))

(assert (= (and b!7080694 (not res!2892351)) b!7080692))

(assert (= (and b!7080692 (not res!2892352)) b!7080696))

(assert (= (and b!7080696 (not res!2892356)) b!7080682))

(assert (= (and b!7080682 (not res!2892360)) b!7080686))

(assert (= (and b!7080686 (not res!2892355)) b!7080698))

(assert (= (and b!7080698 (not res!2892350)) b!7080684))

(assert (= (and b!7080684 (not res!2892357)) b!7080687))

(assert (= (and b!7080687 (not res!2892353)) b!7080683))

(assert (= (and b!7080683 (not res!2892364)) b!7080693))

(assert (= (and b!7080693 (not res!2892354)) b!7080699))

(assert (= (and b!7080699 (not res!2892363)) b!7080688))

(assert (= (and b!7080688 (not res!2892349)) b!7080695))

(assert (= (and b!7080695 (not res!2892361)) b!7080697))

(assert (= (and b!7080697 (not res!2892362)) b!7080691))

(assert (= (and start!688744 condSetEmpty!50485) setIsEmpty!50485))

(assert (= (and start!688744 (not condSetEmpty!50485)) setNonEmpty!50485))

(assert (= setNonEmpty!50485 b!7080689))

(assert (= start!688744 b!7080690))

(assert (= (and start!688744 ((_ is Cons!68463) s!7408)) b!7080700))

(declare-fun m!7811484 () Bool)

(assert (=> b!7080699 m!7811484))

(declare-fun m!7811486 () Bool)

(assert (=> setNonEmpty!50485 m!7811486))

(declare-fun m!7811488 () Bool)

(assert (=> b!7080686 m!7811488))

(declare-fun m!7811490 () Bool)

(assert (=> b!7080686 m!7811490))

(declare-fun m!7811492 () Bool)

(assert (=> b!7080686 m!7811492))

(declare-fun m!7811494 () Bool)

(assert (=> b!7080686 m!7811494))

(declare-fun m!7811496 () Bool)

(assert (=> b!7080686 m!7811496))

(declare-fun m!7811498 () Bool)

(assert (=> b!7080691 m!7811498))

(declare-fun m!7811500 () Bool)

(assert (=> b!7080691 m!7811500))

(declare-fun m!7811502 () Bool)

(assert (=> b!7080691 m!7811502))

(declare-fun m!7811504 () Bool)

(assert (=> b!7080691 m!7811504))

(declare-fun m!7811506 () Bool)

(assert (=> b!7080691 m!7811506))

(declare-fun m!7811508 () Bool)

(assert (=> b!7080691 m!7811508))

(declare-fun m!7811510 () Bool)

(assert (=> b!7080691 m!7811510))

(assert (=> b!7080691 m!7811508))

(assert (=> b!7080691 m!7811504))

(declare-fun m!7811512 () Bool)

(assert (=> b!7080691 m!7811512))

(assert (=> b!7080691 m!7811506))

(declare-fun m!7811514 () Bool)

(assert (=> b!7080691 m!7811514))

(declare-fun m!7811516 () Bool)

(assert (=> b!7080691 m!7811516))

(declare-fun m!7811518 () Bool)

(assert (=> b!7080691 m!7811518))

(declare-fun m!7811520 () Bool)

(assert (=> b!7080691 m!7811520))

(declare-fun m!7811522 () Bool)

(assert (=> b!7080697 m!7811522))

(declare-fun m!7811524 () Bool)

(assert (=> start!688744 m!7811524))

(declare-fun m!7811526 () Bool)

(assert (=> start!688744 m!7811526))

(declare-fun m!7811528 () Bool)

(assert (=> start!688744 m!7811528))

(declare-fun m!7811530 () Bool)

(assert (=> b!7080688 m!7811530))

(declare-fun m!7811532 () Bool)

(assert (=> b!7080683 m!7811532))

(declare-fun m!7811534 () Bool)

(assert (=> b!7080683 m!7811534))

(declare-fun m!7811536 () Bool)

(assert (=> b!7080683 m!7811536))

(declare-fun m!7811538 () Bool)

(assert (=> b!7080683 m!7811538))

(declare-fun m!7811540 () Bool)

(assert (=> b!7080695 m!7811540))

(declare-fun m!7811542 () Bool)

(assert (=> b!7080695 m!7811542))

(declare-fun m!7811544 () Bool)

(assert (=> b!7080695 m!7811544))

(declare-fun m!7811546 () Bool)

(assert (=> b!7080695 m!7811546))

(declare-fun m!7811548 () Bool)

(assert (=> b!7080695 m!7811548))

(assert (=> b!7080693 m!7811538))

(declare-fun m!7811550 () Bool)

(assert (=> b!7080693 m!7811550))

(declare-fun m!7811552 () Bool)

(assert (=> b!7080693 m!7811552))

(declare-fun m!7811554 () Bool)

(assert (=> b!7080693 m!7811554))

(declare-fun m!7811556 () Bool)

(assert (=> b!7080693 m!7811556))

(declare-fun m!7811558 () Bool)

(assert (=> b!7080693 m!7811558))

(declare-fun m!7811560 () Bool)

(assert (=> b!7080693 m!7811560))

(declare-fun m!7811562 () Bool)

(assert (=> b!7080693 m!7811562))

(declare-fun m!7811564 () Bool)

(assert (=> b!7080693 m!7811564))

(declare-fun m!7811566 () Bool)

(assert (=> b!7080693 m!7811566))

(declare-fun m!7811568 () Bool)

(assert (=> b!7080684 m!7811568))

(declare-fun m!7811570 () Bool)

(assert (=> b!7080682 m!7811570))

(assert (=> b!7080682 m!7811496))

(declare-fun m!7811572 () Bool)

(assert (=> b!7080696 m!7811572))

(declare-fun m!7811574 () Bool)

(assert (=> b!7080696 m!7811574))

(assert (=> b!7080696 m!7811496))

(declare-fun m!7811576 () Bool)

(assert (=> b!7080696 m!7811576))

(declare-fun m!7811578 () Bool)

(assert (=> b!7080694 m!7811578))

(declare-fun m!7811580 () Bool)

(assert (=> b!7080694 m!7811580))

(declare-fun m!7811582 () Bool)

(assert (=> b!7080694 m!7811582))

(declare-fun m!7811584 () Bool)

(assert (=> b!7080694 m!7811584))

(declare-fun m!7811586 () Bool)

(assert (=> b!7080694 m!7811586))

(declare-fun m!7811588 () Bool)

(assert (=> b!7080694 m!7811588))

(declare-fun m!7811590 () Bool)

(assert (=> b!7080687 m!7811590))

(declare-fun m!7811592 () Bool)

(assert (=> b!7080687 m!7811592))

(declare-fun m!7811594 () Bool)

(assert (=> b!7080692 m!7811594))

(check-sat (not b!7080688) (not setNonEmpty!50485) (not b!7080696) tp_is_empty!44599 (not b!7080695) (not b!7080683) (not b!7080686) (not b!7080689) (not b!7080700) (not b!7080694) (not b!7080691) (not b!7080697) (not b!7080687) (not b!7080699) (not b!7080690) (not b!7080684) (not b!7080693) (not start!688744) (not b!7080682))
(check-sat)
