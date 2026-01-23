; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!641424 () Bool)

(assert start!641424)

(declare-fun b!6546157 () Bool)

(assert (=> b!6546157 true))

(assert (=> b!6546157 true))

(declare-fun lambda!363381 () Int)

(declare-fun lambda!363380 () Int)

(assert (=> b!6546157 (not (= lambda!363381 lambda!363380))))

(assert (=> b!6546157 true))

(assert (=> b!6546157 true))

(declare-fun b!6546183 () Bool)

(assert (=> b!6546183 true))

(declare-fun b!6546191 () Bool)

(assert (=> b!6546191 true))

(declare-fun b!6546149 () Bool)

(declare-fun e!3963586 () Bool)

(declare-datatypes ((C!33106 0))(
  ( (C!33107 (val!26255 Int)) )
))
(declare-datatypes ((Regex!16418 0))(
  ( (ElementMatch!16418 (c!1202229 C!33106)) (Concat!25263 (regOne!33348 Regex!16418) (regTwo!33348 Regex!16418)) (EmptyExpr!16418) (Star!16418 (reg!16747 Regex!16418)) (EmptyLang!16418) (Union!16418 (regOne!33349 Regex!16418) (regTwo!33349 Regex!16418)) )
))
(declare-fun lt!2400615 () Regex!16418)

(declare-fun validRegex!8154 (Regex!16418) Bool)

(assert (=> b!6546149 (= e!3963586 (validRegex!8154 lt!2400615))))

(declare-fun lt!2400592 () Regex!16418)

(declare-datatypes ((List!65553 0))(
  ( (Nil!65429) (Cons!65429 (h!71877 C!33106) (t!379195 List!65553)) )
))
(declare-fun s!2326 () List!65553)

(declare-fun matchRSpec!3519 (Regex!16418 List!65553) Bool)

(assert (=> b!6546149 (matchRSpec!3519 lt!2400592 s!2326)))

(declare-datatypes ((Unit!159007 0))(
  ( (Unit!159008) )
))
(declare-fun lt!2400593 () Unit!159007)

(declare-fun mainMatchTheorem!3519 (Regex!16418 List!65553) Unit!159007)

(assert (=> b!6546149 (= lt!2400593 (mainMatchTheorem!3519 lt!2400592 s!2326))))

(declare-fun matchR!8601 (Regex!16418 List!65553) Bool)

(assert (=> b!6546149 (matchR!8601 lt!2400592 s!2326)))

(declare-fun r!7292 () Regex!16418)

(assert (=> b!6546149 (= lt!2400592 (Concat!25263 lt!2400615 (regTwo!33348 r!7292)))))

(declare-fun lt!2400601 () Regex!16418)

(assert (=> b!6546149 (= lt!2400615 (Concat!25263 (reg!16747 (regOne!33348 r!7292)) lt!2400601))))

(declare-fun lt!2400610 () Unit!159007)

(declare-fun lemmaConcatAssociative!115 (Regex!16418 Regex!16418 Regex!16418 List!65553) Unit!159007)

(assert (=> b!6546149 (= lt!2400610 (lemmaConcatAssociative!115 (reg!16747 (regOne!33348 r!7292)) lt!2400601 (regTwo!33348 r!7292) s!2326))))

(declare-fun e!3963569 () Bool)

(assert (=> b!6546149 e!3963569))

(declare-fun res!2685363 () Bool)

(assert (=> b!6546149 (=> (not res!2685363) (not e!3963569))))

(declare-fun lt!2400578 () Regex!16418)

(declare-fun lt!2400608 () List!65553)

(assert (=> b!6546149 (= res!2685363 (matchR!8601 lt!2400578 lt!2400608))))

(declare-fun lt!2400617 () Regex!16418)

(declare-datatypes ((tuple2!66794 0))(
  ( (tuple2!66795 (_1!36700 List!65553) (_2!36700 List!65553)) )
))
(declare-fun lt!2400613 () tuple2!66794)

(declare-fun lt!2400581 () Unit!159007)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!339 (Regex!16418 Regex!16418 List!65553 List!65553) Unit!159007)

(assert (=> b!6546149 (= lt!2400581 (lemmaTwoRegexMatchThenConcatMatchesConcatString!339 (reg!16747 (regOne!33348 r!7292)) lt!2400617 (_1!36700 lt!2400613) (_2!36700 lt!2400613)))))

(assert (=> b!6546149 (matchR!8601 lt!2400617 (_2!36700 lt!2400613))))

(declare-fun lt!2400618 () Unit!159007)

(declare-datatypes ((List!65554 0))(
  ( (Nil!65430) (Cons!65430 (h!71878 Regex!16418) (t!379196 List!65554)) )
))
(declare-datatypes ((Context!11604 0))(
  ( (Context!11605 (exprs!6302 List!65554)) )
))
(declare-fun lt!2400595 () (Set Context!11604))

(declare-datatypes ((List!65555 0))(
  ( (Nil!65431) (Cons!65431 (h!71879 Context!11604) (t!379197 List!65555)) )
))
(declare-fun lt!2400576 () List!65555)

(declare-fun theoremZipperRegexEquiv!854 ((Set Context!11604) List!65555 Regex!16418 List!65553) Unit!159007)

(assert (=> b!6546149 (= lt!2400618 (theoremZipperRegexEquiv!854 lt!2400595 lt!2400576 lt!2400617 (_2!36700 lt!2400613)))))

(assert (=> b!6546149 (matchR!8601 (reg!16747 (regOne!33348 r!7292)) (_1!36700 lt!2400613))))

(declare-fun lt!2400582 () Unit!159007)

(declare-fun lt!2400574 () List!65555)

(declare-fun lt!2400572 () (Set Context!11604))

(assert (=> b!6546149 (= lt!2400582 (theoremZipperRegexEquiv!854 lt!2400572 lt!2400574 (reg!16747 (regOne!33348 r!7292)) (_1!36700 lt!2400613)))))

(declare-fun lt!2400589 () List!65554)

(declare-fun lt!2400614 () List!65554)

(declare-fun matchZipper!2430 ((Set Context!11604) List!65553) Bool)

(declare-fun ++!14538 (List!65554 List!65554) List!65554)

(assert (=> b!6546149 (matchZipper!2430 (set.insert (Context!11605 (++!14538 lt!2400589 lt!2400614)) (as set.empty (Set Context!11604))) lt!2400608)))

(declare-fun lambda!363384 () Int)

(declare-fun lt!2400580 () Unit!159007)

(declare-fun lemmaConcatPreservesForall!391 (List!65554 List!65554 Int) Unit!159007)

(assert (=> b!6546149 (= lt!2400580 (lemmaConcatPreservesForall!391 lt!2400589 lt!2400614 lambda!363384))))

(declare-fun lt!2400603 () Context!11604)

(declare-fun lt!2400606 () Context!11604)

(declare-fun lt!2400598 () Unit!159007)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!199 (Context!11604 Context!11604 List!65553 List!65553) Unit!159007)

(assert (=> b!6546149 (= lt!2400598 (lemmaConcatenateContextMatchesConcatOfStrings!199 lt!2400606 lt!2400603 (_1!36700 lt!2400613) (_2!36700 lt!2400613)))))

(declare-fun b!6546150 () Bool)

(declare-fun e!3963582 () Bool)

(declare-fun e!3963587 () Bool)

(assert (=> b!6546150 (= e!3963582 e!3963587)))

(declare-fun res!2685359 () Bool)

(assert (=> b!6546150 (=> res!2685359 e!3963587)))

(declare-fun lt!2400584 () (Set Context!11604))

(declare-fun lt!2400594 () Bool)

(assert (=> b!6546150 (= res!2685359 (not (= lt!2400594 (matchZipper!2430 lt!2400584 (t!379195 s!2326)))))))

(declare-fun lt!2400624 () (Set Context!11604))

(assert (=> b!6546150 (= lt!2400594 (matchZipper!2430 lt!2400624 s!2326))))

(declare-fun b!6546151 () Bool)

(declare-fun e!3963575 () Bool)

(declare-fun e!3963581 () Bool)

(assert (=> b!6546151 (= e!3963575 e!3963581)))

(declare-fun res!2685367 () Bool)

(assert (=> b!6546151 (=> res!2685367 e!3963581)))

(declare-fun unfocusZipper!2160 (List!65555) Regex!16418)

(assert (=> b!6546151 (= res!2685367 (not (= (unfocusZipper!2160 lt!2400574) (reg!16747 (regOne!33348 r!7292)))))))

(assert (=> b!6546151 (= lt!2400574 (Cons!65431 lt!2400606 Nil!65431))))

(declare-fun lambda!363382 () Int)

(declare-fun flatMap!1923 ((Set Context!11604) Int) (Set Context!11604))

(declare-fun derivationStepZipperUp!1592 (Context!11604 C!33106) (Set Context!11604))

(assert (=> b!6546151 (= (flatMap!1923 lt!2400595 lambda!363382) (derivationStepZipperUp!1592 lt!2400603 (h!71877 s!2326)))))

(declare-fun lt!2400596 () Unit!159007)

(declare-fun lemmaFlatMapOnSingletonSet!1449 ((Set Context!11604) Context!11604 Int) Unit!159007)

(assert (=> b!6546151 (= lt!2400596 (lemmaFlatMapOnSingletonSet!1449 lt!2400595 lt!2400603 lambda!363382))))

(assert (=> b!6546151 (= (flatMap!1923 lt!2400572 lambda!363382) (derivationStepZipperUp!1592 lt!2400606 (h!71877 s!2326)))))

(declare-fun lt!2400621 () Unit!159007)

(assert (=> b!6546151 (= lt!2400621 (lemmaFlatMapOnSingletonSet!1449 lt!2400572 lt!2400606 lambda!363382))))

(declare-fun lt!2400609 () (Set Context!11604))

(assert (=> b!6546151 (= lt!2400609 (derivationStepZipperUp!1592 lt!2400603 (h!71877 s!2326)))))

(declare-fun lt!2400600 () (Set Context!11604))

(assert (=> b!6546151 (= lt!2400600 (derivationStepZipperUp!1592 lt!2400606 (h!71877 s!2326)))))

(assert (=> b!6546151 (= lt!2400595 (set.insert lt!2400603 (as set.empty (Set Context!11604))))))

(assert (=> b!6546151 (= lt!2400572 (set.insert lt!2400606 (as set.empty (Set Context!11604))))))

(assert (=> b!6546151 (= lt!2400606 (Context!11605 lt!2400589))))

(assert (=> b!6546151 (= lt!2400589 (Cons!65430 (reg!16747 (regOne!33348 r!7292)) Nil!65430))))

(declare-fun b!6546152 () Bool)

(declare-fun e!3963573 () Unit!159007)

(declare-fun Unit!159009 () Unit!159007)

(assert (=> b!6546152 (= e!3963573 Unit!159009)))

(declare-fun lt!2400622 () Unit!159007)

(declare-fun lt!2400586 () (Set Context!11604))

(declare-fun lt!2400591 () (Set Context!11604))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1249 ((Set Context!11604) (Set Context!11604) List!65553) Unit!159007)

(assert (=> b!6546152 (= lt!2400622 (lemmaZipperConcatMatchesSameAsBothZippers!1249 lt!2400586 lt!2400591 (t!379195 s!2326)))))

(declare-fun res!2685354 () Bool)

(assert (=> b!6546152 (= res!2685354 (matchZipper!2430 lt!2400586 (t!379195 s!2326)))))

(declare-fun e!3963567 () Bool)

(assert (=> b!6546152 (=> res!2685354 e!3963567)))

(assert (=> b!6546152 (= (matchZipper!2430 (set.union lt!2400586 lt!2400591) (t!379195 s!2326)) e!3963567)))

(declare-fun b!6546153 () Bool)

(declare-fun res!2685383 () Bool)

(declare-fun e!3963574 () Bool)

(assert (=> b!6546153 (=> res!2685383 e!3963574)))

(declare-fun zl!343 () List!65555)

(declare-fun isEmpty!37651 (List!65555) Bool)

(assert (=> b!6546153 (= res!2685383 (not (isEmpty!37651 (t!379197 zl!343))))))

(declare-fun b!6546154 () Bool)

(declare-fun res!2685351 () Bool)

(assert (=> b!6546154 (=> res!2685351 e!3963574)))

(assert (=> b!6546154 (= res!2685351 (or (is-EmptyExpr!16418 r!7292) (is-EmptyLang!16418 r!7292) (is-ElementMatch!16418 r!7292) (is-Union!16418 r!7292) (not (is-Concat!25263 r!7292))))))

(declare-fun b!6546155 () Bool)

(declare-fun e!3963572 () Bool)

(assert (=> b!6546155 (= e!3963572 (not (matchZipper!2430 lt!2400591 (t!379195 s!2326))))))

(declare-fun b!6546156 () Bool)

(declare-fun res!2685368 () Bool)

(declare-fun e!3963578 () Bool)

(assert (=> b!6546156 (=> res!2685368 e!3963578)))

(declare-fun e!3963585 () Bool)

(assert (=> b!6546156 (= res!2685368 e!3963585)))

(declare-fun res!2685358 () Bool)

(assert (=> b!6546156 (=> (not res!2685358) (not e!3963585))))

(assert (=> b!6546156 (= res!2685358 (is-Concat!25263 (regOne!33348 r!7292)))))

(declare-fun e!3963576 () Bool)

(assert (=> b!6546157 (= e!3963574 e!3963576)))

(declare-fun res!2685366 () Bool)

(assert (=> b!6546157 (=> res!2685366 e!3963576)))

(declare-fun lt!2400611 () Bool)

(declare-fun lt!2400583 () Bool)

(assert (=> b!6546157 (= res!2685366 (or (not (= lt!2400611 lt!2400583)) (is-Nil!65429 s!2326)))))

(declare-fun Exists!3488 (Int) Bool)

(assert (=> b!6546157 (= (Exists!3488 lambda!363380) (Exists!3488 lambda!363381))))

(declare-fun lt!2400605 () Unit!159007)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2025 (Regex!16418 Regex!16418 List!65553) Unit!159007)

(assert (=> b!6546157 (= lt!2400605 (lemmaExistCutMatchRandMatchRSpecEquivalent!2025 (regOne!33348 r!7292) (regTwo!33348 r!7292) s!2326))))

(assert (=> b!6546157 (= lt!2400583 (Exists!3488 lambda!363380))))

(declare-datatypes ((Option!16309 0))(
  ( (None!16308) (Some!16308 (v!52493 tuple2!66794)) )
))
(declare-fun isDefined!13012 (Option!16309) Bool)

(declare-fun findConcatSeparation!2723 (Regex!16418 Regex!16418 List!65553 List!65553 List!65553) Option!16309)

(assert (=> b!6546157 (= lt!2400583 (isDefined!13012 (findConcatSeparation!2723 (regOne!33348 r!7292) (regTwo!33348 r!7292) Nil!65429 s!2326 s!2326)))))

(declare-fun lt!2400604 () Unit!159007)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2487 (Regex!16418 Regex!16418 List!65553) Unit!159007)

(assert (=> b!6546157 (= lt!2400604 (lemmaFindConcatSeparationEquivalentToExists!2487 (regOne!33348 r!7292) (regTwo!33348 r!7292) s!2326))))

(declare-fun b!6546158 () Bool)

(declare-fun e!3963583 () Bool)

(assert (=> b!6546158 (= e!3963583 (not e!3963574))))

(declare-fun res!2685381 () Bool)

(assert (=> b!6546158 (=> res!2685381 e!3963574)))

(assert (=> b!6546158 (= res!2685381 (not (is-Cons!65431 zl!343)))))

(assert (=> b!6546158 (= lt!2400611 (matchRSpec!3519 r!7292 s!2326))))

(assert (=> b!6546158 (= lt!2400611 (matchR!8601 r!7292 s!2326))))

(declare-fun lt!2400590 () Unit!159007)

(assert (=> b!6546158 (= lt!2400590 (mainMatchTheorem!3519 r!7292 s!2326))))

(declare-fun b!6546159 () Bool)

(declare-fun e!3963579 () Bool)

(assert (=> b!6546159 (= e!3963581 e!3963579)))

(declare-fun res!2685353 () Bool)

(assert (=> b!6546159 (=> res!2685353 e!3963579)))

(assert (=> b!6546159 (= res!2685353 (not (= (unfocusZipper!2160 lt!2400576) lt!2400617)))))

(assert (=> b!6546159 (= lt!2400576 (Cons!65431 lt!2400603 Nil!65431))))

(declare-fun b!6546160 () Bool)

(declare-fun Unit!159010 () Unit!159007)

(assert (=> b!6546160 (= e!3963573 Unit!159010)))

(declare-fun b!6546161 () Bool)

(declare-fun e!3963577 () Bool)

(declare-fun tp!1810852 () Bool)

(declare-fun tp!1810850 () Bool)

(assert (=> b!6546161 (= e!3963577 (and tp!1810852 tp!1810850))))

(declare-fun b!6546162 () Bool)

(declare-fun res!2685352 () Bool)

(assert (=> b!6546162 (=> res!2685352 e!3963586)))

(assert (=> b!6546162 (= res!2685352 (not (matchZipper!2430 lt!2400572 (_1!36700 lt!2400613))))))

(declare-fun b!6546163 () Bool)

(declare-fun e!3963584 () Bool)

(declare-fun tp!1810857 () Bool)

(assert (=> b!6546163 (= e!3963584 tp!1810857)))

(declare-fun b!6546164 () Bool)

(declare-fun tp!1810853 () Bool)

(declare-fun tp!1810848 () Bool)

(assert (=> b!6546164 (= e!3963577 (and tp!1810853 tp!1810848))))

(declare-fun b!6546165 () Bool)

(declare-fun res!2685374 () Bool)

(assert (=> b!6546165 (=> res!2685374 e!3963574)))

(assert (=> b!6546165 (= res!2685374 (not (is-Cons!65430 (exprs!6302 (h!71879 zl!343)))))))

(declare-fun b!6546166 () Bool)

(declare-fun e!3963568 () Bool)

(declare-fun tp!1810854 () Bool)

(assert (=> b!6546166 (= e!3963568 tp!1810854)))

(declare-fun b!6546167 () Bool)

(declare-fun e!3963588 () Bool)

(assert (=> b!6546167 (= e!3963588 e!3963583)))

(declare-fun res!2685360 () Bool)

(assert (=> b!6546167 (=> (not res!2685360) (not e!3963583))))

(declare-fun lt!2400616 () Regex!16418)

(assert (=> b!6546167 (= res!2685360 (= r!7292 lt!2400616))))

(assert (=> b!6546167 (= lt!2400616 (unfocusZipper!2160 zl!343))))

(declare-fun b!6546168 () Bool)

(declare-fun res!2685372 () Bool)

(declare-fun e!3963590 () Bool)

(assert (=> b!6546168 (=> res!2685372 e!3963590)))

(declare-fun lt!2400577 () Bool)

(assert (=> b!6546168 (= res!2685372 (or (not lt!2400577) (not lt!2400594)))))

(declare-fun b!6546169 () Bool)

(declare-fun e!3963571 () Bool)

(assert (=> b!6546169 (= e!3963571 e!3963586)))

(declare-fun res!2685384 () Bool)

(assert (=> b!6546169 (=> res!2685384 e!3963586)))

(assert (=> b!6546169 (= res!2685384 (not (= s!2326 lt!2400608)))))

(declare-fun ++!14539 (List!65553 List!65553) List!65553)

(assert (=> b!6546169 (= lt!2400608 (++!14539 (_1!36700 lt!2400613) (_2!36700 lt!2400613)))))

(declare-fun lt!2400579 () Option!16309)

(declare-fun get!22709 (Option!16309) tuple2!66794)

(assert (=> b!6546169 (= lt!2400613 (get!22709 lt!2400579))))

(assert (=> b!6546169 (isDefined!13012 lt!2400579)))

(declare-fun findConcatSeparationZippers!183 ((Set Context!11604) (Set Context!11604) List!65553 List!65553 List!65553) Option!16309)

(assert (=> b!6546169 (= lt!2400579 (findConcatSeparationZippers!183 lt!2400572 lt!2400595 Nil!65429 s!2326 s!2326))))

(declare-fun lt!2400623 () Unit!159007)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!183 ((Set Context!11604) Context!11604 List!65553) Unit!159007)

(assert (=> b!6546169 (= lt!2400623 (lemmaConcatZipperMatchesStringThenFindConcatDefined!183 lt!2400572 lt!2400603 s!2326))))

(declare-fun e!3963570 () Bool)

(declare-fun b!6546170 () Bool)

(declare-fun tp!1810849 () Bool)

(declare-fun inv!84293 (Context!11604) Bool)

(assert (=> b!6546170 (= e!3963570 (and (inv!84293 (h!71879 zl!343)) e!3963568 tp!1810849))))

(declare-fun b!6546171 () Bool)

(declare-fun e!3963566 () Bool)

(declare-fun tp_is_empty!42089 () Bool)

(declare-fun tp!1810856 () Bool)

(assert (=> b!6546171 (= e!3963566 (and tp_is_empty!42089 tp!1810856))))

(declare-fun b!6546172 () Bool)

(declare-fun e!3963580 () Bool)

(assert (=> b!6546172 (= e!3963580 e!3963582)))

(declare-fun res!2685377 () Bool)

(assert (=> b!6546172 (=> res!2685377 e!3963582)))

(declare-fun lt!2400602 () (Set Context!11604))

(assert (=> b!6546172 (= res!2685377 (not (= lt!2400584 lt!2400602)))))

(declare-fun lt!2400599 () Context!11604)

(assert (=> b!6546172 (= (flatMap!1923 lt!2400624 lambda!363382) (derivationStepZipperUp!1592 lt!2400599 (h!71877 s!2326)))))

(declare-fun lt!2400597 () Unit!159007)

(assert (=> b!6546172 (= lt!2400597 (lemmaFlatMapOnSingletonSet!1449 lt!2400624 lt!2400599 lambda!363382))))

(declare-fun lt!2400575 () (Set Context!11604))

(assert (=> b!6546172 (= lt!2400575 (derivationStepZipperUp!1592 lt!2400599 (h!71877 s!2326)))))

(declare-fun derivationStepZipper!2384 ((Set Context!11604) C!33106) (Set Context!11604))

(assert (=> b!6546172 (= lt!2400584 (derivationStepZipper!2384 lt!2400624 (h!71877 s!2326)))))

(assert (=> b!6546172 (= lt!2400624 (set.insert lt!2400599 (as set.empty (Set Context!11604))))))

(assert (=> b!6546172 (= lt!2400599 (Context!11605 (Cons!65430 (reg!16747 (regOne!33348 r!7292)) lt!2400614)))))

(declare-fun b!6546173 () Bool)

(declare-fun res!2685371 () Bool)

(assert (=> b!6546173 (=> res!2685371 e!3963587)))

(assert (=> b!6546173 (= res!2685371 (not (= lt!2400616 r!7292)))))

(declare-fun b!6546174 () Bool)

(declare-fun e!3963589 () Bool)

(assert (=> b!6546174 (= e!3963587 e!3963589)))

(declare-fun res!2685382 () Bool)

(assert (=> b!6546174 (=> res!2685382 e!3963589)))

(assert (=> b!6546174 (= res!2685382 (not (= r!7292 lt!2400617)))))

(assert (=> b!6546174 (= lt!2400617 (Concat!25263 lt!2400601 (regTwo!33348 r!7292)))))

(declare-fun b!6546175 () Bool)

(declare-fun e!3963565 () Bool)

(assert (=> b!6546175 (= e!3963579 e!3963565)))

(declare-fun res!2685365 () Bool)

(assert (=> b!6546175 (=> res!2685365 e!3963565)))

(assert (=> b!6546175 (= res!2685365 lt!2400611)))

(declare-fun lt!2400619 () Bool)

(assert (=> b!6546175 (= lt!2400619 (matchRSpec!3519 lt!2400578 s!2326))))

(assert (=> b!6546175 (= lt!2400619 (matchR!8601 lt!2400578 s!2326))))

(declare-fun lt!2400571 () Unit!159007)

(assert (=> b!6546175 (= lt!2400571 (mainMatchTheorem!3519 lt!2400578 s!2326))))

(declare-fun res!2685385 () Bool)

(assert (=> start!641424 (=> (not res!2685385) (not e!3963588))))

(assert (=> start!641424 (= res!2685385 (validRegex!8154 r!7292))))

(assert (=> start!641424 e!3963588))

(assert (=> start!641424 e!3963577))

(declare-fun condSetEmpty!44667 () Bool)

(declare-fun z!1189 () (Set Context!11604))

(assert (=> start!641424 (= condSetEmpty!44667 (= z!1189 (as set.empty (Set Context!11604))))))

(declare-fun setRes!44667 () Bool)

(assert (=> start!641424 setRes!44667))

(assert (=> start!641424 e!3963570))

(assert (=> start!641424 e!3963566))

(declare-fun b!6546176 () Bool)

(assert (=> b!6546176 (= e!3963578 e!3963580)))

(declare-fun res!2685361 () Bool)

(assert (=> b!6546176 (=> res!2685361 e!3963580)))

(assert (=> b!6546176 (= res!2685361 (not (= lt!2400586 lt!2400602)))))

(declare-fun derivationStepZipperDown!1666 (Regex!16418 Context!11604 C!33106) (Set Context!11604))

(assert (=> b!6546176 (= lt!2400602 (derivationStepZipperDown!1666 (reg!16747 (regOne!33348 r!7292)) lt!2400603 (h!71877 s!2326)))))

(assert (=> b!6546176 (= lt!2400603 (Context!11605 lt!2400614))))

(assert (=> b!6546176 (= lt!2400614 (Cons!65430 lt!2400601 (t!379196 (exprs!6302 (h!71879 zl!343)))))))

(assert (=> b!6546176 (= lt!2400601 (Star!16418 (reg!16747 (regOne!33348 r!7292))))))

(declare-fun b!6546177 () Bool)

(declare-fun res!2685369 () Bool)

(assert (=> b!6546177 (=> (not res!2685369) (not e!3963588))))

(declare-fun toList!10202 ((Set Context!11604)) List!65555)

(assert (=> b!6546177 (= res!2685369 (= (toList!10202 z!1189) zl!343))))

(declare-fun b!6546178 () Bool)

(declare-fun res!2685362 () Bool)

(assert (=> b!6546178 (=> res!2685362 e!3963578)))

(assert (=> b!6546178 (= res!2685362 (or (is-Concat!25263 (regOne!33348 r!7292)) (not (is-Star!16418 (regOne!33348 r!7292)))))))

(declare-fun b!6546179 () Bool)

(assert (=> b!6546179 (= e!3963565 e!3963590)))

(declare-fun res!2685357 () Bool)

(assert (=> b!6546179 (=> res!2685357 e!3963590)))

(assert (=> b!6546179 (= res!2685357 e!3963572)))

(declare-fun res!2685355 () Bool)

(assert (=> b!6546179 (=> (not res!2685355) (not e!3963572))))

(assert (=> b!6546179 (= res!2685355 (not lt!2400577))))

(assert (=> b!6546179 (= lt!2400577 (matchZipper!2430 lt!2400586 (t!379195 s!2326)))))

(declare-fun b!6546180 () Bool)

(declare-fun res!2685356 () Bool)

(assert (=> b!6546180 (=> res!2685356 e!3963574)))

(declare-fun generalisedUnion!2262 (List!65554) Regex!16418)

(declare-fun unfocusZipperList!1839 (List!65555) List!65554)

(assert (=> b!6546180 (= res!2685356 (not (= r!7292 (generalisedUnion!2262 (unfocusZipperList!1839 zl!343)))))))

(declare-fun b!6546181 () Bool)

(assert (=> b!6546181 (= e!3963567 (matchZipper!2430 lt!2400591 (t!379195 s!2326)))))

(declare-fun b!6546182 () Bool)

(declare-fun res!2685370 () Bool)

(assert (=> b!6546182 (=> res!2685370 e!3963565)))

(assert (=> b!6546182 (= res!2685370 (not (matchZipper!2430 z!1189 s!2326)))))

(assert (=> b!6546183 (= e!3963576 e!3963578)))

(declare-fun res!2685376 () Bool)

(assert (=> b!6546183 (=> res!2685376 e!3963578)))

(assert (=> b!6546183 (= res!2685376 (or (and (is-ElementMatch!16418 (regOne!33348 r!7292)) (= (c!1202229 (regOne!33348 r!7292)) (h!71877 s!2326))) (is-Union!16418 (regOne!33348 r!7292))))))

(declare-fun lt!2400585 () Unit!159007)

(assert (=> b!6546183 (= lt!2400585 e!3963573)))

(declare-fun c!1202228 () Bool)

(declare-fun lt!2400612 () Bool)

(assert (=> b!6546183 (= c!1202228 lt!2400612)))

(declare-fun nullable!6411 (Regex!16418) Bool)

(assert (=> b!6546183 (= lt!2400612 (nullable!6411 (h!71878 (exprs!6302 (h!71879 zl!343)))))))

(assert (=> b!6546183 (= (flatMap!1923 z!1189 lambda!363382) (derivationStepZipperUp!1592 (h!71879 zl!343) (h!71877 s!2326)))))

(declare-fun lt!2400620 () Unit!159007)

(assert (=> b!6546183 (= lt!2400620 (lemmaFlatMapOnSingletonSet!1449 z!1189 (h!71879 zl!343) lambda!363382))))

(declare-fun lt!2400587 () Context!11604)

(assert (=> b!6546183 (= lt!2400591 (derivationStepZipperUp!1592 lt!2400587 (h!71877 s!2326)))))

(assert (=> b!6546183 (= lt!2400586 (derivationStepZipperDown!1666 (h!71878 (exprs!6302 (h!71879 zl!343))) lt!2400587 (h!71877 s!2326)))))

(assert (=> b!6546183 (= lt!2400587 (Context!11605 (t!379196 (exprs!6302 (h!71879 zl!343)))))))

(declare-fun lt!2400588 () (Set Context!11604))

(assert (=> b!6546183 (= lt!2400588 (derivationStepZipperUp!1592 (Context!11605 (Cons!65430 (h!71878 (exprs!6302 (h!71879 zl!343))) (t!379196 (exprs!6302 (h!71879 zl!343))))) (h!71877 s!2326)))))

(declare-fun b!6546184 () Bool)

(declare-fun tp!1810855 () Bool)

(assert (=> b!6546184 (= e!3963577 tp!1810855)))

(declare-fun b!6546185 () Bool)

(declare-fun res!2685373 () Bool)

(assert (=> b!6546185 (=> res!2685373 e!3963586)))

(assert (=> b!6546185 (= res!2685373 (not (matchZipper!2430 lt!2400595 (_2!36700 lt!2400613))))))

(declare-fun b!6546186 () Bool)

(assert (=> b!6546186 (= e!3963585 (nullable!6411 (regOne!33348 (regOne!33348 r!7292))))))

(declare-fun b!6546187 () Bool)

(declare-fun res!2685375 () Bool)

(assert (=> b!6546187 (=> res!2685375 e!3963565)))

(assert (=> b!6546187 (= res!2685375 (not lt!2400612))))

(declare-fun tp!1810851 () Bool)

(declare-fun setNonEmpty!44667 () Bool)

(declare-fun setElem!44667 () Context!11604)

(assert (=> setNonEmpty!44667 (= setRes!44667 (and tp!1810851 (inv!84293 setElem!44667) e!3963584))))

(declare-fun setRest!44667 () (Set Context!11604))

(assert (=> setNonEmpty!44667 (= z!1189 (set.union (set.insert setElem!44667 (as set.empty (Set Context!11604))) setRest!44667))))

(declare-fun b!6546188 () Bool)

(assert (=> b!6546188 (= e!3963577 tp_is_empty!42089)))

(declare-fun b!6546189 () Bool)

(declare-fun res!2685378 () Bool)

(assert (=> b!6546189 (=> res!2685378 e!3963574)))

(declare-fun generalisedConcat!2015 (List!65554) Regex!16418)

(assert (=> b!6546189 (= res!2685378 (not (= r!7292 (generalisedConcat!2015 (exprs!6302 (h!71879 zl!343))))))))

(declare-fun setIsEmpty!44667 () Bool)

(assert (=> setIsEmpty!44667 setRes!44667))

(declare-fun b!6546190 () Bool)

(assert (=> b!6546190 (= e!3963589 e!3963575)))

(declare-fun res!2685379 () Bool)

