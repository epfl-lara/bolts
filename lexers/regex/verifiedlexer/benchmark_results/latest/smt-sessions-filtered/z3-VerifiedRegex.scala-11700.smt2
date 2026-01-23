; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!660620 () Bool)

(assert start!660620)

(declare-fun b!6835193 () Bool)

(assert (=> b!6835193 true))

(assert (=> b!6835193 true))

(declare-fun lambda!386351 () Int)

(declare-fun lambda!386350 () Int)

(assert (=> b!6835193 (not (= lambda!386351 lambda!386350))))

(assert (=> b!6835193 true))

(assert (=> b!6835193 true))

(declare-fun lambda!386352 () Int)

(assert (=> b!6835193 (not (= lambda!386352 lambda!386350))))

(assert (=> b!6835193 (not (= lambda!386352 lambda!386351))))

(assert (=> b!6835193 true))

(assert (=> b!6835193 true))

(declare-fun b!6835214 () Bool)

(assert (=> b!6835214 true))

(declare-fun b!6835211 () Bool)

(assert (=> b!6835211 true))

(declare-fun b!6835181 () Bool)

(declare-fun res!2791127 () Bool)

(declare-fun e!4122864 () Bool)

(assert (=> b!6835181 (=> res!2791127 e!4122864)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!33564 0))(
  ( (C!33565 (val!26484 Int)) )
))
(declare-datatypes ((Regex!16647 0))(
  ( (ElementMatch!16647 (c!1272757 C!33564)) (Concat!25492 (regOne!33806 Regex!16647) (regTwo!33806 Regex!16647)) (EmptyExpr!16647) (Star!16647 (reg!16976 Regex!16647)) (EmptyLang!16647) (Union!16647 (regOne!33807 Regex!16647) (regTwo!33807 Regex!16647)) )
))
(declare-datatypes ((List!66240 0))(
  ( (Nil!66116) (Cons!66116 (h!72564 Regex!16647) (t!379983 List!66240)) )
))
(declare-datatypes ((Context!12062 0))(
  ( (Context!12063 (exprs!6531 List!66240)) )
))
(declare-fun lt!2454053 () (InoxSet Context!12062))

(declare-datatypes ((List!66241 0))(
  ( (Nil!66117) (Cons!66117 (h!72565 C!33564) (t!379984 List!66241)) )
))
(declare-fun s!2326 () List!66241)

(declare-fun matchZipper!2633 ((InoxSet Context!12062) List!66241) Bool)

(declare-fun derivationStepZipper!2591 ((InoxSet Context!12062) C!33564) (InoxSet Context!12062))

(assert (=> b!6835181 (= res!2791127 (not (= (matchZipper!2633 lt!2454053 s!2326) (matchZipper!2633 (derivationStepZipper!2591 lt!2454053 (h!72565 s!2326)) (t!379984 s!2326)))))))

(declare-fun b!6835182 () Bool)

(declare-fun e!4122870 () Bool)

(declare-fun lt!2454088 () Bool)

(assert (=> b!6835182 (= e!4122870 lt!2454088)))

(declare-fun b!6835183 () Bool)

(declare-fun e!4122853 () Bool)

(assert (=> b!6835183 (= e!4122864 e!4122853)))

(declare-fun res!2791123 () Bool)

(assert (=> b!6835183 (=> res!2791123 e!4122853)))

(declare-fun lt!2454054 () Context!12062)

(declare-fun lt!2454085 () Regex!16647)

(declare-datatypes ((List!66242 0))(
  ( (Nil!66118) (Cons!66118 (h!72566 Context!12062) (t!379985 List!66242)) )
))
(declare-fun unfocusZipper!2389 (List!66242) Regex!16647)

(assert (=> b!6835183 (= res!2791123 (not (= (unfocusZipper!2389 (Cons!66118 lt!2454054 Nil!66118)) lt!2454085)))))

(declare-fun r!7292 () Regex!16647)

(assert (=> b!6835183 (= lt!2454085 (Concat!25492 (reg!16976 r!7292) r!7292))))

(declare-fun b!6835184 () Bool)

(declare-fun res!2791133 () Bool)

(declare-fun e!4122872 () Bool)

(assert (=> b!6835184 (=> res!2791133 e!4122872)))

(declare-fun zl!343 () List!66242)

(get-info :version)

(assert (=> b!6835184 (= res!2791133 (not ((_ is Cons!66116) (exprs!6531 (h!72566 zl!343)))))))

(declare-fun b!6835185 () Bool)

(declare-fun res!2791124 () Bool)

(assert (=> b!6835185 (=> res!2791124 e!4122872)))

(assert (=> b!6835185 (= res!2791124 (or ((_ is EmptyExpr!16647) r!7292) ((_ is EmptyLang!16647) r!7292) ((_ is ElementMatch!16647) r!7292) ((_ is Union!16647) r!7292) ((_ is Concat!25492) r!7292)))))

(declare-fun b!6835186 () Bool)

(declare-fun e!4122854 () Bool)

