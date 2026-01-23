; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!587984 () Bool)

(assert start!587984)

(declare-fun b!5709272 () Bool)

(assert (=> b!5709272 true))

(assert (=> b!5709272 true))

(declare-fun lambda!307927 () Int)

(declare-fun lambda!307926 () Int)

(assert (=> b!5709272 (not (= lambda!307927 lambda!307926))))

(assert (=> b!5709272 true))

(assert (=> b!5709272 true))

(declare-fun b!5709282 () Bool)

(assert (=> b!5709282 true))

(declare-fun bs!1333764 () Bool)

(declare-fun b!5709284 () Bool)

(assert (= bs!1333764 (and b!5709284 b!5709272)))

(declare-fun lambda!307929 () Int)

(declare-datatypes ((C!31672 0))(
  ( (C!31673 (val!25538 Int)) )
))
(declare-datatypes ((Regex!15701 0))(
  ( (ElementMatch!15701 (c!1006309 C!31672)) (Concat!24546 (regOne!31914 Regex!15701) (regTwo!31914 Regex!15701)) (EmptyExpr!15701) (Star!15701 (reg!16030 Regex!15701)) (EmptyLang!15701) (Union!15701 (regOne!31915 Regex!15701) (regTwo!31915 Regex!15701)) )
))
(declare-fun lt!2274841 () Regex!15701)

(declare-fun r!7292 () Regex!15701)

(assert (=> bs!1333764 (= (= lt!2274841 (regOne!31914 r!7292)) (= lambda!307929 lambda!307926))))

(assert (=> bs!1333764 (not (= lambda!307929 lambda!307927))))

(assert (=> b!5709284 true))

(assert (=> b!5709284 true))

(assert (=> b!5709284 true))

(declare-fun lambda!307930 () Int)

(assert (=> bs!1333764 (not (= lambda!307930 lambda!307926))))

(assert (=> bs!1333764 (= (= lt!2274841 (regOne!31914 r!7292)) (= lambda!307930 lambda!307927))))

(assert (=> b!5709284 (not (= lambda!307930 lambda!307929))))

(assert (=> b!5709284 true))

(assert (=> b!5709284 true))

(assert (=> b!5709284 true))

(declare-fun bs!1333765 () Bool)

(declare-fun b!5709288 () Bool)

(assert (= bs!1333765 (and b!5709288 b!5709272)))

(declare-datatypes ((List!63402 0))(
  ( (Nil!63278) (Cons!63278 (h!69726 C!31672) (t!376722 List!63402)) )
))
(declare-fun s!2326 () List!63402)

(declare-fun lambda!307931 () Int)

(declare-datatypes ((tuple2!65596 0))(
  ( (tuple2!65597 (_1!36101 List!63402) (_2!36101 List!63402)) )
))
(declare-fun lt!2274833 () tuple2!65596)

(assert (=> bs!1333765 (= (and (= (_1!36101 lt!2274833) s!2326) (= (reg!16030 (regOne!31914 r!7292)) (regOne!31914 r!7292)) (= lt!2274841 (regTwo!31914 r!7292))) (= lambda!307931 lambda!307926))))

(assert (=> bs!1333765 (not (= lambda!307931 lambda!307927))))

(declare-fun bs!1333766 () Bool)

(assert (= bs!1333766 (and b!5709288 b!5709284)))

(assert (=> bs!1333766 (= (and (= (_1!36101 lt!2274833) s!2326) (= (reg!16030 (regOne!31914 r!7292)) lt!2274841) (= lt!2274841 (regTwo!31914 r!7292))) (= lambda!307931 lambda!307929))))

(assert (=> bs!1333766 (not (= lambda!307931 lambda!307930))))

(assert (=> b!5709288 true))

(assert (=> b!5709288 true))

(assert (=> b!5709288 true))

(declare-fun lambda!307932 () Int)

(assert (=> bs!1333766 (not (= lambda!307932 lambda!307930))))

(assert (=> bs!1333765 (not (= lambda!307932 lambda!307927))))

(assert (=> bs!1333765 (not (= lambda!307932 lambda!307926))))

(assert (=> bs!1333766 (not (= lambda!307932 lambda!307929))))

(assert (=> b!5709288 (not (= lambda!307932 lambda!307931))))

(assert (=> b!5709288 true))

(assert (=> b!5709288 true))

(assert (=> b!5709288 true))

(declare-fun lambda!307933 () Int)

(assert (=> bs!1333766 (= (and (= (_1!36101 lt!2274833) s!2326) (= (reg!16030 (regOne!31914 r!7292)) lt!2274841) (= lt!2274841 (regTwo!31914 r!7292))) (= lambda!307933 lambda!307930))))

(assert (=> bs!1333765 (= (and (= (_1!36101 lt!2274833) s!2326) (= (reg!16030 (regOne!31914 r!7292)) (regOne!31914 r!7292)) (= lt!2274841 (regTwo!31914 r!7292))) (= lambda!307933 lambda!307927))))

(assert (=> b!5709288 (not (= lambda!307933 lambda!307932))))

(assert (=> bs!1333765 (not (= lambda!307933 lambda!307926))))

(assert (=> bs!1333766 (not (= lambda!307933 lambda!307929))))

(assert (=> b!5709288 (not (= lambda!307933 lambda!307931))))

(assert (=> b!5709288 true))

(assert (=> b!5709288 true))

(assert (=> b!5709288 true))

(declare-fun b!5709258 () Bool)

(declare-fun e!3511655 () Bool)

(declare-fun e!3511643 () Bool)

(assert (=> b!5709258 (= e!3511655 e!3511643)))

(declare-fun res!2410079 () Bool)

(assert (=> b!5709258 (=> res!2410079 e!3511643)))

(declare-fun lt!2274851 () Regex!15701)

(assert (=> b!5709258 (= res!2410079 (not (= r!7292 lt!2274851)))))

(assert (=> b!5709258 (= lt!2274851 (Concat!24546 lt!2274841 (regTwo!31914 r!7292)))))

(declare-fun b!5709259 () Bool)

(declare-fun res!2410083 () Bool)

(declare-fun e!3511645 () Bool)

(assert (=> b!5709259 (=> res!2410083 e!3511645)))

(declare-fun e!3511652 () Bool)

(assert (=> b!5709259 (= res!2410083 e!3511652)))

(declare-fun res!2410063 () Bool)

(assert (=> b!5709259 (=> (not res!2410063) (not e!3511652))))

(get-info :version)

(assert (=> b!5709259 (= res!2410063 ((_ is Concat!24546) (regOne!31914 r!7292)))))

(declare-fun b!5709260 () Bool)

(declare-datatypes ((Unit!156336 0))(
  ( (Unit!156337) )
))
(declare-fun e!3511644 () Unit!156336)

(declare-fun Unit!156338 () Unit!156336)

(assert (=> b!5709260 (= e!3511644 Unit!156338)))

(declare-fun b!5709261 () Bool)

(declare-fun e!3511650 () Bool)

(declare-fun tp_is_empty!40655 () Bool)

(assert (=> b!5709261 (= e!3511650 tp_is_empty!40655)))

(declare-fun b!5709262 () Bool)

(declare-fun e!3511662 () Bool)

(assert (=> b!5709262 (= e!3511662 e!3511655)))

(declare-fun res!2410067 () Bool)

(assert (=> b!5709262 (=> res!2410067 e!3511655)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!63403 0))(
  ( (Nil!63279) (Cons!63279 (h!69727 Regex!15701) (t!376723 List!63403)) )
))
(declare-datatypes ((Context!10170 0))(
  ( (Context!10171 (exprs!5585 List!63403)) )
))
(declare-fun lt!2274817 () (InoxSet Context!10170))

(declare-fun lt!2274827 () (InoxSet Context!10170))

(assert (=> b!5709262 (= res!2410067 (not (= lt!2274817 lt!2274827)))))

(declare-fun lambda!307928 () Int)

(declare-fun lt!2274820 () Context!10170)

(declare-fun lt!2274816 () (InoxSet Context!10170))

(declare-fun flatMap!1314 ((InoxSet Context!10170) Int) (InoxSet Context!10170))

(declare-fun derivationStepZipperUp!969 (Context!10170 C!31672) (InoxSet Context!10170))

(assert (=> b!5709262 (= (flatMap!1314 lt!2274816 lambda!307928) (derivationStepZipperUp!969 lt!2274820 (h!69726 s!2326)))))

(declare-fun lt!2274840 () Unit!156336)

(declare-fun lemmaFlatMapOnSingletonSet!846 ((InoxSet Context!10170) Context!10170 Int) Unit!156336)

(assert (=> b!5709262 (= lt!2274840 (lemmaFlatMapOnSingletonSet!846 lt!2274816 lt!2274820 lambda!307928))))

(declare-fun lt!2274821 () (InoxSet Context!10170))

(assert (=> b!5709262 (= lt!2274821 (derivationStepZipperUp!969 lt!2274820 (h!69726 s!2326)))))

(declare-fun derivationStepZipper!1784 ((InoxSet Context!10170) C!31672) (InoxSet Context!10170))

(assert (=> b!5709262 (= lt!2274817 (derivationStepZipper!1784 lt!2274816 (h!69726 s!2326)))))

(assert (=> b!5709262 (= lt!2274816 (store ((as const (Array Context!10170 Bool)) false) lt!2274820 true))))

(declare-fun lt!2274832 () List!63403)

(assert (=> b!5709262 (= lt!2274820 (Context!10171 (Cons!63279 (reg!16030 (regOne!31914 r!7292)) lt!2274832)))))

(declare-fun b!5709263 () Bool)

(declare-fun e!3511651 () Bool)

(declare-fun e!3511661 () Bool)

(assert (=> b!5709263 (= e!3511651 e!3511661)))

(declare-fun res!2410073 () Bool)

(assert (=> b!5709263 (=> res!2410073 e!3511661)))

(declare-fun lt!2274818 () Context!10170)

(declare-datatypes ((List!63404 0))(
  ( (Nil!63280) (Cons!63280 (h!69728 Context!10170) (t!376724 List!63404)) )
))
(declare-fun unfocusZipper!1443 (List!63404) Regex!15701)

(assert (=> b!5709263 (= res!2410073 (not (= (unfocusZipper!1443 (Cons!63280 lt!2274818 Nil!63280)) (reg!16030 (regOne!31914 r!7292)))))))

(declare-fun lt!2274828 () (InoxSet Context!10170))

(declare-fun lt!2274830 () Context!10170)

(assert (=> b!5709263 (= (flatMap!1314 lt!2274828 lambda!307928) (derivationStepZipperUp!969 lt!2274830 (h!69726 s!2326)))))

(declare-fun lt!2274819 () Unit!156336)

(assert (=> b!5709263 (= lt!2274819 (lemmaFlatMapOnSingletonSet!846 lt!2274828 lt!2274830 lambda!307928))))

(declare-fun lt!2274826 () (InoxSet Context!10170))

(assert (=> b!5709263 (= (flatMap!1314 lt!2274826 lambda!307928) (derivationStepZipperUp!969 lt!2274818 (h!69726 s!2326)))))

(declare-fun lt!2274844 () Unit!156336)

(assert (=> b!5709263 (= lt!2274844 (lemmaFlatMapOnSingletonSet!846 lt!2274826 lt!2274818 lambda!307928))))

(declare-fun lt!2274834 () (InoxSet Context!10170))

(assert (=> b!5709263 (= lt!2274834 (derivationStepZipperUp!969 lt!2274830 (h!69726 s!2326)))))

(declare-fun lt!2274856 () (InoxSet Context!10170))

(assert (=> b!5709263 (= lt!2274856 (derivationStepZipperUp!969 lt!2274818 (h!69726 s!2326)))))

(assert (=> b!5709263 (= lt!2274828 (store ((as const (Array Context!10170 Bool)) false) lt!2274830 true))))

(assert (=> b!5709263 (= lt!2274826 (store ((as const (Array Context!10170 Bool)) false) lt!2274818 true))))

(assert (=> b!5709263 (= lt!2274818 (Context!10171 (Cons!63279 (reg!16030 (regOne!31914 r!7292)) Nil!63279)))))

(declare-fun b!5709264 () Bool)

(assert (=> b!5709264 (= e!3511645 e!3511662)))

(declare-fun res!2410090 () Bool)

(assert (=> b!5709264 (=> res!2410090 e!3511662)))

(declare-fun lt!2274839 () (InoxSet Context!10170))

(assert (=> b!5709264 (= res!2410090 (not (= lt!2274839 lt!2274827)))))

(declare-fun derivationStepZipperDown!1043 (Regex!15701 Context!10170 C!31672) (InoxSet Context!10170))

(assert (=> b!5709264 (= lt!2274827 (derivationStepZipperDown!1043 (reg!16030 (regOne!31914 r!7292)) lt!2274830 (h!69726 s!2326)))))

(assert (=> b!5709264 (= lt!2274830 (Context!10171 lt!2274832))))

(declare-fun zl!343 () List!63404)

(assert (=> b!5709264 (= lt!2274832 (Cons!63279 lt!2274841 (t!376723 (exprs!5585 (h!69728 zl!343)))))))

(assert (=> b!5709264 (= lt!2274841 (Star!15701 (reg!16030 (regOne!31914 r!7292))))))

(declare-fun setIsEmpty!38225 () Bool)

(declare-fun setRes!38225 () Bool)

(assert (=> setIsEmpty!38225 setRes!38225))

(declare-fun b!5709265 () Bool)

(declare-fun res!2410091 () Bool)

(assert (=> b!5709265 (=> res!2410091 e!3511655)))

(declare-fun matchZipper!1839 ((InoxSet Context!10170) List!63402) Bool)

(assert (=> b!5709265 (= res!2410091 (not (= (matchZipper!1839 lt!2274816 s!2326) (matchZipper!1839 lt!2274817 (t!376722 s!2326)))))))

(declare-fun b!5709267 () Bool)

(declare-fun res!2410081 () Bool)

(declare-fun e!3511659 () Bool)

(assert (=> b!5709267 (=> (not res!2410081) (not e!3511659))))

(declare-fun z!1189 () (InoxSet Context!10170))

(declare-fun toList!9485 ((InoxSet Context!10170)) List!63404)

(assert (=> b!5709267 (= res!2410081 (= (toList!9485 z!1189) zl!343))))

(declare-fun b!5709268 () Bool)

(declare-fun res!2410089 () Bool)

(declare-fun e!3511656 () Bool)

(assert (=> b!5709268 (=> res!2410089 e!3511656)))

(assert (=> b!5709268 (= res!2410089 (not ((_ is Cons!63279) (exprs!5585 (h!69728 zl!343)))))))

(declare-fun b!5709269 () Bool)

(declare-fun nullable!5733 (Regex!15701) Bool)

(assert (=> b!5709269 (= e!3511652 (nullable!5733 (regOne!31914 (regOne!31914 r!7292))))))

(declare-fun b!5709270 () Bool)

(declare-fun e!3511642 () Bool)

(declare-fun tp!1582699 () Bool)

(assert (=> b!5709270 (= e!3511642 tp!1582699)))

(declare-fun b!5709271 () Bool)

(declare-fun res!2410078 () Bool)

(assert (=> b!5709271 (=> res!2410078 e!3511655)))

(declare-fun lt!2274850 () Regex!15701)

(assert (=> b!5709271 (= res!2410078 (not (= lt!2274850 r!7292)))))

(declare-fun e!3511648 () Bool)

(assert (=> b!5709272 (= e!3511656 e!3511648)))

(declare-fun res!2410071 () Bool)

(assert (=> b!5709272 (=> res!2410071 e!3511648)))

(declare-fun lt!2274843 () Bool)

(declare-fun lt!2274846 () Bool)

(assert (=> b!5709272 (= res!2410071 (or (not (= lt!2274843 lt!2274846)) ((_ is Nil!63278) s!2326)))))

(declare-fun Exists!2801 (Int) Bool)

(assert (=> b!5709272 (= (Exists!2801 lambda!307926) (Exists!2801 lambda!307927))))

(declare-fun lt!2274831 () Unit!156336)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1430 (Regex!15701 Regex!15701 List!63402) Unit!156336)

(assert (=> b!5709272 (= lt!2274831 (lemmaExistCutMatchRandMatchRSpecEquivalent!1430 (regOne!31914 r!7292) (regTwo!31914 r!7292) s!2326))))

(assert (=> b!5709272 (= lt!2274846 (Exists!2801 lambda!307926))))

(declare-datatypes ((Option!15710 0))(
  ( (None!15709) (Some!15709 (v!51764 tuple2!65596)) )
))
(declare-fun isDefined!12413 (Option!15710) Bool)

(declare-fun findConcatSeparation!2124 (Regex!15701 Regex!15701 List!63402 List!63402 List!63402) Option!15710)

(assert (=> b!5709272 (= lt!2274846 (isDefined!12413 (findConcatSeparation!2124 (regOne!31914 r!7292) (regTwo!31914 r!7292) Nil!63278 s!2326 s!2326)))))

(declare-fun lt!2274835 () Unit!156336)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1888 (Regex!15701 Regex!15701 List!63402) Unit!156336)

(assert (=> b!5709272 (= lt!2274835 (lemmaFindConcatSeparationEquivalentToExists!1888 (regOne!31914 r!7292) (regTwo!31914 r!7292) s!2326))))

(declare-fun b!5709273 () Bool)

(declare-fun tp!1582697 () Bool)

(assert (=> b!5709273 (= e!3511650 tp!1582697)))

(declare-fun b!5709274 () Bool)

(declare-fun e!3511653 () Bool)

(declare-fun lt!2274847 () Bool)

(assert (=> b!5709274 (= e!3511653 (or (not lt!2274843) lt!2274847))))

(declare-fun b!5709275 () Bool)

(declare-fun e!3511660 () Bool)

(declare-fun tp!1582705 () Bool)

(assert (=> b!5709275 (= e!3511660 (and tp_is_empty!40655 tp!1582705))))

(declare-fun b!5709276 () Bool)

(declare-fun e!3511658 () Bool)

(declare-fun tp!1582706 () Bool)

(assert (=> b!5709276 (= e!3511658 tp!1582706)))

(declare-fun b!5709277 () Bool)

(declare-fun tp!1582702 () Bool)

(declare-fun tp!1582703 () Bool)

(assert (=> b!5709277 (= e!3511650 (and tp!1582702 tp!1582703))))

(declare-fun b!5709278 () Bool)

(declare-fun res!2410087 () Bool)

(declare-fun e!3511654 () Bool)

(assert (=> b!5709278 (=> res!2410087 e!3511654)))

(declare-fun matchR!7886 (Regex!15701 List!63402) Bool)

(assert (=> b!5709278 (= res!2410087 (not (matchR!7886 (regTwo!31914 r!7292) (_2!36101 lt!2274833))))))

(declare-fun b!5709279 () Bool)

(declare-fun e!3511649 () Bool)

(assert (=> b!5709279 (= e!3511659 e!3511649)))

(declare-fun res!2410062 () Bool)

(assert (=> b!5709279 (=> (not res!2410062) (not e!3511649))))

(assert (=> b!5709279 (= res!2410062 (= r!7292 lt!2274850))))

(assert (=> b!5709279 (= lt!2274850 (unfocusZipper!1443 zl!343))))

(declare-fun b!5709280 () Bool)

(declare-fun tp!1582698 () Bool)

(declare-fun tp!1582700 () Bool)

(assert (=> b!5709280 (= e!3511650 (and tp!1582698 tp!1582700))))

(declare-fun b!5709281 () Bool)

(declare-fun res!2410064 () Bool)

(assert (=> b!5709281 (=> res!2410064 e!3511648)))

(declare-fun isEmpty!35144 (List!63403) Bool)

(assert (=> b!5709281 (= res!2410064 (isEmpty!35144 (t!376723 (exprs!5585 (h!69728 zl!343)))))))

(assert (=> b!5709282 (= e!3511648 e!3511645)))

(declare-fun res!2410080 () Bool)

(assert (=> b!5709282 (=> res!2410080 e!3511645)))

(assert (=> b!5709282 (= res!2410080 (or (and ((_ is ElementMatch!15701) (regOne!31914 r!7292)) (= (c!1006309 (regOne!31914 r!7292)) (h!69726 s!2326))) ((_ is Union!15701) (regOne!31914 r!7292))))))

(declare-fun lt!2274854 () Unit!156336)

(assert (=> b!5709282 (= lt!2274854 e!3511644)))

(declare-fun c!1006308 () Bool)

(assert (=> b!5709282 (= c!1006308 (nullable!5733 (h!69727 (exprs!5585 (h!69728 zl!343)))))))

(assert (=> b!5709282 (= (flatMap!1314 z!1189 lambda!307928) (derivationStepZipperUp!969 (h!69728 zl!343) (h!69726 s!2326)))))

(declare-fun lt!2274855 () Unit!156336)

(assert (=> b!5709282 (= lt!2274855 (lemmaFlatMapOnSingletonSet!846 z!1189 (h!69728 zl!343) lambda!307928))))

(declare-fun lt!2274853 () (InoxSet Context!10170))

(declare-fun lt!2274842 () Context!10170)

(assert (=> b!5709282 (= lt!2274853 (derivationStepZipperUp!969 lt!2274842 (h!69726 s!2326)))))

(assert (=> b!5709282 (= lt!2274839 (derivationStepZipperDown!1043 (h!69727 (exprs!5585 (h!69728 zl!343))) lt!2274842 (h!69726 s!2326)))))

(assert (=> b!5709282 (= lt!2274842 (Context!10171 (t!376723 (exprs!5585 (h!69728 zl!343)))))))

(declare-fun lt!2274848 () (InoxSet Context!10170))

(assert (=> b!5709282 (= lt!2274848 (derivationStepZipperUp!969 (Context!10171 (Cons!63279 (h!69727 (exprs!5585 (h!69728 zl!343))) (t!376723 (exprs!5585 (h!69728 zl!343))))) (h!69726 s!2326)))))

(declare-fun b!5709283 () Bool)

(assert (=> b!5709283 (= e!3511643 e!3511651)))

(declare-fun res!2410086 () Bool)

(assert (=> b!5709283 (=> res!2410086 e!3511651)))

(declare-fun lt!2274837 () Regex!15701)

(assert (=> b!5709283 (= res!2410086 (not (= (unfocusZipper!1443 (Cons!63280 lt!2274820 Nil!63280)) lt!2274837)))))

(assert (=> b!5709283 (= lt!2274837 (Concat!24546 (reg!16030 (regOne!31914 r!7292)) lt!2274851))))

(declare-fun e!3511657 () Bool)

(assert (=> b!5709284 (= e!3511657 e!3511654)))

(declare-fun res!2410074 () Bool)

(assert (=> b!5709284 (=> res!2410074 e!3511654)))

(declare-fun ++!13893 (List!63402 List!63402) List!63402)

(assert (=> b!5709284 (= res!2410074 (not (= (++!13893 (_1!36101 lt!2274833) (_2!36101 lt!2274833)) s!2326)))))

(declare-fun lt!2274822 () Option!15710)

(declare-fun get!21811 (Option!15710) tuple2!65596)

(assert (=> b!5709284 (= lt!2274833 (get!21811 lt!2274822))))

(assert (=> b!5709284 (= (Exists!2801 lambda!307929) (Exists!2801 lambda!307930))))

(declare-fun lt!2274815 () Unit!156336)

(assert (=> b!5709284 (= lt!2274815 (lemmaExistCutMatchRandMatchRSpecEquivalent!1430 lt!2274841 (regTwo!31914 r!7292) s!2326))))

(assert (=> b!5709284 (= (isDefined!12413 lt!2274822) (Exists!2801 lambda!307929))))

(assert (=> b!5709284 (= lt!2274822 (findConcatSeparation!2124 lt!2274841 (regTwo!31914 r!7292) Nil!63278 s!2326 s!2326))))

(declare-fun lt!2274836 () Unit!156336)

(assert (=> b!5709284 (= lt!2274836 (lemmaFindConcatSeparationEquivalentToExists!1888 lt!2274841 (regTwo!31914 r!7292) s!2326))))

(declare-fun b!5709285 () Bool)

(declare-fun res!2410088 () Bool)

(assert (=> b!5709285 (=> res!2410088 e!3511654)))

(assert (=> b!5709285 (= res!2410088 (not (matchR!7886 lt!2274841 (_1!36101 lt!2274833))))))

(declare-fun b!5709286 () Bool)

(declare-fun Unit!156339 () Unit!156336)

(assert (=> b!5709286 (= e!3511644 Unit!156339)))

(declare-fun lt!2274852 () Unit!156336)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!726 ((InoxSet Context!10170) (InoxSet Context!10170) List!63402) Unit!156336)

(assert (=> b!5709286 (= lt!2274852 (lemmaZipperConcatMatchesSameAsBothZippers!726 lt!2274839 lt!2274853 (t!376722 s!2326)))))

(declare-fun res!2410068 () Bool)

(assert (=> b!5709286 (= res!2410068 (matchZipper!1839 lt!2274839 (t!376722 s!2326)))))

(declare-fun e!3511646 () Bool)

(assert (=> b!5709286 (=> res!2410068 e!3511646)))

(assert (=> b!5709286 (= (matchZipper!1839 ((_ map or) lt!2274839 lt!2274853) (t!376722 s!2326)) e!3511646)))

(declare-fun setElem!38225 () Context!10170)

(declare-fun setNonEmpty!38225 () Bool)

(declare-fun tp!1582701 () Bool)

(declare-fun inv!82499 (Context!10170) Bool)

(assert (=> setNonEmpty!38225 (= setRes!38225 (and tp!1582701 (inv!82499 setElem!38225) e!3511658))))

(declare-fun setRest!38225 () (InoxSet Context!10170))

(assert (=> setNonEmpty!38225 (= z!1189 ((_ map or) (store ((as const (Array Context!10170 Bool)) false) setElem!38225 true) setRest!38225))))

(declare-fun b!5709287 () Bool)

(declare-fun res!2410070 () Bool)

(assert (=> b!5709287 (=> res!2410070 e!3511656)))

(declare-fun generalisedConcat!1316 (List!63403) Regex!15701)

(assert (=> b!5709287 (= res!2410070 (not (= r!7292 (generalisedConcat!1316 (exprs!5585 (h!69728 zl!343))))))))

(declare-fun lt!2274823 () tuple2!65596)

(assert (=> b!5709288 (= e!3511654 (= (_1!36101 lt!2274833) (++!13893 (_1!36101 lt!2274823) (_2!36101 lt!2274823))))))

(declare-fun lt!2274849 () Option!15710)

(assert (=> b!5709288 (= lt!2274823 (get!21811 lt!2274849))))

(assert (=> b!5709288 (= (Exists!2801 lambda!307931) (Exists!2801 lambda!307933))))

(declare-fun lt!2274829 () Unit!156336)

(assert (=> b!5709288 (= lt!2274829 (lemmaExistCutMatchRandMatchRSpecEquivalent!1430 (reg!16030 (regOne!31914 r!7292)) lt!2274841 (_1!36101 lt!2274833)))))

(assert (=> b!5709288 (= (Exists!2801 lambda!307931) (Exists!2801 lambda!307932))))

(declare-fun lt!2274845 () Unit!156336)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!538 (Regex!15701 List!63402) Unit!156336)

(assert (=> b!5709288 (= lt!2274845 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!538 (reg!16030 (regOne!31914 r!7292)) (_1!36101 lt!2274833)))))

(assert (=> b!5709288 (= (isDefined!12413 lt!2274849) (Exists!2801 lambda!307931))))

(assert (=> b!5709288 (= lt!2274849 (findConcatSeparation!2124 (reg!16030 (regOne!31914 r!7292)) lt!2274841 Nil!63278 (_1!36101 lt!2274833) (_1!36101 lt!2274833)))))

(declare-fun lt!2274838 () Unit!156336)

(assert (=> b!5709288 (= lt!2274838 (lemmaFindConcatSeparationEquivalentToExists!1888 (reg!16030 (regOne!31914 r!7292)) lt!2274841 (_1!36101 lt!2274833)))))

(declare-fun matchRSpec!2804 (Regex!15701 List!63402) Bool)

(assert (=> b!5709288 (matchRSpec!2804 lt!2274841 (_1!36101 lt!2274833))))

(declare-fun lt!2274824 () Unit!156336)

(declare-fun mainMatchTheorem!2804 (Regex!15701 List!63402) Unit!156336)

(assert (=> b!5709288 (= lt!2274824 (mainMatchTheorem!2804 lt!2274841 (_1!36101 lt!2274833)))))

(declare-fun b!5709289 () Bool)

(declare-fun res!2410085 () Bool)

(assert (=> b!5709289 (=> res!2410085 e!3511654)))

(declare-fun isEmpty!35145 (List!63402) Bool)

(assert (=> b!5709289 (= res!2410085 (isEmpty!35145 (_1!36101 lt!2274833)))))

(declare-fun b!5709290 () Bool)

(assert (=> b!5709290 (= e!3511649 (not e!3511656))))

(declare-fun res!2410066 () Bool)

(assert (=> b!5709290 (=> res!2410066 e!3511656)))

(assert (=> b!5709290 (= res!2410066 (not ((_ is Cons!63280) zl!343)))))

(assert (=> b!5709290 (= lt!2274843 lt!2274847)))

(assert (=> b!5709290 (= lt!2274847 (matchRSpec!2804 r!7292 s!2326))))

(assert (=> b!5709290 (= lt!2274843 (matchR!7886 r!7292 s!2326))))

(declare-fun lt!2274825 () Unit!156336)

(assert (=> b!5709290 (= lt!2274825 (mainMatchTheorem!2804 r!7292 s!2326))))

(declare-fun b!5709266 () Bool)

(declare-fun res!2410076 () Bool)

(assert (=> b!5709266 (=> res!2410076 e!3511645)))

(assert (=> b!5709266 (= res!2410076 (or ((_ is Concat!24546) (regOne!31914 r!7292)) (not ((_ is Star!15701) (regOne!31914 r!7292)))))))

(declare-fun res!2410072 () Bool)

(assert (=> start!587984 (=> (not res!2410072) (not e!3511659))))

(declare-fun validRegex!7437 (Regex!15701) Bool)

(assert (=> start!587984 (= res!2410072 (validRegex!7437 r!7292))))

(assert (=> start!587984 e!3511659))

(assert (=> start!587984 e!3511650))

(declare-fun condSetEmpty!38225 () Bool)

(assert (=> start!587984 (= condSetEmpty!38225 (= z!1189 ((as const (Array Context!10170 Bool)) false)))))

(assert (=> start!587984 setRes!38225))

(declare-fun e!3511647 () Bool)

(assert (=> start!587984 e!3511647))

(assert (=> start!587984 e!3511660))

(declare-fun b!5709291 () Bool)

(assert (=> b!5709291 (= e!3511661 e!3511657)))

(declare-fun res!2410084 () Bool)

(assert (=> b!5709291 (=> res!2410084 e!3511657)))

(assert (=> b!5709291 (= res!2410084 (not lt!2274843))))

(assert (=> b!5709291 e!3511653))

(declare-fun res!2410082 () Bool)

(assert (=> b!5709291 (=> (not res!2410082) (not e!3511653))))

(assert (=> b!5709291 (= res!2410082 (= (matchR!7886 lt!2274837 s!2326) (matchRSpec!2804 lt!2274837 s!2326)))))

(declare-fun lt!2274814 () Unit!156336)

(assert (=> b!5709291 (= lt!2274814 (mainMatchTheorem!2804 lt!2274837 s!2326))))

(declare-fun b!5709292 () Bool)

(assert (=> b!5709292 (= e!3511646 (matchZipper!1839 lt!2274853 (t!376722 s!2326)))))

(declare-fun b!5709293 () Bool)

(declare-fun tp!1582704 () Bool)

(assert (=> b!5709293 (= e!3511647 (and (inv!82499 (h!69728 zl!343)) e!3511642 tp!1582704))))

(declare-fun b!5709294 () Bool)

(declare-fun res!2410065 () Bool)

(assert (=> b!5709294 (=> res!2410065 e!3511661)))

(assert (=> b!5709294 (= res!2410065 (not (= (unfocusZipper!1443 (Cons!63280 lt!2274830 Nil!63280)) lt!2274851)))))

(declare-fun b!5709295 () Bool)

(declare-fun res!2410077 () Bool)

(assert (=> b!5709295 (=> res!2410077 e!3511656)))

(declare-fun generalisedUnion!1564 (List!63403) Regex!15701)

(declare-fun unfocusZipperList!1129 (List!63404) List!63403)

(assert (=> b!5709295 (= res!2410077 (not (= r!7292 (generalisedUnion!1564 (unfocusZipperList!1129 zl!343)))))))

(declare-fun b!5709296 () Bool)

(declare-fun res!2410069 () Bool)

(assert (=> b!5709296 (=> res!2410069 e!3511656)))

(declare-fun isEmpty!35146 (List!63404) Bool)

(assert (=> b!5709296 (= res!2410069 (not (isEmpty!35146 (t!376724 zl!343))))))

(declare-fun b!5709297 () Bool)

(declare-fun res!2410075 () Bool)

(assert (=> b!5709297 (=> res!2410075 e!3511656)))

