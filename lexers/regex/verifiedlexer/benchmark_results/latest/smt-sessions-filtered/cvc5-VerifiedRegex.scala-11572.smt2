; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!639460 () Bool)

(assert start!639460)

(declare-fun b!6508257 () Bool)

(assert (=> b!6508257 true))

(assert (=> b!6508257 true))

(declare-fun lambda!361002 () Int)

(declare-fun lambda!361001 () Int)

(assert (=> b!6508257 (not (= lambda!361002 lambda!361001))))

(assert (=> b!6508257 true))

(assert (=> b!6508257 true))

(declare-fun b!6508244 () Bool)

(assert (=> b!6508244 true))

(declare-fun b!6508247 () Bool)

(assert (=> b!6508247 true))

(declare-fun b!6508238 () Bool)

(declare-fun res!2672807 () Bool)

(declare-fun e!3943302 () Bool)

(assert (=> b!6508238 (=> res!2672807 e!3943302)))

(declare-datatypes ((C!33050 0))(
  ( (C!33051 (val!26227 Int)) )
))
(declare-datatypes ((Regex!16390 0))(
  ( (ElementMatch!16390 (c!1193670 C!33050)) (Concat!25235 (regOne!33292 Regex!16390) (regTwo!33292 Regex!16390)) (EmptyExpr!16390) (Star!16390 (reg!16719 Regex!16390)) (EmptyLang!16390) (Union!16390 (regOne!33293 Regex!16390) (regTwo!33293 Regex!16390)) )
))
(declare-datatypes ((List!65469 0))(
  ( (Nil!65345) (Cons!65345 (h!71793 Regex!16390) (t!379105 List!65469)) )
))
(declare-datatypes ((Context!11548 0))(
  ( (Context!11549 (exprs!6274 List!65469)) )
))
(declare-datatypes ((List!65470 0))(
  ( (Nil!65346) (Cons!65346 (h!71794 Context!11548) (t!379106 List!65470)) )
))
(declare-fun zl!343 () List!65470)

(declare-fun isEmpty!37555 (List!65470) Bool)

(assert (=> b!6508238 (= res!2672807 (not (isEmpty!37555 (t!379106 zl!343))))))

(declare-fun b!6508239 () Bool)

(declare-fun e!3943301 () Bool)

(declare-fun lt!2393690 () (Set Context!11548))

(declare-datatypes ((List!65471 0))(
  ( (Nil!65347) (Cons!65347 (h!71795 C!33050) (t!379107 List!65471)) )
))
(declare-fun s!2326 () List!65471)

(declare-fun matchZipper!2402 ((Set Context!11548) List!65471) Bool)

(assert (=> b!6508239 (= e!3943301 (not (matchZipper!2402 lt!2393690 (t!379107 s!2326))))))

(declare-fun b!6508240 () Bool)

(declare-fun res!2672786 () Bool)

(declare-fun e!3943288 () Bool)

(assert (=> b!6508240 (=> res!2672786 e!3943288)))

(declare-fun r!7292 () Regex!16390)

(assert (=> b!6508240 (= res!2672786 (or (is-Concat!25235 (regOne!33292 r!7292)) (not (is-Star!16390 (regOne!33292 r!7292)))))))

(declare-fun b!6508241 () Bool)

(declare-fun e!3943291 () Bool)

(declare-fun e!3943286 () Bool)

(assert (=> b!6508241 (= e!3943291 e!3943286)))

(declare-fun res!2672806 () Bool)

(assert (=> b!6508241 (=> res!2672806 e!3943286)))

(declare-fun lt!2393693 () Regex!16390)

(assert (=> b!6508241 (= res!2672806 (not (= r!7292 lt!2393693)))))

(declare-fun lt!2393667 () Regex!16390)

(assert (=> b!6508241 (= lt!2393693 (Concat!25235 lt!2393667 (regTwo!33292 r!7292)))))

(declare-fun res!2672809 () Bool)

(declare-fun e!3943299 () Bool)

(assert (=> start!639460 (=> (not res!2672809) (not e!3943299))))

(declare-fun validRegex!8126 (Regex!16390) Bool)

(assert (=> start!639460 (= res!2672809 (validRegex!8126 r!7292))))

(assert (=> start!639460 e!3943299))

(declare-fun e!3943305 () Bool)

(assert (=> start!639460 e!3943305))

(declare-fun condSetEmpty!44398 () Bool)

(declare-fun z!1189 () (Set Context!11548))

(assert (=> start!639460 (= condSetEmpty!44398 (= z!1189 (as set.empty (Set Context!11548))))))

(declare-fun setRes!44398 () Bool)

(assert (=> start!639460 setRes!44398))

(declare-fun e!3943287 () Bool)

(assert (=> start!639460 e!3943287))

(declare-fun e!3943295 () Bool)

(assert (=> start!639460 e!3943295))

(declare-fun b!6508242 () Bool)

(declare-fun e!3943294 () Bool)

(declare-fun tp!1799713 () Bool)

(assert (=> b!6508242 (= e!3943294 tp!1799713)))

(declare-fun b!6508243 () Bool)

(declare-fun res!2672783 () Bool)

(declare-fun e!3943306 () Bool)

(assert (=> b!6508243 (=> res!2672783 e!3943306)))

(declare-fun isEmpty!37556 (List!65469) Bool)

(assert (=> b!6508243 (= res!2672783 (isEmpty!37556 (t!379105 (exprs!6274 (h!71794 zl!343)))))))

(assert (=> b!6508244 (= e!3943306 e!3943288)))

(declare-fun res!2672794 () Bool)

(assert (=> b!6508244 (=> res!2672794 e!3943288)))

(assert (=> b!6508244 (= res!2672794 (or (and (is-ElementMatch!16390 (regOne!33292 r!7292)) (= (c!1193670 (regOne!33292 r!7292)) (h!71795 s!2326))) (is-Union!16390 (regOne!33292 r!7292))))))

(declare-datatypes ((Unit!158895 0))(
  ( (Unit!158896) )
))
(declare-fun lt!2393696 () Unit!158895)

(declare-fun e!3943304 () Unit!158895)

(assert (=> b!6508244 (= lt!2393696 e!3943304)))

(declare-fun c!1193669 () Bool)

(declare-fun lt!2393699 () Bool)

(assert (=> b!6508244 (= c!1193669 lt!2393699)))

(declare-fun nullable!6383 (Regex!16390) Bool)

(assert (=> b!6508244 (= lt!2393699 (nullable!6383 (h!71793 (exprs!6274 (h!71794 zl!343)))))))

(declare-fun lambda!361003 () Int)

(declare-fun flatMap!1895 ((Set Context!11548) Int) (Set Context!11548))

(declare-fun derivationStepZipperUp!1564 (Context!11548 C!33050) (Set Context!11548))

(assert (=> b!6508244 (= (flatMap!1895 z!1189 lambda!361003) (derivationStepZipperUp!1564 (h!71794 zl!343) (h!71795 s!2326)))))

(declare-fun lt!2393694 () Unit!158895)

(declare-fun lemmaFlatMapOnSingletonSet!1421 ((Set Context!11548) Context!11548 Int) Unit!158895)

(assert (=> b!6508244 (= lt!2393694 (lemmaFlatMapOnSingletonSet!1421 z!1189 (h!71794 zl!343) lambda!361003))))

(declare-fun lt!2393691 () Context!11548)

(assert (=> b!6508244 (= lt!2393690 (derivationStepZipperUp!1564 lt!2393691 (h!71795 s!2326)))))

(declare-fun lt!2393680 () (Set Context!11548))

(declare-fun derivationStepZipperDown!1638 (Regex!16390 Context!11548 C!33050) (Set Context!11548))

(assert (=> b!6508244 (= lt!2393680 (derivationStepZipperDown!1638 (h!71793 (exprs!6274 (h!71794 zl!343))) lt!2393691 (h!71795 s!2326)))))

(assert (=> b!6508244 (= lt!2393691 (Context!11549 (t!379105 (exprs!6274 (h!71794 zl!343)))))))

(declare-fun lt!2393687 () (Set Context!11548))

(assert (=> b!6508244 (= lt!2393687 (derivationStepZipperUp!1564 (Context!11549 (Cons!65345 (h!71793 (exprs!6274 (h!71794 zl!343))) (t!379105 (exprs!6274 (h!71794 zl!343))))) (h!71795 s!2326)))))

(declare-fun b!6508245 () Bool)

(declare-fun res!2672812 () Bool)

(declare-fun e!3943292 () Bool)

(assert (=> b!6508245 (=> res!2672812 e!3943292)))

(assert (=> b!6508245 (= res!2672812 (not (matchZipper!2402 z!1189 s!2326)))))

(declare-fun b!6508246 () Bool)

(declare-fun e!3943303 () Bool)

(declare-fun e!3943293 () Bool)

(assert (=> b!6508246 (= e!3943303 e!3943293)))

(declare-fun res!2672792 () Bool)

(assert (=> b!6508246 (=> res!2672792 e!3943293)))

(declare-fun lt!2393697 () (Set Context!11548))

(declare-fun lt!2393669 () (Set Context!11548))

(assert (=> b!6508246 (= res!2672792 (not (= lt!2393697 lt!2393669)))))

(declare-fun lt!2393698 () (Set Context!11548))

(declare-fun lt!2393685 () Context!11548)

(assert (=> b!6508246 (= (flatMap!1895 lt!2393698 lambda!361003) (derivationStepZipperUp!1564 lt!2393685 (h!71795 s!2326)))))

(declare-fun lt!2393686 () Unit!158895)

(assert (=> b!6508246 (= lt!2393686 (lemmaFlatMapOnSingletonSet!1421 lt!2393698 lt!2393685 lambda!361003))))

(declare-fun lt!2393670 () (Set Context!11548))

(assert (=> b!6508246 (= lt!2393670 (derivationStepZipperUp!1564 lt!2393685 (h!71795 s!2326)))))

(declare-fun derivationStepZipper!2356 ((Set Context!11548) C!33050) (Set Context!11548))

(assert (=> b!6508246 (= lt!2393697 (derivationStepZipper!2356 lt!2393698 (h!71795 s!2326)))))

(assert (=> b!6508246 (= lt!2393698 (set.insert lt!2393685 (as set.empty (Set Context!11548))))))

(declare-fun lt!2393661 () List!65469)

(assert (=> b!6508246 (= lt!2393685 (Context!11549 (Cons!65345 (reg!16719 (regOne!33292 r!7292)) lt!2393661)))))

(declare-fun e!3943289 () Bool)

(declare-fun e!3943285 () Bool)

(assert (=> b!6508247 (= e!3943289 e!3943285)))

(declare-fun res!2672814 () Bool)

(assert (=> b!6508247 (=> res!2672814 e!3943285)))

(declare-fun lt!2393668 () Context!11548)

(declare-fun lt!2393675 () (Set Context!11548))

(declare-fun appendTo!151 ((Set Context!11548) Context!11548) (Set Context!11548))

(assert (=> b!6508247 (= res!2672814 (not (= (appendTo!151 lt!2393675 lt!2393668) lt!2393698)))))

(declare-fun lambda!361004 () Int)

(declare-fun map!14894 ((Set Context!11548) Int) (Set Context!11548))

(declare-fun ++!14482 (List!65469 List!65469) List!65469)

(assert (=> b!6508247 (= (map!14894 lt!2393675 lambda!361004) (set.insert (Context!11549 (++!14482 (Cons!65345 (reg!16719 (regOne!33292 r!7292)) Nil!65345) lt!2393661)) (as set.empty (Set Context!11548))))))

(declare-fun lt!2393676 () Unit!158895)

(declare-fun lambda!361005 () Int)

(declare-fun lemmaConcatPreservesForall!363 (List!65469 List!65469 Int) Unit!158895)

(assert (=> b!6508247 (= lt!2393676 (lemmaConcatPreservesForall!363 (Cons!65345 (reg!16719 (regOne!33292 r!7292)) Nil!65345) lt!2393661 lambda!361005))))

(declare-fun lt!2393674 () Unit!158895)

(declare-fun lt!2393695 () Context!11548)

(declare-fun lemmaMapOnSingletonSet!173 ((Set Context!11548) Context!11548 Int) Unit!158895)

(assert (=> b!6508247 (= lt!2393674 (lemmaMapOnSingletonSet!173 lt!2393675 lt!2393695 lambda!361004))))

(declare-fun b!6508248 () Bool)

(declare-fun res!2672816 () Bool)

(assert (=> b!6508248 (=> res!2672816 e!3943302)))

(declare-fun generalisedUnion!2234 (List!65469) Regex!16390)

(declare-fun unfocusZipperList!1811 (List!65470) List!65469)

(assert (=> b!6508248 (= res!2672816 (not (= r!7292 (generalisedUnion!2234 (unfocusZipperList!1811 zl!343)))))))

(declare-fun b!6508249 () Bool)

(declare-fun res!2672789 () Bool)

(declare-fun e!3943296 () Bool)

(assert (=> b!6508249 (=> res!2672789 e!3943296)))

(declare-fun unfocusZipper!2132 (List!65470) Regex!16390)

(assert (=> b!6508249 (= res!2672789 (not (= (unfocusZipper!2132 (Cons!65346 lt!2393668 Nil!65346)) lt!2393693)))))

(declare-fun b!6508250 () Bool)

(declare-fun res!2672802 () Bool)

(assert (=> b!6508250 (=> res!2672802 e!3943289)))

(declare-fun lt!2393683 () Bool)

(declare-fun lt!2393664 () Bool)

(assert (=> b!6508250 (= res!2672802 (or (not lt!2393683) (not lt!2393664)))))

(declare-fun b!6508251 () Bool)

(declare-fun Unit!158897 () Unit!158895)

(assert (=> b!6508251 (= e!3943304 Unit!158897)))

(declare-fun lt!2393689 () Unit!158895)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1221 ((Set Context!11548) (Set Context!11548) List!65471) Unit!158895)

(assert (=> b!6508251 (= lt!2393689 (lemmaZipperConcatMatchesSameAsBothZippers!1221 lt!2393680 lt!2393690 (t!379107 s!2326)))))

(declare-fun res!2672793 () Bool)

(assert (=> b!6508251 (= res!2672793 (matchZipper!2402 lt!2393680 (t!379107 s!2326)))))

(declare-fun e!3943298 () Bool)

(assert (=> b!6508251 (=> res!2672793 e!3943298)))

(assert (=> b!6508251 (= (matchZipper!2402 (set.union lt!2393680 lt!2393690) (t!379107 s!2326)) e!3943298)))

(declare-fun b!6508252 () Bool)

(declare-fun e!3943283 () Bool)

(assert (=> b!6508252 (= e!3943299 e!3943283)))

(declare-fun res!2672813 () Bool)

(assert (=> b!6508252 (=> (not res!2672813) (not e!3943283))))

(declare-fun lt!2393672 () Regex!16390)

(assert (=> b!6508252 (= res!2672813 (= r!7292 lt!2393672))))

(assert (=> b!6508252 (= lt!2393672 (unfocusZipper!2132 zl!343))))

(declare-fun b!6508253 () Bool)

(declare-fun tp!1799720 () Bool)

(assert (=> b!6508253 (= e!3943305 tp!1799720)))

(declare-fun tp!1799718 () Bool)

(declare-fun b!6508254 () Bool)

(declare-fun inv!84223 (Context!11548) Bool)

(assert (=> b!6508254 (= e!3943287 (and (inv!84223 (h!71794 zl!343)) e!3943294 tp!1799718))))

(declare-fun b!6508255 () Bool)

(declare-fun e!3943284 () Bool)

(assert (=> b!6508255 (= e!3943284 e!3943296)))

(declare-fun res!2672803 () Bool)

(assert (=> b!6508255 (=> res!2672803 e!3943296)))

(assert (=> b!6508255 (= res!2672803 (not (= (unfocusZipper!2132 (Cons!65346 lt!2393695 Nil!65346)) (reg!16719 (regOne!33292 r!7292)))))))

(declare-fun lt!2393692 () (Set Context!11548))

(assert (=> b!6508255 (= (flatMap!1895 lt!2393692 lambda!361003) (derivationStepZipperUp!1564 lt!2393668 (h!71795 s!2326)))))

(declare-fun lt!2393666 () Unit!158895)

(assert (=> b!6508255 (= lt!2393666 (lemmaFlatMapOnSingletonSet!1421 lt!2393692 lt!2393668 lambda!361003))))

(assert (=> b!6508255 (= (flatMap!1895 lt!2393675 lambda!361003) (derivationStepZipperUp!1564 lt!2393695 (h!71795 s!2326)))))

(declare-fun lt!2393665 () Unit!158895)

(assert (=> b!6508255 (= lt!2393665 (lemmaFlatMapOnSingletonSet!1421 lt!2393675 lt!2393695 lambda!361003))))

(declare-fun lt!2393682 () (Set Context!11548))

(assert (=> b!6508255 (= lt!2393682 (derivationStepZipperUp!1564 lt!2393668 (h!71795 s!2326)))))

(declare-fun lt!2393663 () (Set Context!11548))

(assert (=> b!6508255 (= lt!2393663 (derivationStepZipperUp!1564 lt!2393695 (h!71795 s!2326)))))

(assert (=> b!6508255 (= lt!2393692 (set.insert lt!2393668 (as set.empty (Set Context!11548))))))

(assert (=> b!6508255 (= lt!2393675 (set.insert lt!2393695 (as set.empty (Set Context!11548))))))

(assert (=> b!6508255 (= lt!2393695 (Context!11549 (Cons!65345 (reg!16719 (regOne!33292 r!7292)) Nil!65345)))))

(declare-fun b!6508256 () Bool)

(assert (=> b!6508256 (= e!3943296 e!3943292)))

(declare-fun res!2672785 () Bool)

(assert (=> b!6508256 (=> res!2672785 e!3943292)))

(declare-fun lt!2393688 () Bool)

(assert (=> b!6508256 (= res!2672785 lt!2393688)))

(declare-fun lt!2393678 () Regex!16390)

(declare-fun matchR!8573 (Regex!16390 List!65471) Bool)

(declare-fun matchRSpec!3491 (Regex!16390 List!65471) Bool)

(assert (=> b!6508256 (= (matchR!8573 lt!2393678 s!2326) (matchRSpec!3491 lt!2393678 s!2326))))

(declare-fun lt!2393679 () Unit!158895)

(declare-fun mainMatchTheorem!3491 (Regex!16390 List!65471) Unit!158895)

(assert (=> b!6508256 (= lt!2393679 (mainMatchTheorem!3491 lt!2393678 s!2326))))

(assert (=> b!6508257 (= e!3943302 e!3943306)))

(declare-fun res!2672804 () Bool)

(assert (=> b!6508257 (=> res!2672804 e!3943306)))

(declare-fun lt!2393677 () Bool)

(assert (=> b!6508257 (= res!2672804 (or (not (= lt!2393688 lt!2393677)) (is-Nil!65347 s!2326)))))

(declare-fun Exists!3460 (Int) Bool)

(assert (=> b!6508257 (= (Exists!3460 lambda!361001) (Exists!3460 lambda!361002))))

(declare-fun lt!2393673 () Unit!158895)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1997 (Regex!16390 Regex!16390 List!65471) Unit!158895)

(assert (=> b!6508257 (= lt!2393673 (lemmaExistCutMatchRandMatchRSpecEquivalent!1997 (regOne!33292 r!7292) (regTwo!33292 r!7292) s!2326))))

(assert (=> b!6508257 (= lt!2393677 (Exists!3460 lambda!361001))))

(declare-datatypes ((tuple2!66738 0))(
  ( (tuple2!66739 (_1!36672 List!65471) (_2!36672 List!65471)) )
))
(declare-datatypes ((Option!16281 0))(
  ( (None!16280) (Some!16280 (v!52459 tuple2!66738)) )
))
(declare-fun isDefined!12984 (Option!16281) Bool)

(declare-fun findConcatSeparation!2695 (Regex!16390 Regex!16390 List!65471 List!65471 List!65471) Option!16281)

(assert (=> b!6508257 (= lt!2393677 (isDefined!12984 (findConcatSeparation!2695 (regOne!33292 r!7292) (regTwo!33292 r!7292) Nil!65347 s!2326 s!2326)))))

(declare-fun lt!2393681 () Unit!158895)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2459 (Regex!16390 Regex!16390 List!65471) Unit!158895)

(assert (=> b!6508257 (= lt!2393681 (lemmaFindConcatSeparationEquivalentToExists!2459 (regOne!33292 r!7292) (regTwo!33292 r!7292) s!2326))))

(declare-fun b!6508258 () Bool)

(declare-fun e!3943297 () Bool)

(declare-fun tp!1799719 () Bool)

(assert (=> b!6508258 (= e!3943297 tp!1799719)))

(declare-fun b!6508259 () Bool)

(declare-fun res!2672811 () Bool)

(assert (=> b!6508259 (=> res!2672811 e!3943302)))

(declare-fun generalisedConcat!1987 (List!65469) Regex!16390)

(assert (=> b!6508259 (= res!2672811 (not (= r!7292 (generalisedConcat!1987 (exprs!6274 (h!71794 zl!343))))))))

(declare-fun b!6508260 () Bool)

(declare-fun Unit!158898 () Unit!158895)

(assert (=> b!6508260 (= e!3943304 Unit!158898)))

(declare-fun b!6508261 () Bool)

(assert (=> b!6508261 (= e!3943293 e!3943291)))

(declare-fun res!2672790 () Bool)

(assert (=> b!6508261 (=> res!2672790 e!3943291)))

(assert (=> b!6508261 (= res!2672790 (not (= lt!2393664 (matchZipper!2402 lt!2393697 (t!379107 s!2326)))))))

(assert (=> b!6508261 (= lt!2393664 (matchZipper!2402 lt!2393698 s!2326))))

(declare-fun b!6508262 () Bool)

(declare-fun tp!1799716 () Bool)

(declare-fun tp!1799712 () Bool)

(assert (=> b!6508262 (= e!3943305 (and tp!1799716 tp!1799712))))

(declare-fun b!6508263 () Bool)

(declare-fun e!3943290 () Bool)

(assert (=> b!6508263 (= e!3943290 (inv!84223 lt!2393668))))

(declare-fun b!6508264 () Bool)

(assert (=> b!6508264 (= e!3943292 e!3943289)))

(declare-fun res!2672791 () Bool)

(assert (=> b!6508264 (=> res!2672791 e!3943289)))

(assert (=> b!6508264 (= res!2672791 e!3943301)))

(declare-fun res!2672805 () Bool)

(assert (=> b!6508264 (=> (not res!2672805) (not e!3943301))))

(assert (=> b!6508264 (= res!2672805 (not lt!2393683))))

(assert (=> b!6508264 (= lt!2393683 (matchZipper!2402 lt!2393680 (t!379107 s!2326)))))

(declare-fun b!6508265 () Bool)

(declare-fun res!2672815 () Bool)

(assert (=> b!6508265 (=> res!2672815 e!3943291)))

(assert (=> b!6508265 (= res!2672815 (not (= lt!2393672 r!7292)))))

(declare-fun b!6508266 () Bool)

(assert (=> b!6508266 (= e!3943298 (matchZipper!2402 lt!2393690 (t!379107 s!2326)))))

(declare-fun setElem!44398 () Context!11548)

(declare-fun setNonEmpty!44398 () Bool)

(declare-fun tp!1799715 () Bool)

(assert (=> setNonEmpty!44398 (= setRes!44398 (and tp!1799715 (inv!84223 setElem!44398) e!3943297))))

(declare-fun setRest!44398 () (Set Context!11548))

(assert (=> setNonEmpty!44398 (= z!1189 (set.union (set.insert setElem!44398 (as set.empty (Set Context!11548))) setRest!44398))))

(declare-fun b!6508267 () Bool)

(declare-fun res!2672787 () Bool)

(assert (=> b!6508267 (=> (not res!2672787) (not e!3943299))))

(declare-fun toList!10174 ((Set Context!11548)) List!65470)

(assert (=> b!6508267 (= res!2672787 (= (toList!10174 z!1189) zl!343))))

(declare-fun b!6508268 () Bool)

(assert (=> b!6508268 (= e!3943286 e!3943284)))

(declare-fun res!2672795 () Bool)

(assert (=> b!6508268 (=> res!2672795 e!3943284)))

(assert (=> b!6508268 (= res!2672795 (not (= (unfocusZipper!2132 (Cons!65346 lt!2393685 Nil!65346)) lt!2393678)))))

(assert (=> b!6508268 (= lt!2393678 (Concat!25235 (reg!16719 (regOne!33292 r!7292)) lt!2393693))))

(declare-fun b!6508269 () Bool)

(declare-fun e!3943300 () Bool)

(assert (=> b!6508269 (= e!3943300 (nullable!6383 (regOne!33292 (regOne!33292 r!7292))))))

(declare-fun b!6508270 () Bool)

(assert (=> b!6508270 (= e!3943283 (not e!3943302))))

(declare-fun res!2672799 () Bool)

(assert (=> b!6508270 (=> res!2672799 e!3943302)))

(assert (=> b!6508270 (= res!2672799 (not (is-Cons!65346 zl!343)))))

