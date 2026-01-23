; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!591346 () Bool)

(assert start!591346)

(declare-fun b!5754083 () Bool)

(assert (=> b!5754083 true))

(assert (=> b!5754083 true))

(declare-fun lambda!312287 () Int)

(declare-fun lambda!312286 () Int)

(assert (=> b!5754083 (not (= lambda!312287 lambda!312286))))

(assert (=> b!5754083 true))

(assert (=> b!5754083 true))

(declare-fun b!5754066 () Bool)

(assert (=> b!5754066 true))

(declare-fun bs!1348379 () Bool)

(declare-fun b!5754078 () Bool)

(assert (= bs!1348379 (and b!5754078 b!5754083)))

(declare-datatypes ((C!31794 0))(
  ( (C!31795 (val!25599 Int)) )
))
(declare-datatypes ((Regex!15762 0))(
  ( (ElementMatch!15762 (c!1016690 C!31794)) (Concat!24607 (regOne!32036 Regex!15762) (regTwo!32036 Regex!15762)) (EmptyExpr!15762) (Star!15762 (reg!16091 Regex!15762)) (EmptyLang!15762) (Union!15762 (regOne!32037 Regex!15762) (regTwo!32037 Regex!15762)) )
))
(declare-fun r!7292 () Regex!15762)

(declare-datatypes ((List!63585 0))(
  ( (Nil!63461) (Cons!63461 (h!69909 C!31794) (t!376917 List!63585)) )
))
(declare-fun s!2326 () List!63585)

(declare-fun lambda!312289 () Int)

(declare-fun lt!2287677 () Regex!15762)

(assert (=> bs!1348379 (= (and (= Nil!63461 s!2326) (= (reg!16091 (regOne!32036 r!7292)) (regOne!32036 r!7292)) (= lt!2287677 (regTwo!32036 r!7292))) (= lambda!312289 lambda!312286))))

(assert (=> bs!1348379 (not (= lambda!312289 lambda!312287))))

(assert (=> b!5754078 true))

(assert (=> b!5754078 true))

(declare-fun lambda!312290 () Int)

(assert (=> bs!1348379 (not (= lambda!312290 lambda!312286))))

(assert (=> bs!1348379 (= (and (= Nil!63461 s!2326) (= (reg!16091 (regOne!32036 r!7292)) (regOne!32036 r!7292)) (= lt!2287677 (regTwo!32036 r!7292))) (= lambda!312290 lambda!312287))))

(assert (=> b!5754078 (not (= lambda!312290 lambda!312289))))

(assert (=> b!5754078 true))

(assert (=> b!5754078 true))

(declare-fun lambda!312291 () Int)

(assert (=> bs!1348379 (not (= lambda!312291 lambda!312286))))

(assert (=> bs!1348379 (not (= lambda!312291 lambda!312287))))

(assert (=> b!5754078 (not (= lambda!312291 lambda!312289))))

(assert (=> b!5754078 (not (= lambda!312291 lambda!312290))))

(assert (=> b!5754078 true))

(assert (=> b!5754078 true))

(declare-fun e!3536224 () Bool)

(declare-fun e!3536226 () Bool)

(assert (=> b!5754066 (= e!3536224 e!3536226)))

(declare-fun res!2429197 () Bool)

(assert (=> b!5754066 (=> res!2429197 e!3536226)))

(assert (=> b!5754066 (= res!2429197 (or (and (is-ElementMatch!15762 (regOne!32036 r!7292)) (= (c!1016690 (regOne!32036 r!7292)) (h!69909 s!2326))) (is-Union!15762 (regOne!32036 r!7292))))))

(declare-datatypes ((Unit!156580 0))(
  ( (Unit!156581) )
))
(declare-fun lt!2287697 () Unit!156580)

(declare-fun e!3536234 () Unit!156580)

(assert (=> b!5754066 (= lt!2287697 e!3536234)))

(declare-fun c!1016689 () Bool)

(declare-fun lt!2287679 () Bool)

(assert (=> b!5754066 (= c!1016689 lt!2287679)))

(declare-datatypes ((List!63586 0))(
  ( (Nil!63462) (Cons!63462 (h!69910 Regex!15762) (t!376918 List!63586)) )
))
(declare-datatypes ((Context!10292 0))(
  ( (Context!10293 (exprs!5646 List!63586)) )
))
(declare-datatypes ((List!63587 0))(
  ( (Nil!63463) (Cons!63463 (h!69911 Context!10292) (t!376919 List!63587)) )
))
(declare-fun zl!343 () List!63587)

(declare-fun nullable!5794 (Regex!15762) Bool)

(assert (=> b!5754066 (= lt!2287679 (nullable!5794 (h!69910 (exprs!5646 (h!69911 zl!343)))))))

(declare-fun z!1189 () (Set Context!10292))

(declare-fun lambda!312288 () Int)

(declare-fun flatMap!1375 ((Set Context!10292) Int) (Set Context!10292))

(declare-fun derivationStepZipperUp!1030 (Context!10292 C!31794) (Set Context!10292))

(assert (=> b!5754066 (= (flatMap!1375 z!1189 lambda!312288) (derivationStepZipperUp!1030 (h!69911 zl!343) (h!69909 s!2326)))))

(declare-fun lt!2287718 () Unit!156580)

(declare-fun lemmaFlatMapOnSingletonSet!907 ((Set Context!10292) Context!10292 Int) Unit!156580)

(assert (=> b!5754066 (= lt!2287718 (lemmaFlatMapOnSingletonSet!907 z!1189 (h!69911 zl!343) lambda!312288))))

(declare-fun lt!2287696 () (Set Context!10292))

(declare-fun lt!2287720 () Context!10292)

(assert (=> b!5754066 (= lt!2287696 (derivationStepZipperUp!1030 lt!2287720 (h!69909 s!2326)))))

(declare-fun lt!2287707 () (Set Context!10292))

(declare-fun derivationStepZipperDown!1104 (Regex!15762 Context!10292 C!31794) (Set Context!10292))

(assert (=> b!5754066 (= lt!2287707 (derivationStepZipperDown!1104 (h!69910 (exprs!5646 (h!69911 zl!343))) lt!2287720 (h!69909 s!2326)))))

(assert (=> b!5754066 (= lt!2287720 (Context!10293 (t!376918 (exprs!5646 (h!69911 zl!343)))))))

(declare-fun lt!2287710 () (Set Context!10292))

(assert (=> b!5754066 (= lt!2287710 (derivationStepZipperUp!1030 (Context!10293 (Cons!63462 (h!69910 (exprs!5646 (h!69911 zl!343))) (t!376918 (exprs!5646 (h!69911 zl!343))))) (h!69909 s!2326)))))

(declare-fun b!5754067 () Bool)

(declare-fun Unit!156582 () Unit!156580)

(assert (=> b!5754067 (= e!3536234 Unit!156582)))

(declare-fun b!5754068 () Bool)

(declare-fun res!2429202 () Bool)

(declare-fun e!3536247 () Bool)

(assert (=> b!5754068 (=> res!2429202 e!3536247)))

(declare-fun isEmpty!35347 (List!63587) Bool)

(assert (=> b!5754068 (= res!2429202 (not (isEmpty!35347 (t!376919 zl!343))))))

(declare-fun e!3536242 () Bool)

(declare-fun e!3536229 () Bool)

(declare-fun tp!1590224 () Bool)

(declare-fun b!5754069 () Bool)

(declare-fun inv!82653 (Context!10292) Bool)

(assert (=> b!5754069 (= e!3536242 (and (inv!82653 (h!69911 zl!343)) e!3536229 tp!1590224))))

(declare-fun b!5754070 () Bool)

(declare-fun res!2429179 () Bool)

(assert (=> b!5754070 (=> res!2429179 e!3536226)))

(assert (=> b!5754070 (= res!2429179 (or (is-Concat!24607 (regOne!32036 r!7292)) (not (is-Star!15762 (regOne!32036 r!7292)))))))

(declare-fun b!5754071 () Bool)

(declare-fun e!3536233 () Bool)

(declare-fun e!3536227 () Bool)

(assert (=> b!5754071 (= e!3536233 e!3536227)))

(declare-fun res!2429201 () Bool)

(assert (=> b!5754071 (=> res!2429201 e!3536227)))

(declare-fun lt!2287712 () (Set Context!10292))

(declare-fun lt!2287714 () (Set Context!10292))

(assert (=> b!5754071 (= res!2429201 (not (= lt!2287712 lt!2287714)))))

(declare-fun lt!2287682 () Context!10292)

(declare-fun lt!2287695 () (Set Context!10292))

(assert (=> b!5754071 (= (flatMap!1375 lt!2287695 lambda!312288) (derivationStepZipperUp!1030 lt!2287682 (h!69909 s!2326)))))

(declare-fun lt!2287688 () Unit!156580)

(assert (=> b!5754071 (= lt!2287688 (lemmaFlatMapOnSingletonSet!907 lt!2287695 lt!2287682 lambda!312288))))

(declare-fun lt!2287686 () (Set Context!10292))

(assert (=> b!5754071 (= lt!2287686 (derivationStepZipperUp!1030 lt!2287682 (h!69909 s!2326)))))

(declare-fun derivationStepZipper!1845 ((Set Context!10292) C!31794) (Set Context!10292))

(assert (=> b!5754071 (= lt!2287712 (derivationStepZipper!1845 lt!2287695 (h!69909 s!2326)))))

(assert (=> b!5754071 (= lt!2287695 (set.insert lt!2287682 (as set.empty (Set Context!10292))))))

(declare-fun lt!2287701 () List!63586)

(assert (=> b!5754071 (= lt!2287682 (Context!10293 (Cons!63462 (reg!16091 (regOne!32036 r!7292)) lt!2287701)))))

(declare-fun b!5754072 () Bool)

(declare-fun e!3536244 () Bool)

(declare-fun matchZipper!1900 ((Set Context!10292) List!63585) Bool)

(assert (=> b!5754072 (= e!3536244 (matchZipper!1900 lt!2287696 (t!376917 s!2326)))))

(declare-fun b!5754073 () Bool)

(declare-fun e!3536241 () Bool)

(assert (=> b!5754073 (= e!3536241 (nullable!5794 (regOne!32036 (regOne!32036 r!7292))))))

(declare-fun b!5754074 () Bool)

(declare-fun e!3536238 () Bool)

(declare-fun e!3536246 () Bool)

(assert (=> b!5754074 (= e!3536238 e!3536246)))

(declare-fun res!2429188 () Bool)

(assert (=> b!5754074 (=> res!2429188 e!3536246)))

(declare-fun e!3536231 () Bool)

(assert (=> b!5754074 (= res!2429188 e!3536231)))

(declare-fun res!2429209 () Bool)

(assert (=> b!5754074 (=> (not res!2429209) (not e!3536231))))

(declare-fun lt!2287685 () Bool)

(assert (=> b!5754074 (= res!2429209 (not lt!2287685))))

(assert (=> b!5754074 (= lt!2287685 (matchZipper!1900 lt!2287707 (t!376917 s!2326)))))

(declare-fun b!5754075 () Bool)

(declare-fun e!3536237 () Bool)

(declare-fun tp!1590230 () Bool)

(declare-fun tp!1590229 () Bool)

(assert (=> b!5754075 (= e!3536237 (and tp!1590230 tp!1590229))))

(declare-fun b!5754076 () Bool)

(declare-fun e!3536243 () Bool)

(declare-fun e!3536225 () Bool)

(assert (=> b!5754076 (= e!3536243 e!3536225)))

(declare-fun res!2429186 () Bool)

(assert (=> b!5754076 (=> res!2429186 e!3536225)))

(declare-fun lt!2287693 () List!63587)

(declare-fun zipperDepth!237 (List!63587) Int)

(assert (=> b!5754076 (= res!2429186 (< (zipperDepth!237 zl!343) (zipperDepth!237 lt!2287693)))))

(assert (=> b!5754076 (= lt!2287693 (Cons!63463 lt!2287720 Nil!63463))))

(declare-fun b!5754077 () Bool)

(assert (=> b!5754077 (= e!3536231 (not (matchZipper!1900 lt!2287696 (t!376917 s!2326))))))

(declare-fun e!3536239 () Bool)

(assert (=> b!5754078 (= e!3536239 false)))

(declare-fun lt!2287699 () Regex!15762)

(declare-fun matchR!7947 (Regex!15762 List!63585) Bool)

(declare-fun ++!13980 (List!63585 List!63585) List!63585)

(assert (=> b!5754078 (matchR!7947 lt!2287699 (++!13980 Nil!63461 s!2326))))

(declare-fun lt!2287689 () Unit!156580)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!287 (Regex!15762 Regex!15762 List!63585 List!63585) Unit!156580)

(assert (=> b!5754078 (= lt!2287689 (lemmaTwoRegexMatchThenConcatMatchesConcatString!287 lt!2287677 (regTwo!32036 r!7292) Nil!63461 s!2326))))

(declare-fun Exists!2862 (Int) Bool)

(assert (=> b!5754078 (= (Exists!2862 lambda!312289) (Exists!2862 lambda!312291))))

(declare-fun lt!2287681 () Unit!156580)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!563 (Regex!15762 List!63585) Unit!156580)

(assert (=> b!5754078 (= lt!2287681 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!563 (reg!16091 (regOne!32036 r!7292)) Nil!63461))))

(assert (=> b!5754078 (= (Exists!2862 lambda!312289) (Exists!2862 lambda!312290))))

(declare-fun lt!2287706 () Unit!156580)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1491 (Regex!15762 Regex!15762 List!63585) Unit!156580)

(assert (=> b!5754078 (= lt!2287706 (lemmaExistCutMatchRandMatchRSpecEquivalent!1491 (reg!16091 (regOne!32036 r!7292)) lt!2287677 Nil!63461))))

(declare-datatypes ((tuple2!65718 0))(
  ( (tuple2!65719 (_1!36162 List!63585) (_2!36162 List!63585)) )
))
(declare-datatypes ((Option!15771 0))(
  ( (None!15770) (Some!15770 (v!51827 tuple2!65718)) )
))
(declare-fun isDefined!12474 (Option!15771) Bool)

(declare-fun findConcatSeparation!2185 (Regex!15762 Regex!15762 List!63585 List!63585 List!63585) Option!15771)

(assert (=> b!5754078 (= (isDefined!12474 (findConcatSeparation!2185 (reg!16091 (regOne!32036 r!7292)) lt!2287677 Nil!63461 Nil!63461 Nil!63461)) (Exists!2862 lambda!312289))))

(declare-fun lt!2287694 () Unit!156580)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1949 (Regex!15762 Regex!15762 List!63585) Unit!156580)

(assert (=> b!5754078 (= lt!2287694 (lemmaFindConcatSeparationEquivalentToExists!1949 (reg!16091 (regOne!32036 r!7292)) lt!2287677 Nil!63461))))

(declare-fun matchRSpec!2865 (Regex!15762 List!63585) Bool)

(assert (=> b!5754078 (= (matchR!7947 lt!2287677 Nil!63461) (matchRSpec!2865 lt!2287677 Nil!63461))))

(declare-fun lt!2287700 () Unit!156580)

(declare-fun mainMatchTheorem!2865 (Regex!15762 List!63585) Unit!156580)

(assert (=> b!5754078 (= lt!2287700 (mainMatchTheorem!2865 lt!2287677 Nil!63461))))

(declare-fun b!5754079 () Bool)

(declare-fun res!2429182 () Bool)

(assert (=> b!5754079 (=> res!2429182 e!3536238)))

(assert (=> b!5754079 (= res!2429182 (not (matchZipper!1900 z!1189 s!2326)))))

(declare-fun b!5754080 () Bool)

(declare-fun tp!1590223 () Bool)

(assert (=> b!5754080 (= e!3536229 tp!1590223)))

(declare-fun b!5754081 () Bool)

(declare-fun e!3536230 () Bool)

(assert (=> b!5754081 (= e!3536246 e!3536230)))

(declare-fun res!2429191 () Bool)

(assert (=> b!5754081 (=> res!2429191 e!3536230)))

(declare-fun lt!2287704 () (Set Context!10292))

(assert (=> b!5754081 (= res!2429191 (not (= lt!2287696 (derivationStepZipper!1845 lt!2287704 (h!69909 s!2326)))))))

(assert (=> b!5754081 (= (flatMap!1375 lt!2287704 lambda!312288) (derivationStepZipperUp!1030 lt!2287720 (h!69909 s!2326)))))

(declare-fun lt!2287691 () Unit!156580)

(assert (=> b!5754081 (= lt!2287691 (lemmaFlatMapOnSingletonSet!907 lt!2287704 lt!2287720 lambda!312288))))

(assert (=> b!5754081 (= lt!2287704 (set.insert lt!2287720 (as set.empty (Set Context!10292))))))

(declare-fun b!5754082 () Bool)

(declare-fun res!2429176 () Bool)

(assert (=> b!5754082 (=> res!2429176 e!3536238)))

(assert (=> b!5754082 (= res!2429176 (not lt!2287679))))

(assert (=> b!5754083 (= e!3536247 e!3536224)))

(declare-fun res!2429181 () Bool)

(assert (=> b!5754083 (=> res!2429181 e!3536224)))

(declare-fun lt!2287715 () Bool)

(declare-fun lt!2287709 () Bool)

(assert (=> b!5754083 (= res!2429181 (or (not (= lt!2287709 lt!2287715)) (is-Nil!63461 s!2326)))))

(assert (=> b!5754083 (= (Exists!2862 lambda!312286) (Exists!2862 lambda!312287))))

(declare-fun lt!2287680 () Unit!156580)

(assert (=> b!5754083 (= lt!2287680 (lemmaExistCutMatchRandMatchRSpecEquivalent!1491 (regOne!32036 r!7292) (regTwo!32036 r!7292) s!2326))))

(assert (=> b!5754083 (= lt!2287715 (Exists!2862 lambda!312286))))

(assert (=> b!5754083 (= lt!2287715 (isDefined!12474 (findConcatSeparation!2185 (regOne!32036 r!7292) (regTwo!32036 r!7292) Nil!63461 s!2326 s!2326)))))

(declare-fun lt!2287703 () Unit!156580)

(assert (=> b!5754083 (= lt!2287703 (lemmaFindConcatSeparationEquivalentToExists!1949 (regOne!32036 r!7292) (regTwo!32036 r!7292) s!2326))))

(declare-fun b!5754084 () Bool)

(declare-fun Unit!156583 () Unit!156580)

(assert (=> b!5754084 (= e!3536234 Unit!156583)))

(declare-fun lt!2287705 () Unit!156580)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!787 ((Set Context!10292) (Set Context!10292) List!63585) Unit!156580)

(assert (=> b!5754084 (= lt!2287705 (lemmaZipperConcatMatchesSameAsBothZippers!787 lt!2287707 lt!2287696 (t!376917 s!2326)))))

(declare-fun res!2429195 () Bool)

(assert (=> b!5754084 (= res!2429195 (matchZipper!1900 lt!2287707 (t!376917 s!2326)))))

(assert (=> b!5754084 (=> res!2429195 e!3536244)))

(assert (=> b!5754084 (= (matchZipper!1900 (set.union lt!2287707 lt!2287696) (t!376917 s!2326)) e!3536244)))

(declare-fun b!5754085 () Bool)

(declare-fun e!3536236 () Bool)

(declare-fun tp!1590228 () Bool)

(assert (=> b!5754085 (= e!3536236 tp!1590228)))

(declare-fun b!5754086 () Bool)

(declare-fun tp!1590225 () Bool)

(assert (=> b!5754086 (= e!3536237 tp!1590225)))

(declare-fun b!5754087 () Bool)

(declare-fun res!2429199 () Bool)

(assert (=> b!5754087 (=> res!2429199 e!3536227)))

(declare-fun lt!2287684 () Regex!15762)

(assert (=> b!5754087 (= res!2429199 (not (= lt!2287684 r!7292)))))

(declare-fun setElem!38632 () Context!10292)

(declare-fun tp!1590231 () Bool)

(declare-fun setRes!38632 () Bool)

(declare-fun setNonEmpty!38632 () Bool)

(assert (=> setNonEmpty!38632 (= setRes!38632 (and tp!1590231 (inv!82653 setElem!38632) e!3536236))))

(declare-fun setRest!38632 () (Set Context!10292))

(assert (=> setNonEmpty!38632 (= z!1189 (set.union (set.insert setElem!38632 (as set.empty (Set Context!10292))) setRest!38632))))

(declare-fun b!5754088 () Bool)

(declare-fun res!2429210 () Bool)

(assert (=> b!5754088 (=> res!2429210 e!3536246)))

(assert (=> b!5754088 (= res!2429210 (not (matchZipper!1900 lt!2287696 (t!376917 s!2326))))))

(declare-fun b!5754089 () Bool)

(declare-fun e!3536232 () Bool)

(assert (=> b!5754089 (= e!3536232 e!3536238)))

(declare-fun res!2429177 () Bool)

(assert (=> b!5754089 (=> res!2429177 e!3536238)))

(assert (=> b!5754089 (= res!2429177 lt!2287709)))

(declare-fun lt!2287687 () Regex!15762)

(assert (=> b!5754089 (= (matchR!7947 lt!2287687 s!2326) (matchRSpec!2865 lt!2287687 s!2326))))

(declare-fun lt!2287692 () Unit!156580)

(assert (=> b!5754089 (= lt!2287692 (mainMatchTheorem!2865 lt!2287687 s!2326))))

(declare-fun b!5754090 () Bool)

(declare-fun tp_is_empty!40777 () Bool)

(assert (=> b!5754090 (= e!3536237 tp_is_empty!40777)))

(declare-fun b!5754091 () Bool)

(declare-fun res!2429190 () Bool)

(assert (=> b!5754091 (=> res!2429190 e!3536247)))

(declare-fun generalisedConcat!1377 (List!63586) Regex!15762)

(assert (=> b!5754091 (= res!2429190 (not (= r!7292 (generalisedConcat!1377 (exprs!5646 (h!69911 zl!343))))))))

(declare-fun b!5754092 () Bool)

(assert (=> b!5754092 (= e!3536226 e!3536233)))

(declare-fun res!2429198 () Bool)

(assert (=> b!5754092 (=> res!2429198 e!3536233)))

(assert (=> b!5754092 (= res!2429198 (not (= lt!2287707 lt!2287714)))))

(declare-fun lt!2287713 () Context!10292)

(assert (=> b!5754092 (= lt!2287714 (derivationStepZipperDown!1104 (reg!16091 (regOne!32036 r!7292)) lt!2287713 (h!69909 s!2326)))))

(assert (=> b!5754092 (= lt!2287713 (Context!10293 lt!2287701))))

(assert (=> b!5754092 (= lt!2287701 (Cons!63462 lt!2287677 (t!376918 (exprs!5646 (h!69911 zl!343)))))))

(assert (=> b!5754092 (= lt!2287677 (Star!15762 (reg!16091 (regOne!32036 r!7292))))))

(declare-fun b!5754093 () Bool)

(declare-fun e!3536223 () Bool)

(declare-fun e!3536235 () Bool)

(assert (=> b!5754093 (= e!3536223 e!3536235)))

(declare-fun res!2429200 () Bool)

(assert (=> b!5754093 (=> (not res!2429200) (not e!3536235))))

(assert (=> b!5754093 (= res!2429200 (= r!7292 lt!2287684))))

(declare-fun unfocusZipper!1504 (List!63587) Regex!15762)

(assert (=> b!5754093 (= lt!2287684 (unfocusZipper!1504 zl!343))))

(declare-fun b!5754094 () Bool)

(declare-fun tp!1590227 () Bool)

(declare-fun tp!1590232 () Bool)

(assert (=> b!5754094 (= e!3536237 (and tp!1590227 tp!1590232))))

(declare-fun b!5754095 () Bool)

(declare-fun res!2429192 () Bool)

(assert (=> b!5754095 (=> res!2429192 e!3536227)))

(assert (=> b!5754095 (= res!2429192 (not (= (matchZipper!1900 lt!2287695 s!2326) (matchZipper!1900 lt!2287712 (t!376917 s!2326)))))))

(declare-fun b!5754096 () Bool)

(declare-fun res!2429203 () Bool)

(assert (=> b!5754096 (=> res!2429203 e!3536224)))

(declare-fun isEmpty!35348 (List!63586) Bool)

(assert (=> b!5754096 (= res!2429203 (isEmpty!35348 (t!376918 (exprs!5646 (h!69911 zl!343)))))))

(declare-fun res!2429207 () Bool)

(assert (=> start!591346 (=> (not res!2429207) (not e!3536223))))

(declare-fun validRegex!7498 (Regex!15762) Bool)

(assert (=> start!591346 (= res!2429207 (validRegex!7498 r!7292))))

(assert (=> start!591346 e!3536223))

(assert (=> start!591346 e!3536237))

(declare-fun condSetEmpty!38632 () Bool)

(assert (=> start!591346 (= condSetEmpty!38632 (= z!1189 (as set.empty (Set Context!10292))))))

(assert (=> start!591346 setRes!38632))

(assert (=> start!591346 e!3536242))

(declare-fun e!3536245 () Bool)

(assert (=> start!591346 e!3536245))

(declare-fun b!5754097 () Bool)

(assert (=> b!5754097 (= e!3536235 (not e!3536247))))

(declare-fun res!2429185 () Bool)

(assert (=> b!5754097 (=> res!2429185 e!3536247)))

(assert (=> b!5754097 (= res!2429185 (not (is-Cons!63463 zl!343)))))

(assert (=> b!5754097 (= lt!2287709 (matchRSpec!2865 r!7292 s!2326))))

(assert (=> b!5754097 (= lt!2287709 (matchR!7947 r!7292 s!2326))))

(declare-fun lt!2287683 () Unit!156580)

(assert (=> b!5754097 (= lt!2287683 (mainMatchTheorem!2865 r!7292 s!2326))))

(declare-fun b!5754098 () Bool)

(declare-fun e!3536240 () Bool)

(assert (=> b!5754098 (= e!3536240 e!3536232)))

(declare-fun res!2429206 () Bool)

(assert (=> b!5754098 (=> res!2429206 e!3536232)))

(declare-fun lt!2287716 () Context!10292)

(assert (=> b!5754098 (= res!2429206 (not (= (unfocusZipper!1504 (Cons!63463 lt!2287716 Nil!63463)) (reg!16091 (regOne!32036 r!7292)))))))

(declare-fun lt!2287711 () (Set Context!10292))

(assert (=> b!5754098 (= (flatMap!1375 lt!2287711 lambda!312288) (derivationStepZipperUp!1030 lt!2287713 (h!69909 s!2326)))))

(declare-fun lt!2287719 () Unit!156580)

(assert (=> b!5754098 (= lt!2287719 (lemmaFlatMapOnSingletonSet!907 lt!2287711 lt!2287713 lambda!312288))))

(declare-fun lt!2287678 () (Set Context!10292))

(assert (=> b!5754098 (= (flatMap!1375 lt!2287678 lambda!312288) (derivationStepZipperUp!1030 lt!2287716 (h!69909 s!2326)))))

(declare-fun lt!2287702 () Unit!156580)

(assert (=> b!5754098 (= lt!2287702 (lemmaFlatMapOnSingletonSet!907 lt!2287678 lt!2287716 lambda!312288))))

(declare-fun lt!2287708 () (Set Context!10292))

(assert (=> b!5754098 (= lt!2287708 (derivationStepZipperUp!1030 lt!2287713 (h!69909 s!2326)))))

(declare-fun lt!2287717 () (Set Context!10292))

(assert (=> b!5754098 (= lt!2287717 (derivationStepZipperUp!1030 lt!2287716 (h!69909 s!2326)))))

(assert (=> b!5754098 (= lt!2287711 (set.insert lt!2287713 (as set.empty (Set Context!10292))))))

(assert (=> b!5754098 (= lt!2287678 (set.insert lt!2287716 (as set.empty (Set Context!10292))))))

(assert (=> b!5754098 (= lt!2287716 (Context!10293 (Cons!63462 (reg!16091 (regOne!32036 r!7292)) Nil!63462)))))

(declare-fun b!5754099 () Bool)

(assert (=> b!5754099 (= e!3536225 e!3536239)))

(declare-fun res!2429183 () Bool)

(assert (=> b!5754099 (=> res!2429183 e!3536239)))

(assert (=> b!5754099 (= res!2429183 (not (matchR!7947 (regTwo!32036 r!7292) s!2326)))))

(declare-fun lt!2287698 () Regex!15762)

(assert (=> b!5754099 (= (matchR!7947 lt!2287698 s!2326) (matchZipper!1900 lt!2287704 s!2326))))

(declare-fun lt!2287690 () Unit!156580)

(declare-fun theoremZipperRegexEquiv!674 ((Set Context!10292) List!63587 Regex!15762 List!63585) Unit!156580)

(assert (=> b!5754099 (= lt!2287690 (theoremZipperRegexEquiv!674 lt!2287704 lt!2287693 lt!2287698 s!2326))))

(declare-fun b!5754100 () Bool)

(declare-fun e!3536228 () Bool)

(assert (=> b!5754100 (= e!3536228 e!3536240)))

(declare-fun res!2429180 () Bool)

(assert (=> b!5754100 (=> res!2429180 e!3536240)))

(assert (=> b!5754100 (= res!2429180 (not (= (unfocusZipper!1504 (Cons!63463 lt!2287682 Nil!63463)) lt!2287687)))))

(assert (=> b!5754100 (= lt!2287687 (Concat!24607 (reg!16091 (regOne!32036 r!7292)) lt!2287699))))

(declare-fun b!5754101 () Bool)

(declare-fun res!2429208 () Bool)

(assert (=> b!5754101 (=> res!2429208 e!3536226)))

(assert (=> b!5754101 (= res!2429208 e!3536241)))

(declare-fun res!2429194 () Bool)

(assert (=> b!5754101 (=> (not res!2429194) (not e!3536241))))

(assert (=> b!5754101 (= res!2429194 (is-Concat!24607 (regOne!32036 r!7292)))))

(declare-fun b!5754102 () Bool)

(declare-fun res!2429187 () Bool)

(assert (=> b!5754102 (=> res!2429187 e!3536247)))

(assert (=> b!5754102 (= res!2429187 (or (is-EmptyExpr!15762 r!7292) (is-EmptyLang!15762 r!7292) (is-ElementMatch!15762 r!7292) (is-Union!15762 r!7292) (not (is-Concat!24607 r!7292))))))

(declare-fun setIsEmpty!38632 () Bool)

(assert (=> setIsEmpty!38632 setRes!38632))

(declare-fun b!5754103 () Bool)

(declare-fun res!2429196 () Bool)

(assert (=> b!5754103 (=> res!2429196 e!3536232)))

(assert (=> b!5754103 (= res!2429196 (not (= (unfocusZipper!1504 (Cons!63463 lt!2287713 Nil!63463)) lt!2287699)))))

(declare-fun b!5754104 () Bool)

(declare-fun tp!1590226 () Bool)

(assert (=> b!5754104 (= e!3536245 (and tp_is_empty!40777 tp!1590226))))

(declare-fun b!5754105 () Bool)

(assert (=> b!5754105 (= e!3536230 e!3536243)))

(declare-fun res!2429189 () Bool)

(assert (=> b!5754105 (=> res!2429189 e!3536243)))

(declare-fun regexDepth!239 (Regex!15762) Int)

(assert (=> b!5754105 (= res!2429189 (< (regexDepth!239 r!7292) (regexDepth!239 lt!2287698)))))

(assert (=> b!5754105 (= lt!2287698 (generalisedConcat!1377 (t!376918 (exprs!5646 (h!69911 zl!343)))))))

(declare-fun b!5754106 () Bool)

(declare-fun res!2429204 () Bool)

(assert (=> b!5754106 (=> (not res!2429204) (not e!3536223))))

(declare-fun toList!9546 ((Set Context!10292)) List!63587)

(assert (=> b!5754106 (= res!2429204 (= (toList!9546 z!1189) zl!343))))

(declare-fun b!5754107 () Bool)

(assert (=> b!5754107 (= e!3536227 e!3536228)))

(declare-fun res!2429205 () Bool)

(assert (=> b!5754107 (=> res!2429205 e!3536228)))

(assert (=> b!5754107 (= res!2429205 (not (= r!7292 lt!2287699)))))

(assert (=> b!5754107 (= lt!2287699 (Concat!24607 lt!2287677 (regTwo!32036 r!7292)))))

(declare-fun b!5754108 () Bool)

(declare-fun res!2429178 () Bool)

(assert (=> b!5754108 (=> res!2429178 e!3536247)))

(assert (=> b!5754108 (= res!2429178 (not (is-Cons!63462 (exprs!5646 (h!69911 zl!343)))))))

(declare-fun b!5754109 () Bool)

(declare-fun res!2429193 () Bool)

(assert (=> b!5754109 (=> res!2429193 e!3536246)))

(assert (=> b!5754109 (= res!2429193 lt!2287685)))

(declare-fun b!5754110 () Bool)

(declare-fun res!2429184 () Bool)

(assert (=> b!5754110 (=> res!2429184 e!3536247)))

(declare-fun generalisedUnion!1625 (List!63586) Regex!15762)

(declare-fun unfocusZipperList!1190 (List!63587) List!63586)

(assert (=> b!5754110 (= res!2429184 (not (= r!7292 (generalisedUnion!1625 (unfocusZipperList!1190 zl!343)))))))

(assert (= (and start!591346 res!2429207) b!5754106))

(assert (= (and b!5754106 res!2429204) b!5754093))

(assert (= (and b!5754093 res!2429200) b!5754097))

(assert (= (and b!5754097 (not res!2429185)) b!5754068))

(assert (= (and b!5754068 (not res!2429202)) b!5754091))

(assert (= (and b!5754091 (not res!2429190)) b!5754108))

(assert (= (and b!5754108 (not res!2429178)) b!5754110))

(assert (= (and b!5754110 (not res!2429184)) b!5754102))

(assert (= (and b!5754102 (not res!2429187)) b!5754083))

(assert (= (and b!5754083 (not res!2429181)) b!5754096))

(assert (= (and b!5754096 (not res!2429203)) b!5754066))

(assert (= (and b!5754066 c!1016689) b!5754084))

(assert (= (and b!5754066 (not c!1016689)) b!5754067))

(assert (= (and b!5754084 (not res!2429195)) b!5754072))

(assert (= (and b!5754066 (not res!2429197)) b!5754101))

(assert (= (and b!5754101 res!2429194) b!5754073))

(assert (= (and b!5754101 (not res!2429208)) b!5754070))

(assert (= (and b!5754070 (not res!2429179)) b!5754092))

(assert (= (and b!5754092 (not res!2429198)) b!5754071))

(assert (= (and b!5754071 (not res!2429201)) b!5754095))

(assert (= (and b!5754095 (not res!2429192)) b!5754087))

(assert (= (and b!5754087 (not res!2429199)) b!5754107))

(assert (= (and b!5754107 (not res!2429205)) b!5754100))

(assert (= (and b!5754100 (not res!2429180)) b!5754098))

(assert (= (and b!5754098 (not res!2429206)) b!5754103))

(assert (= (and b!5754103 (not res!2429196)) b!5754089))

(assert (= (and b!5754089 (not res!2429177)) b!5754079))

(assert (= (and b!5754079 (not res!2429182)) b!5754082))

(assert (= (and b!5754082 (not res!2429176)) b!5754074))

(assert (= (and b!5754074 res!2429209) b!5754077))

(assert (= (and b!5754074 (not res!2429188)) b!5754109))

(assert (= (and b!5754109 (not res!2429193)) b!5754088))

(assert (= (and b!5754088 (not res!2429210)) b!5754081))

(assert (= (and b!5754081 (not res!2429191)) b!5754105))

(assert (= (and b!5754105 (not res!2429189)) b!5754076))

(assert (= (and b!5754076 (not res!2429186)) b!5754099))

(assert (= (and b!5754099 (not res!2429183)) b!5754078))

(assert (= (and start!591346 (is-ElementMatch!15762 r!7292)) b!5754090))

(assert (= (and start!591346 (is-Concat!24607 r!7292)) b!5754094))

(assert (= (and start!591346 (is-Star!15762 r!7292)) b!5754086))

(assert (= (and start!591346 (is-Union!15762 r!7292)) b!5754075))