(assert (=> b!5709297 (= res!2410075 (or ((_ is EmptyExpr!15701) r!7292) ((_ is EmptyLang!15701) r!7292) ((_ is ElementMatch!15701) r!7292) ((_ is Union!15701) r!7292) (not ((_ is Concat!24546) r!7292))))))

(assert (= (and start!587984 res!2410072) b!5709267))

(assert (= (and b!5709267 res!2410081) b!5709279))

(assert (= (and b!5709279 res!2410062) b!5709290))

(assert (= (and b!5709290 (not res!2410066)) b!5709296))

(assert (= (and b!5709296 (not res!2410069)) b!5709287))

(assert (= (and b!5709287 (not res!2410070)) b!5709268))

(assert (= (and b!5709268 (not res!2410089)) b!5709295))

(assert (= (and b!5709295 (not res!2410077)) b!5709297))

(assert (= (and b!5709297 (not res!2410075)) b!5709272))

(assert (= (and b!5709272 (not res!2410071)) b!5709281))

(assert (= (and b!5709281 (not res!2410064)) b!5709282))

(assert (= (and b!5709282 c!1006308) b!5709286))

(assert (= (and b!5709282 (not c!1006308)) b!5709260))

(assert (= (and b!5709286 (not res!2410068)) b!5709292))

(assert (= (and b!5709282 (not res!2410080)) b!5709259))

(assert (= (and b!5709259 res!2410063) b!5709269))

(assert (= (and b!5709259 (not res!2410083)) b!5709266))

(assert (= (and b!5709266 (not res!2410076)) b!5709264))

(assert (= (and b!5709264 (not res!2410090)) b!5709262))

(assert (= (and b!5709262 (not res!2410067)) b!5709265))

(assert (= (and b!5709265 (not res!2410091)) b!5709271))

(assert (= (and b!5709271 (not res!2410078)) b!5709258))

(assert (= (and b!5709258 (not res!2410079)) b!5709283))

(assert (= (and b!5709283 (not res!2410086)) b!5709263))

(assert (= (and b!5709263 (not res!2410073)) b!5709294))

(assert (= (and b!5709294 (not res!2410065)) b!5709291))

(assert (= (and b!5709291 res!2410082) b!5709274))

(assert (= (and b!5709291 (not res!2410084)) b!5709284))

(assert (= (and b!5709284 (not res!2410074)) b!5709285))

(assert (= (and b!5709285 (not res!2410088)) b!5709278))

(assert (= (and b!5709278 (not res!2410087)) b!5709289))

(assert (= (and b!5709289 (not res!2410085)) b!5709288))

(assert (= (and start!587984 ((_ is ElementMatch!15701) r!7292)) b!5709261))

(assert (= (and start!587984 ((_ is Concat!24546) r!7292)) b!5709280))

(assert (= (and start!587984 ((_ is Star!15701) r!7292)) b!5709273))

(assert (= (and start!587984 ((_ is Union!15701) r!7292)) b!5709277))

(assert (= (and start!587984 condSetEmpty!38225) setIsEmpty!38225))

(assert (= (and start!587984 (not condSetEmpty!38225)) setNonEmpty!38225))

(assert (= setNonEmpty!38225 b!5709276))

(assert (= b!5709293 b!5709270))

(assert (= (and start!587984 ((_ is Cons!63280) zl!343)) b!5709293))

(assert (= (and start!587984 ((_ is Cons!63278) s!2326)) b!5709275))

(declare-fun m!6663054 () Bool)

(assert (=> b!5709283 m!6663054))

(declare-fun m!6663056 () Bool)

(assert (=> b!5709291 m!6663056))

(declare-fun m!6663058 () Bool)

(assert (=> b!5709291 m!6663058))

(declare-fun m!6663060 () Bool)

(assert (=> b!5709291 m!6663060))

(declare-fun m!6663062 () Bool)

(assert (=> b!5709289 m!6663062))

(declare-fun m!6663064 () Bool)

(assert (=> b!5709290 m!6663064))

(declare-fun m!6663066 () Bool)

(assert (=> b!5709290 m!6663066))

(declare-fun m!6663068 () Bool)

(assert (=> b!5709290 m!6663068))

(declare-fun m!6663070 () Bool)

(assert (=> b!5709295 m!6663070))

(assert (=> b!5709295 m!6663070))

(declare-fun m!6663072 () Bool)

(assert (=> b!5709295 m!6663072))

(declare-fun m!6663074 () Bool)

(assert (=> b!5709278 m!6663074))

(declare-fun m!6663076 () Bool)

(assert (=> b!5709263 m!6663076))

(declare-fun m!6663078 () Bool)

(assert (=> b!5709263 m!6663078))

(declare-fun m!6663080 () Bool)

(assert (=> b!5709263 m!6663080))

(declare-fun m!6663082 () Bool)

(assert (=> b!5709263 m!6663082))

(declare-fun m!6663084 () Bool)

(assert (=> b!5709263 m!6663084))

(declare-fun m!6663086 () Bool)

(assert (=> b!5709263 m!6663086))

(declare-fun m!6663088 () Bool)

(assert (=> b!5709263 m!6663088))

(declare-fun m!6663090 () Bool)

(assert (=> b!5709263 m!6663090))

(declare-fun m!6663092 () Bool)

(assert (=> b!5709263 m!6663092))

(declare-fun m!6663094 () Bool)

(assert (=> b!5709265 m!6663094))

(declare-fun m!6663096 () Bool)

(assert (=> b!5709265 m!6663096))

(declare-fun m!6663098 () Bool)

(assert (=> b!5709293 m!6663098))

(declare-fun m!6663100 () Bool)

(assert (=> b!5709284 m!6663100))

(declare-fun m!6663102 () Bool)

(assert (=> b!5709284 m!6663102))

(declare-fun m!6663104 () Bool)

(assert (=> b!5709284 m!6663104))

(declare-fun m!6663106 () Bool)

(assert (=> b!5709284 m!6663106))

(declare-fun m!6663108 () Bool)

(assert (=> b!5709284 m!6663108))

(declare-fun m!6663110 () Bool)

(assert (=> b!5709284 m!6663110))

(declare-fun m!6663112 () Bool)

(assert (=> b!5709284 m!6663112))

(declare-fun m!6663114 () Bool)

(assert (=> b!5709284 m!6663114))

(assert (=> b!5709284 m!6663112))

(declare-fun m!6663116 () Bool)

(assert (=> b!5709287 m!6663116))

(declare-fun m!6663118 () Bool)

(assert (=> b!5709286 m!6663118))

(declare-fun m!6663120 () Bool)

(assert (=> b!5709286 m!6663120))

(declare-fun m!6663122 () Bool)

(assert (=> b!5709286 m!6663122))

(declare-fun m!6663124 () Bool)

(assert (=> b!5709282 m!6663124))

(declare-fun m!6663126 () Bool)

(assert (=> b!5709282 m!6663126))

(declare-fun m!6663128 () Bool)

(assert (=> b!5709282 m!6663128))

(declare-fun m!6663130 () Bool)

(assert (=> b!5709282 m!6663130))

(declare-fun m!6663132 () Bool)

(assert (=> b!5709282 m!6663132))

(declare-fun m!6663134 () Bool)

(assert (=> b!5709282 m!6663134))

(declare-fun m!6663136 () Bool)

(assert (=> b!5709282 m!6663136))

(declare-fun m!6663138 () Bool)

(assert (=> b!5709269 m!6663138))

(declare-fun m!6663140 () Bool)

(assert (=> b!5709279 m!6663140))

(declare-fun m!6663142 () Bool)

(assert (=> b!5709281 m!6663142))

(declare-fun m!6663144 () Bool)

(assert (=> b!5709285 m!6663144))

(declare-fun m!6663146 () Bool)

(assert (=> b!5709294 m!6663146))

(declare-fun m!6663148 () Bool)

(assert (=> b!5709262 m!6663148))

(declare-fun m!6663150 () Bool)

(assert (=> b!5709262 m!6663150))

(declare-fun m!6663152 () Bool)

(assert (=> b!5709262 m!6663152))

(declare-fun m!6663154 () Bool)

(assert (=> b!5709262 m!6663154))

(declare-fun m!6663156 () Bool)

(assert (=> b!5709262 m!6663156))

(declare-fun m!6663158 () Bool)

(assert (=> b!5709296 m!6663158))

(declare-fun m!6663160 () Bool)

(assert (=> b!5709288 m!6663160))

(declare-fun m!6663162 () Bool)

(assert (=> b!5709288 m!6663162))

(declare-fun m!6663164 () Bool)

(assert (=> b!5709288 m!6663164))

(declare-fun m!6663166 () Bool)

(assert (=> b!5709288 m!6663166))

(declare-fun m!6663168 () Bool)

(assert (=> b!5709288 m!6663168))

(declare-fun m!6663170 () Bool)

(assert (=> b!5709288 m!6663170))

(assert (=> b!5709288 m!6663166))

(declare-fun m!6663172 () Bool)

(assert (=> b!5709288 m!6663172))

(declare-fun m!6663174 () Bool)

(assert (=> b!5709288 m!6663174))

(declare-fun m!6663176 () Bool)

(assert (=> b!5709288 m!6663176))

(assert (=> b!5709288 m!6663166))

(declare-fun m!6663178 () Bool)

(assert (=> b!5709288 m!6663178))

(declare-fun m!6663180 () Bool)

(assert (=> b!5709288 m!6663180))

(declare-fun m!6663182 () Bool)

(assert (=> b!5709288 m!6663182))

(declare-fun m!6663184 () Bool)

(assert (=> b!5709292 m!6663184))

(declare-fun m!6663186 () Bool)

(assert (=> setNonEmpty!38225 m!6663186))

(declare-fun m!6663188 () Bool)

(assert (=> start!587984 m!6663188))

(declare-fun m!6663190 () Bool)

(assert (=> b!5709267 m!6663190))

(declare-fun m!6663192 () Bool)

(assert (=> b!5709272 m!6663192))

(declare-fun m!6663194 () Bool)

(assert (=> b!5709272 m!6663194))

(declare-fun m!6663196 () Bool)

(assert (=> b!5709272 m!6663196))

(declare-fun m!6663198 () Bool)

(assert (=> b!5709272 m!6663198))

(declare-fun m!6663200 () Bool)

(assert (=> b!5709272 m!6663200))

(assert (=> b!5709272 m!6663200))

(assert (=> b!5709272 m!6663194))

(declare-fun m!6663202 () Bool)

(assert (=> b!5709272 m!6663202))

(declare-fun m!6663204 () Bool)

(assert (=> b!5709264 m!6663204))

(check-sat (not b!5709270) (not b!5709262) (not b!5709272) (not b!5709290) tp_is_empty!40655 (not b!5709285) (not b!5709284) (not b!5709296) (not b!5709287) (not b!5709283) (not b!5709273) (not b!5709293) (not b!5709291) (not b!5709282) (not b!5709288) (not b!5709263) (not b!5709275) (not b!5709292) (not b!5709265) (not start!587984) (not b!5709276) (not b!5709264) (not b!5709279) (not b!5709294) (not b!5709280) (not b!5709277) (not b!5709289) (not b!5709267) (not b!5709281) (not setNonEmpty!38225) (not b!5709286) (not b!5709269) (not b!5709295) (not b!5709278))
(check-sat)
(get-model)

(declare-fun d!1801394 () Bool)

(declare-fun choose!43148 (Int) Bool)

(assert (=> d!1801394 (= (Exists!2801 lambda!307932) (choose!43148 lambda!307932))))

(declare-fun bs!1333791 () Bool)

(assert (= bs!1333791 d!1801394))

(declare-fun m!6663280 () Bool)

(assert (=> bs!1333791 m!6663280))

(assert (=> b!5709288 d!1801394))

(declare-fun b!5709473 () Bool)

(declare-fun e!3511756 () Bool)

(declare-fun lt!2274884 () List!63402)

(assert (=> b!5709473 (= e!3511756 (or (not (= (_2!36101 lt!2274823) Nil!63278)) (= lt!2274884 (_1!36101 lt!2274823))))))

(declare-fun b!5709470 () Bool)

(declare-fun e!3511755 () List!63402)

(assert (=> b!5709470 (= e!3511755 (_2!36101 lt!2274823))))

(declare-fun d!1801396 () Bool)

(assert (=> d!1801396 e!3511756))

(declare-fun res!2410160 () Bool)

(assert (=> d!1801396 (=> (not res!2410160) (not e!3511756))))

(declare-fun content!11486 (List!63402) (InoxSet C!31672))

(assert (=> d!1801396 (= res!2410160 (= (content!11486 lt!2274884) ((_ map or) (content!11486 (_1!36101 lt!2274823)) (content!11486 (_2!36101 lt!2274823)))))))

(assert (=> d!1801396 (= lt!2274884 e!3511755)))

(declare-fun c!1006360 () Bool)

(assert (=> d!1801396 (= c!1006360 ((_ is Nil!63278) (_1!36101 lt!2274823)))))

(assert (=> d!1801396 (= (++!13893 (_1!36101 lt!2274823) (_2!36101 lt!2274823)) lt!2274884)))

(declare-fun b!5709472 () Bool)

(declare-fun res!2410161 () Bool)

(assert (=> b!5709472 (=> (not res!2410161) (not e!3511756))))

(declare-fun size!40016 (List!63402) Int)

(assert (=> b!5709472 (= res!2410161 (= (size!40016 lt!2274884) (+ (size!40016 (_1!36101 lt!2274823)) (size!40016 (_2!36101 lt!2274823)))))))

(declare-fun b!5709471 () Bool)

(assert (=> b!5709471 (= e!3511755 (Cons!63278 (h!69726 (_1!36101 lt!2274823)) (++!13893 (t!376722 (_1!36101 lt!2274823)) (_2!36101 lt!2274823))))))

(assert (= (and d!1801396 c!1006360) b!5709470))

(assert (= (and d!1801396 (not c!1006360)) b!5709471))

(assert (= (and d!1801396 res!2410160) b!5709472))

(assert (= (and b!5709472 res!2410161) b!5709473))

(declare-fun m!6663282 () Bool)

(assert (=> d!1801396 m!6663282))

(declare-fun m!6663284 () Bool)

(assert (=> d!1801396 m!6663284))

(declare-fun m!6663286 () Bool)

(assert (=> d!1801396 m!6663286))

(declare-fun m!6663288 () Bool)

(assert (=> b!5709472 m!6663288))

(declare-fun m!6663290 () Bool)

(assert (=> b!5709472 m!6663290))

(declare-fun m!6663292 () Bool)

(assert (=> b!5709472 m!6663292))

(declare-fun m!6663294 () Bool)

(assert (=> b!5709471 m!6663294))

(assert (=> b!5709288 d!1801396))

(declare-fun d!1801398 () Bool)

(assert (=> d!1801398 (= (Exists!2801 lambda!307931) (choose!43148 lambda!307931))))

(declare-fun bs!1333792 () Bool)

(assert (= bs!1333792 d!1801398))

(declare-fun m!6663296 () Bool)

(assert (=> bs!1333792 m!6663296))

(assert (=> b!5709288 d!1801398))

(declare-fun bs!1333793 () Bool)

(declare-fun d!1801400 () Bool)

(assert (= bs!1333793 (and d!1801400 b!5709284)))

(declare-fun lambda!307954 () Int)

(assert (=> bs!1333793 (not (= lambda!307954 lambda!307930))))

(declare-fun bs!1333794 () Bool)

(assert (= bs!1333794 (and d!1801400 b!5709272)))

(assert (=> bs!1333794 (not (= lambda!307954 lambda!307927))))

(declare-fun bs!1333795 () Bool)

(assert (= bs!1333795 (and d!1801400 b!5709288)))

(assert (=> bs!1333795 (not (= lambda!307954 lambda!307933))))

(assert (=> bs!1333795 (not (= lambda!307954 lambda!307932))))

(assert (=> bs!1333794 (= (and (= (_1!36101 lt!2274833) s!2326) (= (reg!16030 (regOne!31914 r!7292)) (regOne!31914 r!7292)) (= lt!2274841 (regTwo!31914 r!7292))) (= lambda!307954 lambda!307926))))

(assert (=> bs!1333793 (= (and (= (_1!36101 lt!2274833) s!2326) (= (reg!16030 (regOne!31914 r!7292)) lt!2274841) (= lt!2274841 (regTwo!31914 r!7292))) (= lambda!307954 lambda!307929))))

(assert (=> bs!1333795 (= lambda!307954 lambda!307931)))

(assert (=> d!1801400 true))

(assert (=> d!1801400 true))

(assert (=> d!1801400 true))

(declare-fun lambda!307957 () Int)

(assert (=> bs!1333793 (= (and (= (_1!36101 lt!2274833) s!2326) (= (reg!16030 (regOne!31914 r!7292)) lt!2274841) (= lt!2274841 (regTwo!31914 r!7292))) (= lambda!307957 lambda!307930))))

(declare-fun bs!1333796 () Bool)

(assert (= bs!1333796 d!1801400))

(assert (=> bs!1333796 (not (= lambda!307957 lambda!307954))))

(assert (=> bs!1333794 (= (and (= (_1!36101 lt!2274833) s!2326) (= (reg!16030 (regOne!31914 r!7292)) (regOne!31914 r!7292)) (= lt!2274841 (regTwo!31914 r!7292))) (= lambda!307957 lambda!307927))))

(assert (=> bs!1333795 (= lambda!307957 lambda!307933)))

(assert (=> bs!1333795 (not (= lambda!307957 lambda!307932))))

(assert (=> bs!1333794 (not (= lambda!307957 lambda!307926))))

(assert (=> bs!1333793 (not (= lambda!307957 lambda!307929))))

(assert (=> bs!1333795 (not (= lambda!307957 lambda!307931))))

(assert (=> d!1801400 true))

(assert (=> d!1801400 true))

(assert (=> d!1801400 true))

(assert (=> d!1801400 (= (Exists!2801 lambda!307954) (Exists!2801 lambda!307957))))

(declare-fun lt!2274890 () Unit!156336)

(declare-fun choose!43149 (Regex!15701 Regex!15701 List!63402) Unit!156336)

(assert (=> d!1801400 (= lt!2274890 (choose!43149 (reg!16030 (regOne!31914 r!7292)) lt!2274841 (_1!36101 lt!2274833)))))

(assert (=> d!1801400 (validRegex!7437 (reg!16030 (regOne!31914 r!7292)))))

(assert (=> d!1801400 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1430 (reg!16030 (regOne!31914 r!7292)) lt!2274841 (_1!36101 lt!2274833)) lt!2274890)))

(declare-fun m!6663318 () Bool)

(assert (=> bs!1333796 m!6663318))

(declare-fun m!6663320 () Bool)

(assert (=> bs!1333796 m!6663320))

(declare-fun m!6663322 () Bool)

(assert (=> bs!1333796 m!6663322))

(declare-fun m!6663324 () Bool)

(assert (=> bs!1333796 m!6663324))

(assert (=> b!5709288 d!1801400))

(declare-fun bs!1333805 () Bool)

(declare-fun d!1801404 () Bool)

(assert (= bs!1333805 (and d!1801404 b!5709284)))

(declare-fun lambda!307966 () Int)

(assert (=> bs!1333805 (not (= lambda!307966 lambda!307930))))

(declare-fun bs!1333806 () Bool)

(assert (= bs!1333806 (and d!1801404 d!1801400)))

(assert (=> bs!1333806 (= (= (Star!15701 (reg!16030 (regOne!31914 r!7292))) lt!2274841) (= lambda!307966 lambda!307954))))

(declare-fun bs!1333807 () Bool)

(assert (= bs!1333807 (and d!1801404 b!5709272)))

(assert (=> bs!1333807 (not (= lambda!307966 lambda!307927))))

(declare-fun bs!1333808 () Bool)

(assert (= bs!1333808 (and d!1801404 b!5709288)))

(assert (=> bs!1333808 (not (= lambda!307966 lambda!307933))))

(assert (=> bs!1333808 (not (= lambda!307966 lambda!307932))))

(assert (=> bs!1333806 (not (= lambda!307966 lambda!307957))))

(assert (=> bs!1333807 (= (and (= (_1!36101 lt!2274833) s!2326) (= (reg!16030 (regOne!31914 r!7292)) (regOne!31914 r!7292)) (= (Star!15701 (reg!16030 (regOne!31914 r!7292))) (regTwo!31914 r!7292))) (= lambda!307966 lambda!307926))))

(assert (=> bs!1333805 (= (and (= (_1!36101 lt!2274833) s!2326) (= (reg!16030 (regOne!31914 r!7292)) lt!2274841) (= (Star!15701 (reg!16030 (regOne!31914 r!7292))) (regTwo!31914 r!7292))) (= lambda!307966 lambda!307929))))

(assert (=> bs!1333808 (= (= (Star!15701 (reg!16030 (regOne!31914 r!7292))) lt!2274841) (= lambda!307966 lambda!307931))))

(assert (=> d!1801404 true))

(assert (=> d!1801404 true))

(declare-fun lambda!307968 () Int)

(assert (=> bs!1333805 (not (= lambda!307968 lambda!307930))))

(assert (=> bs!1333806 (not (= lambda!307968 lambda!307954))))

(assert (=> bs!1333807 (not (= lambda!307968 lambda!307927))))

(assert (=> bs!1333808 (not (= lambda!307968 lambda!307933))))

(assert (=> bs!1333808 (= (= (Star!15701 (reg!16030 (regOne!31914 r!7292))) lt!2274841) (= lambda!307968 lambda!307932))))

(assert (=> bs!1333807 (not (= lambda!307968 lambda!307926))))

(assert (=> bs!1333805 (not (= lambda!307968 lambda!307929))))

(assert (=> bs!1333808 (not (= lambda!307968 lambda!307931))))

(declare-fun bs!1333814 () Bool)

(assert (= bs!1333814 d!1801404))

(assert (=> bs!1333814 (not (= lambda!307968 lambda!307966))))

(assert (=> bs!1333806 (not (= lambda!307968 lambda!307957))))

(assert (=> d!1801404 true))

(assert (=> d!1801404 true))

(assert (=> d!1801404 (= (Exists!2801 lambda!307966) (Exists!2801 lambda!307968))))

(declare-fun lt!2274898 () Unit!156336)

(declare-fun choose!43150 (Regex!15701 List!63402) Unit!156336)

(assert (=> d!1801404 (= lt!2274898 (choose!43150 (reg!16030 (regOne!31914 r!7292)) (_1!36101 lt!2274833)))))

(assert (=> d!1801404 (validRegex!7437 (reg!16030 (regOne!31914 r!7292)))))

(assert (=> d!1801404 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!538 (reg!16030 (regOne!31914 r!7292)) (_1!36101 lt!2274833)) lt!2274898)))

(declare-fun m!6663348 () Bool)

(assert (=> bs!1333814 m!6663348))

(declare-fun m!6663350 () Bool)

(assert (=> bs!1333814 m!6663350))

(declare-fun m!6663352 () Bool)

(assert (=> bs!1333814 m!6663352))

(assert (=> bs!1333814 m!6663324))

(assert (=> b!5709288 d!1801404))

(declare-fun b!5709564 () Bool)

(declare-fun e!3511802 () Option!15710)

(assert (=> b!5709564 (= e!3511802 (Some!15709 (tuple2!65597 Nil!63278 (_1!36101 lt!2274833))))))

(declare-fun b!5709565 () Bool)

(declare-fun e!3511801 () Bool)

(declare-fun lt!2274910 () Option!15710)

(assert (=> b!5709565 (= e!3511801 (= (++!13893 (_1!36101 (get!21811 lt!2274910)) (_2!36101 (get!21811 lt!2274910))) (_1!36101 lt!2274833)))))

(declare-fun b!5709566 () Bool)

(declare-fun res!2410224 () Bool)

(assert (=> b!5709566 (=> (not res!2410224) (not e!3511801))))

(assert (=> b!5709566 (= res!2410224 (matchR!7886 (reg!16030 (regOne!31914 r!7292)) (_1!36101 (get!21811 lt!2274910))))))

(declare-fun b!5709567 () Bool)

(declare-fun lt!2274911 () Unit!156336)

(declare-fun lt!2274909 () Unit!156336)

(assert (=> b!5709567 (= lt!2274911 lt!2274909)))

