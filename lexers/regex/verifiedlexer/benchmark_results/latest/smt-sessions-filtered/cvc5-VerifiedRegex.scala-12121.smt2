; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!681032 () Bool)

(assert start!681032)

(declare-fun b!7040446 () Bool)

(assert (=> b!7040446 true))

(declare-fun b!7040455 () Bool)

(assert (=> b!7040455 true))

(declare-fun b!7040457 () Bool)

(assert (=> b!7040457 true))

(declare-fun e!4232453 () Bool)

(declare-fun e!4232459 () Bool)

(assert (=> b!7040446 (= e!4232453 (not e!4232459))))

(declare-fun res!2874221 () Bool)

(assert (=> b!7040446 (=> res!2874221 e!4232459)))

(declare-datatypes ((C!35246 0))(
  ( (C!35247 (val!27325 Int)) )
))
(declare-datatypes ((Regex!17488 0))(
  ( (ElementMatch!17488 (c!1310398 C!35246)) (Concat!26333 (regOne!35488 Regex!17488) (regTwo!35488 Regex!17488)) (EmptyExpr!17488) (Star!17488 (reg!17817 Regex!17488)) (EmptyLang!17488) (Union!17488 (regOne!35489 Regex!17488) (regTwo!35489 Regex!17488)) )
))
(declare-datatypes ((List!67992 0))(
  ( (Nil!67868) (Cons!67868 (h!74316 Regex!17488) (t!381763 List!67992)) )
))
(declare-datatypes ((Context!12968 0))(
  ( (Context!12969 (exprs!6984 List!67992)) )
))
(declare-fun lt!2524030 () (Set Context!12968))

(declare-datatypes ((List!67993 0))(
  ( (Nil!67869) (Cons!67869 (h!74317 C!35246) (t!381764 List!67993)) )
))
(declare-fun s!7408 () List!67993)

(declare-fun matchZipper!3028 ((Set Context!12968) List!67993) Bool)

(assert (=> b!7040446 (= res!2874221 (not (matchZipper!3028 lt!2524030 s!7408)))))

(declare-fun lt!2524020 () Context!12968)

(assert (=> b!7040446 (= lt!2524030 (set.insert lt!2524020 (as set.empty (Set Context!12968))))))

(declare-fun lt!2524001 () (Set Context!12968))

(declare-fun lambda!416657 () Int)

(declare-fun getWitness!1509 ((Set Context!12968) Int) Context!12968)

(assert (=> b!7040446 (= lt!2524020 (getWitness!1509 lt!2524001 lambda!416657))))

(declare-datatypes ((List!67994 0))(
  ( (Nil!67870) (Cons!67870 (h!74318 Context!12968) (t!381765 List!67994)) )
))
(declare-fun lt!2524013 () List!67994)

(declare-fun exists!3430 (List!67994 Int) Bool)

(assert (=> b!7040446 (exists!3430 lt!2524013 lambda!416657)))

(declare-datatypes ((Unit!161656 0))(
  ( (Unit!161657) )
))
(declare-fun lt!2524008 () Unit!161656)

(declare-fun lemmaZipperMatchesExistsMatchingContext!427 (List!67994 List!67993) Unit!161656)

(assert (=> b!7040446 (= lt!2524008 (lemmaZipperMatchesExistsMatchingContext!427 lt!2524013 s!7408))))

(declare-fun toList!10831 ((Set Context!12968)) List!67994)

(assert (=> b!7040446 (= lt!2524013 (toList!10831 lt!2524001))))

(declare-fun b!7040447 () Bool)

(declare-fun e!4232458 () Bool)

(declare-fun tp!1937331 () Bool)

(assert (=> b!7040447 (= e!4232458 tp!1937331)))

(declare-fun b!7040448 () Bool)

(declare-fun e!4232457 () Bool)

(declare-fun e!4232455 () Bool)

(assert (=> b!7040448 (= e!4232457 e!4232455)))

(declare-fun res!2874218 () Bool)

(assert (=> b!7040448 (=> res!2874218 e!4232455)))

(declare-fun lt!2524026 () Context!12968)

(declare-fun nullable!7199 (Regex!17488) Bool)

(assert (=> b!7040448 (= res!2874218 (not (nullable!7199 (h!74316 (exprs!6984 lt!2524026)))))))

(declare-fun lt!2524034 () Context!12968)

(declare-fun lt!2524039 () List!67992)

(assert (=> b!7040448 (= lt!2524034 (Context!12969 lt!2524039))))

(declare-fun tail!13593 (List!67992) List!67992)

(assert (=> b!7040448 (= lt!2524039 (tail!13593 (exprs!6984 lt!2524026)))))

(declare-fun b!7040449 () Bool)

(declare-fun e!4232451 () Bool)

(declare-fun lt!2524037 () (Set Context!12968))

(assert (=> b!7040449 (= e!4232451 (matchZipper!3028 lt!2524037 (t!381764 s!7408)))))

(declare-fun b!7040450 () Bool)

(declare-fun res!2874227 () Bool)

(declare-fun e!4232462 () Bool)

(assert (=> b!7040450 (=> res!2874227 e!4232462)))

(declare-fun lt!2524028 () Bool)

(assert (=> b!7040450 (= res!2874227 (not lt!2524028))))

(declare-fun b!7040451 () Bool)

(declare-fun e!4232465 () Bool)

(declare-fun tp_is_empty!44201 () Bool)

(declare-fun tp!1937329 () Bool)

(assert (=> b!7040451 (= e!4232465 (and tp_is_empty!44201 tp!1937329))))

(declare-fun b!7040452 () Bool)

(declare-fun e!4232466 () Bool)

(declare-fun lt!2524031 () (Set Context!12968))

(declare-datatypes ((tuple2!68114 0))(
  ( (tuple2!68115 (_1!37360 List!67993) (_2!37360 List!67993)) )
))
(declare-fun lt!2524022 () tuple2!68114)

(assert (=> b!7040452 (= e!4232466 (matchZipper!3028 lt!2524031 (_2!37360 lt!2524022)))))

(declare-fun b!7040453 () Bool)

(declare-fun e!4232463 () Bool)

(assert (=> b!7040453 (= e!4232463 e!4232466)))

(declare-fun res!2874231 () Bool)

(assert (=> b!7040453 (=> res!2874231 e!4232466)))

(declare-fun lt!2524035 () (Set Context!12968))

(assert (=> b!7040453 (= res!2874231 (not (matchZipper!3028 lt!2524035 (_1!37360 lt!2524022))))))

(declare-datatypes ((Option!16889 0))(
  ( (None!16888) (Some!16888 (v!53178 tuple2!68114)) )
))
(declare-fun lt!2524027 () Option!16889)

(declare-fun get!23784 (Option!16889) tuple2!68114)

(assert (=> b!7040453 (= lt!2524022 (get!23784 lt!2524027))))

(declare-fun isDefined!13590 (Option!16889) Bool)

(assert (=> b!7040453 (isDefined!13590 lt!2524027)))

(declare-fun findConcatSeparationZippers!405 ((Set Context!12968) (Set Context!12968) List!67993 List!67993 List!67993) Option!16889)

(assert (=> b!7040453 (= lt!2524027 (findConcatSeparationZippers!405 lt!2524035 lt!2524031 Nil!67869 (t!381764 s!7408) (t!381764 s!7408)))))

(declare-fun ct2!306 () Context!12968)

(assert (=> b!7040453 (= lt!2524031 (set.insert ct2!306 (as set.empty (Set Context!12968))))))

(declare-fun lt!2524025 () Unit!161656)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!393 ((Set Context!12968) Context!12968 List!67993) Unit!161656)

(assert (=> b!7040453 (= lt!2524025 (lemmaConcatZipperMatchesStringThenFindConcatDefined!393 lt!2524035 ct2!306 (t!381764 s!7408)))))

(declare-fun lambda!416659 () Int)

(declare-fun lt!2524016 () Unit!161656)

(declare-fun lemmaConcatPreservesForall!809 (List!67992 List!67992 Int) Unit!161656)

(assert (=> b!7040453 (= lt!2524016 (lemmaConcatPreservesForall!809 lt!2524039 (exprs!6984 ct2!306) lambda!416659))))

(declare-fun lt!2524012 () (Set Context!12968))

(declare-fun appendTo!609 ((Set Context!12968) Context!12968) (Set Context!12968))

(assert (=> b!7040453 (= lt!2524012 (appendTo!609 lt!2524035 ct2!306))))

(declare-fun derivationStepZipperDown!2152 (Regex!17488 Context!12968 C!35246) (Set Context!12968))

(assert (=> b!7040453 (= lt!2524035 (derivationStepZipperDown!2152 (h!74316 (exprs!6984 lt!2524026)) lt!2524034 (h!74317 s!7408)))))

(declare-fun lt!2524007 () Unit!161656)

(assert (=> b!7040453 (= lt!2524007 (lemmaConcatPreservesForall!809 lt!2524039 (exprs!6984 ct2!306) lambda!416659))))

(declare-fun lt!2524002 () Unit!161656)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!67 (Context!12968 Regex!17488 C!35246 Context!12968) Unit!161656)

(assert (=> b!7040453 (= lt!2524002 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!67 lt!2524034 (h!74316 (exprs!6984 lt!2524026)) (h!74317 s!7408) ct2!306))))

(declare-fun b!7040454 () Bool)

(declare-fun e!4232461 () Bool)

(assert (=> b!7040454 (= e!4232455 e!4232461)))

(declare-fun res!2874226 () Bool)

(assert (=> b!7040454 (=> res!2874226 e!4232461)))

(declare-fun lt!2524003 () (Set Context!12968))

(declare-fun lt!2524004 () (Set Context!12968))

(assert (=> b!7040454 (= res!2874226 (not (= lt!2524003 lt!2524004)))))

(assert (=> b!7040454 (= lt!2524004 (set.union lt!2524012 lt!2524037))))

(declare-fun lt!2524023 () Context!12968)

(declare-fun derivationStepZipperUp!2098 (Context!12968 C!35246) (Set Context!12968))

(assert (=> b!7040454 (= lt!2524037 (derivationStepZipperUp!2098 lt!2524023 (h!74317 s!7408)))))

(assert (=> b!7040454 (= lt!2524012 (derivationStepZipperDown!2152 (h!74316 (exprs!6984 lt!2524026)) lt!2524023 (h!74317 s!7408)))))

(declare-fun ++!15552 (List!67992 List!67992) List!67992)

(assert (=> b!7040454 (= lt!2524023 (Context!12969 (++!15552 lt!2524039 (exprs!6984 ct2!306))))))

(declare-fun lt!2524015 () Unit!161656)

(assert (=> b!7040454 (= lt!2524015 (lemmaConcatPreservesForall!809 lt!2524039 (exprs!6984 ct2!306) lambda!416659))))

(declare-fun lt!2524018 () Unit!161656)

(assert (=> b!7040454 (= lt!2524018 (lemmaConcatPreservesForall!809 lt!2524039 (exprs!6984 ct2!306) lambda!416659))))

(declare-fun e!4232460 () Bool)

(assert (=> b!7040455 (= e!4232459 e!4232460)))

(declare-fun res!2874219 () Bool)

(assert (=> b!7040455 (=> res!2874219 e!4232460)))

(declare-fun lt!2524021 () Context!12968)

(declare-fun z1!570 () (Set Context!12968))

(assert (=> b!7040455 (= res!2874219 (or (not (= lt!2524021 lt!2524020)) (not (set.member lt!2524026 z1!570))))))

(assert (=> b!7040455 (= lt!2524021 (Context!12969 (++!15552 (exprs!6984 lt!2524026) (exprs!6984 ct2!306))))))

(declare-fun lt!2524024 () Unit!161656)

(assert (=> b!7040455 (= lt!2524024 (lemmaConcatPreservesForall!809 (exprs!6984 lt!2524026) (exprs!6984 ct2!306) lambda!416659))))

(declare-fun lambda!416658 () Int)

(declare-fun mapPost2!329 ((Set Context!12968) Int Context!12968) Context!12968)

(assert (=> b!7040455 (= lt!2524026 (mapPost2!329 z1!570 lambda!416658 lt!2524020))))

(declare-fun b!7040456 () Bool)

(declare-fun e!4232456 () Bool)

(assert (=> b!7040456 (= e!4232460 e!4232456)))

(declare-fun res!2874228 () Bool)

(assert (=> b!7040456 (=> res!2874228 e!4232456)))

(declare-fun lt!2524009 () (Set Context!12968))

(assert (=> b!7040456 (= res!2874228 (not (= lt!2524009 lt!2524030)))))

(assert (=> b!7040456 (= lt!2524009 (set.insert lt!2524021 (as set.empty (Set Context!12968))))))

(declare-fun lt!2524017 () Unit!161656)

(assert (=> b!7040456 (= lt!2524017 (lemmaConcatPreservesForall!809 (exprs!6984 lt!2524026) (exprs!6984 ct2!306) lambda!416659))))