(assert (= (and start!591346 condSetEmpty!38632) setIsEmpty!38632))

(assert (= (and start!591346 (not condSetEmpty!38632)) setNonEmpty!38632))

(assert (= setNonEmpty!38632 b!5754085))

(assert (= b!5754069 b!5754080))

(assert (= (and start!591346 (is-Cons!63463 zl!343)) b!5754069))

(assert (= (and start!591346 (is-Cons!63461 s!2326)) b!5754104))

(declare-fun m!6703598 () Bool)

(assert (=> b!5754103 m!6703598))

(declare-fun m!6703600 () Bool)

(assert (=> setNonEmpty!38632 m!6703600))

(declare-fun m!6703602 () Bool)

(assert (=> b!5754096 m!6703602))

(declare-fun m!6703604 () Bool)

(assert (=> b!5754076 m!6703604))

(declare-fun m!6703606 () Bool)

(assert (=> b!5754076 m!6703606))

(declare-fun m!6703608 () Bool)

(assert (=> b!5754091 m!6703608))

(declare-fun m!6703610 () Bool)

(assert (=> b!5754098 m!6703610))

(declare-fun m!6703612 () Bool)

(assert (=> b!5754098 m!6703612))

(declare-fun m!6703614 () Bool)

(assert (=> b!5754098 m!6703614))

(declare-fun m!6703616 () Bool)

(assert (=> b!5754098 m!6703616))

(declare-fun m!6703618 () Bool)

(assert (=> b!5754098 m!6703618))

(declare-fun m!6703620 () Bool)

(assert (=> b!5754098 m!6703620))

(declare-fun m!6703622 () Bool)

(assert (=> b!5754098 m!6703622))

(declare-fun m!6703624 () Bool)

(assert (=> b!5754098 m!6703624))

(declare-fun m!6703626 () Bool)

(assert (=> b!5754098 m!6703626))

(declare-fun m!6703628 () Bool)

(assert (=> b!5754099 m!6703628))

(declare-fun m!6703630 () Bool)

(assert (=> b!5754099 m!6703630))

(declare-fun m!6703632 () Bool)

(assert (=> b!5754099 m!6703632))

(declare-fun m!6703634 () Bool)

(assert (=> b!5754099 m!6703634))

(declare-fun m!6703636 () Bool)

(assert (=> b!5754097 m!6703636))

(declare-fun m!6703638 () Bool)

(assert (=> b!5754097 m!6703638))

(declare-fun m!6703640 () Bool)

(assert (=> b!5754097 m!6703640))

(declare-fun m!6703642 () Bool)

(assert (=> b!5754084 m!6703642))

(declare-fun m!6703644 () Bool)

(assert (=> b!5754084 m!6703644))

(declare-fun m!6703646 () Bool)

(assert (=> b!5754084 m!6703646))

(declare-fun m!6703648 () Bool)

(assert (=> b!5754069 m!6703648))

(declare-fun m!6703650 () Bool)

(assert (=> b!5754077 m!6703650))

(declare-fun m!6703652 () Bool)

(assert (=> b!5754081 m!6703652))

(declare-fun m!6703654 () Bool)

(assert (=> b!5754081 m!6703654))

(declare-fun m!6703656 () Bool)

(assert (=> b!5754081 m!6703656))

(declare-fun m!6703658 () Bool)

(assert (=> b!5754081 m!6703658))

(declare-fun m!6703660 () Bool)

(assert (=> b!5754081 m!6703660))

(declare-fun m!6703662 () Bool)

(assert (=> b!5754110 m!6703662))

(assert (=> b!5754110 m!6703662))

(declare-fun m!6703664 () Bool)

(assert (=> b!5754110 m!6703664))

(declare-fun m!6703666 () Bool)

(assert (=> b!5754066 m!6703666))

(declare-fun m!6703668 () Bool)

(assert (=> b!5754066 m!6703668))

(declare-fun m!6703670 () Bool)

(assert (=> b!5754066 m!6703670))

(declare-fun m!6703672 () Bool)

(assert (=> b!5754066 m!6703672))

(declare-fun m!6703674 () Bool)

(assert (=> b!5754066 m!6703674))

(declare-fun m!6703676 () Bool)

(assert (=> b!5754066 m!6703676))

(assert (=> b!5754066 m!6703660))

(declare-fun m!6703678 () Bool)

(assert (=> b!5754079 m!6703678))

(declare-fun m!6703680 () Bool)

(assert (=> start!591346 m!6703680))

(declare-fun m!6703682 () Bool)

(assert (=> b!5754071 m!6703682))

(declare-fun m!6703684 () Bool)

(assert (=> b!5754071 m!6703684))

(declare-fun m!6703686 () Bool)

(assert (=> b!5754071 m!6703686))

(declare-fun m!6703688 () Bool)

(assert (=> b!5754071 m!6703688))

(declare-fun m!6703690 () Bool)

(assert (=> b!5754071 m!6703690))

(assert (=> b!5754072 m!6703650))

(declare-fun m!6703692 () Bool)

(assert (=> b!5754093 m!6703692))

(declare-fun m!6703694 () Bool)

(assert (=> b!5754092 m!6703694))

(declare-fun m!6703696 () Bool)

(assert (=> b!5754089 m!6703696))

(declare-fun m!6703698 () Bool)

(assert (=> b!5754089 m!6703698))

(declare-fun m!6703700 () Bool)

(assert (=> b!5754089 m!6703700))

(assert (=> b!5754074 m!6703644))

(declare-fun m!6703702 () Bool)

(assert (=> b!5754078 m!6703702))

(declare-fun m!6703704 () Bool)

(assert (=> b!5754078 m!6703704))

(declare-fun m!6703706 () Bool)

(assert (=> b!5754078 m!6703706))

(declare-fun m!6703708 () Bool)

(assert (=> b!5754078 m!6703708))

(assert (=> b!5754078 m!6703702))

(declare-fun m!6703710 () Bool)

(assert (=> b!5754078 m!6703710))

(declare-fun m!6703712 () Bool)

(assert (=> b!5754078 m!6703712))

(declare-fun m!6703714 () Bool)

(assert (=> b!5754078 m!6703714))

(declare-fun m!6703716 () Bool)

(assert (=> b!5754078 m!6703716))

(declare-fun m!6703718 () Bool)

(assert (=> b!5754078 m!6703718))

(declare-fun m!6703720 () Bool)

(assert (=> b!5754078 m!6703720))

(declare-fun m!6703722 () Bool)

(assert (=> b!5754078 m!6703722))

(declare-fun m!6703724 () Bool)

(assert (=> b!5754078 m!6703724))

(assert (=> b!5754078 m!6703712))

(declare-fun m!6703726 () Bool)

(assert (=> b!5754078 m!6703726))

(declare-fun m!6703728 () Bool)

(assert (=> b!5754078 m!6703728))

(assert (=> b!5754078 m!6703708))

(assert (=> b!5754078 m!6703708))

(declare-fun m!6703730 () Bool)

(assert (=> b!5754095 m!6703730))

(declare-fun m!6703732 () Bool)

(assert (=> b!5754095 m!6703732))

(declare-fun m!6703734 () Bool)

(assert (=> b!5754068 m!6703734))

(declare-fun m!6703736 () Bool)

(assert (=> b!5754100 m!6703736))

(declare-fun m!6703738 () Bool)

(assert (=> b!5754105 m!6703738))

(declare-fun m!6703740 () Bool)

(assert (=> b!5754105 m!6703740))

(declare-fun m!6703742 () Bool)

(assert (=> b!5754105 m!6703742))

(assert (=> b!5754088 m!6703650))

(declare-fun m!6703744 () Bool)

(assert (=> b!5754106 m!6703744))

(declare-fun m!6703746 () Bool)

(assert (=> b!5754073 m!6703746))

(declare-fun m!6703748 () Bool)

(assert (=> b!5754083 m!6703748))

(declare-fun m!6703750 () Bool)

(assert (=> b!5754083 m!6703750))

(declare-fun m!6703752 () Bool)

(assert (=> b!5754083 m!6703752))

(assert (=> b!5754083 m!6703748))

(declare-fun m!6703754 () Bool)

(assert (=> b!5754083 m!6703754))

(declare-fun m!6703756 () Bool)

(assert (=> b!5754083 m!6703756))

(assert (=> b!5754083 m!6703750))

(declare-fun m!6703758 () Bool)

(assert (=> b!5754083 m!6703758))

(push 1)

(assert (not b!5754089))

(assert (not b!5754094))

(assert (not start!591346))

(assert (not b!5754081))

(assert (not b!5754073))

(assert (not b!5754074))

(assert (not b!5754076))

(assert (not b!5754097))

(assert (not b!5754071))

(assert (not b!5754078))

(assert (not b!5754086))

(assert (not b!5754106))

(assert (not b!5754088))

(assert (not b!5754104))

(assert (not setNonEmpty!38632))

(assert (not b!5754093))

(assert (not b!5754091))

(assert (not b!5754066))

(assert (not b!5754083))

(assert (not b!5754084))

(assert tp_is_empty!40777)

(assert (not b!5754079))

(assert (not b!5754085))

(assert (not b!5754077))

(assert (not b!5754095))

(assert (not b!5754068))

(assert (not b!5754100))

(assert (not b!5754072))

(assert (not b!5754103))

(assert (not b!5754105))

(assert (not b!5754096))

(assert (not b!5754092))

(assert (not b!5754099))

(assert (not b!5754080))

(assert (not b!5754110))

(assert (not b!5754075))

(assert (not b!5754069))

(assert (not b!5754098))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1813497 () Bool)

(declare-fun nullableFct!1839 (Regex!15762) Bool)

(assert (=> d!1813497 (= (nullable!5794 (regOne!32036 (regOne!32036 r!7292))) (nullableFct!1839 (regOne!32036 (regOne!32036 r!7292))))))

(declare-fun bs!1348381 () Bool)

(assert (= bs!1348381 d!1813497))

(declare-fun m!6703922 () Bool)

(assert (=> bs!1348381 m!6703922))

(assert (=> b!5754073 d!1813497))

(declare-fun d!1813499 () Bool)

(declare-fun lt!2287855 () Regex!15762)

(assert (=> d!1813499 (validRegex!7498 lt!2287855)))

(assert (=> d!1813499 (= lt!2287855 (generalisedUnion!1625 (unfocusZipperList!1190 zl!343)))))

(assert (=> d!1813499 (= (unfocusZipper!1504 zl!343) lt!2287855)))

(declare-fun bs!1348382 () Bool)

(assert (= bs!1348382 d!1813499))

(declare-fun m!6703924 () Bool)

(assert (=> bs!1348382 m!6703924))

(assert (=> bs!1348382 m!6703662))

(assert (=> bs!1348382 m!6703662))

(assert (=> bs!1348382 m!6703664))

(assert (=> b!5754093 d!1813499))

(declare-fun d!1813501 () Bool)

(declare-fun c!1016708 () Bool)

(declare-fun isEmpty!35351 (List!63585) Bool)

(assert (=> d!1813501 (= c!1016708 (isEmpty!35351 (t!376917 s!2326)))))

(declare-fun e!3536341 () Bool)

(assert (=> d!1813501 (= (matchZipper!1900 lt!2287696 (t!376917 s!2326)) e!3536341)))

(declare-fun b!5754296 () Bool)

(declare-fun nullableZipper!1693 ((Set Context!10292)) Bool)

(assert (=> b!5754296 (= e!3536341 (nullableZipper!1693 lt!2287696))))

(declare-fun b!5754297 () Bool)

(declare-fun head!12168 (List!63585) C!31794)

(declare-fun tail!11263 (List!63585) List!63585)

(assert (=> b!5754297 (= e!3536341 (matchZipper!1900 (derivationStepZipper!1845 lt!2287696 (head!12168 (t!376917 s!2326))) (tail!11263 (t!376917 s!2326))))))

(assert (= (and d!1813501 c!1016708) b!5754296))

(assert (= (and d!1813501 (not c!1016708)) b!5754297))

(declare-fun m!6703926 () Bool)

(assert (=> d!1813501 m!6703926))

(declare-fun m!6703928 () Bool)

(assert (=> b!5754296 m!6703928))

(declare-fun m!6703930 () Bool)

(assert (=> b!5754297 m!6703930))

(assert (=> b!5754297 m!6703930))

(declare-fun m!6703932 () Bool)

(assert (=> b!5754297 m!6703932))

(declare-fun m!6703934 () Bool)

(assert (=> b!5754297 m!6703934))

(assert (=> b!5754297 m!6703932))

(assert (=> b!5754297 m!6703934))

(declare-fun m!6703936 () Bool)

(assert (=> b!5754297 m!6703936))

(assert (=> b!5754072 d!1813501))

(declare-fun b!5754320 () Bool)

(declare-fun e!3536357 () (Set Context!10292))

(assert (=> b!5754320 (= e!3536357 (set.insert lt!2287713 (as set.empty (Set Context!10292))))))

(declare-fun b!5754321 () Bool)

(declare-fun e!3536358 () (Set Context!10292))

(assert (=> b!5754321 (= e!3536358 (as set.empty (Set Context!10292)))))

(declare-fun call!441357 () List!63586)

(declare-fun c!1016722 () Bool)

(declare-fun c!1016720 () Bool)

(declare-fun bm!441348 () Bool)

(declare-fun call!441355 () (Set Context!10292))

(declare-fun c!1016723 () Bool)

(assert (=> bm!441348 (= call!441355 (derivationStepZipperDown!1104 (ite c!1016720 (regTwo!32037 (reg!16091 (regOne!32036 r!7292))) (ite c!1016722 (regTwo!32036 (reg!16091 (regOne!32036 r!7292))) (ite c!1016723 (regOne!32036 (reg!16091 (regOne!32036 r!7292))) (reg!16091 (reg!16091 (regOne!32036 r!7292)))))) (ite (or c!1016720 c!1016722) lt!2287713 (Context!10293 call!441357)) (h!69909 s!2326)))))

(declare-fun d!1813503 () Bool)

(declare-fun c!1016719 () Bool)

(assert (=> d!1813503 (= c!1016719 (and (is-ElementMatch!15762 (reg!16091 (regOne!32036 r!7292))) (= (c!1016690 (reg!16091 (regOne!32036 r!7292))) (h!69909 s!2326))))))

(assert (=> d!1813503 (= (derivationStepZipperDown!1104 (reg!16091 (regOne!32036 r!7292)) lt!2287713 (h!69909 s!2326)) e!3536357)))

(declare-fun b!5754322 () Bool)

(declare-fun e!3536354 () Bool)

(assert (=> b!5754322 (= c!1016722 e!3536354)))

(declare-fun res!2429352 () Bool)

(assert (=> b!5754322 (=> (not res!2429352) (not e!3536354))))

(assert (=> b!5754322 (= res!2429352 (is-Concat!24607 (reg!16091 (regOne!32036 r!7292))))))

(declare-fun e!3536355 () (Set Context!10292))

(declare-fun e!3536359 () (Set Context!10292))

(assert (=> b!5754322 (= e!3536355 e!3536359)))

(declare-fun b!5754323 () Bool)

(declare-fun c!1016721 () Bool)

(assert (=> b!5754323 (= c!1016721 (is-Star!15762 (reg!16091 (regOne!32036 r!7292))))))

(declare-fun e!3536356 () (Set Context!10292))

(assert (=> b!5754323 (= e!3536356 e!3536358)))

(declare-fun b!5754324 () Bool)

(assert (=> b!5754324 (= e!3536357 e!3536355)))

(assert (=> b!5754324 (= c!1016720 (is-Union!15762 (reg!16091 (regOne!32036 r!7292))))))

(declare-fun bm!441349 () Bool)

(declare-fun call!441356 () (Set Context!10292))

(assert (=> bm!441349 (= call!441356 call!441355)))

(declare-fun b!5754325 () Bool)

(assert (=> b!5754325 (= e!3536359 e!3536356)))

(assert (=> b!5754325 (= c!1016723 (is-Concat!24607 (reg!16091 (regOne!32036 r!7292))))))

(declare-fun bm!441350 () Bool)

(declare-fun call!441354 () List!63586)

(assert (=> bm!441350 (= call!441357 call!441354)))

(declare-fun b!5754326 () Bool)

(declare-fun call!441358 () (Set Context!10292))

(assert (=> b!5754326 (= e!3536359 (set.union call!441358 call!441356))))

(declare-fun b!5754327 () Bool)

(assert (=> b!5754327 (= e!3536354 (nullable!5794 (regOne!32036 (reg!16091 (regOne!32036 r!7292)))))))

(declare-fun bm!441351 () Bool)

(assert (=> bm!441351 (= call!441358 (derivationStepZipperDown!1104 (ite c!1016720 (regOne!32037 (reg!16091 (regOne!32036 r!7292))) (regOne!32036 (reg!16091 (regOne!32036 r!7292)))) (ite c!1016720 lt!2287713 (Context!10293 call!441354)) (h!69909 s!2326)))))

(declare-fun b!5754328 () Bool)

(declare-fun call!441353 () (Set Context!10292))

(assert (=> b!5754328 (= e!3536358 call!441353)))

(declare-fun b!5754329 () Bool)

(assert (=> b!5754329 (= e!3536356 call!441353)))

(declare-fun bm!441352 () Bool)

(assert (=> bm!441352 (= call!441353 call!441356)))

(declare-fun b!5754330 () Bool)

(assert (=> b!5754330 (= e!3536355 (set.union call!441358 call!441355))))

(declare-fun bm!441353 () Bool)

(declare-fun $colon$colon!1761 (List!63586 Regex!15762) List!63586)

(assert (=> bm!441353 (= call!441354 ($colon$colon!1761 (exprs!5646 lt!2287713) (ite (or c!1016722 c!1016723) (regTwo!32036 (reg!16091 (regOne!32036 r!7292))) (reg!16091 (regOne!32036 r!7292)))))))

(assert (= (and d!1813503 c!1016719) b!5754320))

(assert (= (and d!1813503 (not c!1016719)) b!5754324))

(assert (= (and b!5754324 c!1016720) b!5754330))

(assert (= (and b!5754324 (not c!1016720)) b!5754322))

(assert (= (and b!5754322 res!2429352) b!5754327))

(assert (= (and b!5754322 c!1016722) b!5754326))

(assert (= (and b!5754322 (not c!1016722)) b!5754325))

(assert (= (and b!5754325 c!1016723) b!5754329))

(assert (= (and b!5754325 (not c!1016723)) b!5754323))

(assert (= (and b!5754323 c!1016721) b!5754328))

(assert (= (and b!5754323 (not c!1016721)) b!5754321))

(assert (= (or b!5754329 b!5754328) bm!441350))

(assert (= (or b!5754329 b!5754328) bm!441352))

(assert (= (or b!5754326 bm!441350) bm!441353))

(assert (= (or b!5754326 bm!441352) bm!441349))

(assert (= (or b!5754330 bm!441349) bm!441348))

(assert (= (or b!5754330 b!5754326) bm!441351))

(declare-fun m!6703938 () Bool)

(assert (=> bm!441353 m!6703938))

(assert (=> b!5754320 m!6703614))

(declare-fun m!6703940 () Bool)

(assert (=> bm!441351 m!6703940))

(declare-fun m!6703942 () Bool)

(assert (=> bm!441348 m!6703942))

(declare-fun m!6703944 () Bool)

(assert (=> b!5754327 m!6703944))

(assert (=> b!5754092 d!1813503))

(declare-fun d!1813505 () Bool)

(declare-fun choose!43620 ((Set Context!10292) Int) (Set Context!10292))

(assert (=> d!1813505 (= (flatMap!1375 lt!2287695 lambda!312288) (choose!43620 lt!2287695 lambda!312288))))

(declare-fun bs!1348383 () Bool)

(assert (= bs!1348383 d!1813505))

(declare-fun m!6703946 () Bool)

(assert (=> bs!1348383 m!6703946))

(assert (=> b!5754071 d!1813505))

(declare-fun d!1813507 () Bool)

(declare-fun c!1016729 () Bool)

(declare-fun e!3536367 () Bool)

(assert (=> d!1813507 (= c!1016729 e!3536367)))

(declare-fun res!2429355 () Bool)

(assert (=> d!1813507 (=> (not res!2429355) (not e!3536367))))

(assert (=> d!1813507 (= res!2429355 (is-Cons!63462 (exprs!5646 lt!2287682)))))

(declare-fun e!3536366 () (Set Context!10292))

(assert (=> d!1813507 (= (derivationStepZipperUp!1030 lt!2287682 (h!69909 s!2326)) e!3536366)))

(declare-fun b!5754341 () Bool)

(assert (=> b!5754341 (= e!3536367 (nullable!5794 (h!69910 (exprs!5646 lt!2287682))))))

(declare-fun b!5754342 () Bool)

(declare-fun e!3536368 () (Set Context!10292))

(declare-fun call!441361 () (Set Context!10292))

(assert (=> b!5754342 (= e!3536368 call!441361)))

(declare-fun bm!441356 () Bool)

(assert (=> bm!441356 (= call!441361 (derivationStepZipperDown!1104 (h!69910 (exprs!5646 lt!2287682)) (Context!10293 (t!376918 (exprs!5646 lt!2287682))) (h!69909 s!2326)))))

(declare-fun b!5754343 () Bool)

(assert (=> b!5754343 (= e!3536368 (as set.empty (Set Context!10292)))))

(declare-fun b!5754344 () Bool)

(assert (=> b!5754344 (= e!3536366 (set.union call!441361 (derivationStepZipperUp!1030 (Context!10293 (t!376918 (exprs!5646 lt!2287682))) (h!69909 s!2326))))))

(declare-fun b!5754345 () Bool)

(assert (=> b!5754345 (= e!3536366 e!3536368)))

(declare-fun c!1016728 () Bool)

(assert (=> b!5754345 (= c!1016728 (is-Cons!63462 (exprs!5646 lt!2287682)))))

(assert (= (and d!1813507 res!2429355) b!5754341))

(assert (= (and d!1813507 c!1016729) b!5754344))

(assert (= (and d!1813507 (not c!1016729)) b!5754345))

(assert (= (and b!5754345 c!1016728) b!5754342))

(assert (= (and b!5754345 (not c!1016728)) b!5754343))

(assert (= (or b!5754344 b!5754342) bm!441356))

(declare-fun m!6703948 () Bool)

(assert (=> b!5754341 m!6703948))

(declare-fun m!6703950 () Bool)

(assert (=> bm!441356 m!6703950))

(declare-fun m!6703952 () Bool)

(assert (=> b!5754344 m!6703952))

(assert (=> b!5754071 d!1813507))

(declare-fun d!1813509 () Bool)

(declare-fun dynLambda!24846 (Int Context!10292) (Set Context!10292))

(assert (=> d!1813509 (= (flatMap!1375 lt!2287695 lambda!312288) (dynLambda!24846 lambda!312288 lt!2287682))))

(declare-fun lt!2287858 () Unit!156580)

(declare-fun choose!43621 ((Set Context!10292) Context!10292 Int) Unit!156580)

(assert (=> d!1813509 (= lt!2287858 (choose!43621 lt!2287695 lt!2287682 lambda!312288))))

(assert (=> d!1813509 (= lt!2287695 (set.insert lt!2287682 (as set.empty (Set Context!10292))))))

(assert (=> d!1813509 (= (lemmaFlatMapOnSingletonSet!907 lt!2287695 lt!2287682 lambda!312288) lt!2287858)))

(declare-fun b_lambda!217383 () Bool)

(assert (=> (not b_lambda!217383) (not d!1813509)))

(declare-fun bs!1348384 () Bool)

(assert (= bs!1348384 d!1813509))

(assert (=> bs!1348384 m!6703684))

(declare-fun m!6703954 () Bool)

(assert (=> bs!1348384 m!6703954))

(declare-fun m!6703956 () Bool)

(assert (=> bs!1348384 m!6703956))

(assert (=> bs!1348384 m!6703682))

(assert (=> b!5754071 d!1813509))

(declare-fun bs!1348385 () Bool)

(declare-fun d!1813511 () Bool)

(assert (= bs!1348385 (and d!1813511 b!5754066)))

(declare-fun lambda!312326 () Int)

(assert (=> bs!1348385 (= lambda!312326 lambda!312288)))

(assert (=> d!1813511 true))

(assert (=> d!1813511 (= (derivationStepZipper!1845 lt!2287695 (h!69909 s!2326)) (flatMap!1375 lt!2287695 lambda!312326))))

(declare-fun bs!1348386 () Bool)

(assert (= bs!1348386 d!1813511))

(declare-fun m!6703958 () Bool)

(assert (=> bs!1348386 m!6703958))

(assert (=> b!5754071 d!1813511))

(declare-fun b!5754368 () Bool)

(declare-fun e!3536386 () Regex!15762)

(assert (=> b!5754368 (= e!3536386 (Concat!24607 (h!69910 (exprs!5646 (h!69911 zl!343))) (generalisedConcat!1377 (t!376918 (exprs!5646 (h!69911 zl!343))))))))

(declare-fun b!5754369 () Bool)

(declare-fun e!3536385 () Bool)

(declare-fun lt!2287861 () Regex!15762)

(declare-fun head!12169 (List!63586) Regex!15762)

(assert (=> b!5754369 (= e!3536385 (= lt!2287861 (head!12169 (exprs!5646 (h!69911 zl!343)))))))

(declare-fun b!5754370 () Bool)

(declare-fun isConcat!775 (Regex!15762) Bool)

(assert (=> b!5754370 (= e!3536385 (isConcat!775 lt!2287861))))

(declare-fun b!5754371 () Bool)

(declare-fun e!3536384 () Bool)

(assert (=> b!5754371 (= e!3536384 (isEmpty!35348 (t!376918 (exprs!5646 (h!69911 zl!343)))))))

(declare-fun b!5754372 () Bool)

(declare-fun e!3536381 () Bool)

(assert (=> b!5754372 (= e!3536381 e!3536385)))

(declare-fun c!1016740 () Bool)

(declare-fun tail!11264 (List!63586) List!63586)

(assert (=> b!5754372 (= c!1016740 (isEmpty!35348 (tail!11264 (exprs!5646 (h!69911 zl!343)))))))

(declare-fun b!5754373 () Bool)

(declare-fun e!3536382 () Regex!15762)

(assert (=> b!5754373 (= e!3536382 (h!69910 (exprs!5646 (h!69911 zl!343))))))

(declare-fun b!5754374 () Bool)

(assert (=> b!5754374 (= e!3536386 EmptyExpr!15762)))

(declare-fun d!1813513 () Bool)

(declare-fun e!3536383 () Bool)

(assert (=> d!1813513 e!3536383))

(declare-fun res!2429361 () Bool)

(assert (=> d!1813513 (=> (not res!2429361) (not e!3536383))))

(assert (=> d!1813513 (= res!2429361 (validRegex!7498 lt!2287861))))

(assert (=> d!1813513 (= lt!2287861 e!3536382)))

(declare-fun c!1016742 () Bool)

(assert (=> d!1813513 (= c!1016742 e!3536384)))

(declare-fun res!2429360 () Bool)

(assert (=> d!1813513 (=> (not res!2429360) (not e!3536384))))

(assert (=> d!1813513 (= res!2429360 (is-Cons!63462 (exprs!5646 (h!69911 zl!343))))))

(declare-fun lambda!312329 () Int)

(declare-fun forall!14883 (List!63586 Int) Bool)

(assert (=> d!1813513 (forall!14883 (exprs!5646 (h!69911 zl!343)) lambda!312329)))

(assert (=> d!1813513 (= (generalisedConcat!1377 (exprs!5646 (h!69911 zl!343))) lt!2287861)))

(declare-fun b!5754375 () Bool)

(assert (=> b!5754375 (= e!3536383 e!3536381)))

(declare-fun c!1016741 () Bool)

(assert (=> b!5754375 (= c!1016741 (isEmpty!35348 (exprs!5646 (h!69911 zl!343))))))

(declare-fun b!5754376 () Bool)

(assert (=> b!5754376 (= e!3536382 e!3536386)))

(declare-fun c!1016743 () Bool)

(assert (=> b!5754376 (= c!1016743 (is-Cons!63462 (exprs!5646 (h!69911 zl!343))))))

(declare-fun b!5754377 () Bool)

(declare-fun isEmptyExpr!1252 (Regex!15762) Bool)

(assert (=> b!5754377 (= e!3536381 (isEmptyExpr!1252 lt!2287861))))

(assert (= (and d!1813513 res!2429360) b!5754371))

(assert (= (and d!1813513 c!1016742) b!5754373))

(assert (= (and d!1813513 (not c!1016742)) b!5754376))

(assert (= (and b!5754376 c!1016743) b!5754368))

(assert (= (and b!5754376 (not c!1016743)) b!5754374))

(assert (= (and d!1813513 res!2429361) b!5754375))

(assert (= (and b!5754375 c!1016741) b!5754377))

(assert (= (and b!5754375 (not c!1016741)) b!5754372))

(assert (= (and b!5754372 c!1016740) b!5754369))

(assert (= (and b!5754372 (not c!1016740)) b!5754370))

(declare-fun m!6703960 () Bool)

(assert (=> d!1813513 m!6703960))

(declare-fun m!6703962 () Bool)

(assert (=> d!1813513 m!6703962))

(declare-fun m!6703964 () Bool)

(assert (=> b!5754375 m!6703964))

(declare-fun m!6703966 () Bool)

(assert (=> b!5754377 m!6703966))

(declare-fun m!6703968 () Bool)

(assert (=> b!5754370 m!6703968))

(declare-fun m!6703970 () Bool)

(assert (=> b!5754372 m!6703970))

(assert (=> b!5754372 m!6703970))

(declare-fun m!6703972 () Bool)

(assert (=> b!5754372 m!6703972))

(assert (=> b!5754368 m!6703742))

(declare-fun m!6703974 () Bool)

(assert (=> b!5754369 m!6703974))

(assert (=> b!5754371 m!6703602))

(assert (=> b!5754091 d!1813513))

(declare-fun bs!1348387 () Bool)

(declare-fun d!1813515 () Bool)

(assert (= bs!1348387 (and d!1813515 d!1813513)))

(declare-fun lambda!312332 () Int)

(assert (=> bs!1348387 (= lambda!312332 lambda!312329)))

(declare-fun b!5754398 () Bool)

(declare-fun e!3536399 () Regex!15762)

(declare-fun e!3536403 () Regex!15762)

(assert (=> b!5754398 (= e!3536399 e!3536403)))

(declare-fun c!1016755 () Bool)

(assert (=> b!5754398 (= c!1016755 (is-Cons!63462 (unfocusZipperList!1190 zl!343)))))

(declare-fun b!5754400 () Bool)

(assert (=> b!5754400 (= e!3536399 (h!69910 (unfocusZipperList!1190 zl!343)))))

(declare-fun b!5754401 () Bool)

(declare-fun e!3536400 () Bool)

(declare-fun lt!2287864 () Regex!15762)

(declare-fun isUnion!692 (Regex!15762) Bool)

(assert (=> b!5754401 (= e!3536400 (isUnion!692 lt!2287864))))

(declare-fun b!5754402 () Bool)

(declare-fun e!3536402 () Bool)

(declare-fun e!3536404 () Bool)

(assert (=> b!5754402 (= e!3536402 e!3536404)))

(declare-fun c!1016754 () Bool)

(assert (=> b!5754402 (= c!1016754 (isEmpty!35348 (unfocusZipperList!1190 zl!343)))))

(declare-fun b!5754403 () Bool)

(assert (=> b!5754403 (= e!3536403 EmptyLang!15762)))

(declare-fun b!5754404 () Bool)

(declare-fun e!3536401 () Bool)

(assert (=> b!5754404 (= e!3536401 (isEmpty!35348 (t!376918 (unfocusZipperList!1190 zl!343))))))

(declare-fun b!5754405 () Bool)

(assert (=> b!5754405 (= e!3536404 e!3536400)))

(declare-fun c!1016753 () Bool)

(assert (=> b!5754405 (= c!1016753 (isEmpty!35348 (tail!11264 (unfocusZipperList!1190 zl!343))))))

(declare-fun b!5754399 () Bool)

(declare-fun isEmptyLang!1262 (Regex!15762) Bool)

(assert (=> b!5754399 (= e!3536404 (isEmptyLang!1262 lt!2287864))))

(assert (=> d!1813515 e!3536402))

(declare-fun res!2429366 () Bool)

(assert (=> d!1813515 (=> (not res!2429366) (not e!3536402))))

(assert (=> d!1813515 (= res!2429366 (validRegex!7498 lt!2287864))))

(assert (=> d!1813515 (= lt!2287864 e!3536399)))

(declare-fun c!1016752 () Bool)

(assert (=> d!1813515 (= c!1016752 e!3536401)))

(declare-fun res!2429367 () Bool)

(assert (=> d!1813515 (=> (not res!2429367) (not e!3536401))))

(assert (=> d!1813515 (= res!2429367 (is-Cons!63462 (unfocusZipperList!1190 zl!343)))))

(assert (=> d!1813515 (forall!14883 (unfocusZipperList!1190 zl!343) lambda!312332)))

(assert (=> d!1813515 (= (generalisedUnion!1625 (unfocusZipperList!1190 zl!343)) lt!2287864)))

(declare-fun b!5754406 () Bool)

(assert (=> b!5754406 (= e!3536400 (= lt!2287864 (head!12169 (unfocusZipperList!1190 zl!343))))))

(declare-fun b!5754407 () Bool)

(assert (=> b!5754407 (= e!3536403 (Union!15762 (h!69910 (unfocusZipperList!1190 zl!343)) (generalisedUnion!1625 (t!376918 (unfocusZipperList!1190 zl!343)))))))

(assert (= (and d!1813515 res!2429367) b!5754404))

(assert (= (and d!1813515 c!1016752) b!5754400))

(assert (= (and d!1813515 (not c!1016752)) b!5754398))

(assert (= (and b!5754398 c!1016755) b!5754407))

(assert (= (and b!5754398 (not c!1016755)) b!5754403))

(assert (= (and d!1813515 res!2429366) b!5754402))

(assert (= (and b!5754402 c!1016754) b!5754399))

(assert (= (and b!5754402 (not c!1016754)) b!5754405))

(assert (= (and b!5754405 c!1016753) b!5754406))

(assert (= (and b!5754405 (not c!1016753)) b!5754401))

(assert (=> b!5754405 m!6703662))

(declare-fun m!6703976 () Bool)

(assert (=> b!5754405 m!6703976))

(assert (=> b!5754405 m!6703976))

(declare-fun m!6703978 () Bool)

(assert (=> b!5754405 m!6703978))

(declare-fun m!6703980 () Bool)

(assert (=> b!5754401 m!6703980))

(declare-fun m!6703982 () Bool)

(assert (=> b!5754399 m!6703982))

(declare-fun m!6703984 () Bool)

(assert (=> b!5754404 m!6703984))

(declare-fun m!6703986 () Bool)

(assert (=> b!5754407 m!6703986))

(assert (=> b!5754406 m!6703662))

(declare-fun m!6703988 () Bool)

(assert (=> b!5754406 m!6703988))

(assert (=> b!5754402 m!6703662))

(declare-fun m!6703990 () Bool)

(assert (=> b!5754402 m!6703990))

(declare-fun m!6703992 () Bool)

(assert (=> d!1813515 m!6703992))

(assert (=> d!1813515 m!6703662))

(declare-fun m!6703994 () Bool)

(assert (=> d!1813515 m!6703994))

(assert (=> b!5754110 d!1813515))

(declare-fun bs!1348388 () Bool)

(declare-fun d!1813517 () Bool)

(assert (= bs!1348388 (and d!1813517 d!1813513)))

(declare-fun lambda!312335 () Int)

(assert (=> bs!1348388 (= lambda!312335 lambda!312329)))

(declare-fun bs!1348389 () Bool)

(assert (= bs!1348389 (and d!1813517 d!1813515)))

(assert (=> bs!1348389 (= lambda!312335 lambda!312332)))

(declare-fun lt!2287867 () List!63586)

(assert (=> d!1813517 (forall!14883 lt!2287867 lambda!312335)))

(declare-fun e!3536407 () List!63586)

(assert (=> d!1813517 (= lt!2287867 e!3536407)))

(declare-fun c!1016758 () Bool)