(assert (=> b!5709567 (= (++!13893 (++!13893 Nil!63278 (Cons!63278 (h!69726 (_1!36101 lt!2274833)) Nil!63278)) (t!376722 (_1!36101 lt!2274833))) (_1!36101 lt!2274833))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2060 (List!63402 C!31672 List!63402 List!63402) Unit!156336)

(assert (=> b!5709567 (= lt!2274909 (lemmaMoveElementToOtherListKeepsConcatEq!2060 Nil!63278 (h!69726 (_1!36101 lt!2274833)) (t!376722 (_1!36101 lt!2274833)) (_1!36101 lt!2274833)))))

(declare-fun e!3511803 () Option!15710)

(assert (=> b!5709567 (= e!3511803 (findConcatSeparation!2124 (reg!16030 (regOne!31914 r!7292)) lt!2274841 (++!13893 Nil!63278 (Cons!63278 (h!69726 (_1!36101 lt!2274833)) Nil!63278)) (t!376722 (_1!36101 lt!2274833)) (_1!36101 lt!2274833)))))

(declare-fun d!1801412 () Bool)

(declare-fun e!3511804 () Bool)

(assert (=> d!1801412 e!3511804))

(declare-fun res!2410228 () Bool)

(assert (=> d!1801412 (=> res!2410228 e!3511804)))

(assert (=> d!1801412 (= res!2410228 e!3511801)))

(declare-fun res!2410227 () Bool)

(assert (=> d!1801412 (=> (not res!2410227) (not e!3511801))))

(assert (=> d!1801412 (= res!2410227 (isDefined!12413 lt!2274910))))

(assert (=> d!1801412 (= lt!2274910 e!3511802)))

(declare-fun c!1006374 () Bool)

(declare-fun e!3511805 () Bool)

(assert (=> d!1801412 (= c!1006374 e!3511805)))

(declare-fun res!2410226 () Bool)

(assert (=> d!1801412 (=> (not res!2410226) (not e!3511805))))

(assert (=> d!1801412 (= res!2410226 (matchR!7886 (reg!16030 (regOne!31914 r!7292)) Nil!63278))))

(assert (=> d!1801412 (validRegex!7437 (reg!16030 (regOne!31914 r!7292)))))

(assert (=> d!1801412 (= (findConcatSeparation!2124 (reg!16030 (regOne!31914 r!7292)) lt!2274841 Nil!63278 (_1!36101 lt!2274833) (_1!36101 lt!2274833)) lt!2274910)))

(declare-fun b!5709568 () Bool)

(assert (=> b!5709568 (= e!3511802 e!3511803)))

(declare-fun c!1006375 () Bool)

(assert (=> b!5709568 (= c!1006375 ((_ is Nil!63278) (_1!36101 lt!2274833)))))

(declare-fun b!5709569 () Bool)

(assert (=> b!5709569 (= e!3511803 None!15709)))

(declare-fun b!5709570 () Bool)

(declare-fun res!2410225 () Bool)

(assert (=> b!5709570 (=> (not res!2410225) (not e!3511801))))

(assert (=> b!5709570 (= res!2410225 (matchR!7886 lt!2274841 (_2!36101 (get!21811 lt!2274910))))))

(declare-fun b!5709571 () Bool)

(assert (=> b!5709571 (= e!3511805 (matchR!7886 lt!2274841 (_1!36101 lt!2274833)))))

(declare-fun b!5709572 () Bool)

(assert (=> b!5709572 (= e!3511804 (not (isDefined!12413 lt!2274910)))))

(assert (= (and d!1801412 res!2410226) b!5709571))

(assert (= (and d!1801412 c!1006374) b!5709564))

(assert (= (and d!1801412 (not c!1006374)) b!5709568))

(assert (= (and b!5709568 c!1006375) b!5709569))

(assert (= (and b!5709568 (not c!1006375)) b!5709567))

(assert (= (and d!1801412 res!2410227) b!5709566))

(assert (= (and b!5709566 res!2410224) b!5709570))

(assert (= (and b!5709570 res!2410225) b!5709565))

(assert (= (and d!1801412 (not res!2410228)) b!5709572))

(assert (=> b!5709571 m!6663144))

(declare-fun m!6663360 () Bool)

(assert (=> b!5709565 m!6663360))

(declare-fun m!6663362 () Bool)

(assert (=> b!5709565 m!6663362))

(declare-fun m!6663364 () Bool)

(assert (=> b!5709572 m!6663364))

(assert (=> d!1801412 m!6663364))

(declare-fun m!6663366 () Bool)

(assert (=> d!1801412 m!6663366))

(assert (=> d!1801412 m!6663324))

(assert (=> b!5709566 m!6663360))

(declare-fun m!6663368 () Bool)

(assert (=> b!5709566 m!6663368))

(declare-fun m!6663370 () Bool)

(assert (=> b!5709567 m!6663370))

(assert (=> b!5709567 m!6663370))

(declare-fun m!6663372 () Bool)

(assert (=> b!5709567 m!6663372))

(declare-fun m!6663374 () Bool)

(assert (=> b!5709567 m!6663374))

(assert (=> b!5709567 m!6663370))

(declare-fun m!6663376 () Bool)

(assert (=> b!5709567 m!6663376))

(assert (=> b!5709570 m!6663360))

(declare-fun m!6663378 () Bool)

(assert (=> b!5709570 m!6663378))

(assert (=> b!5709288 d!1801412))

(declare-fun d!1801418 () Bool)

(assert (=> d!1801418 (= (get!21811 lt!2274849) (v!51764 lt!2274849))))

(assert (=> b!5709288 d!1801418))

(declare-fun d!1801420 () Bool)

(assert (=> d!1801420 (= (Exists!2801 lambda!307933) (choose!43148 lambda!307933))))

(declare-fun bs!1333835 () Bool)

(assert (= bs!1333835 d!1801420))

(declare-fun m!6663380 () Bool)

(assert (=> bs!1333835 m!6663380))

(assert (=> b!5709288 d!1801420))

(declare-fun d!1801422 () Bool)

(declare-fun isEmpty!35148 (Option!15710) Bool)

(assert (=> d!1801422 (= (isDefined!12413 lt!2274849) (not (isEmpty!35148 lt!2274849)))))

(declare-fun bs!1333836 () Bool)

(assert (= bs!1333836 d!1801422))

(declare-fun m!6663388 () Bool)

(assert (=> bs!1333836 m!6663388))

(assert (=> b!5709288 d!1801422))

(declare-fun bs!1333864 () Bool)

(declare-fun d!1801424 () Bool)

(assert (= bs!1333864 (and d!1801424 b!5709284)))

(declare-fun lambda!307980 () Int)

(assert (=> bs!1333864 (not (= lambda!307980 lambda!307930))))

(declare-fun bs!1333865 () Bool)

(assert (= bs!1333865 (and d!1801424 d!1801400)))

(assert (=> bs!1333865 (= lambda!307980 lambda!307954)))

(declare-fun bs!1333866 () Bool)

(assert (= bs!1333866 (and d!1801424 b!5709272)))

(assert (=> bs!1333866 (not (= lambda!307980 lambda!307927))))

(declare-fun bs!1333867 () Bool)

(assert (= bs!1333867 (and d!1801424 b!5709288)))

(assert (=> bs!1333867 (not (= lambda!307980 lambda!307933))))

(assert (=> bs!1333867 (not (= lambda!307980 lambda!307932))))

(assert (=> bs!1333866 (= (and (= (_1!36101 lt!2274833) s!2326) (= (reg!16030 (regOne!31914 r!7292)) (regOne!31914 r!7292)) (= lt!2274841 (regTwo!31914 r!7292))) (= lambda!307980 lambda!307926))))

(declare-fun bs!1333868 () Bool)

(assert (= bs!1333868 (and d!1801424 d!1801404)))

(assert (=> bs!1333868 (not (= lambda!307980 lambda!307968))))

(assert (=> bs!1333864 (= (and (= (_1!36101 lt!2274833) s!2326) (= (reg!16030 (regOne!31914 r!7292)) lt!2274841) (= lt!2274841 (regTwo!31914 r!7292))) (= lambda!307980 lambda!307929))))

(assert (=> bs!1333867 (= lambda!307980 lambda!307931)))

(assert (=> bs!1333868 (= (= lt!2274841 (Star!15701 (reg!16030 (regOne!31914 r!7292)))) (= lambda!307980 lambda!307966))))

(assert (=> bs!1333865 (not (= lambda!307980 lambda!307957))))

(assert (=> d!1801424 true))

(assert (=> d!1801424 true))

(assert (=> d!1801424 true))

(assert (=> d!1801424 (= (isDefined!12413 (findConcatSeparation!2124 (reg!16030 (regOne!31914 r!7292)) lt!2274841 Nil!63278 (_1!36101 lt!2274833) (_1!36101 lt!2274833))) (Exists!2801 lambda!307980))))

(declare-fun lt!2274920 () Unit!156336)

(declare-fun choose!43152 (Regex!15701 Regex!15701 List!63402) Unit!156336)

(assert (=> d!1801424 (= lt!2274920 (choose!43152 (reg!16030 (regOne!31914 r!7292)) lt!2274841 (_1!36101 lt!2274833)))))

(assert (=> d!1801424 (validRegex!7437 (reg!16030 (regOne!31914 r!7292)))))

(assert (=> d!1801424 (= (lemmaFindConcatSeparationEquivalentToExists!1888 (reg!16030 (regOne!31914 r!7292)) lt!2274841 (_1!36101 lt!2274833)) lt!2274920)))

(declare-fun bs!1333869 () Bool)

(assert (= bs!1333869 d!1801424))

(declare-fun m!6663430 () Bool)

(assert (=> bs!1333869 m!6663430))

(assert (=> bs!1333869 m!6663182))

(declare-fun m!6663432 () Bool)

(assert (=> bs!1333869 m!6663432))

(assert (=> bs!1333869 m!6663324))

(assert (=> bs!1333869 m!6663182))

(declare-fun m!6663434 () Bool)

(assert (=> bs!1333869 m!6663434))

(assert (=> b!5709288 d!1801424))

(declare-fun d!1801442 () Bool)

(assert (=> d!1801442 (= (matchR!7886 lt!2274841 (_1!36101 lt!2274833)) (matchRSpec!2804 lt!2274841 (_1!36101 lt!2274833)))))

(declare-fun lt!2274926 () Unit!156336)

(declare-fun choose!43153 (Regex!15701 List!63402) Unit!156336)

(assert (=> d!1801442 (= lt!2274926 (choose!43153 lt!2274841 (_1!36101 lt!2274833)))))

(assert (=> d!1801442 (validRegex!7437 lt!2274841)))

(assert (=> d!1801442 (= (mainMatchTheorem!2804 lt!2274841 (_1!36101 lt!2274833)) lt!2274926)))

(declare-fun bs!1333876 () Bool)

(assert (= bs!1333876 d!1801442))

(assert (=> bs!1333876 m!6663144))

(assert (=> bs!1333876 m!6663172))

(declare-fun m!6663472 () Bool)

(assert (=> bs!1333876 m!6663472))

(declare-fun m!6663474 () Bool)

(assert (=> bs!1333876 m!6663474))

(assert (=> b!5709288 d!1801442))

(declare-fun bs!1333882 () Bool)

(declare-fun b!5709679 () Bool)

(assert (= bs!1333882 (and b!5709679 b!5709284)))

(declare-fun lambda!307986 () Int)

(assert (=> bs!1333882 (not (= lambda!307986 lambda!307930))))

(declare-fun bs!1333883 () Bool)

(assert (= bs!1333883 (and b!5709679 d!1801400)))

(assert (=> bs!1333883 (not (= lambda!307986 lambda!307954))))

(declare-fun bs!1333884 () Bool)

(assert (= bs!1333884 (and b!5709679 b!5709272)))

(assert (=> bs!1333884 (not (= lambda!307986 lambda!307927))))

(declare-fun bs!1333885 () Bool)

(assert (= bs!1333885 (and b!5709679 b!5709288)))

(assert (=> bs!1333885 (not (= lambda!307986 lambda!307933))))

(assert (=> bs!1333885 (= (= (reg!16030 lt!2274841) (reg!16030 (regOne!31914 r!7292))) (= lambda!307986 lambda!307932))))

(assert (=> bs!1333884 (not (= lambda!307986 lambda!307926))))

(declare-fun bs!1333886 () Bool)

(assert (= bs!1333886 (and b!5709679 d!1801404)))

(assert (=> bs!1333886 (= (and (= (reg!16030 lt!2274841) (reg!16030 (regOne!31914 r!7292))) (= lt!2274841 (Star!15701 (reg!16030 (regOne!31914 r!7292))))) (= lambda!307986 lambda!307968))))

(assert (=> bs!1333882 (not (= lambda!307986 lambda!307929))))

(declare-fun bs!1333887 () Bool)

(assert (= bs!1333887 (and b!5709679 d!1801424)))

(assert (=> bs!1333887 (not (= lambda!307986 lambda!307980))))

(assert (=> bs!1333885 (not (= lambda!307986 lambda!307931))))

(assert (=> bs!1333886 (not (= lambda!307986 lambda!307966))))

(assert (=> bs!1333883 (not (= lambda!307986 lambda!307957))))

(assert (=> b!5709679 true))

(assert (=> b!5709679 true))

(declare-fun bs!1333888 () Bool)

(declare-fun b!5709674 () Bool)

(assert (= bs!1333888 (and b!5709674 b!5709284)))

(declare-fun lambda!307987 () Int)

(assert (=> bs!1333888 (= (and (= (_1!36101 lt!2274833) s!2326) (= (regOne!31914 lt!2274841) lt!2274841) (= (regTwo!31914 lt!2274841) (regTwo!31914 r!7292))) (= lambda!307987 lambda!307930))))

(declare-fun bs!1333889 () Bool)

(assert (= bs!1333889 (and b!5709674 d!1801400)))

(assert (=> bs!1333889 (not (= lambda!307987 lambda!307954))))

(declare-fun bs!1333890 () Bool)

(assert (= bs!1333890 (and b!5709674 b!5709272)))

(assert (=> bs!1333890 (= (and (= (_1!36101 lt!2274833) s!2326) (= (regOne!31914 lt!2274841) (regOne!31914 r!7292)) (= (regTwo!31914 lt!2274841) (regTwo!31914 r!7292))) (= lambda!307987 lambda!307927))))

(declare-fun bs!1333891 () Bool)

(assert (= bs!1333891 (and b!5709674 b!5709288)))

(assert (=> bs!1333891 (= (and (= (regOne!31914 lt!2274841) (reg!16030 (regOne!31914 r!7292))) (= (regTwo!31914 lt!2274841) lt!2274841)) (= lambda!307987 lambda!307933))))

(assert (=> bs!1333891 (not (= lambda!307987 lambda!307932))))

(declare-fun bs!1333892 () Bool)

(assert (= bs!1333892 (and b!5709674 b!5709679)))

(assert (=> bs!1333892 (not (= lambda!307987 lambda!307986))))

(assert (=> bs!1333890 (not (= lambda!307987 lambda!307926))))

(declare-fun bs!1333893 () Bool)

(assert (= bs!1333893 (and b!5709674 d!1801404)))

(assert (=> bs!1333893 (not (= lambda!307987 lambda!307968))))

(assert (=> bs!1333888 (not (= lambda!307987 lambda!307929))))

(declare-fun bs!1333894 () Bool)

(assert (= bs!1333894 (and b!5709674 d!1801424)))

(assert (=> bs!1333894 (not (= lambda!307987 lambda!307980))))

(assert (=> bs!1333891 (not (= lambda!307987 lambda!307931))))

(assert (=> bs!1333893 (not (= lambda!307987 lambda!307966))))

(assert (=> bs!1333889 (= (and (= (regOne!31914 lt!2274841) (reg!16030 (regOne!31914 r!7292))) (= (regTwo!31914 lt!2274841) lt!2274841)) (= lambda!307987 lambda!307957))))

(assert (=> b!5709674 true))

(assert (=> b!5709674 true))

(declare-fun b!5709670 () Bool)

(declare-fun e!3511862 () Bool)

(assert (=> b!5709670 (= e!3511862 (matchRSpec!2804 (regTwo!31915 lt!2274841) (_1!36101 lt!2274833)))))

(declare-fun d!1801460 () Bool)

(declare-fun c!1006406 () Bool)

(assert (=> d!1801460 (= c!1006406 ((_ is EmptyExpr!15701) lt!2274841))))

(declare-fun e!3511864 () Bool)

(assert (=> d!1801460 (= (matchRSpec!2804 lt!2274841 (_1!36101 lt!2274833)) e!3511864)))

(declare-fun b!5709671 () Bool)

(declare-fun res!2410272 () Bool)

(declare-fun e!3511865 () Bool)

(assert (=> b!5709671 (=> res!2410272 e!3511865)))

(declare-fun call!435855 () Bool)

(assert (=> b!5709671 (= res!2410272 call!435855)))

(declare-fun e!3511863 () Bool)

(assert (=> b!5709671 (= e!3511863 e!3511865)))

(declare-fun b!5709672 () Bool)

(assert (=> b!5709672 (= e!3511864 call!435855)))

(declare-fun b!5709673 () Bool)

(declare-fun e!3511866 () Bool)

(assert (=> b!5709673 (= e!3511866 (= (_1!36101 lt!2274833) (Cons!63278 (c!1006309 lt!2274841) Nil!63278)))))

(declare-fun bm!435850 () Bool)

(declare-fun call!435856 () Bool)

(declare-fun c!1006404 () Bool)

(assert (=> bm!435850 (= call!435856 (Exists!2801 (ite c!1006404 lambda!307986 lambda!307987)))))

(assert (=> b!5709674 (= e!3511863 call!435856)))

(declare-fun b!5709675 () Bool)

(declare-fun e!3511867 () Bool)

(assert (=> b!5709675 (= e!3511867 e!3511862)))

(declare-fun res!2410270 () Bool)

(assert (=> b!5709675 (= res!2410270 (matchRSpec!2804 (regOne!31915 lt!2274841) (_1!36101 lt!2274833)))))

(assert (=> b!5709675 (=> res!2410270 e!3511862)))

(declare-fun b!5709676 () Bool)

(assert (=> b!5709676 (= e!3511867 e!3511863)))

(assert (=> b!5709676 (= c!1006404 ((_ is Star!15701) lt!2274841))))

(declare-fun b!5709677 () Bool)

(declare-fun e!3511861 () Bool)

(assert (=> b!5709677 (= e!3511864 e!3511861)))

(declare-fun res!2410271 () Bool)

(assert (=> b!5709677 (= res!2410271 (not ((_ is EmptyLang!15701) lt!2274841)))))

(assert (=> b!5709677 (=> (not res!2410271) (not e!3511861))))

(declare-fun b!5709678 () Bool)

(declare-fun c!1006405 () Bool)

(assert (=> b!5709678 (= c!1006405 ((_ is ElementMatch!15701) lt!2274841))))

(assert (=> b!5709678 (= e!3511861 e!3511866)))

(declare-fun bm!435851 () Bool)

(assert (=> bm!435851 (= call!435855 (isEmpty!35145 (_1!36101 lt!2274833)))))

(assert (=> b!5709679 (= e!3511865 call!435856)))

(declare-fun b!5709680 () Bool)

(declare-fun c!1006407 () Bool)

(assert (=> b!5709680 (= c!1006407 ((_ is Union!15701) lt!2274841))))

(assert (=> b!5709680 (= e!3511866 e!3511867)))

(assert (= (and d!1801460 c!1006406) b!5709672))

(assert (= (and d!1801460 (not c!1006406)) b!5709677))

(assert (= (and b!5709677 res!2410271) b!5709678))

(assert (= (and b!5709678 c!1006405) b!5709673))

(assert (= (and b!5709678 (not c!1006405)) b!5709680))

(assert (= (and b!5709680 c!1006407) b!5709675))

(assert (= (and b!5709680 (not c!1006407)) b!5709676))

(assert (= (and b!5709675 (not res!2410270)) b!5709670))

(assert (= (and b!5709676 c!1006404) b!5709671))

(assert (= (and b!5709676 (not c!1006404)) b!5709674))

(assert (= (and b!5709671 (not res!2410272)) b!5709679))

(assert (= (or b!5709679 b!5709674) bm!435850))

(assert (= (or b!5709672 b!5709671) bm!435851))

(declare-fun m!6663562 () Bool)

(assert (=> b!5709670 m!6663562))

(declare-fun m!6663564 () Bool)

(assert (=> bm!435850 m!6663564))

(declare-fun m!6663566 () Bool)

(assert (=> b!5709675 m!6663566))

(assert (=> bm!435851 m!6663062))

(assert (=> b!5709288 d!1801460))

(declare-fun d!1801492 () Bool)

(assert (=> d!1801492 (= (isEmpty!35145 (_1!36101 lt!2274833)) ((_ is Nil!63278) (_1!36101 lt!2274833)))))

(assert (=> b!5709289 d!1801492))

(declare-fun d!1801494 () Bool)

(declare-fun nullableFct!1802 (Regex!15701) Bool)

(assert (=> d!1801494 (= (nullable!5733 (regOne!31914 (regOne!31914 r!7292))) (nullableFct!1802 (regOne!31914 (regOne!31914 r!7292))))))

(declare-fun bs!1333895 () Bool)

(assert (= bs!1333895 d!1801494))

(declare-fun m!6663568 () Bool)

(assert (=> bs!1333895 m!6663568))

(assert (=> b!5709269 d!1801494))

(declare-fun bs!1333896 () Bool)

(declare-fun b!5709711 () Bool)

(assert (= bs!1333896 (and b!5709711 b!5709284)))

(declare-fun lambda!307990 () Int)

(assert (=> bs!1333896 (not (= lambda!307990 lambda!307930))))

(declare-fun bs!1333897 () Bool)

(assert (= bs!1333897 (and b!5709711 d!1801400)))

(assert (=> bs!1333897 (not (= lambda!307990 lambda!307954))))

(declare-fun bs!1333898 () Bool)

(assert (= bs!1333898 (and b!5709711 b!5709272)))

(assert (=> bs!1333898 (not (= lambda!307990 lambda!307927))))

(declare-fun bs!1333899 () Bool)

(assert (= bs!1333899 (and b!5709711 b!5709674)))

(assert (=> bs!1333899 (not (= lambda!307990 lambda!307987))))

(declare-fun bs!1333900 () Bool)

(assert (= bs!1333900 (and b!5709711 b!5709288)))

(assert (=> bs!1333900 (not (= lambda!307990 lambda!307933))))

(assert (=> bs!1333900 (= (and (= s!2326 (_1!36101 lt!2274833)) (= (reg!16030 r!7292) (reg!16030 (regOne!31914 r!7292))) (= r!7292 lt!2274841)) (= lambda!307990 lambda!307932))))

(declare-fun bs!1333901 () Bool)

(assert (= bs!1333901 (and b!5709711 b!5709679)))

(assert (=> bs!1333901 (= (and (= s!2326 (_1!36101 lt!2274833)) (= (reg!16030 r!7292) (reg!16030 lt!2274841)) (= r!7292 lt!2274841)) (= lambda!307990 lambda!307986))))

(assert (=> bs!1333898 (not (= lambda!307990 lambda!307926))))

(declare-fun bs!1333902 () Bool)

(assert (= bs!1333902 (and b!5709711 d!1801404)))

(assert (=> bs!1333902 (= (and (= s!2326 (_1!36101 lt!2274833)) (= (reg!16030 r!7292) (reg!16030 (regOne!31914 r!7292))) (= r!7292 (Star!15701 (reg!16030 (regOne!31914 r!7292))))) (= lambda!307990 lambda!307968))))

(assert (=> bs!1333896 (not (= lambda!307990 lambda!307929))))

(declare-fun bs!1333903 () Bool)

(assert (= bs!1333903 (and b!5709711 d!1801424)))

(assert (=> bs!1333903 (not (= lambda!307990 lambda!307980))))

(assert (=> bs!1333900 (not (= lambda!307990 lambda!307931))))

(assert (=> bs!1333902 (not (= lambda!307990 lambda!307966))))

(assert (=> bs!1333897 (not (= lambda!307990 lambda!307957))))

(assert (=> b!5709711 true))

(assert (=> b!5709711 true))

(declare-fun bs!1333904 () Bool)

(declare-fun b!5709706 () Bool)

(assert (= bs!1333904 (and b!5709706 b!5709284)))

(declare-fun lambda!307991 () Int)

(assert (=> bs!1333904 (= (= (regOne!31914 r!7292) lt!2274841) (= lambda!307991 lambda!307930))))

(declare-fun bs!1333905 () Bool)

(assert (= bs!1333905 (and b!5709706 d!1801400)))

(assert (=> bs!1333905 (not (= lambda!307991 lambda!307954))))

(declare-fun bs!1333907 () Bool)

(assert (= bs!1333907 (and b!5709706 b!5709272)))

(assert (=> bs!1333907 (= lambda!307991 lambda!307927)))

(declare-fun bs!1333909 () Bool)

(assert (= bs!1333909 (and b!5709706 b!5709674)))

(assert (=> bs!1333909 (= (and (= s!2326 (_1!36101 lt!2274833)) (= (regOne!31914 r!7292) (regOne!31914 lt!2274841)) (= (regTwo!31914 r!7292) (regTwo!31914 lt!2274841))) (= lambda!307991 lambda!307987))))

(declare-fun bs!1333910 () Bool)

(assert (= bs!1333910 (and b!5709706 b!5709288)))

(assert (=> bs!1333910 (= (and (= s!2326 (_1!36101 lt!2274833)) (= (regOne!31914 r!7292) (reg!16030 (regOne!31914 r!7292))) (= (regTwo!31914 r!7292) lt!2274841)) (= lambda!307991 lambda!307933))))

(assert (=> bs!1333910 (not (= lambda!307991 lambda!307932))))

(declare-fun bs!1333911 () Bool)

(assert (= bs!1333911 (and b!5709706 b!5709679)))

(assert (=> bs!1333911 (not (= lambda!307991 lambda!307986))))

(assert (=> bs!1333907 (not (= lambda!307991 lambda!307926))))

(declare-fun bs!1333912 () Bool)

(assert (= bs!1333912 (and b!5709706 d!1801404)))

(assert (=> bs!1333912 (not (= lambda!307991 lambda!307968))))

(assert (=> bs!1333904 (not (= lambda!307991 lambda!307929))))

(declare-fun bs!1333913 () Bool)

(assert (= bs!1333913 (and b!5709706 b!5709711)))

(assert (=> bs!1333913 (not (= lambda!307991 lambda!307990))))

(declare-fun bs!1333914 () Bool)

(assert (= bs!1333914 (and b!5709706 d!1801424)))

(assert (=> bs!1333914 (not (= lambda!307991 lambda!307980))))

(assert (=> bs!1333910 (not (= lambda!307991 lambda!307931))))

(assert (=> bs!1333912 (not (= lambda!307991 lambda!307966))))

(assert (=> bs!1333905 (= (and (= s!2326 (_1!36101 lt!2274833)) (= (regOne!31914 r!7292) (reg!16030 (regOne!31914 r!7292))) (= (regTwo!31914 r!7292) lt!2274841)) (= lambda!307991 lambda!307957))))

(assert (=> b!5709706 true))

(assert (=> b!5709706 true))

(declare-fun b!5709702 () Bool)

(declare-fun e!3511881 () Bool)

(assert (=> b!5709702 (= e!3511881 (matchRSpec!2804 (regTwo!31915 r!7292) s!2326))))

(declare-fun d!1801496 () Bool)

(declare-fun c!1006419 () Bool)

(assert (=> d!1801496 (= c!1006419 ((_ is EmptyExpr!15701) r!7292))))

(declare-fun e!3511883 () Bool)

(assert (=> d!1801496 (= (matchRSpec!2804 r!7292 s!2326) e!3511883)))

(declare-fun b!5709703 () Bool)

(declare-fun res!2410278 () Bool)

(declare-fun e!3511884 () Bool)

(assert (=> b!5709703 (=> res!2410278 e!3511884)))

(declare-fun call!435863 () Bool)

(assert (=> b!5709703 (= res!2410278 call!435863)))

(declare-fun e!3511882 () Bool)

(assert (=> b!5709703 (= e!3511882 e!3511884)))

(declare-fun b!5709704 () Bool)

(assert (=> b!5709704 (= e!3511883 call!435863)))

(declare-fun b!5709705 () Bool)

(declare-fun e!3511885 () Bool)

(assert (=> b!5709705 (= e!3511885 (= s!2326 (Cons!63278 (c!1006309 r!7292) Nil!63278)))))

(declare-fun bm!435858 () Bool)

(declare-fun call!435864 () Bool)

(declare-fun c!1006417 () Bool)

(assert (=> bm!435858 (= call!435864 (Exists!2801 (ite c!1006417 lambda!307990 lambda!307991)))))

(assert (=> b!5709706 (= e!3511882 call!435864)))

(declare-fun b!5709707 () Bool)

(declare-fun e!3511886 () Bool)

(assert (=> b!5709707 (= e!3511886 e!3511881)))

(declare-fun res!2410276 () Bool)

(assert (=> b!5709707 (= res!2410276 (matchRSpec!2804 (regOne!31915 r!7292) s!2326))))

(assert (=> b!5709707 (=> res!2410276 e!3511881)))

(declare-fun b!5709708 () Bool)

(assert (=> b!5709708 (= e!3511886 e!3511882)))

(assert (=> b!5709708 (= c!1006417 ((_ is Star!15701) r!7292))))

(declare-fun b!5709709 () Bool)

(declare-fun e!3511880 () Bool)

(assert (=> b!5709709 (= e!3511883 e!3511880)))

(declare-fun res!2410277 () Bool)

(assert (=> b!5709709 (= res!2410277 (not ((_ is EmptyLang!15701) r!7292)))))

(assert (=> b!5709709 (=> (not res!2410277) (not e!3511880))))

(declare-fun b!5709710 () Bool)

(declare-fun c!1006418 () Bool)

(assert (=> b!5709710 (= c!1006418 ((_ is ElementMatch!15701) r!7292))))

(assert (=> b!5709710 (= e!3511880 e!3511885)))

(declare-fun bm!435859 () Bool)

(assert (=> bm!435859 (= call!435863 (isEmpty!35145 s!2326))))

(assert (=> b!5709711 (= e!3511884 call!435864)))

(declare-fun b!5709712 () Bool)

(declare-fun c!1006420 () Bool)

(assert (=> b!5709712 (= c!1006420 ((_ is Union!15701) r!7292))))

(assert (=> b!5709712 (= e!3511885 e!3511886)))

(assert (= (and d!1801496 c!1006419) b!5709704))

(assert (= (and d!1801496 (not c!1006419)) b!5709709))

(assert (= (and b!5709709 res!2410277) b!5709710))

(assert (= (and b!5709710 c!1006418) b!5709705))

(assert (= (and b!5709710 (not c!1006418)) b!5709712))

(assert (= (and b!5709712 c!1006420) b!5709707))

(assert (= (and b!5709712 (not c!1006420)) b!5709708))

(assert (= (and b!5709707 (not res!2410276)) b!5709702))

(assert (= (and b!5709708 c!1006417) b!5709703))

(assert (= (and b!5709708 (not c!1006417)) b!5709706))

(assert (= (and b!5709703 (not res!2410278)) b!5709711))

(assert (= (or b!5709711 b!5709706) bm!435858))

(assert (= (or b!5709704 b!5709703) bm!435859))

(declare-fun m!6663590 () Bool)

(assert (=> b!5709702 m!6663590))

(declare-fun m!6663592 () Bool)

(assert (=> bm!435858 m!6663592))

(declare-fun m!6663594 () Bool)

(assert (=> b!5709707 m!6663594))

(declare-fun m!6663596 () Bool)

(assert (=> bm!435859 m!6663596))

(assert (=> b!5709290 d!1801496))

(declare-fun d!1801500 () Bool)

(declare-fun e!3511946 () Bool)

(assert (=> d!1801500 e!3511946))

(declare-fun c!1006448 () Bool)

(assert (=> d!1801500 (= c!1006448 ((_ is EmptyExpr!15701) r!7292))))

(declare-fun lt!2274942 () Bool)

(declare-fun e!3511944 () Bool)

(assert (=> d!1801500 (= lt!2274942 e!3511944)))

(declare-fun c!1006447 () Bool)

(assert (=> d!1801500 (= c!1006447 (isEmpty!35145 s!2326))))

(assert (=> d!1801500 (validRegex!7437 r!7292)))

(assert (=> d!1801500 (= (matchR!7886 r!7292 s!2326) lt!2274942)))

(declare-fun b!5709808 () Bool)

(declare-fun res!2410324 () Bool)

(declare-fun e!3511948 () Bool)

(assert (=> b!5709808 (=> res!2410324 e!3511948)))

(assert (=> b!5709808 (= res!2410324 (not ((_ is ElementMatch!15701) r!7292)))))

(declare-fun e!3511949 () Bool)

(assert (=> b!5709808 (= e!3511949 e!3511948)))

(declare-fun b!5709809 () Bool)

(assert (=> b!5709809 (= e!3511946 e!3511949)))

(declare-fun c!1006449 () Bool)

(assert (=> b!5709809 (= c!1006449 ((_ is EmptyLang!15701) r!7292))))

(declare-fun b!5709810 () Bool)

(declare-fun e!3511947 () Bool)

(assert (=> b!5709810 (= e!3511948 e!3511947)))

(declare-fun res!2410328 () Bool)

(assert (=> b!5709810 (=> (not res!2410328) (not e!3511947))))

(assert (=> b!5709810 (= res!2410328 (not lt!2274942))))

(declare-fun b!5709811 () Bool)

(declare-fun call!435877 () Bool)

(assert (=> b!5709811 (= e!3511946 (= lt!2274942 call!435877))))

(declare-fun b!5709812 () Bool)

(declare-fun res!2410323 () Bool)

(assert (=> b!5709812 (=> res!2410323 e!3511948)))

(declare-fun e!3511950 () Bool)

(assert (=> b!5709812 (= res!2410323 e!3511950)))

(declare-fun res!2410326 () Bool)

(assert (=> b!5709812 (=> (not res!2410326) (not e!3511950))))

(assert (=> b!5709812 (= res!2410326 lt!2274942)))

(declare-fun b!5709813 () Bool)

(declare-fun e!3511945 () Bool)

(declare-fun head!12093 (List!63402) C!31672)

(assert (=> b!5709813 (= e!3511945 (not (= (head!12093 s!2326) (c!1006309 r!7292))))))

(declare-fun b!5709814 () Bool)

(declare-fun res!2410325 () Bool)

(assert (=> b!5709814 (=> res!2410325 e!3511945)))

(declare-fun tail!11188 (List!63402) List!63402)

(assert (=> b!5709814 (= res!2410325 (not (isEmpty!35145 (tail!11188 s!2326))))))

(declare-fun b!5709815 () Bool)

(declare-fun res!2410329 () Bool)

(assert (=> b!5709815 (=> (not res!2410329) (not e!3511950))))

(assert (=> b!5709815 (= res!2410329 (not call!435877))))

(declare-fun b!5709816 () Bool)

(assert (=> b!5709816 (= e!3511947 e!3511945)))

(declare-fun res!2410327 () Bool)

(assert (=> b!5709816 (=> res!2410327 e!3511945)))

(assert (=> b!5709816 (= res!2410327 call!435877)))

(declare-fun b!5709817 () Bool)

(declare-fun derivativeStep!4510 (Regex!15701 C!31672) Regex!15701)

(assert (=> b!5709817 (= e!3511944 (matchR!7886 (derivativeStep!4510 r!7292 (head!12093 s!2326)) (tail!11188 s!2326)))))

(declare-fun b!5709818 () Bool)

(assert (=> b!5709818 (= e!3511949 (not lt!2274942))))

(declare-fun b!5709819 () Bool)

(declare-fun res!2410322 () Bool)

(assert (=> b!5709819 (=> (not res!2410322) (not e!3511950))))

(assert (=> b!5709819 (= res!2410322 (isEmpty!35145 (tail!11188 s!2326)))))

(declare-fun b!5709820 () Bool)

(assert (=> b!5709820 (= e!3511950 (= (head!12093 s!2326) (c!1006309 r!7292)))))

(declare-fun b!5709821 () Bool)

(assert (=> b!5709821 (= e!3511944 (nullable!5733 r!7292))))

(declare-fun bm!435872 () Bool)

(assert (=> bm!435872 (= call!435877 (isEmpty!35145 s!2326))))

(assert (= (and d!1801500 c!1006447) b!5709821))

(assert (= (and d!1801500 (not c!1006447)) b!5709817))

(assert (= (and d!1801500 c!1006448) b!5709811))

(assert (= (and d!1801500 (not c!1006448)) b!5709809))

(assert (= (and b!5709809 c!1006449) b!5709818))

(assert (= (and b!5709809 (not c!1006449)) b!5709808))

(assert (= (and b!5709808 (not res!2410324)) b!5709812))

(assert (= (and b!5709812 res!2410326) b!5709815))

(assert (= (and b!5709815 res!2410329) b!5709819))

(assert (= (and b!5709819 res!2410322) b!5709820))

(assert (= (and b!5709812 (not res!2410323)) b!5709810))

(assert (= (and b!5709810 res!2410328) b!5709816))

(assert (= (and b!5709816 (not res!2410327)) b!5709814))

(assert (= (and b!5709814 (not res!2410325)) b!5709813))

(assert (= (or b!5709811 b!5709816 b!5709815) bm!435872))

(declare-fun m!6663624 () Bool)

(assert (=> b!5709820 m!6663624))

(declare-fun m!6663628 () Bool)

(assert (=> b!5709819 m!6663628))

(assert (=> b!5709819 m!6663628))

(declare-fun m!6663630 () Bool)

(assert (=> b!5709819 m!6663630))

(assert (=> b!5709814 m!6663628))

(assert (=> b!5709814 m!6663628))

(assert (=> b!5709814 m!6663630))

(assert (=> b!5709817 m!6663624))

(assert (=> b!5709817 m!6663624))

(declare-fun m!6663632 () Bool)

(assert (=> b!5709817 m!6663632))

(assert (=> b!5709817 m!6663628))

(assert (=> b!5709817 m!6663632))

(assert (=> b!5709817 m!6663628))

(declare-fun m!6663634 () Bool)

(assert (=> b!5709817 m!6663634))

(assert (=> d!1801500 m!6663596))

(assert (=> d!1801500 m!6663188))

(declare-fun m!6663638 () Bool)

(assert (=> b!5709821 m!6663638))

(assert (=> bm!435872 m!6663596))

(assert (=> b!5709813 m!6663624))

(assert (=> b!5709290 d!1801500))

(declare-fun d!1801510 () Bool)

(assert (=> d!1801510 (= (matchR!7886 r!7292 s!2326) (matchRSpec!2804 r!7292 s!2326))))

(declare-fun lt!2274943 () Unit!156336)

(assert (=> d!1801510 (= lt!2274943 (choose!43153 r!7292 s!2326))))

(assert (=> d!1801510 (validRegex!7437 r!7292)))

(assert (=> d!1801510 (= (mainMatchTheorem!2804 r!7292 s!2326) lt!2274943)))

(declare-fun bs!1333918 () Bool)

(assert (= bs!1333918 d!1801510))

(assert (=> bs!1333918 m!6663066))

(assert (=> bs!1333918 m!6663064))

(declare-fun m!6663644 () Bool)

(assert (=> bs!1333918 m!6663644))

(assert (=> bs!1333918 m!6663188))

(assert (=> b!5709290 d!1801510))

(declare-fun d!1801514 () Bool)

(declare-fun e!3511962 () Bool)

(assert (=> d!1801514 (= (matchZipper!1839 ((_ map or) lt!2274839 lt!2274853) (t!376722 s!2326)) e!3511962)))

(declare-fun res!2410335 () Bool)

(assert (=> d!1801514 (=> res!2410335 e!3511962)))

(assert (=> d!1801514 (= res!2410335 (matchZipper!1839 lt!2274839 (t!376722 s!2326)))))

(declare-fun lt!2274946 () Unit!156336)

(declare-fun choose!43155 ((InoxSet Context!10170) (InoxSet Context!10170) List!63402) Unit!156336)

(assert (=> d!1801514 (= lt!2274946 (choose!43155 lt!2274839 lt!2274853 (t!376722 s!2326)))))

(assert (=> d!1801514 (= (lemmaZipperConcatMatchesSameAsBothZippers!726 lt!2274839 lt!2274853 (t!376722 s!2326)) lt!2274946)))

(declare-fun b!5709839 () Bool)

(assert (=> b!5709839 (= e!3511962 (matchZipper!1839 lt!2274853 (t!376722 s!2326)))))

(assert (= (and d!1801514 (not res!2410335)) b!5709839))

(assert (=> d!1801514 m!6663122))

(assert (=> d!1801514 m!6663120))

(declare-fun m!6663646 () Bool)

(assert (=> d!1801514 m!6663646))

(assert (=> b!5709839 m!6663184))

(assert (=> b!5709286 d!1801514))

(declare-fun d!1801516 () Bool)

(declare-fun c!1006461 () Bool)

(assert (=> d!1801516 (= c!1006461 (isEmpty!35145 (t!376722 s!2326)))))

(declare-fun e!3511972 () Bool)

(assert (=> d!1801516 (= (matchZipper!1839 lt!2274839 (t!376722 s!2326)) e!3511972)))

(declare-fun b!5709858 () Bool)

(declare-fun nullableZipper!1656 ((InoxSet Context!10170)) Bool)

(assert (=> b!5709858 (= e!3511972 (nullableZipper!1656 lt!2274839))))

(declare-fun b!5709859 () Bool)

(assert (=> b!5709859 (= e!3511972 (matchZipper!1839 (derivationStepZipper!1784 lt!2274839 (head!12093 (t!376722 s!2326))) (tail!11188 (t!376722 s!2326))))))

(assert (= (and d!1801516 c!1006461) b!5709858))

(assert (= (and d!1801516 (not c!1006461)) b!5709859))

(declare-fun m!6663662 () Bool)

(assert (=> d!1801516 m!6663662))

(declare-fun m!6663664 () Bool)

(assert (=> b!5709858 m!6663664))

(declare-fun m!6663666 () Bool)

(assert (=> b!5709859 m!6663666))

(assert (=> b!5709859 m!6663666))

(declare-fun m!6663668 () Bool)

(assert (=> b!5709859 m!6663668))

(declare-fun m!6663670 () Bool)

(assert (=> b!5709859 m!6663670))

(assert (=> b!5709859 m!6663668))

(assert (=> b!5709859 m!6663670))

(declare-fun m!6663674 () Bool)

(assert (=> b!5709859 m!6663674))

(assert (=> b!5709286 d!1801516))

(declare-fun d!1801526 () Bool)

(declare-fun c!1006462 () Bool)

(assert (=> d!1801526 (= c!1006462 (isEmpty!35145 (t!376722 s!2326)))))

(declare-fun e!3511973 () Bool)

(assert (=> d!1801526 (= (matchZipper!1839 ((_ map or) lt!2274839 lt!2274853) (t!376722 s!2326)) e!3511973)))

(declare-fun b!5709860 () Bool)

(assert (=> b!5709860 (= e!3511973 (nullableZipper!1656 ((_ map or) lt!2274839 lt!2274853)))))

(declare-fun b!5709861 () Bool)

(assert (=> b!5709861 (= e!3511973 (matchZipper!1839 (derivationStepZipper!1784 ((_ map or) lt!2274839 lt!2274853) (head!12093 (t!376722 s!2326))) (tail!11188 (t!376722 s!2326))))))

(assert (= (and d!1801526 c!1006462) b!5709860))

(assert (= (and d!1801526 (not c!1006462)) b!5709861))

(assert (=> d!1801526 m!6663662))

(declare-fun m!6663676 () Bool)

(assert (=> b!5709860 m!6663676))

(assert (=> b!5709861 m!6663666))

(assert (=> b!5709861 m!6663666))

(declare-fun m!6663678 () Bool)

(assert (=> b!5709861 m!6663678))

(assert (=> b!5709861 m!6663670))

(assert (=> b!5709861 m!6663678))

(assert (=> b!5709861 m!6663670))

(declare-fun m!6663680 () Bool)

(assert (=> b!5709861 m!6663680))

(assert (=> b!5709286 d!1801526))

(declare-fun d!1801528 () Bool)

(declare-fun c!1006463 () Bool)

(assert (=> d!1801528 (= c!1006463 (isEmpty!35145 s!2326))))

(declare-fun e!3511974 () Bool)

(assert (=> d!1801528 (= (matchZipper!1839 lt!2274816 s!2326) e!3511974)))

(declare-fun b!5709862 () Bool)

(assert (=> b!5709862 (= e!3511974 (nullableZipper!1656 lt!2274816))))

(declare-fun b!5709863 () Bool)

(assert (=> b!5709863 (= e!3511974 (matchZipper!1839 (derivationStepZipper!1784 lt!2274816 (head!12093 s!2326)) (tail!11188 s!2326)))))

(assert (= (and d!1801528 c!1006463) b!5709862))

(assert (= (and d!1801528 (not c!1006463)) b!5709863))

(assert (=> d!1801528 m!6663596))

(declare-fun m!6663684 () Bool)

(assert (=> b!5709862 m!6663684))

(assert (=> b!5709863 m!6663624))

(assert (=> b!5709863 m!6663624))

(declare-fun m!6663686 () Bool)

(assert (=> b!5709863 m!6663686))

(assert (=> b!5709863 m!6663628))

(assert (=> b!5709863 m!6663686))

(assert (=> b!5709863 m!6663628))

(declare-fun m!6663688 () Bool)

(assert (=> b!5709863 m!6663688))

(assert (=> b!5709265 d!1801528))

(declare-fun d!1801534 () Bool)

(declare-fun c!1006464 () Bool)

(assert (=> d!1801534 (= c!1006464 (isEmpty!35145 (t!376722 s!2326)))))

(declare-fun e!3511975 () Bool)

(assert (=> d!1801534 (= (matchZipper!1839 lt!2274817 (t!376722 s!2326)) e!3511975)))

(declare-fun b!5709864 () Bool)

(assert (=> b!5709864 (= e!3511975 (nullableZipper!1656 lt!2274817))))

(declare-fun b!5709865 () Bool)

(assert (=> b!5709865 (= e!3511975 (matchZipper!1839 (derivationStepZipper!1784 lt!2274817 (head!12093 (t!376722 s!2326))) (tail!11188 (t!376722 s!2326))))))

(assert (= (and d!1801534 c!1006464) b!5709864))

(assert (= (and d!1801534 (not c!1006464)) b!5709865))

(assert (=> d!1801534 m!6663662))

(declare-fun m!6663690 () Bool)

(assert (=> b!5709864 m!6663690))

(assert (=> b!5709865 m!6663666))

(assert (=> b!5709865 m!6663666))

(declare-fun m!6663692 () Bool)

(assert (=> b!5709865 m!6663692))

(assert (=> b!5709865 m!6663670))

(assert (=> b!5709865 m!6663692))

(assert (=> b!5709865 m!6663670))

(declare-fun m!6663694 () Bool)

(assert (=> b!5709865 m!6663694))

(assert (=> b!5709265 d!1801534))

(declare-fun d!1801536 () Bool)

(declare-fun lambda!308001 () Int)

(declare-fun forall!14842 (List!63403 Int) Bool)

(assert (=> d!1801536 (= (inv!82499 setElem!38225) (forall!14842 (exprs!5585 setElem!38225) lambda!308001))))

(declare-fun bs!1333957 () Bool)

(assert (= bs!1333957 d!1801536))

(declare-fun m!6663696 () Bool)

(assert (=> bs!1333957 m!6663696))

(assert (=> setNonEmpty!38225 d!1801536))

(declare-fun bs!1333980 () Bool)

(declare-fun d!1801538 () Bool)

(assert (= bs!1333980 (and d!1801538 d!1801536)))

(declare-fun lambda!308006 () Int)

(assert (=> bs!1333980 (= lambda!308006 lambda!308001)))

(declare-fun b!5709895 () Bool)

(declare-fun e!3511993 () Regex!15701)

(assert (=> b!5709895 (= e!3511993 (h!69727 (exprs!5585 (h!69728 zl!343))))))

(declare-fun b!5709896 () Bool)

(declare-fun e!3511995 () Bool)

(assert (=> b!5709896 (= e!3511995 (isEmpty!35144 (t!376723 (exprs!5585 (h!69728 zl!343)))))))

(declare-fun b!5709897 () Bool)

(declare-fun e!3511998 () Bool)

(declare-fun lt!2274956 () Regex!15701)

(declare-fun isConcat!737 (Regex!15701) Bool)

(assert (=> b!5709897 (= e!3511998 (isConcat!737 lt!2274956))))

(declare-fun b!5709898 () Bool)

(declare-fun head!12094 (List!63403) Regex!15701)

(assert (=> b!5709898 (= e!3511998 (= lt!2274956 (head!12094 (exprs!5585 (h!69728 zl!343)))))))

(declare-fun b!5709899 () Bool)

(declare-fun e!3511994 () Regex!15701)

(assert (=> b!5709899 (= e!3511994 EmptyExpr!15701)))

(declare-fun b!5709900 () Bool)

(declare-fun e!3511997 () Bool)

(declare-fun isEmptyExpr!1214 (Regex!15701) Bool)

(assert (=> b!5709900 (= e!3511997 (isEmptyExpr!1214 lt!2274956))))

(declare-fun e!3511996 () Bool)

(assert (=> d!1801538 e!3511996))

(declare-fun res!2410353 () Bool)

(assert (=> d!1801538 (=> (not res!2410353) (not e!3511996))))

(assert (=> d!1801538 (= res!2410353 (validRegex!7437 lt!2274956))))

(assert (=> d!1801538 (= lt!2274956 e!3511993)))

(declare-fun c!1006476 () Bool)

(assert (=> d!1801538 (= c!1006476 e!3511995)))

(declare-fun res!2410354 () Bool)

(assert (=> d!1801538 (=> (not res!2410354) (not e!3511995))))

(assert (=> d!1801538 (= res!2410354 ((_ is Cons!63279) (exprs!5585 (h!69728 zl!343))))))

(assert (=> d!1801538 (forall!14842 (exprs!5585 (h!69728 zl!343)) lambda!308006)))

(assert (=> d!1801538 (= (generalisedConcat!1316 (exprs!5585 (h!69728 zl!343))) lt!2274956)))

(declare-fun b!5709901 () Bool)

(assert (=> b!5709901 (= e!3511996 e!3511997)))

(declare-fun c!1006475 () Bool)

(assert (=> b!5709901 (= c!1006475 (isEmpty!35144 (exprs!5585 (h!69728 zl!343))))))

(declare-fun b!5709902 () Bool)

(assert (=> b!5709902 (= e!3511994 (Concat!24546 (h!69727 (exprs!5585 (h!69728 zl!343))) (generalisedConcat!1316 (t!376723 (exprs!5585 (h!69728 zl!343))))))))

(declare-fun b!5709903 () Bool)

(assert (=> b!5709903 (= e!3511997 e!3511998)))

(declare-fun c!1006478 () Bool)

(declare-fun tail!11189 (List!63403) List!63403)

(assert (=> b!5709903 (= c!1006478 (isEmpty!35144 (tail!11189 (exprs!5585 (h!69728 zl!343)))))))

(declare-fun b!5709904 () Bool)

(assert (=> b!5709904 (= e!3511993 e!3511994)))

(declare-fun c!1006477 () Bool)

(assert (=> b!5709904 (= c!1006477 ((_ is Cons!63279) (exprs!5585 (h!69728 zl!343))))))

(assert (= (and d!1801538 res!2410354) b!5709896))

(assert (= (and d!1801538 c!1006476) b!5709895))

(assert (= (and d!1801538 (not c!1006476)) b!5709904))

(assert (= (and b!5709904 c!1006477) b!5709902))

(assert (= (and b!5709904 (not c!1006477)) b!5709899))

(assert (= (and d!1801538 res!2410353) b!5709901))

(assert (= (and b!5709901 c!1006475) b!5709900))

(assert (= (and b!5709901 (not c!1006475)) b!5709903))

(assert (= (and b!5709903 c!1006478) b!5709898))

(assert (= (and b!5709903 (not c!1006478)) b!5709897))

(declare-fun m!6663716 () Bool)

(assert (=> b!5709898 m!6663716))

(declare-fun m!6663718 () Bool)

(assert (=> b!5709897 m!6663718))

(declare-fun m!6663720 () Bool)

(assert (=> b!5709902 m!6663720))

(declare-fun m!6663722 () Bool)

(assert (=> d!1801538 m!6663722))

(declare-fun m!6663724 () Bool)

(assert (=> d!1801538 m!6663724))

(assert (=> b!5709896 m!6663142))

(declare-fun m!6663726 () Bool)

(assert (=> b!5709901 m!6663726))

(declare-fun m!6663728 () Bool)

(assert (=> b!5709903 m!6663728))

(assert (=> b!5709903 m!6663728))

(declare-fun m!6663730 () Bool)

(assert (=> b!5709903 m!6663730))

(declare-fun m!6663734 () Bool)

(assert (=> b!5709900 m!6663734))

(assert (=> b!5709287 d!1801538))

(declare-fun d!1801546 () Bool)

(declare-fun e!3512003 () Bool)

(assert (=> d!1801546 e!3512003))

(declare-fun res!2410359 () Bool)

(assert (=> d!1801546 (=> (not res!2410359) (not e!3512003))))

(declare-fun lt!2274960 () List!63404)

(declare-fun noDuplicate!1637 (List!63404) Bool)

(assert (=> d!1801546 (= res!2410359 (noDuplicate!1637 lt!2274960))))

(declare-fun choose!43156 ((InoxSet Context!10170)) List!63404)

(assert (=> d!1801546 (= lt!2274960 (choose!43156 z!1189))))

(assert (=> d!1801546 (= (toList!9485 z!1189) lt!2274960)))

(declare-fun b!5709911 () Bool)

(declare-fun content!11488 (List!63404) (InoxSet Context!10170))

(assert (=> b!5709911 (= e!3512003 (= (content!11488 lt!2274960) z!1189))))

(assert (= (and d!1801546 res!2410359) b!5709911))

(declare-fun m!6663760 () Bool)

(assert (=> d!1801546 m!6663760))

(declare-fun m!6663762 () Bool)

(assert (=> d!1801546 m!6663762))

(declare-fun m!6663764 () Bool)

(assert (=> b!5709911 m!6663764))

(assert (=> b!5709267 d!1801546))

(declare-fun d!1801558 () Bool)

(declare-fun dynLambda!24766 (Int Context!10170) (InoxSet Context!10170))

(assert (=> d!1801558 (= (flatMap!1314 lt!2274826 lambda!307928) (dynLambda!24766 lambda!307928 lt!2274818))))

(declare-fun lt!2274963 () Unit!156336)

(declare-fun choose!43157 ((InoxSet Context!10170) Context!10170 Int) Unit!156336)

(assert (=> d!1801558 (= lt!2274963 (choose!43157 lt!2274826 lt!2274818 lambda!307928))))

(assert (=> d!1801558 (= lt!2274826 (store ((as const (Array Context!10170 Bool)) false) lt!2274818 true))))

(assert (=> d!1801558 (= (lemmaFlatMapOnSingletonSet!846 lt!2274826 lt!2274818 lambda!307928) lt!2274963)))

(declare-fun b_lambda!215855 () Bool)

(assert (=> (not b_lambda!215855) (not d!1801558)))

(declare-fun bs!1333982 () Bool)

(assert (= bs!1333982 d!1801558))

(assert (=> bs!1333982 m!6663092))

(declare-fun m!6663766 () Bool)

(assert (=> bs!1333982 m!6663766))

(declare-fun m!6663768 () Bool)

(assert (=> bs!1333982 m!6663768))

(assert (=> bs!1333982 m!6663088))

(assert (=> b!5709263 d!1801558))

(declare-fun d!1801560 () Bool)

(declare-fun choose!43158 ((InoxSet Context!10170) Int) (InoxSet Context!10170))

(assert (=> d!1801560 (= (flatMap!1314 lt!2274826 lambda!307928) (choose!43158 lt!2274826 lambda!307928))))

(declare-fun bs!1333983 () Bool)

(assert (= bs!1333983 d!1801560))

(declare-fun m!6663770 () Bool)

(assert (=> bs!1333983 m!6663770))

(assert (=> b!5709263 d!1801560))

(declare-fun d!1801562 () Bool)

(declare-fun lt!2274968 () Regex!15701)

(assert (=> d!1801562 (validRegex!7437 lt!2274968)))

(assert (=> d!1801562 (= lt!2274968 (generalisedUnion!1564 (unfocusZipperList!1129 (Cons!63280 lt!2274818 Nil!63280))))))

(assert (=> d!1801562 (= (unfocusZipper!1443 (Cons!63280 lt!2274818 Nil!63280)) lt!2274968)))

(declare-fun bs!1333984 () Bool)

(assert (= bs!1333984 d!1801562))

(declare-fun m!6663772 () Bool)

(assert (=> bs!1333984 m!6663772))

(declare-fun m!6663774 () Bool)

(assert (=> bs!1333984 m!6663774))

(assert (=> bs!1333984 m!6663774))

(declare-fun m!6663776 () Bool)

(assert (=> bs!1333984 m!6663776))

(assert (=> b!5709263 d!1801562))

(declare-fun b!5709963 () Bool)

(declare-fun e!3512031 () (InoxSet Context!10170))

(assert (=> b!5709963 (= e!3512031 ((as const (Array Context!10170 Bool)) false))))

(declare-fun b!5709964 () Bool)

(declare-fun e!3512032 () Bool)

(assert (=> b!5709964 (= e!3512032 (nullable!5733 (h!69727 (exprs!5585 lt!2274830))))))

(declare-fun b!5709965 () Bool)

(declare-fun call!435883 () (InoxSet Context!10170))

(assert (=> b!5709965 (= e!3512031 call!435883)))

(declare-fun b!5709966 () Bool)

(declare-fun e!3512030 () (InoxSet Context!10170))

(assert (=> b!5709966 (= e!3512030 ((_ map or) call!435883 (derivationStepZipperUp!969 (Context!10171 (t!376723 (exprs!5585 lt!2274830))) (h!69726 s!2326))))))

(declare-fun bm!435878 () Bool)

(assert (=> bm!435878 (= call!435883 (derivationStepZipperDown!1043 (h!69727 (exprs!5585 lt!2274830)) (Context!10171 (t!376723 (exprs!5585 lt!2274830))) (h!69726 s!2326)))))

(declare-fun b!5709962 () Bool)

(assert (=> b!5709962 (= e!3512030 e!3512031)))

(declare-fun c!1006497 () Bool)

(assert (=> b!5709962 (= c!1006497 ((_ is Cons!63279) (exprs!5585 lt!2274830)))))

(declare-fun d!1801564 () Bool)

(declare-fun c!1006496 () Bool)

(assert (=> d!1801564 (= c!1006496 e!3512032)))

(declare-fun res!2410368 () Bool)

(assert (=> d!1801564 (=> (not res!2410368) (not e!3512032))))

(assert (=> d!1801564 (= res!2410368 ((_ is Cons!63279) (exprs!5585 lt!2274830)))))

(assert (=> d!1801564 (= (derivationStepZipperUp!969 lt!2274830 (h!69726 s!2326)) e!3512030)))

(assert (= (and d!1801564 res!2410368) b!5709964))

(assert (= (and d!1801564 c!1006496) b!5709966))

(assert (= (and d!1801564 (not c!1006496)) b!5709962))

(assert (= (and b!5709962 c!1006497) b!5709965))

(assert (= (and b!5709962 (not c!1006497)) b!5709963))

(assert (= (or b!5709966 b!5709965) bm!435878))

(declare-fun m!6663796 () Bool)

(assert (=> b!5709964 m!6663796))

(declare-fun m!6663798 () Bool)

(assert (=> b!5709966 m!6663798))

(declare-fun m!6663800 () Bool)

(assert (=> bm!435878 m!6663800))

(assert (=> b!5709263 d!1801564))

(declare-fun d!1801566 () Bool)

(assert (=> d!1801566 (= (flatMap!1314 lt!2274828 lambda!307928) (choose!43158 lt!2274828 lambda!307928))))

(declare-fun bs!1333989 () Bool)

(assert (= bs!1333989 d!1801566))

(declare-fun m!6663802 () Bool)

(assert (=> bs!1333989 m!6663802))

(assert (=> b!5709263 d!1801566))

(declare-fun d!1801568 () Bool)

(assert (=> d!1801568 (= (flatMap!1314 lt!2274828 lambda!307928) (dynLambda!24766 lambda!307928 lt!2274830))))

(declare-fun lt!2274970 () Unit!156336)

(assert (=> d!1801568 (= lt!2274970 (choose!43157 lt!2274828 lt!2274830 lambda!307928))))

(assert (=> d!1801568 (= lt!2274828 (store ((as const (Array Context!10170 Bool)) false) lt!2274830 true))))

(assert (=> d!1801568 (= (lemmaFlatMapOnSingletonSet!846 lt!2274828 lt!2274830 lambda!307928) lt!2274970)))

(declare-fun b_lambda!215857 () Bool)

(assert (=> (not b_lambda!215857) (not d!1801568)))

(declare-fun bs!1333990 () Bool)

(assert (= bs!1333990 d!1801568))

(assert (=> bs!1333990 m!6663086))

(declare-fun m!6663804 () Bool)

(assert (=> bs!1333990 m!6663804))

(declare-fun m!6663806 () Bool)

(assert (=> bs!1333990 m!6663806))

(assert (=> bs!1333990 m!6663084))

(assert (=> b!5709263 d!1801568))

(declare-fun b!5709976 () Bool)

(declare-fun e!3512037 () (InoxSet Context!10170))

(assert (=> b!5709976 (= e!3512037 ((as const (Array Context!10170 Bool)) false))))

(declare-fun b!5709977 () Bool)

(declare-fun e!3512038 () Bool)

(assert (=> b!5709977 (= e!3512038 (nullable!5733 (h!69727 (exprs!5585 lt!2274818))))))

(declare-fun b!5709978 () Bool)

(declare-fun call!435884 () (InoxSet Context!10170))

(assert (=> b!5709978 (= e!3512037 call!435884)))

(declare-fun b!5709979 () Bool)

(declare-fun e!3512036 () (InoxSet Context!10170))

(assert (=> b!5709979 (= e!3512036 ((_ map or) call!435884 (derivationStepZipperUp!969 (Context!10171 (t!376723 (exprs!5585 lt!2274818))) (h!69726 s!2326))))))

(declare-fun bm!435879 () Bool)

(assert (=> bm!435879 (= call!435884 (derivationStepZipperDown!1043 (h!69727 (exprs!5585 lt!2274818)) (Context!10171 (t!376723 (exprs!5585 lt!2274818))) (h!69726 s!2326)))))

(declare-fun b!5709975 () Bool)

(assert (=> b!5709975 (= e!3512036 e!3512037)))

(declare-fun c!1006499 () Bool)

(assert (=> b!5709975 (= c!1006499 ((_ is Cons!63279) (exprs!5585 lt!2274818)))))

(declare-fun d!1801570 () Bool)

(declare-fun c!1006498 () Bool)

(assert (=> d!1801570 (= c!1006498 e!3512038)))

(declare-fun res!2410369 () Bool)

(assert (=> d!1801570 (=> (not res!2410369) (not e!3512038))))

(assert (=> d!1801570 (= res!2410369 ((_ is Cons!63279) (exprs!5585 lt!2274818)))))

(assert (=> d!1801570 (= (derivationStepZipperUp!969 lt!2274818 (h!69726 s!2326)) e!3512036)))

(assert (= (and d!1801570 res!2410369) b!5709977))

(assert (= (and d!1801570 c!1006498) b!5709979))

(assert (= (and d!1801570 (not c!1006498)) b!5709975))

(assert (= (and b!5709975 c!1006499) b!5709978))

(assert (= (and b!5709975 (not c!1006499)) b!5709976))

(assert (= (or b!5709979 b!5709978) bm!435879))

(declare-fun m!6663808 () Bool)

(assert (=> b!5709977 m!6663808))

(declare-fun m!6663810 () Bool)

(assert (=> b!5709979 m!6663810))

(declare-fun m!6663812 () Bool)

(assert (=> bm!435879 m!6663812))

(assert (=> b!5709263 d!1801570))

(declare-fun bm!435886 () Bool)

(declare-fun call!435893 () Bool)

(declare-fun call!435891 () Bool)

(assert (=> bm!435886 (= call!435893 call!435891)))

(declare-fun bm!435887 () Bool)

(declare-fun call!435892 () Bool)

(declare-fun c!1006504 () Bool)

(assert (=> bm!435887 (= call!435892 (validRegex!7437 (ite c!1006504 (regTwo!31915 r!7292) (regTwo!31914 r!7292))))))

(declare-fun bm!435888 () Bool)

(declare-fun c!1006505 () Bool)

(assert (=> bm!435888 (= call!435891 (validRegex!7437 (ite c!1006505 (reg!16030 r!7292) (ite c!1006504 (regOne!31915 r!7292) (regOne!31914 r!7292)))))))

(declare-fun b!5710034 () Bool)

(declare-fun res!2410380 () Bool)

(declare-fun e!3512072 () Bool)

(assert (=> b!5710034 (=> (not res!2410380) (not e!3512072))))

(assert (=> b!5710034 (= res!2410380 call!435893)))

(declare-fun e!3512077 () Bool)

(assert (=> b!5710034 (= e!3512077 e!3512072)))

(declare-fun d!1801572 () Bool)

(declare-fun res!2410384 () Bool)

(declare-fun e!3512071 () Bool)

(assert (=> d!1801572 (=> res!2410384 e!3512071)))

(assert (=> d!1801572 (= res!2410384 ((_ is ElementMatch!15701) r!7292))))

(assert (=> d!1801572 (= (validRegex!7437 r!7292) e!3512071)))

(declare-fun b!5710035 () Bool)

(declare-fun e!3512073 () Bool)

(assert (=> b!5710035 (= e!3512073 e!3512077)))

(assert (=> b!5710035 (= c!1006504 ((_ is Union!15701) r!7292))))

(declare-fun b!5710036 () Bool)

(assert (=> b!5710036 (= e!3512072 call!435892)))

(declare-fun b!5710037 () Bool)

(declare-fun e!3512076 () Bool)

(declare-fun e!3512075 () Bool)

(assert (=> b!5710037 (= e!3512076 e!3512075)))

(declare-fun res!2410382 () Bool)

(assert (=> b!5710037 (=> (not res!2410382) (not e!3512075))))

(assert (=> b!5710037 (= res!2410382 call!435893)))

(declare-fun b!5710038 () Bool)

(assert (=> b!5710038 (= e!3512071 e!3512073)))

(assert (=> b!5710038 (= c!1006505 ((_ is Star!15701) r!7292))))

(declare-fun b!5710039 () Bool)

(declare-fun e!3512074 () Bool)

(assert (=> b!5710039 (= e!3512073 e!3512074)))

(declare-fun res!2410383 () Bool)

(assert (=> b!5710039 (= res!2410383 (not (nullable!5733 (reg!16030 r!7292))))))

(assert (=> b!5710039 (=> (not res!2410383) (not e!3512074))))

(declare-fun b!5710040 () Bool)

(assert (=> b!5710040 (= e!3512074 call!435891)))

(declare-fun b!5710041 () Bool)

(assert (=> b!5710041 (= e!3512075 call!435892)))

(declare-fun b!5710042 () Bool)

(declare-fun res!2410381 () Bool)

(assert (=> b!5710042 (=> res!2410381 e!3512076)))

(assert (=> b!5710042 (= res!2410381 (not ((_ is Concat!24546) r!7292)))))

(assert (=> b!5710042 (= e!3512077 e!3512076)))

(assert (= (and d!1801572 (not res!2410384)) b!5710038))

(assert (= (and b!5710038 c!1006505) b!5710039))

(assert (= (and b!5710038 (not c!1006505)) b!5710035))

(assert (= (and b!5710039 res!2410383) b!5710040))

(assert (= (and b!5710035 c!1006504) b!5710034))

(assert (= (and b!5710035 (not c!1006504)) b!5710042))

(assert (= (and b!5710034 res!2410380) b!5710036))

(assert (= (and b!5710042 (not res!2410381)) b!5710037))

(assert (= (and b!5710037 res!2410382) b!5710041))

(assert (= (or b!5710036 b!5710041) bm!435887))

(assert (= (or b!5710034 b!5710037) bm!435886))

(assert (= (or b!5710040 bm!435886) bm!435888))

(declare-fun m!6663818 () Bool)

(assert (=> bm!435887 m!6663818))

(declare-fun m!6663820 () Bool)

(assert (=> bm!435888 m!6663820))

(declare-fun m!6663822 () Bool)

(assert (=> b!5710039 m!6663822))

(assert (=> start!587984 d!1801572))

(declare-fun d!1801582 () Bool)

(assert (=> d!1801582 (= (Exists!2801 lambda!307930) (choose!43148 lambda!307930))))

(declare-fun bs!1333995 () Bool)

(assert (= bs!1333995 d!1801582))

(declare-fun m!6663824 () Bool)

(assert (=> bs!1333995 m!6663824))

(assert (=> b!5709284 d!1801582))

(declare-fun d!1801584 () Bool)

(assert (=> d!1801584 (= (Exists!2801 lambda!307929) (choose!43148 lambda!307929))))

(declare-fun bs!1333996 () Bool)

(assert (= bs!1333996 d!1801584))

(declare-fun m!6663826 () Bool)

(assert (=> bs!1333996 m!6663826))

(assert (=> b!5709284 d!1801584))

(declare-fun d!1801586 () Bool)

(assert (=> d!1801586 (= (get!21811 lt!2274822) (v!51764 lt!2274822))))

(assert (=> b!5709284 d!1801586))

(declare-fun d!1801588 () Bool)

(assert (=> d!1801588 (= (isDefined!12413 lt!2274822) (not (isEmpty!35148 lt!2274822)))))

(declare-fun bs!1333997 () Bool)

(assert (= bs!1333997 d!1801588))

(declare-fun m!6663828 () Bool)

(assert (=> bs!1333997 m!6663828))

(assert (=> b!5709284 d!1801588))

(declare-fun b!5710046 () Bool)

(declare-fun e!3512079 () Bool)

(declare-fun lt!2274971 () List!63402)

(assert (=> b!5710046 (= e!3512079 (or (not (= (_2!36101 lt!2274833) Nil!63278)) (= lt!2274971 (_1!36101 lt!2274833))))))

(declare-fun b!5710043 () Bool)

(declare-fun e!3512078 () List!63402)

(assert (=> b!5710043 (= e!3512078 (_2!36101 lt!2274833))))

(declare-fun d!1801590 () Bool)

(assert (=> d!1801590 e!3512079))

(declare-fun res!2410385 () Bool)

(assert (=> d!1801590 (=> (not res!2410385) (not e!3512079))))

(assert (=> d!1801590 (= res!2410385 (= (content!11486 lt!2274971) ((_ map or) (content!11486 (_1!36101 lt!2274833)) (content!11486 (_2!36101 lt!2274833)))))))

(assert (=> d!1801590 (= lt!2274971 e!3512078)))

(declare-fun c!1006506 () Bool)

(assert (=> d!1801590 (= c!1006506 ((_ is Nil!63278) (_1!36101 lt!2274833)))))

(assert (=> d!1801590 (= (++!13893 (_1!36101 lt!2274833) (_2!36101 lt!2274833)) lt!2274971)))

(declare-fun b!5710045 () Bool)

(declare-fun res!2410386 () Bool)

(assert (=> b!5710045 (=> (not res!2410386) (not e!3512079))))

(assert (=> b!5710045 (= res!2410386 (= (size!40016 lt!2274971) (+ (size!40016 (_1!36101 lt!2274833)) (size!40016 (_2!36101 lt!2274833)))))))

(declare-fun b!5710044 () Bool)

(assert (=> b!5710044 (= e!3512078 (Cons!63278 (h!69726 (_1!36101 lt!2274833)) (++!13893 (t!376722 (_1!36101 lt!2274833)) (_2!36101 lt!2274833))))))

(assert (= (and d!1801590 c!1006506) b!5710043))

(assert (= (and d!1801590 (not c!1006506)) b!5710044))

(assert (= (and d!1801590 res!2410385) b!5710045))

(assert (= (and b!5710045 res!2410386) b!5710046))

(declare-fun m!6663830 () Bool)

(assert (=> d!1801590 m!6663830))

(declare-fun m!6663832 () Bool)

(assert (=> d!1801590 m!6663832))

(declare-fun m!6663834 () Bool)

(assert (=> d!1801590 m!6663834))

(declare-fun m!6663836 () Bool)

(assert (=> b!5710045 m!6663836))

(declare-fun m!6663838 () Bool)

(assert (=> b!5710045 m!6663838))

(declare-fun m!6663840 () Bool)

(assert (=> b!5710045 m!6663840))

(declare-fun m!6663842 () Bool)

(assert (=> b!5710044 m!6663842))

(assert (=> b!5709284 d!1801590))

(declare-fun bs!1333998 () Bool)

(declare-fun d!1801592 () Bool)

(assert (= bs!1333998 (and d!1801592 b!5709284)))

(declare-fun lambda!308010 () Int)

(assert (=> bs!1333998 (not (= lambda!308010 lambda!307930))))

(declare-fun bs!1333999 () Bool)

(assert (= bs!1333999 (and d!1801592 d!1801400)))

(assert (=> bs!1333999 (= (and (= s!2326 (_1!36101 lt!2274833)) (= lt!2274841 (reg!16030 (regOne!31914 r!7292))) (= (regTwo!31914 r!7292) lt!2274841)) (= lambda!308010 lambda!307954))))

(declare-fun bs!1334000 () Bool)

(assert (= bs!1334000 (and d!1801592 b!5709272)))

(assert (=> bs!1334000 (not (= lambda!308010 lambda!307927))))

(declare-fun bs!1334001 () Bool)

(assert (= bs!1334001 (and d!1801592 b!5709674)))

(assert (=> bs!1334001 (not (= lambda!308010 lambda!307987))))

(declare-fun bs!1334002 () Bool)

(assert (= bs!1334002 (and d!1801592 b!5709288)))

(assert (=> bs!1334002 (not (= lambda!308010 lambda!307933))))

(assert (=> bs!1334002 (not (= lambda!308010 lambda!307932))))

(declare-fun bs!1334003 () Bool)

(assert (= bs!1334003 (and d!1801592 b!5709706)))

(assert (=> bs!1334003 (not (= lambda!308010 lambda!307991))))

(declare-fun bs!1334004 () Bool)

(assert (= bs!1334004 (and d!1801592 b!5709679)))

(assert (=> bs!1334004 (not (= lambda!308010 lambda!307986))))

(assert (=> bs!1334000 (= (= lt!2274841 (regOne!31914 r!7292)) (= lambda!308010 lambda!307926))))

(declare-fun bs!1334005 () Bool)

(assert (= bs!1334005 (and d!1801592 d!1801404)))

(assert (=> bs!1334005 (not (= lambda!308010 lambda!307968))))

(assert (=> bs!1333998 (= lambda!308010 lambda!307929)))

(declare-fun bs!1334006 () Bool)

(assert (= bs!1334006 (and d!1801592 b!5709711)))

(assert (=> bs!1334006 (not (= lambda!308010 lambda!307990))))

(declare-fun bs!1334007 () Bool)

(assert (= bs!1334007 (and d!1801592 d!1801424)))

(assert (=> bs!1334007 (= (and (= s!2326 (_1!36101 lt!2274833)) (= lt!2274841 (reg!16030 (regOne!31914 r!7292))) (= (regTwo!31914 r!7292) lt!2274841)) (= lambda!308010 lambda!307980))))

(assert (=> bs!1334002 (= (and (= s!2326 (_1!36101 lt!2274833)) (= lt!2274841 (reg!16030 (regOne!31914 r!7292))) (= (regTwo!31914 r!7292) lt!2274841)) (= lambda!308010 lambda!307931))))

(assert (=> bs!1334005 (= (and (= s!2326 (_1!36101 lt!2274833)) (= lt!2274841 (reg!16030 (regOne!31914 r!7292))) (= (regTwo!31914 r!7292) (Star!15701 (reg!16030 (regOne!31914 r!7292))))) (= lambda!308010 lambda!307966))))

(assert (=> bs!1333999 (not (= lambda!308010 lambda!307957))))

(assert (=> d!1801592 true))

(assert (=> d!1801592 true))

(assert (=> d!1801592 true))

(assert (=> d!1801592 (= (isDefined!12413 (findConcatSeparation!2124 lt!2274841 (regTwo!31914 r!7292) Nil!63278 s!2326 s!2326)) (Exists!2801 lambda!308010))))

(declare-fun lt!2274972 () Unit!156336)

(assert (=> d!1801592 (= lt!2274972 (choose!43152 lt!2274841 (regTwo!31914 r!7292) s!2326))))

(assert (=> d!1801592 (validRegex!7437 lt!2274841)))

(assert (=> d!1801592 (= (lemmaFindConcatSeparationEquivalentToExists!1888 lt!2274841 (regTwo!31914 r!7292) s!2326) lt!2274972)))

(declare-fun bs!1334008 () Bool)

(assert (= bs!1334008 d!1801592))

(declare-fun m!6663844 () Bool)

(assert (=> bs!1334008 m!6663844))

(assert (=> bs!1334008 m!6663108))

(declare-fun m!6663846 () Bool)

(assert (=> bs!1334008 m!6663846))

(assert (=> bs!1334008 m!6663474))

(assert (=> bs!1334008 m!6663108))

(declare-fun m!6663848 () Bool)

(assert (=> bs!1334008 m!6663848))

(assert (=> b!5709284 d!1801592))

(declare-fun b!5710047 () Bool)

(declare-fun e!3512081 () Option!15710)

(assert (=> b!5710047 (= e!3512081 (Some!15709 (tuple2!65597 Nil!63278 s!2326)))))

(declare-fun b!5710048 () Bool)

(declare-fun e!3512080 () Bool)

(declare-fun lt!2274974 () Option!15710)

(assert (=> b!5710048 (= e!3512080 (= (++!13893 (_1!36101 (get!21811 lt!2274974)) (_2!36101 (get!21811 lt!2274974))) s!2326))))

(declare-fun b!5710049 () Bool)

(declare-fun res!2410387 () Bool)

(assert (=> b!5710049 (=> (not res!2410387) (not e!3512080))))

(assert (=> b!5710049 (= res!2410387 (matchR!7886 lt!2274841 (_1!36101 (get!21811 lt!2274974))))))

(declare-fun b!5710050 () Bool)

(declare-fun lt!2274975 () Unit!156336)

(declare-fun lt!2274973 () Unit!156336)

(assert (=> b!5710050 (= lt!2274975 lt!2274973)))

(assert (=> b!5710050 (= (++!13893 (++!13893 Nil!63278 (Cons!63278 (h!69726 s!2326) Nil!63278)) (t!376722 s!2326)) s!2326)))

(assert (=> b!5710050 (= lt!2274973 (lemmaMoveElementToOtherListKeepsConcatEq!2060 Nil!63278 (h!69726 s!2326) (t!376722 s!2326) s!2326))))

(declare-fun e!3512082 () Option!15710)

(assert (=> b!5710050 (= e!3512082 (findConcatSeparation!2124 lt!2274841 (regTwo!31914 r!7292) (++!13893 Nil!63278 (Cons!63278 (h!69726 s!2326) Nil!63278)) (t!376722 s!2326) s!2326))))

(declare-fun d!1801594 () Bool)

(declare-fun e!3512083 () Bool)

(assert (=> d!1801594 e!3512083))

(declare-fun res!2410391 () Bool)

(assert (=> d!1801594 (=> res!2410391 e!3512083)))

(assert (=> d!1801594 (= res!2410391 e!3512080)))

(declare-fun res!2410390 () Bool)

(assert (=> d!1801594 (=> (not res!2410390) (not e!3512080))))

(assert (=> d!1801594 (= res!2410390 (isDefined!12413 lt!2274974))))

(assert (=> d!1801594 (= lt!2274974 e!3512081)))

(declare-fun c!1006507 () Bool)

(declare-fun e!3512084 () Bool)

(assert (=> d!1801594 (= c!1006507 e!3512084)))

(declare-fun res!2410389 () Bool)

(assert (=> d!1801594 (=> (not res!2410389) (not e!3512084))))

(assert (=> d!1801594 (= res!2410389 (matchR!7886 lt!2274841 Nil!63278))))

(assert (=> d!1801594 (validRegex!7437 lt!2274841)))

(assert (=> d!1801594 (= (findConcatSeparation!2124 lt!2274841 (regTwo!31914 r!7292) Nil!63278 s!2326 s!2326) lt!2274974)))

(declare-fun b!5710051 () Bool)

(assert (=> b!5710051 (= e!3512081 e!3512082)))

(declare-fun c!1006508 () Bool)

(assert (=> b!5710051 (= c!1006508 ((_ is Nil!63278) s!2326))))

(declare-fun b!5710052 () Bool)

(assert (=> b!5710052 (= e!3512082 None!15709)))

(declare-fun b!5710053 () Bool)

(declare-fun res!2410388 () Bool)

(assert (=> b!5710053 (=> (not res!2410388) (not e!3512080))))

(assert (=> b!5710053 (= res!2410388 (matchR!7886 (regTwo!31914 r!7292) (_2!36101 (get!21811 lt!2274974))))))

(declare-fun b!5710054 () Bool)

(assert (=> b!5710054 (= e!3512084 (matchR!7886 (regTwo!31914 r!7292) s!2326))))

(declare-fun b!5710055 () Bool)

(assert (=> b!5710055 (= e!3512083 (not (isDefined!12413 lt!2274974)))))

(assert (= (and d!1801594 res!2410389) b!5710054))

(assert (= (and d!1801594 c!1006507) b!5710047))

(assert (= (and d!1801594 (not c!1006507)) b!5710051))

(assert (= (and b!5710051 c!1006508) b!5710052))

(assert (= (and b!5710051 (not c!1006508)) b!5710050))

(assert (= (and d!1801594 res!2410390) b!5710049))

(assert (= (and b!5710049 res!2410387) b!5710053))

(assert (= (and b!5710053 res!2410388) b!5710048))

(assert (= (and d!1801594 (not res!2410391)) b!5710055))

(declare-fun m!6663850 () Bool)

(assert (=> b!5710054 m!6663850))

(declare-fun m!6663852 () Bool)

(assert (=> b!5710048 m!6663852))

(declare-fun m!6663854 () Bool)

(assert (=> b!5710048 m!6663854))

(declare-fun m!6663856 () Bool)

(assert (=> b!5710055 m!6663856))

(assert (=> d!1801594 m!6663856))

(declare-fun m!6663858 () Bool)

(assert (=> d!1801594 m!6663858))

(assert (=> d!1801594 m!6663474))

(assert (=> b!5710049 m!6663852))

(declare-fun m!6663860 () Bool)

(assert (=> b!5710049 m!6663860))

(declare-fun m!6663862 () Bool)

(assert (=> b!5710050 m!6663862))

(assert (=> b!5710050 m!6663862))

(declare-fun m!6663864 () Bool)

(assert (=> b!5710050 m!6663864))

(declare-fun m!6663866 () Bool)

(assert (=> b!5710050 m!6663866))

(assert (=> b!5710050 m!6663862))

(declare-fun m!6663868 () Bool)

(assert (=> b!5710050 m!6663868))

(assert (=> b!5710053 m!6663852))

(declare-fun m!6663870 () Bool)

(assert (=> b!5710053 m!6663870))

(assert (=> b!5709284 d!1801594))

(declare-fun bs!1334009 () Bool)

(declare-fun d!1801596 () Bool)

(assert (= bs!1334009 (and d!1801596 b!5709284)))

(declare-fun lambda!308011 () Int)

(assert (=> bs!1334009 (not (= lambda!308011 lambda!307930))))

(declare-fun bs!1334010 () Bool)

(assert (= bs!1334010 (and d!1801596 d!1801400)))

(assert (=> bs!1334010 (= (and (= s!2326 (_1!36101 lt!2274833)) (= lt!2274841 (reg!16030 (regOne!31914 r!7292))) (= (regTwo!31914 r!7292) lt!2274841)) (= lambda!308011 lambda!307954))))

(declare-fun bs!1334011 () Bool)

(assert (= bs!1334011 (and d!1801596 b!5709272)))

(assert (=> bs!1334011 (not (= lambda!308011 lambda!307927))))

(declare-fun bs!1334012 () Bool)

(assert (= bs!1334012 (and d!1801596 b!5709674)))

(assert (=> bs!1334012 (not (= lambda!308011 lambda!307987))))

(declare-fun bs!1334013 () Bool)

(assert (= bs!1334013 (and d!1801596 b!5709288)))

(assert (=> bs!1334013 (not (= lambda!308011 lambda!307933))))

(declare-fun bs!1334014 () Bool)

(assert (= bs!1334014 (and d!1801596 d!1801592)))

(assert (=> bs!1334014 (= lambda!308011 lambda!308010)))

(assert (=> bs!1334013 (not (= lambda!308011 lambda!307932))))

(declare-fun bs!1334015 () Bool)

(assert (= bs!1334015 (and d!1801596 b!5709706)))

(assert (=> bs!1334015 (not (= lambda!308011 lambda!307991))))

(declare-fun bs!1334016 () Bool)

(assert (= bs!1334016 (and d!1801596 b!5709679)))

(assert (=> bs!1334016 (not (= lambda!308011 lambda!307986))))

(assert (=> bs!1334011 (= (= lt!2274841 (regOne!31914 r!7292)) (= lambda!308011 lambda!307926))))

(declare-fun bs!1334017 () Bool)

(assert (= bs!1334017 (and d!1801596 d!1801404)))

(assert (=> bs!1334017 (not (= lambda!308011 lambda!307968))))

(assert (=> bs!1334009 (= lambda!308011 lambda!307929)))

(declare-fun bs!1334018 () Bool)

(assert (= bs!1334018 (and d!1801596 b!5709711)))

(assert (=> bs!1334018 (not (= lambda!308011 lambda!307990))))

(declare-fun bs!1334019 () Bool)

(assert (= bs!1334019 (and d!1801596 d!1801424)))

(assert (=> bs!1334019 (= (and (= s!2326 (_1!36101 lt!2274833)) (= lt!2274841 (reg!16030 (regOne!31914 r!7292))) (= (regTwo!31914 r!7292) lt!2274841)) (= lambda!308011 lambda!307980))))

(assert (=> bs!1334013 (= (and (= s!2326 (_1!36101 lt!2274833)) (= lt!2274841 (reg!16030 (regOne!31914 r!7292))) (= (regTwo!31914 r!7292) lt!2274841)) (= lambda!308011 lambda!307931))))

(assert (=> bs!1334017 (= (and (= s!2326 (_1!36101 lt!2274833)) (= lt!2274841 (reg!16030 (regOne!31914 r!7292))) (= (regTwo!31914 r!7292) (Star!15701 (reg!16030 (regOne!31914 r!7292))))) (= lambda!308011 lambda!307966))))

(assert (=> bs!1334010 (not (= lambda!308011 lambda!307957))))

(assert (=> d!1801596 true))

(assert (=> d!1801596 true))

(assert (=> d!1801596 true))

(declare-fun lambda!308012 () Int)

(assert (=> bs!1334009 (= lambda!308012 lambda!307930)))

(assert (=> bs!1334010 (not (= lambda!308012 lambda!307954))))

(assert (=> bs!1334011 (= (= lt!2274841 (regOne!31914 r!7292)) (= lambda!308012 lambda!307927))))

(assert (=> bs!1334012 (= (and (= s!2326 (_1!36101 lt!2274833)) (= lt!2274841 (regOne!31914 lt!2274841)) (= (regTwo!31914 r!7292) (regTwo!31914 lt!2274841))) (= lambda!308012 lambda!307987))))

(assert (=> bs!1334013 (= (and (= s!2326 (_1!36101 lt!2274833)) (= lt!2274841 (reg!16030 (regOne!31914 r!7292))) (= (regTwo!31914 r!7292) lt!2274841)) (= lambda!308012 lambda!307933))))

(assert (=> bs!1334014 (not (= lambda!308012 lambda!308010))))

(assert (=> bs!1334013 (not (= lambda!308012 lambda!307932))))

(assert (=> bs!1334015 (= (= lt!2274841 (regOne!31914 r!7292)) (= lambda!308012 lambda!307991))))

(assert (=> bs!1334016 (not (= lambda!308012 lambda!307986))))

(declare-fun bs!1334020 () Bool)

(assert (= bs!1334020 d!1801596))

(assert (=> bs!1334020 (not (= lambda!308012 lambda!308011))))

(assert (=> bs!1334011 (not (= lambda!308012 lambda!307926))))

(assert (=> bs!1334017 (not (= lambda!308012 lambda!307968))))

(assert (=> bs!1334009 (not (= lambda!308012 lambda!307929))))

(assert (=> bs!1334018 (not (= lambda!308012 lambda!307990))))

(assert (=> bs!1334019 (not (= lambda!308012 lambda!307980))))

(assert (=> bs!1334013 (not (= lambda!308012 lambda!307931))))

(assert (=> bs!1334017 (not (= lambda!308012 lambda!307966))))

(assert (=> bs!1334010 (= (and (= s!2326 (_1!36101 lt!2274833)) (= lt!2274841 (reg!16030 (regOne!31914 r!7292))) (= (regTwo!31914 r!7292) lt!2274841)) (= lambda!308012 lambda!307957))))

(assert (=> d!1801596 true))

(assert (=> d!1801596 true))

(assert (=> d!1801596 true))

(assert (=> d!1801596 (= (Exists!2801 lambda!308011) (Exists!2801 lambda!308012))))

(declare-fun lt!2274976 () Unit!156336)

(assert (=> d!1801596 (= lt!2274976 (choose!43149 lt!2274841 (regTwo!31914 r!7292) s!2326))))

(assert (=> d!1801596 (validRegex!7437 lt!2274841)))

(assert (=> d!1801596 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1430 lt!2274841 (regTwo!31914 r!7292) s!2326) lt!2274976)))

