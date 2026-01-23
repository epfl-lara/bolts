; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!639318 () Bool)

(assert start!639318)

(declare-fun b!6506890 () Bool)

(assert (=> b!6506890 true))

(assert (=> b!6506890 true))

(declare-fun lambda!360849 () Int)

(declare-fun lambda!360848 () Int)

(assert (=> b!6506890 (not (= lambda!360849 lambda!360848))))

(assert (=> b!6506890 true))

(assert (=> b!6506890 true))

(declare-fun b!6506866 () Bool)

(assert (=> b!6506866 true))

(declare-fun b!6506868 () Bool)

(assert (=> b!6506868 true))

(declare-fun b!6506863 () Bool)

(declare-fun e!3942559 () Bool)

(declare-fun tp!1799509 () Bool)

(declare-fun tp!1799513 () Bool)

(assert (=> b!6506863 (= e!3942559 (and tp!1799509 tp!1799513))))

(declare-fun b!6506864 () Bool)

(declare-fun e!3942542 () Bool)

(declare-fun e!3942554 () Bool)

(assert (=> b!6506864 (= e!3942542 e!3942554)))

(declare-fun res!2672153 () Bool)

(assert (=> b!6506864 (=> res!2672153 e!3942554)))

(declare-datatypes ((C!33044 0))(
  ( (C!33045 (val!26224 Int)) )
))
(declare-datatypes ((List!65460 0))(
  ( (Nil!65336) (Cons!65336 (h!71784 C!33044) (t!379096 List!65460)) )
))
(declare-fun s!2326 () List!65460)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!16387 0))(
  ( (ElementMatch!16387 (c!1193369 C!33044)) (Concat!25232 (regOne!33286 Regex!16387) (regTwo!33286 Regex!16387)) (EmptyExpr!16387) (Star!16387 (reg!16716 Regex!16387)) (EmptyLang!16387) (Union!16387 (regOne!33287 Regex!16387) (regTwo!33287 Regex!16387)) )
))
(declare-datatypes ((List!65461 0))(
  ( (Nil!65337) (Cons!65337 (h!71785 Regex!16387) (t!379097 List!65461)) )
))
(declare-datatypes ((Context!11542 0))(
  ( (Context!11543 (exprs!6271 List!65461)) )
))
(declare-fun lt!2393162 () (InoxSet Context!11542))

(declare-fun lt!2393160 () Bool)

(declare-fun matchZipper!2399 ((InoxSet Context!11542) List!65460) Bool)

(assert (=> b!6506864 (= res!2672153 (not (= lt!2393160 (matchZipper!2399 lt!2393162 (t!379096 s!2326)))))))

(declare-fun lt!2393179 () (InoxSet Context!11542))

(assert (=> b!6506864 (= lt!2393160 (matchZipper!2399 lt!2393179 s!2326))))

(declare-fun b!6506865 () Bool)

(declare-datatypes ((Unit!158883 0))(
  ( (Unit!158884) )
))
(declare-fun e!3942556 () Unit!158883)

(declare-fun Unit!158885 () Unit!158883)

(assert (=> b!6506865 (= e!3942556 Unit!158885)))

(declare-fun e!3942544 () Bool)

(declare-fun e!3942555 () Bool)

(assert (=> b!6506866 (= e!3942544 e!3942555)))

(declare-fun res!2672156 () Bool)

(assert (=> b!6506866 (=> res!2672156 e!3942555)))

(declare-fun r!7292 () Regex!16387)

(get-info :version)

(assert (=> b!6506866 (= res!2672156 (or (and ((_ is ElementMatch!16387) (regOne!33286 r!7292)) (= (c!1193369 (regOne!33286 r!7292)) (h!71784 s!2326))) ((_ is Union!16387) (regOne!33286 r!7292))))))

(declare-fun lt!2393150 () Unit!158883)

(assert (=> b!6506866 (= lt!2393150 e!3942556)))

(declare-fun c!1193368 () Bool)

(declare-fun lt!2393171 () Bool)

(assert (=> b!6506866 (= c!1193368 lt!2393171)))

(declare-datatypes ((List!65462 0))(
  ( (Nil!65338) (Cons!65338 (h!71786 Context!11542) (t!379098 List!65462)) )
))
(declare-fun zl!343 () List!65462)

(declare-fun nullable!6380 (Regex!16387) Bool)