(assert (=> d!1813517 (= c!1016758 (is-Cons!63463 zl!343))))

(assert (=> d!1813517 (= (unfocusZipperList!1190 zl!343) lt!2287867)))

(declare-fun b!5754412 () Bool)

(assert (=> b!5754412 (= e!3536407 (Cons!63462 (generalisedConcat!1377 (exprs!5646 (h!69911 zl!343))) (unfocusZipperList!1190 (t!376919 zl!343))))))

(declare-fun b!5754413 () Bool)

(assert (=> b!5754413 (= e!3536407 Nil!63462)))

(assert (= (and d!1813517 c!1016758) b!5754412))

(assert (= (and d!1813517 (not c!1016758)) b!5754413))

(declare-fun m!6703996 () Bool)

(assert (=> d!1813517 m!6703996))

(assert (=> b!5754412 m!6703608))

(declare-fun m!6703998 () Bool)

(assert (=> b!5754412 m!6703998))

(assert (=> b!5754110 d!1813517))

(declare-fun bs!1348390 () Bool)

(declare-fun d!1813519 () Bool)

(assert (= bs!1348390 (and d!1813519 d!1813513)))

(declare-fun lambda!312338 () Int)

(assert (=> bs!1348390 (= lambda!312338 lambda!312329)))

(declare-fun bs!1348391 () Bool)

(assert (= bs!1348391 (and d!1813519 d!1813515)))

(assert (=> bs!1348391 (= lambda!312338 lambda!312332)))

(declare-fun bs!1348392 () Bool)

(assert (= bs!1348392 (and d!1813519 d!1813517)))

(assert (=> bs!1348392 (= lambda!312338 lambda!312335)))

(assert (=> d!1813519 (= (inv!82653 (h!69911 zl!343)) (forall!14883 (exprs!5646 (h!69911 zl!343)) lambda!312338))))

(declare-fun bs!1348393 () Bool)

(assert (= bs!1348393 d!1813519))

(declare-fun m!6704000 () Bool)

(assert (=> bs!1348393 m!6704000))

(assert (=> b!5754069 d!1813519))

(declare-fun b!5754442 () Bool)

(declare-fun res!2429391 () Bool)

(declare-fun e!3536425 () Bool)

(assert (=> b!5754442 (=> res!2429391 e!3536425)))

(assert (=> b!5754442 (= res!2429391 (not (is-ElementMatch!15762 lt!2287687)))))

(declare-fun e!3536423 () Bool)

(assert (=> b!5754442 (= e!3536423 e!3536425)))

(declare-fun b!5754443 () Bool)

(declare-fun e!3536428 () Bool)

(assert (=> b!5754443 (= e!3536425 e!3536428)))

(declare-fun res!2429390 () Bool)

(assert (=> b!5754443 (=> (not res!2429390) (not e!3536428))))

(declare-fun lt!2287870 () Bool)

(assert (=> b!5754443 (= res!2429390 (not lt!2287870))))

(declare-fun b!5754444 () Bool)

(declare-fun e!3536427 () Bool)

(assert (=> b!5754444 (= e!3536427 e!3536423)))

(declare-fun c!1016767 () Bool)

(assert (=> b!5754444 (= c!1016767 (is-EmptyLang!15762 lt!2287687))))

(declare-fun d!1813521 () Bool)

(assert (=> d!1813521 e!3536427))

(declare-fun c!1016765 () Bool)

(assert (=> d!1813521 (= c!1016765 (is-EmptyExpr!15762 lt!2287687))))

(declare-fun e!3536422 () Bool)

(assert (=> d!1813521 (= lt!2287870 e!3536422)))

(declare-fun c!1016766 () Bool)

(assert (=> d!1813521 (= c!1016766 (isEmpty!35351 s!2326))))

(assert (=> d!1813521 (validRegex!7498 lt!2287687)))

(assert (=> d!1813521 (= (matchR!7947 lt!2287687 s!2326) lt!2287870)))

(declare-fun b!5754445 () Bool)

(declare-fun derivativeStep!4547 (Regex!15762 C!31794) Regex!15762)

(assert (=> b!5754445 (= e!3536422 (matchR!7947 (derivativeStep!4547 lt!2287687 (head!12168 s!2326)) (tail!11263 s!2326)))))

(declare-fun b!5754446 () Bool)

(declare-fun res!2429385 () Bool)

(declare-fun e!3536426 () Bool)

(assert (=> b!5754446 (=> (not res!2429385) (not e!3536426))))

(declare-fun call!441364 () Bool)

(assert (=> b!5754446 (= res!2429385 (not call!441364))))

(declare-fun b!5754447 () Bool)

(declare-fun res!2429387 () Bool)

(assert (=> b!5754447 (=> res!2429387 e!3536425)))

(assert (=> b!5754447 (= res!2429387 e!3536426)))

(declare-fun res!2429389 () Bool)

(assert (=> b!5754447 (=> (not res!2429389) (not e!3536426))))

(assert (=> b!5754447 (= res!2429389 lt!2287870)))

(declare-fun bm!441359 () Bool)

(assert (=> bm!441359 (= call!441364 (isEmpty!35351 s!2326))))

(declare-fun b!5754448 () Bool)

(assert (=> b!5754448 (= e!3536427 (= lt!2287870 call!441364))))

(declare-fun b!5754449 () Bool)

(declare-fun res!2429388 () Bool)

(declare-fun e!3536424 () Bool)

(assert (=> b!5754449 (=> res!2429388 e!3536424)))

(assert (=> b!5754449 (= res!2429388 (not (isEmpty!35351 (tail!11263 s!2326))))))

(declare-fun b!5754450 () Bool)

(assert (=> b!5754450 (= e!3536428 e!3536424)))

(declare-fun res!2429386 () Bool)

(assert (=> b!5754450 (=> res!2429386 e!3536424)))

(assert (=> b!5754450 (= res!2429386 call!441364)))

(declare-fun b!5754451 () Bool)

(assert (=> b!5754451 (= e!3536422 (nullable!5794 lt!2287687))))

(declare-fun b!5754452 () Bool)

(assert (=> b!5754452 (= e!3536423 (not lt!2287870))))

(declare-fun b!5754453 () Bool)

(assert (=> b!5754453 (= e!3536426 (= (head!12168 s!2326) (c!1016690 lt!2287687)))))

(declare-fun b!5754454 () Bool)

(declare-fun res!2429384 () Bool)

(assert (=> b!5754454 (=> (not res!2429384) (not e!3536426))))

(assert (=> b!5754454 (= res!2429384 (isEmpty!35351 (tail!11263 s!2326)))))

(declare-fun b!5754455 () Bool)

(assert (=> b!5754455 (= e!3536424 (not (= (head!12168 s!2326) (c!1016690 lt!2287687))))))

(assert (= (and d!1813521 c!1016766) b!5754451))

(assert (= (and d!1813521 (not c!1016766)) b!5754445))

(assert (= (and d!1813521 c!1016765) b!5754448))

(assert (= (and d!1813521 (not c!1016765)) b!5754444))

(assert (= (and b!5754444 c!1016767) b!5754452))

(assert (= (and b!5754444 (not c!1016767)) b!5754442))

(assert (= (and b!5754442 (not res!2429391)) b!5754447))

(assert (= (and b!5754447 res!2429389) b!5754446))

(assert (= (and b!5754446 res!2429385) b!5754454))

(assert (= (and b!5754454 res!2429384) b!5754453))

(assert (= (and b!5754447 (not res!2429387)) b!5754443))

(assert (= (and b!5754443 res!2429390) b!5754450))

(assert (= (and b!5754450 (not res!2429386)) b!5754449))

(assert (= (and b!5754449 (not res!2429388)) b!5754455))

(assert (= (or b!5754448 b!5754446 b!5754450) bm!441359))

(declare-fun m!6704002 () Bool)

(assert (=> b!5754445 m!6704002))

(assert (=> b!5754445 m!6704002))

(declare-fun m!6704004 () Bool)

(assert (=> b!5754445 m!6704004))

(declare-fun m!6704006 () Bool)

(assert (=> b!5754445 m!6704006))

(assert (=> b!5754445 m!6704004))

(assert (=> b!5754445 m!6704006))

(declare-fun m!6704008 () Bool)

(assert (=> b!5754445 m!6704008))

(declare-fun m!6704010 () Bool)

(assert (=> bm!441359 m!6704010))

(assert (=> b!5754455 m!6704002))

(assert (=> b!5754454 m!6704006))

(assert (=> b!5754454 m!6704006))

(declare-fun m!6704012 () Bool)

(assert (=> b!5754454 m!6704012))

(declare-fun m!6704014 () Bool)

(assert (=> b!5754451 m!6704014))

(assert (=> b!5754453 m!6704002))

(assert (=> d!1813521 m!6704010))

(declare-fun m!6704016 () Bool)

(assert (=> d!1813521 m!6704016))

(assert (=> b!5754449 m!6704006))

(assert (=> b!5754449 m!6704006))

(assert (=> b!5754449 m!6704012))

(assert (=> b!5754089 d!1813521))

(declare-fun bs!1348394 () Bool)

(declare-fun b!5754494 () Bool)

(assert (= bs!1348394 (and b!5754494 b!5754078)))

(declare-fun lambda!312343 () Int)

(assert (=> bs!1348394 (not (= lambda!312343 lambda!312289))))

(assert (=> bs!1348394 (not (= lambda!312343 lambda!312290))))

(assert (=> bs!1348394 (= (and (= s!2326 Nil!63461) (= (reg!16091 lt!2287687) (reg!16091 (regOne!32036 r!7292))) (= lt!2287687 lt!2287677)) (= lambda!312343 lambda!312291))))

(declare-fun bs!1348395 () Bool)

(assert (= bs!1348395 (and b!5754494 b!5754083)))

(assert (=> bs!1348395 (not (= lambda!312343 lambda!312286))))

(assert (=> bs!1348395 (not (= lambda!312343 lambda!312287))))

(assert (=> b!5754494 true))

(assert (=> b!5754494 true))

(declare-fun bs!1348396 () Bool)

(declare-fun b!5754497 () Bool)

(assert (= bs!1348396 (and b!5754497 b!5754078)))

(declare-fun lambda!312344 () Int)

(assert (=> bs!1348396 (not (= lambda!312344 lambda!312289))))

(assert (=> bs!1348396 (= (and (= s!2326 Nil!63461) (= (regOne!32036 lt!2287687) (reg!16091 (regOne!32036 r!7292))) (= (regTwo!32036 lt!2287687) lt!2287677)) (= lambda!312344 lambda!312290))))

(assert (=> bs!1348396 (not (= lambda!312344 lambda!312291))))

(declare-fun bs!1348397 () Bool)

(assert (= bs!1348397 (and b!5754497 b!5754083)))

(assert (=> bs!1348397 (= (and (= (regOne!32036 lt!2287687) (regOne!32036 r!7292)) (= (regTwo!32036 lt!2287687) (regTwo!32036 r!7292))) (= lambda!312344 lambda!312287))))

(declare-fun bs!1348398 () Bool)

(assert (= bs!1348398 (and b!5754497 b!5754494)))

(assert (=> bs!1348398 (not (= lambda!312344 lambda!312343))))

(assert (=> bs!1348397 (not (= lambda!312344 lambda!312286))))

(assert (=> b!5754497 true))

(assert (=> b!5754497 true))

(declare-fun b!5754488 () Bool)

(declare-fun e!3536453 () Bool)

(assert (=> b!5754488 (= e!3536453 (matchRSpec!2865 (regTwo!32037 lt!2287687) s!2326))))

(declare-fun b!5754489 () Bool)

(declare-fun e!3536448 () Bool)

(assert (=> b!5754489 (= e!3536448 e!3536453)))

(declare-fun res!2429409 () Bool)

(assert (=> b!5754489 (= res!2429409 (matchRSpec!2865 (regOne!32037 lt!2287687) s!2326))))

(assert (=> b!5754489 (=> res!2429409 e!3536453)))

(declare-fun b!5754490 () Bool)

(declare-fun e!3536449 () Bool)

(declare-fun e!3536447 () Bool)

(assert (=> b!5754490 (= e!3536449 e!3536447)))

(declare-fun res!2429408 () Bool)

(assert (=> b!5754490 (= res!2429408 (not (is-EmptyLang!15762 lt!2287687)))))

(assert (=> b!5754490 (=> (not res!2429408) (not e!3536447))))

(declare-fun b!5754491 () Bool)

(declare-fun res!2429410 () Bool)

(declare-fun e!3536450 () Bool)

(assert (=> b!5754491 (=> res!2429410 e!3536450)))

(declare-fun call!441370 () Bool)

(assert (=> b!5754491 (= res!2429410 call!441370)))

(declare-fun e!3536452 () Bool)

(assert (=> b!5754491 (= e!3536452 e!3536450)))

(declare-fun d!1813523 () Bool)

(declare-fun c!1016776 () Bool)

(assert (=> d!1813523 (= c!1016776 (is-EmptyExpr!15762 lt!2287687))))

(assert (=> d!1813523 (= (matchRSpec!2865 lt!2287687 s!2326) e!3536449)))

(declare-fun b!5754492 () Bool)

(assert (=> b!5754492 (= e!3536449 call!441370)))

(declare-fun b!5754493 () Bool)

(assert (=> b!5754493 (= e!3536448 e!3536452)))

(declare-fun c!1016779 () Bool)

(assert (=> b!5754493 (= c!1016779 (is-Star!15762 lt!2287687))))

(declare-fun call!441369 () Bool)

(assert (=> b!5754494 (= e!3536450 call!441369)))

(declare-fun b!5754495 () Bool)

(declare-fun c!1016778 () Bool)

(assert (=> b!5754495 (= c!1016778 (is-Union!15762 lt!2287687))))

(declare-fun e!3536451 () Bool)

(assert (=> b!5754495 (= e!3536451 e!3536448)))

(declare-fun b!5754496 () Bool)

(declare-fun c!1016777 () Bool)

(assert (=> b!5754496 (= c!1016777 (is-ElementMatch!15762 lt!2287687))))

(assert (=> b!5754496 (= e!3536447 e!3536451)))

(assert (=> b!5754497 (= e!3536452 call!441369)))

(declare-fun b!5754498 () Bool)

(assert (=> b!5754498 (= e!3536451 (= s!2326 (Cons!63461 (c!1016690 lt!2287687) Nil!63461)))))

(declare-fun bm!441364 () Bool)

(assert (=> bm!441364 (= call!441370 (isEmpty!35351 s!2326))))

(declare-fun bm!441365 () Bool)

(assert (=> bm!441365 (= call!441369 (Exists!2862 (ite c!1016779 lambda!312343 lambda!312344)))))

(assert (= (and d!1813523 c!1016776) b!5754492))

(assert (= (and d!1813523 (not c!1016776)) b!5754490))

(assert (= (and b!5754490 res!2429408) b!5754496))

(assert (= (and b!5754496 c!1016777) b!5754498))

(assert (= (and b!5754496 (not c!1016777)) b!5754495))

(assert (= (and b!5754495 c!1016778) b!5754489))

(assert (= (and b!5754495 (not c!1016778)) b!5754493))

(assert (= (and b!5754489 (not res!2429409)) b!5754488))

(assert (= (and b!5754493 c!1016779) b!5754491))

(assert (= (and b!5754493 (not c!1016779)) b!5754497))

(assert (= (and b!5754491 (not res!2429410)) b!5754494))

(assert (= (or b!5754494 b!5754497) bm!441365))

(assert (= (or b!5754492 b!5754491) bm!441364))

(declare-fun m!6704018 () Bool)

(assert (=> b!5754488 m!6704018))

(declare-fun m!6704020 () Bool)

(assert (=> b!5754489 m!6704020))

(assert (=> bm!441364 m!6704010))

(declare-fun m!6704022 () Bool)

(assert (=> bm!441365 m!6704022))

(assert (=> b!5754089 d!1813523))

(declare-fun d!1813525 () Bool)

(assert (=> d!1813525 (= (matchR!7947 lt!2287687 s!2326) (matchRSpec!2865 lt!2287687 s!2326))))

(declare-fun lt!2287873 () Unit!156580)

(declare-fun choose!43622 (Regex!15762 List!63585) Unit!156580)

(assert (=> d!1813525 (= lt!2287873 (choose!43622 lt!2287687 s!2326))))

(assert (=> d!1813525 (validRegex!7498 lt!2287687)))

(assert (=> d!1813525 (= (mainMatchTheorem!2865 lt!2287687 s!2326) lt!2287873)))

(declare-fun bs!1348399 () Bool)

(assert (= bs!1348399 d!1813525))

(assert (=> bs!1348399 m!6703696))

(assert (=> bs!1348399 m!6703698))

(declare-fun m!6704024 () Bool)

(assert (=> bs!1348399 m!6704024))

(assert (=> bs!1348399 m!6704016))

(assert (=> b!5754089 d!1813525))

(declare-fun d!1813527 () Bool)

(assert (=> d!1813527 (= (isEmpty!35347 (t!376919 zl!343)) (is-Nil!63463 (t!376919 zl!343)))))

(assert (=> b!5754068 d!1813527))

(assert (=> b!5754088 d!1813501))

(declare-fun bs!1348400 () Bool)

(declare-fun d!1813529 () Bool)

(assert (= bs!1348400 (and d!1813529 d!1813513)))

(declare-fun lambda!312345 () Int)

(assert (=> bs!1348400 (= lambda!312345 lambda!312329)))

(declare-fun bs!1348401 () Bool)

(assert (= bs!1348401 (and d!1813529 d!1813515)))

(assert (=> bs!1348401 (= lambda!312345 lambda!312332)))

(declare-fun bs!1348402 () Bool)

(assert (= bs!1348402 (and d!1813529 d!1813517)))

(assert (=> bs!1348402 (= lambda!312345 lambda!312335)))

(declare-fun bs!1348403 () Bool)

(assert (= bs!1348403 (and d!1813529 d!1813519)))

(assert (=> bs!1348403 (= lambda!312345 lambda!312338)))

(assert (=> d!1813529 (= (inv!82653 setElem!38632) (forall!14883 (exprs!5646 setElem!38632) lambda!312345))))

(declare-fun bs!1348404 () Bool)

(assert (= bs!1348404 d!1813529))

(declare-fun m!6704026 () Bool)

(assert (=> bs!1348404 m!6704026))

(assert (=> setNonEmpty!38632 d!1813529))

(declare-fun d!1813531 () Bool)

(declare-fun c!1016781 () Bool)

(declare-fun e!3536455 () Bool)

(assert (=> d!1813531 (= c!1016781 e!3536455)))

(declare-fun res!2429411 () Bool)

(assert (=> d!1813531 (=> (not res!2429411) (not e!3536455))))

(assert (=> d!1813531 (= res!2429411 (is-Cons!63462 (exprs!5646 lt!2287720)))))

(declare-fun e!3536454 () (Set Context!10292))

(assert (=> d!1813531 (= (derivationStepZipperUp!1030 lt!2287720 (h!69909 s!2326)) e!3536454)))

(declare-fun b!5754499 () Bool)

(assert (=> b!5754499 (= e!3536455 (nullable!5794 (h!69910 (exprs!5646 lt!2287720))))))

(declare-fun b!5754500 () Bool)

(declare-fun e!3536456 () (Set Context!10292))

(declare-fun call!441371 () (Set Context!10292))

(assert (=> b!5754500 (= e!3536456 call!441371)))

(declare-fun bm!441366 () Bool)

(assert (=> bm!441366 (= call!441371 (derivationStepZipperDown!1104 (h!69910 (exprs!5646 lt!2287720)) (Context!10293 (t!376918 (exprs!5646 lt!2287720))) (h!69909 s!2326)))))

(declare-fun b!5754501 () Bool)

(assert (=> b!5754501 (= e!3536456 (as set.empty (Set Context!10292)))))

(declare-fun b!5754502 () Bool)

(assert (=> b!5754502 (= e!3536454 (set.union call!441371 (derivationStepZipperUp!1030 (Context!10293 (t!376918 (exprs!5646 lt!2287720))) (h!69909 s!2326))))))

(declare-fun b!5754503 () Bool)

(assert (=> b!5754503 (= e!3536454 e!3536456)))

(declare-fun c!1016780 () Bool)

(assert (=> b!5754503 (= c!1016780 (is-Cons!63462 (exprs!5646 lt!2287720)))))

(assert (= (and d!1813531 res!2429411) b!5754499))

(assert (= (and d!1813531 c!1016781) b!5754502))

(assert (= (and d!1813531 (not c!1016781)) b!5754503))

(assert (= (and b!5754503 c!1016780) b!5754500))

(assert (= (and b!5754503 (not c!1016780)) b!5754501))

(assert (= (or b!5754502 b!5754500) bm!441366))

(declare-fun m!6704028 () Bool)

(assert (=> b!5754499 m!6704028))

(declare-fun m!6704030 () Bool)

(assert (=> bm!441366 m!6704030))

(declare-fun m!6704032 () Bool)

(assert (=> b!5754502 m!6704032))

(assert (=> b!5754066 d!1813531))

(declare-fun b!5754504 () Bool)

(declare-fun e!3536460 () (Set Context!10292))

(assert (=> b!5754504 (= e!3536460 (set.insert lt!2287720 (as set.empty (Set Context!10292))))))

(declare-fun b!5754505 () Bool)

(declare-fun e!3536461 () (Set Context!10292))

(assert (=> b!5754505 (= e!3536461 (as set.empty (Set Context!10292)))))

(declare-fun c!1016786 () Bool)

(declare-fun c!1016783 () Bool)

(declare-fun call!441376 () List!63586)

(declare-fun bm!441367 () Bool)

(declare-fun call!441374 () (Set Context!10292))

(declare-fun c!1016785 () Bool)

(assert (=> bm!441367 (= call!441374 (derivationStepZipperDown!1104 (ite c!1016783 (regTwo!32037 (h!69910 (exprs!5646 (h!69911 zl!343)))) (ite c!1016785 (regTwo!32036 (h!69910 (exprs!5646 (h!69911 zl!343)))) (ite c!1016786 (regOne!32036 (h!69910 (exprs!5646 (h!69911 zl!343)))) (reg!16091 (h!69910 (exprs!5646 (h!69911 zl!343))))))) (ite (or c!1016783 c!1016785) lt!2287720 (Context!10293 call!441376)) (h!69909 s!2326)))))

(declare-fun d!1813533 () Bool)

(declare-fun c!1016782 () Bool)

(assert (=> d!1813533 (= c!1016782 (and (is-ElementMatch!15762 (h!69910 (exprs!5646 (h!69911 zl!343)))) (= (c!1016690 (h!69910 (exprs!5646 (h!69911 zl!343)))) (h!69909 s!2326))))))

(assert (=> d!1813533 (= (derivationStepZipperDown!1104 (h!69910 (exprs!5646 (h!69911 zl!343))) lt!2287720 (h!69909 s!2326)) e!3536460)))

(declare-fun b!5754506 () Bool)

(declare-fun e!3536457 () Bool)

(assert (=> b!5754506 (= c!1016785 e!3536457)))

(declare-fun res!2429412 () Bool)

(assert (=> b!5754506 (=> (not res!2429412) (not e!3536457))))

(assert (=> b!5754506 (= res!2429412 (is-Concat!24607 (h!69910 (exprs!5646 (h!69911 zl!343)))))))

(declare-fun e!3536458 () (Set Context!10292))

(declare-fun e!3536462 () (Set Context!10292))

(assert (=> b!5754506 (= e!3536458 e!3536462)))

(declare-fun b!5754507 () Bool)

(declare-fun c!1016784 () Bool)

(assert (=> b!5754507 (= c!1016784 (is-Star!15762 (h!69910 (exprs!5646 (h!69911 zl!343)))))))

(declare-fun e!3536459 () (Set Context!10292))

(assert (=> b!5754507 (= e!3536459 e!3536461)))

(declare-fun b!5754508 () Bool)

(assert (=> b!5754508 (= e!3536460 e!3536458)))

(assert (=> b!5754508 (= c!1016783 (is-Union!15762 (h!69910 (exprs!5646 (h!69911 zl!343)))))))

(declare-fun bm!441368 () Bool)

(declare-fun call!441375 () (Set Context!10292))

(assert (=> bm!441368 (= call!441375 call!441374)))

(declare-fun b!5754509 () Bool)

(assert (=> b!5754509 (= e!3536462 e!3536459)))

(assert (=> b!5754509 (= c!1016786 (is-Concat!24607 (h!69910 (exprs!5646 (h!69911 zl!343)))))))

(declare-fun bm!441369 () Bool)

(declare-fun call!441373 () List!63586)

(assert (=> bm!441369 (= call!441376 call!441373)))

(declare-fun b!5754510 () Bool)

(declare-fun call!441377 () (Set Context!10292))

(assert (=> b!5754510 (= e!3536462 (set.union call!441377 call!441375))))

(declare-fun b!5754511 () Bool)

(assert (=> b!5754511 (= e!3536457 (nullable!5794 (regOne!32036 (h!69910 (exprs!5646 (h!69911 zl!343))))))))

(declare-fun bm!441370 () Bool)

(assert (=> bm!441370 (= call!441377 (derivationStepZipperDown!1104 (ite c!1016783 (regOne!32037 (h!69910 (exprs!5646 (h!69911 zl!343)))) (regOne!32036 (h!69910 (exprs!5646 (h!69911 zl!343))))) (ite c!1016783 lt!2287720 (Context!10293 call!441373)) (h!69909 s!2326)))))

(declare-fun b!5754512 () Bool)

(declare-fun call!441372 () (Set Context!10292))

(assert (=> b!5754512 (= e!3536461 call!441372)))

(declare-fun b!5754513 () Bool)

(assert (=> b!5754513 (= e!3536459 call!441372)))

(declare-fun bm!441371 () Bool)

(assert (=> bm!441371 (= call!441372 call!441375)))

(declare-fun b!5754514 () Bool)

(assert (=> b!5754514 (= e!3536458 (set.union call!441377 call!441374))))

(declare-fun bm!441372 () Bool)

(assert (=> bm!441372 (= call!441373 ($colon$colon!1761 (exprs!5646 lt!2287720) (ite (or c!1016785 c!1016786) (regTwo!32036 (h!69910 (exprs!5646 (h!69911 zl!343)))) (h!69910 (exprs!5646 (h!69911 zl!343))))))))

(assert (= (and d!1813533 c!1016782) b!5754504))

(assert (= (and d!1813533 (not c!1016782)) b!5754508))

(assert (= (and b!5754508 c!1016783) b!5754514))

(assert (= (and b!5754508 (not c!1016783)) b!5754506))

(assert (= (and b!5754506 res!2429412) b!5754511))

(assert (= (and b!5754506 c!1016785) b!5754510))

(assert (= (and b!5754506 (not c!1016785)) b!5754509))

(assert (= (and b!5754509 c!1016786) b!5754513))

(assert (= (and b!5754509 (not c!1016786)) b!5754507))

(assert (= (and b!5754507 c!1016784) b!5754512))

(assert (= (and b!5754507 (not c!1016784)) b!5754505))

(assert (= (or b!5754513 b!5754512) bm!441369))

(assert (= (or b!5754513 b!5754512) bm!441371))

(assert (= (or b!5754510 bm!441369) bm!441372))

(assert (= (or b!5754510 bm!441371) bm!441368))

(assert (= (or b!5754514 bm!441368) bm!441367))

(assert (= (or b!5754514 b!5754510) bm!441370))

(declare-fun m!6704034 () Bool)

(assert (=> bm!441372 m!6704034))

(assert (=> b!5754504 m!6703654))

(declare-fun m!6704036 () Bool)

(assert (=> bm!441370 m!6704036))

(declare-fun m!6704038 () Bool)

(assert (=> bm!441367 m!6704038))

(declare-fun m!6704040 () Bool)

(assert (=> b!5754511 m!6704040))

(assert (=> b!5754066 d!1813533))

(declare-fun d!1813535 () Bool)

(assert (=> d!1813535 (= (nullable!5794 (h!69910 (exprs!5646 (h!69911 zl!343)))) (nullableFct!1839 (h!69910 (exprs!5646 (h!69911 zl!343)))))))

(declare-fun bs!1348405 () Bool)

(assert (= bs!1348405 d!1813535))

(declare-fun m!6704042 () Bool)

(assert (=> bs!1348405 m!6704042))

(assert (=> b!5754066 d!1813535))

(declare-fun d!1813537 () Bool)

(declare-fun c!1016788 () Bool)

(declare-fun e!3536464 () Bool)

(assert (=> d!1813537 (= c!1016788 e!3536464)))

(declare-fun res!2429413 () Bool)

(assert (=> d!1813537 (=> (not res!2429413) (not e!3536464))))

(assert (=> d!1813537 (= res!2429413 (is-Cons!63462 (exprs!5646 (Context!10293 (Cons!63462 (h!69910 (exprs!5646 (h!69911 zl!343))) (t!376918 (exprs!5646 (h!69911 zl!343))))))))))

(declare-fun e!3536463 () (Set Context!10292))

(assert (=> d!1813537 (= (derivationStepZipperUp!1030 (Context!10293 (Cons!63462 (h!69910 (exprs!5646 (h!69911 zl!343))) (t!376918 (exprs!5646 (h!69911 zl!343))))) (h!69909 s!2326)) e!3536463)))

(declare-fun b!5754515 () Bool)

(assert (=> b!5754515 (= e!3536464 (nullable!5794 (h!69910 (exprs!5646 (Context!10293 (Cons!63462 (h!69910 (exprs!5646 (h!69911 zl!343))) (t!376918 (exprs!5646 (h!69911 zl!343)))))))))))

(declare-fun b!5754516 () Bool)

(declare-fun e!3536465 () (Set Context!10292))

(declare-fun call!441378 () (Set Context!10292))

(assert (=> b!5754516 (= e!3536465 call!441378)))

(declare-fun bm!441373 () Bool)

(assert (=> bm!441373 (= call!441378 (derivationStepZipperDown!1104 (h!69910 (exprs!5646 (Context!10293 (Cons!63462 (h!69910 (exprs!5646 (h!69911 zl!343))) (t!376918 (exprs!5646 (h!69911 zl!343))))))) (Context!10293 (t!376918 (exprs!5646 (Context!10293 (Cons!63462 (h!69910 (exprs!5646 (h!69911 zl!343))) (t!376918 (exprs!5646 (h!69911 zl!343)))))))) (h!69909 s!2326)))))

(declare-fun b!5754517 () Bool)

(assert (=> b!5754517 (= e!3536465 (as set.empty (Set Context!10292)))))

(declare-fun b!5754518 () Bool)

(assert (=> b!5754518 (= e!3536463 (set.union call!441378 (derivationStepZipperUp!1030 (Context!10293 (t!376918 (exprs!5646 (Context!10293 (Cons!63462 (h!69910 (exprs!5646 (h!69911 zl!343))) (t!376918 (exprs!5646 (h!69911 zl!343)))))))) (h!69909 s!2326))))))

(declare-fun b!5754519 () Bool)

(assert (=> b!5754519 (= e!3536463 e!3536465)))

(declare-fun c!1016787 () Bool)

(assert (=> b!5754519 (= c!1016787 (is-Cons!63462 (exprs!5646 (Context!10293 (Cons!63462 (h!69910 (exprs!5646 (h!69911 zl!343))) (t!376918 (exprs!5646 (h!69911 zl!343))))))))))

(assert (= (and d!1813537 res!2429413) b!5754515))

(assert (= (and d!1813537 c!1016788) b!5754518))

(assert (= (and d!1813537 (not c!1016788)) b!5754519))

(assert (= (and b!5754519 c!1016787) b!5754516))

(assert (= (and b!5754519 (not c!1016787)) b!5754517))

(assert (= (or b!5754518 b!5754516) bm!441373))

(declare-fun m!6704044 () Bool)

(assert (=> b!5754515 m!6704044))

(declare-fun m!6704046 () Bool)

(assert (=> bm!441373 m!6704046))

(declare-fun m!6704048 () Bool)

(assert (=> b!5754518 m!6704048))

(assert (=> b!5754066 d!1813537))

(declare-fun d!1813539 () Bool)

(assert (=> d!1813539 (= (flatMap!1375 z!1189 lambda!312288) (choose!43620 z!1189 lambda!312288))))

(declare-fun bs!1348406 () Bool)

(assert (= bs!1348406 d!1813539))

(declare-fun m!6704050 () Bool)

(assert (=> bs!1348406 m!6704050))

(assert (=> b!5754066 d!1813539))

(declare-fun d!1813541 () Bool)

(declare-fun c!1016790 () Bool)

(declare-fun e!3536467 () Bool)

(assert (=> d!1813541 (= c!1016790 e!3536467)))

(declare-fun res!2429414 () Bool)

(assert (=> d!1813541 (=> (not res!2429414) (not e!3536467))))

(assert (=> d!1813541 (= res!2429414 (is-Cons!63462 (exprs!5646 (h!69911 zl!343))))))

(declare-fun e!3536466 () (Set Context!10292))

(assert (=> d!1813541 (= (derivationStepZipperUp!1030 (h!69911 zl!343) (h!69909 s!2326)) e!3536466)))

(declare-fun b!5754520 () Bool)

(assert (=> b!5754520 (= e!3536467 (nullable!5794 (h!69910 (exprs!5646 (h!69911 zl!343)))))))

(declare-fun b!5754521 () Bool)

(declare-fun e!3536468 () (Set Context!10292))

(declare-fun call!441379 () (Set Context!10292))

(assert (=> b!5754521 (= e!3536468 call!441379)))

(declare-fun bm!441374 () Bool)

(assert (=> bm!441374 (= call!441379 (derivationStepZipperDown!1104 (h!69910 (exprs!5646 (h!69911 zl!343))) (Context!10293 (t!376918 (exprs!5646 (h!69911 zl!343)))) (h!69909 s!2326)))))

(declare-fun b!5754522 () Bool)

(assert (=> b!5754522 (= e!3536468 (as set.empty (Set Context!10292)))))

(declare-fun b!5754523 () Bool)

(assert (=> b!5754523 (= e!3536466 (set.union call!441379 (derivationStepZipperUp!1030 (Context!10293 (t!376918 (exprs!5646 (h!69911 zl!343)))) (h!69909 s!2326))))))

(declare-fun b!5754524 () Bool)

(assert (=> b!5754524 (= e!3536466 e!3536468)))

(declare-fun c!1016789 () Bool)

(assert (=> b!5754524 (= c!1016789 (is-Cons!63462 (exprs!5646 (h!69911 zl!343))))))

(assert (= (and d!1813541 res!2429414) b!5754520))

(assert (= (and d!1813541 c!1016790) b!5754523))

(assert (= (and d!1813541 (not c!1016790)) b!5754524))

(assert (= (and b!5754524 c!1016789) b!5754521))

(assert (= (and b!5754524 (not c!1016789)) b!5754522))

(assert (= (or b!5754523 b!5754521) bm!441374))

(assert (=> b!5754520 m!6703674))

(declare-fun m!6704052 () Bool)

(assert (=> bm!441374 m!6704052))

(declare-fun m!6704054 () Bool)

(assert (=> b!5754523 m!6704054))

(assert (=> b!5754066 d!1813541))

(declare-fun d!1813543 () Bool)

(assert (=> d!1813543 (= (flatMap!1375 z!1189 lambda!312288) (dynLambda!24846 lambda!312288 (h!69911 zl!343)))))

(declare-fun lt!2287874 () Unit!156580)

(assert (=> d!1813543 (= lt!2287874 (choose!43621 z!1189 (h!69911 zl!343) lambda!312288))))

(assert (=> d!1813543 (= z!1189 (set.insert (h!69911 zl!343) (as set.empty (Set Context!10292))))))

(assert (=> d!1813543 (= (lemmaFlatMapOnSingletonSet!907 z!1189 (h!69911 zl!343) lambda!312288) lt!2287874)))

(declare-fun b_lambda!217385 () Bool)

(assert (=> (not b_lambda!217385) (not d!1813543)))

(declare-fun bs!1348407 () Bool)

(assert (= bs!1348407 d!1813543))

(assert (=> bs!1348407 m!6703668))

(declare-fun m!6704056 () Bool)

(assert (=> bs!1348407 m!6704056))

(declare-fun m!6704058 () Bool)

(assert (=> bs!1348407 m!6704058))

