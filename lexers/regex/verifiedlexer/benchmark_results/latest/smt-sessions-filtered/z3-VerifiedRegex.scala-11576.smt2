; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!640186 () Bool)

(assert start!640186)

(declare-fun b!6519074 () Bool)

(assert (=> b!6519074 true))

(assert (=> b!6519074 true))

(declare-fun lambda!361801 () Int)

(declare-fun lambda!361800 () Int)

(assert (=> b!6519074 (not (= lambda!361801 lambda!361800))))

(assert (=> b!6519074 true))

(assert (=> b!6519074 true))

(declare-fun b!6519105 () Bool)

(assert (=> b!6519105 true))

(declare-fun b!6519077 () Bool)

(assert (=> b!6519077 true))

(declare-fun b!6519070 () Bool)

(declare-fun e!3949196 () Bool)

(declare-fun e!3949201 () Bool)

(assert (=> b!6519070 (= e!3949196 e!3949201)))

(declare-fun res!2676625 () Bool)

(assert (=> b!6519070 (=> res!2676625 e!3949201)))

(declare-datatypes ((C!33068 0))(
  ( (C!33069 (val!26236 Int)) )
))
(declare-datatypes ((Regex!16399 0))(
  ( (ElementMatch!16399 (c!1196239 C!33068)) (Concat!25244 (regOne!33310 Regex!16399) (regTwo!33310 Regex!16399)) (EmptyExpr!16399) (Star!16399 (reg!16728 Regex!16399)) (EmptyLang!16399) (Union!16399 (regOne!33311 Regex!16399) (regTwo!33311 Regex!16399)) )
))
(declare-fun lt!2395842 () Regex!16399)

(declare-fun r!7292 () Regex!16399)

(assert (=> b!6519070 (= res!2676625 (not (= lt!2395842 (reg!16728 (regOne!33310 r!7292)))))))

(declare-datatypes ((List!65496 0))(
  ( (Nil!65372) (Cons!65372 (h!71820 Regex!16399) (t!379134 List!65496)) )
))
(declare-datatypes ((Context!11566 0))(
  ( (Context!11567 (exprs!6283 List!65496)) )
))
(declare-datatypes ((List!65497 0))(
  ( (Nil!65373) (Cons!65373 (h!71821 Context!11566) (t!379135 List!65497)) )
))
(declare-fun lt!2395832 () List!65497)

(declare-fun unfocusZipper!2141 (List!65497) Regex!16399)

(assert (=> b!6519070 (= lt!2395842 (unfocusZipper!2141 lt!2395832))))

(declare-fun lt!2395828 () Context!11566)

(assert (=> b!6519070 (= lt!2395832 (Cons!65373 lt!2395828 Nil!65373))))

(declare-fun lambda!361802 () Int)

(declare-datatypes ((List!65498 0))(
  ( (Nil!65374) (Cons!65374 (h!71822 C!33068) (t!379136 List!65498)) )
))
(declare-fun s!2326 () List!65498)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2395826 () (InoxSet Context!11566))

(declare-fun lt!2395839 () Context!11566)

(declare-fun flatMap!1904 ((InoxSet Context!11566) Int) (InoxSet Context!11566))

(declare-fun derivationStepZipperUp!1573 (Context!11566 C!33068) (InoxSet Context!11566))

(assert (=> b!6519070 (= (flatMap!1904 lt!2395826 lambda!361802) (derivationStepZipperUp!1573 lt!2395839 (h!71822 s!2326)))))

(declare-datatypes ((Unit!158931 0))(
  ( (Unit!158932) )
))
(declare-fun lt!2395847 () Unit!158931)

(declare-fun lemmaFlatMapOnSingletonSet!1430 ((InoxSet Context!11566) Context!11566 Int) Unit!158931)

(assert (=> b!6519070 (= lt!2395847 (lemmaFlatMapOnSingletonSet!1430 lt!2395826 lt!2395839 lambda!361802))))

(declare-fun lt!2395833 () (InoxSet Context!11566))

(assert (=> b!6519070 (= (flatMap!1904 lt!2395833 lambda!361802) (derivationStepZipperUp!1573 lt!2395828 (h!71822 s!2326)))))

(declare-fun lt!2395857 () Unit!158931)

(assert (=> b!6519070 (= lt!2395857 (lemmaFlatMapOnSingletonSet!1430 lt!2395833 lt!2395828 lambda!361802))))

(declare-fun lt!2395827 () (InoxSet Context!11566))

(assert (=> b!6519070 (= lt!2395827 (derivationStepZipperUp!1573 lt!2395839 (h!71822 s!2326)))))

(declare-fun lt!2395856 () (InoxSet Context!11566))

(assert (=> b!6519070 (= lt!2395856 (derivationStepZipperUp!1573 lt!2395828 (h!71822 s!2326)))))

(assert (=> b!6519070 (= lt!2395826 (store ((as const (Array Context!11566 Bool)) false) lt!2395839 true))))

(assert (=> b!6519070 (= lt!2395833 (store ((as const (Array Context!11566 Bool)) false) lt!2395828 true))))

(declare-fun lt!2395859 () List!65496)

(assert (=> b!6519070 (= lt!2395828 (Context!11567 lt!2395859))))

(assert (=> b!6519070 (= lt!2395859 (Cons!65372 (reg!16728 (regOne!33310 r!7292)) Nil!65372))))

(declare-fun b!6519071 () Bool)

(declare-fun e!3949203 () Bool)

(declare-fun e!3949206 () Bool)

(assert (=> b!6519071 (= e!3949203 (not e!3949206))))

(declare-fun res!2676640 () Bool)

