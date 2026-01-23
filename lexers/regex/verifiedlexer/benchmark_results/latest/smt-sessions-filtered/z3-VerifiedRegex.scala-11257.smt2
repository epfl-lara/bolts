; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!591100 () Bool)

(assert start!591100)

(declare-fun b!5750992 () Bool)

(assert (=> b!5750992 true))

(assert (=> b!5750992 true))

(declare-fun lambda!312040 () Int)

(declare-fun lambda!312039 () Int)

(assert (=> b!5750992 (not (= lambda!312040 lambda!312039))))

(assert (=> b!5750992 true))

(assert (=> b!5750992 true))

(declare-fun b!5750980 () Bool)

(assert (=> b!5750980 true))

(declare-fun b!5750970 () Bool)

(declare-fun res!2428146 () Bool)

(declare-fun e!3534473 () Bool)

(assert (=> b!5750970 (=> res!2428146 e!3534473)))

(declare-datatypes ((C!31792 0))(
  ( (C!31793 (val!25598 Int)) )
))
(declare-datatypes ((List!63582 0))(
  ( (Nil!63458) (Cons!63458 (h!69906 C!31792) (t!376912 List!63582)) )
))
(declare-fun s!2326 () List!63582)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!15761 0))(
  ( (ElementMatch!15761 (c!1015817 C!31792)) (Concat!24606 (regOne!32034 Regex!15761) (regTwo!32034 Regex!15761)) (EmptyExpr!15761) (Star!15761 (reg!16090 Regex!15761)) (EmptyLang!15761) (Union!15761 (regOne!32035 Regex!15761) (regTwo!32035 Regex!15761)) )
))
(declare-datatypes ((List!63583 0))(
  ( (Nil!63459) (Cons!63459 (h!69907 Regex!15761) (t!376913 List!63583)) )
))
(declare-datatypes ((Context!10290 0))(
  ( (Context!10291 (exprs!5645 List!63583)) )
))
(declare-fun lt!2287286 () (InoxSet Context!10290))

(declare-fun lt!2287280 () (InoxSet Context!10290))

(declare-fun matchZipper!1899 ((InoxSet Context!10290) List!63582) Bool)

(assert (=> b!5750970 (= res!2428146 (not (= (matchZipper!1899 lt!2287280 s!2326) (matchZipper!1899 lt!2287286 (t!376912 s!2326)))))))

(declare-fun b!5750971 () Bool)

(declare-fun e!3534466 () Bool)

(declare-fun tp_is_empty!40775 () Bool)

(declare-fun tp!1589749 () Bool)

(assert (=> b!5750971 (= e!3534466 (and tp_is_empty!40775 tp!1589749))))

(declare-fun b!5750972 () Bool)

(declare-fun res!2428161 () Bool)

(declare-fun e!3534468 () Bool)

(assert (=> b!5750972 (=> res!2428161 e!3534468)))

(declare-fun r!7292 () Regex!15761)

(get-info :version)

(assert (=> b!5750972 (= res!2428161 (or ((_ is EmptyExpr!15761) r!7292) ((_ is EmptyLang!15761) r!7292) ((_ is ElementMatch!15761) r!7292) ((_ is Union!15761) r!7292) (not ((_ is Concat!24606) r!7292))))))

(declare-fun b!5750973 () Bool)

(declare-fun e!3534460 () Bool)

(assert (=> b!5750973 (= e!3534473 e!3534460)))

(declare-fun res!2428160 () Bool)

(assert (=> b!5750973 (=> res!2428160 e!3534460)))

(declare-fun lt!2287274 () Regex!15761)

(assert (=> b!5750973 (= res!2428160 (not (= r!7292 lt!2287274)))))

(declare-fun lt!2287291 () Regex!15761)

(assert (=> b!5750973 (= lt!2287274 (Concat!24606 lt!2287291 (regTwo!32034 r!7292)))))

(declare-fun b!5750975 () Bool)

(declare-fun e!3534469 () Bool)

(assert (=> b!5750975 (= e!3534469 (not e!3534468))))

(declare-fun res!2428144 () Bool)

(assert (=> b!5750975 (=> res!2428144 e!3534468)))

(declare-datatypes ((List!63584 0))(
  ( (Nil!63460) (Cons!63460 (h!69908 Context!10290) (t!376914 List!63584)) )
))
(declare-fun zl!343 () List!63584)

(assert (=> b!5750975 (= res!2428144 (not ((_ is Cons!63460) zl!343)))))

(declare-fun lt!2287278 () Bool)

(declare-fun matchRSpec!2864 (Regex!15761 List!63582) Bool)

(assert (=> b!5750975 (= lt!2287278 (matchRSpec!2864 r!7292 s!2326))))

(declare-fun matchR!7946 (Regex!15761 List!63582) Bool)

(assert (=> b!5750975 (= lt!2287278 (matchR!7946 r!7292 s!2326))))

(declare-datatypes ((Unit!156576 0))(
  ( (Unit!156577) )
))
(declare-fun lt!2287294 () Unit!156576)

(declare-fun mainMatchTheorem!2864 (Regex!15761 List!63582) Unit!156576)

(assert (=> b!5750975 (= lt!2287294 (mainMatchTheorem!2864 r!7292 s!2326))))

(declare-fun b!5750976 () Bool)

(declare-fun res!2428163 () Bool)

(declare-fun e!3534454 () Bool)

(assert (=> b!5750976 (=> res!2428163 e!3534454)))

(declare-fun lt!2287282 () Bool)

(assert (=> b!5750976 (= res!2428163 (not lt!2287282))))

(declare-fun b!5750977 () Bool)

(declare-fun e!3534458 () Bool)

(declare-fun e!3534465 () Bool)

(assert (=> b!5750977 (= e!3534458 e!3534465)))

(declare-fun res!2428157 () Bool)

(assert (=> b!5750977 (=> res!2428157 e!3534465)))

(declare-fun lt!2287262 () (InoxSet Context!10290))

(declare-fun lt!2287290 () (InoxSet Context!10290))

(assert (=> b!5750977 (= res!2428157 (not (= lt!2287262 lt!2287290)))))

(declare-fun lt!2287270 () Context!10290)

(declare-fun derivationStepZipperDown!1103 (Regex!15761 Context!10290 C!31792) (InoxSet Context!10290))

(assert (=> b!5750977 (= lt!2287290 (derivationStepZipperDown!1103 (reg!16090 (regOne!32034 r!7292)) lt!2287270 (h!69906 s!2326)))))

(declare-fun lt!2287260 () List!63583)

(assert (=> b!5750977 (= lt!2287270 (Context!10291 lt!2287260))))

(assert (=> b!5750977 (= lt!2287260 (Cons!63459 lt!2287291 (t!376913 (exprs!5645 (h!69908 zl!343)))))))

(assert (=> b!5750977 (= lt!2287291 (Star!15761 (reg!16090 (regOne!32034 r!7292))))))

(declare-fun b!5750978 () Bool)

(declare-fun e!3534463 () Bool)

(declare-fun tp!1589741 () Bool)

(declare-fun tp!1589744 () Bool)

(assert (=> b!5750978 (= e!3534463 (and tp!1589741 tp!1589744))))

(declare-fun b!5750979 () Bool)

(declare-fun e!3534476 () Unit!156576)

(declare-fun Unit!156578 () Unit!156576)

(assert (=> b!5750979 (= e!3534476 Unit!156578)))

(declare-fun e!3534472 () Bool)

(assert (=> b!5750980 (= e!3534472 e!3534458)))

(declare-fun res!2428148 () Bool)

(assert (=> b!5750980 (=> res!2428148 e!3534458)))

(assert (=> b!5750980 (= res!2428148 (or (and ((_ is ElementMatch!15761) (regOne!32034 r!7292)) (= (c!1015817 (regOne!32034 r!7292)) (h!69906 s!2326))) ((_ is Union!15761) (regOne!32034 r!7292))))))

(declare-fun lt!2287261 () Unit!156576)

(assert (=> b!5750980 (= lt!2287261 e!3534476)))

(declare-fun c!1015816 () Bool)

(assert (=> b!5750980 (= c!1015816 lt!2287282)))

(declare-fun nullable!5793 (Regex!15761) Bool)

(assert (=> b!5750980 (= lt!2287282 (nullable!5793 (h!69907 (exprs!5645 (h!69908 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!10290))

(declare-fun lambda!312041 () Int)

(declare-fun flatMap!1374 ((InoxSet Context!10290) Int) (InoxSet Context!10290))

(declare-fun derivationStepZipperUp!1029 (Context!10290 C!31792) (InoxSet Context!10290))

(assert (=> b!5750980 (= (flatMap!1374 z!1189 lambda!312041) (derivationStepZipperUp!1029 (h!69908 zl!343) (h!69906 s!2326)))))

(declare-fun lt!2287296 () Unit!156576)

(declare-fun lemmaFlatMapOnSingletonSet!906 ((InoxSet Context!10290) Context!10290 Int) Unit!156576)

(assert (=> b!5750980 (= lt!2287296 (lemmaFlatMapOnSingletonSet!906 z!1189 (h!69908 zl!343) lambda!312041))))

(declare-fun lt!2287265 () (InoxSet Context!10290))

(declare-fun lt!2287276 () Context!10290)

(assert (=> b!5750980 (= lt!2287265 (derivationStepZipperUp!1029 lt!2287276 (h!69906 s!2326)))))

(assert (=> b!5750980 (= lt!2287262 (derivationStepZipperDown!1103 (h!69907 (exprs!5645 (h!69908 zl!343))) lt!2287276 (h!69906 s!2326)))))

(assert (=> b!5750980 (= lt!2287276 (Context!10291 (t!376913 (exprs!5645 (h!69908 zl!343)))))))

(declare-fun lt!2287266 () (InoxSet Context!10290))

(assert (=> b!5750980 (= lt!2287266 (derivationStepZipperUp!1029 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343))))) (h!69906 s!2326)))))

(declare-fun b!5750981 () Bool)

(declare-fun e!3534455 () Bool)

(declare-fun e!3534459 () Bool)

(assert (=> b!5750981 (= e!3534455 e!3534459)))

(declare-fun res!2428140 () Bool)

(assert (=> b!5750981 (=> res!2428140 e!3534459)))

(declare-fun lt!2287263 () Context!10290)

(declare-fun unfocusZipper!1503 (List!63584) Regex!15761)

(assert (=> b!5750981 (= res!2428140 (not (= (unfocusZipper!1503 (Cons!63460 lt!2287263 Nil!63460)) (reg!16090 (regOne!32034 r!7292)))))))

(declare-fun lt!2287275 () (InoxSet Context!10290))

(assert (=> b!5750981 (= (flatMap!1374 lt!2287275 lambda!312041) (derivationStepZipperUp!1029 lt!2287270 (h!69906 s!2326)))))

(declare-fun lt!2287271 () Unit!156576)

(assert (=> b!5750981 (= lt!2287271 (lemmaFlatMapOnSingletonSet!906 lt!2287275 lt!2287270 lambda!312041))))

(declare-fun lt!2287289 () (InoxSet Context!10290))

(assert (=> b!5750981 (= (flatMap!1374 lt!2287289 lambda!312041) (derivationStepZipperUp!1029 lt!2287263 (h!69906 s!2326)))))

(declare-fun lt!2287268 () Unit!156576)

(assert (=> b!5750981 (= lt!2287268 (lemmaFlatMapOnSingletonSet!906 lt!2287289 lt!2287263 lambda!312041))))

(declare-fun lt!2287283 () (InoxSet Context!10290))

(assert (=> b!5750981 (= lt!2287283 (derivationStepZipperUp!1029 lt!2287270 (h!69906 s!2326)))))

(declare-fun lt!2287273 () (InoxSet Context!10290))

(assert (=> b!5750981 (= lt!2287273 (derivationStepZipperUp!1029 lt!2287263 (h!69906 s!2326)))))

(assert (=> b!5750981 (= lt!2287275 (store ((as const (Array Context!10290 Bool)) false) lt!2287270 true))))

(assert (=> b!5750981 (= lt!2287289 (store ((as const (Array Context!10290 Bool)) false) lt!2287263 true))))

(assert (=> b!5750981 (= lt!2287263 (Context!10291 (Cons!63459 (reg!16090 (regOne!32034 r!7292)) Nil!63459)))))

(declare-fun setIsEmpty!38607 () Bool)

(declare-fun setRes!38607 () Bool)

(assert (=> setIsEmpty!38607 setRes!38607))

(declare-fun b!5750982 () Bool)

(assert (=> b!5750982 (= e!3534465 e!3534473)))

(declare-fun res!2428145 () Bool)

(assert (=> b!5750982 (=> res!2428145 e!3534473)))

(assert (=> b!5750982 (= res!2428145 (not (= lt!2287286 lt!2287290)))))

(declare-fun lt!2287277 () Context!10290)

(assert (=> b!5750982 (= (flatMap!1374 lt!2287280 lambda!312041) (derivationStepZipperUp!1029 lt!2287277 (h!69906 s!2326)))))

(declare-fun lt!2287264 () Unit!156576)

(assert (=> b!5750982 (= lt!2287264 (lemmaFlatMapOnSingletonSet!906 lt!2287280 lt!2287277 lambda!312041))))

(declare-fun lt!2287269 () (InoxSet Context!10290))

(assert (=> b!5750982 (= lt!2287269 (derivationStepZipperUp!1029 lt!2287277 (h!69906 s!2326)))))

(declare-fun derivationStepZipper!1844 ((InoxSet Context!10290) C!31792) (InoxSet Context!10290))

(assert (=> b!5750982 (= lt!2287286 (derivationStepZipper!1844 lt!2287280 (h!69906 s!2326)))))

(assert (=> b!5750982 (= lt!2287280 (store ((as const (Array Context!10290 Bool)) false) lt!2287277 true))))

(assert (=> b!5750982 (= lt!2287277 (Context!10291 (Cons!63459 (reg!16090 (regOne!32034 r!7292)) lt!2287260)))))

(declare-fun b!5750983 () Bool)

(declare-fun res!2428164 () Bool)

(declare-fun e!3534471 () Bool)

(assert (=> b!5750983 (=> res!2428164 e!3534471)))

(declare-fun lt!2287288 () Bool)

(assert (=> b!5750983 (= res!2428164 lt!2287288)))

(declare-fun e!3534456 () Bool)

(declare-fun tp!1589743 () Bool)

(declare-fun e!3534457 () Bool)

(declare-fun b!5750984 () Bool)

(declare-fun inv!82649 (Context!10290) Bool)

(assert (=> b!5750984 (= e!3534457 (and (inv!82649 (h!69908 zl!343)) e!3534456 tp!1589743))))

(declare-fun b!5750985 () Bool)

(declare-fun res!2428138 () Bool)

(assert (=> b!5750985 (=> res!2428138 e!3534468)))

(assert (=> b!5750985 (= res!2428138 (not ((_ is Cons!63459) (exprs!5645 (h!69908 zl!343)))))))

(declare-fun b!5750986 () Bool)

(assert (=> b!5750986 (= e!3534460 e!3534455)))

(declare-fun res!2428154 () Bool)

(assert (=> b!5750986 (=> res!2428154 e!3534455)))

(declare-fun lt!2287258 () Regex!15761)

(assert (=> b!5750986 (= res!2428154 (not (= (unfocusZipper!1503 (Cons!63460 lt!2287277 Nil!63460)) lt!2287258)))))

(assert (=> b!5750986 (= lt!2287258 (Concat!24606 (reg!16090 (regOne!32034 r!7292)) lt!2287274))))

(declare-fun b!5750987 () Bool)

(declare-fun res!2428155 () Bool)

(assert (=> b!5750987 (=> res!2428155 e!3534454)))

(assert (=> b!5750987 (= res!2428155 (not (matchZipper!1899 z!1189 s!2326)))))

(declare-fun b!5750988 () Bool)

(declare-fun e!3534475 () Bool)

(assert (=> b!5750988 (= e!3534471 e!3534475)))

(declare-fun res!2428139 () Bool)

(assert (=> b!5750988 (=> res!2428139 e!3534475)))

(declare-fun lt!2287285 () (InoxSet Context!10290))

(assert (=> b!5750988 (= res!2428139 (not (= lt!2287265 (derivationStepZipper!1844 lt!2287285 (h!69906 s!2326)))))))

(assert (=> b!5750988 (= (flatMap!1374 lt!2287285 lambda!312041) (derivationStepZipperUp!1029 lt!2287276 (h!69906 s!2326)))))

(declare-fun lt!2287272 () Unit!156576)

(assert (=> b!5750988 (= lt!2287272 (lemmaFlatMapOnSingletonSet!906 lt!2287285 lt!2287276 lambda!312041))))

(assert (=> b!5750988 (= lt!2287285 (store ((as const (Array Context!10290 Bool)) false) lt!2287276 true))))

(declare-fun b!5750989 () Bool)

(declare-fun res!2428162 () Bool)

(assert (=> b!5750989 (=> res!2428162 e!3534468)))

(declare-fun isEmpty!35341 (List!63584) Bool)

(assert (=> b!5750989 (= res!2428162 (not (isEmpty!35341 (t!376914 zl!343))))))

(declare-fun b!5750990 () Bool)

(declare-fun res!2428156 () Bool)

(assert (=> b!5750990 (=> res!2428156 e!3534473)))

(declare-fun lt!2287284 () Regex!15761)

(assert (=> b!5750990 (= res!2428156 (not (= lt!2287284 r!7292)))))

(declare-fun b!5750991 () Bool)

(declare-fun e!3534464 () Bool)

(assert (=> b!5750991 (= e!3534464 (matchZipper!1899 lt!2287265 (t!376912 s!2326)))))

(assert (=> b!5750992 (= e!3534468 e!3534472)))

(declare-fun res!2428158 () Bool)

(assert (=> b!5750992 (=> res!2428158 e!3534472)))

(declare-fun lt!2287281 () Bool)

(assert (=> b!5750992 (= res!2428158 (or (not (= lt!2287278 lt!2287281)) ((_ is Nil!63458) s!2326)))))

(declare-fun Exists!2861 (Int) Bool)

(assert (=> b!5750992 (= (Exists!2861 lambda!312039) (Exists!2861 lambda!312040))))

(declare-fun lt!2287287 () Unit!156576)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1490 (Regex!15761 Regex!15761 List!63582) Unit!156576)

(assert (=> b!5750992 (= lt!2287287 (lemmaExistCutMatchRandMatchRSpecEquivalent!1490 (regOne!32034 r!7292) (regTwo!32034 r!7292) s!2326))))

(assert (=> b!5750992 (= lt!2287281 (Exists!2861 lambda!312039))))

(declare-datatypes ((tuple2!65716 0))(
  ( (tuple2!65717 (_1!36161 List!63582) (_2!36161 List!63582)) )
))
(declare-datatypes ((Option!15770 0))(
  ( (None!15769) (Some!15769 (v!51826 tuple2!65716)) )
))
(declare-fun isDefined!12473 (Option!15770) Bool)

(declare-fun findConcatSeparation!2184 (Regex!15761 Regex!15761 List!63582 List!63582 List!63582) Option!15770)

(assert (=> b!5750992 (= lt!2287281 (isDefined!12473 (findConcatSeparation!2184 (regOne!32034 r!7292) (regTwo!32034 r!7292) Nil!63458 s!2326 s!2326)))))

(declare-fun lt!2287279 () Unit!156576)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1948 (Regex!15761 Regex!15761 List!63582) Unit!156576)

(assert (=> b!5750992 (= lt!2287279 (lemmaFindConcatSeparationEquivalentToExists!1948 (regOne!32034 r!7292) (regTwo!32034 r!7292) s!2326))))

(declare-fun b!5750993 () Bool)

(declare-fun Unit!156579 () Unit!156576)

(assert (=> b!5750993 (= e!3534476 Unit!156579)))

(declare-fun lt!2287293 () Unit!156576)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!786 ((InoxSet Context!10290) (InoxSet Context!10290) List!63582) Unit!156576)

(assert (=> b!5750993 (= lt!2287293 (lemmaZipperConcatMatchesSameAsBothZippers!786 lt!2287262 lt!2287265 (t!376912 s!2326)))))

(declare-fun res!2428169 () Bool)

(assert (=> b!5750993 (= res!2428169 (matchZipper!1899 lt!2287262 (t!376912 s!2326)))))

(assert (=> b!5750993 (=> res!2428169 e!3534464)))

(assert (=> b!5750993 (= (matchZipper!1899 ((_ map or) lt!2287262 lt!2287265) (t!376912 s!2326)) e!3534464)))

(declare-fun b!5750994 () Bool)

(declare-fun e!3534453 () Bool)

(assert (=> b!5750994 (= e!3534453 e!3534469)))

(declare-fun res!2428170 () Bool)

(assert (=> b!5750994 (=> (not res!2428170) (not e!3534469))))

(assert (=> b!5750994 (= res!2428170 (= r!7292 lt!2287284))))

(assert (=> b!5750994 (= lt!2287284 (unfocusZipper!1503 zl!343))))

(declare-fun b!5750995 () Bool)

(assert (=> b!5750995 (= e!3534463 tp_is_empty!40775)))

(declare-fun b!5750996 () Bool)

(declare-fun res!2428150 () Bool)

(assert (=> b!5750996 (=> res!2428150 e!3534458)))

(assert (=> b!5750996 (= res!2428150 (or ((_ is Concat!24606) (regOne!32034 r!7292)) (not ((_ is Star!15761) (regOne!32034 r!7292)))))))

(declare-fun b!5750997 () Bool)

(declare-fun res!2428167 () Bool)

(assert (=> b!5750997 (=> res!2428167 e!3534458)))

(declare-fun e!3534474 () Bool)

(assert (=> b!5750997 (= res!2428167 e!3534474)))

(declare-fun res!2428153 () Bool)

(assert (=> b!5750997 (=> (not res!2428153) (not e!3534474))))

(assert (=> b!5750997 (= res!2428153 ((_ is Concat!24606) (regOne!32034 r!7292)))))

(declare-fun res!2428147 () Bool)

(assert (=> start!591100 (=> (not res!2428147) (not e!3534453))))

(declare-fun validRegex!7497 (Regex!15761) Bool)

(assert (=> start!591100 (= res!2428147 (validRegex!7497 r!7292))))

(assert (=> start!591100 e!3534453))

(assert (=> start!591100 e!3534463))

(declare-fun condSetEmpty!38607 () Bool)

(assert (=> start!591100 (= condSetEmpty!38607 (= z!1189 ((as const (Array Context!10290 Bool)) false)))))

(assert (=> start!591100 setRes!38607))

(assert (=> start!591100 e!3534457))

(assert (=> start!591100 e!3534466))

(declare-fun b!5750974 () Bool)

(declare-fun res!2428171 () Bool)

(assert (=> b!5750974 (=> res!2428171 e!3534459)))

(assert (=> b!5750974 (= res!2428171 (not (= (unfocusZipper!1503 (Cons!63460 lt!2287270 Nil!63460)) lt!2287274)))))

(declare-fun b!5750998 () Bool)

(declare-fun e!3534461 () Bool)

(assert (=> b!5750998 (= e!3534475 e!3534461)))

(declare-fun res!2428166 () Bool)

(assert (=> b!5750998 (=> res!2428166 e!3534461)))

(declare-fun lt!2287295 () Regex!15761)

(declare-fun regexDepth!238 (Regex!15761) Int)

(assert (=> b!5750998 (= res!2428166 (< (regexDepth!238 r!7292) (regexDepth!238 lt!2287295)))))

(declare-fun generalisedConcat!1376 (List!63583) Regex!15761)

(assert (=> b!5750998 (= lt!2287295 (generalisedConcat!1376 (t!376913 (exprs!5645 (h!69908 zl!343)))))))

(declare-fun b!5750999 () Bool)

(declare-fun e!3534467 () Bool)

(assert (=> b!5750999 (= e!3534467 (matchR!7946 (regTwo!32034 r!7292) s!2326))))

(assert (=> b!5750999 (= (matchR!7946 lt!2287295 s!2326) (matchZipper!1899 lt!2287285 s!2326))))

(declare-fun lt!2287267 () List!63584)

(declare-fun lt!2287292 () Unit!156576)

(declare-fun theoremZipperRegexEquiv!673 ((InoxSet Context!10290) List!63584 Regex!15761 List!63582) Unit!156576)

(assert (=> b!5750999 (= lt!2287292 (theoremZipperRegexEquiv!673 lt!2287285 lt!2287267 lt!2287295 s!2326))))

(declare-fun b!5751000 () Bool)

(declare-fun e!3534462 () Bool)

(assert (=> b!5751000 (= e!3534462 (not (matchZipper!1899 lt!2287265 (t!376912 s!2326))))))

(declare-fun b!5751001 () Bool)

(declare-fun res!2428168 () Bool)

(assert (=> b!5751001 (=> (not res!2428168) (not e!3534453))))

(declare-fun toList!9545 ((InoxSet Context!10290)) List!63584)

(assert (=> b!5751001 (= res!2428168 (= (toList!9545 z!1189) zl!343))))

(declare-fun b!5751002 () Bool)

(declare-fun tp!1589742 () Bool)

(assert (=> b!5751002 (= e!3534456 tp!1589742)))

(declare-fun b!5751003 () Bool)

(assert (=> b!5751003 (= e!3534459 e!3534454)))

(declare-fun res!2428151 () Bool)

(assert (=> b!5751003 (=> res!2428151 e!3534454)))

(assert (=> b!5751003 (= res!2428151 lt!2287278)))

(assert (=> b!5751003 (= (matchR!7946 lt!2287258 s!2326) (matchRSpec!2864 lt!2287258 s!2326))))

(declare-fun lt!2287259 () Unit!156576)

(assert (=> b!5751003 (= lt!2287259 (mainMatchTheorem!2864 lt!2287258 s!2326))))

(declare-fun b!5751004 () Bool)

(declare-fun tp!1589748 () Bool)

(assert (=> b!5751004 (= e!3534463 tp!1589748)))

(declare-fun b!5751005 () Bool)

(declare-fun res!2428149 () Bool)

(assert (=> b!5751005 (=> res!2428149 e!3534468)))

(declare-fun generalisedUnion!1624 (List!63583) Regex!15761)

(declare-fun unfocusZipperList!1189 (List!63584) List!63583)

(assert (=> b!5751005 (= res!2428149 (not (= r!7292 (generalisedUnion!1624 (unfocusZipperList!1189 zl!343)))))))

(declare-fun b!5751006 () Bool)

(declare-fun res!2428152 () Bool)

(assert (=> b!5751006 (=> res!2428152 e!3534472)))

(declare-fun isEmpty!35342 (List!63583) Bool)

(assert (=> b!5751006 (= res!2428152 (isEmpty!35342 (t!376913 (exprs!5645 (h!69908 zl!343)))))))

(declare-fun e!3534470 () Bool)

(declare-fun setElem!38607 () Context!10290)

(declare-fun tp!1589746 () Bool)

(declare-fun setNonEmpty!38607 () Bool)

(assert (=> setNonEmpty!38607 (= setRes!38607 (and tp!1589746 (inv!82649 setElem!38607) e!3534470))))

(declare-fun setRest!38607 () (InoxSet Context!10290))

(assert (=> setNonEmpty!38607 (= z!1189 ((_ map or) (store ((as const (Array Context!10290 Bool)) false) setElem!38607 true) setRest!38607))))

(declare-fun b!5751007 () Bool)

(declare-fun tp!1589745 () Bool)

(declare-fun tp!1589750 () Bool)

(assert (=> b!5751007 (= e!3534463 (and tp!1589745 tp!1589750))))

(declare-fun b!5751008 () Bool)

(assert (=> b!5751008 (= e!3534474 (nullable!5793 (regOne!32034 (regOne!32034 r!7292))))))

(declare-fun b!5751009 () Bool)

(declare-fun res!2428141 () Bool)

(assert (=> b!5751009 (=> res!2428141 e!3534471)))

(assert (=> b!5751009 (= res!2428141 (not (matchZipper!1899 lt!2287265 (t!376912 s!2326))))))

(declare-fun b!5751010 () Bool)

(assert (=> b!5751010 (= e!3534454 e!3534471)))

(declare-fun res!2428143 () Bool)

(assert (=> b!5751010 (=> res!2428143 e!3534471)))

(assert (=> b!5751010 (= res!2428143 e!3534462)))

(declare-fun res!2428142 () Bool)

(assert (=> b!5751010 (=> (not res!2428142) (not e!3534462))))

(assert (=> b!5751010 (= res!2428142 (not lt!2287288))))

(assert (=> b!5751010 (= lt!2287288 (matchZipper!1899 lt!2287262 (t!376912 s!2326)))))

(declare-fun b!5751011 () Bool)

(declare-fun tp!1589747 () Bool)

(assert (=> b!5751011 (= e!3534470 tp!1589747)))

(declare-fun b!5751012 () Bool)

(declare-fun res!2428159 () Bool)

(assert (=> b!5751012 (=> res!2428159 e!3534468)))

(assert (=> b!5751012 (= res!2428159 (not (= r!7292 (generalisedConcat!1376 (exprs!5645 (h!69908 zl!343))))))))

(declare-fun b!5751013 () Bool)

(assert (=> b!5751013 (= e!3534461 e!3534467)))

(declare-fun res!2428165 () Bool)

(assert (=> b!5751013 (=> res!2428165 e!3534467)))

(declare-fun zipperDepth!236 (List!63584) Int)

(assert (=> b!5751013 (= res!2428165 (< (zipperDepth!236 zl!343) (zipperDepth!236 lt!2287267)))))

(assert (=> b!5751013 (= lt!2287267 (Cons!63460 lt!2287276 Nil!63460))))

(assert (= (and start!591100 res!2428147) b!5751001))

(assert (= (and b!5751001 res!2428168) b!5750994))

(assert (= (and b!5750994 res!2428170) b!5750975))

(assert (= (and b!5750975 (not res!2428144)) b!5750989))

(assert (= (and b!5750989 (not res!2428162)) b!5751012))

(assert (= (and b!5751012 (not res!2428159)) b!5750985))

(assert (= (and b!5750985 (not res!2428138)) b!5751005))

(assert (= (and b!5751005 (not res!2428149)) b!5750972))

(assert (= (and b!5750972 (not res!2428161)) b!5750992))

(assert (= (and b!5750992 (not res!2428158)) b!5751006))

(assert (= (and b!5751006 (not res!2428152)) b!5750980))

(assert (= (and b!5750980 c!1015816) b!5750993))

(assert (= (and b!5750980 (not c!1015816)) b!5750979))

(assert (= (and b!5750993 (not res!2428169)) b!5750991))

(assert (= (and b!5750980 (not res!2428148)) b!5750997))

(assert (= (and b!5750997 res!2428153) b!5751008))

(assert (= (and b!5750997 (not res!2428167)) b!5750996))

(assert (= (and b!5750996 (not res!2428150)) b!5750977))

(assert (= (and b!5750977 (not res!2428157)) b!5750982))

(assert (= (and b!5750982 (not res!2428145)) b!5750970))

(assert (= (and b!5750970 (not res!2428146)) b!5750990))

(assert (= (and b!5750990 (not res!2428156)) b!5750973))

(assert (= (and b!5750973 (not res!2428160)) b!5750986))

(assert (= (and b!5750986 (not res!2428154)) b!5750981))

(assert (= (and b!5750981 (not res!2428140)) b!5750974))

(assert (= (and b!5750974 (not res!2428171)) b!5751003))

(assert (= (and b!5751003 (not res!2428151)) b!5750987))

(assert (= (and b!5750987 (not res!2428155)) b!5750976))

(assert (= (and b!5750976 (not res!2428163)) b!5751010))

(assert (= (and b!5751010 res!2428142) b!5751000))

(assert (= (and b!5751010 (not res!2428143)) b!5750983))

(assert (= (and b!5750983 (not res!2428164)) b!5751009))

(assert (= (and b!5751009 (not res!2428141)) b!5750988))

(assert (= (and b!5750988 (not res!2428139)) b!5750998))

(assert (= (and b!5750998 (not res!2428166)) b!5751013))

(assert (= (and b!5751013 (not res!2428165)) b!5750999))

(assert (= (and start!591100 ((_ is ElementMatch!15761) r!7292)) b!5750995))

(assert (= (and start!591100 ((_ is Concat!24606) r!7292)) b!5751007))

(assert (= (and start!591100 ((_ is Star!15761) r!7292)) b!5751004))

(assert (= (and start!591100 ((_ is Union!15761) r!7292)) b!5750978))

(assert (= (and start!591100 condSetEmpty!38607) setIsEmpty!38607))

(assert (= (and start!591100 (not condSetEmpty!38607)) setNonEmpty!38607))

(assert (= setNonEmpty!38607 b!5751011))

(assert (= b!5750984 b!5751002))

(assert (= (and start!591100 ((_ is Cons!63460) zl!343)) b!5750984))

(assert (= (and start!591100 ((_ is Cons!63458) s!2326)) b!5750971))

(declare-fun m!6700956 () Bool)

(assert (=> b!5750970 m!6700956))

(declare-fun m!6700958 () Bool)

(assert (=> b!5750970 m!6700958))

(declare-fun m!6700960 () Bool)

(assert (=> b!5750991 m!6700960))

(declare-fun m!6700962 () Bool)

(assert (=> b!5750975 m!6700962))

(declare-fun m!6700964 () Bool)

(assert (=> b!5750975 m!6700964))

(declare-fun m!6700966 () Bool)

(assert (=> b!5750975 m!6700966))

(declare-fun m!6700968 () Bool)

(assert (=> b!5750982 m!6700968))

(declare-fun m!6700970 () Bool)

(assert (=> b!5750982 m!6700970))

(declare-fun m!6700972 () Bool)

(assert (=> b!5750982 m!6700972))

(declare-fun m!6700974 () Bool)

(assert (=> b!5750982 m!6700974))

(declare-fun m!6700976 () Bool)

(assert (=> b!5750982 m!6700976))

(declare-fun m!6700978 () Bool)

(assert (=> setNonEmpty!38607 m!6700978))

(declare-fun m!6700980 () Bool)

(assert (=> b!5751003 m!6700980))

(declare-fun m!6700982 () Bool)

(assert (=> b!5751003 m!6700982))

(declare-fun m!6700984 () Bool)

(assert (=> b!5751003 m!6700984))

(declare-fun m!6700986 () Bool)

(assert (=> b!5751010 m!6700986))

(declare-fun m!6700988 () Bool)

(assert (=> b!5750974 m!6700988))

(declare-fun m!6700990 () Bool)

(assert (=> b!5750994 m!6700990))

(declare-fun m!6700992 () Bool)

(assert (=> b!5751013 m!6700992))

(declare-fun m!6700994 () Bool)

(assert (=> b!5751013 m!6700994))

(declare-fun m!6700996 () Bool)

(assert (=> b!5750993 m!6700996))

(assert (=> b!5750993 m!6700986))

(declare-fun m!6700998 () Bool)

(assert (=> b!5750993 m!6700998))

(declare-fun m!6701000 () Bool)

(assert (=> b!5751006 m!6701000))

(declare-fun m!6701002 () Bool)

(assert (=> b!5750989 m!6701002))

(assert (=> b!5751000 m!6700960))

(declare-fun m!6701004 () Bool)

(assert (=> b!5750980 m!6701004))

(declare-fun m!6701006 () Bool)

(assert (=> b!5750980 m!6701006))

(declare-fun m!6701008 () Bool)

(assert (=> b!5750980 m!6701008))

(declare-fun m!6701010 () Bool)

(assert (=> b!5750980 m!6701010))

(declare-fun m!6701012 () Bool)

(assert (=> b!5750980 m!6701012))

(declare-fun m!6701014 () Bool)

(assert (=> b!5750980 m!6701014))

(declare-fun m!6701016 () Bool)

(assert (=> b!5750980 m!6701016))

(declare-fun m!6701018 () Bool)

(assert (=> b!5750998 m!6701018))

(declare-fun m!6701020 () Bool)

(assert (=> b!5750998 m!6701020))

(declare-fun m!6701022 () Bool)

(assert (=> b!5750998 m!6701022))

(assert (=> b!5751009 m!6700960))

(declare-fun m!6701024 () Bool)

(assert (=> b!5750987 m!6701024))

(declare-fun m!6701026 () Bool)

(assert (=> start!591100 m!6701026))

(declare-fun m!6701028 () Bool)

(assert (=> b!5750992 m!6701028))

(declare-fun m!6701030 () Bool)

(assert (=> b!5750992 m!6701030))

(declare-fun m!6701032 () Bool)

(assert (=> b!5750992 m!6701032))

(declare-fun m!6701034 () Bool)

(assert (=> b!5750992 m!6701034))

(assert (=> b!5750992 m!6701028))

(declare-fun m!6701036 () Bool)

(assert (=> b!5750992 m!6701036))

(assert (=> b!5750992 m!6701030))

(declare-fun m!6701038 () Bool)

(assert (=> b!5750992 m!6701038))

(declare-fun m!6701040 () Bool)

(assert (=> b!5750999 m!6701040))

(declare-fun m!6701042 () Bool)

(assert (=> b!5750999 m!6701042))

(declare-fun m!6701044 () Bool)

(assert (=> b!5750999 m!6701044))

(declare-fun m!6701046 () Bool)

(assert (=> b!5750999 m!6701046))

(declare-fun m!6701048 () Bool)

(assert (=> b!5750984 m!6701048))

(declare-fun m!6701050 () Bool)

(assert (=> b!5751005 m!6701050))

(assert (=> b!5751005 m!6701050))

(declare-fun m!6701052 () Bool)

(assert (=> b!5751005 m!6701052))

(declare-fun m!6701054 () Bool)

(assert (=> b!5751012 m!6701054))

(declare-fun m!6701056 () Bool)

(assert (=> b!5750986 m!6701056))

(declare-fun m!6701058 () Bool)

(assert (=> b!5750981 m!6701058))

(declare-fun m!6701060 () Bool)

(assert (=> b!5750981 m!6701060))

(declare-fun m!6701062 () Bool)

(assert (=> b!5750981 m!6701062))

(declare-fun m!6701064 () Bool)

(assert (=> b!5750981 m!6701064))

(declare-fun m!6701066 () Bool)

(assert (=> b!5750981 m!6701066))

(declare-fun m!6701068 () Bool)

(assert (=> b!5750981 m!6701068))

(declare-fun m!6701070 () Bool)

(assert (=> b!5750981 m!6701070))

(declare-fun m!6701072 () Bool)

(assert (=> b!5750981 m!6701072))

(declare-fun m!6701074 () Bool)

(assert (=> b!5750981 m!6701074))

(declare-fun m!6701076 () Bool)

(assert (=> b!5750977 m!6701076))

(declare-fun m!6701078 () Bool)

(assert (=> b!5750988 m!6701078))

(assert (=> b!5750988 m!6701014))

(declare-fun m!6701080 () Bool)

(assert (=> b!5750988 m!6701080))

(declare-fun m!6701082 () Bool)

(assert (=> b!5750988 m!6701082))

(declare-fun m!6701084 () Bool)

(assert (=> b!5750988 m!6701084))

(declare-fun m!6701086 () Bool)

(assert (=> b!5751008 m!6701086))

(declare-fun m!6701088 () Bool)

(assert (=> b!5751001 m!6701088))

(check-sat tp_is_empty!40775 (not b!5750974) (not b!5751000) (not b!5750998) (not b!5750971) (not b!5751009) (not b!5750982) (not b!5750989) (not b!5750988) (not b!5751002) (not setNonEmpty!38607) (not b!5751013) (not b!5751006) (not b!5750981) (not b!5750992) (not start!591100) (not b!5750978) (not b!5751004) (not b!5750980) (not b!5750975) (not b!5751005) (not b!5750984) (not b!5750987) (not b!5750986) (not b!5751012) (not b!5751007) (not b!5751010) (not b!5751001) (not b!5751003) (not b!5750993) (not b!5751011) (not b!5750991) (not b!5751008) (not b!5750994) (not b!5750999) (not b!5750977) (not b!5750970))
(check-sat)
(get-model)

(declare-fun d!1812592 () Bool)

(declare-fun lt!2287376 () Regex!15761)

(assert (=> d!1812592 (validRegex!7497 lt!2287376)))

(assert (=> d!1812592 (= lt!2287376 (generalisedUnion!1624 (unfocusZipperList!1189 (Cons!63460 lt!2287277 Nil!63460))))))

(assert (=> d!1812592 (= (unfocusZipper!1503 (Cons!63460 lt!2287277 Nil!63460)) lt!2287376)))

(declare-fun bs!1347217 () Bool)

(assert (= bs!1347217 d!1812592))

(declare-fun m!6701466 () Bool)

(assert (=> bs!1347217 m!6701466))

(declare-fun m!6701468 () Bool)

(assert (=> bs!1347217 m!6701468))

(assert (=> bs!1347217 m!6701468))

(declare-fun m!6701470 () Bool)

(assert (=> bs!1347217 m!6701470))

(assert (=> b!5750986 d!1812592))

(declare-fun d!1812594 () Bool)

(declare-fun c!1015982 () Bool)

(declare-fun isEmpty!35345 (List!63582) Bool)

(assert (=> d!1812594 (= c!1015982 (isEmpty!35345 s!2326))))

(declare-fun e!3534774 () Bool)

(assert (=> d!1812594 (= (matchZipper!1899 z!1189 s!2326) e!3534774)))

(declare-fun b!5751550 () Bool)

(declare-fun nullableZipper!1692 ((InoxSet Context!10290)) Bool)

(assert (=> b!5751550 (= e!3534774 (nullableZipper!1692 z!1189))))

(declare-fun b!5751551 () Bool)

(declare-fun head!12166 (List!63582) C!31792)

(declare-fun tail!11261 (List!63582) List!63582)

(assert (=> b!5751551 (= e!3534774 (matchZipper!1899 (derivationStepZipper!1844 z!1189 (head!12166 s!2326)) (tail!11261 s!2326)))))

(assert (= (and d!1812594 c!1015982) b!5751550))

(assert (= (and d!1812594 (not c!1015982)) b!5751551))

(declare-fun m!6701472 () Bool)

(assert (=> d!1812594 m!6701472))

(declare-fun m!6701474 () Bool)

(assert (=> b!5751550 m!6701474))

(declare-fun m!6701476 () Bool)

(assert (=> b!5751551 m!6701476))

(assert (=> b!5751551 m!6701476))

(declare-fun m!6701478 () Bool)

(assert (=> b!5751551 m!6701478))

(declare-fun m!6701480 () Bool)

(assert (=> b!5751551 m!6701480))

(assert (=> b!5751551 m!6701478))

(assert (=> b!5751551 m!6701480))

(declare-fun m!6701482 () Bool)

(assert (=> b!5751551 m!6701482))

(assert (=> b!5750987 d!1812594))

(declare-fun b!5751570 () Bool)

(declare-fun res!2428344 () Bool)

(declare-fun e!3534790 () Bool)

(assert (=> b!5751570 (=> (not res!2428344) (not e!3534790))))

(declare-fun call!440849 () Bool)

(assert (=> b!5751570 (= res!2428344 call!440849)))

(declare-fun e!3534793 () Bool)

(assert (=> b!5751570 (= e!3534793 e!3534790)))

(declare-fun b!5751571 () Bool)

(declare-fun call!440850 () Bool)

(assert (=> b!5751571 (= e!3534790 call!440850)))

(declare-fun b!5751572 () Bool)

(declare-fun e!3534792 () Bool)

(assert (=> b!5751572 (= e!3534792 call!440850)))

(declare-fun bm!440843 () Bool)

(declare-fun c!1015987 () Bool)

(declare-fun call!440848 () Bool)

(declare-fun c!1015988 () Bool)

(assert (=> bm!440843 (= call!440848 (validRegex!7497 (ite c!1015987 (reg!16090 r!7292) (ite c!1015988 (regTwo!32035 r!7292) (regTwo!32034 r!7292)))))))

(declare-fun b!5751573 () Bool)

(declare-fun e!3534795 () Bool)

(assert (=> b!5751573 (= e!3534795 call!440848)))

(declare-fun b!5751574 () Bool)

(declare-fun e!3534789 () Bool)

(assert (=> b!5751574 (= e!3534789 e!3534795)))

(declare-fun res!2428342 () Bool)

(assert (=> b!5751574 (= res!2428342 (not (nullable!5793 (reg!16090 r!7292))))))

(assert (=> b!5751574 (=> (not res!2428342) (not e!3534795))))

(declare-fun b!5751575 () Bool)

(declare-fun e!3534794 () Bool)

(assert (=> b!5751575 (= e!3534794 e!3534792)))

(declare-fun res!2428343 () Bool)

(assert (=> b!5751575 (=> (not res!2428343) (not e!3534792))))

(assert (=> b!5751575 (= res!2428343 call!440849)))

(declare-fun bm!440844 () Bool)

(assert (=> bm!440844 (= call!440849 (validRegex!7497 (ite c!1015988 (regOne!32035 r!7292) (regOne!32034 r!7292))))))

(declare-fun bm!440845 () Bool)

(assert (=> bm!440845 (= call!440850 call!440848)))

(declare-fun b!5751577 () Bool)

(declare-fun e!3534791 () Bool)

(assert (=> b!5751577 (= e!3534791 e!3534789)))

(assert (=> b!5751577 (= c!1015987 ((_ is Star!15761) r!7292))))

(declare-fun b!5751578 () Bool)

(declare-fun res!2428345 () Bool)

(assert (=> b!5751578 (=> res!2428345 e!3534794)))

(assert (=> b!5751578 (= res!2428345 (not ((_ is Concat!24606) r!7292)))))

(assert (=> b!5751578 (= e!3534793 e!3534794)))

(declare-fun d!1812596 () Bool)

(declare-fun res!2428346 () Bool)

(assert (=> d!1812596 (=> res!2428346 e!3534791)))

(assert (=> d!1812596 (= res!2428346 ((_ is ElementMatch!15761) r!7292))))

(assert (=> d!1812596 (= (validRegex!7497 r!7292) e!3534791)))

(declare-fun b!5751576 () Bool)

(assert (=> b!5751576 (= e!3534789 e!3534793)))

(assert (=> b!5751576 (= c!1015988 ((_ is Union!15761) r!7292))))

(assert (= (and d!1812596 (not res!2428346)) b!5751577))

(assert (= (and b!5751577 c!1015987) b!5751574))

(assert (= (and b!5751577 (not c!1015987)) b!5751576))

(assert (= (and b!5751574 res!2428342) b!5751573))

(assert (= (and b!5751576 c!1015988) b!5751570))

(assert (= (and b!5751576 (not c!1015988)) b!5751578))

(assert (= (and b!5751570 res!2428344) b!5751571))

(assert (= (and b!5751578 (not res!2428345)) b!5751575))

(assert (= (and b!5751575 res!2428343) b!5751572))

(assert (= (or b!5751571 b!5751572) bm!440845))

(assert (= (or b!5751570 b!5751575) bm!440844))

(assert (= (or b!5751573 bm!440845) bm!440843))

(declare-fun m!6701484 () Bool)

(assert (=> bm!440843 m!6701484))

(declare-fun m!6701486 () Bool)

(assert (=> b!5751574 m!6701486))

(declare-fun m!6701488 () Bool)

(assert (=> bm!440844 m!6701488))

(assert (=> start!591100 d!1812596))

(declare-fun d!1812598 () Bool)

(assert (=> d!1812598 (= (isEmpty!35342 (t!376913 (exprs!5645 (h!69908 zl!343)))) ((_ is Nil!63459) (t!376913 (exprs!5645 (h!69908 zl!343)))))))

(assert (=> b!5751006 d!1812598))

(declare-fun d!1812600 () Bool)

(declare-fun lambda!312091 () Int)

(declare-fun forall!14881 (List!63583 Int) Bool)

(assert (=> d!1812600 (= (inv!82649 setElem!38607) (forall!14881 (exprs!5645 setElem!38607) lambda!312091))))

(declare-fun bs!1347218 () Bool)

(assert (= bs!1347218 d!1812600))

(declare-fun m!6701490 () Bool)

(assert (=> bs!1347218 m!6701490))

(assert (=> setNonEmpty!38607 d!1812600))

(declare-fun bs!1347219 () Bool)

(declare-fun d!1812602 () Bool)

(assert (= bs!1347219 (and d!1812602 d!1812600)))

(declare-fun lambda!312094 () Int)

(assert (=> bs!1347219 (= lambda!312094 lambda!312091)))

(declare-fun b!5751599 () Bool)

(declare-fun e!3534812 () Regex!15761)

(declare-fun e!3534811 () Regex!15761)

(assert (=> b!5751599 (= e!3534812 e!3534811)))

(declare-fun c!1015998 () Bool)

(assert (=> b!5751599 (= c!1015998 ((_ is Cons!63459) (unfocusZipperList!1189 zl!343)))))

(declare-fun b!5751600 () Bool)

(declare-fun e!3534809 () Bool)

(declare-fun lt!2287379 () Regex!15761)

(declare-fun isUnion!691 (Regex!15761) Bool)

(assert (=> b!5751600 (= e!3534809 (isUnion!691 lt!2287379))))

(declare-fun b!5751601 () Bool)

(assert (=> b!5751601 (= e!3534812 (h!69907 (unfocusZipperList!1189 zl!343)))))

(declare-fun e!3534808 () Bool)

(assert (=> d!1812602 e!3534808))

(declare-fun res!2428352 () Bool)

(assert (=> d!1812602 (=> (not res!2428352) (not e!3534808))))

(assert (=> d!1812602 (= res!2428352 (validRegex!7497 lt!2287379))))

(assert (=> d!1812602 (= lt!2287379 e!3534812)))

(declare-fun c!1016000 () Bool)

(declare-fun e!3534810 () Bool)

(assert (=> d!1812602 (= c!1016000 e!3534810)))

(declare-fun res!2428351 () Bool)

(assert (=> d!1812602 (=> (not res!2428351) (not e!3534810))))

(assert (=> d!1812602 (= res!2428351 ((_ is Cons!63459) (unfocusZipperList!1189 zl!343)))))

(assert (=> d!1812602 (forall!14881 (unfocusZipperList!1189 zl!343) lambda!312094)))

(assert (=> d!1812602 (= (generalisedUnion!1624 (unfocusZipperList!1189 zl!343)) lt!2287379)))

(declare-fun b!5751602 () Bool)

(declare-fun e!3534813 () Bool)

(assert (=> b!5751602 (= e!3534808 e!3534813)))

(declare-fun c!1015999 () Bool)

(assert (=> b!5751602 (= c!1015999 (isEmpty!35342 (unfocusZipperList!1189 zl!343)))))

(declare-fun b!5751603 () Bool)

(declare-fun head!12167 (List!63583) Regex!15761)

(assert (=> b!5751603 (= e!3534809 (= lt!2287379 (head!12167 (unfocusZipperList!1189 zl!343))))))

(declare-fun b!5751604 () Bool)

(assert (=> b!5751604 (= e!3534813 e!3534809)))

(declare-fun c!1015997 () Bool)

(declare-fun tail!11262 (List!63583) List!63583)

(assert (=> b!5751604 (= c!1015997 (isEmpty!35342 (tail!11262 (unfocusZipperList!1189 zl!343))))))

(declare-fun b!5751605 () Bool)

(declare-fun isEmptyLang!1261 (Regex!15761) Bool)

(assert (=> b!5751605 (= e!3534813 (isEmptyLang!1261 lt!2287379))))

(declare-fun b!5751606 () Bool)

(assert (=> b!5751606 (= e!3534811 EmptyLang!15761)))

(declare-fun b!5751607 () Bool)

(assert (=> b!5751607 (= e!3534810 (isEmpty!35342 (t!376913 (unfocusZipperList!1189 zl!343))))))

(declare-fun b!5751608 () Bool)

(assert (=> b!5751608 (= e!3534811 (Union!15761 (h!69907 (unfocusZipperList!1189 zl!343)) (generalisedUnion!1624 (t!376913 (unfocusZipperList!1189 zl!343)))))))

(assert (= (and d!1812602 res!2428351) b!5751607))

(assert (= (and d!1812602 c!1016000) b!5751601))

(assert (= (and d!1812602 (not c!1016000)) b!5751599))

(assert (= (and b!5751599 c!1015998) b!5751608))

(assert (= (and b!5751599 (not c!1015998)) b!5751606))

(assert (= (and d!1812602 res!2428352) b!5751602))

(assert (= (and b!5751602 c!1015999) b!5751605))

(assert (= (and b!5751602 (not c!1015999)) b!5751604))

(assert (= (and b!5751604 c!1015997) b!5751603))

(assert (= (and b!5751604 (not c!1015997)) b!5751600))

(assert (=> b!5751603 m!6701050))

(declare-fun m!6701492 () Bool)

(assert (=> b!5751603 m!6701492))

(assert (=> b!5751604 m!6701050))

(declare-fun m!6701494 () Bool)

(assert (=> b!5751604 m!6701494))

(assert (=> b!5751604 m!6701494))

(declare-fun m!6701496 () Bool)

(assert (=> b!5751604 m!6701496))

(declare-fun m!6701498 () Bool)

(assert (=> b!5751607 m!6701498))

(declare-fun m!6701500 () Bool)

(assert (=> d!1812602 m!6701500))

(assert (=> d!1812602 m!6701050))

(declare-fun m!6701502 () Bool)

(assert (=> d!1812602 m!6701502))

(declare-fun m!6701504 () Bool)

(assert (=> b!5751605 m!6701504))

(declare-fun m!6701506 () Bool)

(assert (=> b!5751608 m!6701506))

(declare-fun m!6701508 () Bool)

(assert (=> b!5751600 m!6701508))

(assert (=> b!5751602 m!6701050))

(declare-fun m!6701510 () Bool)

(assert (=> b!5751602 m!6701510))

(assert (=> b!5751005 d!1812602))

(declare-fun bs!1347220 () Bool)

(declare-fun d!1812604 () Bool)

(assert (= bs!1347220 (and d!1812604 d!1812600)))

(declare-fun lambda!312097 () Int)

(assert (=> bs!1347220 (= lambda!312097 lambda!312091)))

(declare-fun bs!1347221 () Bool)

(assert (= bs!1347221 (and d!1812604 d!1812602)))

(assert (=> bs!1347221 (= lambda!312097 lambda!312094)))

(declare-fun lt!2287382 () List!63583)

(assert (=> d!1812604 (forall!14881 lt!2287382 lambda!312097)))

(declare-fun e!3534816 () List!63583)

(assert (=> d!1812604 (= lt!2287382 e!3534816)))

(declare-fun c!1016003 () Bool)

(assert (=> d!1812604 (= c!1016003 ((_ is Cons!63460) zl!343))))

(assert (=> d!1812604 (= (unfocusZipperList!1189 zl!343) lt!2287382)))

(declare-fun b!5751613 () Bool)

(assert (=> b!5751613 (= e!3534816 (Cons!63459 (generalisedConcat!1376 (exprs!5645 (h!69908 zl!343))) (unfocusZipperList!1189 (t!376914 zl!343))))))

(declare-fun b!5751614 () Bool)

(assert (=> b!5751614 (= e!3534816 Nil!63459)))

(assert (= (and d!1812604 c!1016003) b!5751613))

(assert (= (and d!1812604 (not c!1016003)) b!5751614))

(declare-fun m!6701512 () Bool)

(assert (=> d!1812604 m!6701512))

(assert (=> b!5751613 m!6701054))

(declare-fun m!6701514 () Bool)

(assert (=> b!5751613 m!6701514))

(assert (=> b!5751005 d!1812604))

(declare-fun bs!1347222 () Bool)

(declare-fun d!1812606 () Bool)

(assert (= bs!1347222 (and d!1812606 d!1812600)))

(declare-fun lambda!312098 () Int)

(assert (=> bs!1347222 (= lambda!312098 lambda!312091)))

(declare-fun bs!1347223 () Bool)

(assert (= bs!1347223 (and d!1812606 d!1812602)))

(assert (=> bs!1347223 (= lambda!312098 lambda!312094)))

(declare-fun bs!1347224 () Bool)

(assert (= bs!1347224 (and d!1812606 d!1812604)))

(assert (=> bs!1347224 (= lambda!312098 lambda!312097)))

(assert (=> d!1812606 (= (inv!82649 (h!69908 zl!343)) (forall!14881 (exprs!5645 (h!69908 zl!343)) lambda!312098))))

(declare-fun bs!1347225 () Bool)

(assert (= bs!1347225 d!1812606))

(declare-fun m!6701516 () Bool)

(assert (=> bs!1347225 m!6701516))

(assert (=> b!5750984 d!1812606))

(declare-fun d!1812608 () Bool)

(declare-fun choose!43607 ((InoxSet Context!10290) Int) (InoxSet Context!10290))

(assert (=> d!1812608 (= (flatMap!1374 lt!2287280 lambda!312041) (choose!43607 lt!2287280 lambda!312041))))

(declare-fun bs!1347226 () Bool)

(assert (= bs!1347226 d!1812608))

(declare-fun m!6701518 () Bool)

(assert (=> bs!1347226 m!6701518))

(assert (=> b!5750982 d!1812608))

(declare-fun d!1812610 () Bool)

(declare-fun c!1016008 () Bool)

(declare-fun e!3534824 () Bool)

(assert (=> d!1812610 (= c!1016008 e!3534824)))

(declare-fun res!2428355 () Bool)

(assert (=> d!1812610 (=> (not res!2428355) (not e!3534824))))

(assert (=> d!1812610 (= res!2428355 ((_ is Cons!63459) (exprs!5645 lt!2287277)))))

(declare-fun e!3534825 () (InoxSet Context!10290))

(assert (=> d!1812610 (= (derivationStepZipperUp!1029 lt!2287277 (h!69906 s!2326)) e!3534825)))

(declare-fun bm!440848 () Bool)

(declare-fun call!440853 () (InoxSet Context!10290))

(assert (=> bm!440848 (= call!440853 (derivationStepZipperDown!1103 (h!69907 (exprs!5645 lt!2287277)) (Context!10291 (t!376913 (exprs!5645 lt!2287277))) (h!69906 s!2326)))))

(declare-fun b!5751625 () Bool)

(declare-fun e!3534823 () (InoxSet Context!10290))

(assert (=> b!5751625 (= e!3534823 ((as const (Array Context!10290 Bool)) false))))

(declare-fun b!5751626 () Bool)

(assert (=> b!5751626 (= e!3534823 call!440853)))

(declare-fun b!5751627 () Bool)

(assert (=> b!5751627 (= e!3534824 (nullable!5793 (h!69907 (exprs!5645 lt!2287277))))))

(declare-fun b!5751628 () Bool)

(assert (=> b!5751628 (= e!3534825 ((_ map or) call!440853 (derivationStepZipperUp!1029 (Context!10291 (t!376913 (exprs!5645 lt!2287277))) (h!69906 s!2326))))))

(declare-fun b!5751629 () Bool)

(assert (=> b!5751629 (= e!3534825 e!3534823)))

(declare-fun c!1016009 () Bool)

(assert (=> b!5751629 (= c!1016009 ((_ is Cons!63459) (exprs!5645 lt!2287277)))))

(assert (= (and d!1812610 res!2428355) b!5751627))

(assert (= (and d!1812610 c!1016008) b!5751628))

(assert (= (and d!1812610 (not c!1016008)) b!5751629))

(assert (= (and b!5751629 c!1016009) b!5751626))

(assert (= (and b!5751629 (not c!1016009)) b!5751625))

(assert (= (or b!5751628 b!5751626) bm!440848))

(declare-fun m!6701520 () Bool)

(assert (=> bm!440848 m!6701520))

(declare-fun m!6701522 () Bool)

(assert (=> b!5751627 m!6701522))

(declare-fun m!6701524 () Bool)

(assert (=> b!5751628 m!6701524))

(assert (=> b!5750982 d!1812610))

(declare-fun d!1812612 () Bool)

(declare-fun dynLambda!24837 (Int Context!10290) (InoxSet Context!10290))

(assert (=> d!1812612 (= (flatMap!1374 lt!2287280 lambda!312041) (dynLambda!24837 lambda!312041 lt!2287277))))

(declare-fun lt!2287385 () Unit!156576)

(declare-fun choose!43608 ((InoxSet Context!10290) Context!10290 Int) Unit!156576)

(assert (=> d!1812612 (= lt!2287385 (choose!43608 lt!2287280 lt!2287277 lambda!312041))))

(assert (=> d!1812612 (= lt!2287280 (store ((as const (Array Context!10290 Bool)) false) lt!2287277 true))))

(assert (=> d!1812612 (= (lemmaFlatMapOnSingletonSet!906 lt!2287280 lt!2287277 lambda!312041) lt!2287385)))

(declare-fun b_lambda!217243 () Bool)

(assert (=> (not b_lambda!217243) (not d!1812612)))

(declare-fun bs!1347227 () Bool)

(assert (= bs!1347227 d!1812612))

(assert (=> bs!1347227 m!6700974))

(declare-fun m!6701526 () Bool)

(assert (=> bs!1347227 m!6701526))

(declare-fun m!6701528 () Bool)

(assert (=> bs!1347227 m!6701528))

(assert (=> bs!1347227 m!6700976))

(assert (=> b!5750982 d!1812612))

(declare-fun bs!1347228 () Bool)

(declare-fun d!1812614 () Bool)

(assert (= bs!1347228 (and d!1812614 b!5750980)))

(declare-fun lambda!312101 () Int)

(assert (=> bs!1347228 (= lambda!312101 lambda!312041)))

(assert (=> d!1812614 true))

(assert (=> d!1812614 (= (derivationStepZipper!1844 lt!2287280 (h!69906 s!2326)) (flatMap!1374 lt!2287280 lambda!312101))))

(declare-fun bs!1347229 () Bool)

(assert (= bs!1347229 d!1812614))

(declare-fun m!6701530 () Bool)

(assert (=> bs!1347229 m!6701530))

(assert (=> b!5750982 d!1812614))

(declare-fun bs!1347230 () Bool)

(declare-fun d!1812616 () Bool)

(assert (= bs!1347230 (and d!1812616 d!1812600)))

(declare-fun lambda!312104 () Int)

(assert (=> bs!1347230 (= lambda!312104 lambda!312091)))

(declare-fun bs!1347231 () Bool)

(assert (= bs!1347231 (and d!1812616 d!1812602)))

(assert (=> bs!1347231 (= lambda!312104 lambda!312094)))

(declare-fun bs!1347232 () Bool)

(assert (= bs!1347232 (and d!1812616 d!1812604)))

(assert (=> bs!1347232 (= lambda!312104 lambda!312097)))

(declare-fun bs!1347233 () Bool)

(assert (= bs!1347233 (and d!1812616 d!1812606)))

(assert (=> bs!1347233 (= lambda!312104 lambda!312098)))

(declare-fun b!5751652 () Bool)

(declare-fun e!3534841 () Regex!15761)

(assert (=> b!5751652 (= e!3534841 (h!69907 (exprs!5645 (h!69908 zl!343))))))

(declare-fun b!5751653 () Bool)

(declare-fun e!3534839 () Bool)

(declare-fun e!3534840 () Bool)

(assert (=> b!5751653 (= e!3534839 e!3534840)))

(declare-fun c!1016021 () Bool)

(assert (=> b!5751653 (= c!1016021 (isEmpty!35342 (exprs!5645 (h!69908 zl!343))))))

(declare-fun b!5751654 () Bool)

(declare-fun lt!2287388 () Regex!15761)

(declare-fun isEmptyExpr!1251 (Regex!15761) Bool)

(assert (=> b!5751654 (= e!3534840 (isEmptyExpr!1251 lt!2287388))))

(declare-fun b!5751655 () Bool)

(declare-fun e!3534842 () Bool)

(assert (=> b!5751655 (= e!3534842 (= lt!2287388 (head!12167 (exprs!5645 (h!69908 zl!343)))))))

(declare-fun b!5751656 () Bool)

(declare-fun isConcat!774 (Regex!15761) Bool)

(assert (=> b!5751656 (= e!3534842 (isConcat!774 lt!2287388))))

(declare-fun b!5751657 () Bool)

(declare-fun e!3534838 () Regex!15761)

(assert (=> b!5751657 (= e!3534838 (Concat!24606 (h!69907 (exprs!5645 (h!69908 zl!343))) (generalisedConcat!1376 (t!376913 (exprs!5645 (h!69908 zl!343))))))))

(assert (=> d!1812616 e!3534839))

(declare-fun res!2428360 () Bool)

(assert (=> d!1812616 (=> (not res!2428360) (not e!3534839))))

(assert (=> d!1812616 (= res!2428360 (validRegex!7497 lt!2287388))))

(assert (=> d!1812616 (= lt!2287388 e!3534841)))

(declare-fun c!1016022 () Bool)

(declare-fun e!3534843 () Bool)

(assert (=> d!1812616 (= c!1016022 e!3534843)))

(declare-fun res!2428361 () Bool)

(assert (=> d!1812616 (=> (not res!2428361) (not e!3534843))))

(assert (=> d!1812616 (= res!2428361 ((_ is Cons!63459) (exprs!5645 (h!69908 zl!343))))))

(assert (=> d!1812616 (forall!14881 (exprs!5645 (h!69908 zl!343)) lambda!312104)))

(assert (=> d!1812616 (= (generalisedConcat!1376 (exprs!5645 (h!69908 zl!343))) lt!2287388)))

(declare-fun b!5751658 () Bool)

(assert (=> b!5751658 (= e!3534838 EmptyExpr!15761)))

(declare-fun b!5751659 () Bool)

(assert (=> b!5751659 (= e!3534840 e!3534842)))

(declare-fun c!1016020 () Bool)

(assert (=> b!5751659 (= c!1016020 (isEmpty!35342 (tail!11262 (exprs!5645 (h!69908 zl!343)))))))

(declare-fun b!5751660 () Bool)

(assert (=> b!5751660 (= e!3534843 (isEmpty!35342 (t!376913 (exprs!5645 (h!69908 zl!343)))))))

(declare-fun b!5751661 () Bool)

(assert (=> b!5751661 (= e!3534841 e!3534838)))

(declare-fun c!1016023 () Bool)

(assert (=> b!5751661 (= c!1016023 ((_ is Cons!63459) (exprs!5645 (h!69908 zl!343))))))

(assert (= (and d!1812616 res!2428361) b!5751660))

(assert (= (and d!1812616 c!1016022) b!5751652))

(assert (= (and d!1812616 (not c!1016022)) b!5751661))

(assert (= (and b!5751661 c!1016023) b!5751657))

(assert (= (and b!5751661 (not c!1016023)) b!5751658))

(assert (= (and d!1812616 res!2428360) b!5751653))

(assert (= (and b!5751653 c!1016021) b!5751654))

(assert (= (and b!5751653 (not c!1016021)) b!5751659))

(assert (= (and b!5751659 c!1016020) b!5751655))

(assert (= (and b!5751659 (not c!1016020)) b!5751656))

(assert (=> b!5751657 m!6701022))

(declare-fun m!6701532 () Bool)

(assert (=> b!5751659 m!6701532))

(assert (=> b!5751659 m!6701532))

(declare-fun m!6701534 () Bool)

(assert (=> b!5751659 m!6701534))

(declare-fun m!6701536 () Bool)

(assert (=> d!1812616 m!6701536))

(declare-fun m!6701538 () Bool)

(assert (=> d!1812616 m!6701538))

(declare-fun m!6701540 () Bool)

(assert (=> b!5751653 m!6701540))

(declare-fun m!6701542 () Bool)

(assert (=> b!5751655 m!6701542))

(declare-fun m!6701544 () Bool)

(assert (=> b!5751656 m!6701544))

(assert (=> b!5751660 m!6701000))

(declare-fun m!6701546 () Bool)

(assert (=> b!5751654 m!6701546))

(assert (=> b!5751012 d!1812616))

(declare-fun b!5751680 () Bool)

(declare-fun e!3534855 () Bool)

(assert (=> b!5751680 (= e!3534855 (matchR!7946 (regTwo!32034 r!7292) s!2326))))

(declare-fun b!5751681 () Bool)

(declare-fun e!3534856 () Bool)

(declare-fun lt!2287396 () Option!15770)

(assert (=> b!5751681 (= e!3534856 (not (isDefined!12473 lt!2287396)))))

(declare-fun b!5751682 () Bool)

(declare-fun e!3534857 () Option!15770)

(declare-fun e!3534858 () Option!15770)

(assert (=> b!5751682 (= e!3534857 e!3534858)))

(declare-fun c!1016029 () Bool)

(assert (=> b!5751682 (= c!1016029 ((_ is Nil!63458) s!2326))))

(declare-fun b!5751683 () Bool)

(declare-fun res!2428376 () Bool)

(declare-fun e!3534854 () Bool)

(assert (=> b!5751683 (=> (not res!2428376) (not e!3534854))))

(declare-fun get!21893 (Option!15770) tuple2!65716)

(assert (=> b!5751683 (= res!2428376 (matchR!7946 (regOne!32034 r!7292) (_1!36161 (get!21893 lt!2287396))))))

(declare-fun b!5751684 () Bool)

(assert (=> b!5751684 (= e!3534858 None!15769)))

(declare-fun d!1812618 () Bool)

(assert (=> d!1812618 e!3534856))

(declare-fun res!2428375 () Bool)

(assert (=> d!1812618 (=> res!2428375 e!3534856)))

(assert (=> d!1812618 (= res!2428375 e!3534854)))

(declare-fun res!2428373 () Bool)

(assert (=> d!1812618 (=> (not res!2428373) (not e!3534854))))

(assert (=> d!1812618 (= res!2428373 (isDefined!12473 lt!2287396))))

(assert (=> d!1812618 (= lt!2287396 e!3534857)))

(declare-fun c!1016028 () Bool)

(assert (=> d!1812618 (= c!1016028 e!3534855)))

(declare-fun res!2428372 () Bool)

(assert (=> d!1812618 (=> (not res!2428372) (not e!3534855))))

(assert (=> d!1812618 (= res!2428372 (matchR!7946 (regOne!32034 r!7292) Nil!63458))))

(assert (=> d!1812618 (validRegex!7497 (regOne!32034 r!7292))))

(assert (=> d!1812618 (= (findConcatSeparation!2184 (regOne!32034 r!7292) (regTwo!32034 r!7292) Nil!63458 s!2326 s!2326) lt!2287396)))

(declare-fun b!5751685 () Bool)

(declare-fun lt!2287397 () Unit!156576)

(declare-fun lt!2287395 () Unit!156576)

(assert (=> b!5751685 (= lt!2287397 lt!2287395)))

(declare-fun ++!13979 (List!63582 List!63582) List!63582)

(assert (=> b!5751685 (= (++!13979 (++!13979 Nil!63458 (Cons!63458 (h!69906 s!2326) Nil!63458)) (t!376912 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2096 (List!63582 C!31792 List!63582 List!63582) Unit!156576)

(assert (=> b!5751685 (= lt!2287395 (lemmaMoveElementToOtherListKeepsConcatEq!2096 Nil!63458 (h!69906 s!2326) (t!376912 s!2326) s!2326))))

(assert (=> b!5751685 (= e!3534858 (findConcatSeparation!2184 (regOne!32034 r!7292) (regTwo!32034 r!7292) (++!13979 Nil!63458 (Cons!63458 (h!69906 s!2326) Nil!63458)) (t!376912 s!2326) s!2326))))

(declare-fun b!5751686 () Bool)

(assert (=> b!5751686 (= e!3534854 (= (++!13979 (_1!36161 (get!21893 lt!2287396)) (_2!36161 (get!21893 lt!2287396))) s!2326))))

(declare-fun b!5751687 () Bool)

(assert (=> b!5751687 (= e!3534857 (Some!15769 (tuple2!65717 Nil!63458 s!2326)))))

(declare-fun b!5751688 () Bool)

(declare-fun res!2428374 () Bool)

(assert (=> b!5751688 (=> (not res!2428374) (not e!3534854))))

(assert (=> b!5751688 (= res!2428374 (matchR!7946 (regTwo!32034 r!7292) (_2!36161 (get!21893 lt!2287396))))))

(assert (= (and d!1812618 res!2428372) b!5751680))

(assert (= (and d!1812618 c!1016028) b!5751687))

(assert (= (and d!1812618 (not c!1016028)) b!5751682))

(assert (= (and b!5751682 c!1016029) b!5751684))

(assert (= (and b!5751682 (not c!1016029)) b!5751685))

(assert (= (and d!1812618 res!2428373) b!5751683))

(assert (= (and b!5751683 res!2428376) b!5751688))

(assert (= (and b!5751688 res!2428374) b!5751686))

(assert (= (and d!1812618 (not res!2428375)) b!5751681))

(declare-fun m!6701548 () Bool)

(assert (=> b!5751686 m!6701548))

(declare-fun m!6701550 () Bool)

(assert (=> b!5751686 m!6701550))

(declare-fun m!6701552 () Bool)

(assert (=> b!5751685 m!6701552))

(assert (=> b!5751685 m!6701552))

(declare-fun m!6701554 () Bool)

(assert (=> b!5751685 m!6701554))

(declare-fun m!6701556 () Bool)

(assert (=> b!5751685 m!6701556))

(assert (=> b!5751685 m!6701552))

(declare-fun m!6701558 () Bool)

(assert (=> b!5751685 m!6701558))

(assert (=> b!5751683 m!6701548))

(declare-fun m!6701560 () Bool)

(assert (=> b!5751683 m!6701560))

(assert (=> b!5751688 m!6701548))

(declare-fun m!6701562 () Bool)

(assert (=> b!5751688 m!6701562))

(declare-fun m!6701564 () Bool)

(assert (=> b!5751681 m!6701564))

(assert (=> d!1812618 m!6701564))

(declare-fun m!6701566 () Bool)

(assert (=> d!1812618 m!6701566))

(declare-fun m!6701568 () Bool)

(assert (=> d!1812618 m!6701568))

(assert (=> b!5751680 m!6701040))

(assert (=> b!5750992 d!1812618))

(declare-fun d!1812620 () Bool)

(declare-fun choose!43609 (Int) Bool)

(assert (=> d!1812620 (= (Exists!2861 lambda!312040) (choose!43609 lambda!312040))))

(declare-fun bs!1347234 () Bool)

(assert (= bs!1347234 d!1812620))

(declare-fun m!6701570 () Bool)

(assert (=> bs!1347234 m!6701570))

(assert (=> b!5750992 d!1812620))

(declare-fun d!1812622 () Bool)

(assert (=> d!1812622 (= (Exists!2861 lambda!312039) (choose!43609 lambda!312039))))

(declare-fun bs!1347235 () Bool)

(assert (= bs!1347235 d!1812622))

(declare-fun m!6701572 () Bool)

(assert (=> bs!1347235 m!6701572))

(assert (=> b!5750992 d!1812622))

(declare-fun bs!1347236 () Bool)

(declare-fun d!1812624 () Bool)

(assert (= bs!1347236 (and d!1812624 b!5750992)))

(declare-fun lambda!312107 () Int)

(assert (=> bs!1347236 (= lambda!312107 lambda!312039)))

(assert (=> bs!1347236 (not (= lambda!312107 lambda!312040))))

(assert (=> d!1812624 true))

(assert (=> d!1812624 true))

(assert (=> d!1812624 true))

(assert (=> d!1812624 (= (isDefined!12473 (findConcatSeparation!2184 (regOne!32034 r!7292) (regTwo!32034 r!7292) Nil!63458 s!2326 s!2326)) (Exists!2861 lambda!312107))))

(declare-fun lt!2287400 () Unit!156576)

(declare-fun choose!43610 (Regex!15761 Regex!15761 List!63582) Unit!156576)

(assert (=> d!1812624 (= lt!2287400 (choose!43610 (regOne!32034 r!7292) (regTwo!32034 r!7292) s!2326))))

(assert (=> d!1812624 (validRegex!7497 (regOne!32034 r!7292))))

(assert (=> d!1812624 (= (lemmaFindConcatSeparationEquivalentToExists!1948 (regOne!32034 r!7292) (regTwo!32034 r!7292) s!2326) lt!2287400)))

(declare-fun bs!1347237 () Bool)

(assert (= bs!1347237 d!1812624))

(declare-fun m!6701574 () Bool)

(assert (=> bs!1347237 m!6701574))

(declare-fun m!6701576 () Bool)

(assert (=> bs!1347237 m!6701576))

(assert (=> bs!1347237 m!6701030))

(assert (=> bs!1347237 m!6701032))

(assert (=> bs!1347237 m!6701568))

(assert (=> bs!1347237 m!6701030))

(assert (=> b!5750992 d!1812624))

(declare-fun bs!1347238 () Bool)

(declare-fun d!1812626 () Bool)

(assert (= bs!1347238 (and d!1812626 b!5750992)))

(declare-fun lambda!312112 () Int)

(assert (=> bs!1347238 (= lambda!312112 lambda!312039)))

(assert (=> bs!1347238 (not (= lambda!312112 lambda!312040))))

(declare-fun bs!1347239 () Bool)

(assert (= bs!1347239 (and d!1812626 d!1812624)))

(assert (=> bs!1347239 (= lambda!312112 lambda!312107)))

(assert (=> d!1812626 true))

(assert (=> d!1812626 true))

(assert (=> d!1812626 true))

(declare-fun lambda!312113 () Int)

(assert (=> bs!1347238 (not (= lambda!312113 lambda!312039))))

(assert (=> bs!1347238 (= lambda!312113 lambda!312040)))

(assert (=> bs!1347239 (not (= lambda!312113 lambda!312107))))

(declare-fun bs!1347240 () Bool)

(assert (= bs!1347240 d!1812626))

(assert (=> bs!1347240 (not (= lambda!312113 lambda!312112))))

(assert (=> d!1812626 true))

(assert (=> d!1812626 true))

(assert (=> d!1812626 true))

(assert (=> d!1812626 (= (Exists!2861 lambda!312112) (Exists!2861 lambda!312113))))

(declare-fun lt!2287403 () Unit!156576)

(declare-fun choose!43611 (Regex!15761 Regex!15761 List!63582) Unit!156576)

(assert (=> d!1812626 (= lt!2287403 (choose!43611 (regOne!32034 r!7292) (regTwo!32034 r!7292) s!2326))))

(assert (=> d!1812626 (validRegex!7497 (regOne!32034 r!7292))))

(assert (=> d!1812626 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1490 (regOne!32034 r!7292) (regTwo!32034 r!7292) s!2326) lt!2287403)))

(declare-fun m!6701578 () Bool)

(assert (=> bs!1347240 m!6701578))

(declare-fun m!6701580 () Bool)

(assert (=> bs!1347240 m!6701580))

(declare-fun m!6701582 () Bool)

(assert (=> bs!1347240 m!6701582))

(assert (=> bs!1347240 m!6701568))

(assert (=> b!5750992 d!1812626))

(declare-fun d!1812628 () Bool)

(declare-fun isEmpty!35346 (Option!15770) Bool)

(assert (=> d!1812628 (= (isDefined!12473 (findConcatSeparation!2184 (regOne!32034 r!7292) (regTwo!32034 r!7292) Nil!63458 s!2326 s!2326)) (not (isEmpty!35346 (findConcatSeparation!2184 (regOne!32034 r!7292) (regTwo!32034 r!7292) Nil!63458 s!2326 s!2326))))))

(declare-fun bs!1347241 () Bool)

(assert (= bs!1347241 d!1812628))

(assert (=> bs!1347241 m!6701030))

(declare-fun m!6701584 () Bool)

(assert (=> bs!1347241 m!6701584))

(assert (=> b!5750992 d!1812628))

(declare-fun d!1812630 () Bool)

(declare-fun c!1016030 () Bool)

(assert (=> d!1812630 (= c!1016030 (isEmpty!35345 s!2326))))

(declare-fun e!3534865 () Bool)

(assert (=> d!1812630 (= (matchZipper!1899 lt!2287280 s!2326) e!3534865)))

(declare-fun b!5751701 () Bool)

(assert (=> b!5751701 (= e!3534865 (nullableZipper!1692 lt!2287280))))

(declare-fun b!5751702 () Bool)

(assert (=> b!5751702 (= e!3534865 (matchZipper!1899 (derivationStepZipper!1844 lt!2287280 (head!12166 s!2326)) (tail!11261 s!2326)))))

(assert (= (and d!1812630 c!1016030) b!5751701))

(assert (= (and d!1812630 (not c!1016030)) b!5751702))

(assert (=> d!1812630 m!6701472))

(declare-fun m!6701586 () Bool)

(assert (=> b!5751701 m!6701586))

(assert (=> b!5751702 m!6701476))

(assert (=> b!5751702 m!6701476))

(declare-fun m!6701588 () Bool)

(assert (=> b!5751702 m!6701588))

(assert (=> b!5751702 m!6701480))

(assert (=> b!5751702 m!6701588))

(assert (=> b!5751702 m!6701480))

(declare-fun m!6701590 () Bool)

(assert (=> b!5751702 m!6701590))

(assert (=> b!5750970 d!1812630))

(declare-fun d!1812632 () Bool)

(declare-fun c!1016031 () Bool)

(assert (=> d!1812632 (= c!1016031 (isEmpty!35345 (t!376912 s!2326)))))

(declare-fun e!3534866 () Bool)

(assert (=> d!1812632 (= (matchZipper!1899 lt!2287286 (t!376912 s!2326)) e!3534866)))

(declare-fun b!5751703 () Bool)

(assert (=> b!5751703 (= e!3534866 (nullableZipper!1692 lt!2287286))))

(declare-fun b!5751704 () Bool)

(assert (=> b!5751704 (= e!3534866 (matchZipper!1899 (derivationStepZipper!1844 lt!2287286 (head!12166 (t!376912 s!2326))) (tail!11261 (t!376912 s!2326))))))

(assert (= (and d!1812632 c!1016031) b!5751703))

(assert (= (and d!1812632 (not c!1016031)) b!5751704))

(declare-fun m!6701592 () Bool)

(assert (=> d!1812632 m!6701592))

(declare-fun m!6701594 () Bool)

(assert (=> b!5751703 m!6701594))

(declare-fun m!6701596 () Bool)

(assert (=> b!5751704 m!6701596))

(assert (=> b!5751704 m!6701596))

(declare-fun m!6701598 () Bool)

(assert (=> b!5751704 m!6701598))

(declare-fun m!6701600 () Bool)

(assert (=> b!5751704 m!6701600))

(assert (=> b!5751704 m!6701598))

(assert (=> b!5751704 m!6701600))

(declare-fun m!6701602 () Bool)

(assert (=> b!5751704 m!6701602))

(assert (=> b!5750970 d!1812632))

(declare-fun d!1812634 () Bool)

(declare-fun c!1016032 () Bool)

(assert (=> d!1812634 (= c!1016032 (isEmpty!35345 (t!376912 s!2326)))))

(declare-fun e!3534867 () Bool)

(assert (=> d!1812634 (= (matchZipper!1899 lt!2287265 (t!376912 s!2326)) e!3534867)))

(declare-fun b!5751705 () Bool)

(assert (=> b!5751705 (= e!3534867 (nullableZipper!1692 lt!2287265))))

(declare-fun b!5751706 () Bool)

(assert (=> b!5751706 (= e!3534867 (matchZipper!1899 (derivationStepZipper!1844 lt!2287265 (head!12166 (t!376912 s!2326))) (tail!11261 (t!376912 s!2326))))))

(assert (= (and d!1812634 c!1016032) b!5751705))

(assert (= (and d!1812634 (not c!1016032)) b!5751706))

(assert (=> d!1812634 m!6701592))

(declare-fun m!6701604 () Bool)

(assert (=> b!5751705 m!6701604))

(assert (=> b!5751706 m!6701596))

(assert (=> b!5751706 m!6701596))

(declare-fun m!6701606 () Bool)

(assert (=> b!5751706 m!6701606))

(assert (=> b!5751706 m!6701600))

(assert (=> b!5751706 m!6701606))

(assert (=> b!5751706 m!6701600))

(declare-fun m!6701608 () Bool)

(assert (=> b!5751706 m!6701608))

(assert (=> b!5750991 d!1812634))

(declare-fun d!1812636 () Bool)

(assert (=> d!1812636 (= (isEmpty!35341 (t!376914 zl!343)) ((_ is Nil!63460) (t!376914 zl!343)))))

(assert (=> b!5750989 d!1812636))

(assert (=> b!5751009 d!1812634))

(declare-fun d!1812638 () Bool)

(declare-fun c!1016033 () Bool)

(assert (=> d!1812638 (= c!1016033 (isEmpty!35345 (t!376912 s!2326)))))

(declare-fun e!3534868 () Bool)

(assert (=> d!1812638 (= (matchZipper!1899 lt!2287262 (t!376912 s!2326)) e!3534868)))

(declare-fun b!5751707 () Bool)

(assert (=> b!5751707 (= e!3534868 (nullableZipper!1692 lt!2287262))))

(declare-fun b!5751708 () Bool)

(assert (=> b!5751708 (= e!3534868 (matchZipper!1899 (derivationStepZipper!1844 lt!2287262 (head!12166 (t!376912 s!2326))) (tail!11261 (t!376912 s!2326))))))

(assert (= (and d!1812638 c!1016033) b!5751707))

(assert (= (and d!1812638 (not c!1016033)) b!5751708))

(assert (=> d!1812638 m!6701592))

(declare-fun m!6701610 () Bool)

(assert (=> b!5751707 m!6701610))

(assert (=> b!5751708 m!6701596))

(assert (=> b!5751708 m!6701596))

(declare-fun m!6701612 () Bool)

(assert (=> b!5751708 m!6701612))

(assert (=> b!5751708 m!6701600))

(assert (=> b!5751708 m!6701612))

(assert (=> b!5751708 m!6701600))

(declare-fun m!6701614 () Bool)

(assert (=> b!5751708 m!6701614))

(assert (=> b!5751010 d!1812638))

(declare-fun d!1812640 () Bool)

(declare-fun nullableFct!1838 (Regex!15761) Bool)

(assert (=> d!1812640 (= (nullable!5793 (regOne!32034 (regOne!32034 r!7292))) (nullableFct!1838 (regOne!32034 (regOne!32034 r!7292))))))

(declare-fun bs!1347242 () Bool)

(assert (= bs!1347242 d!1812640))

(declare-fun m!6701616 () Bool)

(assert (=> bs!1347242 m!6701616))

(assert (=> b!5751008 d!1812640))

(declare-fun bs!1347243 () Bool)

(declare-fun d!1812642 () Bool)

(assert (= bs!1347243 (and d!1812642 b!5750980)))

(declare-fun lambda!312114 () Int)

(assert (=> bs!1347243 (= lambda!312114 lambda!312041)))

(declare-fun bs!1347244 () Bool)

(assert (= bs!1347244 (and d!1812642 d!1812614)))

(assert (=> bs!1347244 (= lambda!312114 lambda!312101)))

(assert (=> d!1812642 true))

(assert (=> d!1812642 (= (derivationStepZipper!1844 lt!2287285 (h!69906 s!2326)) (flatMap!1374 lt!2287285 lambda!312114))))

(declare-fun bs!1347245 () Bool)

(assert (= bs!1347245 d!1812642))

(declare-fun m!6701618 () Bool)

(assert (=> bs!1347245 m!6701618))

(assert (=> b!5750988 d!1812642))

(declare-fun d!1812644 () Bool)

(assert (=> d!1812644 (= (flatMap!1374 lt!2287285 lambda!312041) (choose!43607 lt!2287285 lambda!312041))))

(declare-fun bs!1347246 () Bool)

(assert (= bs!1347246 d!1812644))

(declare-fun m!6701620 () Bool)

(assert (=> bs!1347246 m!6701620))

(assert (=> b!5750988 d!1812644))

(declare-fun d!1812646 () Bool)

(declare-fun c!1016034 () Bool)

(declare-fun e!3534870 () Bool)

(assert (=> d!1812646 (= c!1016034 e!3534870)))

(declare-fun res!2428389 () Bool)

(assert (=> d!1812646 (=> (not res!2428389) (not e!3534870))))

(assert (=> d!1812646 (= res!2428389 ((_ is Cons!63459) (exprs!5645 lt!2287276)))))

(declare-fun e!3534871 () (InoxSet Context!10290))

(assert (=> d!1812646 (= (derivationStepZipperUp!1029 lt!2287276 (h!69906 s!2326)) e!3534871)))

(declare-fun bm!440849 () Bool)

(declare-fun call!440854 () (InoxSet Context!10290))

(assert (=> bm!440849 (= call!440854 (derivationStepZipperDown!1103 (h!69907 (exprs!5645 lt!2287276)) (Context!10291 (t!376913 (exprs!5645 lt!2287276))) (h!69906 s!2326)))))

(declare-fun b!5751709 () Bool)

(declare-fun e!3534869 () (InoxSet Context!10290))

(assert (=> b!5751709 (= e!3534869 ((as const (Array Context!10290 Bool)) false))))

(declare-fun b!5751710 () Bool)

(assert (=> b!5751710 (= e!3534869 call!440854)))

(declare-fun b!5751711 () Bool)

(assert (=> b!5751711 (= e!3534870 (nullable!5793 (h!69907 (exprs!5645 lt!2287276))))))

(declare-fun b!5751712 () Bool)

(assert (=> b!5751712 (= e!3534871 ((_ map or) call!440854 (derivationStepZipperUp!1029 (Context!10291 (t!376913 (exprs!5645 lt!2287276))) (h!69906 s!2326))))))

(declare-fun b!5751713 () Bool)

(assert (=> b!5751713 (= e!3534871 e!3534869)))

(declare-fun c!1016035 () Bool)

(assert (=> b!5751713 (= c!1016035 ((_ is Cons!63459) (exprs!5645 lt!2287276)))))

(assert (= (and d!1812646 res!2428389) b!5751711))

(assert (= (and d!1812646 c!1016034) b!5751712))

(assert (= (and d!1812646 (not c!1016034)) b!5751713))

(assert (= (and b!5751713 c!1016035) b!5751710))

(assert (= (and b!5751713 (not c!1016035)) b!5751709))

(assert (= (or b!5751712 b!5751710) bm!440849))

(declare-fun m!6701622 () Bool)

(assert (=> bm!440849 m!6701622))

(declare-fun m!6701624 () Bool)

(assert (=> b!5751711 m!6701624))

(declare-fun m!6701626 () Bool)

(assert (=> b!5751712 m!6701626))

(assert (=> b!5750988 d!1812646))

(declare-fun d!1812648 () Bool)

(assert (=> d!1812648 (= (flatMap!1374 lt!2287285 lambda!312041) (dynLambda!24837 lambda!312041 lt!2287276))))

(declare-fun lt!2287404 () Unit!156576)

(assert (=> d!1812648 (= lt!2287404 (choose!43608 lt!2287285 lt!2287276 lambda!312041))))

(assert (=> d!1812648 (= lt!2287285 (store ((as const (Array Context!10290 Bool)) false) lt!2287276 true))))

(assert (=> d!1812648 (= (lemmaFlatMapOnSingletonSet!906 lt!2287285 lt!2287276 lambda!312041) lt!2287404)))

(declare-fun b_lambda!217245 () Bool)

(assert (=> (not b_lambda!217245) (not d!1812648)))

(declare-fun bs!1347247 () Bool)

(assert (= bs!1347247 d!1812648))

(assert (=> bs!1347247 m!6701078))

(declare-fun m!6701628 () Bool)

(assert (=> bs!1347247 m!6701628))

(declare-fun m!6701630 () Bool)

(assert (=> bs!1347247 m!6701630))

(assert (=> bs!1347247 m!6701084))

(assert (=> b!5750988 d!1812648))

(declare-fun d!1812650 () Bool)

(declare-fun c!1016046 () Bool)

(assert (=> d!1812650 (= c!1016046 (and ((_ is ElementMatch!15761) (reg!16090 (regOne!32034 r!7292))) (= (c!1015817 (reg!16090 (regOne!32034 r!7292))) (h!69906 s!2326))))))

(declare-fun e!3534886 () (InoxSet Context!10290))

(assert (=> d!1812650 (= (derivationStepZipperDown!1103 (reg!16090 (regOne!32034 r!7292)) lt!2287270 (h!69906 s!2326)) e!3534886)))

(declare-fun b!5751736 () Bool)

(declare-fun e!3534884 () Bool)

(assert (=> b!5751736 (= e!3534884 (nullable!5793 (regOne!32034 (reg!16090 (regOne!32034 r!7292)))))))

(declare-fun bm!440862 () Bool)

(declare-fun c!1016047 () Bool)

(declare-fun call!440867 () List!63583)

(declare-fun c!1016048 () Bool)

(declare-fun $colon$colon!1760 (List!63583 Regex!15761) List!63583)

(assert (=> bm!440862 (= call!440867 ($colon$colon!1760 (exprs!5645 lt!2287270) (ite (or c!1016047 c!1016048) (regTwo!32034 (reg!16090 (regOne!32034 r!7292))) (reg!16090 (regOne!32034 r!7292)))))))

(declare-fun bm!440863 () Bool)

(declare-fun call!440870 () (InoxSet Context!10290))

(declare-fun call!440869 () (InoxSet Context!10290))

(assert (=> bm!440863 (= call!440870 call!440869)))

(declare-fun bm!440864 () Bool)

(declare-fun call!440871 () (InoxSet Context!10290))

(assert (=> bm!440864 (= call!440871 call!440870)))

(declare-fun c!1016050 () Bool)

(declare-fun bm!440865 () Bool)

(declare-fun call!440868 () (InoxSet Context!10290))

(assert (=> bm!440865 (= call!440868 (derivationStepZipperDown!1103 (ite c!1016050 (regOne!32035 (reg!16090 (regOne!32034 r!7292))) (regOne!32034 (reg!16090 (regOne!32034 r!7292)))) (ite c!1016050 lt!2287270 (Context!10291 call!440867)) (h!69906 s!2326)))))

(declare-fun b!5751737 () Bool)

(declare-fun e!3534889 () (InoxSet Context!10290))

(assert (=> b!5751737 (= e!3534889 ((as const (Array Context!10290 Bool)) false))))

(declare-fun bm!440866 () Bool)

(declare-fun call!440872 () List!63583)

(assert (=> bm!440866 (= call!440872 call!440867)))

(declare-fun b!5751738 () Bool)

(declare-fun c!1016049 () Bool)

(assert (=> b!5751738 (= c!1016049 ((_ is Star!15761) (reg!16090 (regOne!32034 r!7292))))))

(declare-fun e!3534887 () (InoxSet Context!10290))

(assert (=> b!5751738 (= e!3534887 e!3534889)))

(declare-fun b!5751739 () Bool)

(declare-fun e!3534888 () (InoxSet Context!10290))

(assert (=> b!5751739 (= e!3534888 ((_ map or) call!440868 call!440869))))

(declare-fun b!5751740 () Bool)

(assert (=> b!5751740 (= e!3534889 call!440871)))

(declare-fun b!5751741 () Bool)

(assert (=> b!5751741 (= e!3534886 e!3534888)))

(assert (=> b!5751741 (= c!1016050 ((_ is Union!15761) (reg!16090 (regOne!32034 r!7292))))))

(declare-fun b!5751742 () Bool)

(assert (=> b!5751742 (= e!3534886 (store ((as const (Array Context!10290 Bool)) false) lt!2287270 true))))

(declare-fun b!5751743 () Bool)

(assert (=> b!5751743 (= c!1016047 e!3534884)))

(declare-fun res!2428392 () Bool)

(assert (=> b!5751743 (=> (not res!2428392) (not e!3534884))))

(assert (=> b!5751743 (= res!2428392 ((_ is Concat!24606) (reg!16090 (regOne!32034 r!7292))))))

(declare-fun e!3534885 () (InoxSet Context!10290))

(assert (=> b!5751743 (= e!3534888 e!3534885)))

(declare-fun b!5751744 () Bool)

(assert (=> b!5751744 (= e!3534887 call!440871)))

(declare-fun bm!440867 () Bool)

(assert (=> bm!440867 (= call!440869 (derivationStepZipperDown!1103 (ite c!1016050 (regTwo!32035 (reg!16090 (regOne!32034 r!7292))) (ite c!1016047 (regTwo!32034 (reg!16090 (regOne!32034 r!7292))) (ite c!1016048 (regOne!32034 (reg!16090 (regOne!32034 r!7292))) (reg!16090 (reg!16090 (regOne!32034 r!7292)))))) (ite (or c!1016050 c!1016047) lt!2287270 (Context!10291 call!440872)) (h!69906 s!2326)))))

(declare-fun b!5751745 () Bool)

(assert (=> b!5751745 (= e!3534885 ((_ map or) call!440868 call!440870))))

(declare-fun b!5751746 () Bool)

(assert (=> b!5751746 (= e!3534885 e!3534887)))

(assert (=> b!5751746 (= c!1016048 ((_ is Concat!24606) (reg!16090 (regOne!32034 r!7292))))))

(assert (= (and d!1812650 c!1016046) b!5751742))

(assert (= (and d!1812650 (not c!1016046)) b!5751741))

(assert (= (and b!5751741 c!1016050) b!5751739))

(assert (= (and b!5751741 (not c!1016050)) b!5751743))

(assert (= (and b!5751743 res!2428392) b!5751736))

(assert (= (and b!5751743 c!1016047) b!5751745))

(assert (= (and b!5751743 (not c!1016047)) b!5751746))

(assert (= (and b!5751746 c!1016048) b!5751744))

(assert (= (and b!5751746 (not c!1016048)) b!5751738))

(assert (= (and b!5751738 c!1016049) b!5751740))

(assert (= (and b!5751738 (not c!1016049)) b!5751737))

(assert (= (or b!5751744 b!5751740) bm!440866))

(assert (= (or b!5751744 b!5751740) bm!440864))

(assert (= (or b!5751745 bm!440866) bm!440862))

(assert (= (or b!5751745 bm!440864) bm!440863))

(assert (= (or b!5751739 bm!440863) bm!440867))

(assert (= (or b!5751739 b!5751745) bm!440865))

(declare-fun m!6701632 () Bool)

(assert (=> bm!440862 m!6701632))

(assert (=> b!5751742 m!6701066))

(declare-fun m!6701634 () Bool)

(assert (=> b!5751736 m!6701634))

(declare-fun m!6701636 () Bool)

(assert (=> bm!440865 m!6701636))

(declare-fun m!6701638 () Bool)

(assert (=> bm!440867 m!6701638))

(assert (=> b!5750977 d!1812650))

(declare-fun bs!1347248 () Bool)

(declare-fun b!5751783 () Bool)

(assert (= bs!1347248 (and b!5751783 d!1812626)))

(declare-fun lambda!312119 () Int)

(assert (=> bs!1347248 (not (= lambda!312119 lambda!312113))))

(declare-fun bs!1347249 () Bool)

(assert (= bs!1347249 (and b!5751783 b!5750992)))

(assert (=> bs!1347249 (not (= lambda!312119 lambda!312039))))

(assert (=> bs!1347249 (not (= lambda!312119 lambda!312040))))

(assert (=> bs!1347248 (not (= lambda!312119 lambda!312112))))

(declare-fun bs!1347250 () Bool)

(assert (= bs!1347250 (and b!5751783 d!1812624)))

(assert (=> bs!1347250 (not (= lambda!312119 lambda!312107))))

(assert (=> b!5751783 true))

(assert (=> b!5751783 true))

(declare-fun bs!1347251 () Bool)

(declare-fun b!5751786 () Bool)

(assert (= bs!1347251 (and b!5751786 b!5751783)))

(declare-fun lambda!312120 () Int)

(assert (=> bs!1347251 (not (= lambda!312120 lambda!312119))))

(declare-fun bs!1347252 () Bool)

(assert (= bs!1347252 (and b!5751786 d!1812626)))

(assert (=> bs!1347252 (= lambda!312120 lambda!312113)))

(declare-fun bs!1347253 () Bool)

(assert (= bs!1347253 (and b!5751786 b!5750992)))

(assert (=> bs!1347253 (not (= lambda!312120 lambda!312039))))

(assert (=> bs!1347253 (= lambda!312120 lambda!312040)))

(assert (=> bs!1347252 (not (= lambda!312120 lambda!312112))))

(declare-fun bs!1347254 () Bool)

(assert (= bs!1347254 (and b!5751786 d!1812624)))

(assert (=> bs!1347254 (not (= lambda!312120 lambda!312107))))

(assert (=> b!5751786 true))

(assert (=> b!5751786 true))

(declare-fun b!5751779 () Bool)

(declare-fun e!3534908 () Bool)

(declare-fun call!440878 () Bool)

(assert (=> b!5751779 (= e!3534908 call!440878)))

(declare-fun bm!440872 () Bool)

(assert (=> bm!440872 (= call!440878 (isEmpty!35345 s!2326))))

(declare-fun b!5751780 () Bool)

(declare-fun c!1016061 () Bool)

(assert (=> b!5751780 (= c!1016061 ((_ is Union!15761) r!7292))))

(declare-fun e!3534914 () Bool)

(declare-fun e!3534912 () Bool)

(assert (=> b!5751780 (= e!3534914 e!3534912)))

(declare-fun b!5751781 () Bool)

(assert (=> b!5751781 (= e!3534914 (= s!2326 (Cons!63458 (c!1015817 r!7292) Nil!63458)))))

(declare-fun b!5751782 () Bool)

(declare-fun c!1016062 () Bool)

(assert (=> b!5751782 (= c!1016062 ((_ is ElementMatch!15761) r!7292))))

(declare-fun e!3534913 () Bool)

(assert (=> b!5751782 (= e!3534913 e!3534914)))

(declare-fun e!3534911 () Bool)

(declare-fun call!440877 () Bool)

(assert (=> b!5751783 (= e!3534911 call!440877)))

(declare-fun d!1812652 () Bool)

(declare-fun c!1016060 () Bool)

(assert (=> d!1812652 (= c!1016060 ((_ is EmptyExpr!15761) r!7292))))

(assert (=> d!1812652 (= (matchRSpec!2864 r!7292 s!2326) e!3534908)))

(declare-fun bm!440873 () Bool)

(declare-fun c!1016059 () Bool)

(assert (=> bm!440873 (= call!440877 (Exists!2861 (ite c!1016059 lambda!312119 lambda!312120)))))

(declare-fun b!5751784 () Bool)

(assert (=> b!5751784 (= e!3534908 e!3534913)))

(declare-fun res!2428410 () Bool)

(assert (=> b!5751784 (= res!2428410 (not ((_ is EmptyLang!15761) r!7292)))))

(assert (=> b!5751784 (=> (not res!2428410) (not e!3534913))))

(declare-fun b!5751785 () Bool)

(declare-fun e!3534910 () Bool)

(assert (=> b!5751785 (= e!3534912 e!3534910)))

(assert (=> b!5751785 (= c!1016059 ((_ is Star!15761) r!7292))))

(assert (=> b!5751786 (= e!3534910 call!440877)))

(declare-fun b!5751787 () Bool)

(declare-fun e!3534909 () Bool)

(assert (=> b!5751787 (= e!3534912 e!3534909)))

(declare-fun res!2428409 () Bool)

(assert (=> b!5751787 (= res!2428409 (matchRSpec!2864 (regOne!32035 r!7292) s!2326))))

(assert (=> b!5751787 (=> res!2428409 e!3534909)))

(declare-fun b!5751788 () Bool)

(declare-fun res!2428411 () Bool)

(assert (=> b!5751788 (=> res!2428411 e!3534911)))

(assert (=> b!5751788 (= res!2428411 call!440878)))

(assert (=> b!5751788 (= e!3534910 e!3534911)))

(declare-fun b!5751789 () Bool)

(assert (=> b!5751789 (= e!3534909 (matchRSpec!2864 (regTwo!32035 r!7292) s!2326))))

(assert (= (and d!1812652 c!1016060) b!5751779))

(assert (= (and d!1812652 (not c!1016060)) b!5751784))

(assert (= (and b!5751784 res!2428410) b!5751782))

(assert (= (and b!5751782 c!1016062) b!5751781))

(assert (= (and b!5751782 (not c!1016062)) b!5751780))

(assert (= (and b!5751780 c!1016061) b!5751787))

(assert (= (and b!5751780 (not c!1016061)) b!5751785))

(assert (= (and b!5751787 (not res!2428409)) b!5751789))

(assert (= (and b!5751785 c!1016059) b!5751788))

(assert (= (and b!5751785 (not c!1016059)) b!5751786))

(assert (= (and b!5751788 (not res!2428411)) b!5751783))

(assert (= (or b!5751783 b!5751786) bm!440873))

(assert (= (or b!5751779 b!5751788) bm!440872))

(assert (=> bm!440872 m!6701472))

(declare-fun m!6701640 () Bool)

(assert (=> bm!440873 m!6701640))

(declare-fun m!6701642 () Bool)

(assert (=> b!5751787 m!6701642))

(declare-fun m!6701644 () Bool)

(assert (=> b!5751789 m!6701644))

(assert (=> b!5750975 d!1812652))

(declare-fun bm!440876 () Bool)

(declare-fun call!440881 () Bool)

(assert (=> bm!440876 (= call!440881 (isEmpty!35345 s!2326))))

(declare-fun b!5751818 () Bool)

(declare-fun e!3534931 () Bool)

(declare-fun lt!2287407 () Bool)

(assert (=> b!5751818 (= e!3534931 (not lt!2287407))))

(declare-fun d!1812654 () Bool)

(declare-fun e!3534930 () Bool)

(assert (=> d!1812654 e!3534930))

(declare-fun c!1016069 () Bool)

(assert (=> d!1812654 (= c!1016069 ((_ is EmptyExpr!15761) r!7292))))

(declare-fun e!3534935 () Bool)

(assert (=> d!1812654 (= lt!2287407 e!3534935)))

(declare-fun c!1016070 () Bool)

(assert (=> d!1812654 (= c!1016070 (isEmpty!35345 s!2326))))

(assert (=> d!1812654 (validRegex!7497 r!7292)))

(assert (=> d!1812654 (= (matchR!7946 r!7292 s!2326) lt!2287407)))

(declare-fun b!5751819 () Bool)

(declare-fun e!3534929 () Bool)

(assert (=> b!5751819 (= e!3534929 (not (= (head!12166 s!2326) (c!1015817 r!7292))))))

(declare-fun b!5751820 () Bool)

(declare-fun e!3534932 () Bool)

(declare-fun e!3534933 () Bool)

(assert (=> b!5751820 (= e!3534932 e!3534933)))

(declare-fun res!2428428 () Bool)

(assert (=> b!5751820 (=> (not res!2428428) (not e!3534933))))

(assert (=> b!5751820 (= res!2428428 (not lt!2287407))))

(declare-fun b!5751821 () Bool)

(declare-fun e!3534934 () Bool)

(assert (=> b!5751821 (= e!3534934 (= (head!12166 s!2326) (c!1015817 r!7292)))))

(declare-fun b!5751822 () Bool)

(declare-fun derivativeStep!4546 (Regex!15761 C!31792) Regex!15761)

(assert (=> b!5751822 (= e!3534935 (matchR!7946 (derivativeStep!4546 r!7292 (head!12166 s!2326)) (tail!11261 s!2326)))))

(declare-fun b!5751823 () Bool)

(assert (=> b!5751823 (= e!3534933 e!3534929)))

(declare-fun res!2428434 () Bool)

(assert (=> b!5751823 (=> res!2428434 e!3534929)))

(assert (=> b!5751823 (= res!2428434 call!440881)))

(declare-fun b!5751824 () Bool)

(assert (=> b!5751824 (= e!3534930 (= lt!2287407 call!440881))))

(declare-fun b!5751825 () Bool)

(declare-fun res!2428432 () Bool)

(assert (=> b!5751825 (=> (not res!2428432) (not e!3534934))))

(assert (=> b!5751825 (= res!2428432 (isEmpty!35345 (tail!11261 s!2326)))))

(declare-fun b!5751826 () Bool)

(assert (=> b!5751826 (= e!3534930 e!3534931)))

(declare-fun c!1016071 () Bool)

(assert (=> b!5751826 (= c!1016071 ((_ is EmptyLang!15761) r!7292))))

(declare-fun b!5751827 () Bool)

(assert (=> b!5751827 (= e!3534935 (nullable!5793 r!7292))))

(declare-fun b!5751828 () Bool)

(declare-fun res!2428429 () Bool)

(assert (=> b!5751828 (=> res!2428429 e!3534929)))

(assert (=> b!5751828 (= res!2428429 (not (isEmpty!35345 (tail!11261 s!2326))))))

(declare-fun b!5751829 () Bool)

(declare-fun res!2428433 () Bool)

(assert (=> b!5751829 (=> res!2428433 e!3534932)))

(assert (=> b!5751829 (= res!2428433 (not ((_ is ElementMatch!15761) r!7292)))))

(assert (=> b!5751829 (= e!3534931 e!3534932)))

(declare-fun b!5751830 () Bool)

(declare-fun res!2428435 () Bool)

(assert (=> b!5751830 (=> (not res!2428435) (not e!3534934))))

(assert (=> b!5751830 (= res!2428435 (not call!440881))))

(declare-fun b!5751831 () Bool)

(declare-fun res!2428431 () Bool)

(assert (=> b!5751831 (=> res!2428431 e!3534932)))

(assert (=> b!5751831 (= res!2428431 e!3534934)))

(declare-fun res!2428430 () Bool)

(assert (=> b!5751831 (=> (not res!2428430) (not e!3534934))))

(assert (=> b!5751831 (= res!2428430 lt!2287407)))

(assert (= (and d!1812654 c!1016070) b!5751827))

(assert (= (and d!1812654 (not c!1016070)) b!5751822))

(assert (= (and d!1812654 c!1016069) b!5751824))

(assert (= (and d!1812654 (not c!1016069)) b!5751826))

(assert (= (and b!5751826 c!1016071) b!5751818))

(assert (= (and b!5751826 (not c!1016071)) b!5751829))

(assert (= (and b!5751829 (not res!2428433)) b!5751831))

(assert (= (and b!5751831 res!2428430) b!5751830))

(assert (= (and b!5751830 res!2428435) b!5751825))

(assert (= (and b!5751825 res!2428432) b!5751821))

(assert (= (and b!5751831 (not res!2428431)) b!5751820))

(assert (= (and b!5751820 res!2428428) b!5751823))

(assert (= (and b!5751823 (not res!2428434)) b!5751828))

(assert (= (and b!5751828 (not res!2428429)) b!5751819))

(assert (= (or b!5751824 b!5751823 b!5751830) bm!440876))

(assert (=> d!1812654 m!6701472))

(assert (=> d!1812654 m!6701026))

(assert (=> b!5751828 m!6701480))

(assert (=> b!5751828 m!6701480))

(declare-fun m!6701646 () Bool)

(assert (=> b!5751828 m!6701646))

(assert (=> b!5751819 m!6701476))

(assert (=> bm!440876 m!6701472))

(assert (=> b!5751822 m!6701476))

(assert (=> b!5751822 m!6701476))

(declare-fun m!6701648 () Bool)

(assert (=> b!5751822 m!6701648))

(assert (=> b!5751822 m!6701480))

(assert (=> b!5751822 m!6701648))

(assert (=> b!5751822 m!6701480))

(declare-fun m!6701650 () Bool)

(assert (=> b!5751822 m!6701650))

(declare-fun m!6701652 () Bool)

(assert (=> b!5751827 m!6701652))

(assert (=> b!5751825 m!6701480))

(assert (=> b!5751825 m!6701480))

(assert (=> b!5751825 m!6701646))

(assert (=> b!5751821 m!6701476))

(assert (=> b!5750975 d!1812654))

(declare-fun d!1812656 () Bool)

(assert (=> d!1812656 (= (matchR!7946 r!7292 s!2326) (matchRSpec!2864 r!7292 s!2326))))

(declare-fun lt!2287410 () Unit!156576)

(declare-fun choose!43612 (Regex!15761 List!63582) Unit!156576)

(assert (=> d!1812656 (= lt!2287410 (choose!43612 r!7292 s!2326))))

(assert (=> d!1812656 (validRegex!7497 r!7292)))

(assert (=> d!1812656 (= (mainMatchTheorem!2864 r!7292 s!2326) lt!2287410)))

(declare-fun bs!1347255 () Bool)

(assert (= bs!1347255 d!1812656))

(assert (=> bs!1347255 m!6700964))

(assert (=> bs!1347255 m!6700962))

(declare-fun m!6701654 () Bool)

(assert (=> bs!1347255 m!6701654))

(assert (=> bs!1347255 m!6701026))

(assert (=> b!5750975 d!1812656))

(declare-fun d!1812658 () Bool)

(declare-fun lt!2287411 () Regex!15761)

(assert (=> d!1812658 (validRegex!7497 lt!2287411)))

(assert (=> d!1812658 (= lt!2287411 (generalisedUnion!1624 (unfocusZipperList!1189 (Cons!63460 lt!2287270 Nil!63460))))))

(assert (=> d!1812658 (= (unfocusZipper!1503 (Cons!63460 lt!2287270 Nil!63460)) lt!2287411)))

(declare-fun bs!1347256 () Bool)

(assert (= bs!1347256 d!1812658))

(declare-fun m!6701656 () Bool)

(assert (=> bs!1347256 m!6701656))

(declare-fun m!6701658 () Bool)

(assert (=> bs!1347256 m!6701658))

(assert (=> bs!1347256 m!6701658))

(declare-fun m!6701660 () Bool)

(assert (=> bs!1347256 m!6701660))

(assert (=> b!5750974 d!1812658))

(declare-fun d!1812660 () Bool)

(declare-fun lt!2287412 () Regex!15761)

(assert (=> d!1812660 (validRegex!7497 lt!2287412)))

(assert (=> d!1812660 (= lt!2287412 (generalisedUnion!1624 (unfocusZipperList!1189 zl!343)))))

(assert (=> d!1812660 (= (unfocusZipper!1503 zl!343) lt!2287412)))

(declare-fun bs!1347257 () Bool)

(assert (= bs!1347257 d!1812660))

(declare-fun m!6701662 () Bool)

(assert (=> bs!1347257 m!6701662))

(assert (=> bs!1347257 m!6701050))

(assert (=> bs!1347257 m!6701050))

(assert (=> bs!1347257 m!6701052))

(assert (=> b!5750994 d!1812660))

(declare-fun d!1812662 () Bool)

(declare-fun e!3534938 () Bool)

(assert (=> d!1812662 (= (matchZipper!1899 ((_ map or) lt!2287262 lt!2287265) (t!376912 s!2326)) e!3534938)))

(declare-fun res!2428438 () Bool)

(assert (=> d!1812662 (=> res!2428438 e!3534938)))

(assert (=> d!1812662 (= res!2428438 (matchZipper!1899 lt!2287262 (t!376912 s!2326)))))

(declare-fun lt!2287415 () Unit!156576)

(declare-fun choose!43613 ((InoxSet Context!10290) (InoxSet Context!10290) List!63582) Unit!156576)

(assert (=> d!1812662 (= lt!2287415 (choose!43613 lt!2287262 lt!2287265 (t!376912 s!2326)))))

(assert (=> d!1812662 (= (lemmaZipperConcatMatchesSameAsBothZippers!786 lt!2287262 lt!2287265 (t!376912 s!2326)) lt!2287415)))

(declare-fun b!5751834 () Bool)

(assert (=> b!5751834 (= e!3534938 (matchZipper!1899 lt!2287265 (t!376912 s!2326)))))

(assert (= (and d!1812662 (not res!2428438)) b!5751834))

(assert (=> d!1812662 m!6700998))

(assert (=> d!1812662 m!6700986))

(declare-fun m!6701664 () Bool)

(assert (=> d!1812662 m!6701664))

(assert (=> b!5751834 m!6700960))

(assert (=> b!5750993 d!1812662))

(assert (=> b!5750993 d!1812638))

(declare-fun d!1812664 () Bool)

(declare-fun c!1016072 () Bool)

(assert (=> d!1812664 (= c!1016072 (isEmpty!35345 (t!376912 s!2326)))))

(declare-fun e!3534939 () Bool)

(assert (=> d!1812664 (= (matchZipper!1899 ((_ map or) lt!2287262 lt!2287265) (t!376912 s!2326)) e!3534939)))

(declare-fun b!5751835 () Bool)

(assert (=> b!5751835 (= e!3534939 (nullableZipper!1692 ((_ map or) lt!2287262 lt!2287265)))))

(declare-fun b!5751836 () Bool)

(assert (=> b!5751836 (= e!3534939 (matchZipper!1899 (derivationStepZipper!1844 ((_ map or) lt!2287262 lt!2287265) (head!12166 (t!376912 s!2326))) (tail!11261 (t!376912 s!2326))))))

(assert (= (and d!1812664 c!1016072) b!5751835))

(assert (= (and d!1812664 (not c!1016072)) b!5751836))

(assert (=> d!1812664 m!6701592))

(declare-fun m!6701666 () Bool)

(assert (=> b!5751835 m!6701666))

(assert (=> b!5751836 m!6701596))

(assert (=> b!5751836 m!6701596))

(declare-fun m!6701668 () Bool)

(assert (=> b!5751836 m!6701668))

(assert (=> b!5751836 m!6701600))

(assert (=> b!5751836 m!6701668))

(assert (=> b!5751836 m!6701600))

(declare-fun m!6701670 () Bool)

(assert (=> b!5751836 m!6701670))

(assert (=> b!5750993 d!1812664))

(declare-fun b!5751843 () Bool)

(assert (=> b!5751843 true))

(declare-fun bs!1347258 () Bool)

(declare-fun b!5751845 () Bool)

(assert (= bs!1347258 (and b!5751845 b!5751843)))

(declare-fun lambda!312128 () Int)

(declare-fun lt!2287427 () Int)

(declare-fun lt!2287424 () Int)

(declare-fun lambda!312129 () Int)

(assert (=> bs!1347258 (= (= lt!2287427 lt!2287424) (= lambda!312129 lambda!312128))))

(assert (=> b!5751845 true))

(declare-fun d!1812666 () Bool)

(declare-fun e!3534944 () Bool)

(assert (=> d!1812666 e!3534944))

(declare-fun res!2428441 () Bool)

(assert (=> d!1812666 (=> (not res!2428441) (not e!3534944))))

(assert (=> d!1812666 (= res!2428441 (>= lt!2287427 0))))

(declare-fun e!3534945 () Int)

(assert (=> d!1812666 (= lt!2287427 e!3534945)))

(declare-fun c!1016081 () Bool)

(assert (=> d!1812666 (= c!1016081 ((_ is Cons!63460) zl!343))))

(assert (=> d!1812666 (= (zipperDepth!236 zl!343) lt!2287427)))

(assert (=> b!5751843 (= e!3534945 lt!2287424)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!132 (Context!10290) Int)

(assert (=> b!5751843 (= lt!2287424 (maxBigInt!0 (contextDepth!132 (h!69908 zl!343)) (zipperDepth!236 (t!376914 zl!343))))))

(declare-fun lt!2287426 () Unit!156576)

(declare-fun lambda!312127 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!122 (List!63584 Int Int Int) Unit!156576)

(assert (=> b!5751843 (= lt!2287426 (lemmaForallContextDepthBiggerThanTransitive!122 (t!376914 zl!343) lt!2287424 (zipperDepth!236 (t!376914 zl!343)) lambda!312127))))

(declare-fun forall!14882 (List!63584 Int) Bool)

(assert (=> b!5751843 (forall!14882 (t!376914 zl!343) lambda!312128)))

(declare-fun lt!2287425 () Unit!156576)

(assert (=> b!5751843 (= lt!2287425 lt!2287426)))

(declare-fun b!5751844 () Bool)

(assert (=> b!5751844 (= e!3534945 0)))

(assert (=> b!5751845 (= e!3534944 (forall!14882 zl!343 lambda!312129))))

(assert (= (and d!1812666 c!1016081) b!5751843))

(assert (= (and d!1812666 (not c!1016081)) b!5751844))

(assert (= (and d!1812666 res!2428441) b!5751845))

(declare-fun m!6701672 () Bool)

(assert (=> b!5751843 m!6701672))

(declare-fun m!6701674 () Bool)

(assert (=> b!5751843 m!6701674))

(declare-fun m!6701676 () Bool)

(assert (=> b!5751843 m!6701676))

(assert (=> b!5751843 m!6701674))

(declare-fun m!6701678 () Bool)

(assert (=> b!5751843 m!6701678))

(declare-fun m!6701680 () Bool)

(assert (=> b!5751843 m!6701680))

(assert (=> b!5751843 m!6701674))

(assert (=> b!5751843 m!6701672))

(declare-fun m!6701682 () Bool)

(assert (=> b!5751845 m!6701682))

(assert (=> b!5751013 d!1812666))

(declare-fun bs!1347259 () Bool)

(declare-fun b!5751848 () Bool)

(assert (= bs!1347259 (and b!5751848 b!5751843)))

(declare-fun lambda!312130 () Int)

(assert (=> bs!1347259 (= lambda!312130 lambda!312127)))

(declare-fun lt!2287428 () Int)

(declare-fun lambda!312131 () Int)

(assert (=> bs!1347259 (= (= lt!2287428 lt!2287424) (= lambda!312131 lambda!312128))))

(declare-fun bs!1347260 () Bool)

(assert (= bs!1347260 (and b!5751848 b!5751845)))

(assert (=> bs!1347260 (= (= lt!2287428 lt!2287427) (= lambda!312131 lambda!312129))))

(assert (=> b!5751848 true))

(declare-fun bs!1347261 () Bool)

(declare-fun b!5751850 () Bool)

(assert (= bs!1347261 (and b!5751850 b!5751843)))

(declare-fun lambda!312132 () Int)

(declare-fun lt!2287431 () Int)

(assert (=> bs!1347261 (= (= lt!2287431 lt!2287424) (= lambda!312132 lambda!312128))))

(declare-fun bs!1347262 () Bool)

(assert (= bs!1347262 (and b!5751850 b!5751845)))

(assert (=> bs!1347262 (= (= lt!2287431 lt!2287427) (= lambda!312132 lambda!312129))))

(declare-fun bs!1347263 () Bool)

(assert (= bs!1347263 (and b!5751850 b!5751848)))

(assert (=> bs!1347263 (= (= lt!2287431 lt!2287428) (= lambda!312132 lambda!312131))))

(assert (=> b!5751850 true))

(declare-fun d!1812668 () Bool)

(declare-fun e!3534946 () Bool)

(assert (=> d!1812668 e!3534946))

(declare-fun res!2428442 () Bool)

(assert (=> d!1812668 (=> (not res!2428442) (not e!3534946))))

(assert (=> d!1812668 (= res!2428442 (>= lt!2287431 0))))

(declare-fun e!3534947 () Int)

(assert (=> d!1812668 (= lt!2287431 e!3534947)))

(declare-fun c!1016082 () Bool)

(assert (=> d!1812668 (= c!1016082 ((_ is Cons!63460) lt!2287267))))

(assert (=> d!1812668 (= (zipperDepth!236 lt!2287267) lt!2287431)))

(assert (=> b!5751848 (= e!3534947 lt!2287428)))

(assert (=> b!5751848 (= lt!2287428 (maxBigInt!0 (contextDepth!132 (h!69908 lt!2287267)) (zipperDepth!236 (t!376914 lt!2287267))))))

(declare-fun lt!2287430 () Unit!156576)

(assert (=> b!5751848 (= lt!2287430 (lemmaForallContextDepthBiggerThanTransitive!122 (t!376914 lt!2287267) lt!2287428 (zipperDepth!236 (t!376914 lt!2287267)) lambda!312130))))

(assert (=> b!5751848 (forall!14882 (t!376914 lt!2287267) lambda!312131)))

(declare-fun lt!2287429 () Unit!156576)

(assert (=> b!5751848 (= lt!2287429 lt!2287430)))

(declare-fun b!5751849 () Bool)

(assert (=> b!5751849 (= e!3534947 0)))

(assert (=> b!5751850 (= e!3534946 (forall!14882 lt!2287267 lambda!312132))))

(assert (= (and d!1812668 c!1016082) b!5751848))

(assert (= (and d!1812668 (not c!1016082)) b!5751849))

(assert (= (and d!1812668 res!2428442) b!5751850))

(declare-fun m!6701684 () Bool)

(assert (=> b!5751848 m!6701684))

(declare-fun m!6701686 () Bool)

(assert (=> b!5751848 m!6701686))

(declare-fun m!6701688 () Bool)

(assert (=> b!5751848 m!6701688))

(assert (=> b!5751848 m!6701686))

(declare-fun m!6701690 () Bool)

(assert (=> b!5751848 m!6701690))

(declare-fun m!6701692 () Bool)

(assert (=> b!5751848 m!6701692))

(assert (=> b!5751848 m!6701686))

(assert (=> b!5751848 m!6701684))

(declare-fun m!6701694 () Bool)

(assert (=> b!5751850 m!6701694))

(assert (=> b!5751013 d!1812668))

(declare-fun bm!440877 () Bool)

(declare-fun call!440882 () Bool)

(assert (=> bm!440877 (= call!440882 (isEmpty!35345 s!2326))))

(declare-fun b!5751851 () Bool)

(declare-fun e!3534950 () Bool)

(declare-fun lt!2287432 () Bool)

(assert (=> b!5751851 (= e!3534950 (not lt!2287432))))

(declare-fun d!1812670 () Bool)

(declare-fun e!3534949 () Bool)

(assert (=> d!1812670 e!3534949))

(declare-fun c!1016083 () Bool)

(assert (=> d!1812670 (= c!1016083 ((_ is EmptyExpr!15761) lt!2287258))))

(declare-fun e!3534954 () Bool)

(assert (=> d!1812670 (= lt!2287432 e!3534954)))

(declare-fun c!1016084 () Bool)

(assert (=> d!1812670 (= c!1016084 (isEmpty!35345 s!2326))))

(assert (=> d!1812670 (validRegex!7497 lt!2287258)))

(assert (=> d!1812670 (= (matchR!7946 lt!2287258 s!2326) lt!2287432)))

(declare-fun b!5751852 () Bool)

(declare-fun e!3534948 () Bool)

(assert (=> b!5751852 (= e!3534948 (not (= (head!12166 s!2326) (c!1015817 lt!2287258))))))

(declare-fun b!5751853 () Bool)

(declare-fun e!3534951 () Bool)

(declare-fun e!3534952 () Bool)

(assert (=> b!5751853 (= e!3534951 e!3534952)))

(declare-fun res!2428443 () Bool)

(assert (=> b!5751853 (=> (not res!2428443) (not e!3534952))))

(assert (=> b!5751853 (= res!2428443 (not lt!2287432))))

(declare-fun b!5751854 () Bool)

(declare-fun e!3534953 () Bool)

(assert (=> b!5751854 (= e!3534953 (= (head!12166 s!2326) (c!1015817 lt!2287258)))))

(declare-fun b!5751855 () Bool)

(assert (=> b!5751855 (= e!3534954 (matchR!7946 (derivativeStep!4546 lt!2287258 (head!12166 s!2326)) (tail!11261 s!2326)))))

(declare-fun b!5751856 () Bool)

(assert (=> b!5751856 (= e!3534952 e!3534948)))

(declare-fun res!2428449 () Bool)

(assert (=> b!5751856 (=> res!2428449 e!3534948)))

(assert (=> b!5751856 (= res!2428449 call!440882)))

(declare-fun b!5751857 () Bool)

(assert (=> b!5751857 (= e!3534949 (= lt!2287432 call!440882))))

(declare-fun b!5751858 () Bool)

(declare-fun res!2428447 () Bool)

(assert (=> b!5751858 (=> (not res!2428447) (not e!3534953))))

(assert (=> b!5751858 (= res!2428447 (isEmpty!35345 (tail!11261 s!2326)))))

(declare-fun b!5751859 () Bool)

(assert (=> b!5751859 (= e!3534949 e!3534950)))

(declare-fun c!1016085 () Bool)

(assert (=> b!5751859 (= c!1016085 ((_ is EmptyLang!15761) lt!2287258))))

(declare-fun b!5751860 () Bool)

(assert (=> b!5751860 (= e!3534954 (nullable!5793 lt!2287258))))

(declare-fun b!5751861 () Bool)

(declare-fun res!2428444 () Bool)

(assert (=> b!5751861 (=> res!2428444 e!3534948)))

(assert (=> b!5751861 (= res!2428444 (not (isEmpty!35345 (tail!11261 s!2326))))))

(declare-fun b!5751862 () Bool)

(declare-fun res!2428448 () Bool)

(assert (=> b!5751862 (=> res!2428448 e!3534951)))

(assert (=> b!5751862 (= res!2428448 (not ((_ is ElementMatch!15761) lt!2287258)))))

(assert (=> b!5751862 (= e!3534950 e!3534951)))

(declare-fun b!5751863 () Bool)

(declare-fun res!2428450 () Bool)

(assert (=> b!5751863 (=> (not res!2428450) (not e!3534953))))

(assert (=> b!5751863 (= res!2428450 (not call!440882))))

(declare-fun b!5751864 () Bool)

(declare-fun res!2428446 () Bool)

(assert (=> b!5751864 (=> res!2428446 e!3534951)))

(assert (=> b!5751864 (= res!2428446 e!3534953)))

(declare-fun res!2428445 () Bool)

(assert (=> b!5751864 (=> (not res!2428445) (not e!3534953))))

(assert (=> b!5751864 (= res!2428445 lt!2287432)))

(assert (= (and d!1812670 c!1016084) b!5751860))

(assert (= (and d!1812670 (not c!1016084)) b!5751855))

(assert (= (and d!1812670 c!1016083) b!5751857))

(assert (= (and d!1812670 (not c!1016083)) b!5751859))

(assert (= (and b!5751859 c!1016085) b!5751851))

(assert (= (and b!5751859 (not c!1016085)) b!5751862))

(assert (= (and b!5751862 (not res!2428448)) b!5751864))

(assert (= (and b!5751864 res!2428445) b!5751863))

(assert (= (and b!5751863 res!2428450) b!5751858))

(assert (= (and b!5751858 res!2428447) b!5751854))

(assert (= (and b!5751864 (not res!2428446)) b!5751853))

(assert (= (and b!5751853 res!2428443) b!5751856))

(assert (= (and b!5751856 (not res!2428449)) b!5751861))

(assert (= (and b!5751861 (not res!2428444)) b!5751852))

(assert (= (or b!5751857 b!5751856 b!5751863) bm!440877))

(assert (=> d!1812670 m!6701472))

(declare-fun m!6701696 () Bool)

(assert (=> d!1812670 m!6701696))

(assert (=> b!5751861 m!6701480))

(assert (=> b!5751861 m!6701480))

(assert (=> b!5751861 m!6701646))

(assert (=> b!5751852 m!6701476))

(assert (=> bm!440877 m!6701472))

(assert (=> b!5751855 m!6701476))

(assert (=> b!5751855 m!6701476))

(declare-fun m!6701698 () Bool)

(assert (=> b!5751855 m!6701698))

(assert (=> b!5751855 m!6701480))

(assert (=> b!5751855 m!6701698))

(assert (=> b!5751855 m!6701480))

(declare-fun m!6701700 () Bool)

(assert (=> b!5751855 m!6701700))

(declare-fun m!6701702 () Bool)

(assert (=> b!5751860 m!6701702))

(assert (=> b!5751858 m!6701480))

(assert (=> b!5751858 m!6701480))

(assert (=> b!5751858 m!6701646))

(assert (=> b!5751854 m!6701476))

(assert (=> b!5751003 d!1812670))

(declare-fun bs!1347264 () Bool)

(declare-fun b!5751869 () Bool)

(assert (= bs!1347264 (and b!5751869 b!5751783)))

(declare-fun lambda!312133 () Int)

(assert (=> bs!1347264 (= (and (= (reg!16090 lt!2287258) (reg!16090 r!7292)) (= lt!2287258 r!7292)) (= lambda!312133 lambda!312119))))

(declare-fun bs!1347265 () Bool)

(assert (= bs!1347265 (and b!5751869 d!1812626)))

(assert (=> bs!1347265 (not (= lambda!312133 lambda!312113))))

(declare-fun bs!1347266 () Bool)

(assert (= bs!1347266 (and b!5751869 b!5750992)))

(assert (=> bs!1347266 (not (= lambda!312133 lambda!312039))))

(assert (=> bs!1347266 (not (= lambda!312133 lambda!312040))))

(assert (=> bs!1347265 (not (= lambda!312133 lambda!312112))))

(declare-fun bs!1347267 () Bool)

(assert (= bs!1347267 (and b!5751869 d!1812624)))

(assert (=> bs!1347267 (not (= lambda!312133 lambda!312107))))

(declare-fun bs!1347268 () Bool)

(assert (= bs!1347268 (and b!5751869 b!5751786)))

(assert (=> bs!1347268 (not (= lambda!312133 lambda!312120))))

(assert (=> b!5751869 true))

(assert (=> b!5751869 true))

(declare-fun bs!1347269 () Bool)

(declare-fun b!5751872 () Bool)

(assert (= bs!1347269 (and b!5751872 b!5751783)))

(declare-fun lambda!312134 () Int)

(assert (=> bs!1347269 (not (= lambda!312134 lambda!312119))))

(declare-fun bs!1347270 () Bool)

(assert (= bs!1347270 (and b!5751872 b!5751869)))

(assert (=> bs!1347270 (not (= lambda!312134 lambda!312133))))

(declare-fun bs!1347271 () Bool)

(assert (= bs!1347271 (and b!5751872 d!1812626)))

(assert (=> bs!1347271 (= (and (= (regOne!32034 lt!2287258) (regOne!32034 r!7292)) (= (regTwo!32034 lt!2287258) (regTwo!32034 r!7292))) (= lambda!312134 lambda!312113))))

(declare-fun bs!1347272 () Bool)

(assert (= bs!1347272 (and b!5751872 b!5750992)))

(assert (=> bs!1347272 (not (= lambda!312134 lambda!312039))))

(assert (=> bs!1347272 (= (and (= (regOne!32034 lt!2287258) (regOne!32034 r!7292)) (= (regTwo!32034 lt!2287258) (regTwo!32034 r!7292))) (= lambda!312134 lambda!312040))))

(assert (=> bs!1347271 (not (= lambda!312134 lambda!312112))))

(declare-fun bs!1347273 () Bool)

(assert (= bs!1347273 (and b!5751872 d!1812624)))

(assert (=> bs!1347273 (not (= lambda!312134 lambda!312107))))

(declare-fun bs!1347274 () Bool)

(assert (= bs!1347274 (and b!5751872 b!5751786)))

(assert (=> bs!1347274 (= (and (= (regOne!32034 lt!2287258) (regOne!32034 r!7292)) (= (regTwo!32034 lt!2287258) (regTwo!32034 r!7292))) (= lambda!312134 lambda!312120))))

(assert (=> b!5751872 true))

(assert (=> b!5751872 true))

(declare-fun b!5751865 () Bool)

(declare-fun e!3534955 () Bool)

(declare-fun call!440884 () Bool)

(assert (=> b!5751865 (= e!3534955 call!440884)))

(declare-fun bm!440878 () Bool)

(assert (=> bm!440878 (= call!440884 (isEmpty!35345 s!2326))))

(declare-fun b!5751866 () Bool)

(declare-fun c!1016088 () Bool)

(assert (=> b!5751866 (= c!1016088 ((_ is Union!15761) lt!2287258))))

(declare-fun e!3534961 () Bool)

(declare-fun e!3534959 () Bool)

(assert (=> b!5751866 (= e!3534961 e!3534959)))

(declare-fun b!5751867 () Bool)

(assert (=> b!5751867 (= e!3534961 (= s!2326 (Cons!63458 (c!1015817 lt!2287258) Nil!63458)))))

(declare-fun b!5751868 () Bool)

(declare-fun c!1016089 () Bool)

(assert (=> b!5751868 (= c!1016089 ((_ is ElementMatch!15761) lt!2287258))))

(declare-fun e!3534960 () Bool)

(assert (=> b!5751868 (= e!3534960 e!3534961)))

(declare-fun e!3534958 () Bool)

(declare-fun call!440883 () Bool)

(assert (=> b!5751869 (= e!3534958 call!440883)))

(declare-fun d!1812672 () Bool)

(declare-fun c!1016087 () Bool)

(assert (=> d!1812672 (= c!1016087 ((_ is EmptyExpr!15761) lt!2287258))))

(assert (=> d!1812672 (= (matchRSpec!2864 lt!2287258 s!2326) e!3534955)))

(declare-fun c!1016086 () Bool)

(declare-fun bm!440879 () Bool)

(assert (=> bm!440879 (= call!440883 (Exists!2861 (ite c!1016086 lambda!312133 lambda!312134)))))

(declare-fun b!5751870 () Bool)

(assert (=> b!5751870 (= e!3534955 e!3534960)))

(declare-fun res!2428452 () Bool)

(assert (=> b!5751870 (= res!2428452 (not ((_ is EmptyLang!15761) lt!2287258)))))

(assert (=> b!5751870 (=> (not res!2428452) (not e!3534960))))

(declare-fun b!5751871 () Bool)

(declare-fun e!3534957 () Bool)

(assert (=> b!5751871 (= e!3534959 e!3534957)))

(assert (=> b!5751871 (= c!1016086 ((_ is Star!15761) lt!2287258))))

(assert (=> b!5751872 (= e!3534957 call!440883)))

(declare-fun b!5751873 () Bool)

(declare-fun e!3534956 () Bool)

(assert (=> b!5751873 (= e!3534959 e!3534956)))

(declare-fun res!2428451 () Bool)

(assert (=> b!5751873 (= res!2428451 (matchRSpec!2864 (regOne!32035 lt!2287258) s!2326))))

(assert (=> b!5751873 (=> res!2428451 e!3534956)))

(declare-fun b!5751874 () Bool)

(declare-fun res!2428453 () Bool)

(assert (=> b!5751874 (=> res!2428453 e!3534958)))

(assert (=> b!5751874 (= res!2428453 call!440884)))

(assert (=> b!5751874 (= e!3534957 e!3534958)))

(declare-fun b!5751875 () Bool)

(assert (=> b!5751875 (= e!3534956 (matchRSpec!2864 (regTwo!32035 lt!2287258) s!2326))))

(assert (= (and d!1812672 c!1016087) b!5751865))

(assert (= (and d!1812672 (not c!1016087)) b!5751870))

(assert (= (and b!5751870 res!2428452) b!5751868))

(assert (= (and b!5751868 c!1016089) b!5751867))

(assert (= (and b!5751868 (not c!1016089)) b!5751866))

(assert (= (and b!5751866 c!1016088) b!5751873))

(assert (= (and b!5751866 (not c!1016088)) b!5751871))

(assert (= (and b!5751873 (not res!2428451)) b!5751875))

(assert (= (and b!5751871 c!1016086) b!5751874))

(assert (= (and b!5751871 (not c!1016086)) b!5751872))

(assert (= (and b!5751874 (not res!2428453)) b!5751869))

(assert (= (or b!5751869 b!5751872) bm!440879))

(assert (= (or b!5751865 b!5751874) bm!440878))

(assert (=> bm!440878 m!6701472))

(declare-fun m!6701704 () Bool)

(assert (=> bm!440879 m!6701704))

(declare-fun m!6701706 () Bool)

(assert (=> b!5751873 m!6701706))

(declare-fun m!6701708 () Bool)

(assert (=> b!5751875 m!6701708))

(assert (=> b!5751003 d!1812672))

(declare-fun d!1812674 () Bool)

(assert (=> d!1812674 (= (matchR!7946 lt!2287258 s!2326) (matchRSpec!2864 lt!2287258 s!2326))))

(declare-fun lt!2287433 () Unit!156576)

(assert (=> d!1812674 (= lt!2287433 (choose!43612 lt!2287258 s!2326))))

(assert (=> d!1812674 (validRegex!7497 lt!2287258)))

(assert (=> d!1812674 (= (mainMatchTheorem!2864 lt!2287258 s!2326) lt!2287433)))

(declare-fun bs!1347275 () Bool)

(assert (= bs!1347275 d!1812674))

(assert (=> bs!1347275 m!6700980))

(assert (=> bs!1347275 m!6700982))

(declare-fun m!6701710 () Bool)

(assert (=> bs!1347275 m!6701710))

(assert (=> bs!1347275 m!6701696))

(assert (=> b!5751003 d!1812674))

(declare-fun d!1812676 () Bool)

(declare-fun e!3534964 () Bool)

(assert (=> d!1812676 e!3534964))

(declare-fun res!2428456 () Bool)

(assert (=> d!1812676 (=> (not res!2428456) (not e!3534964))))

(declare-fun lt!2287436 () List!63584)

(declare-fun noDuplicate!1672 (List!63584) Bool)

(assert (=> d!1812676 (= res!2428456 (noDuplicate!1672 lt!2287436))))

(declare-fun choose!43614 ((InoxSet Context!10290)) List!63584)

(assert (=> d!1812676 (= lt!2287436 (choose!43614 z!1189))))

(assert (=> d!1812676 (= (toList!9545 z!1189) lt!2287436)))

(declare-fun b!5751878 () Bool)

(declare-fun content!11573 (List!63584) (InoxSet Context!10290))

(assert (=> b!5751878 (= e!3534964 (= (content!11573 lt!2287436) z!1189))))

(assert (= (and d!1812676 res!2428456) b!5751878))

(declare-fun m!6701712 () Bool)

(assert (=> d!1812676 m!6701712))

(declare-fun m!6701714 () Bool)

(assert (=> d!1812676 m!6701714))

(declare-fun m!6701716 () Bool)

(assert (=> b!5751878 m!6701716))

(assert (=> b!5751001 d!1812676))

(declare-fun d!1812678 () Bool)

(declare-fun lt!2287437 () Regex!15761)

(assert (=> d!1812678 (validRegex!7497 lt!2287437)))

(assert (=> d!1812678 (= lt!2287437 (generalisedUnion!1624 (unfocusZipperList!1189 (Cons!63460 lt!2287263 Nil!63460))))))

(assert (=> d!1812678 (= (unfocusZipper!1503 (Cons!63460 lt!2287263 Nil!63460)) lt!2287437)))

(declare-fun bs!1347276 () Bool)

(assert (= bs!1347276 d!1812678))

(declare-fun m!6701718 () Bool)

(assert (=> bs!1347276 m!6701718))

(declare-fun m!6701720 () Bool)

(assert (=> bs!1347276 m!6701720))

(assert (=> bs!1347276 m!6701720))

(declare-fun m!6701722 () Bool)

(assert (=> bs!1347276 m!6701722))

(assert (=> b!5750981 d!1812678))

(declare-fun d!1812680 () Bool)

(declare-fun c!1016090 () Bool)

(declare-fun e!3534966 () Bool)

(assert (=> d!1812680 (= c!1016090 e!3534966)))

(declare-fun res!2428457 () Bool)

(assert (=> d!1812680 (=> (not res!2428457) (not e!3534966))))

(assert (=> d!1812680 (= res!2428457 ((_ is Cons!63459) (exprs!5645 lt!2287263)))))

(declare-fun e!3534967 () (InoxSet Context!10290))

(assert (=> d!1812680 (= (derivationStepZipperUp!1029 lt!2287263 (h!69906 s!2326)) e!3534967)))

(declare-fun bm!440880 () Bool)

(declare-fun call!440885 () (InoxSet Context!10290))

(assert (=> bm!440880 (= call!440885 (derivationStepZipperDown!1103 (h!69907 (exprs!5645 lt!2287263)) (Context!10291 (t!376913 (exprs!5645 lt!2287263))) (h!69906 s!2326)))))

(declare-fun b!5751879 () Bool)

(declare-fun e!3534965 () (InoxSet Context!10290))

(assert (=> b!5751879 (= e!3534965 ((as const (Array Context!10290 Bool)) false))))

(declare-fun b!5751880 () Bool)

(assert (=> b!5751880 (= e!3534965 call!440885)))

(declare-fun b!5751881 () Bool)

(assert (=> b!5751881 (= e!3534966 (nullable!5793 (h!69907 (exprs!5645 lt!2287263))))))

(declare-fun b!5751882 () Bool)

(assert (=> b!5751882 (= e!3534967 ((_ map or) call!440885 (derivationStepZipperUp!1029 (Context!10291 (t!376913 (exprs!5645 lt!2287263))) (h!69906 s!2326))))))

(declare-fun b!5751883 () Bool)

(assert (=> b!5751883 (= e!3534967 e!3534965)))

(declare-fun c!1016091 () Bool)

(assert (=> b!5751883 (= c!1016091 ((_ is Cons!63459) (exprs!5645 lt!2287263)))))

(assert (= (and d!1812680 res!2428457) b!5751881))

(assert (= (and d!1812680 c!1016090) b!5751882))

(assert (= (and d!1812680 (not c!1016090)) b!5751883))

(assert (= (and b!5751883 c!1016091) b!5751880))

(assert (= (and b!5751883 (not c!1016091)) b!5751879))

(assert (= (or b!5751882 b!5751880) bm!440880))

(declare-fun m!6701724 () Bool)

(assert (=> bm!440880 m!6701724))

(declare-fun m!6701726 () Bool)

(assert (=> b!5751881 m!6701726))

(declare-fun m!6701728 () Bool)

(assert (=> b!5751882 m!6701728))

(assert (=> b!5750981 d!1812680))

(declare-fun d!1812682 () Bool)

(declare-fun c!1016092 () Bool)

(declare-fun e!3534969 () Bool)

(assert (=> d!1812682 (= c!1016092 e!3534969)))

(declare-fun res!2428458 () Bool)

(assert (=> d!1812682 (=> (not res!2428458) (not e!3534969))))

(assert (=> d!1812682 (= res!2428458 ((_ is Cons!63459) (exprs!5645 lt!2287270)))))

(declare-fun e!3534970 () (InoxSet Context!10290))

(assert (=> d!1812682 (= (derivationStepZipperUp!1029 lt!2287270 (h!69906 s!2326)) e!3534970)))

(declare-fun bm!440881 () Bool)

(declare-fun call!440886 () (InoxSet Context!10290))

(assert (=> bm!440881 (= call!440886 (derivationStepZipperDown!1103 (h!69907 (exprs!5645 lt!2287270)) (Context!10291 (t!376913 (exprs!5645 lt!2287270))) (h!69906 s!2326)))))

(declare-fun b!5751884 () Bool)

(declare-fun e!3534968 () (InoxSet Context!10290))

(assert (=> b!5751884 (= e!3534968 ((as const (Array Context!10290 Bool)) false))))

(declare-fun b!5751885 () Bool)

(assert (=> b!5751885 (= e!3534968 call!440886)))

(declare-fun b!5751886 () Bool)

(assert (=> b!5751886 (= e!3534969 (nullable!5793 (h!69907 (exprs!5645 lt!2287270))))))

(declare-fun b!5751887 () Bool)

(assert (=> b!5751887 (= e!3534970 ((_ map or) call!440886 (derivationStepZipperUp!1029 (Context!10291 (t!376913 (exprs!5645 lt!2287270))) (h!69906 s!2326))))))

(declare-fun b!5751888 () Bool)

(assert (=> b!5751888 (= e!3534970 e!3534968)))

(declare-fun c!1016093 () Bool)

(assert (=> b!5751888 (= c!1016093 ((_ is Cons!63459) (exprs!5645 lt!2287270)))))

(assert (= (and d!1812682 res!2428458) b!5751886))

(assert (= (and d!1812682 c!1016092) b!5751887))

(assert (= (and d!1812682 (not c!1016092)) b!5751888))

(assert (= (and b!5751888 c!1016093) b!5751885))

(assert (= (and b!5751888 (not c!1016093)) b!5751884))

(assert (= (or b!5751887 b!5751885) bm!440881))

(declare-fun m!6701730 () Bool)

(assert (=> bm!440881 m!6701730))

(declare-fun m!6701732 () Bool)

(assert (=> b!5751886 m!6701732))

(declare-fun m!6701734 () Bool)

(assert (=> b!5751887 m!6701734))

(assert (=> b!5750981 d!1812682))

(declare-fun d!1812684 () Bool)

(assert (=> d!1812684 (= (flatMap!1374 lt!2287289 lambda!312041) (dynLambda!24837 lambda!312041 lt!2287263))))

(declare-fun lt!2287438 () Unit!156576)

(assert (=> d!1812684 (= lt!2287438 (choose!43608 lt!2287289 lt!2287263 lambda!312041))))

(assert (=> d!1812684 (= lt!2287289 (store ((as const (Array Context!10290 Bool)) false) lt!2287263 true))))

(assert (=> d!1812684 (= (lemmaFlatMapOnSingletonSet!906 lt!2287289 lt!2287263 lambda!312041) lt!2287438)))

(declare-fun b_lambda!217247 () Bool)

(assert (=> (not b_lambda!217247) (not d!1812684)))

(declare-fun bs!1347277 () Bool)

(assert (= bs!1347277 d!1812684))

(assert (=> bs!1347277 m!6701074))

(declare-fun m!6701736 () Bool)

(assert (=> bs!1347277 m!6701736))

(declare-fun m!6701738 () Bool)

(assert (=> bs!1347277 m!6701738))

(assert (=> bs!1347277 m!6701072))

(assert (=> b!5750981 d!1812684))

(declare-fun d!1812686 () Bool)

(assert (=> d!1812686 (= (flatMap!1374 lt!2287275 lambda!312041) (choose!43607 lt!2287275 lambda!312041))))

(declare-fun bs!1347278 () Bool)

(assert (= bs!1347278 d!1812686))

(declare-fun m!6701740 () Bool)

(assert (=> bs!1347278 m!6701740))

(assert (=> b!5750981 d!1812686))

(declare-fun d!1812688 () Bool)

(assert (=> d!1812688 (= (flatMap!1374 lt!2287275 lambda!312041) (dynLambda!24837 lambda!312041 lt!2287270))))

(declare-fun lt!2287439 () Unit!156576)

(assert (=> d!1812688 (= lt!2287439 (choose!43608 lt!2287275 lt!2287270 lambda!312041))))

(assert (=> d!1812688 (= lt!2287275 (store ((as const (Array Context!10290 Bool)) false) lt!2287270 true))))

(assert (=> d!1812688 (= (lemmaFlatMapOnSingletonSet!906 lt!2287275 lt!2287270 lambda!312041) lt!2287439)))

(declare-fun b_lambda!217249 () Bool)

(assert (=> (not b_lambda!217249) (not d!1812688)))

(declare-fun bs!1347279 () Bool)

(assert (= bs!1347279 d!1812688))

(assert (=> bs!1347279 m!6701070))

(declare-fun m!6701742 () Bool)

(assert (=> bs!1347279 m!6701742))

(declare-fun m!6701744 () Bool)

(assert (=> bs!1347279 m!6701744))

(assert (=> bs!1347279 m!6701066))

(assert (=> b!5750981 d!1812688))

(declare-fun d!1812690 () Bool)

(assert (=> d!1812690 (= (flatMap!1374 lt!2287289 lambda!312041) (choose!43607 lt!2287289 lambda!312041))))

(declare-fun bs!1347280 () Bool)

(assert (= bs!1347280 d!1812690))

(declare-fun m!6701746 () Bool)

(assert (=> bs!1347280 m!6701746))

(assert (=> b!5750981 d!1812690))

(declare-fun d!1812692 () Bool)

(assert (=> d!1812692 (= (flatMap!1374 z!1189 lambda!312041) (choose!43607 z!1189 lambda!312041))))

(declare-fun bs!1347281 () Bool)

(assert (= bs!1347281 d!1812692))

(declare-fun m!6701748 () Bool)

(assert (=> bs!1347281 m!6701748))

(assert (=> b!5750980 d!1812692))

(assert (=> b!5750980 d!1812646))

(declare-fun d!1812694 () Bool)

(assert (=> d!1812694 (= (nullable!5793 (h!69907 (exprs!5645 (h!69908 zl!343)))) (nullableFct!1838 (h!69907 (exprs!5645 (h!69908 zl!343)))))))

(declare-fun bs!1347282 () Bool)

(assert (= bs!1347282 d!1812694))

(declare-fun m!6701750 () Bool)

(assert (=> bs!1347282 m!6701750))

(assert (=> b!5750980 d!1812694))

(declare-fun d!1812696 () Bool)

(declare-fun c!1016094 () Bool)

(assert (=> d!1812696 (= c!1016094 (and ((_ is ElementMatch!15761) (h!69907 (exprs!5645 (h!69908 zl!343)))) (= (c!1015817 (h!69907 (exprs!5645 (h!69908 zl!343)))) (h!69906 s!2326))))))

(declare-fun e!3534973 () (InoxSet Context!10290))

(assert (=> d!1812696 (= (derivationStepZipperDown!1103 (h!69907 (exprs!5645 (h!69908 zl!343))) lt!2287276 (h!69906 s!2326)) e!3534973)))

(declare-fun b!5751889 () Bool)

(declare-fun e!3534971 () Bool)

(assert (=> b!5751889 (= e!3534971 (nullable!5793 (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343))))))))

(declare-fun call!440887 () List!63583)

(declare-fun c!1016095 () Bool)

(declare-fun bm!440882 () Bool)

(declare-fun c!1016096 () Bool)

(assert (=> bm!440882 (= call!440887 ($colon$colon!1760 (exprs!5645 lt!2287276) (ite (or c!1016095 c!1016096) (regTwo!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (h!69907 (exprs!5645 (h!69908 zl!343))))))))

(declare-fun bm!440883 () Bool)

(declare-fun call!440890 () (InoxSet Context!10290))

(declare-fun call!440889 () (InoxSet Context!10290))

(assert (=> bm!440883 (= call!440890 call!440889)))

(declare-fun bm!440884 () Bool)

(declare-fun call!440891 () (InoxSet Context!10290))

(assert (=> bm!440884 (= call!440891 call!440890)))

(declare-fun call!440888 () (InoxSet Context!10290))

(declare-fun c!1016098 () Bool)

(declare-fun bm!440885 () Bool)

(assert (=> bm!440885 (= call!440888 (derivationStepZipperDown!1103 (ite c!1016098 (regOne!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343))))) (ite c!1016098 lt!2287276 (Context!10291 call!440887)) (h!69906 s!2326)))))

(declare-fun b!5751890 () Bool)

(declare-fun e!3534976 () (InoxSet Context!10290))

(assert (=> b!5751890 (= e!3534976 ((as const (Array Context!10290 Bool)) false))))

(declare-fun bm!440886 () Bool)

(declare-fun call!440892 () List!63583)

(assert (=> bm!440886 (= call!440892 call!440887)))

(declare-fun b!5751891 () Bool)

(declare-fun c!1016097 () Bool)

(assert (=> b!5751891 (= c!1016097 ((_ is Star!15761) (h!69907 (exprs!5645 (h!69908 zl!343)))))))

(declare-fun e!3534974 () (InoxSet Context!10290))

(assert (=> b!5751891 (= e!3534974 e!3534976)))

(declare-fun b!5751892 () Bool)

(declare-fun e!3534975 () (InoxSet Context!10290))

(assert (=> b!5751892 (= e!3534975 ((_ map or) call!440888 call!440889))))

(declare-fun b!5751893 () Bool)

(assert (=> b!5751893 (= e!3534976 call!440891)))

(declare-fun b!5751894 () Bool)

(assert (=> b!5751894 (= e!3534973 e!3534975)))

(assert (=> b!5751894 (= c!1016098 ((_ is Union!15761) (h!69907 (exprs!5645 (h!69908 zl!343)))))))

(declare-fun b!5751895 () Bool)

(assert (=> b!5751895 (= e!3534973 (store ((as const (Array Context!10290 Bool)) false) lt!2287276 true))))

(declare-fun b!5751896 () Bool)

(assert (=> b!5751896 (= c!1016095 e!3534971)))

(declare-fun res!2428459 () Bool)

(assert (=> b!5751896 (=> (not res!2428459) (not e!3534971))))

(assert (=> b!5751896 (= res!2428459 ((_ is Concat!24606) (h!69907 (exprs!5645 (h!69908 zl!343)))))))

(declare-fun e!3534972 () (InoxSet Context!10290))

(assert (=> b!5751896 (= e!3534975 e!3534972)))

(declare-fun b!5751897 () Bool)

(assert (=> b!5751897 (= e!3534974 call!440891)))

(declare-fun bm!440887 () Bool)

(assert (=> bm!440887 (= call!440889 (derivationStepZipperDown!1103 (ite c!1016098 (regTwo!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016095 (regTwo!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016096 (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (reg!16090 (h!69907 (exprs!5645 (h!69908 zl!343))))))) (ite (or c!1016098 c!1016095) lt!2287276 (Context!10291 call!440892)) (h!69906 s!2326)))))

(declare-fun b!5751898 () Bool)

(assert (=> b!5751898 (= e!3534972 ((_ map or) call!440888 call!440890))))

(declare-fun b!5751899 () Bool)

(assert (=> b!5751899 (= e!3534972 e!3534974)))

(assert (=> b!5751899 (= c!1016096 ((_ is Concat!24606) (h!69907 (exprs!5645 (h!69908 zl!343)))))))

(assert (= (and d!1812696 c!1016094) b!5751895))

(assert (= (and d!1812696 (not c!1016094)) b!5751894))

(assert (= (and b!5751894 c!1016098) b!5751892))

(assert (= (and b!5751894 (not c!1016098)) b!5751896))

(assert (= (and b!5751896 res!2428459) b!5751889))

(assert (= (and b!5751896 c!1016095) b!5751898))

(assert (= (and b!5751896 (not c!1016095)) b!5751899))

(assert (= (and b!5751899 c!1016096) b!5751897))

(assert (= (and b!5751899 (not c!1016096)) b!5751891))

(assert (= (and b!5751891 c!1016097) b!5751893))

(assert (= (and b!5751891 (not c!1016097)) b!5751890))

(assert (= (or b!5751897 b!5751893) bm!440886))

(assert (= (or b!5751897 b!5751893) bm!440884))

(assert (= (or b!5751898 bm!440886) bm!440882))

(assert (= (or b!5751898 bm!440884) bm!440883))

(assert (= (or b!5751892 bm!440883) bm!440887))

(assert (= (or b!5751892 b!5751898) bm!440885))

(declare-fun m!6701752 () Bool)

(assert (=> bm!440882 m!6701752))

(assert (=> b!5751895 m!6701084))

(declare-fun m!6701754 () Bool)

(assert (=> b!5751889 m!6701754))

(declare-fun m!6701756 () Bool)

(assert (=> bm!440885 m!6701756))

(declare-fun m!6701758 () Bool)

(assert (=> bm!440887 m!6701758))

(assert (=> b!5750980 d!1812696))

(declare-fun d!1812698 () Bool)

(declare-fun c!1016099 () Bool)

(declare-fun e!3534978 () Bool)

(assert (=> d!1812698 (= c!1016099 e!3534978)))

(declare-fun res!2428460 () Bool)

(assert (=> d!1812698 (=> (not res!2428460) (not e!3534978))))

(assert (=> d!1812698 (= res!2428460 ((_ is Cons!63459) (exprs!5645 (h!69908 zl!343))))))

(declare-fun e!3534979 () (InoxSet Context!10290))

(assert (=> d!1812698 (= (derivationStepZipperUp!1029 (h!69908 zl!343) (h!69906 s!2326)) e!3534979)))

(declare-fun bm!440888 () Bool)

(declare-fun call!440893 () (InoxSet Context!10290))

(assert (=> bm!440888 (= call!440893 (derivationStepZipperDown!1103 (h!69907 (exprs!5645 (h!69908 zl!343))) (Context!10291 (t!376913 (exprs!5645 (h!69908 zl!343)))) (h!69906 s!2326)))))

(declare-fun b!5751900 () Bool)

(declare-fun e!3534977 () (InoxSet Context!10290))

(assert (=> b!5751900 (= e!3534977 ((as const (Array Context!10290 Bool)) false))))

(declare-fun b!5751901 () Bool)

(assert (=> b!5751901 (= e!3534977 call!440893)))

(declare-fun b!5751902 () Bool)

(assert (=> b!5751902 (= e!3534978 (nullable!5793 (h!69907 (exprs!5645 (h!69908 zl!343)))))))

(declare-fun b!5751903 () Bool)

(assert (=> b!5751903 (= e!3534979 ((_ map or) call!440893 (derivationStepZipperUp!1029 (Context!10291 (t!376913 (exprs!5645 (h!69908 zl!343)))) (h!69906 s!2326))))))

(declare-fun b!5751904 () Bool)

(assert (=> b!5751904 (= e!3534979 e!3534977)))

(declare-fun c!1016100 () Bool)

(assert (=> b!5751904 (= c!1016100 ((_ is Cons!63459) (exprs!5645 (h!69908 zl!343))))))

(assert (= (and d!1812698 res!2428460) b!5751902))

(assert (= (and d!1812698 c!1016099) b!5751903))

(assert (= (and d!1812698 (not c!1016099)) b!5751904))

(assert (= (and b!5751904 c!1016100) b!5751901))

(assert (= (and b!5751904 (not c!1016100)) b!5751900))

(assert (= (or b!5751903 b!5751901) bm!440888))

(declare-fun m!6701760 () Bool)

(assert (=> bm!440888 m!6701760))

(assert (=> b!5751902 m!6701008))

(declare-fun m!6701762 () Bool)

(assert (=> b!5751903 m!6701762))

(assert (=> b!5750980 d!1812698))

(declare-fun d!1812700 () Bool)

(assert (=> d!1812700 (= (flatMap!1374 z!1189 lambda!312041) (dynLambda!24837 lambda!312041 (h!69908 zl!343)))))

(declare-fun lt!2287440 () Unit!156576)

(assert (=> d!1812700 (= lt!2287440 (choose!43608 z!1189 (h!69908 zl!343) lambda!312041))))

(assert (=> d!1812700 (= z!1189 (store ((as const (Array Context!10290 Bool)) false) (h!69908 zl!343) true))))

(assert (=> d!1812700 (= (lemmaFlatMapOnSingletonSet!906 z!1189 (h!69908 zl!343) lambda!312041) lt!2287440)))

(declare-fun b_lambda!217251 () Bool)

(assert (=> (not b_lambda!217251) (not d!1812700)))

(declare-fun bs!1347283 () Bool)

(assert (= bs!1347283 d!1812700))

(assert (=> bs!1347283 m!6701010))

(declare-fun m!6701764 () Bool)

(assert (=> bs!1347283 m!6701764))

(declare-fun m!6701766 () Bool)

(assert (=> bs!1347283 m!6701766))

(declare-fun m!6701768 () Bool)

(assert (=> bs!1347283 m!6701768))

(assert (=> b!5750980 d!1812700))

(declare-fun d!1812702 () Bool)

(declare-fun c!1016101 () Bool)

(declare-fun e!3534981 () Bool)

(assert (=> d!1812702 (= c!1016101 e!3534981)))

(declare-fun res!2428461 () Bool)

(assert (=> d!1812702 (=> (not res!2428461) (not e!3534981))))

(assert (=> d!1812702 (= res!2428461 ((_ is Cons!63459) (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343))))))))))

(declare-fun e!3534982 () (InoxSet Context!10290))

(assert (=> d!1812702 (= (derivationStepZipperUp!1029 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343))))) (h!69906 s!2326)) e!3534982)))

(declare-fun bm!440889 () Bool)

(declare-fun call!440894 () (InoxSet Context!10290))

(assert (=> bm!440889 (= call!440894 (derivationStepZipperDown!1103 (h!69907 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343))))))) (Context!10291 (t!376913 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343)))))))) (h!69906 s!2326)))))

(declare-fun b!5751905 () Bool)

(declare-fun e!3534980 () (InoxSet Context!10290))

(assert (=> b!5751905 (= e!3534980 ((as const (Array Context!10290 Bool)) false))))

(declare-fun b!5751906 () Bool)

(assert (=> b!5751906 (= e!3534980 call!440894)))

(declare-fun b!5751907 () Bool)

(assert (=> b!5751907 (= e!3534981 (nullable!5793 (h!69907 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343)))))))))))

(declare-fun b!5751908 () Bool)

(assert (=> b!5751908 (= e!3534982 ((_ map or) call!440894 (derivationStepZipperUp!1029 (Context!10291 (t!376913 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343)))))))) (h!69906 s!2326))))))

(declare-fun b!5751909 () Bool)

(assert (=> b!5751909 (= e!3534982 e!3534980)))

(declare-fun c!1016102 () Bool)

(assert (=> b!5751909 (= c!1016102 ((_ is Cons!63459) (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343))))))))))

(assert (= (and d!1812702 res!2428461) b!5751907))

(assert (= (and d!1812702 c!1016101) b!5751908))

(assert (= (and d!1812702 (not c!1016101)) b!5751909))

(assert (= (and b!5751909 c!1016102) b!5751906))

(assert (= (and b!5751909 (not c!1016102)) b!5751905))

(assert (= (or b!5751908 b!5751906) bm!440889))

(declare-fun m!6701770 () Bool)

(assert (=> bm!440889 m!6701770))

(declare-fun m!6701772 () Bool)

(assert (=> b!5751907 m!6701772))

(declare-fun m!6701774 () Bool)

(assert (=> b!5751908 m!6701774))

(assert (=> b!5750980 d!1812702))

(assert (=> b!5751000 d!1812634))

(declare-fun b!5751944 () Bool)

(declare-fun e!3535006 () Bool)

(declare-fun lt!2287443 () Int)

(assert (=> b!5751944 (= e!3535006 (= lt!2287443 1))))

(declare-fun b!5751945 () Bool)

(declare-fun e!3535012 () Bool)

(declare-fun call!440911 () Int)

(assert (=> b!5751945 (= e!3535012 (> lt!2287443 call!440911))))

(declare-fun bm!440904 () Bool)

(declare-fun call!440914 () Int)

(declare-fun c!1016120 () Bool)

(assert (=> bm!440904 (= call!440914 (regexDepth!238 (ite c!1016120 (regTwo!32035 r!7292) (regOne!32034 r!7292))))))

(declare-fun bm!440905 () Bool)

(declare-fun call!440912 () Int)

(declare-fun call!440909 () Int)

(assert (=> bm!440905 (= call!440912 call!440909)))

(declare-fun b!5751946 () Bool)

(declare-fun e!3535004 () Int)

(declare-fun e!3535007 () Int)

(assert (=> b!5751946 (= e!3535004 e!3535007)))

(declare-fun c!1016123 () Bool)

(assert (=> b!5751946 (= c!1016123 ((_ is Star!15761) r!7292))))

(declare-fun b!5751947 () Bool)

(assert (=> b!5751947 (= c!1016120 ((_ is Union!15761) r!7292))))

(declare-fun e!3535005 () Int)

(assert (=> b!5751947 (= e!3535007 e!3535005)))

(declare-fun b!5751948 () Bool)

(declare-fun e!3535009 () Int)

(assert (=> b!5751948 (= e!3535005 e!3535009)))

(declare-fun c!1016118 () Bool)

(assert (=> b!5751948 (= c!1016118 ((_ is Concat!24606) r!7292))))

(declare-fun call!440913 () Int)

(declare-fun bm!440906 () Bool)

(assert (=> bm!440906 (= call!440913 (regexDepth!238 (ite c!1016123 (reg!16090 r!7292) (ite c!1016120 (regOne!32035 r!7292) (regTwo!32034 r!7292)))))))

(declare-fun b!5751949 () Bool)

(assert (=> b!5751949 (= e!3535007 (+ 1 call!440913))))

(declare-fun b!5751950 () Bool)

(declare-fun e!3535011 () Bool)

(assert (=> b!5751950 (= e!3535011 e!3535012)))

(declare-fun res!2428468 () Bool)

(assert (=> b!5751950 (= res!2428468 (> lt!2287443 call!440909))))

(assert (=> b!5751950 (=> (not res!2428468) (not e!3535012))))

(declare-fun b!5751952 () Bool)

(declare-fun e!3535003 () Bool)

(assert (=> b!5751952 (= e!3535003 (> lt!2287443 call!440911))))

(declare-fun b!5751953 () Bool)

(declare-fun call!440910 () Int)

(assert (=> b!5751953 (= e!3535009 (+ 1 call!440910))))

(declare-fun b!5751954 () Bool)

(declare-fun e!3535008 () Bool)

(assert (=> b!5751954 (= e!3535011 e!3535008)))

(declare-fun c!1016119 () Bool)

(assert (=> b!5751954 (= c!1016119 ((_ is Concat!24606) r!7292))))

(declare-fun c!1016122 () Bool)

(declare-fun bm!440907 () Bool)

(assert (=> bm!440907 (= call!440909 (regexDepth!238 (ite c!1016122 (regOne!32035 r!7292) (ite c!1016119 (regOne!32034 r!7292) (reg!16090 r!7292)))))))

(declare-fun call!440915 () Int)

(declare-fun bm!440908 () Bool)

(assert (=> bm!440908 (= call!440910 (maxBigInt!0 (ite c!1016120 call!440915 call!440914) (ite c!1016120 call!440914 call!440915)))))

(declare-fun b!5751955 () Bool)

(assert (=> b!5751955 (= e!3535009 1)))

(declare-fun b!5751956 () Bool)

(declare-fun res!2428470 () Bool)

(assert (=> b!5751956 (=> (not res!2428470) (not e!3535003))))

(assert (=> b!5751956 (= res!2428470 (> lt!2287443 call!440912))))

(assert (=> b!5751956 (= e!3535008 e!3535003)))

(declare-fun b!5751957 () Bool)

(assert (=> b!5751957 (= e!3535005 (+ 1 call!440910))))

(declare-fun b!5751958 () Bool)

(assert (=> b!5751958 (= e!3535006 (> lt!2287443 call!440912))))

(declare-fun b!5751959 () Bool)

(declare-fun c!1016117 () Bool)

(assert (=> b!5751959 (= c!1016117 ((_ is Star!15761) r!7292))))

(assert (=> b!5751959 (= e!3535008 e!3535006)))

(declare-fun b!5751960 () Bool)

(declare-fun e!3535010 () Bool)

(assert (=> b!5751960 (= e!3535010 e!3535011)))

(assert (=> b!5751960 (= c!1016122 ((_ is Union!15761) r!7292))))

(declare-fun d!1812704 () Bool)

(assert (=> d!1812704 e!3535010))

(declare-fun res!2428469 () Bool)

(assert (=> d!1812704 (=> (not res!2428469) (not e!3535010))))

(assert (=> d!1812704 (= res!2428469 (> lt!2287443 0))))

(assert (=> d!1812704 (= lt!2287443 e!3535004)))

(declare-fun c!1016121 () Bool)

(assert (=> d!1812704 (= c!1016121 ((_ is ElementMatch!15761) r!7292))))

(assert (=> d!1812704 (= (regexDepth!238 r!7292) lt!2287443)))

(declare-fun b!5751951 () Bool)

(assert (=> b!5751951 (= e!3535004 1)))

(declare-fun bm!440909 () Bool)

(assert (=> bm!440909 (= call!440911 (regexDepth!238 (ite c!1016122 (regTwo!32035 r!7292) (regTwo!32034 r!7292))))))

(declare-fun bm!440910 () Bool)

(assert (=> bm!440910 (= call!440915 call!440913)))

(assert (= (and d!1812704 c!1016121) b!5751951))

(assert (= (and d!1812704 (not c!1016121)) b!5751946))

(assert (= (and b!5751946 c!1016123) b!5751949))

(assert (= (and b!5751946 (not c!1016123)) b!5751947))

(assert (= (and b!5751947 c!1016120) b!5751957))

(assert (= (and b!5751947 (not c!1016120)) b!5751948))

(assert (= (and b!5751948 c!1016118) b!5751953))

(assert (= (and b!5751948 (not c!1016118)) b!5751955))

(assert (= (or b!5751957 b!5751953) bm!440904))

(assert (= (or b!5751957 b!5751953) bm!440910))

(assert (= (or b!5751957 b!5751953) bm!440908))

(assert (= (or b!5751949 bm!440910) bm!440906))

(assert (= (and d!1812704 res!2428469) b!5751960))

(assert (= (and b!5751960 c!1016122) b!5751950))

(assert (= (and b!5751960 (not c!1016122)) b!5751954))

(assert (= (and b!5751950 res!2428468) b!5751945))

(assert (= (and b!5751954 c!1016119) b!5751956))

(assert (= (and b!5751954 (not c!1016119)) b!5751959))

(assert (= (and b!5751956 res!2428470) b!5751952))

(assert (= (and b!5751959 c!1016117) b!5751958))

(assert (= (and b!5751959 (not c!1016117)) b!5751944))

(assert (= (or b!5751956 b!5751958) bm!440905))

(assert (= (or b!5751945 b!5751952) bm!440909))

(assert (= (or b!5751950 bm!440905) bm!440907))

(declare-fun m!6701776 () Bool)

(assert (=> bm!440907 m!6701776))

(declare-fun m!6701778 () Bool)

(assert (=> bm!440908 m!6701778))

(declare-fun m!6701780 () Bool)

(assert (=> bm!440906 m!6701780))

(declare-fun m!6701782 () Bool)

(assert (=> bm!440909 m!6701782))

(declare-fun m!6701784 () Bool)

(assert (=> bm!440904 m!6701784))

(assert (=> b!5750998 d!1812704))

(declare-fun b!5751961 () Bool)

(declare-fun e!3535016 () Bool)

(declare-fun lt!2287444 () Int)

(assert (=> b!5751961 (= e!3535016 (= lt!2287444 1))))

(declare-fun b!5751962 () Bool)

(declare-fun e!3535022 () Bool)

(declare-fun call!440918 () Int)

(assert (=> b!5751962 (= e!3535022 (> lt!2287444 call!440918))))

(declare-fun bm!440911 () Bool)

(declare-fun call!440921 () Int)

(declare-fun c!1016127 () Bool)

(assert (=> bm!440911 (= call!440921 (regexDepth!238 (ite c!1016127 (regTwo!32035 lt!2287295) (regOne!32034 lt!2287295))))))

(declare-fun bm!440912 () Bool)

(declare-fun call!440919 () Int)

(declare-fun call!440916 () Int)

(assert (=> bm!440912 (= call!440919 call!440916)))

(declare-fun b!5751963 () Bool)

(declare-fun e!3535014 () Int)

(declare-fun e!3535017 () Int)

(assert (=> b!5751963 (= e!3535014 e!3535017)))

(declare-fun c!1016130 () Bool)

(assert (=> b!5751963 (= c!1016130 ((_ is Star!15761) lt!2287295))))

(declare-fun b!5751964 () Bool)

(assert (=> b!5751964 (= c!1016127 ((_ is Union!15761) lt!2287295))))

(declare-fun e!3535015 () Int)

(assert (=> b!5751964 (= e!3535017 e!3535015)))

(declare-fun b!5751965 () Bool)

(declare-fun e!3535019 () Int)

(assert (=> b!5751965 (= e!3535015 e!3535019)))

(declare-fun c!1016125 () Bool)

(assert (=> b!5751965 (= c!1016125 ((_ is Concat!24606) lt!2287295))))

(declare-fun call!440920 () Int)

(declare-fun bm!440913 () Bool)

(assert (=> bm!440913 (= call!440920 (regexDepth!238 (ite c!1016130 (reg!16090 lt!2287295) (ite c!1016127 (regOne!32035 lt!2287295) (regTwo!32034 lt!2287295)))))))

(declare-fun b!5751966 () Bool)

(assert (=> b!5751966 (= e!3535017 (+ 1 call!440920))))

(declare-fun b!5751967 () Bool)

(declare-fun e!3535021 () Bool)

(assert (=> b!5751967 (= e!3535021 e!3535022)))

(declare-fun res!2428471 () Bool)

(assert (=> b!5751967 (= res!2428471 (> lt!2287444 call!440916))))

(assert (=> b!5751967 (=> (not res!2428471) (not e!3535022))))

(declare-fun b!5751969 () Bool)

(declare-fun e!3535013 () Bool)

(assert (=> b!5751969 (= e!3535013 (> lt!2287444 call!440918))))

(declare-fun b!5751970 () Bool)

(declare-fun call!440917 () Int)

(assert (=> b!5751970 (= e!3535019 (+ 1 call!440917))))

(declare-fun b!5751971 () Bool)

(declare-fun e!3535018 () Bool)

(assert (=> b!5751971 (= e!3535021 e!3535018)))

(declare-fun c!1016126 () Bool)

(assert (=> b!5751971 (= c!1016126 ((_ is Concat!24606) lt!2287295))))

(declare-fun c!1016129 () Bool)

(declare-fun bm!440914 () Bool)

(assert (=> bm!440914 (= call!440916 (regexDepth!238 (ite c!1016129 (regOne!32035 lt!2287295) (ite c!1016126 (regOne!32034 lt!2287295) (reg!16090 lt!2287295)))))))

(declare-fun bm!440915 () Bool)

(declare-fun call!440922 () Int)

(assert (=> bm!440915 (= call!440917 (maxBigInt!0 (ite c!1016127 call!440922 call!440921) (ite c!1016127 call!440921 call!440922)))))

(declare-fun b!5751972 () Bool)

(assert (=> b!5751972 (= e!3535019 1)))

(declare-fun b!5751973 () Bool)

(declare-fun res!2428473 () Bool)

(assert (=> b!5751973 (=> (not res!2428473) (not e!3535013))))

(assert (=> b!5751973 (= res!2428473 (> lt!2287444 call!440919))))

(assert (=> b!5751973 (= e!3535018 e!3535013)))

(declare-fun b!5751974 () Bool)

(assert (=> b!5751974 (= e!3535015 (+ 1 call!440917))))

(declare-fun b!5751975 () Bool)

(assert (=> b!5751975 (= e!3535016 (> lt!2287444 call!440919))))

(declare-fun b!5751976 () Bool)

(declare-fun c!1016124 () Bool)

(assert (=> b!5751976 (= c!1016124 ((_ is Star!15761) lt!2287295))))

(assert (=> b!5751976 (= e!3535018 e!3535016)))

(declare-fun b!5751977 () Bool)

(declare-fun e!3535020 () Bool)

(assert (=> b!5751977 (= e!3535020 e!3535021)))

(assert (=> b!5751977 (= c!1016129 ((_ is Union!15761) lt!2287295))))

(declare-fun d!1812706 () Bool)

(assert (=> d!1812706 e!3535020))

(declare-fun res!2428472 () Bool)

(assert (=> d!1812706 (=> (not res!2428472) (not e!3535020))))

(assert (=> d!1812706 (= res!2428472 (> lt!2287444 0))))

(assert (=> d!1812706 (= lt!2287444 e!3535014)))

(declare-fun c!1016128 () Bool)

(assert (=> d!1812706 (= c!1016128 ((_ is ElementMatch!15761) lt!2287295))))

(assert (=> d!1812706 (= (regexDepth!238 lt!2287295) lt!2287444)))

(declare-fun b!5751968 () Bool)

(assert (=> b!5751968 (= e!3535014 1)))

(declare-fun bm!440916 () Bool)

(assert (=> bm!440916 (= call!440918 (regexDepth!238 (ite c!1016129 (regTwo!32035 lt!2287295) (regTwo!32034 lt!2287295))))))

(declare-fun bm!440917 () Bool)

(assert (=> bm!440917 (= call!440922 call!440920)))

(assert (= (and d!1812706 c!1016128) b!5751968))

(assert (= (and d!1812706 (not c!1016128)) b!5751963))

(assert (= (and b!5751963 c!1016130) b!5751966))

(assert (= (and b!5751963 (not c!1016130)) b!5751964))

(assert (= (and b!5751964 c!1016127) b!5751974))

(assert (= (and b!5751964 (not c!1016127)) b!5751965))

(assert (= (and b!5751965 c!1016125) b!5751970))

(assert (= (and b!5751965 (not c!1016125)) b!5751972))

(assert (= (or b!5751974 b!5751970) bm!440911))

(assert (= (or b!5751974 b!5751970) bm!440917))

(assert (= (or b!5751974 b!5751970) bm!440915))

(assert (= (or b!5751966 bm!440917) bm!440913))

(assert (= (and d!1812706 res!2428472) b!5751977))

(assert (= (and b!5751977 c!1016129) b!5751967))

(assert (= (and b!5751977 (not c!1016129)) b!5751971))

(assert (= (and b!5751967 res!2428471) b!5751962))

(assert (= (and b!5751971 c!1016126) b!5751973))

(assert (= (and b!5751971 (not c!1016126)) b!5751976))

(assert (= (and b!5751973 res!2428473) b!5751969))

(assert (= (and b!5751976 c!1016124) b!5751975))

(assert (= (and b!5751976 (not c!1016124)) b!5751961))

(assert (= (or b!5751973 b!5751975) bm!440912))

(assert (= (or b!5751962 b!5751969) bm!440916))

(assert (= (or b!5751967 bm!440912) bm!440914))

(declare-fun m!6701786 () Bool)

(assert (=> bm!440914 m!6701786))

(declare-fun m!6701788 () Bool)

(assert (=> bm!440915 m!6701788))

(declare-fun m!6701790 () Bool)

(assert (=> bm!440913 m!6701790))

(declare-fun m!6701792 () Bool)

(assert (=> bm!440916 m!6701792))

(declare-fun m!6701794 () Bool)

(assert (=> bm!440911 m!6701794))

(assert (=> b!5750998 d!1812706))

(declare-fun bs!1347284 () Bool)

(declare-fun d!1812708 () Bool)

(assert (= bs!1347284 (and d!1812708 d!1812606)))

(declare-fun lambda!312135 () Int)

(assert (=> bs!1347284 (= lambda!312135 lambda!312098)))

(declare-fun bs!1347285 () Bool)

(assert (= bs!1347285 (and d!1812708 d!1812600)))

(assert (=> bs!1347285 (= lambda!312135 lambda!312091)))

(declare-fun bs!1347286 () Bool)

(assert (= bs!1347286 (and d!1812708 d!1812602)))

(assert (=> bs!1347286 (= lambda!312135 lambda!312094)))

(declare-fun bs!1347287 () Bool)

(assert (= bs!1347287 (and d!1812708 d!1812616)))

(assert (=> bs!1347287 (= lambda!312135 lambda!312104)))

(declare-fun bs!1347288 () Bool)

(assert (= bs!1347288 (and d!1812708 d!1812604)))

(assert (=> bs!1347288 (= lambda!312135 lambda!312097)))

(declare-fun b!5751978 () Bool)

(declare-fun e!3535026 () Regex!15761)

(assert (=> b!5751978 (= e!3535026 (h!69907 (t!376913 (exprs!5645 (h!69908 zl!343)))))))

(declare-fun b!5751979 () Bool)

(declare-fun e!3535024 () Bool)

(declare-fun e!3535025 () Bool)

(assert (=> b!5751979 (= e!3535024 e!3535025)))

(declare-fun c!1016132 () Bool)

(assert (=> b!5751979 (= c!1016132 (isEmpty!35342 (t!376913 (exprs!5645 (h!69908 zl!343)))))))

(declare-fun b!5751980 () Bool)

(declare-fun lt!2287445 () Regex!15761)

(assert (=> b!5751980 (= e!3535025 (isEmptyExpr!1251 lt!2287445))))

(declare-fun b!5751981 () Bool)

(declare-fun e!3535027 () Bool)

(assert (=> b!5751981 (= e!3535027 (= lt!2287445 (head!12167 (t!376913 (exprs!5645 (h!69908 zl!343))))))))

(declare-fun b!5751982 () Bool)

(assert (=> b!5751982 (= e!3535027 (isConcat!774 lt!2287445))))

(declare-fun b!5751983 () Bool)

(declare-fun e!3535023 () Regex!15761)

(assert (=> b!5751983 (= e!3535023 (Concat!24606 (h!69907 (t!376913 (exprs!5645 (h!69908 zl!343)))) (generalisedConcat!1376 (t!376913 (t!376913 (exprs!5645 (h!69908 zl!343)))))))))

(assert (=> d!1812708 e!3535024))

(declare-fun res!2428474 () Bool)

(assert (=> d!1812708 (=> (not res!2428474) (not e!3535024))))

(assert (=> d!1812708 (= res!2428474 (validRegex!7497 lt!2287445))))

(assert (=> d!1812708 (= lt!2287445 e!3535026)))

(declare-fun c!1016133 () Bool)

(declare-fun e!3535028 () Bool)

(assert (=> d!1812708 (= c!1016133 e!3535028)))

(declare-fun res!2428475 () Bool)

(assert (=> d!1812708 (=> (not res!2428475) (not e!3535028))))

(assert (=> d!1812708 (= res!2428475 ((_ is Cons!63459) (t!376913 (exprs!5645 (h!69908 zl!343)))))))

(assert (=> d!1812708 (forall!14881 (t!376913 (exprs!5645 (h!69908 zl!343))) lambda!312135)))

(assert (=> d!1812708 (= (generalisedConcat!1376 (t!376913 (exprs!5645 (h!69908 zl!343)))) lt!2287445)))

(declare-fun b!5751984 () Bool)

(assert (=> b!5751984 (= e!3535023 EmptyExpr!15761)))

(declare-fun b!5751985 () Bool)

(assert (=> b!5751985 (= e!3535025 e!3535027)))

(declare-fun c!1016131 () Bool)

(assert (=> b!5751985 (= c!1016131 (isEmpty!35342 (tail!11262 (t!376913 (exprs!5645 (h!69908 zl!343))))))))

(declare-fun b!5751986 () Bool)

(assert (=> b!5751986 (= e!3535028 (isEmpty!35342 (t!376913 (t!376913 (exprs!5645 (h!69908 zl!343))))))))

(declare-fun b!5751987 () Bool)

(assert (=> b!5751987 (= e!3535026 e!3535023)))

(declare-fun c!1016134 () Bool)

(assert (=> b!5751987 (= c!1016134 ((_ is Cons!63459) (t!376913 (exprs!5645 (h!69908 zl!343)))))))

(assert (= (and d!1812708 res!2428475) b!5751986))

(assert (= (and d!1812708 c!1016133) b!5751978))

(assert (= (and d!1812708 (not c!1016133)) b!5751987))

(assert (= (and b!5751987 c!1016134) b!5751983))

(assert (= (and b!5751987 (not c!1016134)) b!5751984))

(assert (= (and d!1812708 res!2428474) b!5751979))

(assert (= (and b!5751979 c!1016132) b!5751980))

(assert (= (and b!5751979 (not c!1016132)) b!5751985))

(assert (= (and b!5751985 c!1016131) b!5751981))

(assert (= (and b!5751985 (not c!1016131)) b!5751982))

(declare-fun m!6701796 () Bool)

(assert (=> b!5751983 m!6701796))

(declare-fun m!6701798 () Bool)

(assert (=> b!5751985 m!6701798))

(assert (=> b!5751985 m!6701798))

(declare-fun m!6701800 () Bool)

(assert (=> b!5751985 m!6701800))

(declare-fun m!6701802 () Bool)

(assert (=> d!1812708 m!6701802))

(declare-fun m!6701804 () Bool)

(assert (=> d!1812708 m!6701804))

(assert (=> b!5751979 m!6701000))

(declare-fun m!6701806 () Bool)

(assert (=> b!5751981 m!6701806))

(declare-fun m!6701808 () Bool)

(assert (=> b!5751982 m!6701808))

(declare-fun m!6701810 () Bool)

(assert (=> b!5751986 m!6701810))

(declare-fun m!6701812 () Bool)

(assert (=> b!5751980 m!6701812))

(assert (=> b!5750998 d!1812708))

(declare-fun bm!440918 () Bool)

(declare-fun call!440923 () Bool)

(assert (=> bm!440918 (= call!440923 (isEmpty!35345 s!2326))))

(declare-fun b!5751988 () Bool)

(declare-fun e!3535031 () Bool)

(declare-fun lt!2287446 () Bool)

(assert (=> b!5751988 (= e!3535031 (not lt!2287446))))

(declare-fun d!1812710 () Bool)

(declare-fun e!3535030 () Bool)

(assert (=> d!1812710 e!3535030))

(declare-fun c!1016135 () Bool)

(assert (=> d!1812710 (= c!1016135 ((_ is EmptyExpr!15761) (regTwo!32034 r!7292)))))

(declare-fun e!3535035 () Bool)

(assert (=> d!1812710 (= lt!2287446 e!3535035)))

(declare-fun c!1016136 () Bool)

(assert (=> d!1812710 (= c!1016136 (isEmpty!35345 s!2326))))

(assert (=> d!1812710 (validRegex!7497 (regTwo!32034 r!7292))))

(assert (=> d!1812710 (= (matchR!7946 (regTwo!32034 r!7292) s!2326) lt!2287446)))

(declare-fun b!5751989 () Bool)

(declare-fun e!3535029 () Bool)

(assert (=> b!5751989 (= e!3535029 (not (= (head!12166 s!2326) (c!1015817 (regTwo!32034 r!7292)))))))

(declare-fun b!5751990 () Bool)

(declare-fun e!3535032 () Bool)

(declare-fun e!3535033 () Bool)

(assert (=> b!5751990 (= e!3535032 e!3535033)))

(declare-fun res!2428476 () Bool)

(assert (=> b!5751990 (=> (not res!2428476) (not e!3535033))))

(assert (=> b!5751990 (= res!2428476 (not lt!2287446))))

(declare-fun b!5751991 () Bool)

(declare-fun e!3535034 () Bool)

(assert (=> b!5751991 (= e!3535034 (= (head!12166 s!2326) (c!1015817 (regTwo!32034 r!7292))))))

(declare-fun b!5751992 () Bool)

(assert (=> b!5751992 (= e!3535035 (matchR!7946 (derivativeStep!4546 (regTwo!32034 r!7292) (head!12166 s!2326)) (tail!11261 s!2326)))))

(declare-fun b!5751993 () Bool)

(assert (=> b!5751993 (= e!3535033 e!3535029)))

(declare-fun res!2428482 () Bool)

(assert (=> b!5751993 (=> res!2428482 e!3535029)))

(assert (=> b!5751993 (= res!2428482 call!440923)))

(declare-fun b!5751994 () Bool)

(assert (=> b!5751994 (= e!3535030 (= lt!2287446 call!440923))))

(declare-fun b!5751995 () Bool)

(declare-fun res!2428480 () Bool)

(assert (=> b!5751995 (=> (not res!2428480) (not e!3535034))))

(assert (=> b!5751995 (= res!2428480 (isEmpty!35345 (tail!11261 s!2326)))))

(declare-fun b!5751996 () Bool)

(assert (=> b!5751996 (= e!3535030 e!3535031)))

(declare-fun c!1016137 () Bool)

(assert (=> b!5751996 (= c!1016137 ((_ is EmptyLang!15761) (regTwo!32034 r!7292)))))

(declare-fun b!5751997 () Bool)

(assert (=> b!5751997 (= e!3535035 (nullable!5793 (regTwo!32034 r!7292)))))

(declare-fun b!5751998 () Bool)

(declare-fun res!2428477 () Bool)

(assert (=> b!5751998 (=> res!2428477 e!3535029)))

(assert (=> b!5751998 (= res!2428477 (not (isEmpty!35345 (tail!11261 s!2326))))))

(declare-fun b!5751999 () Bool)

(declare-fun res!2428481 () Bool)

(assert (=> b!5751999 (=> res!2428481 e!3535032)))

(assert (=> b!5751999 (= res!2428481 (not ((_ is ElementMatch!15761) (regTwo!32034 r!7292))))))

(assert (=> b!5751999 (= e!3535031 e!3535032)))

(declare-fun b!5752000 () Bool)

(declare-fun res!2428483 () Bool)

(assert (=> b!5752000 (=> (not res!2428483) (not e!3535034))))

(assert (=> b!5752000 (= res!2428483 (not call!440923))))

(declare-fun b!5752001 () Bool)

(declare-fun res!2428479 () Bool)

(assert (=> b!5752001 (=> res!2428479 e!3535032)))

(assert (=> b!5752001 (= res!2428479 e!3535034)))

(declare-fun res!2428478 () Bool)

(assert (=> b!5752001 (=> (not res!2428478) (not e!3535034))))

(assert (=> b!5752001 (= res!2428478 lt!2287446)))

(assert (= (and d!1812710 c!1016136) b!5751997))

(assert (= (and d!1812710 (not c!1016136)) b!5751992))

(assert (= (and d!1812710 c!1016135) b!5751994))

(assert (= (and d!1812710 (not c!1016135)) b!5751996))

(assert (= (and b!5751996 c!1016137) b!5751988))

(assert (= (and b!5751996 (not c!1016137)) b!5751999))

(assert (= (and b!5751999 (not res!2428481)) b!5752001))

(assert (= (and b!5752001 res!2428478) b!5752000))

(assert (= (and b!5752000 res!2428483) b!5751995))

(assert (= (and b!5751995 res!2428480) b!5751991))

(assert (= (and b!5752001 (not res!2428479)) b!5751990))

(assert (= (and b!5751990 res!2428476) b!5751993))

(assert (= (and b!5751993 (not res!2428482)) b!5751998))

(assert (= (and b!5751998 (not res!2428477)) b!5751989))

(assert (= (or b!5751994 b!5751993 b!5752000) bm!440918))

(assert (=> d!1812710 m!6701472))

(declare-fun m!6701814 () Bool)

(assert (=> d!1812710 m!6701814))

(assert (=> b!5751998 m!6701480))

(assert (=> b!5751998 m!6701480))

(assert (=> b!5751998 m!6701646))

(assert (=> b!5751989 m!6701476))

(assert (=> bm!440918 m!6701472))

(assert (=> b!5751992 m!6701476))

(assert (=> b!5751992 m!6701476))

(declare-fun m!6701816 () Bool)

(assert (=> b!5751992 m!6701816))

(assert (=> b!5751992 m!6701480))

(assert (=> b!5751992 m!6701816))

(assert (=> b!5751992 m!6701480))

(declare-fun m!6701818 () Bool)

(assert (=> b!5751992 m!6701818))

(declare-fun m!6701820 () Bool)

(assert (=> b!5751997 m!6701820))

(assert (=> b!5751995 m!6701480))

(assert (=> b!5751995 m!6701480))

(assert (=> b!5751995 m!6701646))

(assert (=> b!5751991 m!6701476))

(assert (=> b!5750999 d!1812710))

(declare-fun bm!440919 () Bool)

(declare-fun call!440924 () Bool)

(assert (=> bm!440919 (= call!440924 (isEmpty!35345 s!2326))))

(declare-fun b!5752002 () Bool)

(declare-fun e!3535038 () Bool)

(declare-fun lt!2287447 () Bool)

(assert (=> b!5752002 (= e!3535038 (not lt!2287447))))

(declare-fun d!1812712 () Bool)

(declare-fun e!3535037 () Bool)

(assert (=> d!1812712 e!3535037))

(declare-fun c!1016138 () Bool)

(assert (=> d!1812712 (= c!1016138 ((_ is EmptyExpr!15761) lt!2287295))))

(declare-fun e!3535042 () Bool)

(assert (=> d!1812712 (= lt!2287447 e!3535042)))

(declare-fun c!1016139 () Bool)

(assert (=> d!1812712 (= c!1016139 (isEmpty!35345 s!2326))))

(assert (=> d!1812712 (validRegex!7497 lt!2287295)))

(assert (=> d!1812712 (= (matchR!7946 lt!2287295 s!2326) lt!2287447)))

(declare-fun b!5752003 () Bool)

(declare-fun e!3535036 () Bool)

(assert (=> b!5752003 (= e!3535036 (not (= (head!12166 s!2326) (c!1015817 lt!2287295))))))

(declare-fun b!5752004 () Bool)

(declare-fun e!3535039 () Bool)

(declare-fun e!3535040 () Bool)

(assert (=> b!5752004 (= e!3535039 e!3535040)))

(declare-fun res!2428484 () Bool)

(assert (=> b!5752004 (=> (not res!2428484) (not e!3535040))))

(assert (=> b!5752004 (= res!2428484 (not lt!2287447))))

(declare-fun b!5752005 () Bool)

(declare-fun e!3535041 () Bool)

(assert (=> b!5752005 (= e!3535041 (= (head!12166 s!2326) (c!1015817 lt!2287295)))))

(declare-fun b!5752006 () Bool)

(assert (=> b!5752006 (= e!3535042 (matchR!7946 (derivativeStep!4546 lt!2287295 (head!12166 s!2326)) (tail!11261 s!2326)))))

(declare-fun b!5752007 () Bool)

(assert (=> b!5752007 (= e!3535040 e!3535036)))

(declare-fun res!2428490 () Bool)

(assert (=> b!5752007 (=> res!2428490 e!3535036)))

(assert (=> b!5752007 (= res!2428490 call!440924)))

(declare-fun b!5752008 () Bool)

(assert (=> b!5752008 (= e!3535037 (= lt!2287447 call!440924))))

(declare-fun b!5752009 () Bool)

(declare-fun res!2428488 () Bool)

(assert (=> b!5752009 (=> (not res!2428488) (not e!3535041))))

(assert (=> b!5752009 (= res!2428488 (isEmpty!35345 (tail!11261 s!2326)))))

(declare-fun b!5752010 () Bool)

(assert (=> b!5752010 (= e!3535037 e!3535038)))

(declare-fun c!1016140 () Bool)

(assert (=> b!5752010 (= c!1016140 ((_ is EmptyLang!15761) lt!2287295))))

(declare-fun b!5752011 () Bool)

(assert (=> b!5752011 (= e!3535042 (nullable!5793 lt!2287295))))

(declare-fun b!5752012 () Bool)

(declare-fun res!2428485 () Bool)

(assert (=> b!5752012 (=> res!2428485 e!3535036)))

(assert (=> b!5752012 (= res!2428485 (not (isEmpty!35345 (tail!11261 s!2326))))))

(declare-fun b!5752013 () Bool)

(declare-fun res!2428489 () Bool)

(assert (=> b!5752013 (=> res!2428489 e!3535039)))

(assert (=> b!5752013 (= res!2428489 (not ((_ is ElementMatch!15761) lt!2287295)))))

(assert (=> b!5752013 (= e!3535038 e!3535039)))

(declare-fun b!5752014 () Bool)

(declare-fun res!2428491 () Bool)

(assert (=> b!5752014 (=> (not res!2428491) (not e!3535041))))

(assert (=> b!5752014 (= res!2428491 (not call!440924))))

(declare-fun b!5752015 () Bool)

(declare-fun res!2428487 () Bool)

(assert (=> b!5752015 (=> res!2428487 e!3535039)))

(assert (=> b!5752015 (= res!2428487 e!3535041)))

(declare-fun res!2428486 () Bool)

(assert (=> b!5752015 (=> (not res!2428486) (not e!3535041))))

(assert (=> b!5752015 (= res!2428486 lt!2287447)))

(assert (= (and d!1812712 c!1016139) b!5752011))

(assert (= (and d!1812712 (not c!1016139)) b!5752006))

(assert (= (and d!1812712 c!1016138) b!5752008))

(assert (= (and d!1812712 (not c!1016138)) b!5752010))

(assert (= (and b!5752010 c!1016140) b!5752002))

(assert (= (and b!5752010 (not c!1016140)) b!5752013))

(assert (= (and b!5752013 (not res!2428489)) b!5752015))

(assert (= (and b!5752015 res!2428486) b!5752014))

(assert (= (and b!5752014 res!2428491) b!5752009))

(assert (= (and b!5752009 res!2428488) b!5752005))

(assert (= (and b!5752015 (not res!2428487)) b!5752004))

(assert (= (and b!5752004 res!2428484) b!5752007))

(assert (= (and b!5752007 (not res!2428490)) b!5752012))

(assert (= (and b!5752012 (not res!2428485)) b!5752003))

(assert (= (or b!5752008 b!5752007 b!5752014) bm!440919))

(assert (=> d!1812712 m!6701472))

(declare-fun m!6701822 () Bool)

(assert (=> d!1812712 m!6701822))

(assert (=> b!5752012 m!6701480))

(assert (=> b!5752012 m!6701480))

(assert (=> b!5752012 m!6701646))

(assert (=> b!5752003 m!6701476))

(assert (=> bm!440919 m!6701472))

(assert (=> b!5752006 m!6701476))

(assert (=> b!5752006 m!6701476))

(declare-fun m!6701824 () Bool)

(assert (=> b!5752006 m!6701824))

(assert (=> b!5752006 m!6701480))

(assert (=> b!5752006 m!6701824))

(assert (=> b!5752006 m!6701480))

(declare-fun m!6701826 () Bool)

(assert (=> b!5752006 m!6701826))

(declare-fun m!6701828 () Bool)

(assert (=> b!5752011 m!6701828))

(assert (=> b!5752009 m!6701480))

(assert (=> b!5752009 m!6701480))

(assert (=> b!5752009 m!6701646))

(assert (=> b!5752005 m!6701476))

(assert (=> b!5750999 d!1812712))

(declare-fun d!1812714 () Bool)

(declare-fun c!1016141 () Bool)

(assert (=> d!1812714 (= c!1016141 (isEmpty!35345 s!2326))))

(declare-fun e!3535043 () Bool)

(assert (=> d!1812714 (= (matchZipper!1899 lt!2287285 s!2326) e!3535043)))

(declare-fun b!5752016 () Bool)

(assert (=> b!5752016 (= e!3535043 (nullableZipper!1692 lt!2287285))))

(declare-fun b!5752017 () Bool)

(assert (=> b!5752017 (= e!3535043 (matchZipper!1899 (derivationStepZipper!1844 lt!2287285 (head!12166 s!2326)) (tail!11261 s!2326)))))

(assert (= (and d!1812714 c!1016141) b!5752016))

(assert (= (and d!1812714 (not c!1016141)) b!5752017))

(assert (=> d!1812714 m!6701472))

(declare-fun m!6701830 () Bool)

(assert (=> b!5752016 m!6701830))

(assert (=> b!5752017 m!6701476))

(assert (=> b!5752017 m!6701476))

(declare-fun m!6701832 () Bool)

(assert (=> b!5752017 m!6701832))

(assert (=> b!5752017 m!6701480))

(assert (=> b!5752017 m!6701832))

(assert (=> b!5752017 m!6701480))

(declare-fun m!6701834 () Bool)

(assert (=> b!5752017 m!6701834))

(assert (=> b!5750999 d!1812714))

(declare-fun d!1812716 () Bool)

(assert (=> d!1812716 (= (matchR!7946 lt!2287295 s!2326) (matchZipper!1899 lt!2287285 s!2326))))

(declare-fun lt!2287450 () Unit!156576)

(declare-fun choose!43615 ((InoxSet Context!10290) List!63584 Regex!15761 List!63582) Unit!156576)

(assert (=> d!1812716 (= lt!2287450 (choose!43615 lt!2287285 lt!2287267 lt!2287295 s!2326))))

(assert (=> d!1812716 (validRegex!7497 lt!2287295)))

(assert (=> d!1812716 (= (theoremZipperRegexEquiv!673 lt!2287285 lt!2287267 lt!2287295 s!2326) lt!2287450)))

(declare-fun bs!1347289 () Bool)

(assert (= bs!1347289 d!1812716))

(assert (=> bs!1347289 m!6701042))

(assert (=> bs!1347289 m!6701044))

(declare-fun m!6701836 () Bool)

(assert (=> bs!1347289 m!6701836))

(assert (=> bs!1347289 m!6701822))

(assert (=> b!5750999 d!1812716))

(declare-fun b!5752022 () Bool)

(declare-fun e!3535046 () Bool)

(declare-fun tp!1589811 () Bool)

(assert (=> b!5752022 (= e!3535046 (and tp_is_empty!40775 tp!1589811))))

(assert (=> b!5750971 (= tp!1589749 e!3535046)))

(assert (= (and b!5750971 ((_ is Cons!63458) (t!376912 s!2326))) b!5752022))

(declare-fun b!5752027 () Bool)

(declare-fun e!3535049 () Bool)

(declare-fun tp!1589816 () Bool)

(declare-fun tp!1589817 () Bool)

(assert (=> b!5752027 (= e!3535049 (and tp!1589816 tp!1589817))))

(assert (=> b!5751002 (= tp!1589742 e!3535049)))

(assert (= (and b!5751002 ((_ is Cons!63459) (exprs!5645 (h!69908 zl!343)))) b!5752027))

(declare-fun b!5752039 () Bool)

(declare-fun e!3535052 () Bool)

(declare-fun tp!1589828 () Bool)

(declare-fun tp!1589831 () Bool)

(assert (=> b!5752039 (= e!3535052 (and tp!1589828 tp!1589831))))

(declare-fun b!5752041 () Bool)

(declare-fun tp!1589830 () Bool)

(declare-fun tp!1589832 () Bool)

(assert (=> b!5752041 (= e!3535052 (and tp!1589830 tp!1589832))))

(assert (=> b!5751007 (= tp!1589745 e!3535052)))

(declare-fun b!5752040 () Bool)

(declare-fun tp!1589829 () Bool)

(assert (=> b!5752040 (= e!3535052 tp!1589829)))

(declare-fun b!5752038 () Bool)

(assert (=> b!5752038 (= e!3535052 tp_is_empty!40775)))

(assert (= (and b!5751007 ((_ is ElementMatch!15761) (regOne!32034 r!7292))) b!5752038))

(assert (= (and b!5751007 ((_ is Concat!24606) (regOne!32034 r!7292))) b!5752039))

(assert (= (and b!5751007 ((_ is Star!15761) (regOne!32034 r!7292))) b!5752040))

(assert (= (and b!5751007 ((_ is Union!15761) (regOne!32034 r!7292))) b!5752041))

(declare-fun b!5752043 () Bool)

(declare-fun e!3535053 () Bool)

(declare-fun tp!1589833 () Bool)

(declare-fun tp!1589836 () Bool)

(assert (=> b!5752043 (= e!3535053 (and tp!1589833 tp!1589836))))

(declare-fun b!5752045 () Bool)

(declare-fun tp!1589835 () Bool)

(declare-fun tp!1589837 () Bool)

(assert (=> b!5752045 (= e!3535053 (and tp!1589835 tp!1589837))))

(assert (=> b!5751007 (= tp!1589750 e!3535053)))

(declare-fun b!5752044 () Bool)

(declare-fun tp!1589834 () Bool)

(assert (=> b!5752044 (= e!3535053 tp!1589834)))

(declare-fun b!5752042 () Bool)

(assert (=> b!5752042 (= e!3535053 tp_is_empty!40775)))

(assert (= (and b!5751007 ((_ is ElementMatch!15761) (regTwo!32034 r!7292))) b!5752042))

(assert (= (and b!5751007 ((_ is Concat!24606) (regTwo!32034 r!7292))) b!5752043))

(assert (= (and b!5751007 ((_ is Star!15761) (regTwo!32034 r!7292))) b!5752044))

(assert (= (and b!5751007 ((_ is Union!15761) (regTwo!32034 r!7292))) b!5752045))

(declare-fun condSetEmpty!38613 () Bool)

(assert (=> setNonEmpty!38607 (= condSetEmpty!38613 (= setRest!38607 ((as const (Array Context!10290 Bool)) false)))))

(declare-fun setRes!38613 () Bool)

(assert (=> setNonEmpty!38607 (= tp!1589746 setRes!38613)))

(declare-fun setIsEmpty!38613 () Bool)

(assert (=> setIsEmpty!38613 setRes!38613))

(declare-fun tp!1589843 () Bool)

(declare-fun setNonEmpty!38613 () Bool)

(declare-fun e!3535056 () Bool)

(declare-fun setElem!38613 () Context!10290)

(assert (=> setNonEmpty!38613 (= setRes!38613 (and tp!1589843 (inv!82649 setElem!38613) e!3535056))))

(declare-fun setRest!38613 () (InoxSet Context!10290))

(assert (=> setNonEmpty!38613 (= setRest!38607 ((_ map or) (store ((as const (Array Context!10290 Bool)) false) setElem!38613 true) setRest!38613))))

(declare-fun b!5752050 () Bool)

(declare-fun tp!1589842 () Bool)

(assert (=> b!5752050 (= e!3535056 tp!1589842)))

(assert (= (and setNonEmpty!38607 condSetEmpty!38613) setIsEmpty!38613))

(assert (= (and setNonEmpty!38607 (not condSetEmpty!38613)) setNonEmpty!38613))

(assert (= setNonEmpty!38613 b!5752050))

(declare-fun m!6701838 () Bool)

(assert (=> setNonEmpty!38613 m!6701838))

(declare-fun b!5752051 () Bool)

(declare-fun e!3535057 () Bool)

(declare-fun tp!1589844 () Bool)

(declare-fun tp!1589845 () Bool)

(assert (=> b!5752051 (= e!3535057 (and tp!1589844 tp!1589845))))

(assert (=> b!5751011 (= tp!1589747 e!3535057)))

(assert (= (and b!5751011 ((_ is Cons!63459) (exprs!5645 setElem!38607))) b!5752051))

(declare-fun b!5752059 () Bool)

(declare-fun e!3535063 () Bool)

(declare-fun tp!1589850 () Bool)

(assert (=> b!5752059 (= e!3535063 tp!1589850)))

(declare-fun b!5752058 () Bool)

(declare-fun tp!1589851 () Bool)

(declare-fun e!3535062 () Bool)

(assert (=> b!5752058 (= e!3535062 (and (inv!82649 (h!69908 (t!376914 zl!343))) e!3535063 tp!1589851))))

(assert (=> b!5750984 (= tp!1589743 e!3535062)))

(assert (= b!5752058 b!5752059))

(assert (= (and b!5750984 ((_ is Cons!63460) (t!376914 zl!343))) b!5752058))

(declare-fun m!6701840 () Bool)

(assert (=> b!5752058 m!6701840))

(declare-fun b!5752061 () Bool)

(declare-fun e!3535064 () Bool)

(declare-fun tp!1589852 () Bool)

(declare-fun tp!1589855 () Bool)

(assert (=> b!5752061 (= e!3535064 (and tp!1589852 tp!1589855))))

(declare-fun b!5752063 () Bool)

(declare-fun tp!1589854 () Bool)

(declare-fun tp!1589856 () Bool)

(assert (=> b!5752063 (= e!3535064 (and tp!1589854 tp!1589856))))

(assert (=> b!5750978 (= tp!1589741 e!3535064)))

(declare-fun b!5752062 () Bool)

(declare-fun tp!1589853 () Bool)

(assert (=> b!5752062 (= e!3535064 tp!1589853)))

(declare-fun b!5752060 () Bool)

(assert (=> b!5752060 (= e!3535064 tp_is_empty!40775)))

(assert (= (and b!5750978 ((_ is ElementMatch!15761) (regOne!32035 r!7292))) b!5752060))

(assert (= (and b!5750978 ((_ is Concat!24606) (regOne!32035 r!7292))) b!5752061))

(assert (= (and b!5750978 ((_ is Star!15761) (regOne!32035 r!7292))) b!5752062))

(assert (= (and b!5750978 ((_ is Union!15761) (regOne!32035 r!7292))) b!5752063))

(declare-fun b!5752065 () Bool)

(declare-fun e!3535065 () Bool)

(declare-fun tp!1589857 () Bool)

(declare-fun tp!1589860 () Bool)

(assert (=> b!5752065 (= e!3535065 (and tp!1589857 tp!1589860))))

(declare-fun b!5752067 () Bool)

(declare-fun tp!1589859 () Bool)

(declare-fun tp!1589861 () Bool)

(assert (=> b!5752067 (= e!3535065 (and tp!1589859 tp!1589861))))

(assert (=> b!5750978 (= tp!1589744 e!3535065)))

(declare-fun b!5752066 () Bool)

(declare-fun tp!1589858 () Bool)

(assert (=> b!5752066 (= e!3535065 tp!1589858)))

(declare-fun b!5752064 () Bool)

(assert (=> b!5752064 (= e!3535065 tp_is_empty!40775)))

(assert (= (and b!5750978 ((_ is ElementMatch!15761) (regTwo!32035 r!7292))) b!5752064))

(assert (= (and b!5750978 ((_ is Concat!24606) (regTwo!32035 r!7292))) b!5752065))

(assert (= (and b!5750978 ((_ is Star!15761) (regTwo!32035 r!7292))) b!5752066))

(assert (= (and b!5750978 ((_ is Union!15761) (regTwo!32035 r!7292))) b!5752067))

(declare-fun b!5752069 () Bool)

(declare-fun e!3535066 () Bool)

(declare-fun tp!1589862 () Bool)

(declare-fun tp!1589865 () Bool)

(assert (=> b!5752069 (= e!3535066 (and tp!1589862 tp!1589865))))

(declare-fun b!5752071 () Bool)

(declare-fun tp!1589864 () Bool)

(declare-fun tp!1589866 () Bool)

(assert (=> b!5752071 (= e!3535066 (and tp!1589864 tp!1589866))))

(assert (=> b!5751004 (= tp!1589748 e!3535066)))

(declare-fun b!5752070 () Bool)

(declare-fun tp!1589863 () Bool)

(assert (=> b!5752070 (= e!3535066 tp!1589863)))

(declare-fun b!5752068 () Bool)

(assert (=> b!5752068 (= e!3535066 tp_is_empty!40775)))

(assert (= (and b!5751004 ((_ is ElementMatch!15761) (reg!16090 r!7292))) b!5752068))

(assert (= (and b!5751004 ((_ is Concat!24606) (reg!16090 r!7292))) b!5752069))

(assert (= (and b!5751004 ((_ is Star!15761) (reg!16090 r!7292))) b!5752070))

(assert (= (and b!5751004 ((_ is Union!15761) (reg!16090 r!7292))) b!5752071))

(declare-fun b_lambda!217253 () Bool)

(assert (= b_lambda!217245 (or b!5750980 b_lambda!217253)))

(declare-fun bs!1347290 () Bool)

(declare-fun d!1812718 () Bool)

(assert (= bs!1347290 (and d!1812718 b!5750980)))

(assert (=> bs!1347290 (= (dynLambda!24837 lambda!312041 lt!2287276) (derivationStepZipperUp!1029 lt!2287276 (h!69906 s!2326)))))

(assert (=> bs!1347290 m!6701014))

(assert (=> d!1812648 d!1812718))

(declare-fun b_lambda!217255 () Bool)

(assert (= b_lambda!217249 (or b!5750980 b_lambda!217255)))

(declare-fun bs!1347291 () Bool)

(declare-fun d!1812720 () Bool)

(assert (= bs!1347291 (and d!1812720 b!5750980)))

(assert (=> bs!1347291 (= (dynLambda!24837 lambda!312041 lt!2287270) (derivationStepZipperUp!1029 lt!2287270 (h!69906 s!2326)))))

(assert (=> bs!1347291 m!6701058))

(assert (=> d!1812688 d!1812720))

(declare-fun b_lambda!217257 () Bool)

(assert (= b_lambda!217243 (or b!5750980 b_lambda!217257)))

(declare-fun bs!1347292 () Bool)

(declare-fun d!1812722 () Bool)

(assert (= bs!1347292 (and d!1812722 b!5750980)))

(assert (=> bs!1347292 (= (dynLambda!24837 lambda!312041 lt!2287277) (derivationStepZipperUp!1029 lt!2287277 (h!69906 s!2326)))))

(assert (=> bs!1347292 m!6700970))

(assert (=> d!1812612 d!1812722))

(declare-fun b_lambda!217259 () Bool)

(assert (= b_lambda!217247 (or b!5750980 b_lambda!217259)))

(declare-fun bs!1347293 () Bool)

(declare-fun d!1812724 () Bool)

(assert (= bs!1347293 (and d!1812724 b!5750980)))

(assert (=> bs!1347293 (= (dynLambda!24837 lambda!312041 lt!2287263) (derivationStepZipperUp!1029 lt!2287263 (h!69906 s!2326)))))

(assert (=> bs!1347293 m!6701064))

(assert (=> d!1812684 d!1812724))

(declare-fun b_lambda!217261 () Bool)

(assert (= b_lambda!217251 (or b!5750980 b_lambda!217261)))

(declare-fun bs!1347294 () Bool)

(declare-fun d!1812726 () Bool)

(assert (= bs!1347294 (and d!1812726 b!5750980)))

(assert (=> bs!1347294 (= (dynLambda!24837 lambda!312041 (h!69908 zl!343)) (derivationStepZipperUp!1029 (h!69908 zl!343) (h!69906 s!2326)))))

(assert (=> bs!1347294 m!6701012))

(assert (=> d!1812700 d!1812726))

(check-sat (not d!1812660) (not b!5751861) (not bm!440862) (not d!1812648) (not b!5751711) (not b!5751875) (not d!1812604) (not b!5752059) (not b!5751600) (not bm!440906) (not b!5751843) (not b!5751834) (not d!1812716) (not d!1812608) (not b!5751683) (not bm!440843) (not d!1812684) (not d!1812710) (not b!5751848) (not d!1812686) (not b!5751991) (not b!5752017) (not d!1812606) (not b!5751736) (not d!1812614) (not b!5751681) (not b!5751705) (not b!5751985) (not b!5751850) (not b!5751657) (not d!1812632) (not bm!440916) (not b!5751835) (not b!5751852) (not b!5751680) (not bm!440873) tp_is_empty!40775 (not b!5752070) (not d!1812644) (not b!5751882) (not bm!440888) (not b!5751656) (not b!5752058) (not b!5751819) (not bm!440882) (not bs!1347292) (not b!5751989) (not bm!440904) (not b!5751707) (not b!5751860) (not bm!440878) (not d!1812616) (not b!5751903) (not b!5751878) (not b!5752009) (not bm!440867) (not b!5752065) (not b!5751845) (not b!5752022) (not b!5751836) (not d!1812592) (not d!1812642) (not b!5751997) (not d!1812600) (not b!5751702) (not b!5751907) (not d!1812688) (not bm!440848) (not d!1812694) (not b!5752005) (not bm!440872) (not d!1812626) (not d!1812678) (not b!5751701) (not bm!440911) (not b!5752071) (not b!5751908) (not b_lambda!217255) (not b!5751979) (not bm!440889) (not bm!440909) (not d!1812622) (not d!1812628) (not d!1812640) (not b!5752050) (not b!5751602) (not b!5751708) (not bm!440914) (not b!5751980) (not b!5752044) (not d!1812662) (not b!5752039) (not b!5751887) (not b_lambda!217257) (not b!5752066) (not b!5752063) (not b!5751995) (not setNonEmpty!38613) (not b!5751704) (not b!5751688) (not b!5751825) (not d!1812624) (not b!5751821) (not b!5751983) (not d!1812712) (not b!5751998) (not b!5751789) (not d!1812676) (not bm!440879) (not bm!440877) (not b!5751827) (not d!1812690) (not d!1812674) (not b!5751551) (not b!5751828) (not bm!440919) (not d!1812634) (not d!1812708) (not b!5751787) (not b!5751628) (not b!5751603) (not b!5751607) (not d!1812700) (not b!5752043) (not bm!440865) (not b!5751660) (not bs!1347293) (not b!5751712) (not b!5752011) (not b!5751822) (not bm!440918) (not b!5751659) (not b!5751574) (not bm!440885) (not b!5751608) (not b!5752041) (not b!5751655) (not d!1812638) (not bm!440844) (not d!1812714) (not d!1812654) (not b!5751873) (not bs!1347294) (not d!1812656) (not d!1812630) (not b!5751613) (not d!1812664) (not b!5751685) (not b!5752069) (not b!5751604) (not b!5751686) (not b!5752061) (not bm!440913) (not b!5751605) (not b!5751706) (not b!5752006) (not bs!1347291) (not b!5751982) (not b!5751889) (not b!5751854) (not b!5751703) (not b!5752012) (not b_lambda!217259) (not bm!440881) (not d!1812618) (not b!5751886) (not b!5752040) (not b!5752067) (not bm!440887) (not b!5751627) (not d!1812692) (not bm!440876) (not d!1812620) (not b!5752045) (not b!5751992) (not d!1812594) (not b!5752027) (not bm!440880) (not d!1812658) (not d!1812602) (not b!5751981) (not b_lambda!217253) (not bm!440915) (not b!5751855) (not bs!1347290) (not b!5751902) (not b!5751550) (not b!5751654) (not bm!440849) (not b!5752016) (not d!1812612) (not b!5751881) (not d!1812670) (not bm!440908) (not b!5751858) (not b!5751986) (not b_lambda!217261) (not b!5752003) (not b!5751653) (not b!5752062) (not bm!440907) (not b!5752051))
(check-sat)
(get-model)

(declare-fun d!1812728 () Bool)

(declare-fun c!1016142 () Bool)

(assert (=> d!1812728 (= c!1016142 (and ((_ is ElementMatch!15761) (ite c!1016050 (regTwo!32035 (reg!16090 (regOne!32034 r!7292))) (ite c!1016047 (regTwo!32034 (reg!16090 (regOne!32034 r!7292))) (ite c!1016048 (regOne!32034 (reg!16090 (regOne!32034 r!7292))) (reg!16090 (reg!16090 (regOne!32034 r!7292))))))) (= (c!1015817 (ite c!1016050 (regTwo!32035 (reg!16090 (regOne!32034 r!7292))) (ite c!1016047 (regTwo!32034 (reg!16090 (regOne!32034 r!7292))) (ite c!1016048 (regOne!32034 (reg!16090 (regOne!32034 r!7292))) (reg!16090 (reg!16090 (regOne!32034 r!7292))))))) (h!69906 s!2326))))))

(declare-fun e!3535069 () (InoxSet Context!10290))

(assert (=> d!1812728 (= (derivationStepZipperDown!1103 (ite c!1016050 (regTwo!32035 (reg!16090 (regOne!32034 r!7292))) (ite c!1016047 (regTwo!32034 (reg!16090 (regOne!32034 r!7292))) (ite c!1016048 (regOne!32034 (reg!16090 (regOne!32034 r!7292))) (reg!16090 (reg!16090 (regOne!32034 r!7292)))))) (ite (or c!1016050 c!1016047) lt!2287270 (Context!10291 call!440872)) (h!69906 s!2326)) e!3535069)))

(declare-fun e!3535067 () Bool)

(declare-fun b!5752072 () Bool)

(assert (=> b!5752072 (= e!3535067 (nullable!5793 (regOne!32034 (ite c!1016050 (regTwo!32035 (reg!16090 (regOne!32034 r!7292))) (ite c!1016047 (regTwo!32034 (reg!16090 (regOne!32034 r!7292))) (ite c!1016048 (regOne!32034 (reg!16090 (regOne!32034 r!7292))) (reg!16090 (reg!16090 (regOne!32034 r!7292)))))))))))

(declare-fun bm!440920 () Bool)

(declare-fun c!1016144 () Bool)

(declare-fun call!440925 () List!63583)

(declare-fun c!1016143 () Bool)

(assert (=> bm!440920 (= call!440925 ($colon$colon!1760 (exprs!5645 (ite (or c!1016050 c!1016047) lt!2287270 (Context!10291 call!440872))) (ite (or c!1016143 c!1016144) (regTwo!32034 (ite c!1016050 (regTwo!32035 (reg!16090 (regOne!32034 r!7292))) (ite c!1016047 (regTwo!32034 (reg!16090 (regOne!32034 r!7292))) (ite c!1016048 (regOne!32034 (reg!16090 (regOne!32034 r!7292))) (reg!16090 (reg!16090 (regOne!32034 r!7292))))))) (ite c!1016050 (regTwo!32035 (reg!16090 (regOne!32034 r!7292))) (ite c!1016047 (regTwo!32034 (reg!16090 (regOne!32034 r!7292))) (ite c!1016048 (regOne!32034 (reg!16090 (regOne!32034 r!7292))) (reg!16090 (reg!16090 (regOne!32034 r!7292)))))))))))

(declare-fun bm!440921 () Bool)

(declare-fun call!440928 () (InoxSet Context!10290))

(declare-fun call!440927 () (InoxSet Context!10290))

(assert (=> bm!440921 (= call!440928 call!440927)))

(declare-fun bm!440922 () Bool)

(declare-fun call!440929 () (InoxSet Context!10290))

(assert (=> bm!440922 (= call!440929 call!440928)))

(declare-fun c!1016146 () Bool)

(declare-fun call!440926 () (InoxSet Context!10290))

(declare-fun bm!440923 () Bool)

(assert (=> bm!440923 (= call!440926 (derivationStepZipperDown!1103 (ite c!1016146 (regOne!32035 (ite c!1016050 (regTwo!32035 (reg!16090 (regOne!32034 r!7292))) (ite c!1016047 (regTwo!32034 (reg!16090 (regOne!32034 r!7292))) (ite c!1016048 (regOne!32034 (reg!16090 (regOne!32034 r!7292))) (reg!16090 (reg!16090 (regOne!32034 r!7292))))))) (regOne!32034 (ite c!1016050 (regTwo!32035 (reg!16090 (regOne!32034 r!7292))) (ite c!1016047 (regTwo!32034 (reg!16090 (regOne!32034 r!7292))) (ite c!1016048 (regOne!32034 (reg!16090 (regOne!32034 r!7292))) (reg!16090 (reg!16090 (regOne!32034 r!7292)))))))) (ite c!1016146 (ite (or c!1016050 c!1016047) lt!2287270 (Context!10291 call!440872)) (Context!10291 call!440925)) (h!69906 s!2326)))))

(declare-fun b!5752073 () Bool)

(declare-fun e!3535072 () (InoxSet Context!10290))

(assert (=> b!5752073 (= e!3535072 ((as const (Array Context!10290 Bool)) false))))

(declare-fun bm!440924 () Bool)

(declare-fun call!440930 () List!63583)

(assert (=> bm!440924 (= call!440930 call!440925)))

(declare-fun b!5752074 () Bool)

(declare-fun c!1016145 () Bool)

(assert (=> b!5752074 (= c!1016145 ((_ is Star!15761) (ite c!1016050 (regTwo!32035 (reg!16090 (regOne!32034 r!7292))) (ite c!1016047 (regTwo!32034 (reg!16090 (regOne!32034 r!7292))) (ite c!1016048 (regOne!32034 (reg!16090 (regOne!32034 r!7292))) (reg!16090 (reg!16090 (regOne!32034 r!7292))))))))))

(declare-fun e!3535070 () (InoxSet Context!10290))

(assert (=> b!5752074 (= e!3535070 e!3535072)))

(declare-fun b!5752075 () Bool)

(declare-fun e!3535071 () (InoxSet Context!10290))

(assert (=> b!5752075 (= e!3535071 ((_ map or) call!440926 call!440927))))

(declare-fun b!5752076 () Bool)

(assert (=> b!5752076 (= e!3535072 call!440929)))

(declare-fun b!5752077 () Bool)

(assert (=> b!5752077 (= e!3535069 e!3535071)))

(assert (=> b!5752077 (= c!1016146 ((_ is Union!15761) (ite c!1016050 (regTwo!32035 (reg!16090 (regOne!32034 r!7292))) (ite c!1016047 (regTwo!32034 (reg!16090 (regOne!32034 r!7292))) (ite c!1016048 (regOne!32034 (reg!16090 (regOne!32034 r!7292))) (reg!16090 (reg!16090 (regOne!32034 r!7292))))))))))

(declare-fun b!5752078 () Bool)

(assert (=> b!5752078 (= e!3535069 (store ((as const (Array Context!10290 Bool)) false) (ite (or c!1016050 c!1016047) lt!2287270 (Context!10291 call!440872)) true))))

(declare-fun b!5752079 () Bool)

(assert (=> b!5752079 (= c!1016143 e!3535067)))

(declare-fun res!2428492 () Bool)

(assert (=> b!5752079 (=> (not res!2428492) (not e!3535067))))

(assert (=> b!5752079 (= res!2428492 ((_ is Concat!24606) (ite c!1016050 (regTwo!32035 (reg!16090 (regOne!32034 r!7292))) (ite c!1016047 (regTwo!32034 (reg!16090 (regOne!32034 r!7292))) (ite c!1016048 (regOne!32034 (reg!16090 (regOne!32034 r!7292))) (reg!16090 (reg!16090 (regOne!32034 r!7292))))))))))

(declare-fun e!3535068 () (InoxSet Context!10290))

(assert (=> b!5752079 (= e!3535071 e!3535068)))

(declare-fun b!5752080 () Bool)

(assert (=> b!5752080 (= e!3535070 call!440929)))

(declare-fun bm!440925 () Bool)

(assert (=> bm!440925 (= call!440927 (derivationStepZipperDown!1103 (ite c!1016146 (regTwo!32035 (ite c!1016050 (regTwo!32035 (reg!16090 (regOne!32034 r!7292))) (ite c!1016047 (regTwo!32034 (reg!16090 (regOne!32034 r!7292))) (ite c!1016048 (regOne!32034 (reg!16090 (regOne!32034 r!7292))) (reg!16090 (reg!16090 (regOne!32034 r!7292))))))) (ite c!1016143 (regTwo!32034 (ite c!1016050 (regTwo!32035 (reg!16090 (regOne!32034 r!7292))) (ite c!1016047 (regTwo!32034 (reg!16090 (regOne!32034 r!7292))) (ite c!1016048 (regOne!32034 (reg!16090 (regOne!32034 r!7292))) (reg!16090 (reg!16090 (regOne!32034 r!7292))))))) (ite c!1016144 (regOne!32034 (ite c!1016050 (regTwo!32035 (reg!16090 (regOne!32034 r!7292))) (ite c!1016047 (regTwo!32034 (reg!16090 (regOne!32034 r!7292))) (ite c!1016048 (regOne!32034 (reg!16090 (regOne!32034 r!7292))) (reg!16090 (reg!16090 (regOne!32034 r!7292))))))) (reg!16090 (ite c!1016050 (regTwo!32035 (reg!16090 (regOne!32034 r!7292))) (ite c!1016047 (regTwo!32034 (reg!16090 (regOne!32034 r!7292))) (ite c!1016048 (regOne!32034 (reg!16090 (regOne!32034 r!7292))) (reg!16090 (reg!16090 (regOne!32034 r!7292)))))))))) (ite (or c!1016146 c!1016143) (ite (or c!1016050 c!1016047) lt!2287270 (Context!10291 call!440872)) (Context!10291 call!440930)) (h!69906 s!2326)))))

(declare-fun b!5752081 () Bool)

(assert (=> b!5752081 (= e!3535068 ((_ map or) call!440926 call!440928))))

(declare-fun b!5752082 () Bool)

(assert (=> b!5752082 (= e!3535068 e!3535070)))

(assert (=> b!5752082 (= c!1016144 ((_ is Concat!24606) (ite c!1016050 (regTwo!32035 (reg!16090 (regOne!32034 r!7292))) (ite c!1016047 (regTwo!32034 (reg!16090 (regOne!32034 r!7292))) (ite c!1016048 (regOne!32034 (reg!16090 (regOne!32034 r!7292))) (reg!16090 (reg!16090 (regOne!32034 r!7292))))))))))

(assert (= (and d!1812728 c!1016142) b!5752078))

(assert (= (and d!1812728 (not c!1016142)) b!5752077))

(assert (= (and b!5752077 c!1016146) b!5752075))

(assert (= (and b!5752077 (not c!1016146)) b!5752079))

(assert (= (and b!5752079 res!2428492) b!5752072))

(assert (= (and b!5752079 c!1016143) b!5752081))

(assert (= (and b!5752079 (not c!1016143)) b!5752082))

(assert (= (and b!5752082 c!1016144) b!5752080))

(assert (= (and b!5752082 (not c!1016144)) b!5752074))

(assert (= (and b!5752074 c!1016145) b!5752076))

(assert (= (and b!5752074 (not c!1016145)) b!5752073))

(assert (= (or b!5752080 b!5752076) bm!440924))

(assert (= (or b!5752080 b!5752076) bm!440922))

(assert (= (or b!5752081 bm!440924) bm!440920))

(assert (= (or b!5752081 bm!440922) bm!440921))

(assert (= (or b!5752075 bm!440921) bm!440925))

(assert (= (or b!5752075 b!5752081) bm!440923))

(declare-fun m!6701842 () Bool)

(assert (=> bm!440920 m!6701842))

(declare-fun m!6701844 () Bool)

(assert (=> b!5752078 m!6701844))

(declare-fun m!6701846 () Bool)

(assert (=> b!5752072 m!6701846))

(declare-fun m!6701848 () Bool)

(assert (=> bm!440923 m!6701848))

(declare-fun m!6701850 () Bool)

(assert (=> bm!440925 m!6701850))

(assert (=> bm!440867 d!1812728))

(declare-fun d!1812730 () Bool)

(assert (=> d!1812730 (= (isEmpty!35345 s!2326) ((_ is Nil!63458) s!2326))))

(assert (=> bm!440876 d!1812730))

(declare-fun bs!1347295 () Bool)

(declare-fun b!5752087 () Bool)

(assert (= bs!1347295 (and b!5752087 b!5751872)))

(declare-fun lambda!312136 () Int)

(assert (=> bs!1347295 (not (= lambda!312136 lambda!312134))))

(declare-fun bs!1347296 () Bool)

(assert (= bs!1347296 (and b!5752087 b!5751783)))

(assert (=> bs!1347296 (= (and (= (reg!16090 (regOne!32035 lt!2287258)) (reg!16090 r!7292)) (= (regOne!32035 lt!2287258) r!7292)) (= lambda!312136 lambda!312119))))

(declare-fun bs!1347297 () Bool)

(assert (= bs!1347297 (and b!5752087 b!5751869)))

(assert (=> bs!1347297 (= (and (= (reg!16090 (regOne!32035 lt!2287258)) (reg!16090 lt!2287258)) (= (regOne!32035 lt!2287258) lt!2287258)) (= lambda!312136 lambda!312133))))

(declare-fun bs!1347298 () Bool)

(assert (= bs!1347298 (and b!5752087 d!1812626)))

(assert (=> bs!1347298 (not (= lambda!312136 lambda!312113))))

(declare-fun bs!1347299 () Bool)

(assert (= bs!1347299 (and b!5752087 b!5750992)))

(assert (=> bs!1347299 (not (= lambda!312136 lambda!312039))))

(assert (=> bs!1347299 (not (= lambda!312136 lambda!312040))))

(assert (=> bs!1347298 (not (= lambda!312136 lambda!312112))))

(declare-fun bs!1347300 () Bool)

(assert (= bs!1347300 (and b!5752087 d!1812624)))

(assert (=> bs!1347300 (not (= lambda!312136 lambda!312107))))

(declare-fun bs!1347301 () Bool)

(assert (= bs!1347301 (and b!5752087 b!5751786)))

(assert (=> bs!1347301 (not (= lambda!312136 lambda!312120))))

(assert (=> b!5752087 true))

(assert (=> b!5752087 true))

(declare-fun bs!1347302 () Bool)

(declare-fun b!5752090 () Bool)

(assert (= bs!1347302 (and b!5752090 b!5751872)))

(declare-fun lambda!312137 () Int)

(assert (=> bs!1347302 (= (and (= (regOne!32034 (regOne!32035 lt!2287258)) (regOne!32034 lt!2287258)) (= (regTwo!32034 (regOne!32035 lt!2287258)) (regTwo!32034 lt!2287258))) (= lambda!312137 lambda!312134))))

(declare-fun bs!1347303 () Bool)

(assert (= bs!1347303 (and b!5752090 b!5751783)))

(assert (=> bs!1347303 (not (= lambda!312137 lambda!312119))))

(declare-fun bs!1347304 () Bool)

(assert (= bs!1347304 (and b!5752090 d!1812626)))

(assert (=> bs!1347304 (= (and (= (regOne!32034 (regOne!32035 lt!2287258)) (regOne!32034 r!7292)) (= (regTwo!32034 (regOne!32035 lt!2287258)) (regTwo!32034 r!7292))) (= lambda!312137 lambda!312113))))

(declare-fun bs!1347305 () Bool)

(assert (= bs!1347305 (and b!5752090 b!5750992)))

(assert (=> bs!1347305 (not (= lambda!312137 lambda!312039))))

(assert (=> bs!1347305 (= (and (= (regOne!32034 (regOne!32035 lt!2287258)) (regOne!32034 r!7292)) (= (regTwo!32034 (regOne!32035 lt!2287258)) (regTwo!32034 r!7292))) (= lambda!312137 lambda!312040))))

(declare-fun bs!1347306 () Bool)

(assert (= bs!1347306 (and b!5752090 b!5751869)))

(assert (=> bs!1347306 (not (= lambda!312137 lambda!312133))))

(declare-fun bs!1347307 () Bool)

(assert (= bs!1347307 (and b!5752090 b!5752087)))

(assert (=> bs!1347307 (not (= lambda!312137 lambda!312136))))

(assert (=> bs!1347304 (not (= lambda!312137 lambda!312112))))

(declare-fun bs!1347308 () Bool)

(assert (= bs!1347308 (and b!5752090 d!1812624)))

(assert (=> bs!1347308 (not (= lambda!312137 lambda!312107))))

(declare-fun bs!1347309 () Bool)

(assert (= bs!1347309 (and b!5752090 b!5751786)))

(assert (=> bs!1347309 (= (and (= (regOne!32034 (regOne!32035 lt!2287258)) (regOne!32034 r!7292)) (= (regTwo!32034 (regOne!32035 lt!2287258)) (regTwo!32034 r!7292))) (= lambda!312137 lambda!312120))))

(assert (=> b!5752090 true))

(assert (=> b!5752090 true))

(declare-fun b!5752083 () Bool)

(declare-fun e!3535073 () Bool)

(declare-fun call!440932 () Bool)

(assert (=> b!5752083 (= e!3535073 call!440932)))

(declare-fun bm!440926 () Bool)

(assert (=> bm!440926 (= call!440932 (isEmpty!35345 s!2326))))

(declare-fun b!5752084 () Bool)

(declare-fun c!1016149 () Bool)

(assert (=> b!5752084 (= c!1016149 ((_ is Union!15761) (regOne!32035 lt!2287258)))))

(declare-fun e!3535079 () Bool)

(declare-fun e!3535077 () Bool)

(assert (=> b!5752084 (= e!3535079 e!3535077)))

(declare-fun b!5752085 () Bool)

(assert (=> b!5752085 (= e!3535079 (= s!2326 (Cons!63458 (c!1015817 (regOne!32035 lt!2287258)) Nil!63458)))))

(declare-fun b!5752086 () Bool)

(declare-fun c!1016150 () Bool)

(assert (=> b!5752086 (= c!1016150 ((_ is ElementMatch!15761) (regOne!32035 lt!2287258)))))

(declare-fun e!3535078 () Bool)

(assert (=> b!5752086 (= e!3535078 e!3535079)))

(declare-fun e!3535076 () Bool)

(declare-fun call!440931 () Bool)

(assert (=> b!5752087 (= e!3535076 call!440931)))

(declare-fun d!1812732 () Bool)

(declare-fun c!1016148 () Bool)

(assert (=> d!1812732 (= c!1016148 ((_ is EmptyExpr!15761) (regOne!32035 lt!2287258)))))

(assert (=> d!1812732 (= (matchRSpec!2864 (regOne!32035 lt!2287258) s!2326) e!3535073)))

(declare-fun bm!440927 () Bool)

(declare-fun c!1016147 () Bool)

(assert (=> bm!440927 (= call!440931 (Exists!2861 (ite c!1016147 lambda!312136 lambda!312137)))))

(declare-fun b!5752088 () Bool)

(assert (=> b!5752088 (= e!3535073 e!3535078)))

(declare-fun res!2428494 () Bool)

(assert (=> b!5752088 (= res!2428494 (not ((_ is EmptyLang!15761) (regOne!32035 lt!2287258))))))

(assert (=> b!5752088 (=> (not res!2428494) (not e!3535078))))

(declare-fun b!5752089 () Bool)

(declare-fun e!3535075 () Bool)

(assert (=> b!5752089 (= e!3535077 e!3535075)))

(assert (=> b!5752089 (= c!1016147 ((_ is Star!15761) (regOne!32035 lt!2287258)))))

(assert (=> b!5752090 (= e!3535075 call!440931)))

(declare-fun b!5752091 () Bool)

(declare-fun e!3535074 () Bool)

(assert (=> b!5752091 (= e!3535077 e!3535074)))

(declare-fun res!2428493 () Bool)

(assert (=> b!5752091 (= res!2428493 (matchRSpec!2864 (regOne!32035 (regOne!32035 lt!2287258)) s!2326))))

(assert (=> b!5752091 (=> res!2428493 e!3535074)))

(declare-fun b!5752092 () Bool)

(declare-fun res!2428495 () Bool)

(assert (=> b!5752092 (=> res!2428495 e!3535076)))

(assert (=> b!5752092 (= res!2428495 call!440932)))

(assert (=> b!5752092 (= e!3535075 e!3535076)))

(declare-fun b!5752093 () Bool)

(assert (=> b!5752093 (= e!3535074 (matchRSpec!2864 (regTwo!32035 (regOne!32035 lt!2287258)) s!2326))))

(assert (= (and d!1812732 c!1016148) b!5752083))

(assert (= (and d!1812732 (not c!1016148)) b!5752088))

(assert (= (and b!5752088 res!2428494) b!5752086))

(assert (= (and b!5752086 c!1016150) b!5752085))

(assert (= (and b!5752086 (not c!1016150)) b!5752084))

(assert (= (and b!5752084 c!1016149) b!5752091))

(assert (= (and b!5752084 (not c!1016149)) b!5752089))

(assert (= (and b!5752091 (not res!2428493)) b!5752093))

(assert (= (and b!5752089 c!1016147) b!5752092))

(assert (= (and b!5752089 (not c!1016147)) b!5752090))

(assert (= (and b!5752092 (not res!2428495)) b!5752087))

(assert (= (or b!5752087 b!5752090) bm!440927))

(assert (= (or b!5752083 b!5752092) bm!440926))

(assert (=> bm!440926 m!6701472))

(declare-fun m!6701852 () Bool)

(assert (=> bm!440927 m!6701852))

(declare-fun m!6701854 () Bool)

(assert (=> b!5752091 m!6701854))

(declare-fun m!6701856 () Bool)

(assert (=> b!5752093 m!6701856))

(assert (=> b!5751873 d!1812732))

(assert (=> b!5751979 d!1812598))

(declare-fun b!5752094 () Bool)

(declare-fun res!2428498 () Bool)

(declare-fun e!3535081 () Bool)

(assert (=> b!5752094 (=> (not res!2428498) (not e!3535081))))

(declare-fun call!440934 () Bool)

(assert (=> b!5752094 (= res!2428498 call!440934)))

(declare-fun e!3535084 () Bool)

(assert (=> b!5752094 (= e!3535084 e!3535081)))

(declare-fun b!5752095 () Bool)

(declare-fun call!440935 () Bool)

(assert (=> b!5752095 (= e!3535081 call!440935)))

(declare-fun b!5752096 () Bool)

(declare-fun e!3535083 () Bool)

(assert (=> b!5752096 (= e!3535083 call!440935)))

(declare-fun c!1016152 () Bool)

(declare-fun c!1016151 () Bool)

(declare-fun call!440933 () Bool)

(declare-fun bm!440928 () Bool)

(assert (=> bm!440928 (= call!440933 (validRegex!7497 (ite c!1016151 (reg!16090 (ite c!1015988 (regOne!32035 r!7292) (regOne!32034 r!7292))) (ite c!1016152 (regTwo!32035 (ite c!1015988 (regOne!32035 r!7292) (regOne!32034 r!7292))) (regTwo!32034 (ite c!1015988 (regOne!32035 r!7292) (regOne!32034 r!7292)))))))))

(declare-fun b!5752097 () Bool)

(declare-fun e!3535086 () Bool)

(assert (=> b!5752097 (= e!3535086 call!440933)))

(declare-fun b!5752098 () Bool)

(declare-fun e!3535080 () Bool)

(assert (=> b!5752098 (= e!3535080 e!3535086)))

(declare-fun res!2428496 () Bool)

(assert (=> b!5752098 (= res!2428496 (not (nullable!5793 (reg!16090 (ite c!1015988 (regOne!32035 r!7292) (regOne!32034 r!7292))))))))

(assert (=> b!5752098 (=> (not res!2428496) (not e!3535086))))

(declare-fun b!5752099 () Bool)

(declare-fun e!3535085 () Bool)

(assert (=> b!5752099 (= e!3535085 e!3535083)))

(declare-fun res!2428497 () Bool)

(assert (=> b!5752099 (=> (not res!2428497) (not e!3535083))))

(assert (=> b!5752099 (= res!2428497 call!440934)))

(declare-fun bm!440929 () Bool)

(assert (=> bm!440929 (= call!440934 (validRegex!7497 (ite c!1016152 (regOne!32035 (ite c!1015988 (regOne!32035 r!7292) (regOne!32034 r!7292))) (regOne!32034 (ite c!1015988 (regOne!32035 r!7292) (regOne!32034 r!7292))))))))

(declare-fun bm!440930 () Bool)

(assert (=> bm!440930 (= call!440935 call!440933)))

(declare-fun b!5752101 () Bool)

(declare-fun e!3535082 () Bool)

(assert (=> b!5752101 (= e!3535082 e!3535080)))

(assert (=> b!5752101 (= c!1016151 ((_ is Star!15761) (ite c!1015988 (regOne!32035 r!7292) (regOne!32034 r!7292))))))

(declare-fun b!5752102 () Bool)

(declare-fun res!2428499 () Bool)

(assert (=> b!5752102 (=> res!2428499 e!3535085)))

(assert (=> b!5752102 (= res!2428499 (not ((_ is Concat!24606) (ite c!1015988 (regOne!32035 r!7292) (regOne!32034 r!7292)))))))

(assert (=> b!5752102 (= e!3535084 e!3535085)))

(declare-fun d!1812734 () Bool)

(declare-fun res!2428500 () Bool)

(assert (=> d!1812734 (=> res!2428500 e!3535082)))

(assert (=> d!1812734 (= res!2428500 ((_ is ElementMatch!15761) (ite c!1015988 (regOne!32035 r!7292) (regOne!32034 r!7292))))))

(assert (=> d!1812734 (= (validRegex!7497 (ite c!1015988 (regOne!32035 r!7292) (regOne!32034 r!7292))) e!3535082)))

(declare-fun b!5752100 () Bool)

(assert (=> b!5752100 (= e!3535080 e!3535084)))

(assert (=> b!5752100 (= c!1016152 ((_ is Union!15761) (ite c!1015988 (regOne!32035 r!7292) (regOne!32034 r!7292))))))

(assert (= (and d!1812734 (not res!2428500)) b!5752101))

(assert (= (and b!5752101 c!1016151) b!5752098))

(assert (= (and b!5752101 (not c!1016151)) b!5752100))

(assert (= (and b!5752098 res!2428496) b!5752097))

(assert (= (and b!5752100 c!1016152) b!5752094))

(assert (= (and b!5752100 (not c!1016152)) b!5752102))

(assert (= (and b!5752094 res!2428498) b!5752095))

(assert (= (and b!5752102 (not res!2428499)) b!5752099))

(assert (= (and b!5752099 res!2428497) b!5752096))

(assert (= (or b!5752095 b!5752096) bm!440930))

(assert (= (or b!5752094 b!5752099) bm!440929))

(assert (= (or b!5752097 bm!440930) bm!440928))

(declare-fun m!6701858 () Bool)

(assert (=> bm!440928 m!6701858))

(declare-fun m!6701860 () Bool)

(assert (=> b!5752098 m!6701860))

(declare-fun m!6701862 () Bool)

(assert (=> bm!440929 m!6701862))

(assert (=> bm!440844 d!1812734))

(assert (=> b!5751680 d!1812710))

(declare-fun d!1812736 () Bool)

(declare-fun res!2428505 () Bool)

(declare-fun e!3535091 () Bool)

(assert (=> d!1812736 (=> res!2428505 e!3535091)))

(assert (=> d!1812736 (= res!2428505 ((_ is Nil!63460) zl!343))))

(assert (=> d!1812736 (= (forall!14882 zl!343 lambda!312129) e!3535091)))

(declare-fun b!5752107 () Bool)

(declare-fun e!3535092 () Bool)

(assert (=> b!5752107 (= e!3535091 e!3535092)))

(declare-fun res!2428506 () Bool)

(assert (=> b!5752107 (=> (not res!2428506) (not e!3535092))))

(declare-fun dynLambda!24838 (Int Context!10290) Bool)

(assert (=> b!5752107 (= res!2428506 (dynLambda!24838 lambda!312129 (h!69908 zl!343)))))

(declare-fun b!5752108 () Bool)

(assert (=> b!5752108 (= e!3535092 (forall!14882 (t!376914 zl!343) lambda!312129))))

(assert (= (and d!1812736 (not res!2428505)) b!5752107))

(assert (= (and b!5752107 res!2428506) b!5752108))

(declare-fun b_lambda!217263 () Bool)

(assert (=> (not b_lambda!217263) (not b!5752107)))

(declare-fun m!6701864 () Bool)

(assert (=> b!5752107 m!6701864))

(declare-fun m!6701866 () Bool)

(assert (=> b!5752108 m!6701866))

(assert (=> b!5751845 d!1812736))

(declare-fun b!5752109 () Bool)

(declare-fun res!2428509 () Bool)

(declare-fun e!3535094 () Bool)

(assert (=> b!5752109 (=> (not res!2428509) (not e!3535094))))

(declare-fun call!440937 () Bool)

(assert (=> b!5752109 (= res!2428509 call!440937)))

(declare-fun e!3535097 () Bool)

(assert (=> b!5752109 (= e!3535097 e!3535094)))

(declare-fun b!5752110 () Bool)

(declare-fun call!440938 () Bool)

(assert (=> b!5752110 (= e!3535094 call!440938)))

(declare-fun b!5752111 () Bool)

(declare-fun e!3535096 () Bool)

(assert (=> b!5752111 (= e!3535096 call!440938)))

(declare-fun bm!440931 () Bool)

(declare-fun c!1016153 () Bool)

(declare-fun call!440936 () Bool)

(declare-fun c!1016154 () Bool)

(assert (=> bm!440931 (= call!440936 (validRegex!7497 (ite c!1016153 (reg!16090 (ite c!1015987 (reg!16090 r!7292) (ite c!1015988 (regTwo!32035 r!7292) (regTwo!32034 r!7292)))) (ite c!1016154 (regTwo!32035 (ite c!1015987 (reg!16090 r!7292) (ite c!1015988 (regTwo!32035 r!7292) (regTwo!32034 r!7292)))) (regTwo!32034 (ite c!1015987 (reg!16090 r!7292) (ite c!1015988 (regTwo!32035 r!7292) (regTwo!32034 r!7292))))))))))

(declare-fun b!5752112 () Bool)

(declare-fun e!3535099 () Bool)

(assert (=> b!5752112 (= e!3535099 call!440936)))

(declare-fun b!5752113 () Bool)

(declare-fun e!3535093 () Bool)

(assert (=> b!5752113 (= e!3535093 e!3535099)))

(declare-fun res!2428507 () Bool)

(assert (=> b!5752113 (= res!2428507 (not (nullable!5793 (reg!16090 (ite c!1015987 (reg!16090 r!7292) (ite c!1015988 (regTwo!32035 r!7292) (regTwo!32034 r!7292)))))))))

(assert (=> b!5752113 (=> (not res!2428507) (not e!3535099))))

(declare-fun b!5752114 () Bool)

(declare-fun e!3535098 () Bool)

(assert (=> b!5752114 (= e!3535098 e!3535096)))

(declare-fun res!2428508 () Bool)

(assert (=> b!5752114 (=> (not res!2428508) (not e!3535096))))

(assert (=> b!5752114 (= res!2428508 call!440937)))

(declare-fun bm!440932 () Bool)

(assert (=> bm!440932 (= call!440937 (validRegex!7497 (ite c!1016154 (regOne!32035 (ite c!1015987 (reg!16090 r!7292) (ite c!1015988 (regTwo!32035 r!7292) (regTwo!32034 r!7292)))) (regOne!32034 (ite c!1015987 (reg!16090 r!7292) (ite c!1015988 (regTwo!32035 r!7292) (regTwo!32034 r!7292)))))))))

(declare-fun bm!440933 () Bool)

(assert (=> bm!440933 (= call!440938 call!440936)))

(declare-fun b!5752116 () Bool)

(declare-fun e!3535095 () Bool)

(assert (=> b!5752116 (= e!3535095 e!3535093)))

(assert (=> b!5752116 (= c!1016153 ((_ is Star!15761) (ite c!1015987 (reg!16090 r!7292) (ite c!1015988 (regTwo!32035 r!7292) (regTwo!32034 r!7292)))))))

(declare-fun b!5752117 () Bool)

(declare-fun res!2428510 () Bool)

(assert (=> b!5752117 (=> res!2428510 e!3535098)))

(assert (=> b!5752117 (= res!2428510 (not ((_ is Concat!24606) (ite c!1015987 (reg!16090 r!7292) (ite c!1015988 (regTwo!32035 r!7292) (regTwo!32034 r!7292))))))))

(assert (=> b!5752117 (= e!3535097 e!3535098)))

(declare-fun d!1812738 () Bool)

(declare-fun res!2428511 () Bool)

(assert (=> d!1812738 (=> res!2428511 e!3535095)))

(assert (=> d!1812738 (= res!2428511 ((_ is ElementMatch!15761) (ite c!1015987 (reg!16090 r!7292) (ite c!1015988 (regTwo!32035 r!7292) (regTwo!32034 r!7292)))))))

(assert (=> d!1812738 (= (validRegex!7497 (ite c!1015987 (reg!16090 r!7292) (ite c!1015988 (regTwo!32035 r!7292) (regTwo!32034 r!7292)))) e!3535095)))

(declare-fun b!5752115 () Bool)

(assert (=> b!5752115 (= e!3535093 e!3535097)))

(assert (=> b!5752115 (= c!1016154 ((_ is Union!15761) (ite c!1015987 (reg!16090 r!7292) (ite c!1015988 (regTwo!32035 r!7292) (regTwo!32034 r!7292)))))))

(assert (= (and d!1812738 (not res!2428511)) b!5752116))

(assert (= (and b!5752116 c!1016153) b!5752113))

(assert (= (and b!5752116 (not c!1016153)) b!5752115))

(assert (= (and b!5752113 res!2428507) b!5752112))

(assert (= (and b!5752115 c!1016154) b!5752109))

(assert (= (and b!5752115 (not c!1016154)) b!5752117))

(assert (= (and b!5752109 res!2428509) b!5752110))

(assert (= (and b!5752117 (not res!2428510)) b!5752114))

(assert (= (and b!5752114 res!2428508) b!5752111))

(assert (= (or b!5752110 b!5752111) bm!440933))

(assert (= (or b!5752109 b!5752114) bm!440932))

(assert (= (or b!5752112 bm!440933) bm!440931))

(declare-fun m!6701868 () Bool)

(assert (=> bm!440931 m!6701868))

(declare-fun m!6701870 () Bool)

(assert (=> b!5752113 m!6701870))

(declare-fun m!6701872 () Bool)

(assert (=> bm!440932 m!6701872))

(assert (=> bm!440843 d!1812738))

(declare-fun d!1812740 () Bool)

(assert (=> d!1812740 (= (head!12167 (unfocusZipperList!1189 zl!343)) (h!69907 (unfocusZipperList!1189 zl!343)))))

(assert (=> b!5751603 d!1812740))

(declare-fun d!1812742 () Bool)

(assert (=> d!1812742 (= (isEmpty!35345 (t!376912 s!2326)) ((_ is Nil!63458) (t!376912 s!2326)))))

(assert (=> d!1812638 d!1812742))

(declare-fun bm!440934 () Bool)

(declare-fun call!440939 () Bool)

(assert (=> bm!440934 (= call!440939 (isEmpty!35345 (tail!11261 s!2326)))))

(declare-fun b!5752118 () Bool)

(declare-fun e!3535102 () Bool)

(declare-fun lt!2287451 () Bool)

(assert (=> b!5752118 (= e!3535102 (not lt!2287451))))

(declare-fun d!1812744 () Bool)

(declare-fun e!3535101 () Bool)

(assert (=> d!1812744 e!3535101))

(declare-fun c!1016155 () Bool)

(assert (=> d!1812744 (= c!1016155 ((_ is EmptyExpr!15761) (derivativeStep!4546 lt!2287295 (head!12166 s!2326))))))

(declare-fun e!3535106 () Bool)

(assert (=> d!1812744 (= lt!2287451 e!3535106)))

(declare-fun c!1016156 () Bool)

(assert (=> d!1812744 (= c!1016156 (isEmpty!35345 (tail!11261 s!2326)))))

(assert (=> d!1812744 (validRegex!7497 (derivativeStep!4546 lt!2287295 (head!12166 s!2326)))))

(assert (=> d!1812744 (= (matchR!7946 (derivativeStep!4546 lt!2287295 (head!12166 s!2326)) (tail!11261 s!2326)) lt!2287451)))

(declare-fun b!5752119 () Bool)

(declare-fun e!3535100 () Bool)

(assert (=> b!5752119 (= e!3535100 (not (= (head!12166 (tail!11261 s!2326)) (c!1015817 (derivativeStep!4546 lt!2287295 (head!12166 s!2326))))))))

(declare-fun b!5752120 () Bool)

(declare-fun e!3535103 () Bool)

(declare-fun e!3535104 () Bool)

(assert (=> b!5752120 (= e!3535103 e!3535104)))

(declare-fun res!2428512 () Bool)

(assert (=> b!5752120 (=> (not res!2428512) (not e!3535104))))

(assert (=> b!5752120 (= res!2428512 (not lt!2287451))))

(declare-fun b!5752121 () Bool)

(declare-fun e!3535105 () Bool)

(assert (=> b!5752121 (= e!3535105 (= (head!12166 (tail!11261 s!2326)) (c!1015817 (derivativeStep!4546 lt!2287295 (head!12166 s!2326)))))))

(declare-fun b!5752122 () Bool)

(assert (=> b!5752122 (= e!3535106 (matchR!7946 (derivativeStep!4546 (derivativeStep!4546 lt!2287295 (head!12166 s!2326)) (head!12166 (tail!11261 s!2326))) (tail!11261 (tail!11261 s!2326))))))

(declare-fun b!5752123 () Bool)

(assert (=> b!5752123 (= e!3535104 e!3535100)))

(declare-fun res!2428518 () Bool)

(assert (=> b!5752123 (=> res!2428518 e!3535100)))

(assert (=> b!5752123 (= res!2428518 call!440939)))

(declare-fun b!5752124 () Bool)

(assert (=> b!5752124 (= e!3535101 (= lt!2287451 call!440939))))

(declare-fun b!5752125 () Bool)

(declare-fun res!2428516 () Bool)

(assert (=> b!5752125 (=> (not res!2428516) (not e!3535105))))

(assert (=> b!5752125 (= res!2428516 (isEmpty!35345 (tail!11261 (tail!11261 s!2326))))))

(declare-fun b!5752126 () Bool)

(assert (=> b!5752126 (= e!3535101 e!3535102)))

(declare-fun c!1016157 () Bool)

(assert (=> b!5752126 (= c!1016157 ((_ is EmptyLang!15761) (derivativeStep!4546 lt!2287295 (head!12166 s!2326))))))

(declare-fun b!5752127 () Bool)

(assert (=> b!5752127 (= e!3535106 (nullable!5793 (derivativeStep!4546 lt!2287295 (head!12166 s!2326))))))

(declare-fun b!5752128 () Bool)

(declare-fun res!2428513 () Bool)

(assert (=> b!5752128 (=> res!2428513 e!3535100)))

(assert (=> b!5752128 (= res!2428513 (not (isEmpty!35345 (tail!11261 (tail!11261 s!2326)))))))

(declare-fun b!5752129 () Bool)

(declare-fun res!2428517 () Bool)

(assert (=> b!5752129 (=> res!2428517 e!3535103)))

(assert (=> b!5752129 (= res!2428517 (not ((_ is ElementMatch!15761) (derivativeStep!4546 lt!2287295 (head!12166 s!2326)))))))

(assert (=> b!5752129 (= e!3535102 e!3535103)))

(declare-fun b!5752130 () Bool)

(declare-fun res!2428519 () Bool)

(assert (=> b!5752130 (=> (not res!2428519) (not e!3535105))))

(assert (=> b!5752130 (= res!2428519 (not call!440939))))

(declare-fun b!5752131 () Bool)

(declare-fun res!2428515 () Bool)

(assert (=> b!5752131 (=> res!2428515 e!3535103)))

(assert (=> b!5752131 (= res!2428515 e!3535105)))

(declare-fun res!2428514 () Bool)

(assert (=> b!5752131 (=> (not res!2428514) (not e!3535105))))

(assert (=> b!5752131 (= res!2428514 lt!2287451)))

(assert (= (and d!1812744 c!1016156) b!5752127))

(assert (= (and d!1812744 (not c!1016156)) b!5752122))

(assert (= (and d!1812744 c!1016155) b!5752124))

(assert (= (and d!1812744 (not c!1016155)) b!5752126))

(assert (= (and b!5752126 c!1016157) b!5752118))

(assert (= (and b!5752126 (not c!1016157)) b!5752129))

(assert (= (and b!5752129 (not res!2428517)) b!5752131))

(assert (= (and b!5752131 res!2428514) b!5752130))

(assert (= (and b!5752130 res!2428519) b!5752125))

(assert (= (and b!5752125 res!2428516) b!5752121))

(assert (= (and b!5752131 (not res!2428515)) b!5752120))

(assert (= (and b!5752120 res!2428512) b!5752123))

(assert (= (and b!5752123 (not res!2428518)) b!5752128))

(assert (= (and b!5752128 (not res!2428513)) b!5752119))

(assert (= (or b!5752124 b!5752123 b!5752130) bm!440934))

(assert (=> d!1812744 m!6701480))

(assert (=> d!1812744 m!6701646))

(assert (=> d!1812744 m!6701824))

(declare-fun m!6701874 () Bool)

(assert (=> d!1812744 m!6701874))

(assert (=> b!5752128 m!6701480))

(declare-fun m!6701876 () Bool)

(assert (=> b!5752128 m!6701876))

(assert (=> b!5752128 m!6701876))

(declare-fun m!6701878 () Bool)

(assert (=> b!5752128 m!6701878))

(assert (=> b!5752119 m!6701480))

(declare-fun m!6701880 () Bool)

(assert (=> b!5752119 m!6701880))

(assert (=> bm!440934 m!6701480))

(assert (=> bm!440934 m!6701646))

(assert (=> b!5752122 m!6701480))

(assert (=> b!5752122 m!6701880))

(assert (=> b!5752122 m!6701824))

(assert (=> b!5752122 m!6701880))

(declare-fun m!6701882 () Bool)

(assert (=> b!5752122 m!6701882))

(assert (=> b!5752122 m!6701480))

(assert (=> b!5752122 m!6701876))

(assert (=> b!5752122 m!6701882))

(assert (=> b!5752122 m!6701876))

(declare-fun m!6701884 () Bool)

(assert (=> b!5752122 m!6701884))

(assert (=> b!5752127 m!6701824))

(declare-fun m!6701886 () Bool)

(assert (=> b!5752127 m!6701886))

(assert (=> b!5752125 m!6701480))

(assert (=> b!5752125 m!6701876))

(assert (=> b!5752125 m!6701876))

(assert (=> b!5752125 m!6701878))

(assert (=> b!5752121 m!6701480))

(assert (=> b!5752121 m!6701880))

(assert (=> b!5752006 d!1812744))

(declare-fun b!5752152 () Bool)

(declare-fun e!3535117 () Regex!15761)

(assert (=> b!5752152 (= e!3535117 (ite (= (head!12166 s!2326) (c!1015817 lt!2287295)) EmptyExpr!15761 EmptyLang!15761))))

(declare-fun b!5752153 () Bool)

(declare-fun e!3535119 () Regex!15761)

(assert (=> b!5752153 (= e!3535119 e!3535117)))

(declare-fun c!1016172 () Bool)

(assert (=> b!5752153 (= c!1016172 ((_ is ElementMatch!15761) lt!2287295))))

(declare-fun c!1016169 () Bool)

(declare-fun bm!440943 () Bool)

(declare-fun call!440951 () Regex!15761)

(declare-fun c!1016168 () Bool)

(assert (=> bm!440943 (= call!440951 (derivativeStep!4546 (ite c!1016169 (regOne!32035 lt!2287295) (ite c!1016168 (reg!16090 lt!2287295) (regOne!32034 lt!2287295))) (head!12166 s!2326)))))

(declare-fun d!1812746 () Bool)

(declare-fun lt!2287454 () Regex!15761)

(assert (=> d!1812746 (validRegex!7497 lt!2287454)))

(assert (=> d!1812746 (= lt!2287454 e!3535119)))

(declare-fun c!1016170 () Bool)

(assert (=> d!1812746 (= c!1016170 (or ((_ is EmptyExpr!15761) lt!2287295) ((_ is EmptyLang!15761) lt!2287295)))))

(assert (=> d!1812746 (validRegex!7497 lt!2287295)))

(assert (=> d!1812746 (= (derivativeStep!4546 lt!2287295 (head!12166 s!2326)) lt!2287454)))

(declare-fun call!440948 () Regex!15761)

(declare-fun e!3535118 () Regex!15761)

(declare-fun call!440949 () Regex!15761)

(declare-fun b!5752154 () Bool)

(assert (=> b!5752154 (= e!3535118 (Union!15761 (Concat!24606 call!440948 (regTwo!32034 lt!2287295)) call!440949))))

(declare-fun b!5752155 () Bool)

(assert (=> b!5752155 (= e!3535119 EmptyLang!15761)))

(declare-fun b!5752156 () Bool)

(assert (=> b!5752156 (= e!3535118 (Union!15761 (Concat!24606 call!440949 (regTwo!32034 lt!2287295)) EmptyLang!15761))))

(declare-fun bm!440944 () Bool)

(assert (=> bm!440944 (= call!440948 call!440951)))

(declare-fun b!5752157 () Bool)

(assert (=> b!5752157 (= c!1016169 ((_ is Union!15761) lt!2287295))))

(declare-fun e!3535120 () Regex!15761)

(assert (=> b!5752157 (= e!3535117 e!3535120)))

(declare-fun b!5752158 () Bool)

(declare-fun call!440950 () Regex!15761)

(assert (=> b!5752158 (= e!3535120 (Union!15761 call!440951 call!440950))))

(declare-fun b!5752159 () Bool)

(declare-fun c!1016171 () Bool)

(assert (=> b!5752159 (= c!1016171 (nullable!5793 (regOne!32034 lt!2287295)))))

(declare-fun e!3535121 () Regex!15761)

(assert (=> b!5752159 (= e!3535121 e!3535118)))

(declare-fun bm!440945 () Bool)

(assert (=> bm!440945 (= call!440949 call!440950)))

(declare-fun b!5752160 () Bool)

(assert (=> b!5752160 (= e!3535120 e!3535121)))

(assert (=> b!5752160 (= c!1016168 ((_ is Star!15761) lt!2287295))))

(declare-fun bm!440946 () Bool)

(assert (=> bm!440946 (= call!440950 (derivativeStep!4546 (ite c!1016169 (regTwo!32035 lt!2287295) (ite c!1016171 (regTwo!32034 lt!2287295) (regOne!32034 lt!2287295))) (head!12166 s!2326)))))

(declare-fun b!5752161 () Bool)

(assert (=> b!5752161 (= e!3535121 (Concat!24606 call!440948 lt!2287295))))

(assert (= (and d!1812746 c!1016170) b!5752155))

(assert (= (and d!1812746 (not c!1016170)) b!5752153))

(assert (= (and b!5752153 c!1016172) b!5752152))

(assert (= (and b!5752153 (not c!1016172)) b!5752157))

(assert (= (and b!5752157 c!1016169) b!5752158))

(assert (= (and b!5752157 (not c!1016169)) b!5752160))

(assert (= (and b!5752160 c!1016168) b!5752161))

(assert (= (and b!5752160 (not c!1016168)) b!5752159))

(assert (= (and b!5752159 c!1016171) b!5752154))

(assert (= (and b!5752159 (not c!1016171)) b!5752156))

(assert (= (or b!5752154 b!5752156) bm!440945))

(assert (= (or b!5752161 b!5752154) bm!440944))

(assert (= (or b!5752158 bm!440945) bm!440946))

(assert (= (or b!5752158 bm!440944) bm!440943))

(assert (=> bm!440943 m!6701476))

(declare-fun m!6701888 () Bool)

(assert (=> bm!440943 m!6701888))

(declare-fun m!6701890 () Bool)

(assert (=> d!1812746 m!6701890))

(assert (=> d!1812746 m!6701822))

(declare-fun m!6701892 () Bool)

(assert (=> b!5752159 m!6701892))

(assert (=> bm!440946 m!6701476))

(declare-fun m!6701894 () Bool)

(assert (=> bm!440946 m!6701894))

(assert (=> b!5752006 d!1812746))

(declare-fun d!1812748 () Bool)

(assert (=> d!1812748 (= (head!12166 s!2326) (h!69906 s!2326))))

(assert (=> b!5752006 d!1812748))

(declare-fun d!1812750 () Bool)

(assert (=> d!1812750 (= (tail!11261 s!2326) (t!376912 s!2326))))

(assert (=> b!5752006 d!1812750))

(declare-fun d!1812752 () Bool)

(assert (=> d!1812752 (= (isEmpty!35345 (tail!11261 s!2326)) ((_ is Nil!63458) (tail!11261 s!2326)))))

(assert (=> b!5751995 d!1812752))

(assert (=> b!5751995 d!1812750))

(declare-fun bm!440947 () Bool)

(declare-fun call!440952 () Bool)

(assert (=> bm!440947 (= call!440952 (isEmpty!35345 (_2!36161 (get!21893 lt!2287396))))))

(declare-fun b!5752162 () Bool)

(declare-fun e!3535124 () Bool)

(declare-fun lt!2287455 () Bool)

(assert (=> b!5752162 (= e!3535124 (not lt!2287455))))

(declare-fun d!1812754 () Bool)

(declare-fun e!3535123 () Bool)

(assert (=> d!1812754 e!3535123))

(declare-fun c!1016173 () Bool)

(assert (=> d!1812754 (= c!1016173 ((_ is EmptyExpr!15761) (regTwo!32034 r!7292)))))

(declare-fun e!3535128 () Bool)

(assert (=> d!1812754 (= lt!2287455 e!3535128)))

(declare-fun c!1016174 () Bool)

(assert (=> d!1812754 (= c!1016174 (isEmpty!35345 (_2!36161 (get!21893 lt!2287396))))))

(assert (=> d!1812754 (validRegex!7497 (regTwo!32034 r!7292))))

(assert (=> d!1812754 (= (matchR!7946 (regTwo!32034 r!7292) (_2!36161 (get!21893 lt!2287396))) lt!2287455)))

(declare-fun b!5752163 () Bool)

(declare-fun e!3535122 () Bool)

(assert (=> b!5752163 (= e!3535122 (not (= (head!12166 (_2!36161 (get!21893 lt!2287396))) (c!1015817 (regTwo!32034 r!7292)))))))

(declare-fun b!5752164 () Bool)

(declare-fun e!3535125 () Bool)

(declare-fun e!3535126 () Bool)

(assert (=> b!5752164 (= e!3535125 e!3535126)))

(declare-fun res!2428520 () Bool)

(assert (=> b!5752164 (=> (not res!2428520) (not e!3535126))))

(assert (=> b!5752164 (= res!2428520 (not lt!2287455))))

(declare-fun b!5752165 () Bool)

(declare-fun e!3535127 () Bool)

(assert (=> b!5752165 (= e!3535127 (= (head!12166 (_2!36161 (get!21893 lt!2287396))) (c!1015817 (regTwo!32034 r!7292))))))

(declare-fun b!5752166 () Bool)

(assert (=> b!5752166 (= e!3535128 (matchR!7946 (derivativeStep!4546 (regTwo!32034 r!7292) (head!12166 (_2!36161 (get!21893 lt!2287396)))) (tail!11261 (_2!36161 (get!21893 lt!2287396)))))))

(declare-fun b!5752167 () Bool)

(assert (=> b!5752167 (= e!3535126 e!3535122)))

(declare-fun res!2428526 () Bool)

(assert (=> b!5752167 (=> res!2428526 e!3535122)))

(assert (=> b!5752167 (= res!2428526 call!440952)))

(declare-fun b!5752168 () Bool)

(assert (=> b!5752168 (= e!3535123 (= lt!2287455 call!440952))))

(declare-fun b!5752169 () Bool)

(declare-fun res!2428524 () Bool)

(assert (=> b!5752169 (=> (not res!2428524) (not e!3535127))))

(assert (=> b!5752169 (= res!2428524 (isEmpty!35345 (tail!11261 (_2!36161 (get!21893 lt!2287396)))))))

(declare-fun b!5752170 () Bool)

(assert (=> b!5752170 (= e!3535123 e!3535124)))

(declare-fun c!1016175 () Bool)

(assert (=> b!5752170 (= c!1016175 ((_ is EmptyLang!15761) (regTwo!32034 r!7292)))))

(declare-fun b!5752171 () Bool)

(assert (=> b!5752171 (= e!3535128 (nullable!5793 (regTwo!32034 r!7292)))))

(declare-fun b!5752172 () Bool)

(declare-fun res!2428521 () Bool)

(assert (=> b!5752172 (=> res!2428521 e!3535122)))

(assert (=> b!5752172 (= res!2428521 (not (isEmpty!35345 (tail!11261 (_2!36161 (get!21893 lt!2287396))))))))

(declare-fun b!5752173 () Bool)

(declare-fun res!2428525 () Bool)

(assert (=> b!5752173 (=> res!2428525 e!3535125)))

(assert (=> b!5752173 (= res!2428525 (not ((_ is ElementMatch!15761) (regTwo!32034 r!7292))))))

(assert (=> b!5752173 (= e!3535124 e!3535125)))

(declare-fun b!5752174 () Bool)

(declare-fun res!2428527 () Bool)

(assert (=> b!5752174 (=> (not res!2428527) (not e!3535127))))

(assert (=> b!5752174 (= res!2428527 (not call!440952))))

(declare-fun b!5752175 () Bool)

(declare-fun res!2428523 () Bool)

(assert (=> b!5752175 (=> res!2428523 e!3535125)))

(assert (=> b!5752175 (= res!2428523 e!3535127)))

(declare-fun res!2428522 () Bool)

(assert (=> b!5752175 (=> (not res!2428522) (not e!3535127))))

(assert (=> b!5752175 (= res!2428522 lt!2287455)))

(assert (= (and d!1812754 c!1016174) b!5752171))

(assert (= (and d!1812754 (not c!1016174)) b!5752166))

(assert (= (and d!1812754 c!1016173) b!5752168))

(assert (= (and d!1812754 (not c!1016173)) b!5752170))

(assert (= (and b!5752170 c!1016175) b!5752162))

(assert (= (and b!5752170 (not c!1016175)) b!5752173))

(assert (= (and b!5752173 (not res!2428525)) b!5752175))

(assert (= (and b!5752175 res!2428522) b!5752174))

(assert (= (and b!5752174 res!2428527) b!5752169))

(assert (= (and b!5752169 res!2428524) b!5752165))

(assert (= (and b!5752175 (not res!2428523)) b!5752164))

(assert (= (and b!5752164 res!2428520) b!5752167))

(assert (= (and b!5752167 (not res!2428526)) b!5752172))

(assert (= (and b!5752172 (not res!2428521)) b!5752163))

(assert (= (or b!5752168 b!5752167 b!5752174) bm!440947))

(declare-fun m!6701896 () Bool)

(assert (=> d!1812754 m!6701896))

(assert (=> d!1812754 m!6701814))

(declare-fun m!6701898 () Bool)

(assert (=> b!5752172 m!6701898))

(assert (=> b!5752172 m!6701898))

(declare-fun m!6701900 () Bool)

(assert (=> b!5752172 m!6701900))

(declare-fun m!6701902 () Bool)

(assert (=> b!5752163 m!6701902))

(assert (=> bm!440947 m!6701896))

(assert (=> b!5752166 m!6701902))

(assert (=> b!5752166 m!6701902))

(declare-fun m!6701904 () Bool)

(assert (=> b!5752166 m!6701904))

(assert (=> b!5752166 m!6701898))

(assert (=> b!5752166 m!6701904))

(assert (=> b!5752166 m!6701898))

(declare-fun m!6701906 () Bool)

(assert (=> b!5752166 m!6701906))

(assert (=> b!5752171 m!6701820))

(assert (=> b!5752169 m!6701898))

(assert (=> b!5752169 m!6701898))

(assert (=> b!5752169 m!6701900))

(assert (=> b!5752165 m!6701902))

(assert (=> b!5751688 d!1812754))

(declare-fun d!1812756 () Bool)

(assert (=> d!1812756 (= (get!21893 lt!2287396) (v!51826 lt!2287396))))

(assert (=> b!5751688 d!1812756))

(declare-fun d!1812758 () Bool)

(declare-fun c!1016176 () Bool)

(assert (=> d!1812758 (= c!1016176 (and ((_ is ElementMatch!15761) (h!69907 (exprs!5645 (h!69908 zl!343)))) (= (c!1015817 (h!69907 (exprs!5645 (h!69908 zl!343)))) (h!69906 s!2326))))))

(declare-fun e!3535131 () (InoxSet Context!10290))

(assert (=> d!1812758 (= (derivationStepZipperDown!1103 (h!69907 (exprs!5645 (h!69908 zl!343))) (Context!10291 (t!376913 (exprs!5645 (h!69908 zl!343)))) (h!69906 s!2326)) e!3535131)))

(declare-fun b!5752176 () Bool)

(declare-fun e!3535129 () Bool)

(assert (=> b!5752176 (= e!3535129 (nullable!5793 (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343))))))))

(declare-fun call!440953 () List!63583)

(declare-fun c!1016178 () Bool)

(declare-fun bm!440948 () Bool)

(declare-fun c!1016177 () Bool)

(assert (=> bm!440948 (= call!440953 ($colon$colon!1760 (exprs!5645 (Context!10291 (t!376913 (exprs!5645 (h!69908 zl!343))))) (ite (or c!1016177 c!1016178) (regTwo!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (h!69907 (exprs!5645 (h!69908 zl!343))))))))

(declare-fun bm!440949 () Bool)

(declare-fun call!440956 () (InoxSet Context!10290))

(declare-fun call!440955 () (InoxSet Context!10290))

(assert (=> bm!440949 (= call!440956 call!440955)))

(declare-fun bm!440950 () Bool)

(declare-fun call!440957 () (InoxSet Context!10290))

(assert (=> bm!440950 (= call!440957 call!440956)))

(declare-fun call!440954 () (InoxSet Context!10290))

(declare-fun bm!440951 () Bool)

(declare-fun c!1016180 () Bool)

(assert (=> bm!440951 (= call!440954 (derivationStepZipperDown!1103 (ite c!1016180 (regOne!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343))))) (ite c!1016180 (Context!10291 (t!376913 (exprs!5645 (h!69908 zl!343)))) (Context!10291 call!440953)) (h!69906 s!2326)))))

(declare-fun b!5752177 () Bool)

(declare-fun e!3535134 () (InoxSet Context!10290))

(assert (=> b!5752177 (= e!3535134 ((as const (Array Context!10290 Bool)) false))))

(declare-fun bm!440952 () Bool)

(declare-fun call!440958 () List!63583)

(assert (=> bm!440952 (= call!440958 call!440953)))

(declare-fun b!5752178 () Bool)

(declare-fun c!1016179 () Bool)

(assert (=> b!5752178 (= c!1016179 ((_ is Star!15761) (h!69907 (exprs!5645 (h!69908 zl!343)))))))

(declare-fun e!3535132 () (InoxSet Context!10290))

(assert (=> b!5752178 (= e!3535132 e!3535134)))

(declare-fun b!5752179 () Bool)

(declare-fun e!3535133 () (InoxSet Context!10290))

(assert (=> b!5752179 (= e!3535133 ((_ map or) call!440954 call!440955))))

(declare-fun b!5752180 () Bool)

(assert (=> b!5752180 (= e!3535134 call!440957)))

(declare-fun b!5752181 () Bool)

(assert (=> b!5752181 (= e!3535131 e!3535133)))

(assert (=> b!5752181 (= c!1016180 ((_ is Union!15761) (h!69907 (exprs!5645 (h!69908 zl!343)))))))

(declare-fun b!5752182 () Bool)

(assert (=> b!5752182 (= e!3535131 (store ((as const (Array Context!10290 Bool)) false) (Context!10291 (t!376913 (exprs!5645 (h!69908 zl!343)))) true))))

(declare-fun b!5752183 () Bool)

(assert (=> b!5752183 (= c!1016177 e!3535129)))

(declare-fun res!2428528 () Bool)

(assert (=> b!5752183 (=> (not res!2428528) (not e!3535129))))

(assert (=> b!5752183 (= res!2428528 ((_ is Concat!24606) (h!69907 (exprs!5645 (h!69908 zl!343)))))))

(declare-fun e!3535130 () (InoxSet Context!10290))

(assert (=> b!5752183 (= e!3535133 e!3535130)))

(declare-fun b!5752184 () Bool)

(assert (=> b!5752184 (= e!3535132 call!440957)))

(declare-fun bm!440953 () Bool)

(assert (=> bm!440953 (= call!440955 (derivationStepZipperDown!1103 (ite c!1016180 (regTwo!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016177 (regTwo!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016178 (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (reg!16090 (h!69907 (exprs!5645 (h!69908 zl!343))))))) (ite (or c!1016180 c!1016177) (Context!10291 (t!376913 (exprs!5645 (h!69908 zl!343)))) (Context!10291 call!440958)) (h!69906 s!2326)))))

(declare-fun b!5752185 () Bool)

(assert (=> b!5752185 (= e!3535130 ((_ map or) call!440954 call!440956))))

(declare-fun b!5752186 () Bool)

(assert (=> b!5752186 (= e!3535130 e!3535132)))

(assert (=> b!5752186 (= c!1016178 ((_ is Concat!24606) (h!69907 (exprs!5645 (h!69908 zl!343)))))))

(assert (= (and d!1812758 c!1016176) b!5752182))

(assert (= (and d!1812758 (not c!1016176)) b!5752181))

(assert (= (and b!5752181 c!1016180) b!5752179))

(assert (= (and b!5752181 (not c!1016180)) b!5752183))

(assert (= (and b!5752183 res!2428528) b!5752176))

(assert (= (and b!5752183 c!1016177) b!5752185))

(assert (= (and b!5752183 (not c!1016177)) b!5752186))

(assert (= (and b!5752186 c!1016178) b!5752184))

(assert (= (and b!5752186 (not c!1016178)) b!5752178))

(assert (= (and b!5752178 c!1016179) b!5752180))

(assert (= (and b!5752178 (not c!1016179)) b!5752177))

(assert (= (or b!5752184 b!5752180) bm!440952))

(assert (= (or b!5752184 b!5752180) bm!440950))

(assert (= (or b!5752185 bm!440952) bm!440948))

(assert (= (or b!5752185 bm!440950) bm!440949))

(assert (= (or b!5752179 bm!440949) bm!440953))

(assert (= (or b!5752179 b!5752185) bm!440951))

(declare-fun m!6701908 () Bool)

(assert (=> bm!440948 m!6701908))

(declare-fun m!6701910 () Bool)

(assert (=> b!5752182 m!6701910))

(assert (=> b!5752176 m!6701754))

(declare-fun m!6701912 () Bool)

(assert (=> bm!440951 m!6701912))

(declare-fun m!6701914 () Bool)

(assert (=> bm!440953 m!6701914))

(assert (=> bm!440888 d!1812758))

(declare-fun d!1812760 () Bool)

(assert (=> d!1812760 true))

(declare-fun setRes!38616 () Bool)

(assert (=> d!1812760 setRes!38616))

(declare-fun condSetEmpty!38616 () Bool)

(declare-fun res!2428531 () (InoxSet Context!10290))

(assert (=> d!1812760 (= condSetEmpty!38616 (= res!2428531 ((as const (Array Context!10290 Bool)) false)))))

(assert (=> d!1812760 (= (choose!43607 z!1189 lambda!312041) res!2428531)))

(declare-fun setIsEmpty!38616 () Bool)

(assert (=> setIsEmpty!38616 setRes!38616))

(declare-fun tp!1589871 () Bool)

(declare-fun e!3535137 () Bool)

(declare-fun setNonEmpty!38616 () Bool)

(declare-fun setElem!38616 () Context!10290)

(assert (=> setNonEmpty!38616 (= setRes!38616 (and tp!1589871 (inv!82649 setElem!38616) e!3535137))))

(declare-fun setRest!38616 () (InoxSet Context!10290))

(assert (=> setNonEmpty!38616 (= res!2428531 ((_ map or) (store ((as const (Array Context!10290 Bool)) false) setElem!38616 true) setRest!38616))))

(declare-fun b!5752189 () Bool)

(declare-fun tp!1589872 () Bool)

(assert (=> b!5752189 (= e!3535137 tp!1589872)))

(assert (= (and d!1812760 condSetEmpty!38616) setIsEmpty!38616))

(assert (= (and d!1812760 (not condSetEmpty!38616)) setNonEmpty!38616))

(assert (= setNonEmpty!38616 b!5752189))

(declare-fun m!6701916 () Bool)

(assert (=> setNonEmpty!38616 m!6701916))

(assert (=> d!1812692 d!1812760))

(declare-fun d!1812762 () Bool)

(declare-fun res!2428536 () Bool)

(declare-fun e!3535142 () Bool)

(assert (=> d!1812762 (=> res!2428536 e!3535142)))

(assert (=> d!1812762 (= res!2428536 ((_ is Nil!63459) lt!2287382))))

(assert (=> d!1812762 (= (forall!14881 lt!2287382 lambda!312097) e!3535142)))

(declare-fun b!5752194 () Bool)

(declare-fun e!3535143 () Bool)

(assert (=> b!5752194 (= e!3535142 e!3535143)))

(declare-fun res!2428537 () Bool)

(assert (=> b!5752194 (=> (not res!2428537) (not e!3535143))))

(declare-fun dynLambda!24839 (Int Regex!15761) Bool)

(assert (=> b!5752194 (= res!2428537 (dynLambda!24839 lambda!312097 (h!69907 lt!2287382)))))

(declare-fun b!5752195 () Bool)

(assert (=> b!5752195 (= e!3535143 (forall!14881 (t!376913 lt!2287382) lambda!312097))))

(assert (= (and d!1812762 (not res!2428536)) b!5752194))

(assert (= (and b!5752194 res!2428537) b!5752195))

(declare-fun b_lambda!217265 () Bool)

(assert (=> (not b_lambda!217265) (not b!5752194)))

(declare-fun m!6701918 () Bool)

(assert (=> b!5752194 m!6701918))

(declare-fun m!6701920 () Bool)

(assert (=> b!5752195 m!6701920))

(assert (=> d!1812604 d!1812762))

(declare-fun d!1812764 () Bool)

(declare-fun c!1016181 () Bool)

(assert (=> d!1812764 (= c!1016181 (isEmpty!35345 (tail!11261 (t!376912 s!2326))))))

(declare-fun e!3535144 () Bool)

(assert (=> d!1812764 (= (matchZipper!1899 (derivationStepZipper!1844 lt!2287265 (head!12166 (t!376912 s!2326))) (tail!11261 (t!376912 s!2326))) e!3535144)))

(declare-fun b!5752196 () Bool)

(assert (=> b!5752196 (= e!3535144 (nullableZipper!1692 (derivationStepZipper!1844 lt!2287265 (head!12166 (t!376912 s!2326)))))))

(declare-fun b!5752197 () Bool)

(assert (=> b!5752197 (= e!3535144 (matchZipper!1899 (derivationStepZipper!1844 (derivationStepZipper!1844 lt!2287265 (head!12166 (t!376912 s!2326))) (head!12166 (tail!11261 (t!376912 s!2326)))) (tail!11261 (tail!11261 (t!376912 s!2326)))))))

(assert (= (and d!1812764 c!1016181) b!5752196))

(assert (= (and d!1812764 (not c!1016181)) b!5752197))

(assert (=> d!1812764 m!6701600))

(declare-fun m!6701922 () Bool)

(assert (=> d!1812764 m!6701922))

(assert (=> b!5752196 m!6701606))

(declare-fun m!6701924 () Bool)

(assert (=> b!5752196 m!6701924))

(assert (=> b!5752197 m!6701600))

(declare-fun m!6701926 () Bool)

(assert (=> b!5752197 m!6701926))

(assert (=> b!5752197 m!6701606))

(assert (=> b!5752197 m!6701926))

(declare-fun m!6701928 () Bool)

(assert (=> b!5752197 m!6701928))

(assert (=> b!5752197 m!6701600))

(declare-fun m!6701930 () Bool)

(assert (=> b!5752197 m!6701930))

(assert (=> b!5752197 m!6701928))

(assert (=> b!5752197 m!6701930))

(declare-fun m!6701932 () Bool)

(assert (=> b!5752197 m!6701932))

(assert (=> b!5751706 d!1812764))

(declare-fun bs!1347310 () Bool)

(declare-fun d!1812766 () Bool)

(assert (= bs!1347310 (and d!1812766 b!5750980)))

(declare-fun lambda!312138 () Int)

(assert (=> bs!1347310 (= (= (head!12166 (t!376912 s!2326)) (h!69906 s!2326)) (= lambda!312138 lambda!312041))))

(declare-fun bs!1347311 () Bool)

(assert (= bs!1347311 (and d!1812766 d!1812614)))

(assert (=> bs!1347311 (= (= (head!12166 (t!376912 s!2326)) (h!69906 s!2326)) (= lambda!312138 lambda!312101))))

(declare-fun bs!1347312 () Bool)

(assert (= bs!1347312 (and d!1812766 d!1812642)))

(assert (=> bs!1347312 (= (= (head!12166 (t!376912 s!2326)) (h!69906 s!2326)) (= lambda!312138 lambda!312114))))

(assert (=> d!1812766 true))

(assert (=> d!1812766 (= (derivationStepZipper!1844 lt!2287265 (head!12166 (t!376912 s!2326))) (flatMap!1374 lt!2287265 lambda!312138))))

(declare-fun bs!1347313 () Bool)

(assert (= bs!1347313 d!1812766))

(declare-fun m!6701934 () Bool)

(assert (=> bs!1347313 m!6701934))

(assert (=> b!5751706 d!1812766))

(declare-fun d!1812768 () Bool)

(assert (=> d!1812768 (= (head!12166 (t!376912 s!2326)) (h!69906 (t!376912 s!2326)))))

(assert (=> b!5751706 d!1812768))

(declare-fun d!1812770 () Bool)

(assert (=> d!1812770 (= (tail!11261 (t!376912 s!2326)) (t!376912 (t!376912 s!2326)))))

(assert (=> b!5751706 d!1812770))

(assert (=> b!5751834 d!1812634))

(assert (=> b!5751613 d!1812616))

(declare-fun bs!1347314 () Bool)

(declare-fun d!1812772 () Bool)

(assert (= bs!1347314 (and d!1812772 d!1812606)))

(declare-fun lambda!312139 () Int)

(assert (=> bs!1347314 (= lambda!312139 lambda!312098)))

(declare-fun bs!1347315 () Bool)

(assert (= bs!1347315 (and d!1812772 d!1812600)))

(assert (=> bs!1347315 (= lambda!312139 lambda!312091)))

(declare-fun bs!1347316 () Bool)

(assert (= bs!1347316 (and d!1812772 d!1812708)))

(assert (=> bs!1347316 (= lambda!312139 lambda!312135)))

(declare-fun bs!1347317 () Bool)

(assert (= bs!1347317 (and d!1812772 d!1812602)))

(assert (=> bs!1347317 (= lambda!312139 lambda!312094)))

(declare-fun bs!1347318 () Bool)

(assert (= bs!1347318 (and d!1812772 d!1812616)))

(assert (=> bs!1347318 (= lambda!312139 lambda!312104)))

(declare-fun bs!1347319 () Bool)

(assert (= bs!1347319 (and d!1812772 d!1812604)))

(assert (=> bs!1347319 (= lambda!312139 lambda!312097)))

(declare-fun lt!2287456 () List!63583)

(assert (=> d!1812772 (forall!14881 lt!2287456 lambda!312139)))

(declare-fun e!3535145 () List!63583)

(assert (=> d!1812772 (= lt!2287456 e!3535145)))

(declare-fun c!1016182 () Bool)

(assert (=> d!1812772 (= c!1016182 ((_ is Cons!63460) (t!376914 zl!343)))))

(assert (=> d!1812772 (= (unfocusZipperList!1189 (t!376914 zl!343)) lt!2287456)))

(declare-fun b!5752198 () Bool)

(assert (=> b!5752198 (= e!3535145 (Cons!63459 (generalisedConcat!1376 (exprs!5645 (h!69908 (t!376914 zl!343)))) (unfocusZipperList!1189 (t!376914 (t!376914 zl!343)))))))

(declare-fun b!5752199 () Bool)

(assert (=> b!5752199 (= e!3535145 Nil!63459)))

(assert (= (and d!1812772 c!1016182) b!5752198))

(assert (= (and d!1812772 (not c!1016182)) b!5752199))

(declare-fun m!6701936 () Bool)

(assert (=> d!1812772 m!6701936))

(declare-fun m!6701938 () Bool)

(assert (=> b!5752198 m!6701938))

(declare-fun m!6701940 () Bool)

(assert (=> b!5752198 m!6701940))

(assert (=> b!5751613 d!1812772))

(declare-fun d!1812774 () Bool)

(assert (=> d!1812774 (= (isEmpty!35342 (t!376913 (unfocusZipperList!1189 zl!343))) ((_ is Nil!63459) (t!376913 (unfocusZipperList!1189 zl!343))))))

(assert (=> b!5751607 d!1812774))

(declare-fun d!1812776 () Bool)

(declare-fun c!1016183 () Bool)

(assert (=> d!1812776 (= c!1016183 (isEmpty!35345 (tail!11261 (t!376912 s!2326))))))

(declare-fun e!3535146 () Bool)

(assert (=> d!1812776 (= (matchZipper!1899 (derivationStepZipper!1844 lt!2287262 (head!12166 (t!376912 s!2326))) (tail!11261 (t!376912 s!2326))) e!3535146)))

(declare-fun b!5752200 () Bool)

(assert (=> b!5752200 (= e!3535146 (nullableZipper!1692 (derivationStepZipper!1844 lt!2287262 (head!12166 (t!376912 s!2326)))))))

(declare-fun b!5752201 () Bool)

(assert (=> b!5752201 (= e!3535146 (matchZipper!1899 (derivationStepZipper!1844 (derivationStepZipper!1844 lt!2287262 (head!12166 (t!376912 s!2326))) (head!12166 (tail!11261 (t!376912 s!2326)))) (tail!11261 (tail!11261 (t!376912 s!2326)))))))

(assert (= (and d!1812776 c!1016183) b!5752200))

(assert (= (and d!1812776 (not c!1016183)) b!5752201))

(assert (=> d!1812776 m!6701600))

(assert (=> d!1812776 m!6701922))

(assert (=> b!5752200 m!6701612))

(declare-fun m!6701942 () Bool)

(assert (=> b!5752200 m!6701942))

(assert (=> b!5752201 m!6701600))

(assert (=> b!5752201 m!6701926))

(assert (=> b!5752201 m!6701612))

(assert (=> b!5752201 m!6701926))

(declare-fun m!6701944 () Bool)

(assert (=> b!5752201 m!6701944))

(assert (=> b!5752201 m!6701600))

(assert (=> b!5752201 m!6701930))

(assert (=> b!5752201 m!6701944))

(assert (=> b!5752201 m!6701930))

(declare-fun m!6701946 () Bool)

(assert (=> b!5752201 m!6701946))

(assert (=> b!5751708 d!1812776))

(declare-fun bs!1347320 () Bool)

(declare-fun d!1812778 () Bool)

(assert (= bs!1347320 (and d!1812778 b!5750980)))

(declare-fun lambda!312140 () Int)

(assert (=> bs!1347320 (= (= (head!12166 (t!376912 s!2326)) (h!69906 s!2326)) (= lambda!312140 lambda!312041))))

(declare-fun bs!1347321 () Bool)

(assert (= bs!1347321 (and d!1812778 d!1812614)))

(assert (=> bs!1347321 (= (= (head!12166 (t!376912 s!2326)) (h!69906 s!2326)) (= lambda!312140 lambda!312101))))

(declare-fun bs!1347322 () Bool)

(assert (= bs!1347322 (and d!1812778 d!1812642)))

(assert (=> bs!1347322 (= (= (head!12166 (t!376912 s!2326)) (h!69906 s!2326)) (= lambda!312140 lambda!312114))))

(declare-fun bs!1347323 () Bool)

(assert (= bs!1347323 (and d!1812778 d!1812766)))

(assert (=> bs!1347323 (= lambda!312140 lambda!312138)))

(assert (=> d!1812778 true))

(assert (=> d!1812778 (= (derivationStepZipper!1844 lt!2287262 (head!12166 (t!376912 s!2326))) (flatMap!1374 lt!2287262 lambda!312140))))

(declare-fun bs!1347324 () Bool)

(assert (= bs!1347324 d!1812778))

(declare-fun m!6701948 () Bool)

(assert (=> bs!1347324 m!6701948))

(assert (=> b!5751708 d!1812778))

(assert (=> b!5751708 d!1812768))

(assert (=> b!5751708 d!1812770))

(assert (=> d!1812634 d!1812742))

(assert (=> bm!440872 d!1812730))

(assert (=> bs!1347292 d!1812610))

(assert (=> b!5751821 d!1812748))

(declare-fun d!1812780 () Bool)

(assert (=> d!1812780 (= (isEmptyExpr!1251 lt!2287388) ((_ is EmptyExpr!15761) lt!2287388))))

(assert (=> b!5751654 d!1812780))

(declare-fun bs!1347325 () Bool)

(declare-fun d!1812782 () Bool)

(assert (= bs!1347325 (and d!1812782 d!1812772)))

(declare-fun lambda!312141 () Int)

(assert (=> bs!1347325 (= lambda!312141 lambda!312139)))

(declare-fun bs!1347326 () Bool)

(assert (= bs!1347326 (and d!1812782 d!1812606)))

(assert (=> bs!1347326 (= lambda!312141 lambda!312098)))

(declare-fun bs!1347327 () Bool)

(assert (= bs!1347327 (and d!1812782 d!1812600)))

(assert (=> bs!1347327 (= lambda!312141 lambda!312091)))

(declare-fun bs!1347328 () Bool)

(assert (= bs!1347328 (and d!1812782 d!1812708)))

(assert (=> bs!1347328 (= lambda!312141 lambda!312135)))

(declare-fun bs!1347329 () Bool)

(assert (= bs!1347329 (and d!1812782 d!1812602)))

(assert (=> bs!1347329 (= lambda!312141 lambda!312094)))

(declare-fun bs!1347330 () Bool)

(assert (= bs!1347330 (and d!1812782 d!1812616)))

(assert (=> bs!1347330 (= lambda!312141 lambda!312104)))

(declare-fun bs!1347331 () Bool)

(assert (= bs!1347331 (and d!1812782 d!1812604)))

(assert (=> bs!1347331 (= lambda!312141 lambda!312097)))

(declare-fun b!5752202 () Bool)

(declare-fun e!3535150 () Regex!15761)

(assert (=> b!5752202 (= e!3535150 (h!69907 (t!376913 (t!376913 (exprs!5645 (h!69908 zl!343))))))))

(declare-fun b!5752203 () Bool)

(declare-fun e!3535148 () Bool)

(declare-fun e!3535149 () Bool)

(assert (=> b!5752203 (= e!3535148 e!3535149)))

(declare-fun c!1016185 () Bool)

(assert (=> b!5752203 (= c!1016185 (isEmpty!35342 (t!376913 (t!376913 (exprs!5645 (h!69908 zl!343))))))))

(declare-fun b!5752204 () Bool)

(declare-fun lt!2287457 () Regex!15761)

(assert (=> b!5752204 (= e!3535149 (isEmptyExpr!1251 lt!2287457))))

(declare-fun b!5752205 () Bool)

(declare-fun e!3535151 () Bool)

(assert (=> b!5752205 (= e!3535151 (= lt!2287457 (head!12167 (t!376913 (t!376913 (exprs!5645 (h!69908 zl!343)))))))))

(declare-fun b!5752206 () Bool)

(assert (=> b!5752206 (= e!3535151 (isConcat!774 lt!2287457))))

(declare-fun b!5752207 () Bool)

(declare-fun e!3535147 () Regex!15761)

(assert (=> b!5752207 (= e!3535147 (Concat!24606 (h!69907 (t!376913 (t!376913 (exprs!5645 (h!69908 zl!343))))) (generalisedConcat!1376 (t!376913 (t!376913 (t!376913 (exprs!5645 (h!69908 zl!343))))))))))

(assert (=> d!1812782 e!3535148))

(declare-fun res!2428538 () Bool)

(assert (=> d!1812782 (=> (not res!2428538) (not e!3535148))))

(assert (=> d!1812782 (= res!2428538 (validRegex!7497 lt!2287457))))

(assert (=> d!1812782 (= lt!2287457 e!3535150)))

(declare-fun c!1016186 () Bool)

(declare-fun e!3535152 () Bool)

(assert (=> d!1812782 (= c!1016186 e!3535152)))

(declare-fun res!2428539 () Bool)

(assert (=> d!1812782 (=> (not res!2428539) (not e!3535152))))

(assert (=> d!1812782 (= res!2428539 ((_ is Cons!63459) (t!376913 (t!376913 (exprs!5645 (h!69908 zl!343))))))))

(assert (=> d!1812782 (forall!14881 (t!376913 (t!376913 (exprs!5645 (h!69908 zl!343)))) lambda!312141)))

(assert (=> d!1812782 (= (generalisedConcat!1376 (t!376913 (t!376913 (exprs!5645 (h!69908 zl!343))))) lt!2287457)))

(declare-fun b!5752208 () Bool)

(assert (=> b!5752208 (= e!3535147 EmptyExpr!15761)))

(declare-fun b!5752209 () Bool)

(assert (=> b!5752209 (= e!3535149 e!3535151)))

(declare-fun c!1016184 () Bool)

(assert (=> b!5752209 (= c!1016184 (isEmpty!35342 (tail!11262 (t!376913 (t!376913 (exprs!5645 (h!69908 zl!343)))))))))

(declare-fun b!5752210 () Bool)

(assert (=> b!5752210 (= e!3535152 (isEmpty!35342 (t!376913 (t!376913 (t!376913 (exprs!5645 (h!69908 zl!343)))))))))

(declare-fun b!5752211 () Bool)

(assert (=> b!5752211 (= e!3535150 e!3535147)))

(declare-fun c!1016187 () Bool)

(assert (=> b!5752211 (= c!1016187 ((_ is Cons!63459) (t!376913 (t!376913 (exprs!5645 (h!69908 zl!343))))))))

(assert (= (and d!1812782 res!2428539) b!5752210))

(assert (= (and d!1812782 c!1016186) b!5752202))

(assert (= (and d!1812782 (not c!1016186)) b!5752211))

(assert (= (and b!5752211 c!1016187) b!5752207))

(assert (= (and b!5752211 (not c!1016187)) b!5752208))

(assert (= (and d!1812782 res!2428538) b!5752203))

(assert (= (and b!5752203 c!1016185) b!5752204))

(assert (= (and b!5752203 (not c!1016185)) b!5752209))

(assert (= (and b!5752209 c!1016184) b!5752205))

(assert (= (and b!5752209 (not c!1016184)) b!5752206))

(declare-fun m!6701950 () Bool)

(assert (=> b!5752207 m!6701950))

(declare-fun m!6701952 () Bool)

(assert (=> b!5752209 m!6701952))

(assert (=> b!5752209 m!6701952))

(declare-fun m!6701954 () Bool)

(assert (=> b!5752209 m!6701954))

(declare-fun m!6701956 () Bool)

(assert (=> d!1812782 m!6701956))

(declare-fun m!6701958 () Bool)

(assert (=> d!1812782 m!6701958))

(assert (=> b!5752203 m!6701810))

(declare-fun m!6701960 () Bool)

(assert (=> b!5752205 m!6701960))

(declare-fun m!6701962 () Bool)

(assert (=> b!5752206 m!6701962))

(declare-fun m!6701964 () Bool)

(assert (=> b!5752210 m!6701964))

(declare-fun m!6701966 () Bool)

(assert (=> b!5752204 m!6701966))

(assert (=> b!5751983 d!1812782))

(declare-fun bs!1347332 () Bool)

(declare-fun b!5752216 () Bool)

(assert (= bs!1347332 (and b!5752216 b!5751872)))

(declare-fun lambda!312142 () Int)

(assert (=> bs!1347332 (not (= lambda!312142 lambda!312134))))

(declare-fun bs!1347333 () Bool)

(assert (= bs!1347333 (and b!5752216 b!5751783)))

(assert (=> bs!1347333 (= (and (= (reg!16090 (regOne!32035 r!7292)) (reg!16090 r!7292)) (= (regOne!32035 r!7292) r!7292)) (= lambda!312142 lambda!312119))))

(declare-fun bs!1347334 () Bool)

(assert (= bs!1347334 (and b!5752216 d!1812626)))

(assert (=> bs!1347334 (not (= lambda!312142 lambda!312113))))

(declare-fun bs!1347335 () Bool)

(assert (= bs!1347335 (and b!5752216 b!5752090)))

(assert (=> bs!1347335 (not (= lambda!312142 lambda!312137))))

(declare-fun bs!1347336 () Bool)

(assert (= bs!1347336 (and b!5752216 b!5750992)))

(assert (=> bs!1347336 (not (= lambda!312142 lambda!312039))))

(assert (=> bs!1347336 (not (= lambda!312142 lambda!312040))))

(declare-fun bs!1347337 () Bool)

(assert (= bs!1347337 (and b!5752216 b!5751869)))

(assert (=> bs!1347337 (= (and (= (reg!16090 (regOne!32035 r!7292)) (reg!16090 lt!2287258)) (= (regOne!32035 r!7292) lt!2287258)) (= lambda!312142 lambda!312133))))

(declare-fun bs!1347338 () Bool)

(assert (= bs!1347338 (and b!5752216 b!5752087)))

(assert (=> bs!1347338 (= (and (= (reg!16090 (regOne!32035 r!7292)) (reg!16090 (regOne!32035 lt!2287258))) (= (regOne!32035 r!7292) (regOne!32035 lt!2287258))) (= lambda!312142 lambda!312136))))

(assert (=> bs!1347334 (not (= lambda!312142 lambda!312112))))

(declare-fun bs!1347339 () Bool)

(assert (= bs!1347339 (and b!5752216 d!1812624)))

(assert (=> bs!1347339 (not (= lambda!312142 lambda!312107))))

(declare-fun bs!1347340 () Bool)

(assert (= bs!1347340 (and b!5752216 b!5751786)))

(assert (=> bs!1347340 (not (= lambda!312142 lambda!312120))))

(assert (=> b!5752216 true))

(assert (=> b!5752216 true))

(declare-fun bs!1347341 () Bool)

(declare-fun b!5752219 () Bool)

(assert (= bs!1347341 (and b!5752219 b!5751872)))

(declare-fun lambda!312143 () Int)

(assert (=> bs!1347341 (= (and (= (regOne!32034 (regOne!32035 r!7292)) (regOne!32034 lt!2287258)) (= (regTwo!32034 (regOne!32035 r!7292)) (regTwo!32034 lt!2287258))) (= lambda!312143 lambda!312134))))

(declare-fun bs!1347342 () Bool)

(assert (= bs!1347342 (and b!5752219 b!5751783)))

(assert (=> bs!1347342 (not (= lambda!312143 lambda!312119))))

(declare-fun bs!1347343 () Bool)

(assert (= bs!1347343 (and b!5752219 d!1812626)))

(assert (=> bs!1347343 (= (and (= (regOne!32034 (regOne!32035 r!7292)) (regOne!32034 r!7292)) (= (regTwo!32034 (regOne!32035 r!7292)) (regTwo!32034 r!7292))) (= lambda!312143 lambda!312113))))

(declare-fun bs!1347344 () Bool)

(assert (= bs!1347344 (and b!5752219 b!5752090)))

(assert (=> bs!1347344 (= (and (= (regOne!32034 (regOne!32035 r!7292)) (regOne!32034 (regOne!32035 lt!2287258))) (= (regTwo!32034 (regOne!32035 r!7292)) (regTwo!32034 (regOne!32035 lt!2287258)))) (= lambda!312143 lambda!312137))))

(declare-fun bs!1347345 () Bool)

(assert (= bs!1347345 (and b!5752219 b!5750992)))

(assert (=> bs!1347345 (not (= lambda!312143 lambda!312039))))

(assert (=> bs!1347345 (= (and (= (regOne!32034 (regOne!32035 r!7292)) (regOne!32034 r!7292)) (= (regTwo!32034 (regOne!32035 r!7292)) (regTwo!32034 r!7292))) (= lambda!312143 lambda!312040))))

(declare-fun bs!1347346 () Bool)

(assert (= bs!1347346 (and b!5752219 b!5752216)))

(assert (=> bs!1347346 (not (= lambda!312143 lambda!312142))))

(declare-fun bs!1347347 () Bool)

(assert (= bs!1347347 (and b!5752219 b!5751869)))

(assert (=> bs!1347347 (not (= lambda!312143 lambda!312133))))

(declare-fun bs!1347348 () Bool)

(assert (= bs!1347348 (and b!5752219 b!5752087)))

(assert (=> bs!1347348 (not (= lambda!312143 lambda!312136))))

(assert (=> bs!1347343 (not (= lambda!312143 lambda!312112))))

(declare-fun bs!1347349 () Bool)

(assert (= bs!1347349 (and b!5752219 d!1812624)))

(assert (=> bs!1347349 (not (= lambda!312143 lambda!312107))))

(declare-fun bs!1347350 () Bool)

(assert (= bs!1347350 (and b!5752219 b!5751786)))

(assert (=> bs!1347350 (= (and (= (regOne!32034 (regOne!32035 r!7292)) (regOne!32034 r!7292)) (= (regTwo!32034 (regOne!32035 r!7292)) (regTwo!32034 r!7292))) (= lambda!312143 lambda!312120))))

(assert (=> b!5752219 true))

(assert (=> b!5752219 true))

(declare-fun b!5752212 () Bool)

(declare-fun e!3535153 () Bool)

(declare-fun call!440960 () Bool)

(assert (=> b!5752212 (= e!3535153 call!440960)))

(declare-fun bm!440954 () Bool)

(assert (=> bm!440954 (= call!440960 (isEmpty!35345 s!2326))))

(declare-fun b!5752213 () Bool)

(declare-fun c!1016190 () Bool)

(assert (=> b!5752213 (= c!1016190 ((_ is Union!15761) (regOne!32035 r!7292)))))

(declare-fun e!3535159 () Bool)

(declare-fun e!3535157 () Bool)

(assert (=> b!5752213 (= e!3535159 e!3535157)))

(declare-fun b!5752214 () Bool)

(assert (=> b!5752214 (= e!3535159 (= s!2326 (Cons!63458 (c!1015817 (regOne!32035 r!7292)) Nil!63458)))))

(declare-fun b!5752215 () Bool)

(declare-fun c!1016191 () Bool)

(assert (=> b!5752215 (= c!1016191 ((_ is ElementMatch!15761) (regOne!32035 r!7292)))))

(declare-fun e!3535158 () Bool)

(assert (=> b!5752215 (= e!3535158 e!3535159)))

(declare-fun e!3535156 () Bool)

(declare-fun call!440959 () Bool)

(assert (=> b!5752216 (= e!3535156 call!440959)))

(declare-fun d!1812784 () Bool)

(declare-fun c!1016189 () Bool)

(assert (=> d!1812784 (= c!1016189 ((_ is EmptyExpr!15761) (regOne!32035 r!7292)))))

(assert (=> d!1812784 (= (matchRSpec!2864 (regOne!32035 r!7292) s!2326) e!3535153)))

(declare-fun c!1016188 () Bool)

(declare-fun bm!440955 () Bool)

(assert (=> bm!440955 (= call!440959 (Exists!2861 (ite c!1016188 lambda!312142 lambda!312143)))))

(declare-fun b!5752217 () Bool)

(assert (=> b!5752217 (= e!3535153 e!3535158)))

(declare-fun res!2428541 () Bool)

(assert (=> b!5752217 (= res!2428541 (not ((_ is EmptyLang!15761) (regOne!32035 r!7292))))))

(assert (=> b!5752217 (=> (not res!2428541) (not e!3535158))))

(declare-fun b!5752218 () Bool)

(declare-fun e!3535155 () Bool)

(assert (=> b!5752218 (= e!3535157 e!3535155)))

(assert (=> b!5752218 (= c!1016188 ((_ is Star!15761) (regOne!32035 r!7292)))))

(assert (=> b!5752219 (= e!3535155 call!440959)))

(declare-fun b!5752220 () Bool)

(declare-fun e!3535154 () Bool)

(assert (=> b!5752220 (= e!3535157 e!3535154)))

(declare-fun res!2428540 () Bool)

(assert (=> b!5752220 (= res!2428540 (matchRSpec!2864 (regOne!32035 (regOne!32035 r!7292)) s!2326))))

(assert (=> b!5752220 (=> res!2428540 e!3535154)))

(declare-fun b!5752221 () Bool)

(declare-fun res!2428542 () Bool)

(assert (=> b!5752221 (=> res!2428542 e!3535156)))

(assert (=> b!5752221 (= res!2428542 call!440960)))

(assert (=> b!5752221 (= e!3535155 e!3535156)))

(declare-fun b!5752222 () Bool)

(assert (=> b!5752222 (= e!3535154 (matchRSpec!2864 (regTwo!32035 (regOne!32035 r!7292)) s!2326))))

(assert (= (and d!1812784 c!1016189) b!5752212))

(assert (= (and d!1812784 (not c!1016189)) b!5752217))

(assert (= (and b!5752217 res!2428541) b!5752215))

(assert (= (and b!5752215 c!1016191) b!5752214))

(assert (= (and b!5752215 (not c!1016191)) b!5752213))

(assert (= (and b!5752213 c!1016190) b!5752220))

(assert (= (and b!5752213 (not c!1016190)) b!5752218))

(assert (= (and b!5752220 (not res!2428540)) b!5752222))

(assert (= (and b!5752218 c!1016188) b!5752221))

(assert (= (and b!5752218 (not c!1016188)) b!5752219))

(assert (= (and b!5752221 (not res!2428542)) b!5752216))

(assert (= (or b!5752216 b!5752219) bm!440955))

(assert (= (or b!5752212 b!5752221) bm!440954))

(assert (=> bm!440954 m!6701472))

(declare-fun m!6701968 () Bool)

(assert (=> bm!440955 m!6701968))

(declare-fun m!6701970 () Bool)

(assert (=> b!5752220 m!6701970))

(declare-fun m!6701972 () Bool)

(assert (=> b!5752222 m!6701972))

(assert (=> b!5751787 d!1812784))

(declare-fun bm!440960 () Bool)

(declare-fun call!440966 () Bool)

(declare-fun c!1016194 () Bool)

(assert (=> bm!440960 (= call!440966 (nullable!5793 (ite c!1016194 (regTwo!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (regTwo!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))))))))

(declare-fun b!5752237 () Bool)

(declare-fun e!3535174 () Bool)

(declare-fun e!3535177 () Bool)

(assert (=> b!5752237 (= e!3535174 e!3535177)))

(assert (=> b!5752237 (= c!1016194 ((_ is Union!15761) (h!69907 (exprs!5645 (h!69908 zl!343)))))))

(declare-fun bm!440961 () Bool)

(declare-fun call!440965 () Bool)

(assert (=> bm!440961 (= call!440965 (nullable!5793 (ite c!1016194 (regOne!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))))))))

(declare-fun d!1812786 () Bool)

(declare-fun res!2428556 () Bool)

(declare-fun e!3535172 () Bool)

(assert (=> d!1812786 (=> res!2428556 e!3535172)))

(assert (=> d!1812786 (= res!2428556 ((_ is EmptyExpr!15761) (h!69907 (exprs!5645 (h!69908 zl!343)))))))

(assert (=> d!1812786 (= (nullableFct!1838 (h!69907 (exprs!5645 (h!69908 zl!343)))) e!3535172)))

(declare-fun b!5752238 () Bool)

(declare-fun e!3535176 () Bool)

(assert (=> b!5752238 (= e!3535177 e!3535176)))

(declare-fun res!2428555 () Bool)

(assert (=> b!5752238 (= res!2428555 call!440965)))

(assert (=> b!5752238 (=> (not res!2428555) (not e!3535176))))

(declare-fun b!5752239 () Bool)

(assert (=> b!5752239 (= e!3535176 call!440966)))

(declare-fun b!5752240 () Bool)

(declare-fun e!3535175 () Bool)

(assert (=> b!5752240 (= e!3535175 e!3535174)))

(declare-fun res!2428553 () Bool)

(assert (=> b!5752240 (=> res!2428553 e!3535174)))

(assert (=> b!5752240 (= res!2428553 ((_ is Star!15761) (h!69907 (exprs!5645 (h!69908 zl!343)))))))

(declare-fun b!5752241 () Bool)

(assert (=> b!5752241 (= e!3535172 e!3535175)))

(declare-fun res!2428554 () Bool)

(assert (=> b!5752241 (=> (not res!2428554) (not e!3535175))))

(assert (=> b!5752241 (= res!2428554 (and (not ((_ is EmptyLang!15761) (h!69907 (exprs!5645 (h!69908 zl!343))))) (not ((_ is ElementMatch!15761) (h!69907 (exprs!5645 (h!69908 zl!343)))))))))

(declare-fun b!5752242 () Bool)

(declare-fun e!3535173 () Bool)

(assert (=> b!5752242 (= e!3535177 e!3535173)))

(declare-fun res!2428557 () Bool)

(assert (=> b!5752242 (= res!2428557 call!440965)))

(assert (=> b!5752242 (=> res!2428557 e!3535173)))

(declare-fun b!5752243 () Bool)

(assert (=> b!5752243 (= e!3535173 call!440966)))

(assert (= (and d!1812786 (not res!2428556)) b!5752241))

(assert (= (and b!5752241 res!2428554) b!5752240))

(assert (= (and b!5752240 (not res!2428553)) b!5752237))

(assert (= (and b!5752237 c!1016194) b!5752242))

(assert (= (and b!5752237 (not c!1016194)) b!5752238))

(assert (= (and b!5752242 (not res!2428557)) b!5752243))

(assert (= (and b!5752238 res!2428555) b!5752239))

(assert (= (or b!5752243 b!5752239) bm!440960))

(assert (= (or b!5752242 b!5752238) bm!440961))

(declare-fun m!6701974 () Bool)

(assert (=> bm!440960 m!6701974))

(declare-fun m!6701976 () Bool)

(assert (=> bm!440961 m!6701976))

(assert (=> d!1812694 d!1812786))

(declare-fun d!1812788 () Bool)

(assert (=> d!1812788 (= (isDefined!12473 lt!2287396) (not (isEmpty!35346 lt!2287396)))))

(declare-fun bs!1347351 () Bool)

(assert (= bs!1347351 d!1812788))

(declare-fun m!6701978 () Bool)

(assert (=> bs!1347351 m!6701978))

(assert (=> d!1812618 d!1812788))

(declare-fun bm!440962 () Bool)

(declare-fun call!440967 () Bool)

(assert (=> bm!440962 (= call!440967 (isEmpty!35345 Nil!63458))))

(declare-fun b!5752244 () Bool)

(declare-fun e!3535180 () Bool)

(declare-fun lt!2287458 () Bool)

(assert (=> b!5752244 (= e!3535180 (not lt!2287458))))

(declare-fun d!1812790 () Bool)

(declare-fun e!3535179 () Bool)

(assert (=> d!1812790 e!3535179))

(declare-fun c!1016195 () Bool)

(assert (=> d!1812790 (= c!1016195 ((_ is EmptyExpr!15761) (regOne!32034 r!7292)))))

(declare-fun e!3535184 () Bool)

(assert (=> d!1812790 (= lt!2287458 e!3535184)))

(declare-fun c!1016196 () Bool)

(assert (=> d!1812790 (= c!1016196 (isEmpty!35345 Nil!63458))))

(assert (=> d!1812790 (validRegex!7497 (regOne!32034 r!7292))))

(assert (=> d!1812790 (= (matchR!7946 (regOne!32034 r!7292) Nil!63458) lt!2287458)))

(declare-fun b!5752245 () Bool)

(declare-fun e!3535178 () Bool)

(assert (=> b!5752245 (= e!3535178 (not (= (head!12166 Nil!63458) (c!1015817 (regOne!32034 r!7292)))))))

(declare-fun b!5752246 () Bool)

(declare-fun e!3535181 () Bool)

(declare-fun e!3535182 () Bool)

(assert (=> b!5752246 (= e!3535181 e!3535182)))

(declare-fun res!2428558 () Bool)

(assert (=> b!5752246 (=> (not res!2428558) (not e!3535182))))

(assert (=> b!5752246 (= res!2428558 (not lt!2287458))))

(declare-fun b!5752247 () Bool)

(declare-fun e!3535183 () Bool)

(assert (=> b!5752247 (= e!3535183 (= (head!12166 Nil!63458) (c!1015817 (regOne!32034 r!7292))))))

(declare-fun b!5752248 () Bool)

(assert (=> b!5752248 (= e!3535184 (matchR!7946 (derivativeStep!4546 (regOne!32034 r!7292) (head!12166 Nil!63458)) (tail!11261 Nil!63458)))))

(declare-fun b!5752249 () Bool)

(assert (=> b!5752249 (= e!3535182 e!3535178)))

(declare-fun res!2428564 () Bool)

(assert (=> b!5752249 (=> res!2428564 e!3535178)))

(assert (=> b!5752249 (= res!2428564 call!440967)))

(declare-fun b!5752250 () Bool)

(assert (=> b!5752250 (= e!3535179 (= lt!2287458 call!440967))))

(declare-fun b!5752251 () Bool)

(declare-fun res!2428562 () Bool)

(assert (=> b!5752251 (=> (not res!2428562) (not e!3535183))))

(assert (=> b!5752251 (= res!2428562 (isEmpty!35345 (tail!11261 Nil!63458)))))

(declare-fun b!5752252 () Bool)

(assert (=> b!5752252 (= e!3535179 e!3535180)))

(declare-fun c!1016197 () Bool)

(assert (=> b!5752252 (= c!1016197 ((_ is EmptyLang!15761) (regOne!32034 r!7292)))))

(declare-fun b!5752253 () Bool)

(assert (=> b!5752253 (= e!3535184 (nullable!5793 (regOne!32034 r!7292)))))

(declare-fun b!5752254 () Bool)

(declare-fun res!2428559 () Bool)

(assert (=> b!5752254 (=> res!2428559 e!3535178)))

(assert (=> b!5752254 (= res!2428559 (not (isEmpty!35345 (tail!11261 Nil!63458))))))

(declare-fun b!5752255 () Bool)

(declare-fun res!2428563 () Bool)

(assert (=> b!5752255 (=> res!2428563 e!3535181)))

(assert (=> b!5752255 (= res!2428563 (not ((_ is ElementMatch!15761) (regOne!32034 r!7292))))))

(assert (=> b!5752255 (= e!3535180 e!3535181)))

(declare-fun b!5752256 () Bool)

(declare-fun res!2428565 () Bool)

(assert (=> b!5752256 (=> (not res!2428565) (not e!3535183))))

(assert (=> b!5752256 (= res!2428565 (not call!440967))))

(declare-fun b!5752257 () Bool)

(declare-fun res!2428561 () Bool)

(assert (=> b!5752257 (=> res!2428561 e!3535181)))

(assert (=> b!5752257 (= res!2428561 e!3535183)))

(declare-fun res!2428560 () Bool)

(assert (=> b!5752257 (=> (not res!2428560) (not e!3535183))))

(assert (=> b!5752257 (= res!2428560 lt!2287458)))

(assert (= (and d!1812790 c!1016196) b!5752253))

(assert (= (and d!1812790 (not c!1016196)) b!5752248))

(assert (= (and d!1812790 c!1016195) b!5752250))

(assert (= (and d!1812790 (not c!1016195)) b!5752252))

(assert (= (and b!5752252 c!1016197) b!5752244))

(assert (= (and b!5752252 (not c!1016197)) b!5752255))

(assert (= (and b!5752255 (not res!2428563)) b!5752257))

(assert (= (and b!5752257 res!2428560) b!5752256))

(assert (= (and b!5752256 res!2428565) b!5752251))

(assert (= (and b!5752251 res!2428562) b!5752247))

(assert (= (and b!5752257 (not res!2428561)) b!5752246))

(assert (= (and b!5752246 res!2428558) b!5752249))

(assert (= (and b!5752249 (not res!2428564)) b!5752254))

(assert (= (and b!5752254 (not res!2428559)) b!5752245))

(assert (= (or b!5752250 b!5752249 b!5752256) bm!440962))

(declare-fun m!6701980 () Bool)

(assert (=> d!1812790 m!6701980))

(assert (=> d!1812790 m!6701568))

(declare-fun m!6701982 () Bool)

(assert (=> b!5752254 m!6701982))

(assert (=> b!5752254 m!6701982))

(declare-fun m!6701984 () Bool)

(assert (=> b!5752254 m!6701984))

(declare-fun m!6701986 () Bool)

(assert (=> b!5752245 m!6701986))

(assert (=> bm!440962 m!6701980))

(assert (=> b!5752248 m!6701986))

(assert (=> b!5752248 m!6701986))

(declare-fun m!6701988 () Bool)

(assert (=> b!5752248 m!6701988))

(assert (=> b!5752248 m!6701982))

(assert (=> b!5752248 m!6701988))

(assert (=> b!5752248 m!6701982))

(declare-fun m!6701990 () Bool)

(assert (=> b!5752248 m!6701990))

(declare-fun m!6701992 () Bool)

(assert (=> b!5752253 m!6701992))

(assert (=> b!5752251 m!6701982))

(assert (=> b!5752251 m!6701982))

(assert (=> b!5752251 m!6701984))

(assert (=> b!5752247 m!6701986))

(assert (=> d!1812618 d!1812790))

(declare-fun b!5752258 () Bool)

(declare-fun res!2428568 () Bool)

(declare-fun e!3535186 () Bool)

(assert (=> b!5752258 (=> (not res!2428568) (not e!3535186))))

(declare-fun call!440969 () Bool)

(assert (=> b!5752258 (= res!2428568 call!440969)))

(declare-fun e!3535189 () Bool)

(assert (=> b!5752258 (= e!3535189 e!3535186)))

(declare-fun b!5752259 () Bool)

(declare-fun call!440970 () Bool)

(assert (=> b!5752259 (= e!3535186 call!440970)))

(declare-fun b!5752260 () Bool)

(declare-fun e!3535188 () Bool)

(assert (=> b!5752260 (= e!3535188 call!440970)))

(declare-fun bm!440963 () Bool)

(declare-fun c!1016199 () Bool)

(declare-fun c!1016198 () Bool)

(declare-fun call!440968 () Bool)

(assert (=> bm!440963 (= call!440968 (validRegex!7497 (ite c!1016198 (reg!16090 (regOne!32034 r!7292)) (ite c!1016199 (regTwo!32035 (regOne!32034 r!7292)) (regTwo!32034 (regOne!32034 r!7292))))))))

(declare-fun b!5752261 () Bool)

(declare-fun e!3535191 () Bool)

(assert (=> b!5752261 (= e!3535191 call!440968)))

(declare-fun b!5752262 () Bool)

(declare-fun e!3535185 () Bool)

(assert (=> b!5752262 (= e!3535185 e!3535191)))

(declare-fun res!2428566 () Bool)

(assert (=> b!5752262 (= res!2428566 (not (nullable!5793 (reg!16090 (regOne!32034 r!7292)))))))

(assert (=> b!5752262 (=> (not res!2428566) (not e!3535191))))

(declare-fun b!5752263 () Bool)

(declare-fun e!3535190 () Bool)

(assert (=> b!5752263 (= e!3535190 e!3535188)))

(declare-fun res!2428567 () Bool)

(assert (=> b!5752263 (=> (not res!2428567) (not e!3535188))))

(assert (=> b!5752263 (= res!2428567 call!440969)))

(declare-fun bm!440964 () Bool)

(assert (=> bm!440964 (= call!440969 (validRegex!7497 (ite c!1016199 (regOne!32035 (regOne!32034 r!7292)) (regOne!32034 (regOne!32034 r!7292)))))))

(declare-fun bm!440965 () Bool)

(assert (=> bm!440965 (= call!440970 call!440968)))

(declare-fun b!5752265 () Bool)

(declare-fun e!3535187 () Bool)

(assert (=> b!5752265 (= e!3535187 e!3535185)))

(assert (=> b!5752265 (= c!1016198 ((_ is Star!15761) (regOne!32034 r!7292)))))

(declare-fun b!5752266 () Bool)

(declare-fun res!2428569 () Bool)

(assert (=> b!5752266 (=> res!2428569 e!3535190)))

(assert (=> b!5752266 (= res!2428569 (not ((_ is Concat!24606) (regOne!32034 r!7292))))))

(assert (=> b!5752266 (= e!3535189 e!3535190)))

(declare-fun d!1812792 () Bool)

(declare-fun res!2428570 () Bool)

(assert (=> d!1812792 (=> res!2428570 e!3535187)))

(assert (=> d!1812792 (= res!2428570 ((_ is ElementMatch!15761) (regOne!32034 r!7292)))))

(assert (=> d!1812792 (= (validRegex!7497 (regOne!32034 r!7292)) e!3535187)))

(declare-fun b!5752264 () Bool)

(assert (=> b!5752264 (= e!3535185 e!3535189)))

(assert (=> b!5752264 (= c!1016199 ((_ is Union!15761) (regOne!32034 r!7292)))))

(assert (= (and d!1812792 (not res!2428570)) b!5752265))

(assert (= (and b!5752265 c!1016198) b!5752262))

(assert (= (and b!5752265 (not c!1016198)) b!5752264))

(assert (= (and b!5752262 res!2428566) b!5752261))

(assert (= (and b!5752264 c!1016199) b!5752258))

(assert (= (and b!5752264 (not c!1016199)) b!5752266))

(assert (= (and b!5752258 res!2428568) b!5752259))

(assert (= (and b!5752266 (not res!2428569)) b!5752263))

(assert (= (and b!5752263 res!2428567) b!5752260))

(assert (= (or b!5752259 b!5752260) bm!440965))

(assert (= (or b!5752258 b!5752263) bm!440964))

(assert (= (or b!5752261 bm!440965) bm!440963))

(declare-fun m!6701994 () Bool)

(assert (=> bm!440963 m!6701994))

(declare-fun m!6701996 () Bool)

(assert (=> b!5752262 m!6701996))

(declare-fun m!6701998 () Bool)

(assert (=> bm!440964 m!6701998))

(assert (=> d!1812618 d!1812792))

(assert (=> bm!440918 d!1812730))

(declare-fun d!1812794 () Bool)

(assert (=> d!1812794 (= (isEmpty!35342 (tail!11262 (exprs!5645 (h!69908 zl!343)))) ((_ is Nil!63459) (tail!11262 (exprs!5645 (h!69908 zl!343)))))))

(assert (=> b!5751659 d!1812794))

(declare-fun d!1812796 () Bool)

(assert (=> d!1812796 (= (tail!11262 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343))))))

(assert (=> b!5751659 d!1812796))

(assert (=> b!5751991 d!1812748))

(declare-fun d!1812798 () Bool)

(declare-fun res!2428571 () Bool)

(declare-fun e!3535192 () Bool)

(assert (=> d!1812798 (=> res!2428571 e!3535192)))

(assert (=> d!1812798 (= res!2428571 ((_ is Nil!63459) (exprs!5645 setElem!38607)))))

(assert (=> d!1812798 (= (forall!14881 (exprs!5645 setElem!38607) lambda!312091) e!3535192)))

(declare-fun b!5752267 () Bool)

(declare-fun e!3535193 () Bool)

(assert (=> b!5752267 (= e!3535192 e!3535193)))

(declare-fun res!2428572 () Bool)

(assert (=> b!5752267 (=> (not res!2428572) (not e!3535193))))

(assert (=> b!5752267 (= res!2428572 (dynLambda!24839 lambda!312091 (h!69907 (exprs!5645 setElem!38607))))))

(declare-fun b!5752268 () Bool)

(assert (=> b!5752268 (= e!3535193 (forall!14881 (t!376913 (exprs!5645 setElem!38607)) lambda!312091))))

(assert (= (and d!1812798 (not res!2428571)) b!5752267))

(assert (= (and b!5752267 res!2428572) b!5752268))

(declare-fun b_lambda!217267 () Bool)

(assert (=> (not b_lambda!217267) (not b!5752267)))

(declare-fun m!6702000 () Bool)

(assert (=> b!5752267 m!6702000))

(declare-fun m!6702002 () Bool)

(assert (=> b!5752268 m!6702002))

(assert (=> d!1812600 d!1812798))

(declare-fun bm!440966 () Bool)

(declare-fun call!440971 () Bool)

(assert (=> bm!440966 (= call!440971 (isEmpty!35345 (tail!11261 s!2326)))))

(declare-fun b!5752269 () Bool)

(declare-fun e!3535196 () Bool)

(declare-fun lt!2287459 () Bool)

(assert (=> b!5752269 (= e!3535196 (not lt!2287459))))

(declare-fun d!1812800 () Bool)

(declare-fun e!3535195 () Bool)

(assert (=> d!1812800 e!3535195))

(declare-fun c!1016200 () Bool)

(assert (=> d!1812800 (= c!1016200 ((_ is EmptyExpr!15761) (derivativeStep!4546 lt!2287258 (head!12166 s!2326))))))

(declare-fun e!3535200 () Bool)

(assert (=> d!1812800 (= lt!2287459 e!3535200)))

(declare-fun c!1016201 () Bool)

(assert (=> d!1812800 (= c!1016201 (isEmpty!35345 (tail!11261 s!2326)))))

(assert (=> d!1812800 (validRegex!7497 (derivativeStep!4546 lt!2287258 (head!12166 s!2326)))))

(assert (=> d!1812800 (= (matchR!7946 (derivativeStep!4546 lt!2287258 (head!12166 s!2326)) (tail!11261 s!2326)) lt!2287459)))

(declare-fun b!5752270 () Bool)

(declare-fun e!3535194 () Bool)

(assert (=> b!5752270 (= e!3535194 (not (= (head!12166 (tail!11261 s!2326)) (c!1015817 (derivativeStep!4546 lt!2287258 (head!12166 s!2326))))))))

(declare-fun b!5752271 () Bool)

(declare-fun e!3535197 () Bool)

(declare-fun e!3535198 () Bool)

(assert (=> b!5752271 (= e!3535197 e!3535198)))

(declare-fun res!2428573 () Bool)

(assert (=> b!5752271 (=> (not res!2428573) (not e!3535198))))

(assert (=> b!5752271 (= res!2428573 (not lt!2287459))))

(declare-fun b!5752272 () Bool)

(declare-fun e!3535199 () Bool)

(assert (=> b!5752272 (= e!3535199 (= (head!12166 (tail!11261 s!2326)) (c!1015817 (derivativeStep!4546 lt!2287258 (head!12166 s!2326)))))))

(declare-fun b!5752273 () Bool)

(assert (=> b!5752273 (= e!3535200 (matchR!7946 (derivativeStep!4546 (derivativeStep!4546 lt!2287258 (head!12166 s!2326)) (head!12166 (tail!11261 s!2326))) (tail!11261 (tail!11261 s!2326))))))

(declare-fun b!5752274 () Bool)

(assert (=> b!5752274 (= e!3535198 e!3535194)))

(declare-fun res!2428579 () Bool)

(assert (=> b!5752274 (=> res!2428579 e!3535194)))

(assert (=> b!5752274 (= res!2428579 call!440971)))

(declare-fun b!5752275 () Bool)

(assert (=> b!5752275 (= e!3535195 (= lt!2287459 call!440971))))

(declare-fun b!5752276 () Bool)

(declare-fun res!2428577 () Bool)

(assert (=> b!5752276 (=> (not res!2428577) (not e!3535199))))

(assert (=> b!5752276 (= res!2428577 (isEmpty!35345 (tail!11261 (tail!11261 s!2326))))))

(declare-fun b!5752277 () Bool)

(assert (=> b!5752277 (= e!3535195 e!3535196)))

(declare-fun c!1016202 () Bool)

(assert (=> b!5752277 (= c!1016202 ((_ is EmptyLang!15761) (derivativeStep!4546 lt!2287258 (head!12166 s!2326))))))

(declare-fun b!5752278 () Bool)

(assert (=> b!5752278 (= e!3535200 (nullable!5793 (derivativeStep!4546 lt!2287258 (head!12166 s!2326))))))

(declare-fun b!5752279 () Bool)

(declare-fun res!2428574 () Bool)

(assert (=> b!5752279 (=> res!2428574 e!3535194)))

(assert (=> b!5752279 (= res!2428574 (not (isEmpty!35345 (tail!11261 (tail!11261 s!2326)))))))

(declare-fun b!5752280 () Bool)

(declare-fun res!2428578 () Bool)

(assert (=> b!5752280 (=> res!2428578 e!3535197)))

(assert (=> b!5752280 (= res!2428578 (not ((_ is ElementMatch!15761) (derivativeStep!4546 lt!2287258 (head!12166 s!2326)))))))

(assert (=> b!5752280 (= e!3535196 e!3535197)))

(declare-fun b!5752281 () Bool)

(declare-fun res!2428580 () Bool)

(assert (=> b!5752281 (=> (not res!2428580) (not e!3535199))))

(assert (=> b!5752281 (= res!2428580 (not call!440971))))

(declare-fun b!5752282 () Bool)

(declare-fun res!2428576 () Bool)

(assert (=> b!5752282 (=> res!2428576 e!3535197)))

(assert (=> b!5752282 (= res!2428576 e!3535199)))

(declare-fun res!2428575 () Bool)

(assert (=> b!5752282 (=> (not res!2428575) (not e!3535199))))

(assert (=> b!5752282 (= res!2428575 lt!2287459)))

(assert (= (and d!1812800 c!1016201) b!5752278))

(assert (= (and d!1812800 (not c!1016201)) b!5752273))

(assert (= (and d!1812800 c!1016200) b!5752275))

(assert (= (and d!1812800 (not c!1016200)) b!5752277))

(assert (= (and b!5752277 c!1016202) b!5752269))

(assert (= (and b!5752277 (not c!1016202)) b!5752280))

(assert (= (and b!5752280 (not res!2428578)) b!5752282))

(assert (= (and b!5752282 res!2428575) b!5752281))

(assert (= (and b!5752281 res!2428580) b!5752276))

(assert (= (and b!5752276 res!2428577) b!5752272))

(assert (= (and b!5752282 (not res!2428576)) b!5752271))

(assert (= (and b!5752271 res!2428573) b!5752274))

(assert (= (and b!5752274 (not res!2428579)) b!5752279))

(assert (= (and b!5752279 (not res!2428574)) b!5752270))

(assert (= (or b!5752275 b!5752274 b!5752281) bm!440966))

(assert (=> d!1812800 m!6701480))

(assert (=> d!1812800 m!6701646))

(assert (=> d!1812800 m!6701698))

(declare-fun m!6702004 () Bool)

(assert (=> d!1812800 m!6702004))

(assert (=> b!5752279 m!6701480))

(assert (=> b!5752279 m!6701876))

(assert (=> b!5752279 m!6701876))

(assert (=> b!5752279 m!6701878))

(assert (=> b!5752270 m!6701480))

(assert (=> b!5752270 m!6701880))

(assert (=> bm!440966 m!6701480))

(assert (=> bm!440966 m!6701646))

(assert (=> b!5752273 m!6701480))

(assert (=> b!5752273 m!6701880))

(assert (=> b!5752273 m!6701698))

(assert (=> b!5752273 m!6701880))

(declare-fun m!6702006 () Bool)

(assert (=> b!5752273 m!6702006))

(assert (=> b!5752273 m!6701480))

(assert (=> b!5752273 m!6701876))

(assert (=> b!5752273 m!6702006))

(assert (=> b!5752273 m!6701876))

(declare-fun m!6702008 () Bool)

(assert (=> b!5752273 m!6702008))

(assert (=> b!5752278 m!6701698))

(declare-fun m!6702010 () Bool)

(assert (=> b!5752278 m!6702010))

(assert (=> b!5752276 m!6701480))

(assert (=> b!5752276 m!6701876))

(assert (=> b!5752276 m!6701876))

(assert (=> b!5752276 m!6701878))

(assert (=> b!5752272 m!6701480))

(assert (=> b!5752272 m!6701880))

(assert (=> b!5751855 d!1812800))

(declare-fun b!5752283 () Bool)

(declare-fun e!3535201 () Regex!15761)

(assert (=> b!5752283 (= e!3535201 (ite (= (head!12166 s!2326) (c!1015817 lt!2287258)) EmptyExpr!15761 EmptyLang!15761))))

(declare-fun b!5752284 () Bool)

(declare-fun e!3535203 () Regex!15761)

(assert (=> b!5752284 (= e!3535203 e!3535201)))

(declare-fun c!1016207 () Bool)

(assert (=> b!5752284 (= c!1016207 ((_ is ElementMatch!15761) lt!2287258))))

(declare-fun bm!440967 () Bool)

(declare-fun call!440975 () Regex!15761)

(declare-fun c!1016203 () Bool)

(declare-fun c!1016204 () Bool)

(assert (=> bm!440967 (= call!440975 (derivativeStep!4546 (ite c!1016204 (regOne!32035 lt!2287258) (ite c!1016203 (reg!16090 lt!2287258) (regOne!32034 lt!2287258))) (head!12166 s!2326)))))

(declare-fun d!1812802 () Bool)

(declare-fun lt!2287460 () Regex!15761)

(assert (=> d!1812802 (validRegex!7497 lt!2287460)))

(assert (=> d!1812802 (= lt!2287460 e!3535203)))

(declare-fun c!1016205 () Bool)

(assert (=> d!1812802 (= c!1016205 (or ((_ is EmptyExpr!15761) lt!2287258) ((_ is EmptyLang!15761) lt!2287258)))))

(assert (=> d!1812802 (validRegex!7497 lt!2287258)))

(assert (=> d!1812802 (= (derivativeStep!4546 lt!2287258 (head!12166 s!2326)) lt!2287460)))

(declare-fun b!5752285 () Bool)

(declare-fun call!440973 () Regex!15761)

(declare-fun e!3535202 () Regex!15761)

(declare-fun call!440972 () Regex!15761)

(assert (=> b!5752285 (= e!3535202 (Union!15761 (Concat!24606 call!440972 (regTwo!32034 lt!2287258)) call!440973))))

(declare-fun b!5752286 () Bool)

(assert (=> b!5752286 (= e!3535203 EmptyLang!15761)))

(declare-fun b!5752287 () Bool)

(assert (=> b!5752287 (= e!3535202 (Union!15761 (Concat!24606 call!440973 (regTwo!32034 lt!2287258)) EmptyLang!15761))))

(declare-fun bm!440968 () Bool)

(assert (=> bm!440968 (= call!440972 call!440975)))

(declare-fun b!5752288 () Bool)

(assert (=> b!5752288 (= c!1016204 ((_ is Union!15761) lt!2287258))))

(declare-fun e!3535204 () Regex!15761)

(assert (=> b!5752288 (= e!3535201 e!3535204)))

(declare-fun b!5752289 () Bool)

(declare-fun call!440974 () Regex!15761)

(assert (=> b!5752289 (= e!3535204 (Union!15761 call!440975 call!440974))))

(declare-fun b!5752290 () Bool)

(declare-fun c!1016206 () Bool)

(assert (=> b!5752290 (= c!1016206 (nullable!5793 (regOne!32034 lt!2287258)))))

(declare-fun e!3535205 () Regex!15761)

(assert (=> b!5752290 (= e!3535205 e!3535202)))

(declare-fun bm!440969 () Bool)

(assert (=> bm!440969 (= call!440973 call!440974)))

(declare-fun b!5752291 () Bool)

(assert (=> b!5752291 (= e!3535204 e!3535205)))

(assert (=> b!5752291 (= c!1016203 ((_ is Star!15761) lt!2287258))))

(declare-fun bm!440970 () Bool)

(assert (=> bm!440970 (= call!440974 (derivativeStep!4546 (ite c!1016204 (regTwo!32035 lt!2287258) (ite c!1016206 (regTwo!32034 lt!2287258) (regOne!32034 lt!2287258))) (head!12166 s!2326)))))

(declare-fun b!5752292 () Bool)

(assert (=> b!5752292 (= e!3535205 (Concat!24606 call!440972 lt!2287258))))

(assert (= (and d!1812802 c!1016205) b!5752286))

(assert (= (and d!1812802 (not c!1016205)) b!5752284))

(assert (= (and b!5752284 c!1016207) b!5752283))

(assert (= (and b!5752284 (not c!1016207)) b!5752288))

(assert (= (and b!5752288 c!1016204) b!5752289))

(assert (= (and b!5752288 (not c!1016204)) b!5752291))

(assert (= (and b!5752291 c!1016203) b!5752292))

(assert (= (and b!5752291 (not c!1016203)) b!5752290))

(assert (= (and b!5752290 c!1016206) b!5752285))

(assert (= (and b!5752290 (not c!1016206)) b!5752287))

(assert (= (or b!5752285 b!5752287) bm!440969))

(assert (= (or b!5752292 b!5752285) bm!440968))

(assert (= (or b!5752289 bm!440969) bm!440970))

(assert (= (or b!5752289 bm!440968) bm!440967))

(assert (=> bm!440967 m!6701476))

(declare-fun m!6702012 () Bool)

(assert (=> bm!440967 m!6702012))

(declare-fun m!6702014 () Bool)

(assert (=> d!1812802 m!6702014))

(assert (=> d!1812802 m!6701696))

(declare-fun m!6702016 () Bool)

(assert (=> b!5752290 m!6702016))

(assert (=> bm!440970 m!6701476))

(declare-fun m!6702018 () Bool)

(assert (=> bm!440970 m!6702018))

(assert (=> b!5751855 d!1812802))

(assert (=> b!5751855 d!1812748))

(assert (=> b!5751855 d!1812750))

(declare-fun d!1812804 () Bool)

(assert (=> d!1812804 (= (Exists!2861 (ite c!1016086 lambda!312133 lambda!312134)) (choose!43609 (ite c!1016086 lambda!312133 lambda!312134)))))

(declare-fun bs!1347352 () Bool)

(assert (= bs!1347352 d!1812804))

(declare-fun m!6702020 () Bool)

(assert (=> bs!1347352 m!6702020))

(assert (=> bm!440879 d!1812804))

(declare-fun d!1812806 () Bool)

(assert (=> d!1812806 (= (nullable!5793 (h!69907 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343)))))))) (nullableFct!1838 (h!69907 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343)))))))))))

(declare-fun bs!1347353 () Bool)

(assert (= bs!1347353 d!1812806))

(declare-fun m!6702022 () Bool)

(assert (=> bs!1347353 m!6702022))

(assert (=> b!5751907 d!1812806))

(declare-fun b!5752293 () Bool)

(declare-fun res!2428583 () Bool)

(declare-fun e!3535207 () Bool)

(assert (=> b!5752293 (=> (not res!2428583) (not e!3535207))))

(declare-fun call!440977 () Bool)

(assert (=> b!5752293 (= res!2428583 call!440977)))

(declare-fun e!3535210 () Bool)

(assert (=> b!5752293 (= e!3535210 e!3535207)))

(declare-fun b!5752294 () Bool)

(declare-fun call!440978 () Bool)

(assert (=> b!5752294 (= e!3535207 call!440978)))

(declare-fun b!5752295 () Bool)

(declare-fun e!3535209 () Bool)

(assert (=> b!5752295 (= e!3535209 call!440978)))

(declare-fun call!440976 () Bool)

(declare-fun bm!440971 () Bool)

(declare-fun c!1016209 () Bool)

(declare-fun c!1016208 () Bool)

(assert (=> bm!440971 (= call!440976 (validRegex!7497 (ite c!1016208 (reg!16090 lt!2287379) (ite c!1016209 (regTwo!32035 lt!2287379) (regTwo!32034 lt!2287379)))))))

(declare-fun b!5752296 () Bool)

(declare-fun e!3535212 () Bool)

(assert (=> b!5752296 (= e!3535212 call!440976)))

(declare-fun b!5752297 () Bool)

(declare-fun e!3535206 () Bool)

(assert (=> b!5752297 (= e!3535206 e!3535212)))

(declare-fun res!2428581 () Bool)

(assert (=> b!5752297 (= res!2428581 (not (nullable!5793 (reg!16090 lt!2287379))))))

(assert (=> b!5752297 (=> (not res!2428581) (not e!3535212))))

(declare-fun b!5752298 () Bool)

(declare-fun e!3535211 () Bool)

(assert (=> b!5752298 (= e!3535211 e!3535209)))

(declare-fun res!2428582 () Bool)

(assert (=> b!5752298 (=> (not res!2428582) (not e!3535209))))

(assert (=> b!5752298 (= res!2428582 call!440977)))

(declare-fun bm!440972 () Bool)

(assert (=> bm!440972 (= call!440977 (validRegex!7497 (ite c!1016209 (regOne!32035 lt!2287379) (regOne!32034 lt!2287379))))))

(declare-fun bm!440973 () Bool)

(assert (=> bm!440973 (= call!440978 call!440976)))

(declare-fun b!5752300 () Bool)

(declare-fun e!3535208 () Bool)

(assert (=> b!5752300 (= e!3535208 e!3535206)))

(assert (=> b!5752300 (= c!1016208 ((_ is Star!15761) lt!2287379))))

(declare-fun b!5752301 () Bool)

(declare-fun res!2428584 () Bool)

(assert (=> b!5752301 (=> res!2428584 e!3535211)))

(assert (=> b!5752301 (= res!2428584 (not ((_ is Concat!24606) lt!2287379)))))

(assert (=> b!5752301 (= e!3535210 e!3535211)))

(declare-fun d!1812808 () Bool)

(declare-fun res!2428585 () Bool)

(assert (=> d!1812808 (=> res!2428585 e!3535208)))

(assert (=> d!1812808 (= res!2428585 ((_ is ElementMatch!15761) lt!2287379))))

(assert (=> d!1812808 (= (validRegex!7497 lt!2287379) e!3535208)))

(declare-fun b!5752299 () Bool)

(assert (=> b!5752299 (= e!3535206 e!3535210)))

(assert (=> b!5752299 (= c!1016209 ((_ is Union!15761) lt!2287379))))

(assert (= (and d!1812808 (not res!2428585)) b!5752300))

(assert (= (and b!5752300 c!1016208) b!5752297))

(assert (= (and b!5752300 (not c!1016208)) b!5752299))

(assert (= (and b!5752297 res!2428581) b!5752296))

(assert (= (and b!5752299 c!1016209) b!5752293))

(assert (= (and b!5752299 (not c!1016209)) b!5752301))

(assert (= (and b!5752293 res!2428583) b!5752294))

(assert (= (and b!5752301 (not res!2428584)) b!5752298))

(assert (= (and b!5752298 res!2428582) b!5752295))

(assert (= (or b!5752294 b!5752295) bm!440973))

(assert (= (or b!5752293 b!5752298) bm!440972))

(assert (= (or b!5752296 bm!440973) bm!440971))

(declare-fun m!6702024 () Bool)

(assert (=> bm!440971 m!6702024))

(declare-fun m!6702026 () Bool)

(assert (=> b!5752297 m!6702026))

(declare-fun m!6702028 () Bool)

(assert (=> bm!440972 m!6702028))

(assert (=> d!1812602 d!1812808))

(declare-fun d!1812810 () Bool)

(declare-fun res!2428586 () Bool)

(declare-fun e!3535213 () Bool)

(assert (=> d!1812810 (=> res!2428586 e!3535213)))

(assert (=> d!1812810 (= res!2428586 ((_ is Nil!63459) (unfocusZipperList!1189 zl!343)))))

(assert (=> d!1812810 (= (forall!14881 (unfocusZipperList!1189 zl!343) lambda!312094) e!3535213)))

(declare-fun b!5752302 () Bool)

(declare-fun e!3535214 () Bool)

(assert (=> b!5752302 (= e!3535213 e!3535214)))

(declare-fun res!2428587 () Bool)

(assert (=> b!5752302 (=> (not res!2428587) (not e!3535214))))

(assert (=> b!5752302 (= res!2428587 (dynLambda!24839 lambda!312094 (h!69907 (unfocusZipperList!1189 zl!343))))))

(declare-fun b!5752303 () Bool)

(assert (=> b!5752303 (= e!3535214 (forall!14881 (t!376913 (unfocusZipperList!1189 zl!343)) lambda!312094))))

(assert (= (and d!1812810 (not res!2428586)) b!5752302))

(assert (= (and b!5752302 res!2428587) b!5752303))

(declare-fun b_lambda!217269 () Bool)

(assert (=> (not b_lambda!217269) (not b!5752302)))

(declare-fun m!6702030 () Bool)

(assert (=> b!5752302 m!6702030))

(declare-fun m!6702032 () Bool)

(assert (=> b!5752303 m!6702032))

(assert (=> d!1812602 d!1812810))

(assert (=> d!1812710 d!1812730))

(declare-fun b!5752304 () Bool)

(declare-fun res!2428590 () Bool)

(declare-fun e!3535216 () Bool)

(assert (=> b!5752304 (=> (not res!2428590) (not e!3535216))))

(declare-fun call!440980 () Bool)

(assert (=> b!5752304 (= res!2428590 call!440980)))

(declare-fun e!3535219 () Bool)

(assert (=> b!5752304 (= e!3535219 e!3535216)))

(declare-fun b!5752305 () Bool)

(declare-fun call!440981 () Bool)

(assert (=> b!5752305 (= e!3535216 call!440981)))

(declare-fun b!5752306 () Bool)

(declare-fun e!3535218 () Bool)

(assert (=> b!5752306 (= e!3535218 call!440981)))

(declare-fun c!1016210 () Bool)

(declare-fun call!440979 () Bool)

(declare-fun bm!440974 () Bool)

(declare-fun c!1016211 () Bool)

(assert (=> bm!440974 (= call!440979 (validRegex!7497 (ite c!1016210 (reg!16090 (regTwo!32034 r!7292)) (ite c!1016211 (regTwo!32035 (regTwo!32034 r!7292)) (regTwo!32034 (regTwo!32034 r!7292))))))))

(declare-fun b!5752307 () Bool)

(declare-fun e!3535221 () Bool)

(assert (=> b!5752307 (= e!3535221 call!440979)))

(declare-fun b!5752308 () Bool)

(declare-fun e!3535215 () Bool)

(assert (=> b!5752308 (= e!3535215 e!3535221)))

(declare-fun res!2428588 () Bool)

(assert (=> b!5752308 (= res!2428588 (not (nullable!5793 (reg!16090 (regTwo!32034 r!7292)))))))

(assert (=> b!5752308 (=> (not res!2428588) (not e!3535221))))

(declare-fun b!5752309 () Bool)

(declare-fun e!3535220 () Bool)

(assert (=> b!5752309 (= e!3535220 e!3535218)))

(declare-fun res!2428589 () Bool)

(assert (=> b!5752309 (=> (not res!2428589) (not e!3535218))))

(assert (=> b!5752309 (= res!2428589 call!440980)))

(declare-fun bm!440975 () Bool)

(assert (=> bm!440975 (= call!440980 (validRegex!7497 (ite c!1016211 (regOne!32035 (regTwo!32034 r!7292)) (regOne!32034 (regTwo!32034 r!7292)))))))

(declare-fun bm!440976 () Bool)

(assert (=> bm!440976 (= call!440981 call!440979)))

(declare-fun b!5752311 () Bool)

(declare-fun e!3535217 () Bool)

(assert (=> b!5752311 (= e!3535217 e!3535215)))

(assert (=> b!5752311 (= c!1016210 ((_ is Star!15761) (regTwo!32034 r!7292)))))

(declare-fun b!5752312 () Bool)

(declare-fun res!2428591 () Bool)

(assert (=> b!5752312 (=> res!2428591 e!3535220)))

(assert (=> b!5752312 (= res!2428591 (not ((_ is Concat!24606) (regTwo!32034 r!7292))))))

(assert (=> b!5752312 (= e!3535219 e!3535220)))

(declare-fun d!1812812 () Bool)

(declare-fun res!2428592 () Bool)

(assert (=> d!1812812 (=> res!2428592 e!3535217)))

(assert (=> d!1812812 (= res!2428592 ((_ is ElementMatch!15761) (regTwo!32034 r!7292)))))

(assert (=> d!1812812 (= (validRegex!7497 (regTwo!32034 r!7292)) e!3535217)))

(declare-fun b!5752310 () Bool)

(assert (=> b!5752310 (= e!3535215 e!3535219)))

(assert (=> b!5752310 (= c!1016211 ((_ is Union!15761) (regTwo!32034 r!7292)))))

(assert (= (and d!1812812 (not res!2428592)) b!5752311))

(assert (= (and b!5752311 c!1016210) b!5752308))

(assert (= (and b!5752311 (not c!1016210)) b!5752310))

(assert (= (and b!5752308 res!2428588) b!5752307))

(assert (= (and b!5752310 c!1016211) b!5752304))

(assert (= (and b!5752310 (not c!1016211)) b!5752312))

(assert (= (and b!5752304 res!2428590) b!5752305))

(assert (= (and b!5752312 (not res!2428591)) b!5752309))

(assert (= (and b!5752309 res!2428589) b!5752306))

(assert (= (or b!5752305 b!5752306) bm!440976))

(assert (= (or b!5752304 b!5752309) bm!440975))

(assert (= (or b!5752307 bm!440976) bm!440974))

(declare-fun m!6702034 () Bool)

(assert (=> bm!440974 m!6702034))

(declare-fun m!6702036 () Bool)

(assert (=> b!5752308 m!6702036))

(declare-fun m!6702038 () Bool)

(assert (=> bm!440975 m!6702038))

(assert (=> d!1812710 d!1812812))

(declare-fun d!1812814 () Bool)

(assert (=> d!1812814 (= ($colon$colon!1760 (exprs!5645 lt!2287276) (ite (or c!1016095 c!1016096) (regTwo!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (h!69907 (exprs!5645 (h!69908 zl!343))))) (Cons!63459 (ite (or c!1016095 c!1016096) (regTwo!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (h!69907 (exprs!5645 (h!69908 zl!343)))) (exprs!5645 lt!2287276)))))

(assert (=> bm!440882 d!1812814))

(declare-fun b!5752313 () Bool)

(declare-fun e!3535225 () Bool)

(declare-fun lt!2287461 () Int)

(assert (=> b!5752313 (= e!3535225 (= lt!2287461 1))))

(declare-fun b!5752314 () Bool)

(declare-fun e!3535231 () Bool)

(declare-fun call!440984 () Int)

(assert (=> b!5752314 (= e!3535231 (> lt!2287461 call!440984))))

(declare-fun c!1016215 () Bool)

(declare-fun bm!440977 () Bool)

(declare-fun call!440987 () Int)

(assert (=> bm!440977 (= call!440987 (regexDepth!238 (ite c!1016215 (regTwo!32035 (ite c!1016122 (regTwo!32035 r!7292) (regTwo!32034 r!7292))) (regOne!32034 (ite c!1016122 (regTwo!32035 r!7292) (regTwo!32034 r!7292))))))))

(declare-fun bm!440978 () Bool)

(declare-fun call!440985 () Int)

(declare-fun call!440982 () Int)

(assert (=> bm!440978 (= call!440985 call!440982)))

(declare-fun b!5752315 () Bool)

(declare-fun e!3535223 () Int)

(declare-fun e!3535226 () Int)

(assert (=> b!5752315 (= e!3535223 e!3535226)))

(declare-fun c!1016218 () Bool)

(assert (=> b!5752315 (= c!1016218 ((_ is Star!15761) (ite c!1016122 (regTwo!32035 r!7292) (regTwo!32034 r!7292))))))

(declare-fun b!5752316 () Bool)

(assert (=> b!5752316 (= c!1016215 ((_ is Union!15761) (ite c!1016122 (regTwo!32035 r!7292) (regTwo!32034 r!7292))))))

(declare-fun e!3535224 () Int)

(assert (=> b!5752316 (= e!3535226 e!3535224)))

(declare-fun b!5752317 () Bool)

(declare-fun e!3535228 () Int)

(assert (=> b!5752317 (= e!3535224 e!3535228)))

(declare-fun c!1016213 () Bool)

(assert (=> b!5752317 (= c!1016213 ((_ is Concat!24606) (ite c!1016122 (regTwo!32035 r!7292) (regTwo!32034 r!7292))))))

(declare-fun bm!440979 () Bool)

(declare-fun call!440986 () Int)

(assert (=> bm!440979 (= call!440986 (regexDepth!238 (ite c!1016218 (reg!16090 (ite c!1016122 (regTwo!32035 r!7292) (regTwo!32034 r!7292))) (ite c!1016215 (regOne!32035 (ite c!1016122 (regTwo!32035 r!7292) (regTwo!32034 r!7292))) (regTwo!32034 (ite c!1016122 (regTwo!32035 r!7292) (regTwo!32034 r!7292)))))))))

(declare-fun b!5752318 () Bool)

(assert (=> b!5752318 (= e!3535226 (+ 1 call!440986))))

(declare-fun b!5752319 () Bool)

(declare-fun e!3535230 () Bool)

(assert (=> b!5752319 (= e!3535230 e!3535231)))

(declare-fun res!2428593 () Bool)

(assert (=> b!5752319 (= res!2428593 (> lt!2287461 call!440982))))

(assert (=> b!5752319 (=> (not res!2428593) (not e!3535231))))

(declare-fun b!5752321 () Bool)

(declare-fun e!3535222 () Bool)

(assert (=> b!5752321 (= e!3535222 (> lt!2287461 call!440984))))

(declare-fun b!5752322 () Bool)

(declare-fun call!440983 () Int)

(assert (=> b!5752322 (= e!3535228 (+ 1 call!440983))))

(declare-fun b!5752323 () Bool)

(declare-fun e!3535227 () Bool)

(assert (=> b!5752323 (= e!3535230 e!3535227)))

(declare-fun c!1016214 () Bool)

(assert (=> b!5752323 (= c!1016214 ((_ is Concat!24606) (ite c!1016122 (regTwo!32035 r!7292) (regTwo!32034 r!7292))))))

(declare-fun c!1016217 () Bool)

(declare-fun bm!440980 () Bool)

(assert (=> bm!440980 (= call!440982 (regexDepth!238 (ite c!1016217 (regOne!32035 (ite c!1016122 (regTwo!32035 r!7292) (regTwo!32034 r!7292))) (ite c!1016214 (regOne!32034 (ite c!1016122 (regTwo!32035 r!7292) (regTwo!32034 r!7292))) (reg!16090 (ite c!1016122 (regTwo!32035 r!7292) (regTwo!32034 r!7292)))))))))

(declare-fun call!440988 () Int)

(declare-fun bm!440981 () Bool)

(assert (=> bm!440981 (= call!440983 (maxBigInt!0 (ite c!1016215 call!440988 call!440987) (ite c!1016215 call!440987 call!440988)))))

(declare-fun b!5752324 () Bool)

(assert (=> b!5752324 (= e!3535228 1)))

(declare-fun b!5752325 () Bool)

(declare-fun res!2428595 () Bool)

(assert (=> b!5752325 (=> (not res!2428595) (not e!3535222))))

(assert (=> b!5752325 (= res!2428595 (> lt!2287461 call!440985))))

(assert (=> b!5752325 (= e!3535227 e!3535222)))

(declare-fun b!5752326 () Bool)

(assert (=> b!5752326 (= e!3535224 (+ 1 call!440983))))

(declare-fun b!5752327 () Bool)

(assert (=> b!5752327 (= e!3535225 (> lt!2287461 call!440985))))

(declare-fun b!5752328 () Bool)

(declare-fun c!1016212 () Bool)

(assert (=> b!5752328 (= c!1016212 ((_ is Star!15761) (ite c!1016122 (regTwo!32035 r!7292) (regTwo!32034 r!7292))))))

(assert (=> b!5752328 (= e!3535227 e!3535225)))

(declare-fun b!5752329 () Bool)

(declare-fun e!3535229 () Bool)

(assert (=> b!5752329 (= e!3535229 e!3535230)))

(assert (=> b!5752329 (= c!1016217 ((_ is Union!15761) (ite c!1016122 (regTwo!32035 r!7292) (regTwo!32034 r!7292))))))

(declare-fun d!1812816 () Bool)

(assert (=> d!1812816 e!3535229))

(declare-fun res!2428594 () Bool)

(assert (=> d!1812816 (=> (not res!2428594) (not e!3535229))))

(assert (=> d!1812816 (= res!2428594 (> lt!2287461 0))))

(assert (=> d!1812816 (= lt!2287461 e!3535223)))

(declare-fun c!1016216 () Bool)

(assert (=> d!1812816 (= c!1016216 ((_ is ElementMatch!15761) (ite c!1016122 (regTwo!32035 r!7292) (regTwo!32034 r!7292))))))

(assert (=> d!1812816 (= (regexDepth!238 (ite c!1016122 (regTwo!32035 r!7292) (regTwo!32034 r!7292))) lt!2287461)))

(declare-fun b!5752320 () Bool)

(assert (=> b!5752320 (= e!3535223 1)))

(declare-fun bm!440982 () Bool)

(assert (=> bm!440982 (= call!440984 (regexDepth!238 (ite c!1016217 (regTwo!32035 (ite c!1016122 (regTwo!32035 r!7292) (regTwo!32034 r!7292))) (regTwo!32034 (ite c!1016122 (regTwo!32035 r!7292) (regTwo!32034 r!7292))))))))

(declare-fun bm!440983 () Bool)

(assert (=> bm!440983 (= call!440988 call!440986)))

(assert (= (and d!1812816 c!1016216) b!5752320))

(assert (= (and d!1812816 (not c!1016216)) b!5752315))

(assert (= (and b!5752315 c!1016218) b!5752318))

(assert (= (and b!5752315 (not c!1016218)) b!5752316))

(assert (= (and b!5752316 c!1016215) b!5752326))

(assert (= (and b!5752316 (not c!1016215)) b!5752317))

(assert (= (and b!5752317 c!1016213) b!5752322))

(assert (= (and b!5752317 (not c!1016213)) b!5752324))

(assert (= (or b!5752326 b!5752322) bm!440977))

(assert (= (or b!5752326 b!5752322) bm!440983))

(assert (= (or b!5752326 b!5752322) bm!440981))

(assert (= (or b!5752318 bm!440983) bm!440979))

(assert (= (and d!1812816 res!2428594) b!5752329))

(assert (= (and b!5752329 c!1016217) b!5752319))

(assert (= (and b!5752329 (not c!1016217)) b!5752323))

(assert (= (and b!5752319 res!2428593) b!5752314))

(assert (= (and b!5752323 c!1016214) b!5752325))

(assert (= (and b!5752323 (not c!1016214)) b!5752328))

(assert (= (and b!5752325 res!2428595) b!5752321))

(assert (= (and b!5752328 c!1016212) b!5752327))

(assert (= (and b!5752328 (not c!1016212)) b!5752313))

(assert (= (or b!5752325 b!5752327) bm!440978))

(assert (= (or b!5752314 b!5752321) bm!440982))

(assert (= (or b!5752319 bm!440978) bm!440980))

(declare-fun m!6702040 () Bool)

(assert (=> bm!440980 m!6702040))

(declare-fun m!6702042 () Bool)

(assert (=> bm!440981 m!6702042))

(declare-fun m!6702044 () Bool)

(assert (=> bm!440979 m!6702044))

(declare-fun m!6702046 () Bool)

(assert (=> bm!440982 m!6702046))

(declare-fun m!6702048 () Bool)

(assert (=> bm!440977 m!6702048))

(assert (=> bm!440909 d!1812816))

(assert (=> bs!1347291 d!1812682))

(declare-fun d!1812818 () Bool)

(assert (=> d!1812818 (= (isEmpty!35342 (tail!11262 (unfocusZipperList!1189 zl!343))) ((_ is Nil!63459) (tail!11262 (unfocusZipperList!1189 zl!343))))))

(assert (=> b!5751604 d!1812818))

(declare-fun d!1812820 () Bool)

(assert (=> d!1812820 (= (tail!11262 (unfocusZipperList!1189 zl!343)) (t!376913 (unfocusZipperList!1189 zl!343)))))

(assert (=> b!5751604 d!1812820))

(declare-fun d!1812822 () Bool)

(assert (=> d!1812822 (= (nullable!5793 lt!2287258) (nullableFct!1838 lt!2287258))))

(declare-fun bs!1347354 () Bool)

(assert (= bs!1347354 d!1812822))

(declare-fun m!6702050 () Bool)

(assert (=> bs!1347354 m!6702050))

(assert (=> b!5751860 d!1812822))

(declare-fun d!1812824 () Bool)

(assert (=> d!1812824 (= (isEmptyExpr!1251 lt!2287445) ((_ is EmptyExpr!15761) lt!2287445))))

(assert (=> b!5751980 d!1812824))

(declare-fun d!1812826 () Bool)

(declare-fun c!1016219 () Bool)

(declare-fun e!3535233 () Bool)

(assert (=> d!1812826 (= c!1016219 e!3535233)))

(declare-fun res!2428596 () Bool)

(assert (=> d!1812826 (=> (not res!2428596) (not e!3535233))))

(assert (=> d!1812826 (= res!2428596 ((_ is Cons!63459) (exprs!5645 (Context!10291 (t!376913 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343)))))))))))))

(declare-fun e!3535234 () (InoxSet Context!10290))

(assert (=> d!1812826 (= (derivationStepZipperUp!1029 (Context!10291 (t!376913 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343)))))))) (h!69906 s!2326)) e!3535234)))

(declare-fun bm!440984 () Bool)

(declare-fun call!440989 () (InoxSet Context!10290))

(assert (=> bm!440984 (= call!440989 (derivationStepZipperDown!1103 (h!69907 (exprs!5645 (Context!10291 (t!376913 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343)))))))))) (Context!10291 (t!376913 (exprs!5645 (Context!10291 (t!376913 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343))))))))))) (h!69906 s!2326)))))

(declare-fun b!5752330 () Bool)

(declare-fun e!3535232 () (InoxSet Context!10290))

(assert (=> b!5752330 (= e!3535232 ((as const (Array Context!10290 Bool)) false))))

(declare-fun b!5752331 () Bool)

(assert (=> b!5752331 (= e!3535232 call!440989)))

(declare-fun b!5752332 () Bool)

(assert (=> b!5752332 (= e!3535233 (nullable!5793 (h!69907 (exprs!5645 (Context!10291 (t!376913 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343))))))))))))))

(declare-fun b!5752333 () Bool)

(assert (=> b!5752333 (= e!3535234 ((_ map or) call!440989 (derivationStepZipperUp!1029 (Context!10291 (t!376913 (exprs!5645 (Context!10291 (t!376913 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343))))))))))) (h!69906 s!2326))))))

(declare-fun b!5752334 () Bool)

(assert (=> b!5752334 (= e!3535234 e!3535232)))

(declare-fun c!1016220 () Bool)

(assert (=> b!5752334 (= c!1016220 ((_ is Cons!63459) (exprs!5645 (Context!10291 (t!376913 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343)))))))))))))

(assert (= (and d!1812826 res!2428596) b!5752332))

(assert (= (and d!1812826 c!1016219) b!5752333))

(assert (= (and d!1812826 (not c!1016219)) b!5752334))

(assert (= (and b!5752334 c!1016220) b!5752331))

(assert (= (and b!5752334 (not c!1016220)) b!5752330))

(assert (= (or b!5752333 b!5752331) bm!440984))

(declare-fun m!6702052 () Bool)

(assert (=> bm!440984 m!6702052))

(declare-fun m!6702054 () Bool)

(assert (=> b!5752332 m!6702054))

(declare-fun m!6702056 () Bool)

(assert (=> b!5752333 m!6702056))

(assert (=> b!5751908 d!1812826))

(declare-fun b!5752335 () Bool)

(declare-fun res!2428599 () Bool)

(declare-fun e!3535236 () Bool)

(assert (=> b!5752335 (=> (not res!2428599) (not e!3535236))))

(declare-fun call!440991 () Bool)

(assert (=> b!5752335 (= res!2428599 call!440991)))

(declare-fun e!3535239 () Bool)

(assert (=> b!5752335 (= e!3535239 e!3535236)))

(declare-fun b!5752336 () Bool)

(declare-fun call!440992 () Bool)

(assert (=> b!5752336 (= e!3535236 call!440992)))

(declare-fun b!5752337 () Bool)

(declare-fun e!3535238 () Bool)

(assert (=> b!5752337 (= e!3535238 call!440992)))

(declare-fun bm!440985 () Bool)

(declare-fun c!1016221 () Bool)

(declare-fun c!1016222 () Bool)

(declare-fun call!440990 () Bool)

(assert (=> bm!440985 (= call!440990 (validRegex!7497 (ite c!1016221 (reg!16090 lt!2287388) (ite c!1016222 (regTwo!32035 lt!2287388) (regTwo!32034 lt!2287388)))))))

(declare-fun b!5752338 () Bool)

(declare-fun e!3535241 () Bool)

(assert (=> b!5752338 (= e!3535241 call!440990)))

(declare-fun b!5752339 () Bool)

(declare-fun e!3535235 () Bool)

(assert (=> b!5752339 (= e!3535235 e!3535241)))

(declare-fun res!2428597 () Bool)

(assert (=> b!5752339 (= res!2428597 (not (nullable!5793 (reg!16090 lt!2287388))))))

(assert (=> b!5752339 (=> (not res!2428597) (not e!3535241))))

(declare-fun b!5752340 () Bool)

(declare-fun e!3535240 () Bool)

(assert (=> b!5752340 (= e!3535240 e!3535238)))

(declare-fun res!2428598 () Bool)

(assert (=> b!5752340 (=> (not res!2428598) (not e!3535238))))

(assert (=> b!5752340 (= res!2428598 call!440991)))

(declare-fun bm!440986 () Bool)

(assert (=> bm!440986 (= call!440991 (validRegex!7497 (ite c!1016222 (regOne!32035 lt!2287388) (regOne!32034 lt!2287388))))))

(declare-fun bm!440987 () Bool)

(assert (=> bm!440987 (= call!440992 call!440990)))

(declare-fun b!5752342 () Bool)

(declare-fun e!3535237 () Bool)

(assert (=> b!5752342 (= e!3535237 e!3535235)))

(assert (=> b!5752342 (= c!1016221 ((_ is Star!15761) lt!2287388))))

(declare-fun b!5752343 () Bool)

(declare-fun res!2428600 () Bool)

(assert (=> b!5752343 (=> res!2428600 e!3535240)))

(assert (=> b!5752343 (= res!2428600 (not ((_ is Concat!24606) lt!2287388)))))

(assert (=> b!5752343 (= e!3535239 e!3535240)))

(declare-fun d!1812828 () Bool)

(declare-fun res!2428601 () Bool)

(assert (=> d!1812828 (=> res!2428601 e!3535237)))

(assert (=> d!1812828 (= res!2428601 ((_ is ElementMatch!15761) lt!2287388))))

(assert (=> d!1812828 (= (validRegex!7497 lt!2287388) e!3535237)))

(declare-fun b!5752341 () Bool)

(assert (=> b!5752341 (= e!3535235 e!3535239)))

(assert (=> b!5752341 (= c!1016222 ((_ is Union!15761) lt!2287388))))

(assert (= (and d!1812828 (not res!2428601)) b!5752342))

(assert (= (and b!5752342 c!1016221) b!5752339))

(assert (= (and b!5752342 (not c!1016221)) b!5752341))

(assert (= (and b!5752339 res!2428597) b!5752338))

(assert (= (and b!5752341 c!1016222) b!5752335))

(assert (= (and b!5752341 (not c!1016222)) b!5752343))

(assert (= (and b!5752335 res!2428599) b!5752336))

(assert (= (and b!5752343 (not res!2428600)) b!5752340))

(assert (= (and b!5752340 res!2428598) b!5752337))

(assert (= (or b!5752336 b!5752337) bm!440987))

(assert (= (or b!5752335 b!5752340) bm!440986))

(assert (= (or b!5752338 bm!440987) bm!440985))

(declare-fun m!6702058 () Bool)

(assert (=> bm!440985 m!6702058))

(declare-fun m!6702060 () Bool)

(assert (=> b!5752339 m!6702060))

(declare-fun m!6702062 () Bool)

(assert (=> bm!440986 m!6702062))

(assert (=> d!1812616 d!1812828))

(declare-fun d!1812830 () Bool)

(declare-fun res!2428602 () Bool)

(declare-fun e!3535242 () Bool)

(assert (=> d!1812830 (=> res!2428602 e!3535242)))

(assert (=> d!1812830 (= res!2428602 ((_ is Nil!63459) (exprs!5645 (h!69908 zl!343))))))

(assert (=> d!1812830 (= (forall!14881 (exprs!5645 (h!69908 zl!343)) lambda!312104) e!3535242)))

(declare-fun b!5752344 () Bool)

(declare-fun e!3535243 () Bool)

(assert (=> b!5752344 (= e!3535242 e!3535243)))

(declare-fun res!2428603 () Bool)

(assert (=> b!5752344 (=> (not res!2428603) (not e!3535243))))

(assert (=> b!5752344 (= res!2428603 (dynLambda!24839 lambda!312104 (h!69907 (exprs!5645 (h!69908 zl!343)))))))

(declare-fun b!5752345 () Bool)

(assert (=> b!5752345 (= e!3535243 (forall!14881 (t!376913 (exprs!5645 (h!69908 zl!343))) lambda!312104))))

(assert (= (and d!1812830 (not res!2428602)) b!5752344))

(assert (= (and b!5752344 res!2428603) b!5752345))

(declare-fun b_lambda!217271 () Bool)

(assert (=> (not b_lambda!217271) (not b!5752344)))

(declare-fun m!6702064 () Bool)

(assert (=> b!5752344 m!6702064))

(declare-fun m!6702066 () Bool)

(assert (=> b!5752345 m!6702066))

(assert (=> d!1812616 d!1812830))

(assert (=> b!5751681 d!1812788))

(declare-fun bs!1347355 () Bool)

(declare-fun d!1812832 () Bool)

(assert (= bs!1347355 (and d!1812832 b!5751843)))

(declare-fun lambda!312146 () Int)

(assert (=> bs!1347355 (not (= lambda!312146 lambda!312128))))

(declare-fun bs!1347356 () Bool)

(assert (= bs!1347356 (and d!1812832 b!5751845)))

(assert (=> bs!1347356 (not (= lambda!312146 lambda!312129))))

(declare-fun bs!1347357 () Bool)

(assert (= bs!1347357 (and d!1812832 b!5751848)))

(assert (=> bs!1347357 (not (= lambda!312146 lambda!312131))))

(declare-fun bs!1347358 () Bool)

(assert (= bs!1347358 (and d!1812832 b!5751850)))

(assert (=> bs!1347358 (not (= lambda!312146 lambda!312132))))

(declare-fun exists!2235 ((InoxSet Context!10290) Int) Bool)

(assert (=> d!1812832 (= (nullableZipper!1692 lt!2287285) (exists!2235 lt!2287285 lambda!312146))))

(declare-fun bs!1347359 () Bool)

(assert (= bs!1347359 d!1812832))

(declare-fun m!6702068 () Bool)

(assert (=> bs!1347359 m!6702068))

(assert (=> b!5752016 d!1812832))

(declare-fun bm!440988 () Bool)

(declare-fun call!440993 () Bool)

(assert (=> bm!440988 (= call!440993 (isEmpty!35345 (tail!11261 s!2326)))))

(declare-fun b!5752346 () Bool)

(declare-fun e!3535246 () Bool)

(declare-fun lt!2287462 () Bool)

(assert (=> b!5752346 (= e!3535246 (not lt!2287462))))

(declare-fun d!1812834 () Bool)

(declare-fun e!3535245 () Bool)

(assert (=> d!1812834 e!3535245))

(declare-fun c!1016225 () Bool)

(assert (=> d!1812834 (= c!1016225 ((_ is EmptyExpr!15761) (derivativeStep!4546 r!7292 (head!12166 s!2326))))))

(declare-fun e!3535250 () Bool)

(assert (=> d!1812834 (= lt!2287462 e!3535250)))

(declare-fun c!1016226 () Bool)

(assert (=> d!1812834 (= c!1016226 (isEmpty!35345 (tail!11261 s!2326)))))

(assert (=> d!1812834 (validRegex!7497 (derivativeStep!4546 r!7292 (head!12166 s!2326)))))

(assert (=> d!1812834 (= (matchR!7946 (derivativeStep!4546 r!7292 (head!12166 s!2326)) (tail!11261 s!2326)) lt!2287462)))

(declare-fun b!5752347 () Bool)

(declare-fun e!3535244 () Bool)

(assert (=> b!5752347 (= e!3535244 (not (= (head!12166 (tail!11261 s!2326)) (c!1015817 (derivativeStep!4546 r!7292 (head!12166 s!2326))))))))

(declare-fun b!5752348 () Bool)

(declare-fun e!3535247 () Bool)

(declare-fun e!3535248 () Bool)

(assert (=> b!5752348 (= e!3535247 e!3535248)))

(declare-fun res!2428604 () Bool)

(assert (=> b!5752348 (=> (not res!2428604) (not e!3535248))))

(assert (=> b!5752348 (= res!2428604 (not lt!2287462))))

(declare-fun b!5752349 () Bool)

(declare-fun e!3535249 () Bool)

(assert (=> b!5752349 (= e!3535249 (= (head!12166 (tail!11261 s!2326)) (c!1015817 (derivativeStep!4546 r!7292 (head!12166 s!2326)))))))

(declare-fun b!5752350 () Bool)

(assert (=> b!5752350 (= e!3535250 (matchR!7946 (derivativeStep!4546 (derivativeStep!4546 r!7292 (head!12166 s!2326)) (head!12166 (tail!11261 s!2326))) (tail!11261 (tail!11261 s!2326))))))

(declare-fun b!5752351 () Bool)

(assert (=> b!5752351 (= e!3535248 e!3535244)))

(declare-fun res!2428610 () Bool)

(assert (=> b!5752351 (=> res!2428610 e!3535244)))

(assert (=> b!5752351 (= res!2428610 call!440993)))

(declare-fun b!5752352 () Bool)

(assert (=> b!5752352 (= e!3535245 (= lt!2287462 call!440993))))

(declare-fun b!5752353 () Bool)

(declare-fun res!2428608 () Bool)

(assert (=> b!5752353 (=> (not res!2428608) (not e!3535249))))

(assert (=> b!5752353 (= res!2428608 (isEmpty!35345 (tail!11261 (tail!11261 s!2326))))))

(declare-fun b!5752354 () Bool)

(assert (=> b!5752354 (= e!3535245 e!3535246)))

(declare-fun c!1016227 () Bool)

(assert (=> b!5752354 (= c!1016227 ((_ is EmptyLang!15761) (derivativeStep!4546 r!7292 (head!12166 s!2326))))))

(declare-fun b!5752355 () Bool)

(assert (=> b!5752355 (= e!3535250 (nullable!5793 (derivativeStep!4546 r!7292 (head!12166 s!2326))))))

(declare-fun b!5752356 () Bool)

(declare-fun res!2428605 () Bool)

(assert (=> b!5752356 (=> res!2428605 e!3535244)))

(assert (=> b!5752356 (= res!2428605 (not (isEmpty!35345 (tail!11261 (tail!11261 s!2326)))))))

(declare-fun b!5752357 () Bool)

(declare-fun res!2428609 () Bool)

(assert (=> b!5752357 (=> res!2428609 e!3535247)))

(assert (=> b!5752357 (= res!2428609 (not ((_ is ElementMatch!15761) (derivativeStep!4546 r!7292 (head!12166 s!2326)))))))

(assert (=> b!5752357 (= e!3535246 e!3535247)))

(declare-fun b!5752358 () Bool)

(declare-fun res!2428611 () Bool)

(assert (=> b!5752358 (=> (not res!2428611) (not e!3535249))))

(assert (=> b!5752358 (= res!2428611 (not call!440993))))

(declare-fun b!5752359 () Bool)

(declare-fun res!2428607 () Bool)

(assert (=> b!5752359 (=> res!2428607 e!3535247)))

(assert (=> b!5752359 (= res!2428607 e!3535249)))

(declare-fun res!2428606 () Bool)

(assert (=> b!5752359 (=> (not res!2428606) (not e!3535249))))

(assert (=> b!5752359 (= res!2428606 lt!2287462)))

(assert (= (and d!1812834 c!1016226) b!5752355))

(assert (= (and d!1812834 (not c!1016226)) b!5752350))

(assert (= (and d!1812834 c!1016225) b!5752352))

(assert (= (and d!1812834 (not c!1016225)) b!5752354))

(assert (= (and b!5752354 c!1016227) b!5752346))

(assert (= (and b!5752354 (not c!1016227)) b!5752357))

(assert (= (and b!5752357 (not res!2428609)) b!5752359))

(assert (= (and b!5752359 res!2428606) b!5752358))

(assert (= (and b!5752358 res!2428611) b!5752353))

(assert (= (and b!5752353 res!2428608) b!5752349))

(assert (= (and b!5752359 (not res!2428607)) b!5752348))

(assert (= (and b!5752348 res!2428604) b!5752351))

(assert (= (and b!5752351 (not res!2428610)) b!5752356))

(assert (= (and b!5752356 (not res!2428605)) b!5752347))

(assert (= (or b!5752352 b!5752351 b!5752358) bm!440988))

(assert (=> d!1812834 m!6701480))

(assert (=> d!1812834 m!6701646))

(assert (=> d!1812834 m!6701648))

(declare-fun m!6702070 () Bool)

(assert (=> d!1812834 m!6702070))

(assert (=> b!5752356 m!6701480))

(assert (=> b!5752356 m!6701876))

(assert (=> b!5752356 m!6701876))

(assert (=> b!5752356 m!6701878))

(assert (=> b!5752347 m!6701480))

(assert (=> b!5752347 m!6701880))

(assert (=> bm!440988 m!6701480))

(assert (=> bm!440988 m!6701646))

(assert (=> b!5752350 m!6701480))

(assert (=> b!5752350 m!6701880))

(assert (=> b!5752350 m!6701648))

(assert (=> b!5752350 m!6701880))

(declare-fun m!6702072 () Bool)

(assert (=> b!5752350 m!6702072))

(assert (=> b!5752350 m!6701480))

(assert (=> b!5752350 m!6701876))

(assert (=> b!5752350 m!6702072))

(assert (=> b!5752350 m!6701876))

(declare-fun m!6702074 () Bool)

(assert (=> b!5752350 m!6702074))

(assert (=> b!5752355 m!6701648))

(declare-fun m!6702076 () Bool)

(assert (=> b!5752355 m!6702076))

(assert (=> b!5752353 m!6701480))

(assert (=> b!5752353 m!6701876))

(assert (=> b!5752353 m!6701876))

(assert (=> b!5752353 m!6701878))

(assert (=> b!5752349 m!6701480))

(assert (=> b!5752349 m!6701880))

(assert (=> b!5751822 d!1812834))

(declare-fun b!5752360 () Bool)

(declare-fun e!3535251 () Regex!15761)

(assert (=> b!5752360 (= e!3535251 (ite (= (head!12166 s!2326) (c!1015817 r!7292)) EmptyExpr!15761 EmptyLang!15761))))

(declare-fun b!5752361 () Bool)

(declare-fun e!3535253 () Regex!15761)

(assert (=> b!5752361 (= e!3535253 e!3535251)))

(declare-fun c!1016232 () Bool)

(assert (=> b!5752361 (= c!1016232 ((_ is ElementMatch!15761) r!7292))))

(declare-fun c!1016229 () Bool)

(declare-fun bm!440989 () Bool)

(declare-fun call!440997 () Regex!15761)

(declare-fun c!1016228 () Bool)

(assert (=> bm!440989 (= call!440997 (derivativeStep!4546 (ite c!1016229 (regOne!32035 r!7292) (ite c!1016228 (reg!16090 r!7292) (regOne!32034 r!7292))) (head!12166 s!2326)))))

(declare-fun d!1812836 () Bool)

(declare-fun lt!2287463 () Regex!15761)

(assert (=> d!1812836 (validRegex!7497 lt!2287463)))

(assert (=> d!1812836 (= lt!2287463 e!3535253)))

(declare-fun c!1016230 () Bool)

(assert (=> d!1812836 (= c!1016230 (or ((_ is EmptyExpr!15761) r!7292) ((_ is EmptyLang!15761) r!7292)))))

(assert (=> d!1812836 (validRegex!7497 r!7292)))

(assert (=> d!1812836 (= (derivativeStep!4546 r!7292 (head!12166 s!2326)) lt!2287463)))

(declare-fun b!5752362 () Bool)

(declare-fun call!440995 () Regex!15761)

(declare-fun call!440994 () Regex!15761)

(declare-fun e!3535252 () Regex!15761)

(assert (=> b!5752362 (= e!3535252 (Union!15761 (Concat!24606 call!440994 (regTwo!32034 r!7292)) call!440995))))

(declare-fun b!5752363 () Bool)

(assert (=> b!5752363 (= e!3535253 EmptyLang!15761)))

(declare-fun b!5752364 () Bool)

(assert (=> b!5752364 (= e!3535252 (Union!15761 (Concat!24606 call!440995 (regTwo!32034 r!7292)) EmptyLang!15761))))

(declare-fun bm!440990 () Bool)

(assert (=> bm!440990 (= call!440994 call!440997)))

(declare-fun b!5752365 () Bool)

(assert (=> b!5752365 (= c!1016229 ((_ is Union!15761) r!7292))))

(declare-fun e!3535254 () Regex!15761)

(assert (=> b!5752365 (= e!3535251 e!3535254)))

(declare-fun b!5752366 () Bool)

(declare-fun call!440996 () Regex!15761)

(assert (=> b!5752366 (= e!3535254 (Union!15761 call!440997 call!440996))))

(declare-fun b!5752367 () Bool)

(declare-fun c!1016231 () Bool)

(assert (=> b!5752367 (= c!1016231 (nullable!5793 (regOne!32034 r!7292)))))

(declare-fun e!3535255 () Regex!15761)

(assert (=> b!5752367 (= e!3535255 e!3535252)))

(declare-fun bm!440991 () Bool)

(assert (=> bm!440991 (= call!440995 call!440996)))

(declare-fun b!5752368 () Bool)

(assert (=> b!5752368 (= e!3535254 e!3535255)))

(assert (=> b!5752368 (= c!1016228 ((_ is Star!15761) r!7292))))

(declare-fun bm!440992 () Bool)

(assert (=> bm!440992 (= call!440996 (derivativeStep!4546 (ite c!1016229 (regTwo!32035 r!7292) (ite c!1016231 (regTwo!32034 r!7292) (regOne!32034 r!7292))) (head!12166 s!2326)))))

(declare-fun b!5752369 () Bool)

(assert (=> b!5752369 (= e!3535255 (Concat!24606 call!440994 r!7292))))

(assert (= (and d!1812836 c!1016230) b!5752363))

(assert (= (and d!1812836 (not c!1016230)) b!5752361))

(assert (= (and b!5752361 c!1016232) b!5752360))

(assert (= (and b!5752361 (not c!1016232)) b!5752365))

(assert (= (and b!5752365 c!1016229) b!5752366))

(assert (= (and b!5752365 (not c!1016229)) b!5752368))

(assert (= (and b!5752368 c!1016228) b!5752369))

(assert (= (and b!5752368 (not c!1016228)) b!5752367))

(assert (= (and b!5752367 c!1016231) b!5752362))

(assert (= (and b!5752367 (not c!1016231)) b!5752364))

(assert (= (or b!5752362 b!5752364) bm!440991))

(assert (= (or b!5752369 b!5752362) bm!440990))

(assert (= (or b!5752366 bm!440991) bm!440992))

(assert (= (or b!5752366 bm!440990) bm!440989))

(assert (=> bm!440989 m!6701476))

(declare-fun m!6702078 () Bool)

(assert (=> bm!440989 m!6702078))

(declare-fun m!6702080 () Bool)

(assert (=> d!1812836 m!6702080))

(assert (=> d!1812836 m!6701026))

(assert (=> b!5752367 m!6701992))

(assert (=> bm!440992 m!6701476))

(declare-fun m!6702082 () Bool)

(assert (=> bm!440992 m!6702082))

(assert (=> b!5751822 d!1812836))

(assert (=> b!5751822 d!1812748))

(assert (=> b!5751822 d!1812750))

(declare-fun d!1812838 () Bool)

(assert (=> d!1812838 true))

(declare-fun setRes!38617 () Bool)

(assert (=> d!1812838 setRes!38617))

(declare-fun condSetEmpty!38617 () Bool)

(declare-fun res!2428612 () (InoxSet Context!10290))

(assert (=> d!1812838 (= condSetEmpty!38617 (= res!2428612 ((as const (Array Context!10290 Bool)) false)))))

(assert (=> d!1812838 (= (choose!43607 lt!2287275 lambda!312041) res!2428612)))

(declare-fun setIsEmpty!38617 () Bool)

(assert (=> setIsEmpty!38617 setRes!38617))

(declare-fun tp!1589873 () Bool)

(declare-fun setElem!38617 () Context!10290)

(declare-fun e!3535256 () Bool)

(declare-fun setNonEmpty!38617 () Bool)

(assert (=> setNonEmpty!38617 (= setRes!38617 (and tp!1589873 (inv!82649 setElem!38617) e!3535256))))

(declare-fun setRest!38617 () (InoxSet Context!10290))

(assert (=> setNonEmpty!38617 (= res!2428612 ((_ map or) (store ((as const (Array Context!10290 Bool)) false) setElem!38617 true) setRest!38617))))

(declare-fun b!5752370 () Bool)

(declare-fun tp!1589874 () Bool)

(assert (=> b!5752370 (= e!3535256 tp!1589874)))

(assert (= (and d!1812838 condSetEmpty!38617) setIsEmpty!38617))

(assert (= (and d!1812838 (not condSetEmpty!38617)) setNonEmpty!38617))

(assert (= setNonEmpty!38617 b!5752370))

(declare-fun m!6702084 () Bool)

(assert (=> setNonEmpty!38617 m!6702084))

(assert (=> d!1812686 d!1812838))

(declare-fun d!1812840 () Bool)

(assert (=> d!1812840 (= (Exists!2861 (ite c!1016059 lambda!312119 lambda!312120)) (choose!43609 (ite c!1016059 lambda!312119 lambda!312120)))))

(declare-fun bs!1347360 () Bool)

(assert (= bs!1347360 d!1812840))

(declare-fun m!6702086 () Bool)

(assert (=> bs!1347360 m!6702086))

(assert (=> bm!440873 d!1812840))

(declare-fun c!1016233 () Bool)

(declare-fun d!1812842 () Bool)

(assert (=> d!1812842 (= c!1016233 (and ((_ is ElementMatch!15761) (ite c!1016098 (regTwo!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016095 (regTwo!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016096 (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (reg!16090 (h!69907 (exprs!5645 (h!69908 zl!343)))))))) (= (c!1015817 (ite c!1016098 (regTwo!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016095 (regTwo!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016096 (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (reg!16090 (h!69907 (exprs!5645 (h!69908 zl!343)))))))) (h!69906 s!2326))))))

(declare-fun e!3535259 () (InoxSet Context!10290))

(assert (=> d!1812842 (= (derivationStepZipperDown!1103 (ite c!1016098 (regTwo!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016095 (regTwo!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016096 (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (reg!16090 (h!69907 (exprs!5645 (h!69908 zl!343))))))) (ite (or c!1016098 c!1016095) lt!2287276 (Context!10291 call!440892)) (h!69906 s!2326)) e!3535259)))

(declare-fun b!5752371 () Bool)

(declare-fun e!3535257 () Bool)

(assert (=> b!5752371 (= e!3535257 (nullable!5793 (regOne!32034 (ite c!1016098 (regTwo!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016095 (regTwo!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016096 (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (reg!16090 (h!69907 (exprs!5645 (h!69908 zl!343))))))))))))

(declare-fun c!1016235 () Bool)

(declare-fun call!440998 () List!63583)

(declare-fun bm!440993 () Bool)

(declare-fun c!1016234 () Bool)

(assert (=> bm!440993 (= call!440998 ($colon$colon!1760 (exprs!5645 (ite (or c!1016098 c!1016095) lt!2287276 (Context!10291 call!440892))) (ite (or c!1016234 c!1016235) (regTwo!32034 (ite c!1016098 (regTwo!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016095 (regTwo!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016096 (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (reg!16090 (h!69907 (exprs!5645 (h!69908 zl!343)))))))) (ite c!1016098 (regTwo!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016095 (regTwo!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016096 (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (reg!16090 (h!69907 (exprs!5645 (h!69908 zl!343))))))))))))

(declare-fun bm!440994 () Bool)

(declare-fun call!441001 () (InoxSet Context!10290))

(declare-fun call!441000 () (InoxSet Context!10290))

(assert (=> bm!440994 (= call!441001 call!441000)))

(declare-fun bm!440995 () Bool)

(declare-fun call!441002 () (InoxSet Context!10290))

(assert (=> bm!440995 (= call!441002 call!441001)))

(declare-fun bm!440996 () Bool)

(declare-fun call!440999 () (InoxSet Context!10290))

(declare-fun c!1016237 () Bool)

(assert (=> bm!440996 (= call!440999 (derivationStepZipperDown!1103 (ite c!1016237 (regOne!32035 (ite c!1016098 (regTwo!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016095 (regTwo!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016096 (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (reg!16090 (h!69907 (exprs!5645 (h!69908 zl!343)))))))) (regOne!32034 (ite c!1016098 (regTwo!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016095 (regTwo!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016096 (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (reg!16090 (h!69907 (exprs!5645 (h!69908 zl!343))))))))) (ite c!1016237 (ite (or c!1016098 c!1016095) lt!2287276 (Context!10291 call!440892)) (Context!10291 call!440998)) (h!69906 s!2326)))))

(declare-fun b!5752372 () Bool)

(declare-fun e!3535262 () (InoxSet Context!10290))

(assert (=> b!5752372 (= e!3535262 ((as const (Array Context!10290 Bool)) false))))

(declare-fun bm!440997 () Bool)

(declare-fun call!441003 () List!63583)

(assert (=> bm!440997 (= call!441003 call!440998)))

(declare-fun c!1016236 () Bool)

(declare-fun b!5752373 () Bool)

(assert (=> b!5752373 (= c!1016236 ((_ is Star!15761) (ite c!1016098 (regTwo!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016095 (regTwo!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016096 (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (reg!16090 (h!69907 (exprs!5645 (h!69908 zl!343)))))))))))

(declare-fun e!3535260 () (InoxSet Context!10290))

(assert (=> b!5752373 (= e!3535260 e!3535262)))

(declare-fun b!5752374 () Bool)

(declare-fun e!3535261 () (InoxSet Context!10290))

(assert (=> b!5752374 (= e!3535261 ((_ map or) call!440999 call!441000))))

(declare-fun b!5752375 () Bool)

(assert (=> b!5752375 (= e!3535262 call!441002)))

(declare-fun b!5752376 () Bool)

(assert (=> b!5752376 (= e!3535259 e!3535261)))

(assert (=> b!5752376 (= c!1016237 ((_ is Union!15761) (ite c!1016098 (regTwo!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016095 (regTwo!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016096 (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (reg!16090 (h!69907 (exprs!5645 (h!69908 zl!343)))))))))))

(declare-fun b!5752377 () Bool)

(assert (=> b!5752377 (= e!3535259 (store ((as const (Array Context!10290 Bool)) false) (ite (or c!1016098 c!1016095) lt!2287276 (Context!10291 call!440892)) true))))

(declare-fun b!5752378 () Bool)

(assert (=> b!5752378 (= c!1016234 e!3535257)))

(declare-fun res!2428613 () Bool)

(assert (=> b!5752378 (=> (not res!2428613) (not e!3535257))))

(assert (=> b!5752378 (= res!2428613 ((_ is Concat!24606) (ite c!1016098 (regTwo!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016095 (regTwo!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016096 (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (reg!16090 (h!69907 (exprs!5645 (h!69908 zl!343)))))))))))

(declare-fun e!3535258 () (InoxSet Context!10290))

(assert (=> b!5752378 (= e!3535261 e!3535258)))

(declare-fun b!5752379 () Bool)

(assert (=> b!5752379 (= e!3535260 call!441002)))

(declare-fun bm!440998 () Bool)

(assert (=> bm!440998 (= call!441000 (derivationStepZipperDown!1103 (ite c!1016237 (regTwo!32035 (ite c!1016098 (regTwo!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016095 (regTwo!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016096 (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (reg!16090 (h!69907 (exprs!5645 (h!69908 zl!343)))))))) (ite c!1016234 (regTwo!32034 (ite c!1016098 (regTwo!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016095 (regTwo!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016096 (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (reg!16090 (h!69907 (exprs!5645 (h!69908 zl!343)))))))) (ite c!1016235 (regOne!32034 (ite c!1016098 (regTwo!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016095 (regTwo!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016096 (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (reg!16090 (h!69907 (exprs!5645 (h!69908 zl!343)))))))) (reg!16090 (ite c!1016098 (regTwo!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016095 (regTwo!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016096 (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (reg!16090 (h!69907 (exprs!5645 (h!69908 zl!343))))))))))) (ite (or c!1016237 c!1016234) (ite (or c!1016098 c!1016095) lt!2287276 (Context!10291 call!440892)) (Context!10291 call!441003)) (h!69906 s!2326)))))

(declare-fun b!5752380 () Bool)

(assert (=> b!5752380 (= e!3535258 ((_ map or) call!440999 call!441001))))

(declare-fun b!5752381 () Bool)

(assert (=> b!5752381 (= e!3535258 e!3535260)))

(assert (=> b!5752381 (= c!1016235 ((_ is Concat!24606) (ite c!1016098 (regTwo!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016095 (regTwo!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (ite c!1016096 (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))) (reg!16090 (h!69907 (exprs!5645 (h!69908 zl!343)))))))))))

(assert (= (and d!1812842 c!1016233) b!5752377))

(assert (= (and d!1812842 (not c!1016233)) b!5752376))

(assert (= (and b!5752376 c!1016237) b!5752374))

(assert (= (and b!5752376 (not c!1016237)) b!5752378))

(assert (= (and b!5752378 res!2428613) b!5752371))

(assert (= (and b!5752378 c!1016234) b!5752380))

(assert (= (and b!5752378 (not c!1016234)) b!5752381))

(assert (= (and b!5752381 c!1016235) b!5752379))

(assert (= (and b!5752381 (not c!1016235)) b!5752373))

(assert (= (and b!5752373 c!1016236) b!5752375))

(assert (= (and b!5752373 (not c!1016236)) b!5752372))

(assert (= (or b!5752379 b!5752375) bm!440997))

(assert (= (or b!5752379 b!5752375) bm!440995))

(assert (= (or b!5752380 bm!440997) bm!440993))

(assert (= (or b!5752380 bm!440995) bm!440994))

(assert (= (or b!5752374 bm!440994) bm!440998))

(assert (= (or b!5752374 b!5752380) bm!440996))

(declare-fun m!6702088 () Bool)

(assert (=> bm!440993 m!6702088))

(declare-fun m!6702090 () Bool)

(assert (=> b!5752377 m!6702090))

(declare-fun m!6702092 () Bool)

(assert (=> b!5752371 m!6702092))

(declare-fun m!6702094 () Bool)

(assert (=> bm!440996 m!6702094))

(declare-fun m!6702096 () Bool)

(assert (=> bm!440998 m!6702096))

(assert (=> bm!440887 d!1812842))

(declare-fun b!5752382 () Bool)

(declare-fun e!3535266 () Bool)

(declare-fun lt!2287464 () Int)

(assert (=> b!5752382 (= e!3535266 (= lt!2287464 1))))

(declare-fun b!5752383 () Bool)

(declare-fun e!3535272 () Bool)

(declare-fun call!441006 () Int)

(assert (=> b!5752383 (= e!3535272 (> lt!2287464 call!441006))))

(declare-fun call!441009 () Int)

(declare-fun c!1016241 () Bool)

(declare-fun bm!440999 () Bool)

(assert (=> bm!440999 (= call!441009 (regexDepth!238 (ite c!1016241 (regTwo!32035 (ite c!1016122 (regOne!32035 r!7292) (ite c!1016119 (regOne!32034 r!7292) (reg!16090 r!7292)))) (regOne!32034 (ite c!1016122 (regOne!32035 r!7292) (ite c!1016119 (regOne!32034 r!7292) (reg!16090 r!7292)))))))))

(declare-fun bm!441000 () Bool)

(declare-fun call!441007 () Int)

(declare-fun call!441004 () Int)

(assert (=> bm!441000 (= call!441007 call!441004)))

(declare-fun b!5752384 () Bool)

(declare-fun e!3535264 () Int)

(declare-fun e!3535267 () Int)

(assert (=> b!5752384 (= e!3535264 e!3535267)))

(declare-fun c!1016244 () Bool)

(assert (=> b!5752384 (= c!1016244 ((_ is Star!15761) (ite c!1016122 (regOne!32035 r!7292) (ite c!1016119 (regOne!32034 r!7292) (reg!16090 r!7292)))))))

(declare-fun b!5752385 () Bool)

(assert (=> b!5752385 (= c!1016241 ((_ is Union!15761) (ite c!1016122 (regOne!32035 r!7292) (ite c!1016119 (regOne!32034 r!7292) (reg!16090 r!7292)))))))

(declare-fun e!3535265 () Int)

(assert (=> b!5752385 (= e!3535267 e!3535265)))

(declare-fun b!5752386 () Bool)

(declare-fun e!3535269 () Int)

(assert (=> b!5752386 (= e!3535265 e!3535269)))

(declare-fun c!1016239 () Bool)

(assert (=> b!5752386 (= c!1016239 ((_ is Concat!24606) (ite c!1016122 (regOne!32035 r!7292) (ite c!1016119 (regOne!32034 r!7292) (reg!16090 r!7292)))))))

(declare-fun call!441008 () Int)

(declare-fun bm!441001 () Bool)

(assert (=> bm!441001 (= call!441008 (regexDepth!238 (ite c!1016244 (reg!16090 (ite c!1016122 (regOne!32035 r!7292) (ite c!1016119 (regOne!32034 r!7292) (reg!16090 r!7292)))) (ite c!1016241 (regOne!32035 (ite c!1016122 (regOne!32035 r!7292) (ite c!1016119 (regOne!32034 r!7292) (reg!16090 r!7292)))) (regTwo!32034 (ite c!1016122 (regOne!32035 r!7292) (ite c!1016119 (regOne!32034 r!7292) (reg!16090 r!7292))))))))))

(declare-fun b!5752387 () Bool)

(assert (=> b!5752387 (= e!3535267 (+ 1 call!441008))))

(declare-fun b!5752388 () Bool)

(declare-fun e!3535271 () Bool)

(assert (=> b!5752388 (= e!3535271 e!3535272)))

(declare-fun res!2428614 () Bool)

(assert (=> b!5752388 (= res!2428614 (> lt!2287464 call!441004))))

(assert (=> b!5752388 (=> (not res!2428614) (not e!3535272))))

(declare-fun b!5752390 () Bool)

(declare-fun e!3535263 () Bool)

(assert (=> b!5752390 (= e!3535263 (> lt!2287464 call!441006))))

(declare-fun b!5752391 () Bool)

(declare-fun call!441005 () Int)

(assert (=> b!5752391 (= e!3535269 (+ 1 call!441005))))

(declare-fun b!5752392 () Bool)

(declare-fun e!3535268 () Bool)

(assert (=> b!5752392 (= e!3535271 e!3535268)))

(declare-fun c!1016240 () Bool)

(assert (=> b!5752392 (= c!1016240 ((_ is Concat!24606) (ite c!1016122 (regOne!32035 r!7292) (ite c!1016119 (regOne!32034 r!7292) (reg!16090 r!7292)))))))

(declare-fun c!1016243 () Bool)

(declare-fun bm!441002 () Bool)

(assert (=> bm!441002 (= call!441004 (regexDepth!238 (ite c!1016243 (regOne!32035 (ite c!1016122 (regOne!32035 r!7292) (ite c!1016119 (regOne!32034 r!7292) (reg!16090 r!7292)))) (ite c!1016240 (regOne!32034 (ite c!1016122 (regOne!32035 r!7292) (ite c!1016119 (regOne!32034 r!7292) (reg!16090 r!7292)))) (reg!16090 (ite c!1016122 (regOne!32035 r!7292) (ite c!1016119 (regOne!32034 r!7292) (reg!16090 r!7292))))))))))

(declare-fun call!441010 () Int)

(declare-fun bm!441003 () Bool)

(assert (=> bm!441003 (= call!441005 (maxBigInt!0 (ite c!1016241 call!441010 call!441009) (ite c!1016241 call!441009 call!441010)))))

(declare-fun b!5752393 () Bool)

(assert (=> b!5752393 (= e!3535269 1)))

(declare-fun b!5752394 () Bool)

(declare-fun res!2428616 () Bool)

(assert (=> b!5752394 (=> (not res!2428616) (not e!3535263))))

(assert (=> b!5752394 (= res!2428616 (> lt!2287464 call!441007))))

(assert (=> b!5752394 (= e!3535268 e!3535263)))

(declare-fun b!5752395 () Bool)

(assert (=> b!5752395 (= e!3535265 (+ 1 call!441005))))

(declare-fun b!5752396 () Bool)

(assert (=> b!5752396 (= e!3535266 (> lt!2287464 call!441007))))

(declare-fun b!5752397 () Bool)

(declare-fun c!1016238 () Bool)

(assert (=> b!5752397 (= c!1016238 ((_ is Star!15761) (ite c!1016122 (regOne!32035 r!7292) (ite c!1016119 (regOne!32034 r!7292) (reg!16090 r!7292)))))))

(assert (=> b!5752397 (= e!3535268 e!3535266)))

(declare-fun b!5752398 () Bool)

(declare-fun e!3535270 () Bool)

(assert (=> b!5752398 (= e!3535270 e!3535271)))

(assert (=> b!5752398 (= c!1016243 ((_ is Union!15761) (ite c!1016122 (regOne!32035 r!7292) (ite c!1016119 (regOne!32034 r!7292) (reg!16090 r!7292)))))))

(declare-fun d!1812844 () Bool)

(assert (=> d!1812844 e!3535270))

(declare-fun res!2428615 () Bool)

(assert (=> d!1812844 (=> (not res!2428615) (not e!3535270))))

(assert (=> d!1812844 (= res!2428615 (> lt!2287464 0))))

(assert (=> d!1812844 (= lt!2287464 e!3535264)))

(declare-fun c!1016242 () Bool)

(assert (=> d!1812844 (= c!1016242 ((_ is ElementMatch!15761) (ite c!1016122 (regOne!32035 r!7292) (ite c!1016119 (regOne!32034 r!7292) (reg!16090 r!7292)))))))

(assert (=> d!1812844 (= (regexDepth!238 (ite c!1016122 (regOne!32035 r!7292) (ite c!1016119 (regOne!32034 r!7292) (reg!16090 r!7292)))) lt!2287464)))

(declare-fun b!5752389 () Bool)

(assert (=> b!5752389 (= e!3535264 1)))

(declare-fun bm!441004 () Bool)

(assert (=> bm!441004 (= call!441006 (regexDepth!238 (ite c!1016243 (regTwo!32035 (ite c!1016122 (regOne!32035 r!7292) (ite c!1016119 (regOne!32034 r!7292) (reg!16090 r!7292)))) (regTwo!32034 (ite c!1016122 (regOne!32035 r!7292) (ite c!1016119 (regOne!32034 r!7292) (reg!16090 r!7292)))))))))

(declare-fun bm!441005 () Bool)

(assert (=> bm!441005 (= call!441010 call!441008)))

(assert (= (and d!1812844 c!1016242) b!5752389))

(assert (= (and d!1812844 (not c!1016242)) b!5752384))

(assert (= (and b!5752384 c!1016244) b!5752387))

(assert (= (and b!5752384 (not c!1016244)) b!5752385))

(assert (= (and b!5752385 c!1016241) b!5752395))

(assert (= (and b!5752385 (not c!1016241)) b!5752386))

(assert (= (and b!5752386 c!1016239) b!5752391))

(assert (= (and b!5752386 (not c!1016239)) b!5752393))

(assert (= (or b!5752395 b!5752391) bm!440999))

(assert (= (or b!5752395 b!5752391) bm!441005))

(assert (= (or b!5752395 b!5752391) bm!441003))

(assert (= (or b!5752387 bm!441005) bm!441001))

(assert (= (and d!1812844 res!2428615) b!5752398))

(assert (= (and b!5752398 c!1016243) b!5752388))

(assert (= (and b!5752398 (not c!1016243)) b!5752392))

(assert (= (and b!5752388 res!2428614) b!5752383))

(assert (= (and b!5752392 c!1016240) b!5752394))

(assert (= (and b!5752392 (not c!1016240)) b!5752397))

(assert (= (and b!5752394 res!2428616) b!5752390))

(assert (= (and b!5752397 c!1016238) b!5752396))

(assert (= (and b!5752397 (not c!1016238)) b!5752382))

(assert (= (or b!5752394 b!5752396) bm!441000))

(assert (= (or b!5752383 b!5752390) bm!441004))

(assert (= (or b!5752388 bm!441000) bm!441002))

(declare-fun m!6702098 () Bool)

(assert (=> bm!441002 m!6702098))

(declare-fun m!6702100 () Bool)

(assert (=> bm!441003 m!6702100))

(declare-fun m!6702102 () Bool)

(assert (=> bm!441001 m!6702102))

(declare-fun m!6702104 () Bool)

(assert (=> bm!441004 m!6702104))

(declare-fun m!6702106 () Bool)

(assert (=> bm!440999 m!6702106))

(assert (=> bm!440907 d!1812844))

(declare-fun b!5752409 () Bool)

(declare-fun res!2428621 () Bool)

(declare-fun e!3535278 () Bool)

(assert (=> b!5752409 (=> (not res!2428621) (not e!3535278))))

(declare-fun lt!2287467 () List!63582)

(declare-fun size!40069 (List!63582) Int)

(assert (=> b!5752409 (= res!2428621 (= (size!40069 lt!2287467) (+ (size!40069 (++!13979 Nil!63458 (Cons!63458 (h!69906 s!2326) Nil!63458))) (size!40069 (t!376912 s!2326)))))))

(declare-fun b!5752407 () Bool)

(declare-fun e!3535277 () List!63582)

(assert (=> b!5752407 (= e!3535277 (t!376912 s!2326))))

(declare-fun b!5752410 () Bool)

(assert (=> b!5752410 (= e!3535278 (or (not (= (t!376912 s!2326) Nil!63458)) (= lt!2287467 (++!13979 Nil!63458 (Cons!63458 (h!69906 s!2326) Nil!63458)))))))

(declare-fun b!5752408 () Bool)

(assert (=> b!5752408 (= e!3535277 (Cons!63458 (h!69906 (++!13979 Nil!63458 (Cons!63458 (h!69906 s!2326) Nil!63458))) (++!13979 (t!376912 (++!13979 Nil!63458 (Cons!63458 (h!69906 s!2326) Nil!63458))) (t!376912 s!2326))))))

(declare-fun d!1812846 () Bool)

(assert (=> d!1812846 e!3535278))

(declare-fun res!2428622 () Bool)

(assert (=> d!1812846 (=> (not res!2428622) (not e!3535278))))

(declare-fun content!11575 (List!63582) (InoxSet C!31792))

(assert (=> d!1812846 (= res!2428622 (= (content!11575 lt!2287467) ((_ map or) (content!11575 (++!13979 Nil!63458 (Cons!63458 (h!69906 s!2326) Nil!63458))) (content!11575 (t!376912 s!2326)))))))

(assert (=> d!1812846 (= lt!2287467 e!3535277)))

(declare-fun c!1016247 () Bool)

(assert (=> d!1812846 (= c!1016247 ((_ is Nil!63458) (++!13979 Nil!63458 (Cons!63458 (h!69906 s!2326) Nil!63458))))))

(assert (=> d!1812846 (= (++!13979 (++!13979 Nil!63458 (Cons!63458 (h!69906 s!2326) Nil!63458)) (t!376912 s!2326)) lt!2287467)))

(assert (= (and d!1812846 c!1016247) b!5752407))

(assert (= (and d!1812846 (not c!1016247)) b!5752408))

(assert (= (and d!1812846 res!2428622) b!5752409))

(assert (= (and b!5752409 res!2428621) b!5752410))

(declare-fun m!6702108 () Bool)

(assert (=> b!5752409 m!6702108))

(assert (=> b!5752409 m!6701552))

(declare-fun m!6702110 () Bool)

(assert (=> b!5752409 m!6702110))

(declare-fun m!6702112 () Bool)

(assert (=> b!5752409 m!6702112))

(declare-fun m!6702114 () Bool)

(assert (=> b!5752408 m!6702114))

(declare-fun m!6702116 () Bool)

(assert (=> d!1812846 m!6702116))

(assert (=> d!1812846 m!6701552))

(declare-fun m!6702118 () Bool)

(assert (=> d!1812846 m!6702118))

(declare-fun m!6702120 () Bool)

(assert (=> d!1812846 m!6702120))

(assert (=> b!5751685 d!1812846))

(declare-fun b!5752413 () Bool)

(declare-fun res!2428623 () Bool)

(declare-fun e!3535280 () Bool)

(assert (=> b!5752413 (=> (not res!2428623) (not e!3535280))))

(declare-fun lt!2287468 () List!63582)

(assert (=> b!5752413 (= res!2428623 (= (size!40069 lt!2287468) (+ (size!40069 Nil!63458) (size!40069 (Cons!63458 (h!69906 s!2326) Nil!63458)))))))

(declare-fun b!5752411 () Bool)

(declare-fun e!3535279 () List!63582)

(assert (=> b!5752411 (= e!3535279 (Cons!63458 (h!69906 s!2326) Nil!63458))))

(declare-fun b!5752414 () Bool)

(assert (=> b!5752414 (= e!3535280 (or (not (= (Cons!63458 (h!69906 s!2326) Nil!63458) Nil!63458)) (= lt!2287468 Nil!63458)))))

(declare-fun b!5752412 () Bool)

(assert (=> b!5752412 (= e!3535279 (Cons!63458 (h!69906 Nil!63458) (++!13979 (t!376912 Nil!63458) (Cons!63458 (h!69906 s!2326) Nil!63458))))))

(declare-fun d!1812848 () Bool)

(assert (=> d!1812848 e!3535280))

(declare-fun res!2428624 () Bool)

(assert (=> d!1812848 (=> (not res!2428624) (not e!3535280))))

(assert (=> d!1812848 (= res!2428624 (= (content!11575 lt!2287468) ((_ map or) (content!11575 Nil!63458) (content!11575 (Cons!63458 (h!69906 s!2326) Nil!63458)))))))

(assert (=> d!1812848 (= lt!2287468 e!3535279)))

(declare-fun c!1016248 () Bool)

(assert (=> d!1812848 (= c!1016248 ((_ is Nil!63458) Nil!63458))))

(assert (=> d!1812848 (= (++!13979 Nil!63458 (Cons!63458 (h!69906 s!2326) Nil!63458)) lt!2287468)))

(assert (= (and d!1812848 c!1016248) b!5752411))

(assert (= (and d!1812848 (not c!1016248)) b!5752412))

(assert (= (and d!1812848 res!2428624) b!5752413))

(assert (= (and b!5752413 res!2428623) b!5752414))

(declare-fun m!6702122 () Bool)

(assert (=> b!5752413 m!6702122))

(declare-fun m!6702124 () Bool)

(assert (=> b!5752413 m!6702124))

(declare-fun m!6702126 () Bool)

(assert (=> b!5752413 m!6702126))

(declare-fun m!6702128 () Bool)

(assert (=> b!5752412 m!6702128))

(declare-fun m!6702130 () Bool)

(assert (=> d!1812848 m!6702130))

(declare-fun m!6702132 () Bool)

(assert (=> d!1812848 m!6702132))

(declare-fun m!6702134 () Bool)

(assert (=> d!1812848 m!6702134))

(assert (=> b!5751685 d!1812848))

(declare-fun d!1812850 () Bool)

(assert (=> d!1812850 (= (++!13979 (++!13979 Nil!63458 (Cons!63458 (h!69906 s!2326) Nil!63458)) (t!376912 s!2326)) s!2326)))

(declare-fun lt!2287471 () Unit!156576)

(declare-fun choose!43616 (List!63582 C!31792 List!63582 List!63582) Unit!156576)

(assert (=> d!1812850 (= lt!2287471 (choose!43616 Nil!63458 (h!69906 s!2326) (t!376912 s!2326) s!2326))))

(assert (=> d!1812850 (= (++!13979 Nil!63458 (Cons!63458 (h!69906 s!2326) (t!376912 s!2326))) s!2326)))

(assert (=> d!1812850 (= (lemmaMoveElementToOtherListKeepsConcatEq!2096 Nil!63458 (h!69906 s!2326) (t!376912 s!2326) s!2326) lt!2287471)))

(declare-fun bs!1347361 () Bool)

(assert (= bs!1347361 d!1812850))

(assert (=> bs!1347361 m!6701552))

(assert (=> bs!1347361 m!6701552))

(assert (=> bs!1347361 m!6701554))

(declare-fun m!6702136 () Bool)

(assert (=> bs!1347361 m!6702136))

(declare-fun m!6702138 () Bool)

(assert (=> bs!1347361 m!6702138))

(assert (=> b!5751685 d!1812850))

(declare-fun b!5752415 () Bool)

(declare-fun e!3535282 () Bool)

(assert (=> b!5752415 (= e!3535282 (matchR!7946 (regTwo!32034 r!7292) (t!376912 s!2326)))))

(declare-fun b!5752416 () Bool)

(declare-fun e!3535283 () Bool)

(declare-fun lt!2287473 () Option!15770)

(assert (=> b!5752416 (= e!3535283 (not (isDefined!12473 lt!2287473)))))

(declare-fun b!5752417 () Bool)

(declare-fun e!3535284 () Option!15770)

(declare-fun e!3535285 () Option!15770)

(assert (=> b!5752417 (= e!3535284 e!3535285)))

(declare-fun c!1016250 () Bool)

(assert (=> b!5752417 (= c!1016250 ((_ is Nil!63458) (t!376912 s!2326)))))

(declare-fun b!5752418 () Bool)

(declare-fun res!2428629 () Bool)

(declare-fun e!3535281 () Bool)

(assert (=> b!5752418 (=> (not res!2428629) (not e!3535281))))

(assert (=> b!5752418 (= res!2428629 (matchR!7946 (regOne!32034 r!7292) (_1!36161 (get!21893 lt!2287473))))))

(declare-fun b!5752419 () Bool)

(assert (=> b!5752419 (= e!3535285 None!15769)))

(declare-fun d!1812852 () Bool)

(assert (=> d!1812852 e!3535283))

(declare-fun res!2428628 () Bool)

(assert (=> d!1812852 (=> res!2428628 e!3535283)))

(assert (=> d!1812852 (= res!2428628 e!3535281)))

(declare-fun res!2428626 () Bool)

(assert (=> d!1812852 (=> (not res!2428626) (not e!3535281))))

(assert (=> d!1812852 (= res!2428626 (isDefined!12473 lt!2287473))))

(assert (=> d!1812852 (= lt!2287473 e!3535284)))

(declare-fun c!1016249 () Bool)

(assert (=> d!1812852 (= c!1016249 e!3535282)))

(declare-fun res!2428625 () Bool)

(assert (=> d!1812852 (=> (not res!2428625) (not e!3535282))))

(assert (=> d!1812852 (= res!2428625 (matchR!7946 (regOne!32034 r!7292) (++!13979 Nil!63458 (Cons!63458 (h!69906 s!2326) Nil!63458))))))

(assert (=> d!1812852 (validRegex!7497 (regOne!32034 r!7292))))

(assert (=> d!1812852 (= (findConcatSeparation!2184 (regOne!32034 r!7292) (regTwo!32034 r!7292) (++!13979 Nil!63458 (Cons!63458 (h!69906 s!2326) Nil!63458)) (t!376912 s!2326) s!2326) lt!2287473)))

(declare-fun b!5752420 () Bool)

(declare-fun lt!2287474 () Unit!156576)

(declare-fun lt!2287472 () Unit!156576)

(assert (=> b!5752420 (= lt!2287474 lt!2287472)))

(assert (=> b!5752420 (= (++!13979 (++!13979 (++!13979 Nil!63458 (Cons!63458 (h!69906 s!2326) Nil!63458)) (Cons!63458 (h!69906 (t!376912 s!2326)) Nil!63458)) (t!376912 (t!376912 s!2326))) s!2326)))

(assert (=> b!5752420 (= lt!2287472 (lemmaMoveElementToOtherListKeepsConcatEq!2096 (++!13979 Nil!63458 (Cons!63458 (h!69906 s!2326) Nil!63458)) (h!69906 (t!376912 s!2326)) (t!376912 (t!376912 s!2326)) s!2326))))

(assert (=> b!5752420 (= e!3535285 (findConcatSeparation!2184 (regOne!32034 r!7292) (regTwo!32034 r!7292) (++!13979 (++!13979 Nil!63458 (Cons!63458 (h!69906 s!2326) Nil!63458)) (Cons!63458 (h!69906 (t!376912 s!2326)) Nil!63458)) (t!376912 (t!376912 s!2326)) s!2326))))

(declare-fun b!5752421 () Bool)

(assert (=> b!5752421 (= e!3535281 (= (++!13979 (_1!36161 (get!21893 lt!2287473)) (_2!36161 (get!21893 lt!2287473))) s!2326))))

(declare-fun b!5752422 () Bool)

(assert (=> b!5752422 (= e!3535284 (Some!15769 (tuple2!65717 (++!13979 Nil!63458 (Cons!63458 (h!69906 s!2326) Nil!63458)) (t!376912 s!2326))))))

(declare-fun b!5752423 () Bool)

(declare-fun res!2428627 () Bool)

(assert (=> b!5752423 (=> (not res!2428627) (not e!3535281))))

(assert (=> b!5752423 (= res!2428627 (matchR!7946 (regTwo!32034 r!7292) (_2!36161 (get!21893 lt!2287473))))))

(assert (= (and d!1812852 res!2428625) b!5752415))

(assert (= (and d!1812852 c!1016249) b!5752422))

(assert (= (and d!1812852 (not c!1016249)) b!5752417))

(assert (= (and b!5752417 c!1016250) b!5752419))

(assert (= (and b!5752417 (not c!1016250)) b!5752420))

(assert (= (and d!1812852 res!2428626) b!5752418))

(assert (= (and b!5752418 res!2428629) b!5752423))

(assert (= (and b!5752423 res!2428627) b!5752421))

(assert (= (and d!1812852 (not res!2428628)) b!5752416))

(declare-fun m!6702140 () Bool)

(assert (=> b!5752421 m!6702140))

(declare-fun m!6702142 () Bool)

(assert (=> b!5752421 m!6702142))

(assert (=> b!5752420 m!6701552))

(declare-fun m!6702144 () Bool)

(assert (=> b!5752420 m!6702144))

(assert (=> b!5752420 m!6702144))

(declare-fun m!6702146 () Bool)

(assert (=> b!5752420 m!6702146))

(assert (=> b!5752420 m!6701552))

(declare-fun m!6702148 () Bool)

(assert (=> b!5752420 m!6702148))

(assert (=> b!5752420 m!6702144))

(declare-fun m!6702150 () Bool)

(assert (=> b!5752420 m!6702150))

(assert (=> b!5752418 m!6702140))

(declare-fun m!6702152 () Bool)

(assert (=> b!5752418 m!6702152))

(assert (=> b!5752423 m!6702140))

(declare-fun m!6702154 () Bool)

(assert (=> b!5752423 m!6702154))

(declare-fun m!6702156 () Bool)

(assert (=> b!5752416 m!6702156))

(assert (=> d!1812852 m!6702156))

(assert (=> d!1812852 m!6701552))

(declare-fun m!6702158 () Bool)

(assert (=> d!1812852 m!6702158))

(assert (=> d!1812852 m!6701568))

(declare-fun m!6702160 () Bool)

(assert (=> b!5752415 m!6702160))

(assert (=> b!5751685 d!1812852))

(declare-fun d!1812854 () Bool)

(assert (=> d!1812854 (= (head!12167 (exprs!5645 (h!69908 zl!343))) (h!69907 (exprs!5645 (h!69908 zl!343))))))

(assert (=> b!5751655 d!1812854))

(declare-fun bs!1347362 () Bool)

(declare-fun d!1812856 () Bool)

(assert (= bs!1347362 (and d!1812856 d!1812772)))

(declare-fun lambda!312147 () Int)

(assert (=> bs!1347362 (= lambda!312147 lambda!312139)))

(declare-fun bs!1347363 () Bool)

(assert (= bs!1347363 (and d!1812856 d!1812606)))

(assert (=> bs!1347363 (= lambda!312147 lambda!312098)))

(declare-fun bs!1347364 () Bool)

(assert (= bs!1347364 (and d!1812856 d!1812600)))

(assert (=> bs!1347364 (= lambda!312147 lambda!312091)))

(declare-fun bs!1347365 () Bool)

(assert (= bs!1347365 (and d!1812856 d!1812708)))

(assert (=> bs!1347365 (= lambda!312147 lambda!312135)))

(declare-fun bs!1347366 () Bool)

(assert (= bs!1347366 (and d!1812856 d!1812602)))

(assert (=> bs!1347366 (= lambda!312147 lambda!312094)))

(declare-fun bs!1347367 () Bool)

(assert (= bs!1347367 (and d!1812856 d!1812782)))

(assert (=> bs!1347367 (= lambda!312147 lambda!312141)))

(declare-fun bs!1347368 () Bool)

(assert (= bs!1347368 (and d!1812856 d!1812616)))

(assert (=> bs!1347368 (= lambda!312147 lambda!312104)))

(declare-fun bs!1347369 () Bool)

(assert (= bs!1347369 (and d!1812856 d!1812604)))

(assert (=> bs!1347369 (= lambda!312147 lambda!312097)))

(declare-fun b!5752424 () Bool)

(declare-fun e!3535290 () Regex!15761)

(declare-fun e!3535289 () Regex!15761)

(assert (=> b!5752424 (= e!3535290 e!3535289)))

(declare-fun c!1016252 () Bool)

(assert (=> b!5752424 (= c!1016252 ((_ is Cons!63459) (t!376913 (unfocusZipperList!1189 zl!343))))))

(declare-fun b!5752425 () Bool)

(declare-fun e!3535287 () Bool)

(declare-fun lt!2287475 () Regex!15761)

(assert (=> b!5752425 (= e!3535287 (isUnion!691 lt!2287475))))

(declare-fun b!5752426 () Bool)

(assert (=> b!5752426 (= e!3535290 (h!69907 (t!376913 (unfocusZipperList!1189 zl!343))))))

(declare-fun e!3535286 () Bool)

(assert (=> d!1812856 e!3535286))

(declare-fun res!2428631 () Bool)

(assert (=> d!1812856 (=> (not res!2428631) (not e!3535286))))

(assert (=> d!1812856 (= res!2428631 (validRegex!7497 lt!2287475))))

(assert (=> d!1812856 (= lt!2287475 e!3535290)))

(declare-fun c!1016254 () Bool)

(declare-fun e!3535288 () Bool)

(assert (=> d!1812856 (= c!1016254 e!3535288)))

(declare-fun res!2428630 () Bool)

(assert (=> d!1812856 (=> (not res!2428630) (not e!3535288))))

(assert (=> d!1812856 (= res!2428630 ((_ is Cons!63459) (t!376913 (unfocusZipperList!1189 zl!343))))))

(assert (=> d!1812856 (forall!14881 (t!376913 (unfocusZipperList!1189 zl!343)) lambda!312147)))

(assert (=> d!1812856 (= (generalisedUnion!1624 (t!376913 (unfocusZipperList!1189 zl!343))) lt!2287475)))

(declare-fun b!5752427 () Bool)

(declare-fun e!3535291 () Bool)

(assert (=> b!5752427 (= e!3535286 e!3535291)))

(declare-fun c!1016253 () Bool)

(assert (=> b!5752427 (= c!1016253 (isEmpty!35342 (t!376913 (unfocusZipperList!1189 zl!343))))))

(declare-fun b!5752428 () Bool)

(assert (=> b!5752428 (= e!3535287 (= lt!2287475 (head!12167 (t!376913 (unfocusZipperList!1189 zl!343)))))))

(declare-fun b!5752429 () Bool)

(assert (=> b!5752429 (= e!3535291 e!3535287)))

(declare-fun c!1016251 () Bool)

(assert (=> b!5752429 (= c!1016251 (isEmpty!35342 (tail!11262 (t!376913 (unfocusZipperList!1189 zl!343)))))))

(declare-fun b!5752430 () Bool)

(assert (=> b!5752430 (= e!3535291 (isEmptyLang!1261 lt!2287475))))

(declare-fun b!5752431 () Bool)

(assert (=> b!5752431 (= e!3535289 EmptyLang!15761)))

(declare-fun b!5752432 () Bool)

(assert (=> b!5752432 (= e!3535288 (isEmpty!35342 (t!376913 (t!376913 (unfocusZipperList!1189 zl!343)))))))

(declare-fun b!5752433 () Bool)

(assert (=> b!5752433 (= e!3535289 (Union!15761 (h!69907 (t!376913 (unfocusZipperList!1189 zl!343))) (generalisedUnion!1624 (t!376913 (t!376913 (unfocusZipperList!1189 zl!343))))))))

(assert (= (and d!1812856 res!2428630) b!5752432))

(assert (= (and d!1812856 c!1016254) b!5752426))

(assert (= (and d!1812856 (not c!1016254)) b!5752424))

(assert (= (and b!5752424 c!1016252) b!5752433))

(assert (= (and b!5752424 (not c!1016252)) b!5752431))

(assert (= (and d!1812856 res!2428631) b!5752427))

(assert (= (and b!5752427 c!1016253) b!5752430))

(assert (= (and b!5752427 (not c!1016253)) b!5752429))

(assert (= (and b!5752429 c!1016251) b!5752428))

(assert (= (and b!5752429 (not c!1016251)) b!5752425))

(declare-fun m!6702162 () Bool)

(assert (=> b!5752428 m!6702162))

(declare-fun m!6702164 () Bool)

(assert (=> b!5752429 m!6702164))

(assert (=> b!5752429 m!6702164))

(declare-fun m!6702166 () Bool)

(assert (=> b!5752429 m!6702166))

(declare-fun m!6702168 () Bool)

(assert (=> b!5752432 m!6702168))

(declare-fun m!6702170 () Bool)

(assert (=> d!1812856 m!6702170))

(declare-fun m!6702172 () Bool)

(assert (=> d!1812856 m!6702172))

(declare-fun m!6702174 () Bool)

(assert (=> b!5752430 m!6702174))

(declare-fun m!6702176 () Bool)

(assert (=> b!5752433 m!6702176))

(declare-fun m!6702178 () Bool)

(assert (=> b!5752425 m!6702178))

(assert (=> b!5752427 m!6701498))

(assert (=> b!5751608 d!1812856))

(declare-fun b!5752434 () Bool)

(declare-fun res!2428634 () Bool)

(declare-fun e!3535293 () Bool)

(assert (=> b!5752434 (=> (not res!2428634) (not e!3535293))))

(declare-fun call!441012 () Bool)

(assert (=> b!5752434 (= res!2428634 call!441012)))

(declare-fun e!3535296 () Bool)

(assert (=> b!5752434 (= e!3535296 e!3535293)))

(declare-fun b!5752435 () Bool)

(declare-fun call!441013 () Bool)

(assert (=> b!5752435 (= e!3535293 call!441013)))

(declare-fun b!5752436 () Bool)

(declare-fun e!3535295 () Bool)

(assert (=> b!5752436 (= e!3535295 call!441013)))

(declare-fun bm!441006 () Bool)

(declare-fun call!441011 () Bool)

(declare-fun c!1016255 () Bool)

(declare-fun c!1016256 () Bool)

(assert (=> bm!441006 (= call!441011 (validRegex!7497 (ite c!1016255 (reg!16090 lt!2287412) (ite c!1016256 (regTwo!32035 lt!2287412) (regTwo!32034 lt!2287412)))))))

(declare-fun b!5752437 () Bool)

(declare-fun e!3535298 () Bool)

(assert (=> b!5752437 (= e!3535298 call!441011)))

(declare-fun b!5752438 () Bool)

(declare-fun e!3535292 () Bool)

(assert (=> b!5752438 (= e!3535292 e!3535298)))

(declare-fun res!2428632 () Bool)

(assert (=> b!5752438 (= res!2428632 (not (nullable!5793 (reg!16090 lt!2287412))))))

(assert (=> b!5752438 (=> (not res!2428632) (not e!3535298))))

(declare-fun b!5752439 () Bool)

(declare-fun e!3535297 () Bool)

(assert (=> b!5752439 (= e!3535297 e!3535295)))

(declare-fun res!2428633 () Bool)

(assert (=> b!5752439 (=> (not res!2428633) (not e!3535295))))

(assert (=> b!5752439 (= res!2428633 call!441012)))

(declare-fun bm!441007 () Bool)

(assert (=> bm!441007 (= call!441012 (validRegex!7497 (ite c!1016256 (regOne!32035 lt!2287412) (regOne!32034 lt!2287412))))))

(declare-fun bm!441008 () Bool)

(assert (=> bm!441008 (= call!441013 call!441011)))

(declare-fun b!5752441 () Bool)

(declare-fun e!3535294 () Bool)

(assert (=> b!5752441 (= e!3535294 e!3535292)))

(assert (=> b!5752441 (= c!1016255 ((_ is Star!15761) lt!2287412))))

(declare-fun b!5752442 () Bool)

(declare-fun res!2428635 () Bool)

(assert (=> b!5752442 (=> res!2428635 e!3535297)))

(assert (=> b!5752442 (= res!2428635 (not ((_ is Concat!24606) lt!2287412)))))

(assert (=> b!5752442 (= e!3535296 e!3535297)))

(declare-fun d!1812858 () Bool)

(declare-fun res!2428636 () Bool)

(assert (=> d!1812858 (=> res!2428636 e!3535294)))

(assert (=> d!1812858 (= res!2428636 ((_ is ElementMatch!15761) lt!2287412))))

(assert (=> d!1812858 (= (validRegex!7497 lt!2287412) e!3535294)))

(declare-fun b!5752440 () Bool)

(assert (=> b!5752440 (= e!3535292 e!3535296)))

(assert (=> b!5752440 (= c!1016256 ((_ is Union!15761) lt!2287412))))

(assert (= (and d!1812858 (not res!2428636)) b!5752441))

(assert (= (and b!5752441 c!1016255) b!5752438))

(assert (= (and b!5752441 (not c!1016255)) b!5752440))

(assert (= (and b!5752438 res!2428632) b!5752437))

(assert (= (and b!5752440 c!1016256) b!5752434))

(assert (= (and b!5752440 (not c!1016256)) b!5752442))

(assert (= (and b!5752434 res!2428634) b!5752435))

(assert (= (and b!5752442 (not res!2428635)) b!5752439))

(assert (= (and b!5752439 res!2428633) b!5752436))

(assert (= (or b!5752435 b!5752436) bm!441008))

(assert (= (or b!5752434 b!5752439) bm!441007))

(assert (= (or b!5752437 bm!441008) bm!441006))

(declare-fun m!6702180 () Bool)

(assert (=> bm!441006 m!6702180))

(declare-fun m!6702182 () Bool)

(assert (=> b!5752438 m!6702182))

(declare-fun m!6702184 () Bool)

(assert (=> bm!441007 m!6702184))

(assert (=> d!1812660 d!1812858))

(assert (=> d!1812660 d!1812602))

(assert (=> d!1812660 d!1812604))

(declare-fun d!1812860 () Bool)

(assert (=> d!1812860 (= (nullable!5793 lt!2287295) (nullableFct!1838 lt!2287295))))

(declare-fun bs!1347370 () Bool)

(assert (= bs!1347370 d!1812860))

(declare-fun m!6702186 () Bool)

(assert (=> bs!1347370 m!6702186))

(assert (=> b!5752011 d!1812860))

(declare-fun bs!1347371 () Bool)

(declare-fun d!1812862 () Bool)

(assert (= bs!1347371 (and d!1812862 b!5751848)))

(declare-fun lambda!312148 () Int)

(assert (=> bs!1347371 (not (= lambda!312148 lambda!312131))))

(declare-fun bs!1347372 () Bool)

(assert (= bs!1347372 (and d!1812862 b!5751845)))

(assert (=> bs!1347372 (not (= lambda!312148 lambda!312129))))

(declare-fun bs!1347373 () Bool)

(assert (= bs!1347373 (and d!1812862 b!5751850)))

(assert (=> bs!1347373 (not (= lambda!312148 lambda!312132))))

(declare-fun bs!1347374 () Bool)

(assert (= bs!1347374 (and d!1812862 d!1812832)))

(assert (=> bs!1347374 (= lambda!312148 lambda!312146)))

(declare-fun bs!1347375 () Bool)

(assert (= bs!1347375 (and d!1812862 b!5751843)))

(assert (=> bs!1347375 (not (= lambda!312148 lambda!312128))))

(assert (=> d!1812862 (= (nullableZipper!1692 z!1189) (exists!2235 z!1189 lambda!312148))))

(declare-fun bs!1347376 () Bool)

(assert (= bs!1347376 d!1812862))

(declare-fun m!6702188 () Bool)

(assert (=> bs!1347376 m!6702188))

(assert (=> b!5751550 d!1812862))

(declare-fun d!1812864 () Bool)

(assert (=> d!1812864 (= (nullable!5793 r!7292) (nullableFct!1838 r!7292))))

(declare-fun bs!1347377 () Bool)

(assert (= bs!1347377 d!1812864))

(declare-fun m!6702190 () Bool)

(assert (=> bs!1347377 m!6702190))

(assert (=> b!5751827 d!1812864))

(declare-fun d!1812866 () Bool)

(declare-fun res!2428637 () Bool)

(declare-fun e!3535299 () Bool)

(assert (=> d!1812866 (=> res!2428637 e!3535299)))

(assert (=> d!1812866 (= res!2428637 ((_ is Nil!63460) lt!2287267))))

(assert (=> d!1812866 (= (forall!14882 lt!2287267 lambda!312132) e!3535299)))

(declare-fun b!5752443 () Bool)

(declare-fun e!3535300 () Bool)

(assert (=> b!5752443 (= e!3535299 e!3535300)))

(declare-fun res!2428638 () Bool)

(assert (=> b!5752443 (=> (not res!2428638) (not e!3535300))))

(assert (=> b!5752443 (= res!2428638 (dynLambda!24838 lambda!312132 (h!69908 lt!2287267)))))

(declare-fun b!5752444 () Bool)

(assert (=> b!5752444 (= e!3535300 (forall!14882 (t!376914 lt!2287267) lambda!312132))))

(assert (= (and d!1812866 (not res!2428637)) b!5752443))

(assert (= (and b!5752443 res!2428638) b!5752444))

(declare-fun b_lambda!217273 () Bool)

(assert (=> (not b_lambda!217273) (not b!5752443)))

(declare-fun m!6702192 () Bool)

(assert (=> b!5752443 m!6702192))

(declare-fun m!6702194 () Bool)

(assert (=> b!5752444 m!6702194))

(assert (=> b!5751850 d!1812866))

(declare-fun d!1812868 () Bool)

(assert (=> d!1812868 (= (nullable!5793 (h!69907 (exprs!5645 lt!2287277))) (nullableFct!1838 (h!69907 (exprs!5645 lt!2287277))))))

(declare-fun bs!1347378 () Bool)

(assert (= bs!1347378 d!1812868))

(declare-fun m!6702196 () Bool)

(assert (=> bs!1347378 m!6702196))

(assert (=> b!5751627 d!1812868))

(assert (=> d!1812688 d!1812686))

(declare-fun d!1812870 () Bool)

(assert (=> d!1812870 (= (flatMap!1374 lt!2287275 lambda!312041) (dynLambda!24837 lambda!312041 lt!2287270))))

(assert (=> d!1812870 true))

(declare-fun _$13!2440 () Unit!156576)

(assert (=> d!1812870 (= (choose!43608 lt!2287275 lt!2287270 lambda!312041) _$13!2440)))

(declare-fun b_lambda!217275 () Bool)

(assert (=> (not b_lambda!217275) (not d!1812870)))

(declare-fun bs!1347379 () Bool)

(assert (= bs!1347379 d!1812870))

(assert (=> bs!1347379 m!6701070))

(assert (=> bs!1347379 m!6701742))

(assert (=> d!1812688 d!1812870))

(declare-fun d!1812872 () Bool)

(assert (=> d!1812872 (= (maxBigInt!0 (ite c!1016120 call!440915 call!440914) (ite c!1016120 call!440914 call!440915)) (ite (>= (ite c!1016120 call!440915 call!440914) (ite c!1016120 call!440914 call!440915)) (ite c!1016120 call!440915 call!440914) (ite c!1016120 call!440914 call!440915)))))

(assert (=> bm!440908 d!1812872))

(declare-fun d!1812874 () Bool)

(assert (=> d!1812874 (= (nullable!5793 (h!69907 (exprs!5645 lt!2287270))) (nullableFct!1838 (h!69907 (exprs!5645 lt!2287270))))))

(declare-fun bs!1347380 () Bool)

(assert (= bs!1347380 d!1812874))

(declare-fun m!6702198 () Bool)

(assert (=> bs!1347380 m!6702198))

(assert (=> b!5751886 d!1812874))

(assert (=> d!1812716 d!1812712))

(assert (=> d!1812716 d!1812714))

(declare-fun d!1812876 () Bool)

(assert (=> d!1812876 (= (matchR!7946 lt!2287295 s!2326) (matchZipper!1899 lt!2287285 s!2326))))

(assert (=> d!1812876 true))

(declare-fun _$44!1447 () Unit!156576)

(assert (=> d!1812876 (= (choose!43615 lt!2287285 lt!2287267 lt!2287295 s!2326) _$44!1447)))

(declare-fun bs!1347381 () Bool)

(assert (= bs!1347381 d!1812876))

(assert (=> bs!1347381 m!6701042))

(assert (=> bs!1347381 m!6701044))

(assert (=> d!1812716 d!1812876))

(declare-fun b!5752446 () Bool)

(declare-fun res!2428641 () Bool)

(declare-fun e!3535302 () Bool)

(assert (=> b!5752446 (=> (not res!2428641) (not e!3535302))))

(declare-fun call!441015 () Bool)

(assert (=> b!5752446 (= res!2428641 call!441015)))

(declare-fun e!3535305 () Bool)

(assert (=> b!5752446 (= e!3535305 e!3535302)))

(declare-fun b!5752447 () Bool)

(declare-fun call!441016 () Bool)

(assert (=> b!5752447 (= e!3535302 call!441016)))

(declare-fun b!5752448 () Bool)

(declare-fun e!3535304 () Bool)

(assert (=> b!5752448 (= e!3535304 call!441016)))

(declare-fun call!441014 () Bool)

(declare-fun bm!441009 () Bool)

(declare-fun c!1016258 () Bool)

(declare-fun c!1016257 () Bool)

(assert (=> bm!441009 (= call!441014 (validRegex!7497 (ite c!1016257 (reg!16090 lt!2287295) (ite c!1016258 (regTwo!32035 lt!2287295) (regTwo!32034 lt!2287295)))))))

(declare-fun b!5752449 () Bool)

(declare-fun e!3535307 () Bool)

(assert (=> b!5752449 (= e!3535307 call!441014)))

(declare-fun b!5752450 () Bool)

(declare-fun e!3535301 () Bool)

(assert (=> b!5752450 (= e!3535301 e!3535307)))

(declare-fun res!2428639 () Bool)

(assert (=> b!5752450 (= res!2428639 (not (nullable!5793 (reg!16090 lt!2287295))))))

(assert (=> b!5752450 (=> (not res!2428639) (not e!3535307))))

(declare-fun b!5752451 () Bool)

(declare-fun e!3535306 () Bool)

(assert (=> b!5752451 (= e!3535306 e!3535304)))

(declare-fun res!2428640 () Bool)

(assert (=> b!5752451 (=> (not res!2428640) (not e!3535304))))

(assert (=> b!5752451 (= res!2428640 call!441015)))

(declare-fun bm!441010 () Bool)

(assert (=> bm!441010 (= call!441015 (validRegex!7497 (ite c!1016258 (regOne!32035 lt!2287295) (regOne!32034 lt!2287295))))))

(declare-fun bm!441011 () Bool)

(assert (=> bm!441011 (= call!441016 call!441014)))

(declare-fun b!5752453 () Bool)

(declare-fun e!3535303 () Bool)

(assert (=> b!5752453 (= e!3535303 e!3535301)))

(assert (=> b!5752453 (= c!1016257 ((_ is Star!15761) lt!2287295))))

(declare-fun b!5752454 () Bool)

(declare-fun res!2428642 () Bool)

(assert (=> b!5752454 (=> res!2428642 e!3535306)))

(assert (=> b!5752454 (= res!2428642 (not ((_ is Concat!24606) lt!2287295)))))

(assert (=> b!5752454 (= e!3535305 e!3535306)))

(declare-fun d!1812878 () Bool)

(declare-fun res!2428643 () Bool)

(assert (=> d!1812878 (=> res!2428643 e!3535303)))

(assert (=> d!1812878 (= res!2428643 ((_ is ElementMatch!15761) lt!2287295))))

(assert (=> d!1812878 (= (validRegex!7497 lt!2287295) e!3535303)))

(declare-fun b!5752452 () Bool)

(assert (=> b!5752452 (= e!3535301 e!3535305)))

(assert (=> b!5752452 (= c!1016258 ((_ is Union!15761) lt!2287295))))

(assert (= (and d!1812878 (not res!2428643)) b!5752453))

(assert (= (and b!5752453 c!1016257) b!5752450))

(assert (= (and b!5752453 (not c!1016257)) b!5752452))

(assert (= (and b!5752450 res!2428639) b!5752449))

(assert (= (and b!5752452 c!1016258) b!5752446))

(assert (= (and b!5752452 (not c!1016258)) b!5752454))

(assert (= (and b!5752446 res!2428641) b!5752447))

(assert (= (and b!5752454 (not res!2428642)) b!5752451))

(assert (= (and b!5752451 res!2428640) b!5752448))

(assert (= (or b!5752447 b!5752448) bm!441011))

(assert (= (or b!5752446 b!5752451) bm!441010))

(assert (= (or b!5752449 bm!441011) bm!441009))

(declare-fun m!6702200 () Bool)

(assert (=> bm!441009 m!6702200))

(declare-fun m!6702202 () Bool)

(assert (=> b!5752450 m!6702202))

(declare-fun m!6702204 () Bool)

(assert (=> bm!441010 m!6702204))

(assert (=> d!1812716 d!1812878))

(declare-fun bs!1347382 () Bool)

(declare-fun d!1812880 () Bool)

(assert (= bs!1347382 (and d!1812880 b!5751848)))

(declare-fun lambda!312149 () Int)

(assert (=> bs!1347382 (not (= lambda!312149 lambda!312131))))

(declare-fun bs!1347383 () Bool)

(assert (= bs!1347383 (and d!1812880 d!1812862)))

(assert (=> bs!1347383 (= lambda!312149 lambda!312148)))

(declare-fun bs!1347384 () Bool)

(assert (= bs!1347384 (and d!1812880 b!5751845)))

(assert (=> bs!1347384 (not (= lambda!312149 lambda!312129))))

(declare-fun bs!1347385 () Bool)

(assert (= bs!1347385 (and d!1812880 b!5751850)))

(assert (=> bs!1347385 (not (= lambda!312149 lambda!312132))))

(declare-fun bs!1347386 () Bool)

(assert (= bs!1347386 (and d!1812880 d!1812832)))

(assert (=> bs!1347386 (= lambda!312149 lambda!312146)))

(declare-fun bs!1347387 () Bool)

(assert (= bs!1347387 (and d!1812880 b!5751843)))

(assert (=> bs!1347387 (not (= lambda!312149 lambda!312128))))

(assert (=> d!1812880 (= (nullableZipper!1692 lt!2287286) (exists!2235 lt!2287286 lambda!312149))))

(declare-fun bs!1347388 () Bool)

(assert (= bs!1347388 d!1812880))

(declare-fun m!6702206 () Bool)

(assert (=> bs!1347388 m!6702206))

(assert (=> b!5751703 d!1812880))

(assert (=> b!5751660 d!1812598))

(assert (=> bs!1347294 d!1812698))

(declare-fun d!1812882 () Bool)

(assert (=> d!1812882 (= (nullable!5793 (h!69907 (exprs!5645 lt!2287263))) (nullableFct!1838 (h!69907 (exprs!5645 lt!2287263))))))

(declare-fun bs!1347389 () Bool)

(assert (= bs!1347389 d!1812882))

(declare-fun m!6702208 () Bool)

(assert (=> bs!1347389 m!6702208))

(assert (=> b!5751881 d!1812882))

(declare-fun b!5752455 () Bool)

(declare-fun res!2428646 () Bool)

(declare-fun e!3535309 () Bool)

(assert (=> b!5752455 (=> (not res!2428646) (not e!3535309))))

(declare-fun call!441018 () Bool)

(assert (=> b!5752455 (= res!2428646 call!441018)))

(declare-fun e!3535312 () Bool)

(assert (=> b!5752455 (= e!3535312 e!3535309)))

(declare-fun b!5752456 () Bool)

(declare-fun call!441019 () Bool)

(assert (=> b!5752456 (= e!3535309 call!441019)))

(declare-fun b!5752457 () Bool)

(declare-fun e!3535311 () Bool)

(assert (=> b!5752457 (= e!3535311 call!441019)))

(declare-fun bm!441012 () Bool)

(declare-fun c!1016260 () Bool)

(declare-fun call!441017 () Bool)

(declare-fun c!1016259 () Bool)

(assert (=> bm!441012 (= call!441017 (validRegex!7497 (ite c!1016259 (reg!16090 lt!2287437) (ite c!1016260 (regTwo!32035 lt!2287437) (regTwo!32034 lt!2287437)))))))

(declare-fun b!5752458 () Bool)

(declare-fun e!3535314 () Bool)

(assert (=> b!5752458 (= e!3535314 call!441017)))

(declare-fun b!5752459 () Bool)

(declare-fun e!3535308 () Bool)

(assert (=> b!5752459 (= e!3535308 e!3535314)))

(declare-fun res!2428644 () Bool)

(assert (=> b!5752459 (= res!2428644 (not (nullable!5793 (reg!16090 lt!2287437))))))

(assert (=> b!5752459 (=> (not res!2428644) (not e!3535314))))

(declare-fun b!5752460 () Bool)

(declare-fun e!3535313 () Bool)

(assert (=> b!5752460 (= e!3535313 e!3535311)))

(declare-fun res!2428645 () Bool)

(assert (=> b!5752460 (=> (not res!2428645) (not e!3535311))))

(assert (=> b!5752460 (= res!2428645 call!441018)))

(declare-fun bm!441013 () Bool)

(assert (=> bm!441013 (= call!441018 (validRegex!7497 (ite c!1016260 (regOne!32035 lt!2287437) (regOne!32034 lt!2287437))))))

(declare-fun bm!441014 () Bool)

(assert (=> bm!441014 (= call!441019 call!441017)))

(declare-fun b!5752462 () Bool)

(declare-fun e!3535310 () Bool)

(assert (=> b!5752462 (= e!3535310 e!3535308)))

(assert (=> b!5752462 (= c!1016259 ((_ is Star!15761) lt!2287437))))

(declare-fun b!5752463 () Bool)

(declare-fun res!2428647 () Bool)

(assert (=> b!5752463 (=> res!2428647 e!3535313)))

(assert (=> b!5752463 (= res!2428647 (not ((_ is Concat!24606) lt!2287437)))))

(assert (=> b!5752463 (= e!3535312 e!3535313)))

(declare-fun d!1812884 () Bool)

(declare-fun res!2428648 () Bool)

(assert (=> d!1812884 (=> res!2428648 e!3535310)))

(assert (=> d!1812884 (= res!2428648 ((_ is ElementMatch!15761) lt!2287437))))

(assert (=> d!1812884 (= (validRegex!7497 lt!2287437) e!3535310)))

(declare-fun b!5752461 () Bool)

(assert (=> b!5752461 (= e!3535308 e!3535312)))

(assert (=> b!5752461 (= c!1016260 ((_ is Union!15761) lt!2287437))))

(assert (= (and d!1812884 (not res!2428648)) b!5752462))

(assert (= (and b!5752462 c!1016259) b!5752459))

(assert (= (and b!5752462 (not c!1016259)) b!5752461))

(assert (= (and b!5752459 res!2428644) b!5752458))

(assert (= (and b!5752461 c!1016260) b!5752455))

(assert (= (and b!5752461 (not c!1016260)) b!5752463))

(assert (= (and b!5752455 res!2428646) b!5752456))

(assert (= (and b!5752463 (not res!2428647)) b!5752460))

(assert (= (and b!5752460 res!2428645) b!5752457))

(assert (= (or b!5752456 b!5752457) bm!441014))

(assert (= (or b!5752455 b!5752460) bm!441013))

(assert (= (or b!5752458 bm!441014) bm!441012))

(declare-fun m!6702210 () Bool)

(assert (=> bm!441012 m!6702210))

(declare-fun m!6702212 () Bool)

(assert (=> b!5752459 m!6702212))

(declare-fun m!6702214 () Bool)

(assert (=> bm!441013 m!6702214))

(assert (=> d!1812678 d!1812884))

(declare-fun bs!1347390 () Bool)

(declare-fun d!1812886 () Bool)

(assert (= bs!1347390 (and d!1812886 d!1812772)))

(declare-fun lambda!312150 () Int)

(assert (=> bs!1347390 (= lambda!312150 lambda!312139)))

(declare-fun bs!1347391 () Bool)

(assert (= bs!1347391 (and d!1812886 d!1812606)))

(assert (=> bs!1347391 (= lambda!312150 lambda!312098)))

(declare-fun bs!1347392 () Bool)

(assert (= bs!1347392 (and d!1812886 d!1812600)))

(assert (=> bs!1347392 (= lambda!312150 lambda!312091)))

(declare-fun bs!1347393 () Bool)

(assert (= bs!1347393 (and d!1812886 d!1812856)))

(assert (=> bs!1347393 (= lambda!312150 lambda!312147)))

(declare-fun bs!1347394 () Bool)

(assert (= bs!1347394 (and d!1812886 d!1812708)))

(assert (=> bs!1347394 (= lambda!312150 lambda!312135)))

(declare-fun bs!1347395 () Bool)

(assert (= bs!1347395 (and d!1812886 d!1812602)))

(assert (=> bs!1347395 (= lambda!312150 lambda!312094)))

(declare-fun bs!1347396 () Bool)

(assert (= bs!1347396 (and d!1812886 d!1812782)))

(assert (=> bs!1347396 (= lambda!312150 lambda!312141)))

(declare-fun bs!1347397 () Bool)

(assert (= bs!1347397 (and d!1812886 d!1812616)))

(assert (=> bs!1347397 (= lambda!312150 lambda!312104)))

(declare-fun bs!1347398 () Bool)

(assert (= bs!1347398 (and d!1812886 d!1812604)))

(assert (=> bs!1347398 (= lambda!312150 lambda!312097)))

(declare-fun b!5752464 () Bool)

(declare-fun e!3535319 () Regex!15761)

(declare-fun e!3535318 () Regex!15761)

(assert (=> b!5752464 (= e!3535319 e!3535318)))

(declare-fun c!1016262 () Bool)

(assert (=> b!5752464 (= c!1016262 ((_ is Cons!63459) (unfocusZipperList!1189 (Cons!63460 lt!2287263 Nil!63460))))))

(declare-fun b!5752465 () Bool)

(declare-fun e!3535316 () Bool)

(declare-fun lt!2287476 () Regex!15761)

(assert (=> b!5752465 (= e!3535316 (isUnion!691 lt!2287476))))

(declare-fun b!5752466 () Bool)

(assert (=> b!5752466 (= e!3535319 (h!69907 (unfocusZipperList!1189 (Cons!63460 lt!2287263 Nil!63460))))))

(declare-fun e!3535315 () Bool)

(assert (=> d!1812886 e!3535315))

(declare-fun res!2428650 () Bool)

(assert (=> d!1812886 (=> (not res!2428650) (not e!3535315))))

(assert (=> d!1812886 (= res!2428650 (validRegex!7497 lt!2287476))))

(assert (=> d!1812886 (= lt!2287476 e!3535319)))

(declare-fun c!1016264 () Bool)

(declare-fun e!3535317 () Bool)

(assert (=> d!1812886 (= c!1016264 e!3535317)))

(declare-fun res!2428649 () Bool)

(assert (=> d!1812886 (=> (not res!2428649) (not e!3535317))))

(assert (=> d!1812886 (= res!2428649 ((_ is Cons!63459) (unfocusZipperList!1189 (Cons!63460 lt!2287263 Nil!63460))))))

(assert (=> d!1812886 (forall!14881 (unfocusZipperList!1189 (Cons!63460 lt!2287263 Nil!63460)) lambda!312150)))

(assert (=> d!1812886 (= (generalisedUnion!1624 (unfocusZipperList!1189 (Cons!63460 lt!2287263 Nil!63460))) lt!2287476)))

(declare-fun b!5752467 () Bool)

(declare-fun e!3535320 () Bool)

(assert (=> b!5752467 (= e!3535315 e!3535320)))

(declare-fun c!1016263 () Bool)

(assert (=> b!5752467 (= c!1016263 (isEmpty!35342 (unfocusZipperList!1189 (Cons!63460 lt!2287263 Nil!63460))))))

(declare-fun b!5752468 () Bool)

(assert (=> b!5752468 (= e!3535316 (= lt!2287476 (head!12167 (unfocusZipperList!1189 (Cons!63460 lt!2287263 Nil!63460)))))))

(declare-fun b!5752469 () Bool)

(assert (=> b!5752469 (= e!3535320 e!3535316)))

(declare-fun c!1016261 () Bool)

(assert (=> b!5752469 (= c!1016261 (isEmpty!35342 (tail!11262 (unfocusZipperList!1189 (Cons!63460 lt!2287263 Nil!63460)))))))

(declare-fun b!5752470 () Bool)

(assert (=> b!5752470 (= e!3535320 (isEmptyLang!1261 lt!2287476))))

(declare-fun b!5752471 () Bool)

(assert (=> b!5752471 (= e!3535318 EmptyLang!15761)))

(declare-fun b!5752472 () Bool)

(assert (=> b!5752472 (= e!3535317 (isEmpty!35342 (t!376913 (unfocusZipperList!1189 (Cons!63460 lt!2287263 Nil!63460)))))))

(declare-fun b!5752473 () Bool)

(assert (=> b!5752473 (= e!3535318 (Union!15761 (h!69907 (unfocusZipperList!1189 (Cons!63460 lt!2287263 Nil!63460))) (generalisedUnion!1624 (t!376913 (unfocusZipperList!1189 (Cons!63460 lt!2287263 Nil!63460))))))))

(assert (= (and d!1812886 res!2428649) b!5752472))

(assert (= (and d!1812886 c!1016264) b!5752466))

(assert (= (and d!1812886 (not c!1016264)) b!5752464))

(assert (= (and b!5752464 c!1016262) b!5752473))

(assert (= (and b!5752464 (not c!1016262)) b!5752471))

(assert (= (and d!1812886 res!2428650) b!5752467))

(assert (= (and b!5752467 c!1016263) b!5752470))

(assert (= (and b!5752467 (not c!1016263)) b!5752469))

(assert (= (and b!5752469 c!1016261) b!5752468))

(assert (= (and b!5752469 (not c!1016261)) b!5752465))

(assert (=> b!5752468 m!6701720))

(declare-fun m!6702216 () Bool)

(assert (=> b!5752468 m!6702216))

(assert (=> b!5752469 m!6701720))

(declare-fun m!6702218 () Bool)

(assert (=> b!5752469 m!6702218))

(assert (=> b!5752469 m!6702218))

(declare-fun m!6702220 () Bool)

(assert (=> b!5752469 m!6702220))

(declare-fun m!6702222 () Bool)

(assert (=> b!5752472 m!6702222))

(declare-fun m!6702224 () Bool)

(assert (=> d!1812886 m!6702224))

(assert (=> d!1812886 m!6701720))

(declare-fun m!6702226 () Bool)

(assert (=> d!1812886 m!6702226))

(declare-fun m!6702228 () Bool)

(assert (=> b!5752470 m!6702228))

(declare-fun m!6702230 () Bool)

(assert (=> b!5752473 m!6702230))

(declare-fun m!6702232 () Bool)

(assert (=> b!5752465 m!6702232))

(assert (=> b!5752467 m!6701720))

(declare-fun m!6702234 () Bool)

(assert (=> b!5752467 m!6702234))

(assert (=> d!1812678 d!1812886))

(declare-fun bs!1347399 () Bool)

(declare-fun d!1812888 () Bool)

(assert (= bs!1347399 (and d!1812888 d!1812772)))

(declare-fun lambda!312151 () Int)

(assert (=> bs!1347399 (= lambda!312151 lambda!312139)))

(declare-fun bs!1347400 () Bool)

(assert (= bs!1347400 (and d!1812888 d!1812606)))

(assert (=> bs!1347400 (= lambda!312151 lambda!312098)))

(declare-fun bs!1347401 () Bool)

(assert (= bs!1347401 (and d!1812888 d!1812856)))

(assert (=> bs!1347401 (= lambda!312151 lambda!312147)))

(declare-fun bs!1347402 () Bool)

(assert (= bs!1347402 (and d!1812888 d!1812708)))

(assert (=> bs!1347402 (= lambda!312151 lambda!312135)))

(declare-fun bs!1347403 () Bool)

(assert (= bs!1347403 (and d!1812888 d!1812602)))

(assert (=> bs!1347403 (= lambda!312151 lambda!312094)))

(declare-fun bs!1347404 () Bool)

(assert (= bs!1347404 (and d!1812888 d!1812782)))

(assert (=> bs!1347404 (= lambda!312151 lambda!312141)))

(declare-fun bs!1347405 () Bool)

(assert (= bs!1347405 (and d!1812888 d!1812616)))

(assert (=> bs!1347405 (= lambda!312151 lambda!312104)))

(declare-fun bs!1347406 () Bool)

(assert (= bs!1347406 (and d!1812888 d!1812604)))

(assert (=> bs!1347406 (= lambda!312151 lambda!312097)))

(declare-fun bs!1347407 () Bool)

(assert (= bs!1347407 (and d!1812888 d!1812600)))

(assert (=> bs!1347407 (= lambda!312151 lambda!312091)))

(declare-fun bs!1347408 () Bool)

(assert (= bs!1347408 (and d!1812888 d!1812886)))

(assert (=> bs!1347408 (= lambda!312151 lambda!312150)))

(declare-fun lt!2287477 () List!63583)

(assert (=> d!1812888 (forall!14881 lt!2287477 lambda!312151)))

(declare-fun e!3535321 () List!63583)

(assert (=> d!1812888 (= lt!2287477 e!3535321)))

(declare-fun c!1016265 () Bool)

(assert (=> d!1812888 (= c!1016265 ((_ is Cons!63460) (Cons!63460 lt!2287263 Nil!63460)))))

(assert (=> d!1812888 (= (unfocusZipperList!1189 (Cons!63460 lt!2287263 Nil!63460)) lt!2287477)))

(declare-fun b!5752474 () Bool)

(assert (=> b!5752474 (= e!3535321 (Cons!63459 (generalisedConcat!1376 (exprs!5645 (h!69908 (Cons!63460 lt!2287263 Nil!63460)))) (unfocusZipperList!1189 (t!376914 (Cons!63460 lt!2287263 Nil!63460)))))))

(declare-fun b!5752475 () Bool)

(assert (=> b!5752475 (= e!3535321 Nil!63459)))

(assert (= (and d!1812888 c!1016265) b!5752474))

(assert (= (and d!1812888 (not c!1016265)) b!5752475))

(declare-fun m!6702236 () Bool)

(assert (=> d!1812888 m!6702236))

(declare-fun m!6702238 () Bool)

(assert (=> b!5752474 m!6702238))

(declare-fun m!6702240 () Bool)

(assert (=> b!5752474 m!6702240))

(assert (=> d!1812678 d!1812888))

(declare-fun d!1812890 () Bool)

(declare-fun res!2428651 () Bool)

(declare-fun e!3535322 () Bool)

(assert (=> d!1812890 (=> res!2428651 e!3535322)))

(assert (=> d!1812890 (= res!2428651 ((_ is Nil!63459) (exprs!5645 (h!69908 zl!343))))))

(assert (=> d!1812890 (= (forall!14881 (exprs!5645 (h!69908 zl!343)) lambda!312098) e!3535322)))

(declare-fun b!5752476 () Bool)

(declare-fun e!3535323 () Bool)

(assert (=> b!5752476 (= e!3535322 e!3535323)))

(declare-fun res!2428652 () Bool)

(assert (=> b!5752476 (=> (not res!2428652) (not e!3535323))))

(assert (=> b!5752476 (= res!2428652 (dynLambda!24839 lambda!312098 (h!69907 (exprs!5645 (h!69908 zl!343)))))))

(declare-fun b!5752477 () Bool)

(assert (=> b!5752477 (= e!3535323 (forall!14881 (t!376913 (exprs!5645 (h!69908 zl!343))) lambda!312098))))

(assert (= (and d!1812890 (not res!2428651)) b!5752476))

(assert (= (and b!5752476 res!2428652) b!5752477))

(declare-fun b_lambda!217277 () Bool)

(assert (=> (not b_lambda!217277) (not b!5752476)))

(declare-fun m!6702242 () Bool)

(assert (=> b!5752476 m!6702242))

(declare-fun m!6702244 () Bool)

(assert (=> b!5752477 m!6702244))

(assert (=> d!1812606 d!1812890))

(declare-fun b!5752478 () Bool)

(declare-fun e!3535327 () Bool)

(declare-fun lt!2287478 () Int)

(assert (=> b!5752478 (= e!3535327 (= lt!2287478 1))))

(declare-fun b!5752479 () Bool)

(declare-fun e!3535333 () Bool)

(declare-fun call!441022 () Int)

(assert (=> b!5752479 (= e!3535333 (> lt!2287478 call!441022))))

(declare-fun bm!441015 () Bool)

(declare-fun c!1016269 () Bool)

(declare-fun call!441025 () Int)

(assert (=> bm!441015 (= call!441025 (regexDepth!238 (ite c!1016269 (regTwo!32035 (ite c!1016120 (regTwo!32035 r!7292) (regOne!32034 r!7292))) (regOne!32034 (ite c!1016120 (regTwo!32035 r!7292) (regOne!32034 r!7292))))))))

(declare-fun bm!441016 () Bool)

(declare-fun call!441023 () Int)

(declare-fun call!441020 () Int)

(assert (=> bm!441016 (= call!441023 call!441020)))

(declare-fun b!5752480 () Bool)

(declare-fun e!3535325 () Int)

(declare-fun e!3535328 () Int)

(assert (=> b!5752480 (= e!3535325 e!3535328)))

(declare-fun c!1016272 () Bool)

(assert (=> b!5752480 (= c!1016272 ((_ is Star!15761) (ite c!1016120 (regTwo!32035 r!7292) (regOne!32034 r!7292))))))

(declare-fun b!5752481 () Bool)

(assert (=> b!5752481 (= c!1016269 ((_ is Union!15761) (ite c!1016120 (regTwo!32035 r!7292) (regOne!32034 r!7292))))))

(declare-fun e!3535326 () Int)

(assert (=> b!5752481 (= e!3535328 e!3535326)))

(declare-fun b!5752482 () Bool)

(declare-fun e!3535330 () Int)

(assert (=> b!5752482 (= e!3535326 e!3535330)))

(declare-fun c!1016267 () Bool)

(assert (=> b!5752482 (= c!1016267 ((_ is Concat!24606) (ite c!1016120 (regTwo!32035 r!7292) (regOne!32034 r!7292))))))

(declare-fun call!441024 () Int)

(declare-fun bm!441017 () Bool)

(assert (=> bm!441017 (= call!441024 (regexDepth!238 (ite c!1016272 (reg!16090 (ite c!1016120 (regTwo!32035 r!7292) (regOne!32034 r!7292))) (ite c!1016269 (regOne!32035 (ite c!1016120 (regTwo!32035 r!7292) (regOne!32034 r!7292))) (regTwo!32034 (ite c!1016120 (regTwo!32035 r!7292) (regOne!32034 r!7292)))))))))

(declare-fun b!5752483 () Bool)

(assert (=> b!5752483 (= e!3535328 (+ 1 call!441024))))

(declare-fun b!5752484 () Bool)

(declare-fun e!3535332 () Bool)

(assert (=> b!5752484 (= e!3535332 e!3535333)))

(declare-fun res!2428653 () Bool)

(assert (=> b!5752484 (= res!2428653 (> lt!2287478 call!441020))))

(assert (=> b!5752484 (=> (not res!2428653) (not e!3535333))))

(declare-fun b!5752486 () Bool)

(declare-fun e!3535324 () Bool)

(assert (=> b!5752486 (= e!3535324 (> lt!2287478 call!441022))))

(declare-fun b!5752487 () Bool)

(declare-fun call!441021 () Int)

(assert (=> b!5752487 (= e!3535330 (+ 1 call!441021))))

(declare-fun b!5752488 () Bool)

(declare-fun e!3535329 () Bool)

(assert (=> b!5752488 (= e!3535332 e!3535329)))

(declare-fun c!1016268 () Bool)

(assert (=> b!5752488 (= c!1016268 ((_ is Concat!24606) (ite c!1016120 (regTwo!32035 r!7292) (regOne!32034 r!7292))))))

(declare-fun bm!441018 () Bool)

(declare-fun c!1016271 () Bool)

(assert (=> bm!441018 (= call!441020 (regexDepth!238 (ite c!1016271 (regOne!32035 (ite c!1016120 (regTwo!32035 r!7292) (regOne!32034 r!7292))) (ite c!1016268 (regOne!32034 (ite c!1016120 (regTwo!32035 r!7292) (regOne!32034 r!7292))) (reg!16090 (ite c!1016120 (regTwo!32035 r!7292) (regOne!32034 r!7292)))))))))

(declare-fun call!441026 () Int)

(declare-fun bm!441019 () Bool)

(assert (=> bm!441019 (= call!441021 (maxBigInt!0 (ite c!1016269 call!441026 call!441025) (ite c!1016269 call!441025 call!441026)))))

(declare-fun b!5752489 () Bool)

(assert (=> b!5752489 (= e!3535330 1)))

(declare-fun b!5752490 () Bool)

(declare-fun res!2428655 () Bool)

(assert (=> b!5752490 (=> (not res!2428655) (not e!3535324))))

(assert (=> b!5752490 (= res!2428655 (> lt!2287478 call!441023))))

(assert (=> b!5752490 (= e!3535329 e!3535324)))

(declare-fun b!5752491 () Bool)

(assert (=> b!5752491 (= e!3535326 (+ 1 call!441021))))

(declare-fun b!5752492 () Bool)

(assert (=> b!5752492 (= e!3535327 (> lt!2287478 call!441023))))

(declare-fun b!5752493 () Bool)

(declare-fun c!1016266 () Bool)

(assert (=> b!5752493 (= c!1016266 ((_ is Star!15761) (ite c!1016120 (regTwo!32035 r!7292) (regOne!32034 r!7292))))))

(assert (=> b!5752493 (= e!3535329 e!3535327)))

(declare-fun b!5752494 () Bool)

(declare-fun e!3535331 () Bool)

(assert (=> b!5752494 (= e!3535331 e!3535332)))

(assert (=> b!5752494 (= c!1016271 ((_ is Union!15761) (ite c!1016120 (regTwo!32035 r!7292) (regOne!32034 r!7292))))))

(declare-fun d!1812892 () Bool)

(assert (=> d!1812892 e!3535331))

(declare-fun res!2428654 () Bool)

(assert (=> d!1812892 (=> (not res!2428654) (not e!3535331))))

(assert (=> d!1812892 (= res!2428654 (> lt!2287478 0))))

(assert (=> d!1812892 (= lt!2287478 e!3535325)))

(declare-fun c!1016270 () Bool)

(assert (=> d!1812892 (= c!1016270 ((_ is ElementMatch!15761) (ite c!1016120 (regTwo!32035 r!7292) (regOne!32034 r!7292))))))

(assert (=> d!1812892 (= (regexDepth!238 (ite c!1016120 (regTwo!32035 r!7292) (regOne!32034 r!7292))) lt!2287478)))

(declare-fun b!5752485 () Bool)

(assert (=> b!5752485 (= e!3535325 1)))

(declare-fun bm!441020 () Bool)

(assert (=> bm!441020 (= call!441022 (regexDepth!238 (ite c!1016271 (regTwo!32035 (ite c!1016120 (regTwo!32035 r!7292) (regOne!32034 r!7292))) (regTwo!32034 (ite c!1016120 (regTwo!32035 r!7292) (regOne!32034 r!7292))))))))

(declare-fun bm!441021 () Bool)

(assert (=> bm!441021 (= call!441026 call!441024)))

(assert (= (and d!1812892 c!1016270) b!5752485))

(assert (= (and d!1812892 (not c!1016270)) b!5752480))

(assert (= (and b!5752480 c!1016272) b!5752483))

(assert (= (and b!5752480 (not c!1016272)) b!5752481))

(assert (= (and b!5752481 c!1016269) b!5752491))

(assert (= (and b!5752481 (not c!1016269)) b!5752482))

(assert (= (and b!5752482 c!1016267) b!5752487))

(assert (= (and b!5752482 (not c!1016267)) b!5752489))

(assert (= (or b!5752491 b!5752487) bm!441015))

(assert (= (or b!5752491 b!5752487) bm!441021))

(assert (= (or b!5752491 b!5752487) bm!441019))

(assert (= (or b!5752483 bm!441021) bm!441017))

(assert (= (and d!1812892 res!2428654) b!5752494))

(assert (= (and b!5752494 c!1016271) b!5752484))

(assert (= (and b!5752494 (not c!1016271)) b!5752488))

(assert (= (and b!5752484 res!2428653) b!5752479))

(assert (= (and b!5752488 c!1016268) b!5752490))

(assert (= (and b!5752488 (not c!1016268)) b!5752493))

(assert (= (and b!5752490 res!2428655) b!5752486))

(assert (= (and b!5752493 c!1016266) b!5752492))

(assert (= (and b!5752493 (not c!1016266)) b!5752478))

(assert (= (or b!5752490 b!5752492) bm!441016))

(assert (= (or b!5752479 b!5752486) bm!441020))

(assert (= (or b!5752484 bm!441016) bm!441018))

(declare-fun m!6702246 () Bool)

(assert (=> bm!441018 m!6702246))

(declare-fun m!6702248 () Bool)

(assert (=> bm!441019 m!6702248))

(declare-fun m!6702250 () Bool)

(assert (=> bm!441017 m!6702250))

(declare-fun m!6702252 () Bool)

(assert (=> bm!441020 m!6702252))

(declare-fun m!6702254 () Bool)

(assert (=> bm!441015 m!6702254))

(assert (=> bm!440904 d!1812892))

(declare-fun d!1812894 () Bool)

(assert (=> d!1812894 (= (isUnion!691 lt!2287379) ((_ is Union!15761) lt!2287379))))

(assert (=> b!5751600 d!1812894))

(assert (=> b!5752003 d!1812748))

(declare-fun bm!441022 () Bool)

(declare-fun call!441027 () Bool)

(assert (=> bm!441022 (= call!441027 (isEmpty!35345 (tail!11261 s!2326)))))

(declare-fun b!5752495 () Bool)

(declare-fun e!3535336 () Bool)

(declare-fun lt!2287479 () Bool)

(assert (=> b!5752495 (= e!3535336 (not lt!2287479))))

(declare-fun d!1812896 () Bool)

(declare-fun e!3535335 () Bool)

(assert (=> d!1812896 e!3535335))

(declare-fun c!1016273 () Bool)

(assert (=> d!1812896 (= c!1016273 ((_ is EmptyExpr!15761) (derivativeStep!4546 (regTwo!32034 r!7292) (head!12166 s!2326))))))

(declare-fun e!3535340 () Bool)

(assert (=> d!1812896 (= lt!2287479 e!3535340)))

(declare-fun c!1016274 () Bool)

(assert (=> d!1812896 (= c!1016274 (isEmpty!35345 (tail!11261 s!2326)))))

(assert (=> d!1812896 (validRegex!7497 (derivativeStep!4546 (regTwo!32034 r!7292) (head!12166 s!2326)))))

(assert (=> d!1812896 (= (matchR!7946 (derivativeStep!4546 (regTwo!32034 r!7292) (head!12166 s!2326)) (tail!11261 s!2326)) lt!2287479)))

(declare-fun b!5752496 () Bool)

(declare-fun e!3535334 () Bool)

(assert (=> b!5752496 (= e!3535334 (not (= (head!12166 (tail!11261 s!2326)) (c!1015817 (derivativeStep!4546 (regTwo!32034 r!7292) (head!12166 s!2326))))))))

(declare-fun b!5752497 () Bool)

(declare-fun e!3535337 () Bool)

(declare-fun e!3535338 () Bool)

(assert (=> b!5752497 (= e!3535337 e!3535338)))

(declare-fun res!2428656 () Bool)

(assert (=> b!5752497 (=> (not res!2428656) (not e!3535338))))

(assert (=> b!5752497 (= res!2428656 (not lt!2287479))))

(declare-fun b!5752498 () Bool)

(declare-fun e!3535339 () Bool)

(assert (=> b!5752498 (= e!3535339 (= (head!12166 (tail!11261 s!2326)) (c!1015817 (derivativeStep!4546 (regTwo!32034 r!7292) (head!12166 s!2326)))))))

(declare-fun b!5752499 () Bool)

(assert (=> b!5752499 (= e!3535340 (matchR!7946 (derivativeStep!4546 (derivativeStep!4546 (regTwo!32034 r!7292) (head!12166 s!2326)) (head!12166 (tail!11261 s!2326))) (tail!11261 (tail!11261 s!2326))))))

(declare-fun b!5752500 () Bool)

(assert (=> b!5752500 (= e!3535338 e!3535334)))

(declare-fun res!2428662 () Bool)

(assert (=> b!5752500 (=> res!2428662 e!3535334)))

(assert (=> b!5752500 (= res!2428662 call!441027)))

(declare-fun b!5752501 () Bool)

(assert (=> b!5752501 (= e!3535335 (= lt!2287479 call!441027))))

(declare-fun b!5752502 () Bool)

(declare-fun res!2428660 () Bool)

(assert (=> b!5752502 (=> (not res!2428660) (not e!3535339))))

(assert (=> b!5752502 (= res!2428660 (isEmpty!35345 (tail!11261 (tail!11261 s!2326))))))

(declare-fun b!5752503 () Bool)

(assert (=> b!5752503 (= e!3535335 e!3535336)))

(declare-fun c!1016275 () Bool)

(assert (=> b!5752503 (= c!1016275 ((_ is EmptyLang!15761) (derivativeStep!4546 (regTwo!32034 r!7292) (head!12166 s!2326))))))

(declare-fun b!5752504 () Bool)

(assert (=> b!5752504 (= e!3535340 (nullable!5793 (derivativeStep!4546 (regTwo!32034 r!7292) (head!12166 s!2326))))))

(declare-fun b!5752505 () Bool)

(declare-fun res!2428657 () Bool)

(assert (=> b!5752505 (=> res!2428657 e!3535334)))

(assert (=> b!5752505 (= res!2428657 (not (isEmpty!35345 (tail!11261 (tail!11261 s!2326)))))))

(declare-fun b!5752506 () Bool)

(declare-fun res!2428661 () Bool)

(assert (=> b!5752506 (=> res!2428661 e!3535337)))

(assert (=> b!5752506 (= res!2428661 (not ((_ is ElementMatch!15761) (derivativeStep!4546 (regTwo!32034 r!7292) (head!12166 s!2326)))))))

(assert (=> b!5752506 (= e!3535336 e!3535337)))

(declare-fun b!5752507 () Bool)

(declare-fun res!2428663 () Bool)

(assert (=> b!5752507 (=> (not res!2428663) (not e!3535339))))

(assert (=> b!5752507 (= res!2428663 (not call!441027))))

(declare-fun b!5752508 () Bool)

(declare-fun res!2428659 () Bool)

(assert (=> b!5752508 (=> res!2428659 e!3535337)))

(assert (=> b!5752508 (= res!2428659 e!3535339)))

(declare-fun res!2428658 () Bool)

(assert (=> b!5752508 (=> (not res!2428658) (not e!3535339))))

(assert (=> b!5752508 (= res!2428658 lt!2287479)))

(assert (= (and d!1812896 c!1016274) b!5752504))

(assert (= (and d!1812896 (not c!1016274)) b!5752499))

(assert (= (and d!1812896 c!1016273) b!5752501))

(assert (= (and d!1812896 (not c!1016273)) b!5752503))

(assert (= (and b!5752503 c!1016275) b!5752495))

(assert (= (and b!5752503 (not c!1016275)) b!5752506))

(assert (= (and b!5752506 (not res!2428661)) b!5752508))

(assert (= (and b!5752508 res!2428658) b!5752507))

(assert (= (and b!5752507 res!2428663) b!5752502))

(assert (= (and b!5752502 res!2428660) b!5752498))

(assert (= (and b!5752508 (not res!2428659)) b!5752497))

(assert (= (and b!5752497 res!2428656) b!5752500))

(assert (= (and b!5752500 (not res!2428662)) b!5752505))

(assert (= (and b!5752505 (not res!2428657)) b!5752496))

(assert (= (or b!5752501 b!5752500 b!5752507) bm!441022))

(assert (=> d!1812896 m!6701480))

(assert (=> d!1812896 m!6701646))

(assert (=> d!1812896 m!6701816))

(declare-fun m!6702256 () Bool)

(assert (=> d!1812896 m!6702256))

(assert (=> b!5752505 m!6701480))

(assert (=> b!5752505 m!6701876))

(assert (=> b!5752505 m!6701876))

(assert (=> b!5752505 m!6701878))

(assert (=> b!5752496 m!6701480))

(assert (=> b!5752496 m!6701880))

(assert (=> bm!441022 m!6701480))

(assert (=> bm!441022 m!6701646))

(assert (=> b!5752499 m!6701480))

(assert (=> b!5752499 m!6701880))

(assert (=> b!5752499 m!6701816))

(assert (=> b!5752499 m!6701880))

(declare-fun m!6702258 () Bool)

(assert (=> b!5752499 m!6702258))

(assert (=> b!5752499 m!6701480))

(assert (=> b!5752499 m!6701876))

(assert (=> b!5752499 m!6702258))

(assert (=> b!5752499 m!6701876))

(declare-fun m!6702260 () Bool)

(assert (=> b!5752499 m!6702260))

(assert (=> b!5752504 m!6701816))

(declare-fun m!6702262 () Bool)

(assert (=> b!5752504 m!6702262))

(assert (=> b!5752502 m!6701480))

(assert (=> b!5752502 m!6701876))

(assert (=> b!5752502 m!6701876))

(assert (=> b!5752502 m!6701878))

(assert (=> b!5752498 m!6701480))

(assert (=> b!5752498 m!6701880))

(assert (=> b!5751992 d!1812896))

(declare-fun b!5752509 () Bool)

(declare-fun e!3535341 () Regex!15761)

(assert (=> b!5752509 (= e!3535341 (ite (= (head!12166 s!2326) (c!1015817 (regTwo!32034 r!7292))) EmptyExpr!15761 EmptyLang!15761))))

(declare-fun b!5752510 () Bool)

(declare-fun e!3535343 () Regex!15761)

(assert (=> b!5752510 (= e!3535343 e!3535341)))

(declare-fun c!1016280 () Bool)

(assert (=> b!5752510 (= c!1016280 ((_ is ElementMatch!15761) (regTwo!32034 r!7292)))))

(declare-fun bm!441023 () Bool)

(declare-fun call!441031 () Regex!15761)

(declare-fun c!1016277 () Bool)

(declare-fun c!1016276 () Bool)

(assert (=> bm!441023 (= call!441031 (derivativeStep!4546 (ite c!1016277 (regOne!32035 (regTwo!32034 r!7292)) (ite c!1016276 (reg!16090 (regTwo!32034 r!7292)) (regOne!32034 (regTwo!32034 r!7292)))) (head!12166 s!2326)))))

(declare-fun d!1812898 () Bool)

(declare-fun lt!2287480 () Regex!15761)

(assert (=> d!1812898 (validRegex!7497 lt!2287480)))

(assert (=> d!1812898 (= lt!2287480 e!3535343)))

(declare-fun c!1016278 () Bool)

(assert (=> d!1812898 (= c!1016278 (or ((_ is EmptyExpr!15761) (regTwo!32034 r!7292)) ((_ is EmptyLang!15761) (regTwo!32034 r!7292))))))

(assert (=> d!1812898 (validRegex!7497 (regTwo!32034 r!7292))))

(assert (=> d!1812898 (= (derivativeStep!4546 (regTwo!32034 r!7292) (head!12166 s!2326)) lt!2287480)))

(declare-fun b!5752511 () Bool)

(declare-fun call!441029 () Regex!15761)

(declare-fun e!3535342 () Regex!15761)

(declare-fun call!441028 () Regex!15761)

(assert (=> b!5752511 (= e!3535342 (Union!15761 (Concat!24606 call!441028 (regTwo!32034 (regTwo!32034 r!7292))) call!441029))))

(declare-fun b!5752512 () Bool)

(assert (=> b!5752512 (= e!3535343 EmptyLang!15761)))

(declare-fun b!5752513 () Bool)

(assert (=> b!5752513 (= e!3535342 (Union!15761 (Concat!24606 call!441029 (regTwo!32034 (regTwo!32034 r!7292))) EmptyLang!15761))))

(declare-fun bm!441024 () Bool)

(assert (=> bm!441024 (= call!441028 call!441031)))

(declare-fun b!5752514 () Bool)

(assert (=> b!5752514 (= c!1016277 ((_ is Union!15761) (regTwo!32034 r!7292)))))

(declare-fun e!3535344 () Regex!15761)

(assert (=> b!5752514 (= e!3535341 e!3535344)))

(declare-fun b!5752515 () Bool)

(declare-fun call!441030 () Regex!15761)

(assert (=> b!5752515 (= e!3535344 (Union!15761 call!441031 call!441030))))

(declare-fun b!5752516 () Bool)

(declare-fun c!1016279 () Bool)

(assert (=> b!5752516 (= c!1016279 (nullable!5793 (regOne!32034 (regTwo!32034 r!7292))))))

(declare-fun e!3535345 () Regex!15761)

(assert (=> b!5752516 (= e!3535345 e!3535342)))

(declare-fun bm!441025 () Bool)

(assert (=> bm!441025 (= call!441029 call!441030)))

(declare-fun b!5752517 () Bool)

(assert (=> b!5752517 (= e!3535344 e!3535345)))

(assert (=> b!5752517 (= c!1016276 ((_ is Star!15761) (regTwo!32034 r!7292)))))

(declare-fun bm!441026 () Bool)

(assert (=> bm!441026 (= call!441030 (derivativeStep!4546 (ite c!1016277 (regTwo!32035 (regTwo!32034 r!7292)) (ite c!1016279 (regTwo!32034 (regTwo!32034 r!7292)) (regOne!32034 (regTwo!32034 r!7292)))) (head!12166 s!2326)))))

(declare-fun b!5752518 () Bool)

(assert (=> b!5752518 (= e!3535345 (Concat!24606 call!441028 (regTwo!32034 r!7292)))))

(assert (= (and d!1812898 c!1016278) b!5752512))

(assert (= (and d!1812898 (not c!1016278)) b!5752510))

(assert (= (and b!5752510 c!1016280) b!5752509))

(assert (= (and b!5752510 (not c!1016280)) b!5752514))

(assert (= (and b!5752514 c!1016277) b!5752515))

(assert (= (and b!5752514 (not c!1016277)) b!5752517))

(assert (= (and b!5752517 c!1016276) b!5752518))

(assert (= (and b!5752517 (not c!1016276)) b!5752516))

(assert (= (and b!5752516 c!1016279) b!5752511))

(assert (= (and b!5752516 (not c!1016279)) b!5752513))

(assert (= (or b!5752511 b!5752513) bm!441025))

(assert (= (or b!5752518 b!5752511) bm!441024))

(assert (= (or b!5752515 bm!441025) bm!441026))

(assert (= (or b!5752515 bm!441024) bm!441023))

(assert (=> bm!441023 m!6701476))

(declare-fun m!6702264 () Bool)

(assert (=> bm!441023 m!6702264))

(declare-fun m!6702266 () Bool)

(assert (=> d!1812898 m!6702266))

(assert (=> d!1812898 m!6701814))

(declare-fun m!6702268 () Bool)

(assert (=> b!5752516 m!6702268))

(assert (=> bm!441026 m!6701476))

(declare-fun m!6702270 () Bool)

(assert (=> bm!441026 m!6702270))

(assert (=> b!5751992 d!1812898))

(assert (=> b!5751992 d!1812748))

(assert (=> b!5751992 d!1812750))

(assert (=> b!5751852 d!1812748))

(declare-fun d!1812900 () Bool)

(declare-fun c!1016281 () Bool)

(assert (=> d!1812900 (= c!1016281 (and ((_ is ElementMatch!15761) (h!69907 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343)))))))) (= (c!1015817 (h!69907 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343)))))))) (h!69906 s!2326))))))

(declare-fun e!3535348 () (InoxSet Context!10290))

(assert (=> d!1812900 (= (derivationStepZipperDown!1103 (h!69907 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343))))))) (Context!10291 (t!376913 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343)))))))) (h!69906 s!2326)) e!3535348)))

(declare-fun b!5752519 () Bool)

(declare-fun e!3535346 () Bool)

(assert (=> b!5752519 (= e!3535346 (nullable!5793 (regOne!32034 (h!69907 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343))))))))))))

(declare-fun bm!441027 () Bool)

(declare-fun call!441032 () List!63583)

(declare-fun c!1016282 () Bool)

(declare-fun c!1016283 () Bool)

(assert (=> bm!441027 (= call!441032 ($colon$colon!1760 (exprs!5645 (Context!10291 (t!376913 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343))))))))) (ite (or c!1016282 c!1016283) (regTwo!32034 (h!69907 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343)))))))) (h!69907 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343))))))))))))

(declare-fun bm!441028 () Bool)

(declare-fun call!441035 () (InoxSet Context!10290))

(declare-fun call!441034 () (InoxSet Context!10290))

(assert (=> bm!441028 (= call!441035 call!441034)))

(declare-fun bm!441029 () Bool)

(declare-fun call!441036 () (InoxSet Context!10290))

(assert (=> bm!441029 (= call!441036 call!441035)))

(declare-fun call!441033 () (InoxSet Context!10290))

(declare-fun c!1016285 () Bool)

(declare-fun bm!441030 () Bool)

(assert (=> bm!441030 (= call!441033 (derivationStepZipperDown!1103 (ite c!1016285 (regOne!32035 (h!69907 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343)))))))) (regOne!32034 (h!69907 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343))))))))) (ite c!1016285 (Context!10291 (t!376913 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343)))))))) (Context!10291 call!441032)) (h!69906 s!2326)))))

(declare-fun b!5752520 () Bool)

(declare-fun e!3535351 () (InoxSet Context!10290))

(assert (=> b!5752520 (= e!3535351 ((as const (Array Context!10290 Bool)) false))))

(declare-fun bm!441031 () Bool)

(declare-fun call!441037 () List!63583)

(assert (=> bm!441031 (= call!441037 call!441032)))

(declare-fun b!5752521 () Bool)

(declare-fun c!1016284 () Bool)

(assert (=> b!5752521 (= c!1016284 ((_ is Star!15761) (h!69907 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343)))))))))))

(declare-fun e!3535349 () (InoxSet Context!10290))

(assert (=> b!5752521 (= e!3535349 e!3535351)))

(declare-fun b!5752522 () Bool)

(declare-fun e!3535350 () (InoxSet Context!10290))

(assert (=> b!5752522 (= e!3535350 ((_ map or) call!441033 call!441034))))

(declare-fun b!5752523 () Bool)

(assert (=> b!5752523 (= e!3535351 call!441036)))

(declare-fun b!5752524 () Bool)

(assert (=> b!5752524 (= e!3535348 e!3535350)))

(assert (=> b!5752524 (= c!1016285 ((_ is Union!15761) (h!69907 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343)))))))))))

(declare-fun b!5752525 () Bool)

(assert (=> b!5752525 (= e!3535348 (store ((as const (Array Context!10290 Bool)) false) (Context!10291 (t!376913 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343)))))))) true))))

(declare-fun b!5752526 () Bool)

(assert (=> b!5752526 (= c!1016282 e!3535346)))

(declare-fun res!2428664 () Bool)

(assert (=> b!5752526 (=> (not res!2428664) (not e!3535346))))

(assert (=> b!5752526 (= res!2428664 ((_ is Concat!24606) (h!69907 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343)))))))))))

(declare-fun e!3535347 () (InoxSet Context!10290))

(assert (=> b!5752526 (= e!3535350 e!3535347)))

(declare-fun b!5752527 () Bool)

(assert (=> b!5752527 (= e!3535349 call!441036)))

(declare-fun bm!441032 () Bool)

(assert (=> bm!441032 (= call!441034 (derivationStepZipperDown!1103 (ite c!1016285 (regTwo!32035 (h!69907 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343)))))))) (ite c!1016282 (regTwo!32034 (h!69907 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343)))))))) (ite c!1016283 (regOne!32034 (h!69907 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343)))))))) (reg!16090 (h!69907 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343))))))))))) (ite (or c!1016285 c!1016282) (Context!10291 (t!376913 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343)))))))) (Context!10291 call!441037)) (h!69906 s!2326)))))

(declare-fun b!5752528 () Bool)

(assert (=> b!5752528 (= e!3535347 ((_ map or) call!441033 call!441035))))

(declare-fun b!5752529 () Bool)

(assert (=> b!5752529 (= e!3535347 e!3535349)))

(assert (=> b!5752529 (= c!1016283 ((_ is Concat!24606) (h!69907 (exprs!5645 (Context!10291 (Cons!63459 (h!69907 (exprs!5645 (h!69908 zl!343))) (t!376913 (exprs!5645 (h!69908 zl!343)))))))))))

(assert (= (and d!1812900 c!1016281) b!5752525))

(assert (= (and d!1812900 (not c!1016281)) b!5752524))

(assert (= (and b!5752524 c!1016285) b!5752522))

(assert (= (and b!5752524 (not c!1016285)) b!5752526))

(assert (= (and b!5752526 res!2428664) b!5752519))

(assert (= (and b!5752526 c!1016282) b!5752528))

(assert (= (and b!5752526 (not c!1016282)) b!5752529))

(assert (= (and b!5752529 c!1016283) b!5752527))

(assert (= (and b!5752529 (not c!1016283)) b!5752521))

(assert (= (and b!5752521 c!1016284) b!5752523))

(assert (= (and b!5752521 (not c!1016284)) b!5752520))

(assert (= (or b!5752527 b!5752523) bm!441031))

(assert (= (or b!5752527 b!5752523) bm!441029))

(assert (= (or b!5752528 bm!441031) bm!441027))

(assert (= (or b!5752528 bm!441029) bm!441028))

(assert (= (or b!5752522 bm!441028) bm!441032))

(assert (= (or b!5752522 b!5752528) bm!441030))

(declare-fun m!6702272 () Bool)

(assert (=> bm!441027 m!6702272))

(declare-fun m!6702274 () Bool)

(assert (=> b!5752525 m!6702274))

(declare-fun m!6702276 () Bool)

(assert (=> b!5752519 m!6702276))

(declare-fun m!6702278 () Bool)

(assert (=> bm!441030 m!6702278))

(declare-fun m!6702280 () Bool)

(assert (=> bm!441032 m!6702280))

(assert (=> bm!440889 d!1812900))

(declare-fun b!5752530 () Bool)

(declare-fun e!3535355 () Bool)

(declare-fun lt!2287481 () Int)

(assert (=> b!5752530 (= e!3535355 (= lt!2287481 1))))

(declare-fun b!5752531 () Bool)

(declare-fun e!3535361 () Bool)

(declare-fun call!441040 () Int)

(assert (=> b!5752531 (= e!3535361 (> lt!2287481 call!441040))))

(declare-fun call!441043 () Int)

(declare-fun bm!441033 () Bool)

(declare-fun c!1016289 () Bool)

(assert (=> bm!441033 (= call!441043 (regexDepth!238 (ite c!1016289 (regTwo!32035 (ite c!1016129 (regTwo!32035 lt!2287295) (regTwo!32034 lt!2287295))) (regOne!32034 (ite c!1016129 (regTwo!32035 lt!2287295) (regTwo!32034 lt!2287295))))))))

(declare-fun bm!441034 () Bool)

(declare-fun call!441041 () Int)

(declare-fun call!441038 () Int)

(assert (=> bm!441034 (= call!441041 call!441038)))

(declare-fun b!5752532 () Bool)

(declare-fun e!3535353 () Int)

(declare-fun e!3535356 () Int)

(assert (=> b!5752532 (= e!3535353 e!3535356)))

(declare-fun c!1016292 () Bool)

(assert (=> b!5752532 (= c!1016292 ((_ is Star!15761) (ite c!1016129 (regTwo!32035 lt!2287295) (regTwo!32034 lt!2287295))))))

(declare-fun b!5752533 () Bool)

(assert (=> b!5752533 (= c!1016289 ((_ is Union!15761) (ite c!1016129 (regTwo!32035 lt!2287295) (regTwo!32034 lt!2287295))))))

(declare-fun e!3535354 () Int)

(assert (=> b!5752533 (= e!3535356 e!3535354)))

(declare-fun b!5752534 () Bool)

(declare-fun e!3535358 () Int)

(assert (=> b!5752534 (= e!3535354 e!3535358)))

(declare-fun c!1016287 () Bool)

(assert (=> b!5752534 (= c!1016287 ((_ is Concat!24606) (ite c!1016129 (regTwo!32035 lt!2287295) (regTwo!32034 lt!2287295))))))

(declare-fun call!441042 () Int)

(declare-fun bm!441035 () Bool)

(assert (=> bm!441035 (= call!441042 (regexDepth!238 (ite c!1016292 (reg!16090 (ite c!1016129 (regTwo!32035 lt!2287295) (regTwo!32034 lt!2287295))) (ite c!1016289 (regOne!32035 (ite c!1016129 (regTwo!32035 lt!2287295) (regTwo!32034 lt!2287295))) (regTwo!32034 (ite c!1016129 (regTwo!32035 lt!2287295) (regTwo!32034 lt!2287295)))))))))

(declare-fun b!5752535 () Bool)

(assert (=> b!5752535 (= e!3535356 (+ 1 call!441042))))

(declare-fun b!5752536 () Bool)

(declare-fun e!3535360 () Bool)

(assert (=> b!5752536 (= e!3535360 e!3535361)))

(declare-fun res!2428665 () Bool)

(assert (=> b!5752536 (= res!2428665 (> lt!2287481 call!441038))))

(assert (=> b!5752536 (=> (not res!2428665) (not e!3535361))))

(declare-fun b!5752538 () Bool)

(declare-fun e!3535352 () Bool)

(assert (=> b!5752538 (= e!3535352 (> lt!2287481 call!441040))))

(declare-fun b!5752539 () Bool)

(declare-fun call!441039 () Int)

(assert (=> b!5752539 (= e!3535358 (+ 1 call!441039))))

(declare-fun b!5752540 () Bool)

(declare-fun e!3535357 () Bool)

(assert (=> b!5752540 (= e!3535360 e!3535357)))

(declare-fun c!1016288 () Bool)

(assert (=> b!5752540 (= c!1016288 ((_ is Concat!24606) (ite c!1016129 (regTwo!32035 lt!2287295) (regTwo!32034 lt!2287295))))))

(declare-fun c!1016291 () Bool)

(declare-fun bm!441036 () Bool)

(assert (=> bm!441036 (= call!441038 (regexDepth!238 (ite c!1016291 (regOne!32035 (ite c!1016129 (regTwo!32035 lt!2287295) (regTwo!32034 lt!2287295))) (ite c!1016288 (regOne!32034 (ite c!1016129 (regTwo!32035 lt!2287295) (regTwo!32034 lt!2287295))) (reg!16090 (ite c!1016129 (regTwo!32035 lt!2287295) (regTwo!32034 lt!2287295)))))))))

(declare-fun bm!441037 () Bool)

(declare-fun call!441044 () Int)

(assert (=> bm!441037 (= call!441039 (maxBigInt!0 (ite c!1016289 call!441044 call!441043) (ite c!1016289 call!441043 call!441044)))))

(declare-fun b!5752541 () Bool)

(assert (=> b!5752541 (= e!3535358 1)))

(declare-fun b!5752542 () Bool)

(declare-fun res!2428667 () Bool)

(assert (=> b!5752542 (=> (not res!2428667) (not e!3535352))))

(assert (=> b!5752542 (= res!2428667 (> lt!2287481 call!441041))))

(assert (=> b!5752542 (= e!3535357 e!3535352)))

(declare-fun b!5752543 () Bool)

(assert (=> b!5752543 (= e!3535354 (+ 1 call!441039))))

(declare-fun b!5752544 () Bool)

(assert (=> b!5752544 (= e!3535355 (> lt!2287481 call!441041))))

(declare-fun b!5752545 () Bool)

(declare-fun c!1016286 () Bool)

(assert (=> b!5752545 (= c!1016286 ((_ is Star!15761) (ite c!1016129 (regTwo!32035 lt!2287295) (regTwo!32034 lt!2287295))))))

(assert (=> b!5752545 (= e!3535357 e!3535355)))

(declare-fun b!5752546 () Bool)

(declare-fun e!3535359 () Bool)

(assert (=> b!5752546 (= e!3535359 e!3535360)))

(assert (=> b!5752546 (= c!1016291 ((_ is Union!15761) (ite c!1016129 (regTwo!32035 lt!2287295) (regTwo!32034 lt!2287295))))))

(declare-fun d!1812902 () Bool)

(assert (=> d!1812902 e!3535359))

(declare-fun res!2428666 () Bool)

(assert (=> d!1812902 (=> (not res!2428666) (not e!3535359))))

(assert (=> d!1812902 (= res!2428666 (> lt!2287481 0))))

(assert (=> d!1812902 (= lt!2287481 e!3535353)))

(declare-fun c!1016290 () Bool)

(assert (=> d!1812902 (= c!1016290 ((_ is ElementMatch!15761) (ite c!1016129 (regTwo!32035 lt!2287295) (regTwo!32034 lt!2287295))))))

(assert (=> d!1812902 (= (regexDepth!238 (ite c!1016129 (regTwo!32035 lt!2287295) (regTwo!32034 lt!2287295))) lt!2287481)))

(declare-fun b!5752537 () Bool)

(assert (=> b!5752537 (= e!3535353 1)))

(declare-fun bm!441038 () Bool)

(assert (=> bm!441038 (= call!441040 (regexDepth!238 (ite c!1016291 (regTwo!32035 (ite c!1016129 (regTwo!32035 lt!2287295) (regTwo!32034 lt!2287295))) (regTwo!32034 (ite c!1016129 (regTwo!32035 lt!2287295) (regTwo!32034 lt!2287295))))))))

(declare-fun bm!441039 () Bool)

(assert (=> bm!441039 (= call!441044 call!441042)))

(assert (= (and d!1812902 c!1016290) b!5752537))

(assert (= (and d!1812902 (not c!1016290)) b!5752532))

(assert (= (and b!5752532 c!1016292) b!5752535))

(assert (= (and b!5752532 (not c!1016292)) b!5752533))

(assert (= (and b!5752533 c!1016289) b!5752543))

(assert (= (and b!5752533 (not c!1016289)) b!5752534))

(assert (= (and b!5752534 c!1016287) b!5752539))

(assert (= (and b!5752534 (not c!1016287)) b!5752541))

(assert (= (or b!5752543 b!5752539) bm!441033))

(assert (= (or b!5752543 b!5752539) bm!441039))

(assert (= (or b!5752543 b!5752539) bm!441037))

(assert (= (or b!5752535 bm!441039) bm!441035))

(assert (= (and d!1812902 res!2428666) b!5752546))

(assert (= (and b!5752546 c!1016291) b!5752536))

(assert (= (and b!5752546 (not c!1016291)) b!5752540))

(assert (= (and b!5752536 res!2428665) b!5752531))

(assert (= (and b!5752540 c!1016288) b!5752542))

(assert (= (and b!5752540 (not c!1016288)) b!5752545))

(assert (= (and b!5752542 res!2428667) b!5752538))

(assert (= (and b!5752545 c!1016286) b!5752544))

(assert (= (and b!5752545 (not c!1016286)) b!5752530))

(assert (= (or b!5752542 b!5752544) bm!441034))

(assert (= (or b!5752531 b!5752538) bm!441038))

(assert (= (or b!5752536 bm!441034) bm!441036))

(declare-fun m!6702282 () Bool)

(assert (=> bm!441036 m!6702282))

(declare-fun m!6702284 () Bool)

(assert (=> bm!441037 m!6702284))

(declare-fun m!6702286 () Bool)

(assert (=> bm!441035 m!6702286))

(declare-fun m!6702288 () Bool)

(assert (=> bm!441038 m!6702288))

(declare-fun m!6702290 () Bool)

(assert (=> bm!441033 m!6702290))

(assert (=> bm!440916 d!1812902))

(declare-fun d!1812904 () Bool)

(assert (=> d!1812904 (= (nullable!5793 (h!69907 (exprs!5645 lt!2287276))) (nullableFct!1838 (h!69907 (exprs!5645 lt!2287276))))))

(declare-fun bs!1347409 () Bool)

(assert (= bs!1347409 d!1812904))

(declare-fun m!6702292 () Bool)

(assert (=> bs!1347409 m!6702292))

(assert (=> b!5751711 d!1812904))

(declare-fun b!5752547 () Bool)

(declare-fun e!3535365 () Bool)

(declare-fun lt!2287482 () Int)

(assert (=> b!5752547 (= e!3535365 (= lt!2287482 1))))

(declare-fun b!5752548 () Bool)

(declare-fun e!3535371 () Bool)

(declare-fun call!441047 () Int)

(assert (=> b!5752548 (= e!3535371 (> lt!2287482 call!441047))))

(declare-fun call!441050 () Int)

(declare-fun c!1016296 () Bool)

(declare-fun bm!441040 () Bool)

(assert (=> bm!441040 (= call!441050 (regexDepth!238 (ite c!1016296 (regTwo!32035 (ite c!1016123 (reg!16090 r!7292) (ite c!1016120 (regOne!32035 r!7292) (regTwo!32034 r!7292)))) (regOne!32034 (ite c!1016123 (reg!16090 r!7292) (ite c!1016120 (regOne!32035 r!7292) (regTwo!32034 r!7292)))))))))

(declare-fun bm!441041 () Bool)

(declare-fun call!441048 () Int)

(declare-fun call!441045 () Int)

(assert (=> bm!441041 (= call!441048 call!441045)))

(declare-fun b!5752549 () Bool)

(declare-fun e!3535363 () Int)

(declare-fun e!3535366 () Int)

(assert (=> b!5752549 (= e!3535363 e!3535366)))

(declare-fun c!1016299 () Bool)

(assert (=> b!5752549 (= c!1016299 ((_ is Star!15761) (ite c!1016123 (reg!16090 r!7292) (ite c!1016120 (regOne!32035 r!7292) (regTwo!32034 r!7292)))))))

(declare-fun b!5752550 () Bool)

(assert (=> b!5752550 (= c!1016296 ((_ is Union!15761) (ite c!1016123 (reg!16090 r!7292) (ite c!1016120 (regOne!32035 r!7292) (regTwo!32034 r!7292)))))))

(declare-fun e!3535364 () Int)

(assert (=> b!5752550 (= e!3535366 e!3535364)))

(declare-fun b!5752551 () Bool)

(declare-fun e!3535368 () Int)

(assert (=> b!5752551 (= e!3535364 e!3535368)))

(declare-fun c!1016294 () Bool)

(assert (=> b!5752551 (= c!1016294 ((_ is Concat!24606) (ite c!1016123 (reg!16090 r!7292) (ite c!1016120 (regOne!32035 r!7292) (regTwo!32034 r!7292)))))))

(declare-fun call!441049 () Int)

(declare-fun bm!441042 () Bool)

(assert (=> bm!441042 (= call!441049 (regexDepth!238 (ite c!1016299 (reg!16090 (ite c!1016123 (reg!16090 r!7292) (ite c!1016120 (regOne!32035 r!7292) (regTwo!32034 r!7292)))) (ite c!1016296 (regOne!32035 (ite c!1016123 (reg!16090 r!7292) (ite c!1016120 (regOne!32035 r!7292) (regTwo!32034 r!7292)))) (regTwo!32034 (ite c!1016123 (reg!16090 r!7292) (ite c!1016120 (regOne!32035 r!7292) (regTwo!32034 r!7292))))))))))

(declare-fun b!5752552 () Bool)

(assert (=> b!5752552 (= e!3535366 (+ 1 call!441049))))

(declare-fun b!5752553 () Bool)

(declare-fun e!3535370 () Bool)

(assert (=> b!5752553 (= e!3535370 e!3535371)))

(declare-fun res!2428668 () Bool)

(assert (=> b!5752553 (= res!2428668 (> lt!2287482 call!441045))))

(assert (=> b!5752553 (=> (not res!2428668) (not e!3535371))))

(declare-fun b!5752555 () Bool)

(declare-fun e!3535362 () Bool)

(assert (=> b!5752555 (= e!3535362 (> lt!2287482 call!441047))))

(declare-fun b!5752556 () Bool)

(declare-fun call!441046 () Int)

(assert (=> b!5752556 (= e!3535368 (+ 1 call!441046))))

(declare-fun b!5752557 () Bool)

(declare-fun e!3535367 () Bool)

(assert (=> b!5752557 (= e!3535370 e!3535367)))

(declare-fun c!1016295 () Bool)

(assert (=> b!5752557 (= c!1016295 ((_ is Concat!24606) (ite c!1016123 (reg!16090 r!7292) (ite c!1016120 (regOne!32035 r!7292) (regTwo!32034 r!7292)))))))

(declare-fun bm!441043 () Bool)

(declare-fun c!1016298 () Bool)

(assert (=> bm!441043 (= call!441045 (regexDepth!238 (ite c!1016298 (regOne!32035 (ite c!1016123 (reg!16090 r!7292) (ite c!1016120 (regOne!32035 r!7292) (regTwo!32034 r!7292)))) (ite c!1016295 (regOne!32034 (ite c!1016123 (reg!16090 r!7292) (ite c!1016120 (regOne!32035 r!7292) (regTwo!32034 r!7292)))) (reg!16090 (ite c!1016123 (reg!16090 r!7292) (ite c!1016120 (regOne!32035 r!7292) (regTwo!32034 r!7292))))))))))

(declare-fun bm!441044 () Bool)

(declare-fun call!441051 () Int)

(assert (=> bm!441044 (= call!441046 (maxBigInt!0 (ite c!1016296 call!441051 call!441050) (ite c!1016296 call!441050 call!441051)))))

(declare-fun b!5752558 () Bool)

(assert (=> b!5752558 (= e!3535368 1)))

(declare-fun b!5752559 () Bool)

(declare-fun res!2428670 () Bool)

(assert (=> b!5752559 (=> (not res!2428670) (not e!3535362))))

(assert (=> b!5752559 (= res!2428670 (> lt!2287482 call!441048))))

(assert (=> b!5752559 (= e!3535367 e!3535362)))

(declare-fun b!5752560 () Bool)

(assert (=> b!5752560 (= e!3535364 (+ 1 call!441046))))

(declare-fun b!5752561 () Bool)

(assert (=> b!5752561 (= e!3535365 (> lt!2287482 call!441048))))

(declare-fun b!5752562 () Bool)

(declare-fun c!1016293 () Bool)

(assert (=> b!5752562 (= c!1016293 ((_ is Star!15761) (ite c!1016123 (reg!16090 r!7292) (ite c!1016120 (regOne!32035 r!7292) (regTwo!32034 r!7292)))))))

(assert (=> b!5752562 (= e!3535367 e!3535365)))

(declare-fun b!5752563 () Bool)

(declare-fun e!3535369 () Bool)

(assert (=> b!5752563 (= e!3535369 e!3535370)))

(assert (=> b!5752563 (= c!1016298 ((_ is Union!15761) (ite c!1016123 (reg!16090 r!7292) (ite c!1016120 (regOne!32035 r!7292) (regTwo!32034 r!7292)))))))

(declare-fun d!1812906 () Bool)

(assert (=> d!1812906 e!3535369))

(declare-fun res!2428669 () Bool)

(assert (=> d!1812906 (=> (not res!2428669) (not e!3535369))))

(assert (=> d!1812906 (= res!2428669 (> lt!2287482 0))))

(assert (=> d!1812906 (= lt!2287482 e!3535363)))

(declare-fun c!1016297 () Bool)

(assert (=> d!1812906 (= c!1016297 ((_ is ElementMatch!15761) (ite c!1016123 (reg!16090 r!7292) (ite c!1016120 (regOne!32035 r!7292) (regTwo!32034 r!7292)))))))

(assert (=> d!1812906 (= (regexDepth!238 (ite c!1016123 (reg!16090 r!7292) (ite c!1016120 (regOne!32035 r!7292) (regTwo!32034 r!7292)))) lt!2287482)))

(declare-fun b!5752554 () Bool)

(assert (=> b!5752554 (= e!3535363 1)))

(declare-fun bm!441045 () Bool)

(assert (=> bm!441045 (= call!441047 (regexDepth!238 (ite c!1016298 (regTwo!32035 (ite c!1016123 (reg!16090 r!7292) (ite c!1016120 (regOne!32035 r!7292) (regTwo!32034 r!7292)))) (regTwo!32034 (ite c!1016123 (reg!16090 r!7292) (ite c!1016120 (regOne!32035 r!7292) (regTwo!32034 r!7292)))))))))

(declare-fun bm!441046 () Bool)

(assert (=> bm!441046 (= call!441051 call!441049)))

(assert (= (and d!1812906 c!1016297) b!5752554))

(assert (= (and d!1812906 (not c!1016297)) b!5752549))

(assert (= (and b!5752549 c!1016299) b!5752552))

(assert (= (and b!5752549 (not c!1016299)) b!5752550))

(assert (= (and b!5752550 c!1016296) b!5752560))

(assert (= (and b!5752550 (not c!1016296)) b!5752551))

(assert (= (and b!5752551 c!1016294) b!5752556))

(assert (= (and b!5752551 (not c!1016294)) b!5752558))

(assert (= (or b!5752560 b!5752556) bm!441040))

(assert (= (or b!5752560 b!5752556) bm!441046))

(assert (= (or b!5752560 b!5752556) bm!441044))

(assert (= (or b!5752552 bm!441046) bm!441042))

(assert (= (and d!1812906 res!2428669) b!5752563))

(assert (= (and b!5752563 c!1016298) b!5752553))

(assert (= (and b!5752563 (not c!1016298)) b!5752557))

(assert (= (and b!5752553 res!2428668) b!5752548))

(assert (= (and b!5752557 c!1016295) b!5752559))

(assert (= (and b!5752557 (not c!1016295)) b!5752562))

(assert (= (and b!5752559 res!2428670) b!5752555))

(assert (= (and b!5752562 c!1016293) b!5752561))

(assert (= (and b!5752562 (not c!1016293)) b!5752547))

(assert (= (or b!5752559 b!5752561) bm!441041))

(assert (= (or b!5752548 b!5752555) bm!441045))

(assert (= (or b!5752553 bm!441041) bm!441043))

(declare-fun m!6702294 () Bool)

(assert (=> bm!441043 m!6702294))

(declare-fun m!6702296 () Bool)

(assert (=> bm!441044 m!6702296))

(declare-fun m!6702298 () Bool)

(assert (=> bm!441042 m!6702298))

(declare-fun m!6702300 () Bool)

(assert (=> bm!441045 m!6702300))

(declare-fun m!6702302 () Bool)

(assert (=> bm!441040 m!6702302))

(assert (=> bm!440906 d!1812906))

(declare-fun d!1812908 () Bool)

(declare-fun c!1016300 () Bool)

(assert (=> d!1812908 (= c!1016300 (isEmpty!35345 (tail!11261 s!2326)))))

(declare-fun e!3535372 () Bool)

(assert (=> d!1812908 (= (matchZipper!1899 (derivationStepZipper!1844 lt!2287285 (head!12166 s!2326)) (tail!11261 s!2326)) e!3535372)))

(declare-fun b!5752564 () Bool)

(assert (=> b!5752564 (= e!3535372 (nullableZipper!1692 (derivationStepZipper!1844 lt!2287285 (head!12166 s!2326))))))

(declare-fun b!5752565 () Bool)

(assert (=> b!5752565 (= e!3535372 (matchZipper!1899 (derivationStepZipper!1844 (derivationStepZipper!1844 lt!2287285 (head!12166 s!2326)) (head!12166 (tail!11261 s!2326))) (tail!11261 (tail!11261 s!2326))))))

(assert (= (and d!1812908 c!1016300) b!5752564))

(assert (= (and d!1812908 (not c!1016300)) b!5752565))

(assert (=> d!1812908 m!6701480))

(assert (=> d!1812908 m!6701646))

(assert (=> b!5752564 m!6701832))

(declare-fun m!6702304 () Bool)

(assert (=> b!5752564 m!6702304))

(assert (=> b!5752565 m!6701480))

(assert (=> b!5752565 m!6701880))

(assert (=> b!5752565 m!6701832))

(assert (=> b!5752565 m!6701880))

(declare-fun m!6702306 () Bool)

(assert (=> b!5752565 m!6702306))

(assert (=> b!5752565 m!6701480))

(assert (=> b!5752565 m!6701876))

(assert (=> b!5752565 m!6702306))

(assert (=> b!5752565 m!6701876))

(declare-fun m!6702308 () Bool)

(assert (=> b!5752565 m!6702308))

(assert (=> b!5752017 d!1812908))

(declare-fun bs!1347410 () Bool)

(declare-fun d!1812910 () Bool)

(assert (= bs!1347410 (and d!1812910 b!5750980)))

(declare-fun lambda!312152 () Int)

(assert (=> bs!1347410 (= (= (head!12166 s!2326) (h!69906 s!2326)) (= lambda!312152 lambda!312041))))

(declare-fun bs!1347411 () Bool)

(assert (= bs!1347411 (and d!1812910 d!1812642)))

(assert (=> bs!1347411 (= (= (head!12166 s!2326) (h!69906 s!2326)) (= lambda!312152 lambda!312114))))

(declare-fun bs!1347412 () Bool)

(assert (= bs!1347412 (and d!1812910 d!1812614)))

(assert (=> bs!1347412 (= (= (head!12166 s!2326) (h!69906 s!2326)) (= lambda!312152 lambda!312101))))

(declare-fun bs!1347413 () Bool)

(assert (= bs!1347413 (and d!1812910 d!1812778)))

(assert (=> bs!1347413 (= (= (head!12166 s!2326) (head!12166 (t!376912 s!2326))) (= lambda!312152 lambda!312140))))

(declare-fun bs!1347414 () Bool)

(assert (= bs!1347414 (and d!1812910 d!1812766)))

(assert (=> bs!1347414 (= (= (head!12166 s!2326) (head!12166 (t!376912 s!2326))) (= lambda!312152 lambda!312138))))

(assert (=> d!1812910 true))

(assert (=> d!1812910 (= (derivationStepZipper!1844 lt!2287285 (head!12166 s!2326)) (flatMap!1374 lt!2287285 lambda!312152))))

(declare-fun bs!1347415 () Bool)

(assert (= bs!1347415 d!1812910))

(declare-fun m!6702310 () Bool)

(assert (=> bs!1347415 m!6702310))

(assert (=> b!5752017 d!1812910))

(assert (=> b!5752017 d!1812748))

(assert (=> b!5752017 d!1812750))

(assert (=> d!1812674 d!1812670))

(assert (=> d!1812674 d!1812672))

(declare-fun d!1812912 () Bool)

(assert (=> d!1812912 (= (matchR!7946 lt!2287258 s!2326) (matchRSpec!2864 lt!2287258 s!2326))))

(assert (=> d!1812912 true))

(declare-fun _$88!4046 () Unit!156576)

(assert (=> d!1812912 (= (choose!43612 lt!2287258 s!2326) _$88!4046)))

(declare-fun bs!1347416 () Bool)

(assert (= bs!1347416 d!1812912))

(assert (=> bs!1347416 m!6700980))

(assert (=> bs!1347416 m!6700982))

(assert (=> d!1812674 d!1812912))

(declare-fun b!5752566 () Bool)

(declare-fun res!2428673 () Bool)

(declare-fun e!3535374 () Bool)

(assert (=> b!5752566 (=> (not res!2428673) (not e!3535374))))

(declare-fun call!441053 () Bool)

(assert (=> b!5752566 (= res!2428673 call!441053)))

(declare-fun e!3535377 () Bool)

(assert (=> b!5752566 (= e!3535377 e!3535374)))

(declare-fun b!5752567 () Bool)

(declare-fun call!441054 () Bool)

(assert (=> b!5752567 (= e!3535374 call!441054)))

(declare-fun b!5752568 () Bool)

(declare-fun e!3535376 () Bool)

(assert (=> b!5752568 (= e!3535376 call!441054)))

(declare-fun c!1016302 () Bool)

(declare-fun bm!441047 () Bool)

(declare-fun c!1016301 () Bool)

(declare-fun call!441052 () Bool)

(assert (=> bm!441047 (= call!441052 (validRegex!7497 (ite c!1016301 (reg!16090 lt!2287258) (ite c!1016302 (regTwo!32035 lt!2287258) (regTwo!32034 lt!2287258)))))))

(declare-fun b!5752569 () Bool)

(declare-fun e!3535379 () Bool)

(assert (=> b!5752569 (= e!3535379 call!441052)))

(declare-fun b!5752570 () Bool)

(declare-fun e!3535373 () Bool)

(assert (=> b!5752570 (= e!3535373 e!3535379)))

(declare-fun res!2428671 () Bool)

(assert (=> b!5752570 (= res!2428671 (not (nullable!5793 (reg!16090 lt!2287258))))))

(assert (=> b!5752570 (=> (not res!2428671) (not e!3535379))))

(declare-fun b!5752571 () Bool)

(declare-fun e!3535378 () Bool)

(assert (=> b!5752571 (= e!3535378 e!3535376)))

(declare-fun res!2428672 () Bool)

(assert (=> b!5752571 (=> (not res!2428672) (not e!3535376))))

(assert (=> b!5752571 (= res!2428672 call!441053)))

(declare-fun bm!441048 () Bool)

(assert (=> bm!441048 (= call!441053 (validRegex!7497 (ite c!1016302 (regOne!32035 lt!2287258) (regOne!32034 lt!2287258))))))

(declare-fun bm!441049 () Bool)

(assert (=> bm!441049 (= call!441054 call!441052)))

(declare-fun b!5752573 () Bool)

(declare-fun e!3535375 () Bool)

(assert (=> b!5752573 (= e!3535375 e!3535373)))

(assert (=> b!5752573 (= c!1016301 ((_ is Star!15761) lt!2287258))))

(declare-fun b!5752574 () Bool)

(declare-fun res!2428674 () Bool)

(assert (=> b!5752574 (=> res!2428674 e!3535378)))

(assert (=> b!5752574 (= res!2428674 (not ((_ is Concat!24606) lt!2287258)))))

(assert (=> b!5752574 (= e!3535377 e!3535378)))

(declare-fun d!1812914 () Bool)

(declare-fun res!2428675 () Bool)

(assert (=> d!1812914 (=> res!2428675 e!3535375)))

(assert (=> d!1812914 (= res!2428675 ((_ is ElementMatch!15761) lt!2287258))))

(assert (=> d!1812914 (= (validRegex!7497 lt!2287258) e!3535375)))

(declare-fun b!5752572 () Bool)

(assert (=> b!5752572 (= e!3535373 e!3535377)))

(assert (=> b!5752572 (= c!1016302 ((_ is Union!15761) lt!2287258))))

(assert (= (and d!1812914 (not res!2428675)) b!5752573))

(assert (= (and b!5752573 c!1016301) b!5752570))

(assert (= (and b!5752573 (not c!1016301)) b!5752572))

(assert (= (and b!5752570 res!2428671) b!5752569))

(assert (= (and b!5752572 c!1016302) b!5752566))

(assert (= (and b!5752572 (not c!1016302)) b!5752574))

(assert (= (and b!5752566 res!2428673) b!5752567))

(assert (= (and b!5752574 (not res!2428674)) b!5752571))

(assert (= (and b!5752571 res!2428672) b!5752568))

(assert (= (or b!5752567 b!5752568) bm!441049))

(assert (= (or b!5752566 b!5752571) bm!441048))

(assert (= (or b!5752569 bm!441049) bm!441047))

(declare-fun m!6702312 () Bool)

(assert (=> bm!441047 m!6702312))

(declare-fun m!6702314 () Bool)

(assert (=> b!5752570 m!6702314))

(declare-fun m!6702316 () Bool)

(assert (=> bm!441048 m!6702316))

(assert (=> d!1812674 d!1812914))

(declare-fun d!1812916 () Bool)

(assert (=> d!1812916 (= (nullable!5793 (regTwo!32034 r!7292)) (nullableFct!1838 (regTwo!32034 r!7292)))))

(declare-fun bs!1347417 () Bool)

(assert (= bs!1347417 d!1812916))

(declare-fun m!6702318 () Bool)

(assert (=> bs!1347417 m!6702318))

(assert (=> b!5751997 d!1812916))

(declare-fun bs!1347418 () Bool)

(declare-fun b!5752579 () Bool)

(assert (= bs!1347418 (and b!5752579 b!5752219)))

(declare-fun lambda!312153 () Int)

(assert (=> bs!1347418 (not (= lambda!312153 lambda!312143))))

(declare-fun bs!1347419 () Bool)

(assert (= bs!1347419 (and b!5752579 b!5751872)))

(assert (=> bs!1347419 (not (= lambda!312153 lambda!312134))))

(declare-fun bs!1347420 () Bool)

(assert (= bs!1347420 (and b!5752579 b!5751783)))

(assert (=> bs!1347420 (= (and (= (reg!16090 (regTwo!32035 lt!2287258)) (reg!16090 r!7292)) (= (regTwo!32035 lt!2287258) r!7292)) (= lambda!312153 lambda!312119))))

(declare-fun bs!1347421 () Bool)

(assert (= bs!1347421 (and b!5752579 d!1812626)))

(assert (=> bs!1347421 (not (= lambda!312153 lambda!312113))))

(declare-fun bs!1347422 () Bool)

(assert (= bs!1347422 (and b!5752579 b!5752090)))

(assert (=> bs!1347422 (not (= lambda!312153 lambda!312137))))

(declare-fun bs!1347423 () Bool)

(assert (= bs!1347423 (and b!5752579 b!5750992)))

(assert (=> bs!1347423 (not (= lambda!312153 lambda!312039))))

(assert (=> bs!1347423 (not (= lambda!312153 lambda!312040))))

(declare-fun bs!1347424 () Bool)

(assert (= bs!1347424 (and b!5752579 b!5752216)))

(assert (=> bs!1347424 (= (and (= (reg!16090 (regTwo!32035 lt!2287258)) (reg!16090 (regOne!32035 r!7292))) (= (regTwo!32035 lt!2287258) (regOne!32035 r!7292))) (= lambda!312153 lambda!312142))))

(declare-fun bs!1347425 () Bool)

(assert (= bs!1347425 (and b!5752579 b!5751869)))

(assert (=> bs!1347425 (= (and (= (reg!16090 (regTwo!32035 lt!2287258)) (reg!16090 lt!2287258)) (= (regTwo!32035 lt!2287258) lt!2287258)) (= lambda!312153 lambda!312133))))

(declare-fun bs!1347426 () Bool)

(assert (= bs!1347426 (and b!5752579 b!5752087)))

(assert (=> bs!1347426 (= (and (= (reg!16090 (regTwo!32035 lt!2287258)) (reg!16090 (regOne!32035 lt!2287258))) (= (regTwo!32035 lt!2287258) (regOne!32035 lt!2287258))) (= lambda!312153 lambda!312136))))

(assert (=> bs!1347421 (not (= lambda!312153 lambda!312112))))

(declare-fun bs!1347427 () Bool)

(assert (= bs!1347427 (and b!5752579 d!1812624)))

(assert (=> bs!1347427 (not (= lambda!312153 lambda!312107))))

(declare-fun bs!1347428 () Bool)

(assert (= bs!1347428 (and b!5752579 b!5751786)))

(assert (=> bs!1347428 (not (= lambda!312153 lambda!312120))))

(assert (=> b!5752579 true))

(assert (=> b!5752579 true))

(declare-fun bs!1347429 () Bool)

(declare-fun b!5752582 () Bool)

(assert (= bs!1347429 (and b!5752582 b!5752219)))

(declare-fun lambda!312154 () Int)

(assert (=> bs!1347429 (= (and (= (regOne!32034 (regTwo!32035 lt!2287258)) (regOne!32034 (regOne!32035 r!7292))) (= (regTwo!32034 (regTwo!32035 lt!2287258)) (regTwo!32034 (regOne!32035 r!7292)))) (= lambda!312154 lambda!312143))))

(declare-fun bs!1347430 () Bool)

(assert (= bs!1347430 (and b!5752582 b!5752579)))

(assert (=> bs!1347430 (not (= lambda!312154 lambda!312153))))

(declare-fun bs!1347431 () Bool)

(assert (= bs!1347431 (and b!5752582 b!5751872)))

(assert (=> bs!1347431 (= (and (= (regOne!32034 (regTwo!32035 lt!2287258)) (regOne!32034 lt!2287258)) (= (regTwo!32034 (regTwo!32035 lt!2287258)) (regTwo!32034 lt!2287258))) (= lambda!312154 lambda!312134))))

(declare-fun bs!1347432 () Bool)

(assert (= bs!1347432 (and b!5752582 b!5751783)))

(assert (=> bs!1347432 (not (= lambda!312154 lambda!312119))))

(declare-fun bs!1347433 () Bool)

(assert (= bs!1347433 (and b!5752582 d!1812626)))

(assert (=> bs!1347433 (= (and (= (regOne!32034 (regTwo!32035 lt!2287258)) (regOne!32034 r!7292)) (= (regTwo!32034 (regTwo!32035 lt!2287258)) (regTwo!32034 r!7292))) (= lambda!312154 lambda!312113))))

(declare-fun bs!1347434 () Bool)

(assert (= bs!1347434 (and b!5752582 b!5752090)))

(assert (=> bs!1347434 (= (and (= (regOne!32034 (regTwo!32035 lt!2287258)) (regOne!32034 (regOne!32035 lt!2287258))) (= (regTwo!32034 (regTwo!32035 lt!2287258)) (regTwo!32034 (regOne!32035 lt!2287258)))) (= lambda!312154 lambda!312137))))

(declare-fun bs!1347435 () Bool)

(assert (= bs!1347435 (and b!5752582 b!5750992)))

(assert (=> bs!1347435 (not (= lambda!312154 lambda!312039))))

(assert (=> bs!1347435 (= (and (= (regOne!32034 (regTwo!32035 lt!2287258)) (regOne!32034 r!7292)) (= (regTwo!32034 (regTwo!32035 lt!2287258)) (regTwo!32034 r!7292))) (= lambda!312154 lambda!312040))))

(declare-fun bs!1347436 () Bool)

(assert (= bs!1347436 (and b!5752582 b!5752216)))

(assert (=> bs!1347436 (not (= lambda!312154 lambda!312142))))

(declare-fun bs!1347437 () Bool)

(assert (= bs!1347437 (and b!5752582 b!5751869)))

(assert (=> bs!1347437 (not (= lambda!312154 lambda!312133))))

(declare-fun bs!1347438 () Bool)

(assert (= bs!1347438 (and b!5752582 b!5752087)))

(assert (=> bs!1347438 (not (= lambda!312154 lambda!312136))))

(assert (=> bs!1347433 (not (= lambda!312154 lambda!312112))))

(declare-fun bs!1347439 () Bool)

(assert (= bs!1347439 (and b!5752582 d!1812624)))

(assert (=> bs!1347439 (not (= lambda!312154 lambda!312107))))

(declare-fun bs!1347440 () Bool)

(assert (= bs!1347440 (and b!5752582 b!5751786)))

(assert (=> bs!1347440 (= (and (= (regOne!32034 (regTwo!32035 lt!2287258)) (regOne!32034 r!7292)) (= (regTwo!32034 (regTwo!32035 lt!2287258)) (regTwo!32034 r!7292))) (= lambda!312154 lambda!312120))))

(assert (=> b!5752582 true))

(assert (=> b!5752582 true))

(declare-fun b!5752575 () Bool)

(declare-fun e!3535380 () Bool)

(declare-fun call!441056 () Bool)

(assert (=> b!5752575 (= e!3535380 call!441056)))

(declare-fun bm!441050 () Bool)

(assert (=> bm!441050 (= call!441056 (isEmpty!35345 s!2326))))

(declare-fun b!5752576 () Bool)

(declare-fun c!1016305 () Bool)

(assert (=> b!5752576 (= c!1016305 ((_ is Union!15761) (regTwo!32035 lt!2287258)))))

(declare-fun e!3535386 () Bool)

(declare-fun e!3535384 () Bool)

(assert (=> b!5752576 (= e!3535386 e!3535384)))

(declare-fun b!5752577 () Bool)

(assert (=> b!5752577 (= e!3535386 (= s!2326 (Cons!63458 (c!1015817 (regTwo!32035 lt!2287258)) Nil!63458)))))

(declare-fun b!5752578 () Bool)

(declare-fun c!1016306 () Bool)

(assert (=> b!5752578 (= c!1016306 ((_ is ElementMatch!15761) (regTwo!32035 lt!2287258)))))

(declare-fun e!3535385 () Bool)

(assert (=> b!5752578 (= e!3535385 e!3535386)))

(declare-fun e!3535383 () Bool)

(declare-fun call!441055 () Bool)

(assert (=> b!5752579 (= e!3535383 call!441055)))

(declare-fun d!1812918 () Bool)

(declare-fun c!1016304 () Bool)

(assert (=> d!1812918 (= c!1016304 ((_ is EmptyExpr!15761) (regTwo!32035 lt!2287258)))))

(assert (=> d!1812918 (= (matchRSpec!2864 (regTwo!32035 lt!2287258) s!2326) e!3535380)))

(declare-fun bm!441051 () Bool)

(declare-fun c!1016303 () Bool)

(assert (=> bm!441051 (= call!441055 (Exists!2861 (ite c!1016303 lambda!312153 lambda!312154)))))

(declare-fun b!5752580 () Bool)

(assert (=> b!5752580 (= e!3535380 e!3535385)))

(declare-fun res!2428677 () Bool)

(assert (=> b!5752580 (= res!2428677 (not ((_ is EmptyLang!15761) (regTwo!32035 lt!2287258))))))

(assert (=> b!5752580 (=> (not res!2428677) (not e!3535385))))

(declare-fun b!5752581 () Bool)

(declare-fun e!3535382 () Bool)

(assert (=> b!5752581 (= e!3535384 e!3535382)))

(assert (=> b!5752581 (= c!1016303 ((_ is Star!15761) (regTwo!32035 lt!2287258)))))

(assert (=> b!5752582 (= e!3535382 call!441055)))

(declare-fun b!5752583 () Bool)

(declare-fun e!3535381 () Bool)

(assert (=> b!5752583 (= e!3535384 e!3535381)))

(declare-fun res!2428676 () Bool)

(assert (=> b!5752583 (= res!2428676 (matchRSpec!2864 (regOne!32035 (regTwo!32035 lt!2287258)) s!2326))))

(assert (=> b!5752583 (=> res!2428676 e!3535381)))

(declare-fun b!5752584 () Bool)

(declare-fun res!2428678 () Bool)

(assert (=> b!5752584 (=> res!2428678 e!3535383)))

(assert (=> b!5752584 (= res!2428678 call!441056)))

(assert (=> b!5752584 (= e!3535382 e!3535383)))

(declare-fun b!5752585 () Bool)

(assert (=> b!5752585 (= e!3535381 (matchRSpec!2864 (regTwo!32035 (regTwo!32035 lt!2287258)) s!2326))))

(assert (= (and d!1812918 c!1016304) b!5752575))

(assert (= (and d!1812918 (not c!1016304)) b!5752580))

(assert (= (and b!5752580 res!2428677) b!5752578))

(assert (= (and b!5752578 c!1016306) b!5752577))

(assert (= (and b!5752578 (not c!1016306)) b!5752576))

(assert (= (and b!5752576 c!1016305) b!5752583))

(assert (= (and b!5752576 (not c!1016305)) b!5752581))

(assert (= (and b!5752583 (not res!2428676)) b!5752585))

(assert (= (and b!5752581 c!1016303) b!5752584))

(assert (= (and b!5752581 (not c!1016303)) b!5752582))

(assert (= (and b!5752584 (not res!2428678)) b!5752579))

(assert (= (or b!5752579 b!5752582) bm!441051))

(assert (= (or b!5752575 b!5752584) bm!441050))

(assert (=> bm!441050 m!6701472))

(declare-fun m!6702320 () Bool)

(assert (=> bm!441051 m!6702320))

(declare-fun m!6702322 () Bool)

(assert (=> b!5752583 m!6702322))

(declare-fun m!6702324 () Bool)

(assert (=> b!5752585 m!6702324))

(assert (=> b!5751875 d!1812918))

(declare-fun d!1812920 () Bool)

(assert (=> d!1812920 (= (isEmptyLang!1261 lt!2287379) ((_ is EmptyLang!15761) lt!2287379))))

(assert (=> b!5751605 d!1812920))

(declare-fun d!1812922 () Bool)

(declare-fun c!1016309 () Bool)

(assert (=> d!1812922 (= c!1016309 ((_ is Nil!63460) lt!2287436))))

(declare-fun e!3535389 () (InoxSet Context!10290))

(assert (=> d!1812922 (= (content!11573 lt!2287436) e!3535389)))

(declare-fun b!5752590 () Bool)

(assert (=> b!5752590 (= e!3535389 ((as const (Array Context!10290 Bool)) false))))

(declare-fun b!5752591 () Bool)

(assert (=> b!5752591 (= e!3535389 ((_ map or) (store ((as const (Array Context!10290 Bool)) false) (h!69908 lt!2287436) true) (content!11573 (t!376914 lt!2287436))))))

(assert (= (and d!1812922 c!1016309) b!5752590))

(assert (= (and d!1812922 (not c!1016309)) b!5752591))

(declare-fun m!6702326 () Bool)

(assert (=> b!5752591 m!6702326))

(declare-fun m!6702328 () Bool)

(assert (=> b!5752591 m!6702328))

(assert (=> b!5751878 d!1812922))

(declare-fun bs!1347441 () Bool)

(declare-fun d!1812924 () Bool)

(assert (= bs!1347441 (and d!1812924 b!5751848)))

(declare-fun lambda!312155 () Int)

(assert (=> bs!1347441 (not (= lambda!312155 lambda!312131))))

(declare-fun bs!1347442 () Bool)

(assert (= bs!1347442 (and d!1812924 b!5751845)))

(assert (=> bs!1347442 (not (= lambda!312155 lambda!312129))))

(declare-fun bs!1347443 () Bool)

(assert (= bs!1347443 (and d!1812924 b!5751850)))

(assert (=> bs!1347443 (not (= lambda!312155 lambda!312132))))

(declare-fun bs!1347444 () Bool)

(assert (= bs!1347444 (and d!1812924 d!1812880)))

(assert (=> bs!1347444 (= lambda!312155 lambda!312149)))

(declare-fun bs!1347445 () Bool)

(assert (= bs!1347445 (and d!1812924 d!1812862)))

(assert (=> bs!1347445 (= lambda!312155 lambda!312148)))

(declare-fun bs!1347446 () Bool)

(assert (= bs!1347446 (and d!1812924 d!1812832)))

(assert (=> bs!1347446 (= lambda!312155 lambda!312146)))

(declare-fun bs!1347447 () Bool)

(assert (= bs!1347447 (and d!1812924 b!5751843)))

(assert (=> bs!1347447 (not (= lambda!312155 lambda!312128))))

(assert (=> d!1812924 (= (nullableZipper!1692 lt!2287280) (exists!2235 lt!2287280 lambda!312155))))

(declare-fun bs!1347448 () Bool)

(assert (= bs!1347448 d!1812924))

(declare-fun m!6702330 () Bool)

(assert (=> bs!1347448 m!6702330))

(assert (=> b!5751701 d!1812924))

(assert (=> bs!1347290 d!1812646))

(declare-fun d!1812926 () Bool)

(assert (=> d!1812926 (= (nullable!5793 (reg!16090 r!7292)) (nullableFct!1838 (reg!16090 r!7292)))))

(declare-fun bs!1347449 () Bool)

(assert (= bs!1347449 d!1812926))

(declare-fun m!6702332 () Bool)

(assert (=> bs!1347449 m!6702332))

(assert (=> b!5751574 d!1812926))

(declare-fun d!1812928 () Bool)

(assert (=> d!1812928 (= (isConcat!774 lt!2287388) ((_ is Concat!24606) lt!2287388))))

(assert (=> b!5751656 d!1812928))

(declare-fun b!5752592 () Bool)

(declare-fun res!2428681 () Bool)

(declare-fun e!3535391 () Bool)

(assert (=> b!5752592 (=> (not res!2428681) (not e!3535391))))

(declare-fun call!441058 () Bool)

(assert (=> b!5752592 (= res!2428681 call!441058)))

(declare-fun e!3535394 () Bool)

(assert (=> b!5752592 (= e!3535394 e!3535391)))

(declare-fun b!5752593 () Bool)

(declare-fun call!441059 () Bool)

(assert (=> b!5752593 (= e!3535391 call!441059)))

(declare-fun b!5752594 () Bool)

(declare-fun e!3535393 () Bool)

(assert (=> b!5752594 (= e!3535393 call!441059)))

(declare-fun bm!441052 () Bool)

(declare-fun c!1016310 () Bool)

(declare-fun c!1016311 () Bool)

(declare-fun call!441057 () Bool)

(assert (=> bm!441052 (= call!441057 (validRegex!7497 (ite c!1016310 (reg!16090 lt!2287445) (ite c!1016311 (regTwo!32035 lt!2287445) (regTwo!32034 lt!2287445)))))))

(declare-fun b!5752595 () Bool)

(declare-fun e!3535396 () Bool)

(assert (=> b!5752595 (= e!3535396 call!441057)))

(declare-fun b!5752596 () Bool)

(declare-fun e!3535390 () Bool)

(assert (=> b!5752596 (= e!3535390 e!3535396)))

(declare-fun res!2428679 () Bool)

(assert (=> b!5752596 (= res!2428679 (not (nullable!5793 (reg!16090 lt!2287445))))))

(assert (=> b!5752596 (=> (not res!2428679) (not e!3535396))))

(declare-fun b!5752597 () Bool)

(declare-fun e!3535395 () Bool)

(assert (=> b!5752597 (= e!3535395 e!3535393)))

(declare-fun res!2428680 () Bool)

(assert (=> b!5752597 (=> (not res!2428680) (not e!3535393))))

(assert (=> b!5752597 (= res!2428680 call!441058)))

(declare-fun bm!441053 () Bool)

(assert (=> bm!441053 (= call!441058 (validRegex!7497 (ite c!1016311 (regOne!32035 lt!2287445) (regOne!32034 lt!2287445))))))

(declare-fun bm!441054 () Bool)

(assert (=> bm!441054 (= call!441059 call!441057)))

(declare-fun b!5752599 () Bool)

(declare-fun e!3535392 () Bool)

(assert (=> b!5752599 (= e!3535392 e!3535390)))

(assert (=> b!5752599 (= c!1016310 ((_ is Star!15761) lt!2287445))))

(declare-fun b!5752600 () Bool)

(declare-fun res!2428682 () Bool)

(assert (=> b!5752600 (=> res!2428682 e!3535395)))

(assert (=> b!5752600 (= res!2428682 (not ((_ is Concat!24606) lt!2287445)))))

(assert (=> b!5752600 (= e!3535394 e!3535395)))

(declare-fun d!1812930 () Bool)

(declare-fun res!2428683 () Bool)

(assert (=> d!1812930 (=> res!2428683 e!3535392)))

(assert (=> d!1812930 (= res!2428683 ((_ is ElementMatch!15761) lt!2287445))))

(assert (=> d!1812930 (= (validRegex!7497 lt!2287445) e!3535392)))

(declare-fun b!5752598 () Bool)

(assert (=> b!5752598 (= e!3535390 e!3535394)))

(assert (=> b!5752598 (= c!1016311 ((_ is Union!15761) lt!2287445))))

(assert (= (and d!1812930 (not res!2428683)) b!5752599))

(assert (= (and b!5752599 c!1016310) b!5752596))

(assert (= (and b!5752599 (not c!1016310)) b!5752598))

(assert (= (and b!5752596 res!2428679) b!5752595))

(assert (= (and b!5752598 c!1016311) b!5752592))

(assert (= (and b!5752598 (not c!1016311)) b!5752600))

(assert (= (and b!5752592 res!2428681) b!5752593))

(assert (= (and b!5752600 (not res!2428682)) b!5752597))

(assert (= (and b!5752597 res!2428680) b!5752594))

(assert (= (or b!5752593 b!5752594) bm!441054))

(assert (= (or b!5752592 b!5752597) bm!441053))

(assert (= (or b!5752595 bm!441054) bm!441052))

(declare-fun m!6702334 () Bool)

(assert (=> bm!441052 m!6702334))

(declare-fun m!6702336 () Bool)

(assert (=> b!5752596 m!6702336))

(declare-fun m!6702338 () Bool)

(assert (=> bm!441053 m!6702338))

(assert (=> d!1812708 d!1812930))

(declare-fun d!1812932 () Bool)

(declare-fun res!2428684 () Bool)

(declare-fun e!3535397 () Bool)

(assert (=> d!1812932 (=> res!2428684 e!3535397)))

(assert (=> d!1812932 (= res!2428684 ((_ is Nil!63459) (t!376913 (exprs!5645 (h!69908 zl!343)))))))

(assert (=> d!1812932 (= (forall!14881 (t!376913 (exprs!5645 (h!69908 zl!343))) lambda!312135) e!3535397)))

(declare-fun b!5752601 () Bool)

(declare-fun e!3535398 () Bool)

(assert (=> b!5752601 (= e!3535397 e!3535398)))

(declare-fun res!2428685 () Bool)

(assert (=> b!5752601 (=> (not res!2428685) (not e!3535398))))

(assert (=> b!5752601 (= res!2428685 (dynLambda!24839 lambda!312135 (h!69907 (t!376913 (exprs!5645 (h!69908 zl!343))))))))

(declare-fun b!5752602 () Bool)

(assert (=> b!5752602 (= e!3535398 (forall!14881 (t!376913 (t!376913 (exprs!5645 (h!69908 zl!343)))) lambda!312135))))

(assert (= (and d!1812932 (not res!2428684)) b!5752601))

(assert (= (and b!5752601 res!2428685) b!5752602))

(declare-fun b_lambda!217279 () Bool)

(assert (=> (not b_lambda!217279) (not b!5752601)))

(declare-fun m!6702340 () Bool)

(assert (=> b!5752601 m!6702340))

(declare-fun m!6702342 () Bool)

(assert (=> b!5752602 m!6702342))

(assert (=> d!1812708 d!1812932))

(declare-fun d!1812934 () Bool)

(assert (=> d!1812934 (= (isEmpty!35342 (tail!11262 (t!376913 (exprs!5645 (h!69908 zl!343))))) ((_ is Nil!63459) (tail!11262 (t!376913 (exprs!5645 (h!69908 zl!343))))))))

(assert (=> b!5751985 d!1812934))

(declare-fun d!1812936 () Bool)

(assert (=> d!1812936 (= (tail!11262 (t!376913 (exprs!5645 (h!69908 zl!343)))) (t!376913 (t!376913 (exprs!5645 (h!69908 zl!343)))))))

(assert (=> b!5751985 d!1812936))

(declare-fun bs!1347450 () Bool)

(declare-fun d!1812938 () Bool)

(assert (= bs!1347450 (and d!1812938 d!1812772)))

(declare-fun lambda!312156 () Int)

(assert (=> bs!1347450 (= lambda!312156 lambda!312139)))

(declare-fun bs!1347451 () Bool)

(assert (= bs!1347451 (and d!1812938 d!1812606)))

(assert (=> bs!1347451 (= lambda!312156 lambda!312098)))

(declare-fun bs!1347452 () Bool)

(assert (= bs!1347452 (and d!1812938 d!1812856)))

(assert (=> bs!1347452 (= lambda!312156 lambda!312147)))

(declare-fun bs!1347453 () Bool)

(assert (= bs!1347453 (and d!1812938 d!1812708)))

(assert (=> bs!1347453 (= lambda!312156 lambda!312135)))

(declare-fun bs!1347454 () Bool)

(assert (= bs!1347454 (and d!1812938 d!1812602)))

(assert (=> bs!1347454 (= lambda!312156 lambda!312094)))

(declare-fun bs!1347455 () Bool)

(assert (= bs!1347455 (and d!1812938 d!1812782)))

(assert (=> bs!1347455 (= lambda!312156 lambda!312141)))

(declare-fun bs!1347456 () Bool)

(assert (= bs!1347456 (and d!1812938 d!1812888)))

(assert (=> bs!1347456 (= lambda!312156 lambda!312151)))

(declare-fun bs!1347457 () Bool)

(assert (= bs!1347457 (and d!1812938 d!1812616)))

(assert (=> bs!1347457 (= lambda!312156 lambda!312104)))

(declare-fun bs!1347458 () Bool)

(assert (= bs!1347458 (and d!1812938 d!1812604)))

(assert (=> bs!1347458 (= lambda!312156 lambda!312097)))

(declare-fun bs!1347459 () Bool)

(assert (= bs!1347459 (and d!1812938 d!1812600)))

(assert (=> bs!1347459 (= lambda!312156 lambda!312091)))

(declare-fun bs!1347460 () Bool)

(assert (= bs!1347460 (and d!1812938 d!1812886)))

(assert (=> bs!1347460 (= lambda!312156 lambda!312150)))

(assert (=> d!1812938 (= (inv!82649 setElem!38613) (forall!14881 (exprs!5645 setElem!38613) lambda!312156))))

(declare-fun bs!1347461 () Bool)

(assert (= bs!1347461 d!1812938))

(declare-fun m!6702344 () Bool)

(assert (=> bs!1347461 m!6702344))

(assert (=> setNonEmpty!38613 d!1812938))

(declare-fun b!5752603 () Bool)

(declare-fun e!3535402 () Bool)

(declare-fun lt!2287483 () Int)

(assert (=> b!5752603 (= e!3535402 (= lt!2287483 1))))

(declare-fun b!5752604 () Bool)

(declare-fun e!3535408 () Bool)

(declare-fun call!441062 () Int)

(assert (=> b!5752604 (= e!3535408 (> lt!2287483 call!441062))))

(declare-fun c!1016315 () Bool)

(declare-fun call!441065 () Int)

(declare-fun bm!441055 () Bool)

(assert (=> bm!441055 (= call!441065 (regexDepth!238 (ite c!1016315 (regTwo!32035 (ite c!1016129 (regOne!32035 lt!2287295) (ite c!1016126 (regOne!32034 lt!2287295) (reg!16090 lt!2287295)))) (regOne!32034 (ite c!1016129 (regOne!32035 lt!2287295) (ite c!1016126 (regOne!32034 lt!2287295) (reg!16090 lt!2287295)))))))))

(declare-fun bm!441056 () Bool)

(declare-fun call!441063 () Int)

(declare-fun call!441060 () Int)

(assert (=> bm!441056 (= call!441063 call!441060)))

(declare-fun b!5752605 () Bool)

(declare-fun e!3535400 () Int)

(declare-fun e!3535403 () Int)

(assert (=> b!5752605 (= e!3535400 e!3535403)))

(declare-fun c!1016318 () Bool)

(assert (=> b!5752605 (= c!1016318 ((_ is Star!15761) (ite c!1016129 (regOne!32035 lt!2287295) (ite c!1016126 (regOne!32034 lt!2287295) (reg!16090 lt!2287295)))))))

(declare-fun b!5752606 () Bool)

(assert (=> b!5752606 (= c!1016315 ((_ is Union!15761) (ite c!1016129 (regOne!32035 lt!2287295) (ite c!1016126 (regOne!32034 lt!2287295) (reg!16090 lt!2287295)))))))

(declare-fun e!3535401 () Int)

(assert (=> b!5752606 (= e!3535403 e!3535401)))

(declare-fun b!5752607 () Bool)

(declare-fun e!3535405 () Int)

(assert (=> b!5752607 (= e!3535401 e!3535405)))

(declare-fun c!1016313 () Bool)

(assert (=> b!5752607 (= c!1016313 ((_ is Concat!24606) (ite c!1016129 (regOne!32035 lt!2287295) (ite c!1016126 (regOne!32034 lt!2287295) (reg!16090 lt!2287295)))))))

(declare-fun bm!441057 () Bool)

(declare-fun call!441064 () Int)

(assert (=> bm!441057 (= call!441064 (regexDepth!238 (ite c!1016318 (reg!16090 (ite c!1016129 (regOne!32035 lt!2287295) (ite c!1016126 (regOne!32034 lt!2287295) (reg!16090 lt!2287295)))) (ite c!1016315 (regOne!32035 (ite c!1016129 (regOne!32035 lt!2287295) (ite c!1016126 (regOne!32034 lt!2287295) (reg!16090 lt!2287295)))) (regTwo!32034 (ite c!1016129 (regOne!32035 lt!2287295) (ite c!1016126 (regOne!32034 lt!2287295) (reg!16090 lt!2287295))))))))))

(declare-fun b!5752608 () Bool)

(assert (=> b!5752608 (= e!3535403 (+ 1 call!441064))))

(declare-fun b!5752609 () Bool)

(declare-fun e!3535407 () Bool)

(assert (=> b!5752609 (= e!3535407 e!3535408)))

(declare-fun res!2428686 () Bool)

(assert (=> b!5752609 (= res!2428686 (> lt!2287483 call!441060))))

(assert (=> b!5752609 (=> (not res!2428686) (not e!3535408))))

(declare-fun b!5752611 () Bool)

(declare-fun e!3535399 () Bool)

(assert (=> b!5752611 (= e!3535399 (> lt!2287483 call!441062))))

(declare-fun b!5752612 () Bool)

(declare-fun call!441061 () Int)

(assert (=> b!5752612 (= e!3535405 (+ 1 call!441061))))

(declare-fun b!5752613 () Bool)

(declare-fun e!3535404 () Bool)

(assert (=> b!5752613 (= e!3535407 e!3535404)))

(declare-fun c!1016314 () Bool)

(assert (=> b!5752613 (= c!1016314 ((_ is Concat!24606) (ite c!1016129 (regOne!32035 lt!2287295) (ite c!1016126 (regOne!32034 lt!2287295) (reg!16090 lt!2287295)))))))

(declare-fun c!1016317 () Bool)

(declare-fun bm!441058 () Bool)

(assert (=> bm!441058 (= call!441060 (regexDepth!238 (ite c!1016317 (regOne!32035 (ite c!1016129 (regOne!32035 lt!2287295) (ite c!1016126 (regOne!32034 lt!2287295) (reg!16090 lt!2287295)))) (ite c!1016314 (regOne!32034 (ite c!1016129 (regOne!32035 lt!2287295) (ite c!1016126 (regOne!32034 lt!2287295) (reg!16090 lt!2287295)))) (reg!16090 (ite c!1016129 (regOne!32035 lt!2287295) (ite c!1016126 (regOne!32034 lt!2287295) (reg!16090 lt!2287295))))))))))

(declare-fun call!441066 () Int)

(declare-fun bm!441059 () Bool)

(assert (=> bm!441059 (= call!441061 (maxBigInt!0 (ite c!1016315 call!441066 call!441065) (ite c!1016315 call!441065 call!441066)))))

(declare-fun b!5752614 () Bool)

(assert (=> b!5752614 (= e!3535405 1)))

(declare-fun b!5752615 () Bool)

(declare-fun res!2428688 () Bool)

(assert (=> b!5752615 (=> (not res!2428688) (not e!3535399))))

(assert (=> b!5752615 (= res!2428688 (> lt!2287483 call!441063))))

(assert (=> b!5752615 (= e!3535404 e!3535399)))

(declare-fun b!5752616 () Bool)

(assert (=> b!5752616 (= e!3535401 (+ 1 call!441061))))

(declare-fun b!5752617 () Bool)

(assert (=> b!5752617 (= e!3535402 (> lt!2287483 call!441063))))

(declare-fun c!1016312 () Bool)

(declare-fun b!5752618 () Bool)

(assert (=> b!5752618 (= c!1016312 ((_ is Star!15761) (ite c!1016129 (regOne!32035 lt!2287295) (ite c!1016126 (regOne!32034 lt!2287295) (reg!16090 lt!2287295)))))))

(assert (=> b!5752618 (= e!3535404 e!3535402)))

(declare-fun b!5752619 () Bool)

(declare-fun e!3535406 () Bool)

(assert (=> b!5752619 (= e!3535406 e!3535407)))

(assert (=> b!5752619 (= c!1016317 ((_ is Union!15761) (ite c!1016129 (regOne!32035 lt!2287295) (ite c!1016126 (regOne!32034 lt!2287295) (reg!16090 lt!2287295)))))))

(declare-fun d!1812940 () Bool)

(assert (=> d!1812940 e!3535406))

(declare-fun res!2428687 () Bool)

(assert (=> d!1812940 (=> (not res!2428687) (not e!3535406))))

(assert (=> d!1812940 (= res!2428687 (> lt!2287483 0))))

(assert (=> d!1812940 (= lt!2287483 e!3535400)))

(declare-fun c!1016316 () Bool)

(assert (=> d!1812940 (= c!1016316 ((_ is ElementMatch!15761) (ite c!1016129 (regOne!32035 lt!2287295) (ite c!1016126 (regOne!32034 lt!2287295) (reg!16090 lt!2287295)))))))

(assert (=> d!1812940 (= (regexDepth!238 (ite c!1016129 (regOne!32035 lt!2287295) (ite c!1016126 (regOne!32034 lt!2287295) (reg!16090 lt!2287295)))) lt!2287483)))

(declare-fun b!5752610 () Bool)

(assert (=> b!5752610 (= e!3535400 1)))

(declare-fun bm!441060 () Bool)

(assert (=> bm!441060 (= call!441062 (regexDepth!238 (ite c!1016317 (regTwo!32035 (ite c!1016129 (regOne!32035 lt!2287295) (ite c!1016126 (regOne!32034 lt!2287295) (reg!16090 lt!2287295)))) (regTwo!32034 (ite c!1016129 (regOne!32035 lt!2287295) (ite c!1016126 (regOne!32034 lt!2287295) (reg!16090 lt!2287295)))))))))

(declare-fun bm!441061 () Bool)

(assert (=> bm!441061 (= call!441066 call!441064)))

(assert (= (and d!1812940 c!1016316) b!5752610))

(assert (= (and d!1812940 (not c!1016316)) b!5752605))

(assert (= (and b!5752605 c!1016318) b!5752608))

(assert (= (and b!5752605 (not c!1016318)) b!5752606))

(assert (= (and b!5752606 c!1016315) b!5752616))

(assert (= (and b!5752606 (not c!1016315)) b!5752607))

(assert (= (and b!5752607 c!1016313) b!5752612))

(assert (= (and b!5752607 (not c!1016313)) b!5752614))

(assert (= (or b!5752616 b!5752612) bm!441055))

(assert (= (or b!5752616 b!5752612) bm!441061))

(assert (= (or b!5752616 b!5752612) bm!441059))

(assert (= (or b!5752608 bm!441061) bm!441057))

(assert (= (and d!1812940 res!2428687) b!5752619))

(assert (= (and b!5752619 c!1016317) b!5752609))

(assert (= (and b!5752619 (not c!1016317)) b!5752613))

(assert (= (and b!5752609 res!2428686) b!5752604))

(assert (= (and b!5752613 c!1016314) b!5752615))

(assert (= (and b!5752613 (not c!1016314)) b!5752618))

(assert (= (and b!5752615 res!2428688) b!5752611))

(assert (= (and b!5752618 c!1016312) b!5752617))

(assert (= (and b!5752618 (not c!1016312)) b!5752603))

(assert (= (or b!5752615 b!5752617) bm!441056))

(assert (= (or b!5752604 b!5752611) bm!441060))

(assert (= (or b!5752609 bm!441056) bm!441058))

(declare-fun m!6702346 () Bool)

(assert (=> bm!441058 m!6702346))

(declare-fun m!6702348 () Bool)

(assert (=> bm!441059 m!6702348))

(declare-fun m!6702350 () Bool)

(assert (=> bm!441057 m!6702350))

(declare-fun m!6702352 () Bool)

(assert (=> bm!441060 m!6702352))

(declare-fun m!6702354 () Bool)

(assert (=> bm!441055 m!6702354))

(assert (=> bm!440914 d!1812940))

(declare-fun d!1812942 () Bool)

(assert (=> d!1812942 (= (head!12167 (t!376913 (exprs!5645 (h!69908 zl!343)))) (h!69907 (t!376913 (exprs!5645 (h!69908 zl!343)))))))

(assert (=> b!5751981 d!1812942))

(assert (=> b!5751819 d!1812748))

(assert (=> b!5751861 d!1812752))

(assert (=> b!5751861 d!1812750))

(declare-fun d!1812944 () Bool)

(declare-fun c!1016319 () Bool)

(assert (=> d!1812944 (= c!1016319 (isEmpty!35345 (tail!11261 s!2326)))))

(declare-fun e!3535409 () Bool)

(assert (=> d!1812944 (= (matchZipper!1899 (derivationStepZipper!1844 z!1189 (head!12166 s!2326)) (tail!11261 s!2326)) e!3535409)))

(declare-fun b!5752620 () Bool)

(assert (=> b!5752620 (= e!3535409 (nullableZipper!1692 (derivationStepZipper!1844 z!1189 (head!12166 s!2326))))))

(declare-fun b!5752621 () Bool)

(assert (=> b!5752621 (= e!3535409 (matchZipper!1899 (derivationStepZipper!1844 (derivationStepZipper!1844 z!1189 (head!12166 s!2326)) (head!12166 (tail!11261 s!2326))) (tail!11261 (tail!11261 s!2326))))))

(assert (= (and d!1812944 c!1016319) b!5752620))

(assert (= (and d!1812944 (not c!1016319)) b!5752621))

(assert (=> d!1812944 m!6701480))

(assert (=> d!1812944 m!6701646))

(assert (=> b!5752620 m!6701478))

(declare-fun m!6702356 () Bool)

(assert (=> b!5752620 m!6702356))

(assert (=> b!5752621 m!6701480))

(assert (=> b!5752621 m!6701880))

(assert (=> b!5752621 m!6701478))

(assert (=> b!5752621 m!6701880))

(declare-fun m!6702358 () Bool)

(assert (=> b!5752621 m!6702358))

(assert (=> b!5752621 m!6701480))

(assert (=> b!5752621 m!6701876))

(assert (=> b!5752621 m!6702358))

(assert (=> b!5752621 m!6701876))

(declare-fun m!6702360 () Bool)

(assert (=> b!5752621 m!6702360))

(assert (=> b!5751551 d!1812944))

(declare-fun bs!1347462 () Bool)

(declare-fun d!1812946 () Bool)

(assert (= bs!1347462 (and d!1812946 d!1812910)))

(declare-fun lambda!312157 () Int)

(assert (=> bs!1347462 (= lambda!312157 lambda!312152)))

(declare-fun bs!1347463 () Bool)

(assert (= bs!1347463 (and d!1812946 b!5750980)))

(assert (=> bs!1347463 (= (= (head!12166 s!2326) (h!69906 s!2326)) (= lambda!312157 lambda!312041))))

(declare-fun bs!1347464 () Bool)

(assert (= bs!1347464 (and d!1812946 d!1812642)))

(assert (=> bs!1347464 (= (= (head!12166 s!2326) (h!69906 s!2326)) (= lambda!312157 lambda!312114))))

(declare-fun bs!1347465 () Bool)

(assert (= bs!1347465 (and d!1812946 d!1812614)))

(assert (=> bs!1347465 (= (= (head!12166 s!2326) (h!69906 s!2326)) (= lambda!312157 lambda!312101))))

(declare-fun bs!1347466 () Bool)

(assert (= bs!1347466 (and d!1812946 d!1812778)))

(assert (=> bs!1347466 (= (= (head!12166 s!2326) (head!12166 (t!376912 s!2326))) (= lambda!312157 lambda!312140))))

(declare-fun bs!1347467 () Bool)

(assert (= bs!1347467 (and d!1812946 d!1812766)))

(assert (=> bs!1347467 (= (= (head!12166 s!2326) (head!12166 (t!376912 s!2326))) (= lambda!312157 lambda!312138))))

(assert (=> d!1812946 true))

(assert (=> d!1812946 (= (derivationStepZipper!1844 z!1189 (head!12166 s!2326)) (flatMap!1374 z!1189 lambda!312157))))

(declare-fun bs!1347468 () Bool)

(assert (= bs!1347468 d!1812946))

(declare-fun m!6702362 () Bool)

(assert (=> bs!1347468 m!6702362))

(assert (=> b!5751551 d!1812946))

(assert (=> b!5751551 d!1812748))

(assert (=> b!5751551 d!1812750))

(declare-fun d!1812948 () Bool)

(assert (=> d!1812948 true))

(declare-fun setRes!38618 () Bool)

(assert (=> d!1812948 setRes!38618))

(declare-fun condSetEmpty!38618 () Bool)

(declare-fun res!2428689 () (InoxSet Context!10290))

(assert (=> d!1812948 (= condSetEmpty!38618 (= res!2428689 ((as const (Array Context!10290 Bool)) false)))))

(assert (=> d!1812948 (= (choose!43607 lt!2287280 lambda!312041) res!2428689)))

(declare-fun setIsEmpty!38618 () Bool)

(assert (=> setIsEmpty!38618 setRes!38618))

(declare-fun tp!1589875 () Bool)

(declare-fun setElem!38618 () Context!10290)

(declare-fun e!3535410 () Bool)

(declare-fun setNonEmpty!38618 () Bool)

(assert (=> setNonEmpty!38618 (= setRes!38618 (and tp!1589875 (inv!82649 setElem!38618) e!3535410))))

(declare-fun setRest!38618 () (InoxSet Context!10290))

(assert (=> setNonEmpty!38618 (= res!2428689 ((_ map or) (store ((as const (Array Context!10290 Bool)) false) setElem!38618 true) setRest!38618))))

(declare-fun b!5752622 () Bool)

(declare-fun tp!1589876 () Bool)

(assert (=> b!5752622 (= e!3535410 tp!1589876)))

(assert (= (and d!1812948 condSetEmpty!38618) setIsEmpty!38618))

(assert (= (and d!1812948 (not condSetEmpty!38618)) setNonEmpty!38618))

(assert (= setNonEmpty!38618 b!5752622))

(declare-fun m!6702364 () Bool)

(assert (=> setNonEmpty!38618 m!6702364))

(assert (=> d!1812608 d!1812948))

(assert (=> b!5752012 d!1812752))

(assert (=> b!5752012 d!1812750))

(declare-fun b!5752625 () Bool)

(declare-fun res!2428690 () Bool)

(declare-fun e!3535412 () Bool)

(assert (=> b!5752625 (=> (not res!2428690) (not e!3535412))))

(declare-fun lt!2287484 () List!63582)

(assert (=> b!5752625 (= res!2428690 (= (size!40069 lt!2287484) (+ (size!40069 (_1!36161 (get!21893 lt!2287396))) (size!40069 (_2!36161 (get!21893 lt!2287396))))))))

(declare-fun b!5752623 () Bool)

(declare-fun e!3535411 () List!63582)

(assert (=> b!5752623 (= e!3535411 (_2!36161 (get!21893 lt!2287396)))))

(declare-fun b!5752626 () Bool)

(assert (=> b!5752626 (= e!3535412 (or (not (= (_2!36161 (get!21893 lt!2287396)) Nil!63458)) (= lt!2287484 (_1!36161 (get!21893 lt!2287396)))))))

(declare-fun b!5752624 () Bool)

(assert (=> b!5752624 (= e!3535411 (Cons!63458 (h!69906 (_1!36161 (get!21893 lt!2287396))) (++!13979 (t!376912 (_1!36161 (get!21893 lt!2287396))) (_2!36161 (get!21893 lt!2287396)))))))

(declare-fun d!1812950 () Bool)

(assert (=> d!1812950 e!3535412))

(declare-fun res!2428691 () Bool)

(assert (=> d!1812950 (=> (not res!2428691) (not e!3535412))))

(assert (=> d!1812950 (= res!2428691 (= (content!11575 lt!2287484) ((_ map or) (content!11575 (_1!36161 (get!21893 lt!2287396))) (content!11575 (_2!36161 (get!21893 lt!2287396))))))))

(assert (=> d!1812950 (= lt!2287484 e!3535411)))

(declare-fun c!1016320 () Bool)

(assert (=> d!1812950 (= c!1016320 ((_ is Nil!63458) (_1!36161 (get!21893 lt!2287396))))))

(assert (=> d!1812950 (= (++!13979 (_1!36161 (get!21893 lt!2287396)) (_2!36161 (get!21893 lt!2287396))) lt!2287484)))

(assert (= (and d!1812950 c!1016320) b!5752623))

(assert (= (and d!1812950 (not c!1016320)) b!5752624))

(assert (= (and d!1812950 res!2428691) b!5752625))

(assert (= (and b!5752625 res!2428690) b!5752626))

(declare-fun m!6702366 () Bool)

(assert (=> b!5752625 m!6702366))

(declare-fun m!6702368 () Bool)

(assert (=> b!5752625 m!6702368))

(declare-fun m!6702370 () Bool)

(assert (=> b!5752625 m!6702370))

(declare-fun m!6702372 () Bool)

(assert (=> b!5752624 m!6702372))

(declare-fun m!6702374 () Bool)

(assert (=> d!1812950 m!6702374))

(declare-fun m!6702376 () Bool)

(assert (=> d!1812950 m!6702376))

(declare-fun m!6702378 () Bool)

(assert (=> d!1812950 m!6702378))

(assert (=> b!5751686 d!1812950))

(assert (=> b!5751686 d!1812756))

(assert (=> b!5751828 d!1812752))

(assert (=> b!5751828 d!1812750))

(declare-fun d!1812952 () Bool)

(declare-fun c!1016321 () Bool)

(assert (=> d!1812952 (= c!1016321 (isEmpty!35345 (tail!11261 (t!376912 s!2326))))))

(declare-fun e!3535413 () Bool)

(assert (=> d!1812952 (= (matchZipper!1899 (derivationStepZipper!1844 lt!2287286 (head!12166 (t!376912 s!2326))) (tail!11261 (t!376912 s!2326))) e!3535413)))

(declare-fun b!5752627 () Bool)

(assert (=> b!5752627 (= e!3535413 (nullableZipper!1692 (derivationStepZipper!1844 lt!2287286 (head!12166 (t!376912 s!2326)))))))

(declare-fun b!5752628 () Bool)

(assert (=> b!5752628 (= e!3535413 (matchZipper!1899 (derivationStepZipper!1844 (derivationStepZipper!1844 lt!2287286 (head!12166 (t!376912 s!2326))) (head!12166 (tail!11261 (t!376912 s!2326)))) (tail!11261 (tail!11261 (t!376912 s!2326)))))))

(assert (= (and d!1812952 c!1016321) b!5752627))

(assert (= (and d!1812952 (not c!1016321)) b!5752628))

(assert (=> d!1812952 m!6701600))

(assert (=> d!1812952 m!6701922))

(assert (=> b!5752627 m!6701598))

(declare-fun m!6702380 () Bool)

(assert (=> b!5752627 m!6702380))

(assert (=> b!5752628 m!6701600))

(assert (=> b!5752628 m!6701926))

(assert (=> b!5752628 m!6701598))

(assert (=> b!5752628 m!6701926))

(declare-fun m!6702382 () Bool)

(assert (=> b!5752628 m!6702382))

(assert (=> b!5752628 m!6701600))

(assert (=> b!5752628 m!6701930))

(assert (=> b!5752628 m!6702382))

(assert (=> b!5752628 m!6701930))

(declare-fun m!6702384 () Bool)

(assert (=> b!5752628 m!6702384))

(assert (=> b!5751704 d!1812952))

(declare-fun bs!1347469 () Bool)

(declare-fun d!1812954 () Bool)

(assert (= bs!1347469 (and d!1812954 d!1812910)))

(declare-fun lambda!312158 () Int)

(assert (=> bs!1347469 (= (= (head!12166 (t!376912 s!2326)) (head!12166 s!2326)) (= lambda!312158 lambda!312152))))

(declare-fun bs!1347470 () Bool)

(assert (= bs!1347470 (and d!1812954 b!5750980)))

(assert (=> bs!1347470 (= (= (head!12166 (t!376912 s!2326)) (h!69906 s!2326)) (= lambda!312158 lambda!312041))))

(declare-fun bs!1347471 () Bool)

(assert (= bs!1347471 (and d!1812954 d!1812946)))

(assert (=> bs!1347471 (= (= (head!12166 (t!376912 s!2326)) (head!12166 s!2326)) (= lambda!312158 lambda!312157))))

(declare-fun bs!1347472 () Bool)

(assert (= bs!1347472 (and d!1812954 d!1812642)))

(assert (=> bs!1347472 (= (= (head!12166 (t!376912 s!2326)) (h!69906 s!2326)) (= lambda!312158 lambda!312114))))

(declare-fun bs!1347473 () Bool)

(assert (= bs!1347473 (and d!1812954 d!1812614)))

(assert (=> bs!1347473 (= (= (head!12166 (t!376912 s!2326)) (h!69906 s!2326)) (= lambda!312158 lambda!312101))))

(declare-fun bs!1347474 () Bool)

(assert (= bs!1347474 (and d!1812954 d!1812778)))

(assert (=> bs!1347474 (= lambda!312158 lambda!312140)))

(declare-fun bs!1347475 () Bool)

(assert (= bs!1347475 (and d!1812954 d!1812766)))

(assert (=> bs!1347475 (= lambda!312158 lambda!312138)))

(assert (=> d!1812954 true))

(assert (=> d!1812954 (= (derivationStepZipper!1844 lt!2287286 (head!12166 (t!376912 s!2326))) (flatMap!1374 lt!2287286 lambda!312158))))

(declare-fun bs!1347476 () Bool)

(assert (= bs!1347476 d!1812954))

(declare-fun m!6702386 () Bool)

(assert (=> bs!1347476 m!6702386))

(assert (=> b!5751704 d!1812954))

(assert (=> b!5751704 d!1812768))

(assert (=> b!5751704 d!1812770))

(assert (=> d!1812662 d!1812664))

(assert (=> d!1812662 d!1812638))

(declare-fun e!3535423 () Bool)

(declare-fun d!1812956 () Bool)

(assert (=> d!1812956 (= (matchZipper!1899 ((_ map or) lt!2287262 lt!2287265) (t!376912 s!2326)) e!3535423)))

(declare-fun res!2428697 () Bool)

(assert (=> d!1812956 (=> res!2428697 e!3535423)))

(assert (=> d!1812956 (= res!2428697 (matchZipper!1899 lt!2287262 (t!376912 s!2326)))))

(assert (=> d!1812956 true))

(declare-fun _$48!1374 () Unit!156576)

(assert (=> d!1812956 (= (choose!43613 lt!2287262 lt!2287265 (t!376912 s!2326)) _$48!1374)))

(declare-fun b!5752642 () Bool)

(assert (=> b!5752642 (= e!3535423 (matchZipper!1899 lt!2287265 (t!376912 s!2326)))))

(assert (= (and d!1812956 (not res!2428697)) b!5752642))

(assert (=> d!1812956 m!6700998))

(assert (=> d!1812956 m!6700986))

(assert (=> b!5752642 m!6700960))

(assert (=> d!1812662 d!1812956))

(declare-fun d!1812960 () Bool)

(declare-fun c!1016326 () Bool)

(declare-fun e!3535425 () Bool)

(assert (=> d!1812960 (= c!1016326 e!3535425)))

(declare-fun res!2428698 () Bool)

(assert (=> d!1812960 (=> (not res!2428698) (not e!3535425))))

(assert (=> d!1812960 (= res!2428698 ((_ is Cons!63459) (exprs!5645 (Context!10291 (t!376913 (exprs!5645 lt!2287277))))))))

(declare-fun e!3535426 () (InoxSet Context!10290))

(assert (=> d!1812960 (= (derivationStepZipperUp!1029 (Context!10291 (t!376913 (exprs!5645 lt!2287277))) (h!69906 s!2326)) e!3535426)))

(declare-fun bm!441064 () Bool)

(declare-fun call!441069 () (InoxSet Context!10290))

(assert (=> bm!441064 (= call!441069 (derivationStepZipperDown!1103 (h!69907 (exprs!5645 (Context!10291 (t!376913 (exprs!5645 lt!2287277))))) (Context!10291 (t!376913 (exprs!5645 (Context!10291 (t!376913 (exprs!5645 lt!2287277)))))) (h!69906 s!2326)))))

(declare-fun b!5752643 () Bool)

(declare-fun e!3535424 () (InoxSet Context!10290))

(assert (=> b!5752643 (= e!3535424 ((as const (Array Context!10290 Bool)) false))))

(declare-fun b!5752644 () Bool)

(assert (=> b!5752644 (= e!3535424 call!441069)))

(declare-fun b!5752645 () Bool)

(assert (=> b!5752645 (= e!3535425 (nullable!5793 (h!69907 (exprs!5645 (Context!10291 (t!376913 (exprs!5645 lt!2287277)))))))))

(declare-fun b!5752646 () Bool)

(assert (=> b!5752646 (= e!3535426 ((_ map or) call!441069 (derivationStepZipperUp!1029 (Context!10291 (t!376913 (exprs!5645 (Context!10291 (t!376913 (exprs!5645 lt!2287277)))))) (h!69906 s!2326))))))

(declare-fun b!5752647 () Bool)

(assert (=> b!5752647 (= e!3535426 e!3535424)))

(declare-fun c!1016327 () Bool)

(assert (=> b!5752647 (= c!1016327 ((_ is Cons!63459) (exprs!5645 (Context!10291 (t!376913 (exprs!5645 lt!2287277))))))))

(assert (= (and d!1812960 res!2428698) b!5752645))

(assert (= (and d!1812960 c!1016326) b!5752646))

(assert (= (and d!1812960 (not c!1016326)) b!5752647))

(assert (= (and b!5752647 c!1016327) b!5752644))

(assert (= (and b!5752647 (not c!1016327)) b!5752643))

(assert (= (or b!5752646 b!5752644) bm!441064))

(declare-fun m!6702388 () Bool)

(assert (=> bm!441064 m!6702388))

(declare-fun m!6702390 () Bool)

(assert (=> b!5752645 m!6702390))

(declare-fun m!6702392 () Bool)

(assert (=> b!5752646 m!6702392))

(assert (=> b!5751628 d!1812960))

(declare-fun d!1812962 () Bool)

(declare-fun c!1016328 () Bool)

(assert (=> d!1812962 (= c!1016328 (and ((_ is ElementMatch!15761) (ite c!1016050 (regOne!32035 (reg!16090 (regOne!32034 r!7292))) (regOne!32034 (reg!16090 (regOne!32034 r!7292))))) (= (c!1015817 (ite c!1016050 (regOne!32035 (reg!16090 (regOne!32034 r!7292))) (regOne!32034 (reg!16090 (regOne!32034 r!7292))))) (h!69906 s!2326))))))

(declare-fun e!3535429 () (InoxSet Context!10290))

(assert (=> d!1812962 (= (derivationStepZipperDown!1103 (ite c!1016050 (regOne!32035 (reg!16090 (regOne!32034 r!7292))) (regOne!32034 (reg!16090 (regOne!32034 r!7292)))) (ite c!1016050 lt!2287270 (Context!10291 call!440867)) (h!69906 s!2326)) e!3535429)))

(declare-fun b!5752648 () Bool)

(declare-fun e!3535427 () Bool)

(assert (=> b!5752648 (= e!3535427 (nullable!5793 (regOne!32034 (ite c!1016050 (regOne!32035 (reg!16090 (regOne!32034 r!7292))) (regOne!32034 (reg!16090 (regOne!32034 r!7292)))))))))

(declare-fun bm!441065 () Bool)

(declare-fun call!441070 () List!63583)

(declare-fun c!1016330 () Bool)

(declare-fun c!1016329 () Bool)

(assert (=> bm!441065 (= call!441070 ($colon$colon!1760 (exprs!5645 (ite c!1016050 lt!2287270 (Context!10291 call!440867))) (ite (or c!1016329 c!1016330) (regTwo!32034 (ite c!1016050 (regOne!32035 (reg!16090 (regOne!32034 r!7292))) (regOne!32034 (reg!16090 (regOne!32034 r!7292))))) (ite c!1016050 (regOne!32035 (reg!16090 (regOne!32034 r!7292))) (regOne!32034 (reg!16090 (regOne!32034 r!7292)))))))))

(declare-fun bm!441066 () Bool)

(declare-fun call!441073 () (InoxSet Context!10290))

(declare-fun call!441072 () (InoxSet Context!10290))

(assert (=> bm!441066 (= call!441073 call!441072)))

(declare-fun bm!441067 () Bool)

(declare-fun call!441074 () (InoxSet Context!10290))

(assert (=> bm!441067 (= call!441074 call!441073)))

(declare-fun call!441071 () (InoxSet Context!10290))

(declare-fun bm!441068 () Bool)

(declare-fun c!1016332 () Bool)

(assert (=> bm!441068 (= call!441071 (derivationStepZipperDown!1103 (ite c!1016332 (regOne!32035 (ite c!1016050 (regOne!32035 (reg!16090 (regOne!32034 r!7292))) (regOne!32034 (reg!16090 (regOne!32034 r!7292))))) (regOne!32034 (ite c!1016050 (regOne!32035 (reg!16090 (regOne!32034 r!7292))) (regOne!32034 (reg!16090 (regOne!32034 r!7292)))))) (ite c!1016332 (ite c!1016050 lt!2287270 (Context!10291 call!440867)) (Context!10291 call!441070)) (h!69906 s!2326)))))

(declare-fun b!5752649 () Bool)

(declare-fun e!3535432 () (InoxSet Context!10290))

(assert (=> b!5752649 (= e!3535432 ((as const (Array Context!10290 Bool)) false))))

(declare-fun bm!441069 () Bool)

(declare-fun call!441075 () List!63583)

(assert (=> bm!441069 (= call!441075 call!441070)))

(declare-fun b!5752650 () Bool)

(declare-fun c!1016331 () Bool)

(assert (=> b!5752650 (= c!1016331 ((_ is Star!15761) (ite c!1016050 (regOne!32035 (reg!16090 (regOne!32034 r!7292))) (regOne!32034 (reg!16090 (regOne!32034 r!7292))))))))

(declare-fun e!3535430 () (InoxSet Context!10290))

(assert (=> b!5752650 (= e!3535430 e!3535432)))

(declare-fun b!5752651 () Bool)

(declare-fun e!3535431 () (InoxSet Context!10290))

(assert (=> b!5752651 (= e!3535431 ((_ map or) call!441071 call!441072))))

(declare-fun b!5752652 () Bool)

(assert (=> b!5752652 (= e!3535432 call!441074)))

(declare-fun b!5752653 () Bool)

(assert (=> b!5752653 (= e!3535429 e!3535431)))

(assert (=> b!5752653 (= c!1016332 ((_ is Union!15761) (ite c!1016050 (regOne!32035 (reg!16090 (regOne!32034 r!7292))) (regOne!32034 (reg!16090 (regOne!32034 r!7292))))))))

(declare-fun b!5752654 () Bool)

(assert (=> b!5752654 (= e!3535429 (store ((as const (Array Context!10290 Bool)) false) (ite c!1016050 lt!2287270 (Context!10291 call!440867)) true))))

(declare-fun b!5752655 () Bool)

(assert (=> b!5752655 (= c!1016329 e!3535427)))

(declare-fun res!2428699 () Bool)

(assert (=> b!5752655 (=> (not res!2428699) (not e!3535427))))

(assert (=> b!5752655 (= res!2428699 ((_ is Concat!24606) (ite c!1016050 (regOne!32035 (reg!16090 (regOne!32034 r!7292))) (regOne!32034 (reg!16090 (regOne!32034 r!7292))))))))

(declare-fun e!3535428 () (InoxSet Context!10290))

(assert (=> b!5752655 (= e!3535431 e!3535428)))

(declare-fun b!5752656 () Bool)

(assert (=> b!5752656 (= e!3535430 call!441074)))

(declare-fun bm!441070 () Bool)

(assert (=> bm!441070 (= call!441072 (derivationStepZipperDown!1103 (ite c!1016332 (regTwo!32035 (ite c!1016050 (regOne!32035 (reg!16090 (regOne!32034 r!7292))) (regOne!32034 (reg!16090 (regOne!32034 r!7292))))) (ite c!1016329 (regTwo!32034 (ite c!1016050 (regOne!32035 (reg!16090 (regOne!32034 r!7292))) (regOne!32034 (reg!16090 (regOne!32034 r!7292))))) (ite c!1016330 (regOne!32034 (ite c!1016050 (regOne!32035 (reg!16090 (regOne!32034 r!7292))) (regOne!32034 (reg!16090 (regOne!32034 r!7292))))) (reg!16090 (ite c!1016050 (regOne!32035 (reg!16090 (regOne!32034 r!7292))) (regOne!32034 (reg!16090 (regOne!32034 r!7292)))))))) (ite (or c!1016332 c!1016329) (ite c!1016050 lt!2287270 (Context!10291 call!440867)) (Context!10291 call!441075)) (h!69906 s!2326)))))

(declare-fun b!5752657 () Bool)

(assert (=> b!5752657 (= e!3535428 ((_ map or) call!441071 call!441073))))

(declare-fun b!5752658 () Bool)

(assert (=> b!5752658 (= e!3535428 e!3535430)))

(assert (=> b!5752658 (= c!1016330 ((_ is Concat!24606) (ite c!1016050 (regOne!32035 (reg!16090 (regOne!32034 r!7292))) (regOne!32034 (reg!16090 (regOne!32034 r!7292))))))))

(assert (= (and d!1812962 c!1016328) b!5752654))

(assert (= (and d!1812962 (not c!1016328)) b!5752653))

(assert (= (and b!5752653 c!1016332) b!5752651))

(assert (= (and b!5752653 (not c!1016332)) b!5752655))

(assert (= (and b!5752655 res!2428699) b!5752648))

(assert (= (and b!5752655 c!1016329) b!5752657))

(assert (= (and b!5752655 (not c!1016329)) b!5752658))

(assert (= (and b!5752658 c!1016330) b!5752656))

(assert (= (and b!5752658 (not c!1016330)) b!5752650))

(assert (= (and b!5752650 c!1016331) b!5752652))

(assert (= (and b!5752650 (not c!1016331)) b!5752649))

(assert (= (or b!5752656 b!5752652) bm!441069))

(assert (= (or b!5752656 b!5752652) bm!441067))

(assert (= (or b!5752657 bm!441069) bm!441065))

(assert (= (or b!5752657 bm!441067) bm!441066))

(assert (= (or b!5752651 bm!441066) bm!441070))

(assert (= (or b!5752651 b!5752657) bm!441068))

(declare-fun m!6702394 () Bool)

(assert (=> bm!441065 m!6702394))

(declare-fun m!6702396 () Bool)

(assert (=> b!5752654 m!6702396))

(declare-fun m!6702398 () Bool)

(assert (=> b!5752648 m!6702398))

(declare-fun m!6702400 () Bool)

(assert (=> bm!441068 m!6702400))

(declare-fun m!6702402 () Bool)

(assert (=> bm!441070 m!6702402))

(assert (=> bm!440865 d!1812962))

(declare-fun d!1812964 () Bool)

(declare-fun c!1016333 () Bool)

(assert (=> d!1812964 (= c!1016333 (and ((_ is ElementMatch!15761) (h!69907 (exprs!5645 lt!2287277))) (= (c!1015817 (h!69907 (exprs!5645 lt!2287277))) (h!69906 s!2326))))))

(declare-fun e!3535435 () (InoxSet Context!10290))

(assert (=> d!1812964 (= (derivationStepZipperDown!1103 (h!69907 (exprs!5645 lt!2287277)) (Context!10291 (t!376913 (exprs!5645 lt!2287277))) (h!69906 s!2326)) e!3535435)))

(declare-fun b!5752659 () Bool)

(declare-fun e!3535433 () Bool)

(assert (=> b!5752659 (= e!3535433 (nullable!5793 (regOne!32034 (h!69907 (exprs!5645 lt!2287277)))))))

(declare-fun bm!441071 () Bool)

(declare-fun c!1016334 () Bool)

(declare-fun c!1016335 () Bool)

(declare-fun call!441076 () List!63583)

(assert (=> bm!441071 (= call!441076 ($colon$colon!1760 (exprs!5645 (Context!10291 (t!376913 (exprs!5645 lt!2287277)))) (ite (or c!1016334 c!1016335) (regTwo!32034 (h!69907 (exprs!5645 lt!2287277))) (h!69907 (exprs!5645 lt!2287277)))))))

(declare-fun bm!441072 () Bool)

(declare-fun call!441079 () (InoxSet Context!10290))

(declare-fun call!441078 () (InoxSet Context!10290))

(assert (=> bm!441072 (= call!441079 call!441078)))

(declare-fun bm!441073 () Bool)

(declare-fun call!441080 () (InoxSet Context!10290))

(assert (=> bm!441073 (= call!441080 call!441079)))

(declare-fun call!441077 () (InoxSet Context!10290))

(declare-fun c!1016337 () Bool)

(declare-fun bm!441074 () Bool)

(assert (=> bm!441074 (= call!441077 (derivationStepZipperDown!1103 (ite c!1016337 (regOne!32035 (h!69907 (exprs!5645 lt!2287277))) (regOne!32034 (h!69907 (exprs!5645 lt!2287277)))) (ite c!1016337 (Context!10291 (t!376913 (exprs!5645 lt!2287277))) (Context!10291 call!441076)) (h!69906 s!2326)))))

(declare-fun b!5752660 () Bool)

(declare-fun e!3535438 () (InoxSet Context!10290))

(assert (=> b!5752660 (= e!3535438 ((as const (Array Context!10290 Bool)) false))))

(declare-fun bm!441075 () Bool)

(declare-fun call!441081 () List!63583)

(assert (=> bm!441075 (= call!441081 call!441076)))

(declare-fun b!5752661 () Bool)

(declare-fun c!1016336 () Bool)

(assert (=> b!5752661 (= c!1016336 ((_ is Star!15761) (h!69907 (exprs!5645 lt!2287277))))))

(declare-fun e!3535436 () (InoxSet Context!10290))

(assert (=> b!5752661 (= e!3535436 e!3535438)))

(declare-fun b!5752662 () Bool)

(declare-fun e!3535437 () (InoxSet Context!10290))

(assert (=> b!5752662 (= e!3535437 ((_ map or) call!441077 call!441078))))

(declare-fun b!5752663 () Bool)

(assert (=> b!5752663 (= e!3535438 call!441080)))

(declare-fun b!5752664 () Bool)

(assert (=> b!5752664 (= e!3535435 e!3535437)))

(assert (=> b!5752664 (= c!1016337 ((_ is Union!15761) (h!69907 (exprs!5645 lt!2287277))))))

(declare-fun b!5752665 () Bool)

(assert (=> b!5752665 (= e!3535435 (store ((as const (Array Context!10290 Bool)) false) (Context!10291 (t!376913 (exprs!5645 lt!2287277))) true))))

(declare-fun b!5752666 () Bool)

(assert (=> b!5752666 (= c!1016334 e!3535433)))

(declare-fun res!2428700 () Bool)

(assert (=> b!5752666 (=> (not res!2428700) (not e!3535433))))

(assert (=> b!5752666 (= res!2428700 ((_ is Concat!24606) (h!69907 (exprs!5645 lt!2287277))))))

(declare-fun e!3535434 () (InoxSet Context!10290))

(assert (=> b!5752666 (= e!3535437 e!3535434)))

(declare-fun b!5752667 () Bool)

(assert (=> b!5752667 (= e!3535436 call!441080)))

(declare-fun bm!441076 () Bool)

(assert (=> bm!441076 (= call!441078 (derivationStepZipperDown!1103 (ite c!1016337 (regTwo!32035 (h!69907 (exprs!5645 lt!2287277))) (ite c!1016334 (regTwo!32034 (h!69907 (exprs!5645 lt!2287277))) (ite c!1016335 (regOne!32034 (h!69907 (exprs!5645 lt!2287277))) (reg!16090 (h!69907 (exprs!5645 lt!2287277)))))) (ite (or c!1016337 c!1016334) (Context!10291 (t!376913 (exprs!5645 lt!2287277))) (Context!10291 call!441081)) (h!69906 s!2326)))))

(declare-fun b!5752668 () Bool)

(assert (=> b!5752668 (= e!3535434 ((_ map or) call!441077 call!441079))))

(declare-fun b!5752669 () Bool)

(assert (=> b!5752669 (= e!3535434 e!3535436)))

(assert (=> b!5752669 (= c!1016335 ((_ is Concat!24606) (h!69907 (exprs!5645 lt!2287277))))))

(assert (= (and d!1812964 c!1016333) b!5752665))

(assert (= (and d!1812964 (not c!1016333)) b!5752664))

(assert (= (and b!5752664 c!1016337) b!5752662))

(assert (= (and b!5752664 (not c!1016337)) b!5752666))

(assert (= (and b!5752666 res!2428700) b!5752659))

(assert (= (and b!5752666 c!1016334) b!5752668))

(assert (= (and b!5752666 (not c!1016334)) b!5752669))

(assert (= (and b!5752669 c!1016335) b!5752667))

(assert (= (and b!5752669 (not c!1016335)) b!5752661))

(assert (= (and b!5752661 c!1016336) b!5752663))

(assert (= (and b!5752661 (not c!1016336)) b!5752660))

(assert (= (or b!5752667 b!5752663) bm!441075))

(assert (= (or b!5752667 b!5752663) bm!441073))

(assert (= (or b!5752668 bm!441075) bm!441071))

(assert (= (or b!5752668 bm!441073) bm!441072))

(assert (= (or b!5752662 bm!441072) bm!441076))

(assert (= (or b!5752662 b!5752668) bm!441074))

(declare-fun m!6702404 () Bool)

(assert (=> bm!441071 m!6702404))

(declare-fun m!6702406 () Bool)

(assert (=> b!5752665 m!6702406))

(declare-fun m!6702408 () Bool)

(assert (=> b!5752659 m!6702408))

(declare-fun m!6702410 () Bool)

(assert (=> bm!441074 m!6702410))

(declare-fun m!6702412 () Bool)

(assert (=> bm!441076 m!6702412))

(assert (=> bm!440848 d!1812964))

(declare-fun d!1812966 () Bool)

(assert (=> d!1812966 (= (maxBigInt!0 (ite c!1016127 call!440922 call!440921) (ite c!1016127 call!440921 call!440922)) (ite (>= (ite c!1016127 call!440922 call!440921) (ite c!1016127 call!440921 call!440922)) (ite c!1016127 call!440922 call!440921) (ite c!1016127 call!440921 call!440922)))))

(assert (=> bm!440915 d!1812966))

(assert (=> b!5751902 d!1812694))

(declare-fun d!1812968 () Bool)

(assert (=> d!1812968 true))

(assert (=> d!1812968 true))

(declare-fun res!2428703 () Bool)

(assert (=> d!1812968 (= (choose!43609 lambda!312040) res!2428703)))

(assert (=> d!1812620 d!1812968))

(declare-fun d!1812970 () Bool)

(assert (=> d!1812970 (= (nullable!5793 (regOne!32034 (reg!16090 (regOne!32034 r!7292)))) (nullableFct!1838 (regOne!32034 (reg!16090 (regOne!32034 r!7292)))))))

(declare-fun bs!1347487 () Bool)

(assert (= bs!1347487 d!1812970))

(declare-fun m!6702414 () Bool)

(assert (=> bs!1347487 m!6702414))

(assert (=> b!5751736 d!1812970))

(declare-fun d!1812972 () Bool)

(declare-fun c!1016338 () Bool)

(declare-fun e!3535440 () Bool)

(assert (=> d!1812972 (= c!1016338 e!3535440)))

(declare-fun res!2428704 () Bool)

(assert (=> d!1812972 (=> (not res!2428704) (not e!3535440))))

(assert (=> d!1812972 (= res!2428704 ((_ is Cons!63459) (exprs!5645 (Context!10291 (t!376913 (exprs!5645 lt!2287270))))))))

(declare-fun e!3535441 () (InoxSet Context!10290))

(assert (=> d!1812972 (= (derivationStepZipperUp!1029 (Context!10291 (t!376913 (exprs!5645 lt!2287270))) (h!69906 s!2326)) e!3535441)))

(declare-fun bm!441077 () Bool)

(declare-fun call!441082 () (InoxSet Context!10290))

(assert (=> bm!441077 (= call!441082 (derivationStepZipperDown!1103 (h!69907 (exprs!5645 (Context!10291 (t!376913 (exprs!5645 lt!2287270))))) (Context!10291 (t!376913 (exprs!5645 (Context!10291 (t!376913 (exprs!5645 lt!2287270)))))) (h!69906 s!2326)))))

(declare-fun b!5752670 () Bool)

(declare-fun e!3535439 () (InoxSet Context!10290))

(assert (=> b!5752670 (= e!3535439 ((as const (Array Context!10290 Bool)) false))))

(declare-fun b!5752671 () Bool)

(assert (=> b!5752671 (= e!3535439 call!441082)))

(declare-fun b!5752672 () Bool)

(assert (=> b!5752672 (= e!3535440 (nullable!5793 (h!69907 (exprs!5645 (Context!10291 (t!376913 (exprs!5645 lt!2287270)))))))))

(declare-fun b!5752673 () Bool)

(assert (=> b!5752673 (= e!3535441 ((_ map or) call!441082 (derivationStepZipperUp!1029 (Context!10291 (t!376913 (exprs!5645 (Context!10291 (t!376913 (exprs!5645 lt!2287270)))))) (h!69906 s!2326))))))

(declare-fun b!5752674 () Bool)

(assert (=> b!5752674 (= e!3535441 e!3535439)))

(declare-fun c!1016339 () Bool)

(assert (=> b!5752674 (= c!1016339 ((_ is Cons!63459) (exprs!5645 (Context!10291 (t!376913 (exprs!5645 lt!2287270))))))))

(assert (= (and d!1812972 res!2428704) b!5752672))

(assert (= (and d!1812972 c!1016338) b!5752673))

(assert (= (and d!1812972 (not c!1016338)) b!5752674))

(assert (= (and b!5752674 c!1016339) b!5752671))

(assert (= (and b!5752674 (not c!1016339)) b!5752670))

(assert (= (or b!5752673 b!5752671) bm!441077))

(declare-fun m!6702416 () Bool)

(assert (=> bm!441077 m!6702416))

(declare-fun m!6702418 () Bool)

(assert (=> b!5752672 m!6702418))

(declare-fun m!6702420 () Bool)

(assert (=> b!5752673 m!6702420))

(assert (=> b!5751887 d!1812972))

(declare-fun d!1812974 () Bool)

(declare-fun c!1016340 () Bool)

(declare-fun e!3535443 () Bool)

(assert (=> d!1812974 (= c!1016340 e!3535443)))

(declare-fun res!2428705 () Bool)

(assert (=> d!1812974 (=> (not res!2428705) (not e!3535443))))

(assert (=> d!1812974 (= res!2428705 ((_ is Cons!63459) (exprs!5645 (Context!10291 (t!376913 (exprs!5645 lt!2287263))))))))

(declare-fun e!3535444 () (InoxSet Context!10290))

(assert (=> d!1812974 (= (derivationStepZipperUp!1029 (Context!10291 (t!376913 (exprs!5645 lt!2287263))) (h!69906 s!2326)) e!3535444)))

(declare-fun bm!441078 () Bool)

(declare-fun call!441083 () (InoxSet Context!10290))

(assert (=> bm!441078 (= call!441083 (derivationStepZipperDown!1103 (h!69907 (exprs!5645 (Context!10291 (t!376913 (exprs!5645 lt!2287263))))) (Context!10291 (t!376913 (exprs!5645 (Context!10291 (t!376913 (exprs!5645 lt!2287263)))))) (h!69906 s!2326)))))

(declare-fun b!5752675 () Bool)

(declare-fun e!3535442 () (InoxSet Context!10290))

(assert (=> b!5752675 (= e!3535442 ((as const (Array Context!10290 Bool)) false))))

(declare-fun b!5752676 () Bool)

(assert (=> b!5752676 (= e!3535442 call!441083)))

(declare-fun b!5752677 () Bool)

(assert (=> b!5752677 (= e!3535443 (nullable!5793 (h!69907 (exprs!5645 (Context!10291 (t!376913 (exprs!5645 lt!2287263)))))))))

(declare-fun b!5752678 () Bool)

(assert (=> b!5752678 (= e!3535444 ((_ map or) call!441083 (derivationStepZipperUp!1029 (Context!10291 (t!376913 (exprs!5645 (Context!10291 (t!376913 (exprs!5645 lt!2287263)))))) (h!69906 s!2326))))))

(declare-fun b!5752679 () Bool)

(assert (=> b!5752679 (= e!3535444 e!3535442)))

(declare-fun c!1016341 () Bool)

(assert (=> b!5752679 (= c!1016341 ((_ is Cons!63459) (exprs!5645 (Context!10291 (t!376913 (exprs!5645 lt!2287263))))))))

(assert (= (and d!1812974 res!2428705) b!5752677))

(assert (= (and d!1812974 c!1016340) b!5752678))

(assert (= (and d!1812974 (not c!1016340)) b!5752679))

(assert (= (and b!5752679 c!1016341) b!5752676))

(assert (= (and b!5752679 (not c!1016341)) b!5752675))

(assert (= (or b!5752678 b!5752676) bm!441078))

(declare-fun m!6702422 () Bool)

(assert (=> bm!441078 m!6702422))

(declare-fun m!6702424 () Bool)

(assert (=> b!5752677 m!6702424))

(declare-fun m!6702426 () Bool)

(assert (=> b!5752678 m!6702426))

(assert (=> b!5751882 d!1812974))

(assert (=> d!1812654 d!1812730))

(assert (=> d!1812654 d!1812596))

(assert (=> d!1812700 d!1812692))

(declare-fun d!1812976 () Bool)

(assert (=> d!1812976 (= (flatMap!1374 z!1189 lambda!312041) (dynLambda!24837 lambda!312041 (h!69908 zl!343)))))

(assert (=> d!1812976 true))

(declare-fun _$13!2441 () Unit!156576)

(assert (=> d!1812976 (= (choose!43608 z!1189 (h!69908 zl!343) lambda!312041) _$13!2441)))

(declare-fun b_lambda!217281 () Bool)

(assert (=> (not b_lambda!217281) (not d!1812976)))

(declare-fun bs!1347493 () Bool)

(assert (= bs!1347493 d!1812976))

(assert (=> bs!1347493 m!6701010))

(assert (=> bs!1347493 m!6701764))

(assert (=> d!1812700 d!1812976))

(declare-fun d!1812978 () Bool)

(assert (=> d!1812978 true))

(assert (=> d!1812978 true))

(declare-fun res!2428706 () Bool)

(assert (=> d!1812978 (= (choose!43609 lambda!312039) res!2428706)))

(assert (=> d!1812622 d!1812978))

(declare-fun b!5752680 () Bool)

(declare-fun e!3535448 () Bool)

(declare-fun lt!2287485 () Int)

(assert (=> b!5752680 (= e!3535448 (= lt!2287485 1))))

(declare-fun b!5752681 () Bool)

(declare-fun e!3535454 () Bool)

(declare-fun call!441086 () Int)

(assert (=> b!5752681 (= e!3535454 (> lt!2287485 call!441086))))

(declare-fun bm!441079 () Bool)

(declare-fun c!1016345 () Bool)

(declare-fun call!441089 () Int)

(assert (=> bm!441079 (= call!441089 (regexDepth!238 (ite c!1016345 (regTwo!32035 (ite c!1016127 (regTwo!32035 lt!2287295) (regOne!32034 lt!2287295))) (regOne!32034 (ite c!1016127 (regTwo!32035 lt!2287295) (regOne!32034 lt!2287295))))))))

(declare-fun bm!441080 () Bool)

(declare-fun call!441087 () Int)

(declare-fun call!441084 () Int)

(assert (=> bm!441080 (= call!441087 call!441084)))

(declare-fun b!5752682 () Bool)

(declare-fun e!3535446 () Int)

(declare-fun e!3535449 () Int)

(assert (=> b!5752682 (= e!3535446 e!3535449)))

(declare-fun c!1016348 () Bool)

(assert (=> b!5752682 (= c!1016348 ((_ is Star!15761) (ite c!1016127 (regTwo!32035 lt!2287295) (regOne!32034 lt!2287295))))))

(declare-fun b!5752683 () Bool)

(assert (=> b!5752683 (= c!1016345 ((_ is Union!15761) (ite c!1016127 (regTwo!32035 lt!2287295) (regOne!32034 lt!2287295))))))

(declare-fun e!3535447 () Int)

(assert (=> b!5752683 (= e!3535449 e!3535447)))

(declare-fun b!5752684 () Bool)

(declare-fun e!3535451 () Int)

(assert (=> b!5752684 (= e!3535447 e!3535451)))

(declare-fun c!1016343 () Bool)

(assert (=> b!5752684 (= c!1016343 ((_ is Concat!24606) (ite c!1016127 (regTwo!32035 lt!2287295) (regOne!32034 lt!2287295))))))

(declare-fun call!441088 () Int)

(declare-fun bm!441081 () Bool)

(assert (=> bm!441081 (= call!441088 (regexDepth!238 (ite c!1016348 (reg!16090 (ite c!1016127 (regTwo!32035 lt!2287295) (regOne!32034 lt!2287295))) (ite c!1016345 (regOne!32035 (ite c!1016127 (regTwo!32035 lt!2287295) (regOne!32034 lt!2287295))) (regTwo!32034 (ite c!1016127 (regTwo!32035 lt!2287295) (regOne!32034 lt!2287295)))))))))

(declare-fun b!5752685 () Bool)

(assert (=> b!5752685 (= e!3535449 (+ 1 call!441088))))

(declare-fun b!5752686 () Bool)

(declare-fun e!3535453 () Bool)

(assert (=> b!5752686 (= e!3535453 e!3535454)))

(declare-fun res!2428707 () Bool)

(assert (=> b!5752686 (= res!2428707 (> lt!2287485 call!441084))))

(assert (=> b!5752686 (=> (not res!2428707) (not e!3535454))))

(declare-fun b!5752688 () Bool)

(declare-fun e!3535445 () Bool)

(assert (=> b!5752688 (= e!3535445 (> lt!2287485 call!441086))))

(declare-fun b!5752689 () Bool)

(declare-fun call!441085 () Int)

(assert (=> b!5752689 (= e!3535451 (+ 1 call!441085))))

(declare-fun b!5752690 () Bool)

(declare-fun e!3535450 () Bool)

(assert (=> b!5752690 (= e!3535453 e!3535450)))

(declare-fun c!1016344 () Bool)

(assert (=> b!5752690 (= c!1016344 ((_ is Concat!24606) (ite c!1016127 (regTwo!32035 lt!2287295) (regOne!32034 lt!2287295))))))

(declare-fun c!1016347 () Bool)

(declare-fun bm!441082 () Bool)

(assert (=> bm!441082 (= call!441084 (regexDepth!238 (ite c!1016347 (regOne!32035 (ite c!1016127 (regTwo!32035 lt!2287295) (regOne!32034 lt!2287295))) (ite c!1016344 (regOne!32034 (ite c!1016127 (regTwo!32035 lt!2287295) (regOne!32034 lt!2287295))) (reg!16090 (ite c!1016127 (regTwo!32035 lt!2287295) (regOne!32034 lt!2287295)))))))))

(declare-fun bm!441083 () Bool)

(declare-fun call!441090 () Int)

(assert (=> bm!441083 (= call!441085 (maxBigInt!0 (ite c!1016345 call!441090 call!441089) (ite c!1016345 call!441089 call!441090)))))

(declare-fun b!5752691 () Bool)

(assert (=> b!5752691 (= e!3535451 1)))

(declare-fun b!5752692 () Bool)

(declare-fun res!2428709 () Bool)

(assert (=> b!5752692 (=> (not res!2428709) (not e!3535445))))

(assert (=> b!5752692 (= res!2428709 (> lt!2287485 call!441087))))

(assert (=> b!5752692 (= e!3535450 e!3535445)))

(declare-fun b!5752693 () Bool)

(assert (=> b!5752693 (= e!3535447 (+ 1 call!441085))))

(declare-fun b!5752694 () Bool)

(assert (=> b!5752694 (= e!3535448 (> lt!2287485 call!441087))))

(declare-fun b!5752695 () Bool)

(declare-fun c!1016342 () Bool)

(assert (=> b!5752695 (= c!1016342 ((_ is Star!15761) (ite c!1016127 (regTwo!32035 lt!2287295) (regOne!32034 lt!2287295))))))

(assert (=> b!5752695 (= e!3535450 e!3535448)))

(declare-fun b!5752696 () Bool)

(declare-fun e!3535452 () Bool)

(assert (=> b!5752696 (= e!3535452 e!3535453)))

(assert (=> b!5752696 (= c!1016347 ((_ is Union!15761) (ite c!1016127 (regTwo!32035 lt!2287295) (regOne!32034 lt!2287295))))))

(declare-fun d!1812980 () Bool)

(assert (=> d!1812980 e!3535452))

(declare-fun res!2428708 () Bool)

(assert (=> d!1812980 (=> (not res!2428708) (not e!3535452))))

(assert (=> d!1812980 (= res!2428708 (> lt!2287485 0))))

(assert (=> d!1812980 (= lt!2287485 e!3535446)))

(declare-fun c!1016346 () Bool)

(assert (=> d!1812980 (= c!1016346 ((_ is ElementMatch!15761) (ite c!1016127 (regTwo!32035 lt!2287295) (regOne!32034 lt!2287295))))))

(assert (=> d!1812980 (= (regexDepth!238 (ite c!1016127 (regTwo!32035 lt!2287295) (regOne!32034 lt!2287295))) lt!2287485)))

(declare-fun b!5752687 () Bool)

(assert (=> b!5752687 (= e!3535446 1)))

(declare-fun bm!441084 () Bool)

(assert (=> bm!441084 (= call!441086 (regexDepth!238 (ite c!1016347 (regTwo!32035 (ite c!1016127 (regTwo!32035 lt!2287295) (regOne!32034 lt!2287295))) (regTwo!32034 (ite c!1016127 (regTwo!32035 lt!2287295) (regOne!32034 lt!2287295))))))))

(declare-fun bm!441085 () Bool)

(assert (=> bm!441085 (= call!441090 call!441088)))

(assert (= (and d!1812980 c!1016346) b!5752687))

(assert (= (and d!1812980 (not c!1016346)) b!5752682))

(assert (= (and b!5752682 c!1016348) b!5752685))

(assert (= (and b!5752682 (not c!1016348)) b!5752683))

(assert (= (and b!5752683 c!1016345) b!5752693))

(assert (= (and b!5752683 (not c!1016345)) b!5752684))

(assert (= (and b!5752684 c!1016343) b!5752689))

(assert (= (and b!5752684 (not c!1016343)) b!5752691))

(assert (= (or b!5752693 b!5752689) bm!441079))

(assert (= (or b!5752693 b!5752689) bm!441085))

(assert (= (or b!5752693 b!5752689) bm!441083))

(assert (= (or b!5752685 bm!441085) bm!441081))

(assert (= (and d!1812980 res!2428708) b!5752696))

(assert (= (and b!5752696 c!1016347) b!5752686))

(assert (= (and b!5752696 (not c!1016347)) b!5752690))

(assert (= (and b!5752686 res!2428707) b!5752681))

(assert (= (and b!5752690 c!1016344) b!5752692))

(assert (= (and b!5752690 (not c!1016344)) b!5752695))

(assert (= (and b!5752692 res!2428709) b!5752688))

(assert (= (and b!5752695 c!1016342) b!5752694))

(assert (= (and b!5752695 (not c!1016342)) b!5752680))

(assert (= (or b!5752692 b!5752694) bm!441080))

(assert (= (or b!5752681 b!5752688) bm!441084))

(assert (= (or b!5752686 bm!441080) bm!441082))

(declare-fun m!6702434 () Bool)

(assert (=> bm!441082 m!6702434))

(declare-fun m!6702436 () Bool)

(assert (=> bm!441083 m!6702436))

(declare-fun m!6702438 () Bool)

(assert (=> bm!441081 m!6702438))

(declare-fun m!6702440 () Bool)

(assert (=> bm!441084 m!6702440))

(declare-fun m!6702442 () Bool)

(assert (=> bm!441079 m!6702442))

(assert (=> bm!440911 d!1812980))

(declare-fun d!1812984 () Bool)

(declare-fun res!2428710 () Bool)

(declare-fun e!3535455 () Bool)

(assert (=> d!1812984 (=> res!2428710 e!3535455)))

(assert (=> d!1812984 (= res!2428710 ((_ is Nil!63460) (t!376914 zl!343)))))

(assert (=> d!1812984 (= (forall!14882 (t!376914 zl!343) lambda!312128) e!3535455)))

(declare-fun b!5752697 () Bool)

(declare-fun e!3535456 () Bool)

(assert (=> b!5752697 (= e!3535455 e!3535456)))

(declare-fun res!2428711 () Bool)

(assert (=> b!5752697 (=> (not res!2428711) (not e!3535456))))

(assert (=> b!5752697 (= res!2428711 (dynLambda!24838 lambda!312128 (h!69908 (t!376914 zl!343))))))

(declare-fun b!5752698 () Bool)

(assert (=> b!5752698 (= e!3535456 (forall!14882 (t!376914 (t!376914 zl!343)) lambda!312128))))

(assert (= (and d!1812984 (not res!2428710)) b!5752697))

(assert (= (and b!5752697 res!2428711) b!5752698))

(declare-fun b_lambda!217283 () Bool)

(assert (=> (not b_lambda!217283) (not b!5752697)))

(declare-fun m!6702446 () Bool)

(assert (=> b!5752697 m!6702446))

(declare-fun m!6702450 () Bool)

(assert (=> b!5752698 m!6702450))

(assert (=> b!5751843 d!1812984))

(declare-fun bs!1347501 () Bool)

(declare-fun b!5752733 () Bool)

(assert (= bs!1347501 (and b!5752733 d!1812772)))

(declare-fun lambda!312166 () Int)

(assert (=> bs!1347501 (not (= lambda!312166 lambda!312139))))

(declare-fun bs!1347502 () Bool)

(assert (= bs!1347502 (and b!5752733 d!1812606)))

(assert (=> bs!1347502 (not (= lambda!312166 lambda!312098))))

(declare-fun bs!1347503 () Bool)

(assert (= bs!1347503 (and b!5752733 d!1812856)))

(assert (=> bs!1347503 (not (= lambda!312166 lambda!312147))))

(declare-fun bs!1347504 () Bool)

(assert (= bs!1347504 (and b!5752733 d!1812708)))

(assert (=> bs!1347504 (not (= lambda!312166 lambda!312135))))

(declare-fun bs!1347505 () Bool)

(assert (= bs!1347505 (and b!5752733 d!1812602)))

(assert (=> bs!1347505 (not (= lambda!312166 lambda!312094))))

(declare-fun bs!1347506 () Bool)

(assert (= bs!1347506 (and b!5752733 d!1812782)))

(assert (=> bs!1347506 (not (= lambda!312166 lambda!312141))))

(declare-fun bs!1347507 () Bool)

(assert (= bs!1347507 (and b!5752733 d!1812938)))

(assert (=> bs!1347507 (not (= lambda!312166 lambda!312156))))

(declare-fun bs!1347508 () Bool)

(assert (= bs!1347508 (and b!5752733 d!1812888)))

(assert (=> bs!1347508 (not (= lambda!312166 lambda!312151))))

(declare-fun bs!1347509 () Bool)

(assert (= bs!1347509 (and b!5752733 d!1812616)))

(assert (=> bs!1347509 (not (= lambda!312166 lambda!312104))))

(declare-fun bs!1347511 () Bool)

(assert (= bs!1347511 (and b!5752733 d!1812604)))

(assert (=> bs!1347511 (not (= lambda!312166 lambda!312097))))

(declare-fun bs!1347512 () Bool)

(assert (= bs!1347512 (and b!5752733 d!1812600)))

(assert (=> bs!1347512 (not (= lambda!312166 lambda!312091))))

(declare-fun bs!1347513 () Bool)

(assert (= bs!1347513 (and b!5752733 d!1812886)))

(assert (=> bs!1347513 (not (= lambda!312166 lambda!312150))))

(assert (=> b!5752733 true))

(declare-fun bs!1347514 () Bool)

(declare-fun b!5752735 () Bool)

(assert (= bs!1347514 (and b!5752735 d!1812772)))

(declare-fun lambda!312167 () Int)

(assert (=> bs!1347514 (not (= lambda!312167 lambda!312139))))

(declare-fun bs!1347515 () Bool)

(assert (= bs!1347515 (and b!5752735 d!1812606)))

(assert (=> bs!1347515 (not (= lambda!312167 lambda!312098))))

(declare-fun bs!1347516 () Bool)

(assert (= bs!1347516 (and b!5752735 d!1812856)))

(assert (=> bs!1347516 (not (= lambda!312167 lambda!312147))))

(declare-fun bs!1347517 () Bool)

(assert (= bs!1347517 (and b!5752735 d!1812708)))

(assert (=> bs!1347517 (not (= lambda!312167 lambda!312135))))

(declare-fun bs!1347518 () Bool)

(assert (= bs!1347518 (and b!5752735 d!1812602)))

(assert (=> bs!1347518 (not (= lambda!312167 lambda!312094))))

(declare-fun bs!1347519 () Bool)

(assert (= bs!1347519 (and b!5752735 d!1812782)))

(assert (=> bs!1347519 (not (= lambda!312167 lambda!312141))))

(declare-fun bs!1347520 () Bool)

(assert (= bs!1347520 (and b!5752735 d!1812938)))

(assert (=> bs!1347520 (not (= lambda!312167 lambda!312156))))

(declare-fun bs!1347521 () Bool)

(assert (= bs!1347521 (and b!5752735 d!1812888)))

(assert (=> bs!1347521 (not (= lambda!312167 lambda!312151))))

(declare-fun bs!1347522 () Bool)

(assert (= bs!1347522 (and b!5752735 d!1812616)))

(assert (=> bs!1347522 (not (= lambda!312167 lambda!312104))))

(declare-fun bs!1347524 () Bool)

(assert (= bs!1347524 (and b!5752735 b!5752733)))

(declare-fun lt!2287498 () Int)

(declare-fun lt!2287496 () Int)

(assert (=> bs!1347524 (= (= lt!2287496 lt!2287498) (= lambda!312167 lambda!312166))))

(declare-fun bs!1347525 () Bool)

(assert (= bs!1347525 (and b!5752735 d!1812604)))

(assert (=> bs!1347525 (not (= lambda!312167 lambda!312097))))

(declare-fun bs!1347526 () Bool)

(assert (= bs!1347526 (and b!5752735 d!1812600)))

(assert (=> bs!1347526 (not (= lambda!312167 lambda!312091))))

(declare-fun bs!1347527 () Bool)

(assert (= bs!1347527 (and b!5752735 d!1812886)))

(assert (=> bs!1347527 (not (= lambda!312167 lambda!312150))))

(assert (=> b!5752735 true))

(declare-fun d!1812988 () Bool)

(declare-fun e!3535479 () Bool)

(assert (=> d!1812988 e!3535479))

(declare-fun res!2428722 () Bool)

(assert (=> d!1812988 (=> (not res!2428722) (not e!3535479))))

(assert (=> d!1812988 (= res!2428722 (>= lt!2287496 0))))

(declare-fun e!3535480 () Int)

(assert (=> d!1812988 (= lt!2287496 e!3535480)))

(declare-fun c!1016362 () Bool)

(assert (=> d!1812988 (= c!1016362 ((_ is Cons!63459) (exprs!5645 (h!69908 zl!343))))))

(assert (=> d!1812988 (= (contextDepth!132 (h!69908 zl!343)) lt!2287496)))

(assert (=> b!5752733 (= e!3535480 lt!2287498)))

(assert (=> b!5752733 (= lt!2287498 (maxBigInt!0 (regexDepth!238 (h!69907 (exprs!5645 (h!69908 zl!343)))) (contextDepth!132 (Context!10291 (t!376913 (exprs!5645 (h!69908 zl!343)))))))))

(declare-fun lt!2287495 () Unit!156576)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!35 (List!63583 Int Int) Unit!156576)

(assert (=> b!5752733 (= lt!2287495 (lemmaForallRegexDepthBiggerThanTransitive!35 (t!376913 (exprs!5645 (h!69908 zl!343))) lt!2287498 (contextDepth!132 (Context!10291 (t!376913 (exprs!5645 (h!69908 zl!343)))))))))

(assert (=> b!5752733 (forall!14881 (t!376913 (exprs!5645 (h!69908 zl!343))) lambda!312166)))

(declare-fun lt!2287497 () Unit!156576)

(assert (=> b!5752733 (= lt!2287497 lt!2287495)))

(declare-fun b!5752734 () Bool)

(assert (=> b!5752734 (= e!3535480 0)))

(assert (=> b!5752735 (= e!3535479 (forall!14881 (exprs!5645 (h!69908 zl!343)) lambda!312167))))

(assert (= (and d!1812988 c!1016362) b!5752733))

(assert (= (and d!1812988 (not c!1016362)) b!5752734))

(assert (= (and d!1812988 res!2428722) b!5752735))

(declare-fun m!6702486 () Bool)

(assert (=> b!5752733 m!6702486))

(assert (=> b!5752733 m!6702486))

(declare-fun m!6702488 () Bool)

(assert (=> b!5752733 m!6702488))

(declare-fun m!6702490 () Bool)

(assert (=> b!5752733 m!6702490))

(declare-fun m!6702492 () Bool)

(assert (=> b!5752733 m!6702492))

(assert (=> b!5752733 m!6702488))

(assert (=> b!5752733 m!6702488))

(declare-fun m!6702494 () Bool)

(assert (=> b!5752733 m!6702494))

(declare-fun m!6702496 () Bool)

(assert (=> b!5752735 m!6702496))

(assert (=> b!5751843 d!1812988))

(declare-fun d!1813012 () Bool)

(assert (=> d!1813012 (= (maxBigInt!0 (contextDepth!132 (h!69908 zl!343)) (zipperDepth!236 (t!376914 zl!343))) (ite (>= (contextDepth!132 (h!69908 zl!343)) (zipperDepth!236 (t!376914 zl!343))) (contextDepth!132 (h!69908 zl!343)) (zipperDepth!236 (t!376914 zl!343))))))

(assert (=> b!5751843 d!1813012))

(declare-fun bs!1347528 () Bool)

(declare-fun d!1813014 () Bool)

(assert (= bs!1347528 (and d!1813014 b!5751848)))

(declare-fun lambda!312170 () Int)

(assert (=> bs!1347528 (not (= lambda!312170 lambda!312131))))

(declare-fun bs!1347529 () Bool)

(assert (= bs!1347529 (and d!1813014 d!1812924)))

(assert (=> bs!1347529 (not (= lambda!312170 lambda!312155))))

(declare-fun bs!1347530 () Bool)

(assert (= bs!1347530 (and d!1813014 b!5751845)))

(assert (=> bs!1347530 (not (= lambda!312170 lambda!312129))))

(declare-fun bs!1347531 () Bool)

(assert (= bs!1347531 (and d!1813014 b!5751850)))

(assert (=> bs!1347531 (not (= lambda!312170 lambda!312132))))

(declare-fun bs!1347532 () Bool)

(assert (= bs!1347532 (and d!1813014 d!1812880)))

(assert (=> bs!1347532 (not (= lambda!312170 lambda!312149))))

(declare-fun bs!1347533 () Bool)

(assert (= bs!1347533 (and d!1813014 d!1812862)))

(assert (=> bs!1347533 (not (= lambda!312170 lambda!312148))))

(declare-fun bs!1347534 () Bool)

(assert (= bs!1347534 (and d!1813014 d!1812832)))

(assert (=> bs!1347534 (not (= lambda!312170 lambda!312146))))

(declare-fun bs!1347535 () Bool)

(assert (= bs!1347535 (and d!1813014 b!5751843)))

(assert (=> bs!1347535 (not (= lambda!312170 lambda!312128))))

(assert (=> d!1813014 true))

(assert (=> d!1813014 true))

(declare-fun order!27201 () Int)

(declare-fun order!27203 () Int)

(declare-fun dynLambda!24844 (Int Int) Int)

(declare-fun dynLambda!24845 (Int Int) Int)

(assert (=> d!1813014 (< (dynLambda!24844 order!27201 lambda!312127) (dynLambda!24845 order!27203 lambda!312170))))

(assert (=> d!1813014 (forall!14882 (t!376914 zl!343) lambda!312170)))

(declare-fun lt!2287501 () Unit!156576)

(declare-fun choose!43619 (List!63584 Int Int Int) Unit!156576)

(assert (=> d!1813014 (= lt!2287501 (choose!43619 (t!376914 zl!343) lt!2287424 (zipperDepth!236 (t!376914 zl!343)) lambda!312127))))

(assert (=> d!1813014 (>= lt!2287424 (zipperDepth!236 (t!376914 zl!343)))))

(assert (=> d!1813014 (= (lemmaForallContextDepthBiggerThanTransitive!122 (t!376914 zl!343) lt!2287424 (zipperDepth!236 (t!376914 zl!343)) lambda!312127) lt!2287501)))

(declare-fun bs!1347536 () Bool)

(assert (= bs!1347536 d!1813014))

(declare-fun m!6702512 () Bool)

(assert (=> bs!1347536 m!6702512))

(assert (=> bs!1347536 m!6701674))

(declare-fun m!6702514 () Bool)

(assert (=> bs!1347536 m!6702514))

(assert (=> b!5751843 d!1813014))

(declare-fun bs!1347537 () Bool)

(declare-fun b!5752758 () Bool)

(assert (= bs!1347537 (and b!5752758 b!5751843)))

(declare-fun lambda!312171 () Int)

(assert (=> bs!1347537 (= lambda!312171 lambda!312127)))

(declare-fun bs!1347538 () Bool)

(assert (= bs!1347538 (and b!5752758 b!5751848)))

(assert (=> bs!1347538 (= lambda!312171 lambda!312130)))

(declare-fun bs!1347539 () Bool)

(assert (= bs!1347539 (and b!5752758 d!1813014)))

(declare-fun lambda!312172 () Int)

(assert (=> bs!1347539 (not (= lambda!312172 lambda!312170))))

(declare-fun lt!2287502 () Int)

(assert (=> bs!1347538 (= (= lt!2287502 lt!2287428) (= lambda!312172 lambda!312131))))

(declare-fun bs!1347540 () Bool)

(assert (= bs!1347540 (and b!5752758 d!1812924)))

(assert (=> bs!1347540 (not (= lambda!312172 lambda!312155))))

(declare-fun bs!1347541 () Bool)

(assert (= bs!1347541 (and b!5752758 b!5751845)))

(assert (=> bs!1347541 (= (= lt!2287502 lt!2287427) (= lambda!312172 lambda!312129))))

(declare-fun bs!1347542 () Bool)

(assert (= bs!1347542 (and b!5752758 b!5751850)))

(assert (=> bs!1347542 (= (= lt!2287502 lt!2287431) (= lambda!312172 lambda!312132))))

(declare-fun bs!1347543 () Bool)

(assert (= bs!1347543 (and b!5752758 d!1812880)))

(assert (=> bs!1347543 (not (= lambda!312172 lambda!312149))))

(declare-fun bs!1347544 () Bool)

(assert (= bs!1347544 (and b!5752758 d!1812862)))

(assert (=> bs!1347544 (not (= lambda!312172 lambda!312148))))

(declare-fun bs!1347545 () Bool)

(assert (= bs!1347545 (and b!5752758 d!1812832)))

(assert (=> bs!1347545 (not (= lambda!312172 lambda!312146))))

(assert (=> bs!1347537 (= (= lt!2287502 lt!2287424) (= lambda!312172 lambda!312128))))

(assert (=> b!5752758 true))

(declare-fun bs!1347546 () Bool)

(declare-fun b!5752760 () Bool)

(assert (= bs!1347546 (and b!5752760 d!1813014)))

(declare-fun lambda!312173 () Int)

(assert (=> bs!1347546 (not (= lambda!312173 lambda!312170))))

(declare-fun bs!1347547 () Bool)

(assert (= bs!1347547 (and b!5752760 b!5751848)))

(declare-fun lt!2287505 () Int)

(assert (=> bs!1347547 (= (= lt!2287505 lt!2287428) (= lambda!312173 lambda!312131))))

(declare-fun bs!1347548 () Bool)

(assert (= bs!1347548 (and b!5752760 d!1812924)))

(assert (=> bs!1347548 (not (= lambda!312173 lambda!312155))))

(declare-fun bs!1347549 () Bool)

(assert (= bs!1347549 (and b!5752760 b!5752758)))

(assert (=> bs!1347549 (= (= lt!2287505 lt!2287502) (= lambda!312173 lambda!312172))))

(declare-fun bs!1347550 () Bool)

(assert (= bs!1347550 (and b!5752760 b!5751845)))

(assert (=> bs!1347550 (= (= lt!2287505 lt!2287427) (= lambda!312173 lambda!312129))))

(declare-fun bs!1347551 () Bool)

(assert (= bs!1347551 (and b!5752760 b!5751850)))

(assert (=> bs!1347551 (= (= lt!2287505 lt!2287431) (= lambda!312173 lambda!312132))))

(declare-fun bs!1347552 () Bool)

(assert (= bs!1347552 (and b!5752760 d!1812880)))

(assert (=> bs!1347552 (not (= lambda!312173 lambda!312149))))

(declare-fun bs!1347553 () Bool)

(assert (= bs!1347553 (and b!5752760 d!1812862)))

(assert (=> bs!1347553 (not (= lambda!312173 lambda!312148))))

(declare-fun bs!1347554 () Bool)

(assert (= bs!1347554 (and b!5752760 d!1812832)))

(assert (=> bs!1347554 (not (= lambda!312173 lambda!312146))))

(declare-fun bs!1347555 () Bool)

(assert (= bs!1347555 (and b!5752760 b!5751843)))

(assert (=> bs!1347555 (= (= lt!2287505 lt!2287424) (= lambda!312173 lambda!312128))))

(assert (=> b!5752760 true))

(declare-fun d!1813020 () Bool)

(declare-fun e!3535493 () Bool)

(assert (=> d!1813020 e!3535493))

(declare-fun res!2428730 () Bool)

(assert (=> d!1813020 (=> (not res!2428730) (not e!3535493))))

(assert (=> d!1813020 (= res!2428730 (>= lt!2287505 0))))

(declare-fun e!3535494 () Int)

(assert (=> d!1813020 (= lt!2287505 e!3535494)))

(declare-fun c!1016370 () Bool)

(assert (=> d!1813020 (= c!1016370 ((_ is Cons!63460) (t!376914 zl!343)))))

(assert (=> d!1813020 (= (zipperDepth!236 (t!376914 zl!343)) lt!2287505)))

(assert (=> b!5752758 (= e!3535494 lt!2287502)))

(assert (=> b!5752758 (= lt!2287502 (maxBigInt!0 (contextDepth!132 (h!69908 (t!376914 zl!343))) (zipperDepth!236 (t!376914 (t!376914 zl!343)))))))

(declare-fun lt!2287504 () Unit!156576)

(assert (=> b!5752758 (= lt!2287504 (lemmaForallContextDepthBiggerThanTransitive!122 (t!376914 (t!376914 zl!343)) lt!2287502 (zipperDepth!236 (t!376914 (t!376914 zl!343))) lambda!312171))))

(assert (=> b!5752758 (forall!14882 (t!376914 (t!376914 zl!343)) lambda!312172)))

(declare-fun lt!2287503 () Unit!156576)

(assert (=> b!5752758 (= lt!2287503 lt!2287504)))

(declare-fun b!5752759 () Bool)

(assert (=> b!5752759 (= e!3535494 0)))

(assert (=> b!5752760 (= e!3535493 (forall!14882 (t!376914 zl!343) lambda!312173))))

(assert (= (and d!1813020 c!1016370) b!5752758))

(assert (= (and d!1813020 (not c!1016370)) b!5752759))

(assert (= (and d!1813020 res!2428730) b!5752760))

(declare-fun m!6702516 () Bool)

(assert (=> b!5752758 m!6702516))

(declare-fun m!6702518 () Bool)

(assert (=> b!5752758 m!6702518))

(declare-fun m!6702520 () Bool)

(assert (=> b!5752758 m!6702520))

(assert (=> b!5752758 m!6702518))

(declare-fun m!6702522 () Bool)

(assert (=> b!5752758 m!6702522))

(declare-fun m!6702524 () Bool)

(assert (=> b!5752758 m!6702524))

(assert (=> b!5752758 m!6702518))

(assert (=> b!5752758 m!6702516))

(declare-fun m!6702526 () Bool)

(assert (=> b!5752760 m!6702526))

(assert (=> b!5751843 d!1813020))

(assert (=> d!1812714 d!1812730))

(declare-fun bs!1347556 () Bool)

(declare-fun b!5752765 () Bool)

(assert (= bs!1347556 (and b!5752765 b!5752219)))

(declare-fun lambda!312174 () Int)

(assert (=> bs!1347556 (not (= lambda!312174 lambda!312143))))

(declare-fun bs!1347557 () Bool)

(assert (= bs!1347557 (and b!5752765 b!5752582)))

(assert (=> bs!1347557 (not (= lambda!312174 lambda!312154))))

(declare-fun bs!1347558 () Bool)

(assert (= bs!1347558 (and b!5752765 b!5752579)))

(assert (=> bs!1347558 (= (and (= (reg!16090 (regTwo!32035 r!7292)) (reg!16090 (regTwo!32035 lt!2287258))) (= (regTwo!32035 r!7292) (regTwo!32035 lt!2287258))) (= lambda!312174 lambda!312153))))

(declare-fun bs!1347559 () Bool)

(assert (= bs!1347559 (and b!5752765 b!5751872)))

(assert (=> bs!1347559 (not (= lambda!312174 lambda!312134))))

(declare-fun bs!1347560 () Bool)

(assert (= bs!1347560 (and b!5752765 b!5751783)))

(assert (=> bs!1347560 (= (and (= (reg!16090 (regTwo!32035 r!7292)) (reg!16090 r!7292)) (= (regTwo!32035 r!7292) r!7292)) (= lambda!312174 lambda!312119))))

(declare-fun bs!1347561 () Bool)

(assert (= bs!1347561 (and b!5752765 d!1812626)))

(assert (=> bs!1347561 (not (= lambda!312174 lambda!312113))))

(declare-fun bs!1347562 () Bool)

(assert (= bs!1347562 (and b!5752765 b!5752090)))

(assert (=> bs!1347562 (not (= lambda!312174 lambda!312137))))

(declare-fun bs!1347563 () Bool)

(assert (= bs!1347563 (and b!5752765 b!5750992)))

(assert (=> bs!1347563 (not (= lambda!312174 lambda!312039))))

(assert (=> bs!1347563 (not (= lambda!312174 lambda!312040))))

(declare-fun bs!1347564 () Bool)

(assert (= bs!1347564 (and b!5752765 b!5752216)))

(assert (=> bs!1347564 (= (and (= (reg!16090 (regTwo!32035 r!7292)) (reg!16090 (regOne!32035 r!7292))) (= (regTwo!32035 r!7292) (regOne!32035 r!7292))) (= lambda!312174 lambda!312142))))

(declare-fun bs!1347565 () Bool)

(assert (= bs!1347565 (and b!5752765 b!5751869)))

(assert (=> bs!1347565 (= (and (= (reg!16090 (regTwo!32035 r!7292)) (reg!16090 lt!2287258)) (= (regTwo!32035 r!7292) lt!2287258)) (= lambda!312174 lambda!312133))))

(declare-fun bs!1347566 () Bool)

(assert (= bs!1347566 (and b!5752765 b!5752087)))

(assert (=> bs!1347566 (= (and (= (reg!16090 (regTwo!32035 r!7292)) (reg!16090 (regOne!32035 lt!2287258))) (= (regTwo!32035 r!7292) (regOne!32035 lt!2287258))) (= lambda!312174 lambda!312136))))

(assert (=> bs!1347561 (not (= lambda!312174 lambda!312112))))

(declare-fun bs!1347567 () Bool)

(assert (= bs!1347567 (and b!5752765 d!1812624)))

(assert (=> bs!1347567 (not (= lambda!312174 lambda!312107))))

(declare-fun bs!1347568 () Bool)

(assert (= bs!1347568 (and b!5752765 b!5751786)))

(assert (=> bs!1347568 (not (= lambda!312174 lambda!312120))))

(assert (=> b!5752765 true))

(assert (=> b!5752765 true))

(declare-fun bs!1347569 () Bool)

(declare-fun b!5752768 () Bool)

(assert (= bs!1347569 (and b!5752768 b!5752219)))

(declare-fun lambda!312175 () Int)

(assert (=> bs!1347569 (= (and (= (regOne!32034 (regTwo!32035 r!7292)) (regOne!32034 (regOne!32035 r!7292))) (= (regTwo!32034 (regTwo!32035 r!7292)) (regTwo!32034 (regOne!32035 r!7292)))) (= lambda!312175 lambda!312143))))

(declare-fun bs!1347570 () Bool)

(assert (= bs!1347570 (and b!5752768 b!5752582)))

(assert (=> bs!1347570 (= (and (= (regOne!32034 (regTwo!32035 r!7292)) (regOne!32034 (regTwo!32035 lt!2287258))) (= (regTwo!32034 (regTwo!32035 r!7292)) (regTwo!32034 (regTwo!32035 lt!2287258)))) (= lambda!312175 lambda!312154))))

(declare-fun bs!1347571 () Bool)

(assert (= bs!1347571 (and b!5752768 b!5752579)))

(assert (=> bs!1347571 (not (= lambda!312175 lambda!312153))))

(declare-fun bs!1347572 () Bool)

(assert (= bs!1347572 (and b!5752768 b!5751872)))

(assert (=> bs!1347572 (= (and (= (regOne!32034 (regTwo!32035 r!7292)) (regOne!32034 lt!2287258)) (= (regTwo!32034 (regTwo!32035 r!7292)) (regTwo!32034 lt!2287258))) (= lambda!312175 lambda!312134))))

(declare-fun bs!1347573 () Bool)

(assert (= bs!1347573 (and b!5752768 b!5751783)))

(assert (=> bs!1347573 (not (= lambda!312175 lambda!312119))))

(declare-fun bs!1347574 () Bool)

(assert (= bs!1347574 (and b!5752768 d!1812626)))

(assert (=> bs!1347574 (= (and (= (regOne!32034 (regTwo!32035 r!7292)) (regOne!32034 r!7292)) (= (regTwo!32034 (regTwo!32035 r!7292)) (regTwo!32034 r!7292))) (= lambda!312175 lambda!312113))))

(declare-fun bs!1347575 () Bool)

(assert (= bs!1347575 (and b!5752768 b!5752090)))

(assert (=> bs!1347575 (= (and (= (regOne!32034 (regTwo!32035 r!7292)) (regOne!32034 (regOne!32035 lt!2287258))) (= (regTwo!32034 (regTwo!32035 r!7292)) (regTwo!32034 (regOne!32035 lt!2287258)))) (= lambda!312175 lambda!312137))))

(declare-fun bs!1347576 () Bool)

(assert (= bs!1347576 (and b!5752768 b!5750992)))

(assert (=> bs!1347576 (not (= lambda!312175 lambda!312039))))

(assert (=> bs!1347576 (= (and (= (regOne!32034 (regTwo!32035 r!7292)) (regOne!32034 r!7292)) (= (regTwo!32034 (regTwo!32035 r!7292)) (regTwo!32034 r!7292))) (= lambda!312175 lambda!312040))))

(declare-fun bs!1347577 () Bool)

(assert (= bs!1347577 (and b!5752768 b!5751869)))

(assert (=> bs!1347577 (not (= lambda!312175 lambda!312133))))

(declare-fun bs!1347578 () Bool)

(assert (= bs!1347578 (and b!5752768 b!5752087)))

(assert (=> bs!1347578 (not (= lambda!312175 lambda!312136))))

(assert (=> bs!1347574 (not (= lambda!312175 lambda!312112))))

(declare-fun bs!1347579 () Bool)

(assert (= bs!1347579 (and b!5752768 d!1812624)))

(assert (=> bs!1347579 (not (= lambda!312175 lambda!312107))))

(declare-fun bs!1347580 () Bool)

(assert (= bs!1347580 (and b!5752768 b!5751786)))

(assert (=> bs!1347580 (= (and (= (regOne!32034 (regTwo!32035 r!7292)) (regOne!32034 r!7292)) (= (regTwo!32034 (regTwo!32035 r!7292)) (regTwo!32034 r!7292))) (= lambda!312175 lambda!312120))))

(declare-fun bs!1347582 () Bool)

(assert (= bs!1347582 (and b!5752768 b!5752216)))

(assert (=> bs!1347582 (not (= lambda!312175 lambda!312142))))

(declare-fun bs!1347583 () Bool)

(assert (= bs!1347583 (and b!5752768 b!5752765)))

(assert (=> bs!1347583 (not (= lambda!312175 lambda!312174))))

(assert (=> b!5752768 true))

(assert (=> b!5752768 true))

(declare-fun b!5752761 () Bool)

(declare-fun e!3535495 () Bool)

(declare-fun call!441108 () Bool)

(assert (=> b!5752761 (= e!3535495 call!441108)))

(declare-fun bm!441102 () Bool)

(assert (=> bm!441102 (= call!441108 (isEmpty!35345 s!2326))))

(declare-fun b!5752762 () Bool)

(declare-fun c!1016373 () Bool)

(assert (=> b!5752762 (= c!1016373 ((_ is Union!15761) (regTwo!32035 r!7292)))))

(declare-fun e!3535501 () Bool)

(declare-fun e!3535499 () Bool)

(assert (=> b!5752762 (= e!3535501 e!3535499)))

(declare-fun b!5752763 () Bool)

(assert (=> b!5752763 (= e!3535501 (= s!2326 (Cons!63458 (c!1015817 (regTwo!32035 r!7292)) Nil!63458)))))

(declare-fun b!5752764 () Bool)

(declare-fun c!1016374 () Bool)

(assert (=> b!5752764 (= c!1016374 ((_ is ElementMatch!15761) (regTwo!32035 r!7292)))))

(declare-fun e!3535500 () Bool)

(assert (=> b!5752764 (= e!3535500 e!3535501)))

(declare-fun e!3535498 () Bool)

(declare-fun call!441107 () Bool)

(assert (=> b!5752765 (= e!3535498 call!441107)))

(declare-fun d!1813024 () Bool)

(declare-fun c!1016372 () Bool)

(assert (=> d!1813024 (= c!1016372 ((_ is EmptyExpr!15761) (regTwo!32035 r!7292)))))

(assert (=> d!1813024 (= (matchRSpec!2864 (regTwo!32035 r!7292) s!2326) e!3535495)))

(declare-fun bm!441103 () Bool)

(declare-fun c!1016371 () Bool)

(assert (=> bm!441103 (= call!441107 (Exists!2861 (ite c!1016371 lambda!312174 lambda!312175)))))

(declare-fun b!5752766 () Bool)

(assert (=> b!5752766 (= e!3535495 e!3535500)))

(declare-fun res!2428732 () Bool)

(assert (=> b!5752766 (= res!2428732 (not ((_ is EmptyLang!15761) (regTwo!32035 r!7292))))))

(assert (=> b!5752766 (=> (not res!2428732) (not e!3535500))))

(declare-fun b!5752767 () Bool)

(declare-fun e!3535497 () Bool)

(assert (=> b!5752767 (= e!3535499 e!3535497)))

(assert (=> b!5752767 (= c!1016371 ((_ is Star!15761) (regTwo!32035 r!7292)))))

(assert (=> b!5752768 (= e!3535497 call!441107)))

(declare-fun b!5752769 () Bool)

(declare-fun e!3535496 () Bool)

(assert (=> b!5752769 (= e!3535499 e!3535496)))

(declare-fun res!2428731 () Bool)

(assert (=> b!5752769 (= res!2428731 (matchRSpec!2864 (regOne!32035 (regTwo!32035 r!7292)) s!2326))))

(assert (=> b!5752769 (=> res!2428731 e!3535496)))

(declare-fun b!5752770 () Bool)

(declare-fun res!2428733 () Bool)

(assert (=> b!5752770 (=> res!2428733 e!3535498)))

(assert (=> b!5752770 (= res!2428733 call!441108)))

(assert (=> b!5752770 (= e!3535497 e!3535498)))

(declare-fun b!5752771 () Bool)

(assert (=> b!5752771 (= e!3535496 (matchRSpec!2864 (regTwo!32035 (regTwo!32035 r!7292)) s!2326))))

(assert (= (and d!1813024 c!1016372) b!5752761))

(assert (= (and d!1813024 (not c!1016372)) b!5752766))

(assert (= (and b!5752766 res!2428732) b!5752764))

(assert (= (and b!5752764 c!1016374) b!5752763))

(assert (= (and b!5752764 (not c!1016374)) b!5752762))

(assert (= (and b!5752762 c!1016373) b!5752769))

(assert (= (and b!5752762 (not c!1016373)) b!5752767))

(assert (= (and b!5752769 (not res!2428731)) b!5752771))

(assert (= (and b!5752767 c!1016371) b!5752770))

(assert (= (and b!5752767 (not c!1016371)) b!5752768))

(assert (= (and b!5752770 (not res!2428733)) b!5752765))

(assert (= (or b!5752765 b!5752768) bm!441103))

(assert (= (or b!5752761 b!5752770) bm!441102))

(assert (=> bm!441102 m!6701472))

(declare-fun m!6702542 () Bool)

(assert (=> bm!441103 m!6702542))

(declare-fun m!6702544 () Bool)

(assert (=> b!5752769 m!6702544))

(declare-fun m!6702546 () Bool)

(assert (=> b!5752771 m!6702546))

(assert (=> b!5751789 d!1813024))

(assert (=> b!5751989 d!1812748))

(declare-fun bs!1347584 () Bool)

(declare-fun d!1813032 () Bool)

(assert (= bs!1347584 (and d!1813032 d!1813014)))

(declare-fun lambda!312176 () Int)

(assert (=> bs!1347584 (not (= lambda!312176 lambda!312170))))

(declare-fun bs!1347585 () Bool)

(assert (= bs!1347585 (and d!1813032 b!5751848)))

(assert (=> bs!1347585 (not (= lambda!312176 lambda!312131))))

(declare-fun bs!1347586 () Bool)

(assert (= bs!1347586 (and d!1813032 d!1812924)))

(assert (=> bs!1347586 (= lambda!312176 lambda!312155)))

(declare-fun bs!1347587 () Bool)

(assert (= bs!1347587 (and d!1813032 b!5752760)))

(assert (=> bs!1347587 (not (= lambda!312176 lambda!312173))))

(declare-fun bs!1347588 () Bool)

(assert (= bs!1347588 (and d!1813032 b!5752758)))

(assert (=> bs!1347588 (not (= lambda!312176 lambda!312172))))

(declare-fun bs!1347589 () Bool)

(assert (= bs!1347589 (and d!1813032 b!5751845)))

(assert (=> bs!1347589 (not (= lambda!312176 lambda!312129))))

(declare-fun bs!1347590 () Bool)

(assert (= bs!1347590 (and d!1813032 b!5751850)))

(assert (=> bs!1347590 (not (= lambda!312176 lambda!312132))))

(declare-fun bs!1347591 () Bool)

(assert (= bs!1347591 (and d!1813032 d!1812880)))

(assert (=> bs!1347591 (= lambda!312176 lambda!312149)))

(declare-fun bs!1347592 () Bool)

(assert (= bs!1347592 (and d!1813032 d!1812862)))

(assert (=> bs!1347592 (= lambda!312176 lambda!312148)))

(declare-fun bs!1347593 () Bool)

(assert (= bs!1347593 (and d!1813032 d!1812832)))

(assert (=> bs!1347593 (= lambda!312176 lambda!312146)))

(declare-fun bs!1347594 () Bool)

(assert (= bs!1347594 (and d!1813032 b!5751843)))

(assert (=> bs!1347594 (not (= lambda!312176 lambda!312128))))

(assert (=> d!1813032 (= (nullableZipper!1692 ((_ map or) lt!2287262 lt!2287265)) (exists!2235 ((_ map or) lt!2287262 lt!2287265) lambda!312176))))

(declare-fun bs!1347595 () Bool)

(assert (= bs!1347595 d!1813032))

(declare-fun m!6702548 () Bool)

(assert (=> bs!1347595 m!6702548))

(assert (=> b!5751835 d!1813032))

(declare-fun bs!1347596 () Bool)

(declare-fun d!1813034 () Bool)

(assert (= bs!1347596 (and d!1813034 d!1812772)))

(declare-fun lambda!312177 () Int)

(assert (=> bs!1347596 (= lambda!312177 lambda!312139)))

(declare-fun bs!1347597 () Bool)

(assert (= bs!1347597 (and d!1813034 d!1812856)))

(assert (=> bs!1347597 (= lambda!312177 lambda!312147)))

(declare-fun bs!1347598 () Bool)

(assert (= bs!1347598 (and d!1813034 d!1812708)))

(assert (=> bs!1347598 (= lambda!312177 lambda!312135)))

(declare-fun bs!1347599 () Bool)

(assert (= bs!1347599 (and d!1813034 d!1812602)))

(assert (=> bs!1347599 (= lambda!312177 lambda!312094)))

(declare-fun bs!1347600 () Bool)

(assert (= bs!1347600 (and d!1813034 d!1812782)))

(assert (=> bs!1347600 (= lambda!312177 lambda!312141)))

(declare-fun bs!1347601 () Bool)

(assert (= bs!1347601 (and d!1813034 d!1812938)))

(assert (=> bs!1347601 (= lambda!312177 lambda!312156)))

(declare-fun bs!1347602 () Bool)

(assert (= bs!1347602 (and d!1813034 d!1812888)))

(assert (=> bs!1347602 (= lambda!312177 lambda!312151)))

(declare-fun bs!1347603 () Bool)

(assert (= bs!1347603 (and d!1813034 d!1812616)))

(assert (=> bs!1347603 (= lambda!312177 lambda!312104)))

(declare-fun bs!1347604 () Bool)

(assert (= bs!1347604 (and d!1813034 b!5752733)))

(assert (=> bs!1347604 (not (= lambda!312177 lambda!312166))))

(declare-fun bs!1347605 () Bool)

(assert (= bs!1347605 (and d!1813034 d!1812604)))

(assert (=> bs!1347605 (= lambda!312177 lambda!312097)))

(declare-fun bs!1347606 () Bool)

(assert (= bs!1347606 (and d!1813034 b!5752735)))

(assert (=> bs!1347606 (not (= lambda!312177 lambda!312167))))

(declare-fun bs!1347607 () Bool)

(assert (= bs!1347607 (and d!1813034 d!1812606)))

(assert (=> bs!1347607 (= lambda!312177 lambda!312098)))

(declare-fun bs!1347608 () Bool)

(assert (= bs!1347608 (and d!1813034 d!1812600)))

(assert (=> bs!1347608 (= lambda!312177 lambda!312091)))

(declare-fun bs!1347609 () Bool)

(assert (= bs!1347609 (and d!1813034 d!1812886)))

(assert (=> bs!1347609 (= lambda!312177 lambda!312150)))

(assert (=> d!1813034 (= (inv!82649 (h!69908 (t!376914 zl!343))) (forall!14881 (exprs!5645 (h!69908 (t!376914 zl!343))) lambda!312177))))

(declare-fun bs!1347611 () Bool)

(assert (= bs!1347611 d!1813034))

(declare-fun m!6702550 () Bool)

(assert (=> bs!1347611 m!6702550))

(assert (=> b!5752058 d!1813034))

(assert (=> d!1812624 d!1812618))

(assert (=> d!1812624 d!1812792))

(assert (=> d!1812624 d!1812628))

(declare-fun d!1813036 () Bool)

(assert (=> d!1813036 (= (Exists!2861 lambda!312107) (choose!43609 lambda!312107))))

(declare-fun bs!1347614 () Bool)

(assert (= bs!1347614 d!1813036))

(declare-fun m!6702552 () Bool)

(assert (=> bs!1347614 m!6702552))

(assert (=> d!1812624 d!1813036))

(declare-fun bs!1347618 () Bool)

(declare-fun d!1813038 () Bool)

(assert (= bs!1347618 (and d!1813038 b!5752219)))

(declare-fun lambda!312183 () Int)

(assert (=> bs!1347618 (not (= lambda!312183 lambda!312143))))

(declare-fun bs!1347619 () Bool)

(assert (= bs!1347619 (and d!1813038 b!5752768)))

(assert (=> bs!1347619 (not (= lambda!312183 lambda!312175))))

(declare-fun bs!1347620 () Bool)

(assert (= bs!1347620 (and d!1813038 b!5752582)))

(assert (=> bs!1347620 (not (= lambda!312183 lambda!312154))))

(declare-fun bs!1347621 () Bool)

(assert (= bs!1347621 (and d!1813038 b!5752579)))

(assert (=> bs!1347621 (not (= lambda!312183 lambda!312153))))

(declare-fun bs!1347622 () Bool)

(assert (= bs!1347622 (and d!1813038 b!5751872)))

(assert (=> bs!1347622 (not (= lambda!312183 lambda!312134))))

(declare-fun bs!1347623 () Bool)

(assert (= bs!1347623 (and d!1813038 b!5751783)))

(assert (=> bs!1347623 (not (= lambda!312183 lambda!312119))))

(declare-fun bs!1347624 () Bool)

(assert (= bs!1347624 (and d!1813038 d!1812626)))

(assert (=> bs!1347624 (not (= lambda!312183 lambda!312113))))

(declare-fun bs!1347625 () Bool)

(assert (= bs!1347625 (and d!1813038 b!5752090)))

(assert (=> bs!1347625 (not (= lambda!312183 lambda!312137))))

(declare-fun bs!1347626 () Bool)

(assert (= bs!1347626 (and d!1813038 b!5750992)))

(assert (=> bs!1347626 (= lambda!312183 lambda!312039)))

(assert (=> bs!1347626 (not (= lambda!312183 lambda!312040))))

(declare-fun bs!1347628 () Bool)

(assert (= bs!1347628 (and d!1813038 b!5751869)))

(assert (=> bs!1347628 (not (= lambda!312183 lambda!312133))))

(declare-fun bs!1347629 () Bool)

(assert (= bs!1347629 (and d!1813038 b!5752087)))

(assert (=> bs!1347629 (not (= lambda!312183 lambda!312136))))

(assert (=> bs!1347624 (= lambda!312183 lambda!312112)))

(declare-fun bs!1347630 () Bool)

(assert (= bs!1347630 (and d!1813038 d!1812624)))

(assert (=> bs!1347630 (= lambda!312183 lambda!312107)))

(declare-fun bs!1347631 () Bool)

(assert (= bs!1347631 (and d!1813038 b!5751786)))

(assert (=> bs!1347631 (not (= lambda!312183 lambda!312120))))

(declare-fun bs!1347632 () Bool)

(assert (= bs!1347632 (and d!1813038 b!5752216)))

(assert (=> bs!1347632 (not (= lambda!312183 lambda!312142))))

(declare-fun bs!1347633 () Bool)

(assert (= bs!1347633 (and d!1813038 b!5752765)))

(assert (=> bs!1347633 (not (= lambda!312183 lambda!312174))))

(assert (=> d!1813038 true))

(assert (=> d!1813038 true))

(assert (=> d!1813038 true))

(assert (=> d!1813038 (= (isDefined!12473 (findConcatSeparation!2184 (regOne!32034 r!7292) (regTwo!32034 r!7292) Nil!63458 s!2326 s!2326)) (Exists!2861 lambda!312183))))

(assert (=> d!1813038 true))

(declare-fun _$89!1868 () Unit!156576)

(assert (=> d!1813038 (= (choose!43610 (regOne!32034 r!7292) (regTwo!32034 r!7292) s!2326) _$89!1868)))

(declare-fun bs!1347634 () Bool)

(assert (= bs!1347634 d!1813038))

(assert (=> bs!1347634 m!6701030))

(assert (=> bs!1347634 m!6701030))

(assert (=> bs!1347634 m!6701032))

(declare-fun m!6702578 () Bool)

(assert (=> bs!1347634 m!6702578))

(assert (=> d!1812624 d!1813038))

(declare-fun b!5752819 () Bool)

(declare-fun e!3535535 () Bool)

(declare-fun lt!2287510 () Int)

(assert (=> b!5752819 (= e!3535535 (= lt!2287510 1))))

(declare-fun b!5752820 () Bool)

(declare-fun e!3535541 () Bool)

(declare-fun call!441121 () Int)

(assert (=> b!5752820 (= e!3535541 (> lt!2287510 call!441121))))

(declare-fun c!1016392 () Bool)

(declare-fun bm!441114 () Bool)

(declare-fun call!441124 () Int)

(assert (=> bm!441114 (= call!441124 (regexDepth!238 (ite c!1016392 (regTwo!32035 (ite c!1016130 (reg!16090 lt!2287295) (ite c!1016127 (regOne!32035 lt!2287295) (regTwo!32034 lt!2287295)))) (regOne!32034 (ite c!1016130 (reg!16090 lt!2287295) (ite c!1016127 (regOne!32035 lt!2287295) (regTwo!32034 lt!2287295)))))))))

(declare-fun bm!441115 () Bool)

(declare-fun call!441122 () Int)

(declare-fun call!441119 () Int)

(assert (=> bm!441115 (= call!441122 call!441119)))

(declare-fun b!5752821 () Bool)

(declare-fun e!3535533 () Int)

(declare-fun e!3535536 () Int)

(assert (=> b!5752821 (= e!3535533 e!3535536)))

(declare-fun c!1016395 () Bool)

(assert (=> b!5752821 (= c!1016395 ((_ is Star!15761) (ite c!1016130 (reg!16090 lt!2287295) (ite c!1016127 (regOne!32035 lt!2287295) (regTwo!32034 lt!2287295)))))))

(declare-fun b!5752822 () Bool)

(assert (=> b!5752822 (= c!1016392 ((_ is Union!15761) (ite c!1016130 (reg!16090 lt!2287295) (ite c!1016127 (regOne!32035 lt!2287295) (regTwo!32034 lt!2287295)))))))

(declare-fun e!3535534 () Int)

(assert (=> b!5752822 (= e!3535536 e!3535534)))

(declare-fun b!5752823 () Bool)

(declare-fun e!3535538 () Int)

(assert (=> b!5752823 (= e!3535534 e!3535538)))

(declare-fun c!1016390 () Bool)

(assert (=> b!5752823 (= c!1016390 ((_ is Concat!24606) (ite c!1016130 (reg!16090 lt!2287295) (ite c!1016127 (regOne!32035 lt!2287295) (regTwo!32034 lt!2287295)))))))

(declare-fun call!441123 () Int)

(declare-fun bm!441116 () Bool)

(assert (=> bm!441116 (= call!441123 (regexDepth!238 (ite c!1016395 (reg!16090 (ite c!1016130 (reg!16090 lt!2287295) (ite c!1016127 (regOne!32035 lt!2287295) (regTwo!32034 lt!2287295)))) (ite c!1016392 (regOne!32035 (ite c!1016130 (reg!16090 lt!2287295) (ite c!1016127 (regOne!32035 lt!2287295) (regTwo!32034 lt!2287295)))) (regTwo!32034 (ite c!1016130 (reg!16090 lt!2287295) (ite c!1016127 (regOne!32035 lt!2287295) (regTwo!32034 lt!2287295))))))))))

(declare-fun b!5752824 () Bool)

(assert (=> b!5752824 (= e!3535536 (+ 1 call!441123))))

(declare-fun b!5752825 () Bool)

(declare-fun e!3535540 () Bool)

(assert (=> b!5752825 (= e!3535540 e!3535541)))

(declare-fun res!2428757 () Bool)

(assert (=> b!5752825 (= res!2428757 (> lt!2287510 call!441119))))

(assert (=> b!5752825 (=> (not res!2428757) (not e!3535541))))

(declare-fun b!5752827 () Bool)

(declare-fun e!3535532 () Bool)

(assert (=> b!5752827 (= e!3535532 (> lt!2287510 call!441121))))

(declare-fun b!5752828 () Bool)

(declare-fun call!441120 () Int)

(assert (=> b!5752828 (= e!3535538 (+ 1 call!441120))))

(declare-fun b!5752829 () Bool)

(declare-fun e!3535537 () Bool)

(assert (=> b!5752829 (= e!3535540 e!3535537)))

(declare-fun c!1016391 () Bool)

(assert (=> b!5752829 (= c!1016391 ((_ is Concat!24606) (ite c!1016130 (reg!16090 lt!2287295) (ite c!1016127 (regOne!32035 lt!2287295) (regTwo!32034 lt!2287295)))))))

(declare-fun bm!441117 () Bool)

(declare-fun c!1016394 () Bool)

(assert (=> bm!441117 (= call!441119 (regexDepth!238 (ite c!1016394 (regOne!32035 (ite c!1016130 (reg!16090 lt!2287295) (ite c!1016127 (regOne!32035 lt!2287295) (regTwo!32034 lt!2287295)))) (ite c!1016391 (regOne!32034 (ite c!1016130 (reg!16090 lt!2287295) (ite c!1016127 (regOne!32035 lt!2287295) (regTwo!32034 lt!2287295)))) (reg!16090 (ite c!1016130 (reg!16090 lt!2287295) (ite c!1016127 (regOne!32035 lt!2287295) (regTwo!32034 lt!2287295))))))))))

(declare-fun bm!441118 () Bool)

(declare-fun call!441125 () Int)

(assert (=> bm!441118 (= call!441120 (maxBigInt!0 (ite c!1016392 call!441125 call!441124) (ite c!1016392 call!441124 call!441125)))))

(declare-fun b!5752830 () Bool)

(assert (=> b!5752830 (= e!3535538 1)))

(declare-fun b!5752831 () Bool)

(declare-fun res!2428759 () Bool)

(assert (=> b!5752831 (=> (not res!2428759) (not e!3535532))))

(assert (=> b!5752831 (= res!2428759 (> lt!2287510 call!441122))))

(assert (=> b!5752831 (= e!3535537 e!3535532)))

(declare-fun b!5752832 () Bool)

(assert (=> b!5752832 (= e!3535534 (+ 1 call!441120))))

(declare-fun b!5752833 () Bool)

(assert (=> b!5752833 (= e!3535535 (> lt!2287510 call!441122))))

(declare-fun b!5752834 () Bool)

(declare-fun c!1016389 () Bool)

(assert (=> b!5752834 (= c!1016389 ((_ is Star!15761) (ite c!1016130 (reg!16090 lt!2287295) (ite c!1016127 (regOne!32035 lt!2287295) (regTwo!32034 lt!2287295)))))))

(assert (=> b!5752834 (= e!3535537 e!3535535)))

(declare-fun b!5752835 () Bool)

(declare-fun e!3535539 () Bool)

(assert (=> b!5752835 (= e!3535539 e!3535540)))

(assert (=> b!5752835 (= c!1016394 ((_ is Union!15761) (ite c!1016130 (reg!16090 lt!2287295) (ite c!1016127 (regOne!32035 lt!2287295) (regTwo!32034 lt!2287295)))))))

(declare-fun d!1813056 () Bool)

(assert (=> d!1813056 e!3535539))

(declare-fun res!2428758 () Bool)

(assert (=> d!1813056 (=> (not res!2428758) (not e!3535539))))

(assert (=> d!1813056 (= res!2428758 (> lt!2287510 0))))

(assert (=> d!1813056 (= lt!2287510 e!3535533)))

(declare-fun c!1016393 () Bool)

(assert (=> d!1813056 (= c!1016393 ((_ is ElementMatch!15761) (ite c!1016130 (reg!16090 lt!2287295) (ite c!1016127 (regOne!32035 lt!2287295) (regTwo!32034 lt!2287295)))))))

(assert (=> d!1813056 (= (regexDepth!238 (ite c!1016130 (reg!16090 lt!2287295) (ite c!1016127 (regOne!32035 lt!2287295) (regTwo!32034 lt!2287295)))) lt!2287510)))

(declare-fun b!5752826 () Bool)

(assert (=> b!5752826 (= e!3535533 1)))

(declare-fun bm!441119 () Bool)

(assert (=> bm!441119 (= call!441121 (regexDepth!238 (ite c!1016394 (regTwo!32035 (ite c!1016130 (reg!16090 lt!2287295) (ite c!1016127 (regOne!32035 lt!2287295) (regTwo!32034 lt!2287295)))) (regTwo!32034 (ite c!1016130 (reg!16090 lt!2287295) (ite c!1016127 (regOne!32035 lt!2287295) (regTwo!32034 lt!2287295)))))))))

(declare-fun bm!441120 () Bool)

(assert (=> bm!441120 (= call!441125 call!441123)))

(assert (= (and d!1813056 c!1016393) b!5752826))

(assert (= (and d!1813056 (not c!1016393)) b!5752821))

(assert (= (and b!5752821 c!1016395) b!5752824))

(assert (= (and b!5752821 (not c!1016395)) b!5752822))

(assert (= (and b!5752822 c!1016392) b!5752832))

(assert (= (and b!5752822 (not c!1016392)) b!5752823))

(assert (= (and b!5752823 c!1016390) b!5752828))

(assert (= (and b!5752823 (not c!1016390)) b!5752830))

(assert (= (or b!5752832 b!5752828) bm!441114))

(assert (= (or b!5752832 b!5752828) bm!441120))

(assert (= (or b!5752832 b!5752828) bm!441118))

(assert (= (or b!5752824 bm!441120) bm!441116))

(assert (= (and d!1813056 res!2428758) b!5752835))

(assert (= (and b!5752835 c!1016394) b!5752825))

(assert (= (and b!5752835 (not c!1016394)) b!5752829))

(assert (= (and b!5752825 res!2428757) b!5752820))

(assert (= (and b!5752829 c!1016391) b!5752831))

(assert (= (and b!5752829 (not c!1016391)) b!5752834))

(assert (= (and b!5752831 res!2428759) b!5752827))

(assert (= (and b!5752834 c!1016389) b!5752833))

(assert (= (and b!5752834 (not c!1016389)) b!5752819))

(assert (= (or b!5752831 b!5752833) bm!441115))

(assert (= (or b!5752820 b!5752827) bm!441119))

(assert (= (or b!5752825 bm!441115) bm!441117))

(declare-fun m!6702584 () Bool)

(assert (=> bm!441117 m!6702584))

(declare-fun m!6702586 () Bool)

(assert (=> bm!441118 m!6702586))

(declare-fun m!6702588 () Bool)

(assert (=> bm!441116 m!6702588))

(declare-fun m!6702590 () Bool)

(assert (=> bm!441119 m!6702590))

(declare-fun m!6702592 () Bool)

(assert (=> bm!441114 m!6702592))

(assert (=> bm!440913 d!1813056))

(assert (=> d!1812612 d!1812608))

(declare-fun d!1813062 () Bool)

(assert (=> d!1813062 (= (flatMap!1374 lt!2287280 lambda!312041) (dynLambda!24837 lambda!312041 lt!2287277))))

(assert (=> d!1813062 true))

(declare-fun _$13!2446 () Unit!156576)

(assert (=> d!1813062 (= (choose!43608 lt!2287280 lt!2287277 lambda!312041) _$13!2446)))

(declare-fun b_lambda!217293 () Bool)

(assert (=> (not b_lambda!217293) (not d!1813062)))

(declare-fun bs!1347635 () Bool)

(assert (= bs!1347635 d!1813062))

(assert (=> bs!1347635 m!6700974))

(assert (=> bs!1347635 m!6701526))

(assert (=> d!1812612 d!1813062))

(assert (=> b!5751858 d!1812752))

(assert (=> b!5751858 d!1812750))

(declare-fun bs!1347636 () Bool)

(declare-fun d!1813070 () Bool)

(assert (= bs!1347636 (and d!1813070 d!1813014)))

(declare-fun lambda!312184 () Int)

(assert (=> bs!1347636 (not (= lambda!312184 lambda!312170))))

(declare-fun bs!1347637 () Bool)

(assert (= bs!1347637 (and d!1813070 b!5751848)))

(assert (=> bs!1347637 (not (= lambda!312184 lambda!312131))))

(declare-fun bs!1347638 () Bool)

(assert (= bs!1347638 (and d!1813070 d!1812924)))

(assert (=> bs!1347638 (= lambda!312184 lambda!312155)))

(declare-fun bs!1347639 () Bool)

(assert (= bs!1347639 (and d!1813070 b!5752760)))

(assert (=> bs!1347639 (not (= lambda!312184 lambda!312173))))

(declare-fun bs!1347640 () Bool)

(assert (= bs!1347640 (and d!1813070 d!1813032)))

(assert (=> bs!1347640 (= lambda!312184 lambda!312176)))

(declare-fun bs!1347641 () Bool)

(assert (= bs!1347641 (and d!1813070 b!5752758)))

(assert (=> bs!1347641 (not (= lambda!312184 lambda!312172))))

(declare-fun bs!1347642 () Bool)

(assert (= bs!1347642 (and d!1813070 b!5751845)))

(assert (=> bs!1347642 (not (= lambda!312184 lambda!312129))))

(declare-fun bs!1347643 () Bool)

(assert (= bs!1347643 (and d!1813070 b!5751850)))

(assert (=> bs!1347643 (not (= lambda!312184 lambda!312132))))

(declare-fun bs!1347644 () Bool)

(assert (= bs!1347644 (and d!1813070 d!1812880)))

(assert (=> bs!1347644 (= lambda!312184 lambda!312149)))

(declare-fun bs!1347645 () Bool)

(assert (= bs!1347645 (and d!1813070 d!1812862)))

(assert (=> bs!1347645 (= lambda!312184 lambda!312148)))

(declare-fun bs!1347646 () Bool)

(assert (= bs!1347646 (and d!1813070 d!1812832)))

(assert (=> bs!1347646 (= lambda!312184 lambda!312146)))

(declare-fun bs!1347647 () Bool)

(assert (= bs!1347647 (and d!1813070 b!5751843)))

(assert (=> bs!1347647 (not (= lambda!312184 lambda!312128))))

(assert (=> d!1813070 (= (nullableZipper!1692 lt!2287262) (exists!2235 lt!2287262 lambda!312184))))

(declare-fun bs!1347648 () Bool)

(assert (= bs!1347648 d!1813070))

(declare-fun m!6702594 () Bool)

(assert (=> bs!1347648 m!6702594))

(assert (=> b!5751707 d!1813070))

(declare-fun d!1813072 () Bool)

(assert (=> d!1813072 true))

(declare-fun setRes!38622 () Bool)

(assert (=> d!1813072 setRes!38622))

(declare-fun condSetEmpty!38622 () Bool)

(declare-fun res!2428768 () (InoxSet Context!10290))

(assert (=> d!1813072 (= condSetEmpty!38622 (= res!2428768 ((as const (Array Context!10290 Bool)) false)))))

(assert (=> d!1813072 (= (choose!43607 lt!2287289 lambda!312041) res!2428768)))

(declare-fun setIsEmpty!38622 () Bool)

(assert (=> setIsEmpty!38622 setRes!38622))

(declare-fun e!3535549 () Bool)

(declare-fun setElem!38622 () Context!10290)

(declare-fun setNonEmpty!38622 () Bool)

(declare-fun tp!1589883 () Bool)

(assert (=> setNonEmpty!38622 (= setRes!38622 (and tp!1589883 (inv!82649 setElem!38622) e!3535549))))

(declare-fun setRest!38622 () (InoxSet Context!10290))

(assert (=> setNonEmpty!38622 (= res!2428768 ((_ map or) (store ((as const (Array Context!10290 Bool)) false) setElem!38622 true) setRest!38622))))

(declare-fun b!5752851 () Bool)

(declare-fun tp!1589884 () Bool)

(assert (=> b!5752851 (= e!3535549 tp!1589884)))

(assert (= (and d!1813072 condSetEmpty!38622) setIsEmpty!38622))

(assert (= (and d!1813072 (not condSetEmpty!38622)) setNonEmpty!38622))

(assert (= setNonEmpty!38622 b!5752851))

(declare-fun m!6702596 () Bool)

(assert (=> setNonEmpty!38622 m!6702596))

(assert (=> d!1812690 d!1813072))

(declare-fun bm!441122 () Bool)

(declare-fun call!441127 () Bool)

(assert (=> bm!441122 (= call!441127 (isEmpty!35345 (_1!36161 (get!21893 lt!2287396))))))

(declare-fun b!5752852 () Bool)

(declare-fun e!3535552 () Bool)

(declare-fun lt!2287512 () Bool)

(assert (=> b!5752852 (= e!3535552 (not lt!2287512))))

(declare-fun d!1813074 () Bool)

(declare-fun e!3535551 () Bool)

(assert (=> d!1813074 e!3535551))

(declare-fun c!1016399 () Bool)

(assert (=> d!1813074 (= c!1016399 ((_ is EmptyExpr!15761) (regOne!32034 r!7292)))))

(declare-fun e!3535556 () Bool)

(assert (=> d!1813074 (= lt!2287512 e!3535556)))

(declare-fun c!1016400 () Bool)

(assert (=> d!1813074 (= c!1016400 (isEmpty!35345 (_1!36161 (get!21893 lt!2287396))))))

(assert (=> d!1813074 (validRegex!7497 (regOne!32034 r!7292))))

(assert (=> d!1813074 (= (matchR!7946 (regOne!32034 r!7292) (_1!36161 (get!21893 lt!2287396))) lt!2287512)))

(declare-fun b!5752853 () Bool)

(declare-fun e!3535550 () Bool)

(assert (=> b!5752853 (= e!3535550 (not (= (head!12166 (_1!36161 (get!21893 lt!2287396))) (c!1015817 (regOne!32034 r!7292)))))))

(declare-fun b!5752854 () Bool)

(declare-fun e!3535553 () Bool)

(declare-fun e!3535554 () Bool)

(assert (=> b!5752854 (= e!3535553 e!3535554)))

(declare-fun res!2428769 () Bool)

(assert (=> b!5752854 (=> (not res!2428769) (not e!3535554))))

(assert (=> b!5752854 (= res!2428769 (not lt!2287512))))

(declare-fun b!5752855 () Bool)

(declare-fun e!3535555 () Bool)

(assert (=> b!5752855 (= e!3535555 (= (head!12166 (_1!36161 (get!21893 lt!2287396))) (c!1015817 (regOne!32034 r!7292))))))

(declare-fun b!5752856 () Bool)

(assert (=> b!5752856 (= e!3535556 (matchR!7946 (derivativeStep!4546 (regOne!32034 r!7292) (head!12166 (_1!36161 (get!21893 lt!2287396)))) (tail!11261 (_1!36161 (get!21893 lt!2287396)))))))

(declare-fun b!5752857 () Bool)

(assert (=> b!5752857 (= e!3535554 e!3535550)))

(declare-fun res!2428775 () Bool)

(assert (=> b!5752857 (=> res!2428775 e!3535550)))

(assert (=> b!5752857 (= res!2428775 call!441127)))

(declare-fun b!5752858 () Bool)

(assert (=> b!5752858 (= e!3535551 (= lt!2287512 call!441127))))

(declare-fun b!5752859 () Bool)

(declare-fun res!2428773 () Bool)

(assert (=> b!5752859 (=> (not res!2428773) (not e!3535555))))

(assert (=> b!5752859 (= res!2428773 (isEmpty!35345 (tail!11261 (_1!36161 (get!21893 lt!2287396)))))))

(declare-fun b!5752860 () Bool)

(assert (=> b!5752860 (= e!3535551 e!3535552)))

(declare-fun c!1016401 () Bool)

(assert (=> b!5752860 (= c!1016401 ((_ is EmptyLang!15761) (regOne!32034 r!7292)))))

(declare-fun b!5752861 () Bool)

(assert (=> b!5752861 (= e!3535556 (nullable!5793 (regOne!32034 r!7292)))))

(declare-fun b!5752862 () Bool)

(declare-fun res!2428770 () Bool)

(assert (=> b!5752862 (=> res!2428770 e!3535550)))

(assert (=> b!5752862 (= res!2428770 (not (isEmpty!35345 (tail!11261 (_1!36161 (get!21893 lt!2287396))))))))

(declare-fun b!5752863 () Bool)

(declare-fun res!2428774 () Bool)

(assert (=> b!5752863 (=> res!2428774 e!3535553)))

(assert (=> b!5752863 (= res!2428774 (not ((_ is ElementMatch!15761) (regOne!32034 r!7292))))))

(assert (=> b!5752863 (= e!3535552 e!3535553)))

(declare-fun b!5752864 () Bool)

(declare-fun res!2428776 () Bool)

(assert (=> b!5752864 (=> (not res!2428776) (not e!3535555))))

(assert (=> b!5752864 (= res!2428776 (not call!441127))))

(declare-fun b!5752865 () Bool)

(declare-fun res!2428772 () Bool)

(assert (=> b!5752865 (=> res!2428772 e!3535553)))

(assert (=> b!5752865 (= res!2428772 e!3535555)))

(declare-fun res!2428771 () Bool)

(assert (=> b!5752865 (=> (not res!2428771) (not e!3535555))))

(assert (=> b!5752865 (= res!2428771 lt!2287512)))

(assert (= (and d!1813074 c!1016400) b!5752861))

(assert (= (and d!1813074 (not c!1016400)) b!5752856))

(assert (= (and d!1813074 c!1016399) b!5752858))

(assert (= (and d!1813074 (not c!1016399)) b!5752860))

(assert (= (and b!5752860 c!1016401) b!5752852))

(assert (= (and b!5752860 (not c!1016401)) b!5752863))

(assert (= (and b!5752863 (not res!2428774)) b!5752865))

(assert (= (and b!5752865 res!2428771) b!5752864))

(assert (= (and b!5752864 res!2428776) b!5752859))

(assert (= (and b!5752859 res!2428773) b!5752855))

(assert (= (and b!5752865 (not res!2428772)) b!5752854))

(assert (= (and b!5752854 res!2428769) b!5752857))

(assert (= (and b!5752857 (not res!2428775)) b!5752862))

(assert (= (and b!5752862 (not res!2428770)) b!5752853))

(assert (= (or b!5752858 b!5752857 b!5752864) bm!441122))

(declare-fun m!6702610 () Bool)

(assert (=> d!1813074 m!6702610))

(assert (=> d!1813074 m!6701568))

(declare-fun m!6702612 () Bool)

(assert (=> b!5752862 m!6702612))

(assert (=> b!5752862 m!6702612))

(declare-fun m!6702614 () Bool)

(assert (=> b!5752862 m!6702614))

(declare-fun m!6702616 () Bool)

(assert (=> b!5752853 m!6702616))

(assert (=> bm!441122 m!6702610))

(assert (=> b!5752856 m!6702616))

(assert (=> b!5752856 m!6702616))

(declare-fun m!6702618 () Bool)

(assert (=> b!5752856 m!6702618))

(assert (=> b!5752856 m!6702612))

(assert (=> b!5752856 m!6702618))

(assert (=> b!5752856 m!6702612))

(declare-fun m!6702620 () Bool)

(assert (=> b!5752856 m!6702620))

(assert (=> b!5752861 m!6701992))

(assert (=> b!5752859 m!6702612))

(assert (=> b!5752859 m!6702612))

(assert (=> b!5752859 m!6702614))

(assert (=> b!5752855 m!6702616))

(assert (=> b!5751683 d!1813074))

(assert (=> b!5751683 d!1812756))

(declare-fun d!1813078 () Bool)

(declare-fun c!1016407 () Bool)

(declare-fun e!3535564 () Bool)

(assert (=> d!1813078 (= c!1016407 e!3535564)))

(declare-fun res!2428778 () Bool)

(assert (=> d!1813078 (=> (not res!2428778) (not e!3535564))))

(assert (=> d!1813078 (= res!2428778 ((_ is Cons!63459) (exprs!5645 (Context!10291 (t!376913 (exprs!5645 lt!2287276))))))))

(declare-fun e!3535565 () (InoxSet Context!10290))

(assert (=> d!1813078 (= (derivationStepZipperUp!1029 (Context!10291 (t!376913 (exprs!5645 lt!2287276))) (h!69906 s!2326)) e!3535565)))

(declare-fun bm!441129 () Bool)

(declare-fun call!441134 () (InoxSet Context!10290))

(assert (=> bm!441129 (= call!441134 (derivationStepZipperDown!1103 (h!69907 (exprs!5645 (Context!10291 (t!376913 (exprs!5645 lt!2287276))))) (Context!10291 (t!376913 (exprs!5645 (Context!10291 (t!376913 (exprs!5645 lt!2287276)))))) (h!69906 s!2326)))))

(declare-fun b!5752877 () Bool)

(declare-fun e!3535563 () (InoxSet Context!10290))

(assert (=> b!5752877 (= e!3535563 ((as const (Array Context!10290 Bool)) false))))

(declare-fun b!5752878 () Bool)

(assert (=> b!5752878 (= e!3535563 call!441134)))

(declare-fun b!5752879 () Bool)

(assert (=> b!5752879 (= e!3535564 (nullable!5793 (h!69907 (exprs!5645 (Context!10291 (t!376913 (exprs!5645 lt!2287276)))))))))

(declare-fun b!5752880 () Bool)

(assert (=> b!5752880 (= e!3535565 ((_ map or) call!441134 (derivationStepZipperUp!1029 (Context!10291 (t!376913 (exprs!5645 (Context!10291 (t!376913 (exprs!5645 lt!2287276)))))) (h!69906 s!2326))))))

(declare-fun b!5752881 () Bool)

(assert (=> b!5752881 (= e!3535565 e!3535563)))

(declare-fun c!1016408 () Bool)

(assert (=> b!5752881 (= c!1016408 ((_ is Cons!63459) (exprs!5645 (Context!10291 (t!376913 (exprs!5645 lt!2287276))))))))

(assert (= (and d!1813078 res!2428778) b!5752879))

(assert (= (and d!1813078 c!1016407) b!5752880))

(assert (= (and d!1813078 (not c!1016407)) b!5752881))

(assert (= (and b!5752881 c!1016408) b!5752878))

(assert (= (and b!5752881 (not c!1016408)) b!5752877))

(assert (= (or b!5752880 b!5752878) bm!441129))

(declare-fun m!6702622 () Bool)

(assert (=> bm!441129 m!6702622))

(declare-fun m!6702624 () Bool)

(assert (=> b!5752879 m!6702624))

(declare-fun m!6702626 () Bool)

(assert (=> b!5752880 m!6702626))

(assert (=> b!5751712 d!1813078))

(assert (=> b!5752009 d!1812752))

(assert (=> b!5752009 d!1812750))

(declare-fun d!1813080 () Bool)

(assert (=> d!1813080 (= (flatMap!1374 lt!2287285 lambda!312114) (choose!43607 lt!2287285 lambda!312114))))

(declare-fun bs!1347649 () Bool)

(assert (= bs!1347649 d!1813080))

(declare-fun m!6702628 () Bool)

(assert (=> bs!1347649 m!6702628))

(assert (=> d!1812642 d!1813080))

(declare-fun d!1813082 () Bool)

(declare-fun c!1016409 () Bool)

(assert (=> d!1813082 (= c!1016409 (and ((_ is ElementMatch!15761) (h!69907 (exprs!5645 lt!2287276))) (= (c!1015817 (h!69907 (exprs!5645 lt!2287276))) (h!69906 s!2326))))))

(declare-fun e!3535568 () (InoxSet Context!10290))

(assert (=> d!1813082 (= (derivationStepZipperDown!1103 (h!69907 (exprs!5645 lt!2287276)) (Context!10291 (t!376913 (exprs!5645 lt!2287276))) (h!69906 s!2326)) e!3535568)))

(declare-fun b!5752882 () Bool)

(declare-fun e!3535566 () Bool)

(assert (=> b!5752882 (= e!3535566 (nullable!5793 (regOne!32034 (h!69907 (exprs!5645 lt!2287276)))))))

(declare-fun c!1016410 () Bool)

(declare-fun bm!441130 () Bool)

(declare-fun call!441135 () List!63583)

(declare-fun c!1016411 () Bool)

(assert (=> bm!441130 (= call!441135 ($colon$colon!1760 (exprs!5645 (Context!10291 (t!376913 (exprs!5645 lt!2287276)))) (ite (or c!1016410 c!1016411) (regTwo!32034 (h!69907 (exprs!5645 lt!2287276))) (h!69907 (exprs!5645 lt!2287276)))))))

(declare-fun bm!441131 () Bool)

(declare-fun call!441138 () (InoxSet Context!10290))

(declare-fun call!441137 () (InoxSet Context!10290))

(assert (=> bm!441131 (= call!441138 call!441137)))

(declare-fun bm!441132 () Bool)

(declare-fun call!441139 () (InoxSet Context!10290))

(assert (=> bm!441132 (= call!441139 call!441138)))

(declare-fun call!441136 () (InoxSet Context!10290))

(declare-fun c!1016413 () Bool)

(declare-fun bm!441133 () Bool)

(assert (=> bm!441133 (= call!441136 (derivationStepZipperDown!1103 (ite c!1016413 (regOne!32035 (h!69907 (exprs!5645 lt!2287276))) (regOne!32034 (h!69907 (exprs!5645 lt!2287276)))) (ite c!1016413 (Context!10291 (t!376913 (exprs!5645 lt!2287276))) (Context!10291 call!441135)) (h!69906 s!2326)))))

(declare-fun b!5752883 () Bool)

(declare-fun e!3535571 () (InoxSet Context!10290))

(assert (=> b!5752883 (= e!3535571 ((as const (Array Context!10290 Bool)) false))))

(declare-fun bm!441134 () Bool)

(declare-fun call!441140 () List!63583)

(assert (=> bm!441134 (= call!441140 call!441135)))

(declare-fun b!5752884 () Bool)

(declare-fun c!1016412 () Bool)

(assert (=> b!5752884 (= c!1016412 ((_ is Star!15761) (h!69907 (exprs!5645 lt!2287276))))))

(declare-fun e!3535569 () (InoxSet Context!10290))

(assert (=> b!5752884 (= e!3535569 e!3535571)))

(declare-fun b!5752885 () Bool)

(declare-fun e!3535570 () (InoxSet Context!10290))

(assert (=> b!5752885 (= e!3535570 ((_ map or) call!441136 call!441137))))

(declare-fun b!5752886 () Bool)

(assert (=> b!5752886 (= e!3535571 call!441139)))

(declare-fun b!5752887 () Bool)

(assert (=> b!5752887 (= e!3535568 e!3535570)))

(assert (=> b!5752887 (= c!1016413 ((_ is Union!15761) (h!69907 (exprs!5645 lt!2287276))))))

(declare-fun b!5752888 () Bool)

(assert (=> b!5752888 (= e!3535568 (store ((as const (Array Context!10290 Bool)) false) (Context!10291 (t!376913 (exprs!5645 lt!2287276))) true))))

(declare-fun b!5752889 () Bool)

(assert (=> b!5752889 (= c!1016410 e!3535566)))

(declare-fun res!2428779 () Bool)

(assert (=> b!5752889 (=> (not res!2428779) (not e!3535566))))

(assert (=> b!5752889 (= res!2428779 ((_ is Concat!24606) (h!69907 (exprs!5645 lt!2287276))))))

(declare-fun e!3535567 () (InoxSet Context!10290))

(assert (=> b!5752889 (= e!3535570 e!3535567)))

(declare-fun b!5752890 () Bool)

(assert (=> b!5752890 (= e!3535569 call!441139)))

(declare-fun bm!441135 () Bool)

(assert (=> bm!441135 (= call!441137 (derivationStepZipperDown!1103 (ite c!1016413 (regTwo!32035 (h!69907 (exprs!5645 lt!2287276))) (ite c!1016410 (regTwo!32034 (h!69907 (exprs!5645 lt!2287276))) (ite c!1016411 (regOne!32034 (h!69907 (exprs!5645 lt!2287276))) (reg!16090 (h!69907 (exprs!5645 lt!2287276)))))) (ite (or c!1016413 c!1016410) (Context!10291 (t!376913 (exprs!5645 lt!2287276))) (Context!10291 call!441140)) (h!69906 s!2326)))))

(declare-fun b!5752891 () Bool)

(assert (=> b!5752891 (= e!3535567 ((_ map or) call!441136 call!441138))))

(declare-fun b!5752892 () Bool)

(assert (=> b!5752892 (= e!3535567 e!3535569)))

(assert (=> b!5752892 (= c!1016411 ((_ is Concat!24606) (h!69907 (exprs!5645 lt!2287276))))))

(assert (= (and d!1813082 c!1016409) b!5752888))

(assert (= (and d!1813082 (not c!1016409)) b!5752887))

(assert (= (and b!5752887 c!1016413) b!5752885))

(assert (= (and b!5752887 (not c!1016413)) b!5752889))

(assert (= (and b!5752889 res!2428779) b!5752882))

(assert (= (and b!5752889 c!1016410) b!5752891))

(assert (= (and b!5752889 (not c!1016410)) b!5752892))

(assert (= (and b!5752892 c!1016411) b!5752890))

(assert (= (and b!5752892 (not c!1016411)) b!5752884))

(assert (= (and b!5752884 c!1016412) b!5752886))

(assert (= (and b!5752884 (not c!1016412)) b!5752883))

(assert (= (or b!5752890 b!5752886) bm!441134))

(assert (= (or b!5752890 b!5752886) bm!441132))

(assert (= (or b!5752891 bm!441134) bm!441130))

(assert (= (or b!5752891 bm!441132) bm!441131))

(assert (= (or b!5752885 bm!441131) bm!441135))

(assert (= (or b!5752885 b!5752891) bm!441133))

(declare-fun m!6702630 () Bool)

(assert (=> bm!441130 m!6702630))

(declare-fun m!6702634 () Bool)

(assert (=> b!5752888 m!6702634))

(declare-fun m!6702636 () Bool)

(assert (=> b!5752882 m!6702636))

(declare-fun m!6702638 () Bool)

(assert (=> bm!441133 m!6702638))

(declare-fun m!6702642 () Bool)

(assert (=> bm!441135 m!6702642))

(assert (=> bm!440849 d!1813082))

(assert (=> d!1812684 d!1812690))

(declare-fun d!1813084 () Bool)

(assert (=> d!1813084 (= (flatMap!1374 lt!2287289 lambda!312041) (dynLambda!24837 lambda!312041 lt!2287263))))

(assert (=> d!1813084 true))

(declare-fun _$13!2447 () Unit!156576)

(assert (=> d!1813084 (= (choose!43608 lt!2287289 lt!2287263 lambda!312041) _$13!2447)))

(declare-fun b_lambda!217295 () Bool)

(assert (=> (not b_lambda!217295) (not d!1813084)))

(declare-fun bs!1347650 () Bool)

(assert (= bs!1347650 d!1813084))

(assert (=> bs!1347650 m!6701074))

(assert (=> bs!1347650 m!6701736))

(assert (=> d!1812684 d!1813084))

(assert (=> b!5752005 d!1812748))

(declare-fun d!1813086 () Bool)

(assert (=> d!1813086 (= (isEmpty!35342 (unfocusZipperList!1189 zl!343)) ((_ is Nil!63459) (unfocusZipperList!1189 zl!343)))))

(assert (=> b!5751602 d!1813086))

(declare-fun d!1813088 () Bool)

(declare-fun c!1016414 () Bool)

(assert (=> d!1813088 (= c!1016414 (isEmpty!35345 (tail!11261 s!2326)))))

(declare-fun e!3535572 () Bool)

(assert (=> d!1813088 (= (matchZipper!1899 (derivationStepZipper!1844 lt!2287280 (head!12166 s!2326)) (tail!11261 s!2326)) e!3535572)))

(declare-fun b!5752893 () Bool)

(assert (=> b!5752893 (= e!3535572 (nullableZipper!1692 (derivationStepZipper!1844 lt!2287280 (head!12166 s!2326))))))

(declare-fun b!5752894 () Bool)

(assert (=> b!5752894 (= e!3535572 (matchZipper!1899 (derivationStepZipper!1844 (derivationStepZipper!1844 lt!2287280 (head!12166 s!2326)) (head!12166 (tail!11261 s!2326))) (tail!11261 (tail!11261 s!2326))))))

(assert (= (and d!1813088 c!1016414) b!5752893))

(assert (= (and d!1813088 (not c!1016414)) b!5752894))

(assert (=> d!1813088 m!6701480))

(assert (=> d!1813088 m!6701646))

(assert (=> b!5752893 m!6701588))

(declare-fun m!6702650 () Bool)

(assert (=> b!5752893 m!6702650))

(assert (=> b!5752894 m!6701480))

(assert (=> b!5752894 m!6701880))

(assert (=> b!5752894 m!6701588))

(assert (=> b!5752894 m!6701880))

(declare-fun m!6702652 () Bool)

(assert (=> b!5752894 m!6702652))

(assert (=> b!5752894 m!6701480))

(assert (=> b!5752894 m!6701876))

(assert (=> b!5752894 m!6702652))

(assert (=> b!5752894 m!6701876))

(declare-fun m!6702654 () Bool)

(assert (=> b!5752894 m!6702654))

(assert (=> b!5751702 d!1813088))

(declare-fun bs!1347651 () Bool)

(declare-fun d!1813092 () Bool)

(assert (= bs!1347651 (and d!1813092 d!1812910)))

(declare-fun lambda!312185 () Int)

(assert (=> bs!1347651 (= lambda!312185 lambda!312152)))

(declare-fun bs!1347652 () Bool)

(assert (= bs!1347652 (and d!1813092 b!5750980)))

(assert (=> bs!1347652 (= (= (head!12166 s!2326) (h!69906 s!2326)) (= lambda!312185 lambda!312041))))

(declare-fun bs!1347653 () Bool)

(assert (= bs!1347653 (and d!1813092 d!1812946)))

(assert (=> bs!1347653 (= lambda!312185 lambda!312157)))

(declare-fun bs!1347654 () Bool)

(assert (= bs!1347654 (and d!1813092 d!1812954)))

(assert (=> bs!1347654 (= (= (head!12166 s!2326) (head!12166 (t!376912 s!2326))) (= lambda!312185 lambda!312158))))

(declare-fun bs!1347655 () Bool)

(assert (= bs!1347655 (and d!1813092 d!1812642)))

(assert (=> bs!1347655 (= (= (head!12166 s!2326) (h!69906 s!2326)) (= lambda!312185 lambda!312114))))

(declare-fun bs!1347656 () Bool)

(assert (= bs!1347656 (and d!1813092 d!1812614)))

(assert (=> bs!1347656 (= (= (head!12166 s!2326) (h!69906 s!2326)) (= lambda!312185 lambda!312101))))

(declare-fun bs!1347657 () Bool)

(assert (= bs!1347657 (and d!1813092 d!1812778)))

(assert (=> bs!1347657 (= (= (head!12166 s!2326) (head!12166 (t!376912 s!2326))) (= lambda!312185 lambda!312140))))

(declare-fun bs!1347658 () Bool)

(assert (= bs!1347658 (and d!1813092 d!1812766)))

(assert (=> bs!1347658 (= (= (head!12166 s!2326) (head!12166 (t!376912 s!2326))) (= lambda!312185 lambda!312138))))

(assert (=> d!1813092 true))

(assert (=> d!1813092 (= (derivationStepZipper!1844 lt!2287280 (head!12166 s!2326)) (flatMap!1374 lt!2287280 lambda!312185))))

(declare-fun bs!1347659 () Bool)

(assert (= bs!1347659 d!1813092))

(declare-fun m!6702662 () Bool)

(assert (=> bs!1347659 m!6702662))

(assert (=> b!5751702 d!1813092))

(assert (=> b!5751702 d!1812748))

(assert (=> b!5751702 d!1812750))

(assert (=> d!1812594 d!1812730))

(declare-fun d!1813096 () Bool)

(assert (=> d!1813096 true))

(declare-fun setRes!38623 () Bool)

(assert (=> d!1813096 setRes!38623))

(declare-fun condSetEmpty!38623 () Bool)

(declare-fun res!2428789 () (InoxSet Context!10290))

(assert (=> d!1813096 (= condSetEmpty!38623 (= res!2428789 ((as const (Array Context!10290 Bool)) false)))))

(assert (=> d!1813096 (= (choose!43607 lt!2287285 lambda!312041) res!2428789)))

(declare-fun setIsEmpty!38623 () Bool)

(assert (=> setIsEmpty!38623 setRes!38623))

(declare-fun setElem!38623 () Context!10290)

(declare-fun e!3535583 () Bool)

(declare-fun setNonEmpty!38623 () Bool)

(declare-fun tp!1589885 () Bool)

(assert (=> setNonEmpty!38623 (= setRes!38623 (and tp!1589885 (inv!82649 setElem!38623) e!3535583))))

(declare-fun setRest!38623 () (InoxSet Context!10290))

(assert (=> setNonEmpty!38623 (= res!2428789 ((_ map or) (store ((as const (Array Context!10290 Bool)) false) setElem!38623 true) setRest!38623))))

(declare-fun b!5752914 () Bool)

(declare-fun tp!1589886 () Bool)

(assert (=> b!5752914 (= e!3535583 tp!1589886)))

(assert (= (and d!1813096 condSetEmpty!38623) setIsEmpty!38623))

(assert (= (and d!1813096 (not condSetEmpty!38623)) setNonEmpty!38623))

(assert (= setNonEmpty!38623 b!5752914))

(declare-fun m!6702664 () Bool)

(assert (=> setNonEmpty!38623 m!6702664))

(assert (=> d!1812644 d!1813096))

(declare-fun d!1813098 () Bool)

(declare-fun c!1016420 () Bool)

(assert (=> d!1813098 (= c!1016420 (and ((_ is ElementMatch!15761) (h!69907 (exprs!5645 lt!2287270))) (= (c!1015817 (h!69907 (exprs!5645 lt!2287270))) (h!69906 s!2326))))))

(declare-fun e!3535586 () (InoxSet Context!10290))

(assert (=> d!1813098 (= (derivationStepZipperDown!1103 (h!69907 (exprs!5645 lt!2287270)) (Context!10291 (t!376913 (exprs!5645 lt!2287270))) (h!69906 s!2326)) e!3535586)))

(declare-fun b!5752915 () Bool)

(declare-fun e!3535584 () Bool)

(assert (=> b!5752915 (= e!3535584 (nullable!5793 (regOne!32034 (h!69907 (exprs!5645 lt!2287270)))))))

(declare-fun c!1016421 () Bool)

(declare-fun call!441143 () List!63583)

(declare-fun c!1016422 () Bool)

(declare-fun bm!441138 () Bool)

(assert (=> bm!441138 (= call!441143 ($colon$colon!1760 (exprs!5645 (Context!10291 (t!376913 (exprs!5645 lt!2287270)))) (ite (or c!1016421 c!1016422) (regTwo!32034 (h!69907 (exprs!5645 lt!2287270))) (h!69907 (exprs!5645 lt!2287270)))))))

(declare-fun bm!441139 () Bool)

(declare-fun call!441146 () (InoxSet Context!10290))

(declare-fun call!441145 () (InoxSet Context!10290))

(assert (=> bm!441139 (= call!441146 call!441145)))

(declare-fun bm!441140 () Bool)

(declare-fun call!441147 () (InoxSet Context!10290))

(assert (=> bm!441140 (= call!441147 call!441146)))

(declare-fun bm!441141 () Bool)

(declare-fun call!441144 () (InoxSet Context!10290))

(declare-fun c!1016424 () Bool)

(assert (=> bm!441141 (= call!441144 (derivationStepZipperDown!1103 (ite c!1016424 (regOne!32035 (h!69907 (exprs!5645 lt!2287270))) (regOne!32034 (h!69907 (exprs!5645 lt!2287270)))) (ite c!1016424 (Context!10291 (t!376913 (exprs!5645 lt!2287270))) (Context!10291 call!441143)) (h!69906 s!2326)))))

(declare-fun b!5752916 () Bool)

(declare-fun e!3535589 () (InoxSet Context!10290))

(assert (=> b!5752916 (= e!3535589 ((as const (Array Context!10290 Bool)) false))))

(declare-fun bm!441142 () Bool)

(declare-fun call!441148 () List!63583)

(assert (=> bm!441142 (= call!441148 call!441143)))

(declare-fun b!5752917 () Bool)

(declare-fun c!1016423 () Bool)

(assert (=> b!5752917 (= c!1016423 ((_ is Star!15761) (h!69907 (exprs!5645 lt!2287270))))))

(declare-fun e!3535587 () (InoxSet Context!10290))

(assert (=> b!5752917 (= e!3535587 e!3535589)))

(declare-fun b!5752918 () Bool)

(declare-fun e!3535588 () (InoxSet Context!10290))

(assert (=> b!5752918 (= e!3535588 ((_ map or) call!441144 call!441145))))

(declare-fun b!5752919 () Bool)

(assert (=> b!5752919 (= e!3535589 call!441147)))

(declare-fun b!5752920 () Bool)

(assert (=> b!5752920 (= e!3535586 e!3535588)))

(assert (=> b!5752920 (= c!1016424 ((_ is Union!15761) (h!69907 (exprs!5645 lt!2287270))))))

(declare-fun b!5752921 () Bool)

(assert (=> b!5752921 (= e!3535586 (store ((as const (Array Context!10290 Bool)) false) (Context!10291 (t!376913 (exprs!5645 lt!2287270))) true))))

(declare-fun b!5752922 () Bool)

(assert (=> b!5752922 (= c!1016421 e!3535584)))

(declare-fun res!2428790 () Bool)

(assert (=> b!5752922 (=> (not res!2428790) (not e!3535584))))

(assert (=> b!5752922 (= res!2428790 ((_ is Concat!24606) (h!69907 (exprs!5645 lt!2287270))))))

(declare-fun e!3535585 () (InoxSet Context!10290))

(assert (=> b!5752922 (= e!3535588 e!3535585)))

(declare-fun b!5752923 () Bool)

(assert (=> b!5752923 (= e!3535587 call!441147)))

(declare-fun bm!441143 () Bool)

(assert (=> bm!441143 (= call!441145 (derivationStepZipperDown!1103 (ite c!1016424 (regTwo!32035 (h!69907 (exprs!5645 lt!2287270))) (ite c!1016421 (regTwo!32034 (h!69907 (exprs!5645 lt!2287270))) (ite c!1016422 (regOne!32034 (h!69907 (exprs!5645 lt!2287270))) (reg!16090 (h!69907 (exprs!5645 lt!2287270)))))) (ite (or c!1016424 c!1016421) (Context!10291 (t!376913 (exprs!5645 lt!2287270))) (Context!10291 call!441148)) (h!69906 s!2326)))))

(declare-fun b!5752924 () Bool)

(assert (=> b!5752924 (= e!3535585 ((_ map or) call!441144 call!441146))))

(declare-fun b!5752925 () Bool)

(assert (=> b!5752925 (= e!3535585 e!3535587)))

(assert (=> b!5752925 (= c!1016422 ((_ is Concat!24606) (h!69907 (exprs!5645 lt!2287270))))))

(assert (= (and d!1813098 c!1016420) b!5752921))

(assert (= (and d!1813098 (not c!1016420)) b!5752920))

(assert (= (and b!5752920 c!1016424) b!5752918))

(assert (= (and b!5752920 (not c!1016424)) b!5752922))

(assert (= (and b!5752922 res!2428790) b!5752915))

(assert (= (and b!5752922 c!1016421) b!5752924))

(assert (= (and b!5752922 (not c!1016421)) b!5752925))

(assert (= (and b!5752925 c!1016422) b!5752923))

(assert (= (and b!5752925 (not c!1016422)) b!5752917))

(assert (= (and b!5752917 c!1016423) b!5752919))

(assert (= (and b!5752917 (not c!1016423)) b!5752916))

(assert (= (or b!5752923 b!5752919) bm!441142))

(assert (= (or b!5752923 b!5752919) bm!441140))

(assert (= (or b!5752924 bm!441142) bm!441138))

(assert (= (or b!5752924 bm!441140) bm!441139))

(assert (= (or b!5752918 bm!441139) bm!441143))

(assert (= (or b!5752918 b!5752924) bm!441141))

(declare-fun m!6702670 () Bool)

(assert (=> bm!441138 m!6702670))

(declare-fun m!6702674 () Bool)

(assert (=> b!5752921 m!6702674))

(declare-fun m!6702678 () Bool)

(assert (=> b!5752915 m!6702678))

(declare-fun m!6702682 () Bool)

(assert (=> bm!441141 m!6702682))

(declare-fun m!6702684 () Bool)

(assert (=> bm!441143 m!6702684))

(assert (=> bm!440881 d!1813098))

(declare-fun d!1813100 () Bool)

(declare-fun c!1016425 () Bool)

(assert (=> d!1813100 (= c!1016425 (and ((_ is ElementMatch!15761) (h!69907 (exprs!5645 lt!2287263))) (= (c!1015817 (h!69907 (exprs!5645 lt!2287263))) (h!69906 s!2326))))))

(declare-fun e!3535592 () (InoxSet Context!10290))

(assert (=> d!1813100 (= (derivationStepZipperDown!1103 (h!69907 (exprs!5645 lt!2287263)) (Context!10291 (t!376913 (exprs!5645 lt!2287263))) (h!69906 s!2326)) e!3535592)))

(declare-fun b!5752926 () Bool)

(declare-fun e!3535590 () Bool)

(assert (=> b!5752926 (= e!3535590 (nullable!5793 (regOne!32034 (h!69907 (exprs!5645 lt!2287263)))))))

(declare-fun call!441149 () List!63583)

(declare-fun bm!441144 () Bool)

(declare-fun c!1016426 () Bool)

(declare-fun c!1016427 () Bool)

(assert (=> bm!441144 (= call!441149 ($colon$colon!1760 (exprs!5645 (Context!10291 (t!376913 (exprs!5645 lt!2287263)))) (ite (or c!1016426 c!1016427) (regTwo!32034 (h!69907 (exprs!5645 lt!2287263))) (h!69907 (exprs!5645 lt!2287263)))))))

(declare-fun bm!441145 () Bool)

(declare-fun call!441152 () (InoxSet Context!10290))

(declare-fun call!441151 () (InoxSet Context!10290))

(assert (=> bm!441145 (= call!441152 call!441151)))

(declare-fun bm!441146 () Bool)

(declare-fun call!441153 () (InoxSet Context!10290))

(assert (=> bm!441146 (= call!441153 call!441152)))

(declare-fun call!441150 () (InoxSet Context!10290))

(declare-fun c!1016429 () Bool)

(declare-fun bm!441147 () Bool)

(assert (=> bm!441147 (= call!441150 (derivationStepZipperDown!1103 (ite c!1016429 (regOne!32035 (h!69907 (exprs!5645 lt!2287263))) (regOne!32034 (h!69907 (exprs!5645 lt!2287263)))) (ite c!1016429 (Context!10291 (t!376913 (exprs!5645 lt!2287263))) (Context!10291 call!441149)) (h!69906 s!2326)))))

(declare-fun b!5752927 () Bool)

(declare-fun e!3535595 () (InoxSet Context!10290))

(assert (=> b!5752927 (= e!3535595 ((as const (Array Context!10290 Bool)) false))))

(declare-fun bm!441148 () Bool)

(declare-fun call!441154 () List!63583)

(assert (=> bm!441148 (= call!441154 call!441149)))

(declare-fun b!5752928 () Bool)

(declare-fun c!1016428 () Bool)

(assert (=> b!5752928 (= c!1016428 ((_ is Star!15761) (h!69907 (exprs!5645 lt!2287263))))))

(declare-fun e!3535593 () (InoxSet Context!10290))

(assert (=> b!5752928 (= e!3535593 e!3535595)))

(declare-fun b!5752929 () Bool)

(declare-fun e!3535594 () (InoxSet Context!10290))

(assert (=> b!5752929 (= e!3535594 ((_ map or) call!441150 call!441151))))

(declare-fun b!5752930 () Bool)

(assert (=> b!5752930 (= e!3535595 call!441153)))

(declare-fun b!5752931 () Bool)

(assert (=> b!5752931 (= e!3535592 e!3535594)))

(assert (=> b!5752931 (= c!1016429 ((_ is Union!15761) (h!69907 (exprs!5645 lt!2287263))))))

(declare-fun b!5752932 () Bool)

(assert (=> b!5752932 (= e!3535592 (store ((as const (Array Context!10290 Bool)) false) (Context!10291 (t!376913 (exprs!5645 lt!2287263))) true))))

(declare-fun b!5752933 () Bool)

(assert (=> b!5752933 (= c!1016426 e!3535590)))

(declare-fun res!2428791 () Bool)

(assert (=> b!5752933 (=> (not res!2428791) (not e!3535590))))

(assert (=> b!5752933 (= res!2428791 ((_ is Concat!24606) (h!69907 (exprs!5645 lt!2287263))))))

(declare-fun e!3535591 () (InoxSet Context!10290))

(assert (=> b!5752933 (= e!3535594 e!3535591)))

(declare-fun b!5752934 () Bool)

(assert (=> b!5752934 (= e!3535593 call!441153)))

(declare-fun bm!441149 () Bool)

(assert (=> bm!441149 (= call!441151 (derivationStepZipperDown!1103 (ite c!1016429 (regTwo!32035 (h!69907 (exprs!5645 lt!2287263))) (ite c!1016426 (regTwo!32034 (h!69907 (exprs!5645 lt!2287263))) (ite c!1016427 (regOne!32034 (h!69907 (exprs!5645 lt!2287263))) (reg!16090 (h!69907 (exprs!5645 lt!2287263)))))) (ite (or c!1016429 c!1016426) (Context!10291 (t!376913 (exprs!5645 lt!2287263))) (Context!10291 call!441154)) (h!69906 s!2326)))))

(declare-fun b!5752935 () Bool)

(assert (=> b!5752935 (= e!3535591 ((_ map or) call!441150 call!441152))))

(declare-fun b!5752936 () Bool)

(assert (=> b!5752936 (= e!3535591 e!3535593)))

(assert (=> b!5752936 (= c!1016427 ((_ is Concat!24606) (h!69907 (exprs!5645 lt!2287263))))))

(assert (= (and d!1813100 c!1016425) b!5752932))

(assert (= (and d!1813100 (not c!1016425)) b!5752931))

(assert (= (and b!5752931 c!1016429) b!5752929))

(assert (= (and b!5752931 (not c!1016429)) b!5752933))

(assert (= (and b!5752933 res!2428791) b!5752926))

(assert (= (and b!5752933 c!1016426) b!5752935))

(assert (= (and b!5752933 (not c!1016426)) b!5752936))

(assert (= (and b!5752936 c!1016427) b!5752934))

(assert (= (and b!5752936 (not c!1016427)) b!5752928))

(assert (= (and b!5752928 c!1016428) b!5752930))

(assert (= (and b!5752928 (not c!1016428)) b!5752927))

(assert (= (or b!5752934 b!5752930) bm!441148))

(assert (= (or b!5752934 b!5752930) bm!441146))

(assert (= (or b!5752935 bm!441148) bm!441144))

(assert (= (or b!5752935 bm!441146) bm!441145))

(assert (= (or b!5752929 bm!441145) bm!441149))

(assert (= (or b!5752929 b!5752935) bm!441147))

(declare-fun m!6702690 () Bool)

(assert (=> bm!441144 m!6702690))

(declare-fun m!6702692 () Bool)

(assert (=> b!5752932 m!6702692))

(declare-fun m!6702694 () Bool)

(assert (=> b!5752926 m!6702694))

(declare-fun m!6702696 () Bool)

(assert (=> bm!441147 m!6702696))

(declare-fun m!6702698 () Bool)

(assert (=> bm!441149 m!6702698))

(assert (=> bm!440880 d!1813100))

(assert (=> bs!1347293 d!1812680))

(assert (=> b!5751657 d!1812708))

(declare-fun bs!1347660 () Bool)

(declare-fun d!1813104 () Bool)

(assert (= bs!1347660 (and d!1813104 d!1813014)))

(declare-fun lambda!312186 () Int)

(assert (=> bs!1347660 (not (= lambda!312186 lambda!312170))))

(declare-fun bs!1347661 () Bool)

(assert (= bs!1347661 (and d!1813104 b!5751848)))

(assert (=> bs!1347661 (not (= lambda!312186 lambda!312131))))

(declare-fun bs!1347662 () Bool)

(assert (= bs!1347662 (and d!1813104 d!1812924)))

(assert (=> bs!1347662 (= lambda!312186 lambda!312155)))

(declare-fun bs!1347663 () Bool)

(assert (= bs!1347663 (and d!1813104 b!5752760)))

(assert (=> bs!1347663 (not (= lambda!312186 lambda!312173))))

(declare-fun bs!1347664 () Bool)

(assert (= bs!1347664 (and d!1813104 d!1813032)))

(assert (=> bs!1347664 (= lambda!312186 lambda!312176)))

(declare-fun bs!1347665 () Bool)

(assert (= bs!1347665 (and d!1813104 b!5752758)))

(assert (=> bs!1347665 (not (= lambda!312186 lambda!312172))))

(declare-fun bs!1347666 () Bool)

(assert (= bs!1347666 (and d!1813104 d!1813070)))

(assert (=> bs!1347666 (= lambda!312186 lambda!312184)))

(declare-fun bs!1347667 () Bool)

(assert (= bs!1347667 (and d!1813104 b!5751845)))

(assert (=> bs!1347667 (not (= lambda!312186 lambda!312129))))

(declare-fun bs!1347668 () Bool)

(assert (= bs!1347668 (and d!1813104 b!5751850)))

(assert (=> bs!1347668 (not (= lambda!312186 lambda!312132))))

(declare-fun bs!1347669 () Bool)

(assert (= bs!1347669 (and d!1813104 d!1812880)))

(assert (=> bs!1347669 (= lambda!312186 lambda!312149)))

(declare-fun bs!1347670 () Bool)

(assert (= bs!1347670 (and d!1813104 d!1812862)))

(assert (=> bs!1347670 (= lambda!312186 lambda!312148)))

(declare-fun bs!1347671 () Bool)

(assert (= bs!1347671 (and d!1813104 d!1812832)))

(assert (=> bs!1347671 (= lambda!312186 lambda!312146)))

(declare-fun bs!1347672 () Bool)

(assert (= bs!1347672 (and d!1813104 b!5751843)))

(assert (=> bs!1347672 (not (= lambda!312186 lambda!312128))))

(assert (=> d!1813104 (= (nullableZipper!1692 lt!2287265) (exists!2235 lt!2287265 lambda!312186))))

(declare-fun bs!1347673 () Bool)

(assert (= bs!1347673 d!1813104))

(declare-fun m!6702700 () Bool)

(assert (=> bs!1347673 m!6702700))

(assert (=> b!5751705 d!1813104))

(declare-fun d!1813106 () Bool)

(assert (=> d!1813106 (= (isEmpty!35342 (t!376913 (t!376913 (exprs!5645 (h!69908 zl!343))))) ((_ is Nil!63459) (t!376913 (t!376913 (exprs!5645 (h!69908 zl!343))))))))

(assert (=> b!5751986 d!1813106))

(assert (=> d!1812632 d!1812742))

(assert (=> d!1812656 d!1812654))

(assert (=> d!1812656 d!1812652))

(declare-fun d!1813108 () Bool)

(assert (=> d!1813108 (= (matchR!7946 r!7292 s!2326) (matchRSpec!2864 r!7292 s!2326))))

(assert (=> d!1813108 true))

(declare-fun _$88!4047 () Unit!156576)

(assert (=> d!1813108 (= (choose!43612 r!7292 s!2326) _$88!4047)))

(declare-fun bs!1347674 () Bool)

(assert (= bs!1347674 d!1813108))

(assert (=> bs!1347674 m!6700964))

(assert (=> bs!1347674 m!6700962))

(assert (=> d!1812656 d!1813108))

(assert (=> d!1812656 d!1812596))

(assert (=> b!5751998 d!1812752))

(assert (=> b!5751998 d!1812750))

(declare-fun d!1813110 () Bool)

(assert (=> d!1813110 (= (isEmpty!35342 (exprs!5645 (h!69908 zl!343))) ((_ is Nil!63459) (exprs!5645 (h!69908 zl!343))))))

(assert (=> b!5751653 d!1813110))

(declare-fun d!1813112 () Bool)

(assert (=> d!1813112 (= (isConcat!774 lt!2287445) ((_ is Concat!24606) lt!2287445))))

(assert (=> b!5751982 d!1813112))

(declare-fun b!5752937 () Bool)

(declare-fun res!2428794 () Bool)

(declare-fun e!3535597 () Bool)

(assert (=> b!5752937 (=> (not res!2428794) (not e!3535597))))

(declare-fun call!441156 () Bool)

(assert (=> b!5752937 (= res!2428794 call!441156)))

(declare-fun e!3535600 () Bool)

(assert (=> b!5752937 (= e!3535600 e!3535597)))

(declare-fun b!5752938 () Bool)

(declare-fun call!441157 () Bool)

(assert (=> b!5752938 (= e!3535597 call!441157)))

(declare-fun b!5752939 () Bool)

(declare-fun e!3535599 () Bool)

(assert (=> b!5752939 (= e!3535599 call!441157)))

(declare-fun call!441155 () Bool)

(declare-fun bm!441150 () Bool)

(declare-fun c!1016430 () Bool)

(declare-fun c!1016431 () Bool)

(assert (=> bm!441150 (= call!441155 (validRegex!7497 (ite c!1016430 (reg!16090 lt!2287376) (ite c!1016431 (regTwo!32035 lt!2287376) (regTwo!32034 lt!2287376)))))))

(declare-fun b!5752940 () Bool)

(declare-fun e!3535602 () Bool)

(assert (=> b!5752940 (= e!3535602 call!441155)))

(declare-fun b!5752941 () Bool)

(declare-fun e!3535596 () Bool)

(assert (=> b!5752941 (= e!3535596 e!3535602)))

(declare-fun res!2428792 () Bool)

(assert (=> b!5752941 (= res!2428792 (not (nullable!5793 (reg!16090 lt!2287376))))))

(assert (=> b!5752941 (=> (not res!2428792) (not e!3535602))))

(declare-fun b!5752942 () Bool)

(declare-fun e!3535601 () Bool)

(assert (=> b!5752942 (= e!3535601 e!3535599)))

(declare-fun res!2428793 () Bool)

(assert (=> b!5752942 (=> (not res!2428793) (not e!3535599))))

(assert (=> b!5752942 (= res!2428793 call!441156)))

(declare-fun bm!441151 () Bool)

(assert (=> bm!441151 (= call!441156 (validRegex!7497 (ite c!1016431 (regOne!32035 lt!2287376) (regOne!32034 lt!2287376))))))

(declare-fun bm!441152 () Bool)

(assert (=> bm!441152 (= call!441157 call!441155)))

(declare-fun b!5752944 () Bool)

(declare-fun e!3535598 () Bool)

(assert (=> b!5752944 (= e!3535598 e!3535596)))

(assert (=> b!5752944 (= c!1016430 ((_ is Star!15761) lt!2287376))))

(declare-fun b!5752945 () Bool)

(declare-fun res!2428795 () Bool)

(assert (=> b!5752945 (=> res!2428795 e!3535601)))

(assert (=> b!5752945 (= res!2428795 (not ((_ is Concat!24606) lt!2287376)))))

(assert (=> b!5752945 (= e!3535600 e!3535601)))

(declare-fun d!1813114 () Bool)

(declare-fun res!2428796 () Bool)

(assert (=> d!1813114 (=> res!2428796 e!3535598)))

(assert (=> d!1813114 (= res!2428796 ((_ is ElementMatch!15761) lt!2287376))))

(assert (=> d!1813114 (= (validRegex!7497 lt!2287376) e!3535598)))

(declare-fun b!5752943 () Bool)

(assert (=> b!5752943 (= e!3535596 e!3535600)))

(assert (=> b!5752943 (= c!1016431 ((_ is Union!15761) lt!2287376))))

(assert (= (and d!1813114 (not res!2428796)) b!5752944))

(assert (= (and b!5752944 c!1016430) b!5752941))

(assert (= (and b!5752944 (not c!1016430)) b!5752943))

(assert (= (and b!5752941 res!2428792) b!5752940))

(assert (= (and b!5752943 c!1016431) b!5752937))

(assert (= (and b!5752943 (not c!1016431)) b!5752945))

(assert (= (and b!5752937 res!2428794) b!5752938))

(assert (= (and b!5752945 (not res!2428795)) b!5752942))

(assert (= (and b!5752942 res!2428793) b!5752939))

(assert (= (or b!5752938 b!5752939) bm!441152))

(assert (= (or b!5752937 b!5752942) bm!441151))

(assert (= (or b!5752940 bm!441152) bm!441150))

(declare-fun m!6702702 () Bool)

(assert (=> bm!441150 m!6702702))

(declare-fun m!6702704 () Bool)

(assert (=> b!5752941 m!6702704))

(declare-fun m!6702706 () Bool)

(assert (=> bm!441151 m!6702706))

(assert (=> d!1812592 d!1813114))

(declare-fun bs!1347675 () Bool)

(declare-fun d!1813116 () Bool)

(assert (= bs!1347675 (and d!1813116 d!1812772)))

(declare-fun lambda!312187 () Int)

(assert (=> bs!1347675 (= lambda!312187 lambda!312139)))

(declare-fun bs!1347676 () Bool)

(assert (= bs!1347676 (and d!1813116 d!1812856)))

(assert (=> bs!1347676 (= lambda!312187 lambda!312147)))

(declare-fun bs!1347677 () Bool)

(assert (= bs!1347677 (and d!1813116 d!1812708)))

(assert (=> bs!1347677 (= lambda!312187 lambda!312135)))

(declare-fun bs!1347678 () Bool)

(assert (= bs!1347678 (and d!1813116 d!1812602)))

(assert (=> bs!1347678 (= lambda!312187 lambda!312094)))

(declare-fun bs!1347679 () Bool)

(assert (= bs!1347679 (and d!1813116 d!1812782)))

(assert (=> bs!1347679 (= lambda!312187 lambda!312141)))

(declare-fun bs!1347680 () Bool)

(assert (= bs!1347680 (and d!1813116 d!1812938)))

(assert (=> bs!1347680 (= lambda!312187 lambda!312156)))

(declare-fun bs!1347681 () Bool)

(assert (= bs!1347681 (and d!1813116 d!1812616)))

(assert (=> bs!1347681 (= lambda!312187 lambda!312104)))

(declare-fun bs!1347682 () Bool)

(assert (= bs!1347682 (and d!1813116 b!5752733)))

(assert (=> bs!1347682 (not (= lambda!312187 lambda!312166))))

(declare-fun bs!1347683 () Bool)

(assert (= bs!1347683 (and d!1813116 d!1812604)))

(assert (=> bs!1347683 (= lambda!312187 lambda!312097)))

(declare-fun bs!1347684 () Bool)

(assert (= bs!1347684 (and d!1813116 b!5752735)))

(assert (=> bs!1347684 (not (= lambda!312187 lambda!312167))))

(declare-fun bs!1347685 () Bool)

(assert (= bs!1347685 (and d!1813116 d!1812606)))

(assert (=> bs!1347685 (= lambda!312187 lambda!312098)))

(declare-fun bs!1347686 () Bool)

(assert (= bs!1347686 (and d!1813116 d!1812600)))

(assert (=> bs!1347686 (= lambda!312187 lambda!312091)))

(declare-fun bs!1347687 () Bool)

(assert (= bs!1347687 (and d!1813116 d!1812886)))

(assert (=> bs!1347687 (= lambda!312187 lambda!312150)))

(declare-fun bs!1347688 () Bool)

(assert (= bs!1347688 (and d!1813116 d!1813034)))

(assert (=> bs!1347688 (= lambda!312187 lambda!312177)))

(declare-fun bs!1347689 () Bool)

(assert (= bs!1347689 (and d!1813116 d!1812888)))

(assert (=> bs!1347689 (= lambda!312187 lambda!312151)))

(declare-fun b!5752946 () Bool)

(declare-fun e!3535607 () Regex!15761)

(declare-fun e!3535606 () Regex!15761)

(assert (=> b!5752946 (= e!3535607 e!3535606)))

(declare-fun c!1016433 () Bool)

(assert (=> b!5752946 (= c!1016433 ((_ is Cons!63459) (unfocusZipperList!1189 (Cons!63460 lt!2287277 Nil!63460))))))

(declare-fun b!5752947 () Bool)

(declare-fun e!3535604 () Bool)

(declare-fun lt!2287514 () Regex!15761)

(assert (=> b!5752947 (= e!3535604 (isUnion!691 lt!2287514))))

(declare-fun b!5752948 () Bool)

(assert (=> b!5752948 (= e!3535607 (h!69907 (unfocusZipperList!1189 (Cons!63460 lt!2287277 Nil!63460))))))

(declare-fun e!3535603 () Bool)

(assert (=> d!1813116 e!3535603))

(declare-fun res!2428798 () Bool)

(assert (=> d!1813116 (=> (not res!2428798) (not e!3535603))))

(assert (=> d!1813116 (= res!2428798 (validRegex!7497 lt!2287514))))

(assert (=> d!1813116 (= lt!2287514 e!3535607)))

(declare-fun c!1016435 () Bool)

(declare-fun e!3535605 () Bool)

(assert (=> d!1813116 (= c!1016435 e!3535605)))

(declare-fun res!2428797 () Bool)

(assert (=> d!1813116 (=> (not res!2428797) (not e!3535605))))

(assert (=> d!1813116 (= res!2428797 ((_ is Cons!63459) (unfocusZipperList!1189 (Cons!63460 lt!2287277 Nil!63460))))))

(assert (=> d!1813116 (forall!14881 (unfocusZipperList!1189 (Cons!63460 lt!2287277 Nil!63460)) lambda!312187)))

(assert (=> d!1813116 (= (generalisedUnion!1624 (unfocusZipperList!1189 (Cons!63460 lt!2287277 Nil!63460))) lt!2287514)))

(declare-fun b!5752949 () Bool)

(declare-fun e!3535608 () Bool)

(assert (=> b!5752949 (= e!3535603 e!3535608)))

(declare-fun c!1016434 () Bool)

(assert (=> b!5752949 (= c!1016434 (isEmpty!35342 (unfocusZipperList!1189 (Cons!63460 lt!2287277 Nil!63460))))))

(declare-fun b!5752950 () Bool)

(assert (=> b!5752950 (= e!3535604 (= lt!2287514 (head!12167 (unfocusZipperList!1189 (Cons!63460 lt!2287277 Nil!63460)))))))

(declare-fun b!5752951 () Bool)

(assert (=> b!5752951 (= e!3535608 e!3535604)))

(declare-fun c!1016432 () Bool)

(assert (=> b!5752951 (= c!1016432 (isEmpty!35342 (tail!11262 (unfocusZipperList!1189 (Cons!63460 lt!2287277 Nil!63460)))))))

(declare-fun b!5752952 () Bool)

(assert (=> b!5752952 (= e!3535608 (isEmptyLang!1261 lt!2287514))))

(declare-fun b!5752953 () Bool)

(assert (=> b!5752953 (= e!3535606 EmptyLang!15761)))

(declare-fun b!5752954 () Bool)

(assert (=> b!5752954 (= e!3535605 (isEmpty!35342 (t!376913 (unfocusZipperList!1189 (Cons!63460 lt!2287277 Nil!63460)))))))

(declare-fun b!5752955 () Bool)

(assert (=> b!5752955 (= e!3535606 (Union!15761 (h!69907 (unfocusZipperList!1189 (Cons!63460 lt!2287277 Nil!63460))) (generalisedUnion!1624 (t!376913 (unfocusZipperList!1189 (Cons!63460 lt!2287277 Nil!63460))))))))

(assert (= (and d!1813116 res!2428797) b!5752954))

(assert (= (and d!1813116 c!1016435) b!5752948))

(assert (= (and d!1813116 (not c!1016435)) b!5752946))

(assert (= (and b!5752946 c!1016433) b!5752955))

(assert (= (and b!5752946 (not c!1016433)) b!5752953))

(assert (= (and d!1813116 res!2428798) b!5752949))

(assert (= (and b!5752949 c!1016434) b!5752952))

(assert (= (and b!5752949 (not c!1016434)) b!5752951))

(assert (= (and b!5752951 c!1016432) b!5752950))

(assert (= (and b!5752951 (not c!1016432)) b!5752947))

(assert (=> b!5752950 m!6701468))

(declare-fun m!6702708 () Bool)

(assert (=> b!5752950 m!6702708))

(assert (=> b!5752951 m!6701468))

(declare-fun m!6702710 () Bool)

(assert (=> b!5752951 m!6702710))

(assert (=> b!5752951 m!6702710))

(declare-fun m!6702712 () Bool)

(assert (=> b!5752951 m!6702712))

(declare-fun m!6702714 () Bool)

(assert (=> b!5752954 m!6702714))

(declare-fun m!6702716 () Bool)

(assert (=> d!1813116 m!6702716))

(assert (=> d!1813116 m!6701468))

(declare-fun m!6702718 () Bool)

(assert (=> d!1813116 m!6702718))

(declare-fun m!6702720 () Bool)

(assert (=> b!5752952 m!6702720))

(declare-fun m!6702722 () Bool)

(assert (=> b!5752955 m!6702722))

(declare-fun m!6702724 () Bool)

(assert (=> b!5752947 m!6702724))

(assert (=> b!5752949 m!6701468))

(declare-fun m!6702726 () Bool)

(assert (=> b!5752949 m!6702726))

(assert (=> d!1812592 d!1813116))

(declare-fun bs!1347690 () Bool)

(declare-fun d!1813118 () Bool)

(assert (= bs!1347690 (and d!1813118 d!1812772)))

(declare-fun lambda!312188 () Int)

(assert (=> bs!1347690 (= lambda!312188 lambda!312139)))

(declare-fun bs!1347691 () Bool)

(assert (= bs!1347691 (and d!1813118 d!1812856)))

(assert (=> bs!1347691 (= lambda!312188 lambda!312147)))

(declare-fun bs!1347692 () Bool)

(assert (= bs!1347692 (and d!1813118 d!1812708)))

(assert (=> bs!1347692 (= lambda!312188 lambda!312135)))

(declare-fun bs!1347693 () Bool)

(assert (= bs!1347693 (and d!1813118 d!1812602)))

(assert (=> bs!1347693 (= lambda!312188 lambda!312094)))

(declare-fun bs!1347694 () Bool)

(assert (= bs!1347694 (and d!1813118 d!1812782)))

(assert (=> bs!1347694 (= lambda!312188 lambda!312141)))

(declare-fun bs!1347695 () Bool)

(assert (= bs!1347695 (and d!1813118 d!1812938)))

(assert (=> bs!1347695 (= lambda!312188 lambda!312156)))

(declare-fun bs!1347696 () Bool)

(assert (= bs!1347696 (and d!1813118 d!1812616)))

(assert (=> bs!1347696 (= lambda!312188 lambda!312104)))

(declare-fun bs!1347697 () Bool)

(assert (= bs!1347697 (and d!1813118 b!5752733)))

(assert (=> bs!1347697 (not (= lambda!312188 lambda!312166))))

(declare-fun bs!1347698 () Bool)

(assert (= bs!1347698 (and d!1813118 d!1813116)))

(assert (=> bs!1347698 (= lambda!312188 lambda!312187)))

(declare-fun bs!1347699 () Bool)

(assert (= bs!1347699 (and d!1813118 d!1812604)))

(assert (=> bs!1347699 (= lambda!312188 lambda!312097)))

(declare-fun bs!1347700 () Bool)

(assert (= bs!1347700 (and d!1813118 b!5752735)))

(assert (=> bs!1347700 (not (= lambda!312188 lambda!312167))))

(declare-fun bs!1347701 () Bool)

(assert (= bs!1347701 (and d!1813118 d!1812606)))

(assert (=> bs!1347701 (= lambda!312188 lambda!312098)))

(declare-fun bs!1347702 () Bool)

(assert (= bs!1347702 (and d!1813118 d!1812600)))

(assert (=> bs!1347702 (= lambda!312188 lambda!312091)))

(declare-fun bs!1347703 () Bool)

(assert (= bs!1347703 (and d!1813118 d!1812886)))

(assert (=> bs!1347703 (= lambda!312188 lambda!312150)))

(declare-fun bs!1347704 () Bool)

(assert (= bs!1347704 (and d!1813118 d!1813034)))

(assert (=> bs!1347704 (= lambda!312188 lambda!312177)))

(declare-fun bs!1347705 () Bool)

(assert (= bs!1347705 (and d!1813118 d!1812888)))

(assert (=> bs!1347705 (= lambda!312188 lambda!312151)))

(declare-fun lt!2287515 () List!63583)

(assert (=> d!1813118 (forall!14881 lt!2287515 lambda!312188)))

(declare-fun e!3535609 () List!63583)

(assert (=> d!1813118 (= lt!2287515 e!3535609)))

(declare-fun c!1016436 () Bool)

(assert (=> d!1813118 (= c!1016436 ((_ is Cons!63460) (Cons!63460 lt!2287277 Nil!63460)))))

(assert (=> d!1813118 (= (unfocusZipperList!1189 (Cons!63460 lt!2287277 Nil!63460)) lt!2287515)))

(declare-fun b!5752956 () Bool)

(assert (=> b!5752956 (= e!3535609 (Cons!63459 (generalisedConcat!1376 (exprs!5645 (h!69908 (Cons!63460 lt!2287277 Nil!63460)))) (unfocusZipperList!1189 (t!376914 (Cons!63460 lt!2287277 Nil!63460)))))))

(declare-fun b!5752957 () Bool)

(assert (=> b!5752957 (= e!3535609 Nil!63459)))

(assert (= (and d!1813118 c!1016436) b!5752956))

(assert (= (and d!1813118 (not c!1016436)) b!5752957))

(declare-fun m!6702728 () Bool)

(assert (=> d!1813118 m!6702728))

(declare-fun m!6702730 () Bool)

(assert (=> b!5752956 m!6702730))

(declare-fun m!6702732 () Bool)

(assert (=> b!5752956 m!6702732))

(assert (=> d!1812592 d!1813118))

(declare-fun bm!441153 () Bool)

(declare-fun call!441159 () Bool)

(declare-fun c!1016437 () Bool)

(assert (=> bm!441153 (= call!441159 (nullable!5793 (ite c!1016437 (regTwo!32035 (regOne!32034 (regOne!32034 r!7292))) (regTwo!32034 (regOne!32034 (regOne!32034 r!7292))))))))

(declare-fun b!5752958 () Bool)

(declare-fun e!3535612 () Bool)

(declare-fun e!3535615 () Bool)

(assert (=> b!5752958 (= e!3535612 e!3535615)))

(assert (=> b!5752958 (= c!1016437 ((_ is Union!15761) (regOne!32034 (regOne!32034 r!7292))))))

(declare-fun bm!441154 () Bool)

(declare-fun call!441158 () Bool)

(assert (=> bm!441154 (= call!441158 (nullable!5793 (ite c!1016437 (regOne!32035 (regOne!32034 (regOne!32034 r!7292))) (regOne!32034 (regOne!32034 (regOne!32034 r!7292))))))))

(declare-fun d!1813120 () Bool)

(declare-fun res!2428802 () Bool)

(declare-fun e!3535610 () Bool)

(assert (=> d!1813120 (=> res!2428802 e!3535610)))

(assert (=> d!1813120 (= res!2428802 ((_ is EmptyExpr!15761) (regOne!32034 (regOne!32034 r!7292))))))

(assert (=> d!1813120 (= (nullableFct!1838 (regOne!32034 (regOne!32034 r!7292))) e!3535610)))

(declare-fun b!5752959 () Bool)

(declare-fun e!3535614 () Bool)

(assert (=> b!5752959 (= e!3535615 e!3535614)))

(declare-fun res!2428801 () Bool)

(assert (=> b!5752959 (= res!2428801 call!441158)))

(assert (=> b!5752959 (=> (not res!2428801) (not e!3535614))))

(declare-fun b!5752960 () Bool)

(assert (=> b!5752960 (= e!3535614 call!441159)))

(declare-fun b!5752961 () Bool)

(declare-fun e!3535613 () Bool)

(assert (=> b!5752961 (= e!3535613 e!3535612)))

(declare-fun res!2428799 () Bool)

(assert (=> b!5752961 (=> res!2428799 e!3535612)))

(assert (=> b!5752961 (= res!2428799 ((_ is Star!15761) (regOne!32034 (regOne!32034 r!7292))))))

(declare-fun b!5752962 () Bool)

(assert (=> b!5752962 (= e!3535610 e!3535613)))

(declare-fun res!2428800 () Bool)

(assert (=> b!5752962 (=> (not res!2428800) (not e!3535613))))

(assert (=> b!5752962 (= res!2428800 (and (not ((_ is EmptyLang!15761) (regOne!32034 (regOne!32034 r!7292)))) (not ((_ is ElementMatch!15761) (regOne!32034 (regOne!32034 r!7292))))))))

(declare-fun b!5752963 () Bool)

(declare-fun e!3535611 () Bool)

(assert (=> b!5752963 (= e!3535615 e!3535611)))

(declare-fun res!2428803 () Bool)

(assert (=> b!5752963 (= res!2428803 call!441158)))

(assert (=> b!5752963 (=> res!2428803 e!3535611)))

(declare-fun b!5752964 () Bool)

(assert (=> b!5752964 (= e!3535611 call!441159)))

(assert (= (and d!1813120 (not res!2428802)) b!5752962))

(assert (= (and b!5752962 res!2428800) b!5752961))

(assert (= (and b!5752961 (not res!2428799)) b!5752958))

(assert (= (and b!5752958 c!1016437) b!5752963))

(assert (= (and b!5752958 (not c!1016437)) b!5752959))

(assert (= (and b!5752963 (not res!2428803)) b!5752964))

(assert (= (and b!5752959 res!2428801) b!5752960))

(assert (= (or b!5752964 b!5752960) bm!441153))

(assert (= (or b!5752963 b!5752959) bm!441154))

(declare-fun m!6702734 () Bool)

(assert (=> bm!441153 m!6702734))

(declare-fun m!6702736 () Bool)

(assert (=> bm!441154 m!6702736))

(assert (=> d!1812640 d!1813120))

(assert (=> d!1812664 d!1812742))

(assert (=> d!1812648 d!1812644))

(declare-fun d!1813122 () Bool)

(assert (=> d!1813122 (= (flatMap!1374 lt!2287285 lambda!312041) (dynLambda!24837 lambda!312041 lt!2287276))))

(assert (=> d!1813122 true))

(declare-fun _$13!2448 () Unit!156576)

(assert (=> d!1813122 (= (choose!43608 lt!2287285 lt!2287276 lambda!312041) _$13!2448)))

(declare-fun b_lambda!217297 () Bool)

(assert (=> (not b_lambda!217297) (not d!1813122)))

(declare-fun bs!1347706 () Bool)

(assert (= bs!1347706 d!1813122))

(assert (=> bs!1347706 m!6701078))

(assert (=> bs!1347706 m!6701628))

(assert (=> d!1812648 d!1813122))

(assert (=> bm!440878 d!1812730))

(assert (=> b!5751825 d!1812752))

(assert (=> b!5751825 d!1812750))

(declare-fun d!1813124 () Bool)

(assert (=> d!1813124 (= ($colon$colon!1760 (exprs!5645 lt!2287270) (ite (or c!1016047 c!1016048) (regTwo!32034 (reg!16090 (regOne!32034 r!7292))) (reg!16090 (regOne!32034 r!7292)))) (Cons!63459 (ite (or c!1016047 c!1016048) (regTwo!32034 (reg!16090 (regOne!32034 r!7292))) (reg!16090 (regOne!32034 r!7292))) (exprs!5645 lt!2287270)))))

(assert (=> bm!440862 d!1813124))

(declare-fun d!1813126 () Bool)

(declare-fun res!2428808 () Bool)

(declare-fun e!3535630 () Bool)

(assert (=> d!1813126 (=> res!2428808 e!3535630)))

(assert (=> d!1813126 (= res!2428808 ((_ is Nil!63460) lt!2287436))))

(assert (=> d!1813126 (= (noDuplicate!1672 lt!2287436) e!3535630)))

(declare-fun b!5752989 () Bool)

(declare-fun e!3535631 () Bool)

(assert (=> b!5752989 (= e!3535630 e!3535631)))

(declare-fun res!2428809 () Bool)

(assert (=> b!5752989 (=> (not res!2428809) (not e!3535631))))

(declare-fun contains!19863 (List!63584 Context!10290) Bool)

(assert (=> b!5752989 (= res!2428809 (not (contains!19863 (t!376914 lt!2287436) (h!69908 lt!2287436))))))

(declare-fun b!5752990 () Bool)

(assert (=> b!5752990 (= e!3535631 (noDuplicate!1672 (t!376914 lt!2287436)))))

(assert (= (and d!1813126 (not res!2428808)) b!5752989))

(assert (= (and b!5752989 res!2428809) b!5752990))

(declare-fun m!6702738 () Bool)

(assert (=> b!5752989 m!6702738))

(declare-fun m!6702740 () Bool)

(assert (=> b!5752990 m!6702740))

(assert (=> d!1812676 d!1813126))

(declare-fun d!1813128 () Bool)

(declare-fun e!3535639 () Bool)

(assert (=> d!1813128 e!3535639))

(declare-fun res!2428814 () Bool)

(assert (=> d!1813128 (=> (not res!2428814) (not e!3535639))))

(declare-fun res!2428815 () List!63584)

(assert (=> d!1813128 (= res!2428814 (noDuplicate!1672 res!2428815))))

(declare-fun e!3535638 () Bool)

(assert (=> d!1813128 e!3535638))

(assert (=> d!1813128 (= (choose!43614 z!1189) res!2428815)))

(declare-fun b!5752998 () Bool)

(declare-fun e!3535640 () Bool)

(declare-fun tp!1589891 () Bool)

(assert (=> b!5752998 (= e!3535640 tp!1589891)))

(declare-fun b!5752997 () Bool)

(declare-fun tp!1589892 () Bool)

(assert (=> b!5752997 (= e!3535638 (and (inv!82649 (h!69908 res!2428815)) e!3535640 tp!1589892))))

(declare-fun b!5752999 () Bool)

(assert (=> b!5752999 (= e!3535639 (= (content!11573 res!2428815) z!1189))))

(assert (= b!5752997 b!5752998))

(assert (= (and d!1813128 ((_ is Cons!63460) res!2428815)) b!5752997))

(assert (= (and d!1813128 res!2428814) b!5752999))

(declare-fun m!6702742 () Bool)

(assert (=> d!1813128 m!6702742))

(declare-fun m!6702744 () Bool)

(assert (=> b!5752997 m!6702744))

(declare-fun m!6702746 () Bool)

(assert (=> b!5752999 m!6702746))

(assert (=> d!1812676 d!1813128))

(declare-fun d!1813130 () Bool)

(assert (=> d!1813130 (= (isEmpty!35346 (findConcatSeparation!2184 (regOne!32034 r!7292) (regTwo!32034 r!7292) Nil!63458 s!2326 s!2326)) (not ((_ is Some!15769) (findConcatSeparation!2184 (regOne!32034 r!7292) (regTwo!32034 r!7292) Nil!63458 s!2326 s!2326))))))

(assert (=> d!1812628 d!1813130))

(declare-fun d!1813132 () Bool)

(declare-fun res!2428816 () Bool)

(declare-fun e!3535641 () Bool)

(assert (=> d!1813132 (=> res!2428816 e!3535641)))

(assert (=> d!1813132 (= res!2428816 ((_ is Nil!63460) (t!376914 lt!2287267)))))

(assert (=> d!1813132 (= (forall!14882 (t!376914 lt!2287267) lambda!312131) e!3535641)))

(declare-fun b!5753000 () Bool)

(declare-fun e!3535642 () Bool)

(assert (=> b!5753000 (= e!3535641 e!3535642)))

(declare-fun res!2428817 () Bool)

(assert (=> b!5753000 (=> (not res!2428817) (not e!3535642))))

(assert (=> b!5753000 (= res!2428817 (dynLambda!24838 lambda!312131 (h!69908 (t!376914 lt!2287267))))))

(declare-fun b!5753001 () Bool)

(assert (=> b!5753001 (= e!3535642 (forall!14882 (t!376914 (t!376914 lt!2287267)) lambda!312131))))

(assert (= (and d!1813132 (not res!2428816)) b!5753000))

(assert (= (and b!5753000 res!2428817) b!5753001))

(declare-fun b_lambda!217299 () Bool)

(assert (=> (not b_lambda!217299) (not b!5753000)))

(declare-fun m!6702748 () Bool)

(assert (=> b!5753000 m!6702748))

(declare-fun m!6702750 () Bool)

(assert (=> b!5753001 m!6702750))

(assert (=> b!5751848 d!1813132))

(declare-fun d!1813134 () Bool)

(assert (=> d!1813134 (= (maxBigInt!0 (contextDepth!132 (h!69908 lt!2287267)) (zipperDepth!236 (t!376914 lt!2287267))) (ite (>= (contextDepth!132 (h!69908 lt!2287267)) (zipperDepth!236 (t!376914 lt!2287267))) (contextDepth!132 (h!69908 lt!2287267)) (zipperDepth!236 (t!376914 lt!2287267))))))

(assert (=> b!5751848 d!1813134))

(declare-fun bs!1347707 () Bool)

(declare-fun d!1813136 () Bool)

(assert (= bs!1347707 (and d!1813136 d!1813014)))

(declare-fun lambda!312189 () Int)

(assert (=> bs!1347707 (= (and (= lt!2287428 lt!2287424) (= lambda!312130 lambda!312127)) (= lambda!312189 lambda!312170))))

(declare-fun bs!1347708 () Bool)

(assert (= bs!1347708 (and d!1813136 b!5751848)))

(assert (=> bs!1347708 (not (= lambda!312189 lambda!312131))))

(declare-fun bs!1347709 () Bool)

(assert (= bs!1347709 (and d!1813136 d!1812924)))

(assert (=> bs!1347709 (not (= lambda!312189 lambda!312155))))

(declare-fun bs!1347710 () Bool)

(assert (= bs!1347710 (and d!1813136 b!5752760)))

(assert (=> bs!1347710 (not (= lambda!312189 lambda!312173))))

(declare-fun bs!1347711 () Bool)

(assert (= bs!1347711 (and d!1813136 d!1813032)))

(assert (=> bs!1347711 (not (= lambda!312189 lambda!312176))))

(declare-fun bs!1347712 () Bool)

(assert (= bs!1347712 (and d!1813136 b!5752758)))

(assert (=> bs!1347712 (not (= lambda!312189 lambda!312172))))

(declare-fun bs!1347713 () Bool)

(assert (= bs!1347713 (and d!1813136 d!1813070)))

(assert (=> bs!1347713 (not (= lambda!312189 lambda!312184))))

(declare-fun bs!1347714 () Bool)

(assert (= bs!1347714 (and d!1813136 d!1813104)))

(assert (=> bs!1347714 (not (= lambda!312189 lambda!312186))))

(declare-fun bs!1347715 () Bool)

(assert (= bs!1347715 (and d!1813136 b!5751845)))

(assert (=> bs!1347715 (not (= lambda!312189 lambda!312129))))

(declare-fun bs!1347716 () Bool)

(assert (= bs!1347716 (and d!1813136 b!5751850)))

(assert (=> bs!1347716 (not (= lambda!312189 lambda!312132))))

(declare-fun bs!1347717 () Bool)

(assert (= bs!1347717 (and d!1813136 d!1812880)))

(assert (=> bs!1347717 (not (= lambda!312189 lambda!312149))))

(declare-fun bs!1347718 () Bool)

(assert (= bs!1347718 (and d!1813136 d!1812862)))

(assert (=> bs!1347718 (not (= lambda!312189 lambda!312148))))

(declare-fun bs!1347719 () Bool)

(assert (= bs!1347719 (and d!1813136 d!1812832)))

(assert (=> bs!1347719 (not (= lambda!312189 lambda!312146))))

(declare-fun bs!1347720 () Bool)

(assert (= bs!1347720 (and d!1813136 b!5751843)))

(assert (=> bs!1347720 (not (= lambda!312189 lambda!312128))))

(assert (=> d!1813136 true))

(assert (=> d!1813136 true))

(assert (=> d!1813136 (< (dynLambda!24844 order!27201 lambda!312130) (dynLambda!24845 order!27203 lambda!312189))))

(assert (=> d!1813136 (forall!14882 (t!376914 lt!2287267) lambda!312189)))

(declare-fun lt!2287518 () Unit!156576)

(assert (=> d!1813136 (= lt!2287518 (choose!43619 (t!376914 lt!2287267) lt!2287428 (zipperDepth!236 (t!376914 lt!2287267)) lambda!312130))))

(assert (=> d!1813136 (>= lt!2287428 (zipperDepth!236 (t!376914 lt!2287267)))))

(assert (=> d!1813136 (= (lemmaForallContextDepthBiggerThanTransitive!122 (t!376914 lt!2287267) lt!2287428 (zipperDepth!236 (t!376914 lt!2287267)) lambda!312130) lt!2287518)))

(declare-fun bs!1347721 () Bool)

(assert (= bs!1347721 d!1813136))

(declare-fun m!6702752 () Bool)

(assert (=> bs!1347721 m!6702752))

(assert (=> bs!1347721 m!6701686))

(declare-fun m!6702754 () Bool)

(assert (=> bs!1347721 m!6702754))

(assert (=> b!5751848 d!1813136))

(declare-fun bs!1347722 () Bool)

(declare-fun b!5753002 () Bool)

(assert (= bs!1347722 (and b!5753002 d!1812772)))

(declare-fun lambda!312190 () Int)

(assert (=> bs!1347722 (not (= lambda!312190 lambda!312139))))

(declare-fun bs!1347723 () Bool)

(assert (= bs!1347723 (and b!5753002 d!1812856)))

(assert (=> bs!1347723 (not (= lambda!312190 lambda!312147))))

(declare-fun bs!1347724 () Bool)

(assert (= bs!1347724 (and b!5753002 d!1813118)))

(assert (=> bs!1347724 (not (= lambda!312190 lambda!312188))))

(declare-fun bs!1347725 () Bool)

(assert (= bs!1347725 (and b!5753002 d!1812708)))

(assert (=> bs!1347725 (not (= lambda!312190 lambda!312135))))

(declare-fun bs!1347726 () Bool)

(assert (= bs!1347726 (and b!5753002 d!1812602)))

(assert (=> bs!1347726 (not (= lambda!312190 lambda!312094))))

(declare-fun bs!1347727 () Bool)

(assert (= bs!1347727 (and b!5753002 d!1812782)))

(assert (=> bs!1347727 (not (= lambda!312190 lambda!312141))))

(declare-fun bs!1347728 () Bool)

(assert (= bs!1347728 (and b!5753002 d!1812938)))

(assert (=> bs!1347728 (not (= lambda!312190 lambda!312156))))

(declare-fun bs!1347729 () Bool)

(assert (= bs!1347729 (and b!5753002 d!1812616)))

(assert (=> bs!1347729 (not (= lambda!312190 lambda!312104))))

(declare-fun bs!1347730 () Bool)

(assert (= bs!1347730 (and b!5753002 b!5752733)))

(declare-fun lt!2287522 () Int)

(assert (=> bs!1347730 (= (= lt!2287522 lt!2287498) (= lambda!312190 lambda!312166))))

(declare-fun bs!1347731 () Bool)

(assert (= bs!1347731 (and b!5753002 d!1813116)))

(assert (=> bs!1347731 (not (= lambda!312190 lambda!312187))))

(declare-fun bs!1347732 () Bool)

(assert (= bs!1347732 (and b!5753002 d!1812604)))

(assert (=> bs!1347732 (not (= lambda!312190 lambda!312097))))

(declare-fun bs!1347733 () Bool)

(assert (= bs!1347733 (and b!5753002 b!5752735)))

(assert (=> bs!1347733 (= (= lt!2287522 lt!2287496) (= lambda!312190 lambda!312167))))

(declare-fun bs!1347734 () Bool)

(assert (= bs!1347734 (and b!5753002 d!1812606)))

(assert (=> bs!1347734 (not (= lambda!312190 lambda!312098))))

(declare-fun bs!1347735 () Bool)

(assert (= bs!1347735 (and b!5753002 d!1812600)))

(assert (=> bs!1347735 (not (= lambda!312190 lambda!312091))))

(declare-fun bs!1347736 () Bool)

(assert (= bs!1347736 (and b!5753002 d!1812886)))

(assert (=> bs!1347736 (not (= lambda!312190 lambda!312150))))

(declare-fun bs!1347737 () Bool)

(assert (= bs!1347737 (and b!5753002 d!1813034)))

(assert (=> bs!1347737 (not (= lambda!312190 lambda!312177))))

(declare-fun bs!1347738 () Bool)

(assert (= bs!1347738 (and b!5753002 d!1812888)))

(assert (=> bs!1347738 (not (= lambda!312190 lambda!312151))))

(assert (=> b!5753002 true))

(declare-fun bs!1347739 () Bool)

(declare-fun b!5753004 () Bool)

(assert (= bs!1347739 (and b!5753004 d!1812772)))

(declare-fun lambda!312191 () Int)

(assert (=> bs!1347739 (not (= lambda!312191 lambda!312139))))

(declare-fun bs!1347740 () Bool)

(assert (= bs!1347740 (and b!5753004 d!1812856)))

(assert (=> bs!1347740 (not (= lambda!312191 lambda!312147))))

(declare-fun bs!1347741 () Bool)

(assert (= bs!1347741 (and b!5753004 d!1813118)))

(assert (=> bs!1347741 (not (= lambda!312191 lambda!312188))))

(declare-fun bs!1347742 () Bool)

(assert (= bs!1347742 (and b!5753004 d!1812708)))

(assert (=> bs!1347742 (not (= lambda!312191 lambda!312135))))

(declare-fun bs!1347743 () Bool)

(assert (= bs!1347743 (and b!5753004 d!1812602)))

(assert (=> bs!1347743 (not (= lambda!312191 lambda!312094))))

(declare-fun bs!1347744 () Bool)

(assert (= bs!1347744 (and b!5753004 d!1812782)))

(assert (=> bs!1347744 (not (= lambda!312191 lambda!312141))))

(declare-fun bs!1347745 () Bool)

(assert (= bs!1347745 (and b!5753004 d!1812938)))

(assert (=> bs!1347745 (not (= lambda!312191 lambda!312156))))

(declare-fun bs!1347746 () Bool)

(assert (= bs!1347746 (and b!5753004 d!1812616)))

(assert (=> bs!1347746 (not (= lambda!312191 lambda!312104))))

(declare-fun bs!1347747 () Bool)

(assert (= bs!1347747 (and b!5753004 b!5753002)))

(declare-fun lt!2287520 () Int)

(assert (=> bs!1347747 (= (= lt!2287520 lt!2287522) (= lambda!312191 lambda!312190))))

(declare-fun bs!1347748 () Bool)

(assert (= bs!1347748 (and b!5753004 b!5752733)))

(assert (=> bs!1347748 (= (= lt!2287520 lt!2287498) (= lambda!312191 lambda!312166))))

(declare-fun bs!1347749 () Bool)

(assert (= bs!1347749 (and b!5753004 d!1813116)))

(assert (=> bs!1347749 (not (= lambda!312191 lambda!312187))))

(declare-fun bs!1347750 () Bool)

(assert (= bs!1347750 (and b!5753004 d!1812604)))

(assert (=> bs!1347750 (not (= lambda!312191 lambda!312097))))

(declare-fun bs!1347751 () Bool)

(assert (= bs!1347751 (and b!5753004 b!5752735)))

(assert (=> bs!1347751 (= (= lt!2287520 lt!2287496) (= lambda!312191 lambda!312167))))

(declare-fun bs!1347752 () Bool)

(assert (= bs!1347752 (and b!5753004 d!1812606)))

(assert (=> bs!1347752 (not (= lambda!312191 lambda!312098))))

(declare-fun bs!1347753 () Bool)

(assert (= bs!1347753 (and b!5753004 d!1812600)))

(assert (=> bs!1347753 (not (= lambda!312191 lambda!312091))))

(declare-fun bs!1347754 () Bool)

(assert (= bs!1347754 (and b!5753004 d!1812886)))

(assert (=> bs!1347754 (not (= lambda!312191 lambda!312150))))

(declare-fun bs!1347755 () Bool)

(assert (= bs!1347755 (and b!5753004 d!1813034)))

(assert (=> bs!1347755 (not (= lambda!312191 lambda!312177))))

(declare-fun bs!1347756 () Bool)

(assert (= bs!1347756 (and b!5753004 d!1812888)))

(assert (=> bs!1347756 (not (= lambda!312191 lambda!312151))))

(assert (=> b!5753004 true))

(declare-fun d!1813138 () Bool)

(declare-fun e!3535643 () Bool)

(assert (=> d!1813138 e!3535643))

(declare-fun res!2428818 () Bool)

(assert (=> d!1813138 (=> (not res!2428818) (not e!3535643))))

(assert (=> d!1813138 (= res!2428818 (>= lt!2287520 0))))

(declare-fun e!3535644 () Int)

(assert (=> d!1813138 (= lt!2287520 e!3535644)))

(declare-fun c!1016448 () Bool)

(assert (=> d!1813138 (= c!1016448 ((_ is Cons!63459) (exprs!5645 (h!69908 lt!2287267))))))

(assert (=> d!1813138 (= (contextDepth!132 (h!69908 lt!2287267)) lt!2287520)))

(assert (=> b!5753002 (= e!3535644 lt!2287522)))

(assert (=> b!5753002 (= lt!2287522 (maxBigInt!0 (regexDepth!238 (h!69907 (exprs!5645 (h!69908 lt!2287267)))) (contextDepth!132 (Context!10291 (t!376913 (exprs!5645 (h!69908 lt!2287267)))))))))

(declare-fun lt!2287519 () Unit!156576)

(assert (=> b!5753002 (= lt!2287519 (lemmaForallRegexDepthBiggerThanTransitive!35 (t!376913 (exprs!5645 (h!69908 lt!2287267))) lt!2287522 (contextDepth!132 (Context!10291 (t!376913 (exprs!5645 (h!69908 lt!2287267)))))))))

(assert (=> b!5753002 (forall!14881 (t!376913 (exprs!5645 (h!69908 lt!2287267))) lambda!312190)))

(declare-fun lt!2287521 () Unit!156576)

(assert (=> b!5753002 (= lt!2287521 lt!2287519)))

(declare-fun b!5753003 () Bool)

(assert (=> b!5753003 (= e!3535644 0)))

(assert (=> b!5753004 (= e!3535643 (forall!14881 (exprs!5645 (h!69908 lt!2287267)) lambda!312191))))

(assert (= (and d!1813138 c!1016448) b!5753002))

(assert (= (and d!1813138 (not c!1016448)) b!5753003))

(assert (= (and d!1813138 res!2428818) b!5753004))

(declare-fun m!6702764 () Bool)

(assert (=> b!5753002 m!6702764))

(assert (=> b!5753002 m!6702764))

(declare-fun m!6702766 () Bool)

(assert (=> b!5753002 m!6702766))

(declare-fun m!6702768 () Bool)

(assert (=> b!5753002 m!6702768))

(declare-fun m!6702770 () Bool)

(assert (=> b!5753002 m!6702770))

(assert (=> b!5753002 m!6702766))

(assert (=> b!5753002 m!6702766))

(declare-fun m!6702772 () Bool)

(assert (=> b!5753002 m!6702772))

(declare-fun m!6702774 () Bool)

(assert (=> b!5753004 m!6702774))

(assert (=> b!5751848 d!1813138))

(declare-fun bs!1347757 () Bool)

(declare-fun b!5753015 () Bool)

(assert (= bs!1347757 (and b!5753015 b!5751843)))

(declare-fun lambda!312192 () Int)

(assert (=> bs!1347757 (= lambda!312192 lambda!312127)))

(declare-fun bs!1347758 () Bool)

(assert (= bs!1347758 (and b!5753015 b!5751848)))

(assert (=> bs!1347758 (= lambda!312192 lambda!312130)))

(declare-fun bs!1347759 () Bool)

(assert (= bs!1347759 (and b!5753015 b!5752758)))

(assert (=> bs!1347759 (= lambda!312192 lambda!312171)))

(declare-fun bs!1347761 () Bool)

(assert (= bs!1347761 (and b!5753015 d!1813014)))

(declare-fun lambda!312194 () Int)

(assert (=> bs!1347761 (not (= lambda!312194 lambda!312170))))

(declare-fun lt!2287524 () Int)

(assert (=> bs!1347758 (= (= lt!2287524 lt!2287428) (= lambda!312194 lambda!312131))))

(declare-fun bs!1347763 () Bool)

(assert (= bs!1347763 (and b!5753015 d!1812924)))

(assert (=> bs!1347763 (not (= lambda!312194 lambda!312155))))

(declare-fun bs!1347765 () Bool)

(assert (= bs!1347765 (and b!5753015 b!5752760)))

(assert (=> bs!1347765 (= (= lt!2287524 lt!2287505) (= lambda!312194 lambda!312173))))

(declare-fun bs!1347766 () Bool)

(assert (= bs!1347766 (and b!5753015 d!1813032)))

(assert (=> bs!1347766 (not (= lambda!312194 lambda!312176))))

(assert (=> bs!1347759 (= (= lt!2287524 lt!2287502) (= lambda!312194 lambda!312172))))

(declare-fun bs!1347768 () Bool)

(assert (= bs!1347768 (and b!5753015 d!1813070)))

(assert (=> bs!1347768 (not (= lambda!312194 lambda!312184))))

(declare-fun bs!1347770 () Bool)

(assert (= bs!1347770 (and b!5753015 d!1813104)))

(assert (=> bs!1347770 (not (= lambda!312194 lambda!312186))))

(declare-fun bs!1347771 () Bool)

(assert (= bs!1347771 (and b!5753015 b!5751845)))

(assert (=> bs!1347771 (= (= lt!2287524 lt!2287427) (= lambda!312194 lambda!312129))))

(declare-fun bs!1347772 () Bool)

(assert (= bs!1347772 (and b!5753015 d!1813136)))

(assert (=> bs!1347772 (not (= lambda!312194 lambda!312189))))

(declare-fun bs!1347773 () Bool)

(assert (= bs!1347773 (and b!5753015 b!5751850)))

(assert (=> bs!1347773 (= (= lt!2287524 lt!2287431) (= lambda!312194 lambda!312132))))

(declare-fun bs!1347774 () Bool)

(assert (= bs!1347774 (and b!5753015 d!1812880)))

(assert (=> bs!1347774 (not (= lambda!312194 lambda!312149))))

(declare-fun bs!1347776 () Bool)

(assert (= bs!1347776 (and b!5753015 d!1812862)))

(assert (=> bs!1347776 (not (= lambda!312194 lambda!312148))))

(declare-fun bs!1347777 () Bool)

(assert (= bs!1347777 (and b!5753015 d!1812832)))

(assert (=> bs!1347777 (not (= lambda!312194 lambda!312146))))

(assert (=> bs!1347757 (= (= lt!2287524 lt!2287424) (= lambda!312194 lambda!312128))))

(assert (=> b!5753015 true))

(declare-fun bs!1347778 () Bool)

(declare-fun b!5753017 () Bool)

(assert (= bs!1347778 (and b!5753017 d!1813014)))

(declare-fun lambda!312195 () Int)

(assert (=> bs!1347778 (not (= lambda!312195 lambda!312170))))

(declare-fun bs!1347779 () Bool)

(assert (= bs!1347779 (and b!5753017 b!5751848)))

(declare-fun lt!2287527 () Int)

(assert (=> bs!1347779 (= (= lt!2287527 lt!2287428) (= lambda!312195 lambda!312131))))

(declare-fun bs!1347780 () Bool)

(assert (= bs!1347780 (and b!5753017 d!1812924)))

(assert (=> bs!1347780 (not (= lambda!312195 lambda!312155))))

(declare-fun bs!1347781 () Bool)

(assert (= bs!1347781 (and b!5753017 b!5752760)))

(assert (=> bs!1347781 (= (= lt!2287527 lt!2287505) (= lambda!312195 lambda!312173))))

(declare-fun bs!1347782 () Bool)

(assert (= bs!1347782 (and b!5753017 d!1813032)))

(assert (=> bs!1347782 (not (= lambda!312195 lambda!312176))))

(declare-fun bs!1347783 () Bool)

(assert (= bs!1347783 (and b!5753017 b!5752758)))

(assert (=> bs!1347783 (= (= lt!2287527 lt!2287502) (= lambda!312195 lambda!312172))))

(declare-fun bs!1347784 () Bool)

(assert (= bs!1347784 (and b!5753017 d!1813070)))

(assert (=> bs!1347784 (not (= lambda!312195 lambda!312184))))

(declare-fun bs!1347785 () Bool)

(assert (= bs!1347785 (and b!5753017 d!1813104)))

(assert (=> bs!1347785 (not (= lambda!312195 lambda!312186))))

(declare-fun bs!1347786 () Bool)

(assert (= bs!1347786 (and b!5753017 b!5751845)))

(assert (=> bs!1347786 (= (= lt!2287527 lt!2287427) (= lambda!312195 lambda!312129))))

(declare-fun bs!1347787 () Bool)

(assert (= bs!1347787 (and b!5753017 d!1813136)))

(assert (=> bs!1347787 (not (= lambda!312195 lambda!312189))))

(declare-fun bs!1347788 () Bool)

(assert (= bs!1347788 (and b!5753017 b!5751850)))

(assert (=> bs!1347788 (= (= lt!2287527 lt!2287431) (= lambda!312195 lambda!312132))))

(declare-fun bs!1347789 () Bool)

(assert (= bs!1347789 (and b!5753017 d!1812880)))

(assert (=> bs!1347789 (not (= lambda!312195 lambda!312149))))

(declare-fun bs!1347790 () Bool)

(assert (= bs!1347790 (and b!5753017 d!1812862)))

(assert (=> bs!1347790 (not (= lambda!312195 lambda!312148))))

(declare-fun bs!1347791 () Bool)

(assert (= bs!1347791 (and b!5753017 d!1812832)))

(assert (=> bs!1347791 (not (= lambda!312195 lambda!312146))))

(declare-fun bs!1347792 () Bool)

(assert (= bs!1347792 (and b!5753017 b!5751843)))

(assert (=> bs!1347792 (= (= lt!2287527 lt!2287424) (= lambda!312195 lambda!312128))))

(declare-fun bs!1347793 () Bool)

(assert (= bs!1347793 (and b!5753017 b!5753015)))

(assert (=> bs!1347793 (= (= lt!2287527 lt!2287524) (= lambda!312195 lambda!312194))))

(assert (=> b!5753017 true))

(declare-fun d!1813142 () Bool)

(declare-fun e!3535650 () Bool)

(assert (=> d!1813142 e!3535650))

(declare-fun res!2428819 () Bool)

(assert (=> d!1813142 (=> (not res!2428819) (not e!3535650))))

(assert (=> d!1813142 (= res!2428819 (>= lt!2287527 0))))

(declare-fun e!3535651 () Int)

(assert (=> d!1813142 (= lt!2287527 e!3535651)))

(declare-fun c!1016454 () Bool)

(assert (=> d!1813142 (= c!1016454 ((_ is Cons!63460) (t!376914 lt!2287267)))))

(assert (=> d!1813142 (= (zipperDepth!236 (t!376914 lt!2287267)) lt!2287527)))

(assert (=> b!5753015 (= e!3535651 lt!2287524)))

(assert (=> b!5753015 (= lt!2287524 (maxBigInt!0 (contextDepth!132 (h!69908 (t!376914 lt!2287267))) (zipperDepth!236 (t!376914 (t!376914 lt!2287267)))))))

(declare-fun lt!2287526 () Unit!156576)

(assert (=> b!5753015 (= lt!2287526 (lemmaForallContextDepthBiggerThanTransitive!122 (t!376914 (t!376914 lt!2287267)) lt!2287524 (zipperDepth!236 (t!376914 (t!376914 lt!2287267))) lambda!312192))))

(assert (=> b!5753015 (forall!14882 (t!376914 (t!376914 lt!2287267)) lambda!312194)))

(declare-fun lt!2287525 () Unit!156576)

(assert (=> b!5753015 (= lt!2287525 lt!2287526)))

(declare-fun b!5753016 () Bool)

(assert (=> b!5753016 (= e!3535651 0)))

(assert (=> b!5753017 (= e!3535650 (forall!14882 (t!376914 lt!2287267) lambda!312195))))

(assert (= (and d!1813142 c!1016454) b!5753015))

(assert (= (and d!1813142 (not c!1016454)) b!5753016))

(assert (= (and d!1813142 res!2428819) b!5753017))

(declare-fun m!6702782 () Bool)

(assert (=> b!5753015 m!6702782))

(declare-fun m!6702784 () Bool)

(assert (=> b!5753015 m!6702784))

(declare-fun m!6702786 () Bool)

(assert (=> b!5753015 m!6702786))

(assert (=> b!5753015 m!6702784))

(declare-fun m!6702788 () Bool)

(assert (=> b!5753015 m!6702788))

(declare-fun m!6702790 () Bool)

(assert (=> b!5753015 m!6702790))

(assert (=> b!5753015 m!6702784))

(assert (=> b!5753015 m!6702782))

(declare-fun m!6702792 () Bool)

(assert (=> b!5753017 m!6702792))

(assert (=> b!5751848 d!1813142))

(declare-fun d!1813148 () Bool)

(declare-fun c!1016458 () Bool)

(declare-fun e!3535660 () Bool)

(assert (=> d!1813148 (= c!1016458 e!3535660)))

(declare-fun res!2428828 () Bool)

(assert (=> d!1813148 (=> (not res!2428828) (not e!3535660))))

(assert (=> d!1813148 (= res!2428828 ((_ is Cons!63459) (exprs!5645 (Context!10291 (t!376913 (exprs!5645 (h!69908 zl!343)))))))))

(declare-fun e!3535661 () (InoxSet Context!10290))

(assert (=> d!1813148 (= (derivationStepZipperUp!1029 (Context!10291 (t!376913 (exprs!5645 (h!69908 zl!343)))) (h!69906 s!2326)) e!3535661)))

(declare-fun bm!441168 () Bool)

(declare-fun call!441173 () (InoxSet Context!10290))

(assert (=> bm!441168 (= call!441173 (derivationStepZipperDown!1103 (h!69907 (exprs!5645 (Context!10291 (t!376913 (exprs!5645 (h!69908 zl!343)))))) (Context!10291 (t!376913 (exprs!5645 (Context!10291 (t!376913 (exprs!5645 (h!69908 zl!343))))))) (h!69906 s!2326)))))

(declare-fun b!5753032 () Bool)

(declare-fun e!3535659 () (InoxSet Context!10290))

(assert (=> b!5753032 (= e!3535659 ((as const (Array Context!10290 Bool)) false))))

(declare-fun b!5753033 () Bool)

(assert (=> b!5753033 (= e!3535659 call!441173)))

(declare-fun b!5753034 () Bool)

(assert (=> b!5753034 (= e!3535660 (nullable!5793 (h!69907 (exprs!5645 (Context!10291 (t!376913 (exprs!5645 (h!69908 zl!343))))))))))

(declare-fun b!5753035 () Bool)

(assert (=> b!5753035 (= e!3535661 ((_ map or) call!441173 (derivationStepZipperUp!1029 (Context!10291 (t!376913 (exprs!5645 (Context!10291 (t!376913 (exprs!5645 (h!69908 zl!343))))))) (h!69906 s!2326))))))

(declare-fun b!5753036 () Bool)

(assert (=> b!5753036 (= e!3535661 e!3535659)))

(declare-fun c!1016459 () Bool)

(assert (=> b!5753036 (= c!1016459 ((_ is Cons!63459) (exprs!5645 (Context!10291 (t!376913 (exprs!5645 (h!69908 zl!343)))))))))

(assert (= (and d!1813148 res!2428828) b!5753034))

(assert (= (and d!1813148 c!1016458) b!5753035))

(assert (= (and d!1813148 (not c!1016458)) b!5753036))

(assert (= (and b!5753036 c!1016459) b!5753033))

(assert (= (and b!5753036 (not c!1016459)) b!5753032))

(assert (= (or b!5753035 b!5753033) bm!441168))

(declare-fun m!6702798 () Bool)

(assert (=> bm!441168 m!6702798))

(declare-fun m!6702800 () Bool)

(assert (=> b!5753034 m!6702800))

(declare-fun m!6702802 () Bool)

(assert (=> b!5753035 m!6702802))

(assert (=> b!5751903 d!1813148))

(assert (=> d!1812630 d!1812730))

(declare-fun b!5753047 () Bool)

(declare-fun res!2428831 () Bool)

(declare-fun e!3535668 () Bool)

(assert (=> b!5753047 (=> (not res!2428831) (not e!3535668))))

(declare-fun call!441179 () Bool)

(assert (=> b!5753047 (= res!2428831 call!441179)))

(declare-fun e!3535671 () Bool)

(assert (=> b!5753047 (= e!3535671 e!3535668)))

(declare-fun b!5753048 () Bool)

(declare-fun call!441180 () Bool)

(assert (=> b!5753048 (= e!3535668 call!441180)))

(declare-fun b!5753049 () Bool)

(declare-fun e!3535670 () Bool)

(assert (=> b!5753049 (= e!3535670 call!441180)))

(declare-fun c!1016466 () Bool)

(declare-fun call!441178 () Bool)

(declare-fun c!1016465 () Bool)

(declare-fun bm!441173 () Bool)

(assert (=> bm!441173 (= call!441178 (validRegex!7497 (ite c!1016465 (reg!16090 lt!2287411) (ite c!1016466 (regTwo!32035 lt!2287411) (regTwo!32034 lt!2287411)))))))

(declare-fun b!5753050 () Bool)

(declare-fun e!3535673 () Bool)

(assert (=> b!5753050 (= e!3535673 call!441178)))

(declare-fun b!5753051 () Bool)

(declare-fun e!3535667 () Bool)

(assert (=> b!5753051 (= e!3535667 e!3535673)))

(declare-fun res!2428829 () Bool)

(assert (=> b!5753051 (= res!2428829 (not (nullable!5793 (reg!16090 lt!2287411))))))

(assert (=> b!5753051 (=> (not res!2428829) (not e!3535673))))

(declare-fun b!5753052 () Bool)

(declare-fun e!3535672 () Bool)

(assert (=> b!5753052 (= e!3535672 e!3535670)))

(declare-fun res!2428830 () Bool)

(assert (=> b!5753052 (=> (not res!2428830) (not e!3535670))))

(assert (=> b!5753052 (= res!2428830 call!441179)))

(declare-fun bm!441174 () Bool)

(assert (=> bm!441174 (= call!441179 (validRegex!7497 (ite c!1016466 (regOne!32035 lt!2287411) (regOne!32034 lt!2287411))))))

(declare-fun bm!441175 () Bool)

(assert (=> bm!441175 (= call!441180 call!441178)))

(declare-fun b!5753054 () Bool)

(declare-fun e!3535669 () Bool)

(assert (=> b!5753054 (= e!3535669 e!3535667)))

(assert (=> b!5753054 (= c!1016465 ((_ is Star!15761) lt!2287411))))

(declare-fun b!5753055 () Bool)

(declare-fun res!2428832 () Bool)

(assert (=> b!5753055 (=> res!2428832 e!3535672)))

(assert (=> b!5753055 (= res!2428832 (not ((_ is Concat!24606) lt!2287411)))))

(assert (=> b!5753055 (= e!3535671 e!3535672)))

(declare-fun d!1813152 () Bool)

(declare-fun res!2428833 () Bool)

(assert (=> d!1813152 (=> res!2428833 e!3535669)))

(assert (=> d!1813152 (= res!2428833 ((_ is ElementMatch!15761) lt!2287411))))

(assert (=> d!1813152 (= (validRegex!7497 lt!2287411) e!3535669)))

(declare-fun b!5753053 () Bool)

(assert (=> b!5753053 (= e!3535667 e!3535671)))

(assert (=> b!5753053 (= c!1016466 ((_ is Union!15761) lt!2287411))))

(assert (= (and d!1813152 (not res!2428833)) b!5753054))

(assert (= (and b!5753054 c!1016465) b!5753051))

(assert (= (and b!5753054 (not c!1016465)) b!5753053))

(assert (= (and b!5753051 res!2428829) b!5753050))

(assert (= (and b!5753053 c!1016466) b!5753047))

(assert (= (and b!5753053 (not c!1016466)) b!5753055))

(assert (= (and b!5753047 res!2428831) b!5753048))

(assert (= (and b!5753055 (not res!2428832)) b!5753052))

(assert (= (and b!5753052 res!2428830) b!5753049))

(assert (= (or b!5753048 b!5753049) bm!441175))

(assert (= (or b!5753047 b!5753052) bm!441174))

(assert (= (or b!5753050 bm!441175) bm!441173))

(declare-fun m!6702804 () Bool)

(assert (=> bm!441173 m!6702804))

(declare-fun m!6702806 () Bool)

(assert (=> b!5753051 m!6702806))

(declare-fun m!6702808 () Bool)

(assert (=> bm!441174 m!6702808))

(assert (=> d!1812658 d!1813152))

(declare-fun bs!1347794 () Bool)

(declare-fun d!1813154 () Bool)

(assert (= bs!1347794 (and d!1813154 d!1812772)))

(declare-fun lambda!312196 () Int)

(assert (=> bs!1347794 (= lambda!312196 lambda!312139)))

(declare-fun bs!1347795 () Bool)

(assert (= bs!1347795 (and d!1813154 b!5753004)))

(assert (=> bs!1347795 (not (= lambda!312196 lambda!312191))))

(declare-fun bs!1347796 () Bool)

(assert (= bs!1347796 (and d!1813154 d!1812856)))

(assert (=> bs!1347796 (= lambda!312196 lambda!312147)))

(declare-fun bs!1347797 () Bool)

(assert (= bs!1347797 (and d!1813154 d!1813118)))

(assert (=> bs!1347797 (= lambda!312196 lambda!312188)))

(declare-fun bs!1347798 () Bool)

(assert (= bs!1347798 (and d!1813154 d!1812708)))

(assert (=> bs!1347798 (= lambda!312196 lambda!312135)))

(declare-fun bs!1347799 () Bool)

(assert (= bs!1347799 (and d!1813154 d!1812602)))

(assert (=> bs!1347799 (= lambda!312196 lambda!312094)))

(declare-fun bs!1347800 () Bool)

(assert (= bs!1347800 (and d!1813154 d!1812782)))

(assert (=> bs!1347800 (= lambda!312196 lambda!312141)))

(declare-fun bs!1347801 () Bool)

(assert (= bs!1347801 (and d!1813154 d!1812938)))

(assert (=> bs!1347801 (= lambda!312196 lambda!312156)))

(declare-fun bs!1347802 () Bool)

(assert (= bs!1347802 (and d!1813154 d!1812616)))

(assert (=> bs!1347802 (= lambda!312196 lambda!312104)))

(declare-fun bs!1347803 () Bool)

(assert (= bs!1347803 (and d!1813154 b!5753002)))

(assert (=> bs!1347803 (not (= lambda!312196 lambda!312190))))

(declare-fun bs!1347804 () Bool)

(assert (= bs!1347804 (and d!1813154 b!5752733)))

(assert (=> bs!1347804 (not (= lambda!312196 lambda!312166))))

(declare-fun bs!1347806 () Bool)

(assert (= bs!1347806 (and d!1813154 d!1813116)))

(assert (=> bs!1347806 (= lambda!312196 lambda!312187)))

(declare-fun bs!1347807 () Bool)

(assert (= bs!1347807 (and d!1813154 d!1812604)))

(assert (=> bs!1347807 (= lambda!312196 lambda!312097)))

(declare-fun bs!1347808 () Bool)

(assert (= bs!1347808 (and d!1813154 b!5752735)))

(assert (=> bs!1347808 (not (= lambda!312196 lambda!312167))))

(declare-fun bs!1347810 () Bool)

(assert (= bs!1347810 (and d!1813154 d!1812606)))

(assert (=> bs!1347810 (= lambda!312196 lambda!312098)))

(declare-fun bs!1347811 () Bool)

(assert (= bs!1347811 (and d!1813154 d!1812600)))

(assert (=> bs!1347811 (= lambda!312196 lambda!312091)))

(declare-fun bs!1347813 () Bool)

(assert (= bs!1347813 (and d!1813154 d!1812886)))

(assert (=> bs!1347813 (= lambda!312196 lambda!312150)))

(declare-fun bs!1347814 () Bool)

(assert (= bs!1347814 (and d!1813154 d!1813034)))

(assert (=> bs!1347814 (= lambda!312196 lambda!312177)))

(declare-fun bs!1347816 () Bool)

(assert (= bs!1347816 (and d!1813154 d!1812888)))

(assert (=> bs!1347816 (= lambda!312196 lambda!312151)))

(declare-fun b!5753056 () Bool)

(declare-fun e!3535678 () Regex!15761)

(declare-fun e!3535677 () Regex!15761)

(assert (=> b!5753056 (= e!3535678 e!3535677)))

(declare-fun c!1016468 () Bool)

(assert (=> b!5753056 (= c!1016468 ((_ is Cons!63459) (unfocusZipperList!1189 (Cons!63460 lt!2287270 Nil!63460))))))

(declare-fun b!5753057 () Bool)

(declare-fun e!3535675 () Bool)

(declare-fun lt!2287530 () Regex!15761)

(assert (=> b!5753057 (= e!3535675 (isUnion!691 lt!2287530))))

(declare-fun b!5753058 () Bool)

(assert (=> b!5753058 (= e!3535678 (h!69907 (unfocusZipperList!1189 (Cons!63460 lt!2287270 Nil!63460))))))

(declare-fun e!3535674 () Bool)

(assert (=> d!1813154 e!3535674))

(declare-fun res!2428835 () Bool)

(assert (=> d!1813154 (=> (not res!2428835) (not e!3535674))))

(assert (=> d!1813154 (= res!2428835 (validRegex!7497 lt!2287530))))

(assert (=> d!1813154 (= lt!2287530 e!3535678)))

(declare-fun c!1016470 () Bool)

(declare-fun e!3535676 () Bool)

(assert (=> d!1813154 (= c!1016470 e!3535676)))

(declare-fun res!2428834 () Bool)

(assert (=> d!1813154 (=> (not res!2428834) (not e!3535676))))

(assert (=> d!1813154 (= res!2428834 ((_ is Cons!63459) (unfocusZipperList!1189 (Cons!63460 lt!2287270 Nil!63460))))))

(assert (=> d!1813154 (forall!14881 (unfocusZipperList!1189 (Cons!63460 lt!2287270 Nil!63460)) lambda!312196)))

(assert (=> d!1813154 (= (generalisedUnion!1624 (unfocusZipperList!1189 (Cons!63460 lt!2287270 Nil!63460))) lt!2287530)))

(declare-fun b!5753059 () Bool)

(declare-fun e!3535679 () Bool)

(assert (=> b!5753059 (= e!3535674 e!3535679)))

(declare-fun c!1016469 () Bool)

(assert (=> b!5753059 (= c!1016469 (isEmpty!35342 (unfocusZipperList!1189 (Cons!63460 lt!2287270 Nil!63460))))))

(declare-fun b!5753060 () Bool)

(assert (=> b!5753060 (= e!3535675 (= lt!2287530 (head!12167 (unfocusZipperList!1189 (Cons!63460 lt!2287270 Nil!63460)))))))

(declare-fun b!5753061 () Bool)

(assert (=> b!5753061 (= e!3535679 e!3535675)))

(declare-fun c!1016467 () Bool)

(assert (=> b!5753061 (= c!1016467 (isEmpty!35342 (tail!11262 (unfocusZipperList!1189 (Cons!63460 lt!2287270 Nil!63460)))))))

(declare-fun b!5753062 () Bool)

(assert (=> b!5753062 (= e!3535679 (isEmptyLang!1261 lt!2287530))))

(declare-fun b!5753063 () Bool)

(assert (=> b!5753063 (= e!3535677 EmptyLang!15761)))

(declare-fun b!5753064 () Bool)

(assert (=> b!5753064 (= e!3535676 (isEmpty!35342 (t!376913 (unfocusZipperList!1189 (Cons!63460 lt!2287270 Nil!63460)))))))

(declare-fun b!5753065 () Bool)

(assert (=> b!5753065 (= e!3535677 (Union!15761 (h!69907 (unfocusZipperList!1189 (Cons!63460 lt!2287270 Nil!63460))) (generalisedUnion!1624 (t!376913 (unfocusZipperList!1189 (Cons!63460 lt!2287270 Nil!63460))))))))

(assert (= (and d!1813154 res!2428834) b!5753064))

(assert (= (and d!1813154 c!1016470) b!5753058))

(assert (= (and d!1813154 (not c!1016470)) b!5753056))

(assert (= (and b!5753056 c!1016468) b!5753065))

(assert (= (and b!5753056 (not c!1016468)) b!5753063))

(assert (= (and d!1813154 res!2428835) b!5753059))

(assert (= (and b!5753059 c!1016469) b!5753062))

(assert (= (and b!5753059 (not c!1016469)) b!5753061))

(assert (= (and b!5753061 c!1016467) b!5753060))

(assert (= (and b!5753061 (not c!1016467)) b!5753057))

(assert (=> b!5753060 m!6701658))

(declare-fun m!6702820 () Bool)

(assert (=> b!5753060 m!6702820))

(assert (=> b!5753061 m!6701658))

(declare-fun m!6702822 () Bool)

(assert (=> b!5753061 m!6702822))

(assert (=> b!5753061 m!6702822))

(declare-fun m!6702824 () Bool)

(assert (=> b!5753061 m!6702824))

(declare-fun m!6702826 () Bool)

(assert (=> b!5753064 m!6702826))

(declare-fun m!6702828 () Bool)

(assert (=> d!1813154 m!6702828))

(assert (=> d!1813154 m!6701658))

(declare-fun m!6702830 () Bool)

(assert (=> d!1813154 m!6702830))

(declare-fun m!6702832 () Bool)

(assert (=> b!5753062 m!6702832))

(declare-fun m!6702834 () Bool)

(assert (=> b!5753065 m!6702834))

(declare-fun m!6702836 () Bool)

(assert (=> b!5753057 m!6702836))

(assert (=> b!5753059 m!6701658))

(declare-fun m!6702838 () Bool)

(assert (=> b!5753059 m!6702838))

(assert (=> d!1812658 d!1813154))

(declare-fun bs!1347820 () Bool)

(declare-fun d!1813162 () Bool)

(assert (= bs!1347820 (and d!1813162 d!1812772)))

(declare-fun lambda!312198 () Int)

(assert (=> bs!1347820 (= lambda!312198 lambda!312139)))

(declare-fun bs!1347821 () Bool)

(assert (= bs!1347821 (and d!1813162 b!5753004)))

(assert (=> bs!1347821 (not (= lambda!312198 lambda!312191))))

(declare-fun bs!1347822 () Bool)

(assert (= bs!1347822 (and d!1813162 d!1812856)))

(assert (=> bs!1347822 (= lambda!312198 lambda!312147)))

(declare-fun bs!1347823 () Bool)

(assert (= bs!1347823 (and d!1813162 d!1812708)))

(assert (=> bs!1347823 (= lambda!312198 lambda!312135)))

(declare-fun bs!1347824 () Bool)

(assert (= bs!1347824 (and d!1813162 d!1812602)))

(assert (=> bs!1347824 (= lambda!312198 lambda!312094)))

(declare-fun bs!1347825 () Bool)

(assert (= bs!1347825 (and d!1813162 d!1812782)))

(assert (=> bs!1347825 (= lambda!312198 lambda!312141)))

(declare-fun bs!1347826 () Bool)

(assert (= bs!1347826 (and d!1813162 d!1812938)))

(assert (=> bs!1347826 (= lambda!312198 lambda!312156)))

(declare-fun bs!1347827 () Bool)

(assert (= bs!1347827 (and d!1813162 d!1812616)))

(assert (=> bs!1347827 (= lambda!312198 lambda!312104)))

(declare-fun bs!1347828 () Bool)

(assert (= bs!1347828 (and d!1813162 b!5753002)))

(assert (=> bs!1347828 (not (= lambda!312198 lambda!312190))))

(declare-fun bs!1347829 () Bool)

(assert (= bs!1347829 (and d!1813162 b!5752733)))

(assert (=> bs!1347829 (not (= lambda!312198 lambda!312166))))

(declare-fun bs!1347830 () Bool)

(assert (= bs!1347830 (and d!1813162 d!1813116)))

(assert (=> bs!1347830 (= lambda!312198 lambda!312187)))

(declare-fun bs!1347831 () Bool)

(assert (= bs!1347831 (and d!1813162 d!1812604)))

(assert (=> bs!1347831 (= lambda!312198 lambda!312097)))

(declare-fun bs!1347832 () Bool)

(assert (= bs!1347832 (and d!1813162 b!5752735)))

(assert (=> bs!1347832 (not (= lambda!312198 lambda!312167))))

(declare-fun bs!1347833 () Bool)

(assert (= bs!1347833 (and d!1813162 d!1812606)))

(assert (=> bs!1347833 (= lambda!312198 lambda!312098)))

(declare-fun bs!1347834 () Bool)

(assert (= bs!1347834 (and d!1813162 d!1812600)))

(assert (=> bs!1347834 (= lambda!312198 lambda!312091)))

(declare-fun bs!1347835 () Bool)

(assert (= bs!1347835 (and d!1813162 d!1812886)))

(assert (=> bs!1347835 (= lambda!312198 lambda!312150)))

(declare-fun bs!1347836 () Bool)

(assert (= bs!1347836 (and d!1813162 d!1813118)))

(assert (=> bs!1347836 (= lambda!312198 lambda!312188)))

(declare-fun bs!1347837 () Bool)

(assert (= bs!1347837 (and d!1813162 d!1813154)))

(assert (=> bs!1347837 (= lambda!312198 lambda!312196)))

(declare-fun bs!1347838 () Bool)

(assert (= bs!1347838 (and d!1813162 d!1813034)))

(assert (=> bs!1347838 (= lambda!312198 lambda!312177)))

(declare-fun bs!1347839 () Bool)

(assert (= bs!1347839 (and d!1813162 d!1812888)))

(assert (=> bs!1347839 (= lambda!312198 lambda!312151)))

(declare-fun lt!2287531 () List!63583)

(assert (=> d!1813162 (forall!14881 lt!2287531 lambda!312198)))

(declare-fun e!3535680 () List!63583)

(assert (=> d!1813162 (= lt!2287531 e!3535680)))

(declare-fun c!1016471 () Bool)

(assert (=> d!1813162 (= c!1016471 ((_ is Cons!63460) (Cons!63460 lt!2287270 Nil!63460)))))

(assert (=> d!1813162 (= (unfocusZipperList!1189 (Cons!63460 lt!2287270 Nil!63460)) lt!2287531)))

(declare-fun b!5753066 () Bool)

(assert (=> b!5753066 (= e!3535680 (Cons!63459 (generalisedConcat!1376 (exprs!5645 (h!69908 (Cons!63460 lt!2287270 Nil!63460)))) (unfocusZipperList!1189 (t!376914 (Cons!63460 lt!2287270 Nil!63460)))))))

(declare-fun b!5753067 () Bool)

(assert (=> b!5753067 (= e!3535680 Nil!63459)))

(assert (= (and d!1813162 c!1016471) b!5753066))

(assert (= (and d!1813162 (not c!1016471)) b!5753067))

(declare-fun m!6702840 () Bool)

(assert (=> d!1813162 m!6702840))

(declare-fun m!6702842 () Bool)

(assert (=> b!5753066 m!6702842))

(declare-fun m!6702844 () Bool)

(assert (=> b!5753066 m!6702844))

(assert (=> d!1812658 d!1813162))

(declare-fun d!1813164 () Bool)

(assert (=> d!1813164 (= (flatMap!1374 lt!2287280 lambda!312101) (choose!43607 lt!2287280 lambda!312101))))

(declare-fun bs!1347840 () Bool)

(assert (= bs!1347840 d!1813164))

(declare-fun m!6702846 () Bool)

(assert (=> bs!1347840 m!6702846))

(assert (=> d!1812614 d!1813164))

(declare-fun d!1813166 () Bool)

(assert (=> d!1813166 (= (Exists!2861 lambda!312112) (choose!43609 lambda!312112))))

(declare-fun bs!1347841 () Bool)

(assert (= bs!1347841 d!1813166))

(declare-fun m!6702848 () Bool)

(assert (=> bs!1347841 m!6702848))

(assert (=> d!1812626 d!1813166))

(declare-fun d!1813168 () Bool)

(assert (=> d!1813168 (= (Exists!2861 lambda!312113) (choose!43609 lambda!312113))))

(declare-fun bs!1347842 () Bool)

(assert (= bs!1347842 d!1813168))

(declare-fun m!6702850 () Bool)

(assert (=> bs!1347842 m!6702850))

(assert (=> d!1812626 d!1813168))

(declare-fun bs!1347850 () Bool)

(declare-fun d!1813170 () Bool)

(assert (= bs!1347850 (and d!1813170 b!5752219)))

(declare-fun lambda!312204 () Int)

(assert (=> bs!1347850 (not (= lambda!312204 lambda!312143))))

(declare-fun bs!1347851 () Bool)

(assert (= bs!1347851 (and d!1813170 b!5752768)))

(assert (=> bs!1347851 (not (= lambda!312204 lambda!312175))))

(declare-fun bs!1347852 () Bool)

(assert (= bs!1347852 (and d!1813170 b!5752582)))

(assert (=> bs!1347852 (not (= lambda!312204 lambda!312154))))

(declare-fun bs!1347853 () Bool)

(assert (= bs!1347853 (and d!1813170 b!5752579)))

(assert (=> bs!1347853 (not (= lambda!312204 lambda!312153))))

(declare-fun bs!1347854 () Bool)

(assert (= bs!1347854 (and d!1813170 b!5751872)))

(assert (=> bs!1347854 (not (= lambda!312204 lambda!312134))))

(declare-fun bs!1347855 () Bool)

(assert (= bs!1347855 (and d!1813170 b!5751783)))

(assert (=> bs!1347855 (not (= lambda!312204 lambda!312119))))

(declare-fun bs!1347856 () Bool)

(assert (= bs!1347856 (and d!1813170 d!1812626)))

(assert (=> bs!1347856 (not (= lambda!312204 lambda!312113))))

(declare-fun bs!1347857 () Bool)

(assert (= bs!1347857 (and d!1813170 b!5752090)))

(assert (=> bs!1347857 (not (= lambda!312204 lambda!312137))))

(declare-fun bs!1347858 () Bool)

(assert (= bs!1347858 (and d!1813170 b!5750992)))

(assert (=> bs!1347858 (= lambda!312204 lambda!312039)))

(assert (=> bs!1347858 (not (= lambda!312204 lambda!312040))))

(declare-fun bs!1347859 () Bool)

(assert (= bs!1347859 (and d!1813170 b!5751869)))

(assert (=> bs!1347859 (not (= lambda!312204 lambda!312133))))

(declare-fun bs!1347860 () Bool)

(assert (= bs!1347860 (and d!1813170 b!5752087)))

(assert (=> bs!1347860 (not (= lambda!312204 lambda!312136))))

(declare-fun bs!1347861 () Bool)

(assert (= bs!1347861 (and d!1813170 d!1813038)))

(assert (=> bs!1347861 (= lambda!312204 lambda!312183)))

(assert (=> bs!1347856 (= lambda!312204 lambda!312112)))

(declare-fun bs!1347862 () Bool)

(assert (= bs!1347862 (and d!1813170 d!1812624)))

(assert (=> bs!1347862 (= lambda!312204 lambda!312107)))

(declare-fun bs!1347863 () Bool)

(assert (= bs!1347863 (and d!1813170 b!5751786)))

(assert (=> bs!1347863 (not (= lambda!312204 lambda!312120))))

(declare-fun bs!1347864 () Bool)

(assert (= bs!1347864 (and d!1813170 b!5752216)))

(assert (=> bs!1347864 (not (= lambda!312204 lambda!312142))))

(declare-fun bs!1347865 () Bool)

(assert (= bs!1347865 (and d!1813170 b!5752765)))

(assert (=> bs!1347865 (not (= lambda!312204 lambda!312174))))

(assert (=> d!1813170 true))

(assert (=> d!1813170 true))

(assert (=> d!1813170 true))

(declare-fun lambda!312205 () Int)

(assert (=> bs!1347850 (= (and (= (regOne!32034 r!7292) (regOne!32034 (regOne!32035 r!7292))) (= (regTwo!32034 r!7292) (regTwo!32034 (regOne!32035 r!7292)))) (= lambda!312205 lambda!312143))))

(assert (=> bs!1347851 (= (and (= (regOne!32034 r!7292) (regOne!32034 (regTwo!32035 r!7292))) (= (regTwo!32034 r!7292) (regTwo!32034 (regTwo!32035 r!7292)))) (= lambda!312205 lambda!312175))))

(assert (=> bs!1347852 (= (and (= (regOne!32034 r!7292) (regOne!32034 (regTwo!32035 lt!2287258))) (= (regTwo!32034 r!7292) (regTwo!32034 (regTwo!32035 lt!2287258)))) (= lambda!312205 lambda!312154))))

(assert (=> bs!1347853 (not (= lambda!312205 lambda!312153))))

(assert (=> bs!1347854 (= (and (= (regOne!32034 r!7292) (regOne!32034 lt!2287258)) (= (regTwo!32034 r!7292) (regTwo!32034 lt!2287258))) (= lambda!312205 lambda!312134))))

(assert (=> bs!1347855 (not (= lambda!312205 lambda!312119))))

(assert (=> bs!1347857 (= (and (= (regOne!32034 r!7292) (regOne!32034 (regOne!32035 lt!2287258))) (= (regTwo!32034 r!7292) (regTwo!32034 (regOne!32035 lt!2287258)))) (= lambda!312205 lambda!312137))))

(assert (=> bs!1347858 (not (= lambda!312205 lambda!312039))))

(assert (=> bs!1347858 (= lambda!312205 lambda!312040)))

(assert (=> bs!1347859 (not (= lambda!312205 lambda!312133))))

(assert (=> bs!1347860 (not (= lambda!312205 lambda!312136))))

(assert (=> bs!1347861 (not (= lambda!312205 lambda!312183))))

(declare-fun bs!1347866 () Bool)

(assert (= bs!1347866 d!1813170))

(assert (=> bs!1347866 (not (= lambda!312205 lambda!312204))))

(assert (=> bs!1347856 (= lambda!312205 lambda!312113)))

(assert (=> bs!1347856 (not (= lambda!312205 lambda!312112))))

(assert (=> bs!1347862 (not (= lambda!312205 lambda!312107))))

(assert (=> bs!1347863 (= lambda!312205 lambda!312120)))

(assert (=> bs!1347864 (not (= lambda!312205 lambda!312142))))

(assert (=> bs!1347865 (not (= lambda!312205 lambda!312174))))

(assert (=> d!1813170 true))

(assert (=> d!1813170 true))

(assert (=> d!1813170 true))

(assert (=> d!1813170 (= (Exists!2861 lambda!312204) (Exists!2861 lambda!312205))))

(assert (=> d!1813170 true))

(declare-fun _$90!1492 () Unit!156576)

(assert (=> d!1813170 (= (choose!43611 (regOne!32034 r!7292) (regTwo!32034 r!7292) s!2326) _$90!1492)))

(declare-fun m!6702868 () Bool)

(assert (=> bs!1347866 m!6702868))

(declare-fun m!6702870 () Bool)

(assert (=> bs!1347866 m!6702870))

(assert (=> d!1812626 d!1813170))

(assert (=> d!1812626 d!1812792))

(assert (=> b!5751854 d!1812748))

(declare-fun d!1813180 () Bool)

(declare-fun c!1016475 () Bool)

(assert (=> d!1813180 (= c!1016475 (and ((_ is ElementMatch!15761) (ite c!1016098 (regOne!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))))) (= (c!1015817 (ite c!1016098 (regOne!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))))) (h!69906 s!2326))))))

(declare-fun e!3535697 () (InoxSet Context!10290))

(assert (=> d!1813180 (= (derivationStepZipperDown!1103 (ite c!1016098 (regOne!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343))))) (ite c!1016098 lt!2287276 (Context!10291 call!440887)) (h!69906 s!2326)) e!3535697)))

(declare-fun b!5753089 () Bool)

(declare-fun e!3535695 () Bool)

(assert (=> b!5753089 (= e!3535695 (nullable!5793 (regOne!32034 (ite c!1016098 (regOne!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343))))))))))

(declare-fun call!441184 () List!63583)

(declare-fun c!1016476 () Bool)

(declare-fun c!1016477 () Bool)

(declare-fun bm!441179 () Bool)

(assert (=> bm!441179 (= call!441184 ($colon$colon!1760 (exprs!5645 (ite c!1016098 lt!2287276 (Context!10291 call!440887))) (ite (or c!1016476 c!1016477) (regTwo!32034 (ite c!1016098 (regOne!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))))) (ite c!1016098 (regOne!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343))))))))))

(declare-fun bm!441180 () Bool)

(declare-fun call!441187 () (InoxSet Context!10290))

(declare-fun call!441186 () (InoxSet Context!10290))

(assert (=> bm!441180 (= call!441187 call!441186)))

(declare-fun bm!441181 () Bool)

(declare-fun call!441188 () (InoxSet Context!10290))

(assert (=> bm!441181 (= call!441188 call!441187)))

(declare-fun call!441185 () (InoxSet Context!10290))

(declare-fun bm!441182 () Bool)

(declare-fun c!1016479 () Bool)

(assert (=> bm!441182 (= call!441185 (derivationStepZipperDown!1103 (ite c!1016479 (regOne!32035 (ite c!1016098 (regOne!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))))) (regOne!32034 (ite c!1016098 (regOne!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343))))))) (ite c!1016479 (ite c!1016098 lt!2287276 (Context!10291 call!440887)) (Context!10291 call!441184)) (h!69906 s!2326)))))

(declare-fun b!5753090 () Bool)

(declare-fun e!3535700 () (InoxSet Context!10290))

(assert (=> b!5753090 (= e!3535700 ((as const (Array Context!10290 Bool)) false))))

(declare-fun bm!441183 () Bool)

(declare-fun call!441189 () List!63583)

(assert (=> bm!441183 (= call!441189 call!441184)))

(declare-fun b!5753091 () Bool)

(declare-fun c!1016478 () Bool)

(assert (=> b!5753091 (= c!1016478 ((_ is Star!15761) (ite c!1016098 (regOne!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))))))))

(declare-fun e!3535698 () (InoxSet Context!10290))

(assert (=> b!5753091 (= e!3535698 e!3535700)))

(declare-fun b!5753092 () Bool)

(declare-fun e!3535699 () (InoxSet Context!10290))

(assert (=> b!5753092 (= e!3535699 ((_ map or) call!441185 call!441186))))

(declare-fun b!5753093 () Bool)

(assert (=> b!5753093 (= e!3535700 call!441188)))

(declare-fun b!5753094 () Bool)

(assert (=> b!5753094 (= e!3535697 e!3535699)))

(assert (=> b!5753094 (= c!1016479 ((_ is Union!15761) (ite c!1016098 (regOne!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))))))))

(declare-fun b!5753095 () Bool)

(assert (=> b!5753095 (= e!3535697 (store ((as const (Array Context!10290 Bool)) false) (ite c!1016098 lt!2287276 (Context!10291 call!440887)) true))))

(declare-fun b!5753096 () Bool)

(assert (=> b!5753096 (= c!1016476 e!3535695)))

(declare-fun res!2428851 () Bool)

(assert (=> b!5753096 (=> (not res!2428851) (not e!3535695))))

(assert (=> b!5753096 (= res!2428851 ((_ is Concat!24606) (ite c!1016098 (regOne!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))))))))

(declare-fun e!3535696 () (InoxSet Context!10290))

(assert (=> b!5753096 (= e!3535699 e!3535696)))

(declare-fun b!5753097 () Bool)

(assert (=> b!5753097 (= e!3535698 call!441188)))

(declare-fun bm!441184 () Bool)

(assert (=> bm!441184 (= call!441186 (derivationStepZipperDown!1103 (ite c!1016479 (regTwo!32035 (ite c!1016098 (regOne!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))))) (ite c!1016476 (regTwo!32034 (ite c!1016098 (regOne!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))))) (ite c!1016477 (regOne!32034 (ite c!1016098 (regOne!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))))) (reg!16090 (ite c!1016098 (regOne!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343))))))))) (ite (or c!1016479 c!1016476) (ite c!1016098 lt!2287276 (Context!10291 call!440887)) (Context!10291 call!441189)) (h!69906 s!2326)))))

(declare-fun b!5753098 () Bool)

(assert (=> b!5753098 (= e!3535696 ((_ map or) call!441185 call!441187))))

(declare-fun b!5753099 () Bool)

(assert (=> b!5753099 (= e!3535696 e!3535698)))

(assert (=> b!5753099 (= c!1016477 ((_ is Concat!24606) (ite c!1016098 (regOne!32035 (h!69907 (exprs!5645 (h!69908 zl!343)))) (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343)))))))))

(assert (= (and d!1813180 c!1016475) b!5753095))

(assert (= (and d!1813180 (not c!1016475)) b!5753094))

(assert (= (and b!5753094 c!1016479) b!5753092))

(assert (= (and b!5753094 (not c!1016479)) b!5753096))

(assert (= (and b!5753096 res!2428851) b!5753089))

(assert (= (and b!5753096 c!1016476) b!5753098))

(assert (= (and b!5753096 (not c!1016476)) b!5753099))

(assert (= (and b!5753099 c!1016477) b!5753097))

(assert (= (and b!5753099 (not c!1016477)) b!5753091))

(assert (= (and b!5753091 c!1016478) b!5753093))

(assert (= (and b!5753091 (not c!1016478)) b!5753090))

(assert (= (or b!5753097 b!5753093) bm!441183))

(assert (= (or b!5753097 b!5753093) bm!441181))

(assert (= (or b!5753098 bm!441183) bm!441179))

(assert (= (or b!5753098 bm!441181) bm!441180))

(assert (= (or b!5753092 bm!441180) bm!441184))

(assert (= (or b!5753092 b!5753098) bm!441182))

(declare-fun m!6702872 () Bool)

(assert (=> bm!441179 m!6702872))

(declare-fun m!6702874 () Bool)

(assert (=> b!5753095 m!6702874))

(declare-fun m!6702876 () Bool)

(assert (=> b!5753089 m!6702876))

(declare-fun m!6702878 () Bool)

(assert (=> bm!441182 m!6702878))

(declare-fun m!6702880 () Bool)

(assert (=> bm!441184 m!6702880))

(assert (=> bm!440885 d!1813180))

(assert (=> bm!440877 d!1812730))

(assert (=> d!1812670 d!1812730))

(assert (=> d!1812670 d!1812914))

(declare-fun d!1813182 () Bool)

(assert (=> d!1813182 (= (nullable!5793 (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343))))) (nullableFct!1838 (regOne!32034 (h!69907 (exprs!5645 (h!69908 zl!343))))))))

(declare-fun bs!1347867 () Bool)

(assert (= bs!1347867 d!1813182))

(declare-fun m!6702882 () Bool)

(assert (=> bs!1347867 m!6702882))

(assert (=> b!5751889 d!1813182))

(declare-fun d!1813184 () Bool)

(declare-fun c!1016480 () Bool)

(assert (=> d!1813184 (= c!1016480 (isEmpty!35345 (tail!11261 (t!376912 s!2326))))))

(declare-fun e!3535701 () Bool)

(assert (=> d!1813184 (= (matchZipper!1899 (derivationStepZipper!1844 ((_ map or) lt!2287262 lt!2287265) (head!12166 (t!376912 s!2326))) (tail!11261 (t!376912 s!2326))) e!3535701)))

(declare-fun b!5753100 () Bool)

(assert (=> b!5753100 (= e!3535701 (nullableZipper!1692 (derivationStepZipper!1844 ((_ map or) lt!2287262 lt!2287265) (head!12166 (t!376912 s!2326)))))))

(declare-fun b!5753101 () Bool)

(assert (=> b!5753101 (= e!3535701 (matchZipper!1899 (derivationStepZipper!1844 (derivationStepZipper!1844 ((_ map or) lt!2287262 lt!2287265) (head!12166 (t!376912 s!2326))) (head!12166 (tail!11261 (t!376912 s!2326)))) (tail!11261 (tail!11261 (t!376912 s!2326)))))))

(assert (= (and d!1813184 c!1016480) b!5753100))

(assert (= (and d!1813184 (not c!1016480)) b!5753101))

(assert (=> d!1813184 m!6701600))

(assert (=> d!1813184 m!6701922))

(assert (=> b!5753100 m!6701668))

(declare-fun m!6702884 () Bool)

(assert (=> b!5753100 m!6702884))

(assert (=> b!5753101 m!6701600))

(assert (=> b!5753101 m!6701926))

(assert (=> b!5753101 m!6701668))

(assert (=> b!5753101 m!6701926))

(declare-fun m!6702886 () Bool)

(assert (=> b!5753101 m!6702886))

(assert (=> b!5753101 m!6701600))

(assert (=> b!5753101 m!6701930))

(assert (=> b!5753101 m!6702886))

(assert (=> b!5753101 m!6701930))

(declare-fun m!6702888 () Bool)

(assert (=> b!5753101 m!6702888))

(assert (=> b!5751836 d!1813184))

(declare-fun bs!1347868 () Bool)

(declare-fun d!1813186 () Bool)

(assert (= bs!1347868 (and d!1813186 d!1812910)))

(declare-fun lambda!312206 () Int)

(assert (=> bs!1347868 (= (= (head!12166 (t!376912 s!2326)) (head!12166 s!2326)) (= lambda!312206 lambda!312152))))

(declare-fun bs!1347869 () Bool)

(assert (= bs!1347869 (and d!1813186 b!5750980)))

(assert (=> bs!1347869 (= (= (head!12166 (t!376912 s!2326)) (h!69906 s!2326)) (= lambda!312206 lambda!312041))))

(declare-fun bs!1347870 () Bool)

(assert (= bs!1347870 (and d!1813186 d!1812946)))

(assert (=> bs!1347870 (= (= (head!12166 (t!376912 s!2326)) (head!12166 s!2326)) (= lambda!312206 lambda!312157))))

(declare-fun bs!1347871 () Bool)

(assert (= bs!1347871 (and d!1813186 d!1812954)))

(assert (=> bs!1347871 (= lambda!312206 lambda!312158)))

(declare-fun bs!1347872 () Bool)

(assert (= bs!1347872 (and d!1813186 d!1812642)))

(assert (=> bs!1347872 (= (= (head!12166 (t!376912 s!2326)) (h!69906 s!2326)) (= lambda!312206 lambda!312114))))

(declare-fun bs!1347873 () Bool)

(assert (= bs!1347873 (and d!1813186 d!1812614)))

(assert (=> bs!1347873 (= (= (head!12166 (t!376912 s!2326)) (h!69906 s!2326)) (= lambda!312206 lambda!312101))))

(declare-fun bs!1347874 () Bool)

(assert (= bs!1347874 (and d!1813186 d!1812778)))

(assert (=> bs!1347874 (= lambda!312206 lambda!312140)))

(declare-fun bs!1347875 () Bool)

(assert (= bs!1347875 (and d!1813186 d!1813092)))

(assert (=> bs!1347875 (= (= (head!12166 (t!376912 s!2326)) (head!12166 s!2326)) (= lambda!312206 lambda!312185))))

(declare-fun bs!1347876 () Bool)

(assert (= bs!1347876 (and d!1813186 d!1812766)))

(assert (=> bs!1347876 (= lambda!312206 lambda!312138)))

(assert (=> d!1813186 true))

(assert (=> d!1813186 (= (derivationStepZipper!1844 ((_ map or) lt!2287262 lt!2287265) (head!12166 (t!376912 s!2326))) (flatMap!1374 ((_ map or) lt!2287262 lt!2287265) lambda!312206))))

(declare-fun bs!1347877 () Bool)

(assert (= bs!1347877 d!1813186))

(declare-fun m!6702890 () Bool)

(assert (=> bs!1347877 m!6702890))

(assert (=> b!5751836 d!1813186))

(assert (=> b!5751836 d!1812768))

(assert (=> b!5751836 d!1812770))

(assert (=> d!1812712 d!1812730))

(assert (=> d!1812712 d!1812878))

(assert (=> bm!440919 d!1812730))

(declare-fun b!5753103 () Bool)

(declare-fun e!3535702 () Bool)

(declare-fun tp!1589893 () Bool)

(declare-fun tp!1589896 () Bool)

(assert (=> b!5753103 (= e!3535702 (and tp!1589893 tp!1589896))))

(declare-fun b!5753105 () Bool)

(declare-fun tp!1589895 () Bool)

(declare-fun tp!1589897 () Bool)

(assert (=> b!5753105 (= e!3535702 (and tp!1589895 tp!1589897))))

(assert (=> b!5752039 (= tp!1589828 e!3535702)))

(declare-fun b!5753104 () Bool)

(declare-fun tp!1589894 () Bool)

(assert (=> b!5753104 (= e!3535702 tp!1589894)))

(declare-fun b!5753102 () Bool)

(assert (=> b!5753102 (= e!3535702 tp_is_empty!40775)))

(assert (= (and b!5752039 ((_ is ElementMatch!15761) (regOne!32034 (regOne!32034 r!7292)))) b!5753102))

(assert (= (and b!5752039 ((_ is Concat!24606) (regOne!32034 (regOne!32034 r!7292)))) b!5753103))

(assert (= (and b!5752039 ((_ is Star!15761) (regOne!32034 (regOne!32034 r!7292)))) b!5753104))

(assert (= (and b!5752039 ((_ is Union!15761) (regOne!32034 (regOne!32034 r!7292)))) b!5753105))

(declare-fun b!5753107 () Bool)

(declare-fun e!3535703 () Bool)

(declare-fun tp!1589898 () Bool)

(declare-fun tp!1589901 () Bool)

(assert (=> b!5753107 (= e!3535703 (and tp!1589898 tp!1589901))))

(declare-fun b!5753109 () Bool)

(declare-fun tp!1589900 () Bool)

(declare-fun tp!1589902 () Bool)

(assert (=> b!5753109 (= e!3535703 (and tp!1589900 tp!1589902))))

(assert (=> b!5752039 (= tp!1589831 e!3535703)))

(declare-fun b!5753108 () Bool)

(declare-fun tp!1589899 () Bool)

(assert (=> b!5753108 (= e!3535703 tp!1589899)))

(declare-fun b!5753106 () Bool)

(assert (=> b!5753106 (= e!3535703 tp_is_empty!40775)))

(assert (= (and b!5752039 ((_ is ElementMatch!15761) (regTwo!32034 (regOne!32034 r!7292)))) b!5753106))

(assert (= (and b!5752039 ((_ is Concat!24606) (regTwo!32034 (regOne!32034 r!7292)))) b!5753107))

(assert (= (and b!5752039 ((_ is Star!15761) (regTwo!32034 (regOne!32034 r!7292)))) b!5753108))

(assert (= (and b!5752039 ((_ is Union!15761) (regTwo!32034 (regOne!32034 r!7292)))) b!5753109))

(declare-fun b!5753111 () Bool)

(declare-fun e!3535704 () Bool)

(declare-fun tp!1589903 () Bool)

(declare-fun tp!1589906 () Bool)

(assert (=> b!5753111 (= e!3535704 (and tp!1589903 tp!1589906))))

(declare-fun b!5753113 () Bool)

(declare-fun tp!1589905 () Bool)

(declare-fun tp!1589907 () Bool)

(assert (=> b!5753113 (= e!3535704 (and tp!1589905 tp!1589907))))

(assert (=> b!5752071 (= tp!1589864 e!3535704)))

(declare-fun b!5753112 () Bool)

(declare-fun tp!1589904 () Bool)

(assert (=> b!5753112 (= e!3535704 tp!1589904)))

(declare-fun b!5753110 () Bool)

(assert (=> b!5753110 (= e!3535704 tp_is_empty!40775)))

(assert (= (and b!5752071 ((_ is ElementMatch!15761) (regOne!32035 (reg!16090 r!7292)))) b!5753110))

(assert (= (and b!5752071 ((_ is Concat!24606) (regOne!32035 (reg!16090 r!7292)))) b!5753111))

(assert (= (and b!5752071 ((_ is Star!15761) (regOne!32035 (reg!16090 r!7292)))) b!5753112))

(assert (= (and b!5752071 ((_ is Union!15761) (regOne!32035 (reg!16090 r!7292)))) b!5753113))

(declare-fun b!5753115 () Bool)

(declare-fun e!3535705 () Bool)

(declare-fun tp!1589908 () Bool)

(declare-fun tp!1589911 () Bool)

(assert (=> b!5753115 (= e!3535705 (and tp!1589908 tp!1589911))))

(declare-fun b!5753117 () Bool)

(declare-fun tp!1589910 () Bool)

(declare-fun tp!1589912 () Bool)

(assert (=> b!5753117 (= e!3535705 (and tp!1589910 tp!1589912))))

(assert (=> b!5752071 (= tp!1589866 e!3535705)))

(declare-fun b!5753116 () Bool)

(declare-fun tp!1589909 () Bool)

(assert (=> b!5753116 (= e!3535705 tp!1589909)))

(declare-fun b!5753114 () Bool)

(assert (=> b!5753114 (= e!3535705 tp_is_empty!40775)))

(assert (= (and b!5752071 ((_ is ElementMatch!15761) (regTwo!32035 (reg!16090 r!7292)))) b!5753114))

(assert (= (and b!5752071 ((_ is Concat!24606) (regTwo!32035 (reg!16090 r!7292)))) b!5753115))

(assert (= (and b!5752071 ((_ is Star!15761) (regTwo!32035 (reg!16090 r!7292)))) b!5753116))

(assert (= (and b!5752071 ((_ is Union!15761) (regTwo!32035 (reg!16090 r!7292)))) b!5753117))

(declare-fun b!5753123 () Bool)

(declare-fun e!3535708 () Bool)

(declare-fun tp!1589913 () Bool)

(declare-fun tp!1589916 () Bool)

(assert (=> b!5753123 (= e!3535708 (and tp!1589913 tp!1589916))))

(declare-fun b!5753125 () Bool)

(declare-fun tp!1589915 () Bool)

(declare-fun tp!1589917 () Bool)

(assert (=> b!5753125 (= e!3535708 (and tp!1589915 tp!1589917))))

(assert (=> b!5752062 (= tp!1589853 e!3535708)))

(declare-fun b!5753124 () Bool)

(declare-fun tp!1589914 () Bool)

(assert (=> b!5753124 (= e!3535708 tp!1589914)))

(declare-fun b!5753122 () Bool)

(assert (=> b!5753122 (= e!3535708 tp_is_empty!40775)))

(assert (= (and b!5752062 ((_ is ElementMatch!15761) (reg!16090 (regOne!32035 r!7292)))) b!5753122))

(assert (= (and b!5752062 ((_ is Concat!24606) (reg!16090 (regOne!32035 r!7292)))) b!5753123))

(assert (= (and b!5752062 ((_ is Star!15761) (reg!16090 (regOne!32035 r!7292)))) b!5753124))

(assert (= (and b!5752062 ((_ is Union!15761) (reg!16090 (regOne!32035 r!7292)))) b!5753125))

(declare-fun b!5753127 () Bool)

(declare-fun e!3535709 () Bool)

(declare-fun tp!1589918 () Bool)

(declare-fun tp!1589921 () Bool)

(assert (=> b!5753127 (= e!3535709 (and tp!1589918 tp!1589921))))

(declare-fun b!5753129 () Bool)

(declare-fun tp!1589920 () Bool)

(declare-fun tp!1589922 () Bool)

(assert (=> b!5753129 (= e!3535709 (and tp!1589920 tp!1589922))))

(assert (=> b!5752063 (= tp!1589854 e!3535709)))

(declare-fun b!5753128 () Bool)

(declare-fun tp!1589919 () Bool)

(assert (=> b!5753128 (= e!3535709 tp!1589919)))

(declare-fun b!5753126 () Bool)

(assert (=> b!5753126 (= e!3535709 tp_is_empty!40775)))

(assert (= (and b!5752063 ((_ is ElementMatch!15761) (regOne!32035 (regOne!32035 r!7292)))) b!5753126))

(assert (= (and b!5752063 ((_ is Concat!24606) (regOne!32035 (regOne!32035 r!7292)))) b!5753127))

(assert (= (and b!5752063 ((_ is Star!15761) (regOne!32035 (regOne!32035 r!7292)))) b!5753128))

(assert (= (and b!5752063 ((_ is Union!15761) (regOne!32035 (regOne!32035 r!7292)))) b!5753129))

(declare-fun b!5753131 () Bool)

(declare-fun e!3535710 () Bool)

(declare-fun tp!1589923 () Bool)

(declare-fun tp!1589926 () Bool)

(assert (=> b!5753131 (= e!3535710 (and tp!1589923 tp!1589926))))

(declare-fun b!5753133 () Bool)

(declare-fun tp!1589925 () Bool)

(declare-fun tp!1589927 () Bool)

(assert (=> b!5753133 (= e!3535710 (and tp!1589925 tp!1589927))))

(assert (=> b!5752063 (= tp!1589856 e!3535710)))

(declare-fun b!5753132 () Bool)

(declare-fun tp!1589924 () Bool)

(assert (=> b!5753132 (= e!3535710 tp!1589924)))

(declare-fun b!5753130 () Bool)

(assert (=> b!5753130 (= e!3535710 tp_is_empty!40775)))

(assert (= (and b!5752063 ((_ is ElementMatch!15761) (regTwo!32035 (regOne!32035 r!7292)))) b!5753130))

(assert (= (and b!5752063 ((_ is Concat!24606) (regTwo!32035 (regOne!32035 r!7292)))) b!5753131))

(assert (= (and b!5752063 ((_ is Star!15761) (regTwo!32035 (regOne!32035 r!7292)))) b!5753132))

(assert (= (and b!5752063 ((_ is Union!15761) (regTwo!32035 (regOne!32035 r!7292)))) b!5753133))

(declare-fun condSetEmpty!38624 () Bool)

(assert (=> setNonEmpty!38613 (= condSetEmpty!38624 (= setRest!38613 ((as const (Array Context!10290 Bool)) false)))))

(declare-fun setRes!38624 () Bool)

(assert (=> setNonEmpty!38613 (= tp!1589843 setRes!38624)))

(declare-fun setIsEmpty!38624 () Bool)

(assert (=> setIsEmpty!38624 setRes!38624))

(declare-fun tp!1589929 () Bool)

(declare-fun setNonEmpty!38624 () Bool)

(declare-fun setElem!38624 () Context!10290)

(declare-fun e!3535711 () Bool)

(assert (=> setNonEmpty!38624 (= setRes!38624 (and tp!1589929 (inv!82649 setElem!38624) e!3535711))))

(declare-fun setRest!38624 () (InoxSet Context!10290))

(assert (=> setNonEmpty!38624 (= setRest!38613 ((_ map or) (store ((as const (Array Context!10290 Bool)) false) setElem!38624 true) setRest!38624))))

(declare-fun b!5753134 () Bool)

(declare-fun tp!1589928 () Bool)

(assert (=> b!5753134 (= e!3535711 tp!1589928)))

(assert (= (and setNonEmpty!38613 condSetEmpty!38624) setIsEmpty!38624))

(assert (= (and setNonEmpty!38613 (not condSetEmpty!38624)) setNonEmpty!38624))

(assert (= setNonEmpty!38624 b!5753134))

(declare-fun m!6702892 () Bool)

(assert (=> setNonEmpty!38624 m!6702892))

(declare-fun b!5753135 () Bool)

(declare-fun e!3535712 () Bool)

(declare-fun tp!1589930 () Bool)

(declare-fun tp!1589931 () Bool)

(assert (=> b!5753135 (= e!3535712 (and tp!1589930 tp!1589931))))

(assert (=> b!5752050 (= tp!1589842 e!3535712)))

(assert (= (and b!5752050 ((_ is Cons!63459) (exprs!5645 setElem!38613))) b!5753135))

(declare-fun b!5753137 () Bool)

(declare-fun e!3535713 () Bool)

(declare-fun tp!1589932 () Bool)

(declare-fun tp!1589935 () Bool)

(assert (=> b!5753137 (= e!3535713 (and tp!1589932 tp!1589935))))

(declare-fun b!5753139 () Bool)

(declare-fun tp!1589934 () Bool)

(declare-fun tp!1589936 () Bool)

(assert (=> b!5753139 (= e!3535713 (and tp!1589934 tp!1589936))))

(assert (=> b!5752069 (= tp!1589862 e!3535713)))

(declare-fun b!5753138 () Bool)

(declare-fun tp!1589933 () Bool)

(assert (=> b!5753138 (= e!3535713 tp!1589933)))

(declare-fun b!5753136 () Bool)

(assert (=> b!5753136 (= e!3535713 tp_is_empty!40775)))

(assert (= (and b!5752069 ((_ is ElementMatch!15761) (regOne!32034 (reg!16090 r!7292)))) b!5753136))

(assert (= (and b!5752069 ((_ is Concat!24606) (regOne!32034 (reg!16090 r!7292)))) b!5753137))

(assert (= (and b!5752069 ((_ is Star!15761) (regOne!32034 (reg!16090 r!7292)))) b!5753138))

(assert (= (and b!5752069 ((_ is Union!15761) (regOne!32034 (reg!16090 r!7292)))) b!5753139))

(declare-fun b!5753141 () Bool)

(declare-fun e!3535714 () Bool)

(declare-fun tp!1589937 () Bool)

(declare-fun tp!1589940 () Bool)

(assert (=> b!5753141 (= e!3535714 (and tp!1589937 tp!1589940))))

(declare-fun b!5753143 () Bool)

(declare-fun tp!1589939 () Bool)

(declare-fun tp!1589941 () Bool)

(assert (=> b!5753143 (= e!3535714 (and tp!1589939 tp!1589941))))

(assert (=> b!5752069 (= tp!1589865 e!3535714)))

(declare-fun b!5753142 () Bool)

(declare-fun tp!1589938 () Bool)

(assert (=> b!5753142 (= e!3535714 tp!1589938)))

(declare-fun b!5753140 () Bool)

(assert (=> b!5753140 (= e!3535714 tp_is_empty!40775)))

(assert (= (and b!5752069 ((_ is ElementMatch!15761) (regTwo!32034 (reg!16090 r!7292)))) b!5753140))

(assert (= (and b!5752069 ((_ is Concat!24606) (regTwo!32034 (reg!16090 r!7292)))) b!5753141))

(assert (= (and b!5752069 ((_ is Star!15761) (regTwo!32034 (reg!16090 r!7292)))) b!5753142))

(assert (= (and b!5752069 ((_ is Union!15761) (regTwo!32034 (reg!16090 r!7292)))) b!5753143))

(declare-fun b!5753147 () Bool)

(declare-fun e!3535717 () Bool)

(declare-fun tp!1589942 () Bool)

(declare-fun tp!1589945 () Bool)

(assert (=> b!5753147 (= e!3535717 (and tp!1589942 tp!1589945))))

(declare-fun b!5753149 () Bool)

(declare-fun tp!1589944 () Bool)

(declare-fun tp!1589946 () Bool)

(assert (=> b!5753149 (= e!3535717 (and tp!1589944 tp!1589946))))

(assert (=> b!5752040 (= tp!1589829 e!3535717)))

(declare-fun b!5753148 () Bool)

(declare-fun tp!1589943 () Bool)

(assert (=> b!5753148 (= e!3535717 tp!1589943)))

(declare-fun b!5753146 () Bool)

(assert (=> b!5753146 (= e!3535717 tp_is_empty!40775)))

(assert (= (and b!5752040 ((_ is ElementMatch!15761) (reg!16090 (regOne!32034 r!7292)))) b!5753146))

(assert (= (and b!5752040 ((_ is Concat!24606) (reg!16090 (regOne!32034 r!7292)))) b!5753147))

(assert (= (and b!5752040 ((_ is Star!15761) (reg!16090 (regOne!32034 r!7292)))) b!5753148))

(assert (= (and b!5752040 ((_ is Union!15761) (reg!16090 (regOne!32034 r!7292)))) b!5753149))

(declare-fun b!5753151 () Bool)

(declare-fun e!3535718 () Bool)

(declare-fun tp!1589947 () Bool)

(declare-fun tp!1589950 () Bool)

(assert (=> b!5753151 (= e!3535718 (and tp!1589947 tp!1589950))))

(declare-fun b!5753153 () Bool)

(declare-fun tp!1589949 () Bool)

(declare-fun tp!1589951 () Bool)

(assert (=> b!5753153 (= e!3535718 (and tp!1589949 tp!1589951))))

(assert (=> b!5752041 (= tp!1589830 e!3535718)))

(declare-fun b!5753152 () Bool)

(declare-fun tp!1589948 () Bool)

(assert (=> b!5753152 (= e!3535718 tp!1589948)))

(declare-fun b!5753150 () Bool)

(assert (=> b!5753150 (= e!3535718 tp_is_empty!40775)))

(assert (= (and b!5752041 ((_ is ElementMatch!15761) (regOne!32035 (regOne!32034 r!7292)))) b!5753150))

(assert (= (and b!5752041 ((_ is Concat!24606) (regOne!32035 (regOne!32034 r!7292)))) b!5753151))

(assert (= (and b!5752041 ((_ is Star!15761) (regOne!32035 (regOne!32034 r!7292)))) b!5753152))

(assert (= (and b!5752041 ((_ is Union!15761) (regOne!32035 (regOne!32034 r!7292)))) b!5753153))

(declare-fun b!5753155 () Bool)

(declare-fun e!3535719 () Bool)

(declare-fun tp!1589952 () Bool)

(declare-fun tp!1589955 () Bool)

(assert (=> b!5753155 (= e!3535719 (and tp!1589952 tp!1589955))))

(declare-fun b!5753157 () Bool)

(declare-fun tp!1589954 () Bool)

(declare-fun tp!1589956 () Bool)

(assert (=> b!5753157 (= e!3535719 (and tp!1589954 tp!1589956))))

(assert (=> b!5752041 (= tp!1589832 e!3535719)))

(declare-fun b!5753156 () Bool)

(declare-fun tp!1589953 () Bool)

(assert (=> b!5753156 (= e!3535719 tp!1589953)))

(declare-fun b!5753154 () Bool)

(assert (=> b!5753154 (= e!3535719 tp_is_empty!40775)))

(assert (= (and b!5752041 ((_ is ElementMatch!15761) (regTwo!32035 (regOne!32034 r!7292)))) b!5753154))

(assert (= (and b!5752041 ((_ is Concat!24606) (regTwo!32035 (regOne!32034 r!7292)))) b!5753155))

(assert (= (and b!5752041 ((_ is Star!15761) (regTwo!32035 (regOne!32034 r!7292)))) b!5753156))

(assert (= (and b!5752041 ((_ is Union!15761) (regTwo!32035 (regOne!32034 r!7292)))) b!5753157))

(declare-fun b!5753159 () Bool)

(declare-fun e!3535720 () Bool)

(declare-fun tp!1589957 () Bool)

(declare-fun tp!1589960 () Bool)

(assert (=> b!5753159 (= e!3535720 (and tp!1589957 tp!1589960))))

(declare-fun b!5753161 () Bool)

(declare-fun tp!1589959 () Bool)

(declare-fun tp!1589961 () Bool)

(assert (=> b!5753161 (= e!3535720 (and tp!1589959 tp!1589961))))

(assert (=> b!5752061 (= tp!1589852 e!3535720)))

(declare-fun b!5753160 () Bool)

(declare-fun tp!1589958 () Bool)

(assert (=> b!5753160 (= e!3535720 tp!1589958)))

(declare-fun b!5753158 () Bool)

(assert (=> b!5753158 (= e!3535720 tp_is_empty!40775)))

(assert (= (and b!5752061 ((_ is ElementMatch!15761) (regOne!32034 (regOne!32035 r!7292)))) b!5753158))

(assert (= (and b!5752061 ((_ is Concat!24606) (regOne!32034 (regOne!32035 r!7292)))) b!5753159))

(assert (= (and b!5752061 ((_ is Star!15761) (regOne!32034 (regOne!32035 r!7292)))) b!5753160))

(assert (= (and b!5752061 ((_ is Union!15761) (regOne!32034 (regOne!32035 r!7292)))) b!5753161))

(declare-fun b!5753163 () Bool)

(declare-fun e!3535721 () Bool)

(declare-fun tp!1589962 () Bool)

(declare-fun tp!1589965 () Bool)

(assert (=> b!5753163 (= e!3535721 (and tp!1589962 tp!1589965))))

(declare-fun b!5753165 () Bool)

(declare-fun tp!1589964 () Bool)

(declare-fun tp!1589966 () Bool)

(assert (=> b!5753165 (= e!3535721 (and tp!1589964 tp!1589966))))

(assert (=> b!5752061 (= tp!1589855 e!3535721)))

(declare-fun b!5753164 () Bool)

(declare-fun tp!1589963 () Bool)

(assert (=> b!5753164 (= e!3535721 tp!1589963)))

(declare-fun b!5753162 () Bool)

(assert (=> b!5753162 (= e!3535721 tp_is_empty!40775)))

(assert (= (and b!5752061 ((_ is ElementMatch!15761) (regTwo!32034 (regOne!32035 r!7292)))) b!5753162))

(assert (= (and b!5752061 ((_ is Concat!24606) (regTwo!32034 (regOne!32035 r!7292)))) b!5753163))

(assert (= (and b!5752061 ((_ is Star!15761) (regTwo!32034 (regOne!32035 r!7292)))) b!5753164))

(assert (= (and b!5752061 ((_ is Union!15761) (regTwo!32034 (regOne!32035 r!7292)))) b!5753165))

(declare-fun b!5753167 () Bool)

(declare-fun e!3535722 () Bool)

(declare-fun tp!1589967 () Bool)

(declare-fun tp!1589970 () Bool)

(assert (=> b!5753167 (= e!3535722 (and tp!1589967 tp!1589970))))

(declare-fun b!5753169 () Bool)

(declare-fun tp!1589969 () Bool)

(declare-fun tp!1589971 () Bool)

(assert (=> b!5753169 (= e!3535722 (and tp!1589969 tp!1589971))))

(assert (=> b!5752070 (= tp!1589863 e!3535722)))

(declare-fun b!5753168 () Bool)

(declare-fun tp!1589968 () Bool)

(assert (=> b!5753168 (= e!3535722 tp!1589968)))

(declare-fun b!5753166 () Bool)

(assert (=> b!5753166 (= e!3535722 tp_is_empty!40775)))

(assert (= (and b!5752070 ((_ is ElementMatch!15761) (reg!16090 (reg!16090 r!7292)))) b!5753166))

(assert (= (and b!5752070 ((_ is Concat!24606) (reg!16090 (reg!16090 r!7292)))) b!5753167))

(assert (= (and b!5752070 ((_ is Star!15761) (reg!16090 (reg!16090 r!7292)))) b!5753168))

(assert (= (and b!5752070 ((_ is Union!15761) (reg!16090 (reg!16090 r!7292)))) b!5753169))

(declare-fun b!5753171 () Bool)

(declare-fun e!3535723 () Bool)

(declare-fun tp!1589972 () Bool)

(declare-fun tp!1589975 () Bool)

(assert (=> b!5753171 (= e!3535723 (and tp!1589972 tp!1589975))))

(declare-fun b!5753173 () Bool)

(declare-fun tp!1589974 () Bool)

(declare-fun tp!1589976 () Bool)

(assert (=> b!5753173 (= e!3535723 (and tp!1589974 tp!1589976))))

(assert (=> b!5752027 (= tp!1589816 e!3535723)))

(declare-fun b!5753172 () Bool)

(declare-fun tp!1589973 () Bool)

(assert (=> b!5753172 (= e!3535723 tp!1589973)))

(declare-fun b!5753170 () Bool)

(assert (=> b!5753170 (= e!3535723 tp_is_empty!40775)))

(assert (= (and b!5752027 ((_ is ElementMatch!15761) (h!69907 (exprs!5645 (h!69908 zl!343))))) b!5753170))

(assert (= (and b!5752027 ((_ is Concat!24606) (h!69907 (exprs!5645 (h!69908 zl!343))))) b!5753171))

(assert (= (and b!5752027 ((_ is Star!15761) (h!69907 (exprs!5645 (h!69908 zl!343))))) b!5753172))

(assert (= (and b!5752027 ((_ is Union!15761) (h!69907 (exprs!5645 (h!69908 zl!343))))) b!5753173))

(declare-fun b!5753174 () Bool)

(declare-fun e!3535724 () Bool)

(declare-fun tp!1589977 () Bool)

(declare-fun tp!1589978 () Bool)

(assert (=> b!5753174 (= e!3535724 (and tp!1589977 tp!1589978))))

(assert (=> b!5752027 (= tp!1589817 e!3535724)))

(assert (= (and b!5752027 ((_ is Cons!63459) (t!376913 (exprs!5645 (h!69908 zl!343))))) b!5753174))

(declare-fun b!5753176 () Bool)

(declare-fun e!3535725 () Bool)

(declare-fun tp!1589979 () Bool)

(declare-fun tp!1589982 () Bool)

(assert (=> b!5753176 (= e!3535725 (and tp!1589979 tp!1589982))))

(declare-fun b!5753178 () Bool)

(declare-fun tp!1589981 () Bool)

(declare-fun tp!1589983 () Bool)

(assert (=> b!5753178 (= e!3535725 (and tp!1589981 tp!1589983))))

(assert (=> b!5752043 (= tp!1589833 e!3535725)))

(declare-fun b!5753177 () Bool)

(declare-fun tp!1589980 () Bool)

(assert (=> b!5753177 (= e!3535725 tp!1589980)))

(declare-fun b!5753175 () Bool)

(assert (=> b!5753175 (= e!3535725 tp_is_empty!40775)))

(assert (= (and b!5752043 ((_ is ElementMatch!15761) (regOne!32034 (regTwo!32034 r!7292)))) b!5753175))

(assert (= (and b!5752043 ((_ is Concat!24606) (regOne!32034 (regTwo!32034 r!7292)))) b!5753176))

(assert (= (and b!5752043 ((_ is Star!15761) (regOne!32034 (regTwo!32034 r!7292)))) b!5753177))

(assert (= (and b!5752043 ((_ is Union!15761) (regOne!32034 (regTwo!32034 r!7292)))) b!5753178))

(declare-fun b!5753180 () Bool)

(declare-fun e!3535726 () Bool)

(declare-fun tp!1589984 () Bool)

(declare-fun tp!1589987 () Bool)

(assert (=> b!5753180 (= e!3535726 (and tp!1589984 tp!1589987))))

(declare-fun b!5753182 () Bool)

(declare-fun tp!1589986 () Bool)

(declare-fun tp!1589988 () Bool)

(assert (=> b!5753182 (= e!3535726 (and tp!1589986 tp!1589988))))

(assert (=> b!5752043 (= tp!1589836 e!3535726)))

(declare-fun b!5753181 () Bool)

(declare-fun tp!1589985 () Bool)

(assert (=> b!5753181 (= e!3535726 tp!1589985)))

(declare-fun b!5753179 () Bool)

(assert (=> b!5753179 (= e!3535726 tp_is_empty!40775)))

(assert (= (and b!5752043 ((_ is ElementMatch!15761) (regTwo!32034 (regTwo!32034 r!7292)))) b!5753179))

(assert (= (and b!5752043 ((_ is Concat!24606) (regTwo!32034 (regTwo!32034 r!7292)))) b!5753180))

(assert (= (and b!5752043 ((_ is Star!15761) (regTwo!32034 (regTwo!32034 r!7292)))) b!5753181))

(assert (= (and b!5752043 ((_ is Union!15761) (regTwo!32034 (regTwo!32034 r!7292)))) b!5753182))

(declare-fun b!5753183 () Bool)

(declare-fun e!3535727 () Bool)

(declare-fun tp!1589989 () Bool)

(declare-fun tp!1589990 () Bool)

(assert (=> b!5753183 (= e!3535727 (and tp!1589989 tp!1589990))))

(assert (=> b!5752059 (= tp!1589850 e!3535727)))

(assert (= (and b!5752059 ((_ is Cons!63459) (exprs!5645 (h!69908 (t!376914 zl!343))))) b!5753183))

(declare-fun b!5753185 () Bool)

(declare-fun e!3535728 () Bool)

(declare-fun tp!1589991 () Bool)

(declare-fun tp!1589994 () Bool)

(assert (=> b!5753185 (= e!3535728 (and tp!1589991 tp!1589994))))

(declare-fun b!5753187 () Bool)

(declare-fun tp!1589993 () Bool)

(declare-fun tp!1589995 () Bool)

(assert (=> b!5753187 (= e!3535728 (and tp!1589993 tp!1589995))))

(assert (=> b!5752066 (= tp!1589858 e!3535728)))

(declare-fun b!5753186 () Bool)

(declare-fun tp!1589992 () Bool)

(assert (=> b!5753186 (= e!3535728 tp!1589992)))

(declare-fun b!5753184 () Bool)

(assert (=> b!5753184 (= e!3535728 tp_is_empty!40775)))

(assert (= (and b!5752066 ((_ is ElementMatch!15761) (reg!16090 (regTwo!32035 r!7292)))) b!5753184))

(assert (= (and b!5752066 ((_ is Concat!24606) (reg!16090 (regTwo!32035 r!7292)))) b!5753185))

(assert (= (and b!5752066 ((_ is Star!15761) (reg!16090 (regTwo!32035 r!7292)))) b!5753186))

(assert (= (and b!5752066 ((_ is Union!15761) (reg!16090 (regTwo!32035 r!7292)))) b!5753187))

(declare-fun b!5753189 () Bool)

(declare-fun e!3535729 () Bool)

(declare-fun tp!1589996 () Bool)

(declare-fun tp!1589999 () Bool)

(assert (=> b!5753189 (= e!3535729 (and tp!1589996 tp!1589999))))

(declare-fun b!5753191 () Bool)

(declare-fun tp!1589998 () Bool)

(declare-fun tp!1590000 () Bool)

(assert (=> b!5753191 (= e!3535729 (and tp!1589998 tp!1590000))))

(assert (=> b!5752067 (= tp!1589859 e!3535729)))

(declare-fun b!5753190 () Bool)

(declare-fun tp!1589997 () Bool)

(assert (=> b!5753190 (= e!3535729 tp!1589997)))

(declare-fun b!5753188 () Bool)

(assert (=> b!5753188 (= e!3535729 tp_is_empty!40775)))

(assert (= (and b!5752067 ((_ is ElementMatch!15761) (regOne!32035 (regTwo!32035 r!7292)))) b!5753188))

(assert (= (and b!5752067 ((_ is Concat!24606) (regOne!32035 (regTwo!32035 r!7292)))) b!5753189))

(assert (= (and b!5752067 ((_ is Star!15761) (regOne!32035 (regTwo!32035 r!7292)))) b!5753190))

(assert (= (and b!5752067 ((_ is Union!15761) (regOne!32035 (regTwo!32035 r!7292)))) b!5753191))

(declare-fun b!5753193 () Bool)

(declare-fun e!3535730 () Bool)

(declare-fun tp!1590001 () Bool)

(declare-fun tp!1590004 () Bool)

(assert (=> b!5753193 (= e!3535730 (and tp!1590001 tp!1590004))))

(declare-fun b!5753195 () Bool)

(declare-fun tp!1590003 () Bool)

(declare-fun tp!1590005 () Bool)

(assert (=> b!5753195 (= e!3535730 (and tp!1590003 tp!1590005))))

(assert (=> b!5752067 (= tp!1589861 e!3535730)))

(declare-fun b!5753194 () Bool)

(declare-fun tp!1590002 () Bool)

(assert (=> b!5753194 (= e!3535730 tp!1590002)))

(declare-fun b!5753192 () Bool)

(assert (=> b!5753192 (= e!3535730 tp_is_empty!40775)))

(assert (= (and b!5752067 ((_ is ElementMatch!15761) (regTwo!32035 (regTwo!32035 r!7292)))) b!5753192))

(assert (= (and b!5752067 ((_ is Concat!24606) (regTwo!32035 (regTwo!32035 r!7292)))) b!5753193))

(assert (= (and b!5752067 ((_ is Star!15761) (regTwo!32035 (regTwo!32035 r!7292)))) b!5753194))

(assert (= (and b!5752067 ((_ is Union!15761) (regTwo!32035 (regTwo!32035 r!7292)))) b!5753195))

(declare-fun b!5753197 () Bool)

(declare-fun e!3535733 () Bool)

(declare-fun tp!1590006 () Bool)

(declare-fun tp!1590009 () Bool)

(assert (=> b!5753197 (= e!3535733 (and tp!1590006 tp!1590009))))

(declare-fun b!5753200 () Bool)

(declare-fun tp!1590008 () Bool)

(declare-fun tp!1590010 () Bool)

(assert (=> b!5753200 (= e!3535733 (and tp!1590008 tp!1590010))))

(assert (=> b!5752051 (= tp!1589844 e!3535733)))

(declare-fun b!5753198 () Bool)

(declare-fun tp!1590007 () Bool)

(assert (=> b!5753198 (= e!3535733 tp!1590007)))

(declare-fun b!5753196 () Bool)

(assert (=> b!5753196 (= e!3535733 tp_is_empty!40775)))

(assert (= (and b!5752051 ((_ is ElementMatch!15761) (h!69907 (exprs!5645 setElem!38607)))) b!5753196))

(assert (= (and b!5752051 ((_ is Concat!24606) (h!69907 (exprs!5645 setElem!38607)))) b!5753197))

(assert (= (and b!5752051 ((_ is Star!15761) (h!69907 (exprs!5645 setElem!38607)))) b!5753198))

(assert (= (and b!5752051 ((_ is Union!15761) (h!69907 (exprs!5645 setElem!38607)))) b!5753200))

(declare-fun b!5753203 () Bool)

(declare-fun e!3535734 () Bool)

(declare-fun tp!1590011 () Bool)

(declare-fun tp!1590012 () Bool)

(assert (=> b!5753203 (= e!3535734 (and tp!1590011 tp!1590012))))

(assert (=> b!5752051 (= tp!1589845 e!3535734)))

(assert (= (and b!5752051 ((_ is Cons!63459) (t!376913 (exprs!5645 setElem!38607)))) b!5753203))

(declare-fun b!5753207 () Bool)

(declare-fun e!3535735 () Bool)

(declare-fun tp!1590013 () Bool)

(declare-fun tp!1590016 () Bool)

(assert (=> b!5753207 (= e!3535735 (and tp!1590013 tp!1590016))))

(declare-fun b!5753209 () Bool)

(declare-fun tp!1590015 () Bool)

(declare-fun tp!1590017 () Bool)

(assert (=> b!5753209 (= e!3535735 (and tp!1590015 tp!1590017))))

(assert (=> b!5752044 (= tp!1589834 e!3535735)))

(declare-fun b!5753208 () Bool)

(declare-fun tp!1590014 () Bool)

(assert (=> b!5753208 (= e!3535735 tp!1590014)))

(declare-fun b!5753206 () Bool)

(assert (=> b!5753206 (= e!3535735 tp_is_empty!40775)))

(assert (= (and b!5752044 ((_ is ElementMatch!15761) (reg!16090 (regTwo!32034 r!7292)))) b!5753206))

(assert (= (and b!5752044 ((_ is Concat!24606) (reg!16090 (regTwo!32034 r!7292)))) b!5753207))

(assert (= (and b!5752044 ((_ is Star!15761) (reg!16090 (regTwo!32034 r!7292)))) b!5753208))

(assert (= (and b!5752044 ((_ is Union!15761) (reg!16090 (regTwo!32034 r!7292)))) b!5753209))

(declare-fun b!5753210 () Bool)

(declare-fun e!3535736 () Bool)

(declare-fun tp!1590018 () Bool)

(assert (=> b!5753210 (= e!3535736 (and tp_is_empty!40775 tp!1590018))))

(assert (=> b!5752022 (= tp!1589811 e!3535736)))

(assert (= (and b!5752022 ((_ is Cons!63458) (t!376912 (t!376912 s!2326)))) b!5753210))

(declare-fun b!5753212 () Bool)

(declare-fun e!3535737 () Bool)

(declare-fun tp!1590019 () Bool)

(declare-fun tp!1590022 () Bool)

(assert (=> b!5753212 (= e!3535737 (and tp!1590019 tp!1590022))))

(declare-fun b!5753214 () Bool)

(declare-fun tp!1590021 () Bool)

(declare-fun tp!1590023 () Bool)

(assert (=> b!5753214 (= e!3535737 (and tp!1590021 tp!1590023))))

(assert (=> b!5752045 (= tp!1589835 e!3535737)))

(declare-fun b!5753213 () Bool)

(declare-fun tp!1590020 () Bool)

(assert (=> b!5753213 (= e!3535737 tp!1590020)))

(declare-fun b!5753211 () Bool)

(assert (=> b!5753211 (= e!3535737 tp_is_empty!40775)))

(assert (= (and b!5752045 ((_ is ElementMatch!15761) (regOne!32035 (regTwo!32034 r!7292)))) b!5753211))

(assert (= (and b!5752045 ((_ is Concat!24606) (regOne!32035 (regTwo!32034 r!7292)))) b!5753212))

(assert (= (and b!5752045 ((_ is Star!15761) (regOne!32035 (regTwo!32034 r!7292)))) b!5753213))

(assert (= (and b!5752045 ((_ is Union!15761) (regOne!32035 (regTwo!32034 r!7292)))) b!5753214))

(declare-fun b!5753216 () Bool)

(declare-fun e!3535738 () Bool)

(declare-fun tp!1590024 () Bool)

(declare-fun tp!1590027 () Bool)

(assert (=> b!5753216 (= e!3535738 (and tp!1590024 tp!1590027))))

(declare-fun b!5753218 () Bool)

(declare-fun tp!1590026 () Bool)

(declare-fun tp!1590028 () Bool)

(assert (=> b!5753218 (= e!3535738 (and tp!1590026 tp!1590028))))

(assert (=> b!5752045 (= tp!1589837 e!3535738)))

(declare-fun b!5753217 () Bool)

(declare-fun tp!1590025 () Bool)

(assert (=> b!5753217 (= e!3535738 tp!1590025)))

(declare-fun b!5753215 () Bool)

(assert (=> b!5753215 (= e!3535738 tp_is_empty!40775)))

(assert (= (and b!5752045 ((_ is ElementMatch!15761) (regTwo!32035 (regTwo!32034 r!7292)))) b!5753215))

(assert (= (and b!5752045 ((_ is Concat!24606) (regTwo!32035 (regTwo!32034 r!7292)))) b!5753216))

(assert (= (and b!5752045 ((_ is Star!15761) (regTwo!32035 (regTwo!32034 r!7292)))) b!5753217))

(assert (= (and b!5752045 ((_ is Union!15761) (regTwo!32035 (regTwo!32034 r!7292)))) b!5753218))

(declare-fun b!5753220 () Bool)

(declare-fun e!3535739 () Bool)

(declare-fun tp!1590029 () Bool)

(declare-fun tp!1590032 () Bool)

(assert (=> b!5753220 (= e!3535739 (and tp!1590029 tp!1590032))))

(declare-fun b!5753222 () Bool)

(declare-fun tp!1590031 () Bool)

(declare-fun tp!1590033 () Bool)

(assert (=> b!5753222 (= e!3535739 (and tp!1590031 tp!1590033))))

(assert (=> b!5752065 (= tp!1589857 e!3535739)))

(declare-fun b!5753221 () Bool)

(declare-fun tp!1590030 () Bool)

(assert (=> b!5753221 (= e!3535739 tp!1590030)))

(declare-fun b!5753219 () Bool)

(assert (=> b!5753219 (= e!3535739 tp_is_empty!40775)))

(assert (= (and b!5752065 ((_ is ElementMatch!15761) (regOne!32034 (regTwo!32035 r!7292)))) b!5753219))

(assert (= (and b!5752065 ((_ is Concat!24606) (regOne!32034 (regTwo!32035 r!7292)))) b!5753220))

(assert (= (and b!5752065 ((_ is Star!15761) (regOne!32034 (regTwo!32035 r!7292)))) b!5753221))

(assert (= (and b!5752065 ((_ is Union!15761) (regOne!32034 (regTwo!32035 r!7292)))) b!5753222))

(declare-fun b!5753224 () Bool)

(declare-fun e!3535740 () Bool)

(declare-fun tp!1590034 () Bool)

(declare-fun tp!1590037 () Bool)

(assert (=> b!5753224 (= e!3535740 (and tp!1590034 tp!1590037))))

(declare-fun b!5753226 () Bool)

(declare-fun tp!1590036 () Bool)

(declare-fun tp!1590038 () Bool)

(assert (=> b!5753226 (= e!3535740 (and tp!1590036 tp!1590038))))

(assert (=> b!5752065 (= tp!1589860 e!3535740)))

(declare-fun b!5753225 () Bool)

(declare-fun tp!1590035 () Bool)

(assert (=> b!5753225 (= e!3535740 tp!1590035)))

(declare-fun b!5753223 () Bool)

(assert (=> b!5753223 (= e!3535740 tp_is_empty!40775)))

(assert (= (and b!5752065 ((_ is ElementMatch!15761) (regTwo!32034 (regTwo!32035 r!7292)))) b!5753223))

(assert (= (and b!5752065 ((_ is Concat!24606) (regTwo!32034 (regTwo!32035 r!7292)))) b!5753224))

(assert (= (and b!5752065 ((_ is Star!15761) (regTwo!32034 (regTwo!32035 r!7292)))) b!5753225))

(assert (= (and b!5752065 ((_ is Union!15761) (regTwo!32034 (regTwo!32035 r!7292)))) b!5753226))

(declare-fun b!5753228 () Bool)

(declare-fun e!3535742 () Bool)

(declare-fun tp!1590039 () Bool)

(assert (=> b!5753228 (= e!3535742 tp!1590039)))

(declare-fun b!5753227 () Bool)

(declare-fun tp!1590040 () Bool)

(declare-fun e!3535741 () Bool)

(assert (=> b!5753227 (= e!3535741 (and (inv!82649 (h!69908 (t!376914 (t!376914 zl!343)))) e!3535742 tp!1590040))))

(assert (=> b!5752058 (= tp!1589851 e!3535741)))

(assert (= b!5753227 b!5753228))

(assert (= (and b!5752058 ((_ is Cons!63460) (t!376914 (t!376914 zl!343)))) b!5753227))

(declare-fun m!6702894 () Bool)

(assert (=> b!5753227 m!6702894))

(declare-fun b_lambda!217303 () Bool)

(assert (= b_lambda!217281 (or b!5750980 b_lambda!217303)))

(assert (=> d!1812976 d!1812726))

(declare-fun b_lambda!217305 () Bool)

(assert (= b_lambda!217277 (or d!1812606 b_lambda!217305)))

(declare-fun bs!1347893 () Bool)

(declare-fun d!1813188 () Bool)

(assert (= bs!1347893 (and d!1813188 d!1812606)))

(assert (=> bs!1347893 (= (dynLambda!24839 lambda!312098 (h!69907 (exprs!5645 (h!69908 zl!343)))) (validRegex!7497 (h!69907 (exprs!5645 (h!69908 zl!343)))))))

(declare-fun m!6702896 () Bool)

(assert (=> bs!1347893 m!6702896))

(assert (=> b!5752476 d!1813188))

(declare-fun b_lambda!217307 () Bool)

(assert (= b_lambda!217271 (or d!1812616 b_lambda!217307)))

(declare-fun bs!1347894 () Bool)

(declare-fun d!1813190 () Bool)

(assert (= bs!1347894 (and d!1813190 d!1812616)))

(assert (=> bs!1347894 (= (dynLambda!24839 lambda!312104 (h!69907 (exprs!5645 (h!69908 zl!343)))) (validRegex!7497 (h!69907 (exprs!5645 (h!69908 zl!343)))))))

(assert (=> bs!1347894 m!6702896))

(assert (=> b!5752344 d!1813190))

(declare-fun b_lambda!217309 () Bool)

(assert (= b_lambda!217275 (or b!5750980 b_lambda!217309)))

(assert (=> d!1812870 d!1812720))

(declare-fun b_lambda!217311 () Bool)

(assert (= b_lambda!217265 (or d!1812604 b_lambda!217311)))

(declare-fun bs!1347895 () Bool)

(declare-fun d!1813192 () Bool)

(assert (= bs!1347895 (and d!1813192 d!1812604)))

(assert (=> bs!1347895 (= (dynLambda!24839 lambda!312097 (h!69907 lt!2287382)) (validRegex!7497 (h!69907 lt!2287382)))))

(declare-fun m!6702906 () Bool)

(assert (=> bs!1347895 m!6702906))

(assert (=> b!5752194 d!1813192))

(declare-fun b_lambda!217313 () Bool)

(assert (= b_lambda!217293 (or b!5750980 b_lambda!217313)))

(assert (=> d!1813062 d!1812722))

(declare-fun b_lambda!217315 () Bool)

(assert (= b_lambda!217295 (or b!5750980 b_lambda!217315)))

(assert (=> d!1813084 d!1812724))

(declare-fun b_lambda!217317 () Bool)

(assert (= b_lambda!217283 (or b!5751843 b_lambda!217317)))

(declare-fun bs!1347896 () Bool)

(declare-fun d!1813194 () Bool)

(assert (= bs!1347896 (and d!1813194 b!5751843)))

(assert (=> bs!1347896 (= (dynLambda!24838 lambda!312128 (h!69908 (t!376914 zl!343))) (>= lt!2287424 (contextDepth!132 (h!69908 (t!376914 zl!343)))))))

(assert (=> bs!1347896 m!6702516))

(assert (=> b!5752697 d!1813194))

(declare-fun b_lambda!217319 () Bool)

(assert (= b_lambda!217273 (or b!5751850 b_lambda!217319)))

(declare-fun bs!1347897 () Bool)

(declare-fun d!1813198 () Bool)

(assert (= bs!1347897 (and d!1813198 b!5751850)))

(assert (=> bs!1347897 (= (dynLambda!24838 lambda!312132 (h!69908 lt!2287267)) (>= lt!2287431 (contextDepth!132 (h!69908 lt!2287267))))))

(assert (=> bs!1347897 m!6701684))

(assert (=> b!5752443 d!1813198))

(declare-fun b_lambda!217321 () Bool)

(assert (= b_lambda!217263 (or b!5751845 b_lambda!217321)))

(declare-fun bs!1347898 () Bool)

(declare-fun d!1813200 () Bool)

(assert (= bs!1347898 (and d!1813200 b!5751845)))

(assert (=> bs!1347898 (= (dynLambda!24838 lambda!312129 (h!69908 zl!343)) (>= lt!2287427 (contextDepth!132 (h!69908 zl!343))))))

(assert (=> bs!1347898 m!6701672))

(assert (=> b!5752107 d!1813200))

(declare-fun b_lambda!217323 () Bool)

(assert (= b_lambda!217297 (or b!5750980 b_lambda!217323)))

(assert (=> d!1813122 d!1812718))

(declare-fun b_lambda!217325 () Bool)

(assert (= b_lambda!217279 (or d!1812708 b_lambda!217325)))

(declare-fun bs!1347899 () Bool)

(declare-fun d!1813202 () Bool)

(assert (= bs!1347899 (and d!1813202 d!1812708)))

(assert (=> bs!1347899 (= (dynLambda!24839 lambda!312135 (h!69907 (t!376913 (exprs!5645 (h!69908 zl!343))))) (validRegex!7497 (h!69907 (t!376913 (exprs!5645 (h!69908 zl!343))))))))

(declare-fun m!6702912 () Bool)

(assert (=> bs!1347899 m!6702912))

(assert (=> b!5752601 d!1813202))

(declare-fun b_lambda!217327 () Bool)

(assert (= b_lambda!217267 (or d!1812600 b_lambda!217327)))

(declare-fun bs!1347901 () Bool)

(declare-fun d!1813204 () Bool)

(assert (= bs!1347901 (and d!1813204 d!1812600)))

(assert (=> bs!1347901 (= (dynLambda!24839 lambda!312091 (h!69907 (exprs!5645 setElem!38607))) (validRegex!7497 (h!69907 (exprs!5645 setElem!38607))))))

(declare-fun m!6702914 () Bool)

(assert (=> bs!1347901 m!6702914))

(assert (=> b!5752267 d!1813204))

(declare-fun b_lambda!217329 () Bool)

(assert (= b_lambda!217269 (or d!1812602 b_lambda!217329)))

(declare-fun bs!1347903 () Bool)

(declare-fun d!1813206 () Bool)

(assert (= bs!1347903 (and d!1813206 d!1812602)))

(assert (=> bs!1347903 (= (dynLambda!24839 lambda!312094 (h!69907 (unfocusZipperList!1189 zl!343))) (validRegex!7497 (h!69907 (unfocusZipperList!1189 zl!343))))))

(declare-fun m!6702916 () Bool)

(assert (=> bs!1347903 m!6702916))

(assert (=> b!5752302 d!1813206))

(declare-fun b_lambda!217331 () Bool)

(assert (= b_lambda!217299 (or b!5751848 b_lambda!217331)))

(declare-fun bs!1347904 () Bool)

(declare-fun d!1813208 () Bool)

(assert (= bs!1347904 (and d!1813208 b!5751848)))

(assert (=> bs!1347904 (= (dynLambda!24838 lambda!312131 (h!69908 (t!376914 lt!2287267))) (>= lt!2287428 (contextDepth!132 (h!69908 (t!376914 lt!2287267)))))))

(assert (=> bs!1347904 m!6702782))

(assert (=> b!5753000 d!1813208))

(check-sat (not b!5752206) (not bm!441150) (not bm!440946) (not d!1812806) (not d!1812790) (not b!5752645) (not b!5753189) (not b!5752093) (not b!5752856) (not b!5753116) (not b!5752949) (not b!5752880) (not bm!440926) (not bm!440992) (not b!5752620) (not b!5752672) (not bm!440981) (not d!1812888) (not b!5752408) (not bm!440985) (not b!5752622) (not d!1813108) (not b!5752952) (not b!5752956) (not d!1812910) (not d!1813032) (not setNonEmpty!38618) (not bm!441035) (not bs!1347899) (not b!5752628) (not b!5752429) (not b!5752502) (not bm!441154) (not b!5752465) (not d!1812944) (not b!5753226) (not d!1812896) (not bm!441141) (not b!5753129) (not bm!441147) (not d!1812860) (not b!5752420) (not b!5752498) (not bm!441079) (not b!5753195) (not b!5753182) (not setNonEmpty!38623) (not d!1812908) (not b!5753113) (not b!5753015) (not bm!440993) (not d!1813170) (not b!5752303) (not b!5752855) (not b!5752444) (not bm!441015) (not bs!1347894) (not d!1813034) (not d!1813092) (not b!5753123) (not b!5752477) (not b!5753214) (not bm!440923) (not b!5753222) (not bm!441059) (not b!5753198) (not bm!440964) (not bm!441070) (not d!1812840) (not b!5753100) (not b!5752245) (not b!5752999) (not b_lambda!217321) (not d!1812898) (not b!5752128) (not b!5752268) (not b!5753186) (not bm!440934) (not d!1812848) (not b!5752642) (not bm!440998) (not b!5752220) (not bm!441130) (not bm!440920) (not b!5752172) (not b!5753149) (not b!5752769) (not b!5752203) (not b!5752504) (not d!1812870) (not b!5752450) (not bm!441153) (not b!5753002) tp_is_empty!40775 (not b!5752673) (not bm!441129) (not bm!441048) (not d!1813014) (not b!5752467) (not b!5752469) (not bm!441038) (not b!5753200) (not b!5752499) (not setNonEmpty!38616) (not b!5753185) (not b!5752423) (not b!5753115) (not d!1812852) (not d!1812804) (not d!1812946) (not b!5753194) (not bm!441118) (not b!5752516) (not d!1812952) (not d!1812776) (not bm!441084) (not b!5752646) (not b!5752413) (not b!5753168) (not b!5752418) (not b!5752415) (not b!5753143) (not b!5753004) (not b!5752072) (not b!5752350) (not bm!441077) (not b!5752247) (not bm!441042) (not b!5753221) (not b_lambda!217309) (not d!1813038) (not bm!441081) (not b!5752627) (not d!1812822) (not b!5752345) (not b!5752209) (not bs!1347896) (not d!1813168) (not b!5753161) (not bm!441013) (not b!5752349) (not bm!441002) (not d!1813162) (not d!1812950) (not b!5752998) (not b!5752733) (not bm!440963) (not b!5752432) (not bs!1347904) (not d!1813074) (not d!1812904) (not d!1812836) (not b!5752273) (not b!5753157) (not bm!441043) (not b!5753216) (not bm!440951) (not b!5753156) (not d!1812916) (not b!5753193) (not b!5752648) (not bm!441151) (not d!1813036) (not d!1812850) (not bm!441044) (not bm!441071) (not b!5752272) (not b!5752677) (not b!5752356) (not b!5753148) (not d!1812874) (not b!5753207) (not d!1812834) (not d!1813136) (not d!1812912) (not d!1813128) (not b!5752098) (not b!5752222) (not bm!440999) (not bm!441023) (not b!5753137) (not bm!441119) (not b!5752851) (not d!1812800) (not bm!440970) (not bm!441057) (not b!5753124) (not b!5752564) (not bm!440927) (not b_lambda!217315) (not bm!441179) (not b!5753066) (not b!5753174) (not b!5752412) (not b!5752583) (not bm!441074) (not b!5752308) (not b!5752678) (not b_lambda!217255) (not b!5752861) (not bm!441135) (not b!5752254) (not bm!441017) (not b!5752596) (not b!5753228) (not bm!441010) (not b!5752333) (not b!5753217) (not bm!441040) (not b!5752416) (not b!5753171) (not b!5752248) (not b!5753218) (not b!5753197) (not b!5753210) (not b!5753139) (not b!5753212) (not bs!1347893) (not b!5752438) (not b!5753176) (not b!5753133) (not b!5752570) (not b!5753060) (not b!5752433) (not bm!441083) (not bm!441012) (not bm!440931) (not b!5753138) (not d!1812766) (not bm!440961) (not d!1813116) (not d!1812744) (not bm!440989) (not b!5753132) (not b!5752585) (not b!5752113) (not bm!440971) (not b!5752210) (not b!5753059) (not b!5752659) (not b!5752496) (not b_lambda!217257) (not b_lambda!217307) (not d!1812882) (not b!5752278) (not b!5753065) (not bm!441068) (not b!5753135) (not bm!440932) (not d!1813070) (not b!5752119) (not bm!441076) (not d!1812856) (not bm!440953) (not b!5752459) (not bm!441018) (not bm!440925) (not bm!441045) (not b!5752470) (not b_lambda!217313) (not bm!441174) (not b!5753187) (not bm!441052) (not b!5753181) (not b!5752926) (not b!5752332) (not b!5753017) (not b!5753034) (not bm!441078) (not bm!441019) (not d!1813088) (not b!5752409) (not bm!440954) (not b!5753131) (not bm!441050) (not b!5753103) (not bm!441114) (not d!1812970) (not bm!440967) (not b!5753128) (not bm!440996) (not b_lambda!217303) (not bm!441116) (not d!1813062) (not b!5752505) (not b!5753147) (not b!5752468) (not bm!440974) (not b!5752519) (not d!1812832) (not b!5752198) (not bm!440980) (not b!5752251) (not b!5752339) (not bs!1347897) (not b!5752276) (not bm!441173) (not b!5753112) (not b!5753209) (not bm!441060) (not b_lambda!217327) (not b!5752859) (not d!1813118) (not b!5752197) (not b!5753208) (not d!1813080) (not bm!441064) (not b!5752189) (not bm!440960) (not b!5753105) (not b!5753104) (not b!5753051) (not b!5753190) (not b!5753224) (not bm!441138) (not bm!440975) (not bm!441149) (not d!1812754) (not b!5753125) (not b!5753142) (not d!1813154) (not b!5753108) (not b!5753191) (not d!1812746) (not b!5752121) (not b!5752474) (not b!5752421) (not d!1812956) (not b!5753227) (not b!5753107) (not b_lambda!217329) (not b!5753155) (not bm!441143) (not d!1812976) (not bm!441022) (not d!1812782) (not d!1812862) (not bm!441058) (not b_lambda!217317) (not bm!441103) (not b!5752954) (not b!5752262) (not d!1812802) (not b!5753064) (not b!5753062) (not b!5752169) (not bm!440962) (not bm!440955) (not d!1812886) (not b_lambda!217325) (not b!5752200) (not setNonEmpty!38624) (not bm!440984) (not b!5752473) (not b!5753167) (not b!5753203) (not bm!441182) (not b!5752122) (not b_lambda!217331) (not b!5753180) (not b!5752163) (not b!5752990) (not b!5752279) (not d!1813164) (not b!5752862) (not d!1812864) (not b!5752428) (not b!5753089) (not b!5752270) (not bs!1347898) (not b!5753183) (not d!1812788) (not d!1812954) (not b!5752735) (not bm!441036) (not bm!440947) (not b!5753035) (not b!5752472) (not bm!441026) (not d!1813184) (not d!1813166) (not b!5752176) (not b!5753160) (not b!5753164) (not b!5752204) (not b!5752565) (not bm!441122) (not b_lambda!217323) (not b!5753220) (not b!5753165) (not bm!441055) (not d!1812926) (not b!5752989) (not bs!1347903) (not b!5753153) (not b!5752698) (not b!5752091) (not bm!440948) (not b!5752108) (not bm!441102) (not b!5752941) (not b!5753061) (not b!5752253) (not d!1813182) (not d!1812778) (not d!1812868) (not bm!441184) (not b!5753109) (not bm!441020) (not b!5752951) (not bm!441082) (not b!5752355) (not bm!441032) (not b!5753225) (not b!5753178) (not b!5752207) (not b!5753101) (not bm!441117) (not b!5753213) (not bm!441006) (not b!5752166) (not bm!440986) (not b!5753057) (not b_lambda!217259) (not bs!1347895) (not bm!441037) (not bm!440982) (not setNonEmpty!38617) (not b!5752894) (not b!5752370) (not b!5752353) (not setNonEmpty!38622) (not b!5752347) (not d!1813122) (not bm!441003) (not bm!441168) (not b!5752425) (not b!5753152) (not b!5752205) (not b!5752771) (not b!5753177) (not b!5752290) (not bm!441027) (not b!5752625) (not b!5752430) (not d!1812880) (not d!1812876) (not bm!441144) (not bs!1347901) (not d!1812846) (not bm!440979) (not b!5752624) (not b!5752621) (not b!5753001) (not b!5752367) (not b!5752915) (not bm!440988) (not bm!440977) (not bm!441009) (not b!5752879) (not b!5753117) (not bm!441030) (not bm!440928) (not b!5752853) (not b_lambda!217319) (not b_lambda!217253) (not bm!441004) (not b!5752893) (not bm!440929) (not b!5752760) (not b!5753151) (not d!1812764) (not b!5752602) (not b!5752758) (not bm!441053) (not b!5752997) (not b!5752955) (not b!5752196) (not d!1813084) (not bm!441033) (not b!5753173) (not b!5752127) (not b!5752882) (not b!5752297) (not b!5753111) (not bm!441047) (not bm!441001) (not b_lambda!217305) (not b!5752371) (not b!5752591) (not b!5752950) (not b!5752427) (not b!5753127) (not b!5752201) (not b!5753141) (not bm!440966) (not b_lambda!217311) (not b!5752165) (not bm!440943) (not b!5752914) (not b!5752947) (not b!5752125) (not bm!441065) (not d!1812938) (not b!5752195) (not d!1812772) (not b!5753163) (not bm!441007) (not d!1813186) (not b!5753169) (not bm!440972) (not b!5753172) (not b!5753159) (not b_lambda!217261) (not b!5752171) (not d!1812924) (not b!5753134) (not bm!441133) (not d!1813104) (not b!5752159) (not bm!441051))
(check-sat)
