; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!562980 () Bool)

(assert start!562980)

(declare-fun b!5344827 () Bool)

(assert (=> b!5344827 true))

(assert (=> b!5344827 true))

(declare-fun lambda!274305 () Int)

(declare-fun lambda!274304 () Int)

(assert (=> b!5344827 (not (= lambda!274305 lambda!274304))))

(assert (=> b!5344827 true))

(assert (=> b!5344827 true))

(declare-fun b!5344797 () Bool)

(assert (=> b!5344797 true))

(declare-fun bs!1239241 () Bool)

(declare-fun b!5344806 () Bool)

(assert (= bs!1239241 (and b!5344806 b!5344827)))

(declare-datatypes ((C!30326 0))(
  ( (C!30327 (val!24865 Int)) )
))
(declare-datatypes ((Regex!15028 0))(
  ( (ElementMatch!15028 (c!930152 C!30326)) (Concat!23873 (regOne!30568 Regex!15028) (regTwo!30568 Regex!15028)) (EmptyExpr!15028) (Star!15028 (reg!15357 Regex!15028)) (EmptyLang!15028) (Union!15028 (regOne!30569 Regex!15028) (regTwo!30569 Regex!15028)) )
))
(declare-fun r!7292 () Regex!15028)

(declare-fun lambda!274307 () Int)

(declare-fun lt!2179224 () Regex!15028)

(assert (=> bs!1239241 (= (and (= (regOne!30568 (regOne!30568 r!7292)) (regOne!30568 r!7292)) (= lt!2179224 (regTwo!30568 r!7292))) (= lambda!274307 lambda!274304))))

(assert (=> bs!1239241 (not (= lambda!274307 lambda!274305))))

(assert (=> b!5344806 true))

(assert (=> b!5344806 true))

(assert (=> b!5344806 true))

(declare-fun lambda!274308 () Int)

(assert (=> bs!1239241 (not (= lambda!274308 lambda!274304))))

(assert (=> bs!1239241 (= (and (= (regOne!30568 (regOne!30568 r!7292)) (regOne!30568 r!7292)) (= lt!2179224 (regTwo!30568 r!7292))) (= lambda!274308 lambda!274305))))

(assert (=> b!5344806 (not (= lambda!274308 lambda!274307))))

(assert (=> b!5344806 true))

(assert (=> b!5344806 true))

(assert (=> b!5344806 true))

(declare-fun lt!2179221 () Regex!15028)

(declare-fun lambda!274309 () Int)

(assert (=> bs!1239241 (= (and (= (regTwo!30568 (regOne!30568 r!7292)) (regOne!30568 r!7292)) (= lt!2179221 (regTwo!30568 r!7292))) (= lambda!274309 lambda!274304))))

(assert (=> bs!1239241 (not (= lambda!274309 lambda!274305))))

(assert (=> b!5344806 (= (and (= (regTwo!30568 (regOne!30568 r!7292)) (regOne!30568 (regOne!30568 r!7292))) (= lt!2179221 lt!2179224)) (= lambda!274309 lambda!274307))))

(assert (=> b!5344806 (not (= lambda!274309 lambda!274308))))

(assert (=> b!5344806 true))

(assert (=> b!5344806 true))

(assert (=> b!5344806 true))

(declare-fun lambda!274310 () Int)

(assert (=> bs!1239241 (not (= lambda!274310 lambda!274304))))

(assert (=> b!5344806 (not (= lambda!274310 lambda!274307))))

(assert (=> b!5344806 (= (and (= (regTwo!30568 (regOne!30568 r!7292)) (regOne!30568 (regOne!30568 r!7292))) (= lt!2179221 lt!2179224)) (= lambda!274310 lambda!274308))))

(assert (=> bs!1239241 (= (and (= (regTwo!30568 (regOne!30568 r!7292)) (regOne!30568 r!7292)) (= lt!2179221 (regTwo!30568 r!7292))) (= lambda!274310 lambda!274305))))

(assert (=> b!5344806 (not (= lambda!274310 lambda!274309))))

(assert (=> b!5344806 true))

(assert (=> b!5344806 true))

(assert (=> b!5344806 true))

(declare-fun b!5344790 () Bool)

(declare-fun res!2267554 () Bool)

(declare-fun e!3318467 () Bool)

(assert (=> b!5344790 (=> res!2267554 e!3318467)))

(declare-datatypes ((List!61383 0))(
  ( (Nil!61259) (Cons!61259 (h!67707 Regex!15028) (t!374600 List!61383)) )
))
(declare-datatypes ((Context!8824 0))(
  ( (Context!8825 (exprs!4912 List!61383)) )
))
(declare-datatypes ((List!61384 0))(
  ( (Nil!61260) (Cons!61260 (h!67708 Context!8824) (t!374601 List!61384)) )
))
(declare-fun zl!343 () List!61384)

(declare-fun isEmpty!33233 (List!61383) Bool)

(assert (=> b!5344790 (= res!2267554 (isEmpty!33233 (t!374600 (exprs!4912 (h!67708 zl!343)))))))

(declare-fun b!5344791 () Bool)

(declare-fun e!3318468 () Bool)

(declare-fun nullable!5197 (Regex!15028) Bool)

(assert (=> b!5344791 (= e!3318468 (nullable!5197 (regOne!30568 (regOne!30568 r!7292))))))

(declare-fun b!5344792 () Bool)

(declare-fun res!2267550 () Bool)

(declare-fun e!3318462 () Bool)

(assert (=> b!5344792 (=> res!2267550 e!3318462)))

(declare-fun lt!2179247 () List!61384)

(declare-fun zipperDepth!137 (List!61384) Int)

(assert (=> b!5344792 (= res!2267550 (> (zipperDepth!137 lt!2179247) (zipperDepth!137 zl!343)))))

(declare-fun b!5344793 () Bool)

(declare-fun res!2267553 () Bool)

(declare-fun e!3318459 () Bool)

(assert (=> b!5344793 (=> res!2267553 e!3318459)))

(assert (=> b!5344793 (= res!2267553 e!3318468)))

(declare-fun res!2267557 () Bool)

(assert (=> b!5344793 (=> (not res!2267557) (not e!3318468))))

(assert (=> b!5344793 (= res!2267557 (is-Concat!23873 (regOne!30568 r!7292)))))

(declare-fun b!5344794 () Bool)

(declare-fun e!3318474 () Bool)

(declare-fun lambda!274311 () Int)

(declare-fun forall!14450 (List!61383 Int) Bool)

(assert (=> b!5344794 (= e!3318474 (forall!14450 (t!374600 (exprs!4912 (h!67708 zl!343))) lambda!274311))))

(declare-fun b!5344795 () Bool)

(declare-fun e!3318464 () Bool)

(declare-fun e!3318472 () Bool)

(declare-fun tp!1485603 () Bool)

(declare-fun inv!80818 (Context!8824) Bool)

(assert (=> b!5344795 (= e!3318464 (and (inv!80818 (h!67708 zl!343)) e!3318472 tp!1485603))))

(declare-fun b!5344796 () Bool)

(declare-fun e!3318470 () Bool)

(declare-fun tp_is_empty!39309 () Bool)

(declare-fun tp!1485600 () Bool)

(assert (=> b!5344796 (= e!3318470 (and tp_is_empty!39309 tp!1485600))))

(declare-fun setIsEmpty!34510 () Bool)

(declare-fun setRes!34510 () Bool)

(assert (=> setIsEmpty!34510 setRes!34510))

(assert (=> b!5344797 (= e!3318467 e!3318459)))

(declare-fun res!2267546 () Bool)

(assert (=> b!5344797 (=> res!2267546 e!3318459)))

(declare-datatypes ((List!61385 0))(
  ( (Nil!61261) (Cons!61261 (h!67709 C!30326) (t!374602 List!61385)) )
))
(declare-fun s!2326 () List!61385)

(assert (=> b!5344797 (= res!2267546 (or (and (is-ElementMatch!15028 (regOne!30568 r!7292)) (= (c!930152 (regOne!30568 r!7292)) (h!67709 s!2326))) (is-Union!15028 (regOne!30568 r!7292))))))

(declare-datatypes ((Unit!153630 0))(
  ( (Unit!153631) )
))
(declare-fun lt!2179234 () Unit!153630)

(declare-fun e!3318469 () Unit!153630)

(assert (=> b!5344797 (= lt!2179234 e!3318469)))

(declare-fun c!930151 () Bool)

(assert (=> b!5344797 (= c!930151 (nullable!5197 (h!67707 (exprs!4912 (h!67708 zl!343)))))))

(declare-fun lambda!274306 () Int)

(declare-fun z!1189 () (Set Context!8824))

(declare-fun flatMap!755 ((Set Context!8824) Int) (Set Context!8824))

(declare-fun derivationStepZipperUp!400 (Context!8824 C!30326) (Set Context!8824))

(assert (=> b!5344797 (= (flatMap!755 z!1189 lambda!274306) (derivationStepZipperUp!400 (h!67708 zl!343) (h!67709 s!2326)))))

(declare-fun lt!2179256 () Unit!153630)

(declare-fun lemmaFlatMapOnSingletonSet!287 ((Set Context!8824) Context!8824 Int) Unit!153630)

(assert (=> b!5344797 (= lt!2179256 (lemmaFlatMapOnSingletonSet!287 z!1189 (h!67708 zl!343) lambda!274306))))

(declare-fun lt!2179226 () (Set Context!8824))

(declare-fun lt!2179230 () Context!8824)

(assert (=> b!5344797 (= lt!2179226 (derivationStepZipperUp!400 lt!2179230 (h!67709 s!2326)))))

(declare-fun lt!2179236 () (Set Context!8824))

(declare-fun derivationStepZipperDown!476 (Regex!15028 Context!8824 C!30326) (Set Context!8824))

(assert (=> b!5344797 (= lt!2179236 (derivationStepZipperDown!476 (h!67707 (exprs!4912 (h!67708 zl!343))) lt!2179230 (h!67709 s!2326)))))

(assert (=> b!5344797 (= lt!2179230 (Context!8825 (t!374600 (exprs!4912 (h!67708 zl!343)))))))

(declare-fun lt!2179248 () (Set Context!8824))

(assert (=> b!5344797 (= lt!2179248 (derivationStepZipperUp!400 (Context!8825 (Cons!61259 (h!67707 (exprs!4912 (h!67708 zl!343))) (t!374600 (exprs!4912 (h!67708 zl!343))))) (h!67709 s!2326)))))

(declare-fun b!5344798 () Bool)

(declare-fun res!2267543 () Bool)

(declare-fun e!3318463 () Bool)

(assert (=> b!5344798 (=> res!2267543 e!3318463)))

(declare-fun lt!2179233 () Context!8824)

(declare-fun contextDepthTotal!161 (Context!8824) Int)

(assert (=> b!5344798 (= res!2267543 (>= (contextDepthTotal!161 lt!2179233) (contextDepthTotal!161 (h!67708 zl!343))))))

(declare-fun b!5344799 () Bool)

(declare-fun e!3318460 () Bool)

(assert (=> b!5344799 (= e!3318460 tp_is_empty!39309)))

(declare-fun b!5344800 () Bool)

(declare-fun Unit!153632 () Unit!153630)

(assert (=> b!5344800 (= e!3318469 Unit!153632)))

(declare-fun lt!2179246 () Unit!153630)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!265 ((Set Context!8824) (Set Context!8824) List!61385) Unit!153630)

(assert (=> b!5344800 (= lt!2179246 (lemmaZipperConcatMatchesSameAsBothZippers!265 lt!2179236 lt!2179226 (t!374602 s!2326)))))

(declare-fun res!2267549 () Bool)

(declare-fun matchZipper!1272 ((Set Context!8824) List!61385) Bool)

(assert (=> b!5344800 (= res!2267549 (matchZipper!1272 lt!2179236 (t!374602 s!2326)))))

(declare-fun e!3318473 () Bool)

(assert (=> b!5344800 (=> res!2267549 e!3318473)))

(assert (=> b!5344800 (= (matchZipper!1272 (set.union lt!2179236 lt!2179226) (t!374602 s!2326)) e!3318473)))

(declare-fun b!5344801 () Bool)

(declare-fun e!3318457 () Bool)

(declare-fun e!3318461 () Bool)

(assert (=> b!5344801 (= e!3318457 e!3318461)))

(declare-fun res!2267561 () Bool)

(assert (=> b!5344801 (=> res!2267561 e!3318461)))

(declare-fun lt!2179227 () (Set Context!8824))

(declare-fun lt!2179235 () (Set Context!8824))

(assert (=> b!5344801 (= res!2267561 (not (= lt!2179227 lt!2179235)))))

(declare-fun lt!2179250 () (Set Context!8824))

(assert (=> b!5344801 (= (flatMap!755 lt!2179250 lambda!274306) (derivationStepZipperUp!400 lt!2179233 (h!67709 s!2326)))))

(declare-fun lt!2179222 () Unit!153630)

(assert (=> b!5344801 (= lt!2179222 (lemmaFlatMapOnSingletonSet!287 lt!2179250 lt!2179233 lambda!274306))))

(declare-fun lt!2179249 () (Set Context!8824))

(assert (=> b!5344801 (= lt!2179249 (derivationStepZipperUp!400 lt!2179233 (h!67709 s!2326)))))

(declare-fun derivationStepZipper!1269 ((Set Context!8824) C!30326) (Set Context!8824))

(assert (=> b!5344801 (= lt!2179227 (derivationStepZipper!1269 lt!2179250 (h!67709 s!2326)))))

(assert (=> b!5344801 (= lt!2179250 (set.insert lt!2179233 (as set.empty (Set Context!8824))))))

(declare-fun lt!2179232 () List!61383)

(assert (=> b!5344801 (= lt!2179233 (Context!8825 lt!2179232))))

(declare-fun lt!2179245 () List!61383)

(assert (=> b!5344801 (= lt!2179232 (Cons!61259 (regOne!30568 (regOne!30568 r!7292)) lt!2179245))))

(declare-fun b!5344802 () Bool)

(declare-fun res!2267555 () Bool)

(assert (=> b!5344802 (=> res!2267555 e!3318474)))

(declare-fun lt!2179251 () Bool)

(declare-fun matchR!7213 (Regex!15028 List!61385) Bool)

(assert (=> b!5344802 (= res!2267555 (not (= lt!2179251 (matchR!7213 (Concat!23873 (regOne!30568 r!7292) (regTwo!30568 r!7292)) s!2326))))))

(declare-fun b!5344803 () Bool)

(declare-fun res!2267539 () Bool)

(declare-fun e!3318458 () Bool)

(assert (=> b!5344803 (=> res!2267539 e!3318458)))

(assert (=> b!5344803 (= res!2267539 (or (is-EmptyExpr!15028 r!7292) (is-EmptyLang!15028 r!7292) (is-ElementMatch!15028 r!7292) (is-Union!15028 r!7292) (not (is-Concat!23873 r!7292))))))

(declare-fun b!5344804 () Bool)

(declare-fun e!3318466 () Bool)

(assert (=> b!5344804 (= e!3318466 e!3318457)))

(declare-fun res!2267547 () Bool)

(assert (=> b!5344804 (=> res!2267547 e!3318457)))

(declare-fun lt!2179244 () Bool)

(assert (=> b!5344804 (= res!2267547 (not (= lt!2179244 (matchZipper!1272 lt!2179235 (t!374602 s!2326)))))))

(assert (=> b!5344804 (= lt!2179244 (matchZipper!1272 lt!2179236 (t!374602 s!2326)))))

(declare-fun setElem!34510 () Context!8824)

(declare-fun e!3318471 () Bool)

(declare-fun tp!1485606 () Bool)

(declare-fun setNonEmpty!34510 () Bool)

(assert (=> setNonEmpty!34510 (= setRes!34510 (and tp!1485606 (inv!80818 setElem!34510) e!3318471))))

(declare-fun setRest!34510 () (Set Context!8824))

(assert (=> setNonEmpty!34510 (= z!1189 (set.union (set.insert setElem!34510 (as set.empty (Set Context!8824))) setRest!34510))))

(declare-fun b!5344805 () Bool)

(declare-fun res!2267534 () Bool)

(declare-fun e!3318465 () Bool)

(assert (=> b!5344805 (=> (not res!2267534) (not e!3318465))))

(declare-fun unfocusZipper!770 (List!61384) Regex!15028)

(assert (=> b!5344805 (= res!2267534 (= r!7292 (unfocusZipper!770 zl!343)))))

(assert (=> b!5344806 (= e!3318462 e!3318474)))

(declare-fun res!2267538 () Bool)

(assert (=> b!5344806 (=> res!2267538 e!3318474)))

(declare-fun lt!2179242 () Bool)

(declare-fun lt!2179225 () Bool)

(declare-fun lt!2179240 () Bool)

(assert (=> b!5344806 (= res!2267538 (or (not (= lt!2179240 lt!2179242)) (not (= lt!2179240 lt!2179225))))))

(assert (=> b!5344806 (= lt!2179240 (matchZipper!1272 z!1189 s!2326))))

(declare-fun Exists!2209 (Int) Bool)

(assert (=> b!5344806 (= (Exists!2209 lambda!274309) (Exists!2209 lambda!274310))))

(declare-fun lt!2179252 () Unit!153630)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!863 (Regex!15028 Regex!15028 List!61385) Unit!153630)

(assert (=> b!5344806 (= lt!2179252 (lemmaExistCutMatchRandMatchRSpecEquivalent!863 (regTwo!30568 (regOne!30568 r!7292)) lt!2179221 s!2326))))

(declare-datatypes ((tuple2!64454 0))(
  ( (tuple2!64455 (_1!35530 List!61385) (_2!35530 List!61385)) )
))
(declare-datatypes ((Option!15139 0))(
  ( (None!15138) (Some!15138 (v!51167 tuple2!64454)) )
))
(declare-fun isDefined!11842 (Option!15139) Bool)

(declare-fun findConcatSeparation!1553 (Regex!15028 Regex!15028 List!61385 List!61385 List!61385) Option!15139)

(assert (=> b!5344806 (= (isDefined!11842 (findConcatSeparation!1553 (regTwo!30568 (regOne!30568 r!7292)) lt!2179221 Nil!61261 s!2326 s!2326)) (Exists!2209 lambda!274309))))

(declare-fun lt!2179231 () Unit!153630)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1317 (Regex!15028 Regex!15028 List!61385) Unit!153630)

(assert (=> b!5344806 (= lt!2179231 (lemmaFindConcatSeparationEquivalentToExists!1317 (regTwo!30568 (regOne!30568 r!7292)) lt!2179221 s!2326))))

(declare-fun generalisedConcat!697 (List!61383) Regex!15028)

(assert (=> b!5344806 (= lt!2179221 (generalisedConcat!697 (t!374600 (exprs!4912 (h!67708 zl!343)))))))

(declare-fun matchRSpec!2131 (Regex!15028 List!61385) Bool)

(assert (=> b!5344806 (= (matchR!7213 lt!2179224 s!2326) (matchRSpec!2131 lt!2179224 s!2326))))

(declare-fun lt!2179241 () Unit!153630)

(declare-fun mainMatchTheorem!2131 (Regex!15028 List!61385) Unit!153630)

(assert (=> b!5344806 (= lt!2179241 (mainMatchTheorem!2131 lt!2179224 s!2326))))

(assert (=> b!5344806 (= (Exists!2209 lambda!274307) (Exists!2209 lambda!274308))))

(declare-fun lt!2179228 () Unit!153630)

(assert (=> b!5344806 (= lt!2179228 (lemmaExistCutMatchRandMatchRSpecEquivalent!863 (regOne!30568 (regOne!30568 r!7292)) lt!2179224 s!2326))))

(assert (=> b!5344806 (= (isDefined!11842 (findConcatSeparation!1553 (regOne!30568 (regOne!30568 r!7292)) lt!2179224 Nil!61261 s!2326 s!2326)) (Exists!2209 lambda!274307))))

(declare-fun lt!2179255 () Unit!153630)

(assert (=> b!5344806 (= lt!2179255 (lemmaFindConcatSeparationEquivalentToExists!1317 (regOne!30568 (regOne!30568 r!7292)) lt!2179224 s!2326))))

(assert (=> b!5344806 (= lt!2179224 (generalisedConcat!697 lt!2179245))))

(declare-fun lt!2179229 () Regex!15028)

(assert (=> b!5344806 (= lt!2179225 (matchRSpec!2131 lt!2179229 s!2326))))

(declare-fun lt!2179243 () Unit!153630)

(assert (=> b!5344806 (= lt!2179243 (mainMatchTheorem!2131 lt!2179229 s!2326))))

(assert (=> b!5344806 (= lt!2179225 lt!2179242)))

(assert (=> b!5344806 (= lt!2179242 (matchZipper!1272 lt!2179250 s!2326))))

(assert (=> b!5344806 (= lt!2179225 (matchR!7213 lt!2179229 s!2326))))

(declare-fun lt!2179239 () Unit!153630)

(declare-fun theoremZipperRegexEquiv!426 ((Set Context!8824) List!61384 Regex!15028 List!61385) Unit!153630)

(assert (=> b!5344806 (= lt!2179239 (theoremZipperRegexEquiv!426 lt!2179250 lt!2179247 lt!2179229 s!2326))))

(assert (=> b!5344806 (= lt!2179229 (generalisedConcat!697 lt!2179232))))

(declare-fun b!5344807 () Bool)

(declare-fun res!2267536 () Bool)

(assert (=> b!5344807 (=> res!2267536 e!3318458)))

(declare-fun generalisedUnion!957 (List!61383) Regex!15028)

(declare-fun unfocusZipperList!470 (List!61384) List!61383)

(assert (=> b!5344807 (= res!2267536 (not (= r!7292 (generalisedUnion!957 (unfocusZipperList!470 zl!343)))))))

(declare-fun b!5344808 () Bool)

(declare-fun res!2267535 () Bool)

(assert (=> b!5344808 (=> res!2267535 e!3318458)))

(declare-fun isEmpty!33234 (List!61384) Bool)

(assert (=> b!5344808 (= res!2267535 (not (isEmpty!33234 (t!374601 zl!343))))))

(declare-fun b!5344809 () Bool)

(declare-fun res!2267559 () Bool)

(assert (=> b!5344809 (=> res!2267559 e!3318459)))

(assert (=> b!5344809 (= res!2267559 (not (is-Concat!23873 (regOne!30568 r!7292))))))

(declare-fun b!5344810 () Bool)

(declare-fun res!2267541 () Bool)

(assert (=> b!5344810 (=> res!2267541 e!3318458)))

(assert (=> b!5344810 (= res!2267541 (not (is-Cons!61259 (exprs!4912 (h!67708 zl!343)))))))

(declare-fun b!5344811 () Bool)

(assert (=> b!5344811 (= e!3318463 e!3318462)))

(declare-fun res!2267548 () Bool)

(assert (=> b!5344811 (=> res!2267548 e!3318462)))

(declare-fun zipperDepthTotal!181 (List!61384) Int)

(assert (=> b!5344811 (= res!2267548 (>= (zipperDepthTotal!181 lt!2179247) (zipperDepthTotal!181 zl!343)))))

(assert (=> b!5344811 (= lt!2179247 (Cons!61260 lt!2179233 Nil!61260))))

(declare-fun b!5344812 () Bool)

(declare-fun res!2267556 () Bool)

(assert (=> b!5344812 (=> res!2267556 e!3318458)))

(assert (=> b!5344812 (= res!2267556 (not (= r!7292 (generalisedConcat!697 (exprs!4912 (h!67708 zl!343))))))))

(declare-fun b!5344813 () Bool)

(assert (=> b!5344813 (= e!3318459 e!3318466)))

(declare-fun res!2267560 () Bool)

(assert (=> b!5344813 (=> res!2267560 e!3318466)))

(assert (=> b!5344813 (= res!2267560 (not (= lt!2179236 lt!2179235)))))

(assert (=> b!5344813 (= lt!2179235 (derivationStepZipperDown!476 (regOne!30568 (regOne!30568 r!7292)) (Context!8825 lt!2179245) (h!67709 s!2326)))))

(assert (=> b!5344813 (= lt!2179245 (Cons!61259 (regTwo!30568 (regOne!30568 r!7292)) (t!374600 (exprs!4912 (h!67708 zl!343)))))))

(declare-fun b!5344814 () Bool)

(assert (=> b!5344814 (= e!3318461 e!3318463)))

(declare-fun res!2267540 () Bool)

(assert (=> b!5344814 (=> res!2267540 e!3318463)))

(declare-fun lt!2179254 () Regex!15028)

(assert (=> b!5344814 (= res!2267540 (not (= (exprs!4912 (h!67708 zl!343)) (Cons!61259 lt!2179254 (t!374600 (exprs!4912 (h!67708 zl!343)))))))))

(assert (=> b!5344814 (= lt!2179254 (Concat!23873 (regOne!30568 (regOne!30568 r!7292)) (regTwo!30568 (regOne!30568 r!7292))))))

(declare-fun b!5344815 () Bool)

(declare-fun Unit!153633 () Unit!153630)

(assert (=> b!5344815 (= e!3318469 Unit!153633)))

(declare-fun b!5344816 () Bool)

(declare-fun res!2267544 () Bool)

(assert (=> b!5344816 (=> res!2267544 e!3318461)))

(assert (=> b!5344816 (= res!2267544 (not (= lt!2179244 (matchZipper!1272 lt!2179227 (t!374602 s!2326)))))))

(declare-fun b!5344817 () Bool)

(declare-fun tp!1485602 () Bool)

(declare-fun tp!1485598 () Bool)

(assert (=> b!5344817 (= e!3318460 (and tp!1485602 tp!1485598))))

(declare-fun b!5344818 () Bool)

(assert (=> b!5344818 (= e!3318465 (not e!3318458))))

(declare-fun res!2267537 () Bool)

(assert (=> b!5344818 (=> res!2267537 e!3318458)))

(assert (=> b!5344818 (= res!2267537 (not (is-Cons!61260 zl!343)))))

(assert (=> b!5344818 (= lt!2179251 (matchRSpec!2131 r!7292 s!2326))))

(assert (=> b!5344818 (= lt!2179251 (matchR!7213 r!7292 s!2326))))

(declare-fun lt!2179223 () Unit!153630)

(assert (=> b!5344818 (= lt!2179223 (mainMatchTheorem!2131 r!7292 s!2326))))

(declare-fun b!5344819 () Bool)

(declare-fun tp!1485604 () Bool)

(assert (=> b!5344819 (= e!3318472 tp!1485604)))

(declare-fun b!5344820 () Bool)

(assert (=> b!5344820 (= e!3318473 (matchZipper!1272 lt!2179226 (t!374602 s!2326)))))

(declare-fun b!5344821 () Bool)

(declare-fun res!2267558 () Bool)

(assert (=> b!5344821 (=> (not res!2267558) (not e!3318465))))

(declare-fun toList!8812 ((Set Context!8824)) List!61384)

(assert (=> b!5344821 (= res!2267558 (= (toList!8812 z!1189) zl!343))))

(declare-fun b!5344822 () Bool)

(declare-fun tp!1485599 () Bool)

(assert (=> b!5344822 (= e!3318460 tp!1485599)))

(declare-fun b!5344823 () Bool)

(declare-fun res!2267542 () Bool)

(assert (=> b!5344823 (=> res!2267542 e!3318474)))

(assert (=> b!5344823 (= res!2267542 (not (= lt!2179251 (matchR!7213 (Concat!23873 lt!2179254 lt!2179221) s!2326))))))

(declare-fun b!5344824 () Bool)

(declare-fun res!2267552 () Bool)

(assert (=> b!5344824 (=> res!2267552 e!3318474)))

(assert (=> b!5344824 (= res!2267552 (not (= lt!2179251 (matchR!7213 (Concat!23873 lt!2179254 (regTwo!30568 r!7292)) s!2326))))))

(declare-fun b!5344825 () Bool)

(declare-fun tp!1485605 () Bool)

(declare-fun tp!1485607 () Bool)

(assert (=> b!5344825 (= e!3318460 (and tp!1485605 tp!1485607))))

(declare-fun res!2267545 () Bool)

(assert (=> start!562980 (=> (not res!2267545) (not e!3318465))))

(declare-fun validRegex!6764 (Regex!15028) Bool)

(assert (=> start!562980 (= res!2267545 (validRegex!6764 r!7292))))

(assert (=> start!562980 e!3318465))

(assert (=> start!562980 e!3318460))

(declare-fun condSetEmpty!34510 () Bool)

(assert (=> start!562980 (= condSetEmpty!34510 (= z!1189 (as set.empty (Set Context!8824))))))

(assert (=> start!562980 setRes!34510))

(assert (=> start!562980 e!3318464))

(assert (=> start!562980 e!3318470))

(declare-fun b!5344826 () Bool)

(declare-fun tp!1485601 () Bool)

(assert (=> b!5344826 (= e!3318471 tp!1485601)))

(assert (=> b!5344827 (= e!3318458 e!3318467)))

(declare-fun res!2267551 () Bool)

(assert (=> b!5344827 (=> res!2267551 e!3318467)))

(declare-fun lt!2179238 () Bool)

(assert (=> b!5344827 (= res!2267551 (or (not (= lt!2179251 lt!2179238)) (is-Nil!61261 s!2326)))))

(assert (=> b!5344827 (= (Exists!2209 lambda!274304) (Exists!2209 lambda!274305))))

(declare-fun lt!2179237 () Unit!153630)

(assert (=> b!5344827 (= lt!2179237 (lemmaExistCutMatchRandMatchRSpecEquivalent!863 (regOne!30568 r!7292) (regTwo!30568 r!7292) s!2326))))

(assert (=> b!5344827 (= lt!2179238 (Exists!2209 lambda!274304))))

(assert (=> b!5344827 (= lt!2179238 (isDefined!11842 (findConcatSeparation!1553 (regOne!30568 r!7292) (regTwo!30568 r!7292) Nil!61261 s!2326 s!2326)))))

(declare-fun lt!2179253 () Unit!153630)

(assert (=> b!5344827 (= lt!2179253 (lemmaFindConcatSeparationEquivalentToExists!1317 (regOne!30568 r!7292) (regTwo!30568 r!7292) s!2326))))

(assert (= (and start!562980 res!2267545) b!5344821))

(assert (= (and b!5344821 res!2267558) b!5344805))

(assert (= (and b!5344805 res!2267534) b!5344818))

(assert (= (and b!5344818 (not res!2267537)) b!5344808))

(assert (= (and b!5344808 (not res!2267535)) b!5344812))

(assert (= (and b!5344812 (not res!2267556)) b!5344810))

(assert (= (and b!5344810 (not res!2267541)) b!5344807))

(assert (= (and b!5344807 (not res!2267536)) b!5344803))

(assert (= (and b!5344803 (not res!2267539)) b!5344827))

(assert (= (and b!5344827 (not res!2267551)) b!5344790))

(assert (= (and b!5344790 (not res!2267554)) b!5344797))

(assert (= (and b!5344797 c!930151) b!5344800))

(assert (= (and b!5344797 (not c!930151)) b!5344815))

(assert (= (and b!5344800 (not res!2267549)) b!5344820))

(assert (= (and b!5344797 (not res!2267546)) b!5344793))

(assert (= (and b!5344793 res!2267557) b!5344791))

(assert (= (and b!5344793 (not res!2267553)) b!5344809))

(assert (= (and b!5344809 (not res!2267559)) b!5344813))

(assert (= (and b!5344813 (not res!2267560)) b!5344804))

(assert (= (and b!5344804 (not res!2267547)) b!5344801))

(assert (= (and b!5344801 (not res!2267561)) b!5344816))

(assert (= (and b!5344816 (not res!2267544)) b!5344814))

(assert (= (and b!5344814 (not res!2267540)) b!5344798))

(assert (= (and b!5344798 (not res!2267543)) b!5344811))

(assert (= (and b!5344811 (not res!2267548)) b!5344792))

(assert (= (and b!5344792 (not res!2267550)) b!5344806))

(assert (= (and b!5344806 (not res!2267538)) b!5344802))

(assert (= (and b!5344802 (not res!2267555)) b!5344824))

(assert (= (and b!5344824 (not res!2267552)) b!5344823))

(assert (= (and b!5344823 (not res!2267542)) b!5344794))

(assert (= (and start!562980 (is-ElementMatch!15028 r!7292)) b!5344799))

(assert (= (and start!562980 (is-Concat!23873 r!7292)) b!5344817))

(assert (= (and start!562980 (is-Star!15028 r!7292)) b!5344822))

(assert (= (and start!562980 (is-Union!15028 r!7292)) b!5344825))

(assert (= (and start!562980 condSetEmpty!34510) setIsEmpty!34510))

(assert (= (and start!562980 (not condSetEmpty!34510)) setNonEmpty!34510))

(assert (= setNonEmpty!34510 b!5344826))

(assert (= b!5344795 b!5344819))

(assert (= (and start!562980 (is-Cons!61260 zl!343)) b!5344795))

(assert (= (and start!562980 (is-Cons!61261 s!2326)) b!5344796))

(declare-fun m!6376640 () Bool)

(assert (=> b!5344791 m!6376640))

(declare-fun m!6376642 () Bool)

(assert (=> b!5344797 m!6376642))

(declare-fun m!6376644 () Bool)

(assert (=> b!5344797 m!6376644))

(declare-fun m!6376646 () Bool)

(assert (=> b!5344797 m!6376646))

(declare-fun m!6376648 () Bool)

(assert (=> b!5344797 m!6376648))

(declare-fun m!6376650 () Bool)

(assert (=> b!5344797 m!6376650))

(declare-fun m!6376652 () Bool)

(assert (=> b!5344797 m!6376652))

(declare-fun m!6376654 () Bool)

(assert (=> b!5344797 m!6376654))

(declare-fun m!6376656 () Bool)

(assert (=> b!5344801 m!6376656))

(declare-fun m!6376658 () Bool)

(assert (=> b!5344801 m!6376658))

(declare-fun m!6376660 () Bool)

(assert (=> b!5344801 m!6376660))

(declare-fun m!6376662 () Bool)

(assert (=> b!5344801 m!6376662))

(declare-fun m!6376664 () Bool)

(assert (=> b!5344801 m!6376664))

(declare-fun m!6376666 () Bool)

(assert (=> b!5344811 m!6376666))

(declare-fun m!6376668 () Bool)

(assert (=> b!5344811 m!6376668))

(declare-fun m!6376670 () Bool)

(assert (=> b!5344827 m!6376670))

(declare-fun m!6376672 () Bool)

(assert (=> b!5344827 m!6376672))

(declare-fun m!6376674 () Bool)

(assert (=> b!5344827 m!6376674))

(assert (=> b!5344827 m!6376674))

(declare-fun m!6376676 () Bool)

(assert (=> b!5344827 m!6376676))

(declare-fun m!6376678 () Bool)

(assert (=> b!5344827 m!6376678))

(assert (=> b!5344827 m!6376670))

(declare-fun m!6376680 () Bool)

(assert (=> b!5344827 m!6376680))

(declare-fun m!6376682 () Bool)

(assert (=> b!5344812 m!6376682))

(declare-fun m!6376684 () Bool)

(assert (=> b!5344794 m!6376684))

(declare-fun m!6376686 () Bool)

(assert (=> b!5344816 m!6376686))

(declare-fun m!6376688 () Bool)

(assert (=> b!5344820 m!6376688))

(declare-fun m!6376690 () Bool)

(assert (=> b!5344808 m!6376690))