(assert (=> b!6546190 (=> res!2685379 e!3963575)))

(assert (=> b!6546190 (= res!2685379 (not (= (unfocusZipper!2160 (Cons!65431 lt!2400599 Nil!65431)) lt!2400578)))))

(assert (=> b!6546190 (= lt!2400578 (Concat!25263 (reg!16747 (regOne!33348 r!7292)) lt!2400617))))

(assert (=> b!6546191 (= e!3963590 e!3963571)))

(declare-fun res!2685364 () Bool)

(assert (=> b!6546191 (=> res!2685364 e!3963571)))

(declare-fun appendTo!179 ((Set Context!11604) Context!11604) (Set Context!11604))

(assert (=> b!6546191 (= res!2685364 (not (= (appendTo!179 lt!2400572 lt!2400603) lt!2400624)))))

(declare-fun lambda!363383 () Int)

(declare-fun map!14936 ((Set Context!11604) Int) (Set Context!11604))

(assert (=> b!6546191 (= (map!14936 lt!2400572 lambda!363383) (set.insert (Context!11605 (++!14538 lt!2400589 lt!2400614)) (as set.empty (Set Context!11604))))))

(declare-fun lt!2400607 () Unit!159007)

(assert (=> b!6546191 (= lt!2400607 (lemmaConcatPreservesForall!391 lt!2400589 lt!2400614 lambda!363384))))

(declare-fun lt!2400573 () Unit!159007)

(declare-fun lemmaMapOnSingletonSet!201 ((Set Context!11604) Context!11604 Int) Unit!159007)

(assert (=> b!6546191 (= lt!2400573 (lemmaMapOnSingletonSet!201 lt!2400572 lt!2400606 lambda!363383))))

(declare-fun b!6546192 () Bool)

(declare-fun res!2685380 () Bool)

(assert (=> b!6546192 (=> res!2685380 e!3963576)))

(declare-fun isEmpty!37652 (List!65554) Bool)

(assert (=> b!6546192 (= res!2685380 (isEmpty!37652 (t!379196 (exprs!6302 (h!71879 zl!343)))))))

(declare-fun b!6546193 () Bool)

(assert (=> b!6546193 (= e!3963569 lt!2400619)))

(assert (= (and start!641424 res!2685385) b!6546177))

(assert (= (and b!6546177 res!2685369) b!6546167))

(assert (= (and b!6546167 res!2685360) b!6546158))

(assert (= (and b!6546158 (not res!2685381)) b!6546153))

(assert (= (and b!6546153 (not res!2685383)) b!6546189))

(assert (= (and b!6546189 (not res!2685378)) b!6546165))

(assert (= (and b!6546165 (not res!2685374)) b!6546180))

(assert (= (and b!6546180 (not res!2685356)) b!6546154))

(assert (= (and b!6546154 (not res!2685351)) b!6546157))

(assert (= (and b!6546157 (not res!2685366)) b!6546192))

(assert (= (and b!6546192 (not res!2685380)) b!6546183))

(assert (= (and b!6546183 c!1202228) b!6546152))

(assert (= (and b!6546183 (not c!1202228)) b!6546160))

(assert (= (and b!6546152 (not res!2685354)) b!6546181))

(assert (= (and b!6546183 (not res!2685376)) b!6546156))

(assert (= (and b!6546156 res!2685358) b!6546186))

(assert (= (and b!6546156 (not res!2685368)) b!6546178))

(assert (= (and b!6546178 (not res!2685362)) b!6546176))

(assert (= (and b!6546176 (not res!2685361)) b!6546172))

(assert (= (and b!6546172 (not res!2685377)) b!6546150))

(assert (= (and b!6546150 (not res!2685359)) b!6546173))

(assert (= (and b!6546173 (not res!2685371)) b!6546174))

(assert (= (and b!6546174 (not res!2685382)) b!6546190))

(assert (= (and b!6546190 (not res!2685379)) b!6546151))

(assert (= (and b!6546151 (not res!2685367)) b!6546159))

(assert (= (and b!6546159 (not res!2685353)) b!6546175))

(assert (= (and b!6546175 (not res!2685365)) b!6546182))

(assert (= (and b!6546182 (not res!2685370)) b!6546187))

(assert (= (and b!6546187 (not res!2685375)) b!6546179))

(assert (= (and b!6546179 res!2685355) b!6546155))

(assert (= (and b!6546179 (not res!2685357)) b!6546168))

(assert (= (and b!6546168 (not res!2685372)) b!6546191))

(assert (= (and b!6546191 (not res!2685364)) b!6546169))

(assert (= (and b!6546169 (not res!2685384)) b!6546162))

(assert (= (and b!6546162 (not res!2685352)) b!6546185))

(assert (= (and b!6546185 (not res!2685373)) b!6546149))

(assert (= (and b!6546149 res!2685363) b!6546193))

(assert (= (and start!641424 (is-ElementMatch!16418 r!7292)) b!6546188))

(assert (= (and start!641424 (is-Concat!25263 r!7292)) b!6546164))

(assert (= (and start!641424 (is-Star!16418 r!7292)) b!6546184))

(assert (= (and start!641424 (is-Union!16418 r!7292)) b!6546161))

(assert (= (and start!641424 condSetEmpty!44667) setIsEmpty!44667))

(assert (= (and start!641424 (not condSetEmpty!44667)) setNonEmpty!44667))

(assert (= setNonEmpty!44667 b!6546163))

(assert (= b!6546170 b!6546166))

(assert (= (and start!641424 (is-Cons!65431 zl!343)) b!6546170))

(assert (= (and start!641424 (is-Cons!65429 s!2326)) b!6546171))

(declare-fun m!7328948 () Bool)

(assert (=> b!6546151 m!7328948))

(declare-fun m!7328950 () Bool)

(assert (=> b!6546151 m!7328950))

(declare-fun m!7328952 () Bool)

(assert (=> b!6546151 m!7328952))

(declare-fun m!7328954 () Bool)

(assert (=> b!6546151 m!7328954))

(declare-fun m!7328956 () Bool)

(assert (=> b!6546151 m!7328956))

(declare-fun m!7328958 () Bool)

(assert (=> b!6546151 m!7328958))

(declare-fun m!7328960 () Bool)

(assert (=> b!6546151 m!7328960))

(declare-fun m!7328962 () Bool)

(assert (=> b!6546151 m!7328962))

(declare-fun m!7328964 () Bool)

(assert (=> b!6546151 m!7328964))

(declare-fun m!7328966 () Bool)

(assert (=> b!6546182 m!7328966))

(declare-fun m!7328968 () Bool)

(assert (=> b!6546153 m!7328968))

(declare-fun m!7328970 () Bool)

(assert (=> b!6546175 m!7328970))

(declare-fun m!7328972 () Bool)

(assert (=> b!6546175 m!7328972))

(declare-fun m!7328974 () Bool)

(assert (=> b!6546175 m!7328974))

(declare-fun m!7328976 () Bool)

(assert (=> b!6546181 m!7328976))

(declare-fun m!7328978 () Bool)

(assert (=> b!6546167 m!7328978))

(declare-fun m!7328980 () Bool)

(assert (=> b!6546186 m!7328980))

(declare-fun m!7328982 () Bool)

(assert (=> b!6546149 m!7328982))

(declare-fun m!7328984 () Bool)

(assert (=> b!6546149 m!7328984))

(declare-fun m!7328986 () Bool)

(assert (=> b!6546149 m!7328986))

(declare-fun m!7328988 () Bool)

(assert (=> b!6546149 m!7328988))

(declare-fun m!7328990 () Bool)

(assert (=> b!6546149 m!7328990))

(declare-fun m!7328992 () Bool)

(assert (=> b!6546149 m!7328992))

(declare-fun m!7328994 () Bool)

(assert (=> b!6546149 m!7328994))

(declare-fun m!7328996 () Bool)

(assert (=> b!6546149 m!7328996))

(declare-fun m!7328998 () Bool)

(assert (=> b!6546149 m!7328998))

(declare-fun m!7329000 () Bool)

(assert (=> b!6546149 m!7329000))

(declare-fun m!7329002 () Bool)

(assert (=> b!6546149 m!7329002))

(declare-fun m!7329004 () Bool)

(assert (=> b!6546149 m!7329004))

(declare-fun m!7329006 () Bool)

(assert (=> b!6546149 m!7329006))

(declare-fun m!7329008 () Bool)

(assert (=> b!6546149 m!7329008))

(declare-fun m!7329010 () Bool)

(assert (=> b!6546149 m!7329010))

(assert (=> b!6546149 m!7328996))

(declare-fun m!7329012 () Bool)

(assert (=> b!6546149 m!7329012))

(assert (=> b!6546155 m!7328976))

(declare-fun m!7329014 () Bool)

(assert (=> b!6546152 m!7329014))

(declare-fun m!7329016 () Bool)

(assert (=> b!6546152 m!7329016))

(declare-fun m!7329018 () Bool)

(assert (=> b!6546152 m!7329018))

(declare-fun m!7329020 () Bool)

(assert (=> b!6546158 m!7329020))

(declare-fun m!7329022 () Bool)

(assert (=> b!6546158 m!7329022))

(declare-fun m!7329024 () Bool)

(assert (=> b!6546158 m!7329024))

(declare-fun m!7329026 () Bool)

(assert (=> b!6546150 m!7329026))

(declare-fun m!7329028 () Bool)

(assert (=> b!6546150 m!7329028))

(declare-fun m!7329030 () Bool)

(assert (=> b!6546189 m!7329030))

(declare-fun m!7329032 () Bool)

(assert (=> b!6546190 m!7329032))

(declare-fun m!7329034 () Bool)

(assert (=> b!6546172 m!7329034))

(declare-fun m!7329036 () Bool)

(assert (=> b!6546172 m!7329036))

(declare-fun m!7329038 () Bool)

(assert (=> b!6546172 m!7329038))

(declare-fun m!7329040 () Bool)

(assert (=> b!6546172 m!7329040))

(declare-fun m!7329042 () Bool)

(assert (=> b!6546172 m!7329042))

(declare-fun m!7329044 () Bool)

(assert (=> b!6546185 m!7329044))

(assert (=> b!6546179 m!7329016))

(declare-fun m!7329046 () Bool)

(assert (=> start!641424 m!7329046))

(declare-fun m!7329048 () Bool)

(assert (=> b!6546169 m!7329048))

(declare-fun m!7329050 () Bool)

(assert (=> b!6546169 m!7329050))

(declare-fun m!7329052 () Bool)

(assert (=> b!6546169 m!7329052))

(declare-fun m!7329054 () Bool)

(assert (=> b!6546169 m!7329054))

(declare-fun m!7329056 () Bool)

(assert (=> b!6546169 m!7329056))

(assert (=> b!6546191 m!7328982))

(assert (=> b!6546191 m!7328988))

(declare-fun m!7329058 () Bool)

(assert (=> b!6546191 m!7329058))

(assert (=> b!6546191 m!7328996))

(declare-fun m!7329060 () Bool)

(assert (=> b!6546191 m!7329060))

(declare-fun m!7329062 () Bool)

(assert (=> b!6546191 m!7329062))

(declare-fun m!7329064 () Bool)

(assert (=> b!6546157 m!7329064))

(declare-fun m!7329066 () Bool)

(assert (=> b!6546157 m!7329066))

(declare-fun m!7329068 () Bool)

(assert (=> b!6546157 m!7329068))

(declare-fun m!7329070 () Bool)

(assert (=> b!6546157 m!7329070))

(assert (=> b!6546157 m!7329070))

(declare-fun m!7329072 () Bool)

(assert (=> b!6546157 m!7329072))

(assert (=> b!6546157 m!7329066))

(declare-fun m!7329074 () Bool)

(assert (=> b!6546157 m!7329074))

(declare-fun m!7329076 () Bool)

(assert (=> b!6546192 m!7329076))

(declare-fun m!7329078 () Bool)

(assert (=> b!6546177 m!7329078))

(declare-fun m!7329080 () Bool)

(assert (=> b!6546162 m!7329080))

(declare-fun m!7329082 () Bool)

(assert (=> setNonEmpty!44667 m!7329082))

(declare-fun m!7329084 () Bool)

(assert (=> b!6546159 m!7329084))

(declare-fun m!7329086 () Bool)

(assert (=> b!6546176 m!7329086))

(declare-fun m!7329088 () Bool)

(assert (=> b!6546180 m!7329088))

(assert (=> b!6546180 m!7329088))

(declare-fun m!7329090 () Bool)

(assert (=> b!6546180 m!7329090))

(declare-fun m!7329092 () Bool)

(assert (=> b!6546170 m!7329092))

(declare-fun m!7329094 () Bool)

(assert (=> b!6546183 m!7329094))

(declare-fun m!7329096 () Bool)

(assert (=> b!6546183 m!7329096))

(declare-fun m!7329098 () Bool)

(assert (=> b!6546183 m!7329098))

(declare-fun m!7329100 () Bool)

(assert (=> b!6546183 m!7329100))

(declare-fun m!7329102 () Bool)

(assert (=> b!6546183 m!7329102))

(declare-fun m!7329104 () Bool)

(assert (=> b!6546183 m!7329104))

(declare-fun m!7329106 () Bool)

(assert (=> b!6546183 m!7329106))

(push 1)

(assert (not b!6546161))

(assert (not b!6546151))

(assert (not b!6546171))

(assert (not b!6546179))

(assert (not b!6546184))

(assert (not b!6546170))

(assert (not b!6546177))

(assert (not start!641424))

(assert (not b!6546189))

(assert (not b!6546169))

(assert (not b!6546152))

(assert (not b!6546155))

(assert (not b!6546176))

(assert (not b!6546164))

(assert (not b!6546150))

(assert (not setNonEmpty!44667))

(assert (not b!6546162))

(assert (not b!6546167))

(assert (not b!6546163))

(assert (not b!6546175))

(assert (not b!6546185))

(assert (not b!6546186))

(assert (not b!6546153))

(assert (not b!6546158))

(assert (not b!6546183))

(assert (not b!6546181))

(assert (not b!6546182))

(assert (not b!6546180))

(assert (not b!6546159))

(assert (not b!6546166))

(assert tp_is_empty!42089)

(assert (not b!6546190))

(assert (not b!6546157))

(assert (not b!6546172))

(assert (not b!6546191))

(assert (not b!6546192))

(assert (not b!6546149))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2054901 () Bool)

(declare-fun c!1202247 () Bool)

(declare-fun isEmpty!37655 (List!65553) Bool)

(assert (=> d!2054901 (= c!1202247 (isEmpty!37655 (_1!36700 lt!2400613)))))

(declare-fun e!3963677 () Bool)

(assert (=> d!2054901 (= (matchZipper!2430 lt!2400572 (_1!36700 lt!2400613)) e!3963677)))

(declare-fun b!6546361 () Bool)

(declare-fun nullableZipper!2163 ((Set Context!11604)) Bool)

(assert (=> b!6546361 (= e!3963677 (nullableZipper!2163 lt!2400572))))

(declare-fun b!6546362 () Bool)

(declare-fun head!13287 (List!65553) C!33106)

(declare-fun tail!12372 (List!65553) List!65553)

(assert (=> b!6546362 (= e!3963677 (matchZipper!2430 (derivationStepZipper!2384 lt!2400572 (head!13287 (_1!36700 lt!2400613))) (tail!12372 (_1!36700 lt!2400613))))))

(assert (= (and d!2054901 c!1202247) b!6546361))

(assert (= (and d!2054901 (not c!1202247)) b!6546362))

(declare-fun m!7329268 () Bool)

(assert (=> d!2054901 m!7329268))

(declare-fun m!7329270 () Bool)

(assert (=> b!6546361 m!7329270))

(declare-fun m!7329272 () Bool)

(assert (=> b!6546362 m!7329272))

(assert (=> b!6546362 m!7329272))

(declare-fun m!7329274 () Bool)

(assert (=> b!6546362 m!7329274))

(declare-fun m!7329276 () Bool)

(assert (=> b!6546362 m!7329276))

(assert (=> b!6546362 m!7329274))

(assert (=> b!6546362 m!7329276))

(declare-fun m!7329278 () Bool)

(assert (=> b!6546362 m!7329278))

(assert (=> b!6546162 d!2054901))

(declare-fun d!2054903 () Bool)

(declare-fun nullableFct!2337 (Regex!16418) Bool)

(assert (=> d!2054903 (= (nullable!6411 (h!71878 (exprs!6302 (h!71879 zl!343)))) (nullableFct!2337 (h!71878 (exprs!6302 (h!71879 zl!343)))))))

(declare-fun bs!1671626 () Bool)

(assert (= bs!1671626 d!2054903))

(declare-fun m!7329280 () Bool)

(assert (=> bs!1671626 m!7329280))

(assert (=> b!6546183 d!2054903))

(declare-fun d!2054905 () Bool)

(declare-fun choose!48637 ((Set Context!11604) Int) (Set Context!11604))

(assert (=> d!2054905 (= (flatMap!1923 z!1189 lambda!363382) (choose!48637 z!1189 lambda!363382))))

(declare-fun bs!1671627 () Bool)

(assert (= bs!1671627 d!2054905))

(declare-fun m!7329282 () Bool)

(assert (=> bs!1671627 m!7329282))

(assert (=> b!6546183 d!2054905))

(declare-fun d!2054907 () Bool)

(declare-fun c!1202261 () Bool)

(assert (=> d!2054907 (= c!1202261 (and (is-ElementMatch!16418 (h!71878 (exprs!6302 (h!71879 zl!343)))) (= (c!1202229 (h!71878 (exprs!6302 (h!71879 zl!343)))) (h!71877 s!2326))))))

(declare-fun e!3963691 () (Set Context!11604))

(assert (=> d!2054907 (= (derivationStepZipperDown!1666 (h!71878 (exprs!6302 (h!71879 zl!343))) lt!2400587 (h!71877 s!2326)) e!3963691)))

(declare-fun b!6546385 () Bool)

(declare-fun e!3963695 () (Set Context!11604))

(declare-fun call!569369 () (Set Context!11604))

(assert (=> b!6546385 (= e!3963695 call!569369)))

(declare-fun bm!569363 () Bool)

(declare-fun call!569373 () (Set Context!11604))

(declare-fun call!569371 () (Set Context!11604))

(assert (=> bm!569363 (= call!569373 call!569371)))

(declare-fun b!6546386 () Bool)

(declare-fun e!3963694 () (Set Context!11604))

(assert (=> b!6546386 (= e!3963691 e!3963694)))

(declare-fun c!1202258 () Bool)

(assert (=> b!6546386 (= c!1202258 (is-Union!16418 (h!71878 (exprs!6302 (h!71879 zl!343)))))))

(declare-fun call!569368 () (Set Context!11604))

(declare-fun bm!569364 () Bool)

(declare-fun call!569370 () List!65554)

(assert (=> bm!569364 (= call!569368 (derivationStepZipperDown!1666 (ite c!1202258 (regTwo!33349 (h!71878 (exprs!6302 (h!71879 zl!343)))) (regOne!33348 (h!71878 (exprs!6302 (h!71879 zl!343))))) (ite c!1202258 lt!2400587 (Context!11605 call!569370)) (h!71877 s!2326)))))

(declare-fun b!6546387 () Bool)

(declare-fun e!3963690 () (Set Context!11604))

(assert (=> b!6546387 (= e!3963690 (as set.empty (Set Context!11604)))))

(declare-fun b!6546388 () Bool)

(declare-fun e!3963693 () (Set Context!11604))

(assert (=> b!6546388 (= e!3963693 e!3963695)))

(declare-fun c!1202262 () Bool)

(assert (=> b!6546388 (= c!1202262 (is-Concat!25263 (h!71878 (exprs!6302 (h!71879 zl!343)))))))

(declare-fun b!6546389 () Bool)

(assert (=> b!6546389 (= e!3963694 (set.union call!569371 call!569368))))

(declare-fun b!6546390 () Bool)

(declare-fun e!3963692 () Bool)

(assert (=> b!6546390 (= e!3963692 (nullable!6411 (regOne!33348 (h!71878 (exprs!6302 (h!71879 zl!343))))))))

(declare-fun bm!569365 () Bool)

(assert (=> bm!569365 (= call!569369 call!569373)))

(declare-fun b!6546391 () Bool)

(assert (=> b!6546391 (= e!3963693 (set.union call!569368 call!569373))))

(declare-fun c!1202260 () Bool)

(declare-fun bm!569366 () Bool)

(declare-fun call!569372 () List!65554)

(assert (=> bm!569366 (= call!569371 (derivationStepZipperDown!1666 (ite c!1202258 (regOne!33349 (h!71878 (exprs!6302 (h!71879 zl!343)))) (ite c!1202260 (regTwo!33348 (h!71878 (exprs!6302 (h!71879 zl!343)))) (ite c!1202262 (regOne!33348 (h!71878 (exprs!6302 (h!71879 zl!343)))) (reg!16747 (h!71878 (exprs!6302 (h!71879 zl!343))))))) (ite (or c!1202258 c!1202260) lt!2400587 (Context!11605 call!569372)) (h!71877 s!2326)))))

(declare-fun b!6546392 () Bool)

(assert (=> b!6546392 (= e!3963691 (set.insert lt!2400587 (as set.empty (Set Context!11604))))))

(declare-fun b!6546393 () Bool)

(assert (=> b!6546393 (= c!1202260 e!3963692)))

(declare-fun res!2685506 () Bool)

(assert (=> b!6546393 (=> (not res!2685506) (not e!3963692))))

(assert (=> b!6546393 (= res!2685506 (is-Concat!25263 (h!71878 (exprs!6302 (h!71879 zl!343)))))))

(assert (=> b!6546393 (= e!3963694 e!3963693)))

(declare-fun bm!569367 () Bool)

(declare-fun $colon$colon!2259 (List!65554 Regex!16418) List!65554)

(assert (=> bm!569367 (= call!569370 ($colon$colon!2259 (exprs!6302 lt!2400587) (ite (or c!1202260 c!1202262) (regTwo!33348 (h!71878 (exprs!6302 (h!71879 zl!343)))) (h!71878 (exprs!6302 (h!71879 zl!343))))))))

(declare-fun b!6546394 () Bool)

(declare-fun c!1202259 () Bool)

(assert (=> b!6546394 (= c!1202259 (is-Star!16418 (h!71878 (exprs!6302 (h!71879 zl!343)))))))

(assert (=> b!6546394 (= e!3963695 e!3963690)))

(declare-fun b!6546395 () Bool)

(assert (=> b!6546395 (= e!3963690 call!569369)))

(declare-fun bm!569368 () Bool)

(assert (=> bm!569368 (= call!569372 call!569370)))

(assert (= (and d!2054907 c!1202261) b!6546392))

(assert (= (and d!2054907 (not c!1202261)) b!6546386))

(assert (= (and b!6546386 c!1202258) b!6546389))

(assert (= (and b!6546386 (not c!1202258)) b!6546393))

(assert (= (and b!6546393 res!2685506) b!6546390))

(assert (= (and b!6546393 c!1202260) b!6546391))

(assert (= (and b!6546393 (not c!1202260)) b!6546388))

(assert (= (and b!6546388 c!1202262) b!6546385))

(assert (= (and b!6546388 (not c!1202262)) b!6546394))

(assert (= (and b!6546394 c!1202259) b!6546395))

(assert (= (and b!6546394 (not c!1202259)) b!6546387))

(assert (= (or b!6546385 b!6546395) bm!569368))

(assert (= (or b!6546385 b!6546395) bm!569365))

(assert (= (or b!6546391 bm!569368) bm!569367))

(assert (= (or b!6546391 bm!569365) bm!569363))

(assert (= (or b!6546389 b!6546391) bm!569364))

(assert (= (or b!6546389 bm!569363) bm!569366))

(declare-fun m!7329284 () Bool)

(assert (=> b!6546392 m!7329284))

(declare-fun m!7329286 () Bool)

(assert (=> bm!569364 m!7329286))

(declare-fun m!7329288 () Bool)

(assert (=> bm!569366 m!7329288))

(declare-fun m!7329290 () Bool)

(assert (=> bm!569367 m!7329290))

(declare-fun m!7329292 () Bool)

(assert (=> b!6546390 m!7329292))

(assert (=> b!6546183 d!2054907))

(declare-fun b!6546406 () Bool)

(declare-fun e!3963704 () (Set Context!11604))

(declare-fun call!569376 () (Set Context!11604))

(assert (=> b!6546406 (= e!3963704 call!569376)))

(declare-fun d!2054909 () Bool)

(declare-fun c!1202267 () Bool)

(declare-fun e!3963702 () Bool)

(assert (=> d!2054909 (= c!1202267 e!3963702)))

(declare-fun res!2685509 () Bool)

(assert (=> d!2054909 (=> (not res!2685509) (not e!3963702))))

(assert (=> d!2054909 (= res!2685509 (is-Cons!65430 (exprs!6302 (h!71879 zl!343))))))

(declare-fun e!3963703 () (Set Context!11604))

(assert (=> d!2054909 (= (derivationStepZipperUp!1592 (h!71879 zl!343) (h!71877 s!2326)) e!3963703)))

(declare-fun b!6546407 () Bool)

(assert (=> b!6546407 (= e!3963704 (as set.empty (Set Context!11604)))))

(declare-fun bm!569371 () Bool)

(assert (=> bm!569371 (= call!569376 (derivationStepZipperDown!1666 (h!71878 (exprs!6302 (h!71879 zl!343))) (Context!11605 (t!379196 (exprs!6302 (h!71879 zl!343)))) (h!71877 s!2326)))))

(declare-fun b!6546408 () Bool)

(assert (=> b!6546408 (= e!3963703 e!3963704)))

(declare-fun c!1202268 () Bool)

(assert (=> b!6546408 (= c!1202268 (is-Cons!65430 (exprs!6302 (h!71879 zl!343))))))

(declare-fun b!6546409 () Bool)

(assert (=> b!6546409 (= e!3963703 (set.union call!569376 (derivationStepZipperUp!1592 (Context!11605 (t!379196 (exprs!6302 (h!71879 zl!343)))) (h!71877 s!2326))))))

(declare-fun b!6546410 () Bool)

(assert (=> b!6546410 (= e!3963702 (nullable!6411 (h!71878 (exprs!6302 (h!71879 zl!343)))))))

(assert (= (and d!2054909 res!2685509) b!6546410))

(assert (= (and d!2054909 c!1202267) b!6546409))

(assert (= (and d!2054909 (not c!1202267)) b!6546408))

(assert (= (and b!6546408 c!1202268) b!6546406))

(assert (= (and b!6546408 (not c!1202268)) b!6546407))

(assert (= (or b!6546409 b!6546406) bm!569371))

(declare-fun m!7329294 () Bool)

(assert (=> bm!569371 m!7329294))

(declare-fun m!7329296 () Bool)

(assert (=> b!6546409 m!7329296))

(assert (=> b!6546410 m!7329102))

(assert (=> b!6546183 d!2054909))

(declare-fun b!6546411 () Bool)

(declare-fun e!3963707 () (Set Context!11604))

(declare-fun call!569377 () (Set Context!11604))

(assert (=> b!6546411 (= e!3963707 call!569377)))

(declare-fun d!2054911 () Bool)

(declare-fun c!1202269 () Bool)

(declare-fun e!3963705 () Bool)

(assert (=> d!2054911 (= c!1202269 e!3963705)))

(declare-fun res!2685510 () Bool)

(assert (=> d!2054911 (=> (not res!2685510) (not e!3963705))))

(assert (=> d!2054911 (= res!2685510 (is-Cons!65430 (exprs!6302 lt!2400587)))))

(declare-fun e!3963706 () (Set Context!11604))

(assert (=> d!2054911 (= (derivationStepZipperUp!1592 lt!2400587 (h!71877 s!2326)) e!3963706)))

(declare-fun b!6546412 () Bool)

(assert (=> b!6546412 (= e!3963707 (as set.empty (Set Context!11604)))))

(declare-fun bm!569372 () Bool)

(assert (=> bm!569372 (= call!569377 (derivationStepZipperDown!1666 (h!71878 (exprs!6302 lt!2400587)) (Context!11605 (t!379196 (exprs!6302 lt!2400587))) (h!71877 s!2326)))))

(declare-fun b!6546413 () Bool)

(assert (=> b!6546413 (= e!3963706 e!3963707)))

(declare-fun c!1202270 () Bool)

(assert (=> b!6546413 (= c!1202270 (is-Cons!65430 (exprs!6302 lt!2400587)))))

(declare-fun b!6546414 () Bool)

(assert (=> b!6546414 (= e!3963706 (set.union call!569377 (derivationStepZipperUp!1592 (Context!11605 (t!379196 (exprs!6302 lt!2400587))) (h!71877 s!2326))))))

(declare-fun b!6546415 () Bool)

(assert (=> b!6546415 (= e!3963705 (nullable!6411 (h!71878 (exprs!6302 lt!2400587))))))

(assert (= (and d!2054911 res!2685510) b!6546415))

(assert (= (and d!2054911 c!1202269) b!6546414))

(assert (= (and d!2054911 (not c!1202269)) b!6546413))

(assert (= (and b!6546413 c!1202270) b!6546411))

(assert (= (and b!6546413 (not c!1202270)) b!6546412))

(assert (= (or b!6546414 b!6546411) bm!569372))

(declare-fun m!7329298 () Bool)

(assert (=> bm!569372 m!7329298))

(declare-fun m!7329300 () Bool)

(assert (=> b!6546414 m!7329300))

(declare-fun m!7329302 () Bool)

(assert (=> b!6546415 m!7329302))

(assert (=> b!6546183 d!2054911))

(declare-fun d!2054913 () Bool)

(declare-fun dynLambda!26008 (Int Context!11604) (Set Context!11604))

(assert (=> d!2054913 (= (flatMap!1923 z!1189 lambda!363382) (dynLambda!26008 lambda!363382 (h!71879 zl!343)))))

(declare-fun lt!2400791 () Unit!159007)

(declare-fun choose!48638 ((Set Context!11604) Context!11604 Int) Unit!159007)

(assert (=> d!2054913 (= lt!2400791 (choose!48638 z!1189 (h!71879 zl!343) lambda!363382))))

(assert (=> d!2054913 (= z!1189 (set.insert (h!71879 zl!343) (as set.empty (Set Context!11604))))))

(assert (=> d!2054913 (= (lemmaFlatMapOnSingletonSet!1449 z!1189 (h!71879 zl!343) lambda!363382) lt!2400791)))

(declare-fun b_lambda!247801 () Bool)

(assert (=> (not b_lambda!247801) (not d!2054913)))

(declare-fun bs!1671628 () Bool)

(assert (= bs!1671628 d!2054913))

(assert (=> bs!1671628 m!7329094))

(declare-fun m!7329304 () Bool)

(assert (=> bs!1671628 m!7329304))

(declare-fun m!7329306 () Bool)

(assert (=> bs!1671628 m!7329306))

(declare-fun m!7329308 () Bool)

(assert (=> bs!1671628 m!7329308))

(assert (=> b!6546183 d!2054913))

(declare-fun b!6546416 () Bool)

(declare-fun e!3963710 () (Set Context!11604))

(declare-fun call!569378 () (Set Context!11604))

(assert (=> b!6546416 (= e!3963710 call!569378)))

(declare-fun d!2054915 () Bool)

(declare-fun c!1202271 () Bool)

(declare-fun e!3963708 () Bool)

(assert (=> d!2054915 (= c!1202271 e!3963708)))

(declare-fun res!2685511 () Bool)

(assert (=> d!2054915 (=> (not res!2685511) (not e!3963708))))

(assert (=> d!2054915 (= res!2685511 (is-Cons!65430 (exprs!6302 (Context!11605 (Cons!65430 (h!71878 (exprs!6302 (h!71879 zl!343))) (t!379196 (exprs!6302 (h!71879 zl!343))))))))))

(declare-fun e!3963709 () (Set Context!11604))

(assert (=> d!2054915 (= (derivationStepZipperUp!1592 (Context!11605 (Cons!65430 (h!71878 (exprs!6302 (h!71879 zl!343))) (t!379196 (exprs!6302 (h!71879 zl!343))))) (h!71877 s!2326)) e!3963709)))

(declare-fun b!6546417 () Bool)

(assert (=> b!6546417 (= e!3963710 (as set.empty (Set Context!11604)))))

(declare-fun bm!569373 () Bool)

