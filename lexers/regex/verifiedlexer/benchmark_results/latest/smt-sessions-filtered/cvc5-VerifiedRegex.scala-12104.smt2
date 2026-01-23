; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!678930 () Bool)

(assert start!678930)

(declare-fun b!7029240 () Bool)

(assert (=> b!7029240 true))

(declare-fun b!7029230 () Bool)

(assert (=> b!7029230 true))

(declare-fun b!7029237 () Bool)

(assert (=> b!7029237 true))

(declare-fun setIsEmpty!49079 () Bool)

(declare-fun setRes!49079 () Bool)

(assert (=> setIsEmpty!49079 setRes!49079))

(declare-fun b!7029229 () Bool)

(declare-fun e!4225710 () Bool)

(declare-datatypes ((C!35178 0))(
  ( (C!35179 (val!27291 Int)) )
))
(declare-datatypes ((Regex!17454 0))(
  ( (ElementMatch!17454 (c!1307031 C!35178)) (Concat!26299 (regOne!35420 Regex!17454) (regTwo!35420 Regex!17454)) (EmptyExpr!17454) (Star!17454 (reg!17783 Regex!17454)) (EmptyLang!17454) (Union!17454 (regOne!35421 Regex!17454) (regTwo!35421 Regex!17454)) )
))
(declare-datatypes ((List!67890 0))(
  ( (Nil!67766) (Cons!67766 (h!74214 Regex!17454) (t!381653 List!67890)) )
))
(declare-datatypes ((Context!12900 0))(
  ( (Context!12901 (exprs!6950 List!67890)) )
))
(declare-fun lt!2516556 () (Set Context!12900))

(declare-datatypes ((List!67891 0))(
  ( (Nil!67767) (Cons!67767 (h!74215 C!35178) (t!381654 List!67891)) )
))
(declare-fun s!7408 () List!67891)

(declare-fun matchZipper!2994 ((Set Context!12900) List!67891) Bool)

(assert (=> b!7029229 (= e!4225710 (not (matchZipper!2994 lt!2516556 (t!381654 s!7408))))))

(declare-fun lambda!413874 () Int)

(declare-datatypes ((Unit!161576 0))(
  ( (Unit!161577) )
))
(declare-fun lt!2516551 () Unit!161576)

(declare-fun ct2!306 () Context!12900)

(declare-fun lt!2516544 () List!67890)

(declare-fun lemmaConcatPreservesForall!775 (List!67890 List!67890 Int) Unit!161576)

(assert (=> b!7029229 (= lt!2516551 (lemmaConcatPreservesForall!775 lt!2516544 (exprs!6950 ct2!306) lambda!413874))))

(declare-fun e!4225701 () Bool)

(declare-fun e!4225703 () Bool)

(assert (=> b!7029230 (= e!4225701 e!4225703)))

(declare-fun res!2869430 () Bool)

(assert (=> b!7029230 (=> res!2869430 e!4225703)))

(declare-fun lt!2516574 () Context!12900)

(declare-fun lt!2516560 () Context!12900)

(declare-fun z1!570 () (Set Context!12900))

(declare-fun lt!2516539 () Context!12900)

(assert (=> b!7029230 (= res!2869430 (or (not (= lt!2516560 lt!2516539)) (not (set.member lt!2516574 z1!570))))))

(declare-fun ++!15488 (List!67890 List!67890) List!67890)

(assert (=> b!7029230 (= lt!2516560 (Context!12901 (++!15488 (exprs!6950 lt!2516574) (exprs!6950 ct2!306))))))

(declare-fun lt!2516567 () Unit!161576)

(assert (=> b!7029230 (= lt!2516567 (lemmaConcatPreservesForall!775 (exprs!6950 lt!2516574) (exprs!6950 ct2!306) lambda!413874))))

(declare-fun lambda!413873 () Int)

(declare-fun mapPost2!295 ((Set Context!12900) Int Context!12900) Context!12900)

(assert (=> b!7029230 (= lt!2516574 (mapPost2!295 z1!570 lambda!413873 lt!2516539))))

(declare-fun b!7029231 () Bool)

(declare-fun e!4225704 () Bool)

(declare-fun e!4225702 () Bool)

(assert (=> b!7029231 (= e!4225704 e!4225702)))

(declare-fun res!2869417 () Bool)

(assert (=> b!7029231 (=> res!2869417 e!4225702)))

(declare-fun lt!2516577 () (Set Context!12900))

(declare-datatypes ((tuple2!68054 0))(
  ( (tuple2!68055 (_1!37330 List!67891) (_2!37330 List!67891)) )
))
(declare-fun lt!2516561 () tuple2!68054)

(assert (=> b!7029231 (= res!2869417 (not (matchZipper!2994 lt!2516577 (_1!37330 lt!2516561))))))

(declare-datatypes ((Option!16859 0))(
  ( (None!16858) (Some!16858 (v!53140 tuple2!68054)) )
))
(declare-fun lt!2516586 () Option!16859)

(declare-fun get!23737 (Option!16859) tuple2!68054)

(assert (=> b!7029231 (= lt!2516561 (get!23737 lt!2516586))))

(declare-fun isDefined!13560 (Option!16859) Bool)

(assert (=> b!7029231 (isDefined!13560 lt!2516586)))

(declare-fun lt!2516540 () (Set Context!12900))

(declare-fun findConcatSeparationZippers!375 ((Set Context!12900) (Set Context!12900) List!67891 List!67891 List!67891) Option!16859)

(assert (=> b!7029231 (= lt!2516586 (findConcatSeparationZippers!375 lt!2516577 lt!2516540 Nil!67767 s!7408 s!7408))))

(assert (=> b!7029231 (= lt!2516540 (set.insert ct2!306 (as set.empty (Set Context!12900))))))

(declare-fun lt!2516541 () Unit!161576)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!363 ((Set Context!12900) Context!12900 List!67891) Unit!161576)

(assert (=> b!7029231 (= lt!2516541 (lemmaConcatZipperMatchesStringThenFindConcatDefined!363 lt!2516577 ct2!306 s!7408))))

(declare-fun b!7029232 () Bool)

(declare-fun e!4225709 () Bool)

(declare-fun e!4225706 () Bool)

(assert (=> b!7029232 (= e!4225709 e!4225706)))

(declare-fun res!2869428 () Bool)

(assert (=> b!7029232 (=> res!2869428 e!4225706)))

(declare-fun lt!2516550 () (Set Context!12900))

(declare-fun derivationStepZipper!2910 ((Set Context!12900) C!35178) (Set Context!12900))

(assert (=> b!7029232 (= res!2869428 (not (= (derivationStepZipper!2910 lt!2516550 (h!74215 s!7408)) lt!2516556)))))

(declare-fun lt!2516576 () Unit!161576)

(assert (=> b!7029232 (= lt!2516576 (lemmaConcatPreservesForall!775 lt!2516544 (exprs!6950 ct2!306) lambda!413874))))

(declare-fun lt!2516554 () Unit!161576)

(assert (=> b!7029232 (= lt!2516554 (lemmaConcatPreservesForall!775 lt!2516544 (exprs!6950 ct2!306) lambda!413874))))

(declare-fun lambda!413875 () Int)

(declare-fun lt!2516548 () Context!12900)

(declare-fun flatMap!2401 ((Set Context!12900) Int) (Set Context!12900))

(declare-fun derivationStepZipperUp!2064 (Context!12900 C!35178) (Set Context!12900))

(assert (=> b!7029232 (= (flatMap!2401 lt!2516550 lambda!413875) (derivationStepZipperUp!2064 lt!2516548 (h!74215 s!7408)))))

(declare-fun lt!2516572 () Unit!161576)

(declare-fun lemmaFlatMapOnSingletonSet!1915 ((Set Context!12900) Context!12900 Int) Unit!161576)

(assert (=> b!7029232 (= lt!2516572 (lemmaFlatMapOnSingletonSet!1915 lt!2516550 lt!2516548 lambda!413875))))

(assert (=> b!7029232 (= lt!2516550 (set.insert lt!2516548 (as set.empty (Set Context!12900))))))

(declare-fun lt!2516570 () Unit!161576)

(assert (=> b!7029232 (= lt!2516570 (lemmaConcatPreservesForall!775 lt!2516544 (exprs!6950 ct2!306) lambda!413874))))

(declare-fun lt!2516587 () Unit!161576)

(assert (=> b!7029232 (= lt!2516587 (lemmaConcatPreservesForall!775 lt!2516544 (exprs!6950 ct2!306) lambda!413874))))

(declare-fun b!7029233 () Bool)

(declare-fun e!4225694 () Bool)

(assert (=> b!7029233 (= e!4225694 e!4225704)))

(declare-fun res!2869424 () Bool)

(assert (=> b!7029233 (=> res!2869424 e!4225704)))

(declare-fun lt!2516557 () Int)

(declare-fun lt!2516565 () Context!12900)

(declare-fun contextDepthTotal!489 (Context!12900) Int)

(assert (=> b!7029233 (= res!2869424 (<= lt!2516557 (contextDepthTotal!489 lt!2516565)))))

(declare-fun lt!2516538 () Int)

(assert (=> b!7029233 (<= lt!2516557 lt!2516538)))

(declare-datatypes ((List!67892 0))(
  ( (Nil!67768) (Cons!67768 (h!74216 Context!12900) (t!381655 List!67892)) )
))
(declare-fun lt!2516549 () List!67892)

(declare-fun zipperDepthTotal!517 (List!67892) Int)

(assert (=> b!7029233 (= lt!2516538 (zipperDepthTotal!517 lt!2516549))))

(assert (=> b!7029233 (= lt!2516557 (contextDepthTotal!489 lt!2516574))))

(declare-fun lt!2516583 () Unit!161576)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!57 (List!67892 Context!12900) Unit!161576)

(assert (=> b!7029233 (= lt!2516583 (lemmaTotalDepthZipperLargerThanOfAnyContext!57 lt!2516549 lt!2516574))))

(declare-fun toList!10797 ((Set Context!12900)) List!67892)

(assert (=> b!7029233 (= lt!2516549 (toList!10797 z1!570))))

(declare-fun lt!2516578 () Unit!161576)

(assert (=> b!7029233 (= lt!2516578 (lemmaConcatPreservesForall!775 lt!2516544 (exprs!6950 ct2!306) lambda!413874))))

(declare-fun lt!2516547 () Unit!161576)

(assert (=> b!7029233 (= lt!2516547 (lemmaConcatPreservesForall!775 lt!2516544 (exprs!6950 ct2!306) lambda!413874))))

(declare-fun lt!2516545 () Unit!161576)

(assert (=> b!7029233 (= lt!2516545 (lemmaConcatPreservesForall!775 lt!2516544 (exprs!6950 ct2!306) lambda!413874))))

(assert (=> b!7029233 (= (flatMap!2401 lt!2516577 lambda!413875) (derivationStepZipperUp!2064 lt!2516565 (h!74215 s!7408)))))

(declare-fun lt!2516582 () Unit!161576)

(assert (=> b!7029233 (= lt!2516582 (lemmaFlatMapOnSingletonSet!1915 lt!2516577 lt!2516565 lambda!413875))))

(declare-fun map!15749 ((Set Context!12900) Int) (Set Context!12900))

(assert (=> b!7029233 (= (map!15749 lt!2516577 lambda!413873) (set.insert (Context!12901 (++!15488 lt!2516544 (exprs!6950 ct2!306))) (as set.empty (Set Context!12900))))))

(declare-fun lt!2516575 () Unit!161576)

(assert (=> b!7029233 (= lt!2516575 (lemmaConcatPreservesForall!775 lt!2516544 (exprs!6950 ct2!306) lambda!413874))))

(declare-fun lt!2516558 () Unit!161576)

(declare-fun lemmaMapOnSingletonSet!365 ((Set Context!12900) Context!12900 Int) Unit!161576)

(assert (=> b!7029233 (= lt!2516558 (lemmaMapOnSingletonSet!365 lt!2516577 lt!2516565 lambda!413873))))

(assert (=> b!7029233 (= lt!2516577 (set.insert lt!2516565 (as set.empty (Set Context!12900))))))

(declare-fun b!7029234 () Bool)

(declare-fun res!2869425 () Bool)

(declare-fun e!4225708 () Bool)

(assert (=> b!7029234 (=> res!2869425 e!4225708)))

(assert (=> b!7029234 (= res!2869425 (not (is-Cons!67766 (exprs!6950 lt!2516574))))))

(declare-fun b!7029235 () Bool)

(declare-fun e!4225705 () Bool)

(declare-fun tp!1936026 () Bool)

(assert (=> b!7029235 (= e!4225705 tp!1936026)))

(declare-fun b!7029236 () Bool)

(declare-fun e!4225699 () Bool)

(declare-fun e!4225707 () Bool)

(assert (=> b!7029236 (= e!4225699 e!4225707)))

(declare-fun res!2869420 () Bool)

(assert (=> b!7029236 (=> res!2869420 e!4225707)))

(assert (=> b!7029236 (= res!2869420 e!4225710)))

(declare-fun res!2869433 () Bool)

(assert (=> b!7029236 (=> (not res!2869433) (not e!4225710))))

(declare-fun lt!2516552 () Bool)

(declare-fun lt!2516563 () Bool)

(assert (=> b!7029236 (= res!2869433 (not (= lt!2516552 lt!2516563)))))

(declare-fun lt!2516568 () (Set Context!12900))

(assert (=> b!7029236 (= lt!2516552 (matchZipper!2994 lt!2516568 (t!381654 s!7408)))))

(declare-fun lt!2516573 () Unit!161576)

(assert (=> b!7029236 (= lt!2516573 (lemmaConcatPreservesForall!775 lt!2516544 (exprs!6950 ct2!306) lambda!413874))))

(declare-fun lt!2516553 () (Set Context!12900))

(declare-fun e!4225698 () Bool)

(assert (=> b!7029236 (= (matchZipper!2994 lt!2516553 (t!381654 s!7408)) e!4225698)))

(declare-fun res!2869435 () Bool)

(assert (=> b!7029236 (=> res!2869435 e!4225698)))

(assert (=> b!7029236 (= res!2869435 lt!2516563)))

(declare-fun lt!2516585 () (Set Context!12900))

(assert (=> b!7029236 (= lt!2516563 (matchZipper!2994 lt!2516585 (t!381654 s!7408)))))

(declare-fun lt!2516542 () Unit!161576)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1527 ((Set Context!12900) (Set Context!12900) List!67891) Unit!161576)

(assert (=> b!7029236 (= lt!2516542 (lemmaZipperConcatMatchesSameAsBothZippers!1527 lt!2516585 lt!2516556 (t!381654 s!7408)))))

(declare-fun lt!2516580 () Unit!161576)

(assert (=> b!7029236 (= lt!2516580 (lemmaConcatPreservesForall!775 lt!2516544 (exprs!6950 ct2!306) lambda!413874))))

(declare-fun lt!2516579 () Unit!161576)