(declare-fun m!6704060 () Bool)

(assert (=> bs!1348407 m!6704060))

(assert (=> b!5754066 d!1813543))

(declare-fun d!1813545 () Bool)

(declare-fun e!3536471 () Bool)

(assert (=> d!1813545 e!3536471))

(declare-fun res!2429417 () Bool)

(assert (=> d!1813545 (=> (not res!2429417) (not e!3536471))))

(declare-fun lt!2287877 () List!63587)

(declare-fun noDuplicate!1673 (List!63587) Bool)

(assert (=> d!1813545 (= res!2429417 (noDuplicate!1673 lt!2287877))))

(declare-fun choose!43623 ((Set Context!10292)) List!63587)

(assert (=> d!1813545 (= lt!2287877 (choose!43623 z!1189))))

(assert (=> d!1813545 (= (toList!9546 z!1189) lt!2287877)))

(declare-fun b!5754527 () Bool)

(declare-fun content!11576 (List!63587) (Set Context!10292))

(assert (=> b!5754527 (= e!3536471 (= (content!11576 lt!2287877) z!1189))))

(assert (= (and d!1813545 res!2429417) b!5754527))

(declare-fun m!6704062 () Bool)

(assert (=> d!1813545 m!6704062))

(declare-fun m!6704064 () Bool)

(assert (=> d!1813545 m!6704064))

(declare-fun m!6704066 () Bool)

(assert (=> b!5754527 m!6704066))

(assert (=> b!5754106 d!1813545))

(declare-fun b!5754562 () Bool)

(declare-fun e!3536492 () Bool)

(declare-fun e!3536493 () Bool)

(assert (=> b!5754562 (= e!3536492 e!3536493)))

(declare-fun c!1016805 () Bool)

(assert (=> b!5754562 (= c!1016805 (is-Union!15762 r!7292))))

(declare-fun b!5754563 () Bool)

(declare-fun e!3536495 () Bool)

(declare-fun lt!2287880 () Int)

(assert (=> b!5754563 (= e!3536495 (= lt!2287880 1))))

(declare-fun b!5754564 () Bool)

(declare-fun e!3536500 () Int)

(assert (=> b!5754564 (= e!3536500 1)))

(declare-fun b!5754565 () Bool)

(declare-fun c!1016809 () Bool)

(assert (=> b!5754565 (= c!1016809 (is-Star!15762 r!7292))))

(declare-fun e!3536497 () Bool)

(assert (=> b!5754565 (= e!3536497 e!3536495)))

(declare-fun b!5754566 () Bool)

(declare-fun e!3536499 () Bool)

(declare-fun call!441398 () Int)

(assert (=> b!5754566 (= e!3536499 (> lt!2287880 call!441398))))

(declare-fun b!5754567 () Bool)

(declare-fun call!441394 () Int)

(assert (=> b!5754567 (= e!3536495 (> lt!2287880 call!441394))))

(declare-fun d!1813547 () Bool)

(assert (=> d!1813547 e!3536492))

(declare-fun res!2429424 () Bool)

(assert (=> d!1813547 (=> (not res!2429424) (not e!3536492))))

(assert (=> d!1813547 (= res!2429424 (> lt!2287880 0))))

(assert (=> d!1813547 (= lt!2287880 e!3536500)))

(declare-fun c!1016806 () Bool)

(assert (=> d!1813547 (= c!1016806 (is-ElementMatch!15762 r!7292))))

(assert (=> d!1813547 (= (regexDepth!239 r!7292) lt!2287880)))

(declare-fun bm!441389 () Bool)

(declare-fun call!441397 () Int)

(assert (=> bm!441389 (= call!441394 call!441397)))

(declare-fun b!5754568 () Bool)

(declare-fun e!3536494 () Bool)

(assert (=> b!5754568 (= e!3536494 (> lt!2287880 call!441398))))

(declare-fun b!5754569 () Bool)

(declare-fun e!3536496 () Int)

(declare-fun call!441396 () Int)

(assert (=> b!5754569 (= e!3536496 (+ 1 call!441396))))

(declare-fun b!5754570 () Bool)

(declare-fun e!3536501 () Int)

(declare-fun call!441400 () Int)

(assert (=> b!5754570 (= e!3536501 (+ 1 call!441400))))

(declare-fun b!5754571 () Bool)

(assert (=> b!5754571 (= e!3536500 e!3536496)))

(declare-fun c!1016810 () Bool)

(assert (=> b!5754571 (= c!1016810 (is-Star!15762 r!7292))))

(declare-fun bm!441390 () Bool)

(declare-fun call!441399 () Int)

(assert (=> bm!441390 (= call!441399 call!441396)))

(declare-fun bm!441391 () Bool)

(assert (=> bm!441391 (= call!441398 (regexDepth!239 (ite c!1016805 (regTwo!32037 r!7292) (regTwo!32036 r!7292))))))

(declare-fun b!5754572 () Bool)

(assert (=> b!5754572 (= e!3536493 e!3536499)))

(declare-fun res!2429426 () Bool)

(assert (=> b!5754572 (= res!2429426 (> lt!2287880 call!441397))))

(assert (=> b!5754572 (=> (not res!2429426) (not e!3536499))))

(declare-fun b!5754573 () Bool)

(assert (=> b!5754573 (= e!3536493 e!3536497)))

(declare-fun c!1016811 () Bool)

(assert (=> b!5754573 (= c!1016811 (is-Concat!24607 r!7292))))

(declare-fun b!5754574 () Bool)

(declare-fun e!3536498 () Int)

(assert (=> b!5754574 (= e!3536501 e!3536498)))

(declare-fun c!1016808 () Bool)

(assert (=> b!5754574 (= c!1016808 (is-Concat!24607 r!7292))))

(declare-fun bm!441392 () Bool)

(declare-fun call!441395 () Int)

(declare-fun c!1016807 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!441392 (= call!441400 (maxBigInt!0 (ite c!1016807 call!441399 call!441395) (ite c!1016807 call!441395 call!441399)))))

(declare-fun b!5754575 () Bool)

(assert (=> b!5754575 (= e!3536498 1)))

(declare-fun bm!441393 () Bool)

(assert (=> bm!441393 (= call!441397 (regexDepth!239 (ite c!1016805 (regOne!32037 r!7292) (ite c!1016811 (regOne!32036 r!7292) (reg!16091 r!7292)))))))

(declare-fun bm!441394 () Bool)

(assert (=> bm!441394 (= call!441395 (regexDepth!239 (ite c!1016807 (regTwo!32037 r!7292) (regOne!32036 r!7292))))))

(declare-fun b!5754576 () Bool)

(declare-fun res!2429425 () Bool)

(assert (=> b!5754576 (=> (not res!2429425) (not e!3536494))))

(assert (=> b!5754576 (= res!2429425 (> lt!2287880 call!441394))))

(assert (=> b!5754576 (= e!3536497 e!3536494)))

(declare-fun b!5754577 () Bool)

(assert (=> b!5754577 (= c!1016807 (is-Union!15762 r!7292))))

(assert (=> b!5754577 (= e!3536496 e!3536501)))

(declare-fun bm!441395 () Bool)

(assert (=> bm!441395 (= call!441396 (regexDepth!239 (ite c!1016810 (reg!16091 r!7292) (ite c!1016807 (regOne!32037 r!7292) (regTwo!32036 r!7292)))))))

(declare-fun b!5754578 () Bool)

(assert (=> b!5754578 (= e!3536498 (+ 1 call!441400))))

(assert (= (and d!1813547 c!1016806) b!5754564))

(assert (= (and d!1813547 (not c!1016806)) b!5754571))

(assert (= (and b!5754571 c!1016810) b!5754569))

(assert (= (and b!5754571 (not c!1016810)) b!5754577))

(assert (= (and b!5754577 c!1016807) b!5754570))

(assert (= (and b!5754577 (not c!1016807)) b!5754574))

(assert (= (and b!5754574 c!1016808) b!5754578))

(assert (= (and b!5754574 (not c!1016808)) b!5754575))

(assert (= (or b!5754570 b!5754578) bm!441394))

(assert (= (or b!5754570 b!5754578) bm!441390))

(assert (= (or b!5754570 b!5754578) bm!441392))

(assert (= (or b!5754569 bm!441390) bm!441395))

(assert (= (and d!1813547 res!2429424) b!5754562))

(assert (= (and b!5754562 c!1016805) b!5754572))

(assert (= (and b!5754562 (not c!1016805)) b!5754573))

(assert (= (and b!5754572 res!2429426) b!5754566))

(assert (= (and b!5754573 c!1016811) b!5754576))

(assert (= (and b!5754573 (not c!1016811)) b!5754565))

(assert (= (and b!5754576 res!2429425) b!5754568))

(assert (= (and b!5754565 c!1016809) b!5754567))

(assert (= (and b!5754565 (not c!1016809)) b!5754563))

(assert (= (or b!5754576 b!5754567) bm!441389))

(assert (= (or b!5754566 b!5754568) bm!441391))

(assert (= (or b!5754572 bm!441389) bm!441393))

(declare-fun m!6704068 () Bool)

(assert (=> bm!441392 m!6704068))

(declare-fun m!6704070 () Bool)

(assert (=> bm!441393 m!6704070))

(declare-fun m!6704072 () Bool)

(assert (=> bm!441394 m!6704072))

(declare-fun m!6704074 () Bool)

(assert (=> bm!441395 m!6704074))

(declare-fun m!6704076 () Bool)

(assert (=> bm!441391 m!6704076))

(assert (=> b!5754105 d!1813547))

(declare-fun b!5754579 () Bool)

(declare-fun e!3536502 () Bool)

(declare-fun e!3536503 () Bool)

(assert (=> b!5754579 (= e!3536502 e!3536503)))

(declare-fun c!1016812 () Bool)

(assert (=> b!5754579 (= c!1016812 (is-Union!15762 lt!2287698))))

(declare-fun b!5754580 () Bool)

(declare-fun e!3536505 () Bool)

(declare-fun lt!2287881 () Int)

(assert (=> b!5754580 (= e!3536505 (= lt!2287881 1))))

(declare-fun b!5754581 () Bool)

(declare-fun e!3536510 () Int)

(assert (=> b!5754581 (= e!3536510 1)))

(declare-fun b!5754582 () Bool)

(declare-fun c!1016816 () Bool)

(assert (=> b!5754582 (= c!1016816 (is-Star!15762 lt!2287698))))

(declare-fun e!3536507 () Bool)

(assert (=> b!5754582 (= e!3536507 e!3536505)))

(declare-fun b!5754583 () Bool)

(declare-fun e!3536509 () Bool)

(declare-fun call!441405 () Int)

(assert (=> b!5754583 (= e!3536509 (> lt!2287881 call!441405))))

(declare-fun b!5754584 () Bool)

(declare-fun call!441401 () Int)

(assert (=> b!5754584 (= e!3536505 (> lt!2287881 call!441401))))

(declare-fun d!1813549 () Bool)

(assert (=> d!1813549 e!3536502))

(declare-fun res!2429427 () Bool)

(assert (=> d!1813549 (=> (not res!2429427) (not e!3536502))))

(assert (=> d!1813549 (= res!2429427 (> lt!2287881 0))))

(assert (=> d!1813549 (= lt!2287881 e!3536510)))

(declare-fun c!1016813 () Bool)

(assert (=> d!1813549 (= c!1016813 (is-ElementMatch!15762 lt!2287698))))

(assert (=> d!1813549 (= (regexDepth!239 lt!2287698) lt!2287881)))

(declare-fun bm!441396 () Bool)

(declare-fun call!441404 () Int)

(assert (=> bm!441396 (= call!441401 call!441404)))

(declare-fun b!5754585 () Bool)

(declare-fun e!3536504 () Bool)

(assert (=> b!5754585 (= e!3536504 (> lt!2287881 call!441405))))

(declare-fun b!5754586 () Bool)

(declare-fun e!3536506 () Int)

(declare-fun call!441403 () Int)

(assert (=> b!5754586 (= e!3536506 (+ 1 call!441403))))

(declare-fun b!5754587 () Bool)

(declare-fun e!3536511 () Int)

(declare-fun call!441407 () Int)

(assert (=> b!5754587 (= e!3536511 (+ 1 call!441407))))

(declare-fun b!5754588 () Bool)

(assert (=> b!5754588 (= e!3536510 e!3536506)))

(declare-fun c!1016817 () Bool)

(assert (=> b!5754588 (= c!1016817 (is-Star!15762 lt!2287698))))

(declare-fun bm!441397 () Bool)

(declare-fun call!441406 () Int)

(assert (=> bm!441397 (= call!441406 call!441403)))

(declare-fun bm!441398 () Bool)

(assert (=> bm!441398 (= call!441405 (regexDepth!239 (ite c!1016812 (regTwo!32037 lt!2287698) (regTwo!32036 lt!2287698))))))

(declare-fun b!5754589 () Bool)

(assert (=> b!5754589 (= e!3536503 e!3536509)))

(declare-fun res!2429429 () Bool)

(assert (=> b!5754589 (= res!2429429 (> lt!2287881 call!441404))))

(assert (=> b!5754589 (=> (not res!2429429) (not e!3536509))))

(declare-fun b!5754590 () Bool)

(assert (=> b!5754590 (= e!3536503 e!3536507)))

(declare-fun c!1016818 () Bool)

(assert (=> b!5754590 (= c!1016818 (is-Concat!24607 lt!2287698))))

(declare-fun b!5754591 () Bool)

(declare-fun e!3536508 () Int)

(assert (=> b!5754591 (= e!3536511 e!3536508)))

(declare-fun c!1016815 () Bool)

(assert (=> b!5754591 (= c!1016815 (is-Concat!24607 lt!2287698))))

(declare-fun call!441402 () Int)

(declare-fun bm!441399 () Bool)

(declare-fun c!1016814 () Bool)

(assert (=> bm!441399 (= call!441407 (maxBigInt!0 (ite c!1016814 call!441406 call!441402) (ite c!1016814 call!441402 call!441406)))))

(declare-fun b!5754592 () Bool)

(assert (=> b!5754592 (= e!3536508 1)))

(declare-fun bm!441400 () Bool)

(assert (=> bm!441400 (= call!441404 (regexDepth!239 (ite c!1016812 (regOne!32037 lt!2287698) (ite c!1016818 (regOne!32036 lt!2287698) (reg!16091 lt!2287698)))))))

(declare-fun bm!441401 () Bool)

(assert (=> bm!441401 (= call!441402 (regexDepth!239 (ite c!1016814 (regTwo!32037 lt!2287698) (regOne!32036 lt!2287698))))))

(declare-fun b!5754593 () Bool)

(declare-fun res!2429428 () Bool)

(assert (=> b!5754593 (=> (not res!2429428) (not e!3536504))))

(assert (=> b!5754593 (= res!2429428 (> lt!2287881 call!441401))))

(assert (=> b!5754593 (= e!3536507 e!3536504)))

(declare-fun b!5754594 () Bool)

(assert (=> b!5754594 (= c!1016814 (is-Union!15762 lt!2287698))))

(assert (=> b!5754594 (= e!3536506 e!3536511)))

(declare-fun bm!441402 () Bool)

(assert (=> bm!441402 (= call!441403 (regexDepth!239 (ite c!1016817 (reg!16091 lt!2287698) (ite c!1016814 (regOne!32037 lt!2287698) (regTwo!32036 lt!2287698)))))))

(declare-fun b!5754595 () Bool)

(assert (=> b!5754595 (= e!3536508 (+ 1 call!441407))))

(assert (= (and d!1813549 c!1016813) b!5754581))

(assert (= (and d!1813549 (not c!1016813)) b!5754588))

(assert (= (and b!5754588 c!1016817) b!5754586))

(assert (= (and b!5754588 (not c!1016817)) b!5754594))

(assert (= (and b!5754594 c!1016814) b!5754587))

(assert (= (and b!5754594 (not c!1016814)) b!5754591))

(assert (= (and b!5754591 c!1016815) b!5754595))

(assert (= (and b!5754591 (not c!1016815)) b!5754592))

(assert (= (or b!5754587 b!5754595) bm!441401))

(assert (= (or b!5754587 b!5754595) bm!441397))

(assert (= (or b!5754587 b!5754595) bm!441399))

(assert (= (or b!5754586 bm!441397) bm!441402))

(assert (= (and d!1813549 res!2429427) b!5754579))

(assert (= (and b!5754579 c!1016812) b!5754589))

(assert (= (and b!5754579 (not c!1016812)) b!5754590))

(assert (= (and b!5754589 res!2429429) b!5754583))

(assert (= (and b!5754590 c!1016818) b!5754593))

(assert (= (and b!5754590 (not c!1016818)) b!5754582))

(assert (= (and b!5754593 res!2429428) b!5754585))

(assert (= (and b!5754582 c!1016816) b!5754584))

(assert (= (and b!5754582 (not c!1016816)) b!5754580))

(assert (= (or b!5754593 b!5754584) bm!441396))

(assert (= (or b!5754583 b!5754585) bm!441398))

(assert (= (or b!5754589 bm!441396) bm!441400))

(declare-fun m!6704078 () Bool)

(assert (=> bm!441399 m!6704078))

(declare-fun m!6704080 () Bool)

(assert (=> bm!441400 m!6704080))

(declare-fun m!6704082 () Bool)

(assert (=> bm!441401 m!6704082))

(declare-fun m!6704084 () Bool)

(assert (=> bm!441402 m!6704084))

(declare-fun m!6704086 () Bool)

(assert (=> bm!441398 m!6704086))

(assert (=> b!5754105 d!1813549))

(declare-fun bs!1348408 () Bool)

(declare-fun d!1813551 () Bool)

(assert (= bs!1348408 (and d!1813551 d!1813517)))

(declare-fun lambda!312346 () Int)

(assert (=> bs!1348408 (= lambda!312346 lambda!312335)))

(declare-fun bs!1348409 () Bool)

(assert (= bs!1348409 (and d!1813551 d!1813515)))

(assert (=> bs!1348409 (= lambda!312346 lambda!312332)))

(declare-fun bs!1348410 () Bool)

(assert (= bs!1348410 (and d!1813551 d!1813513)))

(assert (=> bs!1348410 (= lambda!312346 lambda!312329)))

(declare-fun bs!1348411 () Bool)

(assert (= bs!1348411 (and d!1813551 d!1813519)))

(assert (=> bs!1348411 (= lambda!312346 lambda!312338)))

(declare-fun bs!1348412 () Bool)

(assert (= bs!1348412 (and d!1813551 d!1813529)))

(assert (=> bs!1348412 (= lambda!312346 lambda!312345)))

(declare-fun b!5754596 () Bool)

(declare-fun e!3536517 () Regex!15762)

(assert (=> b!5754596 (= e!3536517 (Concat!24607 (h!69910 (t!376918 (exprs!5646 (h!69911 zl!343)))) (generalisedConcat!1377 (t!376918 (t!376918 (exprs!5646 (h!69911 zl!343)))))))))

(declare-fun b!5754597 () Bool)

(declare-fun e!3536516 () Bool)

(declare-fun lt!2287882 () Regex!15762)

(assert (=> b!5754597 (= e!3536516 (= lt!2287882 (head!12169 (t!376918 (exprs!5646 (h!69911 zl!343))))))))

(declare-fun b!5754598 () Bool)

(assert (=> b!5754598 (= e!3536516 (isConcat!775 lt!2287882))))

(declare-fun b!5754599 () Bool)

(declare-fun e!3536515 () Bool)

(assert (=> b!5754599 (= e!3536515 (isEmpty!35348 (t!376918 (t!376918 (exprs!5646 (h!69911 zl!343))))))))

(declare-fun b!5754600 () Bool)

(declare-fun e!3536512 () Bool)

(assert (=> b!5754600 (= e!3536512 e!3536516)))

(declare-fun c!1016819 () Bool)

(assert (=> b!5754600 (= c!1016819 (isEmpty!35348 (tail!11264 (t!376918 (exprs!5646 (h!69911 zl!343))))))))

(declare-fun b!5754601 () Bool)

(declare-fun e!3536513 () Regex!15762)

(assert (=> b!5754601 (= e!3536513 (h!69910 (t!376918 (exprs!5646 (h!69911 zl!343)))))))

(declare-fun b!5754602 () Bool)

(assert (=> b!5754602 (= e!3536517 EmptyExpr!15762)))

(declare-fun e!3536514 () Bool)

(assert (=> d!1813551 e!3536514))

(declare-fun res!2429431 () Bool)

(assert (=> d!1813551 (=> (not res!2429431) (not e!3536514))))

(assert (=> d!1813551 (= res!2429431 (validRegex!7498 lt!2287882))))

(assert (=> d!1813551 (= lt!2287882 e!3536513)))

(declare-fun c!1016821 () Bool)

(assert (=> d!1813551 (= c!1016821 e!3536515)))

(declare-fun res!2429430 () Bool)

(assert (=> d!1813551 (=> (not res!2429430) (not e!3536515))))

(assert (=> d!1813551 (= res!2429430 (is-Cons!63462 (t!376918 (exprs!5646 (h!69911 zl!343)))))))

(assert (=> d!1813551 (forall!14883 (t!376918 (exprs!5646 (h!69911 zl!343))) lambda!312346)))

(assert (=> d!1813551 (= (generalisedConcat!1377 (t!376918 (exprs!5646 (h!69911 zl!343)))) lt!2287882)))

(declare-fun b!5754603 () Bool)

(assert (=> b!5754603 (= e!3536514 e!3536512)))

(declare-fun c!1016820 () Bool)

(assert (=> b!5754603 (= c!1016820 (isEmpty!35348 (t!376918 (exprs!5646 (h!69911 zl!343)))))))

(declare-fun b!5754604 () Bool)

(assert (=> b!5754604 (= e!3536513 e!3536517)))

(declare-fun c!1016822 () Bool)

(assert (=> b!5754604 (= c!1016822 (is-Cons!63462 (t!376918 (exprs!5646 (h!69911 zl!343)))))))

(declare-fun b!5754605 () Bool)

(assert (=> b!5754605 (= e!3536512 (isEmptyExpr!1252 lt!2287882))))

(assert (= (and d!1813551 res!2429430) b!5754599))

(assert (= (and d!1813551 c!1016821) b!5754601))

(assert (= (and d!1813551 (not c!1016821)) b!5754604))

(assert (= (and b!5754604 c!1016822) b!5754596))

(assert (= (and b!5754604 (not c!1016822)) b!5754602))

(assert (= (and d!1813551 res!2429431) b!5754603))

(assert (= (and b!5754603 c!1016820) b!5754605))

(assert (= (and b!5754603 (not c!1016820)) b!5754600))

(assert (= (and b!5754600 c!1016819) b!5754597))

(assert (= (and b!5754600 (not c!1016819)) b!5754598))

(declare-fun m!6704088 () Bool)

(assert (=> d!1813551 m!6704088))

(declare-fun m!6704090 () Bool)

(assert (=> d!1813551 m!6704090))

(assert (=> b!5754603 m!6703602))

(declare-fun m!6704092 () Bool)

(assert (=> b!5754605 m!6704092))

(declare-fun m!6704094 () Bool)

(assert (=> b!5754598 m!6704094))

(declare-fun m!6704096 () Bool)

(assert (=> b!5754600 m!6704096))

(assert (=> b!5754600 m!6704096))

(declare-fun m!6704098 () Bool)

(assert (=> b!5754600 m!6704098))

(declare-fun m!6704100 () Bool)

(assert (=> b!5754596 m!6704100))

(declare-fun m!6704102 () Bool)

(assert (=> b!5754597 m!6704102))

(declare-fun m!6704104 () Bool)

(assert (=> b!5754599 m!6704104))

(assert (=> b!5754105 d!1813551))

(declare-fun d!1813553 () Bool)

(declare-fun e!3536520 () Bool)

(assert (=> d!1813553 (= (matchZipper!1900 (set.union lt!2287707 lt!2287696) (t!376917 s!2326)) e!3536520)))

(declare-fun res!2429434 () Bool)

(assert (=> d!1813553 (=> res!2429434 e!3536520)))

(assert (=> d!1813553 (= res!2429434 (matchZipper!1900 lt!2287707 (t!376917 s!2326)))))

(declare-fun lt!2287885 () Unit!156580)

(declare-fun choose!43624 ((Set Context!10292) (Set Context!10292) List!63585) Unit!156580)

(assert (=> d!1813553 (= lt!2287885 (choose!43624 lt!2287707 lt!2287696 (t!376917 s!2326)))))

(assert (=> d!1813553 (= (lemmaZipperConcatMatchesSameAsBothZippers!787 lt!2287707 lt!2287696 (t!376917 s!2326)) lt!2287885)))

(declare-fun b!5754608 () Bool)

(assert (=> b!5754608 (= e!3536520 (matchZipper!1900 lt!2287696 (t!376917 s!2326)))))

(assert (= (and d!1813553 (not res!2429434)) b!5754608))

(assert (=> d!1813553 m!6703646))

(assert (=> d!1813553 m!6703644))

(declare-fun m!6704106 () Bool)

(assert (=> d!1813553 m!6704106))

(assert (=> b!5754608 m!6703650))

(assert (=> b!5754084 d!1813553))

(declare-fun d!1813555 () Bool)

(declare-fun c!1016823 () Bool)

(assert (=> d!1813555 (= c!1016823 (isEmpty!35351 (t!376917 s!2326)))))

(declare-fun e!3536521 () Bool)

(assert (=> d!1813555 (= (matchZipper!1900 lt!2287707 (t!376917 s!2326)) e!3536521)))

(declare-fun b!5754609 () Bool)

(assert (=> b!5754609 (= e!3536521 (nullableZipper!1693 lt!2287707))))

(declare-fun b!5754610 () Bool)

(assert (=> b!5754610 (= e!3536521 (matchZipper!1900 (derivationStepZipper!1845 lt!2287707 (head!12168 (t!376917 s!2326))) (tail!11263 (t!376917 s!2326))))))

(assert (= (and d!1813555 c!1016823) b!5754609))

(assert (= (and d!1813555 (not c!1016823)) b!5754610))

(assert (=> d!1813555 m!6703926))

(declare-fun m!6704108 () Bool)

(assert (=> b!5754609 m!6704108))

(assert (=> b!5754610 m!6703930))

(assert (=> b!5754610 m!6703930))

(declare-fun m!6704110 () Bool)

(assert (=> b!5754610 m!6704110))

(assert (=> b!5754610 m!6703934))

(assert (=> b!5754610 m!6704110))

(assert (=> b!5754610 m!6703934))

(declare-fun m!6704112 () Bool)

(assert (=> b!5754610 m!6704112))

(assert (=> b!5754084 d!1813555))

(declare-fun d!1813557 () Bool)

(declare-fun c!1016824 () Bool)

(assert (=> d!1813557 (= c!1016824 (isEmpty!35351 (t!376917 s!2326)))))

(declare-fun e!3536522 () Bool)

(assert (=> d!1813557 (= (matchZipper!1900 (set.union lt!2287707 lt!2287696) (t!376917 s!2326)) e!3536522)))

(declare-fun b!5754611 () Bool)

(assert (=> b!5754611 (= e!3536522 (nullableZipper!1693 (set.union lt!2287707 lt!2287696)))))

(declare-fun b!5754612 () Bool)

(assert (=> b!5754612 (= e!3536522 (matchZipper!1900 (derivationStepZipper!1845 (set.union lt!2287707 lt!2287696) (head!12168 (t!376917 s!2326))) (tail!11263 (t!376917 s!2326))))))

(assert (= (and d!1813557 c!1016824) b!5754611))

(assert (= (and d!1813557 (not c!1016824)) b!5754612))

(assert (=> d!1813557 m!6703926))

(declare-fun m!6704114 () Bool)

(assert (=> b!5754611 m!6704114))

(assert (=> b!5754612 m!6703930))

(assert (=> b!5754612 m!6703930))

(declare-fun m!6704116 () Bool)

(assert (=> b!5754612 m!6704116))

(assert (=> b!5754612 m!6703934))

(assert (=> b!5754612 m!6704116))

(assert (=> b!5754612 m!6703934))

(declare-fun m!6704118 () Bool)

(assert (=> b!5754612 m!6704118))

(assert (=> b!5754084 d!1813557))

(declare-fun d!1813559 () Bool)

(declare-fun lt!2287886 () Regex!15762)

(assert (=> d!1813559 (validRegex!7498 lt!2287886)))

(assert (=> d!1813559 (= lt!2287886 (generalisedUnion!1625 (unfocusZipperList!1190 (Cons!63463 lt!2287713 Nil!63463))))))

(assert (=> d!1813559 (= (unfocusZipper!1504 (Cons!63463 lt!2287713 Nil!63463)) lt!2287886)))

(declare-fun bs!1348413 () Bool)

(assert (= bs!1348413 d!1813559))

(declare-fun m!6704120 () Bool)

(assert (=> bs!1348413 m!6704120))

(declare-fun m!6704122 () Bool)

(assert (=> bs!1348413 m!6704122))

(assert (=> bs!1348413 m!6704122))

(declare-fun m!6704124 () Bool)

(assert (=> bs!1348413 m!6704124))

(assert (=> b!5754103 d!1813559))

(declare-fun d!1813561 () Bool)

(declare-fun e!3536535 () Bool)

(assert (=> d!1813561 e!3536535))

(declare-fun res!2429446 () Bool)

(assert (=> d!1813561 (=> res!2429446 e!3536535)))

(declare-fun e!3536534 () Bool)

(assert (=> d!1813561 (= res!2429446 e!3536534)))

(declare-fun res!2429448 () Bool)

(assert (=> d!1813561 (=> (not res!2429448) (not e!3536534))))

(declare-fun lt!2287893 () Option!15771)

(assert (=> d!1813561 (= res!2429448 (isDefined!12474 lt!2287893))))

(declare-fun e!3536537 () Option!15771)

(assert (=> d!1813561 (= lt!2287893 e!3536537)))

(declare-fun c!1016829 () Bool)

(declare-fun e!3536536 () Bool)

(assert (=> d!1813561 (= c!1016829 e!3536536)))

(declare-fun res!2429447 () Bool)

(assert (=> d!1813561 (=> (not res!2429447) (not e!3536536))))

(assert (=> d!1813561 (= res!2429447 (matchR!7947 (regOne!32036 r!7292) Nil!63461))))

(assert (=> d!1813561 (validRegex!7498 (regOne!32036 r!7292))))

(assert (=> d!1813561 (= (findConcatSeparation!2185 (regOne!32036 r!7292) (regTwo!32036 r!7292) Nil!63461 s!2326 s!2326) lt!2287893)))

(declare-fun b!5754631 () Bool)

(declare-fun e!3536533 () Option!15771)

(assert (=> b!5754631 (= e!3536537 e!3536533)))

(declare-fun c!1016830 () Bool)

(assert (=> b!5754631 (= c!1016830 (is-Nil!63461 s!2326))))

(declare-fun b!5754632 () Bool)

(declare-fun res!2429449 () Bool)

(assert (=> b!5754632 (=> (not res!2429449) (not e!3536534))))

(declare-fun get!21895 (Option!15771) tuple2!65718)

(assert (=> b!5754632 (= res!2429449 (matchR!7947 (regOne!32036 r!7292) (_1!36162 (get!21895 lt!2287893))))))

(declare-fun b!5754633 () Bool)

(assert (=> b!5754633 (= e!3536536 (matchR!7947 (regTwo!32036 r!7292) s!2326))))

(declare-fun b!5754634 () Bool)

(assert (=> b!5754634 (= e!3536537 (Some!15770 (tuple2!65719 Nil!63461 s!2326)))))

(declare-fun b!5754635 () Bool)

(assert (=> b!5754635 (= e!3536535 (not (isDefined!12474 lt!2287893)))))

(declare-fun b!5754636 () Bool)

(declare-fun res!2429445 () Bool)

(assert (=> b!5754636 (=> (not res!2429445) (not e!3536534))))

(assert (=> b!5754636 (= res!2429445 (matchR!7947 (regTwo!32036 r!7292) (_2!36162 (get!21895 lt!2287893))))))

(declare-fun b!5754637 () Bool)

(assert (=> b!5754637 (= e!3536533 None!15770)))

(declare-fun b!5754638 () Bool)

(declare-fun lt!2287895 () Unit!156580)

(declare-fun lt!2287894 () Unit!156580)

(assert (=> b!5754638 (= lt!2287895 lt!2287894)))