(assert (=> b!6508270 (= lt!2393688 (matchRSpec!3491 r!7292 s!2326))))

(assert (=> b!6508270 (= lt!2393688 (matchR!8573 r!7292 s!2326))))

(declare-fun lt!2393662 () Unit!158895)

(assert (=> b!6508270 (= lt!2393662 (mainMatchTheorem!3491 r!7292 s!2326))))

(declare-fun b!6508271 () Bool)

(declare-fun res!2672800 () Bool)

(assert (=> b!6508271 (=> res!2672800 e!3943302)))

(assert (=> b!6508271 (= res!2672800 (not (is-Cons!65345 (exprs!6274 (h!71794 zl!343)))))))

(declare-fun b!6508272 () Bool)

(assert (=> b!6508272 (= e!3943285 e!3943290)))

(declare-fun res!2672810 () Bool)

(assert (=> b!6508272 (=> res!2672810 e!3943290)))

(declare-fun lt!2393671 () tuple2!66738)

(declare-fun ++!14483 (List!65471 List!65471) List!65471)

(assert (=> b!6508272 (= res!2672810 (not (= s!2326 (++!14483 (_1!36672 lt!2393671) (_2!36672 lt!2393671)))))))

(declare-fun lt!2393700 () Option!16281)

(declare-fun get!22667 (Option!16281) tuple2!66738)

(assert (=> b!6508272 (= lt!2393671 (get!22667 lt!2393700))))

(assert (=> b!6508272 (isDefined!12984 lt!2393700)))

(declare-fun findConcatSeparationZippers!155 ((Set Context!11548) (Set Context!11548) List!65471 List!65471 List!65471) Option!16281)

(assert (=> b!6508272 (= lt!2393700 (findConcatSeparationZippers!155 lt!2393675 lt!2393692 Nil!65347 s!2326 s!2326))))

(declare-fun lt!2393684 () Unit!158895)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!155 ((Set Context!11548) Context!11548 List!65471) Unit!158895)

(assert (=> b!6508272 (= lt!2393684 (lemmaConcatZipperMatchesStringThenFindConcatDefined!155 lt!2393675 lt!2393668 s!2326))))

(declare-fun setIsEmpty!44398 () Bool)

(assert (=> setIsEmpty!44398 setRes!44398))

(declare-fun b!6508273 () Bool)

(declare-fun res!2672784 () Bool)

(assert (=> b!6508273 (=> res!2672784 e!3943302)))

(assert (=> b!6508273 (= res!2672784 (or (is-EmptyExpr!16390 r!7292) (is-EmptyLang!16390 r!7292) (is-ElementMatch!16390 r!7292) (is-Union!16390 r!7292) (not (is-Concat!25235 r!7292))))))

(declare-fun b!6508274 () Bool)

(assert (=> b!6508274 (= e!3943288 e!3943303)))

(declare-fun res!2672798 () Bool)

(assert (=> b!6508274 (=> res!2672798 e!3943303)))

(assert (=> b!6508274 (= res!2672798 (not (= lt!2393680 lt!2393669)))))

(assert (=> b!6508274 (= lt!2393669 (derivationStepZipperDown!1638 (reg!16719 (regOne!33292 r!7292)) lt!2393668 (h!71795 s!2326)))))

(assert (=> b!6508274 (= lt!2393668 (Context!11549 lt!2393661))))

(assert (=> b!6508274 (= lt!2393661 (Cons!65345 lt!2393667 (t!379105 (exprs!6274 (h!71794 zl!343)))))))

(assert (=> b!6508274 (= lt!2393667 (Star!16390 (reg!16719 (regOne!33292 r!7292))))))

(declare-fun b!6508275 () Bool)

(declare-fun res!2672801 () Bool)

(assert (=> b!6508275 (=> res!2672801 e!3943290)))

(assert (=> b!6508275 (= res!2672801 (not (matchZipper!2402 lt!2393675 (_1!36672 lt!2393671))))))

(declare-fun b!6508276 () Bool)

(declare-fun tp_is_empty!42033 () Bool)

(declare-fun tp!1799714 () Bool)

(assert (=> b!6508276 (= e!3943295 (and tp_is_empty!42033 tp!1799714))))

(declare-fun b!6508277 () Bool)

(assert (=> b!6508277 (= e!3943305 tp_is_empty!42033)))

(declare-fun b!6508278 () Bool)

(declare-fun res!2672796 () Bool)

(assert (=> b!6508278 (=> res!2672796 e!3943290)))

(assert (=> b!6508278 (= res!2672796 (not (matchZipper!2402 lt!2393692 (_2!36672 lt!2393671))))))

(declare-fun b!6508279 () Bool)

(declare-fun res!2672788 () Bool)

(assert (=> b!6508279 (=> res!2672788 e!3943288)))

(assert (=> b!6508279 (= res!2672788 e!3943300)))

(declare-fun res!2672797 () Bool)

(assert (=> b!6508279 (=> (not res!2672797) (not e!3943300))))

(assert (=> b!6508279 (= res!2672797 (is-Concat!25235 (regOne!33292 r!7292)))))

(declare-fun b!6508280 () Bool)

(declare-fun res!2672808 () Bool)

(assert (=> b!6508280 (=> res!2672808 e!3943292)))

(assert (=> b!6508280 (= res!2672808 (not lt!2393699))))

(declare-fun b!6508281 () Bool)

(declare-fun tp!1799717 () Bool)

(declare-fun tp!1799711 () Bool)

(assert (=> b!6508281 (= e!3943305 (and tp!1799717 tp!1799711))))

(assert (= (and start!639460 res!2672809) b!6508267))

(assert (= (and b!6508267 res!2672787) b!6508252))

(assert (= (and b!6508252 res!2672813) b!6508270))

(assert (= (and b!6508270 (not res!2672799)) b!6508238))

(assert (= (and b!6508238 (not res!2672807)) b!6508259))

(assert (= (and b!6508259 (not res!2672811)) b!6508271))

(assert (= (and b!6508271 (not res!2672800)) b!6508248))

(assert (= (and b!6508248 (not res!2672816)) b!6508273))

(assert (= (and b!6508273 (not res!2672784)) b!6508257))

(assert (= (and b!6508257 (not res!2672804)) b!6508243))

(assert (= (and b!6508243 (not res!2672783)) b!6508244))

(assert (= (and b!6508244 c!1193669) b!6508251))

(assert (= (and b!6508244 (not c!1193669)) b!6508260))

(assert (= (and b!6508251 (not res!2672793)) b!6508266))

(assert (= (and b!6508244 (not res!2672794)) b!6508279))

(assert (= (and b!6508279 res!2672797) b!6508269))

(assert (= (and b!6508279 (not res!2672788)) b!6508240))

(assert (= (and b!6508240 (not res!2672786)) b!6508274))

(assert (= (and b!6508274 (not res!2672798)) b!6508246))

(assert (= (and b!6508246 (not res!2672792)) b!6508261))

(assert (= (and b!6508261 (not res!2672790)) b!6508265))

(assert (= (and b!6508265 (not res!2672815)) b!6508241))

(assert (= (and b!6508241 (not res!2672806)) b!6508268))

(assert (= (and b!6508268 (not res!2672795)) b!6508255))

(assert (= (and b!6508255 (not res!2672803)) b!6508249))

(assert (= (and b!6508249 (not res!2672789)) b!6508256))

(assert (= (and b!6508256 (not res!2672785)) b!6508245))

(assert (= (and b!6508245 (not res!2672812)) b!6508280))

(assert (= (and b!6508280 (not res!2672808)) b!6508264))

(assert (= (and b!6508264 res!2672805) b!6508239))

(assert (= (and b!6508264 (not res!2672791)) b!6508250))

(assert (= (and b!6508250 (not res!2672802)) b!6508247))

(assert (= (and b!6508247 (not res!2672814)) b!6508272))

(assert (= (and b!6508272 (not res!2672810)) b!6508275))

(assert (= (and b!6508275 (not res!2672801)) b!6508278))

(assert (= (and b!6508278 (not res!2672796)) b!6508263))

(assert (= (and start!639460 (is-ElementMatch!16390 r!7292)) b!6508277))

(assert (= (and start!639460 (is-Concat!25235 r!7292)) b!6508281))

(assert (= (and start!639460 (is-Star!16390 r!7292)) b!6508253))

(assert (= (and start!639460 (is-Union!16390 r!7292)) b!6508262))

(assert (= (and start!639460 condSetEmpty!44398) setIsEmpty!44398))

(assert (= (and start!639460 (not condSetEmpty!44398)) setNonEmpty!44398))

(assert (= setNonEmpty!44398 b!6508258))

(assert (= b!6508254 b!6508242))

(assert (= (and start!639460 (is-Cons!65346 zl!343)) b!6508254))

(assert (= (and start!639460 (is-Cons!65347 s!2326)) b!6508276))

(declare-fun m!7294812 () Bool)

(assert (=> b!6508252 m!7294812))

(declare-fun m!7294814 () Bool)

(assert (=> b!6508267 m!7294814))

(declare-fun m!7294816 () Bool)

(assert (=> b!6508266 m!7294816))

(declare-fun m!7294818 () Bool)

(assert (=> b!6508257 m!7294818))

(declare-fun m!7294820 () Bool)

(assert (=> b!6508257 m!7294820))

(declare-fun m!7294822 () Bool)

(assert (=> b!6508257 m!7294822))

(declare-fun m!7294824 () Bool)

(assert (=> b!6508257 m!7294824))

(declare-fun m!7294826 () Bool)

(assert (=> b!6508257 m!7294826))

(assert (=> b!6508257 m!7294826))

(assert (=> b!6508257 m!7294818))

(declare-fun m!7294828 () Bool)

(assert (=> b!6508257 m!7294828))

(declare-fun m!7294830 () Bool)

(assert (=> b!6508247 m!7294830))

(declare-fun m!7294832 () Bool)

(assert (=> b!6508247 m!7294832))

(declare-fun m!7294834 () Bool)

(assert (=> b!6508247 m!7294834))

(declare-fun m!7294836 () Bool)

(assert (=> b!6508247 m!7294836))

(declare-fun m!7294838 () Bool)

(assert (=> b!6508247 m!7294838))

(declare-fun m!7294840 () Bool)

(assert (=> b!6508247 m!7294840))

(declare-fun m!7294842 () Bool)

(assert (=> b!6508248 m!7294842))

(assert (=> b!6508248 m!7294842))

(declare-fun m!7294844 () Bool)

(assert (=> b!6508248 m!7294844))

(declare-fun m!7294846 () Bool)

(assert (=> b!6508251 m!7294846))

(declare-fun m!7294848 () Bool)

(assert (=> b!6508251 m!7294848))

(declare-fun m!7294850 () Bool)

(assert (=> b!6508251 m!7294850))

(declare-fun m!7294852 () Bool)

(assert (=> b!6508245 m!7294852))

(declare-fun m!7294854 () Bool)

(assert (=> b!6508261 m!7294854))

(declare-fun m!7294856 () Bool)

(assert (=> b!6508261 m!7294856))

(declare-fun m!7294858 () Bool)

(assert (=> b!6508243 m!7294858))

(declare-fun m!7294860 () Bool)

(assert (=> b!6508269 m!7294860))

(declare-fun m!7294862 () Bool)

(assert (=> start!639460 m!7294862))

(declare-fun m!7294864 () Bool)

(assert (=> b!6508263 m!7294864))

(declare-fun m!7294866 () Bool)

(assert (=> b!6508256 m!7294866))

(declare-fun m!7294868 () Bool)

(assert (=> b!6508256 m!7294868))

(declare-fun m!7294870 () Bool)

(assert (=> b!6508256 m!7294870))

(declare-fun m!7294872 () Bool)

(assert (=> b!6508274 m!7294872))

(declare-fun m!7294874 () Bool)

(assert (=> b!6508255 m!7294874))

(declare-fun m!7294876 () Bool)

(assert (=> b!6508255 m!7294876))

(declare-fun m!7294878 () Bool)

(assert (=> b!6508255 m!7294878))

(declare-fun m!7294880 () Bool)

(assert (=> b!6508255 m!7294880))

(declare-fun m!7294882 () Bool)

(assert (=> b!6508255 m!7294882))

(declare-fun m!7294884 () Bool)

(assert (=> b!6508255 m!7294884))

(declare-fun m!7294886 () Bool)

(assert (=> b!6508255 m!7294886))

(declare-fun m!7294888 () Bool)

(assert (=> b!6508255 m!7294888))

(declare-fun m!7294890 () Bool)

(assert (=> b!6508255 m!7294890))

(declare-fun m!7294892 () Bool)

(assert (=> b!6508275 m!7294892))

(declare-fun m!7294894 () Bool)

(assert (=> b!6508238 m!7294894))

(declare-fun m!7294896 () Bool)

(assert (=> b!6508270 m!7294896))

(declare-fun m!7294898 () Bool)

(assert (=> b!6508270 m!7294898))

(declare-fun m!7294900 () Bool)

(assert (=> b!6508270 m!7294900))

(declare-fun m!7294902 () Bool)

(assert (=> b!6508268 m!7294902))

(declare-fun m!7294904 () Bool)

(assert (=> b!6508246 m!7294904))

(declare-fun m!7294906 () Bool)

(assert (=> b!6508246 m!7294906))

(declare-fun m!7294908 () Bool)

(assert (=> b!6508246 m!7294908))

(declare-fun m!7294910 () Bool)

(assert (=> b!6508246 m!7294910))

(declare-fun m!7294912 () Bool)

(assert (=> b!6508246 m!7294912))

(declare-fun m!7294914 () Bool)

(assert (=> b!6508249 m!7294914))

(declare-fun m!7294916 () Bool)

(assert (=> b!6508244 m!7294916))

(declare-fun m!7294918 () Bool)

(assert (=> b!6508244 m!7294918))

(declare-fun m!7294920 () Bool)

(assert (=> b!6508244 m!7294920))

(declare-fun m!7294922 () Bool)

(assert (=> b!6508244 m!7294922))

(declare-fun m!7294924 () Bool)

(assert (=> b!6508244 m!7294924))

(declare-fun m!7294926 () Bool)

(assert (=> b!6508244 m!7294926))

(declare-fun m!7294928 () Bool)

(assert (=> b!6508244 m!7294928))

(declare-fun m!7294930 () Bool)

(assert (=> b!6508272 m!7294930))

(declare-fun m!7294932 () Bool)

(assert (=> b!6508272 m!7294932))

(declare-fun m!7294934 () Bool)

(assert (=> b!6508272 m!7294934))

(declare-fun m!7294936 () Bool)

(assert (=> b!6508272 m!7294936))

(declare-fun m!7294938 () Bool)

(assert (=> b!6508272 m!7294938))

(declare-fun m!7294940 () Bool)

(assert (=> setNonEmpty!44398 m!7294940))

(declare-fun m!7294942 () Bool)

(assert (=> b!6508259 m!7294942))

(assert (=> b!6508264 m!7294848))

(declare-fun m!7294944 () Bool)

(assert (=> b!6508254 m!7294944))

(declare-fun m!7294946 () Bool)

(assert (=> b!6508278 m!7294946))

(assert (=> b!6508239 m!7294816))

(push 1)

(assert (not b!6508266))

(assert (not b!6508247))

(assert (not b!6508238))

(assert (not b!6508249))

(assert (not b!6508255))

(assert (not b!6508242))

(assert (not setNonEmpty!44398))

(assert (not b!6508281))

(assert (not b!6508258))

(assert (not b!6508272))

(assert (not b!6508274))

(assert (not b!6508262))

(assert (not b!6508254))

(assert (not b!6508276))

(assert (not b!6508256))

(assert (not b!6508270))

(assert (not b!6508257))

(assert (not b!6508245))

(assert (not b!6508263))

(assert tp_is_empty!42033)

(assert (not b!6508261))

(assert (not b!6508243))

(assert (not start!639460))

(assert (not b!6508248))

(assert (not b!6508278))

(assert (not b!6508275))

(assert (not b!6508268))

(assert (not b!6508244))

(assert (not b!6508259))

(assert (not b!6508267))

(assert (not b!6508239))

(assert (not b!6508251))

(assert (not b!6508253))

(assert (not b!6508264))

(assert (not b!6508246))

(assert (not b!6508269))

(assert (not b!6508252))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2041733 () Bool)

(declare-fun c!1193688 () Bool)

(declare-fun isEmpty!37559 (List!65471) Bool)

(assert (=> d!2041733 (= c!1193688 (isEmpty!37559 (t!379107 s!2326)))))

(declare-fun e!3943387 () Bool)

(assert (=> d!2041733 (= (matchZipper!2402 lt!2393697 (t!379107 s!2326)) e!3943387)))

(declare-fun b!6508446 () Bool)

(declare-fun nullableZipper!2143 ((Set Context!11548)) Bool)

(assert (=> b!6508446 (= e!3943387 (nullableZipper!2143 lt!2393697))))

(declare-fun b!6508447 () Bool)

(declare-fun head!13247 (List!65471) C!33050)

(declare-fun tail!12332 (List!65471) List!65471)

(assert (=> b!6508447 (= e!3943387 (matchZipper!2402 (derivationStepZipper!2356 lt!2393697 (head!13247 (t!379107 s!2326))) (tail!12332 (t!379107 s!2326))))))

(assert (= (and d!2041733 c!1193688) b!6508446))

(assert (= (and d!2041733 (not c!1193688)) b!6508447))

(declare-fun m!7295084 () Bool)

(assert (=> d!2041733 m!7295084))

(declare-fun m!7295086 () Bool)

(assert (=> b!6508446 m!7295086))

(declare-fun m!7295088 () Bool)

(assert (=> b!6508447 m!7295088))

(assert (=> b!6508447 m!7295088))

(declare-fun m!7295090 () Bool)

(assert (=> b!6508447 m!7295090))

(declare-fun m!7295092 () Bool)

(assert (=> b!6508447 m!7295092))

(assert (=> b!6508447 m!7295090))

(assert (=> b!6508447 m!7295092))

(declare-fun m!7295094 () Bool)

(assert (=> b!6508447 m!7295094))

(assert (=> b!6508261 d!2041733))

(declare-fun d!2041735 () Bool)

(declare-fun c!1193689 () Bool)

(assert (=> d!2041735 (= c!1193689 (isEmpty!37559 s!2326))))

(declare-fun e!3943388 () Bool)

(assert (=> d!2041735 (= (matchZipper!2402 lt!2393698 s!2326) e!3943388)))

(declare-fun b!6508448 () Bool)

(assert (=> b!6508448 (= e!3943388 (nullableZipper!2143 lt!2393698))))

(declare-fun b!6508449 () Bool)

(assert (=> b!6508449 (= e!3943388 (matchZipper!2402 (derivationStepZipper!2356 lt!2393698 (head!13247 s!2326)) (tail!12332 s!2326)))))

(assert (= (and d!2041735 c!1193689) b!6508448))

(assert (= (and d!2041735 (not c!1193689)) b!6508449))

(declare-fun m!7295096 () Bool)

(assert (=> d!2041735 m!7295096))

(declare-fun m!7295098 () Bool)

(assert (=> b!6508448 m!7295098))

(declare-fun m!7295100 () Bool)

(assert (=> b!6508449 m!7295100))

(assert (=> b!6508449 m!7295100))

(declare-fun m!7295102 () Bool)

(assert (=> b!6508449 m!7295102))

(declare-fun m!7295104 () Bool)

(assert (=> b!6508449 m!7295104))

(assert (=> b!6508449 m!7295102))

(assert (=> b!6508449 m!7295104))

(declare-fun m!7295106 () Bool)

(assert (=> b!6508449 m!7295106))

(assert (=> b!6508261 d!2041735))

(declare-fun d!2041737 () Bool)

(declare-fun c!1193690 () Bool)

(assert (=> d!2041737 (= c!1193690 (isEmpty!37559 (t!379107 s!2326)))))

(declare-fun e!3943389 () Bool)

(assert (=> d!2041737 (= (matchZipper!2402 lt!2393690 (t!379107 s!2326)) e!3943389)))

(declare-fun b!6508450 () Bool)

(assert (=> b!6508450 (= e!3943389 (nullableZipper!2143 lt!2393690))))

(declare-fun b!6508451 () Bool)

(assert (=> b!6508451 (= e!3943389 (matchZipper!2402 (derivationStepZipper!2356 lt!2393690 (head!13247 (t!379107 s!2326))) (tail!12332 (t!379107 s!2326))))))

(assert (= (and d!2041737 c!1193690) b!6508450))

(assert (= (and d!2041737 (not c!1193690)) b!6508451))

(assert (=> d!2041737 m!7295084))

(declare-fun m!7295108 () Bool)

(assert (=> b!6508450 m!7295108))

(assert (=> b!6508451 m!7295088))

(assert (=> b!6508451 m!7295088))

(declare-fun m!7295110 () Bool)

(assert (=> b!6508451 m!7295110))

(assert (=> b!6508451 m!7295092))

(assert (=> b!6508451 m!7295110))

(assert (=> b!6508451 m!7295092))

(declare-fun m!7295112 () Bool)

(assert (=> b!6508451 m!7295112))

(assert (=> b!6508239 d!2041737))

(declare-fun d!2041739 () Bool)

(declare-fun c!1193691 () Bool)

(assert (=> d!2041739 (= c!1193691 (isEmpty!37559 (t!379107 s!2326)))))

(declare-fun e!3943390 () Bool)

(assert (=> d!2041739 (= (matchZipper!2402 lt!2393680 (t!379107 s!2326)) e!3943390)))

(declare-fun b!6508452 () Bool)

(assert (=> b!6508452 (= e!3943390 (nullableZipper!2143 lt!2393680))))

(declare-fun b!6508453 () Bool)

(assert (=> b!6508453 (= e!3943390 (matchZipper!2402 (derivationStepZipper!2356 lt!2393680 (head!13247 (t!379107 s!2326))) (tail!12332 (t!379107 s!2326))))))

(assert (= (and d!2041739 c!1193691) b!6508452))

(assert (= (and d!2041739 (not c!1193691)) b!6508453))

(assert (=> d!2041739 m!7295084))

(declare-fun m!7295114 () Bool)

(assert (=> b!6508452 m!7295114))

(assert (=> b!6508453 m!7295088))

(assert (=> b!6508453 m!7295088))

(declare-fun m!7295116 () Bool)

(assert (=> b!6508453 m!7295116))

(assert (=> b!6508453 m!7295092))

(assert (=> b!6508453 m!7295116))

(assert (=> b!6508453 m!7295092))

(declare-fun m!7295118 () Bool)

(assert (=> b!6508453 m!7295118))

(assert (=> b!6508264 d!2041739))

(declare-fun d!2041741 () Bool)

(assert (=> d!2041741 (= (isEmpty!37556 (t!379105 (exprs!6274 (h!71794 zl!343)))) (is-Nil!65345 (t!379105 (exprs!6274 (h!71794 zl!343)))))))

(assert (=> b!6508243 d!2041741))

(declare-fun bs!1652800 () Bool)

(declare-fun d!2041743 () Bool)

(assert (= bs!1652800 (and d!2041743 b!6508247)))

(declare-fun lambda!361033 () Int)

(assert (=> bs!1652800 (= lambda!361033 lambda!361005)))

(declare-fun forall!15569 (List!65469 Int) Bool)

(assert (=> d!2041743 (= (inv!84223 lt!2393668) (forall!15569 (exprs!6274 lt!2393668) lambda!361033))))

(declare-fun bs!1652801 () Bool)

(assert (= bs!1652801 d!2041743))

(declare-fun m!7295120 () Bool)

(assert (=> bs!1652801 m!7295120))

(assert (=> b!6508263 d!2041743))

(declare-fun d!2041745 () Bool)

(declare-fun c!1193692 () Bool)

(assert (=> d!2041745 (= c!1193692 (isEmpty!37559 (_1!36672 lt!2393671)))))

(declare-fun e!3943391 () Bool)

(assert (=> d!2041745 (= (matchZipper!2402 lt!2393675 (_1!36672 lt!2393671)) e!3943391)))

(declare-fun b!6508454 () Bool)

(assert (=> b!6508454 (= e!3943391 (nullableZipper!2143 lt!2393675))))

(declare-fun b!6508455 () Bool)

(assert (=> b!6508455 (= e!3943391 (matchZipper!2402 (derivationStepZipper!2356 lt!2393675 (head!13247 (_1!36672 lt!2393671))) (tail!12332 (_1!36672 lt!2393671))))))

(assert (= (and d!2041745 c!1193692) b!6508454))

(assert (= (and d!2041745 (not c!1193692)) b!6508455))

(declare-fun m!7295122 () Bool)

(assert (=> d!2041745 m!7295122))

(declare-fun m!7295124 () Bool)

(assert (=> b!6508454 m!7295124))

(declare-fun m!7295126 () Bool)

(assert (=> b!6508455 m!7295126))

(assert (=> b!6508455 m!7295126))

(declare-fun m!7295128 () Bool)

(assert (=> b!6508455 m!7295128))

(declare-fun m!7295130 () Bool)

(assert (=> b!6508455 m!7295130))

(assert (=> b!6508455 m!7295128))

(assert (=> b!6508455 m!7295130))

(declare-fun m!7295132 () Bool)