(declare-fun m!6663872 () Bool)

(assert (=> bs!1334020 m!6663872))

(declare-fun m!6663874 () Bool)

(assert (=> bs!1334020 m!6663874))

(declare-fun m!6663876 () Bool)

(assert (=> bs!1334020 m!6663876))

(assert (=> bs!1334020 m!6663474))

(assert (=> b!5709284 d!1801596))

(declare-fun b!5710078 () Bool)

(declare-fun e!3512101 () Bool)

(assert (=> b!5710078 (= e!3512101 (nullable!5733 (regOne!31914 (reg!16030 (regOne!31914 r!7292)))))))

(declare-fun b!5710079 () Bool)

(declare-fun e!3512102 () (InoxSet Context!10170))

(declare-fun call!435907 () (InoxSet Context!10170))

(declare-fun call!435911 () (InoxSet Context!10170))

(assert (=> b!5710079 (= e!3512102 ((_ map or) call!435907 call!435911))))

(declare-fun b!5710080 () Bool)

(declare-fun e!3512097 () (InoxSet Context!10170))

(declare-fun call!435906 () (InoxSet Context!10170))

(assert (=> b!5710080 (= e!3512097 call!435906)))

(declare-fun d!1801598 () Bool)

(declare-fun c!1006519 () Bool)