(assert (=> b!5754638 (= (++!13980 (++!13980 Nil!63461 (Cons!63461 (h!69909 s!2326) Nil!63461)) (t!376917 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2097 (List!63585 C!31794 List!63585 List!63585) Unit!156580)

(assert (=> b!5754638 (= lt!2287894 (lemmaMoveElementToOtherListKeepsConcatEq!2097 Nil!63461 (h!69909 s!2326) (t!376917 s!2326) s!2326))))

(assert (=> b!5754638 (= e!3536533 (findConcatSeparation!2185 (regOne!32036 r!7292) (regTwo!32036 r!7292) (++!13980 Nil!63461 (Cons!63461 (h!69909 s!2326) Nil!63461)) (t!376917 s!2326) s!2326))))

(declare-fun b!5754639 () Bool)

(assert (=> b!5754639 (= e!3536534 (= (++!13980 (_1!36162 (get!21895 lt!2287893)) (_2!36162 (get!21895 lt!2287893))) s!2326))))

(assert (= (and d!1813561 res!2429447) b!5754633))

(assert (= (and d!1813561 c!1016829) b!5754634))

(assert (= (and d!1813561 (not c!1016829)) b!5754631))

(assert (= (and b!5754631 c!1016830) b!5754637))

(assert (= (and b!5754631 (not c!1016830)) b!5754638))

(assert (= (and d!1813561 res!2429448) b!5754632))

(assert (= (and b!5754632 res!2429449) b!5754636))

(assert (= (and b!5754636 res!2429445) b!5754639))

(assert (= (and d!1813561 (not res!2429446)) b!5754635))

(assert (=> b!5754633 m!6703628))

(declare-fun m!6704126 () Bool)

(assert (=> b!5754632 m!6704126))

(declare-fun m!6704128 () Bool)

(assert (=> b!5754632 m!6704128))

(declare-fun m!6704130 () Bool)

(assert (=> b!5754635 m!6704130))

(assert (=> b!5754639 m!6704126))

(declare-fun m!6704132 () Bool)

(assert (=> b!5754639 m!6704132))

(assert (=> d!1813561 m!6704130))

(declare-fun m!6704134 () Bool)

(assert (=> d!1813561 m!6704134))

(declare-fun m!6704136 () Bool)

(assert (=> d!1813561 m!6704136))

(assert (=> b!5754636 m!6704126))

(declare-fun m!6704138 () Bool)

(assert (=> b!5754636 m!6704138))

(declare-fun m!6704140 () Bool)

(assert (=> b!5754638 m!6704140))

(assert (=> b!5754638 m!6704140))

(declare-fun m!6704142 () Bool)

(assert (=> b!5754638 m!6704142))

(declare-fun m!6704144 () Bool)

(assert (=> b!5754638 m!6704144))

(assert (=> b!5754638 m!6704140))

(declare-fun m!6704146 () Bool)

(assert (=> b!5754638 m!6704146))

(assert (=> b!5754083 d!1813561))

(declare-fun d!1813563 () Bool)

(declare-fun choose!43625 (Int) Bool)

(assert (=> d!1813563 (= (Exists!2862 lambda!312286) (choose!43625 lambda!312286))))

(declare-fun bs!1348414 () Bool)

(assert (= bs!1348414 d!1813563))

(declare-fun m!6704148 () Bool)

(assert (=> bs!1348414 m!6704148))

(assert (=> b!5754083 d!1813563))

(declare-fun d!1813565 () Bool)

(assert (=> d!1813565 (= (Exists!2862 lambda!312287) (choose!43625 lambda!312287))))

(declare-fun bs!1348415 () Bool)

(assert (= bs!1348415 d!1813565))

(declare-fun m!6704150 () Bool)

(assert (=> bs!1348415 m!6704150))

(assert (=> b!5754083 d!1813565))

(declare-fun bs!1348416 () Bool)

(declare-fun d!1813567 () Bool)

(assert (= bs!1348416 (and d!1813567 b!5754078)))

(declare-fun lambda!312349 () Int)

(assert (=> bs!1348416 (= (and (= s!2326 Nil!63461) (= (regOne!32036 r!7292) (reg!16091 (regOne!32036 r!7292))) (= (regTwo!32036 r!7292) lt!2287677)) (= lambda!312349 lambda!312289))))

(assert (=> bs!1348416 (not (= lambda!312349 lambda!312290))))

(assert (=> bs!1348416 (not (= lambda!312349 lambda!312291))))

(declare-fun bs!1348417 () Bool)

(assert (= bs!1348417 (and d!1813567 b!5754083)))

(assert (=> bs!1348417 (not (= lambda!312349 lambda!312287))))

(declare-fun bs!1348418 () Bool)

(assert (= bs!1348418 (and d!1813567 b!5754497)))

(assert (=> bs!1348418 (not (= lambda!312349 lambda!312344))))

(declare-fun bs!1348419 () Bool)

(assert (= bs!1348419 (and d!1813567 b!5754494)))

(assert (=> bs!1348419 (not (= lambda!312349 lambda!312343))))

(assert (=> bs!1348417 (= lambda!312349 lambda!312286)))

(assert (=> d!1813567 true))

(assert (=> d!1813567 true))

(assert (=> d!1813567 true))

(assert (=> d!1813567 (= (isDefined!12474 (findConcatSeparation!2185 (regOne!32036 r!7292) (regTwo!32036 r!7292) Nil!63461 s!2326 s!2326)) (Exists!2862 lambda!312349))))

(declare-fun lt!2287898 () Unit!156580)

(declare-fun choose!43626 (Regex!15762 Regex!15762 List!63585) Unit!156580)

(assert (=> d!1813567 (= lt!2287898 (choose!43626 (regOne!32036 r!7292) (regTwo!32036 r!7292) s!2326))))

(assert (=> d!1813567 (validRegex!7498 (regOne!32036 r!7292))))

(assert (=> d!1813567 (= (lemmaFindConcatSeparationEquivalentToExists!1949 (regOne!32036 r!7292) (regTwo!32036 r!7292) s!2326) lt!2287898)))

(declare-fun bs!1348420 () Bool)

(assert (= bs!1348420 d!1813567))

(assert (=> bs!1348420 m!6703750))

(assert (=> bs!1348420 m!6703752))

(declare-fun m!6704152 () Bool)

(assert (=> bs!1348420 m!6704152))

(assert (=> bs!1348420 m!6704136))

(declare-fun m!6704154 () Bool)

(assert (=> bs!1348420 m!6704154))

(assert (=> bs!1348420 m!6703750))

(assert (=> b!5754083 d!1813567))

(declare-fun bs!1348421 () Bool)

(declare-fun d!1813571 () Bool)

(assert (= bs!1348421 (and d!1813571 b!5754078)))

(declare-fun lambda!312354 () Int)

(assert (=> bs!1348421 (= (and (= s!2326 Nil!63461) (= (regOne!32036 r!7292) (reg!16091 (regOne!32036 r!7292))) (= (regTwo!32036 r!7292) lt!2287677)) (= lambda!312354 lambda!312289))))

(declare-fun bs!1348422 () Bool)

(assert (= bs!1348422 (and d!1813571 d!1813567)))

(assert (=> bs!1348422 (= lambda!312354 lambda!312349)))

(assert (=> bs!1348421 (not (= lambda!312354 lambda!312290))))

(assert (=> bs!1348421 (not (= lambda!312354 lambda!312291))))

(declare-fun bs!1348423 () Bool)

(assert (= bs!1348423 (and d!1813571 b!5754083)))

(assert (=> bs!1348423 (not (= lambda!312354 lambda!312287))))

(declare-fun bs!1348424 () Bool)

(assert (= bs!1348424 (and d!1813571 b!5754497)))

(assert (=> bs!1348424 (not (= lambda!312354 lambda!312344))))

(declare-fun bs!1348425 () Bool)

(assert (= bs!1348425 (and d!1813571 b!5754494)))

(assert (=> bs!1348425 (not (= lambda!312354 lambda!312343))))

(assert (=> bs!1348423 (= lambda!312354 lambda!312286)))

(assert (=> d!1813571 true))

(assert (=> d!1813571 true))

(assert (=> d!1813571 true))

(declare-fun bs!1348426 () Bool)

(assert (= bs!1348426 d!1813571))

(declare-fun lambda!312357 () Int)

(assert (=> bs!1348426 (not (= lambda!312357 lambda!312354))))

(assert (=> bs!1348421 (not (= lambda!312357 lambda!312289))))

(assert (=> bs!1348422 (not (= lambda!312357 lambda!312349))))

(assert (=> bs!1348421 (= (and (= s!2326 Nil!63461) (= (regOne!32036 r!7292) (reg!16091 (regOne!32036 r!7292))) (= (regTwo!32036 r!7292) lt!2287677)) (= lambda!312357 lambda!312290))))

(assert (=> bs!1348421 (not (= lambda!312357 lambda!312291))))

(assert (=> bs!1348423 (= lambda!312357 lambda!312287)))

(assert (=> bs!1348424 (= (and (= (regOne!32036 r!7292) (regOne!32036 lt!2287687)) (= (regTwo!32036 r!7292) (regTwo!32036 lt!2287687))) (= lambda!312357 lambda!312344))))

(assert (=> bs!1348425 (not (= lambda!312357 lambda!312343))))

(assert (=> bs!1348423 (not (= lambda!312357 lambda!312286))))

(assert (=> d!1813571 true))

(assert (=> d!1813571 true))

(assert (=> d!1813571 true))

(assert (=> d!1813571 (= (Exists!2862 lambda!312354) (Exists!2862 lambda!312357))))

(declare-fun lt!2287901 () Unit!156580)

(declare-fun choose!43627 (Regex!15762 Regex!15762 List!63585) Unit!156580)

(assert (=> d!1813571 (= lt!2287901 (choose!43627 (regOne!32036 r!7292) (regTwo!32036 r!7292) s!2326))))

(assert (=> d!1813571 (validRegex!7498 (regOne!32036 r!7292))))

(assert (=> d!1813571 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1491 (regOne!32036 r!7292) (regTwo!32036 r!7292) s!2326) lt!2287901)))

(declare-fun m!6704168 () Bool)

(assert (=> bs!1348426 m!6704168))

(declare-fun m!6704170 () Bool)

(assert (=> bs!1348426 m!6704170))

(declare-fun m!6704172 () Bool)

(assert (=> bs!1348426 m!6704172))

(assert (=> bs!1348426 m!6704136))

(assert (=> b!5754083 d!1813571))

(declare-fun d!1813575 () Bool)

(declare-fun isEmpty!35352 (Option!15771) Bool)

(assert (=> d!1813575 (= (isDefined!12474 (findConcatSeparation!2185 (regOne!32036 r!7292) (regTwo!32036 r!7292) Nil!63461 s!2326 s!2326)) (not (isEmpty!35352 (findConcatSeparation!2185 (regOne!32036 r!7292) (regTwo!32036 r!7292) Nil!63461 s!2326 s!2326))))))

(declare-fun bs!1348427 () Bool)

(assert (= bs!1348427 d!1813575))

(assert (=> bs!1348427 m!6703750))

(declare-fun m!6704174 () Bool)

(assert (=> bs!1348427 m!6704174))

(assert (=> b!5754083 d!1813575))

(declare-fun bs!1348428 () Bool)

(declare-fun d!1813577 () Bool)

(assert (= bs!1348428 (and d!1813577 b!5754066)))

(declare-fun lambda!312360 () Int)

(assert (=> bs!1348428 (= lambda!312360 lambda!312288)))

(declare-fun bs!1348429 () Bool)

(assert (= bs!1348429 (and d!1813577 d!1813511)))

(assert (=> bs!1348429 (= lambda!312360 lambda!312326)))

(assert (=> d!1813577 true))

(assert (=> d!1813577 (= (derivationStepZipper!1845 lt!2287704 (h!69909 s!2326)) (flatMap!1375 lt!2287704 lambda!312360))))

(declare-fun bs!1348430 () Bool)

(assert (= bs!1348430 d!1813577))

(declare-fun m!6704176 () Bool)

(assert (=> bs!1348430 m!6704176))

(assert (=> b!5754081 d!1813577))

(declare-fun d!1813579 () Bool)

(assert (=> d!1813579 (= (flatMap!1375 lt!2287704 lambda!312288) (choose!43620 lt!2287704 lambda!312288))))

(declare-fun bs!1348431 () Bool)

(assert (= bs!1348431 d!1813579))

(declare-fun m!6704178 () Bool)

(assert (=> bs!1348431 m!6704178))

(assert (=> b!5754081 d!1813579))

(assert (=> b!5754081 d!1813531))

(declare-fun d!1813581 () Bool)

(assert (=> d!1813581 (= (flatMap!1375 lt!2287704 lambda!312288) (dynLambda!24846 lambda!312288 lt!2287720))))

(declare-fun lt!2287902 () Unit!156580)

(assert (=> d!1813581 (= lt!2287902 (choose!43621 lt!2287704 lt!2287720 lambda!312288))))

(assert (=> d!1813581 (= lt!2287704 (set.insert lt!2287720 (as set.empty (Set Context!10292))))))

(assert (=> d!1813581 (= (lemmaFlatMapOnSingletonSet!907 lt!2287704 lt!2287720 lambda!312288) lt!2287902)))

(declare-fun b_lambda!217387 () Bool)

(assert (=> (not b_lambda!217387) (not d!1813581)))

(declare-fun bs!1348432 () Bool)

(assert (= bs!1348432 d!1813581))

(assert (=> bs!1348432 m!6703656))

(declare-fun m!6704180 () Bool)

(assert (=> bs!1348432 m!6704180))

(declare-fun m!6704182 () Bool)

(assert (=> bs!1348432 m!6704182))

(assert (=> bs!1348432 m!6703654))

(assert (=> b!5754081 d!1813581))

(declare-fun d!1813583 () Bool)

(declare-fun lt!2287903 () Regex!15762)

(assert (=> d!1813583 (validRegex!7498 lt!2287903)))

(assert (=> d!1813583 (= lt!2287903 (generalisedUnion!1625 (unfocusZipperList!1190 (Cons!63463 lt!2287682 Nil!63463))))))

(assert (=> d!1813583 (= (unfocusZipper!1504 (Cons!63463 lt!2287682 Nil!63463)) lt!2287903)))

(declare-fun bs!1348433 () Bool)

(assert (= bs!1348433 d!1813583))

(declare-fun m!6704184 () Bool)

(assert (=> bs!1348433 m!6704184))

(declare-fun m!6704186 () Bool)

(assert (=> bs!1348433 m!6704186))

(assert (=> bs!1348433 m!6704186))

(declare-fun m!6704188 () Bool)

(assert (=> bs!1348433 m!6704188))

(assert (=> b!5754100 d!1813583))

(declare-fun d!1813585 () Bool)

(declare-fun c!1016842 () Bool)

(assert (=> d!1813585 (= c!1016842 (isEmpty!35351 s!2326))))

(declare-fun e!3536565 () Bool)

(assert (=> d!1813585 (= (matchZipper!1900 z!1189 s!2326) e!3536565)))

(declare-fun b!5754690 () Bool)

(assert (=> b!5754690 (= e!3536565 (nullableZipper!1693 z!1189))))

(declare-fun b!5754691 () Bool)

(assert (=> b!5754691 (= e!3536565 (matchZipper!1900 (derivationStepZipper!1845 z!1189 (head!12168 s!2326)) (tail!11263 s!2326)))))

(assert (= (and d!1813585 c!1016842) b!5754690))

(assert (= (and d!1813585 (not c!1016842)) b!5754691))

(assert (=> d!1813585 m!6704010))

(declare-fun m!6704190 () Bool)

(assert (=> b!5754690 m!6704190))

(assert (=> b!5754691 m!6704002))

(assert (=> b!5754691 m!6704002))

(declare-fun m!6704192 () Bool)

(assert (=> b!5754691 m!6704192))

(assert (=> b!5754691 m!6704006))

(assert (=> b!5754691 m!6704192))

(assert (=> b!5754691 m!6704006))

(declare-fun m!6704194 () Bool)

(assert (=> b!5754691 m!6704194))

(assert (=> b!5754079 d!1813585))

(declare-fun b!5754692 () Bool)

(declare-fun res!2429485 () Bool)

(declare-fun e!3536569 () Bool)

(assert (=> b!5754692 (=> res!2429485 e!3536569)))

(assert (=> b!5754692 (= res!2429485 (not (is-ElementMatch!15762 (regTwo!32036 r!7292))))))

(declare-fun e!3536567 () Bool)

(assert (=> b!5754692 (= e!3536567 e!3536569)))

(declare-fun b!5754693 () Bool)

(declare-fun e!3536572 () Bool)

(assert (=> b!5754693 (= e!3536569 e!3536572)))

(declare-fun res!2429484 () Bool)

(assert (=> b!5754693 (=> (not res!2429484) (not e!3536572))))

(declare-fun lt!2287904 () Bool)

(assert (=> b!5754693 (= res!2429484 (not lt!2287904))))

(declare-fun b!5754694 () Bool)

(declare-fun e!3536571 () Bool)

(assert (=> b!5754694 (= e!3536571 e!3536567)))

(declare-fun c!1016845 () Bool)

(assert (=> b!5754694 (= c!1016845 (is-EmptyLang!15762 (regTwo!32036 r!7292)))))

(declare-fun d!1813587 () Bool)

(assert (=> d!1813587 e!3536571))

(declare-fun c!1016843 () Bool)

(assert (=> d!1813587 (= c!1016843 (is-EmptyExpr!15762 (regTwo!32036 r!7292)))))

(declare-fun e!3536566 () Bool)

(assert (=> d!1813587 (= lt!2287904 e!3536566)))

(declare-fun c!1016844 () Bool)

(assert (=> d!1813587 (= c!1016844 (isEmpty!35351 s!2326))))

(assert (=> d!1813587 (validRegex!7498 (regTwo!32036 r!7292))))

(assert (=> d!1813587 (= (matchR!7947 (regTwo!32036 r!7292) s!2326) lt!2287904)))

(declare-fun b!5754695 () Bool)

(assert (=> b!5754695 (= e!3536566 (matchR!7947 (derivativeStep!4547 (regTwo!32036 r!7292) (head!12168 s!2326)) (tail!11263 s!2326)))))

(declare-fun b!5754696 () Bool)

(declare-fun res!2429479 () Bool)

(declare-fun e!3536570 () Bool)

(assert (=> b!5754696 (=> (not res!2429479) (not e!3536570))))

(declare-fun call!441410 () Bool)

(assert (=> b!5754696 (= res!2429479 (not call!441410))))

(declare-fun b!5754697 () Bool)

(declare-fun res!2429481 () Bool)

(assert (=> b!5754697 (=> res!2429481 e!3536569)))

(assert (=> b!5754697 (= res!2429481 e!3536570)))

(declare-fun res!2429483 () Bool)

(assert (=> b!5754697 (=> (not res!2429483) (not e!3536570))))

(assert (=> b!5754697 (= res!2429483 lt!2287904)))

(declare-fun bm!441405 () Bool)

(assert (=> bm!441405 (= call!441410 (isEmpty!35351 s!2326))))

(declare-fun b!5754698 () Bool)

(assert (=> b!5754698 (= e!3536571 (= lt!2287904 call!441410))))

(declare-fun b!5754699 () Bool)

(declare-fun res!2429482 () Bool)

(declare-fun e!3536568 () Bool)

(assert (=> b!5754699 (=> res!2429482 e!3536568)))

(assert (=> b!5754699 (= res!2429482 (not (isEmpty!35351 (tail!11263 s!2326))))))

(declare-fun b!5754700 () Bool)

(assert (=> b!5754700 (= e!3536572 e!3536568)))

(declare-fun res!2429480 () Bool)

(assert (=> b!5754700 (=> res!2429480 e!3536568)))

(assert (=> b!5754700 (= res!2429480 call!441410)))

(declare-fun b!5754701 () Bool)

(assert (=> b!5754701 (= e!3536566 (nullable!5794 (regTwo!32036 r!7292)))))

(declare-fun b!5754702 () Bool)

(assert (=> b!5754702 (= e!3536567 (not lt!2287904))))

(declare-fun b!5754703 () Bool)

(assert (=> b!5754703 (= e!3536570 (= (head!12168 s!2326) (c!1016690 (regTwo!32036 r!7292))))))

(declare-fun b!5754704 () Bool)

(declare-fun res!2429478 () Bool)

(assert (=> b!5754704 (=> (not res!2429478) (not e!3536570))))

(assert (=> b!5754704 (= res!2429478 (isEmpty!35351 (tail!11263 s!2326)))))

(declare-fun b!5754705 () Bool)

(assert (=> b!5754705 (= e!3536568 (not (= (head!12168 s!2326) (c!1016690 (regTwo!32036 r!7292)))))))

(assert (= (and d!1813587 c!1016844) b!5754701))

(assert (= (and d!1813587 (not c!1016844)) b!5754695))

(assert (= (and d!1813587 c!1016843) b!5754698))

(assert (= (and d!1813587 (not c!1016843)) b!5754694))

(assert (= (and b!5754694 c!1016845) b!5754702))

(assert (= (and b!5754694 (not c!1016845)) b!5754692))

(assert (= (and b!5754692 (not res!2429485)) b!5754697))

(assert (= (and b!5754697 res!2429483) b!5754696))

(assert (= (and b!5754696 res!2429479) b!5754704))

(assert (= (and b!5754704 res!2429478) b!5754703))

(assert (= (and b!5754697 (not res!2429481)) b!5754693))

(assert (= (and b!5754693 res!2429484) b!5754700))

(assert (= (and b!5754700 (not res!2429480)) b!5754699))

(assert (= (and b!5754699 (not res!2429482)) b!5754705))

(assert (= (or b!5754698 b!5754696 b!5754700) bm!441405))

(assert (=> b!5754695 m!6704002))

(assert (=> b!5754695 m!6704002))

(declare-fun m!6704196 () Bool)

(assert (=> b!5754695 m!6704196))

(assert (=> b!5754695 m!6704006))

(assert (=> b!5754695 m!6704196))

(assert (=> b!5754695 m!6704006))

(declare-fun m!6704198 () Bool)

(assert (=> b!5754695 m!6704198))

(assert (=> bm!441405 m!6704010))

(assert (=> b!5754705 m!6704002))

(assert (=> b!5754704 m!6704006))

(assert (=> b!5754704 m!6704006))

(assert (=> b!5754704 m!6704012))

(declare-fun m!6704200 () Bool)

(assert (=> b!5754701 m!6704200))

(assert (=> b!5754703 m!6704002))

(assert (=> d!1813587 m!6704010))

(declare-fun m!6704202 () Bool)

(assert (=> d!1813587 m!6704202))

(assert (=> b!5754699 m!6704006))

(assert (=> b!5754699 m!6704006))

(assert (=> b!5754699 m!6704012))

(assert (=> b!5754099 d!1813587))

(declare-fun b!5754706 () Bool)

(declare-fun res!2429493 () Bool)

(declare-fun e!3536576 () Bool)

(assert (=> b!5754706 (=> res!2429493 e!3536576)))

(assert (=> b!5754706 (= res!2429493 (not (is-ElementMatch!15762 lt!2287698)))))

(declare-fun e!3536574 () Bool)

(assert (=> b!5754706 (= e!3536574 e!3536576)))

(declare-fun b!5754707 () Bool)

(declare-fun e!3536579 () Bool)

(assert (=> b!5754707 (= e!3536576 e!3536579)))

(declare-fun res!2429492 () Bool)

(assert (=> b!5754707 (=> (not res!2429492) (not e!3536579))))

(declare-fun lt!2287905 () Bool)

(assert (=> b!5754707 (= res!2429492 (not lt!2287905))))

(declare-fun b!5754708 () Bool)

(declare-fun e!3536578 () Bool)

(assert (=> b!5754708 (= e!3536578 e!3536574)))

(declare-fun c!1016848 () Bool)

(assert (=> b!5754708 (= c!1016848 (is-EmptyLang!15762 lt!2287698))))

(declare-fun d!1813589 () Bool)

(assert (=> d!1813589 e!3536578))

(declare-fun c!1016846 () Bool)

(assert (=> d!1813589 (= c!1016846 (is-EmptyExpr!15762 lt!2287698))))

(declare-fun e!3536573 () Bool)

(assert (=> d!1813589 (= lt!2287905 e!3536573)))

(declare-fun c!1016847 () Bool)

(assert (=> d!1813589 (= c!1016847 (isEmpty!35351 s!2326))))

(assert (=> d!1813589 (validRegex!7498 lt!2287698)))

(assert (=> d!1813589 (= (matchR!7947 lt!2287698 s!2326) lt!2287905)))

(declare-fun b!5754709 () Bool)

(assert (=> b!5754709 (= e!3536573 (matchR!7947 (derivativeStep!4547 lt!2287698 (head!12168 s!2326)) (tail!11263 s!2326)))))

(declare-fun b!5754710 () Bool)

(declare-fun res!2429487 () Bool)

(declare-fun e!3536577 () Bool)

(assert (=> b!5754710 (=> (not res!2429487) (not e!3536577))))

(declare-fun call!441413 () Bool)

(assert (=> b!5754710 (= res!2429487 (not call!441413))))

(declare-fun b!5754711 () Bool)

(declare-fun res!2429489 () Bool)

(assert (=> b!5754711 (=> res!2429489 e!3536576)))

(assert (=> b!5754711 (= res!2429489 e!3536577)))

(declare-fun res!2429491 () Bool)

(assert (=> b!5754711 (=> (not res!2429491) (not e!3536577))))

(assert (=> b!5754711 (= res!2429491 lt!2287905)))

(declare-fun bm!441408 () Bool)

(assert (=> bm!441408 (= call!441413 (isEmpty!35351 s!2326))))

(declare-fun b!5754712 () Bool)

(assert (=> b!5754712 (= e!3536578 (= lt!2287905 call!441413))))

(declare-fun b!5754713 () Bool)

(declare-fun res!2429490 () Bool)

(declare-fun e!3536575 () Bool)

(assert (=> b!5754713 (=> res!2429490 e!3536575)))

(assert (=> b!5754713 (= res!2429490 (not (isEmpty!35351 (tail!11263 s!2326))))))

(declare-fun b!5754714 () Bool)

(assert (=> b!5754714 (= e!3536579 e!3536575)))

(declare-fun res!2429488 () Bool)

(assert (=> b!5754714 (=> res!2429488 e!3536575)))

(assert (=> b!5754714 (= res!2429488 call!441413)))

(declare-fun b!5754715 () Bool)

(assert (=> b!5754715 (= e!3536573 (nullable!5794 lt!2287698))))

(declare-fun b!5754716 () Bool)

(assert (=> b!5754716 (= e!3536574 (not lt!2287905))))

(declare-fun b!5754717 () Bool)

(assert (=> b!5754717 (= e!3536577 (= (head!12168 s!2326) (c!1016690 lt!2287698)))))

(declare-fun b!5754718 () Bool)

(declare-fun res!2429486 () Bool)

(assert (=> b!5754718 (=> (not res!2429486) (not e!3536577))))

(assert (=> b!5754718 (= res!2429486 (isEmpty!35351 (tail!11263 s!2326)))))

(declare-fun b!5754719 () Bool)

(assert (=> b!5754719 (= e!3536575 (not (= (head!12168 s!2326) (c!1016690 lt!2287698))))))

(assert (= (and d!1813589 c!1016847) b!5754715))

(assert (= (and d!1813589 (not c!1016847)) b!5754709))

(assert (= (and d!1813589 c!1016846) b!5754712))

(assert (= (and d!1813589 (not c!1016846)) b!5754708))

(assert (= (and b!5754708 c!1016848) b!5754716))

(assert (= (and b!5754708 (not c!1016848)) b!5754706))

(assert (= (and b!5754706 (not res!2429493)) b!5754711))

(assert (= (and b!5754711 res!2429491) b!5754710))

(assert (= (and b!5754710 res!2429487) b!5754718))

(assert (= (and b!5754718 res!2429486) b!5754717))

(assert (= (and b!5754711 (not res!2429489)) b!5754707))

(assert (= (and b!5754707 res!2429492) b!5754714))

(assert (= (and b!5754714 (not res!2429488)) b!5754713))

(assert (= (and b!5754713 (not res!2429490)) b!5754719))

(assert (= (or b!5754712 b!5754710 b!5754714) bm!441408))

(assert (=> b!5754709 m!6704002))

(assert (=> b!5754709 m!6704002))

(declare-fun m!6704204 () Bool)

(assert (=> b!5754709 m!6704204))

(assert (=> b!5754709 m!6704006))

(assert (=> b!5754709 m!6704204))

(assert (=> b!5754709 m!6704006))

(declare-fun m!6704206 () Bool)

(assert (=> b!5754709 m!6704206))

(assert (=> bm!441408 m!6704010))

(assert (=> b!5754719 m!6704002))

(assert (=> b!5754718 m!6704006))

(assert (=> b!5754718 m!6704006))

(assert (=> b!5754718 m!6704012))

(declare-fun m!6704208 () Bool)

(assert (=> b!5754715 m!6704208))

(assert (=> b!5754717 m!6704002))

(assert (=> d!1813589 m!6704010))

(declare-fun m!6704210 () Bool)

(assert (=> d!1813589 m!6704210))

(assert (=> b!5754713 m!6704006))

(assert (=> b!5754713 m!6704006))

(assert (=> b!5754713 m!6704012))

(assert (=> b!5754099 d!1813589))

(declare-fun d!1813591 () Bool)

(declare-fun c!1016849 () Bool)

(assert (=> d!1813591 (= c!1016849 (isEmpty!35351 s!2326))))

(declare-fun e!3536580 () Bool)

(assert (=> d!1813591 (= (matchZipper!1900 lt!2287704 s!2326) e!3536580)))

(declare-fun b!5754720 () Bool)

(assert (=> b!5754720 (= e!3536580 (nullableZipper!1693 lt!2287704))))

(declare-fun b!5754721 () Bool)

(assert (=> b!5754721 (= e!3536580 (matchZipper!1900 (derivationStepZipper!1845 lt!2287704 (head!12168 s!2326)) (tail!11263 s!2326)))))

(assert (= (and d!1813591 c!1016849) b!5754720))

(assert (= (and d!1813591 (not c!1016849)) b!5754721))

(assert (=> d!1813591 m!6704010))

(declare-fun m!6704212 () Bool)

(assert (=> b!5754720 m!6704212))

(assert (=> b!5754721 m!6704002))

(assert (=> b!5754721 m!6704002))

(declare-fun m!6704214 () Bool)

(assert (=> b!5754721 m!6704214))

(assert (=> b!5754721 m!6704006))

(assert (=> b!5754721 m!6704214))

(assert (=> b!5754721 m!6704006))

(declare-fun m!6704216 () Bool)

(assert (=> b!5754721 m!6704216))

(assert (=> b!5754099 d!1813591))

(declare-fun d!1813593 () Bool)

(assert (=> d!1813593 (= (matchR!7947 lt!2287698 s!2326) (matchZipper!1900 lt!2287704 s!2326))))

(declare-fun lt!2287908 () Unit!156580)

(declare-fun choose!43628 ((Set Context!10292) List!63587 Regex!15762 List!63585) Unit!156580)

(assert (=> d!1813593 (= lt!2287908 (choose!43628 lt!2287704 lt!2287693 lt!2287698 s!2326))))

(assert (=> d!1813593 (validRegex!7498 lt!2287698)))

(assert (=> d!1813593 (= (theoremZipperRegexEquiv!674 lt!2287704 lt!2287693 lt!2287698 s!2326) lt!2287908)))

(declare-fun bs!1348439 () Bool)

(assert (= bs!1348439 d!1813593))

(assert (=> bs!1348439 m!6703630))

(assert (=> bs!1348439 m!6703632))

(declare-fun m!6704224 () Bool)

(assert (=> bs!1348439 m!6704224))

(assert (=> bs!1348439 m!6704210))

(assert (=> b!5754099 d!1813593))

(declare-fun b!5754777 () Bool)

(declare-fun e!3536614 () Bool)

(declare-fun call!441423 () Bool)

(assert (=> b!5754777 (= e!3536614 call!441423)))

(declare-fun b!5754778 () Bool)

(declare-fun e!3536617 () Bool)

(declare-fun call!441424 () Bool)

(assert (=> b!5754778 (= e!3536617 call!441424)))

(declare-fun b!5754779 () Bool)

(declare-fun res!2429521 () Bool)

(declare-fun e!3536615 () Bool)

(assert (=> b!5754779 (=> res!2429521 e!3536615)))

(assert (=> b!5754779 (= res!2429521 (not (is-Concat!24607 r!7292)))))

(declare-fun e!3536618 () Bool)

(assert (=> b!5754779 (= e!3536618 e!3536615)))

(declare-fun b!5754780 () Bool)

(declare-fun e!3536622 () Bool)

(assert (=> b!5754780 (= e!3536622 e!3536618)))

(declare-fun c!1016864 () Bool)

(assert (=> b!5754780 (= c!1016864 (is-Union!15762 r!7292))))

(declare-fun b!5754781 () Bool)

(declare-fun res!2429523 () Bool)

(declare-fun e!3536616 () Bool)

(assert (=> b!5754781 (=> (not res!2429523) (not e!3536616))))

(declare-fun call!441422 () Bool)

(assert (=> b!5754781 (= res!2429523 call!441422)))

(assert (=> b!5754781 (= e!3536618 e!3536616)))

(declare-fun d!1813597 () Bool)

(declare-fun res!2429522 () Bool)

(declare-fun e!3536619 () Bool)

(assert (=> d!1813597 (=> res!2429522 e!3536619)))

(assert (=> d!1813597 (= res!2429522 (is-ElementMatch!15762 r!7292))))

(assert (=> d!1813597 (= (validRegex!7498 r!7292) e!3536619)))

(declare-fun bm!441417 () Bool)

(assert (=> bm!441417 (= call!441422 (validRegex!7498 (ite c!1016864 (regOne!32037 r!7292) (regOne!32036 r!7292))))))

(declare-fun b!5754782 () Bool)

(assert (=> b!5754782 (= e!3536619 e!3536622)))

(declare-fun c!1016865 () Bool)

(assert (=> b!5754782 (= c!1016865 (is-Star!15762 r!7292))))

(declare-fun b!5754783 () Bool)

(assert (=> b!5754783 (= e!3536615 e!3536617)))

(declare-fun res!2429519 () Bool)

(assert (=> b!5754783 (=> (not res!2429519) (not e!3536617))))

(assert (=> b!5754783 (= res!2429519 call!441422)))

(declare-fun b!5754784 () Bool)

(assert (=> b!5754784 (= e!3536616 call!441424)))

(declare-fun bm!441418 () Bool)

(assert (=> bm!441418 (= call!441424 call!441423)))

(declare-fun b!5754785 () Bool)

(assert (=> b!5754785 (= e!3536622 e!3536614)))

(declare-fun res!2429520 () Bool)

(assert (=> b!5754785 (= res!2429520 (not (nullable!5794 (reg!16091 r!7292))))))

(assert (=> b!5754785 (=> (not res!2429520) (not e!3536614))))

(declare-fun bm!441419 () Bool)

(assert (=> bm!441419 (= call!441423 (validRegex!7498 (ite c!1016865 (reg!16091 r!7292) (ite c!1016864 (regTwo!32037 r!7292) (regTwo!32036 r!7292)))))))

(assert (= (and d!1813597 (not res!2429522)) b!5754782))

(assert (= (and b!5754782 c!1016865) b!5754785))

(assert (= (and b!5754782 (not c!1016865)) b!5754780))

(assert (= (and b!5754785 res!2429520) b!5754777))

(assert (= (and b!5754780 c!1016864) b!5754781))

(assert (= (and b!5754780 (not c!1016864)) b!5754779))

(assert (= (and b!5754781 res!2429523) b!5754784))

(assert (= (and b!5754779 (not res!2429521)) b!5754783))

(assert (= (and b!5754783 res!2429519) b!5754778))

(assert (= (or b!5754784 b!5754778) bm!441418))

(assert (= (or b!5754781 b!5754783) bm!441417))

(assert (= (or b!5754777 bm!441418) bm!441419))

(declare-fun m!6704226 () Bool)

(assert (=> bm!441417 m!6704226))

(declare-fun m!6704228 () Bool)

(assert (=> b!5754785 m!6704228))

(declare-fun m!6704230 () Bool)

(assert (=> bm!441419 m!6704230))

(assert (=> start!591346 d!1813597))

(declare-fun d!1813599 () Bool)

(assert (=> d!1813599 (= (isDefined!12474 (findConcatSeparation!2185 (reg!16091 (regOne!32036 r!7292)) lt!2287677 Nil!63461 Nil!63461 Nil!63461)) (not (isEmpty!35352 (findConcatSeparation!2185 (reg!16091 (regOne!32036 r!7292)) lt!2287677 Nil!63461 Nil!63461 Nil!63461))))))

(declare-fun bs!1348440 () Bool)

(assert (= bs!1348440 d!1813599))

(assert (=> bs!1348440 m!6703712))

(declare-fun m!6704232 () Bool)

(assert (=> bs!1348440 m!6704232))

(assert (=> b!5754078 d!1813599))

(declare-fun d!1813601 () Bool)

(assert (=> d!1813601 (= (Exists!2862 lambda!312289) (choose!43625 lambda!312289))))

(declare-fun bs!1348441 () Bool)

(assert (= bs!1348441 d!1813601))

(declare-fun m!6704234 () Bool)

(assert (=> bs!1348441 m!6704234))

(assert (=> b!5754078 d!1813601))

(declare-fun b!5754788 () Bool)

(declare-fun res!2429535 () Bool)

(declare-fun e!3536626 () Bool)

(assert (=> b!5754788 (=> res!2429535 e!3536626)))

(assert (=> b!5754788 (= res!2429535 (not (is-ElementMatch!15762 lt!2287677)))))

(declare-fun e!3536624 () Bool)

(assert (=> b!5754788 (= e!3536624 e!3536626)))

(declare-fun b!5754789 () Bool)

(declare-fun e!3536629 () Bool)

(assert (=> b!5754789 (= e!3536626 e!3536629)))

(declare-fun res!2429534 () Bool)

(assert (=> b!5754789 (=> (not res!2429534) (not e!3536629))))

(declare-fun lt!2287911 () Bool)

(assert (=> b!5754789 (= res!2429534 (not lt!2287911))))

(declare-fun b!5754790 () Bool)

(declare-fun e!3536628 () Bool)

(assert (=> b!5754790 (= e!3536628 e!3536624)))

(declare-fun c!1016868 () Bool)

(assert (=> b!5754790 (= c!1016868 (is-EmptyLang!15762 lt!2287677))))

(declare-fun d!1813603 () Bool)

(assert (=> d!1813603 e!3536628))

(declare-fun c!1016866 () Bool)

(assert (=> d!1813603 (= c!1016866 (is-EmptyExpr!15762 lt!2287677))))

(declare-fun e!3536623 () Bool)

(assert (=> d!1813603 (= lt!2287911 e!3536623)))

(declare-fun c!1016867 () Bool)

(assert (=> d!1813603 (= c!1016867 (isEmpty!35351 Nil!63461))))

(assert (=> d!1813603 (validRegex!7498 lt!2287677)))

(assert (=> d!1813603 (= (matchR!7947 lt!2287677 Nil!63461) lt!2287911)))

(declare-fun b!5754791 () Bool)

(assert (=> b!5754791 (= e!3536623 (matchR!7947 (derivativeStep!4547 lt!2287677 (head!12168 Nil!63461)) (tail!11263 Nil!63461)))))

(declare-fun b!5754792 () Bool)

(declare-fun res!2429529 () Bool)

(declare-fun e!3536627 () Bool)

(assert (=> b!5754792 (=> (not res!2429529) (not e!3536627))))

(declare-fun call!441427 () Bool)

(assert (=> b!5754792 (= res!2429529 (not call!441427))))

(declare-fun b!5754793 () Bool)

(declare-fun res!2429531 () Bool)

(assert (=> b!5754793 (=> res!2429531 e!3536626)))

(assert (=> b!5754793 (= res!2429531 e!3536627)))

(declare-fun res!2429533 () Bool)

(assert (=> b!5754793 (=> (not res!2429533) (not e!3536627))))

(assert (=> b!5754793 (= res!2429533 lt!2287911)))

(declare-fun bm!441422 () Bool)

(assert (=> bm!441422 (= call!441427 (isEmpty!35351 Nil!63461))))

(declare-fun b!5754794 () Bool)

(assert (=> b!5754794 (= e!3536628 (= lt!2287911 call!441427))))

(declare-fun b!5754795 () Bool)

(declare-fun res!2429532 () Bool)

(declare-fun e!3536625 () Bool)

(assert (=> b!5754795 (=> res!2429532 e!3536625)))

(assert (=> b!5754795 (= res!2429532 (not (isEmpty!35351 (tail!11263 Nil!63461))))))

(declare-fun b!5754796 () Bool)

(assert (=> b!5754796 (= e!3536629 e!3536625)))

(declare-fun res!2429530 () Bool)

(assert (=> b!5754796 (=> res!2429530 e!3536625)))

(assert (=> b!5754796 (= res!2429530 call!441427)))

(declare-fun b!5754797 () Bool)

(assert (=> b!5754797 (= e!3536623 (nullable!5794 lt!2287677))))

(declare-fun b!5754798 () Bool)

(assert (=> b!5754798 (= e!3536624 (not lt!2287911))))

(declare-fun b!5754799 () Bool)

(assert (=> b!5754799 (= e!3536627 (= (head!12168 Nil!63461) (c!1016690 lt!2287677)))))

(declare-fun b!5754800 () Bool)

(declare-fun res!2429528 () Bool)

(assert (=> b!5754800 (=> (not res!2429528) (not e!3536627))))

(assert (=> b!5754800 (= res!2429528 (isEmpty!35351 (tail!11263 Nil!63461)))))

(declare-fun b!5754801 () Bool)

(assert (=> b!5754801 (= e!3536625 (not (= (head!12168 Nil!63461) (c!1016690 lt!2287677))))))

(assert (= (and d!1813603 c!1016867) b!5754797))

(assert (= (and d!1813603 (not c!1016867)) b!5754791))

(assert (= (and d!1813603 c!1016866) b!5754794))

(assert (= (and d!1813603 (not c!1016866)) b!5754790))

(assert (= (and b!5754790 c!1016868) b!5754798))

(assert (= (and b!5754790 (not c!1016868)) b!5754788))

(assert (= (and b!5754788 (not res!2429535)) b!5754793))

(assert (= (and b!5754793 res!2429533) b!5754792))

(assert (= (and b!5754792 res!2429529) b!5754800))

(assert (= (and b!5754800 res!2429528) b!5754799))

(assert (= (and b!5754793 (not res!2429531)) b!5754789))

(assert (= (and b!5754789 res!2429534) b!5754796))

(assert (= (and b!5754796 (not res!2429530)) b!5754795))

(assert (= (and b!5754795 (not res!2429532)) b!5754801))

(assert (= (or b!5754794 b!5754792 b!5754796) bm!441422))

(declare-fun m!6704236 () Bool)

(assert (=> b!5754791 m!6704236))

(assert (=> b!5754791 m!6704236))

(declare-fun m!6704238 () Bool)

(assert (=> b!5754791 m!6704238))

(declare-fun m!6704240 () Bool)

(assert (=> b!5754791 m!6704240))

(assert (=> b!5754791 m!6704238))

(assert (=> b!5754791 m!6704240))

(declare-fun m!6704242 () Bool)

(assert (=> b!5754791 m!6704242))

(declare-fun m!6704244 () Bool)

(assert (=> bm!441422 m!6704244))

(assert (=> b!5754801 m!6704236))

(assert (=> b!5754800 m!6704240))

(assert (=> b!5754800 m!6704240))

(declare-fun m!6704246 () Bool)

(assert (=> b!5754800 m!6704246))

(declare-fun m!6704248 () Bool)

(assert (=> b!5754797 m!6704248))

(assert (=> b!5754799 m!6704236))

(assert (=> d!1813603 m!6704244))

(declare-fun m!6704250 () Bool)

(assert (=> d!1813603 m!6704250))

(assert (=> b!5754795 m!6704240))

(assert (=> b!5754795 m!6704240))

(assert (=> b!5754795 m!6704246))

(assert (=> b!5754078 d!1813603))

(declare-fun bs!1348442 () Bool)

(declare-fun d!1813605 () Bool)

(assert (= bs!1348442 (and d!1813605 d!1813571)))

(declare-fun lambda!312363 () Int)

(assert (=> bs!1348442 (= (and (= Nil!63461 s!2326) (= (reg!16091 (regOne!32036 r!7292)) (regOne!32036 r!7292)) (= lt!2287677 (regTwo!32036 r!7292))) (= lambda!312363 lambda!312354))))

(declare-fun bs!1348443 () Bool)

(assert (= bs!1348443 (and d!1813605 b!5754078)))

(assert (=> bs!1348443 (= lambda!312363 lambda!312289)))

(declare-fun bs!1348444 () Bool)

(assert (= bs!1348444 (and d!1813605 d!1813567)))

(assert (=> bs!1348444 (= (and (= Nil!63461 s!2326) (= (reg!16091 (regOne!32036 r!7292)) (regOne!32036 r!7292)) (= lt!2287677 (regTwo!32036 r!7292))) (= lambda!312363 lambda!312349))))

(assert (=> bs!1348443 (not (= lambda!312363 lambda!312290))))

(assert (=> bs!1348443 (not (= lambda!312363 lambda!312291))))

(declare-fun bs!1348445 () Bool)

(assert (= bs!1348445 (and d!1813605 b!5754083)))

(assert (=> bs!1348445 (not (= lambda!312363 lambda!312287))))

(declare-fun bs!1348446 () Bool)

(assert (= bs!1348446 (and d!1813605 b!5754497)))

(assert (=> bs!1348446 (not (= lambda!312363 lambda!312344))))

(assert (=> bs!1348442 (not (= lambda!312363 lambda!312357))))

(declare-fun bs!1348447 () Bool)

(assert (= bs!1348447 (and d!1813605 b!5754494)))

(assert (=> bs!1348447 (not (= lambda!312363 lambda!312343))))

(assert (=> bs!1348445 (= (and (= Nil!63461 s!2326) (= (reg!16091 (regOne!32036 r!7292)) (regOne!32036 r!7292)) (= lt!2287677 (regTwo!32036 r!7292))) (= lambda!312363 lambda!312286))))

(assert (=> d!1813605 true))

(assert (=> d!1813605 true))

(assert (=> d!1813605 true))

(declare-fun lambda!312364 () Int)

(assert (=> bs!1348442 (not (= lambda!312364 lambda!312354))))

(declare-fun bs!1348448 () Bool)

(assert (= bs!1348448 d!1813605))

(assert (=> bs!1348448 (not (= lambda!312364 lambda!312363))))

(assert (=> bs!1348443 (not (= lambda!312364 lambda!312289))))

(assert (=> bs!1348444 (not (= lambda!312364 lambda!312349))))

(assert (=> bs!1348443 (= lambda!312364 lambda!312290)))

(assert (=> bs!1348443 (not (= lambda!312364 lambda!312291))))

(assert (=> bs!1348445 (= (and (= Nil!63461 s!2326) (= (reg!16091 (regOne!32036 r!7292)) (regOne!32036 r!7292)) (= lt!2287677 (regTwo!32036 r!7292))) (= lambda!312364 lambda!312287))))

(assert (=> bs!1348446 (= (and (= Nil!63461 s!2326) (= (reg!16091 (regOne!32036 r!7292)) (regOne!32036 lt!2287687)) (= lt!2287677 (regTwo!32036 lt!2287687))) (= lambda!312364 lambda!312344))))

(assert (=> bs!1348442 (= (and (= Nil!63461 s!2326) (= (reg!16091 (regOne!32036 r!7292)) (regOne!32036 r!7292)) (= lt!2287677 (regTwo!32036 r!7292))) (= lambda!312364 lambda!312357))))

(assert (=> bs!1348447 (not (= lambda!312364 lambda!312343))))

(assert (=> bs!1348445 (not (= lambda!312364 lambda!312286))))

(assert (=> d!1813605 true))

(assert (=> d!1813605 true))

(assert (=> d!1813605 true))

(assert (=> d!1813605 (= (Exists!2862 lambda!312363) (Exists!2862 lambda!312364))))

(declare-fun lt!2287912 () Unit!156580)

(assert (=> d!1813605 (= lt!2287912 (choose!43627 (reg!16091 (regOne!32036 r!7292)) lt!2287677 Nil!63461))))

(assert (=> d!1813605 (validRegex!7498 (reg!16091 (regOne!32036 r!7292)))))

(assert (=> d!1813605 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1491 (reg!16091 (regOne!32036 r!7292)) lt!2287677 Nil!63461) lt!2287912)))