(assert (=> b!6508455 m!7295132))

(assert (=> b!6508275 d!2041745))

(declare-fun b!6508484 () Bool)

(declare-fun e!3943409 () Bool)

(assert (=> b!6508484 (= e!3943409 (nullable!6383 lt!2393678))))

(declare-fun b!6508485 () Bool)

(declare-fun e!3943412 () Bool)

(declare-fun e!3943408 () Bool)

(assert (=> b!6508485 (= e!3943412 e!3943408)))

(declare-fun res!2672952 () Bool)

(assert (=> b!6508485 (=> res!2672952 e!3943408)))

(declare-fun call!564096 () Bool)

(assert (=> b!6508485 (= res!2672952 call!564096)))

(declare-fun b!6508486 () Bool)

(declare-fun e!3943406 () Bool)

(assert (=> b!6508486 (= e!3943406 (= (head!13247 s!2326) (c!1193670 lt!2393678)))))

(declare-fun d!2041747 () Bool)

(declare-fun e!3943407 () Bool)

(assert (=> d!2041747 e!3943407))

(declare-fun c!1193700 () Bool)

(assert (=> d!2041747 (= c!1193700 (is-EmptyExpr!16390 lt!2393678))))

(declare-fun lt!2393825 () Bool)

(assert (=> d!2041747 (= lt!2393825 e!3943409)))

(declare-fun c!1193699 () Bool)

(assert (=> d!2041747 (= c!1193699 (isEmpty!37559 s!2326))))

(assert (=> d!2041747 (validRegex!8126 lt!2393678)))

(assert (=> d!2041747 (= (matchR!8573 lt!2393678 s!2326) lt!2393825)))

(declare-fun b!6508487 () Bool)

(declare-fun res!2672951 () Bool)

(assert (=> b!6508487 (=> (not res!2672951) (not e!3943406))))

(assert (=> b!6508487 (= res!2672951 (isEmpty!37559 (tail!12332 s!2326)))))

(declare-fun b!6508488 () Bool)

(declare-fun e!3943410 () Bool)

(assert (=> b!6508488 (= e!3943410 e!3943412)))

(declare-fun res!2672950 () Bool)

(assert (=> b!6508488 (=> (not res!2672950) (not e!3943412))))

(assert (=> b!6508488 (= res!2672950 (not lt!2393825))))

(declare-fun b!6508489 () Bool)

(assert (=> b!6508489 (= e!3943407 (= lt!2393825 call!564096))))

(declare-fun b!6508490 () Bool)

(declare-fun e!3943411 () Bool)

(assert (=> b!6508490 (= e!3943411 (not lt!2393825))))

(declare-fun b!6508491 () Bool)

(assert (=> b!6508491 (= e!3943408 (not (= (head!13247 s!2326) (c!1193670 lt!2393678))))))

(declare-fun b!6508492 () Bool)

(declare-fun res!2672954 () Bool)

(assert (=> b!6508492 (=> res!2672954 e!3943410)))

(assert (=> b!6508492 (= res!2672954 e!3943406)))

(declare-fun res!2672948 () Bool)

(assert (=> b!6508492 (=> (not res!2672948) (not e!3943406))))

(assert (=> b!6508492 (= res!2672948 lt!2393825)))

(declare-fun b!6508493 () Bool)

(declare-fun derivativeStep!5082 (Regex!16390 C!33050) Regex!16390)

(assert (=> b!6508493 (= e!3943409 (matchR!8573 (derivativeStep!5082 lt!2393678 (head!13247 s!2326)) (tail!12332 s!2326)))))

(declare-fun b!6508494 () Bool)

(declare-fun res!2672953 () Bool)

(assert (=> b!6508494 (=> res!2672953 e!3943408)))

(assert (=> b!6508494 (= res!2672953 (not (isEmpty!37559 (tail!12332 s!2326))))))

(declare-fun b!6508495 () Bool)

(assert (=> b!6508495 (= e!3943407 e!3943411)))

(declare-fun c!1193701 () Bool)

(assert (=> b!6508495 (= c!1193701 (is-EmptyLang!16390 lt!2393678))))

(declare-fun bm!564091 () Bool)

(assert (=> bm!564091 (= call!564096 (isEmpty!37559 s!2326))))

(declare-fun b!6508496 () Bool)

(declare-fun res!2672955 () Bool)

(assert (=> b!6508496 (=> (not res!2672955) (not e!3943406))))

(assert (=> b!6508496 (= res!2672955 (not call!564096))))

(declare-fun b!6508497 () Bool)

(declare-fun res!2672949 () Bool)

(assert (=> b!6508497 (=> res!2672949 e!3943410)))

(assert (=> b!6508497 (= res!2672949 (not (is-ElementMatch!16390 lt!2393678)))))

(assert (=> b!6508497 (= e!3943411 e!3943410)))

(assert (= (and d!2041747 c!1193699) b!6508484))

(assert (= (and d!2041747 (not c!1193699)) b!6508493))

(assert (= (and d!2041747 c!1193700) b!6508489))

(assert (= (and d!2041747 (not c!1193700)) b!6508495))

(assert (= (and b!6508495 c!1193701) b!6508490))

(assert (= (and b!6508495 (not c!1193701)) b!6508497))

(assert (= (and b!6508497 (not res!2672949)) b!6508492))

(assert (= (and b!6508492 res!2672948) b!6508496))

(assert (= (and b!6508496 res!2672955) b!6508487))

(assert (= (and b!6508487 res!2672951) b!6508486))

(assert (= (and b!6508492 (not res!2672954)) b!6508488))

(assert (= (and b!6508488 res!2672950) b!6508485))

(assert (= (and b!6508485 (not res!2672952)) b!6508494))

(assert (= (and b!6508494 (not res!2672953)) b!6508491))

(assert (= (or b!6508489 b!6508485 b!6508496) bm!564091))

(declare-fun m!7295134 () Bool)

(assert (=> b!6508484 m!7295134))

(assert (=> b!6508494 m!7295104))

(assert (=> b!6508494 m!7295104))

(declare-fun m!7295136 () Bool)

(assert (=> b!6508494 m!7295136))

(assert (=> b!6508486 m!7295100))

(assert (=> b!6508493 m!7295100))

(assert (=> b!6508493 m!7295100))

(declare-fun m!7295138 () Bool)

(assert (=> b!6508493 m!7295138))

(assert (=> b!6508493 m!7295104))

(assert (=> b!6508493 m!7295138))

(assert (=> b!6508493 m!7295104))

(declare-fun m!7295140 () Bool)

(assert (=> b!6508493 m!7295140))

(assert (=> bm!564091 m!7295096))

(assert (=> b!6508487 m!7295104))

(assert (=> b!6508487 m!7295104))

(assert (=> b!6508487 m!7295136))

(assert (=> d!2041747 m!7295096))

(declare-fun m!7295142 () Bool)

(assert (=> d!2041747 m!7295142))

(assert (=> b!6508491 m!7295100))

(assert (=> b!6508256 d!2041747))

(declare-fun bs!1652802 () Bool)

(declare-fun b!6508532 () Bool)

(assert (= bs!1652802 (and b!6508532 b!6508257)))

(declare-fun lambda!361038 () Int)

(assert (=> bs!1652802 (not (= lambda!361038 lambda!361001))))

(assert (=> bs!1652802 (not (= lambda!361038 lambda!361002))))

(assert (=> b!6508532 true))

(assert (=> b!6508532 true))

(declare-fun bs!1652803 () Bool)

(declare-fun b!6508537 () Bool)

(assert (= bs!1652803 (and b!6508537 b!6508257)))

(declare-fun lambda!361039 () Int)

(assert (=> bs!1652803 (not (= lambda!361039 lambda!361001))))

(assert (=> bs!1652803 (= (and (= (regOne!33292 lt!2393678) (regOne!33292 r!7292)) (= (regTwo!33292 lt!2393678) (regTwo!33292 r!7292))) (= lambda!361039 lambda!361002))))

(declare-fun bs!1652804 () Bool)

(assert (= bs!1652804 (and b!6508537 b!6508532)))

(assert (=> bs!1652804 (not (= lambda!361039 lambda!361038))))

(assert (=> b!6508537 true))

(assert (=> b!6508537 true))

(declare-fun b!6508530 () Bool)

(declare-fun e!3943437 () Bool)

(declare-fun call!564101 () Bool)

(assert (=> b!6508530 (= e!3943437 call!564101)))

(declare-fun e!3943434 () Bool)

(declare-fun call!564102 () Bool)

(assert (=> b!6508532 (= e!3943434 call!564102)))

(declare-fun c!1193711 () Bool)

(declare-fun bm!564096 () Bool)

(assert (=> bm!564096 (= call!564102 (Exists!3460 (ite c!1193711 lambda!361038 lambda!361039)))))

(declare-fun b!6508533 () Bool)

(declare-fun e!3943435 () Bool)

(assert (=> b!6508533 (= e!3943437 e!3943435)))

(declare-fun res!2672973 () Bool)

(assert (=> b!6508533 (= res!2672973 (not (is-EmptyLang!16390 lt!2393678)))))

(assert (=> b!6508533 (=> (not res!2672973) (not e!3943435))))

(declare-fun b!6508534 () Bool)

(declare-fun e!3943433 () Bool)

(declare-fun e!3943431 () Bool)

(assert (=> b!6508534 (= e!3943433 e!3943431)))

(assert (=> b!6508534 (= c!1193711 (is-Star!16390 lt!2393678))))

(declare-fun bm!564097 () Bool)

(assert (=> bm!564097 (= call!564101 (isEmpty!37559 s!2326))))

(declare-fun b!6508535 () Bool)

(declare-fun res!2672974 () Bool)

(assert (=> b!6508535 (=> res!2672974 e!3943434)))

(assert (=> b!6508535 (= res!2672974 call!564101)))

(assert (=> b!6508535 (= e!3943431 e!3943434)))

(declare-fun b!6508536 () Bool)

(declare-fun c!1193710 () Bool)

(assert (=> b!6508536 (= c!1193710 (is-ElementMatch!16390 lt!2393678))))

(declare-fun e!3943436 () Bool)

(assert (=> b!6508536 (= e!3943435 e!3943436)))

(assert (=> b!6508537 (= e!3943431 call!564102)))

(declare-fun b!6508538 () Bool)

(assert (=> b!6508538 (= e!3943436 (= s!2326 (Cons!65347 (c!1193670 lt!2393678) Nil!65347)))))

(declare-fun b!6508539 () Bool)

(declare-fun e!3943432 () Bool)

(assert (=> b!6508539 (= e!3943432 (matchRSpec!3491 (regTwo!33293 lt!2393678) s!2326))))

(declare-fun b!6508540 () Bool)

(declare-fun c!1193712 () Bool)

(assert (=> b!6508540 (= c!1193712 (is-Union!16390 lt!2393678))))

(assert (=> b!6508540 (= e!3943436 e!3943433)))

(declare-fun d!2041749 () Bool)

(declare-fun c!1193713 () Bool)

(assert (=> d!2041749 (= c!1193713 (is-EmptyExpr!16390 lt!2393678))))

(assert (=> d!2041749 (= (matchRSpec!3491 lt!2393678 s!2326) e!3943437)))

(declare-fun b!6508531 () Bool)

(assert (=> b!6508531 (= e!3943433 e!3943432)))

(declare-fun res!2672972 () Bool)

(assert (=> b!6508531 (= res!2672972 (matchRSpec!3491 (regOne!33293 lt!2393678) s!2326))))

(assert (=> b!6508531 (=> res!2672972 e!3943432)))

(assert (= (and d!2041749 c!1193713) b!6508530))

(assert (= (and d!2041749 (not c!1193713)) b!6508533))

(assert (= (and b!6508533 res!2672973) b!6508536))

(assert (= (and b!6508536 c!1193710) b!6508538))

(assert (= (and b!6508536 (not c!1193710)) b!6508540))

(assert (= (and b!6508540 c!1193712) b!6508531))

(assert (= (and b!6508540 (not c!1193712)) b!6508534))

(assert (= (and b!6508531 (not res!2672972)) b!6508539))

(assert (= (and b!6508534 c!1193711) b!6508535))

(assert (= (and b!6508534 (not c!1193711)) b!6508537))

(assert (= (and b!6508535 (not res!2672974)) b!6508532))

(assert (= (or b!6508532 b!6508537) bm!564096))

(assert (= (or b!6508530 b!6508535) bm!564097))

(declare-fun m!7295144 () Bool)

(assert (=> bm!564096 m!7295144))

(assert (=> bm!564097 m!7295096))

(declare-fun m!7295146 () Bool)

(assert (=> b!6508539 m!7295146))

(declare-fun m!7295148 () Bool)

(assert (=> b!6508531 m!7295148))

(assert (=> b!6508256 d!2041749))

(declare-fun d!2041751 () Bool)

(assert (=> d!2041751 (= (matchR!8573 lt!2393678 s!2326) (matchRSpec!3491 lt!2393678 s!2326))))

(declare-fun lt!2393828 () Unit!158895)

(declare-fun choose!48362 (Regex!16390 List!65471) Unit!158895)

(assert (=> d!2041751 (= lt!2393828 (choose!48362 lt!2393678 s!2326))))

(assert (=> d!2041751 (validRegex!8126 lt!2393678)))

(assert (=> d!2041751 (= (mainMatchTheorem!3491 lt!2393678 s!2326) lt!2393828)))

(declare-fun bs!1652805 () Bool)

(assert (= bs!1652805 d!2041751))

(assert (=> bs!1652805 m!7294866))

(assert (=> bs!1652805 m!7294868))

(declare-fun m!7295150 () Bool)

(assert (=> bs!1652805 m!7295150))

(assert (=> bs!1652805 m!7295142))

(assert (=> b!6508256 d!2041751))

(declare-fun b!6508563 () Bool)

(declare-fun e!3943455 () (Set Context!11548))

(declare-fun e!3943452 () (Set Context!11548))

(assert (=> b!6508563 (= e!3943455 e!3943452)))

(declare-fun c!1193724 () Bool)

(assert (=> b!6508563 (= c!1193724 (is-Union!16390 (reg!16719 (regOne!33292 r!7292))))))

(declare-fun bm!564110 () Bool)

(declare-fun call!564120 () List!65469)

(declare-fun call!564117 () (Set Context!11548))

(assert (=> bm!564110 (= call!564117 (derivationStepZipperDown!1638 (ite c!1193724 (regOne!33293 (reg!16719 (regOne!33292 r!7292))) (regOne!33292 (reg!16719 (regOne!33292 r!7292)))) (ite c!1193724 lt!2393668 (Context!11549 call!564120)) (h!71795 s!2326)))))

(declare-fun b!6508564 () Bool)

(declare-fun e!3943454 () (Set Context!11548))

(declare-fun e!3943453 () (Set Context!11548))

(assert (=> b!6508564 (= e!3943454 e!3943453)))

(declare-fun c!1193728 () Bool)

(assert (=> b!6508564 (= c!1193728 (is-Concat!25235 (reg!16719 (regOne!33292 r!7292))))))

(declare-fun b!6508566 () Bool)

(declare-fun c!1193727 () Bool)

(assert (=> b!6508566 (= c!1193727 (is-Star!16390 (reg!16719 (regOne!33292 r!7292))))))

(declare-fun e!3943450 () (Set Context!11548))

(assert (=> b!6508566 (= e!3943453 e!3943450)))

(declare-fun bm!564111 () Bool)

(declare-fun call!564119 () (Set Context!11548))

(declare-fun call!564115 () (Set Context!11548))

(assert (=> bm!564111 (= call!564119 call!564115)))

(declare-fun bm!564112 () Bool)

(declare-fun call!564118 () List!65469)

(assert (=> bm!564112 (= call!564118 call!564120)))

(declare-fun bm!564113 () Bool)

(declare-fun c!1193725 () Bool)

(assert (=> bm!564113 (= call!564115 (derivationStepZipperDown!1638 (ite c!1193724 (regTwo!33293 (reg!16719 (regOne!33292 r!7292))) (ite c!1193725 (regTwo!33292 (reg!16719 (regOne!33292 r!7292))) (ite c!1193728 (regOne!33292 (reg!16719 (regOne!33292 r!7292))) (reg!16719 (reg!16719 (regOne!33292 r!7292)))))) (ite (or c!1193724 c!1193725) lt!2393668 (Context!11549 call!564118)) (h!71795 s!2326)))))

(declare-fun b!6508567 () Bool)

(assert (=> b!6508567 (= e!3943450 (as set.empty (Set Context!11548)))))

(declare-fun b!6508568 () Bool)

(assert (=> b!6508568 (= e!3943452 (set.union call!564117 call!564115))))

(declare-fun b!6508569 () Bool)

(declare-fun call!564116 () (Set Context!11548))

(assert (=> b!6508569 (= e!3943453 call!564116)))

(declare-fun bm!564114 () Bool)

(declare-fun $colon$colon!2239 (List!65469 Regex!16390) List!65469)

(assert (=> bm!564114 (= call!564120 ($colon$colon!2239 (exprs!6274 lt!2393668) (ite (or c!1193725 c!1193728) (regTwo!33292 (reg!16719 (regOne!33292 r!7292))) (reg!16719 (regOne!33292 r!7292)))))))

(declare-fun d!2041753 () Bool)

(declare-fun c!1193726 () Bool)

(assert (=> d!2041753 (= c!1193726 (and (is-ElementMatch!16390 (reg!16719 (regOne!33292 r!7292))) (= (c!1193670 (reg!16719 (regOne!33292 r!7292))) (h!71795 s!2326))))))

(assert (=> d!2041753 (= (derivationStepZipperDown!1638 (reg!16719 (regOne!33292 r!7292)) lt!2393668 (h!71795 s!2326)) e!3943455)))

(declare-fun b!6508565 () Bool)

(declare-fun e!3943451 () Bool)

(assert (=> b!6508565 (= e!3943451 (nullable!6383 (regOne!33292 (reg!16719 (regOne!33292 r!7292)))))))

(declare-fun b!6508570 () Bool)

(assert (=> b!6508570 (= e!3943450 call!564116)))

(declare-fun b!6508571 () Bool)

(assert (=> b!6508571 (= c!1193725 e!3943451)))

(declare-fun res!2672977 () Bool)

(assert (=> b!6508571 (=> (not res!2672977) (not e!3943451))))

(assert (=> b!6508571 (= res!2672977 (is-Concat!25235 (reg!16719 (regOne!33292 r!7292))))))

(assert (=> b!6508571 (= e!3943452 e!3943454)))

(declare-fun b!6508572 () Bool)

(assert (=> b!6508572 (= e!3943455 (set.insert lt!2393668 (as set.empty (Set Context!11548))))))

(declare-fun bm!564115 () Bool)

(assert (=> bm!564115 (= call!564116 call!564119)))

(declare-fun b!6508573 () Bool)

(assert (=> b!6508573 (= e!3943454 (set.union call!564117 call!564119))))

(assert (= (and d!2041753 c!1193726) b!6508572))

(assert (= (and d!2041753 (not c!1193726)) b!6508563))

(assert (= (and b!6508563 c!1193724) b!6508568))

(assert (= (and b!6508563 (not c!1193724)) b!6508571))

(assert (= (and b!6508571 res!2672977) b!6508565))

(assert (= (and b!6508571 c!1193725) b!6508573))

(assert (= (and b!6508571 (not c!1193725)) b!6508564))

(assert (= (and b!6508564 c!1193728) b!6508569))

(assert (= (and b!6508564 (not c!1193728)) b!6508566))

(assert (= (and b!6508566 c!1193727) b!6508570))

(assert (= (and b!6508566 (not c!1193727)) b!6508567))

(assert (= (or b!6508569 b!6508570) bm!564112))

(assert (= (or b!6508569 b!6508570) bm!564115))

(assert (= (or b!6508573 bm!564112) bm!564114))

(assert (= (or b!6508573 bm!564115) bm!564111))

(assert (= (or b!6508568 bm!564111) bm!564113))

(assert (= (or b!6508568 b!6508573) bm!564110))

(declare-fun m!7295152 () Bool)

(assert (=> bm!564110 m!7295152))

(declare-fun m!7295154 () Bool)

(assert (=> bm!564113 m!7295154))

(declare-fun m!7295156 () Bool)

(assert (=> b!6508565 m!7295156))

(declare-fun m!7295158 () Bool)

(assert (=> bm!564114 m!7295158))

(assert (=> b!6508572 m!7294874))

(assert (=> b!6508274 d!2041753))

(declare-fun d!2041755 () Bool)

(declare-fun choose!48363 ((Set Context!11548) Int) (Set Context!11548))

(assert (=> d!2041755 (= (flatMap!1895 lt!2393675 lambda!361003) (choose!48363 lt!2393675 lambda!361003))))

(declare-fun bs!1652806 () Bool)

(assert (= bs!1652806 d!2041755))

(declare-fun m!7295160 () Bool)

(assert (=> bs!1652806 m!7295160))

(assert (=> b!6508255 d!2041755))

(declare-fun b!6508584 () Bool)

(declare-fun e!3943463 () (Set Context!11548))

(assert (=> b!6508584 (= e!3943463 (as set.empty (Set Context!11548)))))

(declare-fun bm!564118 () Bool)

(declare-fun call!564123 () (Set Context!11548))

(assert (=> bm!564118 (= call!564123 (derivationStepZipperDown!1638 (h!71793 (exprs!6274 lt!2393695)) (Context!11549 (t!379105 (exprs!6274 lt!2393695))) (h!71795 s!2326)))))

(declare-fun b!6508585 () Bool)

(declare-fun e!3943462 () (Set Context!11548))

(assert (=> b!6508585 (= e!3943462 e!3943463)))

(declare-fun c!1193734 () Bool)

(assert (=> b!6508585 (= c!1193734 (is-Cons!65345 (exprs!6274 lt!2393695)))))

(declare-fun d!2041757 () Bool)

(declare-fun c!1193733 () Bool)

(declare-fun e!3943464 () Bool)

(assert (=> d!2041757 (= c!1193733 e!3943464)))

(declare-fun res!2672980 () Bool)

(assert (=> d!2041757 (=> (not res!2672980) (not e!3943464))))

(assert (=> d!2041757 (= res!2672980 (is-Cons!65345 (exprs!6274 lt!2393695)))))

(assert (=> d!2041757 (= (derivationStepZipperUp!1564 lt!2393695 (h!71795 s!2326)) e!3943462)))

(declare-fun b!6508586 () Bool)

(assert (=> b!6508586 (= e!3943462 (set.union call!564123 (derivationStepZipperUp!1564 (Context!11549 (t!379105 (exprs!6274 lt!2393695))) (h!71795 s!2326))))))

(declare-fun b!6508587 () Bool)

(assert (=> b!6508587 (= e!3943464 (nullable!6383 (h!71793 (exprs!6274 lt!2393695))))))

(declare-fun b!6508588 () Bool)

(assert (=> b!6508588 (= e!3943463 call!564123)))

(assert (= (and d!2041757 res!2672980) b!6508587))

(assert (= (and d!2041757 c!1193733) b!6508586))

(assert (= (and d!2041757 (not c!1193733)) b!6508585))

(assert (= (and b!6508585 c!1193734) b!6508588))

(assert (= (and b!6508585 (not c!1193734)) b!6508584))

(assert (= (or b!6508586 b!6508588) bm!564118))

(declare-fun m!7295162 () Bool)

(assert (=> bm!564118 m!7295162))

(declare-fun m!7295164 () Bool)

(assert (=> b!6508586 m!7295164))

(declare-fun m!7295166 () Bool)

(assert (=> b!6508587 m!7295166))

(assert (=> b!6508255 d!2041757))

(declare-fun d!2041759 () Bool)

(declare-fun lt!2393831 () Regex!16390)

(assert (=> d!2041759 (validRegex!8126 lt!2393831)))

(assert (=> d!2041759 (= lt!2393831 (generalisedUnion!2234 (unfocusZipperList!1811 (Cons!65346 lt!2393695 Nil!65346))))))

(assert (=> d!2041759 (= (unfocusZipper!2132 (Cons!65346 lt!2393695 Nil!65346)) lt!2393831)))

(declare-fun bs!1652807 () Bool)

(assert (= bs!1652807 d!2041759))

(declare-fun m!7295168 () Bool)

(assert (=> bs!1652807 m!7295168))

(declare-fun m!7295170 () Bool)

(assert (=> bs!1652807 m!7295170))

(assert (=> bs!1652807 m!7295170))

(declare-fun m!7295172 () Bool)

(assert (=> bs!1652807 m!7295172))

(assert (=> b!6508255 d!2041759))

(declare-fun b!6508589 () Bool)

(declare-fun e!3943466 () (Set Context!11548))

(assert (=> b!6508589 (= e!3943466 (as set.empty (Set Context!11548)))))

(declare-fun bm!564119 () Bool)

(declare-fun call!564124 () (Set Context!11548))

(assert (=> bm!564119 (= call!564124 (derivationStepZipperDown!1638 (h!71793 (exprs!6274 lt!2393668)) (Context!11549 (t!379105 (exprs!6274 lt!2393668))) (h!71795 s!2326)))))

(declare-fun b!6508590 () Bool)

(declare-fun e!3943465 () (Set Context!11548))

