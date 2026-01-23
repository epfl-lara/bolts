; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!631880 () Bool)

(assert start!631880)

(declare-fun b!6377953 () Bool)

(assert (=> b!6377953 true))

(assert (=> b!6377953 true))

(declare-fun lambda!351693 () Int)

(declare-fun lambda!351692 () Int)

(assert (=> b!6377953 (not (= lambda!351693 lambda!351692))))

(assert (=> b!6377953 true))

(assert (=> b!6377953 true))

(declare-fun b!6377958 () Bool)

(assert (=> b!6377958 true))

(declare-fun b!6377952 () Bool)

(declare-fun res!2623491 () Bool)

(declare-fun e!3871833 () Bool)

(assert (=> b!6377952 (=> res!2623491 e!3871833)))

(declare-datatypes ((C!32850 0))(
  ( (C!32851 (val!26127 Int)) )
))
(declare-datatypes ((Regex!16290 0))(
  ( (ElementMatch!16290 (c!1161897 C!32850)) (Concat!25135 (regOne!33092 Regex!16290) (regTwo!33092 Regex!16290)) (EmptyExpr!16290) (Star!16290 (reg!16619 Regex!16290)) (EmptyLang!16290) (Union!16290 (regOne!33093 Regex!16290) (regTwo!33093 Regex!16290)) )
))
(declare-fun lt!2369551 () Regex!16290)

(declare-fun r!7292 () Regex!16290)

(assert (=> b!6377952 (= res!2623491 (not (= lt!2369551 r!7292)))))

(declare-fun e!3871832 () Bool)

(declare-fun e!3871842 () Bool)

(assert (=> b!6377953 (= e!3871832 e!3871842)))

(declare-fun res!2623497 () Bool)

(assert (=> b!6377953 (=> res!2623497 e!3871842)))

(declare-fun lt!2369546 () Bool)

(declare-datatypes ((List!65169 0))(
  ( (Nil!65045) (Cons!65045 (h!71493 C!32850) (t!378773 List!65169)) )
))
(declare-fun s!2326 () List!65169)

(declare-fun lt!2369534 () Bool)

(assert (=> b!6377953 (= res!2623497 (or (not (= lt!2369546 lt!2369534)) (is-Nil!65045 s!2326)))))

(declare-fun Exists!3360 (Int) Bool)

(assert (=> b!6377953 (= (Exists!3360 lambda!351692) (Exists!3360 lambda!351693))))

(declare-datatypes ((Unit!158491 0))(
  ( (Unit!158492) )
))
(declare-fun lt!2369527 () Unit!158491)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1897 (Regex!16290 Regex!16290 List!65169) Unit!158491)

(assert (=> b!6377953 (= lt!2369527 (lemmaExistCutMatchRandMatchRSpecEquivalent!1897 (regOne!33092 r!7292) (regTwo!33092 r!7292) s!2326))))

(assert (=> b!6377953 (= lt!2369534 (Exists!3360 lambda!351692))))

(declare-datatypes ((tuple2!66538 0))(
  ( (tuple2!66539 (_1!36572 List!65169) (_2!36572 List!65169)) )
))
(declare-datatypes ((Option!16181 0))(
  ( (None!16180) (Some!16180 (v!52349 tuple2!66538)) )
))
(declare-fun isDefined!12884 (Option!16181) Bool)

(declare-fun findConcatSeparation!2595 (Regex!16290 Regex!16290 List!65169 List!65169 List!65169) Option!16181)

(assert (=> b!6377953 (= lt!2369534 (isDefined!12884 (findConcatSeparation!2595 (regOne!33092 r!7292) (regTwo!33092 r!7292) Nil!65045 s!2326 s!2326)))))

(declare-fun lt!2369538 () Unit!158491)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2359 (Regex!16290 Regex!16290 List!65169) Unit!158491)

(assert (=> b!6377953 (= lt!2369538 (lemmaFindConcatSeparationEquivalentToExists!2359 (regOne!33092 r!7292) (regTwo!33092 r!7292) s!2326))))

(declare-fun b!6377954 () Bool)

(declare-fun e!3871839 () Bool)

(declare-datatypes ((List!65170 0))(
  ( (Nil!65046) (Cons!65046 (h!71494 Regex!16290) (t!378774 List!65170)) )
))
(declare-datatypes ((Context!11348 0))(
  ( (Context!11349 (exprs!6174 List!65170)) )
))
(declare-fun lt!2369532 () (Set Context!11348))

(declare-fun matchZipper!2302 ((Set Context!11348) List!65169) Bool)

(assert (=> b!6377954 (= e!3871839 (matchZipper!2302 lt!2369532 (t!378773 s!2326)))))

(declare-fun b!6377955 () Bool)

(declare-fun e!3871838 () Bool)

(declare-fun tp_is_empty!41833 () Bool)

(declare-fun tp!1775223 () Bool)

(assert (=> b!6377955 (= e!3871838 (and tp_is_empty!41833 tp!1775223))))

(declare-fun b!6377956 () Bool)

(declare-fun res!2623503 () Bool)

(assert (=> b!6377956 (=> res!2623503 e!3871832)))

(declare-datatypes ((List!65171 0))(
  ( (Nil!65047) (Cons!65047 (h!71495 Context!11348) (t!378775 List!65171)) )
))
(declare-fun zl!343 () List!65171)

(declare-fun generalisedUnion!2134 (List!65170) Regex!16290)

(declare-fun unfocusZipperList!1711 (List!65171) List!65170)

(assert (=> b!6377956 (= res!2623503 (not (= r!7292 (generalisedUnion!2134 (unfocusZipperList!1711 zl!343)))))))

(declare-fun b!6377957 () Bool)

(declare-fun e!3871844 () Bool)

(declare-fun lt!2369544 () Regex!16290)

(declare-fun validRegex!8026 (Regex!16290) Bool)

(assert (=> b!6377957 (= e!3871844 (validRegex!8026 lt!2369544))))

(declare-fun e!3871828 () Bool)

(assert (=> b!6377958 (= e!3871842 e!3871828)))

(declare-fun res!2623507 () Bool)

(assert (=> b!6377958 (=> res!2623507 e!3871828)))

(assert (=> b!6377958 (= res!2623507 (or (and (is-ElementMatch!16290 (regOne!33092 r!7292)) (= (c!1161897 (regOne!33092 r!7292)) (h!71493 s!2326))) (is-Union!16290 (regOne!33092 r!7292))))))

(declare-fun lt!2369535 () Unit!158491)

(declare-fun e!3871837 () Unit!158491)

(assert (=> b!6377958 (= lt!2369535 e!3871837)))

(declare-fun c!1161896 () Bool)

(declare-fun nullable!6283 (Regex!16290) Bool)

(assert (=> b!6377958 (= c!1161896 (nullable!6283 (h!71494 (exprs!6174 (h!71495 zl!343)))))))

(declare-fun lambda!351694 () Int)

(declare-fun z!1189 () (Set Context!11348))

(declare-fun flatMap!1795 ((Set Context!11348) Int) (Set Context!11348))

(declare-fun derivationStepZipperUp!1464 (Context!11348 C!32850) (Set Context!11348))

(assert (=> b!6377958 (= (flatMap!1795 z!1189 lambda!351694) (derivationStepZipperUp!1464 (h!71495 zl!343) (h!71493 s!2326)))))

(declare-fun lt!2369542 () Unit!158491)

(declare-fun lemmaFlatMapOnSingletonSet!1321 ((Set Context!11348) Context!11348 Int) Unit!158491)

(assert (=> b!6377958 (= lt!2369542 (lemmaFlatMapOnSingletonSet!1321 z!1189 (h!71495 zl!343) lambda!351694))))

(declare-fun lt!2369529 () Context!11348)

(assert (=> b!6377958 (= lt!2369532 (derivationStepZipperUp!1464 lt!2369529 (h!71493 s!2326)))))

(declare-fun lt!2369550 () (Set Context!11348))

(declare-fun derivationStepZipperDown!1538 (Regex!16290 Context!11348 C!32850) (Set Context!11348))

(assert (=> b!6377958 (= lt!2369550 (derivationStepZipperDown!1538 (h!71494 (exprs!6174 (h!71495 zl!343))) lt!2369529 (h!71493 s!2326)))))

(assert (=> b!6377958 (= lt!2369529 (Context!11349 (t!378774 (exprs!6174 (h!71495 zl!343)))))))

(declare-fun lt!2369531 () (Set Context!11348))

(assert (=> b!6377958 (= lt!2369531 (derivationStepZipperUp!1464 (Context!11349 (Cons!65046 (h!71494 (exprs!6174 (h!71495 zl!343))) (t!378774 (exprs!6174 (h!71495 zl!343))))) (h!71493 s!2326)))))

(declare-fun res!2623505 () Bool)

(declare-fun e!3871840 () Bool)

(assert (=> start!631880 (=> (not res!2623505) (not e!3871840))))

(assert (=> start!631880 (= res!2623505 (validRegex!8026 r!7292))))

(assert (=> start!631880 e!3871840))

(declare-fun e!3871831 () Bool)

(assert (=> start!631880 e!3871831))

(declare-fun condSetEmpty!43517 () Bool)

(assert (=> start!631880 (= condSetEmpty!43517 (= z!1189 (as set.empty (Set Context!11348))))))

(declare-fun setRes!43517 () Bool)

(assert (=> start!631880 setRes!43517))

(declare-fun e!3871829 () Bool)

(assert (=> start!631880 e!3871829))

(assert (=> start!631880 e!3871838))

(declare-fun e!3871843 () Bool)

(declare-fun b!6377959 () Bool)

(declare-fun tp!1775227 () Bool)

(declare-fun inv!83973 (Context!11348) Bool)

(assert (=> b!6377959 (= e!3871829 (and (inv!83973 (h!71495 zl!343)) e!3871843 tp!1775227))))

(declare-fun b!6377960 () Bool)

(declare-fun e!3871836 () Bool)

(assert (=> b!6377960 (= e!3871836 (not e!3871832))))

(declare-fun res!2623495 () Bool)

(assert (=> b!6377960 (=> res!2623495 e!3871832)))

(assert (=> b!6377960 (= res!2623495 (not (is-Cons!65047 zl!343)))))

(declare-fun matchRSpec!3391 (Regex!16290 List!65169) Bool)

(assert (=> b!6377960 (= lt!2369546 (matchRSpec!3391 r!7292 s!2326))))

(declare-fun matchR!8473 (Regex!16290 List!65169) Bool)

(assert (=> b!6377960 (= lt!2369546 (matchR!8473 r!7292 s!2326))))

(declare-fun lt!2369553 () Unit!158491)

(declare-fun mainMatchTheorem!3391 (Regex!16290 List!65169) Unit!158491)

(assert (=> b!6377960 (= lt!2369553 (mainMatchTheorem!3391 r!7292 s!2326))))

(declare-fun b!6377961 () Bool)

(declare-fun Unit!158493 () Unit!158491)

(assert (=> b!6377961 (= e!3871837 Unit!158493)))

(declare-fun b!6377962 () Bool)

(declare-fun tp!1775224 () Bool)

(assert (=> b!6377962 (= e!3871831 tp!1775224)))

(declare-fun tp!1775230 () Bool)

(declare-fun e!3871827 () Bool)

(declare-fun setNonEmpty!43517 () Bool)

(declare-fun setElem!43517 () Context!11348)

(assert (=> setNonEmpty!43517 (= setRes!43517 (and tp!1775230 (inv!83973 setElem!43517) e!3871827))))

(declare-fun setRest!43517 () (Set Context!11348))

(assert (=> setNonEmpty!43517 (= z!1189 (set.union (set.insert setElem!43517 (as set.empty (Set Context!11348))) setRest!43517))))

(declare-fun b!6377963 () Bool)

(declare-fun res!2623512 () Bool)

(assert (=> b!6377963 (=> res!2623512 e!3871842)))

(declare-fun isEmpty!37171 (List!65170) Bool)

(assert (=> b!6377963 (= res!2623512 (isEmpty!37171 (t!378774 (exprs!6174 (h!71495 zl!343)))))))

(declare-fun b!6377964 () Bool)

(assert (=> b!6377964 (= e!3871831 tp_is_empty!41833)))

(declare-fun b!6377965 () Bool)

(declare-fun e!3871834 () Bool)

(assert (=> b!6377965 (= e!3871828 e!3871834)))

(declare-fun res!2623493 () Bool)

(assert (=> b!6377965 (=> res!2623493 e!3871834)))

(declare-fun lt!2369552 () (Set Context!11348))

(assert (=> b!6377965 (= res!2623493 (not (= lt!2369550 lt!2369552)))))

(declare-fun lt!2369537 () Context!11348)

(assert (=> b!6377965 (= lt!2369552 (derivationStepZipperDown!1538 (reg!16619 (regOne!33092 r!7292)) lt!2369537 (h!71493 s!2326)))))

(declare-fun lt!2369541 () List!65170)

(assert (=> b!6377965 (= lt!2369537 (Context!11349 lt!2369541))))

(declare-fun lt!2369543 () Regex!16290)

(assert (=> b!6377965 (= lt!2369541 (Cons!65046 lt!2369543 (t!378774 (exprs!6174 (h!71495 zl!343)))))))

(assert (=> b!6377965 (= lt!2369543 (Star!16290 (reg!16619 (regOne!33092 r!7292))))))

(declare-fun b!6377966 () Bool)

(declare-fun tp!1775226 () Bool)

(declare-fun tp!1775225 () Bool)

(assert (=> b!6377966 (= e!3871831 (and tp!1775226 tp!1775225))))

(declare-fun b!6377967 () Bool)

(declare-fun tp!1775232 () Bool)

(assert (=> b!6377967 (= e!3871843 tp!1775232)))

(declare-fun b!6377968 () Bool)

(declare-fun e!3871830 () Bool)

(assert (=> b!6377968 (= e!3871830 (nullable!6283 (regOne!33092 (regOne!33092 r!7292))))))

(declare-fun b!6377969 () Bool)

(declare-fun e!3871835 () Bool)

(declare-fun e!3871841 () Bool)

(assert (=> b!6377969 (= e!3871835 e!3871841)))

(declare-fun res!2623498 () Bool)

(assert (=> b!6377969 (=> res!2623498 e!3871841)))

(declare-fun lt!2369548 () Context!11348)

(declare-fun unfocusZipper!2032 (List!65171) Regex!16290)

(assert (=> b!6377969 (= res!2623498 (not (= (unfocusZipper!2032 (Cons!65047 lt!2369548 Nil!65047)) lt!2369544)))))

(declare-fun lt!2369545 () Regex!16290)

(assert (=> b!6377969 (= lt!2369544 (Concat!25135 (reg!16619 (regOne!33092 r!7292)) lt!2369545))))

(declare-fun b!6377970 () Bool)

(declare-fun res!2623509 () Bool)

(assert (=> b!6377970 (=> res!2623509 e!3871832)))

(declare-fun isEmpty!37172 (List!65171) Bool)

(assert (=> b!6377970 (= res!2623509 (not (isEmpty!37172 (t!378775 zl!343))))))

(declare-fun b!6377971 () Bool)

(declare-fun tp!1775229 () Bool)

(assert (=> b!6377971 (= e!3871827 tp!1775229)))

(declare-fun b!6377972 () Bool)

(declare-fun res!2623511 () Bool)

(assert (=> b!6377972 (=> res!2623511 e!3871833)))

(declare-fun lt!2369549 () (Set Context!11348))

(declare-fun lt!2369554 () (Set Context!11348))

(assert (=> b!6377972 (= res!2623511 (not (= (matchZipper!2302 lt!2369554 s!2326) (matchZipper!2302 lt!2369549 (t!378773 s!2326)))))))

(declare-fun b!6377973 () Bool)

(declare-fun tp!1775231 () Bool)

(declare-fun tp!1775228 () Bool)

(assert (=> b!6377973 (= e!3871831 (and tp!1775231 tp!1775228))))

(declare-fun setIsEmpty!43517 () Bool)

(assert (=> setIsEmpty!43517 setRes!43517))

(declare-fun b!6377974 () Bool)

(assert (=> b!6377974 (= e!3871833 e!3871835)))

(declare-fun res!2623504 () Bool)

(assert (=> b!6377974 (=> res!2623504 e!3871835)))

(assert (=> b!6377974 (= res!2623504 (not (= r!7292 lt!2369545)))))

(assert (=> b!6377974 (= lt!2369545 (Concat!25135 lt!2369543 (regTwo!33092 r!7292)))))

(declare-fun b!6377975 () Bool)

(declare-fun res!2623494 () Bool)

(assert (=> b!6377975 (=> res!2623494 e!3871828)))

(assert (=> b!6377975 (= res!2623494 (or (is-Concat!25135 (regOne!33092 r!7292)) (not (is-Star!16290 (regOne!33092 r!7292)))))))

(declare-fun b!6377976 () Bool)

(assert (=> b!6377976 (= e!3871840 e!3871836)))

(declare-fun res!2623506 () Bool)

(assert (=> b!6377976 (=> (not res!2623506) (not e!3871836))))

(assert (=> b!6377976 (= res!2623506 (= r!7292 lt!2369551))))

(assert (=> b!6377976 (= lt!2369551 (unfocusZipper!2032 zl!343))))

(declare-fun b!6377977 () Bool)

(declare-fun res!2623492 () Bool)

(assert (=> b!6377977 (=> res!2623492 e!3871844)))

(assert (=> b!6377977 (= res!2623492 (not (= (unfocusZipper!2032 (Cons!65047 lt!2369537 Nil!65047)) lt!2369545)))))

(declare-fun b!6377978 () Bool)

(assert (=> b!6377978 (= e!3871841 e!3871844)))

(declare-fun res!2623510 () Bool)

(assert (=> b!6377978 (=> res!2623510 e!3871844)))

(declare-fun lt!2369539 () Context!11348)

(assert (=> b!6377978 (= res!2623510 (not (= (unfocusZipper!2032 (Cons!65047 lt!2369539 Nil!65047)) (reg!16619 (regOne!33092 r!7292)))))))

(declare-fun lt!2369547 () (Set Context!11348))

(assert (=> b!6377978 (= (flatMap!1795 lt!2369547 lambda!351694) (derivationStepZipperUp!1464 lt!2369537 (h!71493 s!2326)))))

(declare-fun lt!2369528 () Unit!158491)

(assert (=> b!6377978 (= lt!2369528 (lemmaFlatMapOnSingletonSet!1321 lt!2369547 lt!2369537 lambda!351694))))

(declare-fun lt!2369540 () (Set Context!11348))

(assert (=> b!6377978 (= (flatMap!1795 lt!2369540 lambda!351694) (derivationStepZipperUp!1464 lt!2369539 (h!71493 s!2326)))))

(declare-fun lt!2369525 () Unit!158491)

(assert (=> b!6377978 (= lt!2369525 (lemmaFlatMapOnSingletonSet!1321 lt!2369540 lt!2369539 lambda!351694))))

(declare-fun lt!2369526 () (Set Context!11348))

(assert (=> b!6377978 (= lt!2369526 (derivationStepZipperUp!1464 lt!2369537 (h!71493 s!2326)))))

(declare-fun lt!2369530 () (Set Context!11348))