(declare-fun e!4122869 () Bool)

(assert (=> b!6835186 (= e!4122854 e!4122869)))

(declare-fun res!2791113 () Bool)

(assert (=> b!6835186 (=> (not res!2791113) (not e!4122869))))

(declare-fun lt!2454078 () Regex!16647)

(assert (=> b!6835186 (= res!2791113 (= r!7292 lt!2454078))))

(assert (=> b!6835186 (= lt!2454078 (unfocusZipper!2389 zl!343))))

(declare-fun b!6835187 () Bool)

(declare-fun e!4122865 () Bool)

(assert (=> b!6835187 (= e!4122865 false)))

(declare-fun lt!2454052 () List!66241)

(declare-fun matchR!8830 (Regex!16647 List!66241) Bool)

(assert (=> b!6835187 (matchR!8830 lt!2454085 lt!2454052)))

(declare-datatypes ((Unit!159985 0))(
  ( (Unit!159986) )
))
(declare-fun lt!2454061 () Unit!159985)

(declare-datatypes ((tuple2!67244 0))(
  ( (tuple2!67245 (_1!36925 List!66241) (_2!36925 List!66241)) )
))
(declare-fun lt!2454060 () tuple2!67244)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!386 (Regex!16647 Regex!16647 List!66241 List!66241) Unit!159985)

(assert (=> b!6835187 (= lt!2454061 (lemmaTwoRegexMatchThenConcatMatchesConcatString!386 (reg!16976 r!7292) r!7292 (_1!36925 lt!2454060) (_2!36925 lt!2454060)))))

(assert (=> b!6835187 (matchR!8830 r!7292 (_2!36925 lt!2454060))))

(declare-fun lt!2454067 () Unit!159985)

(declare-fun lt!2454075 () (InoxSet Context!12062))

(declare-fun lt!2454065 () List!66242)

(declare-fun theoremZipperRegexEquiv!949 ((InoxSet Context!12062) List!66242 Regex!16647 List!66241) Unit!159985)

(assert (=> b!6835187 (= lt!2454067 (theoremZipperRegexEquiv!949 lt!2454075 lt!2454065 r!7292 (_2!36925 lt!2454060)))))

(assert (=> b!6835187 (matchR!8830 (reg!16976 r!7292) (_1!36925 lt!2454060))))

(declare-fun lt!2454069 () (InoxSet Context!12062))

(declare-fun lt!2454064 () List!66242)

(declare-fun lt!2454084 () Unit!159985)

(assert (=> b!6835187 (= lt!2454084 (theoremZipperRegexEquiv!949 lt!2454069 lt!2454064 (reg!16976 r!7292) (_1!36925 lt!2454060)))))

(declare-fun lt!2454080 () List!66240)

(declare-fun lt!2454071 () List!66240)

(declare-fun ++!14840 (List!66240 List!66240) List!66240)

(assert (=> b!6835187 (matchZipper!2633 (store ((as const (Array Context!12062 Bool)) false) (Context!12063 (++!14840 lt!2454080 lt!2454071)) true) lt!2454052)))

(declare-fun lambda!386355 () Int)

(declare-fun lt!2454059 () Unit!159985)

(declare-fun lemmaConcatPreservesForall!476 (List!66240 List!66240 Int) Unit!159985)

(assert (=> b!6835187 (= lt!2454059 (lemmaConcatPreservesForall!476 lt!2454080 lt!2454071 lambda!386355))))

(declare-fun lt!2454049 () Context!12062)

(declare-fun lt!2454087 () Context!12062)

(declare-fun lt!2454086 () Unit!159985)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!270 (Context!12062 Context!12062 List!66241 List!66241) Unit!159985)

(assert (=> b!6835187 (= lt!2454086 (lemmaConcatenateContextMatchesConcatOfStrings!270 lt!2454049 lt!2454087 (_1!36925 lt!2454060) (_2!36925 lt!2454060)))))

(declare-fun e!4122859 () Bool)

(declare-fun setRes!46939 () Bool)

(declare-fun setNonEmpty!46939 () Bool)

(declare-fun tp!1870620 () Bool)

(declare-fun setElem!46939 () Context!12062)

(declare-fun inv!84864 (Context!12062) Bool)

(assert (=> setNonEmpty!46939 (= setRes!46939 (and tp!1870620 (inv!84864 setElem!46939) e!4122859))))

(declare-fun z!1189 () (InoxSet Context!12062))

(declare-fun setRest!46939 () (InoxSet Context!12062))

(assert (=> setNonEmpty!46939 (= z!1189 ((_ map or) (store ((as const (Array Context!12062 Bool)) false) setElem!46939 true) setRest!46939))))

(declare-fun b!6835188 () Bool)

(assert (=> b!6835188 (= e!4122869 (not e!4122872))))

(declare-fun res!2791122 () Bool)

(assert (=> b!6835188 (=> res!2791122 e!4122872)))

(assert (=> b!6835188 (= res!2791122 (not ((_ is Cons!66118) zl!343)))))