(assert (=> b!6508590 (= e!3943465 e!3943466)))

(declare-fun c!1193736 () Bool)

(assert (=> b!6508590 (= c!1193736 (is-Cons!65345 (exprs!6274 lt!2393668)))))

(declare-fun d!2041761 () Bool)

(declare-fun c!1193735 () Bool)

(declare-fun e!3943467 () Bool)

(assert (=> d!2041761 (= c!1193735 e!3943467)))

(declare-fun res!2672981 () Bool)

(assert (=> d!2041761 (=> (not res!2672981) (not e!3943467))))

(assert (=> d!2041761 (= res!2672981 (is-Cons!65345 (exprs!6274 lt!2393668)))))

(assert (=> d!2041761 (= (derivationStepZipperUp!1564 lt!2393668 (h!71795 s!2326)) e!3943465)))

(declare-fun b!6508591 () Bool)

(assert (=> b!6508591 (= e!3943465 (set.union call!564124 (derivationStepZipperUp!1564 (Context!11549 (t!379105 (exprs!6274 lt!2393668))) (h!71795 s!2326))))))

(declare-fun b!6508592 () Bool)

(assert (=> b!6508592 (= e!3943467 (nullable!6383 (h!71793 (exprs!6274 lt!2393668))))))

(declare-fun b!6508593 () Bool)

(assert (=> b!6508593 (= e!3943466 call!564124)))

(assert (= (and d!2041761 res!2672981) b!6508592))

(assert (= (and d!2041761 c!1193735) b!6508591))

(assert (= (and d!2041761 (not c!1193735)) b!6508590))

(assert (= (and b!6508590 c!1193736) b!6508593))

(assert (= (and b!6508590 (not c!1193736)) b!6508589))

(assert (= (or b!6508591 b!6508593) bm!564119))

(declare-fun m!7295174 () Bool)

(assert (=> bm!564119 m!7295174))

(declare-fun m!7295176 () Bool)

(assert (=> b!6508591 m!7295176))

(declare-fun m!7295178 () Bool)

(assert (=> b!6508592 m!7295178))

(assert (=> b!6508255 d!2041761))

(declare-fun d!2041763 () Bool)

(assert (=> d!2041763 (= (flatMap!1895 lt!2393692 lambda!361003) (choose!48363 lt!2393692 lambda!361003))))

(declare-fun bs!1652808 () Bool)

(assert (= bs!1652808 d!2041763))

(declare-fun m!7295180 () Bool)

(assert (=> bs!1652808 m!7295180))

(assert (=> b!6508255 d!2041763))

(declare-fun d!2041765 () Bool)

(declare-fun dynLambda!25963 (Int Context!11548) (Set Context!11548))

(assert (=> d!2041765 (= (flatMap!1895 lt!2393675 lambda!361003) (dynLambda!25963 lambda!361003 lt!2393695))))

(declare-fun lt!2393834 () Unit!158895)

(declare-fun choose!48364 ((Set Context!11548) Context!11548 Int) Unit!158895)

(assert (=> d!2041765 (= lt!2393834 (choose!48364 lt!2393675 lt!2393695 lambda!361003))))

(assert (=> d!2041765 (= lt!2393675 (set.insert lt!2393695 (as set.empty (Set Context!11548))))))

(assert (=> d!2041765 (= (lemmaFlatMapOnSingletonSet!1421 lt!2393675 lt!2393695 lambda!361003) lt!2393834)))

(declare-fun b_lambda!246401 () Bool)

(assert (=> (not b_lambda!246401) (not d!2041765)))

(declare-fun bs!1652809 () Bool)

(assert (= bs!1652809 d!2041765))

(assert (=> bs!1652809 m!7294880))

(declare-fun m!7295182 () Bool)

(assert (=> bs!1652809 m!7295182))

(declare-fun m!7295184 () Bool)

(assert (=> bs!1652809 m!7295184))

(assert (=> bs!1652809 m!7294884))

(assert (=> b!6508255 d!2041765))

(declare-fun d!2041767 () Bool)

(assert (=> d!2041767 (= (flatMap!1895 lt!2393692 lambda!361003) (dynLambda!25963 lambda!361003 lt!2393668))))

(declare-fun lt!2393835 () Unit!158895)

(assert (=> d!2041767 (= lt!2393835 (choose!48364 lt!2393692 lt!2393668 lambda!361003))))

(assert (=> d!2041767 (= lt!2393692 (set.insert lt!2393668 (as set.empty (Set Context!11548))))))

(assert (=> d!2041767 (= (lemmaFlatMapOnSingletonSet!1421 lt!2393692 lt!2393668 lambda!361003) lt!2393835)))

(declare-fun b_lambda!246403 () Bool)

(assert (=> (not b_lambda!246403) (not d!2041767)))

(declare-fun bs!1652810 () Bool)

(assert (= bs!1652810 d!2041767))

(assert (=> bs!1652810 m!7294878))

(declare-fun m!7295186 () Bool)

(assert (=> bs!1652810 m!7295186))

(declare-fun m!7295188 () Bool)

(assert (=> bs!1652810 m!7295188))

(assert (=> bs!1652810 m!7294874))

(assert (=> b!6508255 d!2041767))

(declare-fun d!2041769 () Bool)

(declare-fun c!1193737 () Bool)

(assert (=> d!2041769 (= c!1193737 (isEmpty!37559 (_2!36672 lt!2393671)))))

(declare-fun e!3943468 () Bool)

(assert (=> d!2041769 (= (matchZipper!2402 lt!2393692 (_2!36672 lt!2393671)) e!3943468)))

(declare-fun b!6508594 () Bool)

(assert (=> b!6508594 (= e!3943468 (nullableZipper!2143 lt!2393692))))

(declare-fun b!6508595 () Bool)

(assert (=> b!6508595 (= e!3943468 (matchZipper!2402 (derivationStepZipper!2356 lt!2393692 (head!13247 (_2!36672 lt!2393671))) (tail!12332 (_2!36672 lt!2393671))))))

(assert (= (and d!2041769 c!1193737) b!6508594))

(assert (= (and d!2041769 (not c!1193737)) b!6508595))

(declare-fun m!7295190 () Bool)

(assert (=> d!2041769 m!7295190))

(declare-fun m!7295192 () Bool)

(assert (=> b!6508594 m!7295192))

(declare-fun m!7295194 () Bool)

(assert (=> b!6508595 m!7295194))

(assert (=> b!6508595 m!7295194))

(declare-fun m!7295196 () Bool)

(assert (=> b!6508595 m!7295196))

(declare-fun m!7295198 () Bool)

(assert (=> b!6508595 m!7295198))

(assert (=> b!6508595 m!7295196))

(assert (=> b!6508595 m!7295198))

(declare-fun m!7295200 () Bool)

(assert (=> b!6508595 m!7295200))

(assert (=> b!6508278 d!2041769))

(declare-fun bs!1652811 () Bool)

(declare-fun d!2041771 () Bool)

(assert (= bs!1652811 (and d!2041771 b!6508247)))

(declare-fun lambda!361042 () Int)

(assert (=> bs!1652811 (= lambda!361042 lambda!361005)))

(declare-fun bs!1652812 () Bool)

(assert (= bs!1652812 (and d!2041771 d!2041743)))

(assert (=> bs!1652812 (= lambda!361042 lambda!361033)))

(declare-fun b!6508616 () Bool)

(declare-fun e!3943485 () Regex!16390)

(assert (=> b!6508616 (= e!3943485 (h!71793 (exprs!6274 (h!71794 zl!343))))))

(declare-fun b!6508618 () Bool)

(declare-fun e!3943482 () Bool)

(declare-fun lt!2393838 () Regex!16390)

(declare-fun isEmptyExpr!1777 (Regex!16390) Bool)

(assert (=> b!6508618 (= e!3943482 (isEmptyExpr!1777 lt!2393838))))

(declare-fun b!6508619 () Bool)

(declare-fun e!3943484 () Regex!16390)

(assert (=> b!6508619 (= e!3943484 EmptyExpr!16390)))

(declare-fun b!6508620 () Bool)

(declare-fun e!3943481 () Bool)

(assert (=> b!6508620 (= e!3943482 e!3943481)))

(declare-fun c!1193749 () Bool)

(declare-fun tail!12333 (List!65469) List!65469)

(assert (=> b!6508620 (= c!1193749 (isEmpty!37556 (tail!12333 (exprs!6274 (h!71794 zl!343)))))))

(declare-fun b!6508621 () Bool)

(declare-fun e!3943483 () Bool)

(assert (=> b!6508621 (= e!3943483 (isEmpty!37556 (t!379105 (exprs!6274 (h!71794 zl!343)))))))

(declare-fun b!6508622 () Bool)

(declare-fun head!13248 (List!65469) Regex!16390)

(assert (=> b!6508622 (= e!3943481 (= lt!2393838 (head!13248 (exprs!6274 (h!71794 zl!343)))))))

(declare-fun b!6508623 () Bool)

(declare-fun isConcat!1300 (Regex!16390) Bool)

(assert (=> b!6508623 (= e!3943481 (isConcat!1300 lt!2393838))))

(declare-fun b!6508624 () Bool)

(assert (=> b!6508624 (= e!3943484 (Concat!25235 (h!71793 (exprs!6274 (h!71794 zl!343))) (generalisedConcat!1987 (t!379105 (exprs!6274 (h!71794 zl!343))))))))

(declare-fun b!6508625 () Bool)

(assert (=> b!6508625 (= e!3943485 e!3943484)))

(declare-fun c!1193746 () Bool)

(assert (=> b!6508625 (= c!1193746 (is-Cons!65345 (exprs!6274 (h!71794 zl!343))))))

(declare-fun e!3943486 () Bool)

(assert (=> d!2041771 e!3943486))

(declare-fun res!2672987 () Bool)

(assert (=> d!2041771 (=> (not res!2672987) (not e!3943486))))

(assert (=> d!2041771 (= res!2672987 (validRegex!8126 lt!2393838))))

(assert (=> d!2041771 (= lt!2393838 e!3943485)))

(declare-fun c!1193747 () Bool)

(assert (=> d!2041771 (= c!1193747 e!3943483)))

(declare-fun res!2672986 () Bool)

(assert (=> d!2041771 (=> (not res!2672986) (not e!3943483))))

(assert (=> d!2041771 (= res!2672986 (is-Cons!65345 (exprs!6274 (h!71794 zl!343))))))

(assert (=> d!2041771 (forall!15569 (exprs!6274 (h!71794 zl!343)) lambda!361042)))

(assert (=> d!2041771 (= (generalisedConcat!1987 (exprs!6274 (h!71794 zl!343))) lt!2393838)))

(declare-fun b!6508617 () Bool)

(assert (=> b!6508617 (= e!3943486 e!3943482)))

(declare-fun c!1193748 () Bool)

(assert (=> b!6508617 (= c!1193748 (isEmpty!37556 (exprs!6274 (h!71794 zl!343))))))

(assert (= (and d!2041771 res!2672986) b!6508621))

(assert (= (and d!2041771 c!1193747) b!6508616))

(assert (= (and d!2041771 (not c!1193747)) b!6508625))

(assert (= (and b!6508625 c!1193746) b!6508624))

(assert (= (and b!6508625 (not c!1193746)) b!6508619))

(assert (= (and d!2041771 res!2672987) b!6508617))

(assert (= (and b!6508617 c!1193748) b!6508618))

(assert (= (and b!6508617 (not c!1193748)) b!6508620))

(assert (= (and b!6508620 c!1193749) b!6508622))

(assert (= (and b!6508620 (not c!1193749)) b!6508623))

(declare-fun m!7295202 () Bool)

(assert (=> b!6508617 m!7295202))

(assert (=> b!6508621 m!7294858))

(declare-fun m!7295204 () Bool)

(assert (=> d!2041771 m!7295204))

(declare-fun m!7295206 () Bool)

(assert (=> d!2041771 m!7295206))

(declare-fun m!7295208 () Bool)

(assert (=> b!6508623 m!7295208))

(declare-fun m!7295210 () Bool)

(assert (=> b!6508624 m!7295210))

(declare-fun m!7295212 () Bool)

(assert (=> b!6508618 m!7295212))

(declare-fun m!7295214 () Bool)

(assert (=> b!6508622 m!7295214))

(declare-fun m!7295216 () Bool)

(assert (=> b!6508620 m!7295216))

(assert (=> b!6508620 m!7295216))

(declare-fun m!7295218 () Bool)

(assert (=> b!6508620 m!7295218))

(assert (=> b!6508259 d!2041771))

(declare-fun d!2041773 () Bool)

(assert (=> d!2041773 (= (isEmpty!37555 (t!379106 zl!343)) (is-Nil!65346 (t!379106 zl!343)))))

(assert (=> b!6508238 d!2041773))

(declare-fun b!6508644 () Bool)

(declare-fun e!3943499 () Option!16281)

(declare-fun e!3943498 () Option!16281)

(assert (=> b!6508644 (= e!3943499 e!3943498)))

(declare-fun c!1193754 () Bool)

(assert (=> b!6508644 (= c!1193754 (is-Nil!65347 s!2326))))

(declare-fun b!6508645 () Bool)

(assert (=> b!6508645 (= e!3943499 (Some!16280 (tuple2!66739 Nil!65347 s!2326)))))

(declare-fun b!6508646 () Bool)

(declare-fun e!3943497 () Bool)

(assert (=> b!6508646 (= e!3943497 (matchR!8573 (regTwo!33292 r!7292) s!2326))))

(declare-fun b!6508647 () Bool)

(declare-fun res!2672999 () Bool)

(declare-fun e!3943500 () Bool)

(assert (=> b!6508647 (=> (not res!2672999) (not e!3943500))))

(declare-fun lt!2393846 () Option!16281)

(assert (=> b!6508647 (= res!2672999 (matchR!8573 (regOne!33292 r!7292) (_1!36672 (get!22667 lt!2393846))))))

(declare-fun b!6508648 () Bool)

(assert (=> b!6508648 (= e!3943500 (= (++!14483 (_1!36672 (get!22667 lt!2393846)) (_2!36672 (get!22667 lt!2393846))) s!2326))))

(declare-fun b!6508649 () Bool)

(declare-fun e!3943501 () Bool)

(assert (=> b!6508649 (= e!3943501 (not (isDefined!12984 lt!2393846)))))

(declare-fun b!6508651 () Bool)

(declare-fun lt!2393847 () Unit!158895)

(declare-fun lt!2393845 () Unit!158895)

(assert (=> b!6508651 (= lt!2393847 lt!2393845)))