(declare-fun m!6376692 () Bool)

(assert (=> b!5344818 m!6376692))

(declare-fun m!6376694 () Bool)

(assert (=> b!5344818 m!6376694))

(declare-fun m!6376696 () Bool)

(assert (=> b!5344818 m!6376696))

(declare-fun m!6376698 () Bool)

(assert (=> b!5344824 m!6376698))

(declare-fun m!6376700 () Bool)

(assert (=> b!5344790 m!6376700))

(declare-fun m!6376702 () Bool)

(assert (=> b!5344805 m!6376702))

(declare-fun m!6376704 () Bool)

(assert (=> b!5344792 m!6376704))

(declare-fun m!6376706 () Bool)

(assert (=> b!5344792 m!6376706))

(declare-fun m!6376708 () Bool)

(assert (=> start!562980 m!6376708))

(declare-fun m!6376710 () Bool)

(assert (=> b!5344813 m!6376710))

(declare-fun m!6376712 () Bool)

(assert (=> b!5344804 m!6376712))

(declare-fun m!6376714 () Bool)

(assert (=> b!5344804 m!6376714))

(declare-fun m!6376716 () Bool)

(assert (=> b!5344806 m!6376716))

(declare-fun m!6376718 () Bool)

(assert (=> b!5344806 m!6376718))

(declare-fun m!6376720 () Bool)

(assert (=> b!5344806 m!6376720))

(declare-fun m!6376722 () Bool)

(assert (=> b!5344806 m!6376722))

(assert (=> b!5344806 m!6376718))

(declare-fun m!6376724 () Bool)

(assert (=> b!5344806 m!6376724))

(declare-fun m!6376726 () Bool)

(assert (=> b!5344806 m!6376726))

(declare-fun m!6376728 () Bool)

(assert (=> b!5344806 m!6376728))

(assert (=> b!5344806 m!6376726))

(declare-fun m!6376730 () Bool)

(assert (=> b!5344806 m!6376730))

(declare-fun m!6376732 () Bool)

(assert (=> b!5344806 m!6376732))

(declare-fun m!6376734 () Bool)

(assert (=> b!5344806 m!6376734))

(assert (=> b!5344806 m!6376722))

(declare-fun m!6376736 () Bool)

(assert (=> b!5344806 m!6376736))

(assert (=> b!5344806 m!6376730))

(declare-fun m!6376738 () Bool)

(assert (=> b!5344806 m!6376738))

(declare-fun m!6376740 () Bool)

(assert (=> b!5344806 m!6376740))

(declare-fun m!6376742 () Bool)

(assert (=> b!5344806 m!6376742))

(declare-fun m!6376744 () Bool)

(assert (=> b!5344806 m!6376744))

(declare-fun m!6376746 () Bool)

(assert (=> b!5344806 m!6376746))

(declare-fun m!6376748 () Bool)

(assert (=> b!5344806 m!6376748))

(declare-fun m!6376750 () Bool)

(assert (=> b!5344806 m!6376750))

(declare-fun m!6376752 () Bool)

(assert (=> b!5344806 m!6376752))

(declare-fun m!6376754 () Bool)

(assert (=> b!5344806 m!6376754))

(declare-fun m!6376756 () Bool)

(assert (=> b!5344806 m!6376756))

(declare-fun m!6376758 () Bool)

(assert (=> b!5344806 m!6376758))

(declare-fun m!6376760 () Bool)

(assert (=> b!5344806 m!6376760))

(declare-fun m!6376762 () Bool)

(assert (=> b!5344806 m!6376762))

(declare-fun m!6376764 () Bool)

(assert (=> b!5344821 m!6376764))

(declare-fun m!6376766 () Bool)

(assert (=> b!5344823 m!6376766))

(declare-fun m!6376768 () Bool)

(assert (=> setNonEmpty!34510 m!6376768))

(declare-fun m!6376770 () Bool)

(assert (=> b!5344800 m!6376770))

(assert (=> b!5344800 m!6376714))

(declare-fun m!6376772 () Bool)

(assert (=> b!5344800 m!6376772))

(declare-fun m!6376774 () Bool)

(assert (=> b!5344798 m!6376774))

(declare-fun m!6376776 () Bool)

(assert (=> b!5344798 m!6376776))

(declare-fun m!6376778 () Bool)

(assert (=> b!5344795 m!6376778))

(declare-fun m!6376780 () Bool)

(assert (=> b!5344802 m!6376780))

(declare-fun m!6376782 () Bool)

(assert (=> b!5344807 m!6376782))

(assert (=> b!5344807 m!6376782))

(declare-fun m!6376784 () Bool)

(assert (=> b!5344807 m!6376784))

(push 1)

(assert (not b!5344794))

(assert tp_is_empty!39309)

(assert (not b!5344806))

(assert (not b!5344792))

(assert (not b!5344801))

(assert (not b!5344820))

(assert (not b!5344826))

(assert (not b!5344811))

(assert (not b!5344795))

(assert (not b!5344817))

(assert (not b!5344805))

(assert (not b!5344797))

(assert (not b!5344827))

(assert (not b!5344821))

(assert (not b!5344823))

(assert (not b!5344798))

(assert (not b!5344822))

(assert (not b!5344816))

(assert (not b!5344824))

(assert (not b!5344819))

(assert (not b!5344791))

(assert (not b!5344812))

(assert (not b!5344804))

(assert (not b!5344796))

(assert (not b!5344790))

(assert (not setNonEmpty!34510))

(assert (not start!562980))

(assert (not b!5344825))

(assert (not b!5344807))

(assert (not b!5344818))

(assert (not b!5344808))

(assert (not b!5344800))

(assert (not b!5344802))

(assert (not b!5344813))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1714502 () Bool)

(declare-fun c!930164 () Bool)

(declare-fun isEmpty!33237 (List!61385) Bool)

(assert (=> d!1714502 (= c!930164 (isEmpty!33237 (t!374602 s!2326)))))

(declare-fun e!3318549 () Bool)

(assert (=> d!1714502 (= (matchZipper!1272 lt!2179227 (t!374602 s!2326)) e!3318549)))

(declare-fun b!5344994 () Bool)

(declare-fun nullableZipper!1371 ((Set Context!8824)) Bool)

(assert (=> b!5344994 (= e!3318549 (nullableZipper!1371 lt!2179227))))

(declare-fun b!5344995 () Bool)

(declare-fun head!11460 (List!61385) C!30326)

(declare-fun tail!10557 (List!61385) List!61385)

(assert (=> b!5344995 (= e!3318549 (matchZipper!1272 (derivationStepZipper!1269 lt!2179227 (head!11460 (t!374602 s!2326))) (tail!10557 (t!374602 s!2326))))))

(assert (= (and d!1714502 c!930164) b!5344994))

(assert (= (and d!1714502 (not c!930164)) b!5344995))

(declare-fun m!6376932 () Bool)

(assert (=> d!1714502 m!6376932))

(declare-fun m!6376934 () Bool)

(assert (=> b!5344994 m!6376934))

(declare-fun m!6376936 () Bool)

(assert (=> b!5344995 m!6376936))

(assert (=> b!5344995 m!6376936))

(declare-fun m!6376938 () Bool)

(assert (=> b!5344995 m!6376938))

(declare-fun m!6376940 () Bool)

(assert (=> b!5344995 m!6376940))

(assert (=> b!5344995 m!6376938))

(assert (=> b!5344995 m!6376940))

(declare-fun m!6376942 () Bool)

(assert (=> b!5344995 m!6376942))

(assert (=> b!5344816 d!1714502))

(declare-fun bs!1239243 () Bool)

(declare-fun b!5345034 () Bool)

(assert (= bs!1239243 (and b!5345034 b!5344827)))

(declare-fun lambda!274348 () Int)

(assert (=> bs!1239243 (not (= lambda!274348 lambda!274304))))

(declare-fun bs!1239244 () Bool)

(assert (= bs!1239244 (and b!5345034 b!5344806)))

(assert (=> bs!1239244 (not (= lambda!274348 lambda!274307))))

(assert (=> bs!1239244 (not (= lambda!274348 lambda!274308))))

(assert (=> bs!1239243 (not (= lambda!274348 lambda!274305))))

(assert (=> bs!1239244 (not (= lambda!274348 lambda!274309))))

(assert (=> bs!1239244 (not (= lambda!274348 lambda!274310))))

(assert (=> b!5345034 true))

(assert (=> b!5345034 true))

(declare-fun bs!1239245 () Bool)

(declare-fun b!5345029 () Bool)

(assert (= bs!1239245 (and b!5345029 b!5344827)))

(declare-fun lambda!274349 () Int)

(assert (=> bs!1239245 (not (= lambda!274349 lambda!274304))))

(declare-fun bs!1239246 () Bool)

(assert (= bs!1239246 (and b!5345029 b!5344806)))

(assert (=> bs!1239246 (not (= lambda!274349 lambda!274307))))

(assert (=> bs!1239246 (= (and (= (regOne!30568 r!7292) (regOne!30568 (regOne!30568 r!7292))) (= (regTwo!30568 r!7292) lt!2179224)) (= lambda!274349 lambda!274308))))

(assert (=> bs!1239245 (= lambda!274349 lambda!274305)))

(assert (=> bs!1239246 (not (= lambda!274349 lambda!274309))))

(declare-fun bs!1239247 () Bool)

(assert (= bs!1239247 (and b!5345029 b!5345034)))

(assert (=> bs!1239247 (not (= lambda!274349 lambda!274348))))

(assert (=> bs!1239246 (= (and (= (regOne!30568 r!7292) (regTwo!30568 (regOne!30568 r!7292))) (= (regTwo!30568 r!7292) lt!2179221)) (= lambda!274349 lambda!274310))))

(assert (=> b!5345029 true))

(assert (=> b!5345029 true))

(declare-fun b!5345028 () Bool)

(declare-fun e!3318568 () Bool)

(assert (=> b!5345028 (= e!3318568 (matchRSpec!2131 (regTwo!30569 r!7292) s!2326))))

(declare-fun d!1714504 () Bool)

(declare-fun c!930175 () Bool)

(assert (=> d!1714504 (= c!930175 (is-EmptyExpr!15028 r!7292))))

(declare-fun e!3318570 () Bool)

(assert (=> d!1714504 (= (matchRSpec!2131 r!7292 s!2326) e!3318570)))

(declare-fun e!3318572 () Bool)

(declare-fun call!382050 () Bool)

(assert (=> b!5345029 (= e!3318572 call!382050)))

(declare-fun b!5345030 () Bool)

(declare-fun e!3318574 () Bool)

(assert (=> b!5345030 (= e!3318574 e!3318572)))

(declare-fun c!930173 () Bool)

(assert (=> b!5345030 (= c!930173 (is-Star!15028 r!7292))))

(declare-fun b!5345031 () Bool)

(declare-fun e!3318569 () Bool)

(assert (=> b!5345031 (= e!3318569 (= s!2326 (Cons!61261 (c!930152 r!7292) Nil!61261)))))

(declare-fun bm!382044 () Bool)

(declare-fun call!382049 () Bool)

(assert (=> bm!382044 (= call!382049 (isEmpty!33237 s!2326))))

(declare-fun b!5345032 () Bool)

(assert (=> b!5345032 (= e!3318574 e!3318568)))

(declare-fun res!2267698 () Bool)

(assert (=> b!5345032 (= res!2267698 (matchRSpec!2131 (regOne!30569 r!7292) s!2326))))

(assert (=> b!5345032 (=> res!2267698 e!3318568)))

(declare-fun b!5345033 () Bool)

(declare-fun c!930176 () Bool)

(assert (=> b!5345033 (= c!930176 (is-Union!15028 r!7292))))

(assert (=> b!5345033 (= e!3318569 e!3318574)))

(declare-fun e!3318571 () Bool)

(assert (=> b!5345034 (= e!3318571 call!382050)))

(declare-fun b!5345035 () Bool)

(assert (=> b!5345035 (= e!3318570 call!382049)))

(declare-fun b!5345036 () Bool)

(declare-fun e!3318573 () Bool)

(assert (=> b!5345036 (= e!3318570 e!3318573)))

(declare-fun res!2267700 () Bool)

(assert (=> b!5345036 (= res!2267700 (not (is-EmptyLang!15028 r!7292)))))

(assert (=> b!5345036 (=> (not res!2267700) (not e!3318573))))

(declare-fun bm!382045 () Bool)

(assert (=> bm!382045 (= call!382050 (Exists!2209 (ite c!930173 lambda!274348 lambda!274349)))))

(declare-fun b!5345037 () Bool)

(declare-fun res!2267699 () Bool)

(assert (=> b!5345037 (=> res!2267699 e!3318571)))

(assert (=> b!5345037 (= res!2267699 call!382049)))

(assert (=> b!5345037 (= e!3318572 e!3318571)))

(declare-fun b!5345038 () Bool)

(declare-fun c!930174 () Bool)

(assert (=> b!5345038 (= c!930174 (is-ElementMatch!15028 r!7292))))

(assert (=> b!5345038 (= e!3318573 e!3318569)))

(assert (= (and d!1714504 c!930175) b!5345035))

(assert (= (and d!1714504 (not c!930175)) b!5345036))

(assert (= (and b!5345036 res!2267700) b!5345038))

(assert (= (and b!5345038 c!930174) b!5345031))

(assert (= (and b!5345038 (not c!930174)) b!5345033))

(assert (= (and b!5345033 c!930176) b!5345032))

(assert (= (and b!5345033 (not c!930176)) b!5345030))

(assert (= (and b!5345032 (not res!2267698)) b!5345028))

(assert (= (and b!5345030 c!930173) b!5345037))

(assert (= (and b!5345030 (not c!930173)) b!5345029))

(assert (= (and b!5345037 (not res!2267699)) b!5345034))

(assert (= (or b!5345034 b!5345029) bm!382045))

(assert (= (or b!5345035 b!5345037) bm!382044))

(declare-fun m!6376944 () Bool)

(assert (=> b!5345028 m!6376944))

(declare-fun m!6376946 () Bool)

(assert (=> bm!382044 m!6376946))

(declare-fun m!6376948 () Bool)

(assert (=> b!5345032 m!6376948))

(declare-fun m!6376950 () Bool)

(assert (=> bm!382045 m!6376950))

(assert (=> b!5344818 d!1714504))

(declare-fun b!5345067 () Bool)

(declare-fun res!2267720 () Bool)

(declare-fun e!3318590 () Bool)

(assert (=> b!5345067 (=> (not res!2267720) (not e!3318590))))

(assert (=> b!5345067 (= res!2267720 (isEmpty!33237 (tail!10557 s!2326)))))

(declare-fun b!5345068 () Bool)

(declare-fun e!3318593 () Bool)

(declare-fun e!3318595 () Bool)

(assert (=> b!5345068 (= e!3318593 e!3318595)))

(declare-fun res!2267721 () Bool)

(assert (=> b!5345068 (=> (not res!2267721) (not e!3318595))))

(declare-fun lt!2179367 () Bool)

(assert (=> b!5345068 (= res!2267721 (not lt!2179367))))

(declare-fun b!5345069 () Bool)

(declare-fun e!3318589 () Bool)

(declare-fun call!382053 () Bool)

(assert (=> b!5345069 (= e!3318589 (= lt!2179367 call!382053))))

(declare-fun b!5345070 () Bool)

(declare-fun res!2267722 () Bool)

(declare-fun e!3318592 () Bool)

(assert (=> b!5345070 (=> res!2267722 e!3318592)))

(assert (=> b!5345070 (= res!2267722 (not (isEmpty!33237 (tail!10557 s!2326))))))

(declare-fun b!5345071 () Bool)

(declare-fun res!2267724 () Bool)

(assert (=> b!5345071 (=> res!2267724 e!3318593)))

(assert (=> b!5345071 (= res!2267724 e!3318590)))

(declare-fun res!2267717 () Bool)

(assert (=> b!5345071 (=> (not res!2267717) (not e!3318590))))

(assert (=> b!5345071 (= res!2267717 lt!2179367)))

(declare-fun b!5345072 () Bool)

(assert (=> b!5345072 (= e!3318595 e!3318592)))

(declare-fun res!2267719 () Bool)

(assert (=> b!5345072 (=> res!2267719 e!3318592)))

(assert (=> b!5345072 (= res!2267719 call!382053)))

(declare-fun b!5345073 () Bool)

(assert (=> b!5345073 (= e!3318590 (= (head!11460 s!2326) (c!930152 r!7292)))))

(declare-fun b!5345074 () Bool)

(declare-fun e!3318594 () Bool)

(assert (=> b!5345074 (= e!3318594 (nullable!5197 r!7292))))

(declare-fun b!5345075 () Bool)

(declare-fun res!2267718 () Bool)

(assert (=> b!5345075 (=> res!2267718 e!3318593)))

(assert (=> b!5345075 (= res!2267718 (not (is-ElementMatch!15028 r!7292)))))

(declare-fun e!3318591 () Bool)

(assert (=> b!5345075 (= e!3318591 e!3318593)))

(declare-fun b!5345076 () Bool)

(assert (=> b!5345076 (= e!3318591 (not lt!2179367))))

(declare-fun b!5345077 () Bool)

(declare-fun derivativeStep!4192 (Regex!15028 C!30326) Regex!15028)

(assert (=> b!5345077 (= e!3318594 (matchR!7213 (derivativeStep!4192 r!7292 (head!11460 s!2326)) (tail!10557 s!2326)))))

(declare-fun bm!382048 () Bool)

(assert (=> bm!382048 (= call!382053 (isEmpty!33237 s!2326))))

(declare-fun b!5345078 () Bool)

(assert (=> b!5345078 (= e!3318592 (not (= (head!11460 s!2326) (c!930152 r!7292))))))

(declare-fun d!1714506 () Bool)

(assert (=> d!1714506 e!3318589))

(declare-fun c!930185 () Bool)

(assert (=> d!1714506 (= c!930185 (is-EmptyExpr!15028 r!7292))))

(assert (=> d!1714506 (= lt!2179367 e!3318594)))

(declare-fun c!930183 () Bool)

(assert (=> d!1714506 (= c!930183 (isEmpty!33237 s!2326))))

(assert (=> d!1714506 (validRegex!6764 r!7292)))

(assert (=> d!1714506 (= (matchR!7213 r!7292 s!2326) lt!2179367)))

(declare-fun b!5345079 () Bool)

(declare-fun res!2267723 () Bool)

(assert (=> b!5345079 (=> (not res!2267723) (not e!3318590))))

(assert (=> b!5345079 (= res!2267723 (not call!382053))))

(declare-fun b!5345080 () Bool)

(assert (=> b!5345080 (= e!3318589 e!3318591)))

(declare-fun c!930184 () Bool)

(assert (=> b!5345080 (= c!930184 (is-EmptyLang!15028 r!7292))))

(assert (= (and d!1714506 c!930183) b!5345074))

(assert (= (and d!1714506 (not c!930183)) b!5345077))

(assert (= (and d!1714506 c!930185) b!5345069))

(assert (= (and d!1714506 (not c!930185)) b!5345080))

(assert (= (and b!5345080 c!930184) b!5345076))

(assert (= (and b!5345080 (not c!930184)) b!5345075))

(assert (= (and b!5345075 (not res!2267718)) b!5345071))

(assert (= (and b!5345071 res!2267717) b!5345079))

(assert (= (and b!5345079 res!2267723) b!5345067))

(assert (= (and b!5345067 res!2267720) b!5345073))

(assert (= (and b!5345071 (not res!2267724)) b!5345068))

(assert (= (and b!5345068 res!2267721) b!5345072))

(assert (= (and b!5345072 (not res!2267719)) b!5345070))

(assert (= (and b!5345070 (not res!2267722)) b!5345078))

(assert (= (or b!5345069 b!5345072 b!5345079) bm!382048))

(assert (=> bm!382048 m!6376946))

(declare-fun m!6376952 () Bool)

(assert (=> b!5345067 m!6376952))

(assert (=> b!5345067 m!6376952))

(declare-fun m!6376954 () Bool)

(assert (=> b!5345067 m!6376954))

(declare-fun m!6376956 () Bool)

(assert (=> b!5345073 m!6376956))

(assert (=> b!5345077 m!6376956))

(assert (=> b!5345077 m!6376956))

(declare-fun m!6376958 () Bool)

(assert (=> b!5345077 m!6376958))

(assert (=> b!5345077 m!6376952))

(assert (=> b!5345077 m!6376958))

(assert (=> b!5345077 m!6376952))

(declare-fun m!6376960 () Bool)

(assert (=> b!5345077 m!6376960))

(assert (=> b!5345078 m!6376956))

(declare-fun m!6376962 () Bool)

(assert (=> b!5345074 m!6376962))

(assert (=> d!1714506 m!6376946))

(assert (=> d!1714506 m!6376708))

(assert (=> b!5345070 m!6376952))

(assert (=> b!5345070 m!6376952))

(assert (=> b!5345070 m!6376954))

(assert (=> b!5344818 d!1714506))

(declare-fun d!1714508 () Bool)

(assert (=> d!1714508 (= (matchR!7213 r!7292 s!2326) (matchRSpec!2131 r!7292 s!2326))))

(declare-fun lt!2179370 () Unit!153630)

(declare-fun choose!40074 (Regex!15028 List!61385) Unit!153630)

(assert (=> d!1714508 (= lt!2179370 (choose!40074 r!7292 s!2326))))

(assert (=> d!1714508 (validRegex!6764 r!7292)))

(assert (=> d!1714508 (= (mainMatchTheorem!2131 r!7292 s!2326) lt!2179370)))

(declare-fun bs!1239248 () Bool)

(assert (= bs!1239248 d!1714508))

(assert (=> bs!1239248 m!6376694))

(assert (=> bs!1239248 m!6376692))

(declare-fun m!6376964 () Bool)

(assert (=> bs!1239248 m!6376964))

(assert (=> bs!1239248 m!6376708))

(assert (=> b!5344818 d!1714508))

(declare-fun d!1714510 () Bool)

(declare-fun choose!40075 ((Set Context!8824) Int) (Set Context!8824))

(assert (=> d!1714510 (= (flatMap!755 z!1189 lambda!274306) (choose!40075 z!1189 lambda!274306))))

(declare-fun bs!1239249 () Bool)

(assert (= bs!1239249 d!1714510))

(declare-fun m!6376966 () Bool)

(assert (=> bs!1239249 m!6376966))

(assert (=> b!5344797 d!1714510))

(declare-fun d!1714512 () Bool)

(declare-fun dynLambda!24216 (Int Context!8824) (Set Context!8824))

(assert (=> d!1714512 (= (flatMap!755 z!1189 lambda!274306) (dynLambda!24216 lambda!274306 (h!67708 zl!343)))))

(declare-fun lt!2179373 () Unit!153630)

(declare-fun choose!40076 ((Set Context!8824) Context!8824 Int) Unit!153630)

(assert (=> d!1714512 (= lt!2179373 (choose!40076 z!1189 (h!67708 zl!343) lambda!274306))))

(assert (=> d!1714512 (= z!1189 (set.insert (h!67708 zl!343) (as set.empty (Set Context!8824))))))

(assert (=> d!1714512 (= (lemmaFlatMapOnSingletonSet!287 z!1189 (h!67708 zl!343) lambda!274306) lt!2179373)))

(declare-fun b_lambda!205245 () Bool)

(assert (=> (not b_lambda!205245) (not d!1714512)))

(declare-fun bs!1239250 () Bool)

(assert (= bs!1239250 d!1714512))

(assert (=> bs!1239250 m!6376644))

(declare-fun m!6376968 () Bool)

(assert (=> bs!1239250 m!6376968))

(declare-fun m!6376970 () Bool)

(assert (=> bs!1239250 m!6376970))

(declare-fun m!6376972 () Bool)

(assert (=> bs!1239250 m!6376972))

(assert (=> b!5344797 d!1714512))

(declare-fun d!1714514 () Bool)

(declare-fun c!930191 () Bool)

(declare-fun e!3318603 () Bool)

(assert (=> d!1714514 (= c!930191 e!3318603)))

(declare-fun res!2267727 () Bool)

(assert (=> d!1714514 (=> (not res!2267727) (not e!3318603))))

(assert (=> d!1714514 (= res!2267727 (is-Cons!61259 (exprs!4912 (Context!8825 (Cons!61259 (h!67707 (exprs!4912 (h!67708 zl!343))) (t!374600 (exprs!4912 (h!67708 zl!343))))))))))

(declare-fun e!3318602 () (Set Context!8824))

(assert (=> d!1714514 (= (derivationStepZipperUp!400 (Context!8825 (Cons!61259 (h!67707 (exprs!4912 (h!67708 zl!343))) (t!374600 (exprs!4912 (h!67708 zl!343))))) (h!67709 s!2326)) e!3318602)))

(declare-fun b!5345091 () Bool)

(declare-fun e!3318604 () (Set Context!8824))

(assert (=> b!5345091 (= e!3318602 e!3318604)))

(declare-fun c!930190 () Bool)

(assert (=> b!5345091 (= c!930190 (is-Cons!61259 (exprs!4912 (Context!8825 (Cons!61259 (h!67707 (exprs!4912 (h!67708 zl!343))) (t!374600 (exprs!4912 (h!67708 zl!343))))))))))

(declare-fun b!5345092 () Bool)

(declare-fun call!382056 () (Set Context!8824))

(assert (=> b!5345092 (= e!3318604 call!382056)))

(declare-fun b!5345093 () Bool)

(assert (=> b!5345093 (= e!3318604 (as set.empty (Set Context!8824)))))

(declare-fun b!5345094 () Bool)

(assert (=> b!5345094 (= e!3318603 (nullable!5197 (h!67707 (exprs!4912 (Context!8825 (Cons!61259 (h!67707 (exprs!4912 (h!67708 zl!343))) (t!374600 (exprs!4912 (h!67708 zl!343)))))))))))

(declare-fun b!5345095 () Bool)

(assert (=> b!5345095 (= e!3318602 (set.union call!382056 (derivationStepZipperUp!400 (Context!8825 (t!374600 (exprs!4912 (Context!8825 (Cons!61259 (h!67707 (exprs!4912 (h!67708 zl!343))) (t!374600 (exprs!4912 (h!67708 zl!343)))))))) (h!67709 s!2326))))))

(declare-fun bm!382051 () Bool)

(assert (=> bm!382051 (= call!382056 (derivationStepZipperDown!476 (h!67707 (exprs!4912 (Context!8825 (Cons!61259 (h!67707 (exprs!4912 (h!67708 zl!343))) (t!374600 (exprs!4912 (h!67708 zl!343))))))) (Context!8825 (t!374600 (exprs!4912 (Context!8825 (Cons!61259 (h!67707 (exprs!4912 (h!67708 zl!343))) (t!374600 (exprs!4912 (h!67708 zl!343)))))))) (h!67709 s!2326)))))

(assert (= (and d!1714514 res!2267727) b!5345094))

(assert (= (and d!1714514 c!930191) b!5345095))

(assert (= (and d!1714514 (not c!930191)) b!5345091))

(assert (= (and b!5345091 c!930190) b!5345092))

(assert (= (and b!5345091 (not c!930190)) b!5345093))

(assert (= (or b!5345095 b!5345092) bm!382051))

(declare-fun m!6376974 () Bool)

(assert (=> b!5345094 m!6376974))

(declare-fun m!6376976 () Bool)

(assert (=> b!5345095 m!6376976))

(declare-fun m!6376978 () Bool)

(assert (=> bm!382051 m!6376978))

(assert (=> b!5344797 d!1714514))

(declare-fun d!1714516 () Bool)

(declare-fun nullableFct!1523 (Regex!15028) Bool)

(assert (=> d!1714516 (= (nullable!5197 (h!67707 (exprs!4912 (h!67708 zl!343)))) (nullableFct!1523 (h!67707 (exprs!4912 (h!67708 zl!343)))))))

(declare-fun bs!1239251 () Bool)

(assert (= bs!1239251 d!1714516))

(declare-fun m!6376980 () Bool)

(assert (=> bs!1239251 m!6376980))

(assert (=> b!5344797 d!1714516))

(declare-fun d!1714518 () Bool)

(declare-fun c!930193 () Bool)

(declare-fun e!3318606 () Bool)

(assert (=> d!1714518 (= c!930193 e!3318606)))

(declare-fun res!2267728 () Bool)

(assert (=> d!1714518 (=> (not res!2267728) (not e!3318606))))

(assert (=> d!1714518 (= res!2267728 (is-Cons!61259 (exprs!4912 lt!2179230)))))

(declare-fun e!3318605 () (Set Context!8824))

(assert (=> d!1714518 (= (derivationStepZipperUp!400 lt!2179230 (h!67709 s!2326)) e!3318605)))

(declare-fun b!5345096 () Bool)

(declare-fun e!3318607 () (Set Context!8824))

(assert (=> b!5345096 (= e!3318605 e!3318607)))

(declare-fun c!930192 () Bool)

(assert (=> b!5345096 (= c!930192 (is-Cons!61259 (exprs!4912 lt!2179230)))))

(declare-fun b!5345097 () Bool)

(declare-fun call!382057 () (Set Context!8824))

(assert (=> b!5345097 (= e!3318607 call!382057)))

(declare-fun b!5345098 () Bool)

(assert (=> b!5345098 (= e!3318607 (as set.empty (Set Context!8824)))))

(declare-fun b!5345099 () Bool)

(assert (=> b!5345099 (= e!3318606 (nullable!5197 (h!67707 (exprs!4912 lt!2179230))))))

(declare-fun b!5345100 () Bool)

(assert (=> b!5345100 (= e!3318605 (set.union call!382057 (derivationStepZipperUp!400 (Context!8825 (t!374600 (exprs!4912 lt!2179230))) (h!67709 s!2326))))))

(declare-fun bm!382052 () Bool)

(assert (=> bm!382052 (= call!382057 (derivationStepZipperDown!476 (h!67707 (exprs!4912 lt!2179230)) (Context!8825 (t!374600 (exprs!4912 lt!2179230))) (h!67709 s!2326)))))

(assert (= (and d!1714518 res!2267728) b!5345099))

(assert (= (and d!1714518 c!930193) b!5345100))

(assert (= (and d!1714518 (not c!930193)) b!5345096))

(assert (= (and b!5345096 c!930192) b!5345097))

(assert (= (and b!5345096 (not c!930192)) b!5345098))

(assert (= (or b!5345100 b!5345097) bm!382052))

(declare-fun m!6376982 () Bool)

(assert (=> b!5345099 m!6376982))

(declare-fun m!6376984 () Bool)

(assert (=> b!5345100 m!6376984))

(declare-fun m!6376986 () Bool)

(assert (=> bm!382052 m!6376986))

(assert (=> b!5344797 d!1714518))

(declare-fun bm!382065 () Bool)

(declare-fun call!382075 () (Set Context!8824))

(declare-fun call!382070 () (Set Context!8824))

(assert (=> bm!382065 (= call!382075 call!382070)))

(declare-fun b!5345123 () Bool)

(declare-fun e!3318621 () (Set Context!8824))

(declare-fun e!3318623 () (Set Context!8824))

(assert (=> b!5345123 (= e!3318621 e!3318623)))

(declare-fun c!930207 () Bool)

(assert (=> b!5345123 (= c!930207 (is-Union!15028 (h!67707 (exprs!4912 (h!67708 zl!343)))))))

(declare-fun b!5345124 () Bool)

(assert (=> b!5345124 (= e!3318621 (set.insert lt!2179230 (as set.empty (Set Context!8824))))))

(declare-fun b!5345125 () Bool)

(declare-fun e!3318625 () (Set Context!8824))

(declare-fun call!382071 () (Set Context!8824))

(assert (=> b!5345125 (= e!3318625 call!382071)))

(declare-fun d!1714520 () Bool)

(declare-fun c!930208 () Bool)

(assert (=> d!1714520 (= c!930208 (and (is-ElementMatch!15028 (h!67707 (exprs!4912 (h!67708 zl!343)))) (= (c!930152 (h!67707 (exprs!4912 (h!67708 zl!343)))) (h!67709 s!2326))))))

(assert (=> d!1714520 (= (derivationStepZipperDown!476 (h!67707 (exprs!4912 (h!67708 zl!343))) lt!2179230 (h!67709 s!2326)) e!3318621)))

(declare-fun b!5345126 () Bool)

(declare-fun call!382072 () (Set Context!8824))

(assert (=> b!5345126 (= e!3318623 (set.union call!382072 call!382070))))

(declare-fun b!5345127 () Bool)

(declare-fun c!930206 () Bool)

(assert (=> b!5345127 (= c!930206 (is-Star!15028 (h!67707 (exprs!4912 (h!67708 zl!343)))))))

(declare-fun e!3318624 () (Set Context!8824))

(assert (=> b!5345127 (= e!3318625 e!3318624)))

(declare-fun b!5345128 () Bool)

(declare-fun c!930205 () Bool)

(declare-fun e!3318622 () Bool)

(assert (=> b!5345128 (= c!930205 e!3318622)))

(declare-fun res!2267731 () Bool)

(assert (=> b!5345128 (=> (not res!2267731) (not e!3318622))))

(assert (=> b!5345128 (= res!2267731 (is-Concat!23873 (h!67707 (exprs!4912 (h!67708 zl!343)))))))

(declare-fun e!3318620 () (Set Context!8824))

(assert (=> b!5345128 (= e!3318623 e!3318620)))

(declare-fun call!382073 () List!61383)

(declare-fun bm!382066 () Bool)

(declare-fun c!930204 () Bool)

(assert (=> bm!382066 (= call!382070 (derivationStepZipperDown!476 (ite c!930207 (regTwo!30569 (h!67707 (exprs!4912 (h!67708 zl!343)))) (ite c!930205 (regTwo!30568 (h!67707 (exprs!4912 (h!67708 zl!343)))) (ite c!930204 (regOne!30568 (h!67707 (exprs!4912 (h!67708 zl!343)))) (reg!15357 (h!67707 (exprs!4912 (h!67708 zl!343))))))) (ite (or c!930207 c!930205) lt!2179230 (Context!8825 call!382073)) (h!67709 s!2326)))))

(declare-fun b!5345129 () Bool)

(assert (=> b!5345129 (= e!3318620 e!3318625)))

(assert (=> b!5345129 (= c!930204 (is-Concat!23873 (h!67707 (exprs!4912 (h!67708 zl!343)))))))

(declare-fun bm!382067 () Bool)

(declare-fun call!382074 () List!61383)

(declare-fun $colon$colon!1421 (List!61383 Regex!15028) List!61383)

(assert (=> bm!382067 (= call!382074 ($colon$colon!1421 (exprs!4912 lt!2179230) (ite (or c!930205 c!930204) (regTwo!30568 (h!67707 (exprs!4912 (h!67708 zl!343)))) (h!67707 (exprs!4912 (h!67708 zl!343))))))))

(declare-fun b!5345130 () Bool)

(assert (=> b!5345130 (= e!3318624 call!382071)))

(declare-fun bm!382068 () Bool)

(assert (=> bm!382068 (= call!382071 call!382075)))

(declare-fun b!5345131 () Bool)

(assert (=> b!5345131 (= e!3318624 (as set.empty (Set Context!8824)))))

(declare-fun bm!382069 () Bool)

(assert (=> bm!382069 (= call!382073 call!382074)))

(declare-fun b!5345132 () Bool)

(assert (=> b!5345132 (= e!3318620 (set.union call!382072 call!382075))))

(declare-fun b!5345133 () Bool)