(declare-fun setIsEmpty!49333 () Bool)

(declare-fun setRes!49333 () Bool)

(assert (=> setIsEmpty!49333 setRes!49333))

(assert (=> b!7040457 (= e!4232456 e!4232457)))

(declare-fun res!2874215 () Bool)

(assert (=> b!7040457 (=> res!2874215 e!4232457)))

(declare-fun derivationStepZipper!2944 ((Set Context!12968) C!35246) (Set Context!12968))

(assert (=> b!7040457 (= res!2874215 (not (= (derivationStepZipper!2944 lt!2524009 (h!74317 s!7408)) lt!2524003)))))

(declare-fun lambda!416660 () Int)

(declare-fun flatMap!2435 ((Set Context!12968) Int) (Set Context!12968))

(assert (=> b!7040457 (= (flatMap!2435 lt!2524009 lambda!416660) (derivationStepZipperUp!2098 lt!2524021 (h!74317 s!7408)))))

(declare-fun lt!2524010 () Unit!161656)

(declare-fun lemmaFlatMapOnSingletonSet!1949 ((Set Context!12968) Context!12968 Int) Unit!161656)

(assert (=> b!7040457 (= lt!2524010 (lemmaFlatMapOnSingletonSet!1949 lt!2524009 lt!2524021 lambda!416660))))

(assert (=> b!7040457 (= lt!2524003 (derivationStepZipperUp!2098 lt!2524021 (h!74317 s!7408)))))

(declare-fun lt!2524011 () Unit!161656)

(assert (=> b!7040457 (= lt!2524011 (lemmaConcatPreservesForall!809 (exprs!6984 lt!2524026) (exprs!6984 ct2!306) lambda!416659))))

(declare-fun b!7040458 () Bool)

(declare-fun e!4232464 () Bool)

(declare-fun tp!1937328 () Bool)

(assert (=> b!7040458 (= e!4232464 tp!1937328)))

(declare-fun b!7040459 () Bool)

(declare-fun res!2874223 () Bool)

(assert (=> b!7040459 (=> (not res!2874223) (not e!4232453))))

(assert (=> b!7040459 (= res!2874223 (is-Cons!67869 s!7408))))

(declare-fun b!7040460 () Bool)

(declare-fun res!2874230 () Bool)

(assert (=> b!7040460 (=> res!2874230 e!4232457)))

(assert (=> b!7040460 (= res!2874230 (not (is-Cons!67868 (exprs!6984 lt!2524026))))))

(declare-fun b!7040461 () Bool)

(declare-fun res!2874229 () Bool)

(assert (=> b!7040461 (=> res!2874229 e!4232457)))

(declare-fun isEmpty!39600 (List!67992) Bool)

(assert (=> b!7040461 (= res!2874229 (isEmpty!39600 (exprs!6984 lt!2524026)))))

(declare-fun b!7040462 () Bool)

(declare-fun e!4232452 () Bool)

(assert (=> b!7040462 (= e!4232452 (not (matchZipper!3028 lt!2524037 (t!381764 s!7408))))))

(declare-fun lt!2524038 () Unit!161656)

(assert (=> b!7040462 (= lt!2524038 (lemmaConcatPreservesForall!809 lt!2524039 (exprs!6984 ct2!306) lambda!416659))))

(declare-fun b!7040463 () Bool)

(declare-fun e!4232454 () Bool)

(assert (=> b!7040463 (= e!4232462 e!4232454)))

(declare-fun res!2874220 () Bool)

(assert (=> b!7040463 (=> res!2874220 e!4232454)))

(assert (=> b!7040463 (= res!2874220 (matchZipper!3028 lt!2524037 (t!381764 s!7408)))))

(declare-fun lt!2524019 () Unit!161656)

(assert (=> b!7040463 (= lt!2524019 (lemmaConcatPreservesForall!809 lt!2524039 (exprs!6984 ct2!306) lambda!416659))))

(declare-fun b!7040464 () Bool)

(declare-fun res!2874232 () Bool)

(assert (=> b!7040464 (=> res!2874232 e!4232459)))

(assert (=> b!7040464 (= res!2874232 (not (set.member lt!2524020 lt!2524001)))))

(declare-fun b!7040465 () Bool)

(assert (=> b!7040465 (= e!4232461 e!4232462)))

(declare-fun res!2874216 () Bool)

(assert (=> b!7040465 (=> res!2874216 e!4232462)))

(assert (=> b!7040465 (= res!2874216 e!4232452)))

(declare-fun res!2874224 () Bool)

(assert (=> b!7040465 (=> (not res!2874224) (not e!4232452))))

(declare-fun lt!2524033 () Bool)

(assert (=> b!7040465 (= res!2874224 (not (= lt!2524028 lt!2524033)))))

(assert (=> b!7040465 (= lt!2524028 (matchZipper!3028 lt!2524003 (t!381764 s!7408)))))

(declare-fun lt!2524005 () Unit!161656)

(assert (=> b!7040465 (= lt!2524005 (lemmaConcatPreservesForall!809 lt!2524039 (exprs!6984 ct2!306) lambda!416659))))

(assert (=> b!7040465 (= (matchZipper!3028 lt!2524004 (t!381764 s!7408)) e!4232451)))

(declare-fun res!2874222 () Bool)

(assert (=> b!7040465 (=> res!2874222 e!4232451)))

(assert (=> b!7040465 (= res!2874222 lt!2524033)))

(assert (=> b!7040465 (= lt!2524033 (matchZipper!3028 lt!2524012 (t!381764 s!7408)))))

(declare-fun lt!2524014 () Unit!161656)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1561 ((Set Context!12968) (Set Context!12968) List!67993) Unit!161656)

(assert (=> b!7040465 (= lt!2524014 (lemmaZipperConcatMatchesSameAsBothZippers!1561 lt!2524012 lt!2524037 (t!381764 s!7408)))))

(declare-fun lt!2524032 () Unit!161656)

(assert (=> b!7040465 (= lt!2524032 (lemmaConcatPreservesForall!809 lt!2524039 (exprs!6984 ct2!306) lambda!416659))))

(declare-fun lt!2524036 () Unit!161656)

(assert (=> b!7040465 (= lt!2524036 (lemmaConcatPreservesForall!809 lt!2524039 (exprs!6984 ct2!306) lambda!416659))))

(declare-fun b!7040466 () Bool)

(assert (=> b!7040466 (= e!4232454 e!4232463)))

(declare-fun res!2874217 () Bool)

(assert (=> b!7040466 (=> res!2874217 e!4232463)))

(assert (=> b!7040466 (= res!2874217 (not lt!2524033))))

(declare-fun lt!2524029 () Unit!161656)

(assert (=> b!7040466 (= lt!2524029 (lemmaConcatPreservesForall!809 lt!2524039 (exprs!6984 ct2!306) lambda!416659))))

(declare-fun lt!2524006 () Unit!161656)

(assert (=> b!7040466 (= lt!2524006 (lemmaConcatPreservesForall!809 lt!2524039 (exprs!6984 ct2!306) lambda!416659))))

(declare-fun setNonEmpty!49333 () Bool)

(declare-fun setElem!49333 () Context!12968)

(declare-fun tp!1937330 () Bool)

(declare-fun inv!86580 (Context!12968) Bool)

(assert (=> setNonEmpty!49333 (= setRes!49333 (and tp!1937330 (inv!86580 setElem!49333) e!4232464))))

(declare-fun setRest!49333 () (Set Context!12968))

(assert (=> setNonEmpty!49333 (= z1!570 (set.union (set.insert setElem!49333 (as set.empty (Set Context!12968))) setRest!49333))))

(declare-fun res!2874225 () Bool)

(assert (=> start!681032 (=> (not res!2874225) (not e!4232453))))

(assert (=> start!681032 (= res!2874225 (matchZipper!3028 lt!2524001 s!7408))))

(assert (=> start!681032 (= lt!2524001 (appendTo!609 z1!570 ct2!306))))

(assert (=> start!681032 e!4232453))

(declare-fun condSetEmpty!49333 () Bool)

(assert (=> start!681032 (= condSetEmpty!49333 (= z1!570 (as set.empty (Set Context!12968))))))

(assert (=> start!681032 setRes!49333))

(assert (=> start!681032 (and (inv!86580 ct2!306) e!4232458)))

(assert (=> start!681032 e!4232465))

(assert (= (and start!681032 res!2874225) b!7040459))

(assert (= (and b!7040459 res!2874223) b!7040446))

(assert (= (and b!7040446 (not res!2874221)) b!7040464))

(assert (= (and b!7040464 (not res!2874232)) b!7040455))

(assert (= (and b!7040455 (not res!2874219)) b!7040456))

(assert (= (and b!7040456 (not res!2874228)) b!7040457))

(assert (= (and b!7040457 (not res!2874215)) b!7040460))

(assert (= (and b!7040460 (not res!2874230)) b!7040461))

(assert (= (and b!7040461 (not res!2874229)) b!7040448))

(assert (= (and b!7040448 (not res!2874218)) b!7040454))

(assert (= (and b!7040454 (not res!2874226)) b!7040465))

(assert (= (and b!7040465 (not res!2874222)) b!7040449))

(assert (= (and b!7040465 res!2874224) b!7040462))

(assert (= (and b!7040465 (not res!2874216)) b!7040450))

(assert (= (and b!7040450 (not res!2874227)) b!7040463))

(assert (= (and b!7040463 (not res!2874220)) b!7040466))

(assert (= (and b!7040466 (not res!2874217)) b!7040453))

(assert (= (and b!7040453 (not res!2874231)) b!7040452))

(assert (= (and start!681032 condSetEmpty!49333) setIsEmpty!49333))

(assert (= (and start!681032 (not condSetEmpty!49333)) setNonEmpty!49333))

(assert (= setNonEmpty!49333 b!7040458))

(assert (= start!681032 b!7040447))

(assert (= (and start!681032 (is-Cons!67869 s!7408)) b!7040451))

(declare-fun m!7751542 () Bool)

(assert (=> setNonEmpty!49333 m!7751542))

(declare-fun m!7751544 () Bool)

(assert (=> b!7040466 m!7751544))

(assert (=> b!7040466 m!7751544))

(declare-fun m!7751546 () Bool)

(assert (=> b!7040463 m!7751546))

(assert (=> b!7040463 m!7751544))

(declare-fun m!7751548 () Bool)

(assert (=> b!7040452 m!7751548))

(assert (=> b!7040454 m!7751544))

(declare-fun m!7751550 () Bool)

(assert (=> b!7040454 m!7751550))

(declare-fun m!7751552 () Bool)

(assert (=> b!7040454 m!7751552))

(assert (=> b!7040454 m!7751544))

(declare-fun m!7751554 () Bool)

(assert (=> b!7040454 m!7751554))

(declare-fun m!7751556 () Bool)

(assert (=> b!7040457 m!7751556))

(declare-fun m!7751558 () Bool)

(assert (=> b!7040457 m!7751558))

(declare-fun m!7751560 () Bool)

(assert (=> b!7040457 m!7751560))

(declare-fun m!7751562 () Bool)

(assert (=> b!7040457 m!7751562))

(declare-fun m!7751564 () Bool)

(assert (=> b!7040457 m!7751564))

(assert (=> b!7040462 m!7751546))

(assert (=> b!7040462 m!7751544))

(declare-fun m!7751566 () Bool)

(assert (=> b!7040446 m!7751566))

(declare-fun m!7751568 () Bool)

(assert (=> b!7040446 m!7751568))

(declare-fun m!7751570 () Bool)

(assert (=> b!7040446 m!7751570))

(declare-fun m!7751572 () Bool)

(assert (=> b!7040446 m!7751572))

(declare-fun m!7751574 () Bool)

(assert (=> b!7040446 m!7751574))

(declare-fun m!7751576 () Bool)

(assert (=> b!7040446 m!7751576))

(declare-fun m!7751578 () Bool)

(assert (=> b!7040453 m!7751578))

(declare-fun m!7751580 () Bool)

(assert (=> b!7040453 m!7751580))

(declare-fun m!7751582 () Bool)

(assert (=> b!7040453 m!7751582))

(declare-fun m!7751584 () Bool)

(assert (=> b!7040453 m!7751584))

(declare-fun m!7751586 () Bool)

(assert (=> b!7040453 m!7751586))

(declare-fun m!7751588 () Bool)

(assert (=> b!7040453 m!7751588))

(declare-fun m!7751590 () Bool)

(assert (=> b!7040453 m!7751590))

(declare-fun m!7751592 () Bool)

(assert (=> b!7040453 m!7751592))

(assert (=> b!7040453 m!7751544))

(assert (=> b!7040453 m!7751544))

(declare-fun m!7751594 () Bool)

(assert (=> b!7040453 m!7751594))

(declare-fun m!7751596 () Bool)

(assert (=> b!7040461 m!7751596))

(declare-fun m!7751598 () Bool)

(assert (=> start!681032 m!7751598))

(declare-fun m!7751600 () Bool)

(assert (=> start!681032 m!7751600))