(assert (=> bm!569373 (= call!569378 (derivationStepZipperDown!1666 (h!71878 (exprs!6302 (Context!11605 (Cons!65430 (h!71878 (exprs!6302 (h!71879 zl!343))) (t!379196 (exprs!6302 (h!71879 zl!343))))))) (Context!11605 (t!379196 (exprs!6302 (Context!11605 (Cons!65430 (h!71878 (exprs!6302 (h!71879 zl!343))) (t!379196 (exprs!6302 (h!71879 zl!343)))))))) (h!71877 s!2326)))))

(declare-fun b!6546418 () Bool)

(assert (=> b!6546418 (= e!3963709 e!3963710)))

(declare-fun c!1202272 () Bool)

(assert (=> b!6546418 (= c!1202272 (is-Cons!65430 (exprs!6302 (Context!11605 (Cons!65430 (h!71878 (exprs!6302 (h!71879 zl!343))) (t!379196 (exprs!6302 (h!71879 zl!343))))))))))

(declare-fun b!6546419 () Bool)

(assert (=> b!6546419 (= e!3963709 (set.union call!569378 (derivationStepZipperUp!1592 (Context!11605 (t!379196 (exprs!6302 (Context!11605 (Cons!65430 (h!71878 (exprs!6302 (h!71879 zl!343))) (t!379196 (exprs!6302 (h!71879 zl!343)))))))) (h!71877 s!2326))))))

(declare-fun b!6546420 () Bool)

(assert (=> b!6546420 (= e!3963708 (nullable!6411 (h!71878 (exprs!6302 (Context!11605 (Cons!65430 (h!71878 (exprs!6302 (h!71879 zl!343))) (t!379196 (exprs!6302 (h!71879 zl!343)))))))))))

(assert (= (and d!2054915 res!2685511) b!6546420))

(assert (= (and d!2054915 c!1202271) b!6546419))

(assert (= (and d!2054915 (not c!1202271)) b!6546418))

(assert (= (and b!6546418 c!1202272) b!6546416))

(assert (= (and b!6546418 (not c!1202272)) b!6546417))

(assert (= (or b!6546419 b!6546416) bm!569373))

(declare-fun m!7329310 () Bool)

(assert (=> bm!569373 m!7329310))

(declare-fun m!7329312 () Bool)

(assert (=> b!6546419 m!7329312))

(declare-fun m!7329314 () Bool)

(assert (=> b!6546420 m!7329314))

(assert (=> b!6546183 d!2054915))

(declare-fun d!2054917 () Bool)

(declare-fun c!1202273 () Bool)

(assert (=> d!2054917 (= c!1202273 (isEmpty!37655 s!2326))))

(declare-fun e!3963711 () Bool)

(assert (=> d!2054917 (= (matchZipper!2430 z!1189 s!2326) e!3963711)))

(declare-fun b!6546421 () Bool)

(assert (=> b!6546421 (= e!3963711 (nullableZipper!2163 z!1189))))

(declare-fun b!6546422 () Bool)

(assert (=> b!6546422 (= e!3963711 (matchZipper!2430 (derivationStepZipper!2384 z!1189 (head!13287 s!2326)) (tail!12372 s!2326)))))

(assert (= (and d!2054917 c!1202273) b!6546421))

(assert (= (and d!2054917 (not c!1202273)) b!6546422))

(declare-fun m!7329316 () Bool)

(assert (=> d!2054917 m!7329316))

(declare-fun m!7329318 () Bool)

(assert (=> b!6546421 m!7329318))

(declare-fun m!7329320 () Bool)

(assert (=> b!6546422 m!7329320))

(assert (=> b!6546422 m!7329320))

(declare-fun m!7329322 () Bool)

(assert (=> b!6546422 m!7329322))

(declare-fun m!7329324 () Bool)

(assert (=> b!6546422 m!7329324))

(assert (=> b!6546422 m!7329322))

(assert (=> b!6546422 m!7329324))

(declare-fun m!7329326 () Bool)

(assert (=> b!6546422 m!7329326))

(assert (=> b!6546182 d!2054917))

(declare-fun d!2054919 () Bool)

(declare-fun c!1202274 () Bool)

(assert (=> d!2054919 (= c!1202274 (isEmpty!37655 (t!379195 s!2326)))))

(declare-fun e!3963712 () Bool)

(assert (=> d!2054919 (= (matchZipper!2430 lt!2400591 (t!379195 s!2326)) e!3963712)))

(declare-fun b!6546423 () Bool)

(assert (=> b!6546423 (= e!3963712 (nullableZipper!2163 lt!2400591))))

(declare-fun b!6546424 () Bool)

(assert (=> b!6546424 (= e!3963712 (matchZipper!2430 (derivationStepZipper!2384 lt!2400591 (head!13287 (t!379195 s!2326))) (tail!12372 (t!379195 s!2326))))))

(assert (= (and d!2054919 c!1202274) b!6546423))

(assert (= (and d!2054919 (not c!1202274)) b!6546424))

(declare-fun m!7329328 () Bool)

(assert (=> d!2054919 m!7329328))

(declare-fun m!7329330 () Bool)

(assert (=> b!6546423 m!7329330))

(declare-fun m!7329332 () Bool)

(assert (=> b!6546424 m!7329332))

(assert (=> b!6546424 m!7329332))

(declare-fun m!7329334 () Bool)

(assert (=> b!6546424 m!7329334))

(declare-fun m!7329336 () Bool)

(assert (=> b!6546424 m!7329336))

(assert (=> b!6546424 m!7329334))

(assert (=> b!6546424 m!7329336))

(declare-fun m!7329338 () Bool)

(assert (=> b!6546424 m!7329338))

(assert (=> b!6546181 d!2054919))

(declare-fun d!2054921 () Bool)

(declare-fun lt!2400794 () Regex!16418)

(assert (=> d!2054921 (validRegex!8154 lt!2400794)))

(assert (=> d!2054921 (= lt!2400794 (generalisedUnion!2262 (unfocusZipperList!1839 lt!2400576)))))

(assert (=> d!2054921 (= (unfocusZipper!2160 lt!2400576) lt!2400794)))

(declare-fun bs!1671629 () Bool)

(assert (= bs!1671629 d!2054921))

(declare-fun m!7329340 () Bool)

(assert (=> bs!1671629 m!7329340))

(declare-fun m!7329342 () Bool)

(assert (=> bs!1671629 m!7329342))

(assert (=> bs!1671629 m!7329342))

(declare-fun m!7329344 () Bool)

(assert (=> bs!1671629 m!7329344))

(assert (=> b!6546159 d!2054921))

(declare-fun bs!1671630 () Bool)

(declare-fun d!2054923 () Bool)

(assert (= bs!1671630 (and d!2054923 b!6546191)))

(declare-fun lambda!363414 () Int)

(assert (=> bs!1671630 (= lambda!363414 lambda!363384)))

(declare-fun b!6546445 () Bool)

(declare-fun e!3963727 () Regex!16418)

(assert (=> b!6546445 (= e!3963727 (Union!16418 (h!71878 (unfocusZipperList!1839 zl!343)) (generalisedUnion!2262 (t!379196 (unfocusZipperList!1839 zl!343)))))))

(declare-fun b!6546446 () Bool)

(declare-fun e!3963726 () Bool)

(declare-fun lt!2400797 () Regex!16418)

(declare-fun isEmptyLang!1805 (Regex!16418) Bool)

(assert (=> b!6546446 (= e!3963726 (isEmptyLang!1805 lt!2400797))))

(declare-fun b!6546447 () Bool)

(declare-fun e!3963728 () Bool)

(assert (=> b!6546447 (= e!3963728 (isEmpty!37652 (t!379196 (unfocusZipperList!1839 zl!343))))))

(declare-fun e!3963725 () Bool)

(assert (=> d!2054923 e!3963725))

(declare-fun res!2685516 () Bool)

(assert (=> d!2054923 (=> (not res!2685516) (not e!3963725))))

(assert (=> d!2054923 (= res!2685516 (validRegex!8154 lt!2400797))))

(declare-fun e!3963730 () Regex!16418)

(assert (=> d!2054923 (= lt!2400797 e!3963730)))

(declare-fun c!1202286 () Bool)

(assert (=> d!2054923 (= c!1202286 e!3963728)))

(declare-fun res!2685517 () Bool)

(assert (=> d!2054923 (=> (not res!2685517) (not e!3963728))))

(assert (=> d!2054923 (= res!2685517 (is-Cons!65430 (unfocusZipperList!1839 zl!343)))))

(declare-fun forall!15590 (List!65554 Int) Bool)

(assert (=> d!2054923 (forall!15590 (unfocusZipperList!1839 zl!343) lambda!363414)))

(assert (=> d!2054923 (= (generalisedUnion!2262 (unfocusZipperList!1839 zl!343)) lt!2400797)))

(declare-fun b!6546448 () Bool)

(assert (=> b!6546448 (= e!3963727 EmptyLang!16418)))

(declare-fun b!6546449 () Bool)

(declare-fun e!3963729 () Bool)

(assert (=> b!6546449 (= e!3963726 e!3963729)))

(declare-fun c!1202283 () Bool)

(declare-fun tail!12373 (List!65554) List!65554)

(assert (=> b!6546449 (= c!1202283 (isEmpty!37652 (tail!12373 (unfocusZipperList!1839 zl!343))))))

(declare-fun b!6546450 () Bool)

(assert (=> b!6546450 (= e!3963725 e!3963726)))

(declare-fun c!1202285 () Bool)

(assert (=> b!6546450 (= c!1202285 (isEmpty!37652 (unfocusZipperList!1839 zl!343)))))

(declare-fun b!6546451 () Bool)

(assert (=> b!6546451 (= e!3963730 e!3963727)))

(declare-fun c!1202284 () Bool)

(assert (=> b!6546451 (= c!1202284 (is-Cons!65430 (unfocusZipperList!1839 zl!343)))))

(declare-fun b!6546452 () Bool)

(declare-fun head!13288 (List!65554) Regex!16418)

(assert (=> b!6546452 (= e!3963729 (= lt!2400797 (head!13288 (unfocusZipperList!1839 zl!343))))))

(declare-fun b!6546453 () Bool)

(declare-fun isUnion!1235 (Regex!16418) Bool)

(assert (=> b!6546453 (= e!3963729 (isUnion!1235 lt!2400797))))

(declare-fun b!6546454 () Bool)

(assert (=> b!6546454 (= e!3963730 (h!71878 (unfocusZipperList!1839 zl!343)))))

(assert (= (and d!2054923 res!2685517) b!6546447))

(assert (= (and d!2054923 c!1202286) b!6546454))

(assert (= (and d!2054923 (not c!1202286)) b!6546451))

(assert (= (and b!6546451 c!1202284) b!6546445))

(assert (= (and b!6546451 (not c!1202284)) b!6546448))

(assert (= (and d!2054923 res!2685516) b!6546450))

(assert (= (and b!6546450 c!1202285) b!6546446))

(assert (= (and b!6546450 (not c!1202285)) b!6546449))

(assert (= (and b!6546449 c!1202283) b!6546452))

(assert (= (and b!6546449 (not c!1202283)) b!6546453))

(declare-fun m!7329346 () Bool)

(assert (=> b!6546445 m!7329346))

(declare-fun m!7329348 () Bool)

(assert (=> b!6546447 m!7329348))

(declare-fun m!7329350 () Bool)

(assert (=> d!2054923 m!7329350))

(assert (=> d!2054923 m!7329088))

(declare-fun m!7329352 () Bool)

(assert (=> d!2054923 m!7329352))

(assert (=> b!6546449 m!7329088))

(declare-fun m!7329354 () Bool)

(assert (=> b!6546449 m!7329354))

(assert (=> b!6546449 m!7329354))

(declare-fun m!7329356 () Bool)

(assert (=> b!6546449 m!7329356))

(declare-fun m!7329358 () Bool)

(assert (=> b!6546446 m!7329358))

(declare-fun m!7329360 () Bool)

(assert (=> b!6546453 m!7329360))

(assert (=> b!6546452 m!7329088))

(declare-fun m!7329362 () Bool)

(assert (=> b!6546452 m!7329362))

(assert (=> b!6546450 m!7329088))

(declare-fun m!7329364 () Bool)

(assert (=> b!6546450 m!7329364))

(assert (=> b!6546180 d!2054923))

(declare-fun bs!1671631 () Bool)

(declare-fun d!2054925 () Bool)

(assert (= bs!1671631 (and d!2054925 b!6546191)))

(declare-fun lambda!363417 () Int)

(assert (=> bs!1671631 (= lambda!363417 lambda!363384)))

(declare-fun bs!1671632 () Bool)

(assert (= bs!1671632 (and d!2054925 d!2054923)))

(assert (=> bs!1671632 (= lambda!363417 lambda!363414)))

(declare-fun lt!2400800 () List!65554)

(assert (=> d!2054925 (forall!15590 lt!2400800 lambda!363417)))

(declare-fun e!3963733 () List!65554)

(assert (=> d!2054925 (= lt!2400800 e!3963733)))

(declare-fun c!1202289 () Bool)

(assert (=> d!2054925 (= c!1202289 (is-Cons!65431 zl!343))))

(assert (=> d!2054925 (= (unfocusZipperList!1839 zl!343) lt!2400800)))

(declare-fun b!6546459 () Bool)

(assert (=> b!6546459 (= e!3963733 (Cons!65430 (generalisedConcat!2015 (exprs!6302 (h!71879 zl!343))) (unfocusZipperList!1839 (t!379197 zl!343))))))

(declare-fun b!6546460 () Bool)

(assert (=> b!6546460 (= e!3963733 Nil!65430)))

(assert (= (and d!2054925 c!1202289) b!6546459))

(assert (= (and d!2054925 (not c!1202289)) b!6546460))

(declare-fun m!7329366 () Bool)

(assert (=> d!2054925 m!7329366))

(assert (=> b!6546459 m!7329030))

(declare-fun m!7329368 () Bool)

(assert (=> b!6546459 m!7329368))

(assert (=> b!6546180 d!2054925))

(declare-fun bs!1671633 () Bool)

(declare-fun b!6546501 () Bool)

(assert (= bs!1671633 (and b!6546501 b!6546157)))

(declare-fun lambda!363422 () Int)

(assert (=> bs!1671633 (not (= lambda!363422 lambda!363380))))

(assert (=> bs!1671633 (not (= lambda!363422 lambda!363381))))

(assert (=> b!6546501 true))

(assert (=> b!6546501 true))

(declare-fun bs!1671634 () Bool)

(declare-fun b!6546493 () Bool)

(assert (= bs!1671634 (and b!6546493 b!6546157)))

(declare-fun lambda!363423 () Int)

(assert (=> bs!1671634 (not (= lambda!363423 lambda!363380))))

(assert (=> bs!1671634 (= lambda!363423 lambda!363381)))

(declare-fun bs!1671635 () Bool)

(assert (= bs!1671635 (and b!6546493 b!6546501)))

(assert (=> bs!1671635 (not (= lambda!363423 lambda!363422))))

(assert (=> b!6546493 true))

(assert (=> b!6546493 true))

(declare-fun call!569383 () Bool)

(declare-fun bm!569378 () Bool)

(declare-fun c!1202300 () Bool)

(assert (=> bm!569378 (= call!569383 (Exists!3488 (ite c!1202300 lambda!363422 lambda!363423)))))

(declare-fun e!3963753 () Bool)

(assert (=> b!6546493 (= e!3963753 call!569383)))

(declare-fun b!6546494 () Bool)

(declare-fun c!1202298 () Bool)

(assert (=> b!6546494 (= c!1202298 (is-Union!16418 r!7292))))

(declare-fun e!3963754 () Bool)

(declare-fun e!3963758 () Bool)

(assert (=> b!6546494 (= e!3963754 e!3963758)))

(declare-fun b!6546495 () Bool)

(declare-fun res!2685534 () Bool)

(declare-fun e!3963757 () Bool)

(assert (=> b!6546495 (=> res!2685534 e!3963757)))

(declare-fun call!569384 () Bool)

(assert (=> b!6546495 (= res!2685534 call!569384)))

(assert (=> b!6546495 (= e!3963753 e!3963757)))

(declare-fun b!6546496 () Bool)

(declare-fun e!3963752 () Bool)

(assert (=> b!6546496 (= e!3963758 e!3963752)))

(declare-fun res!2685535 () Bool)

(assert (=> b!6546496 (= res!2685535 (matchRSpec!3519 (regOne!33349 r!7292) s!2326))))

(assert (=> b!6546496 (=> res!2685535 e!3963752)))

(declare-fun bm!569379 () Bool)

(assert (=> bm!569379 (= call!569384 (isEmpty!37655 s!2326))))

(declare-fun b!6546497 () Bool)

(assert (=> b!6546497 (= e!3963758 e!3963753)))

(assert (=> b!6546497 (= c!1202300 (is-Star!16418 r!7292))))

(declare-fun b!6546498 () Bool)

(assert (=> b!6546498 (= e!3963754 (= s!2326 (Cons!65429 (c!1202229 r!7292) Nil!65429)))))

(declare-fun b!6546499 () Bool)

(assert (=> b!6546499 (= e!3963752 (matchRSpec!3519 (regTwo!33349 r!7292) s!2326))))

(declare-fun b!6546500 () Bool)

(declare-fun e!3963755 () Bool)

(assert (=> b!6546500 (= e!3963755 call!569384)))

(declare-fun d!2054927 () Bool)

(declare-fun c!1202299 () Bool)

(assert (=> d!2054927 (= c!1202299 (is-EmptyExpr!16418 r!7292))))

(assert (=> d!2054927 (= (matchRSpec!3519 r!7292 s!2326) e!3963755)))

(assert (=> b!6546501 (= e!3963757 call!569383)))

(declare-fun b!6546502 () Bool)

(declare-fun c!1202301 () Bool)

(assert (=> b!6546502 (= c!1202301 (is-ElementMatch!16418 r!7292))))

(declare-fun e!3963756 () Bool)

(assert (=> b!6546502 (= e!3963756 e!3963754)))

(declare-fun b!6546503 () Bool)

(assert (=> b!6546503 (= e!3963755 e!3963756)))

(declare-fun res!2685536 () Bool)

(assert (=> b!6546503 (= res!2685536 (not (is-EmptyLang!16418 r!7292)))))

(assert (=> b!6546503 (=> (not res!2685536) (not e!3963756))))

(assert (= (and d!2054927 c!1202299) b!6546500))

(assert (= (and d!2054927 (not c!1202299)) b!6546503))

(assert (= (and b!6546503 res!2685536) b!6546502))

(assert (= (and b!6546502 c!1202301) b!6546498))

(assert (= (and b!6546502 (not c!1202301)) b!6546494))

(assert (= (and b!6546494 c!1202298) b!6546496))

(assert (= (and b!6546494 (not c!1202298)) b!6546497))

(assert (= (and b!6546496 (not res!2685535)) b!6546499))

(assert (= (and b!6546497 c!1202300) b!6546495))

(assert (= (and b!6546497 (not c!1202300)) b!6546493))

(assert (= (and b!6546495 (not res!2685534)) b!6546501))

(assert (= (or b!6546501 b!6546493) bm!569378))

(assert (= (or b!6546500 b!6546495) bm!569379))

(declare-fun m!7329370 () Bool)

(assert (=> bm!569378 m!7329370))

(declare-fun m!7329372 () Bool)

(assert (=> b!6546496 m!7329372))

(assert (=> bm!569379 m!7329316))

(declare-fun m!7329374 () Bool)

(assert (=> b!6546499 m!7329374))

(assert (=> b!6546158 d!2054927))

(declare-fun b!6546532 () Bool)

(declare-fun e!3963776 () Bool)

(declare-fun e!3963779 () Bool)

(assert (=> b!6546532 (= e!3963776 e!3963779)))

(declare-fun c!1202310 () Bool)

(assert (=> b!6546532 (= c!1202310 (is-EmptyLang!16418 r!7292))))

(declare-fun d!2054929 () Bool)

(assert (=> d!2054929 e!3963776))

(declare-fun c!1202309 () Bool)

(assert (=> d!2054929 (= c!1202309 (is-EmptyExpr!16418 r!7292))))

(declare-fun lt!2400803 () Bool)

(declare-fun e!3963773 () Bool)

(assert (=> d!2054929 (= lt!2400803 e!3963773)))

(declare-fun c!1202308 () Bool)

(assert (=> d!2054929 (= c!1202308 (isEmpty!37655 s!2326))))

(assert (=> d!2054929 (validRegex!8154 r!7292)))

(assert (=> d!2054929 (= (matchR!8601 r!7292 s!2326) lt!2400803)))

(declare-fun b!6546533 () Bool)

(declare-fun res!2685554 () Bool)

(declare-fun e!3963774 () Bool)

(assert (=> b!6546533 (=> res!2685554 e!3963774)))

(assert (=> b!6546533 (= res!2685554 (not (isEmpty!37655 (tail!12372 s!2326))))))

(declare-fun b!6546534 () Bool)

(assert (=> b!6546534 (= e!3963773 (nullable!6411 r!7292))))

(declare-fun b!6546535 () Bool)

(declare-fun e!3963778 () Bool)

(assert (=> b!6546535 (= e!3963778 e!3963774)))

(declare-fun res!2685558 () Bool)

(assert (=> b!6546535 (=> res!2685558 e!3963774)))

(declare-fun call!569387 () Bool)

(assert (=> b!6546535 (= res!2685558 call!569387)))

(declare-fun b!6546536 () Bool)

(declare-fun res!2685553 () Bool)

(declare-fun e!3963777 () Bool)

(assert (=> b!6546536 (=> res!2685553 e!3963777)))

(declare-fun e!3963775 () Bool)

(assert (=> b!6546536 (= res!2685553 e!3963775)))

(declare-fun res!2685557 () Bool)

(assert (=> b!6546536 (=> (not res!2685557) (not e!3963775))))

(assert (=> b!6546536 (= res!2685557 lt!2400803)))

(declare-fun b!6546537 () Bool)

(declare-fun res!2685559 () Bool)

(assert (=> b!6546537 (=> (not res!2685559) (not e!3963775))))

(assert (=> b!6546537 (= res!2685559 (isEmpty!37655 (tail!12372 s!2326)))))

(declare-fun b!6546538 () Bool)

(assert (=> b!6546538 (= e!3963779 (not lt!2400803))))

(declare-fun b!6546539 () Bool)

(declare-fun derivativeStep!5102 (Regex!16418 C!33106) Regex!16418)

(assert (=> b!6546539 (= e!3963773 (matchR!8601 (derivativeStep!5102 r!7292 (head!13287 s!2326)) (tail!12372 s!2326)))))

(declare-fun b!6546540 () Bool)

(assert (=> b!6546540 (= e!3963776 (= lt!2400803 call!569387))))

(declare-fun b!6546541 () Bool)

(assert (=> b!6546541 (= e!3963777 e!3963778)))

(declare-fun res!2685556 () Bool)

(assert (=> b!6546541 (=> (not res!2685556) (not e!3963778))))

(assert (=> b!6546541 (= res!2685556 (not lt!2400803))))

(declare-fun b!6546542 () Bool)

(assert (=> b!6546542 (= e!3963775 (= (head!13287 s!2326) (c!1202229 r!7292)))))

(declare-fun b!6546543 () Bool)

(assert (=> b!6546543 (= e!3963774 (not (= (head!13287 s!2326) (c!1202229 r!7292))))))

(declare-fun bm!569382 () Bool)

(assert (=> bm!569382 (= call!569387 (isEmpty!37655 s!2326))))

(declare-fun b!6546544 () Bool)

(declare-fun res!2685555 () Bool)

(assert (=> b!6546544 (=> (not res!2685555) (not e!3963775))))

(assert (=> b!6546544 (= res!2685555 (not call!569387))))

(declare-fun b!6546545 () Bool)

(declare-fun res!2685560 () Bool)

(assert (=> b!6546545 (=> res!2685560 e!3963777)))

(assert (=> b!6546545 (= res!2685560 (not (is-ElementMatch!16418 r!7292)))))

(assert (=> b!6546545 (= e!3963779 e!3963777)))

(assert (= (and d!2054929 c!1202308) b!6546534))

(assert (= (and d!2054929 (not c!1202308)) b!6546539))

(assert (= (and d!2054929 c!1202309) b!6546540))

(assert (= (and d!2054929 (not c!1202309)) b!6546532))

(assert (= (and b!6546532 c!1202310) b!6546538))

(assert (= (and b!6546532 (not c!1202310)) b!6546545))

(assert (= (and b!6546545 (not res!2685560)) b!6546536))

(assert (= (and b!6546536 res!2685557) b!6546544))

(assert (= (and b!6546544 res!2685555) b!6546537))

(assert (= (and b!6546537 res!2685559) b!6546542))

(assert (= (and b!6546536 (not res!2685553)) b!6546541))

(assert (= (and b!6546541 res!2685556) b!6546535))

(assert (= (and b!6546535 (not res!2685558)) b!6546533))

(assert (= (and b!6546533 (not res!2685554)) b!6546543))

(assert (= (or b!6546540 b!6546535 b!6546544) bm!569382))

(assert (=> b!6546543 m!7329320))

(assert (=> b!6546542 m!7329320))

(assert (=> b!6546539 m!7329320))

(assert (=> b!6546539 m!7329320))

(declare-fun m!7329376 () Bool)

(assert (=> b!6546539 m!7329376))

(assert (=> b!6546539 m!7329324))

(assert (=> b!6546539 m!7329376))

(assert (=> b!6546539 m!7329324))

(declare-fun m!7329378 () Bool)

(assert (=> b!6546539 m!7329378))

(assert (=> b!6546533 m!7329324))

(assert (=> b!6546533 m!7329324))

(declare-fun m!7329380 () Bool)

(assert (=> b!6546533 m!7329380))

(assert (=> d!2054929 m!7329316))

(assert (=> d!2054929 m!7329046))

(assert (=> bm!569382 m!7329316))

(assert (=> b!6546537 m!7329324))

(assert (=> b!6546537 m!7329324))

(assert (=> b!6546537 m!7329380))

(declare-fun m!7329382 () Bool)

(assert (=> b!6546534 m!7329382))

(assert (=> b!6546158 d!2054929))

(declare-fun d!2054931 () Bool)

(assert (=> d!2054931 (= (matchR!8601 r!7292 s!2326) (matchRSpec!3519 r!7292 s!2326))))

(declare-fun lt!2400806 () Unit!159007)

(declare-fun choose!48639 (Regex!16418 List!65553) Unit!159007)

(assert (=> d!2054931 (= lt!2400806 (choose!48639 r!7292 s!2326))))

(assert (=> d!2054931 (validRegex!8154 r!7292)))

(assert (=> d!2054931 (= (mainMatchTheorem!3519 r!7292 s!2326) lt!2400806)))

(declare-fun bs!1671636 () Bool)

(assert (= bs!1671636 d!2054931))

(assert (=> bs!1671636 m!7329022))

(assert (=> bs!1671636 m!7329020))

(declare-fun m!7329384 () Bool)

(assert (=> bs!1671636 m!7329384))

(assert (=> bs!1671636 m!7329046))

(assert (=> b!6546158 d!2054931))

(declare-fun d!2054933 () Bool)

(declare-fun c!1202311 () Bool)

(assert (=> d!2054933 (= c!1202311 (isEmpty!37655 (t!379195 s!2326)))))

(declare-fun e!3963780 () Bool)

(assert (=> d!2054933 (= (matchZipper!2430 lt!2400586 (t!379195 s!2326)) e!3963780)))

(declare-fun b!6546546 () Bool)

(assert (=> b!6546546 (= e!3963780 (nullableZipper!2163 lt!2400586))))

(declare-fun b!6546547 () Bool)

(assert (=> b!6546547 (= e!3963780 (matchZipper!2430 (derivationStepZipper!2384 lt!2400586 (head!13287 (t!379195 s!2326))) (tail!12372 (t!379195 s!2326))))))

(assert (= (and d!2054933 c!1202311) b!6546546))

(assert (= (and d!2054933 (not c!1202311)) b!6546547))

(assert (=> d!2054933 m!7329328))

(declare-fun m!7329386 () Bool)

(assert (=> b!6546546 m!7329386))

(assert (=> b!6546547 m!7329332))

(assert (=> b!6546547 m!7329332))

(declare-fun m!7329388 () Bool)

(assert (=> b!6546547 m!7329388))

(assert (=> b!6546547 m!7329336))

(assert (=> b!6546547 m!7329388))

(assert (=> b!6546547 m!7329336))

(declare-fun m!7329390 () Bool)

(assert (=> b!6546547 m!7329390))

(assert (=> b!6546179 d!2054933))

(declare-fun d!2054935 () Bool)

(declare-fun choose!48640 (Int) Bool)

(assert (=> d!2054935 (= (Exists!3488 lambda!363381) (choose!48640 lambda!363381))))

(declare-fun bs!1671637 () Bool)

(assert (= bs!1671637 d!2054935))

(declare-fun m!7329392 () Bool)

(assert (=> bs!1671637 m!7329392))

(assert (=> b!6546157 d!2054935))

(declare-fun b!6546566 () Bool)

(declare-fun e!3963792 () Bool)

(assert (=> b!6546566 (= e!3963792 (matchR!8601 (regTwo!33348 r!7292) s!2326))))

(declare-fun b!6546567 () Bool)

(declare-fun res!2685573 () Bool)

(declare-fun e!3963795 () Bool)

(assert (=> b!6546567 (=> (not res!2685573) (not e!3963795))))

(declare-fun lt!2400814 () Option!16309)

(assert (=> b!6546567 (= res!2685573 (matchR!8601 (regTwo!33348 r!7292) (_2!36700 (get!22709 lt!2400814))))))

(declare-fun b!6546568 () Bool)

(declare-fun lt!2400815 () Unit!159007)

(declare-fun lt!2400813 () Unit!159007)

(assert (=> b!6546568 (= lt!2400815 lt!2400813)))