(assert (=> b!6377978 (= lt!2369530 (derivationStepZipperUp!1464 lt!2369539 (h!71493 s!2326)))))

(assert (=> b!6377978 (= lt!2369547 (set.insert lt!2369537 (as set.empty (Set Context!11348))))))

(assert (=> b!6377978 (= lt!2369540 (set.insert lt!2369539 (as set.empty (Set Context!11348))))))

(assert (=> b!6377978 (= lt!2369539 (Context!11349 (Cons!65046 (reg!16619 (regOne!33092 r!7292)) Nil!65046)))))

(declare-fun b!6377979 () Bool)

(declare-fun res!2623500 () Bool)

(assert (=> b!6377979 (=> res!2623500 e!3871828)))

(assert (=> b!6377979 (= res!2623500 e!3871830)))

(declare-fun res!2623514 () Bool)

(assert (=> b!6377979 (=> (not res!2623514) (not e!3871830))))

(assert (=> b!6377979 (= res!2623514 (is-Concat!25135 (regOne!33092 r!7292)))))

(declare-fun b!6377980 () Bool)

(assert (=> b!6377980 (= e!3871834 e!3871833)))

(declare-fun res!2623508 () Bool)

(assert (=> b!6377980 (=> res!2623508 e!3871833)))

(assert (=> b!6377980 (= res!2623508 (not (= lt!2369549 lt!2369552)))))

(assert (=> b!6377980 (= (flatMap!1795 lt!2369554 lambda!351694) (derivationStepZipperUp!1464 lt!2369548 (h!71493 s!2326)))))

(declare-fun lt!2369536 () Unit!158491)

(assert (=> b!6377980 (= lt!2369536 (lemmaFlatMapOnSingletonSet!1321 lt!2369554 lt!2369548 lambda!351694))))

(declare-fun lt!2369533 () (Set Context!11348))

(assert (=> b!6377980 (= lt!2369533 (derivationStepZipperUp!1464 lt!2369548 (h!71493 s!2326)))))

(declare-fun derivationStepZipper!2256 ((Set Context!11348) C!32850) (Set Context!11348))

(assert (=> b!6377980 (= lt!2369549 (derivationStepZipper!2256 lt!2369554 (h!71493 s!2326)))))

(assert (=> b!6377980 (= lt!2369554 (set.insert lt!2369548 (as set.empty (Set Context!11348))))))

(assert (=> b!6377980 (= lt!2369548 (Context!11349 (Cons!65046 (reg!16619 (regOne!33092 r!7292)) lt!2369541)))))

(declare-fun b!6377981 () Bool)

(declare-fun Unit!158494 () Unit!158491)

(assert (=> b!6377981 (= e!3871837 Unit!158494)))

(declare-fun lt!2369555 () Unit!158491)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1121 ((Set Context!11348) (Set Context!11348) List!65169) Unit!158491)

(assert (=> b!6377981 (= lt!2369555 (lemmaZipperConcatMatchesSameAsBothZippers!1121 lt!2369550 lt!2369532 (t!378773 s!2326)))))

(declare-fun res!2623499 () Bool)

(assert (=> b!6377981 (= res!2623499 (matchZipper!2302 lt!2369550 (t!378773 s!2326)))))

(assert (=> b!6377981 (=> res!2623499 e!3871839)))

(assert (=> b!6377981 (= (matchZipper!2302 (set.union lt!2369550 lt!2369532) (t!378773 s!2326)) e!3871839)))

(declare-fun b!6377982 () Bool)

(declare-fun res!2623501 () Bool)

(assert (=> b!6377982 (=> res!2623501 e!3871832)))

(assert (=> b!6377982 (= res!2623501 (or (is-EmptyExpr!16290 r!7292) (is-EmptyLang!16290 r!7292) (is-ElementMatch!16290 r!7292) (is-Union!16290 r!7292) (not (is-Concat!25135 r!7292))))))

(declare-fun b!6377983 () Bool)

(declare-fun res!2623496 () Bool)

(assert (=> b!6377983 (=> res!2623496 e!3871832)))

(assert (=> b!6377983 (= res!2623496 (not (is-Cons!65046 (exprs!6174 (h!71495 zl!343)))))))

(declare-fun b!6377984 () Bool)

(declare-fun res!2623502 () Bool)

(assert (=> b!6377984 (=> (not res!2623502) (not e!3871840))))

(declare-fun toList!10074 ((Set Context!11348)) List!65171)

(assert (=> b!6377984 (= res!2623502 (= (toList!10074 z!1189) zl!343))))

(declare-fun b!6377985 () Bool)

(declare-fun res!2623513 () Bool)

(assert (=> b!6377985 (=> res!2623513 e!3871832)))

(declare-fun generalisedConcat!1887 (List!65170) Regex!16290)

(assert (=> b!6377985 (= res!2623513 (not (= r!7292 (generalisedConcat!1887 (exprs!6174 (h!71495 zl!343))))))))

(assert (= (and start!631880 res!2623505) b!6377984))

(assert (= (and b!6377984 res!2623502) b!6377976))

(assert (= (and b!6377976 res!2623506) b!6377960))

(assert (= (and b!6377960 (not res!2623495)) b!6377970))

(assert (= (and b!6377970 (not res!2623509)) b!6377985))

(assert (= (and b!6377985 (not res!2623513)) b!6377983))

(assert (= (and b!6377983 (not res!2623496)) b!6377956))

(assert (= (and b!6377956 (not res!2623503)) b!6377982))

(assert (= (and b!6377982 (not res!2623501)) b!6377953))

(assert (= (and b!6377953 (not res!2623497)) b!6377963))

(assert (= (and b!6377963 (not res!2623512)) b!6377958))

(assert (= (and b!6377958 c!1161896) b!6377981))

(assert (= (and b!6377958 (not c!1161896)) b!6377961))

(assert (= (and b!6377981 (not res!2623499)) b!6377954))

(assert (= (and b!6377958 (not res!2623507)) b!6377979))

(assert (= (and b!6377979 res!2623514) b!6377968))

(assert (= (and b!6377979 (not res!2623500)) b!6377975))

(assert (= (and b!6377975 (not res!2623494)) b!6377965))

(assert (= (and b!6377965 (not res!2623493)) b!6377980))

(assert (= (and b!6377980 (not res!2623508)) b!6377972))

(assert (= (and b!6377972 (not res!2623511)) b!6377952))

(assert (= (and b!6377952 (not res!2623491)) b!6377974))

(assert (= (and b!6377974 (not res!2623504)) b!6377969))

(assert (= (and b!6377969 (not res!2623498)) b!6377978))

(assert (= (and b!6377978 (not res!2623510)) b!6377977))

(assert (= (and b!6377977 (not res!2623492)) b!6377957))

(assert (= (and start!631880 (is-ElementMatch!16290 r!7292)) b!6377964))

(assert (= (and start!631880 (is-Concat!25135 r!7292)) b!6377966))

(assert (= (and start!631880 (is-Star!16290 r!7292)) b!6377962))

(assert (= (and start!631880 (is-Union!16290 r!7292)) b!6377973))

(assert (= (and start!631880 condSetEmpty!43517) setIsEmpty!43517))

(assert (= (and start!631880 (not condSetEmpty!43517)) setNonEmpty!43517))

(assert (= setNonEmpty!43517 b!6377971))

(assert (= b!6377959 b!6377967))

(assert (= (and start!631880 (is-Cons!65047 zl!343)) b!6377959))

(assert (= (and start!631880 (is-Cons!65045 s!2326)) b!6377955))

(declare-fun m!7179128 () Bool)

(assert (=> b!6377960 m!7179128))

(declare-fun m!7179130 () Bool)

(assert (=> b!6377960 m!7179130))

(declare-fun m!7179132 () Bool)

(assert (=> b!6377960 m!7179132))

(declare-fun m!7179134 () Bool)

(assert (=> setNonEmpty!43517 m!7179134))

(declare-fun m!7179136 () Bool)

(assert (=> start!631880 m!7179136))

(declare-fun m!7179138 () Bool)

(assert (=> b!6377965 m!7179138))

(declare-fun m!7179140 () Bool)

(assert (=> b!6377977 m!7179140))

(declare-fun m!7179142 () Bool)

(assert (=> b!6377981 m!7179142))

(declare-fun m!7179144 () Bool)

(assert (=> b!6377981 m!7179144))

(declare-fun m!7179146 () Bool)

(assert (=> b!6377981 m!7179146))

(declare-fun m!7179148 () Bool)

(assert (=> b!6377963 m!7179148))

(declare-fun m!7179150 () Bool)

(assert (=> b!6377954 m!7179150))

(declare-fun m!7179152 () Bool)

(assert (=> b!6377953 m!7179152))

(declare-fun m!7179154 () Bool)

(assert (=> b!6377953 m!7179154))

(declare-fun m!7179156 () Bool)

(assert (=> b!6377953 m!7179156))

(declare-fun m!7179158 () Bool)

(assert (=> b!6377953 m!7179158))

(assert (=> b!6377953 m!7179158))

(declare-fun m!7179160 () Bool)

(assert (=> b!6377953 m!7179160))

(assert (=> b!6377953 m!7179154))

(declare-fun m!7179162 () Bool)

(assert (=> b!6377953 m!7179162))

(declare-fun m!7179164 () Bool)

(assert (=> b!6377968 m!7179164))

(declare-fun m!7179166 () Bool)

(assert (=> b!6377958 m!7179166))

(declare-fun m!7179168 () Bool)

(assert (=> b!6377958 m!7179168))

(declare-fun m!7179170 () Bool)

(assert (=> b!6377958 m!7179170))

(declare-fun m!7179172 () Bool)

(assert (=> b!6377958 m!7179172))

(declare-fun m!7179174 () Bool)

(assert (=> b!6377958 m!7179174))

(declare-fun m!7179176 () Bool)

(assert (=> b!6377958 m!7179176))

(declare-fun m!7179178 () Bool)

(assert (=> b!6377958 m!7179178))

(declare-fun m!7179180 () Bool)

(assert (=> b!6377970 m!7179180))

(declare-fun m!7179182 () Bool)

(assert (=> b!6377978 m!7179182))

(declare-fun m!7179184 () Bool)

(assert (=> b!6377978 m!7179184))

(declare-fun m!7179186 () Bool)

(assert (=> b!6377978 m!7179186))

(declare-fun m!7179188 () Bool)

(assert (=> b!6377978 m!7179188))

(declare-fun m!7179190 () Bool)

(assert (=> b!6377978 m!7179190))

(declare-fun m!7179192 () Bool)

(assert (=> b!6377978 m!7179192))

(declare-fun m!7179194 () Bool)

(assert (=> b!6377978 m!7179194))

(declare-fun m!7179196 () Bool)

(assert (=> b!6377978 m!7179196))

(declare-fun m!7179198 () Bool)

(assert (=> b!6377978 m!7179198))

(declare-fun m!7179200 () Bool)

(assert (=> b!6377980 m!7179200))

(declare-fun m!7179202 () Bool)

(assert (=> b!6377980 m!7179202))

(declare-fun m!7179204 () Bool)

(assert (=> b!6377980 m!7179204))

(declare-fun m!7179206 () Bool)

(assert (=> b!6377980 m!7179206))

(declare-fun m!7179208 () Bool)

(assert (=> b!6377980 m!7179208))

(declare-fun m!7179210 () Bool)

(assert (=> b!6377957 m!7179210))

(declare-fun m!7179212 () Bool)

(assert (=> b!6377976 m!7179212))

(declare-fun m!7179214 () Bool)

(assert (=> b!6377984 m!7179214))

(declare-fun m!7179216 () Bool)

(assert (=> b!6377972 m!7179216))

(declare-fun m!7179218 () Bool)

(assert (=> b!6377972 m!7179218))

(declare-fun m!7179220 () Bool)

(assert (=> b!6377969 m!7179220))

(declare-fun m!7179222 () Bool)

(assert (=> b!6377956 m!7179222))

(assert (=> b!6377956 m!7179222))

(declare-fun m!7179224 () Bool)

(assert (=> b!6377956 m!7179224))

(declare-fun m!7179226 () Bool)

(assert (=> b!6377959 m!7179226))

(declare-fun m!7179228 () Bool)

(assert (=> b!6377985 m!7179228))

(push 1)

(assert (not b!6377963))

(assert (not b!6377985))

(assert (not b!6377957))

(assert (not b!6377954))

(assert (not b!6377977))

(assert (not b!6377976))

(assert (not setNonEmpty!43517))

(assert (not b!6377968))

(assert (not b!6377967))

(assert (not b!6377962))

(assert (not b!6377971))

(assert (not b!6377956))

(assert (not b!6377965))

(assert (not b!6377966))

(assert tp_is_empty!41833)

(assert (not b!6377984))

(assert (not b!6377972))

(assert (not b!6377958))

(assert (not b!6377969))

(assert (not start!631880))

(assert (not b!6377981))

(assert (not b!6377970))

(assert (not b!6377980))

(assert (not b!6377955))

(assert (not b!6377953))

(assert (not b!6377959))

(assert (not b!6377960))

(assert (not b!6377973))

(assert (not b!6377978))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2000079 () Bool)

(declare-fun nullableFct!2229 (Regex!16290) Bool)

(assert (=> d!2000079 (= (nullable!6283 (regOne!33092 (regOne!33092 r!7292))) (nullableFct!2229 (regOne!33092 (regOne!33092 r!7292))))))

(declare-fun bs!1596834 () Bool)

(assert (= bs!1596834 d!2000079))

(declare-fun m!7179332 () Bool)

(assert (=> bs!1596834 m!7179332))

(assert (=> b!6377968 d!2000079))

(declare-fun b!6378122 () Bool)

(declare-fun e!3871912 () (Set Context!11348))

(declare-fun e!3871913 () (Set Context!11348))

(assert (=> b!6378122 (= e!3871912 e!3871913)))

(declare-fun c!1161916 () Bool)

(assert (=> b!6378122 (= c!1161916 (is-Cons!65046 (exprs!6174 lt!2369529)))))

(declare-fun b!6378123 () Bool)

(declare-fun e!3871911 () Bool)

(assert (=> b!6378123 (= e!3871911 (nullable!6283 (h!71494 (exprs!6174 lt!2369529))))))

(declare-fun b!6378124 () Bool)

(assert (=> b!6378124 (= e!3871913 (as set.empty (Set Context!11348)))))

(declare-fun b!6378125 () Bool)

(declare-fun call!544955 () (Set Context!11348))

(assert (=> b!6378125 (= e!3871913 call!544955)))

(declare-fun bm!544950 () Bool)

(assert (=> bm!544950 (= call!544955 (derivationStepZipperDown!1538 (h!71494 (exprs!6174 lt!2369529)) (Context!11349 (t!378774 (exprs!6174 lt!2369529))) (h!71493 s!2326)))))

(declare-fun b!6378126 () Bool)

(assert (=> b!6378126 (= e!3871912 (set.union call!544955 (derivationStepZipperUp!1464 (Context!11349 (t!378774 (exprs!6174 lt!2369529))) (h!71493 s!2326))))))

(declare-fun d!2000081 () Bool)

(declare-fun c!1161915 () Bool)

(assert (=> d!2000081 (= c!1161915 e!3871911)))

(declare-fun res!2623601 () Bool)

(assert (=> d!2000081 (=> (not res!2623601) (not e!3871911))))

(assert (=> d!2000081 (= res!2623601 (is-Cons!65046 (exprs!6174 lt!2369529)))))

(assert (=> d!2000081 (= (derivationStepZipperUp!1464 lt!2369529 (h!71493 s!2326)) e!3871912)))

(assert (= (and d!2000081 res!2623601) b!6378123))

(assert (= (and d!2000081 c!1161915) b!6378126))

(assert (= (and d!2000081 (not c!1161915)) b!6378122))

(assert (= (and b!6378122 c!1161916) b!6378125))

(assert (= (and b!6378122 (not c!1161916)) b!6378124))

(assert (= (or b!6378126 b!6378125) bm!544950))

(declare-fun m!7179334 () Bool)

(assert (=> b!6378123 m!7179334))

(declare-fun m!7179336 () Bool)

(assert (=> bm!544950 m!7179336))

(declare-fun m!7179338 () Bool)

(assert (=> b!6378126 m!7179338))

(assert (=> b!6377958 d!2000081))

(declare-fun bm!544963 () Bool)

(declare-fun call!544969 () (Set Context!11348))

(declare-fun call!544970 () (Set Context!11348))

(assert (=> bm!544963 (= call!544969 call!544970)))

(declare-fun b!6378149 () Bool)

(declare-fun e!3871931 () Bool)

(assert (=> b!6378149 (= e!3871931 (nullable!6283 (regOne!33092 (h!71494 (exprs!6174 (h!71495 zl!343))))))))

(declare-fun b!6378150 () Bool)

(declare-fun e!3871929 () (Set Context!11348))

(declare-fun call!544973 () (Set Context!11348))

(assert (=> b!6378150 (= e!3871929 (set.union call!544973 call!544969))))

(declare-fun c!1161931 () Bool)

(declare-fun bm!544965 () Bool)

(declare-fun c!1161927 () Bool)

(declare-fun call!544972 () List!65170)

(declare-fun c!1161930 () Bool)

(assert (=> bm!544965 (= call!544970 (derivationStepZipperDown!1538 (ite c!1161930 (regTwo!33093 (h!71494 (exprs!6174 (h!71495 zl!343)))) (ite c!1161927 (regTwo!33092 (h!71494 (exprs!6174 (h!71495 zl!343)))) (ite c!1161931 (regOne!33092 (h!71494 (exprs!6174 (h!71495 zl!343)))) (reg!16619 (h!71494 (exprs!6174 (h!71495 zl!343))))))) (ite (or c!1161930 c!1161927) lt!2369529 (Context!11349 call!544972)) (h!71493 s!2326)))))

(declare-fun b!6378151 () Bool)

(declare-fun e!3871926 () (Set Context!11348))

(declare-fun call!544968 () (Set Context!11348))

(assert (=> b!6378151 (= e!3871926 call!544968)))

(declare-fun b!6378152 () Bool)

(declare-fun e!3871928 () (Set Context!11348))

(assert (=> b!6378152 (= e!3871928 (set.insert lt!2369529 (as set.empty (Set Context!11348))))))

(declare-fun b!6378153 () Bool)

(assert (=> b!6378153 (= c!1161927 e!3871931)))

(declare-fun res!2623604 () Bool)

(assert (=> b!6378153 (=> (not res!2623604) (not e!3871931))))

(assert (=> b!6378153 (= res!2623604 (is-Concat!25135 (h!71494 (exprs!6174 (h!71495 zl!343)))))))

(declare-fun e!3871927 () (Set Context!11348))

(assert (=> b!6378153 (= e!3871927 e!3871929)))

(declare-fun bm!544966 () Bool)

(declare-fun call!544971 () List!65170)

(assert (=> bm!544966 (= call!544972 call!544971)))

(declare-fun b!6378154 () Bool)

(declare-fun e!3871930 () (Set Context!11348))

(assert (=> b!6378154 (= e!3871930 (as set.empty (Set Context!11348)))))

(declare-fun b!6378155 () Bool)

(declare-fun c!1161929 () Bool)

(assert (=> b!6378155 (= c!1161929 (is-Star!16290 (h!71494 (exprs!6174 (h!71495 zl!343)))))))

