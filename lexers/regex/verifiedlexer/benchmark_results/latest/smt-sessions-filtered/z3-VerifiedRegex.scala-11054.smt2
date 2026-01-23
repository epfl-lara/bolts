; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!572834 () Bool)

(assert start!572834)

(declare-fun b!5475492 () Bool)

(assert (=> b!5475492 true))

(assert (=> b!5475492 true))

(declare-fun lambda!291845 () Int)

(declare-fun lambda!291844 () Int)

(assert (=> b!5475492 (not (= lambda!291845 lambda!291844))))

(assert (=> b!5475492 true))

(assert (=> b!5475492 true))

(declare-fun lambda!291846 () Int)

(assert (=> b!5475492 (not (= lambda!291846 lambda!291844))))

(assert (=> b!5475492 (not (= lambda!291846 lambda!291845))))

(assert (=> b!5475492 true))

(assert (=> b!5475492 true))

(declare-fun b!5475499 () Bool)

(assert (=> b!5475499 true))

(declare-fun setIsEmpty!35977 () Bool)

(declare-fun setRes!35977 () Bool)

(assert (=> setIsEmpty!35977 setRes!35977))

(declare-fun b!5475483 () Bool)

(declare-fun res!2334200 () Bool)

(declare-fun e!3389176 () Bool)

(assert (=> b!5475483 (=> res!2334200 e!3389176)))

(declare-datatypes ((C!30980 0))(
  ( (C!30981 (val!25192 Int)) )
))
(declare-datatypes ((Regex!15355 0))(
  ( (ElementMatch!15355 (c!956499 C!30980)) (Concat!24200 (regOne!31222 Regex!15355) (regTwo!31222 Regex!15355)) (EmptyExpr!15355) (Star!15355 (reg!15684 Regex!15355)) (EmptyLang!15355) (Union!15355 (regOne!31223 Regex!15355) (regTwo!31223 Regex!15355)) )
))
(declare-datatypes ((List!62364 0))(
  ( (Nil!62240) (Cons!62240 (h!68688 Regex!15355) (t!375593 List!62364)) )
))
(declare-datatypes ((Context!9478 0))(
  ( (Context!9479 (exprs!5239 List!62364)) )
))
(declare-fun lt!2237017 () Context!9478)

(declare-fun r!7292 () Regex!15355)

(declare-datatypes ((List!62365 0))(
  ( (Nil!62241) (Cons!62241 (h!68689 Context!9478) (t!375594 List!62365)) )
))
(declare-fun unfocusZipper!1097 (List!62365) Regex!15355)

(assert (=> b!5475483 (= res!2334200 (not (= (unfocusZipper!1097 (Cons!62241 lt!2237017 Nil!62241)) (reg!15684 r!7292))))))

(declare-fun b!5475484 () Bool)

(declare-fun res!2334206 () Bool)

(declare-fun e!3389177 () Bool)

(assert (=> b!5475484 (=> res!2334206 e!3389177)))

(declare-fun zl!343 () List!62365)

(declare-fun generalisedConcat!1024 (List!62364) Regex!15355)

(assert (=> b!5475484 (= res!2334206 (not (= r!7292 (generalisedConcat!1024 (exprs!5239 (h!68689 zl!343))))))))

(declare-fun b!5475485 () Bool)

(declare-fun e!3389179 () Bool)

(declare-fun e!3389181 () Bool)

(assert (=> b!5475485 (= e!3389179 e!3389181)))

(declare-fun res!2334198 () Bool)

(assert (=> b!5475485 (=> res!2334198 e!3389181)))

(declare-fun lt!2237023 () Context!9478)

(declare-fun lt!2237036 () Regex!15355)

(assert (=> b!5475485 (= res!2334198 (not (= (unfocusZipper!1097 (Cons!62241 lt!2237023 Nil!62241)) lt!2237036)))))

(assert (=> b!5475485 (= lt!2237036 (Concat!24200 (reg!15684 r!7292) r!7292))))

(declare-fun b!5475486 () Bool)

(declare-fun res!2334194 () Bool)

(assert (=> b!5475486 (=> res!2334194 e!3389177)))

(declare-fun isEmpty!34190 (List!62365) Bool)

(assert (=> b!5475486 (= res!2334194 (not (isEmpty!34190 (t!375594 zl!343))))))

(declare-fun b!5475487 () Bool)

(declare-fun res!2334203 () Bool)

(declare-fun e!3389178 () Bool)

(assert (=> b!5475487 (=> (not res!2334203) (not e!3389178))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9478))

(declare-fun toList!9139 ((InoxSet Context!9478)) List!62365)

(assert (=> b!5475487 (= res!2334203 (= (toList!9139 z!1189) zl!343))))

(declare-fun b!5475489 () Bool)

(declare-fun e!3389180 () Bool)

(declare-fun lt!2237012 () Bool)

(assert (=> b!5475489 (= e!3389180 lt!2237012)))

(declare-fun b!5475490 () Bool)

(declare-fun e!3389168 () Bool)

(declare-fun tp!1505200 () Bool)

(assert (=> b!5475490 (= e!3389168 tp!1505200)))

(declare-fun b!5475491 () Bool)

(declare-fun e!3389169 () Bool)

(declare-fun tp_is_empty!39963 () Bool)

(declare-fun tp!1505199 () Bool)

(assert (=> b!5475491 (= e!3389169 (and tp_is_empty!39963 tp!1505199))))

(declare-fun e!3389172 () Bool)

(assert (=> b!5475492 (= e!3389177 e!3389172)))

(declare-fun res!2334204 () Bool)

(assert (=> b!5475492 (=> res!2334204 e!3389172)))

(declare-fun lt!2237034 () Bool)

(assert (=> b!5475492 (= res!2334204 (not (= lt!2237034 e!3389180)))))

(declare-fun res!2334189 () Bool)

(assert (=> b!5475492 (=> res!2334189 e!3389180)))

(declare-datatypes ((List!62366 0))(
  ( (Nil!62242) (Cons!62242 (h!68690 C!30980) (t!375595 List!62366)) )
))
(declare-fun s!2326 () List!62366)

(declare-fun isEmpty!34191 (List!62366) Bool)

(assert (=> b!5475492 (= res!2334189 (isEmpty!34191 s!2326))))

(declare-fun Exists!2534 (Int) Bool)

(assert (=> b!5475492 (= (Exists!2534 lambda!291844) (Exists!2534 lambda!291846))))

(declare-datatypes ((Unit!155160 0))(
  ( (Unit!155161) )
))
(declare-fun lt!2237020 () Unit!155160)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1184 (Regex!15355 Regex!15355 List!62366) Unit!155160)

(assert (=> b!5475492 (= lt!2237020 (lemmaExistCutMatchRandMatchRSpecEquivalent!1184 (reg!15684 r!7292) r!7292 s!2326))))

(assert (=> b!5475492 (= (Exists!2534 lambda!291844) (Exists!2534 lambda!291845))))

(declare-fun lt!2237027 () Unit!155160)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!508 (Regex!15355 List!62366) Unit!155160)

(assert (=> b!5475492 (= lt!2237027 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!508 (reg!15684 r!7292) s!2326))))

(assert (=> b!5475492 (= lt!2237012 (Exists!2534 lambda!291844))))

(declare-datatypes ((tuple2!65104 0))(
  ( (tuple2!65105 (_1!35855 List!62366) (_2!35855 List!62366)) )
))
(declare-datatypes ((Option!15464 0))(
  ( (None!15463) (Some!15463 (v!51492 tuple2!65104)) )
))
(declare-fun isDefined!12167 (Option!15464) Bool)

(declare-fun findConcatSeparation!1878 (Regex!15355 Regex!15355 List!62366 List!62366 List!62366) Option!15464)

(assert (=> b!5475492 (= lt!2237012 (isDefined!12167 (findConcatSeparation!1878 (reg!15684 r!7292) r!7292 Nil!62242 s!2326 s!2326)))))

(declare-fun lt!2237031 () Unit!155160)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1642 (Regex!15355 Regex!15355 List!62366) Unit!155160)

(assert (=> b!5475492 (= lt!2237031 (lemmaFindConcatSeparationEquivalentToExists!1642 (reg!15684 r!7292) r!7292 s!2326))))

(declare-fun b!5475493 () Bool)

(declare-fun res!2334191 () Bool)

(assert (=> b!5475493 (=> res!2334191 e!3389179)))

(declare-fun lt!2237018 () Regex!15355)