(assert (=> b!5345133 (= e!3318622 (nullable!5197 (regOne!30568 (h!67707 (exprs!4912 (h!67708 zl!343))))))))

(declare-fun bm!382070 () Bool)

(assert (=> bm!382070 (= call!382072 (derivationStepZipperDown!476 (ite c!930207 (regOne!30569 (h!67707 (exprs!4912 (h!67708 zl!343)))) (regOne!30568 (h!67707 (exprs!4912 (h!67708 zl!343))))) (ite c!930207 lt!2179230 (Context!8825 call!382074)) (h!67709 s!2326)))))

(assert (= (and d!1714520 c!930208) b!5345124))

(assert (= (and d!1714520 (not c!930208)) b!5345123))

(assert (= (and b!5345123 c!930207) b!5345126))

(assert (= (and b!5345123 (not c!930207)) b!5345128))

(assert (= (and b!5345128 res!2267731) b!5345133))

(assert (= (and b!5345128 c!930205) b!5345132))

(assert (= (and b!5345128 (not c!930205)) b!5345129))

(assert (= (and b!5345129 c!930204) b!5345125))

(assert (= (and b!5345129 (not c!930204)) b!5345127))

(assert (= (and b!5345127 c!930206) b!5345130))

(assert (= (and b!5345127 (not c!930206)) b!5345131))

(assert (= (or b!5345125 b!5345130) bm!382069))

(assert (= (or b!5345125 b!5345130) bm!382068))

(assert (= (or b!5345132 bm!382069) bm!382067))

(assert (= (or b!5345132 bm!382068) bm!382065))

(assert (= (or b!5345126 bm!382065) bm!382066))

(assert (= (or b!5345126 b!5345132) bm!382070))

(declare-fun m!6376988 () Bool)

(assert (=> bm!382067 m!6376988))

(declare-fun m!6376990 () Bool)

(assert (=> bm!382070 m!6376990))

(declare-fun m!6376992 () Bool)

(assert (=> b!5345124 m!6376992))

(declare-fun m!6376994 () Bool)

(assert (=> b!5345133 m!6376994))

(declare-fun m!6376996 () Bool)

(assert (=> bm!382066 m!6376996))

(assert (=> b!5344797 d!1714520))

(declare-fun d!1714522 () Bool)

(declare-fun c!930210 () Bool)

(declare-fun e!3318627 () Bool)

(assert (=> d!1714522 (= c!930210 e!3318627)))

(declare-fun res!2267732 () Bool)

(assert (=> d!1714522 (=> (not res!2267732) (not e!3318627))))

(assert (=> d!1714522 (= res!2267732 (is-Cons!61259 (exprs!4912 (h!67708 zl!343))))))

(declare-fun e!3318626 () (Set Context!8824))

(assert (=> d!1714522 (= (derivationStepZipperUp!400 (h!67708 zl!343) (h!67709 s!2326)) e!3318626)))

(declare-fun b!5345134 () Bool)

(declare-fun e!3318628 () (Set Context!8824))

(assert (=> b!5345134 (= e!3318626 e!3318628)))

(declare-fun c!930209 () Bool)

(assert (=> b!5345134 (= c!930209 (is-Cons!61259 (exprs!4912 (h!67708 zl!343))))))

(declare-fun b!5345135 () Bool)

(declare-fun call!382076 () (Set Context!8824))

(assert (=> b!5345135 (= e!3318628 call!382076)))

(declare-fun b!5345136 () Bool)

(assert (=> b!5345136 (= e!3318628 (as set.empty (Set Context!8824)))))

(declare-fun b!5345137 () Bool)

(assert (=> b!5345137 (= e!3318627 (nullable!5197 (h!67707 (exprs!4912 (h!67708 zl!343)))))))

(declare-fun b!5345138 () Bool)

(assert (=> b!5345138 (= e!3318626 (set.union call!382076 (derivationStepZipperUp!400 (Context!8825 (t!374600 (exprs!4912 (h!67708 zl!343)))) (h!67709 s!2326))))))

(declare-fun bm!382071 () Bool)

(assert (=> bm!382071 (= call!382076 (derivationStepZipperDown!476 (h!67707 (exprs!4912 (h!67708 zl!343))) (Context!8825 (t!374600 (exprs!4912 (h!67708 zl!343)))) (h!67709 s!2326)))))

(assert (= (and d!1714522 res!2267732) b!5345137))

(assert (= (and d!1714522 c!930210) b!5345138))

(assert (= (and d!1714522 (not c!930210)) b!5345134))

(assert (= (and b!5345134 c!930209) b!5345135))

(assert (= (and b!5345134 (not c!930209)) b!5345136))

(assert (= (or b!5345138 b!5345135) bm!382071))

(assert (=> b!5345137 m!6376650))

(declare-fun m!6376998 () Bool)

(assert (=> b!5345138 m!6376998))

(declare-fun m!6377000 () Bool)

(assert (=> bm!382071 m!6377000))

(assert (=> b!5344797 d!1714522))

(declare-fun bm!382072 () Bool)

(declare-fun call!382082 () (Set Context!8824))

(declare-fun call!382077 () (Set Context!8824))

(assert (=> bm!382072 (= call!382082 call!382077)))

(declare-fun b!5345139 () Bool)

(declare-fun e!3318630 () (Set Context!8824))

(declare-fun e!3318632 () (Set Context!8824))

(assert (=> b!5345139 (= e!3318630 e!3318632)))

(declare-fun c!930214 () Bool)

(assert (=> b!5345139 (= c!930214 (is-Union!15028 (regOne!30568 (regOne!30568 r!7292))))))

(declare-fun b!5345140 () Bool)

(assert (=> b!5345140 (= e!3318630 (set.insert (Context!8825 lt!2179245) (as set.empty (Set Context!8824))))))

(declare-fun b!5345141 () Bool)

(declare-fun e!3318634 () (Set Context!8824))

(declare-fun call!382078 () (Set Context!8824))

(assert (=> b!5345141 (= e!3318634 call!382078)))

(declare-fun d!1714524 () Bool)

(declare-fun c!930215 () Bool)

(assert (=> d!1714524 (= c!930215 (and (is-ElementMatch!15028 (regOne!30568 (regOne!30568 r!7292))) (= (c!930152 (regOne!30568 (regOne!30568 r!7292))) (h!67709 s!2326))))))

(assert (=> d!1714524 (= (derivationStepZipperDown!476 (regOne!30568 (regOne!30568 r!7292)) (Context!8825 lt!2179245) (h!67709 s!2326)) e!3318630)))

(declare-fun b!5345142 () Bool)

(declare-fun call!382079 () (Set Context!8824))

(assert (=> b!5345142 (= e!3318632 (set.union call!382079 call!382077))))

(declare-fun b!5345143 () Bool)

(declare-fun c!930213 () Bool)

(assert (=> b!5345143 (= c!930213 (is-Star!15028 (regOne!30568 (regOne!30568 r!7292))))))

(declare-fun e!3318633 () (Set Context!8824))

(assert (=> b!5345143 (= e!3318634 e!3318633)))

(declare-fun b!5345144 () Bool)

(declare-fun c!930212 () Bool)

(declare-fun e!3318631 () Bool)

(assert (=> b!5345144 (= c!930212 e!3318631)))

(declare-fun res!2267733 () Bool)

(assert (=> b!5345144 (=> (not res!2267733) (not e!3318631))))

(assert (=> b!5345144 (= res!2267733 (is-Concat!23873 (regOne!30568 (regOne!30568 r!7292))))))

(declare-fun e!3318629 () (Set Context!8824))

(assert (=> b!5345144 (= e!3318632 e!3318629)))

(declare-fun bm!382073 () Bool)

(declare-fun c!930211 () Bool)

(declare-fun call!382080 () List!61383)

(assert (=> bm!382073 (= call!382077 (derivationStepZipperDown!476 (ite c!930214 (regTwo!30569 (regOne!30568 (regOne!30568 r!7292))) (ite c!930212 (regTwo!30568 (regOne!30568 (regOne!30568 r!7292))) (ite c!930211 (regOne!30568 (regOne!30568 (regOne!30568 r!7292))) (reg!15357 (regOne!30568 (regOne!30568 r!7292)))))) (ite (or c!930214 c!930212) (Context!8825 lt!2179245) (Context!8825 call!382080)) (h!67709 s!2326)))))

(declare-fun b!5345145 () Bool)

(assert (=> b!5345145 (= e!3318629 e!3318634)))

(assert (=> b!5345145 (= c!930211 (is-Concat!23873 (regOne!30568 (regOne!30568 r!7292))))))

(declare-fun bm!382074 () Bool)

(declare-fun call!382081 () List!61383)

(assert (=> bm!382074 (= call!382081 ($colon$colon!1421 (exprs!4912 (Context!8825 lt!2179245)) (ite (or c!930212 c!930211) (regTwo!30568 (regOne!30568 (regOne!30568 r!7292))) (regOne!30568 (regOne!30568 r!7292)))))))

(declare-fun b!5345146 () Bool)

(assert (=> b!5345146 (= e!3318633 call!382078)))

(declare-fun bm!382075 () Bool)

(assert (=> bm!382075 (= call!382078 call!382082)))

(declare-fun b!5345147 () Bool)

(assert (=> b!5345147 (= e!3318633 (as set.empty (Set Context!8824)))))

(declare-fun bm!382076 () Bool)

(assert (=> bm!382076 (= call!382080 call!382081)))

(declare-fun b!5345148 () Bool)

(assert (=> b!5345148 (= e!3318629 (set.union call!382079 call!382082))))

(declare-fun b!5345149 () Bool)

(assert (=> b!5345149 (= e!3318631 (nullable!5197 (regOne!30568 (regOne!30568 (regOne!30568 r!7292)))))))

(declare-fun bm!382077 () Bool)

(assert (=> bm!382077 (= call!382079 (derivationStepZipperDown!476 (ite c!930214 (regOne!30569 (regOne!30568 (regOne!30568 r!7292))) (regOne!30568 (regOne!30568 (regOne!30568 r!7292)))) (ite c!930214 (Context!8825 lt!2179245) (Context!8825 call!382081)) (h!67709 s!2326)))))

(assert (= (and d!1714524 c!930215) b!5345140))

(assert (= (and d!1714524 (not c!930215)) b!5345139))

(assert (= (and b!5345139 c!930214) b!5345142))

(assert (= (and b!5345139 (not c!930214)) b!5345144))

(assert (= (and b!5345144 res!2267733) b!5345149))

(assert (= (and b!5345144 c!930212) b!5345148))

(assert (= (and b!5345144 (not c!930212)) b!5345145))

(assert (= (and b!5345145 c!930211) b!5345141))

(assert (= (and b!5345145 (not c!930211)) b!5345143))

(assert (= (and b!5345143 c!930213) b!5345146))

(assert (= (and b!5345143 (not c!930213)) b!5345147))

(assert (= (or b!5345141 b!5345146) bm!382076))

(assert (= (or b!5345141 b!5345146) bm!382075))

(assert (= (or b!5345148 bm!382076) bm!382074))

(assert (= (or b!5345148 bm!382075) bm!382072))

(assert (= (or b!5345142 bm!382072) bm!382073))

(assert (= (or b!5345142 b!5345148) bm!382077))

(declare-fun m!6377002 () Bool)

(assert (=> bm!382074 m!6377002))

(declare-fun m!6377004 () Bool)

(assert (=> bm!382077 m!6377004))

(declare-fun m!6377006 () Bool)

(assert (=> b!5345140 m!6377006))

(declare-fun m!6377008 () Bool)

(assert (=> b!5345149 m!6377008))

(declare-fun m!6377010 () Bool)

(assert (=> bm!382073 m!6377010))

(assert (=> b!5344813 d!1714524))

(declare-fun d!1714526 () Bool)

(declare-fun res!2267738 () Bool)

(declare-fun e!3318639 () Bool)

(assert (=> d!1714526 (=> res!2267738 e!3318639)))

(assert (=> d!1714526 (= res!2267738 (is-Nil!61259 (t!374600 (exprs!4912 (h!67708 zl!343)))))))

(assert (=> d!1714526 (= (forall!14450 (t!374600 (exprs!4912 (h!67708 zl!343))) lambda!274311) e!3318639)))

(declare-fun b!5345154 () Bool)

(declare-fun e!3318640 () Bool)

(assert (=> b!5345154 (= e!3318639 e!3318640)))

(declare-fun res!2267739 () Bool)

(assert (=> b!5345154 (=> (not res!2267739) (not e!3318640))))

(declare-fun dynLambda!24217 (Int Regex!15028) Bool)

(assert (=> b!5345154 (= res!2267739 (dynLambda!24217 lambda!274311 (h!67707 (t!374600 (exprs!4912 (h!67708 zl!343))))))))

(declare-fun b!5345155 () Bool)

(assert (=> b!5345155 (= e!3318640 (forall!14450 (t!374600 (t!374600 (exprs!4912 (h!67708 zl!343)))) lambda!274311))))

(assert (= (and d!1714526 (not res!2267738)) b!5345154))

(assert (= (and b!5345154 res!2267739) b!5345155))

(declare-fun b_lambda!205247 () Bool)

(assert (=> (not b_lambda!205247) (not b!5345154)))

(declare-fun m!6377012 () Bool)

(assert (=> b!5345154 m!6377012))

(declare-fun m!6377014 () Bool)

(assert (=> b!5345155 m!6377014))

(assert (=> b!5344794 d!1714526))

(declare-fun bs!1239252 () Bool)

(declare-fun d!1714528 () Bool)

(assert (= bs!1239252 (and d!1714528 b!5344794)))

(declare-fun lambda!274352 () Int)

(assert (=> bs!1239252 (= lambda!274352 lambda!274311)))

(assert (=> d!1714528 (= (inv!80818 (h!67708 zl!343)) (forall!14450 (exprs!4912 (h!67708 zl!343)) lambda!274352))))

(declare-fun bs!1239253 () Bool)

(assert (= bs!1239253 d!1714528))

(declare-fun m!6377016 () Bool)

(assert (=> bs!1239253 m!6377016))

(assert (=> b!5344795 d!1714528))

(declare-fun d!1714530 () Bool)

(declare-fun e!3318643 () Bool)

(assert (=> d!1714530 e!3318643))

(declare-fun res!2267742 () Bool)

(assert (=> d!1714530 (=> (not res!2267742) (not e!3318643))))

(declare-fun lt!2179376 () List!61384)

(declare-fun noDuplicate!1326 (List!61384) Bool)

(assert (=> d!1714530 (= res!2267742 (noDuplicate!1326 lt!2179376))))

(declare-fun choose!40077 ((Set Context!8824)) List!61384)

(assert (=> d!1714530 (= lt!2179376 (choose!40077 z!1189))))

(assert (=> d!1714530 (= (toList!8812 z!1189) lt!2179376)))

(declare-fun b!5345158 () Bool)

(declare-fun content!10930 (List!61384) (Set Context!8824))

(assert (=> b!5345158 (= e!3318643 (= (content!10930 lt!2179376) z!1189))))

(assert (= (and d!1714530 res!2267742) b!5345158))

(declare-fun m!6377018 () Bool)

(assert (=> d!1714530 m!6377018))

(declare-fun m!6377020 () Bool)

(assert (=> d!1714530 m!6377020))

(declare-fun m!6377022 () Bool)

(assert (=> b!5345158 m!6377022))

(assert (=> b!5344821 d!1714530))

(declare-fun d!1714532 () Bool)

(assert (=> d!1714532 (= (flatMap!755 lt!2179250 lambda!274306) (choose!40075 lt!2179250 lambda!274306))))

(declare-fun bs!1239254 () Bool)

(assert (= bs!1239254 d!1714532))

(declare-fun m!6377024 () Bool)

(assert (=> bs!1239254 m!6377024))

(assert (=> b!5344801 d!1714532))

(declare-fun d!1714534 () Bool)

(declare-fun c!930217 () Bool)

(declare-fun e!3318645 () Bool)

(assert (=> d!1714534 (= c!930217 e!3318645)))

(declare-fun res!2267743 () Bool)

(assert (=> d!1714534 (=> (not res!2267743) (not e!3318645))))

(assert (=> d!1714534 (= res!2267743 (is-Cons!61259 (exprs!4912 lt!2179233)))))

(declare-fun e!3318644 () (Set Context!8824))

(assert (=> d!1714534 (= (derivationStepZipperUp!400 lt!2179233 (h!67709 s!2326)) e!3318644)))

(declare-fun b!5345159 () Bool)

(declare-fun e!3318646 () (Set Context!8824))

(assert (=> b!5345159 (= e!3318644 e!3318646)))

(declare-fun c!930216 () Bool)

(assert (=> b!5345159 (= c!930216 (is-Cons!61259 (exprs!4912 lt!2179233)))))

(declare-fun b!5345160 () Bool)

(declare-fun call!382083 () (Set Context!8824))

(assert (=> b!5345160 (= e!3318646 call!382083)))

(declare-fun b!5345161 () Bool)

(assert (=> b!5345161 (= e!3318646 (as set.empty (Set Context!8824)))))

(declare-fun b!5345162 () Bool)

(assert (=> b!5345162 (= e!3318645 (nullable!5197 (h!67707 (exprs!4912 lt!2179233))))))

(declare-fun b!5345163 () Bool)

(assert (=> b!5345163 (= e!3318644 (set.union call!382083 (derivationStepZipperUp!400 (Context!8825 (t!374600 (exprs!4912 lt!2179233))) (h!67709 s!2326))))))

(declare-fun bm!382078 () Bool)

(assert (=> bm!382078 (= call!382083 (derivationStepZipperDown!476 (h!67707 (exprs!4912 lt!2179233)) (Context!8825 (t!374600 (exprs!4912 lt!2179233))) (h!67709 s!2326)))))

(assert (= (and d!1714534 res!2267743) b!5345162))

(assert (= (and d!1714534 c!930217) b!5345163))

(assert (= (and d!1714534 (not c!930217)) b!5345159))

(assert (= (and b!5345159 c!930216) b!5345160))

(assert (= (and b!5345159 (not c!930216)) b!5345161))

(assert (= (or b!5345163 b!5345160) bm!382078))

(declare-fun m!6377026 () Bool)

(assert (=> b!5345162 m!6377026))

(declare-fun m!6377028 () Bool)

(assert (=> b!5345163 m!6377028))

(declare-fun m!6377030 () Bool)

(assert (=> bm!382078 m!6377030))

(assert (=> b!5344801 d!1714534))

(declare-fun d!1714536 () Bool)

(assert (=> d!1714536 (= (flatMap!755 lt!2179250 lambda!274306) (dynLambda!24216 lambda!274306 lt!2179233))))

(declare-fun lt!2179377 () Unit!153630)

(assert (=> d!1714536 (= lt!2179377 (choose!40076 lt!2179250 lt!2179233 lambda!274306))))

(assert (=> d!1714536 (= lt!2179250 (set.insert lt!2179233 (as set.empty (Set Context!8824))))))

(assert (=> d!1714536 (= (lemmaFlatMapOnSingletonSet!287 lt!2179250 lt!2179233 lambda!274306) lt!2179377)))

(declare-fun b_lambda!205249 () Bool)

(assert (=> (not b_lambda!205249) (not d!1714536)))

(declare-fun bs!1239255 () Bool)

(assert (= bs!1239255 d!1714536))

(assert (=> bs!1239255 m!6376662))

(declare-fun m!6377032 () Bool)

(assert (=> bs!1239255 m!6377032))

(declare-fun m!6377034 () Bool)

(assert (=> bs!1239255 m!6377034))

(assert (=> bs!1239255 m!6376658))

(assert (=> b!5344801 d!1714536))

(declare-fun bs!1239256 () Bool)

(declare-fun d!1714538 () Bool)

(assert (= bs!1239256 (and d!1714538 b!5344797)))

(declare-fun lambda!274355 () Int)

(assert (=> bs!1239256 (= lambda!274355 lambda!274306)))

(assert (=> d!1714538 true))

(assert (=> d!1714538 (= (derivationStepZipper!1269 lt!2179250 (h!67709 s!2326)) (flatMap!755 lt!2179250 lambda!274355))))

(declare-fun bs!1239257 () Bool)

(assert (= bs!1239257 d!1714538))

(declare-fun m!6377036 () Bool)

(assert (=> bs!1239257 m!6377036))

(assert (=> b!5344801 d!1714538))

(declare-fun b!5345166 () Bool)

(declare-fun res!2267747 () Bool)

(declare-fun e!3318648 () Bool)

(assert (=> b!5345166 (=> (not res!2267747) (not e!3318648))))

(assert (=> b!5345166 (= res!2267747 (isEmpty!33237 (tail!10557 s!2326)))))

(declare-fun b!5345167 () Bool)

(declare-fun e!3318651 () Bool)

(declare-fun e!3318653 () Bool)

(assert (=> b!5345167 (= e!3318651 e!3318653)))

(declare-fun res!2267748 () Bool)

(assert (=> b!5345167 (=> (not res!2267748) (not e!3318653))))

(declare-fun lt!2179378 () Bool)

(assert (=> b!5345167 (= res!2267748 (not lt!2179378))))

(declare-fun b!5345168 () Bool)

(declare-fun e!3318647 () Bool)

(declare-fun call!382084 () Bool)

(assert (=> b!5345168 (= e!3318647 (= lt!2179378 call!382084))))

(declare-fun b!5345169 () Bool)

(declare-fun res!2267749 () Bool)

(declare-fun e!3318650 () Bool)

(assert (=> b!5345169 (=> res!2267749 e!3318650)))

(assert (=> b!5345169 (= res!2267749 (not (isEmpty!33237 (tail!10557 s!2326))))))

(declare-fun b!5345170 () Bool)

(declare-fun res!2267751 () Bool)

(assert (=> b!5345170 (=> res!2267751 e!3318651)))

(assert (=> b!5345170 (= res!2267751 e!3318648)))

(declare-fun res!2267744 () Bool)

(assert (=> b!5345170 (=> (not res!2267744) (not e!3318648))))

(assert (=> b!5345170 (= res!2267744 lt!2179378)))

(declare-fun b!5345171 () Bool)

(assert (=> b!5345171 (= e!3318653 e!3318650)))

(declare-fun res!2267746 () Bool)

(assert (=> b!5345171 (=> res!2267746 e!3318650)))

(assert (=> b!5345171 (= res!2267746 call!382084)))

(declare-fun b!5345172 () Bool)

(assert (=> b!5345172 (= e!3318648 (= (head!11460 s!2326) (c!930152 (Concat!23873 lt!2179254 lt!2179221))))))

(declare-fun b!5345173 () Bool)

(declare-fun e!3318652 () Bool)

(assert (=> b!5345173 (= e!3318652 (nullable!5197 (Concat!23873 lt!2179254 lt!2179221)))))

(declare-fun b!5345174 () Bool)

(declare-fun res!2267745 () Bool)

(assert (=> b!5345174 (=> res!2267745 e!3318651)))

(assert (=> b!5345174 (= res!2267745 (not (is-ElementMatch!15028 (Concat!23873 lt!2179254 lt!2179221))))))

(declare-fun e!3318649 () Bool)

(assert (=> b!5345174 (= e!3318649 e!3318651)))

(declare-fun b!5345175 () Bool)

(assert (=> b!5345175 (= e!3318649 (not lt!2179378))))

(declare-fun b!5345176 () Bool)

(assert (=> b!5345176 (= e!3318652 (matchR!7213 (derivativeStep!4192 (Concat!23873 lt!2179254 lt!2179221) (head!11460 s!2326)) (tail!10557 s!2326)))))

(declare-fun bm!382079 () Bool)

(assert (=> bm!382079 (= call!382084 (isEmpty!33237 s!2326))))

(declare-fun b!5345177 () Bool)

(assert (=> b!5345177 (= e!3318650 (not (= (head!11460 s!2326) (c!930152 (Concat!23873 lt!2179254 lt!2179221)))))))

(declare-fun d!1714540 () Bool)

(assert (=> d!1714540 e!3318647))

(declare-fun c!930222 () Bool)

(assert (=> d!1714540 (= c!930222 (is-EmptyExpr!15028 (Concat!23873 lt!2179254 lt!2179221)))))

(assert (=> d!1714540 (= lt!2179378 e!3318652)))

(declare-fun c!930220 () Bool)

(assert (=> d!1714540 (= c!930220 (isEmpty!33237 s!2326))))

(assert (=> d!1714540 (validRegex!6764 (Concat!23873 lt!2179254 lt!2179221))))

(assert (=> d!1714540 (= (matchR!7213 (Concat!23873 lt!2179254 lt!2179221) s!2326) lt!2179378)))

(declare-fun b!5345178 () Bool)

(declare-fun res!2267750 () Bool)

(assert (=> b!5345178 (=> (not res!2267750) (not e!3318648))))

(assert (=> b!5345178 (= res!2267750 (not call!382084))))

(declare-fun b!5345179 () Bool)

(assert (=> b!5345179 (= e!3318647 e!3318649)))

(declare-fun c!930221 () Bool)

(assert (=> b!5345179 (= c!930221 (is-EmptyLang!15028 (Concat!23873 lt!2179254 lt!2179221)))))

(assert (= (and d!1714540 c!930220) b!5345173))

(assert (= (and d!1714540 (not c!930220)) b!5345176))

(assert (= (and d!1714540 c!930222) b!5345168))

(assert (= (and d!1714540 (not c!930222)) b!5345179))

(assert (= (and b!5345179 c!930221) b!5345175))

(assert (= (and b!5345179 (not c!930221)) b!5345174))

(assert (= (and b!5345174 (not res!2267745)) b!5345170))

(assert (= (and b!5345170 res!2267744) b!5345178))

(assert (= (and b!5345178 res!2267750) b!5345166))

(assert (= (and b!5345166 res!2267747) b!5345172))

(assert (= (and b!5345170 (not res!2267751)) b!5345167))

(assert (= (and b!5345167 res!2267748) b!5345171))

(assert (= (and b!5345171 (not res!2267746)) b!5345169))

(assert (= (and b!5345169 (not res!2267749)) b!5345177))

(assert (= (or b!5345168 b!5345171 b!5345178) bm!382079))

(assert (=> bm!382079 m!6376946))

(assert (=> b!5345166 m!6376952))

(assert (=> b!5345166 m!6376952))

(assert (=> b!5345166 m!6376954))

(assert (=> b!5345172 m!6376956))

(assert (=> b!5345176 m!6376956))

(assert (=> b!5345176 m!6376956))

(declare-fun m!6377038 () Bool)

(assert (=> b!5345176 m!6377038))

(assert (=> b!5345176 m!6376952))

(assert (=> b!5345176 m!6377038))

(assert (=> b!5345176 m!6376952))

(declare-fun m!6377040 () Bool)

(assert (=> b!5345176 m!6377040))

(assert (=> b!5345177 m!6376956))

(declare-fun m!6377042 () Bool)

(assert (=> b!5345173 m!6377042))

(assert (=> d!1714540 m!6376946))

(declare-fun m!6377044 () Bool)

(assert (=> d!1714540 m!6377044))

(assert (=> b!5345169 m!6376952))

(assert (=> b!5345169 m!6376952))

(assert (=> b!5345169 m!6376954))

(assert (=> b!5344823 d!1714540))

(declare-fun b!5345180 () Bool)

(declare-fun res!2267755 () Bool)

(declare-fun e!3318655 () Bool)

(assert (=> b!5345180 (=> (not res!2267755) (not e!3318655))))

(assert (=> b!5345180 (= res!2267755 (isEmpty!33237 (tail!10557 s!2326)))))

(declare-fun b!5345181 () Bool)

(declare-fun e!3318658 () Bool)

(declare-fun e!3318660 () Bool)

(assert (=> b!5345181 (= e!3318658 e!3318660)))

(declare-fun res!2267756 () Bool)

(assert (=> b!5345181 (=> (not res!2267756) (not e!3318660))))

(declare-fun lt!2179379 () Bool)

(assert (=> b!5345181 (= res!2267756 (not lt!2179379))))

(declare-fun b!5345182 () Bool)

(declare-fun e!3318654 () Bool)

(declare-fun call!382085 () Bool)

(assert (=> b!5345182 (= e!3318654 (= lt!2179379 call!382085))))

(declare-fun b!5345183 () Bool)

(declare-fun res!2267757 () Bool)

(declare-fun e!3318657 () Bool)

(assert (=> b!5345183 (=> res!2267757 e!3318657)))

(assert (=> b!5345183 (= res!2267757 (not (isEmpty!33237 (tail!10557 s!2326))))))

(declare-fun b!5345184 () Bool)

(declare-fun res!2267759 () Bool)

(assert (=> b!5345184 (=> res!2267759 e!3318658)))

(assert (=> b!5345184 (= res!2267759 e!3318655)))

(declare-fun res!2267752 () Bool)

(assert (=> b!5345184 (=> (not res!2267752) (not e!3318655))))

(assert (=> b!5345184 (= res!2267752 lt!2179379)))

(declare-fun b!5345185 () Bool)

(assert (=> b!5345185 (= e!3318660 e!3318657)))

(declare-fun res!2267754 () Bool)

(assert (=> b!5345185 (=> res!2267754 e!3318657)))

(assert (=> b!5345185 (= res!2267754 call!382085)))

(declare-fun b!5345186 () Bool)

(assert (=> b!5345186 (= e!3318655 (= (head!11460 s!2326) (c!930152 (Concat!23873 (regOne!30568 r!7292) (regTwo!30568 r!7292)))))))

(declare-fun b!5345187 () Bool)

(declare-fun e!3318659 () Bool)

(assert (=> b!5345187 (= e!3318659 (nullable!5197 (Concat!23873 (regOne!30568 r!7292) (regTwo!30568 r!7292))))))

(declare-fun b!5345188 () Bool)

(declare-fun res!2267753 () Bool)

(assert (=> b!5345188 (=> res!2267753 e!3318658)))

(assert (=> b!5345188 (= res!2267753 (not (is-ElementMatch!15028 (Concat!23873 (regOne!30568 r!7292) (regTwo!30568 r!7292)))))))

(declare-fun e!3318656 () Bool)

(assert (=> b!5345188 (= e!3318656 e!3318658)))

(declare-fun b!5345189 () Bool)

(assert (=> b!5345189 (= e!3318656 (not lt!2179379))))

(declare-fun b!5345190 () Bool)

(assert (=> b!5345190 (= e!3318659 (matchR!7213 (derivativeStep!4192 (Concat!23873 (regOne!30568 r!7292) (regTwo!30568 r!7292)) (head!11460 s!2326)) (tail!10557 s!2326)))))

(declare-fun bm!382080 () Bool)

(assert (=> bm!382080 (= call!382085 (isEmpty!33237 s!2326))))

(declare-fun b!5345191 () Bool)

(assert (=> b!5345191 (= e!3318657 (not (= (head!11460 s!2326) (c!930152 (Concat!23873 (regOne!30568 r!7292) (regTwo!30568 r!7292))))))))

(declare-fun d!1714542 () Bool)

(assert (=> d!1714542 e!3318654))

(declare-fun c!930225 () Bool)

(assert (=> d!1714542 (= c!930225 (is-EmptyExpr!15028 (Concat!23873 (regOne!30568 r!7292) (regTwo!30568 r!7292))))))

(assert (=> d!1714542 (= lt!2179379 e!3318659)))

(declare-fun c!930223 () Bool)

(assert (=> d!1714542 (= c!930223 (isEmpty!33237 s!2326))))

(assert (=> d!1714542 (validRegex!6764 (Concat!23873 (regOne!30568 r!7292) (regTwo!30568 r!7292)))))

(assert (=> d!1714542 (= (matchR!7213 (Concat!23873 (regOne!30568 r!7292) (regTwo!30568 r!7292)) s!2326) lt!2179379)))

(declare-fun b!5345192 () Bool)

(declare-fun res!2267758 () Bool)

(assert (=> b!5345192 (=> (not res!2267758) (not e!3318655))))

(assert (=> b!5345192 (= res!2267758 (not call!382085))))

(declare-fun b!5345193 () Bool)

(assert (=> b!5345193 (= e!3318654 e!3318656)))

(declare-fun c!930224 () Bool)

(assert (=> b!5345193 (= c!930224 (is-EmptyLang!15028 (Concat!23873 (regOne!30568 r!7292) (regTwo!30568 r!7292))))))

(assert (= (and d!1714542 c!930223) b!5345187))

(assert (= (and d!1714542 (not c!930223)) b!5345190))

(assert (= (and d!1714542 c!930225) b!5345182))

(assert (= (and d!1714542 (not c!930225)) b!5345193))

(assert (= (and b!5345193 c!930224) b!5345189))

(assert (= (and b!5345193 (not c!930224)) b!5345188))

(assert (= (and b!5345188 (not res!2267753)) b!5345184))

(assert (= (and b!5345184 res!2267752) b!5345192))

(assert (= (and b!5345192 res!2267758) b!5345180))

(assert (= (and b!5345180 res!2267755) b!5345186))

(assert (= (and b!5345184 (not res!2267759)) b!5345181))

(assert (= (and b!5345181 res!2267756) b!5345185))

(assert (= (and b!5345185 (not res!2267754)) b!5345183))

(assert (= (and b!5345183 (not res!2267757)) b!5345191))

(assert (= (or b!5345182 b!5345185 b!5345192) bm!382080))

(assert (=> bm!382080 m!6376946))

(assert (=> b!5345180 m!6376952))

(assert (=> b!5345180 m!6376952))

(assert (=> b!5345180 m!6376954))

(assert (=> b!5345186 m!6376956))

(assert (=> b!5345190 m!6376956))

(assert (=> b!5345190 m!6376956))

(declare-fun m!6377046 () Bool)

(assert (=> b!5345190 m!6377046))

(assert (=> b!5345190 m!6376952))

(assert (=> b!5345190 m!6377046))

(assert (=> b!5345190 m!6376952))

(declare-fun m!6377048 () Bool)

(assert (=> b!5345190 m!6377048))

(assert (=> b!5345191 m!6376956))

(declare-fun m!6377050 () Bool)

(assert (=> b!5345187 m!6377050))

(assert (=> d!1714542 m!6376946))

(declare-fun m!6377052 () Bool)

(assert (=> d!1714542 m!6377052))

(assert (=> b!5345183 m!6376952))

(assert (=> b!5345183 m!6376952))

(assert (=> b!5345183 m!6376954))

(assert (=> b!5344802 d!1714542))

(declare-fun d!1714544 () Bool)

(declare-fun lt!2179382 () Int)

(assert (=> d!1714544 (>= lt!2179382 0)))

(declare-fun e!3318663 () Int)

(assert (=> d!1714544 (= lt!2179382 e!3318663)))

(declare-fun c!930229 () Bool)

(assert (=> d!1714544 (= c!930229 (is-Cons!61259 (exprs!4912 lt!2179233)))))

(assert (=> d!1714544 (= (contextDepthTotal!161 lt!2179233) lt!2179382)))

(declare-fun b!5345198 () Bool)

(declare-fun regexDepthTotal!76 (Regex!15028) Int)

(assert (=> b!5345198 (= e!3318663 (+ (regexDepthTotal!76 (h!67707 (exprs!4912 lt!2179233))) (contextDepthTotal!161 (Context!8825 (t!374600 (exprs!4912 lt!2179233))))))))

(declare-fun b!5345199 () Bool)

(assert (=> b!5345199 (= e!3318663 1)))

(assert (= (and d!1714544 c!930229) b!5345198))

(assert (= (and d!1714544 (not c!930229)) b!5345199))