(assert (=> b!6519071 (=> res!2676640 e!3949206)))

(declare-fun zl!343 () List!65497)

(get-info :version)

(assert (=> b!6519071 (= res!2676640 (not ((_ is Cons!65373) zl!343)))))

(declare-fun lt!2395866 () Bool)

(declare-fun matchRSpec!3500 (Regex!16399 List!65498) Bool)

(assert (=> b!6519071 (= lt!2395866 (matchRSpec!3500 r!7292 s!2326))))

(declare-fun matchR!8582 (Regex!16399 List!65498) Bool)

(assert (=> b!6519071 (= lt!2395866 (matchR!8582 r!7292 s!2326))))

(declare-fun lt!2395851 () Unit!158931)

(declare-fun mainMatchTheorem!3500 (Regex!16399 List!65498) Unit!158931)

(assert (=> b!6519071 (= lt!2395851 (mainMatchTheorem!3500 r!7292 s!2326))))

(declare-fun b!6519072 () Bool)

(declare-fun res!2676630 () Bool)

(assert (=> b!6519072 (=> res!2676630 e!3949206)))

(declare-fun generalisedUnion!2243 (List!65496) Regex!16399)

(declare-fun unfocusZipperList!1820 (List!65497) List!65496)

(assert (=> b!6519072 (= res!2676630 (not (= r!7292 (generalisedUnion!2243 (unfocusZipperList!1820 zl!343)))))))

(declare-fun b!6519073 () Bool)

(declare-fun e!3949214 () Bool)

(declare-fun e!3949215 () Bool)

(assert (=> b!6519073 (= e!3949214 e!3949215)))

(declare-fun res!2676654 () Bool)

(assert (=> b!6519073 (=> res!2676654 e!3949215)))

(declare-fun lt!2395835 () Regex!16399)

(assert (=> b!6519073 (= res!2676654 (not (= r!7292 lt!2395835)))))

(declare-fun lt!2395844 () Regex!16399)

(assert (=> b!6519073 (= lt!2395835 (Concat!25244 lt!2395844 (regTwo!33310 r!7292)))))

(declare-fun e!3949217 () Bool)

(assert (=> b!6519074 (= e!3949206 e!3949217)))

(declare-fun res!2676641 () Bool)

(assert (=> b!6519074 (=> res!2676641 e!3949217)))

(declare-fun lt!2395831 () Bool)

(assert (=> b!6519074 (= res!2676641 (or (not (= lt!2395866 lt!2395831)) ((_ is Nil!65374) s!2326)))))

(declare-fun Exists!3469 (Int) Bool)

(assert (=> b!6519074 (= (Exists!3469 lambda!361800) (Exists!3469 lambda!361801))))

(declare-fun lt!2395864 () Unit!158931)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2006 (Regex!16399 Regex!16399 List!65498) Unit!158931)

(assert (=> b!6519074 (= lt!2395864 (lemmaExistCutMatchRandMatchRSpecEquivalent!2006 (regOne!33310 r!7292) (regTwo!33310 r!7292) s!2326))))

(assert (=> b!6519074 (= lt!2395831 (Exists!3469 lambda!361800))))

(declare-datatypes ((tuple2!66756 0))(
  ( (tuple2!66757 (_1!36681 List!65498) (_2!36681 List!65498)) )
))
(declare-datatypes ((Option!16290 0))(
  ( (None!16289) (Some!16289 (v!52470 tuple2!66756)) )
))
(declare-fun isDefined!12993 (Option!16290) Bool)

(declare-fun findConcatSeparation!2704 (Regex!16399 Regex!16399 List!65498 List!65498 List!65498) Option!16290)

(assert (=> b!6519074 (= lt!2395831 (isDefined!12993 (findConcatSeparation!2704 (regOne!33310 r!7292) (regTwo!33310 r!7292) Nil!65374 s!2326 s!2326)))))

(declare-fun lt!2395863 () Unit!158931)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2468 (Regex!16399 Regex!16399 List!65498) Unit!158931)

(assert (=> b!6519074 (= lt!2395863 (lemmaFindConcatSeparationEquivalentToExists!2468 (regOne!33310 r!7292) (regTwo!33310 r!7292) s!2326))))

(declare-fun b!6519075 () Bool)

(declare-fun res!2676646 () Bool)

(assert (=> b!6519075 (=> res!2676646 e!3949214)))

(declare-fun lt!2395830 () Regex!16399)

(assert (=> b!6519075 (= res!2676646 (not (= lt!2395830 r!7292)))))

(declare-fun e!3949199 () Bool)

(declare-fun e!3949218 () Bool)

(assert (=> b!6519077 (= e!3949199 e!3949218)))

(declare-fun res!2676634 () Bool)

(assert (=> b!6519077 (=> res!2676634 e!3949218)))

(declare-fun lt!2395855 () (InoxSet Context!11566))

(declare-fun appendTo!160 ((InoxSet Context!11566) Context!11566) (InoxSet Context!11566))

(assert (=> b!6519077 (= res!2676634 (not (= (appendTo!160 lt!2395833 lt!2395839) lt!2395855)))))

(declare-fun lt!2395836 () List!65496)

(declare-fun lambda!361803 () Int)

(declare-fun map!14907 ((InoxSet Context!11566) Int) (InoxSet Context!11566))

(declare-fun ++!14500 (List!65496 List!65496) List!65496)

(assert (=> b!6519077 (= (map!14907 lt!2395833 lambda!361803) (store ((as const (Array Context!11566 Bool)) false) (Context!11567 (++!14500 lt!2395859 lt!2395836)) true))))

(declare-fun lt!2395825 () Unit!158931)