(declare-fun m!7751602 () Bool)

(assert (=> start!681032 m!7751602))

(declare-fun m!7751604 () Bool)

(assert (=> b!7040455 m!7751604))

(declare-fun m!7751606 () Bool)

(assert (=> b!7040455 m!7751606))

(assert (=> b!7040455 m!7751556))

(declare-fun m!7751608 () Bool)

(assert (=> b!7040455 m!7751608))

(declare-fun m!7751610 () Bool)

(assert (=> b!7040448 m!7751610))

(declare-fun m!7751612 () Bool)

(assert (=> b!7040448 m!7751612))

(declare-fun m!7751614 () Bool)

(assert (=> b!7040456 m!7751614))

(assert (=> b!7040456 m!7751556))

(assert (=> b!7040465 m!7751544))

(assert (=> b!7040465 m!7751544))

(declare-fun m!7751616 () Bool)

(assert (=> b!7040465 m!7751616))

(declare-fun m!7751618 () Bool)

(assert (=> b!7040465 m!7751618))

(assert (=> b!7040465 m!7751544))

(declare-fun m!7751620 () Bool)

(assert (=> b!7040465 m!7751620))

(declare-fun m!7751622 () Bool)

(assert (=> b!7040465 m!7751622))

(assert (=> b!7040449 m!7751546))

(declare-fun m!7751624 () Bool)

(assert (=> b!7040464 m!7751624))

(push 1)

(assert (not b!7040462))

(assert (not b!7040446))

(assert (not start!681032))

(assert (not b!7040451))

(assert (not b!7040454))

(assert (not b!7040465))

(assert (not b!7040458))

(assert (not b!7040455))

(assert (not b!7040461))

(assert tp_is_empty!44201)

(assert (not b!7040447))

(assert (not b!7040453))

(assert (not b!7040457))

(assert (not b!7040466))

(assert (not b!7040463))

(assert (not b!7040449))

(assert (not b!7040452))

(assert (not b!7040456))

(assert (not setNonEmpty!49333))

(assert (not b!7040448))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2198064 () Bool)

(declare-fun c!1310410 () Bool)

(declare-fun isEmpty!39602 (List!67993) Bool)

(assert (=> d!2198064 (= c!1310410 (isEmpty!39602 (t!381764 s!7408)))))

(declare-fun e!4232517 () Bool)

(assert (=> d!2198064 (= (matchZipper!3028 lt!2524037 (t!381764 s!7408)) e!4232517)))

(declare-fun b!7040546 () Bool)

(declare-fun nullableZipper!2595 ((Set Context!12968)) Bool)

(assert (=> b!7040546 (= e!4232517 (nullableZipper!2595 lt!2524037))))

(declare-fun b!7040547 () Bool)

(declare-fun head!14286 (List!67993) C!35246)

(declare-fun tail!13595 (List!67993) List!67993)

(assert (=> b!7040547 (= e!4232517 (matchZipper!3028 (derivationStepZipper!2944 lt!2524037 (head!14286 (t!381764 s!7408))) (tail!13595 (t!381764 s!7408))))))

(assert (= (and d!2198064 c!1310410) b!7040546))

(assert (= (and d!2198064 (not c!1310410)) b!7040547))

(declare-fun m!7751710 () Bool)

(assert (=> d!2198064 m!7751710))

(declare-fun m!7751712 () Bool)

(assert (=> b!7040546 m!7751712))

(declare-fun m!7751714 () Bool)

(assert (=> b!7040547 m!7751714))

(assert (=> b!7040547 m!7751714))

(declare-fun m!7751716 () Bool)

(assert (=> b!7040547 m!7751716))

(declare-fun m!7751718 () Bool)

(assert (=> b!7040547 m!7751718))

(assert (=> b!7040547 m!7751716))

(assert (=> b!7040547 m!7751718))

(declare-fun m!7751720 () Bool)

(assert (=> b!7040547 m!7751720))

(assert (=> b!7040449 d!2198064))

(assert (=> b!7040462 d!2198064))

(declare-fun d!2198066 () Bool)

(declare-fun forall!16408 (List!67992 Int) Bool)

(assert (=> d!2198066 (forall!16408 (++!15552 lt!2524039 (exprs!6984 ct2!306)) lambda!416659)))

(declare-fun lt!2524161 () Unit!161656)

(declare-fun choose!53429 (List!67992 List!67992 Int) Unit!161656)

(assert (=> d!2198066 (= lt!2524161 (choose!53429 lt!2524039 (exprs!6984 ct2!306) lambda!416659))))

(assert (=> d!2198066 (forall!16408 lt!2524039 lambda!416659)))

(assert (=> d!2198066 (= (lemmaConcatPreservesForall!809 lt!2524039 (exprs!6984 ct2!306) lambda!416659) lt!2524161)))

(declare-fun bs!1873188 () Bool)

(assert (= bs!1873188 d!2198066))

(assert (=> bs!1873188 m!7751550))

(assert (=> bs!1873188 m!7751550))

(declare-fun m!7751722 () Bool)

(assert (=> bs!1873188 m!7751722))

(declare-fun m!7751724 () Bool)

(assert (=> bs!1873188 m!7751724))

(declare-fun m!7751726 () Bool)

(assert (=> bs!1873188 m!7751726))

(assert (=> b!7040462 d!2198066))

(declare-fun d!2198068 () Bool)

(declare-fun c!1310411 () Bool)

(assert (=> d!2198068 (= c!1310411 (isEmpty!39602 (_2!37360 lt!2524022)))))

(declare-fun e!4232518 () Bool)

(assert (=> d!2198068 (= (matchZipper!3028 lt!2524031 (_2!37360 lt!2524022)) e!4232518)))

(declare-fun b!7040548 () Bool)

(assert (=> b!7040548 (= e!4232518 (nullableZipper!2595 lt!2524031))))

(declare-fun b!7040549 () Bool)

(assert (=> b!7040549 (= e!4232518 (matchZipper!3028 (derivationStepZipper!2944 lt!2524031 (head!14286 (_2!37360 lt!2524022))) (tail!13595 (_2!37360 lt!2524022))))))

(assert (= (and d!2198068 c!1310411) b!7040548))

(assert (= (and d!2198068 (not c!1310411)) b!7040549))

(declare-fun m!7751728 () Bool)

(assert (=> d!2198068 m!7751728))

(declare-fun m!7751730 () Bool)

(assert (=> b!7040548 m!7751730))

(declare-fun m!7751732 () Bool)

(assert (=> b!7040549 m!7751732))

(assert (=> b!7040549 m!7751732))

(declare-fun m!7751734 () Bool)

(assert (=> b!7040549 m!7751734))

(declare-fun m!7751736 () Bool)

(assert (=> b!7040549 m!7751736))

(assert (=> b!7040549 m!7751734))

(assert (=> b!7040549 m!7751736))

(declare-fun m!7751738 () Bool)

(assert (=> b!7040549 m!7751738))

(assert (=> b!7040452 d!2198068))

(declare-fun d!2198070 () Bool)

(assert (=> d!2198070 (= (isEmpty!39600 (exprs!6984 lt!2524026)) (is-Nil!67868 (exprs!6984 lt!2524026)))))

(assert (=> b!7040461 d!2198070))

(assert (=> b!7040463 d!2198064))

(assert (=> b!7040463 d!2198066))

(declare-fun b!7040572 () Bool)

(declare-fun e!4232534 () (Set Context!12968))

(assert (=> b!7040572 (= e!4232534 (set.insert lt!2524034 (as set.empty (Set Context!12968))))))

(declare-fun b!7040573 () Bool)

(declare-fun e!4232532 () (Set Context!12968))

(declare-fun e!4232536 () (Set Context!12968))

(assert (=> b!7040573 (= e!4232532 e!4232536)))

(declare-fun c!1310426 () Bool)

(assert (=> b!7040573 (= c!1310426 (is-Concat!26333 (h!74316 (exprs!6984 lt!2524026))))))

(declare-fun bm!639435 () Bool)

(declare-fun call!639444 () (Set Context!12968))

(declare-fun call!639440 () (Set Context!12968))

(assert (=> bm!639435 (= call!639444 call!639440)))

(declare-fun b!7040574 () Bool)

(declare-fun call!639445 () (Set Context!12968))

(assert (=> b!7040574 (= e!4232532 (set.union call!639445 call!639440))))

(declare-fun bm!639436 () Bool)

(declare-fun call!639441 () List!67992)

(declare-fun call!639442 () List!67992)

(assert (=> bm!639436 (= call!639441 call!639442)))

(declare-fun b!7040575 () Bool)

(declare-fun e!4232533 () (Set Context!12968))

(assert (=> b!7040575 (= e!4232533 call!639444)))

(declare-fun b!7040576 () Bool)

(assert (=> b!7040576 (= e!4232536 call!639444)))

(declare-fun c!1310422 () Bool)

(declare-fun bm!639437 () Bool)

(declare-fun $colon$colon!2588 (List!67992 Regex!17488) List!67992)

(assert (=> bm!639437 (= call!639442 ($colon$colon!2588 (exprs!6984 lt!2524034) (ite (or c!1310422 c!1310426) (regTwo!35488 (h!74316 (exprs!6984 lt!2524026))) (h!74316 (exprs!6984 lt!2524026)))))))

(declare-fun b!7040577 () Bool)

(declare-fun e!4232535 () Bool)

(assert (=> b!7040577 (= c!1310422 e!4232535)))

(declare-fun res!2874290 () Bool)

(assert (=> b!7040577 (=> (not res!2874290) (not e!4232535))))

(assert (=> b!7040577 (= res!2874290 (is-Concat!26333 (h!74316 (exprs!6984 lt!2524026))))))

(declare-fun e!4232531 () (Set Context!12968))

(assert (=> b!7040577 (= e!4232531 e!4232532)))

(declare-fun b!7040578 () Bool)

(assert (=> b!7040578 (= e!4232533 (as set.empty (Set Context!12968)))))

(declare-fun b!7040579 () Bool)

(declare-fun c!1310424 () Bool)

(assert (=> b!7040579 (= c!1310424 (is-Star!17488 (h!74316 (exprs!6984 lt!2524026))))))

(assert (=> b!7040579 (= e!4232536 e!4232533)))

(declare-fun d!2198072 () Bool)

(declare-fun c!1310425 () Bool)

(assert (=> d!2198072 (= c!1310425 (and (is-ElementMatch!17488 (h!74316 (exprs!6984 lt!2524026))) (= (c!1310398 (h!74316 (exprs!6984 lt!2524026))) (h!74317 s!7408))))))

(assert (=> d!2198072 (= (derivationStepZipperDown!2152 (h!74316 (exprs!6984 lt!2524026)) lt!2524034 (h!74317 s!7408)) e!4232534)))

(declare-fun b!7040580 () Bool)

(assert (=> b!7040580 (= e!4232534 e!4232531)))

(declare-fun c!1310423 () Bool)

(assert (=> b!7040580 (= c!1310423 (is-Union!17488 (h!74316 (exprs!6984 lt!2524026))))))

(declare-fun bm!639438 () Bool)

(declare-fun call!639443 () (Set Context!12968))

(assert (=> bm!639438 (= call!639440 call!639443)))

(declare-fun bm!639439 () Bool)

(assert (=> bm!639439 (= call!639445 (derivationStepZipperDown!2152 (ite c!1310423 (regOne!35489 (h!74316 (exprs!6984 lt!2524026))) (regOne!35488 (h!74316 (exprs!6984 lt!2524026)))) (ite c!1310423 lt!2524034 (Context!12969 call!639442)) (h!74317 s!7408)))))

(declare-fun bm!639440 () Bool)

(assert (=> bm!639440 (= call!639443 (derivationStepZipperDown!2152 (ite c!1310423 (regTwo!35489 (h!74316 (exprs!6984 lt!2524026))) (ite c!1310422 (regTwo!35488 (h!74316 (exprs!6984 lt!2524026))) (ite c!1310426 (regOne!35488 (h!74316 (exprs!6984 lt!2524026))) (reg!17817 (h!74316 (exprs!6984 lt!2524026)))))) (ite (or c!1310423 c!1310422) lt!2524034 (Context!12969 call!639441)) (h!74317 s!7408)))))

(declare-fun b!7040581 () Bool)

(assert (=> b!7040581 (= e!4232531 (set.union call!639445 call!639443))))

(declare-fun b!7040582 () Bool)

(assert (=> b!7040582 (= e!4232535 (nullable!7199 (regOne!35488 (h!74316 (exprs!6984 lt!2524026)))))))

(assert (= (and d!2198072 c!1310425) b!7040572))

(assert (= (and d!2198072 (not c!1310425)) b!7040580))

(assert (= (and b!7040580 c!1310423) b!7040581))

(assert (= (and b!7040580 (not c!1310423)) b!7040577))

(assert (= (and b!7040577 res!2874290) b!7040582))

(assert (= (and b!7040577 c!1310422) b!7040574))

(assert (= (and b!7040577 (not c!1310422)) b!7040573))