(assert (=> b!6378155 (= e!3871926 e!3871930)))

(declare-fun d!2000083 () Bool)

(declare-fun c!1161928 () Bool)

(assert (=> d!2000083 (= c!1161928 (and (is-ElementMatch!16290 (h!71494 (exprs!6174 (h!71495 zl!343)))) (= (c!1161897 (h!71494 (exprs!6174 (h!71495 zl!343)))) (h!71493 s!2326))))))

(assert (=> d!2000083 (= (derivationStepZipperDown!1538 (h!71494 (exprs!6174 (h!71495 zl!343))) lt!2369529 (h!71493 s!2326)) e!3871928)))

(declare-fun bm!544964 () Bool)

(assert (=> bm!544964 (= call!544968 call!544969)))

(declare-fun bm!544967 () Bool)

(declare-fun $colon$colon!2151 (List!65170 Regex!16290) List!65170)

(assert (=> bm!544967 (= call!544971 ($colon$colon!2151 (exprs!6174 lt!2369529) (ite (or c!1161927 c!1161931) (regTwo!33092 (h!71494 (exprs!6174 (h!71495 zl!343)))) (h!71494 (exprs!6174 (h!71495 zl!343))))))))

(declare-fun b!6378156 () Bool)

(assert (=> b!6378156 (= e!3871927 (set.union call!544973 call!544970))))

(declare-fun b!6378157 () Bool)

(assert (=> b!6378157 (= e!3871930 call!544968)))

(declare-fun b!6378158 () Bool)

(assert (=> b!6378158 (= e!3871928 e!3871927)))

(assert (=> b!6378158 (= c!1161930 (is-Union!16290 (h!71494 (exprs!6174 (h!71495 zl!343)))))))

(declare-fun bm!544968 () Bool)

(assert (=> bm!544968 (= call!544973 (derivationStepZipperDown!1538 (ite c!1161930 (regOne!33093 (h!71494 (exprs!6174 (h!71495 zl!343)))) (regOne!33092 (h!71494 (exprs!6174 (h!71495 zl!343))))) (ite c!1161930 lt!2369529 (Context!11349 call!544971)) (h!71493 s!2326)))))

(declare-fun b!6378159 () Bool)

(assert (=> b!6378159 (= e!3871929 e!3871926)))

(assert (=> b!6378159 (= c!1161931 (is-Concat!25135 (h!71494 (exprs!6174 (h!71495 zl!343)))))))

(assert (= (and d!2000083 c!1161928) b!6378152))

(assert (= (and d!2000083 (not c!1161928)) b!6378158))

(assert (= (and b!6378158 c!1161930) b!6378156))

(assert (= (and b!6378158 (not c!1161930)) b!6378153))

(assert (= (and b!6378153 res!2623604) b!6378149))

(assert (= (and b!6378153 c!1161927) b!6378150))

(assert (= (and b!6378153 (not c!1161927)) b!6378159))

(assert (= (and b!6378159 c!1161931) b!6378151))

(assert (= (and b!6378159 (not c!1161931)) b!6378155))

(assert (= (and b!6378155 c!1161929) b!6378157))

(assert (= (and b!6378155 (not c!1161929)) b!6378154))

(assert (= (or b!6378151 b!6378157) bm!544966))

(assert (= (or b!6378151 b!6378157) bm!544964))

(assert (= (or b!6378150 bm!544966) bm!544967))

(assert (= (or b!6378150 bm!544964) bm!544963))

(assert (= (or b!6378156 bm!544963) bm!544965))

(assert (= (or b!6378156 b!6378150) bm!544968))

(declare-fun m!7179340 () Bool)

(assert (=> bm!544965 m!7179340))

(declare-fun m!7179342 () Bool)

(assert (=> b!6378149 m!7179342))

(declare-fun m!7179344 () Bool)

(assert (=> b!6378152 m!7179344))

(declare-fun m!7179346 () Bool)

(assert (=> bm!544968 m!7179346))

(declare-fun m!7179348 () Bool)

(assert (=> bm!544967 m!7179348))

(assert (=> b!6377958 d!2000083))

(declare-fun d!2000085 () Bool)

(assert (=> d!2000085 (= (nullable!6283 (h!71494 (exprs!6174 (h!71495 zl!343)))) (nullableFct!2229 (h!71494 (exprs!6174 (h!71495 zl!343)))))))

(declare-fun bs!1596835 () Bool)

(assert (= bs!1596835 d!2000085))

(declare-fun m!7179350 () Bool)

(assert (=> bs!1596835 m!7179350))

(assert (=> b!6377958 d!2000085))

(declare-fun b!6378160 () Bool)

(declare-fun e!3871933 () (Set Context!11348))

(declare-fun e!3871934 () (Set Context!11348))

(assert (=> b!6378160 (= e!3871933 e!3871934)))

(declare-fun c!1161933 () Bool)

(assert (=> b!6378160 (= c!1161933 (is-Cons!65046 (exprs!6174 (Context!11349 (Cons!65046 (h!71494 (exprs!6174 (h!71495 zl!343))) (t!378774 (exprs!6174 (h!71495 zl!343))))))))))

(declare-fun b!6378161 () Bool)

(declare-fun e!3871932 () Bool)

(assert (=> b!6378161 (= e!3871932 (nullable!6283 (h!71494 (exprs!6174 (Context!11349 (Cons!65046 (h!71494 (exprs!6174 (h!71495 zl!343))) (t!378774 (exprs!6174 (h!71495 zl!343)))))))))))

(declare-fun b!6378162 () Bool)

(assert (=> b!6378162 (= e!3871934 (as set.empty (Set Context!11348)))))

(declare-fun b!6378163 () Bool)

(declare-fun call!544974 () (Set Context!11348))

(assert (=> b!6378163 (= e!3871934 call!544974)))

(declare-fun bm!544969 () Bool)

(assert (=> bm!544969 (= call!544974 (derivationStepZipperDown!1538 (h!71494 (exprs!6174 (Context!11349 (Cons!65046 (h!71494 (exprs!6174 (h!71495 zl!343))) (t!378774 (exprs!6174 (h!71495 zl!343))))))) (Context!11349 (t!378774 (exprs!6174 (Context!11349 (Cons!65046 (h!71494 (exprs!6174 (h!71495 zl!343))) (t!378774 (exprs!6174 (h!71495 zl!343)))))))) (h!71493 s!2326)))))

(declare-fun b!6378164 () Bool)

(assert (=> b!6378164 (= e!3871933 (set.union call!544974 (derivationStepZipperUp!1464 (Context!11349 (t!378774 (exprs!6174 (Context!11349 (Cons!65046 (h!71494 (exprs!6174 (h!71495 zl!343))) (t!378774 (exprs!6174 (h!71495 zl!343)))))))) (h!71493 s!2326))))))

(declare-fun d!2000087 () Bool)

(declare-fun c!1161932 () Bool)

(assert (=> d!2000087 (= c!1161932 e!3871932)))

(declare-fun res!2623605 () Bool)

(assert (=> d!2000087 (=> (not res!2623605) (not e!3871932))))

(assert (=> d!2000087 (= res!2623605 (is-Cons!65046 (exprs!6174 (Context!11349 (Cons!65046 (h!71494 (exprs!6174 (h!71495 zl!343))) (t!378774 (exprs!6174 (h!71495 zl!343))))))))))

(assert (=> d!2000087 (= (derivationStepZipperUp!1464 (Context!11349 (Cons!65046 (h!71494 (exprs!6174 (h!71495 zl!343))) (t!378774 (exprs!6174 (h!71495 zl!343))))) (h!71493 s!2326)) e!3871933)))

(assert (= (and d!2000087 res!2623605) b!6378161))

(assert (= (and d!2000087 c!1161932) b!6378164))

(assert (= (and d!2000087 (not c!1161932)) b!6378160))

(assert (= (and b!6378160 c!1161933) b!6378163))

(assert (= (and b!6378160 (not c!1161933)) b!6378162))

(assert (= (or b!6378164 b!6378163) bm!544969))

(declare-fun m!7179352 () Bool)

(assert (=> b!6378161 m!7179352))

(declare-fun m!7179354 () Bool)

(assert (=> bm!544969 m!7179354))

(declare-fun m!7179356 () Bool)

(assert (=> b!6378164 m!7179356))

(assert (=> b!6377958 d!2000087))

(declare-fun d!2000089 () Bool)

(declare-fun choose!47421 ((Set Context!11348) Int) (Set Context!11348))

(assert (=> d!2000089 (= (flatMap!1795 z!1189 lambda!351694) (choose!47421 z!1189 lambda!351694))))

(declare-fun bs!1596836 () Bool)

(assert (= bs!1596836 d!2000089))

(declare-fun m!7179358 () Bool)

(assert (=> bs!1596836 m!7179358))

(assert (=> b!6377958 d!2000089))

(declare-fun d!2000091 () Bool)

(declare-fun dynLambda!25808 (Int Context!11348) (Set Context!11348))

(assert (=> d!2000091 (= (flatMap!1795 z!1189 lambda!351694) (dynLambda!25808 lambda!351694 (h!71495 zl!343)))))

(declare-fun lt!2369651 () Unit!158491)

(declare-fun choose!47422 ((Set Context!11348) Context!11348 Int) Unit!158491)

(assert (=> d!2000091 (= lt!2369651 (choose!47422 z!1189 (h!71495 zl!343) lambda!351694))))

(assert (=> d!2000091 (= z!1189 (set.insert (h!71495 zl!343) (as set.empty (Set Context!11348))))))

(assert (=> d!2000091 (= (lemmaFlatMapOnSingletonSet!1321 z!1189 (h!71495 zl!343) lambda!351694) lt!2369651)))

(declare-fun b_lambda!242389 () Bool)

(assert (=> (not b_lambda!242389) (not d!2000091)))

(declare-fun bs!1596837 () Bool)

(assert (= bs!1596837 d!2000091))

(assert (=> bs!1596837 m!7179176))

(declare-fun m!7179360 () Bool)

(assert (=> bs!1596837 m!7179360))

(declare-fun m!7179362 () Bool)

(assert (=> bs!1596837 m!7179362))

(declare-fun m!7179364 () Bool)

(assert (=> bs!1596837 m!7179364))

(assert (=> b!6377958 d!2000091))

(declare-fun b!6378165 () Bool)

(declare-fun e!3871936 () (Set Context!11348))

(declare-fun e!3871937 () (Set Context!11348))

(assert (=> b!6378165 (= e!3871936 e!3871937)))

(declare-fun c!1161935 () Bool)

(assert (=> b!6378165 (= c!1161935 (is-Cons!65046 (exprs!6174 (h!71495 zl!343))))))

(declare-fun b!6378166 () Bool)

(declare-fun e!3871935 () Bool)

(assert (=> b!6378166 (= e!3871935 (nullable!6283 (h!71494 (exprs!6174 (h!71495 zl!343)))))))

(declare-fun b!6378167 () Bool)

(assert (=> b!6378167 (= e!3871937 (as set.empty (Set Context!11348)))))

(declare-fun b!6378168 () Bool)

(declare-fun call!544975 () (Set Context!11348))

(assert (=> b!6378168 (= e!3871937 call!544975)))

(declare-fun bm!544970 () Bool)

(assert (=> bm!544970 (= call!544975 (derivationStepZipperDown!1538 (h!71494 (exprs!6174 (h!71495 zl!343))) (Context!11349 (t!378774 (exprs!6174 (h!71495 zl!343)))) (h!71493 s!2326)))))

(declare-fun b!6378169 () Bool)

(assert (=> b!6378169 (= e!3871936 (set.union call!544975 (derivationStepZipperUp!1464 (Context!11349 (t!378774 (exprs!6174 (h!71495 zl!343)))) (h!71493 s!2326))))))

(declare-fun d!2000093 () Bool)

(declare-fun c!1161934 () Bool)

(assert (=> d!2000093 (= c!1161934 e!3871935)))

(declare-fun res!2623606 () Bool)

(assert (=> d!2000093 (=> (not res!2623606) (not e!3871935))))

(assert (=> d!2000093 (= res!2623606 (is-Cons!65046 (exprs!6174 (h!71495 zl!343))))))

(assert (=> d!2000093 (= (derivationStepZipperUp!1464 (h!71495 zl!343) (h!71493 s!2326)) e!3871936)))

(assert (= (and d!2000093 res!2623606) b!6378166))

(assert (= (and d!2000093 c!1161934) b!6378169))

(assert (= (and d!2000093 (not c!1161934)) b!6378165))

(assert (= (and b!6378165 c!1161935) b!6378168))

(assert (= (and b!6378165 (not c!1161935)) b!6378167))

(assert (= (or b!6378169 b!6378168) bm!544970))

(assert (=> b!6378166 m!7179174))

(declare-fun m!7179366 () Bool)

(assert (=> bm!544970 m!7179366))

(declare-fun m!7179368 () Bool)

(assert (=> b!6378169 m!7179368))

(assert (=> b!6377958 d!2000093))

(declare-fun d!2000095 () Bool)

(declare-fun lt!2369654 () Regex!16290)

(assert (=> d!2000095 (validRegex!8026 lt!2369654)))

(assert (=> d!2000095 (= lt!2369654 (generalisedUnion!2134 (unfocusZipperList!1711 (Cons!65047 lt!2369537 Nil!65047))))))

(assert (=> d!2000095 (= (unfocusZipper!2032 (Cons!65047 lt!2369537 Nil!65047)) lt!2369654)))

(declare-fun bs!1596838 () Bool)

(assert (= bs!1596838 d!2000095))

(declare-fun m!7179370 () Bool)

(assert (=> bs!1596838 m!7179370))

(declare-fun m!7179372 () Bool)

(assert (=> bs!1596838 m!7179372))

(assert (=> bs!1596838 m!7179372))

(declare-fun m!7179374 () Bool)

(assert (=> bs!1596838 m!7179374))

(assert (=> b!6377977 d!2000095))

(declare-fun bm!544977 () Bool)

(declare-fun c!1161940 () Bool)

(declare-fun c!1161941 () Bool)

(declare-fun call!544982 () Bool)

(assert (=> bm!544977 (= call!544982 (validRegex!8026 (ite c!1161940 (reg!16619 r!7292) (ite c!1161941 (regOne!33093 r!7292) (regOne!33092 r!7292)))))))

(declare-fun b!6378188 () Bool)

(declare-fun e!3871954 () Bool)

(declare-fun e!3871956 () Bool)

(assert (=> b!6378188 (= e!3871954 e!3871956)))

(declare-fun res!2623618 () Bool)

(assert (=> b!6378188 (=> (not res!2623618) (not e!3871956))))

(declare-fun call!544983 () Bool)

(assert (=> b!6378188 (= res!2623618 call!544983)))

(declare-fun b!6378190 () Bool)

(declare-fun e!3871952 () Bool)

(assert (=> b!6378190 (= e!3871952 call!544982)))

(declare-fun b!6378191 () Bool)

(declare-fun call!544984 () Bool)

(assert (=> b!6378191 (= e!3871956 call!544984)))

(declare-fun b!6378192 () Bool)

(declare-fun e!3871958 () Bool)

(assert (=> b!6378192 (= e!3871958 call!544984)))

(declare-fun bm!544978 () Bool)

(assert (=> bm!544978 (= call!544983 call!544982)))

(declare-fun b!6378193 () Bool)

(declare-fun e!3871955 () Bool)

(declare-fun e!3871957 () Bool)

(assert (=> b!6378193 (= e!3871955 e!3871957)))

(assert (=> b!6378193 (= c!1161941 (is-Union!16290 r!7292))))

(declare-fun b!6378189 () Bool)

(assert (=> b!6378189 (= e!3871955 e!3871952)))

(declare-fun res!2623620 () Bool)

(assert (=> b!6378189 (= res!2623620 (not (nullable!6283 (reg!16619 r!7292))))))

(assert (=> b!6378189 (=> (not res!2623620) (not e!3871952))))

(declare-fun d!2000097 () Bool)

(declare-fun res!2623619 () Bool)

(declare-fun e!3871953 () Bool)

(assert (=> d!2000097 (=> res!2623619 e!3871953)))

(assert (=> d!2000097 (= res!2623619 (is-ElementMatch!16290 r!7292))))

(assert (=> d!2000097 (= (validRegex!8026 r!7292) e!3871953)))

(declare-fun b!6378194 () Bool)

(assert (=> b!6378194 (= e!3871953 e!3871955)))

(assert (=> b!6378194 (= c!1161940 (is-Star!16290 r!7292))))

(declare-fun b!6378195 () Bool)

(declare-fun res!2623621 () Bool)

(assert (=> b!6378195 (=> res!2623621 e!3871954)))

(assert (=> b!6378195 (= res!2623621 (not (is-Concat!25135 r!7292)))))

(assert (=> b!6378195 (= e!3871957 e!3871954)))

(declare-fun bm!544979 () Bool)

(assert (=> bm!544979 (= call!544984 (validRegex!8026 (ite c!1161941 (regTwo!33093 r!7292) (regTwo!33092 r!7292))))))

(declare-fun b!6378196 () Bool)

(declare-fun res!2623617 () Bool)

(assert (=> b!6378196 (=> (not res!2623617) (not e!3871958))))

(assert (=> b!6378196 (= res!2623617 call!544983)))

(assert (=> b!6378196 (= e!3871957 e!3871958)))

(assert (= (and d!2000097 (not res!2623619)) b!6378194))

(assert (= (and b!6378194 c!1161940) b!6378189))

(assert (= (and b!6378194 (not c!1161940)) b!6378193))

(assert (= (and b!6378189 res!2623620) b!6378190))

(assert (= (and b!6378193 c!1161941) b!6378196))

(assert (= (and b!6378193 (not c!1161941)) b!6378195))

(assert (= (and b!6378196 res!2623617) b!6378192))

(assert (= (and b!6378195 (not res!2623621)) b!6378188))

(assert (= (and b!6378188 res!2623618) b!6378191))

(assert (= (or b!6378192 b!6378191) bm!544979))

(assert (= (or b!6378196 b!6378188) bm!544978))

(assert (= (or b!6378190 bm!544978) bm!544977))

(declare-fun m!7179376 () Bool)

(assert (=> bm!544977 m!7179376))

(declare-fun m!7179378 () Bool)

(assert (=> b!6378189 m!7179378))

(declare-fun m!7179380 () Bool)

(assert (=> bm!544979 m!7179380))

(assert (=> start!631880 d!2000097))

(declare-fun bm!544980 () Bool)

(declare-fun call!544985 () Bool)

(declare-fun c!1161943 () Bool)

(declare-fun c!1161942 () Bool)

(assert (=> bm!544980 (= call!544985 (validRegex!8026 (ite c!1161942 (reg!16619 lt!2369544) (ite c!1161943 (regOne!33093 lt!2369544) (regOne!33092 lt!2369544)))))))

(declare-fun b!6378197 () Bool)

(declare-fun e!3871961 () Bool)

(declare-fun e!3871963 () Bool)

(assert (=> b!6378197 (= e!3871961 e!3871963)))

(declare-fun res!2623623 () Bool)

(assert (=> b!6378197 (=> (not res!2623623) (not e!3871963))))

(declare-fun call!544986 () Bool)