(assert (=> b!6546568 (= (++!14539 (++!14539 Nil!65429 (Cons!65429 (h!71877 s!2326) Nil!65429)) (t!379195 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2561 (List!65553 C!33106 List!65553 List!65553) Unit!159007)

(assert (=> b!6546568 (= lt!2400813 (lemmaMoveElementToOtherListKeepsConcatEq!2561 Nil!65429 (h!71877 s!2326) (t!379195 s!2326) s!2326))))

(declare-fun e!3963793 () Option!16309)

(assert (=> b!6546568 (= e!3963793 (findConcatSeparation!2723 (regOne!33348 r!7292) (regTwo!33348 r!7292) (++!14539 Nil!65429 (Cons!65429 (h!71877 s!2326) Nil!65429)) (t!379195 s!2326) s!2326))))

(declare-fun b!6546569 () Bool)

(declare-fun res!2685572 () Bool)

(assert (=> b!6546569 (=> (not res!2685572) (not e!3963795))))

(assert (=> b!6546569 (= res!2685572 (matchR!8601 (regOne!33348 r!7292) (_1!36700 (get!22709 lt!2400814))))))

(declare-fun d!2054937 () Bool)

(declare-fun e!3963791 () Bool)

(assert (=> d!2054937 e!3963791))

(declare-fun res!2685575 () Bool)

(assert (=> d!2054937 (=> res!2685575 e!3963791)))

(assert (=> d!2054937 (= res!2685575 e!3963795)))

(declare-fun res!2685571 () Bool)

(assert (=> d!2054937 (=> (not res!2685571) (not e!3963795))))

(assert (=> d!2054937 (= res!2685571 (isDefined!13012 lt!2400814))))

(declare-fun e!3963794 () Option!16309)

(assert (=> d!2054937 (= lt!2400814 e!3963794)))

(declare-fun c!1202317 () Bool)

(assert (=> d!2054937 (= c!1202317 e!3963792)))

(declare-fun res!2685574 () Bool)

(assert (=> d!2054937 (=> (not res!2685574) (not e!3963792))))

(assert (=> d!2054937 (= res!2685574 (matchR!8601 (regOne!33348 r!7292) Nil!65429))))

(assert (=> d!2054937 (validRegex!8154 (regOne!33348 r!7292))))

(assert (=> d!2054937 (= (findConcatSeparation!2723 (regOne!33348 r!7292) (regTwo!33348 r!7292) Nil!65429 s!2326 s!2326) lt!2400814)))

(declare-fun b!6546570 () Bool)

(assert (=> b!6546570 (= e!3963795 (= (++!14539 (_1!36700 (get!22709 lt!2400814)) (_2!36700 (get!22709 lt!2400814))) s!2326))))

(declare-fun b!6546571 () Bool)

(assert (=> b!6546571 (= e!3963794 (Some!16308 (tuple2!66795 Nil!65429 s!2326)))))

(declare-fun b!6546572 () Bool)

(assert (=> b!6546572 (= e!3963791 (not (isDefined!13012 lt!2400814)))))

(declare-fun b!6546573 () Bool)

(assert (=> b!6546573 (= e!3963793 None!16308)))

(declare-fun b!6546574 () Bool)

(assert (=> b!6546574 (= e!3963794 e!3963793)))

(declare-fun c!1202316 () Bool)

(assert (=> b!6546574 (= c!1202316 (is-Nil!65429 s!2326))))

(assert (= (and d!2054937 res!2685574) b!6546566))

(assert (= (and d!2054937 c!1202317) b!6546571))

(assert (= (and d!2054937 (not c!1202317)) b!6546574))

(assert (= (and b!6546574 c!1202316) b!6546573))

(assert (= (and b!6546574 (not c!1202316)) b!6546568))

(assert (= (and d!2054937 res!2685571) b!6546569))

(assert (= (and b!6546569 res!2685572) b!6546567))

(assert (= (and b!6546567 res!2685573) b!6546570))

(assert (= (and d!2054937 (not res!2685575)) b!6546572))

(declare-fun m!7329394 () Bool)

(assert (=> b!6546567 m!7329394))

(declare-fun m!7329396 () Bool)

(assert (=> b!6546567 m!7329396))

(declare-fun m!7329398 () Bool)

(assert (=> b!6546572 m!7329398))

(assert (=> b!6546569 m!7329394))

(declare-fun m!7329400 () Bool)

(assert (=> b!6546569 m!7329400))

(declare-fun m!7329402 () Bool)

(assert (=> b!6546568 m!7329402))

(assert (=> b!6546568 m!7329402))

(declare-fun m!7329404 () Bool)

(assert (=> b!6546568 m!7329404))

(declare-fun m!7329406 () Bool)

(assert (=> b!6546568 m!7329406))

(assert (=> b!6546568 m!7329402))

(declare-fun m!7329408 () Bool)

(assert (=> b!6546568 m!7329408))

(declare-fun m!7329410 () Bool)

(assert (=> b!6546566 m!7329410))

(assert (=> b!6546570 m!7329394))

(declare-fun m!7329412 () Bool)

(assert (=> b!6546570 m!7329412))

(assert (=> d!2054937 m!7329398))

(declare-fun m!7329414 () Bool)

(assert (=> d!2054937 m!7329414))

(declare-fun m!7329416 () Bool)

(assert (=> d!2054937 m!7329416))

(assert (=> b!6546157 d!2054937))

(declare-fun d!2054939 () Bool)

(assert (=> d!2054939 (= (Exists!3488 lambda!363380) (choose!48640 lambda!363380))))

(declare-fun bs!1671638 () Bool)

(assert (= bs!1671638 d!2054939))

(declare-fun m!7329418 () Bool)

(assert (=> bs!1671638 m!7329418))

(assert (=> b!6546157 d!2054939))

(declare-fun bs!1671639 () Bool)

(declare-fun d!2054941 () Bool)

(assert (= bs!1671639 (and d!2054941 b!6546157)))

(declare-fun lambda!363426 () Int)

(assert (=> bs!1671639 (= lambda!363426 lambda!363380)))

(assert (=> bs!1671639 (not (= lambda!363426 lambda!363381))))

(declare-fun bs!1671640 () Bool)

(assert (= bs!1671640 (and d!2054941 b!6546501)))

(assert (=> bs!1671640 (not (= lambda!363426 lambda!363422))))

(declare-fun bs!1671641 () Bool)

(assert (= bs!1671641 (and d!2054941 b!6546493)))

(assert (=> bs!1671641 (not (= lambda!363426 lambda!363423))))

(assert (=> d!2054941 true))

(assert (=> d!2054941 true))

(assert (=> d!2054941 true))

(assert (=> d!2054941 (= (isDefined!13012 (findConcatSeparation!2723 (regOne!33348 r!7292) (regTwo!33348 r!7292) Nil!65429 s!2326 s!2326)) (Exists!3488 lambda!363426))))

(declare-fun lt!2400818 () Unit!159007)

(declare-fun choose!48641 (Regex!16418 Regex!16418 List!65553) Unit!159007)

(assert (=> d!2054941 (= lt!2400818 (choose!48641 (regOne!33348 r!7292) (regTwo!33348 r!7292) s!2326))))

(assert (=> d!2054941 (validRegex!8154 (regOne!33348 r!7292))))

(assert (=> d!2054941 (= (lemmaFindConcatSeparationEquivalentToExists!2487 (regOne!33348 r!7292) (regTwo!33348 r!7292) s!2326) lt!2400818)))

(declare-fun bs!1671642 () Bool)

(assert (= bs!1671642 d!2054941))

(assert (=> bs!1671642 m!7329066))

(assert (=> bs!1671642 m!7329416))

(assert (=> bs!1671642 m!7329066))

(assert (=> bs!1671642 m!7329068))

(declare-fun m!7329420 () Bool)

(assert (=> bs!1671642 m!7329420))

(declare-fun m!7329422 () Bool)

(assert (=> bs!1671642 m!7329422))

(assert (=> b!6546157 d!2054941))

(declare-fun bs!1671643 () Bool)

(declare-fun d!2054943 () Bool)

(assert (= bs!1671643 (and d!2054943 b!6546493)))

(declare-fun lambda!363431 () Int)

(assert (=> bs!1671643 (not (= lambda!363431 lambda!363423))))

(declare-fun bs!1671644 () Bool)

(assert (= bs!1671644 (and d!2054943 d!2054941)))

(assert (=> bs!1671644 (= lambda!363431 lambda!363426)))

(declare-fun bs!1671645 () Bool)

(assert (= bs!1671645 (and d!2054943 b!6546501)))

(assert (=> bs!1671645 (not (= lambda!363431 lambda!363422))))

(declare-fun bs!1671646 () Bool)

(assert (= bs!1671646 (and d!2054943 b!6546157)))

(assert (=> bs!1671646 (not (= lambda!363431 lambda!363381))))

(assert (=> bs!1671646 (= lambda!363431 lambda!363380)))

(assert (=> d!2054943 true))

(assert (=> d!2054943 true))

(assert (=> d!2054943 true))

(declare-fun lambda!363432 () Int)

(assert (=> bs!1671643 (= lambda!363432 lambda!363423)))

(assert (=> bs!1671644 (not (= lambda!363432 lambda!363426))))

(assert (=> bs!1671645 (not (= lambda!363432 lambda!363422))))

(declare-fun bs!1671647 () Bool)

(assert (= bs!1671647 d!2054943))

(assert (=> bs!1671647 (not (= lambda!363432 lambda!363431))))

(assert (=> bs!1671646 (= lambda!363432 lambda!363381)))

(assert (=> bs!1671646 (not (= lambda!363432 lambda!363380))))

(assert (=> d!2054943 true))

(assert (=> d!2054943 true))

(assert (=> d!2054943 true))

(assert (=> d!2054943 (= (Exists!3488 lambda!363431) (Exists!3488 lambda!363432))))

(declare-fun lt!2400821 () Unit!159007)

(declare-fun choose!48642 (Regex!16418 Regex!16418 List!65553) Unit!159007)

(assert (=> d!2054943 (= lt!2400821 (choose!48642 (regOne!33348 r!7292) (regTwo!33348 r!7292) s!2326))))

(assert (=> d!2054943 (validRegex!8154 (regOne!33348 r!7292))))

(assert (=> d!2054943 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2025 (regOne!33348 r!7292) (regTwo!33348 r!7292) s!2326) lt!2400821)))

(declare-fun m!7329424 () Bool)

(assert (=> bs!1671647 m!7329424))

(declare-fun m!7329426 () Bool)

(assert (=> bs!1671647 m!7329426))

(declare-fun m!7329428 () Bool)

(assert (=> bs!1671647 m!7329428))

(assert (=> bs!1671647 m!7329416))

(assert (=> b!6546157 d!2054943))

(declare-fun d!2054945 () Bool)

(declare-fun isEmpty!37656 (Option!16309) Bool)

(assert (=> d!2054945 (= (isDefined!13012 (findConcatSeparation!2723 (regOne!33348 r!7292) (regTwo!33348 r!7292) Nil!65429 s!2326 s!2326)) (not (isEmpty!37656 (findConcatSeparation!2723 (regOne!33348 r!7292) (regTwo!33348 r!7292) Nil!65429 s!2326 s!2326))))))

(declare-fun bs!1671648 () Bool)

(assert (= bs!1671648 d!2054945))

(assert (=> bs!1671648 m!7329066))

(declare-fun m!7329430 () Bool)

(assert (=> bs!1671648 m!7329430))

(assert (=> b!6546157 d!2054945))

(declare-fun d!2054947 () Bool)

(declare-fun e!3963804 () Bool)

(assert (=> d!2054947 e!3963804))

(declare-fun res!2685591 () Bool)

(assert (=> d!2054947 (=> (not res!2685591) (not e!3963804))))

(declare-fun lt!2400824 () List!65555)

(declare-fun noDuplicate!2224 (List!65555) Bool)

(assert (=> d!2054947 (= res!2685591 (noDuplicate!2224 lt!2400824))))

(declare-fun choose!48643 ((Set Context!11604)) List!65555)

(assert (=> d!2054947 (= lt!2400824 (choose!48643 z!1189))))

(assert (=> d!2054947 (= (toList!10202 z!1189) lt!2400824)))

(declare-fun b!6546589 () Bool)

(declare-fun content!12537 (List!65555) (Set Context!11604))

(assert (=> b!6546589 (= e!3963804 (= (content!12537 lt!2400824) z!1189))))

(assert (= (and d!2054947 res!2685591) b!6546589))

(declare-fun m!7329432 () Bool)

(assert (=> d!2054947 m!7329432))

(declare-fun m!7329434 () Bool)

(assert (=> d!2054947 m!7329434))

(declare-fun m!7329436 () Bool)

(assert (=> b!6546589 m!7329436))

(assert (=> b!6546177 d!2054947))

(declare-fun b!6546608 () Bool)

(declare-fun e!3963824 () Bool)

(declare-fun e!3963821 () Bool)

(assert (=> b!6546608 (= e!3963824 e!3963821)))

(declare-fun res!2685605 () Bool)

(assert (=> b!6546608 (=> (not res!2685605) (not e!3963821))))

(declare-fun call!569394 () Bool)

(assert (=> b!6546608 (= res!2685605 call!569394)))

(declare-fun b!6546609 () Bool)

(declare-fun call!569396 () Bool)

(assert (=> b!6546609 (= e!3963821 call!569396)))

(declare-fun c!1202323 () Bool)

(declare-fun c!1202322 () Bool)

(declare-fun call!569395 () Bool)

(declare-fun bm!569389 () Bool)

(assert (=> bm!569389 (= call!569395 (validRegex!8154 (ite c!1202322 (reg!16747 r!7292) (ite c!1202323 (regTwo!33349 r!7292) (regTwo!33348 r!7292)))))))

(declare-fun b!6546610 () Bool)

(declare-fun e!3963823 () Bool)

(declare-fun e!3963825 () Bool)

(assert (=> b!6546610 (= e!3963823 e!3963825)))

(declare-fun res!2685604 () Bool)

(assert (=> b!6546610 (= res!2685604 (not (nullable!6411 (reg!16747 r!7292))))))

(assert (=> b!6546610 (=> (not res!2685604) (not e!3963825))))

(declare-fun b!6546612 () Bool)

(assert (=> b!6546612 (= e!3963825 call!569395)))

(declare-fun bm!569390 () Bool)

(assert (=> bm!569390 (= call!569396 call!569395)))

(declare-fun b!6546613 () Bool)

(declare-fun e!3963820 () Bool)

(assert (=> b!6546613 (= e!3963820 e!3963823)))

(assert (=> b!6546613 (= c!1202322 (is-Star!16418 r!7292))))

(declare-fun bm!569391 () Bool)

(assert (=> bm!569391 (= call!569394 (validRegex!8154 (ite c!1202323 (regOne!33349 r!7292) (regOne!33348 r!7292))))))

(declare-fun b!6546614 () Bool)

(declare-fun res!2685602 () Bool)

(assert (=> b!6546614 (=> res!2685602 e!3963824)))

(assert (=> b!6546614 (= res!2685602 (not (is-Concat!25263 r!7292)))))

(declare-fun e!3963822 () Bool)

(assert (=> b!6546614 (= e!3963822 e!3963824)))

(declare-fun d!2054949 () Bool)

(declare-fun res!2685606 () Bool)

(assert (=> d!2054949 (=> res!2685606 e!3963820)))

(assert (=> d!2054949 (= res!2685606 (is-ElementMatch!16418 r!7292))))

(assert (=> d!2054949 (= (validRegex!8154 r!7292) e!3963820)))

(declare-fun b!6546611 () Bool)

(declare-fun e!3963819 () Bool)

(assert (=> b!6546611 (= e!3963819 call!569396)))

(declare-fun b!6546615 () Bool)

(assert (=> b!6546615 (= e!3963823 e!3963822)))

(assert (=> b!6546615 (= c!1202323 (is-Union!16418 r!7292))))

(declare-fun b!6546616 () Bool)

(declare-fun res!2685603 () Bool)

(assert (=> b!6546616 (=> (not res!2685603) (not e!3963819))))

(assert (=> b!6546616 (= res!2685603 call!569394)))

(assert (=> b!6546616 (= e!3963822 e!3963819)))

(assert (= (and d!2054949 (not res!2685606)) b!6546613))

(assert (= (and b!6546613 c!1202322) b!6546610))

(assert (= (and b!6546613 (not c!1202322)) b!6546615))

(assert (= (and b!6546610 res!2685604) b!6546612))

(assert (= (and b!6546615 c!1202323) b!6546616))

(assert (= (and b!6546615 (not c!1202323)) b!6546614))

(assert (= (and b!6546616 res!2685603) b!6546611))

(assert (= (and b!6546614 (not res!2685602)) b!6546608))

(assert (= (and b!6546608 res!2685605) b!6546609))

(assert (= (or b!6546611 b!6546609) bm!569390))

(assert (= (or b!6546616 b!6546608) bm!569391))

(assert (= (or b!6546612 bm!569390) bm!569389))

(declare-fun m!7329438 () Bool)

(assert (=> bm!569389 m!7329438))

(declare-fun m!7329440 () Bool)

(assert (=> b!6546610 m!7329440))

(declare-fun m!7329442 () Bool)

(assert (=> bm!569391 m!7329442))

(assert (=> start!641424 d!2054949))

(assert (=> b!6546155 d!2054919))

(declare-fun d!2054951 () Bool)

(declare-fun c!1202327 () Bool)

(assert (=> d!2054951 (= c!1202327 (and (is-ElementMatch!16418 (reg!16747 (regOne!33348 r!7292))) (= (c!1202229 (reg!16747 (regOne!33348 r!7292))) (h!71877 s!2326))))))

(declare-fun e!3963827 () (Set Context!11604))

(assert (=> d!2054951 (= (derivationStepZipperDown!1666 (reg!16747 (regOne!33348 r!7292)) lt!2400603 (h!71877 s!2326)) e!3963827)))

(declare-fun b!6546617 () Bool)

(declare-fun e!3963831 () (Set Context!11604))

(declare-fun call!569398 () (Set Context!11604))

(assert (=> b!6546617 (= e!3963831 call!569398)))

(declare-fun bm!569392 () Bool)

(declare-fun call!569402 () (Set Context!11604))

(declare-fun call!569400 () (Set Context!11604))

(assert (=> bm!569392 (= call!569402 call!569400)))

(declare-fun b!6546618 () Bool)

(declare-fun e!3963830 () (Set Context!11604))

(assert (=> b!6546618 (= e!3963827 e!3963830)))

(declare-fun c!1202324 () Bool)

(assert (=> b!6546618 (= c!1202324 (is-Union!16418 (reg!16747 (regOne!33348 r!7292))))))

(declare-fun bm!569393 () Bool)

(declare-fun call!569399 () List!65554)

(declare-fun call!569397 () (Set Context!11604))

(assert (=> bm!569393 (= call!569397 (derivationStepZipperDown!1666 (ite c!1202324 (regTwo!33349 (reg!16747 (regOne!33348 r!7292))) (regOne!33348 (reg!16747 (regOne!33348 r!7292)))) (ite c!1202324 lt!2400603 (Context!11605 call!569399)) (h!71877 s!2326)))))

(declare-fun b!6546619 () Bool)

(declare-fun e!3963826 () (Set Context!11604))

(assert (=> b!6546619 (= e!3963826 (as set.empty (Set Context!11604)))))

(declare-fun b!6546620 () Bool)

(declare-fun e!3963829 () (Set Context!11604))

(assert (=> b!6546620 (= e!3963829 e!3963831)))

(declare-fun c!1202328 () Bool)

(assert (=> b!6546620 (= c!1202328 (is-Concat!25263 (reg!16747 (regOne!33348 r!7292))))))

(declare-fun b!6546621 () Bool)

(assert (=> b!6546621 (= e!3963830 (set.union call!569400 call!569397))))

(declare-fun b!6546622 () Bool)

(declare-fun e!3963828 () Bool)

(assert (=> b!6546622 (= e!3963828 (nullable!6411 (regOne!33348 (reg!16747 (regOne!33348 r!7292)))))))

(declare-fun bm!569394 () Bool)

(assert (=> bm!569394 (= call!569398 call!569402)))

(declare-fun b!6546623 () Bool)

(assert (=> b!6546623 (= e!3963829 (set.union call!569397 call!569402))))

(declare-fun call!569401 () List!65554)

(declare-fun bm!569395 () Bool)

(declare-fun c!1202326 () Bool)

(assert (=> bm!569395 (= call!569400 (derivationStepZipperDown!1666 (ite c!1202324 (regOne!33349 (reg!16747 (regOne!33348 r!7292))) (ite c!1202326 (regTwo!33348 (reg!16747 (regOne!33348 r!7292))) (ite c!1202328 (regOne!33348 (reg!16747 (regOne!33348 r!7292))) (reg!16747 (reg!16747 (regOne!33348 r!7292)))))) (ite (or c!1202324 c!1202326) lt!2400603 (Context!11605 call!569401)) (h!71877 s!2326)))))

(declare-fun b!6546624 () Bool)

(assert (=> b!6546624 (= e!3963827 (set.insert lt!2400603 (as set.empty (Set Context!11604))))))

(declare-fun b!6546625 () Bool)

(assert (=> b!6546625 (= c!1202326 e!3963828)))

(declare-fun res!2685607 () Bool)

(assert (=> b!6546625 (=> (not res!2685607) (not e!3963828))))

(assert (=> b!6546625 (= res!2685607 (is-Concat!25263 (reg!16747 (regOne!33348 r!7292))))))

(assert (=> b!6546625 (= e!3963830 e!3963829)))

(declare-fun bm!569396 () Bool)

(assert (=> bm!569396 (= call!569399 ($colon$colon!2259 (exprs!6302 lt!2400603) (ite (or c!1202326 c!1202328) (regTwo!33348 (reg!16747 (regOne!33348 r!7292))) (reg!16747 (regOne!33348 r!7292)))))))

(declare-fun b!6546626 () Bool)

(declare-fun c!1202325 () Bool)

(assert (=> b!6546626 (= c!1202325 (is-Star!16418 (reg!16747 (regOne!33348 r!7292))))))

(assert (=> b!6546626 (= e!3963831 e!3963826)))

(declare-fun b!6546627 () Bool)

(assert (=> b!6546627 (= e!3963826 call!569398)))

(declare-fun bm!569397 () Bool)

(assert (=> bm!569397 (= call!569401 call!569399)))

(assert (= (and d!2054951 c!1202327) b!6546624))

(assert (= (and d!2054951 (not c!1202327)) b!6546618))

(assert (= (and b!6546618 c!1202324) b!6546621))

(assert (= (and b!6546618 (not c!1202324)) b!6546625))

(assert (= (and b!6546625 res!2685607) b!6546622))

(assert (= (and b!6546625 c!1202326) b!6546623))

(assert (= (and b!6546625 (not c!1202326)) b!6546620))

(assert (= (and b!6546620 c!1202328) b!6546617))

(assert (= (and b!6546620 (not c!1202328)) b!6546626))

(assert (= (and b!6546626 c!1202325) b!6546627))

(assert (= (and b!6546626 (not c!1202325)) b!6546619))

(assert (= (or b!6546617 b!6546627) bm!569397))

(assert (= (or b!6546617 b!6546627) bm!569394))

(assert (= (or b!6546623 bm!569397) bm!569396))

(assert (= (or b!6546623 bm!569394) bm!569392))

(assert (= (or b!6546621 b!6546623) bm!569393))

(assert (= (or b!6546621 bm!569392) bm!569395))

(assert (=> b!6546624 m!7328950))

(declare-fun m!7329444 () Bool)

(assert (=> bm!569393 m!7329444))

(declare-fun m!7329446 () Bool)

(assert (=> bm!569395 m!7329446))

(declare-fun m!7329448 () Bool)

(assert (=> bm!569396 m!7329448))

(declare-fun m!7329450 () Bool)

(assert (=> b!6546622 m!7329450))

(assert (=> b!6546176 d!2054951))

(declare-fun bs!1671649 () Bool)

(declare-fun b!6546636 () Bool)

(assert (= bs!1671649 (and b!6546636 b!6546493)))

(declare-fun lambda!363433 () Int)

(assert (=> bs!1671649 (not (= lambda!363433 lambda!363423))))

(declare-fun bs!1671650 () Bool)

(assert (= bs!1671650 (and b!6546636 d!2054943)))

(assert (=> bs!1671650 (not (= lambda!363433 lambda!363432))))

(declare-fun bs!1671651 () Bool)

(assert (= bs!1671651 (and b!6546636 d!2054941)))

(assert (=> bs!1671651 (not (= lambda!363433 lambda!363426))))

(declare-fun bs!1671652 () Bool)

(assert (= bs!1671652 (and b!6546636 b!6546501)))

(assert (=> bs!1671652 (= (and (= (reg!16747 lt!2400578) (reg!16747 r!7292)) (= lt!2400578 r!7292)) (= lambda!363433 lambda!363422))))

(assert (=> bs!1671650 (not (= lambda!363433 lambda!363431))))

(declare-fun bs!1671653 () Bool)

(assert (= bs!1671653 (and b!6546636 b!6546157)))

(assert (=> bs!1671653 (not (= lambda!363433 lambda!363381))))

(assert (=> bs!1671653 (not (= lambda!363433 lambda!363380))))

(assert (=> b!6546636 true))

(assert (=> b!6546636 true))

(declare-fun bs!1671654 () Bool)

(declare-fun b!6546628 () Bool)

(assert (= bs!1671654 (and b!6546628 b!6546493)))

(declare-fun lambda!363434 () Int)

(assert (=> bs!1671654 (= (and (= (regOne!33348 lt!2400578) (regOne!33348 r!7292)) (= (regTwo!33348 lt!2400578) (regTwo!33348 r!7292))) (= lambda!363434 lambda!363423))))

(declare-fun bs!1671655 () Bool)

(assert (= bs!1671655 (and b!6546628 d!2054943)))

(assert (=> bs!1671655 (= (and (= (regOne!33348 lt!2400578) (regOne!33348 r!7292)) (= (regTwo!33348 lt!2400578) (regTwo!33348 r!7292))) (= lambda!363434 lambda!363432))))

(declare-fun bs!1671656 () Bool)

(assert (= bs!1671656 (and b!6546628 d!2054941)))

(assert (=> bs!1671656 (not (= lambda!363434 lambda!363426))))

(declare-fun bs!1671657 () Bool)

(assert (= bs!1671657 (and b!6546628 b!6546636)))

(assert (=> bs!1671657 (not (= lambda!363434 lambda!363433))))

(declare-fun bs!1671658 () Bool)

(assert (= bs!1671658 (and b!6546628 b!6546501)))

(assert (=> bs!1671658 (not (= lambda!363434 lambda!363422))))

(assert (=> bs!1671655 (not (= lambda!363434 lambda!363431))))

(declare-fun bs!1671659 () Bool)

(assert (= bs!1671659 (and b!6546628 b!6546157)))

(assert (=> bs!1671659 (= (and (= (regOne!33348 lt!2400578) (regOne!33348 r!7292)) (= (regTwo!33348 lt!2400578) (regTwo!33348 r!7292))) (= lambda!363434 lambda!363381))))

(assert (=> bs!1671659 (not (= lambda!363434 lambda!363380))))

(assert (=> b!6546628 true))

(assert (=> b!6546628 true))

(declare-fun call!569403 () Bool)

(declare-fun bm!569398 () Bool)

(declare-fun c!1202331 () Bool)

(assert (=> bm!569398 (= call!569403 (Exists!3488 (ite c!1202331 lambda!363433 lambda!363434)))))

(declare-fun e!3963833 () Bool)

(assert (=> b!6546628 (= e!3963833 call!569403)))

(declare-fun b!6546629 () Bool)

(declare-fun c!1202329 () Bool)

(assert (=> b!6546629 (= c!1202329 (is-Union!16418 lt!2400578))))

(declare-fun e!3963834 () Bool)

(declare-fun e!3963838 () Bool)

(assert (=> b!6546629 (= e!3963834 e!3963838)))

(declare-fun b!6546630 () Bool)

(declare-fun res!2685608 () Bool)

(declare-fun e!3963837 () Bool)

(assert (=> b!6546630 (=> res!2685608 e!3963837)))

(declare-fun call!569404 () Bool)

(assert (=> b!6546630 (= res!2685608 call!569404)))

(assert (=> b!6546630 (= e!3963833 e!3963837)))

(declare-fun b!6546631 () Bool)

(declare-fun e!3963832 () Bool)

(assert (=> b!6546631 (= e!3963838 e!3963832)))

(declare-fun res!2685609 () Bool)

(assert (=> b!6546631 (= res!2685609 (matchRSpec!3519 (regOne!33349 lt!2400578) s!2326))))

(assert (=> b!6546631 (=> res!2685609 e!3963832)))

(declare-fun bm!569399 () Bool)

(assert (=> bm!569399 (= call!569404 (isEmpty!37655 s!2326))))

(declare-fun b!6546632 () Bool)

(assert (=> b!6546632 (= e!3963838 e!3963833)))

(assert (=> b!6546632 (= c!1202331 (is-Star!16418 lt!2400578))))

(declare-fun b!6546633 () Bool)

(assert (=> b!6546633 (= e!3963834 (= s!2326 (Cons!65429 (c!1202229 lt!2400578) Nil!65429)))))

(declare-fun b!6546634 () Bool)

(assert (=> b!6546634 (= e!3963832 (matchRSpec!3519 (regTwo!33349 lt!2400578) s!2326))))

(declare-fun b!6546635 () Bool)

(declare-fun e!3963835 () Bool)

(assert (=> b!6546635 (= e!3963835 call!569404)))

(declare-fun d!2054953 () Bool)

(declare-fun c!1202330 () Bool)

(assert (=> d!2054953 (= c!1202330 (is-EmptyExpr!16418 lt!2400578))))

(assert (=> d!2054953 (= (matchRSpec!3519 lt!2400578 s!2326) e!3963835)))

(assert (=> b!6546636 (= e!3963837 call!569403)))

(declare-fun b!6546637 () Bool)

(declare-fun c!1202332 () Bool)

(assert (=> b!6546637 (= c!1202332 (is-ElementMatch!16418 lt!2400578))))

(declare-fun e!3963836 () Bool)

(assert (=> b!6546637 (= e!3963836 e!3963834)))

(declare-fun b!6546638 () Bool)

(assert (=> b!6546638 (= e!3963835 e!3963836)))

(declare-fun res!2685610 () Bool)

(assert (=> b!6546638 (= res!2685610 (not (is-EmptyLang!16418 lt!2400578)))))

(assert (=> b!6546638 (=> (not res!2685610) (not e!3963836))))

(assert (= (and d!2054953 c!1202330) b!6546635))

(assert (= (and d!2054953 (not c!1202330)) b!6546638))

(assert (= (and b!6546638 res!2685610) b!6546637))

(assert (= (and b!6546637 c!1202332) b!6546633))

(assert (= (and b!6546637 (not c!1202332)) b!6546629))

(assert (= (and b!6546629 c!1202329) b!6546631))

(assert (= (and b!6546629 (not c!1202329)) b!6546632))

(assert (= (and b!6546631 (not res!2685609)) b!6546634))

(assert (= (and b!6546632 c!1202331) b!6546630))

(assert (= (and b!6546632 (not c!1202331)) b!6546628))

(assert (= (and b!6546630 (not res!2685608)) b!6546636))

(assert (= (or b!6546636 b!6546628) bm!569398))

(assert (= (or b!6546635 b!6546630) bm!569399))

(declare-fun m!7329452 () Bool)

(assert (=> bm!569398 m!7329452))

(declare-fun m!7329454 () Bool)

(assert (=> b!6546631 m!7329454))

(assert (=> bm!569399 m!7329316))

(declare-fun m!7329456 () Bool)

(assert (=> b!6546634 m!7329456))

(assert (=> b!6546175 d!2054953))

(declare-fun b!6546639 () Bool)

(declare-fun e!3963842 () Bool)

(declare-fun e!3963845 () Bool)

(assert (=> b!6546639 (= e!3963842 e!3963845)))

(declare-fun c!1202335 () Bool)

(assert (=> b!6546639 (= c!1202335 (is-EmptyLang!16418 lt!2400578))))

(declare-fun d!2054955 () Bool)

(assert (=> d!2054955 e!3963842))

(declare-fun c!1202334 () Bool)

(assert (=> d!2054955 (= c!1202334 (is-EmptyExpr!16418 lt!2400578))))

(declare-fun lt!2400825 () Bool)

(declare-fun e!3963839 () Bool)

(assert (=> d!2054955 (= lt!2400825 e!3963839)))

(declare-fun c!1202333 () Bool)

(assert (=> d!2054955 (= c!1202333 (isEmpty!37655 s!2326))))

(assert (=> d!2054955 (validRegex!8154 lt!2400578)))

(assert (=> d!2054955 (= (matchR!8601 lt!2400578 s!2326) lt!2400825)))

(declare-fun b!6546640 () Bool)

(declare-fun res!2685612 () Bool)

(declare-fun e!3963840 () Bool)

(assert (=> b!6546640 (=> res!2685612 e!3963840)))

(assert (=> b!6546640 (= res!2685612 (not (isEmpty!37655 (tail!12372 s!2326))))))

(declare-fun b!6546641 () Bool)

(assert (=> b!6546641 (= e!3963839 (nullable!6411 lt!2400578))))

(declare-fun b!6546642 () Bool)

(declare-fun e!3963844 () Bool)

(assert (=> b!6546642 (= e!3963844 e!3963840)))

(declare-fun res!2685616 () Bool)

(assert (=> b!6546642 (=> res!2685616 e!3963840)))

(declare-fun call!569405 () Bool)

(assert (=> b!6546642 (= res!2685616 call!569405)))

(declare-fun b!6546643 () Bool)

(declare-fun res!2685611 () Bool)

(declare-fun e!3963843 () Bool)

(assert (=> b!6546643 (=> res!2685611 e!3963843)))

(declare-fun e!3963841 () Bool)

(assert (=> b!6546643 (= res!2685611 e!3963841)))

(declare-fun res!2685615 () Bool)

(assert (=> b!6546643 (=> (not res!2685615) (not e!3963841))))

(assert (=> b!6546643 (= res!2685615 lt!2400825)))

(declare-fun b!6546644 () Bool)

(declare-fun res!2685617 () Bool)

(assert (=> b!6546644 (=> (not res!2685617) (not e!3963841))))

(assert (=> b!6546644 (= res!2685617 (isEmpty!37655 (tail!12372 s!2326)))))

(declare-fun b!6546645 () Bool)

(assert (=> b!6546645 (= e!3963845 (not lt!2400825))))

(declare-fun b!6546646 () Bool)

(assert (=> b!6546646 (= e!3963839 (matchR!8601 (derivativeStep!5102 lt!2400578 (head!13287 s!2326)) (tail!12372 s!2326)))))

(declare-fun b!6546647 () Bool)

(assert (=> b!6546647 (= e!3963842 (= lt!2400825 call!569405))))

(declare-fun b!6546648 () Bool)

(assert (=> b!6546648 (= e!3963843 e!3963844)))

(declare-fun res!2685614 () Bool)

(assert (=> b!6546648 (=> (not res!2685614) (not e!3963844))))

(assert (=> b!6546648 (= res!2685614 (not lt!2400825))))

(declare-fun b!6546649 () Bool)

(assert (=> b!6546649 (= e!3963841 (= (head!13287 s!2326) (c!1202229 lt!2400578)))))

(declare-fun b!6546650 () Bool)

(assert (=> b!6546650 (= e!3963840 (not (= (head!13287 s!2326) (c!1202229 lt!2400578))))))

(declare-fun bm!569400 () Bool)

(assert (=> bm!569400 (= call!569405 (isEmpty!37655 s!2326))))

(declare-fun b!6546651 () Bool)

(declare-fun res!2685613 () Bool)

(assert (=> b!6546651 (=> (not res!2685613) (not e!3963841))))

(assert (=> b!6546651 (= res!2685613 (not call!569405))))

(declare-fun b!6546652 () Bool)

(declare-fun res!2685618 () Bool)

(assert (=> b!6546652 (=> res!2685618 e!3963843)))

(assert (=> b!6546652 (= res!2685618 (not (is-ElementMatch!16418 lt!2400578)))))

(assert (=> b!6546652 (= e!3963845 e!3963843)))

(assert (= (and d!2054955 c!1202333) b!6546641))

(assert (= (and d!2054955 (not c!1202333)) b!6546646))

(assert (= (and d!2054955 c!1202334) b!6546647))

(assert (= (and d!2054955 (not c!1202334)) b!6546639))

(assert (= (and b!6546639 c!1202335) b!6546645))

(assert (= (and b!6546639 (not c!1202335)) b!6546652))

(assert (= (and b!6546652 (not res!2685618)) b!6546643))

(assert (= (and b!6546643 res!2685615) b!6546651))

(assert (= (and b!6546651 res!2685613) b!6546644))

(assert (= (and b!6546644 res!2685617) b!6546649))

(assert (= (and b!6546643 (not res!2685611)) b!6546648))

(assert (= (and b!6546648 res!2685614) b!6546642))

(assert (= (and b!6546642 (not res!2685616)) b!6546640))

(assert (= (and b!6546640 (not res!2685612)) b!6546650))

(assert (= (or b!6546647 b!6546642 b!6546651) bm!569400))

(assert (=> b!6546650 m!7329320))

(assert (=> b!6546649 m!7329320))

(assert (=> b!6546646 m!7329320))

(assert (=> b!6546646 m!7329320))

(declare-fun m!7329458 () Bool)

(assert (=> b!6546646 m!7329458))

(assert (=> b!6546646 m!7329324))

(assert (=> b!6546646 m!7329458))

(assert (=> b!6546646 m!7329324))

(declare-fun m!7329460 () Bool)

(assert (=> b!6546646 m!7329460))

(assert (=> b!6546640 m!7329324))

(assert (=> b!6546640 m!7329324))

(assert (=> b!6546640 m!7329380))

(assert (=> d!2054955 m!7329316))

(declare-fun m!7329462 () Bool)

(assert (=> d!2054955 m!7329462))

(assert (=> bm!569400 m!7329316))

(assert (=> b!6546644 m!7329324))

(assert (=> b!6546644 m!7329324))

(assert (=> b!6546644 m!7329380))

(declare-fun m!7329464 () Bool)

(assert (=> b!6546641 m!7329464))

(assert (=> b!6546175 d!2054955))

(declare-fun d!2054957 () Bool)

(assert (=> d!2054957 (= (matchR!8601 lt!2400578 s!2326) (matchRSpec!3519 lt!2400578 s!2326))))

(declare-fun lt!2400826 () Unit!159007)

(assert (=> d!2054957 (= lt!2400826 (choose!48639 lt!2400578 s!2326))))

(assert (=> d!2054957 (validRegex!8154 lt!2400578)))

(assert (=> d!2054957 (= (mainMatchTheorem!3519 lt!2400578 s!2326) lt!2400826)))

(declare-fun bs!1671660 () Bool)

(assert (= bs!1671660 d!2054957))

(assert (=> bs!1671660 m!7328972))

(assert (=> bs!1671660 m!7328970))

(declare-fun m!7329466 () Bool)

(assert (=> bs!1671660 m!7329466))

(assert (=> bs!1671660 m!7329462))

(assert (=> b!6546175 d!2054957))

(declare-fun d!2054959 () Bool)

(assert (=> d!2054959 (= (isEmpty!37651 (t!379197 zl!343)) (is-Nil!65431 (t!379197 zl!343)))))

(assert (=> b!6546153 d!2054959))

(declare-fun d!2054961 () Bool)

(declare-fun e!3963848 () Bool)

(assert (=> d!2054961 (= (matchZipper!2430 (set.union lt!2400586 lt!2400591) (t!379195 s!2326)) e!3963848)))

(declare-fun res!2685621 () Bool)

(assert (=> d!2054961 (=> res!2685621 e!3963848)))

(assert (=> d!2054961 (= res!2685621 (matchZipper!2430 lt!2400586 (t!379195 s!2326)))))

(declare-fun lt!2400829 () Unit!159007)

(declare-fun choose!48644 ((Set Context!11604) (Set Context!11604) List!65553) Unit!159007)

(assert (=> d!2054961 (= lt!2400829 (choose!48644 lt!2400586 lt!2400591 (t!379195 s!2326)))))

(assert (=> d!2054961 (= (lemmaZipperConcatMatchesSameAsBothZippers!1249 lt!2400586 lt!2400591 (t!379195 s!2326)) lt!2400829)))

(declare-fun b!6546655 () Bool)

(assert (=> b!6546655 (= e!3963848 (matchZipper!2430 lt!2400591 (t!379195 s!2326)))))

(assert (= (and d!2054961 (not res!2685621)) b!6546655))

(assert (=> d!2054961 m!7329018))

(assert (=> d!2054961 m!7329016))

(declare-fun m!7329468 () Bool)

(assert (=> d!2054961 m!7329468))

(assert (=> b!6546655 m!7328976))

(assert (=> b!6546152 d!2054961))

(assert (=> b!6546152 d!2054933))

(declare-fun d!2054963 () Bool)

(declare-fun c!1202336 () Bool)

(assert (=> d!2054963 (= c!1202336 (isEmpty!37655 (t!379195 s!2326)))))

(declare-fun e!3963849 () Bool)

(assert (=> d!2054963 (= (matchZipper!2430 (set.union lt!2400586 lt!2400591) (t!379195 s!2326)) e!3963849)))

(declare-fun b!6546656 () Bool)

(assert (=> b!6546656 (= e!3963849 (nullableZipper!2163 (set.union lt!2400586 lt!2400591)))))

(declare-fun b!6546657 () Bool)

(assert (=> b!6546657 (= e!3963849 (matchZipper!2430 (derivationStepZipper!2384 (set.union lt!2400586 lt!2400591) (head!13287 (t!379195 s!2326))) (tail!12372 (t!379195 s!2326))))))

(assert (= (and d!2054963 c!1202336) b!6546656))

(assert (= (and d!2054963 (not c!1202336)) b!6546657))

(assert (=> d!2054963 m!7329328))

(declare-fun m!7329470 () Bool)

(assert (=> b!6546656 m!7329470))

(assert (=> b!6546657 m!7329332))

(assert (=> b!6546657 m!7329332))

(declare-fun m!7329472 () Bool)

(assert (=> b!6546657 m!7329472))

(assert (=> b!6546657 m!7329336))

(assert (=> b!6546657 m!7329472))

(assert (=> b!6546657 m!7329336))

(declare-fun m!7329474 () Bool)

(assert (=> b!6546657 m!7329474))

(assert (=> b!6546152 d!2054963))

(declare-fun d!2054965 () Bool)

(assert (=> d!2054965 (= (isEmpty!37652 (t!379196 (exprs!6302 (h!71879 zl!343)))) (is-Nil!65430 (t!379196 (exprs!6302 (h!71879 zl!343)))))))

(assert (=> b!6546192 d!2054965))

(declare-fun d!2054967 () Bool)

(declare-fun lt!2400830 () Regex!16418)

(assert (=> d!2054967 (validRegex!8154 lt!2400830)))

(assert (=> d!2054967 (= lt!2400830 (generalisedUnion!2262 (unfocusZipperList!1839 lt!2400574)))))

(assert (=> d!2054967 (= (unfocusZipper!2160 lt!2400574) lt!2400830)))

(declare-fun bs!1671661 () Bool)

(assert (= bs!1671661 d!2054967))

(declare-fun m!7329476 () Bool)

(assert (=> bs!1671661 m!7329476))

(declare-fun m!7329478 () Bool)

(assert (=> bs!1671661 m!7329478))

(assert (=> bs!1671661 m!7329478))

(declare-fun m!7329480 () Bool)

(assert (=> bs!1671661 m!7329480))

(assert (=> b!6546151 d!2054967))

(declare-fun b!6546658 () Bool)

(declare-fun e!3963852 () (Set Context!11604))

(declare-fun call!569406 () (Set Context!11604))

(assert (=> b!6546658 (= e!3963852 call!569406)))

(declare-fun d!2054969 () Bool)

(declare-fun c!1202337 () Bool)

(declare-fun e!3963850 () Bool)

(assert (=> d!2054969 (= c!1202337 e!3963850)))

(declare-fun res!2685622 () Bool)

(assert (=> d!2054969 (=> (not res!2685622) (not e!3963850))))

(assert (=> d!2054969 (= res!2685622 (is-Cons!65430 (exprs!6302 lt!2400603)))))

(declare-fun e!3963851 () (Set Context!11604))

(assert (=> d!2054969 (= (derivationStepZipperUp!1592 lt!2400603 (h!71877 s!2326)) e!3963851)))

(declare-fun b!6546659 () Bool)

(assert (=> b!6546659 (= e!3963852 (as set.empty (Set Context!11604)))))

(declare-fun bm!569401 () Bool)

(assert (=> bm!569401 (= call!569406 (derivationStepZipperDown!1666 (h!71878 (exprs!6302 lt!2400603)) (Context!11605 (t!379196 (exprs!6302 lt!2400603))) (h!71877 s!2326)))))

(declare-fun b!6546660 () Bool)

(assert (=> b!6546660 (= e!3963851 e!3963852)))

(declare-fun c!1202338 () Bool)

(assert (=> b!6546660 (= c!1202338 (is-Cons!65430 (exprs!6302 lt!2400603)))))

(declare-fun b!6546661 () Bool)

(assert (=> b!6546661 (= e!3963851 (set.union call!569406 (derivationStepZipperUp!1592 (Context!11605 (t!379196 (exprs!6302 lt!2400603))) (h!71877 s!2326))))))

(declare-fun b!6546662 () Bool)

(assert (=> b!6546662 (= e!3963850 (nullable!6411 (h!71878 (exprs!6302 lt!2400603))))))

(assert (= (and d!2054969 res!2685622) b!6546662))

(assert (= (and d!2054969 c!1202337) b!6546661))

(assert (= (and d!2054969 (not c!1202337)) b!6546660))

(assert (= (and b!6546660 c!1202338) b!6546658))

(assert (= (and b!6546660 (not c!1202338)) b!6546659))

(assert (= (or b!6546661 b!6546658) bm!569401))

(declare-fun m!7329482 () Bool)

(assert (=> bm!569401 m!7329482))

(declare-fun m!7329484 () Bool)

(assert (=> b!6546661 m!7329484))

(declare-fun m!7329486 () Bool)

(assert (=> b!6546662 m!7329486))

(assert (=> b!6546151 d!2054969))

(declare-fun d!2054971 () Bool)

(assert (=> d!2054971 (= (flatMap!1923 lt!2400572 lambda!363382) (dynLambda!26008 lambda!363382 lt!2400606))))

(declare-fun lt!2400831 () Unit!159007)

(assert (=> d!2054971 (= lt!2400831 (choose!48638 lt!2400572 lt!2400606 lambda!363382))))

(assert (=> d!2054971 (= lt!2400572 (set.insert lt!2400606 (as set.empty (Set Context!11604))))))

(assert (=> d!2054971 (= (lemmaFlatMapOnSingletonSet!1449 lt!2400572 lt!2400606 lambda!363382) lt!2400831)))

(declare-fun b_lambda!247803 () Bool)

(assert (=> (not b_lambda!247803) (not d!2054971)))

(declare-fun bs!1671662 () Bool)

(assert (= bs!1671662 d!2054971))

(assert (=> bs!1671662 m!7328948))

(declare-fun m!7329488 () Bool)

(assert (=> bs!1671662 m!7329488))

(declare-fun m!7329490 () Bool)

(assert (=> bs!1671662 m!7329490))

(assert (=> bs!1671662 m!7328958))

(assert (=> b!6546151 d!2054971))

(declare-fun d!2054973 () Bool)

(assert (=> d!2054973 (= (flatMap!1923 lt!2400595 lambda!363382) (choose!48637 lt!2400595 lambda!363382))))

(declare-fun bs!1671663 () Bool)

(assert (= bs!1671663 d!2054973))

(declare-fun m!7329492 () Bool)

(assert (=> bs!1671663 m!7329492))

(assert (=> b!6546151 d!2054973))

(declare-fun d!2054975 () Bool)

(assert (=> d!2054975 (= (flatMap!1923 lt!2400595 lambda!363382) (dynLambda!26008 lambda!363382 lt!2400603))))

(declare-fun lt!2400832 () Unit!159007)

(assert (=> d!2054975 (= lt!2400832 (choose!48638 lt!2400595 lt!2400603 lambda!363382))))

(assert (=> d!2054975 (= lt!2400595 (set.insert lt!2400603 (as set.empty (Set Context!11604))))))

(assert (=> d!2054975 (= (lemmaFlatMapOnSingletonSet!1449 lt!2400595 lt!2400603 lambda!363382) lt!2400832)))

(declare-fun b_lambda!247805 () Bool)

(assert (=> (not b_lambda!247805) (not d!2054975)))

(declare-fun bs!1671664 () Bool)

(assert (= bs!1671664 d!2054975))

(assert (=> bs!1671664 m!7328962))

(declare-fun m!7329494 () Bool)

(assert (=> bs!1671664 m!7329494))

(declare-fun m!7329496 () Bool)

(assert (=> bs!1671664 m!7329496))

(assert (=> bs!1671664 m!7328950))

(assert (=> b!6546151 d!2054975))

(declare-fun b!6546663 () Bool)

(declare-fun e!3963855 () (Set Context!11604))

(declare-fun call!569407 () (Set Context!11604))

(assert (=> b!6546663 (= e!3963855 call!569407)))

(declare-fun d!2054977 () Bool)

(declare-fun c!1202339 () Bool)

(declare-fun e!3963853 () Bool)

(assert (=> d!2054977 (= c!1202339 e!3963853)))

(declare-fun res!2685623 () Bool)

(assert (=> d!2054977 (=> (not res!2685623) (not e!3963853))))

(assert (=> d!2054977 (= res!2685623 (is-Cons!65430 (exprs!6302 lt!2400606)))))

(declare-fun e!3963854 () (Set Context!11604))

(assert (=> d!2054977 (= (derivationStepZipperUp!1592 lt!2400606 (h!71877 s!2326)) e!3963854)))

(declare-fun b!6546664 () Bool)

(assert (=> b!6546664 (= e!3963855 (as set.empty (Set Context!11604)))))

(declare-fun bm!569402 () Bool)

(assert (=> bm!569402 (= call!569407 (derivationStepZipperDown!1666 (h!71878 (exprs!6302 lt!2400606)) (Context!11605 (t!379196 (exprs!6302 lt!2400606))) (h!71877 s!2326)))))

(declare-fun b!6546665 () Bool)

(assert (=> b!6546665 (= e!3963854 e!3963855)))

(declare-fun c!1202340 () Bool)

(assert (=> b!6546665 (= c!1202340 (is-Cons!65430 (exprs!6302 lt!2400606)))))

(declare-fun b!6546666 () Bool)

(assert (=> b!6546666 (= e!3963854 (set.union call!569407 (derivationStepZipperUp!1592 (Context!11605 (t!379196 (exprs!6302 lt!2400606))) (h!71877 s!2326))))))

(declare-fun b!6546667 () Bool)

(assert (=> b!6546667 (= e!3963853 (nullable!6411 (h!71878 (exprs!6302 lt!2400606))))))

(assert (= (and d!2054977 res!2685623) b!6546667))

(assert (= (and d!2054977 c!1202339) b!6546666))

(assert (= (and d!2054977 (not c!1202339)) b!6546665))

(assert (= (and b!6546665 c!1202340) b!6546663))

(assert (= (and b!6546665 (not c!1202340)) b!6546664))

(assert (= (or b!6546666 b!6546663) bm!569402))

(declare-fun m!7329498 () Bool)

(assert (=> bm!569402 m!7329498))

(declare-fun m!7329500 () Bool)

(assert (=> b!6546666 m!7329500))

(declare-fun m!7329502 () Bool)

(assert (=> b!6546667 m!7329502))

(assert (=> b!6546151 d!2054977))

(declare-fun d!2054979 () Bool)

(assert (=> d!2054979 (= (flatMap!1923 lt!2400572 lambda!363382) (choose!48637 lt!2400572 lambda!363382))))

(declare-fun bs!1671665 () Bool)

(assert (= bs!1671665 d!2054979))

(declare-fun m!7329504 () Bool)

(assert (=> bs!1671665 m!7329504))

(assert (=> b!6546151 d!2054979))

(declare-fun d!2054981 () Bool)

(assert (=> d!2054981 (= (flatMap!1923 lt!2400624 lambda!363382) (choose!48637 lt!2400624 lambda!363382))))

(declare-fun bs!1671666 () Bool)

(assert (= bs!1671666 d!2054981))

(declare-fun m!7329506 () Bool)

(assert (=> bs!1671666 m!7329506))

(assert (=> b!6546172 d!2054981))

(declare-fun b!6546668 () Bool)

(declare-fun e!3963858 () (Set Context!11604))

(declare-fun call!569408 () (Set Context!11604))

(assert (=> b!6546668 (= e!3963858 call!569408)))

(declare-fun d!2054983 () Bool)

(declare-fun c!1202341 () Bool)

(declare-fun e!3963856 () Bool)

(assert (=> d!2054983 (= c!1202341 e!3963856)))

(declare-fun res!2685624 () Bool)

(assert (=> d!2054983 (=> (not res!2685624) (not e!3963856))))

(assert (=> d!2054983 (= res!2685624 (is-Cons!65430 (exprs!6302 lt!2400599)))))

(declare-fun e!3963857 () (Set Context!11604))

(assert (=> d!2054983 (= (derivationStepZipperUp!1592 lt!2400599 (h!71877 s!2326)) e!3963857)))

(declare-fun b!6546669 () Bool)

(assert (=> b!6546669 (= e!3963858 (as set.empty (Set Context!11604)))))

(declare-fun bm!569403 () Bool)

(assert (=> bm!569403 (= call!569408 (derivationStepZipperDown!1666 (h!71878 (exprs!6302 lt!2400599)) (Context!11605 (t!379196 (exprs!6302 lt!2400599))) (h!71877 s!2326)))))

(declare-fun b!6546670 () Bool)

(assert (=> b!6546670 (= e!3963857 e!3963858)))

(declare-fun c!1202342 () Bool)

(assert (=> b!6546670 (= c!1202342 (is-Cons!65430 (exprs!6302 lt!2400599)))))

(declare-fun b!6546671 () Bool)

(assert (=> b!6546671 (= e!3963857 (set.union call!569408 (derivationStepZipperUp!1592 (Context!11605 (t!379196 (exprs!6302 lt!2400599))) (h!71877 s!2326))))))

(declare-fun b!6546672 () Bool)

(assert (=> b!6546672 (= e!3963856 (nullable!6411 (h!71878 (exprs!6302 lt!2400599))))))

(assert (= (and d!2054983 res!2685624) b!6546672))

(assert (= (and d!2054983 c!1202341) b!6546671))

(assert (= (and d!2054983 (not c!1202341)) b!6546670))

(assert (= (and b!6546670 c!1202342) b!6546668))

(assert (= (and b!6546670 (not c!1202342)) b!6546669))

(assert (= (or b!6546671 b!6546668) bm!569403))

(declare-fun m!7329508 () Bool)

(assert (=> bm!569403 m!7329508))

(declare-fun m!7329510 () Bool)

(assert (=> b!6546671 m!7329510))

(declare-fun m!7329512 () Bool)

(assert (=> b!6546672 m!7329512))

(assert (=> b!6546172 d!2054983))

(declare-fun d!2054985 () Bool)

(assert (=> d!2054985 (= (flatMap!1923 lt!2400624 lambda!363382) (dynLambda!26008 lambda!363382 lt!2400599))))

(declare-fun lt!2400833 () Unit!159007)

(assert (=> d!2054985 (= lt!2400833 (choose!48638 lt!2400624 lt!2400599 lambda!363382))))

(assert (=> d!2054985 (= lt!2400624 (set.insert lt!2400599 (as set.empty (Set Context!11604))))))

(assert (=> d!2054985 (= (lemmaFlatMapOnSingletonSet!1449 lt!2400624 lt!2400599 lambda!363382) lt!2400833)))

(declare-fun b_lambda!247807 () Bool)

(assert (=> (not b_lambda!247807) (not d!2054985)))

(declare-fun bs!1671667 () Bool)

(assert (= bs!1671667 d!2054985))

(assert (=> bs!1671667 m!7329038))

(declare-fun m!7329514 () Bool)

(assert (=> bs!1671667 m!7329514))

(declare-fun m!7329516 () Bool)

(assert (=> bs!1671667 m!7329516))

(assert (=> bs!1671667 m!7329034))

(assert (=> b!6546172 d!2054985))

(declare-fun bs!1671668 () Bool)

(declare-fun d!2054987 () Bool)

(assert (= bs!1671668 (and d!2054987 b!6546183)))

(declare-fun lambda!363437 () Int)

(assert (=> bs!1671668 (= lambda!363437 lambda!363382)))

(assert (=> d!2054987 true))

(assert (=> d!2054987 (= (derivationStepZipper!2384 lt!2400624 (h!71877 s!2326)) (flatMap!1923 lt!2400624 lambda!363437))))

(declare-fun bs!1671669 () Bool)

(assert (= bs!1671669 d!2054987))

(declare-fun m!7329518 () Bool)

(assert (=> bs!1671669 m!7329518))

(assert (=> b!6546172 d!2054987))

(declare-fun bs!1671670 () Bool)

(declare-fun d!2054989 () Bool)

(assert (= bs!1671670 (and d!2054989 b!6546191)))

(declare-fun lambda!363442 () Int)

(assert (=> bs!1671670 (= (= (exprs!6302 lt!2400603) lt!2400614) (= lambda!363442 lambda!363383))))

(assert (=> d!2054989 true))

(assert (=> d!2054989 (= (appendTo!179 lt!2400572 lt!2400603) (map!14936 lt!2400572 lambda!363442))))

(declare-fun bs!1671671 () Bool)

(assert (= bs!1671671 d!2054989))

(declare-fun m!7329520 () Bool)

(assert (=> bs!1671671 m!7329520))

(assert (=> b!6546191 d!2054989))

(declare-fun d!2054991 () Bool)

(declare-fun choose!48645 ((Set Context!11604) Int) (Set Context!11604))

(assert (=> d!2054991 (= (map!14936 lt!2400572 lambda!363383) (choose!48645 lt!2400572 lambda!363383))))

(declare-fun bs!1671672 () Bool)

(assert (= bs!1671672 d!2054991))

(declare-fun m!7329522 () Bool)

(assert (=> bs!1671672 m!7329522))

(assert (=> b!6546191 d!2054991))

(declare-fun b!6546687 () Bool)

(declare-fun res!2685630 () Bool)

(declare-fun e!3963864 () Bool)

(assert (=> b!6546687 (=> (not res!2685630) (not e!3963864))))

(declare-fun lt!2400838 () List!65554)

(declare-fun size!40486 (List!65554) Int)

(assert (=> b!6546687 (= res!2685630 (= (size!40486 lt!2400838) (+ (size!40486 lt!2400589) (size!40486 lt!2400614))))))

(declare-fun b!6546688 () Bool)

(assert (=> b!6546688 (= e!3963864 (or (not (= lt!2400614 Nil!65430)) (= lt!2400838 lt!2400589)))))

(declare-fun b!6546685 () Bool)

(declare-fun e!3963863 () List!65554)

(assert (=> b!6546685 (= e!3963863 lt!2400614)))

(declare-fun d!2054993 () Bool)

(assert (=> d!2054993 e!3963864))

(declare-fun res!2685629 () Bool)

(assert (=> d!2054993 (=> (not res!2685629) (not e!3963864))))

(declare-fun content!12538 (List!65554) (Set Regex!16418))

(assert (=> d!2054993 (= res!2685629 (= (content!12538 lt!2400838) (set.union (content!12538 lt!2400589) (content!12538 lt!2400614))))))

(assert (=> d!2054993 (= lt!2400838 e!3963863)))

(declare-fun c!1202348 () Bool)

(assert (=> d!2054993 (= c!1202348 (is-Nil!65430 lt!2400589))))

(assert (=> d!2054993 (= (++!14538 lt!2400589 lt!2400614) lt!2400838)))

(declare-fun b!6546686 () Bool)

(assert (=> b!6546686 (= e!3963863 (Cons!65430 (h!71878 lt!2400589) (++!14538 (t!379196 lt!2400589) lt!2400614)))))

(assert (= (and d!2054993 c!1202348) b!6546685))

(assert (= (and d!2054993 (not c!1202348)) b!6546686))

(assert (= (and d!2054993 res!2685629) b!6546687))

(assert (= (and b!6546687 res!2685630) b!6546688))

(declare-fun m!7329524 () Bool)

(assert (=> b!6546687 m!7329524))

(declare-fun m!7329526 () Bool)

(assert (=> b!6546687 m!7329526))

(declare-fun m!7329528 () Bool)

(assert (=> b!6546687 m!7329528))

(declare-fun m!7329530 () Bool)

(assert (=> d!2054993 m!7329530))

(declare-fun m!7329532 () Bool)

(assert (=> d!2054993 m!7329532))

(declare-fun m!7329534 () Bool)

(assert (=> d!2054993 m!7329534))

(declare-fun m!7329536 () Bool)

(assert (=> b!6546686 m!7329536))

(assert (=> b!6546191 d!2054993))

(declare-fun d!2054995 () Bool)

(declare-fun dynLambda!26009 (Int Context!11604) Context!11604)

(assert (=> d!2054995 (= (map!14936 lt!2400572 lambda!363383) (set.insert (dynLambda!26009 lambda!363383 lt!2400606) (as set.empty (Set Context!11604))))))

(declare-fun lt!2400841 () Unit!159007)

(declare-fun choose!48646 ((Set Context!11604) Context!11604 Int) Unit!159007)

(assert (=> d!2054995 (= lt!2400841 (choose!48646 lt!2400572 lt!2400606 lambda!363383))))

(assert (=> d!2054995 (= lt!2400572 (set.insert lt!2400606 (as set.empty (Set Context!11604))))))

(assert (=> d!2054995 (= (lemmaMapOnSingletonSet!201 lt!2400572 lt!2400606 lambda!363383) lt!2400841)))

(declare-fun b_lambda!247809 () Bool)

(assert (=> (not b_lambda!247809) (not d!2054995)))

(declare-fun bs!1671673 () Bool)

(assert (= bs!1671673 d!2054995))

(declare-fun m!7329538 () Bool)

(assert (=> bs!1671673 m!7329538))

(declare-fun m!7329540 () Bool)

(assert (=> bs!1671673 m!7329540))

(assert (=> bs!1671673 m!7328958))

(assert (=> bs!1671673 m!7329538))

(declare-fun m!7329542 () Bool)

(assert (=> bs!1671673 m!7329542))

(assert (=> bs!1671673 m!7329062))

(assert (=> b!6546191 d!2054995))

(declare-fun d!2054997 () Bool)

(assert (=> d!2054997 (forall!15590 (++!14538 lt!2400589 lt!2400614) lambda!363384)))

(declare-fun lt!2400844 () Unit!159007)

(declare-fun choose!48647 (List!65554 List!65554 Int) Unit!159007)

(assert (=> d!2054997 (= lt!2400844 (choose!48647 lt!2400589 lt!2400614 lambda!363384))))

(assert (=> d!2054997 (forall!15590 lt!2400589 lambda!363384)))

(assert (=> d!2054997 (= (lemmaConcatPreservesForall!391 lt!2400589 lt!2400614 lambda!363384) lt!2400844)))

(declare-fun bs!1671674 () Bool)

(assert (= bs!1671674 d!2054997))

(assert (=> bs!1671674 m!7328988))

(assert (=> bs!1671674 m!7328988))

(declare-fun m!7329544 () Bool)

(assert (=> bs!1671674 m!7329544))

(declare-fun m!7329546 () Bool)

(assert (=> bs!1671674 m!7329546))

(declare-fun m!7329548 () Bool)

(assert (=> bs!1671674 m!7329548))

(assert (=> b!6546191 d!2054997))

(declare-fun d!2054999 () Bool)

(declare-fun c!1202349 () Bool)

(assert (=> d!2054999 (= c!1202349 (isEmpty!37655 (t!379195 s!2326)))))

(declare-fun e!3963865 () Bool)

(assert (=> d!2054999 (= (matchZipper!2430 lt!2400584 (t!379195 s!2326)) e!3963865)))

(declare-fun b!6546689 () Bool)

(assert (=> b!6546689 (= e!3963865 (nullableZipper!2163 lt!2400584))))

(declare-fun b!6546690 () Bool)

(assert (=> b!6546690 (= e!3963865 (matchZipper!2430 (derivationStepZipper!2384 lt!2400584 (head!13287 (t!379195 s!2326))) (tail!12372 (t!379195 s!2326))))))

(assert (= (and d!2054999 c!1202349) b!6546689))

(assert (= (and d!2054999 (not c!1202349)) b!6546690))

(assert (=> d!2054999 m!7329328))

(declare-fun m!7329550 () Bool)

(assert (=> b!6546689 m!7329550))

(assert (=> b!6546690 m!7329332))

(assert (=> b!6546690 m!7329332))

(declare-fun m!7329552 () Bool)

(assert (=> b!6546690 m!7329552))

(assert (=> b!6546690 m!7329336))

(assert (=> b!6546690 m!7329552))

(assert (=> b!6546690 m!7329336))

(declare-fun m!7329554 () Bool)

(assert (=> b!6546690 m!7329554))

(assert (=> b!6546150 d!2054999))

(declare-fun d!2055001 () Bool)

(declare-fun c!1202350 () Bool)

(assert (=> d!2055001 (= c!1202350 (isEmpty!37655 s!2326))))

(declare-fun e!3963866 () Bool)

(assert (=> d!2055001 (= (matchZipper!2430 lt!2400624 s!2326) e!3963866)))

(declare-fun b!6546691 () Bool)

(assert (=> b!6546691 (= e!3963866 (nullableZipper!2163 lt!2400624))))

(declare-fun b!6546692 () Bool)

(assert (=> b!6546692 (= e!3963866 (matchZipper!2430 (derivationStepZipper!2384 lt!2400624 (head!13287 s!2326)) (tail!12372 s!2326)))))

(assert (= (and d!2055001 c!1202350) b!6546691))

(assert (= (and d!2055001 (not c!1202350)) b!6546692))

(assert (=> d!2055001 m!7329316))

(declare-fun m!7329556 () Bool)

(assert (=> b!6546691 m!7329556))

(assert (=> b!6546692 m!7329320))

(assert (=> b!6546692 m!7329320))

(declare-fun m!7329558 () Bool)

(assert (=> b!6546692 m!7329558))

(assert (=> b!6546692 m!7329324))

(assert (=> b!6546692 m!7329558))

(assert (=> b!6546692 m!7329324))

(declare-fun m!7329560 () Bool)

(assert (=> b!6546692 m!7329560))

(assert (=> b!6546150 d!2055001))

(declare-fun d!2055003 () Bool)

(declare-fun lt!2400845 () Regex!16418)

(assert (=> d!2055003 (validRegex!8154 lt!2400845)))

(assert (=> d!2055003 (= lt!2400845 (generalisedUnion!2262 (unfocusZipperList!1839 (Cons!65431 lt!2400599 Nil!65431))))))

(assert (=> d!2055003 (= (unfocusZipper!2160 (Cons!65431 lt!2400599 Nil!65431)) lt!2400845)))

(declare-fun bs!1671675 () Bool)

(assert (= bs!1671675 d!2055003))

(declare-fun m!7329562 () Bool)

(assert (=> bs!1671675 m!7329562))

(declare-fun m!7329564 () Bool)

(assert (=> bs!1671675 m!7329564))

(assert (=> bs!1671675 m!7329564))

(declare-fun m!7329566 () Bool)

(assert (=> bs!1671675 m!7329566))

(assert (=> b!6546190 d!2055003))

(declare-fun bs!1671676 () Bool)

(declare-fun d!2055005 () Bool)

(assert (= bs!1671676 (and d!2055005 b!6546191)))

(declare-fun lambda!363445 () Int)

(assert (=> bs!1671676 (= lambda!363445 lambda!363384)))

(declare-fun bs!1671677 () Bool)

(assert (= bs!1671677 (and d!2055005 d!2054923)))

(assert (=> bs!1671677 (= lambda!363445 lambda!363414)))

(declare-fun bs!1671678 () Bool)

(assert (= bs!1671678 (and d!2055005 d!2054925)))

(assert (=> bs!1671678 (= lambda!363445 lambda!363417)))

(assert (=> d!2055005 (matchZipper!2430 (set.insert (Context!11605 (++!14538 (exprs!6302 lt!2400606) (exprs!6302 lt!2400603))) (as set.empty (Set Context!11604))) (++!14539 (_1!36700 lt!2400613) (_2!36700 lt!2400613)))))

(declare-fun lt!2400851 () Unit!159007)

(assert (=> d!2055005 (= lt!2400851 (lemmaConcatPreservesForall!391 (exprs!6302 lt!2400606) (exprs!6302 lt!2400603) lambda!363445))))

(declare-fun lt!2400850 () Unit!159007)

(declare-fun choose!48648 (Context!11604 Context!11604 List!65553 List!65553) Unit!159007)

(assert (=> d!2055005 (= lt!2400850 (choose!48648 lt!2400606 lt!2400603 (_1!36700 lt!2400613) (_2!36700 lt!2400613)))))

(assert (=> d!2055005 (matchZipper!2430 (set.insert lt!2400606 (as set.empty (Set Context!11604))) (_1!36700 lt!2400613))))

(assert (=> d!2055005 (= (lemmaConcatenateContextMatchesConcatOfStrings!199 lt!2400606 lt!2400603 (_1!36700 lt!2400613) (_2!36700 lt!2400613)) lt!2400850)))

(declare-fun bs!1671679 () Bool)

(assert (= bs!1671679 d!2055005))

(declare-fun m!7329568 () Bool)

(assert (=> bs!1671679 m!7329568))

(assert (=> bs!1671679 m!7328958))

(declare-fun m!7329570 () Bool)

(assert (=> bs!1671679 m!7329570))

(assert (=> bs!1671679 m!7328958))

(declare-fun m!7329572 () Bool)

(assert (=> bs!1671679 m!7329572))

(declare-fun m!7329574 () Bool)

(assert (=> bs!1671679 m!7329574))

(assert (=> bs!1671679 m!7329054))

(declare-fun m!7329576 () Bool)

(assert (=> bs!1671679 m!7329576))

(assert (=> bs!1671679 m!7329576))

(assert (=> bs!1671679 m!7329054))

(declare-fun m!7329578 () Bool)

(assert (=> bs!1671679 m!7329578))

(assert (=> b!6546149 d!2055005))

(declare-fun d!2055007 () Bool)

(assert (=> d!2055007 (= (matchR!8601 lt!2400617 (_2!36700 lt!2400613)) (matchZipper!2430 lt!2400595 (_2!36700 lt!2400613)))))

(declare-fun lt!2400854 () Unit!159007)

(declare-fun choose!48649 ((Set Context!11604) List!65555 Regex!16418 List!65553) Unit!159007)

(assert (=> d!2055007 (= lt!2400854 (choose!48649 lt!2400595 lt!2400576 lt!2400617 (_2!36700 lt!2400613)))))

(assert (=> d!2055007 (validRegex!8154 lt!2400617)))

(assert (=> d!2055007 (= (theoremZipperRegexEquiv!854 lt!2400595 lt!2400576 lt!2400617 (_2!36700 lt!2400613)) lt!2400854)))

(declare-fun bs!1671680 () Bool)

(assert (= bs!1671680 d!2055007))

(assert (=> bs!1671680 m!7329010))

(assert (=> bs!1671680 m!7329044))

(declare-fun m!7329580 () Bool)

(assert (=> bs!1671680 m!7329580))

(declare-fun m!7329582 () Bool)

(assert (=> bs!1671680 m!7329582))

(assert (=> b!6546149 d!2055007))

(declare-fun d!2055009 () Bool)

(declare-fun c!1202351 () Bool)

(assert (=> d!2055009 (= c!1202351 (isEmpty!37655 lt!2400608))))

(declare-fun e!3963867 () Bool)

(assert (=> d!2055009 (= (matchZipper!2430 (set.insert (Context!11605 (++!14538 lt!2400589 lt!2400614)) (as set.empty (Set Context!11604))) lt!2400608) e!3963867)))

(declare-fun b!6546693 () Bool)

(assert (=> b!6546693 (= e!3963867 (nullableZipper!2163 (set.insert (Context!11605 (++!14538 lt!2400589 lt!2400614)) (as set.empty (Set Context!11604)))))))

(declare-fun b!6546694 () Bool)

(assert (=> b!6546694 (= e!3963867 (matchZipper!2430 (derivationStepZipper!2384 (set.insert (Context!11605 (++!14538 lt!2400589 lt!2400614)) (as set.empty (Set Context!11604))) (head!13287 lt!2400608)) (tail!12372 lt!2400608)))))

(assert (= (and d!2055009 c!1202351) b!6546693))

(assert (= (and d!2055009 (not c!1202351)) b!6546694))

(declare-fun m!7329584 () Bool)

(assert (=> d!2055009 m!7329584))

(assert (=> b!6546693 m!7328996))

(declare-fun m!7329586 () Bool)

(assert (=> b!6546693 m!7329586))

(declare-fun m!7329588 () Bool)

(assert (=> b!6546694 m!7329588))

(assert (=> b!6546694 m!7328996))

(assert (=> b!6546694 m!7329588))

(declare-fun m!7329590 () Bool)

(assert (=> b!6546694 m!7329590))

(declare-fun m!7329592 () Bool)

(assert (=> b!6546694 m!7329592))

(assert (=> b!6546694 m!7329590))

(assert (=> b!6546694 m!7329592))

(declare-fun m!7329594 () Bool)

(assert (=> b!6546694 m!7329594))

(assert (=> b!6546149 d!2055009))

(declare-fun b!6546695 () Bool)

(declare-fun e!3963873 () Bool)

(declare-fun e!3963870 () Bool)

(assert (=> b!6546695 (= e!3963873 e!3963870)))

(declare-fun res!2685634 () Bool)

(assert (=> b!6546695 (=> (not res!2685634) (not e!3963870))))

(declare-fun call!569409 () Bool)

(assert (=> b!6546695 (= res!2685634 call!569409)))

(declare-fun b!6546696 () Bool)

(declare-fun call!569411 () Bool)

(assert (=> b!6546696 (= e!3963870 call!569411)))

(declare-fun c!1202352 () Bool)

(declare-fun bm!569404 () Bool)

(declare-fun c!1202353 () Bool)

(declare-fun call!569410 () Bool)

(assert (=> bm!569404 (= call!569410 (validRegex!8154 (ite c!1202352 (reg!16747 lt!2400615) (ite c!1202353 (regTwo!33349 lt!2400615) (regTwo!33348 lt!2400615)))))))

(declare-fun b!6546697 () Bool)

(declare-fun e!3963872 () Bool)

(declare-fun e!3963874 () Bool)

(assert (=> b!6546697 (= e!3963872 e!3963874)))

(declare-fun res!2685633 () Bool)

(assert (=> b!6546697 (= res!2685633 (not (nullable!6411 (reg!16747 lt!2400615))))))

(assert (=> b!6546697 (=> (not res!2685633) (not e!3963874))))

(declare-fun b!6546699 () Bool)

(assert (=> b!6546699 (= e!3963874 call!569410)))

(declare-fun bm!569405 () Bool)

(assert (=> bm!569405 (= call!569411 call!569410)))

(declare-fun b!6546700 () Bool)

(declare-fun e!3963869 () Bool)

(assert (=> b!6546700 (= e!3963869 e!3963872)))

(assert (=> b!6546700 (= c!1202352 (is-Star!16418 lt!2400615))))

(declare-fun bm!569406 () Bool)

(assert (=> bm!569406 (= call!569409 (validRegex!8154 (ite c!1202353 (regOne!33349 lt!2400615) (regOne!33348 lt!2400615))))))

(declare-fun b!6546701 () Bool)

(declare-fun res!2685631 () Bool)

(assert (=> b!6546701 (=> res!2685631 e!3963873)))

(assert (=> b!6546701 (= res!2685631 (not (is-Concat!25263 lt!2400615)))))

(declare-fun e!3963871 () Bool)

(assert (=> b!6546701 (= e!3963871 e!3963873)))

(declare-fun d!2055011 () Bool)

(declare-fun res!2685635 () Bool)

(assert (=> d!2055011 (=> res!2685635 e!3963869)))

(assert (=> d!2055011 (= res!2685635 (is-ElementMatch!16418 lt!2400615))))

(assert (=> d!2055011 (= (validRegex!8154 lt!2400615) e!3963869)))

(declare-fun b!6546698 () Bool)

(declare-fun e!3963868 () Bool)

(assert (=> b!6546698 (= e!3963868 call!569411)))

(declare-fun b!6546702 () Bool)

(assert (=> b!6546702 (= e!3963872 e!3963871)))

(assert (=> b!6546702 (= c!1202353 (is-Union!16418 lt!2400615))))

(declare-fun b!6546703 () Bool)

(declare-fun res!2685632 () Bool)

(assert (=> b!6546703 (=> (not res!2685632) (not e!3963868))))

(assert (=> b!6546703 (= res!2685632 call!569409)))

(assert (=> b!6546703 (= e!3963871 e!3963868)))

(assert (= (and d!2055011 (not res!2685635)) b!6546700))

(assert (= (and b!6546700 c!1202352) b!6546697))

(assert (= (and b!6546700 (not c!1202352)) b!6546702))

(assert (= (and b!6546697 res!2685633) b!6546699))

(assert (= (and b!6546702 c!1202353) b!6546703))

(assert (= (and b!6546702 (not c!1202353)) b!6546701))

(assert (= (and b!6546703 res!2685632) b!6546698))

(assert (= (and b!6546701 (not res!2685631)) b!6546695))

(assert (= (and b!6546695 res!2685634) b!6546696))

(assert (= (or b!6546698 b!6546696) bm!569405))

(assert (= (or b!6546703 b!6546695) bm!569406))

(assert (= (or b!6546699 bm!569405) bm!569404))

(declare-fun m!7329596 () Bool)

(assert (=> bm!569404 m!7329596))

(declare-fun m!7329598 () Bool)

(assert (=> b!6546697 m!7329598))

(declare-fun m!7329600 () Bool)

(assert (=> bm!569406 m!7329600))

(assert (=> b!6546149 d!2055011))

(declare-fun d!2055013 () Bool)

(assert (=> d!2055013 (= (matchR!8601 (reg!16747 (regOne!33348 r!7292)) (_1!36700 lt!2400613)) (matchZipper!2430 lt!2400572 (_1!36700 lt!2400613)))))

(declare-fun lt!2400855 () Unit!159007)

(assert (=> d!2055013 (= lt!2400855 (choose!48649 lt!2400572 lt!2400574 (reg!16747 (regOne!33348 r!7292)) (_1!36700 lt!2400613)))))

(assert (=> d!2055013 (validRegex!8154 (reg!16747 (regOne!33348 r!7292)))))

(assert (=> d!2055013 (= (theoremZipperRegexEquiv!854 lt!2400572 lt!2400574 (reg!16747 (regOne!33348 r!7292)) (_1!36700 lt!2400613)) lt!2400855)))

(declare-fun bs!1671681 () Bool)

(assert (= bs!1671681 d!2055013))

(assert (=> bs!1671681 m!7328994))

(assert (=> bs!1671681 m!7329080))

(declare-fun m!7329602 () Bool)

(assert (=> bs!1671681 m!7329602))

(declare-fun m!7329604 () Bool)

(assert (=> bs!1671681 m!7329604))

(assert (=> b!6546149 d!2055013))

(declare-fun bs!1671682 () Bool)

(declare-fun b!6546712 () Bool)

(assert (= bs!1671682 (and b!6546712 b!6546628)))

(declare-fun lambda!363446 () Int)

(assert (=> bs!1671682 (not (= lambda!363446 lambda!363434))))

(declare-fun bs!1671683 () Bool)

(assert (= bs!1671683 (and b!6546712 b!6546493)))

(assert (=> bs!1671683 (not (= lambda!363446 lambda!363423))))

(declare-fun bs!1671684 () Bool)

(assert (= bs!1671684 (and b!6546712 d!2054943)))

(assert (=> bs!1671684 (not (= lambda!363446 lambda!363432))))

(declare-fun bs!1671685 () Bool)

(assert (= bs!1671685 (and b!6546712 d!2054941)))

(assert (=> bs!1671685 (not (= lambda!363446 lambda!363426))))

(declare-fun bs!1671686 () Bool)

(assert (= bs!1671686 (and b!6546712 b!6546636)))

(assert (=> bs!1671686 (= (and (= (reg!16747 lt!2400592) (reg!16747 lt!2400578)) (= lt!2400592 lt!2400578)) (= lambda!363446 lambda!363433))))

(declare-fun bs!1671687 () Bool)

(assert (= bs!1671687 (and b!6546712 b!6546501)))

(assert (=> bs!1671687 (= (and (= (reg!16747 lt!2400592) (reg!16747 r!7292)) (= lt!2400592 r!7292)) (= lambda!363446 lambda!363422))))

(assert (=> bs!1671684 (not (= lambda!363446 lambda!363431))))

(declare-fun bs!1671688 () Bool)

(assert (= bs!1671688 (and b!6546712 b!6546157)))

(assert (=> bs!1671688 (not (= lambda!363446 lambda!363381))))

(assert (=> bs!1671688 (not (= lambda!363446 lambda!363380))))

(assert (=> b!6546712 true))

(assert (=> b!6546712 true))

(declare-fun bs!1671689 () Bool)

(declare-fun b!6546704 () Bool)

(assert (= bs!1671689 (and b!6546704 b!6546493)))

(declare-fun lambda!363447 () Int)

(assert (=> bs!1671689 (= (and (= (regOne!33348 lt!2400592) (regOne!33348 r!7292)) (= (regTwo!33348 lt!2400592) (regTwo!33348 r!7292))) (= lambda!363447 lambda!363423))))

(declare-fun bs!1671690 () Bool)

(assert (= bs!1671690 (and b!6546704 d!2054943)))

(assert (=> bs!1671690 (= (and (= (regOne!33348 lt!2400592) (regOne!33348 r!7292)) (= (regTwo!33348 lt!2400592) (regTwo!33348 r!7292))) (= lambda!363447 lambda!363432))))

(declare-fun bs!1671691 () Bool)

(assert (= bs!1671691 (and b!6546704 d!2054941)))

(assert (=> bs!1671691 (not (= lambda!363447 lambda!363426))))

(declare-fun bs!1671692 () Bool)

(assert (= bs!1671692 (and b!6546704 b!6546636)))

(assert (=> bs!1671692 (not (= lambda!363447 lambda!363433))))

(declare-fun bs!1671693 () Bool)

(assert (= bs!1671693 (and b!6546704 b!6546501)))

(assert (=> bs!1671693 (not (= lambda!363447 lambda!363422))))

(assert (=> bs!1671690 (not (= lambda!363447 lambda!363431))))

(declare-fun bs!1671694 () Bool)

(assert (= bs!1671694 (and b!6546704 b!6546157)))

(assert (=> bs!1671694 (= (and (= (regOne!33348 lt!2400592) (regOne!33348 r!7292)) (= (regTwo!33348 lt!2400592) (regTwo!33348 r!7292))) (= lambda!363447 lambda!363381))))

(assert (=> bs!1671694 (not (= lambda!363447 lambda!363380))))

(declare-fun bs!1671695 () Bool)

(assert (= bs!1671695 (and b!6546704 b!6546712)))

(assert (=> bs!1671695 (not (= lambda!363447 lambda!363446))))

(declare-fun bs!1671696 () Bool)

(assert (= bs!1671696 (and b!6546704 b!6546628)))

(assert (=> bs!1671696 (= (and (= (regOne!33348 lt!2400592) (regOne!33348 lt!2400578)) (= (regTwo!33348 lt!2400592) (regTwo!33348 lt!2400578))) (= lambda!363447 lambda!363434))))

(assert (=> b!6546704 true))

(assert (=> b!6546704 true))

(declare-fun c!1202356 () Bool)

(declare-fun bm!569407 () Bool)

(declare-fun call!569412 () Bool)

(assert (=> bm!569407 (= call!569412 (Exists!3488 (ite c!1202356 lambda!363446 lambda!363447)))))

(declare-fun e!3963876 () Bool)

(assert (=> b!6546704 (= e!3963876 call!569412)))

(declare-fun b!6546705 () Bool)

(declare-fun c!1202354 () Bool)

(assert (=> b!6546705 (= c!1202354 (is-Union!16418 lt!2400592))))

(declare-fun e!3963877 () Bool)

(declare-fun e!3963881 () Bool)

(assert (=> b!6546705 (= e!3963877 e!3963881)))

(declare-fun b!6546706 () Bool)

(declare-fun res!2685636 () Bool)

(declare-fun e!3963880 () Bool)

(assert (=> b!6546706 (=> res!2685636 e!3963880)))

(declare-fun call!569413 () Bool)

(assert (=> b!6546706 (= res!2685636 call!569413)))

(assert (=> b!6546706 (= e!3963876 e!3963880)))

(declare-fun b!6546707 () Bool)

(declare-fun e!3963875 () Bool)

(assert (=> b!6546707 (= e!3963881 e!3963875)))

(declare-fun res!2685637 () Bool)

(assert (=> b!6546707 (= res!2685637 (matchRSpec!3519 (regOne!33349 lt!2400592) s!2326))))

(assert (=> b!6546707 (=> res!2685637 e!3963875)))

(declare-fun bm!569408 () Bool)

(assert (=> bm!569408 (= call!569413 (isEmpty!37655 s!2326))))

(declare-fun b!6546708 () Bool)

(assert (=> b!6546708 (= e!3963881 e!3963876)))

(assert (=> b!6546708 (= c!1202356 (is-Star!16418 lt!2400592))))

(declare-fun b!6546709 () Bool)

(assert (=> b!6546709 (= e!3963877 (= s!2326 (Cons!65429 (c!1202229 lt!2400592) Nil!65429)))))

(declare-fun b!6546710 () Bool)

(assert (=> b!6546710 (= e!3963875 (matchRSpec!3519 (regTwo!33349 lt!2400592) s!2326))))

(declare-fun b!6546711 () Bool)

(declare-fun e!3963878 () Bool)

(assert (=> b!6546711 (= e!3963878 call!569413)))

(declare-fun d!2055015 () Bool)

(declare-fun c!1202355 () Bool)

(assert (=> d!2055015 (= c!1202355 (is-EmptyExpr!16418 lt!2400592))))

(assert (=> d!2055015 (= (matchRSpec!3519 lt!2400592 s!2326) e!3963878)))

(assert (=> b!6546712 (= e!3963880 call!569412)))

(declare-fun b!6546713 () Bool)

(declare-fun c!1202357 () Bool)

(assert (=> b!6546713 (= c!1202357 (is-ElementMatch!16418 lt!2400592))))

(declare-fun e!3963879 () Bool)

(assert (=> b!6546713 (= e!3963879 e!3963877)))

(declare-fun b!6546714 () Bool)

(assert (=> b!6546714 (= e!3963878 e!3963879)))

(declare-fun res!2685638 () Bool)

(assert (=> b!6546714 (= res!2685638 (not (is-EmptyLang!16418 lt!2400592)))))

(assert (=> b!6546714 (=> (not res!2685638) (not e!3963879))))

(assert (= (and d!2055015 c!1202355) b!6546711))

(assert (= (and d!2055015 (not c!1202355)) b!6546714))

(assert (= (and b!6546714 res!2685638) b!6546713))

(assert (= (and b!6546713 c!1202357) b!6546709))

(assert (= (and b!6546713 (not c!1202357)) b!6546705))

(assert (= (and b!6546705 c!1202354) b!6546707))

(assert (= (and b!6546705 (not c!1202354)) b!6546708))

(assert (= (and b!6546707 (not res!2685637)) b!6546710))

(assert (= (and b!6546708 c!1202356) b!6546706))

(assert (= (and b!6546708 (not c!1202356)) b!6546704))

(assert (= (and b!6546706 (not res!2685636)) b!6546712))

(assert (= (or b!6546712 b!6546704) bm!569407))

(assert (= (or b!6546711 b!6546706) bm!569408))

(declare-fun m!7329606 () Bool)

(assert (=> bm!569407 m!7329606))

(declare-fun m!7329608 () Bool)

(assert (=> b!6546707 m!7329608))

(assert (=> bm!569408 m!7329316))

(declare-fun m!7329610 () Bool)

(assert (=> b!6546710 m!7329610))

(assert (=> b!6546149 d!2055015))

(assert (=> b!6546149 d!2054993))

(declare-fun b!6546715 () Bool)

(declare-fun e!3963885 () Bool)

(declare-fun e!3963888 () Bool)

(assert (=> b!6546715 (= e!3963885 e!3963888)))

(declare-fun c!1202360 () Bool)

(assert (=> b!6546715 (= c!1202360 (is-EmptyLang!16418 lt!2400578))))

(declare-fun d!2055017 () Bool)

(assert (=> d!2055017 e!3963885))

(declare-fun c!1202359 () Bool)

(assert (=> d!2055017 (= c!1202359 (is-EmptyExpr!16418 lt!2400578))))

(declare-fun lt!2400856 () Bool)

(declare-fun e!3963882 () Bool)

(assert (=> d!2055017 (= lt!2400856 e!3963882)))

(declare-fun c!1202358 () Bool)

(assert (=> d!2055017 (= c!1202358 (isEmpty!37655 lt!2400608))))

(assert (=> d!2055017 (validRegex!8154 lt!2400578)))

(assert (=> d!2055017 (= (matchR!8601 lt!2400578 lt!2400608) lt!2400856)))

(declare-fun b!6546716 () Bool)

(declare-fun res!2685640 () Bool)

(declare-fun e!3963883 () Bool)

(assert (=> b!6546716 (=> res!2685640 e!3963883)))

(assert (=> b!6546716 (= res!2685640 (not (isEmpty!37655 (tail!12372 lt!2400608))))))

(declare-fun b!6546717 () Bool)

(assert (=> b!6546717 (= e!3963882 (nullable!6411 lt!2400578))))

(declare-fun b!6546718 () Bool)

(declare-fun e!3963887 () Bool)

(assert (=> b!6546718 (= e!3963887 e!3963883)))

(declare-fun res!2685644 () Bool)

(assert (=> b!6546718 (=> res!2685644 e!3963883)))

(declare-fun call!569414 () Bool)

(assert (=> b!6546718 (= res!2685644 call!569414)))

(declare-fun b!6546719 () Bool)

(declare-fun res!2685639 () Bool)

(declare-fun e!3963886 () Bool)

(assert (=> b!6546719 (=> res!2685639 e!3963886)))

(declare-fun e!3963884 () Bool)

(assert (=> b!6546719 (= res!2685639 e!3963884)))

(declare-fun res!2685643 () Bool)

(assert (=> b!6546719 (=> (not res!2685643) (not e!3963884))))

(assert (=> b!6546719 (= res!2685643 lt!2400856)))

(declare-fun b!6546720 () Bool)

(declare-fun res!2685645 () Bool)

(assert (=> b!6546720 (=> (not res!2685645) (not e!3963884))))

(assert (=> b!6546720 (= res!2685645 (isEmpty!37655 (tail!12372 lt!2400608)))))

(declare-fun b!6546721 () Bool)

(assert (=> b!6546721 (= e!3963888 (not lt!2400856))))

(declare-fun b!6546722 () Bool)

(assert (=> b!6546722 (= e!3963882 (matchR!8601 (derivativeStep!5102 lt!2400578 (head!13287 lt!2400608)) (tail!12372 lt!2400608)))))

(declare-fun b!6546723 () Bool)

(assert (=> b!6546723 (= e!3963885 (= lt!2400856 call!569414))))

(declare-fun b!6546724 () Bool)

(assert (=> b!6546724 (= e!3963886 e!3963887)))

(declare-fun res!2685642 () Bool)

(assert (=> b!6546724 (=> (not res!2685642) (not e!3963887))))

(assert (=> b!6546724 (= res!2685642 (not lt!2400856))))

(declare-fun b!6546725 () Bool)

(assert (=> b!6546725 (= e!3963884 (= (head!13287 lt!2400608) (c!1202229 lt!2400578)))))

(declare-fun b!6546726 () Bool)

(assert (=> b!6546726 (= e!3963883 (not (= (head!13287 lt!2400608) (c!1202229 lt!2400578))))))

(declare-fun bm!569409 () Bool)

(assert (=> bm!569409 (= call!569414 (isEmpty!37655 lt!2400608))))

(declare-fun b!6546727 () Bool)

(declare-fun res!2685641 () Bool)

(assert (=> b!6546727 (=> (not res!2685641) (not e!3963884))))

(assert (=> b!6546727 (= res!2685641 (not call!569414))))

(declare-fun b!6546728 () Bool)

(declare-fun res!2685646 () Bool)

(assert (=> b!6546728 (=> res!2685646 e!3963886)))

(assert (=> b!6546728 (= res!2685646 (not (is-ElementMatch!16418 lt!2400578)))))

(assert (=> b!6546728 (= e!3963888 e!3963886)))

(assert (= (and d!2055017 c!1202358) b!6546717))

(assert (= (and d!2055017 (not c!1202358)) b!6546722))

(assert (= (and d!2055017 c!1202359) b!6546723))

(assert (= (and d!2055017 (not c!1202359)) b!6546715))

(assert (= (and b!6546715 c!1202360) b!6546721))

(assert (= (and b!6546715 (not c!1202360)) b!6546728))

(assert (= (and b!6546728 (not res!2685646)) b!6546719))

(assert (= (and b!6546719 res!2685643) b!6546727))

(assert (= (and b!6546727 res!2685641) b!6546720))

(assert (= (and b!6546720 res!2685645) b!6546725))

(assert (= (and b!6546719 (not res!2685639)) b!6546724))

(assert (= (and b!6546724 res!2685642) b!6546718))

(assert (= (and b!6546718 (not res!2685644)) b!6546716))

(assert (= (and b!6546716 (not res!2685640)) b!6546726))

(assert (= (or b!6546723 b!6546718 b!6546727) bm!569409))

(assert (=> b!6546726 m!7329588))

(assert (=> b!6546725 m!7329588))

(assert (=> b!6546722 m!7329588))

(assert (=> b!6546722 m!7329588))

(declare-fun m!7329612 () Bool)

(assert (=> b!6546722 m!7329612))

(assert (=> b!6546722 m!7329592))

(assert (=> b!6546722 m!7329612))

(assert (=> b!6546722 m!7329592))

(declare-fun m!7329614 () Bool)

(assert (=> b!6546722 m!7329614))

(assert (=> b!6546716 m!7329592))

(assert (=> b!6546716 m!7329592))

(declare-fun m!7329616 () Bool)

(assert (=> b!6546716 m!7329616))

(assert (=> d!2055017 m!7329584))

(assert (=> d!2055017 m!7329462))

(assert (=> bm!569409 m!7329584))

(assert (=> b!6546720 m!7329592))

(assert (=> b!6546720 m!7329592))

(assert (=> b!6546720 m!7329616))

(assert (=> b!6546717 m!7329464))

(assert (=> b!6546149 d!2055017))

(declare-fun b!6546729 () Bool)

(declare-fun e!3963892 () Bool)

(declare-fun e!3963895 () Bool)

(assert (=> b!6546729 (= e!3963892 e!3963895)))

(declare-fun c!1202363 () Bool)

(assert (=> b!6546729 (= c!1202363 (is-EmptyLang!16418 lt!2400617))))

(declare-fun d!2055019 () Bool)

(assert (=> d!2055019 e!3963892))

(declare-fun c!1202362 () Bool)

(assert (=> d!2055019 (= c!1202362 (is-EmptyExpr!16418 lt!2400617))))

(declare-fun lt!2400857 () Bool)

(declare-fun e!3963889 () Bool)

(assert (=> d!2055019 (= lt!2400857 e!3963889)))

(declare-fun c!1202361 () Bool)

(assert (=> d!2055019 (= c!1202361 (isEmpty!37655 (_2!36700 lt!2400613)))))

(assert (=> d!2055019 (validRegex!8154 lt!2400617)))

(assert (=> d!2055019 (= (matchR!8601 lt!2400617 (_2!36700 lt!2400613)) lt!2400857)))

(declare-fun b!6546730 () Bool)

(declare-fun res!2685648 () Bool)

(declare-fun e!3963890 () Bool)

(assert (=> b!6546730 (=> res!2685648 e!3963890)))

(assert (=> b!6546730 (= res!2685648 (not (isEmpty!37655 (tail!12372 (_2!36700 lt!2400613)))))))

(declare-fun b!6546731 () Bool)

(assert (=> b!6546731 (= e!3963889 (nullable!6411 lt!2400617))))

(declare-fun b!6546732 () Bool)

(declare-fun e!3963894 () Bool)

(assert (=> b!6546732 (= e!3963894 e!3963890)))

(declare-fun res!2685652 () Bool)

(assert (=> b!6546732 (=> res!2685652 e!3963890)))

(declare-fun call!569415 () Bool)

(assert (=> b!6546732 (= res!2685652 call!569415)))

(declare-fun b!6546733 () Bool)

(declare-fun res!2685647 () Bool)

(declare-fun e!3963893 () Bool)

(assert (=> b!6546733 (=> res!2685647 e!3963893)))

(declare-fun e!3963891 () Bool)

(assert (=> b!6546733 (= res!2685647 e!3963891)))

(declare-fun res!2685651 () Bool)

(assert (=> b!6546733 (=> (not res!2685651) (not e!3963891))))

(assert (=> b!6546733 (= res!2685651 lt!2400857)))

(declare-fun b!6546734 () Bool)

(declare-fun res!2685653 () Bool)

(assert (=> b!6546734 (=> (not res!2685653) (not e!3963891))))

(assert (=> b!6546734 (= res!2685653 (isEmpty!37655 (tail!12372 (_2!36700 lt!2400613))))))

(declare-fun b!6546735 () Bool)

(assert (=> b!6546735 (= e!3963895 (not lt!2400857))))

(declare-fun b!6546736 () Bool)

(assert (=> b!6546736 (= e!3963889 (matchR!8601 (derivativeStep!5102 lt!2400617 (head!13287 (_2!36700 lt!2400613))) (tail!12372 (_2!36700 lt!2400613))))))

(declare-fun b!6546737 () Bool)

(assert (=> b!6546737 (= e!3963892 (= lt!2400857 call!569415))))

(declare-fun b!6546738 () Bool)

(assert (=> b!6546738 (= e!3963893 e!3963894)))

(declare-fun res!2685650 () Bool)

(assert (=> b!6546738 (=> (not res!2685650) (not e!3963894))))

(assert (=> b!6546738 (= res!2685650 (not lt!2400857))))

(declare-fun b!6546739 () Bool)

(assert (=> b!6546739 (= e!3963891 (= (head!13287 (_2!36700 lt!2400613)) (c!1202229 lt!2400617)))))

(declare-fun b!6546740 () Bool)

(assert (=> b!6546740 (= e!3963890 (not (= (head!13287 (_2!36700 lt!2400613)) (c!1202229 lt!2400617))))))

(declare-fun bm!569410 () Bool)

(assert (=> bm!569410 (= call!569415 (isEmpty!37655 (_2!36700 lt!2400613)))))

(declare-fun b!6546741 () Bool)

(declare-fun res!2685649 () Bool)

(assert (=> b!6546741 (=> (not res!2685649) (not e!3963891))))

(assert (=> b!6546741 (= res!2685649 (not call!569415))))

(declare-fun b!6546742 () Bool)

(declare-fun res!2685654 () Bool)

(assert (=> b!6546742 (=> res!2685654 e!3963893)))

(assert (=> b!6546742 (= res!2685654 (not (is-ElementMatch!16418 lt!2400617)))))

(assert (=> b!6546742 (= e!3963895 e!3963893)))

(assert (= (and d!2055019 c!1202361) b!6546731))

(assert (= (and d!2055019 (not c!1202361)) b!6546736))

(assert (= (and d!2055019 c!1202362) b!6546737))

(assert (= (and d!2055019 (not c!1202362)) b!6546729))

(assert (= (and b!6546729 c!1202363) b!6546735))

(assert (= (and b!6546729 (not c!1202363)) b!6546742))

(assert (= (and b!6546742 (not res!2685654)) b!6546733))

(assert (= (and b!6546733 res!2685651) b!6546741))

(assert (= (and b!6546741 res!2685649) b!6546734))

(assert (= (and b!6546734 res!2685653) b!6546739))

(assert (= (and b!6546733 (not res!2685647)) b!6546738))

(assert (= (and b!6546738 res!2685650) b!6546732))

(assert (= (and b!6546732 (not res!2685652)) b!6546730))

(assert (= (and b!6546730 (not res!2685648)) b!6546740))

(assert (= (or b!6546737 b!6546732 b!6546741) bm!569410))

(declare-fun m!7329618 () Bool)

(assert (=> b!6546740 m!7329618))

(assert (=> b!6546739 m!7329618))

(assert (=> b!6546736 m!7329618))

(assert (=> b!6546736 m!7329618))

(declare-fun m!7329620 () Bool)

(assert (=> b!6546736 m!7329620))

(declare-fun m!7329622 () Bool)

(assert (=> b!6546736 m!7329622))

(assert (=> b!6546736 m!7329620))

(assert (=> b!6546736 m!7329622))

(declare-fun m!7329624 () Bool)

(assert (=> b!6546736 m!7329624))

(assert (=> b!6546730 m!7329622))

(assert (=> b!6546730 m!7329622))

(declare-fun m!7329626 () Bool)

(assert (=> b!6546730 m!7329626))

(declare-fun m!7329628 () Bool)

(assert (=> d!2055019 m!7329628))

(assert (=> d!2055019 m!7329582))

(assert (=> bm!569410 m!7329628))

(assert (=> b!6546734 m!7329622))

(assert (=> b!6546734 m!7329622))

(assert (=> b!6546734 m!7329626))

(declare-fun m!7329630 () Bool)

(assert (=> b!6546731 m!7329630))

(assert (=> b!6546149 d!2055019))

(assert (=> b!6546149 d!2054997))

(declare-fun b!6546743 () Bool)

(declare-fun e!3963899 () Bool)

(declare-fun e!3963902 () Bool)

(assert (=> b!6546743 (= e!3963899 e!3963902)))

(declare-fun c!1202366 () Bool)

(assert (=> b!6546743 (= c!1202366 (is-EmptyLang!16418 lt!2400592))))

(declare-fun d!2055021 () Bool)

(assert (=> d!2055021 e!3963899))

(declare-fun c!1202365 () Bool)

(assert (=> d!2055021 (= c!1202365 (is-EmptyExpr!16418 lt!2400592))))

(declare-fun lt!2400858 () Bool)

(declare-fun e!3963896 () Bool)

(assert (=> d!2055021 (= lt!2400858 e!3963896)))

(declare-fun c!1202364 () Bool)

(assert (=> d!2055021 (= c!1202364 (isEmpty!37655 s!2326))))

(assert (=> d!2055021 (validRegex!8154 lt!2400592)))

(assert (=> d!2055021 (= (matchR!8601 lt!2400592 s!2326) lt!2400858)))

(declare-fun b!6546744 () Bool)

(declare-fun res!2685656 () Bool)

(declare-fun e!3963897 () Bool)

(assert (=> b!6546744 (=> res!2685656 e!3963897)))

(assert (=> b!6546744 (= res!2685656 (not (isEmpty!37655 (tail!12372 s!2326))))))

(declare-fun b!6546745 () Bool)

(assert (=> b!6546745 (= e!3963896 (nullable!6411 lt!2400592))))

(declare-fun b!6546746 () Bool)

(declare-fun e!3963901 () Bool)

(assert (=> b!6546746 (= e!3963901 e!3963897)))

(declare-fun res!2685660 () Bool)

(assert (=> b!6546746 (=> res!2685660 e!3963897)))

(declare-fun call!569416 () Bool)

(assert (=> b!6546746 (= res!2685660 call!569416)))

(declare-fun b!6546747 () Bool)

(declare-fun res!2685655 () Bool)

(declare-fun e!3963900 () Bool)

(assert (=> b!6546747 (=> res!2685655 e!3963900)))

(declare-fun e!3963898 () Bool)

(assert (=> b!6546747 (= res!2685655 e!3963898)))

(declare-fun res!2685659 () Bool)

(assert (=> b!6546747 (=> (not res!2685659) (not e!3963898))))

(assert (=> b!6546747 (= res!2685659 lt!2400858)))

(declare-fun b!6546748 () Bool)

(declare-fun res!2685661 () Bool)

(assert (=> b!6546748 (=> (not res!2685661) (not e!3963898))))

(assert (=> b!6546748 (= res!2685661 (isEmpty!37655 (tail!12372 s!2326)))))

(declare-fun b!6546749 () Bool)

(assert (=> b!6546749 (= e!3963902 (not lt!2400858))))

(declare-fun b!6546750 () Bool)

(assert (=> b!6546750 (= e!3963896 (matchR!8601 (derivativeStep!5102 lt!2400592 (head!13287 s!2326)) (tail!12372 s!2326)))))

(declare-fun b!6546751 () Bool)

(assert (=> b!6546751 (= e!3963899 (= lt!2400858 call!569416))))

(declare-fun b!6546752 () Bool)

(assert (=> b!6546752 (= e!3963900 e!3963901)))

(declare-fun res!2685658 () Bool)

(assert (=> b!6546752 (=> (not res!2685658) (not e!3963901))))

(assert (=> b!6546752 (= res!2685658 (not lt!2400858))))

(declare-fun b!6546753 () Bool)

(assert (=> b!6546753 (= e!3963898 (= (head!13287 s!2326) (c!1202229 lt!2400592)))))

(declare-fun b!6546754 () Bool)

(assert (=> b!6546754 (= e!3963897 (not (= (head!13287 s!2326) (c!1202229 lt!2400592))))))

(declare-fun bm!569411 () Bool)

(assert (=> bm!569411 (= call!569416 (isEmpty!37655 s!2326))))

(declare-fun b!6546755 () Bool)

(declare-fun res!2685657 () Bool)

(assert (=> b!6546755 (=> (not res!2685657) (not e!3963898))))

(assert (=> b!6546755 (= res!2685657 (not call!569416))))

(declare-fun b!6546756 () Bool)

(declare-fun res!2685662 () Bool)

(assert (=> b!6546756 (=> res!2685662 e!3963900)))

(assert (=> b!6546756 (= res!2685662 (not (is-ElementMatch!16418 lt!2400592)))))

(assert (=> b!6546756 (= e!3963902 e!3963900)))

(assert (= (and d!2055021 c!1202364) b!6546745))

(assert (= (and d!2055021 (not c!1202364)) b!6546750))

(assert (= (and d!2055021 c!1202365) b!6546751))

(assert (= (and d!2055021 (not c!1202365)) b!6546743))

(assert (= (and b!6546743 c!1202366) b!6546749))

(assert (= (and b!6546743 (not c!1202366)) b!6546756))

(assert (= (and b!6546756 (not res!2685662)) b!6546747))

(assert (= (and b!6546747 res!2685659) b!6546755))

(assert (= (and b!6546755 res!2685657) b!6546748))

(assert (= (and b!6546748 res!2685661) b!6546753))

(assert (= (and b!6546747 (not res!2685655)) b!6546752))

(assert (= (and b!6546752 res!2685658) b!6546746))

(assert (= (and b!6546746 (not res!2685660)) b!6546744))

(assert (= (and b!6546744 (not res!2685656)) b!6546754))

(assert (= (or b!6546751 b!6546746 b!6546755) bm!569411))

(assert (=> b!6546754 m!7329320))

(assert (=> b!6546753 m!7329320))

(assert (=> b!6546750 m!7329320))

(assert (=> b!6546750 m!7329320))

(declare-fun m!7329632 () Bool)

(assert (=> b!6546750 m!7329632))

(assert (=> b!6546750 m!7329324))

(assert (=> b!6546750 m!7329632))

(assert (=> b!6546750 m!7329324))

(declare-fun m!7329634 () Bool)

(assert (=> b!6546750 m!7329634))

(assert (=> b!6546744 m!7329324))

(assert (=> b!6546744 m!7329324))

(assert (=> b!6546744 m!7329380))

(assert (=> d!2055021 m!7329316))

(declare-fun m!7329636 () Bool)

(assert (=> d!2055021 m!7329636))

(assert (=> bm!569411 m!7329316))

(assert (=> b!6546748 m!7329324))

(assert (=> b!6546748 m!7329324))

(assert (=> b!6546748 m!7329380))

(declare-fun m!7329638 () Bool)

(assert (=> b!6546745 m!7329638))

(assert (=> b!6546149 d!2055021))

(declare-fun b!6546757 () Bool)

(declare-fun e!3963906 () Bool)

(declare-fun e!3963909 () Bool)

(assert (=> b!6546757 (= e!3963906 e!3963909)))

(declare-fun c!1202369 () Bool)

(assert (=> b!6546757 (= c!1202369 (is-EmptyLang!16418 (reg!16747 (regOne!33348 r!7292))))))

(declare-fun d!2055023 () Bool)

(assert (=> d!2055023 e!3963906))

(declare-fun c!1202368 () Bool)

(assert (=> d!2055023 (= c!1202368 (is-EmptyExpr!16418 (reg!16747 (regOne!33348 r!7292))))))

(declare-fun lt!2400859 () Bool)

(declare-fun e!3963903 () Bool)

(assert (=> d!2055023 (= lt!2400859 e!3963903)))

(declare-fun c!1202367 () Bool)

(assert (=> d!2055023 (= c!1202367 (isEmpty!37655 (_1!36700 lt!2400613)))))

(assert (=> d!2055023 (validRegex!8154 (reg!16747 (regOne!33348 r!7292)))))

(assert (=> d!2055023 (= (matchR!8601 (reg!16747 (regOne!33348 r!7292)) (_1!36700 lt!2400613)) lt!2400859)))

(declare-fun b!6546758 () Bool)

(declare-fun res!2685664 () Bool)

(declare-fun e!3963904 () Bool)

(assert (=> b!6546758 (=> res!2685664 e!3963904)))

(assert (=> b!6546758 (= res!2685664 (not (isEmpty!37655 (tail!12372 (_1!36700 lt!2400613)))))))

(declare-fun b!6546759 () Bool)

(assert (=> b!6546759 (= e!3963903 (nullable!6411 (reg!16747 (regOne!33348 r!7292))))))

(declare-fun b!6546760 () Bool)

(declare-fun e!3963908 () Bool)

(assert (=> b!6546760 (= e!3963908 e!3963904)))

(declare-fun res!2685668 () Bool)

(assert (=> b!6546760 (=> res!2685668 e!3963904)))

(declare-fun call!569417 () Bool)

(assert (=> b!6546760 (= res!2685668 call!569417)))

(declare-fun b!6546761 () Bool)

(declare-fun res!2685663 () Bool)

(declare-fun e!3963907 () Bool)

(assert (=> b!6546761 (=> res!2685663 e!3963907)))

(declare-fun e!3963905 () Bool)

(assert (=> b!6546761 (= res!2685663 e!3963905)))

(declare-fun res!2685667 () Bool)

(assert (=> b!6546761 (=> (not res!2685667) (not e!3963905))))

(assert (=> b!6546761 (= res!2685667 lt!2400859)))

(declare-fun b!6546762 () Bool)

(declare-fun res!2685669 () Bool)

(assert (=> b!6546762 (=> (not res!2685669) (not e!3963905))))

(assert (=> b!6546762 (= res!2685669 (isEmpty!37655 (tail!12372 (_1!36700 lt!2400613))))))

(declare-fun b!6546763 () Bool)

(assert (=> b!6546763 (= e!3963909 (not lt!2400859))))

(declare-fun b!6546764 () Bool)

(assert (=> b!6546764 (= e!3963903 (matchR!8601 (derivativeStep!5102 (reg!16747 (regOne!33348 r!7292)) (head!13287 (_1!36700 lt!2400613))) (tail!12372 (_1!36700 lt!2400613))))))

(declare-fun b!6546765 () Bool)

(assert (=> b!6546765 (= e!3963906 (= lt!2400859 call!569417))))

(declare-fun b!6546766 () Bool)

(assert (=> b!6546766 (= e!3963907 e!3963908)))

(declare-fun res!2685666 () Bool)

(assert (=> b!6546766 (=> (not res!2685666) (not e!3963908))))

(assert (=> b!6546766 (= res!2685666 (not lt!2400859))))

(declare-fun b!6546767 () Bool)

(assert (=> b!6546767 (= e!3963905 (= (head!13287 (_1!36700 lt!2400613)) (c!1202229 (reg!16747 (regOne!33348 r!7292)))))))

(declare-fun b!6546768 () Bool)

(assert (=> b!6546768 (= e!3963904 (not (= (head!13287 (_1!36700 lt!2400613)) (c!1202229 (reg!16747 (regOne!33348 r!7292))))))))

(declare-fun bm!569412 () Bool)

(assert (=> bm!569412 (= call!569417 (isEmpty!37655 (_1!36700 lt!2400613)))))

(declare-fun b!6546769 () Bool)

(declare-fun res!2685665 () Bool)

(assert (=> b!6546769 (=> (not res!2685665) (not e!3963905))))

(assert (=> b!6546769 (= res!2685665 (not call!569417))))

(declare-fun b!6546770 () Bool)

(declare-fun res!2685670 () Bool)

(assert (=> b!6546770 (=> res!2685670 e!3963907)))

(assert (=> b!6546770 (= res!2685670 (not (is-ElementMatch!16418 (reg!16747 (regOne!33348 r!7292)))))))

(assert (=> b!6546770 (= e!3963909 e!3963907)))

(assert (= (and d!2055023 c!1202367) b!6546759))

(assert (= (and d!2055023 (not c!1202367)) b!6546764))

(assert (= (and d!2055023 c!1202368) b!6546765))

(assert (= (and d!2055023 (not c!1202368)) b!6546757))

(assert (= (and b!6546757 c!1202369) b!6546763))

(assert (= (and b!6546757 (not c!1202369)) b!6546770))

(assert (= (and b!6546770 (not res!2685670)) b!6546761))

(assert (= (and b!6546761 res!2685667) b!6546769))

(assert (= (and b!6546769 res!2685665) b!6546762))

(assert (= (and b!6546762 res!2685669) b!6546767))

(assert (= (and b!6546761 (not res!2685663)) b!6546766))

(assert (= (and b!6546766 res!2685666) b!6546760))

(assert (= (and b!6546760 (not res!2685668)) b!6546758))

(assert (= (and b!6546758 (not res!2685664)) b!6546768))

(assert (= (or b!6546765 b!6546760 b!6546769) bm!569412))

(assert (=> b!6546768 m!7329272))

(assert (=> b!6546767 m!7329272))

(assert (=> b!6546764 m!7329272))

(assert (=> b!6546764 m!7329272))

(declare-fun m!7329640 () Bool)

(assert (=> b!6546764 m!7329640))

(assert (=> b!6546764 m!7329276))

(assert (=> b!6546764 m!7329640))

(assert (=> b!6546764 m!7329276))

(declare-fun m!7329642 () Bool)

(assert (=> b!6546764 m!7329642))

(assert (=> b!6546758 m!7329276))

(assert (=> b!6546758 m!7329276))

(declare-fun m!7329644 () Bool)

(assert (=> b!6546758 m!7329644))

(assert (=> d!2055023 m!7329268))

(assert (=> d!2055023 m!7329604))

(assert (=> bm!569412 m!7329268))

(assert (=> b!6546762 m!7329276))

(assert (=> b!6546762 m!7329276))

(assert (=> b!6546762 m!7329644))

(declare-fun m!7329646 () Bool)

(assert (=> b!6546759 m!7329646))

(assert (=> b!6546149 d!2055023))

(declare-fun d!2055025 () Bool)

(assert (=> d!2055025 (= (matchR!8601 (Concat!25263 (Concat!25263 (reg!16747 (regOne!33348 r!7292)) lt!2400601) (regTwo!33348 r!7292)) s!2326) (matchR!8601 (Concat!25263 (reg!16747 (regOne!33348 r!7292)) (Concat!25263 lt!2400601 (regTwo!33348 r!7292))) s!2326))))

(declare-fun lt!2400862 () Unit!159007)

(declare-fun choose!48656 (Regex!16418 Regex!16418 Regex!16418 List!65553) Unit!159007)

(assert (=> d!2055025 (= lt!2400862 (choose!48656 (reg!16747 (regOne!33348 r!7292)) lt!2400601 (regTwo!33348 r!7292) s!2326))))

(declare-fun e!3963912 () Bool)

(assert (=> d!2055025 e!3963912))

(declare-fun res!2685675 () Bool)

(assert (=> d!2055025 (=> (not res!2685675) (not e!3963912))))

(assert (=> d!2055025 (= res!2685675 (validRegex!8154 (reg!16747 (regOne!33348 r!7292))))))

(assert (=> d!2055025 (= (lemmaConcatAssociative!115 (reg!16747 (regOne!33348 r!7292)) lt!2400601 (regTwo!33348 r!7292) s!2326) lt!2400862)))

(declare-fun b!6546775 () Bool)

(declare-fun res!2685676 () Bool)

(assert (=> b!6546775 (=> (not res!2685676) (not e!3963912))))

(assert (=> b!6546775 (= res!2685676 (validRegex!8154 lt!2400601))))

(declare-fun b!6546776 () Bool)

(assert (=> b!6546776 (= e!3963912 (validRegex!8154 (regTwo!33348 r!7292)))))

(assert (= (and d!2055025 res!2685675) b!6546775))

(assert (= (and b!6546775 res!2685676) b!6546776))

(declare-fun m!7329648 () Bool)

(assert (=> d!2055025 m!7329648))

(declare-fun m!7329650 () Bool)

(assert (=> d!2055025 m!7329650))

(declare-fun m!7329652 () Bool)

(assert (=> d!2055025 m!7329652))

(assert (=> d!2055025 m!7329604))

(declare-fun m!7329654 () Bool)

(assert (=> b!6546775 m!7329654))

(declare-fun m!7329656 () Bool)

(assert (=> b!6546776 m!7329656))

(assert (=> b!6546149 d!2055025))

(declare-fun d!2055027 () Bool)

(assert (=> d!2055027 (= (matchR!8601 lt!2400592 s!2326) (matchRSpec!3519 lt!2400592 s!2326))))

(declare-fun lt!2400863 () Unit!159007)

(assert (=> d!2055027 (= lt!2400863 (choose!48639 lt!2400592 s!2326))))

(assert (=> d!2055027 (validRegex!8154 lt!2400592)))

(assert (=> d!2055027 (= (mainMatchTheorem!3519 lt!2400592 s!2326) lt!2400863)))

(declare-fun bs!1671697 () Bool)

(assert (= bs!1671697 d!2055027))

(assert (=> bs!1671697 m!7328986))

(assert (=> bs!1671697 m!7329002))

(declare-fun m!7329658 () Bool)

(assert (=> bs!1671697 m!7329658))

(assert (=> bs!1671697 m!7329636))

(assert (=> b!6546149 d!2055027))

(declare-fun d!2055029 () Bool)

(assert (=> d!2055029 (matchR!8601 (Concat!25263 (reg!16747 (regOne!33348 r!7292)) lt!2400617) (++!14539 (_1!36700 lt!2400613) (_2!36700 lt!2400613)))))

(declare-fun lt!2400866 () Unit!159007)

(declare-fun choose!48657 (Regex!16418 Regex!16418 List!65553 List!65553) Unit!159007)

(assert (=> d!2055029 (= lt!2400866 (choose!48657 (reg!16747 (regOne!33348 r!7292)) lt!2400617 (_1!36700 lt!2400613) (_2!36700 lt!2400613)))))

(declare-fun e!3963915 () Bool)

(assert (=> d!2055029 e!3963915))

(declare-fun res!2685679 () Bool)

(assert (=> d!2055029 (=> (not res!2685679) (not e!3963915))))

(assert (=> d!2055029 (= res!2685679 (validRegex!8154 (reg!16747 (regOne!33348 r!7292))))))

(assert (=> d!2055029 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!339 (reg!16747 (regOne!33348 r!7292)) lt!2400617 (_1!36700 lt!2400613) (_2!36700 lt!2400613)) lt!2400866)))