(declare-fun m!6377054 () Bool)

(assert (=> b!5345198 m!6377054))

(declare-fun m!6377056 () Bool)

(assert (=> b!5345198 m!6377056))

(assert (=> b!5344798 d!1714544))

(declare-fun d!1714546 () Bool)

(declare-fun lt!2179383 () Int)

(assert (=> d!1714546 (>= lt!2179383 0)))

(declare-fun e!3318664 () Int)

(assert (=> d!1714546 (= lt!2179383 e!3318664)))

(declare-fun c!930230 () Bool)

(assert (=> d!1714546 (= c!930230 (is-Cons!61259 (exprs!4912 (h!67708 zl!343))))))

(assert (=> d!1714546 (= (contextDepthTotal!161 (h!67708 zl!343)) lt!2179383)))

(declare-fun b!5345200 () Bool)

(assert (=> b!5345200 (= e!3318664 (+ (regexDepthTotal!76 (h!67707 (exprs!4912 (h!67708 zl!343)))) (contextDepthTotal!161 (Context!8825 (t!374600 (exprs!4912 (h!67708 zl!343)))))))))

(declare-fun b!5345201 () Bool)

(assert (=> b!5345201 (= e!3318664 1)))

(assert (= (and d!1714546 c!930230) b!5345200))

(assert (= (and d!1714546 (not c!930230)) b!5345201))

(declare-fun m!6377058 () Bool)

(assert (=> b!5345200 m!6377058))

(declare-fun m!6377060 () Bool)

(assert (=> b!5345200 m!6377060))

(assert (=> b!5344798 d!1714546))

(declare-fun e!3318667 () Bool)

(declare-fun d!1714548 () Bool)

(assert (=> d!1714548 (= (matchZipper!1272 (set.union lt!2179236 lt!2179226) (t!374602 s!2326)) e!3318667)))

(declare-fun res!2267762 () Bool)

(assert (=> d!1714548 (=> res!2267762 e!3318667)))

(assert (=> d!1714548 (= res!2267762 (matchZipper!1272 lt!2179236 (t!374602 s!2326)))))

(declare-fun lt!2179386 () Unit!153630)

(declare-fun choose!40078 ((Set Context!8824) (Set Context!8824) List!61385) Unit!153630)

(assert (=> d!1714548 (= lt!2179386 (choose!40078 lt!2179236 lt!2179226 (t!374602 s!2326)))))

(assert (=> d!1714548 (= (lemmaZipperConcatMatchesSameAsBothZippers!265 lt!2179236 lt!2179226 (t!374602 s!2326)) lt!2179386)))

(declare-fun b!5345204 () Bool)

(assert (=> b!5345204 (= e!3318667 (matchZipper!1272 lt!2179226 (t!374602 s!2326)))))

(assert (= (and d!1714548 (not res!2267762)) b!5345204))

(assert (=> d!1714548 m!6376772))

(assert (=> d!1714548 m!6376714))

(declare-fun m!6377062 () Bool)

(assert (=> d!1714548 m!6377062))

(assert (=> b!5345204 m!6376688))

(assert (=> b!5344800 d!1714548))

(declare-fun d!1714550 () Bool)

(declare-fun c!930231 () Bool)

(assert (=> d!1714550 (= c!930231 (isEmpty!33237 (t!374602 s!2326)))))

(declare-fun e!3318668 () Bool)

(assert (=> d!1714550 (= (matchZipper!1272 lt!2179236 (t!374602 s!2326)) e!3318668)))

(declare-fun b!5345205 () Bool)

(assert (=> b!5345205 (= e!3318668 (nullableZipper!1371 lt!2179236))))

(declare-fun b!5345206 () Bool)

(assert (=> b!5345206 (= e!3318668 (matchZipper!1272 (derivationStepZipper!1269 lt!2179236 (head!11460 (t!374602 s!2326))) (tail!10557 (t!374602 s!2326))))))

(assert (= (and d!1714550 c!930231) b!5345205))

(assert (= (and d!1714550 (not c!930231)) b!5345206))

(assert (=> d!1714550 m!6376932))

(declare-fun m!6377064 () Bool)

(assert (=> b!5345205 m!6377064))

(assert (=> b!5345206 m!6376936))

(assert (=> b!5345206 m!6376936))

(declare-fun m!6377066 () Bool)

(assert (=> b!5345206 m!6377066))

(assert (=> b!5345206 m!6376940))

(assert (=> b!5345206 m!6377066))

(assert (=> b!5345206 m!6376940))

(declare-fun m!6377068 () Bool)

(assert (=> b!5345206 m!6377068))

(assert (=> b!5344800 d!1714550))

(declare-fun d!1714552 () Bool)

(declare-fun c!930232 () Bool)

(assert (=> d!1714552 (= c!930232 (isEmpty!33237 (t!374602 s!2326)))))

(declare-fun e!3318669 () Bool)

(assert (=> d!1714552 (= (matchZipper!1272 (set.union lt!2179236 lt!2179226) (t!374602 s!2326)) e!3318669)))

(declare-fun b!5345207 () Bool)

(assert (=> b!5345207 (= e!3318669 (nullableZipper!1371 (set.union lt!2179236 lt!2179226)))))

(declare-fun b!5345208 () Bool)

(assert (=> b!5345208 (= e!3318669 (matchZipper!1272 (derivationStepZipper!1269 (set.union lt!2179236 lt!2179226) (head!11460 (t!374602 s!2326))) (tail!10557 (t!374602 s!2326))))))

(assert (= (and d!1714552 c!930232) b!5345207))

(assert (= (and d!1714552 (not c!930232)) b!5345208))

(assert (=> d!1714552 m!6376932))

(declare-fun m!6377070 () Bool)

(assert (=> b!5345207 m!6377070))

(assert (=> b!5345208 m!6376936))

(assert (=> b!5345208 m!6376936))

(declare-fun m!6377072 () Bool)

(assert (=> b!5345208 m!6377072))

(assert (=> b!5345208 m!6376940))

(assert (=> b!5345208 m!6377072))

(assert (=> b!5345208 m!6376940))

(declare-fun m!6377074 () Bool)

(assert (=> b!5345208 m!6377074))

(assert (=> b!5344800 d!1714552))

(declare-fun d!1714554 () Bool)

(declare-fun c!930233 () Bool)

(assert (=> d!1714554 (= c!930233 (isEmpty!33237 (t!374602 s!2326)))))

(declare-fun e!3318670 () Bool)

(assert (=> d!1714554 (= (matchZipper!1272 lt!2179226 (t!374602 s!2326)) e!3318670)))

(declare-fun b!5345209 () Bool)

(assert (=> b!5345209 (= e!3318670 (nullableZipper!1371 lt!2179226))))

(declare-fun b!5345210 () Bool)

(assert (=> b!5345210 (= e!3318670 (matchZipper!1272 (derivationStepZipper!1269 lt!2179226 (head!11460 (t!374602 s!2326))) (tail!10557 (t!374602 s!2326))))))

(assert (= (and d!1714554 c!930233) b!5345209))

(assert (= (and d!1714554 (not c!930233)) b!5345210))

(assert (=> d!1714554 m!6376932))

(declare-fun m!6377076 () Bool)

(assert (=> b!5345209 m!6377076))

(assert (=> b!5345210 m!6376936))

(assert (=> b!5345210 m!6376936))

(declare-fun m!6377078 () Bool)

(assert (=> b!5345210 m!6377078))

(assert (=> b!5345210 m!6376940))

(assert (=> b!5345210 m!6377078))

(assert (=> b!5345210 m!6376940))

(declare-fun m!6377080 () Bool)

(assert (=> b!5345210 m!6377080))

(assert (=> b!5344820 d!1714554))

(declare-fun b!5345229 () Bool)

(declare-fun lt!2179393 () Unit!153630)

(declare-fun lt!2179395 () Unit!153630)

(assert (=> b!5345229 (= lt!2179393 lt!2179395)))

(declare-fun ++!13351 (List!61385 List!61385) List!61385)

(assert (=> b!5345229 (= (++!13351 (++!13351 Nil!61261 (Cons!61261 (h!67709 s!2326) Nil!61261)) (t!374602 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1766 (List!61385 C!30326 List!61385 List!61385) Unit!153630)

(assert (=> b!5345229 (= lt!2179395 (lemmaMoveElementToOtherListKeepsConcatEq!1766 Nil!61261 (h!67709 s!2326) (t!374602 s!2326) s!2326))))

(declare-fun e!3318684 () Option!15139)

(assert (=> b!5345229 (= e!3318684 (findConcatSeparation!1553 (regOne!30568 r!7292) (regTwo!30568 r!7292) (++!13351 Nil!61261 (Cons!61261 (h!67709 s!2326) Nil!61261)) (t!374602 s!2326) s!2326))))

(declare-fun b!5345230 () Bool)

(assert (=> b!5345230 (= e!3318684 None!15138)))

(declare-fun b!5345231 () Bool)

(declare-fun res!2267777 () Bool)

(declare-fun e!3318683 () Bool)

(assert (=> b!5345231 (=> (not res!2267777) (not e!3318683))))

(declare-fun lt!2179394 () Option!15139)

(declare-fun get!21071 (Option!15139) tuple2!64454)

(assert (=> b!5345231 (= res!2267777 (matchR!7213 (regTwo!30568 r!7292) (_2!35530 (get!21071 lt!2179394))))))

(declare-fun b!5345232 () Bool)

(declare-fun e!3318685 () Option!15139)

(assert (=> b!5345232 (= e!3318685 (Some!15138 (tuple2!64455 Nil!61261 s!2326)))))

(declare-fun b!5345233 () Bool)

(assert (=> b!5345233 (= e!3318685 e!3318684)))

(declare-fun c!930238 () Bool)

(assert (=> b!5345233 (= c!930238 (is-Nil!61261 s!2326))))

(declare-fun b!5345234 () Bool)

(declare-fun res!2267776 () Bool)

(assert (=> b!5345234 (=> (not res!2267776) (not e!3318683))))

(assert (=> b!5345234 (= res!2267776 (matchR!7213 (regOne!30568 r!7292) (_1!35530 (get!21071 lt!2179394))))))

(declare-fun b!5345235 () Bool)

(assert (=> b!5345235 (= e!3318683 (= (++!13351 (_1!35530 (get!21071 lt!2179394)) (_2!35530 (get!21071 lt!2179394))) s!2326))))

(declare-fun b!5345236 () Bool)

(declare-fun e!3318681 () Bool)

(assert (=> b!5345236 (= e!3318681 (matchR!7213 (regTwo!30568 r!7292) s!2326))))

(declare-fun b!5345237 () Bool)

(declare-fun e!3318682 () Bool)

(assert (=> b!5345237 (= e!3318682 (not (isDefined!11842 lt!2179394)))))

(declare-fun d!1714556 () Bool)

(assert (=> d!1714556 e!3318682))

(declare-fun res!2267775 () Bool)

(assert (=> d!1714556 (=> res!2267775 e!3318682)))

(assert (=> d!1714556 (= res!2267775 e!3318683)))

(declare-fun res!2267773 () Bool)

(assert (=> d!1714556 (=> (not res!2267773) (not e!3318683))))

(assert (=> d!1714556 (= res!2267773 (isDefined!11842 lt!2179394))))

(assert (=> d!1714556 (= lt!2179394 e!3318685)))

(declare-fun c!930239 () Bool)

(assert (=> d!1714556 (= c!930239 e!3318681)))

(declare-fun res!2267774 () Bool)

(assert (=> d!1714556 (=> (not res!2267774) (not e!3318681))))

(assert (=> d!1714556 (= res!2267774 (matchR!7213 (regOne!30568 r!7292) Nil!61261))))

(assert (=> d!1714556 (validRegex!6764 (regOne!30568 r!7292))))

(assert (=> d!1714556 (= (findConcatSeparation!1553 (regOne!30568 r!7292) (regTwo!30568 r!7292) Nil!61261 s!2326 s!2326) lt!2179394)))

(assert (= (and d!1714556 res!2267774) b!5345236))

(assert (= (and d!1714556 c!930239) b!5345232))

(assert (= (and d!1714556 (not c!930239)) b!5345233))

(assert (= (and b!5345233 c!930238) b!5345230))

(assert (= (and b!5345233 (not c!930238)) b!5345229))

(assert (= (and d!1714556 res!2267773) b!5345234))

(assert (= (and b!5345234 res!2267776) b!5345231))

(assert (= (and b!5345231 res!2267777) b!5345235))

(assert (= (and d!1714556 (not res!2267775)) b!5345237))

(declare-fun m!6377082 () Bool)

(assert (=> b!5345234 m!6377082))

(declare-fun m!6377084 () Bool)

(assert (=> b!5345234 m!6377084))

(assert (=> b!5345235 m!6377082))

(declare-fun m!6377086 () Bool)

(assert (=> b!5345235 m!6377086))

(declare-fun m!6377088 () Bool)

(assert (=> b!5345236 m!6377088))

(declare-fun m!6377090 () Bool)

(assert (=> b!5345237 m!6377090))

(assert (=> b!5345231 m!6377082))

(declare-fun m!6377092 () Bool)

(assert (=> b!5345231 m!6377092))

(declare-fun m!6377094 () Bool)

(assert (=> b!5345229 m!6377094))

(assert (=> b!5345229 m!6377094))

(declare-fun m!6377096 () Bool)

(assert (=> b!5345229 m!6377096))

(declare-fun m!6377098 () Bool)

(assert (=> b!5345229 m!6377098))

(assert (=> b!5345229 m!6377094))

(declare-fun m!6377100 () Bool)

(assert (=> b!5345229 m!6377100))

(assert (=> d!1714556 m!6377090))

(declare-fun m!6377102 () Bool)

(assert (=> d!1714556 m!6377102))

(declare-fun m!6377104 () Bool)

(assert (=> d!1714556 m!6377104))

(assert (=> b!5344827 d!1714556))

(declare-fun d!1714558 () Bool)

(declare-fun choose!40079 (Int) Bool)

(assert (=> d!1714558 (= (Exists!2209 lambda!274305) (choose!40079 lambda!274305))))

(declare-fun bs!1239258 () Bool)

(assert (= bs!1239258 d!1714558))

(declare-fun m!6377106 () Bool)

(assert (=> bs!1239258 m!6377106))

(assert (=> b!5344827 d!1714558))

(declare-fun d!1714560 () Bool)

(assert (=> d!1714560 (= (Exists!2209 lambda!274304) (choose!40079 lambda!274304))))

(declare-fun bs!1239259 () Bool)

(assert (= bs!1239259 d!1714560))

(declare-fun m!6377108 () Bool)

(assert (=> bs!1239259 m!6377108))

(assert (=> b!5344827 d!1714560))

(declare-fun bs!1239260 () Bool)

(declare-fun d!1714562 () Bool)

(assert (= bs!1239260 (and d!1714562 b!5344827)))

(declare-fun lambda!274358 () Int)

(assert (=> bs!1239260 (= lambda!274358 lambda!274304)))

(declare-fun bs!1239261 () Bool)

(assert (= bs!1239261 (and d!1714562 b!5344806)))

(assert (=> bs!1239261 (= (and (= (regOne!30568 r!7292) (regOne!30568 (regOne!30568 r!7292))) (= (regTwo!30568 r!7292) lt!2179224)) (= lambda!274358 lambda!274307))))

(assert (=> bs!1239261 (not (= lambda!274358 lambda!274308))))

(assert (=> bs!1239260 (not (= lambda!274358 lambda!274305))))

(declare-fun bs!1239262 () Bool)

(assert (= bs!1239262 (and d!1714562 b!5345029)))

(assert (=> bs!1239262 (not (= lambda!274358 lambda!274349))))

(assert (=> bs!1239261 (= (and (= (regOne!30568 r!7292) (regTwo!30568 (regOne!30568 r!7292))) (= (regTwo!30568 r!7292) lt!2179221)) (= lambda!274358 lambda!274309))))

(declare-fun bs!1239263 () Bool)

(assert (= bs!1239263 (and d!1714562 b!5345034)))

(assert (=> bs!1239263 (not (= lambda!274358 lambda!274348))))

(assert (=> bs!1239261 (not (= lambda!274358 lambda!274310))))

(assert (=> d!1714562 true))

(assert (=> d!1714562 true))

(assert (=> d!1714562 true))

(assert (=> d!1714562 (= (isDefined!11842 (findConcatSeparation!1553 (regOne!30568 r!7292) (regTwo!30568 r!7292) Nil!61261 s!2326 s!2326)) (Exists!2209 lambda!274358))))

(declare-fun lt!2179398 () Unit!153630)

(declare-fun choose!40080 (Regex!15028 Regex!15028 List!61385) Unit!153630)

(assert (=> d!1714562 (= lt!2179398 (choose!40080 (regOne!30568 r!7292) (regTwo!30568 r!7292) s!2326))))

(assert (=> d!1714562 (validRegex!6764 (regOne!30568 r!7292))))

(assert (=> d!1714562 (= (lemmaFindConcatSeparationEquivalentToExists!1317 (regOne!30568 r!7292) (regTwo!30568 r!7292) s!2326) lt!2179398)))

(declare-fun bs!1239264 () Bool)

(assert (= bs!1239264 d!1714562))

(declare-fun m!6377110 () Bool)

(assert (=> bs!1239264 m!6377110))

(assert (=> bs!1239264 m!6376670))

(declare-fun m!6377112 () Bool)

(assert (=> bs!1239264 m!6377112))

(assert (=> bs!1239264 m!6376670))

(assert (=> bs!1239264 m!6376672))

(assert (=> bs!1239264 m!6377104))

(assert (=> b!5344827 d!1714562))

(declare-fun bs!1239265 () Bool)

(declare-fun d!1714564 () Bool)

(assert (= bs!1239265 (and d!1714564 b!5344827)))

(declare-fun lambda!274363 () Int)

(assert (=> bs!1239265 (= lambda!274363 lambda!274304)))

(declare-fun bs!1239266 () Bool)

(assert (= bs!1239266 (and d!1714564 b!5344806)))

(assert (=> bs!1239266 (= (and (= (regOne!30568 r!7292) (regOne!30568 (regOne!30568 r!7292))) (= (regTwo!30568 r!7292) lt!2179224)) (= lambda!274363 lambda!274307))))

(assert (=> bs!1239266 (not (= lambda!274363 lambda!274308))))

(assert (=> bs!1239265 (not (= lambda!274363 lambda!274305))))

(declare-fun bs!1239267 () Bool)

(assert (= bs!1239267 (and d!1714564 b!5345029)))

(assert (=> bs!1239267 (not (= lambda!274363 lambda!274349))))

(assert (=> bs!1239266 (= (and (= (regOne!30568 r!7292) (regTwo!30568 (regOne!30568 r!7292))) (= (regTwo!30568 r!7292) lt!2179221)) (= lambda!274363 lambda!274309))))

(declare-fun bs!1239268 () Bool)

(assert (= bs!1239268 (and d!1714564 b!5345034)))

(assert (=> bs!1239268 (not (= lambda!274363 lambda!274348))))

(declare-fun bs!1239269 () Bool)

(assert (= bs!1239269 (and d!1714564 d!1714562)))

(assert (=> bs!1239269 (= lambda!274363 lambda!274358)))

(assert (=> bs!1239266 (not (= lambda!274363 lambda!274310))))

(assert (=> d!1714564 true))

(assert (=> d!1714564 true))

(assert (=> d!1714564 true))

(declare-fun lambda!274364 () Int)

(assert (=> bs!1239266 (not (= lambda!274364 lambda!274307))))

(assert (=> bs!1239266 (= (and (= (regOne!30568 r!7292) (regOne!30568 (regOne!30568 r!7292))) (= (regTwo!30568 r!7292) lt!2179224)) (= lambda!274364 lambda!274308))))

(assert (=> bs!1239265 (= lambda!274364 lambda!274305)))

(assert (=> bs!1239267 (= lambda!274364 lambda!274349)))

(assert (=> bs!1239266 (not (= lambda!274364 lambda!274309))))

(assert (=> bs!1239268 (not (= lambda!274364 lambda!274348))))

(assert (=> bs!1239269 (not (= lambda!274364 lambda!274358))))

(assert (=> bs!1239266 (= (and (= (regOne!30568 r!7292) (regTwo!30568 (regOne!30568 r!7292))) (= (regTwo!30568 r!7292) lt!2179221)) (= lambda!274364 lambda!274310))))

(declare-fun bs!1239270 () Bool)

(assert (= bs!1239270 d!1714564))

(assert (=> bs!1239270 (not (= lambda!274364 lambda!274363))))

(assert (=> bs!1239265 (not (= lambda!274364 lambda!274304))))

(assert (=> d!1714564 true))

(assert (=> d!1714564 true))

(assert (=> d!1714564 true))

(assert (=> d!1714564 (= (Exists!2209 lambda!274363) (Exists!2209 lambda!274364))))

(declare-fun lt!2179401 () Unit!153630)

(declare-fun choose!40081 (Regex!15028 Regex!15028 List!61385) Unit!153630)

(assert (=> d!1714564 (= lt!2179401 (choose!40081 (regOne!30568 r!7292) (regTwo!30568 r!7292) s!2326))))

(assert (=> d!1714564 (validRegex!6764 (regOne!30568 r!7292))))

(assert (=> d!1714564 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!863 (regOne!30568 r!7292) (regTwo!30568 r!7292) s!2326) lt!2179401)))

(declare-fun m!6377114 () Bool)

(assert (=> bs!1239270 m!6377114))

(declare-fun m!6377116 () Bool)

(assert (=> bs!1239270 m!6377116))

(declare-fun m!6377118 () Bool)

(assert (=> bs!1239270 m!6377118))

(assert (=> bs!1239270 m!6377104))

(assert (=> b!5344827 d!1714564))

(declare-fun d!1714566 () Bool)

(declare-fun isEmpty!33238 (Option!15139) Bool)

(assert (=> d!1714566 (= (isDefined!11842 (findConcatSeparation!1553 (regOne!30568 r!7292) (regTwo!30568 r!7292) Nil!61261 s!2326 s!2326)) (not (isEmpty!33238 (findConcatSeparation!1553 (regOne!30568 r!7292) (regTwo!30568 r!7292) Nil!61261 s!2326 s!2326))))))

(declare-fun bs!1239271 () Bool)

(assert (= bs!1239271 d!1714566))

(assert (=> bs!1239271 m!6376670))

(declare-fun m!6377120 () Bool)

(assert (=> bs!1239271 m!6377120))

(assert (=> b!5344827 d!1714566))

(declare-fun d!1714568 () Bool)

(assert (=> d!1714568 (= (matchR!7213 lt!2179229 s!2326) (matchZipper!1272 lt!2179250 s!2326))))

(declare-fun lt!2179404 () Unit!153630)

(declare-fun choose!40082 ((Set Context!8824) List!61384 Regex!15028 List!61385) Unit!153630)

(assert (=> d!1714568 (= lt!2179404 (choose!40082 lt!2179250 lt!2179247 lt!2179229 s!2326))))

(assert (=> d!1714568 (validRegex!6764 lt!2179229)))

(assert (=> d!1714568 (= (theoremZipperRegexEquiv!426 lt!2179250 lt!2179247 lt!2179229 s!2326) lt!2179404)))

(declare-fun bs!1239272 () Bool)

(assert (= bs!1239272 d!1714568))

(assert (=> bs!1239272 m!6376728))

(assert (=> bs!1239272 m!6376716))

(declare-fun m!6377122 () Bool)

(assert (=> bs!1239272 m!6377122))

(declare-fun m!6377124 () Bool)

(assert (=> bs!1239272 m!6377124))

(assert (=> b!5344806 d!1714568))

(declare-fun bs!1239273 () Bool)

(declare-fun d!1714570 () Bool)

(assert (= bs!1239273 (and d!1714570 b!5344806)))

(declare-fun lambda!274365 () Int)

(assert (=> bs!1239273 (= (and (= (regTwo!30568 (regOne!30568 r!7292)) (regOne!30568 (regOne!30568 r!7292))) (= lt!2179221 lt!2179224)) (= lambda!274365 lambda!274307))))

(assert (=> bs!1239273 (not (= lambda!274365 lambda!274308))))

(declare-fun bs!1239274 () Bool)

(assert (= bs!1239274 (and d!1714570 b!5344827)))

(assert (=> bs!1239274 (not (= lambda!274365 lambda!274305))))

(declare-fun bs!1239275 () Bool)

(assert (= bs!1239275 (and d!1714570 b!5345029)))

(assert (=> bs!1239275 (not (= lambda!274365 lambda!274349))))

(assert (=> bs!1239273 (= lambda!274365 lambda!274309)))

(declare-fun bs!1239276 () Bool)

(assert (= bs!1239276 (and d!1714570 b!5345034)))

(assert (=> bs!1239276 (not (= lambda!274365 lambda!274348))))

(assert (=> bs!1239273 (not (= lambda!274365 lambda!274310))))

(declare-fun bs!1239277 () Bool)

(assert (= bs!1239277 (and d!1714570 d!1714564)))

(assert (=> bs!1239277 (= (and (= (regTwo!30568 (regOne!30568 r!7292)) (regOne!30568 r!7292)) (= lt!2179221 (regTwo!30568 r!7292))) (= lambda!274365 lambda!274363))))

(assert (=> bs!1239274 (= (and (= (regTwo!30568 (regOne!30568 r!7292)) (regOne!30568 r!7292)) (= lt!2179221 (regTwo!30568 r!7292))) (= lambda!274365 lambda!274304))))

(assert (=> bs!1239277 (not (= lambda!274365 lambda!274364))))

(declare-fun bs!1239278 () Bool)

(assert (= bs!1239278 (and d!1714570 d!1714562)))

(assert (=> bs!1239278 (= (and (= (regTwo!30568 (regOne!30568 r!7292)) (regOne!30568 r!7292)) (= lt!2179221 (regTwo!30568 r!7292))) (= lambda!274365 lambda!274358))))

(assert (=> d!1714570 true))

(assert (=> d!1714570 true))

(assert (=> d!1714570 true))

(declare-fun lambda!274366 () Int)

(assert (=> bs!1239273 (not (= lambda!274366 lambda!274307))))

(assert (=> bs!1239273 (= (and (= (regTwo!30568 (regOne!30568 r!7292)) (regOne!30568 (regOne!30568 r!7292))) (= lt!2179221 lt!2179224)) (= lambda!274366 lambda!274308))))

(assert (=> bs!1239274 (= (and (= (regTwo!30568 (regOne!30568 r!7292)) (regOne!30568 r!7292)) (= lt!2179221 (regTwo!30568 r!7292))) (= lambda!274366 lambda!274305))))

(assert (=> bs!1239275 (= (and (= (regTwo!30568 (regOne!30568 r!7292)) (regOne!30568 r!7292)) (= lt!2179221 (regTwo!30568 r!7292))) (= lambda!274366 lambda!274349))))

(assert (=> bs!1239273 (not (= lambda!274366 lambda!274309))))

(assert (=> bs!1239276 (not (= lambda!274366 lambda!274348))))

(assert (=> bs!1239273 (= lambda!274366 lambda!274310)))

(declare-fun bs!1239279 () Bool)

(assert (= bs!1239279 d!1714570))

(assert (=> bs!1239279 (not (= lambda!274366 lambda!274365))))

(assert (=> bs!1239277 (not (= lambda!274366 lambda!274363))))

(assert (=> bs!1239274 (not (= lambda!274366 lambda!274304))))

(assert (=> bs!1239277 (= (and (= (regTwo!30568 (regOne!30568 r!7292)) (regOne!30568 r!7292)) (= lt!2179221 (regTwo!30568 r!7292))) (= lambda!274366 lambda!274364))))

(assert (=> bs!1239278 (not (= lambda!274366 lambda!274358))))

(assert (=> d!1714570 true))

(assert (=> d!1714570 true))

(assert (=> d!1714570 true))

(assert (=> d!1714570 (= (Exists!2209 lambda!274365) (Exists!2209 lambda!274366))))

(declare-fun lt!2179405 () Unit!153630)

(assert (=> d!1714570 (= lt!2179405 (choose!40081 (regTwo!30568 (regOne!30568 r!7292)) lt!2179221 s!2326))))

(assert (=> d!1714570 (validRegex!6764 (regTwo!30568 (regOne!30568 r!7292)))))

(assert (=> d!1714570 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!863 (regTwo!30568 (regOne!30568 r!7292)) lt!2179221 s!2326) lt!2179405)))

(declare-fun m!6377126 () Bool)

(assert (=> bs!1239279 m!6377126))

(declare-fun m!6377128 () Bool)

(assert (=> bs!1239279 m!6377128))

(declare-fun m!6377130 () Bool)

(assert (=> bs!1239279 m!6377130))

(declare-fun m!6377132 () Bool)

(assert (=> bs!1239279 m!6377132))

(assert (=> b!5344806 d!1714570))

(declare-fun bs!1239280 () Bool)

(declare-fun d!1714572 () Bool)

(assert (= bs!1239280 (and d!1714572 b!5344794)))

(declare-fun lambda!274371 () Int)

(assert (=> bs!1239280 (= lambda!274371 lambda!274311)))

(declare-fun bs!1239281 () Bool)

(assert (= bs!1239281 (and d!1714572 d!1714528)))

(assert (=> bs!1239281 (= lambda!274371 lambda!274352)))

(declare-fun b!5345271 () Bool)

(declare-fun e!3318704 () Bool)

(declare-fun e!3318708 () Bool)

(assert (=> b!5345271 (= e!3318704 e!3318708)))

(declare-fun c!930250 () Bool)

(declare-fun tail!10558 (List!61383) List!61383)

(assert (=> b!5345271 (= c!930250 (isEmpty!33233 (tail!10558 lt!2179232)))))

(declare-fun b!5345272 () Bool)

(declare-fun e!3318706 () Bool)

(assert (=> b!5345272 (= e!3318706 (isEmpty!33233 (t!374600 lt!2179232)))))

(declare-fun b!5345273 () Bool)

(declare-fun e!3318705 () Regex!15028)

(assert (=> b!5345273 (= e!3318705 (h!67707 lt!2179232))))

(declare-fun b!5345274 () Bool)

(declare-fun e!3318709 () Regex!15028)

(assert (=> b!5345274 (= e!3318709 EmptyExpr!15028)))

(declare-fun b!5345275 () Bool)

(assert (=> b!5345275 (= e!3318709 (Concat!23873 (h!67707 lt!2179232) (generalisedConcat!697 (t!374600 lt!2179232))))))

(declare-fun b!5345276 () Bool)

(declare-fun e!3318707 () Bool)

(assert (=> b!5345276 (= e!3318707 e!3318704)))

(declare-fun c!930251 () Bool)

(assert (=> b!5345276 (= c!930251 (isEmpty!33233 lt!2179232))))

(declare-fun b!5345277 () Bool)

(declare-fun lt!2179408 () Regex!15028)

(declare-fun isConcat!429 (Regex!15028) Bool)

(assert (=> b!5345277 (= e!3318708 (isConcat!429 lt!2179408))))

(assert (=> d!1714572 e!3318707))

(declare-fun res!2267794 () Bool)

(assert (=> d!1714572 (=> (not res!2267794) (not e!3318707))))

(assert (=> d!1714572 (= res!2267794 (validRegex!6764 lt!2179408))))

(assert (=> d!1714572 (= lt!2179408 e!3318705)))

(declare-fun c!930249 () Bool)

(assert (=> d!1714572 (= c!930249 e!3318706)))

(declare-fun res!2267795 () Bool)

(assert (=> d!1714572 (=> (not res!2267795) (not e!3318706))))

(assert (=> d!1714572 (= res!2267795 (is-Cons!61259 lt!2179232))))

(assert (=> d!1714572 (forall!14450 lt!2179232 lambda!274371)))

(assert (=> d!1714572 (= (generalisedConcat!697 lt!2179232) lt!2179408)))

(declare-fun b!5345270 () Bool)

(declare-fun isEmptyExpr!906 (Regex!15028) Bool)

(assert (=> b!5345270 (= e!3318704 (isEmptyExpr!906 lt!2179408))))

(declare-fun b!5345278 () Bool)

(assert (=> b!5345278 (= e!3318705 e!3318709)))

(declare-fun c!930248 () Bool)

(assert (=> b!5345278 (= c!930248 (is-Cons!61259 lt!2179232))))

(declare-fun b!5345279 () Bool)

(declare-fun head!11461 (List!61383) Regex!15028)

(assert (=> b!5345279 (= e!3318708 (= lt!2179408 (head!11461 lt!2179232)))))

(assert (= (and d!1714572 res!2267795) b!5345272))

(assert (= (and d!1714572 c!930249) b!5345273))

(assert (= (and d!1714572 (not c!930249)) b!5345278))

(assert (= (and b!5345278 c!930248) b!5345275))

(assert (= (and b!5345278 (not c!930248)) b!5345274))

(assert (= (and d!1714572 res!2267794) b!5345276))

(assert (= (and b!5345276 c!930251) b!5345270))

(assert (= (and b!5345276 (not c!930251)) b!5345271))

(assert (= (and b!5345271 c!930250) b!5345279))

(assert (= (and b!5345271 (not c!930250)) b!5345277))

(declare-fun m!6377136 () Bool)

(assert (=> b!5345277 m!6377136))

(declare-fun m!6377138 () Bool)

(assert (=> d!1714572 m!6377138))

(declare-fun m!6377140 () Bool)

(assert (=> d!1714572 m!6377140))

(declare-fun m!6377142 () Bool)

(assert (=> b!5345275 m!6377142))

(declare-fun m!6377144 () Bool)

(assert (=> b!5345272 m!6377144))

(declare-fun m!6377146 () Bool)

(assert (=> b!5345279 m!6377146))

(declare-fun m!6377148 () Bool)

(assert (=> b!5345276 m!6377148))

(declare-fun m!6377150 () Bool)

(assert (=> b!5345271 m!6377150))

(assert (=> b!5345271 m!6377150))

(declare-fun m!6377152 () Bool)

(assert (=> b!5345271 m!6377152))

(declare-fun m!6377154 () Bool)

(assert (=> b!5345270 m!6377154))

(assert (=> b!5344806 d!1714572))

(declare-fun d!1714578 () Bool)

(assert (=> d!1714578 (= (isDefined!11842 (findConcatSeparation!1553 (regTwo!30568 (regOne!30568 r!7292)) lt!2179221 Nil!61261 s!2326 s!2326)) (not (isEmpty!33238 (findConcatSeparation!1553 (regTwo!30568 (regOne!30568 r!7292)) lt!2179221 Nil!61261 s!2326 s!2326))))))

(declare-fun bs!1239284 () Bool)

(assert (= bs!1239284 d!1714578))

(assert (=> bs!1239284 m!6376722))

(declare-fun m!6377156 () Bool)

(assert (=> bs!1239284 m!6377156))

(assert (=> b!5344806 d!1714578))

(declare-fun bs!1239285 () Bool)

(declare-fun b!5345286 () Bool)

(assert (= bs!1239285 (and b!5345286 d!1714570)))

(declare-fun lambda!274373 () Int)

(assert (=> bs!1239285 (not (= lambda!274373 lambda!274366))))

(declare-fun bs!1239286 () Bool)

(assert (= bs!1239286 (and b!5345286 b!5344806)))

(assert (=> bs!1239286 (not (= lambda!274373 lambda!274307))))

(assert (=> bs!1239286 (not (= lambda!274373 lambda!274308))))

(declare-fun bs!1239287 () Bool)