(assert (=> b!6378197 (= res!2623623 call!544986)))

(declare-fun b!6378199 () Bool)

(declare-fun e!3871959 () Bool)

(assert (=> b!6378199 (= e!3871959 call!544985)))

(declare-fun b!6378200 () Bool)

(declare-fun call!544987 () Bool)

(assert (=> b!6378200 (= e!3871963 call!544987)))

(declare-fun b!6378201 () Bool)

(declare-fun e!3871965 () Bool)

(assert (=> b!6378201 (= e!3871965 call!544987)))

(declare-fun bm!544981 () Bool)

(assert (=> bm!544981 (= call!544986 call!544985)))

(declare-fun b!6378202 () Bool)

(declare-fun e!3871962 () Bool)

(declare-fun e!3871964 () Bool)

(assert (=> b!6378202 (= e!3871962 e!3871964)))

(assert (=> b!6378202 (= c!1161943 (is-Union!16290 lt!2369544))))

(declare-fun b!6378198 () Bool)

(assert (=> b!6378198 (= e!3871962 e!3871959)))

(declare-fun res!2623625 () Bool)

(assert (=> b!6378198 (= res!2623625 (not (nullable!6283 (reg!16619 lt!2369544))))))

(assert (=> b!6378198 (=> (not res!2623625) (not e!3871959))))

(declare-fun d!2000099 () Bool)

(declare-fun res!2623624 () Bool)

(declare-fun e!3871960 () Bool)

(assert (=> d!2000099 (=> res!2623624 e!3871960)))

(assert (=> d!2000099 (= res!2623624 (is-ElementMatch!16290 lt!2369544))))

(assert (=> d!2000099 (= (validRegex!8026 lt!2369544) e!3871960)))

(declare-fun b!6378203 () Bool)

(assert (=> b!6378203 (= e!3871960 e!3871962)))

(assert (=> b!6378203 (= c!1161942 (is-Star!16290 lt!2369544))))

(declare-fun b!6378204 () Bool)

(declare-fun res!2623626 () Bool)

(assert (=> b!6378204 (=> res!2623626 e!3871961)))

(assert (=> b!6378204 (= res!2623626 (not (is-Concat!25135 lt!2369544)))))

(assert (=> b!6378204 (= e!3871964 e!3871961)))

(declare-fun bm!544982 () Bool)

(assert (=> bm!544982 (= call!544987 (validRegex!8026 (ite c!1161943 (regTwo!33093 lt!2369544) (regTwo!33092 lt!2369544))))))

(declare-fun b!6378205 () Bool)

(declare-fun res!2623622 () Bool)

(assert (=> b!6378205 (=> (not res!2623622) (not e!3871965))))

(assert (=> b!6378205 (= res!2623622 call!544986)))

(assert (=> b!6378205 (= e!3871964 e!3871965)))

(assert (= (and d!2000099 (not res!2623624)) b!6378203))

(assert (= (and b!6378203 c!1161942) b!6378198))

(assert (= (and b!6378203 (not c!1161942)) b!6378202))

(assert (= (and b!6378198 res!2623625) b!6378199))

(assert (= (and b!6378202 c!1161943) b!6378205))

(assert (= (and b!6378202 (not c!1161943)) b!6378204))

(assert (= (and b!6378205 res!2623622) b!6378201))

(assert (= (and b!6378204 (not res!2623626)) b!6378197))

(assert (= (and b!6378197 res!2623623) b!6378200))

(assert (= (or b!6378201 b!6378200) bm!544982))

(assert (= (or b!6378205 b!6378197) bm!544981))

(assert (= (or b!6378199 bm!544981) bm!544980))

(declare-fun m!7179382 () Bool)

(assert (=> bm!544980 m!7179382))

(declare-fun m!7179384 () Bool)

(assert (=> b!6378198 m!7179384))

(declare-fun m!7179386 () Bool)

(assert (=> bm!544982 m!7179386))

(assert (=> b!6377957 d!2000099))

(declare-fun d!2000101 () Bool)

(declare-fun lt!2369655 () Regex!16290)

(assert (=> d!2000101 (validRegex!8026 lt!2369655)))

(assert (=> d!2000101 (= lt!2369655 (generalisedUnion!2134 (unfocusZipperList!1711 zl!343)))))

(assert (=> d!2000101 (= (unfocusZipper!2032 zl!343) lt!2369655)))

(declare-fun bs!1596839 () Bool)

(assert (= bs!1596839 d!2000101))

(declare-fun m!7179388 () Bool)

(assert (=> bs!1596839 m!7179388))

(assert (=> bs!1596839 m!7179222))

(assert (=> bs!1596839 m!7179222))

(assert (=> bs!1596839 m!7179224))

(assert (=> b!6377976 d!2000101))

(declare-fun b!6378226 () Bool)

(declare-fun e!3871982 () Bool)

(declare-fun e!3871980 () Bool)

(assert (=> b!6378226 (= e!3871982 e!3871980)))

(declare-fun c!1161952 () Bool)

(assert (=> b!6378226 (= c!1161952 (isEmpty!37171 (unfocusZipperList!1711 zl!343)))))

(declare-fun b!6378227 () Bool)

(declare-fun e!3871981 () Bool)

(assert (=> b!6378227 (= e!3871980 e!3871981)))

(declare-fun c!1161953 () Bool)

(declare-fun tail!12157 (List!65170) List!65170)

(assert (=> b!6378227 (= c!1161953 (isEmpty!37171 (tail!12157 (unfocusZipperList!1711 zl!343))))))

(declare-fun b!6378228 () Bool)

(declare-fun e!3871979 () Regex!16290)

(assert (=> b!6378228 (= e!3871979 (h!71494 (unfocusZipperList!1711 zl!343)))))

(declare-fun d!2000103 () Bool)

(assert (=> d!2000103 e!3871982))

(declare-fun res!2623631 () Bool)

(assert (=> d!2000103 (=> (not res!2623631) (not e!3871982))))

(declare-fun lt!2369658 () Regex!16290)

(assert (=> d!2000103 (= res!2623631 (validRegex!8026 lt!2369658))))

(assert (=> d!2000103 (= lt!2369658 e!3871979)))

(declare-fun c!1161955 () Bool)

(declare-fun e!3871983 () Bool)

(assert (=> d!2000103 (= c!1161955 e!3871983)))

(declare-fun res!2623632 () Bool)

(assert (=> d!2000103 (=> (not res!2623632) (not e!3871983))))

(assert (=> d!2000103 (= res!2623632 (is-Cons!65046 (unfocusZipperList!1711 zl!343)))))

(declare-fun lambda!351714 () Int)

(declare-fun forall!15468 (List!65170 Int) Bool)

(assert (=> d!2000103 (forall!15468 (unfocusZipperList!1711 zl!343) lambda!351714)))

(assert (=> d!2000103 (= (generalisedUnion!2134 (unfocusZipperList!1711 zl!343)) lt!2369658)))

(declare-fun b!6378229 () Bool)

(declare-fun isUnion!1128 (Regex!16290) Bool)

(assert (=> b!6378229 (= e!3871981 (isUnion!1128 lt!2369658))))

(declare-fun b!6378230 () Bool)

(assert (=> b!6378230 (= e!3871983 (isEmpty!37171 (t!378774 (unfocusZipperList!1711 zl!343))))))

(declare-fun b!6378231 () Bool)

(declare-fun e!3871978 () Regex!16290)

(assert (=> b!6378231 (= e!3871978 EmptyLang!16290)))

(declare-fun b!6378232 () Bool)

(declare-fun head!13072 (List!65170) Regex!16290)

(assert (=> b!6378232 (= e!3871981 (= lt!2369658 (head!13072 (unfocusZipperList!1711 zl!343))))))

(declare-fun b!6378233 () Bool)

(assert (=> b!6378233 (= e!3871978 (Union!16290 (h!71494 (unfocusZipperList!1711 zl!343)) (generalisedUnion!2134 (t!378774 (unfocusZipperList!1711 zl!343)))))))

(declare-fun b!6378234 () Bool)

(assert (=> b!6378234 (= e!3871979 e!3871978)))

(declare-fun c!1161954 () Bool)

(assert (=> b!6378234 (= c!1161954 (is-Cons!65046 (unfocusZipperList!1711 zl!343)))))

(declare-fun b!6378235 () Bool)

(declare-fun isEmptyLang!1698 (Regex!16290) Bool)

(assert (=> b!6378235 (= e!3871980 (isEmptyLang!1698 lt!2369658))))

(assert (= (and d!2000103 res!2623632) b!6378230))

(assert (= (and d!2000103 c!1161955) b!6378228))

(assert (= (and d!2000103 (not c!1161955)) b!6378234))

(assert (= (and b!6378234 c!1161954) b!6378233))

(assert (= (and b!6378234 (not c!1161954)) b!6378231))

(assert (= (and d!2000103 res!2623631) b!6378226))

(assert (= (and b!6378226 c!1161952) b!6378235))

(assert (= (and b!6378226 (not c!1161952)) b!6378227))

(assert (= (and b!6378227 c!1161953) b!6378232))

(assert (= (and b!6378227 (not c!1161953)) b!6378229))

(declare-fun m!7179390 () Bool)

(assert (=> b!6378233 m!7179390))

(assert (=> b!6378232 m!7179222))

(declare-fun m!7179392 () Bool)

(assert (=> b!6378232 m!7179392))

(assert (=> b!6378227 m!7179222))

(declare-fun m!7179394 () Bool)

(assert (=> b!6378227 m!7179394))

(assert (=> b!6378227 m!7179394))

(declare-fun m!7179396 () Bool)

(assert (=> b!6378227 m!7179396))

(declare-fun m!7179398 () Bool)

(assert (=> d!2000103 m!7179398))

(assert (=> d!2000103 m!7179222))

(declare-fun m!7179400 () Bool)

(assert (=> d!2000103 m!7179400))

(declare-fun m!7179402 () Bool)

(assert (=> b!6378235 m!7179402))

(declare-fun m!7179404 () Bool)

(assert (=> b!6378230 m!7179404))

(declare-fun m!7179406 () Bool)

(assert (=> b!6378229 m!7179406))

(assert (=> b!6378226 m!7179222))

(declare-fun m!7179408 () Bool)

(assert (=> b!6378226 m!7179408))

(assert (=> b!6377956 d!2000103))

(declare-fun bs!1596840 () Bool)

(declare-fun d!2000105 () Bool)

(assert (= bs!1596840 (and d!2000105 d!2000103)))

(declare-fun lambda!351717 () Int)

(assert (=> bs!1596840 (= lambda!351717 lambda!351714)))

(declare-fun lt!2369661 () List!65170)

(assert (=> d!2000105 (forall!15468 lt!2369661 lambda!351717)))

(declare-fun e!3871986 () List!65170)

(assert (=> d!2000105 (= lt!2369661 e!3871986)))

(declare-fun c!1161958 () Bool)

(assert (=> d!2000105 (= c!1161958 (is-Cons!65047 zl!343))))

(assert (=> d!2000105 (= (unfocusZipperList!1711 zl!343) lt!2369661)))

(declare-fun b!6378240 () Bool)

(assert (=> b!6378240 (= e!3871986 (Cons!65046 (generalisedConcat!1887 (exprs!6174 (h!71495 zl!343))) (unfocusZipperList!1711 (t!378775 zl!343))))))

(declare-fun b!6378241 () Bool)

(assert (=> b!6378241 (= e!3871986 Nil!65046)))

(assert (= (and d!2000105 c!1161958) b!6378240))

(assert (= (and d!2000105 (not c!1161958)) b!6378241))

(declare-fun m!7179410 () Bool)

(assert (=> d!2000105 m!7179410))

(assert (=> b!6378240 m!7179228))

(declare-fun m!7179412 () Bool)

(assert (=> b!6378240 m!7179412))

(assert (=> b!6377956 d!2000105))

(declare-fun d!2000107 () Bool)

(assert (=> d!2000107 (= (flatMap!1795 lt!2369554 lambda!351694) (choose!47421 lt!2369554 lambda!351694))))

(declare-fun bs!1596841 () Bool)

(assert (= bs!1596841 d!2000107))

(declare-fun m!7179414 () Bool)

(assert (=> bs!1596841 m!7179414))

(assert (=> b!6377980 d!2000107))

(declare-fun b!6378242 () Bool)

(declare-fun e!3871988 () (Set Context!11348))

(declare-fun e!3871989 () (Set Context!11348))

(assert (=> b!6378242 (= e!3871988 e!3871989)))

(declare-fun c!1161960 () Bool)

(assert (=> b!6378242 (= c!1161960 (is-Cons!65046 (exprs!6174 lt!2369548)))))

(declare-fun b!6378243 () Bool)

(declare-fun e!3871987 () Bool)

(assert (=> b!6378243 (= e!3871987 (nullable!6283 (h!71494 (exprs!6174 lt!2369548))))))

(declare-fun b!6378244 () Bool)

(assert (=> b!6378244 (= e!3871989 (as set.empty (Set Context!11348)))))

(declare-fun b!6378245 () Bool)

(declare-fun call!544988 () (Set Context!11348))

(assert (=> b!6378245 (= e!3871989 call!544988)))

(declare-fun bm!544983 () Bool)

(assert (=> bm!544983 (= call!544988 (derivationStepZipperDown!1538 (h!71494 (exprs!6174 lt!2369548)) (Context!11349 (t!378774 (exprs!6174 lt!2369548))) (h!71493 s!2326)))))

(declare-fun b!6378246 () Bool)

(assert (=> b!6378246 (= e!3871988 (set.union call!544988 (derivationStepZipperUp!1464 (Context!11349 (t!378774 (exprs!6174 lt!2369548))) (h!71493 s!2326))))))

(declare-fun d!2000109 () Bool)

(declare-fun c!1161959 () Bool)

(assert (=> d!2000109 (= c!1161959 e!3871987)))

(declare-fun res!2623633 () Bool)

(assert (=> d!2000109 (=> (not res!2623633) (not e!3871987))))

(assert (=> d!2000109 (= res!2623633 (is-Cons!65046 (exprs!6174 lt!2369548)))))

(assert (=> d!2000109 (= (derivationStepZipperUp!1464 lt!2369548 (h!71493 s!2326)) e!3871988)))

(assert (= (and d!2000109 res!2623633) b!6378243))

(assert (= (and d!2000109 c!1161959) b!6378246))

(assert (= (and d!2000109 (not c!1161959)) b!6378242))

(assert (= (and b!6378242 c!1161960) b!6378245))

(assert (= (and b!6378242 (not c!1161960)) b!6378244))

(assert (= (or b!6378246 b!6378245) bm!544983))

(declare-fun m!7179416 () Bool)

(assert (=> b!6378243 m!7179416))

(declare-fun m!7179418 () Bool)

(assert (=> bm!544983 m!7179418))

(declare-fun m!7179420 () Bool)

(assert (=> b!6378246 m!7179420))

(assert (=> b!6377980 d!2000109))

(declare-fun d!2000111 () Bool)

(assert (=> d!2000111 (= (flatMap!1795 lt!2369554 lambda!351694) (dynLambda!25808 lambda!351694 lt!2369548))))

(declare-fun lt!2369662 () Unit!158491)

(assert (=> d!2000111 (= lt!2369662 (choose!47422 lt!2369554 lt!2369548 lambda!351694))))

(assert (=> d!2000111 (= lt!2369554 (set.insert lt!2369548 (as set.empty (Set Context!11348))))))

(assert (=> d!2000111 (= (lemmaFlatMapOnSingletonSet!1321 lt!2369554 lt!2369548 lambda!351694) lt!2369662)))

(declare-fun b_lambda!242391 () Bool)

(assert (=> (not b_lambda!242391) (not d!2000111)))

(declare-fun bs!1596842 () Bool)

(assert (= bs!1596842 d!2000111))

(assert (=> bs!1596842 m!7179202))

(declare-fun m!7179422 () Bool)

(assert (=> bs!1596842 m!7179422))

(declare-fun m!7179424 () Bool)

(assert (=> bs!1596842 m!7179424))

(assert (=> bs!1596842 m!7179208))

(assert (=> b!6377980 d!2000111))

(declare-fun bs!1596843 () Bool)

(declare-fun d!2000113 () Bool)

(assert (= bs!1596843 (and d!2000113 b!6377958)))

(declare-fun lambda!351720 () Int)

(assert (=> bs!1596843 (= lambda!351720 lambda!351694)))

(assert (=> d!2000113 true))

(assert (=> d!2000113 (= (derivationStepZipper!2256 lt!2369554 (h!71493 s!2326)) (flatMap!1795 lt!2369554 lambda!351720))))

(declare-fun bs!1596844 () Bool)

(assert (= bs!1596844 d!2000113))

(declare-fun m!7179426 () Bool)

(assert (=> bs!1596844 m!7179426))

(assert (=> b!6377980 d!2000113))

(declare-fun d!2000115 () Bool)

(assert (=> d!2000115 (= (isEmpty!37172 (t!378775 zl!343)) (is-Nil!65047 (t!378775 zl!343)))))

(assert (=> b!6377970 d!2000115))

(declare-fun bs!1596845 () Bool)

(declare-fun b!6378290 () Bool)

(assert (= bs!1596845 (and b!6378290 b!6377953)))

(declare-fun lambda!351725 () Int)

(assert (=> bs!1596845 (not (= lambda!351725 lambda!351692))))

(assert (=> bs!1596845 (not (= lambda!351725 lambda!351693))))

(assert (=> b!6378290 true))

(assert (=> b!6378290 true))

(declare-fun bs!1596846 () Bool)

(declare-fun b!6378282 () Bool)

(assert (= bs!1596846 (and b!6378282 b!6377953)))

(declare-fun lambda!351726 () Int)

(assert (=> bs!1596846 (not (= lambda!351726 lambda!351692))))

(assert (=> bs!1596846 (= lambda!351726 lambda!351693)))

(declare-fun bs!1596847 () Bool)

(assert (= bs!1596847 (and b!6378282 b!6378290)))

(assert (=> bs!1596847 (not (= lambda!351726 lambda!351725))))

(assert (=> b!6378282 true))

(assert (=> b!6378282 true))

(declare-fun b!6378281 () Bool)

(declare-fun e!3872014 () Bool)

(declare-fun e!3872011 () Bool)

(assert (=> b!6378281 (= e!3872014 e!3872011)))

(declare-fun res!2623650 () Bool)

(assert (=> b!6378281 (= res!2623650 (not (is-EmptyLang!16290 r!7292)))))

(assert (=> b!6378281 (=> (not res!2623650) (not e!3872011))))

(declare-fun e!3872013 () Bool)

(declare-fun call!544993 () Bool)

(assert (=> b!6378282 (= e!3872013 call!544993)))

(declare-fun bm!544988 () Bool)

(declare-fun c!1161973 () Bool)

(assert (=> bm!544988 (= call!544993 (Exists!3360 (ite c!1161973 lambda!351725 lambda!351726)))))

(declare-fun b!6378284 () Bool)

(declare-fun e!3872009 () Bool)

(declare-fun e!3872008 () Bool)

(assert (=> b!6378284 (= e!3872009 e!3872008)))

(declare-fun res!2623651 () Bool)

(assert (=> b!6378284 (= res!2623651 (matchRSpec!3391 (regOne!33093 r!7292) s!2326))))