(assert (= (and b!7040573 c!1310426) b!7040576))

(assert (= (and b!7040573 (not c!1310426)) b!7040579))

(assert (= (and b!7040579 c!1310424) b!7040575))

(assert (= (and b!7040579 (not c!1310424)) b!7040578))

(assert (= (or b!7040576 b!7040575) bm!639436))

(assert (= (or b!7040576 b!7040575) bm!639435))

(assert (= (or b!7040574 bm!639435) bm!639438))

(assert (= (or b!7040574 bm!639436) bm!639437))

(assert (= (or b!7040581 b!7040574) bm!639439))

(assert (= (or b!7040581 bm!639438) bm!639440))

(declare-fun m!7751740 () Bool)

(assert (=> b!7040572 m!7751740))

(declare-fun m!7751742 () Bool)

(assert (=> bm!639439 m!7751742))

(declare-fun m!7751744 () Bool)

(assert (=> bm!639440 m!7751744))

(declare-fun m!7751746 () Bool)

(assert (=> bm!639437 m!7751746))

(declare-fun m!7751748 () Bool)

(assert (=> b!7040582 m!7751748))

(assert (=> b!7040453 d!2198072))

(declare-fun d!2198074 () Bool)

(assert (=> d!2198074 (= (get!23784 lt!2524027) (v!53178 lt!2524027))))

(assert (=> b!7040453 d!2198074))

(declare-fun b!7040601 () Bool)

(declare-fun res!2874301 () Bool)

(declare-fun e!4232551 () Bool)

(assert (=> b!7040601 (=> (not res!2874301) (not e!4232551))))

(declare-fun lt!2524170 () Option!16889)

(assert (=> b!7040601 (= res!2874301 (matchZipper!3028 lt!2524031 (_2!37360 (get!23784 lt!2524170))))))

(declare-fun b!7040603 () Bool)

(declare-fun e!4232547 () Option!16889)

(declare-fun e!4232548 () Option!16889)

(assert (=> b!7040603 (= e!4232547 e!4232548)))

(declare-fun c!1310431 () Bool)

(assert (=> b!7040603 (= c!1310431 (is-Nil!67869 (t!381764 s!7408)))))

(declare-fun b!7040604 () Bool)

(declare-fun res!2874303 () Bool)

(assert (=> b!7040604 (=> (not res!2874303) (not e!4232551))))

(assert (=> b!7040604 (= res!2874303 (matchZipper!3028 lt!2524035 (_1!37360 (get!23784 lt!2524170))))))

(declare-fun b!7040605 () Bool)

(declare-fun lt!2524169 () Unit!161656)

(declare-fun lt!2524168 () Unit!161656)

(assert (=> b!7040605 (= lt!2524169 lt!2524168)))

(declare-fun ++!15554 (List!67993 List!67993) List!67993)

(assert (=> b!7040605 (= (++!15554 (++!15554 Nil!67869 (Cons!67869 (h!74317 (t!381764 s!7408)) Nil!67869)) (t!381764 (t!381764 s!7408))) (t!381764 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2937 (List!67993 C!35246 List!67993 List!67993) Unit!161656)

(assert (=> b!7040605 (= lt!2524168 (lemmaMoveElementToOtherListKeepsConcatEq!2937 Nil!67869 (h!74317 (t!381764 s!7408)) (t!381764 (t!381764 s!7408)) (t!381764 s!7408)))))

(assert (=> b!7040605 (= e!4232548 (findConcatSeparationZippers!405 lt!2524035 lt!2524031 (++!15554 Nil!67869 (Cons!67869 (h!74317 (t!381764 s!7408)) Nil!67869)) (t!381764 (t!381764 s!7408)) (t!381764 s!7408)))))

(declare-fun b!7040606 () Bool)

(assert (=> b!7040606 (= e!4232551 (= (++!15554 (_1!37360 (get!23784 lt!2524170)) (_2!37360 (get!23784 lt!2524170))) (t!381764 s!7408)))))

(declare-fun b!7040607 () Bool)

(assert (=> b!7040607 (= e!4232548 None!16888)))

(declare-fun b!7040608 () Bool)

(assert (=> b!7040608 (= e!4232547 (Some!16888 (tuple2!68115 Nil!67869 (t!381764 s!7408))))))

(declare-fun b!7040609 () Bool)

(declare-fun e!4232549 () Bool)

(assert (=> b!7040609 (= e!4232549 (matchZipper!3028 lt!2524031 (t!381764 s!7408)))))

(declare-fun d!2198076 () Bool)

(declare-fun e!4232550 () Bool)

(assert (=> d!2198076 e!4232550))

(declare-fun res!2874305 () Bool)

(assert (=> d!2198076 (=> res!2874305 e!4232550)))

(assert (=> d!2198076 (= res!2874305 e!4232551)))

(declare-fun res!2874302 () Bool)

(assert (=> d!2198076 (=> (not res!2874302) (not e!4232551))))

(assert (=> d!2198076 (= res!2874302 (isDefined!13590 lt!2524170))))

(assert (=> d!2198076 (= lt!2524170 e!4232547)))

(declare-fun c!1310432 () Bool)

(assert (=> d!2198076 (= c!1310432 e!4232549)))

(declare-fun res!2874304 () Bool)

(assert (=> d!2198076 (=> (not res!2874304) (not e!4232549))))

(assert (=> d!2198076 (= res!2874304 (matchZipper!3028 lt!2524035 Nil!67869))))

(assert (=> d!2198076 (= (++!15554 Nil!67869 (t!381764 s!7408)) (t!381764 s!7408))))

(assert (=> d!2198076 (= (findConcatSeparationZippers!405 lt!2524035 lt!2524031 Nil!67869 (t!381764 s!7408) (t!381764 s!7408)) lt!2524170)))

(declare-fun b!7040602 () Bool)

(assert (=> b!7040602 (= e!4232550 (not (isDefined!13590 lt!2524170)))))

(assert (= (and d!2198076 res!2874304) b!7040609))

(assert (= (and d!2198076 c!1310432) b!7040608))

(assert (= (and d!2198076 (not c!1310432)) b!7040603))

(assert (= (and b!7040603 c!1310431) b!7040607))

(assert (= (and b!7040603 (not c!1310431)) b!7040605))

(assert (= (and d!2198076 res!2874302) b!7040604))

(assert (= (and b!7040604 res!2874303) b!7040601))

(assert (= (and b!7040601 res!2874301) b!7040606))

(assert (= (and d!2198076 (not res!2874305)) b!7040602))

(declare-fun m!7751750 () Bool)

(assert (=> d!2198076 m!7751750))

(declare-fun m!7751752 () Bool)

(assert (=> d!2198076 m!7751752))

(declare-fun m!7751754 () Bool)

(assert (=> d!2198076 m!7751754))

(declare-fun m!7751756 () Bool)

(assert (=> b!7040601 m!7751756))

(declare-fun m!7751758 () Bool)

(assert (=> b!7040601 m!7751758))

(assert (=> b!7040604 m!7751756))

(declare-fun m!7751760 () Bool)

(assert (=> b!7040604 m!7751760))

(declare-fun m!7751762 () Bool)

(assert (=> b!7040605 m!7751762))

(assert (=> b!7040605 m!7751762))

(declare-fun m!7751764 () Bool)

(assert (=> b!7040605 m!7751764))

(declare-fun m!7751766 () Bool)

(assert (=> b!7040605 m!7751766))

(assert (=> b!7040605 m!7751762))

(declare-fun m!7751768 () Bool)

(assert (=> b!7040605 m!7751768))

(assert (=> b!7040606 m!7751756))

(declare-fun m!7751770 () Bool)

(assert (=> b!7040606 m!7751770))

(declare-fun m!7751772 () Bool)

(assert (=> b!7040609 m!7751772))

(assert (=> b!7040602 m!7751750))

(assert (=> b!7040453 d!2198076))

(declare-fun bs!1873189 () Bool)

(declare-fun d!2198078 () Bool)

(assert (= bs!1873189 (and d!2198078 b!7040455)))

(declare-fun lambda!416705 () Int)

(assert (=> bs!1873189 (= lambda!416705 lambda!416659)))

(assert (=> d!2198078 (= (derivationStepZipperDown!2152 (h!74316 (exprs!6984 lt!2524026)) (Context!12969 (++!15552 (exprs!6984 lt!2524034) (exprs!6984 ct2!306))) (h!74317 s!7408)) (appendTo!609 (derivationStepZipperDown!2152 (h!74316 (exprs!6984 lt!2524026)) lt!2524034 (h!74317 s!7408)) ct2!306))))

(declare-fun lt!2524176 () Unit!161656)

(assert (=> d!2198078 (= lt!2524176 (lemmaConcatPreservesForall!809 (exprs!6984 lt!2524034) (exprs!6984 ct2!306) lambda!416705))))

(declare-fun lt!2524175 () Unit!161656)

(declare-fun choose!53430 (Context!12968 Regex!17488 C!35246 Context!12968) Unit!161656)

(assert (=> d!2198078 (= lt!2524175 (choose!53430 lt!2524034 (h!74316 (exprs!6984 lt!2524026)) (h!74317 s!7408) ct2!306))))

(declare-fun validRegex!8935 (Regex!17488) Bool)

(assert (=> d!2198078 (validRegex!8935 (h!74316 (exprs!6984 lt!2524026)))))

(assert (=> d!2198078 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!67 lt!2524034 (h!74316 (exprs!6984 lt!2524026)) (h!74317 s!7408) ct2!306) lt!2524175)))

(declare-fun bs!1873190 () Bool)

(assert (= bs!1873190 d!2198078))

(declare-fun m!7751774 () Bool)

(assert (=> bs!1873190 m!7751774))

(assert (=> bs!1873190 m!7751592))

(declare-fun m!7751776 () Bool)

(assert (=> bs!1873190 m!7751776))

(declare-fun m!7751778 () Bool)

(assert (=> bs!1873190 m!7751778))

(declare-fun m!7751780 () Bool)

(assert (=> bs!1873190 m!7751780))

(assert (=> bs!1873190 m!7751592))

(declare-fun m!7751782 () Bool)

(assert (=> bs!1873190 m!7751782))

(declare-fun m!7751784 () Bool)

(assert (=> bs!1873190 m!7751784))

(assert (=> b!7040453 d!2198078))

(assert (=> b!7040453 d!2198066))

(declare-fun d!2198080 () Bool)

(assert (=> d!2198080 (isDefined!13590 (findConcatSeparationZippers!405 lt!2524035 (set.insert ct2!306 (as set.empty (Set Context!12968))) Nil!67869 (t!381764 s!7408) (t!381764 s!7408)))))

(declare-fun lt!2524179 () Unit!161656)

(declare-fun choose!53431 ((Set Context!12968) Context!12968 List!67993) Unit!161656)

(assert (=> d!2198080 (= lt!2524179 (choose!53431 lt!2524035 ct2!306 (t!381764 s!7408)))))

(assert (=> d!2198080 (matchZipper!3028 (appendTo!609 lt!2524035 ct2!306) (t!381764 s!7408))))

(assert (=> d!2198080 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!393 lt!2524035 ct2!306 (t!381764 s!7408)) lt!2524179)))

(declare-fun bs!1873191 () Bool)

(assert (= bs!1873191 d!2198080))

(assert (=> bs!1873191 m!7751580))

(declare-fun m!7751786 () Bool)

(assert (=> bs!1873191 m!7751786))

(declare-fun m!7751788 () Bool)

(assert (=> bs!1873191 m!7751788))

(assert (=> bs!1873191 m!7751580))

(assert (=> bs!1873191 m!7751786))

(declare-fun m!7751790 () Bool)

(assert (=> bs!1873191 m!7751790))

(assert (=> bs!1873191 m!7751582))

(assert (=> bs!1873191 m!7751582))

(declare-fun m!7751792 () Bool)

(assert (=> bs!1873191 m!7751792))

(assert (=> b!7040453 d!2198080))

(declare-fun d!2198082 () Bool)

(declare-fun c!1310434 () Bool)

(assert (=> d!2198082 (= c!1310434 (isEmpty!39602 (_1!37360 lt!2524022)))))

(declare-fun e!4232552 () Bool)

(assert (=> d!2198082 (= (matchZipper!3028 lt!2524035 (_1!37360 lt!2524022)) e!4232552)))

(declare-fun b!7040610 () Bool)

(assert (=> b!7040610 (= e!4232552 (nullableZipper!2595 lt!2524035))))

(declare-fun b!7040611 () Bool)

(assert (=> b!7040611 (= e!4232552 (matchZipper!3028 (derivationStepZipper!2944 lt!2524035 (head!14286 (_1!37360 lt!2524022))) (tail!13595 (_1!37360 lt!2524022))))))

(assert (= (and d!2198082 c!1310434) b!7040610))

(assert (= (and d!2198082 (not c!1310434)) b!7040611))

(declare-fun m!7751794 () Bool)

(assert (=> d!2198082 m!7751794))