(declare-fun lambda!361804 () Int)

(declare-fun lemmaConcatPreservesForall!372 (List!65496 List!65496 Int) Unit!158931)

(assert (=> b!6519077 (= lt!2395825 (lemmaConcatPreservesForall!372 lt!2395859 lt!2395836 lambda!361804))))

(declare-fun lt!2395850 () Unit!158931)

(declare-fun lemmaMapOnSingletonSet!182 ((InoxSet Context!11566) Context!11566 Int) Unit!158931)

(assert (=> b!6519077 (= lt!2395850 (lemmaMapOnSingletonSet!182 lt!2395833 lt!2395828 lambda!361803))))

(declare-fun b!6519078 () Bool)

(declare-fun res!2676642 () Bool)

(declare-fun e!3949207 () Bool)

(assert (=> b!6519078 (=> res!2676642 e!3949207)))

(declare-fun z!1189 () (InoxSet Context!11566))

(declare-fun matchZipper!2411 ((InoxSet Context!11566) List!65498) Bool)

(assert (=> b!6519078 (= res!2676642 (not (matchZipper!2411 z!1189 s!2326)))))

(declare-fun b!6519079 () Bool)

(declare-fun e!3949208 () Bool)

(declare-fun tp!1802282 () Bool)

(assert (=> b!6519079 (= e!3949208 tp!1802282)))

(declare-fun b!6519080 () Bool)

(declare-fun res!2676628 () Bool)

(assert (=> b!6519080 (=> res!2676628 e!3949207)))

(declare-fun lt!2395837 () Bool)

(assert (=> b!6519080 (= res!2676628 (not lt!2395837))))

(declare-fun b!6519081 () Bool)

(declare-fun res!2676639 () Bool)

(assert (=> b!6519081 (=> res!2676639 e!3949206)))

(assert (=> b!6519081 (= res!2676639 (or ((_ is EmptyExpr!16399) r!7292) ((_ is EmptyLang!16399) r!7292) ((_ is ElementMatch!16399) r!7292) ((_ is Union!16399) r!7292) (not ((_ is Concat!25244) r!7292))))))

(declare-fun b!6519082 () Bool)

(declare-fun e!3949204 () Bool)

(declare-fun e!3949198 () Bool)

(assert (=> b!6519082 (= e!3949204 e!3949198)))

(declare-fun res!2676626 () Bool)

(assert (=> b!6519082 (=> res!2676626 e!3949198)))

(declare-fun lt!2395862 () (InoxSet Context!11566))

(declare-fun lt!2395867 () (InoxSet Context!11566))

(assert (=> b!6519082 (= res!2676626 (not (= lt!2395862 lt!2395867)))))

(declare-fun derivationStepZipperDown!1647 (Regex!16399 Context!11566 C!33068) (InoxSet Context!11566))

(assert (=> b!6519082 (= lt!2395867 (derivationStepZipperDown!1647 (reg!16728 (regOne!33310 r!7292)) lt!2395839 (h!71822 s!2326)))))

(assert (=> b!6519082 (= lt!2395839 (Context!11567 lt!2395836))))

(assert (=> b!6519082 (= lt!2395836 (Cons!65372 lt!2395844 (t!379134 (exprs!6283 (h!71821 zl!343)))))))

(assert (=> b!6519082 (= lt!2395844 (Star!16399 (reg!16728 (regOne!33310 r!7292))))))

(declare-fun b!6519083 () Bool)

(declare-fun res!2676645 () Bool)

(declare-fun e!3949210 () Bool)

(assert (=> b!6519083 (=> res!2676645 e!3949210)))

(declare-fun lt!2395854 () tuple2!66756)

(assert (=> b!6519083 (= res!2676645 (not (matchZipper!2411 lt!2395826 (_2!36681 lt!2395854))))))

(declare-fun b!6519084 () Bool)

(declare-fun e!3949194 () Bool)

(assert (=> b!6519084 (= e!3949194 e!3949203)))

(declare-fun res!2676635 () Bool)

(assert (=> b!6519084 (=> (not res!2676635) (not e!3949203))))

(assert (=> b!6519084 (= res!2676635 (= r!7292 lt!2395830))))

(assert (=> b!6519084 (= lt!2395830 (unfocusZipper!2141 zl!343))))

(declare-fun b!6519085 () Bool)

(declare-fun e!3949209 () Bool)

(declare-fun tp!1802284 () Bool)

(declare-fun tp!1802289 () Bool)

(assert (=> b!6519085 (= e!3949209 (and tp!1802284 tp!1802289))))

(declare-fun b!6519086 () Bool)

(declare-fun tp_is_empty!42051 () Bool)

(assert (=> b!6519086 (= e!3949209 tp_is_empty!42051)))

(declare-fun b!6519087 () Bool)

(declare-fun tp!1802290 () Bool)

(assert (=> b!6519087 (= e!3949209 tp!1802290)))

(declare-fun b!6519088 () Bool)

(declare-fun res!2676648 () Bool)

(assert (=> b!6519088 (=> res!2676648 e!3949201)))

(assert (=> b!6519088 (= res!2676648 (not (= (unfocusZipper!2141 (Cons!65373 lt!2395839 Nil!65373)) lt!2395835)))))

(declare-fun tp!1802285 () Bool)

(declare-fun e!3949200 () Bool)

(declare-fun b!6519089 () Bool)

(declare-fun inv!84244 (Context!11566) Bool)

(assert (=> b!6519089 (= e!3949200 (and (inv!84244 (h!71821 zl!343)) e!3949208 tp!1802285))))

(declare-fun setIsEmpty!44485 () Bool)