(assert (=> d!1801598 (= c!1006519 (and ((_ is ElementMatch!15701) (reg!16030 (regOne!31914 r!7292))) (= (c!1006309 (reg!16030 (regOne!31914 r!7292))) (h!69726 s!2326))))))

(declare-fun e!3512099 () (InoxSet Context!10170))

(assert (=> d!1801598 (= (derivationStepZipperDown!1043 (reg!16030 (regOne!31914 r!7292)) lt!2274830 (h!69726 s!2326)) e!3512099)))

(declare-fun b!5710081 () Bool)

(declare-fun e!3512098 () (InoxSet Context!10170))

(assert (=> b!5710081 (= e!3512098 e!3512097)))

(declare-fun c!1006521 () Bool)

(assert (=> b!5710081 (= c!1006521 ((_ is Concat!24546) (reg!16030 (regOne!31914 r!7292))))))

(declare-fun bm!435901 () Bool)

(declare-fun c!1006523 () Bool)

(declare-fun c!1006522 () Bool)

(declare-fun call!435910 () List!63403)

(assert (=> bm!435901 (= call!435907 (derivationStepZipperDown!1043 (ite c!1006523 (regOne!31915 (reg!16030 (regOne!31914 r!7292))) (ite c!1006522 (regTwo!31914 (reg!16030 (regOne!31914 r!7292))) (ite c!1006521 (regOne!31914 (reg!16030 (regOne!31914 r!7292))) (reg!16030 (reg!16030 (regOne!31914 r!7292)))))) (ite (or c!1006523 c!1006522) lt!2274830 (Context!10171 call!435910)) (h!69726 s!2326)))))

(declare-fun call!435909 () List!63403)

(declare-fun bm!435902 () Bool)

(declare-fun $colon$colon!1724 (List!63403 Regex!15701) List!63403)

(assert (=> bm!435902 (= call!435909 ($colon$colon!1724 (exprs!5585 lt!2274830) (ite (or c!1006522 c!1006521) (regTwo!31914 (reg!16030 (regOne!31914 r!7292))) (reg!16030 (regOne!31914 r!7292)))))))

(declare-fun b!5710082 () Bool)

(declare-fun e!3512100 () (InoxSet Context!10170))

(assert (=> b!5710082 (= e!3512100 call!435906)))

(declare-fun bm!435903 () Bool)

(assert (=> bm!435903 (= call!435911 (derivationStepZipperDown!1043 (ite c!1006523 (regTwo!31915 (reg!16030 (regOne!31914 r!7292))) (regOne!31914 (reg!16030 (regOne!31914 r!7292)))) (ite c!1006523 lt!2274830 (Context!10171 call!435909)) (h!69726 s!2326)))))

(declare-fun bm!435904 () Bool)

(declare-fun call!435908 () (InoxSet Context!10170))

(assert (=> bm!435904 (= call!435906 call!435908)))

(declare-fun b!5710083 () Bool)

(assert (=> b!5710083 (= e!3512098 ((_ map or) call!435911 call!435908))))

(declare-fun b!5710084 () Bool)

(assert (=> b!5710084 (= e!3512100 ((as const (Array Context!10170 Bool)) false))))

(declare-fun b!5710085 () Bool)

(assert (=> b!5710085 (= e!3512099 e!3512102)))

(assert (=> b!5710085 (= c!1006523 ((_ is Union!15701) (reg!16030 (regOne!31914 r!7292))))))

(declare-fun b!5710086 () Bool)

(declare-fun c!1006520 () Bool)

(assert (=> b!5710086 (= c!1006520 ((_ is Star!15701) (reg!16030 (regOne!31914 r!7292))))))

(assert (=> b!5710086 (= e!3512097 e!3512100)))

(declare-fun bm!435905 () Bool)

(assert (=> bm!435905 (= call!435910 call!435909)))

(declare-fun b!5710087 () Bool)

(assert (=> b!5710087 (= c!1006522 e!3512101)))

(declare-fun res!2410394 () Bool)

(assert (=> b!5710087 (=> (not res!2410394) (not e!3512101))))

(assert (=> b!5710087 (= res!2410394 ((_ is Concat!24546) (reg!16030 (regOne!31914 r!7292))))))

(assert (=> b!5710087 (= e!3512102 e!3512098)))

(declare-fun bm!435906 () Bool)

(assert (=> bm!435906 (= call!435908 call!435907)))

(declare-fun b!5710088 () Bool)

(assert (=> b!5710088 (= e!3512099 (store ((as const (Array Context!10170 Bool)) false) lt!2274830 true))))

(assert (= (and d!1801598 c!1006519) b!5710088))

(assert (= (and d!1801598 (not c!1006519)) b!5710085))

(assert (= (and b!5710085 c!1006523) b!5710079))

(assert (= (and b!5710085 (not c!1006523)) b!5710087))

(assert (= (and b!5710087 res!2410394) b!5710078))

(assert (= (and b!5710087 c!1006522) b!5710083))

(assert (= (and b!5710087 (not c!1006522)) b!5710081))

(assert (= (and b!5710081 c!1006521) b!5710080))

(assert (= (and b!5710081 (not c!1006521)) b!5710086))

(assert (= (and b!5710086 c!1006520) b!5710082))

(assert (= (and b!5710086 (not c!1006520)) b!5710084))

(assert (= (or b!5710080 b!5710082) bm!435905))

(assert (= (or b!5710080 b!5710082) bm!435904))

(assert (= (or b!5710083 bm!435905) bm!435902))

(assert (= (or b!5710083 bm!435904) bm!435906))

(assert (= (or b!5710079 b!5710083) bm!435903))

(assert (= (or b!5710079 bm!435906) bm!435901))

(declare-fun m!6663878 () Bool)

(assert (=> bm!435901 m!6663878))

(declare-fun m!6663880 () Bool)

(assert (=> b!5710078 m!6663880))

(declare-fun m!6663882 () Bool)

(assert (=> bm!435903 m!6663882))

(declare-fun m!6663884 () Bool)

(assert (=> bm!435902 m!6663884))

(assert (=> b!5710088 m!6663084))

(assert (=> b!5709264 d!1801598))

(declare-fun d!1801600 () Bool)

(declare-fun e!3512105 () Bool)

(assert (=> d!1801600 e!3512105))

(declare-fun c!1006525 () Bool)

(assert (=> d!1801600 (= c!1006525 ((_ is EmptyExpr!15701) lt!2274841))))

(declare-fun lt!2274977 () Bool)

(declare-fun e!3512103 () Bool)

(assert (=> d!1801600 (= lt!2274977 e!3512103)))

(declare-fun c!1006524 () Bool)

(assert (=> d!1801600 (= c!1006524 (isEmpty!35145 (_1!36101 lt!2274833)))))

(assert (=> d!1801600 (validRegex!7437 lt!2274841)))

(assert (=> d!1801600 (= (matchR!7886 lt!2274841 (_1!36101 lt!2274833)) lt!2274977)))

(declare-fun b!5710089 () Bool)

(declare-fun res!2410397 () Bool)

(declare-fun e!3512107 () Bool)

(assert (=> b!5710089 (=> res!2410397 e!3512107)))

(assert (=> b!5710089 (= res!2410397 (not ((_ is ElementMatch!15701) lt!2274841)))))

(declare-fun e!3512108 () Bool)

(assert (=> b!5710089 (= e!3512108 e!3512107)))

(declare-fun b!5710090 () Bool)

(assert (=> b!5710090 (= e!3512105 e!3512108)))

(declare-fun c!1006526 () Bool)

(assert (=> b!5710090 (= c!1006526 ((_ is EmptyLang!15701) lt!2274841))))

(declare-fun b!5710091 () Bool)

(declare-fun e!3512106 () Bool)

(assert (=> b!5710091 (= e!3512107 e!3512106)))

(declare-fun res!2410401 () Bool)

(assert (=> b!5710091 (=> (not res!2410401) (not e!3512106))))

(assert (=> b!5710091 (= res!2410401 (not lt!2274977))))

(declare-fun b!5710092 () Bool)

(declare-fun call!435912 () Bool)

(assert (=> b!5710092 (= e!3512105 (= lt!2274977 call!435912))))

(declare-fun b!5710093 () Bool)

(declare-fun res!2410396 () Bool)

(assert (=> b!5710093 (=> res!2410396 e!3512107)))

(declare-fun e!3512109 () Bool)

(assert (=> b!5710093 (= res!2410396 e!3512109)))

(declare-fun res!2410399 () Bool)

(assert (=> b!5710093 (=> (not res!2410399) (not e!3512109))))

(assert (=> b!5710093 (= res!2410399 lt!2274977)))

(declare-fun b!5710094 () Bool)

(declare-fun e!3512104 () Bool)

(assert (=> b!5710094 (= e!3512104 (not (= (head!12093 (_1!36101 lt!2274833)) (c!1006309 lt!2274841))))))

(declare-fun b!5710095 () Bool)

(declare-fun res!2410398 () Bool)

(assert (=> b!5710095 (=> res!2410398 e!3512104)))

(assert (=> b!5710095 (= res!2410398 (not (isEmpty!35145 (tail!11188 (_1!36101 lt!2274833)))))))

(declare-fun b!5710096 () Bool)

(declare-fun res!2410402 () Bool)

(assert (=> b!5710096 (=> (not res!2410402) (not e!3512109))))

(assert (=> b!5710096 (= res!2410402 (not call!435912))))

(declare-fun b!5710097 () Bool)

(assert (=> b!5710097 (= e!3512106 e!3512104)))

(declare-fun res!2410400 () Bool)

(assert (=> b!5710097 (=> res!2410400 e!3512104)))

(assert (=> b!5710097 (= res!2410400 call!435912)))

(declare-fun b!5710098 () Bool)

(assert (=> b!5710098 (= e!3512103 (matchR!7886 (derivativeStep!4510 lt!2274841 (head!12093 (_1!36101 lt!2274833))) (tail!11188 (_1!36101 lt!2274833))))))

(declare-fun b!5710099 () Bool)

(assert (=> b!5710099 (= e!3512108 (not lt!2274977))))

(declare-fun b!5710100 () Bool)

(declare-fun res!2410395 () Bool)

(assert (=> b!5710100 (=> (not res!2410395) (not e!3512109))))

(assert (=> b!5710100 (= res!2410395 (isEmpty!35145 (tail!11188 (_1!36101 lt!2274833))))))

(declare-fun b!5710101 () Bool)

(assert (=> b!5710101 (= e!3512109 (= (head!12093 (_1!36101 lt!2274833)) (c!1006309 lt!2274841)))))

(declare-fun b!5710102 () Bool)

(assert (=> b!5710102 (= e!3512103 (nullable!5733 lt!2274841))))

(declare-fun bm!435907 () Bool)

(assert (=> bm!435907 (= call!435912 (isEmpty!35145 (_1!36101 lt!2274833)))))

(assert (= (and d!1801600 c!1006524) b!5710102))

(assert (= (and d!1801600 (not c!1006524)) b!5710098))

(assert (= (and d!1801600 c!1006525) b!5710092))

(assert (= (and d!1801600 (not c!1006525)) b!5710090))

(assert (= (and b!5710090 c!1006526) b!5710099))

(assert (= (and b!5710090 (not c!1006526)) b!5710089))

(assert (= (and b!5710089 (not res!2410397)) b!5710093))

(assert (= (and b!5710093 res!2410399) b!5710096))

(assert (= (and b!5710096 res!2410402) b!5710100))

(assert (= (and b!5710100 res!2410395) b!5710101))

(assert (= (and b!5710093 (not res!2410396)) b!5710091))

(assert (= (and b!5710091 res!2410401) b!5710097))

(assert (= (and b!5710097 (not res!2410400)) b!5710095))

(assert (= (and b!5710095 (not res!2410398)) b!5710094))

(assert (= (or b!5710092 b!5710097 b!5710096) bm!435907))

(declare-fun m!6663886 () Bool)

(assert (=> b!5710101 m!6663886))

(declare-fun m!6663888 () Bool)

(assert (=> b!5710100 m!6663888))

(assert (=> b!5710100 m!6663888))

(declare-fun m!6663890 () Bool)

(assert (=> b!5710100 m!6663890))

(assert (=> b!5710095 m!6663888))

(assert (=> b!5710095 m!6663888))

(assert (=> b!5710095 m!6663890))

(assert (=> b!5710098 m!6663886))

(assert (=> b!5710098 m!6663886))

(declare-fun m!6663892 () Bool)

(assert (=> b!5710098 m!6663892))

(assert (=> b!5710098 m!6663888))

(assert (=> b!5710098 m!6663892))

(assert (=> b!5710098 m!6663888))

(declare-fun m!6663894 () Bool)

(assert (=> b!5710098 m!6663894))

(assert (=> d!1801600 m!6663062))

(assert (=> d!1801600 m!6663474))

(declare-fun m!6663896 () Bool)

(assert (=> b!5710102 m!6663896))

(assert (=> bm!435907 m!6663062))

(assert (=> b!5710094 m!6663886))

(assert (=> b!5709285 d!1801600))

(declare-fun d!1801602 () Bool)

(assert (=> d!1801602 (= (isEmpty!35144 (t!376723 (exprs!5585 (h!69728 zl!343)))) ((_ is Nil!63279) (t!376723 (exprs!5585 (h!69728 zl!343)))))))

(assert (=> b!5709281 d!1801602))

(declare-fun b!5710104 () Bool)

(declare-fun e!3512111 () (InoxSet Context!10170))

(assert (=> b!5710104 (= e!3512111 ((as const (Array Context!10170 Bool)) false))))

(declare-fun b!5710105 () Bool)

(declare-fun e!3512112 () Bool)

(assert (=> b!5710105 (= e!3512112 (nullable!5733 (h!69727 (exprs!5585 lt!2274842))))))

(declare-fun b!5710106 () Bool)

(declare-fun call!435913 () (InoxSet Context!10170))

(assert (=> b!5710106 (= e!3512111 call!435913)))

(declare-fun e!3512110 () (InoxSet Context!10170))

(declare-fun b!5710107 () Bool)

(assert (=> b!5710107 (= e!3512110 ((_ map or) call!435913 (derivationStepZipperUp!969 (Context!10171 (t!376723 (exprs!5585 lt!2274842))) (h!69726 s!2326))))))

(declare-fun bm!435908 () Bool)

(assert (=> bm!435908 (= call!435913 (derivationStepZipperDown!1043 (h!69727 (exprs!5585 lt!2274842)) (Context!10171 (t!376723 (exprs!5585 lt!2274842))) (h!69726 s!2326)))))

(declare-fun b!5710103 () Bool)

(assert (=> b!5710103 (= e!3512110 e!3512111)))

(declare-fun c!1006528 () Bool)

(assert (=> b!5710103 (= c!1006528 ((_ is Cons!63279) (exprs!5585 lt!2274842)))))

(declare-fun d!1801604 () Bool)

(declare-fun c!1006527 () Bool)

(assert (=> d!1801604 (= c!1006527 e!3512112)))

(declare-fun res!2410403 () Bool)

(assert (=> d!1801604 (=> (not res!2410403) (not e!3512112))))

(assert (=> d!1801604 (= res!2410403 ((_ is Cons!63279) (exprs!5585 lt!2274842)))))

(assert (=> d!1801604 (= (derivationStepZipperUp!969 lt!2274842 (h!69726 s!2326)) e!3512110)))

(assert (= (and d!1801604 res!2410403) b!5710105))

(assert (= (and d!1801604 c!1006527) b!5710107))

(assert (= (and d!1801604 (not c!1006527)) b!5710103))

(assert (= (and b!5710103 c!1006528) b!5710106))

(assert (= (and b!5710103 (not c!1006528)) b!5710104))

(assert (= (or b!5710107 b!5710106) bm!435908))

(declare-fun m!6663898 () Bool)

(assert (=> b!5710105 m!6663898))

(declare-fun m!6663900 () Bool)

(assert (=> b!5710107 m!6663900))

(declare-fun m!6663902 () Bool)

(assert (=> bm!435908 m!6663902))

(assert (=> b!5709282 d!1801604))

(declare-fun d!1801606 () Bool)

(assert (=> d!1801606 (= (nullable!5733 (h!69727 (exprs!5585 (h!69728 zl!343)))) (nullableFct!1802 (h!69727 (exprs!5585 (h!69728 zl!343)))))))

(declare-fun bs!1334021 () Bool)

(assert (= bs!1334021 d!1801606))

(declare-fun m!6663904 () Bool)

(assert (=> bs!1334021 m!6663904))

(assert (=> b!5709282 d!1801606))

(declare-fun b!5710109 () Bool)

(declare-fun e!3512114 () (InoxSet Context!10170))