(assert (=> b!7029236 (= lt!2516579 (lemmaConcatPreservesForall!775 lt!2516544 (exprs!6950 ct2!306) lambda!413874))))

(declare-fun e!4225695 () Bool)

(assert (=> b!7029237 (= e!4225695 e!4225708)))

(declare-fun res!2869423 () Bool)

(assert (=> b!7029237 (=> res!2869423 e!4225708)))

(declare-fun lt!2516555 () (Set Context!12900))

(assert (=> b!7029237 (= res!2869423 (not (= (derivationStepZipper!2910 lt!2516555 (h!74215 s!7408)) lt!2516568)))))

(assert (=> b!7029237 (= (flatMap!2401 lt!2516555 lambda!413875) (derivationStepZipperUp!2064 lt!2516560 (h!74215 s!7408)))))

(declare-fun lt!2516588 () Unit!161576)

(assert (=> b!7029237 (= lt!2516588 (lemmaFlatMapOnSingletonSet!1915 lt!2516555 lt!2516560 lambda!413875))))

(assert (=> b!7029237 (= lt!2516568 (derivationStepZipperUp!2064 lt!2516560 (h!74215 s!7408)))))

(declare-fun lt!2516584 () Unit!161576)

(assert (=> b!7029237 (= lt!2516584 (lemmaConcatPreservesForall!775 (exprs!6950 lt!2516574) (exprs!6950 ct2!306) lambda!413874))))

(declare-fun b!7029238 () Bool)

(declare-fun e!4225711 () Bool)

(declare-fun tp_is_empty!44133 () Bool)

(declare-fun tp!1936029 () Bool)

(assert (=> b!7029238 (= e!4225711 (and tp_is_empty!44133 tp!1936029))))

(declare-fun b!7029239 () Bool)

(declare-fun res!2869415 () Bool)

(assert (=> b!7029239 (=> res!2869415 e!4225701)))

(declare-fun lt!2516571 () (Set Context!12900))

(assert (=> b!7029239 (= res!2869415 (not (set.member lt!2516539 lt!2516571)))))

(declare-fun e!4225696 () Bool)

(assert (=> b!7029240 (= e!4225696 (not e!4225701))))

(declare-fun res!2869427 () Bool)

(assert (=> b!7029240 (=> res!2869427 e!4225701)))

(declare-fun lt!2516564 () (Set Context!12900))

(assert (=> b!7029240 (= res!2869427 (not (matchZipper!2994 lt!2516564 s!7408)))))

(assert (=> b!7029240 (= lt!2516564 (set.insert lt!2516539 (as set.empty (Set Context!12900))))))

(declare-fun lambda!413872 () Int)

(declare-fun getWitness!1452 ((Set Context!12900) Int) Context!12900)

(assert (=> b!7029240 (= lt!2516539 (getWitness!1452 lt!2516571 lambda!413872))))

(declare-fun lt!2516543 () List!67892)

(declare-fun exists!3371 (List!67892 Int) Bool)

(assert (=> b!7029240 (exists!3371 lt!2516543 lambda!413872)))

(declare-fun lt!2516559 () Unit!161576)

(declare-fun lemmaZipperMatchesExistsMatchingContext!393 (List!67892 List!67891) Unit!161576)

(assert (=> b!7029240 (= lt!2516559 (lemmaZipperMatchesExistsMatchingContext!393 lt!2516543 s!7408))))

(assert (=> b!7029240 (= lt!2516543 (toList!10797 lt!2516571))))

(declare-fun b!7029241 () Bool)

(declare-fun res!2869429 () Bool)

(assert (=> b!7029241 (=> res!2869429 e!4225707)))

(assert (=> b!7029241 (= res!2869429 (not lt!2516552))))

(declare-fun b!7029242 () Bool)

(declare-fun e!4225697 () Bool)

(assert (=> b!7029242 (= e!4225697 e!4225699)))

(declare-fun res!2869418 () Bool)

(assert (=> b!7029242 (=> res!2869418 e!4225699)))

(assert (=> b!7029242 (= res!2869418 (not (= lt!2516568 lt!2516553)))))

(assert (=> b!7029242 (= lt!2516553 (set.union lt!2516585 lt!2516556))))

(assert (=> b!7029242 (= lt!2516556 (derivationStepZipperUp!2064 lt!2516548 (h!74215 s!7408)))))

(declare-fun derivationStepZipperDown!2118 (Regex!17454 Context!12900 C!35178) (Set Context!12900))

(assert (=> b!7029242 (= lt!2516585 (derivationStepZipperDown!2118 (h!74214 (exprs!6950 lt!2516574)) lt!2516548 (h!74215 s!7408)))))

(assert (=> b!7029242 (= lt!2516548 (Context!12901 (++!15488 lt!2516544 (exprs!6950 ct2!306))))))

(declare-fun lt!2516566 () Unit!161576)

(assert (=> b!7029242 (= lt!2516566 (lemmaConcatPreservesForall!775 lt!2516544 (exprs!6950 ct2!306) lambda!413874))))

(declare-fun lt!2516546 () Unit!161576)

(assert (=> b!7029242 (= lt!2516546 (lemmaConcatPreservesForall!775 lt!2516544 (exprs!6950 ct2!306) lambda!413874))))

(declare-fun b!7029243 () Bool)

(declare-fun res!2869432 () Bool)

(assert (=> b!7029243 (=> (not res!2869432) (not e!4225696))))

(assert (=> b!7029243 (= res!2869432 (is-Cons!67767 s!7408))))

(declare-fun res!2869421 () Bool)

(assert (=> start!678930 (=> (not res!2869421) (not e!4225696))))

(assert (=> start!678930 (= res!2869421 (matchZipper!2994 lt!2516571 s!7408))))

(declare-fun appendTo!575 ((Set Context!12900) Context!12900) (Set Context!12900))

(assert (=> start!678930 (= lt!2516571 (appendTo!575 z1!570 ct2!306))))

(assert (=> start!678930 e!4225696))

(declare-fun condSetEmpty!49079 () Bool)

(assert (=> start!678930 (= condSetEmpty!49079 (= z1!570 (as set.empty (Set Context!12900))))))

(assert (=> start!678930 setRes!49079))

(declare-fun inv!86495 (Context!12900) Bool)

(assert (=> start!678930 (and (inv!86495 ct2!306) e!4225705)))

(assert (=> start!678930 e!4225711))

(declare-fun e!4225700 () Bool)

(declare-fun setNonEmpty!49079 () Bool)

(declare-fun setElem!49079 () Context!12900)

(declare-fun tp!1936027 () Bool)

(assert (=> setNonEmpty!49079 (= setRes!49079 (and tp!1936027 (inv!86495 setElem!49079) e!4225700))))

(declare-fun setRest!49079 () (Set Context!12900))

(assert (=> setNonEmpty!49079 (= z1!570 (set.union (set.insert setElem!49079 (as set.empty (Set Context!12900))) setRest!49079))))

(declare-fun b!7029244 () Bool)

(assert (=> b!7029244 (= e!4225698 (matchZipper!2994 lt!2516556 (t!381654 s!7408)))))

(declare-fun b!7029245 () Bool)

(assert (=> b!7029245 (= e!4225703 e!4225695)))

(declare-fun res!2869426 () Bool)

(assert (=> b!7029245 (=> res!2869426 e!4225695)))

(assert (=> b!7029245 (= res!2869426 (not (= lt!2516555 lt!2516564)))))

(assert (=> b!7029245 (= lt!2516555 (set.insert lt!2516560 (as set.empty (Set Context!12900))))))

(declare-fun lt!2516581 () Unit!161576)

(assert (=> b!7029245 (= lt!2516581 (lemmaConcatPreservesForall!775 (exprs!6950 lt!2516574) (exprs!6950 ct2!306) lambda!413874))))

(declare-fun b!7029246 () Bool)

(assert (=> b!7029246 (= e!4225702 (matchZipper!2994 lt!2516540 (_2!37330 lt!2516561)))))

(declare-fun b!7029247 () Bool)

(assert (=> b!7029247 (= e!4225708 e!4225697)))

(declare-fun res!2869431 () Bool)

(assert (=> b!7029247 (=> res!2869431 e!4225697)))

(declare-fun nullable!7165 (Regex!17454) Bool)

(assert (=> b!7029247 (= res!2869431 (not (nullable!7165 (h!74214 (exprs!6950 lt!2516574)))))))

(assert (=> b!7029247 (= lt!2516565 (Context!12901 lt!2516544))))

(declare-fun tail!13532 (List!67890) List!67890)

(assert (=> b!7029247 (= lt!2516544 (tail!13532 (exprs!6950 lt!2516574)))))

(declare-fun b!7029248 () Bool)

(assert (=> b!7029248 (= e!4225707 e!4225709)))

(declare-fun res!2869434 () Bool)

(assert (=> b!7029248 (=> res!2869434 e!4225709)))

(assert (=> b!7029248 (= res!2869434 (not (matchZipper!2994 lt!2516556 (t!381654 s!7408))))))

(declare-fun lt!2516569 () Unit!161576)

(assert (=> b!7029248 (= lt!2516569 (lemmaConcatPreservesForall!775 lt!2516544 (exprs!6950 ct2!306) lambda!413874))))

(declare-fun b!7029249 () Bool)

(declare-fun tp!1936028 () Bool)

(assert (=> b!7029249 (= e!4225700 tp!1936028)))

(declare-fun b!7029250 () Bool)

(declare-fun res!2869416 () Bool)

(assert (=> b!7029250 (=> res!2869416 e!4225708)))

(declare-fun isEmpty!39512 (List!67890) Bool)

(assert (=> b!7029250 (= res!2869416 (isEmpty!39512 (exprs!6950 lt!2516574)))))

(declare-fun b!7029251 () Bool)

(declare-fun res!2869422 () Bool)

(assert (=> b!7029251 (=> res!2869422 e!4225704)))

(assert (=> b!7029251 (= res!2869422 (>= (zipperDepthTotal!517 (Cons!67768 lt!2516565 Nil!67768)) lt!2516538))))

(declare-fun b!7029252 () Bool)

(assert (=> b!7029252 (= e!4225706 e!4225694)))

(declare-fun res!2869419 () Bool)

(assert (=> b!7029252 (=> res!2869419 e!4225694)))

(assert (=> b!7029252 (= res!2869419 (not (matchZipper!2994 lt!2516550 s!7408)))))

(declare-fun lt!2516562 () Unit!161576)

(assert (=> b!7029252 (= lt!2516562 (lemmaConcatPreservesForall!775 lt!2516544 (exprs!6950 ct2!306) lambda!413874))))

(assert (= (and start!678930 res!2869421) b!7029243))

(assert (= (and b!7029243 res!2869432) b!7029240))

(assert (= (and b!7029240 (not res!2869427)) b!7029239))

(assert (= (and b!7029239 (not res!2869415)) b!7029230))

(assert (= (and b!7029230 (not res!2869430)) b!7029245))

(assert (= (and b!7029245 (not res!2869426)) b!7029237))

(assert (= (and b!7029237 (not res!2869423)) b!7029234))

(assert (= (and b!7029234 (not res!2869425)) b!7029250))

(assert (= (and b!7029250 (not res!2869416)) b!7029247))

(assert (= (and b!7029247 (not res!2869431)) b!7029242))

(assert (= (and b!7029242 (not res!2869418)) b!7029236))

(assert (= (and b!7029236 (not res!2869435)) b!7029244))

(assert (= (and b!7029236 res!2869433) b!7029229))

(assert (= (and b!7029236 (not res!2869420)) b!7029241))

(assert (= (and b!7029241 (not res!2869429)) b!7029248))

(assert (= (and b!7029248 (not res!2869434)) b!7029232))

(assert (= (and b!7029232 (not res!2869428)) b!7029252))

(assert (= (and b!7029252 (not res!2869419)) b!7029233))

(assert (= (and b!7029233 (not res!2869424)) b!7029251))

(assert (= (and b!7029251 (not res!2869422)) b!7029231))

(assert (= (and b!7029231 (not res!2869417)) b!7029246))

(assert (= (and start!678930 condSetEmpty!49079) setIsEmpty!49079))

(assert (= (and start!678930 (not condSetEmpty!49079)) setNonEmpty!49079))

(assert (= setNonEmpty!49079 b!7029249))

(assert (= start!678930 b!7029235))

(assert (= (and start!678930 (is-Cons!67767 s!7408)) b!7029238))

(declare-fun m!7733862 () Bool)

(assert (=> start!678930 m!7733862))

(declare-fun m!7733864 () Bool)

(assert (=> start!678930 m!7733864))

(declare-fun m!7733866 () Bool)

(assert (=> start!678930 m!7733866))

(declare-fun m!7733868 () Bool)

(assert (=> b!7029230 m!7733868))

(declare-fun m!7733870 () Bool)

(assert (=> b!7029230 m!7733870))

(declare-fun m!7733872 () Bool)

(assert (=> b!7029230 m!7733872))

(declare-fun m!7733874 () Bool)

(assert (=> b!7029230 m!7733874))

(declare-fun m!7733876 () Bool)

(assert (=> b!7029231 m!7733876))

(declare-fun m!7733878 () Bool)

(assert (=> b!7029231 m!7733878))

(declare-fun m!7733880 () Bool)

(assert (=> b!7029231 m!7733880))

(declare-fun m!7733882 () Bool)

(assert (=> b!7029231 m!7733882))

(declare-fun m!7733884 () Bool)

(assert (=> b!7029231 m!7733884))

(declare-fun m!7733886 () Bool)

(assert (=> b!7029231 m!7733886))

(declare-fun m!7733888 () Bool)

(assert (=> b!7029229 m!7733888))

(declare-fun m!7733890 () Bool)

(assert (=> b!7029229 m!7733890))

(assert (=> b!7029232 m!7733890))

(declare-fun m!7733892 () Bool)

(assert (=> b!7029232 m!7733892))

(declare-fun m!7733894 () Bool)

(assert (=> b!7029232 m!7733894))

(declare-fun m!7733896 () Bool)

(assert (=> b!7029232 m!7733896))

(assert (=> b!7029232 m!7733890))

(assert (=> b!7029232 m!7733890))

(declare-fun m!7733898 () Bool)

(assert (=> b!7029232 m!7733898))

(declare-fun m!7733900 () Bool)

(assert (=> b!7029232 m!7733900))

(assert (=> b!7029232 m!7733890))

(declare-fun m!7733902 () Bool)

(assert (=> b!7029233 m!7733902))

(declare-fun m!7733904 () Bool)

(assert (=> b!7029233 m!7733904))

(declare-fun m!7733906 () Bool)

(assert (=> b!7029233 m!7733906))

(declare-fun m!7733908 () Bool)

(assert (=> b!7029233 m!7733908))

(declare-fun m!7733910 () Bool)

(assert (=> b!7029233 m!7733910))

(declare-fun m!7733912 () Bool)

(assert (=> b!7029233 m!7733912))

(assert (=> b!7029233 m!7733890))