(declare-fun setRes!44485 () Bool)

(assert (=> setIsEmpty!44485 setRes!44485))

(declare-fun b!6519090 () Bool)

(declare-fun res!2676631 () Bool)

(assert (=> b!6519090 (=> res!2676631 e!3949199)))

(declare-fun lt!2395841 () Bool)

(declare-fun lt!2395860 () Bool)

(assert (=> b!6519090 (= res!2676631 (or (not lt!2395841) (not lt!2395860)))))

(declare-fun b!6519091 () Bool)

(declare-fun e!3949211 () Bool)

(declare-fun lt!2395829 () (InoxSet Context!11566))

(assert (=> b!6519091 (= e!3949211 (matchZipper!2411 lt!2395829 (t!379136 s!2326)))))

(declare-fun b!6519092 () Bool)

(declare-fun res!2676651 () Bool)

(assert (=> b!6519092 (=> res!2676651 e!3949204)))

(assert (=> b!6519092 (= res!2676651 (or ((_ is Concat!25244) (regOne!33310 r!7292)) (not ((_ is Star!16399) (regOne!33310 r!7292)))))))

(declare-fun b!6519093 () Bool)

(declare-fun tp!1802288 () Bool)

(declare-fun tp!1802286 () Bool)

(assert (=> b!6519093 (= e!3949209 (and tp!1802288 tp!1802286))))

(declare-fun b!6519076 () Bool)

(declare-fun e!3949202 () Bool)

(assert (=> b!6519076 (= e!3949202 e!3949214)))

(declare-fun res!2676638 () Bool)

(assert (=> b!6519076 (=> res!2676638 e!3949214)))

(declare-fun lt!2395852 () (InoxSet Context!11566))

(assert (=> b!6519076 (= res!2676638 (not (= lt!2395860 (matchZipper!2411 lt!2395852 (t!379136 s!2326)))))))

(assert (=> b!6519076 (= lt!2395860 (matchZipper!2411 lt!2395855 s!2326))))

(declare-fun res!2676620 () Bool)

(assert (=> start!640186 (=> (not res!2676620) (not e!3949194))))

(declare-fun validRegex!8135 (Regex!16399) Bool)

(assert (=> start!640186 (= res!2676620 (validRegex!8135 r!7292))))

(assert (=> start!640186 e!3949194))

(assert (=> start!640186 e!3949209))

(declare-fun condSetEmpty!44485 () Bool)

(assert (=> start!640186 (= condSetEmpty!44485 (= z!1189 ((as const (Array Context!11566 Bool)) false)))))

(assert (=> start!640186 setRes!44485))

(assert (=> start!640186 e!3949200))

(declare-fun e!3949216 () Bool)

(assert (=> start!640186 e!3949216))

(declare-fun b!6519094 () Bool)

(declare-fun res!2676619 () Bool)

(assert (=> b!6519094 (=> res!2676619 e!3949210)))

(assert (=> b!6519094 (= res!2676619 (not (matchZipper!2411 lt!2395833 (_1!36681 lt!2395854))))))

(declare-fun b!6519095 () Bool)

(assert (=> b!6519095 (= e!3949215 e!3949196)))

(declare-fun res!2676622 () Bool)

(assert (=> b!6519095 (=> res!2676622 e!3949196)))

(declare-fun lt!2395858 () Context!11566)

(declare-fun lt!2395840 () Regex!16399)

(assert (=> b!6519095 (= res!2676622 (not (= (unfocusZipper!2141 (Cons!65373 lt!2395858 Nil!65373)) lt!2395840)))))

(assert (=> b!6519095 (= lt!2395840 (Concat!25244 (reg!16728 (regOne!33310 r!7292)) lt!2395835))))

(declare-fun b!6519096 () Bool)

(declare-fun e!3949197 () Bool)

(assert (=> b!6519096 (= e!3949197 (not (matchZipper!2411 lt!2395829 (t!379136 s!2326))))))

(declare-fun b!6519097 () Bool)

(declare-fun res!2676650 () Bool)

(assert (=> b!6519097 (=> (not res!2676650) (not e!3949194))))

(declare-fun toList!10183 ((InoxSet Context!11566)) List!65497)

(assert (=> b!6519097 (= res!2676650 (= (toList!10183 z!1189) zl!343))))

(declare-fun b!6519098 () Bool)

(declare-fun res!2676637 () Bool)

(assert (=> b!6519098 (=> res!2676637 e!3949204)))

(declare-fun e!3949205 () Bool)

(assert (=> b!6519098 (= res!2676637 e!3949205)))

(declare-fun res!2676643 () Bool)

(assert (=> b!6519098 (=> (not res!2676643) (not e!3949205))))

(assert (=> b!6519098 (= res!2676643 ((_ is Concat!25244) (regOne!33310 r!7292)))))

(declare-fun b!6519099 () Bool)

(declare-fun e!3949195 () Unit!158931)

(declare-fun Unit!158933 () Unit!158931)

(assert (=> b!6519099 (= e!3949195 Unit!158933)))

(declare-fun lt!2395853 () Unit!158931)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1230 ((InoxSet Context!11566) (InoxSet Context!11566) List!65498) Unit!158931)

(assert (=> b!6519099 (= lt!2395853 (lemmaZipperConcatMatchesSameAsBothZippers!1230 lt!2395862 lt!2395829 (t!379136 s!2326)))))

(declare-fun res!2676627 () Bool)

(assert (=> b!6519099 (= res!2676627 (matchZipper!2411 lt!2395862 (t!379136 s!2326)))))

(assert (=> b!6519099 (=> res!2676627 e!3949211)))