(assert (=> b!6508651 (= (++!14483 (++!14483 Nil!65347 (Cons!65347 (h!71795 s!2326) Nil!65347)) (t!379107 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2541 (List!65471 C!33050 List!65471 List!65471) Unit!158895)

(assert (=> b!6508651 (= lt!2393845 (lemmaMoveElementToOtherListKeepsConcatEq!2541 Nil!65347 (h!71795 s!2326) (t!379107 s!2326) s!2326))))

(assert (=> b!6508651 (= e!3943498 (findConcatSeparation!2695 (regOne!33292 r!7292) (regTwo!33292 r!7292) (++!14483 Nil!65347 (Cons!65347 (h!71795 s!2326) Nil!65347)) (t!379107 s!2326) s!2326))))

(declare-fun b!6508652 () Bool)

(declare-fun res!2673001 () Bool)

(assert (=> b!6508652 (=> (not res!2673001) (not e!3943500))))

(assert (=> b!6508652 (= res!2673001 (matchR!8573 (regTwo!33292 r!7292) (_2!36672 (get!22667 lt!2393846))))))

(declare-fun b!6508650 () Bool)

(assert (=> b!6508650 (= e!3943498 None!16280)))

(declare-fun d!2041775 () Bool)

(assert (=> d!2041775 e!3943501))

(declare-fun res!2673000 () Bool)

(assert (=> d!2041775 (=> res!2673000 e!3943501)))

(assert (=> d!2041775 (= res!2673000 e!3943500)))

(declare-fun res!2672998 () Bool)

(assert (=> d!2041775 (=> (not res!2672998) (not e!3943500))))

(assert (=> d!2041775 (= res!2672998 (isDefined!12984 lt!2393846))))

(assert (=> d!2041775 (= lt!2393846 e!3943499)))

(declare-fun c!1193755 () Bool)

(assert (=> d!2041775 (= c!1193755 e!3943497)))

(declare-fun res!2673002 () Bool)

(assert (=> d!2041775 (=> (not res!2673002) (not e!3943497))))

(assert (=> d!2041775 (= res!2673002 (matchR!8573 (regOne!33292 r!7292) Nil!65347))))

(assert (=> d!2041775 (validRegex!8126 (regOne!33292 r!7292))))

(assert (=> d!2041775 (= (findConcatSeparation!2695 (regOne!33292 r!7292) (regTwo!33292 r!7292) Nil!65347 s!2326 s!2326) lt!2393846)))

(assert (= (and d!2041775 res!2673002) b!6508646))

(assert (= (and d!2041775 c!1193755) b!6508645))

(assert (= (and d!2041775 (not c!1193755)) b!6508644))

(assert (= (and b!6508644 c!1193754) b!6508650))

(assert (= (and b!6508644 (not c!1193754)) b!6508651))

(assert (= (and d!2041775 res!2672998) b!6508647))

(assert (= (and b!6508647 res!2672999) b!6508652))

(assert (= (and b!6508652 res!2673001) b!6508648))

(assert (= (and d!2041775 (not res!2673000)) b!6508649))

(declare-fun m!7295220 () Bool)

(assert (=> b!6508647 m!7295220))

(declare-fun m!7295222 () Bool)

(assert (=> b!6508647 m!7295222))

(assert (=> b!6508652 m!7295220))

(declare-fun m!7295224 () Bool)

(assert (=> b!6508652 m!7295224))

(declare-fun m!7295226 () Bool)

(assert (=> d!2041775 m!7295226))

(declare-fun m!7295228 () Bool)

(assert (=> d!2041775 m!7295228))

(declare-fun m!7295230 () Bool)

(assert (=> d!2041775 m!7295230))

(assert (=> b!6508649 m!7295226))

(assert (=> b!6508648 m!7295220))

(declare-fun m!7295232 () Bool)

(assert (=> b!6508648 m!7295232))

(declare-fun m!7295234 () Bool)

(assert (=> b!6508651 m!7295234))

(assert (=> b!6508651 m!7295234))

(declare-fun m!7295236 () Bool)

(assert (=> b!6508651 m!7295236))

(declare-fun m!7295238 () Bool)

(assert (=> b!6508651 m!7295238))

(assert (=> b!6508651 m!7295234))

(declare-fun m!7295240 () Bool)

(assert (=> b!6508651 m!7295240))

(declare-fun m!7295242 () Bool)

(assert (=> b!6508646 m!7295242))

(assert (=> b!6508257 d!2041775))

(declare-fun d!2041777 () Bool)

(declare-fun choose!48365 (Int) Bool)

(assert (=> d!2041777 (= (Exists!3460 lambda!361001) (choose!48365 lambda!361001))))

(declare-fun bs!1652813 () Bool)

(assert (= bs!1652813 d!2041777))

(declare-fun m!7295244 () Bool)

(assert (=> bs!1652813 m!7295244))

(assert (=> b!6508257 d!2041777))

(declare-fun d!2041779 () Bool)

(assert (=> d!2041779 (= (Exists!3460 lambda!361002) (choose!48365 lambda!361002))))

(declare-fun bs!1652814 () Bool)

(assert (= bs!1652814 d!2041779))

(declare-fun m!7295246 () Bool)

(assert (=> bs!1652814 m!7295246))

(assert (=> b!6508257 d!2041779))

(declare-fun bs!1652815 () Bool)

(declare-fun d!2041781 () Bool)

(assert (= bs!1652815 (and d!2041781 b!6508257)))

(declare-fun lambda!361045 () Int)

(assert (=> bs!1652815 (= lambda!361045 lambda!361001)))

(assert (=> bs!1652815 (not (= lambda!361045 lambda!361002))))

(declare-fun bs!1652816 () Bool)

(assert (= bs!1652816 (and d!2041781 b!6508532)))

(assert (=> bs!1652816 (not (= lambda!361045 lambda!361038))))

(declare-fun bs!1652817 () Bool)

(assert (= bs!1652817 (and d!2041781 b!6508537)))

(assert (=> bs!1652817 (not (= lambda!361045 lambda!361039))))

(assert (=> d!2041781 true))

(assert (=> d!2041781 true))

(assert (=> d!2041781 true))

(assert (=> d!2041781 (= (isDefined!12984 (findConcatSeparation!2695 (regOne!33292 r!7292) (regTwo!33292 r!7292) Nil!65347 s!2326 s!2326)) (Exists!3460 lambda!361045))))

(declare-fun lt!2393850 () Unit!158895)

(declare-fun choose!48366 (Regex!16390 Regex!16390 List!65471) Unit!158895)

(assert (=> d!2041781 (= lt!2393850 (choose!48366 (regOne!33292 r!7292) (regTwo!33292 r!7292) s!2326))))

(assert (=> d!2041781 (validRegex!8126 (regOne!33292 r!7292))))

(assert (=> d!2041781 (= (lemmaFindConcatSeparationEquivalentToExists!2459 (regOne!33292 r!7292) (regTwo!33292 r!7292) s!2326) lt!2393850)))

(declare-fun bs!1652818 () Bool)

(assert (= bs!1652818 d!2041781))

(assert (=> bs!1652818 m!7295230))

(assert (=> bs!1652818 m!7294818))

(declare-fun m!7295248 () Bool)

(assert (=> bs!1652818 m!7295248))

(assert (=> bs!1652818 m!7294818))

(assert (=> bs!1652818 m!7294820))

(declare-fun m!7295250 () Bool)

(assert (=> bs!1652818 m!7295250))

(assert (=> b!6508257 d!2041781))

(declare-fun bs!1652819 () Bool)

(declare-fun d!2041783 () Bool)

(assert (= bs!1652819 (and d!2041783 b!6508537)))

(declare-fun lambda!361050 () Int)

(assert (=> bs!1652819 (not (= lambda!361050 lambda!361039))))

(declare-fun bs!1652820 () Bool)

(assert (= bs!1652820 (and d!2041783 b!6508532)))

(assert (=> bs!1652820 (not (= lambda!361050 lambda!361038))))

(declare-fun bs!1652821 () Bool)

(assert (= bs!1652821 (and d!2041783 b!6508257)))

(assert (=> bs!1652821 (not (= lambda!361050 lambda!361002))))

(declare-fun bs!1652822 () Bool)

(assert (= bs!1652822 (and d!2041783 d!2041781)))

(assert (=> bs!1652822 (= lambda!361050 lambda!361045)))

(assert (=> bs!1652821 (= lambda!361050 lambda!361001)))

(assert (=> d!2041783 true))

(assert (=> d!2041783 true))

(assert (=> d!2041783 true))

(declare-fun lambda!361051 () Int)

(assert (=> bs!1652819 (= (and (= (regOne!33292 r!7292) (regOne!33292 lt!2393678)) (= (regTwo!33292 r!7292) (regTwo!33292 lt!2393678))) (= lambda!361051 lambda!361039))))

(assert (=> bs!1652820 (not (= lambda!361051 lambda!361038))))

(assert (=> bs!1652821 (= lambda!361051 lambda!361002)))

(declare-fun bs!1652823 () Bool)

(assert (= bs!1652823 d!2041783))

(assert (=> bs!1652823 (not (= lambda!361051 lambda!361050))))

(assert (=> bs!1652822 (not (= lambda!361051 lambda!361045))))

(assert (=> bs!1652821 (not (= lambda!361051 lambda!361001))))

(assert (=> d!2041783 true))

(assert (=> d!2041783 true))

(assert (=> d!2041783 true))

(assert (=> d!2041783 (= (Exists!3460 lambda!361050) (Exists!3460 lambda!361051))))

(declare-fun lt!2393853 () Unit!158895)

(declare-fun choose!48367 (Regex!16390 Regex!16390 List!65471) Unit!158895)

(assert (=> d!2041783 (= lt!2393853 (choose!48367 (regOne!33292 r!7292) (regTwo!33292 r!7292) s!2326))))

(assert (=> d!2041783 (validRegex!8126 (regOne!33292 r!7292))))

(assert (=> d!2041783 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1997 (regOne!33292 r!7292) (regTwo!33292 r!7292) s!2326) lt!2393853)))

(declare-fun m!7295252 () Bool)

(assert (=> bs!1652823 m!7295252))

(declare-fun m!7295254 () Bool)

(assert (=> bs!1652823 m!7295254))

(declare-fun m!7295256 () Bool)

(assert (=> bs!1652823 m!7295256))

(assert (=> bs!1652823 m!7295230))

(assert (=> b!6508257 d!2041783))

(declare-fun d!2041785 () Bool)

(declare-fun isEmpty!37560 (Option!16281) Bool)

(assert (=> d!2041785 (= (isDefined!12984 (findConcatSeparation!2695 (regOne!33292 r!7292) (regTwo!33292 r!7292) Nil!65347 s!2326 s!2326)) (not (isEmpty!37560 (findConcatSeparation!2695 (regOne!33292 r!7292) (regTwo!33292 r!7292) Nil!65347 s!2326 s!2326))))))

(declare-fun bs!1652824 () Bool)

(assert (= bs!1652824 d!2041785))

(assert (=> bs!1652824 m!7294818))

(declare-fun m!7295258 () Bool)

(assert (=> bs!1652824 m!7295258))

(assert (=> b!6508257 d!2041785))

(declare-fun d!2041787 () Bool)

(declare-fun e!3943510 () Bool)

(assert (=> d!2041787 (= (matchZipper!2402 (set.union lt!2393680 lt!2393690) (t!379107 s!2326)) e!3943510)))

(declare-fun res!2673018 () Bool)

(assert (=> d!2041787 (=> res!2673018 e!3943510)))

(assert (=> d!2041787 (= res!2673018 (matchZipper!2402 lt!2393680 (t!379107 s!2326)))))

(declare-fun lt!2393856 () Unit!158895)

(declare-fun choose!48368 ((Set Context!11548) (Set Context!11548) List!65471) Unit!158895)

(assert (=> d!2041787 (= lt!2393856 (choose!48368 lt!2393680 lt!2393690 (t!379107 s!2326)))))

(assert (=> d!2041787 (= (lemmaZipperConcatMatchesSameAsBothZippers!1221 lt!2393680 lt!2393690 (t!379107 s!2326)) lt!2393856)))

(declare-fun b!6508667 () Bool)

(assert (=> b!6508667 (= e!3943510 (matchZipper!2402 lt!2393690 (t!379107 s!2326)))))

(assert (= (and d!2041787 (not res!2673018)) b!6508667))

(assert (=> d!2041787 m!7294850))

(assert (=> d!2041787 m!7294848))

(declare-fun m!7295260 () Bool)

(assert (=> d!2041787 m!7295260))

(assert (=> b!6508667 m!7294816))

(assert (=> b!6508251 d!2041787))

(assert (=> b!6508251 d!2041739))

(declare-fun d!2041789 () Bool)

(declare-fun c!1193756 () Bool)

(assert (=> d!2041789 (= c!1193756 (isEmpty!37559 (t!379107 s!2326)))))

(declare-fun e!3943511 () Bool)

(assert (=> d!2041789 (= (matchZipper!2402 (set.union lt!2393680 lt!2393690) (t!379107 s!2326)) e!3943511)))

(declare-fun b!6508668 () Bool)

(assert (=> b!6508668 (= e!3943511 (nullableZipper!2143 (set.union lt!2393680 lt!2393690)))))

(declare-fun b!6508669 () Bool)

(assert (=> b!6508669 (= e!3943511 (matchZipper!2402 (derivationStepZipper!2356 (set.union lt!2393680 lt!2393690) (head!13247 (t!379107 s!2326))) (tail!12332 (t!379107 s!2326))))))

(assert (= (and d!2041789 c!1193756) b!6508668))

(assert (= (and d!2041789 (not c!1193756)) b!6508669))

(assert (=> d!2041789 m!7295084))

(declare-fun m!7295262 () Bool)

(assert (=> b!6508668 m!7295262))

(assert (=> b!6508669 m!7295088))

(assert (=> b!6508669 m!7295088))

(declare-fun m!7295264 () Bool)

(assert (=> b!6508669 m!7295264))

(assert (=> b!6508669 m!7295092))

(assert (=> b!6508669 m!7295264))

(assert (=> b!6508669 m!7295092))

(declare-fun m!7295266 () Bool)

(assert (=> b!6508669 m!7295266))

(assert (=> b!6508251 d!2041789))

(declare-fun d!2041791 () Bool)

(declare-fun lt!2393857 () Regex!16390)

(assert (=> d!2041791 (validRegex!8126 lt!2393857)))

(assert (=> d!2041791 (= lt!2393857 (generalisedUnion!2234 (unfocusZipperList!1811 (Cons!65346 lt!2393668 Nil!65346))))))

(assert (=> d!2041791 (= (unfocusZipper!2132 (Cons!65346 lt!2393668 Nil!65346)) lt!2393857)))

(declare-fun bs!1652825 () Bool)

(assert (= bs!1652825 d!2041791))

(declare-fun m!7295268 () Bool)

(assert (=> bs!1652825 m!7295268))

(declare-fun m!7295270 () Bool)

(assert (=> bs!1652825 m!7295270))

(assert (=> bs!1652825 m!7295270))

(declare-fun m!7295272 () Bool)

(assert (=> bs!1652825 m!7295272))

(assert (=> b!6508249 d!2041791))

(declare-fun bs!1652826 () Bool)

(declare-fun b!6508672 () Bool)

(assert (= bs!1652826 (and b!6508672 b!6508537)))

(declare-fun lambda!361052 () Int)

(assert (=> bs!1652826 (not (= lambda!361052 lambda!361039))))

(declare-fun bs!1652827 () Bool)

(assert (= bs!1652827 (and b!6508672 b!6508532)))

(assert (=> bs!1652827 (= (and (= (reg!16719 r!7292) (reg!16719 lt!2393678)) (= r!7292 lt!2393678)) (= lambda!361052 lambda!361038))))

(declare-fun bs!1652828 () Bool)

(assert (= bs!1652828 (and b!6508672 b!6508257)))

(assert (=> bs!1652828 (not (= lambda!361052 lambda!361002))))

(declare-fun bs!1652829 () Bool)

(assert (= bs!1652829 (and b!6508672 d!2041783)))

(assert (=> bs!1652829 (not (= lambda!361052 lambda!361051))))

(assert (=> bs!1652829 (not (= lambda!361052 lambda!361050))))

(declare-fun bs!1652830 () Bool)

(assert (= bs!1652830 (and b!6508672 d!2041781)))

(assert (=> bs!1652830 (not (= lambda!361052 lambda!361045))))

(assert (=> bs!1652828 (not (= lambda!361052 lambda!361001))))

(assert (=> b!6508672 true))

(assert (=> b!6508672 true))

(declare-fun bs!1652831 () Bool)

(declare-fun b!6508677 () Bool)

(assert (= bs!1652831 (and b!6508677 b!6508537)))

(declare-fun lambda!361053 () Int)

(assert (=> bs!1652831 (= (and (= (regOne!33292 r!7292) (regOne!33292 lt!2393678)) (= (regTwo!33292 r!7292) (regTwo!33292 lt!2393678))) (= lambda!361053 lambda!361039))))

(declare-fun bs!1652832 () Bool)

(assert (= bs!1652832 (and b!6508677 b!6508532)))

(assert (=> bs!1652832 (not (= lambda!361053 lambda!361038))))

(declare-fun bs!1652833 () Bool)

(assert (= bs!1652833 (and b!6508677 b!6508257)))

(assert (=> bs!1652833 (= lambda!361053 lambda!361002)))

(declare-fun bs!1652834 () Bool)

(assert (= bs!1652834 (and b!6508677 b!6508672)))

(assert (=> bs!1652834 (not (= lambda!361053 lambda!361052))))

(declare-fun bs!1652835 () Bool)

(assert (= bs!1652835 (and b!6508677 d!2041783)))

(assert (=> bs!1652835 (= lambda!361053 lambda!361051)))

(assert (=> bs!1652835 (not (= lambda!361053 lambda!361050))))

(declare-fun bs!1652836 () Bool)

(assert (= bs!1652836 (and b!6508677 d!2041781)))

(assert (=> bs!1652836 (not (= lambda!361053 lambda!361045))))

(assert (=> bs!1652833 (not (= lambda!361053 lambda!361001))))

(assert (=> b!6508677 true))

(assert (=> b!6508677 true))

(declare-fun b!6508670 () Bool)

(declare-fun e!3943518 () Bool)

(declare-fun call!564125 () Bool)

(assert (=> b!6508670 (= e!3943518 call!564125)))

(declare-fun e!3943515 () Bool)

(declare-fun call!564126 () Bool)

(assert (=> b!6508672 (= e!3943515 call!564126)))

(declare-fun c!1193758 () Bool)

(declare-fun bm!564120 () Bool)

(assert (=> bm!564120 (= call!564126 (Exists!3460 (ite c!1193758 lambda!361052 lambda!361053)))))

(declare-fun b!6508673 () Bool)

(declare-fun e!3943516 () Bool)

(assert (=> b!6508673 (= e!3943518 e!3943516)))

(declare-fun res!2673020 () Bool)

(assert (=> b!6508673 (= res!2673020 (not (is-EmptyLang!16390 r!7292)))))

(assert (=> b!6508673 (=> (not res!2673020) (not e!3943516))))

(declare-fun b!6508674 () Bool)

(declare-fun e!3943514 () Bool)

(declare-fun e!3943512 () Bool)

(assert (=> b!6508674 (= e!3943514 e!3943512)))

(assert (=> b!6508674 (= c!1193758 (is-Star!16390 r!7292))))

(declare-fun bm!564121 () Bool)

(assert (=> bm!564121 (= call!564125 (isEmpty!37559 s!2326))))

(declare-fun b!6508675 () Bool)

(declare-fun res!2673021 () Bool)

(assert (=> b!6508675 (=> res!2673021 e!3943515)))

(assert (=> b!6508675 (= res!2673021 call!564125)))

(assert (=> b!6508675 (= e!3943512 e!3943515)))

(declare-fun b!6508676 () Bool)

(declare-fun c!1193757 () Bool)

(assert (=> b!6508676 (= c!1193757 (is-ElementMatch!16390 r!7292))))

(declare-fun e!3943517 () Bool)

(assert (=> b!6508676 (= e!3943516 e!3943517)))

(assert (=> b!6508677 (= e!3943512 call!564126)))

(declare-fun b!6508678 () Bool)

(assert (=> b!6508678 (= e!3943517 (= s!2326 (Cons!65347 (c!1193670 r!7292) Nil!65347)))))

(declare-fun b!6508679 () Bool)

(declare-fun e!3943513 () Bool)

(assert (=> b!6508679 (= e!3943513 (matchRSpec!3491 (regTwo!33293 r!7292) s!2326))))

(declare-fun b!6508680 () Bool)

(declare-fun c!1193759 () Bool)

(assert (=> b!6508680 (= c!1193759 (is-Union!16390 r!7292))))

(assert (=> b!6508680 (= e!3943517 e!3943514)))

(declare-fun d!2041793 () Bool)

(declare-fun c!1193760 () Bool)

(assert (=> d!2041793 (= c!1193760 (is-EmptyExpr!16390 r!7292))))

(assert (=> d!2041793 (= (matchRSpec!3491 r!7292 s!2326) e!3943518)))

(declare-fun b!6508671 () Bool)

(assert (=> b!6508671 (= e!3943514 e!3943513)))

(declare-fun res!2673019 () Bool)

(assert (=> b!6508671 (= res!2673019 (matchRSpec!3491 (regOne!33293 r!7292) s!2326))))

(assert (=> b!6508671 (=> res!2673019 e!3943513)))

(assert (= (and d!2041793 c!1193760) b!6508670))

(assert (= (and d!2041793 (not c!1193760)) b!6508673))

(assert (= (and b!6508673 res!2673020) b!6508676))

(assert (= (and b!6508676 c!1193757) b!6508678))

(assert (= (and b!6508676 (not c!1193757)) b!6508680))

(assert (= (and b!6508680 c!1193759) b!6508671))

(assert (= (and b!6508680 (not c!1193759)) b!6508674))

(assert (= (and b!6508671 (not res!2673019)) b!6508679))

(assert (= (and b!6508674 c!1193758) b!6508675))

(assert (= (and b!6508674 (not c!1193758)) b!6508677))

(assert (= (and b!6508675 (not res!2673021)) b!6508672))

(assert (= (or b!6508672 b!6508677) bm!564120))

(assert (= (or b!6508670 b!6508675) bm!564121))

(declare-fun m!7295274 () Bool)

(assert (=> bm!564120 m!7295274))

(assert (=> bm!564121 m!7295096))

(declare-fun m!7295276 () Bool)

(assert (=> b!6508679 m!7295276))

(declare-fun m!7295278 () Bool)

(assert (=> b!6508671 m!7295278))

(assert (=> b!6508270 d!2041793))

(declare-fun b!6508681 () Bool)

(declare-fun e!3943522 () Bool)

(assert (=> b!6508681 (= e!3943522 (nullable!6383 r!7292))))

(declare-fun b!6508682 () Bool)

(declare-fun e!3943525 () Bool)

(declare-fun e!3943521 () Bool)

(assert (=> b!6508682 (= e!3943525 e!3943521)))

(declare-fun res!2673026 () Bool)

(assert (=> b!6508682 (=> res!2673026 e!3943521)))

(declare-fun call!564127 () Bool)

(assert (=> b!6508682 (= res!2673026 call!564127)))

(declare-fun b!6508683 () Bool)

(declare-fun e!3943519 () Bool)

(assert (=> b!6508683 (= e!3943519 (= (head!13247 s!2326) (c!1193670 r!7292)))))

(declare-fun d!2041795 () Bool)

(declare-fun e!3943520 () Bool)

(assert (=> d!2041795 e!3943520))

(declare-fun c!1193762 () Bool)

(assert (=> d!2041795 (= c!1193762 (is-EmptyExpr!16390 r!7292))))

(declare-fun lt!2393858 () Bool)

(assert (=> d!2041795 (= lt!2393858 e!3943522)))

(declare-fun c!1193761 () Bool)

(assert (=> d!2041795 (= c!1193761 (isEmpty!37559 s!2326))))

(assert (=> d!2041795 (validRegex!8126 r!7292)))

(assert (=> d!2041795 (= (matchR!8573 r!7292 s!2326) lt!2393858)))

(declare-fun b!6508684 () Bool)

(declare-fun res!2673025 () Bool)

(assert (=> b!6508684 (=> (not res!2673025) (not e!3943519))))

(assert (=> b!6508684 (= res!2673025 (isEmpty!37559 (tail!12332 s!2326)))))

(declare-fun b!6508685 () Bool)

(declare-fun e!3943523 () Bool)

(assert (=> b!6508685 (= e!3943523 e!3943525)))

(declare-fun res!2673024 () Bool)

(assert (=> b!6508685 (=> (not res!2673024) (not e!3943525))))

(assert (=> b!6508685 (= res!2673024 (not lt!2393858))))

(declare-fun b!6508686 () Bool)

(assert (=> b!6508686 (= e!3943520 (= lt!2393858 call!564127))))

(declare-fun b!6508687 () Bool)

(declare-fun e!3943524 () Bool)

(assert (=> b!6508687 (= e!3943524 (not lt!2393858))))

(declare-fun b!6508688 () Bool)

(assert (=> b!6508688 (= e!3943521 (not (= (head!13247 s!2326) (c!1193670 r!7292))))))

(declare-fun b!6508689 () Bool)

(declare-fun res!2673028 () Bool)

(assert (=> b!6508689 (=> res!2673028 e!3943523)))

(assert (=> b!6508689 (= res!2673028 e!3943519)))

(declare-fun res!2673022 () Bool)

(assert (=> b!6508689 (=> (not res!2673022) (not e!3943519))))

(assert (=> b!6508689 (= res!2673022 lt!2393858)))

(declare-fun b!6508690 () Bool)

(assert (=> b!6508690 (= e!3943522 (matchR!8573 (derivativeStep!5082 r!7292 (head!13247 s!2326)) (tail!12332 s!2326)))))

(declare-fun b!6508691 () Bool)

(declare-fun res!2673027 () Bool)

(assert (=> b!6508691 (=> res!2673027 e!3943521)))

(assert (=> b!6508691 (= res!2673027 (not (isEmpty!37559 (tail!12332 s!2326))))))

(declare-fun b!6508692 () Bool)

(assert (=> b!6508692 (= e!3943520 e!3943524)))

(declare-fun c!1193763 () Bool)

(assert (=> b!6508692 (= c!1193763 (is-EmptyLang!16390 r!7292))))

(declare-fun bm!564122 () Bool)

(assert (=> bm!564122 (= call!564127 (isEmpty!37559 s!2326))))

(declare-fun b!6508693 () Bool)

(declare-fun res!2673029 () Bool)

(assert (=> b!6508693 (=> (not res!2673029) (not e!3943519))))

(assert (=> b!6508693 (= res!2673029 (not call!564127))))

(declare-fun b!6508694 () Bool)

(declare-fun res!2673023 () Bool)

(assert (=> b!6508694 (=> res!2673023 e!3943523)))

(assert (=> b!6508694 (= res!2673023 (not (is-ElementMatch!16390 r!7292)))))

(assert (=> b!6508694 (= e!3943524 e!3943523)))

(assert (= (and d!2041795 c!1193761) b!6508681))

(assert (= (and d!2041795 (not c!1193761)) b!6508690))

(assert (= (and d!2041795 c!1193762) b!6508686))

(assert (= (and d!2041795 (not c!1193762)) b!6508692))

(assert (= (and b!6508692 c!1193763) b!6508687))

(assert (= (and b!6508692 (not c!1193763)) b!6508694))

(assert (= (and b!6508694 (not res!2673023)) b!6508689))

(assert (= (and b!6508689 res!2673022) b!6508693))

(assert (= (and b!6508693 res!2673029) b!6508684))

(assert (= (and b!6508684 res!2673025) b!6508683))

(assert (= (and b!6508689 (not res!2673028)) b!6508685))

(assert (= (and b!6508685 res!2673024) b!6508682))

(assert (= (and b!6508682 (not res!2673026)) b!6508691))

(assert (= (and b!6508691 (not res!2673027)) b!6508688))

(assert (= (or b!6508686 b!6508682 b!6508693) bm!564122))

(declare-fun m!7295280 () Bool)

(assert (=> b!6508681 m!7295280))

(assert (=> b!6508691 m!7295104))

(assert (=> b!6508691 m!7295104))

(assert (=> b!6508691 m!7295136))

(assert (=> b!6508683 m!7295100))

(assert (=> b!6508690 m!7295100))

(assert (=> b!6508690 m!7295100))

(declare-fun m!7295282 () Bool)

(assert (=> b!6508690 m!7295282))

(assert (=> b!6508690 m!7295104))

(assert (=> b!6508690 m!7295282))

(assert (=> b!6508690 m!7295104))

(declare-fun m!7295284 () Bool)

(assert (=> b!6508690 m!7295284))

(assert (=> bm!564122 m!7295096))

(assert (=> b!6508684 m!7295104))

(assert (=> b!6508684 m!7295104))

(assert (=> b!6508684 m!7295136))

(assert (=> d!2041795 m!7295096))

(assert (=> d!2041795 m!7294862))

(assert (=> b!6508688 m!7295100))

(assert (=> b!6508270 d!2041795))

(declare-fun d!2041797 () Bool)

(assert (=> d!2041797 (= (matchR!8573 r!7292 s!2326) (matchRSpec!3491 r!7292 s!2326))))

(declare-fun lt!2393859 () Unit!158895)

(assert (=> d!2041797 (= lt!2393859 (choose!48362 r!7292 s!2326))))

(assert (=> d!2041797 (validRegex!8126 r!7292)))

(assert (=> d!2041797 (= (mainMatchTheorem!3491 r!7292 s!2326) lt!2393859)))

(declare-fun bs!1652837 () Bool)

(assert (= bs!1652837 d!2041797))

(assert (=> bs!1652837 m!7294898))

(assert (=> bs!1652837 m!7294896))

(declare-fun m!7295286 () Bool)

(assert (=> bs!1652837 m!7295286))

(assert (=> bs!1652837 m!7294862))

(assert (=> b!6508270 d!2041797))

(declare-fun bs!1652838 () Bool)

(declare-fun d!2041799 () Bool)

(assert (= bs!1652838 (and d!2041799 b!6508247)))

(declare-fun lambda!361054 () Int)

(assert (=> bs!1652838 (= lambda!361054 lambda!361005)))

(declare-fun bs!1652839 () Bool)

(assert (= bs!1652839 (and d!2041799 d!2041743)))

(assert (=> bs!1652839 (= lambda!361054 lambda!361033)))

(declare-fun bs!1652840 () Bool)

(assert (= bs!1652840 (and d!2041799 d!2041771)))

(assert (=> bs!1652840 (= lambda!361054 lambda!361042)))

(assert (=> d!2041799 (= (inv!84223 (h!71794 zl!343)) (forall!15569 (exprs!6274 (h!71794 zl!343)) lambda!361054))))

(declare-fun bs!1652841 () Bool)

(assert (= bs!1652841 d!2041799))

(declare-fun m!7295288 () Bool)

(assert (=> bs!1652841 m!7295288))

(assert (=> b!6508254 d!2041799))

(declare-fun d!2041801 () Bool)

(assert (=> d!2041801 (isDefined!12984 (findConcatSeparationZippers!155 lt!2393675 (set.insert lt!2393668 (as set.empty (Set Context!11548))) Nil!65347 s!2326 s!2326))))

(declare-fun lt!2393862 () Unit!158895)

(declare-fun choose!48369 ((Set Context!11548) Context!11548 List!65471) Unit!158895)

(assert (=> d!2041801 (= lt!2393862 (choose!48369 lt!2393675 lt!2393668 s!2326))))

(assert (=> d!2041801 (matchZipper!2402 (appendTo!151 lt!2393675 lt!2393668) s!2326)))

(assert (=> d!2041801 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!155 lt!2393675 lt!2393668 s!2326) lt!2393862)))

(declare-fun bs!1652842 () Bool)

(assert (= bs!1652842 d!2041801))

(assert (=> bs!1652842 m!7294874))

(declare-fun m!7295290 () Bool)

(assert (=> bs!1652842 m!7295290))

(declare-fun m!7295292 () Bool)

(assert (=> bs!1652842 m!7295292))

(assert (=> bs!1652842 m!7294830))

(assert (=> bs!1652842 m!7294874))

(assert (=> bs!1652842 m!7294830))

(declare-fun m!7295294 () Bool)

(assert (=> bs!1652842 m!7295294))

(assert (=> bs!1652842 m!7295290))

(declare-fun m!7295296 () Bool)

(assert (=> bs!1652842 m!7295296))

(assert (=> b!6508272 d!2041801))

(declare-fun b!6508713 () Bool)

(declare-fun e!3943540 () Bool)

(declare-fun lt!2393870 () Option!16281)

(assert (=> b!6508713 (= e!3943540 (= (++!14483 (_1!36672 (get!22667 lt!2393870)) (_2!36672 (get!22667 lt!2393870))) s!2326))))

(declare-fun b!6508714 () Bool)

(declare-fun e!3943537 () Option!16281)

(assert (=> b!6508714 (= e!3943537 (Some!16280 (tuple2!66739 Nil!65347 s!2326)))))

(declare-fun d!2041803 () Bool)

(declare-fun e!3943539 () Bool)

(assert (=> d!2041803 e!3943539))

(declare-fun res!2673041 () Bool)

(assert (=> d!2041803 (=> res!2673041 e!3943539)))

(assert (=> d!2041803 (= res!2673041 e!3943540)))

(declare-fun res!2673044 () Bool)

(assert (=> d!2041803 (=> (not res!2673044) (not e!3943540))))

(assert (=> d!2041803 (= res!2673044 (isDefined!12984 lt!2393870))))

(assert (=> d!2041803 (= lt!2393870 e!3943537)))

(declare-fun c!1193769 () Bool)

(declare-fun e!3943538 () Bool)

(assert (=> d!2041803 (= c!1193769 e!3943538)))

(declare-fun res!2673040 () Bool)

(assert (=> d!2041803 (=> (not res!2673040) (not e!3943538))))

(assert (=> d!2041803 (= res!2673040 (matchZipper!2402 lt!2393675 Nil!65347))))

(assert (=> d!2041803 (= (++!14483 Nil!65347 s!2326) s!2326)))

(assert (=> d!2041803 (= (findConcatSeparationZippers!155 lt!2393675 lt!2393692 Nil!65347 s!2326 s!2326) lt!2393870)))

(declare-fun b!6508715 () Bool)

(declare-fun e!3943536 () Option!16281)

(assert (=> b!6508715 (= e!3943536 None!16280)))

(declare-fun b!6508716 () Bool)

(assert (=> b!6508716 (= e!3943537 e!3943536)))

(declare-fun c!1193768 () Bool)

(assert (=> b!6508716 (= c!1193768 (is-Nil!65347 s!2326))))

(declare-fun b!6508717 () Bool)

(declare-fun lt!2393869 () Unit!158895)

(declare-fun lt!2393871 () Unit!158895)

(assert (=> b!6508717 (= lt!2393869 lt!2393871)))

(assert (=> b!6508717 (= (++!14483 (++!14483 Nil!65347 (Cons!65347 (h!71795 s!2326) Nil!65347)) (t!379107 s!2326)) s!2326)))

(assert (=> b!6508717 (= lt!2393871 (lemmaMoveElementToOtherListKeepsConcatEq!2541 Nil!65347 (h!71795 s!2326) (t!379107 s!2326) s!2326))))

(assert (=> b!6508717 (= e!3943536 (findConcatSeparationZippers!155 lt!2393675 lt!2393692 (++!14483 Nil!65347 (Cons!65347 (h!71795 s!2326) Nil!65347)) (t!379107 s!2326) s!2326))))

(declare-fun b!6508718 () Bool)