(assert (=> b!5710109 (= e!3512114 ((as const (Array Context!10170 Bool)) false))))

(declare-fun b!5710110 () Bool)

(declare-fun e!3512115 () Bool)

(assert (=> b!5710110 (= e!3512115 (nullable!5733 (h!69727 (exprs!5585 (Context!10171 (Cons!63279 (h!69727 (exprs!5585 (h!69728 zl!343))) (t!376723 (exprs!5585 (h!69728 zl!343)))))))))))

(declare-fun b!5710111 () Bool)

(declare-fun call!435914 () (InoxSet Context!10170))

(assert (=> b!5710111 (= e!3512114 call!435914)))

(declare-fun e!3512113 () (InoxSet Context!10170))

(declare-fun b!5710112 () Bool)

(assert (=> b!5710112 (= e!3512113 ((_ map or) call!435914 (derivationStepZipperUp!969 (Context!10171 (t!376723 (exprs!5585 (Context!10171 (Cons!63279 (h!69727 (exprs!5585 (h!69728 zl!343))) (t!376723 (exprs!5585 (h!69728 zl!343)))))))) (h!69726 s!2326))))))

(declare-fun bm!435909 () Bool)

(assert (=> bm!435909 (= call!435914 (derivationStepZipperDown!1043 (h!69727 (exprs!5585 (Context!10171 (Cons!63279 (h!69727 (exprs!5585 (h!69728 zl!343))) (t!376723 (exprs!5585 (h!69728 zl!343))))))) (Context!10171 (t!376723 (exprs!5585 (Context!10171 (Cons!63279 (h!69727 (exprs!5585 (h!69728 zl!343))) (t!376723 (exprs!5585 (h!69728 zl!343)))))))) (h!69726 s!2326)))))

(declare-fun b!5710108 () Bool)

(assert (=> b!5710108 (= e!3512113 e!3512114)))

(declare-fun c!1006530 () Bool)

(assert (=> b!5710108 (= c!1006530 ((_ is Cons!63279) (exprs!5585 (Context!10171 (Cons!63279 (h!69727 (exprs!5585 (h!69728 zl!343))) (t!376723 (exprs!5585 (h!69728 zl!343))))))))))

(declare-fun d!1801608 () Bool)

(declare-fun c!1006529 () Bool)

(assert (=> d!1801608 (= c!1006529 e!3512115)))

(declare-fun res!2410404 () Bool)

(assert (=> d!1801608 (=> (not res!2410404) (not e!3512115))))

(assert (=> d!1801608 (= res!2410404 ((_ is Cons!63279) (exprs!5585 (Context!10171 (Cons!63279 (h!69727 (exprs!5585 (h!69728 zl!343))) (t!376723 (exprs!5585 (h!69728 zl!343))))))))))

(assert (=> d!1801608 (= (derivationStepZipperUp!969 (Context!10171 (Cons!63279 (h!69727 (exprs!5585 (h!69728 zl!343))) (t!376723 (exprs!5585 (h!69728 zl!343))))) (h!69726 s!2326)) e!3512113)))

(assert (= (and d!1801608 res!2410404) b!5710110))

(assert (= (and d!1801608 c!1006529) b!5710112))

(assert (= (and d!1801608 (not c!1006529)) b!5710108))

(assert (= (and b!5710108 c!1006530) b!5710111))

(assert (= (and b!5710108 (not c!1006530)) b!5710109))

(assert (= (or b!5710112 b!5710111) bm!435909))

(declare-fun m!6663906 () Bool)

(assert (=> b!5710110 m!6663906))

(declare-fun m!6663908 () Bool)

(assert (=> b!5710112 m!6663908))

(declare-fun m!6663910 () Bool)

(assert (=> bm!435909 m!6663910))

(assert (=> b!5709282 d!1801608))

(declare-fun b!5710113 () Bool)

(declare-fun e!3512120 () Bool)

(assert (=> b!5710113 (= e!3512120 (nullable!5733 (regOne!31914 (h!69727 (exprs!5585 (h!69728 zl!343))))))))

(declare-fun b!5710114 () Bool)

(declare-fun e!3512121 () (InoxSet Context!10170))

(declare-fun call!435916 () (InoxSet Context!10170))

(declare-fun call!435920 () (InoxSet Context!10170))

(assert (=> b!5710114 (= e!3512121 ((_ map or) call!435916 call!435920))))

(declare-fun b!5710115 () Bool)

(declare-fun e!3512116 () (InoxSet Context!10170))

(declare-fun call!435915 () (InoxSet Context!10170))

(assert (=> b!5710115 (= e!3512116 call!435915)))

(declare-fun d!1801610 () Bool)

(declare-fun c!1006531 () Bool)

(assert (=> d!1801610 (= c!1006531 (and ((_ is ElementMatch!15701) (h!69727 (exprs!5585 (h!69728 zl!343)))) (= (c!1006309 (h!69727 (exprs!5585 (h!69728 zl!343)))) (h!69726 s!2326))))))

(declare-fun e!3512118 () (InoxSet Context!10170))

(assert (=> d!1801610 (= (derivationStepZipperDown!1043 (h!69727 (exprs!5585 (h!69728 zl!343))) lt!2274842 (h!69726 s!2326)) e!3512118)))

(declare-fun b!5710116 () Bool)

(declare-fun e!3512117 () (InoxSet Context!10170))

(assert (=> b!5710116 (= e!3512117 e!3512116)))

(declare-fun c!1006533 () Bool)

(assert (=> b!5710116 (= c!1006533 ((_ is Concat!24546) (h!69727 (exprs!5585 (h!69728 zl!343)))))))

(declare-fun c!1006535 () Bool)

(declare-fun c!1006534 () Bool)

(declare-fun call!435919 () List!63403)

(declare-fun bm!435910 () Bool)

(assert (=> bm!435910 (= call!435916 (derivationStepZipperDown!1043 (ite c!1006535 (regOne!31915 (h!69727 (exprs!5585 (h!69728 zl!343)))) (ite c!1006534 (regTwo!31914 (h!69727 (exprs!5585 (h!69728 zl!343)))) (ite c!1006533 (regOne!31914 (h!69727 (exprs!5585 (h!69728 zl!343)))) (reg!16030 (h!69727 (exprs!5585 (h!69728 zl!343))))))) (ite (or c!1006535 c!1006534) lt!2274842 (Context!10171 call!435919)) (h!69726 s!2326)))))

(declare-fun bm!435911 () Bool)

(declare-fun call!435918 () List!63403)

(assert (=> bm!435911 (= call!435918 ($colon$colon!1724 (exprs!5585 lt!2274842) (ite (or c!1006534 c!1006533) (regTwo!31914 (h!69727 (exprs!5585 (h!69728 zl!343)))) (h!69727 (exprs!5585 (h!69728 zl!343))))))))

(declare-fun b!5710117 () Bool)

(declare-fun e!3512119 () (InoxSet Context!10170))

(assert (=> b!5710117 (= e!3512119 call!435915)))

(declare-fun bm!435912 () Bool)

(assert (=> bm!435912 (= call!435920 (derivationStepZipperDown!1043 (ite c!1006535 (regTwo!31915 (h!69727 (exprs!5585 (h!69728 zl!343)))) (regOne!31914 (h!69727 (exprs!5585 (h!69728 zl!343))))) (ite c!1006535 lt!2274842 (Context!10171 call!435918)) (h!69726 s!2326)))))

(declare-fun bm!435913 () Bool)

(declare-fun call!435917 () (InoxSet Context!10170))

(assert (=> bm!435913 (= call!435915 call!435917)))

(declare-fun b!5710118 () Bool)

(assert (=> b!5710118 (= e!3512117 ((_ map or) call!435920 call!435917))))

(declare-fun b!5710119 () Bool)

(assert (=> b!5710119 (= e!3512119 ((as const (Array Context!10170 Bool)) false))))

(declare-fun b!5710120 () Bool)

(assert (=> b!5710120 (= e!3512118 e!3512121)))

(assert (=> b!5710120 (= c!1006535 ((_ is Union!15701) (h!69727 (exprs!5585 (h!69728 zl!343)))))))

(declare-fun b!5710121 () Bool)

(declare-fun c!1006532 () Bool)

(assert (=> b!5710121 (= c!1006532 ((_ is Star!15701) (h!69727 (exprs!5585 (h!69728 zl!343)))))))

(assert (=> b!5710121 (= e!3512116 e!3512119)))

(declare-fun bm!435914 () Bool)

(assert (=> bm!435914 (= call!435919 call!435918)))

(declare-fun b!5710122 () Bool)

(assert (=> b!5710122 (= c!1006534 e!3512120)))

(declare-fun res!2410405 () Bool)

(assert (=> b!5710122 (=> (not res!2410405) (not e!3512120))))

(assert (=> b!5710122 (= res!2410405 ((_ is Concat!24546) (h!69727 (exprs!5585 (h!69728 zl!343)))))))

(assert (=> b!5710122 (= e!3512121 e!3512117)))

(declare-fun bm!435915 () Bool)

(assert (=> bm!435915 (= call!435917 call!435916)))

(declare-fun b!5710123 () Bool)

(assert (=> b!5710123 (= e!3512118 (store ((as const (Array Context!10170 Bool)) false) lt!2274842 true))))

(assert (= (and d!1801610 c!1006531) b!5710123))

(assert (= (and d!1801610 (not c!1006531)) b!5710120))

(assert (= (and b!5710120 c!1006535) b!5710114))

(assert (= (and b!5710120 (not c!1006535)) b!5710122))

(assert (= (and b!5710122 res!2410405) b!5710113))

(assert (= (and b!5710122 c!1006534) b!5710118))

(assert (= (and b!5710122 (not c!1006534)) b!5710116))

(assert (= (and b!5710116 c!1006533) b!5710115))

(assert (= (and b!5710116 (not c!1006533)) b!5710121))

(assert (= (and b!5710121 c!1006532) b!5710117))

(assert (= (and b!5710121 (not c!1006532)) b!5710119))

(assert (= (or b!5710115 b!5710117) bm!435914))

(assert (= (or b!5710115 b!5710117) bm!435913))

(assert (= (or b!5710118 bm!435914) bm!435911))

(assert (= (or b!5710118 bm!435913) bm!435915))

(assert (= (or b!5710114 b!5710118) bm!435912))

(assert (= (or b!5710114 bm!435915) bm!435910))

(declare-fun m!6663912 () Bool)

(assert (=> bm!435910 m!6663912))

(declare-fun m!6663914 () Bool)

(assert (=> b!5710113 m!6663914))

(declare-fun m!6663916 () Bool)

(assert (=> bm!435912 m!6663916))

(declare-fun m!6663918 () Bool)

(assert (=> bm!435911 m!6663918))

(declare-fun m!6663920 () Bool)

(assert (=> b!5710123 m!6663920))

(assert (=> b!5709282 d!1801610))

(declare-fun d!1801612 () Bool)

(assert (=> d!1801612 (= (flatMap!1314 z!1189 lambda!307928) (dynLambda!24766 lambda!307928 (h!69728 zl!343)))))

(declare-fun lt!2274978 () Unit!156336)

(assert (=> d!1801612 (= lt!2274978 (choose!43157 z!1189 (h!69728 zl!343) lambda!307928))))

(assert (=> d!1801612 (= z!1189 (store ((as const (Array Context!10170 Bool)) false) (h!69728 zl!343) true))))

(assert (=> d!1801612 (= (lemmaFlatMapOnSingletonSet!846 z!1189 (h!69728 zl!343) lambda!307928) lt!2274978)))

(declare-fun b_lambda!215867 () Bool)

(assert (=> (not b_lambda!215867) (not d!1801612)))

(declare-fun bs!1334022 () Bool)

(assert (= bs!1334022 d!1801612))

(assert (=> bs!1334022 m!6663126))

(declare-fun m!6663922 () Bool)

(assert (=> bs!1334022 m!6663922))

(declare-fun m!6663924 () Bool)

(assert (=> bs!1334022 m!6663924))

(declare-fun m!6663926 () Bool)

(assert (=> bs!1334022 m!6663926))

(assert (=> b!5709282 d!1801612))

(declare-fun b!5710125 () Bool)

(declare-fun e!3512123 () (InoxSet Context!10170))

(assert (=> b!5710125 (= e!3512123 ((as const (Array Context!10170 Bool)) false))))

(declare-fun b!5710126 () Bool)

(declare-fun e!3512124 () Bool)

(assert (=> b!5710126 (= e!3512124 (nullable!5733 (h!69727 (exprs!5585 (h!69728 zl!343)))))))

(declare-fun b!5710127 () Bool)

(declare-fun call!435921 () (InoxSet Context!10170))

(assert (=> b!5710127 (= e!3512123 call!435921)))

(declare-fun b!5710128 () Bool)

(declare-fun e!3512122 () (InoxSet Context!10170))

(assert (=> b!5710128 (= e!3512122 ((_ map or) call!435921 (derivationStepZipperUp!969 (Context!10171 (t!376723 (exprs!5585 (h!69728 zl!343)))) (h!69726 s!2326))))))

(declare-fun bm!435916 () Bool)

(assert (=> bm!435916 (= call!435921 (derivationStepZipperDown!1043 (h!69727 (exprs!5585 (h!69728 zl!343))) (Context!10171 (t!376723 (exprs!5585 (h!69728 zl!343)))) (h!69726 s!2326)))))

(declare-fun b!5710124 () Bool)

(assert (=> b!5710124 (= e!3512122 e!3512123)))

(declare-fun c!1006537 () Bool)

(assert (=> b!5710124 (= c!1006537 ((_ is Cons!63279) (exprs!5585 (h!69728 zl!343))))))

(declare-fun d!1801614 () Bool)

(declare-fun c!1006536 () Bool)

(assert (=> d!1801614 (= c!1006536 e!3512124)))

(declare-fun res!2410406 () Bool)

(assert (=> d!1801614 (=> (not res!2410406) (not e!3512124))))

(assert (=> d!1801614 (= res!2410406 ((_ is Cons!63279) (exprs!5585 (h!69728 zl!343))))))

(assert (=> d!1801614 (= (derivationStepZipperUp!969 (h!69728 zl!343) (h!69726 s!2326)) e!3512122)))

(assert (= (and d!1801614 res!2410406) b!5710126))

(assert (= (and d!1801614 c!1006536) b!5710128))

(assert (= (and d!1801614 (not c!1006536)) b!5710124))

(assert (= (and b!5710124 c!1006537) b!5710127))

(assert (= (and b!5710124 (not c!1006537)) b!5710125))

(assert (= (or b!5710128 b!5710127) bm!435916))

(assert (=> b!5710126 m!6663134))

(declare-fun m!6663928 () Bool)

(assert (=> b!5710128 m!6663928))

(declare-fun m!6663930 () Bool)

(assert (=> bm!435916 m!6663930))

(assert (=> b!5709282 d!1801614))

(declare-fun d!1801616 () Bool)

(assert (=> d!1801616 (= (flatMap!1314 z!1189 lambda!307928) (choose!43158 z!1189 lambda!307928))))

(declare-fun bs!1334023 () Bool)

(assert (= bs!1334023 d!1801616))

(declare-fun m!6663932 () Bool)

(assert (=> bs!1334023 m!6663932))

(assert (=> b!5709282 d!1801616))

(declare-fun d!1801618 () Bool)

(assert (=> d!1801618 (= (flatMap!1314 lt!2274816 lambda!307928) (choose!43158 lt!2274816 lambda!307928))))

(declare-fun bs!1334024 () Bool)

(assert (= bs!1334024 d!1801618))

(declare-fun m!6663934 () Bool)

(assert (=> bs!1334024 m!6663934))

(assert (=> b!5709262 d!1801618))

(declare-fun b!5710130 () Bool)

(declare-fun e!3512126 () (InoxSet Context!10170))

(assert (=> b!5710130 (= e!3512126 ((as const (Array Context!10170 Bool)) false))))

(declare-fun b!5710131 () Bool)

(declare-fun e!3512127 () Bool)

(assert (=> b!5710131 (= e!3512127 (nullable!5733 (h!69727 (exprs!5585 lt!2274820))))))

(declare-fun b!5710132 () Bool)

(declare-fun call!435922 () (InoxSet Context!10170))

(assert (=> b!5710132 (= e!3512126 call!435922)))

(declare-fun e!3512125 () (InoxSet Context!10170))

(declare-fun b!5710133 () Bool)

(assert (=> b!5710133 (= e!3512125 ((_ map or) call!435922 (derivationStepZipperUp!969 (Context!10171 (t!376723 (exprs!5585 lt!2274820))) (h!69726 s!2326))))))

(declare-fun bm!435917 () Bool)

(assert (=> bm!435917 (= call!435922 (derivationStepZipperDown!1043 (h!69727 (exprs!5585 lt!2274820)) (Context!10171 (t!376723 (exprs!5585 lt!2274820))) (h!69726 s!2326)))))

(declare-fun b!5710129 () Bool)

(assert (=> b!5710129 (= e!3512125 e!3512126)))

(declare-fun c!1006539 () Bool)

(assert (=> b!5710129 (= c!1006539 ((_ is Cons!63279) (exprs!5585 lt!2274820)))))

(declare-fun d!1801620 () Bool)

(declare-fun c!1006538 () Bool)

(assert (=> d!1801620 (= c!1006538 e!3512127)))

(declare-fun res!2410407 () Bool)

(assert (=> d!1801620 (=> (not res!2410407) (not e!3512127))))

(assert (=> d!1801620 (= res!2410407 ((_ is Cons!63279) (exprs!5585 lt!2274820)))))

(assert (=> d!1801620 (= (derivationStepZipperUp!969 lt!2274820 (h!69726 s!2326)) e!3512125)))

(assert (= (and d!1801620 res!2410407) b!5710131))

(assert (= (and d!1801620 c!1006538) b!5710133))

(assert (= (and d!1801620 (not c!1006538)) b!5710129))

(assert (= (and b!5710129 c!1006539) b!5710132))

(assert (= (and b!5710129 (not c!1006539)) b!5710130))

(assert (= (or b!5710133 b!5710132) bm!435917))

(declare-fun m!6663936 () Bool)

(assert (=> b!5710131 m!6663936))

(declare-fun m!6663938 () Bool)

(assert (=> b!5710133 m!6663938))

(declare-fun m!6663940 () Bool)

(assert (=> bm!435917 m!6663940))

(assert (=> b!5709262 d!1801620))

(declare-fun d!1801622 () Bool)

(assert (=> d!1801622 (= (flatMap!1314 lt!2274816 lambda!307928) (dynLambda!24766 lambda!307928 lt!2274820))))

(declare-fun lt!2274979 () Unit!156336)

(assert (=> d!1801622 (= lt!2274979 (choose!43157 lt!2274816 lt!2274820 lambda!307928))))

(assert (=> d!1801622 (= lt!2274816 (store ((as const (Array Context!10170 Bool)) false) lt!2274820 true))))

(assert (=> d!1801622 (= (lemmaFlatMapOnSingletonSet!846 lt!2274816 lt!2274820 lambda!307928) lt!2274979)))

(declare-fun b_lambda!215869 () Bool)

(assert (=> (not b_lambda!215869) (not d!1801622)))

(declare-fun bs!1334025 () Bool)

(assert (= bs!1334025 d!1801622))

(assert (=> bs!1334025 m!6663154))

(declare-fun m!6663942 () Bool)

(assert (=> bs!1334025 m!6663942))

(declare-fun m!6663944 () Bool)

(assert (=> bs!1334025 m!6663944))

(assert (=> bs!1334025 m!6663150))

(assert (=> b!5709262 d!1801622))

(declare-fun bs!1334026 () Bool)

(declare-fun d!1801624 () Bool)

(assert (= bs!1334026 (and d!1801624 b!5709282)))

(declare-fun lambda!308015 () Int)

(assert (=> bs!1334026 (= lambda!308015 lambda!307928)))

(assert (=> d!1801624 true))

(assert (=> d!1801624 (= (derivationStepZipper!1784 lt!2274816 (h!69726 s!2326)) (flatMap!1314 lt!2274816 lambda!308015))))

(declare-fun bs!1334027 () Bool)

(assert (= bs!1334027 d!1801624))

(declare-fun m!6663946 () Bool)

(assert (=> bs!1334027 m!6663946))

(assert (=> b!5709262 d!1801624))

(declare-fun d!1801626 () Bool)

(declare-fun lt!2274980 () Regex!15701)

(assert (=> d!1801626 (validRegex!7437 lt!2274980)))

(assert (=> d!1801626 (= lt!2274980 (generalisedUnion!1564 (unfocusZipperList!1129 (Cons!63280 lt!2274820 Nil!63280))))))

(assert (=> d!1801626 (= (unfocusZipper!1443 (Cons!63280 lt!2274820 Nil!63280)) lt!2274980)))

(declare-fun bs!1334028 () Bool)

(assert (= bs!1334028 d!1801626))

(declare-fun m!6663948 () Bool)

(assert (=> bs!1334028 m!6663948))

(declare-fun m!6663950 () Bool)

(assert (=> bs!1334028 m!6663950))

(assert (=> bs!1334028 m!6663950))

(declare-fun m!6663952 () Bool)

(assert (=> bs!1334028 m!6663952))

(assert (=> b!5709283 d!1801626))

(declare-fun d!1801628 () Bool)

(declare-fun e!3512130 () Bool)

(assert (=> d!1801628 e!3512130))

(declare-fun c!1006543 () Bool)

(assert (=> d!1801628 (= c!1006543 ((_ is EmptyExpr!15701) (regTwo!31914 r!7292)))))

(declare-fun lt!2274981 () Bool)

(declare-fun e!3512128 () Bool)

(assert (=> d!1801628 (= lt!2274981 e!3512128)))

(declare-fun c!1006542 () Bool)

(assert (=> d!1801628 (= c!1006542 (isEmpty!35145 (_2!36101 lt!2274833)))))

(assert (=> d!1801628 (validRegex!7437 (regTwo!31914 r!7292))))

(assert (=> d!1801628 (= (matchR!7886 (regTwo!31914 r!7292) (_2!36101 lt!2274833)) lt!2274981)))

(declare-fun b!5710136 () Bool)

(declare-fun res!2410410 () Bool)

(declare-fun e!3512132 () Bool)

(assert (=> b!5710136 (=> res!2410410 e!3512132)))

(assert (=> b!5710136 (= res!2410410 (not ((_ is ElementMatch!15701) (regTwo!31914 r!7292))))))

(declare-fun e!3512133 () Bool)

(assert (=> b!5710136 (= e!3512133 e!3512132)))

(declare-fun b!5710137 () Bool)

(assert (=> b!5710137 (= e!3512130 e!3512133)))

(declare-fun c!1006544 () Bool)

(assert (=> b!5710137 (= c!1006544 ((_ is EmptyLang!15701) (regTwo!31914 r!7292)))))

(declare-fun b!5710138 () Bool)

(declare-fun e!3512131 () Bool)

(assert (=> b!5710138 (= e!3512132 e!3512131)))

(declare-fun res!2410414 () Bool)

(assert (=> b!5710138 (=> (not res!2410414) (not e!3512131))))

(assert (=> b!5710138 (= res!2410414 (not lt!2274981))))

(declare-fun b!5710139 () Bool)

(declare-fun call!435923 () Bool)

(assert (=> b!5710139 (= e!3512130 (= lt!2274981 call!435923))))

(declare-fun b!5710140 () Bool)

(declare-fun res!2410409 () Bool)

(assert (=> b!5710140 (=> res!2410409 e!3512132)))

(declare-fun e!3512134 () Bool)

(assert (=> b!5710140 (= res!2410409 e!3512134)))

(declare-fun res!2410412 () Bool)

(assert (=> b!5710140 (=> (not res!2410412) (not e!3512134))))

(assert (=> b!5710140 (= res!2410412 lt!2274981)))

(declare-fun b!5710141 () Bool)

(declare-fun e!3512129 () Bool)

(assert (=> b!5710141 (= e!3512129 (not (= (head!12093 (_2!36101 lt!2274833)) (c!1006309 (regTwo!31914 r!7292)))))))

(declare-fun b!5710142 () Bool)

(declare-fun res!2410411 () Bool)

(assert (=> b!5710142 (=> res!2410411 e!3512129)))

(assert (=> b!5710142 (= res!2410411 (not (isEmpty!35145 (tail!11188 (_2!36101 lt!2274833)))))))

(declare-fun b!5710143 () Bool)

(declare-fun res!2410415 () Bool)

(assert (=> b!5710143 (=> (not res!2410415) (not e!3512134))))

(assert (=> b!5710143 (= res!2410415 (not call!435923))))

(declare-fun b!5710144 () Bool)

(assert (=> b!5710144 (= e!3512131 e!3512129)))

(declare-fun res!2410413 () Bool)

(assert (=> b!5710144 (=> res!2410413 e!3512129)))

(assert (=> b!5710144 (= res!2410413 call!435923)))

(declare-fun b!5710145 () Bool)

(assert (=> b!5710145 (= e!3512128 (matchR!7886 (derivativeStep!4510 (regTwo!31914 r!7292) (head!12093 (_2!36101 lt!2274833))) (tail!11188 (_2!36101 lt!2274833))))))

(declare-fun b!5710146 () Bool)

(assert (=> b!5710146 (= e!3512133 (not lt!2274981))))

(declare-fun b!5710147 () Bool)

(declare-fun res!2410408 () Bool)

(assert (=> b!5710147 (=> (not res!2410408) (not e!3512134))))

(assert (=> b!5710147 (= res!2410408 (isEmpty!35145 (tail!11188 (_2!36101 lt!2274833))))))

(declare-fun b!5710148 () Bool)

(assert (=> b!5710148 (= e!3512134 (= (head!12093 (_2!36101 lt!2274833)) (c!1006309 (regTwo!31914 r!7292))))))

(declare-fun b!5710149 () Bool)

(assert (=> b!5710149 (= e!3512128 (nullable!5733 (regTwo!31914 r!7292)))))

(declare-fun bm!435918 () Bool)

(assert (=> bm!435918 (= call!435923 (isEmpty!35145 (_2!36101 lt!2274833)))))

(assert (= (and d!1801628 c!1006542) b!5710149))

(assert (= (and d!1801628 (not c!1006542)) b!5710145))

(assert (= (and d!1801628 c!1006543) b!5710139))

(assert (= (and d!1801628 (not c!1006543)) b!5710137))

(assert (= (and b!5710137 c!1006544) b!5710146))

(assert (= (and b!5710137 (not c!1006544)) b!5710136))

(assert (= (and b!5710136 (not res!2410410)) b!5710140))

(assert (= (and b!5710140 res!2410412) b!5710143))

(assert (= (and b!5710143 res!2410415) b!5710147))

(assert (= (and b!5710147 res!2410408) b!5710148))

(assert (= (and b!5710140 (not res!2410409)) b!5710138))

(assert (= (and b!5710138 res!2410414) b!5710144))

(assert (= (and b!5710144 (not res!2410413)) b!5710142))

(assert (= (and b!5710142 (not res!2410411)) b!5710141))

(assert (= (or b!5710139 b!5710144 b!5710143) bm!435918))

(declare-fun m!6663954 () Bool)

(assert (=> b!5710148 m!6663954))

(declare-fun m!6663956 () Bool)

(assert (=> b!5710147 m!6663956))

(assert (=> b!5710147 m!6663956))

(declare-fun m!6663958 () Bool)

(assert (=> b!5710147 m!6663958))

(assert (=> b!5710142 m!6663956))

(assert (=> b!5710142 m!6663956))

(assert (=> b!5710142 m!6663958))

(assert (=> b!5710145 m!6663954))

(assert (=> b!5710145 m!6663954))

(declare-fun m!6663960 () Bool)

(assert (=> b!5710145 m!6663960))

(assert (=> b!5710145 m!6663956))

(assert (=> b!5710145 m!6663960))

(assert (=> b!5710145 m!6663956))

(declare-fun m!6663962 () Bool)

(assert (=> b!5710145 m!6663962))

(declare-fun m!6663964 () Bool)

(assert (=> d!1801628 m!6663964))

(declare-fun m!6663966 () Bool)

(assert (=> d!1801628 m!6663966))

(declare-fun m!6663968 () Bool)

(assert (=> b!5710149 m!6663968))

(assert (=> bm!435918 m!6663964))

(assert (=> b!5710141 m!6663954))

(assert (=> b!5709278 d!1801628))

(declare-fun d!1801630 () Bool)

(declare-fun lt!2274982 () Regex!15701)

(assert (=> d!1801630 (validRegex!7437 lt!2274982)))

(assert (=> d!1801630 (= lt!2274982 (generalisedUnion!1564 (unfocusZipperList!1129 zl!343)))))

(assert (=> d!1801630 (= (unfocusZipper!1443 zl!343) lt!2274982)))

(declare-fun bs!1334029 () Bool)

(assert (= bs!1334029 d!1801630))

(declare-fun m!6663970 () Bool)

(assert (=> bs!1334029 m!6663970))

(assert (=> bs!1334029 m!6663070))

(assert (=> bs!1334029 m!6663070))

(assert (=> bs!1334029 m!6663072))

(assert (=> b!5709279 d!1801630))

(declare-fun d!1801632 () Bool)

(assert (=> d!1801632 (= (isEmpty!35146 (t!376724 zl!343)) ((_ is Nil!63280) (t!376724 zl!343)))))

(assert (=> b!5709296 d!1801632))

(declare-fun bs!1334030 () Bool)

(declare-fun d!1801634 () Bool)

(assert (= bs!1334030 (and d!1801634 d!1801536)))

(declare-fun lambda!308016 () Int)

(assert (=> bs!1334030 (= lambda!308016 lambda!308001)))

(declare-fun bs!1334031 () Bool)

(assert (= bs!1334031 (and d!1801634 d!1801538)))

(assert (=> bs!1334031 (= lambda!308016 lambda!308006)))

(assert (=> d!1801634 (= (inv!82499 (h!69728 zl!343)) (forall!14842 (exprs!5585 (h!69728 zl!343)) lambda!308016))))

(declare-fun bs!1334032 () Bool)

(assert (= bs!1334032 d!1801634))

(declare-fun m!6663972 () Bool)

(assert (=> bs!1334032 m!6663972))

(assert (=> b!5709293 d!1801634))

(declare-fun d!1801636 () Bool)

(declare-fun lt!2274983 () Regex!15701)

(assert (=> d!1801636 (validRegex!7437 lt!2274983)))

(assert (=> d!1801636 (= lt!2274983 (generalisedUnion!1564 (unfocusZipperList!1129 (Cons!63280 lt!2274830 Nil!63280))))))

(assert (=> d!1801636 (= (unfocusZipper!1443 (Cons!63280 lt!2274830 Nil!63280)) lt!2274983)))

(declare-fun bs!1334033 () Bool)

(assert (= bs!1334033 d!1801636))

(declare-fun m!6663974 () Bool)

(assert (=> bs!1334033 m!6663974))

(declare-fun m!6663976 () Bool)

(assert (=> bs!1334033 m!6663976))

(assert (=> bs!1334033 m!6663976))

(declare-fun m!6663978 () Bool)

(assert (=> bs!1334033 m!6663978))

(assert (=> b!5709294 d!1801636))

(declare-fun bs!1334034 () Bool)

(declare-fun d!1801638 () Bool)

(assert (= bs!1334034 (and d!1801638 d!1801536)))

(declare-fun lambda!308019 () Int)

(assert (=> bs!1334034 (= lambda!308019 lambda!308001)))

(declare-fun bs!1334035 () Bool)

(assert (= bs!1334035 (and d!1801638 d!1801538)))

(assert (=> bs!1334035 (= lambda!308019 lambda!308006)))

(declare-fun bs!1334036 () Bool)

(assert (= bs!1334036 (and d!1801638 d!1801634)))

(assert (=> bs!1334036 (= lambda!308019 lambda!308016)))

(declare-fun b!5710170 () Bool)

(declare-fun e!3512150 () Bool)

(declare-fun lt!2274986 () Regex!15701)

(assert (=> b!5710170 (= e!3512150 (= lt!2274986 (head!12094 (unfocusZipperList!1129 zl!343))))))

(declare-fun b!5710171 () Bool)

(declare-fun e!3512152 () Regex!15701)

(declare-fun e!3512149 () Regex!15701)

(assert (=> b!5710171 (= e!3512152 e!3512149)))

(declare-fun c!1006555 () Bool)

(assert (=> b!5710171 (= c!1006555 ((_ is Cons!63279) (unfocusZipperList!1129 zl!343)))))

(declare-fun b!5710172 () Bool)

(declare-fun e!3512147 () Bool)

(declare-fun e!3512151 () Bool)

(assert (=> b!5710172 (= e!3512147 e!3512151)))

(declare-fun c!1006556 () Bool)

(assert (=> b!5710172 (= c!1006556 (isEmpty!35144 (unfocusZipperList!1129 zl!343)))))

(declare-fun b!5710173 () Bool)

(assert (=> b!5710173 (= e!3512152 (h!69727 (unfocusZipperList!1129 zl!343)))))

(declare-fun b!5710174 () Bool)