(assert (=> b!6519099 (= (matchZipper!2411 ((_ map or) lt!2395862 lt!2395829) (t!379136 s!2326)) e!3949211)))

(declare-fun b!6519100 () Bool)

(assert (=> b!6519100 (= e!3949218 e!3949210)))

(declare-fun res!2676629 () Bool)

(assert (=> b!6519100 (=> res!2676629 e!3949210)))

(declare-fun lt!2395865 () List!65498)

(assert (=> b!6519100 (= res!2676629 (not (= s!2326 lt!2395865)))))

(declare-fun ++!14501 (List!65498 List!65498) List!65498)

(assert (=> b!6519100 (= lt!2395865 (++!14501 (_1!36681 lt!2395854) (_2!36681 lt!2395854)))))

(declare-fun lt!2395843 () Option!16290)

(declare-fun get!22680 (Option!16290) tuple2!66756)

(assert (=> b!6519100 (= lt!2395854 (get!22680 lt!2395843))))

(assert (=> b!6519100 (isDefined!12993 lt!2395843)))

(declare-fun findConcatSeparationZippers!164 ((InoxSet Context!11566) (InoxSet Context!11566) List!65498 List!65498 List!65498) Option!16290)

(assert (=> b!6519100 (= lt!2395843 (findConcatSeparationZippers!164 lt!2395833 lt!2395826 Nil!65374 s!2326 s!2326))))

(declare-fun lt!2395868 () Unit!158931)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!164 ((InoxSet Context!11566) Context!11566 List!65498) Unit!158931)

(assert (=> b!6519100 (= lt!2395868 (lemmaConcatZipperMatchesStringThenFindConcatDefined!164 lt!2395833 lt!2395839 s!2326))))

(declare-fun b!6519101 () Bool)

(assert (=> b!6519101 (= e!3949198 e!3949202)))

(declare-fun res!2676623 () Bool)

(assert (=> b!6519101 (=> res!2676623 e!3949202)))

(assert (=> b!6519101 (= res!2676623 (not (= lt!2395852 lt!2395867)))))

(assert (=> b!6519101 (= (flatMap!1904 lt!2395855 lambda!361802) (derivationStepZipperUp!1573 lt!2395858 (h!71822 s!2326)))))

(declare-fun lt!2395846 () Unit!158931)

(assert (=> b!6519101 (= lt!2395846 (lemmaFlatMapOnSingletonSet!1430 lt!2395855 lt!2395858 lambda!361802))))

(declare-fun lt!2395824 () (InoxSet Context!11566))

(assert (=> b!6519101 (= lt!2395824 (derivationStepZipperUp!1573 lt!2395858 (h!71822 s!2326)))))

(declare-fun derivationStepZipper!2365 ((InoxSet Context!11566) C!33068) (InoxSet Context!11566))

(assert (=> b!6519101 (= lt!2395852 (derivationStepZipper!2365 lt!2395855 (h!71822 s!2326)))))

(assert (=> b!6519101 (= lt!2395855 (store ((as const (Array Context!11566 Bool)) false) lt!2395858 true))))

(assert (=> b!6519101 (= lt!2395858 (Context!11567 (Cons!65372 (reg!16728 (regOne!33310 r!7292)) lt!2395836)))))

(declare-fun b!6519102 () Bool)

(declare-fun res!2676647 () Bool)

(assert (=> b!6519102 (=> res!2676647 e!3949206)))

(assert (=> b!6519102 (= res!2676647 (not ((_ is Cons!65372) (exprs!6283 (h!71821 zl!343)))))))

(declare-fun b!6519103 () Bool)

(declare-fun e!3949212 () Bool)

(assert (=> b!6519103 (= e!3949212 (= (reg!16728 (regOne!33310 r!7292)) lt!2395842))))

(declare-fun b!6519104 () Bool)

(declare-fun e!3949213 () Bool)

(declare-fun tp!1802287 () Bool)

(assert (=> b!6519104 (= e!3949213 tp!1802287)))

(assert (=> b!6519105 (= e!3949217 e!3949204)))

(declare-fun res!2676624 () Bool)

(assert (=> b!6519105 (=> res!2676624 e!3949204)))

(assert (=> b!6519105 (= res!2676624 (or (and ((_ is ElementMatch!16399) (regOne!33310 r!7292)) (= (c!1196239 (regOne!33310 r!7292)) (h!71822 s!2326))) ((_ is Union!16399) (regOne!33310 r!7292))))))

(declare-fun lt!2395849 () Unit!158931)

(assert (=> b!6519105 (= lt!2395849 e!3949195)))

(declare-fun c!1196238 () Bool)

(assert (=> b!6519105 (= c!1196238 lt!2395837)))

(declare-fun nullable!6392 (Regex!16399) Bool)

(assert (=> b!6519105 (= lt!2395837 (nullable!6392 (h!71820 (exprs!6283 (h!71821 zl!343)))))))

(assert (=> b!6519105 (= (flatMap!1904 z!1189 lambda!361802) (derivationStepZipperUp!1573 (h!71821 zl!343) (h!71822 s!2326)))))

(declare-fun lt!2395838 () Unit!158931)

(assert (=> b!6519105 (= lt!2395838 (lemmaFlatMapOnSingletonSet!1430 z!1189 (h!71821 zl!343) lambda!361802))))

(declare-fun lt!2395845 () Context!11566)

(assert (=> b!6519105 (= lt!2395829 (derivationStepZipperUp!1573 lt!2395845 (h!71822 s!2326)))))

(assert (=> b!6519105 (= lt!2395862 (derivationStepZipperDown!1647 (h!71820 (exprs!6283 (h!71821 zl!343))) lt!2395845 (h!71822 s!2326)))))