(declare-fun res!2673043 () Bool)

(assert (=> b!6508718 (=> (not res!2673043) (not e!3943540))))

(assert (=> b!6508718 (= res!2673043 (matchZipper!2402 lt!2393692 (_2!36672 (get!22667 lt!2393870))))))

(declare-fun b!6508719 () Bool)

(assert (=> b!6508719 (= e!3943538 (matchZipper!2402 lt!2393692 s!2326))))

(declare-fun b!6508720 () Bool)

(assert (=> b!6508720 (= e!3943539 (not (isDefined!12984 lt!2393870)))))

(declare-fun b!6508721 () Bool)

(declare-fun res!2673042 () Bool)

(assert (=> b!6508721 (=> (not res!2673042) (not e!3943540))))

(assert (=> b!6508721 (= res!2673042 (matchZipper!2402 lt!2393675 (_1!36672 (get!22667 lt!2393870))))))

(assert (= (and d!2041803 res!2673040) b!6508719))

(assert (= (and d!2041803 c!1193769) b!6508714))

(assert (= (and d!2041803 (not c!1193769)) b!6508716))

(assert (= (and b!6508716 c!1193768) b!6508715))

(assert (= (and b!6508716 (not c!1193768)) b!6508717))

(assert (= (and d!2041803 res!2673044) b!6508721))

(assert (= (and b!6508721 res!2673042) b!6508718))

(assert (= (and b!6508718 res!2673043) b!6508713))

(assert (= (and d!2041803 (not res!2673041)) b!6508720))

(declare-fun m!7295298 () Bool)

(assert (=> b!6508719 m!7295298))

(declare-fun m!7295300 () Bool)

(assert (=> b!6508720 m!7295300))

(declare-fun m!7295302 () Bool)

(assert (=> b!6508721 m!7295302))

(declare-fun m!7295304 () Bool)

(assert (=> b!6508721 m!7295304))

(assert (=> b!6508717 m!7295234))

(assert (=> b!6508717 m!7295234))

(assert (=> b!6508717 m!7295236))

(assert (=> b!6508717 m!7295238))

(assert (=> b!6508717 m!7295234))

(declare-fun m!7295306 () Bool)

(assert (=> b!6508717 m!7295306))

(assert (=> d!2041803 m!7295300))

(declare-fun m!7295308 () Bool)

(assert (=> d!2041803 m!7295308))

(declare-fun m!7295310 () Bool)

(assert (=> d!2041803 m!7295310))

(assert (=> b!6508718 m!7295302))

(declare-fun m!7295312 () Bool)

(assert (=> b!6508718 m!7295312))

(assert (=> b!6508713 m!7295302))

(declare-fun m!7295314 () Bool)

(assert (=> b!6508713 m!7295314))

(assert (=> b!6508272 d!2041803))

(declare-fun d!2041805 () Bool)

(assert (=> d!2041805 (= (isDefined!12984 lt!2393700) (not (isEmpty!37560 lt!2393700)))))

(declare-fun bs!1652843 () Bool)

(assert (= bs!1652843 d!2041805))

(declare-fun m!7295316 () Bool)

(assert (=> bs!1652843 m!7295316))

(assert (=> b!6508272 d!2041805))

(declare-fun d!2041807 () Bool)

(assert (=> d!2041807 (= (get!22667 lt!2393700) (v!52459 lt!2393700))))

(assert (=> b!6508272 d!2041807))

(declare-fun d!2041809 () Bool)

(declare-fun e!3943546 () Bool)

(assert (=> d!2041809 e!3943546))

(declare-fun res!2673050 () Bool)

(assert (=> d!2041809 (=> (not res!2673050) (not e!3943546))))

(declare-fun lt!2393874 () List!65471)

(declare-fun content!12480 (List!65471) (Set C!33050))

(assert (=> d!2041809 (= res!2673050 (= (content!12480 lt!2393874) (set.union (content!12480 (_1!36672 lt!2393671)) (content!12480 (_2!36672 lt!2393671)))))))

(declare-fun e!3943545 () List!65471)

(assert (=> d!2041809 (= lt!2393874 e!3943545)))

(declare-fun c!1193772 () Bool)

(assert (=> d!2041809 (= c!1193772 (is-Nil!65347 (_1!36672 lt!2393671)))))

(assert (=> d!2041809 (= (++!14483 (_1!36672 lt!2393671) (_2!36672 lt!2393671)) lt!2393874)))

(declare-fun b!6508733 () Bool)

(assert (=> b!6508733 (= e!3943546 (or (not (= (_2!36672 lt!2393671) Nil!65347)) (= lt!2393874 (_1!36672 lt!2393671))))))

(declare-fun b!6508730 () Bool)

(assert (=> b!6508730 (= e!3943545 (_2!36672 lt!2393671))))

(declare-fun b!6508732 () Bool)

(declare-fun res!2673049 () Bool)

(assert (=> b!6508732 (=> (not res!2673049) (not e!3943546))))

(declare-fun size!40449 (List!65471) Int)

(assert (=> b!6508732 (= res!2673049 (= (size!40449 lt!2393874) (+ (size!40449 (_1!36672 lt!2393671)) (size!40449 (_2!36672 lt!2393671)))))))

(declare-fun b!6508731 () Bool)

(assert (=> b!6508731 (= e!3943545 (Cons!65347 (h!71795 (_1!36672 lt!2393671)) (++!14483 (t!379107 (_1!36672 lt!2393671)) (_2!36672 lt!2393671))))))

(assert (= (and d!2041809 c!1193772) b!6508730))

(assert (= (and d!2041809 (not c!1193772)) b!6508731))

(assert (= (and d!2041809 res!2673050) b!6508732))

(assert (= (and b!6508732 res!2673049) b!6508733))

(declare-fun m!7295318 () Bool)

(assert (=> d!2041809 m!7295318))

(declare-fun m!7295320 () Bool)

(assert (=> d!2041809 m!7295320))

(declare-fun m!7295322 () Bool)

(assert (=> d!2041809 m!7295322))

(declare-fun m!7295324 () Bool)

(assert (=> b!6508732 m!7295324))

(declare-fun m!7295326 () Bool)

(assert (=> b!6508732 m!7295326))

(declare-fun m!7295328 () Bool)

(assert (=> b!6508732 m!7295328))

(declare-fun m!7295330 () Bool)

(assert (=> b!6508731 m!7295330))

(assert (=> b!6508272 d!2041809))

(declare-fun d!2041811 () Bool)

(declare-fun lt!2393875 () Regex!16390)

(assert (=> d!2041811 (validRegex!8126 lt!2393875)))

(assert (=> d!2041811 (= lt!2393875 (generalisedUnion!2234 (unfocusZipperList!1811 zl!343)))))

(assert (=> d!2041811 (= (unfocusZipper!2132 zl!343) lt!2393875)))

(declare-fun bs!1652844 () Bool)

(assert (= bs!1652844 d!2041811))

(declare-fun m!7295332 () Bool)

(assert (=> bs!1652844 m!7295332))

(assert (=> bs!1652844 m!7294842))

(assert (=> bs!1652844 m!7294842))

(assert (=> bs!1652844 m!7294844))

(assert (=> b!6508252 d!2041811))

(declare-fun d!2041813 () Bool)

(declare-fun res!2673063 () Bool)

(declare-fun e!3943567 () Bool)

(assert (=> d!2041813 (=> res!2673063 e!3943567)))

(assert (=> d!2041813 (= res!2673063 (is-ElementMatch!16390 r!7292))))

(assert (=> d!2041813 (= (validRegex!8126 r!7292) e!3943567)))

(declare-fun b!6508752 () Bool)

(declare-fun e!3943561 () Bool)

(declare-fun e!3943563 () Bool)

(assert (=> b!6508752 (= e!3943561 e!3943563)))

(declare-fun res!2673064 () Bool)

(assert (=> b!6508752 (=> (not res!2673064) (not e!3943563))))

(declare-fun call!564134 () Bool)

(assert (=> b!6508752 (= res!2673064 call!564134)))

(declare-fun b!6508753 () Bool)

(declare-fun res!2673062 () Bool)

(declare-fun e!3943566 () Bool)

(assert (=> b!6508753 (=> (not res!2673062) (not e!3943566))))

(assert (=> b!6508753 (= res!2673062 call!564134)))

(declare-fun e!3943564 () Bool)

(assert (=> b!6508753 (= e!3943564 e!3943566)))

(declare-fun b!6508754 () Bool)

(declare-fun call!564136 () Bool)

(assert (=> b!6508754 (= e!3943563 call!564136)))

(declare-fun b!6508755 () Bool)

(declare-fun e!3943562 () Bool)

(declare-fun call!564135 () Bool)

(assert (=> b!6508755 (= e!3943562 call!564135)))

(declare-fun bm!564129 () Bool)

(assert (=> bm!564129 (= call!564134 call!564135)))

(declare-fun bm!564130 () Bool)

(declare-fun c!1193778 () Bool)

(assert (=> bm!564130 (= call!564136 (validRegex!8126 (ite c!1193778 (regTwo!33293 r!7292) (regTwo!33292 r!7292))))))

(declare-fun b!6508756 () Bool)

(declare-fun e!3943565 () Bool)

(assert (=> b!6508756 (= e!3943567 e!3943565)))

(declare-fun c!1193777 () Bool)

(assert (=> b!6508756 (= c!1193777 (is-Star!16390 r!7292))))

(declare-fun b!6508757 () Bool)

(assert (=> b!6508757 (= e!3943565 e!3943564)))

(assert (=> b!6508757 (= c!1193778 (is-Union!16390 r!7292))))

(declare-fun b!6508758 () Bool)

(assert (=> b!6508758 (= e!3943565 e!3943562)))

(declare-fun res!2673065 () Bool)

(assert (=> b!6508758 (= res!2673065 (not (nullable!6383 (reg!16719 r!7292))))))

(assert (=> b!6508758 (=> (not res!2673065) (not e!3943562))))

(declare-fun b!6508759 () Bool)

(assert (=> b!6508759 (= e!3943566 call!564136)))

(declare-fun bm!564131 () Bool)

(assert (=> bm!564131 (= call!564135 (validRegex!8126 (ite c!1193777 (reg!16719 r!7292) (ite c!1193778 (regOne!33293 r!7292) (regOne!33292 r!7292)))))))

(declare-fun b!6508760 () Bool)

(declare-fun res!2673061 () Bool)

(assert (=> b!6508760 (=> res!2673061 e!3943561)))

(assert (=> b!6508760 (= res!2673061 (not (is-Concat!25235 r!7292)))))

(assert (=> b!6508760 (= e!3943564 e!3943561)))

(assert (= (and d!2041813 (not res!2673063)) b!6508756))

(assert (= (and b!6508756 c!1193777) b!6508758))

(assert (= (and b!6508756 (not c!1193777)) b!6508757))

(assert (= (and b!6508758 res!2673065) b!6508755))

(assert (= (and b!6508757 c!1193778) b!6508753))

(assert (= (and b!6508757 (not c!1193778)) b!6508760))

(assert (= (and b!6508753 res!2673062) b!6508759))

(assert (= (and b!6508760 (not res!2673061)) b!6508752))

(assert (= (and b!6508752 res!2673064) b!6508754))

(assert (= (or b!6508759 b!6508754) bm!564130))

(assert (= (or b!6508753 b!6508752) bm!564129))

(assert (= (or b!6508755 bm!564129) bm!564131))

(declare-fun m!7295334 () Bool)

(assert (=> bm!564130 m!7295334))

(declare-fun m!7295336 () Bool)

(assert (=> b!6508758 m!7295336))

(declare-fun m!7295338 () Bool)

(assert (=> bm!564131 m!7295338))

(assert (=> start!639460 d!2041813))

(declare-fun d!2041815 () Bool)

(declare-fun c!1193779 () Bool)

(assert (=> d!2041815 (= c!1193779 (isEmpty!37559 s!2326))))

(declare-fun e!3943568 () Bool)

(assert (=> d!2041815 (= (matchZipper!2402 z!1189 s!2326) e!3943568)))

(declare-fun b!6508761 () Bool)

(assert (=> b!6508761 (= e!3943568 (nullableZipper!2143 z!1189))))

(declare-fun b!6508762 () Bool)

(assert (=> b!6508762 (= e!3943568 (matchZipper!2402 (derivationStepZipper!2356 z!1189 (head!13247 s!2326)) (tail!12332 s!2326)))))

(assert (= (and d!2041815 c!1193779) b!6508761))

(assert (= (and d!2041815 (not c!1193779)) b!6508762))

(assert (=> d!2041815 m!7295096))

(declare-fun m!7295340 () Bool)

(assert (=> b!6508761 m!7295340))

(assert (=> b!6508762 m!7295100))

(assert (=> b!6508762 m!7295100))

(declare-fun m!7295342 () Bool)

(assert (=> b!6508762 m!7295342))

(assert (=> b!6508762 m!7295104))

(assert (=> b!6508762 m!7295342))

(assert (=> b!6508762 m!7295104))

(declare-fun m!7295344 () Bool)

(assert (=> b!6508762 m!7295344))

(assert (=> b!6508245 d!2041815))

(declare-fun bs!1652845 () Bool)

(declare-fun d!2041817 () Bool)

(assert (= bs!1652845 (and d!2041817 b!6508247)))

(declare-fun lambda!361055 () Int)

(assert (=> bs!1652845 (= lambda!361055 lambda!361005)))

(declare-fun bs!1652846 () Bool)

(assert (= bs!1652846 (and d!2041817 d!2041743)))

(assert (=> bs!1652846 (= lambda!361055 lambda!361033)))

(declare-fun bs!1652847 () Bool)

(assert (= bs!1652847 (and d!2041817 d!2041771)))

(assert (=> bs!1652847 (= lambda!361055 lambda!361042)))

(declare-fun bs!1652848 () Bool)

(assert (= bs!1652848 (and d!2041817 d!2041799)))

(assert (=> bs!1652848 (= lambda!361055 lambda!361054)))

(assert (=> d!2041817 (= (inv!84223 setElem!44398) (forall!15569 (exprs!6274 setElem!44398) lambda!361055))))

(declare-fun bs!1652849 () Bool)

(assert (= bs!1652849 d!2041817))

(declare-fun m!7295346 () Bool)

(assert (=> bs!1652849 m!7295346))

(assert (=> setNonEmpty!44398 d!2041817))

(declare-fun d!2041819 () Bool)

(assert (=> d!2041819 (= (flatMap!1895 lt!2393698 lambda!361003) (choose!48363 lt!2393698 lambda!361003))))

(declare-fun bs!1652850 () Bool)

(assert (= bs!1652850 d!2041819))

(declare-fun m!7295348 () Bool)

(assert (=> bs!1652850 m!7295348))

(assert (=> b!6508246 d!2041819))

(declare-fun b!6508763 () Bool)

(declare-fun e!3943570 () (Set Context!11548))

(assert (=> b!6508763 (= e!3943570 (as set.empty (Set Context!11548)))))

(declare-fun bm!564132 () Bool)

(declare-fun call!564137 () (Set Context!11548))

(assert (=> bm!564132 (= call!564137 (derivationStepZipperDown!1638 (h!71793 (exprs!6274 lt!2393685)) (Context!11549 (t!379105 (exprs!6274 lt!2393685))) (h!71795 s!2326)))))

(declare-fun b!6508764 () Bool)

(declare-fun e!3943569 () (Set Context!11548))

(assert (=> b!6508764 (= e!3943569 e!3943570)))

(declare-fun c!1193781 () Bool)

(assert (=> b!6508764 (= c!1193781 (is-Cons!65345 (exprs!6274 lt!2393685)))))

(declare-fun d!2041821 () Bool)

(declare-fun c!1193780 () Bool)

(declare-fun e!3943571 () Bool)

(assert (=> d!2041821 (= c!1193780 e!3943571)))

(declare-fun res!2673066 () Bool)

(assert (=> d!2041821 (=> (not res!2673066) (not e!3943571))))

(assert (=> d!2041821 (= res!2673066 (is-Cons!65345 (exprs!6274 lt!2393685)))))

(assert (=> d!2041821 (= (derivationStepZipperUp!1564 lt!2393685 (h!71795 s!2326)) e!3943569)))

(declare-fun b!6508765 () Bool)

(assert (=> b!6508765 (= e!3943569 (set.union call!564137 (derivationStepZipperUp!1564 (Context!11549 (t!379105 (exprs!6274 lt!2393685))) (h!71795 s!2326))))))

(declare-fun b!6508766 () Bool)

(assert (=> b!6508766 (= e!3943571 (nullable!6383 (h!71793 (exprs!6274 lt!2393685))))))

(declare-fun b!6508767 () Bool)

(assert (=> b!6508767 (= e!3943570 call!564137)))

(assert (= (and d!2041821 res!2673066) b!6508766))

(assert (= (and d!2041821 c!1193780) b!6508765))

(assert (= (and d!2041821 (not c!1193780)) b!6508764))

(assert (= (and b!6508764 c!1193781) b!6508767))

(assert (= (and b!6508764 (not c!1193781)) b!6508763))

(assert (= (or b!6508765 b!6508767) bm!564132))

(declare-fun m!7295350 () Bool)

(assert (=> bm!564132 m!7295350))

(declare-fun m!7295352 () Bool)

(assert (=> b!6508765 m!7295352))

(declare-fun m!7295354 () Bool)

(assert (=> b!6508766 m!7295354))

(assert (=> b!6508246 d!2041821))

(declare-fun d!2041823 () Bool)

(assert (=> d!2041823 (= (flatMap!1895 lt!2393698 lambda!361003) (dynLambda!25963 lambda!361003 lt!2393685))))

(declare-fun lt!2393876 () Unit!158895)

(assert (=> d!2041823 (= lt!2393876 (choose!48364 lt!2393698 lt!2393685 lambda!361003))))

(assert (=> d!2041823 (= lt!2393698 (set.insert lt!2393685 (as set.empty (Set Context!11548))))))

(assert (=> d!2041823 (= (lemmaFlatMapOnSingletonSet!1421 lt!2393698 lt!2393685 lambda!361003) lt!2393876)))

(declare-fun b_lambda!246405 () Bool)

(assert (=> (not b_lambda!246405) (not d!2041823)))

(declare-fun bs!1652851 () Bool)

(assert (= bs!1652851 d!2041823))

(assert (=> bs!1652851 m!7294910))

(declare-fun m!7295356 () Bool)

(assert (=> bs!1652851 m!7295356))

(declare-fun m!7295358 () Bool)

(assert (=> bs!1652851 m!7295358))

(assert (=> bs!1652851 m!7294904))

(assert (=> b!6508246 d!2041823))

(declare-fun bs!1652852 () Bool)

(declare-fun d!2041825 () Bool)

(assert (= bs!1652852 (and d!2041825 b!6508244)))

(declare-fun lambda!361058 () Int)

(assert (=> bs!1652852 (= lambda!361058 lambda!361003)))

(assert (=> d!2041825 true))

(assert (=> d!2041825 (= (derivationStepZipper!2356 lt!2393698 (h!71795 s!2326)) (flatMap!1895 lt!2393698 lambda!361058))))

(declare-fun bs!1652853 () Bool)

(assert (= bs!1652853 d!2041825))

(declare-fun m!7295360 () Bool)

(assert (=> bs!1652853 m!7295360))

(assert (=> b!6508246 d!2041825))

(declare-fun d!2041827 () Bool)

(declare-fun nullableFct!2317 (Regex!16390) Bool)

(assert (=> d!2041827 (= (nullable!6383 (h!71793 (exprs!6274 (h!71794 zl!343)))) (nullableFct!2317 (h!71793 (exprs!6274 (h!71794 zl!343)))))))

(declare-fun bs!1652854 () Bool)

(assert (= bs!1652854 d!2041827))

(declare-fun m!7295362 () Bool)

(assert (=> bs!1652854 m!7295362))

(assert (=> b!6508244 d!2041827))

(declare-fun b!6508770 () Bool)

(declare-fun e!3943573 () (Set Context!11548))

(assert (=> b!6508770 (= e!3943573 (as set.empty (Set Context!11548)))))

(declare-fun bm!564133 () Bool)

(declare-fun call!564138 () (Set Context!11548))

(assert (=> bm!564133 (= call!564138 (derivationStepZipperDown!1638 (h!71793 (exprs!6274 lt!2393691)) (Context!11549 (t!379105 (exprs!6274 lt!2393691))) (h!71795 s!2326)))))

(declare-fun b!6508771 () Bool)

(declare-fun e!3943572 () (Set Context!11548))

(assert (=> b!6508771 (= e!3943572 e!3943573)))

(declare-fun c!1193785 () Bool)

(assert (=> b!6508771 (= c!1193785 (is-Cons!65345 (exprs!6274 lt!2393691)))))

(declare-fun d!2041829 () Bool)

(declare-fun c!1193784 () Bool)

(declare-fun e!3943574 () Bool)

(assert (=> d!2041829 (= c!1193784 e!3943574)))

(declare-fun res!2673067 () Bool)

(assert (=> d!2041829 (=> (not res!2673067) (not e!3943574))))

(assert (=> d!2041829 (= res!2673067 (is-Cons!65345 (exprs!6274 lt!2393691)))))

(assert (=> d!2041829 (= (derivationStepZipperUp!1564 lt!2393691 (h!71795 s!2326)) e!3943572)))

(declare-fun b!6508772 () Bool)

(assert (=> b!6508772 (= e!3943572 (set.union call!564138 (derivationStepZipperUp!1564 (Context!11549 (t!379105 (exprs!6274 lt!2393691))) (h!71795 s!2326))))))

(declare-fun b!6508773 () Bool)

(assert (=> b!6508773 (= e!3943574 (nullable!6383 (h!71793 (exprs!6274 lt!2393691))))))

(declare-fun b!6508774 () Bool)

(assert (=> b!6508774 (= e!3943573 call!564138)))

(assert (= (and d!2041829 res!2673067) b!6508773))

(assert (= (and d!2041829 c!1193784) b!6508772))

(assert (= (and d!2041829 (not c!1193784)) b!6508771))

(assert (= (and b!6508771 c!1193785) b!6508774))

(assert (= (and b!6508771 (not c!1193785)) b!6508770))

(assert (= (or b!6508772 b!6508774) bm!564133))

(declare-fun m!7295364 () Bool)

(assert (=> bm!564133 m!7295364))

(declare-fun m!7295366 () Bool)

(assert (=> b!6508772 m!7295366))

(declare-fun m!7295368 () Bool)

(assert (=> b!6508773 m!7295368))

(assert (=> b!6508244 d!2041829))

(declare-fun b!6508775 () Bool)

(declare-fun e!3943576 () (Set Context!11548))

(assert (=> b!6508775 (= e!3943576 (as set.empty (Set Context!11548)))))

(declare-fun bm!564134 () Bool)

(declare-fun call!564139 () (Set Context!11548))

(assert (=> bm!564134 (= call!564139 (derivationStepZipperDown!1638 (h!71793 (exprs!6274 (h!71794 zl!343))) (Context!11549 (t!379105 (exprs!6274 (h!71794 zl!343)))) (h!71795 s!2326)))))

(declare-fun b!6508776 () Bool)

(declare-fun e!3943575 () (Set Context!11548))

(assert (=> b!6508776 (= e!3943575 e!3943576)))

(declare-fun c!1193787 () Bool)

(assert (=> b!6508776 (= c!1193787 (is-Cons!65345 (exprs!6274 (h!71794 zl!343))))))

(declare-fun d!2041831 () Bool)

(declare-fun c!1193786 () Bool)

(declare-fun e!3943577 () Bool)

(assert (=> d!2041831 (= c!1193786 e!3943577)))

(declare-fun res!2673068 () Bool)

(assert (=> d!2041831 (=> (not res!2673068) (not e!3943577))))

(assert (=> d!2041831 (= res!2673068 (is-Cons!65345 (exprs!6274 (h!71794 zl!343))))))

(assert (=> d!2041831 (= (derivationStepZipperUp!1564 (h!71794 zl!343) (h!71795 s!2326)) e!3943575)))

(declare-fun b!6508777 () Bool)

(assert (=> b!6508777 (= e!3943575 (set.union call!564139 (derivationStepZipperUp!1564 (Context!11549 (t!379105 (exprs!6274 (h!71794 zl!343)))) (h!71795 s!2326))))))

(declare-fun b!6508778 () Bool)

(assert (=> b!6508778 (= e!3943577 (nullable!6383 (h!71793 (exprs!6274 (h!71794 zl!343)))))))

(declare-fun b!6508779 () Bool)

(assert (=> b!6508779 (= e!3943576 call!564139)))

(assert (= (and d!2041831 res!2673068) b!6508778))

(assert (= (and d!2041831 c!1193786) b!6508777))

(assert (= (and d!2041831 (not c!1193786)) b!6508776))

(assert (= (and b!6508776 c!1193787) b!6508779))

(assert (= (and b!6508776 (not c!1193787)) b!6508775))

(assert (= (or b!6508777 b!6508779) bm!564134))

(declare-fun m!7295370 () Bool)

(assert (=> bm!564134 m!7295370))

(declare-fun m!7295372 () Bool)

(assert (=> b!6508777 m!7295372))