(declare-fun m!7733914 () Bool)

(assert (=> b!7029233 m!7733914))

(declare-fun m!7733916 () Bool)

(assert (=> b!7029233 m!7733916))

(declare-fun m!7733918 () Bool)

(assert (=> b!7029233 m!7733918))

(declare-fun m!7733920 () Bool)

(assert (=> b!7029233 m!7733920))

(assert (=> b!7029233 m!7733890))

(assert (=> b!7029233 m!7733890))

(declare-fun m!7733922 () Bool)

(assert (=> b!7029233 m!7733922))

(declare-fun m!7733924 () Bool)

(assert (=> b!7029233 m!7733924))

(assert (=> b!7029233 m!7733890))

(declare-fun m!7733926 () Bool)

(assert (=> b!7029233 m!7733926))

(declare-fun m!7733928 () Bool)

(assert (=> b!7029236 m!7733928))

(assert (=> b!7029236 m!7733890))

(declare-fun m!7733930 () Bool)

(assert (=> b!7029236 m!7733930))

(declare-fun m!7733932 () Bool)

(assert (=> b!7029236 m!7733932))

(assert (=> b!7029236 m!7733890))

(assert (=> b!7029236 m!7733890))

(declare-fun m!7733934 () Bool)

(assert (=> b!7029236 m!7733934))

(declare-fun m!7733936 () Bool)

(assert (=> b!7029246 m!7733936))

(assert (=> b!7029242 m!7733892))

(declare-fun m!7733938 () Bool)

(assert (=> b!7029242 m!7733938))

(assert (=> b!7029242 m!7733890))

(assert (=> b!7029242 m!7733918))

(assert (=> b!7029242 m!7733890))

(declare-fun m!7733940 () Bool)

(assert (=> b!7029252 m!7733940))

(assert (=> b!7029252 m!7733890))

(declare-fun m!7733942 () Bool)

(assert (=> b!7029239 m!7733942))

(declare-fun m!7733944 () Bool)

(assert (=> b!7029251 m!7733944))

(declare-fun m!7733946 () Bool)

(assert (=> b!7029240 m!7733946))

(declare-fun m!7733948 () Bool)

(assert (=> b!7029240 m!7733948))

(declare-fun m!7733950 () Bool)

(assert (=> b!7029240 m!7733950))

(declare-fun m!7733952 () Bool)

(assert (=> b!7029240 m!7733952))

(declare-fun m!7733954 () Bool)

(assert (=> b!7029240 m!7733954))

(declare-fun m!7733956 () Bool)

(assert (=> b!7029240 m!7733956))

(declare-fun m!7733958 () Bool)

(assert (=> b!7029250 m!7733958))

(assert (=> b!7029244 m!7733888))

(declare-fun m!7733960 () Bool)

(assert (=> setNonEmpty!49079 m!7733960))

(declare-fun m!7733962 () Bool)

(assert (=> b!7029247 m!7733962))

(declare-fun m!7733964 () Bool)

(assert (=> b!7029247 m!7733964))

(assert (=> b!7029248 m!7733888))

(assert (=> b!7029248 m!7733890))

(declare-fun m!7733966 () Bool)

(assert (=> b!7029245 m!7733966))

(assert (=> b!7029245 m!7733872))

(declare-fun m!7733968 () Bool)

(assert (=> b!7029237 m!7733968))

(declare-fun m!7733970 () Bool)

(assert (=> b!7029237 m!7733970))

(declare-fun m!7733972 () Bool)

(assert (=> b!7029237 m!7733972))

(assert (=> b!7029237 m!7733872))

(declare-fun m!7733974 () Bool)

(assert (=> b!7029237 m!7733974))

(push 1)

(assert tp_is_empty!44133)

(assert (not setNonEmpty!49079))

(assert (not b!7029230))

(assert (not b!7029246))

(assert (not b!7029235))

(assert (not b!7029245))

(assert (not b!7029236))

(assert (not b!7029229))

(assert (not b!7029237))

(assert (not b!7029231))

(assert (not b!7029249))

(assert (not b!7029232))

(assert (not b!7029240))

(assert (not start!678930))

(assert (not b!7029250))

(assert (not b!7029233))

(assert (not b!7029252))

(assert (not b!7029238))

(assert (not b!7029247))

(assert (not b!7029244))

(assert (not b!7029248))

(assert (not b!7029251))

(assert (not b!7029242))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2192235 () Bool)

(declare-fun forall!16360 (List!67890 Int) Bool)

(assert (=> d!2192235 (forall!16360 (++!15488 (exprs!6950 lt!2516574) (exprs!6950 ct2!306)) lambda!413874)))

(declare-fun lt!2516748 () Unit!161576)

(declare-fun choose!53152 (List!67890 List!67890 Int) Unit!161576)

(assert (=> d!2192235 (= lt!2516748 (choose!53152 (exprs!6950 lt!2516574) (exprs!6950 ct2!306) lambda!413874))))

(assert (=> d!2192235 (forall!16360 (exprs!6950 lt!2516574) lambda!413874)))

(assert (=> d!2192235 (= (lemmaConcatPreservesForall!775 (exprs!6950 lt!2516574) (exprs!6950 ct2!306) lambda!413874) lt!2516748)))

(declare-fun bs!1869743 () Bool)

(assert (= bs!1869743 d!2192235))

(assert (=> bs!1869743 m!7733870))

(assert (=> bs!1869743 m!7733870))

(declare-fun m!7734090 () Bool)

(assert (=> bs!1869743 m!7734090))

(declare-fun m!7734092 () Bool)

(assert (=> bs!1869743 m!7734092))

(declare-fun m!7734094 () Bool)

(assert (=> bs!1869743 m!7734094))

(assert (=> b!7029245 d!2192235))

(declare-fun d!2192237 () Bool)

(declare-fun c!1307049 () Bool)

(declare-fun isEmpty!39514 (List!67891) Bool)

(assert (=> d!2192237 (= c!1307049 (isEmpty!39514 (_2!37330 lt!2516561)))))

(declare-fun e!4225768 () Bool)

(assert (=> d!2192237 (= (matchZipper!2994 lt!2516540 (_2!37330 lt!2516561)) e!4225768)))

(declare-fun b!7029341 () Bool)

(declare-fun nullableZipper!2570 ((Set Context!12900)) Bool)

(assert (=> b!7029341 (= e!4225768 (nullableZipper!2570 lt!2516540))))

(declare-fun b!7029342 () Bool)

(declare-fun head!14251 (List!67891) C!35178)

(declare-fun tail!13534 (List!67891) List!67891)

(assert (=> b!7029342 (= e!4225768 (matchZipper!2994 (derivationStepZipper!2910 lt!2516540 (head!14251 (_2!37330 lt!2516561))) (tail!13534 (_2!37330 lt!2516561))))))

(assert (= (and d!2192237 c!1307049) b!7029341))

(assert (= (and d!2192237 (not c!1307049)) b!7029342))

(declare-fun m!7734096 () Bool)

(assert (=> d!2192237 m!7734096))

(declare-fun m!7734098 () Bool)

(assert (=> b!7029341 m!7734098))

(declare-fun m!7734100 () Bool)

(assert (=> b!7029342 m!7734100))

(assert (=> b!7029342 m!7734100))

(declare-fun m!7734102 () Bool)

(assert (=> b!7029342 m!7734102))

(declare-fun m!7734104 () Bool)

(assert (=> b!7029342 m!7734104))

(assert (=> b!7029342 m!7734102))

(assert (=> b!7029342 m!7734104))

(declare-fun m!7734106 () Bool)

(assert (=> b!7029342 m!7734106))

(assert (=> b!7029246 d!2192237))

(declare-fun d!2192239 () Bool)

(declare-fun c!1307050 () Bool)

(assert (=> d!2192239 (= c!1307050 (isEmpty!39514 (t!381654 s!7408)))))

(declare-fun e!4225769 () Bool)

(assert (=> d!2192239 (= (matchZipper!2994 lt!2516568 (t!381654 s!7408)) e!4225769)))

(declare-fun b!7029343 () Bool)

(assert (=> b!7029343 (= e!4225769 (nullableZipper!2570 lt!2516568))))

(declare-fun b!7029344 () Bool)

(assert (=> b!7029344 (= e!4225769 (matchZipper!2994 (derivationStepZipper!2910 lt!2516568 (head!14251 (t!381654 s!7408))) (tail!13534 (t!381654 s!7408))))))

(assert (= (and d!2192239 c!1307050) b!7029343))

(assert (= (and d!2192239 (not c!1307050)) b!7029344))

(declare-fun m!7734108 () Bool)

(assert (=> d!2192239 m!7734108))

(declare-fun m!7734110 () Bool)

(assert (=> b!7029343 m!7734110))

(declare-fun m!7734112 () Bool)

(assert (=> b!7029344 m!7734112))

(assert (=> b!7029344 m!7734112))

(declare-fun m!7734114 () Bool)

(assert (=> b!7029344 m!7734114))

(declare-fun m!7734116 () Bool)

(assert (=> b!7029344 m!7734116))

(assert (=> b!7029344 m!7734114))

(assert (=> b!7029344 m!7734116))

(declare-fun m!7734118 () Bool)

(assert (=> b!7029344 m!7734118))

(assert (=> b!7029236 d!2192239))

(declare-fun d!2192241 () Bool)

(assert (=> d!2192241 (forall!16360 (++!15488 lt!2516544 (exprs!6950 ct2!306)) lambda!413874)))

(declare-fun lt!2516749 () Unit!161576)

(assert (=> d!2192241 (= lt!2516749 (choose!53152 lt!2516544 (exprs!6950 ct2!306) lambda!413874))))

(assert (=> d!2192241 (forall!16360 lt!2516544 lambda!413874)))

(assert (=> d!2192241 (= (lemmaConcatPreservesForall!775 lt!2516544 (exprs!6950 ct2!306) lambda!413874) lt!2516749)))

(declare-fun bs!1869744 () Bool)

(assert (= bs!1869744 d!2192241))

(assert (=> bs!1869744 m!7733918))

(assert (=> bs!1869744 m!7733918))

(declare-fun m!7734120 () Bool)

(assert (=> bs!1869744 m!7734120))

(declare-fun m!7734122 () Bool)

(assert (=> bs!1869744 m!7734122))

(declare-fun m!7734124 () Bool)

(assert (=> bs!1869744 m!7734124))

(assert (=> b!7029236 d!2192241))

(declare-fun d!2192243 () Bool)

(declare-fun c!1307051 () Bool)

(assert (=> d!2192243 (= c!1307051 (isEmpty!39514 (t!381654 s!7408)))))

(declare-fun e!4225770 () Bool)

(assert (=> d!2192243 (= (matchZipper!2994 lt!2516553 (t!381654 s!7408)) e!4225770)))

(declare-fun b!7029345 () Bool)

(assert (=> b!7029345 (= e!4225770 (nullableZipper!2570 lt!2516553))))

(declare-fun b!7029346 () Bool)

(assert (=> b!7029346 (= e!4225770 (matchZipper!2994 (derivationStepZipper!2910 lt!2516553 (head!14251 (t!381654 s!7408))) (tail!13534 (t!381654 s!7408))))))

(assert (= (and d!2192243 c!1307051) b!7029345))

(assert (= (and d!2192243 (not c!1307051)) b!7029346))

(assert (=> d!2192243 m!7734108))

(declare-fun m!7734126 () Bool)

(assert (=> b!7029345 m!7734126))

(assert (=> b!7029346 m!7734112))

(assert (=> b!7029346 m!7734112))

(declare-fun m!7734128 () Bool)

(assert (=> b!7029346 m!7734128))

(assert (=> b!7029346 m!7734116))

(assert (=> b!7029346 m!7734128))

(assert (=> b!7029346 m!7734116))

(declare-fun m!7734130 () Bool)

(assert (=> b!7029346 m!7734130))

(assert (=> b!7029236 d!2192243))

(declare-fun e!4225773 () Bool)

(declare-fun d!2192245 () Bool)

(assert (=> d!2192245 (= (matchZipper!2994 (set.union lt!2516585 lt!2516556) (t!381654 s!7408)) e!4225773)))

(declare-fun res!2869502 () Bool)

(assert (=> d!2192245 (=> res!2869502 e!4225773)))

(assert (=> d!2192245 (= res!2869502 (matchZipper!2994 lt!2516585 (t!381654 s!7408)))))

(declare-fun lt!2516752 () Unit!161576)

(declare-fun choose!53153 ((Set Context!12900) (Set Context!12900) List!67891) Unit!161576)

(assert (=> d!2192245 (= lt!2516752 (choose!53153 lt!2516585 lt!2516556 (t!381654 s!7408)))))

(assert (=> d!2192245 (= (lemmaZipperConcatMatchesSameAsBothZippers!1527 lt!2516585 lt!2516556 (t!381654 s!7408)) lt!2516752)))

(declare-fun b!7029349 () Bool)

(assert (=> b!7029349 (= e!4225773 (matchZipper!2994 lt!2516556 (t!381654 s!7408)))))

(assert (= (and d!2192245 (not res!2869502)) b!7029349))

(declare-fun m!7734132 () Bool)

(assert (=> d!2192245 m!7734132))

(assert (=> d!2192245 m!7733934))

(declare-fun m!7734134 () Bool)

(assert (=> d!2192245 m!7734134))

(assert (=> b!7029349 m!7733888))

(assert (=> b!7029236 d!2192245))

(declare-fun d!2192247 () Bool)

(declare-fun c!1307052 () Bool)

(assert (=> d!2192247 (= c!1307052 (isEmpty!39514 (t!381654 s!7408)))))

(declare-fun e!4225774 () Bool)

(assert (=> d!2192247 (= (matchZipper!2994 lt!2516585 (t!381654 s!7408)) e!4225774)))

(declare-fun b!7029350 () Bool)

(assert (=> b!7029350 (= e!4225774 (nullableZipper!2570 lt!2516585))))

(declare-fun b!7029351 () Bool)

(assert (=> b!7029351 (= e!4225774 (matchZipper!2994 (derivationStepZipper!2910 lt!2516585 (head!14251 (t!381654 s!7408))) (tail!13534 (t!381654 s!7408))))))

(assert (= (and d!2192247 c!1307052) b!7029350))

(assert (= (and d!2192247 (not c!1307052)) b!7029351))

(assert (=> d!2192247 m!7734108))

(declare-fun m!7734136 () Bool)

(assert (=> b!7029350 m!7734136))

(assert (=> b!7029351 m!7734112))

(assert (=> b!7029351 m!7734112))

(declare-fun m!7734138 () Bool)

(assert (=> b!7029351 m!7734138))

(assert (=> b!7029351 m!7734116))

(assert (=> b!7029351 m!7734138))

(assert (=> b!7029351 m!7734116))

(declare-fun m!7734140 () Bool)

(assert (=> b!7029351 m!7734140))

(assert (=> b!7029236 d!2192247))