(declare-fun m!7751796 () Bool)

(assert (=> b!7040610 m!7751796))

(declare-fun m!7751798 () Bool)

(assert (=> b!7040611 m!7751798))

(assert (=> b!7040611 m!7751798))

(declare-fun m!7751800 () Bool)

(assert (=> b!7040611 m!7751800))

(declare-fun m!7751802 () Bool)

(assert (=> b!7040611 m!7751802))

(assert (=> b!7040611 m!7751800))

(assert (=> b!7040611 m!7751802))

(declare-fun m!7751804 () Bool)

(assert (=> b!7040611 m!7751804))

(assert (=> b!7040453 d!2198082))

(declare-fun d!2198084 () Bool)

(declare-fun isEmpty!39603 (Option!16889) Bool)

(assert (=> d!2198084 (= (isDefined!13590 lt!2524027) (not (isEmpty!39603 lt!2524027)))))

(declare-fun bs!1873192 () Bool)

(assert (= bs!1873192 d!2198084))

(declare-fun m!7751806 () Bool)

(assert (=> bs!1873192 m!7751806))

(assert (=> b!7040453 d!2198084))

(declare-fun bs!1873193 () Bool)

(declare-fun d!2198086 () Bool)

(assert (= bs!1873193 (and d!2198086 b!7040455)))

(declare-fun lambda!416710 () Int)

(assert (=> bs!1873193 (= lambda!416710 lambda!416658)))

(assert (=> d!2198086 true))

(declare-fun map!15796 ((Set Context!12968) Int) (Set Context!12968))

(assert (=> d!2198086 (= (appendTo!609 lt!2524035 ct2!306) (map!15796 lt!2524035 lambda!416710))))

(declare-fun bs!1873194 () Bool)

(assert (= bs!1873194 d!2198086))

(declare-fun m!7751808 () Bool)

(assert (=> bs!1873194 m!7751808))

(assert (=> b!7040453 d!2198086))

(declare-fun d!2198088 () Bool)

(declare-fun e!4232557 () Bool)

(assert (=> d!2198088 e!4232557))

(declare-fun res!2874310 () Bool)

(assert (=> d!2198088 (=> (not res!2874310) (not e!4232557))))

(declare-fun lt!2524184 () List!67992)

(declare-fun content!13575 (List!67992) (Set Regex!17488))

(assert (=> d!2198088 (= res!2874310 (= (content!13575 lt!2524184) (set.union (content!13575 (exprs!6984 lt!2524026)) (content!13575 (exprs!6984 ct2!306)))))))

(declare-fun e!4232558 () List!67992)

(assert (=> d!2198088 (= lt!2524184 e!4232558)))

(declare-fun c!1310438 () Bool)

(assert (=> d!2198088 (= c!1310438 (is-Nil!67868 (exprs!6984 lt!2524026)))))

(assert (=> d!2198088 (= (++!15552 (exprs!6984 lt!2524026) (exprs!6984 ct2!306)) lt!2524184)))

(declare-fun b!7040622 () Bool)

(declare-fun res!2874311 () Bool)

(assert (=> b!7040622 (=> (not res!2874311) (not e!4232557))))

(declare-fun size!41090 (List!67992) Int)

(assert (=> b!7040622 (= res!2874311 (= (size!41090 lt!2524184) (+ (size!41090 (exprs!6984 lt!2524026)) (size!41090 (exprs!6984 ct2!306)))))))

(declare-fun b!7040623 () Bool)

(assert (=> b!7040623 (= e!4232557 (or (not (= (exprs!6984 ct2!306) Nil!67868)) (= lt!2524184 (exprs!6984 lt!2524026))))))

(declare-fun b!7040620 () Bool)

(assert (=> b!7040620 (= e!4232558 (exprs!6984 ct2!306))))

(declare-fun b!7040621 () Bool)

(assert (=> b!7040621 (= e!4232558 (Cons!67868 (h!74316 (exprs!6984 lt!2524026)) (++!15552 (t!381763 (exprs!6984 lt!2524026)) (exprs!6984 ct2!306))))))

(assert (= (and d!2198088 c!1310438) b!7040620))

(assert (= (and d!2198088 (not c!1310438)) b!7040621))

(assert (= (and d!2198088 res!2874310) b!7040622))

(assert (= (and b!7040622 res!2874311) b!7040623))

(declare-fun m!7751810 () Bool)

(assert (=> d!2198088 m!7751810))

(declare-fun m!7751812 () Bool)

(assert (=> d!2198088 m!7751812))

(declare-fun m!7751814 () Bool)

(assert (=> d!2198088 m!7751814))

(declare-fun m!7751816 () Bool)

(assert (=> b!7040622 m!7751816))

(declare-fun m!7751818 () Bool)

(assert (=> b!7040622 m!7751818))

(declare-fun m!7751820 () Bool)

(assert (=> b!7040622 m!7751820))

(declare-fun m!7751822 () Bool)

(assert (=> b!7040621 m!7751822))

(assert (=> b!7040455 d!2198088))

(declare-fun d!2198090 () Bool)

(assert (=> d!2198090 (forall!16408 (++!15552 (exprs!6984 lt!2524026) (exprs!6984 ct2!306)) lambda!416659)))

(declare-fun lt!2524185 () Unit!161656)

(assert (=> d!2198090 (= lt!2524185 (choose!53429 (exprs!6984 lt!2524026) (exprs!6984 ct2!306) lambda!416659))))

(assert (=> d!2198090 (forall!16408 (exprs!6984 lt!2524026) lambda!416659)))

(assert (=> d!2198090 (= (lemmaConcatPreservesForall!809 (exprs!6984 lt!2524026) (exprs!6984 ct2!306) lambda!416659) lt!2524185)))

(declare-fun bs!1873195 () Bool)

(assert (= bs!1873195 d!2198090))

(assert (=> bs!1873195 m!7751606))

(assert (=> bs!1873195 m!7751606))

(declare-fun m!7751824 () Bool)

(assert (=> bs!1873195 m!7751824))

(declare-fun m!7751826 () Bool)

(assert (=> bs!1873195 m!7751826))

(declare-fun m!7751828 () Bool)

(assert (=> bs!1873195 m!7751828))

(assert (=> b!7040455 d!2198090))

(declare-fun d!2198092 () Bool)

(declare-fun e!4232561 () Bool)

(assert (=> d!2198092 e!4232561))

(declare-fun res!2874314 () Bool)

(assert (=> d!2198092 (=> (not res!2874314) (not e!4232561))))

(declare-fun lt!2524188 () Context!12968)

(declare-fun dynLambda!27444 (Int Context!12968) Context!12968)

(assert (=> d!2198092 (= res!2874314 (= lt!2524020 (dynLambda!27444 lambda!416658 lt!2524188)))))

(declare-fun choose!53432 ((Set Context!12968) Int Context!12968) Context!12968)

(assert (=> d!2198092 (= lt!2524188 (choose!53432 z1!570 lambda!416658 lt!2524020))))

(assert (=> d!2198092 (set.member lt!2524020 (map!15796 z1!570 lambda!416658))))

(assert (=> d!2198092 (= (mapPost2!329 z1!570 lambda!416658 lt!2524020) lt!2524188)))

(declare-fun b!7040627 () Bool)

(assert (=> b!7040627 (= e!4232561 (set.member lt!2524188 z1!570))))

(assert (= (and d!2198092 res!2874314) b!7040627))

(declare-fun b_lambda!267263 () Bool)

(assert (=> (not b_lambda!267263) (not d!2198092)))

(declare-fun m!7751830 () Bool)

(assert (=> d!2198092 m!7751830))

(declare-fun m!7751832 () Bool)

(assert (=> d!2198092 m!7751832))

(declare-fun m!7751834 () Bool)

(assert (=> d!2198092 m!7751834))

(declare-fun m!7751836 () Bool)

(assert (=> d!2198092 m!7751836))

(declare-fun m!7751838 () Bool)

(assert (=> b!7040627 m!7751838))

(assert (=> b!7040455 d!2198092))

(declare-fun b!7040638 () Bool)

(declare-fun e!4232569 () Bool)

(assert (=> b!7040638 (= e!4232569 (nullable!7199 (h!74316 (exprs!6984 lt!2524023))))))

(declare-fun d!2198094 () Bool)

(declare-fun c!1310444 () Bool)

(assert (=> d!2198094 (= c!1310444 e!4232569)))

(declare-fun res!2874317 () Bool)

(assert (=> d!2198094 (=> (not res!2874317) (not e!4232569))))

(assert (=> d!2198094 (= res!2874317 (is-Cons!67868 (exprs!6984 lt!2524023)))))

(declare-fun e!4232568 () (Set Context!12968))

(assert (=> d!2198094 (= (derivationStepZipperUp!2098 lt!2524023 (h!74317 s!7408)) e!4232568)))

(declare-fun bm!639443 () Bool)

(declare-fun call!639448 () (Set Context!12968))

(assert (=> bm!639443 (= call!639448 (derivationStepZipperDown!2152 (h!74316 (exprs!6984 lt!2524023)) (Context!12969 (t!381763 (exprs!6984 lt!2524023))) (h!74317 s!7408)))))

(declare-fun b!7040639 () Bool)

(declare-fun e!4232570 () (Set Context!12968))

(assert (=> b!7040639 (= e!4232570 (as set.empty (Set Context!12968)))))

(declare-fun b!7040640 () Bool)

(assert (=> b!7040640 (= e!4232568 (set.union call!639448 (derivationStepZipperUp!2098 (Context!12969 (t!381763 (exprs!6984 lt!2524023))) (h!74317 s!7408))))))

(declare-fun b!7040641 () Bool)

(assert (=> b!7040641 (= e!4232568 e!4232570)))

(declare-fun c!1310443 () Bool)

(assert (=> b!7040641 (= c!1310443 (is-Cons!67868 (exprs!6984 lt!2524023)))))

(declare-fun b!7040642 () Bool)

(assert (=> b!7040642 (= e!4232570 call!639448)))

(assert (= (and d!2198094 res!2874317) b!7040638))

(assert (= (and d!2198094 c!1310444) b!7040640))

(assert (= (and d!2198094 (not c!1310444)) b!7040641))

(assert (= (and b!7040641 c!1310443) b!7040642))

(assert (= (and b!7040641 (not c!1310443)) b!7040639))

(assert (= (or b!7040640 b!7040642) bm!639443))

(declare-fun m!7751840 () Bool)

(assert (=> b!7040638 m!7751840))

(declare-fun m!7751842 () Bool)

(assert (=> bm!639443 m!7751842))

(declare-fun m!7751844 () Bool)

(assert (=> b!7040640 m!7751844))

(assert (=> b!7040454 d!2198094))

(declare-fun d!2198096 () Bool)

(declare-fun e!4232571 () Bool)

(assert (=> d!2198096 e!4232571))

(declare-fun res!2874318 () Bool)

(assert (=> d!2198096 (=> (not res!2874318) (not e!4232571))))

(declare-fun lt!2524189 () List!67992)

(assert (=> d!2198096 (= res!2874318 (= (content!13575 lt!2524189) (set.union (content!13575 lt!2524039) (content!13575 (exprs!6984 ct2!306)))))))

(declare-fun e!4232572 () List!67992)

(assert (=> d!2198096 (= lt!2524189 e!4232572)))

(declare-fun c!1310445 () Bool)

(assert (=> d!2198096 (= c!1310445 (is-Nil!67868 lt!2524039))))

(assert (=> d!2198096 (= (++!15552 lt!2524039 (exprs!6984 ct2!306)) lt!2524189)))

(declare-fun b!7040645 () Bool)

(declare-fun res!2874319 () Bool)

(assert (=> b!7040645 (=> (not res!2874319) (not e!4232571))))

(assert (=> b!7040645 (= res!2874319 (= (size!41090 lt!2524189) (+ (size!41090 lt!2524039) (size!41090 (exprs!6984 ct2!306)))))))

(declare-fun b!7040646 () Bool)

(assert (=> b!7040646 (= e!4232571 (or (not (= (exprs!6984 ct2!306) Nil!67868)) (= lt!2524189 lt!2524039)))))

(declare-fun b!7040643 () Bool)

(assert (=> b!7040643 (= e!4232572 (exprs!6984 ct2!306))))

(declare-fun b!7040644 () Bool)

(assert (=> b!7040644 (= e!4232572 (Cons!67868 (h!74316 lt!2524039) (++!15552 (t!381763 lt!2524039) (exprs!6984 ct2!306))))))

(assert (= (and d!2198096 c!1310445) b!7040643))

(assert (= (and d!2198096 (not c!1310445)) b!7040644))

(assert (= (and d!2198096 res!2874318) b!7040645))

(assert (= (and b!7040645 res!2874319) b!7040646))

(declare-fun m!7751846 () Bool)

(assert (=> d!2198096 m!7751846))

(declare-fun m!7751848 () Bool)

(assert (=> d!2198096 m!7751848))

(assert (=> d!2198096 m!7751814))