(assert (=> b!5475493 (= res!2334191 (or (not (= lt!2237018 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5475494 () Bool)

(declare-fun e!3389170 () Bool)

(assert (=> b!5475494 (= e!3389170 (not e!3389177))))

(declare-fun res!2334205 () Bool)

(assert (=> b!5475494 (=> res!2334205 e!3389177)))

(get-info :version)

(assert (=> b!5475494 (= res!2334205 (not ((_ is Cons!62241) zl!343)))))

(declare-fun matchRSpec!2458 (Regex!15355 List!62366) Bool)

(assert (=> b!5475494 (= lt!2237034 (matchRSpec!2458 r!7292 s!2326))))

(declare-fun matchR!7540 (Regex!15355 List!62366) Bool)

(assert (=> b!5475494 (= lt!2237034 (matchR!7540 r!7292 s!2326))))

(declare-fun lt!2237024 () Unit!155160)

(declare-fun mainMatchTheorem!2458 (Regex!15355 List!62366) Unit!155160)

(assert (=> b!5475494 (= lt!2237024 (mainMatchTheorem!2458 r!7292 s!2326))))

(declare-fun b!5475495 () Bool)

(declare-fun res!2334197 () Bool)

(assert (=> b!5475495 (=> res!2334197 e!3389179)))

(declare-fun lt!2237022 () (InoxSet Context!9478))

(declare-fun matchZipper!1573 ((InoxSet Context!9478) List!62366) Bool)

(declare-fun derivationStepZipper!1550 ((InoxSet Context!9478) C!30980) (InoxSet Context!9478))

(assert (=> b!5475495 (= res!2334197 (not (= (matchZipper!1573 lt!2237022 s!2326) (matchZipper!1573 (derivationStepZipper!1550 lt!2237022 (h!68690 s!2326)) (t!375595 s!2326)))))))

(declare-fun b!5475496 () Bool)

(declare-fun e!3389182 () Bool)

(declare-fun tp!1505198 () Bool)

(assert (=> b!5475496 (= e!3389182 tp!1505198)))

(declare-fun b!5475497 () Bool)

(declare-fun e!3389171 () Bool)

(declare-fun tp!1505192 () Bool)

(assert (=> b!5475497 (= e!3389171 tp!1505192)))

(declare-fun setNonEmpty!35977 () Bool)

(declare-fun setElem!35977 () Context!9478)

(declare-fun tp!1505193 () Bool)

(declare-fun inv!81634 (Context!9478) Bool)

(assert (=> setNonEmpty!35977 (= setRes!35977 (and tp!1505193 (inv!81634 setElem!35977) e!3389168))))

(declare-fun setRest!35977 () (InoxSet Context!9478))

(assert (=> setNonEmpty!35977 (= z!1189 ((_ map or) (store ((as const (Array Context!9478 Bool)) false) setElem!35977 true) setRest!35977))))

(declare-fun b!5475498 () Bool)

(declare-fun tp!1505201 () Bool)

(declare-fun tp!1505197 () Bool)

(assert (=> b!5475498 (= e!3389182 (and tp!1505201 tp!1505197))))

(declare-fun e!3389175 () Bool)

(declare-fun e!3389167 () Bool)

(assert (=> b!5475499 (= e!3389175 e!3389167)))

(declare-fun res!2334186 () Bool)

(assert (=> b!5475499 (=> res!2334186 e!3389167)))

(declare-fun lt!2237015 () (InoxSet Context!9478))

(declare-fun lt!2237026 () (InoxSet Context!9478))

(assert (=> b!5475499 (= res!2334186 (not (= lt!2237015 lt!2237026)))))

(declare-fun lambda!291847 () Int)

(declare-fun flatMap!1058 ((InoxSet Context!9478) Int) (InoxSet Context!9478))

(declare-fun derivationStepZipperUp!707 (Context!9478 C!30980) (InoxSet Context!9478))

(assert (=> b!5475499 (= (flatMap!1058 z!1189 lambda!291847) (derivationStepZipperUp!707 (h!68689 zl!343) (h!68690 s!2326)))))

(declare-fun lt!2237019 () Unit!155160)

(declare-fun lemmaFlatMapOnSingletonSet!590 ((InoxSet Context!9478) Context!9478 Int) Unit!155160)

(assert (=> b!5475499 (= lt!2237019 (lemmaFlatMapOnSingletonSet!590 z!1189 (h!68689 zl!343) lambda!291847))))

(declare-fun b!5475488 () Bool)

(assert (=> b!5475488 (= e!3389181 e!3389176)))

(declare-fun res!2334195 () Bool)

(assert (=> b!5475488 (=> res!2334195 e!3389176)))

(declare-fun lt!2237014 () (InoxSet Context!9478))

(assert (=> b!5475488 (= res!2334195 (not (= lt!2237015 (derivationStepZipper!1550 lt!2237014 (h!68690 s!2326)))))))

(declare-fun lt!2237028 () Context!9478)

(assert (=> b!5475488 (= (flatMap!1058 lt!2237014 lambda!291847) (derivationStepZipperUp!707 lt!2237028 (h!68690 s!2326)))))

(declare-fun lt!2237033 () Unit!155160)

(assert (=> b!5475488 (= lt!2237033 (lemmaFlatMapOnSingletonSet!590 lt!2237014 lt!2237028 lambda!291847))))

(declare-fun lt!2237016 () (InoxSet Context!9478))

(assert (=> b!5475488 (= (flatMap!1058 lt!2237016 lambda!291847) (derivationStepZipperUp!707 lt!2237017 (h!68690 s!2326)))))

(declare-fun lt!2237013 () Unit!155160)

(assert (=> b!5475488 (= lt!2237013 (lemmaFlatMapOnSingletonSet!590 lt!2237016 lt!2237017 lambda!291847))))

(declare-fun lt!2237011 () (InoxSet Context!9478))

(assert (=> b!5475488 (= lt!2237011 (derivationStepZipperUp!707 lt!2237028 (h!68690 s!2326)))))

(declare-fun lt!2237029 () (InoxSet Context!9478))

(assert (=> b!5475488 (= lt!2237029 (derivationStepZipperUp!707 lt!2237017 (h!68690 s!2326)))))

(assert (=> b!5475488 (= lt!2237014 (store ((as const (Array Context!9478 Bool)) false) lt!2237028 true))))

(assert (=> b!5475488 (= lt!2237016 (store ((as const (Array Context!9478 Bool)) false) lt!2237017 true))))

(assert (=> b!5475488 (= lt!2237017 (Context!9479 (Cons!62240 (reg!15684 r!7292) Nil!62240)))))

(declare-fun res!2334202 () Bool)

(assert (=> start!572834 (=> (not res!2334202) (not e!3389178))))

(declare-fun validRegex!7091 (Regex!15355) Bool)

(assert (=> start!572834 (= res!2334202 (validRegex!7091 r!7292))))

(assert (=> start!572834 e!3389178))

(assert (=> start!572834 e!3389182))

(declare-fun condSetEmpty!35977 () Bool)

(assert (=> start!572834 (= condSetEmpty!35977 (= z!1189 ((as const (Array Context!9478 Bool)) false)))))

(assert (=> start!572834 setRes!35977))

(declare-fun e!3389173 () Bool)

(assert (=> start!572834 e!3389173))

(assert (=> start!572834 e!3389169))

(declare-fun b!5475500 () Bool)

(declare-fun res!2334187 () Bool)

(assert (=> b!5475500 (=> res!2334187 e!3389177)))

(assert (=> b!5475500 (= res!2334187 (not ((_ is Cons!62240) (exprs!5239 (h!68689 zl!343)))))))

(declare-fun b!5475501 () Bool)

(declare-fun e!3389174 () Bool)

(assert (=> b!5475501 (= e!3389176 e!3389174)))

(declare-fun res!2334185 () Bool)

(assert (=> b!5475501 (=> res!2334185 e!3389174)))

(declare-fun lt!2237035 () Bool)

(assert (=> b!5475501 (= res!2334185 lt!2237035)))

(assert (=> b!5475501 (= lt!2237035 (matchRSpec!2458 lt!2237036 s!2326))))

(assert (=> b!5475501 (= lt!2237035 (matchR!7540 lt!2237036 s!2326))))

(declare-fun lt!2237037 () Unit!155160)

(assert (=> b!5475501 (= lt!2237037 (mainMatchTheorem!2458 lt!2237036 s!2326))))

(declare-fun b!5475502 () Bool)

(assert (=> b!5475502 (= e!3389167 e!3389179)))

(declare-fun res!2334193 () Bool)

(assert (=> b!5475502 (=> res!2334193 e!3389179)))

(declare-fun derivationStepZipperDown!781 (Regex!15355 Context!9478 C!30980) (InoxSet Context!9478))

(assert (=> b!5475502 (= res!2334193 (not (= lt!2237015 (derivationStepZipperDown!781 (reg!15684 r!7292) lt!2237028 (h!68690 s!2326)))))))

(declare-fun lt!2237032 () List!62364)

(assert (=> b!5475502 (= lt!2237028 (Context!9479 lt!2237032))))

(assert (=> b!5475502 (= (flatMap!1058 lt!2237022 lambda!291847) (derivationStepZipperUp!707 lt!2237023 (h!68690 s!2326)))))

(declare-fun lt!2237021 () Unit!155160)

(assert (=> b!5475502 (= lt!2237021 (lemmaFlatMapOnSingletonSet!590 lt!2237022 lt!2237023 lambda!291847))))

(declare-fun lt!2237025 () (InoxSet Context!9478))

(assert (=> b!5475502 (= lt!2237025 (derivationStepZipperUp!707 lt!2237023 (h!68690 s!2326)))))

(assert (=> b!5475502 (= lt!2237022 (store ((as const (Array Context!9478 Bool)) false) lt!2237023 true))))

(assert (=> b!5475502 (= lt!2237023 (Context!9479 (Cons!62240 (reg!15684 r!7292) lt!2237032)))))

(assert (=> b!5475502 (= lt!2237032 (Cons!62240 r!7292 Nil!62240))))

(declare-fun b!5475503 () Bool)

(declare-fun res!2334190 () Bool)

(assert (=> b!5475503 (=> res!2334190 e!3389177)))

(assert (=> b!5475503 (= res!2334190 (or ((_ is EmptyExpr!15355) r!7292) ((_ is EmptyLang!15355) r!7292) ((_ is ElementMatch!15355) r!7292) ((_ is Union!15355) r!7292) ((_ is Concat!24200) r!7292)))))

(declare-fun b!5475504 () Bool)

(declare-fun res!2334201 () Bool)

(assert (=> b!5475504 (=> res!2334201 e!3389176)))

(assert (=> b!5475504 (= res!2334201 (not (= (unfocusZipper!1097 (Cons!62241 lt!2237028 Nil!62241)) r!7292)))))

(declare-fun b!5475505 () Bool)

(declare-fun tp!1505196 () Bool)

(declare-fun tp!1505194 () Bool)

(assert (=> b!5475505 (= e!3389182 (and tp!1505196 tp!1505194))))

(declare-fun tp!1505195 () Bool)

(declare-fun b!5475506 () Bool)

(assert (=> b!5475506 (= e!3389173 (and (inv!81634 (h!68689 zl!343)) e!3389171 tp!1505195))))

(declare-fun b!5475507 () Bool)

(assert (=> b!5475507 (= e!3389172 e!3389175)))

(declare-fun res!2334188 () Bool)

(assert (=> b!5475507 (=> res!2334188 e!3389175)))

(declare-fun lt!2237030 () (InoxSet Context!9478))

(assert (=> b!5475507 (= res!2334188 (not (= lt!2237030 lt!2237026)))))

(assert (=> b!5475507 (= lt!2237026 (derivationStepZipperDown!781 r!7292 (Context!9479 Nil!62240) (h!68690 s!2326)))))

(assert (=> b!5475507 (= lt!2237030 (derivationStepZipperUp!707 (Context!9479 (Cons!62240 r!7292 Nil!62240)) (h!68690 s!2326)))))

(assert (=> b!5475507 (= lt!2237015 (derivationStepZipper!1550 z!1189 (h!68690 s!2326)))))

(declare-fun b!5475508 () Bool)

(declare-fun res!2334196 () Bool)

(assert (=> b!5475508 (=> res!2334196 e!3389172)))

(assert (=> b!5475508 (= res!2334196 ((_ is Nil!62242) s!2326))))

(declare-fun b!5475509 () Bool)

(declare-fun res!2334199 () Bool)

(assert (=> b!5475509 (=> res!2334199 e!3389177)))

(declare-fun generalisedUnion!1284 (List!62364) Regex!15355)

(declare-fun unfocusZipperList!797 (List!62365) List!62364)

(assert (=> b!5475509 (= res!2334199 (not (= r!7292 (generalisedUnion!1284 (unfocusZipperList!797 zl!343)))))))

(declare-fun b!5475510 () Bool)

(assert (=> b!5475510 (= e!3389182 tp_is_empty!39963)))

(declare-fun b!5475511 () Bool)

(assert (=> b!5475511 (= e!3389174 (validRegex!7091 lt!2237036))))

(declare-fun b!5475512 () Bool)

(assert (=> b!5475512 (= e!3389178 e!3389170)))

(declare-fun res!2334192 () Bool)

(assert (=> b!5475512 (=> (not res!2334192) (not e!3389170))))

(assert (=> b!5475512 (= res!2334192 (= r!7292 lt!2237018))))

(assert (=> b!5475512 (= lt!2237018 (unfocusZipper!1097 zl!343))))

(assert (= (and start!572834 res!2334202) b!5475487))

(assert (= (and b!5475487 res!2334203) b!5475512))

(assert (= (and b!5475512 res!2334192) b!5475494))

(assert (= (and b!5475494 (not res!2334205)) b!5475486))

(assert (= (and b!5475486 (not res!2334194)) b!5475484))

(assert (= (and b!5475484 (not res!2334206)) b!5475500))

(assert (= (and b!5475500 (not res!2334187)) b!5475509))

(assert (= (and b!5475509 (not res!2334199)) b!5475503))

(assert (= (and b!5475503 (not res!2334190)) b!5475492))

(assert (= (and b!5475492 (not res!2334189)) b!5475489))

(assert (= (and b!5475492 (not res!2334204)) b!5475508))

(assert (= (and b!5475508 (not res!2334196)) b!5475507))

(assert (= (and b!5475507 (not res!2334188)) b!5475499))

(assert (= (and b!5475499 (not res!2334186)) b!5475502))

(assert (= (and b!5475502 (not res!2334193)) b!5475495))

(assert (= (and b!5475495 (not res!2334197)) b!5475493))

(assert (= (and b!5475493 (not res!2334191)) b!5475485))

(assert (= (and b!5475485 (not res!2334198)) b!5475488))

(assert (= (and b!5475488 (not res!2334195)) b!5475483))

(assert (= (and b!5475483 (not res!2334200)) b!5475504))

(assert (= (and b!5475504 (not res!2334201)) b!5475501))

(assert (= (and b!5475501 (not res!2334185)) b!5475511))

(assert (= (and start!572834 ((_ is ElementMatch!15355) r!7292)) b!5475510))

(assert (= (and start!572834 ((_ is Concat!24200) r!7292)) b!5475498))

(assert (= (and start!572834 ((_ is Star!15355) r!7292)) b!5475496))

(assert (= (and start!572834 ((_ is Union!15355) r!7292)) b!5475505))

(assert (= (and start!572834 condSetEmpty!35977) setIsEmpty!35977))

(assert (= (and start!572834 (not condSetEmpty!35977)) setNonEmpty!35977))

(assert (= setNonEmpty!35977 b!5475490))

(assert (= b!5475506 b!5475497))

(assert (= (and start!572834 ((_ is Cons!62241) zl!343)) b!5475506))

(assert (= (and start!572834 ((_ is Cons!62242) s!2326)) b!5475491))

(declare-fun m!6492318 () Bool)

(assert (=> b!5475501 m!6492318))

(declare-fun m!6492320 () Bool)

(assert (=> b!5475501 m!6492320))

(declare-fun m!6492322 () Bool)

(assert (=> b!5475501 m!6492322))

(declare-fun m!6492324 () Bool)

(assert (=> b!5475506 m!6492324))

(declare-fun m!6492326 () Bool)

(assert (=> b!5475484 m!6492326))

(declare-fun m!6492328 () Bool)

(assert (=> b!5475511 m!6492328))

(declare-fun m!6492330 () Bool)

(assert (=> b!5475487 m!6492330))

(declare-fun m!6492332 () Bool)

(assert (=> b!5475488 m!6492332))

(declare-fun m!6492334 () Bool)

(assert (=> b!5475488 m!6492334))

(declare-fun m!6492336 () Bool)

(assert (=> b!5475488 m!6492336))

(declare-fun m!6492338 () Bool)

(assert (=> b!5475488 m!6492338))

(declare-fun m!6492340 () Bool)

(assert (=> b!5475488 m!6492340))

(declare-fun m!6492342 () Bool)

(assert (=> b!5475488 m!6492342))

(declare-fun m!6492344 () Bool)

(assert (=> b!5475488 m!6492344))

(declare-fun m!6492346 () Bool)

(assert (=> b!5475488 m!6492346))

(declare-fun m!6492348 () Bool)

(assert (=> b!5475488 m!6492348))

(declare-fun m!6492350 () Bool)

(assert (=> b!5475486 m!6492350))

(declare-fun m!6492352 () Bool)

(assert (=> b!5475495 m!6492352))

(declare-fun m!6492354 () Bool)

(assert (=> b!5475495 m!6492354))

(assert (=> b!5475495 m!6492354))

(declare-fun m!6492356 () Bool)

(assert (=> b!5475495 m!6492356))

(declare-fun m!6492358 () Bool)

(assert (=> b!5475504 m!6492358))

(declare-fun m!6492360 () Bool)

(assert (=> start!572834 m!6492360))

(declare-fun m!6492362 () Bool)

(assert (=> b!5475494 m!6492362))

(declare-fun m!6492364 () Bool)

(assert (=> b!5475494 m!6492364))

(declare-fun m!6492366 () Bool)

(assert (=> b!5475494 m!6492366))

(declare-fun m!6492368 () Bool)

(assert (=> b!5475512 m!6492368))

(declare-fun m!6492370 () Bool)

(assert (=> b!5475483 m!6492370))

(declare-fun m!6492372 () Bool)

(assert (=> setNonEmpty!35977 m!6492372))

(declare-fun m!6492374 () Bool)

(assert (=> b!5475509 m!6492374))

(assert (=> b!5475509 m!6492374))

(declare-fun m!6492376 () Bool)

(assert (=> b!5475509 m!6492376))

(declare-fun m!6492378 () Bool)

(assert (=> b!5475492 m!6492378))

(declare-fun m!6492380 () Bool)

(assert (=> b!5475492 m!6492380))

(assert (=> b!5475492 m!6492378))

(declare-fun m!6492382 () Bool)

(assert (=> b!5475492 m!6492382))

(assert (=> b!5475492 m!6492378))

(declare-fun m!6492384 () Bool)

(assert (=> b!5475492 m!6492384))

(declare-fun m!6492386 () Bool)

(assert (=> b!5475492 m!6492386))

(assert (=> b!5475492 m!6492386))

(declare-fun m!6492388 () Bool)

(assert (=> b!5475492 m!6492388))

(declare-fun m!6492390 () Bool)

(assert (=> b!5475492 m!6492390))

(declare-fun m!6492392 () Bool)

(assert (=> b!5475492 m!6492392))

(declare-fun m!6492394 () Bool)

(assert (=> b!5475492 m!6492394))

(declare-fun m!6492396 () Bool)

(assert (=> b!5475485 m!6492396))

(declare-fun m!6492398 () Bool)

(assert (=> b!5475502 m!6492398))

(declare-fun m!6492400 () Bool)

(assert (=> b!5475502 m!6492400))

(declare-fun m!6492402 () Bool)

(assert (=> b!5475502 m!6492402))

(declare-fun m!6492404 () Bool)

(assert (=> b!5475502 m!6492404))

(declare-fun m!6492406 () Bool)

(assert (=> b!5475502 m!6492406))

(declare-fun m!6492408 () Bool)

(assert (=> b!5475507 m!6492408))

(declare-fun m!6492410 () Bool)

(assert (=> b!5475507 m!6492410))

(declare-fun m!6492412 () Bool)

(assert (=> b!5475507 m!6492412))

(declare-fun m!6492414 () Bool)

(assert (=> b!5475499 m!6492414))

(declare-fun m!6492416 () Bool)

(assert (=> b!5475499 m!6492416))

(declare-fun m!6492418 () Bool)

(assert (=> b!5475499 m!6492418))

(check-sat tp_is_empty!39963 (not b!5475484) (not b!5475486) (not b!5475511) (not b!5475483) (not b!5475492) (not b!5475491) (not b!5475512) (not b!5475494) (not b!5475487) (not b!5475495) (not b!5475488) (not b!5475497) (not b!5475498) (not b!5475506) (not b!5475499) (not b!5475505) (not start!572834) (not b!5475504) (not b!5475490) (not b!5475509) (not b!5475502) (not setNonEmpty!35977) (not b!5475507) (not b!5475496) (not b!5475485) (not b!5475501))
(check-sat)
(get-model)

(declare-fun b!5475539 () Bool)

(declare-fun e!3389197 () Bool)

(declare-fun e!3389198 () Bool)

(assert (=> b!5475539 (= e!3389197 e!3389198)))

(declare-fun c!956510 () Bool)

(declare-fun isEmpty!34193 (List!62364) Bool)

(declare-fun tail!10825 (List!62364) List!62364)

(assert (=> b!5475539 (= c!956510 (isEmpty!34193 (tail!10825 (unfocusZipperList!797 zl!343))))))

(declare-fun b!5475540 () Bool)

(declare-fun lt!2237040 () Regex!15355)

(declare-fun isUnion!479 (Regex!15355) Bool)

(assert (=> b!5475540 (= e!3389198 (isUnion!479 lt!2237040))))

(declare-fun b!5475541 () Bool)

(declare-fun head!11728 (List!62364) Regex!15355)

(assert (=> b!5475541 (= e!3389198 (= lt!2237040 (head!11728 (unfocusZipperList!797 zl!343))))))

(declare-fun b!5475542 () Bool)

(declare-fun e!3389196 () Regex!15355)

(declare-fun e!3389195 () Regex!15355)

(assert (=> b!5475542 (= e!3389196 e!3389195)))

(declare-fun c!956509 () Bool)

(assert (=> b!5475542 (= c!956509 ((_ is Cons!62240) (unfocusZipperList!797 zl!343)))))

(declare-fun b!5475543 () Bool)

(declare-fun e!3389200 () Bool)

(assert (=> b!5475543 (= e!3389200 e!3389197)))

(declare-fun c!956508 () Bool)

(assert (=> b!5475543 (= c!956508 (isEmpty!34193 (unfocusZipperList!797 zl!343)))))

(declare-fun b!5475544 () Bool)

(assert (=> b!5475544 (= e!3389195 EmptyLang!15355)))

(declare-fun d!1739721 () Bool)

(assert (=> d!1739721 e!3389200))

(declare-fun res!2334212 () Bool)

(assert (=> d!1739721 (=> (not res!2334212) (not e!3389200))))

(assert (=> d!1739721 (= res!2334212 (validRegex!7091 lt!2237040))))

(assert (=> d!1739721 (= lt!2237040 e!3389196)))

(declare-fun c!956511 () Bool)

(declare-fun e!3389199 () Bool)

(assert (=> d!1739721 (= c!956511 e!3389199)))

(declare-fun res!2334211 () Bool)

(assert (=> d!1739721 (=> (not res!2334211) (not e!3389199))))

(assert (=> d!1739721 (= res!2334211 ((_ is Cons!62240) (unfocusZipperList!797 zl!343)))))

(declare-fun lambda!291850 () Int)

(declare-fun forall!14612 (List!62364 Int) Bool)

(assert (=> d!1739721 (forall!14612 (unfocusZipperList!797 zl!343) lambda!291850)))

(assert (=> d!1739721 (= (generalisedUnion!1284 (unfocusZipperList!797 zl!343)) lt!2237040)))

(declare-fun b!5475545 () Bool)

(assert (=> b!5475545 (= e!3389196 (h!68688 (unfocusZipperList!797 zl!343)))))

(declare-fun b!5475546 () Bool)

(declare-fun isEmptyLang!1047 (Regex!15355) Bool)

(assert (=> b!5475546 (= e!3389197 (isEmptyLang!1047 lt!2237040))))

(declare-fun b!5475547 () Bool)

(assert (=> b!5475547 (= e!3389195 (Union!15355 (h!68688 (unfocusZipperList!797 zl!343)) (generalisedUnion!1284 (t!375593 (unfocusZipperList!797 zl!343)))))))

(declare-fun b!5475548 () Bool)

(assert (=> b!5475548 (= e!3389199 (isEmpty!34193 (t!375593 (unfocusZipperList!797 zl!343))))))

(assert (= (and d!1739721 res!2334211) b!5475548))

(assert (= (and d!1739721 c!956511) b!5475545))

(assert (= (and d!1739721 (not c!956511)) b!5475542))

(assert (= (and b!5475542 c!956509) b!5475547))

(assert (= (and b!5475542 (not c!956509)) b!5475544))

(assert (= (and d!1739721 res!2334212) b!5475543))

(assert (= (and b!5475543 c!956508) b!5475546))

(assert (= (and b!5475543 (not c!956508)) b!5475539))

(assert (= (and b!5475539 c!956510) b!5475541))

(assert (= (and b!5475539 (not c!956510)) b!5475540))

(assert (=> b!5475539 m!6492374))

(declare-fun m!6492420 () Bool)

(assert (=> b!5475539 m!6492420))

(assert (=> b!5475539 m!6492420))

(declare-fun m!6492422 () Bool)

(assert (=> b!5475539 m!6492422))

(declare-fun m!6492424 () Bool)

(assert (=> b!5475540 m!6492424))

(declare-fun m!6492426 () Bool)

(assert (=> b!5475548 m!6492426))

(assert (=> b!5475543 m!6492374))

(declare-fun m!6492428 () Bool)

(assert (=> b!5475543 m!6492428))

(assert (=> b!5475541 m!6492374))

(declare-fun m!6492430 () Bool)

(assert (=> b!5475541 m!6492430))

(declare-fun m!6492432 () Bool)

(assert (=> d!1739721 m!6492432))

(assert (=> d!1739721 m!6492374))

(declare-fun m!6492434 () Bool)

(assert (=> d!1739721 m!6492434))

(declare-fun m!6492436 () Bool)

(assert (=> b!5475547 m!6492436))

(declare-fun m!6492438 () Bool)

(assert (=> b!5475546 m!6492438))

(assert (=> b!5475509 d!1739721))

(declare-fun bs!1265349 () Bool)

(declare-fun d!1739723 () Bool)

(assert (= bs!1265349 (and d!1739723 d!1739721)))

(declare-fun lambda!291853 () Int)

(assert (=> bs!1265349 (= lambda!291853 lambda!291850)))

(declare-fun lt!2237043 () List!62364)

(assert (=> d!1739723 (forall!14612 lt!2237043 lambda!291853)))

(declare-fun e!3389203 () List!62364)

(assert (=> d!1739723 (= lt!2237043 e!3389203)))

(declare-fun c!956514 () Bool)

(assert (=> d!1739723 (= c!956514 ((_ is Cons!62241) zl!343))))

(assert (=> d!1739723 (= (unfocusZipperList!797 zl!343) lt!2237043)))

(declare-fun b!5475553 () Bool)

(assert (=> b!5475553 (= e!3389203 (Cons!62240 (generalisedConcat!1024 (exprs!5239 (h!68689 zl!343))) (unfocusZipperList!797 (t!375594 zl!343))))))

(declare-fun b!5475554 () Bool)

(assert (=> b!5475554 (= e!3389203 Nil!62240)))

(assert (= (and d!1739723 c!956514) b!5475553))

(assert (= (and d!1739723 (not c!956514)) b!5475554))

(declare-fun m!6492440 () Bool)

(assert (=> d!1739723 m!6492440))

(assert (=> b!5475553 m!6492326))

(declare-fun m!6492442 () Bool)

(assert (=> b!5475553 m!6492442))

(assert (=> b!5475509 d!1739723))

(declare-fun d!1739725 () Bool)

(declare-fun choose!41643 ((InoxSet Context!9478) Int) (InoxSet Context!9478))

(assert (=> d!1739725 (= (flatMap!1058 lt!2237016 lambda!291847) (choose!41643 lt!2237016 lambda!291847))))

(declare-fun bs!1265350 () Bool)

(assert (= bs!1265350 d!1739725))

(declare-fun m!6492444 () Bool)

(assert (=> bs!1265350 m!6492444))

(assert (=> b!5475488 d!1739725))

(declare-fun b!5475565 () Bool)

(declare-fun e!3389212 () (InoxSet Context!9478))

(declare-fun e!3389211 () (InoxSet Context!9478))

(assert (=> b!5475565 (= e!3389212 e!3389211)))

(declare-fun c!956519 () Bool)

(assert (=> b!5475565 (= c!956519 ((_ is Cons!62240) (exprs!5239 lt!2237028)))))

(declare-fun b!5475566 () Bool)

(declare-fun call!403912 () (InoxSet Context!9478))

(assert (=> b!5475566 (= e!3389211 call!403912)))

(declare-fun d!1739727 () Bool)

(declare-fun c!956520 () Bool)

(declare-fun e!3389210 () Bool)

(assert (=> d!1739727 (= c!956520 e!3389210)))

(declare-fun res!2334215 () Bool)

(assert (=> d!1739727 (=> (not res!2334215) (not e!3389210))))

(assert (=> d!1739727 (= res!2334215 ((_ is Cons!62240) (exprs!5239 lt!2237028)))))

(assert (=> d!1739727 (= (derivationStepZipperUp!707 lt!2237028 (h!68690 s!2326)) e!3389212)))

(declare-fun b!5475567 () Bool)

(declare-fun nullable!5482 (Regex!15355) Bool)

(assert (=> b!5475567 (= e!3389210 (nullable!5482 (h!68688 (exprs!5239 lt!2237028))))))

(declare-fun b!5475568 () Bool)

(assert (=> b!5475568 (= e!3389211 ((as const (Array Context!9478 Bool)) false))))

(declare-fun b!5475569 () Bool)

(assert (=> b!5475569 (= e!3389212 ((_ map or) call!403912 (derivationStepZipperUp!707 (Context!9479 (t!375593 (exprs!5239 lt!2237028))) (h!68690 s!2326))))))

(declare-fun bm!403907 () Bool)

(assert (=> bm!403907 (= call!403912 (derivationStepZipperDown!781 (h!68688 (exprs!5239 lt!2237028)) (Context!9479 (t!375593 (exprs!5239 lt!2237028))) (h!68690 s!2326)))))

(assert (= (and d!1739727 res!2334215) b!5475567))

(assert (= (and d!1739727 c!956520) b!5475569))

(assert (= (and d!1739727 (not c!956520)) b!5475565))

(assert (= (and b!5475565 c!956519) b!5475566))

(assert (= (and b!5475565 (not c!956519)) b!5475568))

(assert (= (or b!5475569 b!5475566) bm!403907))

(declare-fun m!6492446 () Bool)

(assert (=> b!5475567 m!6492446))

(declare-fun m!6492448 () Bool)

(assert (=> b!5475569 m!6492448))

(declare-fun m!6492450 () Bool)

(assert (=> bm!403907 m!6492450))

(assert (=> b!5475488 d!1739727))

(declare-fun d!1739729 () Bool)

(declare-fun dynLambda!24428 (Int Context!9478) (InoxSet Context!9478))

(assert (=> d!1739729 (= (flatMap!1058 lt!2237014 lambda!291847) (dynLambda!24428 lambda!291847 lt!2237028))))

(declare-fun lt!2237046 () Unit!155160)

(declare-fun choose!41644 ((InoxSet Context!9478) Context!9478 Int) Unit!155160)

(assert (=> d!1739729 (= lt!2237046 (choose!41644 lt!2237014 lt!2237028 lambda!291847))))

(assert (=> d!1739729 (= lt!2237014 (store ((as const (Array Context!9478 Bool)) false) lt!2237028 true))))

(assert (=> d!1739729 (= (lemmaFlatMapOnSingletonSet!590 lt!2237014 lt!2237028 lambda!291847) lt!2237046)))

(declare-fun b_lambda!208043 () Bool)

(assert (=> (not b_lambda!208043) (not d!1739729)))

(declare-fun bs!1265351 () Bool)

(assert (= bs!1265351 d!1739729))

(assert (=> bs!1265351 m!6492338))

(declare-fun m!6492452 () Bool)

(assert (=> bs!1265351 m!6492452))

(declare-fun m!6492454 () Bool)

(assert (=> bs!1265351 m!6492454))

(assert (=> bs!1265351 m!6492336))

(assert (=> b!5475488 d!1739729))

(declare-fun d!1739731 () Bool)

(assert (=> d!1739731 (= (flatMap!1058 lt!2237014 lambda!291847) (choose!41643 lt!2237014 lambda!291847))))

(declare-fun bs!1265352 () Bool)

(assert (= bs!1265352 d!1739731))

(declare-fun m!6492456 () Bool)

(assert (=> bs!1265352 m!6492456))

(assert (=> b!5475488 d!1739731))

(declare-fun bs!1265353 () Bool)

(declare-fun d!1739733 () Bool)

(assert (= bs!1265353 (and d!1739733 b!5475499)))

(declare-fun lambda!291856 () Int)

(assert (=> bs!1265353 (= lambda!291856 lambda!291847)))

(assert (=> d!1739733 true))

(assert (=> d!1739733 (= (derivationStepZipper!1550 lt!2237014 (h!68690 s!2326)) (flatMap!1058 lt!2237014 lambda!291856))))

(declare-fun bs!1265354 () Bool)

(assert (= bs!1265354 d!1739733))

(declare-fun m!6492458 () Bool)

(assert (=> bs!1265354 m!6492458))

(assert (=> b!5475488 d!1739733))

(declare-fun b!5475572 () Bool)

(declare-fun e!3389215 () (InoxSet Context!9478))

(declare-fun e!3389214 () (InoxSet Context!9478))

(assert (=> b!5475572 (= e!3389215 e!3389214)))

(declare-fun c!956523 () Bool)

(assert (=> b!5475572 (= c!956523 ((_ is Cons!62240) (exprs!5239 lt!2237017)))))

(declare-fun b!5475573 () Bool)

(declare-fun call!403913 () (InoxSet Context!9478))

(assert (=> b!5475573 (= e!3389214 call!403913)))

(declare-fun d!1739735 () Bool)

(declare-fun c!956524 () Bool)

(declare-fun e!3389213 () Bool)

(assert (=> d!1739735 (= c!956524 e!3389213)))

(declare-fun res!2334216 () Bool)

(assert (=> d!1739735 (=> (not res!2334216) (not e!3389213))))

(assert (=> d!1739735 (= res!2334216 ((_ is Cons!62240) (exprs!5239 lt!2237017)))))

(assert (=> d!1739735 (= (derivationStepZipperUp!707 lt!2237017 (h!68690 s!2326)) e!3389215)))

(declare-fun b!5475574 () Bool)

(assert (=> b!5475574 (= e!3389213 (nullable!5482 (h!68688 (exprs!5239 lt!2237017))))))

(declare-fun b!5475575 () Bool)

(assert (=> b!5475575 (= e!3389214 ((as const (Array Context!9478 Bool)) false))))

(declare-fun b!5475576 () Bool)

(assert (=> b!5475576 (= e!3389215 ((_ map or) call!403913 (derivationStepZipperUp!707 (Context!9479 (t!375593 (exprs!5239 lt!2237017))) (h!68690 s!2326))))))

(declare-fun bm!403908 () Bool)

(assert (=> bm!403908 (= call!403913 (derivationStepZipperDown!781 (h!68688 (exprs!5239 lt!2237017)) (Context!9479 (t!375593 (exprs!5239 lt!2237017))) (h!68690 s!2326)))))

(assert (= (and d!1739735 res!2334216) b!5475574))

(assert (= (and d!1739735 c!956524) b!5475576))

(assert (= (and d!1739735 (not c!956524)) b!5475572))

(assert (= (and b!5475572 c!956523) b!5475573))

(assert (= (and b!5475572 (not c!956523)) b!5475575))

(assert (= (or b!5475576 b!5475573) bm!403908))

(declare-fun m!6492460 () Bool)

(assert (=> b!5475574 m!6492460))

(declare-fun m!6492462 () Bool)

(assert (=> b!5475576 m!6492462))

(declare-fun m!6492464 () Bool)

(assert (=> bm!403908 m!6492464))

(assert (=> b!5475488 d!1739735))

(declare-fun d!1739739 () Bool)

(assert (=> d!1739739 (= (flatMap!1058 lt!2237016 lambda!291847) (dynLambda!24428 lambda!291847 lt!2237017))))

(declare-fun lt!2237047 () Unit!155160)

(assert (=> d!1739739 (= lt!2237047 (choose!41644 lt!2237016 lt!2237017 lambda!291847))))

(assert (=> d!1739739 (= lt!2237016 (store ((as const (Array Context!9478 Bool)) false) lt!2237017 true))))

(assert (=> d!1739739 (= (lemmaFlatMapOnSingletonSet!590 lt!2237016 lt!2237017 lambda!291847) lt!2237047)))

(declare-fun b_lambda!208045 () Bool)

(assert (=> (not b_lambda!208045) (not d!1739739)))

(declare-fun bs!1265355 () Bool)

(assert (= bs!1265355 d!1739739))

(assert (=> bs!1265355 m!6492334))

(declare-fun m!6492466 () Bool)

(assert (=> bs!1265355 m!6492466))

(declare-fun m!6492468 () Bool)

(assert (=> bs!1265355 m!6492468))

(assert (=> bs!1265355 m!6492342))

(assert (=> b!5475488 d!1739739))

(declare-fun bs!1265356 () Bool)

(declare-fun d!1739741 () Bool)

(assert (= bs!1265356 (and d!1739741 d!1739721)))

(declare-fun lambda!291859 () Int)

(assert (=> bs!1265356 (= lambda!291859 lambda!291850)))

(declare-fun bs!1265357 () Bool)

(assert (= bs!1265357 (and d!1739741 d!1739723)))

(assert (=> bs!1265357 (= lambda!291859 lambda!291853)))

(assert (=> d!1739741 (= (inv!81634 setElem!35977) (forall!14612 (exprs!5239 setElem!35977) lambda!291859))))

(declare-fun bs!1265358 () Bool)

(assert (= bs!1265358 d!1739741))

(declare-fun m!6492470 () Bool)

(assert (=> bs!1265358 m!6492470))

(assert (=> setNonEmpty!35977 d!1739741))

(declare-fun d!1739743 () Bool)

(declare-fun e!3389230 () Bool)

(assert (=> d!1739743 e!3389230))

(declare-fun res!2334221 () Bool)

(assert (=> d!1739743 (=> (not res!2334221) (not e!3389230))))

(declare-fun lt!2237050 () List!62365)

(declare-fun noDuplicate!1455 (List!62365) Bool)

(assert (=> d!1739743 (= res!2334221 (noDuplicate!1455 lt!2237050))))

(declare-fun choose!41645 ((InoxSet Context!9478)) List!62365)

(assert (=> d!1739743 (= lt!2237050 (choose!41645 z!1189))))

(assert (=> d!1739743 (= (toList!9139 z!1189) lt!2237050)))

(declare-fun b!5475601 () Bool)

(declare-fun content!11199 (List!62365) (InoxSet Context!9478))

(assert (=> b!5475601 (= e!3389230 (= (content!11199 lt!2237050) z!1189))))

(assert (= (and d!1739743 res!2334221) b!5475601))

(declare-fun m!6492472 () Bool)

(assert (=> d!1739743 m!6492472))

(declare-fun m!6492474 () Bool)

(assert (=> d!1739743 m!6492474))

(declare-fun m!6492476 () Bool)

(assert (=> b!5475601 m!6492476))

(assert (=> b!5475487 d!1739743))

(declare-fun b!5475698 () Bool)

(declare-fun c!956575 () Bool)

(assert (=> b!5475698 (= c!956575 ((_ is Star!15355) r!7292))))

(declare-fun e!3389284 () (InoxSet Context!9478))

(declare-fun e!3389290 () (InoxSet Context!9478))

(assert (=> b!5475698 (= e!3389284 e!3389290)))

(declare-fun b!5475699 () Bool)

(declare-fun e!3389283 () (InoxSet Context!9478))

(declare-fun call!403951 () (InoxSet Context!9478))

(declare-fun call!403949 () (InoxSet Context!9478))

(assert (=> b!5475699 (= e!3389283 ((_ map or) call!403951 call!403949))))

(declare-fun b!5475700 () Bool)

(declare-fun c!956581 () Bool)

(declare-fun e!3389289 () Bool)

(assert (=> b!5475700 (= c!956581 e!3389289)))

(declare-fun res!2334236 () Bool)

(assert (=> b!5475700 (=> (not res!2334236) (not e!3389289))))

(assert (=> b!5475700 (= res!2334236 ((_ is Concat!24200) r!7292))))

(declare-fun e!3389285 () (InoxSet Context!9478))

(assert (=> b!5475700 (= e!3389285 e!3389283)))

(declare-fun bm!403942 () Bool)

(declare-fun call!403948 () (InoxSet Context!9478))

(assert (=> bm!403942 (= call!403949 call!403948)))

(declare-fun b!5475701 () Bool)

(assert (=> b!5475701 (= e!3389283 e!3389284)))

(declare-fun c!956580 () Bool)

(assert (=> b!5475701 (= c!956580 ((_ is Concat!24200) r!7292))))

(declare-fun b!5475702 () Bool)

(declare-fun e!3389287 () (InoxSet Context!9478))

(assert (=> b!5475702 (= e!3389287 (store ((as const (Array Context!9478 Bool)) false) (Context!9479 Nil!62240) true))))

(declare-fun call!403950 () List!62364)

(declare-fun c!956579 () Bool)

(declare-fun bm!403944 () Bool)

(assert (=> bm!403944 (= call!403948 (derivationStepZipperDown!781 (ite c!956579 (regTwo!31223 r!7292) (ite c!956581 (regTwo!31222 r!7292) (ite c!956580 (regOne!31222 r!7292) (reg!15684 r!7292)))) (ite (or c!956579 c!956581) (Context!9479 Nil!62240) (Context!9479 call!403950)) (h!68690 s!2326)))))

(declare-fun b!5475703 () Bool)

(assert (=> b!5475703 (= e!3389290 ((as const (Array Context!9478 Bool)) false))))

(declare-fun bm!403945 () Bool)

(declare-fun call!403947 () (InoxSet Context!9478))

(assert (=> bm!403945 (= call!403947 call!403949)))

(declare-fun bm!403946 () Bool)

(declare-fun call!403952 () List!62364)

(declare-fun $colon$colon!1552 (List!62364 Regex!15355) List!62364)

(assert (=> bm!403946 (= call!403952 ($colon$colon!1552 (exprs!5239 (Context!9479 Nil!62240)) (ite (or c!956581 c!956580) (regTwo!31222 r!7292) r!7292)))))

(declare-fun b!5475704 () Bool)

(assert (=> b!5475704 (= e!3389290 call!403947)))

(declare-fun bm!403943 () Bool)

(assert (=> bm!403943 (= call!403951 (derivationStepZipperDown!781 (ite c!956579 (regOne!31223 r!7292) (regOne!31222 r!7292)) (ite c!956579 (Context!9479 Nil!62240) (Context!9479 call!403952)) (h!68690 s!2326)))))

(declare-fun d!1739745 () Bool)

(declare-fun c!956576 () Bool)

(assert (=> d!1739745 (= c!956576 (and ((_ is ElementMatch!15355) r!7292) (= (c!956499 r!7292) (h!68690 s!2326))))))

(assert (=> d!1739745 (= (derivationStepZipperDown!781 r!7292 (Context!9479 Nil!62240) (h!68690 s!2326)) e!3389287)))

(declare-fun b!5475705 () Bool)

(assert (=> b!5475705 (= e!3389284 call!403947)))

(declare-fun bm!403947 () Bool)

(assert (=> bm!403947 (= call!403950 call!403952)))

(declare-fun b!5475706 () Bool)

(assert (=> b!5475706 (= e!3389285 ((_ map or) call!403951 call!403948))))

(declare-fun b!5475707 () Bool)

(assert (=> b!5475707 (= e!3389287 e!3389285)))

(assert (=> b!5475707 (= c!956579 ((_ is Union!15355) r!7292))))

(declare-fun b!5475708 () Bool)

(assert (=> b!5475708 (= e!3389289 (nullable!5482 (regOne!31222 r!7292)))))

(assert (= (and d!1739745 c!956576) b!5475702))

(assert (= (and d!1739745 (not c!956576)) b!5475707))

(assert (= (and b!5475707 c!956579) b!5475706))

(assert (= (and b!5475707 (not c!956579)) b!5475700))

(assert (= (and b!5475700 res!2334236) b!5475708))

(assert (= (and b!5475700 c!956581) b!5475699))

(assert (= (and b!5475700 (not c!956581)) b!5475701))

(assert (= (and b!5475701 c!956580) b!5475705))

(assert (= (and b!5475701 (not c!956580)) b!5475698))

(assert (= (and b!5475698 c!956575) b!5475704))

(assert (= (and b!5475698 (not c!956575)) b!5475703))

(assert (= (or b!5475705 b!5475704) bm!403947))

(assert (= (or b!5475705 b!5475704) bm!403945))

(assert (= (or b!5475699 bm!403947) bm!403946))

(assert (= (or b!5475699 bm!403945) bm!403942))

(assert (= (or b!5475706 bm!403942) bm!403944))

(assert (= (or b!5475706 b!5475699) bm!403943))

(declare-fun m!6492520 () Bool)

(assert (=> bm!403944 m!6492520))

(declare-fun m!6492522 () Bool)

(assert (=> bm!403943 m!6492522))

(declare-fun m!6492524 () Bool)

(assert (=> b!5475708 m!6492524))

(declare-fun m!6492526 () Bool)

(assert (=> bm!403946 m!6492526))

(declare-fun m!6492528 () Bool)

(assert (=> b!5475702 m!6492528))

(assert (=> b!5475507 d!1739745))

(declare-fun b!5475729 () Bool)

(declare-fun e!3389305 () (InoxSet Context!9478))

(declare-fun e!3389304 () (InoxSet Context!9478))

(assert (=> b!5475729 (= e!3389305 e!3389304)))

(declare-fun c!956590 () Bool)

(assert (=> b!5475729 (= c!956590 ((_ is Cons!62240) (exprs!5239 (Context!9479 (Cons!62240 r!7292 Nil!62240)))))))

(declare-fun b!5475730 () Bool)

(declare-fun call!403953 () (InoxSet Context!9478))

(assert (=> b!5475730 (= e!3389304 call!403953)))

(declare-fun d!1739759 () Bool)

(declare-fun c!956591 () Bool)

(declare-fun e!3389303 () Bool)

(assert (=> d!1739759 (= c!956591 e!3389303)))

(declare-fun res!2334241 () Bool)

(assert (=> d!1739759 (=> (not res!2334241) (not e!3389303))))

(assert (=> d!1739759 (= res!2334241 ((_ is Cons!62240) (exprs!5239 (Context!9479 (Cons!62240 r!7292 Nil!62240)))))))

(assert (=> d!1739759 (= (derivationStepZipperUp!707 (Context!9479 (Cons!62240 r!7292 Nil!62240)) (h!68690 s!2326)) e!3389305)))

(declare-fun b!5475731 () Bool)

(assert (=> b!5475731 (= e!3389303 (nullable!5482 (h!68688 (exprs!5239 (Context!9479 (Cons!62240 r!7292 Nil!62240))))))))

(declare-fun b!5475732 () Bool)

(assert (=> b!5475732 (= e!3389304 ((as const (Array Context!9478 Bool)) false))))

(declare-fun b!5475733 () Bool)

(assert (=> b!5475733 (= e!3389305 ((_ map or) call!403953 (derivationStepZipperUp!707 (Context!9479 (t!375593 (exprs!5239 (Context!9479 (Cons!62240 r!7292 Nil!62240))))) (h!68690 s!2326))))))

(declare-fun bm!403948 () Bool)

(assert (=> bm!403948 (= call!403953 (derivationStepZipperDown!781 (h!68688 (exprs!5239 (Context!9479 (Cons!62240 r!7292 Nil!62240)))) (Context!9479 (t!375593 (exprs!5239 (Context!9479 (Cons!62240 r!7292 Nil!62240))))) (h!68690 s!2326)))))

(assert (= (and d!1739759 res!2334241) b!5475731))

(assert (= (and d!1739759 c!956591) b!5475733))

(assert (= (and d!1739759 (not c!956591)) b!5475729))

(assert (= (and b!5475729 c!956590) b!5475730))

(assert (= (and b!5475729 (not c!956590)) b!5475732))

(assert (= (or b!5475733 b!5475730) bm!403948))

(declare-fun m!6492536 () Bool)

(assert (=> b!5475731 m!6492536))

(declare-fun m!6492550 () Bool)

(assert (=> b!5475733 m!6492550))

(declare-fun m!6492554 () Bool)

(assert (=> bm!403948 m!6492554))

(assert (=> b!5475507 d!1739759))

(declare-fun bs!1265364 () Bool)

(declare-fun d!1739763 () Bool)

(assert (= bs!1265364 (and d!1739763 b!5475499)))

(declare-fun lambda!291872 () Int)

(assert (=> bs!1265364 (= lambda!291872 lambda!291847)))

(declare-fun bs!1265365 () Bool)

(assert (= bs!1265365 (and d!1739763 d!1739733)))

(assert (=> bs!1265365 (= lambda!291872 lambda!291856)))

(assert (=> d!1739763 true))

(assert (=> d!1739763 (= (derivationStepZipper!1550 z!1189 (h!68690 s!2326)) (flatMap!1058 z!1189 lambda!291872))))

(declare-fun bs!1265366 () Bool)

(assert (= bs!1265366 d!1739763))

(declare-fun m!6492556 () Bool)

(assert (=> bs!1265366 m!6492556))

(assert (=> b!5475507 d!1739763))

(declare-fun b!5475781 () Bool)

(declare-fun e!3389344 () Bool)

(declare-fun call!403971 () Bool)

(assert (=> b!5475781 (= e!3389344 call!403971)))

(declare-fun b!5475782 () Bool)

(declare-fun e!3389345 () Bool)

(declare-fun e!3389341 () Bool)

(assert (=> b!5475782 (= e!3389345 e!3389341)))

(declare-fun c!956602 () Bool)

(assert (=> b!5475782 (= c!956602 ((_ is Union!15355) r!7292))))

(declare-fun b!5475783 () Bool)

(declare-fun res!2334269 () Bool)

(declare-fun e!3389343 () Bool)

(assert (=> b!5475783 (=> (not res!2334269) (not e!3389343))))

(declare-fun call!403970 () Bool)

(assert (=> b!5475783 (= res!2334269 call!403970)))

(assert (=> b!5475783 (= e!3389341 e!3389343)))

(declare-fun b!5475784 () Bool)

(declare-fun e!3389347 () Bool)

(declare-fun e!3389346 () Bool)

(assert (=> b!5475784 (= e!3389347 e!3389346)))

(declare-fun res!2334271 () Bool)

(assert (=> b!5475784 (=> (not res!2334271) (not e!3389346))))

(assert (=> b!5475784 (= res!2334271 call!403970)))

(declare-fun bm!403965 () Bool)

(assert (=> bm!403965 (= call!403970 call!403971)))

(declare-fun c!956603 () Bool)

(declare-fun bm!403966 () Bool)

(assert (=> bm!403966 (= call!403971 (validRegex!7091 (ite c!956603 (reg!15684 r!7292) (ite c!956602 (regOne!31223 r!7292) (regOne!31222 r!7292)))))))

(declare-fun b!5475785 () Bool)

(assert (=> b!5475785 (= e!3389345 e!3389344)))

(declare-fun res!2334268 () Bool)

(assert (=> b!5475785 (= res!2334268 (not (nullable!5482 (reg!15684 r!7292))))))

(assert (=> b!5475785 (=> (not res!2334268) (not e!3389344))))

(declare-fun b!5475786 () Bool)

(declare-fun call!403969 () Bool)

(assert (=> b!5475786 (= e!3389343 call!403969)))

(declare-fun b!5475787 () Bool)

(declare-fun res!2334267 () Bool)

(assert (=> b!5475787 (=> res!2334267 e!3389347)))

(assert (=> b!5475787 (= res!2334267 (not ((_ is Concat!24200) r!7292)))))

(assert (=> b!5475787 (= e!3389341 e!3389347)))

(declare-fun bm!403964 () Bool)

(assert (=> bm!403964 (= call!403969 (validRegex!7091 (ite c!956602 (regTwo!31223 r!7292) (regTwo!31222 r!7292))))))

(declare-fun d!1739765 () Bool)

(declare-fun res!2334270 () Bool)

(declare-fun e!3389342 () Bool)

(assert (=> d!1739765 (=> res!2334270 e!3389342)))

(assert (=> d!1739765 (= res!2334270 ((_ is ElementMatch!15355) r!7292))))

(assert (=> d!1739765 (= (validRegex!7091 r!7292) e!3389342)))

(declare-fun b!5475788 () Bool)

(assert (=> b!5475788 (= e!3389346 call!403969)))

(declare-fun b!5475789 () Bool)

(assert (=> b!5475789 (= e!3389342 e!3389345)))

(assert (=> b!5475789 (= c!956603 ((_ is Star!15355) r!7292))))

(assert (= (and d!1739765 (not res!2334270)) b!5475789))

(assert (= (and b!5475789 c!956603) b!5475785))

(assert (= (and b!5475789 (not c!956603)) b!5475782))

(assert (= (and b!5475785 res!2334268) b!5475781))

(assert (= (and b!5475782 c!956602) b!5475783))

(assert (= (and b!5475782 (not c!956602)) b!5475787))

(assert (= (and b!5475783 res!2334269) b!5475786))

(assert (= (and b!5475787 (not res!2334267)) b!5475784))

(assert (= (and b!5475784 res!2334271) b!5475788))

(assert (= (or b!5475786 b!5475788) bm!403964))

(assert (= (or b!5475783 b!5475784) bm!403965))

(assert (= (or b!5475781 bm!403965) bm!403966))

(declare-fun m!6492570 () Bool)

(assert (=> bm!403966 m!6492570))

(declare-fun m!6492572 () Bool)

(assert (=> b!5475785 m!6492572))

(declare-fun m!6492574 () Bool)

(assert (=> bm!403964 m!6492574))

(assert (=> start!572834 d!1739765))

(declare-fun d!1739771 () Bool)

(declare-fun lt!2237065 () Regex!15355)

(assert (=> d!1739771 (validRegex!7091 lt!2237065)))

(assert (=> d!1739771 (= lt!2237065 (generalisedUnion!1284 (unfocusZipperList!797 zl!343)))))

(assert (=> d!1739771 (= (unfocusZipper!1097 zl!343) lt!2237065)))

(declare-fun bs!1265368 () Bool)

(assert (= bs!1265368 d!1739771))

(declare-fun m!6492576 () Bool)

(assert (=> bs!1265368 m!6492576))

(assert (=> bs!1265368 m!6492374))

(assert (=> bs!1265368 m!6492374))

(assert (=> bs!1265368 m!6492376))

(assert (=> b!5475512 d!1739771))

(declare-fun bs!1265387 () Bool)

(declare-fun b!5475920 () Bool)

(assert (= bs!1265387 (and b!5475920 b!5475492)))

(declare-fun lambda!291888 () Int)

(assert (=> bs!1265387 (not (= lambda!291888 lambda!291844))))

(assert (=> bs!1265387 (= (and (= (reg!15684 lt!2237036) (reg!15684 r!7292)) (= lt!2237036 r!7292)) (= lambda!291888 lambda!291845))))

(assert (=> bs!1265387 (not (= lambda!291888 lambda!291846))))

(assert (=> b!5475920 true))

(assert (=> b!5475920 true))

(declare-fun bs!1265389 () Bool)

(declare-fun b!5475916 () Bool)

(assert (= bs!1265389 (and b!5475916 b!5475492)))

(declare-fun lambda!291889 () Int)

(assert (=> bs!1265389 (not (= lambda!291889 lambda!291844))))

(assert (=> bs!1265389 (not (= lambda!291889 lambda!291845))))

(assert (=> bs!1265389 (= (and (= (regOne!31222 lt!2237036) (reg!15684 r!7292)) (= (regTwo!31222 lt!2237036) r!7292)) (= lambda!291889 lambda!291846))))

(declare-fun bs!1265390 () Bool)

(assert (= bs!1265390 (and b!5475916 b!5475920)))

(assert (=> bs!1265390 (not (= lambda!291889 lambda!291888))))

(assert (=> b!5475916 true))

(assert (=> b!5475916 true))

(declare-fun e!3389419 () Bool)

(declare-fun call!403987 () Bool)

(assert (=> b!5475916 (= e!3389419 call!403987)))

(declare-fun b!5475917 () Bool)

(declare-fun e!3389423 () Bool)

(declare-fun e!3389421 () Bool)

(assert (=> b!5475917 (= e!3389423 e!3389421)))

(declare-fun res!2334335 () Bool)

(assert (=> b!5475917 (= res!2334335 (matchRSpec!2458 (regOne!31223 lt!2237036) s!2326))))

(assert (=> b!5475917 (=> res!2334335 e!3389421)))

(declare-fun b!5475918 () Bool)

(declare-fun e!3389422 () Bool)

(declare-fun e!3389424 () Bool)

(assert (=> b!5475918 (= e!3389422 e!3389424)))

(declare-fun res!2334336 () Bool)

(assert (=> b!5475918 (= res!2334336 (not ((_ is EmptyLang!15355) lt!2237036)))))

(assert (=> b!5475918 (=> (not res!2334336) (not e!3389424))))

(declare-fun b!5475919 () Bool)

(assert (=> b!5475919 (= e!3389423 e!3389419)))

(declare-fun c!956638 () Bool)

(assert (=> b!5475919 (= c!956638 ((_ is Star!15355) lt!2237036))))

(declare-fun e!3389425 () Bool)

(assert (=> b!5475920 (= e!3389425 call!403987)))

(declare-fun b!5475921 () Bool)

(declare-fun c!956637 () Bool)

(assert (=> b!5475921 (= c!956637 ((_ is Union!15355) lt!2237036))))

(declare-fun e!3389420 () Bool)

(assert (=> b!5475921 (= e!3389420 e!3389423)))

(declare-fun d!1739773 () Bool)

(declare-fun c!956639 () Bool)

(assert (=> d!1739773 (= c!956639 ((_ is EmptyExpr!15355) lt!2237036))))

(assert (=> d!1739773 (= (matchRSpec!2458 lt!2237036 s!2326) e!3389422)))

(declare-fun bm!403982 () Bool)

(assert (=> bm!403982 (= call!403987 (Exists!2534 (ite c!956638 lambda!291888 lambda!291889)))))

(declare-fun b!5475922 () Bool)

(declare-fun res!2334334 () Bool)

(assert (=> b!5475922 (=> res!2334334 e!3389425)))

(declare-fun call!403988 () Bool)

(assert (=> b!5475922 (= res!2334334 call!403988)))

(assert (=> b!5475922 (= e!3389419 e!3389425)))

(declare-fun b!5475923 () Bool)

(declare-fun c!956640 () Bool)

(assert (=> b!5475923 (= c!956640 ((_ is ElementMatch!15355) lt!2237036))))

(assert (=> b!5475923 (= e!3389424 e!3389420)))

(declare-fun bm!403983 () Bool)

(assert (=> bm!403983 (= call!403988 (isEmpty!34191 s!2326))))

(declare-fun b!5475924 () Bool)

(assert (=> b!5475924 (= e!3389421 (matchRSpec!2458 (regTwo!31223 lt!2237036) s!2326))))

(declare-fun b!5475925 () Bool)

(assert (=> b!5475925 (= e!3389420 (= s!2326 (Cons!62242 (c!956499 lt!2237036) Nil!62242)))))

(declare-fun b!5475926 () Bool)

(assert (=> b!5475926 (= e!3389422 call!403988)))

(assert (= (and d!1739773 c!956639) b!5475926))

(assert (= (and d!1739773 (not c!956639)) b!5475918))

(assert (= (and b!5475918 res!2334336) b!5475923))

(assert (= (and b!5475923 c!956640) b!5475925))

(assert (= (and b!5475923 (not c!956640)) b!5475921))

(assert (= (and b!5475921 c!956637) b!5475917))

(assert (= (and b!5475921 (not c!956637)) b!5475919))

(assert (= (and b!5475917 (not res!2334335)) b!5475924))

(assert (= (and b!5475919 c!956638) b!5475922))

(assert (= (and b!5475919 (not c!956638)) b!5475916))

(assert (= (and b!5475922 (not res!2334334)) b!5475920))

(assert (= (or b!5475920 b!5475916) bm!403982))

(assert (= (or b!5475926 b!5475922) bm!403983))

(declare-fun m!6492640 () Bool)

(assert (=> b!5475917 m!6492640))

(declare-fun m!6492642 () Bool)

(assert (=> bm!403982 m!6492642))

(assert (=> bm!403983 m!6492392))

(declare-fun m!6492644 () Bool)

(assert (=> b!5475924 m!6492644))

(assert (=> b!5475501 d!1739773))

(declare-fun b!5476012 () Bool)

(declare-fun res!2334382 () Bool)

(declare-fun e!3389480 () Bool)

(assert (=> b!5476012 (=> res!2334382 e!3389480)))

(assert (=> b!5476012 (= res!2334382 (not ((_ is ElementMatch!15355) lt!2237036)))))

(declare-fun e!3389475 () Bool)

(assert (=> b!5476012 (= e!3389475 e!3389480)))

(declare-fun b!5476013 () Bool)

(declare-fun res!2334387 () Bool)

(declare-fun e!3389479 () Bool)

(assert (=> b!5476013 (=> (not res!2334387) (not e!3389479))))

(declare-fun call!403998 () Bool)

(assert (=> b!5476013 (= res!2334387 (not call!403998))))

(declare-fun b!5476014 () Bool)

(declare-fun lt!2237089 () Bool)

(assert (=> b!5476014 (= e!3389475 (not lt!2237089))))

(declare-fun b!5476015 () Bool)

(declare-fun e!3389474 () Bool)

(declare-fun e!3389478 () Bool)

(assert (=> b!5476015 (= e!3389474 e!3389478)))

(declare-fun res!2334381 () Bool)

(assert (=> b!5476015 (=> res!2334381 e!3389478)))

(assert (=> b!5476015 (= res!2334381 call!403998)))

(declare-fun b!5476016 () Bool)

(declare-fun e!3389477 () Bool)

(assert (=> b!5476016 (= e!3389477 e!3389475)))

(declare-fun c!956663 () Bool)

(assert (=> b!5476016 (= c!956663 ((_ is EmptyLang!15355) lt!2237036))))

(declare-fun bm!403993 () Bool)

(assert (=> bm!403993 (= call!403998 (isEmpty!34191 s!2326))))

(declare-fun d!1739801 () Bool)

(assert (=> d!1739801 e!3389477))

(declare-fun c!956662 () Bool)

(assert (=> d!1739801 (= c!956662 ((_ is EmptyExpr!15355) lt!2237036))))

(declare-fun e!3389476 () Bool)

(assert (=> d!1739801 (= lt!2237089 e!3389476)))

(declare-fun c!956664 () Bool)

(assert (=> d!1739801 (= c!956664 (isEmpty!34191 s!2326))))

(assert (=> d!1739801 (validRegex!7091 lt!2237036)))

(assert (=> d!1739801 (= (matchR!7540 lt!2237036 s!2326) lt!2237089)))

(declare-fun b!5476017 () Bool)

(declare-fun res!2334384 () Bool)

(assert (=> b!5476017 (=> res!2334384 e!3389480)))

(assert (=> b!5476017 (= res!2334384 e!3389479)))

(declare-fun res!2334380 () Bool)

(assert (=> b!5476017 (=> (not res!2334380) (not e!3389479))))

(assert (=> b!5476017 (= res!2334380 lt!2237089)))

(declare-fun b!5476018 () Bool)

(declare-fun head!11730 (List!62366) C!30980)

(assert (=> b!5476018 (= e!3389479 (= (head!11730 s!2326) (c!956499 lt!2237036)))))

(declare-fun b!5476019 () Bool)

(assert (=> b!5476019 (= e!3389478 (not (= (head!11730 s!2326) (c!956499 lt!2237036))))))

(declare-fun b!5476020 () Bool)

(assert (=> b!5476020 (= e!3389477 (= lt!2237089 call!403998))))

(declare-fun b!5476021 () Bool)

(declare-fun derivativeStep!4327 (Regex!15355 C!30980) Regex!15355)

(declare-fun tail!10827 (List!62366) List!62366)

(assert (=> b!5476021 (= e!3389476 (matchR!7540 (derivativeStep!4327 lt!2237036 (head!11730 s!2326)) (tail!10827 s!2326)))))

(declare-fun b!5476022 () Bool)

(assert (=> b!5476022 (= e!3389480 e!3389474)))

(declare-fun res!2334386 () Bool)

(assert (=> b!5476022 (=> (not res!2334386) (not e!3389474))))

(assert (=> b!5476022 (= res!2334386 (not lt!2237089))))

(declare-fun b!5476023 () Bool)

(declare-fun res!2334385 () Bool)

(assert (=> b!5476023 (=> res!2334385 e!3389478)))

(assert (=> b!5476023 (= res!2334385 (not (isEmpty!34191 (tail!10827 s!2326))))))

(declare-fun b!5476024 () Bool)

(assert (=> b!5476024 (= e!3389476 (nullable!5482 lt!2237036))))

(declare-fun b!5476025 () Bool)

(declare-fun res!2334383 () Bool)

(assert (=> b!5476025 (=> (not res!2334383) (not e!3389479))))

(assert (=> b!5476025 (= res!2334383 (isEmpty!34191 (tail!10827 s!2326)))))

(assert (= (and d!1739801 c!956664) b!5476024))

(assert (= (and d!1739801 (not c!956664)) b!5476021))

(assert (= (and d!1739801 c!956662) b!5476020))

(assert (= (and d!1739801 (not c!956662)) b!5476016))

(assert (= (and b!5476016 c!956663) b!5476014))

(assert (= (and b!5476016 (not c!956663)) b!5476012))

(assert (= (and b!5476012 (not res!2334382)) b!5476017))

(assert (= (and b!5476017 res!2334380) b!5476013))

(assert (= (and b!5476013 res!2334387) b!5476025))

(assert (= (and b!5476025 res!2334383) b!5476018))

(assert (= (and b!5476017 (not res!2334384)) b!5476022))

(assert (= (and b!5476022 res!2334386) b!5476015))

(assert (= (and b!5476015 (not res!2334381)) b!5476023))

(assert (= (and b!5476023 (not res!2334385)) b!5476019))

(assert (= (or b!5476020 b!5476013 b!5476015) bm!403993))

(declare-fun m!6492710 () Bool)

(assert (=> b!5476023 m!6492710))

(assert (=> b!5476023 m!6492710))

(declare-fun m!6492712 () Bool)

(assert (=> b!5476023 m!6492712))

(declare-fun m!6492714 () Bool)

(assert (=> b!5476024 m!6492714))

(assert (=> d!1739801 m!6492392))

(assert (=> d!1739801 m!6492328))

(declare-fun m!6492716 () Bool)

(assert (=> b!5476019 m!6492716))

(assert (=> bm!403993 m!6492392))

(assert (=> b!5476025 m!6492710))

(assert (=> b!5476025 m!6492710))

(assert (=> b!5476025 m!6492712))

(assert (=> b!5476018 m!6492716))

(assert (=> b!5476021 m!6492716))

(assert (=> b!5476021 m!6492716))

(declare-fun m!6492718 () Bool)

(assert (=> b!5476021 m!6492718))

(assert (=> b!5476021 m!6492710))

(assert (=> b!5476021 m!6492718))

(assert (=> b!5476021 m!6492710))

(declare-fun m!6492720 () Bool)

(assert (=> b!5476021 m!6492720))

(assert (=> b!5475501 d!1739801))

(declare-fun d!1739831 () Bool)

(assert (=> d!1739831 (= (matchR!7540 lt!2237036 s!2326) (matchRSpec!2458 lt!2237036 s!2326))))

(declare-fun lt!2237093 () Unit!155160)

(declare-fun choose!41648 (Regex!15355 List!62366) Unit!155160)

(assert (=> d!1739831 (= lt!2237093 (choose!41648 lt!2237036 s!2326))))

(assert (=> d!1739831 (validRegex!7091 lt!2237036)))

(assert (=> d!1739831 (= (mainMatchTheorem!2458 lt!2237036 s!2326) lt!2237093)))

(declare-fun bs!1265414 () Bool)

(assert (= bs!1265414 d!1739831))

(assert (=> bs!1265414 m!6492320))

(assert (=> bs!1265414 m!6492318))

(declare-fun m!6492734 () Bool)

(assert (=> bs!1265414 m!6492734))

(assert (=> bs!1265414 m!6492328))

(assert (=> b!5475501 d!1739831))

(declare-fun b!5476026 () Bool)

(declare-fun e!3389484 () Bool)

(declare-fun call!404001 () Bool)

(assert (=> b!5476026 (= e!3389484 call!404001)))

(declare-fun b!5476027 () Bool)

(declare-fun e!3389485 () Bool)

(declare-fun e!3389481 () Bool)

(assert (=> b!5476027 (= e!3389485 e!3389481)))

(declare-fun c!956665 () Bool)

(assert (=> b!5476027 (= c!956665 ((_ is Union!15355) lt!2237036))))

(declare-fun b!5476028 () Bool)

(declare-fun res!2334390 () Bool)

(declare-fun e!3389483 () Bool)

(assert (=> b!5476028 (=> (not res!2334390) (not e!3389483))))

(declare-fun call!404000 () Bool)

(assert (=> b!5476028 (= res!2334390 call!404000)))

(assert (=> b!5476028 (= e!3389481 e!3389483)))

(declare-fun b!5476029 () Bool)

(declare-fun e!3389487 () Bool)

(declare-fun e!3389486 () Bool)

(assert (=> b!5476029 (= e!3389487 e!3389486)))

(declare-fun res!2334392 () Bool)

(assert (=> b!5476029 (=> (not res!2334392) (not e!3389486))))

(assert (=> b!5476029 (= res!2334392 call!404000)))

(declare-fun bm!403995 () Bool)

(assert (=> bm!403995 (= call!404000 call!404001)))

(declare-fun c!956666 () Bool)

(declare-fun bm!403996 () Bool)

(assert (=> bm!403996 (= call!404001 (validRegex!7091 (ite c!956666 (reg!15684 lt!2237036) (ite c!956665 (regOne!31223 lt!2237036) (regOne!31222 lt!2237036)))))))

(declare-fun b!5476030 () Bool)

(assert (=> b!5476030 (= e!3389485 e!3389484)))

(declare-fun res!2334389 () Bool)

(assert (=> b!5476030 (= res!2334389 (not (nullable!5482 (reg!15684 lt!2237036))))))

(assert (=> b!5476030 (=> (not res!2334389) (not e!3389484))))

(declare-fun b!5476031 () Bool)

(declare-fun call!403999 () Bool)

(assert (=> b!5476031 (= e!3389483 call!403999)))

(declare-fun b!5476032 () Bool)

(declare-fun res!2334388 () Bool)

(assert (=> b!5476032 (=> res!2334388 e!3389487)))

(assert (=> b!5476032 (= res!2334388 (not ((_ is Concat!24200) lt!2237036)))))

(assert (=> b!5476032 (= e!3389481 e!3389487)))

(declare-fun bm!403994 () Bool)

(assert (=> bm!403994 (= call!403999 (validRegex!7091 (ite c!956665 (regTwo!31223 lt!2237036) (regTwo!31222 lt!2237036))))))

(declare-fun d!1739841 () Bool)

(declare-fun res!2334391 () Bool)

(declare-fun e!3389482 () Bool)

(assert (=> d!1739841 (=> res!2334391 e!3389482)))

(assert (=> d!1739841 (= res!2334391 ((_ is ElementMatch!15355) lt!2237036))))

(assert (=> d!1739841 (= (validRegex!7091 lt!2237036) e!3389482)))

(declare-fun b!5476033 () Bool)

(assert (=> b!5476033 (= e!3389486 call!403999)))

(declare-fun b!5476034 () Bool)

(assert (=> b!5476034 (= e!3389482 e!3389485)))

(assert (=> b!5476034 (= c!956666 ((_ is Star!15355) lt!2237036))))

(assert (= (and d!1739841 (not res!2334391)) b!5476034))

(assert (= (and b!5476034 c!956666) b!5476030))

(assert (= (and b!5476034 (not c!956666)) b!5476027))

(assert (= (and b!5476030 res!2334389) b!5476026))

(assert (= (and b!5476027 c!956665) b!5476028))

(assert (= (and b!5476027 (not c!956665)) b!5476032))

(assert (= (and b!5476028 res!2334390) b!5476031))

(assert (= (and b!5476032 (not res!2334388)) b!5476029))

(assert (= (and b!5476029 res!2334392) b!5476033))

(assert (= (or b!5476031 b!5476033) bm!403994))

(assert (= (or b!5476028 b!5476029) bm!403995))

(assert (= (or b!5476026 bm!403995) bm!403996))

(declare-fun m!6492736 () Bool)

(assert (=> bm!403996 m!6492736))

(declare-fun m!6492738 () Bool)

(assert (=> b!5476030 m!6492738))

(declare-fun m!6492740 () Bool)

(assert (=> bm!403994 m!6492740))

(assert (=> b!5475511 d!1739841))

(declare-fun d!1739843 () Bool)

(assert (=> d!1739843 (= (flatMap!1058 z!1189 lambda!291847) (choose!41643 z!1189 lambda!291847))))

(declare-fun bs!1265415 () Bool)

(assert (= bs!1265415 d!1739843))

(declare-fun m!6492742 () Bool)

(assert (=> bs!1265415 m!6492742))

(assert (=> b!5475499 d!1739843))

(declare-fun b!5476035 () Bool)

(declare-fun e!3389490 () (InoxSet Context!9478))

(declare-fun e!3389489 () (InoxSet Context!9478))

(assert (=> b!5476035 (= e!3389490 e!3389489)))

(declare-fun c!956667 () Bool)

(assert (=> b!5476035 (= c!956667 ((_ is Cons!62240) (exprs!5239 (h!68689 zl!343))))))

(declare-fun b!5476036 () Bool)

(declare-fun call!404002 () (InoxSet Context!9478))

(assert (=> b!5476036 (= e!3389489 call!404002)))

(declare-fun d!1739845 () Bool)

(declare-fun c!956668 () Bool)

(declare-fun e!3389488 () Bool)

(assert (=> d!1739845 (= c!956668 e!3389488)))

(declare-fun res!2334393 () Bool)

(assert (=> d!1739845 (=> (not res!2334393) (not e!3389488))))

(assert (=> d!1739845 (= res!2334393 ((_ is Cons!62240) (exprs!5239 (h!68689 zl!343))))))

(assert (=> d!1739845 (= (derivationStepZipperUp!707 (h!68689 zl!343) (h!68690 s!2326)) e!3389490)))

(declare-fun b!5476037 () Bool)

(assert (=> b!5476037 (= e!3389488 (nullable!5482 (h!68688 (exprs!5239 (h!68689 zl!343)))))))

(declare-fun b!5476038 () Bool)

(assert (=> b!5476038 (= e!3389489 ((as const (Array Context!9478 Bool)) false))))

(declare-fun b!5476039 () Bool)

(assert (=> b!5476039 (= e!3389490 ((_ map or) call!404002 (derivationStepZipperUp!707 (Context!9479 (t!375593 (exprs!5239 (h!68689 zl!343)))) (h!68690 s!2326))))))

(declare-fun bm!403997 () Bool)

(assert (=> bm!403997 (= call!404002 (derivationStepZipperDown!781 (h!68688 (exprs!5239 (h!68689 zl!343))) (Context!9479 (t!375593 (exprs!5239 (h!68689 zl!343)))) (h!68690 s!2326)))))

(assert (= (and d!1739845 res!2334393) b!5476037))

(assert (= (and d!1739845 c!956668) b!5476039))

(assert (= (and d!1739845 (not c!956668)) b!5476035))

(assert (= (and b!5476035 c!956667) b!5476036))

(assert (= (and b!5476035 (not c!956667)) b!5476038))

(assert (= (or b!5476039 b!5476036) bm!403997))

(declare-fun m!6492744 () Bool)

(assert (=> b!5476037 m!6492744))

(declare-fun m!6492746 () Bool)

(assert (=> b!5476039 m!6492746))

(declare-fun m!6492748 () Bool)

(assert (=> bm!403997 m!6492748))

(assert (=> b!5475499 d!1739845))

(declare-fun d!1739847 () Bool)

(assert (=> d!1739847 (= (flatMap!1058 z!1189 lambda!291847) (dynLambda!24428 lambda!291847 (h!68689 zl!343)))))

(declare-fun lt!2237094 () Unit!155160)

(assert (=> d!1739847 (= lt!2237094 (choose!41644 z!1189 (h!68689 zl!343) lambda!291847))))

(assert (=> d!1739847 (= z!1189 (store ((as const (Array Context!9478 Bool)) false) (h!68689 zl!343) true))))

(assert (=> d!1739847 (= (lemmaFlatMapOnSingletonSet!590 z!1189 (h!68689 zl!343) lambda!291847) lt!2237094)))

(declare-fun b_lambda!208053 () Bool)

(assert (=> (not b_lambda!208053) (not d!1739847)))

(declare-fun bs!1265416 () Bool)

(assert (= bs!1265416 d!1739847))

(assert (=> bs!1265416 m!6492414))

(declare-fun m!6492750 () Bool)

(assert (=> bs!1265416 m!6492750))

(declare-fun m!6492752 () Bool)

(assert (=> bs!1265416 m!6492752))

(declare-fun m!6492754 () Bool)

(assert (=> bs!1265416 m!6492754))

(assert (=> b!5475499 d!1739847))

(declare-fun d!1739849 () Bool)

(declare-fun lt!2237095 () Regex!15355)

(assert (=> d!1739849 (validRegex!7091 lt!2237095)))

(assert (=> d!1739849 (= lt!2237095 (generalisedUnion!1284 (unfocusZipperList!797 (Cons!62241 lt!2237028 Nil!62241))))))

(assert (=> d!1739849 (= (unfocusZipper!1097 (Cons!62241 lt!2237028 Nil!62241)) lt!2237095)))

(declare-fun bs!1265417 () Bool)

(assert (= bs!1265417 d!1739849))

(declare-fun m!6492756 () Bool)

(assert (=> bs!1265417 m!6492756))

(declare-fun m!6492758 () Bool)

(assert (=> bs!1265417 m!6492758))

(assert (=> bs!1265417 m!6492758))

(declare-fun m!6492760 () Bool)

(assert (=> bs!1265417 m!6492760))

(assert (=> b!5475504 d!1739849))

(declare-fun bs!1265418 () Bool)

(declare-fun b!5476044 () Bool)

(assert (= bs!1265418 (and b!5476044 b!5475916)))

(declare-fun lambda!291898 () Int)

(assert (=> bs!1265418 (not (= lambda!291898 lambda!291889))))

(declare-fun bs!1265419 () Bool)

(assert (= bs!1265419 (and b!5476044 b!5475920)))

(assert (=> bs!1265419 (= (and (= (reg!15684 r!7292) (reg!15684 lt!2237036)) (= r!7292 lt!2237036)) (= lambda!291898 lambda!291888))))

(declare-fun bs!1265420 () Bool)

(assert (= bs!1265420 (and b!5476044 b!5475492)))

(assert (=> bs!1265420 (= lambda!291898 lambda!291845)))

(assert (=> bs!1265420 (not (= lambda!291898 lambda!291844))))

(assert (=> bs!1265420 (not (= lambda!291898 lambda!291846))))

(assert (=> b!5476044 true))

(assert (=> b!5476044 true))

(declare-fun bs!1265421 () Bool)

(declare-fun b!5476040 () Bool)

(assert (= bs!1265421 (and b!5476040 b!5475916)))

(declare-fun lambda!291899 () Int)

(assert (=> bs!1265421 (= (and (= (regOne!31222 r!7292) (regOne!31222 lt!2237036)) (= (regTwo!31222 r!7292) (regTwo!31222 lt!2237036))) (= lambda!291899 lambda!291889))))

(declare-fun bs!1265422 () Bool)

(assert (= bs!1265422 (and b!5476040 b!5475920)))

(assert (=> bs!1265422 (not (= lambda!291899 lambda!291888))))

(declare-fun bs!1265423 () Bool)

(assert (= bs!1265423 (and b!5476040 b!5475492)))

(assert (=> bs!1265423 (not (= lambda!291899 lambda!291845))))

(assert (=> bs!1265423 (not (= lambda!291899 lambda!291844))))

(declare-fun bs!1265424 () Bool)

(assert (= bs!1265424 (and b!5476040 b!5476044)))

(assert (=> bs!1265424 (not (= lambda!291899 lambda!291898))))

(assert (=> bs!1265423 (= (and (= (regOne!31222 r!7292) (reg!15684 r!7292)) (= (regTwo!31222 r!7292) r!7292)) (= lambda!291899 lambda!291846))))

(assert (=> b!5476040 true))

(assert (=> b!5476040 true))

(declare-fun e!3389491 () Bool)

(declare-fun call!404003 () Bool)

(assert (=> b!5476040 (= e!3389491 call!404003)))

(declare-fun b!5476041 () Bool)

(declare-fun e!3389495 () Bool)

(declare-fun e!3389493 () Bool)

(assert (=> b!5476041 (= e!3389495 e!3389493)))

(declare-fun res!2334395 () Bool)

(assert (=> b!5476041 (= res!2334395 (matchRSpec!2458 (regOne!31223 r!7292) s!2326))))

(assert (=> b!5476041 (=> res!2334395 e!3389493)))

(declare-fun b!5476042 () Bool)

(declare-fun e!3389494 () Bool)

(declare-fun e!3389496 () Bool)

(assert (=> b!5476042 (= e!3389494 e!3389496)))

(declare-fun res!2334396 () Bool)

(assert (=> b!5476042 (= res!2334396 (not ((_ is EmptyLang!15355) r!7292)))))

(assert (=> b!5476042 (=> (not res!2334396) (not e!3389496))))

(declare-fun b!5476043 () Bool)

(assert (=> b!5476043 (= e!3389495 e!3389491)))

(declare-fun c!956670 () Bool)

(assert (=> b!5476043 (= c!956670 ((_ is Star!15355) r!7292))))

(declare-fun e!3389497 () Bool)

(assert (=> b!5476044 (= e!3389497 call!404003)))

(declare-fun b!5476045 () Bool)

(declare-fun c!956669 () Bool)

(assert (=> b!5476045 (= c!956669 ((_ is Union!15355) r!7292))))

(declare-fun e!3389492 () Bool)

(assert (=> b!5476045 (= e!3389492 e!3389495)))

(declare-fun d!1739851 () Bool)

(declare-fun c!956671 () Bool)

(assert (=> d!1739851 (= c!956671 ((_ is EmptyExpr!15355) r!7292))))

(assert (=> d!1739851 (= (matchRSpec!2458 r!7292 s!2326) e!3389494)))

(declare-fun bm!403998 () Bool)

(assert (=> bm!403998 (= call!404003 (Exists!2534 (ite c!956670 lambda!291898 lambda!291899)))))

(declare-fun b!5476046 () Bool)

(declare-fun res!2334394 () Bool)

(assert (=> b!5476046 (=> res!2334394 e!3389497)))

(declare-fun call!404004 () Bool)

(assert (=> b!5476046 (= res!2334394 call!404004)))

(assert (=> b!5476046 (= e!3389491 e!3389497)))

(declare-fun b!5476047 () Bool)

(declare-fun c!956672 () Bool)

(assert (=> b!5476047 (= c!956672 ((_ is ElementMatch!15355) r!7292))))

(assert (=> b!5476047 (= e!3389496 e!3389492)))

(declare-fun bm!403999 () Bool)

(assert (=> bm!403999 (= call!404004 (isEmpty!34191 s!2326))))

(declare-fun b!5476048 () Bool)

(assert (=> b!5476048 (= e!3389493 (matchRSpec!2458 (regTwo!31223 r!7292) s!2326))))

(declare-fun b!5476049 () Bool)

(assert (=> b!5476049 (= e!3389492 (= s!2326 (Cons!62242 (c!956499 r!7292) Nil!62242)))))

(declare-fun b!5476050 () Bool)

(assert (=> b!5476050 (= e!3389494 call!404004)))

(assert (= (and d!1739851 c!956671) b!5476050))

(assert (= (and d!1739851 (not c!956671)) b!5476042))

(assert (= (and b!5476042 res!2334396) b!5476047))

(assert (= (and b!5476047 c!956672) b!5476049))

(assert (= (and b!5476047 (not c!956672)) b!5476045))

(assert (= (and b!5476045 c!956669) b!5476041))

(assert (= (and b!5476045 (not c!956669)) b!5476043))

(assert (= (and b!5476041 (not res!2334395)) b!5476048))

(assert (= (and b!5476043 c!956670) b!5476046))

(assert (= (and b!5476043 (not c!956670)) b!5476040))

(assert (= (and b!5476046 (not res!2334394)) b!5476044))

(assert (= (or b!5476044 b!5476040) bm!403998))

(assert (= (or b!5476050 b!5476046) bm!403999))

(declare-fun m!6492762 () Bool)

(assert (=> b!5476041 m!6492762))

(declare-fun m!6492764 () Bool)

(assert (=> bm!403998 m!6492764))

(assert (=> bm!403999 m!6492392))

(declare-fun m!6492766 () Bool)

(assert (=> b!5476048 m!6492766))

(assert (=> b!5475494 d!1739851))

(declare-fun b!5476055 () Bool)

(declare-fun res!2334403 () Bool)

(declare-fun e!3389506 () Bool)

(assert (=> b!5476055 (=> res!2334403 e!3389506)))

(assert (=> b!5476055 (= res!2334403 (not ((_ is ElementMatch!15355) r!7292)))))

(declare-fun e!3389501 () Bool)

(assert (=> b!5476055 (= e!3389501 e!3389506)))

(declare-fun b!5476056 () Bool)

(declare-fun res!2334408 () Bool)

(declare-fun e!3389505 () Bool)

(assert (=> b!5476056 (=> (not res!2334408) (not e!3389505))))

(declare-fun call!404005 () Bool)

(assert (=> b!5476056 (= res!2334408 (not call!404005))))

(declare-fun b!5476057 () Bool)

(declare-fun lt!2237098 () Bool)

(assert (=> b!5476057 (= e!3389501 (not lt!2237098))))

(declare-fun b!5476058 () Bool)

(declare-fun e!3389500 () Bool)

(declare-fun e!3389504 () Bool)

(assert (=> b!5476058 (= e!3389500 e!3389504)))

(declare-fun res!2334402 () Bool)

(assert (=> b!5476058 (=> res!2334402 e!3389504)))

(assert (=> b!5476058 (= res!2334402 call!404005)))

(declare-fun b!5476059 () Bool)

(declare-fun e!3389503 () Bool)

(assert (=> b!5476059 (= e!3389503 e!3389501)))

(declare-fun c!956674 () Bool)

(assert (=> b!5476059 (= c!956674 ((_ is EmptyLang!15355) r!7292))))

(declare-fun bm!404000 () Bool)

(assert (=> bm!404000 (= call!404005 (isEmpty!34191 s!2326))))

(declare-fun d!1739853 () Bool)

(assert (=> d!1739853 e!3389503))

(declare-fun c!956673 () Bool)

(assert (=> d!1739853 (= c!956673 ((_ is EmptyExpr!15355) r!7292))))

(declare-fun e!3389502 () Bool)

(assert (=> d!1739853 (= lt!2237098 e!3389502)))

(declare-fun c!956675 () Bool)

(assert (=> d!1739853 (= c!956675 (isEmpty!34191 s!2326))))

(assert (=> d!1739853 (validRegex!7091 r!7292)))

(assert (=> d!1739853 (= (matchR!7540 r!7292 s!2326) lt!2237098)))

(declare-fun b!5476060 () Bool)

(declare-fun res!2334405 () Bool)

(assert (=> b!5476060 (=> res!2334405 e!3389506)))

(assert (=> b!5476060 (= res!2334405 e!3389505)))

(declare-fun res!2334401 () Bool)

(assert (=> b!5476060 (=> (not res!2334401) (not e!3389505))))

(assert (=> b!5476060 (= res!2334401 lt!2237098)))

(declare-fun b!5476061 () Bool)

(assert (=> b!5476061 (= e!3389505 (= (head!11730 s!2326) (c!956499 r!7292)))))

(declare-fun b!5476062 () Bool)

(assert (=> b!5476062 (= e!3389504 (not (= (head!11730 s!2326) (c!956499 r!7292))))))

(declare-fun b!5476063 () Bool)

(assert (=> b!5476063 (= e!3389503 (= lt!2237098 call!404005))))

(declare-fun b!5476064 () Bool)

(assert (=> b!5476064 (= e!3389502 (matchR!7540 (derivativeStep!4327 r!7292 (head!11730 s!2326)) (tail!10827 s!2326)))))

(declare-fun b!5476065 () Bool)

(assert (=> b!5476065 (= e!3389506 e!3389500)))

(declare-fun res!2334407 () Bool)

(assert (=> b!5476065 (=> (not res!2334407) (not e!3389500))))

(assert (=> b!5476065 (= res!2334407 (not lt!2237098))))

(declare-fun b!5476066 () Bool)

(declare-fun res!2334406 () Bool)

(assert (=> b!5476066 (=> res!2334406 e!3389504)))

(assert (=> b!5476066 (= res!2334406 (not (isEmpty!34191 (tail!10827 s!2326))))))

(declare-fun b!5476067 () Bool)

(assert (=> b!5476067 (= e!3389502 (nullable!5482 r!7292))))

(declare-fun b!5476068 () Bool)

(declare-fun res!2334404 () Bool)

(assert (=> b!5476068 (=> (not res!2334404) (not e!3389505))))

(assert (=> b!5476068 (= res!2334404 (isEmpty!34191 (tail!10827 s!2326)))))

(assert (= (and d!1739853 c!956675) b!5476067))

(assert (= (and d!1739853 (not c!956675)) b!5476064))

(assert (= (and d!1739853 c!956673) b!5476063))

(assert (= (and d!1739853 (not c!956673)) b!5476059))

(assert (= (and b!5476059 c!956674) b!5476057))

(assert (= (and b!5476059 (not c!956674)) b!5476055))

(assert (= (and b!5476055 (not res!2334403)) b!5476060))

(assert (= (and b!5476060 res!2334401) b!5476056))

(assert (= (and b!5476056 res!2334408) b!5476068))

(assert (= (and b!5476068 res!2334404) b!5476061))

(assert (= (and b!5476060 (not res!2334405)) b!5476065))

(assert (= (and b!5476065 res!2334407) b!5476058))

(assert (= (and b!5476058 (not res!2334402)) b!5476066))

(assert (= (and b!5476066 (not res!2334406)) b!5476062))

(assert (= (or b!5476063 b!5476056 b!5476058) bm!404000))

(assert (=> b!5476066 m!6492710))

(assert (=> b!5476066 m!6492710))

(assert (=> b!5476066 m!6492712))

(declare-fun m!6492768 () Bool)

(assert (=> b!5476067 m!6492768))

(assert (=> d!1739853 m!6492392))

(assert (=> d!1739853 m!6492360))

(assert (=> b!5476062 m!6492716))

(assert (=> bm!404000 m!6492392))

(assert (=> b!5476068 m!6492710))

(assert (=> b!5476068 m!6492710))

(assert (=> b!5476068 m!6492712))

(assert (=> b!5476061 m!6492716))

(assert (=> b!5476064 m!6492716))

(assert (=> b!5476064 m!6492716))

(declare-fun m!6492770 () Bool)

(assert (=> b!5476064 m!6492770))

(assert (=> b!5476064 m!6492710))

(assert (=> b!5476064 m!6492770))

(assert (=> b!5476064 m!6492710))

(declare-fun m!6492772 () Bool)

(assert (=> b!5476064 m!6492772))

(assert (=> b!5475494 d!1739853))

(declare-fun d!1739855 () Bool)

(assert (=> d!1739855 (= (matchR!7540 r!7292 s!2326) (matchRSpec!2458 r!7292 s!2326))))

(declare-fun lt!2237099 () Unit!155160)

(assert (=> d!1739855 (= lt!2237099 (choose!41648 r!7292 s!2326))))

(assert (=> d!1739855 (validRegex!7091 r!7292)))

(assert (=> d!1739855 (= (mainMatchTheorem!2458 r!7292 s!2326) lt!2237099)))

(declare-fun bs!1265425 () Bool)

(assert (= bs!1265425 d!1739855))

(assert (=> bs!1265425 m!6492364))

(assert (=> bs!1265425 m!6492362))

(declare-fun m!6492774 () Bool)

(assert (=> bs!1265425 m!6492774))

(assert (=> bs!1265425 m!6492360))

(assert (=> b!5475494 d!1739855))

(declare-fun d!1739857 () Bool)

(declare-fun lt!2237100 () Regex!15355)

(assert (=> d!1739857 (validRegex!7091 lt!2237100)))

(assert (=> d!1739857 (= lt!2237100 (generalisedUnion!1284 (unfocusZipperList!797 (Cons!62241 lt!2237017 Nil!62241))))))

(assert (=> d!1739857 (= (unfocusZipper!1097 (Cons!62241 lt!2237017 Nil!62241)) lt!2237100)))

(declare-fun bs!1265426 () Bool)

(assert (= bs!1265426 d!1739857))

(declare-fun m!6492776 () Bool)

(assert (=> bs!1265426 m!6492776))

(declare-fun m!6492778 () Bool)

(assert (=> bs!1265426 m!6492778))

(assert (=> bs!1265426 m!6492778))

(declare-fun m!6492780 () Bool)

(assert (=> bs!1265426 m!6492780))

(assert (=> b!5475483 d!1739857))

(declare-fun b!5476075 () Bool)

(declare-fun c!956676 () Bool)

(assert (=> b!5476075 (= c!956676 ((_ is Star!15355) (reg!15684 r!7292)))))

(declare-fun e!3389510 () (InoxSet Context!9478))

(declare-fun e!3389514 () (InoxSet Context!9478))

(assert (=> b!5476075 (= e!3389510 e!3389514)))

(declare-fun b!5476076 () Bool)

(declare-fun e!3389509 () (InoxSet Context!9478))

(declare-fun call!404010 () (InoxSet Context!9478))

(declare-fun call!404008 () (InoxSet Context!9478))

(assert (=> b!5476076 (= e!3389509 ((_ map or) call!404010 call!404008))))

(declare-fun b!5476077 () Bool)

(declare-fun c!956680 () Bool)

(declare-fun e!3389513 () Bool)

(assert (=> b!5476077 (= c!956680 e!3389513)))

(declare-fun res!2334415 () Bool)

(assert (=> b!5476077 (=> (not res!2334415) (not e!3389513))))

(assert (=> b!5476077 (= res!2334415 ((_ is Concat!24200) (reg!15684 r!7292)))))

(declare-fun e!3389511 () (InoxSet Context!9478))

(assert (=> b!5476077 (= e!3389511 e!3389509)))

(declare-fun bm!404001 () Bool)

(declare-fun call!404007 () (InoxSet Context!9478))

(assert (=> bm!404001 (= call!404008 call!404007)))

(declare-fun b!5476078 () Bool)

(assert (=> b!5476078 (= e!3389509 e!3389510)))

(declare-fun c!956679 () Bool)

(assert (=> b!5476078 (= c!956679 ((_ is Concat!24200) (reg!15684 r!7292)))))

(declare-fun b!5476079 () Bool)

(declare-fun e!3389512 () (InoxSet Context!9478))

(assert (=> b!5476079 (= e!3389512 (store ((as const (Array Context!9478 Bool)) false) lt!2237028 true))))

(declare-fun bm!404003 () Bool)

(declare-fun call!404009 () List!62364)

(declare-fun c!956678 () Bool)

(assert (=> bm!404003 (= call!404007 (derivationStepZipperDown!781 (ite c!956678 (regTwo!31223 (reg!15684 r!7292)) (ite c!956680 (regTwo!31222 (reg!15684 r!7292)) (ite c!956679 (regOne!31222 (reg!15684 r!7292)) (reg!15684 (reg!15684 r!7292))))) (ite (or c!956678 c!956680) lt!2237028 (Context!9479 call!404009)) (h!68690 s!2326)))))

(declare-fun b!5476080 () Bool)

(assert (=> b!5476080 (= e!3389514 ((as const (Array Context!9478 Bool)) false))))

(declare-fun bm!404004 () Bool)

(declare-fun call!404006 () (InoxSet Context!9478))

(assert (=> bm!404004 (= call!404006 call!404008)))

(declare-fun bm!404005 () Bool)

(declare-fun call!404011 () List!62364)

(assert (=> bm!404005 (= call!404011 ($colon$colon!1552 (exprs!5239 lt!2237028) (ite (or c!956680 c!956679) (regTwo!31222 (reg!15684 r!7292)) (reg!15684 r!7292))))))

(declare-fun b!5476081 () Bool)

(assert (=> b!5476081 (= e!3389514 call!404006)))

(declare-fun bm!404002 () Bool)

(assert (=> bm!404002 (= call!404010 (derivationStepZipperDown!781 (ite c!956678 (regOne!31223 (reg!15684 r!7292)) (regOne!31222 (reg!15684 r!7292))) (ite c!956678 lt!2237028 (Context!9479 call!404011)) (h!68690 s!2326)))))

(declare-fun d!1739859 () Bool)

(declare-fun c!956677 () Bool)

(assert (=> d!1739859 (= c!956677 (and ((_ is ElementMatch!15355) (reg!15684 r!7292)) (= (c!956499 (reg!15684 r!7292)) (h!68690 s!2326))))))

(assert (=> d!1739859 (= (derivationStepZipperDown!781 (reg!15684 r!7292) lt!2237028 (h!68690 s!2326)) e!3389512)))

(declare-fun b!5476082 () Bool)

(assert (=> b!5476082 (= e!3389510 call!404006)))

(declare-fun bm!404006 () Bool)

(assert (=> bm!404006 (= call!404009 call!404011)))

(declare-fun b!5476083 () Bool)

(assert (=> b!5476083 (= e!3389511 ((_ map or) call!404010 call!404007))))

(declare-fun b!5476084 () Bool)

(assert (=> b!5476084 (= e!3389512 e!3389511)))

(assert (=> b!5476084 (= c!956678 ((_ is Union!15355) (reg!15684 r!7292)))))

(declare-fun b!5476085 () Bool)

(assert (=> b!5476085 (= e!3389513 (nullable!5482 (regOne!31222 (reg!15684 r!7292))))))

(assert (= (and d!1739859 c!956677) b!5476079))

(assert (= (and d!1739859 (not c!956677)) b!5476084))

(assert (= (and b!5476084 c!956678) b!5476083))

(assert (= (and b!5476084 (not c!956678)) b!5476077))

(assert (= (and b!5476077 res!2334415) b!5476085))

(assert (= (and b!5476077 c!956680) b!5476076))

(assert (= (and b!5476077 (not c!956680)) b!5476078))

(assert (= (and b!5476078 c!956679) b!5476082))

(assert (= (and b!5476078 (not c!956679)) b!5476075))

(assert (= (and b!5476075 c!956676) b!5476081))

(assert (= (and b!5476075 (not c!956676)) b!5476080))

(assert (= (or b!5476082 b!5476081) bm!404006))

(assert (= (or b!5476082 b!5476081) bm!404004))

(assert (= (or b!5476076 bm!404006) bm!404005))

(assert (= (or b!5476076 bm!404004) bm!404001))

(assert (= (or b!5476083 bm!404001) bm!404003))

(assert (= (or b!5476083 b!5476076) bm!404002))

(declare-fun m!6492782 () Bool)

(assert (=> bm!404003 m!6492782))

(declare-fun m!6492784 () Bool)

(assert (=> bm!404002 m!6492784))

(declare-fun m!6492786 () Bool)

(assert (=> b!5476085 m!6492786))

(declare-fun m!6492788 () Bool)

(assert (=> bm!404005 m!6492788))

(assert (=> b!5476079 m!6492336))

(assert (=> b!5475502 d!1739859))

(declare-fun d!1739861 () Bool)

(assert (=> d!1739861 (= (flatMap!1058 lt!2237022 lambda!291847) (choose!41643 lt!2237022 lambda!291847))))

(declare-fun bs!1265427 () Bool)

(assert (= bs!1265427 d!1739861))

(declare-fun m!6492790 () Bool)

(assert (=> bs!1265427 m!6492790))

(assert (=> b!5475502 d!1739861))

(declare-fun b!5476086 () Bool)

(declare-fun e!3389517 () (InoxSet Context!9478))

(declare-fun e!3389516 () (InoxSet Context!9478))

(assert (=> b!5476086 (= e!3389517 e!3389516)))

(declare-fun c!956681 () Bool)

(assert (=> b!5476086 (= c!956681 ((_ is Cons!62240) (exprs!5239 lt!2237023)))))

(declare-fun b!5476087 () Bool)

(declare-fun call!404012 () (InoxSet Context!9478))

(assert (=> b!5476087 (= e!3389516 call!404012)))

(declare-fun d!1739863 () Bool)

(declare-fun c!956682 () Bool)

(declare-fun e!3389515 () Bool)

(assert (=> d!1739863 (= c!956682 e!3389515)))

(declare-fun res!2334416 () Bool)

(assert (=> d!1739863 (=> (not res!2334416) (not e!3389515))))

(assert (=> d!1739863 (= res!2334416 ((_ is Cons!62240) (exprs!5239 lt!2237023)))))

(assert (=> d!1739863 (= (derivationStepZipperUp!707 lt!2237023 (h!68690 s!2326)) e!3389517)))

(declare-fun b!5476088 () Bool)

(assert (=> b!5476088 (= e!3389515 (nullable!5482 (h!68688 (exprs!5239 lt!2237023))))))

(declare-fun b!5476089 () Bool)

(assert (=> b!5476089 (= e!3389516 ((as const (Array Context!9478 Bool)) false))))

(declare-fun b!5476090 () Bool)

(assert (=> b!5476090 (= e!3389517 ((_ map or) call!404012 (derivationStepZipperUp!707 (Context!9479 (t!375593 (exprs!5239 lt!2237023))) (h!68690 s!2326))))))

(declare-fun bm!404007 () Bool)

(assert (=> bm!404007 (= call!404012 (derivationStepZipperDown!781 (h!68688 (exprs!5239 lt!2237023)) (Context!9479 (t!375593 (exprs!5239 lt!2237023))) (h!68690 s!2326)))))

(assert (= (and d!1739863 res!2334416) b!5476088))

(assert (= (and d!1739863 c!956682) b!5476090))

(assert (= (and d!1739863 (not c!956682)) b!5476086))

(assert (= (and b!5476086 c!956681) b!5476087))

(assert (= (and b!5476086 (not c!956681)) b!5476089))

(assert (= (or b!5476090 b!5476087) bm!404007))

(declare-fun m!6492792 () Bool)

(assert (=> b!5476088 m!6492792))

(declare-fun m!6492794 () Bool)

(assert (=> b!5476090 m!6492794))

(declare-fun m!6492796 () Bool)

(assert (=> bm!404007 m!6492796))

(assert (=> b!5475502 d!1739863))

(declare-fun d!1739865 () Bool)

(assert (=> d!1739865 (= (flatMap!1058 lt!2237022 lambda!291847) (dynLambda!24428 lambda!291847 lt!2237023))))

(declare-fun lt!2237102 () Unit!155160)

(assert (=> d!1739865 (= lt!2237102 (choose!41644 lt!2237022 lt!2237023 lambda!291847))))

(assert (=> d!1739865 (= lt!2237022 (store ((as const (Array Context!9478 Bool)) false) lt!2237023 true))))

(assert (=> d!1739865 (= (lemmaFlatMapOnSingletonSet!590 lt!2237022 lt!2237023 lambda!291847) lt!2237102)))

(declare-fun b_lambda!208055 () Bool)

(assert (=> (not b_lambda!208055) (not d!1739865)))

(declare-fun bs!1265433 () Bool)

(assert (= bs!1265433 d!1739865))

(assert (=> bs!1265433 m!6492406))

(declare-fun m!6492798 () Bool)

(assert (=> bs!1265433 m!6492798))

(declare-fun m!6492800 () Bool)

(assert (=> bs!1265433 m!6492800))

(assert (=> bs!1265433 m!6492404))

(assert (=> b!5475502 d!1739865))

(declare-fun d!1739867 () Bool)

(declare-fun isEmpty!34195 (Option!15464) Bool)

(assert (=> d!1739867 (= (isDefined!12167 (findConcatSeparation!1878 (reg!15684 r!7292) r!7292 Nil!62242 s!2326 s!2326)) (not (isEmpty!34195 (findConcatSeparation!1878 (reg!15684 r!7292) r!7292 Nil!62242 s!2326 s!2326))))))

(declare-fun bs!1265435 () Bool)

(assert (= bs!1265435 d!1739867))

(assert (=> bs!1265435 m!6492386))

(declare-fun m!6492802 () Bool)

(assert (=> bs!1265435 m!6492802))

(assert (=> b!5475492 d!1739867))

(declare-fun d!1739869 () Bool)

(declare-fun choose!41654 (Int) Bool)

(assert (=> d!1739869 (= (Exists!2534 lambda!291846) (choose!41654 lambda!291846))))

(declare-fun bs!1265436 () Bool)

(assert (= bs!1265436 d!1739869))

(declare-fun m!6492804 () Bool)

(assert (=> bs!1265436 m!6492804))

(assert (=> b!5475492 d!1739869))

(declare-fun bs!1265438 () Bool)

(declare-fun d!1739871 () Bool)

(assert (= bs!1265438 (and d!1739871 b!5476040)))

(declare-fun lambda!291910 () Int)

(assert (=> bs!1265438 (not (= lambda!291910 lambda!291899))))

(declare-fun bs!1265439 () Bool)

(assert (= bs!1265439 (and d!1739871 b!5475916)))

(assert (=> bs!1265439 (not (= lambda!291910 lambda!291889))))

(declare-fun bs!1265440 () Bool)

(assert (= bs!1265440 (and d!1739871 b!5475920)))

(assert (=> bs!1265440 (not (= lambda!291910 lambda!291888))))

(declare-fun bs!1265441 () Bool)

(assert (= bs!1265441 (and d!1739871 b!5475492)))

(assert (=> bs!1265441 (not (= lambda!291910 lambda!291845))))

(assert (=> bs!1265441 (= lambda!291910 lambda!291844)))

(declare-fun bs!1265442 () Bool)

(assert (= bs!1265442 (and d!1739871 b!5476044)))

(assert (=> bs!1265442 (not (= lambda!291910 lambda!291898))))

(assert (=> bs!1265441 (not (= lambda!291910 lambda!291846))))

(assert (=> d!1739871 true))

(assert (=> d!1739871 true))

(assert (=> d!1739871 true))

(declare-fun lambda!291911 () Int)

(assert (=> bs!1265438 (= (and (= (reg!15684 r!7292) (regOne!31222 r!7292)) (= r!7292 (regTwo!31222 r!7292))) (= lambda!291911 lambda!291899))))

(assert (=> bs!1265439 (= (and (= (reg!15684 r!7292) (regOne!31222 lt!2237036)) (= r!7292 (regTwo!31222 lt!2237036))) (= lambda!291911 lambda!291889))))

(assert (=> bs!1265440 (not (= lambda!291911 lambda!291888))))

(assert (=> bs!1265441 (not (= lambda!291911 lambda!291845))))

(declare-fun bs!1265443 () Bool)

(assert (= bs!1265443 d!1739871))

(assert (=> bs!1265443 (not (= lambda!291911 lambda!291910))))

(assert (=> bs!1265441 (not (= lambda!291911 lambda!291844))))

(assert (=> bs!1265442 (not (= lambda!291911 lambda!291898))))

(assert (=> bs!1265441 (= lambda!291911 lambda!291846)))

(assert (=> d!1739871 true))

(assert (=> d!1739871 true))

(assert (=> d!1739871 true))

(assert (=> d!1739871 (= (Exists!2534 lambda!291910) (Exists!2534 lambda!291911))))

(declare-fun lt!2237105 () Unit!155160)

(declare-fun choose!41655 (Regex!15355 Regex!15355 List!62366) Unit!155160)

(assert (=> d!1739871 (= lt!2237105 (choose!41655 (reg!15684 r!7292) r!7292 s!2326))))

(assert (=> d!1739871 (validRegex!7091 (reg!15684 r!7292))))

(assert (=> d!1739871 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1184 (reg!15684 r!7292) r!7292 s!2326) lt!2237105)))

(declare-fun m!6492812 () Bool)

(assert (=> bs!1265443 m!6492812))

(declare-fun m!6492814 () Bool)

(assert (=> bs!1265443 m!6492814))

(declare-fun m!6492816 () Bool)

(assert (=> bs!1265443 m!6492816))

(declare-fun m!6492818 () Bool)

(assert (=> bs!1265443 m!6492818))

(assert (=> b!5475492 d!1739871))

(declare-fun d!1739875 () Bool)

(assert (=> d!1739875 (= (Exists!2534 lambda!291845) (choose!41654 lambda!291845))))

(declare-fun bs!1265444 () Bool)

(assert (= bs!1265444 d!1739875))

(declare-fun m!6492820 () Bool)

(assert (=> bs!1265444 m!6492820))

(assert (=> b!5475492 d!1739875))

(declare-fun d!1739877 () Bool)

(assert (=> d!1739877 (= (isEmpty!34191 s!2326) ((_ is Nil!62242) s!2326))))

(assert (=> b!5475492 d!1739877))

(declare-fun d!1739879 () Bool)

(assert (=> d!1739879 (= (Exists!2534 lambda!291844) (choose!41654 lambda!291844))))

(declare-fun bs!1265445 () Bool)

(assert (= bs!1265445 d!1739879))

(declare-fun m!6492822 () Bool)

(assert (=> bs!1265445 m!6492822))

(assert (=> b!5475492 d!1739879))

(declare-fun bs!1265448 () Bool)

(declare-fun d!1739881 () Bool)

(assert (= bs!1265448 (and d!1739881 b!5476040)))

(declare-fun lambda!291919 () Int)

(assert (=> bs!1265448 (not (= lambda!291919 lambda!291899))))

(declare-fun bs!1265450 () Bool)

(assert (= bs!1265450 (and d!1739881 b!5475916)))

(assert (=> bs!1265450 (not (= lambda!291919 lambda!291889))))

(declare-fun bs!1265452 () Bool)

(assert (= bs!1265452 (and d!1739881 b!5475920)))

(assert (=> bs!1265452 (not (= lambda!291919 lambda!291888))))

(declare-fun bs!1265453 () Bool)

(assert (= bs!1265453 (and d!1739881 b!5475492)))

(assert (=> bs!1265453 (not (= lambda!291919 lambda!291845))))

(declare-fun bs!1265455 () Bool)

(assert (= bs!1265455 (and d!1739881 d!1739871)))

(assert (=> bs!1265455 (= (= (Star!15355 (reg!15684 r!7292)) r!7292) (= lambda!291919 lambda!291910))))

(assert (=> bs!1265453 (= (= (Star!15355 (reg!15684 r!7292)) r!7292) (= lambda!291919 lambda!291844))))

(declare-fun bs!1265457 () Bool)

(assert (= bs!1265457 (and d!1739881 b!5476044)))

(assert (=> bs!1265457 (not (= lambda!291919 lambda!291898))))

(assert (=> bs!1265453 (not (= lambda!291919 lambda!291846))))

(assert (=> bs!1265455 (not (= lambda!291919 lambda!291911))))

(assert (=> d!1739881 true))

(assert (=> d!1739881 true))

(declare-fun bs!1265460 () Bool)

(assert (= bs!1265460 d!1739881))

(declare-fun lambda!291920 () Int)

(assert (=> bs!1265460 (not (= lambda!291920 lambda!291919))))

(assert (=> bs!1265448 (not (= lambda!291920 lambda!291899))))

(assert (=> bs!1265450 (not (= lambda!291920 lambda!291889))))

(assert (=> bs!1265452 (= (and (= (reg!15684 r!7292) (reg!15684 lt!2237036)) (= (Star!15355 (reg!15684 r!7292)) lt!2237036)) (= lambda!291920 lambda!291888))))

(assert (=> bs!1265453 (= (= (Star!15355 (reg!15684 r!7292)) r!7292) (= lambda!291920 lambda!291845))))

(assert (=> bs!1265455 (not (= lambda!291920 lambda!291910))))

(assert (=> bs!1265453 (not (= lambda!291920 lambda!291844))))

(assert (=> bs!1265457 (= (= (Star!15355 (reg!15684 r!7292)) r!7292) (= lambda!291920 lambda!291898))))

(assert (=> bs!1265453 (not (= lambda!291920 lambda!291846))))

(assert (=> bs!1265455 (not (= lambda!291920 lambda!291911))))

(assert (=> d!1739881 true))

(assert (=> d!1739881 true))

(assert (=> d!1739881 (= (Exists!2534 lambda!291919) (Exists!2534 lambda!291920))))

(declare-fun lt!2237120 () Unit!155160)

(declare-fun choose!41657 (Regex!15355 List!62366) Unit!155160)

(assert (=> d!1739881 (= lt!2237120 (choose!41657 (reg!15684 r!7292) s!2326))))

(assert (=> d!1739881 (validRegex!7091 (reg!15684 r!7292))))

(assert (=> d!1739881 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!508 (reg!15684 r!7292) s!2326) lt!2237120)))

(declare-fun m!6492858 () Bool)

(assert (=> bs!1265460 m!6492858))

(declare-fun m!6492860 () Bool)

(assert (=> bs!1265460 m!6492860))

(declare-fun m!6492862 () Bool)

(assert (=> bs!1265460 m!6492862))

(assert (=> bs!1265460 m!6492818))

(assert (=> b!5475492 d!1739881))

(declare-fun b!5476228 () Bool)

(declare-fun e!3389588 () Bool)

(declare-fun lt!2237129 () Option!15464)

(declare-fun ++!13696 (List!62366 List!62366) List!62366)

(declare-fun get!21463 (Option!15464) tuple2!65104)

(assert (=> b!5476228 (= e!3389588 (= (++!13696 (_1!35855 (get!21463 lt!2237129)) (_2!35855 (get!21463 lt!2237129))) s!2326))))

(declare-fun b!5476229 () Bool)

(declare-fun e!3389586 () Bool)

(assert (=> b!5476229 (= e!3389586 (matchR!7540 r!7292 s!2326))))

(declare-fun b!5476230 () Bool)

(declare-fun res!2334470 () Bool)

(assert (=> b!5476230 (=> (not res!2334470) (not e!3389588))))

(assert (=> b!5476230 (= res!2334470 (matchR!7540 r!7292 (_2!35855 (get!21463 lt!2237129))))))

(declare-fun b!5476231 () Bool)

(declare-fun e!3389585 () Option!15464)

(assert (=> b!5476231 (= e!3389585 (Some!15463 (tuple2!65105 Nil!62242 s!2326)))))

(declare-fun d!1739891 () Bool)

(declare-fun e!3389589 () Bool)

(assert (=> d!1739891 e!3389589))

(declare-fun res!2334467 () Bool)

(assert (=> d!1739891 (=> res!2334467 e!3389589)))

(assert (=> d!1739891 (= res!2334467 e!3389588)))

(declare-fun res!2334466 () Bool)

(assert (=> d!1739891 (=> (not res!2334466) (not e!3389588))))

(assert (=> d!1739891 (= res!2334466 (isDefined!12167 lt!2237129))))

(assert (=> d!1739891 (= lt!2237129 e!3389585)))

(declare-fun c!956700 () Bool)

(assert (=> d!1739891 (= c!956700 e!3389586)))

(declare-fun res!2334469 () Bool)

(assert (=> d!1739891 (=> (not res!2334469) (not e!3389586))))

(assert (=> d!1739891 (= res!2334469 (matchR!7540 (reg!15684 r!7292) Nil!62242))))

(assert (=> d!1739891 (validRegex!7091 (reg!15684 r!7292))))

(assert (=> d!1739891 (= (findConcatSeparation!1878 (reg!15684 r!7292) r!7292 Nil!62242 s!2326 s!2326) lt!2237129)))

(declare-fun b!5476232 () Bool)

(declare-fun e!3389587 () Option!15464)

(assert (=> b!5476232 (= e!3389585 e!3389587)))

(declare-fun c!956701 () Bool)

(assert (=> b!5476232 (= c!956701 ((_ is Nil!62242) s!2326))))

(declare-fun b!5476233 () Bool)

(assert (=> b!5476233 (= e!3389589 (not (isDefined!12167 lt!2237129)))))

(declare-fun b!5476234 () Bool)

(assert (=> b!5476234 (= e!3389587 None!15463)))

(declare-fun b!5476235 () Bool)

(declare-fun lt!2237128 () Unit!155160)

(declare-fun lt!2237130 () Unit!155160)

(assert (=> b!5476235 (= lt!2237128 lt!2237130)))

(assert (=> b!5476235 (= (++!13696 (++!13696 Nil!62242 (Cons!62242 (h!68690 s!2326) Nil!62242)) (t!375595 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1901 (List!62366 C!30980 List!62366 List!62366) Unit!155160)

(assert (=> b!5476235 (= lt!2237130 (lemmaMoveElementToOtherListKeepsConcatEq!1901 Nil!62242 (h!68690 s!2326) (t!375595 s!2326) s!2326))))

(assert (=> b!5476235 (= e!3389587 (findConcatSeparation!1878 (reg!15684 r!7292) r!7292 (++!13696 Nil!62242 (Cons!62242 (h!68690 s!2326) Nil!62242)) (t!375595 s!2326) s!2326))))

(declare-fun b!5476236 () Bool)

(declare-fun res!2334468 () Bool)

(assert (=> b!5476236 (=> (not res!2334468) (not e!3389588))))

(assert (=> b!5476236 (= res!2334468 (matchR!7540 (reg!15684 r!7292) (_1!35855 (get!21463 lt!2237129))))))

(assert (= (and d!1739891 res!2334469) b!5476229))

(assert (= (and d!1739891 c!956700) b!5476231))

(assert (= (and d!1739891 (not c!956700)) b!5476232))

(assert (= (and b!5476232 c!956701) b!5476234))

(assert (= (and b!5476232 (not c!956701)) b!5476235))

(assert (= (and d!1739891 res!2334466) b!5476236))

(assert (= (and b!5476236 res!2334468) b!5476230))

(assert (= (and b!5476230 res!2334470) b!5476228))

(assert (= (and d!1739891 (not res!2334467)) b!5476233))

(declare-fun m!6492880 () Bool)

(assert (=> b!5476233 m!6492880))

(declare-fun m!6492882 () Bool)

(assert (=> b!5476228 m!6492882))

(declare-fun m!6492884 () Bool)

(assert (=> b!5476228 m!6492884))

(declare-fun m!6492886 () Bool)

(assert (=> b!5476235 m!6492886))

(assert (=> b!5476235 m!6492886))

(declare-fun m!6492888 () Bool)

(assert (=> b!5476235 m!6492888))

(declare-fun m!6492890 () Bool)

(assert (=> b!5476235 m!6492890))

(assert (=> b!5476235 m!6492886))

(declare-fun m!6492892 () Bool)

(assert (=> b!5476235 m!6492892))

(assert (=> b!5476230 m!6492882))

(declare-fun m!6492894 () Bool)

(assert (=> b!5476230 m!6492894))

(assert (=> b!5476236 m!6492882))

(declare-fun m!6492896 () Bool)

(assert (=> b!5476236 m!6492896))

(assert (=> d!1739891 m!6492880))

(declare-fun m!6492898 () Bool)

(assert (=> d!1739891 m!6492898))

(assert (=> d!1739891 m!6492818))

(assert (=> b!5476229 m!6492364))

(assert (=> b!5475492 d!1739891))

(declare-fun bs!1265472 () Bool)

(declare-fun d!1739905 () Bool)

(assert (= bs!1265472 (and d!1739905 d!1739881)))

(declare-fun lambda!291924 () Int)

(assert (=> bs!1265472 (= (= r!7292 (Star!15355 (reg!15684 r!7292))) (= lambda!291924 lambda!291919))))

(declare-fun bs!1265473 () Bool)

(assert (= bs!1265473 (and d!1739905 b!5476040)))

(assert (=> bs!1265473 (not (= lambda!291924 lambda!291899))))

(declare-fun bs!1265474 () Bool)

(assert (= bs!1265474 (and d!1739905 b!5475916)))

(assert (=> bs!1265474 (not (= lambda!291924 lambda!291889))))

(assert (=> bs!1265472 (not (= lambda!291924 lambda!291920))))

(declare-fun bs!1265475 () Bool)

(assert (= bs!1265475 (and d!1739905 b!5475920)))

(assert (=> bs!1265475 (not (= lambda!291924 lambda!291888))))

(declare-fun bs!1265476 () Bool)

(assert (= bs!1265476 (and d!1739905 b!5475492)))

(assert (=> bs!1265476 (not (= lambda!291924 lambda!291845))))

(declare-fun bs!1265477 () Bool)

(assert (= bs!1265477 (and d!1739905 d!1739871)))

(assert (=> bs!1265477 (= lambda!291924 lambda!291910)))

(assert (=> bs!1265476 (= lambda!291924 lambda!291844)))

(declare-fun bs!1265478 () Bool)

(assert (= bs!1265478 (and d!1739905 b!5476044)))

(assert (=> bs!1265478 (not (= lambda!291924 lambda!291898))))

(assert (=> bs!1265476 (not (= lambda!291924 lambda!291846))))

(assert (=> bs!1265477 (not (= lambda!291924 lambda!291911))))

(assert (=> d!1739905 true))

(assert (=> d!1739905 true))

(assert (=> d!1739905 true))

(assert (=> d!1739905 (= (isDefined!12167 (findConcatSeparation!1878 (reg!15684 r!7292) r!7292 Nil!62242 s!2326 s!2326)) (Exists!2534 lambda!291924))))

(declare-fun lt!2237133 () Unit!155160)

(declare-fun choose!41658 (Regex!15355 Regex!15355 List!62366) Unit!155160)

(assert (=> d!1739905 (= lt!2237133 (choose!41658 (reg!15684 r!7292) r!7292 s!2326))))

(assert (=> d!1739905 (validRegex!7091 (reg!15684 r!7292))))

(assert (=> d!1739905 (= (lemmaFindConcatSeparationEquivalentToExists!1642 (reg!15684 r!7292) r!7292 s!2326) lt!2237133)))

(declare-fun bs!1265479 () Bool)

(assert (= bs!1265479 d!1739905))

(assert (=> bs!1265479 m!6492386))

(declare-fun m!6492900 () Bool)

(assert (=> bs!1265479 m!6492900))

(assert (=> bs!1265479 m!6492386))

(assert (=> bs!1265479 m!6492388))

(assert (=> bs!1265479 m!6492818))

(declare-fun m!6492902 () Bool)

(assert (=> bs!1265479 m!6492902))

(assert (=> b!5475492 d!1739905))

(declare-fun d!1739907 () Bool)

(assert (=> d!1739907 (= (isEmpty!34190 (t!375594 zl!343)) ((_ is Nil!62241) (t!375594 zl!343)))))

(assert (=> b!5475486 d!1739907))

(declare-fun bs!1265480 () Bool)

(declare-fun d!1739909 () Bool)

(assert (= bs!1265480 (and d!1739909 d!1739721)))

(declare-fun lambda!291925 () Int)

(assert (=> bs!1265480 (= lambda!291925 lambda!291850)))

(declare-fun bs!1265481 () Bool)

(assert (= bs!1265481 (and d!1739909 d!1739723)))

(assert (=> bs!1265481 (= lambda!291925 lambda!291853)))

(declare-fun bs!1265482 () Bool)

(assert (= bs!1265482 (and d!1739909 d!1739741)))

(assert (=> bs!1265482 (= lambda!291925 lambda!291859)))

(assert (=> d!1739909 (= (inv!81634 (h!68689 zl!343)) (forall!14612 (exprs!5239 (h!68689 zl!343)) lambda!291925))))

(declare-fun bs!1265483 () Bool)

(assert (= bs!1265483 d!1739909))

(declare-fun m!6492904 () Bool)

(assert (=> bs!1265483 m!6492904))

(assert (=> b!5475506 d!1739909))

(declare-fun d!1739911 () Bool)

(declare-fun lt!2237134 () Regex!15355)

(assert (=> d!1739911 (validRegex!7091 lt!2237134)))

(assert (=> d!1739911 (= lt!2237134 (generalisedUnion!1284 (unfocusZipperList!797 (Cons!62241 lt!2237023 Nil!62241))))))

(assert (=> d!1739911 (= (unfocusZipper!1097 (Cons!62241 lt!2237023 Nil!62241)) lt!2237134)))

(declare-fun bs!1265484 () Bool)

(assert (= bs!1265484 d!1739911))

(declare-fun m!6492906 () Bool)

(assert (=> bs!1265484 m!6492906))

(declare-fun m!6492908 () Bool)

(assert (=> bs!1265484 m!6492908))

(assert (=> bs!1265484 m!6492908))

(declare-fun m!6492910 () Bool)

(assert (=> bs!1265484 m!6492910))

(assert (=> b!5475485 d!1739911))

(declare-fun d!1739913 () Bool)

(declare-fun c!956704 () Bool)

(assert (=> d!1739913 (= c!956704 (isEmpty!34191 s!2326))))

(declare-fun e!3389594 () Bool)

(assert (=> d!1739913 (= (matchZipper!1573 lt!2237022 s!2326) e!3389594)))

(declare-fun b!5476245 () Bool)

(declare-fun nullableZipper!1503 ((InoxSet Context!9478)) Bool)

(assert (=> b!5476245 (= e!3389594 (nullableZipper!1503 lt!2237022))))

(declare-fun b!5476246 () Bool)

(assert (=> b!5476246 (= e!3389594 (matchZipper!1573 (derivationStepZipper!1550 lt!2237022 (head!11730 s!2326)) (tail!10827 s!2326)))))

(assert (= (and d!1739913 c!956704) b!5476245))

(assert (= (and d!1739913 (not c!956704)) b!5476246))

(assert (=> d!1739913 m!6492392))

(declare-fun m!6492912 () Bool)

(assert (=> b!5476245 m!6492912))

(assert (=> b!5476246 m!6492716))

(assert (=> b!5476246 m!6492716))

(declare-fun m!6492914 () Bool)

(assert (=> b!5476246 m!6492914))

(assert (=> b!5476246 m!6492710))

(assert (=> b!5476246 m!6492914))

(assert (=> b!5476246 m!6492710))

(declare-fun m!6492916 () Bool)

(assert (=> b!5476246 m!6492916))

(assert (=> b!5475495 d!1739913))

(declare-fun d!1739915 () Bool)

(declare-fun c!956705 () Bool)

(assert (=> d!1739915 (= c!956705 (isEmpty!34191 (t!375595 s!2326)))))

(declare-fun e!3389595 () Bool)

(assert (=> d!1739915 (= (matchZipper!1573 (derivationStepZipper!1550 lt!2237022 (h!68690 s!2326)) (t!375595 s!2326)) e!3389595)))

(declare-fun b!5476247 () Bool)

(assert (=> b!5476247 (= e!3389595 (nullableZipper!1503 (derivationStepZipper!1550 lt!2237022 (h!68690 s!2326))))))

(declare-fun b!5476248 () Bool)

(assert (=> b!5476248 (= e!3389595 (matchZipper!1573 (derivationStepZipper!1550 (derivationStepZipper!1550 lt!2237022 (h!68690 s!2326)) (head!11730 (t!375595 s!2326))) (tail!10827 (t!375595 s!2326))))))

(assert (= (and d!1739915 c!956705) b!5476247))

(assert (= (and d!1739915 (not c!956705)) b!5476248))

(declare-fun m!6492918 () Bool)

(assert (=> d!1739915 m!6492918))

(assert (=> b!5476247 m!6492354))

(declare-fun m!6492920 () Bool)

(assert (=> b!5476247 m!6492920))

(declare-fun m!6492922 () Bool)

(assert (=> b!5476248 m!6492922))

(assert (=> b!5476248 m!6492354))

(assert (=> b!5476248 m!6492922))

(declare-fun m!6492924 () Bool)

(assert (=> b!5476248 m!6492924))

(declare-fun m!6492926 () Bool)

(assert (=> b!5476248 m!6492926))

(assert (=> b!5476248 m!6492924))

(assert (=> b!5476248 m!6492926))

(declare-fun m!6492928 () Bool)

(assert (=> b!5476248 m!6492928))

(assert (=> b!5475495 d!1739915))

(declare-fun bs!1265485 () Bool)

(declare-fun d!1739917 () Bool)

(assert (= bs!1265485 (and d!1739917 b!5475499)))

(declare-fun lambda!291926 () Int)

(assert (=> bs!1265485 (= lambda!291926 lambda!291847)))

(declare-fun bs!1265486 () Bool)

(assert (= bs!1265486 (and d!1739917 d!1739733)))

(assert (=> bs!1265486 (= lambda!291926 lambda!291856)))

(declare-fun bs!1265487 () Bool)

(assert (= bs!1265487 (and d!1739917 d!1739763)))

(assert (=> bs!1265487 (= lambda!291926 lambda!291872)))

(assert (=> d!1739917 true))

(assert (=> d!1739917 (= (derivationStepZipper!1550 lt!2237022 (h!68690 s!2326)) (flatMap!1058 lt!2237022 lambda!291926))))

(declare-fun bs!1265488 () Bool)

(assert (= bs!1265488 d!1739917))

(declare-fun m!6492930 () Bool)

(assert (=> bs!1265488 m!6492930))

(assert (=> b!5475495 d!1739917))

(declare-fun bs!1265489 () Bool)

(declare-fun d!1739919 () Bool)

(assert (= bs!1265489 (and d!1739919 d!1739721)))

(declare-fun lambda!291929 () Int)

(assert (=> bs!1265489 (= lambda!291929 lambda!291850)))

(declare-fun bs!1265490 () Bool)

(assert (= bs!1265490 (and d!1739919 d!1739723)))

(assert (=> bs!1265490 (= lambda!291929 lambda!291853)))

(declare-fun bs!1265491 () Bool)

(assert (= bs!1265491 (and d!1739919 d!1739741)))

(assert (=> bs!1265491 (= lambda!291929 lambda!291859)))

(declare-fun bs!1265492 () Bool)

(assert (= bs!1265492 (and d!1739919 d!1739909)))

(assert (=> bs!1265492 (= lambda!291929 lambda!291925)))

(declare-fun b!5476269 () Bool)

(declare-fun e!3389612 () Bool)

(declare-fun lt!2237137 () Regex!15355)

(declare-fun isConcat!561 (Regex!15355) Bool)

(assert (=> b!5476269 (= e!3389612 (isConcat!561 lt!2237137))))

(declare-fun b!5476270 () Bool)

(declare-fun e!3389610 () Regex!15355)

(declare-fun e!3389613 () Regex!15355)

(assert (=> b!5476270 (= e!3389610 e!3389613)))

(declare-fun c!956715 () Bool)

(assert (=> b!5476270 (= c!956715 ((_ is Cons!62240) (exprs!5239 (h!68689 zl!343))))))

(declare-fun b!5476271 () Bool)

(declare-fun e!3389609 () Bool)

(assert (=> b!5476271 (= e!3389609 e!3389612)))

(declare-fun c!956717 () Bool)

(assert (=> b!5476271 (= c!956717 (isEmpty!34193 (tail!10825 (exprs!5239 (h!68689 zl!343)))))))

(declare-fun b!5476272 () Bool)

(assert (=> b!5476272 (= e!3389613 EmptyExpr!15355)))

(declare-fun b!5476274 () Bool)

(declare-fun isEmptyExpr!1038 (Regex!15355) Bool)

(assert (=> b!5476274 (= e!3389609 (isEmptyExpr!1038 lt!2237137))))

(declare-fun b!5476275 () Bool)

(assert (=> b!5476275 (= e!3389613 (Concat!24200 (h!68688 (exprs!5239 (h!68689 zl!343))) (generalisedConcat!1024 (t!375593 (exprs!5239 (h!68689 zl!343))))))))

(declare-fun b!5476276 () Bool)

(declare-fun e!3389608 () Bool)

(assert (=> b!5476276 (= e!3389608 (isEmpty!34193 (t!375593 (exprs!5239 (h!68689 zl!343)))))))

(declare-fun b!5476277 () Bool)

(declare-fun e!3389611 () Bool)

(assert (=> b!5476277 (= e!3389611 e!3389609)))

(declare-fun c!956716 () Bool)

(assert (=> b!5476277 (= c!956716 (isEmpty!34193 (exprs!5239 (h!68689 zl!343))))))

(declare-fun b!5476278 () Bool)

(assert (=> b!5476278 (= e!3389610 (h!68688 (exprs!5239 (h!68689 zl!343))))))

(declare-fun b!5476273 () Bool)

(assert (=> b!5476273 (= e!3389612 (= lt!2237137 (head!11728 (exprs!5239 (h!68689 zl!343)))))))

(assert (=> d!1739919 e!3389611))

(declare-fun res!2334479 () Bool)

(assert (=> d!1739919 (=> (not res!2334479) (not e!3389611))))

(assert (=> d!1739919 (= res!2334479 (validRegex!7091 lt!2237137))))

(assert (=> d!1739919 (= lt!2237137 e!3389610)))

(declare-fun c!956714 () Bool)

(assert (=> d!1739919 (= c!956714 e!3389608)))

(declare-fun res!2334480 () Bool)

(assert (=> d!1739919 (=> (not res!2334480) (not e!3389608))))

(assert (=> d!1739919 (= res!2334480 ((_ is Cons!62240) (exprs!5239 (h!68689 zl!343))))))

(assert (=> d!1739919 (forall!14612 (exprs!5239 (h!68689 zl!343)) lambda!291929)))

(assert (=> d!1739919 (= (generalisedConcat!1024 (exprs!5239 (h!68689 zl!343))) lt!2237137)))

(assert (= (and d!1739919 res!2334480) b!5476276))

(assert (= (and d!1739919 c!956714) b!5476278))

(assert (= (and d!1739919 (not c!956714)) b!5476270))

(assert (= (and b!5476270 c!956715) b!5476275))

(assert (= (and b!5476270 (not c!956715)) b!5476272))

(assert (= (and d!1739919 res!2334479) b!5476277))

(assert (= (and b!5476277 c!956716) b!5476274))

(assert (= (and b!5476277 (not c!956716)) b!5476271))

(assert (= (and b!5476271 c!956717) b!5476273))

(assert (= (and b!5476271 (not c!956717)) b!5476269))

(declare-fun m!6492932 () Bool)

(assert (=> d!1739919 m!6492932))

(declare-fun m!6492934 () Bool)

(assert (=> d!1739919 m!6492934))

(declare-fun m!6492936 () Bool)

(assert (=> b!5476276 m!6492936))

(declare-fun m!6492938 () Bool)

(assert (=> b!5476269 m!6492938))

(declare-fun m!6492940 () Bool)

(assert (=> b!5476274 m!6492940))

(declare-fun m!6492942 () Bool)

(assert (=> b!5476275 m!6492942))

(declare-fun m!6492944 () Bool)

(assert (=> b!5476277 m!6492944))

(declare-fun m!6492946 () Bool)

(assert (=> b!5476273 m!6492946))

(declare-fun m!6492948 () Bool)

(assert (=> b!5476271 m!6492948))

(assert (=> b!5476271 m!6492948))

(declare-fun m!6492950 () Bool)

(assert (=> b!5476271 m!6492950))

(assert (=> b!5475484 d!1739919))

(declare-fun b!5476289 () Bool)

(declare-fun e!3389616 () Bool)

(assert (=> b!5476289 (= e!3389616 tp_is_empty!39963)))

(declare-fun b!5476292 () Bool)

(declare-fun tp!1505270 () Bool)

(declare-fun tp!1505273 () Bool)

(assert (=> b!5476292 (= e!3389616 (and tp!1505270 tp!1505273))))

(assert (=> b!5475498 (= tp!1505201 e!3389616)))

(declare-fun b!5476290 () Bool)

(declare-fun tp!1505271 () Bool)

(declare-fun tp!1505274 () Bool)

(assert (=> b!5476290 (= e!3389616 (and tp!1505271 tp!1505274))))

(declare-fun b!5476291 () Bool)

(declare-fun tp!1505272 () Bool)

(assert (=> b!5476291 (= e!3389616 tp!1505272)))

(assert (= (and b!5475498 ((_ is ElementMatch!15355) (regOne!31222 r!7292))) b!5476289))

(assert (= (and b!5475498 ((_ is Concat!24200) (regOne!31222 r!7292))) b!5476290))

(assert (= (and b!5475498 ((_ is Star!15355) (regOne!31222 r!7292))) b!5476291))

(assert (= (and b!5475498 ((_ is Union!15355) (regOne!31222 r!7292))) b!5476292))

(declare-fun b!5476293 () Bool)

(declare-fun e!3389617 () Bool)

(assert (=> b!5476293 (= e!3389617 tp_is_empty!39963)))

(declare-fun b!5476296 () Bool)

(declare-fun tp!1505275 () Bool)

(declare-fun tp!1505278 () Bool)

(assert (=> b!5476296 (= e!3389617 (and tp!1505275 tp!1505278))))

(assert (=> b!5475498 (= tp!1505197 e!3389617)))

(declare-fun b!5476294 () Bool)

(declare-fun tp!1505276 () Bool)

(declare-fun tp!1505279 () Bool)

(assert (=> b!5476294 (= e!3389617 (and tp!1505276 tp!1505279))))

(declare-fun b!5476295 () Bool)

(declare-fun tp!1505277 () Bool)

(assert (=> b!5476295 (= e!3389617 tp!1505277)))

(assert (= (and b!5475498 ((_ is ElementMatch!15355) (regTwo!31222 r!7292))) b!5476293))

(assert (= (and b!5475498 ((_ is Concat!24200) (regTwo!31222 r!7292))) b!5476294))

(assert (= (and b!5475498 ((_ is Star!15355) (regTwo!31222 r!7292))) b!5476295))

(assert (= (and b!5475498 ((_ is Union!15355) (regTwo!31222 r!7292))) b!5476296))

(declare-fun condSetEmpty!35983 () Bool)

(assert (=> setNonEmpty!35977 (= condSetEmpty!35983 (= setRest!35977 ((as const (Array Context!9478 Bool)) false)))))

(declare-fun setRes!35983 () Bool)

(assert (=> setNonEmpty!35977 (= tp!1505193 setRes!35983)))

(declare-fun setIsEmpty!35983 () Bool)

(assert (=> setIsEmpty!35983 setRes!35983))

(declare-fun setNonEmpty!35983 () Bool)

(declare-fun tp!1505285 () Bool)

(declare-fun setElem!35983 () Context!9478)

(declare-fun e!3389620 () Bool)

(assert (=> setNonEmpty!35983 (= setRes!35983 (and tp!1505285 (inv!81634 setElem!35983) e!3389620))))

(declare-fun setRest!35983 () (InoxSet Context!9478))

(assert (=> setNonEmpty!35983 (= setRest!35977 ((_ map or) (store ((as const (Array Context!9478 Bool)) false) setElem!35983 true) setRest!35983))))

(declare-fun b!5476301 () Bool)

(declare-fun tp!1505284 () Bool)

(assert (=> b!5476301 (= e!3389620 tp!1505284)))

(assert (= (and setNonEmpty!35977 condSetEmpty!35983) setIsEmpty!35983))

(assert (= (and setNonEmpty!35977 (not condSetEmpty!35983)) setNonEmpty!35983))

(assert (= setNonEmpty!35983 b!5476301))

(declare-fun m!6492952 () Bool)

(assert (=> setNonEmpty!35983 m!6492952))

(declare-fun b!5476306 () Bool)

(declare-fun e!3389623 () Bool)

(declare-fun tp!1505290 () Bool)

(declare-fun tp!1505291 () Bool)

(assert (=> b!5476306 (= e!3389623 (and tp!1505290 tp!1505291))))

(assert (=> b!5475497 (= tp!1505192 e!3389623)))

(assert (= (and b!5475497 ((_ is Cons!62240) (exprs!5239 (h!68689 zl!343)))) b!5476306))

(declare-fun b!5476314 () Bool)

(declare-fun e!3389629 () Bool)

(declare-fun tp!1505296 () Bool)

(assert (=> b!5476314 (= e!3389629 tp!1505296)))

(declare-fun b!5476313 () Bool)

(declare-fun tp!1505297 () Bool)

(declare-fun e!3389628 () Bool)

(assert (=> b!5476313 (= e!3389628 (and (inv!81634 (h!68689 (t!375594 zl!343))) e!3389629 tp!1505297))))

(assert (=> b!5475506 (= tp!1505195 e!3389628)))

(assert (= b!5476313 b!5476314))

(assert (= (and b!5475506 ((_ is Cons!62241) (t!375594 zl!343))) b!5476313))

(declare-fun m!6492954 () Bool)

(assert (=> b!5476313 m!6492954))

(declare-fun b!5476319 () Bool)

(declare-fun e!3389632 () Bool)

(declare-fun tp!1505300 () Bool)

(assert (=> b!5476319 (= e!3389632 (and tp_is_empty!39963 tp!1505300))))

(assert (=> b!5475491 (= tp!1505199 e!3389632)))

(assert (= (and b!5475491 ((_ is Cons!62242) (t!375595 s!2326))) b!5476319))

(declare-fun b!5476320 () Bool)

(declare-fun e!3389633 () Bool)

(assert (=> b!5476320 (= e!3389633 tp_is_empty!39963)))

(declare-fun b!5476323 () Bool)

(declare-fun tp!1505301 () Bool)

(declare-fun tp!1505304 () Bool)

(assert (=> b!5476323 (= e!3389633 (and tp!1505301 tp!1505304))))

(assert (=> b!5475496 (= tp!1505198 e!3389633)))

(declare-fun b!5476321 () Bool)

(declare-fun tp!1505302 () Bool)

(declare-fun tp!1505305 () Bool)

(assert (=> b!5476321 (= e!3389633 (and tp!1505302 tp!1505305))))

(declare-fun b!5476322 () Bool)

(declare-fun tp!1505303 () Bool)

(assert (=> b!5476322 (= e!3389633 tp!1505303)))

(assert (= (and b!5475496 ((_ is ElementMatch!15355) (reg!15684 r!7292))) b!5476320))

(assert (= (and b!5475496 ((_ is Concat!24200) (reg!15684 r!7292))) b!5476321))

(assert (= (and b!5475496 ((_ is Star!15355) (reg!15684 r!7292))) b!5476322))

(assert (= (and b!5475496 ((_ is Union!15355) (reg!15684 r!7292))) b!5476323))

(declare-fun b!5476324 () Bool)

(declare-fun e!3389634 () Bool)

(assert (=> b!5476324 (= e!3389634 tp_is_empty!39963)))

(declare-fun b!5476327 () Bool)

(declare-fun tp!1505306 () Bool)

(declare-fun tp!1505309 () Bool)

(assert (=> b!5476327 (= e!3389634 (and tp!1505306 tp!1505309))))

(assert (=> b!5475505 (= tp!1505196 e!3389634)))

(declare-fun b!5476325 () Bool)

(declare-fun tp!1505307 () Bool)

(declare-fun tp!1505310 () Bool)

(assert (=> b!5476325 (= e!3389634 (and tp!1505307 tp!1505310))))

(declare-fun b!5476326 () Bool)

(declare-fun tp!1505308 () Bool)

(assert (=> b!5476326 (= e!3389634 tp!1505308)))

(assert (= (and b!5475505 ((_ is ElementMatch!15355) (regOne!31223 r!7292))) b!5476324))

(assert (= (and b!5475505 ((_ is Concat!24200) (regOne!31223 r!7292))) b!5476325))

(assert (= (and b!5475505 ((_ is Star!15355) (regOne!31223 r!7292))) b!5476326))

(assert (= (and b!5475505 ((_ is Union!15355) (regOne!31223 r!7292))) b!5476327))

(declare-fun b!5476328 () Bool)

(declare-fun e!3389635 () Bool)

(assert (=> b!5476328 (= e!3389635 tp_is_empty!39963)))

(declare-fun b!5476331 () Bool)

(declare-fun tp!1505311 () Bool)

(declare-fun tp!1505314 () Bool)

(assert (=> b!5476331 (= e!3389635 (and tp!1505311 tp!1505314))))

(assert (=> b!5475505 (= tp!1505194 e!3389635)))

(declare-fun b!5476329 () Bool)

(declare-fun tp!1505312 () Bool)

(declare-fun tp!1505315 () Bool)

(assert (=> b!5476329 (= e!3389635 (and tp!1505312 tp!1505315))))

(declare-fun b!5476330 () Bool)

(declare-fun tp!1505313 () Bool)

(assert (=> b!5476330 (= e!3389635 tp!1505313)))

(assert (= (and b!5475505 ((_ is ElementMatch!15355) (regTwo!31223 r!7292))) b!5476328))

(assert (= (and b!5475505 ((_ is Concat!24200) (regTwo!31223 r!7292))) b!5476329))

(assert (= (and b!5475505 ((_ is Star!15355) (regTwo!31223 r!7292))) b!5476330))

(assert (= (and b!5475505 ((_ is Union!15355) (regTwo!31223 r!7292))) b!5476331))

(declare-fun b!5476332 () Bool)

(declare-fun e!3389636 () Bool)

(declare-fun tp!1505316 () Bool)

(declare-fun tp!1505317 () Bool)

(assert (=> b!5476332 (= e!3389636 (and tp!1505316 tp!1505317))))

(assert (=> b!5475490 (= tp!1505200 e!3389636)))

(assert (= (and b!5475490 ((_ is Cons!62240) (exprs!5239 setElem!35977))) b!5476332))

(declare-fun b_lambda!208067 () Bool)

(assert (= b_lambda!208043 (or b!5475499 b_lambda!208067)))

(declare-fun bs!1265493 () Bool)

(declare-fun d!1739921 () Bool)

(assert (= bs!1265493 (and d!1739921 b!5475499)))

(assert (=> bs!1265493 (= (dynLambda!24428 lambda!291847 lt!2237028) (derivationStepZipperUp!707 lt!2237028 (h!68690 s!2326)))))

(assert (=> bs!1265493 m!6492340))

(assert (=> d!1739729 d!1739921))

(declare-fun b_lambda!208069 () Bool)

(assert (= b_lambda!208055 (or b!5475499 b_lambda!208069)))

(declare-fun bs!1265494 () Bool)

(declare-fun d!1739923 () Bool)

(assert (= bs!1265494 (and d!1739923 b!5475499)))

(assert (=> bs!1265494 (= (dynLambda!24428 lambda!291847 lt!2237023) (derivationStepZipperUp!707 lt!2237023 (h!68690 s!2326)))))

(assert (=> bs!1265494 m!6492402))

(assert (=> d!1739865 d!1739923))

(declare-fun b_lambda!208071 () Bool)

(assert (= b_lambda!208045 (or b!5475499 b_lambda!208071)))

(declare-fun bs!1265495 () Bool)

(declare-fun d!1739925 () Bool)

(assert (= bs!1265495 (and d!1739925 b!5475499)))

(assert (=> bs!1265495 (= (dynLambda!24428 lambda!291847 lt!2237017) (derivationStepZipperUp!707 lt!2237017 (h!68690 s!2326)))))

(assert (=> bs!1265495 m!6492348))

(assert (=> d!1739739 d!1739925))

(declare-fun b_lambda!208073 () Bool)

(assert (= b_lambda!208053 (or b!5475499 b_lambda!208073)))

(declare-fun bs!1265496 () Bool)

(declare-fun d!1739927 () Bool)

(assert (= bs!1265496 (and d!1739927 b!5475499)))

(assert (=> bs!1265496 (= (dynLambda!24428 lambda!291847 (h!68689 zl!343)) (derivationStepZipperUp!707 (h!68689 zl!343) (h!68690 s!2326)))))

(assert (=> bs!1265496 m!6492416))

(assert (=> d!1739847 d!1739927))

(check-sat (not b!5476331) (not bm!403999) (not bm!403982) tp_is_empty!39963 (not b!5476061) (not b!5476229) (not bm!404007) (not b!5475574) (not d!1739731) (not d!1739919) (not b!5475569) (not b!5476233) (not bm!403966) (not d!1739917) (not b!5476276) (not b!5476327) (not b!5476030) (not b!5475708) (not b!5476269) (not d!1739879) (not d!1739743) (not d!1739913) (not b!5475539) (not bm!403944) (not d!1739843) (not b!5475785) (not bm!403993) (not b!5476041) (not d!1739857) (not b!5476332) (not b!5476321) (not d!1739725) (not b!5476023) (not d!1739721) (not b!5476228) (not b!5476247) (not bm!403994) (not b_lambda!208069) (not b!5476277) (not b!5476067) (not d!1739739) (not d!1739763) (not d!1739861) (not bm!403907) (not d!1739911) (not d!1739865) (not bs!1265494) (not b!5476090) (not b!5476326) (not bm!404003) (not bm!403997) (not b!5476039) (not b!5475548) (not b!5476021) (not bm!404000) (not b!5475543) (not b!5476068) (not d!1739909) (not b!5476064) (not b!5475546) (not b!5476295) (not d!1739871) (not b!5476236) (not d!1739831) (not b!5476246) (not b!5476330) (not bm!403964) (not b!5475576) (not b!5476291) (not b!5476245) (not setNonEmpty!35983) (not bs!1265496) (not b!5476296) (not b!5476019) (not bm!404002) (not b!5476062) (not b_lambda!208071) (not b!5476323) (not b!5476314) (not b!5476066) (not b_lambda!208067) (not d!1739733) (not bm!403943) (not b!5476048) (not b!5476018) (not bm!403946) (not b!5476306) (not b!5475547) (not b!5476274) (not d!1739853) (not b!5476273) (not b!5475917) (not b!5476290) (not b!5476294) (not d!1739741) (not b!5475733) (not d!1739801) (not bm!404005) (not b!5476271) (not bm!403983) (not b!5476230) (not b!5475540) (not d!1739875) (not b!5476248) (not b!5476322) (not d!1739855) (not bs!1265495) (not b!5476024) (not b!5476325) (not d!1739905) (not b!5475567) (not bm!403948) (not b!5476085) (not b!5476319) (not b!5476301) (not b!5475541) (not b!5476292) (not d!1739849) (not d!1739881) (not d!1739867) (not d!1739723) (not d!1739891) (not d!1739729) (not bm!403908) (not d!1739869) (not b!5476037) (not b!5475553) (not b!5475601) (not b!5476313) (not b_lambda!208073) (not b!5476088) (not d!1739915) (not b!5476025) (not b!5476235) (not d!1739771) (not b!5475924) (not b!5476275) (not b!5476329) (not b!5475731) (not d!1739847) (not bm!403996) (not bs!1265493) (not bm!403998))
(check-sat)