(assert (= bs!1239287 (and b!5345286 b!5344827)))

(assert (=> bs!1239287 (not (= lambda!274373 lambda!274305))))

(declare-fun bs!1239288 () Bool)

(assert (= bs!1239288 (and b!5345286 b!5345029)))

(assert (=> bs!1239288 (not (= lambda!274373 lambda!274349))))

(assert (=> bs!1239286 (not (= lambda!274373 lambda!274309))))

(declare-fun bs!1239289 () Bool)

(assert (= bs!1239289 (and b!5345286 b!5345034)))

(assert (=> bs!1239289 (= (and (= (reg!15357 lt!2179229) (reg!15357 r!7292)) (= lt!2179229 r!7292)) (= lambda!274373 lambda!274348))))

(assert (=> bs!1239286 (not (= lambda!274373 lambda!274310))))

(assert (=> bs!1239285 (not (= lambda!274373 lambda!274365))))

(declare-fun bs!1239290 () Bool)

(assert (= bs!1239290 (and b!5345286 d!1714564)))

(assert (=> bs!1239290 (not (= lambda!274373 lambda!274363))))

(assert (=> bs!1239287 (not (= lambda!274373 lambda!274304))))

(assert (=> bs!1239290 (not (= lambda!274373 lambda!274364))))

(declare-fun bs!1239291 () Bool)

(assert (= bs!1239291 (and b!5345286 d!1714562)))

(assert (=> bs!1239291 (not (= lambda!274373 lambda!274358))))

(assert (=> b!5345286 true))

(assert (=> b!5345286 true))

(declare-fun bs!1239292 () Bool)

(declare-fun b!5345281 () Bool)

(assert (= bs!1239292 (and b!5345281 d!1714570)))

(declare-fun lambda!274374 () Int)

(assert (=> bs!1239292 (= (and (= (regOne!30568 lt!2179229) (regTwo!30568 (regOne!30568 r!7292))) (= (regTwo!30568 lt!2179229) lt!2179221)) (= lambda!274374 lambda!274366))))

(declare-fun bs!1239293 () Bool)

(assert (= bs!1239293 (and b!5345281 b!5344806)))

(assert (=> bs!1239293 (not (= lambda!274374 lambda!274307))))

(assert (=> bs!1239293 (= (and (= (regOne!30568 lt!2179229) (regOne!30568 (regOne!30568 r!7292))) (= (regTwo!30568 lt!2179229) lt!2179224)) (= lambda!274374 lambda!274308))))

(declare-fun bs!1239294 () Bool)

(assert (= bs!1239294 (and b!5345281 b!5344827)))

(assert (=> bs!1239294 (= (and (= (regOne!30568 lt!2179229) (regOne!30568 r!7292)) (= (regTwo!30568 lt!2179229) (regTwo!30568 r!7292))) (= lambda!274374 lambda!274305))))

(declare-fun bs!1239295 () Bool)

(assert (= bs!1239295 (and b!5345281 b!5345029)))

(assert (=> bs!1239295 (= (and (= (regOne!30568 lt!2179229) (regOne!30568 r!7292)) (= (regTwo!30568 lt!2179229) (regTwo!30568 r!7292))) (= lambda!274374 lambda!274349))))

(assert (=> bs!1239293 (not (= lambda!274374 lambda!274309))))

(declare-fun bs!1239296 () Bool)

(assert (= bs!1239296 (and b!5345281 b!5345034)))

(assert (=> bs!1239296 (not (= lambda!274374 lambda!274348))))

(assert (=> bs!1239293 (= (and (= (regOne!30568 lt!2179229) (regTwo!30568 (regOne!30568 r!7292))) (= (regTwo!30568 lt!2179229) lt!2179221)) (= lambda!274374 lambda!274310))))

(assert (=> bs!1239292 (not (= lambda!274374 lambda!274365))))

(declare-fun bs!1239297 () Bool)

(assert (= bs!1239297 (and b!5345281 b!5345286)))

(assert (=> bs!1239297 (not (= lambda!274374 lambda!274373))))

(declare-fun bs!1239298 () Bool)

(assert (= bs!1239298 (and b!5345281 d!1714564)))

(assert (=> bs!1239298 (not (= lambda!274374 lambda!274363))))

(assert (=> bs!1239294 (not (= lambda!274374 lambda!274304))))

(assert (=> bs!1239298 (= (and (= (regOne!30568 lt!2179229) (regOne!30568 r!7292)) (= (regTwo!30568 lt!2179229) (regTwo!30568 r!7292))) (= lambda!274374 lambda!274364))))

(declare-fun bs!1239299 () Bool)

(assert (= bs!1239299 (and b!5345281 d!1714562)))

(assert (=> bs!1239299 (not (= lambda!274374 lambda!274358))))

(assert (=> b!5345281 true))

(assert (=> b!5345281 true))

(declare-fun b!5345280 () Bool)

(declare-fun e!3318710 () Bool)

(assert (=> b!5345280 (= e!3318710 (matchRSpec!2131 (regTwo!30569 lt!2179229) s!2326))))

(declare-fun d!1714580 () Bool)

(declare-fun c!930254 () Bool)

(assert (=> d!1714580 (= c!930254 (is-EmptyExpr!15028 lt!2179229))))

(declare-fun e!3318712 () Bool)

(assert (=> d!1714580 (= (matchRSpec!2131 lt!2179229 s!2326) e!3318712)))

(declare-fun e!3318714 () Bool)

(declare-fun call!382087 () Bool)

(assert (=> b!5345281 (= e!3318714 call!382087)))

(declare-fun b!5345282 () Bool)

(declare-fun e!3318716 () Bool)

(assert (=> b!5345282 (= e!3318716 e!3318714)))

(declare-fun c!930252 () Bool)

(assert (=> b!5345282 (= c!930252 (is-Star!15028 lt!2179229))))

(declare-fun b!5345283 () Bool)

(declare-fun e!3318711 () Bool)

(assert (=> b!5345283 (= e!3318711 (= s!2326 (Cons!61261 (c!930152 lt!2179229) Nil!61261)))))

(declare-fun bm!382081 () Bool)

(declare-fun call!382086 () Bool)

(assert (=> bm!382081 (= call!382086 (isEmpty!33237 s!2326))))

(declare-fun b!5345284 () Bool)

(assert (=> b!5345284 (= e!3318716 e!3318710)))

(declare-fun res!2267796 () Bool)

(assert (=> b!5345284 (= res!2267796 (matchRSpec!2131 (regOne!30569 lt!2179229) s!2326))))

(assert (=> b!5345284 (=> res!2267796 e!3318710)))

(declare-fun b!5345285 () Bool)

(declare-fun c!930255 () Bool)

(assert (=> b!5345285 (= c!930255 (is-Union!15028 lt!2179229))))

(assert (=> b!5345285 (= e!3318711 e!3318716)))

(declare-fun e!3318713 () Bool)

(assert (=> b!5345286 (= e!3318713 call!382087)))

(declare-fun b!5345287 () Bool)

(assert (=> b!5345287 (= e!3318712 call!382086)))

(declare-fun b!5345288 () Bool)

(declare-fun e!3318715 () Bool)

(assert (=> b!5345288 (= e!3318712 e!3318715)))

(declare-fun res!2267798 () Bool)

(assert (=> b!5345288 (= res!2267798 (not (is-EmptyLang!15028 lt!2179229)))))

(assert (=> b!5345288 (=> (not res!2267798) (not e!3318715))))

(declare-fun bm!382082 () Bool)

(assert (=> bm!382082 (= call!382087 (Exists!2209 (ite c!930252 lambda!274373 lambda!274374)))))

(declare-fun b!5345289 () Bool)

(declare-fun res!2267797 () Bool)

(assert (=> b!5345289 (=> res!2267797 e!3318713)))

(assert (=> b!5345289 (= res!2267797 call!382086)))

(assert (=> b!5345289 (= e!3318714 e!3318713)))

(declare-fun b!5345290 () Bool)

(declare-fun c!930253 () Bool)

(assert (=> b!5345290 (= c!930253 (is-ElementMatch!15028 lt!2179229))))

(assert (=> b!5345290 (= e!3318715 e!3318711)))

(assert (= (and d!1714580 c!930254) b!5345287))

(assert (= (and d!1714580 (not c!930254)) b!5345288))

(assert (= (and b!5345288 res!2267798) b!5345290))

(assert (= (and b!5345290 c!930253) b!5345283))

(assert (= (and b!5345290 (not c!930253)) b!5345285))

(assert (= (and b!5345285 c!930255) b!5345284))

(assert (= (and b!5345285 (not c!930255)) b!5345282))

(assert (= (and b!5345284 (not res!2267796)) b!5345280))

(assert (= (and b!5345282 c!930252) b!5345289))

(assert (= (and b!5345282 (not c!930252)) b!5345281))

(assert (= (and b!5345289 (not res!2267797)) b!5345286))

(assert (= (or b!5345286 b!5345281) bm!382082))

(assert (= (or b!5345287 b!5345289) bm!382081))

(declare-fun m!6377158 () Bool)

(assert (=> b!5345280 m!6377158))

(assert (=> bm!382081 m!6376946))

(declare-fun m!6377160 () Bool)

(assert (=> b!5345284 m!6377160))

(declare-fun m!6377162 () Bool)

(assert (=> bm!382082 m!6377162))

(assert (=> b!5344806 d!1714580))

(declare-fun b!5345319 () Bool)

(declare-fun lt!2179411 () Unit!153630)

(declare-fun lt!2179413 () Unit!153630)

(assert (=> b!5345319 (= lt!2179411 lt!2179413)))

(assert (=> b!5345319 (= (++!13351 (++!13351 Nil!61261 (Cons!61261 (h!67709 s!2326) Nil!61261)) (t!374602 s!2326)) s!2326)))

(assert (=> b!5345319 (= lt!2179413 (lemmaMoveElementToOtherListKeepsConcatEq!1766 Nil!61261 (h!67709 s!2326) (t!374602 s!2326) s!2326))))

(declare-fun e!3318734 () Option!15139)

(assert (=> b!5345319 (= e!3318734 (findConcatSeparation!1553 (regTwo!30568 (regOne!30568 r!7292)) lt!2179221 (++!13351 Nil!61261 (Cons!61261 (h!67709 s!2326) Nil!61261)) (t!374602 s!2326) s!2326))))

(declare-fun b!5345320 () Bool)

(assert (=> b!5345320 (= e!3318734 None!15138)))

(declare-fun b!5345321 () Bool)

(declare-fun res!2267819 () Bool)

(declare-fun e!3318733 () Bool)

(assert (=> b!5345321 (=> (not res!2267819) (not e!3318733))))

(declare-fun lt!2179412 () Option!15139)

(assert (=> b!5345321 (= res!2267819 (matchR!7213 lt!2179221 (_2!35530 (get!21071 lt!2179412))))))

(declare-fun b!5345322 () Bool)

(declare-fun e!3318735 () Option!15139)

(assert (=> b!5345322 (= e!3318735 (Some!15138 (tuple2!64455 Nil!61261 s!2326)))))

(declare-fun b!5345323 () Bool)

(assert (=> b!5345323 (= e!3318735 e!3318734)))

(declare-fun c!930262 () Bool)

(assert (=> b!5345323 (= c!930262 (is-Nil!61261 s!2326))))

(declare-fun b!5345324 () Bool)

(declare-fun res!2267818 () Bool)

(assert (=> b!5345324 (=> (not res!2267818) (not e!3318733))))

(assert (=> b!5345324 (= res!2267818 (matchR!7213 (regTwo!30568 (regOne!30568 r!7292)) (_1!35530 (get!21071 lt!2179412))))))

(declare-fun b!5345325 () Bool)

(assert (=> b!5345325 (= e!3318733 (= (++!13351 (_1!35530 (get!21071 lt!2179412)) (_2!35530 (get!21071 lt!2179412))) s!2326))))

(declare-fun b!5345326 () Bool)

(declare-fun e!3318731 () Bool)

(assert (=> b!5345326 (= e!3318731 (matchR!7213 lt!2179221 s!2326))))

(declare-fun b!5345327 () Bool)

(declare-fun e!3318732 () Bool)

(assert (=> b!5345327 (= e!3318732 (not (isDefined!11842 lt!2179412)))))

(declare-fun d!1714582 () Bool)

(assert (=> d!1714582 e!3318732))

(declare-fun res!2267817 () Bool)

(assert (=> d!1714582 (=> res!2267817 e!3318732)))

(assert (=> d!1714582 (= res!2267817 e!3318733)))

(declare-fun res!2267815 () Bool)

(assert (=> d!1714582 (=> (not res!2267815) (not e!3318733))))

(assert (=> d!1714582 (= res!2267815 (isDefined!11842 lt!2179412))))

(assert (=> d!1714582 (= lt!2179412 e!3318735)))

(declare-fun c!930263 () Bool)

(assert (=> d!1714582 (= c!930263 e!3318731)))

(declare-fun res!2267816 () Bool)

(assert (=> d!1714582 (=> (not res!2267816) (not e!3318731))))

(assert (=> d!1714582 (= res!2267816 (matchR!7213 (regTwo!30568 (regOne!30568 r!7292)) Nil!61261))))

(assert (=> d!1714582 (validRegex!6764 (regTwo!30568 (regOne!30568 r!7292)))))

(assert (=> d!1714582 (= (findConcatSeparation!1553 (regTwo!30568 (regOne!30568 r!7292)) lt!2179221 Nil!61261 s!2326 s!2326) lt!2179412)))

(assert (= (and d!1714582 res!2267816) b!5345326))

(assert (= (and d!1714582 c!930263) b!5345322))

(assert (= (and d!1714582 (not c!930263)) b!5345323))

(assert (= (and b!5345323 c!930262) b!5345320))

(assert (= (and b!5345323 (not c!930262)) b!5345319))

(assert (= (and d!1714582 res!2267815) b!5345324))

(assert (= (and b!5345324 res!2267818) b!5345321))

(assert (= (and b!5345321 res!2267819) b!5345325))

(assert (= (and d!1714582 (not res!2267817)) b!5345327))

(declare-fun m!6377164 () Bool)

(assert (=> b!5345324 m!6377164))

(declare-fun m!6377166 () Bool)

(assert (=> b!5345324 m!6377166))

(assert (=> b!5345325 m!6377164))

(declare-fun m!6377168 () Bool)

(assert (=> b!5345325 m!6377168))

(declare-fun m!6377170 () Bool)

(assert (=> b!5345326 m!6377170))

(declare-fun m!6377172 () Bool)

(assert (=> b!5345327 m!6377172))

(assert (=> b!5345321 m!6377164))

(declare-fun m!6377174 () Bool)

(assert (=> b!5345321 m!6377174))

(assert (=> b!5345319 m!6377094))

(assert (=> b!5345319 m!6377094))

(assert (=> b!5345319 m!6377096))

(assert (=> b!5345319 m!6377098))

(assert (=> b!5345319 m!6377094))

(declare-fun m!6377176 () Bool)

(assert (=> b!5345319 m!6377176))

(assert (=> d!1714582 m!6377172))

(declare-fun m!6377178 () Bool)

(assert (=> d!1714582 m!6377178))

(assert (=> d!1714582 m!6377132))

(assert (=> b!5344806 d!1714582))

(declare-fun d!1714584 () Bool)

(assert (=> d!1714584 (= (Exists!2209 lambda!274308) (choose!40079 lambda!274308))))

(declare-fun bs!1239300 () Bool)

(assert (= bs!1239300 d!1714584))

(declare-fun m!6377180 () Bool)

(assert (=> bs!1239300 m!6377180))

(assert (=> b!5344806 d!1714584))

(declare-fun d!1714586 () Bool)

(assert (=> d!1714586 (= (Exists!2209 lambda!274307) (choose!40079 lambda!274307))))

(declare-fun bs!1239301 () Bool)

(assert (= bs!1239301 d!1714586))

(declare-fun m!6377182 () Bool)

(assert (=> bs!1239301 m!6377182))

(assert (=> b!5344806 d!1714586))

(declare-fun bs!1239302 () Bool)

(declare-fun d!1714588 () Bool)

(assert (= bs!1239302 (and d!1714588 b!5344794)))

(declare-fun lambda!274375 () Int)

(assert (=> bs!1239302 (= lambda!274375 lambda!274311)))

(declare-fun bs!1239303 () Bool)

(assert (= bs!1239303 (and d!1714588 d!1714528)))

(assert (=> bs!1239303 (= lambda!274375 lambda!274352)))

(declare-fun bs!1239304 () Bool)

(assert (= bs!1239304 (and d!1714588 d!1714572)))

(assert (=> bs!1239304 (= lambda!274375 lambda!274371)))

(declare-fun b!5345329 () Bool)

(declare-fun e!3318736 () Bool)

(declare-fun e!3318740 () Bool)

(assert (=> b!5345329 (= e!3318736 e!3318740)))

(declare-fun c!930266 () Bool)

(assert (=> b!5345329 (= c!930266 (isEmpty!33233 (tail!10558 lt!2179245)))))

(declare-fun b!5345330 () Bool)

(declare-fun e!3318738 () Bool)

(assert (=> b!5345330 (= e!3318738 (isEmpty!33233 (t!374600 lt!2179245)))))

(declare-fun b!5345331 () Bool)

(declare-fun e!3318737 () Regex!15028)

(assert (=> b!5345331 (= e!3318737 (h!67707 lt!2179245))))

(declare-fun b!5345332 () Bool)

(declare-fun e!3318741 () Regex!15028)

(assert (=> b!5345332 (= e!3318741 EmptyExpr!15028)))

(declare-fun b!5345333 () Bool)

(assert (=> b!5345333 (= e!3318741 (Concat!23873 (h!67707 lt!2179245) (generalisedConcat!697 (t!374600 lt!2179245))))))

(declare-fun b!5345334 () Bool)

(declare-fun e!3318739 () Bool)

(assert (=> b!5345334 (= e!3318739 e!3318736)))

(declare-fun c!930267 () Bool)

(assert (=> b!5345334 (= c!930267 (isEmpty!33233 lt!2179245))))

(declare-fun b!5345335 () Bool)

(declare-fun lt!2179414 () Regex!15028)

(assert (=> b!5345335 (= e!3318740 (isConcat!429 lt!2179414))))

(assert (=> d!1714588 e!3318739))

(declare-fun res!2267820 () Bool)

(assert (=> d!1714588 (=> (not res!2267820) (not e!3318739))))

(assert (=> d!1714588 (= res!2267820 (validRegex!6764 lt!2179414))))

(assert (=> d!1714588 (= lt!2179414 e!3318737)))

(declare-fun c!930265 () Bool)

(assert (=> d!1714588 (= c!930265 e!3318738)))

(declare-fun res!2267821 () Bool)

(assert (=> d!1714588 (=> (not res!2267821) (not e!3318738))))

(assert (=> d!1714588 (= res!2267821 (is-Cons!61259 lt!2179245))))

(assert (=> d!1714588 (forall!14450 lt!2179245 lambda!274375)))

(assert (=> d!1714588 (= (generalisedConcat!697 lt!2179245) lt!2179414)))

(declare-fun b!5345328 () Bool)

(assert (=> b!5345328 (= e!3318736 (isEmptyExpr!906 lt!2179414))))

(declare-fun b!5345336 () Bool)

(assert (=> b!5345336 (= e!3318737 e!3318741)))

(declare-fun c!930264 () Bool)

(assert (=> b!5345336 (= c!930264 (is-Cons!61259 lt!2179245))))

(declare-fun b!5345337 () Bool)

(assert (=> b!5345337 (= e!3318740 (= lt!2179414 (head!11461 lt!2179245)))))

(assert (= (and d!1714588 res!2267821) b!5345330))

(assert (= (and d!1714588 c!930265) b!5345331))

(assert (= (and d!1714588 (not c!930265)) b!5345336))

(assert (= (and b!5345336 c!930264) b!5345333))

(assert (= (and b!5345336 (not c!930264)) b!5345332))

(assert (= (and d!1714588 res!2267820) b!5345334))

(assert (= (and b!5345334 c!930267) b!5345328))

(assert (= (and b!5345334 (not c!930267)) b!5345329))

(assert (= (and b!5345329 c!930266) b!5345337))

(assert (= (and b!5345329 (not c!930266)) b!5345335))

(declare-fun m!6377184 () Bool)

(assert (=> b!5345335 m!6377184))

(declare-fun m!6377186 () Bool)

(assert (=> d!1714588 m!6377186))

(declare-fun m!6377188 () Bool)

(assert (=> d!1714588 m!6377188))

(declare-fun m!6377190 () Bool)

(assert (=> b!5345333 m!6377190))

(declare-fun m!6377192 () Bool)

(assert (=> b!5345330 m!6377192))

(declare-fun m!6377194 () Bool)

(assert (=> b!5345337 m!6377194))

(declare-fun m!6377196 () Bool)

(assert (=> b!5345334 m!6377196))

(declare-fun m!6377198 () Bool)

(assert (=> b!5345329 m!6377198))

(assert (=> b!5345329 m!6377198))

(declare-fun m!6377200 () Bool)

(assert (=> b!5345329 m!6377200))

(declare-fun m!6377202 () Bool)

(assert (=> b!5345328 m!6377202))

(assert (=> b!5344806 d!1714588))

(declare-fun bs!1239305 () Bool)

(declare-fun d!1714590 () Bool)

(assert (= bs!1239305 (and d!1714590 d!1714570)))

(declare-fun lambda!274376 () Int)

(assert (=> bs!1239305 (not (= lambda!274376 lambda!274366))))

(declare-fun bs!1239306 () Bool)

(assert (= bs!1239306 (and d!1714590 b!5344806)))

(assert (=> bs!1239306 (= lambda!274376 lambda!274307)))

(assert (=> bs!1239306 (not (= lambda!274376 lambda!274308))))

(declare-fun bs!1239307 () Bool)

(assert (= bs!1239307 (and d!1714590 b!5344827)))

(assert (=> bs!1239307 (not (= lambda!274376 lambda!274305))))

(declare-fun bs!1239308 () Bool)

(assert (= bs!1239308 (and d!1714590 b!5345029)))

(assert (=> bs!1239308 (not (= lambda!274376 lambda!274349))))

(assert (=> bs!1239306 (= (and (= (regOne!30568 (regOne!30568 r!7292)) (regTwo!30568 (regOne!30568 r!7292))) (= lt!2179224 lt!2179221)) (= lambda!274376 lambda!274309))))

(declare-fun bs!1239309 () Bool)

(assert (= bs!1239309 (and d!1714590 b!5345034)))

(assert (=> bs!1239309 (not (= lambda!274376 lambda!274348))))

(assert (=> bs!1239306 (not (= lambda!274376 lambda!274310))))

(assert (=> bs!1239305 (= (and (= (regOne!30568 (regOne!30568 r!7292)) (regTwo!30568 (regOne!30568 r!7292))) (= lt!2179224 lt!2179221)) (= lambda!274376 lambda!274365))))

(declare-fun bs!1239310 () Bool)

(assert (= bs!1239310 (and d!1714590 b!5345281)))

(assert (=> bs!1239310 (not (= lambda!274376 lambda!274374))))

(declare-fun bs!1239311 () Bool)

(assert (= bs!1239311 (and d!1714590 b!5345286)))

(assert (=> bs!1239311 (not (= lambda!274376 lambda!274373))))

(declare-fun bs!1239312 () Bool)

(assert (= bs!1239312 (and d!1714590 d!1714564)))

(assert (=> bs!1239312 (= (and (= (regOne!30568 (regOne!30568 r!7292)) (regOne!30568 r!7292)) (= lt!2179224 (regTwo!30568 r!7292))) (= lambda!274376 lambda!274363))))

(assert (=> bs!1239307 (= (and (= (regOne!30568 (regOne!30568 r!7292)) (regOne!30568 r!7292)) (= lt!2179224 (regTwo!30568 r!7292))) (= lambda!274376 lambda!274304))))

(assert (=> bs!1239312 (not (= lambda!274376 lambda!274364))))

(declare-fun bs!1239313 () Bool)

(assert (= bs!1239313 (and d!1714590 d!1714562)))

(assert (=> bs!1239313 (= (and (= (regOne!30568 (regOne!30568 r!7292)) (regOne!30568 r!7292)) (= lt!2179224 (regTwo!30568 r!7292))) (= lambda!274376 lambda!274358))))

(assert (=> d!1714590 true))

(assert (=> d!1714590 true))

(assert (=> d!1714590 true))

(declare-fun bs!1239314 () Bool)

(assert (= bs!1239314 d!1714590))

(declare-fun lambda!274377 () Int)

(assert (=> bs!1239314 (not (= lambda!274377 lambda!274376))))

(assert (=> bs!1239305 (= (and (= (regOne!30568 (regOne!30568 r!7292)) (regTwo!30568 (regOne!30568 r!7292))) (= lt!2179224 lt!2179221)) (= lambda!274377 lambda!274366))))

(assert (=> bs!1239306 (not (= lambda!274377 lambda!274307))))

(assert (=> bs!1239306 (= lambda!274377 lambda!274308)))

(assert (=> bs!1239307 (= (and (= (regOne!30568 (regOne!30568 r!7292)) (regOne!30568 r!7292)) (= lt!2179224 (regTwo!30568 r!7292))) (= lambda!274377 lambda!274305))))

(assert (=> bs!1239308 (= (and (= (regOne!30568 (regOne!30568 r!7292)) (regOne!30568 r!7292)) (= lt!2179224 (regTwo!30568 r!7292))) (= lambda!274377 lambda!274349))))

(assert (=> bs!1239306 (not (= lambda!274377 lambda!274309))))

(assert (=> bs!1239309 (not (= lambda!274377 lambda!274348))))

(assert (=> bs!1239306 (= (and (= (regOne!30568 (regOne!30568 r!7292)) (regTwo!30568 (regOne!30568 r!7292))) (= lt!2179224 lt!2179221)) (= lambda!274377 lambda!274310))))

(assert (=> bs!1239305 (not (= lambda!274377 lambda!274365))))

(assert (=> bs!1239310 (= (and (= (regOne!30568 (regOne!30568 r!7292)) (regOne!30568 lt!2179229)) (= lt!2179224 (regTwo!30568 lt!2179229))) (= lambda!274377 lambda!274374))))

(assert (=> bs!1239311 (not (= lambda!274377 lambda!274373))))

(assert (=> bs!1239312 (not (= lambda!274377 lambda!274363))))

(assert (=> bs!1239307 (not (= lambda!274377 lambda!274304))))

(assert (=> bs!1239312 (= (and (= (regOne!30568 (regOne!30568 r!7292)) (regOne!30568 r!7292)) (= lt!2179224 (regTwo!30568 r!7292))) (= lambda!274377 lambda!274364))))

(assert (=> bs!1239313 (not (= lambda!274377 lambda!274358))))

(assert (=> d!1714590 true))

(assert (=> d!1714590 true))

(assert (=> d!1714590 true))

(assert (=> d!1714590 (= (Exists!2209 lambda!274376) (Exists!2209 lambda!274377))))

(declare-fun lt!2179415 () Unit!153630)

(assert (=> d!1714590 (= lt!2179415 (choose!40081 (regOne!30568 (regOne!30568 r!7292)) lt!2179224 s!2326))))

(assert (=> d!1714590 (validRegex!6764 (regOne!30568 (regOne!30568 r!7292)))))

(assert (=> d!1714590 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!863 (regOne!30568 (regOne!30568 r!7292)) lt!2179224 s!2326) lt!2179415)))

(declare-fun m!6377220 () Bool)

(assert (=> bs!1239314 m!6377220))

(declare-fun m!6377222 () Bool)

(assert (=> bs!1239314 m!6377222))

(declare-fun m!6377224 () Bool)

(assert (=> bs!1239314 m!6377224))

(declare-fun m!6377226 () Bool)

(assert (=> bs!1239314 m!6377226))

(assert (=> b!5344806 d!1714590))

(declare-fun d!1714594 () Bool)

(assert (=> d!1714594 (= (Exists!2209 lambda!274310) (choose!40079 lambda!274310))))

(declare-fun bs!1239315 () Bool)

(assert (= bs!1239315 d!1714594))

(declare-fun m!6377228 () Bool)

(assert (=> bs!1239315 m!6377228))

(assert (=> b!5344806 d!1714594))

(declare-fun d!1714596 () Bool)

(assert (=> d!1714596 (= (Exists!2209 lambda!274309) (choose!40079 lambda!274309))))

(declare-fun bs!1239316 () Bool)

(assert (= bs!1239316 d!1714596))

(declare-fun m!6377230 () Bool)

(assert (=> bs!1239316 m!6377230))

(assert (=> b!5344806 d!1714596))

(declare-fun bs!1239317 () Bool)

(declare-fun b!5345364 () Bool)

(assert (= bs!1239317 (and b!5345364 d!1714590)))

(declare-fun lambda!274378 () Int)

(assert (=> bs!1239317 (not (= lambda!274378 lambda!274376))))

(declare-fun bs!1239318 () Bool)

(assert (= bs!1239318 (and b!5345364 d!1714570)))

(assert (=> bs!1239318 (not (= lambda!274378 lambda!274366))))

(assert (=> bs!1239317 (not (= lambda!274378 lambda!274377))))

(declare-fun bs!1239320 () Bool)

(assert (= bs!1239320 (and b!5345364 b!5344806)))

(assert (=> bs!1239320 (not (= lambda!274378 lambda!274307))))

(assert (=> bs!1239320 (not (= lambda!274378 lambda!274308))))

(declare-fun bs!1239321 () Bool)

(assert (= bs!1239321 (and b!5345364 b!5344827)))

(assert (=> bs!1239321 (not (= lambda!274378 lambda!274305))))

(declare-fun bs!1239322 () Bool)

(assert (= bs!1239322 (and b!5345364 b!5345029)))

(assert (=> bs!1239322 (not (= lambda!274378 lambda!274349))))

(assert (=> bs!1239320 (not (= lambda!274378 lambda!274309))))

(declare-fun bs!1239323 () Bool)

(assert (= bs!1239323 (and b!5345364 b!5345034)))

(assert (=> bs!1239323 (= (and (= (reg!15357 lt!2179224) (reg!15357 r!7292)) (= lt!2179224 r!7292)) (= lambda!274378 lambda!274348))))

(assert (=> bs!1239320 (not (= lambda!274378 lambda!274310))))

(assert (=> bs!1239318 (not (= lambda!274378 lambda!274365))))

(declare-fun bs!1239324 () Bool)

(assert (= bs!1239324 (and b!5345364 b!5345281)))

(assert (=> bs!1239324 (not (= lambda!274378 lambda!274374))))

(declare-fun bs!1239325 () Bool)

(assert (= bs!1239325 (and b!5345364 b!5345286)))

(assert (=> bs!1239325 (= (and (= (reg!15357 lt!2179224) (reg!15357 lt!2179229)) (= lt!2179224 lt!2179229)) (= lambda!274378 lambda!274373))))

(declare-fun bs!1239326 () Bool)

(assert (= bs!1239326 (and b!5345364 d!1714564)))

(assert (=> bs!1239326 (not (= lambda!274378 lambda!274363))))

(assert (=> bs!1239321 (not (= lambda!274378 lambda!274304))))

(assert (=> bs!1239326 (not (= lambda!274378 lambda!274364))))

(declare-fun bs!1239327 () Bool)

(assert (= bs!1239327 (and b!5345364 d!1714562)))

(assert (=> bs!1239327 (not (= lambda!274378 lambda!274358))))

(assert (=> b!5345364 true))

(assert (=> b!5345364 true))

(declare-fun bs!1239328 () Bool)

(declare-fun b!5345359 () Bool)

(assert (= bs!1239328 (and b!5345359 d!1714590)))

(declare-fun lambda!274379 () Int)

(assert (=> bs!1239328 (not (= lambda!274379 lambda!274376))))

(declare-fun bs!1239329 () Bool)

(assert (= bs!1239329 (and b!5345359 d!1714570)))

(assert (=> bs!1239329 (= (and (= (regOne!30568 lt!2179224) (regTwo!30568 (regOne!30568 r!7292))) (= (regTwo!30568 lt!2179224) lt!2179221)) (= lambda!274379 lambda!274366))))

(declare-fun bs!1239330 () Bool)

(assert (= bs!1239330 (and b!5345359 b!5344806)))

(assert (=> bs!1239330 (not (= lambda!274379 lambda!274307))))

(assert (=> bs!1239330 (= (and (= (regOne!30568 lt!2179224) (regOne!30568 (regOne!30568 r!7292))) (= (regTwo!30568 lt!2179224) lt!2179224)) (= lambda!274379 lambda!274308))))

(declare-fun bs!1239331 () Bool)

(assert (= bs!1239331 (and b!5345359 b!5344827)))

(assert (=> bs!1239331 (= (and (= (regOne!30568 lt!2179224) (regOne!30568 r!7292)) (= (regTwo!30568 lt!2179224) (regTwo!30568 r!7292))) (= lambda!274379 lambda!274305))))

(declare-fun bs!1239332 () Bool)

(assert (= bs!1239332 (and b!5345359 b!5345029)))

(assert (=> bs!1239332 (= (and (= (regOne!30568 lt!2179224) (regOne!30568 r!7292)) (= (regTwo!30568 lt!2179224) (regTwo!30568 r!7292))) (= lambda!274379 lambda!274349))))

(assert (=> bs!1239330 (not (= lambda!274379 lambda!274309))))

(declare-fun bs!1239333 () Bool)

(assert (= bs!1239333 (and b!5345359 b!5345034)))

(assert (=> bs!1239333 (not (= lambda!274379 lambda!274348))))

(assert (=> bs!1239330 (= (and (= (regOne!30568 lt!2179224) (regTwo!30568 (regOne!30568 r!7292))) (= (regTwo!30568 lt!2179224) lt!2179221)) (= lambda!274379 lambda!274310))))

(assert (=> bs!1239329 (not (= lambda!274379 lambda!274365))))

(declare-fun bs!1239334 () Bool)

(assert (= bs!1239334 (and b!5345359 b!5345281)))

(assert (=> bs!1239334 (= (and (= (regOne!30568 lt!2179224) (regOne!30568 lt!2179229)) (= (regTwo!30568 lt!2179224) (regTwo!30568 lt!2179229))) (= lambda!274379 lambda!274374))))

(declare-fun bs!1239335 () Bool)

(assert (= bs!1239335 (and b!5345359 b!5345286)))

(assert (=> bs!1239335 (not (= lambda!274379 lambda!274373))))

(declare-fun bs!1239336 () Bool)

(assert (= bs!1239336 (and b!5345359 d!1714564)))

(assert (=> bs!1239336 (not (= lambda!274379 lambda!274363))))

(assert (=> bs!1239331 (not (= lambda!274379 lambda!274304))))

(declare-fun bs!1239337 () Bool)

(assert (= bs!1239337 (and b!5345359 b!5345364)))

(assert (=> bs!1239337 (not (= lambda!274379 lambda!274378))))

(assert (=> bs!1239328 (= (and (= (regOne!30568 lt!2179224) (regOne!30568 (regOne!30568 r!7292))) (= (regTwo!30568 lt!2179224) lt!2179224)) (= lambda!274379 lambda!274377))))

(assert (=> bs!1239336 (= (and (= (regOne!30568 lt!2179224) (regOne!30568 r!7292)) (= (regTwo!30568 lt!2179224) (regTwo!30568 r!7292))) (= lambda!274379 lambda!274364))))

(declare-fun bs!1239338 () Bool)