(assert (=> b!6378284 (=> res!2623651 e!3872008)))

(declare-fun b!6378285 () Bool)

(declare-fun e!3872012 () Bool)

(assert (=> b!6378285 (= e!3872012 (= s!2326 (Cons!65045 (c!1161897 r!7292) Nil!65045)))))

(declare-fun b!6378286 () Bool)

(assert (=> b!6378286 (= e!3872009 e!3872013)))

(assert (=> b!6378286 (= c!1161973 (is-Star!16290 r!7292))))

(declare-fun b!6378287 () Bool)

(declare-fun res!2623652 () Bool)

(declare-fun e!3872010 () Bool)

(assert (=> b!6378287 (=> res!2623652 e!3872010)))

(declare-fun call!544994 () Bool)

(assert (=> b!6378287 (= res!2623652 call!544994)))

(assert (=> b!6378287 (= e!3872013 e!3872010)))

(declare-fun b!6378288 () Bool)

(assert (=> b!6378288 (= e!3872014 call!544994)))

(declare-fun b!6378289 () Bool)

(assert (=> b!6378289 (= e!3872008 (matchRSpec!3391 (regTwo!33093 r!7292) s!2326))))

(assert (=> b!6378290 (= e!3872010 call!544993)))

(declare-fun b!6378283 () Bool)

(declare-fun c!1161971 () Bool)

(assert (=> b!6378283 (= c!1161971 (is-Union!16290 r!7292))))

(assert (=> b!6378283 (= e!3872012 e!3872009)))

(declare-fun d!2000117 () Bool)

(declare-fun c!1161972 () Bool)

(assert (=> d!2000117 (= c!1161972 (is-EmptyExpr!16290 r!7292))))

(assert (=> d!2000117 (= (matchRSpec!3391 r!7292 s!2326) e!3872014)))

(declare-fun b!6378291 () Bool)

(declare-fun c!1161974 () Bool)

(assert (=> b!6378291 (= c!1161974 (is-ElementMatch!16290 r!7292))))

(assert (=> b!6378291 (= e!3872011 e!3872012)))

(declare-fun bm!544989 () Bool)

(declare-fun isEmpty!37175 (List!65169) Bool)

(assert (=> bm!544989 (= call!544994 (isEmpty!37175 s!2326))))

(assert (= (and d!2000117 c!1161972) b!6378288))

(assert (= (and d!2000117 (not c!1161972)) b!6378281))

(assert (= (and b!6378281 res!2623650) b!6378291))

(assert (= (and b!6378291 c!1161974) b!6378285))

(assert (= (and b!6378291 (not c!1161974)) b!6378283))

(assert (= (and b!6378283 c!1161971) b!6378284))

(assert (= (and b!6378283 (not c!1161971)) b!6378286))

(assert (= (and b!6378284 (not res!2623651)) b!6378289))

(assert (= (and b!6378286 c!1161973) b!6378287))

(assert (= (and b!6378286 (not c!1161973)) b!6378282))

(assert (= (and b!6378287 (not res!2623652)) b!6378290))

(assert (= (or b!6378290 b!6378282) bm!544988))

(assert (= (or b!6378288 b!6378287) bm!544989))

(declare-fun m!7179428 () Bool)

(assert (=> bm!544988 m!7179428))

(declare-fun m!7179430 () Bool)

(assert (=> b!6378284 m!7179430))

(declare-fun m!7179432 () Bool)

(assert (=> b!6378289 m!7179432))

(declare-fun m!7179434 () Bool)

(assert (=> bm!544989 m!7179434))

(assert (=> b!6377960 d!2000117))

(declare-fun b!6378320 () Bool)

(declare-fun e!3872032 () Bool)

(declare-fun head!13073 (List!65169) C!32850)

(assert (=> b!6378320 (= e!3872032 (not (= (head!13073 s!2326) (c!1161897 r!7292))))))

(declare-fun b!6378321 () Bool)

(declare-fun e!3872034 () Bool)

(declare-fun lt!2369665 () Bool)

(declare-fun call!544997 () Bool)

(assert (=> b!6378321 (= e!3872034 (= lt!2369665 call!544997))))

(declare-fun b!6378322 () Bool)

(declare-fun res!2623674 () Bool)

(declare-fun e!3872030 () Bool)

(assert (=> b!6378322 (=> (not res!2623674) (not e!3872030))))

(declare-fun tail!12158 (List!65169) List!65169)

(assert (=> b!6378322 (= res!2623674 (isEmpty!37175 (tail!12158 s!2326)))))

(declare-fun b!6378323 () Bool)

(assert (=> b!6378323 (= e!3872030 (= (head!13073 s!2326) (c!1161897 r!7292)))))

(declare-fun b!6378324 () Bool)

(declare-fun res!2623673 () Bool)

(assert (=> b!6378324 (=> res!2623673 e!3872032)))

(assert (=> b!6378324 (= res!2623673 (not (isEmpty!37175 (tail!12158 s!2326))))))

(declare-fun b!6378325 () Bool)

(declare-fun e!3872029 () Bool)

(assert (=> b!6378325 (= e!3872029 e!3872032)))

(declare-fun res!2623672 () Bool)

(assert (=> b!6378325 (=> res!2623672 e!3872032)))

(assert (=> b!6378325 (= res!2623672 call!544997)))

(declare-fun b!6378326 () Bool)

(declare-fun res!2623671 () Bool)

(declare-fun e!3872031 () Bool)

(assert (=> b!6378326 (=> res!2623671 e!3872031)))

(assert (=> b!6378326 (= res!2623671 e!3872030)))

(declare-fun res!2623670 () Bool)

(assert (=> b!6378326 (=> (not res!2623670) (not e!3872030))))

(assert (=> b!6378326 (= res!2623670 lt!2369665)))

(declare-fun b!6378327 () Bool)

(declare-fun res!2623669 () Bool)

(assert (=> b!6378327 (=> (not res!2623669) (not e!3872030))))

(assert (=> b!6378327 (= res!2623669 (not call!544997))))

(declare-fun b!6378328 () Bool)

(assert (=> b!6378328 (= e!3872031 e!3872029)))

(declare-fun res!2623676 () Bool)

(assert (=> b!6378328 (=> (not res!2623676) (not e!3872029))))

(assert (=> b!6378328 (= res!2623676 (not lt!2369665))))

(declare-fun b!6378329 () Bool)

(declare-fun res!2623675 () Bool)

(assert (=> b!6378329 (=> res!2623675 e!3872031)))

(assert (=> b!6378329 (= res!2623675 (not (is-ElementMatch!16290 r!7292)))))

(declare-fun e!3872035 () Bool)

(assert (=> b!6378329 (= e!3872035 e!3872031)))

(declare-fun d!2000119 () Bool)

(assert (=> d!2000119 e!3872034))

(declare-fun c!1161981 () Bool)

(assert (=> d!2000119 (= c!1161981 (is-EmptyExpr!16290 r!7292))))

(declare-fun e!3872033 () Bool)

(assert (=> d!2000119 (= lt!2369665 e!3872033)))

(declare-fun c!1161982 () Bool)

(assert (=> d!2000119 (= c!1161982 (isEmpty!37175 s!2326))))

(assert (=> d!2000119 (validRegex!8026 r!7292)))

(assert (=> d!2000119 (= (matchR!8473 r!7292 s!2326) lt!2369665)))

(declare-fun b!6378330 () Bool)

(assert (=> b!6378330 (= e!3872033 (nullable!6283 r!7292))))

(declare-fun b!6378331 () Bool)

(assert (=> b!6378331 (= e!3872035 (not lt!2369665))))

(declare-fun bm!544992 () Bool)

(assert (=> bm!544992 (= call!544997 (isEmpty!37175 s!2326))))

(declare-fun b!6378332 () Bool)

(declare-fun derivativeStep!4995 (Regex!16290 C!32850) Regex!16290)

(assert (=> b!6378332 (= e!3872033 (matchR!8473 (derivativeStep!4995 r!7292 (head!13073 s!2326)) (tail!12158 s!2326)))))

(declare-fun b!6378333 () Bool)

(assert (=> b!6378333 (= e!3872034 e!3872035)))

(declare-fun c!1161983 () Bool)

(assert (=> b!6378333 (= c!1161983 (is-EmptyLang!16290 r!7292))))

(assert (= (and d!2000119 c!1161982) b!6378330))

(assert (= (and d!2000119 (not c!1161982)) b!6378332))

(assert (= (and d!2000119 c!1161981) b!6378321))

(assert (= (and d!2000119 (not c!1161981)) b!6378333))

(assert (= (and b!6378333 c!1161983) b!6378331))

(assert (= (and b!6378333 (not c!1161983)) b!6378329))

(assert (= (and b!6378329 (not res!2623675)) b!6378326))

(assert (= (and b!6378326 res!2623670) b!6378327))

(assert (= (and b!6378327 res!2623669) b!6378322))

(assert (= (and b!6378322 res!2623674) b!6378323))

(assert (= (and b!6378326 (not res!2623671)) b!6378328))

(assert (= (and b!6378328 res!2623676) b!6378325))

(assert (= (and b!6378325 (not res!2623672)) b!6378324))

(assert (= (and b!6378324 (not res!2623673)) b!6378320))

(assert (= (or b!6378321 b!6378325 b!6378327) bm!544992))

(declare-fun m!7179436 () Bool)

(assert (=> b!6378323 m!7179436))

(assert (=> bm!544992 m!7179434))

(declare-fun m!7179438 () Bool)

(assert (=> b!6378330 m!7179438))

(assert (=> b!6378332 m!7179436))

(assert (=> b!6378332 m!7179436))

(declare-fun m!7179440 () Bool)

(assert (=> b!6378332 m!7179440))

(declare-fun m!7179442 () Bool)

(assert (=> b!6378332 m!7179442))

(assert (=> b!6378332 m!7179440))

(assert (=> b!6378332 m!7179442))

(declare-fun m!7179444 () Bool)

(assert (=> b!6378332 m!7179444))

(assert (=> d!2000119 m!7179434))

(assert (=> d!2000119 m!7179136))

(assert (=> b!6378320 m!7179436))

(assert (=> b!6378324 m!7179442))

(assert (=> b!6378324 m!7179442))

(declare-fun m!7179446 () Bool)

(assert (=> b!6378324 m!7179446))

(assert (=> b!6378322 m!7179442))

(assert (=> b!6378322 m!7179442))

(assert (=> b!6378322 m!7179446))

(assert (=> b!6377960 d!2000119))

(declare-fun d!2000121 () Bool)

(assert (=> d!2000121 (= (matchR!8473 r!7292 s!2326) (matchRSpec!3391 r!7292 s!2326))))

(declare-fun lt!2369668 () Unit!158491)

(declare-fun choose!47423 (Regex!16290 List!65169) Unit!158491)

(assert (=> d!2000121 (= lt!2369668 (choose!47423 r!7292 s!2326))))

(assert (=> d!2000121 (validRegex!8026 r!7292)))

(assert (=> d!2000121 (= (mainMatchTheorem!3391 r!7292 s!2326) lt!2369668)))

(declare-fun bs!1596848 () Bool)

(assert (= bs!1596848 d!2000121))

(assert (=> bs!1596848 m!7179130))

(assert (=> bs!1596848 m!7179128))

(declare-fun m!7179448 () Bool)

(assert (=> bs!1596848 m!7179448))

(assert (=> bs!1596848 m!7179136))

(assert (=> b!6377960 d!2000121))

(declare-fun d!2000123 () Bool)

(declare-fun lt!2369669 () Regex!16290)

(assert (=> d!2000123 (validRegex!8026 lt!2369669)))

(assert (=> d!2000123 (= lt!2369669 (generalisedUnion!2134 (unfocusZipperList!1711 (Cons!65047 lt!2369548 Nil!65047))))))

(assert (=> d!2000123 (= (unfocusZipper!2032 (Cons!65047 lt!2369548 Nil!65047)) lt!2369669)))

(declare-fun bs!1596849 () Bool)

(assert (= bs!1596849 d!2000123))

(declare-fun m!7179450 () Bool)

(assert (=> bs!1596849 m!7179450))

(declare-fun m!7179452 () Bool)

(assert (=> bs!1596849 m!7179452))

(assert (=> bs!1596849 m!7179452))

(declare-fun m!7179454 () Bool)

(assert (=> bs!1596849 m!7179454))

(assert (=> b!6377969 d!2000123))

(declare-fun bs!1596850 () Bool)

(declare-fun d!2000125 () Bool)

(assert (= bs!1596850 (and d!2000125 d!2000103)))

(declare-fun lambda!351729 () Int)

(assert (=> bs!1596850 (= lambda!351729 lambda!351714)))

(declare-fun bs!1596851 () Bool)

(assert (= bs!1596851 (and d!2000125 d!2000105)))

(assert (=> bs!1596851 (= lambda!351729 lambda!351717)))

(assert (=> d!2000125 (= (inv!83973 (h!71495 zl!343)) (forall!15468 (exprs!6174 (h!71495 zl!343)) lambda!351729))))

(declare-fun bs!1596852 () Bool)

(assert (= bs!1596852 d!2000125))

(declare-fun m!7179456 () Bool)

(assert (=> bs!1596852 m!7179456))

(assert (=> b!6377959 d!2000125))

(declare-fun d!2000127 () Bool)

(assert (=> d!2000127 (= (flatMap!1795 lt!2369547 lambda!351694) (choose!47421 lt!2369547 lambda!351694))))

(declare-fun bs!1596853 () Bool)

(assert (= bs!1596853 d!2000127))

(declare-fun m!7179458 () Bool)

(assert (=> bs!1596853 m!7179458))

(assert (=> b!6377978 d!2000127))

(declare-fun b!6378334 () Bool)

(declare-fun e!3872037 () (Set Context!11348))

(declare-fun e!3872038 () (Set Context!11348))

(assert (=> b!6378334 (= e!3872037 e!3872038)))

(declare-fun c!1161985 () Bool)

(assert (=> b!6378334 (= c!1161985 (is-Cons!65046 (exprs!6174 lt!2369537)))))

(declare-fun b!6378335 () Bool)

(declare-fun e!3872036 () Bool)

(assert (=> b!6378335 (= e!3872036 (nullable!6283 (h!71494 (exprs!6174 lt!2369537))))))

(declare-fun b!6378336 () Bool)

(assert (=> b!6378336 (= e!3872038 (as set.empty (Set Context!11348)))))

(declare-fun b!6378337 () Bool)

(declare-fun call!544998 () (Set Context!11348))

(assert (=> b!6378337 (= e!3872038 call!544998)))

(declare-fun bm!544993 () Bool)

(assert (=> bm!544993 (= call!544998 (derivationStepZipperDown!1538 (h!71494 (exprs!6174 lt!2369537)) (Context!11349 (t!378774 (exprs!6174 lt!2369537))) (h!71493 s!2326)))))

(declare-fun b!6378338 () Bool)

(assert (=> b!6378338 (= e!3872037 (set.union call!544998 (derivationStepZipperUp!1464 (Context!11349 (t!378774 (exprs!6174 lt!2369537))) (h!71493 s!2326))))))

(declare-fun d!2000129 () Bool)

(declare-fun c!1161984 () Bool)

(assert (=> d!2000129 (= c!1161984 e!3872036)))

(declare-fun res!2623677 () Bool)

(assert (=> d!2000129 (=> (not res!2623677) (not e!3872036))))

(assert (=> d!2000129 (= res!2623677 (is-Cons!65046 (exprs!6174 lt!2369537)))))

(assert (=> d!2000129 (= (derivationStepZipperUp!1464 lt!2369537 (h!71493 s!2326)) e!3872037)))

(assert (= (and d!2000129 res!2623677) b!6378335))

(assert (= (and d!2000129 c!1161984) b!6378338))

(assert (= (and d!2000129 (not c!1161984)) b!6378334))

(assert (= (and b!6378334 c!1161985) b!6378337))

(assert (= (and b!6378334 (not c!1161985)) b!6378336))

(assert (= (or b!6378338 b!6378337) bm!544993))

(declare-fun m!7179460 () Bool)

(assert (=> b!6378335 m!7179460))

(declare-fun m!7179462 () Bool)

(assert (=> bm!544993 m!7179462))

(declare-fun m!7179464 () Bool)

(assert (=> b!6378338 m!7179464))

(assert (=> b!6377978 d!2000129))

(declare-fun d!2000131 () Bool)

(declare-fun lt!2369670 () Regex!16290)

(assert (=> d!2000131 (validRegex!8026 lt!2369670)))

(assert (=> d!2000131 (= lt!2369670 (generalisedUnion!2134 (unfocusZipperList!1711 (Cons!65047 lt!2369539 Nil!65047))))))

(assert (=> d!2000131 (= (unfocusZipper!2032 (Cons!65047 lt!2369539 Nil!65047)) lt!2369670)))

(declare-fun bs!1596854 () Bool)

(assert (= bs!1596854 d!2000131))

(declare-fun m!7179466 () Bool)

(assert (=> bs!1596854 m!7179466))

(declare-fun m!7179468 () Bool)

(assert (=> bs!1596854 m!7179468))

(assert (=> bs!1596854 m!7179468))

(declare-fun m!7179470 () Bool)

(assert (=> bs!1596854 m!7179470))

(assert (=> b!6377978 d!2000131))

(declare-fun d!2000133 () Bool)

(assert (=> d!2000133 (= (flatMap!1795 lt!2369547 lambda!351694) (dynLambda!25808 lambda!351694 lt!2369537))))

(declare-fun lt!2369671 () Unit!158491)

(assert (=> d!2000133 (= lt!2369671 (choose!47422 lt!2369547 lt!2369537 lambda!351694))))

(assert (=> d!2000133 (= lt!2369547 (set.insert lt!2369537 (as set.empty (Set Context!11348))))))

(assert (=> d!2000133 (= (lemmaFlatMapOnSingletonSet!1321 lt!2369547 lt!2369537 lambda!351694) lt!2369671)))

(declare-fun b_lambda!242393 () Bool)

(assert (=> (not b_lambda!242393) (not d!2000133)))

(declare-fun bs!1596855 () Bool)

(assert (= bs!1596855 d!2000133))

(assert (=> bs!1596855 m!7179198))

(declare-fun m!7179472 () Bool)

(assert (=> bs!1596855 m!7179472))

(declare-fun m!7179474 () Bool)

(assert (=> bs!1596855 m!7179474))

(assert (=> bs!1596855 m!7179182))

(assert (=> b!6377978 d!2000133))

(declare-fun b!6378339 () Bool)

(declare-fun e!3872040 () (Set Context!11348))

(declare-fun e!3872041 () (Set Context!11348))

(assert (=> b!6378339 (= e!3872040 e!3872041)))

(declare-fun c!1161987 () Bool)

(assert (=> b!6378339 (= c!1161987 (is-Cons!65046 (exprs!6174 lt!2369539)))))

(declare-fun b!6378340 () Bool)

(declare-fun e!3872039 () Bool)

(assert (=> b!6378340 (= e!3872039 (nullable!6283 (h!71494 (exprs!6174 lt!2369539))))))

(declare-fun b!6378341 () Bool)

(assert (=> b!6378341 (= e!3872041 (as set.empty (Set Context!11348)))))