(assert (=> b!6519105 (= lt!2395845 (Context!11567 (t!379134 (exprs!6283 (h!71821 zl!343)))))))

(declare-fun lt!2395834 () (InoxSet Context!11566))

(assert (=> b!6519105 (= lt!2395834 (derivationStepZipperUp!1573 (Context!11567 (Cons!65372 (h!71820 (exprs!6283 (h!71821 zl!343))) (t!379134 (exprs!6283 (h!71821 zl!343))))) (h!71822 s!2326)))))

(declare-fun b!6519106 () Bool)

(declare-fun res!2676636 () Bool)

(assert (=> b!6519106 (=> res!2676636 e!3949206)))

(declare-fun generalisedConcat!1996 (List!65496) Regex!16399)

(assert (=> b!6519106 (= res!2676636 (not (= r!7292 (generalisedConcat!1996 (exprs!6283 (h!71821 zl!343))))))))

(declare-fun b!6519107 () Bool)

(assert (=> b!6519107 (= e!3949210 e!3949212)))

(declare-fun res!2676649 () Bool)

(assert (=> b!6519107 (=> res!2676649 e!3949212)))

(assert (=> b!6519107 (= res!2676649 (not (validRegex!8135 (reg!16728 (regOne!33310 r!7292)))))))

(assert (=> b!6519107 (matchZipper!2411 (store ((as const (Array Context!11566 Bool)) false) (Context!11567 (++!14500 lt!2395859 lt!2395836)) true) lt!2395865)))

(declare-fun lt!2395823 () Unit!158931)

(assert (=> b!6519107 (= lt!2395823 (lemmaConcatPreservesForall!372 lt!2395859 lt!2395836 lambda!361804))))

(declare-fun lt!2395848 () Unit!158931)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!180 (Context!11566 Context!11566 List!65498 List!65498) Unit!158931)

(assert (=> b!6519107 (= lt!2395848 (lemmaConcatenateContextMatchesConcatOfStrings!180 lt!2395828 lt!2395839 (_1!36681 lt!2395854) (_2!36681 lt!2395854)))))

(declare-fun b!6519108 () Bool)

(assert (=> b!6519108 (= e!3949205 (nullable!6392 (regOne!33310 (regOne!33310 r!7292))))))

(declare-fun b!6519109 () Bool)

(assert (=> b!6519109 (= e!3949207 e!3949199)))

(declare-fun res!2676652 () Bool)

(assert (=> b!6519109 (=> res!2676652 e!3949199)))

(assert (=> b!6519109 (= res!2676652 e!3949197)))

(declare-fun res!2676621 () Bool)

(assert (=> b!6519109 (=> (not res!2676621) (not e!3949197))))

(assert (=> b!6519109 (= res!2676621 (not lt!2395841))))

(assert (=> b!6519109 (= lt!2395841 (matchZipper!2411 lt!2395862 (t!379136 s!2326)))))

(declare-fun b!6519110 () Bool)

(declare-fun Unit!158934 () Unit!158931)

(assert (=> b!6519110 (= e!3949195 Unit!158934)))

(declare-fun b!6519111 () Bool)

(declare-fun tp!1802281 () Bool)

(assert (=> b!6519111 (= e!3949216 (and tp_is_empty!42051 tp!1802281))))

(declare-fun b!6519112 () Bool)

(declare-fun res!2676653 () Bool)

(assert (=> b!6519112 (=> res!2676653 e!3949206)))

(declare-fun isEmpty!37589 (List!65497) Bool)

(assert (=> b!6519112 (= res!2676653 (not (isEmpty!37589 (t!379135 zl!343))))))

(declare-fun b!6519113 () Bool)

(assert (=> b!6519113 (= e!3949201 e!3949207)))

(declare-fun res!2676644 () Bool)

(assert (=> b!6519113 (=> res!2676644 e!3949207)))

(assert (=> b!6519113 (= res!2676644 lt!2395866)))

(assert (=> b!6519113 (= (matchR!8582 lt!2395840 s!2326) (matchRSpec!3500 lt!2395840 s!2326))))

(declare-fun lt!2395861 () Unit!158931)

(assert (=> b!6519113 (= lt!2395861 (mainMatchTheorem!3500 lt!2395840 s!2326))))

(declare-fun setElem!44485 () Context!11566)

(declare-fun setNonEmpty!44485 () Bool)

(declare-fun tp!1802283 () Bool)

(assert (=> setNonEmpty!44485 (= setRes!44485 (and tp!1802283 (inv!84244 setElem!44485) e!3949213))))

(declare-fun setRest!44485 () (InoxSet Context!11566))

(assert (=> setNonEmpty!44485 (= z!1189 ((_ map or) (store ((as const (Array Context!11566 Bool)) false) setElem!44485 true) setRest!44485))))

(declare-fun b!6519114 () Bool)

(declare-fun res!2676632 () Bool)

(assert (=> b!6519114 (=> res!2676632 e!3949217)))

(declare-fun isEmpty!37590 (List!65496) Bool)

(assert (=> b!6519114 (= res!2676632 (isEmpty!37590 (t!379134 (exprs!6283 (h!71821 zl!343)))))))

(declare-fun b!6519115 () Bool)

(declare-fun res!2676633 () Bool)

(assert (=> b!6519115 (=> res!2676633 e!3949212)))

(assert (=> b!6519115 (= res!2676633 (not (= (toList!10183 lt!2395833) lt!2395832)))))

(assert (= (and start!640186 res!2676620) b!6519097))

(assert (= (and b!6519097 res!2676650) b!6519084))