(assert (= bs!1239338 (and b!5345359 d!1714562)))

(assert (=> bs!1239338 (not (= lambda!274379 lambda!274358))))

(assert (=> b!5345359 true))

(assert (=> b!5345359 true))

(declare-fun b!5345358 () Bool)

(declare-fun e!3318752 () Bool)

(assert (=> b!5345358 (= e!3318752 (matchRSpec!2131 (regTwo!30569 lt!2179224) s!2326))))

(declare-fun d!1714598 () Bool)

(declare-fun c!930276 () Bool)

(assert (=> d!1714598 (= c!930276 (is-EmptyExpr!15028 lt!2179224))))

(declare-fun e!3318754 () Bool)

(assert (=> d!1714598 (= (matchRSpec!2131 lt!2179224 s!2326) e!3318754)))

(declare-fun e!3318756 () Bool)

(declare-fun call!382092 () Bool)

(assert (=> b!5345359 (= e!3318756 call!382092)))

(declare-fun b!5345360 () Bool)

(declare-fun e!3318758 () Bool)

(assert (=> b!5345360 (= e!3318758 e!3318756)))

(declare-fun c!930274 () Bool)

(assert (=> b!5345360 (= c!930274 (is-Star!15028 lt!2179224))))

(declare-fun b!5345361 () Bool)

(declare-fun e!3318753 () Bool)

(assert (=> b!5345361 (= e!3318753 (= s!2326 (Cons!61261 (c!930152 lt!2179224) Nil!61261)))))

(declare-fun bm!382086 () Bool)

(declare-fun call!382091 () Bool)

(assert (=> bm!382086 (= call!382091 (isEmpty!33237 s!2326))))

(declare-fun b!5345362 () Bool)

(assert (=> b!5345362 (= e!3318758 e!3318752)))

(declare-fun res!2267830 () Bool)

(assert (=> b!5345362 (= res!2267830 (matchRSpec!2131 (regOne!30569 lt!2179224) s!2326))))

(assert (=> b!5345362 (=> res!2267830 e!3318752)))

(declare-fun b!5345363 () Bool)

(declare-fun c!930277 () Bool)

(assert (=> b!5345363 (= c!930277 (is-Union!15028 lt!2179224))))

(assert (=> b!5345363 (= e!3318753 e!3318758)))

(declare-fun e!3318755 () Bool)

(assert (=> b!5345364 (= e!3318755 call!382092)))

(declare-fun b!5345365 () Bool)

(assert (=> b!5345365 (= e!3318754 call!382091)))

(declare-fun b!5345366 () Bool)

(declare-fun e!3318757 () Bool)

(assert (=> b!5345366 (= e!3318754 e!3318757)))

(declare-fun res!2267832 () Bool)

(assert (=> b!5345366 (= res!2267832 (not (is-EmptyLang!15028 lt!2179224)))))

(assert (=> b!5345366 (=> (not res!2267832) (not e!3318757))))

(declare-fun bm!382087 () Bool)

(assert (=> bm!382087 (= call!382092 (Exists!2209 (ite c!930274 lambda!274378 lambda!274379)))))

(declare-fun b!5345367 () Bool)

(declare-fun res!2267831 () Bool)

(assert (=> b!5345367 (=> res!2267831 e!3318755)))

(assert (=> b!5345367 (= res!2267831 call!382091)))

(assert (=> b!5345367 (= e!3318756 e!3318755)))

(declare-fun b!5345368 () Bool)

(declare-fun c!930275 () Bool)

(assert (=> b!5345368 (= c!930275 (is-ElementMatch!15028 lt!2179224))))

(assert (=> b!5345368 (= e!3318757 e!3318753)))

(assert (= (and d!1714598 c!930276) b!5345365))

(assert (= (and d!1714598 (not c!930276)) b!5345366))

(assert (= (and b!5345366 res!2267832) b!5345368))

(assert (= (and b!5345368 c!930275) b!5345361))

(assert (= (and b!5345368 (not c!930275)) b!5345363))

(assert (= (and b!5345363 c!930277) b!5345362))

(assert (= (and b!5345363 (not c!930277)) b!5345360))

(assert (= (and b!5345362 (not res!2267830)) b!5345358))

(assert (= (and b!5345360 c!930274) b!5345367))

(assert (= (and b!5345360 (not c!930274)) b!5345359))

(assert (= (and b!5345367 (not res!2267831)) b!5345364))

(assert (= (or b!5345364 b!5345359) bm!382087))

(assert (= (or b!5345365 b!5345367) bm!382086))

(declare-fun m!6377252 () Bool)

(assert (=> b!5345358 m!6377252))

(assert (=> bm!382086 m!6376946))

(declare-fun m!6377254 () Bool)

(assert (=> b!5345362 m!6377254))

(declare-fun m!6377256 () Bool)

(assert (=> bm!382087 m!6377256))

(assert (=> b!5344806 d!1714598))

(declare-fun b!5345399 () Bool)

(declare-fun res!2267848 () Bool)

(declare-fun e!3318777 () Bool)

(assert (=> b!5345399 (=> (not res!2267848) (not e!3318777))))

(assert (=> b!5345399 (= res!2267848 (isEmpty!33237 (tail!10557 s!2326)))))

(declare-fun b!5345400 () Bool)

(declare-fun e!3318780 () Bool)

(declare-fun e!3318782 () Bool)

(assert (=> b!5345400 (= e!3318780 e!3318782)))

(declare-fun res!2267849 () Bool)

(assert (=> b!5345400 (=> (not res!2267849) (not e!3318782))))

(declare-fun lt!2179417 () Bool)

(assert (=> b!5345400 (= res!2267849 (not lt!2179417))))

(declare-fun b!5345401 () Bool)

(declare-fun e!3318776 () Bool)

(declare-fun call!382093 () Bool)

(assert (=> b!5345401 (= e!3318776 (= lt!2179417 call!382093))))

(declare-fun b!5345402 () Bool)

(declare-fun res!2267850 () Bool)

(declare-fun e!3318779 () Bool)

(assert (=> b!5345402 (=> res!2267850 e!3318779)))

(assert (=> b!5345402 (= res!2267850 (not (isEmpty!33237 (tail!10557 s!2326))))))

(declare-fun b!5345403 () Bool)

(declare-fun res!2267852 () Bool)

(assert (=> b!5345403 (=> res!2267852 e!3318780)))

(assert (=> b!5345403 (= res!2267852 e!3318777)))

(declare-fun res!2267845 () Bool)

(assert (=> b!5345403 (=> (not res!2267845) (not e!3318777))))

(assert (=> b!5345403 (= res!2267845 lt!2179417)))

(declare-fun b!5345404 () Bool)

(assert (=> b!5345404 (= e!3318782 e!3318779)))

(declare-fun res!2267847 () Bool)

(assert (=> b!5345404 (=> res!2267847 e!3318779)))

(assert (=> b!5345404 (= res!2267847 call!382093)))

(declare-fun b!5345405 () Bool)

(assert (=> b!5345405 (= e!3318777 (= (head!11460 s!2326) (c!930152 lt!2179229)))))

(declare-fun b!5345406 () Bool)

(declare-fun e!3318781 () Bool)

(assert (=> b!5345406 (= e!3318781 (nullable!5197 lt!2179229))))

(declare-fun b!5345407 () Bool)

(declare-fun res!2267846 () Bool)

(assert (=> b!5345407 (=> res!2267846 e!3318780)))

(assert (=> b!5345407 (= res!2267846 (not (is-ElementMatch!15028 lt!2179229)))))

(declare-fun e!3318778 () Bool)

(assert (=> b!5345407 (= e!3318778 e!3318780)))

(declare-fun b!5345408 () Bool)

(assert (=> b!5345408 (= e!3318778 (not lt!2179417))))

(declare-fun b!5345409 () Bool)

(assert (=> b!5345409 (= e!3318781 (matchR!7213 (derivativeStep!4192 lt!2179229 (head!11460 s!2326)) (tail!10557 s!2326)))))

(declare-fun bm!382088 () Bool)

(assert (=> bm!382088 (= call!382093 (isEmpty!33237 s!2326))))

(declare-fun b!5345410 () Bool)

(assert (=> b!5345410 (= e!3318779 (not (= (head!11460 s!2326) (c!930152 lt!2179229))))))

(declare-fun d!1714606 () Bool)

(assert (=> d!1714606 e!3318776))

(declare-fun c!930289 () Bool)

(assert (=> d!1714606 (= c!930289 (is-EmptyExpr!15028 lt!2179229))))

(assert (=> d!1714606 (= lt!2179417 e!3318781)))

(declare-fun c!930287 () Bool)

(assert (=> d!1714606 (= c!930287 (isEmpty!33237 s!2326))))

(assert (=> d!1714606 (validRegex!6764 lt!2179229)))

(assert (=> d!1714606 (= (matchR!7213 lt!2179229 s!2326) lt!2179417)))

(declare-fun b!5345411 () Bool)

(declare-fun res!2267851 () Bool)

(assert (=> b!5345411 (=> (not res!2267851) (not e!3318777))))

(assert (=> b!5345411 (= res!2267851 (not call!382093))))

(declare-fun b!5345412 () Bool)

(assert (=> b!5345412 (= e!3318776 e!3318778)))

(declare-fun c!930288 () Bool)

(assert (=> b!5345412 (= c!930288 (is-EmptyLang!15028 lt!2179229))))

(assert (= (and d!1714606 c!930287) b!5345406))

(assert (= (and d!1714606 (not c!930287)) b!5345409))

(assert (= (and d!1714606 c!930289) b!5345401))

(assert (= (and d!1714606 (not c!930289)) b!5345412))

(assert (= (and b!5345412 c!930288) b!5345408))

(assert (= (and b!5345412 (not c!930288)) b!5345407))

(assert (= (and b!5345407 (not res!2267846)) b!5345403))

(assert (= (and b!5345403 res!2267845) b!5345411))

(assert (= (and b!5345411 res!2267851) b!5345399))

(assert (= (and b!5345399 res!2267848) b!5345405))

(assert (= (and b!5345403 (not res!2267852)) b!5345400))

(assert (= (and b!5345400 res!2267849) b!5345404))

(assert (= (and b!5345404 (not res!2267847)) b!5345402))

(assert (= (and b!5345402 (not res!2267850)) b!5345410))

(assert (= (or b!5345401 b!5345404 b!5345411) bm!382088))

(assert (=> bm!382088 m!6376946))

(assert (=> b!5345399 m!6376952))

(assert (=> b!5345399 m!6376952))

(assert (=> b!5345399 m!6376954))

(assert (=> b!5345405 m!6376956))

(assert (=> b!5345409 m!6376956))

(assert (=> b!5345409 m!6376956))

(declare-fun m!6377258 () Bool)

(assert (=> b!5345409 m!6377258))

(assert (=> b!5345409 m!6376952))

(assert (=> b!5345409 m!6377258))

(assert (=> b!5345409 m!6376952))

(declare-fun m!6377260 () Bool)

(assert (=> b!5345409 m!6377260))

(assert (=> b!5345410 m!6376956))

(declare-fun m!6377262 () Bool)

(assert (=> b!5345406 m!6377262))

(assert (=> d!1714606 m!6376946))

(assert (=> d!1714606 m!6377124))

(assert (=> b!5345402 m!6376952))

(assert (=> b!5345402 m!6376952))

(assert (=> b!5345402 m!6376954))

(assert (=> b!5344806 d!1714606))

(declare-fun bs!1239339 () Bool)

(declare-fun d!1714608 () Bool)

(assert (= bs!1239339 (and d!1714608 d!1714590)))

(declare-fun lambda!274382 () Int)

(assert (=> bs!1239339 (= (and (= (regTwo!30568 (regOne!30568 r!7292)) (regOne!30568 (regOne!30568 r!7292))) (= lt!2179221 lt!2179224)) (= lambda!274382 lambda!274376))))

(declare-fun bs!1239340 () Bool)

(assert (= bs!1239340 (and d!1714608 d!1714570)))

(assert (=> bs!1239340 (not (= lambda!274382 lambda!274366))))

(declare-fun bs!1239341 () Bool)

(assert (= bs!1239341 (and d!1714608 b!5344806)))

(assert (=> bs!1239341 (= (and (= (regTwo!30568 (regOne!30568 r!7292)) (regOne!30568 (regOne!30568 r!7292))) (= lt!2179221 lt!2179224)) (= lambda!274382 lambda!274307))))

(assert (=> bs!1239341 (not (= lambda!274382 lambda!274308))))

(declare-fun bs!1239342 () Bool)

(assert (= bs!1239342 (and d!1714608 b!5344827)))

(assert (=> bs!1239342 (not (= lambda!274382 lambda!274305))))

(declare-fun bs!1239343 () Bool)

(assert (= bs!1239343 (and d!1714608 b!5345029)))

(assert (=> bs!1239343 (not (= lambda!274382 lambda!274349))))

(assert (=> bs!1239341 (= lambda!274382 lambda!274309)))

(declare-fun bs!1239344 () Bool)

(assert (= bs!1239344 (and d!1714608 b!5345034)))

(assert (=> bs!1239344 (not (= lambda!274382 lambda!274348))))

(assert (=> bs!1239341 (not (= lambda!274382 lambda!274310))))

(assert (=> bs!1239340 (= lambda!274382 lambda!274365)))

(declare-fun bs!1239345 () Bool)

(assert (= bs!1239345 (and d!1714608 b!5345281)))

(assert (=> bs!1239345 (not (= lambda!274382 lambda!274374))))

(declare-fun bs!1239346 () Bool)

(assert (= bs!1239346 (and d!1714608 b!5345359)))

(assert (=> bs!1239346 (not (= lambda!274382 lambda!274379))))

(declare-fun bs!1239347 () Bool)

(assert (= bs!1239347 (and d!1714608 b!5345286)))

(assert (=> bs!1239347 (not (= lambda!274382 lambda!274373))))

(declare-fun bs!1239348 () Bool)

(assert (= bs!1239348 (and d!1714608 d!1714564)))

(assert (=> bs!1239348 (= (and (= (regTwo!30568 (regOne!30568 r!7292)) (regOne!30568 r!7292)) (= lt!2179221 (regTwo!30568 r!7292))) (= lambda!274382 lambda!274363))))

(assert (=> bs!1239342 (= (and (= (regTwo!30568 (regOne!30568 r!7292)) (regOne!30568 r!7292)) (= lt!2179221 (regTwo!30568 r!7292))) (= lambda!274382 lambda!274304))))

(declare-fun bs!1239349 () Bool)

(assert (= bs!1239349 (and d!1714608 b!5345364)))

(assert (=> bs!1239349 (not (= lambda!274382 lambda!274378))))

(assert (=> bs!1239339 (not (= lambda!274382 lambda!274377))))

(assert (=> bs!1239348 (not (= lambda!274382 lambda!274364))))

(declare-fun bs!1239350 () Bool)

(assert (= bs!1239350 (and d!1714608 d!1714562)))

(assert (=> bs!1239350 (= (and (= (regTwo!30568 (regOne!30568 r!7292)) (regOne!30568 r!7292)) (= lt!2179221 (regTwo!30568 r!7292))) (= lambda!274382 lambda!274358))))

(assert (=> d!1714608 true))

(assert (=> d!1714608 true))

(assert (=> d!1714608 true))

(assert (=> d!1714608 (= (isDefined!11842 (findConcatSeparation!1553 (regTwo!30568 (regOne!30568 r!7292)) lt!2179221 Nil!61261 s!2326 s!2326)) (Exists!2209 lambda!274382))))

(declare-fun lt!2179418 () Unit!153630)

(assert (=> d!1714608 (= lt!2179418 (choose!40080 (regTwo!30568 (regOne!30568 r!7292)) lt!2179221 s!2326))))

(assert (=> d!1714608 (validRegex!6764 (regTwo!30568 (regOne!30568 r!7292)))))

(assert (=> d!1714608 (= (lemmaFindConcatSeparationEquivalentToExists!1317 (regTwo!30568 (regOne!30568 r!7292)) lt!2179221 s!2326) lt!2179418)))

(declare-fun bs!1239351 () Bool)

(assert (= bs!1239351 d!1714608))

(declare-fun m!6377264 () Bool)

(assert (=> bs!1239351 m!6377264))

(assert (=> bs!1239351 m!6376722))

(declare-fun m!6377266 () Bool)

(assert (=> bs!1239351 m!6377266))

(assert (=> bs!1239351 m!6376722))

(assert (=> bs!1239351 m!6376736))

(assert (=> bs!1239351 m!6377132))

(assert (=> b!5344806 d!1714608))

(declare-fun d!1714610 () Bool)

(assert (=> d!1714610 (= (matchR!7213 lt!2179224 s!2326) (matchRSpec!2131 lt!2179224 s!2326))))

(declare-fun lt!2179419 () Unit!153630)

(assert (=> d!1714610 (= lt!2179419 (choose!40074 lt!2179224 s!2326))))

(assert (=> d!1714610 (validRegex!6764 lt!2179224)))

(assert (=> d!1714610 (= (mainMatchTheorem!2131 lt!2179224 s!2326) lt!2179419)))

(declare-fun bs!1239352 () Bool)

(assert (= bs!1239352 d!1714610))

(assert (=> bs!1239352 m!6376746))

(assert (=> bs!1239352 m!6376750))

(declare-fun m!6377268 () Bool)

(assert (=> bs!1239352 m!6377268))

(declare-fun m!6377270 () Bool)

(assert (=> bs!1239352 m!6377270))

(assert (=> b!5344806 d!1714610))

(declare-fun bs!1239353 () Bool)

(declare-fun d!1714612 () Bool)

(assert (= bs!1239353 (and d!1714612 b!5344794)))

(declare-fun lambda!274385 () Int)

(assert (=> bs!1239353 (= lambda!274385 lambda!274311)))

(declare-fun bs!1239354 () Bool)

(assert (= bs!1239354 (and d!1714612 d!1714528)))

(assert (=> bs!1239354 (= lambda!274385 lambda!274352)))

(declare-fun bs!1239355 () Bool)

(assert (= bs!1239355 (and d!1714612 d!1714572)))

(assert (=> bs!1239355 (= lambda!274385 lambda!274371)))

(declare-fun bs!1239356 () Bool)

(assert (= bs!1239356 (and d!1714612 d!1714588)))

(assert (=> bs!1239356 (= lambda!274385 lambda!274375)))

(declare-fun b!5345418 () Bool)

(declare-fun e!3318785 () Bool)

(declare-fun e!3318789 () Bool)

(assert (=> b!5345418 (= e!3318785 e!3318789)))

(declare-fun c!930292 () Bool)

(assert (=> b!5345418 (= c!930292 (isEmpty!33233 (tail!10558 (t!374600 (exprs!4912 (h!67708 zl!343))))))))

(declare-fun b!5345419 () Bool)

(declare-fun e!3318787 () Bool)

(assert (=> b!5345419 (= e!3318787 (isEmpty!33233 (t!374600 (t!374600 (exprs!4912 (h!67708 zl!343))))))))

(declare-fun b!5345420 () Bool)

(declare-fun e!3318786 () Regex!15028)

(assert (=> b!5345420 (= e!3318786 (h!67707 (t!374600 (exprs!4912 (h!67708 zl!343)))))))

(declare-fun b!5345421 () Bool)

(declare-fun e!3318790 () Regex!15028)

(assert (=> b!5345421 (= e!3318790 EmptyExpr!15028)))

(declare-fun b!5345422 () Bool)

(assert (=> b!5345422 (= e!3318790 (Concat!23873 (h!67707 (t!374600 (exprs!4912 (h!67708 zl!343)))) (generalisedConcat!697 (t!374600 (t!374600 (exprs!4912 (h!67708 zl!343)))))))))

(declare-fun b!5345423 () Bool)

(declare-fun e!3318788 () Bool)

(assert (=> b!5345423 (= e!3318788 e!3318785)))

(declare-fun c!930293 () Bool)

(assert (=> b!5345423 (= c!930293 (isEmpty!33233 (t!374600 (exprs!4912 (h!67708 zl!343)))))))

(declare-fun b!5345424 () Bool)

(declare-fun lt!2179420 () Regex!15028)

(assert (=> b!5345424 (= e!3318789 (isConcat!429 lt!2179420))))

(assert (=> d!1714612 e!3318788))

(declare-fun res!2267857 () Bool)

(assert (=> d!1714612 (=> (not res!2267857) (not e!3318788))))

(assert (=> d!1714612 (= res!2267857 (validRegex!6764 lt!2179420))))

(assert (=> d!1714612 (= lt!2179420 e!3318786)))

(declare-fun c!930291 () Bool)

(assert (=> d!1714612 (= c!930291 e!3318787)))

(declare-fun res!2267858 () Bool)

(assert (=> d!1714612 (=> (not res!2267858) (not e!3318787))))

(assert (=> d!1714612 (= res!2267858 (is-Cons!61259 (t!374600 (exprs!4912 (h!67708 zl!343)))))))

(assert (=> d!1714612 (forall!14450 (t!374600 (exprs!4912 (h!67708 zl!343))) lambda!274385)))

(assert (=> d!1714612 (= (generalisedConcat!697 (t!374600 (exprs!4912 (h!67708 zl!343)))) lt!2179420)))

(declare-fun b!5345417 () Bool)

(assert (=> b!5345417 (= e!3318785 (isEmptyExpr!906 lt!2179420))))

(declare-fun b!5345425 () Bool)

(assert (=> b!5345425 (= e!3318786 e!3318790)))

(declare-fun c!930290 () Bool)

(assert (=> b!5345425 (= c!930290 (is-Cons!61259 (t!374600 (exprs!4912 (h!67708 zl!343)))))))

(declare-fun b!5345426 () Bool)

(assert (=> b!5345426 (= e!3318789 (= lt!2179420 (head!11461 (t!374600 (exprs!4912 (h!67708 zl!343))))))))

(assert (= (and d!1714612 res!2267858) b!5345419))

(assert (= (and d!1714612 c!930291) b!5345420))

(assert (= (and d!1714612 (not c!930291)) b!5345425))

(assert (= (and b!5345425 c!930290) b!5345422))

(assert (= (and b!5345425 (not c!930290)) b!5345421))

(assert (= (and d!1714612 res!2267857) b!5345423))

(assert (= (and b!5345423 c!930293) b!5345417))

(assert (= (and b!5345423 (not c!930293)) b!5345418))

(assert (= (and b!5345418 c!930292) b!5345426))

(assert (= (and b!5345418 (not c!930292)) b!5345424))

(declare-fun m!6377272 () Bool)

(assert (=> b!5345424 m!6377272))

(declare-fun m!6377274 () Bool)

(assert (=> d!1714612 m!6377274))

(declare-fun m!6377276 () Bool)

(assert (=> d!1714612 m!6377276))

(declare-fun m!6377278 () Bool)

(assert (=> b!5345422 m!6377278))

(declare-fun m!6377280 () Bool)

(assert (=> b!5345419 m!6377280))

(declare-fun m!6377282 () Bool)

(assert (=> b!5345426 m!6377282))

(assert (=> b!5345423 m!6376700))

(declare-fun m!6377284 () Bool)

(assert (=> b!5345418 m!6377284))

(assert (=> b!5345418 m!6377284))

(declare-fun m!6377286 () Bool)

(assert (=> b!5345418 m!6377286))

(declare-fun m!6377288 () Bool)

(assert (=> b!5345417 m!6377288))

(assert (=> b!5344806 d!1714612))

(declare-fun b!5345427 () Bool)

(declare-fun res!2267862 () Bool)

(declare-fun e!3318792 () Bool)

(assert (=> b!5345427 (=> (not res!2267862) (not e!3318792))))

(assert (=> b!5345427 (= res!2267862 (isEmpty!33237 (tail!10557 s!2326)))))

(declare-fun b!5345428 () Bool)

(declare-fun e!3318795 () Bool)

(declare-fun e!3318797 () Bool)

(assert (=> b!5345428 (= e!3318795 e!3318797)))

(declare-fun res!2267863 () Bool)

(assert (=> b!5345428 (=> (not res!2267863) (not e!3318797))))

(declare-fun lt!2179421 () Bool)

(assert (=> b!5345428 (= res!2267863 (not lt!2179421))))

(declare-fun b!5345429 () Bool)

(declare-fun e!3318791 () Bool)

(declare-fun call!382098 () Bool)

(assert (=> b!5345429 (= e!3318791 (= lt!2179421 call!382098))))

(declare-fun b!5345430 () Bool)

(declare-fun res!2267864 () Bool)

(declare-fun e!3318794 () Bool)

(assert (=> b!5345430 (=> res!2267864 e!3318794)))

(assert (=> b!5345430 (= res!2267864 (not (isEmpty!33237 (tail!10557 s!2326))))))

(declare-fun b!5345431 () Bool)

(declare-fun res!2267866 () Bool)

(assert (=> b!5345431 (=> res!2267866 e!3318795)))

(assert (=> b!5345431 (= res!2267866 e!3318792)))

(declare-fun res!2267859 () Bool)

(assert (=> b!5345431 (=> (not res!2267859) (not e!3318792))))

(assert (=> b!5345431 (= res!2267859 lt!2179421)))

(declare-fun b!5345432 () Bool)

(assert (=> b!5345432 (= e!3318797 e!3318794)))

(declare-fun res!2267861 () Bool)

(assert (=> b!5345432 (=> res!2267861 e!3318794)))

(assert (=> b!5345432 (= res!2267861 call!382098)))

(declare-fun b!5345433 () Bool)

(assert (=> b!5345433 (= e!3318792 (= (head!11460 s!2326) (c!930152 lt!2179224)))))

(declare-fun b!5345434 () Bool)

(declare-fun e!3318796 () Bool)

(assert (=> b!5345434 (= e!3318796 (nullable!5197 lt!2179224))))

(declare-fun b!5345435 () Bool)

(declare-fun res!2267860 () Bool)

(assert (=> b!5345435 (=> res!2267860 e!3318795)))

(assert (=> b!5345435 (= res!2267860 (not (is-ElementMatch!15028 lt!2179224)))))

(declare-fun e!3318793 () Bool)

(assert (=> b!5345435 (= e!3318793 e!3318795)))

(declare-fun b!5345436 () Bool)

(assert (=> b!5345436 (= e!3318793 (not lt!2179421))))

(declare-fun b!5345437 () Bool)

(assert (=> b!5345437 (= e!3318796 (matchR!7213 (derivativeStep!4192 lt!2179224 (head!11460 s!2326)) (tail!10557 s!2326)))))

(declare-fun bm!382093 () Bool)

(assert (=> bm!382093 (= call!382098 (isEmpty!33237 s!2326))))

(declare-fun b!5345438 () Bool)

(assert (=> b!5345438 (= e!3318794 (not (= (head!11460 s!2326) (c!930152 lt!2179224))))))

(declare-fun d!1714614 () Bool)

(assert (=> d!1714614 e!3318791))

(declare-fun c!930296 () Bool)

(assert (=> d!1714614 (= c!930296 (is-EmptyExpr!15028 lt!2179224))))

(assert (=> d!1714614 (= lt!2179421 e!3318796)))

(declare-fun c!930294 () Bool)

(assert (=> d!1714614 (= c!930294 (isEmpty!33237 s!2326))))

(assert (=> d!1714614 (validRegex!6764 lt!2179224)))

(assert (=> d!1714614 (= (matchR!7213 lt!2179224 s!2326) lt!2179421)))

(declare-fun b!5345439 () Bool)

(declare-fun res!2267865 () Bool)

(assert (=> b!5345439 (=> (not res!2267865) (not e!3318792))))

(assert (=> b!5345439 (= res!2267865 (not call!382098))))

(declare-fun b!5345440 () Bool)

(assert (=> b!5345440 (= e!3318791 e!3318793)))

(declare-fun c!930295 () Bool)

(assert (=> b!5345440 (= c!930295 (is-EmptyLang!15028 lt!2179224))))

(assert (= (and d!1714614 c!930294) b!5345434))

(assert (= (and d!1714614 (not c!930294)) b!5345437))

(assert (= (and d!1714614 c!930296) b!5345429))

(assert (= (and d!1714614 (not c!930296)) b!5345440))

(assert (= (and b!5345440 c!930295) b!5345436))

(assert (= (and b!5345440 (not c!930295)) b!5345435))

(assert (= (and b!5345435 (not res!2267860)) b!5345431))

(assert (= (and b!5345431 res!2267859) b!5345439))

(assert (= (and b!5345439 res!2267865) b!5345427))

(assert (= (and b!5345427 res!2267862) b!5345433))

(assert (= (and b!5345431 (not res!2267866)) b!5345428))

(assert (= (and b!5345428 res!2267863) b!5345432))

(assert (= (and b!5345432 (not res!2267861)) b!5345430))

(assert (= (and b!5345430 (not res!2267864)) b!5345438))

(assert (= (or b!5345429 b!5345432 b!5345439) bm!382093))

(assert (=> bm!382093 m!6376946))

(assert (=> b!5345427 m!6376952))

(assert (=> b!5345427 m!6376952))

(assert (=> b!5345427 m!6376954))

(assert (=> b!5345433 m!6376956))

(assert (=> b!5345437 m!6376956))

(assert (=> b!5345437 m!6376956))

(declare-fun m!6377290 () Bool)

(assert (=> b!5345437 m!6377290))

(assert (=> b!5345437 m!6376952))

(assert (=> b!5345437 m!6377290))

(assert (=> b!5345437 m!6376952))

(declare-fun m!6377292 () Bool)

(assert (=> b!5345437 m!6377292))

(assert (=> b!5345438 m!6376956))

(declare-fun m!6377294 () Bool)

(assert (=> b!5345434 m!6377294))

(assert (=> d!1714614 m!6376946))

(assert (=> d!1714614 m!6377270))

(assert (=> b!5345430 m!6376952))

(assert (=> b!5345430 m!6376952))

(assert (=> b!5345430 m!6376954))

(assert (=> b!5344806 d!1714614))

(declare-fun b!5345441 () Bool)

(declare-fun lt!2179422 () Unit!153630)

(declare-fun lt!2179424 () Unit!153630)

(assert (=> b!5345441 (= lt!2179422 lt!2179424)))

(assert (=> b!5345441 (= (++!13351 (++!13351 Nil!61261 (Cons!61261 (h!67709 s!2326) Nil!61261)) (t!374602 s!2326)) s!2326)))

(assert (=> b!5345441 (= lt!2179424 (lemmaMoveElementToOtherListKeepsConcatEq!1766 Nil!61261 (h!67709 s!2326) (t!374602 s!2326) s!2326))))

(declare-fun e!3318801 () Option!15139)

(assert (=> b!5345441 (= e!3318801 (findConcatSeparation!1553 (regOne!30568 (regOne!30568 r!7292)) lt!2179224 (++!13351 Nil!61261 (Cons!61261 (h!67709 s!2326) Nil!61261)) (t!374602 s!2326) s!2326))))

(declare-fun b!5345442 () Bool)

(assert (=> b!5345442 (= e!3318801 None!15138)))

(declare-fun b!5345443 () Bool)

(declare-fun res!2267871 () Bool)

(declare-fun e!3318800 () Bool)

(assert (=> b!5345443 (=> (not res!2267871) (not e!3318800))))

(declare-fun lt!2179423 () Option!15139)

(assert (=> b!5345443 (= res!2267871 (matchR!7213 lt!2179224 (_2!35530 (get!21071 lt!2179423))))))

(declare-fun b!5345444 () Bool)

(declare-fun e!3318802 () Option!15139)

(assert (=> b!5345444 (= e!3318802 (Some!15138 (tuple2!64455 Nil!61261 s!2326)))))

(declare-fun b!5345445 () Bool)

(assert (=> b!5345445 (= e!3318802 e!3318801)))

(declare-fun c!930297 () Bool)

(assert (=> b!5345445 (= c!930297 (is-Nil!61261 s!2326))))

(declare-fun b!5345446 () Bool)

(declare-fun res!2267870 () Bool)

(assert (=> b!5345446 (=> (not res!2267870) (not e!3318800))))

(assert (=> b!5345446 (= res!2267870 (matchR!7213 (regOne!30568 (regOne!30568 r!7292)) (_1!35530 (get!21071 lt!2179423))))))

(declare-fun b!5345447 () Bool)

(assert (=> b!5345447 (= e!3318800 (= (++!13351 (_1!35530 (get!21071 lt!2179423)) (_2!35530 (get!21071 lt!2179423))) s!2326))))

(declare-fun b!5345448 () Bool)

(declare-fun e!3318798 () Bool)

(assert (=> b!5345448 (= e!3318798 (matchR!7213 lt!2179224 s!2326))))

(declare-fun b!5345449 () Bool)

(declare-fun e!3318799 () Bool)

(assert (=> b!5345449 (= e!3318799 (not (isDefined!11842 lt!2179423)))))

(declare-fun d!1714616 () Bool)

(assert (=> d!1714616 e!3318799))

(declare-fun res!2267869 () Bool)

(assert (=> d!1714616 (=> res!2267869 e!3318799)))

(assert (=> d!1714616 (= res!2267869 e!3318800)))

(declare-fun res!2267867 () Bool)

(assert (=> d!1714616 (=> (not res!2267867) (not e!3318800))))

(assert (=> d!1714616 (= res!2267867 (isDefined!11842 lt!2179423))))

(assert (=> d!1714616 (= lt!2179423 e!3318802)))

(declare-fun c!930298 () Bool)

(assert (=> d!1714616 (= c!930298 e!3318798)))

(declare-fun res!2267868 () Bool)

(assert (=> d!1714616 (=> (not res!2267868) (not e!3318798))))

(assert (=> d!1714616 (= res!2267868 (matchR!7213 (regOne!30568 (regOne!30568 r!7292)) Nil!61261))))

(assert (=> d!1714616 (validRegex!6764 (regOne!30568 (regOne!30568 r!7292)))))

(assert (=> d!1714616 (= (findConcatSeparation!1553 (regOne!30568 (regOne!30568 r!7292)) lt!2179224 Nil!61261 s!2326 s!2326) lt!2179423)))

(assert (= (and d!1714616 res!2267868) b!5345448))

(assert (= (and d!1714616 c!930298) b!5345444))

(assert (= (and d!1714616 (not c!930298)) b!5345445))

(assert (= (and b!5345445 c!930297) b!5345442))

(assert (= (and b!5345445 (not c!930297)) b!5345441))

(assert (= (and d!1714616 res!2267867) b!5345446))

(assert (= (and b!5345446 res!2267870) b!5345443))

(assert (= (and b!5345443 res!2267871) b!5345447))

(assert (= (and d!1714616 (not res!2267869)) b!5345449))

(declare-fun m!6377296 () Bool)

(assert (=> b!5345446 m!6377296))

(declare-fun m!6377298 () Bool)

(assert (=> b!5345446 m!6377298))

(assert (=> b!5345447 m!6377296))

(declare-fun m!6377300 () Bool)

(assert (=> b!5345447 m!6377300))

(assert (=> b!5345448 m!6376746))

(declare-fun m!6377302 () Bool)

(assert (=> b!5345449 m!6377302))

(assert (=> b!5345443 m!6377296))

(declare-fun m!6377304 () Bool)

(assert (=> b!5345443 m!6377304))

(assert (=> b!5345441 m!6377094))

(assert (=> b!5345441 m!6377094))

(assert (=> b!5345441 m!6377096))

(assert (=> b!5345441 m!6377098))

(assert (=> b!5345441 m!6377094))

(declare-fun m!6377306 () Bool)