(declare-fun m!7751850 () Bool)

(assert (=> b!7040645 m!7751850))

(declare-fun m!7751852 () Bool)

(assert (=> b!7040645 m!7751852))

(assert (=> b!7040645 m!7751820))

(declare-fun m!7751854 () Bool)

(assert (=> b!7040644 m!7751854))

(assert (=> b!7040454 d!2198096))

(assert (=> b!7040454 d!2198066))

(declare-fun b!7040647 () Bool)

(declare-fun e!4232576 () (Set Context!12968))

(assert (=> b!7040647 (= e!4232576 (set.insert lt!2524023 (as set.empty (Set Context!12968))))))

(declare-fun b!7040648 () Bool)

(declare-fun e!4232574 () (Set Context!12968))

(declare-fun e!4232578 () (Set Context!12968))

(assert (=> b!7040648 (= e!4232574 e!4232578)))

(declare-fun c!1310450 () Bool)

(assert (=> b!7040648 (= c!1310450 (is-Concat!26333 (h!74316 (exprs!6984 lt!2524026))))))

(declare-fun bm!639444 () Bool)

(declare-fun call!639453 () (Set Context!12968))

(declare-fun call!639449 () (Set Context!12968))

(assert (=> bm!639444 (= call!639453 call!639449)))

(declare-fun b!7040649 () Bool)

(declare-fun call!639454 () (Set Context!12968))

(assert (=> b!7040649 (= e!4232574 (set.union call!639454 call!639449))))

(declare-fun bm!639445 () Bool)

(declare-fun call!639450 () List!67992)

(declare-fun call!639451 () List!67992)

(assert (=> bm!639445 (= call!639450 call!639451)))

(declare-fun b!7040650 () Bool)

(declare-fun e!4232575 () (Set Context!12968))

(assert (=> b!7040650 (= e!4232575 call!639453)))

(declare-fun b!7040651 () Bool)

(assert (=> b!7040651 (= e!4232578 call!639453)))

(declare-fun bm!639446 () Bool)

(declare-fun c!1310446 () Bool)

(assert (=> bm!639446 (= call!639451 ($colon$colon!2588 (exprs!6984 lt!2524023) (ite (or c!1310446 c!1310450) (regTwo!35488 (h!74316 (exprs!6984 lt!2524026))) (h!74316 (exprs!6984 lt!2524026)))))))

(declare-fun b!7040652 () Bool)

(declare-fun e!4232577 () Bool)

(assert (=> b!7040652 (= c!1310446 e!4232577)))

(declare-fun res!2874320 () Bool)

(assert (=> b!7040652 (=> (not res!2874320) (not e!4232577))))

(assert (=> b!7040652 (= res!2874320 (is-Concat!26333 (h!74316 (exprs!6984 lt!2524026))))))

(declare-fun e!4232573 () (Set Context!12968))

(assert (=> b!7040652 (= e!4232573 e!4232574)))

(declare-fun b!7040653 () Bool)

(assert (=> b!7040653 (= e!4232575 (as set.empty (Set Context!12968)))))

(declare-fun b!7040654 () Bool)

(declare-fun c!1310448 () Bool)

(assert (=> b!7040654 (= c!1310448 (is-Star!17488 (h!74316 (exprs!6984 lt!2524026))))))

(assert (=> b!7040654 (= e!4232578 e!4232575)))

(declare-fun d!2198098 () Bool)

(declare-fun c!1310449 () Bool)

(assert (=> d!2198098 (= c!1310449 (and (is-ElementMatch!17488 (h!74316 (exprs!6984 lt!2524026))) (= (c!1310398 (h!74316 (exprs!6984 lt!2524026))) (h!74317 s!7408))))))

(assert (=> d!2198098 (= (derivationStepZipperDown!2152 (h!74316 (exprs!6984 lt!2524026)) lt!2524023 (h!74317 s!7408)) e!4232576)))

(declare-fun b!7040655 () Bool)

(assert (=> b!7040655 (= e!4232576 e!4232573)))

(declare-fun c!1310447 () Bool)

(assert (=> b!7040655 (= c!1310447 (is-Union!17488 (h!74316 (exprs!6984 lt!2524026))))))

(declare-fun bm!639447 () Bool)

(declare-fun call!639452 () (Set Context!12968))

(assert (=> bm!639447 (= call!639449 call!639452)))

(declare-fun bm!639448 () Bool)

(assert (=> bm!639448 (= call!639454 (derivationStepZipperDown!2152 (ite c!1310447 (regOne!35489 (h!74316 (exprs!6984 lt!2524026))) (regOne!35488 (h!74316 (exprs!6984 lt!2524026)))) (ite c!1310447 lt!2524023 (Context!12969 call!639451)) (h!74317 s!7408)))))

(declare-fun bm!639449 () Bool)

(assert (=> bm!639449 (= call!639452 (derivationStepZipperDown!2152 (ite c!1310447 (regTwo!35489 (h!74316 (exprs!6984 lt!2524026))) (ite c!1310446 (regTwo!35488 (h!74316 (exprs!6984 lt!2524026))) (ite c!1310450 (regOne!35488 (h!74316 (exprs!6984 lt!2524026))) (reg!17817 (h!74316 (exprs!6984 lt!2524026)))))) (ite (or c!1310447 c!1310446) lt!2524023 (Context!12969 call!639450)) (h!74317 s!7408)))))

(declare-fun b!7040656 () Bool)

(assert (=> b!7040656 (= e!4232573 (set.union call!639454 call!639452))))

(declare-fun b!7040657 () Bool)

(assert (=> b!7040657 (= e!4232577 (nullable!7199 (regOne!35488 (h!74316 (exprs!6984 lt!2524026)))))))

(assert (= (and d!2198098 c!1310449) b!7040647))

(assert (= (and d!2198098 (not c!1310449)) b!7040655))

(assert (= (and b!7040655 c!1310447) b!7040656))

(assert (= (and b!7040655 (not c!1310447)) b!7040652))

(assert (= (and b!7040652 res!2874320) b!7040657))

(assert (= (and b!7040652 c!1310446) b!7040649))

(assert (= (and b!7040652 (not c!1310446)) b!7040648))

(assert (= (and b!7040648 c!1310450) b!7040651))

(assert (= (and b!7040648 (not c!1310450)) b!7040654))

(assert (= (and b!7040654 c!1310448) b!7040650))

(assert (= (and b!7040654 (not c!1310448)) b!7040653))

(assert (= (or b!7040651 b!7040650) bm!639445))

(assert (= (or b!7040651 b!7040650) bm!639444))

(assert (= (or b!7040649 bm!639444) bm!639447))

(assert (= (or b!7040649 bm!639445) bm!639446))

(assert (= (or b!7040656 b!7040649) bm!639448))

(assert (= (or b!7040656 bm!639447) bm!639449))

(declare-fun m!7751856 () Bool)

(assert (=> b!7040647 m!7751856))

(declare-fun m!7751858 () Bool)

(assert (=> bm!639448 m!7751858))

(declare-fun m!7751860 () Bool)

(assert (=> bm!639449 m!7751860))

(declare-fun m!7751862 () Bool)

(assert (=> bm!639446 m!7751862))

(assert (=> b!7040657 m!7751748))

(assert (=> b!7040454 d!2198098))

(assert (=> b!7040466 d!2198066))

(declare-fun d!2198100 () Bool)

(declare-fun c!1310451 () Bool)

(assert (=> d!2198100 (= c!1310451 (isEmpty!39602 s!7408))))

(declare-fun e!4232579 () Bool)

(assert (=> d!2198100 (= (matchZipper!3028 lt!2524001 s!7408) e!4232579)))

(declare-fun b!7040658 () Bool)

(assert (=> b!7040658 (= e!4232579 (nullableZipper!2595 lt!2524001))))

(declare-fun b!7040659 () Bool)

(assert (=> b!7040659 (= e!4232579 (matchZipper!3028 (derivationStepZipper!2944 lt!2524001 (head!14286 s!7408)) (tail!13595 s!7408)))))

(assert (= (and d!2198100 c!1310451) b!7040658))

(assert (= (and d!2198100 (not c!1310451)) b!7040659))

(declare-fun m!7751864 () Bool)

(assert (=> d!2198100 m!7751864))

(declare-fun m!7751866 () Bool)

(assert (=> b!7040658 m!7751866))

(declare-fun m!7751868 () Bool)

(assert (=> b!7040659 m!7751868))

(assert (=> b!7040659 m!7751868))

(declare-fun m!7751870 () Bool)

(assert (=> b!7040659 m!7751870))

(declare-fun m!7751872 () Bool)

(assert (=> b!7040659 m!7751872))

(assert (=> b!7040659 m!7751870))

(assert (=> b!7040659 m!7751872))

(declare-fun m!7751874 () Bool)

(assert (=> b!7040659 m!7751874))

(assert (=> start!681032 d!2198100))

(declare-fun bs!1873196 () Bool)

(declare-fun d!2198102 () Bool)

(assert (= bs!1873196 (and d!2198102 b!7040455)))

(declare-fun lambda!416711 () Int)

(assert (=> bs!1873196 (= lambda!416711 lambda!416658)))

(declare-fun bs!1873197 () Bool)

(assert (= bs!1873197 (and d!2198102 d!2198086)))

(assert (=> bs!1873197 (= lambda!416711 lambda!416710)))

(assert (=> d!2198102 true))

(assert (=> d!2198102 (= (appendTo!609 z1!570 ct2!306) (map!15796 z1!570 lambda!416711))))

(declare-fun bs!1873198 () Bool)

(assert (= bs!1873198 d!2198102))

(declare-fun m!7751876 () Bool)

(assert (=> bs!1873198 m!7751876))

(assert (=> start!681032 d!2198102))

(declare-fun bs!1873199 () Bool)

(declare-fun d!2198104 () Bool)

(assert (= bs!1873199 (and d!2198104 b!7040455)))

(declare-fun lambda!416714 () Int)

(assert (=> bs!1873199 (= lambda!416714 lambda!416659)))

(declare-fun bs!1873200 () Bool)

(assert (= bs!1873200 (and d!2198104 d!2198078)))

(assert (=> bs!1873200 (= lambda!416714 lambda!416705)))

(assert (=> d!2198104 (= (inv!86580 ct2!306) (forall!16408 (exprs!6984 ct2!306) lambda!416714))))

(declare-fun bs!1873201 () Bool)

(assert (= bs!1873201 d!2198104))

(declare-fun m!7751878 () Bool)

(assert (=> bs!1873201 m!7751878))

(assert (=> start!681032 d!2198104))

(assert (=> b!7040456 d!2198090))

(declare-fun d!2198106 () Bool)

(declare-fun c!1310452 () Bool)

(assert (=> d!2198106 (= c!1310452 (isEmpty!39602 (t!381764 s!7408)))))

(declare-fun e!4232580 () Bool)

(assert (=> d!2198106 (= (matchZipper!3028 lt!2524004 (t!381764 s!7408)) e!4232580)))

(declare-fun b!7040660 () Bool)

(assert (=> b!7040660 (= e!4232580 (nullableZipper!2595 lt!2524004))))

(declare-fun b!7040661 () Bool)

(assert (=> b!7040661 (= e!4232580 (matchZipper!3028 (derivationStepZipper!2944 lt!2524004 (head!14286 (t!381764 s!7408))) (tail!13595 (t!381764 s!7408))))))

(assert (= (and d!2198106 c!1310452) b!7040660))

(assert (= (and d!2198106 (not c!1310452)) b!7040661))

(assert (=> d!2198106 m!7751710))

(declare-fun m!7751880 () Bool)

(assert (=> b!7040660 m!7751880))

(assert (=> b!7040661 m!7751714))

(assert (=> b!7040661 m!7751714))

(declare-fun m!7751882 () Bool)

(assert (=> b!7040661 m!7751882))

(assert (=> b!7040661 m!7751718))

(assert (=> b!7040661 m!7751882))

(assert (=> b!7040661 m!7751718))

(declare-fun m!7751884 () Bool)

(assert (=> b!7040661 m!7751884))

(assert (=> b!7040465 d!2198106))

(assert (=> b!7040465 d!2198066))

(declare-fun e!4232583 () Bool)

(declare-fun d!2198108 () Bool)

(assert (=> d!2198108 (= (matchZipper!3028 (set.union lt!2524012 lt!2524037) (t!381764 s!7408)) e!4232583)))

(declare-fun res!2874324 () Bool)

(assert (=> d!2198108 (=> res!2874324 e!4232583)))

(assert (=> d!2198108 (= res!2874324 (matchZipper!3028 lt!2524012 (t!381764 s!7408)))))

(declare-fun lt!2524192 () Unit!161656)

(declare-fun choose!53433 ((Set Context!12968) (Set Context!12968) List!67993) Unit!161656)

(assert (=> d!2198108 (= lt!2524192 (choose!53433 lt!2524012 lt!2524037 (t!381764 s!7408)))))