(assert (= (and b!6519084 res!2676635) b!6519071))

(assert (= (and b!6519071 (not res!2676640)) b!6519112))

(assert (= (and b!6519112 (not res!2676653)) b!6519106))

(assert (= (and b!6519106 (not res!2676636)) b!6519102))

(assert (= (and b!6519102 (not res!2676647)) b!6519072))

(assert (= (and b!6519072 (not res!2676630)) b!6519081))

(assert (= (and b!6519081 (not res!2676639)) b!6519074))

(assert (= (and b!6519074 (not res!2676641)) b!6519114))

(assert (= (and b!6519114 (not res!2676632)) b!6519105))

(assert (= (and b!6519105 c!1196238) b!6519099))

(assert (= (and b!6519105 (not c!1196238)) b!6519110))

(assert (= (and b!6519099 (not res!2676627)) b!6519091))

(assert (= (and b!6519105 (not res!2676624)) b!6519098))

(assert (= (and b!6519098 res!2676643) b!6519108))

(assert (= (and b!6519098 (not res!2676637)) b!6519092))

(assert (= (and b!6519092 (not res!2676651)) b!6519082))

(assert (= (and b!6519082 (not res!2676626)) b!6519101))

(assert (= (and b!6519101 (not res!2676623)) b!6519076))

(assert (= (and b!6519076 (not res!2676638)) b!6519075))

(assert (= (and b!6519075 (not res!2676646)) b!6519073))

(assert (= (and b!6519073 (not res!2676654)) b!6519095))

(assert (= (and b!6519095 (not res!2676622)) b!6519070))

(assert (= (and b!6519070 (not res!2676625)) b!6519088))

(assert (= (and b!6519088 (not res!2676648)) b!6519113))

(assert (= (and b!6519113 (not res!2676644)) b!6519078))

(assert (= (and b!6519078 (not res!2676642)) b!6519080))

(assert (= (and b!6519080 (not res!2676628)) b!6519109))

(assert (= (and b!6519109 res!2676621) b!6519096))

(assert (= (and b!6519109 (not res!2676652)) b!6519090))

(assert (= (and b!6519090 (not res!2676631)) b!6519077))

(assert (= (and b!6519077 (not res!2676634)) b!6519100))

(assert (= (and b!6519100 (not res!2676629)) b!6519094))

(assert (= (and b!6519094 (not res!2676619)) b!6519083))

(assert (= (and b!6519083 (not res!2676645)) b!6519107))

(assert (= (and b!6519107 (not res!2676649)) b!6519115))

(assert (= (and b!6519115 (not res!2676633)) b!6519103))

(assert (= (and start!640186 ((_ is ElementMatch!16399) r!7292)) b!6519086))

(assert (= (and start!640186 ((_ is Concat!25244) r!7292)) b!6519085))

(assert (= (and start!640186 ((_ is Star!16399) r!7292)) b!6519087))

(assert (= (and start!640186 ((_ is Union!16399) r!7292)) b!6519093))

(assert (= (and start!640186 condSetEmpty!44485) setIsEmpty!44485))

(assert (= (and start!640186 (not condSetEmpty!44485)) setNonEmpty!44485))

(assert (= setNonEmpty!44485 b!6519104))

(assert (= b!6519089 b!6519079))

(assert (= (and start!640186 ((_ is Cons!65373) zl!343)) b!6519089))

(assert (= (and start!640186 ((_ is Cons!65374) s!2326)) b!6519111))

(declare-fun m!7305098 () Bool)

(assert (=> b!6519072 m!7305098))

(assert (=> b!6519072 m!7305098))

(declare-fun m!7305100 () Bool)

(assert (=> b!6519072 m!7305100))

(declare-fun m!7305102 () Bool)

(assert (=> b!6519084 m!7305102))

(declare-fun m!7305104 () Bool)

(assert (=> b!6519071 m!7305104))

(declare-fun m!7305106 () Bool)

(assert (=> b!6519071 m!7305106))

(declare-fun m!7305108 () Bool)

(assert (=> b!6519071 m!7305108))

(declare-fun m!7305110 () Bool)

(assert (=> b!6519078 m!7305110))

(declare-fun m!7305112 () Bool)

(assert (=> b!6519109 m!7305112))

(declare-fun m!7305114 () Bool)

(assert (=> b!6519096 m!7305114))

(declare-fun m!7305116 () Bool)

(assert (=> b!6519088 m!7305116))

(declare-fun m!7305118 () Bool)

(assert (=> b!6519070 m!7305118))

(declare-fun m!7305120 () Bool)

(assert (=> b!6519070 m!7305120))

(declare-fun m!7305122 () Bool)

(assert (=> b!6519070 m!7305122))

(declare-fun m!7305124 () Bool)

(assert (=> b!6519070 m!7305124))

(declare-fun m!7305126 () Bool)

(assert (=> b!6519070 m!7305126))

(declare-fun m!7305128 () Bool)

(assert (=> b!6519070 m!7305128))

(declare-fun m!7305130 () Bool)

(assert (=> b!6519070 m!7305130))

(declare-fun m!7305132 () Bool)

(assert (=> b!6519070 m!7305132))

(declare-fun m!7305134 () Bool)

(assert (=> b!6519070 m!7305134))

(declare-fun m!7305136 () Bool)

(assert (=> b!6519083 m!7305136))

(declare-fun m!7305138 () Bool)

(assert (=> b!6519095 m!7305138))

(declare-fun m!7305140 () Bool)

(assert (=> b!6519097 m!7305140))

(declare-fun m!7305142 () Bool)

(assert (=> b!6519076 m!7305142))

(declare-fun m!7305144 () Bool)