(assert (=> b!5345441 m!6377306))

(assert (=> d!1714616 m!6377302))

(declare-fun m!6377308 () Bool)

(assert (=> d!1714616 m!6377308))

(assert (=> d!1714616 m!6377226))

(assert (=> b!5344806 d!1714616))

(declare-fun d!1714618 () Bool)

(declare-fun c!930303 () Bool)

(assert (=> d!1714618 (= c!930303 (isEmpty!33237 s!2326))))

(declare-fun e!3318810 () Bool)

(assert (=> d!1714618 (= (matchZipper!1272 z!1189 s!2326) e!3318810)))

(declare-fun b!5345461 () Bool)

(assert (=> b!5345461 (= e!3318810 (nullableZipper!1371 z!1189))))

(declare-fun b!5345462 () Bool)

(assert (=> b!5345462 (= e!3318810 (matchZipper!1272 (derivationStepZipper!1269 z!1189 (head!11460 s!2326)) (tail!10557 s!2326)))))

(assert (= (and d!1714618 c!930303) b!5345461))

(assert (= (and d!1714618 (not c!930303)) b!5345462))

(assert (=> d!1714618 m!6376946))

(declare-fun m!6377310 () Bool)

(assert (=> b!5345461 m!6377310))

(assert (=> b!5345462 m!6376956))

(assert (=> b!5345462 m!6376956))

(declare-fun m!6377312 () Bool)

(assert (=> b!5345462 m!6377312))

(assert (=> b!5345462 m!6376952))

(assert (=> b!5345462 m!6377312))

(assert (=> b!5345462 m!6376952))

(declare-fun m!6377314 () Bool)

(assert (=> b!5345462 m!6377314))

(assert (=> b!5344806 d!1714618))

(declare-fun d!1714620 () Bool)

(assert (=> d!1714620 (= (isDefined!11842 (findConcatSeparation!1553 (regOne!30568 (regOne!30568 r!7292)) lt!2179224 Nil!61261 s!2326 s!2326)) (not (isEmpty!33238 (findConcatSeparation!1553 (regOne!30568 (regOne!30568 r!7292)) lt!2179224 Nil!61261 s!2326 s!2326))))))

(declare-fun bs!1239359 () Bool)

(assert (= bs!1239359 d!1714620))

(assert (=> bs!1239359 m!6376718))

(declare-fun m!6377316 () Bool)

(assert (=> bs!1239359 m!6377316))

(assert (=> b!5344806 d!1714620))

(declare-fun d!1714622 () Bool)

(declare-fun c!930304 () Bool)

(assert (=> d!1714622 (= c!930304 (isEmpty!33237 s!2326))))

(declare-fun e!3318811 () Bool)

(assert (=> d!1714622 (= (matchZipper!1272 lt!2179250 s!2326) e!3318811)))

(declare-fun b!5345463 () Bool)

(assert (=> b!5345463 (= e!3318811 (nullableZipper!1371 lt!2179250))))

(declare-fun b!5345464 () Bool)

(assert (=> b!5345464 (= e!3318811 (matchZipper!1272 (derivationStepZipper!1269 lt!2179250 (head!11460 s!2326)) (tail!10557 s!2326)))))

(assert (= (and d!1714622 c!930304) b!5345463))

(assert (= (and d!1714622 (not c!930304)) b!5345464))

(assert (=> d!1714622 m!6376946))

(declare-fun m!6377318 () Bool)

(assert (=> b!5345463 m!6377318))

(assert (=> b!5345464 m!6376956))

(assert (=> b!5345464 m!6376956))

(declare-fun m!6377320 () Bool)

(assert (=> b!5345464 m!6377320))

(assert (=> b!5345464 m!6376952))

(assert (=> b!5345464 m!6377320))

(assert (=> b!5345464 m!6376952))

(declare-fun m!6377322 () Bool)

(assert (=> b!5345464 m!6377322))

(assert (=> b!5344806 d!1714622))

(declare-fun bs!1239361 () Bool)

(declare-fun d!1714624 () Bool)

(assert (= bs!1239361 (and d!1714624 d!1714590)))

(declare-fun lambda!274388 () Int)

(assert (=> bs!1239361 (= lambda!274388 lambda!274376)))

(declare-fun bs!1239363 () Bool)

(assert (= bs!1239363 (and d!1714624 d!1714570)))

(assert (=> bs!1239363 (not (= lambda!274388 lambda!274366))))

(declare-fun bs!1239364 () Bool)

(assert (= bs!1239364 (and d!1714624 b!5344806)))

(assert (=> bs!1239364 (= lambda!274388 lambda!274307)))

(assert (=> bs!1239364 (not (= lambda!274388 lambda!274308))))

(declare-fun bs!1239365 () Bool)

(assert (= bs!1239365 (and d!1714624 b!5344827)))

(assert (=> bs!1239365 (not (= lambda!274388 lambda!274305))))

(declare-fun bs!1239366 () Bool)

(assert (= bs!1239366 (and d!1714624 b!5345029)))

(assert (=> bs!1239366 (not (= lambda!274388 lambda!274349))))

(declare-fun bs!1239368 () Bool)

(assert (= bs!1239368 (and d!1714624 d!1714608)))

(assert (=> bs!1239368 (= (and (= (regOne!30568 (regOne!30568 r!7292)) (regTwo!30568 (regOne!30568 r!7292))) (= lt!2179224 lt!2179221)) (= lambda!274388 lambda!274382))))

(assert (=> bs!1239364 (= (and (= (regOne!30568 (regOne!30568 r!7292)) (regTwo!30568 (regOne!30568 r!7292))) (= lt!2179224 lt!2179221)) (= lambda!274388 lambda!274309))))

(declare-fun bs!1239369 () Bool)

(assert (= bs!1239369 (and d!1714624 b!5345034)))

(assert (=> bs!1239369 (not (= lambda!274388 lambda!274348))))

(assert (=> bs!1239364 (not (= lambda!274388 lambda!274310))))

(assert (=> bs!1239363 (= (and (= (regOne!30568 (regOne!30568 r!7292)) (regTwo!30568 (regOne!30568 r!7292))) (= lt!2179224 lt!2179221)) (= lambda!274388 lambda!274365))))

(declare-fun bs!1239370 () Bool)

(assert (= bs!1239370 (and d!1714624 b!5345281)))

(assert (=> bs!1239370 (not (= lambda!274388 lambda!274374))))

(declare-fun bs!1239371 () Bool)

(assert (= bs!1239371 (and d!1714624 b!5345359)))

(assert (=> bs!1239371 (not (= lambda!274388 lambda!274379))))

(declare-fun bs!1239372 () Bool)

(assert (= bs!1239372 (and d!1714624 b!5345286)))

(assert (=> bs!1239372 (not (= lambda!274388 lambda!274373))))

(declare-fun bs!1239373 () Bool)

(assert (= bs!1239373 (and d!1714624 d!1714564)))

(assert (=> bs!1239373 (= (and (= (regOne!30568 (regOne!30568 r!7292)) (regOne!30568 r!7292)) (= lt!2179224 (regTwo!30568 r!7292))) (= lambda!274388 lambda!274363))))

(assert (=> bs!1239365 (= (and (= (regOne!30568 (regOne!30568 r!7292)) (regOne!30568 r!7292)) (= lt!2179224 (regTwo!30568 r!7292))) (= lambda!274388 lambda!274304))))

(declare-fun bs!1239374 () Bool)

(assert (= bs!1239374 (and d!1714624 b!5345364)))

(assert (=> bs!1239374 (not (= lambda!274388 lambda!274378))))

(assert (=> bs!1239361 (not (= lambda!274388 lambda!274377))))

(assert (=> bs!1239373 (not (= lambda!274388 lambda!274364))))

(declare-fun bs!1239375 () Bool)

(assert (= bs!1239375 (and d!1714624 d!1714562)))

(assert (=> bs!1239375 (= (and (= (regOne!30568 (regOne!30568 r!7292)) (regOne!30568 r!7292)) (= lt!2179224 (regTwo!30568 r!7292))) (= lambda!274388 lambda!274358))))

(assert (=> d!1714624 true))

(assert (=> d!1714624 true))

(assert (=> d!1714624 true))

(assert (=> d!1714624 (= (isDefined!11842 (findConcatSeparation!1553 (regOne!30568 (regOne!30568 r!7292)) lt!2179224 Nil!61261 s!2326 s!2326)) (Exists!2209 lambda!274388))))

(declare-fun lt!2179425 () Unit!153630)

(assert (=> d!1714624 (= lt!2179425 (choose!40080 (regOne!30568 (regOne!30568 r!7292)) lt!2179224 s!2326))))

(assert (=> d!1714624 (validRegex!6764 (regOne!30568 (regOne!30568 r!7292)))))

(assert (=> d!1714624 (= (lemmaFindConcatSeparationEquivalentToExists!1317 (regOne!30568 (regOne!30568 r!7292)) lt!2179224 s!2326) lt!2179425)))

(declare-fun bs!1239376 () Bool)

(assert (= bs!1239376 d!1714624))

(declare-fun m!6377336 () Bool)

(assert (=> bs!1239376 m!6377336))

(assert (=> bs!1239376 m!6376718))

(declare-fun m!6377338 () Bool)

(assert (=> bs!1239376 m!6377338))

(assert (=> bs!1239376 m!6376718))

(assert (=> bs!1239376 m!6376720))

(assert (=> bs!1239376 m!6377226))

(assert (=> b!5344806 d!1714624))

(declare-fun d!1714630 () Bool)

(assert (=> d!1714630 (= (matchR!7213 lt!2179229 s!2326) (matchRSpec!2131 lt!2179229 s!2326))))

(declare-fun lt!2179427 () Unit!153630)

(assert (=> d!1714630 (= lt!2179427 (choose!40074 lt!2179229 s!2326))))

(assert (=> d!1714630 (validRegex!6764 lt!2179229)))

(assert (=> d!1714630 (= (mainMatchTheorem!2131 lt!2179229 s!2326) lt!2179427)))

(declare-fun bs!1239377 () Bool)

(assert (= bs!1239377 d!1714630))

(assert (=> bs!1239377 m!6376728))

(assert (=> bs!1239377 m!6376738))

(declare-fun m!6377340 () Bool)

(assert (=> bs!1239377 m!6377340))

(assert (=> bs!1239377 m!6377124))

(assert (=> b!5344806 d!1714630))

(declare-fun d!1714632 () Bool)

(declare-fun lt!2179432 () Regex!15028)

(assert (=> d!1714632 (validRegex!6764 lt!2179432)))

(assert (=> d!1714632 (= lt!2179432 (generalisedUnion!957 (unfocusZipperList!470 zl!343)))))

(assert (=> d!1714632 (= (unfocusZipper!770 zl!343) lt!2179432)))

(declare-fun bs!1239378 () Bool)

(assert (= bs!1239378 d!1714632))

(declare-fun m!6377342 () Bool)

(assert (=> bs!1239378 m!6377342))

(assert (=> bs!1239378 m!6376782))

(assert (=> bs!1239378 m!6376782))

(assert (=> bs!1239378 m!6376784))

(assert (=> b!5344805 d!1714632))

(declare-fun bs!1239380 () Bool)

(declare-fun d!1714634 () Bool)

(assert (= bs!1239380 (and d!1714634 d!1714572)))

(declare-fun lambda!274393 () Int)

(assert (=> bs!1239380 (= lambda!274393 lambda!274371)))

(declare-fun bs!1239381 () Bool)

(assert (= bs!1239381 (and d!1714634 d!1714528)))

(assert (=> bs!1239381 (= lambda!274393 lambda!274352)))

(declare-fun bs!1239382 () Bool)

(assert (= bs!1239382 (and d!1714634 d!1714588)))

(assert (=> bs!1239382 (= lambda!274393 lambda!274375)))

(declare-fun bs!1239384 () Bool)

(assert (= bs!1239384 (and d!1714634 b!5344794)))

(assert (=> bs!1239384 (= lambda!274393 lambda!274311)))

(declare-fun bs!1239386 () Bool)

(assert (= bs!1239386 (and d!1714634 d!1714612)))

(assert (=> bs!1239386 (= lambda!274393 lambda!274385)))

(declare-fun b!5345519 () Bool)

(declare-fun e!3318848 () Bool)

(declare-fun lt!2179438 () Regex!15028)

(declare-fun isUnion!346 (Regex!15028) Bool)

(assert (=> b!5345519 (= e!3318848 (isUnion!346 lt!2179438))))

(declare-fun b!5345520 () Bool)

(declare-fun e!3318843 () Bool)

(declare-fun isEmptyLang!914 (Regex!15028) Bool)

(assert (=> b!5345520 (= e!3318843 (isEmptyLang!914 lt!2179438))))

(declare-fun e!3318846 () Bool)

(assert (=> d!1714634 e!3318846))

(declare-fun res!2267891 () Bool)

(assert (=> d!1714634 (=> (not res!2267891) (not e!3318846))))

(assert (=> d!1714634 (= res!2267891 (validRegex!6764 lt!2179438))))

(declare-fun e!3318845 () Regex!15028)

(assert (=> d!1714634 (= lt!2179438 e!3318845)))

(declare-fun c!930326 () Bool)

(declare-fun e!3318847 () Bool)

(assert (=> d!1714634 (= c!930326 e!3318847)))

(declare-fun res!2267892 () Bool)

(assert (=> d!1714634 (=> (not res!2267892) (not e!3318847))))

(assert (=> d!1714634 (= res!2267892 (is-Cons!61259 (unfocusZipperList!470 zl!343)))))

(assert (=> d!1714634 (forall!14450 (unfocusZipperList!470 zl!343) lambda!274393)))

(assert (=> d!1714634 (= (generalisedUnion!957 (unfocusZipperList!470 zl!343)) lt!2179438)))

(declare-fun b!5345521 () Bool)

(assert (=> b!5345521 (= e!3318848 (= lt!2179438 (head!11461 (unfocusZipperList!470 zl!343))))))

(declare-fun b!5345522 () Bool)

(declare-fun e!3318844 () Regex!15028)

(assert (=> b!5345522 (= e!3318844 EmptyLang!15028)))

(declare-fun b!5345523 () Bool)

(assert (=> b!5345523 (= e!3318845 e!3318844)))

(declare-fun c!930327 () Bool)

(assert (=> b!5345523 (= c!930327 (is-Cons!61259 (unfocusZipperList!470 zl!343)))))

(declare-fun b!5345524 () Bool)

(assert (=> b!5345524 (= e!3318843 e!3318848)))

(declare-fun c!930324 () Bool)

(assert (=> b!5345524 (= c!930324 (isEmpty!33233 (tail!10558 (unfocusZipperList!470 zl!343))))))

(declare-fun b!5345525 () Bool)

(assert (=> b!5345525 (= e!3318845 (h!67707 (unfocusZipperList!470 zl!343)))))

(declare-fun b!5345526 () Bool)

(assert (=> b!5345526 (= e!3318844 (Union!15028 (h!67707 (unfocusZipperList!470 zl!343)) (generalisedUnion!957 (t!374600 (unfocusZipperList!470 zl!343)))))))

(declare-fun b!5345527 () Bool)

(assert (=> b!5345527 (= e!3318846 e!3318843)))

(declare-fun c!930325 () Bool)

(assert (=> b!5345527 (= c!930325 (isEmpty!33233 (unfocusZipperList!470 zl!343)))))

(declare-fun b!5345528 () Bool)

(assert (=> b!5345528 (= e!3318847 (isEmpty!33233 (t!374600 (unfocusZipperList!470 zl!343))))))

(assert (= (and d!1714634 res!2267892) b!5345528))

(assert (= (and d!1714634 c!930326) b!5345525))

(assert (= (and d!1714634 (not c!930326)) b!5345523))

(assert (= (and b!5345523 c!930327) b!5345526))

(assert (= (and b!5345523 (not c!930327)) b!5345522))

(assert (= (and d!1714634 res!2267891) b!5345527))

(assert (= (and b!5345527 c!930325) b!5345520))

(assert (= (and b!5345527 (not c!930325)) b!5345524))

(assert (= (and b!5345524 c!930324) b!5345521))

(assert (= (and b!5345524 (not c!930324)) b!5345519))

(assert (=> b!5345524 m!6376782))

(declare-fun m!6377352 () Bool)

(assert (=> b!5345524 m!6377352))

(assert (=> b!5345524 m!6377352))

(declare-fun m!6377358 () Bool)

(assert (=> b!5345524 m!6377358))

(declare-fun m!6377360 () Bool)

(assert (=> b!5345526 m!6377360))

(assert (=> b!5345521 m!6376782))

(declare-fun m!6377364 () Bool)

(assert (=> b!5345521 m!6377364))

(declare-fun m!6377368 () Bool)

(assert (=> b!5345520 m!6377368))

(assert (=> b!5345527 m!6376782))

(declare-fun m!6377372 () Bool)

(assert (=> b!5345527 m!6377372))

(declare-fun m!6377374 () Bool)

(assert (=> b!5345519 m!6377374))

(declare-fun m!6377376 () Bool)

(assert (=> d!1714634 m!6377376))

(assert (=> d!1714634 m!6376782))

(declare-fun m!6377378 () Bool)

(assert (=> d!1714634 m!6377378))

(declare-fun m!6377380 () Bool)

(assert (=> b!5345528 m!6377380))

(assert (=> b!5344807 d!1714634))

(declare-fun bs!1239391 () Bool)

(declare-fun d!1714640 () Bool)

(assert (= bs!1239391 (and d!1714640 d!1714572)))

(declare-fun lambda!274398 () Int)

(assert (=> bs!1239391 (= lambda!274398 lambda!274371)))

(declare-fun bs!1239392 () Bool)

(assert (= bs!1239392 (and d!1714640 d!1714528)))

(assert (=> bs!1239392 (= lambda!274398 lambda!274352)))

(declare-fun bs!1239393 () Bool)

(assert (= bs!1239393 (and d!1714640 d!1714588)))

(assert (=> bs!1239393 (= lambda!274398 lambda!274375)))

(declare-fun bs!1239394 () Bool)

(assert (= bs!1239394 (and d!1714640 b!5344794)))

(assert (=> bs!1239394 (= lambda!274398 lambda!274311)))

(declare-fun bs!1239395 () Bool)

(assert (= bs!1239395 (and d!1714640 d!1714634)))

(assert (=> bs!1239395 (= lambda!274398 lambda!274393)))

(declare-fun bs!1239396 () Bool)

(assert (= bs!1239396 (and d!1714640 d!1714612)))

(assert (=> bs!1239396 (= lambda!274398 lambda!274385)))

(declare-fun lt!2179446 () List!61383)

(assert (=> d!1714640 (forall!14450 lt!2179446 lambda!274398)))

(declare-fun e!3318861 () List!61383)

(assert (=> d!1714640 (= lt!2179446 e!3318861)))

(declare-fun c!930338 () Bool)

(assert (=> d!1714640 (= c!930338 (is-Cons!61260 zl!343))))

(assert (=> d!1714640 (= (unfocusZipperList!470 zl!343) lt!2179446)))

(declare-fun b!5345551 () Bool)

(assert (=> b!5345551 (= e!3318861 (Cons!61259 (generalisedConcat!697 (exprs!4912 (h!67708 zl!343))) (unfocusZipperList!470 (t!374601 zl!343))))))

(declare-fun b!5345552 () Bool)

(assert (=> b!5345552 (= e!3318861 Nil!61259)))

(assert (= (and d!1714640 c!930338) b!5345551))

(assert (= (and d!1714640 (not c!930338)) b!5345552))

(declare-fun m!6377390 () Bool)

(assert (=> d!1714640 m!6377390))

(assert (=> b!5345551 m!6376682))

(declare-fun m!6377392 () Bool)

(assert (=> b!5345551 m!6377392))

(assert (=> b!5344807 d!1714640))

(declare-fun d!1714650 () Bool)

(declare-fun c!930339 () Bool)

(assert (=> d!1714650 (= c!930339 (isEmpty!33237 (t!374602 s!2326)))))

(declare-fun e!3318862 () Bool)

(assert (=> d!1714650 (= (matchZipper!1272 lt!2179235 (t!374602 s!2326)) e!3318862)))

(declare-fun b!5345553 () Bool)

(assert (=> b!5345553 (= e!3318862 (nullableZipper!1371 lt!2179235))))

(declare-fun b!5345554 () Bool)

(assert (=> b!5345554 (= e!3318862 (matchZipper!1272 (derivationStepZipper!1269 lt!2179235 (head!11460 (t!374602 s!2326))) (tail!10557 (t!374602 s!2326))))))

(assert (= (and d!1714650 c!930339) b!5345553))

(assert (= (and d!1714650 (not c!930339)) b!5345554))

(assert (=> d!1714650 m!6376932))

(declare-fun m!6377394 () Bool)

(assert (=> b!5345553 m!6377394))

(assert (=> b!5345554 m!6376936))

(assert (=> b!5345554 m!6376936))

(declare-fun m!6377396 () Bool)

(assert (=> b!5345554 m!6377396))

(assert (=> b!5345554 m!6376940))

(assert (=> b!5345554 m!6377396))

(assert (=> b!5345554 m!6376940))

(declare-fun m!6377398 () Bool)

(assert (=> b!5345554 m!6377398))

(assert (=> b!5344804 d!1714650))

(assert (=> b!5344804 d!1714550))

(declare-fun b!5345555 () Bool)

(declare-fun res!2267898 () Bool)

(declare-fun e!3318864 () Bool)

(assert (=> b!5345555 (=> (not res!2267898) (not e!3318864))))

(assert (=> b!5345555 (= res!2267898 (isEmpty!33237 (tail!10557 s!2326)))))

(declare-fun b!5345556 () Bool)

(declare-fun e!3318867 () Bool)

(declare-fun e!3318869 () Bool)

(assert (=> b!5345556 (= e!3318867 e!3318869)))

(declare-fun res!2267899 () Bool)

(assert (=> b!5345556 (=> (not res!2267899) (not e!3318869))))

(declare-fun lt!2179447 () Bool)

(assert (=> b!5345556 (= res!2267899 (not lt!2179447))))

(declare-fun b!5345557 () Bool)

(declare-fun e!3318863 () Bool)

(declare-fun call!382102 () Bool)

(assert (=> b!5345557 (= e!3318863 (= lt!2179447 call!382102))))

(declare-fun b!5345558 () Bool)

(declare-fun res!2267900 () Bool)

(declare-fun e!3318866 () Bool)

(assert (=> b!5345558 (=> res!2267900 e!3318866)))

(assert (=> b!5345558 (= res!2267900 (not (isEmpty!33237 (tail!10557 s!2326))))))

(declare-fun b!5345559 () Bool)

(declare-fun res!2267902 () Bool)

(assert (=> b!5345559 (=> res!2267902 e!3318867)))

(assert (=> b!5345559 (= res!2267902 e!3318864)))

(declare-fun res!2267895 () Bool)

(assert (=> b!5345559 (=> (not res!2267895) (not e!3318864))))

(assert (=> b!5345559 (= res!2267895 lt!2179447)))

(declare-fun b!5345560 () Bool)

(assert (=> b!5345560 (= e!3318869 e!3318866)))

(declare-fun res!2267897 () Bool)

(assert (=> b!5345560 (=> res!2267897 e!3318866)))

(assert (=> b!5345560 (= res!2267897 call!382102)))

(declare-fun b!5345561 () Bool)

(assert (=> b!5345561 (= e!3318864 (= (head!11460 s!2326) (c!930152 (Concat!23873 lt!2179254 (regTwo!30568 r!7292)))))))

(declare-fun b!5345562 () Bool)

(declare-fun e!3318868 () Bool)

(assert (=> b!5345562 (= e!3318868 (nullable!5197 (Concat!23873 lt!2179254 (regTwo!30568 r!7292))))))

(declare-fun b!5345563 () Bool)

(declare-fun res!2267896 () Bool)

(assert (=> b!5345563 (=> res!2267896 e!3318867)))

(assert (=> b!5345563 (= res!2267896 (not (is-ElementMatch!15028 (Concat!23873 lt!2179254 (regTwo!30568 r!7292)))))))

(declare-fun e!3318865 () Bool)

(assert (=> b!5345563 (= e!3318865 e!3318867)))

(declare-fun b!5345564 () Bool)

(assert (=> b!5345564 (= e!3318865 (not lt!2179447))))

(declare-fun b!5345565 () Bool)

(assert (=> b!5345565 (= e!3318868 (matchR!7213 (derivativeStep!4192 (Concat!23873 lt!2179254 (regTwo!30568 r!7292)) (head!11460 s!2326)) (tail!10557 s!2326)))))

(declare-fun bm!382097 () Bool)

(assert (=> bm!382097 (= call!382102 (isEmpty!33237 s!2326))))

(declare-fun b!5345566 () Bool)

(assert (=> b!5345566 (= e!3318866 (not (= (head!11460 s!2326) (c!930152 (Concat!23873 lt!2179254 (regTwo!30568 r!7292))))))))

(declare-fun d!1714652 () Bool)

(assert (=> d!1714652 e!3318863))

(declare-fun c!930342 () Bool)

(assert (=> d!1714652 (= c!930342 (is-EmptyExpr!15028 (Concat!23873 lt!2179254 (regTwo!30568 r!7292))))))

(assert (=> d!1714652 (= lt!2179447 e!3318868)))

(declare-fun c!930340 () Bool)

(assert (=> d!1714652 (= c!930340 (isEmpty!33237 s!2326))))

(assert (=> d!1714652 (validRegex!6764 (Concat!23873 lt!2179254 (regTwo!30568 r!7292)))))

(assert (=> d!1714652 (= (matchR!7213 (Concat!23873 lt!2179254 (regTwo!30568 r!7292)) s!2326) lt!2179447)))

(declare-fun b!5345567 () Bool)

(declare-fun res!2267901 () Bool)

(assert (=> b!5345567 (=> (not res!2267901) (not e!3318864))))

(assert (=> b!5345567 (= res!2267901 (not call!382102))))

(declare-fun b!5345568 () Bool)

(assert (=> b!5345568 (= e!3318863 e!3318865)))

(declare-fun c!930341 () Bool)

(assert (=> b!5345568 (= c!930341 (is-EmptyLang!15028 (Concat!23873 lt!2179254 (regTwo!30568 r!7292))))))

(assert (= (and d!1714652 c!930340) b!5345562))

(assert (= (and d!1714652 (not c!930340)) b!5345565))

(assert (= (and d!1714652 c!930342) b!5345557))

(assert (= (and d!1714652 (not c!930342)) b!5345568))

(assert (= (and b!5345568 c!930341) b!5345564))

(assert (= (and b!5345568 (not c!930341)) b!5345563))

(assert (= (and b!5345563 (not res!2267896)) b!5345559))

(assert (= (and b!5345559 res!2267895) b!5345567))

(assert (= (and b!5345567 res!2267901) b!5345555))

(assert (= (and b!5345555 res!2267898) b!5345561))

(assert (= (and b!5345559 (not res!2267902)) b!5345556))

(assert (= (and b!5345556 res!2267899) b!5345560))

(assert (= (and b!5345560 (not res!2267897)) b!5345558))

(assert (= (and b!5345558 (not res!2267900)) b!5345566))

(assert (= (or b!5345557 b!5345560 b!5345567) bm!382097))

(assert (=> bm!382097 m!6376946))

(assert (=> b!5345555 m!6376952))

(assert (=> b!5345555 m!6376952))

(assert (=> b!5345555 m!6376954))

(assert (=> b!5345561 m!6376956))

(assert (=> b!5345565 m!6376956))

(assert (=> b!5345565 m!6376956))

(declare-fun m!6377400 () Bool)

(assert (=> b!5345565 m!6377400))

(assert (=> b!5345565 m!6376952))

(assert (=> b!5345565 m!6377400))

(assert (=> b!5345565 m!6376952))

(declare-fun m!6377402 () Bool)

(assert (=> b!5345565 m!6377402))

(assert (=> b!5345566 m!6376956))

(declare-fun m!6377404 () Bool)

(assert (=> b!5345562 m!6377404))

(assert (=> d!1714652 m!6376946))

(declare-fun m!6377406 () Bool)

(assert (=> d!1714652 m!6377406))

(assert (=> b!5345558 m!6376952))

(assert (=> b!5345558 m!6376952))

(assert (=> b!5345558 m!6376954))

(assert (=> b!5344824 d!1714652))

(declare-fun bs!1239397 () Bool)

(declare-fun d!1714654 () Bool)

(assert (= bs!1239397 (and d!1714654 d!1714572)))

(declare-fun lambda!274399 () Int)

(assert (=> bs!1239397 (= lambda!274399 lambda!274371)))

(declare-fun bs!1239398 () Bool)

(assert (= bs!1239398 (and d!1714654 d!1714528)))

(assert (=> bs!1239398 (= lambda!274399 lambda!274352)))

(declare-fun bs!1239399 () Bool)

(assert (= bs!1239399 (and d!1714654 d!1714588)))

(assert (=> bs!1239399 (= lambda!274399 lambda!274375)))

(declare-fun bs!1239400 () Bool)

(assert (= bs!1239400 (and d!1714654 b!5344794)))

(assert (=> bs!1239400 (= lambda!274399 lambda!274311)))

(declare-fun bs!1239401 () Bool)

(assert (= bs!1239401 (and d!1714654 d!1714640)))

(assert (=> bs!1239401 (= lambda!274399 lambda!274398)))

(declare-fun bs!1239402 () Bool)

(assert (= bs!1239402 (and d!1714654 d!1714634)))

(assert (=> bs!1239402 (= lambda!274399 lambda!274393)))

(declare-fun bs!1239403 () Bool)

(assert (= bs!1239403 (and d!1714654 d!1714612)))

(assert (=> bs!1239403 (= lambda!274399 lambda!274385)))

(assert (=> d!1714654 (= (inv!80818 setElem!34510) (forall!14450 (exprs!4912 setElem!34510) lambda!274399))))

(declare-fun bs!1239404 () Bool)

(assert (= bs!1239404 d!1714654))

(declare-fun m!6377408 () Bool)

(assert (=> bs!1239404 m!6377408))

(assert (=> setNonEmpty!34510 d!1714654))

(declare-fun d!1714656 () Bool)

(declare-fun lt!2179450 () Int)

(assert (=> d!1714656 (>= lt!2179450 0)))

(declare-fun e!3318872 () Int)

(assert (=> d!1714656 (= lt!2179450 e!3318872)))

(declare-fun c!930345 () Bool)

(assert (=> d!1714656 (= c!930345 (is-Cons!61260 lt!2179247))))

(assert (=> d!1714656 (= (zipperDepthTotal!181 lt!2179247) lt!2179450)))

(declare-fun b!5345573 () Bool)

(assert (=> b!5345573 (= e!3318872 (+ (contextDepthTotal!161 (h!67708 lt!2179247)) (zipperDepthTotal!181 (t!374601 lt!2179247))))))

(declare-fun b!5345574 () Bool)

(assert (=> b!5345574 (= e!3318872 0)))

(assert (= (and d!1714656 c!930345) b!5345573))

(assert (= (and d!1714656 (not c!930345)) b!5345574))

(declare-fun m!6377410 () Bool)

(assert (=> b!5345573 m!6377410))

(declare-fun m!6377412 () Bool)

(assert (=> b!5345573 m!6377412))

(assert (=> b!5344811 d!1714656))

(declare-fun d!1714658 () Bool)

(declare-fun lt!2179451 () Int)

(assert (=> d!1714658 (>= lt!2179451 0)))

(declare-fun e!3318873 () Int)

(assert (=> d!1714658 (= lt!2179451 e!3318873)))

(declare-fun c!930346 () Bool)

(assert (=> d!1714658 (= c!930346 (is-Cons!61260 zl!343))))

(assert (=> d!1714658 (= (zipperDepthTotal!181 zl!343) lt!2179451)))

(declare-fun b!5345575 () Bool)

(assert (=> b!5345575 (= e!3318873 (+ (contextDepthTotal!161 (h!67708 zl!343)) (zipperDepthTotal!181 (t!374601 zl!343))))))

(declare-fun b!5345576 () Bool)

(assert (=> b!5345576 (= e!3318873 0)))

(assert (= (and d!1714658 c!930346) b!5345575))

(assert (= (and d!1714658 (not c!930346)) b!5345576))

(assert (=> b!5345575 m!6376776))

(declare-fun m!6377414 () Bool)

(assert (=> b!5345575 m!6377414))

(assert (=> b!5344811 d!1714658))

(declare-fun b!5345610 () Bool)

(assert (=> b!5345610 true))

(declare-fun bs!1239407 () Bool)

(declare-fun b!5345612 () Bool)

(assert (= bs!1239407 (and b!5345612 b!5345610)))

(declare-fun lt!2179471 () Int)

(declare-fun lt!2179469 () Int)

(declare-fun lambda!274408 () Int)

(declare-fun lambda!274407 () Int)

(assert (=> bs!1239407 (= (= lt!2179471 lt!2179469) (= lambda!274408 lambda!274407))))

(assert (=> b!5345612 true))

(declare-fun d!1714660 () Bool)

(declare-fun e!3318894 () Bool)

(assert (=> d!1714660 e!3318894))

(declare-fun res!2267920 () Bool)

(assert (=> d!1714660 (=> (not res!2267920) (not e!3318894))))

(assert (=> d!1714660 (= res!2267920 (>= lt!2179471 0))))

(declare-fun e!3318893 () Int)

(assert (=> d!1714660 (= lt!2179471 e!3318893)))

(declare-fun c!930361 () Bool)

(assert (=> d!1714660 (= c!930361 (is-Cons!61260 lt!2179247))))

(assert (=> d!1714660 (= (zipperDepth!137 lt!2179247) lt!2179471)))

(assert (=> b!5345610 (= e!3318893 lt!2179469)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!77 (Context!8824) Int)

(assert (=> b!5345610 (= lt!2179469 (maxBigInt!0 (contextDepth!77 (h!67708 lt!2179247)) (zipperDepth!137 (t!374601 lt!2179247))))))

(declare-fun lambda!274406 () Int)

(declare-fun lt!2179470 () Unit!153630)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!71 (List!61384 Int Int Int) Unit!153630)

(assert (=> b!5345610 (= lt!2179470 (lemmaForallContextDepthBiggerThanTransitive!71 (t!374601 lt!2179247) lt!2179469 (zipperDepth!137 (t!374601 lt!2179247)) lambda!274406))))

(declare-fun forall!14452 (List!61384 Int) Bool)

(assert (=> b!5345610 (forall!14452 (t!374601 lt!2179247) lambda!274407)))

(declare-fun lt!2179472 () Unit!153630)

(assert (=> b!5345610 (= lt!2179472 lt!2179470)))

(declare-fun b!5345611 () Bool)

(assert (=> b!5345611 (= e!3318893 0)))

(assert (=> b!5345612 (= e!3318894 (forall!14452 lt!2179247 lambda!274408))))

(assert (= (and d!1714660 c!930361) b!5345610))

(assert (= (and d!1714660 (not c!930361)) b!5345611))

(assert (= (and d!1714660 res!2267920) b!5345612))

(declare-fun m!6377444 () Bool)

(assert (=> b!5345610 m!6377444))

(declare-fun m!6377446 () Bool)

(assert (=> b!5345610 m!6377446))

(declare-fun m!6377448 () Bool)

(assert (=> b!5345610 m!6377448))

(assert (=> b!5345610 m!6377446))

(declare-fun m!6377450 () Bool)

(assert (=> b!5345610 m!6377450))