(declare-fun lt!2454077 () Bool)

(declare-fun matchRSpec!3748 (Regex!16647 List!66241) Bool)

(assert (=> b!6835188 (= lt!2454077 (matchRSpec!3748 r!7292 s!2326))))

(assert (=> b!6835188 (= lt!2454077 (matchR!8830 r!7292 s!2326))))

(declare-fun lt!2454056 () Unit!159985)

(declare-fun mainMatchTheorem!3748 (Regex!16647 List!66241) Unit!159985)

(assert (=> b!6835188 (= lt!2454056 (mainMatchTheorem!3748 r!7292 s!2326))))

(declare-fun res!2791131 () Bool)

(assert (=> start!660620 (=> (not res!2791131) (not e!4122854))))

(declare-fun validRegex!8383 (Regex!16647) Bool)

(assert (=> start!660620 (= res!2791131 (validRegex!8383 r!7292))))

(assert (=> start!660620 e!4122854))

(declare-fun e!4122863 () Bool)

(assert (=> start!660620 e!4122863))

(declare-fun condSetEmpty!46939 () Bool)

(assert (=> start!660620 (= condSetEmpty!46939 (= z!1189 ((as const (Array Context!12062 Bool)) false)))))

(assert (=> start!660620 setRes!46939))

(declare-fun e!4122860 () Bool)

(assert (=> start!660620 e!4122860))

(declare-fun e!4122855 () Bool)

(assert (=> start!660620 e!4122855))

(declare-fun b!6835189 () Bool)

(declare-fun e!4122866 () Bool)

(declare-fun e!4122858 () Bool)

(assert (=> b!6835189 (= e!4122866 e!4122858)))

(declare-fun res!2791115 () Bool)

(assert (=> b!6835189 (=> res!2791115 e!4122858)))

(declare-fun lt!2454076 () Bool)

(assert (=> b!6835189 (= res!2791115 lt!2454076)))

(assert (=> b!6835189 (= lt!2454076 (matchRSpec!3748 lt!2454085 s!2326))))

(assert (=> b!6835189 (= lt!2454076 (matchR!8830 lt!2454085 s!2326))))

(declare-fun lt!2454083 () Unit!159985)

(assert (=> b!6835189 (= lt!2454083 (mainMatchTheorem!3748 lt!2454085 s!2326))))

(declare-fun b!6835190 () Bool)

(declare-fun res!2791126 () Bool)

(assert (=> b!6835190 (=> (not res!2791126) (not e!4122854))))

(declare-fun toList!10431 ((InoxSet Context!12062)) List!66242)

(assert (=> b!6835190 (= res!2791126 (= (toList!10431 z!1189) zl!343))))

(declare-fun b!6835191 () Bool)

(declare-fun tp_is_empty!42547 () Bool)

(assert (=> b!6835191 (= e!4122863 tp_is_empty!42547)))

(declare-fun b!6835192 () Bool)

(declare-fun res!2791134 () Bool)

(assert (=> b!6835192 (=> res!2791134 e!4122865)))

(assert (=> b!6835192 (= res!2791134 (not (matchZipper!2633 lt!2454075 (_2!36925 lt!2454060))))))

(declare-fun e!4122868 () Bool)

(assert (=> b!6835193 (= e!4122872 e!4122868)))

(declare-fun res!2791119 () Bool)

(assert (=> b!6835193 (=> res!2791119 e!4122868)))

(assert (=> b!6835193 (= res!2791119 (not (= lt!2454077 e!4122870)))))

(declare-fun res!2791128 () Bool)

(assert (=> b!6835193 (=> res!2791128 e!4122870)))

(declare-fun isEmpty!38509 (List!66241) Bool)

(assert (=> b!6835193 (= res!2791128 (isEmpty!38509 s!2326))))

(declare-fun Exists!3715 (Int) Bool)

(assert (=> b!6835193 (= (Exists!3715 lambda!386350) (Exists!3715 lambda!386352))))

(declare-fun lt!2454068 () Unit!159985)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2242 (Regex!16647 Regex!16647 List!66241) Unit!159985)

(assert (=> b!6835193 (= lt!2454068 (lemmaExistCutMatchRandMatchRSpecEquivalent!2242 (reg!16976 r!7292) r!7292 s!2326))))

(assert (=> b!6835193 (= (Exists!3715 lambda!386350) (Exists!3715 lambda!386351))))

(declare-fun lt!2454066 () Unit!159985)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!806 (Regex!16647 List!66241) Unit!159985)

(assert (=> b!6835193 (= lt!2454066 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!806 (reg!16976 r!7292) s!2326))))

(assert (=> b!6835193 (= lt!2454088 (Exists!3715 lambda!386350))))

(declare-datatypes ((Option!16534 0))(
  ( (None!16533) (Some!16533 (v!52745 tuple2!67244)) )
))
(declare-fun isDefined!13237 (Option!16534) Bool)

(declare-fun findConcatSeparation!2948 (Regex!16647 Regex!16647 List!66241 List!66241 List!66241) Option!16534)