(declare-fun d!2192249 () Bool)

(declare-fun nullableFct!2719 (Regex!17454) Bool)

(assert (=> d!2192249 (= (nullable!7165 (h!74214 (exprs!6950 lt!2516574))) (nullableFct!2719 (h!74214 (exprs!6950 lt!2516574))))))

(declare-fun bs!1869745 () Bool)

(assert (= bs!1869745 d!2192249))

(declare-fun m!7734142 () Bool)

(assert (=> bs!1869745 m!7734142))

(assert (=> b!7029247 d!2192249))

(declare-fun d!2192251 () Bool)

(assert (=> d!2192251 (= (tail!13532 (exprs!6950 lt!2516574)) (t!381653 (exprs!6950 lt!2516574)))))

(assert (=> b!7029247 d!2192251))

(declare-fun d!2192253 () Bool)

(declare-fun c!1307053 () Bool)

(assert (=> d!2192253 (= c!1307053 (isEmpty!39514 (t!381654 s!7408)))))

(declare-fun e!4225775 () Bool)

(assert (=> d!2192253 (= (matchZipper!2994 lt!2516556 (t!381654 s!7408)) e!4225775)))

(declare-fun b!7029352 () Bool)

(assert (=> b!7029352 (= e!4225775 (nullableZipper!2570 lt!2516556))))

(declare-fun b!7029353 () Bool)

(assert (=> b!7029353 (= e!4225775 (matchZipper!2994 (derivationStepZipper!2910 lt!2516556 (head!14251 (t!381654 s!7408))) (tail!13534 (t!381654 s!7408))))))

(assert (= (and d!2192253 c!1307053) b!7029352))

(assert (= (and d!2192253 (not c!1307053)) b!7029353))

(assert (=> d!2192253 m!7734108))

(declare-fun m!7734144 () Bool)

(assert (=> b!7029352 m!7734144))

(assert (=> b!7029353 m!7734112))

(assert (=> b!7029353 m!7734112))

(declare-fun m!7734146 () Bool)

(assert (=> b!7029353 m!7734146))

(assert (=> b!7029353 m!7734116))

(assert (=> b!7029353 m!7734146))

(assert (=> b!7029353 m!7734116))

(declare-fun m!7734148 () Bool)

(assert (=> b!7029353 m!7734148))

(assert (=> b!7029248 d!2192253))

(assert (=> b!7029248 d!2192241))

(declare-fun d!2192255 () Bool)

(declare-fun dynLambda!27342 (Int Context!12900) (Set Context!12900))

(assert (=> d!2192255 (= (flatMap!2401 lt!2516555 lambda!413875) (dynLambda!27342 lambda!413875 lt!2516560))))

(declare-fun lt!2516755 () Unit!161576)

(declare-fun choose!53154 ((Set Context!12900) Context!12900 Int) Unit!161576)

(assert (=> d!2192255 (= lt!2516755 (choose!53154 lt!2516555 lt!2516560 lambda!413875))))

(assert (=> d!2192255 (= lt!2516555 (set.insert lt!2516560 (as set.empty (Set Context!12900))))))

(assert (=> d!2192255 (= (lemmaFlatMapOnSingletonSet!1915 lt!2516555 lt!2516560 lambda!413875) lt!2516755)))

(declare-fun b_lambda!266071 () Bool)

(assert (=> (not b_lambda!266071) (not d!2192255)))

(declare-fun bs!1869746 () Bool)

(assert (= bs!1869746 d!2192255))

(assert (=> bs!1869746 m!7733968))

(declare-fun m!7734150 () Bool)

(assert (=> bs!1869746 m!7734150))

(declare-fun m!7734152 () Bool)

(assert (=> bs!1869746 m!7734152))

(assert (=> bs!1869746 m!7733966))

(assert (=> b!7029237 d!2192255))

(declare-fun bs!1869747 () Bool)

(declare-fun d!2192257 () Bool)

(assert (= bs!1869747 (and d!2192257 b!7029237)))

(declare-fun lambda!413938 () Int)

(assert (=> bs!1869747 (= lambda!413938 lambda!413875)))

(assert (=> d!2192257 true))

(assert (=> d!2192257 (= (derivationStepZipper!2910 lt!2516555 (h!74215 s!7408)) (flatMap!2401 lt!2516555 lambda!413938))))

(declare-fun bs!1869748 () Bool)

(assert (= bs!1869748 d!2192257))

(declare-fun m!7734154 () Bool)

(assert (=> bs!1869748 m!7734154))

(assert (=> b!7029237 d!2192257))

(declare-fun d!2192259 () Bool)

(declare-fun c!1307061 () Bool)

(declare-fun e!4225782 () Bool)

(assert (=> d!2192259 (= c!1307061 e!4225782)))

(declare-fun res!2869505 () Bool)

(assert (=> d!2192259 (=> (not res!2869505) (not e!4225782))))

(assert (=> d!2192259 (= res!2869505 (is-Cons!67766 (exprs!6950 lt!2516560)))))

(declare-fun e!4225784 () (Set Context!12900))

(assert (=> d!2192259 (= (derivationStepZipperUp!2064 lt!2516560 (h!74215 s!7408)) e!4225784)))

(declare-fun bm!638294 () Bool)

(declare-fun call!638299 () (Set Context!12900))

(assert (=> bm!638294 (= call!638299 (derivationStepZipperDown!2118 (h!74214 (exprs!6950 lt!2516560)) (Context!12901 (t!381653 (exprs!6950 lt!2516560))) (h!74215 s!7408)))))

(declare-fun b!7029366 () Bool)

(declare-fun e!4225783 () (Set Context!12900))

(assert (=> b!7029366 (= e!4225783 call!638299)))

(declare-fun b!7029367 () Bool)

(assert (=> b!7029367 (= e!4225784 (set.union call!638299 (derivationStepZipperUp!2064 (Context!12901 (t!381653 (exprs!6950 lt!2516560))) (h!74215 s!7408))))))

(declare-fun b!7029368 () Bool)

(assert (=> b!7029368 (= e!4225782 (nullable!7165 (h!74214 (exprs!6950 lt!2516560))))))

(declare-fun b!7029369 () Bool)

(assert (=> b!7029369 (= e!4225784 e!4225783)))

(declare-fun c!1307060 () Bool)

(assert (=> b!7029369 (= c!1307060 (is-Cons!67766 (exprs!6950 lt!2516560)))))

(declare-fun b!7029370 () Bool)

(assert (=> b!7029370 (= e!4225783 (as set.empty (Set Context!12900)))))

(assert (= (and d!2192259 res!2869505) b!7029368))

(assert (= (and d!2192259 c!1307061) b!7029367))

(assert (= (and d!2192259 (not c!1307061)) b!7029369))

(assert (= (and b!7029369 c!1307060) b!7029366))

(assert (= (and b!7029369 (not c!1307060)) b!7029370))

(assert (= (or b!7029367 b!7029366) bm!638294))

(declare-fun m!7734156 () Bool)

(assert (=> bm!638294 m!7734156))

(declare-fun m!7734158 () Bool)

(assert (=> b!7029367 m!7734158))

(declare-fun m!7734160 () Bool)

(assert (=> b!7029368 m!7734160))

(assert (=> b!7029237 d!2192259))

(declare-fun d!2192261 () Bool)

(declare-fun choose!53155 ((Set Context!12900) Int) (Set Context!12900))

(assert (=> d!2192261 (= (flatMap!2401 lt!2516555 lambda!413875) (choose!53155 lt!2516555 lambda!413875))))

(declare-fun bs!1869749 () Bool)

(assert (= bs!1869749 d!2192261))

(declare-fun m!7734162 () Bool)

(assert (=> bs!1869749 m!7734162))

(assert (=> b!7029237 d!2192261))

(assert (=> b!7029237 d!2192235))

(assert (=> b!7029229 d!2192253))

(assert (=> b!7029229 d!2192241))

(declare-fun d!2192263 () Bool)

(assert (=> d!2192263 (= (isEmpty!39512 (exprs!6950 lt!2516574)) (is-Nil!67766 (exprs!6950 lt!2516574)))))

(assert (=> b!7029250 d!2192263))

(declare-fun bs!1869750 () Bool)

(declare-fun d!2192265 () Bool)

(assert (= bs!1869750 (and d!2192265 b!7029240)))

(declare-fun lambda!413941 () Int)

(assert (=> bs!1869750 (not (= lambda!413941 lambda!413872))))

(assert (=> d!2192265 true))

(declare-fun order!28155 () Int)

(declare-fun dynLambda!27343 (Int Int) Int)

(assert (=> d!2192265 (< (dynLambda!27343 order!28155 lambda!413872) (dynLambda!27343 order!28155 lambda!413941))))

(declare-fun forall!16361 (List!67892 Int) Bool)

(assert (=> d!2192265 (= (exists!3371 lt!2516543 lambda!413872) (not (forall!16361 lt!2516543 lambda!413941)))))

(declare-fun bs!1869751 () Bool)

(assert (= bs!1869751 d!2192265))

(declare-fun m!7734164 () Bool)

(assert (=> bs!1869751 m!7734164))

(assert (=> b!7029240 d!2192265))

(declare-fun d!2192267 () Bool)

(declare-fun e!4225787 () Bool)

(assert (=> d!2192267 e!4225787))

(declare-fun res!2869508 () Bool)

(assert (=> d!2192267 (=> (not res!2869508) (not e!4225787))))

(declare-fun lt!2516758 () Context!12900)

(declare-fun dynLambda!27344 (Int Context!12900) Bool)

(assert (=> d!2192267 (= res!2869508 (dynLambda!27344 lambda!413872 lt!2516758))))

(declare-fun getWitness!1454 (List!67892 Int) Context!12900)

(assert (=> d!2192267 (= lt!2516758 (getWitness!1454 (toList!10797 lt!2516571) lambda!413872))))

(declare-fun exists!3373 ((Set Context!12900) Int) Bool)

(assert (=> d!2192267 (exists!3373 lt!2516571 lambda!413872)))

(assert (=> d!2192267 (= (getWitness!1452 lt!2516571 lambda!413872) lt!2516758)))

(declare-fun b!7029375 () Bool)

(assert (=> b!7029375 (= e!4225787 (set.member lt!2516758 lt!2516571))))

(assert (= (and d!2192267 res!2869508) b!7029375))

(declare-fun b_lambda!266073 () Bool)

(assert (=> (not b_lambda!266073) (not d!2192267)))

(declare-fun m!7734166 () Bool)

(assert (=> d!2192267 m!7734166))

(assert (=> d!2192267 m!7733954))

(assert (=> d!2192267 m!7733954))

(declare-fun m!7734168 () Bool)

(assert (=> d!2192267 m!7734168))

(declare-fun m!7734170 () Bool)

(assert (=> d!2192267 m!7734170))

(declare-fun m!7734172 () Bool)

(assert (=> b!7029375 m!7734172))

(assert (=> b!7029240 d!2192267))

(declare-fun bs!1869752 () Bool)

(declare-fun d!2192269 () Bool)

(assert (= bs!1869752 (and d!2192269 b!7029240)))

(declare-fun lambda!413944 () Int)

(assert (=> bs!1869752 (= lambda!413944 lambda!413872)))

(declare-fun bs!1869753 () Bool)

(assert (= bs!1869753 (and d!2192269 d!2192265)))

(assert (=> bs!1869753 (not (= lambda!413944 lambda!413941))))

(assert (=> d!2192269 true))

(assert (=> d!2192269 (exists!3371 lt!2516543 lambda!413944)))

(declare-fun lt!2516761 () Unit!161576)

(declare-fun choose!53156 (List!67892 List!67891) Unit!161576)

(assert (=> d!2192269 (= lt!2516761 (choose!53156 lt!2516543 s!7408))))

(declare-fun content!13510 (List!67892) (Set Context!12900))

(assert (=> d!2192269 (matchZipper!2994 (content!13510 lt!2516543) s!7408)))

(assert (=> d!2192269 (= (lemmaZipperMatchesExistsMatchingContext!393 lt!2516543 s!7408) lt!2516761)))

(declare-fun bs!1869754 () Bool)

(assert (= bs!1869754 d!2192269))

(declare-fun m!7734174 () Bool)

(assert (=> bs!1869754 m!7734174))

(declare-fun m!7734176 () Bool)

(assert (=> bs!1869754 m!7734176))

(declare-fun m!7734178 () Bool)

(assert (=> bs!1869754 m!7734178))

(assert (=> bs!1869754 m!7734178))

(declare-fun m!7734180 () Bool)

(assert (=> bs!1869754 m!7734180))

(assert (=> b!7029240 d!2192269))

(declare-fun d!2192271 () Bool)

(declare-fun c!1307064 () Bool)

(assert (=> d!2192271 (= c!1307064 (isEmpty!39514 s!7408))))

(declare-fun e!4225788 () Bool)

(assert (=> d!2192271 (= (matchZipper!2994 lt!2516564 s!7408) e!4225788)))

(declare-fun b!7029376 () Bool)

(assert (=> b!7029376 (= e!4225788 (nullableZipper!2570 lt!2516564))))

(declare-fun b!7029377 () Bool)

(assert (=> b!7029377 (= e!4225788 (matchZipper!2994 (derivationStepZipper!2910 lt!2516564 (head!14251 s!7408)) (tail!13534 s!7408)))))

(assert (= (and d!2192271 c!1307064) b!7029376))

(assert (= (and d!2192271 (not c!1307064)) b!7029377))

(declare-fun m!7734182 () Bool)

(assert (=> d!2192271 m!7734182))

(declare-fun m!7734184 () Bool)

(assert (=> b!7029376 m!7734184))

(declare-fun m!7734186 () Bool)

(assert (=> b!7029377 m!7734186))

(assert (=> b!7029377 m!7734186))

(declare-fun m!7734188 () Bool)

(assert (=> b!7029377 m!7734188))

(declare-fun m!7734190 () Bool)

(assert (=> b!7029377 m!7734190))

(assert (=> b!7029377 m!7734188))

(assert (=> b!7029377 m!7734190))

(declare-fun m!7734192 () Bool)

(assert (=> b!7029377 m!7734192))

(assert (=> b!7029240 d!2192271))

(declare-fun d!2192273 () Bool)

(declare-fun e!4225791 () Bool)

(assert (=> d!2192273 e!4225791))

(declare-fun res!2869511 () Bool)

(assert (=> d!2192273 (=> (not res!2869511) (not e!4225791))))

(declare-fun lt!2516764 () List!67892)

(declare-fun noDuplicate!2619 (List!67892) Bool)

(assert (=> d!2192273 (= res!2869511 (noDuplicate!2619 lt!2516764))))

(declare-fun choose!53157 ((Set Context!12900)) List!67892)

(assert (=> d!2192273 (= lt!2516764 (choose!53157 lt!2516571))))

(assert (=> d!2192273 (= (toList!10797 lt!2516571) lt!2516764)))

(declare-fun b!7029380 () Bool)