(assert (=> b!5710174 (= e!3512149 (Union!15701 (h!69727 (unfocusZipperList!1129 zl!343)) (generalisedUnion!1564 (t!376723 (unfocusZipperList!1129 zl!343)))))))

(declare-fun b!5710175 () Bool)

(declare-fun isEmptyLang!1226 (Regex!15701) Bool)

(assert (=> b!5710175 (= e!3512151 (isEmptyLang!1226 lt!2274986))))

(assert (=> d!1801638 e!3512147))

(declare-fun res!2410421 () Bool)

(assert (=> d!1801638 (=> (not res!2410421) (not e!3512147))))

(assert (=> d!1801638 (= res!2410421 (validRegex!7437 lt!2274986))))

(assert (=> d!1801638 (= lt!2274986 e!3512152)))

(declare-fun c!1006553 () Bool)

(declare-fun e!3512148 () Bool)

(assert (=> d!1801638 (= c!1006553 e!3512148)))

(declare-fun res!2410420 () Bool)

(assert (=> d!1801638 (=> (not res!2410420) (not e!3512148))))

(assert (=> d!1801638 (= res!2410420 ((_ is Cons!63279) (unfocusZipperList!1129 zl!343)))))

(assert (=> d!1801638 (forall!14842 (unfocusZipperList!1129 zl!343) lambda!308019)))

(assert (=> d!1801638 (= (generalisedUnion!1564 (unfocusZipperList!1129 zl!343)) lt!2274986)))

(declare-fun b!5710176 () Bool)

(assert (=> b!5710176 (= e!3512148 (isEmpty!35144 (t!376723 (unfocusZipperList!1129 zl!343))))))

(declare-fun b!5710177 () Bool)

(declare-fun isUnion!656 (Regex!15701) Bool)

(assert (=> b!5710177 (= e!3512150 (isUnion!656 lt!2274986))))

(declare-fun b!5710178 () Bool)

(assert (=> b!5710178 (= e!3512151 e!3512150)))

(declare-fun c!1006554 () Bool)

(assert (=> b!5710178 (= c!1006554 (isEmpty!35144 (tail!11189 (unfocusZipperList!1129 zl!343))))))

(declare-fun b!5710179 () Bool)

(assert (=> b!5710179 (= e!3512149 EmptyLang!15701)))

(assert (= (and d!1801638 res!2410420) b!5710176))

(assert (= (and d!1801638 c!1006553) b!5710173))

(assert (= (and d!1801638 (not c!1006553)) b!5710171))

(assert (= (and b!5710171 c!1006555) b!5710174))

(assert (= (and b!5710171 (not c!1006555)) b!5710179))

(assert (= (and d!1801638 res!2410421) b!5710172))

(assert (= (and b!5710172 c!1006556) b!5710175))

(assert (= (and b!5710172 (not c!1006556)) b!5710178))

(assert (= (and b!5710178 c!1006554) b!5710170))

(assert (= (and b!5710178 (not c!1006554)) b!5710177))

(declare-fun m!6663980 () Bool)

(assert (=> d!1801638 m!6663980))

(assert (=> d!1801638 m!6663070))

(declare-fun m!6663982 () Bool)

(assert (=> d!1801638 m!6663982))

(declare-fun m!6663984 () Bool)

(assert (=> b!5710175 m!6663984))

(assert (=> b!5710170 m!6663070))

(declare-fun m!6663986 () Bool)

(assert (=> b!5710170 m!6663986))

(assert (=> b!5710178 m!6663070))

(declare-fun m!6663988 () Bool)

(assert (=> b!5710178 m!6663988))

(assert (=> b!5710178 m!6663988))

(declare-fun m!6663990 () Bool)

(assert (=> b!5710178 m!6663990))

(declare-fun m!6663992 () Bool)

(assert (=> b!5710176 m!6663992))

(assert (=> b!5710172 m!6663070))

(declare-fun m!6663994 () Bool)

(assert (=> b!5710172 m!6663994))

(declare-fun m!6663996 () Bool)

(assert (=> b!5710174 m!6663996))

(declare-fun m!6663998 () Bool)

(assert (=> b!5710177 m!6663998))

(assert (=> b!5709295 d!1801638))

(declare-fun bs!1334037 () Bool)

(declare-fun d!1801640 () Bool)

(assert (= bs!1334037 (and d!1801640 d!1801536)))

(declare-fun lambda!308022 () Int)

(assert (=> bs!1334037 (= lambda!308022 lambda!308001)))

(declare-fun bs!1334038 () Bool)

(assert (= bs!1334038 (and d!1801640 d!1801538)))

(assert (=> bs!1334038 (= lambda!308022 lambda!308006)))

(declare-fun bs!1334039 () Bool)

(assert (= bs!1334039 (and d!1801640 d!1801634)))

(assert (=> bs!1334039 (= lambda!308022 lambda!308016)))

(declare-fun bs!1334040 () Bool)

(assert (= bs!1334040 (and d!1801640 d!1801638)))

(assert (=> bs!1334040 (= lambda!308022 lambda!308019)))

(declare-fun lt!2274989 () List!63403)

(assert (=> d!1801640 (forall!14842 lt!2274989 lambda!308022)))

(declare-fun e!3512155 () List!63403)

(assert (=> d!1801640 (= lt!2274989 e!3512155)))

(declare-fun c!1006559 () Bool)

(assert (=> d!1801640 (= c!1006559 ((_ is Cons!63280) zl!343))))

(assert (=> d!1801640 (= (unfocusZipperList!1129 zl!343) lt!2274989)))

(declare-fun b!5710184 () Bool)

(assert (=> b!5710184 (= e!3512155 (Cons!63279 (generalisedConcat!1316 (exprs!5585 (h!69728 zl!343))) (unfocusZipperList!1129 (t!376724 zl!343))))))

(declare-fun b!5710185 () Bool)

(assert (=> b!5710185 (= e!3512155 Nil!63279)))

(assert (= (and d!1801640 c!1006559) b!5710184))

(assert (= (and d!1801640 (not c!1006559)) b!5710185))

(declare-fun m!6664000 () Bool)

(assert (=> d!1801640 m!6664000))

(assert (=> b!5710184 m!6663116))

(declare-fun m!6664002 () Bool)

(assert (=> b!5710184 m!6664002))

(assert (=> b!5709295 d!1801640))

(declare-fun d!1801642 () Bool)

(declare-fun e!3512158 () Bool)

(assert (=> d!1801642 e!3512158))

(declare-fun c!1006561 () Bool)

(assert (=> d!1801642 (= c!1006561 ((_ is EmptyExpr!15701) lt!2274837))))

(declare-fun lt!2274990 () Bool)

(declare-fun e!3512156 () Bool)

(assert (=> d!1801642 (= lt!2274990 e!3512156)))

(declare-fun c!1006560 () Bool)

(assert (=> d!1801642 (= c!1006560 (isEmpty!35145 s!2326))))

(assert (=> d!1801642 (validRegex!7437 lt!2274837)))

(assert (=> d!1801642 (= (matchR!7886 lt!2274837 s!2326) lt!2274990)))

(declare-fun b!5710186 () Bool)

(declare-fun res!2410424 () Bool)

(declare-fun e!3512160 () Bool)

(assert (=> b!5710186 (=> res!2410424 e!3512160)))

(assert (=> b!5710186 (= res!2410424 (not ((_ is ElementMatch!15701) lt!2274837)))))

(declare-fun e!3512161 () Bool)

(assert (=> b!5710186 (= e!3512161 e!3512160)))

(declare-fun b!5710187 () Bool)

(assert (=> b!5710187 (= e!3512158 e!3512161)))

(declare-fun c!1006562 () Bool)

(assert (=> b!5710187 (= c!1006562 ((_ is EmptyLang!15701) lt!2274837))))

(declare-fun b!5710188 () Bool)

(declare-fun e!3512159 () Bool)

(assert (=> b!5710188 (= e!3512160 e!3512159)))

(declare-fun res!2410428 () Bool)

(assert (=> b!5710188 (=> (not res!2410428) (not e!3512159))))

(assert (=> b!5710188 (= res!2410428 (not lt!2274990))))

(declare-fun b!5710189 () Bool)

(declare-fun call!435924 () Bool)

(assert (=> b!5710189 (= e!3512158 (= lt!2274990 call!435924))))

(declare-fun b!5710190 () Bool)

(declare-fun res!2410423 () Bool)

(assert (=> b!5710190 (=> res!2410423 e!3512160)))

(declare-fun e!3512162 () Bool)

(assert (=> b!5710190 (= res!2410423 e!3512162)))

(declare-fun res!2410426 () Bool)

(assert (=> b!5710190 (=> (not res!2410426) (not e!3512162))))

(assert (=> b!5710190 (= res!2410426 lt!2274990)))

(declare-fun b!5710191 () Bool)

(declare-fun e!3512157 () Bool)

(assert (=> b!5710191 (= e!3512157 (not (= (head!12093 s!2326) (c!1006309 lt!2274837))))))

(declare-fun b!5710192 () Bool)

(declare-fun res!2410425 () Bool)

(assert (=> b!5710192 (=> res!2410425 e!3512157)))

(assert (=> b!5710192 (= res!2410425 (not (isEmpty!35145 (tail!11188 s!2326))))))

(declare-fun b!5710193 () Bool)

(declare-fun res!2410429 () Bool)

(assert (=> b!5710193 (=> (not res!2410429) (not e!3512162))))

(assert (=> b!5710193 (= res!2410429 (not call!435924))))

(declare-fun b!5710194 () Bool)

(assert (=> b!5710194 (= e!3512159 e!3512157)))

(declare-fun res!2410427 () Bool)

(assert (=> b!5710194 (=> res!2410427 e!3512157)))

(assert (=> b!5710194 (= res!2410427 call!435924)))

(declare-fun b!5710195 () Bool)

(assert (=> b!5710195 (= e!3512156 (matchR!7886 (derivativeStep!4510 lt!2274837 (head!12093 s!2326)) (tail!11188 s!2326)))))

(declare-fun b!5710196 () Bool)

(assert (=> b!5710196 (= e!3512161 (not lt!2274990))))

(declare-fun b!5710197 () Bool)

(declare-fun res!2410422 () Bool)

(assert (=> b!5710197 (=> (not res!2410422) (not e!3512162))))

(assert (=> b!5710197 (= res!2410422 (isEmpty!35145 (tail!11188 s!2326)))))

(declare-fun b!5710198 () Bool)

(assert (=> b!5710198 (= e!3512162 (= (head!12093 s!2326) (c!1006309 lt!2274837)))))

(declare-fun b!5710199 () Bool)

(assert (=> b!5710199 (= e!3512156 (nullable!5733 lt!2274837))))

(declare-fun bm!435919 () Bool)

(assert (=> bm!435919 (= call!435924 (isEmpty!35145 s!2326))))

(assert (= (and d!1801642 c!1006560) b!5710199))

(assert (= (and d!1801642 (not c!1006560)) b!5710195))

(assert (= (and d!1801642 c!1006561) b!5710189))

(assert (= (and d!1801642 (not c!1006561)) b!5710187))

(assert (= (and b!5710187 c!1006562) b!5710196))

(assert (= (and b!5710187 (not c!1006562)) b!5710186))

(assert (= (and b!5710186 (not res!2410424)) b!5710190))

(assert (= (and b!5710190 res!2410426) b!5710193))

(assert (= (and b!5710193 res!2410429) b!5710197))

(assert (= (and b!5710197 res!2410422) b!5710198))

(assert (= (and b!5710190 (not res!2410423)) b!5710188))

(assert (= (and b!5710188 res!2410428) b!5710194))

(assert (= (and b!5710194 (not res!2410427)) b!5710192))

(assert (= (and b!5710192 (not res!2410425)) b!5710191))

(assert (= (or b!5710189 b!5710194 b!5710193) bm!435919))

(assert (=> b!5710198 m!6663624))

(assert (=> b!5710197 m!6663628))

(assert (=> b!5710197 m!6663628))

(assert (=> b!5710197 m!6663630))

(assert (=> b!5710192 m!6663628))

(assert (=> b!5710192 m!6663628))

(assert (=> b!5710192 m!6663630))

(assert (=> b!5710195 m!6663624))

(assert (=> b!5710195 m!6663624))

(declare-fun m!6664004 () Bool)

(assert (=> b!5710195 m!6664004))

(assert (=> b!5710195 m!6663628))

(assert (=> b!5710195 m!6664004))

(assert (=> b!5710195 m!6663628))

(declare-fun m!6664006 () Bool)

(assert (=> b!5710195 m!6664006))

(assert (=> d!1801642 m!6663596))

(declare-fun m!6664008 () Bool)

(assert (=> d!1801642 m!6664008))

(declare-fun m!6664010 () Bool)

(assert (=> b!5710199 m!6664010))

(assert (=> bm!435919 m!6663596))

(assert (=> b!5710191 m!6663624))

(assert (=> b!5709291 d!1801642))

(declare-fun bs!1334041 () Bool)

(declare-fun b!5710209 () Bool)

(assert (= bs!1334041 (and b!5710209 b!5709284)))

(declare-fun lambda!308023 () Int)

(assert (=> bs!1334041 (not (= lambda!308023 lambda!307930))))

(declare-fun bs!1334042 () Bool)

(assert (= bs!1334042 (and b!5710209 d!1801400)))

(assert (=> bs!1334042 (not (= lambda!308023 lambda!307954))))

(declare-fun bs!1334043 () Bool)

(assert (= bs!1334043 (and b!5710209 b!5709674)))

(assert (=> bs!1334043 (not (= lambda!308023 lambda!307987))))

(declare-fun bs!1334044 () Bool)

(assert (= bs!1334044 (and b!5710209 b!5709288)))

(assert (=> bs!1334044 (not (= lambda!308023 lambda!307933))))

(declare-fun bs!1334045 () Bool)

(assert (= bs!1334045 (and b!5710209 d!1801592)))

(assert (=> bs!1334045 (not (= lambda!308023 lambda!308010))))

(assert (=> bs!1334044 (= (and (= s!2326 (_1!36101 lt!2274833)) (= (reg!16030 lt!2274837) (reg!16030 (regOne!31914 r!7292))) (= lt!2274837 lt!2274841)) (= lambda!308023 lambda!307932))))

(declare-fun bs!1334046 () Bool)

(assert (= bs!1334046 (and b!5710209 b!5709706)))

(assert (=> bs!1334046 (not (= lambda!308023 lambda!307991))))

(declare-fun bs!1334047 () Bool)

(assert (= bs!1334047 (and b!5710209 b!5709679)))

(assert (=> bs!1334047 (= (and (= s!2326 (_1!36101 lt!2274833)) (= (reg!16030 lt!2274837) (reg!16030 lt!2274841)) (= lt!2274837 lt!2274841)) (= lambda!308023 lambda!307986))))

(declare-fun bs!1334048 () Bool)

(assert (= bs!1334048 (and b!5710209 d!1801596)))

(assert (=> bs!1334048 (not (= lambda!308023 lambda!308011))))

(declare-fun bs!1334049 () Bool)

(assert (= bs!1334049 (and b!5710209 b!5709272)))

(assert (=> bs!1334049 (not (= lambda!308023 lambda!307926))))

(declare-fun bs!1334050 () Bool)

(assert (= bs!1334050 (and b!5710209 d!1801404)))

(assert (=> bs!1334050 (= (and (= s!2326 (_1!36101 lt!2274833)) (= (reg!16030 lt!2274837) (reg!16030 (regOne!31914 r!7292))) (= lt!2274837 (Star!15701 (reg!16030 (regOne!31914 r!7292))))) (= lambda!308023 lambda!307968))))

(assert (=> bs!1334041 (not (= lambda!308023 lambda!307929))))

(declare-fun bs!1334051 () Bool)

(assert (= bs!1334051 (and b!5710209 b!5709711)))

(assert (=> bs!1334051 (= (and (= (reg!16030 lt!2274837) (reg!16030 r!7292)) (= lt!2274837 r!7292)) (= lambda!308023 lambda!307990))))

(declare-fun bs!1334052 () Bool)

(assert (= bs!1334052 (and b!5710209 d!1801424)))

(assert (=> bs!1334052 (not (= lambda!308023 lambda!307980))))

(assert (=> bs!1334044 (not (= lambda!308023 lambda!307931))))

(assert (=> bs!1334048 (not (= lambda!308023 lambda!308012))))

(assert (=> bs!1334049 (not (= lambda!308023 lambda!307927))))

(assert (=> bs!1334050 (not (= lambda!308023 lambda!307966))))

(assert (=> bs!1334042 (not (= lambda!308023 lambda!307957))))

(assert (=> b!5710209 true))

(assert (=> b!5710209 true))

(declare-fun bs!1334053 () Bool)

(declare-fun b!5710204 () Bool)

(assert (= bs!1334053 (and b!5710204 b!5709284)))

(declare-fun lambda!308024 () Int)

(assert (=> bs!1334053 (= (and (= (regOne!31914 lt!2274837) lt!2274841) (= (regTwo!31914 lt!2274837) (regTwo!31914 r!7292))) (= lambda!308024 lambda!307930))))

(declare-fun bs!1334054 () Bool)

(assert (= bs!1334054 (and b!5710204 d!1801400)))

(assert (=> bs!1334054 (not (= lambda!308024 lambda!307954))))

(declare-fun bs!1334055 () Bool)

(assert (= bs!1334055 (and b!5710204 b!5709674)))

(assert (=> bs!1334055 (= (and (= s!2326 (_1!36101 lt!2274833)) (= (regOne!31914 lt!2274837) (regOne!31914 lt!2274841)) (= (regTwo!31914 lt!2274837) (regTwo!31914 lt!2274841))) (= lambda!308024 lambda!307987))))

(declare-fun bs!1334056 () Bool)

(assert (= bs!1334056 (and b!5710204 b!5709288)))

(assert (=> bs!1334056 (= (and (= s!2326 (_1!36101 lt!2274833)) (= (regOne!31914 lt!2274837) (reg!16030 (regOne!31914 r!7292))) (= (regTwo!31914 lt!2274837) lt!2274841)) (= lambda!308024 lambda!307933))))

(declare-fun bs!1334057 () Bool)

(assert (= bs!1334057 (and b!5710204 d!1801592)))

(assert (=> bs!1334057 (not (= lambda!308024 lambda!308010))))

(assert (=> bs!1334056 (not (= lambda!308024 lambda!307932))))

(declare-fun bs!1334058 () Bool)

(assert (= bs!1334058 (and b!5710204 b!5709706)))

(assert (=> bs!1334058 (= (and (= (regOne!31914 lt!2274837) (regOne!31914 r!7292)) (= (regTwo!31914 lt!2274837) (regTwo!31914 r!7292))) (= lambda!308024 lambda!307991))))

(declare-fun bs!1334059 () Bool)

(assert (= bs!1334059 (and b!5710204 b!5709679)))

(assert (=> bs!1334059 (not (= lambda!308024 lambda!307986))))

(declare-fun bs!1334060 () Bool)

(assert (= bs!1334060 (and b!5710204 d!1801596)))

(assert (=> bs!1334060 (not (= lambda!308024 lambda!308011))))

(declare-fun bs!1334061 () Bool)

(assert (= bs!1334061 (and b!5710204 d!1801404)))

(assert (=> bs!1334061 (not (= lambda!308024 lambda!307968))))

(assert (=> bs!1334053 (not (= lambda!308024 lambda!307929))))

(declare-fun bs!1334062 () Bool)

(assert (= bs!1334062 (and b!5710204 b!5709711)))

(assert (=> bs!1334062 (not (= lambda!308024 lambda!307990))))

(declare-fun bs!1334063 () Bool)

(assert (= bs!1334063 (and b!5710204 d!1801424)))

(assert (=> bs!1334063 (not (= lambda!308024 lambda!307980))))

(assert (=> bs!1334056 (not (= lambda!308024 lambda!307931))))

(assert (=> bs!1334060 (= (and (= (regOne!31914 lt!2274837) lt!2274841) (= (regTwo!31914 lt!2274837) (regTwo!31914 r!7292))) (= lambda!308024 lambda!308012))))

(declare-fun bs!1334064 () Bool)

(assert (= bs!1334064 (and b!5710204 b!5709272)))

(assert (=> bs!1334064 (= (and (= (regOne!31914 lt!2274837) (regOne!31914 r!7292)) (= (regTwo!31914 lt!2274837) (regTwo!31914 r!7292))) (= lambda!308024 lambda!307927))))

(assert (=> bs!1334061 (not (= lambda!308024 lambda!307966))))

(assert (=> bs!1334054 (= (and (= s!2326 (_1!36101 lt!2274833)) (= (regOne!31914 lt!2274837) (reg!16030 (regOne!31914 r!7292))) (= (regTwo!31914 lt!2274837) lt!2274841)) (= lambda!308024 lambda!307957))))

(declare-fun bs!1334065 () Bool)

(assert (= bs!1334065 (and b!5710204 b!5710209)))

(assert (=> bs!1334065 (not (= lambda!308024 lambda!308023))))

(assert (=> bs!1334064 (not (= lambda!308024 lambda!307926))))

(assert (=> b!5710204 true))

(assert (=> b!5710204 true))

(declare-fun b!5710200 () Bool)

(declare-fun e!3512164 () Bool)

(assert (=> b!5710200 (= e!3512164 (matchRSpec!2804 (regTwo!31915 lt!2274837) s!2326))))

(declare-fun d!1801644 () Bool)

(declare-fun c!1006565 () Bool)

(assert (=> d!1801644 (= c!1006565 ((_ is EmptyExpr!15701) lt!2274837))))

(declare-fun e!3512166 () Bool)

(assert (=> d!1801644 (= (matchRSpec!2804 lt!2274837 s!2326) e!3512166)))

(declare-fun b!5710201 () Bool)

(declare-fun res!2410432 () Bool)

(declare-fun e!3512167 () Bool)

(assert (=> b!5710201 (=> res!2410432 e!3512167)))

(declare-fun call!435925 () Bool)

(assert (=> b!5710201 (= res!2410432 call!435925)))

(declare-fun e!3512165 () Bool)

(assert (=> b!5710201 (= e!3512165 e!3512167)))

(declare-fun b!5710202 () Bool)

(assert (=> b!5710202 (= e!3512166 call!435925)))

(declare-fun b!5710203 () Bool)

(declare-fun e!3512168 () Bool)

(assert (=> b!5710203 (= e!3512168 (= s!2326 (Cons!63278 (c!1006309 lt!2274837) Nil!63278)))))

(declare-fun call!435926 () Bool)

(declare-fun bm!435920 () Bool)

(declare-fun c!1006563 () Bool)

(assert (=> bm!435920 (= call!435926 (Exists!2801 (ite c!1006563 lambda!308023 lambda!308024)))))

(assert (=> b!5710204 (= e!3512165 call!435926)))

(declare-fun b!5710205 () Bool)

(declare-fun e!3512169 () Bool)

(assert (=> b!5710205 (= e!3512169 e!3512164)))

(declare-fun res!2410430 () Bool)

(assert (=> b!5710205 (= res!2410430 (matchRSpec!2804 (regOne!31915 lt!2274837) s!2326))))

(assert (=> b!5710205 (=> res!2410430 e!3512164)))

(declare-fun b!5710206 () Bool)

(assert (=> b!5710206 (= e!3512169 e!3512165)))

(assert (=> b!5710206 (= c!1006563 ((_ is Star!15701) lt!2274837))))

(declare-fun b!5710207 () Bool)

(declare-fun e!3512163 () Bool)

(assert (=> b!5710207 (= e!3512166 e!3512163)))

(declare-fun res!2410431 () Bool)

(assert (=> b!5710207 (= res!2410431 (not ((_ is EmptyLang!15701) lt!2274837)))))

(assert (=> b!5710207 (=> (not res!2410431) (not e!3512163))))

(declare-fun b!5710208 () Bool)

(declare-fun c!1006564 () Bool)

(assert (=> b!5710208 (= c!1006564 ((_ is ElementMatch!15701) lt!2274837))))

(assert (=> b!5710208 (= e!3512163 e!3512168)))

(declare-fun bm!435921 () Bool)

(assert (=> bm!435921 (= call!435925 (isEmpty!35145 s!2326))))

(assert (=> b!5710209 (= e!3512167 call!435926)))

(declare-fun b!5710210 () Bool)

(declare-fun c!1006566 () Bool)

(assert (=> b!5710210 (= c!1006566 ((_ is Union!15701) lt!2274837))))

(assert (=> b!5710210 (= e!3512168 e!3512169)))

(assert (= (and d!1801644 c!1006565) b!5710202))

(assert (= (and d!1801644 (not c!1006565)) b!5710207))

(assert (= (and b!5710207 res!2410431) b!5710208))

(assert (= (and b!5710208 c!1006564) b!5710203))

(assert (= (and b!5710208 (not c!1006564)) b!5710210))

(assert (= (and b!5710210 c!1006566) b!5710205))

(assert (= (and b!5710210 (not c!1006566)) b!5710206))

(assert (= (and b!5710205 (not res!2410430)) b!5710200))

(assert (= (and b!5710206 c!1006563) b!5710201))

(assert (= (and b!5710206 (not c!1006563)) b!5710204))

(assert (= (and b!5710201 (not res!2410432)) b!5710209))

(assert (= (or b!5710209 b!5710204) bm!435920))

(assert (= (or b!5710202 b!5710201) bm!435921))

(declare-fun m!6664012 () Bool)

(assert (=> b!5710200 m!6664012))

(declare-fun m!6664014 () Bool)

(assert (=> bm!435920 m!6664014))

(declare-fun m!6664016 () Bool)

(assert (=> b!5710205 m!6664016))

(assert (=> bm!435921 m!6663596))

(assert (=> b!5709291 d!1801644))

(declare-fun d!1801646 () Bool)

(assert (=> d!1801646 (= (matchR!7886 lt!2274837 s!2326) (matchRSpec!2804 lt!2274837 s!2326))))

(declare-fun lt!2274991 () Unit!156336)

(assert (=> d!1801646 (= lt!2274991 (choose!43153 lt!2274837 s!2326))))

(assert (=> d!1801646 (validRegex!7437 lt!2274837)))

(assert (=> d!1801646 (= (mainMatchTheorem!2804 lt!2274837 s!2326) lt!2274991)))

(declare-fun bs!1334066 () Bool)

(assert (= bs!1334066 d!1801646))

(assert (=> bs!1334066 m!6663056))

(assert (=> bs!1334066 m!6663058))

(declare-fun m!6664018 () Bool)

(assert (=> bs!1334066 m!6664018))

(assert (=> bs!1334066 m!6664008))

(assert (=> b!5709291 d!1801646))

(declare-fun d!1801648 () Bool)

(declare-fun c!1006567 () Bool)

(assert (=> d!1801648 (= c!1006567 (isEmpty!35145 (t!376722 s!2326)))))

(declare-fun e!3512170 () Bool)

(assert (=> d!1801648 (= (matchZipper!1839 lt!2274853 (t!376722 s!2326)) e!3512170)))

(declare-fun b!5710211 () Bool)

(assert (=> b!5710211 (= e!3512170 (nullableZipper!1656 lt!2274853))))

(declare-fun b!5710212 () Bool)

(assert (=> b!5710212 (= e!3512170 (matchZipper!1839 (derivationStepZipper!1784 lt!2274853 (head!12093 (t!376722 s!2326))) (tail!11188 (t!376722 s!2326))))))

(assert (= (and d!1801648 c!1006567) b!5710211))

(assert (= (and d!1801648 (not c!1006567)) b!5710212))

(assert (=> d!1801648 m!6663662))

(declare-fun m!6664020 () Bool)

(assert (=> b!5710211 m!6664020))

(assert (=> b!5710212 m!6663666))

(assert (=> b!5710212 m!6663666))

(declare-fun m!6664022 () Bool)

(assert (=> b!5710212 m!6664022))

(assert (=> b!5710212 m!6663670))

(assert (=> b!5710212 m!6664022))

(assert (=> b!5710212 m!6663670))

(declare-fun m!6664024 () Bool)

(assert (=> b!5710212 m!6664024))

(assert (=> b!5709292 d!1801648))

(declare-fun b!5710213 () Bool)

(declare-fun e!3512172 () Option!15710)

(assert (=> b!5710213 (= e!3512172 (Some!15709 (tuple2!65597 Nil!63278 s!2326)))))

(declare-fun b!5710214 () Bool)

(declare-fun e!3512171 () Bool)

(declare-fun lt!2274993 () Option!15710)

(assert (=> b!5710214 (= e!3512171 (= (++!13893 (_1!36101 (get!21811 lt!2274993)) (_2!36101 (get!21811 lt!2274993))) s!2326))))

(declare-fun b!5710215 () Bool)

(declare-fun res!2410433 () Bool)

(assert (=> b!5710215 (=> (not res!2410433) (not e!3512171))))

(assert (=> b!5710215 (= res!2410433 (matchR!7886 (regOne!31914 r!7292) (_1!36101 (get!21811 lt!2274993))))))

(declare-fun b!5710216 () Bool)

(declare-fun lt!2274994 () Unit!156336)

(declare-fun lt!2274992 () Unit!156336)

(assert (=> b!5710216 (= lt!2274994 lt!2274992)))

(assert (=> b!5710216 (= (++!13893 (++!13893 Nil!63278 (Cons!63278 (h!69726 s!2326) Nil!63278)) (t!376722 s!2326)) s!2326)))

(assert (=> b!5710216 (= lt!2274992 (lemmaMoveElementToOtherListKeepsConcatEq!2060 Nil!63278 (h!69726 s!2326) (t!376722 s!2326) s!2326))))

(declare-fun e!3512173 () Option!15710)

(assert (=> b!5710216 (= e!3512173 (findConcatSeparation!2124 (regOne!31914 r!7292) (regTwo!31914 r!7292) (++!13893 Nil!63278 (Cons!63278 (h!69726 s!2326) Nil!63278)) (t!376722 s!2326) s!2326))))

(declare-fun d!1801650 () Bool)

(declare-fun e!3512174 () Bool)

(assert (=> d!1801650 e!3512174))

(declare-fun res!2410437 () Bool)

(assert (=> d!1801650 (=> res!2410437 e!3512174)))

(assert (=> d!1801650 (= res!2410437 e!3512171)))

(declare-fun res!2410436 () Bool)

(assert (=> d!1801650 (=> (not res!2410436) (not e!3512171))))

(assert (=> d!1801650 (= res!2410436 (isDefined!12413 lt!2274993))))

(assert (=> d!1801650 (= lt!2274993 e!3512172)))

(declare-fun c!1006568 () Bool)

(declare-fun e!3512175 () Bool)

(assert (=> d!1801650 (= c!1006568 e!3512175)))

(declare-fun res!2410435 () Bool)

(assert (=> d!1801650 (=> (not res!2410435) (not e!3512175))))

(assert (=> d!1801650 (= res!2410435 (matchR!7886 (regOne!31914 r!7292) Nil!63278))))

(assert (=> d!1801650 (validRegex!7437 (regOne!31914 r!7292))))

(assert (=> d!1801650 (= (findConcatSeparation!2124 (regOne!31914 r!7292) (regTwo!31914 r!7292) Nil!63278 s!2326 s!2326) lt!2274993)))

(declare-fun b!5710217 () Bool)

(assert (=> b!5710217 (= e!3512172 e!3512173)))

(declare-fun c!1006569 () Bool)

(assert (=> b!5710217 (= c!1006569 ((_ is Nil!63278) s!2326))))

(declare-fun b!5710218 () Bool)

(assert (=> b!5710218 (= e!3512173 None!15709)))

(declare-fun b!5710219 () Bool)

(declare-fun res!2410434 () Bool)

(assert (=> b!5710219 (=> (not res!2410434) (not e!3512171))))

(assert (=> b!5710219 (= res!2410434 (matchR!7886 (regTwo!31914 r!7292) (_2!36101 (get!21811 lt!2274993))))))

(declare-fun b!5710220 () Bool)

(assert (=> b!5710220 (= e!3512175 (matchR!7886 (regTwo!31914 r!7292) s!2326))))

(declare-fun b!5710221 () Bool)

(assert (=> b!5710221 (= e!3512174 (not (isDefined!12413 lt!2274993)))))

(assert (= (and d!1801650 res!2410435) b!5710220))

(assert (= (and d!1801650 c!1006568) b!5710213))

(assert (= (and d!1801650 (not c!1006568)) b!5710217))

(assert (= (and b!5710217 c!1006569) b!5710218))

(assert (= (and b!5710217 (not c!1006569)) b!5710216))

(assert (= (and d!1801650 res!2410436) b!5710215))

(assert (= (and b!5710215 res!2410433) b!5710219))

(assert (= (and b!5710219 res!2410434) b!5710214))

(assert (= (and d!1801650 (not res!2410437)) b!5710221))

(assert (=> b!5710220 m!6663850))

(declare-fun m!6664026 () Bool)

(assert (=> b!5710214 m!6664026))

(declare-fun m!6664028 () Bool)

(assert (=> b!5710214 m!6664028))

(declare-fun m!6664030 () Bool)

(assert (=> b!5710221 m!6664030))

(assert (=> d!1801650 m!6664030))

(declare-fun m!6664032 () Bool)

(assert (=> d!1801650 m!6664032))