(assert (=> d!2198108 (= (lemmaZipperConcatMatchesSameAsBothZippers!1561 lt!2524012 lt!2524037 (t!381764 s!7408)) lt!2524192)))

(declare-fun b!7040664 () Bool)

(assert (=> b!7040664 (= e!4232583 (matchZipper!3028 lt!2524037 (t!381764 s!7408)))))

(assert (= (and d!2198108 (not res!2874324)) b!7040664))

(declare-fun m!7751886 () Bool)

(assert (=> d!2198108 m!7751886))

(assert (=> d!2198108 m!7751618))

(declare-fun m!7751888 () Bool)

(assert (=> d!2198108 m!7751888))

(assert (=> b!7040664 m!7751546))

(assert (=> b!7040465 d!2198108))

(declare-fun d!2198110 () Bool)

(declare-fun c!1310453 () Bool)

(assert (=> d!2198110 (= c!1310453 (isEmpty!39602 (t!381764 s!7408)))))

(declare-fun e!4232584 () Bool)

(assert (=> d!2198110 (= (matchZipper!3028 lt!2524003 (t!381764 s!7408)) e!4232584)))

(declare-fun b!7040665 () Bool)

(assert (=> b!7040665 (= e!4232584 (nullableZipper!2595 lt!2524003))))

(declare-fun b!7040666 () Bool)

(assert (=> b!7040666 (= e!4232584 (matchZipper!3028 (derivationStepZipper!2944 lt!2524003 (head!14286 (t!381764 s!7408))) (tail!13595 (t!381764 s!7408))))))

(assert (= (and d!2198110 c!1310453) b!7040665))

(assert (= (and d!2198110 (not c!1310453)) b!7040666))

(assert (=> d!2198110 m!7751710))

(declare-fun m!7751890 () Bool)

(assert (=> b!7040665 m!7751890))

(assert (=> b!7040666 m!7751714))

(assert (=> b!7040666 m!7751714))

(declare-fun m!7751892 () Bool)

(assert (=> b!7040666 m!7751892))

(assert (=> b!7040666 m!7751718))

(assert (=> b!7040666 m!7751892))

(assert (=> b!7040666 m!7751718))

(declare-fun m!7751894 () Bool)

(assert (=> b!7040666 m!7751894))

(assert (=> b!7040465 d!2198110))

(declare-fun d!2198112 () Bool)

(declare-fun c!1310454 () Bool)

(assert (=> d!2198112 (= c!1310454 (isEmpty!39602 (t!381764 s!7408)))))

(declare-fun e!4232585 () Bool)

(assert (=> d!2198112 (= (matchZipper!3028 lt!2524012 (t!381764 s!7408)) e!4232585)))

(declare-fun b!7040667 () Bool)

(assert (=> b!7040667 (= e!4232585 (nullableZipper!2595 lt!2524012))))

(declare-fun b!7040668 () Bool)

(assert (=> b!7040668 (= e!4232585 (matchZipper!3028 (derivationStepZipper!2944 lt!2524012 (head!14286 (t!381764 s!7408))) (tail!13595 (t!381764 s!7408))))))

(assert (= (and d!2198112 c!1310454) b!7040667))

(assert (= (and d!2198112 (not c!1310454)) b!7040668))

(assert (=> d!2198112 m!7751710))

(declare-fun m!7751896 () Bool)

(assert (=> b!7040667 m!7751896))

(assert (=> b!7040668 m!7751714))

(assert (=> b!7040668 m!7751714))

(declare-fun m!7751898 () Bool)

(assert (=> b!7040668 m!7751898))

(assert (=> b!7040668 m!7751718))

(assert (=> b!7040668 m!7751898))

(assert (=> b!7040668 m!7751718))

(declare-fun m!7751900 () Bool)

(assert (=> b!7040668 m!7751900))

(assert (=> b!7040465 d!2198112))

(declare-fun bs!1873202 () Bool)

(declare-fun d!2198114 () Bool)

(assert (= bs!1873202 (and d!2198114 b!7040455)))

(declare-fun lambda!416715 () Int)

(assert (=> bs!1873202 (= lambda!416715 lambda!416659)))

(declare-fun bs!1873203 () Bool)

(assert (= bs!1873203 (and d!2198114 d!2198078)))

(assert (=> bs!1873203 (= lambda!416715 lambda!416705)))

(declare-fun bs!1873204 () Bool)

(assert (= bs!1873204 (and d!2198114 d!2198104)))

(assert (=> bs!1873204 (= lambda!416715 lambda!416714)))

(assert (=> d!2198114 (= (inv!86580 setElem!49333) (forall!16408 (exprs!6984 setElem!49333) lambda!416715))))

(declare-fun bs!1873205 () Bool)

(assert (= bs!1873205 d!2198114))

(declare-fun m!7751902 () Bool)

(assert (=> bs!1873205 m!7751902))

(assert (=> setNonEmpty!49333 d!2198114))

(declare-fun d!2198116 () Bool)

(declare-fun e!4232588 () Bool)

(assert (=> d!2198116 e!4232588))

(declare-fun res!2874327 () Bool)

(assert (=> d!2198116 (=> (not res!2874327) (not e!4232588))))

(declare-fun lt!2524195 () List!67994)

(declare-fun noDuplicate!2642 (List!67994) Bool)

(assert (=> d!2198116 (= res!2874327 (noDuplicate!2642 lt!2524195))))

(declare-fun choose!53434 ((Set Context!12968)) List!67994)

(assert (=> d!2198116 (= lt!2524195 (choose!53434 lt!2524001))))

(assert (=> d!2198116 (= (toList!10831 lt!2524001) lt!2524195)))

(declare-fun b!7040671 () Bool)

(declare-fun content!13576 (List!67994) (Set Context!12968))

(assert (=> b!7040671 (= e!4232588 (= (content!13576 lt!2524195) lt!2524001))))

(assert (= (and d!2198116 res!2874327) b!7040671))

(declare-fun m!7751904 () Bool)

(assert (=> d!2198116 m!7751904))

(declare-fun m!7751906 () Bool)

(assert (=> d!2198116 m!7751906))

(declare-fun m!7751908 () Bool)

(assert (=> b!7040671 m!7751908))

(assert (=> b!7040446 d!2198116))

(declare-fun bs!1873206 () Bool)

(declare-fun d!2198118 () Bool)

(assert (= bs!1873206 (and d!2198118 b!7040446)))

(declare-fun lambda!416718 () Int)

(assert (=> bs!1873206 (= lambda!416718 lambda!416657)))

(assert (=> d!2198118 true))

(assert (=> d!2198118 (exists!3430 lt!2524013 lambda!416718)))

(declare-fun lt!2524198 () Unit!161656)

(declare-fun choose!53435 (List!67994 List!67993) Unit!161656)

(assert (=> d!2198118 (= lt!2524198 (choose!53435 lt!2524013 s!7408))))

(assert (=> d!2198118 (matchZipper!3028 (content!13576 lt!2524013) s!7408)))

(assert (=> d!2198118 (= (lemmaZipperMatchesExistsMatchingContext!427 lt!2524013 s!7408) lt!2524198)))

(declare-fun bs!1873207 () Bool)

(assert (= bs!1873207 d!2198118))

(declare-fun m!7751910 () Bool)

(assert (=> bs!1873207 m!7751910))

(declare-fun m!7751912 () Bool)

(assert (=> bs!1873207 m!7751912))

(declare-fun m!7751914 () Bool)

(assert (=> bs!1873207 m!7751914))

(assert (=> bs!1873207 m!7751914))

(declare-fun m!7751916 () Bool)

(assert (=> bs!1873207 m!7751916))

(assert (=> b!7040446 d!2198118))

(declare-fun d!2198120 () Bool)

(declare-fun e!4232591 () Bool)

(assert (=> d!2198120 e!4232591))

(declare-fun res!2874330 () Bool)

(assert (=> d!2198120 (=> (not res!2874330) (not e!4232591))))

(declare-fun lt!2524201 () Context!12968)

(declare-fun dynLambda!27445 (Int Context!12968) Bool)

(assert (=> d!2198120 (= res!2874330 (dynLambda!27445 lambda!416657 lt!2524201))))

(declare-fun getWitness!1511 (List!67994 Int) Context!12968)

(assert (=> d!2198120 (= lt!2524201 (getWitness!1511 (toList!10831 lt!2524001) lambda!416657))))

(declare-fun exists!3432 ((Set Context!12968) Int) Bool)

(assert (=> d!2198120 (exists!3432 lt!2524001 lambda!416657)))

(assert (=> d!2198120 (= (getWitness!1509 lt!2524001 lambda!416657) lt!2524201)))

(declare-fun b!7040674 () Bool)

(assert (=> b!7040674 (= e!4232591 (set.member lt!2524201 lt!2524001))))

(assert (= (and d!2198120 res!2874330) b!7040674))

(declare-fun b_lambda!267265 () Bool)

(assert (=> (not b_lambda!267265) (not d!2198120)))

(declare-fun m!7751918 () Bool)

(assert (=> d!2198120 m!7751918))

(assert (=> d!2198120 m!7751568))

(assert (=> d!2198120 m!7751568))

(declare-fun m!7751920 () Bool)

(assert (=> d!2198120 m!7751920))

(declare-fun m!7751922 () Bool)

(assert (=> d!2198120 m!7751922))

(declare-fun m!7751924 () Bool)

(assert (=> b!7040674 m!7751924))

(assert (=> b!7040446 d!2198120))

(declare-fun d!2198122 () Bool)

(declare-fun c!1310457 () Bool)

(assert (=> d!2198122 (= c!1310457 (isEmpty!39602 s!7408))))

(declare-fun e!4232592 () Bool)

(assert (=> d!2198122 (= (matchZipper!3028 lt!2524030 s!7408) e!4232592)))

(declare-fun b!7040675 () Bool)

(assert (=> b!7040675 (= e!4232592 (nullableZipper!2595 lt!2524030))))

(declare-fun b!7040676 () Bool)

(assert (=> b!7040676 (= e!4232592 (matchZipper!3028 (derivationStepZipper!2944 lt!2524030 (head!14286 s!7408)) (tail!13595 s!7408)))))

(assert (= (and d!2198122 c!1310457) b!7040675))

(assert (= (and d!2198122 (not c!1310457)) b!7040676))

(assert (=> d!2198122 m!7751864))

(declare-fun m!7751926 () Bool)

(assert (=> b!7040675 m!7751926))

(assert (=> b!7040676 m!7751868))

(assert (=> b!7040676 m!7751868))

(declare-fun m!7751928 () Bool)

(assert (=> b!7040676 m!7751928))

(assert (=> b!7040676 m!7751872))

(assert (=> b!7040676 m!7751928))

(assert (=> b!7040676 m!7751872))

(declare-fun m!7751930 () Bool)

(assert (=> b!7040676 m!7751930))

(assert (=> b!7040446 d!2198122))

(declare-fun bs!1873208 () Bool)

(declare-fun d!2198124 () Bool)

(assert (= bs!1873208 (and d!2198124 b!7040446)))

(declare-fun lambda!416721 () Int)

(assert (=> bs!1873208 (not (= lambda!416721 lambda!416657))))

(declare-fun bs!1873209 () Bool)

(assert (= bs!1873209 (and d!2198124 d!2198118)))

(assert (=> bs!1873209 (not (= lambda!416721 lambda!416718))))

(assert (=> d!2198124 true))

(declare-fun order!28205 () Int)

(declare-fun dynLambda!27446 (Int Int) Int)

(assert (=> d!2198124 (< (dynLambda!27446 order!28205 lambda!416657) (dynLambda!27446 order!28205 lambda!416721))))

(declare-fun forall!16409 (List!67994 Int) Bool)

(assert (=> d!2198124 (= (exists!3430 lt!2524013 lambda!416657) (not (forall!16409 lt!2524013 lambda!416721)))))

(declare-fun bs!1873210 () Bool)

(assert (= bs!1873210 d!2198124))

(declare-fun m!7751932 () Bool)

(assert (=> bs!1873210 m!7751932))

(assert (=> b!7040446 d!2198124))

(declare-fun d!2198126 () Bool)

(declare-fun nullableFct!2742 (Regex!17488) Bool)

(assert (=> d!2198126 (= (nullable!7199 (h!74316 (exprs!6984 lt!2524026))) (nullableFct!2742 (h!74316 (exprs!6984 lt!2524026))))))

(declare-fun bs!1873211 () Bool)

(assert (= bs!1873211 d!2198126))

(declare-fun m!7751934 () Bool)

(assert (=> bs!1873211 m!7751934))

(assert (=> b!7040448 d!2198126))

(declare-fun d!2198128 () Bool)

(assert (=> d!2198128 (= (tail!13593 (exprs!6984 lt!2524026)) (t!381763 (exprs!6984 lt!2524026)))))

(assert (=> b!7040448 d!2198128))

(declare-fun b!7040679 () Bool)

(declare-fun e!4232594 () Bool)

(assert (=> b!7040679 (= e!4232594 (nullable!7199 (h!74316 (exprs!6984 lt!2524021))))))