(assert (=> b!6506866 (= lt!2393171 (nullable!6380 (h!71785 (exprs!6271 (h!71786 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!11542))

(declare-fun lambda!360850 () Int)

(declare-fun flatMap!1892 ((InoxSet Context!11542) Int) (InoxSet Context!11542))

(declare-fun derivationStepZipperUp!1561 (Context!11542 C!33044) (InoxSet Context!11542))

(assert (=> b!6506866 (= (flatMap!1892 z!1189 lambda!360850) (derivationStepZipperUp!1561 (h!71786 zl!343) (h!71784 s!2326)))))

(declare-fun lt!2393147 () Unit!158883)

(declare-fun lemmaFlatMapOnSingletonSet!1418 ((InoxSet Context!11542) Context!11542 Int) Unit!158883)

(assert (=> b!6506866 (= lt!2393147 (lemmaFlatMapOnSingletonSet!1418 z!1189 (h!71786 zl!343) lambda!360850))))

(declare-fun lt!2393157 () (InoxSet Context!11542))

(declare-fun lt!2393161 () Context!11542)

(assert (=> b!6506866 (= lt!2393157 (derivationStepZipperUp!1561 lt!2393161 (h!71784 s!2326)))))

(declare-fun lt!2393154 () (InoxSet Context!11542))

(declare-fun derivationStepZipperDown!1635 (Regex!16387 Context!11542 C!33044) (InoxSet Context!11542))

(assert (=> b!6506866 (= lt!2393154 (derivationStepZipperDown!1635 (h!71785 (exprs!6271 (h!71786 zl!343))) lt!2393161 (h!71784 s!2326)))))

(assert (=> b!6506866 (= lt!2393161 (Context!11543 (t!379097 (exprs!6271 (h!71786 zl!343)))))))

(declare-fun lt!2393151 () (InoxSet Context!11542))

(assert (=> b!6506866 (= lt!2393151 (derivationStepZipperUp!1561 (Context!11543 (Cons!65337 (h!71785 (exprs!6271 (h!71786 zl!343))) (t!379097 (exprs!6271 (h!71786 zl!343))))) (h!71784 s!2326)))))

(declare-fun b!6506867 () Bool)

(declare-fun e!3942552 () Bool)

(assert (=> b!6506867 (= e!3942552 (matchZipper!2399 lt!2393157 (t!379096 s!2326)))))

(declare-fun e!3942546 () Bool)

(declare-fun e!3942561 () Bool)

(assert (=> b!6506868 (= e!3942546 e!3942561)))

(declare-fun res!2672144 () Bool)

(assert (=> b!6506868 (=> res!2672144 e!3942561)))

(declare-fun lt!2393178 () (InoxSet Context!11542))

(assert (=> b!6506868 (= res!2672144 (not (= lt!2393178 lt!2393179)))))

(declare-fun lt!2393166 () (InoxSet Context!11542))

(declare-fun lt!2393169 () Context!11542)

(declare-fun appendTo!148 ((InoxSet Context!11542) Context!11542) (InoxSet Context!11542))

(assert (=> b!6506868 (= lt!2393178 (appendTo!148 lt!2393166 lt!2393169))))

(declare-fun lambda!360851 () Int)

(declare-fun lt!2393145 () List!65461)

(declare-fun map!14889 ((InoxSet Context!11542) Int) (InoxSet Context!11542))

(declare-fun ++!14477 (List!65461 List!65461) List!65461)

(assert (=> b!6506868 (= (map!14889 lt!2393166 lambda!360851) (store ((as const (Array Context!11542 Bool)) false) (Context!11543 (++!14477 (Cons!65337 (reg!16716 (regOne!33286 r!7292)) Nil!65337) lt!2393145)) true))))

(declare-fun lt!2393180 () Unit!158883)

(declare-fun lambda!360852 () Int)

(declare-fun lemmaConcatPreservesForall!360 (List!65461 List!65461 Int) Unit!158883)

(assert (=> b!6506868 (= lt!2393180 (lemmaConcatPreservesForall!360 (Cons!65337 (reg!16716 (regOne!33286 r!7292)) Nil!65337) lt!2393145 lambda!360852))))

(declare-fun lt!2393143 () Context!11542)

(declare-fun lt!2393148 () Unit!158883)

(declare-fun lemmaMapOnSingletonSet!170 ((InoxSet Context!11542) Context!11542 Int) Unit!158883)

(assert (=> b!6506868 (= lt!2393148 (lemmaMapOnSingletonSet!170 lt!2393166 lt!2393143 lambda!360851))))

(declare-fun b!6506869 () Bool)

(declare-fun e!3942548 () Bool)

(assert (=> b!6506869 (= e!3942548 e!3942542)))

(declare-fun res!2672140 () Bool)

(assert (=> b!6506869 (=> res!2672140 e!3942542)))

(declare-fun lt!2393163 () (InoxSet Context!11542))

(assert (=> b!6506869 (= res!2672140 (not (= lt!2393162 lt!2393163)))))

(declare-fun lt!2393175 () Context!11542)

(assert (=> b!6506869 (= (flatMap!1892 lt!2393179 lambda!360850) (derivationStepZipperUp!1561 lt!2393175 (h!71784 s!2326)))))

(declare-fun lt!2393173 () Unit!158883)

(assert (=> b!6506869 (= lt!2393173 (lemmaFlatMapOnSingletonSet!1418 lt!2393179 lt!2393175 lambda!360850))))

(declare-fun lt!2393156 () (InoxSet Context!11542))

(assert (=> b!6506869 (= lt!2393156 (derivationStepZipperUp!1561 lt!2393175 (h!71784 s!2326)))))

(declare-fun derivationStepZipper!2353 ((InoxSet Context!11542) C!33044) (InoxSet Context!11542))

(assert (=> b!6506869 (= lt!2393162 (derivationStepZipper!2353 lt!2393179 (h!71784 s!2326)))))

(assert (=> b!6506869 (= lt!2393179 (store ((as const (Array Context!11542 Bool)) false) lt!2393175 true))))

(assert (=> b!6506869 (= lt!2393175 (Context!11543 (Cons!65337 (reg!16716 (regOne!33286 r!7292)) lt!2393145)))))

(declare-fun e!3942558 () Bool)

(declare-fun setElem!44383 () Context!11542)

(declare-fun setNonEmpty!44383 () Bool)

(declare-fun setRes!44383 () Bool)

(declare-fun tp!1799512 () Bool)

(declare-fun inv!84214 (Context!11542) Bool)

(assert (=> setNonEmpty!44383 (= setRes!44383 (and tp!1799512 (inv!84214 setElem!44383) e!3942558))))

(declare-fun setRest!44383 () (InoxSet Context!11542))

(assert (=> setNonEmpty!44383 (= z!1189 ((_ map or) (store ((as const (Array Context!11542 Bool)) false) setElem!44383 true) setRest!44383))))

(declare-fun b!6506870 () Bool)

(declare-fun e!3942541 () Bool)

(assert (=> b!6506870 (= e!3942541 (not (matchZipper!2399 lt!2393157 (t!379096 s!2326))))))

(declare-fun b!6506871 () Bool)

(declare-fun res!2672166 () Bool)

(assert (=> b!6506871 (=> res!2672166 e!3942546)))

(declare-fun lt!2393170 () Bool)

(assert (=> b!6506871 (= res!2672166 (or (not lt!2393170) (not lt!2393160)))))

(declare-fun b!6506872 () Bool)

(declare-fun res!2672160 () Bool)

(declare-fun e!3942540 () Bool)

(assert (=> b!6506872 (=> res!2672160 e!3942540)))

(assert (=> b!6506872 (= res!2672160 (or ((_ is EmptyExpr!16387) r!7292) ((_ is EmptyLang!16387) r!7292) ((_ is ElementMatch!16387) r!7292) ((_ is Union!16387) r!7292) (not ((_ is Concat!25232) r!7292))))))

(declare-fun b!6506873 () Bool)

(declare-fun res!2672162 () Bool)

(declare-fun e!3942549 () Bool)

(assert (=> b!6506873 (=> res!2672162 e!3942549)))

(declare-fun lt!2393153 () Regex!16387)

(declare-fun unfocusZipper!2129 (List!65462) Regex!16387)

(assert (=> b!6506873 (= res!2672162 (not (= (unfocusZipper!2129 (Cons!65338 lt!2393169 Nil!65338)) lt!2393153)))))

(declare-fun b!6506874 () Bool)

(declare-fun e!3942550 () Bool)

(assert (=> b!6506874 (= e!3942550 (nullable!6380 (regOne!33286 (regOne!33286 r!7292))))))

(declare-fun b!6506875 () Bool)

(declare-fun res!2672141 () Bool)

(assert (=> b!6506875 (=> res!2672141 e!3942544)))

(declare-fun isEmpty!37545 (List!65461) Bool)

(assert (=> b!6506875 (= res!2672141 (isEmpty!37545 (t!379097 (exprs!6271 (h!71786 zl!343)))))))

(declare-fun b!6506876 () Bool)

(declare-fun res!2672165 () Bool)

(declare-fun e!3942547 () Bool)

(assert (=> b!6506876 (=> res!2672165 e!3942547)))

(assert (=> b!6506876 (= res!2672165 (not lt!2393171))))

(declare-fun b!6506877 () Bool)

(declare-fun tp!1799510 () Bool)

(assert (=> b!6506877 (= e!3942558 tp!1799510)))

(declare-fun b!6506878 () Bool)

(declare-fun e!3942551 () Bool)

(declare-fun tp_is_empty!42027 () Bool)

(declare-fun tp!1799505 () Bool)

(assert (=> b!6506878 (= e!3942551 (and tp_is_empty!42027 tp!1799505))))

(declare-fun tp!1799508 () Bool)

(declare-fun e!3942557 () Bool)

(declare-fun e!3942560 () Bool)

(declare-fun b!6506879 () Bool)

(assert (=> b!6506879 (= e!3942560 (and (inv!84214 (h!71786 zl!343)) e!3942557 tp!1799508))))

(declare-fun b!6506880 () Bool)

(declare-fun res!2672161 () Bool)

(assert (=> b!6506880 (=> res!2672161 e!3942540)))

(declare-fun generalisedUnion!2231 (List!65461) Regex!16387)

(declare-fun unfocusZipperList!1808 (List!65462) List!65461)

(assert (=> b!6506880 (= res!2672161 (not (= r!7292 (generalisedUnion!2231 (unfocusZipperList!1808 zl!343)))))))

(declare-fun res!2672149 () Bool)

(declare-fun e!3942562 () Bool)

(assert (=> start!639318 (=> (not res!2672149) (not e!3942562))))

(declare-fun validRegex!8123 (Regex!16387) Bool)

(assert (=> start!639318 (= res!2672149 (validRegex!8123 r!7292))))

(assert (=> start!639318 e!3942562))

(assert (=> start!639318 e!3942559))

(declare-fun condSetEmpty!44383 () Bool)

(assert (=> start!639318 (= condSetEmpty!44383 (= z!1189 ((as const (Array Context!11542 Bool)) false)))))

(assert (=> start!639318 setRes!44383))

(assert (=> start!639318 e!3942560))

(assert (=> start!639318 e!3942551))

(declare-fun b!6506881 () Bool)

(declare-fun res!2672147 () Bool)

(assert (=> b!6506881 (=> res!2672147 e!3942540)))

(declare-fun generalisedConcat!1984 (List!65461) Regex!16387)

(assert (=> b!6506881 (= res!2672147 (not (= r!7292 (generalisedConcat!1984 (exprs!6271 (h!71786 zl!343))))))))

(declare-fun b!6506882 () Bool)

(assert (=> b!6506882 (= e!3942559 tp_is_empty!42027)))

(declare-fun b!6506883 () Bool)

(declare-fun tp!1799514 () Bool)

(assert (=> b!6506883 (= e!3942559 tp!1799514)))

(declare-fun b!6506884 () Bool)

(declare-fun e!3942543 () Bool)

(assert (=> b!6506884 (= e!3942554 e!3942543)))

(declare-fun res!2672145 () Bool)

(assert (=> b!6506884 (=> res!2672145 e!3942543)))

(assert (=> b!6506884 (= res!2672145 (not (= r!7292 lt!2393153)))))

(declare-fun lt!2393152 () Regex!16387)

(assert (=> b!6506884 (= lt!2393153 (Concat!25232 lt!2393152 (regTwo!33286 r!7292)))))

(declare-fun b!6506885 () Bool)

(declare-fun res!2672142 () Bool)

(assert (=> b!6506885 (=> res!2672142 e!3942554)))

(declare-fun lt!2393176 () Regex!16387)

(assert (=> b!6506885 (= res!2672142 (not (= lt!2393176 r!7292)))))

(declare-fun b!6506886 () Bool)

(declare-fun res!2672158 () Bool)

(assert (=> b!6506886 (=> res!2672158 e!3942547)))

(assert (=> b!6506886 (= res!2672158 (not (matchZipper!2399 z!1189 s!2326)))))

(declare-fun b!6506887 () Bool)

(declare-fun tp!1799507 () Bool)

(declare-fun tp!1799511 () Bool)

(assert (=> b!6506887 (= e!3942559 (and tp!1799507 tp!1799511))))

(declare-fun b!6506888 () Bool)

(declare-fun res!2672139 () Bool)

(assert (=> b!6506888 (=> (not res!2672139) (not e!3942562))))

(declare-fun toList!10171 ((InoxSet Context!11542)) List!65462)

(assert (=> b!6506888 (= res!2672139 (= (toList!10171 z!1189) zl!343))))

(declare-fun b!6506889 () Bool)

(assert (=> b!6506889 (= e!3942549 e!3942547)))

(declare-fun res!2672155 () Bool)

(assert (=> b!6506889 (=> res!2672155 e!3942547)))

(declare-fun lt!2393158 () Bool)

(assert (=> b!6506889 (= res!2672155 lt!2393158)))

(declare-fun lt!2393167 () Regex!16387)

(declare-fun matchR!8570 (Regex!16387 List!65460) Bool)

(declare-fun matchRSpec!3488 (Regex!16387 List!65460) Bool)

(assert (=> b!6506889 (= (matchR!8570 lt!2393167 s!2326) (matchRSpec!3488 lt!2393167 s!2326))))

(declare-fun lt!2393164 () Unit!158883)

(declare-fun mainMatchTheorem!3488 (Regex!16387 List!65460) Unit!158883)

(assert (=> b!6506889 (= lt!2393164 (mainMatchTheorem!3488 lt!2393167 s!2326))))

(assert (=> b!6506890 (= e!3942540 e!3942544)))

(declare-fun res!2672154 () Bool)

(assert (=> b!6506890 (=> res!2672154 e!3942544)))

(declare-fun lt!2393165 () Bool)

(assert (=> b!6506890 (= res!2672154 (or (not (= lt!2393158 lt!2393165)) ((_ is Nil!65336) s!2326)))))

(declare-fun Exists!3457 (Int) Bool)

(assert (=> b!6506890 (= (Exists!3457 lambda!360848) (Exists!3457 lambda!360849))))

(declare-fun lt!2393168 () Unit!158883)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1994 (Regex!16387 Regex!16387 List!65460) Unit!158883)

(assert (=> b!6506890 (= lt!2393168 (lemmaExistCutMatchRandMatchRSpecEquivalent!1994 (regOne!33286 r!7292) (regTwo!33286 r!7292) s!2326))))

(assert (=> b!6506890 (= lt!2393165 (Exists!3457 lambda!360848))))

(declare-datatypes ((tuple2!66732 0))(
  ( (tuple2!66733 (_1!36669 List!65460) (_2!36669 List!65460)) )
))
(declare-datatypes ((Option!16278 0))(
  ( (None!16277) (Some!16277 (v!52456 tuple2!66732)) )
))
(declare-fun isDefined!12981 (Option!16278) Bool)

(declare-fun findConcatSeparation!2692 (Regex!16387 Regex!16387 List!65460 List!65460 List!65460) Option!16278)

(assert (=> b!6506890 (= lt!2393165 (isDefined!12981 (findConcatSeparation!2692 (regOne!33286 r!7292) (regTwo!33286 r!7292) Nil!65336 s!2326 s!2326)))))

(declare-fun lt!2393144 () Unit!158883)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2456 (Regex!16387 Regex!16387 List!65460) Unit!158883)

(assert (=> b!6506890 (= lt!2393144 (lemmaFindConcatSeparationEquivalentToExists!2456 (regOne!33286 r!7292) (regTwo!33286 r!7292) s!2326))))

(declare-fun b!6506891 () Bool)

(assert (=> b!6506891 (= e!3942547 e!3942546)))

(declare-fun res!2672150 () Bool)

(assert (=> b!6506891 (=> res!2672150 e!3942546)))

(assert (=> b!6506891 (= res!2672150 e!3942541)))

(declare-fun res!2672146 () Bool)

(assert (=> b!6506891 (=> (not res!2672146) (not e!3942541))))

(assert (=> b!6506891 (= res!2672146 (not lt!2393170))))

(assert (=> b!6506891 (= lt!2393170 (matchZipper!2399 lt!2393154 (t!379096 s!2326)))))

(declare-fun b!6506892 () Bool)

(declare-fun res!2672137 () Bool)

(assert (=> b!6506892 (=> res!2672137 e!3942555)))

(assert (=> b!6506892 (= res!2672137 (or ((_ is Concat!25232) (regOne!33286 r!7292)) (not ((_ is Star!16387) (regOne!33286 r!7292)))))))

(declare-fun setIsEmpty!44383 () Bool)

(assert (=> setIsEmpty!44383 setRes!44383))

(declare-fun b!6506893 () Bool)

(declare-fun e!3942545 () Bool)

(assert (=> b!6506893 (= e!3942545 e!3942549)))

(declare-fun res!2672143 () Bool)

(assert (=> b!6506893 (=> res!2672143 e!3942549)))

(assert (=> b!6506893 (= res!2672143 (not (= (unfocusZipper!2129 (Cons!65338 lt!2393143 Nil!65338)) (reg!16716 (regOne!33286 r!7292)))))))

(declare-fun lt!2393159 () (InoxSet Context!11542))

(assert (=> b!6506893 (= (flatMap!1892 lt!2393159 lambda!360850) (derivationStepZipperUp!1561 lt!2393169 (h!71784 s!2326)))))

(declare-fun lt!2393172 () Unit!158883)

(assert (=> b!6506893 (= lt!2393172 (lemmaFlatMapOnSingletonSet!1418 lt!2393159 lt!2393169 lambda!360850))))

(assert (=> b!6506893 (= (flatMap!1892 lt!2393166 lambda!360850) (derivationStepZipperUp!1561 lt!2393143 (h!71784 s!2326)))))

(declare-fun lt!2393155 () Unit!158883)

(assert (=> b!6506893 (= lt!2393155 (lemmaFlatMapOnSingletonSet!1418 lt!2393166 lt!2393143 lambda!360850))))

(declare-fun lt!2393149 () (InoxSet Context!11542))

(assert (=> b!6506893 (= lt!2393149 (derivationStepZipperUp!1561 lt!2393169 (h!71784 s!2326)))))

(declare-fun lt!2393174 () (InoxSet Context!11542))

(assert (=> b!6506893 (= lt!2393174 (derivationStepZipperUp!1561 lt!2393143 (h!71784 s!2326)))))

(assert (=> b!6506893 (= lt!2393159 (store ((as const (Array Context!11542 Bool)) false) lt!2393169 true))))

(assert (=> b!6506893 (= lt!2393166 (store ((as const (Array Context!11542 Bool)) false) lt!2393143 true))))

(assert (=> b!6506893 (= lt!2393143 (Context!11543 (Cons!65337 (reg!16716 (regOne!33286 r!7292)) Nil!65337)))))

(declare-fun b!6506894 () Bool)

(declare-fun Unit!158886 () Unit!158883)

(assert (=> b!6506894 (= e!3942556 Unit!158886)))

(declare-fun lt!2393146 () Unit!158883)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1218 ((InoxSet Context!11542) (InoxSet Context!11542) List!65460) Unit!158883)

(assert (=> b!6506894 (= lt!2393146 (lemmaZipperConcatMatchesSameAsBothZippers!1218 lt!2393154 lt!2393157 (t!379096 s!2326)))))

(declare-fun res!2672164 () Bool)

(assert (=> b!6506894 (= res!2672164 (matchZipper!2399 lt!2393154 (t!379096 s!2326)))))

(assert (=> b!6506894 (=> res!2672164 e!3942552)))

(assert (=> b!6506894 (= (matchZipper!2399 ((_ map or) lt!2393154 lt!2393157) (t!379096 s!2326)) e!3942552)))

(declare-fun b!6506895 () Bool)

(declare-fun e!3942553 () Bool)

(assert (=> b!6506895 (= e!3942562 e!3942553)))

(declare-fun res!2672136 () Bool)

(assert (=> b!6506895 (=> (not res!2672136) (not e!3942553))))

(assert (=> b!6506895 (= res!2672136 (= r!7292 lt!2393176))))

(assert (=> b!6506895 (= lt!2393176 (unfocusZipper!2129 zl!343))))

(declare-fun b!6506896 () Bool)

(declare-fun res!2672159 () Bool)

(assert (=> b!6506896 (=> res!2672159 e!3942540)))

(assert (=> b!6506896 (= res!2672159 (not ((_ is Cons!65337) (exprs!6271 (h!71786 zl!343)))))))

(declare-fun b!6506897 () Bool)

(assert (=> b!6506897 (= e!3942553 (not e!3942540))))

(declare-fun res!2672157 () Bool)

(assert (=> b!6506897 (=> res!2672157 e!3942540)))

(assert (=> b!6506897 (= res!2672157 (not ((_ is Cons!65338) zl!343)))))

(assert (=> b!6506897 (= lt!2393158 (matchRSpec!3488 r!7292 s!2326))))

(assert (=> b!6506897 (= lt!2393158 (matchR!8570 r!7292 s!2326))))

(declare-fun lt!2393177 () Unit!158883)

(assert (=> b!6506897 (= lt!2393177 (mainMatchTheorem!3488 r!7292 s!2326))))

(declare-fun b!6506898 () Bool)

(declare-fun tp!1799506 () Bool)

(assert (=> b!6506898 (= e!3942557 tp!1799506)))

(declare-fun b!6506899 () Bool)

(declare-fun res!2672163 () Bool)

(assert (=> b!6506899 (=> res!2672163 e!3942540)))

(declare-fun isEmpty!37546 (List!65462) Bool)

(assert (=> b!6506899 (= res!2672163 (not (isEmpty!37546 (t!379098 zl!343))))))

(declare-fun b!6506900 () Bool)

(assert (=> b!6506900 (= e!3942555 e!3942548)))

(declare-fun res!2672148 () Bool)

(assert (=> b!6506900 (=> res!2672148 e!3942548)))

(assert (=> b!6506900 (= res!2672148 (not (= lt!2393154 lt!2393163)))))

(assert (=> b!6506900 (= lt!2393163 (derivationStepZipperDown!1635 (reg!16716 (regOne!33286 r!7292)) lt!2393169 (h!71784 s!2326)))))

(assert (=> b!6506900 (= lt!2393169 (Context!11543 lt!2393145))))

(assert (=> b!6506900 (= lt!2393145 (Cons!65337 lt!2393152 (t!379097 (exprs!6271 (h!71786 zl!343)))))))

(assert (=> b!6506900 (= lt!2393152 (Star!16387 (reg!16716 (regOne!33286 r!7292))))))

(declare-fun b!6506901 () Bool)

(declare-fun res!2672138 () Bool)

(assert (=> b!6506901 (=> res!2672138 e!3942555)))

(assert (=> b!6506901 (= res!2672138 e!3942550)))

(declare-fun res!2672152 () Bool)

(assert (=> b!6506901 (=> (not res!2672152) (not e!3942550))))

(assert (=> b!6506901 (= res!2672152 ((_ is Concat!25232) (regOne!33286 r!7292)))))

(declare-fun b!6506902 () Bool)

(assert (=> b!6506902 (= e!3942561 (matchZipper!2399 lt!2393178 s!2326))))

(declare-fun b!6506903 () Bool)

(assert (=> b!6506903 (= e!3942543 e!3942545)))

(declare-fun res!2672151 () Bool)

(assert (=> b!6506903 (=> res!2672151 e!3942545)))

(assert (=> b!6506903 (= res!2672151 (not (= (unfocusZipper!2129 (Cons!65338 lt!2393175 Nil!65338)) lt!2393167)))))

(assert (=> b!6506903 (= lt!2393167 (Concat!25232 (reg!16716 (regOne!33286 r!7292)) lt!2393153))))

(assert (= (and start!639318 res!2672149) b!6506888))

(assert (= (and b!6506888 res!2672139) b!6506895))

(assert (= (and b!6506895 res!2672136) b!6506897))

(assert (= (and b!6506897 (not res!2672157)) b!6506899))

(assert (= (and b!6506899 (not res!2672163)) b!6506881))

(assert (= (and b!6506881 (not res!2672147)) b!6506896))

(assert (= (and b!6506896 (not res!2672159)) b!6506880))

(assert (= (and b!6506880 (not res!2672161)) b!6506872))

(assert (= (and b!6506872 (not res!2672160)) b!6506890))

(assert (= (and b!6506890 (not res!2672154)) b!6506875))

(assert (= (and b!6506875 (not res!2672141)) b!6506866))

(assert (= (and b!6506866 c!1193368) b!6506894))

(assert (= (and b!6506866 (not c!1193368)) b!6506865))

(assert (= (and b!6506894 (not res!2672164)) b!6506867))

(assert (= (and b!6506866 (not res!2672156)) b!6506901))

(assert (= (and b!6506901 res!2672152) b!6506874))

(assert (= (and b!6506901 (not res!2672138)) b!6506892))

(assert (= (and b!6506892 (not res!2672137)) b!6506900))

(assert (= (and b!6506900 (not res!2672148)) b!6506869))

(assert (= (and b!6506869 (not res!2672140)) b!6506864))

(assert (= (and b!6506864 (not res!2672153)) b!6506885))

(assert (= (and b!6506885 (not res!2672142)) b!6506884))

(assert (= (and b!6506884 (not res!2672145)) b!6506903))

(assert (= (and b!6506903 (not res!2672151)) b!6506893))

(assert (= (and b!6506893 (not res!2672143)) b!6506873))

(assert (= (and b!6506873 (not res!2672162)) b!6506889))

(assert (= (and b!6506889 (not res!2672155)) b!6506886))

(assert (= (and b!6506886 (not res!2672158)) b!6506876))

(assert (= (and b!6506876 (not res!2672165)) b!6506891))

(assert (= (and b!6506891 res!2672146) b!6506870))

(assert (= (and b!6506891 (not res!2672150)) b!6506871))

(assert (= (and b!6506871 (not res!2672166)) b!6506868))

(assert (= (and b!6506868 (not res!2672144)) b!6506902))

(assert (= (and start!639318 ((_ is ElementMatch!16387) r!7292)) b!6506882))

(assert (= (and start!639318 ((_ is Concat!25232) r!7292)) b!6506863))

(assert (= (and start!639318 ((_ is Star!16387) r!7292)) b!6506883))

(assert (= (and start!639318 ((_ is Union!16387) r!7292)) b!6506887))

(assert (= (and start!639318 condSetEmpty!44383) setIsEmpty!44383))

(assert (= (and start!639318 (not condSetEmpty!44383)) setNonEmpty!44383))

(assert (= setNonEmpty!44383 b!6506877))

(assert (= b!6506879 b!6506898))

(assert (= (and start!639318 ((_ is Cons!65338) zl!343)) b!6506879))

(assert (= (and start!639318 ((_ is Cons!65336) s!2326)) b!6506878))

(declare-fun m!7293638 () Bool)

(assert (=> b!6506864 m!7293638))

(declare-fun m!7293640 () Bool)

(assert (=> b!6506864 m!7293640))

(declare-fun m!7293642 () Bool)

(assert (=> b!6506891 m!7293642))

(declare-fun m!7293644 () Bool)

(assert (=> b!6506899 m!7293644))

(declare-fun m!7293646 () Bool)

(assert (=> b!6506875 m!7293646))

(declare-fun m!7293648 () Bool)

(assert (=> b!6506889 m!7293648))

(declare-fun m!7293650 () Bool)

(assert (=> b!6506889 m!7293650))

(declare-fun m!7293652 () Bool)

(assert (=> b!6506889 m!7293652))

(declare-fun m!7293654 () Bool)

(assert (=> b!6506900 m!7293654))

(declare-fun m!7293656 () Bool)

(assert (=> b!6506894 m!7293656))

(assert (=> b!6506894 m!7293642))

(declare-fun m!7293658 () Bool)

(assert (=> b!6506894 m!7293658))

(declare-fun m!7293660 () Bool)

(assert (=> b!6506880 m!7293660))

(assert (=> b!6506880 m!7293660))

(declare-fun m!7293662 () Bool)

(assert (=> b!6506880 m!7293662))

(declare-fun m!7293664 () Bool)

(assert (=> b!6506870 m!7293664))

(declare-fun m!7293666 () Bool)

(assert (=> b!6506897 m!7293666))

(declare-fun m!7293668 () Bool)

(assert (=> b!6506897 m!7293668))

(declare-fun m!7293670 () Bool)

(assert (=> b!6506897 m!7293670))

(declare-fun m!7293672 () Bool)

(assert (=> start!639318 m!7293672))

(declare-fun m!7293674 () Bool)

(assert (=> b!6506874 m!7293674))

(declare-fun m!7293676 () Bool)

(assert (=> b!6506866 m!7293676))

(declare-fun m!7293678 () Bool)

(assert (=> b!6506866 m!7293678))

(declare-fun m!7293680 () Bool)

(assert (=> b!6506866 m!7293680))

(declare-fun m!7293682 () Bool)

(assert (=> b!6506866 m!7293682))

(declare-fun m!7293684 () Bool)

(assert (=> b!6506866 m!7293684))

(declare-fun m!7293686 () Bool)

(assert (=> b!6506866 m!7293686))

(declare-fun m!7293688 () Bool)

(assert (=> b!6506866 m!7293688))

(declare-fun m!7293690 () Bool)

(assert (=> b!6506868 m!7293690))

(declare-fun m!7293692 () Bool)

(assert (=> b!6506868 m!7293692))

(declare-fun m!7293694 () Bool)

(assert (=> b!6506868 m!7293694))

(declare-fun m!7293696 () Bool)

(assert (=> b!6506868 m!7293696))

(declare-fun m!7293698 () Bool)

(assert (=> b!6506868 m!7293698))

(declare-fun m!7293700 () Bool)

(assert (=> b!6506868 m!7293700))

(declare-fun m!7293702 () Bool)

(assert (=> b!6506881 m!7293702))

(declare-fun m!7293704 () Bool)

(assert (=> b!6506895 m!7293704))

(declare-fun m!7293706 () Bool)

(assert (=> b!6506890 m!7293706))

(declare-fun m!7293708 () Bool)

(assert (=> b!6506890 m!7293708))

(declare-fun m!7293710 () Bool)

(assert (=> b!6506890 m!7293710))

(declare-fun m!7293712 () Bool)

(assert (=> b!6506890 m!7293712))

(declare-fun m!7293714 () Bool)

(assert (=> b!6506890 m!7293714))

(assert (=> b!6506890 m!7293714))

(assert (=> b!6506890 m!7293706))

(declare-fun m!7293716 () Bool)

(assert (=> b!6506890 m!7293716))

(declare-fun m!7293718 () Bool)

(assert (=> b!6506903 m!7293718))

(assert (=> b!6506867 m!7293664))

(declare-fun m!7293720 () Bool)

(assert (=> b!6506873 m!7293720))

(declare-fun m!7293722 () Bool)

(assert (=> b!6506902 m!7293722))

(declare-fun m!7293724 () Bool)

(assert (=> b!6506893 m!7293724))

(declare-fun m!7293726 () Bool)

(assert (=> b!6506893 m!7293726))

(declare-fun m!7293728 () Bool)

(assert (=> b!6506893 m!7293728))

(declare-fun m!7293730 () Bool)

(assert (=> b!6506893 m!7293730))

(declare-fun m!7293732 () Bool)

(assert (=> b!6506893 m!7293732))

(declare-fun m!7293734 () Bool)

(assert (=> b!6506893 m!7293734))

(declare-fun m!7293736 () Bool)

(assert (=> b!6506893 m!7293736))

(declare-fun m!7293738 () Bool)

(assert (=> b!6506893 m!7293738))

(declare-fun m!7293740 () Bool)

(assert (=> b!6506893 m!7293740))

(declare-fun m!7293742 () Bool)

(assert (=> b!6506869 m!7293742))

(declare-fun m!7293744 () Bool)

(assert (=> b!6506869 m!7293744))

(declare-fun m!7293746 () Bool)

(assert (=> b!6506869 m!7293746))

(declare-fun m!7293748 () Bool)

(assert (=> b!6506869 m!7293748))

(declare-fun m!7293750 () Bool)

(assert (=> b!6506869 m!7293750))

(declare-fun m!7293752 () Bool)

(assert (=> setNonEmpty!44383 m!7293752))

(declare-fun m!7293754 () Bool)

(assert (=> b!6506886 m!7293754))

(declare-fun m!7293756 () Bool)

(assert (=> b!6506888 m!7293756))

(declare-fun m!7293758 () Bool)

(assert (=> b!6506879 m!7293758))

(check-sat (not b!6506874) (not b!6506864) (not b!6506903) (not b!6506880) tp_is_empty!42027 (not b!6506870) (not b!6506881) (not b!6506888) (not setNonEmpty!44383) (not b!6506895) (not b!6506863) (not b!6506889) (not b!6506878) (not b!6506902) (not b!6506893) (not start!639318) (not b!6506900) (not b!6506897) (not b!6506875) (not b!6506887) (not b!6506868) (not b!6506867) (not b!6506866) (not b!6506898) (not b!6506886) (not b!6506879) (not b!6506883) (not b!6506869) (not b!6506877) (not b!6506873) (not b!6506894) (not b!6506891) (not b!6506899) (not b!6506890))
(check-sat)