(declare-fun b!6546779 () Bool)

(assert (=> b!6546779 (= e!3963915 (validRegex!8154 lt!2400617))))

(assert (= (and d!2055029 res!2685679) b!6546779))

(assert (=> d!2055029 m!7329054))

(assert (=> d!2055029 m!7329054))

(declare-fun m!7329660 () Bool)

(assert (=> d!2055029 m!7329660))

(declare-fun m!7329662 () Bool)

(assert (=> d!2055029 m!7329662))

(assert (=> d!2055029 m!7329604))

(assert (=> b!6546779 m!7329582))

(assert (=> b!6546149 d!2055029))

(declare-fun bs!1671698 () Bool)

(declare-fun d!2055031 () Bool)

(assert (= bs!1671698 (and d!2055031 b!6546191)))

(declare-fun lambda!363450 () Int)

(assert (=> bs!1671698 (= lambda!363450 lambda!363384)))

(declare-fun bs!1671699 () Bool)

(assert (= bs!1671699 (and d!2055031 d!2054923)))

(assert (=> bs!1671699 (= lambda!363450 lambda!363414)))

(declare-fun bs!1671700 () Bool)

(assert (= bs!1671700 (and d!2055031 d!2054925)))

(assert (=> bs!1671700 (= lambda!363450 lambda!363417)))