(assert (=> b!7029380 (= e!4225791 (= (content!13510 lt!2516764) lt!2516571))))

(assert (= (and d!2192273 res!2869511) b!7029380))

(declare-fun m!7734194 () Bool)

(assert (=> d!2192273 m!7734194))

(declare-fun m!7734196 () Bool)

(assert (=> d!2192273 m!7734196))

(declare-fun m!7734198 () Bool)

(assert (=> b!7029380 m!7734198))

(assert (=> b!7029240 d!2192273))

(declare-fun b!7029390 () Bool)

(declare-fun e!4225796 () List!67890)

(assert (=> b!7029390 (= e!4225796 (Cons!67766 (h!74214 (exprs!6950 lt!2516574)) (++!15488 (t!381653 (exprs!6950 lt!2516574)) (exprs!6950 ct2!306))))))

(declare-fun d!2192275 () Bool)

(declare-fun e!4225797 () Bool)

(assert (=> d!2192275 e!4225797))

(declare-fun res!2869517 () Bool)

(assert (=> d!2192275 (=> (not res!2869517) (not e!4225797))))

(declare-fun lt!2516767 () List!67890)

(declare-fun content!13511 (List!67890) (Set Regex!17454))

(assert (=> d!2192275 (= res!2869517 (= (content!13511 lt!2516767) (set.union (content!13511 (exprs!6950 lt!2516574)) (content!13511 (exprs!6950 ct2!306)))))))

(assert (=> d!2192275 (= lt!2516767 e!4225796)))

(declare-fun c!1307067 () Bool)

(assert (=> d!2192275 (= c!1307067 (is-Nil!67766 (exprs!6950 lt!2516574)))))

(assert (=> d!2192275 (= (++!15488 (exprs!6950 lt!2516574) (exprs!6950 ct2!306)) lt!2516767)))

(declare-fun b!7029391 () Bool)

(declare-fun res!2869516 () Bool)

(assert (=> b!7029391 (=> (not res!2869516) (not e!4225797))))

(declare-fun size!41048 (List!67890) Int)

(assert (=> b!7029391 (= res!2869516 (= (size!41048 lt!2516767) (+ (size!41048 (exprs!6950 lt!2516574)) (size!41048 (exprs!6950 ct2!306)))))))

(declare-fun b!7029392 () Bool)

(assert (=> b!7029392 (= e!4225797 (or (not (= (exprs!6950 ct2!306) Nil!67766)) (= lt!2516767 (exprs!6950 lt!2516574))))))

(declare-fun b!7029389 () Bool)

(assert (=> b!7029389 (= e!4225796 (exprs!6950 ct2!306))))

(assert (= (and d!2192275 c!1307067) b!7029389))

(assert (= (and d!2192275 (not c!1307067)) b!7029390))

(assert (= (and d!2192275 res!2869517) b!7029391))

(assert (= (and b!7029391 res!2869516) b!7029392))

(declare-fun m!7734200 () Bool)

(assert (=> b!7029390 m!7734200))

(declare-fun m!7734202 () Bool)

(assert (=> d!2192275 m!7734202))

(declare-fun m!7734204 () Bool)

(assert (=> d!2192275 m!7734204))

(declare-fun m!7734206 () Bool)

(assert (=> d!2192275 m!7734206))

(declare-fun m!7734208 () Bool)

(assert (=> b!7029391 m!7734208))

(declare-fun m!7734210 () Bool)

(assert (=> b!7029391 m!7734210))

(declare-fun m!7734212 () Bool)

(assert (=> b!7029391 m!7734212))

(assert (=> b!7029230 d!2192275))

(assert (=> b!7029230 d!2192235))

(declare-fun d!2192277 () Bool)

(declare-fun e!4225800 () Bool)

(assert (=> d!2192277 e!4225800))

(declare-fun res!2869520 () Bool)

(assert (=> d!2192277 (=> (not res!2869520) (not e!4225800))))

(declare-fun lt!2516770 () Context!12900)

(declare-fun dynLambda!27345 (Int Context!12900) Context!12900)

(assert (=> d!2192277 (= res!2869520 (= lt!2516539 (dynLambda!27345 lambda!413873 lt!2516770)))))

(declare-fun choose!53158 ((Set Context!12900) Int Context!12900) Context!12900)

(assert (=> d!2192277 (= lt!2516770 (choose!53158 z1!570 lambda!413873 lt!2516539))))

(assert (=> d!2192277 (set.member lt!2516539 (map!15749 z1!570 lambda!413873))))

(assert (=> d!2192277 (= (mapPost2!295 z1!570 lambda!413873 lt!2516539) lt!2516770)))

(declare-fun b!7029396 () Bool)

(assert (=> b!7029396 (= e!4225800 (set.member lt!2516770 z1!570))))

(assert (= (and d!2192277 res!2869520) b!7029396))

(declare-fun b_lambda!266075 () Bool)

(assert (=> (not b_lambda!266075) (not d!2192277)))

(declare-fun m!7734214 () Bool)

(assert (=> d!2192277 m!7734214))

(declare-fun m!7734216 () Bool)

(assert (=> d!2192277 m!7734216))

(declare-fun m!7734218 () Bool)

(assert (=> d!2192277 m!7734218))

(declare-fun m!7734220 () Bool)

(assert (=> d!2192277 m!7734220))

(declare-fun m!7734222 () Bool)

(assert (=> b!7029396 m!7734222))

(assert (=> b!7029230 d!2192277))

(declare-fun d!2192279 () Bool)

(assert (=> d!2192279 (isDefined!13560 (findConcatSeparationZippers!375 lt!2516577 (set.insert ct2!306 (as set.empty (Set Context!12900))) Nil!67767 s!7408 s!7408))))

(declare-fun lt!2516773 () Unit!161576)

(declare-fun choose!53159 ((Set Context!12900) Context!12900 List!67891) Unit!161576)

(assert (=> d!2192279 (= lt!2516773 (choose!53159 lt!2516577 ct2!306 s!7408))))

(assert (=> d!2192279 (matchZipper!2994 (appendTo!575 lt!2516577 ct2!306) s!7408)))

(assert (=> d!2192279 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!363 lt!2516577 ct2!306 s!7408) lt!2516773)))

(declare-fun bs!1869755 () Bool)

(assert (= bs!1869755 d!2192279))

(assert (=> bs!1869755 m!7733876))

(declare-fun m!7734224 () Bool)

(assert (=> bs!1869755 m!7734224))

(assert (=> bs!1869755 m!7733876))

(declare-fun m!7734226 () Bool)

(assert (=> bs!1869755 m!7734226))

(assert (=> bs!1869755 m!7734224))

(declare-fun m!7734228 () Bool)

(assert (=> bs!1869755 m!7734228))

(declare-fun m!7734230 () Bool)

(assert (=> bs!1869755 m!7734230))

(declare-fun m!7734232 () Bool)

(assert (=> bs!1869755 m!7734232))

(assert (=> bs!1869755 m!7734230))

(assert (=> b!7029231 d!2192279))

(declare-fun d!2192281 () Bool)

(declare-fun c!1307068 () Bool)

(assert (=> d!2192281 (= c!1307068 (isEmpty!39514 (_1!37330 lt!2516561)))))

(declare-fun e!4225801 () Bool)

(assert (=> d!2192281 (= (matchZipper!2994 lt!2516577 (_1!37330 lt!2516561)) e!4225801)))

(declare-fun b!7029397 () Bool)

(assert (=> b!7029397 (= e!4225801 (nullableZipper!2570 lt!2516577))))

(declare-fun b!7029398 () Bool)

(assert (=> b!7029398 (= e!4225801 (matchZipper!2994 (derivationStepZipper!2910 lt!2516577 (head!14251 (_1!37330 lt!2516561))) (tail!13534 (_1!37330 lt!2516561))))))

(assert (= (and d!2192281 c!1307068) b!7029397))

(assert (= (and d!2192281 (not c!1307068)) b!7029398))

(declare-fun m!7734234 () Bool)

(assert (=> d!2192281 m!7734234))

(declare-fun m!7734236 () Bool)

(assert (=> b!7029397 m!7734236))

(declare-fun m!7734238 () Bool)

(assert (=> b!7029398 m!7734238))

(assert (=> b!7029398 m!7734238))

(declare-fun m!7734240 () Bool)

(assert (=> b!7029398 m!7734240))

(declare-fun m!7734242 () Bool)

(assert (=> b!7029398 m!7734242))

(assert (=> b!7029398 m!7734240))

(assert (=> b!7029398 m!7734242))

(declare-fun m!7734244 () Bool)

(assert (=> b!7029398 m!7734244))

(assert (=> b!7029231 d!2192281))

(declare-fun d!2192283 () Bool)

(declare-fun isEmpty!39515 (Option!16859) Bool)

(assert (=> d!2192283 (= (isDefined!13560 lt!2516586) (not (isEmpty!39515 lt!2516586)))))

(declare-fun bs!1869756 () Bool)

(assert (= bs!1869756 d!2192283))

(declare-fun m!7734246 () Bool)

(assert (=> bs!1869756 m!7734246))

(assert (=> b!7029231 d!2192283))

(declare-fun b!7029417 () Bool)

(declare-fun e!4225816 () Option!16859)

(assert (=> b!7029417 (= e!4225816 (Some!16858 (tuple2!68055 Nil!67767 s!7408)))))

(declare-fun d!2192285 () Bool)

(declare-fun e!4225814 () Bool)

(assert (=> d!2192285 e!4225814))

(declare-fun res!2869534 () Bool)

(assert (=> d!2192285 (=> res!2869534 e!4225814)))

(declare-fun e!4225815 () Bool)

(assert (=> d!2192285 (= res!2869534 e!4225815)))

(declare-fun res!2869532 () Bool)

(assert (=> d!2192285 (=> (not res!2869532) (not e!4225815))))

(declare-fun lt!2516781 () Option!16859)

(assert (=> d!2192285 (= res!2869532 (isDefined!13560 lt!2516781))))

(assert (=> d!2192285 (= lt!2516781 e!4225816)))

(declare-fun c!1307073 () Bool)

(declare-fun e!4225813 () Bool)

(assert (=> d!2192285 (= c!1307073 e!4225813)))

(declare-fun res!2869533 () Bool)

(assert (=> d!2192285 (=> (not res!2869533) (not e!4225813))))

(assert (=> d!2192285 (= res!2869533 (matchZipper!2994 lt!2516577 Nil!67767))))

(declare-fun ++!15490 (List!67891 List!67891) List!67891)

(assert (=> d!2192285 (= (++!15490 Nil!67767 s!7408) s!7408)))

(assert (=> d!2192285 (= (findConcatSeparationZippers!375 lt!2516577 lt!2516540 Nil!67767 s!7408 s!7408) lt!2516781)))

(declare-fun b!7029418 () Bool)

(assert (=> b!7029418 (= e!4225813 (matchZipper!2994 lt!2516540 s!7408))))

(declare-fun b!7029419 () Bool)

(assert (=> b!7029419 (= e!4225815 (= (++!15490 (_1!37330 (get!23737 lt!2516781)) (_2!37330 (get!23737 lt!2516781))) s!7408))))

(declare-fun b!7029420 () Bool)

(declare-fun e!4225812 () Option!16859)

(assert (=> b!7029420 (= e!4225816 e!4225812)))

(declare-fun c!1307074 () Bool)

(assert (=> b!7029420 (= c!1307074 (is-Nil!67767 s!7408))))

(declare-fun b!7029421 () Bool)

(declare-fun res!2869531 () Bool)

(assert (=> b!7029421 (=> (not res!2869531) (not e!4225815))))

(assert (=> b!7029421 (= res!2869531 (matchZipper!2994 lt!2516577 (_1!37330 (get!23737 lt!2516781))))))

(declare-fun b!7029422 () Bool)

(assert (=> b!7029422 (= e!4225814 (not (isDefined!13560 lt!2516781)))))

(declare-fun b!7029423 () Bool)

(assert (=> b!7029423 (= e!4225812 None!16858)))

(declare-fun b!7029424 () Bool)

(declare-fun lt!2516782 () Unit!161576)

(declare-fun lt!2516780 () Unit!161576)

(assert (=> b!7029424 (= lt!2516782 lt!2516780)))