(assert (=> b!6508778 m!7294926))

(assert (=> b!6508244 d!2041831))

(declare-fun b!6508780 () Bool)

(declare-fun e!3943583 () (Set Context!11548))

(declare-fun e!3943580 () (Set Context!11548))

(assert (=> b!6508780 (= e!3943583 e!3943580)))

(declare-fun c!1193788 () Bool)

(assert (=> b!6508780 (= c!1193788 (is-Union!16390 (h!71793 (exprs!6274 (h!71794 zl!343)))))))

(declare-fun bm!564135 () Bool)

(declare-fun call!564145 () List!65469)

(declare-fun call!564142 () (Set Context!11548))

(assert (=> bm!564135 (= call!564142 (derivationStepZipperDown!1638 (ite c!1193788 (regOne!33293 (h!71793 (exprs!6274 (h!71794 zl!343)))) (regOne!33292 (h!71793 (exprs!6274 (h!71794 zl!343))))) (ite c!1193788 lt!2393691 (Context!11549 call!564145)) (h!71795 s!2326)))))

(declare-fun b!6508781 () Bool)

(declare-fun e!3943582 () (Set Context!11548))

(declare-fun e!3943581 () (Set Context!11548))

(assert (=> b!6508781 (= e!3943582 e!3943581)))

(declare-fun c!1193792 () Bool)

(assert (=> b!6508781 (= c!1193792 (is-Concat!25235 (h!71793 (exprs!6274 (h!71794 zl!343)))))))

(declare-fun b!6508783 () Bool)

(declare-fun c!1193791 () Bool)

(assert (=> b!6508783 (= c!1193791 (is-Star!16390 (h!71793 (exprs!6274 (h!71794 zl!343)))))))

(declare-fun e!3943578 () (Set Context!11548))

(assert (=> b!6508783 (= e!3943581 e!3943578)))

(declare-fun bm!564136 () Bool)

(declare-fun call!564144 () (Set Context!11548))

(declare-fun call!564140 () (Set Context!11548))

(assert (=> bm!564136 (= call!564144 call!564140)))

(declare-fun bm!564137 () Bool)

(declare-fun call!564143 () List!65469)

(assert (=> bm!564137 (= call!564143 call!564145)))

(declare-fun c!1193789 () Bool)

(declare-fun bm!564138 () Bool)

(assert (=> bm!564138 (= call!564140 (derivationStepZipperDown!1638 (ite c!1193788 (regTwo!33293 (h!71793 (exprs!6274 (h!71794 zl!343)))) (ite c!1193789 (regTwo!33292 (h!71793 (exprs!6274 (h!71794 zl!343)))) (ite c!1193792 (regOne!33292 (h!71793 (exprs!6274 (h!71794 zl!343)))) (reg!16719 (h!71793 (exprs!6274 (h!71794 zl!343))))))) (ite (or c!1193788 c!1193789) lt!2393691 (Context!11549 call!564143)) (h!71795 s!2326)))))

(declare-fun b!6508784 () Bool)

(assert (=> b!6508784 (= e!3943578 (as set.empty (Set Context!11548)))))

(declare-fun b!6508785 () Bool)

(assert (=> b!6508785 (= e!3943580 (set.union call!564142 call!564140))))

(declare-fun b!6508786 () Bool)

(declare-fun call!564141 () (Set Context!11548))

(assert (=> b!6508786 (= e!3943581 call!564141)))

(declare-fun bm!564139 () Bool)

(assert (=> bm!564139 (= call!564145 ($colon$colon!2239 (exprs!6274 lt!2393691) (ite (or c!1193789 c!1193792) (regTwo!33292 (h!71793 (exprs!6274 (h!71794 zl!343)))) (h!71793 (exprs!6274 (h!71794 zl!343))))))))

(declare-fun d!2041833 () Bool)

(declare-fun c!1193790 () Bool)

(assert (=> d!2041833 (= c!1193790 (and (is-ElementMatch!16390 (h!71793 (exprs!6274 (h!71794 zl!343)))) (= (c!1193670 (h!71793 (exprs!6274 (h!71794 zl!343)))) (h!71795 s!2326))))))

(assert (=> d!2041833 (= (derivationStepZipperDown!1638 (h!71793 (exprs!6274 (h!71794 zl!343))) lt!2393691 (h!71795 s!2326)) e!3943583)))

(declare-fun b!6508782 () Bool)

(declare-fun e!3943579 () Bool)

(assert (=> b!6508782 (= e!3943579 (nullable!6383 (regOne!33292 (h!71793 (exprs!6274 (h!71794 zl!343))))))))

(declare-fun b!6508787 () Bool)

(assert (=> b!6508787 (= e!3943578 call!564141)))

(declare-fun b!6508788 () Bool)

(assert (=> b!6508788 (= c!1193789 e!3943579)))

(declare-fun res!2673069 () Bool)

(assert (=> b!6508788 (=> (not res!2673069) (not e!3943579))))

(assert (=> b!6508788 (= res!2673069 (is-Concat!25235 (h!71793 (exprs!6274 (h!71794 zl!343)))))))

(assert (=> b!6508788 (= e!3943580 e!3943582)))

(declare-fun b!6508789 () Bool)

(assert (=> b!6508789 (= e!3943583 (set.insert lt!2393691 (as set.empty (Set Context!11548))))))

(declare-fun bm!564140 () Bool)

(assert (=> bm!564140 (= call!564141 call!564144)))

(declare-fun b!6508790 () Bool)

(assert (=> b!6508790 (= e!3943582 (set.union call!564142 call!564144))))

(assert (= (and d!2041833 c!1193790) b!6508789))

(assert (= (and d!2041833 (not c!1193790)) b!6508780))

(assert (= (and b!6508780 c!1193788) b!6508785))

(assert (= (and b!6508780 (not c!1193788)) b!6508788))

(assert (= (and b!6508788 res!2673069) b!6508782))

(assert (= (and b!6508788 c!1193789) b!6508790))

(assert (= (and b!6508788 (not c!1193789)) b!6508781))

(assert (= (and b!6508781 c!1193792) b!6508786))

(assert (= (and b!6508781 (not c!1193792)) b!6508783))

(assert (= (and b!6508783 c!1193791) b!6508787))

(assert (= (and b!6508783 (not c!1193791)) b!6508784))

(assert (= (or b!6508786 b!6508787) bm!564137))

(assert (= (or b!6508786 b!6508787) bm!564140))

(assert (= (or b!6508790 bm!564137) bm!564139))

(assert (= (or b!6508790 bm!564140) bm!564136))

(assert (= (or b!6508785 bm!564136) bm!564138))

(assert (= (or b!6508785 b!6508790) bm!564135))

(declare-fun m!7295374 () Bool)

(assert (=> bm!564135 m!7295374))

(declare-fun m!7295376 () Bool)

(assert (=> bm!564138 m!7295376))

(declare-fun m!7295378 () Bool)

(assert (=> b!6508782 m!7295378))

(declare-fun m!7295380 () Bool)

(assert (=> bm!564139 m!7295380))

(declare-fun m!7295382 () Bool)

(assert (=> b!6508789 m!7295382))

(assert (=> b!6508244 d!2041833))

(declare-fun d!2041835 () Bool)

(assert (=> d!2041835 (= (flatMap!1895 z!1189 lambda!361003) (choose!48363 z!1189 lambda!361003))))

(declare-fun bs!1652855 () Bool)

(assert (= bs!1652855 d!2041835))

(declare-fun m!7295384 () Bool)

(assert (=> bs!1652855 m!7295384))

(assert (=> b!6508244 d!2041835))

(declare-fun d!2041837 () Bool)

(assert (=> d!2041837 (= (flatMap!1895 z!1189 lambda!361003) (dynLambda!25963 lambda!361003 (h!71794 zl!343)))))

(declare-fun lt!2393877 () Unit!158895)

(assert (=> d!2041837 (= lt!2393877 (choose!48364 z!1189 (h!71794 zl!343) lambda!361003))))

(assert (=> d!2041837 (= z!1189 (set.insert (h!71794 zl!343) (as set.empty (Set Context!11548))))))

(assert (=> d!2041837 (= (lemmaFlatMapOnSingletonSet!1421 z!1189 (h!71794 zl!343) lambda!361003) lt!2393877)))

(declare-fun b_lambda!246407 () Bool)

(assert (=> (not b_lambda!246407) (not d!2041837)))

(declare-fun bs!1652856 () Bool)

(assert (= bs!1652856 d!2041837))

(assert (=> bs!1652856 m!7294920))

(declare-fun m!7295386 () Bool)

(assert (=> bs!1652856 m!7295386))

(declare-fun m!7295388 () Bool)

(assert (=> bs!1652856 m!7295388))

(declare-fun m!7295390 () Bool)

(assert (=> bs!1652856 m!7295390))

(assert (=> b!6508244 d!2041837))

(declare-fun b!6508791 () Bool)

(declare-fun e!3943585 () (Set Context!11548))

(assert (=> b!6508791 (= e!3943585 (as set.empty (Set Context!11548)))))

(declare-fun bm!564141 () Bool)

(declare-fun call!564146 () (Set Context!11548))

(assert (=> bm!564141 (= call!564146 (derivationStepZipperDown!1638 (h!71793 (exprs!6274 (Context!11549 (Cons!65345 (h!71793 (exprs!6274 (h!71794 zl!343))) (t!379105 (exprs!6274 (h!71794 zl!343))))))) (Context!11549 (t!379105 (exprs!6274 (Context!11549 (Cons!65345 (h!71793 (exprs!6274 (h!71794 zl!343))) (t!379105 (exprs!6274 (h!71794 zl!343)))))))) (h!71795 s!2326)))))

(declare-fun b!6508792 () Bool)

(declare-fun e!3943584 () (Set Context!11548))

(assert (=> b!6508792 (= e!3943584 e!3943585)))

(declare-fun c!1193794 () Bool)

(assert (=> b!6508792 (= c!1193794 (is-Cons!65345 (exprs!6274 (Context!11549 (Cons!65345 (h!71793 (exprs!6274 (h!71794 zl!343))) (t!379105 (exprs!6274 (h!71794 zl!343))))))))))

(declare-fun d!2041839 () Bool)

(declare-fun c!1193793 () Bool)

(declare-fun e!3943586 () Bool)

(assert (=> d!2041839 (= c!1193793 e!3943586)))

(declare-fun res!2673070 () Bool)

(assert (=> d!2041839 (=> (not res!2673070) (not e!3943586))))

(assert (=> d!2041839 (= res!2673070 (is-Cons!65345 (exprs!6274 (Context!11549 (Cons!65345 (h!71793 (exprs!6274 (h!71794 zl!343))) (t!379105 (exprs!6274 (h!71794 zl!343))))))))))

(assert (=> d!2041839 (= (derivationStepZipperUp!1564 (Context!11549 (Cons!65345 (h!71793 (exprs!6274 (h!71794 zl!343))) (t!379105 (exprs!6274 (h!71794 zl!343))))) (h!71795 s!2326)) e!3943584)))

(declare-fun b!6508793 () Bool)

(assert (=> b!6508793 (= e!3943584 (set.union call!564146 (derivationStepZipperUp!1564 (Context!11549 (t!379105 (exprs!6274 (Context!11549 (Cons!65345 (h!71793 (exprs!6274 (h!71794 zl!343))) (t!379105 (exprs!6274 (h!71794 zl!343)))))))) (h!71795 s!2326))))))

(declare-fun b!6508794 () Bool)

(assert (=> b!6508794 (= e!3943586 (nullable!6383 (h!71793 (exprs!6274 (Context!11549 (Cons!65345 (h!71793 (exprs!6274 (h!71794 zl!343))) (t!379105 (exprs!6274 (h!71794 zl!343)))))))))))

(declare-fun b!6508795 () Bool)

(assert (=> b!6508795 (= e!3943585 call!564146)))

(assert (= (and d!2041839 res!2673070) b!6508794))

(assert (= (and d!2041839 c!1193793) b!6508793))

(assert (= (and d!2041839 (not c!1193793)) b!6508792))

(assert (= (and b!6508792 c!1193794) b!6508795))

(assert (= (and b!6508792 (not c!1193794)) b!6508791))

(assert (= (or b!6508793 b!6508795) bm!564141))

(declare-fun m!7295392 () Bool)

(assert (=> bm!564141 m!7295392))

(declare-fun m!7295394 () Bool)

(assert (=> b!6508793 m!7295394))

(declare-fun m!7295396 () Bool)

(assert (=> b!6508794 m!7295396))

(assert (=> b!6508244 d!2041839))

(assert (=> b!6508266 d!2041737))

(declare-fun d!2041841 () Bool)

(declare-fun lt!2393878 () Regex!16390)

(assert (=> d!2041841 (validRegex!8126 lt!2393878)))

(assert (=> d!2041841 (= lt!2393878 (generalisedUnion!2234 (unfocusZipperList!1811 (Cons!65346 lt!2393685 Nil!65346))))))

(assert (=> d!2041841 (= (unfocusZipper!2132 (Cons!65346 lt!2393685 Nil!65346)) lt!2393878)))

(declare-fun bs!1652857 () Bool)

(assert (= bs!1652857 d!2041841))

(declare-fun m!7295398 () Bool)

(assert (=> bs!1652857 m!7295398))

(declare-fun m!7295400 () Bool)

(assert (=> bs!1652857 m!7295400))

(assert (=> bs!1652857 m!7295400))

(declare-fun m!7295402 () Bool)

(assert (=> bs!1652857 m!7295402))

(assert (=> b!6508268 d!2041841))

(declare-fun bs!1652858 () Bool)

(declare-fun d!2041843 () Bool)

(assert (= bs!1652858 (and d!2041843 b!6508247)))

(declare-fun lambda!361061 () Int)

(assert (=> bs!1652858 (= lambda!361061 lambda!361005)))

(declare-fun bs!1652859 () Bool)

(assert (= bs!1652859 (and d!2041843 d!2041743)))

(assert (=> bs!1652859 (= lambda!361061 lambda!361033)))

(declare-fun bs!1652860 () Bool)

(assert (= bs!1652860 (and d!2041843 d!2041799)))

(assert (=> bs!1652860 (= lambda!361061 lambda!361054)))

(declare-fun bs!1652861 () Bool)

(assert (= bs!1652861 (and d!2041843 d!2041817)))

(assert (=> bs!1652861 (= lambda!361061 lambda!361055)))

(declare-fun bs!1652862 () Bool)

(assert (= bs!1652862 (and d!2041843 d!2041771)))

(assert (=> bs!1652862 (= lambda!361061 lambda!361042)))

(declare-fun b!6508816 () Bool)

(declare-fun e!3943603 () Regex!16390)

(declare-fun e!3943601 () Regex!16390)

(assert (=> b!6508816 (= e!3943603 e!3943601)))

(declare-fun c!1193806 () Bool)

(assert (=> b!6508816 (= c!1193806 (is-Cons!65345 (unfocusZipperList!1811 zl!343)))))

(declare-fun b!6508817 () Bool)

(declare-fun e!3943604 () Bool)

(declare-fun lt!2393881 () Regex!16390)

(declare-fun isEmptyLang!1786 (Regex!16390) Bool)

(assert (=> b!6508817 (= e!3943604 (isEmptyLang!1786 lt!2393881))))

(declare-fun b!6508818 () Bool)

(declare-fun e!3943599 () Bool)

(assert (=> b!6508818 (= e!3943604 e!3943599)))

(declare-fun c!1193805 () Bool)

(assert (=> b!6508818 (= c!1193805 (isEmpty!37556 (tail!12333 (unfocusZipperList!1811 zl!343))))))

(declare-fun b!6508820 () Bool)

(declare-fun e!3943602 () Bool)

(assert (=> b!6508820 (= e!3943602 e!3943604)))

(declare-fun c!1193804 () Bool)

(assert (=> b!6508820 (= c!1193804 (isEmpty!37556 (unfocusZipperList!1811 zl!343)))))

(declare-fun b!6508821 () Bool)

(assert (=> b!6508821 (= e!3943601 (Union!16390 (h!71793 (unfocusZipperList!1811 zl!343)) (generalisedUnion!2234 (t!379105 (unfocusZipperList!1811 zl!343)))))))

(declare-fun b!6508822 () Bool)

(assert (=> b!6508822 (= e!3943603 (h!71793 (unfocusZipperList!1811 zl!343)))))

(declare-fun b!6508823 () Bool)

(assert (=> b!6508823 (= e!3943601 EmptyLang!16390)))

(assert (=> d!2041843 e!3943602))

(declare-fun res!2673075 () Bool)

(assert (=> d!2041843 (=> (not res!2673075) (not e!3943602))))

(assert (=> d!2041843 (= res!2673075 (validRegex!8126 lt!2393881))))

(assert (=> d!2041843 (= lt!2393881 e!3943603)))

(declare-fun c!1193803 () Bool)

(declare-fun e!3943600 () Bool)

(assert (=> d!2041843 (= c!1193803 e!3943600)))

(declare-fun res!2673076 () Bool)

(assert (=> d!2041843 (=> (not res!2673076) (not e!3943600))))

(assert (=> d!2041843 (= res!2673076 (is-Cons!65345 (unfocusZipperList!1811 zl!343)))))

(assert (=> d!2041843 (forall!15569 (unfocusZipperList!1811 zl!343) lambda!361061)))

(assert (=> d!2041843 (= (generalisedUnion!2234 (unfocusZipperList!1811 zl!343)) lt!2393881)))

(declare-fun b!6508819 () Bool)

(assert (=> b!6508819 (= e!3943600 (isEmpty!37556 (t!379105 (unfocusZipperList!1811 zl!343))))))

(declare-fun b!6508824 () Bool)

(declare-fun isUnion!1216 (Regex!16390) Bool)

(assert (=> b!6508824 (= e!3943599 (isUnion!1216 lt!2393881))))

(declare-fun b!6508825 () Bool)

(assert (=> b!6508825 (= e!3943599 (= lt!2393881 (head!13248 (unfocusZipperList!1811 zl!343))))))

(assert (= (and d!2041843 res!2673076) b!6508819))

(assert (= (and d!2041843 c!1193803) b!6508822))

(assert (= (and d!2041843 (not c!1193803)) b!6508816))

(assert (= (and b!6508816 c!1193806) b!6508821))

(assert (= (and b!6508816 (not c!1193806)) b!6508823))

(assert (= (and d!2041843 res!2673075) b!6508820))

(assert (= (and b!6508820 c!1193804) b!6508817))

(assert (= (and b!6508820 (not c!1193804)) b!6508818))

(assert (= (and b!6508818 c!1193805) b!6508825))

(assert (= (and b!6508818 (not c!1193805)) b!6508824))

(assert (=> b!6508820 m!7294842))

(declare-fun m!7295404 () Bool)

(assert (=> b!6508820 m!7295404))

(declare-fun m!7295406 () Bool)

(assert (=> b!6508824 m!7295406))

(declare-fun m!7295408 () Bool)

(assert (=> b!6508821 m!7295408))

(assert (=> b!6508825 m!7294842))

(declare-fun m!7295410 () Bool)

(assert (=> b!6508825 m!7295410))

(declare-fun m!7295412 () Bool)

(assert (=> d!2041843 m!7295412))

(assert (=> d!2041843 m!7294842))

(declare-fun m!7295414 () Bool)

(assert (=> d!2041843 m!7295414))

(declare-fun m!7295416 () Bool)

(assert (=> b!6508817 m!7295416))

(declare-fun m!7295418 () Bool)

(assert (=> b!6508819 m!7295418))

(assert (=> b!6508818 m!7294842))

(declare-fun m!7295420 () Bool)

(assert (=> b!6508818 m!7295420))

(assert (=> b!6508818 m!7295420))

(declare-fun m!7295422 () Bool)

(assert (=> b!6508818 m!7295422))

(assert (=> b!6508248 d!2041843))

(declare-fun bs!1652863 () Bool)

(declare-fun d!2041845 () Bool)

(assert (= bs!1652863 (and d!2041845 b!6508247)))

(declare-fun lambda!361064 () Int)

(assert (=> bs!1652863 (= lambda!361064 lambda!361005)))

(declare-fun bs!1652864 () Bool)

(assert (= bs!1652864 (and d!2041845 d!2041799)))

(assert (=> bs!1652864 (= lambda!361064 lambda!361054)))

(declare-fun bs!1652865 () Bool)

(assert (= bs!1652865 (and d!2041845 d!2041817)))

(assert (=> bs!1652865 (= lambda!361064 lambda!361055)))

(declare-fun bs!1652866 () Bool)

(assert (= bs!1652866 (and d!2041845 d!2041771)))

(assert (=> bs!1652866 (= lambda!361064 lambda!361042)))

(declare-fun bs!1652867 () Bool)

(assert (= bs!1652867 (and d!2041845 d!2041743)))

(assert (=> bs!1652867 (= lambda!361064 lambda!361033)))

(declare-fun bs!1652868 () Bool)

(assert (= bs!1652868 (and d!2041845 d!2041843)))

(assert (=> bs!1652868 (= lambda!361064 lambda!361061)))

(declare-fun lt!2393884 () List!65469)

(assert (=> d!2041845 (forall!15569 lt!2393884 lambda!361064)))

(declare-fun e!3943607 () List!65469)

(assert (=> d!2041845 (= lt!2393884 e!3943607)))

(declare-fun c!1193809 () Bool)

(assert (=> d!2041845 (= c!1193809 (is-Cons!65346 zl!343))))

(assert (=> d!2041845 (= (unfocusZipperList!1811 zl!343) lt!2393884)))

(declare-fun b!6508830 () Bool)

(assert (=> b!6508830 (= e!3943607 (Cons!65345 (generalisedConcat!1987 (exprs!6274 (h!71794 zl!343))) (unfocusZipperList!1811 (t!379106 zl!343))))))

(declare-fun b!6508831 () Bool)

(assert (=> b!6508831 (= e!3943607 Nil!65345)))

(assert (= (and d!2041845 c!1193809) b!6508830))

(assert (= (and d!2041845 (not c!1193809)) b!6508831))

(declare-fun m!7295424 () Bool)

(assert (=> d!2041845 m!7295424))

(assert (=> b!6508830 m!7294942))

(declare-fun m!7295426 () Bool)

(assert (=> b!6508830 m!7295426))

(assert (=> b!6508248 d!2041845))

(declare-fun d!2041847 () Bool)

(assert (=> d!2041847 (= (nullable!6383 (regOne!33292 (regOne!33292 r!7292))) (nullableFct!2317 (regOne!33292 (regOne!33292 r!7292))))))

(declare-fun bs!1652869 () Bool)

(assert (= bs!1652869 d!2041847))

(declare-fun m!7295428 () Bool)

(assert (=> bs!1652869 m!7295428))

(assert (=> b!6508269 d!2041847))

(declare-fun d!2041849 () Bool)

(declare-fun e!3943610 () Bool)

(assert (=> d!2041849 e!3943610))

(declare-fun res!2673079 () Bool)

(assert (=> d!2041849 (=> (not res!2673079) (not e!3943610))))

(declare-fun lt!2393887 () List!65470)

(declare-fun noDuplicate!2205 (List!65470) Bool)

(assert (=> d!2041849 (= res!2673079 (noDuplicate!2205 lt!2393887))))

(declare-fun choose!48370 ((Set Context!11548)) List!65470)

(assert (=> d!2041849 (= lt!2393887 (choose!48370 z!1189))))

(assert (=> d!2041849 (= (toList!10174 z!1189) lt!2393887)))

(declare-fun b!6508834 () Bool)

(declare-fun content!12481 (List!65470) (Set Context!11548))

(assert (=> b!6508834 (= e!3943610 (= (content!12481 lt!2393887) z!1189))))

(assert (= (and d!2041849 res!2673079) b!6508834))

(declare-fun m!7295430 () Bool)

(assert (=> d!2041849 m!7295430))

(declare-fun m!7295432 () Bool)

(assert (=> d!2041849 m!7295432))

(declare-fun m!7295434 () Bool)

(assert (=> b!6508834 m!7295434))

(assert (=> b!6508267 d!2041849))

(declare-fun bs!1652870 () Bool)

(declare-fun d!2041851 () Bool)

(assert (= bs!1652870 (and d!2041851 b!6508247)))

(declare-fun lambda!361069 () Int)

(assert (=> bs!1652870 (= (= (exprs!6274 lt!2393668) lt!2393661) (= lambda!361069 lambda!361004))))

(assert (=> d!2041851 true))

(assert (=> d!2041851 (= (appendTo!151 lt!2393675 lt!2393668) (map!14894 lt!2393675 lambda!361069))))

(declare-fun bs!1652871 () Bool)

(assert (= bs!1652871 d!2041851))

(declare-fun m!7295436 () Bool)

(assert (=> bs!1652871 m!7295436))

(assert (=> b!6508247 d!2041851))

(declare-fun d!2041853 () Bool)

(declare-fun dynLambda!25964 (Int Context!11548) Context!11548)

(assert (=> d!2041853 (= (map!14894 lt!2393675 lambda!361004) (set.insert (dynLambda!25964 lambda!361004 lt!2393695) (as set.empty (Set Context!11548))))))

(declare-fun lt!2393892 () Unit!158895)