(declare-fun b!6378342 () Bool)

(declare-fun call!544999 () (Set Context!11348))

(assert (=> b!6378342 (= e!3872041 call!544999)))

(declare-fun bm!544994 () Bool)

(assert (=> bm!544994 (= call!544999 (derivationStepZipperDown!1538 (h!71494 (exprs!6174 lt!2369539)) (Context!11349 (t!378774 (exprs!6174 lt!2369539))) (h!71493 s!2326)))))

(declare-fun b!6378343 () Bool)

(assert (=> b!6378343 (= e!3872040 (set.union call!544999 (derivationStepZipperUp!1464 (Context!11349 (t!378774 (exprs!6174 lt!2369539))) (h!71493 s!2326))))))

(declare-fun d!2000135 () Bool)

(declare-fun c!1161986 () Bool)

(assert (=> d!2000135 (= c!1161986 e!3872039)))

(declare-fun res!2623678 () Bool)

(assert (=> d!2000135 (=> (not res!2623678) (not e!3872039))))

(assert (=> d!2000135 (= res!2623678 (is-Cons!65046 (exprs!6174 lt!2369539)))))

(assert (=> d!2000135 (= (derivationStepZipperUp!1464 lt!2369539 (h!71493 s!2326)) e!3872040)))

(assert (= (and d!2000135 res!2623678) b!6378340))

(assert (= (and d!2000135 c!1161986) b!6378343))

(assert (= (and d!2000135 (not c!1161986)) b!6378339))

(assert (= (and b!6378339 c!1161987) b!6378342))

(assert (= (and b!6378339 (not c!1161987)) b!6378341))

(assert (= (or b!6378343 b!6378342) bm!544994))

(declare-fun m!7179476 () Bool)

(assert (=> b!6378340 m!7179476))

(declare-fun m!7179478 () Bool)

(assert (=> bm!544994 m!7179478))

(declare-fun m!7179480 () Bool)

(assert (=> b!6378343 m!7179480))

(assert (=> b!6377978 d!2000135))

(declare-fun d!2000137 () Bool)

(assert (=> d!2000137 (= (flatMap!1795 lt!2369540 lambda!351694) (choose!47421 lt!2369540 lambda!351694))))

(declare-fun bs!1596856 () Bool)

(assert (= bs!1596856 d!2000137))

(declare-fun m!7179482 () Bool)

(assert (=> bs!1596856 m!7179482))

(assert (=> b!6377978 d!2000137))

(declare-fun d!2000139 () Bool)

(assert (=> d!2000139 (= (flatMap!1795 lt!2369540 lambda!351694) (dynLambda!25808 lambda!351694 lt!2369539))))

(declare-fun lt!2369672 () Unit!158491)

(assert (=> d!2000139 (= lt!2369672 (choose!47422 lt!2369540 lt!2369539 lambda!351694))))

(assert (=> d!2000139 (= lt!2369540 (set.insert lt!2369539 (as set.empty (Set Context!11348))))))

(assert (=> d!2000139 (= (lemmaFlatMapOnSingletonSet!1321 lt!2369540 lt!2369539 lambda!351694) lt!2369672)))

(declare-fun b_lambda!242395 () Bool)

(assert (=> (not b_lambda!242395) (not d!2000139)))

(declare-fun bs!1596857 () Bool)

(assert (= bs!1596857 d!2000139))

(assert (=> bs!1596857 m!7179196))

(declare-fun m!7179484 () Bool)

(assert (=> bs!1596857 m!7179484))

(declare-fun m!7179486 () Bool)

(assert (=> bs!1596857 m!7179486))

(assert (=> bs!1596857 m!7179186))

(assert (=> b!6377978 d!2000139))

(declare-fun d!2000141 () Bool)

(declare-fun e!3872052 () Bool)

(assert (=> d!2000141 e!3872052))

(declare-fun res!2623690 () Bool)

(assert (=> d!2000141 (=> res!2623690 e!3872052)))

(declare-fun e!3872053 () Bool)

(assert (=> d!2000141 (= res!2623690 e!3872053)))

(declare-fun res!2623693 () Bool)

(assert (=> d!2000141 (=> (not res!2623693) (not e!3872053))))

(declare-fun lt!2369679 () Option!16181)

(assert (=> d!2000141 (= res!2623693 (isDefined!12884 lt!2369679))))

(declare-fun e!3872056 () Option!16181)

(assert (=> d!2000141 (= lt!2369679 e!3872056)))

(declare-fun c!1161993 () Bool)

(declare-fun e!3872054 () Bool)

(assert (=> d!2000141 (= c!1161993 e!3872054)))

(declare-fun res!2623691 () Bool)

(assert (=> d!2000141 (=> (not res!2623691) (not e!3872054))))

(assert (=> d!2000141 (= res!2623691 (matchR!8473 (regOne!33092 r!7292) Nil!65045))))

(assert (=> d!2000141 (validRegex!8026 (regOne!33092 r!7292))))

(assert (=> d!2000141 (= (findConcatSeparation!2595 (regOne!33092 r!7292) (regTwo!33092 r!7292) Nil!65045 s!2326 s!2326) lt!2369679)))

(declare-fun b!6378362 () Bool)

(assert (=> b!6378362 (= e!3872052 (not (isDefined!12884 lt!2369679)))))

(declare-fun b!6378363 () Bool)

(assert (=> b!6378363 (= e!3872056 (Some!16180 (tuple2!66539 Nil!65045 s!2326)))))

(declare-fun b!6378364 () Bool)

(declare-fun e!3872055 () Option!16181)

(assert (=> b!6378364 (= e!3872056 e!3872055)))

(declare-fun c!1161992 () Bool)

(assert (=> b!6378364 (= c!1161992 (is-Nil!65045 s!2326))))

(declare-fun b!6378365 () Bool)

(declare-fun lt!2369680 () Unit!158491)

(declare-fun lt!2369681 () Unit!158491)

(assert (=> b!6378365 (= lt!2369680 lt!2369681)))

(declare-fun ++!14359 (List!65169 List!65169) List!65169)