(declare-fun bs!1671701 () Bool)

(assert (= bs!1671701 (and d!2055031 d!2055005)))

(assert (=> bs!1671701 (= lambda!363450 lambda!363445)))

(assert (=> d!2055031 (= (inv!84293 (h!71879 zl!343)) (forall!15590 (exprs!6302 (h!71879 zl!343)) lambda!363450))))

(declare-fun bs!1671702 () Bool)

(assert (= bs!1671702 d!2055031))

(declare-fun m!7329664 () Bool)

(assert (=> bs!1671702 m!7329664))

(assert (=> b!6546170 d!2055031))

(declare-fun d!2055033 () Bool)

(assert (=> d!2055033 (= (get!22709 lt!2400579) (v!52493 lt!2400579))))

(assert (=> b!6546169 d!2055033))

(declare-fun b!6546798 () Bool)

(declare-fun res!2685690 () Bool)

(declare-fun e!3963930 () Bool)

(assert (=> b!6546798 (=> (not res!2685690) (not e!3963930))))

(declare-fun lt!2400873 () Option!16309)

(assert (=> b!6546798 (= res!2685690 (matchZipper!2430 lt!2400595 (_2!36700 (get!22709 lt!2400873))))))

(declare-fun b!6546799 () Bool)

(assert (=> b!6546799 (= e!3963930 (= (++!14539 (_1!36700 (get!22709 lt!2400873)) (_2!36700 (get!22709 lt!2400873))) s!2326))))