(declare-fun choose!48371 ((Set Context!11548) Context!11548 Int) Unit!158895)

(assert (=> d!2041853 (= lt!2393892 (choose!48371 lt!2393675 lt!2393695 lambda!361004))))

(assert (=> d!2041853 (= lt!2393675 (set.insert lt!2393695 (as set.empty (Set Context!11548))))))

(assert (=> d!2041853 (= (lemmaMapOnSingletonSet!173 lt!2393675 lt!2393695 lambda!361004) lt!2393892)))

(declare-fun b_lambda!246409 () Bool)

(assert (=> (not b_lambda!246409) (not d!2041853)))

(declare-fun bs!1652872 () Bool)

(assert (= bs!1652872 d!2041853))

(assert (=> bs!1652872 m!7294884))

(declare-fun m!7295438 () Bool)

(assert (=> bs!1652872 m!7295438))

(declare-fun m!7295440 () Bool)

(assert (=> bs!1652872 m!7295440))

(declare-fun m!7295442 () Bool)

(assert (=> bs!1652872 m!7295442))

(assert (=> bs!1652872 m!7294834))

(assert (=> bs!1652872 m!7295440))

(assert (=> b!6508247 d!2041853))

(declare-fun d!2041855 () Bool)

(declare-fun choose!48372 ((Set Context!11548) Int) (Set Context!11548))

(assert (=> d!2041855 (= (map!14894 lt!2393675 lambda!361004) (choose!48372 lt!2393675 lambda!361004))))

(declare-fun bs!1652873 () Bool)

(assert (= bs!1652873 d!2041855))

(declare-fun m!7295444 () Bool)

(assert (=> bs!1652873 m!7295444))

(assert (=> b!6508247 d!2041855))

(declare-fun d!2041857 () Bool)

(assert (=> d!2041857 (forall!15569 (++!14482 (Cons!65345 (reg!16719 (regOne!33292 r!7292)) Nil!65345) lt!2393661) lambda!361005)))

(declare-fun lt!2393895 () Unit!158895)

(declare-fun choose!48373 (List!65469 List!65469 Int) Unit!158895)

(assert (=> d!2041857 (= lt!2393895 (choose!48373 (Cons!65345 (reg!16719 (regOne!33292 r!7292)) Nil!65345) lt!2393661 lambda!361005))))

(assert (=> d!2041857 (forall!15569 (Cons!65345 (reg!16719 (regOne!33292 r!7292)) Nil!65345) lambda!361005)))

(assert (=> d!2041857 (= (lemmaConcatPreservesForall!363 (Cons!65345 (reg!16719 (regOne!33292 r!7292)) Nil!65345) lt!2393661 lambda!361005) lt!2393895)))

(declare-fun bs!1652874 () Bool)

(assert (= bs!1652874 d!2041857))

(assert (=> bs!1652874 m!7294838))

(assert (=> bs!1652874 m!7294838))

(declare-fun m!7295446 () Bool)

(assert (=> bs!1652874 m!7295446))

(declare-fun m!7295448 () Bool)

(assert (=> bs!1652874 m!7295448))

(declare-fun m!7295450 () Bool)

(assert (=> bs!1652874 m!7295450))

(assert (=> b!6508247 d!2041857))

(declare-fun d!2041859 () Bool)

(declare-fun e!3943615 () Bool)

(assert (=> d!2041859 e!3943615))

(declare-fun res!2673085 () Bool)

(assert (=> d!2041859 (=> (not res!2673085) (not e!3943615))))

(declare-fun lt!2393898 () List!65469)

(declare-fun content!12482 (List!65469) (Set Regex!16390))

(assert (=> d!2041859 (= res!2673085 (= (content!12482 lt!2393898) (set.union (content!12482 (Cons!65345 (reg!16719 (regOne!33292 r!7292)) Nil!65345)) (content!12482 lt!2393661))))))

(declare-fun e!3943616 () List!65469)

(assert (=> d!2041859 (= lt!2393898 e!3943616)))

(declare-fun c!1193813 () Bool)

(assert (=> d!2041859 (= c!1193813 (is-Nil!65345 (Cons!65345 (reg!16719 (regOne!33292 r!7292)) Nil!65345)))))

(assert (=> d!2041859 (= (++!14482 (Cons!65345 (reg!16719 (regOne!33292 r!7292)) Nil!65345) lt!2393661) lt!2393898)))

(declare-fun b!6508846 () Bool)

(assert (=> b!6508846 (= e!3943616 (Cons!65345 (h!71793 (Cons!65345 (reg!16719 (regOne!33292 r!7292)) Nil!65345)) (++!14482 (t!379105 (Cons!65345 (reg!16719 (regOne!33292 r!7292)) Nil!65345)) lt!2393661)))))

(declare-fun b!6508847 () Bool)

(declare-fun res!2673084 () Bool)

(assert (=> b!6508847 (=> (not res!2673084) (not e!3943615))))

(declare-fun size!40450 (List!65469) Int)

(assert (=> b!6508847 (= res!2673084 (= (size!40450 lt!2393898) (+ (size!40450 (Cons!65345 (reg!16719 (regOne!33292 r!7292)) Nil!65345)) (size!40450 lt!2393661))))))

(declare-fun b!6508845 () Bool)

(assert (=> b!6508845 (= e!3943616 lt!2393661)))

(declare-fun b!6508848 () Bool)

(assert (=> b!6508848 (= e!3943615 (or (not (= lt!2393661 Nil!65345)) (= lt!2393898 (Cons!65345 (reg!16719 (regOne!33292 r!7292)) Nil!65345))))))

(assert (= (and d!2041859 c!1193813) b!6508845))

(assert (= (and d!2041859 (not c!1193813)) b!6508846))

(assert (= (and d!2041859 res!2673085) b!6508847))

(assert (= (and b!6508847 res!2673084) b!6508848))

(declare-fun m!7295452 () Bool)

(assert (=> d!2041859 m!7295452))

(declare-fun m!7295454 () Bool)

(assert (=> d!2041859 m!7295454))

(declare-fun m!7295456 () Bool)

(assert (=> d!2041859 m!7295456))

(declare-fun m!7295458 () Bool)

(assert (=> b!6508846 m!7295458))

(declare-fun m!7295460 () Bool)

(assert (=> b!6508847 m!7295460))

(declare-fun m!7295462 () Bool)

(assert (=> b!6508847 m!7295462))

(declare-fun m!7295464 () Bool)

(assert (=> b!6508847 m!7295464))

(assert (=> b!6508247 d!2041859))

(declare-fun e!3943619 () Bool)

(assert (=> b!6508281 (= tp!1799717 e!3943619)))

(declare-fun b!6508860 () Bool)

(declare-fun tp!1799764 () Bool)

(declare-fun tp!1799765 () Bool)

(assert (=> b!6508860 (= e!3943619 (and tp!1799764 tp!1799765))))

(declare-fun b!6508862 () Bool)

(declare-fun tp!1799761 () Bool)

(declare-fun tp!1799763 () Bool)

(assert (=> b!6508862 (= e!3943619 (and tp!1799761 tp!1799763))))

(declare-fun b!6508861 () Bool)

(declare-fun tp!1799762 () Bool)

(assert (=> b!6508861 (= e!3943619 tp!1799762)))

(declare-fun b!6508859 () Bool)

(assert (=> b!6508859 (= e!3943619 tp_is_empty!42033)))

(assert (= (and b!6508281 (is-ElementMatch!16390 (regOne!33292 r!7292))) b!6508859))

(assert (= (and b!6508281 (is-Concat!25235 (regOne!33292 r!7292))) b!6508860))

(assert (= (and b!6508281 (is-Star!16390 (regOne!33292 r!7292))) b!6508861))

(assert (= (and b!6508281 (is-Union!16390 (regOne!33292 r!7292))) b!6508862))

(declare-fun e!3943620 () Bool)

(assert (=> b!6508281 (= tp!1799711 e!3943620)))

(declare-fun b!6508864 () Bool)

(declare-fun tp!1799769 () Bool)

(declare-fun tp!1799770 () Bool)

(assert (=> b!6508864 (= e!3943620 (and tp!1799769 tp!1799770))))

(declare-fun b!6508866 () Bool)

(declare-fun tp!1799766 () Bool)

(declare-fun tp!1799768 () Bool)

(assert (=> b!6508866 (= e!3943620 (and tp!1799766 tp!1799768))))

(declare-fun b!6508865 () Bool)

(declare-fun tp!1799767 () Bool)

(assert (=> b!6508865 (= e!3943620 tp!1799767)))

(declare-fun b!6508863 () Bool)

(assert (=> b!6508863 (= e!3943620 tp_is_empty!42033)))

(assert (= (and b!6508281 (is-ElementMatch!16390 (regTwo!33292 r!7292))) b!6508863))

(assert (= (and b!6508281 (is-Concat!25235 (regTwo!33292 r!7292))) b!6508864))

(assert (= (and b!6508281 (is-Star!16390 (regTwo!33292 r!7292))) b!6508865))

(assert (= (and b!6508281 (is-Union!16390 (regTwo!33292 r!7292))) b!6508866))

(declare-fun condSetEmpty!44404 () Bool)

(assert (=> setNonEmpty!44398 (= condSetEmpty!44404 (= setRest!44398 (as set.empty (Set Context!11548))))))

(declare-fun setRes!44404 () Bool)

(assert (=> setNonEmpty!44398 (= tp!1799715 setRes!44404)))

(declare-fun setIsEmpty!44404 () Bool)

(assert (=> setIsEmpty!44404 setRes!44404))

(declare-fun setElem!44404 () Context!11548)

(declare-fun e!3943623 () Bool)

(declare-fun tp!1799776 () Bool)

(declare-fun setNonEmpty!44404 () Bool)

(assert (=> setNonEmpty!44404 (= setRes!44404 (and tp!1799776 (inv!84223 setElem!44404) e!3943623))))

(declare-fun setRest!44404 () (Set Context!11548))

(assert (=> setNonEmpty!44404 (= setRest!44398 (set.union (set.insert setElem!44404 (as set.empty (Set Context!11548))) setRest!44404))))

(declare-fun b!6508871 () Bool)

(declare-fun tp!1799775 () Bool)

(assert (=> b!6508871 (= e!3943623 tp!1799775)))

(assert (= (and setNonEmpty!44398 condSetEmpty!44404) setIsEmpty!44404))

(assert (= (and setNonEmpty!44398 (not condSetEmpty!44404)) setNonEmpty!44404))

(assert (= setNonEmpty!44404 b!6508871))

(declare-fun m!7295466 () Bool)

(assert (=> setNonEmpty!44404 m!7295466))

(declare-fun b!6508876 () Bool)

(declare-fun e!3943626 () Bool)

(declare-fun tp!1799779 () Bool)

(assert (=> b!6508876 (= e!3943626 (and tp_is_empty!42033 tp!1799779))))

(assert (=> b!6508276 (= tp!1799714 e!3943626)))

(assert (= (and b!6508276 (is-Cons!65347 (t!379107 s!2326))) b!6508876))

(declare-fun e!3943627 () Bool)

(assert (=> b!6508262 (= tp!1799716 e!3943627)))

(declare-fun b!6508878 () Bool)

(declare-fun tp!1799783 () Bool)

(declare-fun tp!1799784 () Bool)

(assert (=> b!6508878 (= e!3943627 (and tp!1799783 tp!1799784))))

(declare-fun b!6508880 () Bool)

(declare-fun tp!1799780 () Bool)

(declare-fun tp!1799782 () Bool)

(assert (=> b!6508880 (= e!3943627 (and tp!1799780 tp!1799782))))

(declare-fun b!6508879 () Bool)

(declare-fun tp!1799781 () Bool)

(assert (=> b!6508879 (= e!3943627 tp!1799781)))

(declare-fun b!6508877 () Bool)

(assert (=> b!6508877 (= e!3943627 tp_is_empty!42033)))

(assert (= (and b!6508262 (is-ElementMatch!16390 (regOne!33293 r!7292))) b!6508877))

(assert (= (and b!6508262 (is-Concat!25235 (regOne!33293 r!7292))) b!6508878))

(assert (= (and b!6508262 (is-Star!16390 (regOne!33293 r!7292))) b!6508879))

(assert (= (and b!6508262 (is-Union!16390 (regOne!33293 r!7292))) b!6508880))

(declare-fun e!3943628 () Bool)

(assert (=> b!6508262 (= tp!1799712 e!3943628)))

(declare-fun b!6508882 () Bool)

(declare-fun tp!1799788 () Bool)

(declare-fun tp!1799789 () Bool)

(assert (=> b!6508882 (= e!3943628 (and tp!1799788 tp!1799789))))

(declare-fun b!6508884 () Bool)

(declare-fun tp!1799785 () Bool)

(declare-fun tp!1799787 () Bool)

(assert (=> b!6508884 (= e!3943628 (and tp!1799785 tp!1799787))))

(declare-fun b!6508883 () Bool)

(declare-fun tp!1799786 () Bool)

(assert (=> b!6508883 (= e!3943628 tp!1799786)))

(declare-fun b!6508881 () Bool)

(assert (=> b!6508881 (= e!3943628 tp_is_empty!42033)))

(assert (= (and b!6508262 (is-ElementMatch!16390 (regTwo!33293 r!7292))) b!6508881))

(assert (= (and b!6508262 (is-Concat!25235 (regTwo!33293 r!7292))) b!6508882))

(assert (= (and b!6508262 (is-Star!16390 (regTwo!33293 r!7292))) b!6508883))

(assert (= (and b!6508262 (is-Union!16390 (regTwo!33293 r!7292))) b!6508884))

(declare-fun e!3943629 () Bool)

(assert (=> b!6508253 (= tp!1799720 e!3943629)))

(declare-fun b!6508886 () Bool)

(declare-fun tp!1799793 () Bool)

(declare-fun tp!1799794 () Bool)

(assert (=> b!6508886 (= e!3943629 (and tp!1799793 tp!1799794))))

(declare-fun b!6508888 () Bool)

(declare-fun tp!1799790 () Bool)

(declare-fun tp!1799792 () Bool)

(assert (=> b!6508888 (= e!3943629 (and tp!1799790 tp!1799792))))

(declare-fun b!6508887 () Bool)

(declare-fun tp!1799791 () Bool)

(assert (=> b!6508887 (= e!3943629 tp!1799791)))

(declare-fun b!6508885 () Bool)

(assert (=> b!6508885 (= e!3943629 tp_is_empty!42033)))

(assert (= (and b!6508253 (is-ElementMatch!16390 (reg!16719 r!7292))) b!6508885))

(assert (= (and b!6508253 (is-Concat!25235 (reg!16719 r!7292))) b!6508886))

(assert (= (and b!6508253 (is-Star!16390 (reg!16719 r!7292))) b!6508887))

(assert (= (and b!6508253 (is-Union!16390 (reg!16719 r!7292))) b!6508888))

(declare-fun b!6508896 () Bool)

(declare-fun e!3943635 () Bool)

(declare-fun tp!1799799 () Bool)

(assert (=> b!6508896 (= e!3943635 tp!1799799)))

(declare-fun b!6508895 () Bool)

(declare-fun e!3943634 () Bool)

(declare-fun tp!1799800 () Bool)

(assert (=> b!6508895 (= e!3943634 (and (inv!84223 (h!71794 (t!379106 zl!343))) e!3943635 tp!1799800))))

(assert (=> b!6508254 (= tp!1799718 e!3943634)))

(assert (= b!6508895 b!6508896))

(assert (= (and b!6508254 (is-Cons!65346 (t!379106 zl!343))) b!6508895))

(declare-fun m!7295468 () Bool)

(assert (=> b!6508895 m!7295468))

(declare-fun b!6508901 () Bool)

(declare-fun e!3943638 () Bool)

(declare-fun tp!1799805 () Bool)

(declare-fun tp!1799806 () Bool)

(assert (=> b!6508901 (= e!3943638 (and tp!1799805 tp!1799806))))

(assert (=> b!6508258 (= tp!1799719 e!3943638)))

(assert (= (and b!6508258 (is-Cons!65345 (exprs!6274 setElem!44398))) b!6508901))

(declare-fun b!6508902 () Bool)

(declare-fun e!3943639 () Bool)

(declare-fun tp!1799807 () Bool)

(declare-fun tp!1799808 () Bool)

(assert (=> b!6508902 (= e!3943639 (and tp!1799807 tp!1799808))))

(assert (=> b!6508242 (= tp!1799713 e!3943639)))

(assert (= (and b!6508242 (is-Cons!65345 (exprs!6274 (h!71794 zl!343)))) b!6508902))

(declare-fun b_lambda!246411 () Bool)

(assert (= b_lambda!246405 (or b!6508244 b_lambda!246411)))

(declare-fun bs!1652875 () Bool)

(declare-fun d!2041861 () Bool)

(assert (= bs!1652875 (and d!2041861 b!6508244)))

(assert (=> bs!1652875 (= (dynLambda!25963 lambda!361003 lt!2393685) (derivationStepZipperUp!1564 lt!2393685 (h!71795 s!2326)))))

(assert (=> bs!1652875 m!7294912))

(assert (=> d!2041823 d!2041861))

(declare-fun b_lambda!246413 () Bool)

(assert (= b_lambda!246403 (or b!6508244 b_lambda!246413)))

(declare-fun bs!1652876 () Bool)

(declare-fun d!2041863 () Bool)

(assert (= bs!1652876 (and d!2041863 b!6508244)))

(assert (=> bs!1652876 (= (dynLambda!25963 lambda!361003 lt!2393668) (derivationStepZipperUp!1564 lt!2393668 (h!71795 s!2326)))))

(assert (=> bs!1652876 m!7294886))

(assert (=> d!2041767 d!2041863))

(declare-fun b_lambda!246415 () Bool)

(assert (= b_lambda!246409 (or b!6508247 b_lambda!246415)))

(declare-fun bs!1652877 () Bool)

(declare-fun d!2041865 () Bool)

(assert (= bs!1652877 (and d!2041865 b!6508247)))

(declare-fun lt!2393899 () Unit!158895)

(assert (=> bs!1652877 (= lt!2393899 (lemmaConcatPreservesForall!363 (exprs!6274 lt!2393695) lt!2393661 lambda!361005))))

(assert (=> bs!1652877 (= (dynLambda!25964 lambda!361004 lt!2393695) (Context!11549 (++!14482 (exprs!6274 lt!2393695) lt!2393661)))))

(declare-fun m!7295470 () Bool)

(assert (=> bs!1652877 m!7295470))

(declare-fun m!7295472 () Bool)

(assert (=> bs!1652877 m!7295472))

(assert (=> d!2041853 d!2041865))

(declare-fun b_lambda!246417 () Bool)

(assert (= b_lambda!246401 (or b!6508244 b_lambda!246417)))

(declare-fun bs!1652878 () Bool)

(declare-fun d!2041867 () Bool)

(assert (= bs!1652878 (and d!2041867 b!6508244)))

(assert (=> bs!1652878 (= (dynLambda!25963 lambda!361003 lt!2393695) (derivationStepZipperUp!1564 lt!2393695 (h!71795 s!2326)))))

(assert (=> bs!1652878 m!7294890))

(assert (=> d!2041765 d!2041867))

(declare-fun b_lambda!246419 () Bool)

(assert (= b_lambda!246407 (or b!6508244 b_lambda!246419)))

(declare-fun bs!1652879 () Bool)

(declare-fun d!2041869 () Bool)

(assert (= bs!1652879 (and d!2041869 b!6508244)))

(assert (=> bs!1652879 (= (dynLambda!25963 lambda!361003 (h!71794 zl!343)) (derivationStepZipperUp!1564 (h!71794 zl!343) (h!71795 s!2326)))))

(assert (=> bs!1652879 m!7294922))

(assert (=> d!2041837 d!2041869))

(push 1)

(assert (not d!2041769))

(assert (not d!2041847))

(assert (not d!2041755))

(assert (not b!6508819))

(assert (not b!6508880))

(assert (not d!2041815))

(assert (not b!6508794))

(assert (not b!6508824))

(assert (not bs!1652877))

(assert (not d!2041765))

(assert (not bm!564141))

(assert (not b!6508667))

(assert (not b!6508539))

(assert (not b!6508646))

(assert (not bm!564091))

(assert (not b!6508820))

(assert (not bm!564122))

(assert (not d!2041817))

(assert (not b!6508901))

(assert (not d!2041855))

(assert (not d!2041797))

(assert (not b!6508668))

(assert (not b!6508825))

(assert (not d!2041811))

(assert (not d!2041771))

(assert (not b!6508452))

(assert (not bs!1652876))

(assert (not d!2041841))

(assert (not bm!564113))

(assert (not b!6508865))

(assert (not b!6508688))

(assert (not b_lambda!246419))

(assert (not b!6508765))

(assert (not d!2041787))

(assert (not b!6508777))

(assert (not b!6508587))

(assert (not b!6508623))

(assert (not d!2041777))

(assert (not b!6508691))

(assert (not d!2041853))

(assert (not b!6508895))

(assert (not b!6508773))

(assert (not d!2041791))

(assert (not d!2041825))

(assert (not b!6508886))

(assert (not b!6508772))

(assert (not b!6508681))

(assert (not b!6508888))

(assert (not bm!564135))

(assert (not b!6508718))

(assert (not b!6508879))

(assert (not b!6508669))

(assert (not b!6508866))

(assert (not bm!564132))

(assert (not d!2041823))

(assert (not bm!564131))

(assert (not d!2041759))

(assert (not b!6508618))

(assert (not b!6508484))

(assert (not b!6508531))

(assert (not bm!564133))

(assert (not d!2041737))

(assert (not b!6508766))

(assert (not bm!564121))

(assert (not b!6508717))

(assert (not d!2041801))

(assert (not b!6508448))

(assert (not bm!564139))

(assert (not b_lambda!246415))

(assert (not d!2041843))

(assert (not b!6508876))

(assert (not b!6508621))

(assert (not bm!564138))

(assert (not d!2041845))

(assert (not b!6508455))

(assert (not d!2041743))

(assert (not b!6508690))

(assert (not b!6508450))

(assert (not b!6508762))

(assert (not b!6508778))

(assert (not b!6508494))

(assert (not b!6508847))

(assert (not d!2041837))

(assert (not bs!1652879))

(assert (not b_lambda!246417))

(assert (not b!6508884))

(assert (not d!2041857))

(assert (not b!6508860))

(assert (not b!6508731))

(assert (not b!6508454))

(assert (not b!6508761))

(assert (not b!6508449))

(assert (not b!6508732))

(assert (not b!6508902))

(assert (not bm!564130))

(assert (not b!6508684))

(assert (not d!2041751))

(assert (not bs!1652875))

(assert (not b!6508720))

(assert (not b!6508620))

(assert (not b!6508446))

(assert (not d!2041789))

(assert (not bs!1652878))

(assert (not b!6508864))

(assert (not d!2041733))

(assert (not d!2041849))

(assert (not b!6508782))

(assert (not b!6508830))

(assert (not b!6508486))

(assert tp_is_empty!42033)

(assert (not d!2041805))

(assert (not setNonEmpty!44404))

(assert (not d!2041747))

(assert (not d!2041781))

(assert (not b!6508817))

(assert (not b!6508586))

(assert (not b!6508887))

(assert (not b!6508491))

(assert (not b!6508671))

(assert (not b!6508648))

(assert (not b!6508721))

(assert (not d!2041745))

(assert (not bm!564114))

(assert (not b!6508649))

(assert (not bm!564120))

(assert (not b!6508821))

(assert (not b!6508451))

(assert (not d!2041835))

(assert (not b!6508862))

(assert (not d!2041783))

(assert (not b!6508834))

(assert (not b!6508447))

(assert (not b!6508493))

(assert (not b!6508617))

(assert (not d!2041827))

(assert (not b!6508793))

(assert (not b!6508592))

(assert (not b!6508453))

(assert (not b!6508846))

(assert (not d!2041799))

(assert (not d!2041819))

(assert (not b!6508651))

(assert (not b!6508594))

(assert (not b!6508713))

(assert (not bm!564118))

(assert (not d!2041809))

(assert (not b!6508487))

(assert (not b!6508565))

(assert (not b!6508595))

(assert (not d!2041775))

(assert (not b!6508758))

(assert (not b!6508719))

(assert (not d!2041785))

(assert (not b!6508624))

(assert (not d!2041851))

(assert (not d!2041763))

(assert (not b!6508878))

(assert (not b!6508647))

(assert (not b!6508883))

(assert (not b!6508679))

(assert (not b_lambda!246413))

(assert (not b!6508896))

(assert (not b!6508683))

(assert (not b_lambda!246411))

(assert (not bm!564134))

(assert (not d!2041803))

(assert (not bm!564110))

(assert (not b!6508652))

(assert (not d!2041767))

(assert (not b!6508591))

(assert (not b!6508861))

(assert (not d!2041779))

(assert (not d!2041735))

(assert (not b!6508818))

(assert (not bm!564097))

(assert (not d!2041739))

(assert (not d!2041859))

(assert (not bm!564096))

(assert (not d!2041795))

(assert (not bm!564119))

(assert (not b!6508871))

(assert (not b!6508622))

(assert (not b!6508882))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