(declare-fun d!2198130 () Bool)

(declare-fun c!1310459 () Bool)

(assert (=> d!2198130 (= c!1310459 e!4232594)))

(declare-fun res!2874331 () Bool)

(assert (=> d!2198130 (=> (not res!2874331) (not e!4232594))))

(assert (=> d!2198130 (= res!2874331 (is-Cons!67868 (exprs!6984 lt!2524021)))))

(declare-fun e!4232593 () (Set Context!12968))

(assert (=> d!2198130 (= (derivationStepZipperUp!2098 lt!2524021 (h!74317 s!7408)) e!4232593)))

(declare-fun bm!639450 () Bool)

(declare-fun call!639455 () (Set Context!12968))

(assert (=> bm!639450 (= call!639455 (derivationStepZipperDown!2152 (h!74316 (exprs!6984 lt!2524021)) (Context!12969 (t!381763 (exprs!6984 lt!2524021))) (h!74317 s!7408)))))

(declare-fun b!7040680 () Bool)

(declare-fun e!4232595 () (Set Context!12968))

(assert (=> b!7040680 (= e!4232595 (as set.empty (Set Context!12968)))))

(declare-fun b!7040681 () Bool)

(assert (=> b!7040681 (= e!4232593 (set.union call!639455 (derivationStepZipperUp!2098 (Context!12969 (t!381763 (exprs!6984 lt!2524021))) (h!74317 s!7408))))))

(declare-fun b!7040682 () Bool)

(assert (=> b!7040682 (= e!4232593 e!4232595)))

(declare-fun c!1310458 () Bool)

(assert (=> b!7040682 (= c!1310458 (is-Cons!67868 (exprs!6984 lt!2524021)))))

(declare-fun b!7040683 () Bool)

(assert (=> b!7040683 (= e!4232595 call!639455)))

(assert (= (and d!2198130 res!2874331) b!7040679))

(assert (= (and d!2198130 c!1310459) b!7040681))

(assert (= (and d!2198130 (not c!1310459)) b!7040682))

(assert (= (and b!7040682 c!1310458) b!7040683))

(assert (= (and b!7040682 (not c!1310458)) b!7040680))

(assert (= (or b!7040681 b!7040683) bm!639450))

(declare-fun m!7751936 () Bool)

(assert (=> b!7040679 m!7751936))

(declare-fun m!7751938 () Bool)

(assert (=> bm!639450 m!7751938))

(declare-fun m!7751940 () Bool)

(assert (=> b!7040681 m!7751940))

(assert (=> b!7040457 d!2198130))

(declare-fun d!2198132 () Bool)

(declare-fun choose!53436 ((Set Context!12968) Int) (Set Context!12968))

(assert (=> d!2198132 (= (flatMap!2435 lt!2524009 lambda!416660) (choose!53436 lt!2524009 lambda!416660))))

(declare-fun bs!1873212 () Bool)

(assert (= bs!1873212 d!2198132))

(declare-fun m!7751942 () Bool)

(assert (=> bs!1873212 m!7751942))

(assert (=> b!7040457 d!2198132))

(declare-fun d!2198134 () Bool)

(declare-fun dynLambda!27447 (Int Context!12968) (Set Context!12968))

(assert (=> d!2198134 (= (flatMap!2435 lt!2524009 lambda!416660) (dynLambda!27447 lambda!416660 lt!2524021))))

(declare-fun lt!2524204 () Unit!161656)

(declare-fun choose!53437 ((Set Context!12968) Context!12968 Int) Unit!161656)

(assert (=> d!2198134 (= lt!2524204 (choose!53437 lt!2524009 lt!2524021 lambda!416660))))

(assert (=> d!2198134 (= lt!2524009 (set.insert lt!2524021 (as set.empty (Set Context!12968))))))

(assert (=> d!2198134 (= (lemmaFlatMapOnSingletonSet!1949 lt!2524009 lt!2524021 lambda!416660) lt!2524204)))

(declare-fun b_lambda!267267 () Bool)

(assert (=> (not b_lambda!267267) (not d!2198134)))

(declare-fun bs!1873213 () Bool)

(assert (= bs!1873213 d!2198134))

(assert (=> bs!1873213 m!7751562))

(declare-fun m!7751944 () Bool)

(assert (=> bs!1873213 m!7751944))

(declare-fun m!7751946 () Bool)

(assert (=> bs!1873213 m!7751946))

(assert (=> bs!1873213 m!7751614))

(assert (=> b!7040457 d!2198134))

(declare-fun bs!1873214 () Bool)

(declare-fun d!2198136 () Bool)

(assert (= bs!1873214 (and d!2198136 b!7040457)))

(declare-fun lambda!416724 () Int)

(assert (=> bs!1873214 (= lambda!416724 lambda!416660)))

(assert (=> d!2198136 true))

(assert (=> d!2198136 (= (derivationStepZipper!2944 lt!2524009 (h!74317 s!7408)) (flatMap!2435 lt!2524009 lambda!416724))))

(declare-fun bs!1873215 () Bool)

(assert (= bs!1873215 d!2198136))

(declare-fun m!7751948 () Bool)

(assert (=> bs!1873215 m!7751948))

(assert (=> b!7040457 d!2198136))

(assert (=> b!7040457 d!2198090))

(declare-fun b!7040690 () Bool)

(declare-fun e!4232598 () Bool)

(declare-fun tp!1937346 () Bool)

(assert (=> b!7040690 (= e!4232598 (and tp_is_empty!44201 tp!1937346))))

(assert (=> b!7040451 (= tp!1937329 e!4232598)))

(assert (= (and b!7040451 (is-Cons!67869 (t!381764 s!7408))) b!7040690))

(declare-fun b!7040695 () Bool)

(declare-fun e!4232601 () Bool)

(declare-fun tp!1937351 () Bool)

(declare-fun tp!1937352 () Bool)

(assert (=> b!7040695 (= e!4232601 (and tp!1937351 tp!1937352))))

(assert (=> b!7040447 (= tp!1937331 e!4232601)))

(assert (= (and b!7040447 (is-Cons!67868 (exprs!6984 ct2!306))) b!7040695))

(declare-fun condSetEmpty!49339 () Bool)

(assert (=> setNonEmpty!49333 (= condSetEmpty!49339 (= setRest!49333 (as set.empty (Set Context!12968))))))

(declare-fun setRes!49339 () Bool)

(assert (=> setNonEmpty!49333 (= tp!1937330 setRes!49339)))

(declare-fun setIsEmpty!49339 () Bool)

(assert (=> setIsEmpty!49339 setRes!49339))

(declare-fun setNonEmpty!49339 () Bool)

(declare-fun e!4232604 () Bool)

(declare-fun setElem!49339 () Context!12968)

(declare-fun tp!1937357 () Bool)

(assert (=> setNonEmpty!49339 (= setRes!49339 (and tp!1937357 (inv!86580 setElem!49339) e!4232604))))

(declare-fun setRest!49339 () (Set Context!12968))

(assert (=> setNonEmpty!49339 (= setRest!49333 (set.union (set.insert setElem!49339 (as set.empty (Set Context!12968))) setRest!49339))))

(declare-fun b!7040700 () Bool)

(declare-fun tp!1937358 () Bool)

(assert (=> b!7040700 (= e!4232604 tp!1937358)))

(assert (= (and setNonEmpty!49333 condSetEmpty!49339) setIsEmpty!49339))

(assert (= (and setNonEmpty!49333 (not condSetEmpty!49339)) setNonEmpty!49339))

(assert (= setNonEmpty!49339 b!7040700))

(declare-fun m!7751950 () Bool)

(assert (=> setNonEmpty!49339 m!7751950))

(declare-fun b!7040701 () Bool)

(declare-fun e!4232605 () Bool)

(declare-fun tp!1937359 () Bool)

(declare-fun tp!1937360 () Bool)

(assert (=> b!7040701 (= e!4232605 (and tp!1937359 tp!1937360))))

(assert (=> b!7040458 (= tp!1937328 e!4232605)))

(assert (= (and b!7040458 (is-Cons!67868 (exprs!6984 setElem!49333))) b!7040701))

(declare-fun b_lambda!267269 () Bool)

(assert (= b_lambda!267265 (or b!7040446 b_lambda!267269)))

(declare-fun bs!1873216 () Bool)

(declare-fun d!2198138 () Bool)

(assert (= bs!1873216 (and d!2198138 b!7040446)))

(assert (=> bs!1873216 (= (dynLambda!27445 lambda!416657 lt!2524201) (matchZipper!3028 (set.insert lt!2524201 (as set.empty (Set Context!12968))) s!7408))))

(declare-fun m!7751952 () Bool)

(assert (=> bs!1873216 m!7751952))

(assert (=> bs!1873216 m!7751952))

(declare-fun m!7751954 () Bool)

(assert (=> bs!1873216 m!7751954))

(assert (=> d!2198120 d!2198138))

(declare-fun b_lambda!267271 () Bool)

(assert (= b_lambda!267267 (or b!7040457 b_lambda!267271)))

(declare-fun bs!1873217 () Bool)

(declare-fun d!2198140 () Bool)

(assert (= bs!1873217 (and d!2198140 b!7040457)))

(assert (=> bs!1873217 (= (dynLambda!27447 lambda!416660 lt!2524021) (derivationStepZipperUp!2098 lt!2524021 (h!74317 s!7408)))))

(assert (=> bs!1873217 m!7751560))

(assert (=> d!2198134 d!2198140))

(declare-fun b_lambda!267273 () Bool)

(assert (= b_lambda!267263 (or b!7040455 b_lambda!267273)))

(declare-fun bs!1873218 () Bool)

(declare-fun d!2198142 () Bool)

(assert (= bs!1873218 (and d!2198142 b!7040455)))

(declare-fun lt!2524205 () Unit!161656)

(assert (=> bs!1873218 (= lt!2524205 (lemmaConcatPreservesForall!809 (exprs!6984 lt!2524188) (exprs!6984 ct2!306) lambda!416659))))

(assert (=> bs!1873218 (= (dynLambda!27444 lambda!416658 lt!2524188) (Context!12969 (++!15552 (exprs!6984 lt!2524188) (exprs!6984 ct2!306))))))

(declare-fun m!7751956 () Bool)

(assert (=> bs!1873218 m!7751956))

(declare-fun m!7751958 () Bool)

(assert (=> bs!1873218 m!7751958))

(assert (=> d!2198092 d!2198142))

(push 1)

(assert (not d!2198136))

(assert (not b!7040548))

(assert (not bs!1873216))

(assert (not b!7040546))

(assert (not b!7040549))

(assert (not b!7040645))

(assert (not d!2198104))

(assert (not b!7040644))

(assert (not d!2198102))

(assert (not b!7040606))

(assert (not b!7040701))

(assert (not bs!1873217))

(assert (not bm!639448))

(assert (not bm!639437))

(assert (not d!2198092))

(assert (not d!2198066))

(assert (not b!7040666))

(assert (not b!7040610))

(assert (not b!7040700))

(assert (not b!7040582))

(assert (not b!7040664))

(assert (not b!7040621))

(assert (not b!7040657))

(assert (not d!2198108))

(assert (not b!7040601))

(assert (not d!2198116))

(assert (not d!2198120))

(assert (not d!2198086))

(assert (not d!2198110))

(assert (not d!2198080))

(assert (not b!7040676))

(assert (not d!2198064))

(assert (not d!2198084))

(assert (not d!2198090))

(assert (not b!7040679))

(assert (not d!2198126))

(assert (not b!7040605))

(assert (not b!7040665))

(assert (not d!2198124))

(assert (not d!2198132))

(assert (not bm!639439))

(assert (not b!7040681))

(assert (not b!7040604))

(assert (not b_lambda!267271))

(assert (not d!2198076))

(assert (not d!2198068))

(assert (not b!7040660))

(assert (not b!7040668))

(assert (not b!7040671))

(assert (not b!7040622))

(assert (not bm!639446))

(assert (not d!2198100))

(assert (not b!7040547))

(assert (not d!2198078))

(assert (not b_lambda!267273))

(assert (not b_lambda!267269))

(assert (not d!2198134))

(assert (not b!7040638))

(assert tp_is_empty!44201)

(assert (not bs!1873218))

(assert (not b!7040609))

(assert (not b!7040695))

(assert (not bm!639449))

(assert (not d!2198112))

(assert (not b!7040640))

(assert (not d!2198088))

(assert (not bm!639440))

(assert (not b!7040602))

(assert (not d!2198114))

(assert (not setNonEmpty!49339))

(assert (not d!2198118))

(assert (not b!7040611))

(assert (not d!2198082))

(assert (not b!7040658))

(assert (not bm!639450))

(assert (not bm!639443))

(assert (not d!2198106))

(assert (not d!2198122))

(assert (not b!7040675))

(assert (not b!7040659))

(assert (not b!7040690))

(assert (not b!7040667))

(assert (not b!7040661))

(assert (not d!2198096))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