(declare-fun m!6704260 () Bool)

(assert (=> bs!1348448 m!6704260))

(declare-fun m!6704262 () Bool)

(assert (=> bs!1348448 m!6704262))

(declare-fun m!6704264 () Bool)

(assert (=> bs!1348448 m!6704264))

(declare-fun m!6704266 () Bool)

(assert (=> bs!1348448 m!6704266))

(assert (=> b!5754078 d!1813605))

(declare-fun d!1813609 () Bool)

(assert (=> d!1813609 (= (matchR!7947 lt!2287677 Nil!63461) (matchRSpec!2865 lt!2287677 Nil!63461))))

(declare-fun lt!2287914 () Unit!156580)

(assert (=> d!1813609 (= lt!2287914 (choose!43622 lt!2287677 Nil!63461))))

(assert (=> d!1813609 (validRegex!7498 lt!2287677)))

(assert (=> d!1813609 (= (mainMatchTheorem!2865 lt!2287677 Nil!63461) lt!2287914)))

(declare-fun bs!1348449 () Bool)

(assert (= bs!1348449 d!1813609))

(assert (=> bs!1348449 m!6703706))

(assert (=> bs!1348449 m!6703704))

(declare-fun m!6704268 () Bool)

(assert (=> bs!1348449 m!6704268))

(assert (=> bs!1348449 m!6704250))

(assert (=> b!5754078 d!1813609))

(declare-fun d!1813611 () Bool)

(assert (=> d!1813611 (= (Exists!2862 lambda!312290) (choose!43625 lambda!312290))))

(declare-fun bs!1348450 () Bool)

(assert (= bs!1348450 d!1813611))

(declare-fun m!6704270 () Bool)

(assert (=> bs!1348450 m!6704270))

(assert (=> b!5754078 d!1813611))

(declare-fun b!5754828 () Bool)

(declare-fun res!2429548 () Bool)

(declare-fun e!3536641 () Bool)

(assert (=> b!5754828 (=> (not res!2429548) (not e!3536641))))

(declare-fun lt!2287920 () List!63585)

(declare-fun size!40070 (List!63585) Int)

(assert (=> b!5754828 (= res!2429548 (= (size!40070 lt!2287920) (+ (size!40070 Nil!63461) (size!40070 s!2326))))))

(declare-fun d!1813613 () Bool)

(assert (=> d!1813613 e!3536641))

(declare-fun res!2429549 () Bool)

(assert (=> d!1813613 (=> (not res!2429549) (not e!3536641))))

(declare-fun content!11577 (List!63585) (Set C!31794))

(assert (=> d!1813613 (= res!2429549 (= (content!11577 lt!2287920) (set.union (content!11577 Nil!63461) (content!11577 s!2326))))))

(declare-fun e!3536642 () List!63585)

(assert (=> d!1813613 (= lt!2287920 e!3536642)))

(declare-fun c!1016876 () Bool)

(assert (=> d!1813613 (= c!1016876 (is-Nil!63461 Nil!63461))))

(assert (=> d!1813613 (= (++!13980 Nil!63461 s!2326) lt!2287920)))

(declare-fun b!5754826 () Bool)

(assert (=> b!5754826 (= e!3536642 s!2326)))

(declare-fun b!5754829 () Bool)

(assert (=> b!5754829 (= e!3536641 (or (not (= s!2326 Nil!63461)) (= lt!2287920 Nil!63461)))))

(declare-fun b!5754827 () Bool)

(assert (=> b!5754827 (= e!3536642 (Cons!63461 (h!69909 Nil!63461) (++!13980 (t!376917 Nil!63461) s!2326)))))

(assert (= (and d!1813613 c!1016876) b!5754826))

(assert (= (and d!1813613 (not c!1016876)) b!5754827))

(assert (= (and d!1813613 res!2429549) b!5754828))

(assert (= (and b!5754828 res!2429548) b!5754829))

(declare-fun m!6704276 () Bool)

(assert (=> b!5754828 m!6704276))

(declare-fun m!6704278 () Bool)

(assert (=> b!5754828 m!6704278))

(declare-fun m!6704280 () Bool)

(assert (=> b!5754828 m!6704280))

(declare-fun m!6704282 () Bool)

(assert (=> d!1813613 m!6704282))

(declare-fun m!6704284 () Bool)

(assert (=> d!1813613 m!6704284))

(declare-fun m!6704286 () Bool)

(assert (=> d!1813613 m!6704286))

(declare-fun m!6704288 () Bool)

(assert (=> b!5754827 m!6704288))

(assert (=> b!5754078 d!1813613))

(declare-fun d!1813619 () Bool)

(declare-fun e!3536645 () Bool)

(assert (=> d!1813619 e!3536645))

(declare-fun res!2429551 () Bool)

(assert (=> d!1813619 (=> res!2429551 e!3536645)))

(declare-fun e!3536644 () Bool)

(assert (=> d!1813619 (= res!2429551 e!3536644)))

(declare-fun res!2429553 () Bool)

(assert (=> d!1813619 (=> (not res!2429553) (not e!3536644))))

(declare-fun lt!2287921 () Option!15771)

(assert (=> d!1813619 (= res!2429553 (isDefined!12474 lt!2287921))))

(declare-fun e!3536647 () Option!15771)

(assert (=> d!1813619 (= lt!2287921 e!3536647)))

(declare-fun c!1016877 () Bool)

(declare-fun e!3536646 () Bool)

(assert (=> d!1813619 (= c!1016877 e!3536646)))

(declare-fun res!2429552 () Bool)

(assert (=> d!1813619 (=> (not res!2429552) (not e!3536646))))

(assert (=> d!1813619 (= res!2429552 (matchR!7947 (reg!16091 (regOne!32036 r!7292)) Nil!63461))))

(assert (=> d!1813619 (validRegex!7498 (reg!16091 (regOne!32036 r!7292)))))

(assert (=> d!1813619 (= (findConcatSeparation!2185 (reg!16091 (regOne!32036 r!7292)) lt!2287677 Nil!63461 Nil!63461 Nil!63461) lt!2287921)))

(declare-fun b!5754830 () Bool)

(declare-fun e!3536643 () Option!15771)

(assert (=> b!5754830 (= e!3536647 e!3536643)))

(declare-fun c!1016878 () Bool)

(assert (=> b!5754830 (= c!1016878 (is-Nil!63461 Nil!63461))))

(declare-fun b!5754831 () Bool)

(declare-fun res!2429554 () Bool)

(assert (=> b!5754831 (=> (not res!2429554) (not e!3536644))))

(assert (=> b!5754831 (= res!2429554 (matchR!7947 (reg!16091 (regOne!32036 r!7292)) (_1!36162 (get!21895 lt!2287921))))))

(declare-fun b!5754832 () Bool)

(assert (=> b!5754832 (= e!3536646 (matchR!7947 lt!2287677 Nil!63461))))

(declare-fun b!5754833 () Bool)

(assert (=> b!5754833 (= e!3536647 (Some!15770 (tuple2!65719 Nil!63461 Nil!63461)))))

(declare-fun b!5754834 () Bool)

(assert (=> b!5754834 (= e!3536645 (not (isDefined!12474 lt!2287921)))))

(declare-fun b!5754835 () Bool)

(declare-fun res!2429550 () Bool)

(assert (=> b!5754835 (=> (not res!2429550) (not e!3536644))))

(assert (=> b!5754835 (= res!2429550 (matchR!7947 lt!2287677 (_2!36162 (get!21895 lt!2287921))))))

(declare-fun b!5754836 () Bool)

(assert (=> b!5754836 (= e!3536643 None!15770)))

(declare-fun b!5754837 () Bool)

(declare-fun lt!2287923 () Unit!156580)

(declare-fun lt!2287922 () Unit!156580)

(assert (=> b!5754837 (= lt!2287923 lt!2287922)))

(assert (=> b!5754837 (= (++!13980 (++!13980 Nil!63461 (Cons!63461 (h!69909 Nil!63461) Nil!63461)) (t!376917 Nil!63461)) Nil!63461)))

(assert (=> b!5754837 (= lt!2287922 (lemmaMoveElementToOtherListKeepsConcatEq!2097 Nil!63461 (h!69909 Nil!63461) (t!376917 Nil!63461) Nil!63461))))

(assert (=> b!5754837 (= e!3536643 (findConcatSeparation!2185 (reg!16091 (regOne!32036 r!7292)) lt!2287677 (++!13980 Nil!63461 (Cons!63461 (h!69909 Nil!63461) Nil!63461)) (t!376917 Nil!63461) Nil!63461))))

(declare-fun b!5754838 () Bool)

(assert (=> b!5754838 (= e!3536644 (= (++!13980 (_1!36162 (get!21895 lt!2287921)) (_2!36162 (get!21895 lt!2287921))) Nil!63461))))

(assert (= (and d!1813619 res!2429552) b!5754832))

(assert (= (and d!1813619 c!1016877) b!5754833))

(assert (= (and d!1813619 (not c!1016877)) b!5754830))

(assert (= (and b!5754830 c!1016878) b!5754836))

(assert (= (and b!5754830 (not c!1016878)) b!5754837))

(assert (= (and d!1813619 res!2429553) b!5754831))

(assert (= (and b!5754831 res!2429554) b!5754835))

(assert (= (and b!5754835 res!2429550) b!5754838))

(assert (= (and d!1813619 (not res!2429551)) b!5754834))

(assert (=> b!5754832 m!6703706))

(declare-fun m!6704292 () Bool)

(assert (=> b!5754831 m!6704292))

(declare-fun m!6704294 () Bool)

(assert (=> b!5754831 m!6704294))

(declare-fun m!6704296 () Bool)

(assert (=> b!5754834 m!6704296))

(assert (=> b!5754838 m!6704292))

(declare-fun m!6704298 () Bool)

(assert (=> b!5754838 m!6704298))

(assert (=> d!1813619 m!6704296))

(declare-fun m!6704300 () Bool)

(assert (=> d!1813619 m!6704300))

(assert (=> d!1813619 m!6704266))

(assert (=> b!5754835 m!6704292))

(declare-fun m!6704302 () Bool)

(assert (=> b!5754835 m!6704302))

(declare-fun m!6704304 () Bool)

(assert (=> b!5754837 m!6704304))

(assert (=> b!5754837 m!6704304))

(declare-fun m!6704306 () Bool)

(assert (=> b!5754837 m!6704306))

(declare-fun m!6704308 () Bool)

(assert (=> b!5754837 m!6704308))

(assert (=> b!5754837 m!6704304))

(declare-fun m!6704310 () Bool)

(assert (=> b!5754837 m!6704310))

(assert (=> b!5754078 d!1813619))

(declare-fun bs!1348456 () Bool)

(declare-fun d!1813623 () Bool)

(assert (= bs!1348456 (and d!1813623 d!1813571)))

(declare-fun lambda!312372 () Int)

(assert (=> bs!1348456 (= (and (= Nil!63461 s!2326) (= (reg!16091 (regOne!32036 r!7292)) (regOne!32036 r!7292)) (= (Star!15762 (reg!16091 (regOne!32036 r!7292))) (regTwo!32036 r!7292))) (= lambda!312372 lambda!312354))))

(declare-fun bs!1348457 () Bool)

(assert (= bs!1348457 (and d!1813623 d!1813605)))

(assert (=> bs!1348457 (= (= (Star!15762 (reg!16091 (regOne!32036 r!7292))) lt!2287677) (= lambda!312372 lambda!312363))))

(declare-fun bs!1348458 () Bool)

(assert (= bs!1348458 (and d!1813623 b!5754078)))

(assert (=> bs!1348458 (= (= (Star!15762 (reg!16091 (regOne!32036 r!7292))) lt!2287677) (= lambda!312372 lambda!312289))))

(declare-fun bs!1348459 () Bool)

(assert (= bs!1348459 (and d!1813623 d!1813567)))

(assert (=> bs!1348459 (= (and (= Nil!63461 s!2326) (= (reg!16091 (regOne!32036 r!7292)) (regOne!32036 r!7292)) (= (Star!15762 (reg!16091 (regOne!32036 r!7292))) (regTwo!32036 r!7292))) (= lambda!312372 lambda!312349))))

(assert (=> bs!1348457 (not (= lambda!312372 lambda!312364))))

(assert (=> bs!1348458 (not (= lambda!312372 lambda!312290))))

(assert (=> bs!1348458 (not (= lambda!312372 lambda!312291))))

(declare-fun bs!1348460 () Bool)

(assert (= bs!1348460 (and d!1813623 b!5754083)))

(assert (=> bs!1348460 (not (= lambda!312372 lambda!312287))))

(declare-fun bs!1348461 () Bool)

(assert (= bs!1348461 (and d!1813623 b!5754497)))

(assert (=> bs!1348461 (not (= lambda!312372 lambda!312344))))

(assert (=> bs!1348456 (not (= lambda!312372 lambda!312357))))

(declare-fun bs!1348462 () Bool)

(assert (= bs!1348462 (and d!1813623 b!5754494)))

(assert (=> bs!1348462 (not (= lambda!312372 lambda!312343))))

(assert (=> bs!1348460 (= (and (= Nil!63461 s!2326) (= (reg!16091 (regOne!32036 r!7292)) (regOne!32036 r!7292)) (= (Star!15762 (reg!16091 (regOne!32036 r!7292))) (regTwo!32036 r!7292))) (= lambda!312372 lambda!312286))))

(assert (=> d!1813623 true))

(assert (=> d!1813623 true))

(declare-fun lambda!312373 () Int)

(assert (=> bs!1348456 (not (= lambda!312373 lambda!312354))))

(assert (=> bs!1348457 (not (= lambda!312373 lambda!312363))))

(assert (=> bs!1348458 (not (= lambda!312373 lambda!312289))))

(assert (=> bs!1348459 (not (= lambda!312373 lambda!312349))))

(assert (=> bs!1348457 (not (= lambda!312373 lambda!312364))))

(assert (=> bs!1348458 (not (= lambda!312373 lambda!312290))))

(assert (=> bs!1348460 (not (= lambda!312373 lambda!312287))))

(declare-fun bs!1348463 () Bool)

(assert (= bs!1348463 d!1813623))

(assert (=> bs!1348463 (not (= lambda!312373 lambda!312372))))

(assert (=> bs!1348458 (= (= (Star!15762 (reg!16091 (regOne!32036 r!7292))) lt!2287677) (= lambda!312373 lambda!312291))))

(assert (=> bs!1348461 (not (= lambda!312373 lambda!312344))))

(assert (=> bs!1348456 (not (= lambda!312373 lambda!312357))))

(assert (=> bs!1348462 (= (and (= Nil!63461 s!2326) (= (reg!16091 (regOne!32036 r!7292)) (reg!16091 lt!2287687)) (= (Star!15762 (reg!16091 (regOne!32036 r!7292))) lt!2287687)) (= lambda!312373 lambda!312343))))

(assert (=> bs!1348460 (not (= lambda!312373 lambda!312286))))

(assert (=> d!1813623 true))

(assert (=> d!1813623 true))

(assert (=> d!1813623 (= (Exists!2862 lambda!312372) (Exists!2862 lambda!312373))))

(declare-fun lt!2287929 () Unit!156580)

(declare-fun choose!43629 (Regex!15762 List!63585) Unit!156580)

(assert (=> d!1813623 (= lt!2287929 (choose!43629 (reg!16091 (regOne!32036 r!7292)) Nil!63461))))

(assert (=> d!1813623 (validRegex!7498 (reg!16091 (regOne!32036 r!7292)))))

(assert (=> d!1813623 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!563 (reg!16091 (regOne!32036 r!7292)) Nil!63461) lt!2287929)))

(declare-fun m!6704322 () Bool)

(assert (=> bs!1348463 m!6704322))

(declare-fun m!6704324 () Bool)

(assert (=> bs!1348463 m!6704324))

(declare-fun m!6704326 () Bool)

(assert (=> bs!1348463 m!6704326))

(assert (=> bs!1348463 m!6704266))

(assert (=> b!5754078 d!1813623))

(declare-fun d!1813629 () Bool)

(assert (=> d!1813629 (= (Exists!2862 lambda!312291) (choose!43625 lambda!312291))))

(declare-fun bs!1348464 () Bool)

(assert (= bs!1348464 d!1813629))

(declare-fun m!6704328 () Bool)

(assert (=> bs!1348464 m!6704328))

(assert (=> b!5754078 d!1813629))

(declare-fun d!1813631 () Bool)

(assert (=> d!1813631 (matchR!7947 (Concat!24607 lt!2287677 (regTwo!32036 r!7292)) (++!13980 Nil!63461 s!2326))))

(declare-fun lt!2287938 () Unit!156580)

(declare-fun choose!43630 (Regex!15762 Regex!15762 List!63585 List!63585) Unit!156580)

(assert (=> d!1813631 (= lt!2287938 (choose!43630 lt!2287677 (regTwo!32036 r!7292) Nil!63461 s!2326))))

(declare-fun e!3536673 () Bool)

(assert (=> d!1813631 e!3536673))

(declare-fun res!2429580 () Bool)

(assert (=> d!1813631 (=> (not res!2429580) (not e!3536673))))

(assert (=> d!1813631 (= res!2429580 (validRegex!7498 lt!2287677))))

(assert (=> d!1813631 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!287 lt!2287677 (regTwo!32036 r!7292) Nil!63461 s!2326) lt!2287938)))

(declare-fun b!5754884 () Bool)

(assert (=> b!5754884 (= e!3536673 (validRegex!7498 (regTwo!32036 r!7292)))))

(assert (= (and d!1813631 res!2429580) b!5754884))

(assert (=> d!1813631 m!6703702))

(assert (=> d!1813631 m!6703702))

(declare-fun m!6704330 () Bool)

(assert (=> d!1813631 m!6704330))

(declare-fun m!6704332 () Bool)

(assert (=> d!1813631 m!6704332))

(assert (=> d!1813631 m!6704250))

(assert (=> b!5754884 m!6704202))

(assert (=> b!5754078 d!1813631))

(declare-fun b!5754885 () Bool)

(declare-fun res!2429588 () Bool)

(declare-fun e!3536677 () Bool)

(assert (=> b!5754885 (=> res!2429588 e!3536677)))

(assert (=> b!5754885 (= res!2429588 (not (is-ElementMatch!15762 lt!2287699)))))

(declare-fun e!3536675 () Bool)

(assert (=> b!5754885 (= e!3536675 e!3536677)))

(declare-fun b!5754886 () Bool)

(declare-fun e!3536680 () Bool)

(assert (=> b!5754886 (= e!3536677 e!3536680)))

(declare-fun res!2429587 () Bool)

(assert (=> b!5754886 (=> (not res!2429587) (not e!3536680))))

(declare-fun lt!2287939 () Bool)

(assert (=> b!5754886 (= res!2429587 (not lt!2287939))))

(declare-fun b!5754887 () Bool)

(declare-fun e!3536679 () Bool)

(assert (=> b!5754887 (= e!3536679 e!3536675)))

(declare-fun c!1016891 () Bool)

(assert (=> b!5754887 (= c!1016891 (is-EmptyLang!15762 lt!2287699))))

(declare-fun d!1813633 () Bool)

(assert (=> d!1813633 e!3536679))

(declare-fun c!1016889 () Bool)

(assert (=> d!1813633 (= c!1016889 (is-EmptyExpr!15762 lt!2287699))))

(declare-fun e!3536674 () Bool)

(assert (=> d!1813633 (= lt!2287939 e!3536674)))

(declare-fun c!1016890 () Bool)

(assert (=> d!1813633 (= c!1016890 (isEmpty!35351 (++!13980 Nil!63461 s!2326)))))

(assert (=> d!1813633 (validRegex!7498 lt!2287699)))

(assert (=> d!1813633 (= (matchR!7947 lt!2287699 (++!13980 Nil!63461 s!2326)) lt!2287939)))

(declare-fun b!5754888 () Bool)

(assert (=> b!5754888 (= e!3536674 (matchR!7947 (derivativeStep!4547 lt!2287699 (head!12168 (++!13980 Nil!63461 s!2326))) (tail!11263 (++!13980 Nil!63461 s!2326))))))

(declare-fun b!5754889 () Bool)

(declare-fun res!2429582 () Bool)

(declare-fun e!3536678 () Bool)

(assert (=> b!5754889 (=> (not res!2429582) (not e!3536678))))

(declare-fun call!441432 () Bool)

(assert (=> b!5754889 (= res!2429582 (not call!441432))))

(declare-fun b!5754890 () Bool)

(declare-fun res!2429584 () Bool)

(assert (=> b!5754890 (=> res!2429584 e!3536677)))

(assert (=> b!5754890 (= res!2429584 e!3536678)))

(declare-fun res!2429586 () Bool)

(assert (=> b!5754890 (=> (not res!2429586) (not e!3536678))))

(assert (=> b!5754890 (= res!2429586 lt!2287939)))

(declare-fun bm!441427 () Bool)

(assert (=> bm!441427 (= call!441432 (isEmpty!35351 (++!13980 Nil!63461 s!2326)))))

(declare-fun b!5754891 () Bool)

(assert (=> b!5754891 (= e!3536679 (= lt!2287939 call!441432))))

(declare-fun b!5754892 () Bool)

(declare-fun res!2429585 () Bool)

(declare-fun e!3536676 () Bool)

(assert (=> b!5754892 (=> res!2429585 e!3536676)))

(assert (=> b!5754892 (= res!2429585 (not (isEmpty!35351 (tail!11263 (++!13980 Nil!63461 s!2326)))))))

(declare-fun b!5754893 () Bool)

(assert (=> b!5754893 (= e!3536680 e!3536676)))

(declare-fun res!2429583 () Bool)

(assert (=> b!5754893 (=> res!2429583 e!3536676)))

(assert (=> b!5754893 (= res!2429583 call!441432)))

(declare-fun b!5754894 () Bool)

(assert (=> b!5754894 (= e!3536674 (nullable!5794 lt!2287699))))

(declare-fun b!5754895 () Bool)

(assert (=> b!5754895 (= e!3536675 (not lt!2287939))))

(declare-fun b!5754896 () Bool)

(assert (=> b!5754896 (= e!3536678 (= (head!12168 (++!13980 Nil!63461 s!2326)) (c!1016690 lt!2287699)))))

(declare-fun b!5754897 () Bool)

(declare-fun res!2429581 () Bool)

(assert (=> b!5754897 (=> (not res!2429581) (not e!3536678))))

(assert (=> b!5754897 (= res!2429581 (isEmpty!35351 (tail!11263 (++!13980 Nil!63461 s!2326))))))

(declare-fun b!5754898 () Bool)

(assert (=> b!5754898 (= e!3536676 (not (= (head!12168 (++!13980 Nil!63461 s!2326)) (c!1016690 lt!2287699))))))

(assert (= (and d!1813633 c!1016890) b!5754894))

(assert (= (and d!1813633 (not c!1016890)) b!5754888))

(assert (= (and d!1813633 c!1016889) b!5754891))

(assert (= (and d!1813633 (not c!1016889)) b!5754887))

(assert (= (and b!5754887 c!1016891) b!5754895))

(assert (= (and b!5754887 (not c!1016891)) b!5754885))

(assert (= (and b!5754885 (not res!2429588)) b!5754890))

(assert (= (and b!5754890 res!2429586) b!5754889))

(assert (= (and b!5754889 res!2429582) b!5754897))

(assert (= (and b!5754897 res!2429581) b!5754896))

(assert (= (and b!5754890 (not res!2429584)) b!5754886))

(assert (= (and b!5754886 res!2429587) b!5754893))

(assert (= (and b!5754893 (not res!2429583)) b!5754892))

(assert (= (and b!5754892 (not res!2429585)) b!5754898))

(assert (= (or b!5754891 b!5754889 b!5754893) bm!441427))

(assert (=> b!5754888 m!6703702))

(declare-fun m!6704334 () Bool)

(assert (=> b!5754888 m!6704334))

(assert (=> b!5754888 m!6704334))

(declare-fun m!6704336 () Bool)

(assert (=> b!5754888 m!6704336))

(assert (=> b!5754888 m!6703702))

(declare-fun m!6704338 () Bool)

(assert (=> b!5754888 m!6704338))

(assert (=> b!5754888 m!6704336))

(assert (=> b!5754888 m!6704338))

(declare-fun m!6704340 () Bool)

(assert (=> b!5754888 m!6704340))

(assert (=> bm!441427 m!6703702))

(declare-fun m!6704342 () Bool)

(assert (=> bm!441427 m!6704342))

(assert (=> b!5754898 m!6703702))

(assert (=> b!5754898 m!6704334))

(assert (=> b!5754897 m!6703702))

(assert (=> b!5754897 m!6704338))

(assert (=> b!5754897 m!6704338))

(declare-fun m!6704344 () Bool)

(assert (=> b!5754897 m!6704344))

(declare-fun m!6704346 () Bool)

(assert (=> b!5754894 m!6704346))

(assert (=> b!5754896 m!6703702))

(assert (=> b!5754896 m!6704334))

(assert (=> d!1813633 m!6703702))

(assert (=> d!1813633 m!6704342))

(declare-fun m!6704348 () Bool)

(assert (=> d!1813633 m!6704348))

(assert (=> b!5754892 m!6703702))

(assert (=> b!5754892 m!6704338))

(assert (=> b!5754892 m!6704338))

(assert (=> b!5754892 m!6704344))

(assert (=> b!5754078 d!1813633))

(declare-fun bs!1348465 () Bool)

(declare-fun d!1813635 () Bool)

(assert (= bs!1348465 (and d!1813635 d!1813571)))

(declare-fun lambda!312374 () Int)

(assert (=> bs!1348465 (= (and (= Nil!63461 s!2326) (= (reg!16091 (regOne!32036 r!7292)) (regOne!32036 r!7292)) (= lt!2287677 (regTwo!32036 r!7292))) (= lambda!312374 lambda!312354))))

(declare-fun bs!1348466 () Bool)

(assert (= bs!1348466 (and d!1813635 d!1813605)))

(assert (=> bs!1348466 (= lambda!312374 lambda!312363)))

(declare-fun bs!1348467 () Bool)

(assert (= bs!1348467 (and d!1813635 b!5754078)))

(assert (=> bs!1348467 (= lambda!312374 lambda!312289)))

(declare-fun bs!1348468 () Bool)

(assert (= bs!1348468 (and d!1813635 d!1813567)))

(assert (=> bs!1348468 (= (and (= Nil!63461 s!2326) (= (reg!16091 (regOne!32036 r!7292)) (regOne!32036 r!7292)) (= lt!2287677 (regTwo!32036 r!7292))) (= lambda!312374 lambda!312349))))

(assert (=> bs!1348467 (not (= lambda!312374 lambda!312290))))

(declare-fun bs!1348469 () Bool)

(assert (= bs!1348469 (and d!1813635 b!5754083)))

(assert (=> bs!1348469 (not (= lambda!312374 lambda!312287))))

(assert (=> bs!1348466 (not (= lambda!312374 lambda!312364))))

(declare-fun bs!1348470 () Bool)

(assert (= bs!1348470 (and d!1813635 d!1813623)))

(assert (=> bs!1348470 (not (= lambda!312374 lambda!312373))))

(assert (=> bs!1348470 (= (= lt!2287677 (Star!15762 (reg!16091 (regOne!32036 r!7292)))) (= lambda!312374 lambda!312372))))

(assert (=> bs!1348467 (not (= lambda!312374 lambda!312291))))

(declare-fun bs!1348471 () Bool)

(assert (= bs!1348471 (and d!1813635 b!5754497)))