(assert (=> b!6835193 (= lt!2454088 (isDefined!13237 (findConcatSeparation!2948 (reg!16976 r!7292) r!7292 Nil!66117 s!2326 s!2326)))))

(declare-fun lt!2454051 () Unit!159985)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2712 (Regex!16647 Regex!16647 List!66241) Unit!159985)

(assert (=> b!6835193 (= lt!2454051 (lemmaFindConcatSeparationEquivalentToExists!2712 (reg!16976 r!7292) r!7292 s!2326))))

(declare-fun b!6835194 () Bool)

(declare-fun e!4122856 () Bool)

(assert (=> b!6835194 (= e!4122856 e!4122864)))

(declare-fun res!2791117 () Bool)

(assert (=> b!6835194 (=> res!2791117 e!4122864)))

(declare-fun lt!2454055 () (InoxSet Context!12062))

(declare-fun derivationStepZipperDown!1875 (Regex!16647 Context!12062 C!33564) (InoxSet Context!12062))

(assert (=> b!6835194 (= res!2791117 (not (= lt!2454055 (derivationStepZipperDown!1875 (reg!16976 r!7292) lt!2454087 (h!72565 s!2326)))))))

(assert (=> b!6835194 (= lt!2454087 (Context!12063 lt!2454071))))

(declare-fun lambda!386353 () Int)

(declare-fun flatMap!2128 ((InoxSet Context!12062) Int) (InoxSet Context!12062))

(declare-fun derivationStepZipperUp!1801 (Context!12062 C!33564) (InoxSet Context!12062))

(assert (=> b!6835194 (= (flatMap!2128 lt!2454053 lambda!386353) (derivationStepZipperUp!1801 lt!2454054 (h!72565 s!2326)))))

(declare-fun lt!2454073 () Unit!159985)

(declare-fun lemmaFlatMapOnSingletonSet!1654 ((InoxSet Context!12062) Context!12062 Int) Unit!159985)

(assert (=> b!6835194 (= lt!2454073 (lemmaFlatMapOnSingletonSet!1654 lt!2454053 lt!2454054 lambda!386353))))

(declare-fun lt!2454048 () (InoxSet Context!12062))

(assert (=> b!6835194 (= lt!2454048 (derivationStepZipperUp!1801 lt!2454054 (h!72565 s!2326)))))

(assert (=> b!6835194 (= lt!2454053 (store ((as const (Array Context!12062 Bool)) false) lt!2454054 true))))

(assert (=> b!6835194 (= lt!2454054 (Context!12063 (Cons!66116 (reg!16976 r!7292) lt!2454071)))))

(assert (=> b!6835194 (= lt!2454071 (Cons!66116 r!7292 Nil!66116))))

(declare-fun b!6835195 () Bool)

(declare-fun tp!1870621 () Bool)

(assert (=> b!6835195 (= e!4122855 (and tp_is_empty!42547 tp!1870621))))

(declare-fun b!6835196 () Bool)

(declare-fun res!2791138 () Bool)

(assert (=> b!6835196 (=> res!2791138 e!4122872)))

(declare-fun isEmpty!38510 (List!66242) Bool)

(assert (=> b!6835196 (= res!2791138 (not (isEmpty!38510 (t!379985 zl!343))))))

(declare-fun b!6835197 () Bool)

(declare-fun e!4122867 () Bool)

(assert (=> b!6835197 (= e!4122867 e!4122865)))

(declare-fun res!2791130 () Bool)

(assert (=> b!6835197 (=> res!2791130 e!4122865)))

(assert (=> b!6835197 (= res!2791130 (not (= s!2326 lt!2454052)))))

(declare-fun ++!14841 (List!66241 List!66241) List!66241)

(assert (=> b!6835197 (= lt!2454052 (++!14841 (_1!36925 lt!2454060) (_2!36925 lt!2454060)))))

(declare-fun lt!2454079 () Option!16534)

(declare-fun get!23040 (Option!16534) tuple2!67244)

(assert (=> b!6835197 (= lt!2454060 (get!23040 lt!2454079))))

(assert (=> b!6835197 (isDefined!13237 lt!2454079)))

(declare-fun findConcatSeparationZippers!256 ((InoxSet Context!12062) (InoxSet Context!12062) List!66241 List!66241 List!66241) Option!16534)

(assert (=> b!6835197 (= lt!2454079 (findConcatSeparationZippers!256 lt!2454069 lt!2454075 Nil!66117 s!2326 s!2326))))

(declare-fun lt!2454058 () Unit!159985)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!256 ((InoxSet Context!12062) Context!12062 List!66241) Unit!159985)

(assert (=> b!6835197 (= lt!2454058 (lemmaConcatZipperMatchesStringThenFindConcatDefined!256 lt!2454069 lt!2454087 s!2326))))

(declare-fun b!6835198 () Bool)

(declare-fun tp!1870615 () Bool)

(assert (=> b!6835198 (= e!4122863 tp!1870615)))