(assert (=> b!6378365 (= (++!14359 (++!14359 Nil!65045 (Cons!65045 (h!71493 s!2326) Nil!65045)) (t!378773 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2454 (List!65169 C!32850 List!65169 List!65169) Unit!158491)

(assert (=> b!6378365 (= lt!2369681 (lemmaMoveElementToOtherListKeepsConcatEq!2454 Nil!65045 (h!71493 s!2326) (t!378773 s!2326) s!2326))))

(assert (=> b!6378365 (= e!3872055 (findConcatSeparation!2595 (regOne!33092 r!7292) (regTwo!33092 r!7292) (++!14359 Nil!65045 (Cons!65045 (h!71493 s!2326) Nil!65045)) (t!378773 s!2326) s!2326))))

(declare-fun b!6378366 () Bool)

(declare-fun get!22520 (Option!16181) tuple2!66538)

(assert (=> b!6378366 (= e!3872053 (= (++!14359 (_1!36572 (get!22520 lt!2369679)) (_2!36572 (get!22520 lt!2369679))) s!2326))))

(declare-fun b!6378367 () Bool)

(declare-fun res!2623692 () Bool)

(assert (=> b!6378367 (=> (not res!2623692) (not e!3872053))))

(assert (=> b!6378367 (= res!2623692 (matchR!8473 (regOne!33092 r!7292) (_1!36572 (get!22520 lt!2369679))))))

(declare-fun b!6378368 () Bool)

(declare-fun res!2623689 () Bool)

(assert (=> b!6378368 (=> (not res!2623689) (not e!3872053))))

(assert (=> b!6378368 (= res!2623689 (matchR!8473 (regTwo!33092 r!7292) (_2!36572 (get!22520 lt!2369679))))))

(declare-fun b!6378369 () Bool)

(assert (=> b!6378369 (= e!3872055 None!16180)))

(declare-fun b!6378370 () Bool)

(assert (=> b!6378370 (= e!3872054 (matchR!8473 (regTwo!33092 r!7292) s!2326))))

(assert (= (and d!2000141 res!2623691) b!6378370))

(assert (= (and d!2000141 c!1161993) b!6378363))

(assert (= (and d!2000141 (not c!1161993)) b!6378364))

(assert (= (and b!6378364 c!1161992) b!6378369))

(assert (= (and b!6378364 (not c!1161992)) b!6378365))

(assert (= (and d!2000141 res!2623693) b!6378367))

(assert (= (and b!6378367 res!2623692) b!6378368))

(assert (= (and b!6378368 res!2623689) b!6378366))

(assert (= (and d!2000141 (not res!2623690)) b!6378362))

(declare-fun m!7179488 () Bool)

(assert (=> b!6378365 m!7179488))

(assert (=> b!6378365 m!7179488))

(declare-fun m!7179490 () Bool)

(assert (=> b!6378365 m!7179490))

(declare-fun m!7179492 () Bool)

(assert (=> b!6378365 m!7179492))

(assert (=> b!6378365 m!7179488))

(declare-fun m!7179494 () Bool)

(assert (=> b!6378365 m!7179494))

(declare-fun m!7179496 () Bool)

(assert (=> b!6378367 m!7179496))

(declare-fun m!7179498 () Bool)

(assert (=> b!6378367 m!7179498))

(assert (=> b!6378366 m!7179496))

(declare-fun m!7179500 () Bool)

(assert (=> b!6378366 m!7179500))

(declare-fun m!7179502 () Bool)

(assert (=> b!6378362 m!7179502))

(assert (=> b!6378368 m!7179496))

(declare-fun m!7179504 () Bool)

(assert (=> b!6378368 m!7179504))

(assert (=> d!2000141 m!7179502))

(declare-fun m!7179506 () Bool)

(assert (=> d!2000141 m!7179506))

(declare-fun m!7179508 () Bool)

(assert (=> d!2000141 m!7179508))

(declare-fun m!7179510 () Bool)

(assert (=> b!6378370 m!7179510))

(assert (=> b!6377953 d!2000141))

(declare-fun d!2000143 () Bool)

(declare-fun choose!47424 (Int) Bool)

(assert (=> d!2000143 (= (Exists!3360 lambda!351693) (choose!47424 lambda!351693))))

(declare-fun bs!1596858 () Bool)

(assert (= bs!1596858 d!2000143))

(declare-fun m!7179512 () Bool)

(assert (=> bs!1596858 m!7179512))

(assert (=> b!6377953 d!2000143))

(declare-fun d!2000145 () Bool)

(assert (=> d!2000145 (= (Exists!3360 lambda!351692) (choose!47424 lambda!351692))))

(declare-fun bs!1596859 () Bool)

(assert (= bs!1596859 d!2000145))

(declare-fun m!7179514 () Bool)

(assert (=> bs!1596859 m!7179514))

(assert (=> b!6377953 d!2000145))

(declare-fun bs!1596860 () Bool)

(declare-fun d!2000147 () Bool)

(assert (= bs!1596860 (and d!2000147 b!6377953)))

(declare-fun lambda!351732 () Int)

(assert (=> bs!1596860 (= lambda!351732 lambda!351692)))

(assert (=> bs!1596860 (not (= lambda!351732 lambda!351693))))

(declare-fun bs!1596861 () Bool)

(assert (= bs!1596861 (and d!2000147 b!6378290)))

(assert (=> bs!1596861 (not (= lambda!351732 lambda!351725))))

(declare-fun bs!1596862 () Bool)

(assert (= bs!1596862 (and d!2000147 b!6378282)))

(assert (=> bs!1596862 (not (= lambda!351732 lambda!351726))))

(assert (=> d!2000147 true))

(assert (=> d!2000147 true))

(assert (=> d!2000147 true))

(assert (=> d!2000147 (= (isDefined!12884 (findConcatSeparation!2595 (regOne!33092 r!7292) (regTwo!33092 r!7292) Nil!65045 s!2326 s!2326)) (Exists!3360 lambda!351732))))

(declare-fun lt!2369684 () Unit!158491)

(declare-fun choose!47425 (Regex!16290 Regex!16290 List!65169) Unit!158491)

(assert (=> d!2000147 (= lt!2369684 (choose!47425 (regOne!33092 r!7292) (regTwo!33092 r!7292) s!2326))))

(assert (=> d!2000147 (validRegex!8026 (regOne!33092 r!7292))))

(assert (=> d!2000147 (= (lemmaFindConcatSeparationEquivalentToExists!2359 (regOne!33092 r!7292) (regTwo!33092 r!7292) s!2326) lt!2369684)))

(declare-fun bs!1596863 () Bool)

(assert (= bs!1596863 d!2000147))

(assert (=> bs!1596863 m!7179154))

(assert (=> bs!1596863 m!7179154))

(assert (=> bs!1596863 m!7179156))

(declare-fun m!7179516 () Bool)

(assert (=> bs!1596863 m!7179516))

(assert (=> bs!1596863 m!7179508))

(declare-fun m!7179518 () Bool)

(assert (=> bs!1596863 m!7179518))

(assert (=> b!6377953 d!2000147))

(declare-fun bs!1596864 () Bool)

(declare-fun d!2000149 () Bool)

(assert (= bs!1596864 (and d!2000149 d!2000147)))

(declare-fun lambda!351737 () Int)

(assert (=> bs!1596864 (= lambda!351737 lambda!351732)))

(declare-fun bs!1596865 () Bool)

(assert (= bs!1596865 (and d!2000149 b!6378282)))

(assert (=> bs!1596865 (not (= lambda!351737 lambda!351726))))

(declare-fun bs!1596866 () Bool)

(assert (= bs!1596866 (and d!2000149 b!6377953)))

(assert (=> bs!1596866 (not (= lambda!351737 lambda!351693))))

(assert (=> bs!1596866 (= lambda!351737 lambda!351692)))

(declare-fun bs!1596867 () Bool)

(assert (= bs!1596867 (and d!2000149 b!6378290)))

(assert (=> bs!1596867 (not (= lambda!351737 lambda!351725))))

(assert (=> d!2000149 true))

(assert (=> d!2000149 true))

(assert (=> d!2000149 true))

(declare-fun lambda!351738 () Int)

(assert (=> bs!1596865 (= lambda!351738 lambda!351726)))

(assert (=> bs!1596866 (= lambda!351738 lambda!351693)))

(assert (=> bs!1596866 (not (= lambda!351738 lambda!351692))))

(assert (=> bs!1596867 (not (= lambda!351738 lambda!351725))))

(assert (=> bs!1596864 (not (= lambda!351738 lambda!351732))))

(declare-fun bs!1596868 () Bool)

(assert (= bs!1596868 d!2000149))

(assert (=> bs!1596868 (not (= lambda!351738 lambda!351737))))

(assert (=> d!2000149 true))

(assert (=> d!2000149 true))

(assert (=> d!2000149 true))

(assert (=> d!2000149 (= (Exists!3360 lambda!351737) (Exists!3360 lambda!351738))))

(declare-fun lt!2369687 () Unit!158491)

(declare-fun choose!47426 (Regex!16290 Regex!16290 List!65169) Unit!158491)

(assert (=> d!2000149 (= lt!2369687 (choose!47426 (regOne!33092 r!7292) (regTwo!33092 r!7292) s!2326))))

(assert (=> d!2000149 (validRegex!8026 (regOne!33092 r!7292))))

(assert (=> d!2000149 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1897 (regOne!33092 r!7292) (regTwo!33092 r!7292) s!2326) lt!2369687)))

(declare-fun m!7179520 () Bool)

(assert (=> bs!1596868 m!7179520))

(declare-fun m!7179522 () Bool)

(assert (=> bs!1596868 m!7179522))

(declare-fun m!7179524 () Bool)

(assert (=> bs!1596868 m!7179524))

(assert (=> bs!1596868 m!7179508))

(assert (=> b!6377953 d!2000149))

(declare-fun d!2000151 () Bool)

(declare-fun isEmpty!37176 (Option!16181) Bool)

(assert (=> d!2000151 (= (isDefined!12884 (findConcatSeparation!2595 (regOne!33092 r!7292) (regTwo!33092 r!7292) Nil!65045 s!2326 s!2326)) (not (isEmpty!37176 (findConcatSeparation!2595 (regOne!33092 r!7292) (regTwo!33092 r!7292) Nil!65045 s!2326 s!2326))))))

(declare-fun bs!1596869 () Bool)

(assert (= bs!1596869 d!2000151))

(assert (=> bs!1596869 m!7179154))

(declare-fun m!7179526 () Bool)

(assert (=> bs!1596869 m!7179526))

(assert (=> b!6377953 d!2000151))

(declare-fun bs!1596870 () Bool)

(declare-fun d!2000153 () Bool)

(assert (= bs!1596870 (and d!2000153 d!2000103)))

(declare-fun lambda!351739 () Int)

(assert (=> bs!1596870 (= lambda!351739 lambda!351714)))

(declare-fun bs!1596871 () Bool)

(assert (= bs!1596871 (and d!2000153 d!2000105)))

(assert (=> bs!1596871 (= lambda!351739 lambda!351717)))

(declare-fun bs!1596872 () Bool)

(assert (= bs!1596872 (and d!2000153 d!2000125)))

(assert (=> bs!1596872 (= lambda!351739 lambda!351729)))

(assert (=> d!2000153 (= (inv!83973 setElem!43517) (forall!15468 (exprs!6174 setElem!43517) lambda!351739))))

(declare-fun bs!1596873 () Bool)

(assert (= bs!1596873 d!2000153))

(declare-fun m!7179528 () Bool)

(assert (=> bs!1596873 m!7179528))

(assert (=> setNonEmpty!43517 d!2000153))

(declare-fun d!2000155 () Bool)

(declare-fun c!1161996 () Bool)

(assert (=> d!2000155 (= c!1161996 (isEmpty!37175 s!2326))))

(declare-fun e!3872065 () Bool)

(assert (=> d!2000155 (= (matchZipper!2302 lt!2369554 s!2326) e!3872065)))

(declare-fun b!6378387 () Bool)

(declare-fun nullableZipper!2056 ((Set Context!11348)) Bool)

(assert (=> b!6378387 (= e!3872065 (nullableZipper!2056 lt!2369554))))

(declare-fun b!6378388 () Bool)

(assert (=> b!6378388 (= e!3872065 (matchZipper!2302 (derivationStepZipper!2256 lt!2369554 (head!13073 s!2326)) (tail!12158 s!2326)))))

(assert (= (and d!2000155 c!1161996) b!6378387))

(assert (= (and d!2000155 (not c!1161996)) b!6378388))

(assert (=> d!2000155 m!7179434))

(declare-fun m!7179530 () Bool)

(assert (=> b!6378387 m!7179530))

(assert (=> b!6378388 m!7179436))

(assert (=> b!6378388 m!7179436))

(declare-fun m!7179532 () Bool)

(assert (=> b!6378388 m!7179532))

(assert (=> b!6378388 m!7179442))

(assert (=> b!6378388 m!7179532))

(assert (=> b!6378388 m!7179442))

(declare-fun m!7179534 () Bool)

(assert (=> b!6378388 m!7179534))

(assert (=> b!6377972 d!2000155))

(declare-fun d!2000157 () Bool)

(declare-fun c!1161997 () Bool)

(assert (=> d!2000157 (= c!1161997 (isEmpty!37175 (t!378773 s!2326)))))

(declare-fun e!3872066 () Bool)

(assert (=> d!2000157 (= (matchZipper!2302 lt!2369549 (t!378773 s!2326)) e!3872066)))

(declare-fun b!6378389 () Bool)

(assert (=> b!6378389 (= e!3872066 (nullableZipper!2056 lt!2369549))))

(declare-fun b!6378390 () Bool)

(assert (=> b!6378390 (= e!3872066 (matchZipper!2302 (derivationStepZipper!2256 lt!2369549 (head!13073 (t!378773 s!2326))) (tail!12158 (t!378773 s!2326))))))

(assert (= (and d!2000157 c!1161997) b!6378389))

(assert (= (and d!2000157 (not c!1161997)) b!6378390))

(declare-fun m!7179536 () Bool)

(assert (=> d!2000157 m!7179536))

(declare-fun m!7179538 () Bool)

(assert (=> b!6378389 m!7179538))

(declare-fun m!7179540 () Bool)

(assert (=> b!6378390 m!7179540))

(assert (=> b!6378390 m!7179540))

(declare-fun m!7179542 () Bool)

(assert (=> b!6378390 m!7179542))

(declare-fun m!7179544 () Bool)

(assert (=> b!6378390 m!7179544))

(assert (=> b!6378390 m!7179542))

(assert (=> b!6378390 m!7179544))

(declare-fun m!7179546 () Bool)

(assert (=> b!6378390 m!7179546))

(assert (=> b!6377972 d!2000157))

(declare-fun e!3872069 () Bool)

(declare-fun d!2000159 () Bool)

(assert (=> d!2000159 (= (matchZipper!2302 (set.union lt!2369550 lt!2369532) (t!378773 s!2326)) e!3872069)))

(declare-fun res!2623708 () Bool)

(assert (=> d!2000159 (=> res!2623708 e!3872069)))

(assert (=> d!2000159 (= res!2623708 (matchZipper!2302 lt!2369550 (t!378773 s!2326)))))

(declare-fun lt!2369690 () Unit!158491)

(declare-fun choose!47427 ((Set Context!11348) (Set Context!11348) List!65169) Unit!158491)

(assert (=> d!2000159 (= lt!2369690 (choose!47427 lt!2369550 lt!2369532 (t!378773 s!2326)))))

(assert (=> d!2000159 (= (lemmaZipperConcatMatchesSameAsBothZippers!1121 lt!2369550 lt!2369532 (t!378773 s!2326)) lt!2369690)))

(declare-fun b!6378393 () Bool)

(assert (=> b!6378393 (= e!3872069 (matchZipper!2302 lt!2369532 (t!378773 s!2326)))))

(assert (= (and d!2000159 (not res!2623708)) b!6378393))

(assert (=> d!2000159 m!7179146))

(assert (=> d!2000159 m!7179144))

(declare-fun m!7179548 () Bool)

(assert (=> d!2000159 m!7179548))

(assert (=> b!6378393 m!7179150))

(assert (=> b!6377981 d!2000159))

(declare-fun d!2000161 () Bool)

(declare-fun c!1161998 () Bool)

(assert (=> d!2000161 (= c!1161998 (isEmpty!37175 (t!378773 s!2326)))))

(declare-fun e!3872070 () Bool)

(assert (=> d!2000161 (= (matchZipper!2302 lt!2369550 (t!378773 s!2326)) e!3872070)))

(declare-fun b!6378394 () Bool)

(assert (=> b!6378394 (= e!3872070 (nullableZipper!2056 lt!2369550))))

(declare-fun b!6378395 () Bool)

(assert (=> b!6378395 (= e!3872070 (matchZipper!2302 (derivationStepZipper!2256 lt!2369550 (head!13073 (t!378773 s!2326))) (tail!12158 (t!378773 s!2326))))))

(assert (= (and d!2000161 c!1161998) b!6378394))

(assert (= (and d!2000161 (not c!1161998)) b!6378395))

(assert (=> d!2000161 m!7179536))

(declare-fun m!7179550 () Bool)

(assert (=> b!6378394 m!7179550))

(assert (=> b!6378395 m!7179540))

(assert (=> b!6378395 m!7179540))

(declare-fun m!7179552 () Bool)

(assert (=> b!6378395 m!7179552))

(assert (=> b!6378395 m!7179544))

(assert (=> b!6378395 m!7179552))

(assert (=> b!6378395 m!7179544))

(declare-fun m!7179554 () Bool)

(assert (=> b!6378395 m!7179554))

(assert (=> b!6377981 d!2000161))

(declare-fun d!2000163 () Bool)

(declare-fun c!1161999 () Bool)

(assert (=> d!2000163 (= c!1161999 (isEmpty!37175 (t!378773 s!2326)))))

(declare-fun e!3872071 () Bool)

(assert (=> d!2000163 (= (matchZipper!2302 (set.union lt!2369550 lt!2369532) (t!378773 s!2326)) e!3872071)))

(declare-fun b!6378396 () Bool)

(assert (=> b!6378396 (= e!3872071 (nullableZipper!2056 (set.union lt!2369550 lt!2369532)))))

(declare-fun b!6378397 () Bool)

(assert (=> b!6378397 (= e!3872071 (matchZipper!2302 (derivationStepZipper!2256 (set.union lt!2369550 lt!2369532) (head!13073 (t!378773 s!2326))) (tail!12158 (t!378773 s!2326))))))

(assert (= (and d!2000163 c!1161999) b!6378396))

(assert (= (and d!2000163 (not c!1161999)) b!6378397))

(assert (=> d!2000163 m!7179536))

(declare-fun m!7179556 () Bool)

(assert (=> b!6378396 m!7179556))

(assert (=> b!6378397 m!7179540))

(assert (=> b!6378397 m!7179540))

(declare-fun m!7179558 () Bool)

(assert (=> b!6378397 m!7179558))

(assert (=> b!6378397 m!7179544))

(assert (=> b!6378397 m!7179558))

(assert (=> b!6378397 m!7179544))

(declare-fun m!7179560 () Bool)

(assert (=> b!6378397 m!7179560))

(assert (=> b!6377981 d!2000163))

(declare-fun bm!544995 () Bool)

(declare-fun call!545001 () (Set Context!11348))

(declare-fun call!545002 () (Set Context!11348))

(assert (=> bm!544995 (= call!545001 call!545002)))

(declare-fun b!6378398 () Bool)

(declare-fun e!3872077 () Bool)

(assert (=> b!6378398 (= e!3872077 (nullable!6283 (regOne!33092 (reg!16619 (regOne!33092 r!7292)))))))

(declare-fun b!6378399 () Bool)

(declare-fun e!3872075 () (Set Context!11348))

(declare-fun call!545005 () (Set Context!11348))

(assert (=> b!6378399 (= e!3872075 (set.union call!545005 call!545001))))

(declare-fun bm!544997 () Bool)

(declare-fun call!545004 () List!65170)

(declare-fun c!1162000 () Bool)

(declare-fun c!1162004 () Bool)

(declare-fun c!1162003 () Bool)

(assert (=> bm!544997 (= call!545002 (derivationStepZipperDown!1538 (ite c!1162003 (regTwo!33093 (reg!16619 (regOne!33092 r!7292))) (ite c!1162000 (regTwo!33092 (reg!16619 (regOne!33092 r!7292))) (ite c!1162004 (regOne!33092 (reg!16619 (regOne!33092 r!7292))) (reg!16619 (reg!16619 (regOne!33092 r!7292)))))) (ite (or c!1162003 c!1162000) lt!2369537 (Context!11349 call!545004)) (h!71493 s!2326)))))

(declare-fun b!6378400 () Bool)

(declare-fun e!3872072 () (Set Context!11348))

(declare-fun call!545000 () (Set Context!11348))

(assert (=> b!6378400 (= e!3872072 call!545000)))

(declare-fun b!6378401 () Bool)

(declare-fun e!3872074 () (Set Context!11348))

(assert (=> b!6378401 (= e!3872074 (set.insert lt!2369537 (as set.empty (Set Context!11348))))))

(declare-fun b!6378402 () Bool)

(assert (=> b!6378402 (= c!1162000 e!3872077)))

(declare-fun res!2623709 () Bool)

(assert (=> b!6378402 (=> (not res!2623709) (not e!3872077))))

(assert (=> b!6378402 (= res!2623709 (is-Concat!25135 (reg!16619 (regOne!33092 r!7292))))))

(declare-fun e!3872073 () (Set Context!11348))

(assert (=> b!6378402 (= e!3872073 e!3872075)))

(declare-fun bm!544998 () Bool)

(declare-fun call!545003 () List!65170)

(assert (=> bm!544998 (= call!545004 call!545003)))

(declare-fun b!6378403 () Bool)

(declare-fun e!3872076 () (Set Context!11348))

(assert (=> b!6378403 (= e!3872076 (as set.empty (Set Context!11348)))))

(declare-fun b!6378404 () Bool)

(declare-fun c!1162002 () Bool)

(assert (=> b!6378404 (= c!1162002 (is-Star!16290 (reg!16619 (regOne!33092 r!7292))))))

(assert (=> b!6378404 (= e!3872072 e!3872076)))

(declare-fun d!2000165 () Bool)

(declare-fun c!1162001 () Bool)

(assert (=> d!2000165 (= c!1162001 (and (is-ElementMatch!16290 (reg!16619 (regOne!33092 r!7292))) (= (c!1161897 (reg!16619 (regOne!33092 r!7292))) (h!71493 s!2326))))))

(assert (=> d!2000165 (= (derivationStepZipperDown!1538 (reg!16619 (regOne!33092 r!7292)) lt!2369537 (h!71493 s!2326)) e!3872074)))

(declare-fun bm!544996 () Bool)

(assert (=> bm!544996 (= call!545000 call!545001)))

(declare-fun bm!544999 () Bool)

(assert (=> bm!544999 (= call!545003 ($colon$colon!2151 (exprs!6174 lt!2369537) (ite (or c!1162000 c!1162004) (regTwo!33092 (reg!16619 (regOne!33092 r!7292))) (reg!16619 (regOne!33092 r!7292)))))))

(declare-fun b!6378405 () Bool)

(assert (=> b!6378405 (= e!3872073 (set.union call!545005 call!545002))))

(declare-fun b!6378406 () Bool)

(assert (=> b!6378406 (= e!3872076 call!545000)))

(declare-fun b!6378407 () Bool)

(assert (=> b!6378407 (= e!3872074 e!3872073)))

(assert (=> b!6378407 (= c!1162003 (is-Union!16290 (reg!16619 (regOne!33092 r!7292))))))

(declare-fun bm!545000 () Bool)

(assert (=> bm!545000 (= call!545005 (derivationStepZipperDown!1538 (ite c!1162003 (regOne!33093 (reg!16619 (regOne!33092 r!7292))) (regOne!33092 (reg!16619 (regOne!33092 r!7292)))) (ite c!1162003 lt!2369537 (Context!11349 call!545003)) (h!71493 s!2326)))))

(declare-fun b!6378408 () Bool)

(assert (=> b!6378408 (= e!3872075 e!3872072)))

(assert (=> b!6378408 (= c!1162004 (is-Concat!25135 (reg!16619 (regOne!33092 r!7292))))))

(assert (= (and d!2000165 c!1162001) b!6378401))

(assert (= (and d!2000165 (not c!1162001)) b!6378407))

(assert (= (and b!6378407 c!1162003) b!6378405))

(assert (= (and b!6378407 (not c!1162003)) b!6378402))

(assert (= (and b!6378402 res!2623709) b!6378398))

(assert (= (and b!6378402 c!1162000) b!6378399))

(assert (= (and b!6378402 (not c!1162000)) b!6378408))

(assert (= (and b!6378408 c!1162004) b!6378400))

(assert (= (and b!6378408 (not c!1162004)) b!6378404))

(assert (= (and b!6378404 c!1162002) b!6378406))

(assert (= (and b!6378404 (not c!1162002)) b!6378403))

(assert (= (or b!6378400 b!6378406) bm!544998))

(assert (= (or b!6378400 b!6378406) bm!544996))

(assert (= (or b!6378399 bm!544998) bm!544999))

(assert (= (or b!6378399 bm!544996) bm!544995))

(assert (= (or b!6378405 bm!544995) bm!544997))

(assert (= (or b!6378405 b!6378399) bm!545000))

(declare-fun m!7179562 () Bool)

(assert (=> bm!544997 m!7179562))

(declare-fun m!7179564 () Bool)

(assert (=> b!6378398 m!7179564))

(assert (=> b!6378401 m!7179182))

(declare-fun m!7179566 () Bool)

(assert (=> bm!545000 m!7179566))

(declare-fun m!7179568 () Bool)

(assert (=> bm!544999 m!7179568))

(assert (=> b!6377965 d!2000165))

(declare-fun bs!1596874 () Bool)

(declare-fun d!2000167 () Bool)

(assert (= bs!1596874 (and d!2000167 d!2000103)))

(declare-fun lambda!351742 () Int)

(assert (=> bs!1596874 (= lambda!351742 lambda!351714)))

(declare-fun bs!1596875 () Bool)

(assert (= bs!1596875 (and d!2000167 d!2000105)))

(assert (=> bs!1596875 (= lambda!351742 lambda!351717)))

(declare-fun bs!1596876 () Bool)

(assert (= bs!1596876 (and d!2000167 d!2000125)))

(assert (=> bs!1596876 (= lambda!351742 lambda!351729)))

(declare-fun bs!1596877 () Bool)

(assert (= bs!1596877 (and d!2000167 d!2000153)))

(assert (=> bs!1596877 (= lambda!351742 lambda!351739)))

(declare-fun b!6378429 () Bool)

(declare-fun e!3872094 () Bool)

(declare-fun lt!2369693 () Regex!16290)

(assert (=> b!6378429 (= e!3872094 (= lt!2369693 (head!13072 (exprs!6174 (h!71495 zl!343)))))))

(declare-fun b!6378430 () Bool)

(declare-fun isConcat!1215 (Regex!16290) Bool)

(assert (=> b!6378430 (= e!3872094 (isConcat!1215 lt!2369693))))

(declare-fun b!6378431 () Bool)

(declare-fun e!3872092 () Bool)

(assert (=> b!6378431 (= e!3872092 e!3872094)))

(declare-fun c!1162014 () Bool)

(assert (=> b!6378431 (= c!1162014 (isEmpty!37171 (tail!12157 (exprs!6174 (h!71495 zl!343)))))))

(declare-fun b!6378432 () Bool)

(declare-fun e!3872095 () Bool)

(assert (=> b!6378432 (= e!3872095 (isEmpty!37171 (t!378774 (exprs!6174 (h!71495 zl!343)))))))

(declare-fun b!6378434 () Bool)

(declare-fun e!3872091 () Bool)

(assert (=> b!6378434 (= e!3872091 e!3872092)))

(declare-fun c!1162016 () Bool)

(assert (=> b!6378434 (= c!1162016 (isEmpty!37171 (exprs!6174 (h!71495 zl!343))))))

(declare-fun b!6378435 () Bool)

(declare-fun e!3872093 () Regex!16290)

(assert (=> b!6378435 (= e!3872093 (Concat!25135 (h!71494 (exprs!6174 (h!71495 zl!343))) (generalisedConcat!1887 (t!378774 (exprs!6174 (h!71495 zl!343))))))))

(declare-fun b!6378436 () Bool)

(declare-fun e!3872090 () Regex!16290)

(assert (=> b!6378436 (= e!3872090 e!3872093)))

(declare-fun c!1162015 () Bool)

(assert (=> b!6378436 (= c!1162015 (is-Cons!65046 (exprs!6174 (h!71495 zl!343))))))

(declare-fun b!6378437 () Bool)

(declare-fun isEmptyExpr!1692 (Regex!16290) Bool)

(assert (=> b!6378437 (= e!3872092 (isEmptyExpr!1692 lt!2369693))))

(declare-fun b!6378438 () Bool)

(assert (=> b!6378438 (= e!3872093 EmptyExpr!16290)))

(declare-fun b!6378433 () Bool)

(assert (=> b!6378433 (= e!3872090 (h!71494 (exprs!6174 (h!71495 zl!343))))))

(assert (=> d!2000167 e!3872091))

(declare-fun res!2623714 () Bool)

(assert (=> d!2000167 (=> (not res!2623714) (not e!3872091))))

(assert (=> d!2000167 (= res!2623714 (validRegex!8026 lt!2369693))))

(assert (=> d!2000167 (= lt!2369693 e!3872090)))

(declare-fun c!1162013 () Bool)

(assert (=> d!2000167 (= c!1162013 e!3872095)))

(declare-fun res!2623715 () Bool)

(assert (=> d!2000167 (=> (not res!2623715) (not e!3872095))))

(assert (=> d!2000167 (= res!2623715 (is-Cons!65046 (exprs!6174 (h!71495 zl!343))))))

(assert (=> d!2000167 (forall!15468 (exprs!6174 (h!71495 zl!343)) lambda!351742)))

(assert (=> d!2000167 (= (generalisedConcat!1887 (exprs!6174 (h!71495 zl!343))) lt!2369693)))

(assert (= (and d!2000167 res!2623715) b!6378432))

(assert (= (and d!2000167 c!1162013) b!6378433))

(assert (= (and d!2000167 (not c!1162013)) b!6378436))

(assert (= (and b!6378436 c!1162015) b!6378435))

(assert (= (and b!6378436 (not c!1162015)) b!6378438))

(assert (= (and d!2000167 res!2623714) b!6378434))

(assert (= (and b!6378434 c!1162016) b!6378437))

(assert (= (and b!6378434 (not c!1162016)) b!6378431))

(assert (= (and b!6378431 c!1162014) b!6378429))

(assert (= (and b!6378431 (not c!1162014)) b!6378430))

(declare-fun m!7179570 () Bool)

(assert (=> b!6378431 m!7179570))

(assert (=> b!6378431 m!7179570))

(declare-fun m!7179572 () Bool)

(assert (=> b!6378431 m!7179572))

(declare-fun m!7179574 () Bool)

(assert (=> b!6378434 m!7179574))

(declare-fun m!7179576 () Bool)

(assert (=> b!6378430 m!7179576))

(declare-fun m!7179578 () Bool)

(assert (=> b!6378437 m!7179578))

(assert (=> b!6378432 m!7179148))

(declare-fun m!7179580 () Bool)

(assert (=> b!6378435 m!7179580))

(declare-fun m!7179582 () Bool)

(assert (=> d!2000167 m!7179582))

(declare-fun m!7179584 () Bool)

(assert (=> d!2000167 m!7179584))

(declare-fun m!7179586 () Bool)

(assert (=> b!6378429 m!7179586))

(assert (=> b!6377985 d!2000167))

(declare-fun d!2000169 () Bool)

(declare-fun e!3872098 () Bool)

(assert (=> d!2000169 e!3872098))

(declare-fun res!2623718 () Bool)

(assert (=> d!2000169 (=> (not res!2623718) (not e!3872098))))

(declare-fun lt!2369696 () List!65171)

(declare-fun noDuplicate!2120 (List!65171) Bool)

(assert (=> d!2000169 (= res!2623718 (noDuplicate!2120 lt!2369696))))

(declare-fun choose!47428 ((Set Context!11348)) List!65171)

(assert (=> d!2000169 (= lt!2369696 (choose!47428 z!1189))))

(assert (=> d!2000169 (= (toList!10074 z!1189) lt!2369696)))

(declare-fun b!6378441 () Bool)

(declare-fun content!12305 (List!65171) (Set Context!11348))

(assert (=> b!6378441 (= e!3872098 (= (content!12305 lt!2369696) z!1189))))

(assert (= (and d!2000169 res!2623718) b!6378441))

(declare-fun m!7179588 () Bool)

(assert (=> d!2000169 m!7179588))

(declare-fun m!7179590 () Bool)

(assert (=> d!2000169 m!7179590))

(declare-fun m!7179592 () Bool)

(assert (=> b!6378441 m!7179592))

(assert (=> b!6377984 d!2000169))

(declare-fun d!2000171 () Bool)

(declare-fun c!1162017 () Bool)

(assert (=> d!2000171 (= c!1162017 (isEmpty!37175 (t!378773 s!2326)))))

(declare-fun e!3872099 () Bool)

(assert (=> d!2000171 (= (matchZipper!2302 lt!2369532 (t!378773 s!2326)) e!3872099)))

(declare-fun b!6378442 () Bool)

(assert (=> b!6378442 (= e!3872099 (nullableZipper!2056 lt!2369532))))

(declare-fun b!6378443 () Bool)

(assert (=> b!6378443 (= e!3872099 (matchZipper!2302 (derivationStepZipper!2256 lt!2369532 (head!13073 (t!378773 s!2326))) (tail!12158 (t!378773 s!2326))))))

(assert (= (and d!2000171 c!1162017) b!6378442))

(assert (= (and d!2000171 (not c!1162017)) b!6378443))

(assert (=> d!2000171 m!7179536))

(declare-fun m!7179594 () Bool)

(assert (=> b!6378442 m!7179594))

(assert (=> b!6378443 m!7179540))

(assert (=> b!6378443 m!7179540))

(declare-fun m!7179596 () Bool)

(assert (=> b!6378443 m!7179596))

(assert (=> b!6378443 m!7179544))

(assert (=> b!6378443 m!7179596))

(assert (=> b!6378443 m!7179544))

(declare-fun m!7179598 () Bool)

(assert (=> b!6378443 m!7179598))

(assert (=> b!6377954 d!2000171))

(declare-fun d!2000173 () Bool)

(assert (=> d!2000173 (= (isEmpty!37171 (t!378774 (exprs!6174 (h!71495 zl!343)))) (is-Nil!65046 (t!378774 (exprs!6174 (h!71495 zl!343)))))))

(assert (=> b!6377963 d!2000173))

(declare-fun b!6378456 () Bool)

(declare-fun e!3872102 () Bool)

(declare-fun tp!1775277 () Bool)

(assert (=> b!6378456 (= e!3872102 tp!1775277)))

(declare-fun b!6378454 () Bool)

(assert (=> b!6378454 (= e!3872102 tp_is_empty!41833)))

(declare-fun b!6378457 () Bool)

(declare-fun tp!1775275 () Bool)

(declare-fun tp!1775274 () Bool)

(assert (=> b!6378457 (= e!3872102 (and tp!1775275 tp!1775274))))

(assert (=> b!6377973 (= tp!1775231 e!3872102)))

(declare-fun b!6378455 () Bool)

(declare-fun tp!1775273 () Bool)

(declare-fun tp!1775276 () Bool)

(assert (=> b!6378455 (= e!3872102 (and tp!1775273 tp!1775276))))

(assert (= (and b!6377973 (is-ElementMatch!16290 (regOne!33093 r!7292))) b!6378454))

(assert (= (and b!6377973 (is-Concat!25135 (regOne!33093 r!7292))) b!6378455))

(assert (= (and b!6377973 (is-Star!16290 (regOne!33093 r!7292))) b!6378456))

(assert (= (and b!6377973 (is-Union!16290 (regOne!33093 r!7292))) b!6378457))

(declare-fun b!6378460 () Bool)

(declare-fun e!3872103 () Bool)

(declare-fun tp!1775282 () Bool)

(assert (=> b!6378460 (= e!3872103 tp!1775282)))

(declare-fun b!6378458 () Bool)

(assert (=> b!6378458 (= e!3872103 tp_is_empty!41833)))

(declare-fun b!6378461 () Bool)

(declare-fun tp!1775280 () Bool)

(declare-fun tp!1775279 () Bool)

(assert (=> b!6378461 (= e!3872103 (and tp!1775280 tp!1775279))))

(assert (=> b!6377973 (= tp!1775228 e!3872103)))

(declare-fun b!6378459 () Bool)

(declare-fun tp!1775278 () Bool)

(declare-fun tp!1775281 () Bool)

(assert (=> b!6378459 (= e!3872103 (and tp!1775278 tp!1775281))))

(assert (= (and b!6377973 (is-ElementMatch!16290 (regTwo!33093 r!7292))) b!6378458))

(assert (= (and b!6377973 (is-Concat!25135 (regTwo!33093 r!7292))) b!6378459))

(assert (= (and b!6377973 (is-Star!16290 (regTwo!33093 r!7292))) b!6378460))

(assert (= (and b!6377973 (is-Union!16290 (regTwo!33093 r!7292))) b!6378461))

(declare-fun condSetEmpty!43523 () Bool)

(assert (=> setNonEmpty!43517 (= condSetEmpty!43523 (= setRest!43517 (as set.empty (Set Context!11348))))))

(declare-fun setRes!43523 () Bool)

(assert (=> setNonEmpty!43517 (= tp!1775230 setRes!43523)))

(declare-fun setIsEmpty!43523 () Bool)

(assert (=> setIsEmpty!43523 setRes!43523))

(declare-fun e!3872106 () Bool)

(declare-fun tp!1775288 () Bool)

(declare-fun setNonEmpty!43523 () Bool)

(declare-fun setElem!43523 () Context!11348)

(assert (=> setNonEmpty!43523 (= setRes!43523 (and tp!1775288 (inv!83973 setElem!43523) e!3872106))))

(declare-fun setRest!43523 () (Set Context!11348))

(assert (=> setNonEmpty!43523 (= setRest!43517 (set.union (set.insert setElem!43523 (as set.empty (Set Context!11348))) setRest!43523))))

(declare-fun b!6378466 () Bool)

(declare-fun tp!1775287 () Bool)

(assert (=> b!6378466 (= e!3872106 tp!1775287)))

(assert (= (and setNonEmpty!43517 condSetEmpty!43523) setIsEmpty!43523))

(assert (= (and setNonEmpty!43517 (not condSetEmpty!43523)) setNonEmpty!43523))

(assert (= setNonEmpty!43523 b!6378466))

(declare-fun m!7179600 () Bool)

(assert (=> setNonEmpty!43523 m!7179600))

(declare-fun b!6378471 () Bool)

(declare-fun e!3872109 () Bool)

(declare-fun tp!1775293 () Bool)

(declare-fun tp!1775294 () Bool)

(assert (=> b!6378471 (= e!3872109 (and tp!1775293 tp!1775294))))

(assert (=> b!6377967 (= tp!1775232 e!3872109)))

(assert (= (and b!6377967 (is-Cons!65046 (exprs!6174 (h!71495 zl!343)))) b!6378471))

(declare-fun b!6378474 () Bool)

(declare-fun e!3872110 () Bool)

(declare-fun tp!1775299 () Bool)

(assert (=> b!6378474 (= e!3872110 tp!1775299)))

(declare-fun b!6378472 () Bool)

(assert (=> b!6378472 (= e!3872110 tp_is_empty!41833)))

(declare-fun b!6378475 () Bool)

(declare-fun tp!1775297 () Bool)

(declare-fun tp!1775296 () Bool)

(assert (=> b!6378475 (= e!3872110 (and tp!1775297 tp!1775296))))

(assert (=> b!6377962 (= tp!1775224 e!3872110)))

(declare-fun b!6378473 () Bool)

(declare-fun tp!1775295 () Bool)

(declare-fun tp!1775298 () Bool)

(assert (=> b!6378473 (= e!3872110 (and tp!1775295 tp!1775298))))

(assert (= (and b!6377962 (is-ElementMatch!16290 (reg!16619 r!7292))) b!6378472))

(assert (= (and b!6377962 (is-Concat!25135 (reg!16619 r!7292))) b!6378473))

(assert (= (and b!6377962 (is-Star!16290 (reg!16619 r!7292))) b!6378474))

(assert (= (and b!6377962 (is-Union!16290 (reg!16619 r!7292))) b!6378475))

(declare-fun b!6378478 () Bool)

(declare-fun e!3872111 () Bool)

(declare-fun tp!1775304 () Bool)

(assert (=> b!6378478 (= e!3872111 tp!1775304)))

(declare-fun b!6378476 () Bool)

(assert (=> b!6378476 (= e!3872111 tp_is_empty!41833)))

(declare-fun b!6378479 () Bool)

(declare-fun tp!1775302 () Bool)

(declare-fun tp!1775301 () Bool)

(assert (=> b!6378479 (= e!3872111 (and tp!1775302 tp!1775301))))

(assert (=> b!6377966 (= tp!1775226 e!3872111)))

(declare-fun b!6378477 () Bool)

(declare-fun tp!1775300 () Bool)

(declare-fun tp!1775303 () Bool)

(assert (=> b!6378477 (= e!3872111 (and tp!1775300 tp!1775303))))

(assert (= (and b!6377966 (is-ElementMatch!16290 (regOne!33092 r!7292))) b!6378476))

(assert (= (and b!6377966 (is-Concat!25135 (regOne!33092 r!7292))) b!6378477))

(assert (= (and b!6377966 (is-Star!16290 (regOne!33092 r!7292))) b!6378478))

(assert (= (and b!6377966 (is-Union!16290 (regOne!33092 r!7292))) b!6378479))

(declare-fun b!6378482 () Bool)

(declare-fun e!3872112 () Bool)

(declare-fun tp!1775309 () Bool)

(assert (=> b!6378482 (= e!3872112 tp!1775309)))

(declare-fun b!6378480 () Bool)

(assert (=> b!6378480 (= e!3872112 tp_is_empty!41833)))

(declare-fun b!6378483 () Bool)

(declare-fun tp!1775307 () Bool)

(declare-fun tp!1775306 () Bool)

(assert (=> b!6378483 (= e!3872112 (and tp!1775307 tp!1775306))))

(assert (=> b!6377966 (= tp!1775225 e!3872112)))

(declare-fun b!6378481 () Bool)

(declare-fun tp!1775305 () Bool)

(declare-fun tp!1775308 () Bool)

(assert (=> b!6378481 (= e!3872112 (and tp!1775305 tp!1775308))))

(assert (= (and b!6377966 (is-ElementMatch!16290 (regTwo!33092 r!7292))) b!6378480))

(assert (= (and b!6377966 (is-Concat!25135 (regTwo!33092 r!7292))) b!6378481))

(assert (= (and b!6377966 (is-Star!16290 (regTwo!33092 r!7292))) b!6378482))

(assert (= (and b!6377966 (is-Union!16290 (regTwo!33092 r!7292))) b!6378483))

(declare-fun b!6378484 () Bool)

(declare-fun e!3872113 () Bool)

(declare-fun tp!1775310 () Bool)

(declare-fun tp!1775311 () Bool)

(assert (=> b!6378484 (= e!3872113 (and tp!1775310 tp!1775311))))

(assert (=> b!6377971 (= tp!1775229 e!3872113)))

(assert (= (and b!6377971 (is-Cons!65046 (exprs!6174 setElem!43517))) b!6378484))

(declare-fun b!6378489 () Bool)

(declare-fun e!3872116 () Bool)

(declare-fun tp!1775314 () Bool)

(assert (=> b!6378489 (= e!3872116 (and tp_is_empty!41833 tp!1775314))))

(assert (=> b!6377955 (= tp!1775223 e!3872116)))

(assert (= (and b!6377955 (is-Cons!65045 (t!378773 s!2326))) b!6378489))

(declare-fun b!6378497 () Bool)

(declare-fun e!3872122 () Bool)

(declare-fun tp!1775319 () Bool)

(assert (=> b!6378497 (= e!3872122 tp!1775319)))

(declare-fun b!6378496 () Bool)

(declare-fun e!3872121 () Bool)

(declare-fun tp!1775320 () Bool)

(assert (=> b!6378496 (= e!3872121 (and (inv!83973 (h!71495 (t!378775 zl!343))) e!3872122 tp!1775320))))

(assert (=> b!6377959 (= tp!1775227 e!3872121)))

(assert (= b!6378496 b!6378497))

(assert (= (and b!6377959 (is-Cons!65047 (t!378775 zl!343))) b!6378496))

(declare-fun m!7179602 () Bool)

(assert (=> b!6378496 m!7179602))

(declare-fun b_lambda!242397 () Bool)

(assert (= b_lambda!242389 (or b!6377958 b_lambda!242397)))

(declare-fun bs!1596878 () Bool)

(declare-fun d!2000175 () Bool)

(assert (= bs!1596878 (and d!2000175 b!6377958)))

(assert (=> bs!1596878 (= (dynLambda!25808 lambda!351694 (h!71495 zl!343)) (derivationStepZipperUp!1464 (h!71495 zl!343) (h!71493 s!2326)))))

(assert (=> bs!1596878 m!7179170))

(assert (=> d!2000091 d!2000175))

(declare-fun b_lambda!242399 () Bool)

(assert (= b_lambda!242391 (or b!6377958 b_lambda!242399)))

(declare-fun bs!1596879 () Bool)

(declare-fun d!2000177 () Bool)

(assert (= bs!1596879 (and d!2000177 b!6377958)))

(assert (=> bs!1596879 (= (dynLambda!25808 lambda!351694 lt!2369548) (derivationStepZipperUp!1464 lt!2369548 (h!71493 s!2326)))))

(assert (=> bs!1596879 m!7179204))

(assert (=> d!2000111 d!2000177))

(declare-fun b_lambda!242401 () Bool)

(assert (= b_lambda!242393 (or b!6377958 b_lambda!242401)))

(declare-fun bs!1596880 () Bool)

(declare-fun d!2000179 () Bool)

(assert (= bs!1596880 (and d!2000179 b!6377958)))

(assert (=> bs!1596880 (= (dynLambda!25808 lambda!351694 lt!2369537) (derivationStepZipperUp!1464 lt!2369537 (h!71493 s!2326)))))

(assert (=> bs!1596880 m!7179184))

(assert (=> d!2000133 d!2000179))

(declare-fun b_lambda!242403 () Bool)

(assert (= b_lambda!242395 (or b!6377958 b_lambda!242403)))

(declare-fun bs!1596881 () Bool)

(declare-fun d!2000181 () Bool)

(assert (= bs!1596881 (and d!2000181 b!6377958)))

(assert (=> bs!1596881 (= (dynLambda!25808 lambda!351694 lt!2369539) (derivationStepZipperUp!1464 lt!2369539 (h!71493 s!2326)))))

(assert (=> bs!1596881 m!7179188))

(assert (=> d!2000139 d!2000181))

(push 1)

(assert (not b!6378198))

(assert (not b!6378482))

(assert (not b!6378429))

(assert (not b!6378431))

(assert (not bs!1596880))

(assert (not b!6378435))

(assert (not b!6378389))

(assert (not b!6378387))

(assert (not b!6378161))

(assert (not bm!544999))

(assert (not b!6378441))

(assert (not b!6378323))

(assert tp_is_empty!41833)

(assert (not d!2000127))

(assert (not b!6378330))

(assert (not b!6378484))

(assert (not d!2000141))

(assert (not b!6378395))

(assert (not d!2000079))

(assert (not b!6378474))

(assert (not d!2000159))

(assert (not d!2000123))

(assert (not b!6378230))

(assert (not d!2000091))

(assert (not b!6378397))

(assert (not bm!544988))

(assert (not bs!1596878))

(assert (not d!2000125))

(assert (not d!2000163))

(assert (not b!6378335))

(assert (not b!6378434))

(assert (not b!6378367))

(assert (not b!6378481))

(assert (not b!6378166))

(assert (not b!6378475))

(assert (not b!6378169))

(assert (not b!6378365))

(assert (not b!6378473))

(assert (not b!6378289))

(assert (not b!6378368))

(assert (not b!6378322))

(assert (not bm!544997))

(assert (not b!6378189))

(assert (not d!2000155))

(assert (not d!2000149))

(assert (not b!6378479))

(assert (not b!6378388))

(assert (not d!2000111))

(assert (not bm!544992))

(assert (not b!6378496))

(assert (not bs!1596881))

(assert (not d!2000151))

(assert (not b!6378460))

(assert (not b!6378430))

(assert (not d!2000119))

(assert (not b!6378477))

(assert (not setNonEmpty!43523))

(assert (not d!2000095))

(assert (not b!6378226))

(assert (not d!2000147))

(assert (not b!6378235))

(assert (not b_lambda!242401))

(assert (not bm!544994))

(assert (not bm!544950))

(assert (not b!6378461))

(assert (not b_lambda!242399))

(assert (not d!2000105))

(assert (not b!6378455))

(assert (not d!2000121))

(assert (not d!2000161))

(assert (not b!6378394))

(assert (not bm!544980))

(assert (not d!2000157))

(assert (not b!6378340))

(assert (not d!2000153))

(assert (not b!6378483))

(assert (not b!6378432))

(assert (not d!2000133))

(assert (not b!6378232))

(assert (not d!2000143))

(assert (not b_lambda!242397))

(assert (not b!6378284))

(assert (not b!6378478))

(assert (not b!6378240))

(assert (not bm!544977))

(assert (not b!6378338))

(assert (not b!6378466))

(assert (not bm!544968))

(assert (not bm!544993))

(assert (not b!6378390))

(assert (not b!6378123))

(assert (not b!6378332))

(assert (not b!6378437))

(assert (not b!6378324))

(assert (not d!2000167))

(assert (not b!6378366))

(assert (not bm!544970))

(assert (not b!6378320))

(assert (not bm!544969))

(assert (not b!6378442))

(assert (not d!2000171))

(assert (not bm!544989))

(assert (not b!6378456))

(assert (not d!2000103))

(assert (not bm!544983))

(assert (not d!2000139))

(assert (not b!6378497))

(assert (not d!2000137))

(assert (not b!6378459))

(assert (not b!6378471))

(assert (not d!2000089))

(assert (not b!6378443))

(assert (not b!6378227))

(assert (not b!6378164))

(assert (not bs!1596879))

(assert (not b!6378362))

(assert (not b!6378233))

(assert (not bm!544965))

(assert (not b!6378398))

(assert (not d!2000145))

(assert (not b!6378457))

(assert (not d!2000113))

(assert (not bm!545000))

(assert (not b!6378229))

(assert (not b!6378246))

(assert (not b!6378393))

(assert (not b_lambda!242403))

(assert (not d!2000101))

(assert (not b!6378243))

(assert (not b!6378396))

(assert (not b!6378343))

(assert (not d!2000107))

(assert (not bm!544967))

(assert (not d!2000085))

(assert (not b!6378149))

(assert (not b!6378489))

(assert (not b!6378370))

(assert (not b!6378126))

(assert (not d!2000131))

(assert (not bm!544982))

(assert (not d!2000169))

(assert (not bm!544979))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

