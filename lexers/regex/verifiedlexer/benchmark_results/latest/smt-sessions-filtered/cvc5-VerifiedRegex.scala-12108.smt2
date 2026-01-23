; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!679546 () Bool)

(assert start!679546)

(declare-fun b!7032163 () Bool)

(assert (=> b!7032163 true))

(declare-fun b!7032169 () Bool)

(assert (=> b!7032169 true))

(declare-fun b!7032161 () Bool)

(assert (=> b!7032161 true))

(declare-fun bs!1870549 () Bool)

(declare-fun b!7032149 () Bool)

(assert (= bs!1870549 (and b!7032149 b!7032163)))

(declare-fun lambda!414588 () Int)

(declare-fun lambda!414584 () Int)

(assert (=> bs!1870549 (not (= lambda!414588 lambda!414584))))

(declare-fun b!7032147 () Bool)

(declare-fun res!2870618 () Bool)

(declare-fun e!4227446 () Bool)

(assert (=> b!7032147 (=> res!2870618 e!4227446)))

(declare-datatypes ((C!35194 0))(
  ( (C!35195 (val!27299 Int)) )
))
(declare-datatypes ((Regex!17462 0))(
  ( (ElementMatch!17462 (c!1307927 C!35194)) (Concat!26307 (regOne!35436 Regex!17462) (regTwo!35436 Regex!17462)) (EmptyExpr!17462) (Star!17462 (reg!17791 Regex!17462)) (EmptyLang!17462) (Union!17462 (regOne!35437 Regex!17462) (regTwo!35437 Regex!17462)) )
))
(declare-datatypes ((List!67914 0))(
  ( (Nil!67790) (Cons!67790 (h!74238 Regex!17462) (t!381679 List!67914)) )
))
(declare-datatypes ((Context!12916 0))(
  ( (Context!12917 (exprs!6958 List!67914)) )
))
(declare-fun lt!2518435 () Context!12916)

(declare-fun lt!2518432 () (Set Context!12916))

(assert (=> b!7032147 (= res!2870618 (not (set.member lt!2518435 lt!2518432)))))

(declare-fun b!7032148 () Bool)

(declare-fun e!4227442 () Bool)

(declare-fun tp_is_empty!44149 () Bool)

(declare-fun tp!1936372 () Bool)

(assert (=> b!7032148 (= e!4227442 (and tp_is_empty!44149 tp!1936372))))

(declare-fun res!2870637 () Bool)

(declare-fun e!4227444 () Bool)

(assert (=> b!7032149 (=> res!2870637 e!4227444)))

(declare-fun lt!2518429 () (Set Context!12916))

(declare-fun exists!3386 ((Set Context!12916) Int) Bool)

(assert (=> b!7032149 (= res!2870637 (not (exists!3386 lt!2518429 lambda!414588)))))

(declare-fun b!7032150 () Bool)

(declare-fun e!4227439 () Bool)

(declare-fun lt!2518441 () (Set Context!12916))

(declare-datatypes ((List!67915 0))(
  ( (Nil!67791) (Cons!67791 (h!74239 C!35194) (t!381680 List!67915)) )
))
(declare-fun s!7408 () List!67915)

(declare-fun matchZipper!3002 ((Set Context!12916) List!67915) Bool)

(assert (=> b!7032150 (= e!4227439 (matchZipper!3002 lt!2518441 (t!381680 s!7408)))))

(declare-fun b!7032151 () Bool)

(declare-fun res!2870625 () Bool)

(assert (=> b!7032151 (=> res!2870625 e!4227444)))

(declare-fun lt!2518422 () (Set Context!12916))

(declare-datatypes ((tuple2!68070 0))(
  ( (tuple2!68071 (_1!37338 List!67915) (_2!37338 List!67915)) )
))
(declare-fun lt!2518462 () tuple2!68070)

(assert (=> b!7032151 (= res!2870625 (not (matchZipper!3002 lt!2518422 (_2!37338 lt!2518462))))))

(declare-fun setRes!49145 () Bool)

(declare-fun setNonEmpty!49145 () Bool)

(declare-fun setElem!49145 () Context!12916)

(declare-fun e!4227440 () Bool)

(declare-fun tp!1936373 () Bool)

(declare-fun inv!86515 (Context!12916) Bool)

(assert (=> setNonEmpty!49145 (= setRes!49145 (and tp!1936373 (inv!86515 setElem!49145) e!4227440))))

(declare-fun z1!570 () (Set Context!12916))

(declare-fun setRest!49145 () (Set Context!12916))

(assert (=> setNonEmpty!49145 (= z1!570 (set.union (set.insert setElem!49145 (as set.empty (Set Context!12916))) setRest!49145))))

(declare-fun b!7032152 () Bool)

(declare-fun res!2870633 () Bool)

(declare-fun e!4227432 () Bool)

(assert (=> b!7032152 (=> res!2870633 e!4227432)))

(declare-fun lt!2518414 () Bool)

(assert (=> b!7032152 (= res!2870633 (not lt!2518414))))

(declare-fun b!7032153 () Bool)

(declare-fun res!2870630 () Bool)

(declare-fun e!4227431 () Bool)

(assert (=> b!7032153 (=> res!2870630 e!4227431)))

(declare-fun lt!2518443 () Context!12916)

(declare-fun lt!2518434 () Int)

(declare-datatypes ((List!67916 0))(
  ( (Nil!67792) (Cons!67792 (h!74240 Context!12916) (t!381681 List!67916)) )
))
(declare-fun zipperDepthTotal!525 (List!67916) Int)

(assert (=> b!7032153 (= res!2870630 (>= (zipperDepthTotal!525 (Cons!67792 lt!2518443 Nil!67792)) lt!2518434))))

(declare-fun b!7032154 () Bool)

(declare-fun e!4227434 () Bool)

(assert (=> b!7032154 (= e!4227434 e!4227431)))

(declare-fun res!2870620 () Bool)

(assert (=> b!7032154 (=> res!2870620 e!4227431)))

(declare-fun lt!2518424 () Int)

(declare-fun contextDepthTotal!497 (Context!12916) Int)

(assert (=> b!7032154 (= res!2870620 (<= lt!2518424 (contextDepthTotal!497 lt!2518443)))))

(assert (=> b!7032154 (<= lt!2518424 lt!2518434)))

(declare-fun lt!2518442 () List!67916)

(assert (=> b!7032154 (= lt!2518434 (zipperDepthTotal!525 lt!2518442))))

(declare-fun lt!2518419 () Context!12916)

(assert (=> b!7032154 (= lt!2518424 (contextDepthTotal!497 lt!2518419))))

(declare-datatypes ((Unit!161594 0))(
  ( (Unit!161595) )
))
(declare-fun lt!2518449 () Unit!161594)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!65 (List!67916 Context!12916) Unit!161594)

(assert (=> b!7032154 (= lt!2518449 (lemmaTotalDepthZipperLargerThanOfAnyContext!65 lt!2518442 lt!2518419))))

(declare-fun toList!10805 ((Set Context!12916)) List!67916)

(assert (=> b!7032154 (= lt!2518442 (toList!10805 z1!570))))

(declare-fun lt!2518415 () List!67914)

(declare-fun lambda!414586 () Int)

(declare-fun ct2!306 () Context!12916)

(declare-fun lt!2518425 () Unit!161594)

(declare-fun lemmaConcatPreservesForall!783 (List!67914 List!67914 Int) Unit!161594)

(assert (=> b!7032154 (= lt!2518425 (lemmaConcatPreservesForall!783 lt!2518415 (exprs!6958 ct2!306) lambda!414586))))

(declare-fun lt!2518450 () Unit!161594)

(assert (=> b!7032154 (= lt!2518450 (lemmaConcatPreservesForall!783 lt!2518415 (exprs!6958 ct2!306) lambda!414586))))

(declare-fun lt!2518464 () Unit!161594)

(assert (=> b!7032154 (= lt!2518464 (lemmaConcatPreservesForall!783 lt!2518415 (exprs!6958 ct2!306) lambda!414586))))

(declare-fun lambda!414587 () Int)

(declare-fun flatMap!2409 ((Set Context!12916) Int) (Set Context!12916))

(declare-fun derivationStepZipperUp!2072 (Context!12916 C!35194) (Set Context!12916))

(assert (=> b!7032154 (= (flatMap!2409 lt!2518429 lambda!414587) (derivationStepZipperUp!2072 lt!2518443 (h!74239 s!7408)))))

(declare-fun lt!2518452 () Unit!161594)

(declare-fun lemmaFlatMapOnSingletonSet!1923 ((Set Context!12916) Context!12916 Int) Unit!161594)

(assert (=> b!7032154 (= lt!2518452 (lemmaFlatMapOnSingletonSet!1923 lt!2518429 lt!2518443 lambda!414587))))

(declare-fun lambda!414585 () Int)

(declare-fun map!15761 ((Set Context!12916) Int) (Set Context!12916))

(declare-fun ++!15504 (List!67914 List!67914) List!67914)

(assert (=> b!7032154 (= (map!15761 lt!2518429 lambda!414585) (set.insert (Context!12917 (++!15504 lt!2518415 (exprs!6958 ct2!306))) (as set.empty (Set Context!12916))))))

(declare-fun lt!2518461 () Unit!161594)

(assert (=> b!7032154 (= lt!2518461 (lemmaConcatPreservesForall!783 lt!2518415 (exprs!6958 ct2!306) lambda!414586))))

(declare-fun lt!2518430 () Unit!161594)

(declare-fun lemmaMapOnSingletonSet!373 ((Set Context!12916) Context!12916 Int) Unit!161594)

(assert (=> b!7032154 (= lt!2518430 (lemmaMapOnSingletonSet!373 lt!2518429 lt!2518443 lambda!414585))))

(assert (=> b!7032154 (= lt!2518429 (set.insert lt!2518443 (as set.empty (Set Context!12916))))))

(declare-fun b!7032155 () Bool)

(declare-fun e!4227438 () Bool)

(declare-fun e!4227433 () Bool)

(assert (=> b!7032155 (= e!4227438 e!4227433)))

(declare-fun res!2870624 () Bool)

(assert (=> b!7032155 (=> res!2870624 e!4227433)))

(declare-fun nullable!7173 (Regex!17462) Bool)

(assert (=> b!7032155 (= res!2870624 (not (nullable!7173 (h!74238 (exprs!6958 lt!2518419)))))))

(assert (=> b!7032155 (= lt!2518443 (Context!12917 lt!2518415))))

(declare-fun tail!13548 (List!67914) List!67914)

(assert (=> b!7032155 (= lt!2518415 (tail!13548 (exprs!6958 lt!2518419)))))

(declare-fun b!7032156 () Bool)

(assert (=> b!7032156 (= e!4227431 e!4227444)))

(declare-fun res!2870632 () Bool)

(assert (=> b!7032156 (=> res!2870632 e!4227444)))

(assert (=> b!7032156 (= res!2870632 (not (matchZipper!3002 lt!2518429 (_1!37338 lt!2518462))))))

(declare-datatypes ((Option!16867 0))(
  ( (None!16866) (Some!16866 (v!53150 tuple2!68070)) )
))
(declare-fun lt!2518445 () Option!16867)

(declare-fun get!23749 (Option!16867) tuple2!68070)

(assert (=> b!7032156 (= lt!2518462 (get!23749 lt!2518445))))

(declare-fun isDefined!13568 (Option!16867) Bool)

(assert (=> b!7032156 (isDefined!13568 lt!2518445)))

(declare-fun findConcatSeparationZippers!383 ((Set Context!12916) (Set Context!12916) List!67915 List!67915 List!67915) Option!16867)

(assert (=> b!7032156 (= lt!2518445 (findConcatSeparationZippers!383 lt!2518429 lt!2518422 Nil!67791 s!7408 s!7408))))

(assert (=> b!7032156 (= lt!2518422 (set.insert ct2!306 (as set.empty (Set Context!12916))))))

(declare-fun lt!2518433 () Unit!161594)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!371 ((Set Context!12916) Context!12916 List!67915) Unit!161594)

(assert (=> b!7032156 (= lt!2518433 (lemmaConcatZipperMatchesStringThenFindConcatDefined!371 lt!2518429 ct2!306 s!7408))))

(declare-fun b!7032157 () Bool)

(declare-fun e!4227436 () Bool)

(declare-fun e!4227437 () Bool)

(assert (=> b!7032157 (= e!4227436 e!4227437)))

(declare-fun res!2870615 () Bool)

(assert (=> b!7032157 (=> res!2870615 e!4227437)))

(declare-fun lt!2518448 () (Set Context!12916))

(declare-fun derivationStepZipper!2918 ((Set Context!12916) C!35194) (Set Context!12916))

(assert (=> b!7032157 (= res!2870615 (not (= (derivationStepZipper!2918 lt!2518448 (h!74239 s!7408)) lt!2518441)))))

(declare-fun lt!2518458 () Unit!161594)

(assert (=> b!7032157 (= lt!2518458 (lemmaConcatPreservesForall!783 lt!2518415 (exprs!6958 ct2!306) lambda!414586))))

(declare-fun lt!2518438 () Unit!161594)

(assert (=> b!7032157 (= lt!2518438 (lemmaConcatPreservesForall!783 lt!2518415 (exprs!6958 ct2!306) lambda!414586))))

(declare-fun lt!2518444 () Context!12916)

(assert (=> b!7032157 (= (flatMap!2409 lt!2518448 lambda!414587) (derivationStepZipperUp!2072 lt!2518444 (h!74239 s!7408)))))

(declare-fun lt!2518416 () Unit!161594)

(assert (=> b!7032157 (= lt!2518416 (lemmaFlatMapOnSingletonSet!1923 lt!2518448 lt!2518444 lambda!414587))))

(assert (=> b!7032157 (= lt!2518448 (set.insert lt!2518444 (as set.empty (Set Context!12916))))))

(declare-fun lt!2518447 () Unit!161594)

(assert (=> b!7032157 (= lt!2518447 (lemmaConcatPreservesForall!783 lt!2518415 (exprs!6958 ct2!306) lambda!414586))))

(declare-fun lt!2518418 () Unit!161594)

(assert (=> b!7032157 (= lt!2518418 (lemmaConcatPreservesForall!783 lt!2518415 (exprs!6958 ct2!306) lambda!414586))))

(declare-fun b!7032158 () Bool)

(declare-fun res!2870614 () Bool)

(assert (=> b!7032158 (=> res!2870614 e!4227444)))

(declare-fun isEmpty!39536 (List!67915) Bool)

(assert (=> b!7032158 (= res!2870614 (not (isEmpty!39536 (_1!37338 lt!2518462))))))

(declare-fun b!7032159 () Bool)

(declare-fun res!2870635 () Bool)

(assert (=> b!7032159 (=> res!2870635 e!4227438)))

(declare-fun isEmpty!39537 (List!67914) Bool)

(assert (=> b!7032159 (= res!2870635 (isEmpty!39537 (exprs!6958 lt!2518419)))))

(declare-fun b!7032160 () Bool)

(declare-fun e!4227448 () Bool)

(assert (=> b!7032160 (= e!4227448 e!4227432)))

(declare-fun res!2870638 () Bool)

(assert (=> b!7032160 (=> res!2870638 e!4227432)))

(declare-fun e!4227441 () Bool)

(assert (=> b!7032160 (= res!2870638 e!4227441)))

(declare-fun res!2870631 () Bool)

(assert (=> b!7032160 (=> (not res!2870631) (not e!4227441))))

(declare-fun lt!2518454 () Bool)

(assert (=> b!7032160 (= res!2870631 (not (= lt!2518414 lt!2518454)))))

(declare-fun lt!2518463 () (Set Context!12916))

(assert (=> b!7032160 (= lt!2518414 (matchZipper!3002 lt!2518463 (t!381680 s!7408)))))

(declare-fun lt!2518423 () Unit!161594)

(assert (=> b!7032160 (= lt!2518423 (lemmaConcatPreservesForall!783 lt!2518415 (exprs!6958 ct2!306) lambda!414586))))

(declare-fun lt!2518456 () (Set Context!12916))

(assert (=> b!7032160 (= (matchZipper!3002 lt!2518456 (t!381680 s!7408)) e!4227439)))

(declare-fun res!2870629 () Bool)

(assert (=> b!7032160 (=> res!2870629 e!4227439)))

(assert (=> b!7032160 (= res!2870629 lt!2518454)))

(declare-fun lt!2518426 () (Set Context!12916))

(assert (=> b!7032160 (= lt!2518454 (matchZipper!3002 lt!2518426 (t!381680 s!7408)))))

(declare-fun lt!2518440 () Unit!161594)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1535 ((Set Context!12916) (Set Context!12916) List!67915) Unit!161594)

(assert (=> b!7032160 (= lt!2518440 (lemmaZipperConcatMatchesSameAsBothZippers!1535 lt!2518426 lt!2518441 (t!381680 s!7408)))))

(declare-fun lt!2518455 () Unit!161594)

(assert (=> b!7032160 (= lt!2518455 (lemmaConcatPreservesForall!783 lt!2518415 (exprs!6958 ct2!306) lambda!414586))))

(declare-fun lt!2518446 () Unit!161594)

(assert (=> b!7032160 (= lt!2518446 (lemmaConcatPreservesForall!783 lt!2518415 (exprs!6958 ct2!306) lambda!414586))))

(declare-fun e!4227443 () Bool)

(assert (=> b!7032161 (= e!4227443 e!4227438)))

(declare-fun res!2870622 () Bool)

(assert (=> b!7032161 (=> res!2870622 e!4227438)))

(declare-fun lt!2518437 () (Set Context!12916))

(assert (=> b!7032161 (= res!2870622 (not (= (derivationStepZipper!2918 lt!2518437 (h!74239 s!7408)) lt!2518463)))))

(declare-fun lt!2518421 () Context!12916)

(assert (=> b!7032161 (= (flatMap!2409 lt!2518437 lambda!414587) (derivationStepZipperUp!2072 lt!2518421 (h!74239 s!7408)))))

(declare-fun lt!2518417 () Unit!161594)

(assert (=> b!7032161 (= lt!2518417 (lemmaFlatMapOnSingletonSet!1923 lt!2518437 lt!2518421 lambda!414587))))

(assert (=> b!7032161 (= lt!2518463 (derivationStepZipperUp!2072 lt!2518421 (h!74239 s!7408)))))

(declare-fun lt!2518420 () Unit!161594)

(assert (=> b!7032161 (= lt!2518420 (lemmaConcatPreservesForall!783 (exprs!6958 lt!2518419) (exprs!6958 ct2!306) lambda!414586))))

(declare-fun b!7032162 () Bool)

(declare-fun tp!1936370 () Bool)

(assert (=> b!7032162 (= e!4227440 tp!1936370)))

(declare-fun e!4227445 () Bool)

(assert (=> b!7032163 (= e!4227445 (not e!4227446))))

(declare-fun res!2870627 () Bool)

(assert (=> b!7032163 (=> res!2870627 e!4227446)))

(declare-fun lt!2518431 () (Set Context!12916))

(assert (=> b!7032163 (= res!2870627 (not (matchZipper!3002 lt!2518431 s!7408)))))

(assert (=> b!7032163 (= lt!2518431 (set.insert lt!2518435 (as set.empty (Set Context!12916))))))

(declare-fun getWitness!1467 ((Set Context!12916) Int) Context!12916)

(assert (=> b!7032163 (= lt!2518435 (getWitness!1467 lt!2518432 lambda!414584))))

(declare-fun lt!2518451 () List!67916)

(declare-fun exists!3387 (List!67916 Int) Bool)

(assert (=> b!7032163 (exists!3387 lt!2518451 lambda!414584)))

(declare-fun lt!2518453 () Unit!161594)

(declare-fun lemmaZipperMatchesExistsMatchingContext!401 (List!67916 List!67915) Unit!161594)

(assert (=> b!7032163 (= lt!2518453 (lemmaZipperMatchesExistsMatchingContext!401 lt!2518451 s!7408))))

(assert (=> b!7032163 (= lt!2518451 (toList!10805 lt!2518432))))

(declare-fun b!7032164 () Bool)

(declare-fun e!4227430 () Bool)

(assert (=> b!7032164 (= e!4227430 e!4227443)))

(declare-fun res!2870613 () Bool)

(assert (=> b!7032164 (=> res!2870613 e!4227443)))

(assert (=> b!7032164 (= res!2870613 (not (= lt!2518437 lt!2518431)))))

(assert (=> b!7032164 (= lt!2518437 (set.insert lt!2518421 (as set.empty (Set Context!12916))))))

(declare-fun lt!2518427 () Unit!161594)

(assert (=> b!7032164 (= lt!2518427 (lemmaConcatPreservesForall!783 (exprs!6958 lt!2518419) (exprs!6958 ct2!306) lambda!414586))))

(declare-fun b!7032165 () Bool)

(declare-fun e!4227435 () Bool)

(declare-fun tp!1936371 () Bool)

(assert (=> b!7032165 (= e!4227435 tp!1936371)))

(declare-fun res!2870617 () Bool)

(assert (=> start!679546 (=> (not res!2870617) (not e!4227445))))

(assert (=> start!679546 (= res!2870617 (matchZipper!3002 lt!2518432 s!7408))))

(declare-fun appendTo!583 ((Set Context!12916) Context!12916) (Set Context!12916))

(assert (=> start!679546 (= lt!2518432 (appendTo!583 z1!570 ct2!306))))

(assert (=> start!679546 e!4227445))

(declare-fun condSetEmpty!49145 () Bool)

(assert (=> start!679546 (= condSetEmpty!49145 (= z1!570 (as set.empty (Set Context!12916))))))

(assert (=> start!679546 setRes!49145))

(assert (=> start!679546 (and (inv!86515 ct2!306) e!4227435)))

(assert (=> start!679546 e!4227442))

(declare-fun b!7032166 () Bool)

(declare-fun e!4227447 () Bool)

(declare-fun nullableContext!82 (Context!12916) Bool)

(assert (=> b!7032166 (= e!4227447 (nullableContext!82 lt!2518419))))

(declare-fun b!7032167 () Bool)

(declare-fun res!2870623 () Bool)

(assert (=> b!7032167 (=> res!2870623 e!4227438)))

(assert (=> b!7032167 (= res!2870623 (not (is-Cons!67790 (exprs!6958 lt!2518419))))))

(declare-fun b!7032168 () Bool)

(assert (=> b!7032168 (= e!4227444 e!4227447)))

(declare-fun res!2870628 () Bool)

(assert (=> b!7032168 (=> res!2870628 e!4227447)))

(assert (=> b!7032168 (= res!2870628 (not (nullableContext!82 lt!2518443)))))

(declare-fun lt!2518436 () Context!12916)

(assert (=> b!7032168 (= lt!2518436 (getWitness!1467 lt!2518429 lambda!414588))))

(assert (=> b!7032169 (= e!4227446 e!4227430)))

(declare-fun res!2870626 () Bool)

(assert (=> b!7032169 (=> res!2870626 e!4227430)))

(assert (=> b!7032169 (= res!2870626 (or (not (= lt!2518421 lt!2518435)) (not (set.member lt!2518419 z1!570))))))

(assert (=> b!7032169 (= lt!2518421 (Context!12917 (++!15504 (exprs!6958 lt!2518419) (exprs!6958 ct2!306))))))

(declare-fun lt!2518460 () Unit!161594)

(assert (=> b!7032169 (= lt!2518460 (lemmaConcatPreservesForall!783 (exprs!6958 lt!2518419) (exprs!6958 ct2!306) lambda!414586))))

(declare-fun mapPost2!303 ((Set Context!12916) Int Context!12916) Context!12916)

(assert (=> b!7032169 (= lt!2518419 (mapPost2!303 z1!570 lambda!414585 lt!2518435))))

(declare-fun b!7032170 () Bool)

(assert (=> b!7032170 (= e!4227432 e!4227436)))

(declare-fun res!2870619 () Bool)

(assert (=> b!7032170 (=> res!2870619 e!4227436)))

(assert (=> b!7032170 (= res!2870619 (not (matchZipper!3002 lt!2518441 (t!381680 s!7408))))))

(declare-fun lt!2518428 () Unit!161594)

(assert (=> b!7032170 (= lt!2518428 (lemmaConcatPreservesForall!783 lt!2518415 (exprs!6958 ct2!306) lambda!414586))))

(declare-fun b!7032171 () Bool)

(assert (=> b!7032171 (= e!4227441 (not (matchZipper!3002 lt!2518441 (t!381680 s!7408))))))

(declare-fun lt!2518439 () Unit!161594)

(assert (=> b!7032171 (= lt!2518439 (lemmaConcatPreservesForall!783 lt!2518415 (exprs!6958 ct2!306) lambda!414586))))

(declare-fun b!7032172 () Bool)

(declare-fun res!2870621 () Bool)

(assert (=> b!7032172 (=> (not res!2870621) (not e!4227445))))

(assert (=> b!7032172 (= res!2870621 (is-Cons!67791 s!7408))))

(declare-fun setIsEmpty!49145 () Bool)

(assert (=> setIsEmpty!49145 setRes!49145))

(declare-fun b!7032173 () Bool)

(assert (=> b!7032173 (= e!4227433 e!4227448)))

(declare-fun res!2870616 () Bool)

(assert (=> b!7032173 (=> res!2870616 e!4227448)))

(assert (=> b!7032173 (= res!2870616 (not (= lt!2518463 lt!2518456)))))

(assert (=> b!7032173 (= lt!2518456 (set.union lt!2518426 lt!2518441))))

(assert (=> b!7032173 (= lt!2518441 (derivationStepZipperUp!2072 lt!2518444 (h!74239 s!7408)))))

(declare-fun derivationStepZipperDown!2126 (Regex!17462 Context!12916 C!35194) (Set Context!12916))

(assert (=> b!7032173 (= lt!2518426 (derivationStepZipperDown!2126 (h!74238 (exprs!6958 lt!2518419)) lt!2518444 (h!74239 s!7408)))))

(assert (=> b!7032173 (= lt!2518444 (Context!12917 (++!15504 lt!2518415 (exprs!6958 ct2!306))))))

(declare-fun lt!2518459 () Unit!161594)

(assert (=> b!7032173 (= lt!2518459 (lemmaConcatPreservesForall!783 lt!2518415 (exprs!6958 ct2!306) lambda!414586))))

(declare-fun lt!2518457 () Unit!161594)

(assert (=> b!7032173 (= lt!2518457 (lemmaConcatPreservesForall!783 lt!2518415 (exprs!6958 ct2!306) lambda!414586))))

(declare-fun b!7032174 () Bool)

(assert (=> b!7032174 (= e!4227437 e!4227434)))

(declare-fun res!2870636 () Bool)

(assert (=> b!7032174 (=> res!2870636 e!4227434)))

(assert (=> b!7032174 (= res!2870636 (not (matchZipper!3002 lt!2518448 s!7408)))))

(declare-fun lt!2518465 () Unit!161594)

(assert (=> b!7032174 (= lt!2518465 (lemmaConcatPreservesForall!783 lt!2518415 (exprs!6958 ct2!306) lambda!414586))))

(declare-fun b!7032175 () Bool)

(declare-fun res!2870634 () Bool)

(assert (=> b!7032175 (=> res!2870634 e!4227444)))

(declare-fun ++!15505 (List!67915 List!67915) List!67915)

(assert (=> b!7032175 (= res!2870634 (not (= (++!15505 (_1!37338 lt!2518462) (_2!37338 lt!2518462)) s!7408)))))

(assert (= (and start!679546 res!2870617) b!7032172))

(assert (= (and b!7032172 res!2870621) b!7032163))

(assert (= (and b!7032163 (not res!2870627)) b!7032147))

(assert (= (and b!7032147 (not res!2870618)) b!7032169))

(assert (= (and b!7032169 (not res!2870626)) b!7032164))

(assert (= (and b!7032164 (not res!2870613)) b!7032161))

(assert (= (and b!7032161 (not res!2870622)) b!7032167))

(assert (= (and b!7032167 (not res!2870623)) b!7032159))

(assert (= (and b!7032159 (not res!2870635)) b!7032155))

(assert (= (and b!7032155 (not res!2870624)) b!7032173))

(assert (= (and b!7032173 (not res!2870616)) b!7032160))

(assert (= (and b!7032160 (not res!2870629)) b!7032150))

(assert (= (and b!7032160 res!2870631) b!7032171))

(assert (= (and b!7032160 (not res!2870638)) b!7032152))

(assert (= (and b!7032152 (not res!2870633)) b!7032170))

(assert (= (and b!7032170 (not res!2870619)) b!7032157))

(assert (= (and b!7032157 (not res!2870615)) b!7032174))

(assert (= (and b!7032174 (not res!2870636)) b!7032154))

(assert (= (and b!7032154 (not res!2870620)) b!7032153))

(assert (= (and b!7032153 (not res!2870630)) b!7032156))

(assert (= (and b!7032156 (not res!2870632)) b!7032151))

(assert (= (and b!7032151 (not res!2870625)) b!7032175))

(assert (= (and b!7032175 (not res!2870634)) b!7032158))

(assert (= (and b!7032158 (not res!2870614)) b!7032149))

(assert (= (and b!7032149 (not res!2870637)) b!7032168))

(assert (= (and b!7032168 (not res!2870628)) b!7032166))

(assert (= (and start!679546 condSetEmpty!49145) setIsEmpty!49145))

(assert (= (and start!679546 (not condSetEmpty!49145)) setNonEmpty!49145))

(assert (= setNonEmpty!49145 b!7032162))

(assert (= start!679546 b!7032165))

(assert (= (and start!679546 (is-Cons!67791 s!7408)) b!7032148))

(declare-fun m!7738514 () Bool)

(assert (=> b!7032155 m!7738514))

(declare-fun m!7738516 () Bool)

(assert (=> b!7032155 m!7738516))

(declare-fun m!7738518 () Bool)

(assert (=> b!7032157 m!7738518))

(declare-fun m!7738520 () Bool)

(assert (=> b!7032157 m!7738520))

(assert (=> b!7032157 m!7738520))

(assert (=> b!7032157 m!7738520))

(declare-fun m!7738522 () Bool)

(assert (=> b!7032157 m!7738522))

(assert (=> b!7032157 m!7738520))

(declare-fun m!7738524 () Bool)

(assert (=> b!7032157 m!7738524))

(declare-fun m!7738526 () Bool)

(assert (=> b!7032157 m!7738526))

(declare-fun m!7738528 () Bool)

(assert (=> b!7032157 m!7738528))

(declare-fun m!7738530 () Bool)

(assert (=> b!7032171 m!7738530))

(assert (=> b!7032171 m!7738520))

(declare-fun m!7738532 () Bool)

(assert (=> b!7032164 m!7738532))

(declare-fun m!7738534 () Bool)

(assert (=> b!7032164 m!7738534))

(declare-fun m!7738536 () Bool)

(assert (=> b!7032153 m!7738536))

(declare-fun m!7738538 () Bool)

(assert (=> start!679546 m!7738538))

(declare-fun m!7738540 () Bool)

(assert (=> start!679546 m!7738540))

(declare-fun m!7738542 () Bool)

(assert (=> start!679546 m!7738542))

(declare-fun m!7738544 () Bool)

(assert (=> b!7032156 m!7738544))

(declare-fun m!7738546 () Bool)

(assert (=> b!7032156 m!7738546))

(declare-fun m!7738548 () Bool)

(assert (=> b!7032156 m!7738548))

(declare-fun m!7738550 () Bool)

(assert (=> b!7032156 m!7738550))

(declare-fun m!7738552 () Bool)

(assert (=> b!7032156 m!7738552))

(declare-fun m!7738554 () Bool)

(assert (=> b!7032156 m!7738554))

(declare-fun m!7738556 () Bool)

(assert (=> b!7032160 m!7738556))

(assert (=> b!7032160 m!7738520))

(assert (=> b!7032160 m!7738520))

(declare-fun m!7738558 () Bool)

(assert (=> b!7032160 m!7738558))

(declare-fun m!7738560 () Bool)

(assert (=> b!7032160 m!7738560))

(declare-fun m!7738562 () Bool)

(assert (=> b!7032160 m!7738562))

(assert (=> b!7032160 m!7738520))

(declare-fun m!7738564 () Bool)

(assert (=> b!7032169 m!7738564))

(declare-fun m!7738566 () Bool)

(assert (=> b!7032169 m!7738566))

(assert (=> b!7032169 m!7738534))

(declare-fun m!7738568 () Bool)

(assert (=> b!7032169 m!7738568))

(declare-fun m!7738570 () Bool)

(assert (=> b!7032174 m!7738570))

(assert (=> b!7032174 m!7738520))

(assert (=> b!7032170 m!7738530))

(assert (=> b!7032170 m!7738520))

(assert (=> b!7032154 m!7738520))

(declare-fun m!7738572 () Bool)

(assert (=> b!7032154 m!7738572))

(declare-fun m!7738574 () Bool)

(assert (=> b!7032154 m!7738574))

(assert (=> b!7032154 m!7738520))

(declare-fun m!7738576 () Bool)

(assert (=> b!7032154 m!7738576))

(declare-fun m!7738578 () Bool)

(assert (=> b!7032154 m!7738578))

(declare-fun m!7738580 () Bool)

(assert (=> b!7032154 m!7738580))

(declare-fun m!7738582 () Bool)

(assert (=> b!7032154 m!7738582))

(declare-fun m!7738584 () Bool)

(assert (=> b!7032154 m!7738584))

(declare-fun m!7738586 () Bool)

(assert (=> b!7032154 m!7738586))

(assert (=> b!7032154 m!7738520))

(declare-fun m!7738588 () Bool)

(assert (=> b!7032154 m!7738588))

(assert (=> b!7032154 m!7738520))

(declare-fun m!7738590 () Bool)

(assert (=> b!7032154 m!7738590))

(declare-fun m!7738592 () Bool)

(assert (=> b!7032154 m!7738592))

(declare-fun m!7738594 () Bool)

(assert (=> b!7032154 m!7738594))

(declare-fun m!7738596 () Bool)

(assert (=> b!7032154 m!7738596))

(declare-fun m!7738598 () Bool)

(assert (=> setNonEmpty!49145 m!7738598))

(declare-fun m!7738600 () Bool)

(assert (=> b!7032168 m!7738600))

(declare-fun m!7738602 () Bool)

(assert (=> b!7032168 m!7738602))

(declare-fun m!7738604 () Bool)

(assert (=> b!7032166 m!7738604))

(declare-fun m!7738606 () Bool)

(assert (=> b!7032149 m!7738606))

(declare-fun m!7738608 () Bool)

(assert (=> b!7032175 m!7738608))

(declare-fun m!7738610 () Bool)

(assert (=> b!7032158 m!7738610))

(declare-fun m!7738612 () Bool)

(assert (=> b!7032159 m!7738612))

(assert (=> b!7032173 m!7738520))

(assert (=> b!7032173 m!7738590))

(assert (=> b!7032173 m!7738520))

(declare-fun m!7738614 () Bool)

(assert (=> b!7032173 m!7738614))

(assert (=> b!7032173 m!7738524))

(assert (=> b!7032150 m!7738530))

(declare-fun m!7738616 () Bool)

(assert (=> b!7032163 m!7738616))

(declare-fun m!7738618 () Bool)

(assert (=> b!7032163 m!7738618))

(declare-fun m!7738620 () Bool)

(assert (=> b!7032163 m!7738620))

(declare-fun m!7738622 () Bool)

(assert (=> b!7032163 m!7738622))

(declare-fun m!7738624 () Bool)

(assert (=> b!7032163 m!7738624))

(declare-fun m!7738626 () Bool)

(assert (=> b!7032163 m!7738626))

(declare-fun m!7738628 () Bool)

(assert (=> b!7032151 m!7738628))

(declare-fun m!7738630 () Bool)

(assert (=> b!7032161 m!7738630))

(declare-fun m!7738632 () Bool)

(assert (=> b!7032161 m!7738632))

(declare-fun m!7738634 () Bool)

(assert (=> b!7032161 m!7738634))

(assert (=> b!7032161 m!7738534))

(declare-fun m!7738636 () Bool)

(assert (=> b!7032161 m!7738636))

(declare-fun m!7738638 () Bool)

(assert (=> b!7032147 m!7738638))

(push 1)

(assert tp_is_empty!44149)

(assert (not b!7032151))

(assert (not b!7032148))

(assert (not b!7032163))

(assert (not b!7032159))

(assert (not b!7032157))

(assert (not b!7032154))

(assert (not b!7032168))

(assert (not b!7032171))

(assert (not b!7032155))

(assert (not b!7032150))

(assert (not b!7032164))

(assert (not b!7032160))

(assert (not b!7032162))

(assert (not b!7032170))

(assert (not b!7032175))

(assert (not setNonEmpty!49145))

(assert (not start!679546))

(assert (not b!7032156))

(assert (not b!7032173))

(assert (not b!7032166))

(assert (not b!7032174))

(assert (not b!7032161))

(assert (not b!7032153))

(assert (not b!7032149))

(assert (not b!7032169))

(assert (not b!7032158))

(assert (not b!7032165))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1870551 () Bool)

(declare-fun d!2193775 () Bool)

(assert (= bs!1870551 (and d!2193775 b!7032163)))

(declare-fun lambda!414656 () Int)

(assert (=> bs!1870551 (= lambda!414656 lambda!414584)))

(declare-fun bs!1870552 () Bool)

(assert (= bs!1870552 (and d!2193775 b!7032149)))

(assert (=> bs!1870552 (not (= lambda!414656 lambda!414588))))

(assert (=> d!2193775 true))

(assert (=> d!2193775 (exists!3387 lt!2518451 lambda!414656)))

(declare-fun lt!2518628 () Unit!161594)

(declare-fun choose!53239 (List!67916 List!67915) Unit!161594)

(assert (=> d!2193775 (= lt!2518628 (choose!53239 lt!2518451 s!7408))))

(declare-fun content!13529 (List!67916) (Set Context!12916))

(assert (=> d!2193775 (matchZipper!3002 (content!13529 lt!2518451) s!7408)))

(assert (=> d!2193775 (= (lemmaZipperMatchesExistsMatchingContext!401 lt!2518451 s!7408) lt!2518628)))

(declare-fun bs!1870553 () Bool)

(assert (= bs!1870553 d!2193775))

(declare-fun m!7738766 () Bool)

(assert (=> bs!1870553 m!7738766))

(declare-fun m!7738768 () Bool)

(assert (=> bs!1870553 m!7738768))

(declare-fun m!7738770 () Bool)

(assert (=> bs!1870553 m!7738770))

(assert (=> bs!1870553 m!7738770))

(declare-fun m!7738772 () Bool)

(assert (=> bs!1870553 m!7738772))

(assert (=> b!7032163 d!2193775))

(declare-fun d!2193777 () Bool)

(declare-fun c!1307951 () Bool)

(assert (=> d!2193777 (= c!1307951 (isEmpty!39536 s!7408))))

(declare-fun e!4227508 () Bool)

(assert (=> d!2193777 (= (matchZipper!3002 lt!2518431 s!7408) e!4227508)))

(declare-fun b!7032279 () Bool)

(declare-fun nullableZipper!2578 ((Set Context!12916)) Bool)

(assert (=> b!7032279 (= e!4227508 (nullableZipper!2578 lt!2518431))))

(declare-fun b!7032280 () Bool)

(declare-fun head!14261 (List!67915) C!35194)

(declare-fun tail!13550 (List!67915) List!67915)

(assert (=> b!7032280 (= e!4227508 (matchZipper!3002 (derivationStepZipper!2918 lt!2518431 (head!14261 s!7408)) (tail!13550 s!7408)))))

(assert (= (and d!2193777 c!1307951) b!7032279))

(assert (= (and d!2193777 (not c!1307951)) b!7032280))

(declare-fun m!7738774 () Bool)

(assert (=> d!2193777 m!7738774))

(declare-fun m!7738776 () Bool)

(assert (=> b!7032279 m!7738776))

(declare-fun m!7738778 () Bool)

(assert (=> b!7032280 m!7738778))

(assert (=> b!7032280 m!7738778))

(declare-fun m!7738780 () Bool)

(assert (=> b!7032280 m!7738780))

(declare-fun m!7738782 () Bool)

(assert (=> b!7032280 m!7738782))

(assert (=> b!7032280 m!7738780))

(assert (=> b!7032280 m!7738782))

(declare-fun m!7738784 () Bool)

(assert (=> b!7032280 m!7738784))

(assert (=> b!7032163 d!2193777))

(declare-fun bs!1870554 () Bool)

(declare-fun d!2193779 () Bool)

(assert (= bs!1870554 (and d!2193779 b!7032163)))

(declare-fun lambda!414659 () Int)

(assert (=> bs!1870554 (not (= lambda!414659 lambda!414584))))

(declare-fun bs!1870555 () Bool)

(assert (= bs!1870555 (and d!2193779 b!7032149)))

(assert (=> bs!1870555 (not (= lambda!414659 lambda!414588))))

(declare-fun bs!1870556 () Bool)

(assert (= bs!1870556 (and d!2193779 d!2193775)))

(assert (=> bs!1870556 (not (= lambda!414659 lambda!414656))))

(assert (=> d!2193779 true))

(declare-fun order!28171 () Int)

(declare-fun dynLambda!27373 (Int Int) Int)

(assert (=> d!2193779 (< (dynLambda!27373 order!28171 lambda!414584) (dynLambda!27373 order!28171 lambda!414659))))

(declare-fun forall!16375 (List!67916 Int) Bool)

(assert (=> d!2193779 (= (exists!3387 lt!2518451 lambda!414584) (not (forall!16375 lt!2518451 lambda!414659)))))

(declare-fun bs!1870557 () Bool)

(assert (= bs!1870557 d!2193779))

(declare-fun m!7738786 () Bool)

(assert (=> bs!1870557 m!7738786))

(assert (=> b!7032163 d!2193779))

(declare-fun d!2193781 () Bool)

(declare-fun e!4227511 () Bool)

(assert (=> d!2193781 e!4227511))

(declare-fun res!2870720 () Bool)

(assert (=> d!2193781 (=> (not res!2870720) (not e!4227511))))

(declare-fun lt!2518631 () Context!12916)

(declare-fun dynLambda!27374 (Int Context!12916) Bool)

(assert (=> d!2193781 (= res!2870720 (dynLambda!27374 lambda!414584 lt!2518631))))

(declare-fun getWitness!1469 (List!67916 Int) Context!12916)

(assert (=> d!2193781 (= lt!2518631 (getWitness!1469 (toList!10805 lt!2518432) lambda!414584))))

(assert (=> d!2193781 (exists!3386 lt!2518432 lambda!414584)))

(assert (=> d!2193781 (= (getWitness!1467 lt!2518432 lambda!414584) lt!2518631)))

(declare-fun b!7032285 () Bool)

(assert (=> b!7032285 (= e!4227511 (set.member lt!2518631 lt!2518432))))

(assert (= (and d!2193781 res!2870720) b!7032285))

(declare-fun b_lambda!266387 () Bool)

(assert (=> (not b_lambda!266387) (not d!2193781)))

(declare-fun m!7738788 () Bool)

(assert (=> d!2193781 m!7738788))

(assert (=> d!2193781 m!7738616))

(assert (=> d!2193781 m!7738616))

(declare-fun m!7738790 () Bool)

(assert (=> d!2193781 m!7738790))

(declare-fun m!7738792 () Bool)

(assert (=> d!2193781 m!7738792))

(declare-fun m!7738794 () Bool)

(assert (=> b!7032285 m!7738794))

(assert (=> b!7032163 d!2193781))

(declare-fun d!2193783 () Bool)

(declare-fun e!4227514 () Bool)

(assert (=> d!2193783 e!4227514))

(declare-fun res!2870723 () Bool)

(assert (=> d!2193783 (=> (not res!2870723) (not e!4227514))))

(declare-fun lt!2518634 () List!67916)

(declare-fun noDuplicate!2626 (List!67916) Bool)

(assert (=> d!2193783 (= res!2870723 (noDuplicate!2626 lt!2518634))))

(declare-fun choose!53240 ((Set Context!12916)) List!67916)

(assert (=> d!2193783 (= lt!2518634 (choose!53240 lt!2518432))))

(assert (=> d!2193783 (= (toList!10805 lt!2518432) lt!2518634)))

(declare-fun b!7032288 () Bool)

(assert (=> b!7032288 (= e!4227514 (= (content!13529 lt!2518634) lt!2518432))))

(assert (= (and d!2193783 res!2870723) b!7032288))

(declare-fun m!7738796 () Bool)

(assert (=> d!2193783 m!7738796))

(declare-fun m!7738798 () Bool)

(assert (=> d!2193783 m!7738798))

(declare-fun m!7738800 () Bool)

(assert (=> b!7032288 m!7738800))

(assert (=> b!7032163 d!2193783))

(declare-fun d!2193785 () Bool)

(declare-fun forall!16376 (List!67914 Int) Bool)

(assert (=> d!2193785 (forall!16376 (++!15504 (exprs!6958 lt!2518419) (exprs!6958 ct2!306)) lambda!414586)))

(declare-fun lt!2518637 () Unit!161594)

(declare-fun choose!53241 (List!67914 List!67914 Int) Unit!161594)

(assert (=> d!2193785 (= lt!2518637 (choose!53241 (exprs!6958 lt!2518419) (exprs!6958 ct2!306) lambda!414586))))

(assert (=> d!2193785 (forall!16376 (exprs!6958 lt!2518419) lambda!414586)))

(assert (=> d!2193785 (= (lemmaConcatPreservesForall!783 (exprs!6958 lt!2518419) (exprs!6958 ct2!306) lambda!414586) lt!2518637)))

(declare-fun bs!1870558 () Bool)

(assert (= bs!1870558 d!2193785))

(assert (=> bs!1870558 m!7738566))

(assert (=> bs!1870558 m!7738566))

(declare-fun m!7738802 () Bool)

(assert (=> bs!1870558 m!7738802))

(declare-fun m!7738804 () Bool)

(assert (=> bs!1870558 m!7738804))

(declare-fun m!7738806 () Bool)

(assert (=> bs!1870558 m!7738806))

(assert (=> b!7032164 d!2193785))

(declare-fun d!2193787 () Bool)

(declare-fun dynLambda!27375 (Int Context!12916) (Set Context!12916))

(assert (=> d!2193787 (= (flatMap!2409 lt!2518437 lambda!414587) (dynLambda!27375 lambda!414587 lt!2518421))))

(declare-fun lt!2518640 () Unit!161594)

(declare-fun choose!53242 ((Set Context!12916) Context!12916 Int) Unit!161594)

(assert (=> d!2193787 (= lt!2518640 (choose!53242 lt!2518437 lt!2518421 lambda!414587))))

(assert (=> d!2193787 (= lt!2518437 (set.insert lt!2518421 (as set.empty (Set Context!12916))))))

(assert (=> d!2193787 (= (lemmaFlatMapOnSingletonSet!1923 lt!2518437 lt!2518421 lambda!414587) lt!2518640)))

(declare-fun b_lambda!266389 () Bool)

(assert (=> (not b_lambda!266389) (not d!2193787)))

(declare-fun bs!1870559 () Bool)

(assert (= bs!1870559 d!2193787))

(assert (=> bs!1870559 m!7738634))

(declare-fun m!7738808 () Bool)

(assert (=> bs!1870559 m!7738808))

(declare-fun m!7738810 () Bool)

(assert (=> bs!1870559 m!7738810))

(assert (=> bs!1870559 m!7738532))

(assert (=> b!7032161 d!2193787))

(assert (=> b!7032161 d!2193785))

(declare-fun d!2193789 () Bool)

(declare-fun choose!53243 ((Set Context!12916) Int) (Set Context!12916))

(assert (=> d!2193789 (= (flatMap!2409 lt!2518437 lambda!414587) (choose!53243 lt!2518437 lambda!414587))))

(declare-fun bs!1870560 () Bool)

(assert (= bs!1870560 d!2193789))

(declare-fun m!7738812 () Bool)

(assert (=> bs!1870560 m!7738812))

(assert (=> b!7032161 d!2193789))

(declare-fun call!638585 () (Set Context!12916))

(declare-fun e!4227522 () (Set Context!12916))

(declare-fun b!7032299 () Bool)

(assert (=> b!7032299 (= e!4227522 (set.union call!638585 (derivationStepZipperUp!2072 (Context!12917 (t!381679 (exprs!6958 lt!2518421))) (h!74239 s!7408))))))

(declare-fun b!7032300 () Bool)

(declare-fun e!4227521 () (Set Context!12916))

(assert (=> b!7032300 (= e!4227521 (as set.empty (Set Context!12916)))))

(declare-fun b!7032301 () Bool)

(assert (=> b!7032301 (= e!4227521 call!638585)))

(declare-fun b!7032302 () Bool)

(assert (=> b!7032302 (= e!4227522 e!4227521)))

(declare-fun c!1307957 () Bool)

(assert (=> b!7032302 (= c!1307957 (is-Cons!67790 (exprs!6958 lt!2518421)))))

(declare-fun b!7032303 () Bool)

(declare-fun e!4227523 () Bool)

(assert (=> b!7032303 (= e!4227523 (nullable!7173 (h!74238 (exprs!6958 lt!2518421))))))

(declare-fun bm!638580 () Bool)

(assert (=> bm!638580 (= call!638585 (derivationStepZipperDown!2126 (h!74238 (exprs!6958 lt!2518421)) (Context!12917 (t!381679 (exprs!6958 lt!2518421))) (h!74239 s!7408)))))

(declare-fun d!2193791 () Bool)

(declare-fun c!1307956 () Bool)

(assert (=> d!2193791 (= c!1307956 e!4227523)))

(declare-fun res!2870726 () Bool)

(assert (=> d!2193791 (=> (not res!2870726) (not e!4227523))))

(assert (=> d!2193791 (= res!2870726 (is-Cons!67790 (exprs!6958 lt!2518421)))))

(assert (=> d!2193791 (= (derivationStepZipperUp!2072 lt!2518421 (h!74239 s!7408)) e!4227522)))

(assert (= (and d!2193791 res!2870726) b!7032303))

(assert (= (and d!2193791 c!1307956) b!7032299))

(assert (= (and d!2193791 (not c!1307956)) b!7032302))

(assert (= (and b!7032302 c!1307957) b!7032301))

(assert (= (and b!7032302 (not c!1307957)) b!7032300))

(assert (= (or b!7032299 b!7032301) bm!638580))

(declare-fun m!7738814 () Bool)

(assert (=> b!7032299 m!7738814))

(declare-fun m!7738816 () Bool)

(assert (=> b!7032303 m!7738816))

(declare-fun m!7738818 () Bool)

(assert (=> bm!638580 m!7738818))

(assert (=> b!7032161 d!2193791))

(declare-fun bs!1870561 () Bool)

(declare-fun d!2193793 () Bool)

(assert (= bs!1870561 (and d!2193793 b!7032161)))

(declare-fun lambda!414662 () Int)

(assert (=> bs!1870561 (= lambda!414662 lambda!414587)))

(assert (=> d!2193793 true))

(assert (=> d!2193793 (= (derivationStepZipper!2918 lt!2518437 (h!74239 s!7408)) (flatMap!2409 lt!2518437 lambda!414662))))

(declare-fun bs!1870562 () Bool)

(assert (= bs!1870562 d!2193793))

(declare-fun m!7738820 () Bool)

(assert (=> bs!1870562 m!7738820))

(assert (=> b!7032161 d!2193793))

(declare-fun d!2193795 () Bool)

(assert (=> d!2193795 (= (isEmpty!39537 (exprs!6958 lt!2518419)) (is-Nil!67790 (exprs!6958 lt!2518419)))))

(assert (=> b!7032159 d!2193795))

(declare-fun d!2193797 () Bool)

(assert (=> d!2193797 (forall!16376 (++!15504 lt!2518415 (exprs!6958 ct2!306)) lambda!414586)))

(declare-fun lt!2518641 () Unit!161594)

(assert (=> d!2193797 (= lt!2518641 (choose!53241 lt!2518415 (exprs!6958 ct2!306) lambda!414586))))

(assert (=> d!2193797 (forall!16376 lt!2518415 lambda!414586)))

(assert (=> d!2193797 (= (lemmaConcatPreservesForall!783 lt!2518415 (exprs!6958 ct2!306) lambda!414586) lt!2518641)))

(declare-fun bs!1870563 () Bool)

(assert (= bs!1870563 d!2193797))

(assert (=> bs!1870563 m!7738590))

(assert (=> bs!1870563 m!7738590))

(declare-fun m!7738822 () Bool)

(assert (=> bs!1870563 m!7738822))

(declare-fun m!7738824 () Bool)

(assert (=> bs!1870563 m!7738824))

(declare-fun m!7738826 () Bool)

(assert (=> bs!1870563 m!7738826))

(assert (=> b!7032160 d!2193797))

(declare-fun d!2193799 () Bool)

(declare-fun c!1307960 () Bool)

(assert (=> d!2193799 (= c!1307960 (isEmpty!39536 (t!381680 s!7408)))))

(declare-fun e!4227524 () Bool)

(assert (=> d!2193799 (= (matchZipper!3002 lt!2518463 (t!381680 s!7408)) e!4227524)))

(declare-fun b!7032306 () Bool)

(assert (=> b!7032306 (= e!4227524 (nullableZipper!2578 lt!2518463))))

(declare-fun b!7032307 () Bool)

(assert (=> b!7032307 (= e!4227524 (matchZipper!3002 (derivationStepZipper!2918 lt!2518463 (head!14261 (t!381680 s!7408))) (tail!13550 (t!381680 s!7408))))))

(assert (= (and d!2193799 c!1307960) b!7032306))

(assert (= (and d!2193799 (not c!1307960)) b!7032307))

(declare-fun m!7738828 () Bool)

(assert (=> d!2193799 m!7738828))

(declare-fun m!7738830 () Bool)

(assert (=> b!7032306 m!7738830))

(declare-fun m!7738832 () Bool)

(assert (=> b!7032307 m!7738832))

(assert (=> b!7032307 m!7738832))

(declare-fun m!7738834 () Bool)

(assert (=> b!7032307 m!7738834))

(declare-fun m!7738836 () Bool)

(assert (=> b!7032307 m!7738836))

(assert (=> b!7032307 m!7738834))

(assert (=> b!7032307 m!7738836))

(declare-fun m!7738838 () Bool)

(assert (=> b!7032307 m!7738838))

(assert (=> b!7032160 d!2193799))

(declare-fun d!2193801 () Bool)

(declare-fun c!1307961 () Bool)

(assert (=> d!2193801 (= c!1307961 (isEmpty!39536 (t!381680 s!7408)))))

(declare-fun e!4227525 () Bool)

(assert (=> d!2193801 (= (matchZipper!3002 lt!2518456 (t!381680 s!7408)) e!4227525)))

(declare-fun b!7032308 () Bool)

(assert (=> b!7032308 (= e!4227525 (nullableZipper!2578 lt!2518456))))

(declare-fun b!7032309 () Bool)

(assert (=> b!7032309 (= e!4227525 (matchZipper!3002 (derivationStepZipper!2918 lt!2518456 (head!14261 (t!381680 s!7408))) (tail!13550 (t!381680 s!7408))))))

(assert (= (and d!2193801 c!1307961) b!7032308))

(assert (= (and d!2193801 (not c!1307961)) b!7032309))

(assert (=> d!2193801 m!7738828))

(declare-fun m!7738840 () Bool)

(assert (=> b!7032308 m!7738840))

(assert (=> b!7032309 m!7738832))

(assert (=> b!7032309 m!7738832))

(declare-fun m!7738842 () Bool)

(assert (=> b!7032309 m!7738842))

(assert (=> b!7032309 m!7738836))

(assert (=> b!7032309 m!7738842))

(assert (=> b!7032309 m!7738836))

(declare-fun m!7738844 () Bool)

(assert (=> b!7032309 m!7738844))

(assert (=> b!7032160 d!2193801))

(declare-fun d!2193803 () Bool)

(declare-fun c!1307962 () Bool)

(assert (=> d!2193803 (= c!1307962 (isEmpty!39536 (t!381680 s!7408)))))

(declare-fun e!4227526 () Bool)

(assert (=> d!2193803 (= (matchZipper!3002 lt!2518426 (t!381680 s!7408)) e!4227526)))

(declare-fun b!7032310 () Bool)

(assert (=> b!7032310 (= e!4227526 (nullableZipper!2578 lt!2518426))))

(declare-fun b!7032311 () Bool)

(assert (=> b!7032311 (= e!4227526 (matchZipper!3002 (derivationStepZipper!2918 lt!2518426 (head!14261 (t!381680 s!7408))) (tail!13550 (t!381680 s!7408))))))

(assert (= (and d!2193803 c!1307962) b!7032310))

(assert (= (and d!2193803 (not c!1307962)) b!7032311))

(assert (=> d!2193803 m!7738828))

(declare-fun m!7738846 () Bool)

(assert (=> b!7032310 m!7738846))

(assert (=> b!7032311 m!7738832))

(assert (=> b!7032311 m!7738832))

(declare-fun m!7738848 () Bool)

(assert (=> b!7032311 m!7738848))

(assert (=> b!7032311 m!7738836))

(assert (=> b!7032311 m!7738848))

(assert (=> b!7032311 m!7738836))

(declare-fun m!7738850 () Bool)

(assert (=> b!7032311 m!7738850))

(assert (=> b!7032160 d!2193803))

(declare-fun e!4227529 () Bool)

(declare-fun d!2193805 () Bool)

(assert (=> d!2193805 (= (matchZipper!3002 (set.union lt!2518426 lt!2518441) (t!381680 s!7408)) e!4227529)))

(declare-fun res!2870730 () Bool)

(assert (=> d!2193805 (=> res!2870730 e!4227529)))

(assert (=> d!2193805 (= res!2870730 (matchZipper!3002 lt!2518426 (t!381680 s!7408)))))

(declare-fun lt!2518644 () Unit!161594)

(declare-fun choose!53244 ((Set Context!12916) (Set Context!12916) List!67915) Unit!161594)

(assert (=> d!2193805 (= lt!2518644 (choose!53244 lt!2518426 lt!2518441 (t!381680 s!7408)))))

(assert (=> d!2193805 (= (lemmaZipperConcatMatchesSameAsBothZippers!1535 lt!2518426 lt!2518441 (t!381680 s!7408)) lt!2518644)))

(declare-fun b!7032314 () Bool)

(assert (=> b!7032314 (= e!4227529 (matchZipper!3002 lt!2518441 (t!381680 s!7408)))))

(assert (= (and d!2193805 (not res!2870730)) b!7032314))

(declare-fun m!7738852 () Bool)

(assert (=> d!2193805 m!7738852))

(assert (=> d!2193805 m!7738558))

(declare-fun m!7738854 () Bool)

(assert (=> d!2193805 m!7738854))

(assert (=> b!7032314 m!7738530))

(assert (=> b!7032160 d!2193805))

(declare-fun d!2193807 () Bool)

(declare-fun lt!2518647 () Bool)

(assert (=> d!2193807 (= lt!2518647 (exists!3387 (toList!10805 lt!2518429) lambda!414588))))

(declare-fun choose!53245 ((Set Context!12916) Int) Bool)

(assert (=> d!2193807 (= lt!2518647 (choose!53245 lt!2518429 lambda!414588))))

(assert (=> d!2193807 (= (exists!3386 lt!2518429 lambda!414588) lt!2518647)))

(declare-fun bs!1870564 () Bool)

(assert (= bs!1870564 d!2193807))

(declare-fun m!7738856 () Bool)

(assert (=> bs!1870564 m!7738856))

(assert (=> bs!1870564 m!7738856))

(declare-fun m!7738858 () Bool)

(assert (=> bs!1870564 m!7738858))

(declare-fun m!7738860 () Bool)

(assert (=> bs!1870564 m!7738860))

(assert (=> b!7032149 d!2193807))

(declare-fun b!7032323 () Bool)

(declare-fun e!4227534 () List!67914)

(assert (=> b!7032323 (= e!4227534 (exprs!6958 ct2!306))))

(declare-fun d!2193809 () Bool)

(declare-fun e!4227535 () Bool)

(assert (=> d!2193809 e!4227535))

(declare-fun res!2870736 () Bool)

(assert (=> d!2193809 (=> (not res!2870736) (not e!4227535))))

(declare-fun lt!2518650 () List!67914)

(declare-fun content!13530 (List!67914) (Set Regex!17462))

(assert (=> d!2193809 (= res!2870736 (= (content!13530 lt!2518650) (set.union (content!13530 (exprs!6958 lt!2518419)) (content!13530 (exprs!6958 ct2!306)))))))

(assert (=> d!2193809 (= lt!2518650 e!4227534)))

(declare-fun c!1307965 () Bool)

(assert (=> d!2193809 (= c!1307965 (is-Nil!67790 (exprs!6958 lt!2518419)))))

(assert (=> d!2193809 (= (++!15504 (exprs!6958 lt!2518419) (exprs!6958 ct2!306)) lt!2518650)))

(declare-fun b!7032326 () Bool)

(assert (=> b!7032326 (= e!4227535 (or (not (= (exprs!6958 ct2!306) Nil!67790)) (= lt!2518650 (exprs!6958 lt!2518419))))))

(declare-fun b!7032325 () Bool)

(declare-fun res!2870735 () Bool)

(assert (=> b!7032325 (=> (not res!2870735) (not e!4227535))))

(declare-fun size!41060 (List!67914) Int)

(assert (=> b!7032325 (= res!2870735 (= (size!41060 lt!2518650) (+ (size!41060 (exprs!6958 lt!2518419)) (size!41060 (exprs!6958 ct2!306)))))))

(declare-fun b!7032324 () Bool)

(assert (=> b!7032324 (= e!4227534 (Cons!67790 (h!74238 (exprs!6958 lt!2518419)) (++!15504 (t!381679 (exprs!6958 lt!2518419)) (exprs!6958 ct2!306))))))

(assert (= (and d!2193809 c!1307965) b!7032323))

(assert (= (and d!2193809 (not c!1307965)) b!7032324))

(assert (= (and d!2193809 res!2870736) b!7032325))

(assert (= (and b!7032325 res!2870735) b!7032326))

(declare-fun m!7738862 () Bool)

(assert (=> d!2193809 m!7738862))

(declare-fun m!7738864 () Bool)

(assert (=> d!2193809 m!7738864))

(declare-fun m!7738866 () Bool)

(assert (=> d!2193809 m!7738866))

(declare-fun m!7738868 () Bool)

(assert (=> b!7032325 m!7738868))

(declare-fun m!7738870 () Bool)

(assert (=> b!7032325 m!7738870))

(declare-fun m!7738872 () Bool)

(assert (=> b!7032325 m!7738872))

(declare-fun m!7738874 () Bool)

(assert (=> b!7032324 m!7738874))

(assert (=> b!7032169 d!2193809))

(assert (=> b!7032169 d!2193785))

(declare-fun d!2193811 () Bool)

(declare-fun e!4227538 () Bool)

(assert (=> d!2193811 e!4227538))

(declare-fun res!2870739 () Bool)

(assert (=> d!2193811 (=> (not res!2870739) (not e!4227538))))

(declare-fun lt!2518653 () Context!12916)

(declare-fun dynLambda!27376 (Int Context!12916) Context!12916)

(assert (=> d!2193811 (= res!2870739 (= lt!2518435 (dynLambda!27376 lambda!414585 lt!2518653)))))

(declare-fun choose!53246 ((Set Context!12916) Int Context!12916) Context!12916)

(assert (=> d!2193811 (= lt!2518653 (choose!53246 z1!570 lambda!414585 lt!2518435))))

(assert (=> d!2193811 (set.member lt!2518435 (map!15761 z1!570 lambda!414585))))

(assert (=> d!2193811 (= (mapPost2!303 z1!570 lambda!414585 lt!2518435) lt!2518653)))

(declare-fun b!7032330 () Bool)

(assert (=> b!7032330 (= e!4227538 (set.member lt!2518653 z1!570))))

(assert (= (and d!2193811 res!2870739) b!7032330))

(declare-fun b_lambda!266391 () Bool)

(assert (=> (not b_lambda!266391) (not d!2193811)))

(declare-fun m!7738876 () Bool)

(assert (=> d!2193811 m!7738876))

(declare-fun m!7738878 () Bool)

(assert (=> d!2193811 m!7738878))

(declare-fun m!7738880 () Bool)

(assert (=> d!2193811 m!7738880))

(declare-fun m!7738882 () Bool)

(assert (=> d!2193811 m!7738882))

(declare-fun m!7738884 () Bool)

(assert (=> b!7032330 m!7738884))

(assert (=> b!7032169 d!2193811))

(declare-fun bs!1870565 () Bool)

(declare-fun d!2193813 () Bool)

(assert (= bs!1870565 (and d!2193813 b!7032169)))

(declare-fun lambda!414665 () Int)

(assert (=> bs!1870565 (not (= lambda!414665 lambda!414586))))

(assert (=> d!2193813 (= (nullableContext!82 lt!2518443) (forall!16376 (exprs!6958 lt!2518443) lambda!414665))))

(declare-fun bs!1870566 () Bool)

(assert (= bs!1870566 d!2193813))

(declare-fun m!7738886 () Bool)

(assert (=> bs!1870566 m!7738886))

(assert (=> b!7032168 d!2193813))

(declare-fun d!2193815 () Bool)

(declare-fun e!4227539 () Bool)

(assert (=> d!2193815 e!4227539))

(declare-fun res!2870740 () Bool)

(assert (=> d!2193815 (=> (not res!2870740) (not e!4227539))))

(declare-fun lt!2518654 () Context!12916)

(assert (=> d!2193815 (= res!2870740 (dynLambda!27374 lambda!414588 lt!2518654))))

(assert (=> d!2193815 (= lt!2518654 (getWitness!1469 (toList!10805 lt!2518429) lambda!414588))))

(assert (=> d!2193815 (exists!3386 lt!2518429 lambda!414588)))

(assert (=> d!2193815 (= (getWitness!1467 lt!2518429 lambda!414588) lt!2518654)))

(declare-fun b!7032331 () Bool)

(assert (=> b!7032331 (= e!4227539 (set.member lt!2518654 lt!2518429))))

(assert (= (and d!2193815 res!2870740) b!7032331))

(declare-fun b_lambda!266393 () Bool)

(assert (=> (not b_lambda!266393) (not d!2193815)))

(declare-fun m!7738888 () Bool)

(assert (=> d!2193815 m!7738888))

(assert (=> d!2193815 m!7738856))

(assert (=> d!2193815 m!7738856))

(declare-fun m!7738890 () Bool)

(assert (=> d!2193815 m!7738890))

(assert (=> d!2193815 m!7738606))

(declare-fun m!7738892 () Bool)

(assert (=> b!7032331 m!7738892))

(assert (=> b!7032168 d!2193815))

(declare-fun bs!1870567 () Bool)

(declare-fun d!2193817 () Bool)

(assert (= bs!1870567 (and d!2193817 b!7032169)))

(declare-fun lambda!414666 () Int)

(assert (=> bs!1870567 (not (= lambda!414666 lambda!414586))))

(declare-fun bs!1870568 () Bool)

(assert (= bs!1870568 (and d!2193817 d!2193813)))

(assert (=> bs!1870568 (= lambda!414666 lambda!414665)))

(assert (=> d!2193817 (= (nullableContext!82 lt!2518419) (forall!16376 (exprs!6958 lt!2518419) lambda!414666))))

(declare-fun bs!1870569 () Bool)

(assert (= bs!1870569 d!2193817))

(declare-fun m!7738894 () Bool)

(assert (=> bs!1870569 m!7738894))

(assert (=> b!7032166 d!2193817))

(declare-fun d!2193819 () Bool)

(declare-fun c!1307967 () Bool)

(assert (=> d!2193819 (= c!1307967 (isEmpty!39536 s!7408))))

(declare-fun e!4227540 () Bool)

(assert (=> d!2193819 (= (matchZipper!3002 lt!2518432 s!7408) e!4227540)))

(declare-fun b!7032332 () Bool)

(assert (=> b!7032332 (= e!4227540 (nullableZipper!2578 lt!2518432))))

(declare-fun b!7032333 () Bool)

(assert (=> b!7032333 (= e!4227540 (matchZipper!3002 (derivationStepZipper!2918 lt!2518432 (head!14261 s!7408)) (tail!13550 s!7408)))))

(assert (= (and d!2193819 c!1307967) b!7032332))

(assert (= (and d!2193819 (not c!1307967)) b!7032333))

(assert (=> d!2193819 m!7738774))

(declare-fun m!7738896 () Bool)

(assert (=> b!7032332 m!7738896))

(assert (=> b!7032333 m!7738778))

(assert (=> b!7032333 m!7738778))

(declare-fun m!7738898 () Bool)

(assert (=> b!7032333 m!7738898))

(assert (=> b!7032333 m!7738782))

(assert (=> b!7032333 m!7738898))

(assert (=> b!7032333 m!7738782))

(declare-fun m!7738900 () Bool)

(assert (=> b!7032333 m!7738900))

(assert (=> start!679546 d!2193819))

(declare-fun bs!1870570 () Bool)

(declare-fun d!2193821 () Bool)

(assert (= bs!1870570 (and d!2193821 b!7032169)))

(declare-fun lambda!414671 () Int)

(assert (=> bs!1870570 (= lambda!414671 lambda!414585)))

(assert (=> d!2193821 true))

(assert (=> d!2193821 (= (appendTo!583 z1!570 ct2!306) (map!15761 z1!570 lambda!414671))))

(declare-fun bs!1870571 () Bool)

(assert (= bs!1870571 d!2193821))

(declare-fun m!7738902 () Bool)

(assert (=> bs!1870571 m!7738902))

(assert (=> start!679546 d!2193821))

(declare-fun bs!1870572 () Bool)

(declare-fun d!2193823 () Bool)

(assert (= bs!1870572 (and d!2193823 b!7032169)))

(declare-fun lambda!414674 () Int)

(assert (=> bs!1870572 (= lambda!414674 lambda!414586)))

(declare-fun bs!1870573 () Bool)

(assert (= bs!1870573 (and d!2193823 d!2193813)))

(assert (=> bs!1870573 (not (= lambda!414674 lambda!414665))))

(declare-fun bs!1870574 () Bool)

(assert (= bs!1870574 (and d!2193823 d!2193817)))

(assert (=> bs!1870574 (not (= lambda!414674 lambda!414666))))

(assert (=> d!2193823 (= (inv!86515 ct2!306) (forall!16376 (exprs!6958 ct2!306) lambda!414674))))

(declare-fun bs!1870575 () Bool)

(assert (= bs!1870575 d!2193823))

(declare-fun m!7738904 () Bool)

(assert (=> bs!1870575 m!7738904))

(assert (=> start!679546 d!2193823))

(declare-fun b!7032356 () Bool)

(declare-fun e!4227558 () (Set Context!12916))

(declare-fun call!638599 () (Set Context!12916))

(declare-fun call!638603 () (Set Context!12916))

(assert (=> b!7032356 (= e!4227558 (set.union call!638599 call!638603))))

(declare-fun b!7032357 () Bool)

(declare-fun e!4227556 () (Set Context!12916))

(declare-fun call!638601 () (Set Context!12916))

(assert (=> b!7032357 (= e!4227556 call!638601)))

(declare-fun b!7032358 () Bool)

(declare-fun e!4227557 () (Set Context!12916))

(assert (=> b!7032358 (= e!4227557 (as set.empty (Set Context!12916)))))

(declare-fun bm!638593 () Bool)

(declare-fun call!638598 () (Set Context!12916))

(assert (=> bm!638593 (= call!638603 call!638598)))

(declare-fun bm!638594 () Bool)

(declare-fun call!638602 () List!67914)

(declare-fun call!638600 () List!67914)

(assert (=> bm!638594 (= call!638602 call!638600)))

(declare-fun d!2193825 () Bool)

(declare-fun c!1307979 () Bool)

(assert (=> d!2193825 (= c!1307979 (and (is-ElementMatch!17462 (h!74238 (exprs!6958 lt!2518419))) (= (c!1307927 (h!74238 (exprs!6958 lt!2518419))) (h!74239 s!7408))))))

(declare-fun e!4227553 () (Set Context!12916))

(assert (=> d!2193825 (= (derivationStepZipperDown!2126 (h!74238 (exprs!6958 lt!2518419)) lt!2518444 (h!74239 s!7408)) e!4227553)))

(declare-fun b!7032359 () Bool)

(assert (=> b!7032359 (= e!4227557 call!638601)))

(declare-fun b!7032360 () Bool)

(declare-fun c!1307981 () Bool)

(assert (=> b!7032360 (= c!1307981 (is-Star!17462 (h!74238 (exprs!6958 lt!2518419))))))

(assert (=> b!7032360 (= e!4227556 e!4227557)))

(declare-fun c!1307982 () Bool)

(declare-fun c!1307983 () Bool)

(declare-fun bm!638595 () Bool)

(declare-fun c!1307980 () Bool)

(assert (=> bm!638595 (= call!638598 (derivationStepZipperDown!2126 (ite c!1307983 (regOne!35437 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307982 (regTwo!35436 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307980 (regOne!35436 (h!74238 (exprs!6958 lt!2518419))) (reg!17791 (h!74238 (exprs!6958 lt!2518419)))))) (ite (or c!1307983 c!1307982) lt!2518444 (Context!12917 call!638602)) (h!74239 s!7408)))))

(declare-fun b!7032361 () Bool)

(assert (=> b!7032361 (= e!4227553 (set.insert lt!2518444 (as set.empty (Set Context!12916))))))

(declare-fun bm!638596 () Bool)

(assert (=> bm!638596 (= call!638601 call!638603)))

(declare-fun b!7032362 () Bool)

(assert (=> b!7032362 (= e!4227558 e!4227556)))

(assert (=> b!7032362 (= c!1307980 (is-Concat!26307 (h!74238 (exprs!6958 lt!2518419))))))

(declare-fun bm!638597 () Bool)

(declare-fun $colon$colon!2572 (List!67914 Regex!17462) List!67914)

(assert (=> bm!638597 (= call!638600 ($colon$colon!2572 (exprs!6958 lt!2518444) (ite (or c!1307982 c!1307980) (regTwo!35436 (h!74238 (exprs!6958 lt!2518419))) (h!74238 (exprs!6958 lt!2518419)))))))

(declare-fun b!7032363 () Bool)

(declare-fun e!4227555 () (Set Context!12916))

(assert (=> b!7032363 (= e!4227555 (set.union call!638598 call!638599))))

(declare-fun b!7032364 () Bool)

(declare-fun e!4227554 () Bool)

(assert (=> b!7032364 (= c!1307982 e!4227554)))

(declare-fun res!2870743 () Bool)

(assert (=> b!7032364 (=> (not res!2870743) (not e!4227554))))

(assert (=> b!7032364 (= res!2870743 (is-Concat!26307 (h!74238 (exprs!6958 lt!2518419))))))

(assert (=> b!7032364 (= e!4227555 e!4227558)))

(declare-fun b!7032365 () Bool)

(assert (=> b!7032365 (= e!4227554 (nullable!7173 (regOne!35436 (h!74238 (exprs!6958 lt!2518419)))))))

(declare-fun bm!638598 () Bool)

(assert (=> bm!638598 (= call!638599 (derivationStepZipperDown!2126 (ite c!1307983 (regTwo!35437 (h!74238 (exprs!6958 lt!2518419))) (regOne!35436 (h!74238 (exprs!6958 lt!2518419)))) (ite c!1307983 lt!2518444 (Context!12917 call!638600)) (h!74239 s!7408)))))

(declare-fun b!7032366 () Bool)

(assert (=> b!7032366 (= e!4227553 e!4227555)))

(assert (=> b!7032366 (= c!1307983 (is-Union!17462 (h!74238 (exprs!6958 lt!2518419))))))

(assert (= (and d!2193825 c!1307979) b!7032361))

(assert (= (and d!2193825 (not c!1307979)) b!7032366))

(assert (= (and b!7032366 c!1307983) b!7032363))

(assert (= (and b!7032366 (not c!1307983)) b!7032364))

(assert (= (and b!7032364 res!2870743) b!7032365))

(assert (= (and b!7032364 c!1307982) b!7032356))

(assert (= (and b!7032364 (not c!1307982)) b!7032362))

(assert (= (and b!7032362 c!1307980) b!7032357))

(assert (= (and b!7032362 (not c!1307980)) b!7032360))

(assert (= (and b!7032360 c!1307981) b!7032359))

(assert (= (and b!7032360 (not c!1307981)) b!7032358))

(assert (= (or b!7032357 b!7032359) bm!638594))

(assert (= (or b!7032357 b!7032359) bm!638596))

(assert (= (or b!7032356 bm!638596) bm!638593))

(assert (= (or b!7032356 bm!638594) bm!638597))

(assert (= (or b!7032363 bm!638593) bm!638595))

(assert (= (or b!7032363 b!7032356) bm!638598))

(declare-fun m!7738906 () Bool)

(assert (=> b!7032365 m!7738906))

(declare-fun m!7738908 () Bool)

(assert (=> bm!638598 m!7738908))

(declare-fun m!7738910 () Bool)

(assert (=> bm!638597 m!7738910))

(declare-fun m!7738912 () Bool)

(assert (=> bm!638595 m!7738912))

(assert (=> b!7032361 m!7738528))

(assert (=> b!7032173 d!2193825))

(declare-fun b!7032367 () Bool)

(declare-fun call!638604 () (Set Context!12916))

(declare-fun e!4227560 () (Set Context!12916))

(assert (=> b!7032367 (= e!4227560 (set.union call!638604 (derivationStepZipperUp!2072 (Context!12917 (t!381679 (exprs!6958 lt!2518444))) (h!74239 s!7408))))))

(declare-fun b!7032368 () Bool)

(declare-fun e!4227559 () (Set Context!12916))

(assert (=> b!7032368 (= e!4227559 (as set.empty (Set Context!12916)))))

(declare-fun b!7032369 () Bool)

(assert (=> b!7032369 (= e!4227559 call!638604)))

(declare-fun b!7032370 () Bool)

(assert (=> b!7032370 (= e!4227560 e!4227559)))

(declare-fun c!1307985 () Bool)

(assert (=> b!7032370 (= c!1307985 (is-Cons!67790 (exprs!6958 lt!2518444)))))

(declare-fun b!7032371 () Bool)

(declare-fun e!4227561 () Bool)

(assert (=> b!7032371 (= e!4227561 (nullable!7173 (h!74238 (exprs!6958 lt!2518444))))))

(declare-fun bm!638599 () Bool)

(assert (=> bm!638599 (= call!638604 (derivationStepZipperDown!2126 (h!74238 (exprs!6958 lt!2518444)) (Context!12917 (t!381679 (exprs!6958 lt!2518444))) (h!74239 s!7408)))))

(declare-fun d!2193827 () Bool)

(declare-fun c!1307984 () Bool)

(assert (=> d!2193827 (= c!1307984 e!4227561)))

(declare-fun res!2870744 () Bool)

(assert (=> d!2193827 (=> (not res!2870744) (not e!4227561))))

(assert (=> d!2193827 (= res!2870744 (is-Cons!67790 (exprs!6958 lt!2518444)))))

(assert (=> d!2193827 (= (derivationStepZipperUp!2072 lt!2518444 (h!74239 s!7408)) e!4227560)))

(assert (= (and d!2193827 res!2870744) b!7032371))

(assert (= (and d!2193827 c!1307984) b!7032367))

(assert (= (and d!2193827 (not c!1307984)) b!7032370))

(assert (= (and b!7032370 c!1307985) b!7032369))

(assert (= (and b!7032370 (not c!1307985)) b!7032368))

(assert (= (or b!7032367 b!7032369) bm!638599))

(declare-fun m!7738914 () Bool)

(assert (=> b!7032367 m!7738914))

(declare-fun m!7738916 () Bool)

(assert (=> b!7032371 m!7738916))

(declare-fun m!7738918 () Bool)

(assert (=> bm!638599 m!7738918))

(assert (=> b!7032173 d!2193827))

(declare-fun b!7032372 () Bool)

(declare-fun e!4227562 () List!67914)

(assert (=> b!7032372 (= e!4227562 (exprs!6958 ct2!306))))

(declare-fun d!2193829 () Bool)

(declare-fun e!4227563 () Bool)

(assert (=> d!2193829 e!4227563))

(declare-fun res!2870746 () Bool)

(assert (=> d!2193829 (=> (not res!2870746) (not e!4227563))))

(declare-fun lt!2518657 () List!67914)

(assert (=> d!2193829 (= res!2870746 (= (content!13530 lt!2518657) (set.union (content!13530 lt!2518415) (content!13530 (exprs!6958 ct2!306)))))))

(assert (=> d!2193829 (= lt!2518657 e!4227562)))

(declare-fun c!1307986 () Bool)

(assert (=> d!2193829 (= c!1307986 (is-Nil!67790 lt!2518415))))

(assert (=> d!2193829 (= (++!15504 lt!2518415 (exprs!6958 ct2!306)) lt!2518657)))

(declare-fun b!7032375 () Bool)

(assert (=> b!7032375 (= e!4227563 (or (not (= (exprs!6958 ct2!306) Nil!67790)) (= lt!2518657 lt!2518415)))))

(declare-fun b!7032374 () Bool)

(declare-fun res!2870745 () Bool)

(assert (=> b!7032374 (=> (not res!2870745) (not e!4227563))))

(assert (=> b!7032374 (= res!2870745 (= (size!41060 lt!2518657) (+ (size!41060 lt!2518415) (size!41060 (exprs!6958 ct2!306)))))))

(declare-fun b!7032373 () Bool)

(assert (=> b!7032373 (= e!4227562 (Cons!67790 (h!74238 lt!2518415) (++!15504 (t!381679 lt!2518415) (exprs!6958 ct2!306))))))

(assert (= (and d!2193829 c!1307986) b!7032372))

(assert (= (and d!2193829 (not c!1307986)) b!7032373))

(assert (= (and d!2193829 res!2870746) b!7032374))

(assert (= (and b!7032374 res!2870745) b!7032375))

(declare-fun m!7738920 () Bool)

(assert (=> d!2193829 m!7738920))

(declare-fun m!7738922 () Bool)

(assert (=> d!2193829 m!7738922))

(assert (=> d!2193829 m!7738866))

(declare-fun m!7738924 () Bool)

(assert (=> b!7032374 m!7738924))

(declare-fun m!7738926 () Bool)

(assert (=> b!7032374 m!7738926))

(assert (=> b!7032374 m!7738872))

(declare-fun m!7738928 () Bool)

(assert (=> b!7032373 m!7738928))

(assert (=> b!7032173 d!2193829))

(assert (=> b!7032173 d!2193797))

(declare-fun d!2193831 () Bool)

(declare-fun lt!2518660 () Int)

(assert (=> d!2193831 (>= lt!2518660 0)))

(declare-fun e!4227566 () Int)

(assert (=> d!2193831 (= lt!2518660 e!4227566)))

(declare-fun c!1307989 () Bool)

(assert (=> d!2193831 (= c!1307989 (is-Cons!67792 (Cons!67792 lt!2518443 Nil!67792)))))

(assert (=> d!2193831 (= (zipperDepthTotal!525 (Cons!67792 lt!2518443 Nil!67792)) lt!2518660)))

(declare-fun b!7032380 () Bool)

(assert (=> b!7032380 (= e!4227566 (+ (contextDepthTotal!497 (h!74240 (Cons!67792 lt!2518443 Nil!67792))) (zipperDepthTotal!525 (t!381681 (Cons!67792 lt!2518443 Nil!67792)))))))

(declare-fun b!7032381 () Bool)

(assert (=> b!7032381 (= e!4227566 0)))

(assert (= (and d!2193831 c!1307989) b!7032380))

(assert (= (and d!2193831 (not c!1307989)) b!7032381))

(declare-fun m!7738930 () Bool)

(assert (=> b!7032380 m!7738930))

(declare-fun m!7738932 () Bool)

(assert (=> b!7032380 m!7738932))

(assert (=> b!7032153 d!2193831))

(declare-fun bs!1870576 () Bool)

(declare-fun d!2193833 () Bool)

(assert (= bs!1870576 (and d!2193833 b!7032169)))

(declare-fun lambda!414675 () Int)

(assert (=> bs!1870576 (= lambda!414675 lambda!414586)))

(declare-fun bs!1870577 () Bool)

(assert (= bs!1870577 (and d!2193833 d!2193813)))

(assert (=> bs!1870577 (not (= lambda!414675 lambda!414665))))

(declare-fun bs!1870578 () Bool)

(assert (= bs!1870578 (and d!2193833 d!2193817)))

(assert (=> bs!1870578 (not (= lambda!414675 lambda!414666))))

(declare-fun bs!1870579 () Bool)

(assert (= bs!1870579 (and d!2193833 d!2193823)))

(assert (=> bs!1870579 (= lambda!414675 lambda!414674)))

(assert (=> d!2193833 (= (inv!86515 setElem!49145) (forall!16376 (exprs!6958 setElem!49145) lambda!414675))))

(declare-fun bs!1870580 () Bool)

(assert (= bs!1870580 d!2193833))

(declare-fun m!7738934 () Bool)

(assert (=> bs!1870580 m!7738934))

(assert (=> setNonEmpty!49145 d!2193833))

(declare-fun d!2193835 () Bool)

(declare-fun c!1307990 () Bool)

(assert (=> d!2193835 (= c!1307990 (isEmpty!39536 (_2!37338 lt!2518462)))))

(declare-fun e!4227567 () Bool)

(assert (=> d!2193835 (= (matchZipper!3002 lt!2518422 (_2!37338 lt!2518462)) e!4227567)))

(declare-fun b!7032382 () Bool)

(assert (=> b!7032382 (= e!4227567 (nullableZipper!2578 lt!2518422))))

(declare-fun b!7032383 () Bool)

(assert (=> b!7032383 (= e!4227567 (matchZipper!3002 (derivationStepZipper!2918 lt!2518422 (head!14261 (_2!37338 lt!2518462))) (tail!13550 (_2!37338 lt!2518462))))))

(assert (= (and d!2193835 c!1307990) b!7032382))

(assert (= (and d!2193835 (not c!1307990)) b!7032383))

(declare-fun m!7738936 () Bool)

(assert (=> d!2193835 m!7738936))

(declare-fun m!7738938 () Bool)

(assert (=> b!7032382 m!7738938))

(declare-fun m!7738940 () Bool)

(assert (=> b!7032383 m!7738940))

(assert (=> b!7032383 m!7738940))

(declare-fun m!7738942 () Bool)

(assert (=> b!7032383 m!7738942))

(declare-fun m!7738944 () Bool)

(assert (=> b!7032383 m!7738944))

(assert (=> b!7032383 m!7738942))

(assert (=> b!7032383 m!7738944))

(declare-fun m!7738946 () Bool)

(assert (=> b!7032383 m!7738946))

(assert (=> b!7032151 d!2193835))

(declare-fun d!2193837 () Bool)

(declare-fun c!1307991 () Bool)

(assert (=> d!2193837 (= c!1307991 (isEmpty!39536 (t!381680 s!7408)))))

(declare-fun e!4227568 () Bool)

(assert (=> d!2193837 (= (matchZipper!3002 lt!2518441 (t!381680 s!7408)) e!4227568)))

(declare-fun b!7032384 () Bool)

(assert (=> b!7032384 (= e!4227568 (nullableZipper!2578 lt!2518441))))

(declare-fun b!7032385 () Bool)

(assert (=> b!7032385 (= e!4227568 (matchZipper!3002 (derivationStepZipper!2918 lt!2518441 (head!14261 (t!381680 s!7408))) (tail!13550 (t!381680 s!7408))))))

(assert (= (and d!2193837 c!1307991) b!7032384))

(assert (= (and d!2193837 (not c!1307991)) b!7032385))

(assert (=> d!2193837 m!7738828))

(declare-fun m!7738948 () Bool)

(assert (=> b!7032384 m!7738948))

(assert (=> b!7032385 m!7738832))

(assert (=> b!7032385 m!7738832))

(declare-fun m!7738950 () Bool)

(assert (=> b!7032385 m!7738950))

(assert (=> b!7032385 m!7738836))

(assert (=> b!7032385 m!7738950))

(assert (=> b!7032385 m!7738836))

(declare-fun m!7738952 () Bool)

(assert (=> b!7032385 m!7738952))

(assert (=> b!7032171 d!2193837))

(assert (=> b!7032171 d!2193797))

(assert (=> b!7032170 d!2193837))

(assert (=> b!7032170 d!2193797))

(assert (=> b!7032150 d!2193837))

(declare-fun d!2193839 () Bool)

(assert (=> d!2193839 (= (isEmpty!39536 (_1!37338 lt!2518462)) (is-Nil!67791 (_1!37338 lt!2518462)))))

(assert (=> b!7032158 d!2193839))

(declare-fun d!2193841 () Bool)

(assert (=> d!2193841 (= (flatMap!2409 lt!2518448 lambda!414587) (choose!53243 lt!2518448 lambda!414587))))

(declare-fun bs!1870581 () Bool)

(assert (= bs!1870581 d!2193841))

(declare-fun m!7738954 () Bool)

(assert (=> bs!1870581 m!7738954))

(assert (=> b!7032157 d!2193841))

(declare-fun d!2193843 () Bool)

(assert (=> d!2193843 (= (flatMap!2409 lt!2518448 lambda!414587) (dynLambda!27375 lambda!414587 lt!2518444))))

(declare-fun lt!2518661 () Unit!161594)

(assert (=> d!2193843 (= lt!2518661 (choose!53242 lt!2518448 lt!2518444 lambda!414587))))

(assert (=> d!2193843 (= lt!2518448 (set.insert lt!2518444 (as set.empty (Set Context!12916))))))

(assert (=> d!2193843 (= (lemmaFlatMapOnSingletonSet!1923 lt!2518448 lt!2518444 lambda!414587) lt!2518661)))

(declare-fun b_lambda!266395 () Bool)

(assert (=> (not b_lambda!266395) (not d!2193843)))

(declare-fun bs!1870582 () Bool)

(assert (= bs!1870582 d!2193843))

(assert (=> bs!1870582 m!7738526))

(declare-fun m!7738956 () Bool)

(assert (=> bs!1870582 m!7738956))

(declare-fun m!7738958 () Bool)

(assert (=> bs!1870582 m!7738958))

(assert (=> bs!1870582 m!7738528))

(assert (=> b!7032157 d!2193843))

(assert (=> b!7032157 d!2193827))

(declare-fun bs!1870583 () Bool)

(declare-fun d!2193845 () Bool)

(assert (= bs!1870583 (and d!2193845 b!7032161)))

(declare-fun lambda!414676 () Int)

(assert (=> bs!1870583 (= lambda!414676 lambda!414587)))

(declare-fun bs!1870584 () Bool)

(assert (= bs!1870584 (and d!2193845 d!2193793)))

(assert (=> bs!1870584 (= lambda!414676 lambda!414662)))

(assert (=> d!2193845 true))

(assert (=> d!2193845 (= (derivationStepZipper!2918 lt!2518448 (h!74239 s!7408)) (flatMap!2409 lt!2518448 lambda!414676))))

(declare-fun bs!1870585 () Bool)

(assert (= bs!1870585 d!2193845))

(declare-fun m!7738960 () Bool)

(assert (=> bs!1870585 m!7738960))

(assert (=> b!7032157 d!2193845))

(assert (=> b!7032157 d!2193797))

(declare-fun d!2193847 () Bool)

(declare-fun nullableFct!2726 (Regex!17462) Bool)

(assert (=> d!2193847 (= (nullable!7173 (h!74238 (exprs!6958 lt!2518419))) (nullableFct!2726 (h!74238 (exprs!6958 lt!2518419))))))

(declare-fun bs!1870586 () Bool)

(assert (= bs!1870586 d!2193847))

(declare-fun m!7738962 () Bool)

(assert (=> bs!1870586 m!7738962))

(assert (=> b!7032155 d!2193847))

(declare-fun d!2193849 () Bool)

(assert (=> d!2193849 (= (tail!13548 (exprs!6958 lt!2518419)) (t!381679 (exprs!6958 lt!2518419)))))

(assert (=> b!7032155 d!2193849))

(declare-fun d!2193851 () Bool)

(assert (=> d!2193851 (= (get!23749 lt!2518445) (v!53150 lt!2518445))))

(assert (=> b!7032156 d!2193851))

(declare-fun d!2193853 () Bool)

(declare-fun c!1307992 () Bool)

(assert (=> d!2193853 (= c!1307992 (isEmpty!39536 (_1!37338 lt!2518462)))))

(declare-fun e!4227569 () Bool)

(assert (=> d!2193853 (= (matchZipper!3002 lt!2518429 (_1!37338 lt!2518462)) e!4227569)))

(declare-fun b!7032386 () Bool)

(assert (=> b!7032386 (= e!4227569 (nullableZipper!2578 lt!2518429))))

(declare-fun b!7032387 () Bool)

(assert (=> b!7032387 (= e!4227569 (matchZipper!3002 (derivationStepZipper!2918 lt!2518429 (head!14261 (_1!37338 lt!2518462))) (tail!13550 (_1!37338 lt!2518462))))))

(assert (= (and d!2193853 c!1307992) b!7032386))

(assert (= (and d!2193853 (not c!1307992)) b!7032387))

(assert (=> d!2193853 m!7738610))

(declare-fun m!7738964 () Bool)

(assert (=> b!7032386 m!7738964))

(declare-fun m!7738966 () Bool)

(assert (=> b!7032387 m!7738966))

(assert (=> b!7032387 m!7738966))

(declare-fun m!7738968 () Bool)

(assert (=> b!7032387 m!7738968))

(declare-fun m!7738970 () Bool)

(assert (=> b!7032387 m!7738970))

(assert (=> b!7032387 m!7738968))

(assert (=> b!7032387 m!7738970))

(declare-fun m!7738972 () Bool)

(assert (=> b!7032387 m!7738972))

(assert (=> b!7032156 d!2193853))

(declare-fun d!2193855 () Bool)

(assert (=> d!2193855 (isDefined!13568 (findConcatSeparationZippers!383 lt!2518429 (set.insert ct2!306 (as set.empty (Set Context!12916))) Nil!67791 s!7408 s!7408))))

(declare-fun lt!2518664 () Unit!161594)

(declare-fun choose!53247 ((Set Context!12916) Context!12916 List!67915) Unit!161594)

(assert (=> d!2193855 (= lt!2518664 (choose!53247 lt!2518429 ct2!306 s!7408))))

(assert (=> d!2193855 (matchZipper!3002 (appendTo!583 lt!2518429 ct2!306) s!7408)))

(assert (=> d!2193855 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!371 lt!2518429 ct2!306 s!7408) lt!2518664)))

(declare-fun bs!1870587 () Bool)

(assert (= bs!1870587 d!2193855))

(declare-fun m!7738974 () Bool)

(assert (=> bs!1870587 m!7738974))

(assert (=> bs!1870587 m!7738546))

(declare-fun m!7738976 () Bool)

(assert (=> bs!1870587 m!7738976))

(assert (=> bs!1870587 m!7738976))

(declare-fun m!7738978 () Bool)

(assert (=> bs!1870587 m!7738978))

(assert (=> bs!1870587 m!7738546))

(declare-fun m!7738980 () Bool)

(assert (=> bs!1870587 m!7738980))

(assert (=> bs!1870587 m!7738980))

(declare-fun m!7738982 () Bool)

(assert (=> bs!1870587 m!7738982))

(assert (=> b!7032156 d!2193855))

(declare-fun d!2193857 () Bool)

(declare-fun isEmpty!39540 (Option!16867) Bool)

(assert (=> d!2193857 (= (isDefined!13568 lt!2518445) (not (isEmpty!39540 lt!2518445)))))

(declare-fun bs!1870588 () Bool)

(assert (= bs!1870588 d!2193857))

(declare-fun m!7738984 () Bool)

(assert (=> bs!1870588 m!7738984))

(assert (=> b!7032156 d!2193857))

(declare-fun b!7032406 () Bool)

(declare-fun e!4227581 () Option!16867)

(assert (=> b!7032406 (= e!4227581 None!16866)))

(declare-fun b!7032408 () Bool)

(declare-fun lt!2518671 () Unit!161594)

(declare-fun lt!2518672 () Unit!161594)

(assert (=> b!7032408 (= lt!2518671 lt!2518672)))

(assert (=> b!7032408 (= (++!15505 (++!15505 Nil!67791 (Cons!67791 (h!74239 s!7408) Nil!67791)) (t!381680 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2922 (List!67915 C!35194 List!67915 List!67915) Unit!161594)

(assert (=> b!7032408 (= lt!2518672 (lemmaMoveElementToOtherListKeepsConcatEq!2922 Nil!67791 (h!74239 s!7408) (t!381680 s!7408) s!7408))))

(assert (=> b!7032408 (= e!4227581 (findConcatSeparationZippers!383 lt!2518429 lt!2518422 (++!15505 Nil!67791 (Cons!67791 (h!74239 s!7408) Nil!67791)) (t!381680 s!7408) s!7408))))

(declare-fun b!7032409 () Bool)

(declare-fun e!4227584 () Option!16867)

(assert (=> b!7032409 (= e!4227584 e!4227581)))

(declare-fun c!1307997 () Bool)

(assert (=> b!7032409 (= c!1307997 (is-Nil!67791 s!7408))))

(declare-fun b!7032410 () Bool)

(declare-fun e!4227583 () Bool)

(declare-fun lt!2518673 () Option!16867)

(assert (=> b!7032410 (= e!4227583 (not (isDefined!13568 lt!2518673)))))

(declare-fun b!7032411 () Bool)

(declare-fun res!2870760 () Bool)

(declare-fun e!4227582 () Bool)

(assert (=> b!7032411 (=> (not res!2870760) (not e!4227582))))

(assert (=> b!7032411 (= res!2870760 (matchZipper!3002 lt!2518429 (_1!37338 (get!23749 lt!2518673))))))

(declare-fun b!7032412 () Bool)

(assert (=> b!7032412 (= e!4227584 (Some!16866 (tuple2!68071 Nil!67791 s!7408)))))

(declare-fun b!7032413 () Bool)

(declare-fun res!2870759 () Bool)

(assert (=> b!7032413 (=> (not res!2870759) (not e!4227582))))

(assert (=> b!7032413 (= res!2870759 (matchZipper!3002 lt!2518422 (_2!37338 (get!23749 lt!2518673))))))

(declare-fun b!7032414 () Bool)

(declare-fun e!4227580 () Bool)

(assert (=> b!7032414 (= e!4227580 (matchZipper!3002 lt!2518422 s!7408))))

(declare-fun d!2193859 () Bool)

(assert (=> d!2193859 e!4227583))

(declare-fun res!2870761 () Bool)

(assert (=> d!2193859 (=> res!2870761 e!4227583)))

(assert (=> d!2193859 (= res!2870761 e!4227582)))

(declare-fun res!2870757 () Bool)

(assert (=> d!2193859 (=> (not res!2870757) (not e!4227582))))

(assert (=> d!2193859 (= res!2870757 (isDefined!13568 lt!2518673))))

(assert (=> d!2193859 (= lt!2518673 e!4227584)))

(declare-fun c!1307998 () Bool)

(assert (=> d!2193859 (= c!1307998 e!4227580)))

(declare-fun res!2870758 () Bool)

(assert (=> d!2193859 (=> (not res!2870758) (not e!4227580))))

(assert (=> d!2193859 (= res!2870758 (matchZipper!3002 lt!2518429 Nil!67791))))

(assert (=> d!2193859 (= (++!15505 Nil!67791 s!7408) s!7408)))

(assert (=> d!2193859 (= (findConcatSeparationZippers!383 lt!2518429 lt!2518422 Nil!67791 s!7408 s!7408) lt!2518673)))

(declare-fun b!7032407 () Bool)

(assert (=> b!7032407 (= e!4227582 (= (++!15505 (_1!37338 (get!23749 lt!2518673)) (_2!37338 (get!23749 lt!2518673))) s!7408))))

(assert (= (and d!2193859 res!2870758) b!7032414))

(assert (= (and d!2193859 c!1307998) b!7032412))

(assert (= (and d!2193859 (not c!1307998)) b!7032409))

(assert (= (and b!7032409 c!1307997) b!7032406))

(assert (= (and b!7032409 (not c!1307997)) b!7032408))

(assert (= (and d!2193859 res!2870757) b!7032411))

(assert (= (and b!7032411 res!2870760) b!7032413))

(assert (= (and b!7032413 res!2870759) b!7032407))

(assert (= (and d!2193859 (not res!2870761)) b!7032410))

(declare-fun m!7738986 () Bool)

(assert (=> b!7032408 m!7738986))

(assert (=> b!7032408 m!7738986))

(declare-fun m!7738988 () Bool)

(assert (=> b!7032408 m!7738988))

(declare-fun m!7738990 () Bool)

(assert (=> b!7032408 m!7738990))

(assert (=> b!7032408 m!7738986))

(declare-fun m!7738992 () Bool)

(assert (=> b!7032408 m!7738992))

(declare-fun m!7738994 () Bool)

(assert (=> d!2193859 m!7738994))

(declare-fun m!7738996 () Bool)

(assert (=> d!2193859 m!7738996))

(declare-fun m!7738998 () Bool)

(assert (=> d!2193859 m!7738998))

(assert (=> b!7032410 m!7738994))

(declare-fun m!7739000 () Bool)

(assert (=> b!7032407 m!7739000))

(declare-fun m!7739002 () Bool)

(assert (=> b!7032407 m!7739002))

(assert (=> b!7032411 m!7739000))

(declare-fun m!7739004 () Bool)

(assert (=> b!7032411 m!7739004))

(assert (=> b!7032413 m!7739000))

(declare-fun m!7739006 () Bool)

(assert (=> b!7032413 m!7739006))

(declare-fun m!7739008 () Bool)

(assert (=> b!7032414 m!7739008))

(assert (=> b!7032156 d!2193859))

(declare-fun d!2193861 () Bool)

(declare-fun lt!2518674 () Int)

(assert (=> d!2193861 (>= lt!2518674 0)))

(declare-fun e!4227585 () Int)

(assert (=> d!2193861 (= lt!2518674 e!4227585)))

(declare-fun c!1307999 () Bool)

(assert (=> d!2193861 (= c!1307999 (is-Cons!67792 lt!2518442))))

(assert (=> d!2193861 (= (zipperDepthTotal!525 lt!2518442) lt!2518674)))

(declare-fun b!7032415 () Bool)

(assert (=> b!7032415 (= e!4227585 (+ (contextDepthTotal!497 (h!74240 lt!2518442)) (zipperDepthTotal!525 (t!381681 lt!2518442))))))

(declare-fun b!7032416 () Bool)

(assert (=> b!7032416 (= e!4227585 0)))

(assert (= (and d!2193861 c!1307999) b!7032415))

(assert (= (and d!2193861 (not c!1307999)) b!7032416))

(declare-fun m!7739010 () Bool)

(assert (=> b!7032415 m!7739010))

(declare-fun m!7739012 () Bool)

(assert (=> b!7032415 m!7739012))

(assert (=> b!7032154 d!2193861))

(declare-fun d!2193863 () Bool)

(assert (=> d!2193863 (= (flatMap!2409 lt!2518429 lambda!414587) (dynLambda!27375 lambda!414587 lt!2518443))))

(declare-fun lt!2518675 () Unit!161594)

(assert (=> d!2193863 (= lt!2518675 (choose!53242 lt!2518429 lt!2518443 lambda!414587))))

(assert (=> d!2193863 (= lt!2518429 (set.insert lt!2518443 (as set.empty (Set Context!12916))))))

(assert (=> d!2193863 (= (lemmaFlatMapOnSingletonSet!1923 lt!2518429 lt!2518443 lambda!414587) lt!2518675)))

(declare-fun b_lambda!266397 () Bool)

(assert (=> (not b_lambda!266397) (not d!2193863)))

(declare-fun bs!1870589 () Bool)

(assert (= bs!1870589 d!2193863))

(assert (=> bs!1870589 m!7738572))

(declare-fun m!7739014 () Bool)

(assert (=> bs!1870589 m!7739014))

(declare-fun m!7739016 () Bool)

(assert (=> bs!1870589 m!7739016))

(assert (=> bs!1870589 m!7738586))

(assert (=> b!7032154 d!2193863))

(declare-fun d!2193865 () Bool)

(declare-fun lt!2518678 () Int)

(assert (=> d!2193865 (>= lt!2518678 0)))

(declare-fun e!4227588 () Int)

(assert (=> d!2193865 (= lt!2518678 e!4227588)))

(declare-fun c!1308003 () Bool)

(assert (=> d!2193865 (= c!1308003 (is-Cons!67790 (exprs!6958 lt!2518443)))))

(assert (=> d!2193865 (= (contextDepthTotal!497 lt!2518443) lt!2518678)))

(declare-fun b!7032421 () Bool)

(declare-fun regexDepthTotal!301 (Regex!17462) Int)

(assert (=> b!7032421 (= e!4227588 (+ (regexDepthTotal!301 (h!74238 (exprs!6958 lt!2518443))) (contextDepthTotal!497 (Context!12917 (t!381679 (exprs!6958 lt!2518443))))))))

(declare-fun b!7032422 () Bool)

(assert (=> b!7032422 (= e!4227588 1)))

(assert (= (and d!2193865 c!1308003) b!7032421))

(assert (= (and d!2193865 (not c!1308003)) b!7032422))

(declare-fun m!7739018 () Bool)

(assert (=> b!7032421 m!7739018))

(declare-fun m!7739020 () Bool)

(assert (=> b!7032421 m!7739020))

(assert (=> b!7032154 d!2193865))

(declare-fun d!2193867 () Bool)

(declare-fun e!4227589 () Bool)

(assert (=> d!2193867 e!4227589))

(declare-fun res!2870762 () Bool)

(assert (=> d!2193867 (=> (not res!2870762) (not e!4227589))))

(declare-fun lt!2518679 () List!67916)

(assert (=> d!2193867 (= res!2870762 (noDuplicate!2626 lt!2518679))))

(assert (=> d!2193867 (= lt!2518679 (choose!53240 z1!570))))

(assert (=> d!2193867 (= (toList!10805 z1!570) lt!2518679)))

(declare-fun b!7032423 () Bool)

(assert (=> b!7032423 (= e!4227589 (= (content!13529 lt!2518679) z1!570))))

(assert (= (and d!2193867 res!2870762) b!7032423))

(declare-fun m!7739022 () Bool)

(assert (=> d!2193867 m!7739022))

(declare-fun m!7739024 () Bool)

(assert (=> d!2193867 m!7739024))

(declare-fun m!7739026 () Bool)

(assert (=> b!7032423 m!7739026))

(assert (=> b!7032154 d!2193867))

(declare-fun d!2193869 () Bool)

(declare-fun lt!2518680 () Int)

(assert (=> d!2193869 (>= lt!2518680 0)))

(declare-fun e!4227590 () Int)

(assert (=> d!2193869 (= lt!2518680 e!4227590)))

(declare-fun c!1308004 () Bool)

(assert (=> d!2193869 (= c!1308004 (is-Cons!67790 (exprs!6958 lt!2518419)))))

(assert (=> d!2193869 (= (contextDepthTotal!497 lt!2518419) lt!2518680)))

(declare-fun b!7032424 () Bool)

(assert (=> b!7032424 (= e!4227590 (+ (regexDepthTotal!301 (h!74238 (exprs!6958 lt!2518419))) (contextDepthTotal!497 (Context!12917 (t!381679 (exprs!6958 lt!2518419))))))))

(declare-fun b!7032425 () Bool)

(assert (=> b!7032425 (= e!4227590 1)))

(assert (= (and d!2193869 c!1308004) b!7032424))

(assert (= (and d!2193869 (not c!1308004)) b!7032425))

(declare-fun m!7739028 () Bool)

(assert (=> b!7032424 m!7739028))

(declare-fun m!7739030 () Bool)

(assert (=> b!7032424 m!7739030))

(assert (=> b!7032154 d!2193869))

(declare-fun call!638605 () (Set Context!12916))

(declare-fun e!4227592 () (Set Context!12916))

(declare-fun b!7032426 () Bool)

(assert (=> b!7032426 (= e!4227592 (set.union call!638605 (derivationStepZipperUp!2072 (Context!12917 (t!381679 (exprs!6958 lt!2518443))) (h!74239 s!7408))))))

(declare-fun b!7032427 () Bool)

(declare-fun e!4227591 () (Set Context!12916))

(assert (=> b!7032427 (= e!4227591 (as set.empty (Set Context!12916)))))

(declare-fun b!7032428 () Bool)

(assert (=> b!7032428 (= e!4227591 call!638605)))

(declare-fun b!7032429 () Bool)

(assert (=> b!7032429 (= e!4227592 e!4227591)))

(declare-fun c!1308006 () Bool)

(assert (=> b!7032429 (= c!1308006 (is-Cons!67790 (exprs!6958 lt!2518443)))))

(declare-fun b!7032430 () Bool)

(declare-fun e!4227593 () Bool)

(assert (=> b!7032430 (= e!4227593 (nullable!7173 (h!74238 (exprs!6958 lt!2518443))))))

(declare-fun bm!638600 () Bool)

(assert (=> bm!638600 (= call!638605 (derivationStepZipperDown!2126 (h!74238 (exprs!6958 lt!2518443)) (Context!12917 (t!381679 (exprs!6958 lt!2518443))) (h!74239 s!7408)))))

(declare-fun d!2193871 () Bool)

(declare-fun c!1308005 () Bool)

(assert (=> d!2193871 (= c!1308005 e!4227593)))

(declare-fun res!2870763 () Bool)

(assert (=> d!2193871 (=> (not res!2870763) (not e!4227593))))

(assert (=> d!2193871 (= res!2870763 (is-Cons!67790 (exprs!6958 lt!2518443)))))

(assert (=> d!2193871 (= (derivationStepZipperUp!2072 lt!2518443 (h!74239 s!7408)) e!4227592)))

(assert (= (and d!2193871 res!2870763) b!7032430))

(assert (= (and d!2193871 c!1308005) b!7032426))

(assert (= (and d!2193871 (not c!1308005)) b!7032429))

(assert (= (and b!7032429 c!1308006) b!7032428))

(assert (= (and b!7032429 (not c!1308006)) b!7032427))

(assert (= (or b!7032426 b!7032428) bm!638600))

(declare-fun m!7739032 () Bool)

(assert (=> b!7032426 m!7739032))

(declare-fun m!7739034 () Bool)

(assert (=> b!7032430 m!7739034))

(declare-fun m!7739036 () Bool)

(assert (=> bm!638600 m!7739036))

(assert (=> b!7032154 d!2193871))

(declare-fun d!2193873 () Bool)

(assert (=> d!2193873 (= (map!15761 lt!2518429 lambda!414585) (set.insert (dynLambda!27376 lambda!414585 lt!2518443) (as set.empty (Set Context!12916))))))

(declare-fun lt!2518683 () Unit!161594)

(declare-fun choose!53248 ((Set Context!12916) Context!12916 Int) Unit!161594)

(assert (=> d!2193873 (= lt!2518683 (choose!53248 lt!2518429 lt!2518443 lambda!414585))))

(assert (=> d!2193873 (= lt!2518429 (set.insert lt!2518443 (as set.empty (Set Context!12916))))))

(assert (=> d!2193873 (= (lemmaMapOnSingletonSet!373 lt!2518429 lt!2518443 lambda!414585) lt!2518683)))

(declare-fun b_lambda!266399 () Bool)

(assert (=> (not b_lambda!266399) (not d!2193873)))

(declare-fun bs!1870590 () Bool)

(assert (= bs!1870590 d!2193873))

(declare-fun m!7739038 () Bool)

(assert (=> bs!1870590 m!7739038))

(declare-fun m!7739040 () Bool)

(assert (=> bs!1870590 m!7739040))

(assert (=> bs!1870590 m!7738586))

(assert (=> bs!1870590 m!7739038))

(assert (=> bs!1870590 m!7738592))

(declare-fun m!7739042 () Bool)

(assert (=> bs!1870590 m!7739042))

(assert (=> b!7032154 d!2193873))

(assert (=> b!7032154 d!2193829))

(assert (=> b!7032154 d!2193797))

(declare-fun d!2193875 () Bool)

(assert (=> d!2193875 (= (flatMap!2409 lt!2518429 lambda!414587) (choose!53243 lt!2518429 lambda!414587))))

(declare-fun bs!1870591 () Bool)

(assert (= bs!1870591 d!2193875))

(declare-fun m!7739044 () Bool)

(assert (=> bs!1870591 m!7739044))

(assert (=> b!7032154 d!2193875))

(declare-fun d!2193877 () Bool)

(assert (=> d!2193877 (<= (contextDepthTotal!497 lt!2518419) (zipperDepthTotal!525 lt!2518442))))

(declare-fun lt!2518686 () Unit!161594)

(declare-fun choose!53249 (List!67916 Context!12916) Unit!161594)

(assert (=> d!2193877 (= lt!2518686 (choose!53249 lt!2518442 lt!2518419))))

(declare-fun contains!20455 (List!67916 Context!12916) Bool)

(assert (=> d!2193877 (contains!20455 lt!2518442 lt!2518419)))

(assert (=> d!2193877 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!65 lt!2518442 lt!2518419) lt!2518686)))

(declare-fun bs!1870592 () Bool)

(assert (= bs!1870592 d!2193877))

(assert (=> bs!1870592 m!7738582))

(assert (=> bs!1870592 m!7738576))

(declare-fun m!7739046 () Bool)

(assert (=> bs!1870592 m!7739046))

(declare-fun m!7739048 () Bool)

(assert (=> bs!1870592 m!7739048))

(assert (=> b!7032154 d!2193877))

(declare-fun d!2193879 () Bool)

(declare-fun choose!53250 ((Set Context!12916) Int) (Set Context!12916))

(assert (=> d!2193879 (= (map!15761 lt!2518429 lambda!414585) (choose!53250 lt!2518429 lambda!414585))))

(declare-fun bs!1870593 () Bool)

(assert (= bs!1870593 d!2193879))

(declare-fun m!7739050 () Bool)

(assert (=> bs!1870593 m!7739050))

(assert (=> b!7032154 d!2193879))

(declare-fun d!2193881 () Bool)

(declare-fun c!1308008 () Bool)

(assert (=> d!2193881 (= c!1308008 (isEmpty!39536 s!7408))))

(declare-fun e!4227594 () Bool)

(assert (=> d!2193881 (= (matchZipper!3002 lt!2518448 s!7408) e!4227594)))

(declare-fun b!7032431 () Bool)

(assert (=> b!7032431 (= e!4227594 (nullableZipper!2578 lt!2518448))))

(declare-fun b!7032432 () Bool)

(assert (=> b!7032432 (= e!4227594 (matchZipper!3002 (derivationStepZipper!2918 lt!2518448 (head!14261 s!7408)) (tail!13550 s!7408)))))

(assert (= (and d!2193881 c!1308008) b!7032431))

(assert (= (and d!2193881 (not c!1308008)) b!7032432))

(assert (=> d!2193881 m!7738774))

(declare-fun m!7739052 () Bool)

(assert (=> b!7032431 m!7739052))

(assert (=> b!7032432 m!7738778))

(assert (=> b!7032432 m!7738778))

(declare-fun m!7739054 () Bool)

(assert (=> b!7032432 m!7739054))

(assert (=> b!7032432 m!7738782))

(assert (=> b!7032432 m!7739054))

(assert (=> b!7032432 m!7738782))

(declare-fun m!7739056 () Bool)

(assert (=> b!7032432 m!7739056))

(assert (=> b!7032174 d!2193881))

(assert (=> b!7032174 d!2193797))

(declare-fun b!7032444 () Bool)

(declare-fun e!4227599 () Bool)

(declare-fun lt!2518689 () List!67915)

(assert (=> b!7032444 (= e!4227599 (or (not (= (_2!37338 lt!2518462) Nil!67791)) (= lt!2518689 (_1!37338 lt!2518462))))))

(declare-fun b!7032443 () Bool)

(declare-fun res!2870769 () Bool)

(assert (=> b!7032443 (=> (not res!2870769) (not e!4227599))))

(declare-fun size!41061 (List!67915) Int)

(assert (=> b!7032443 (= res!2870769 (= (size!41061 lt!2518689) (+ (size!41061 (_1!37338 lt!2518462)) (size!41061 (_2!37338 lt!2518462)))))))

(declare-fun b!7032442 () Bool)

(declare-fun e!4227600 () List!67915)

(assert (=> b!7032442 (= e!4227600 (Cons!67791 (h!74239 (_1!37338 lt!2518462)) (++!15505 (t!381680 (_1!37338 lt!2518462)) (_2!37338 lt!2518462))))))

(declare-fun d!2193883 () Bool)

(assert (=> d!2193883 e!4227599))

(declare-fun res!2870768 () Bool)

(assert (=> d!2193883 (=> (not res!2870768) (not e!4227599))))

(declare-fun content!13531 (List!67915) (Set C!35194))

(assert (=> d!2193883 (= res!2870768 (= (content!13531 lt!2518689) (set.union (content!13531 (_1!37338 lt!2518462)) (content!13531 (_2!37338 lt!2518462)))))))

(assert (=> d!2193883 (= lt!2518689 e!4227600)))

(declare-fun c!1308011 () Bool)

(assert (=> d!2193883 (= c!1308011 (is-Nil!67791 (_1!37338 lt!2518462)))))

(assert (=> d!2193883 (= (++!15505 (_1!37338 lt!2518462) (_2!37338 lt!2518462)) lt!2518689)))

(declare-fun b!7032441 () Bool)

(assert (=> b!7032441 (= e!4227600 (_2!37338 lt!2518462))))

(assert (= (and d!2193883 c!1308011) b!7032441))

(assert (= (and d!2193883 (not c!1308011)) b!7032442))

(assert (= (and d!2193883 res!2870768) b!7032443))

(assert (= (and b!7032443 res!2870769) b!7032444))

(declare-fun m!7739058 () Bool)

(assert (=> b!7032443 m!7739058))

(declare-fun m!7739060 () Bool)

(assert (=> b!7032443 m!7739060))

(declare-fun m!7739062 () Bool)

(assert (=> b!7032443 m!7739062))

(declare-fun m!7739064 () Bool)

(assert (=> b!7032442 m!7739064))

(declare-fun m!7739066 () Bool)

(assert (=> d!2193883 m!7739066))

(declare-fun m!7739068 () Bool)

(assert (=> d!2193883 m!7739068))

(declare-fun m!7739070 () Bool)

(assert (=> d!2193883 m!7739070))

(assert (=> b!7032175 d!2193883))

(declare-fun b!7032449 () Bool)

(declare-fun e!4227603 () Bool)

(declare-fun tp!1936388 () Bool)

(assert (=> b!7032449 (= e!4227603 (and tp_is_empty!44149 tp!1936388))))

(assert (=> b!7032148 (= tp!1936372 e!4227603)))

(assert (= (and b!7032148 (is-Cons!67791 (t!381680 s!7408))) b!7032449))

(declare-fun b!7032454 () Bool)

(declare-fun e!4227606 () Bool)

(declare-fun tp!1936393 () Bool)

(declare-fun tp!1936394 () Bool)

(assert (=> b!7032454 (= e!4227606 (and tp!1936393 tp!1936394))))

(assert (=> b!7032162 (= tp!1936370 e!4227606)))

(assert (= (and b!7032162 (is-Cons!67790 (exprs!6958 setElem!49145))) b!7032454))

(declare-fun condSetEmpty!49151 () Bool)

(assert (=> setNonEmpty!49145 (= condSetEmpty!49151 (= setRest!49145 (as set.empty (Set Context!12916))))))

(declare-fun setRes!49151 () Bool)

(assert (=> setNonEmpty!49145 (= tp!1936373 setRes!49151)))

(declare-fun setIsEmpty!49151 () Bool)

(assert (=> setIsEmpty!49151 setRes!49151))

(declare-fun tp!1936400 () Bool)

(declare-fun setElem!49151 () Context!12916)

(declare-fun e!4227609 () Bool)

(declare-fun setNonEmpty!49151 () Bool)

(assert (=> setNonEmpty!49151 (= setRes!49151 (and tp!1936400 (inv!86515 setElem!49151) e!4227609))))

(declare-fun setRest!49151 () (Set Context!12916))

(assert (=> setNonEmpty!49151 (= setRest!49145 (set.union (set.insert setElem!49151 (as set.empty (Set Context!12916))) setRest!49151))))

(declare-fun b!7032459 () Bool)

(declare-fun tp!1936399 () Bool)

(assert (=> b!7032459 (= e!4227609 tp!1936399)))

(assert (= (and setNonEmpty!49145 condSetEmpty!49151) setIsEmpty!49151))

(assert (= (and setNonEmpty!49145 (not condSetEmpty!49151)) setNonEmpty!49151))

(assert (= setNonEmpty!49151 b!7032459))

(declare-fun m!7739072 () Bool)

(assert (=> setNonEmpty!49151 m!7739072))

(declare-fun b!7032460 () Bool)

(declare-fun e!4227610 () Bool)

(declare-fun tp!1936401 () Bool)

(declare-fun tp!1936402 () Bool)

(assert (=> b!7032460 (= e!4227610 (and tp!1936401 tp!1936402))))

(assert (=> b!7032165 (= tp!1936371 e!4227610)))

(assert (= (and b!7032165 (is-Cons!67790 (exprs!6958 ct2!306))) b!7032460))

(declare-fun b_lambda!266401 () Bool)

(assert (= b_lambda!266393 (or b!7032149 b_lambda!266401)))

(declare-fun bs!1870594 () Bool)

(declare-fun d!2193885 () Bool)

(assert (= bs!1870594 (and d!2193885 b!7032149)))

(assert (=> bs!1870594 (= (dynLambda!27374 lambda!414588 lt!2518654) (nullableContext!82 lt!2518654))))

(declare-fun m!7739074 () Bool)

(assert (=> bs!1870594 m!7739074))

(assert (=> d!2193815 d!2193885))

(declare-fun b_lambda!266403 () Bool)

(assert (= b_lambda!266391 (or b!7032169 b_lambda!266403)))

(declare-fun bs!1870595 () Bool)

(declare-fun d!2193887 () Bool)

(assert (= bs!1870595 (and d!2193887 b!7032169)))

(declare-fun lt!2518690 () Unit!161594)

(assert (=> bs!1870595 (= lt!2518690 (lemmaConcatPreservesForall!783 (exprs!6958 lt!2518653) (exprs!6958 ct2!306) lambda!414586))))

(assert (=> bs!1870595 (= (dynLambda!27376 lambda!414585 lt!2518653) (Context!12917 (++!15504 (exprs!6958 lt!2518653) (exprs!6958 ct2!306))))))

(declare-fun m!7739076 () Bool)

(assert (=> bs!1870595 m!7739076))

(declare-fun m!7739078 () Bool)

(assert (=> bs!1870595 m!7739078))

(assert (=> d!2193811 d!2193887))

(declare-fun b_lambda!266405 () Bool)

(assert (= b_lambda!266397 (or b!7032161 b_lambda!266405)))

(declare-fun bs!1870596 () Bool)

(declare-fun d!2193889 () Bool)

(assert (= bs!1870596 (and d!2193889 b!7032161)))

(assert (=> bs!1870596 (= (dynLambda!27375 lambda!414587 lt!2518443) (derivationStepZipperUp!2072 lt!2518443 (h!74239 s!7408)))))

(assert (=> bs!1870596 m!7738588))

(assert (=> d!2193863 d!2193889))

(declare-fun b_lambda!266407 () Bool)

(assert (= b_lambda!266395 (or b!7032161 b_lambda!266407)))

(declare-fun bs!1870597 () Bool)

(declare-fun d!2193891 () Bool)

(assert (= bs!1870597 (and d!2193891 b!7032161)))

(assert (=> bs!1870597 (= (dynLambda!27375 lambda!414587 lt!2518444) (derivationStepZipperUp!2072 lt!2518444 (h!74239 s!7408)))))

(assert (=> bs!1870597 m!7738524))

(assert (=> d!2193843 d!2193891))

(declare-fun b_lambda!266409 () Bool)

(assert (= b_lambda!266389 (or b!7032161 b_lambda!266409)))

(declare-fun bs!1870598 () Bool)

(declare-fun d!2193893 () Bool)

(assert (= bs!1870598 (and d!2193893 b!7032161)))

(assert (=> bs!1870598 (= (dynLambda!27375 lambda!414587 lt!2518421) (derivationStepZipperUp!2072 lt!2518421 (h!74239 s!7408)))))

(assert (=> bs!1870598 m!7738636))

(assert (=> d!2193787 d!2193893))

(declare-fun b_lambda!266411 () Bool)

(assert (= b_lambda!266387 (or b!7032163 b_lambda!266411)))

(declare-fun bs!1870599 () Bool)

(declare-fun d!2193895 () Bool)

(assert (= bs!1870599 (and d!2193895 b!7032163)))

(assert (=> bs!1870599 (= (dynLambda!27374 lambda!414584 lt!2518631) (matchZipper!3002 (set.insert lt!2518631 (as set.empty (Set Context!12916))) s!7408))))

(declare-fun m!7739080 () Bool)

(assert (=> bs!1870599 m!7739080))

(assert (=> bs!1870599 m!7739080))

(declare-fun m!7739082 () Bool)

(assert (=> bs!1870599 m!7739082))

(assert (=> d!2193781 d!2193895))

(declare-fun b_lambda!266413 () Bool)

(assert (= b_lambda!266399 (or b!7032169 b_lambda!266413)))

(declare-fun bs!1870600 () Bool)

(declare-fun d!2193897 () Bool)

(assert (= bs!1870600 (and d!2193897 b!7032169)))

(declare-fun lt!2518691 () Unit!161594)

(assert (=> bs!1870600 (= lt!2518691 (lemmaConcatPreservesForall!783 (exprs!6958 lt!2518443) (exprs!6958 ct2!306) lambda!414586))))

(assert (=> bs!1870600 (= (dynLambda!27376 lambda!414585 lt!2518443) (Context!12917 (++!15504 (exprs!6958 lt!2518443) (exprs!6958 ct2!306))))))

(declare-fun m!7739084 () Bool)

(assert (=> bs!1870600 m!7739084))

(declare-fun m!7739086 () Bool)

(assert (=> bs!1870600 m!7739086))

(assert (=> d!2193873 d!2193897))

(push 1)

(assert (not b!7032383))

(assert (not b!7032432))

(assert (not d!2193855))

(assert (not b!7032325))

(assert (not d!2193847))

(assert (not bm!638597))

(assert (not b!7032414))

(assert (not d!2193779))

(assert (not d!2193811))

(assert (not b!7032306))

(assert (not b!7032442))

(assert (not b!7032333))

(assert (not b!7032407))

(assert (not b!7032460))

(assert (not d!2193837))

(assert (not bs!1870594))

(assert (not b!7032309))

(assert (not d!2193835))

(assert tp_is_empty!44149)

(assert (not bm!638580))

(assert (not b!7032288))

(assert (not b!7032443))

(assert (not bm!638600))

(assert (not d!2193881))

(assert (not b_lambda!266405))

(assert (not b!7032386))

(assert (not d!2193879))

(assert (not b!7032384))

(assert (not b!7032430))

(assert (not d!2193873))

(assert (not d!2193813))

(assert (not d!2193799))

(assert (not b!7032311))

(assert (not d!2193803))

(assert (not d!2193787))

(assert (not bm!638598))

(assert (not bs!1870600))

(assert (not d!2193859))

(assert (not b!7032367))

(assert (not d!2193809))

(assert (not b!7032310))

(assert (not d!2193875))

(assert (not setNonEmpty!49151))

(assert (not d!2193829))

(assert (not b_lambda!266413))

(assert (not bs!1870598))

(assert (not b!7032314))

(assert (not b!7032373))

(assert (not d!2193777))

(assert (not b!7032385))

(assert (not d!2193845))

(assert (not d!2193867))

(assert (not b!7032423))

(assert (not bm!638599))

(assert (not b_lambda!266411))

(assert (not d!2193819))

(assert (not d!2193877))

(assert (not d!2193789))

(assert (not b_lambda!266407))

(assert (not b!7032307))

(assert (not b!7032411))

(assert (not b!7032426))

(assert (not d!2193853))

(assert (not d!2193857))

(assert (not b_lambda!266409))

(assert (not d!2193821))

(assert (not b!7032280))

(assert (not d!2193801))

(assert (not b!7032408))

(assert (not bs!1870597))

(assert (not b!7032299))

(assert (not bs!1870599))

(assert (not bs!1870596))

(assert (not d!2193863))

(assert (not b!7032415))

(assert (not b!7032449))

(assert (not d!2193883))

(assert (not b!7032324))

(assert (not b_lambda!266401))

(assert (not d!2193805))

(assert (not d!2193817))

(assert (not b!7032365))

(assert (not b!7032332))

(assert (not b!7032459))

(assert (not b!7032387))

(assert (not d!2193833))

(assert (not b!7032279))

(assert (not d!2193843))

(assert (not b!7032380))

(assert (not b!7032308))

(assert (not d!2193823))

(assert (not b_lambda!266403))

(assert (not b!7032382))

(assert (not d!2193841))

(assert (not b!7032410))

(assert (not d!2193783))

(assert (not d!2193785))

(assert (not b!7032424))

(assert (not d!2193775))

(assert (not b!7032454))

(assert (not d!2193793))

(assert (not bm!638595))

(assert (not b!7032431))

(assert (not d!2193815))

(assert (not b!7032371))

(assert (not d!2193781))

(assert (not bs!1870595))

(assert (not b!7032303))

(assert (not d!2193807))

(assert (not b!7032421))

(assert (not d!2193797))

(assert (not b!7032374))

(assert (not b!7032413))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2194023 () Bool)

(declare-fun res!2870825 () Bool)

(declare-fun e!4227720 () Bool)

(assert (=> d!2194023 (=> res!2870825 e!4227720)))

(assert (=> d!2194023 (= res!2870825 (is-Nil!67790 (++!15504 lt!2518415 (exprs!6958 ct2!306))))))

(assert (=> d!2194023 (= (forall!16376 (++!15504 lt!2518415 (exprs!6958 ct2!306)) lambda!414586) e!4227720)))

(declare-fun b!7032651 () Bool)

(declare-fun e!4227721 () Bool)

(assert (=> b!7032651 (= e!4227720 e!4227721)))

(declare-fun res!2870826 () Bool)

(assert (=> b!7032651 (=> (not res!2870826) (not e!4227721))))

(declare-fun dynLambda!27381 (Int Regex!17462) Bool)

(assert (=> b!7032651 (= res!2870826 (dynLambda!27381 lambda!414586 (h!74238 (++!15504 lt!2518415 (exprs!6958 ct2!306)))))))

(declare-fun b!7032652 () Bool)

(assert (=> b!7032652 (= e!4227721 (forall!16376 (t!381679 (++!15504 lt!2518415 (exprs!6958 ct2!306))) lambda!414586))))

(assert (= (and d!2194023 (not res!2870825)) b!7032651))

(assert (= (and b!7032651 res!2870826) b!7032652))

(declare-fun b_lambda!266443 () Bool)

(assert (=> (not b_lambda!266443) (not b!7032651)))

(declare-fun m!7739410 () Bool)

(assert (=> b!7032651 m!7739410))

(declare-fun m!7739412 () Bool)

(assert (=> b!7032652 m!7739412))

(assert (=> d!2193797 d!2194023))

(assert (=> d!2193797 d!2193829))

(declare-fun d!2194025 () Bool)

(assert (=> d!2194025 (forall!16376 (++!15504 lt!2518415 (exprs!6958 ct2!306)) lambda!414586)))

(assert (=> d!2194025 true))

(declare-fun _$78!581 () Unit!161594)

(assert (=> d!2194025 (= (choose!53241 lt!2518415 (exprs!6958 ct2!306) lambda!414586) _$78!581)))

(declare-fun bs!1870651 () Bool)

(assert (= bs!1870651 d!2194025))

(assert (=> bs!1870651 m!7738590))

(assert (=> bs!1870651 m!7738590))

(assert (=> bs!1870651 m!7738822))

(assert (=> d!2193797 d!2194025))

(declare-fun d!2194027 () Bool)

(declare-fun res!2870827 () Bool)

(declare-fun e!4227722 () Bool)

(assert (=> d!2194027 (=> res!2870827 e!4227722)))

(assert (=> d!2194027 (= res!2870827 (is-Nil!67790 lt!2518415))))

(assert (=> d!2194027 (= (forall!16376 lt!2518415 lambda!414586) e!4227722)))

(declare-fun b!7032653 () Bool)

(declare-fun e!4227723 () Bool)

(assert (=> b!7032653 (= e!4227722 e!4227723)))

(declare-fun res!2870828 () Bool)

(assert (=> b!7032653 (=> (not res!2870828) (not e!4227723))))

(assert (=> b!7032653 (= res!2870828 (dynLambda!27381 lambda!414586 (h!74238 lt!2518415)))))

(declare-fun b!7032654 () Bool)

(assert (=> b!7032654 (= e!4227723 (forall!16376 (t!381679 lt!2518415) lambda!414586))))

(assert (= (and d!2194027 (not res!2870827)) b!7032653))

(assert (= (and b!7032653 res!2870828) b!7032654))

(declare-fun b_lambda!266445 () Bool)

(assert (=> (not b_lambda!266445) (not b!7032653)))

(declare-fun m!7739414 () Bool)

(assert (=> b!7032653 m!7739414))

(declare-fun m!7739416 () Bool)

(assert (=> b!7032654 m!7739416))

(assert (=> d!2193797 d!2194027))

(declare-fun d!2194029 () Bool)

(declare-fun res!2870829 () Bool)

(declare-fun e!4227724 () Bool)

(assert (=> d!2194029 (=> res!2870829 e!4227724)))

(assert (=> d!2194029 (= res!2870829 (is-Nil!67790 (exprs!6958 lt!2518419)))))

(assert (=> d!2194029 (= (forall!16376 (exprs!6958 lt!2518419) lambda!414666) e!4227724)))

(declare-fun b!7032655 () Bool)

(declare-fun e!4227725 () Bool)

(assert (=> b!7032655 (= e!4227724 e!4227725)))

(declare-fun res!2870830 () Bool)

(assert (=> b!7032655 (=> (not res!2870830) (not e!4227725))))

(assert (=> b!7032655 (= res!2870830 (dynLambda!27381 lambda!414666 (h!74238 (exprs!6958 lt!2518419))))))

(declare-fun b!7032656 () Bool)

(assert (=> b!7032656 (= e!4227725 (forall!16376 (t!381679 (exprs!6958 lt!2518419)) lambda!414666))))

(assert (= (and d!2194029 (not res!2870829)) b!7032655))

(assert (= (and b!7032655 res!2870830) b!7032656))

(declare-fun b_lambda!266447 () Bool)

(assert (=> (not b_lambda!266447) (not b!7032655)))

(declare-fun m!7739418 () Bool)

(assert (=> b!7032655 m!7739418))

(declare-fun m!7739420 () Bool)

(assert (=> b!7032656 m!7739420))

(assert (=> d!2193817 d!2194029))

(declare-fun d!2194031 () Bool)

(assert (=> d!2194031 (forall!16376 (++!15504 (exprs!6958 lt!2518653) (exprs!6958 ct2!306)) lambda!414586)))

(declare-fun lt!2518758 () Unit!161594)

(assert (=> d!2194031 (= lt!2518758 (choose!53241 (exprs!6958 lt!2518653) (exprs!6958 ct2!306) lambda!414586))))

(assert (=> d!2194031 (forall!16376 (exprs!6958 lt!2518653) lambda!414586)))

(assert (=> d!2194031 (= (lemmaConcatPreservesForall!783 (exprs!6958 lt!2518653) (exprs!6958 ct2!306) lambda!414586) lt!2518758)))

(declare-fun bs!1870652 () Bool)

(assert (= bs!1870652 d!2194031))

(assert (=> bs!1870652 m!7739078))

(assert (=> bs!1870652 m!7739078))

(declare-fun m!7739422 () Bool)

(assert (=> bs!1870652 m!7739422))

(declare-fun m!7739424 () Bool)

(assert (=> bs!1870652 m!7739424))

(declare-fun m!7739426 () Bool)

(assert (=> bs!1870652 m!7739426))

(assert (=> bs!1870595 d!2194031))

(declare-fun b!7032657 () Bool)

(declare-fun e!4227726 () List!67914)

(assert (=> b!7032657 (= e!4227726 (exprs!6958 ct2!306))))

(declare-fun d!2194033 () Bool)

(declare-fun e!4227727 () Bool)

(assert (=> d!2194033 e!4227727))

(declare-fun res!2870832 () Bool)

(assert (=> d!2194033 (=> (not res!2870832) (not e!4227727))))

(declare-fun lt!2518759 () List!67914)

(assert (=> d!2194033 (= res!2870832 (= (content!13530 lt!2518759) (set.union (content!13530 (exprs!6958 lt!2518653)) (content!13530 (exprs!6958 ct2!306)))))))

(assert (=> d!2194033 (= lt!2518759 e!4227726)))

(declare-fun c!1308077 () Bool)

(assert (=> d!2194033 (= c!1308077 (is-Nil!67790 (exprs!6958 lt!2518653)))))

(assert (=> d!2194033 (= (++!15504 (exprs!6958 lt!2518653) (exprs!6958 ct2!306)) lt!2518759)))

(declare-fun b!7032660 () Bool)

(assert (=> b!7032660 (= e!4227727 (or (not (= (exprs!6958 ct2!306) Nil!67790)) (= lt!2518759 (exprs!6958 lt!2518653))))))

(declare-fun b!7032659 () Bool)

(declare-fun res!2870831 () Bool)

(assert (=> b!7032659 (=> (not res!2870831) (not e!4227727))))

(assert (=> b!7032659 (= res!2870831 (= (size!41060 lt!2518759) (+ (size!41060 (exprs!6958 lt!2518653)) (size!41060 (exprs!6958 ct2!306)))))))

(declare-fun b!7032658 () Bool)

(assert (=> b!7032658 (= e!4227726 (Cons!67790 (h!74238 (exprs!6958 lt!2518653)) (++!15504 (t!381679 (exprs!6958 lt!2518653)) (exprs!6958 ct2!306))))))

(assert (= (and d!2194033 c!1308077) b!7032657))

(assert (= (and d!2194033 (not c!1308077)) b!7032658))

(assert (= (and d!2194033 res!2870832) b!7032659))

(assert (= (and b!7032659 res!2870831) b!7032660))

(declare-fun m!7739428 () Bool)

(assert (=> d!2194033 m!7739428))

(declare-fun m!7739430 () Bool)

(assert (=> d!2194033 m!7739430))

(assert (=> d!2194033 m!7738866))

(declare-fun m!7739432 () Bool)

(assert (=> b!7032659 m!7739432))

(declare-fun m!7739434 () Bool)

(assert (=> b!7032659 m!7739434))

(assert (=> b!7032659 m!7738872))

(declare-fun m!7739436 () Bool)

(assert (=> b!7032658 m!7739436))

(assert (=> bs!1870595 d!2194033))

(declare-fun bs!1870653 () Bool)

(declare-fun d!2194035 () Bool)

(assert (= bs!1870653 (and d!2194035 b!7032163)))

(declare-fun lambda!414702 () Int)

(assert (=> bs!1870653 (not (= lambda!414702 lambda!414584))))

(declare-fun bs!1870654 () Bool)

(assert (= bs!1870654 (and d!2194035 b!7032149)))

(assert (=> bs!1870654 (= lambda!414702 lambda!414588)))

(declare-fun bs!1870655 () Bool)

(assert (= bs!1870655 (and d!2194035 d!2193775)))

(assert (=> bs!1870655 (not (= lambda!414702 lambda!414656))))

(declare-fun bs!1870656 () Bool)

(assert (= bs!1870656 (and d!2194035 d!2193779)))

(assert (=> bs!1870656 (not (= lambda!414702 lambda!414659))))

(assert (=> d!2194035 (= (nullableZipper!2578 lt!2518422) (exists!3386 lt!2518422 lambda!414702))))

(declare-fun bs!1870657 () Bool)

(assert (= bs!1870657 d!2194035))

(declare-fun m!7739438 () Bool)

(assert (=> bs!1870657 m!7739438))

(assert (=> b!7032382 d!2194035))

(declare-fun d!2194037 () Bool)

(declare-fun c!1308080 () Bool)

(assert (=> d!2194037 (= c!1308080 (isEmpty!39536 s!7408))))

(declare-fun e!4227728 () Bool)

(assert (=> d!2194037 (= (matchZipper!3002 (set.insert lt!2518631 (as set.empty (Set Context!12916))) s!7408) e!4227728)))

(declare-fun b!7032661 () Bool)

(assert (=> b!7032661 (= e!4227728 (nullableZipper!2578 (set.insert lt!2518631 (as set.empty (Set Context!12916)))))))

(declare-fun b!7032662 () Bool)

(assert (=> b!7032662 (= e!4227728 (matchZipper!3002 (derivationStepZipper!2918 (set.insert lt!2518631 (as set.empty (Set Context!12916))) (head!14261 s!7408)) (tail!13550 s!7408)))))

(assert (= (and d!2194037 c!1308080) b!7032661))

(assert (= (and d!2194037 (not c!1308080)) b!7032662))

(assert (=> d!2194037 m!7738774))

(assert (=> b!7032661 m!7739080))

(declare-fun m!7739440 () Bool)

(assert (=> b!7032661 m!7739440))

(assert (=> b!7032662 m!7738778))

(assert (=> b!7032662 m!7739080))

(assert (=> b!7032662 m!7738778))

(declare-fun m!7739442 () Bool)

(assert (=> b!7032662 m!7739442))

(assert (=> b!7032662 m!7738782))

(assert (=> b!7032662 m!7739442))

(assert (=> b!7032662 m!7738782))

(declare-fun m!7739444 () Bool)

(assert (=> b!7032662 m!7739444))

(assert (=> bs!1870599 d!2194037))

(declare-fun bs!1870658 () Bool)

(declare-fun d!2194039 () Bool)

(assert (= bs!1870658 (and d!2194039 d!2194035)))

(declare-fun lambda!414703 () Int)

(assert (=> bs!1870658 (= lambda!414703 lambda!414702)))

(declare-fun bs!1870659 () Bool)

(assert (= bs!1870659 (and d!2194039 b!7032163)))

(assert (=> bs!1870659 (not (= lambda!414703 lambda!414584))))

(declare-fun bs!1870660 () Bool)

(assert (= bs!1870660 (and d!2194039 b!7032149)))

(assert (=> bs!1870660 (= lambda!414703 lambda!414588)))

(declare-fun bs!1870661 () Bool)

(assert (= bs!1870661 (and d!2194039 d!2193779)))

(assert (=> bs!1870661 (not (= lambda!414703 lambda!414659))))

(declare-fun bs!1870662 () Bool)

(assert (= bs!1870662 (and d!2194039 d!2193775)))

(assert (=> bs!1870662 (not (= lambda!414703 lambda!414656))))

(assert (=> d!2194039 (= (nullableZipper!2578 lt!2518463) (exists!3386 lt!2518463 lambda!414703))))

(declare-fun bs!1870663 () Bool)

(assert (= bs!1870663 d!2194039))

(declare-fun m!7739446 () Bool)

(assert (=> bs!1870663 m!7739446))

(assert (=> b!7032306 d!2194039))

(declare-fun d!2194041 () Bool)

(assert (=> d!2194041 (= (isDefined!13568 lt!2518673) (not (isEmpty!39540 lt!2518673)))))

(declare-fun bs!1870664 () Bool)

(assert (= bs!1870664 d!2194041))

(declare-fun m!7739448 () Bool)

(assert (=> bs!1870664 m!7739448))

(assert (=> b!7032410 d!2194041))

(declare-fun d!2194043 () Bool)

(declare-fun res!2870833 () Bool)

(declare-fun e!4227729 () Bool)

(assert (=> d!2194043 (=> res!2870833 e!4227729)))

(assert (=> d!2194043 (= res!2870833 (is-Nil!67790 (exprs!6958 setElem!49145)))))

(assert (=> d!2194043 (= (forall!16376 (exprs!6958 setElem!49145) lambda!414675) e!4227729)))

(declare-fun b!7032663 () Bool)

(declare-fun e!4227730 () Bool)

(assert (=> b!7032663 (= e!4227729 e!4227730)))

(declare-fun res!2870834 () Bool)

(assert (=> b!7032663 (=> (not res!2870834) (not e!4227730))))

(assert (=> b!7032663 (= res!2870834 (dynLambda!27381 lambda!414675 (h!74238 (exprs!6958 setElem!49145))))))

(declare-fun b!7032664 () Bool)

(assert (=> b!7032664 (= e!4227730 (forall!16376 (t!381679 (exprs!6958 setElem!49145)) lambda!414675))))

(assert (= (and d!2194043 (not res!2870833)) b!7032663))

(assert (= (and b!7032663 res!2870834) b!7032664))

(declare-fun b_lambda!266449 () Bool)

(assert (=> (not b_lambda!266449) (not b!7032663)))

(declare-fun m!7739450 () Bool)

(assert (=> b!7032663 m!7739450))

(declare-fun m!7739452 () Bool)

(assert (=> b!7032664 m!7739452))

(assert (=> d!2193833 d!2194043))

(declare-fun d!2194045 () Bool)

(declare-fun lt!2518762 () Int)

(assert (=> d!2194045 (>= lt!2518762 0)))

(declare-fun e!4227733 () Int)

(assert (=> d!2194045 (= lt!2518762 e!4227733)))

(declare-fun c!1308083 () Bool)

(assert (=> d!2194045 (= c!1308083 (is-Nil!67790 lt!2518650))))

(assert (=> d!2194045 (= (size!41060 lt!2518650) lt!2518762)))

(declare-fun b!7032669 () Bool)

(assert (=> b!7032669 (= e!4227733 0)))

(declare-fun b!7032670 () Bool)

(assert (=> b!7032670 (= e!4227733 (+ 1 (size!41060 (t!381679 lt!2518650))))))

(assert (= (and d!2194045 c!1308083) b!7032669))

(assert (= (and d!2194045 (not c!1308083)) b!7032670))

(declare-fun m!7739454 () Bool)

(assert (=> b!7032670 m!7739454))

(assert (=> b!7032325 d!2194045))

(declare-fun d!2194047 () Bool)

(declare-fun lt!2518763 () Int)

(assert (=> d!2194047 (>= lt!2518763 0)))

(declare-fun e!4227734 () Int)

(assert (=> d!2194047 (= lt!2518763 e!4227734)))

(declare-fun c!1308084 () Bool)

(assert (=> d!2194047 (= c!1308084 (is-Nil!67790 (exprs!6958 lt!2518419)))))

(assert (=> d!2194047 (= (size!41060 (exprs!6958 lt!2518419)) lt!2518763)))

(declare-fun b!7032671 () Bool)

(assert (=> b!7032671 (= e!4227734 0)))

(declare-fun b!7032672 () Bool)

(assert (=> b!7032672 (= e!4227734 (+ 1 (size!41060 (t!381679 (exprs!6958 lt!2518419)))))))

(assert (= (and d!2194047 c!1308084) b!7032671))

(assert (= (and d!2194047 (not c!1308084)) b!7032672))

(declare-fun m!7739456 () Bool)

(assert (=> b!7032672 m!7739456))

(assert (=> b!7032325 d!2194047))

(declare-fun d!2194049 () Bool)

(declare-fun lt!2518764 () Int)

(assert (=> d!2194049 (>= lt!2518764 0)))

(declare-fun e!4227735 () Int)

(assert (=> d!2194049 (= lt!2518764 e!4227735)))

(declare-fun c!1308085 () Bool)

(assert (=> d!2194049 (= c!1308085 (is-Nil!67790 (exprs!6958 ct2!306)))))

(assert (=> d!2194049 (= (size!41060 (exprs!6958 ct2!306)) lt!2518764)))

(declare-fun b!7032673 () Bool)

(assert (=> b!7032673 (= e!4227735 0)))

(declare-fun b!7032674 () Bool)

(assert (=> b!7032674 (= e!4227735 (+ 1 (size!41060 (t!381679 (exprs!6958 ct2!306)))))))

(assert (= (and d!2194049 c!1308085) b!7032673))

(assert (= (and d!2194049 (not c!1308085)) b!7032674))

(declare-fun m!7739458 () Bool)

(assert (=> b!7032674 m!7739458))

(assert (=> b!7032325 d!2194049))

(declare-fun d!2194051 () Bool)

(declare-fun c!1308088 () Bool)

(assert (=> d!2194051 (= c!1308088 (is-Nil!67790 lt!2518657))))

(declare-fun e!4227738 () (Set Regex!17462))

(assert (=> d!2194051 (= (content!13530 lt!2518657) e!4227738)))

(declare-fun b!7032679 () Bool)

(assert (=> b!7032679 (= e!4227738 (as set.empty (Set Regex!17462)))))

(declare-fun b!7032680 () Bool)

(assert (=> b!7032680 (= e!4227738 (set.union (set.insert (h!74238 lt!2518657) (as set.empty (Set Regex!17462))) (content!13530 (t!381679 lt!2518657))))))

(assert (= (and d!2194051 c!1308088) b!7032679))

(assert (= (and d!2194051 (not c!1308088)) b!7032680))

(declare-fun m!7739460 () Bool)

(assert (=> b!7032680 m!7739460))

(declare-fun m!7739462 () Bool)

(assert (=> b!7032680 m!7739462))

(assert (=> d!2193829 d!2194051))

(declare-fun d!2194053 () Bool)

(declare-fun c!1308089 () Bool)

(assert (=> d!2194053 (= c!1308089 (is-Nil!67790 lt!2518415))))

(declare-fun e!4227739 () (Set Regex!17462))

(assert (=> d!2194053 (= (content!13530 lt!2518415) e!4227739)))

(declare-fun b!7032681 () Bool)

(assert (=> b!7032681 (= e!4227739 (as set.empty (Set Regex!17462)))))

(declare-fun b!7032682 () Bool)

(assert (=> b!7032682 (= e!4227739 (set.union (set.insert (h!74238 lt!2518415) (as set.empty (Set Regex!17462))) (content!13530 (t!381679 lt!2518415))))))

(assert (= (and d!2194053 c!1308089) b!7032681))

(assert (= (and d!2194053 (not c!1308089)) b!7032682))

(declare-fun m!7739464 () Bool)

(assert (=> b!7032682 m!7739464))

(declare-fun m!7739466 () Bool)

(assert (=> b!7032682 m!7739466))

(assert (=> d!2193829 d!2194053))

(declare-fun d!2194055 () Bool)

(declare-fun c!1308090 () Bool)

(assert (=> d!2194055 (= c!1308090 (is-Nil!67790 (exprs!6958 ct2!306)))))

(declare-fun e!4227740 () (Set Regex!17462))

(assert (=> d!2194055 (= (content!13530 (exprs!6958 ct2!306)) e!4227740)))

(declare-fun b!7032683 () Bool)

(assert (=> b!7032683 (= e!4227740 (as set.empty (Set Regex!17462)))))

(declare-fun b!7032684 () Bool)

(assert (=> b!7032684 (= e!4227740 (set.union (set.insert (h!74238 (exprs!6958 ct2!306)) (as set.empty (Set Regex!17462))) (content!13530 (t!381679 (exprs!6958 ct2!306)))))))

(assert (= (and d!2194055 c!1308090) b!7032683))

(assert (= (and d!2194055 (not c!1308090)) b!7032684))

(declare-fun m!7739468 () Bool)

(assert (=> b!7032684 m!7739468))

(declare-fun m!7739470 () Bool)

(assert (=> b!7032684 m!7739470))

(assert (=> d!2193829 d!2194055))

(declare-fun d!2194057 () Bool)

(declare-fun c!1308091 () Bool)

(assert (=> d!2194057 (= c!1308091 (isEmpty!39536 s!7408))))

(declare-fun e!4227741 () Bool)

(assert (=> d!2194057 (= (matchZipper!3002 lt!2518422 s!7408) e!4227741)))

(declare-fun b!7032685 () Bool)

(assert (=> b!7032685 (= e!4227741 (nullableZipper!2578 lt!2518422))))

(declare-fun b!7032686 () Bool)

(assert (=> b!7032686 (= e!4227741 (matchZipper!3002 (derivationStepZipper!2918 lt!2518422 (head!14261 s!7408)) (tail!13550 s!7408)))))

(assert (= (and d!2194057 c!1308091) b!7032685))

(assert (= (and d!2194057 (not c!1308091)) b!7032686))

(assert (=> d!2194057 m!7738774))

(assert (=> b!7032685 m!7738938))

(assert (=> b!7032686 m!7738778))

(assert (=> b!7032686 m!7738778))

(declare-fun m!7739472 () Bool)

(assert (=> b!7032686 m!7739472))

(assert (=> b!7032686 m!7738782))

(assert (=> b!7032686 m!7739472))

(assert (=> b!7032686 m!7738782))

(declare-fun m!7739474 () Bool)

(assert (=> b!7032686 m!7739474))

(assert (=> b!7032414 d!2194057))

(declare-fun d!2194059 () Bool)

(declare-fun e!4227747 () Bool)

(assert (=> d!2194059 e!4227747))

(declare-fun res!2870837 () Bool)

(assert (=> d!2194059 (=> (not res!2870837) (not e!4227747))))

(declare-fun a!13202 () Context!12916)

(assert (=> d!2194059 (= res!2870837 (= lt!2518435 (dynLambda!27376 lambda!414585 a!13202)))))

(declare-fun e!4227746 () Bool)

(assert (=> d!2194059 (and (inv!86515 a!13202) e!4227746)))

(assert (=> d!2194059 (= (choose!53246 z1!570 lambda!414585 lt!2518435) a!13202)))

(declare-fun b!7032692 () Bool)

(declare-fun tp!1936422 () Bool)

(assert (=> b!7032692 (= e!4227746 tp!1936422)))

(declare-fun b!7032693 () Bool)

(assert (=> b!7032693 (= e!4227747 (set.member a!13202 z1!570))))

(assert (= d!2194059 b!7032692))

(assert (= (and d!2194059 res!2870837) b!7032693))

(declare-fun b_lambda!266451 () Bool)

(assert (=> (not b_lambda!266451) (not d!2194059)))

(declare-fun m!7739476 () Bool)

(assert (=> d!2194059 m!7739476))

(declare-fun m!7739478 () Bool)

(assert (=> d!2194059 m!7739478))

(declare-fun m!7739480 () Bool)

(assert (=> b!7032693 m!7739480))

(assert (=> d!2193811 d!2194059))

(declare-fun d!2194061 () Bool)

(assert (=> d!2194061 (= (map!15761 z1!570 lambda!414585) (choose!53250 z1!570 lambda!414585))))

(declare-fun bs!1870665 () Bool)

(assert (= bs!1870665 d!2194061))

(declare-fun m!7739482 () Bool)

(assert (=> bs!1870665 m!7739482))

(assert (=> d!2193811 d!2194061))

(declare-fun e!4227749 () (Set Context!12916))

(declare-fun b!7032694 () Bool)

(declare-fun call!638629 () (Set Context!12916))

(assert (=> b!7032694 (= e!4227749 (set.union call!638629 (derivationStepZipperUp!2072 (Context!12917 (t!381679 (exprs!6958 (Context!12917 (t!381679 (exprs!6958 lt!2518444)))))) (h!74239 s!7408))))))

(declare-fun b!7032695 () Bool)

(declare-fun e!4227748 () (Set Context!12916))

(assert (=> b!7032695 (= e!4227748 (as set.empty (Set Context!12916)))))

(declare-fun b!7032696 () Bool)

(assert (=> b!7032696 (= e!4227748 call!638629)))

(declare-fun b!7032697 () Bool)

(assert (=> b!7032697 (= e!4227749 e!4227748)))

(declare-fun c!1308093 () Bool)

(assert (=> b!7032697 (= c!1308093 (is-Cons!67790 (exprs!6958 (Context!12917 (t!381679 (exprs!6958 lt!2518444))))))))

(declare-fun b!7032698 () Bool)

(declare-fun e!4227750 () Bool)

(assert (=> b!7032698 (= e!4227750 (nullable!7173 (h!74238 (exprs!6958 (Context!12917 (t!381679 (exprs!6958 lt!2518444)))))))))

(declare-fun bm!638624 () Bool)

(assert (=> bm!638624 (= call!638629 (derivationStepZipperDown!2126 (h!74238 (exprs!6958 (Context!12917 (t!381679 (exprs!6958 lt!2518444))))) (Context!12917 (t!381679 (exprs!6958 (Context!12917 (t!381679 (exprs!6958 lt!2518444)))))) (h!74239 s!7408)))))

(declare-fun d!2194063 () Bool)

(declare-fun c!1308092 () Bool)

(assert (=> d!2194063 (= c!1308092 e!4227750)))

(declare-fun res!2870838 () Bool)

(assert (=> d!2194063 (=> (not res!2870838) (not e!4227750))))

(assert (=> d!2194063 (= res!2870838 (is-Cons!67790 (exprs!6958 (Context!12917 (t!381679 (exprs!6958 lt!2518444))))))))

(assert (=> d!2194063 (= (derivationStepZipperUp!2072 (Context!12917 (t!381679 (exprs!6958 lt!2518444))) (h!74239 s!7408)) e!4227749)))

(assert (= (and d!2194063 res!2870838) b!7032698))

(assert (= (and d!2194063 c!1308092) b!7032694))

(assert (= (and d!2194063 (not c!1308092)) b!7032697))

(assert (= (and b!7032697 c!1308093) b!7032696))

(assert (= (and b!7032697 (not c!1308093)) b!7032695))

(assert (= (or b!7032694 b!7032696) bm!638624))

(declare-fun m!7739484 () Bool)

(assert (=> b!7032694 m!7739484))

(declare-fun m!7739486 () Bool)

(assert (=> b!7032698 m!7739486))

(declare-fun m!7739488 () Bool)

(assert (=> bm!638624 m!7739488))

(assert (=> b!7032367 d!2194063))

(assert (=> b!7032314 d!2193837))

(declare-fun b!7032699 () Bool)

(declare-fun e!4227751 () List!67914)

(assert (=> b!7032699 (= e!4227751 (exprs!6958 ct2!306))))

(declare-fun d!2194065 () Bool)

(declare-fun e!4227752 () Bool)

(assert (=> d!2194065 e!4227752))

(declare-fun res!2870840 () Bool)

(assert (=> d!2194065 (=> (not res!2870840) (not e!4227752))))

(declare-fun lt!2518765 () List!67914)

(assert (=> d!2194065 (= res!2870840 (= (content!13530 lt!2518765) (set.union (content!13530 (t!381679 lt!2518415)) (content!13530 (exprs!6958 ct2!306)))))))

(assert (=> d!2194065 (= lt!2518765 e!4227751)))

(declare-fun c!1308094 () Bool)

(assert (=> d!2194065 (= c!1308094 (is-Nil!67790 (t!381679 lt!2518415)))))

(assert (=> d!2194065 (= (++!15504 (t!381679 lt!2518415) (exprs!6958 ct2!306)) lt!2518765)))

(declare-fun b!7032702 () Bool)

(assert (=> b!7032702 (= e!4227752 (or (not (= (exprs!6958 ct2!306) Nil!67790)) (= lt!2518765 (t!381679 lt!2518415))))))

(declare-fun b!7032701 () Bool)

(declare-fun res!2870839 () Bool)

(assert (=> b!7032701 (=> (not res!2870839) (not e!4227752))))

(assert (=> b!7032701 (= res!2870839 (= (size!41060 lt!2518765) (+ (size!41060 (t!381679 lt!2518415)) (size!41060 (exprs!6958 ct2!306)))))))

(declare-fun b!7032700 () Bool)

(assert (=> b!7032700 (= e!4227751 (Cons!67790 (h!74238 (t!381679 lt!2518415)) (++!15504 (t!381679 (t!381679 lt!2518415)) (exprs!6958 ct2!306))))))

(assert (= (and d!2194065 c!1308094) b!7032699))

(assert (= (and d!2194065 (not c!1308094)) b!7032700))

(assert (= (and d!2194065 res!2870840) b!7032701))

(assert (= (and b!7032701 res!2870839) b!7032702))

(declare-fun m!7739490 () Bool)

(assert (=> d!2194065 m!7739490))

(assert (=> d!2194065 m!7739466))

(assert (=> d!2194065 m!7738866))

(declare-fun m!7739492 () Bool)

(assert (=> b!7032701 m!7739492))

(declare-fun m!7739494 () Bool)

(assert (=> b!7032701 m!7739494))

(assert (=> b!7032701 m!7738872))

(declare-fun m!7739496 () Bool)

(assert (=> b!7032700 m!7739496))

(assert (=> b!7032373 d!2194065))

(declare-fun d!2194067 () Bool)

(declare-fun res!2870845 () Bool)

(declare-fun e!4227757 () Bool)

(assert (=> d!2194067 (=> res!2870845 e!4227757)))

(assert (=> d!2194067 (= res!2870845 (is-Nil!67792 lt!2518451))))

(assert (=> d!2194067 (= (forall!16375 lt!2518451 lambda!414659) e!4227757)))

(declare-fun b!7032707 () Bool)

(declare-fun e!4227758 () Bool)

(assert (=> b!7032707 (= e!4227757 e!4227758)))

(declare-fun res!2870846 () Bool)

(assert (=> b!7032707 (=> (not res!2870846) (not e!4227758))))

(assert (=> b!7032707 (= res!2870846 (dynLambda!27374 lambda!414659 (h!74240 lt!2518451)))))

(declare-fun b!7032708 () Bool)

(assert (=> b!7032708 (= e!4227758 (forall!16375 (t!381681 lt!2518451) lambda!414659))))

(assert (= (and d!2194067 (not res!2870845)) b!7032707))

(assert (= (and b!7032707 res!2870846) b!7032708))

(declare-fun b_lambda!266453 () Bool)

(assert (=> (not b_lambda!266453) (not b!7032707)))

(declare-fun m!7739498 () Bool)

(assert (=> b!7032707 m!7739498))

(declare-fun m!7739500 () Bool)

(assert (=> b!7032708 m!7739500))

(assert (=> d!2193779 d!2194067))

(declare-fun d!2194069 () Bool)

(assert (=> d!2194069 true))

(declare-fun setRes!49157 () Bool)

(assert (=> d!2194069 setRes!49157))

(declare-fun condSetEmpty!49157 () Bool)

(declare-fun res!2870849 () (Set Context!12916))

(assert (=> d!2194069 (= condSetEmpty!49157 (= res!2870849 (as set.empty (Set Context!12916))))))

(assert (=> d!2194069 (= (choose!53243 lt!2518429 lambda!414587) res!2870849)))

(declare-fun setIsEmpty!49157 () Bool)

(assert (=> setIsEmpty!49157 setRes!49157))

(declare-fun e!4227761 () Bool)

(declare-fun tp!1936427 () Bool)

(declare-fun setElem!49157 () Context!12916)

(declare-fun setNonEmpty!49157 () Bool)

(assert (=> setNonEmpty!49157 (= setRes!49157 (and tp!1936427 (inv!86515 setElem!49157) e!4227761))))

(declare-fun setRest!49157 () (Set Context!12916))

(assert (=> setNonEmpty!49157 (= res!2870849 (set.union (set.insert setElem!49157 (as set.empty (Set Context!12916))) setRest!49157))))

(declare-fun b!7032711 () Bool)

(declare-fun tp!1936428 () Bool)

(assert (=> b!7032711 (= e!4227761 tp!1936428)))

(assert (= (and d!2194069 condSetEmpty!49157) setIsEmpty!49157))

(assert (= (and d!2194069 (not condSetEmpty!49157)) setNonEmpty!49157))

(assert (= setNonEmpty!49157 b!7032711))

(declare-fun m!7739502 () Bool)

(assert (=> setNonEmpty!49157 m!7739502))

(assert (=> d!2193875 d!2194069))

(declare-fun d!2194071 () Bool)

(assert (=> d!2194071 (= (isEmpty!39536 s!7408) (is-Nil!67791 s!7408))))

(assert (=> d!2193819 d!2194071))

(assert (=> bs!1870596 d!2193871))

(declare-fun d!2194073 () Bool)

(declare-fun res!2870854 () Bool)

(declare-fun e!4227766 () Bool)

(assert (=> d!2194073 (=> res!2870854 e!4227766)))

(assert (=> d!2194073 (= res!2870854 (is-Nil!67792 lt!2518679))))

(assert (=> d!2194073 (= (noDuplicate!2626 lt!2518679) e!4227766)))

(declare-fun b!7032716 () Bool)

(declare-fun e!4227767 () Bool)

(assert (=> b!7032716 (= e!4227766 e!4227767)))

(declare-fun res!2870855 () Bool)

(assert (=> b!7032716 (=> (not res!2870855) (not e!4227767))))

(assert (=> b!7032716 (= res!2870855 (not (contains!20455 (t!381681 lt!2518679) (h!74240 lt!2518679))))))

(declare-fun b!7032717 () Bool)

(assert (=> b!7032717 (= e!4227767 (noDuplicate!2626 (t!381681 lt!2518679)))))

(assert (= (and d!2194073 (not res!2870854)) b!7032716))

(assert (= (and b!7032716 res!2870855) b!7032717))

(declare-fun m!7739504 () Bool)

(assert (=> b!7032716 m!7739504))

(declare-fun m!7739506 () Bool)

(assert (=> b!7032717 m!7739506))

(assert (=> d!2193867 d!2194073))

(declare-fun d!2194075 () Bool)

(declare-fun e!4227775 () Bool)

(assert (=> d!2194075 e!4227775))

(declare-fun res!2870860 () Bool)

(assert (=> d!2194075 (=> (not res!2870860) (not e!4227775))))

(declare-fun res!2870861 () List!67916)

(assert (=> d!2194075 (= res!2870860 (noDuplicate!2626 res!2870861))))

(declare-fun e!4227774 () Bool)

(assert (=> d!2194075 e!4227774))

(assert (=> d!2194075 (= (choose!53240 z1!570) res!2870861)))

(declare-fun b!7032725 () Bool)

(declare-fun e!4227776 () Bool)

(declare-fun tp!1936434 () Bool)

(assert (=> b!7032725 (= e!4227776 tp!1936434)))

(declare-fun tp!1936433 () Bool)

(declare-fun b!7032724 () Bool)

(assert (=> b!7032724 (= e!4227774 (and (inv!86515 (h!74240 res!2870861)) e!4227776 tp!1936433))))

(declare-fun b!7032726 () Bool)

(assert (=> b!7032726 (= e!4227775 (= (content!13529 res!2870861) z1!570))))

(assert (= b!7032724 b!7032725))

(assert (= (and d!2194075 (is-Cons!67792 res!2870861)) b!7032724))

(assert (= (and d!2194075 res!2870860) b!7032726))

(declare-fun m!7739508 () Bool)

(assert (=> d!2194075 m!7739508))

(declare-fun m!7739510 () Bool)

(assert (=> b!7032724 m!7739510))

(declare-fun m!7739512 () Bool)

(assert (=> b!7032726 m!7739512))

(assert (=> d!2193867 d!2194075))

(declare-fun d!2194077 () Bool)

(declare-fun c!1308095 () Bool)

(assert (=> d!2194077 (= c!1308095 (isEmpty!39536 (tail!13550 (t!381680 s!7408))))))

(declare-fun e!4227777 () Bool)

(assert (=> d!2194077 (= (matchZipper!3002 (derivationStepZipper!2918 lt!2518456 (head!14261 (t!381680 s!7408))) (tail!13550 (t!381680 s!7408))) e!4227777)))

(declare-fun b!7032727 () Bool)

(assert (=> b!7032727 (= e!4227777 (nullableZipper!2578 (derivationStepZipper!2918 lt!2518456 (head!14261 (t!381680 s!7408)))))))

(declare-fun b!7032728 () Bool)

(assert (=> b!7032728 (= e!4227777 (matchZipper!3002 (derivationStepZipper!2918 (derivationStepZipper!2918 lt!2518456 (head!14261 (t!381680 s!7408))) (head!14261 (tail!13550 (t!381680 s!7408)))) (tail!13550 (tail!13550 (t!381680 s!7408)))))))

(assert (= (and d!2194077 c!1308095) b!7032727))

(assert (= (and d!2194077 (not c!1308095)) b!7032728))

(assert (=> d!2194077 m!7738836))

(declare-fun m!7739514 () Bool)

(assert (=> d!2194077 m!7739514))

(assert (=> b!7032727 m!7738842))

(declare-fun m!7739516 () Bool)

(assert (=> b!7032727 m!7739516))

(assert (=> b!7032728 m!7738836))

(declare-fun m!7739518 () Bool)

(assert (=> b!7032728 m!7739518))

(assert (=> b!7032728 m!7738842))

(assert (=> b!7032728 m!7739518))

(declare-fun m!7739520 () Bool)

(assert (=> b!7032728 m!7739520))

(assert (=> b!7032728 m!7738836))

(declare-fun m!7739522 () Bool)

(assert (=> b!7032728 m!7739522))

(assert (=> b!7032728 m!7739520))

(assert (=> b!7032728 m!7739522))

(declare-fun m!7739524 () Bool)

(assert (=> b!7032728 m!7739524))

(assert (=> b!7032309 d!2194077))

(declare-fun bs!1870666 () Bool)

(declare-fun d!2194079 () Bool)

(assert (= bs!1870666 (and d!2194079 b!7032161)))

(declare-fun lambda!414704 () Int)

(assert (=> bs!1870666 (= (= (head!14261 (t!381680 s!7408)) (h!74239 s!7408)) (= lambda!414704 lambda!414587))))

(declare-fun bs!1870667 () Bool)

(assert (= bs!1870667 (and d!2194079 d!2193793)))

(assert (=> bs!1870667 (= (= (head!14261 (t!381680 s!7408)) (h!74239 s!7408)) (= lambda!414704 lambda!414662))))

(declare-fun bs!1870668 () Bool)

(assert (= bs!1870668 (and d!2194079 d!2193845)))

(assert (=> bs!1870668 (= (= (head!14261 (t!381680 s!7408)) (h!74239 s!7408)) (= lambda!414704 lambda!414676))))

(assert (=> d!2194079 true))

(assert (=> d!2194079 (= (derivationStepZipper!2918 lt!2518456 (head!14261 (t!381680 s!7408))) (flatMap!2409 lt!2518456 lambda!414704))))

(declare-fun bs!1870669 () Bool)

(assert (= bs!1870669 d!2194079))

(declare-fun m!7739526 () Bool)

(assert (=> bs!1870669 m!7739526))

(assert (=> b!7032309 d!2194079))

(declare-fun d!2194081 () Bool)

(assert (=> d!2194081 (= (head!14261 (t!381680 s!7408)) (h!74239 (t!381680 s!7408)))))

(assert (=> b!7032309 d!2194081))

(declare-fun d!2194083 () Bool)

(assert (=> d!2194083 (= (tail!13550 (t!381680 s!7408)) (t!381680 (t!381680 s!7408)))))

(assert (=> b!7032309 d!2194083))

(declare-fun bs!1870670 () Bool)

(declare-fun d!2194085 () Bool)

(assert (= bs!1870670 (and d!2194085 d!2193813)))

(declare-fun lambda!414705 () Int)

(assert (=> bs!1870670 (= lambda!414705 lambda!414665)))

(declare-fun bs!1870671 () Bool)

(assert (= bs!1870671 (and d!2194085 d!2193833)))

(assert (=> bs!1870671 (not (= lambda!414705 lambda!414675))))

(declare-fun bs!1870672 () Bool)

(assert (= bs!1870672 (and d!2194085 b!7032169)))

(assert (=> bs!1870672 (not (= lambda!414705 lambda!414586))))

(declare-fun bs!1870673 () Bool)

(assert (= bs!1870673 (and d!2194085 d!2193817)))

(assert (=> bs!1870673 (= lambda!414705 lambda!414666)))

(declare-fun bs!1870674 () Bool)

(assert (= bs!1870674 (and d!2194085 d!2193823)))

(assert (=> bs!1870674 (not (= lambda!414705 lambda!414674))))

(assert (=> d!2194085 (= (nullableContext!82 lt!2518654) (forall!16376 (exprs!6958 lt!2518654) lambda!414705))))

(declare-fun bs!1870675 () Bool)

(assert (= bs!1870675 d!2194085))

(declare-fun m!7739528 () Bool)

(assert (=> bs!1870675 m!7739528))

(assert (=> bs!1870594 d!2194085))

(declare-fun d!2194087 () Bool)

(declare-fun c!1308098 () Bool)

(assert (=> d!2194087 (= c!1308098 (is-Nil!67792 lt!2518679))))

(declare-fun e!4227780 () (Set Context!12916))

(assert (=> d!2194087 (= (content!13529 lt!2518679) e!4227780)))

(declare-fun b!7032733 () Bool)

(assert (=> b!7032733 (= e!4227780 (as set.empty (Set Context!12916)))))

(declare-fun b!7032734 () Bool)

(assert (=> b!7032734 (= e!4227780 (set.union (set.insert (h!74240 lt!2518679) (as set.empty (Set Context!12916))) (content!13529 (t!381681 lt!2518679))))))

(assert (= (and d!2194087 c!1308098) b!7032733))

(assert (= (and d!2194087 (not c!1308098)) b!7032734))

(declare-fun m!7739530 () Bool)

(assert (=> b!7032734 m!7739530))

(declare-fun m!7739532 () Bool)

(assert (=> b!7032734 m!7739532))

(assert (=> b!7032423 d!2194087))

(assert (=> d!2193843 d!2193841))

(declare-fun d!2194089 () Bool)

(assert (=> d!2194089 (= (flatMap!2409 lt!2518448 lambda!414587) (dynLambda!27375 lambda!414587 lt!2518444))))

(assert (=> d!2194089 true))

(declare-fun _$13!4474 () Unit!161594)

(assert (=> d!2194089 (= (choose!53242 lt!2518448 lt!2518444 lambda!414587) _$13!4474)))

(declare-fun b_lambda!266455 () Bool)

(assert (=> (not b_lambda!266455) (not d!2194089)))

(declare-fun bs!1870676 () Bool)

(assert (= bs!1870676 d!2194089))

(assert (=> bs!1870676 m!7738526))

(assert (=> bs!1870676 m!7738956))

(assert (=> d!2193843 d!2194089))

(declare-fun d!2194091 () Bool)

(assert (=> d!2194091 (= (isEmpty!39536 (t!381680 s!7408)) (is-Nil!67791 (t!381680 s!7408)))))

(assert (=> d!2193801 d!2194091))

(declare-fun d!2194093 () Bool)

(declare-fun c!1308099 () Bool)

(assert (=> d!2194093 (= c!1308099 (isEmpty!39536 (tail!13550 s!7408)))))

(declare-fun e!4227781 () Bool)

(assert (=> d!2194093 (= (matchZipper!3002 (derivationStepZipper!2918 lt!2518432 (head!14261 s!7408)) (tail!13550 s!7408)) e!4227781)))

(declare-fun b!7032735 () Bool)

(assert (=> b!7032735 (= e!4227781 (nullableZipper!2578 (derivationStepZipper!2918 lt!2518432 (head!14261 s!7408))))))

(declare-fun b!7032736 () Bool)

(assert (=> b!7032736 (= e!4227781 (matchZipper!3002 (derivationStepZipper!2918 (derivationStepZipper!2918 lt!2518432 (head!14261 s!7408)) (head!14261 (tail!13550 s!7408))) (tail!13550 (tail!13550 s!7408))))))

(assert (= (and d!2194093 c!1308099) b!7032735))

(assert (= (and d!2194093 (not c!1308099)) b!7032736))

(assert (=> d!2194093 m!7738782))

(declare-fun m!7739534 () Bool)

(assert (=> d!2194093 m!7739534))

(assert (=> b!7032735 m!7738898))

(declare-fun m!7739536 () Bool)

(assert (=> b!7032735 m!7739536))

(assert (=> b!7032736 m!7738782))

(declare-fun m!7739538 () Bool)

(assert (=> b!7032736 m!7739538))

(assert (=> b!7032736 m!7738898))

(assert (=> b!7032736 m!7739538))

(declare-fun m!7739540 () Bool)

(assert (=> b!7032736 m!7739540))

(assert (=> b!7032736 m!7738782))

(declare-fun m!7739542 () Bool)

(assert (=> b!7032736 m!7739542))

(assert (=> b!7032736 m!7739540))

(assert (=> b!7032736 m!7739542))

(declare-fun m!7739544 () Bool)

(assert (=> b!7032736 m!7739544))

(assert (=> b!7032333 d!2194093))

(declare-fun bs!1870677 () Bool)

(declare-fun d!2194095 () Bool)

(assert (= bs!1870677 (and d!2194095 b!7032161)))

(declare-fun lambda!414706 () Int)

(assert (=> bs!1870677 (= (= (head!14261 s!7408) (h!74239 s!7408)) (= lambda!414706 lambda!414587))))

(declare-fun bs!1870678 () Bool)

(assert (= bs!1870678 (and d!2194095 d!2193793)))

(assert (=> bs!1870678 (= (= (head!14261 s!7408) (h!74239 s!7408)) (= lambda!414706 lambda!414662))))

(declare-fun bs!1870679 () Bool)

(assert (= bs!1870679 (and d!2194095 d!2193845)))

(assert (=> bs!1870679 (= (= (head!14261 s!7408) (h!74239 s!7408)) (= lambda!414706 lambda!414676))))

(declare-fun bs!1870680 () Bool)

(assert (= bs!1870680 (and d!2194095 d!2194079)))

(assert (=> bs!1870680 (= (= (head!14261 s!7408) (head!14261 (t!381680 s!7408))) (= lambda!414706 lambda!414704))))

(assert (=> d!2194095 true))

(assert (=> d!2194095 (= (derivationStepZipper!2918 lt!2518432 (head!14261 s!7408)) (flatMap!2409 lt!2518432 lambda!414706))))

(declare-fun bs!1870681 () Bool)

(assert (= bs!1870681 d!2194095))

(declare-fun m!7739546 () Bool)

(assert (=> bs!1870681 m!7739546))

(assert (=> b!7032333 d!2194095))

(declare-fun d!2194097 () Bool)

(assert (=> d!2194097 (= (head!14261 s!7408) (h!74239 s!7408))))

(assert (=> b!7032333 d!2194097))

(declare-fun d!2194099 () Bool)

(assert (=> d!2194099 (= (tail!13550 s!7408) (t!381680 s!7408))))

(assert (=> b!7032333 d!2194099))

(declare-fun d!2194101 () Bool)

(declare-fun c!1308100 () Bool)

(assert (=> d!2194101 (= c!1308100 (isEmpty!39536 (_1!37338 (get!23749 lt!2518673))))))

(declare-fun e!4227782 () Bool)

(assert (=> d!2194101 (= (matchZipper!3002 lt!2518429 (_1!37338 (get!23749 lt!2518673))) e!4227782)))

(declare-fun b!7032737 () Bool)

(assert (=> b!7032737 (= e!4227782 (nullableZipper!2578 lt!2518429))))

(declare-fun b!7032738 () Bool)

(assert (=> b!7032738 (= e!4227782 (matchZipper!3002 (derivationStepZipper!2918 lt!2518429 (head!14261 (_1!37338 (get!23749 lt!2518673)))) (tail!13550 (_1!37338 (get!23749 lt!2518673)))))))

(assert (= (and d!2194101 c!1308100) b!7032737))

(assert (= (and d!2194101 (not c!1308100)) b!7032738))

(declare-fun m!7739548 () Bool)

(assert (=> d!2194101 m!7739548))

(assert (=> b!7032737 m!7738964))

(declare-fun m!7739550 () Bool)

(assert (=> b!7032738 m!7739550))

(assert (=> b!7032738 m!7739550))

(declare-fun m!7739552 () Bool)

(assert (=> b!7032738 m!7739552))

(declare-fun m!7739554 () Bool)

(assert (=> b!7032738 m!7739554))

(assert (=> b!7032738 m!7739552))

(assert (=> b!7032738 m!7739554))

(declare-fun m!7739556 () Bool)

(assert (=> b!7032738 m!7739556))

(assert (=> b!7032411 d!2194101))

(declare-fun d!2194103 () Bool)

(assert (=> d!2194103 (= (get!23749 lt!2518673) (v!53150 lt!2518673))))

(assert (=> b!7032411 d!2194103))

(declare-fun d!2194105 () Bool)

(assert (=> d!2194105 (= (flatMap!2409 lt!2518448 lambda!414676) (choose!53243 lt!2518448 lambda!414676))))

(declare-fun bs!1870682 () Bool)

(assert (= bs!1870682 d!2194105))

(declare-fun m!7739558 () Bool)

(assert (=> bs!1870682 m!7739558))

(assert (=> d!2193845 d!2194105))

(declare-fun b!7032739 () Bool)

(declare-fun e!4227784 () Option!16867)

(assert (=> b!7032739 (= e!4227784 None!16866)))

(declare-fun b!7032741 () Bool)

(declare-fun lt!2518766 () Unit!161594)

(declare-fun lt!2518767 () Unit!161594)

(assert (=> b!7032741 (= lt!2518766 lt!2518767)))

(assert (=> b!7032741 (= (++!15505 (++!15505 Nil!67791 (Cons!67791 (h!74239 s!7408) Nil!67791)) (t!381680 s!7408)) s!7408)))

(assert (=> b!7032741 (= lt!2518767 (lemmaMoveElementToOtherListKeepsConcatEq!2922 Nil!67791 (h!74239 s!7408) (t!381680 s!7408) s!7408))))

(assert (=> b!7032741 (= e!4227784 (findConcatSeparationZippers!383 lt!2518429 (set.insert ct2!306 (as set.empty (Set Context!12916))) (++!15505 Nil!67791 (Cons!67791 (h!74239 s!7408) Nil!67791)) (t!381680 s!7408) s!7408))))

(declare-fun b!7032742 () Bool)

(declare-fun e!4227787 () Option!16867)

(assert (=> b!7032742 (= e!4227787 e!4227784)))

(declare-fun c!1308101 () Bool)

(assert (=> b!7032742 (= c!1308101 (is-Nil!67791 s!7408))))

(declare-fun b!7032743 () Bool)

(declare-fun e!4227786 () Bool)

(declare-fun lt!2518768 () Option!16867)

(assert (=> b!7032743 (= e!4227786 (not (isDefined!13568 lt!2518768)))))

(declare-fun b!7032744 () Bool)

(declare-fun res!2870865 () Bool)

(declare-fun e!4227785 () Bool)

(assert (=> b!7032744 (=> (not res!2870865) (not e!4227785))))

(assert (=> b!7032744 (= res!2870865 (matchZipper!3002 lt!2518429 (_1!37338 (get!23749 lt!2518768))))))

(declare-fun b!7032745 () Bool)

(assert (=> b!7032745 (= e!4227787 (Some!16866 (tuple2!68071 Nil!67791 s!7408)))))

(declare-fun b!7032746 () Bool)

(declare-fun res!2870864 () Bool)

(assert (=> b!7032746 (=> (not res!2870864) (not e!4227785))))

(assert (=> b!7032746 (= res!2870864 (matchZipper!3002 (set.insert ct2!306 (as set.empty (Set Context!12916))) (_2!37338 (get!23749 lt!2518768))))))

(declare-fun b!7032747 () Bool)

(declare-fun e!4227783 () Bool)

(assert (=> b!7032747 (= e!4227783 (matchZipper!3002 (set.insert ct2!306 (as set.empty (Set Context!12916))) s!7408))))

(declare-fun d!2194107 () Bool)

(assert (=> d!2194107 e!4227786))

(declare-fun res!2870866 () Bool)

(assert (=> d!2194107 (=> res!2870866 e!4227786)))

(assert (=> d!2194107 (= res!2870866 e!4227785)))

(declare-fun res!2870862 () Bool)

(assert (=> d!2194107 (=> (not res!2870862) (not e!4227785))))

(assert (=> d!2194107 (= res!2870862 (isDefined!13568 lt!2518768))))

(assert (=> d!2194107 (= lt!2518768 e!4227787)))

(declare-fun c!1308102 () Bool)

(assert (=> d!2194107 (= c!1308102 e!4227783)))

(declare-fun res!2870863 () Bool)

(assert (=> d!2194107 (=> (not res!2870863) (not e!4227783))))

(assert (=> d!2194107 (= res!2870863 (matchZipper!3002 lt!2518429 Nil!67791))))

(assert (=> d!2194107 (= (++!15505 Nil!67791 s!7408) s!7408)))

(assert (=> d!2194107 (= (findConcatSeparationZippers!383 lt!2518429 (set.insert ct2!306 (as set.empty (Set Context!12916))) Nil!67791 s!7408 s!7408) lt!2518768)))

(declare-fun b!7032740 () Bool)

(assert (=> b!7032740 (= e!4227785 (= (++!15505 (_1!37338 (get!23749 lt!2518768)) (_2!37338 (get!23749 lt!2518768))) s!7408))))

(assert (= (and d!2194107 res!2870863) b!7032747))

(assert (= (and d!2194107 c!1308102) b!7032745))

(assert (= (and d!2194107 (not c!1308102)) b!7032742))

(assert (= (and b!7032742 c!1308101) b!7032739))

(assert (= (and b!7032742 (not c!1308101)) b!7032741))

(assert (= (and d!2194107 res!2870862) b!7032744))

(assert (= (and b!7032744 res!2870865) b!7032746))

(assert (= (and b!7032746 res!2870864) b!7032740))

(assert (= (and d!2194107 (not res!2870866)) b!7032743))

(assert (=> b!7032741 m!7738986))

(assert (=> b!7032741 m!7738986))

(assert (=> b!7032741 m!7738988))

(assert (=> b!7032741 m!7738990))

(assert (=> b!7032741 m!7738546))

(assert (=> b!7032741 m!7738986))

(declare-fun m!7739560 () Bool)

(assert (=> b!7032741 m!7739560))

(declare-fun m!7739562 () Bool)

(assert (=> d!2194107 m!7739562))

(assert (=> d!2194107 m!7738996))

(assert (=> d!2194107 m!7738998))

(assert (=> b!7032743 m!7739562))

(declare-fun m!7739564 () Bool)

(assert (=> b!7032740 m!7739564))

(declare-fun m!7739566 () Bool)

(assert (=> b!7032740 m!7739566))

(assert (=> b!7032744 m!7739564))

(declare-fun m!7739568 () Bool)

(assert (=> b!7032744 m!7739568))

(assert (=> b!7032746 m!7739564))

(assert (=> b!7032746 m!7738546))

(declare-fun m!7739570 () Bool)

(assert (=> b!7032746 m!7739570))

(assert (=> b!7032747 m!7738546))

(declare-fun m!7739572 () Bool)

(assert (=> b!7032747 m!7739572))

(assert (=> d!2193855 d!2194107))

(declare-fun bs!1870683 () Bool)

(declare-fun d!2194109 () Bool)

(assert (= bs!1870683 (and d!2194109 b!7032169)))

(declare-fun lambda!414707 () Int)

(assert (=> bs!1870683 (= lambda!414707 lambda!414585)))

(declare-fun bs!1870684 () Bool)

(assert (= bs!1870684 (and d!2194109 d!2193821)))

(assert (=> bs!1870684 (= lambda!414707 lambda!414671)))

(assert (=> d!2194109 true))

(assert (=> d!2194109 (= (appendTo!583 lt!2518429 ct2!306) (map!15761 lt!2518429 lambda!414707))))

(declare-fun bs!1870685 () Bool)

(assert (= bs!1870685 d!2194109))

(declare-fun m!7739574 () Bool)

(assert (=> bs!1870685 m!7739574))

(assert (=> d!2193855 d!2194109))

(declare-fun d!2194111 () Bool)

(declare-fun c!1308103 () Bool)

(assert (=> d!2194111 (= c!1308103 (isEmpty!39536 s!7408))))

(declare-fun e!4227788 () Bool)

(assert (=> d!2194111 (= (matchZipper!3002 (appendTo!583 lt!2518429 ct2!306) s!7408) e!4227788)))

(declare-fun b!7032748 () Bool)

(assert (=> b!7032748 (= e!4227788 (nullableZipper!2578 (appendTo!583 lt!2518429 ct2!306)))))

(declare-fun b!7032749 () Bool)

(assert (=> b!7032749 (= e!4227788 (matchZipper!3002 (derivationStepZipper!2918 (appendTo!583 lt!2518429 ct2!306) (head!14261 s!7408)) (tail!13550 s!7408)))))

(assert (= (and d!2194111 c!1308103) b!7032748))

(assert (= (and d!2194111 (not c!1308103)) b!7032749))

(assert (=> d!2194111 m!7738774))

(assert (=> b!7032748 m!7738980))

(declare-fun m!7739576 () Bool)

(assert (=> b!7032748 m!7739576))

(assert (=> b!7032749 m!7738778))

(assert (=> b!7032749 m!7738980))

(assert (=> b!7032749 m!7738778))

(declare-fun m!7739578 () Bool)

(assert (=> b!7032749 m!7739578))

(assert (=> b!7032749 m!7738782))

(assert (=> b!7032749 m!7739578))

(assert (=> b!7032749 m!7738782))

(declare-fun m!7739580 () Bool)

(assert (=> b!7032749 m!7739580))

(assert (=> d!2193855 d!2194111))

(declare-fun d!2194113 () Bool)

(assert (=> d!2194113 (isDefined!13568 (findConcatSeparationZippers!383 lt!2518429 (set.insert ct2!306 (as set.empty (Set Context!12916))) Nil!67791 s!7408 s!7408))))

(assert (=> d!2194113 true))

(declare-fun _$50!569 () Unit!161594)

(assert (=> d!2194113 (= (choose!53247 lt!2518429 ct2!306 s!7408) _$50!569)))

(declare-fun bs!1870686 () Bool)

(assert (= bs!1870686 d!2194113))

(assert (=> bs!1870686 m!7738546))

(assert (=> bs!1870686 m!7738546))

(assert (=> bs!1870686 m!7738976))

(assert (=> bs!1870686 m!7738976))

(assert (=> bs!1870686 m!7738978))

(assert (=> d!2193855 d!2194113))

(declare-fun d!2194115 () Bool)

(assert (=> d!2194115 (= (isDefined!13568 (findConcatSeparationZippers!383 lt!2518429 (set.insert ct2!306 (as set.empty (Set Context!12916))) Nil!67791 s!7408 s!7408)) (not (isEmpty!39540 (findConcatSeparationZippers!383 lt!2518429 (set.insert ct2!306 (as set.empty (Set Context!12916))) Nil!67791 s!7408 s!7408))))))

(declare-fun bs!1870687 () Bool)

(assert (= bs!1870687 d!2194115))

(assert (=> bs!1870687 m!7738976))

(declare-fun m!7739582 () Bool)

(assert (=> bs!1870687 m!7739582))

(assert (=> d!2193855 d!2194115))

(declare-fun d!2194117 () Bool)

(assert (=> d!2194117 (= (isEmpty!39540 lt!2518445) (not (is-Some!16866 lt!2518445)))))

(assert (=> d!2193857 d!2194117))

(declare-fun bs!1870688 () Bool)

(declare-fun d!2194119 () Bool)

(assert (= bs!1870688 (and d!2194119 d!2194035)))

(declare-fun lambda!414708 () Int)

(assert (=> bs!1870688 (not (= lambda!414708 lambda!414702))))

(declare-fun bs!1870689 () Bool)

(assert (= bs!1870689 (and d!2194119 b!7032163)))

(assert (=> bs!1870689 (not (= lambda!414708 lambda!414584))))

(declare-fun bs!1870690 () Bool)

(assert (= bs!1870690 (and d!2194119 b!7032149)))

(assert (=> bs!1870690 (not (= lambda!414708 lambda!414588))))

(declare-fun bs!1870691 () Bool)

(assert (= bs!1870691 (and d!2194119 d!2193779)))

(assert (=> bs!1870691 (= (= lambda!414656 lambda!414584) (= lambda!414708 lambda!414659))))

(declare-fun bs!1870692 () Bool)

(assert (= bs!1870692 (and d!2194119 d!2193775)))

(assert (=> bs!1870692 (not (= lambda!414708 lambda!414656))))

(declare-fun bs!1870693 () Bool)

(assert (= bs!1870693 (and d!2194119 d!2194039)))

(assert (=> bs!1870693 (not (= lambda!414708 lambda!414703))))

(assert (=> d!2194119 true))

(assert (=> d!2194119 (< (dynLambda!27373 order!28171 lambda!414656) (dynLambda!27373 order!28171 lambda!414708))))

(assert (=> d!2194119 (= (exists!3387 lt!2518451 lambda!414656) (not (forall!16375 lt!2518451 lambda!414708)))))

(declare-fun bs!1870694 () Bool)

(assert (= bs!1870694 d!2194119))

(declare-fun m!7739584 () Bool)

(assert (=> bs!1870694 m!7739584))

(assert (=> d!2193775 d!2194119))

(declare-fun bs!1870695 () Bool)

(declare-fun d!2194121 () Bool)

(assert (= bs!1870695 (and d!2194121 d!2194035)))

(declare-fun lambda!414711 () Int)

(assert (=> bs!1870695 (not (= lambda!414711 lambda!414702))))

(declare-fun bs!1870696 () Bool)

(assert (= bs!1870696 (and d!2194121 b!7032163)))

(assert (=> bs!1870696 (= lambda!414711 lambda!414584)))

(declare-fun bs!1870697 () Bool)

(assert (= bs!1870697 (and d!2194121 b!7032149)))

(assert (=> bs!1870697 (not (= lambda!414711 lambda!414588))))

(declare-fun bs!1870698 () Bool)

(assert (= bs!1870698 (and d!2194121 d!2193779)))

(assert (=> bs!1870698 (not (= lambda!414711 lambda!414659))))

(declare-fun bs!1870699 () Bool)

(assert (= bs!1870699 (and d!2194121 d!2193775)))

(assert (=> bs!1870699 (= lambda!414711 lambda!414656)))

(declare-fun bs!1870700 () Bool)

(assert (= bs!1870700 (and d!2194121 d!2194119)))

(assert (=> bs!1870700 (not (= lambda!414711 lambda!414708))))

(declare-fun bs!1870701 () Bool)

(assert (= bs!1870701 (and d!2194121 d!2194039)))

(assert (=> bs!1870701 (not (= lambda!414711 lambda!414703))))

(assert (=> d!2194121 true))

(assert (=> d!2194121 (exists!3387 lt!2518451 lambda!414711)))

(assert (=> d!2194121 true))

(declare-fun _$60!1123 () Unit!161594)

(assert (=> d!2194121 (= (choose!53239 lt!2518451 s!7408) _$60!1123)))

(declare-fun bs!1870702 () Bool)

(assert (= bs!1870702 d!2194121))

(declare-fun m!7739586 () Bool)

(assert (=> bs!1870702 m!7739586))

(assert (=> d!2193775 d!2194121))

(declare-fun d!2194123 () Bool)

(declare-fun c!1308106 () Bool)

(assert (=> d!2194123 (= c!1308106 (isEmpty!39536 s!7408))))

(declare-fun e!4227789 () Bool)

(assert (=> d!2194123 (= (matchZipper!3002 (content!13529 lt!2518451) s!7408) e!4227789)))

(declare-fun b!7032750 () Bool)

(assert (=> b!7032750 (= e!4227789 (nullableZipper!2578 (content!13529 lt!2518451)))))

(declare-fun b!7032751 () Bool)

(assert (=> b!7032751 (= e!4227789 (matchZipper!3002 (derivationStepZipper!2918 (content!13529 lt!2518451) (head!14261 s!7408)) (tail!13550 s!7408)))))

(assert (= (and d!2194123 c!1308106) b!7032750))

(assert (= (and d!2194123 (not c!1308106)) b!7032751))

(assert (=> d!2194123 m!7738774))

(assert (=> b!7032750 m!7738770))

(declare-fun m!7739588 () Bool)

(assert (=> b!7032750 m!7739588))

(assert (=> b!7032751 m!7738778))

(assert (=> b!7032751 m!7738770))

(assert (=> b!7032751 m!7738778))

(declare-fun m!7739590 () Bool)

(assert (=> b!7032751 m!7739590))

(assert (=> b!7032751 m!7738782))

(assert (=> b!7032751 m!7739590))

(assert (=> b!7032751 m!7738782))

(declare-fun m!7739592 () Bool)

(assert (=> b!7032751 m!7739592))

(assert (=> d!2193775 d!2194123))

(declare-fun d!2194125 () Bool)

(declare-fun c!1308107 () Bool)

(assert (=> d!2194125 (= c!1308107 (is-Nil!67792 lt!2518451))))

(declare-fun e!4227790 () (Set Context!12916))

(assert (=> d!2194125 (= (content!13529 lt!2518451) e!4227790)))

(declare-fun b!7032752 () Bool)

(assert (=> b!7032752 (= e!4227790 (as set.empty (Set Context!12916)))))

(declare-fun b!7032753 () Bool)

(assert (=> b!7032753 (= e!4227790 (set.union (set.insert (h!74240 lt!2518451) (as set.empty (Set Context!12916))) (content!13529 (t!381681 lt!2518451))))))

(assert (= (and d!2194125 c!1308107) b!7032752))

(assert (= (and d!2194125 (not c!1308107)) b!7032753))

(declare-fun m!7739594 () Bool)

(assert (=> b!7032753 m!7739594))

(declare-fun m!7739596 () Bool)

(assert (=> b!7032753 m!7739596))

(assert (=> d!2193775 d!2194125))

(declare-fun call!638630 () (Set Context!12916))

(declare-fun e!4227792 () (Set Context!12916))

(declare-fun b!7032754 () Bool)

(assert (=> b!7032754 (= e!4227792 (set.union call!638630 (derivationStepZipperUp!2072 (Context!12917 (t!381679 (exprs!6958 (Context!12917 (t!381679 (exprs!6958 lt!2518443)))))) (h!74239 s!7408))))))

(declare-fun b!7032755 () Bool)

(declare-fun e!4227791 () (Set Context!12916))

(assert (=> b!7032755 (= e!4227791 (as set.empty (Set Context!12916)))))

(declare-fun b!7032756 () Bool)

(assert (=> b!7032756 (= e!4227791 call!638630)))

(declare-fun b!7032757 () Bool)

(assert (=> b!7032757 (= e!4227792 e!4227791)))

(declare-fun c!1308109 () Bool)

(assert (=> b!7032757 (= c!1308109 (is-Cons!67790 (exprs!6958 (Context!12917 (t!381679 (exprs!6958 lt!2518443))))))))

(declare-fun b!7032758 () Bool)

(declare-fun e!4227793 () Bool)

(assert (=> b!7032758 (= e!4227793 (nullable!7173 (h!74238 (exprs!6958 (Context!12917 (t!381679 (exprs!6958 lt!2518443)))))))))

(declare-fun bm!638625 () Bool)

(assert (=> bm!638625 (= call!638630 (derivationStepZipperDown!2126 (h!74238 (exprs!6958 (Context!12917 (t!381679 (exprs!6958 lt!2518443))))) (Context!12917 (t!381679 (exprs!6958 (Context!12917 (t!381679 (exprs!6958 lt!2518443)))))) (h!74239 s!7408)))))

(declare-fun d!2194127 () Bool)

(declare-fun c!1308108 () Bool)

(assert (=> d!2194127 (= c!1308108 e!4227793)))

(declare-fun res!2870867 () Bool)

(assert (=> d!2194127 (=> (not res!2870867) (not e!4227793))))

(assert (=> d!2194127 (= res!2870867 (is-Cons!67790 (exprs!6958 (Context!12917 (t!381679 (exprs!6958 lt!2518443))))))))

(assert (=> d!2194127 (= (derivationStepZipperUp!2072 (Context!12917 (t!381679 (exprs!6958 lt!2518443))) (h!74239 s!7408)) e!4227792)))

(assert (= (and d!2194127 res!2870867) b!7032758))

(assert (= (and d!2194127 c!1308108) b!7032754))

(assert (= (and d!2194127 (not c!1308108)) b!7032757))

(assert (= (and b!7032757 c!1308109) b!7032756))

(assert (= (and b!7032757 (not c!1308109)) b!7032755))

(assert (= (or b!7032754 b!7032756) bm!638625))

(declare-fun m!7739598 () Bool)

(assert (=> b!7032754 m!7739598))

(declare-fun m!7739600 () Bool)

(assert (=> b!7032758 m!7739600))

(declare-fun m!7739602 () Bool)

(assert (=> bm!638625 m!7739602))

(assert (=> b!7032426 d!2194127))

(declare-fun bs!1870703 () Bool)

(declare-fun d!2194129 () Bool)

(assert (= bs!1870703 (and d!2194129 d!2194035)))

(declare-fun lambda!414712 () Int)

(assert (=> bs!1870703 (= lambda!414712 lambda!414702)))

(declare-fun bs!1870704 () Bool)

(assert (= bs!1870704 (and d!2194129 b!7032163)))

(assert (=> bs!1870704 (not (= lambda!414712 lambda!414584))))

(declare-fun bs!1870705 () Bool)

(assert (= bs!1870705 (and d!2194129 b!7032149)))

(assert (=> bs!1870705 (= lambda!414712 lambda!414588)))

(declare-fun bs!1870706 () Bool)

(assert (= bs!1870706 (and d!2194129 d!2193779)))

(assert (=> bs!1870706 (not (= lambda!414712 lambda!414659))))

(declare-fun bs!1870707 () Bool)

(assert (= bs!1870707 (and d!2194129 d!2193775)))

(assert (=> bs!1870707 (not (= lambda!414712 lambda!414656))))

(declare-fun bs!1870708 () Bool)

(assert (= bs!1870708 (and d!2194129 d!2194119)))

(assert (=> bs!1870708 (not (= lambda!414712 lambda!414708))))

(declare-fun bs!1870709 () Bool)

(assert (= bs!1870709 (and d!2194129 d!2194039)))

(assert (=> bs!1870709 (= lambda!414712 lambda!414703)))

(declare-fun bs!1870710 () Bool)

(assert (= bs!1870710 (and d!2194129 d!2194121)))

(assert (=> bs!1870710 (not (= lambda!414712 lambda!414711))))

(assert (=> d!2194129 (= (nullableZipper!2578 lt!2518448) (exists!3386 lt!2518448 lambda!414712))))

(declare-fun bs!1870711 () Bool)

(assert (= bs!1870711 d!2194129))

(declare-fun m!7739604 () Bool)

(assert (=> bs!1870711 m!7739604))

(assert (=> b!7032431 d!2194129))

(declare-fun bs!1870712 () Bool)

(declare-fun d!2194131 () Bool)

(assert (= bs!1870712 (and d!2194131 d!2194035)))

(declare-fun lambda!414713 () Int)

(assert (=> bs!1870712 (not (= lambda!414713 lambda!414702))))

(declare-fun bs!1870713 () Bool)

(assert (= bs!1870713 (and d!2194131 b!7032163)))

(assert (=> bs!1870713 (not (= lambda!414713 lambda!414584))))

(declare-fun bs!1870714 () Bool)

(assert (= bs!1870714 (and d!2194131 b!7032149)))

(assert (=> bs!1870714 (not (= lambda!414713 lambda!414588))))

(declare-fun bs!1870715 () Bool)

(assert (= bs!1870715 (and d!2194131 d!2193779)))

(assert (=> bs!1870715 (= (= lambda!414588 lambda!414584) (= lambda!414713 lambda!414659))))

(declare-fun bs!1870716 () Bool)

(assert (= bs!1870716 (and d!2194131 d!2194129)))

(assert (=> bs!1870716 (not (= lambda!414713 lambda!414712))))

(declare-fun bs!1870717 () Bool)

(assert (= bs!1870717 (and d!2194131 d!2193775)))

(assert (=> bs!1870717 (not (= lambda!414713 lambda!414656))))

(declare-fun bs!1870718 () Bool)

(assert (= bs!1870718 (and d!2194131 d!2194119)))

(assert (=> bs!1870718 (= (= lambda!414588 lambda!414656) (= lambda!414713 lambda!414708))))

(declare-fun bs!1870719 () Bool)

(assert (= bs!1870719 (and d!2194131 d!2194039)))

(assert (=> bs!1870719 (not (= lambda!414713 lambda!414703))))

(declare-fun bs!1870720 () Bool)

(assert (= bs!1870720 (and d!2194131 d!2194121)))

(assert (=> bs!1870720 (not (= lambda!414713 lambda!414711))))

(assert (=> d!2194131 true))

(assert (=> d!2194131 (< (dynLambda!27373 order!28171 lambda!414588) (dynLambda!27373 order!28171 lambda!414713))))

(assert (=> d!2194131 (= (exists!3387 (toList!10805 lt!2518429) lambda!414588) (not (forall!16375 (toList!10805 lt!2518429) lambda!414713)))))

(declare-fun bs!1870721 () Bool)

(assert (= bs!1870721 d!2194131))

(assert (=> bs!1870721 m!7738856))

(declare-fun m!7739606 () Bool)

(assert (=> bs!1870721 m!7739606))

(assert (=> d!2193807 d!2194131))

(declare-fun d!2194133 () Bool)

(declare-fun e!4227794 () Bool)

(assert (=> d!2194133 e!4227794))

(declare-fun res!2870868 () Bool)

(assert (=> d!2194133 (=> (not res!2870868) (not e!4227794))))

(declare-fun lt!2518769 () List!67916)

(assert (=> d!2194133 (= res!2870868 (noDuplicate!2626 lt!2518769))))

(assert (=> d!2194133 (= lt!2518769 (choose!53240 lt!2518429))))

(assert (=> d!2194133 (= (toList!10805 lt!2518429) lt!2518769)))

(declare-fun b!7032759 () Bool)

(assert (=> b!7032759 (= e!4227794 (= (content!13529 lt!2518769) lt!2518429))))

(assert (= (and d!2194133 res!2870868) b!7032759))

(declare-fun m!7739608 () Bool)

(assert (=> d!2194133 m!7739608))

(declare-fun m!7739610 () Bool)

(assert (=> d!2194133 m!7739610))

(declare-fun m!7739612 () Bool)

(assert (=> b!7032759 m!7739612))

(assert (=> d!2193807 d!2194133))

(declare-fun d!2194135 () Bool)

(declare-fun res!2870871 () Bool)

(assert (=> d!2194135 (= res!2870871 (exists!3387 (toList!10805 lt!2518429) lambda!414588))))

(assert (=> d!2194135 true))

(assert (=> d!2194135 (= (choose!53245 lt!2518429 lambda!414588) res!2870871)))

(declare-fun bs!1870722 () Bool)

(assert (= bs!1870722 d!2194135))

(assert (=> bs!1870722 m!7738856))

(assert (=> bs!1870722 m!7738856))

(assert (=> bs!1870722 m!7738858))

(assert (=> d!2193807 d!2194135))

(declare-fun d!2194137 () Bool)

(declare-fun lt!2518770 () Int)

(assert (=> d!2194137 (>= lt!2518770 0)))

(declare-fun e!4227795 () Int)

(assert (=> d!2194137 (= lt!2518770 e!4227795)))

(declare-fun c!1308110 () Bool)

(assert (=> d!2194137 (= c!1308110 (is-Cons!67790 (exprs!6958 (h!74240 (Cons!67792 lt!2518443 Nil!67792)))))))

(assert (=> d!2194137 (= (contextDepthTotal!497 (h!74240 (Cons!67792 lt!2518443 Nil!67792))) lt!2518770)))

(declare-fun b!7032760 () Bool)

(assert (=> b!7032760 (= e!4227795 (+ (regexDepthTotal!301 (h!74238 (exprs!6958 (h!74240 (Cons!67792 lt!2518443 Nil!67792))))) (contextDepthTotal!497 (Context!12917 (t!381679 (exprs!6958 (h!74240 (Cons!67792 lt!2518443 Nil!67792))))))))))

(declare-fun b!7032761 () Bool)

(assert (=> b!7032761 (= e!4227795 1)))

(assert (= (and d!2194137 c!1308110) b!7032760))

(assert (= (and d!2194137 (not c!1308110)) b!7032761))

(declare-fun m!7739614 () Bool)

(assert (=> b!7032760 m!7739614))

(declare-fun m!7739616 () Bool)

(assert (=> b!7032760 m!7739616))

(assert (=> b!7032380 d!2194137))

(declare-fun d!2194139 () Bool)

(declare-fun lt!2518771 () Int)

(assert (=> d!2194139 (>= lt!2518771 0)))

(declare-fun e!4227796 () Int)

(assert (=> d!2194139 (= lt!2518771 e!4227796)))

(declare-fun c!1308111 () Bool)

(assert (=> d!2194139 (= c!1308111 (is-Cons!67792 (t!381681 (Cons!67792 lt!2518443 Nil!67792))))))

(assert (=> d!2194139 (= (zipperDepthTotal!525 (t!381681 (Cons!67792 lt!2518443 Nil!67792))) lt!2518771)))

(declare-fun b!7032762 () Bool)

(assert (=> b!7032762 (= e!4227796 (+ (contextDepthTotal!497 (h!74240 (t!381681 (Cons!67792 lt!2518443 Nil!67792)))) (zipperDepthTotal!525 (t!381681 (t!381681 (Cons!67792 lt!2518443 Nil!67792))))))))

(declare-fun b!7032763 () Bool)

(assert (=> b!7032763 (= e!4227796 0)))

(assert (= (and d!2194139 c!1308111) b!7032762))

(assert (= (and d!2194139 (not c!1308111)) b!7032763))

(declare-fun m!7739618 () Bool)

(assert (=> b!7032762 m!7739618))

(declare-fun m!7739620 () Bool)

(assert (=> b!7032762 m!7739620))

(assert (=> b!7032380 d!2194139))

(declare-fun bs!1870723 () Bool)

(declare-fun d!2194141 () Bool)

(assert (= bs!1870723 (and d!2194141 b!7032163)))

(declare-fun lambda!414714 () Int)

(assert (=> bs!1870723 (not (= lambda!414714 lambda!414584))))

(declare-fun bs!1870724 () Bool)

(assert (= bs!1870724 (and d!2194141 b!7032149)))

(assert (=> bs!1870724 (= lambda!414714 lambda!414588)))

(declare-fun bs!1870725 () Bool)

(assert (= bs!1870725 (and d!2194141 d!2193779)))

(assert (=> bs!1870725 (not (= lambda!414714 lambda!414659))))

(declare-fun bs!1870726 () Bool)

(assert (= bs!1870726 (and d!2194141 d!2194129)))

(assert (=> bs!1870726 (= lambda!414714 lambda!414712)))

(declare-fun bs!1870727 () Bool)

(assert (= bs!1870727 (and d!2194141 d!2193775)))

(assert (=> bs!1870727 (not (= lambda!414714 lambda!414656))))

(declare-fun bs!1870728 () Bool)

(assert (= bs!1870728 (and d!2194141 d!2194119)))

(assert (=> bs!1870728 (not (= lambda!414714 lambda!414708))))

(declare-fun bs!1870729 () Bool)

(assert (= bs!1870729 (and d!2194141 d!2194131)))

(assert (=> bs!1870729 (not (= lambda!414714 lambda!414713))))

(declare-fun bs!1870730 () Bool)

(assert (= bs!1870730 (and d!2194141 d!2194035)))

(assert (=> bs!1870730 (= lambda!414714 lambda!414702)))

(declare-fun bs!1870731 () Bool)

(assert (= bs!1870731 (and d!2194141 d!2194039)))

(assert (=> bs!1870731 (= lambda!414714 lambda!414703)))

(declare-fun bs!1870732 () Bool)

(assert (= bs!1870732 (and d!2194141 d!2194121)))

(assert (=> bs!1870732 (not (= lambda!414714 lambda!414711))))

(assert (=> d!2194141 (= (nullableZipper!2578 lt!2518431) (exists!3386 lt!2518431 lambda!414714))))

(declare-fun bs!1870733 () Bool)

(assert (= bs!1870733 d!2194141))

(declare-fun m!7739622 () Bool)

(assert (=> bs!1870733 m!7739622))

(assert (=> b!7032279 d!2194141))

(declare-fun d!2194143 () Bool)

(declare-fun c!1308112 () Bool)

(assert (=> d!2194143 (= c!1308112 (isEmpty!39536 (tail!13550 (_2!37338 lt!2518462))))))

(declare-fun e!4227797 () Bool)

(assert (=> d!2194143 (= (matchZipper!3002 (derivationStepZipper!2918 lt!2518422 (head!14261 (_2!37338 lt!2518462))) (tail!13550 (_2!37338 lt!2518462))) e!4227797)))

(declare-fun b!7032764 () Bool)

(assert (=> b!7032764 (= e!4227797 (nullableZipper!2578 (derivationStepZipper!2918 lt!2518422 (head!14261 (_2!37338 lt!2518462)))))))

(declare-fun b!7032765 () Bool)

(assert (=> b!7032765 (= e!4227797 (matchZipper!3002 (derivationStepZipper!2918 (derivationStepZipper!2918 lt!2518422 (head!14261 (_2!37338 lt!2518462))) (head!14261 (tail!13550 (_2!37338 lt!2518462)))) (tail!13550 (tail!13550 (_2!37338 lt!2518462)))))))

(assert (= (and d!2194143 c!1308112) b!7032764))

(assert (= (and d!2194143 (not c!1308112)) b!7032765))

(assert (=> d!2194143 m!7738944))

(declare-fun m!7739624 () Bool)

(assert (=> d!2194143 m!7739624))

(assert (=> b!7032764 m!7738942))

(declare-fun m!7739626 () Bool)

(assert (=> b!7032764 m!7739626))

(assert (=> b!7032765 m!7738944))

(declare-fun m!7739628 () Bool)

(assert (=> b!7032765 m!7739628))

(assert (=> b!7032765 m!7738942))

(assert (=> b!7032765 m!7739628))

(declare-fun m!7739630 () Bool)

(assert (=> b!7032765 m!7739630))

(assert (=> b!7032765 m!7738944))

(declare-fun m!7739632 () Bool)

(assert (=> b!7032765 m!7739632))

(assert (=> b!7032765 m!7739630))

(assert (=> b!7032765 m!7739632))

(declare-fun m!7739634 () Bool)

(assert (=> b!7032765 m!7739634))

(assert (=> b!7032383 d!2194143))

(declare-fun bs!1870734 () Bool)

(declare-fun d!2194145 () Bool)

(assert (= bs!1870734 (and d!2194145 b!7032161)))

(declare-fun lambda!414715 () Int)

(assert (=> bs!1870734 (= (= (head!14261 (_2!37338 lt!2518462)) (h!74239 s!7408)) (= lambda!414715 lambda!414587))))

(declare-fun bs!1870735 () Bool)

(assert (= bs!1870735 (and d!2194145 d!2194095)))

(assert (=> bs!1870735 (= (= (head!14261 (_2!37338 lt!2518462)) (head!14261 s!7408)) (= lambda!414715 lambda!414706))))

(declare-fun bs!1870736 () Bool)

(assert (= bs!1870736 (and d!2194145 d!2193845)))

(assert (=> bs!1870736 (= (= (head!14261 (_2!37338 lt!2518462)) (h!74239 s!7408)) (= lambda!414715 lambda!414676))))

(declare-fun bs!1870737 () Bool)

(assert (= bs!1870737 (and d!2194145 d!2193793)))

(assert (=> bs!1870737 (= (= (head!14261 (_2!37338 lt!2518462)) (h!74239 s!7408)) (= lambda!414715 lambda!414662))))

(declare-fun bs!1870738 () Bool)

(assert (= bs!1870738 (and d!2194145 d!2194079)))

(assert (=> bs!1870738 (= (= (head!14261 (_2!37338 lt!2518462)) (head!14261 (t!381680 s!7408))) (= lambda!414715 lambda!414704))))

(assert (=> d!2194145 true))

(assert (=> d!2194145 (= (derivationStepZipper!2918 lt!2518422 (head!14261 (_2!37338 lt!2518462))) (flatMap!2409 lt!2518422 lambda!414715))))

(declare-fun bs!1870739 () Bool)

(assert (= bs!1870739 d!2194145))

(declare-fun m!7739636 () Bool)

(assert (=> bs!1870739 m!7739636))

(assert (=> b!7032383 d!2194145))

(declare-fun d!2194147 () Bool)

(assert (=> d!2194147 (= (head!14261 (_2!37338 lt!2518462)) (h!74239 (_2!37338 lt!2518462)))))

(assert (=> b!7032383 d!2194147))

(declare-fun d!2194149 () Bool)

(assert (=> d!2194149 (= (tail!13550 (_2!37338 lt!2518462)) (t!381680 (_2!37338 lt!2518462)))))

(assert (=> b!7032383 d!2194149))

(declare-fun d!2194151 () Bool)

(declare-fun c!1308113 () Bool)

(assert (=> d!2194151 (= c!1308113 (isEmpty!39536 (tail!13550 (t!381680 s!7408))))))

(declare-fun e!4227798 () Bool)

(assert (=> d!2194151 (= (matchZipper!3002 (derivationStepZipper!2918 lt!2518463 (head!14261 (t!381680 s!7408))) (tail!13550 (t!381680 s!7408))) e!4227798)))

(declare-fun b!7032766 () Bool)

(assert (=> b!7032766 (= e!4227798 (nullableZipper!2578 (derivationStepZipper!2918 lt!2518463 (head!14261 (t!381680 s!7408)))))))

(declare-fun b!7032767 () Bool)

(assert (=> b!7032767 (= e!4227798 (matchZipper!3002 (derivationStepZipper!2918 (derivationStepZipper!2918 lt!2518463 (head!14261 (t!381680 s!7408))) (head!14261 (tail!13550 (t!381680 s!7408)))) (tail!13550 (tail!13550 (t!381680 s!7408)))))))

(assert (= (and d!2194151 c!1308113) b!7032766))

(assert (= (and d!2194151 (not c!1308113)) b!7032767))

(assert (=> d!2194151 m!7738836))

(assert (=> d!2194151 m!7739514))

(assert (=> b!7032766 m!7738834))

(declare-fun m!7739638 () Bool)

(assert (=> b!7032766 m!7739638))

(assert (=> b!7032767 m!7738836))

(assert (=> b!7032767 m!7739518))

(assert (=> b!7032767 m!7738834))

(assert (=> b!7032767 m!7739518))

(declare-fun m!7739640 () Bool)

(assert (=> b!7032767 m!7739640))

(assert (=> b!7032767 m!7738836))

(assert (=> b!7032767 m!7739522))

(assert (=> b!7032767 m!7739640))

(assert (=> b!7032767 m!7739522))

(declare-fun m!7739642 () Bool)

(assert (=> b!7032767 m!7739642))

(assert (=> b!7032307 d!2194151))

(declare-fun bs!1870740 () Bool)

(declare-fun d!2194153 () Bool)

(assert (= bs!1870740 (and d!2194153 b!7032161)))

(declare-fun lambda!414716 () Int)

(assert (=> bs!1870740 (= (= (head!14261 (t!381680 s!7408)) (h!74239 s!7408)) (= lambda!414716 lambda!414587))))

(declare-fun bs!1870741 () Bool)

(assert (= bs!1870741 (and d!2194153 d!2194095)))

(assert (=> bs!1870741 (= (= (head!14261 (t!381680 s!7408)) (head!14261 s!7408)) (= lambda!414716 lambda!414706))))

(declare-fun bs!1870742 () Bool)

(assert (= bs!1870742 (and d!2194153 d!2194145)))

(assert (=> bs!1870742 (= (= (head!14261 (t!381680 s!7408)) (head!14261 (_2!37338 lt!2518462))) (= lambda!414716 lambda!414715))))

(declare-fun bs!1870743 () Bool)

(assert (= bs!1870743 (and d!2194153 d!2193845)))

(assert (=> bs!1870743 (= (= (head!14261 (t!381680 s!7408)) (h!74239 s!7408)) (= lambda!414716 lambda!414676))))

(declare-fun bs!1870744 () Bool)

(assert (= bs!1870744 (and d!2194153 d!2193793)))

(assert (=> bs!1870744 (= (= (head!14261 (t!381680 s!7408)) (h!74239 s!7408)) (= lambda!414716 lambda!414662))))

(declare-fun bs!1870745 () Bool)

(assert (= bs!1870745 (and d!2194153 d!2194079)))

(assert (=> bs!1870745 (= lambda!414716 lambda!414704)))

(assert (=> d!2194153 true))

(assert (=> d!2194153 (= (derivationStepZipper!2918 lt!2518463 (head!14261 (t!381680 s!7408))) (flatMap!2409 lt!2518463 lambda!414716))))

(declare-fun bs!1870746 () Bool)

(assert (= bs!1870746 d!2194153))

(declare-fun m!7739644 () Bool)

(assert (=> bs!1870746 m!7739644))

(assert (=> b!7032307 d!2194153))

(assert (=> b!7032307 d!2194081))

(assert (=> b!7032307 d!2194083))

(declare-fun b!7032784 () Bool)

(declare-fun e!4227809 () Int)

(declare-fun call!638637 () Int)

(declare-fun call!638638 () Int)

(assert (=> b!7032784 (= e!4227809 (+ 1 call!638637 call!638638))))

(declare-fun bm!638632 () Bool)

(declare-fun c!1308124 () Bool)

(assert (=> bm!638632 (= call!638638 (regexDepthTotal!301 (ite c!1308124 (regOne!35437 (h!74238 (exprs!6958 lt!2518443))) (regTwo!35436 (h!74238 (exprs!6958 lt!2518443))))))))

(declare-fun b!7032785 () Bool)

(assert (=> b!7032785 (= e!4227809 1)))

(declare-fun b!7032786 () Bool)

(declare-fun e!4227808 () Int)

(declare-fun call!638639 () Int)

(assert (=> b!7032786 (= e!4227808 (+ 1 call!638639))))

(declare-fun b!7032787 () Bool)

(declare-fun e!4227807 () Int)

(assert (=> b!7032787 (= e!4227807 (+ 1 call!638638 call!638637))))

(declare-fun b!7032788 () Bool)

(declare-fun e!4227810 () Int)

(assert (=> b!7032788 (= e!4227810 e!4227808)))

(declare-fun c!1308122 () Bool)

(assert (=> b!7032788 (= c!1308122 (is-Star!17462 (h!74238 (exprs!6958 lt!2518443))))))

(declare-fun bm!638634 () Bool)

(assert (=> bm!638634 (= call!638637 call!638639)))

(declare-fun b!7032789 () Bool)

(assert (=> b!7032789 (= c!1308124 (is-Union!17462 (h!74238 (exprs!6958 lt!2518443))))))

(assert (=> b!7032789 (= e!4227808 e!4227807)))

(declare-fun b!7032790 () Bool)

(assert (=> b!7032790 (= e!4227810 1)))

(declare-fun b!7032791 () Bool)

(assert (=> b!7032791 (= e!4227807 e!4227809)))

(declare-fun c!1308125 () Bool)

(assert (=> b!7032791 (= c!1308125 (is-Concat!26307 (h!74238 (exprs!6958 lt!2518443))))))

(declare-fun bm!638633 () Bool)

(assert (=> bm!638633 (= call!638639 (regexDepthTotal!301 (ite c!1308122 (reg!17791 (h!74238 (exprs!6958 lt!2518443))) (ite c!1308124 (regTwo!35437 (h!74238 (exprs!6958 lt!2518443))) (regOne!35436 (h!74238 (exprs!6958 lt!2518443)))))))))

(declare-fun d!2194155 () Bool)

(declare-fun lt!2518774 () Int)

(assert (=> d!2194155 (> lt!2518774 0)))

(assert (=> d!2194155 (= lt!2518774 e!4227810)))

(declare-fun c!1308123 () Bool)

(assert (=> d!2194155 (= c!1308123 (is-ElementMatch!17462 (h!74238 (exprs!6958 lt!2518443))))))

(assert (=> d!2194155 (= (regexDepthTotal!301 (h!74238 (exprs!6958 lt!2518443))) lt!2518774)))

(assert (= (and d!2194155 c!1308123) b!7032790))

(assert (= (and d!2194155 (not c!1308123)) b!7032788))

(assert (= (and b!7032788 c!1308122) b!7032786))

(assert (= (and b!7032788 (not c!1308122)) b!7032789))

(assert (= (and b!7032789 c!1308124) b!7032787))

(assert (= (and b!7032789 (not c!1308124)) b!7032791))

(assert (= (and b!7032791 c!1308125) b!7032784))

(assert (= (and b!7032791 (not c!1308125)) b!7032785))

(assert (= (or b!7032787 b!7032784) bm!638634))

(assert (= (or b!7032787 b!7032784) bm!638632))

(assert (= (or b!7032786 bm!638634) bm!638633))

(declare-fun m!7739646 () Bool)

(assert (=> bm!638632 m!7739646))

(declare-fun m!7739648 () Bool)

(assert (=> bm!638633 m!7739648))

(assert (=> b!7032421 d!2194155))

(declare-fun d!2194157 () Bool)

(declare-fun lt!2518775 () Int)

(assert (=> d!2194157 (>= lt!2518775 0)))

(declare-fun e!4227811 () Int)

(assert (=> d!2194157 (= lt!2518775 e!4227811)))

(declare-fun c!1308126 () Bool)

(assert (=> d!2194157 (= c!1308126 (is-Cons!67790 (exprs!6958 (Context!12917 (t!381679 (exprs!6958 lt!2518443))))))))

(assert (=> d!2194157 (= (contextDepthTotal!497 (Context!12917 (t!381679 (exprs!6958 lt!2518443)))) lt!2518775)))

(declare-fun b!7032792 () Bool)

(assert (=> b!7032792 (= e!4227811 (+ (regexDepthTotal!301 (h!74238 (exprs!6958 (Context!12917 (t!381679 (exprs!6958 lt!2518443)))))) (contextDepthTotal!497 (Context!12917 (t!381679 (exprs!6958 (Context!12917 (t!381679 (exprs!6958 lt!2518443)))))))))))

(declare-fun b!7032793 () Bool)

(assert (=> b!7032793 (= e!4227811 1)))

(assert (= (and d!2194157 c!1308126) b!7032792))

(assert (= (and d!2194157 (not c!1308126)) b!7032793))

(declare-fun m!7739650 () Bool)

(assert (=> b!7032792 m!7739650))

(declare-fun m!7739652 () Bool)

(assert (=> b!7032792 m!7739652))

(assert (=> b!7032421 d!2194157))

(declare-fun d!2194159 () Bool)

(declare-fun res!2870872 () Bool)

(declare-fun e!4227812 () Bool)

(assert (=> d!2194159 (=> res!2870872 e!4227812)))

(assert (=> d!2194159 (= res!2870872 (is-Nil!67792 lt!2518634))))

(assert (=> d!2194159 (= (noDuplicate!2626 lt!2518634) e!4227812)))

(declare-fun b!7032794 () Bool)

(declare-fun e!4227813 () Bool)

(assert (=> b!7032794 (= e!4227812 e!4227813)))

(declare-fun res!2870873 () Bool)

(assert (=> b!7032794 (=> (not res!2870873) (not e!4227813))))

(assert (=> b!7032794 (= res!2870873 (not (contains!20455 (t!381681 lt!2518634) (h!74240 lt!2518634))))))

(declare-fun b!7032795 () Bool)

(assert (=> b!7032795 (= e!4227813 (noDuplicate!2626 (t!381681 lt!2518634)))))

(assert (= (and d!2194159 (not res!2870872)) b!7032794))

(assert (= (and b!7032794 res!2870873) b!7032795))

(declare-fun m!7739654 () Bool)

(assert (=> b!7032794 m!7739654))

(declare-fun m!7739656 () Bool)

(assert (=> b!7032795 m!7739656))

(assert (=> d!2193783 d!2194159))

(declare-fun d!2194161 () Bool)

(declare-fun e!4227815 () Bool)

(assert (=> d!2194161 e!4227815))

(declare-fun res!2870874 () Bool)

(assert (=> d!2194161 (=> (not res!2870874) (not e!4227815))))

(declare-fun res!2870875 () List!67916)

(assert (=> d!2194161 (= res!2870874 (noDuplicate!2626 res!2870875))))

(declare-fun e!4227814 () Bool)

(assert (=> d!2194161 e!4227814))

(assert (=> d!2194161 (= (choose!53240 lt!2518432) res!2870875)))

(declare-fun b!7032797 () Bool)

(declare-fun e!4227816 () Bool)

(declare-fun tp!1936436 () Bool)

(assert (=> b!7032797 (= e!4227816 tp!1936436)))

(declare-fun tp!1936435 () Bool)

(declare-fun b!7032796 () Bool)

(assert (=> b!7032796 (= e!4227814 (and (inv!86515 (h!74240 res!2870875)) e!4227816 tp!1936435))))

(declare-fun b!7032798 () Bool)

(assert (=> b!7032798 (= e!4227815 (= (content!13529 res!2870875) lt!2518432))))

(assert (= b!7032796 b!7032797))

(assert (= (and d!2194161 (is-Cons!67792 res!2870875)) b!7032796))

(assert (= (and d!2194161 res!2870874) b!7032798))

(declare-fun m!7739658 () Bool)

(assert (=> d!2194161 m!7739658))

(declare-fun m!7739660 () Bool)

(assert (=> b!7032796 m!7739660))

(declare-fun m!7739662 () Bool)

(assert (=> b!7032798 m!7739662))

(assert (=> d!2193783 d!2194161))

(declare-fun call!638640 () (Set Context!12916))

(declare-fun b!7032799 () Bool)

(declare-fun e!4227818 () (Set Context!12916))

(assert (=> b!7032799 (= e!4227818 (set.union call!638640 (derivationStepZipperUp!2072 (Context!12917 (t!381679 (exprs!6958 (Context!12917 (t!381679 (exprs!6958 lt!2518421)))))) (h!74239 s!7408))))))

(declare-fun b!7032800 () Bool)

(declare-fun e!4227817 () (Set Context!12916))

(assert (=> b!7032800 (= e!4227817 (as set.empty (Set Context!12916)))))

(declare-fun b!7032801 () Bool)

(assert (=> b!7032801 (= e!4227817 call!638640)))

(declare-fun b!7032802 () Bool)

(assert (=> b!7032802 (= e!4227818 e!4227817)))

(declare-fun c!1308128 () Bool)

(assert (=> b!7032802 (= c!1308128 (is-Cons!67790 (exprs!6958 (Context!12917 (t!381679 (exprs!6958 lt!2518421))))))))

(declare-fun b!7032803 () Bool)

(declare-fun e!4227819 () Bool)

(assert (=> b!7032803 (= e!4227819 (nullable!7173 (h!74238 (exprs!6958 (Context!12917 (t!381679 (exprs!6958 lt!2518421)))))))))

(declare-fun bm!638635 () Bool)

(assert (=> bm!638635 (= call!638640 (derivationStepZipperDown!2126 (h!74238 (exprs!6958 (Context!12917 (t!381679 (exprs!6958 lt!2518421))))) (Context!12917 (t!381679 (exprs!6958 (Context!12917 (t!381679 (exprs!6958 lt!2518421)))))) (h!74239 s!7408)))))

(declare-fun d!2194163 () Bool)

(declare-fun c!1308127 () Bool)

(assert (=> d!2194163 (= c!1308127 e!4227819)))

(declare-fun res!2870876 () Bool)

(assert (=> d!2194163 (=> (not res!2870876) (not e!4227819))))

(assert (=> d!2194163 (= res!2870876 (is-Cons!67790 (exprs!6958 (Context!12917 (t!381679 (exprs!6958 lt!2518421))))))))

(assert (=> d!2194163 (= (derivationStepZipperUp!2072 (Context!12917 (t!381679 (exprs!6958 lt!2518421))) (h!74239 s!7408)) e!4227818)))

(assert (= (and d!2194163 res!2870876) b!7032803))

(assert (= (and d!2194163 c!1308127) b!7032799))

(assert (= (and d!2194163 (not c!1308127)) b!7032802))

(assert (= (and b!7032802 c!1308128) b!7032801))

(assert (= (and b!7032802 (not c!1308128)) b!7032800))

(assert (= (or b!7032799 b!7032801) bm!638635))

(declare-fun m!7739664 () Bool)

(assert (=> b!7032799 m!7739664))

(declare-fun m!7739666 () Bool)

(assert (=> b!7032803 m!7739666))

(declare-fun m!7739668 () Bool)

(assert (=> bm!638635 m!7739668))

(assert (=> b!7032299 d!2194163))

(declare-fun d!2194165 () Bool)

(declare-fun lt!2518776 () Int)

(assert (=> d!2194165 (>= lt!2518776 0)))

(declare-fun e!4227820 () Int)

(assert (=> d!2194165 (= lt!2518776 e!4227820)))

(declare-fun c!1308129 () Bool)

(assert (=> d!2194165 (= c!1308129 (is-Cons!67790 (exprs!6958 (h!74240 lt!2518442))))))

(assert (=> d!2194165 (= (contextDepthTotal!497 (h!74240 lt!2518442)) lt!2518776)))

(declare-fun b!7032804 () Bool)

(assert (=> b!7032804 (= e!4227820 (+ (regexDepthTotal!301 (h!74238 (exprs!6958 (h!74240 lt!2518442)))) (contextDepthTotal!497 (Context!12917 (t!381679 (exprs!6958 (h!74240 lt!2518442)))))))))

(declare-fun b!7032805 () Bool)

(assert (=> b!7032805 (= e!4227820 1)))

(assert (= (and d!2194165 c!1308129) b!7032804))

(assert (= (and d!2194165 (not c!1308129)) b!7032805))

(declare-fun m!7739670 () Bool)

(assert (=> b!7032804 m!7739670))

(declare-fun m!7739672 () Bool)

(assert (=> b!7032804 m!7739672))

(assert (=> b!7032415 d!2194165))

(declare-fun d!2194167 () Bool)

(declare-fun lt!2518777 () Int)

(assert (=> d!2194167 (>= lt!2518777 0)))

(declare-fun e!4227821 () Int)

(assert (=> d!2194167 (= lt!2518777 e!4227821)))

(declare-fun c!1308130 () Bool)

(assert (=> d!2194167 (= c!1308130 (is-Cons!67792 (t!381681 lt!2518442)))))

(assert (=> d!2194167 (= (zipperDepthTotal!525 (t!381681 lt!2518442)) lt!2518777)))

(declare-fun b!7032806 () Bool)

(assert (=> b!7032806 (= e!4227821 (+ (contextDepthTotal!497 (h!74240 (t!381681 lt!2518442))) (zipperDepthTotal!525 (t!381681 (t!381681 lt!2518442)))))))

(declare-fun b!7032807 () Bool)

(assert (=> b!7032807 (= e!4227821 0)))

(assert (= (and d!2194167 c!1308130) b!7032806))

(assert (= (and d!2194167 (not c!1308130)) b!7032807))

(declare-fun m!7739674 () Bool)

(assert (=> b!7032806 m!7739674))

(declare-fun m!7739676 () Bool)

(assert (=> b!7032806 m!7739676))

(assert (=> b!7032415 d!2194167))

(declare-fun d!2194169 () Bool)

(assert (=> d!2194169 (= (nullable!7173 (regOne!35436 (h!74238 (exprs!6958 lt!2518419)))) (nullableFct!2726 (regOne!35436 (h!74238 (exprs!6958 lt!2518419)))))))

(declare-fun bs!1870747 () Bool)

(assert (= bs!1870747 d!2194169))

(declare-fun m!7739678 () Bool)

(assert (=> bs!1870747 m!7739678))

(assert (=> b!7032365 d!2194169))

(declare-fun d!2194171 () Bool)

(declare-fun lt!2518778 () Int)

(assert (=> d!2194171 (>= lt!2518778 0)))

(declare-fun e!4227822 () Int)

(assert (=> d!2194171 (= lt!2518778 e!4227822)))

(declare-fun c!1308131 () Bool)

(assert (=> d!2194171 (= c!1308131 (is-Nil!67790 lt!2518657))))

(assert (=> d!2194171 (= (size!41060 lt!2518657) lt!2518778)))

(declare-fun b!7032808 () Bool)

(assert (=> b!7032808 (= e!4227822 0)))

(declare-fun b!7032809 () Bool)

(assert (=> b!7032809 (= e!4227822 (+ 1 (size!41060 (t!381679 lt!2518657))))))

(assert (= (and d!2194171 c!1308131) b!7032808))

(assert (= (and d!2194171 (not c!1308131)) b!7032809))

(declare-fun m!7739680 () Bool)

(assert (=> b!7032809 m!7739680))

(assert (=> b!7032374 d!2194171))

(declare-fun d!2194173 () Bool)

(declare-fun lt!2518779 () Int)

(assert (=> d!2194173 (>= lt!2518779 0)))

(declare-fun e!4227823 () Int)

(assert (=> d!2194173 (= lt!2518779 e!4227823)))

(declare-fun c!1308132 () Bool)

(assert (=> d!2194173 (= c!1308132 (is-Nil!67790 lt!2518415))))

(assert (=> d!2194173 (= (size!41060 lt!2518415) lt!2518779)))

(declare-fun b!7032810 () Bool)

(assert (=> b!7032810 (= e!4227823 0)))

(declare-fun b!7032811 () Bool)

(assert (=> b!7032811 (= e!4227823 (+ 1 (size!41060 (t!381679 lt!2518415))))))

(assert (= (and d!2194173 c!1308132) b!7032810))

(assert (= (and d!2194173 (not c!1308132)) b!7032811))

(assert (=> b!7032811 m!7739494))

(assert (=> b!7032374 d!2194173))

(assert (=> b!7032374 d!2194049))

(declare-fun bm!638640 () Bool)

(declare-fun call!638646 () Bool)

(declare-fun c!1308135 () Bool)

(assert (=> bm!638640 (= call!638646 (nullable!7173 (ite c!1308135 (regTwo!35437 (h!74238 (exprs!6958 lt!2518419))) (regOne!35436 (h!74238 (exprs!6958 lt!2518419))))))))

(declare-fun b!7032826 () Bool)

(declare-fun e!4227841 () Bool)

(declare-fun e!4227837 () Bool)

(assert (=> b!7032826 (= e!4227841 e!4227837)))

(declare-fun res!2870891 () Bool)

(assert (=> b!7032826 (=> (not res!2870891) (not e!4227837))))

(assert (=> b!7032826 (= res!2870891 (and (not (is-EmptyLang!17462 (h!74238 (exprs!6958 lt!2518419)))) (not (is-ElementMatch!17462 (h!74238 (exprs!6958 lt!2518419))))))))

(declare-fun bm!638641 () Bool)

(declare-fun call!638645 () Bool)

(assert (=> bm!638641 (= call!638645 (nullable!7173 (ite c!1308135 (regOne!35437 (h!74238 (exprs!6958 lt!2518419))) (regTwo!35436 (h!74238 (exprs!6958 lt!2518419))))))))

(declare-fun b!7032827 () Bool)

(declare-fun e!4227838 () Bool)

(assert (=> b!7032827 (= e!4227837 e!4227838)))

(declare-fun res!2870889 () Bool)

(assert (=> b!7032827 (=> res!2870889 e!4227838)))

(assert (=> b!7032827 (= res!2870889 (is-Star!17462 (h!74238 (exprs!6958 lt!2518419))))))

(declare-fun b!7032828 () Bool)

(declare-fun e!4227839 () Bool)

(assert (=> b!7032828 (= e!4227839 call!638645)))

(declare-fun b!7032829 () Bool)

(declare-fun e!4227840 () Bool)

(declare-fun e!4227836 () Bool)

(assert (=> b!7032829 (= e!4227840 e!4227836)))

(declare-fun res!2870888 () Bool)

(assert (=> b!7032829 (= res!2870888 call!638645)))

(assert (=> b!7032829 (=> res!2870888 e!4227836)))

(declare-fun b!7032830 () Bool)

(assert (=> b!7032830 (= e!4227836 call!638646)))

(declare-fun b!7032831 () Bool)

(assert (=> b!7032831 (= e!4227840 e!4227839)))

(declare-fun res!2870887 () Bool)

(assert (=> b!7032831 (= res!2870887 call!638646)))

(assert (=> b!7032831 (=> (not res!2870887) (not e!4227839))))

(declare-fun d!2194175 () Bool)

(declare-fun res!2870890 () Bool)

(assert (=> d!2194175 (=> res!2870890 e!4227841)))

(assert (=> d!2194175 (= res!2870890 (is-EmptyExpr!17462 (h!74238 (exprs!6958 lt!2518419))))))

(assert (=> d!2194175 (= (nullableFct!2726 (h!74238 (exprs!6958 lt!2518419))) e!4227841)))

(declare-fun b!7032832 () Bool)

(assert (=> b!7032832 (= e!4227838 e!4227840)))

(assert (=> b!7032832 (= c!1308135 (is-Union!17462 (h!74238 (exprs!6958 lt!2518419))))))

(assert (= (and d!2194175 (not res!2870890)) b!7032826))

(assert (= (and b!7032826 res!2870891) b!7032827))

(assert (= (and b!7032827 (not res!2870889)) b!7032832))

(assert (= (and b!7032832 c!1308135) b!7032829))

(assert (= (and b!7032832 (not c!1308135)) b!7032831))

(assert (= (and b!7032829 (not res!2870888)) b!7032830))

(assert (= (and b!7032831 res!2870887) b!7032828))

(assert (= (or b!7032830 b!7032831) bm!638640))

(assert (= (or b!7032829 b!7032828) bm!638641))

(declare-fun m!7739682 () Bool)

(assert (=> bm!638640 m!7739682))

(declare-fun m!7739684 () Bool)

(assert (=> bm!638641 m!7739684))

(assert (=> d!2193847 d!2194175))

(declare-fun bs!1870748 () Bool)

(declare-fun d!2194177 () Bool)

(assert (= bs!1870748 (and d!2194177 d!2194141)))

(declare-fun lambda!414717 () Int)

(assert (=> bs!1870748 (= lambda!414717 lambda!414714)))

(declare-fun bs!1870749 () Bool)

(assert (= bs!1870749 (and d!2194177 b!7032163)))

(assert (=> bs!1870749 (not (= lambda!414717 lambda!414584))))

(declare-fun bs!1870750 () Bool)

(assert (= bs!1870750 (and d!2194177 b!7032149)))

(assert (=> bs!1870750 (= lambda!414717 lambda!414588)))

(declare-fun bs!1870751 () Bool)

(assert (= bs!1870751 (and d!2194177 d!2193779)))

(assert (=> bs!1870751 (not (= lambda!414717 lambda!414659))))

(declare-fun bs!1870752 () Bool)

(assert (= bs!1870752 (and d!2194177 d!2194129)))

(assert (=> bs!1870752 (= lambda!414717 lambda!414712)))

(declare-fun bs!1870753 () Bool)

(assert (= bs!1870753 (and d!2194177 d!2193775)))

(assert (=> bs!1870753 (not (= lambda!414717 lambda!414656))))

(declare-fun bs!1870754 () Bool)

(assert (= bs!1870754 (and d!2194177 d!2194119)))

(assert (=> bs!1870754 (not (= lambda!414717 lambda!414708))))

(declare-fun bs!1870755 () Bool)

(assert (= bs!1870755 (and d!2194177 d!2194131)))

(assert (=> bs!1870755 (not (= lambda!414717 lambda!414713))))

(declare-fun bs!1870756 () Bool)

(assert (= bs!1870756 (and d!2194177 d!2194035)))

(assert (=> bs!1870756 (= lambda!414717 lambda!414702)))

(declare-fun bs!1870757 () Bool)

(assert (= bs!1870757 (and d!2194177 d!2194039)))

(assert (=> bs!1870757 (= lambda!414717 lambda!414703)))

(declare-fun bs!1870758 () Bool)

(assert (= bs!1870758 (and d!2194177 d!2194121)))

(assert (=> bs!1870758 (not (= lambda!414717 lambda!414711))))

(assert (=> d!2194177 (= (nullableZipper!2578 lt!2518429) (exists!3386 lt!2518429 lambda!414717))))

(declare-fun bs!1870759 () Bool)

(assert (= bs!1870759 d!2194177))

(declare-fun m!7739686 () Bool)

(assert (=> bs!1870759 m!7739686))

(assert (=> b!7032386 d!2194177))

(assert (=> d!2193859 d!2194041))

(declare-fun d!2194179 () Bool)

(declare-fun c!1308136 () Bool)

(assert (=> d!2194179 (= c!1308136 (isEmpty!39536 Nil!67791))))

(declare-fun e!4227842 () Bool)

(assert (=> d!2194179 (= (matchZipper!3002 lt!2518429 Nil!67791) e!4227842)))

(declare-fun b!7032833 () Bool)

(assert (=> b!7032833 (= e!4227842 (nullableZipper!2578 lt!2518429))))

(declare-fun b!7032834 () Bool)

(assert (=> b!7032834 (= e!4227842 (matchZipper!3002 (derivationStepZipper!2918 lt!2518429 (head!14261 Nil!67791)) (tail!13550 Nil!67791)))))

(assert (= (and d!2194179 c!1308136) b!7032833))

(assert (= (and d!2194179 (not c!1308136)) b!7032834))

(declare-fun m!7739688 () Bool)

(assert (=> d!2194179 m!7739688))

(assert (=> b!7032833 m!7738964))

(declare-fun m!7739690 () Bool)

(assert (=> b!7032834 m!7739690))

(assert (=> b!7032834 m!7739690))

(declare-fun m!7739692 () Bool)

(assert (=> b!7032834 m!7739692))

(declare-fun m!7739694 () Bool)

(assert (=> b!7032834 m!7739694))

(assert (=> b!7032834 m!7739692))

(assert (=> b!7032834 m!7739694))

(declare-fun m!7739696 () Bool)

(assert (=> b!7032834 m!7739696))

(assert (=> d!2193859 d!2194179))

(declare-fun b!7032838 () Bool)

(declare-fun e!4227843 () Bool)

(declare-fun lt!2518780 () List!67915)

(assert (=> b!7032838 (= e!4227843 (or (not (= s!7408 Nil!67791)) (= lt!2518780 Nil!67791)))))

(declare-fun b!7032837 () Bool)

(declare-fun res!2870893 () Bool)

(assert (=> b!7032837 (=> (not res!2870893) (not e!4227843))))

(assert (=> b!7032837 (= res!2870893 (= (size!41061 lt!2518780) (+ (size!41061 Nil!67791) (size!41061 s!7408))))))

(declare-fun b!7032836 () Bool)

(declare-fun e!4227844 () List!67915)

(assert (=> b!7032836 (= e!4227844 (Cons!67791 (h!74239 Nil!67791) (++!15505 (t!381680 Nil!67791) s!7408)))))

(declare-fun d!2194181 () Bool)

(assert (=> d!2194181 e!4227843))

(declare-fun res!2870892 () Bool)

(assert (=> d!2194181 (=> (not res!2870892) (not e!4227843))))

(assert (=> d!2194181 (= res!2870892 (= (content!13531 lt!2518780) (set.union (content!13531 Nil!67791) (content!13531 s!7408))))))

(assert (=> d!2194181 (= lt!2518780 e!4227844)))

(declare-fun c!1308137 () Bool)

(assert (=> d!2194181 (= c!1308137 (is-Nil!67791 Nil!67791))))

(assert (=> d!2194181 (= (++!15505 Nil!67791 s!7408) lt!2518780)))

(declare-fun b!7032835 () Bool)

(assert (=> b!7032835 (= e!4227844 s!7408)))

(assert (= (and d!2194181 c!1308137) b!7032835))

(assert (= (and d!2194181 (not c!1308137)) b!7032836))

(assert (= (and d!2194181 res!2870892) b!7032837))

(assert (= (and b!7032837 res!2870893) b!7032838))

(declare-fun m!7739698 () Bool)

(assert (=> b!7032837 m!7739698))

(declare-fun m!7739700 () Bool)

(assert (=> b!7032837 m!7739700))

(declare-fun m!7739702 () Bool)

(assert (=> b!7032837 m!7739702))

(declare-fun m!7739704 () Bool)

(assert (=> b!7032836 m!7739704))

(declare-fun m!7739706 () Bool)

(assert (=> d!2194181 m!7739706))

(declare-fun m!7739708 () Bool)

(assert (=> d!2194181 m!7739708))

(declare-fun m!7739710 () Bool)

(assert (=> d!2194181 m!7739710))

(assert (=> d!2193859 d!2194181))

(declare-fun b!7032842 () Bool)

(declare-fun e!4227845 () Bool)

(declare-fun lt!2518781 () List!67915)

(assert (=> b!7032842 (= e!4227845 (or (not (= (_2!37338 lt!2518462) Nil!67791)) (= lt!2518781 (t!381680 (_1!37338 lt!2518462)))))))

(declare-fun b!7032841 () Bool)

(declare-fun res!2870895 () Bool)

(assert (=> b!7032841 (=> (not res!2870895) (not e!4227845))))

(assert (=> b!7032841 (= res!2870895 (= (size!41061 lt!2518781) (+ (size!41061 (t!381680 (_1!37338 lt!2518462))) (size!41061 (_2!37338 lt!2518462)))))))

(declare-fun b!7032840 () Bool)

(declare-fun e!4227846 () List!67915)

(assert (=> b!7032840 (= e!4227846 (Cons!67791 (h!74239 (t!381680 (_1!37338 lt!2518462))) (++!15505 (t!381680 (t!381680 (_1!37338 lt!2518462))) (_2!37338 lt!2518462))))))

(declare-fun d!2194183 () Bool)

(assert (=> d!2194183 e!4227845))

(declare-fun res!2870894 () Bool)

(assert (=> d!2194183 (=> (not res!2870894) (not e!4227845))))

(assert (=> d!2194183 (= res!2870894 (= (content!13531 lt!2518781) (set.union (content!13531 (t!381680 (_1!37338 lt!2518462))) (content!13531 (_2!37338 lt!2518462)))))))

(assert (=> d!2194183 (= lt!2518781 e!4227846)))

(declare-fun c!1308138 () Bool)

(assert (=> d!2194183 (= c!1308138 (is-Nil!67791 (t!381680 (_1!37338 lt!2518462))))))

(assert (=> d!2194183 (= (++!15505 (t!381680 (_1!37338 lt!2518462)) (_2!37338 lt!2518462)) lt!2518781)))

(declare-fun b!7032839 () Bool)

(assert (=> b!7032839 (= e!4227846 (_2!37338 lt!2518462))))

(assert (= (and d!2194183 c!1308138) b!7032839))

(assert (= (and d!2194183 (not c!1308138)) b!7032840))

(assert (= (and d!2194183 res!2870894) b!7032841))

(assert (= (and b!7032841 res!2870895) b!7032842))

(declare-fun m!7739712 () Bool)

(assert (=> b!7032841 m!7739712))

(declare-fun m!7739714 () Bool)

(assert (=> b!7032841 m!7739714))

(assert (=> b!7032841 m!7739062))

(declare-fun m!7739716 () Bool)

(assert (=> b!7032840 m!7739716))

(declare-fun m!7739718 () Bool)

(assert (=> d!2194183 m!7739718))

(declare-fun m!7739720 () Bool)

(assert (=> d!2194183 m!7739720))

(assert (=> d!2194183 m!7739070))

(assert (=> b!7032442 d!2194183))

(declare-fun d!2194185 () Bool)

(assert (=> d!2194185 (= (nullable!7173 (h!74238 (exprs!6958 lt!2518444))) (nullableFct!2726 (h!74238 (exprs!6958 lt!2518444))))))

(declare-fun bs!1870760 () Bool)

(assert (= bs!1870760 d!2194185))

(declare-fun m!7739722 () Bool)

(assert (=> bs!1870760 m!7739722))

(assert (=> b!7032371 d!2194185))

(assert (=> d!2193877 d!2193869))

(assert (=> d!2193877 d!2193861))

(declare-fun d!2194187 () Bool)

(assert (=> d!2194187 (<= (contextDepthTotal!497 lt!2518419) (zipperDepthTotal!525 lt!2518442))))

(assert (=> d!2194187 true))

(declare-fun _$53!116 () Unit!161594)

(assert (=> d!2194187 (= (choose!53249 lt!2518442 lt!2518419) _$53!116)))

(declare-fun bs!1870761 () Bool)

(assert (= bs!1870761 d!2194187))

(assert (=> bs!1870761 m!7738582))

(assert (=> bs!1870761 m!7738576))

(assert (=> d!2193877 d!2194187))

(declare-fun d!2194189 () Bool)

(declare-fun lt!2518784 () Bool)

(assert (=> d!2194189 (= lt!2518784 (set.member lt!2518419 (content!13529 lt!2518442)))))

(declare-fun e!4227852 () Bool)

(assert (=> d!2194189 (= lt!2518784 e!4227852)))

(declare-fun res!2870900 () Bool)

(assert (=> d!2194189 (=> (not res!2870900) (not e!4227852))))

(assert (=> d!2194189 (= res!2870900 (is-Cons!67792 lt!2518442))))

(assert (=> d!2194189 (= (contains!20455 lt!2518442 lt!2518419) lt!2518784)))

(declare-fun b!7032847 () Bool)

(declare-fun e!4227851 () Bool)

(assert (=> b!7032847 (= e!4227852 e!4227851)))

(declare-fun res!2870901 () Bool)

(assert (=> b!7032847 (=> res!2870901 e!4227851)))

(assert (=> b!7032847 (= res!2870901 (= (h!74240 lt!2518442) lt!2518419))))

(declare-fun b!7032848 () Bool)

(assert (=> b!7032848 (= e!4227851 (contains!20455 (t!381681 lt!2518442) lt!2518419))))

(assert (= (and d!2194189 res!2870900) b!7032847))

(assert (= (and b!7032847 (not res!2870901)) b!7032848))

(declare-fun m!7739724 () Bool)

(assert (=> d!2194189 m!7739724))

(declare-fun m!7739726 () Bool)

(assert (=> d!2194189 m!7739726))

(declare-fun m!7739728 () Bool)

(assert (=> b!7032848 m!7739728))

(assert (=> d!2193877 d!2194189))

(declare-fun d!2194191 () Bool)

(declare-fun c!1308140 () Bool)

(assert (=> d!2194191 (= c!1308140 (is-Nil!67790 lt!2518650))))

(declare-fun e!4227853 () (Set Regex!17462))

(assert (=> d!2194191 (= (content!13530 lt!2518650) e!4227853)))

(declare-fun b!7032849 () Bool)

(assert (=> b!7032849 (= e!4227853 (as set.empty (Set Regex!17462)))))

(declare-fun b!7032850 () Bool)

(assert (=> b!7032850 (= e!4227853 (set.union (set.insert (h!74238 lt!2518650) (as set.empty (Set Regex!17462))) (content!13530 (t!381679 lt!2518650))))))

(assert (= (and d!2194191 c!1308140) b!7032849))

(assert (= (and d!2194191 (not c!1308140)) b!7032850))

(declare-fun m!7739730 () Bool)

(assert (=> b!7032850 m!7739730))

(declare-fun m!7739732 () Bool)

(assert (=> b!7032850 m!7739732))

(assert (=> d!2193809 d!2194191))

(declare-fun d!2194193 () Bool)

(declare-fun c!1308141 () Bool)

(assert (=> d!2194193 (= c!1308141 (is-Nil!67790 (exprs!6958 lt!2518419)))))

(declare-fun e!4227854 () (Set Regex!17462))

(assert (=> d!2194193 (= (content!13530 (exprs!6958 lt!2518419)) e!4227854)))

(declare-fun b!7032851 () Bool)

(assert (=> b!7032851 (= e!4227854 (as set.empty (Set Regex!17462)))))

(declare-fun b!7032852 () Bool)

(assert (=> b!7032852 (= e!4227854 (set.union (set.insert (h!74238 (exprs!6958 lt!2518419)) (as set.empty (Set Regex!17462))) (content!13530 (t!381679 (exprs!6958 lt!2518419)))))))

(assert (= (and d!2194193 c!1308141) b!7032851))

(assert (= (and d!2194193 (not c!1308141)) b!7032852))

(declare-fun m!7739734 () Bool)

(assert (=> b!7032852 m!7739734))

(declare-fun m!7739736 () Bool)

(assert (=> b!7032852 m!7739736))

(assert (=> d!2193809 d!2194193))

(assert (=> d!2193809 d!2194055))

(declare-fun bs!1870762 () Bool)

(declare-fun d!2194195 () Bool)

(assert (= bs!1870762 (and d!2194195 d!2194085)))

(declare-fun lambda!414718 () Int)

(assert (=> bs!1870762 (not (= lambda!414718 lambda!414705))))

(declare-fun bs!1870763 () Bool)

(assert (= bs!1870763 (and d!2194195 d!2193813)))

(assert (=> bs!1870763 (not (= lambda!414718 lambda!414665))))

(declare-fun bs!1870764 () Bool)

(assert (= bs!1870764 (and d!2194195 d!2193833)))

(assert (=> bs!1870764 (= lambda!414718 lambda!414675)))

(declare-fun bs!1870765 () Bool)

(assert (= bs!1870765 (and d!2194195 b!7032169)))

(assert (=> bs!1870765 (= lambda!414718 lambda!414586)))

(declare-fun bs!1870766 () Bool)

(assert (= bs!1870766 (and d!2194195 d!2193817)))

(assert (=> bs!1870766 (not (= lambda!414718 lambda!414666))))

(declare-fun bs!1870767 () Bool)

(assert (= bs!1870767 (and d!2194195 d!2193823)))

(assert (=> bs!1870767 (= lambda!414718 lambda!414674)))

(assert (=> d!2194195 (= (inv!86515 setElem!49151) (forall!16376 (exprs!6958 setElem!49151) lambda!414718))))

(declare-fun bs!1870768 () Bool)

(assert (= bs!1870768 d!2194195))

(declare-fun m!7739738 () Bool)

(assert (=> bs!1870768 m!7739738))

(assert (=> setNonEmpty!49151 d!2194195))

(declare-fun d!2194197 () Bool)

(declare-fun c!1308142 () Bool)

(assert (=> d!2194197 (= c!1308142 (isEmpty!39536 (tail!13550 s!7408)))))

(declare-fun e!4227855 () Bool)

(assert (=> d!2194197 (= (matchZipper!3002 (derivationStepZipper!2918 lt!2518448 (head!14261 s!7408)) (tail!13550 s!7408)) e!4227855)))

(declare-fun b!7032853 () Bool)

(assert (=> b!7032853 (= e!4227855 (nullableZipper!2578 (derivationStepZipper!2918 lt!2518448 (head!14261 s!7408))))))

(declare-fun b!7032854 () Bool)

(assert (=> b!7032854 (= e!4227855 (matchZipper!3002 (derivationStepZipper!2918 (derivationStepZipper!2918 lt!2518448 (head!14261 s!7408)) (head!14261 (tail!13550 s!7408))) (tail!13550 (tail!13550 s!7408))))))

(assert (= (and d!2194197 c!1308142) b!7032853))

(assert (= (and d!2194197 (not c!1308142)) b!7032854))

(assert (=> d!2194197 m!7738782))

(assert (=> d!2194197 m!7739534))

(assert (=> b!7032853 m!7739054))

(declare-fun m!7739740 () Bool)

(assert (=> b!7032853 m!7739740))

(assert (=> b!7032854 m!7738782))

(assert (=> b!7032854 m!7739538))

(assert (=> b!7032854 m!7739054))

(assert (=> b!7032854 m!7739538))

(declare-fun m!7739742 () Bool)

(assert (=> b!7032854 m!7739742))

(assert (=> b!7032854 m!7738782))

(assert (=> b!7032854 m!7739542))

(assert (=> b!7032854 m!7739742))

(assert (=> b!7032854 m!7739542))

(declare-fun m!7739744 () Bool)

(assert (=> b!7032854 m!7739744))

(assert (=> b!7032432 d!2194197))

(declare-fun bs!1870769 () Bool)

(declare-fun d!2194199 () Bool)

(assert (= bs!1870769 (and d!2194199 b!7032161)))

(declare-fun lambda!414719 () Int)

(assert (=> bs!1870769 (= (= (head!14261 s!7408) (h!74239 s!7408)) (= lambda!414719 lambda!414587))))

(declare-fun bs!1870770 () Bool)

(assert (= bs!1870770 (and d!2194199 d!2194145)))

(assert (=> bs!1870770 (= (= (head!14261 s!7408) (head!14261 (_2!37338 lt!2518462))) (= lambda!414719 lambda!414715))))

(declare-fun bs!1870771 () Bool)

(assert (= bs!1870771 (and d!2194199 d!2193845)))

(assert (=> bs!1870771 (= (= (head!14261 s!7408) (h!74239 s!7408)) (= lambda!414719 lambda!414676))))

(declare-fun bs!1870772 () Bool)

(assert (= bs!1870772 (and d!2194199 d!2193793)))

(assert (=> bs!1870772 (= (= (head!14261 s!7408) (h!74239 s!7408)) (= lambda!414719 lambda!414662))))

(declare-fun bs!1870773 () Bool)

(assert (= bs!1870773 (and d!2194199 d!2194079)))

(assert (=> bs!1870773 (= (= (head!14261 s!7408) (head!14261 (t!381680 s!7408))) (= lambda!414719 lambda!414704))))

(declare-fun bs!1870774 () Bool)

(assert (= bs!1870774 (and d!2194199 d!2194153)))

(assert (=> bs!1870774 (= (= (head!14261 s!7408) (head!14261 (t!381680 s!7408))) (= lambda!414719 lambda!414716))))

(declare-fun bs!1870775 () Bool)

(assert (= bs!1870775 (and d!2194199 d!2194095)))

(assert (=> bs!1870775 (= lambda!414719 lambda!414706)))

(assert (=> d!2194199 true))

(assert (=> d!2194199 (= (derivationStepZipper!2918 lt!2518448 (head!14261 s!7408)) (flatMap!2409 lt!2518448 lambda!414719))))

(declare-fun bs!1870776 () Bool)

(assert (= bs!1870776 d!2194199))

(declare-fun m!7739746 () Bool)

(assert (=> bs!1870776 m!7739746))

(assert (=> b!7032432 d!2194199))

(assert (=> b!7032432 d!2194097))

(assert (=> b!7032432 d!2194099))

(declare-fun d!2194201 () Bool)

(declare-fun c!1308143 () Bool)

(assert (=> d!2194201 (= c!1308143 (isEmpty!39536 (tail!13550 s!7408)))))

(declare-fun e!4227856 () Bool)

(assert (=> d!2194201 (= (matchZipper!3002 (derivationStepZipper!2918 lt!2518431 (head!14261 s!7408)) (tail!13550 s!7408)) e!4227856)))

(declare-fun b!7032855 () Bool)

(assert (=> b!7032855 (= e!4227856 (nullableZipper!2578 (derivationStepZipper!2918 lt!2518431 (head!14261 s!7408))))))

(declare-fun b!7032856 () Bool)

(assert (=> b!7032856 (= e!4227856 (matchZipper!3002 (derivationStepZipper!2918 (derivationStepZipper!2918 lt!2518431 (head!14261 s!7408)) (head!14261 (tail!13550 s!7408))) (tail!13550 (tail!13550 s!7408))))))

(assert (= (and d!2194201 c!1308143) b!7032855))

(assert (= (and d!2194201 (not c!1308143)) b!7032856))

(assert (=> d!2194201 m!7738782))

(assert (=> d!2194201 m!7739534))

(assert (=> b!7032855 m!7738780))

(declare-fun m!7739748 () Bool)

(assert (=> b!7032855 m!7739748))

(assert (=> b!7032856 m!7738782))

(assert (=> b!7032856 m!7739538))

(assert (=> b!7032856 m!7738780))

(assert (=> b!7032856 m!7739538))

(declare-fun m!7739750 () Bool)

(assert (=> b!7032856 m!7739750))

(assert (=> b!7032856 m!7738782))

(assert (=> b!7032856 m!7739542))

(assert (=> b!7032856 m!7739750))

(assert (=> b!7032856 m!7739542))

(declare-fun m!7739752 () Bool)

(assert (=> b!7032856 m!7739752))

(assert (=> b!7032280 d!2194201))

(declare-fun bs!1870777 () Bool)

(declare-fun d!2194203 () Bool)

(assert (= bs!1870777 (and d!2194203 b!7032161)))

(declare-fun lambda!414720 () Int)

(assert (=> bs!1870777 (= (= (head!14261 s!7408) (h!74239 s!7408)) (= lambda!414720 lambda!414587))))

(declare-fun bs!1870778 () Bool)

(assert (= bs!1870778 (and d!2194203 d!2194145)))

(assert (=> bs!1870778 (= (= (head!14261 s!7408) (head!14261 (_2!37338 lt!2518462))) (= lambda!414720 lambda!414715))))

(declare-fun bs!1870779 () Bool)

(assert (= bs!1870779 (and d!2194203 d!2193845)))

(assert (=> bs!1870779 (= (= (head!14261 s!7408) (h!74239 s!7408)) (= lambda!414720 lambda!414676))))

(declare-fun bs!1870780 () Bool)

(assert (= bs!1870780 (and d!2194203 d!2193793)))

(assert (=> bs!1870780 (= (= (head!14261 s!7408) (h!74239 s!7408)) (= lambda!414720 lambda!414662))))

(declare-fun bs!1870781 () Bool)

(assert (= bs!1870781 (and d!2194203 d!2194079)))

(assert (=> bs!1870781 (= (= (head!14261 s!7408) (head!14261 (t!381680 s!7408))) (= lambda!414720 lambda!414704))))

(declare-fun bs!1870782 () Bool)

(assert (= bs!1870782 (and d!2194203 d!2194199)))

(assert (=> bs!1870782 (= lambda!414720 lambda!414719)))

(declare-fun bs!1870783 () Bool)

(assert (= bs!1870783 (and d!2194203 d!2194153)))

(assert (=> bs!1870783 (= (= (head!14261 s!7408) (head!14261 (t!381680 s!7408))) (= lambda!414720 lambda!414716))))

(declare-fun bs!1870784 () Bool)

(assert (= bs!1870784 (and d!2194203 d!2194095)))

(assert (=> bs!1870784 (= lambda!414720 lambda!414706)))

(assert (=> d!2194203 true))

(assert (=> d!2194203 (= (derivationStepZipper!2918 lt!2518431 (head!14261 s!7408)) (flatMap!2409 lt!2518431 lambda!414720))))

(declare-fun bs!1870785 () Bool)

(assert (= bs!1870785 d!2194203))

(declare-fun m!7739754 () Bool)

(assert (=> bs!1870785 m!7739754))

(assert (=> b!7032280 d!2194203))

(assert (=> b!7032280 d!2194097))

(assert (=> b!7032280 d!2194099))

(declare-fun b!7032869 () Bool)

(declare-fun e!4227866 () Bool)

(declare-fun lt!2518790 () Context!12916)

(assert (=> b!7032869 (= e!4227866 (contains!20455 (toList!10805 lt!2518432) lt!2518790))))

(declare-fun d!2194205 () Bool)

(assert (=> d!2194205 e!4227866))

(declare-fun res!2870907 () Bool)

(assert (=> d!2194205 (=> (not res!2870907) (not e!4227866))))

(assert (=> d!2194205 (= res!2870907 (dynLambda!27374 lambda!414584 lt!2518790))))

(declare-fun e!4227865 () Context!12916)

(assert (=> d!2194205 (= lt!2518790 e!4227865)))

(declare-fun c!1308149 () Bool)

(declare-fun e!4227867 () Bool)

(assert (=> d!2194205 (= c!1308149 e!4227867)))

(declare-fun res!2870906 () Bool)

(assert (=> d!2194205 (=> (not res!2870906) (not e!4227867))))

(assert (=> d!2194205 (= res!2870906 (is-Cons!67792 (toList!10805 lt!2518432)))))

(assert (=> d!2194205 (exists!3387 (toList!10805 lt!2518432) lambda!414584)))

(assert (=> d!2194205 (= (getWitness!1469 (toList!10805 lt!2518432) lambda!414584) lt!2518790)))

(declare-fun b!7032870 () Bool)

(assert (=> b!7032870 (= e!4227865 (h!74240 (toList!10805 lt!2518432)))))

(declare-fun b!7032871 () Bool)

(declare-fun lt!2518789 () Unit!161594)

(declare-fun Unit!161598 () Unit!161594)

(assert (=> b!7032871 (= lt!2518789 Unit!161598)))

(assert (=> b!7032871 false))

(declare-fun e!4227868 () Context!12916)

(declare-fun head!14263 (List!67916) Context!12916)

(assert (=> b!7032871 (= e!4227868 (head!14263 (toList!10805 lt!2518432)))))

(declare-fun b!7032872 () Bool)

(assert (=> b!7032872 (= e!4227868 (getWitness!1469 (t!381681 (toList!10805 lt!2518432)) lambda!414584))))

(declare-fun b!7032873 () Bool)

(assert (=> b!7032873 (= e!4227865 e!4227868)))

(declare-fun c!1308148 () Bool)

(assert (=> b!7032873 (= c!1308148 (is-Cons!67792 (toList!10805 lt!2518432)))))

(declare-fun b!7032874 () Bool)

(assert (=> b!7032874 (= e!4227867 (dynLambda!27374 lambda!414584 (h!74240 (toList!10805 lt!2518432))))))

(assert (= (and d!2194205 res!2870906) b!7032874))

(assert (= (and d!2194205 c!1308149) b!7032870))

(assert (= (and d!2194205 (not c!1308149)) b!7032873))

(assert (= (and b!7032873 c!1308148) b!7032872))

(assert (= (and b!7032873 (not c!1308148)) b!7032871))

(assert (= (and d!2194205 res!2870907) b!7032869))

(declare-fun b_lambda!266457 () Bool)

(assert (=> (not b_lambda!266457) (not d!2194205)))

(declare-fun b_lambda!266459 () Bool)

(assert (=> (not b_lambda!266459) (not b!7032874)))

(assert (=> b!7032871 m!7738616))

(declare-fun m!7739756 () Bool)

(assert (=> b!7032871 m!7739756))

(declare-fun m!7739758 () Bool)

(assert (=> d!2194205 m!7739758))

(assert (=> d!2194205 m!7738616))

(declare-fun m!7739760 () Bool)

(assert (=> d!2194205 m!7739760))

(assert (=> b!7032869 m!7738616))

(declare-fun m!7739762 () Bool)

(assert (=> b!7032869 m!7739762))

(declare-fun m!7739764 () Bool)

(assert (=> b!7032874 m!7739764))

(declare-fun m!7739766 () Bool)

(assert (=> b!7032872 m!7739766))

(assert (=> d!2193781 d!2194205))

(assert (=> d!2193781 d!2193783))

(declare-fun d!2194207 () Bool)

(declare-fun lt!2518791 () Bool)

(assert (=> d!2194207 (= lt!2518791 (exists!3387 (toList!10805 lt!2518432) lambda!414584))))

(assert (=> d!2194207 (= lt!2518791 (choose!53245 lt!2518432 lambda!414584))))

(assert (=> d!2194207 (= (exists!3386 lt!2518432 lambda!414584) lt!2518791)))

(declare-fun bs!1870786 () Bool)

(assert (= bs!1870786 d!2194207))

(assert (=> bs!1870786 m!7738616))

(assert (=> bs!1870786 m!7738616))

(assert (=> bs!1870786 m!7739760))

(declare-fun m!7739768 () Bool)

(assert (=> bs!1870786 m!7739768))

(assert (=> d!2193781 d!2194207))

(declare-fun d!2194209 () Bool)

(declare-fun c!1308152 () Bool)

(assert (=> d!2194209 (= c!1308152 (is-Nil!67791 lt!2518689))))

(declare-fun e!4227871 () (Set C!35194))

(assert (=> d!2194209 (= (content!13531 lt!2518689) e!4227871)))

(declare-fun b!7032879 () Bool)

(assert (=> b!7032879 (= e!4227871 (as set.empty (Set C!35194)))))

(declare-fun b!7032880 () Bool)

(assert (=> b!7032880 (= e!4227871 (set.union (set.insert (h!74239 lt!2518689) (as set.empty (Set C!35194))) (content!13531 (t!381680 lt!2518689))))))

(assert (= (and d!2194209 c!1308152) b!7032879))

(assert (= (and d!2194209 (not c!1308152)) b!7032880))

(declare-fun m!7739770 () Bool)

(assert (=> b!7032880 m!7739770))

(declare-fun m!7739772 () Bool)

(assert (=> b!7032880 m!7739772))

(assert (=> d!2193883 d!2194209))

(declare-fun d!2194211 () Bool)

(declare-fun c!1308153 () Bool)

(assert (=> d!2194211 (= c!1308153 (is-Nil!67791 (_1!37338 lt!2518462)))))

(declare-fun e!4227872 () (Set C!35194))

(assert (=> d!2194211 (= (content!13531 (_1!37338 lt!2518462)) e!4227872)))

(declare-fun b!7032881 () Bool)

(assert (=> b!7032881 (= e!4227872 (as set.empty (Set C!35194)))))

(declare-fun b!7032882 () Bool)

(assert (=> b!7032882 (= e!4227872 (set.union (set.insert (h!74239 (_1!37338 lt!2518462)) (as set.empty (Set C!35194))) (content!13531 (t!381680 (_1!37338 lt!2518462)))))))

(assert (= (and d!2194211 c!1308153) b!7032881))

(assert (= (and d!2194211 (not c!1308153)) b!7032882))

(declare-fun m!7739774 () Bool)

(assert (=> b!7032882 m!7739774))

(assert (=> b!7032882 m!7739720))

(assert (=> d!2193883 d!2194211))

(declare-fun d!2194213 () Bool)

(declare-fun c!1308154 () Bool)

(assert (=> d!2194213 (= c!1308154 (is-Nil!67791 (_2!37338 lt!2518462)))))

(declare-fun e!4227873 () (Set C!35194))

(assert (=> d!2194213 (= (content!13531 (_2!37338 lt!2518462)) e!4227873)))

(declare-fun b!7032883 () Bool)

(assert (=> b!7032883 (= e!4227873 (as set.empty (Set C!35194)))))

(declare-fun b!7032884 () Bool)

(assert (=> b!7032884 (= e!4227873 (set.union (set.insert (h!74239 (_2!37338 lt!2518462)) (as set.empty (Set C!35194))) (content!13531 (t!381680 (_2!37338 lt!2518462)))))))

(assert (= (and d!2194213 c!1308154) b!7032883))

(assert (= (and d!2194213 (not c!1308154)) b!7032884))

(declare-fun m!7739776 () Bool)

(assert (=> b!7032884 m!7739776))

(declare-fun m!7739778 () Bool)

(assert (=> b!7032884 m!7739778))

(assert (=> d!2193883 d!2194213))

(declare-fun bs!1870787 () Bool)

(declare-fun d!2194215 () Bool)

(assert (= bs!1870787 (and d!2194215 d!2194177)))

(declare-fun lambda!414721 () Int)

(assert (=> bs!1870787 (= lambda!414721 lambda!414717)))

(declare-fun bs!1870788 () Bool)

(assert (= bs!1870788 (and d!2194215 d!2194141)))

(assert (=> bs!1870788 (= lambda!414721 lambda!414714)))

(declare-fun bs!1870789 () Bool)

(assert (= bs!1870789 (and d!2194215 b!7032163)))

(assert (=> bs!1870789 (not (= lambda!414721 lambda!414584))))

(declare-fun bs!1870790 () Bool)

(assert (= bs!1870790 (and d!2194215 b!7032149)))

(assert (=> bs!1870790 (= lambda!414721 lambda!414588)))

(declare-fun bs!1870791 () Bool)

(assert (= bs!1870791 (and d!2194215 d!2193779)))

(assert (=> bs!1870791 (not (= lambda!414721 lambda!414659))))

(declare-fun bs!1870792 () Bool)

(assert (= bs!1870792 (and d!2194215 d!2194129)))

(assert (=> bs!1870792 (= lambda!414721 lambda!414712)))

(declare-fun bs!1870793 () Bool)

(assert (= bs!1870793 (and d!2194215 d!2193775)))

(assert (=> bs!1870793 (not (= lambda!414721 lambda!414656))))

(declare-fun bs!1870794 () Bool)

(assert (= bs!1870794 (and d!2194215 d!2194119)))

(assert (=> bs!1870794 (not (= lambda!414721 lambda!414708))))

(declare-fun bs!1870795 () Bool)

(assert (= bs!1870795 (and d!2194215 d!2194131)))

(assert (=> bs!1870795 (not (= lambda!414721 lambda!414713))))

(declare-fun bs!1870796 () Bool)

(assert (= bs!1870796 (and d!2194215 d!2194035)))

(assert (=> bs!1870796 (= lambda!414721 lambda!414702)))

(declare-fun bs!1870797 () Bool)

(assert (= bs!1870797 (and d!2194215 d!2194039)))

(assert (=> bs!1870797 (= lambda!414721 lambda!414703)))

(declare-fun bs!1870798 () Bool)

(assert (= bs!1870798 (and d!2194215 d!2194121)))

(assert (=> bs!1870798 (not (= lambda!414721 lambda!414711))))

(assert (=> d!2194215 (= (nullableZipper!2578 lt!2518426) (exists!3386 lt!2518426 lambda!414721))))

(declare-fun bs!1870799 () Bool)

(assert (= bs!1870799 d!2194215))

(declare-fun m!7739780 () Bool)

(assert (=> bs!1870799 m!7739780))

(assert (=> b!7032310 d!2194215))

(declare-fun b!7032885 () Bool)

(declare-fun e!4227879 () (Set Context!12916))

(declare-fun call!638648 () (Set Context!12916))

(declare-fun call!638652 () (Set Context!12916))

(assert (=> b!7032885 (= e!4227879 (set.union call!638648 call!638652))))

(declare-fun b!7032886 () Bool)

(declare-fun e!4227877 () (Set Context!12916))

(declare-fun call!638650 () (Set Context!12916))

(assert (=> b!7032886 (= e!4227877 call!638650)))

(declare-fun b!7032887 () Bool)

(declare-fun e!4227878 () (Set Context!12916))

(assert (=> b!7032887 (= e!4227878 (as set.empty (Set Context!12916)))))

(declare-fun bm!638642 () Bool)

(declare-fun call!638647 () (Set Context!12916))

(assert (=> bm!638642 (= call!638652 call!638647)))

(declare-fun bm!638643 () Bool)

(declare-fun call!638651 () List!67914)

(declare-fun call!638649 () List!67914)

(assert (=> bm!638643 (= call!638651 call!638649)))

(declare-fun c!1308155 () Bool)

(declare-fun d!2194217 () Bool)

(assert (=> d!2194217 (= c!1308155 (and (is-ElementMatch!17462 (ite c!1307983 (regOne!35437 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307982 (regTwo!35436 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307980 (regOne!35436 (h!74238 (exprs!6958 lt!2518419))) (reg!17791 (h!74238 (exprs!6958 lt!2518419))))))) (= (c!1307927 (ite c!1307983 (regOne!35437 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307982 (regTwo!35436 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307980 (regOne!35436 (h!74238 (exprs!6958 lt!2518419))) (reg!17791 (h!74238 (exprs!6958 lt!2518419))))))) (h!74239 s!7408))))))

(declare-fun e!4227874 () (Set Context!12916))

(assert (=> d!2194217 (= (derivationStepZipperDown!2126 (ite c!1307983 (regOne!35437 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307982 (regTwo!35436 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307980 (regOne!35436 (h!74238 (exprs!6958 lt!2518419))) (reg!17791 (h!74238 (exprs!6958 lt!2518419)))))) (ite (or c!1307983 c!1307982) lt!2518444 (Context!12917 call!638602)) (h!74239 s!7408)) e!4227874)))

(declare-fun b!7032888 () Bool)

(assert (=> b!7032888 (= e!4227878 call!638650)))

(declare-fun b!7032889 () Bool)

(declare-fun c!1308157 () Bool)

(assert (=> b!7032889 (= c!1308157 (is-Star!17462 (ite c!1307983 (regOne!35437 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307982 (regTwo!35436 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307980 (regOne!35436 (h!74238 (exprs!6958 lt!2518419))) (reg!17791 (h!74238 (exprs!6958 lt!2518419))))))))))

(assert (=> b!7032889 (= e!4227877 e!4227878)))

(declare-fun c!1308156 () Bool)

(declare-fun c!1308159 () Bool)

(declare-fun c!1308158 () Bool)

(declare-fun bm!638644 () Bool)

(assert (=> bm!638644 (= call!638647 (derivationStepZipperDown!2126 (ite c!1308159 (regOne!35437 (ite c!1307983 (regOne!35437 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307982 (regTwo!35436 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307980 (regOne!35436 (h!74238 (exprs!6958 lt!2518419))) (reg!17791 (h!74238 (exprs!6958 lt!2518419))))))) (ite c!1308158 (regTwo!35436 (ite c!1307983 (regOne!35437 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307982 (regTwo!35436 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307980 (regOne!35436 (h!74238 (exprs!6958 lt!2518419))) (reg!17791 (h!74238 (exprs!6958 lt!2518419))))))) (ite c!1308156 (regOne!35436 (ite c!1307983 (regOne!35437 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307982 (regTwo!35436 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307980 (regOne!35436 (h!74238 (exprs!6958 lt!2518419))) (reg!17791 (h!74238 (exprs!6958 lt!2518419))))))) (reg!17791 (ite c!1307983 (regOne!35437 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307982 (regTwo!35436 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307980 (regOne!35436 (h!74238 (exprs!6958 lt!2518419))) (reg!17791 (h!74238 (exprs!6958 lt!2518419)))))))))) (ite (or c!1308159 c!1308158) (ite (or c!1307983 c!1307982) lt!2518444 (Context!12917 call!638602)) (Context!12917 call!638651)) (h!74239 s!7408)))))

(declare-fun b!7032890 () Bool)

(assert (=> b!7032890 (= e!4227874 (set.insert (ite (or c!1307983 c!1307982) lt!2518444 (Context!12917 call!638602)) (as set.empty (Set Context!12916))))))

(declare-fun bm!638645 () Bool)

(assert (=> bm!638645 (= call!638650 call!638652)))

(declare-fun b!7032891 () Bool)

(assert (=> b!7032891 (= e!4227879 e!4227877)))

(assert (=> b!7032891 (= c!1308156 (is-Concat!26307 (ite c!1307983 (regOne!35437 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307982 (regTwo!35436 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307980 (regOne!35436 (h!74238 (exprs!6958 lt!2518419))) (reg!17791 (h!74238 (exprs!6958 lt!2518419))))))))))

(declare-fun bm!638646 () Bool)

(assert (=> bm!638646 (= call!638649 ($colon$colon!2572 (exprs!6958 (ite (or c!1307983 c!1307982) lt!2518444 (Context!12917 call!638602))) (ite (or c!1308158 c!1308156) (regTwo!35436 (ite c!1307983 (regOne!35437 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307982 (regTwo!35436 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307980 (regOne!35436 (h!74238 (exprs!6958 lt!2518419))) (reg!17791 (h!74238 (exprs!6958 lt!2518419))))))) (ite c!1307983 (regOne!35437 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307982 (regTwo!35436 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307980 (regOne!35436 (h!74238 (exprs!6958 lt!2518419))) (reg!17791 (h!74238 (exprs!6958 lt!2518419)))))))))))

(declare-fun b!7032892 () Bool)

(declare-fun e!4227876 () (Set Context!12916))

(assert (=> b!7032892 (= e!4227876 (set.union call!638647 call!638648))))

(declare-fun b!7032893 () Bool)

(declare-fun e!4227875 () Bool)

(assert (=> b!7032893 (= c!1308158 e!4227875)))

(declare-fun res!2870908 () Bool)

(assert (=> b!7032893 (=> (not res!2870908) (not e!4227875))))

(assert (=> b!7032893 (= res!2870908 (is-Concat!26307 (ite c!1307983 (regOne!35437 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307982 (regTwo!35436 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307980 (regOne!35436 (h!74238 (exprs!6958 lt!2518419))) (reg!17791 (h!74238 (exprs!6958 lt!2518419))))))))))

(assert (=> b!7032893 (= e!4227876 e!4227879)))

(declare-fun b!7032894 () Bool)

(assert (=> b!7032894 (= e!4227875 (nullable!7173 (regOne!35436 (ite c!1307983 (regOne!35437 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307982 (regTwo!35436 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307980 (regOne!35436 (h!74238 (exprs!6958 lt!2518419))) (reg!17791 (h!74238 (exprs!6958 lt!2518419)))))))))))

(declare-fun bm!638647 () Bool)

(assert (=> bm!638647 (= call!638648 (derivationStepZipperDown!2126 (ite c!1308159 (regTwo!35437 (ite c!1307983 (regOne!35437 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307982 (regTwo!35436 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307980 (regOne!35436 (h!74238 (exprs!6958 lt!2518419))) (reg!17791 (h!74238 (exprs!6958 lt!2518419))))))) (regOne!35436 (ite c!1307983 (regOne!35437 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307982 (regTwo!35436 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307980 (regOne!35436 (h!74238 (exprs!6958 lt!2518419))) (reg!17791 (h!74238 (exprs!6958 lt!2518419)))))))) (ite c!1308159 (ite (or c!1307983 c!1307982) lt!2518444 (Context!12917 call!638602)) (Context!12917 call!638649)) (h!74239 s!7408)))))

(declare-fun b!7032895 () Bool)

(assert (=> b!7032895 (= e!4227874 e!4227876)))

(assert (=> b!7032895 (= c!1308159 (is-Union!17462 (ite c!1307983 (regOne!35437 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307982 (regTwo!35436 (h!74238 (exprs!6958 lt!2518419))) (ite c!1307980 (regOne!35436 (h!74238 (exprs!6958 lt!2518419))) (reg!17791 (h!74238 (exprs!6958 lt!2518419))))))))))

(assert (= (and d!2194217 c!1308155) b!7032890))

(assert (= (and d!2194217 (not c!1308155)) b!7032895))

(assert (= (and b!7032895 c!1308159) b!7032892))

(assert (= (and b!7032895 (not c!1308159)) b!7032893))

(assert (= (and b!7032893 res!2870908) b!7032894))

(assert (= (and b!7032893 c!1308158) b!7032885))

(assert (= (and b!7032893 (not c!1308158)) b!7032891))

(assert (= (and b!7032891 c!1308156) b!7032886))

(assert (= (and b!7032891 (not c!1308156)) b!7032889))

(assert (= (and b!7032889 c!1308157) b!7032888))

(assert (= (and b!7032889 (not c!1308157)) b!7032887))

(assert (= (or b!7032886 b!7032888) bm!638643))

(assert (= (or b!7032886 b!7032888) bm!638645))

(assert (= (or b!7032885 bm!638645) bm!638642))

(assert (= (or b!7032885 bm!638643) bm!638646))

(assert (= (or b!7032892 bm!638642) bm!638644))

(assert (= (or b!7032892 b!7032885) bm!638647))

(declare-fun m!7739782 () Bool)

(assert (=> b!7032894 m!7739782))

(declare-fun m!7739784 () Bool)

(assert (=> bm!638647 m!7739784))

(declare-fun m!7739786 () Bool)

(assert (=> bm!638646 m!7739786))

(declare-fun m!7739788 () Bool)

(assert (=> bm!638644 m!7739788))

(declare-fun m!7739790 () Bool)

(assert (=> b!7032890 m!7739790))

(assert (=> bm!638595 d!2194217))

(assert (=> d!2193853 d!2193839))

(declare-fun d!2194219 () Bool)

(assert (=> d!2194219 true))

(declare-fun setRes!49160 () Bool)

(assert (=> d!2194219 setRes!49160))

(declare-fun condSetEmpty!49160 () Bool)

(declare-fun res!2870911 () (Set Context!12916))

(assert (=> d!2194219 (= condSetEmpty!49160 (= res!2870911 (as set.empty (Set Context!12916))))))

(assert (=> d!2194219 (= (choose!53250 lt!2518429 lambda!414585) res!2870911)))

(declare-fun setIsEmpty!49160 () Bool)

(assert (=> setIsEmpty!49160 setRes!49160))

(declare-fun setElem!49160 () Context!12916)

(declare-fun tp!1936441 () Bool)

(declare-fun setNonEmpty!49160 () Bool)

(declare-fun e!4227882 () Bool)

(assert (=> setNonEmpty!49160 (= setRes!49160 (and tp!1936441 (inv!86515 setElem!49160) e!4227882))))

(declare-fun setRest!49160 () (Set Context!12916))

(assert (=> setNonEmpty!49160 (= res!2870911 (set.union (set.insert setElem!49160 (as set.empty (Set Context!12916))) setRest!49160))))

(declare-fun b!7032898 () Bool)

(declare-fun tp!1936442 () Bool)

(assert (=> b!7032898 (= e!4227882 tp!1936442)))

(assert (= (and d!2194219 condSetEmpty!49160) setIsEmpty!49160))

(assert (= (and d!2194219 (not condSetEmpty!49160)) setNonEmpty!49160))

(assert (= setNonEmpty!49160 b!7032898))

(declare-fun m!7739792 () Bool)

(assert (=> setNonEmpty!49160 m!7739792))

(assert (=> d!2193879 d!2194219))

(declare-fun d!2194221 () Bool)

(assert (=> d!2194221 (= (nullable!7173 (h!74238 (exprs!6958 lt!2518443))) (nullableFct!2726 (h!74238 (exprs!6958 lt!2518443))))))

(declare-fun bs!1870800 () Bool)

(assert (= bs!1870800 d!2194221))

(declare-fun m!7739794 () Bool)

(assert (=> bs!1870800 m!7739794))

(assert (=> b!7032430 d!2194221))

(assert (=> d!2193873 d!2193879))

(declare-fun d!2194223 () Bool)

(assert (=> d!2194223 (= (map!15761 lt!2518429 lambda!414585) (set.insert (dynLambda!27376 lambda!414585 lt!2518443) (as set.empty (Set Context!12916))))))

(assert (=> d!2194223 true))

(declare-fun _$12!2346 () Unit!161594)

(assert (=> d!2194223 (= (choose!53248 lt!2518429 lt!2518443 lambda!414585) _$12!2346)))

(declare-fun b_lambda!266461 () Bool)

(assert (=> (not b_lambda!266461) (not d!2194223)))

(declare-fun bs!1870801 () Bool)

(assert (= bs!1870801 d!2194223))

(assert (=> bs!1870801 m!7738592))

(assert (=> bs!1870801 m!7739038))

(assert (=> bs!1870801 m!7739038))

(assert (=> bs!1870801 m!7739040))

(assert (=> d!2193873 d!2194223))

(declare-fun d!2194225 () Bool)

(declare-fun c!1308160 () Bool)

(assert (=> d!2194225 (= c!1308160 (isEmpty!39536 (tail!13550 (_1!37338 lt!2518462))))))

(declare-fun e!4227883 () Bool)

(assert (=> d!2194225 (= (matchZipper!3002 (derivationStepZipper!2918 lt!2518429 (head!14261 (_1!37338 lt!2518462))) (tail!13550 (_1!37338 lt!2518462))) e!4227883)))

(declare-fun b!7032899 () Bool)

(assert (=> b!7032899 (= e!4227883 (nullableZipper!2578 (derivationStepZipper!2918 lt!2518429 (head!14261 (_1!37338 lt!2518462)))))))

(declare-fun b!7032900 () Bool)

(assert (=> b!7032900 (= e!4227883 (matchZipper!3002 (derivationStepZipper!2918 (derivationStepZipper!2918 lt!2518429 (head!14261 (_1!37338 lt!2518462))) (head!14261 (tail!13550 (_1!37338 lt!2518462)))) (tail!13550 (tail!13550 (_1!37338 lt!2518462)))))))

(assert (= (and d!2194225 c!1308160) b!7032899))

(assert (= (and d!2194225 (not c!1308160)) b!7032900))

(assert (=> d!2194225 m!7738970))

(declare-fun m!7739796 () Bool)

(assert (=> d!2194225 m!7739796))

(assert (=> b!7032899 m!7738968))

(declare-fun m!7739798 () Bool)

(assert (=> b!7032899 m!7739798))

(assert (=> b!7032900 m!7738970))

(declare-fun m!7739800 () Bool)

(assert (=> b!7032900 m!7739800))

(assert (=> b!7032900 m!7738968))

(assert (=> b!7032900 m!7739800))

(declare-fun m!7739802 () Bool)

(assert (=> b!7032900 m!7739802))

(assert (=> b!7032900 m!7738970))

(declare-fun m!7739804 () Bool)

(assert (=> b!7032900 m!7739804))

(assert (=> b!7032900 m!7739802))

(assert (=> b!7032900 m!7739804))

(declare-fun m!7739806 () Bool)

(assert (=> b!7032900 m!7739806))

(assert (=> b!7032387 d!2194225))

(declare-fun bs!1870802 () Bool)

(declare-fun d!2194227 () Bool)

(assert (= bs!1870802 (and d!2194227 d!2194203)))

(declare-fun lambda!414722 () Int)

(assert (=> bs!1870802 (= (= (head!14261 (_1!37338 lt!2518462)) (head!14261 s!7408)) (= lambda!414722 lambda!414720))))

(declare-fun bs!1870803 () Bool)

(assert (= bs!1870803 (and d!2194227 b!7032161)))

(assert (=> bs!1870803 (= (= (head!14261 (_1!37338 lt!2518462)) (h!74239 s!7408)) (= lambda!414722 lambda!414587))))

(declare-fun bs!1870804 () Bool)

(assert (= bs!1870804 (and d!2194227 d!2194145)))

(assert (=> bs!1870804 (= (= (head!14261 (_1!37338 lt!2518462)) (head!14261 (_2!37338 lt!2518462))) (= lambda!414722 lambda!414715))))

(declare-fun bs!1870805 () Bool)

(assert (= bs!1870805 (and d!2194227 d!2193845)))

(assert (=> bs!1870805 (= (= (head!14261 (_1!37338 lt!2518462)) (h!74239 s!7408)) (= lambda!414722 lambda!414676))))

(declare-fun bs!1870806 () Bool)

(assert (= bs!1870806 (and d!2194227 d!2193793)))

(assert (=> bs!1870806 (= (= (head!14261 (_1!37338 lt!2518462)) (h!74239 s!7408)) (= lambda!414722 lambda!414662))))

(declare-fun bs!1870807 () Bool)

(assert (= bs!1870807 (and d!2194227 d!2194079)))

(assert (=> bs!1870807 (= (= (head!14261 (_1!37338 lt!2518462)) (head!14261 (t!381680 s!7408))) (= lambda!414722 lambda!414704))))

(declare-fun bs!1870808 () Bool)

(assert (= bs!1870808 (and d!2194227 d!2194199)))

(assert (=> bs!1870808 (= (= (head!14261 (_1!37338 lt!2518462)) (head!14261 s!7408)) (= lambda!414722 lambda!414719))))

(declare-fun bs!1870809 () Bool)

(assert (= bs!1870809 (and d!2194227 d!2194153)))

(assert (=> bs!1870809 (= (= (head!14261 (_1!37338 lt!2518462)) (head!14261 (t!381680 s!7408))) (= lambda!414722 lambda!414716))))

(declare-fun bs!1870810 () Bool)

(assert (= bs!1870810 (and d!2194227 d!2194095)))

(assert (=> bs!1870810 (= (= (head!14261 (_1!37338 lt!2518462)) (head!14261 s!7408)) (= lambda!414722 lambda!414706))))

(assert (=> d!2194227 true))

(assert (=> d!2194227 (= (derivationStepZipper!2918 lt!2518429 (head!14261 (_1!37338 lt!2518462))) (flatMap!2409 lt!2518429 lambda!414722))))

(declare-fun bs!1870811 () Bool)

(assert (= bs!1870811 d!2194227))

(declare-fun m!7739808 () Bool)

(assert (=> bs!1870811 m!7739808))

(assert (=> b!7032387 d!2194227))

(declare-fun d!2194229 () Bool)

(assert (=> d!2194229 (= (head!14261 (_1!37338 lt!2518462)) (h!74239 (_1!37338 lt!2518462)))))

(assert (=> b!7032387 d!2194229))

(declare-fun d!2194231 () Bool)

(assert (=> d!2194231 (= (tail!13550 (_1!37338 lt!2518462)) (t!381680 (_1!37338 lt!2518462)))))

(assert (=> b!7032387 d!2194231))

(declare-fun d!2194233 () Bool)

(assert (=> d!2194233 (= (nullable!7173 (h!74238 (exprs!6958 lt!2518421))) (nullableFct!2726 (h!74238 (exprs!6958 lt!2518421))))))

(declare-fun bs!1870812 () Bool)

(assert (= bs!1870812 d!2194233))

(declare-fun m!7739810 () Bool)

(assert (=> bs!1870812 m!7739810))

(assert (=> b!7032303 d!2194233))

(declare-fun d!2194235 () Bool)

(assert (=> d!2194235 (= ($colon$colon!2572 (exprs!6958 lt!2518444) (ite (or c!1307982 c!1307980) (regTwo!35436 (h!74238 (exprs!6958 lt!2518419))) (h!74238 (exprs!6958 lt!2518419)))) (Cons!67790 (ite (or c!1307982 c!1307980) (regTwo!35436 (h!74238 (exprs!6958 lt!2518419))) (h!74238 (exprs!6958 lt!2518419))) (exprs!6958 lt!2518444)))))

(assert (=> bm!638597 d!2194235))

(declare-fun d!2194237 () Bool)

(assert (=> d!2194237 (= (isEmpty!39536 (_2!37338 lt!2518462)) (is-Nil!67791 (_2!37338 lt!2518462)))))

(assert (=> d!2193835 d!2194237))

(assert (=> bs!1870598 d!2193791))

(declare-fun bs!1870813 () Bool)

(declare-fun d!2194239 () Bool)

(assert (= bs!1870813 (and d!2194239 d!2194177)))

(declare-fun lambda!414723 () Int)

(assert (=> bs!1870813 (= lambda!414723 lambda!414717)))

(declare-fun bs!1870814 () Bool)

(assert (= bs!1870814 (and d!2194239 d!2194141)))

(assert (=> bs!1870814 (= lambda!414723 lambda!414714)))

(declare-fun bs!1870815 () Bool)

(assert (= bs!1870815 (and d!2194239 b!7032163)))

(assert (=> bs!1870815 (not (= lambda!414723 lambda!414584))))

(declare-fun bs!1870816 () Bool)

(assert (= bs!1870816 (and d!2194239 b!7032149)))

(assert (=> bs!1870816 (= lambda!414723 lambda!414588)))

(declare-fun bs!1870817 () Bool)

(assert (= bs!1870817 (and d!2194239 d!2193779)))

(assert (=> bs!1870817 (not (= lambda!414723 lambda!414659))))

(declare-fun bs!1870818 () Bool)

(assert (= bs!1870818 (and d!2194239 d!2194129)))

(assert (=> bs!1870818 (= lambda!414723 lambda!414712)))

(declare-fun bs!1870819 () Bool)

(assert (= bs!1870819 (and d!2194239 d!2194215)))

(assert (=> bs!1870819 (= lambda!414723 lambda!414721)))

(declare-fun bs!1870820 () Bool)

(assert (= bs!1870820 (and d!2194239 d!2193775)))

(assert (=> bs!1870820 (not (= lambda!414723 lambda!414656))))

(declare-fun bs!1870821 () Bool)

(assert (= bs!1870821 (and d!2194239 d!2194119)))

(assert (=> bs!1870821 (not (= lambda!414723 lambda!414708))))

(declare-fun bs!1870822 () Bool)

(assert (= bs!1870822 (and d!2194239 d!2194131)))

(assert (=> bs!1870822 (not (= lambda!414723 lambda!414713))))

(declare-fun bs!1870823 () Bool)

(assert (= bs!1870823 (and d!2194239 d!2194035)))

(assert (=> bs!1870823 (= lambda!414723 lambda!414702)))

(declare-fun bs!1870824 () Bool)

(assert (= bs!1870824 (and d!2194239 d!2194039)))

(assert (=> bs!1870824 (= lambda!414723 lambda!414703)))

(declare-fun bs!1870825 () Bool)

(assert (= bs!1870825 (and d!2194239 d!2194121)))

(assert (=> bs!1870825 (not (= lambda!414723 lambda!414711))))

(assert (=> d!2194239 (= (nullableZipper!2578 lt!2518441) (exists!3386 lt!2518441 lambda!414723))))

(declare-fun bs!1870826 () Bool)

(assert (= bs!1870826 d!2194239))

(declare-fun m!7739812 () Bool)

(assert (=> bs!1870826 m!7739812))

(assert (=> b!7032384 d!2194239))

(declare-fun d!2194241 () Bool)

(assert (=> d!2194241 (= (flatMap!2409 lt!2518437 lambda!414662) (choose!53243 lt!2518437 lambda!414662))))

(declare-fun bs!1870827 () Bool)

(assert (= bs!1870827 d!2194241))

(declare-fun m!7739814 () Bool)

(assert (=> bs!1870827 m!7739814))

(assert (=> d!2193793 d!2194241))

(declare-fun d!2194243 () Bool)

(declare-fun lt!2518794 () Int)

(assert (=> d!2194243 (>= lt!2518794 0)))

(declare-fun e!4227886 () Int)

(assert (=> d!2194243 (= lt!2518794 e!4227886)))

(declare-fun c!1308163 () Bool)

(assert (=> d!2194243 (= c!1308163 (is-Nil!67791 lt!2518689))))

(assert (=> d!2194243 (= (size!41061 lt!2518689) lt!2518794)))

(declare-fun b!7032905 () Bool)

(assert (=> b!7032905 (= e!4227886 0)))

(declare-fun b!7032906 () Bool)

(assert (=> b!7032906 (= e!4227886 (+ 1 (size!41061 (t!381680 lt!2518689))))))

(assert (= (and d!2194243 c!1308163) b!7032905))

(assert (= (and d!2194243 (not c!1308163)) b!7032906))

(declare-fun m!7739816 () Bool)

(assert (=> b!7032906 m!7739816))

(assert (=> b!7032443 d!2194243))

(declare-fun d!2194245 () Bool)

(declare-fun lt!2518795 () Int)

(assert (=> d!2194245 (>= lt!2518795 0)))

(declare-fun e!4227887 () Int)

(assert (=> d!2194245 (= lt!2518795 e!4227887)))

(declare-fun c!1308164 () Bool)

(assert (=> d!2194245 (= c!1308164 (is-Nil!67791 (_1!37338 lt!2518462)))))

(assert (=> d!2194245 (= (size!41061 (_1!37338 lt!2518462)) lt!2518795)))

(declare-fun b!7032907 () Bool)

(assert (=> b!7032907 (= e!4227887 0)))

(declare-fun b!7032908 () Bool)

(assert (=> b!7032908 (= e!4227887 (+ 1 (size!41061 (t!381680 (_1!37338 lt!2518462)))))))

(assert (= (and d!2194245 c!1308164) b!7032907))

(assert (= (and d!2194245 (not c!1308164)) b!7032908))

(assert (=> b!7032908 m!7739714))

(assert (=> b!7032443 d!2194245))

(declare-fun d!2194247 () Bool)

(declare-fun lt!2518796 () Int)

(assert (=> d!2194247 (>= lt!2518796 0)))

(declare-fun e!4227888 () Int)

(assert (=> d!2194247 (= lt!2518796 e!4227888)))

(declare-fun c!1308165 () Bool)

(assert (=> d!2194247 (= c!1308165 (is-Nil!67791 (_2!37338 lt!2518462)))))

(assert (=> d!2194247 (= (size!41061 (_2!37338 lt!2518462)) lt!2518796)))

(declare-fun b!7032909 () Bool)

(assert (=> b!7032909 (= e!4227888 0)))

(declare-fun b!7032910 () Bool)

(assert (=> b!7032910 (= e!4227888 (+ 1 (size!41061 (t!381680 (_2!37338 lt!2518462)))))))

(assert (= (and d!2194247 c!1308165) b!7032909))

(assert (= (and d!2194247 (not c!1308165)) b!7032910))

(declare-fun m!7739818 () Bool)

(assert (=> b!7032910 m!7739818))

(assert (=> b!7032443 d!2194247))

(declare-fun d!2194249 () Bool)

(declare-fun res!2870912 () Bool)

(declare-fun e!4227889 () Bool)

(assert (=> d!2194249 (=> res!2870912 e!4227889)))

(assert (=> d!2194249 (= res!2870912 (is-Nil!67790 (exprs!6958 lt!2518443)))))

(assert (=> d!2194249 (= (forall!16376 (exprs!6958 lt!2518443) lambda!414665) e!4227889)))

(declare-fun b!7032911 () Bool)

(declare-fun e!4227890 () Bool)

(assert (=> b!7032911 (= e!4227889 e!4227890)))

(declare-fun res!2870913 () Bool)

(assert (=> b!7032911 (=> (not res!2870913) (not e!4227890))))

(assert (=> b!7032911 (= res!2870913 (dynLambda!27381 lambda!414665 (h!74238 (exprs!6958 lt!2518443))))))

(declare-fun b!7032912 () Bool)

(assert (=> b!7032912 (= e!4227890 (forall!16376 (t!381679 (exprs!6958 lt!2518443)) lambda!414665))))

(assert (= (and d!2194249 (not res!2870912)) b!7032911))

(assert (= (and b!7032911 res!2870913) b!7032912))

(declare-fun b_lambda!266463 () Bool)

(assert (=> (not b_lambda!266463) (not b!7032911)))

(declare-fun m!7739820 () Bool)

(assert (=> b!7032911 m!7739820))

(declare-fun m!7739822 () Bool)

(assert (=> b!7032912 m!7739822))

(assert (=> d!2193813 d!2194249))

(declare-fun b!7032916 () Bool)

(declare-fun e!4227891 () Bool)

(declare-fun lt!2518797 () List!67915)

(assert (=> b!7032916 (= e!4227891 (or (not (= (_2!37338 (get!23749 lt!2518673)) Nil!67791)) (= lt!2518797 (_1!37338 (get!23749 lt!2518673)))))))

(declare-fun b!7032915 () Bool)

(declare-fun res!2870915 () Bool)

(assert (=> b!7032915 (=> (not res!2870915) (not e!4227891))))

(assert (=> b!7032915 (= res!2870915 (= (size!41061 lt!2518797) (+ (size!41061 (_1!37338 (get!23749 lt!2518673))) (size!41061 (_2!37338 (get!23749 lt!2518673))))))))

(declare-fun b!7032914 () Bool)

(declare-fun e!4227892 () List!67915)

(assert (=> b!7032914 (= e!4227892 (Cons!67791 (h!74239 (_1!37338 (get!23749 lt!2518673))) (++!15505 (t!381680 (_1!37338 (get!23749 lt!2518673))) (_2!37338 (get!23749 lt!2518673)))))))

(declare-fun d!2194251 () Bool)

(assert (=> d!2194251 e!4227891))

(declare-fun res!2870914 () Bool)

(assert (=> d!2194251 (=> (not res!2870914) (not e!4227891))))

(assert (=> d!2194251 (= res!2870914 (= (content!13531 lt!2518797) (set.union (content!13531 (_1!37338 (get!23749 lt!2518673))) (content!13531 (_2!37338 (get!23749 lt!2518673))))))))

(assert (=> d!2194251 (= lt!2518797 e!4227892)))

(declare-fun c!1308166 () Bool)

(assert (=> d!2194251 (= c!1308166 (is-Nil!67791 (_1!37338 (get!23749 lt!2518673))))))

(assert (=> d!2194251 (= (++!15505 (_1!37338 (get!23749 lt!2518673)) (_2!37338 (get!23749 lt!2518673))) lt!2518797)))

(declare-fun b!7032913 () Bool)

(assert (=> b!7032913 (= e!4227892 (_2!37338 (get!23749 lt!2518673)))))

(assert (= (and d!2194251 c!1308166) b!7032913))

(assert (= (and d!2194251 (not c!1308166)) b!7032914))

(assert (= (and d!2194251 res!2870914) b!7032915))

(assert (= (and b!7032915 res!2870915) b!7032916))

(declare-fun m!7739824 () Bool)

(assert (=> b!7032915 m!7739824))

(declare-fun m!7739826 () Bool)

(assert (=> b!7032915 m!7739826))

(declare-fun m!7739828 () Bool)

(assert (=> b!7032915 m!7739828))

(declare-fun m!7739830 () Bool)

(assert (=> b!7032914 m!7739830))

(declare-fun m!7739832 () Bool)

(assert (=> d!2194251 m!7739832))

(declare-fun m!7739834 () Bool)

(assert (=> d!2194251 m!7739834))

(declare-fun m!7739836 () Bool)

(assert (=> d!2194251 m!7739836))

(assert (=> b!7032407 d!2194251))

(assert (=> b!7032407 d!2194103))

(declare-fun b!7032917 () Bool)

(declare-fun e!4227898 () (Set Context!12916))

(declare-fun call!638654 () (Set Context!12916))

(declare-fun call!638658 () (Set Context!12916))

(assert (=> b!7032917 (= e!4227898 (set.union call!638654 call!638658))))

(declare-fun b!7032918 () Bool)

(declare-fun e!4227896 () (Set Context!12916))

(declare-fun call!638656 () (Set Context!12916))

(assert (=> b!7032918 (= e!4227896 call!638656)))

(declare-fun b!7032919 () Bool)

(declare-fun e!4227897 () (Set Context!12916))

(assert (=> b!7032919 (= e!4227897 (as set.empty (Set Context!12916)))))

(declare-fun bm!638648 () Bool)

(declare-fun call!638653 () (Set Context!12916))

(assert (=> bm!638648 (= call!638658 call!638653)))

(declare-fun bm!638649 () Bool)

(declare-fun call!638657 () List!67914)

(declare-fun call!638655 () List!67914)

(assert (=> bm!638649 (= call!638657 call!638655)))

(declare-fun d!2194253 () Bool)

(declare-fun c!1308167 () Bool)

(assert (=> d!2194253 (= c!1308167 (and (is-ElementMatch!17462 (ite c!1307983 (regTwo!35437 (h!74238 (exprs!6958 lt!2518419))) (regOne!35436 (h!74238 (exprs!6958 lt!2518419))))) (= (c!1307927 (ite c!1307983 (regTwo!35437 (h!74238 (exprs!6958 lt!2518419))) (regOne!35436 (h!74238 (exprs!6958 lt!2518419))))) (h!74239 s!7408))))))

(declare-fun e!4227893 () (Set Context!12916))

(assert (=> d!2194253 (= (derivationStepZipperDown!2126 (ite c!1307983 (regTwo!35437 (h!74238 (exprs!6958 lt!2518419))) (regOne!35436 (h!74238 (exprs!6958 lt!2518419)))) (ite c!1307983 lt!2518444 (Context!12917 call!638600)) (h!74239 s!7408)) e!4227893)))

(declare-fun b!7032920 () Bool)

(assert (=> b!7032920 (= e!4227897 call!638656)))

(declare-fun b!7032921 () Bool)

(declare-fun c!1308169 () Bool)

(assert (=> b!7032921 (= c!1308169 (is-Star!17462 (ite c!1307983 (regTwo!35437 (h!74238 (exprs!6958 lt!2518419))) (regOne!35436 (h!74238 (exprs!6958 lt!2518419))))))))

(assert (=> b!7032921 (= e!4227896 e!4227897)))

(declare-fun c!1308168 () Bool)

(declare-fun bm!638650 () Bool)

(declare-fun c!1308171 () Bool)

(declare-fun c!1308170 () Bool)

(assert (=> bm!638650 (= call!638653 (derivationStepZipperDown!2126 (ite c!1308171 (regOne!35437 (ite c!1307983 (regTwo!35437 (h!74238 (exprs!6958 lt!2518419))) (regOne!35436 (h!74238 (exprs!6958 lt!2518419))))) (ite c!1308170 (regTwo!35436 (ite c!1307983 (regTwo!35437 (h!74238 (exprs!6958 lt!2518419))) (regOne!35436 (h!74238 (exprs!6958 lt!2518419))))) (ite c!1308168 (regOne!35436 (ite c!1307983 (regTwo!35437 (h!74238 (exprs!6958 lt!2518419))) (regOne!35436 (h!74238 (exprs!6958 lt!2518419))))) (reg!17791 (ite c!1307983 (regTwo!35437 (h!74238 (exprs!6958 lt!2518419))) (regOne!35436 (h!74238 (exprs!6958 lt!2518419)))))))) (ite (or c!1308171 c!1308170) (ite c!1307983 lt!2518444 (Context!12917 call!638600)) (Context!12917 call!638657)) (h!74239 s!7408)))))

(declare-fun b!7032922 () Bool)

(assert (=> b!7032922 (= e!4227893 (set.insert (ite c!1307983 lt!2518444 (Context!12917 call!638600)) (as set.empty (Set Context!12916))))))

(declare-fun bm!638651 () Bool)

(assert (=> bm!638651 (= call!638656 call!638658)))

(declare-fun b!7032923 () Bool)

(assert (=> b!7032923 (= e!4227898 e!4227896)))

(assert (=> b!7032923 (= c!1308168 (is-Concat!26307 (ite c!1307983 (regTwo!35437 (h!74238 (exprs!6958 lt!2518419))) (regOne!35436 (h!74238 (exprs!6958 lt!2518419))))))))

(declare-fun bm!638652 () Bool)

(assert (=> bm!638652 (= call!638655 ($colon$colon!2572 (exprs!6958 (ite c!1307983 lt!2518444 (Context!12917 call!638600))) (ite (or c!1308170 c!1308168) (regTwo!35436 (ite c!1307983 (regTwo!35437 (h!74238 (exprs!6958 lt!2518419))) (regOne!35436 (h!74238 (exprs!6958 lt!2518419))))) (ite c!1307983 (regTwo!35437 (h!74238 (exprs!6958 lt!2518419))) (regOne!35436 (h!74238 (exprs!6958 lt!2518419)))))))))

(declare-fun b!7032924 () Bool)

(declare-fun e!4227895 () (Set Context!12916))

(assert (=> b!7032924 (= e!4227895 (set.union call!638653 call!638654))))

(declare-fun b!7032925 () Bool)

(declare-fun e!4227894 () Bool)

(assert (=> b!7032925 (= c!1308170 e!4227894)))

(declare-fun res!2870916 () Bool)

(assert (=> b!7032925 (=> (not res!2870916) (not e!4227894))))

(assert (=> b!7032925 (= res!2870916 (is-Concat!26307 (ite c!1307983 (regTwo!35437 (h!74238 (exprs!6958 lt!2518419))) (regOne!35436 (h!74238 (exprs!6958 lt!2518419))))))))

(assert (=> b!7032925 (= e!4227895 e!4227898)))

(declare-fun b!7032926 () Bool)

(assert (=> b!7032926 (= e!4227894 (nullable!7173 (regOne!35436 (ite c!1307983 (regTwo!35437 (h!74238 (exprs!6958 lt!2518419))) (regOne!35436 (h!74238 (exprs!6958 lt!2518419)))))))))

(declare-fun bm!638653 () Bool)

(assert (=> bm!638653 (= call!638654 (derivationStepZipperDown!2126 (ite c!1308171 (regTwo!35437 (ite c!1307983 (regTwo!35437 (h!74238 (exprs!6958 lt!2518419))) (regOne!35436 (h!74238 (exprs!6958 lt!2518419))))) (regOne!35436 (ite c!1307983 (regTwo!35437 (h!74238 (exprs!6958 lt!2518419))) (regOne!35436 (h!74238 (exprs!6958 lt!2518419)))))) (ite c!1308171 (ite c!1307983 lt!2518444 (Context!12917 call!638600)) (Context!12917 call!638655)) (h!74239 s!7408)))))

(declare-fun b!7032927 () Bool)

(assert (=> b!7032927 (= e!4227893 e!4227895)))

(assert (=> b!7032927 (= c!1308171 (is-Union!17462 (ite c!1307983 (regTwo!35437 (h!74238 (exprs!6958 lt!2518419))) (regOne!35436 (h!74238 (exprs!6958 lt!2518419))))))))

(assert (= (and d!2194253 c!1308167) b!7032922))

(assert (= (and d!2194253 (not c!1308167)) b!7032927))

(assert (= (and b!7032927 c!1308171) b!7032924))

(assert (= (and b!7032927 (not c!1308171)) b!7032925))

(assert (= (and b!7032925 res!2870916) b!7032926))

(assert (= (and b!7032925 c!1308170) b!7032917))

(assert (= (and b!7032925 (not c!1308170)) b!7032923))

(assert (= (and b!7032923 c!1308168) b!7032918))

(assert (= (and b!7032923 (not c!1308168)) b!7032921))

(assert (= (and b!7032921 c!1308169) b!7032920))

(assert (= (and b!7032921 (not c!1308169)) b!7032919))

(assert (= (or b!7032918 b!7032920) bm!638649))

(assert (= (or b!7032918 b!7032920) bm!638651))

(assert (= (or b!7032917 bm!638651) bm!638648))

(assert (= (or b!7032917 bm!638649) bm!638652))

(assert (= (or b!7032924 bm!638648) bm!638650))

(assert (= (or b!7032924 b!7032917) bm!638653))

(declare-fun m!7739838 () Bool)

(assert (=> b!7032926 m!7739838))

(declare-fun m!7739840 () Bool)

(assert (=> bm!638653 m!7739840))

(declare-fun m!7739842 () Bool)

(assert (=> bm!638652 m!7739842))

(declare-fun m!7739844 () Bool)

(assert (=> bm!638650 m!7739844))

(declare-fun m!7739846 () Bool)

(assert (=> b!7032922 m!7739846))

(assert (=> bm!638598 d!2194253))

(assert (=> d!2193799 d!2194091))

(declare-fun b!7032928 () Bool)

(declare-fun e!4227904 () (Set Context!12916))

(declare-fun call!638660 () (Set Context!12916))

(declare-fun call!638664 () (Set Context!12916))

(assert (=> b!7032928 (= e!4227904 (set.union call!638660 call!638664))))

(declare-fun b!7032929 () Bool)

(declare-fun e!4227902 () (Set Context!12916))

(declare-fun call!638662 () (Set Context!12916))

(assert (=> b!7032929 (= e!4227902 call!638662)))

(declare-fun b!7032930 () Bool)

(declare-fun e!4227903 () (Set Context!12916))

(assert (=> b!7032930 (= e!4227903 (as set.empty (Set Context!12916)))))

(declare-fun bm!638654 () Bool)

(declare-fun call!638659 () (Set Context!12916))

(assert (=> bm!638654 (= call!638664 call!638659)))

(declare-fun bm!638655 () Bool)

(declare-fun call!638663 () List!67914)

(declare-fun call!638661 () List!67914)

(assert (=> bm!638655 (= call!638663 call!638661)))

(declare-fun d!2194255 () Bool)

(declare-fun c!1308172 () Bool)

(assert (=> d!2194255 (= c!1308172 (and (is-ElementMatch!17462 (h!74238 (exprs!6958 lt!2518444))) (= (c!1307927 (h!74238 (exprs!6958 lt!2518444))) (h!74239 s!7408))))))

(declare-fun e!4227899 () (Set Context!12916))

(assert (=> d!2194255 (= (derivationStepZipperDown!2126 (h!74238 (exprs!6958 lt!2518444)) (Context!12917 (t!381679 (exprs!6958 lt!2518444))) (h!74239 s!7408)) e!4227899)))

(declare-fun b!7032931 () Bool)

(assert (=> b!7032931 (= e!4227903 call!638662)))

(declare-fun b!7032932 () Bool)

(declare-fun c!1308174 () Bool)

(assert (=> b!7032932 (= c!1308174 (is-Star!17462 (h!74238 (exprs!6958 lt!2518444))))))

(assert (=> b!7032932 (= e!4227902 e!4227903)))

(declare-fun c!1308176 () Bool)

(declare-fun c!1308173 () Bool)

(declare-fun c!1308175 () Bool)

(declare-fun bm!638656 () Bool)

(assert (=> bm!638656 (= call!638659 (derivationStepZipperDown!2126 (ite c!1308176 (regOne!35437 (h!74238 (exprs!6958 lt!2518444))) (ite c!1308175 (regTwo!35436 (h!74238 (exprs!6958 lt!2518444))) (ite c!1308173 (regOne!35436 (h!74238 (exprs!6958 lt!2518444))) (reg!17791 (h!74238 (exprs!6958 lt!2518444)))))) (ite (or c!1308176 c!1308175) (Context!12917 (t!381679 (exprs!6958 lt!2518444))) (Context!12917 call!638663)) (h!74239 s!7408)))))

(declare-fun b!7032933 () Bool)

(assert (=> b!7032933 (= e!4227899 (set.insert (Context!12917 (t!381679 (exprs!6958 lt!2518444))) (as set.empty (Set Context!12916))))))

(declare-fun bm!638657 () Bool)

(assert (=> bm!638657 (= call!638662 call!638664)))

(declare-fun b!7032934 () Bool)

(assert (=> b!7032934 (= e!4227904 e!4227902)))

(assert (=> b!7032934 (= c!1308173 (is-Concat!26307 (h!74238 (exprs!6958 lt!2518444))))))

(declare-fun bm!638658 () Bool)

(assert (=> bm!638658 (= call!638661 ($colon$colon!2572 (exprs!6958 (Context!12917 (t!381679 (exprs!6958 lt!2518444)))) (ite (or c!1308175 c!1308173) (regTwo!35436 (h!74238 (exprs!6958 lt!2518444))) (h!74238 (exprs!6958 lt!2518444)))))))

(declare-fun b!7032935 () Bool)

(declare-fun e!4227901 () (Set Context!12916))

(assert (=> b!7032935 (= e!4227901 (set.union call!638659 call!638660))))

(declare-fun b!7032936 () Bool)

(declare-fun e!4227900 () Bool)

(assert (=> b!7032936 (= c!1308175 e!4227900)))

(declare-fun res!2870917 () Bool)

(assert (=> b!7032936 (=> (not res!2870917) (not e!4227900))))

(assert (=> b!7032936 (= res!2870917 (is-Concat!26307 (h!74238 (exprs!6958 lt!2518444))))))

(assert (=> b!7032936 (= e!4227901 e!4227904)))

(declare-fun b!7032937 () Bool)

(assert (=> b!7032937 (= e!4227900 (nullable!7173 (regOne!35436 (h!74238 (exprs!6958 lt!2518444)))))))

(declare-fun bm!638659 () Bool)

(assert (=> bm!638659 (= call!638660 (derivationStepZipperDown!2126 (ite c!1308176 (regTwo!35437 (h!74238 (exprs!6958 lt!2518444))) (regOne!35436 (h!74238 (exprs!6958 lt!2518444)))) (ite c!1308176 (Context!12917 (t!381679 (exprs!6958 lt!2518444))) (Context!12917 call!638661)) (h!74239 s!7408)))))

(declare-fun b!7032938 () Bool)

(assert (=> b!7032938 (= e!4227899 e!4227901)))

(assert (=> b!7032938 (= c!1308176 (is-Union!17462 (h!74238 (exprs!6958 lt!2518444))))))

(assert (= (and d!2194255 c!1308172) b!7032933))

(assert (= (and d!2194255 (not c!1308172)) b!7032938))

(assert (= (and b!7032938 c!1308176) b!7032935))

(assert (= (and b!7032938 (not c!1308176)) b!7032936))

(assert (= (and b!7032936 res!2870917) b!7032937))

(assert (= (and b!7032936 c!1308175) b!7032928))

(assert (= (and b!7032936 (not c!1308175)) b!7032934))

(assert (= (and b!7032934 c!1308173) b!7032929))

(assert (= (and b!7032934 (not c!1308173)) b!7032932))

(assert (= (and b!7032932 c!1308174) b!7032931))

(assert (= (and b!7032932 (not c!1308174)) b!7032930))

(assert (= (or b!7032929 b!7032931) bm!638655))

(assert (= (or b!7032929 b!7032931) bm!638657))

(assert (= (or b!7032928 bm!638657) bm!638654))

(assert (= (or b!7032928 bm!638655) bm!638658))

(assert (= (or b!7032935 bm!638654) bm!638656))

(assert (= (or b!7032935 b!7032928) bm!638659))

(declare-fun m!7739848 () Bool)

(assert (=> b!7032937 m!7739848))

(declare-fun m!7739850 () Bool)

(assert (=> bm!638659 m!7739850))

(declare-fun m!7739852 () Bool)

(assert (=> bm!638658 m!7739852))

(declare-fun m!7739854 () Bool)

(assert (=> bm!638656 m!7739854))

(declare-fun m!7739856 () Bool)

(assert (=> b!7032933 m!7739856))

(assert (=> bm!638599 d!2194255))

(declare-fun b!7032939 () Bool)

(declare-fun e!4227910 () (Set Context!12916))

(declare-fun call!638666 () (Set Context!12916))

(declare-fun call!638670 () (Set Context!12916))

(assert (=> b!7032939 (= e!4227910 (set.union call!638666 call!638670))))

(declare-fun b!7032940 () Bool)

(declare-fun e!4227908 () (Set Context!12916))

(declare-fun call!638668 () (Set Context!12916))

(assert (=> b!7032940 (= e!4227908 call!638668)))

(declare-fun b!7032941 () Bool)

(declare-fun e!4227909 () (Set Context!12916))

(assert (=> b!7032941 (= e!4227909 (as set.empty (Set Context!12916)))))

(declare-fun bm!638660 () Bool)

(declare-fun call!638665 () (Set Context!12916))

(assert (=> bm!638660 (= call!638670 call!638665)))

(declare-fun bm!638661 () Bool)

(declare-fun call!638669 () List!67914)

(declare-fun call!638667 () List!67914)

(assert (=> bm!638661 (= call!638669 call!638667)))

(declare-fun d!2194257 () Bool)

(declare-fun c!1308177 () Bool)

(assert (=> d!2194257 (= c!1308177 (and (is-ElementMatch!17462 (h!74238 (exprs!6958 lt!2518443))) (= (c!1307927 (h!74238 (exprs!6958 lt!2518443))) (h!74239 s!7408))))))

(declare-fun e!4227905 () (Set Context!12916))

(assert (=> d!2194257 (= (derivationStepZipperDown!2126 (h!74238 (exprs!6958 lt!2518443)) (Context!12917 (t!381679 (exprs!6958 lt!2518443))) (h!74239 s!7408)) e!4227905)))

(declare-fun b!7032942 () Bool)

(assert (=> b!7032942 (= e!4227909 call!638668)))

(declare-fun b!7032943 () Bool)

(declare-fun c!1308179 () Bool)

(assert (=> b!7032943 (= c!1308179 (is-Star!17462 (h!74238 (exprs!6958 lt!2518443))))))

(assert (=> b!7032943 (= e!4227908 e!4227909)))

(declare-fun bm!638662 () Bool)

(declare-fun c!1308178 () Bool)

(declare-fun c!1308181 () Bool)

(declare-fun c!1308180 () Bool)

(assert (=> bm!638662 (= call!638665 (derivationStepZipperDown!2126 (ite c!1308181 (regOne!35437 (h!74238 (exprs!6958 lt!2518443))) (ite c!1308180 (regTwo!35436 (h!74238 (exprs!6958 lt!2518443))) (ite c!1308178 (regOne!35436 (h!74238 (exprs!6958 lt!2518443))) (reg!17791 (h!74238 (exprs!6958 lt!2518443)))))) (ite (or c!1308181 c!1308180) (Context!12917 (t!381679 (exprs!6958 lt!2518443))) (Context!12917 call!638669)) (h!74239 s!7408)))))

(declare-fun b!7032944 () Bool)

(assert (=> b!7032944 (= e!4227905 (set.insert (Context!12917 (t!381679 (exprs!6958 lt!2518443))) (as set.empty (Set Context!12916))))))

(declare-fun bm!638663 () Bool)

(assert (=> bm!638663 (= call!638668 call!638670)))

(declare-fun b!7032945 () Bool)

(assert (=> b!7032945 (= e!4227910 e!4227908)))

(assert (=> b!7032945 (= c!1308178 (is-Concat!26307 (h!74238 (exprs!6958 lt!2518443))))))

(declare-fun bm!638664 () Bool)

(assert (=> bm!638664 (= call!638667 ($colon$colon!2572 (exprs!6958 (Context!12917 (t!381679 (exprs!6958 lt!2518443)))) (ite (or c!1308180 c!1308178) (regTwo!35436 (h!74238 (exprs!6958 lt!2518443))) (h!74238 (exprs!6958 lt!2518443)))))))

(declare-fun b!7032946 () Bool)

(declare-fun e!4227907 () (Set Context!12916))

(assert (=> b!7032946 (= e!4227907 (set.union call!638665 call!638666))))

(declare-fun b!7032947 () Bool)

(declare-fun e!4227906 () Bool)

(assert (=> b!7032947 (= c!1308180 e!4227906)))

(declare-fun res!2870918 () Bool)

(assert (=> b!7032947 (=> (not res!2870918) (not e!4227906))))

(assert (=> b!7032947 (= res!2870918 (is-Concat!26307 (h!74238 (exprs!6958 lt!2518443))))))

(assert (=> b!7032947 (= e!4227907 e!4227910)))

(declare-fun b!7032948 () Bool)

(assert (=> b!7032948 (= e!4227906 (nullable!7173 (regOne!35436 (h!74238 (exprs!6958 lt!2518443)))))))

(declare-fun bm!638665 () Bool)

(assert (=> bm!638665 (= call!638666 (derivationStepZipperDown!2126 (ite c!1308181 (regTwo!35437 (h!74238 (exprs!6958 lt!2518443))) (regOne!35436 (h!74238 (exprs!6958 lt!2518443)))) (ite c!1308181 (Context!12917 (t!381679 (exprs!6958 lt!2518443))) (Context!12917 call!638667)) (h!74239 s!7408)))))

(declare-fun b!7032949 () Bool)

(assert (=> b!7032949 (= e!4227905 e!4227907)))

(assert (=> b!7032949 (= c!1308181 (is-Union!17462 (h!74238 (exprs!6958 lt!2518443))))))

(assert (= (and d!2194257 c!1308177) b!7032944))

(assert (= (and d!2194257 (not c!1308177)) b!7032949))

(assert (= (and b!7032949 c!1308181) b!7032946))

(assert (= (and b!7032949 (not c!1308181)) b!7032947))

(assert (= (and b!7032947 res!2870918) b!7032948))

(assert (= (and b!7032947 c!1308180) b!7032939))

(assert (= (and b!7032947 (not c!1308180)) b!7032945))

(assert (= (and b!7032945 c!1308178) b!7032940))

(assert (= (and b!7032945 (not c!1308178)) b!7032943))

(assert (= (and b!7032943 c!1308179) b!7032942))

(assert (= (and b!7032943 (not c!1308179)) b!7032941))

(assert (= (or b!7032940 b!7032942) bm!638661))

(assert (= (or b!7032940 b!7032942) bm!638663))

(assert (= (or b!7032939 bm!638663) bm!638660))

(assert (= (or b!7032939 bm!638661) bm!638664))

(assert (= (or b!7032946 bm!638660) bm!638662))

(assert (= (or b!7032946 b!7032939) bm!638665))

(declare-fun m!7739858 () Bool)

(assert (=> b!7032948 m!7739858))

(declare-fun m!7739860 () Bool)

(assert (=> bm!638665 m!7739860))

(declare-fun m!7739862 () Bool)

(assert (=> bm!638664 m!7739862))

(declare-fun m!7739864 () Bool)

(assert (=> bm!638662 m!7739864))

(declare-fun m!7739866 () Bool)

(assert (=> b!7032944 m!7739866))

(assert (=> bm!638600 d!2194257))

(assert (=> d!2193787 d!2193789))

(declare-fun d!2194259 () Bool)

(assert (=> d!2194259 (= (flatMap!2409 lt!2518437 lambda!414587) (dynLambda!27375 lambda!414587 lt!2518421))))

(assert (=> d!2194259 true))

(declare-fun _$13!4475 () Unit!161594)

(assert (=> d!2194259 (= (choose!53242 lt!2518437 lt!2518421 lambda!414587) _$13!4475)))

(declare-fun b_lambda!266465 () Bool)

(assert (=> (not b_lambda!266465) (not d!2194259)))

(declare-fun bs!1870828 () Bool)

(assert (= bs!1870828 d!2194259))

(assert (=> bs!1870828 m!7738634))

(assert (=> bs!1870828 m!7738808))

(assert (=> d!2193787 d!2194259))

(declare-fun d!2194261 () Bool)

(declare-fun c!1308182 () Bool)

(assert (=> d!2194261 (= c!1308182 (isEmpty!39536 (_2!37338 (get!23749 lt!2518673))))))

(declare-fun e!4227911 () Bool)

(assert (=> d!2194261 (= (matchZipper!3002 lt!2518422 (_2!37338 (get!23749 lt!2518673))) e!4227911)))

(declare-fun b!7032950 () Bool)

(assert (=> b!7032950 (= e!4227911 (nullableZipper!2578 lt!2518422))))

(declare-fun b!7032951 () Bool)

(assert (=> b!7032951 (= e!4227911 (matchZipper!3002 (derivationStepZipper!2918 lt!2518422 (head!14261 (_2!37338 (get!23749 lt!2518673)))) (tail!13550 (_2!37338 (get!23749 lt!2518673)))))))

(assert (= (and d!2194261 c!1308182) b!7032950))

(assert (= (and d!2194261 (not c!1308182)) b!7032951))

(declare-fun m!7739868 () Bool)

(assert (=> d!2194261 m!7739868))

(assert (=> b!7032950 m!7738938))

(declare-fun m!7739870 () Bool)

(assert (=> b!7032951 m!7739870))

(assert (=> b!7032951 m!7739870))

(declare-fun m!7739872 () Bool)

(assert (=> b!7032951 m!7739872))

(declare-fun m!7739874 () Bool)

(assert (=> b!7032951 m!7739874))

(assert (=> b!7032951 m!7739872))

(assert (=> b!7032951 m!7739874))

(declare-fun m!7739876 () Bool)

(assert (=> b!7032951 m!7739876))

(assert (=> b!7032413 d!2194261))

(assert (=> b!7032413 d!2194103))

(declare-fun d!2194263 () Bool)

(assert (=> d!2194263 (= (map!15761 z1!570 lambda!414671) (choose!53250 z1!570 lambda!414671))))

(declare-fun bs!1870829 () Bool)

(assert (= bs!1870829 d!2194263))

(declare-fun m!7739878 () Bool)

(assert (=> bs!1870829 m!7739878))

(assert (=> d!2193821 d!2194263))

(declare-fun d!2194265 () Bool)

(declare-fun c!1308183 () Bool)

(assert (=> d!2194265 (= c!1308183 (is-Nil!67792 lt!2518634))))

(declare-fun e!4227912 () (Set Context!12916))

(assert (=> d!2194265 (= (content!13529 lt!2518634) e!4227912)))

(declare-fun b!7032952 () Bool)

(assert (=> b!7032952 (= e!4227912 (as set.empty (Set Context!12916)))))

(declare-fun b!7032953 () Bool)

(assert (=> b!7032953 (= e!4227912 (set.union (set.insert (h!74240 lt!2518634) (as set.empty (Set Context!12916))) (content!13529 (t!381681 lt!2518634))))))

(assert (= (and d!2194265 c!1308183) b!7032952))

(assert (= (and d!2194265 (not c!1308183)) b!7032953))

(declare-fun m!7739880 () Bool)

(assert (=> b!7032953 m!7739880))

(declare-fun m!7739882 () Bool)

(assert (=> b!7032953 m!7739882))

(assert (=> b!7032288 d!2194265))

(assert (=> d!2193863 d!2193875))

(declare-fun d!2194267 () Bool)

(assert (=> d!2194267 (= (flatMap!2409 lt!2518429 lambda!414587) (dynLambda!27375 lambda!414587 lt!2518443))))

(assert (=> d!2194267 true))

(declare-fun _$13!4476 () Unit!161594)

(assert (=> d!2194267 (= (choose!53242 lt!2518429 lt!2518443 lambda!414587) _$13!4476)))

(declare-fun b_lambda!266467 () Bool)

(assert (=> (not b_lambda!266467) (not d!2194267)))

(declare-fun bs!1870830 () Bool)

(assert (= bs!1870830 d!2194267))

(assert (=> bs!1870830 m!7738572))

(assert (=> bs!1870830 m!7739014))

(assert (=> d!2193863 d!2194267))

(declare-fun d!2194269 () Bool)

(assert (=> d!2194269 true))

(declare-fun setRes!49161 () Bool)

(assert (=> d!2194269 setRes!49161))

(declare-fun condSetEmpty!49161 () Bool)

(declare-fun res!2870919 () (Set Context!12916))

(assert (=> d!2194269 (= condSetEmpty!49161 (= res!2870919 (as set.empty (Set Context!12916))))))

(assert (=> d!2194269 (= (choose!53243 lt!2518437 lambda!414587) res!2870919)))

(declare-fun setIsEmpty!49161 () Bool)

(assert (=> setIsEmpty!49161 setRes!49161))

(declare-fun tp!1936443 () Bool)

(declare-fun e!4227913 () Bool)

(declare-fun setNonEmpty!49161 () Bool)

(declare-fun setElem!49161 () Context!12916)

(assert (=> setNonEmpty!49161 (= setRes!49161 (and tp!1936443 (inv!86515 setElem!49161) e!4227913))))

(declare-fun setRest!49161 () (Set Context!12916))

(assert (=> setNonEmpty!49161 (= res!2870919 (set.union (set.insert setElem!49161 (as set.empty (Set Context!12916))) setRest!49161))))

(declare-fun b!7032954 () Bool)

(declare-fun tp!1936444 () Bool)

(assert (=> b!7032954 (= e!4227913 tp!1936444)))

(assert (= (and d!2194269 condSetEmpty!49161) setIsEmpty!49161))

(assert (= (and d!2194269 (not condSetEmpty!49161)) setNonEmpty!49161))

(assert (= setNonEmpty!49161 b!7032954))

(declare-fun m!7739884 () Bool)

(assert (=> setNonEmpty!49161 m!7739884))

(assert (=> d!2193789 d!2194269))

(declare-fun d!2194271 () Bool)

(declare-fun res!2870920 () Bool)

(declare-fun e!4227914 () Bool)

(assert (=> d!2194271 (=> res!2870920 e!4227914)))

(assert (=> d!2194271 (= res!2870920 (is-Nil!67790 (++!15504 (exprs!6958 lt!2518419) (exprs!6958 ct2!306))))))

(assert (=> d!2194271 (= (forall!16376 (++!15504 (exprs!6958 lt!2518419) (exprs!6958 ct2!306)) lambda!414586) e!4227914)))

(declare-fun b!7032955 () Bool)

(declare-fun e!4227915 () Bool)

(assert (=> b!7032955 (= e!4227914 e!4227915)))

(declare-fun res!2870921 () Bool)

(assert (=> b!7032955 (=> (not res!2870921) (not e!4227915))))

(assert (=> b!7032955 (= res!2870921 (dynLambda!27381 lambda!414586 (h!74238 (++!15504 (exprs!6958 lt!2518419) (exprs!6958 ct2!306)))))))

(declare-fun b!7032956 () Bool)

(assert (=> b!7032956 (= e!4227915 (forall!16376 (t!381679 (++!15504 (exprs!6958 lt!2518419) (exprs!6958 ct2!306))) lambda!414586))))

(assert (= (and d!2194271 (not res!2870920)) b!7032955))

(assert (= (and b!7032955 res!2870921) b!7032956))

(declare-fun b_lambda!266469 () Bool)

(assert (=> (not b_lambda!266469) (not b!7032955)))

(declare-fun m!7739886 () Bool)

(assert (=> b!7032955 m!7739886))

(declare-fun m!7739888 () Bool)

(assert (=> b!7032956 m!7739888))

(assert (=> d!2193785 d!2194271))

(assert (=> d!2193785 d!2193809))

(declare-fun d!2194273 () Bool)

(assert (=> d!2194273 (forall!16376 (++!15504 (exprs!6958 lt!2518419) (exprs!6958 ct2!306)) lambda!414586)))

(assert (=> d!2194273 true))

(declare-fun _$78!582 () Unit!161594)

(assert (=> d!2194273 (= (choose!53241 (exprs!6958 lt!2518419) (exprs!6958 ct2!306) lambda!414586) _$78!582)))

(declare-fun bs!1870831 () Bool)

(assert (= bs!1870831 d!2194273))

(assert (=> bs!1870831 m!7738566))

(assert (=> bs!1870831 m!7738566))

(assert (=> bs!1870831 m!7738802))

(assert (=> d!2193785 d!2194273))

(declare-fun d!2194275 () Bool)

(declare-fun res!2870922 () Bool)

(declare-fun e!4227916 () Bool)

(assert (=> d!2194275 (=> res!2870922 e!4227916)))

(assert (=> d!2194275 (= res!2870922 (is-Nil!67790 (exprs!6958 lt!2518419)))))

(assert (=> d!2194275 (= (forall!16376 (exprs!6958 lt!2518419) lambda!414586) e!4227916)))

(declare-fun b!7032957 () Bool)

(declare-fun e!4227917 () Bool)

(assert (=> b!7032957 (= e!4227916 e!4227917)))

(declare-fun res!2870923 () Bool)

(assert (=> b!7032957 (=> (not res!2870923) (not e!4227917))))

(assert (=> b!7032957 (= res!2870923 (dynLambda!27381 lambda!414586 (h!74238 (exprs!6958 lt!2518419))))))

(declare-fun b!7032958 () Bool)

(assert (=> b!7032958 (= e!4227917 (forall!16376 (t!381679 (exprs!6958 lt!2518419)) lambda!414586))))

(assert (= (and d!2194275 (not res!2870922)) b!7032957))

(assert (= (and b!7032957 res!2870923) b!7032958))

(declare-fun b_lambda!266471 () Bool)

(assert (=> (not b_lambda!266471) (not b!7032957)))

(declare-fun m!7739890 () Bool)

(assert (=> b!7032957 m!7739890))

(declare-fun m!7739892 () Bool)

(assert (=> b!7032958 m!7739892))

(assert (=> d!2193785 d!2194275))

(declare-fun b!7032959 () Bool)

(declare-fun e!4227918 () List!67914)

(assert (=> b!7032959 (= e!4227918 (exprs!6958 ct2!306))))

(declare-fun d!2194277 () Bool)

(declare-fun e!4227919 () Bool)

(assert (=> d!2194277 e!4227919))

(declare-fun res!2870925 () Bool)

(assert (=> d!2194277 (=> (not res!2870925) (not e!4227919))))

(declare-fun lt!2518798 () List!67914)

(assert (=> d!2194277 (= res!2870925 (= (content!13530 lt!2518798) (set.union (content!13530 (t!381679 (exprs!6958 lt!2518419))) (content!13530 (exprs!6958 ct2!306)))))))

(assert (=> d!2194277 (= lt!2518798 e!4227918)))

(declare-fun c!1308184 () Bool)

(assert (=> d!2194277 (= c!1308184 (is-Nil!67790 (t!381679 (exprs!6958 lt!2518419))))))

(assert (=> d!2194277 (= (++!15504 (t!381679 (exprs!6958 lt!2518419)) (exprs!6958 ct2!306)) lt!2518798)))

(declare-fun b!7032962 () Bool)

(assert (=> b!7032962 (= e!4227919 (or (not (= (exprs!6958 ct2!306) Nil!67790)) (= lt!2518798 (t!381679 (exprs!6958 lt!2518419)))))))

(declare-fun b!7032961 () Bool)

(declare-fun res!2870924 () Bool)

(assert (=> b!7032961 (=> (not res!2870924) (not e!4227919))))

(assert (=> b!7032961 (= res!2870924 (= (size!41060 lt!2518798) (+ (size!41060 (t!381679 (exprs!6958 lt!2518419))) (size!41060 (exprs!6958 ct2!306)))))))

(declare-fun b!7032960 () Bool)

(assert (=> b!7032960 (= e!4227918 (Cons!67790 (h!74238 (t!381679 (exprs!6958 lt!2518419))) (++!15504 (t!381679 (t!381679 (exprs!6958 lt!2518419))) (exprs!6958 ct2!306))))))

(assert (= (and d!2194277 c!1308184) b!7032959))

(assert (= (and d!2194277 (not c!1308184)) b!7032960))

(assert (= (and d!2194277 res!2870925) b!7032961))

(assert (= (and b!7032961 res!2870924) b!7032962))

(declare-fun m!7739894 () Bool)

(assert (=> d!2194277 m!7739894))

(assert (=> d!2194277 m!7739736))

(assert (=> d!2194277 m!7738866))

(declare-fun m!7739896 () Bool)

(assert (=> b!7032961 m!7739896))

(assert (=> b!7032961 m!7739456))

(assert (=> b!7032961 m!7738872))

(declare-fun m!7739898 () Bool)

(assert (=> b!7032960 m!7739898))

(assert (=> b!7032324 d!2194277))

(declare-fun b!7032963 () Bool)

(declare-fun e!4227925 () (Set Context!12916))

(declare-fun call!638672 () (Set Context!12916))

(declare-fun call!638676 () (Set Context!12916))

(assert (=> b!7032963 (= e!4227925 (set.union call!638672 call!638676))))

(declare-fun b!7032964 () Bool)

(declare-fun e!4227923 () (Set Context!12916))

(declare-fun call!638674 () (Set Context!12916))

(assert (=> b!7032964 (= e!4227923 call!638674)))

(declare-fun b!7032965 () Bool)

(declare-fun e!4227924 () (Set Context!12916))

(assert (=> b!7032965 (= e!4227924 (as set.empty (Set Context!12916)))))

(declare-fun bm!638666 () Bool)

(declare-fun call!638671 () (Set Context!12916))

(assert (=> bm!638666 (= call!638676 call!638671)))

(declare-fun bm!638667 () Bool)

(declare-fun call!638675 () List!67914)

(declare-fun call!638673 () List!67914)

(assert (=> bm!638667 (= call!638675 call!638673)))

(declare-fun d!2194279 () Bool)

(declare-fun c!1308185 () Bool)

(assert (=> d!2194279 (= c!1308185 (and (is-ElementMatch!17462 (h!74238 (exprs!6958 lt!2518421))) (= (c!1307927 (h!74238 (exprs!6958 lt!2518421))) (h!74239 s!7408))))))

(declare-fun e!4227920 () (Set Context!12916))

(assert (=> d!2194279 (= (derivationStepZipperDown!2126 (h!74238 (exprs!6958 lt!2518421)) (Context!12917 (t!381679 (exprs!6958 lt!2518421))) (h!74239 s!7408)) e!4227920)))

(declare-fun b!7032966 () Bool)

(assert (=> b!7032966 (= e!4227924 call!638674)))

(declare-fun b!7032967 () Bool)

(declare-fun c!1308187 () Bool)

(assert (=> b!7032967 (= c!1308187 (is-Star!17462 (h!74238 (exprs!6958 lt!2518421))))))

(assert (=> b!7032967 (= e!4227923 e!4227924)))

(declare-fun c!1308186 () Bool)

(declare-fun c!1308189 () Bool)

(declare-fun c!1308188 () Bool)

(declare-fun bm!638668 () Bool)

(assert (=> bm!638668 (= call!638671 (derivationStepZipperDown!2126 (ite c!1308189 (regOne!35437 (h!74238 (exprs!6958 lt!2518421))) (ite c!1308188 (regTwo!35436 (h!74238 (exprs!6958 lt!2518421))) (ite c!1308186 (regOne!35436 (h!74238 (exprs!6958 lt!2518421))) (reg!17791 (h!74238 (exprs!6958 lt!2518421)))))) (ite (or c!1308189 c!1308188) (Context!12917 (t!381679 (exprs!6958 lt!2518421))) (Context!12917 call!638675)) (h!74239 s!7408)))))

(declare-fun b!7032968 () Bool)

(assert (=> b!7032968 (= e!4227920 (set.insert (Context!12917 (t!381679 (exprs!6958 lt!2518421))) (as set.empty (Set Context!12916))))))

(declare-fun bm!638669 () Bool)

(assert (=> bm!638669 (= call!638674 call!638676)))

(declare-fun b!7032969 () Bool)

(assert (=> b!7032969 (= e!4227925 e!4227923)))

(assert (=> b!7032969 (= c!1308186 (is-Concat!26307 (h!74238 (exprs!6958 lt!2518421))))))

(declare-fun bm!638670 () Bool)

(assert (=> bm!638670 (= call!638673 ($colon$colon!2572 (exprs!6958 (Context!12917 (t!381679 (exprs!6958 lt!2518421)))) (ite (or c!1308188 c!1308186) (regTwo!35436 (h!74238 (exprs!6958 lt!2518421))) (h!74238 (exprs!6958 lt!2518421)))))))

(declare-fun b!7032970 () Bool)

(declare-fun e!4227922 () (Set Context!12916))

(assert (=> b!7032970 (= e!4227922 (set.union call!638671 call!638672))))

(declare-fun b!7032971 () Bool)

(declare-fun e!4227921 () Bool)

(assert (=> b!7032971 (= c!1308188 e!4227921)))

(declare-fun res!2870926 () Bool)

(assert (=> b!7032971 (=> (not res!2870926) (not e!4227921))))

(assert (=> b!7032971 (= res!2870926 (is-Concat!26307 (h!74238 (exprs!6958 lt!2518421))))))

(assert (=> b!7032971 (= e!4227922 e!4227925)))

(declare-fun b!7032972 () Bool)

(assert (=> b!7032972 (= e!4227921 (nullable!7173 (regOne!35436 (h!74238 (exprs!6958 lt!2518421)))))))

(declare-fun bm!638671 () Bool)

(assert (=> bm!638671 (= call!638672 (derivationStepZipperDown!2126 (ite c!1308189 (regTwo!35437 (h!74238 (exprs!6958 lt!2518421))) (regOne!35436 (h!74238 (exprs!6958 lt!2518421)))) (ite c!1308189 (Context!12917 (t!381679 (exprs!6958 lt!2518421))) (Context!12917 call!638673)) (h!74239 s!7408)))))

(declare-fun b!7032973 () Bool)

(assert (=> b!7032973 (= e!4227920 e!4227922)))

(assert (=> b!7032973 (= c!1308189 (is-Union!17462 (h!74238 (exprs!6958 lt!2518421))))))

(assert (= (and d!2194279 c!1308185) b!7032968))

(assert (= (and d!2194279 (not c!1308185)) b!7032973))

(assert (= (and b!7032973 c!1308189) b!7032970))

(assert (= (and b!7032973 (not c!1308189)) b!7032971))

(assert (= (and b!7032971 res!2870926) b!7032972))

(assert (= (and b!7032971 c!1308188) b!7032963))

(assert (= (and b!7032971 (not c!1308188)) b!7032969))

(assert (= (and b!7032969 c!1308186) b!7032964))

(assert (= (and b!7032969 (not c!1308186)) b!7032967))

(assert (= (and b!7032967 c!1308187) b!7032966))

(assert (= (and b!7032967 (not c!1308187)) b!7032965))

(assert (= (or b!7032964 b!7032966) bm!638667))

(assert (= (or b!7032964 b!7032966) bm!638669))

(assert (= (or b!7032963 bm!638669) bm!638666))

(assert (= (or b!7032963 bm!638667) bm!638670))

(assert (= (or b!7032970 bm!638666) bm!638668))

(assert (= (or b!7032970 b!7032963) bm!638671))

(declare-fun m!7739900 () Bool)

(assert (=> b!7032972 m!7739900))

(declare-fun m!7739902 () Bool)

(assert (=> bm!638671 m!7739902))

(declare-fun m!7739904 () Bool)

(assert (=> bm!638670 m!7739904))

(declare-fun m!7739906 () Bool)

(assert (=> bm!638668 m!7739906))

(declare-fun m!7739908 () Bool)

(assert (=> b!7032968 m!7739908))

(assert (=> bm!638580 d!2194279))

(assert (=> d!2193803 d!2194091))

(assert (=> d!2193777 d!2194071))

(declare-fun d!2194281 () Bool)

(assert (=> d!2194281 (forall!16376 (++!15504 (exprs!6958 lt!2518443) (exprs!6958 ct2!306)) lambda!414586)))

(declare-fun lt!2518799 () Unit!161594)

(assert (=> d!2194281 (= lt!2518799 (choose!53241 (exprs!6958 lt!2518443) (exprs!6958 ct2!306) lambda!414586))))

(assert (=> d!2194281 (forall!16376 (exprs!6958 lt!2518443) lambda!414586)))

(assert (=> d!2194281 (= (lemmaConcatPreservesForall!783 (exprs!6958 lt!2518443) (exprs!6958 ct2!306) lambda!414586) lt!2518799)))

(declare-fun bs!1870832 () Bool)

(assert (= bs!1870832 d!2194281))

(assert (=> bs!1870832 m!7739086))

(assert (=> bs!1870832 m!7739086))

(declare-fun m!7739910 () Bool)

(assert (=> bs!1870832 m!7739910))

(declare-fun m!7739912 () Bool)

(assert (=> bs!1870832 m!7739912))

(declare-fun m!7739914 () Bool)

(assert (=> bs!1870832 m!7739914))

(assert (=> bs!1870600 d!2194281))

(declare-fun b!7032974 () Bool)

(declare-fun e!4227926 () List!67914)

(assert (=> b!7032974 (= e!4227926 (exprs!6958 ct2!306))))

(declare-fun d!2194283 () Bool)

(declare-fun e!4227927 () Bool)

(assert (=> d!2194283 e!4227927))

(declare-fun res!2870928 () Bool)

(assert (=> d!2194283 (=> (not res!2870928) (not e!4227927))))

(declare-fun lt!2518800 () List!67914)

(assert (=> d!2194283 (= res!2870928 (= (content!13530 lt!2518800) (set.union (content!13530 (exprs!6958 lt!2518443)) (content!13530 (exprs!6958 ct2!306)))))))

(assert (=> d!2194283 (= lt!2518800 e!4227926)))

(declare-fun c!1308190 () Bool)

(assert (=> d!2194283 (= c!1308190 (is-Nil!67790 (exprs!6958 lt!2518443)))))

(assert (=> d!2194283 (= (++!15504 (exprs!6958 lt!2518443) (exprs!6958 ct2!306)) lt!2518800)))

(declare-fun b!7032977 () Bool)

(assert (=> b!7032977 (= e!4227927 (or (not (= (exprs!6958 ct2!306) Nil!67790)) (= lt!2518800 (exprs!6958 lt!2518443))))))

(declare-fun b!7032976 () Bool)

(declare-fun res!2870927 () Bool)

(assert (=> b!7032976 (=> (not res!2870927) (not e!4227927))))

(assert (=> b!7032976 (= res!2870927 (= (size!41060 lt!2518800) (+ (size!41060 (exprs!6958 lt!2518443)) (size!41060 (exprs!6958 ct2!306)))))))

(declare-fun b!7032975 () Bool)

(assert (=> b!7032975 (= e!4227926 (Cons!67790 (h!74238 (exprs!6958 lt!2518443)) (++!15504 (t!381679 (exprs!6958 lt!2518443)) (exprs!6958 ct2!306))))))

(assert (= (and d!2194283 c!1308190) b!7032974))

(assert (= (and d!2194283 (not c!1308190)) b!7032975))

(assert (= (and d!2194283 res!2870928) b!7032976))

(assert (= (and b!7032976 res!2870927) b!7032977))

(declare-fun m!7739916 () Bool)

(assert (=> d!2194283 m!7739916))

(declare-fun m!7739918 () Bool)

(assert (=> d!2194283 m!7739918))

(assert (=> d!2194283 m!7738866))

(declare-fun m!7739920 () Bool)

(assert (=> b!7032976 m!7739920))

(declare-fun m!7739922 () Bool)

(assert (=> b!7032976 m!7739922))

(assert (=> b!7032976 m!7738872))

(declare-fun m!7739924 () Bool)

(assert (=> b!7032975 m!7739924))

(assert (=> bs!1870600 d!2194283))

(declare-fun b!7032978 () Bool)

(declare-fun e!4227930 () Int)

(declare-fun call!638677 () Int)

(declare-fun call!638678 () Int)

(assert (=> b!7032978 (= e!4227930 (+ 1 call!638677 call!638678))))

(declare-fun bm!638672 () Bool)

(declare-fun c!1308193 () Bool)

(assert (=> bm!638672 (= call!638678 (regexDepthTotal!301 (ite c!1308193 (regOne!35437 (h!74238 (exprs!6958 lt!2518419))) (regTwo!35436 (h!74238 (exprs!6958 lt!2518419))))))))

(declare-fun b!7032979 () Bool)

(assert (=> b!7032979 (= e!4227930 1)))

(declare-fun b!7032980 () Bool)

(declare-fun e!4227929 () Int)

(declare-fun call!638679 () Int)

(assert (=> b!7032980 (= e!4227929 (+ 1 call!638679))))

(declare-fun b!7032981 () Bool)

(declare-fun e!4227928 () Int)

(assert (=> b!7032981 (= e!4227928 (+ 1 call!638678 call!638677))))

(declare-fun b!7032982 () Bool)

(declare-fun e!4227931 () Int)

(assert (=> b!7032982 (= e!4227931 e!4227929)))

(declare-fun c!1308191 () Bool)

(assert (=> b!7032982 (= c!1308191 (is-Star!17462 (h!74238 (exprs!6958 lt!2518419))))))

(declare-fun bm!638674 () Bool)

(assert (=> bm!638674 (= call!638677 call!638679)))

(declare-fun b!7032983 () Bool)

(assert (=> b!7032983 (= c!1308193 (is-Union!17462 (h!74238 (exprs!6958 lt!2518419))))))

(assert (=> b!7032983 (= e!4227929 e!4227928)))

(declare-fun b!7032984 () Bool)

(assert (=> b!7032984 (= e!4227931 1)))

(declare-fun b!7032985 () Bool)

(assert (=> b!7032985 (= e!4227928 e!4227930)))

(declare-fun c!1308194 () Bool)

(assert (=> b!7032985 (= c!1308194 (is-Concat!26307 (h!74238 (exprs!6958 lt!2518419))))))

(declare-fun bm!638673 () Bool)

(assert (=> bm!638673 (= call!638679 (regexDepthTotal!301 (ite c!1308191 (reg!17791 (h!74238 (exprs!6958 lt!2518419))) (ite c!1308193 (regTwo!35437 (h!74238 (exprs!6958 lt!2518419))) (regOne!35436 (h!74238 (exprs!6958 lt!2518419)))))))))

(declare-fun d!2194285 () Bool)

(declare-fun lt!2518801 () Int)

(assert (=> d!2194285 (> lt!2518801 0)))

(assert (=> d!2194285 (= lt!2518801 e!4227931)))

(declare-fun c!1308192 () Bool)

(assert (=> d!2194285 (= c!1308192 (is-ElementMatch!17462 (h!74238 (exprs!6958 lt!2518419))))))

(assert (=> d!2194285 (= (regexDepthTotal!301 (h!74238 (exprs!6958 lt!2518419))) lt!2518801)))

(assert (= (and d!2194285 c!1308192) b!7032984))

(assert (= (and d!2194285 (not c!1308192)) b!7032982))

(assert (= (and b!7032982 c!1308191) b!7032980))

(assert (= (and b!7032982 (not c!1308191)) b!7032983))

(assert (= (and b!7032983 c!1308193) b!7032981))

(assert (= (and b!7032983 (not c!1308193)) b!7032985))

(assert (= (and b!7032985 c!1308194) b!7032978))

(assert (= (and b!7032985 (not c!1308194)) b!7032979))

(assert (= (or b!7032981 b!7032978) bm!638674))

(assert (= (or b!7032981 b!7032978) bm!638672))

(assert (= (or b!7032980 bm!638674) bm!638673))

(declare-fun m!7739926 () Bool)

(assert (=> bm!638672 m!7739926))

(declare-fun m!7739928 () Bool)

(assert (=> bm!638673 m!7739928))

(assert (=> b!7032424 d!2194285))

(declare-fun d!2194287 () Bool)

(declare-fun lt!2518802 () Int)

(assert (=> d!2194287 (>= lt!2518802 0)))

(declare-fun e!4227932 () Int)

(assert (=> d!2194287 (= lt!2518802 e!4227932)))

(declare-fun c!1308195 () Bool)

(assert (=> d!2194287 (= c!1308195 (is-Cons!67790 (exprs!6958 (Context!12917 (t!381679 (exprs!6958 lt!2518419))))))))

(assert (=> d!2194287 (= (contextDepthTotal!497 (Context!12917 (t!381679 (exprs!6958 lt!2518419)))) lt!2518802)))

(declare-fun b!7032986 () Bool)

(assert (=> b!7032986 (= e!4227932 (+ (regexDepthTotal!301 (h!74238 (exprs!6958 (Context!12917 (t!381679 (exprs!6958 lt!2518419)))))) (contextDepthTotal!497 (Context!12917 (t!381679 (exprs!6958 (Context!12917 (t!381679 (exprs!6958 lt!2518419)))))))))))

(declare-fun b!7032987 () Bool)

(assert (=> b!7032987 (= e!4227932 1)))

(assert (= (and d!2194287 c!1308195) b!7032986))

(assert (= (and d!2194287 (not c!1308195)) b!7032987))

(declare-fun m!7739930 () Bool)

(assert (=> b!7032986 m!7739930))

(declare-fun m!7739932 () Bool)

(assert (=> b!7032986 m!7739932))

(assert (=> b!7032424 d!2194287))

(assert (=> bs!1870597 d!2193827))

(assert (=> d!2193837 d!2194091))

(declare-fun d!2194289 () Bool)

(declare-fun res!2870929 () Bool)

(declare-fun e!4227933 () Bool)

(assert (=> d!2194289 (=> res!2870929 e!4227933)))

(assert (=> d!2194289 (= res!2870929 (is-Nil!67790 (exprs!6958 ct2!306)))))

(assert (=> d!2194289 (= (forall!16376 (exprs!6958 ct2!306) lambda!414674) e!4227933)))

(declare-fun b!7032988 () Bool)

(declare-fun e!4227934 () Bool)

(assert (=> b!7032988 (= e!4227933 e!4227934)))

(declare-fun res!2870930 () Bool)

(assert (=> b!7032988 (=> (not res!2870930) (not e!4227934))))

(assert (=> b!7032988 (= res!2870930 (dynLambda!27381 lambda!414674 (h!74238 (exprs!6958 ct2!306))))))

(declare-fun b!7032989 () Bool)

(assert (=> b!7032989 (= e!4227934 (forall!16376 (t!381679 (exprs!6958 ct2!306)) lambda!414674))))

(assert (= (and d!2194289 (not res!2870929)) b!7032988))

(assert (= (and b!7032988 res!2870930) b!7032989))

(declare-fun b_lambda!266473 () Bool)

(assert (=> (not b_lambda!266473) (not b!7032988)))

(declare-fun m!7739934 () Bool)

(assert (=> b!7032988 m!7739934))

(declare-fun m!7739936 () Bool)

(assert (=> b!7032989 m!7739936))

(assert (=> d!2193823 d!2194289))

(declare-fun b!7032990 () Bool)

(declare-fun e!4227936 () Bool)

(declare-fun lt!2518804 () Context!12916)

(assert (=> b!7032990 (= e!4227936 (contains!20455 (toList!10805 lt!2518429) lt!2518804))))

(declare-fun d!2194291 () Bool)

(assert (=> d!2194291 e!4227936))

(declare-fun res!2870932 () Bool)

(assert (=> d!2194291 (=> (not res!2870932) (not e!4227936))))

(assert (=> d!2194291 (= res!2870932 (dynLambda!27374 lambda!414588 lt!2518804))))

(declare-fun e!4227935 () Context!12916)

(assert (=> d!2194291 (= lt!2518804 e!4227935)))

(declare-fun c!1308197 () Bool)

(declare-fun e!4227937 () Bool)

(assert (=> d!2194291 (= c!1308197 e!4227937)))

(declare-fun res!2870931 () Bool)

(assert (=> d!2194291 (=> (not res!2870931) (not e!4227937))))

(assert (=> d!2194291 (= res!2870931 (is-Cons!67792 (toList!10805 lt!2518429)))))

(assert (=> d!2194291 (exists!3387 (toList!10805 lt!2518429) lambda!414588)))

(assert (=> d!2194291 (= (getWitness!1469 (toList!10805 lt!2518429) lambda!414588) lt!2518804)))

(declare-fun b!7032991 () Bool)

(assert (=> b!7032991 (= e!4227935 (h!74240 (toList!10805 lt!2518429)))))

(declare-fun b!7032992 () Bool)

(declare-fun lt!2518803 () Unit!161594)

(declare-fun Unit!161600 () Unit!161594)

(assert (=> b!7032992 (= lt!2518803 Unit!161600)))

(assert (=> b!7032992 false))

(declare-fun e!4227938 () Context!12916)

(assert (=> b!7032992 (= e!4227938 (head!14263 (toList!10805 lt!2518429)))))

(declare-fun b!7032993 () Bool)

(assert (=> b!7032993 (= e!4227938 (getWitness!1469 (t!381681 (toList!10805 lt!2518429)) lambda!414588))))

(declare-fun b!7032994 () Bool)

(assert (=> b!7032994 (= e!4227935 e!4227938)))

(declare-fun c!1308196 () Bool)

(assert (=> b!7032994 (= c!1308196 (is-Cons!67792 (toList!10805 lt!2518429)))))

(declare-fun b!7032995 () Bool)

(assert (=> b!7032995 (= e!4227937 (dynLambda!27374 lambda!414588 (h!74240 (toList!10805 lt!2518429))))))

(assert (= (and d!2194291 res!2870931) b!7032995))

(assert (= (and d!2194291 c!1308197) b!7032991))

(assert (= (and d!2194291 (not c!1308197)) b!7032994))

(assert (= (and b!7032994 c!1308196) b!7032993))

(assert (= (and b!7032994 (not c!1308196)) b!7032992))

(assert (= (and d!2194291 res!2870932) b!7032990))

(declare-fun b_lambda!266475 () Bool)

(assert (=> (not b_lambda!266475) (not d!2194291)))

(declare-fun b_lambda!266477 () Bool)

(assert (=> (not b_lambda!266477) (not b!7032995)))

(assert (=> b!7032992 m!7738856))

(declare-fun m!7739938 () Bool)

(assert (=> b!7032992 m!7739938))

(declare-fun m!7739940 () Bool)

(assert (=> d!2194291 m!7739940))

(assert (=> d!2194291 m!7738856))

(assert (=> d!2194291 m!7738858))

(assert (=> b!7032990 m!7738856))

(declare-fun m!7739942 () Bool)

(assert (=> b!7032990 m!7739942))

(declare-fun m!7739944 () Bool)

(assert (=> b!7032995 m!7739944))

(declare-fun m!7739946 () Bool)

(assert (=> b!7032993 m!7739946))

(assert (=> d!2193815 d!2194291))

(assert (=> d!2193815 d!2194133))

(assert (=> d!2193815 d!2193807))

(declare-fun d!2194293 () Bool)

(assert (=> d!2194293 true))

(declare-fun setRes!49162 () Bool)

(assert (=> d!2194293 setRes!49162))

(declare-fun condSetEmpty!49162 () Bool)

(declare-fun res!2870933 () (Set Context!12916))

(assert (=> d!2194293 (= condSetEmpty!49162 (= res!2870933 (as set.empty (Set Context!12916))))))

(assert (=> d!2194293 (= (choose!53243 lt!2518448 lambda!414587) res!2870933)))

(declare-fun setIsEmpty!49162 () Bool)

(assert (=> setIsEmpty!49162 setRes!49162))

(declare-fun e!4227939 () Bool)

(declare-fun setElem!49162 () Context!12916)

(declare-fun tp!1936445 () Bool)

(declare-fun setNonEmpty!49162 () Bool)

(assert (=> setNonEmpty!49162 (= setRes!49162 (and tp!1936445 (inv!86515 setElem!49162) e!4227939))))

(declare-fun setRest!49162 () (Set Context!12916))

(assert (=> setNonEmpty!49162 (= res!2870933 (set.union (set.insert setElem!49162 (as set.empty (Set Context!12916))) setRest!49162))))

(declare-fun b!7032996 () Bool)

(declare-fun tp!1936446 () Bool)

(assert (=> b!7032996 (= e!4227939 tp!1936446)))

(assert (= (and d!2194293 condSetEmpty!49162) setIsEmpty!49162))

(assert (= (and d!2194293 (not condSetEmpty!49162)) setNonEmpty!49162))

(assert (= setNonEmpty!49162 b!7032996))

(declare-fun m!7739948 () Bool)

(assert (=> setNonEmpty!49162 m!7739948))

(assert (=> d!2193841 d!2194293))

(declare-fun d!2194295 () Bool)

(declare-fun c!1308198 () Bool)

(assert (=> d!2194295 (= c!1308198 (isEmpty!39536 (tail!13550 (t!381680 s!7408))))))

(declare-fun e!4227940 () Bool)

(assert (=> d!2194295 (= (matchZipper!3002 (derivationStepZipper!2918 lt!2518426 (head!14261 (t!381680 s!7408))) (tail!13550 (t!381680 s!7408))) e!4227940)))

(declare-fun b!7032997 () Bool)

(assert (=> b!7032997 (= e!4227940 (nullableZipper!2578 (derivationStepZipper!2918 lt!2518426 (head!14261 (t!381680 s!7408)))))))

(declare-fun b!7032998 () Bool)

(assert (=> b!7032998 (= e!4227940 (matchZipper!3002 (derivationStepZipper!2918 (derivationStepZipper!2918 lt!2518426 (head!14261 (t!381680 s!7408))) (head!14261 (tail!13550 (t!381680 s!7408)))) (tail!13550 (tail!13550 (t!381680 s!7408)))))))

(assert (= (and d!2194295 c!1308198) b!7032997))

(assert (= (and d!2194295 (not c!1308198)) b!7032998))

(assert (=> d!2194295 m!7738836))

(assert (=> d!2194295 m!7739514))

(assert (=> b!7032997 m!7738848))

(declare-fun m!7739950 () Bool)

(assert (=> b!7032997 m!7739950))

(assert (=> b!7032998 m!7738836))

(assert (=> b!7032998 m!7739518))

(assert (=> b!7032998 m!7738848))

(assert (=> b!7032998 m!7739518))

(declare-fun m!7739952 () Bool)

(assert (=> b!7032998 m!7739952))

(assert (=> b!7032998 m!7738836))

(assert (=> b!7032998 m!7739522))

(assert (=> b!7032998 m!7739952))

(assert (=> b!7032998 m!7739522))

(declare-fun m!7739954 () Bool)

(assert (=> b!7032998 m!7739954))

(assert (=> b!7032311 d!2194295))

(declare-fun bs!1870833 () Bool)

(declare-fun d!2194297 () Bool)

(assert (= bs!1870833 (and d!2194297 b!7032161)))

(declare-fun lambda!414724 () Int)

(assert (=> bs!1870833 (= (= (head!14261 (t!381680 s!7408)) (h!74239 s!7408)) (= lambda!414724 lambda!414587))))

(declare-fun bs!1870834 () Bool)

(assert (= bs!1870834 (and d!2194297 d!2194145)))

(assert (=> bs!1870834 (= (= (head!14261 (t!381680 s!7408)) (head!14261 (_2!37338 lt!2518462))) (= lambda!414724 lambda!414715))))

(declare-fun bs!1870835 () Bool)

(assert (= bs!1870835 (and d!2194297 d!2193845)))

(assert (=> bs!1870835 (= (= (head!14261 (t!381680 s!7408)) (h!74239 s!7408)) (= lambda!414724 lambda!414676))))

(declare-fun bs!1870836 () Bool)

(assert (= bs!1870836 (and d!2194297 d!2193793)))

(assert (=> bs!1870836 (= (= (head!14261 (t!381680 s!7408)) (h!74239 s!7408)) (= lambda!414724 lambda!414662))))

(declare-fun bs!1870837 () Bool)

(assert (= bs!1870837 (and d!2194297 d!2194079)))

(assert (=> bs!1870837 (= lambda!414724 lambda!414704)))

(declare-fun bs!1870838 () Bool)

(assert (= bs!1870838 (and d!2194297 d!2194199)))

(assert (=> bs!1870838 (= (= (head!14261 (t!381680 s!7408)) (head!14261 s!7408)) (= lambda!414724 lambda!414719))))

(declare-fun bs!1870839 () Bool)

(assert (= bs!1870839 (and d!2194297 d!2194203)))

(assert (=> bs!1870839 (= (= (head!14261 (t!381680 s!7408)) (head!14261 s!7408)) (= lambda!414724 lambda!414720))))

(declare-fun bs!1870840 () Bool)

(assert (= bs!1870840 (and d!2194297 d!2194227)))

(assert (=> bs!1870840 (= (= (head!14261 (t!381680 s!7408)) (head!14261 (_1!37338 lt!2518462))) (= lambda!414724 lambda!414722))))

(declare-fun bs!1870841 () Bool)

(assert (= bs!1870841 (and d!2194297 d!2194153)))

(assert (=> bs!1870841 (= lambda!414724 lambda!414716)))

(declare-fun bs!1870842 () Bool)

(assert (= bs!1870842 (and d!2194297 d!2194095)))

(assert (=> bs!1870842 (= (= (head!14261 (t!381680 s!7408)) (head!14261 s!7408)) (= lambda!414724 lambda!414706))))

(assert (=> d!2194297 true))

(assert (=> d!2194297 (= (derivationStepZipper!2918 lt!2518426 (head!14261 (t!381680 s!7408))) (flatMap!2409 lt!2518426 lambda!414724))))

(declare-fun bs!1870843 () Bool)

(assert (= bs!1870843 d!2194297))

(declare-fun m!7739956 () Bool)

(assert (=> bs!1870843 m!7739956))

(assert (=> b!7032311 d!2194297))

(assert (=> b!7032311 d!2194081))

(assert (=> b!7032311 d!2194083))

(declare-fun d!2194299 () Bool)

(declare-fun c!1308199 () Bool)

(assert (=> d!2194299 (= c!1308199 (isEmpty!39536 (tail!13550 (t!381680 s!7408))))))

(declare-fun e!4227941 () Bool)

(assert (=> d!2194299 (= (matchZipper!3002 (derivationStepZipper!2918 lt!2518441 (head!14261 (t!381680 s!7408))) (tail!13550 (t!381680 s!7408))) e!4227941)))

(declare-fun b!7032999 () Bool)

(assert (=> b!7032999 (= e!4227941 (nullableZipper!2578 (derivationStepZipper!2918 lt!2518441 (head!14261 (t!381680 s!7408)))))))

(declare-fun b!7033000 () Bool)

(assert (=> b!7033000 (= e!4227941 (matchZipper!3002 (derivationStepZipper!2918 (derivationStepZipper!2918 lt!2518441 (head!14261 (t!381680 s!7408))) (head!14261 (tail!13550 (t!381680 s!7408)))) (tail!13550 (tail!13550 (t!381680 s!7408)))))))

(assert (= (and d!2194299 c!1308199) b!7032999))

(assert (= (and d!2194299 (not c!1308199)) b!7033000))

(assert (=> d!2194299 m!7738836))

(assert (=> d!2194299 m!7739514))

(assert (=> b!7032999 m!7738950))

(declare-fun m!7739958 () Bool)

(assert (=> b!7032999 m!7739958))

(assert (=> b!7033000 m!7738836))

(assert (=> b!7033000 m!7739518))

(assert (=> b!7033000 m!7738950))

(assert (=> b!7033000 m!7739518))

(declare-fun m!7739960 () Bool)

(assert (=> b!7033000 m!7739960))

(assert (=> b!7033000 m!7738836))

(assert (=> b!7033000 m!7739522))

(assert (=> b!7033000 m!7739960))

(assert (=> b!7033000 m!7739522))

(declare-fun m!7739962 () Bool)

(assert (=> b!7033000 m!7739962))

(assert (=> b!7032385 d!2194299))

(declare-fun bs!1870844 () Bool)

(declare-fun d!2194301 () Bool)

(assert (= bs!1870844 (and d!2194301 b!7032161)))

(declare-fun lambda!414725 () Int)

(assert (=> bs!1870844 (= (= (head!14261 (t!381680 s!7408)) (h!74239 s!7408)) (= lambda!414725 lambda!414587))))

(declare-fun bs!1870845 () Bool)

(assert (= bs!1870845 (and d!2194301 d!2194145)))

(assert (=> bs!1870845 (= (= (head!14261 (t!381680 s!7408)) (head!14261 (_2!37338 lt!2518462))) (= lambda!414725 lambda!414715))))

(declare-fun bs!1870846 () Bool)

(assert (= bs!1870846 (and d!2194301 d!2193793)))

(assert (=> bs!1870846 (= (= (head!14261 (t!381680 s!7408)) (h!74239 s!7408)) (= lambda!414725 lambda!414662))))

(declare-fun bs!1870847 () Bool)

(assert (= bs!1870847 (and d!2194301 d!2194079)))

(assert (=> bs!1870847 (= lambda!414725 lambda!414704)))

(declare-fun bs!1870848 () Bool)

(assert (= bs!1870848 (and d!2194301 d!2194199)))

(assert (=> bs!1870848 (= (= (head!14261 (t!381680 s!7408)) (head!14261 s!7408)) (= lambda!414725 lambda!414719))))

(declare-fun bs!1870849 () Bool)

(assert (= bs!1870849 (and d!2194301 d!2194203)))

(assert (=> bs!1870849 (= (= (head!14261 (t!381680 s!7408)) (head!14261 s!7408)) (= lambda!414725 lambda!414720))))

(declare-fun bs!1870850 () Bool)

(assert (= bs!1870850 (and d!2194301 d!2194227)))

(assert (=> bs!1870850 (= (= (head!14261 (t!381680 s!7408)) (head!14261 (_1!37338 lt!2518462))) (= lambda!414725 lambda!414722))))

(declare-fun bs!1870851 () Bool)

(assert (= bs!1870851 (and d!2194301 d!2194153)))

(assert (=> bs!1870851 (= lambda!414725 lambda!414716)))

(declare-fun bs!1870852 () Bool)

(assert (= bs!1870852 (and d!2194301 d!2194095)))

(assert (=> bs!1870852 (= (= (head!14261 (t!381680 s!7408)) (head!14261 s!7408)) (= lambda!414725 lambda!414706))))

(declare-fun bs!1870853 () Bool)

(assert (= bs!1870853 (and d!2194301 d!2193845)))

(assert (=> bs!1870853 (= (= (head!14261 (t!381680 s!7408)) (h!74239 s!7408)) (= lambda!414725 lambda!414676))))

(declare-fun bs!1870854 () Bool)

(assert (= bs!1870854 (and d!2194301 d!2194297)))

(assert (=> bs!1870854 (= lambda!414725 lambda!414724)))

(assert (=> d!2194301 true))

(assert (=> d!2194301 (= (derivationStepZipper!2918 lt!2518441 (head!14261 (t!381680 s!7408))) (flatMap!2409 lt!2518441 lambda!414725))))

(declare-fun bs!1870855 () Bool)

(assert (= bs!1870855 d!2194301))

(declare-fun m!7739964 () Bool)

(assert (=> bs!1870855 m!7739964))

(assert (=> b!7032385 d!2194301))

(assert (=> b!7032385 d!2194081))

(assert (=> b!7032385 d!2194083))

(declare-fun d!2194303 () Bool)

(declare-fun c!1308200 () Bool)

(assert (=> d!2194303 (= c!1308200 (isEmpty!39536 (t!381680 s!7408)))))

(declare-fun e!4227942 () Bool)

(assert (=> d!2194303 (= (matchZipper!3002 (set.union lt!2518426 lt!2518441) (t!381680 s!7408)) e!4227942)))

(declare-fun b!7033001 () Bool)

(assert (=> b!7033001 (= e!4227942 (nullableZipper!2578 (set.union lt!2518426 lt!2518441)))))

(declare-fun b!7033002 () Bool)

(assert (=> b!7033002 (= e!4227942 (matchZipper!3002 (derivationStepZipper!2918 (set.union lt!2518426 lt!2518441) (head!14261 (t!381680 s!7408))) (tail!13550 (t!381680 s!7408))))))

(assert (= (and d!2194303 c!1308200) b!7033001))

(assert (= (and d!2194303 (not c!1308200)) b!7033002))

(assert (=> d!2194303 m!7738828))

(declare-fun m!7739966 () Bool)

(assert (=> b!7033001 m!7739966))

(assert (=> b!7033002 m!7738832))

(assert (=> b!7033002 m!7738832))

(declare-fun m!7739968 () Bool)

(assert (=> b!7033002 m!7739968))

(assert (=> b!7033002 m!7738836))

(assert (=> b!7033002 m!7739968))

(assert (=> b!7033002 m!7738836))

(declare-fun m!7739970 () Bool)

(assert (=> b!7033002 m!7739970))

(assert (=> d!2193805 d!2194303))

(assert (=> d!2193805 d!2193803))

(declare-fun d!2194305 () Bool)

(declare-fun e!4227945 () Bool)

(assert (=> d!2194305 (= (matchZipper!3002 (set.union lt!2518426 lt!2518441) (t!381680 s!7408)) e!4227945)))

(declare-fun res!2870936 () Bool)

(assert (=> d!2194305 (=> res!2870936 e!4227945)))

(assert (=> d!2194305 (= res!2870936 (matchZipper!3002 lt!2518426 (t!381680 s!7408)))))

(assert (=> d!2194305 true))

(declare-fun _$48!2485 () Unit!161594)

(assert (=> d!2194305 (= (choose!53244 lt!2518426 lt!2518441 (t!381680 s!7408)) _$48!2485)))

(declare-fun b!7033005 () Bool)

(assert (=> b!7033005 (= e!4227945 (matchZipper!3002 lt!2518441 (t!381680 s!7408)))))

(assert (= (and d!2194305 (not res!2870936)) b!7033005))

(assert (=> d!2194305 m!7738852))

(assert (=> d!2194305 m!7738558))

(assert (=> b!7033005 m!7738530))

(assert (=> d!2193805 d!2194305))

(declare-fun b!7033009 () Bool)

(declare-fun e!4227946 () Bool)

(declare-fun lt!2518805 () List!67915)

(assert (=> b!7033009 (= e!4227946 (or (not (= (t!381680 s!7408) Nil!67791)) (= lt!2518805 (++!15505 Nil!67791 (Cons!67791 (h!74239 s!7408) Nil!67791)))))))

(declare-fun b!7033008 () Bool)

(declare-fun res!2870938 () Bool)

(assert (=> b!7033008 (=> (not res!2870938) (not e!4227946))))

(assert (=> b!7033008 (= res!2870938 (= (size!41061 lt!2518805) (+ (size!41061 (++!15505 Nil!67791 (Cons!67791 (h!74239 s!7408) Nil!67791))) (size!41061 (t!381680 s!7408)))))))

(declare-fun b!7033007 () Bool)

(declare-fun e!4227947 () List!67915)

(assert (=> b!7033007 (= e!4227947 (Cons!67791 (h!74239 (++!15505 Nil!67791 (Cons!67791 (h!74239 s!7408) Nil!67791))) (++!15505 (t!381680 (++!15505 Nil!67791 (Cons!67791 (h!74239 s!7408) Nil!67791))) (t!381680 s!7408))))))

(declare-fun d!2194307 () Bool)

(assert (=> d!2194307 e!4227946))

(declare-fun res!2870937 () Bool)

(assert (=> d!2194307 (=> (not res!2870937) (not e!4227946))))

(assert (=> d!2194307 (= res!2870937 (= (content!13531 lt!2518805) (set.union (content!13531 (++!15505 Nil!67791 (Cons!67791 (h!74239 s!7408) Nil!67791))) (content!13531 (t!381680 s!7408)))))))

(assert (=> d!2194307 (= lt!2518805 e!4227947)))

(declare-fun c!1308201 () Bool)

(assert (=> d!2194307 (= c!1308201 (is-Nil!67791 (++!15505 Nil!67791 (Cons!67791 (h!74239 s!7408) Nil!67791))))))

(assert (=> d!2194307 (= (++!15505 (++!15505 Nil!67791 (Cons!67791 (h!74239 s!7408) Nil!67791)) (t!381680 s!7408)) lt!2518805)))

(declare-fun b!7033006 () Bool)

(assert (=> b!7033006 (= e!4227947 (t!381680 s!7408))))

(assert (= (and d!2194307 c!1308201) b!7033006))

(assert (= (and d!2194307 (not c!1308201)) b!7033007))

(assert (= (and d!2194307 res!2870937) b!7033008))

(assert (= (and b!7033008 res!2870938) b!7033009))

(declare-fun m!7739972 () Bool)

(assert (=> b!7033008 m!7739972))

(assert (=> b!7033008 m!7738986))

(declare-fun m!7739974 () Bool)

(assert (=> b!7033008 m!7739974))

(declare-fun m!7739976 () Bool)

(assert (=> b!7033008 m!7739976))

(declare-fun m!7739978 () Bool)

(assert (=> b!7033007 m!7739978))

(declare-fun m!7739980 () Bool)

(assert (=> d!2194307 m!7739980))

(assert (=> d!2194307 m!7738986))

(declare-fun m!7739982 () Bool)

(assert (=> d!2194307 m!7739982))

(declare-fun m!7739984 () Bool)

(assert (=> d!2194307 m!7739984))

(assert (=> b!7032408 d!2194307))

(declare-fun b!7033013 () Bool)

(declare-fun e!4227948 () Bool)

(declare-fun lt!2518806 () List!67915)

(assert (=> b!7033013 (= e!4227948 (or (not (= (Cons!67791 (h!74239 s!7408) Nil!67791) Nil!67791)) (= lt!2518806 Nil!67791)))))

(declare-fun b!7033012 () Bool)

(declare-fun res!2870940 () Bool)

(assert (=> b!7033012 (=> (not res!2870940) (not e!4227948))))

(assert (=> b!7033012 (= res!2870940 (= (size!41061 lt!2518806) (+ (size!41061 Nil!67791) (size!41061 (Cons!67791 (h!74239 s!7408) Nil!67791)))))))

(declare-fun b!7033011 () Bool)

(declare-fun e!4227949 () List!67915)

(assert (=> b!7033011 (= e!4227949 (Cons!67791 (h!74239 Nil!67791) (++!15505 (t!381680 Nil!67791) (Cons!67791 (h!74239 s!7408) Nil!67791))))))

(declare-fun d!2194309 () Bool)

(assert (=> d!2194309 e!4227948))

(declare-fun res!2870939 () Bool)

(assert (=> d!2194309 (=> (not res!2870939) (not e!4227948))))

(assert (=> d!2194309 (= res!2870939 (= (content!13531 lt!2518806) (set.union (content!13531 Nil!67791) (content!13531 (Cons!67791 (h!74239 s!7408) Nil!67791)))))))

(assert (=> d!2194309 (= lt!2518806 e!4227949)))

(declare-fun c!1308202 () Bool)

(assert (=> d!2194309 (= c!1308202 (is-Nil!67791 Nil!67791))))

(assert (=> d!2194309 (= (++!15505 Nil!67791 (Cons!67791 (h!74239 s!7408) Nil!67791)) lt!2518806)))

(declare-fun b!7033010 () Bool)

(assert (=> b!7033010 (= e!4227949 (Cons!67791 (h!74239 s!7408) Nil!67791))))

(assert (= (and d!2194309 c!1308202) b!7033010))

(assert (= (and d!2194309 (not c!1308202)) b!7033011))

(assert (= (and d!2194309 res!2870939) b!7033012))

(assert (= (and b!7033012 res!2870940) b!7033013))

(declare-fun m!7739986 () Bool)

(assert (=> b!7033012 m!7739986))

(assert (=> b!7033012 m!7739700))

(declare-fun m!7739988 () Bool)

(assert (=> b!7033012 m!7739988))

(declare-fun m!7739990 () Bool)

(assert (=> b!7033011 m!7739990))

(declare-fun m!7739992 () Bool)

(assert (=> d!2194309 m!7739992))

(assert (=> d!2194309 m!7739708))

(declare-fun m!7739994 () Bool)

(assert (=> d!2194309 m!7739994))

(assert (=> b!7032408 d!2194309))

(declare-fun d!2194311 () Bool)

(assert (=> d!2194311 (= (++!15505 (++!15505 Nil!67791 (Cons!67791 (h!74239 s!7408) Nil!67791)) (t!381680 s!7408)) s!7408)))

(declare-fun lt!2518809 () Unit!161594)

(declare-fun choose!53263 (List!67915 C!35194 List!67915 List!67915) Unit!161594)

(assert (=> d!2194311 (= lt!2518809 (choose!53263 Nil!67791 (h!74239 s!7408) (t!381680 s!7408) s!7408))))

(assert (=> d!2194311 (= (++!15505 Nil!67791 (Cons!67791 (h!74239 s!7408) (t!381680 s!7408))) s!7408)))

(assert (=> d!2194311 (= (lemmaMoveElementToOtherListKeepsConcatEq!2922 Nil!67791 (h!74239 s!7408) (t!381680 s!7408) s!7408) lt!2518809)))

(declare-fun bs!1870856 () Bool)

(assert (= bs!1870856 d!2194311))

(assert (=> bs!1870856 m!7738986))

(assert (=> bs!1870856 m!7738986))

(assert (=> bs!1870856 m!7738988))

(declare-fun m!7739996 () Bool)

(assert (=> bs!1870856 m!7739996))

(declare-fun m!7739998 () Bool)

(assert (=> bs!1870856 m!7739998))

(assert (=> b!7032408 d!2194311))

(declare-fun b!7033014 () Bool)

(declare-fun e!4227951 () Option!16867)

(assert (=> b!7033014 (= e!4227951 None!16866)))

(declare-fun b!7033016 () Bool)

(declare-fun lt!2518810 () Unit!161594)

(declare-fun lt!2518811 () Unit!161594)

(assert (=> b!7033016 (= lt!2518810 lt!2518811)))

(assert (=> b!7033016 (= (++!15505 (++!15505 (++!15505 Nil!67791 (Cons!67791 (h!74239 s!7408) Nil!67791)) (Cons!67791 (h!74239 (t!381680 s!7408)) Nil!67791)) (t!381680 (t!381680 s!7408))) s!7408)))

(assert (=> b!7033016 (= lt!2518811 (lemmaMoveElementToOtherListKeepsConcatEq!2922 (++!15505 Nil!67791 (Cons!67791 (h!74239 s!7408) Nil!67791)) (h!74239 (t!381680 s!7408)) (t!381680 (t!381680 s!7408)) s!7408))))

(assert (=> b!7033016 (= e!4227951 (findConcatSeparationZippers!383 lt!2518429 lt!2518422 (++!15505 (++!15505 Nil!67791 (Cons!67791 (h!74239 s!7408) Nil!67791)) (Cons!67791 (h!74239 (t!381680 s!7408)) Nil!67791)) (t!381680 (t!381680 s!7408)) s!7408))))

(declare-fun b!7033017 () Bool)

(declare-fun e!4227954 () Option!16867)

(assert (=> b!7033017 (= e!4227954 e!4227951)))

(declare-fun c!1308203 () Bool)

(assert (=> b!7033017 (= c!1308203 (is-Nil!67791 (t!381680 s!7408)))))

(declare-fun b!7033018 () Bool)

(declare-fun e!4227953 () Bool)

(declare-fun lt!2518812 () Option!16867)

(assert (=> b!7033018 (= e!4227953 (not (isDefined!13568 lt!2518812)))))

(declare-fun b!7033019 () Bool)

(declare-fun res!2870944 () Bool)

(declare-fun e!4227952 () Bool)

(assert (=> b!7033019 (=> (not res!2870944) (not e!4227952))))

(assert (=> b!7033019 (= res!2870944 (matchZipper!3002 lt!2518429 (_1!37338 (get!23749 lt!2518812))))))

(declare-fun b!7033020 () Bool)

(assert (=> b!7033020 (= e!4227954 (Some!16866 (tuple2!68071 (++!15505 Nil!67791 (Cons!67791 (h!74239 s!7408) Nil!67791)) (t!381680 s!7408))))))

(declare-fun b!7033021 () Bool)

(declare-fun res!2870943 () Bool)

(assert (=> b!7033021 (=> (not res!2870943) (not e!4227952))))

(assert (=> b!7033021 (= res!2870943 (matchZipper!3002 lt!2518422 (_2!37338 (get!23749 lt!2518812))))))

(declare-fun b!7033022 () Bool)

(declare-fun e!4227950 () Bool)

(assert (=> b!7033022 (= e!4227950 (matchZipper!3002 lt!2518422 (t!381680 s!7408)))))

(declare-fun d!2194313 () Bool)

(assert (=> d!2194313 e!4227953))

(declare-fun res!2870945 () Bool)

(assert (=> d!2194313 (=> res!2870945 e!4227953)))

(assert (=> d!2194313 (= res!2870945 e!4227952)))

(declare-fun res!2870941 () Bool)

(assert (=> d!2194313 (=> (not res!2870941) (not e!4227952))))

(assert (=> d!2194313 (= res!2870941 (isDefined!13568 lt!2518812))))

(assert (=> d!2194313 (= lt!2518812 e!4227954)))

(declare-fun c!1308204 () Bool)

(assert (=> d!2194313 (= c!1308204 e!4227950)))

(declare-fun res!2870942 () Bool)

(assert (=> d!2194313 (=> (not res!2870942) (not e!4227950))))

(assert (=> d!2194313 (= res!2870942 (matchZipper!3002 lt!2518429 (++!15505 Nil!67791 (Cons!67791 (h!74239 s!7408) Nil!67791))))))

(assert (=> d!2194313 (= (++!15505 (++!15505 Nil!67791 (Cons!67791 (h!74239 s!7408) Nil!67791)) (t!381680 s!7408)) s!7408)))

(assert (=> d!2194313 (= (findConcatSeparationZippers!383 lt!2518429 lt!2518422 (++!15505 Nil!67791 (Cons!67791 (h!74239 s!7408) Nil!67791)) (t!381680 s!7408) s!7408) lt!2518812)))

(declare-fun b!7033015 () Bool)

(assert (=> b!7033015 (= e!4227952 (= (++!15505 (_1!37338 (get!23749 lt!2518812)) (_2!37338 (get!23749 lt!2518812))) s!7408))))

(assert (= (and d!2194313 res!2870942) b!7033022))

(assert (= (and d!2194313 c!1308204) b!7033020))

(assert (= (and d!2194313 (not c!1308204)) b!7033017))

(assert (= (and b!7033017 c!1308203) b!7033014))

(assert (= (and b!7033017 (not c!1308203)) b!7033016))

(assert (= (and d!2194313 res!2870941) b!7033019))

(assert (= (and b!7033019 res!2870944) b!7033021))

(assert (= (and b!7033021 res!2870943) b!7033015))

(assert (= (and d!2194313 (not res!2870945)) b!7033018))

(assert (=> b!7033016 m!7738986))

(declare-fun m!7740000 () Bool)

(assert (=> b!7033016 m!7740000))

(assert (=> b!7033016 m!7740000))

(declare-fun m!7740002 () Bool)

(assert (=> b!7033016 m!7740002))

(assert (=> b!7033016 m!7738986))

(declare-fun m!7740004 () Bool)

(assert (=> b!7033016 m!7740004))

(assert (=> b!7033016 m!7740000))

(declare-fun m!7740006 () Bool)

(assert (=> b!7033016 m!7740006))

(declare-fun m!7740008 () Bool)

(assert (=> d!2194313 m!7740008))

(assert (=> d!2194313 m!7738986))

(declare-fun m!7740010 () Bool)

(assert (=> d!2194313 m!7740010))

(assert (=> d!2194313 m!7738986))

(assert (=> d!2194313 m!7738988))

(assert (=> b!7033018 m!7740008))

(declare-fun m!7740012 () Bool)

(assert (=> b!7033015 m!7740012))

(declare-fun m!7740014 () Bool)

(assert (=> b!7033015 m!7740014))

(assert (=> b!7033019 m!7740012))

(declare-fun m!7740016 () Bool)

(assert (=> b!7033019 m!7740016))

(assert (=> b!7033021 m!7740012))

(declare-fun m!7740018 () Bool)

(assert (=> b!7033021 m!7740018))

(declare-fun m!7740020 () Bool)

(assert (=> b!7033022 m!7740020))

(assert (=> b!7032408 d!2194313))

(declare-fun bs!1870857 () Bool)

(declare-fun d!2194315 () Bool)

(assert (= bs!1870857 (and d!2194315 d!2194177)))

(declare-fun lambda!414726 () Int)

(assert (=> bs!1870857 (= lambda!414726 lambda!414717)))

(declare-fun bs!1870858 () Bool)

(assert (= bs!1870858 (and d!2194315 d!2194141)))

(assert (=> bs!1870858 (= lambda!414726 lambda!414714)))

(declare-fun bs!1870859 () Bool)

(assert (= bs!1870859 (and d!2194315 b!7032163)))

(assert (=> bs!1870859 (not (= lambda!414726 lambda!414584))))

(declare-fun bs!1870860 () Bool)

(assert (= bs!1870860 (and d!2194315 b!7032149)))

(assert (=> bs!1870860 (= lambda!414726 lambda!414588)))

(declare-fun bs!1870861 () Bool)

(assert (= bs!1870861 (and d!2194315 d!2193779)))

(assert (=> bs!1870861 (not (= lambda!414726 lambda!414659))))

(declare-fun bs!1870862 () Bool)

(assert (= bs!1870862 (and d!2194315 d!2194239)))

(assert (=> bs!1870862 (= lambda!414726 lambda!414723)))

(declare-fun bs!1870863 () Bool)

(assert (= bs!1870863 (and d!2194315 d!2194129)))

(assert (=> bs!1870863 (= lambda!414726 lambda!414712)))

(declare-fun bs!1870864 () Bool)

(assert (= bs!1870864 (and d!2194315 d!2194215)))

(assert (=> bs!1870864 (= lambda!414726 lambda!414721)))

(declare-fun bs!1870865 () Bool)

(assert (= bs!1870865 (and d!2194315 d!2193775)))

(assert (=> bs!1870865 (not (= lambda!414726 lambda!414656))))

(declare-fun bs!1870866 () Bool)

(assert (= bs!1870866 (and d!2194315 d!2194119)))

(assert (=> bs!1870866 (not (= lambda!414726 lambda!414708))))

(declare-fun bs!1870867 () Bool)

(assert (= bs!1870867 (and d!2194315 d!2194131)))

(assert (=> bs!1870867 (not (= lambda!414726 lambda!414713))))

(declare-fun bs!1870868 () Bool)

(assert (= bs!1870868 (and d!2194315 d!2194035)))

(assert (=> bs!1870868 (= lambda!414726 lambda!414702)))

(declare-fun bs!1870869 () Bool)

(assert (= bs!1870869 (and d!2194315 d!2194039)))

(assert (=> bs!1870869 (= lambda!414726 lambda!414703)))

(declare-fun bs!1870870 () Bool)

(assert (= bs!1870870 (and d!2194315 d!2194121)))

(assert (=> bs!1870870 (not (= lambda!414726 lambda!414711))))

(assert (=> d!2194315 (= (nullableZipper!2578 lt!2518456) (exists!3386 lt!2518456 lambda!414726))))

(declare-fun bs!1870871 () Bool)

(assert (= bs!1870871 d!2194315))

(declare-fun m!7740022 () Bool)

(assert (=> bs!1870871 m!7740022))

(assert (=> b!7032308 d!2194315))

(declare-fun bs!1870872 () Bool)

(declare-fun d!2194317 () Bool)

(assert (= bs!1870872 (and d!2194317 d!2194315)))

(declare-fun lambda!414727 () Int)

(assert (=> bs!1870872 (= lambda!414727 lambda!414726)))

(declare-fun bs!1870873 () Bool)

(assert (= bs!1870873 (and d!2194317 d!2194177)))

(assert (=> bs!1870873 (= lambda!414727 lambda!414717)))

(declare-fun bs!1870874 () Bool)

(assert (= bs!1870874 (and d!2194317 d!2194141)))

(assert (=> bs!1870874 (= lambda!414727 lambda!414714)))

(declare-fun bs!1870875 () Bool)

(assert (= bs!1870875 (and d!2194317 b!7032163)))

(assert (=> bs!1870875 (not (= lambda!414727 lambda!414584))))

(declare-fun bs!1870876 () Bool)

(assert (= bs!1870876 (and d!2194317 b!7032149)))

(assert (=> bs!1870876 (= lambda!414727 lambda!414588)))

(declare-fun bs!1870877 () Bool)

(assert (= bs!1870877 (and d!2194317 d!2193779)))

(assert (=> bs!1870877 (not (= lambda!414727 lambda!414659))))

(declare-fun bs!1870878 () Bool)

(assert (= bs!1870878 (and d!2194317 d!2194239)))

(assert (=> bs!1870878 (= lambda!414727 lambda!414723)))

(declare-fun bs!1870879 () Bool)

(assert (= bs!1870879 (and d!2194317 d!2194129)))

(assert (=> bs!1870879 (= lambda!414727 lambda!414712)))

(declare-fun bs!1870880 () Bool)

(assert (= bs!1870880 (and d!2194317 d!2194215)))

(assert (=> bs!1870880 (= lambda!414727 lambda!414721)))

(declare-fun bs!1870881 () Bool)

(assert (= bs!1870881 (and d!2194317 d!2193775)))

(assert (=> bs!1870881 (not (= lambda!414727 lambda!414656))))

(declare-fun bs!1870882 () Bool)

(assert (= bs!1870882 (and d!2194317 d!2194119)))

(assert (=> bs!1870882 (not (= lambda!414727 lambda!414708))))

(declare-fun bs!1870883 () Bool)

(assert (= bs!1870883 (and d!2194317 d!2194131)))

(assert (=> bs!1870883 (not (= lambda!414727 lambda!414713))))

(declare-fun bs!1870884 () Bool)

(assert (= bs!1870884 (and d!2194317 d!2194035)))

(assert (=> bs!1870884 (= lambda!414727 lambda!414702)))

(declare-fun bs!1870885 () Bool)

(assert (= bs!1870885 (and d!2194317 d!2194039)))

(assert (=> bs!1870885 (= lambda!414727 lambda!414703)))

(declare-fun bs!1870886 () Bool)

(assert (= bs!1870886 (and d!2194317 d!2194121)))

(assert (=> bs!1870886 (not (= lambda!414727 lambda!414711))))

(assert (=> d!2194317 (= (nullableZipper!2578 lt!2518432) (exists!3386 lt!2518432 lambda!414727))))

(declare-fun bs!1870887 () Bool)

(assert (= bs!1870887 d!2194317))

(declare-fun m!7740024 () Bool)

(assert (=> bs!1870887 m!7740024))

(assert (=> b!7032332 d!2194317))

(assert (=> d!2193881 d!2194071))

(declare-fun e!4227957 () Bool)

(assert (=> b!7032454 (= tp!1936393 e!4227957)))

(declare-fun b!7033034 () Bool)

(declare-fun tp!1936460 () Bool)

(declare-fun tp!1936457 () Bool)

(assert (=> b!7033034 (= e!4227957 (and tp!1936460 tp!1936457))))

(declare-fun b!7033035 () Bool)

(declare-fun tp!1936458 () Bool)

(assert (=> b!7033035 (= e!4227957 tp!1936458)))

(declare-fun b!7033033 () Bool)

(assert (=> b!7033033 (= e!4227957 tp_is_empty!44149)))

(declare-fun b!7033036 () Bool)

(declare-fun tp!1936459 () Bool)

(declare-fun tp!1936461 () Bool)

(assert (=> b!7033036 (= e!4227957 (and tp!1936459 tp!1936461))))

(assert (= (and b!7032454 (is-ElementMatch!17462 (h!74238 (exprs!6958 setElem!49145)))) b!7033033))

(assert (= (and b!7032454 (is-Concat!26307 (h!74238 (exprs!6958 setElem!49145)))) b!7033034))

(assert (= (and b!7032454 (is-Star!17462 (h!74238 (exprs!6958 setElem!49145)))) b!7033035))

(assert (= (and b!7032454 (is-Union!17462 (h!74238 (exprs!6958 setElem!49145)))) b!7033036))

(declare-fun b!7033037 () Bool)

(declare-fun e!4227958 () Bool)

(declare-fun tp!1936462 () Bool)

(declare-fun tp!1936463 () Bool)

(assert (=> b!7033037 (= e!4227958 (and tp!1936462 tp!1936463))))

(assert (=> b!7032454 (= tp!1936394 e!4227958)))

(assert (= (and b!7032454 (is-Cons!67790 (t!381679 (exprs!6958 setElem!49145)))) b!7033037))

(declare-fun e!4227959 () Bool)

(assert (=> b!7032460 (= tp!1936401 e!4227959)))

(declare-fun b!7033039 () Bool)

(declare-fun tp!1936467 () Bool)

(declare-fun tp!1936464 () Bool)

(assert (=> b!7033039 (= e!4227959 (and tp!1936467 tp!1936464))))

(declare-fun b!7033040 () Bool)

(declare-fun tp!1936465 () Bool)

(assert (=> b!7033040 (= e!4227959 tp!1936465)))

(declare-fun b!7033038 () Bool)

(assert (=> b!7033038 (= e!4227959 tp_is_empty!44149)))

(declare-fun b!7033041 () Bool)

(declare-fun tp!1936466 () Bool)

(declare-fun tp!1936468 () Bool)

(assert (=> b!7033041 (= e!4227959 (and tp!1936466 tp!1936468))))

(assert (= (and b!7032460 (is-ElementMatch!17462 (h!74238 (exprs!6958 ct2!306)))) b!7033038))

(assert (= (and b!7032460 (is-Concat!26307 (h!74238 (exprs!6958 ct2!306)))) b!7033039))

(assert (= (and b!7032460 (is-Star!17462 (h!74238 (exprs!6958 ct2!306)))) b!7033040))

(assert (= (and b!7032460 (is-Union!17462 (h!74238 (exprs!6958 ct2!306)))) b!7033041))

(declare-fun b!7033042 () Bool)

(declare-fun e!4227960 () Bool)

(declare-fun tp!1936469 () Bool)

(declare-fun tp!1936470 () Bool)

(assert (=> b!7033042 (= e!4227960 (and tp!1936469 tp!1936470))))

(assert (=> b!7032460 (= tp!1936402 e!4227960)))

(assert (= (and b!7032460 (is-Cons!67790 (t!381679 (exprs!6958 ct2!306)))) b!7033042))

(declare-fun b!7033043 () Bool)

(declare-fun e!4227961 () Bool)

(declare-fun tp!1936471 () Bool)

(declare-fun tp!1936472 () Bool)

(assert (=> b!7033043 (= e!4227961 (and tp!1936471 tp!1936472))))

(assert (=> b!7032459 (= tp!1936399 e!4227961)))

(assert (= (and b!7032459 (is-Cons!67790 (exprs!6958 setElem!49151))) b!7033043))

(declare-fun b!7033044 () Bool)

(declare-fun e!4227962 () Bool)

(declare-fun tp!1936473 () Bool)

(assert (=> b!7033044 (= e!4227962 (and tp_is_empty!44149 tp!1936473))))

(assert (=> b!7032449 (= tp!1936388 e!4227962)))

(assert (= (and b!7032449 (is-Cons!67791 (t!381680 (t!381680 s!7408)))) b!7033044))

(declare-fun condSetEmpty!49163 () Bool)

(assert (=> setNonEmpty!49151 (= condSetEmpty!49163 (= setRest!49151 (as set.empty (Set Context!12916))))))

(declare-fun setRes!49163 () Bool)

(assert (=> setNonEmpty!49151 (= tp!1936400 setRes!49163)))

(declare-fun setIsEmpty!49163 () Bool)

(assert (=> setIsEmpty!49163 setRes!49163))

(declare-fun tp!1936475 () Bool)

(declare-fun e!4227963 () Bool)

(declare-fun setNonEmpty!49163 () Bool)

(declare-fun setElem!49163 () Context!12916)

(assert (=> setNonEmpty!49163 (= setRes!49163 (and tp!1936475 (inv!86515 setElem!49163) e!4227963))))

(declare-fun setRest!49163 () (Set Context!12916))

(assert (=> setNonEmpty!49163 (= setRest!49151 (set.union (set.insert setElem!49163 (as set.empty (Set Context!12916))) setRest!49163))))

(declare-fun b!7033045 () Bool)

(declare-fun tp!1936474 () Bool)

(assert (=> b!7033045 (= e!4227963 tp!1936474)))

(assert (= (and setNonEmpty!49151 condSetEmpty!49163) setIsEmpty!49163))

(assert (= (and setNonEmpty!49151 (not condSetEmpty!49163)) setNonEmpty!49163))

(assert (= setNonEmpty!49163 b!7033045))

(declare-fun m!7740026 () Bool)

(assert (=> setNonEmpty!49163 m!7740026))

(declare-fun b_lambda!266479 () Bool)

(assert (= b_lambda!266465 (or b!7032161 b_lambda!266479)))

(assert (=> d!2194259 d!2193893))

(declare-fun b_lambda!266481 () Bool)

(assert (= b_lambda!266467 (or b!7032161 b_lambda!266481)))

(assert (=> d!2194267 d!2193889))

(declare-fun b_lambda!266483 () Bool)

(assert (= b_lambda!266443 (or b!7032169 b_lambda!266483)))

(declare-fun bs!1870888 () Bool)

(declare-fun d!2194319 () Bool)

(assert (= bs!1870888 (and d!2194319 b!7032169)))

(declare-fun validRegex!8928 (Regex!17462) Bool)

(assert (=> bs!1870888 (= (dynLambda!27381 lambda!414586 (h!74238 (++!15504 lt!2518415 (exprs!6958 ct2!306)))) (validRegex!8928 (h!74238 (++!15504 lt!2518415 (exprs!6958 ct2!306)))))))

(declare-fun m!7740028 () Bool)

(assert (=> bs!1870888 m!7740028))

(assert (=> b!7032651 d!2194319))

(declare-fun b_lambda!266485 () Bool)

(assert (= b_lambda!266449 (or d!2193833 b_lambda!266485)))

(declare-fun bs!1870889 () Bool)

(declare-fun d!2194321 () Bool)

(assert (= bs!1870889 (and d!2194321 d!2193833)))

(assert (=> bs!1870889 (= (dynLambda!27381 lambda!414675 (h!74238 (exprs!6958 setElem!49145))) (validRegex!8928 (h!74238 (exprs!6958 setElem!49145))))))

(declare-fun m!7740030 () Bool)

(assert (=> bs!1870889 m!7740030))

(assert (=> b!7032663 d!2194321))

(declare-fun b_lambda!266487 () Bool)

(assert (= b_lambda!266473 (or d!2193823 b_lambda!266487)))

(declare-fun bs!1870890 () Bool)

(declare-fun d!2194323 () Bool)

(assert (= bs!1870890 (and d!2194323 d!2193823)))

(assert (=> bs!1870890 (= (dynLambda!27381 lambda!414674 (h!74238 (exprs!6958 ct2!306))) (validRegex!8928 (h!74238 (exprs!6958 ct2!306))))))

(declare-fun m!7740032 () Bool)

(assert (=> bs!1870890 m!7740032))

(assert (=> b!7032988 d!2194323))

(declare-fun b_lambda!266489 () Bool)

(assert (= b_lambda!266455 (or b!7032161 b_lambda!266489)))

(assert (=> d!2194089 d!2193891))

(declare-fun b_lambda!266491 () Bool)

(assert (= b_lambda!266457 (or b!7032163 b_lambda!266491)))

(declare-fun bs!1870891 () Bool)

(declare-fun d!2194325 () Bool)

(assert (= bs!1870891 (and d!2194325 b!7032163)))

(assert (=> bs!1870891 (= (dynLambda!27374 lambda!414584 lt!2518790) (matchZipper!3002 (set.insert lt!2518790 (as set.empty (Set Context!12916))) s!7408))))

(declare-fun m!7740034 () Bool)

(assert (=> bs!1870891 m!7740034))

(assert (=> bs!1870891 m!7740034))

(declare-fun m!7740036 () Bool)

(assert (=> bs!1870891 m!7740036))

(assert (=> d!2194205 d!2194325))

(declare-fun b_lambda!266493 () Bool)

(assert (= b_lambda!266445 (or b!7032169 b_lambda!266493)))

(declare-fun bs!1870892 () Bool)

(declare-fun d!2194327 () Bool)

(assert (= bs!1870892 (and d!2194327 b!7032169)))

(assert (=> bs!1870892 (= (dynLambda!27381 lambda!414586 (h!74238 lt!2518415)) (validRegex!8928 (h!74238 lt!2518415)))))

(declare-fun m!7740038 () Bool)

(assert (=> bs!1870892 m!7740038))

(assert (=> b!7032653 d!2194327))

(declare-fun b_lambda!266495 () Bool)

(assert (= b_lambda!266453 (or d!2193779 b_lambda!266495)))

(declare-fun bs!1870893 () Bool)

(declare-fun d!2194329 () Bool)

(assert (= bs!1870893 (and d!2194329 d!2193779)))

(assert (=> bs!1870893 (= (dynLambda!27374 lambda!414659 (h!74240 lt!2518451)) (not (dynLambda!27374 lambda!414584 (h!74240 lt!2518451))))))

(declare-fun b_lambda!266515 () Bool)

(assert (=> (not b_lambda!266515) (not bs!1870893)))

(declare-fun m!7740040 () Bool)

(assert (=> bs!1870893 m!7740040))

(assert (=> b!7032707 d!2194329))

(declare-fun b_lambda!266497 () Bool)

(assert (= b_lambda!266463 (or d!2193813 b_lambda!266497)))

(declare-fun bs!1870894 () Bool)

(declare-fun d!2194331 () Bool)

(assert (= bs!1870894 (and d!2194331 d!2193813)))

(assert (=> bs!1870894 (= (dynLambda!27381 lambda!414665 (h!74238 (exprs!6958 lt!2518443))) (nullable!7173 (h!74238 (exprs!6958 lt!2518443))))))

(assert (=> bs!1870894 m!7739034))

(assert (=> b!7032911 d!2194331))

(declare-fun b_lambda!266499 () Bool)

(assert (= b_lambda!266461 (or b!7032169 b_lambda!266499)))

(assert (=> d!2194223 d!2193897))

(declare-fun b_lambda!266501 () Bool)

(assert (= b_lambda!266447 (or d!2193817 b_lambda!266501)))

(declare-fun bs!1870895 () Bool)

(declare-fun d!2194333 () Bool)

(assert (= bs!1870895 (and d!2194333 d!2193817)))

(assert (=> bs!1870895 (= (dynLambda!27381 lambda!414666 (h!74238 (exprs!6958 lt!2518419))) (nullable!7173 (h!74238 (exprs!6958 lt!2518419))))))

(assert (=> bs!1870895 m!7738514))

(assert (=> b!7032655 d!2194333))

(declare-fun b_lambda!266503 () Bool)

(assert (= b_lambda!266475 (or b!7032149 b_lambda!266503)))

(declare-fun bs!1870896 () Bool)

(declare-fun d!2194335 () Bool)

(assert (= bs!1870896 (and d!2194335 b!7032149)))

(assert (=> bs!1870896 (= (dynLambda!27374 lambda!414588 lt!2518804) (nullableContext!82 lt!2518804))))

(declare-fun m!7740042 () Bool)

(assert (=> bs!1870896 m!7740042))

(assert (=> d!2194291 d!2194335))

(declare-fun b_lambda!266505 () Bool)

(assert (= b_lambda!266469 (or b!7032169 b_lambda!266505)))

(declare-fun bs!1870897 () Bool)

(declare-fun d!2194337 () Bool)

(assert (= bs!1870897 (and d!2194337 b!7032169)))

(assert (=> bs!1870897 (= (dynLambda!27381 lambda!414586 (h!74238 (++!15504 (exprs!6958 lt!2518419) (exprs!6958 ct2!306)))) (validRegex!8928 (h!74238 (++!15504 (exprs!6958 lt!2518419) (exprs!6958 ct2!306)))))))

(declare-fun m!7740044 () Bool)

(assert (=> bs!1870897 m!7740044))

(assert (=> b!7032955 d!2194337))

(declare-fun b_lambda!266507 () Bool)

(assert (= b_lambda!266459 (or b!7032163 b_lambda!266507)))

(declare-fun bs!1870898 () Bool)

(declare-fun d!2194339 () Bool)

(assert (= bs!1870898 (and d!2194339 b!7032163)))

(assert (=> bs!1870898 (= (dynLambda!27374 lambda!414584 (h!74240 (toList!10805 lt!2518432))) (matchZipper!3002 (set.insert (h!74240 (toList!10805 lt!2518432)) (as set.empty (Set Context!12916))) s!7408))))

(declare-fun m!7740046 () Bool)

(assert (=> bs!1870898 m!7740046))

(assert (=> bs!1870898 m!7740046))

(declare-fun m!7740048 () Bool)

(assert (=> bs!1870898 m!7740048))

(assert (=> b!7032874 d!2194339))

(declare-fun b_lambda!266509 () Bool)

(assert (= b_lambda!266471 (or b!7032169 b_lambda!266509)))

(declare-fun bs!1870899 () Bool)

(declare-fun d!2194341 () Bool)

(assert (= bs!1870899 (and d!2194341 b!7032169)))

(assert (=> bs!1870899 (= (dynLambda!27381 lambda!414586 (h!74238 (exprs!6958 lt!2518419))) (validRegex!8928 (h!74238 (exprs!6958 lt!2518419))))))

(declare-fun m!7740050 () Bool)

(assert (=> bs!1870899 m!7740050))

(assert (=> b!7032957 d!2194341))

(declare-fun b_lambda!266511 () Bool)

(assert (= b_lambda!266451 (or b!7032169 b_lambda!266511)))

(declare-fun bs!1870900 () Bool)

(declare-fun d!2194343 () Bool)

(assert (= bs!1870900 (and d!2194343 b!7032169)))

(declare-fun lt!2518813 () Unit!161594)

(assert (=> bs!1870900 (= lt!2518813 (lemmaConcatPreservesForall!783 (exprs!6958 a!13202) (exprs!6958 ct2!306) lambda!414586))))

(assert (=> bs!1870900 (= (dynLambda!27376 lambda!414585 a!13202) (Context!12917 (++!15504 (exprs!6958 a!13202) (exprs!6958 ct2!306))))))

(declare-fun m!7740052 () Bool)

(assert (=> bs!1870900 m!7740052))

(declare-fun m!7740054 () Bool)

(assert (=> bs!1870900 m!7740054))

(assert (=> d!2194059 d!2194343))

(declare-fun b_lambda!266513 () Bool)

(assert (= b_lambda!266477 (or b!7032149 b_lambda!266513)))

(declare-fun bs!1870901 () Bool)

(declare-fun d!2194345 () Bool)

(assert (= bs!1870901 (and d!2194345 b!7032149)))

(assert (=> bs!1870901 (= (dynLambda!27374 lambda!414588 (h!74240 (toList!10805 lt!2518429))) (nullableContext!82 (h!74240 (toList!10805 lt!2518429))))))

(declare-fun m!7740056 () Bool)

(assert (=> bs!1870901 m!7740056))

(assert (=> b!7032995 d!2194345))

(push 1)

(assert (not d!2194035))

(assert (not b!7033002))

(assert (not d!2194183))

(assert (not d!2194121))

(assert (not d!2194317))

(assert (not bs!1870901))

(assert (not b!7032672))

(assert (not b!7032899))

(assert (not d!2194261))

(assert (not d!2194221))

(assert (not b!7032654))

(assert (not d!2194227))

(assert (not b!7032803))

(assert (not bm!638672))

(assert (not b!7033000))

(assert (not b!7032898))

(assert tp_is_empty!44149)

(assert (not b!7033019))

(assert (not b!7033011))

(assert (not b!7032871))

(assert (not d!2194077))

(assert (not d!2194301))

(assert (not b_lambda!266405))

(assert (not b!7032910))

(assert (not d!2194179))

(assert (not b!7032762))

(assert (not bm!638650))

(assert (not b!7032954))

(assert (not bm!638625))

(assert (not d!2194135))

(assert (not d!2194311))

(assert (not b!7032700))

(assert (not d!2194313))

(assert (not d!2194079))

(assert (not b!7032711))

(assert (not b!7032993))

(assert (not d!2194151))

(assert (not b!7032915))

(assert (not b!7032989))

(assert (not d!2194143))

(assert (not b!7032766))

(assert (not d!2194153))

(assert (not b!7032894))

(assert (not b!7032853))

(assert (not b!7032855))

(assert (not d!2194259))

(assert (not bm!638665))

(assert (not b!7032747))

(assert (not b!7032659))

(assert (not b!7032754))

(assert (not bm!638635))

(assert (not b!7032717))

(assert (not d!2194089))

(assert (not b!7033022))

(assert (not d!2194115))

(assert (not b!7032961))

(assert (not d!2194111))

(assert (not bm!638653))

(assert (not bs!1870894))

(assert (not bs!1870889))

(assert (not d!2194283))

(assert (not b!7032992))

(assert (not b!7032753))

(assert (not bm!638632))

(assert (not bm!638641))

(assert (not b_lambda!266501))

(assert (not b!7032948))

(assert (not b!7033005))

(assert (not b!7032725))

(assert (not bm!638656))

(assert (not d!2194129))

(assert (not b!7032804))

(assert (not b!7032698))

(assert (not bm!638647))

(assert (not b!7032792))

(assert (not b_lambda!266413))

(assert (not bs!1870897))

(assert (not b_lambda!266485))

(assert (not b!7032912))

(assert (not b!7032841))

(assert (not b!7032914))

(assert (not bm!638644))

(assert (not b!7033018))

(assert (not b!7032796))

(assert (not d!2194133))

(assert (not b_lambda!266495))

(assert (not b!7032658))

(assert (not b!7032999))

(assert (not b!7032986))

(assert (not b!7032953))

(assert (not b_lambda!266505))

(assert (not b_lambda!266481))

(assert (not b!7033045))

(assert (not b!7032656))

(assert (not d!2194101))

(assert (not b!7032926))

(assert (not setNonEmpty!49160))

(assert (not d!2194041))

(assert (not b!7033039))

(assert (not d!2194251))

(assert (not b!7032740))

(assert (not b!7032811))

(assert (not b!7032746))

(assert (not d!2194031))

(assert (not d!2194187))

(assert (not b!7032662))

(assert (not b_lambda!266483))

(assert (not b!7032652))

(assert (not setNonEmpty!49163))

(assert (not b!7032850))

(assert (not b!7032716))

(assert (not b_lambda!266499))

(assert (not bs!1870890))

(assert (not d!2194065))

(assert (not b!7032806))

(assert (not b_lambda!266479))

(assert (not d!2194299))

(assert (not b!7032856))

(assert (not b!7032750))

(assert (not bm!638659))

(assert (not d!2194161))

(assert (not b!7032684))

(assert (not bs!1870892))

(assert (not d!2194233))

(assert (not bm!638673))

(assert (not b_lambda!266411))

(assert (not d!2194263))

(assert (not bs!1870900))

(assert (not d!2194309))

(assert (not d!2194215))

(assert (not b!7032950))

(assert (not b_lambda!266407))

(assert (not b!7032686))

(assert (not d!2194109))

(assert (not b!7033035))

(assert (not b!7032708))

(assert (not b!7032956))

(assert (not b!7032854))

(assert (not d!2194267))

(assert (not bm!638668))

(assert (not d!2194033))

(assert (not b_lambda!266509))

(assert (not bs!1870898))

(assert (not bm!638633))

(assert (not d!2194141))

(assert (not b!7032794))

(assert (not bs!1870896))

(assert (not b!7032680))

(assert (not b!7033041))

(assert (not bs!1870888))

(assert (not b_lambda!266409))

(assert (not b!7032976))

(assert (not d!2194061))

(assert (not d!2194039))

(assert (not bm!638664))

(assert (not b!7032840))

(assert (not b!7032798))

(assert (not b!7032701))

(assert (not bm!638671))

(assert (not d!2194295))

(assert (not d!2194145))

(assert (not b!7032765))

(assert (not bm!638640))

(assert (not d!2194113))

(assert (not b!7032759))

(assert (not d!2194075))

(assert (not b!7032880))

(assert (not d!2194281))

(assert (not b!7032767))

(assert (not b!7032848))

(assert (not b!7032749))

(assert (not b!7032833))

(assert (not b!7032996))

(assert (not b!7032975))

(assert (not b!7033008))

(assert (not b!7032682))

(assert (not d!2194205))

(assert (not b!7032834))

(assert (not d!2194201))

(assert (not b_lambda!266497))

(assert (not b_lambda!266489))

(assert (not d!2194181))

(assert (not b_lambda!266487))

(assert (not b!7033042))

(assert (not b!7032958))

(assert (not d!2194059))

(assert (not b!7033034))

(assert (not b_lambda!266503))

(assert (not b!7032735))

(assert (not setNonEmpty!49157))

(assert (not b!7032758))

(assert (not b!7032744))

(assert (not b!7033040))

(assert (not b!7032951))

(assert (not b!7033012))

(assert (not d!2194303))

(assert (not b!7032694))

(assert (not bm!638662))

(assert (not d!2194199))

(assert (not b!7032674))

(assert (not b_lambda!266493))

(assert (not b!7032900))

(assert (not b!7033007))

(assert (not b!7032937))

(assert (not d!2194225))

(assert (not b!7032741))

(assert (not b!7033037))

(assert (not b_lambda!266401))

(assert (not b!7032670))

(assert (not b!7032737))

(assert (not b!7032972))

(assert (not b!7032908))

(assert (not d!2194037))

(assert (not d!2194239))

(assert (not b!7032799))

(assert (not b!7032724))

(assert (not b!7032869))

(assert (not b!7032809))

(assert (not d!2194195))

(assert (not b!7032751))

(assert (not b_lambda!266511))

(assert (not d!2194105))

(assert (not b!7032738))

(assert (not bm!638646))

(assert (not d!2194169))

(assert (not bm!638624))

(assert (not bs!1870895))

(assert (not b!7033043))

(assert (not b!7033036))

(assert (not b!7032664))

(assert (not b_lambda!266507))

(assert (not b!7032852))

(assert (not b!7032836))

(assert (not bs!1870899))

(assert (not b_lambda!266403))

(assert (not b!7032743))

(assert (not b_lambda!266513))

(assert (not bs!1870891))

(assert (not b!7032795))

(assert (not d!2194095))

(assert (not d!2194203))

(assert (not d!2194291))

(assert (not b!7032990))

(assert (not b!7032661))

(assert (not d!2194123))

(assert (not b!7032764))

(assert (not b!7032997))

(assert (not bm!638670))

(assert (not d!2194025))

(assert (not d!2194307))

(assert (not d!2194057))

(assert (not b!7032736))

(assert (not b!7033044))

(assert (not d!2194315))

(assert (not bm!638658))

(assert (not b!7033016))

(assert (not b!7032998))

(assert (not bm!638652))

(assert (not b_lambda!266491))

(assert (not d!2194177))

(assert (not d!2194119))

(assert (not d!2194277))

(assert (not b!7033021))

(assert (not b!7032685))

(assert (not d!2194241))

(assert (not d!2194197))

(assert (not b!7032734))

(assert (not b!7032882))

(assert (not d!2194131))

(assert (not b!7032837))

(assert (not d!2194207))

(assert (not d!2194223))

(assert (not d!2194297))

(assert (not d!2194189))

(assert (not d!2194085))

(assert (not b!7033001))

(assert (not b!7032748))

(assert (not setNonEmpty!49162))

(assert (not d!2194093))

(assert (not b!7032872))

(assert (not b!7032797))

(assert (not d!2194185))

(assert (not d!2194273))

(assert (not b!7032906))

(assert (not b!7032728))

(assert (not b!7032760))

(assert (not b!7032960))

(assert (not d!2194107))

(assert (not setNonEmpty!49161))

(assert (not b_lambda!266515))

(assert (not b!7033015))

(assert (not b!7032884))

(assert (not b!7032692))

(assert (not d!2194305))

(assert (not b!7032726))

(assert (not b!7032727))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