(declare-fun b!6835199 () Bool)

(declare-fun res!2791118 () Bool)

(assert (=> b!6835199 (=> res!2791118 e!4122872)))

(declare-fun generalisedUnion!2491 (List!66240) Regex!16647)

(declare-fun unfocusZipperList!2068 (List!66242) List!66240)

(assert (=> b!6835199 (= res!2791118 (not (= r!7292 (generalisedUnion!2491 (unfocusZipperList!2068 zl!343)))))))

(declare-fun b!6835200 () Bool)

(declare-fun res!2791125 () Bool)

(assert (=> b!6835200 (=> res!2791125 e!4122868)))

(assert (=> b!6835200 (= res!2791125 ((_ is Nil!66117) s!2326))))

(declare-fun b!6835201 () Bool)

(declare-fun res!2791137 () Bool)

(assert (=> b!6835201 (=> res!2791137 e!4122865)))

(assert (=> b!6835201 (= res!2791137 (not (matchZipper!2633 lt!2454069 (_1!36925 lt!2454060))))))

(declare-fun b!6835202 () Bool)

(declare-fun res!2791114 () Bool)

(assert (=> b!6835202 (=> res!2791114 e!4122872)))

(declare-fun generalisedConcat!2244 (List!66240) Regex!16647)

(assert (=> b!6835202 (= res!2791114 (not (= r!7292 (generalisedConcat!2244 (exprs!6531 (h!72566 zl!343))))))))

(declare-fun setIsEmpty!46939 () Bool)

(assert (=> setIsEmpty!46939 setRes!46939))

(declare-fun b!6835203 () Bool)

(declare-fun e!4122861 () Bool)

(declare-fun tp!1870616 () Bool)

(assert (=> b!6835203 (= e!4122861 tp!1870616)))

(declare-fun b!6835204 () Bool)

(declare-fun tp!1870622 () Bool)

(assert (=> b!6835204 (= e!4122860 (and (inv!84864 (h!72566 zl!343)) e!4122861 tp!1870622))))

(declare-fun b!6835205 () Bool)

(declare-fun e!4122871 () Bool)

(assert (=> b!6835205 (= e!4122868 e!4122871)))

(declare-fun res!2791112 () Bool)

(assert (=> b!6835205 (=> res!2791112 e!4122871)))

(declare-fun lt!2454082 () (InoxSet Context!12062))

(declare-fun lt!2454063 () (InoxSet Context!12062))

(assert (=> b!6835205 (= res!2791112 (not (= lt!2454082 lt!2454063)))))

(assert (=> b!6835205 (= lt!2454063 (derivationStepZipperDown!1875 r!7292 (Context!12063 Nil!66116) (h!72565 s!2326)))))

(assert (=> b!6835205 (= lt!2454082 (derivationStepZipperUp!1801 (Context!12063 (Cons!66116 r!7292 Nil!66116)) (h!72565 s!2326)))))

(assert (=> b!6835205 (= lt!2454055 (derivationStepZipper!2591 z!1189 (h!72565 s!2326)))))

(declare-fun b!6835206 () Bool)

(declare-fun res!2791116 () Bool)

(assert (=> b!6835206 (=> res!2791116 e!4122864)))