(declare-fun b!6546800 () Bool)

(declare-fun e!3963927 () Option!16309)

(declare-fun e!3963928 () Option!16309)

(assert (=> b!6546800 (= e!3963927 e!3963928)))

(declare-fun c!1202375 () Bool)

(assert (=> b!6546800 (= c!1202375 (is-Nil!65429 s!2326))))

(declare-fun b!6546801 () Bool)

(assert (=> b!6546801 (= e!3963928 None!16308)))

(declare-fun d!2055035 () Bool)

(declare-fun e!3963929 () Bool)

(assert (=> d!2055035 e!3963929))

(declare-fun res!2685692 () Bool)

(assert (=> d!2055035 (=> res!2685692 e!3963929)))

(assert (=> d!2055035 (= res!2685692 e!3963930)))

(declare-fun res!2685693 () Bool)

(assert (=> d!2055035 (=> (not res!2685693) (not e!3963930))))

(assert (=> d!2055035 (= res!2685693 (isDefined!13012 lt!2400873))))

(assert (=> d!2055035 (= lt!2400873 e!3963927)))

(declare-fun c!1202374 () Bool)

(declare-fun e!3963926 () Bool)

(assert (=> d!2055035 (= c!1202374 e!3963926)))

(declare-fun res!2685694 () Bool)

(assert (=> d!2055035 (=> (not res!2685694) (not e!3963926))))

(assert (=> d!2055035 (= res!2685694 (matchZipper!2430 lt!2400572 Nil!65429))))

(assert (=> d!2055035 (= (++!14539 Nil!65429 s!2326) s!2326)))

(assert (=> d!2055035 (= (findConcatSeparationZippers!183 lt!2400572 lt!2400595 Nil!65429 s!2326 s!2326) lt!2400873)))

(declare-fun b!6546802 () Bool)

(assert (=> b!6546802 (= e!3963927 (Some!16308 (tuple2!66795 Nil!65429 s!2326)))))

(declare-fun b!6546803 () Bool)

(declare-fun lt!2400874 () Unit!159007)

(declare-fun lt!2400875 () Unit!159007)

(assert (=> b!6546803 (= lt!2400874 lt!2400875)))

(assert (=> b!6546803 (= (++!14539 (++!14539 Nil!65429 (Cons!65429 (h!71877 s!2326) Nil!65429)) (t!379195 s!2326)) s!2326)))

(assert (=> b!6546803 (= lt!2400875 (lemmaMoveElementToOtherListKeepsConcatEq!2561 Nil!65429 (h!71877 s!2326) (t!379195 s!2326) s!2326))))

(assert (=> b!6546803 (= e!3963928 (findConcatSeparationZippers!183 lt!2400572 lt!2400595 (++!14539 Nil!65429 (Cons!65429 (h!71877 s!2326) Nil!65429)) (t!379195 s!2326) s!2326))))

(declare-fun b!6546804 () Bool)

(declare-fun res!2685691 () Bool)

(assert (=> b!6546804 (=> (not res!2685691) (not e!3963930))))

(assert (=> b!6546804 (= res!2685691 (matchZipper!2430 lt!2400572 (_1!36700 (get!22709 lt!2400873))))))

(declare-fun b!6546805 () Bool)

(assert (=> b!6546805 (= e!3963926 (matchZipper!2430 lt!2400595 s!2326))))

(declare-fun b!6546806 () Bool)

(assert (=> b!6546806 (= e!3963929 (not (isDefined!13012 lt!2400873)))))

(assert (= (and d!2055035 res!2685694) b!6546805))

(assert (= (and d!2055035 c!1202374) b!6546802))

(assert (= (and d!2055035 (not c!1202374)) b!6546800))

(assert (= (and b!6546800 c!1202375) b!6546801))

(assert (= (and b!6546800 (not c!1202375)) b!6546803))

(assert (= (and d!2055035 res!2685693) b!6546804))

(assert (= (and b!6546804 res!2685691) b!6546798))

(assert (= (and b!6546798 res!2685690) b!6546799))

(assert (= (and d!2055035 (not res!2685692)) b!6546806))

(declare-fun m!7329666 () Bool)

(assert (=> b!6546799 m!7329666))

(declare-fun m!7329668 () Bool)

(assert (=> b!6546799 m!7329668))

(assert (=> b!6546803 m!7329402))

(assert (=> b!6546803 m!7329402))

(assert (=> b!6546803 m!7329404))

(assert (=> b!6546803 m!7329406))

(assert (=> b!6546803 m!7329402))

(declare-fun m!7329670 () Bool)

(assert (=> b!6546803 m!7329670))

(declare-fun m!7329672 () Bool)

(assert (=> b!6546806 m!7329672))

(assert (=> b!6546804 m!7329666))

(declare-fun m!7329674 () Bool)

(assert (=> b!6546804 m!7329674))

(assert (=> b!6546798 m!7329666))

(declare-fun m!7329676 () Bool)

(assert (=> b!6546798 m!7329676))

(declare-fun m!7329678 () Bool)

(assert (=> b!6546805 m!7329678))

(assert (=> d!2055035 m!7329672))

(declare-fun m!7329680 () Bool)

(assert (=> d!2055035 m!7329680))

(declare-fun m!7329682 () Bool)

(assert (=> d!2055035 m!7329682))

(assert (=> b!6546169 d!2055035))

(declare-fun b!6546818 () Bool)

(declare-fun e!3963936 () Bool)

(declare-fun lt!2400878 () List!65553)

(assert (=> b!6546818 (= e!3963936 (or (not (= (_2!36700 lt!2400613) Nil!65429)) (= lt!2400878 (_1!36700 lt!2400613))))))

(declare-fun d!2055037 () Bool)

(assert (=> d!2055037 e!3963936))

(declare-fun res!2685700 () Bool)

(assert (=> d!2055037 (=> (not res!2685700) (not e!3963936))))

(declare-fun content!12539 (List!65553) (Set C!33106))

(assert (=> d!2055037 (= res!2685700 (= (content!12539 lt!2400878) (set.union (content!12539 (_1!36700 lt!2400613)) (content!12539 (_2!36700 lt!2400613)))))))

(declare-fun e!3963935 () List!65553)

(assert (=> d!2055037 (= lt!2400878 e!3963935)))

(declare-fun c!1202378 () Bool)

(assert (=> d!2055037 (= c!1202378 (is-Nil!65429 (_1!36700 lt!2400613)))))

(assert (=> d!2055037 (= (++!14539 (_1!36700 lt!2400613) (_2!36700 lt!2400613)) lt!2400878)))

(declare-fun b!6546815 () Bool)

(assert (=> b!6546815 (= e!3963935 (_2!36700 lt!2400613))))

(declare-fun b!6546817 () Bool)

(declare-fun res!2685699 () Bool)

(assert (=> b!6546817 (=> (not res!2685699) (not e!3963936))))

(declare-fun size!40487 (List!65553) Int)

(assert (=> b!6546817 (= res!2685699 (= (size!40487 lt!2400878) (+ (size!40487 (_1!36700 lt!2400613)) (size!40487 (_2!36700 lt!2400613)))))))

(declare-fun b!6546816 () Bool)

(assert (=> b!6546816 (= e!3963935 (Cons!65429 (h!71877 (_1!36700 lt!2400613)) (++!14539 (t!379195 (_1!36700 lt!2400613)) (_2!36700 lt!2400613))))))

(assert (= (and d!2055037 c!1202378) b!6546815))

(assert (= (and d!2055037 (not c!1202378)) b!6546816))

(assert (= (and d!2055037 res!2685700) b!6546817))

(assert (= (and b!6546817 res!2685699) b!6546818))

(declare-fun m!7329684 () Bool)

(assert (=> d!2055037 m!7329684))

(declare-fun m!7329686 () Bool)

(assert (=> d!2055037 m!7329686))

(declare-fun m!7329688 () Bool)

(assert (=> d!2055037 m!7329688))

(declare-fun m!7329690 () Bool)

(assert (=> b!6546817 m!7329690))

(declare-fun m!7329692 () Bool)

(assert (=> b!6546817 m!7329692))

(declare-fun m!7329694 () Bool)

(assert (=> b!6546817 m!7329694))

(declare-fun m!7329696 () Bool)

(assert (=> b!6546816 m!7329696))

(assert (=> b!6546169 d!2055037))

(declare-fun d!2055039 () Bool)

(assert (=> d!2055039 (isDefined!13012 (findConcatSeparationZippers!183 lt!2400572 (set.insert lt!2400603 (as set.empty (Set Context!11604))) Nil!65429 s!2326 s!2326))))