(assert (=> b!5345610 m!6377446))

(declare-fun m!6377452 () Bool)

(assert (=> b!5345610 m!6377452))

(assert (=> b!5345610 m!6377450))

(declare-fun m!6377454 () Bool)

(assert (=> b!5345612 m!6377454))

(assert (=> b!5344792 d!1714660))

(declare-fun bs!1239408 () Bool)

(declare-fun b!5345615 () Bool)

(assert (= bs!1239408 (and b!5345615 b!5345610)))

(declare-fun lambda!274409 () Int)

(assert (=> bs!1239408 (= lambda!274409 lambda!274406)))

(declare-fun lambda!274410 () Int)

(declare-fun lt!2179473 () Int)

(assert (=> bs!1239408 (= (= lt!2179473 lt!2179469) (= lambda!274410 lambda!274407))))

(declare-fun bs!1239409 () Bool)

(assert (= bs!1239409 (and b!5345615 b!5345612)))

(assert (=> bs!1239409 (= (= lt!2179473 lt!2179471) (= lambda!274410 lambda!274408))))

(assert (=> b!5345615 true))

(declare-fun bs!1239410 () Bool)

(declare-fun b!5345617 () Bool)

(assert (= bs!1239410 (and b!5345617 b!5345610)))

(declare-fun lt!2179475 () Int)

(declare-fun lambda!274411 () Int)

(assert (=> bs!1239410 (= (= lt!2179475 lt!2179469) (= lambda!274411 lambda!274407))))

(declare-fun bs!1239411 () Bool)

(assert (= bs!1239411 (and b!5345617 b!5345612)))

(assert (=> bs!1239411 (= (= lt!2179475 lt!2179471) (= lambda!274411 lambda!274408))))

(declare-fun bs!1239412 () Bool)

(assert (= bs!1239412 (and b!5345617 b!5345615)))

(assert (=> bs!1239412 (= (= lt!2179475 lt!2179473) (= lambda!274411 lambda!274410))))

(assert (=> b!5345617 true))

(declare-fun d!1714668 () Bool)

(declare-fun e!3318896 () Bool)

(assert (=> d!1714668 e!3318896))

(declare-fun res!2267921 () Bool)

(assert (=> d!1714668 (=> (not res!2267921) (not e!3318896))))

(assert (=> d!1714668 (= res!2267921 (>= lt!2179475 0))))

(declare-fun e!3318895 () Int)

(assert (=> d!1714668 (= lt!2179475 e!3318895)))

(declare-fun c!930362 () Bool)

(assert (=> d!1714668 (= c!930362 (is-Cons!61260 zl!343))))

(assert (=> d!1714668 (= (zipperDepth!137 zl!343) lt!2179475)))

(assert (=> b!5345615 (= e!3318895 lt!2179473)))

(assert (=> b!5345615 (= lt!2179473 (maxBigInt!0 (contextDepth!77 (h!67708 zl!343)) (zipperDepth!137 (t!374601 zl!343))))))

(declare-fun lt!2179474 () Unit!153630)

(assert (=> b!5345615 (= lt!2179474 (lemmaForallContextDepthBiggerThanTransitive!71 (t!374601 zl!343) lt!2179473 (zipperDepth!137 (t!374601 zl!343)) lambda!274409))))

(assert (=> b!5345615 (forall!14452 (t!374601 zl!343) lambda!274410)))

(declare-fun lt!2179476 () Unit!153630)

(assert (=> b!5345615 (= lt!2179476 lt!2179474)))

(declare-fun b!5345616 () Bool)

(assert (=> b!5345616 (= e!3318895 0)))

(assert (=> b!5345617 (= e!3318896 (forall!14452 zl!343 lambda!274411))))

(assert (= (and d!1714668 c!930362) b!5345615))

(assert (= (and d!1714668 (not c!930362)) b!5345616))

(assert (= (and d!1714668 res!2267921) b!5345617))

(declare-fun m!6377456 () Bool)

(assert (=> b!5345615 m!6377456))

(declare-fun m!6377458 () Bool)

(assert (=> b!5345615 m!6377458))

(declare-fun m!6377460 () Bool)

(assert (=> b!5345615 m!6377460))

(assert (=> b!5345615 m!6377458))

(declare-fun m!6377462 () Bool)

(assert (=> b!5345615 m!6377462))

(assert (=> b!5345615 m!6377458))

(declare-fun m!6377464 () Bool)

(assert (=> b!5345615 m!6377464))

(assert (=> b!5345615 m!6377462))

(declare-fun m!6377466 () Bool)

(assert (=> b!5345617 m!6377466))

(assert (=> b!5344792 d!1714668))

(declare-fun d!1714670 () Bool)

(assert (=> d!1714670 (= (nullable!5197 (regOne!30568 (regOne!30568 r!7292))) (nullableFct!1523 (regOne!30568 (regOne!30568 r!7292))))))

(declare-fun bs!1239413 () Bool)

(assert (= bs!1239413 d!1714670))

(declare-fun m!6377468 () Bool)

(assert (=> bs!1239413 m!6377468))

(assert (=> b!5344791 d!1714670))

(declare-fun bs!1239414 () Bool)

(declare-fun d!1714672 () Bool)

(assert (= bs!1239414 (and d!1714672 d!1714572)))

(declare-fun lambda!274412 () Int)

(assert (=> bs!1239414 (= lambda!274412 lambda!274371)))

(declare-fun bs!1239415 () Bool)

(assert (= bs!1239415 (and d!1714672 d!1714528)))

(assert (=> bs!1239415 (= lambda!274412 lambda!274352)))

(declare-fun bs!1239416 () Bool)

(assert (= bs!1239416 (and d!1714672 d!1714588)))

(assert (=> bs!1239416 (= lambda!274412 lambda!274375)))

(declare-fun bs!1239417 () Bool)

(assert (= bs!1239417 (and d!1714672 b!5344794)))

(assert (=> bs!1239417 (= lambda!274412 lambda!274311)))

(declare-fun bs!1239418 () Bool)

(assert (= bs!1239418 (and d!1714672 d!1714640)))

(assert (=> bs!1239418 (= lambda!274412 lambda!274398)))

(declare-fun bs!1239419 () Bool)

(assert (= bs!1239419 (and d!1714672 d!1714634)))

(assert (=> bs!1239419 (= lambda!274412 lambda!274393)))

(declare-fun bs!1239420 () Bool)

(assert (= bs!1239420 (and d!1714672 d!1714654)))

(assert (=> bs!1239420 (= lambda!274412 lambda!274399)))

(declare-fun bs!1239421 () Bool)

(assert (= bs!1239421 (and d!1714672 d!1714612)))

(assert (=> bs!1239421 (= lambda!274412 lambda!274385)))

(declare-fun b!5345619 () Bool)

(declare-fun e!3318897 () Bool)

(declare-fun e!3318901 () Bool)

(assert (=> b!5345619 (= e!3318897 e!3318901)))

(declare-fun c!930365 () Bool)

(assert (=> b!5345619 (= c!930365 (isEmpty!33233 (tail!10558 (exprs!4912 (h!67708 zl!343)))))))

(declare-fun b!5345620 () Bool)

(declare-fun e!3318899 () Bool)

(assert (=> b!5345620 (= e!3318899 (isEmpty!33233 (t!374600 (exprs!4912 (h!67708 zl!343)))))))

(declare-fun b!5345621 () Bool)

(declare-fun e!3318898 () Regex!15028)

(assert (=> b!5345621 (= e!3318898 (h!67707 (exprs!4912 (h!67708 zl!343))))))

(declare-fun b!5345622 () Bool)

(declare-fun e!3318902 () Regex!15028)

(assert (=> b!5345622 (= e!3318902 EmptyExpr!15028)))

(declare-fun b!5345623 () Bool)

(assert (=> b!5345623 (= e!3318902 (Concat!23873 (h!67707 (exprs!4912 (h!67708 zl!343))) (generalisedConcat!697 (t!374600 (exprs!4912 (h!67708 zl!343))))))))

(declare-fun b!5345624 () Bool)

(declare-fun e!3318900 () Bool)

(assert (=> b!5345624 (= e!3318900 e!3318897)))

(declare-fun c!930366 () Bool)

(assert (=> b!5345624 (= c!930366 (isEmpty!33233 (exprs!4912 (h!67708 zl!343))))))

(declare-fun b!5345625 () Bool)

(declare-fun lt!2179477 () Regex!15028)

(assert (=> b!5345625 (= e!3318901 (isConcat!429 lt!2179477))))

(assert (=> d!1714672 e!3318900))

(declare-fun res!2267922 () Bool)

(assert (=> d!1714672 (=> (not res!2267922) (not e!3318900))))

(assert (=> d!1714672 (= res!2267922 (validRegex!6764 lt!2179477))))

(assert (=> d!1714672 (= lt!2179477 e!3318898)))

(declare-fun c!930364 () Bool)

(assert (=> d!1714672 (= c!930364 e!3318899)))

(declare-fun res!2267923 () Bool)

(assert (=> d!1714672 (=> (not res!2267923) (not e!3318899))))

(assert (=> d!1714672 (= res!2267923 (is-Cons!61259 (exprs!4912 (h!67708 zl!343))))))

(assert (=> d!1714672 (forall!14450 (exprs!4912 (h!67708 zl!343)) lambda!274412)))

(assert (=> d!1714672 (= (generalisedConcat!697 (exprs!4912 (h!67708 zl!343))) lt!2179477)))

(declare-fun b!5345618 () Bool)

(assert (=> b!5345618 (= e!3318897 (isEmptyExpr!906 lt!2179477))))

(declare-fun b!5345626 () Bool)

(assert (=> b!5345626 (= e!3318898 e!3318902)))

(declare-fun c!930363 () Bool)

(assert (=> b!5345626 (= c!930363 (is-Cons!61259 (exprs!4912 (h!67708 zl!343))))))

(declare-fun b!5345627 () Bool)

(assert (=> b!5345627 (= e!3318901 (= lt!2179477 (head!11461 (exprs!4912 (h!67708 zl!343)))))))

(assert (= (and d!1714672 res!2267923) b!5345620))

(assert (= (and d!1714672 c!930364) b!5345621))

(assert (= (and d!1714672 (not c!930364)) b!5345626))

(assert (= (and b!5345626 c!930363) b!5345623))

(assert (= (and b!5345626 (not c!930363)) b!5345622))

(assert (= (and d!1714672 res!2267922) b!5345624))

(assert (= (and b!5345624 c!930366) b!5345618))

(assert (= (and b!5345624 (not c!930366)) b!5345619))

(assert (= (and b!5345619 c!930365) b!5345627))

(assert (= (and b!5345619 (not c!930365)) b!5345625))

(declare-fun m!6377470 () Bool)

(assert (=> b!5345625 m!6377470))

(declare-fun m!6377472 () Bool)

(assert (=> d!1714672 m!6377472))

(declare-fun m!6377474 () Bool)

(assert (=> d!1714672 m!6377474))

(assert (=> b!5345623 m!6376748))

(assert (=> b!5345620 m!6376700))

(declare-fun m!6377476 () Bool)

(assert (=> b!5345627 m!6377476))

(declare-fun m!6377478 () Bool)

(assert (=> b!5345624 m!6377478))

(declare-fun m!6377480 () Bool)

(assert (=> b!5345619 m!6377480))

(assert (=> b!5345619 m!6377480))

(declare-fun m!6377482 () Bool)

(assert (=> b!5345619 m!6377482))

(declare-fun m!6377484 () Bool)

(assert (=> b!5345618 m!6377484))

(assert (=> b!5344812 d!1714672))

(declare-fun d!1714674 () Bool)

(assert (=> d!1714674 (= (isEmpty!33234 (t!374601 zl!343)) (is-Nil!61260 (t!374601 zl!343)))))

(assert (=> b!5344808 d!1714674))

(declare-fun b!5345650 () Bool)

(declare-fun e!3318921 () Bool)

(declare-fun e!3318925 () Bool)

(assert (=> b!5345650 (= e!3318921 e!3318925)))

(declare-fun res!2267940 () Bool)

(assert (=> b!5345650 (= res!2267940 (not (nullable!5197 (reg!15357 r!7292))))))

(assert (=> b!5345650 (=> (not res!2267940) (not e!3318925))))

(declare-fun c!930372 () Bool)

(declare-fun call!382109 () Bool)

(declare-fun c!930371 () Bool)

(declare-fun bm!382104 () Bool)

(assert (=> bm!382104 (= call!382109 (validRegex!6764 (ite c!930372 (reg!15357 r!7292) (ite c!930371 (regTwo!30569 r!7292) (regTwo!30568 r!7292)))))))

(declare-fun bm!382105 () Bool)

(declare-fun call!382110 () Bool)

(assert (=> bm!382105 (= call!382110 (validRegex!6764 (ite c!930371 (regOne!30569 r!7292) (regOne!30568 r!7292))))))

(declare-fun b!5345651 () Bool)

(declare-fun res!2267939 () Bool)

(declare-fun e!3318924 () Bool)

(assert (=> b!5345651 (=> (not res!2267939) (not e!3318924))))

(assert (=> b!5345651 (= res!2267939 call!382110)))

(declare-fun e!3318923 () Bool)

(assert (=> b!5345651 (= e!3318923 e!3318924)))

(declare-fun b!5345652 () Bool)

(declare-fun call!382111 () Bool)

(assert (=> b!5345652 (= e!3318924 call!382111)))

(declare-fun bm!382106 () Bool)

(assert (=> bm!382106 (= call!382111 call!382109)))

(declare-fun b!5345653 () Bool)

(declare-fun res!2267941 () Bool)

(declare-fun e!3318919 () Bool)

(assert (=> b!5345653 (=> res!2267941 e!3318919)))

(assert (=> b!5345653 (= res!2267941 (not (is-Concat!23873 r!7292)))))

(assert (=> b!5345653 (= e!3318923 e!3318919)))

(declare-fun b!5345654 () Bool)

(declare-fun e!3318922 () Bool)

(assert (=> b!5345654 (= e!3318919 e!3318922)))

(declare-fun res!2267938 () Bool)

(assert (=> b!5345654 (=> (not res!2267938) (not e!3318922))))

(assert (=> b!5345654 (= res!2267938 call!382110)))

(declare-fun d!1714676 () Bool)

(declare-fun res!2267942 () Bool)

(declare-fun e!3318920 () Bool)

(assert (=> d!1714676 (=> res!2267942 e!3318920)))

(assert (=> d!1714676 (= res!2267942 (is-ElementMatch!15028 r!7292))))

(assert (=> d!1714676 (= (validRegex!6764 r!7292) e!3318920)))

(declare-fun b!5345655 () Bool)

(assert (=> b!5345655 (= e!3318920 e!3318921)))

(assert (=> b!5345655 (= c!930372 (is-Star!15028 r!7292))))

(declare-fun b!5345656 () Bool)

(assert (=> b!5345656 (= e!3318921 e!3318923)))

(assert (=> b!5345656 (= c!930371 (is-Union!15028 r!7292))))

(declare-fun b!5345657 () Bool)

(assert (=> b!5345657 (= e!3318922 call!382111)))

(declare-fun b!5345658 () Bool)

(assert (=> b!5345658 (= e!3318925 call!382109)))

(assert (= (and d!1714676 (not res!2267942)) b!5345655))

(assert (= (and b!5345655 c!930372) b!5345650))

(assert (= (and b!5345655 (not c!930372)) b!5345656))

(assert (= (and b!5345650 res!2267940) b!5345658))

(assert (= (and b!5345656 c!930371) b!5345651))

(assert (= (and b!5345656 (not c!930371)) b!5345653))

(assert (= (and b!5345651 res!2267939) b!5345652))

(assert (= (and b!5345653 (not res!2267941)) b!5345654))

(assert (= (and b!5345654 res!2267938) b!5345657))

(assert (= (or b!5345652 b!5345657) bm!382106))

(assert (= (or b!5345651 b!5345654) bm!382105))

(assert (= (or b!5345658 bm!382106) bm!382104))

(declare-fun m!6377490 () Bool)

(assert (=> b!5345650 m!6377490))

(declare-fun m!6377492 () Bool)

(assert (=> bm!382104 m!6377492))

(declare-fun m!6377494 () Bool)

(assert (=> bm!382105 m!6377494))

(assert (=> start!562980 d!1714676))

(declare-fun d!1714680 () Bool)

(assert (=> d!1714680 (= (isEmpty!33233 (t!374600 (exprs!4912 (h!67708 zl!343)))) (is-Nil!61259 (t!374600 (exprs!4912 (h!67708 zl!343)))))))

(assert (=> b!5344790 d!1714680))

(declare-fun b!5345670 () Bool)

(declare-fun e!3318928 () Bool)

(declare-fun tp!1485651 () Bool)

(declare-fun tp!1485650 () Bool)

(assert (=> b!5345670 (= e!3318928 (and tp!1485651 tp!1485650))))

(declare-fun b!5345669 () Bool)

(assert (=> b!5345669 (= e!3318928 tp_is_empty!39309)))

(declare-fun b!5345672 () Bool)

(declare-fun tp!1485648 () Bool)

(declare-fun tp!1485652 () Bool)

(assert (=> b!5345672 (= e!3318928 (and tp!1485648 tp!1485652))))

(assert (=> b!5344822 (= tp!1485599 e!3318928)))

(declare-fun b!5345671 () Bool)

(declare-fun tp!1485649 () Bool)

(assert (=> b!5345671 (= e!3318928 tp!1485649)))

(assert (= (and b!5344822 (is-ElementMatch!15028 (reg!15357 r!7292))) b!5345669))

(assert (= (and b!5344822 (is-Concat!23873 (reg!15357 r!7292))) b!5345670))

(assert (= (and b!5344822 (is-Star!15028 (reg!15357 r!7292))) b!5345671))

(assert (= (and b!5344822 (is-Union!15028 (reg!15357 r!7292))) b!5345672))

(declare-fun b!5345674 () Bool)

(declare-fun e!3318929 () Bool)

(declare-fun tp!1485656 () Bool)

(declare-fun tp!1485655 () Bool)

(assert (=> b!5345674 (= e!3318929 (and tp!1485656 tp!1485655))))

(declare-fun b!5345673 () Bool)

(assert (=> b!5345673 (= e!3318929 tp_is_empty!39309)))

(declare-fun b!5345676 () Bool)

(declare-fun tp!1485653 () Bool)

(declare-fun tp!1485657 () Bool)

(assert (=> b!5345676 (= e!3318929 (and tp!1485653 tp!1485657))))

(assert (=> b!5344817 (= tp!1485602 e!3318929)))

(declare-fun b!5345675 () Bool)

(declare-fun tp!1485654 () Bool)

(assert (=> b!5345675 (= e!3318929 tp!1485654)))

(assert (= (and b!5344817 (is-ElementMatch!15028 (regOne!30568 r!7292))) b!5345673))

(assert (= (and b!5344817 (is-Concat!23873 (regOne!30568 r!7292))) b!5345674))

(assert (= (and b!5344817 (is-Star!15028 (regOne!30568 r!7292))) b!5345675))

(assert (= (and b!5344817 (is-Union!15028 (regOne!30568 r!7292))) b!5345676))

(declare-fun b!5345678 () Bool)

(declare-fun e!3318930 () Bool)

(declare-fun tp!1485661 () Bool)

(declare-fun tp!1485660 () Bool)

(assert (=> b!5345678 (= e!3318930 (and tp!1485661 tp!1485660))))

(declare-fun b!5345677 () Bool)

(assert (=> b!5345677 (= e!3318930 tp_is_empty!39309)))

(declare-fun b!5345680 () Bool)

(declare-fun tp!1485658 () Bool)

(declare-fun tp!1485662 () Bool)

(assert (=> b!5345680 (= e!3318930 (and tp!1485658 tp!1485662))))

(assert (=> b!5344817 (= tp!1485598 e!3318930)))

(declare-fun b!5345679 () Bool)

(declare-fun tp!1485659 () Bool)

(assert (=> b!5345679 (= e!3318930 tp!1485659)))

(assert (= (and b!5344817 (is-ElementMatch!15028 (regTwo!30568 r!7292))) b!5345677))

(assert (= (and b!5344817 (is-Concat!23873 (regTwo!30568 r!7292))) b!5345678))

(assert (= (and b!5344817 (is-Star!15028 (regTwo!30568 r!7292))) b!5345679))

(assert (= (and b!5344817 (is-Union!15028 (regTwo!30568 r!7292))) b!5345680))

(declare-fun b!5345685 () Bool)

(declare-fun e!3318933 () Bool)

(declare-fun tp!1485667 () Bool)

(declare-fun tp!1485668 () Bool)

(assert (=> b!5345685 (= e!3318933 (and tp!1485667 tp!1485668))))

(assert (=> b!5344819 (= tp!1485604 e!3318933)))

(assert (= (and b!5344819 (is-Cons!61259 (exprs!4912 (h!67708 zl!343)))) b!5345685))

(declare-fun b!5345694 () Bool)

(declare-fun e!3318938 () Bool)

(declare-fun tp!1485671 () Bool)

(assert (=> b!5345694 (= e!3318938 (and tp_is_empty!39309 tp!1485671))))

(assert (=> b!5344796 (= tp!1485600 e!3318938)))

(assert (= (and b!5344796 (is-Cons!61261 (t!374602 s!2326))) b!5345694))

(declare-fun b!5345695 () Bool)

(declare-fun e!3318939 () Bool)

(declare-fun tp!1485672 () Bool)

(declare-fun tp!1485673 () Bool)

(assert (=> b!5345695 (= e!3318939 (and tp!1485672 tp!1485673))))

(assert (=> b!5344826 (= tp!1485601 e!3318939)))

(assert (= (and b!5344826 (is-Cons!61259 (exprs!4912 setElem!34510))) b!5345695))

(declare-fun b!5345703 () Bool)

(declare-fun e!3318945 () Bool)

(declare-fun tp!1485678 () Bool)

(assert (=> b!5345703 (= e!3318945 tp!1485678)))

(declare-fun e!3318944 () Bool)

(declare-fun tp!1485679 () Bool)

(declare-fun b!5345702 () Bool)

(assert (=> b!5345702 (= e!3318944 (and (inv!80818 (h!67708 (t!374601 zl!343))) e!3318945 tp!1485679))))

(assert (=> b!5344795 (= tp!1485603 e!3318944)))

(assert (= b!5345702 b!5345703))

(assert (= (and b!5344795 (is-Cons!61260 (t!374601 zl!343))) b!5345702))

(declare-fun m!6377496 () Bool)

(assert (=> b!5345702 m!6377496))

(declare-fun b!5345705 () Bool)

(declare-fun e!3318946 () Bool)

(declare-fun tp!1485683 () Bool)

(declare-fun tp!1485682 () Bool)

(assert (=> b!5345705 (= e!3318946 (and tp!1485683 tp!1485682))))

(declare-fun b!5345704 () Bool)

(assert (=> b!5345704 (= e!3318946 tp_is_empty!39309)))

(declare-fun b!5345707 () Bool)

(declare-fun tp!1485680 () Bool)

(declare-fun tp!1485684 () Bool)

(assert (=> b!5345707 (= e!3318946 (and tp!1485680 tp!1485684))))

(assert (=> b!5344825 (= tp!1485605 e!3318946)))

(declare-fun b!5345706 () Bool)

(declare-fun tp!1485681 () Bool)

(assert (=> b!5345706 (= e!3318946 tp!1485681)))

(assert (= (and b!5344825 (is-ElementMatch!15028 (regOne!30569 r!7292))) b!5345704))

(assert (= (and b!5344825 (is-Concat!23873 (regOne!30569 r!7292))) b!5345705))

(assert (= (and b!5344825 (is-Star!15028 (regOne!30569 r!7292))) b!5345706))

(assert (= (and b!5344825 (is-Union!15028 (regOne!30569 r!7292))) b!5345707))

(declare-fun b!5345709 () Bool)

(declare-fun e!3318947 () Bool)

(declare-fun tp!1485688 () Bool)

(declare-fun tp!1485687 () Bool)

(assert (=> b!5345709 (= e!3318947 (and tp!1485688 tp!1485687))))

(declare-fun b!5345708 () Bool)

(assert (=> b!5345708 (= e!3318947 tp_is_empty!39309)))

(declare-fun b!5345711 () Bool)

(declare-fun tp!1485685 () Bool)

(declare-fun tp!1485689 () Bool)

(assert (=> b!5345711 (= e!3318947 (and tp!1485685 tp!1485689))))

(assert (=> b!5344825 (= tp!1485607 e!3318947)))

(declare-fun b!5345710 () Bool)

(declare-fun tp!1485686 () Bool)

(assert (=> b!5345710 (= e!3318947 tp!1485686)))

(assert (= (and b!5344825 (is-ElementMatch!15028 (regTwo!30569 r!7292))) b!5345708))

(assert (= (and b!5344825 (is-Concat!23873 (regTwo!30569 r!7292))) b!5345709))

(assert (= (and b!5344825 (is-Star!15028 (regTwo!30569 r!7292))) b!5345710))

(assert (= (and b!5344825 (is-Union!15028 (regTwo!30569 r!7292))) b!5345711))

(declare-fun condSetEmpty!34516 () Bool)

(assert (=> setNonEmpty!34510 (= condSetEmpty!34516 (= setRest!34510 (as set.empty (Set Context!8824))))))

(declare-fun setRes!34516 () Bool)

(assert (=> setNonEmpty!34510 (= tp!1485606 setRes!34516)))

(declare-fun setIsEmpty!34516 () Bool)

(assert (=> setIsEmpty!34516 setRes!34516))

(declare-fun tp!1485694 () Bool)

(declare-fun setElem!34516 () Context!8824)

(declare-fun e!3318952 () Bool)

(declare-fun setNonEmpty!34516 () Bool)

(assert (=> setNonEmpty!34516 (= setRes!34516 (and tp!1485694 (inv!80818 setElem!34516) e!3318952))))

(declare-fun setRest!34516 () (Set Context!8824))

(assert (=> setNonEmpty!34516 (= setRest!34510 (set.union (set.insert setElem!34516 (as set.empty (Set Context!8824))) setRest!34516))))

(declare-fun b!5345720 () Bool)

(declare-fun tp!1485695 () Bool)

(assert (=> b!5345720 (= e!3318952 tp!1485695)))

(assert (= (and setNonEmpty!34510 condSetEmpty!34516) setIsEmpty!34516))

(assert (= (and setNonEmpty!34510 (not condSetEmpty!34516)) setNonEmpty!34516))

(assert (= setNonEmpty!34516 b!5345720))

(declare-fun m!6377498 () Bool)

(assert (=> setNonEmpty!34516 m!6377498))

(declare-fun b_lambda!205251 () Bool)

(assert (= b_lambda!205247 (or b!5344794 b_lambda!205251)))

(declare-fun bs!1239427 () Bool)

(declare-fun d!1714682 () Bool)

(assert (= bs!1239427 (and d!1714682 b!5344794)))

(assert (=> bs!1239427 (= (dynLambda!24217 lambda!274311 (h!67707 (t!374600 (exprs!4912 (h!67708 zl!343))))) (validRegex!6764 (h!67707 (t!374600 (exprs!4912 (h!67708 zl!343))))))))

(declare-fun m!6377500 () Bool)

(assert (=> bs!1239427 m!6377500))

(assert (=> b!5345154 d!1714682))

(declare-fun b_lambda!205253 () Bool)

(assert (= b_lambda!205249 (or b!5344797 b_lambda!205253)))

(declare-fun bs!1239428 () Bool)

(declare-fun d!1714684 () Bool)

(assert (= bs!1239428 (and d!1714684 b!5344797)))

(assert (=> bs!1239428 (= (dynLambda!24216 lambda!274306 lt!2179233) (derivationStepZipperUp!400 lt!2179233 (h!67709 s!2326)))))

(assert (=> bs!1239428 m!6376664))

(assert (=> d!1714536 d!1714684))

(declare-fun b_lambda!205255 () Bool)

(assert (= b_lambda!205245 (or b!5344797 b_lambda!205255)))

(declare-fun bs!1239429 () Bool)

(declare-fun d!1714686 () Bool)

(assert (= bs!1239429 (and d!1714686 b!5344797)))

(assert (=> bs!1239429 (= (dynLambda!24216 lambda!274306 (h!67708 zl!343)) (derivationStepZipperUp!400 (h!67708 zl!343) (h!67709 s!2326)))))

(assert (=> bs!1239429 m!6376646))

(assert (=> d!1714512 d!1714686))

(push 1)

(assert (not bm!382048))

(assert (not d!1714582))

(assert (not d!1714510))

(assert (not b!5345520))

(assert (not d!1714508))

(assert (not b!5345526))

(assert (not d!1714624))

(assert (not b!5345272))

(assert (not b!5345625))

(assert (not b!5345521))

(assert (not b_lambda!205255))

(assert (not b!5345095))

(assert (not d!1714562))

(assert (not b!5345706))

(assert (not b!5345162))

(assert (not b!5345325))

(assert (not bm!382081))

(assert (not bm!382079))

(assert (not b!5345430))

(assert (not b!5345720))

(assert (not bs!1239427))

(assert (not bm!382086))

(assert (not bm!382080))

(assert (not bm!382052))

(assert (not b!5345702))

(assert (not b!5345561))

(assert (not d!1714538))

(assert (not b!5345650))

(assert tp_is_empty!39309)

(assert (not b!5345032))

(assert (not d!1714594))

(assert (not b!5345236))

(assert (not b!5345679))

(assert (not b!5345210))

(assert (not bm!382087))

(assert (not b!5345321))

(assert (not bm!382088))

(assert (not b!5345675))

(assert (not b!5345417))

(assert (not bm!382093))

(assert (not b!5345073))

(assert (not b!5345685))

(assert (not b_lambda!205253))

(assert (not b!5345519))

(assert (not bm!382105))

(assert (not d!1714572))

(assert (not b!5345100))

(assert (not b!5345158))

(assert (not b!5345443))

(assert (not d!1714570))

(assert (not b!5345551))

(assert (not bs!1239428))

(assert (not d!1714630))

(assert (not bs!1239429))

(assert (not b!5345575))

(assert (not d!1714536))

(assert (not b!5345434))

(assert (not d!1714610))

(assert (not bm!382071))

(assert (not b!5345678))

(assert (not b!5345573))

(assert (not d!1714550))

(assert (not b!5345206))

(assert (not b_lambda!205251))

(assert (not bm!382067))

(assert (not b!5345402))

(assert (not b!5345615))

(assert (not b!5345624))

(assert (not d!1714532))

(assert (not b!5345067))

(assert (not b!5345676))

(assert (not d!1714616))

(assert (not b!5345328))

(assert (not d!1714588))

(assert (not b!5345329))

(assert (not b!5345711))

(assert (not b!5345418))

(assert (not b!5345670))

(assert (not b!5345610))

(assert (not b!5345155))

(assert (not b!5345441))

(assert (not bm!382078))

(assert (not b!5345078))

(assert (not b!5345527))

(assert (not b!5345234))

(assert (not d!1714634))

(assert (not bm!382070))

(assert (not b!5345672))

(assert (not b!5345276))

(assert (not b!5345461))

(assert (not b!5345399))

(assert (not b!5345358))

(assert (not d!1714558))

(assert (not b!5345270))

(assert (not b!5345208))

(assert (not b!5345231))

(assert (not b!5345448))

(assert (not b!5345446))

(assert (not b!5345337))

(assert (not d!1714530))

(assert (not b!5345409))

(assert (not b!5345464))

(assert (not b!5345362))

(assert (not d!1714650))

(assert (not b!5345166))

(assert (not d!1714556))

(assert (not d!1714622))

(assert (not b!5345326))

(assert (not b!5345423))

(assert (not b!5344994))

(assert (not setNonEmpty!34516))

(assert (not b!5345555))

(assert (not d!1714618))

(assert (not b!5345553))

(assert (not b!5345330))

(assert (not b!5345284))

(assert (not bm!382044))

(assert (not b!5345319))

(assert (not b!5345327))

(assert (not b!5345617))

(assert (not b!5345618))

(assert (not b!5345070))

(assert (not bm!382066))

(assert (not b!5345177))

(assert (not b!5345426))

(assert (not bm!382073))

(assert (not b!5345187))

(assert (not b!5345133))

(assert (not b!5345694))

(assert (not b!5345623))

(assert (not b!5345191))

(assert (not b!5345335))

(assert (not b!5345205))

(assert (not d!1714606))

(assert (not b!5345528))

(assert (not bm!382097))

(assert (not b!5345424))

(assert (not b!5345173))

(assert (not b!5345200))

(assert (not d!1714578))

(assert (not d!1714612))

(assert (not b!5345422))

(assert (not b!5345094))

(assert (not b!5345433))

(assert (not d!1714542))

(assert (not b!5345149))

(assert (not b!5345562))

(assert (not b!5345235))

(assert (not b!5345074))

(assert (not d!1714560))

(assert (not d!1714568))

(assert (not b!5345186))

(assert (not b!5345279))

(assert (not b!5345280))

(assert (not b!5345324))

(assert (not b!5345462))

(assert (not b!5345437))

(assert (not d!1714540))

(assert (not b!5345172))

(assert (not d!1714640))

(assert (not b!5345627))

(assert (not d!1714552))

(assert (not d!1714554))

(assert (not d!1714672))

(assert (not b!5345449))

(assert (not b!5345190))

(assert (not d!1714590))

(assert (not b!5345198))

(assert (not b!5345427))

(assert (not bm!382051))

(assert (not b!5345463))

(assert (not b!5345707))

(assert (not b!5345183))

(assert (not b!5345271))

(assert (not d!1714506))

(assert (not b!5345169))

(assert (not d!1714614))

(assert (not b!5344995))

(assert (not bm!382074))

(assert (not b!5345099))

(assert (not b!5345695))

(assert (not b!5345207))

(assert (not b!5345137))

(assert (not d!1714632))

(assert (not b!5345565))

(assert (not bm!382082))

(assert (not b!5345705))

(assert (not b!5345229))

(assert (not b!5345419))

(assert (not d!1714654))

(assert (not b!5345674))

(assert (not b!5345406))

(assert (not d!1714652))

(assert (not b!5345710))

(assert (not b!5345077))

(assert (not b!5345237))

(assert (not d!1714584))

(assert (not b!5345275))

(assert (not b!5345447))

(assert (not d!1714566))

(assert (not d!1714502))

(assert (not b!5345028))

(assert (not b!5345620))

(assert (not d!1714620))

(assert (not b!5345703))

(assert (not d!1714548))

(assert (not d!1714596))

(assert (not b!5345554))

(assert (not b!5345176))

(assert (not d!1714516))

(assert (not bm!382104))

(assert (not b!5345612))

(assert (not bm!382045))

(assert (not d!1714564))

(assert (not b!5345524))

(assert (not b!5345209))

(assert (not b!5345204))

(assert (not b!5345680))

(assert (not b!5345334))

(assert (not b!5345671))

(assert (not d!1714608))

(assert (not b!5345709))

(assert (not b!5345277))

(assert (not b!5345438))

(assert (not d!1714670))

(assert (not b!5345333))

(assert (not d!1714512))

(assert (not b!5345180))

(assert (not d!1714586))

(assert (not b!5345410))

(assert (not b!5345619))

(assert (not b!5345163))

(assert (not b!5345405))

(assert (not bm!382077))

(assert (not d!1714528))

(assert (not b!5345558))

(assert (not b!5345138))

(assert (not b!5345566))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