(assert (=> b!6835206 (= res!2791116 (or (not (= lt!2454078 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6835207 () Bool)

(declare-fun tp!1870618 () Bool)

(assert (=> b!6835207 (= e!4122859 tp!1870618)))

(declare-fun b!6835208 () Bool)

(declare-fun tp!1870619 () Bool)

(declare-fun tp!1870614 () Bool)

(assert (=> b!6835208 (= e!4122863 (and tp!1870619 tp!1870614))))

(declare-fun b!6835209 () Bool)

(declare-fun res!2791135 () Bool)

(assert (=> b!6835209 (=> res!2791135 e!4122858)))

(assert (=> b!6835209 (= res!2791135 (not (matchZipper!2633 z!1189 s!2326)))))

(declare-fun b!6835210 () Bool)

(declare-fun e!4122862 () Bool)

(assert (=> b!6835210 (= e!4122862 e!4122866)))

(declare-fun res!2791136 () Bool)

(assert (=> b!6835210 (=> res!2791136 e!4122866)))

(assert (=> b!6835210 (= res!2791136 (not (= (unfocusZipper!2389 lt!2454065) r!7292)))))

(assert (=> b!6835210 (= lt!2454065 (Cons!66118 lt!2454087 Nil!66118))))

(assert (=> b!6835211 (= e!4122858 e!4122867)))

(declare-fun res!2791120 () Bool)

(assert (=> b!6835211 (=> res!2791120 e!4122867)))

(declare-fun appendTo!252 ((InoxSet Context!12062) Context!12062) (InoxSet Context!12062))

(assert (=> b!6835211 (= res!2791120 (not (= (appendTo!252 lt!2454069 lt!2454087) lt!2454053)))))

(declare-fun lambda!386354 () Int)

(declare-fun map!15131 ((InoxSet Context!12062) Int) (InoxSet Context!12062))

(assert (=> b!6835211 (= (map!15131 lt!2454069 lambda!386354) (store ((as const (Array Context!12062 Bool)) false) (Context!12063 (++!14840 lt!2454080 lt!2454071)) true))))

(declare-fun lt!2454062 () Unit!159985)

(assert (=> b!6835211 (= lt!2454062 (lemmaConcatPreservesForall!476 lt!2454080 lt!2454071 lambda!386355))))

(declare-fun lt!2454057 () Unit!159985)

(declare-fun lemmaMapOnSingletonSet!282 ((InoxSet Context!12062) Context!12062 Int) Unit!159985)

(assert (=> b!6835211 (= lt!2454057 (lemmaMapOnSingletonSet!282 lt!2454069 lt!2454049 lambda!386354))))

(declare-fun b!6835212 () Bool)

(declare-fun tp!1870623 () Bool)

(declare-fun tp!1870617 () Bool)

(assert (=> b!6835212 (= e!4122863 (and tp!1870623 tp!1870617))))

(declare-fun b!6835213 () Bool)

(declare-fun e!4122857 () Bool)

(assert (=> b!6835213 (= e!4122857 e!4122862)))

(declare-fun res!2791132 () Bool)

(assert (=> b!6835213 (=> res!2791132 e!4122862)))

(assert (=> b!6835213 (= res!2791132 (not (= (unfocusZipper!2389 lt!2454064) (reg!16976 r!7292))))))

(assert (=> b!6835213 (= lt!2454064 (Cons!66118 lt!2454049 Nil!66118))))

(assert (=> b!6835214 (= e!4122871 e!4122856)))

(declare-fun res!2791121 () Bool)

(assert (=> b!6835214 (=> res!2791121 e!4122856)))

(assert (=> b!6835214 (= res!2791121 (not (= lt!2454055 lt!2454063)))))

(assert (=> b!6835214 (= (flatMap!2128 z!1189 lambda!386353) (derivationStepZipperUp!1801 (h!72566 zl!343) (h!72565 s!2326)))))

(declare-fun lt!2454081 () Unit!159985)

(assert (=> b!6835214 (= lt!2454081 (lemmaFlatMapOnSingletonSet!1654 z!1189 (h!72566 zl!343) lambda!386353))))

(declare-fun b!6835215 () Bool)

(assert (=> b!6835215 (= e!4122853 e!4122857)))

(declare-fun res!2791129 () Bool)

(assert (=> b!6835215 (=> res!2791129 e!4122857)))

(assert (=> b!6835215 (= res!2791129 (not (= lt!2454055 (derivationStepZipper!2591 lt!2454075 (h!72565 s!2326)))))))

(assert (=> b!6835215 (= (flatMap!2128 lt!2454075 lambda!386353) (derivationStepZipperUp!1801 lt!2454087 (h!72565 s!2326)))))

(declare-fun lt!2454050 () Unit!159985)

(assert (=> b!6835215 (= lt!2454050 (lemmaFlatMapOnSingletonSet!1654 lt!2454075 lt!2454087 lambda!386353))))

(assert (=> b!6835215 (= (flatMap!2128 lt!2454069 lambda!386353) (derivationStepZipperUp!1801 lt!2454049 (h!72565 s!2326)))))

(declare-fun lt!2454072 () Unit!159985)

(assert (=> b!6835215 (= lt!2454072 (lemmaFlatMapOnSingletonSet!1654 lt!2454069 lt!2454049 lambda!386353))))

(declare-fun lt!2454074 () (InoxSet Context!12062))

(assert (=> b!6835215 (= lt!2454074 (derivationStepZipperUp!1801 lt!2454087 (h!72565 s!2326)))))

(declare-fun lt!2454070 () (InoxSet Context!12062))

(assert (=> b!6835215 (= lt!2454070 (derivationStepZipperUp!1801 lt!2454049 (h!72565 s!2326)))))

(assert (=> b!6835215 (= lt!2454075 (store ((as const (Array Context!12062 Bool)) false) lt!2454087 true))))

(assert (=> b!6835215 (= lt!2454069 (store ((as const (Array Context!12062 Bool)) false) lt!2454049 true))))

(assert (=> b!6835215 (= lt!2454049 (Context!12063 lt!2454080))))

(assert (=> b!6835215 (= lt!2454080 (Cons!66116 (reg!16976 r!7292) Nil!66116))))

(assert (= (and start!660620 res!2791131) b!6835190))

(assert (= (and b!6835190 res!2791126) b!6835186))

(assert (= (and b!6835186 res!2791113) b!6835188))

(assert (= (and b!6835188 (not res!2791122)) b!6835196))

(assert (= (and b!6835196 (not res!2791138)) b!6835202))

(assert (= (and b!6835202 (not res!2791114)) b!6835184))

(assert (= (and b!6835184 (not res!2791133)) b!6835199))

(assert (= (and b!6835199 (not res!2791118)) b!6835185))

(assert (= (and b!6835185 (not res!2791124)) b!6835193))

(assert (= (and b!6835193 (not res!2791128)) b!6835182))

(assert (= (and b!6835193 (not res!2791119)) b!6835200))

(assert (= (and b!6835200 (not res!2791125)) b!6835205))

(assert (= (and b!6835205 (not res!2791112)) b!6835214))

(assert (= (and b!6835214 (not res!2791121)) b!6835194))

(assert (= (and b!6835194 (not res!2791117)) b!6835181))

(assert (= (and b!6835181 (not res!2791127)) b!6835206))

(assert (= (and b!6835206 (not res!2791116)) b!6835183))

(assert (= (and b!6835183 (not res!2791123)) b!6835215))

(assert (= (and b!6835215 (not res!2791129)) b!6835213))

(assert (= (and b!6835213 (not res!2791132)) b!6835210))

(assert (= (and b!6835210 (not res!2791136)) b!6835189))

(assert (= (and b!6835189 (not res!2791115)) b!6835209))

(assert (= (and b!6835209 (not res!2791135)) b!6835211))

(assert (= (and b!6835211 (not res!2791120)) b!6835197))

(assert (= (and b!6835197 (not res!2791130)) b!6835201))

(assert (= (and b!6835201 (not res!2791137)) b!6835192))

(assert (= (and b!6835192 (not res!2791134)) b!6835187))

(assert (= (and start!660620 ((_ is ElementMatch!16647) r!7292)) b!6835191))

(assert (= (and start!660620 ((_ is Concat!25492) r!7292)) b!6835208))

(assert (= (and start!660620 ((_ is Star!16647) r!7292)) b!6835198))

(assert (= (and start!660620 ((_ is Union!16647) r!7292)) b!6835212))

(assert (= (and start!660620 condSetEmpty!46939) setIsEmpty!46939))

(assert (= (and start!660620 (not condSetEmpty!46939)) setNonEmpty!46939))

(assert (= setNonEmpty!46939 b!6835207))

(assert (= b!6835204 b!6835203))

(assert (= (and start!660620 ((_ is Cons!66118) zl!343)) b!6835204))

(assert (= (and start!660620 ((_ is Cons!66117) s!2326)) b!6835195))

(declare-fun m!7580532 () Bool)

(assert (=> b!6835196 m!7580532))

(declare-fun m!7580534 () Bool)

(assert (=> b!6835183 m!7580534))

(declare-fun m!7580536 () Bool)

(assert (=> b!6835188 m!7580536))

(declare-fun m!7580538 () Bool)

(assert (=> b!6835188 m!7580538))

(declare-fun m!7580540 () Bool)

(assert (=> b!6835188 m!7580540))

(declare-fun m!7580542 () Bool)

(assert (=> b!6835211 m!7580542))

(declare-fun m!7580544 () Bool)

(assert (=> b!6835211 m!7580544))

(declare-fun m!7580546 () Bool)

(assert (=> b!6835211 m!7580546))

(declare-fun m!7580548 () Bool)

(assert (=> b!6835211 m!7580548))

(declare-fun m!7580550 () Bool)

(assert (=> b!6835211 m!7580550))

(declare-fun m!7580552 () Bool)

(assert (=> b!6835211 m!7580552))

(declare-fun m!7580554 () Bool)

(assert (=> start!660620 m!7580554))

(declare-fun m!7580556 () Bool)

(assert (=> b!6835197 m!7580556))

(declare-fun m!7580558 () Bool)

(assert (=> b!6835197 m!7580558))

(declare-fun m!7580560 () Bool)

(assert (=> b!6835197 m!7580560))

(declare-fun m!7580562 () Bool)

(assert (=> b!6835197 m!7580562))

(declare-fun m!7580564 () Bool)

(assert (=> b!6835197 m!7580564))

(declare-fun m!7580566 () Bool)

(assert (=> b!6835201 m!7580566))

(declare-fun m!7580568 () Bool)

(assert (=> b!6835215 m!7580568))

(declare-fun m!7580570 () Bool)

(assert (=> b!6835215 m!7580570))

(declare-fun m!7580572 () Bool)

(assert (=> b!6835215 m!7580572))

(declare-fun m!7580574 () Bool)

(assert (=> b!6835215 m!7580574))

(declare-fun m!7580576 () Bool)

(assert (=> b!6835215 m!7580576))

(declare-fun m!7580578 () Bool)

(assert (=> b!6835215 m!7580578))

(declare-fun m!7580580 () Bool)

(assert (=> b!6835215 m!7580580))

(declare-fun m!7580582 () Bool)

(assert (=> b!6835215 m!7580582))

(declare-fun m!7580584 () Bool)

(assert (=> b!6835215 m!7580584))

(declare-fun m!7580586 () Bool)

(assert (=> b!6835213 m!7580586))

(declare-fun m!7580588 () Bool)

(assert (=> b!6835194 m!7580588))

(declare-fun m!7580590 () Bool)

(assert (=> b!6835194 m!7580590))

(declare-fun m!7580592 () Bool)

(assert (=> b!6835194 m!7580592))

(declare-fun m!7580594 () Bool)

(assert (=> b!6835194 m!7580594))

(declare-fun m!7580596 () Bool)

(assert (=> b!6835194 m!7580596))

(declare-fun m!7580598 () Bool)

(assert (=> setNonEmpty!46939 m!7580598))

(declare-fun m!7580600 () Bool)

(assert (=> b!6835186 m!7580600))

(declare-fun m!7580602 () Bool)

(assert (=> b!6835202 m!7580602))

(declare-fun m!7580604 () Bool)

(assert (=> b!6835189 m!7580604))

(declare-fun m!7580606 () Bool)

(assert (=> b!6835189 m!7580606))

(declare-fun m!7580608 () Bool)

(assert (=> b!6835189 m!7580608))

(declare-fun m!7580610 () Bool)

(assert (=> b!6835209 m!7580610))

(declare-fun m!7580612 () Bool)

(assert (=> b!6835190 m!7580612))

(declare-fun m!7580614 () Bool)

(assert (=> b!6835214 m!7580614))

(declare-fun m!7580616 () Bool)

(assert (=> b!6835214 m!7580616))

(declare-fun m!7580618 () Bool)

(assert (=> b!6835214 m!7580618))

(declare-fun m!7580620 () Bool)

(assert (=> b!6835192 m!7580620))

(declare-fun m!7580622 () Bool)

(assert (=> b!6835199 m!7580622))

(assert (=> b!6835199 m!7580622))

(declare-fun m!7580624 () Bool)

(assert (=> b!6835199 m!7580624))

(declare-fun m!7580626 () Bool)

(assert (=> b!6835204 m!7580626))

(declare-fun m!7580628 () Bool)

(assert (=> b!6835181 m!7580628))

(declare-fun m!7580630 () Bool)

(assert (=> b!6835181 m!7580630))

(assert (=> b!6835181 m!7580630))

(declare-fun m!7580632 () Bool)

(assert (=> b!6835181 m!7580632))

(declare-fun m!7580634 () Bool)

(assert (=> b!6835205 m!7580634))

(declare-fun m!7580636 () Bool)

(assert (=> b!6835205 m!7580636))

(declare-fun m!7580638 () Bool)

(assert (=> b!6835205 m!7580638))

(declare-fun m!7580640 () Bool)

(assert (=> b!6835187 m!7580640))

(declare-fun m!7580642 () Bool)

(assert (=> b!6835187 m!7580642))

(declare-fun m!7580644 () Bool)

(assert (=> b!6835187 m!7580644))

(assert (=> b!6835187 m!7580542))

(declare-fun m!7580646 () Bool)

(assert (=> b!6835187 m!7580646))

(declare-fun m!7580648 () Bool)

(assert (=> b!6835187 m!7580648))

(assert (=> b!6835187 m!7580552))

(declare-fun m!7580650 () Bool)

(assert (=> b!6835187 m!7580650))

(declare-fun m!7580652 () Bool)

(assert (=> b!6835187 m!7580652))

(assert (=> b!6835187 m!7580542))

(assert (=> b!6835187 m!7580548))

(declare-fun m!7580654 () Bool)

(assert (=> b!6835187 m!7580654))

(declare-fun m!7580656 () Bool)

(assert (=> b!6835210 m!7580656))

(declare-fun m!7580658 () Bool)

(assert (=> b!6835193 m!7580658))

(declare-fun m!7580660 () Bool)

(assert (=> b!6835193 m!7580660))

(declare-fun m!7580662 () Bool)

(assert (=> b!6835193 m!7580662))

(declare-fun m!7580664 () Bool)

(assert (=> b!6835193 m!7580664))

(declare-fun m!7580666 () Bool)

(assert (=> b!6835193 m!7580666))

(assert (=> b!6835193 m!7580666))

(declare-fun m!7580668 () Bool)

(assert (=> b!6835193 m!7580668))

(declare-fun m!7580670 () Bool)

(assert (=> b!6835193 m!7580670))

(declare-fun m!7580672 () Bool)

(assert (=> b!6835193 m!7580672))

(assert (=> b!6835193 m!7580672))

(assert (=> b!6835193 m!7580672))

(declare-fun m!7580674 () Bool)

(assert (=> b!6835193 m!7580674))

(check-sat (not b!6835186) (not b!6835203) (not b!6835212) (not b!6835209) (not b!6835187) tp_is_empty!42547 (not b!6835204) (not b!6835196) (not b!6835197) (not b!6835214) (not setNonEmpty!46939) (not b!6835194) (not b!6835189) (not b!6835193) (not b!6835195) (not b!6835202) (not b!6835188) (not b!6835213) (not b!6835201) (not b!6835183) (not start!660620) (not b!6835199) (not b!6835192) (not b!6835210) (not b!6835198) (not b!6835205) (not b!6835211) (not b!6835215) (not b!6835207) (not b!6835181) (not b!6835208) (not b!6835190))
(check-sat)