(assert (=> bs!1348471 (not (= lambda!312374 lambda!312344))))

(assert (=> bs!1348465 (not (= lambda!312374 lambda!312357))))

(declare-fun bs!1348472 () Bool)

(assert (= bs!1348472 (and d!1813635 b!5754494)))

(assert (=> bs!1348472 (not (= lambda!312374 lambda!312343))))

(assert (=> bs!1348469 (= (and (= Nil!63461 s!2326) (= (reg!16091 (regOne!32036 r!7292)) (regOne!32036 r!7292)) (= lt!2287677 (regTwo!32036 r!7292))) (= lambda!312374 lambda!312286))))

(assert (=> d!1813635 true))

(assert (=> d!1813635 true))

(assert (=> d!1813635 true))

(assert (=> d!1813635 (= (isDefined!12474 (findConcatSeparation!2185 (reg!16091 (regOne!32036 r!7292)) lt!2287677 Nil!63461 Nil!63461 Nil!63461)) (Exists!2862 lambda!312374))))

(declare-fun lt!2287940 () Unit!156580)

(assert (=> d!1813635 (= lt!2287940 (choose!43626 (reg!16091 (regOne!32036 r!7292)) lt!2287677 Nil!63461))))

(assert (=> d!1813635 (validRegex!7498 (reg!16091 (regOne!32036 r!7292)))))

(assert (=> d!1813635 (= (lemmaFindConcatSeparationEquivalentToExists!1949 (reg!16091 (regOne!32036 r!7292)) lt!2287677 Nil!63461) lt!2287940)))

(declare-fun bs!1348473 () Bool)

(assert (= bs!1348473 d!1813635))

(assert (=> bs!1348473 m!6703712))

(assert (=> bs!1348473 m!6703726))

(declare-fun m!6704362 () Bool)

(assert (=> bs!1348473 m!6704362))

(assert (=> bs!1348473 m!6704266))

(declare-fun m!6704366 () Bool)

(assert (=> bs!1348473 m!6704366))

(assert (=> bs!1348473 m!6703712))

(assert (=> b!5754078 d!1813635))

(declare-fun bs!1348474 () Bool)

(declare-fun b!5754914 () Bool)

(assert (= bs!1348474 (and b!5754914 d!1813571)))

(declare-fun lambda!312375 () Int)

(assert (=> bs!1348474 (not (= lambda!312375 lambda!312354))))

(declare-fun bs!1348475 () Bool)

(assert (= bs!1348475 (and b!5754914 d!1813605)))

(assert (=> bs!1348475 (not (= lambda!312375 lambda!312363))))

(declare-fun bs!1348476 () Bool)

(assert (= bs!1348476 (and b!5754914 b!5754078)))

(assert (=> bs!1348476 (not (= lambda!312375 lambda!312289))))

(declare-fun bs!1348477 () Bool)

(assert (= bs!1348477 (and b!5754914 d!1813567)))

(assert (=> bs!1348477 (not (= lambda!312375 lambda!312349))))

(assert (=> bs!1348476 (not (= lambda!312375 lambda!312290))))

(declare-fun bs!1348478 () Bool)

(assert (= bs!1348478 (and b!5754914 d!1813635)))

(assert (=> bs!1348478 (not (= lambda!312375 lambda!312374))))

(declare-fun bs!1348479 () Bool)

(assert (= bs!1348479 (and b!5754914 b!5754083)))

(assert (=> bs!1348479 (not (= lambda!312375 lambda!312287))))

(assert (=> bs!1348475 (not (= lambda!312375 lambda!312364))))

(declare-fun bs!1348480 () Bool)

(assert (= bs!1348480 (and b!5754914 d!1813623)))

(assert (=> bs!1348480 (= (and (= (reg!16091 lt!2287677) (reg!16091 (regOne!32036 r!7292))) (= lt!2287677 (Star!15762 (reg!16091 (regOne!32036 r!7292))))) (= lambda!312375 lambda!312373))))

(assert (=> bs!1348480 (not (= lambda!312375 lambda!312372))))

(assert (=> bs!1348476 (= (= (reg!16091 lt!2287677) (reg!16091 (regOne!32036 r!7292))) (= lambda!312375 lambda!312291))))

(declare-fun bs!1348481 () Bool)

(assert (= bs!1348481 (and b!5754914 b!5754497)))

(assert (=> bs!1348481 (not (= lambda!312375 lambda!312344))))

(assert (=> bs!1348474 (not (= lambda!312375 lambda!312357))))

(declare-fun bs!1348482 () Bool)

(assert (= bs!1348482 (and b!5754914 b!5754494)))

(assert (=> bs!1348482 (= (and (= Nil!63461 s!2326) (= (reg!16091 lt!2287677) (reg!16091 lt!2287687)) (= lt!2287677 lt!2287687)) (= lambda!312375 lambda!312343))))

(assert (=> bs!1348479 (not (= lambda!312375 lambda!312286))))

(assert (=> b!5754914 true))

(assert (=> b!5754914 true))

(declare-fun bs!1348483 () Bool)

(declare-fun b!5754917 () Bool)

(assert (= bs!1348483 (and b!5754917 d!1813571)))

(declare-fun lambda!312376 () Int)

(assert (=> bs!1348483 (not (= lambda!312376 lambda!312354))))

(declare-fun bs!1348484 () Bool)

(assert (= bs!1348484 (and b!5754917 d!1813605)))

(assert (=> bs!1348484 (not (= lambda!312376 lambda!312363))))

(declare-fun bs!1348485 () Bool)

(assert (= bs!1348485 (and b!5754917 b!5754078)))

(assert (=> bs!1348485 (not (= lambda!312376 lambda!312289))))

(declare-fun bs!1348486 () Bool)

(assert (= bs!1348486 (and b!5754917 d!1813567)))

(assert (=> bs!1348486 (not (= lambda!312376 lambda!312349))))

(declare-fun bs!1348487 () Bool)

(assert (= bs!1348487 (and b!5754917 d!1813635)))

(assert (=> bs!1348487 (not (= lambda!312376 lambda!312374))))

(declare-fun bs!1348488 () Bool)

(assert (= bs!1348488 (and b!5754917 b!5754083)))

(assert (=> bs!1348488 (= (and (= Nil!63461 s!2326) (= (regOne!32036 lt!2287677) (regOne!32036 r!7292)) (= (regTwo!32036 lt!2287677) (regTwo!32036 r!7292))) (= lambda!312376 lambda!312287))))

(assert (=> bs!1348484 (= (and (= (regOne!32036 lt!2287677) (reg!16091 (regOne!32036 r!7292))) (= (regTwo!32036 lt!2287677) lt!2287677)) (= lambda!312376 lambda!312364))))

(declare-fun bs!1348489 () Bool)

(assert (= bs!1348489 (and b!5754917 d!1813623)))

(assert (=> bs!1348489 (not (= lambda!312376 lambda!312373))))

(assert (=> bs!1348485 (= (and (= (regOne!32036 lt!2287677) (reg!16091 (regOne!32036 r!7292))) (= (regTwo!32036 lt!2287677) lt!2287677)) (= lambda!312376 lambda!312290))))

(declare-fun bs!1348490 () Bool)

(assert (= bs!1348490 (and b!5754917 b!5754914)))

(assert (=> bs!1348490 (not (= lambda!312376 lambda!312375))))

(assert (=> bs!1348489 (not (= lambda!312376 lambda!312372))))

(assert (=> bs!1348485 (not (= lambda!312376 lambda!312291))))

(declare-fun bs!1348491 () Bool)

(assert (= bs!1348491 (and b!5754917 b!5754497)))

(assert (=> bs!1348491 (= (and (= Nil!63461 s!2326) (= (regOne!32036 lt!2287677) (regOne!32036 lt!2287687)) (= (regTwo!32036 lt!2287677) (regTwo!32036 lt!2287687))) (= lambda!312376 lambda!312344))))

(assert (=> bs!1348483 (= (and (= Nil!63461 s!2326) (= (regOne!32036 lt!2287677) (regOne!32036 r!7292)) (= (regTwo!32036 lt!2287677) (regTwo!32036 r!7292))) (= lambda!312376 lambda!312357))))

(declare-fun bs!1348492 () Bool)

(assert (= bs!1348492 (and b!5754917 b!5754494)))

(assert (=> bs!1348492 (not (= lambda!312376 lambda!312343))))

(assert (=> bs!1348488 (not (= lambda!312376 lambda!312286))))

(assert (=> b!5754917 true))

(assert (=> b!5754917 true))

(declare-fun b!5754908 () Bool)

(declare-fun e!3536692 () Bool)

(assert (=> b!5754908 (= e!3536692 (matchRSpec!2865 (regTwo!32037 lt!2287677) Nil!63461))))

(declare-fun b!5754909 () Bool)

(declare-fun e!3536687 () Bool)

(assert (=> b!5754909 (= e!3536687 e!3536692)))

(declare-fun res!2429595 () Bool)

(assert (=> b!5754909 (= res!2429595 (matchRSpec!2865 (regOne!32037 lt!2287677) Nil!63461))))

(assert (=> b!5754909 (=> res!2429595 e!3536692)))

(declare-fun b!5754910 () Bool)

(declare-fun e!3536688 () Bool)

(declare-fun e!3536686 () Bool)

(assert (=> b!5754910 (= e!3536688 e!3536686)))

(declare-fun res!2429594 () Bool)

(assert (=> b!5754910 (= res!2429594 (not (is-EmptyLang!15762 lt!2287677)))))

(assert (=> b!5754910 (=> (not res!2429594) (not e!3536686))))

(declare-fun b!5754911 () Bool)

(declare-fun res!2429596 () Bool)

(declare-fun e!3536689 () Bool)

(assert (=> b!5754911 (=> res!2429596 e!3536689)))

(declare-fun call!441434 () Bool)

(assert (=> b!5754911 (= res!2429596 call!441434)))

(declare-fun e!3536691 () Bool)

(assert (=> b!5754911 (= e!3536691 e!3536689)))

(declare-fun d!1813637 () Bool)

(declare-fun c!1016894 () Bool)

(assert (=> d!1813637 (= c!1016894 (is-EmptyExpr!15762 lt!2287677))))

(assert (=> d!1813637 (= (matchRSpec!2865 lt!2287677 Nil!63461) e!3536688)))

(declare-fun b!5754912 () Bool)

(assert (=> b!5754912 (= e!3536688 call!441434)))

(declare-fun b!5754913 () Bool)

(assert (=> b!5754913 (= e!3536687 e!3536691)))

(declare-fun c!1016897 () Bool)

(assert (=> b!5754913 (= c!1016897 (is-Star!15762 lt!2287677))))

(declare-fun call!441433 () Bool)

(assert (=> b!5754914 (= e!3536689 call!441433)))

(declare-fun b!5754915 () Bool)

(declare-fun c!1016896 () Bool)

(assert (=> b!5754915 (= c!1016896 (is-Union!15762 lt!2287677))))

(declare-fun e!3536690 () Bool)

(assert (=> b!5754915 (= e!3536690 e!3536687)))

(declare-fun b!5754916 () Bool)

(declare-fun c!1016895 () Bool)

(assert (=> b!5754916 (= c!1016895 (is-ElementMatch!15762 lt!2287677))))

(assert (=> b!5754916 (= e!3536686 e!3536690)))

(assert (=> b!5754917 (= e!3536691 call!441433)))

(declare-fun b!5754918 () Bool)

(assert (=> b!5754918 (= e!3536690 (= Nil!63461 (Cons!63461 (c!1016690 lt!2287677) Nil!63461)))))

(declare-fun bm!441428 () Bool)

(assert (=> bm!441428 (= call!441434 (isEmpty!35351 Nil!63461))))

(declare-fun bm!441429 () Bool)

(assert (=> bm!441429 (= call!441433 (Exists!2862 (ite c!1016897 lambda!312375 lambda!312376)))))

(assert (= (and d!1813637 c!1016894) b!5754912))

(assert (= (and d!1813637 (not c!1016894)) b!5754910))

(assert (= (and b!5754910 res!2429594) b!5754916))

(assert (= (and b!5754916 c!1016895) b!5754918))

(assert (= (and b!5754916 (not c!1016895)) b!5754915))

(assert (= (and b!5754915 c!1016896) b!5754909))

(assert (= (and b!5754915 (not c!1016896)) b!5754913))

(assert (= (and b!5754909 (not res!2429595)) b!5754908))

(assert (= (and b!5754913 c!1016897) b!5754911))

(assert (= (and b!5754913 (not c!1016897)) b!5754917))

(assert (= (and b!5754911 (not res!2429596)) b!5754914))

(assert (= (or b!5754914 b!5754917) bm!441429))

(assert (= (or b!5754912 b!5754911) bm!441428))

(declare-fun m!6704376 () Bool)

(assert (=> b!5754908 m!6704376))

(declare-fun m!6704378 () Bool)

(assert (=> b!5754909 m!6704378))

(assert (=> bm!441428 m!6704244))

(declare-fun m!6704380 () Bool)

(assert (=> bm!441429 m!6704380))

(assert (=> b!5754078 d!1813637))

(declare-fun d!1813641 () Bool)

(declare-fun c!1016899 () Bool)

(declare-fun e!3536696 () Bool)

(assert (=> d!1813641 (= c!1016899 e!3536696)))

(declare-fun res!2429601 () Bool)

(assert (=> d!1813641 (=> (not res!2429601) (not e!3536696))))

(assert (=> d!1813641 (= res!2429601 (is-Cons!63462 (exprs!5646 lt!2287716)))))

(declare-fun e!3536695 () (Set Context!10292))

(assert (=> d!1813641 (= (derivationStepZipperUp!1030 lt!2287716 (h!69909 s!2326)) e!3536695)))

(declare-fun b!5754923 () Bool)

(assert (=> b!5754923 (= e!3536696 (nullable!5794 (h!69910 (exprs!5646 lt!2287716))))))

(declare-fun b!5754924 () Bool)

(declare-fun e!3536697 () (Set Context!10292))

(declare-fun call!441435 () (Set Context!10292))

(assert (=> b!5754924 (= e!3536697 call!441435)))

(declare-fun bm!441430 () Bool)

(assert (=> bm!441430 (= call!441435 (derivationStepZipperDown!1104 (h!69910 (exprs!5646 lt!2287716)) (Context!10293 (t!376918 (exprs!5646 lt!2287716))) (h!69909 s!2326)))))

(declare-fun b!5754925 () Bool)

(assert (=> b!5754925 (= e!3536697 (as set.empty (Set Context!10292)))))

(declare-fun b!5754926 () Bool)

(assert (=> b!5754926 (= e!3536695 (set.union call!441435 (derivationStepZipperUp!1030 (Context!10293 (t!376918 (exprs!5646 lt!2287716))) (h!69909 s!2326))))))

(declare-fun b!5754927 () Bool)

(assert (=> b!5754927 (= e!3536695 e!3536697)))

(declare-fun c!1016898 () Bool)

(assert (=> b!5754927 (= c!1016898 (is-Cons!63462 (exprs!5646 lt!2287716)))))

(assert (= (and d!1813641 res!2429601) b!5754923))

(assert (= (and d!1813641 c!1016899) b!5754926))

(assert (= (and d!1813641 (not c!1016899)) b!5754927))

(assert (= (and b!5754927 c!1016898) b!5754924))

(assert (= (and b!5754927 (not c!1016898)) b!5754925))

(assert (= (or b!5754926 b!5754924) bm!441430))

(declare-fun m!6704382 () Bool)

(assert (=> b!5754923 m!6704382))

(declare-fun m!6704384 () Bool)

(assert (=> bm!441430 m!6704384))

(declare-fun m!6704386 () Bool)

(assert (=> b!5754926 m!6704386))

(assert (=> b!5754098 d!1813641))

(declare-fun d!1813643 () Bool)

(assert (=> d!1813643 (= (flatMap!1375 lt!2287711 lambda!312288) (dynLambda!24846 lambda!312288 lt!2287713))))

(declare-fun lt!2287946 () Unit!156580)

(assert (=> d!1813643 (= lt!2287946 (choose!43621 lt!2287711 lt!2287713 lambda!312288))))

(assert (=> d!1813643 (= lt!2287711 (set.insert lt!2287713 (as set.empty (Set Context!10292))))))

(assert (=> d!1813643 (= (lemmaFlatMapOnSingletonSet!907 lt!2287711 lt!2287713 lambda!312288) lt!2287946)))

(declare-fun b_lambda!217391 () Bool)

(assert (=> (not b_lambda!217391) (not d!1813643)))

(declare-fun bs!1348493 () Bool)

(assert (= bs!1348493 d!1813643))

(assert (=> bs!1348493 m!6703620))

(declare-fun m!6704388 () Bool)

(assert (=> bs!1348493 m!6704388))

(declare-fun m!6704390 () Bool)

(assert (=> bs!1348493 m!6704390))

(assert (=> bs!1348493 m!6703614))

(assert (=> b!5754098 d!1813643))

(declare-fun d!1813645 () Bool)

(assert (=> d!1813645 (= (flatMap!1375 lt!2287678 lambda!312288) (choose!43620 lt!2287678 lambda!312288))))

(declare-fun bs!1348494 () Bool)

(assert (= bs!1348494 d!1813645))

(declare-fun m!6704392 () Bool)

(assert (=> bs!1348494 m!6704392))

(assert (=> b!5754098 d!1813645))

(declare-fun d!1813647 () Bool)

(declare-fun c!1016901 () Bool)

(declare-fun e!3536699 () Bool)

(assert (=> d!1813647 (= c!1016901 e!3536699)))

(declare-fun res!2429602 () Bool)

(assert (=> d!1813647 (=> (not res!2429602) (not e!3536699))))

(assert (=> d!1813647 (= res!2429602 (is-Cons!63462 (exprs!5646 lt!2287713)))))

(declare-fun e!3536698 () (Set Context!10292))

(assert (=> d!1813647 (= (derivationStepZipperUp!1030 lt!2287713 (h!69909 s!2326)) e!3536698)))

(declare-fun b!5754928 () Bool)

(assert (=> b!5754928 (= e!3536699 (nullable!5794 (h!69910 (exprs!5646 lt!2287713))))))

(declare-fun b!5754929 () Bool)

(declare-fun e!3536700 () (Set Context!10292))

(declare-fun call!441436 () (Set Context!10292))

(assert (=> b!5754929 (= e!3536700 call!441436)))

(declare-fun bm!441431 () Bool)

(assert (=> bm!441431 (= call!441436 (derivationStepZipperDown!1104 (h!69910 (exprs!5646 lt!2287713)) (Context!10293 (t!376918 (exprs!5646 lt!2287713))) (h!69909 s!2326)))))

(declare-fun b!5754930 () Bool)

(assert (=> b!5754930 (= e!3536700 (as set.empty (Set Context!10292)))))

(declare-fun b!5754931 () Bool)

(assert (=> b!5754931 (= e!3536698 (set.union call!441436 (derivationStepZipperUp!1030 (Context!10293 (t!376918 (exprs!5646 lt!2287713))) (h!69909 s!2326))))))

(declare-fun b!5754932 () Bool)

(assert (=> b!5754932 (= e!3536698 e!3536700)))

(declare-fun c!1016900 () Bool)

(assert (=> b!5754932 (= c!1016900 (is-Cons!63462 (exprs!5646 lt!2287713)))))

(assert (= (and d!1813647 res!2429602) b!5754928))

(assert (= (and d!1813647 c!1016901) b!5754931))

(assert (= (and d!1813647 (not c!1016901)) b!5754932))

(assert (= (and b!5754932 c!1016900) b!5754929))

(assert (= (and b!5754932 (not c!1016900)) b!5754930))

(assert (= (or b!5754931 b!5754929) bm!441431))

(declare-fun m!6704394 () Bool)

(assert (=> b!5754928 m!6704394))

(declare-fun m!6704396 () Bool)

(assert (=> bm!441431 m!6704396))

(declare-fun m!6704398 () Bool)

(assert (=> b!5754931 m!6704398))

(assert (=> b!5754098 d!1813647))

(declare-fun d!1813649 () Bool)

(assert (=> d!1813649 (= (flatMap!1375 lt!2287678 lambda!312288) (dynLambda!24846 lambda!312288 lt!2287716))))

(declare-fun lt!2287947 () Unit!156580)

(assert (=> d!1813649 (= lt!2287947 (choose!43621 lt!2287678 lt!2287716 lambda!312288))))

(assert (=> d!1813649 (= lt!2287678 (set.insert lt!2287716 (as set.empty (Set Context!10292))))))

(assert (=> d!1813649 (= (lemmaFlatMapOnSingletonSet!907 lt!2287678 lt!2287716 lambda!312288) lt!2287947)))

(declare-fun b_lambda!217393 () Bool)

(assert (=> (not b_lambda!217393) (not d!1813649)))

(declare-fun bs!1348495 () Bool)

(assert (= bs!1348495 d!1813649))

(assert (=> bs!1348495 m!6703616))

(declare-fun m!6704400 () Bool)

(assert (=> bs!1348495 m!6704400))

(declare-fun m!6704402 () Bool)

(assert (=> bs!1348495 m!6704402))

(assert (=> bs!1348495 m!6703612))

(assert (=> b!5754098 d!1813649))

(declare-fun d!1813651 () Bool)

(assert (=> d!1813651 (= (flatMap!1375 lt!2287711 lambda!312288) (choose!43620 lt!2287711 lambda!312288))))

(declare-fun bs!1348496 () Bool)

(assert (= bs!1348496 d!1813651))

(declare-fun m!6704404 () Bool)

(assert (=> bs!1348496 m!6704404))

(assert (=> b!5754098 d!1813651))

(declare-fun d!1813653 () Bool)

(declare-fun lt!2287948 () Regex!15762)

(assert (=> d!1813653 (validRegex!7498 lt!2287948)))

(assert (=> d!1813653 (= lt!2287948 (generalisedUnion!1625 (unfocusZipperList!1190 (Cons!63463 lt!2287716 Nil!63463))))))

(assert (=> d!1813653 (= (unfocusZipper!1504 (Cons!63463 lt!2287716 Nil!63463)) lt!2287948)))

(declare-fun bs!1348497 () Bool)

(assert (= bs!1348497 d!1813653))

(declare-fun m!6704406 () Bool)

(assert (=> bs!1348497 m!6704406))

(declare-fun m!6704408 () Bool)

(assert (=> bs!1348497 m!6704408))

(assert (=> bs!1348497 m!6704408))

(declare-fun m!6704410 () Bool)

(assert (=> bs!1348497 m!6704410))

(assert (=> b!5754098 d!1813653))

(assert (=> b!5754077 d!1813501))

(declare-fun bs!1348498 () Bool)

(declare-fun b!5754939 () Bool)

(assert (= bs!1348498 (and b!5754939 d!1813571)))

(declare-fun lambda!312381 () Int)

(assert (=> bs!1348498 (not (= lambda!312381 lambda!312354))))

(declare-fun bs!1348499 () Bool)

(assert (= bs!1348499 (and b!5754939 d!1813605)))

(assert (=> bs!1348499 (not (= lambda!312381 lambda!312363))))

(declare-fun bs!1348500 () Bool)

(assert (= bs!1348500 (and b!5754939 d!1813567)))

(assert (=> bs!1348500 (not (= lambda!312381 lambda!312349))))

(declare-fun bs!1348501 () Bool)

(assert (= bs!1348501 (and b!5754939 d!1813635)))

(assert (=> bs!1348501 (not (= lambda!312381 lambda!312374))))

(declare-fun bs!1348502 () Bool)

(assert (= bs!1348502 (and b!5754939 b!5754083)))

(assert (=> bs!1348502 (not (= lambda!312381 lambda!312287))))

(declare-fun bs!1348503 () Bool)

(assert (= bs!1348503 (and b!5754939 b!5754917)))

(assert (=> bs!1348503 (not (= lambda!312381 lambda!312376))))

(declare-fun bs!1348504 () Bool)

(assert (= bs!1348504 (and b!5754939 b!5754078)))

(assert (=> bs!1348504 (not (= lambda!312381 lambda!312289))))

(assert (=> bs!1348499 (not (= lambda!312381 lambda!312364))))

(declare-fun bs!1348505 () Bool)

(assert (= bs!1348505 (and b!5754939 d!1813623)))

(assert (=> bs!1348505 (= (and (= s!2326 Nil!63461) (= (reg!16091 r!7292) (reg!16091 (regOne!32036 r!7292))) (= r!7292 (Star!15762 (reg!16091 (regOne!32036 r!7292))))) (= lambda!312381 lambda!312373))))

(assert (=> bs!1348504 (not (= lambda!312381 lambda!312290))))

(declare-fun bs!1348506 () Bool)

(assert (= bs!1348506 (and b!5754939 b!5754914)))

(assert (=> bs!1348506 (= (and (= s!2326 Nil!63461) (= (reg!16091 r!7292) (reg!16091 lt!2287677)) (= r!7292 lt!2287677)) (= lambda!312381 lambda!312375))))

(assert (=> bs!1348505 (not (= lambda!312381 lambda!312372))))

(assert (=> bs!1348504 (= (and (= s!2326 Nil!63461) (= (reg!16091 r!7292) (reg!16091 (regOne!32036 r!7292))) (= r!7292 lt!2287677)) (= lambda!312381 lambda!312291))))

(declare-fun bs!1348507 () Bool)

(assert (= bs!1348507 (and b!5754939 b!5754497)))

(assert (=> bs!1348507 (not (= lambda!312381 lambda!312344))))

(assert (=> bs!1348498 (not (= lambda!312381 lambda!312357))))

(declare-fun bs!1348508 () Bool)

(assert (= bs!1348508 (and b!5754939 b!5754494)))

(assert (=> bs!1348508 (= (and (= (reg!16091 r!7292) (reg!16091 lt!2287687)) (= r!7292 lt!2287687)) (= lambda!312381 lambda!312343))))

(assert (=> bs!1348502 (not (= lambda!312381 lambda!312286))))

(assert (=> b!5754939 true))

(assert (=> b!5754939 true))

(declare-fun bs!1348512 () Bool)

(declare-fun b!5754942 () Bool)

(assert (= bs!1348512 (and b!5754942 d!1813571)))

(declare-fun lambda!312383 () Int)

(assert (=> bs!1348512 (not (= lambda!312383 lambda!312354))))

(declare-fun bs!1348513 () Bool)

(assert (= bs!1348513 (and b!5754942 d!1813605)))

(assert (=> bs!1348513 (not (= lambda!312383 lambda!312363))))

(declare-fun bs!1348514 () Bool)

(assert (= bs!1348514 (and b!5754942 d!1813567)))

(assert (=> bs!1348514 (not (= lambda!312383 lambda!312349))))

(declare-fun bs!1348515 () Bool)

(assert (= bs!1348515 (and b!5754942 d!1813635)))

(assert (=> bs!1348515 (not (= lambda!312383 lambda!312374))))

(declare-fun bs!1348516 () Bool)

(assert (= bs!1348516 (and b!5754942 b!5754083)))

(assert (=> bs!1348516 (= lambda!312383 lambda!312287)))

(declare-fun bs!1348517 () Bool)

(assert (= bs!1348517 (and b!5754942 b!5754917)))

(assert (=> bs!1348517 (= (and (= s!2326 Nil!63461) (= (regOne!32036 r!7292) (regOne!32036 lt!2287677)) (= (regTwo!32036 r!7292) (regTwo!32036 lt!2287677))) (= lambda!312383 lambda!312376))))

(declare-fun bs!1348519 () Bool)

(assert (= bs!1348519 (and b!5754942 b!5754078)))

(assert (=> bs!1348519 (not (= lambda!312383 lambda!312289))))

(assert (=> bs!1348513 (= (and (= s!2326 Nil!63461) (= (regOne!32036 r!7292) (reg!16091 (regOne!32036 r!7292))) (= (regTwo!32036 r!7292) lt!2287677)) (= lambda!312383 lambda!312364))))

(declare-fun bs!1348520 () Bool)

(assert (= bs!1348520 (and b!5754942 d!1813623)))

(assert (=> bs!1348520 (not (= lambda!312383 lambda!312373))))

(assert (=> bs!1348519 (= (and (= s!2326 Nil!63461) (= (regOne!32036 r!7292) (reg!16091 (regOne!32036 r!7292))) (= (regTwo!32036 r!7292) lt!2287677)) (= lambda!312383 lambda!312290))))

(declare-fun bs!1348521 () Bool)

(assert (= bs!1348521 (and b!5754942 b!5754914)))

(assert (=> bs!1348521 (not (= lambda!312383 lambda!312375))))

(assert (=> bs!1348520 (not (= lambda!312383 lambda!312372))))

(declare-fun bs!1348522 () Bool)

(assert (= bs!1348522 (and b!5754942 b!5754939)))

(assert (=> bs!1348522 (not (= lambda!312383 lambda!312381))))

(assert (=> bs!1348519 (not (= lambda!312383 lambda!312291))))

(declare-fun bs!1348523 () Bool)

(assert (= bs!1348523 (and b!5754942 b!5754497)))

(assert (=> bs!1348523 (= (and (= (regOne!32036 r!7292) (regOne!32036 lt!2287687)) (= (regTwo!32036 r!7292) (regTwo!32036 lt!2287687))) (= lambda!312383 lambda!312344))))

(assert (=> bs!1348512 (= lambda!312383 lambda!312357)))

(declare-fun bs!1348524 () Bool)

(assert (= bs!1348524 (and b!5754942 b!5754494)))

(assert (=> bs!1348524 (not (= lambda!312383 lambda!312343))))

(assert (=> bs!1348516 (not (= lambda!312383 lambda!312286))))

(assert (=> b!5754942 true))

(assert (=> b!5754942 true))

(declare-fun b!5754933 () Bool)

(declare-fun e!3536707 () Bool)

(assert (=> b!5754933 (= e!3536707 (matchRSpec!2865 (regTwo!32037 r!7292) s!2326))))

(declare-fun b!5754934 () Bool)

(declare-fun e!3536702 () Bool)

(assert (=> b!5754934 (= e!3536702 e!3536707)))

(declare-fun res!2429604 () Bool)

(assert (=> b!5754934 (= res!2429604 (matchRSpec!2865 (regOne!32037 r!7292) s!2326))))

(assert (=> b!5754934 (=> res!2429604 e!3536707)))

(declare-fun b!5754935 () Bool)

(declare-fun e!3536703 () Bool)

(declare-fun e!3536701 () Bool)

(assert (=> b!5754935 (= e!3536703 e!3536701)))

(declare-fun res!2429603 () Bool)

(assert (=> b!5754935 (= res!2429603 (not (is-EmptyLang!15762 r!7292)))))

(assert (=> b!5754935 (=> (not res!2429603) (not e!3536701))))

(declare-fun b!5754936 () Bool)

(declare-fun res!2429605 () Bool)

(declare-fun e!3536704 () Bool)

(assert (=> b!5754936 (=> res!2429605 e!3536704)))

(declare-fun call!441438 () Bool)

(assert (=> b!5754936 (= res!2429605 call!441438)))

(declare-fun e!3536706 () Bool)

(assert (=> b!5754936 (= e!3536706 e!3536704)))

(declare-fun d!1813655 () Bool)

(declare-fun c!1016902 () Bool)

(assert (=> d!1813655 (= c!1016902 (is-EmptyExpr!15762 r!7292))))

(assert (=> d!1813655 (= (matchRSpec!2865 r!7292 s!2326) e!3536703)))

(declare-fun b!5754937 () Bool)

(assert (=> b!5754937 (= e!3536703 call!441438)))

(declare-fun b!5754938 () Bool)

(assert (=> b!5754938 (= e!3536702 e!3536706)))

(declare-fun c!1016905 () Bool)

(assert (=> b!5754938 (= c!1016905 (is-Star!15762 r!7292))))

(declare-fun call!441437 () Bool)

(assert (=> b!5754939 (= e!3536704 call!441437)))

(declare-fun b!5754940 () Bool)

(declare-fun c!1016904 () Bool)

(assert (=> b!5754940 (= c!1016904 (is-Union!15762 r!7292))))

(declare-fun e!3536705 () Bool)

(assert (=> b!5754940 (= e!3536705 e!3536702)))

(declare-fun b!5754941 () Bool)

(declare-fun c!1016903 () Bool)

(assert (=> b!5754941 (= c!1016903 (is-ElementMatch!15762 r!7292))))

(assert (=> b!5754941 (= e!3536701 e!3536705)))

(assert (=> b!5754942 (= e!3536706 call!441437)))

(declare-fun b!5754943 () Bool)

(assert (=> b!5754943 (= e!3536705 (= s!2326 (Cons!63461 (c!1016690 r!7292) Nil!63461)))))

(declare-fun bm!441432 () Bool)

(assert (=> bm!441432 (= call!441438 (isEmpty!35351 s!2326))))

(declare-fun bm!441433 () Bool)

(assert (=> bm!441433 (= call!441437 (Exists!2862 (ite c!1016905 lambda!312381 lambda!312383)))))

(assert (= (and d!1813655 c!1016902) b!5754937))

(assert (= (and d!1813655 (not c!1016902)) b!5754935))

(assert (= (and b!5754935 res!2429603) b!5754941))

(assert (= (and b!5754941 c!1016903) b!5754943))

(assert (= (and b!5754941 (not c!1016903)) b!5754940))

(assert (= (and b!5754940 c!1016904) b!5754934))

(assert (= (and b!5754940 (not c!1016904)) b!5754938))

(assert (= (and b!5754934 (not res!2429604)) b!5754933))

(assert (= (and b!5754938 c!1016905) b!5754936))

(assert (= (and b!5754938 (not c!1016905)) b!5754942))

(assert (= (and b!5754936 (not res!2429605)) b!5754939))

(assert (= (or b!5754939 b!5754942) bm!441433))

(assert (= (or b!5754937 b!5754936) bm!441432))

(declare-fun m!6704412 () Bool)

(assert (=> b!5754933 m!6704412))

(declare-fun m!6704414 () Bool)

(assert (=> b!5754934 m!6704414))

(assert (=> bm!441432 m!6704010))

(declare-fun m!6704416 () Bool)

(assert (=> bm!441433 m!6704416))

(assert (=> b!5754097 d!1813655))

(declare-fun b!5754948 () Bool)

(declare-fun res!2429617 () Bool)

(declare-fun e!3536713 () Bool)

(assert (=> b!5754948 (=> res!2429617 e!3536713)))

(assert (=> b!5754948 (= res!2429617 (not (is-ElementMatch!15762 r!7292)))))

(declare-fun e!3536711 () Bool)

(assert (=> b!5754948 (= e!3536711 e!3536713)))

(declare-fun b!5754949 () Bool)

(declare-fun e!3536716 () Bool)

(assert (=> b!5754949 (= e!3536713 e!3536716)))

(declare-fun res!2429616 () Bool)

(assert (=> b!5754949 (=> (not res!2429616) (not e!3536716))))

(declare-fun lt!2287950 () Bool)

(assert (=> b!5754949 (= res!2429616 (not lt!2287950))))

(declare-fun b!5754950 () Bool)

(declare-fun e!3536715 () Bool)

(assert (=> b!5754950 (= e!3536715 e!3536711)))

(declare-fun c!1016908 () Bool)

(assert (=> b!5754950 (= c!1016908 (is-EmptyLang!15762 r!7292))))

(declare-fun d!1813657 () Bool)

(assert (=> d!1813657 e!3536715))

(declare-fun c!1016906 () Bool)

(assert (=> d!1813657 (= c!1016906 (is-EmptyExpr!15762 r!7292))))

(declare-fun e!3536710 () Bool)

(assert (=> d!1813657 (= lt!2287950 e!3536710)))

(declare-fun c!1016907 () Bool)

(assert (=> d!1813657 (= c!1016907 (isEmpty!35351 s!2326))))

(assert (=> d!1813657 (validRegex!7498 r!7292)))

(assert (=> d!1813657 (= (matchR!7947 r!7292 s!2326) lt!2287950)))

(declare-fun b!5754951 () Bool)

(assert (=> b!5754951 (= e!3536710 (matchR!7947 (derivativeStep!4547 r!7292 (head!12168 s!2326)) (tail!11263 s!2326)))))

(declare-fun b!5754952 () Bool)

(declare-fun res!2429611 () Bool)

(declare-fun e!3536714 () Bool)