(assert (=> b!7029424 (= (++!15490 (++!15490 Nil!67767 (Cons!67767 (h!74215 s!7408) Nil!67767)) (t!381654 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2914 (List!67891 C!35178 List!67891 List!67891) Unit!161576)

(assert (=> b!7029424 (= lt!2516780 (lemmaMoveElementToOtherListKeepsConcatEq!2914 Nil!67767 (h!74215 s!7408) (t!381654 s!7408) s!7408))))

(assert (=> b!7029424 (= e!4225812 (findConcatSeparationZippers!375 lt!2516577 lt!2516540 (++!15490 Nil!67767 (Cons!67767 (h!74215 s!7408) Nil!67767)) (t!381654 s!7408) s!7408))))

(declare-fun b!7029425 () Bool)

(declare-fun res!2869535 () Bool)

(assert (=> b!7029425 (=> (not res!2869535) (not e!4225815))))

(assert (=> b!7029425 (= res!2869535 (matchZipper!2994 lt!2516540 (_2!37330 (get!23737 lt!2516781))))))

(assert (= (and d!2192285 res!2869533) b!7029418))

(assert (= (and d!2192285 c!1307073) b!7029417))

(assert (= (and d!2192285 (not c!1307073)) b!7029420))

(assert (= (and b!7029420 c!1307074) b!7029423))

(assert (= (and b!7029420 (not c!1307074)) b!7029424))

(assert (= (and d!2192285 res!2869532) b!7029421))

(assert (= (and b!7029421 res!2869531) b!7029425))

(assert (= (and b!7029425 res!2869535) b!7029419))

(assert (= (and d!2192285 (not res!2869534)) b!7029422))

(declare-fun m!7734248 () Bool)

(assert (=> b!7029421 m!7734248))

(declare-fun m!7734250 () Bool)

(assert (=> b!7029421 m!7734250))

(declare-fun m!7734252 () Bool)

(assert (=> d!2192285 m!7734252))

(declare-fun m!7734254 () Bool)

(assert (=> d!2192285 m!7734254))

(declare-fun m!7734256 () Bool)

(assert (=> d!2192285 m!7734256))

(declare-fun m!7734258 () Bool)

(assert (=> b!7029424 m!7734258))

(assert (=> b!7029424 m!7734258))

(declare-fun m!7734260 () Bool)

(assert (=> b!7029424 m!7734260))

(declare-fun m!7734262 () Bool)

(assert (=> b!7029424 m!7734262))

(assert (=> b!7029424 m!7734258))

(declare-fun m!7734264 () Bool)

(assert (=> b!7029424 m!7734264))

(assert (=> b!7029422 m!7734252))

(assert (=> b!7029419 m!7734248))

(declare-fun m!7734266 () Bool)

(assert (=> b!7029419 m!7734266))

(declare-fun m!7734268 () Bool)

(assert (=> b!7029418 m!7734268))

(assert (=> b!7029425 m!7734248))

(declare-fun m!7734270 () Bool)

(assert (=> b!7029425 m!7734270))

(assert (=> b!7029231 d!2192285))

(declare-fun d!2192287 () Bool)

(assert (=> d!2192287 (= (get!23737 lt!2516586) (v!53140 lt!2516586))))

(assert (=> b!7029231 d!2192287))

(declare-fun d!2192289 () Bool)

(declare-fun lt!2516785 () Int)

(assert (=> d!2192289 (>= lt!2516785 0)))

(declare-fun e!4225819 () Int)

(assert (=> d!2192289 (= lt!2516785 e!4225819)))

(declare-fun c!1307077 () Bool)

(assert (=> d!2192289 (= c!1307077 (is-Cons!67768 (Cons!67768 lt!2516565 Nil!67768)))))

(assert (=> d!2192289 (= (zipperDepthTotal!517 (Cons!67768 lt!2516565 Nil!67768)) lt!2516785)))

(declare-fun b!7029430 () Bool)

(assert (=> b!7029430 (= e!4225819 (+ (contextDepthTotal!489 (h!74216 (Cons!67768 lt!2516565 Nil!67768))) (zipperDepthTotal!517 (t!381655 (Cons!67768 lt!2516565 Nil!67768)))))))

(declare-fun b!7029431 () Bool)

(assert (=> b!7029431 (= e!4225819 0)))

(assert (= (and d!2192289 c!1307077) b!7029430))

(assert (= (and d!2192289 (not c!1307077)) b!7029431))

(declare-fun m!7734272 () Bool)

(assert (=> b!7029430 m!7734272))

(declare-fun m!7734274 () Bool)

(assert (=> b!7029430 m!7734274))

(assert (=> b!7029251 d!2192289))

(declare-fun d!2192291 () Bool)

(declare-fun c!1307078 () Bool)

(assert (=> d!2192291 (= c!1307078 (isEmpty!39514 s!7408))))

(declare-fun e!4225820 () Bool)

(assert (=> d!2192291 (= (matchZipper!2994 lt!2516550 s!7408) e!4225820)))

(declare-fun b!7029432 () Bool)

(assert (=> b!7029432 (= e!4225820 (nullableZipper!2570 lt!2516550))))

(declare-fun b!7029433 () Bool)

(assert (=> b!7029433 (= e!4225820 (matchZipper!2994 (derivationStepZipper!2910 lt!2516550 (head!14251 s!7408)) (tail!13534 s!7408)))))

(assert (= (and d!2192291 c!1307078) b!7029432))

(assert (= (and d!2192291 (not c!1307078)) b!7029433))

(assert (=> d!2192291 m!7734182))

(declare-fun m!7734276 () Bool)

(assert (=> b!7029432 m!7734276))

(assert (=> b!7029433 m!7734186))

(assert (=> b!7029433 m!7734186))

(declare-fun m!7734278 () Bool)

(assert (=> b!7029433 m!7734278))

(assert (=> b!7029433 m!7734190))

(assert (=> b!7029433 m!7734278))

(assert (=> b!7029433 m!7734190))

(declare-fun m!7734280 () Bool)

(assert (=> b!7029433 m!7734280))

(assert (=> b!7029252 d!2192291))

(assert (=> b!7029252 d!2192241))

(assert (=> b!7029242 d!2192241))

(declare-fun d!2192293 () Bool)

(declare-fun c!1307080 () Bool)

(declare-fun e!4225821 () Bool)

(assert (=> d!2192293 (= c!1307080 e!4225821)))

(declare-fun res!2869536 () Bool)

(assert (=> d!2192293 (=> (not res!2869536) (not e!4225821))))

(assert (=> d!2192293 (= res!2869536 (is-Cons!67766 (exprs!6950 lt!2516548)))))

(declare-fun e!4225823 () (Set Context!12900))

(assert (=> d!2192293 (= (derivationStepZipperUp!2064 lt!2516548 (h!74215 s!7408)) e!4225823)))

(declare-fun bm!638295 () Bool)

(declare-fun call!638300 () (Set Context!12900))

(assert (=> bm!638295 (= call!638300 (derivationStepZipperDown!2118 (h!74214 (exprs!6950 lt!2516548)) (Context!12901 (t!381653 (exprs!6950 lt!2516548))) (h!74215 s!7408)))))

(declare-fun b!7029434 () Bool)

(declare-fun e!4225822 () (Set Context!12900))

(assert (=> b!7029434 (= e!4225822 call!638300)))

(declare-fun b!7029435 () Bool)

(assert (=> b!7029435 (= e!4225823 (set.union call!638300 (derivationStepZipperUp!2064 (Context!12901 (t!381653 (exprs!6950 lt!2516548))) (h!74215 s!7408))))))

(declare-fun b!7029436 () Bool)

(assert (=> b!7029436 (= e!4225821 (nullable!7165 (h!74214 (exprs!6950 lt!2516548))))))

(declare-fun b!7029437 () Bool)

(assert (=> b!7029437 (= e!4225823 e!4225822)))

(declare-fun c!1307079 () Bool)

(assert (=> b!7029437 (= c!1307079 (is-Cons!67766 (exprs!6950 lt!2516548)))))

(declare-fun b!7029438 () Bool)

(assert (=> b!7029438 (= e!4225822 (as set.empty (Set Context!12900)))))

(assert (= (and d!2192293 res!2869536) b!7029436))

(assert (= (and d!2192293 c!1307080) b!7029435))

(assert (= (and d!2192293 (not c!1307080)) b!7029437))

(assert (= (and b!7029437 c!1307079) b!7029434))

(assert (= (and b!7029437 (not c!1307079)) b!7029438))

(assert (= (or b!7029435 b!7029434) bm!638295))

(declare-fun m!7734282 () Bool)

(assert (=> bm!638295 m!7734282))

(declare-fun m!7734284 () Bool)

(assert (=> b!7029435 m!7734284))

(declare-fun m!7734286 () Bool)

(assert (=> b!7029436 m!7734286))

(assert (=> b!7029242 d!2192293))

(declare-fun b!7029461 () Bool)

(declare-fun e!4225840 () (Set Context!12900))

(declare-fun e!4225836 () (Set Context!12900))

(assert (=> b!7029461 (= e!4225840 e!4225836)))

(declare-fun c!1307094 () Bool)

(assert (=> b!7029461 (= c!1307094 (is-Union!17454 (h!74214 (exprs!6950 lt!2516574))))))

(declare-fun b!7029462 () Bool)

(declare-fun e!4225837 () Bool)

(assert (=> b!7029462 (= e!4225837 (nullable!7165 (regOne!35420 (h!74214 (exprs!6950 lt!2516574)))))))

(declare-fun c!1307091 () Bool)

(declare-fun bm!638308 () Bool)

(declare-fun call!638318 () List!67890)

(declare-fun c!1307095 () Bool)

(declare-fun $colon$colon!2565 (List!67890 Regex!17454) List!67890)

(assert (=> bm!638308 (= call!638318 ($colon$colon!2565 (exprs!6950 lt!2516548) (ite (or c!1307091 c!1307095) (regTwo!35420 (h!74214 (exprs!6950 lt!2516574))) (h!74214 (exprs!6950 lt!2516574)))))))

(declare-fun b!7029463 () Bool)

(declare-fun e!4225839 () (Set Context!12900))

(declare-fun e!4225838 () (Set Context!12900))

(assert (=> b!7029463 (= e!4225839 e!4225838)))

(assert (=> b!7029463 (= c!1307095 (is-Concat!26299 (h!74214 (exprs!6950 lt!2516574))))))

(declare-fun b!7029465 () Bool)

(declare-fun c!1307092 () Bool)

(assert (=> b!7029465 (= c!1307092 (is-Star!17454 (h!74214 (exprs!6950 lt!2516574))))))

(declare-fun e!4225841 () (Set Context!12900))

(assert (=> b!7029465 (= e!4225838 e!4225841)))

(declare-fun b!7029466 () Bool)

(assert (=> b!7029466 (= c!1307091 e!4225837)))

(declare-fun res!2869539 () Bool)

(assert (=> b!7029466 (=> (not res!2869539) (not e!4225837))))

(assert (=> b!7029466 (= res!2869539 (is-Concat!26299 (h!74214 (exprs!6950 lt!2516574))))))

(assert (=> b!7029466 (= e!4225836 e!4225839)))

(declare-fun b!7029467 () Bool)

(declare-fun call!638313 () (Set Context!12900))

(declare-fun call!638317 () (Set Context!12900))

(assert (=> b!7029467 (= e!4225836 (set.union call!638313 call!638317))))

(declare-fun bm!638309 () Bool)

(declare-fun call!638315 () List!67890)

(assert (=> bm!638309 (= call!638315 call!638318)))

(declare-fun b!7029468 () Bool)

(assert (=> b!7029468 (= e!4225840 (set.insert lt!2516548 (as set.empty (Set Context!12900))))))

(declare-fun b!7029469 () Bool)

(declare-fun call!638316 () (Set Context!12900))

(assert (=> b!7029469 (= e!4225841 call!638316)))

(declare-fun bm!638310 () Bool)

(declare-fun call!638314 () (Set Context!12900))

(assert (=> bm!638310 (= call!638316 call!638314)))

(declare-fun bm!638311 () Bool)

(assert (=> bm!638311 (= call!638314 call!638317)))

(declare-fun b!7029464 () Bool)

(assert (=> b!7029464 (= e!4225838 call!638316)))

(declare-fun d!2192295 () Bool)

(declare-fun c!1307093 () Bool)

(assert (=> d!2192295 (= c!1307093 (and (is-ElementMatch!17454 (h!74214 (exprs!6950 lt!2516574))) (= (c!1307031 (h!74214 (exprs!6950 lt!2516574))) (h!74215 s!7408))))))

(assert (=> d!2192295 (= (derivationStepZipperDown!2118 (h!74214 (exprs!6950 lt!2516574)) lt!2516548 (h!74215 s!7408)) e!4225840)))

(declare-fun b!7029470 () Bool)

(assert (=> b!7029470 (= e!4225841 (as set.empty (Set Context!12900)))))

(declare-fun bm!638312 () Bool)

(assert (=> bm!638312 (= call!638313 (derivationStepZipperDown!2118 (ite c!1307094 (regOne!35421 (h!74214 (exprs!6950 lt!2516574))) (regOne!35420 (h!74214 (exprs!6950 lt!2516574)))) (ite c!1307094 lt!2516548 (Context!12901 call!638318)) (h!74215 s!7408)))))

(declare-fun b!7029471 () Bool)

(assert (=> b!7029471 (= e!4225839 (set.union call!638313 call!638314))))

(declare-fun bm!638313 () Bool)

(assert (=> bm!638313 (= call!638317 (derivationStepZipperDown!2118 (ite c!1307094 (regTwo!35421 (h!74214 (exprs!6950 lt!2516574))) (ite c!1307091 (regTwo!35420 (h!74214 (exprs!6950 lt!2516574))) (ite c!1307095 (regOne!35420 (h!74214 (exprs!6950 lt!2516574))) (reg!17783 (h!74214 (exprs!6950 lt!2516574)))))) (ite (or c!1307094 c!1307091) lt!2516548 (Context!12901 call!638315)) (h!74215 s!7408)))))

(assert (= (and d!2192295 c!1307093) b!7029468))

(assert (= (and d!2192295 (not c!1307093)) b!7029461))

(assert (= (and b!7029461 c!1307094) b!7029467))

(assert (= (and b!7029461 (not c!1307094)) b!7029466))

(assert (= (and b!7029466 res!2869539) b!7029462))

(assert (= (and b!7029466 c!1307091) b!7029471))

(assert (= (and b!7029466 (not c!1307091)) b!7029463))

(assert (= (and b!7029463 c!1307095) b!7029464))

(assert (= (and b!7029463 (not c!1307095)) b!7029465))

(assert (= (and b!7029465 c!1307092) b!7029469))

(assert (= (and b!7029465 (not c!1307092)) b!7029470))

(assert (= (or b!7029464 b!7029469) bm!638309))

(assert (= (or b!7029464 b!7029469) bm!638310))

(assert (= (or b!7029471 bm!638310) bm!638311))

(assert (= (or b!7029471 bm!638309) bm!638308))

(assert (= (or b!7029467 b!7029471) bm!638312))

(assert (= (or b!7029467 bm!638311) bm!638313))

(declare-fun m!7734288 () Bool)

(assert (=> bm!638308 m!7734288))

(assert (=> b!7029468 m!7733896))

(declare-fun m!7734290 () Bool)

(assert (=> bm!638312 m!7734290))

(declare-fun m!7734292 () Bool)

(assert (=> bm!638313 m!7734292))

(declare-fun m!7734294 () Bool)

(assert (=> b!7029462 m!7734294))

(assert (=> b!7029242 d!2192295))

(declare-fun b!7029473 () Bool)

(declare-fun e!4225842 () List!67890)

(assert (=> b!7029473 (= e!4225842 (Cons!67766 (h!74214 lt!2516544) (++!15488 (t!381653 lt!2516544) (exprs!6950 ct2!306))))))

(declare-fun d!2192297 () Bool)

(declare-fun e!4225843 () Bool)

(assert (=> d!2192297 e!4225843))

(declare-fun res!2869541 () Bool)

(assert (=> d!2192297 (=> (not res!2869541) (not e!4225843))))

(declare-fun lt!2516786 () List!67890)

(assert (=> d!2192297 (= res!2869541 (= (content!13511 lt!2516786) (set.union (content!13511 lt!2516544) (content!13511 (exprs!6950 ct2!306)))))))

(assert (=> d!2192297 (= lt!2516786 e!4225842)))

(declare-fun c!1307096 () Bool)

(assert (=> d!2192297 (= c!1307096 (is-Nil!67766 lt!2516544))))

(assert (=> d!2192297 (= (++!15488 lt!2516544 (exprs!6950 ct2!306)) lt!2516786)))

(declare-fun b!7029474 () Bool)

(declare-fun res!2869540 () Bool)

(assert (=> b!7029474 (=> (not res!2869540) (not e!4225843))))

(assert (=> b!7029474 (= res!2869540 (= (size!41048 lt!2516786) (+ (size!41048 lt!2516544) (size!41048 (exprs!6950 ct2!306)))))))

(declare-fun b!7029475 () Bool)

(assert (=> b!7029475 (= e!4225843 (or (not (= (exprs!6950 ct2!306) Nil!67766)) (= lt!2516786 lt!2516544)))))

(declare-fun b!7029472 () Bool)

(assert (=> b!7029472 (= e!4225842 (exprs!6950 ct2!306))))

(assert (= (and d!2192297 c!1307096) b!7029472))

(assert (= (and d!2192297 (not c!1307096)) b!7029473))

(assert (= (and d!2192297 res!2869541) b!7029474))

(assert (= (and b!7029474 res!2869540) b!7029475))

(declare-fun m!7734296 () Bool)

(assert (=> b!7029473 m!7734296))

(declare-fun m!7734298 () Bool)

(assert (=> d!2192297 m!7734298))

(declare-fun m!7734300 () Bool)

(assert (=> d!2192297 m!7734300))

(assert (=> d!2192297 m!7734206))

(declare-fun m!7734302 () Bool)

(assert (=> b!7029474 m!7734302))

(declare-fun m!7734304 () Bool)

(assert (=> b!7029474 m!7734304))

(assert (=> b!7029474 m!7734212))

(assert (=> b!7029242 d!2192297))

(declare-fun bs!1869757 () Bool)

(declare-fun d!2192299 () Bool)

(assert (= bs!1869757 (and d!2192299 b!7029230)))

(declare-fun lambda!413947 () Int)

(assert (=> bs!1869757 (= lambda!413947 lambda!413874)))

(assert (=> d!2192299 (= (inv!86495 setElem!49079) (forall!16360 (exprs!6950 setElem!49079) lambda!413947))))

(declare-fun bs!1869758 () Bool)

(assert (= bs!1869758 d!2192299))

(declare-fun m!7734306 () Bool)

(assert (=> bs!1869758 m!7734306))

(assert (=> setNonEmpty!49079 d!2192299))

(assert (=> b!7029232 d!2192241))

(declare-fun d!2192301 () Bool)

(assert (=> d!2192301 (= (flatMap!2401 lt!2516550 lambda!413875) (dynLambda!27342 lambda!413875 lt!2516548))))

(declare-fun lt!2516787 () Unit!161576)

(assert (=> d!2192301 (= lt!2516787 (choose!53154 lt!2516550 lt!2516548 lambda!413875))))

(assert (=> d!2192301 (= lt!2516550 (set.insert lt!2516548 (as set.empty (Set Context!12900))))))

(assert (=> d!2192301 (= (lemmaFlatMapOnSingletonSet!1915 lt!2516550 lt!2516548 lambda!413875) lt!2516787)))

(declare-fun b_lambda!266077 () Bool)

(assert (=> (not b_lambda!266077) (not d!2192301)))

(declare-fun bs!1869759 () Bool)

(assert (= bs!1869759 d!2192301))

(assert (=> bs!1869759 m!7733900))

(declare-fun m!7734308 () Bool)

(assert (=> bs!1869759 m!7734308))

(declare-fun m!7734310 () Bool)

(assert (=> bs!1869759 m!7734310))

(assert (=> bs!1869759 m!7733896))

(assert (=> b!7029232 d!2192301))

(declare-fun d!2192303 () Bool)

(assert (=> d!2192303 (= (flatMap!2401 lt!2516550 lambda!413875) (choose!53155 lt!2516550 lambda!413875))))

(declare-fun bs!1869760 () Bool)

(assert (= bs!1869760 d!2192303))

(declare-fun m!7734312 () Bool)

(assert (=> bs!1869760 m!7734312))

(assert (=> b!7029232 d!2192303))

(declare-fun bs!1869761 () Bool)

(declare-fun d!2192305 () Bool)

(assert (= bs!1869761 (and d!2192305 b!7029237)))

(declare-fun lambda!413948 () Int)

(assert (=> bs!1869761 (= lambda!413948 lambda!413875)))

(declare-fun bs!1869762 () Bool)

(assert (= bs!1869762 (and d!2192305 d!2192257)))

(assert (=> bs!1869762 (= lambda!413948 lambda!413938)))

(assert (=> d!2192305 true))

(assert (=> d!2192305 (= (derivationStepZipper!2910 lt!2516550 (h!74215 s!7408)) (flatMap!2401 lt!2516550 lambda!413948))))

(declare-fun bs!1869763 () Bool)

(assert (= bs!1869763 d!2192305))

(declare-fun m!7734314 () Bool)

(assert (=> bs!1869763 m!7734314))

(assert (=> b!7029232 d!2192305))

(assert (=> b!7029232 d!2192293))

(declare-fun d!2192307 () Bool)

(declare-fun c!1307097 () Bool)

(assert (=> d!2192307 (= c!1307097 (isEmpty!39514 s!7408))))

(declare-fun e!4225844 () Bool)

(assert (=> d!2192307 (= (matchZipper!2994 lt!2516571 s!7408) e!4225844)))

(declare-fun b!7029476 () Bool)

(assert (=> b!7029476 (= e!4225844 (nullableZipper!2570 lt!2516571))))

(declare-fun b!7029477 () Bool)

(assert (=> b!7029477 (= e!4225844 (matchZipper!2994 (derivationStepZipper!2910 lt!2516571 (head!14251 s!7408)) (tail!13534 s!7408)))))

(assert (= (and d!2192307 c!1307097) b!7029476))

(assert (= (and d!2192307 (not c!1307097)) b!7029477))

(assert (=> d!2192307 m!7734182))

(declare-fun m!7734316 () Bool)

(assert (=> b!7029476 m!7734316))

(assert (=> b!7029477 m!7734186))

(assert (=> b!7029477 m!7734186))

(declare-fun m!7734318 () Bool)

(assert (=> b!7029477 m!7734318))

(assert (=> b!7029477 m!7734190))

(assert (=> b!7029477 m!7734318))

(assert (=> b!7029477 m!7734190))

(declare-fun m!7734320 () Bool)

(assert (=> b!7029477 m!7734320))

(assert (=> start!678930 d!2192307))

(declare-fun bs!1869764 () Bool)

(declare-fun d!2192309 () Bool)

(assert (= bs!1869764 (and d!2192309 b!7029230)))

(declare-fun lambda!413953 () Int)

(assert (=> bs!1869764 (= lambda!413953 lambda!413873)))

(assert (=> d!2192309 true))

(assert (=> d!2192309 (= (appendTo!575 z1!570 ct2!306) (map!15749 z1!570 lambda!413953))))

(declare-fun bs!1869765 () Bool)

(assert (= bs!1869765 d!2192309))

(declare-fun m!7734322 () Bool)

(assert (=> bs!1869765 m!7734322))

(assert (=> start!678930 d!2192309))

(declare-fun bs!1869766 () Bool)

(declare-fun d!2192311 () Bool)

(assert (= bs!1869766 (and d!2192311 b!7029230)))

(declare-fun lambda!413954 () Int)

(assert (=> bs!1869766 (= lambda!413954 lambda!413874)))

(declare-fun bs!1869767 () Bool)

(assert (= bs!1869767 (and d!2192311 d!2192299)))

(assert (=> bs!1869767 (= lambda!413954 lambda!413947)))

(assert (=> d!2192311 (= (inv!86495 ct2!306) (forall!16360 (exprs!6950 ct2!306) lambda!413954))))

(declare-fun bs!1869768 () Bool)

(assert (= bs!1869768 d!2192311))

(declare-fun m!7734324 () Bool)

(assert (=> bs!1869768 m!7734324))

(assert (=> start!678930 d!2192311))

(assert (=> b!7029244 d!2192253))

(declare-fun d!2192313 () Bool)

(declare-fun lt!2516792 () Int)

(assert (=> d!2192313 (>= lt!2516792 0)))

(declare-fun e!4225847 () Int)

(assert (=> d!2192313 (= lt!2516792 e!4225847)))

(declare-fun c!1307102 () Bool)

(assert (=> d!2192313 (= c!1307102 (is-Cons!67766 (exprs!6950 lt!2516574)))))

(assert (=> d!2192313 (= (contextDepthTotal!489 lt!2516574) lt!2516792)))

(declare-fun b!7029482 () Bool)

(declare-fun regexDepthTotal!294 (Regex!17454) Int)

(assert (=> b!7029482 (= e!4225847 (+ (regexDepthTotal!294 (h!74214 (exprs!6950 lt!2516574))) (contextDepthTotal!489 (Context!12901 (t!381653 (exprs!6950 lt!2516574))))))))

(declare-fun b!7029483 () Bool)

(assert (=> b!7029483 (= e!4225847 1)))

(assert (= (and d!2192313 c!1307102) b!7029482))

(assert (= (and d!2192313 (not c!1307102)) b!7029483))

(declare-fun m!7734326 () Bool)

(assert (=> b!7029482 m!7734326))

(declare-fun m!7734328 () Bool)

(assert (=> b!7029482 m!7734328))

(assert (=> b!7029233 d!2192313))

(assert (=> b!7029233 d!2192241))

(declare-fun d!2192315 () Bool)

(declare-fun e!4225848 () Bool)

(assert (=> d!2192315 e!4225848))

(declare-fun res!2869543 () Bool)

(assert (=> d!2192315 (=> (not res!2869543) (not e!4225848))))

(declare-fun lt!2516793 () List!67892)

(assert (=> d!2192315 (= res!2869543 (noDuplicate!2619 lt!2516793))))

(assert (=> d!2192315 (= lt!2516793 (choose!53157 z1!570))))

(assert (=> d!2192315 (= (toList!10797 z1!570) lt!2516793)))

(declare-fun b!7029484 () Bool)

(assert (=> b!7029484 (= e!4225848 (= (content!13510 lt!2516793) z1!570))))

(assert (= (and d!2192315 res!2869543) b!7029484))

(declare-fun m!7734330 () Bool)

(assert (=> d!2192315 m!7734330))

(declare-fun m!7734332 () Bool)

(assert (=> d!2192315 m!7734332))

(declare-fun m!7734334 () Bool)

(assert (=> b!7029484 m!7734334))

(assert (=> b!7029233 d!2192315))

(declare-fun d!2192317 () Bool)

(assert (=> d!2192317 (= (flatMap!2401 lt!2516577 lambda!413875) (choose!53155 lt!2516577 lambda!413875))))

(declare-fun bs!1869769 () Bool)

(assert (= bs!1869769 d!2192317))

(declare-fun m!7734336 () Bool)

(assert (=> bs!1869769 m!7734336))

(assert (=> b!7029233 d!2192317))

(declare-fun d!2192319 () Bool)

(declare-fun choose!53160 ((Set Context!12900) Int) (Set Context!12900))

(assert (=> d!2192319 (= (map!15749 lt!2516577 lambda!413873) (choose!53160 lt!2516577 lambda!413873))))

(declare-fun bs!1869770 () Bool)

(assert (= bs!1869770 d!2192319))

(declare-fun m!7734338 () Bool)

(assert (=> bs!1869770 m!7734338))

(assert (=> b!7029233 d!2192319))

(declare-fun d!2192321 () Bool)

(assert (=> d!2192321 (<= (contextDepthTotal!489 lt!2516574) (zipperDepthTotal!517 lt!2516549))))

(declare-fun lt!2516796 () Unit!161576)

(declare-fun choose!53161 (List!67892 Context!12900) Unit!161576)

(assert (=> d!2192321 (= lt!2516796 (choose!53161 lt!2516549 lt!2516574))))

(declare-fun contains!20448 (List!67892 Context!12900) Bool)

(assert (=> d!2192321 (contains!20448 lt!2516549 lt!2516574)))

(assert (=> d!2192321 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!57 lt!2516549 lt!2516574) lt!2516796)))

(declare-fun bs!1869771 () Bool)

(assert (= bs!1869771 d!2192321))

(assert (=> bs!1869771 m!7733914))

(assert (=> bs!1869771 m!7733906))

(declare-fun m!7734340 () Bool)

(assert (=> bs!1869771 m!7734340))

(declare-fun m!7734342 () Bool)

(assert (=> bs!1869771 m!7734342))

(assert (=> b!7029233 d!2192321))

(declare-fun d!2192323 () Bool)

(declare-fun lt!2516797 () Int)

(assert (=> d!2192323 (>= lt!2516797 0)))

(declare-fun e!4225849 () Int)

(assert (=> d!2192323 (= lt!2516797 e!4225849)))

(declare-fun c!1307104 () Bool)

(assert (=> d!2192323 (= c!1307104 (is-Cons!67768 lt!2516549))))

(assert (=> d!2192323 (= (zipperDepthTotal!517 lt!2516549) lt!2516797)))

(declare-fun b!7029485 () Bool)

(assert (=> b!7029485 (= e!4225849 (+ (contextDepthTotal!489 (h!74216 lt!2516549)) (zipperDepthTotal!517 (t!381655 lt!2516549))))))

(declare-fun b!7029486 () Bool)

(assert (=> b!7029486 (= e!4225849 0)))

(assert (= (and d!2192323 c!1307104) b!7029485))

(assert (= (and d!2192323 (not c!1307104)) b!7029486))

(declare-fun m!7734344 () Bool)

(assert (=> b!7029485 m!7734344))

(declare-fun m!7734346 () Bool)

(assert (=> b!7029485 m!7734346))

(assert (=> b!7029233 d!2192323))

(assert (=> b!7029233 d!2192297))

(declare-fun d!2192325 () Bool)

(assert (=> d!2192325 (= (map!15749 lt!2516577 lambda!413873) (set.insert (dynLambda!27345 lambda!413873 lt!2516565) (as set.empty (Set Context!12900))))))

(declare-fun lt!2516800 () Unit!161576)

(declare-fun choose!53162 ((Set Context!12900) Context!12900 Int) Unit!161576)

(assert (=> d!2192325 (= lt!2516800 (choose!53162 lt!2516577 lt!2516565 lambda!413873))))

(assert (=> d!2192325 (= lt!2516577 (set.insert lt!2516565 (as set.empty (Set Context!12900))))))

(assert (=> d!2192325 (= (lemmaMapOnSingletonSet!365 lt!2516577 lt!2516565 lambda!413873) lt!2516800)))

(declare-fun b_lambda!266079 () Bool)

(assert (=> (not b_lambda!266079) (not d!2192325)))

(declare-fun bs!1869772 () Bool)

(assert (= bs!1869772 d!2192325))

(declare-fun m!7734348 () Bool)

(assert (=> bs!1869772 m!7734348))

(declare-fun m!7734350 () Bool)

(assert (=> bs!1869772 m!7734350))

(assert (=> bs!1869772 m!7733916))

(assert (=> bs!1869772 m!7733910))

(declare-fun m!7734352 () Bool)

(assert (=> bs!1869772 m!7734352))

(assert (=> bs!1869772 m!7734348))

(assert (=> b!7029233 d!2192325))

(declare-fun d!2192327 () Bool)

(declare-fun c!1307106 () Bool)

(declare-fun e!4225850 () Bool)

(assert (=> d!2192327 (= c!1307106 e!4225850)))

(declare-fun res!2869544 () Bool)

(assert (=> d!2192327 (=> (not res!2869544) (not e!4225850))))

(assert (=> d!2192327 (= res!2869544 (is-Cons!67766 (exprs!6950 lt!2516565)))))

(declare-fun e!4225852 () (Set Context!12900))

(assert (=> d!2192327 (= (derivationStepZipperUp!2064 lt!2516565 (h!74215 s!7408)) e!4225852)))

(declare-fun bm!638314 () Bool)

(declare-fun call!638319 () (Set Context!12900))

(assert (=> bm!638314 (= call!638319 (derivationStepZipperDown!2118 (h!74214 (exprs!6950 lt!2516565)) (Context!12901 (t!381653 (exprs!6950 lt!2516565))) (h!74215 s!7408)))))

(declare-fun b!7029487 () Bool)

(declare-fun e!4225851 () (Set Context!12900))

(assert (=> b!7029487 (= e!4225851 call!638319)))

(declare-fun b!7029488 () Bool)

(assert (=> b!7029488 (= e!4225852 (set.union call!638319 (derivationStepZipperUp!2064 (Context!12901 (t!381653 (exprs!6950 lt!2516565))) (h!74215 s!7408))))))

(declare-fun b!7029489 () Bool)

(assert (=> b!7029489 (= e!4225850 (nullable!7165 (h!74214 (exprs!6950 lt!2516565))))))

(declare-fun b!7029490 () Bool)

(assert (=> b!7029490 (= e!4225852 e!4225851)))

(declare-fun c!1307105 () Bool)

(assert (=> b!7029490 (= c!1307105 (is-Cons!67766 (exprs!6950 lt!2516565)))))

(declare-fun b!7029491 () Bool)

(assert (=> b!7029491 (= e!4225851 (as set.empty (Set Context!12900)))))

(assert (= (and d!2192327 res!2869544) b!7029489))

(assert (= (and d!2192327 c!1307106) b!7029488))

(assert (= (and d!2192327 (not c!1307106)) b!7029490))

(assert (= (and b!7029490 c!1307105) b!7029487))

(assert (= (and b!7029490 (not c!1307105)) b!7029491))

(assert (= (or b!7029488 b!7029487) bm!638314))

(declare-fun m!7734354 () Bool)

(assert (=> bm!638314 m!7734354))

(declare-fun m!7734356 () Bool)

(assert (=> b!7029488 m!7734356))

(declare-fun m!7734358 () Bool)

(assert (=> b!7029489 m!7734358))

(assert (=> b!7029233 d!2192327))

(declare-fun d!2192329 () Bool)

(assert (=> d!2192329 (= (flatMap!2401 lt!2516577 lambda!413875) (dynLambda!27342 lambda!413875 lt!2516565))))

(declare-fun lt!2516801 () Unit!161576)

(assert (=> d!2192329 (= lt!2516801 (choose!53154 lt!2516577 lt!2516565 lambda!413875))))

(assert (=> d!2192329 (= lt!2516577 (set.insert lt!2516565 (as set.empty (Set Context!12900))))))

(assert (=> d!2192329 (= (lemmaFlatMapOnSingletonSet!1915 lt!2516577 lt!2516565 lambda!413875) lt!2516801)))

(declare-fun b_lambda!266081 () Bool)

(assert (=> (not b_lambda!266081) (not d!2192329)))

(declare-fun bs!1869773 () Bool)

(assert (= bs!1869773 d!2192329))

(assert (=> bs!1869773 m!7733922))

(declare-fun m!7734360 () Bool)

(assert (=> bs!1869773 m!7734360))

(declare-fun m!7734362 () Bool)

(assert (=> bs!1869773 m!7734362))

(assert (=> bs!1869773 m!7733910))

(assert (=> b!7029233 d!2192329))

(declare-fun d!2192331 () Bool)

(declare-fun lt!2516802 () Int)

(assert (=> d!2192331 (>= lt!2516802 0)))

(declare-fun e!4225853 () Int)

(assert (=> d!2192331 (= lt!2516802 e!4225853)))

(declare-fun c!1307107 () Bool)

(assert (=> d!2192331 (= c!1307107 (is-Cons!67766 (exprs!6950 lt!2516565)))))

(assert (=> d!2192331 (= (contextDepthTotal!489 lt!2516565) lt!2516802)))

(declare-fun b!7029492 () Bool)

(assert (=> b!7029492 (= e!4225853 (+ (regexDepthTotal!294 (h!74214 (exprs!6950 lt!2516565))) (contextDepthTotal!489 (Context!12901 (t!381653 (exprs!6950 lt!2516565))))))))

(declare-fun b!7029493 () Bool)

(assert (=> b!7029493 (= e!4225853 1)))

(assert (= (and d!2192331 c!1307107) b!7029492))

(assert (= (and d!2192331 (not c!1307107)) b!7029493))

(declare-fun m!7734364 () Bool)

(assert (=> b!7029492 m!7734364))

(declare-fun m!7734366 () Bool)

(assert (=> b!7029492 m!7734366))

(assert (=> b!7029233 d!2192331))

(declare-fun b!7029498 () Bool)

(declare-fun e!4225856 () Bool)

(declare-fun tp!1936046 () Bool)

(declare-fun tp!1936047 () Bool)

(assert (=> b!7029498 (= e!4225856 (and tp!1936046 tp!1936047))))

(assert (=> b!7029235 (= tp!1936026 e!4225856)))

(assert (= (and b!7029235 (is-Cons!67766 (exprs!6950 ct2!306))) b!7029498))

(declare-fun condSetEmpty!49085 () Bool)

(assert (=> setNonEmpty!49079 (= condSetEmpty!49085 (= setRest!49079 (as set.empty (Set Context!12900))))))

(declare-fun setRes!49085 () Bool)

(assert (=> setNonEmpty!49079 (= tp!1936027 setRes!49085)))

(declare-fun setIsEmpty!49085 () Bool)

(assert (=> setIsEmpty!49085 setRes!49085))

(declare-fun tp!1936052 () Bool)

(declare-fun setNonEmpty!49085 () Bool)

(declare-fun e!4225859 () Bool)

(declare-fun setElem!49085 () Context!12900)

(assert (=> setNonEmpty!49085 (= setRes!49085 (and tp!1936052 (inv!86495 setElem!49085) e!4225859))))

(declare-fun setRest!49085 () (Set Context!12900))

(assert (=> setNonEmpty!49085 (= setRest!49079 (set.union (set.insert setElem!49085 (as set.empty (Set Context!12900))) setRest!49085))))

(declare-fun b!7029503 () Bool)

(declare-fun tp!1936053 () Bool)

(assert (=> b!7029503 (= e!4225859 tp!1936053)))

(assert (= (and setNonEmpty!49079 condSetEmpty!49085) setIsEmpty!49085))

(assert (= (and setNonEmpty!49079 (not condSetEmpty!49085)) setNonEmpty!49085))

(assert (= setNonEmpty!49085 b!7029503))

(declare-fun m!7734368 () Bool)

(assert (=> setNonEmpty!49085 m!7734368))

(declare-fun b!7029508 () Bool)

(declare-fun e!4225862 () Bool)

(declare-fun tp!1936056 () Bool)

(assert (=> b!7029508 (= e!4225862 (and tp_is_empty!44133 tp!1936056))))

(assert (=> b!7029238 (= tp!1936029 e!4225862)))

(assert (= (and b!7029238 (is-Cons!67767 (t!381654 s!7408))) b!7029508))

(declare-fun b!7029509 () Bool)

(declare-fun e!4225863 () Bool)

(declare-fun tp!1936057 () Bool)

(declare-fun tp!1936058 () Bool)

(assert (=> b!7029509 (= e!4225863 (and tp!1936057 tp!1936058))))

(assert (=> b!7029249 (= tp!1936028 e!4225863)))

(assert (= (and b!7029249 (is-Cons!67766 (exprs!6950 setElem!49079))) b!7029509))

(declare-fun b_lambda!266083 () Bool)

(assert (= b_lambda!266079 (or b!7029230 b_lambda!266083)))

(declare-fun bs!1869774 () Bool)

(declare-fun d!2192333 () Bool)

(assert (= bs!1869774 (and d!2192333 b!7029230)))

(declare-fun lt!2516803 () Unit!161576)

(assert (=> bs!1869774 (= lt!2516803 (lemmaConcatPreservesForall!775 (exprs!6950 lt!2516565) (exprs!6950 ct2!306) lambda!413874))))

(assert (=> bs!1869774 (= (dynLambda!27345 lambda!413873 lt!2516565) (Context!12901 (++!15488 (exprs!6950 lt!2516565) (exprs!6950 ct2!306))))))

(declare-fun m!7734370 () Bool)

(assert (=> bs!1869774 m!7734370))

(declare-fun m!7734372 () Bool)

(assert (=> bs!1869774 m!7734372))

(assert (=> d!2192325 d!2192333))

(declare-fun b_lambda!266085 () Bool)

(assert (= b_lambda!266071 (or b!7029237 b_lambda!266085)))

(declare-fun bs!1869775 () Bool)

(declare-fun d!2192335 () Bool)

(assert (= bs!1869775 (and d!2192335 b!7029237)))

(assert (=> bs!1869775 (= (dynLambda!27342 lambda!413875 lt!2516560) (derivationStepZipperUp!2064 lt!2516560 (h!74215 s!7408)))))

(assert (=> bs!1869775 m!7733970))

(assert (=> d!2192255 d!2192335))

(declare-fun b_lambda!266087 () Bool)

(assert (= b_lambda!266075 (or b!7029230 b_lambda!266087)))

(declare-fun bs!1869776 () Bool)

(declare-fun d!2192337 () Bool)

(assert (= bs!1869776 (and d!2192337 b!7029230)))

(declare-fun lt!2516804 () Unit!161576)

(assert (=> bs!1869776 (= lt!2516804 (lemmaConcatPreservesForall!775 (exprs!6950 lt!2516770) (exprs!6950 ct2!306) lambda!413874))))

(assert (=> bs!1869776 (= (dynLambda!27345 lambda!413873 lt!2516770) (Context!12901 (++!15488 (exprs!6950 lt!2516770) (exprs!6950 ct2!306))))))

(declare-fun m!7734374 () Bool)

(assert (=> bs!1869776 m!7734374))

(declare-fun m!7734376 () Bool)

(assert (=> bs!1869776 m!7734376))

(assert (=> d!2192277 d!2192337))

(declare-fun b_lambda!266089 () Bool)

(assert (= b_lambda!266081 (or b!7029237 b_lambda!266089)))

(declare-fun bs!1869777 () Bool)

(declare-fun d!2192339 () Bool)

(assert (= bs!1869777 (and d!2192339 b!7029237)))

(assert (=> bs!1869777 (= (dynLambda!27342 lambda!413875 lt!2516565) (derivationStepZipperUp!2064 lt!2516565 (h!74215 s!7408)))))

(assert (=> bs!1869777 m!7733912))

(assert (=> d!2192329 d!2192339))

(declare-fun b_lambda!266091 () Bool)

(assert (= b_lambda!266073 (or b!7029240 b_lambda!266091)))

(declare-fun bs!1869778 () Bool)

(declare-fun d!2192341 () Bool)

(assert (= bs!1869778 (and d!2192341 b!7029240)))

(assert (=> bs!1869778 (= (dynLambda!27344 lambda!413872 lt!2516758) (matchZipper!2994 (set.insert lt!2516758 (as set.empty (Set Context!12900))) s!7408))))

(declare-fun m!7734378 () Bool)

(assert (=> bs!1869778 m!7734378))

(assert (=> bs!1869778 m!7734378))

(declare-fun m!7734380 () Bool)

(assert (=> bs!1869778 m!7734380))

(assert (=> d!2192267 d!2192341))

(declare-fun b_lambda!266093 () Bool)

(assert (= b_lambda!266077 (or b!7029237 b_lambda!266093)))

(declare-fun bs!1869779 () Bool)

(declare-fun d!2192343 () Bool)

(assert (= bs!1869779 (and d!2192343 b!7029237)))

(assert (=> bs!1869779 (= (dynLambda!27342 lambda!413875 lt!2516548) (derivationStepZipperUp!2064 lt!2516548 (h!74215 s!7408)))))

(assert (=> bs!1869779 m!7733892))

(assert (=> d!2192301 d!2192343))

(push 1)

(assert (not b!7029350))

(assert (not d!2192285))

(assert (not b!7029473))

(assert (not b!7029380))

(assert (not b!7029345))

(assert (not b!7029351))

(assert tp_is_empty!44133)

(assert (not bs!1869779))

(assert (not b_lambda!266083))

(assert (not b!7029342))

(assert (not b!7029474))

(assert (not b!7029436))

(assert (not bs!1869774))

(assert (not bm!638308))

(assert (not d!2192319))

(assert (not b!7029430))

(assert (not bm!638295))

(assert (not bm!638294))

(assert (not b!7029419))

(assert (not d!2192239))

(assert (not b!7029377))

(assert (not bs!1869776))

(assert (not b!7029432))

(assert (not d!2192241))

(assert (not d!2192279))

(assert (not b!7029462))

(assert (not b!7029397))

(assert (not b!7029418))

(assert (not b!7029435))

(assert (not d!2192317))

(assert (not d!2192309))

(assert (not b!7029424))

(assert (not d!2192253))

(assert (not setNonEmpty!49085))

(assert (not b!7029353))

(assert (not d!2192255))

(assert (not b!7029343))

(assert (not b_lambda!266091))

(assert (not d!2192315))

(assert (not b!7029341))

(assert (not d!2192273))

(assert (not d!2192269))

(assert (not d!2192283))

(assert (not b_lambda!266093))

(assert (not bs!1869778))

(assert (not d!2192257))

(assert (not b_lambda!266087))

(assert (not b!7029376))

(assert (not b!7029367))

(assert (not b_lambda!266085))

(assert (not d!2192305))

(assert (not d!2192329))

(assert (not b!7029349))

(assert (not bm!638312))

(assert (not d!2192247))

(assert (not d!2192245))

(assert (not b!7029485))

(assert (not bm!638314))

(assert (not b!7029352))

(assert (not d!2192321))

(assert (not b!7029391))

(assert (not b!7029425))

(assert (not b!7029482))

(assert (not d!2192277))

(assert (not b!7029503))

(assert (not d!2192235))

(assert (not bm!638313))

(assert (not d!2192281))

(assert (not d!2192303))

(assert (not b!7029346))

(assert (not d!2192275))

(assert (not b!7029498))

(assert (not d!2192301))

(assert (not b!7029390))

(assert (not d!2192249))

(assert (not d!2192267))

(assert (not b!7029368))

(assert (not b!7029433))

(assert (not d!2192325))

(assert (not b_lambda!266089))

(assert (not d!2192265))

(assert (not bs!1869775))

(assert (not d!2192307))

(assert (not b!7029492))

(assert (not d!2192243))

(assert (not b!7029477))

(assert (not d!2192311))

(assert (not b!7029422))

(assert (not b!7029344))

(assert (not d!2192299))

(assert (not b!7029476))

(assert (not d!2192297))

(assert (not b!7029484))

(assert (not d!2192271))

(assert (not b!7029509))

(assert (not b!7029489))

(assert (not b!7029421))

(assert (not bs!1869777))

(assert (not b!7029488))

(assert (not d!2192261))

(assert (not b!7029508))

(assert (not b!7029398))

(assert (not d!2192291))

(assert (not d!2192237))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