(declare-fun lt!2400881 () Unit!159007)

(declare-fun choose!48658 ((Set Context!11604) Context!11604 List!65553) Unit!159007)

(assert (=> d!2055039 (= lt!2400881 (choose!48658 lt!2400572 lt!2400603 s!2326))))

(assert (=> d!2055039 (matchZipper!2430 (appendTo!179 lt!2400572 lt!2400603) s!2326)))

(assert (=> d!2055039 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!183 lt!2400572 lt!2400603 s!2326) lt!2400881)))

(declare-fun bs!1671703 () Bool)

(assert (= bs!1671703 d!2055039))

(assert (=> bs!1671703 m!7329058))

(assert (=> bs!1671703 m!7328950))

(declare-fun m!7329698 () Bool)

(assert (=> bs!1671703 m!7329698))

(assert (=> bs!1671703 m!7329058))

(declare-fun m!7329700 () Bool)

(assert (=> bs!1671703 m!7329700))

(assert (=> bs!1671703 m!7328950))

(declare-fun m!7329702 () Bool)

(assert (=> bs!1671703 m!7329702))

(assert (=> bs!1671703 m!7329698))

(declare-fun m!7329704 () Bool)

(assert (=> bs!1671703 m!7329704))

(assert (=> b!6546169 d!2055039))

(declare-fun d!2055041 () Bool)

(assert (=> d!2055041 (= (isDefined!13012 lt!2400579) (not (isEmpty!37656 lt!2400579)))))

(declare-fun bs!1671704 () Bool)

(assert (= bs!1671704 d!2055041))

(declare-fun m!7329706 () Bool)

(assert (=> bs!1671704 m!7329706))

(assert (=> b!6546169 d!2055041))

(declare-fun bs!1671705 () Bool)

(declare-fun d!2055043 () Bool)

(assert (= bs!1671705 (and d!2055043 d!2054925)))

(declare-fun lambda!363453 () Int)

(assert (=> bs!1671705 (= lambda!363453 lambda!363417)))

(declare-fun bs!1671706 () Bool)

(assert (= bs!1671706 (and d!2055043 d!2055031)))

(assert (=> bs!1671706 (= lambda!363453 lambda!363450)))

(declare-fun bs!1671707 () Bool)

(assert (= bs!1671707 (and d!2055043 b!6546191)))

(assert (=> bs!1671707 (= lambda!363453 lambda!363384)))

(declare-fun bs!1671708 () Bool)

(assert (= bs!1671708 (and d!2055043 d!2054923)))

(assert (=> bs!1671708 (= lambda!363453 lambda!363414)))

(declare-fun bs!1671709 () Bool)

(assert (= bs!1671709 (and d!2055043 d!2055005)))

(assert (=> bs!1671709 (= lambda!363453 lambda!363445)))

(declare-fun b!6546839 () Bool)

(declare-fun e!3963954 () Bool)

(declare-fun e!3963950 () Bool)

(assert (=> b!6546839 (= e!3963954 e!3963950)))

(declare-fun c!1202389 () Bool)

(assert (=> b!6546839 (= c!1202389 (isEmpty!37652 (exprs!6302 (h!71879 zl!343))))))

(declare-fun b!6546840 () Bool)

(declare-fun e!3963953 () Regex!16418)

(assert (=> b!6546840 (= e!3963953 (Concat!25263 (h!71878 (exprs!6302 (h!71879 zl!343))) (generalisedConcat!2015 (t!379196 (exprs!6302 (h!71879 zl!343))))))))

(declare-fun b!6546841 () Bool)

(declare-fun e!3963951 () Bool)

(assert (=> b!6546841 (= e!3963951 (isEmpty!37652 (t!379196 (exprs!6302 (h!71879 zl!343)))))))

(declare-fun b!6546842 () Bool)

(assert (=> b!6546842 (= e!3963953 EmptyExpr!16418)))

(declare-fun b!6546843 () Bool)

(declare-fun e!3963949 () Regex!16418)

(assert (=> b!6546843 (= e!3963949 (h!71878 (exprs!6302 (h!71879 zl!343))))))

(declare-fun b!6546844 () Bool)

(declare-fun e!3963952 () Bool)

(declare-fun lt!2400884 () Regex!16418)

(declare-fun isConcat!1320 (Regex!16418) Bool)

(assert (=> b!6546844 (= e!3963952 (isConcat!1320 lt!2400884))))

(declare-fun b!6546845 () Bool)

(assert (=> b!6546845 (= e!3963950 e!3963952)))

(declare-fun c!1202390 () Bool)

(assert (=> b!6546845 (= c!1202390 (isEmpty!37652 (tail!12373 (exprs!6302 (h!71879 zl!343)))))))

(declare-fun b!6546846 () Bool)

(assert (=> b!6546846 (= e!3963952 (= lt!2400884 (head!13288 (exprs!6302 (h!71879 zl!343)))))))

(declare-fun b!6546847 () Bool)

(declare-fun isEmptyExpr!1797 (Regex!16418) Bool)

(assert (=> b!6546847 (= e!3963950 (isEmptyExpr!1797 lt!2400884))))

(assert (=> d!2055043 e!3963954))

(declare-fun res!2685706 () Bool)

(assert (=> d!2055043 (=> (not res!2685706) (not e!3963954))))

(assert (=> d!2055043 (= res!2685706 (validRegex!8154 lt!2400884))))

(assert (=> d!2055043 (= lt!2400884 e!3963949)))

(declare-fun c!1202387 () Bool)

(assert (=> d!2055043 (= c!1202387 e!3963951)))

(declare-fun res!2685705 () Bool)

(assert (=> d!2055043 (=> (not res!2685705) (not e!3963951))))

(assert (=> d!2055043 (= res!2685705 (is-Cons!65430 (exprs!6302 (h!71879 zl!343))))))

(assert (=> d!2055043 (forall!15590 (exprs!6302 (h!71879 zl!343)) lambda!363453)))

(assert (=> d!2055043 (= (generalisedConcat!2015 (exprs!6302 (h!71879 zl!343))) lt!2400884)))

(declare-fun b!6546848 () Bool)

(assert (=> b!6546848 (= e!3963949 e!3963953)))

(declare-fun c!1202388 () Bool)

(assert (=> b!6546848 (= c!1202388 (is-Cons!65430 (exprs!6302 (h!71879 zl!343))))))

(assert (= (and d!2055043 res!2685705) b!6546841))

(assert (= (and d!2055043 c!1202387) b!6546843))

(assert (= (and d!2055043 (not c!1202387)) b!6546848))

(assert (= (and b!6546848 c!1202388) b!6546840))

(assert (= (and b!6546848 (not c!1202388)) b!6546842))

(assert (= (and d!2055043 res!2685706) b!6546839))

(assert (= (and b!6546839 c!1202389) b!6546847))

(assert (= (and b!6546839 (not c!1202389)) b!6546845))

(assert (= (and b!6546845 c!1202390) b!6546846))

(assert (= (and b!6546845 (not c!1202390)) b!6546844))

(declare-fun m!7329708 () Bool)

(assert (=> b!6546845 m!7329708))

(assert (=> b!6546845 m!7329708))

(declare-fun m!7329710 () Bool)

(assert (=> b!6546845 m!7329710))

(declare-fun m!7329712 () Bool)

(assert (=> b!6546844 m!7329712))

(declare-fun m!7329714 () Bool)

(assert (=> d!2055043 m!7329714))

(declare-fun m!7329716 () Bool)

(assert (=> d!2055043 m!7329716))

(assert (=> b!6546841 m!7329076))

(declare-fun m!7329718 () Bool)

(assert (=> b!6546840 m!7329718))

(declare-fun m!7329720 () Bool)

(assert (=> b!6546846 m!7329720))

(declare-fun m!7329722 () Bool)

(assert (=> b!6546847 m!7329722))

(declare-fun m!7329724 () Bool)

(assert (=> b!6546839 m!7329724))

(assert (=> b!6546189 d!2055043))

(declare-fun d!2055045 () Bool)

(declare-fun lt!2400885 () Regex!16418)

(assert (=> d!2055045 (validRegex!8154 lt!2400885)))

(assert (=> d!2055045 (= lt!2400885 (generalisedUnion!2262 (unfocusZipperList!1839 zl!343)))))

(assert (=> d!2055045 (= (unfocusZipper!2160 zl!343) lt!2400885)))

(declare-fun bs!1671710 () Bool)

(assert (= bs!1671710 d!2055045))

(declare-fun m!7329726 () Bool)

(assert (=> bs!1671710 m!7329726))

(assert (=> bs!1671710 m!7329088))

(assert (=> bs!1671710 m!7329088))

(assert (=> bs!1671710 m!7329090))

(assert (=> b!6546167 d!2055045))

(declare-fun bs!1671711 () Bool)

(declare-fun d!2055047 () Bool)

(assert (= bs!1671711 (and d!2055047 d!2054925)))

(declare-fun lambda!363454 () Int)

(assert (=> bs!1671711 (= lambda!363454 lambda!363417)))

(declare-fun bs!1671712 () Bool)

(assert (= bs!1671712 (and d!2055047 d!2055043)))

(assert (=> bs!1671712 (= lambda!363454 lambda!363453)))

(declare-fun bs!1671713 () Bool)

(assert (= bs!1671713 (and d!2055047 d!2055031)))

(assert (=> bs!1671713 (= lambda!363454 lambda!363450)))

(declare-fun bs!1671714 () Bool)

(assert (= bs!1671714 (and d!2055047 b!6546191)))

(assert (=> bs!1671714 (= lambda!363454 lambda!363384)))

(declare-fun bs!1671715 () Bool)

(assert (= bs!1671715 (and d!2055047 d!2054923)))

(assert (=> bs!1671715 (= lambda!363454 lambda!363414)))

(declare-fun bs!1671716 () Bool)

(assert (= bs!1671716 (and d!2055047 d!2055005)))

(assert (=> bs!1671716 (= lambda!363454 lambda!363445)))

(assert (=> d!2055047 (= (inv!84293 setElem!44667) (forall!15590 (exprs!6302 setElem!44667) lambda!363454))))

(declare-fun bs!1671717 () Bool)

(assert (= bs!1671717 d!2055047))

(declare-fun m!7329728 () Bool)

(assert (=> bs!1671717 m!7329728))

(assert (=> setNonEmpty!44667 d!2055047))

(declare-fun d!2055049 () Bool)

(assert (=> d!2055049 (= (nullable!6411 (regOne!33348 (regOne!33348 r!7292))) (nullableFct!2337 (regOne!33348 (regOne!33348 r!7292))))))

(declare-fun bs!1671718 () Bool)

(assert (= bs!1671718 d!2055049))

(declare-fun m!7329730 () Bool)

(assert (=> bs!1671718 m!7329730))

(assert (=> b!6546186 d!2055049))

(declare-fun d!2055051 () Bool)

(declare-fun c!1202391 () Bool)

(assert (=> d!2055051 (= c!1202391 (isEmpty!37655 (_2!36700 lt!2400613)))))

(declare-fun e!3963955 () Bool)

(assert (=> d!2055051 (= (matchZipper!2430 lt!2400595 (_2!36700 lt!2400613)) e!3963955)))

(declare-fun b!6546849 () Bool)

(assert (=> b!6546849 (= e!3963955 (nullableZipper!2163 lt!2400595))))

(declare-fun b!6546850 () Bool)

(assert (=> b!6546850 (= e!3963955 (matchZipper!2430 (derivationStepZipper!2384 lt!2400595 (head!13287 (_2!36700 lt!2400613))) (tail!12372 (_2!36700 lt!2400613))))))

(assert (= (and d!2055051 c!1202391) b!6546849))

(assert (= (and d!2055051 (not c!1202391)) b!6546850))

(assert (=> d!2055051 m!7329628))

(declare-fun m!7329732 () Bool)

(assert (=> b!6546849 m!7329732))

(assert (=> b!6546850 m!7329618))

(assert (=> b!6546850 m!7329618))

(declare-fun m!7329734 () Bool)

(assert (=> b!6546850 m!7329734))

(assert (=> b!6546850 m!7329622))

(assert (=> b!6546850 m!7329734))

(assert (=> b!6546850 m!7329622))

(declare-fun m!7329736 () Bool)

(assert (=> b!6546850 m!7329736))

(assert (=> b!6546185 d!2055051))

(declare-fun b!6546864 () Bool)

(declare-fun e!3963958 () Bool)

(declare-fun tp!1810898 () Bool)

(declare-fun tp!1810901 () Bool)

(assert (=> b!6546864 (= e!3963958 (and tp!1810898 tp!1810901))))

(declare-fun b!6546863 () Bool)

(declare-fun tp!1810902 () Bool)

(assert (=> b!6546863 (= e!3963958 tp!1810902)))

(assert (=> b!6546184 (= tp!1810855 e!3963958)))

(declare-fun b!6546862 () Bool)

(declare-fun tp!1810899 () Bool)

(declare-fun tp!1810900 () Bool)

(assert (=> b!6546862 (= e!3963958 (and tp!1810899 tp!1810900))))

(declare-fun b!6546861 () Bool)

(assert (=> b!6546861 (= e!3963958 tp_is_empty!42089)))

(assert (= (and b!6546184 (is-ElementMatch!16418 (reg!16747 r!7292))) b!6546861))

(assert (= (and b!6546184 (is-Concat!25263 (reg!16747 r!7292))) b!6546862))

(assert (= (and b!6546184 (is-Star!16418 (reg!16747 r!7292))) b!6546863))

(assert (= (and b!6546184 (is-Union!16418 (reg!16747 r!7292))) b!6546864))

(declare-fun condSetEmpty!44673 () Bool)

(assert (=> setNonEmpty!44667 (= condSetEmpty!44673 (= setRest!44667 (as set.empty (Set Context!11604))))))

(declare-fun setRes!44673 () Bool)

(assert (=> setNonEmpty!44667 (= tp!1810851 setRes!44673)))

(declare-fun setIsEmpty!44673 () Bool)

(assert (=> setIsEmpty!44673 setRes!44673))

(declare-fun setNonEmpty!44673 () Bool)

(declare-fun tp!1810907 () Bool)

(declare-fun setElem!44673 () Context!11604)

(declare-fun e!3963961 () Bool)

(assert (=> setNonEmpty!44673 (= setRes!44673 (and tp!1810907 (inv!84293 setElem!44673) e!3963961))))

(declare-fun setRest!44673 () (Set Context!11604))

(assert (=> setNonEmpty!44673 (= setRest!44667 (set.union (set.insert setElem!44673 (as set.empty (Set Context!11604))) setRest!44673))))

(declare-fun b!6546869 () Bool)

(declare-fun tp!1810908 () Bool)

(assert (=> b!6546869 (= e!3963961 tp!1810908)))

(assert (= (and setNonEmpty!44667 condSetEmpty!44673) setIsEmpty!44673))

(assert (= (and setNonEmpty!44667 (not condSetEmpty!44673)) setNonEmpty!44673))

(assert (= setNonEmpty!44673 b!6546869))

(declare-fun m!7329738 () Bool)

(assert (=> setNonEmpty!44673 m!7329738))

(declare-fun b!6546873 () Bool)

(declare-fun e!3963962 () Bool)

(declare-fun tp!1810909 () Bool)

(declare-fun tp!1810912 () Bool)

(assert (=> b!6546873 (= e!3963962 (and tp!1810909 tp!1810912))))

(declare-fun b!6546872 () Bool)

(declare-fun tp!1810913 () Bool)

(assert (=> b!6546872 (= e!3963962 tp!1810913)))

(assert (=> b!6546161 (= tp!1810852 e!3963962)))

(declare-fun b!6546871 () Bool)

(declare-fun tp!1810910 () Bool)

(declare-fun tp!1810911 () Bool)

(assert (=> b!6546871 (= e!3963962 (and tp!1810910 tp!1810911))))

(declare-fun b!6546870 () Bool)

(assert (=> b!6546870 (= e!3963962 tp_is_empty!42089)))

(assert (= (and b!6546161 (is-ElementMatch!16418 (regOne!33349 r!7292))) b!6546870))

(assert (= (and b!6546161 (is-Concat!25263 (regOne!33349 r!7292))) b!6546871))

(assert (= (and b!6546161 (is-Star!16418 (regOne!33349 r!7292))) b!6546872))

(assert (= (and b!6546161 (is-Union!16418 (regOne!33349 r!7292))) b!6546873))

(declare-fun b!6546877 () Bool)

(declare-fun e!3963963 () Bool)

(declare-fun tp!1810914 () Bool)

(declare-fun tp!1810917 () Bool)

(assert (=> b!6546877 (= e!3963963 (and tp!1810914 tp!1810917))))

(declare-fun b!6546876 () Bool)

(declare-fun tp!1810918 () Bool)

(assert (=> b!6546876 (= e!3963963 tp!1810918)))

(assert (=> b!6546161 (= tp!1810850 e!3963963)))

(declare-fun b!6546875 () Bool)

(declare-fun tp!1810915 () Bool)

(declare-fun tp!1810916 () Bool)

(assert (=> b!6546875 (= e!3963963 (and tp!1810915 tp!1810916))))

(declare-fun b!6546874 () Bool)

(assert (=> b!6546874 (= e!3963963 tp_is_empty!42089)))

(assert (= (and b!6546161 (is-ElementMatch!16418 (regTwo!33349 r!7292))) b!6546874))

(assert (= (and b!6546161 (is-Concat!25263 (regTwo!33349 r!7292))) b!6546875))

(assert (= (and b!6546161 (is-Star!16418 (regTwo!33349 r!7292))) b!6546876))

(assert (= (and b!6546161 (is-Union!16418 (regTwo!33349 r!7292))) b!6546877))

(declare-fun b!6546882 () Bool)

(declare-fun e!3963966 () Bool)

(declare-fun tp!1810923 () Bool)

(declare-fun tp!1810924 () Bool)

(assert (=> b!6546882 (= e!3963966 (and tp!1810923 tp!1810924))))

(assert (=> b!6546166 (= tp!1810854 e!3963966)))

(assert (= (and b!6546166 (is-Cons!65430 (exprs!6302 (h!71879 zl!343)))) b!6546882))

(declare-fun b!6546887 () Bool)

(declare-fun e!3963969 () Bool)

(declare-fun tp!1810927 () Bool)

(assert (=> b!6546887 (= e!3963969 (and tp_is_empty!42089 tp!1810927))))

(assert (=> b!6546171 (= tp!1810856 e!3963969)))

(assert (= (and b!6546171 (is-Cons!65429 (t!379195 s!2326))) b!6546887))

(declare-fun b!6546895 () Bool)

(declare-fun e!3963975 () Bool)

(declare-fun tp!1810932 () Bool)

(assert (=> b!6546895 (= e!3963975 tp!1810932)))

(declare-fun tp!1810933 () Bool)

(declare-fun b!6546894 () Bool)

(declare-fun e!3963974 () Bool)

(assert (=> b!6546894 (= e!3963974 (and (inv!84293 (h!71879 (t!379197 zl!343))) e!3963975 tp!1810933))))

(assert (=> b!6546170 (= tp!1810849 e!3963974)))

(assert (= b!6546894 b!6546895))

(assert (= (and b!6546170 (is-Cons!65431 (t!379197 zl!343))) b!6546894))

(declare-fun m!7329740 () Bool)

(assert (=> b!6546894 m!7329740))

(declare-fun b!6546899 () Bool)

(declare-fun e!3963976 () Bool)

(declare-fun tp!1810934 () Bool)

(declare-fun tp!1810937 () Bool)

(assert (=> b!6546899 (= e!3963976 (and tp!1810934 tp!1810937))))

(declare-fun b!6546898 () Bool)

(declare-fun tp!1810938 () Bool)

(assert (=> b!6546898 (= e!3963976 tp!1810938)))

(assert (=> b!6546164 (= tp!1810853 e!3963976)))

(declare-fun b!6546897 () Bool)

(declare-fun tp!1810935 () Bool)

(declare-fun tp!1810936 () Bool)

(assert (=> b!6546897 (= e!3963976 (and tp!1810935 tp!1810936))))

(declare-fun b!6546896 () Bool)

(assert (=> b!6546896 (= e!3963976 tp_is_empty!42089)))

(assert (= (and b!6546164 (is-ElementMatch!16418 (regOne!33348 r!7292))) b!6546896))

(assert (= (and b!6546164 (is-Concat!25263 (regOne!33348 r!7292))) b!6546897))

(assert (= (and b!6546164 (is-Star!16418 (regOne!33348 r!7292))) b!6546898))

(assert (= (and b!6546164 (is-Union!16418 (regOne!33348 r!7292))) b!6546899))

(declare-fun b!6546903 () Bool)

(declare-fun e!3963977 () Bool)

(declare-fun tp!1810939 () Bool)

(declare-fun tp!1810942 () Bool)

(assert (=> b!6546903 (= e!3963977 (and tp!1810939 tp!1810942))))

(declare-fun b!6546902 () Bool)

(declare-fun tp!1810943 () Bool)

(assert (=> b!6546902 (= e!3963977 tp!1810943)))

(assert (=> b!6546164 (= tp!1810848 e!3963977)))

(declare-fun b!6546901 () Bool)

(declare-fun tp!1810940 () Bool)

(declare-fun tp!1810941 () Bool)

(assert (=> b!6546901 (= e!3963977 (and tp!1810940 tp!1810941))))

(declare-fun b!6546900 () Bool)

(assert (=> b!6546900 (= e!3963977 tp_is_empty!42089)))

(assert (= (and b!6546164 (is-ElementMatch!16418 (regTwo!33348 r!7292))) b!6546900))

(assert (= (and b!6546164 (is-Concat!25263 (regTwo!33348 r!7292))) b!6546901))

(assert (= (and b!6546164 (is-Star!16418 (regTwo!33348 r!7292))) b!6546902))

(assert (= (and b!6546164 (is-Union!16418 (regTwo!33348 r!7292))) b!6546903))

(declare-fun b!6546904 () Bool)

(declare-fun e!3963978 () Bool)

(declare-fun tp!1810944 () Bool)

(declare-fun tp!1810945 () Bool)

(assert (=> b!6546904 (= e!3963978 (and tp!1810944 tp!1810945))))

(assert (=> b!6546163 (= tp!1810857 e!3963978)))

(assert (= (and b!6546163 (is-Cons!65430 (exprs!6302 setElem!44667))) b!6546904))

(declare-fun b_lambda!247811 () Bool)

(assert (= b_lambda!247801 (or b!6546183 b_lambda!247811)))

(declare-fun bs!1671719 () Bool)

(declare-fun d!2055053 () Bool)

(assert (= bs!1671719 (and d!2055053 b!6546183)))

(assert (=> bs!1671719 (= (dynLambda!26008 lambda!363382 (h!71879 zl!343)) (derivationStepZipperUp!1592 (h!71879 zl!343) (h!71877 s!2326)))))

(assert (=> bs!1671719 m!7329098))

(assert (=> d!2054913 d!2055053))

(declare-fun b_lambda!247813 () Bool)

(assert (= b_lambda!247803 (or b!6546183 b_lambda!247813)))

(declare-fun bs!1671720 () Bool)

(declare-fun d!2055055 () Bool)

(assert (= bs!1671720 (and d!2055055 b!6546183)))

(assert (=> bs!1671720 (= (dynLambda!26008 lambda!363382 lt!2400606) (derivationStepZipperUp!1592 lt!2400606 (h!71877 s!2326)))))

(assert (=> bs!1671720 m!7328960))

(assert (=> d!2054971 d!2055055))

(declare-fun b_lambda!247815 () Bool)

(assert (= b_lambda!247807 (or b!6546183 b_lambda!247815)))

(declare-fun bs!1671721 () Bool)

(declare-fun d!2055057 () Bool)

(assert (= bs!1671721 (and d!2055057 b!6546183)))

(assert (=> bs!1671721 (= (dynLambda!26008 lambda!363382 lt!2400599) (derivationStepZipperUp!1592 lt!2400599 (h!71877 s!2326)))))

(assert (=> bs!1671721 m!7329042))

(assert (=> d!2054985 d!2055057))

(declare-fun b_lambda!247817 () Bool)

(assert (= b_lambda!247809 (or b!6546191 b_lambda!247817)))

(declare-fun bs!1671722 () Bool)

(declare-fun d!2055059 () Bool)

(assert (= bs!1671722 (and d!2055059 b!6546191)))

(declare-fun lt!2400886 () Unit!159007)

(assert (=> bs!1671722 (= lt!2400886 (lemmaConcatPreservesForall!391 (exprs!6302 lt!2400606) lt!2400614 lambda!363384))))

(assert (=> bs!1671722 (= (dynLambda!26009 lambda!363383 lt!2400606) (Context!11605 (++!14538 (exprs!6302 lt!2400606) lt!2400614)))))

(declare-fun m!7329742 () Bool)

(assert (=> bs!1671722 m!7329742))

(declare-fun m!7329744 () Bool)

(assert (=> bs!1671722 m!7329744))

(assert (=> d!2054995 d!2055059))

(declare-fun b_lambda!247819 () Bool)

(assert (= b_lambda!247805 (or b!6546183 b_lambda!247819)))

(declare-fun bs!1671723 () Bool)

(declare-fun d!2055061 () Bool)

(assert (= bs!1671723 (and d!2055061 b!6546183)))

(assert (=> bs!1671723 (= (dynLambda!26008 lambda!363382 lt!2400603) (derivationStepZipperUp!1592 lt!2400603 (h!71877 s!2326)))))

(assert (=> bs!1671723 m!7328956))

(assert (=> d!2054975 d!2055061))

(push 1)

(assert (not bs!1671721))

(assert (not b!6546649))

(assert (not b!6546725))

(assert (not b!6546745))

(assert (not d!2055005))

(assert (not b!6546869))

(assert (not b!6546901))

(assert (not b_lambda!247811))

(assert (not bm!569409))

(assert (not d!2055017))

(assert (not b!6546662))

(assert (not b!6546710))

(assert (not bm!569372))

(assert (not b!6546726))

(assert (not d!2055029))

(assert (not b!6546568))

(assert (not b!6546872))

(assert (not d!2054929))

(assert (not b!6546537))

(assert (not b!6546776))

(assert (not d!2055047))

(assert (not d!2055023))

(assert (not b!6546744))

(assert (not b!6546816))

(assert (not b!6546631))

(assert (not d!2054931))

(assert (not bm!569366))

(assert (not bm!569406))

(assert (not b!6546817))

(assert (not d!2054905))

(assert (not b!6546764))

(assert (not b!6546666))

(assert (not b!6546798))

(assert (not d!2054919))

(assert (not b!6546657))

(assert (not b!6546902))

(assert (not d!2054971))

(assert (not b!6546362))

(assert (not b!6546446))

(assert (not bs!1671723))

(assert (not d!2055041))

(assert (not b!6546898))

(assert (not b!6546410))

(assert (not b!6546686))

(assert (not b!6546655))

(assert (not bm!569412))

(assert (not b!6546897))

(assert (not bm!569399))

(assert (not d!2055019))

(assert (not b!6546422))

(assert (not d!2054913))

(assert (not b!6546610))

(assert (not d!2054947))

(assert (not b!6546687))

(assert (not b!6546717))

(assert (not b!6546566))

(assert (not d!2054939))

(assert (not bm!569378))

(assert (not b!6546572))

(assert (not d!2055049))

(assert (not b_lambda!247819))

(assert (not b!6546804))

(assert (not b!6546779))

(assert (not b!6546904))

(assert (not b!6546447))

(assert (not bs!1671720))

(assert (not b!6546499))

(assert (not b!6546414))

(assert (not b!6546650))

(assert (not b_lambda!247817))

(assert (not bm!569364))

(assert (not b!6546850))

(assert (not b!6546903))

(assert (not b!6546569))

(assert (not bs!1671719))

(assert (not b!6546739))

(assert (not b!6546806))

(assert (not b!6546453))

(assert (not d!2055009))

(assert (not bm!569395))

(assert (not d!2054937))

(assert (not d!2055025))

(assert (not b!6546844))

(assert (not b!6546671))

(assert (not b!6546542))

(assert (not bm!569396))

(assert (not b!6546841))

(assert (not d!2055027))

(assert (not d!2055001))

(assert (not d!2054989))

(assert (not d!2054975))

(assert (not b!6546420))

(assert (not d!2055039))

(assert (not d!2055013))

(assert (not bm!569407))

(assert (not bm!569403))

(assert (not bm!569367))

(assert (not b_lambda!247815))

(assert (not d!2054917))

(assert (not b!6546863))

(assert (not d!2054923))

(assert (not b!6546767))

(assert (not d!2054925))

(assert (not d!2054921))

(assert (not b!6546899))

(assert (not d!2055051))

(assert (not b!6546589))

(assert (not bm!569393))

(assert (not b!6546734))

(assert (not b!6546694))

(assert (not d!2054957))

(assert (not b!6546419))

(assert (not d!2054933))

(assert (not b!6546672))

(assert (not bm!569389))

(assert (not b!6546805))

(assert (not b!6546803))

(assert (not bm!569379))

(assert (not d!2055043))

(assert (not b!6546775))

(assert (not bm!569411))

(assert (not b!6546720))

(assert (not d!2055003))

(assert (not b!6546450))

(assert (not d!2054985))

(assert (not d!2054997))

(assert (not b!6546722))

(assert (not b!6546799))

(assert (not b!6546882))

(assert (not b!6546758))

(assert (not d!2055007))

(assert (not b!6546543))

(assert (not b!6546762))

(assert (not b!6546894))

(assert (not b!6546452))

(assert (not b!6546871))

(assert (not b!6546539))

(assert (not b!6546736))

(assert (not b!6546697))

(assert (not d!2054999))

(assert (not b!6546864))

(assert (not b!6546634))

(assert (not d!2054967))

(assert (not b!6546846))

(assert (not d!2054901))

(assert (not d!2054991))

(assert (not bm!569371))

(assert (not d!2054903))

(assert (not d!2054973))

(assert (not bm!569400))

(assert (not b!6546759))

(assert (not b!6546449))

(assert (not d!2054963))

(assert (not d!2054981))

(assert (not d!2054943))

(assert (not b!6546690))

(assert (not b!6546459))

(assert (not setNonEmpty!44673))

(assert (not b!6546887))

(assert (not bm!569373))

(assert (not b!6546424))

(assert (not d!2055045))

(assert (not b!6546622))

(assert (not b!6546691))

(assert (not b!6546640))

(assert (not b!6546849))

(assert (not b!6546644))

(assert (not b!6546748))

(assert (not b!6546707))

(assert (not bm!569382))

(assert (not b!6546716))

(assert (not bm!569401))

(assert (not b!6546533))

(assert (not b!6546415))

(assert (not b!6546692))

(assert (not b!6546754))

(assert (not bm!569398))

(assert (not d!2055035))

(assert (not d!2054987))

(assert (not b!6546847))

(assert (not b!6546845))

(assert (not b!6546895))

(assert (not b!6546421))

(assert (not d!2054935))

(assert (not b_lambda!247813))

(assert (not b!6546445))

(assert (not b!6546877))

(assert (not d!2054945))

(assert (not b!6546875))

(assert (not b!6546661))

(assert (not b!6546667))

(assert (not b!6546768))

(assert (not b!6546693))

(assert (not b!6546546))

(assert (not d!2055031))

(assert (not b!6546750))

(assert (not b!6546547))

(assert (not b!6546656))

(assert tp_is_empty!42089)

(assert (not bm!569402))

(assert (not b!6546876))

(assert (not b!6546873))

(assert (not b!6546740))

(assert (not b!6546840))

(assert (not b!6546839))

(assert (not b!6546689))

(assert (not b!6546730))

(assert (not b!6546409))

(assert (not b!6546570))

(assert (not b!6546641))

(assert (not b!6546534))

(assert (not d!2054961))

(assert (not b!6546361))

(assert (not bm!569391))

(assert (not d!2055021))

(assert (not bm!569410))

(assert (not d!2054941))

(assert (not d!2055037))

(assert (not b!6546496))

(assert (not d!2054993))

(assert (not b!6546390))

(assert (not b!6546753))

(assert (not bm!569404))

(assert (not d!2054995))

(assert (not b!6546567))

(assert (not d!2054979))

(assert (not b!6546862))

(assert (not b!6546731))

(assert (not bm!569408))

(assert (not bs!1671722))

(assert (not b!6546646))

(assert (not d!2054955))

(assert (not b!6546423))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