(assert (=> b!5754952 (=> (not res!2429611) (not e!3536714))))

(declare-fun call!441439 () Bool)

(assert (=> b!5754952 (= res!2429611 (not call!441439))))

(declare-fun b!5754953 () Bool)

(declare-fun res!2429613 () Bool)

(assert (=> b!5754953 (=> res!2429613 e!3536713)))

(assert (=> b!5754953 (= res!2429613 e!3536714)))

(declare-fun res!2429615 () Bool)

(assert (=> b!5754953 (=> (not res!2429615) (not e!3536714))))

(assert (=> b!5754953 (= res!2429615 lt!2287950)))

(declare-fun bm!441434 () Bool)

(assert (=> bm!441434 (= call!441439 (isEmpty!35351 s!2326))))

(declare-fun b!5754954 () Bool)

(assert (=> b!5754954 (= e!3536715 (= lt!2287950 call!441439))))

(declare-fun b!5754955 () Bool)

(declare-fun res!2429614 () Bool)

(declare-fun e!3536712 () Bool)

(assert (=> b!5754955 (=> res!2429614 e!3536712)))

(assert (=> b!5754955 (= res!2429614 (not (isEmpty!35351 (tail!11263 s!2326))))))

(declare-fun b!5754956 () Bool)

(assert (=> b!5754956 (= e!3536716 e!3536712)))

(declare-fun res!2429612 () Bool)

(assert (=> b!5754956 (=> res!2429612 e!3536712)))

(assert (=> b!5754956 (= res!2429612 call!441439)))

(declare-fun b!5754957 () Bool)

(assert (=> b!5754957 (= e!3536710 (nullable!5794 r!7292))))

(declare-fun b!5754958 () Bool)

(assert (=> b!5754958 (= e!3536711 (not lt!2287950))))

(declare-fun b!5754959 () Bool)

(assert (=> b!5754959 (= e!3536714 (= (head!12168 s!2326) (c!1016690 r!7292)))))

(declare-fun b!5754960 () Bool)

(declare-fun res!2429610 () Bool)

(assert (=> b!5754960 (=> (not res!2429610) (not e!3536714))))

(assert (=> b!5754960 (= res!2429610 (isEmpty!35351 (tail!11263 s!2326)))))

(declare-fun b!5754961 () Bool)

(assert (=> b!5754961 (= e!3536712 (not (= (head!12168 s!2326) (c!1016690 r!7292))))))

(assert (= (and d!1813657 c!1016907) b!5754957))

(assert (= (and d!1813657 (not c!1016907)) b!5754951))

(assert (= (and d!1813657 c!1016906) b!5754954))

(assert (= (and d!1813657 (not c!1016906)) b!5754950))

(assert (= (and b!5754950 c!1016908) b!5754958))

(assert (= (and b!5754950 (not c!1016908)) b!5754948))

(assert (= (and b!5754948 (not res!2429617)) b!5754953))

(assert (= (and b!5754953 res!2429615) b!5754952))

(assert (= (and b!5754952 res!2429611) b!5754960))

(assert (= (and b!5754960 res!2429610) b!5754959))

(assert (= (and b!5754953 (not res!2429613)) b!5754949))

(assert (= (and b!5754949 res!2429616) b!5754956))

(assert (= (and b!5754956 (not res!2429612)) b!5754955))

(assert (= (and b!5754955 (not res!2429614)) b!5754961))

(assert (= (or b!5754954 b!5754952 b!5754956) bm!441434))

(assert (=> b!5754951 m!6704002))

(assert (=> b!5754951 m!6704002))

(declare-fun m!6704428 () Bool)

(assert (=> b!5754951 m!6704428))

(assert (=> b!5754951 m!6704006))

(assert (=> b!5754951 m!6704428))

(assert (=> b!5754951 m!6704006))

(declare-fun m!6704430 () Bool)

(assert (=> b!5754951 m!6704430))

(assert (=> bm!441434 m!6704010))

(assert (=> b!5754961 m!6704002))

(assert (=> b!5754960 m!6704006))

(assert (=> b!5754960 m!6704006))

(assert (=> b!5754960 m!6704012))

(declare-fun m!6704432 () Bool)

(assert (=> b!5754957 m!6704432))

(assert (=> b!5754959 m!6704002))

(assert (=> d!1813657 m!6704010))

(assert (=> d!1813657 m!6703680))

(assert (=> b!5754955 m!6704006))

(assert (=> b!5754955 m!6704006))

(assert (=> b!5754955 m!6704012))

(assert (=> b!5754097 d!1813657))

(declare-fun d!1813663 () Bool)

(assert (=> d!1813663 (= (matchR!7947 r!7292 s!2326) (matchRSpec!2865 r!7292 s!2326))))

(declare-fun lt!2287953 () Unit!156580)

(assert (=> d!1813663 (= lt!2287953 (choose!43622 r!7292 s!2326))))

(assert (=> d!1813663 (validRegex!7498 r!7292)))

(assert (=> d!1813663 (= (mainMatchTheorem!2865 r!7292 s!2326) lt!2287953)))

(declare-fun bs!1348527 () Bool)

(assert (= bs!1348527 d!1813663))

(assert (=> bs!1348527 m!6703638))

(assert (=> bs!1348527 m!6703636))

(declare-fun m!6704434 () Bool)

(assert (=> bs!1348527 m!6704434))

(assert (=> bs!1348527 m!6703680))

(assert (=> b!5754097 d!1813663))

(declare-fun b!5754997 () Bool)

(assert (=> b!5754997 true))

(declare-fun bs!1348531 () Bool)

(declare-fun b!5754999 () Bool)

(assert (= bs!1348531 (and b!5754999 b!5754997)))

(declare-fun lambda!312392 () Int)

(declare-fun lt!2287970 () Int)

(declare-fun lt!2287971 () Int)

(declare-fun lambda!312393 () Int)

(assert (=> bs!1348531 (= (= lt!2287970 lt!2287971) (= lambda!312393 lambda!312392))))

(assert (=> b!5754999 true))

(declare-fun d!1813665 () Bool)

(declare-fun e!3536738 () Bool)

(assert (=> d!1813665 e!3536738))

(declare-fun res!2429637 () Bool)

(assert (=> d!1813665 (=> (not res!2429637) (not e!3536738))))

(assert (=> d!1813665 (= res!2429637 (>= lt!2287970 0))))

(declare-fun e!3536737 () Int)

(assert (=> d!1813665 (= lt!2287970 e!3536737)))

(declare-fun c!1016923 () Bool)

(assert (=> d!1813665 (= c!1016923 (is-Cons!63463 zl!343))))

(assert (=> d!1813665 (= (zipperDepth!237 zl!343) lt!2287970)))

(assert (=> b!5754997 (= e!3536737 lt!2287971)))

(declare-fun contextDepth!133 (Context!10292) Int)

(assert (=> b!5754997 (= lt!2287971 (maxBigInt!0 (contextDepth!133 (h!69911 zl!343)) (zipperDepth!237 (t!376919 zl!343))))))

(declare-fun lambda!312391 () Int)

(declare-fun lt!2287968 () Unit!156580)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!123 (List!63587 Int Int Int) Unit!156580)

(assert (=> b!5754997 (= lt!2287968 (lemmaForallContextDepthBiggerThanTransitive!123 (t!376919 zl!343) lt!2287971 (zipperDepth!237 (t!376919 zl!343)) lambda!312391))))

(declare-fun forall!14884 (List!63587 Int) Bool)

(assert (=> b!5754997 (forall!14884 (t!376919 zl!343) lambda!312392)))

(declare-fun lt!2287969 () Unit!156580)

(assert (=> b!5754997 (= lt!2287969 lt!2287968)))

(declare-fun b!5754998 () Bool)

(assert (=> b!5754998 (= e!3536737 0)))

(assert (=> b!5754999 (= e!3536738 (forall!14884 zl!343 lambda!312393))))

(assert (= (and d!1813665 c!1016923) b!5754997))

(assert (= (and d!1813665 (not c!1016923)) b!5754998))

(assert (= (and d!1813665 res!2429637) b!5754999))

(declare-fun m!6704476 () Bool)

(assert (=> b!5754997 m!6704476))

(declare-fun m!6704478 () Bool)

(assert (=> b!5754997 m!6704478))

(declare-fun m!6704480 () Bool)

(assert (=> b!5754997 m!6704480))

(assert (=> b!5754997 m!6704476))

(assert (=> b!5754997 m!6704478))

(declare-fun m!6704482 () Bool)

(assert (=> b!5754997 m!6704482))

(declare-fun m!6704484 () Bool)

(assert (=> b!5754997 m!6704484))

(assert (=> b!5754997 m!6704478))

(declare-fun m!6704486 () Bool)

(assert (=> b!5754999 m!6704486))

(assert (=> b!5754076 d!1813665))

(declare-fun bs!1348532 () Bool)

(declare-fun b!5755002 () Bool)

(assert (= bs!1348532 (and b!5755002 b!5754997)))

(declare-fun lambda!312394 () Int)

(assert (=> bs!1348532 (= lambda!312394 lambda!312391)))

(declare-fun lambda!312395 () Int)

(declare-fun lt!2287975 () Int)

(assert (=> bs!1348532 (= (= lt!2287975 lt!2287971) (= lambda!312395 lambda!312392))))

(declare-fun bs!1348533 () Bool)

(assert (= bs!1348533 (and b!5755002 b!5754999)))

(assert (=> bs!1348533 (= (= lt!2287975 lt!2287970) (= lambda!312395 lambda!312393))))

(assert (=> b!5755002 true))

(declare-fun bs!1348534 () Bool)

(declare-fun b!5755004 () Bool)

(assert (= bs!1348534 (and b!5755004 b!5754997)))

(declare-fun lt!2287974 () Int)

(declare-fun lambda!312396 () Int)

(assert (=> bs!1348534 (= (= lt!2287974 lt!2287971) (= lambda!312396 lambda!312392))))

(declare-fun bs!1348535 () Bool)

(assert (= bs!1348535 (and b!5755004 b!5754999)))

(assert (=> bs!1348535 (= (= lt!2287974 lt!2287970) (= lambda!312396 lambda!312393))))

(declare-fun bs!1348536 () Bool)

(assert (= bs!1348536 (and b!5755004 b!5755002)))

(assert (=> bs!1348536 (= (= lt!2287974 lt!2287975) (= lambda!312396 lambda!312395))))

(assert (=> b!5755004 true))

(declare-fun d!1813679 () Bool)

(declare-fun e!3536740 () Bool)

(assert (=> d!1813679 e!3536740))

(declare-fun res!2429638 () Bool)

(assert (=> d!1813679 (=> (not res!2429638) (not e!3536740))))

(assert (=> d!1813679 (= res!2429638 (>= lt!2287974 0))))

(declare-fun e!3536739 () Int)

(assert (=> d!1813679 (= lt!2287974 e!3536739)))

(declare-fun c!1016924 () Bool)

(assert (=> d!1813679 (= c!1016924 (is-Cons!63463 lt!2287693))))

(assert (=> d!1813679 (= (zipperDepth!237 lt!2287693) lt!2287974)))

(assert (=> b!5755002 (= e!3536739 lt!2287975)))

(assert (=> b!5755002 (= lt!2287975 (maxBigInt!0 (contextDepth!133 (h!69911 lt!2287693)) (zipperDepth!237 (t!376919 lt!2287693))))))

(declare-fun lt!2287972 () Unit!156580)

(assert (=> b!5755002 (= lt!2287972 (lemmaForallContextDepthBiggerThanTransitive!123 (t!376919 lt!2287693) lt!2287975 (zipperDepth!237 (t!376919 lt!2287693)) lambda!312394))))

(assert (=> b!5755002 (forall!14884 (t!376919 lt!2287693) lambda!312395)))

(declare-fun lt!2287973 () Unit!156580)

(assert (=> b!5755002 (= lt!2287973 lt!2287972)))

(declare-fun b!5755003 () Bool)

(assert (=> b!5755003 (= e!3536739 0)))

(assert (=> b!5755004 (= e!3536740 (forall!14884 lt!2287693 lambda!312396))))

(assert (= (and d!1813679 c!1016924) b!5755002))

(assert (= (and d!1813679 (not c!1016924)) b!5755003))

(assert (= (and d!1813679 res!2429638) b!5755004))

(declare-fun m!6704488 () Bool)

(assert (=> b!5755002 m!6704488))

(declare-fun m!6704490 () Bool)

(assert (=> b!5755002 m!6704490))

(declare-fun m!6704492 () Bool)

(assert (=> b!5755002 m!6704492))

(assert (=> b!5755002 m!6704488))

(assert (=> b!5755002 m!6704490))

(declare-fun m!6704494 () Bool)

(assert (=> b!5755002 m!6704494))

(declare-fun m!6704496 () Bool)

(assert (=> b!5755002 m!6704496))

(assert (=> b!5755002 m!6704490))

(declare-fun m!6704498 () Bool)

(assert (=> b!5755004 m!6704498))

(assert (=> b!5754076 d!1813679))

(declare-fun d!1813681 () Bool)

(assert (=> d!1813681 (= (isEmpty!35348 (t!376918 (exprs!5646 (h!69911 zl!343)))) (is-Nil!63462 (t!376918 (exprs!5646 (h!69911 zl!343)))))))

(assert (=> b!5754096 d!1813681))

(declare-fun d!1813683 () Bool)

(declare-fun c!1016925 () Bool)

(assert (=> d!1813683 (= c!1016925 (isEmpty!35351 s!2326))))

(declare-fun e!3536741 () Bool)

(assert (=> d!1813683 (= (matchZipper!1900 lt!2287695 s!2326) e!3536741)))

(declare-fun b!5755005 () Bool)

(assert (=> b!5755005 (= e!3536741 (nullableZipper!1693 lt!2287695))))

(declare-fun b!5755006 () Bool)

(assert (=> b!5755006 (= e!3536741 (matchZipper!1900 (derivationStepZipper!1845 lt!2287695 (head!12168 s!2326)) (tail!11263 s!2326)))))

(assert (= (and d!1813683 c!1016925) b!5755005))

(assert (= (and d!1813683 (not c!1016925)) b!5755006))

(assert (=> d!1813683 m!6704010))

(declare-fun m!6704500 () Bool)

(assert (=> b!5755005 m!6704500))

(assert (=> b!5755006 m!6704002))

(assert (=> b!5755006 m!6704002))

(declare-fun m!6704502 () Bool)

(assert (=> b!5755006 m!6704502))

(assert (=> b!5755006 m!6704006))

(assert (=> b!5755006 m!6704502))

(assert (=> b!5755006 m!6704006))

(declare-fun m!6704504 () Bool)

(assert (=> b!5755006 m!6704504))

(assert (=> b!5754095 d!1813683))

(declare-fun d!1813685 () Bool)

(declare-fun c!1016926 () Bool)

(assert (=> d!1813685 (= c!1016926 (isEmpty!35351 (t!376917 s!2326)))))

(declare-fun e!3536742 () Bool)

(assert (=> d!1813685 (= (matchZipper!1900 lt!2287712 (t!376917 s!2326)) e!3536742)))

(declare-fun b!5755007 () Bool)

(assert (=> b!5755007 (= e!3536742 (nullableZipper!1693 lt!2287712))))

(declare-fun b!5755008 () Bool)

(assert (=> b!5755008 (= e!3536742 (matchZipper!1900 (derivationStepZipper!1845 lt!2287712 (head!12168 (t!376917 s!2326))) (tail!11263 (t!376917 s!2326))))))

(assert (= (and d!1813685 c!1016926) b!5755007))

(assert (= (and d!1813685 (not c!1016926)) b!5755008))

(assert (=> d!1813685 m!6703926))

(declare-fun m!6704506 () Bool)

(assert (=> b!5755007 m!6704506))

(assert (=> b!5755008 m!6703930))

(assert (=> b!5755008 m!6703930))

(declare-fun m!6704508 () Bool)

(assert (=> b!5755008 m!6704508))

(assert (=> b!5755008 m!6703934))

(assert (=> b!5755008 m!6704508))

(assert (=> b!5755008 m!6703934))

(declare-fun m!6704510 () Bool)

(assert (=> b!5755008 m!6704510))

(assert (=> b!5754095 d!1813685))

(assert (=> b!5754074 d!1813555))

(declare-fun b!5755021 () Bool)

(declare-fun e!3536745 () Bool)

(declare-fun tp!1590275 () Bool)

(assert (=> b!5755021 (= e!3536745 tp!1590275)))

(declare-fun b!5755019 () Bool)

(assert (=> b!5755019 (= e!3536745 tp_is_empty!40777)))

(declare-fun b!5755020 () Bool)

(declare-fun tp!1590277 () Bool)

(declare-fun tp!1590274 () Bool)

(assert (=> b!5755020 (= e!3536745 (and tp!1590277 tp!1590274))))

(assert (=> b!5754094 (= tp!1590227 e!3536745)))

(declare-fun b!5755022 () Bool)

(declare-fun tp!1590276 () Bool)

(declare-fun tp!1590273 () Bool)

(assert (=> b!5755022 (= e!3536745 (and tp!1590276 tp!1590273))))

(assert (= (and b!5754094 (is-ElementMatch!15762 (regOne!32036 r!7292))) b!5755019))

(assert (= (and b!5754094 (is-Concat!24607 (regOne!32036 r!7292))) b!5755020))

(assert (= (and b!5754094 (is-Star!15762 (regOne!32036 r!7292))) b!5755021))

(assert (= (and b!5754094 (is-Union!15762 (regOne!32036 r!7292))) b!5755022))

(declare-fun b!5755025 () Bool)

(declare-fun e!3536746 () Bool)

(declare-fun tp!1590280 () Bool)

(assert (=> b!5755025 (= e!3536746 tp!1590280)))

(declare-fun b!5755023 () Bool)

(assert (=> b!5755023 (= e!3536746 tp_is_empty!40777)))

(declare-fun b!5755024 () Bool)

(declare-fun tp!1590282 () Bool)

(declare-fun tp!1590279 () Bool)

(assert (=> b!5755024 (= e!3536746 (and tp!1590282 tp!1590279))))

(assert (=> b!5754094 (= tp!1590232 e!3536746)))

(declare-fun b!5755026 () Bool)

(declare-fun tp!1590281 () Bool)

(declare-fun tp!1590278 () Bool)

(assert (=> b!5755026 (= e!3536746 (and tp!1590281 tp!1590278))))

(assert (= (and b!5754094 (is-ElementMatch!15762 (regTwo!32036 r!7292))) b!5755023))

(assert (= (and b!5754094 (is-Concat!24607 (regTwo!32036 r!7292))) b!5755024))

(assert (= (and b!5754094 (is-Star!15762 (regTwo!32036 r!7292))) b!5755025))

(assert (= (and b!5754094 (is-Union!15762 (regTwo!32036 r!7292))) b!5755026))

(declare-fun condSetEmpty!38638 () Bool)

(assert (=> setNonEmpty!38632 (= condSetEmpty!38638 (= setRest!38632 (as set.empty (Set Context!10292))))))

(declare-fun setRes!38638 () Bool)

(assert (=> setNonEmpty!38632 (= tp!1590231 setRes!38638)))

(declare-fun setIsEmpty!38638 () Bool)

(assert (=> setIsEmpty!38638 setRes!38638))

(declare-fun e!3536749 () Bool)

(declare-fun setNonEmpty!38638 () Bool)

(declare-fun tp!1590288 () Bool)

(declare-fun setElem!38638 () Context!10292)

(assert (=> setNonEmpty!38638 (= setRes!38638 (and tp!1590288 (inv!82653 setElem!38638) e!3536749))))

(declare-fun setRest!38638 () (Set Context!10292))

(assert (=> setNonEmpty!38638 (= setRest!38632 (set.union (set.insert setElem!38638 (as set.empty (Set Context!10292))) setRest!38638))))

(declare-fun b!5755031 () Bool)

(declare-fun tp!1590287 () Bool)

(assert (=> b!5755031 (= e!3536749 tp!1590287)))

(assert (= (and setNonEmpty!38632 condSetEmpty!38638) setIsEmpty!38638))

(assert (= (and setNonEmpty!38632 (not condSetEmpty!38638)) setNonEmpty!38638))

(assert (= setNonEmpty!38638 b!5755031))

(declare-fun m!6704512 () Bool)

(assert (=> setNonEmpty!38638 m!6704512))

(declare-fun b!5755034 () Bool)

(declare-fun e!3536750 () Bool)

(declare-fun tp!1590291 () Bool)

(assert (=> b!5755034 (= e!3536750 tp!1590291)))

(declare-fun b!5755032 () Bool)

(assert (=> b!5755032 (= e!3536750 tp_is_empty!40777)))

(declare-fun b!5755033 () Bool)

(declare-fun tp!1590293 () Bool)

(declare-fun tp!1590290 () Bool)

(assert (=> b!5755033 (= e!3536750 (and tp!1590293 tp!1590290))))

(assert (=> b!5754086 (= tp!1590225 e!3536750)))

(declare-fun b!5755035 () Bool)

(declare-fun tp!1590292 () Bool)

(declare-fun tp!1590289 () Bool)

(assert (=> b!5755035 (= e!3536750 (and tp!1590292 tp!1590289))))

(assert (= (and b!5754086 (is-ElementMatch!15762 (reg!16091 r!7292))) b!5755032))

(assert (= (and b!5754086 (is-Concat!24607 (reg!16091 r!7292))) b!5755033))

(assert (= (and b!5754086 (is-Star!15762 (reg!16091 r!7292))) b!5755034))

(assert (= (and b!5754086 (is-Union!15762 (reg!16091 r!7292))) b!5755035))

(declare-fun b!5755038 () Bool)

(declare-fun e!3536751 () Bool)

(declare-fun tp!1590296 () Bool)

(assert (=> b!5755038 (= e!3536751 tp!1590296)))

(declare-fun b!5755036 () Bool)

(assert (=> b!5755036 (= e!3536751 tp_is_empty!40777)))

(declare-fun b!5755037 () Bool)

(declare-fun tp!1590298 () Bool)

(declare-fun tp!1590295 () Bool)

(assert (=> b!5755037 (= e!3536751 (and tp!1590298 tp!1590295))))

(assert (=> b!5754075 (= tp!1590230 e!3536751)))

(declare-fun b!5755039 () Bool)

(declare-fun tp!1590297 () Bool)

(declare-fun tp!1590294 () Bool)

(assert (=> b!5755039 (= e!3536751 (and tp!1590297 tp!1590294))))

(assert (= (and b!5754075 (is-ElementMatch!15762 (regOne!32037 r!7292))) b!5755036))

(assert (= (and b!5754075 (is-Concat!24607 (regOne!32037 r!7292))) b!5755037))

(assert (= (and b!5754075 (is-Star!15762 (regOne!32037 r!7292))) b!5755038))

(assert (= (and b!5754075 (is-Union!15762 (regOne!32037 r!7292))) b!5755039))

(declare-fun b!5755042 () Bool)

(declare-fun e!3536752 () Bool)

(declare-fun tp!1590301 () Bool)

(assert (=> b!5755042 (= e!3536752 tp!1590301)))

(declare-fun b!5755040 () Bool)

(assert (=> b!5755040 (= e!3536752 tp_is_empty!40777)))

(declare-fun b!5755041 () Bool)

(declare-fun tp!1590303 () Bool)

(declare-fun tp!1590300 () Bool)

(assert (=> b!5755041 (= e!3536752 (and tp!1590303 tp!1590300))))

(assert (=> b!5754075 (= tp!1590229 e!3536752)))

(declare-fun b!5755043 () Bool)

(declare-fun tp!1590302 () Bool)

(declare-fun tp!1590299 () Bool)

(assert (=> b!5755043 (= e!3536752 (and tp!1590302 tp!1590299))))

(assert (= (and b!5754075 (is-ElementMatch!15762 (regTwo!32037 r!7292))) b!5755040))

(assert (= (and b!5754075 (is-Concat!24607 (regTwo!32037 r!7292))) b!5755041))

(assert (= (and b!5754075 (is-Star!15762 (regTwo!32037 r!7292))) b!5755042))

(assert (= (and b!5754075 (is-Union!15762 (regTwo!32037 r!7292))) b!5755043))

(declare-fun b!5755052 () Bool)

(declare-fun e!3536757 () Bool)

(declare-fun tp!1590308 () Bool)

(declare-fun tp!1590309 () Bool)

(assert (=> b!5755052 (= e!3536757 (and tp!1590308 tp!1590309))))

(assert (=> b!5754080 (= tp!1590223 e!3536757)))

(assert (= (and b!5754080 (is-Cons!63462 (exprs!5646 (h!69911 zl!343)))) b!5755052))

(declare-fun b!5755060 () Bool)

(declare-fun e!3536763 () Bool)

(declare-fun tp!1590314 () Bool)

(assert (=> b!5755060 (= e!3536763 tp!1590314)))

(declare-fun e!3536762 () Bool)

(declare-fun tp!1590315 () Bool)

(declare-fun b!5755059 () Bool)

(assert (=> b!5755059 (= e!3536762 (and (inv!82653 (h!69911 (t!376919 zl!343))) e!3536763 tp!1590315))))

(assert (=> b!5754069 (= tp!1590224 e!3536762)))

(assert (= b!5755059 b!5755060))

(assert (= (and b!5754069 (is-Cons!63463 (t!376919 zl!343))) b!5755059))

(declare-fun m!6704514 () Bool)

(assert (=> b!5755059 m!6704514))

(declare-fun b!5755061 () Bool)

(declare-fun e!3536764 () Bool)

(declare-fun tp!1590316 () Bool)

(declare-fun tp!1590317 () Bool)

(assert (=> b!5755061 (= e!3536764 (and tp!1590316 tp!1590317))))

(assert (=> b!5754085 (= tp!1590228 e!3536764)))

(assert (= (and b!5754085 (is-Cons!63462 (exprs!5646 setElem!38632))) b!5755061))

(declare-fun b!5755066 () Bool)

(declare-fun e!3536767 () Bool)

(declare-fun tp!1590320 () Bool)

(assert (=> b!5755066 (= e!3536767 (and tp_is_empty!40777 tp!1590320))))

(assert (=> b!5754104 (= tp!1590226 e!3536767)))

(assert (= (and b!5754104 (is-Cons!63461 (t!376917 s!2326))) b!5755066))

(declare-fun b_lambda!217395 () Bool)

(assert (= b_lambda!217385 (or b!5754066 b_lambda!217395)))

(declare-fun bs!1348537 () Bool)

(declare-fun d!1813687 () Bool)

(assert (= bs!1348537 (and d!1813687 b!5754066)))

(assert (=> bs!1348537 (= (dynLambda!24846 lambda!312288 (h!69911 zl!343)) (derivationStepZipperUp!1030 (h!69911 zl!343) (h!69909 s!2326)))))

(assert (=> bs!1348537 m!6703670))

(assert (=> d!1813543 d!1813687))

(declare-fun b_lambda!217397 () Bool)

(assert (= b_lambda!217387 (or b!5754066 b_lambda!217397)))

(declare-fun bs!1348538 () Bool)

(declare-fun d!1813689 () Bool)

(assert (= bs!1348538 (and d!1813689 b!5754066)))

(assert (=> bs!1348538 (= (dynLambda!24846 lambda!312288 lt!2287720) (derivationStepZipperUp!1030 lt!2287720 (h!69909 s!2326)))))

(assert (=> bs!1348538 m!6703660))

(assert (=> d!1813581 d!1813689))

(declare-fun b_lambda!217399 () Bool)

(assert (= b_lambda!217391 (or b!5754066 b_lambda!217399)))

(declare-fun bs!1348539 () Bool)

(declare-fun d!1813691 () Bool)

(assert (= bs!1348539 (and d!1813691 b!5754066)))

(assert (=> bs!1348539 (= (dynLambda!24846 lambda!312288 lt!2287713) (derivationStepZipperUp!1030 lt!2287713 (h!69909 s!2326)))))

(assert (=> bs!1348539 m!6703622))

(assert (=> d!1813643 d!1813691))

(declare-fun b_lambda!217401 () Bool)

(assert (= b_lambda!217383 (or b!5754066 b_lambda!217401)))

(declare-fun bs!1348540 () Bool)

(declare-fun d!1813693 () Bool)

(assert (= bs!1348540 (and d!1813693 b!5754066)))

(assert (=> bs!1348540 (= (dynLambda!24846 lambda!312288 lt!2287682) (derivationStepZipperUp!1030 lt!2287682 (h!69909 s!2326)))))

(assert (=> bs!1348540 m!6703690))

(assert (=> d!1813509 d!1813693))

(declare-fun b_lambda!217403 () Bool)

(assert (= b_lambda!217393 (or b!5754066 b_lambda!217403)))

(declare-fun bs!1348541 () Bool)

(declare-fun d!1813695 () Bool)

(assert (= bs!1348541 (and d!1813695 b!5754066)))

(assert (=> bs!1348541 (= (dynLambda!24846 lambda!312288 lt!2287716) (derivationStepZipperUp!1030 lt!2287716 (h!69909 s!2326)))))

(assert (=> bs!1348541 m!6703624))

(assert (=> d!1813649 d!1813695))

(push 1)

(assert (not b!5754453))

(assert (not b!5754799))

(assert (not d!1813571))

(assert (not b!5754827))

(assert (not b!5754499))

(assert (not d!1813591))

(assert (not b!5754785))

(assert (not bm!441395))

(assert (not b!5754898))

(assert (not b!5754404))

(assert (not b!5754599))

(assert (not b!5754611))

(assert (not b!5754406))

(assert (not b!5754372))

(assert (not b!5754705))

(assert (not b!5754405))

(assert (not b!5755041))

(assert (not d!1813643))

(assert (not bm!441394))

(assert (not d!1813611))

(assert (not b!5754718))

(assert (not d!1813575))

(assert (not b!5754838))

(assert (not bm!441374))

(assert tp_is_empty!40777)

(assert (not b!5754401))

(assert (not b!5754832))

(assert (not b!5755066))

(assert (not b!5755004))

(assert (not bm!441419))

(assert (not bm!441401))

(assert (not b!5755038))

(assert (not b!5754449))

(assert (not bm!441430))

(assert (not b!5754896))

(assert (not b!5754835))

(assert (not bm!441405))

(assert (not b!5754511))

(assert (not b!5754908))

(assert (not d!1813633))

(assert (not b!5754704))

(assert (not b!5755006))

(assert (not b_lambda!217399))

(assert (not b!5754960))

(assert (not d!1813619))

(assert (not d!1813623))

(assert (not d!1813535))

(assert (not b!5754297))

(assert (not b!5754610))

(assert (not d!1813519))

(assert (not b!5755002))

(assert (not bm!441367))

(assert (not d!1813539))

(assert (not setNonEmpty!38638))

(assert (not b!5755005))

(assert (not b!5754368))

(assert (not b!5754837))

(assert (not b!5754296))

(assert (not b!5754375))

(assert (not d!1813567))

(assert (not b!5754721))

(assert (not d!1813577))

(assert (not d!1813683))

(assert (not b!5754894))

(assert (not d!1813587))

(assert (not b!5755008))

(assert (not b!5754791))

(assert (not b!5754999))

(assert (not b!5754399))

(assert (not d!1813529))

(assert (not b!5754701))

(assert (not b!5754715))

(assert (not b!5754370))

(assert (not b!5754795))

(assert (not b!5754831))

(assert (not b!5755021))

(assert (not b!5754884))

(assert (not d!1813513))

(assert (not b!5754690))

(assert (not b!5754955))

(assert (not b!5754344))

(assert (not bm!441433))

(assert (not d!1813521))

(assert (not b!5755022))

(assert (not d!1813663))

(assert (not bm!441359))

(assert (not bs!1348540))

(assert (not b!5754597))

(assert (not b!5754632))

(assert (not d!1813515))

(assert (not b!5754834))

(assert (not bm!441398))

(assert (not b!5754612))

(assert (not b!5755061))

(assert (not bm!441434))

(assert (not bm!441393))

(assert (not bm!441422))

(assert (not b!5754488))

(assert (not bm!441400))

(assert (not b!5754454))

(assert (not b!5755007))

(assert (not d!1813517))

(assert (not b!5754699))

(assert (not b!5755026))

(assert (not d!1813525))

(assert (not b!5755020))

(assert (not d!1813649))

(assert (not b!5754402))

(assert (not b!5754603))

(assert (not d!1813605))

(assert (not b!5754633))

(assert (not d!1813497))

(assert (not b!5754691))

(assert (not d!1813613))

(assert (not d!1813645))

(assert (not b!5754961))

(assert (not bm!441353))

(assert (not bm!441351))

(assert (not d!1813629))

(assert (not bm!441366))

(assert (not b!5754520))

(assert (not d!1813551))

(assert (not b!5754695))

(assert (not d!1813509))

(assert (not d!1813631))

(assert (not d!1813563))

(assert (not b_lambda!217395))

(assert (not bm!441365))

(assert (not d!1813505))

(assert (not b!5754801))

(assert (not d!1813553))

(assert (not d!1813545))

(assert (not b!5754377))

(assert (not b!5754909))

(assert (not b!5754703))

(assert (not d!1813565))

(assert (not b!5755024))

(assert (not d!1813585))

(assert (not d!1813581))

(assert (not b!5754888))

(assert (not b!5754502))

(assert (not b!5754928))

(assert (not b!5754445))

(assert (not b!5754959))

(assert (not b!5755031))

(assert (not bm!441391))

(assert (not b!5754951))

(assert (not b!5754598))

(assert (not d!1813589))

(assert (not b!5755052))

(assert (not b!5754412))

(assert (not bm!441392))

(assert (not b_lambda!217401))

(assert (not bm!441429))

(assert (not d!1813579))

(assert (not b!5754926))

(assert (not b!5754636))

(assert (not b!5754720))

(assert (not d!1813511))

(assert (not b!5754892))

(assert (not b!5754713))

(assert (not b!5754523))

(assert (not bm!441399))

(assert (not b!5755035))

(assert (not b!5754407))

(assert (not b!5754515))

(assert (not b!5754527))

(assert (not bs!1348539))

(assert (not b!5754455))

(assert (not b!5754797))

(assert (not b!5754371))

(assert (not b!5754997))

(assert (not b!5754369))

(assert (not d!1813543))

(assert (not bm!441417))

(assert (not d!1813685))

(assert (not b!5754489))

(assert (not bm!441364))

(assert (not bs!1348541))

(assert (not d!1813559))

(assert (not b!5755025))

(assert (not b!5755042))

(assert (not b!5754327))

(assert (not b_lambda!217397))

(assert (not b!5754608))

(assert (not b!5755037))

(assert (not d!1813635))

(assert (not b!5755033))

(assert (not b!5754934))

(assert (not b_lambda!217403))

(assert (not bs!1348538))

(assert (not b!5754609))

(assert (not b!5754596))

(assert (not bm!441431))

(assert (not b!5755034))

(assert (not bm!441427))

(assert (not b!5754717))

(assert (not d!1813557))

(assert (not d!1813583))

(assert (not bm!441373))

(assert (not b!5754709))

(assert (not bm!441356))

(assert (not b!5755043))

(assert (not bs!1348537))

(assert (not b!5754957))

(assert (not bm!441372))

(assert (not d!1813601))

(assert (not bm!441402))

(assert (not b!5754923))

(assert (not b!5754931))

(assert (not d!1813501))

(assert (not b!5754605))

(assert (not b!5755060))

(assert (not b!5754800))

(assert (not b!5754518))

(assert (not b!5754451))

(assert (not d!1813609))

(assert (not b!5754638))

(assert (not d!1813603))

(assert (not bm!441348))

(assert (not d!1813657))

(assert (not b!5754639))

(assert (not b!5754341))

(assert (not d!1813599))

(assert (not b!5754933))

(assert (not bm!441370))

(assert (not d!1813653))

(assert (not d!1813561))

(assert (not d!1813651))

(assert (not b!5754635))

(assert (not bm!441432))

(assert (not b!5755059))

(assert (not bm!441408))

(assert (not bm!441428))

(assert (not d!1813593))

(assert (not d!1813499))

(assert (not b!5755039))

(assert (not b!5754600))

(assert (not d!1813555))

(assert (not b!5754828))

(assert (not b!5754719))

(assert (not b!5754897))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