(assert (=> b!6519076 m!7305144))

(assert (=> b!6519091 m!7305114))

(declare-fun m!7305146 () Bool)

(assert (=> b!6519101 m!7305146))

(declare-fun m!7305148 () Bool)

(assert (=> b!6519101 m!7305148))

(declare-fun m!7305150 () Bool)

(assert (=> b!6519101 m!7305150))

(declare-fun m!7305152 () Bool)

(assert (=> b!6519101 m!7305152))

(declare-fun m!7305154 () Bool)

(assert (=> b!6519101 m!7305154))

(declare-fun m!7305156 () Bool)

(assert (=> start!640186 m!7305156))

(declare-fun m!7305158 () Bool)

(assert (=> setNonEmpty!44485 m!7305158))

(declare-fun m!7305160 () Bool)

(assert (=> b!6519105 m!7305160))

(declare-fun m!7305162 () Bool)

(assert (=> b!6519105 m!7305162))

(declare-fun m!7305164 () Bool)

(assert (=> b!6519105 m!7305164))

(declare-fun m!7305166 () Bool)

(assert (=> b!6519105 m!7305166))

(declare-fun m!7305168 () Bool)

(assert (=> b!6519105 m!7305168))

(declare-fun m!7305170 () Bool)

(assert (=> b!6519105 m!7305170))

(declare-fun m!7305172 () Bool)

(assert (=> b!6519105 m!7305172))

(declare-fun m!7305174 () Bool)

(assert (=> b!6519107 m!7305174))

(declare-fun m!7305176 () Bool)

(assert (=> b!6519107 m!7305176))

(declare-fun m!7305178 () Bool)

(assert (=> b!6519107 m!7305178))

(declare-fun m!7305180 () Bool)

(assert (=> b!6519107 m!7305180))

(declare-fun m!7305182 () Bool)

(assert (=> b!6519107 m!7305182))

(assert (=> b!6519107 m!7305176))

(declare-fun m!7305184 () Bool)

(assert (=> b!6519107 m!7305184))

(declare-fun m!7305186 () Bool)

(assert (=> b!6519099 m!7305186))

(assert (=> b!6519099 m!7305112))

(declare-fun m!7305188 () Bool)

(assert (=> b!6519099 m!7305188))

(declare-fun m!7305190 () Bool)

(assert (=> b!6519082 m!7305190))

(declare-fun m!7305192 () Bool)

(assert (=> b!6519074 m!7305192))

(declare-fun m!7305194 () Bool)

(assert (=> b!6519074 m!7305194))

(declare-fun m!7305196 () Bool)

(assert (=> b!6519074 m!7305196))

(declare-fun m!7305198 () Bool)

(assert (=> b!6519074 m!7305198))

(declare-fun m!7305200 () Bool)

(assert (=> b!6519074 m!7305200))

(assert (=> b!6519074 m!7305200))

(assert (=> b!6519074 m!7305192))

(declare-fun m!7305202 () Bool)

(assert (=> b!6519074 m!7305202))

(declare-fun m!7305204 () Bool)

(assert (=> b!6519114 m!7305204))

(declare-fun m!7305206 () Bool)

(assert (=> b!6519094 m!7305206))

(declare-fun m!7305208 () Bool)

(assert (=> b!6519108 m!7305208))

(declare-fun m!7305210 () Bool)

(assert (=> b!6519089 m!7305210))

(declare-fun m!7305212 () Bool)

(assert (=> b!6519100 m!7305212))

(declare-fun m!7305214 () Bool)

(assert (=> b!6519100 m!7305214))

(declare-fun m!7305216 () Bool)

(assert (=> b!6519100 m!7305216))

(declare-fun m!7305218 () Bool)

(assert (=> b!6519100 m!7305218))

(declare-fun m!7305220 () Bool)

(assert (=> b!6519100 m!7305220))

(assert (=> b!6519077 m!7305176))

(declare-fun m!7305222 () Bool)

(assert (=> b!6519077 m!7305222))

(assert (=> b!6519077 m!7305178))

(declare-fun m!7305224 () Bool)

(assert (=> b!6519077 m!7305224))

(declare-fun m!7305226 () Bool)

(assert (=> b!6519077 m!7305226))

(assert (=> b!6519077 m!7305182))

(declare-fun m!7305228 () Bool)

(assert (=> b!6519112 m!7305228))

(declare-fun m!7305230 () Bool)

(assert (=> b!6519113 m!7305230))

(declare-fun m!7305232 () Bool)

(assert (=> b!6519113 m!7305232))

(declare-fun m!7305234 () Bool)

(assert (=> b!6519113 m!7305234))

(declare-fun m!7305236 () Bool)

(assert (=> b!6519115 m!7305236))

(declare-fun m!7305238 () Bool)

(assert (=> b!6519106 m!7305238))

(check-sat (not b!6519087) (not setNonEmpty!44485) (not b!6519091) (not b!6519095) (not b!6519088) (not b!6519082) (not b!6519099) (not b!6519096) (not b!6519074) (not b!6519112) tp_is_empty!42051 (not b!6519111) (not b!6519085) (not b!6519079) (not b!6519084) (not b!6519071) (not b!6519114) (not b!6519072) (not b!6519115) (not b!6519109) (not b!6519083) (not b!6519070) (not b!6519097) (not b!6519076) (not b!6519078) (not b!6519108) (not b!6519105) (not start!640186) (not b!6519101) (not b!6519106) (not b!6519094) (not b!6519077) (not b!6519100) (not b!6519089) (not b!6519104) (not b!6519093) (not b!6519113) (not b!6519107))
(check-sat)