(declare-fun m!6664034 () Bool)

(assert (=> d!1801650 m!6664034))

(assert (=> b!5710215 m!6664026))

(declare-fun m!6664036 () Bool)

(assert (=> b!5710215 m!6664036))

(assert (=> b!5710216 m!6663862))

(assert (=> b!5710216 m!6663862))

(assert (=> b!5710216 m!6663864))

(assert (=> b!5710216 m!6663866))

(assert (=> b!5710216 m!6663862))

(declare-fun m!6664038 () Bool)

(assert (=> b!5710216 m!6664038))

(assert (=> b!5710219 m!6664026))

(declare-fun m!6664040 () Bool)

(assert (=> b!5710219 m!6664040))

(assert (=> b!5709272 d!1801650))

(declare-fun d!1801652 () Bool)

(assert (=> d!1801652 (= (Exists!2801 lambda!307926) (choose!43148 lambda!307926))))

(declare-fun bs!1334067 () Bool)

(assert (= bs!1334067 d!1801652))

(declare-fun m!6664042 () Bool)

(assert (=> bs!1334067 m!6664042))

(assert (=> b!5709272 d!1801652))

(declare-fun d!1801654 () Bool)

(assert (=> d!1801654 (= (Exists!2801 lambda!307927) (choose!43148 lambda!307927))))

(declare-fun bs!1334068 () Bool)

(assert (= bs!1334068 d!1801654))

(declare-fun m!6664044 () Bool)

(assert (=> bs!1334068 m!6664044))

(assert (=> b!5709272 d!1801654))

(declare-fun bs!1334069 () Bool)

(declare-fun d!1801656 () Bool)

(assert (= bs!1334069 (and d!1801656 b!5709284)))

(declare-fun lambda!308025 () Int)

(assert (=> bs!1334069 (not (= lambda!308025 lambda!307930))))

(declare-fun bs!1334070 () Bool)

(assert (= bs!1334070 (and d!1801656 d!1801400)))

(assert (=> bs!1334070 (= (and (= s!2326 (_1!36101 lt!2274833)) (= (regOne!31914 r!7292) (reg!16030 (regOne!31914 r!7292))) (= (regTwo!31914 r!7292) lt!2274841)) (= lambda!308025 lambda!307954))))

(declare-fun bs!1334071 () Bool)

(assert (= bs!1334071 (and d!1801656 b!5709674)))

(assert (=> bs!1334071 (not (= lambda!308025 lambda!307987))))

(declare-fun bs!1334072 () Bool)

(assert (= bs!1334072 (and d!1801656 d!1801592)))

(assert (=> bs!1334072 (= (= (regOne!31914 r!7292) lt!2274841) (= lambda!308025 lambda!308010))))

(declare-fun bs!1334073 () Bool)

(assert (= bs!1334073 (and d!1801656 b!5709288)))

(assert (=> bs!1334073 (not (= lambda!308025 lambda!307932))))

(declare-fun bs!1334074 () Bool)

(assert (= bs!1334074 (and d!1801656 b!5709706)))

(assert (=> bs!1334074 (not (= lambda!308025 lambda!307991))))

(declare-fun bs!1334075 () Bool)

(assert (= bs!1334075 (and d!1801656 b!5709679)))

(assert (=> bs!1334075 (not (= lambda!308025 lambda!307986))))

(declare-fun bs!1334076 () Bool)

(assert (= bs!1334076 (and d!1801656 d!1801596)))

(assert (=> bs!1334076 (= (= (regOne!31914 r!7292) lt!2274841) (= lambda!308025 lambda!308011))))

(declare-fun bs!1334077 () Bool)

(assert (= bs!1334077 (and d!1801656 d!1801404)))

(assert (=> bs!1334077 (not (= lambda!308025 lambda!307968))))

(assert (=> bs!1334069 (= (= (regOne!31914 r!7292) lt!2274841) (= lambda!308025 lambda!307929))))

(declare-fun bs!1334078 () Bool)

(assert (= bs!1334078 (and d!1801656 b!5709711)))

(assert (=> bs!1334078 (not (= lambda!308025 lambda!307990))))

(declare-fun bs!1334079 () Bool)

(assert (= bs!1334079 (and d!1801656 d!1801424)))

(assert (=> bs!1334079 (= (and (= s!2326 (_1!36101 lt!2274833)) (= (regOne!31914 r!7292) (reg!16030 (regOne!31914 r!7292))) (= (regTwo!31914 r!7292) lt!2274841)) (= lambda!308025 lambda!307980))))

(assert (=> bs!1334073 (= (and (= s!2326 (_1!36101 lt!2274833)) (= (regOne!31914 r!7292) (reg!16030 (regOne!31914 r!7292))) (= (regTwo!31914 r!7292) lt!2274841)) (= lambda!308025 lambda!307931))))

(assert (=> bs!1334076 (not (= lambda!308025 lambda!308012))))

(declare-fun bs!1334080 () Bool)

(assert (= bs!1334080 (and d!1801656 b!5709272)))

(assert (=> bs!1334080 (not (= lambda!308025 lambda!307927))))

(declare-fun bs!1334081 () Bool)

(assert (= bs!1334081 (and d!1801656 b!5710204)))

(assert (=> bs!1334081 (not (= lambda!308025 lambda!308024))))

(assert (=> bs!1334073 (not (= lambda!308025 lambda!307933))))

(assert (=> bs!1334077 (= (and (= s!2326 (_1!36101 lt!2274833)) (= (regOne!31914 r!7292) (reg!16030 (regOne!31914 r!7292))) (= (regTwo!31914 r!7292) (Star!15701 (reg!16030 (regOne!31914 r!7292))))) (= lambda!308025 lambda!307966))))

(assert (=> bs!1334070 (not (= lambda!308025 lambda!307957))))

(declare-fun bs!1334082 () Bool)

(assert (= bs!1334082 (and d!1801656 b!5710209)))

(assert (=> bs!1334082 (not (= lambda!308025 lambda!308023))))

(assert (=> bs!1334080 (= lambda!308025 lambda!307926)))

(assert (=> d!1801656 true))

(assert (=> d!1801656 true))

(assert (=> d!1801656 true))

(assert (=> d!1801656 (= (isDefined!12413 (findConcatSeparation!2124 (regOne!31914 r!7292) (regTwo!31914 r!7292) Nil!63278 s!2326 s!2326)) (Exists!2801 lambda!308025))))

(declare-fun lt!2274995 () Unit!156336)

(assert (=> d!1801656 (= lt!2274995 (choose!43152 (regOne!31914 r!7292) (regTwo!31914 r!7292) s!2326))))

(assert (=> d!1801656 (validRegex!7437 (regOne!31914 r!7292))))

(assert (=> d!1801656 (= (lemmaFindConcatSeparationEquivalentToExists!1888 (regOne!31914 r!7292) (regTwo!31914 r!7292) s!2326) lt!2274995)))

(declare-fun bs!1334083 () Bool)

(assert (= bs!1334083 d!1801656))

(declare-fun m!6664046 () Bool)

(assert (=> bs!1334083 m!6664046))

(assert (=> bs!1334083 m!6663194))

(declare-fun m!6664048 () Bool)

(assert (=> bs!1334083 m!6664048))

(assert (=> bs!1334083 m!6664034))

(assert (=> bs!1334083 m!6663194))

(assert (=> bs!1334083 m!6663196))

(assert (=> b!5709272 d!1801656))

(declare-fun bs!1334084 () Bool)

(declare-fun d!1801658 () Bool)

(assert (= bs!1334084 (and d!1801658 b!5709284)))

(declare-fun lambda!308026 () Int)

(assert (=> bs!1334084 (not (= lambda!308026 lambda!307930))))

(declare-fun bs!1334085 () Bool)

(assert (= bs!1334085 (and d!1801658 d!1801400)))

(assert (=> bs!1334085 (= (and (= s!2326 (_1!36101 lt!2274833)) (= (regOne!31914 r!7292) (reg!16030 (regOne!31914 r!7292))) (= (regTwo!31914 r!7292) lt!2274841)) (= lambda!308026 lambda!307954))))

(declare-fun bs!1334086 () Bool)

(assert (= bs!1334086 (and d!1801658 b!5709674)))

(assert (=> bs!1334086 (not (= lambda!308026 lambda!307987))))

(declare-fun bs!1334087 () Bool)

(assert (= bs!1334087 (and d!1801658 d!1801592)))

(assert (=> bs!1334087 (= (= (regOne!31914 r!7292) lt!2274841) (= lambda!308026 lambda!308010))))

(declare-fun bs!1334088 () Bool)

(assert (= bs!1334088 (and d!1801658 b!5709288)))

(assert (=> bs!1334088 (not (= lambda!308026 lambda!307932))))

(declare-fun bs!1334089 () Bool)

(assert (= bs!1334089 (and d!1801658 b!5709706)))

(assert (=> bs!1334089 (not (= lambda!308026 lambda!307991))))

(declare-fun bs!1334090 () Bool)

(assert (= bs!1334090 (and d!1801658 b!5709679)))

(assert (=> bs!1334090 (not (= lambda!308026 lambda!307986))))

(declare-fun bs!1334091 () Bool)

(assert (= bs!1334091 (and d!1801658 d!1801596)))

(assert (=> bs!1334091 (= (= (regOne!31914 r!7292) lt!2274841) (= lambda!308026 lambda!308011))))

(declare-fun bs!1334092 () Bool)

(assert (= bs!1334092 (and d!1801658 d!1801404)))

(assert (=> bs!1334092 (not (= lambda!308026 lambda!307968))))

(assert (=> bs!1334084 (= (= (regOne!31914 r!7292) lt!2274841) (= lambda!308026 lambda!307929))))

(declare-fun bs!1334093 () Bool)

(assert (= bs!1334093 (and d!1801658 b!5709711)))

(assert (=> bs!1334093 (not (= lambda!308026 lambda!307990))))

(declare-fun bs!1334094 () Bool)

(assert (= bs!1334094 (and d!1801658 d!1801424)))

(assert (=> bs!1334094 (= (and (= s!2326 (_1!36101 lt!2274833)) (= (regOne!31914 r!7292) (reg!16030 (regOne!31914 r!7292))) (= (regTwo!31914 r!7292) lt!2274841)) (= lambda!308026 lambda!307980))))

(assert (=> bs!1334088 (= (and (= s!2326 (_1!36101 lt!2274833)) (= (regOne!31914 r!7292) (reg!16030 (regOne!31914 r!7292))) (= (regTwo!31914 r!7292) lt!2274841)) (= lambda!308026 lambda!307931))))

(declare-fun bs!1334095 () Bool)

(assert (= bs!1334095 (and d!1801658 d!1801656)))

(assert (=> bs!1334095 (= lambda!308026 lambda!308025)))

(assert (=> bs!1334091 (not (= lambda!308026 lambda!308012))))

(declare-fun bs!1334096 () Bool)

(assert (= bs!1334096 (and d!1801658 b!5709272)))

(assert (=> bs!1334096 (not (= lambda!308026 lambda!307927))))

(declare-fun bs!1334097 () Bool)

(assert (= bs!1334097 (and d!1801658 b!5710204)))

(assert (=> bs!1334097 (not (= lambda!308026 lambda!308024))))

(assert (=> bs!1334088 (not (= lambda!308026 lambda!307933))))

(assert (=> bs!1334092 (= (and (= s!2326 (_1!36101 lt!2274833)) (= (regOne!31914 r!7292) (reg!16030 (regOne!31914 r!7292))) (= (regTwo!31914 r!7292) (Star!15701 (reg!16030 (regOne!31914 r!7292))))) (= lambda!308026 lambda!307966))))

(assert (=> bs!1334085 (not (= lambda!308026 lambda!307957))))

(declare-fun bs!1334098 () Bool)

(assert (= bs!1334098 (and d!1801658 b!5710209)))

(assert (=> bs!1334098 (not (= lambda!308026 lambda!308023))))

(assert (=> bs!1334096 (= lambda!308026 lambda!307926)))

(assert (=> d!1801658 true))

(assert (=> d!1801658 true))

(assert (=> d!1801658 true))

(declare-fun lambda!308027 () Int)

(assert (=> bs!1334084 (= (= (regOne!31914 r!7292) lt!2274841) (= lambda!308027 lambda!307930))))

(assert (=> bs!1334085 (not (= lambda!308027 lambda!307954))))

(assert (=> bs!1334086 (= (and (= s!2326 (_1!36101 lt!2274833)) (= (regOne!31914 r!7292) (regOne!31914 lt!2274841)) (= (regTwo!31914 r!7292) (regTwo!31914 lt!2274841))) (= lambda!308027 lambda!307987))))

(assert (=> bs!1334087 (not (= lambda!308027 lambda!308010))))

(assert (=> bs!1334088 (not (= lambda!308027 lambda!307932))))

(assert (=> bs!1334089 (= lambda!308027 lambda!307991)))

(assert (=> bs!1334090 (not (= lambda!308027 lambda!307986))))

(declare-fun bs!1334099 () Bool)

(assert (= bs!1334099 d!1801658))

(assert (=> bs!1334099 (not (= lambda!308027 lambda!308026))))

(assert (=> bs!1334091 (not (= lambda!308027 lambda!308011))))

(assert (=> bs!1334092 (not (= lambda!308027 lambda!307968))))

(assert (=> bs!1334084 (not (= lambda!308027 lambda!307929))))

(assert (=> bs!1334093 (not (= lambda!308027 lambda!307990))))

(assert (=> bs!1334094 (not (= lambda!308027 lambda!307980))))

(assert (=> bs!1334088 (not (= lambda!308027 lambda!307931))))

(assert (=> bs!1334095 (not (= lambda!308027 lambda!308025))))

(assert (=> bs!1334091 (= (= (regOne!31914 r!7292) lt!2274841) (= lambda!308027 lambda!308012))))

(assert (=> bs!1334096 (= lambda!308027 lambda!307927)))

(assert (=> bs!1334097 (= (and (= (regOne!31914 r!7292) (regOne!31914 lt!2274837)) (= (regTwo!31914 r!7292) (regTwo!31914 lt!2274837))) (= lambda!308027 lambda!308024))))

(assert (=> bs!1334088 (= (and (= s!2326 (_1!36101 lt!2274833)) (= (regOne!31914 r!7292) (reg!16030 (regOne!31914 r!7292))) (= (regTwo!31914 r!7292) lt!2274841)) (= lambda!308027 lambda!307933))))

(assert (=> bs!1334092 (not (= lambda!308027 lambda!307966))))

(assert (=> bs!1334085 (= (and (= s!2326 (_1!36101 lt!2274833)) (= (regOne!31914 r!7292) (reg!16030 (regOne!31914 r!7292))) (= (regTwo!31914 r!7292) lt!2274841)) (= lambda!308027 lambda!307957))))

(assert (=> bs!1334098 (not (= lambda!308027 lambda!308023))))

(assert (=> bs!1334096 (not (= lambda!308027 lambda!307926))))

(assert (=> d!1801658 true))

(assert (=> d!1801658 true))

(assert (=> d!1801658 true))

(assert (=> d!1801658 (= (Exists!2801 lambda!308026) (Exists!2801 lambda!308027))))

(declare-fun lt!2274996 () Unit!156336)

(assert (=> d!1801658 (= lt!2274996 (choose!43149 (regOne!31914 r!7292) (regTwo!31914 r!7292) s!2326))))

(assert (=> d!1801658 (validRegex!7437 (regOne!31914 r!7292))))

(assert (=> d!1801658 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1430 (regOne!31914 r!7292) (regTwo!31914 r!7292) s!2326) lt!2274996)))

(declare-fun m!6664050 () Bool)

(assert (=> bs!1334099 m!6664050))

(declare-fun m!6664052 () Bool)

(assert (=> bs!1334099 m!6664052))

(declare-fun m!6664054 () Bool)

(assert (=> bs!1334099 m!6664054))

(assert (=> bs!1334099 m!6664034))

(assert (=> b!5709272 d!1801658))

(declare-fun d!1801660 () Bool)

(assert (=> d!1801660 (= (isDefined!12413 (findConcatSeparation!2124 (regOne!31914 r!7292) (regTwo!31914 r!7292) Nil!63278 s!2326 s!2326)) (not (isEmpty!35148 (findConcatSeparation!2124 (regOne!31914 r!7292) (regTwo!31914 r!7292) Nil!63278 s!2326 s!2326))))))

(declare-fun bs!1334100 () Bool)

(assert (= bs!1334100 d!1801660))

(assert (=> bs!1334100 m!6663194))

(declare-fun m!6664056 () Bool)

(assert (=> bs!1334100 m!6664056))

(assert (=> b!5709272 d!1801660))

(declare-fun b!5710229 () Bool)

(declare-fun e!3512181 () Bool)

(declare-fun tp!1582769 () Bool)

(assert (=> b!5710229 (= e!3512181 tp!1582769)))

(declare-fun tp!1582770 () Bool)

(declare-fun e!3512180 () Bool)

(declare-fun b!5710228 () Bool)

(assert (=> b!5710228 (= e!3512180 (and (inv!82499 (h!69728 (t!376724 zl!343))) e!3512181 tp!1582770))))

(assert (=> b!5709293 (= tp!1582704 e!3512180)))

(assert (= b!5710228 b!5710229))

(assert (= (and b!5709293 ((_ is Cons!63280) (t!376724 zl!343))) b!5710228))

(declare-fun m!6664058 () Bool)

(assert (=> b!5710228 m!6664058))

(declare-fun e!3512184 () Bool)

(assert (=> b!5709273 (= tp!1582697 e!3512184)))

(declare-fun b!5710240 () Bool)

(assert (=> b!5710240 (= e!3512184 tp_is_empty!40655)))

(declare-fun b!5710241 () Bool)

(declare-fun tp!1582784 () Bool)

(declare-fun tp!1582782 () Bool)

(assert (=> b!5710241 (= e!3512184 (and tp!1582784 tp!1582782))))

(declare-fun b!5710243 () Bool)

(declare-fun tp!1582783 () Bool)

(declare-fun tp!1582785 () Bool)

(assert (=> b!5710243 (= e!3512184 (and tp!1582783 tp!1582785))))

(declare-fun b!5710242 () Bool)

(declare-fun tp!1582781 () Bool)

(assert (=> b!5710242 (= e!3512184 tp!1582781)))

(assert (= (and b!5709273 ((_ is ElementMatch!15701) (reg!16030 r!7292))) b!5710240))

(assert (= (and b!5709273 ((_ is Concat!24546) (reg!16030 r!7292))) b!5710241))

(assert (= (and b!5709273 ((_ is Star!15701) (reg!16030 r!7292))) b!5710242))

(assert (= (and b!5709273 ((_ is Union!15701) (reg!16030 r!7292))) b!5710243))

(declare-fun e!3512185 () Bool)

(assert (=> b!5709280 (= tp!1582698 e!3512185)))

(declare-fun b!5710244 () Bool)

(assert (=> b!5710244 (= e!3512185 tp_is_empty!40655)))

(declare-fun b!5710245 () Bool)

(declare-fun tp!1582789 () Bool)

(declare-fun tp!1582787 () Bool)

(assert (=> b!5710245 (= e!3512185 (and tp!1582789 tp!1582787))))

(declare-fun b!5710247 () Bool)

(declare-fun tp!1582788 () Bool)

(declare-fun tp!1582790 () Bool)

(assert (=> b!5710247 (= e!3512185 (and tp!1582788 tp!1582790))))

(declare-fun b!5710246 () Bool)

(declare-fun tp!1582786 () Bool)

(assert (=> b!5710246 (= e!3512185 tp!1582786)))

(assert (= (and b!5709280 ((_ is ElementMatch!15701) (regOne!31914 r!7292))) b!5710244))

(assert (= (and b!5709280 ((_ is Concat!24546) (regOne!31914 r!7292))) b!5710245))

(assert (= (and b!5709280 ((_ is Star!15701) (regOne!31914 r!7292))) b!5710246))

(assert (= (and b!5709280 ((_ is Union!15701) (regOne!31914 r!7292))) b!5710247))

(declare-fun e!3512186 () Bool)

(assert (=> b!5709280 (= tp!1582700 e!3512186)))

(declare-fun b!5710248 () Bool)

(assert (=> b!5710248 (= e!3512186 tp_is_empty!40655)))

(declare-fun b!5710249 () Bool)

(declare-fun tp!1582794 () Bool)

(declare-fun tp!1582792 () Bool)

(assert (=> b!5710249 (= e!3512186 (and tp!1582794 tp!1582792))))

(declare-fun b!5710251 () Bool)

(declare-fun tp!1582793 () Bool)

(declare-fun tp!1582795 () Bool)

(assert (=> b!5710251 (= e!3512186 (and tp!1582793 tp!1582795))))

(declare-fun b!5710250 () Bool)

(declare-fun tp!1582791 () Bool)

(assert (=> b!5710250 (= e!3512186 tp!1582791)))

(assert (= (and b!5709280 ((_ is ElementMatch!15701) (regTwo!31914 r!7292))) b!5710248))

(assert (= (and b!5709280 ((_ is Concat!24546) (regTwo!31914 r!7292))) b!5710249))

(assert (= (and b!5709280 ((_ is Star!15701) (regTwo!31914 r!7292))) b!5710250))

(assert (= (and b!5709280 ((_ is Union!15701) (regTwo!31914 r!7292))) b!5710251))

(declare-fun b!5710256 () Bool)

(declare-fun e!3512189 () Bool)

(declare-fun tp!1582798 () Bool)

(assert (=> b!5710256 (= e!3512189 (and tp_is_empty!40655 tp!1582798))))

(assert (=> b!5709275 (= tp!1582705 e!3512189)))

(assert (= (and b!5709275 ((_ is Cons!63278) (t!376722 s!2326))) b!5710256))

(declare-fun b!5710261 () Bool)

(declare-fun e!3512192 () Bool)

(declare-fun tp!1582803 () Bool)

(declare-fun tp!1582804 () Bool)

(assert (=> b!5710261 (= e!3512192 (and tp!1582803 tp!1582804))))

(assert (=> b!5709270 (= tp!1582699 e!3512192)))

(assert (= (and b!5709270 ((_ is Cons!63279) (exprs!5585 (h!69728 zl!343)))) b!5710261))

(declare-fun b!5710262 () Bool)

(declare-fun e!3512193 () Bool)

(declare-fun tp!1582805 () Bool)

(declare-fun tp!1582806 () Bool)

(assert (=> b!5710262 (= e!3512193 (and tp!1582805 tp!1582806))))

(assert (=> b!5709276 (= tp!1582706 e!3512193)))

(assert (= (and b!5709276 ((_ is Cons!63279) (exprs!5585 setElem!38225))) b!5710262))

(declare-fun condSetEmpty!38231 () Bool)

(assert (=> setNonEmpty!38225 (= condSetEmpty!38231 (= setRest!38225 ((as const (Array Context!10170 Bool)) false)))))

(declare-fun setRes!38231 () Bool)

(assert (=> setNonEmpty!38225 (= tp!1582701 setRes!38231)))

(declare-fun setIsEmpty!38231 () Bool)

(assert (=> setIsEmpty!38231 setRes!38231))

(declare-fun setElem!38231 () Context!10170)

(declare-fun setNonEmpty!38231 () Bool)

(declare-fun e!3512196 () Bool)

(declare-fun tp!1582811 () Bool)

(assert (=> setNonEmpty!38231 (= setRes!38231 (and tp!1582811 (inv!82499 setElem!38231) e!3512196))))

(declare-fun setRest!38231 () (InoxSet Context!10170))

(assert (=> setNonEmpty!38231 (= setRest!38225 ((_ map or) (store ((as const (Array Context!10170 Bool)) false) setElem!38231 true) setRest!38231))))

(declare-fun b!5710267 () Bool)

(declare-fun tp!1582812 () Bool)

(assert (=> b!5710267 (= e!3512196 tp!1582812)))

(assert (= (and setNonEmpty!38225 condSetEmpty!38231) setIsEmpty!38231))

(assert (= (and setNonEmpty!38225 (not condSetEmpty!38231)) setNonEmpty!38231))

(assert (= setNonEmpty!38231 b!5710267))

(declare-fun m!6664060 () Bool)

(assert (=> setNonEmpty!38231 m!6664060))

(declare-fun e!3512197 () Bool)

(assert (=> b!5709277 (= tp!1582702 e!3512197)))

(declare-fun b!5710268 () Bool)

(assert (=> b!5710268 (= e!3512197 tp_is_empty!40655)))

(declare-fun b!5710269 () Bool)

(declare-fun tp!1582816 () Bool)

(declare-fun tp!1582814 () Bool)

(assert (=> b!5710269 (= e!3512197 (and tp!1582816 tp!1582814))))

(declare-fun b!5710271 () Bool)

(declare-fun tp!1582815 () Bool)

(declare-fun tp!1582817 () Bool)

(assert (=> b!5710271 (= e!3512197 (and tp!1582815 tp!1582817))))

(declare-fun b!5710270 () Bool)

(declare-fun tp!1582813 () Bool)

(assert (=> b!5710270 (= e!3512197 tp!1582813)))

(assert (= (and b!5709277 ((_ is ElementMatch!15701) (regOne!31915 r!7292))) b!5710268))

(assert (= (and b!5709277 ((_ is Concat!24546) (regOne!31915 r!7292))) b!5710269))

(assert (= (and b!5709277 ((_ is Star!15701) (regOne!31915 r!7292))) b!5710270))

(assert (= (and b!5709277 ((_ is Union!15701) (regOne!31915 r!7292))) b!5710271))

(declare-fun e!3512198 () Bool)

(assert (=> b!5709277 (= tp!1582703 e!3512198)))

(declare-fun b!5710272 () Bool)

(assert (=> b!5710272 (= e!3512198 tp_is_empty!40655)))

(declare-fun b!5710273 () Bool)

(declare-fun tp!1582821 () Bool)

(declare-fun tp!1582819 () Bool)

(assert (=> b!5710273 (= e!3512198 (and tp!1582821 tp!1582819))))

(declare-fun b!5710275 () Bool)

(declare-fun tp!1582820 () Bool)

(declare-fun tp!1582822 () Bool)

(assert (=> b!5710275 (= e!3512198 (and tp!1582820 tp!1582822))))

(declare-fun b!5710274 () Bool)

(declare-fun tp!1582818 () Bool)

(assert (=> b!5710274 (= e!3512198 tp!1582818)))

(assert (= (and b!5709277 ((_ is ElementMatch!15701) (regTwo!31915 r!7292))) b!5710272))

(assert (= (and b!5709277 ((_ is Concat!24546) (regTwo!31915 r!7292))) b!5710273))

(assert (= (and b!5709277 ((_ is Star!15701) (regTwo!31915 r!7292))) b!5710274))

(assert (= (and b!5709277 ((_ is Union!15701) (regTwo!31915 r!7292))) b!5710275))

(declare-fun b_lambda!215871 () Bool)

(assert (= b_lambda!215857 (or b!5709282 b_lambda!215871)))

(declare-fun bs!1334101 () Bool)

(declare-fun d!1801662 () Bool)

(assert (= bs!1334101 (and d!1801662 b!5709282)))

(assert (=> bs!1334101 (= (dynLambda!24766 lambda!307928 lt!2274830) (derivationStepZipperUp!969 lt!2274830 (h!69726 s!2326)))))

(assert (=> bs!1334101 m!6663076))

(assert (=> d!1801568 d!1801662))

(declare-fun b_lambda!215873 () Bool)

(assert (= b_lambda!215855 (or b!5709282 b_lambda!215873)))

(declare-fun bs!1334102 () Bool)

(declare-fun d!1801664 () Bool)

(assert (= bs!1334102 (and d!1801664 b!5709282)))

(assert (=> bs!1334102 (= (dynLambda!24766 lambda!307928 lt!2274818) (derivationStepZipperUp!969 lt!2274818 (h!69726 s!2326)))))

(assert (=> bs!1334102 m!6663080))

(assert (=> d!1801558 d!1801664))

(declare-fun b_lambda!215875 () Bool)

(assert (= b_lambda!215867 (or b!5709282 b_lambda!215875)))

(declare-fun bs!1334103 () Bool)

(declare-fun d!1801666 () Bool)

(assert (= bs!1334103 (and d!1801666 b!5709282)))

(assert (=> bs!1334103 (= (dynLambda!24766 lambda!307928 (h!69728 zl!343)) (derivationStepZipperUp!969 (h!69728 zl!343) (h!69726 s!2326)))))

(assert (=> bs!1334103 m!6663128))

(assert (=> d!1801612 d!1801666))

(declare-fun b_lambda!215877 () Bool)

(assert (= b_lambda!215869 (or b!5709282 b_lambda!215877)))

(declare-fun bs!1334104 () Bool)

(declare-fun d!1801668 () Bool)

(assert (= bs!1334104 (and d!1801668 b!5709282)))

(assert (=> bs!1334104 (= (dynLambda!24766 lambda!307928 lt!2274820) (derivationStepZipperUp!969 lt!2274820 (h!69726 s!2326)))))

(assert (=> bs!1334104 m!6663148))

(assert (=> d!1801622 d!1801668))

(check-sat (not bm!435918) (not b!5710199) (not d!1801618) (not bm!435859) (not bm!435902) (not b!5710105) (not d!1801568) (not b!5710044) (not b!5709902) (not b!5710212) (not bm!435879) (not d!1801560) (not b!5710228) (not b!5709966) (not b!5710221) (not b!5710243) (not b!5709572) (not b!5709820) (not b!5710110) (not d!1801596) (not b!5710142) (not bm!435911) (not b!5710175) (not d!1801534) (not d!1801424) (not d!1801658) (not b!5709860) (not d!1801526) (not d!1801600) (not d!1801626) (not d!1801546) (not bm!435878) (not bm!435912) (not b!5709862) (not b!5710048) (not b!5710177) (not b!5709819) (not b!5710247) (not d!1801646) (not d!1801640) (not b!5709896) (not b!5710256) (not b!5709570) (not b!5710205) (not b!5710100) (not b!5709707) (not d!1801442) (not d!1801582) (not d!1801590) (not bm!435903) (not bm!435858) (not d!1801528) (not d!1801404) (not b!5710050) (not b!5710133) (not d!1801592) (not b!5709859) (not b!5710148) tp_is_empty!40655 (not d!1801566) (not b!5710126) (not b!5709566) (not b!5710176) (not d!1801538) (not d!1801398) (not b_lambda!215877) (not b!5710216) (not d!1801624) (not bs!1334101) (not d!1801654) (not b!5710214) (not b!5710141) (not d!1801396) (not b!5709702) (not b!5710267) (not b!5710191) (not b!5709911) (not bm!435850) (not b!5709813) (not b!5709471) (not b!5710250) (not d!1801494) (not b!5710098) (not b!5709903) (not bm!435907) (not b!5709571) (not b!5710241) (not b!5710246) (not b!5709858) (not b!5709979) (not d!1801420) (not setNonEmpty!38231) (not b!5709675) (not b!5710145) (not d!1801536) (not d!1801510) (not bm!435920) (not bm!435919) (not bm!435888) (not b!5709864) (not b!5709865) (not b!5710271) (not bm!435917) (not bm!435901) (not b_lambda!215871) (not d!1801516) (not b!5710049) (not b!5710211) (not b!5710045) (not d!1801656) (not bm!435921) (not b!5710275) (not b!5709814) (not bm!435851) (not b!5710178) (not b!5710273) (not b!5710107) (not b!5710112) (not d!1801500) (not b!5710055) (not b!5710219) (not b!5709964) (not d!1801660) (not b!5710095) (not b!5710192) (not b!5710269) (not b!5710184) (not b!5709821) (not d!1801606) (not d!1801616) (not d!1801400) (not b!5710170) (not b!5709897) (not b!5710128) (not b!5709863) (not d!1801636) (not b_lambda!215875) (not b!5710172) (not b!5709898) (not b!5710220) (not bs!1334102) (not b!5710101) (not d!1801422) (not bm!435887) (not d!1801650) (not b!5710270) (not b!5710174) (not d!1801588) (not d!1801562) (not bm!435909) (not d!1801648) (not b!5710197) (not b!5709977) (not d!1801622) (not b!5710094) (not b!5709900) (not b!5710245) (not bm!435872) (not b!5709567) (not b!5710200) (not b!5710147) (not d!1801638) (not b!5710149) (not b!5709565) (not b!5710039) (not d!1801594) (not b!5710261) (not b!5709901) (not bm!435910) (not b!5710102) (not d!1801642) (not bm!435908) (not b!5710251) (not b!5710274) (not b!5710113) (not b!5709670) (not b!5710249) (not b!5710131) (not d!1801628) (not b!5710229) (not b!5709817) (not d!1801612) (not b!5710054) (not d!1801558) (not b!5710078) (not b!5710242) (not b!5710262) (not b!5710053) (not bs!1334104) (not b!5709472) (not b!5709839) (not d!1801584) (not d!1801394) (not b!5709861) (not d!1801514) (not b_lambda!215873) (not b!5710198) (not b!5710195) (not b!5710215) (not bm!435916) (not d!1801634) (not bs!1334103) (not d!1801652) (not d!1801412) (not d!1801630))
(check-sat)
